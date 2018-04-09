// Copyright (c) 2014 AlphaSierraPapa for the SharpDevelop Team
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy of this
// software and associated documentation files (the "Software"), to deal in the Software
// without restriction, including without limitation the rights to use, copy, modify, merge,
// publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons
// to whom the Software is furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all copies or
// substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
// INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
// PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
// FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.

using System;
using System.Configuration;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Windows.Forms;

using ICSharpCode.Core;
using ICSharpCode.SharpDevelop.Gui;
using ICSharpCode.SharpDevelop.Workbench;
using ICSharpCode.SharpDevelop.Logging;
using ICSharpCode.SharpDevelop.Project;
using ICSharpCode.SharpDevelop.Sda;

namespace ICSharpCode.SharpDevelop.Startup
{
	/// <summary>
	/// This Class is the Core main class, it starts the program.
	/// </summary>
	static class SharpDevelopMain
	{
		static string[] commandLineArgs = null;
		
		public static string[] CommandLineArgs {
			get {
				return commandLineArgs;
			}
		}
		
		static bool UseExceptionBox {
			get {
				#if DEBUG
				if (Debugger.IsAttached) return false;
				#endif
				foreach(string arg in commandLineArgs) {
					if (arg.Contains("noExceptionBox")) return false;
				}
				return true;
			}
		}
		
		/// <summary>
		/// Starts the core of SharpDevelop.
		/// </summary>
		[STAThread()]
		public static void Main(string[] args)
		{
			commandLineArgs = args; // Needed by UseExceptionBox
			
			// Do not use LoggingService here (see comment in Run(string[]))
			if (UseExceptionBox) {
				try {
					Run();
				} catch (Exception ex) {
					try {
						HandleMainException(ex);
					} catch (Exception loadError) {
						// HandleMainException can throw error when log4net is not found
						MessageBox.Show(loadError.ToString(), "Critical error (Logging service defect?)");
					}
				}
			} else {
				Run();
			}
		}
		
        /// <summary>
        /// 处理Main的异常的。
        /// </summary>
        /// <param name="ex"></param>
		static void HandleMainException(Exception ex)
		{
			LoggingService.Fatal(ex);
			try {
				Application.Run(new ExceptionBox(ex, "Unhandled exception terminated SharpDevelop", true));
			} catch {
				MessageBox.Show(ex.ToString(), "Critical error (cannot use ExceptionBox)");
			}
		}
		
		static void Run()
		{
			// DO NOT USE LoggingService HERE!
			// LoggingService requires ICSharpCode.Core.dll and log4net.dll
			// When a method containing a call to LoggingService is JITted, the
			// libraries are loaded.
			// We want to show the SplashScreen while those libraries are loading, so
			// don't call LoggingService.
			
			#if DEBUG
			Control.CheckForIllegalCrossThreadCalls = true;
			#endif
			bool noLogo = false;
            // 作用:在应用程序范围内设置控件显示文本的默认方式(可以设为使用新的GDI+ , 还是旧的GDI)
            // true使用GDI + 方式显示文本,
            // false使用GDI方式显示文本.
            Application.SetCompatibleTextRenderingDefault(false);
            //SplashScreenForm是提前显示的一个小窗口界面。
            SplashScreenForm.SetCommandLineArgs(commandLineArgs);

			//如果这启动页有不显示logo，就设置标志
			foreach (string parameter in SplashScreenForm.GetParameterList()) {
				if ("nologo".Equals(parameter, StringComparison.OrdinalIgnoreCase))
					noLogo = true;
			}
			//字面意思是检查环境
			if (!CheckEnvironment())
				return;
			
			if (!noLogo) {
                //显示启动页
				SplashScreenForm.ShowSplashScreen();
			}
			try {
				RunApplication();
			} finally {
				if (SplashScreenForm.SplashScreen != null) {
					SplashScreenForm.SplashScreen.Dispose();
				}
			}
		}
		
		static bool CheckEnvironment()
		{
            //安全检查
			// Safety check: our setup already checks that .NET 4 is installed, but we manually check the .NET version in case SharpDevelop is
			// used on another machine than it was installed on (e.g. "SharpDevelop on USB stick")
			if (!DotnetDetection.IsDotnet45Installed()) {
				MessageBox.Show("This version of SharpDevelop requires .NET 4.5. You are using: " + Environment.Version, "SharpDevelop");
				return false;
			}
			// Work around a WPF issue when %WINDIR% is set to an incorrect path
			string windir = Environment.GetFolderPath(Environment.SpecialFolder.Windows, Environment.SpecialFolderOption.DoNotVerify);
			if (Environment.GetEnvironmentVariable("WINDIR") != windir) {
				Environment.SetEnvironmentVariable("WINDIR", windir);
			}
			return true;
		}
		/// <summary>
        /// 运行程序。
        /// </summary>
		static void RunApplication()
		{
			// The output encoding differs based on whether SharpDevelop is a console app (debug mode)
			// or Windows app (release mode). Because this flag also affects the default encoding
			// when reading from other processes' standard output, we explicitly set the encoding to get
			// consistent behaviour in debug and release builds of SharpDevelop.
			
			#if DEBUG
			// Console apps use the system's OEM codepage, windows apps the ANSI codepage.
			// We'll always use the Windows (ANSI) codepage.
			try {
				Console.OutputEncoding = System.Text.Encoding.Default;
			} catch (IOException) {
				// can happen if SharpDevelop doesn't have a console
			}
			#endif
			
			LoggingService.Info("Starting SharpDevelop...");
			try {
                //看字面意思是启动设置。
				StartupSettings startup = new StartupSettings();
				#if DEBUG
				startup.UseSharpDevelopErrorHandler = UseExceptionBox;
                #endif

                // Assebly c#的反射，Assembly 通过此类可以加载操纵一个程序集，并获取程序集内部信息 
                // 声明这个变量暂时只是看到他只是想要取得程序运行的路径。
                //Assembly是一个包含来程序的名称，版本号，自我描述，文件关联关系和文件位置等信息的一个集合。
                Assembly exe = typeof(SharpDevelopMain).Assembly;
				startup.ApplicationRootPath = Path.Combine(Path.GetDirectoryName(exe.Location), "..");//程序根目录
				startup.AllowUserAddIns = true;//允许插件

                //配置文件目录
                //我检查了，这个settingsPath在源代码中并没有设置，而是被注释掉了。希望可以找出哪个地方设置了吧。
                //	<appSettings>
                //< !--Use this configuration setting to store settings in a directory relative to the location
                //of SharpDevelop.exe instead of the user's profile directory. -->
                //< !-- < add key = "settingsPath" value = "..\Settings" /> -->
                string configDirectory = ConfigurationManager.AppSettings["settingsPath"];
                //这里判断这个configDirectory是否为空值。
                if (String.IsNullOrEmpty(configDirectory)) {
                    // Path.Combine类似python中的path.join。
                    //Environment.SpecialFolder.ApplicationData为C:\Users\XXX\AppData\Roamin
                    startup.ConfigDirectory = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData),
					                                       "ICSharpCode/SharpDevelop" + RevisionClass.Major);
				} else {
                    //根据当前程序的目录合并。
					startup.ConfigDirectory = Path.Combine(Path.GetDirectoryName(exe.Location), configDirectory);
				}
				
                //存储代码缓存目录
				startup.DomPersistencePath = ConfigurationManager.AppSettings["domPersistencePath"];
				if (string.IsNullOrEmpty(startup.DomPersistencePath)) {
					startup.DomPersistencePath = Path.Combine(Path.GetTempPath(), "SharpDevelop" + RevisionClass.Major + "." + RevisionClass.Minor);
					#if DEBUG
					startup.DomPersistencePath = Path.Combine(startup.DomPersistencePath, "Debug");
					#endif
				} else if (startup.DomPersistencePath == "none") {
					startup.DomPersistencePath = null;
				}
				
                //加载插件目录。
				startup.AddAddInsFromDirectory(Path.Combine(startup.ApplicationRootPath, "AddIns"));

                // allows testing addins without having to install them
                // 允许测试插件而不用安装插件。
                //GetParameterList,是取得参数列表
                foreach (string parameter in SplashScreenForm.GetParameterList()) {
                    //如果这个参数是以这些字母开头，就表示是插件目录啦。
					if (parameter.StartsWith("addindir:", StringComparison.OrdinalIgnoreCase)) {
						startup.AddAddInsFromDirectory(parameter.Substring(9));
					}
				}
                //
                ///AppDomain.CurrentDomain：Gets the current application domain for the current Thread.
                SharpDevelopHost host = new SharpDevelopHost(AppDomain.CurrentDomain, startup);
				
                //请求打开的文件列表。
				string[] fileList = SplashScreenForm.GetRequestedFileList();
                //如果有。
				if (fileList.Length > 0) {
					if (LoadFilesInPreviousInstance(fileList)) {
						LoggingService.Info("Aborting startup, arguments will be handled by previous instance");
						return;
					}
				}
				//启动工作台前需要做这些。
                //下面这个的作用仅仅是打开工作台前，关闭启动页。
				host.BeforeRunWorkbench += delegate {
					if (SplashScreenForm.SplashScreen != null) {
						SplashScreenForm.SplashScreen.BeginInvoke(new MethodInvoker(SplashScreenForm.SplashScreen.Dispose));
						SplashScreenForm.SplashScreen = null;
					}
				};
				
                //设置工作台。
				WorkbenchSettings workbenchSettings = new WorkbenchSettings();
				workbenchSettings.RunOnNewThread = false;
                // 打开工作台的时候，会打开几个文件，是这里实现的。
				for (int i = 0; i < fileList.Length; i++) {
					workbenchSettings.InitialFileList.Add(fileList[i]);
				}
				SDTraceListener.Install();//这个看样子是个log
				host.RunWorkbench(workbenchSettings);//启动工作台。
			} finally {
				LoggingService.Info("Leaving RunApplication()");
			}
		}
		/// <summary>
        /// 
        /// </summary>
        /// <param name="fileList"></param>
        /// <returns></returns>
		static bool LoadFilesInPreviousInstance(string[] fileList)
		{
			try {
                //依次打开文件
				foreach (string file in fileList) {
                    //判断是否是解决方案或者项目文件。
					if (SD.ProjectService.IsSolutionOrProjectFile(FileName.Create(file))) {
						return false;
					}
				}
				return SingleInstanceHelper.OpenFilesInPreviousInstance(fileList);
			} catch (Exception ex) {
				LoggingService.Error(ex);
				return false;
			}
		}
	}
}

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

// activate this define to see the build worker window
//#define WORKERDEBUG

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Runtime.Serialization;
using System.Threading;

using ICSharpCode.SharpDevelop.Interprocess;
using Microsoft.Build.Framework;

namespace ICSharpCode.SharpDevelop.BuildWorker
{
	sealed class Program
	{
        /// <summary>
        /// 字面意思是主机进程
        /// </summary>
		HostProcess host;
        /// <summary>
        /// 字面意思是编译工作
        /// </summary>
		BuildJob currentJob;
        /// <summary>
        /// 布尔值，字面意思是请求删除。
        /// </summary>
		bool requestCancellation;
        /// <summary>
        /// 布尔值，字面意思是请求进程关闭。
        /// </summary>
		bool requestProcessShutdown;

        //[STAThread]是Single  Thread  Apartment单线程套间的意思，是一种线程模型，用在程序的入口方法上
        //被 internal 修饰的东西只能在本程序集（当前项目）内被使用。
        [STAThread]
		internal static void Main(string[] args)
		{
            //当某个异常未被捕获时出现。
            AppDomain.CurrentDomain.UnhandledException += new UnhandledExceptionEventHandler(AppDomain_CurrentDomain_UnhandledException);
			//命令行调用。
			if (args.Length == 3 && args[0] == "worker") {
				try {
					Program program = new Program();
					program.host = new HostProcess(args[1], args[2]);
					Thread communicationThread = new Thread(program.RunCommunicationThread);
					communicationThread.Name = "Communication";
					communicationThread.Start();
					program.RunBuildThread();
				} catch (Exception ex) {
					ShowMessageBox(ex.ToString());
				}
			} else {
				Console.WriteLine("ICSharpCode.SharpDevelop.BuildWorker.exe is used to compile " +
				                  "MSBuild projects inside SharpDevelop.");
				Console.WriteLine("If you want to compile projects on the command line, use " +
				                  "MSBuild.exe (part of the .NET Framework)");
			}
		}
		/// <summary>
        /// 运行通讯线程。
        /// </summary>
		void RunCommunicationThread()
		{
			try {
				host.Run(DataReceived);
			} catch (Exception ex) {
				ShowMessageBox(ex.ToString());
			} finally {
				lock (this) {
					requestProcessShutdown = true;
					Monitor.PulseAll(this);
                    //.Monitor.Pulse方法 ，当前线程调用此方法以便向队列中的下一个线程发出锁的信号。
                    //接收到脉冲后，等待线程就被移动到就绪队列中。
                    //在调用 Pulse 的线程释放锁后，就绪队列中的下一个线程（不一定是接收到脉冲的线程）将获得该锁。
                    //pulse（）并不会使当前线程释放锁。
				}
			}
		}
		/// <summary>
        /// 字面意思是net中MSBuild的保障。
        /// </summary>
		readonly MSBuildWrapper buildWrapper = new MSBuildWrapper();
		
        /// <summary>
        /// 接受数据
        /// </summary>
        /// <param name="command"></param>
        /// <param name="reader"></param>
		void DataReceived(string command, BinaryReader reader)
		{
            //从通讯线程中接收到命令。
			// called on communication thread
			switch (command) {
				case "StartBuild":  //字面意思是开始编译。
					StartBuild(BuildJob.ReadFrom(reader));
					break;
				case "Cancel":      //字面意思是取消编译。
					CancelBuild();
					break;
				default:
					throw new InvalidOperationException("Unknown command");
			}
		}
		/// <summary>
        /// 所有没有处理的异常，都在这里处理。
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
		static void AppDomain_CurrentDomain_UnhandledException(object sender, UnhandledExceptionEventArgs e)
		{
            //所谓的处理都是
			ShowMessageBox(e.ExceptionObject.ToString());
		}
		
		#if RELEASE && WORKERDEBUG
		#error WORKERDEBUG must not be defined if RELEASE is defined
		#endif
		
        /// <summary>
        /// 消息框。
        /// </summary>
        /// <param name="text"></param>
		[System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Globalization", "CA1300:SpecifyMessageBoxOptions")]
		internal static void ShowMessageBox(string text)
		{
			System.Windows.Forms.MessageBox.Show(text, "SharpDevelop Build Worker Process");
		}
		
        /// <summary>
        /// log方法。
        /// </summary>
        /// <param name="text"></param>
		[Conditional("DEBUG")]
		internal static void Log(string text)
		{
			Debug.WriteLine(text);
			#if WORKERDEBUG
			DateTime now = DateTime.Now;
			Console.WriteLine(now.ToString() + "," + now.Millisecond.ToString("d3") + " " + text);
			#endif
		}
		/// <summary>
        /// 开始编译。
        /// </summary>
        /// <param name="job"></param>
		[System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
		public void StartBuild(BuildJob job)
		{
			// called on communication thread
			if (job == null)
				throw new ArgumentNullException("job");
			Program.Log("Got job:");
			Program.Log(job.ToString());
            //上锁
			lock (this) {
                //判断当前的job是否为空。
				if (currentJob != null)
					throw new InvalidOperationException("Already running a job");
                //设置这个job为当前job。
				currentJob = job;
                //不允许取消。
				requestCancellation = false;
				Monitor.PulseAll(this);
			}
			#if WORKERDEBUG
			Console.Title = "BuildWorker - " + Path.GetFileName(job.ProjectFileName);
			#endif
		}
		/// <summary>
        /// 取消编译。
        /// </summary>
		public void CancelBuild()
		{
			// called on communication thread
			Program.Log("CancelBuild()");
			lock (this) {
				if (!requestCancellation) {
					requestCancellation = true;
					buildWrapper.Cancel();
				}
			}
		}
		/// <summary>
        /// 重新调用编译线程
        /// </summary>
		void RunBuildThread()
		{
			while (true) {
				// Wait for next job, or for shutdown
				lock (this) {
					while (currentJob == null && !requestProcessShutdown)
						Monitor.Wait(this);
					if (requestProcessShutdown)
						break;
				}
				PerformBuild();
			}
		}
        
		/// <summary>
        /// 执行编译。
        /// </summary>
		void PerformBuild()
		{
			Program.Log("In build thread");
			bool success = false;
			try {
                //判断是否存在项目文件。
				if (File.Exists(currentJob.ProjectFileName)) {
                    //调用编译，用的是MSBuild来编译。
					success = buildWrapper.DoBuild(currentJob, new ForwardingLogger(this));
				} else {
					success = false;
					HostReportEvent(new BuildErrorEventArgs(null, null, currentJob.ProjectFileName, 0, 0, 0, 0, "Project file '" + Path.GetFileName(currentJob.ProjectFileName) + "' not found", null, null));
				}
			} catch (Exception ex) {
				host.Writer.Write("ReportException");
				host.Writer.Write(ex.ToString());
			} finally {
				Program.Log("BuildDone");
				
				#if WORKERDEBUG
				Console.Title = "BuildWorker - no job";
				DisplayEventCounts();
				#endif
				
				lock (this) {
					currentJob = null;
				}
				// in the moment we call BuildDone, we can get the next job
				host.Writer.Write("BuildDone");
				host.Writer.Write(success);
			}
		}
		/// <summary>
        /// 字面意思是主机报告事件。
        /// </summary>
        /// <param name="e"></param>
		void HostReportEvent(BuildEventArgs e)
		{
			host.Writer.Write("ReportEvent");
			EventSource.EncodeEvent(host.Writer, e);
		}
        /// <summary>
        /// ILogger定义 MSBuild 记录器，后者订阅生成系统事件
        /// </summary>
        sealed class ForwardingLogger : ILogger
		{
			Program program;
			
			public ForwardingLogger(Program program)
			{
				this.program = program;
			}
			
			IEventSource eventSource;
            /// <summary>
            /// LoggerVerbosity 枚举，指定可用的详细级别的 Logger。
            /// </summary>
            public LoggerVerbosity Verbosity { get; set; }
            /// <summary>
            /// 
            /// </summary>
			public string Parameters { get; set; }
			
            /// <summary>
            /// 初始化。
            /// </summary>
            /// <param name="eventSource"></param>
			public void Initialize(IEventSource eventSource)
			{
				this.eventSource = eventSource;
				EventTypes eventMask = program.currentJob.EventMask;
				if ((eventMask & EventTypes.Message) != 0)
					eventSource.MessageRaised += OnEvent;
				if ((eventMask & EventTypes.Error) != 0)
					eventSource.ErrorRaised += OnEvent;
				if ((eventMask & EventTypes.Warning) != 0)
					eventSource.WarningRaised += OnEvent;
				if ((eventMask & EventTypes.BuildStarted) != 0)
					eventSource.BuildStarted += OnEvent;
				if ((eventMask & EventTypes.BuildFinished) != 0)
					eventSource.BuildFinished += OnEvent;
				if ((eventMask & EventTypes.ProjectStarted) != 0)
					eventSource.ProjectStarted += OnEvent;
				if ((eventMask & EventTypes.ProjectFinished) != 0)
					eventSource.ProjectFinished += OnEvent;
				if ((eventMask & EventTypes.TargetStarted) != 0)
					eventSource.TargetStarted += OnEvent;
				if ((eventMask & EventTypes.TargetFinished) != 0)
					eventSource.TargetFinished += OnEvent;
				if ((eventMask & EventTypes.TaskStarted) != 0)
					eventSource.TaskStarted += OnEvent;
				else
					eventSource.TaskStarted += OnTaskStarted;
				if ((eventMask & EventTypes.TaskFinished) != 0)
					eventSource.TaskFinished += OnEvent;
				else
					eventSource.TaskFinished += OnTaskFinished;
				if ((eventMask & EventTypes.Custom) != 0)
					eventSource.CustomEventRaised += OnEvent;
				if ((eventMask & EventTypes.Unknown) != 0)
					eventSource.AnyEventRaised += OnUnknownEventRaised;
				
				#if WORKERDEBUG
				eventSource.AnyEventRaised += CountEvent;
				#endif
			}
			/// <summary>
            /// 
            /// </summary>
			public void Shutdown()
			{
				EventTypes eventMask = program.currentJob.EventMask;
				if ((eventMask & EventTypes.Message) != 0)
					eventSource.MessageRaised -= OnEvent;
				if ((eventMask & EventTypes.Error) != 0)
					eventSource.ErrorRaised -= OnEvent;
				if ((eventMask & EventTypes.Warning) != 0)
					eventSource.WarningRaised -= OnEvent;
				if ((eventMask & EventTypes.BuildStarted) != 0)
					eventSource.BuildStarted -= OnEvent;
				if ((eventMask & EventTypes.BuildFinished) != 0)
					eventSource.BuildFinished -= OnEvent;
				if ((eventMask & EventTypes.ProjectStarted) != 0)
					eventSource.ProjectStarted -= OnEvent;
				if ((eventMask & EventTypes.ProjectFinished) != 0)
					eventSource.ProjectFinished -= OnEvent;
				if ((eventMask & EventTypes.TargetStarted) != 0)
					eventSource.TargetStarted -= OnEvent;
				if ((eventMask & EventTypes.TargetFinished) != 0)
					eventSource.TargetFinished -= OnEvent;
				if ((eventMask & EventTypes.TaskStarted) != 0)
					eventSource.TaskStarted -= OnEvent;
				else
					eventSource.TaskStarted -= OnTaskStarted;
				if ((eventMask & EventTypes.TaskFinished) != 0)
					eventSource.TaskFinished -= OnEvent;
				else
					eventSource.TaskFinished -= OnTaskFinished;
				if ((eventMask & EventTypes.Custom) != 0)
					eventSource.CustomEventRaised -= OnEvent;
				if ((eventMask & EventTypes.Unknown) != 0)
					eventSource.AnyEventRaised -= OnUnknownEventRaised;
				
				#if WORKERDEBUG
				eventSource.AnyEventRaised -= CountEvent;
				#endif
			}
			
			// used for all events that should be forwarded
			void OnEvent(object sender, BuildEventArgs e)
			{
				program.HostReportEvent(e);
			}
			
			// registered for AnyEventRaised to forward unknown events
			void OnUnknownEventRaised(object sender, BuildEventArgs e)
			{
				if (EventSource.GetEventType(e) == EventTypes.Unknown)
					OnEvent(sender, e);
			}
			
			// registered when only specific tasks should be forwarded
			void OnTaskStarted(object sender, TaskStartedEventArgs e)
			{
				if (program.currentJob.InterestingTaskNames.Contains(e.TaskName))
					OnEvent(sender, e);
			}
			
			// registered when only specific tasks should be forwarded
			void OnTaskFinished(object sender, TaskFinishedEventArgs e)
			{
				if (program.currentJob.InterestingTaskNames.Contains(e.TaskName))
					OnEvent(sender, e);
			}
			
			
			#if WORKERDEBUG
			void CountEvent(object sender, BuildEventArgs e)
			{
				Program.CountEvent(EventSource.GetEventType(e));
			}
			#endif
		}
		
		#if WORKERDEBUG
		static Dictionary<EventTypes, int> eventCounts = new Dictionary<EventTypes, int>();
		
		static void CountEvent(EventTypes e)
		{
			if (eventCounts.ContainsKey(e))
				eventCounts[e] += 1;
			else
				eventCounts[e] = 1;
		}
		
		static void DisplayEventCounts()
		{
			foreach (var pair in eventCounts) {
				Console.WriteLine("    " + pair.Key.ToString() + ": " + pair.Value.ToString());
			}
		}
		#endif
	}
}

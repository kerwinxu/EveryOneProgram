   M S B A M L   `   `   `  ���� O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  b ^ICSharpCode.SharpDevelop, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eeeHclr-namespace:ICSharpCode.SharpDevelop;assembly=ICSharpCode.SharpDevelopICSharpCode.SharpDevelop �Yclr-namespace:ICSharpCode.SharpDevelop.Gui.OptionPanels;assembly=ICSharpCode.SharpDevelop)ICSharpCode.SharpDevelop.Gui.OptionPanels uPclr-namespace:ICSharpCode.SharpDevelop.Project;assembly=ICSharpCode.SharpDevelop ICSharpCode.SharpDevelop.Project  
CppBinding7   1ICSharpCode.CppBinding.Project.ApplicationOptions   .sys&clr-namespace:System;assembly=mscorlib  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     WsdHclr-namespace:ICSharpCode.SharpDevelop;assembly=ICSharpCode.SharpDevelop     roptionpanelsYclr-namespace:ICSharpCode.SharpDevelop.Gui.OptionPanels;assembly=ICSharpCode.SharpDevelop     dprojectPclr-namespace:ICSharpCode.SharpDevelop.Project;assembly=ICSharpCode.SharpDevelop     j fICSharpCode.SharpDevelop.Widgets, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee9widgets+http://icsharpcode.net/sharpdevelop/widgets  g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee5core(http://icsharpcode.net/sharpdevelop/core   .���� $
��Auto=�.���   � RowDefinitions  �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $	��100 � � ColumnDefinitions �� $
��Auto ��� $	��150 ��� .+��� $��2����5  /ICSharpCode.Core.Presentation.LocalizeExtension  *86Dialog.ProjectOptions.ApplicationSettings.AssemblyName+E  ?ICSharpCode.SharpDevelop.Gui.OptionPanels.StorageLocationPicker  $��1��$
��Left=�   Location �� *AssemblyName.Location+�� -    ��Name$ assemblyNameTextBox��$��1��$��1��$��2��$��Center=�$��0,0,5,0q����� *AssemblyName.Value+ �� UpdateSourceTrigger$ PropertyChanged=��� $��2��$��2����  *97Dialog.ProjectOptions.ApplicationSettings.RootNamespace+  $��3��$
��Left=� �� *RootNamespace.Location+�� -   $ rootNamespaceTextBox��$��3��$��1��$��3��$��Center=�$��0,0,5,0q����� *RootNamespace.Value+$ PropertyChanged=��� $��4��$��2����  *64Dialog.ProjectOptions.ApplicationSettings.OutputType+�� $��4��$��2����  *97Dialog.ProjectOptions.ApplicationSettings.StartupObject+  $��5��$
��Left=� �� *OutputType.Location+�� -    ��Name$ outputTypeComboBox��$��5��$��1��$��5,0,5,0q�$��Center=�*  $ICSharpCode.SharpDevelop.EnumBinding   EnumType1  +ICSharpCode.SharpDevelop.Project.OutputType"  �� -   $ startupObjectComboBox��$��Center=�$��5,0,5,0q�$��5��$��2��{�.  �� -    ��Name$ applicationIconImage��$��32��$��32��$��6���� $��6��$��1����  *;9Dialog.ProjectOptions.ApplicationSettings.ApplicationIcon+� $��6��$��2��$��2�� �� $
��Auto ��� �� $
��Auto �.+�  $
��Left=� �� *ApplicationIcon.Location+�� -   $ applicationIconTextBox��$��1��$��Center=����� *ApplicationIcon.Value+$ PropertyChanged=��� -   $��2��$��Center=�$	��9,1q�$��0,0,5,0q�$	��...���� $��7��$��1����  *42Dialog.ProjectOptions.ApplicationSettings.Manifest+<  6ICSharpCode.SharpDevelop.Widgets.StackPanelWithSpacing     SpaceBetweenItems$ 3Q�$��7��$��2��	   Orientation$	 
Horizontal=�.+�  $
��Left=� �� *PreBuildEvent.Location+�� -   $! applicationManifestComboBox��$��Center=�$	��200��
 �� 
IsEditable
 . �� $��9��$��3��$��0,5,0,0q���  *><Dialog.ProjectOptions.ApplicationSettings.ProjectInformation+.��B  <ICSharpCode.SharpDevelop.Gui.OptionPanels.ProjectInformation  -	     Name$ projectInformation��
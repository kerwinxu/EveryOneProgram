   M S B A M L   `   `   `  ���� b  ^ICSharpCode.SharpDevelop, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eeK*clr-namespace:ICSharpCode.SharpDevelop.GuiICSharpCode.SharpDevelop.Gui  j fICSharpCode.SharpDevelop.Widgets, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee}Xclr-namespace:ICSharpCode.SharpDevelop.Widgets;assembly=ICSharpCode.SharpDevelop.Widgets ICSharpCode.SharpDevelop.Widgets A    ;ICSharpCode.SharpDevelop.Gui.OptionPanels.ExternalToolPanel   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee5core(http://icsharpcode.net/sharpdevelop/core    6gui*clr-namespace:ICSharpCode.SharpDevelop.Gui    hwidgetsXclr-namespace:ICSharpCode.SharpDevelop.Widgets;assembly=ICSharpCode.SharpDevelop.Widgets    .���   � RowDefinitions  �� $
��Auto ��� $
��Auto ��� $��15 ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � � ColumnDefinitions �� $
��Auto ��� $��* �$��20���� $��* �$��20���� $��45 �.+��� $��2����5  /ICSharpCode.Core.Presentation.LocalizeExtension  *(&Dialog.Options.ExternalTool.ToolsLabel+� $��1��$��6��  �� $��* ��� $��* ��� $��* ��� $��* � �� �� $	��100 �.+��� -    ��Name$ listBox��$��4�� �� SelectionMode$ Extended=� �� SelectedItem �� *SelectedTool+�� -    ��Name$ 	addButton��$��1��$��5,0,5,0q�0  *ICSharpCode.Core.Presentation.GlobalStyles   ButtonStyle#��Z ��  *Global.AddButtonText+�� -   $ removeButton��$��1��$��1��$��5,0,5,0q�#��Z {��� *ButtonsEnable+��  *Global.RemoveButtonText+�� -   $ upButton��$��2��$��1��$��5,0,5,0q�#��Z ��  *Global.MoveUp+�� -   $ 
downButton��$��3��$��2��$��1��$��5,0,5,0q�#��Z ��  *Global.MoveDown+�� $��3��{��� *
EditEnable+��  *(&Dialog.Options.ExternalTool.TitleLabel+�� $��3��$��1��$��3��{��� *
EditEnable+���� *SelectedTool.MenuCommand+ �� UpdateSourceTrigger$ PropertyChanged=�.���� $��4��{��� *
EditEnable+��  **(Dialog.Options.ExternalTool.CommandLabel+�� -    ��Name$ commandTextBox��$��4��$��1��$��2��{��� *
EditEnable+���� *SelectedTool.Command+$ PropertyChanged=�.���� -   $��4��$��4��$��5,0,5,0q�$	��...��{��� *
EditEnable+�� $��5��{��� *
EditEnable+��  *+)Dialog.Options.ExternalTool.ArgumentLabel+�� -   $ argumentTextBox��$��5��$��1��$��2��{��� *
EditEnable+���� *SelectedTool.Arguments+$ PropertyChanged=�.��	 � ContextMenu	 �� -	   ���� *ArgumentContextMenu+���� .R�m� ���� *Key+.���� -
   $��5��$��4��$��5,0,5,0q�$��>��{��� *
EditEnable+�� $��6��{��� *
EditEnable+��  *-+Dialog.Options.ExternalTool.WorkingDirLabel+�� -   $ workingDirTextBox��$��6��$��1��$��2��{��� *
EditEnable+���� *SelectedTool.InitialDirectory+$ PropertyChanged=�.��	 �� -   ���� *WorkingDirContextMenu+���� .R�m� ���� *Key+.���� -   $��6��$��4��$��5,0,5,0q�$��>��{��� *
EditEnable+�� -   
 ��Name$
 promptArgsCheckBox��$��7��$��3��$
��0, 5q�{��� *
EditEnable+��  *31Dialog.Options.ExternalTool.PromptForArgsCheckBox+ d� 	IsChecked �� *!SelectedTool.PromptForArguments+�� -   $
 useOutputPadCheckBox��$��8��$��3��{��� *
EditEnable+��  *-+Dialog.Options.ExternalTool.UseOutputWindow+ �� *SelectedTool.UseOutputPad+
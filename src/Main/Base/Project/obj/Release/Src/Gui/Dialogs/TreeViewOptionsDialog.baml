   M S B A M L   `   `   `  ����   ICSharpCode.SharpDevelop8    2ICSharpCode.SharpDevelop.Gui.TreeViewOptionsDialog   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee3core(http://icsharpcode.net/sharpdevelop/core  j fICSharpCode.SharpDevelop.Widgets, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee9widgets+http://icsharpcode.net/sharpdevelop/widgets  $	��414��$	��552��$	��260��$	��480��  � WindowStartupLocation$  CenterOwner=�0  *ICSharpCode.Core.Presentation.GlobalStyles   DialogWindowStyle#��Z .���  � RowDefinitions �� $��1* ��� $
��Auto �.+��  � ColumnDefinitions �� $	��200 ��� $��1* �.+�R� -   $��treeView��$��0 0 2 0q�����  �� 
TargetType" Q�.���  �� Property �@Q�
IsExpanded �� Value �� *
IsExpanded+ �� Mode$ TwoWay=���  �@Q�
IsSelected �� *
IsSelected+$ TwoWay=�����  �� ItemsSource �� *
Children+.R��� 	 �� Orientation$	 
Horizontal=�$��	-16 0 0 0q�.+��� $��16��$��16������ *Image+�� ���� *Title+�� $��2���� -   $��optionPanelScrollViewer��$��1��$��Disabled=�$
��Auto=�.��]� .+��� -   $��optionPanelTitle��$	��Top=�$��Tahoma)�$
��14pt(�$
��Bold"�
 �� Padding$
 8q�����  �� 
StartPoint$
 0, 0&� �� EndPoint$
 0, 1&����  � Offset$	 0.0Q� � Color# � ��� $	 1.0Q�# � ���� -   $��optionPanelContent��=  7ICSharpCode.SharpDevelop.Widgets.UniformGridWithSpacing   A� Columns$ 2��$��0��$��1��$��Right=�$��	0,4,12,12q�.+��� -   $��okButton�� �� 	IsDefault .    ButtonStyle#��Z ��5  /ICSharpCode.Core.Presentation.LocalizeExtension  *Global.OKButtonText+�� -   $��cancelButton�� �� IsCancel . #��Z ��  *Global.CancelButtonText+
   M S B A M L   `   `   `  ���� H  DAspNet.Mvc, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=null?$clr-namespace:ICSharpCode.AspNet.MvcICSharpCode.AspNet.Mvc  :    4ICSharpCode.AspNet.Mvc.AddMvcControllerToProjectView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eeb ^ICSharpCode.SharpDevelop, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee5core(http://icsharpcode.net/sharpdevelop/core   0mvc$clr-namespace:ICSharpCode.AspNet.Mvc   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$  Add Controller��0  *ICSharpCode.Core.Presentation.GlobalStyles   DialogWindowStyle#��Z  � WindowStartupLocation$ CenterOwner=�$	��400��$	��500��1   +ICSharpCode.AspNet.Mvc.CloseWindowBehaviour   IsClosed �� *
IsClosed+ +� FocusedElement ��  �� ElementName$ ControllerNameTextBox�� � 	Resources  �� 
TargetType   ButtonStyle	 �� BasedOn   ControllerTemplate��%K   '��       &	       �� " ��#	 Z �� .R��� ���� *Description+.��� 
 � RowDefinitions
 �� $
��Auto ��� $
��Auto ��� $��* ��� $
��Auto � � ColumnDefinitions �� $
��Auto ��� $��* �.+��� $��4q�$��Controller Name:���� -    ��Name$ ControllerNameTextBox��$��1������  �� Path$ ControllerName� �� UpdateSourceTrigger$ PropertyChanged=��� $��1��$��4q�$��	Template:���� $��2q�$��1��$��1��#��[  ���� $ ControllerTemplates� �� SelectedItem �� $  SelectedControllerTemplate���  �� Orientation$ 
Horizontal=�$��Right=�$��4q�$��0��$��2��$��3��.+��� $
��2, 0q�$
��_Add�� �� 	IsDefault . ���� $ AddMvcControllerCommand��� $
��2, 0q�$��_Cancel�� �� IsCancel . 
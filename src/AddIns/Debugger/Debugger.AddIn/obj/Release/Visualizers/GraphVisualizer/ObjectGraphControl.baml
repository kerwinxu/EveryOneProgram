   M S B A M L   `   `   `  ���� L  HDebugger.AddIn, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=nullS.clr-namespace:Debugger.AddIn.Visualizers.Graph Debugger.AddIn.Visualizers.Graph  Y1clr-namespace:Debugger.AddIn.Visualizers.Controls#Debugger.AddIn.Visualizers.Controls  9    3Debugger.AddIn.Visualizers.Graph.ObjectGraphControl   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     =dv.clr-namespace:Debugger.AddIn.Visualizers.Graph     Fcontrols1clr-namespace:Debugger.AddIn.Visualizers.Controls     .���   � RowDefinitions  �� $
��Auto ��� .+��� $��0��$��0�� �� Orientation$ 
Horizontal=�
�������$	��Top=� � 	Resources  �� 
TargetType �� Property �� Value��%   '��       '�� (     �� " ��.���  � ��$ 0 0 8 0q��� " ��.���  � ��$ 8 0 0 0q���  � ��$ 8 0 8 0q�.+��� $��3q� �� Padding$ 3q�._��� $ Vertical=�.+��� $ 
Horizontal=�.+��� $��Center=�Expression:�� -   $��txtExpression��$��Center=�$	��100���� $��12 0 6 0q�$��Center=�	Layout:�� -   $��cmbLayoutDirection��$	��120�� �� SelectedValuePath$ 	EnumValue�� �� DisplayMemberPath$ DisplayValue������ 	 �� Path$	 
EnumValues�
 �� SelectedValue
 �� $	 SelectedEnumValue��� $��12 0 6 0q�$��Center=�Zoom:�� -    ��Name$ 
zoomSlider��$	��100�� � Minimum$	 0.5Q� � Maximum$ 1Q� � Value$ 1Q��� -   $��pnlError��$ 
Horizontal=�$y�	Collapsed=�$��0 6 0 0q�.+��� -   $��lblError��$��0 0 4 0q�$��Italic$�Error:�� -   $��txtError��$��0 0 0 0q�$��Italic$�:   4Debugger.AddIn.Visualizers.Controls.DragScrollViewer  -     Name$ scroller��:   4Debugger.AddIn.Visualizers.Controls.DragScrollViewer   PreviewMouseWheel$ Canvas_MouseWheel��$��0 4 0 0q�$��1��$��0��
�������$
��Auto=�$
��Auto=�.���� -    ��Name$ canvas��$��4q�$
��Left=�$	��Top=� � LayoutTransform ��  �� ScaleX �� $	 Value� �� ElementName$ 
zoomSlider�� �� ScaleY �� $	 Value�$ 
zoomSlider��
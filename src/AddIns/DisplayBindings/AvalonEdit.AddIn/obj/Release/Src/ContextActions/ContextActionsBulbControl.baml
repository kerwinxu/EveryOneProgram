   M S B A M L   `   `   `  ���� Z  VICSharpCode.AvalonEdit.AddIn, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=nulli9clr-namespace:ICSharpCode.AvalonEdit.AddIn.ContextActions+ICSharpCode.AvalonEdit.AddIn.ContextActions  a ]PresentationFramework.Aero, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35gJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.AeroMicrosoft.Windows.Themes K    EICSharpCode.AvalonEdit.AddIn.ContextActions.ContextActionsBulbControl   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Klocal9clr-namespace:ICSharpCode.AvalonEdit.AddIn.ContextActions     j fICSharpCode.SharpDevelop.Widgets, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee9widgets+http://icsharpcode.net/sharpdevelop/widgets  UaeroJclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero    � 	Resources     OuterBorderBrush �� Color  PencilImage �� 	UriSource  DownArrowGeometry  BoolToVisibilityConverter  ExpanderDownHeaderStyle �� 
TargetType �� Property �� Value �� 
TargetType �� Padding J� SnapsToDevicePixels	 �� 
StartPoint
 �� EndPoint � Color � Offset �� Triggers P� Property P� Value �� 
TargetName d�Name d� 	IsChecked �� Path �� Mode �� RelativeSource ��Name  CheckBoxFillNormal  CheckBoxStroke �� 
Background �� Bullet+  %Microsoft.Windows.Themes.BulletChrome   
Background   BorderBrush   RenderMouseOver   RenderPressed   	IsChecked��%�  &	        &	      &	 )     &	 F     &	 K     '9� �    7  &	 �    &	     '��     7  7  �� $ #436C82���� $ 
pencil.png?��M 0 0 L 2 3 L 4 0 Z��� �� " d�.���  � �� �� " d�.R��� # z��._�� .+��� $��headerBorder��$��8��._�F� $��arrow��"����@B `� � �D @KL � z `� 	���#888$��2��$��Center=�$��Center=� .  ���� $		 0,0&�$	
 0,1&�.��� $ White��$	 0.5Q�� $ 	#FFE9E9E9��$ 1Q� P�  �@d�	IsChecked$
 trueY�. ��� $ arrow�� � ��" ��@B  �D � �D @B � z  �D 	P�  �@J�IsMouseOver . . ��� $ headerBorder�� � �� �� $		 0,0&�$	
 0,1&�.��� $ White��$	 0.2Q�� $ #CCEBFF��$ 1Q��� $ arrow�� � �� �#304760P�  � �� . �� " 9�.���  � ��# � ����  � ��
 ���� ��  � ��$ Stretch=���  � ��$ Stretch=���  � ��
 ���� ��  � �� �� " 9�.R�]� .+�d� $ 
HeaderSite��$	��Top=�$��0q�$��0��$��0��8��  #��z��#��z��#��z��#��z��#��z��#��z��#��z��#��z��#��z��#��z��#��z��#��z�� �� $ 
IsExpanded�$ TwoWay=� �� *TemplatedParent+�� $ 
ExpandSite��$��Bottom=�$y�	Collapsed=�|�.  #��z��#��z��#��z�� P�  �@9�
IsExpanded . . ��� $ 
ExpandSite�� � y�$ Visible=�P�  � {� .  . ��� # � �� � ���� $ #F4F4F4���� $ #8E8F8F���� " ��.���  � ��# � ����  � ��8   ��  � ��8  ��  � ��$ 1q���  � �� �� " ��.R��� 
 ����  .  �� 
������ $	 4 2q�._�  
 ���� 
 ����  .   .  # z ._��� #��z��#��z��#��z����. # z  P�  � �� . . ���  � ��$ 4,0,0,0q�P�  � {� .  . ��� # � �� � ��.��� 
������  � RowDefinitions �� ��  � ColumnDefinitions �� .+��� -     ��Name$  Header��$��0��$��0��$ 2q�$��1q�! �� CornerRadius$! 2�����#485763$
��Left=�" ^� ShowDuration$
" 3000��# � ToolTip# _� $ _� 	Placement$	$ Top=�.���� Available actions (Ctrl+T)���� $		 0,0&�$	
 0,1&�.��� $ #F2F2F2��$ 0Q�� $ #FFFFFF��$	 0.2Q�._��  �� �� .+��� $��0��$��12��$��12��$
��Fill=�#��[ �� -   $  ContentBorder��$ 0 0 8 8q�$��1��$��0��$	��200��._�5  /Microsoft.Windows.Themes.SystemDropShadowChrome  ._��� $��1q�$ 0q�$��0q�
�������#��[  ._��� % �� Orientation$% Vertical=�.+�G   AICSharpCode.AvalonEdit.AddIn.ContextActions.ContextActionsControl  -   &  Name$& ActionsTreeView��' � DataContext' �� *	Actions+(   ItemTemplate( �� .R�]� $��Stretch=���. .+��� $��3 2 4 2q�$
��Left=����� *Image+�� -   $��Center=�$��Right=�|�.   �� *	IsVisible+���� $- 'DataContext.ActionVisibleChangedCommand� �� ) �� AncestorTypeK   EICSharpCode.AvalonEdit.AddIn.ContextActions.ContextActionsBulbControl")  ���� y��� *%#DataContext.IsHiddenActionsExpanded+ �� ")  * �� 	Converter#* [ �� $��0 2 20 2q����� *Name+9� -   + 9�Name$+ HiddenActionsExpander��$��2��$��0��$��0q�, 9� 
IsExpanded, �� *IsHiddenActionsExpanded+.��  -   $& HiddenActionsTreeView��' �� *HiddenActions+( �� .R�]� $��Stretch=���. .+��� $��3 2 4 2q�$
��Left=����� *Image+�� -   $��Center=�$��Right=�|�.   �� *	IsVisible+���� $- 'DataContext.ActionVisibleChangedCommand� �� ")  ���� �� $��0 2 20 2q����� *Name+
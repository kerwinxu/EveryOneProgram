   M S B A M L   `   `   `  ����T  PAvalonDock, Version=1.3.3585.0, Culture=neutral, PublicKeyToken=f829da5c02be14ee'clr-namespace:AvalonDock
AvalonDock  5      Q7clr-namespace:AvalonDock.Properties;assembly=AvalonDockAvalonDock.Properties  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� Source �� TypeInTargetAssembly    AvalonDock.DockingManager#   AvalonDock.ContextMenuElement   DockablePane �� 
ResourceId m� Command �� Path   AvalonDock.Converters    BoolToVisibilityConverter �� 	Converter   DockableContentTabItemStyle	 �� 
TargetType    AvalonDock.DockableContent
 �� Property �� Value �� 
TargetType J� SnapsToDevicePixels ��Name - )ManagedContentTabControlNormalBorderBrush �� CornerRadius ) %ManagedContentTabItemNormalBackground � ColumnDefinitions   AvalonDock.ImageEx  Name   AvalonDock.ManagedContent   Icon ��Name   Title 0 ,ManagedContentTabItemSelectedBorderBackround �� Triggers P� Property P� Value �� 
TargetName   AvalonDock.DockablePane  ad:DockingManager / +ad:AvalonDockBrushes.DefaultBackgroundBrush +� FocusedElement �� ElementName � RowDefinitions 4 0ad:AvalonDockBrushes.DockablePaneTitleBackground  PaneHeaderCommandStyle%   AvalonDock.Properties.Resources!   DockablePaneCommands_Close � ToolTip �� RelativeSource ��Name*    #DockablePaneCommands_ToggleAutoHide % !PaneHeaderContextMenuCommandStyle#!   DockablePane_ShowOptionsMenu 4	 0ad:AvalonDockBrushes.DockablePaneTitleForeground" ��Name-  'System.Windows.Input.KeyboardNavigation#   TabNavigation$   DirectionalNavigation%   TabIndex!	   AvalonDock.DockableTabPanel& 	 Name' K� IsItemsHost
   AvalonDock.PaneTabPanel( 
  TabItemStyle) �� Value* �� Binding <
 8ad:AvalonDockBrushes.DockablePaneTitleBackgroundSelected < 8ad:AvalonDockBrushes.DockablePaneTitleForegroundSelected   AvalonDock.Pane+ �� Angle%   AvalonDock.FloatingDockablePane, �� BasedOn�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      adclr-namespace:AvalonDock  5      AadRes7clr-namespace:AvalonDock.Properties;assembly=AvalonDock  5        5      �� 5	   
   $2 ,/AvalonDock;component/Resources/Brushes.xaml?�6   �� 5
   
   $1 +/AvalonDock;component/Resources/Common.xaml?�6   �� 5   
   $> 8/AvalonDock;component/Resources/ManagedContentStyle.xaml?�6   %�  (��       5      "   # Z )&	  �    7  7  7  7  '  �    7  7  7  7  7   '  B    7 �� 5      .@�5   
   m� $/ )ad:DockableContentCommands.FloatingWindow��5      m� 5   
   $$ ad:ManagedContentCommands.Show��5      m� 5   
   $/ )ad:DockableContentCommands.ShowAsDocument��5      m� 5   
   $/ )ad:DockableContentCommands.ToggleAutoHide��5      m� 5   
   $$ ad:ManagedContentCommands.Hide��5      y�5      �� $ IsCloseable�# Z 5      �� 5!      "	  60   .�5"      �� 
 �@�FocusVisualStyle 6'   Z� �� 5#      
 � �� 5$      �� 5%      "  6"   .R�5&      �  . .+�5'      �� $ PART_DragArea��5(      8��  $��1,0,1,1q�5*      $��0,2,0,0q�5+      $ 0,0,3,3��5,      8�� ._�5/      �� $ tabItemIntBorder��6%   $��0,1,0,2q�50      8�� ._�52      � $��4,0,4,0q�6    53      �� 54      $
��Auto �6   �� 55      $��* �6   .+�57   &     $
 Icon��61   $��16��6?   #��z 6J   �� 58      $ tabItemTitle��59      $��1��5:      $��CharacterEllipsis=�5;      $��NoWrap=�6-   #��z 5<      $��2,0,0,0q�5=      $��Center=�6   #��� ��5>      5?      5@      5A      �� 5B      $ HighlightBorder��6!   $��3��5C   )   $��Bottom=�5D   )   $��0,0,0,0q�5E   )   $ 0,0,3,3��5F   )   ���	#FFE68B2C8�� $y�Hidden=�5I   )   5K       5M      P� 5N       �@��
IsSelected . . �5P      �� $ tabItemIntBorder��5Q      
 � ��$ 0q�6
   6   �� 5R      $ PART_DragArea��5S      
 � ��$ 1,0,1,0q�6
   6   �� 5T      $ PART_DragArea��5U      
 � �� �	#FFFCFCFE�� 5V      $ PART_DragArea��5W      
 �@��CornerRadius$ 0,0,3,3��6
   6   �� 5X      $ HighlightBorder��5Y      
 � y�$ Visible=�6
   6   �� 5Z      # � ��5[   
   $ tabItemTitle��6P   
 � ���� 5\      $ tabItemIntBorder��5]   5   
 � ��$ 0,3,0,2q�6%   65   �� 5^      $ PART_DragArea��5_   5   
 � ��$ 0,1,0,0q�6%   65   5`      P� 5a       �@J�IsMouseOver . . �5c      �� $ HighlightBorder��5d      
 � y�$ Visible=�6
   6   5e      P� 5f       5g      Z�  �@ Icon. �5h      �� $
 Icon��6%   
 � y�$ 	Collapsed=�5j      5k      5m      5o      5p      �� 5s      "	  6-   .�5t   
   �� 
 � �� 6'   C� *�� *M� *3 +�� *3 +++�� 5u      
 �@�FocusVisualStyle 6'   Z� �� 5v      
 � �� 5w      �� 5x      "  6"   .R�5y      �� |�.  #��z��5{      ._�5|      �  6   �� $ PART_SelectedContent�� 5}      �� 5~   "   $
��Auto �60   �� 5   "   $��* �60   �� 5�   "   $
��Auto �60   .+�5�      �� $ PART_Header��6%   $��0��5�      |�.  $��1,1,1,0q�5�      
�������$��18��5�   !   ��5�      C� *�� *M� *3 +�� *3 +++._�5�   "   ]� ��. .+�5�   &   �� $��Right=�6-   $��15��6D   $��15��6O   8��  $#��ad:DockablePaneCommands.Close��6�   # Z 6W  y�6�   ��  �� *TemplatedParent+$ SelectedItem.IsCloseable�# Z .��5�   *     $��Images\PinClose.png��65   $��13��6R   5�   '   �� 5�   &   $ btnPinAutoHide��6-   $��Right=�6E   $��15��6\   $��15��6g   8�� $,��&ad:DockablePaneCommands.ToggleAutoHide��6�   # Z  6�   .��5�   *     $��Images\PinAutoHide.png��65   $��13��6U   5�      �� 5�   &   $  PART_ShowContextMenuButton��6-   $��Right=�6R   $��15��6i   $��15��6t   8�� # Z! 6�   ._�5�   *     $��Images\PinMenu.png��65   $��13��6Q   5�   '   �� 5�   &   $ 	paneTitle��5�      $��0��5�      $��2,0,0,0q�5�      $��CharacterEllipsis=�6   $��NoWrap=�6@   $��Center=�5�   )   ��5�      ��  �� *TemplatedParent+$ SelectedItem.Title���5�      C� *�� *M� *3 +�� *3	 +++5�      5�      �� 5�      $��1��6%   $��1,0,1,1q�5�      
���������5�   !   ��  �� *TemplatedParent+$ SelectedItem.Background�._�5�   "   �� $" PART_SelectedContent��5�   %   $# Local=�5�      $$ 	Contained=�5�      $% 1��5�      ��5�   %   ��  �� *TemplatedParent+$ SelectedItem.Content�5�      5�      �� 5�      $ 	PART_Tabs��6%   $��2��5�   %   $��0,2,0,0q�5�      $��25��5�   %   $��0,1,0,0q�5�      8�� 5�      	  5�      $& paneTabsPanel��5�   %   $��2��5�   %   $��24��5�   %   $% 2��5�   %   ' . $��0,0,0,2q�5�   %   8(  5�   %   5�      5�       5�      �� 5�      $
) True��6�   * 6&   ��  �� *Self+$" SelectedItem.IsActiveContent�.a�5�      �� $ PART_Header��6�    6;   C� *�� *M� *3 +�� *3
 +++
 � ��6�   �� 5�      $ 	paneTitle��6�    6;   C� *�� *M� *3 +�� *3 +++
 � ��6�   5�      P� 5�       �@ 
ShowHeader .  . �5�      �� $ PART_Header��6M   
 � y�$ 	Collapsed=�6;   6M   5�      P� 5�       �@ ShowTabs .  . �5�      �� $ 	PART_Tabs��6M   
 � y�$ 	Collapsed=�6;   6M   5�      P� 5�       �@ HasSingleItem . . �5�      �� $ 	PART_Tabs��6M   
 � y�$ 	Collapsed=�6;   6M   �� 5�      $ paneTabsPanel��6M   
 � y�$ 	Collapsed=�6;   6M   5�      �� 5�      $) AutoHide��6y   * 6&   ��  �� *Self+$ SelectedItem.State�.a�5�      �� $ btnPinAutoHide��6@   
 �@�LayoutTransform 5�   "   �� 5�   &   $+ 90Q�66   5�      5�      5�      5�      5�      �� 5�      "	  65   8,   5�      5�      
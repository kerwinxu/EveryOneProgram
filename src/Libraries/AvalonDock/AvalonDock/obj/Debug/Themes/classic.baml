   M S B A M L   `   `   `  ����T  PAvalonDock, Version=1.3.3585.0, Culture=neutral, PublicKeyToken=f829da5c02be14ee'clr-namespace:AvalonDock
AvalonDock  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� Source   DockableContentTabItemStyle �� 
TargetType     AvalonDock.DockableContent �� Property �� Value �� 
TargetType J� SnapsToDevicePixels ��Name - )ManagedContentTabControlNormalBorderBrush ) %ManagedContentTabItemNormalBackground �� Padding	 � ColumnDefinitions   AvalonDock.ImageEx
  Name   AvalonDock.ManagedContent   Icon ��Name   Title �� Triggers P� Property P� Value , (ManagedContentTabItemSelectedBorderBrush �� 
TargetName + 'ManagedContentTabItemSelectedBackground ]� 
Conditions �� Property �� Value ' #ManagedContentTabItemHotBorderBrush & "ManagedContentTabItemHotBackground , (ManagedContentTabItemDisabledBorderBrush + 'ManagedContentTabItemDisabledBackground   AvalonDock.DockablePane 	 ad:DockingManager /
 +ad:AvalonDockBrushes.DefaultBackgroundBrush +� FocusedElement �� ElementName � RowDefinitions 4 0ad:AvalonDockBrushes.DockablePaneTitleBackground ��Name  PaneHeaderCommandStyle �� SelectedItem % !PaneHeaderContextMenuCommandStyle �� RelativeSource �� Path 4 0ad:AvalonDockBrushes.DockablePaneTitleForeground ��Name-  'System.Windows.Input.KeyboardNavigation   TabNavigation   DirectionalNavigation   TabIndex!   AvalonDock.DockableTabPanel   Name! K� IsItemsHost   AvalonDock.PaneTabPanel"   TabItemStyle# �� Value$ �� Binding < 8ad:AvalonDockBrushes.DockablePaneTitleBackgroundSelected < 8ad:AvalonDockBrushes.DockablePaneTitleForegroundSelected   AvalonDock.Pane% �� Angle%   AvalonDock.FloatingDockablePane& �� BasedOn  DocumentTabItemStyle' F�Name 1 -ad:AvalonDockBrushes.DocumentHeaderBackground( �� CornerRadius) �� Orientation 1 -ad:AvalonDockBrushes.DocumentHeaderForeground 9 5ad:AvalonDockBrushes.DocumentHeaderBackgroundSelected - )ad:AvalonDockBrushes.DocumentHeaderBorder* �� 
SourceName : 6ad:AvalonDockBrushes.DocumentHeaderBackgroundMouseOver	   AvalonDock.DocumentPane+ � 	Resources  Key, �� 	StaysOpen- ��Name!
   AvalonDock.DocumentTabPanel. 
 Name/ K� ZIndex0 :� RoutedEvent1 �� TargetProperty2 W� From	3 W� To4 g� Duration&    AvalonDock.DockablePaneAnchorTab5   Icon6   Title   AvalonDock.AnchorStyle , (ManagedContentTabItemInvNormalBackground ) %ManagedContentTabItemInvHotBackground+   %AvalonDock.DockablePaneAnchorTabGroup�� 5      F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml     5      adclr-namespace:AvalonDock  5        5      �� 5      $/ )/AvalonDock;component/themes/generic.xaml?�6   �� 5
      $7 1/AvalonDock;component/themes/classic.brushes.xaml?�6   %1  &	        7  7  7  7  7  7  7  7  '  �    7  7  7  7  7   '  �    7 &	 �    7  7  7  '	  ]    7  7  7  7  '  �)    7  7  7  7  7  7  7  7  '  �/    �� 5      "   6-   .�5      ��  � �� 5      �� 5      "   6   .R�5      �  . .+�5      �� $ PART_DragArea��5      8��  $��1,0,1,1q�5      $��0,2,-1,0q�5      8�� $ 1q�5      ._�5   	   � $��4,0,4,0q�6   	 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5!   "     $

 Icon��6-   $��1q�6;   $��16��6F   #��z 6R   �� 5"   
   $ tabItemTitle��5#      $��1��5$   )   $��CharacterEllipsis=�5%      $��NoWrap=�62   #��z 5&      $��2,0,0,0q�5'      $��Center=�6"   #��� ��5(      5)   
   5*   	   5+       5-      P� 5.       �@��
IsSelected . . �50   	   �� 8  $ PART_DragArea��51   L    � ���� 52   	   8  $ PART_DragArea��53   K    � ���� 54   	   $ PART_DragArea��55   7    � ��$ 	0,1,-1,-2q�6%   67   �� 56   	   $ PART_DragArea��57   /    �@��Padding$ 2q�6%   6/   �� 58   	    �@K�ZIndex$	 100��59   %   5:   	   ]� 5;       5<   	   �� 5=   
    �@J�IsMouseOver . 6+   �� 5>   
    �@��
IsSelected .  63   ./�5@   	   �� 8  $ PART_DragArea��5A   %    � ���� 5B   	   8  $ PART_DragArea��5C   %    � ���� 5D   	    �@K�ZIndex$ 99��6(   5E   	   P� 5F       � {� .  . �5G   	   �� 8  $ PART_DragArea��5H   %    � ���� 5I   	   8  $ PART_DragArea��5J   %    � ���� 5K   	   # � ��6&   $ tabItemTitle��5L   %    � ���� 5M   	   $
 Icon��6    � {� .  67   5N   	   P� 5O       5P      Z�  �@ Icon. �5Q   	   �� $
 Icon��6    � y�$ 	Collapsed=�5S      5T   	   5V      5X      5Y      �� 5\      "  6	   .�5]      ��  � �� 6!   C� *�� *M� *3	 +�� *3
 +++�� 5^       � �� 5_      �� 5`      "  6   .R�5a      �� |�. #��z��5c      ._�5e      �  6   �� $ PART_SelectedContent�� 5f   	   �� 5g   
   $
��Auto �6   �� 5h   
   $��* �6   �� 5i   
   $
��Auto �6   .+�5k   	   �� $ PART_Header��6   $��0��5l      |�.  $��1,1,1,0q�5n      
�������$��18��5p   !   ��5m      C� *�� *M� *3	 +�� *3 +++._�5q   
   ]� ��. .+�5r   &   �� $ btnClose��6-   $��Right=�6?   8��  $%��ad:ManagedContentCommands.Close��6�   #��z 6�   $��15��5s   -   $��15��68   $��2,0,2,0q�6D   $��Center=�6U   .��5u   *     $
 	IMG_Close��65   $A��;/AvalonDock;component/resources/Images/Classic/PinClose.png��6H   $��13��6�   5w      �� 5x   &   $ btnPinAutoHide��6-   $��Right=�6E   8�� $,��&ad:DockablePaneCommands.ToggleAutoHide��6�   $��15��5y   -   $��15��68   $��Center=�6D   .��5{   *     $
 IMG_AutoHide��65   $D��>/AvalonDock;component/resources/Images/Classic/PinAutoHide.png��6K   $��13��6�   5}      �� 5~      $  PART_ShowContextMenuButton��6   $��Right=�67   8�� $��15��5   -   $��15��68   $��Center=�6D   ._�5�   *     $
 IMG_ShowContextMenu��65   $@��:/AvalonDock;component/resources/Images/Classic/PinMenu.png��6R   $��13��6�   5�   '   �� 5�      $ 	paneTitle��5�      $��0��5�      $��2,0,0,0q�5�      $��CharacterEllipsis=�6   $��NoWrap=�6@   $��Center=�5�   )   ��5�      ��  �� *TemplatedParent+$ SelectedItem.Title���5�      C� *�� *M� *3	 +�� *3 +++5�      5�   
   �� 5�   	   $��1��6   $��1,0,1,1q�5�      
���������5�   %   ��  �� *TemplatedParent+$ SelectedItem.Background�._�5�   
   �� $ PART_SelectedContent��5�   %   $ Local=�5�      $ 	Contained=�5�      $ 1��5�      ��5�   %   ��  �� *TemplatedParent+$ SelectedItem.Content�5�      5�   
   �� 5�   	   $ 	PART_Tabs��6   $��2��5�   %   $��0,2,0,0q�5�      $��23��5�   %   $��0,1,0,0q�5�      8�� 5�   
     5�   	   $  paneTabsPanel��5�   %   $��2��5�   %   $��22��5�   %   $ 2��5�   %   ! . $��0,0,0,2q�5�   %   8"  5�   %   5�   	   5�       5�      �� 5�      $
# True��6p   $ 6   ��  �� *Self+$" SelectedItem.IsActiveContent�.a�5�   	   �� $ PART_Header��6�    6&   C� *�� *M� *3	 +�� *3 +++ � ��6�   �� 5�   	   $ 	paneTitle��6�    6&   C� *�� *M� *3	 +�� *3 +++ � ��6�   �� 5�   	   $ IMG_ShowContextMenu��6m    � ��$H B/AvalonDock;component/resources/Images/Classic/PinMenuSelected.png��6"   6m   �� 5�   	   $ IMG_AutoHide��6q    � ��$L F/AvalonDock;component/resources/Images/Classic/PinAutoHideSelected.png��6"   6q   �� 5�   	   $ 	IMG_Close��6n    � ��$I C/AvalonDock;component/resources/Images/Classic/PinCloseSelected.png��6"   6n   5�   	   P� 5�       �@ 
ShowHeader .  . �5�   	   �� $ PART_Header��68    � y�$ 	Collapsed=�6&   68   5�   	   P� 5�       �@ ShowTabs .  . �5�   	   �� $ 	PART_Tabs��68    � y�$ 	Collapsed=�6&   68   5�   	   �� 5�      $# false��6   $ 6&   ��  �� *Self+$ SelectedItem.IsCloseable�.a�5�      �� $ btnClose��6;    � y�$ 	Collapsed=�6Q   5�      P� 5�       �@ HasSingleItem . . �5�   	   �� $ 	PART_Tabs��68    � y�$ 	Collapsed=�6&   68   �� 5�   	   $ paneTabsPanel��68    � y�$ 	Collapsed=�6&   68   5�   	   �� 5�      $# AutoHide��6g   $ 6   ��  �� *Self+$ SelectedItem.State�.a�5�   	   �� $ btnPinAutoHide��6+    �@�LayoutTransform 5�   
   �� 5�      $% 90Q�6   5�   
   5�   	   5�      5�      5�      �� 5�      "  65   8&   5�      �� 5�      "  6)   .�5�   
   ��  � ��
 ���� 5�      �� 5�   
    � �� 5�      �� 5�      "  6"   .R�5�      �� $ PART_DragArea��5�      8��  $��	0,0,-10,0q�5�       . ._�5�      � $��0,0,0,0q�6   	 5�      �� 5�   "   $��20 �63   �� 5�   "   $
��Auto �63   .+�5�      �� #��z 6$   $��0��6D   F� 5�      $' tabItemIntPathBackground��5�   !   ;���� -1 � � $�  � ��� ��� �@KL ��)��)� -1��)	��5�   #   C� *�� *M� *3	 +�� *3 +++F� 5�      $' tabItemIntPathBorder��5�   !   8�� 2���� -1 � � $�  � ��� ��� �@KL ��)��)	5�   !   �� 5�      $ tabItemIntBorder��5�   %   $��1��5�   %   $��0,1,1,0q�5�   %   $��
-0.5,0,0,0q�5�   %   $( 0,3,0,0��5�   %   8�� ��5�   %   C� *�� *M� *3	 +�� *3 +++._�5�   "   �� $) 
Horizontal=�6-   $��5,0,5,0q�5�   -   .+�5�   &   �� $ tabItemTitle��5�      $��CharacterEllipsis=�5�      $��NoWrap=�5�   -   #��z 5      ��5     C� *�� *M� *3	 +�� *3 +++  5  &   $
 PART_LockedIcon��6v   $7��1/AvalonDock;component/resources/Images/Locked.png��61   $��6��6l   $��2,0,0,0q�6�   $y�	Collapsed=�6�   5  #   5     5     5      5     P� 5      �@��
IsSelected . . �5	     �� $ tabItemIntBorder��5
  %    5  %   C� *�� *M� *3	 +�� *3 +++ � ���� 5     $ tabItemIntPathBackground��5  %    5  %   C� *�� *M� *3	 +�� *3 +++ � ���� 5     $ tabItemIntBorder��6<    6Z   C� *�� *M� *3	 +�� *3 +++ � ���� 5     $ tabItemIntPathBorder��67    6Y   C� *�� *M� *3	 +�� *3 +++ � ��5     �� 5     $
# True��6v   $ 6&   �� $ IsActiveDocument� �� *Self+.a�5     �� $ tabItemTitle��6E    � ��$
 Bold"�6_   5     ]� 5      5     �� 5  "   $* tabItemIntBorder��6C    �@J�IsMouseOver . 6a   �� 5  "    �@��
IsSelected .  6K   ./�5     �� $ tabItemIntBorder��5  %    5  %   C� *�� *M� *3	 +�� *3 +++ � ���� 5!     $ tabItemIntPathBackground��5"  %    5#  %   C� *�� *M� *3	 +�� *3 +++ � ��5%     P� 5&      �@ IsLocked . . �5'     �� $ PART_LockedIcon��6K    � y�$ Visible=�6;   6K   5(     5*     5,     5-     �� 50     " 	 6   .�51  
   ��  � �� 6'   C� *�� *M� *3	 +�� *3
 +++�� 52  
    �@�FocusVisualStyle 6-   Z� �� 53  
    � �� 54     �� 55     " 	 6"   + 56     ���� 57     DocumentsListMenu , . 6@   58     .R�59     �� |�.  #��z��5;     ._�5=     �  5>     �� 5?  "   $
��Auto �60   �� 5@  "   $��* �60   .+�5B     � $��1��6#   $��0,-1,0,0q�60   .+�5C  "   �� $ 
intBorder1��5D  %   $��5q�5E  %   8��  $( 3��5G  %   |�.  5I  #   �� 5J  "   $ 
intBorder2��5K  )   $��2q�5L  )   $( 3��5N  )   $��1q�5O  )   |�.  ��5M  )   C� *�� *M� *3	 +�� *3 +++��5Q  )   ��  �� *TemplatedParent+$ SelectedItem.Background�._�5S  &   �� $ contentPresenter��5T  )   $��2q�5V  )   $ Local=�5W     $ 	Contained=�5X     ��5U  )   ��  �� *TemplatedParent+$ SelectedItem.Content�5X     5Y  #   5Z     �� 5[     $ PART_Header��6%   $��0��5\     $��20��5]  !   |�.  $��1,1,1,0q�5_     ._�5`  "   ]� ��. .+�5a  &   �� $��Right=�6-   $��15��6D   $��15��6O   $��2,0,2,0q�6[   8�� $%��ad:ManagedContentCommands.Close��5b  -   #��z 5c  -   .��5d  *   �� $9��3/AvalonDock;component/resources/Images/PinClose.png��60   $��13��6m   $��13��6x   $
��None=�6�   5e  '   �� 5f  &   $  PART_ShowContextMenuButton��6-   $��Right=�6Q   $��15��6h   $��15��6s   8�� .��5g  *   �� $- ShowContextMenuIcon��60   $8��2/AvalonDock;component/resources/Images/PinMenu.png��6M   $��13��6�   $��13��6�   $
��None=�6�   5h  '   
  5i  &   $. paneTabsPanel��5j  '   $/ 1��5k  '   ! . 8"  5m     5n  #   5o     5p     5q      5r     P� 5s      �@ 
ShowHeader .  . �5t     �� $ PART_Header��6M    � y�$ 	Collapsed=�6;   6M   �� 5u     $ 
intBorder1��6J    � ��$ 0q�6@   6J   �� 5v     $ 
intBorder2��6J    � ��$ 0q�6@   6J   �� 5w     $ 
intBorder2��6A    � ��$ 0q�67   6A   �� 5x     $ contentPresenter��6A    � ��$ 0q�67   6A   5y     P� 5z      �@��HasItems .  . �5{     ��  � y�$ Hidden=�6;   5|     �� 5}     $
# True��6x   $ 6&   �� $ IsMainDocumentPane� �� *Self+.a�5~     �� $ ShowContextMenuIcon��6u    � ��$; 5/AvalonDock;component/resources/Images\PinDocMenu.png��67   6u   5     :� 5�     $0 Window.Loaded��6'   .[�5�     �� .��5�  "   �� .��5�  &   W� $1 Opacity�5�  )   $2 0X�5�  )   $3 1X�62   $4 	0:0:0.200D�6:   5�  #   5�     5�     5�     5�     5�     �� 5�     "  6	   .�5�     ��  � �� 5�     �� 5�     "  6   .R�5�     � .+�5�     �� $��PART_Border��5�     $��1,0,1,1q�5�     8��  8�� ._�5�  	   � 	 5�  
   �� 5�     $
��Auto �6   �� 5�     $��* �6   .+�5�  "     $
 
borderIcon��6-   $��16��6A   #��z5 6L   �� 5�  "   $��1��5�  %   #��z6 5�  %   #��� ��5�  %   $��4,2,2,2q�5�  %   5�  
   5�  	   5�      5�     P� 5�      �@ Anchor 5�  	    5�  
   Left=�5�     . �5�  	   �� $ PART_Border��6   8   � ��6?   �� 5�  	   $ PART_Border��6    � ��$ 1,1,1,0q�6D   5�  	   P� 5�      �@ Anchor 5�  	    5�  
   
Bottom=�5�     . �5�  	   �� $ PART_Border��6   8   � ��6?   �� 5�  	   $ PART_Border��6    � ��$ 1,1,1,0q�6D   5�  	   P� 5�      �@J�IsMouseOver . . �5�  	   �� 8  $ PART_Border��5�  %    � ���� 5�  	   8  $ PART_Border��5�  %    � ��5�  	   ]� 5�      5�  	   �� 5�  
    �@J�IsMouseOver . 6+   �� 5�  
    �@ Anchor 5�      5�     Top=�5�     5�     ./�5�  	   �� $ PART_Border��6   8   � ��6?   5�  	   ]� 5�      5�  	   �� 5�  
    �@J�IsMouseOver . 6+   �� 5�  
    �@ Anchor 5�      5�     	Right=�5�     5�     ./�5�  	   �� $ PART_Border��6   8   � ��6?   5�  	   5�     5�     5�     �� 5�     "  6	   .�5�     ��  �@��Orientation$ 
Horizontal=�6"   �� 5�      � ��$ 7,0,0,0q�6   5�     5�     
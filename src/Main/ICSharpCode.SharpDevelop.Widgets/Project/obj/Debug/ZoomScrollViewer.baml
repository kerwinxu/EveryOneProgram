   M S B A M L   `   `   `  ����j  fICSharpCode.SharpDevelop.Widgets, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eeS.clr-namespace:ICSharpCode.SharpDevelop.Widgets ICSharpCode.SharpDevelop.Widgets  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0897    1ICSharpCode.SharpDevelop.Widgets.ZoomScrollViewer  �� 
TargetType �� Property �� Value �� 
TargetType � ColumnDefinitions � RowDefinitions:   4ICSharpCode.SharpDevelop.Widgets.SelfCollapsingPanel7   1ICSharpCode.SharpDevelop.Widgets.CollapsiblePanel   CollapseOrientation   CanCollapse �� Path	 �� Mode
 �� RelativeSource �� Mode2   ,ICSharpCode.SharpDevelop.Widgets.ZoomButtons  Name    MinimumZoom � Minimum    MaximumZoom � Maximum � Value �� CanContentScroll � LayoutTransform �� ScaleX �� ScaleY �� ScrollableHeight �� ViewportHeight �� ViewportSize �� VerticalOffset* �� #ComputedVerticalScrollBarVisibility �� Orientation �� ScrollableWidth �� ViewportWidth �� HorizontalOffset, �� %ComputedHorizontalScrollBarVisibility   ZoomButtonStyle  �� Triggers! P� Property" P� Value# �� Orientation$ ��Name�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5      ;Controls.clr-namespace:ICSharpCode.SharpDevelop.Widgets  5      %1
  '         &	  �    '  Q    7   7   7   �� 5      "    6	   .�5      ��  � �� 5      �� 5      "   6   .R�5	      � #��z��6    5
      �� 5   	   $
��Auto �6   �� 5   	   $��* �6   �� 5   	   $
��Auto �6    5      �� 5   	   $��* �6   �� 5   	   $
��Auto �6   .+�5        $��0��6%   $��1��65   $ 
Horizontal=�6B    6c   �� $! ComputedZoomButtonCollapsed�$	 OneWay=�
 �� $ TemplatedParent=�.��5   	     $ zoomButtons��6   # z 6�   # z 6�    63   �� $ CurrentZoom�
 �� $ TemplatedParent=�6�   5   	   �� 5      $��2��6   $��1��6"   #��� ��6/   �� 5      $��PART_Presenter��6   $��0��65   $��2��6E   $��0��6Y   #��z��6f   #��z��6�   #��z��6�   # z��6   5   	   �� 5   
    6   �� $ CurrentZoom�
 �� $ TemplatedParent=� 6s   �� $ CurrentZoom�
 �� $ TemplatedParent=�5   	   �� 5      $��PART_VerticalScrollBar��6   $��2��60   $��0��6@   $ 0Q�6M   # z 6Y   # z 6�   # z 6�   #y�z 6�   �� 5      $��PART_HorizontalScrollBar��6   $ 
Horizontal=�62   $��1��6K   $��1��6[   $ 0Q�6h   # z 6t   # z 6�   # z 6�   #y�z 6�   5      5      5!      5"      �� 5$      "  ��5%   	   .�5&      ��  �@��Delay$ 0��6   �� 5'       � |� .  6    �� 5(       �@J�Opacity$	 0.5Q�6   �� 5)       � �� 5*      �� 5+      " ��6   .R�5,      ��   5-      P� 5.      ! �@J�IsMouseOver" . . �5/   	   ��  �@J�Opacity$ 1Q�6#   50   	   52      54      55      �� 57      "   6	   .�58      ��  �@�Minimum$	 0.2Q�6   �� 59       �@�Maximum$ 10Q�6   �� 5:       �@�Value$ 1Q�6   �� 5;       � �� 5<      �� 5=      "  6   .R�5>      �� #��z��6   #��z��5?      #��z��5@      ._�5A      �� $# 
Horizontal=�6   ���#3000.+�5C   	   �� $$ uxPlus��6   $��16��5D      $��16��6!   $��0q�6-   $��0q�69   8��  .��5F   
   �� $��Images/ZoomIn.png��6   $��Uniform=�5G      5H   
   �� 5I   	   $$ uxMinus��6   $��16��5J      $��16��6!   $��0q�6-   $��0q�69   8�� .��5L   
   �� $��Images/ZoomOut.png��6   $��Uniform=�5M      5N   
   �� 5O   	   $$ uxReset��6   $��16��5P      $��16��6!   $��0q�6-   $��0q�69   8�� .��5R   
   �� ���#5000._�5S      �� 
�������$��Center=�5T      $��Center=�5U      163   5V      5W   
   5X   	   5Y      5Z      5\      5]      5^      
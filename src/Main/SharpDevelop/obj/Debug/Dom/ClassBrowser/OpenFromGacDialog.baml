   M S B A M L   `   `   `  ����  SharpDevelopA   ;ICSharpCode.SharpDevelop.Dom.ClassBrowser.OpenFromGacDialog   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eeb ^ICSharpCode.SharpDevelop, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee5core(http://icsharpcode.net/sharpdevelop/core   5        � Title$  Open From GAC��5      0  *ICSharpCode.Core.Presentation.GlobalStyles   DialogWindowStyle#��Z 5       � WindowStartupLocation$ CenterOwner=�5	       � 
ResizeMode$ CanResizeWithGrip=�5
      $	��200��5      $	��150��5      $	��350��5      $	��750��5       +� FocusedElement 5      ��  �� ElementName$ filterTextBox��.��5      � $
��12,8q�5       � RowDefinitions 5      �� 5      $
��Auto �5      �� 5      $��1* �5      �� 5      $
��Auto �5      .+�5      ]� .+�5      �� $
��Left=�6    �� Target 6!   �� $ filterTextBox��.��6N   
_Search:6X   �� 5      -   5        $��filterTextBox��5      6"   5      �� 5      -   5        $��listView��5      $��1��6   $
��0, 8q�6*   :  4ICSharpCode.Core.Presentation.SortableGridViewColumn   SortMode$ 	Automatic=�68   	 �� View	 5      �� 5       .P�5!        -   5        
nameColumn��
 �� Width$	
 300��5!   7   $��Reference Name��6C    �� DisplayMemberBinding 6[   �� *	ShortName+  5"      $
 75��6#   $��Version��6.    6?   �� *	Version+  5#      $
 65��6#   $��Culture��6.    6?   �� *	Culture+  5$      $	
 115��6#   $��Public Key Token��6/    6I   �� *PublicKeyToken+  5%      $

 1000��6#   $��Location��60    6B   �� *
FileName+5&      5(      �� 5)      $��2��6    �� Orientation$ 
Horizontal=�6   $��Right=�65   .+�5*      �� -   5        $��okButton��5*   V    �� 	IsDefault . $	��2,0q�6   $��23��6*   $��75��66   {�.  .��6}   Open6�   �� 5+       �� IsCancel . $	��2,0q�6   $��23��6)   $��75��65   .��6C   Cancel6K   5,      � 5-      -   5        $��gacReadingProgressBar��5-   G   $��1��6   $��10��6   $��Stretch=�6)   $��Bottom=�6d   $y�Hidden=�6   5.      5/      
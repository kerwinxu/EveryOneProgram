   M S B A M L   `   `   `  ����b  ^ICSharpCode.SharpDevelop, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eee7clr-namespace:ICSharpCode.SharpDevelop.Gui.OptionPanels)ICSharpCode.SharpDevelop.Gui.OptionPanels  5      =    7ICSharpCode.SharpDevelop.Gui.OptionPanels.BuildAdvanced   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee5core(http://icsharpcode.net/sharpdevelop/core    5      Loptionpanels7clr-namespace:ICSharpCode.SharpDevelop.Gui.OptionPanels    5        � 	Resources  5      H   BICSharpCode.SharpDevelop.Gui.OptionPanels.StorageLocationConverter   	converter��%   &	          5      6*   5	      .��5      �  � RowDefinitions 5      �� 5      $
��Auto �6   6#   �� 5      $
��Auto �6   6#   �� 5      $
��Auto �6   6#   �� 5      $
��Auto �6   6#   �� 5      $
��Auto �6   6#   �� 5      $
��Auto �6   6#   �� 5      $
��Auto �6   6#   �� 5      $
��Auto �6   6#   �� 5      $
��Auto �6   6#   �� 5      $
��Auto �6   6#    � ColumnDefinitions 5      �� 5      $
��Auto �6   6%   �� 5      $
��Auto �6   6%   �� 5      $	��120��6   6'   �� 5      6   �� 5      $��50 �6   6#   .+�5       E   ?ICSharpCode.SharpDevelop.Gui.OptionPanels.StorageLocationPicker  $��1��6'   $��Center=�64      Location 5!      `� 5"       `� 	Converter# [  6   .1�5#      ��  �� Path$$ RegisterForComInterop.Location�6   �� 5$      $. (GenerateSerializationAssemblies.Location�6   �� 5%      $ PlatformTarget.Location�6   �� 5&      $ Prefer32Bit.Location�6   �� 5'      $ FileAlignment.Location�6   �� 5(      $ BaseAddress.Location�6   5)      5+      �� 5.      $��2��6    d� 	IsChecked 5/      �� *RegisterForComInterop.Value+��50      5  /ICSharpCode.Core.Presentation.LocalizeExtension  *,*Dialog.ProjectOptions.Build.RegisterForCOM+6T   �� 52      $��1��6
   $��1��6   $��Right=�53   
   ��54   
     *;9Dialog.ProjectOptions.Build.GenerateSerializationAssembly+6`   �� 57      $��1��6   $��2��6   $��Center=�58       �� DisplayMemberPath$ DisplayValue��5;       �� SelectedValuePath$	 Key��5<      ��59      �� $# DataContext.SerializationInfo�	 �� SelectedValue	 5:      �� $+ %GenerateSerializationAssemblies.Value�5<   '   �� 5>      $��2��6
   $��1��6   $��Right=�6'   ��5?   
     *'%Dialog.ProjectOptions.Build.TargetCPU+6L   �� 5A      -   5        
 ��Name$
 targetCpuComboBox��5A      $��2��5B      $��2��6   $��Center=�6*   $ DisplayValue��5E      $	 Key��5F      ��5C      �� $ DataContext.TargetCPU�5F   '   �� 5H      $��3��6
   $��1��6   $��Right=�6'   ��5I   
     *+)Dialog.ProjectOptions.Build.FileAlignment+6P   �� 5L      $��3��6   $��2��6   $��Center=�6*   $ DisplayValue��5O      $	 Key��5P      ��5M      �� $ DataContext.FileAlign�	 5N      �� $ FileAlignment.Value�5P   '   �� 5R      $��4��6
   $��1��6   $��Right=�6'   ��5S   
     *,*Dialog.ProjectOptions.Build.DLLBaseAddress+6Q   �� 5W      $��4��6   $��2��6   ��5X      �� *DllBaseAddress+ �� UpdateSourceTrigger$ PropertyChanged=�.��6Q   5Z      �� 5^      $��6��6
   $��2��6   ��5_   
     *86Dialog.ProjectOptions.Build.BaseIntermediateOutputPath+6]     5a      $��7��6'   $
��Left=�5c       5b      �� *%#BaseIntermediateOutputPath.Location+5c      �� 5e      -   5         ��Name$' !baseIntermediateOutputPathTextBox��5e      $��7��67   $��1��6D   $��3��6T   ��5f      �� *" BaseIntermediateOutputPath.Value+$ PropertyChanged=�6e   �� 5h      $��7��6   $��4��6   $��3,0,3,0q�6(   $	��...��5i      $��Center=�5j      ��5k      �� *#!BaseIntermediateOutputPathCommand+6C   �� 5m      $��8��6
   $��2��6   ��6+     *42Dialog.ProjectOptions.Build.IntermediateOutputPath+6z     5o      $��9��6'   $
��Left=�64    5p      �� *!IntermediateOutputPath.Location+�� 5r      -   5        $# intermediateOutputPathTextBox��5r      $��9��63   $��1��6@   $��3��6P   ��5s      �� *IntermediateOutputPath.Value+$ PropertyChanged=�6a   �� 5u      $��9��6   $��4��6   $��3,0,3,0q�6(   $	��...��5v      $��Center=�5w      ��5x      �� *IntermediateOutputPathCommand+6?   5y      5z      
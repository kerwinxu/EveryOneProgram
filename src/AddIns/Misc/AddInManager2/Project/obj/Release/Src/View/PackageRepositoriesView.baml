   M S B A M L   `   `   `  ���� g  cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eetRclr-namespace:ICSharpCode.Core.Presentation;assembly=ICSharpCode.Core.PresentationICSharpCode.Core.Presentation  b ^ICSharpCode.SharpDevelop, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eemLclr-namespace:ICSharpCode.SharpDevelop.Gui;assembly=ICSharpCode.SharpDevelopICSharpCode.SharpDevelop.Gui W SICSharpCode.AddInManager2, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=nullY1clr-namespace:ICSharpCode.AddInManager2.ViewModel#ICSharpCode.AddInManager2.ViewModel <   6ICSharpCode.AddInManager2.View.PackageRepositoriesView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    >d2http://schemas.microsoft.com/expression/blend/2008    Hmc;http://schemas.openxmlformats.org/markup-compatibility/2006    acoreRclr-namespace:ICSharpCode.Core.Presentation;assembly=ICSharpCode.Core.Presentation    ZguiLclr-namespace:ICSharpCode.SharpDevelop.Gui;assembly=ICSharpCode.SharpDevelop    Aaimvm1clr-namespace:ICSharpCode.AddInManager2.ViewModel    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � 	Resources  F  @ICSharpCode.AddInManager2.ViewModel.PackageRepositoriesViewModel   	ViewModel��%   &	           � DataContext ��  �� Source# [  .���     ListBoxItemStyle �� 
TargetType �� 	Resources �� Color �� Property �� Value �� Triggers	 P� Property
 P� Value   PackageSourceListBoxTemplate ��Name �� Path��%<  &	       &	 �     �� " �� ���� # � ��(��       *SystemColors.ControlBrushKey+).���  � ��
 ����� P� 	 �@��AlternationIndex$
 0��. ���  � ��
 ������� .R��� $ PackageSourceStackPanel��$��4q�.+��� ���� $
 Name��� �� .�.��� ���� $ 	SourceUrl� � ColumnDefinitions �� �� $
��Auto � � RowDefinitions �� �� $
��Auto �.+��� $��0��$��Stretch=� �� AlternationCount$ 2��#��[ #��[ ���� $ PackageRepositories� �� SelectedItem �� $ SelectedPackageRepository�� $��1��$��4q� �� $
��Auto ���  �� �� .+��� $��0��$��0��$��4q���5   /ICSharpCode.Core.Presentation.LocalizeExtension  * AddInManager2.OptionPanel.Name+�� $��0��$��1��$
��4, 2q����� $ NewPackageSourceName� �� UpdateSourceTrigger$ PropertyChanged=��� $��1��$��0��$��4q���  *" AddInManager2.OptionPanel.Source+�� $��1��$��1��$	��4,2q����� $ NewPackageSourceUrl�$ PropertyChanged=��� $��1��$��0��.+��� $
��4, 2q�$
��7, 0q���  *" AddInManager2.OptionPanel.MoveUp+���� $  MovePackageSourceUpCommand��� $
��4, 2q�$
��7, 0q���  *$"AddInManager2.OptionPanel.MoveDown+���� $" MovePackageSourceDownCommand��� $
��4, 2q�$
��7, 0q���  *" AddInManager2.OptionPanel.Remove+���� $  RemovePackageSourceCommand��� $��1��$��1��.+��� $��
4, 6, 4, 4q�$
��7, 0q���  *AddInManager2.OptionPanel.Add+���� $ AddPackageSourceCommand��� $	��...��$
��Left=�$
��4, 4q�$
��7, 0q����� $  BrowsePackageFolderCommand�
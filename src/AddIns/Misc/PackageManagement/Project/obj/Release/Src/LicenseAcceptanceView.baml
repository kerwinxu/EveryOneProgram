   M S B A M L   `   `   `  ���� O  KPackageManagement, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=nullM+clr-namespace:ICSharpCode.PackageManagementICSharpCode.PackageManagement  [2clr-namespace:ICSharpCode.PackageManagement.Design$ICSharpCode.PackageManagement.Design  9    3ICSharpCode.PackageManagement.LicenseAcceptanceView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eeb ^ICSharpCode.SharpDevelop, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee5core(http://icsharpcode.net/sharpdevelop/core   <d2http://schemas.microsoft.com/expression/blend/2008   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     :pm+clr-namespace:ICSharpCode.PackageManagement     Bpmd2clr-namespace:ICSharpCode.PackageManagement.Design       � WindowStartupLocation$  CenterOwner=�0  *ICSharpCode.Core.Presentation.GlobalStyles   DialogWindowStyle#��Z  � Title$ License Agreements��$	��300��$	��480��$	��300��$	��300�� � 	Resources  �� 
TargetType   ButtonStyle �� BasedOn   BoolToVisibility8   2ICSharpCode.PackageManagement.OpenHyperlinkCommand  OpenHyperlinkCommand  ListBoxItemTemplate � ColumnDefinitions �� Command	 �� CommandParameter
 �� Path��%C  '��       &	       &	      &	      7  �� " ��# Z ��   �� .R��  �� $
��Auto ��� .+��� $��4q�.+��� $
��Bold"����� *Id+�� �� 8   	 �� $
 
LicenseUrl�.�.��� $��View License Terms���� $��1��$��4q�$��CharacterEllipsis=�$
��Wrap=�$��40������ *	Summary+.���  � RowDefinitions �� $
��Auto ��� �� $
��Auto ��� $
��Auto �.+��� $
��4, 2q�.+��� $
��Wrap=�$?��9The following packages require a click-to-accept license:��y��� $
 HasMultiplePackages� �� 	Converter# [  �� $
��Wrap=�$?��9The following package requires a click-to-accept license:��y��� $
 HasOnePackage�# [  �� $��1��$��1q�#��� ��._��� $
��Auto=�$��Disabled=�.���� #��� ��#��[ ���� $
 Packages��� $��2��$��4q�.+��� $
��Wrap=�y��� $
 HasMultiplePackages�# [  ��By clicking "I Accept" you agree to the license terms for the packages listed above. If you do not agree to the license terms click "I Decline".�� $
��Wrap=�y��� $
 HasOnePackage�# [  ��By clicking "I Accept" you agree to the license terms for the package listed above. If you do not agree to the license terms click "I Decline".�� $��3��$��4q� �� Orientation$ 
Horizontal=�$��Right=�.+��� $��
I _Decline�� �� IsCancel . �� -   $��	I _Accept��
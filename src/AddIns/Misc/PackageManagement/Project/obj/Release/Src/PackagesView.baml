   M S B A M L   `   `   `  ���� O  KPackageManagement, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=nullM+clr-namespace:ICSharpCode.PackageManagementICSharpCode.PackageManagement  [2clr-namespace:ICSharpCode.PackageManagement.Design$ICSharpCode.PackageManagement.Design  0    *ICSharpCode.PackageManagement.PackagesView   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    g cICSharpCode.Core.Presentation, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14eeb ^ICSharpCode.SharpDevelop, Version=5.1.0.5216, Culture=neutral, PublicKeyToken=f829da5c02be14ee5core(http://icsharpcode.net/sharpdevelop/core   <d2http://schemas.microsoft.com/expression/blend/2008   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     :pm+clr-namespace:ICSharpCode.PackageManagement     Bpmd2clr-namespace:ICSharpCode.PackageManagement.Design       � 	Resources   �� 
TargetType0  *ICSharpCode.Core.Presentation.GlobalStyles   ButtonStyle �� BasedOn8   2ICSharpCode.PackageManagement.OpenHyperlinkCommand   OpenHyperlinkCommand  DefaultPackageIcon �� 	UriSource  PackageAddedIcon  
SearchIcon  BoolToVisibility % !PackageSourceComboBoxItemTemplate �� Path $  PackageDependencySetItemTemplate  PackageListBoxItemTemplate � ColumnDefinitions � RowDefinitions �� TargetNullValue	 �� 	Converter
 ��Name �� 	IsDefault �� Triggers ^� 
Conditions �� Binding �� RelativeSource �� AncestorType �� Value �� 
TargetName �� Property �� Value  PackageTemplate �� Orientation �� Command �� CommandParameter �� StringFormat �� Binding �� Value��%G  '��       &	       &	      &	 n     &	 �     &	     &	     &	 =    &	 n    7  7  7  &	 ^    7  7   7  7  7  7  7   7  7   7  7   7  7  �� " ��# Z   �� $R Lpack://application:,,,/PackageManagement;component/Resources/packageicon.png?��� $M Gpack://application:,,,/PackageManagement;component/Resources/accept.png?��� $P Jpack://application:,,,/PackageManagement;component/Resources/magnifier.png?��� �� .R��� ���� $
 Name��� .R�� .+��� ���� $ Dependencies��� .R��  �� $��60 ��� $��* ��� $
��Auto � �� $��60 �.+��� $��0��$��32������ $ IconUrl�8   �� $��1��$
��4, 0q�.+��� $
��Bold"����� $
 Name��� $
��Wrap=�$��CharacterEllipsis=�$��40������ $ Summary��� $��2��$	��Top=�$��Right=�$��16��$��16��8�� y��� $ IsAdded�8	  �� $
 addPackageButton��$��2��$	��Add�� . $y�	Collapsed=�$	��Top=����� $ AddPackageCommand��� $
 removePackageButton��$��2��$��Remove�� . $y�	Collapsed=�$��Bottom=����� $ RemovePackageCommand��� $
 managePackageButton��$��2��$��Manage�� . $y�	Collapsed=�$��Bottom=����� $ ManagePackageCommand� ^�  ��  �� $ 
IsSelected� �� " �� True��  �� $ IsAdded�	 False��  �� $ 	IsManaged�	 False.0��� $ addPackageButton�� � y�$ Visible=�^�  ��  �� $ 
IsSelected� �� " �� True��  �� $ IsAdded� True��  �� $ 	IsManaged�	 False.0��� $ removePackageButton�� � y�$ Visible=�^�  ��  �� $ 
IsSelected� �� " �� True��  �� $ 	IsManaged� True.0��� $ managePackageButton�� � y�$ Visible=��� .R��� $
��Auto=�.���� $
��8, 4q�.+��� $ 
Horizontal=�$
��0, 4q�.+��� $��Created by:��$
��Bold"��� $
��4, 0q����� $ Authors��� $ 
Horizontal=�$
��0, 4q�.+��� $	��Id:��$
��Bold"�$��
0, 0, 4, 0q��� y��� $ HasGalleryUrl�8	   �� 8   �� $ 
GalleryUrl�.�.��� ���� $ Id��� y��� $ HasNoGalleryUrl�8	  ���� $ Id��� $ 
Horizontal=�$
��0, 4q�.+��� $��Version:��$
��Bold"�$��
0, 0, 4, 0q��� ���� $ Version��� $ 
Horizontal=�$
��0, 4q�y��� $ HasLastPublished�8	  .+��� $��
0, 0, 4, 0q�$��Last Published:��$
��Bold"��� ���� $ LastPublished�$ d���� $ 
Horizontal=�$
��0, 4q�y��� $ HasDownloadCount�8	  .+��� $��
0, 0, 4, 0q�$��
Downloads:��$
��Bold"��� ���� $ DownloadCount��� $y�	Collapsed=�$ 
Horizontal=�$
��0, 4q�.+��� $��
0, 0, 4, 0q�$��Rating:��$
��Bold"��� ���� $ Rating��� y��� $ HasLicenseUrl�8	  �� 8   �� $ 
LicenseUrl�.�.��� $��View License Terms���� y��� $ HasProjectUrl�8	  �� 8   �� $ 
ProjectUrl�.�.��� $��More Information���� y��� $ HasReportAbuseUrl�8	 	 �� 8 
  �� $ ReportAbuseUrl�.�.��� $��Report Abuse���� $
��0, 4q�$
��Wrap=����� $ Description��� $
��0, 4q�.+��� $ 
Horizontal=�.+��� $��Dependencies:��$��
0, 0, 4, 0q�$
��Bold"��� $
��None��y��� $ HasNoDependencies�8	  �� $
��4, 4q�8�� ���� $ Dependencies� ��  ��  Z� .a���  � y�$ Hidden=�.���  �� $	��100���� $
��Auto ��� $	��100��.+�� $��0�� �� �� $
��Auto �.+��� -    ��Name$ allPackagesListBox��$��0�� �� SelectedIndex$ 0��#��[ $��Stretch=�$��Disabled=����� $ PackageViewModels�� $��0��$��20��$	��100�� � IsIndeterminate . $��Center=�$��Center=�y��� $ IsReadingPackages�#	 [ �� -    ��Name$ ErrorMessageText��$��0��$
��Wrap=�y��� $ HasError�#	 [ ���� $ ErrorMessage�4   .ICSharpCode.PackageManagement.PagedResultsView  -     Name$ pagedResultsView��$��1��$��Center=�y��� $ IsPaged�#	 [   � DataContext  �� �� $��1��$��5��$��Stretch=�$��Stretch=�� $��2�� �� $
��Auto ��� .+�� y��� $ ShowPackageSources�#	 [  �� �� $
��Auto � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��0��$��2��$��
0, 0, 0, 2q�#��[ ! �� SelectedItem! �� $ SelectedPackageSource����� $ PackageSources�y��� $ ShowPackageSources�#	 [ �� $��1��$��0��y��� $ IsSearchable�#	 [ ���� $ SearchTerms�" �� UpdateSourceTrigger$" PropertyChanged=�.��# J� InputBindings# �� 
$ �� Key$$ Enter��% �� Command% �� $ SearchCommand�.���� $��1��$��1��$��4q�y��� $ IsSearchable�#	 [ �� & �� TextDecorations& Z�  �� $ SearchCommand�.�.��� #��[ $��16��$��16���� $��2��$��2��$��2q�$��Include Prerelease��y��� $ ShowPrerelease�#	 [ ' d� 	IsChecked' �� $ IncludePrerelease��� $��3��$��1��$��2q�$��
Update All��y��� $  IsUpdateAllPackagesEnabled�#	 [ ���� $ UpdateAllPackagesCommand��� $��1��#��[ ���� ( �� ElementName$( allPackagesListBox��$ SelectedItem�
   M S B A M L   `   `   `  ���� S  OICSharpCode.Data.Core.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]3clr-namespace:ICSharpCode.Data.Core.UI.UserControls%ICSharpCode.Data.Core.UI.UserControls  =    7ICSharpCode.Data.Core.UI.Windows.ConnectionWizardWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     P LICSharpCode.Data.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null(datahttp://icsharpcode.net/data    HuserControls3clr-namespace:ICSharpCode.Data.Core.UI.UserControls    -     �Name$
  This��#��� �� � Title$! Add new database connection��$	��400��$	��600�� � WindowStartupLocation$ CenterOwner=� � 	Resources  �� MergedDictionaries �� Source��  �� $$ ../Images/ImageDictionary.xaml?�%    .��� $��5q� � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� �� $
��Auto � � ColumnDefinitions �� $
��Auto ��� .+��� 
�������._��  �� $
��Auto ��� .+��� $��	5,5,10,10q�$��16��$��16��   DatabaseConnectImage#��[  $��Center=��� $��1��$��
10,5,10,10q�$
��Bold"�$��Center=�Add new database connection�� $��1��$��3q�Database driver:�� -    ��Name$ cboDatabaseDriver��$��1��$��1��$��2��$��3q�:  4ICSharpCode.Data.Core.DatabaseObjects.DatabaseDriver	   DatabaseDrivers#��Z	 
 �� SelectedItem
 �� *SelectedDatabaseDriver+ �� ElementName$
 This������ .R��� ���� *Name+�� $��2��$��3q�Data source:� $��2��$��1�� �� �� $
��Auto �.+��� -   $ cboDatasources��$��3q� �� 
IsEditable . 
 �� *SelectedDatasource+$
 This������ *$"SelectedDatabaseDriver.Datasources+$
 This������ .R��� ���� *Name+�� -   $��1��$��3q�$��Auto Discover���� $��3��$��1��$��3q����� *!SelectedDatasource.ControlPanel+$
 This���� -    ��Name$ 
btnConnect��$��4��$��1��$��3q�$��Connect��$��Right=�{��� *
CanConnect+$
 This���� $��5��$��3q�	Database:�� -   $ cboDatabases��$��5��$��1��$��3q�
 �� *SelectedDatabase+$
 This������ *SelectedDatasource.Databases+$
 This������ .R��� ���� *Name+9� $��6��$��1��$��2q�$��Connection String��$	��Top=� 9� 
IsExpanded �� *31SelectedDatasource.UseUserDefinedConnectionString+$
 This��.����  �� MinLines$ 5������ *0.SelectedDatasource.UserDefinedConnectionString+$
 This��9   3ICSharpCode.Data.Core.UI.UserControls.LoadingCircle  $��7��$��3q�   IsActivated �� *	IsLoading+$
 This���� $��7��$��1�� �� Orientation$ 
Horizontal=�$��Right=�.+��� -   $ btnAdd��$��3q�$��3q�{�.  .��Add�� -   $��3q� �� IsCancel . $��3q�.��Cancel
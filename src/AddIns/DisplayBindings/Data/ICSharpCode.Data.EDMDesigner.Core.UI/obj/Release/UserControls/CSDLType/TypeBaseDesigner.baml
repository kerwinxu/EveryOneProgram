   M S B A M L   `   `   `  ���� R  NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R8clr-namespace:System.ComponentModel;assembly=WindowsBaseSystem.ComponentModel  _ [ICSharpCode.Data.EDMDesigner.Core.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullu?clr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls1ICSharpCode.Data.EDMDesigner.Core.UI.UserControls �Kclr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu=ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu �Hclr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.CSDLType:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.CSDLType q=clr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.Converters/ICSharpCode.Data.EDMDesigner.Core.UI.Converters Q   KICSharpCode.Data.EDMDesigner.Core.UI.UserControls.CSDLType.TypeBaseDesigner   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml      PwindowsBase8clr-namespace:System.ComponentModel;assembly=WindowsBase      YlocalControls?clr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls      ilocalControlsMenuKclr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu      jlocalControlsCSDLTypeHclr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.CSDLType      _localBindingConverter=clr-namespace:ICSharpCode.Data.EDMDesigner.Core.UI.Converters      \ XICSharpCode.Data.EDMDesigner.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullBcsdlDomainModel,http://icsharpcode.net/data/edmdesigner/csdl  -   |�.   � 	Resources  O  IICSharpCode.Data.EDMDesigner.Core.UI.Converters.BoolToVisibilityConverter #  BoolToVisibilityConverterHidden   Hidden & "BoolToVisibilityConverterCollapsedR  LICSharpCode.Data.EDMDesigner.Core.UI.Converters.IUITypeToBackgroundConverter   IUITypeToBackgroundConverterS  MICSharpCode.Data.EDMDesigner.Core.UI.Converters.IUITypeToBorderBrushConverter ! IUITypeToBorderBrushConverterR  LICSharpCode.Data.EDMDesigner.Core.UI.Converters.UIPropertyToOpacityConverter   UIPropertyToOpacityConverterR  LICSharpCode.Data.EDMDesigner.Core.UI.Converters.UIPropertyFontStyleConverter   UIPropertyFontStyleConverterG  AICSharpCode.Data.EDMDesigner.Core.UI.Converters.IsTypeOfConverter  IsTypeOfConverter   ReturnVisibility  propertiesCollectionView �� Source �� GroupDescriptions2  ,System.Windows.Data.PropertyGroupDescription   PropertyName �� SortDescriptions+   %System.ComponentModel.SortDescription   PropertyNameO	  IICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu.ContextMenu  ContextMenuL
  FICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu.MenuItem 
 NameQ  KICSharpCode.Data.EDMDesigner.Core.UI.UserControls.CSDLType.TypeBaseDesigner	   AddPropertyText
   AddScalarPropertyText   AddScalarPropertyCommand m� Command   AddComplexPropertyText    AddComplexPropertyCommand    AddNavigationPropertyText#   AddNavigationPropertyCommand   
RenameText   RenameCommand m� InputGestureText   
DeleteText   DeleteCommand m� IconF  @ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.DesignerCanvas   RemoveFromDesignerText    RemoveFromDesignerCommandQ  KICSharpCode.Data.EDMDesigner.Core.UI.UserControls.ContextMenu.MenuSeparator   CutText   
CutCommand   CopyText   CopyCommand   	PasteText   PasteCommandE  ?ICSharpCode.Data.EDMDesigner.Core.UI.UserControls.GreyableImage   PropertiesText    PropertiesCommand!   MappingText"   MappingCommand#   ShowBaseText$   ShowBaseTypeCommand%   ShowRelatedText&   ShowRelatedTypeCommand'   ShowOtherTabsText(   ShowOtherTabsCommand)   ShowOtherTabsItemCommand* m� CommandParameter+ ��NameM  GICSharpCode.Data.EDMDesigner.Core.UI.UserControls.DesignerCanvasPreview,  Name-   DesignerView. J� Opacity��%�  &	        &	      &	      &	      &	 !     &	 &     &	 +     &	 7     &	 �       $ Hidden=�             . ��  �� *
Properties+   $ PropertyType��   $ PropertyTypeValue��  $ Index��	  .@�
  $ addMenuItem��#��Z	 .@�
  $ addScalarPropertyMenuItem��#��Z
 # Z 
  $  addComplexPropertyMenuItem��#��Z # Z 
  $# addNavigationPropertyMenuItem��#��Z # Z 
  $ renameMenuItem��#��Z # Z $ F2��
  $ deleteMenuItem��#��Z # Z $	 Del�� �� $��Resources/Delete.png��$��16��$��16��
  $  removeFromDesignerMenuItem��#��Z # Z $ 	BackSpace��  
  $ cutMenuItem��#��Z # Z $ Ctrl+X�� �� $��Resources/Cut.png��$��16��$��16��
  $ copyMenuItem��#��Z # Z $ Ctrl+C�� �� $��Resources/Copy.png��$��16��$��16��
  $ pasteMenuItem��#��Z # Z $ Ctrl+V��   $��Resources/Paste.png��  
  $ propertiesMenuItem��#��Z # Z  $ F4��
  $ mappingMenuItem��#��Z! # Z" $ Ctrl+Shift+M��  
  $ showBaseMenuItem��#��Z# # Z$ 
  $ showRelatedMenuItem��#��Z% # Z&   
  $ showOtherTabsMenuItem��#��Z' # Z( ���� .R�m� # Z) * �� ��� 
�������$��-30,0,-120,0q�.+��� .+��� $+ otherTabTextBlock��$
��10,5q�
�������
�������$
��Bold"����� *Name+� $��2q�.+�  $, otherTabDesignerCanvas��$	��150��$	��100��- �� � $. 0Q�
�������$	��150��$	��100��/ J� InputBindings/ �� 
0 �� Key$0 Delete��1 �� Command#1 Z �� $
0 Back��#1 Z �� $0 F2��#1 Z �� $0 X��2 �� 	Modifiers$
2 CTRLf�#1 Z �� $0 C��$
2 CTRLf�#1 Z �� $0 V��$
2 CTRLf�#1 Z �� $0 F4��#1 Z  �� $0 M��$2 
CTRL+Shiftf�#1 Z" .��� .+�Q  KICSharpCode.Data.EDMDesigner.Core.UI.UserControls.CSDLType.TypeBaseExpander  -   3  Name$3 entityTypeExpander��Q  KICSharpCode.Data.EDMDesigner.Core.UI.UserControls.CSDLType.TypeBaseExpander4   Click$4 EntityTypeExpander_Click��5   	Collapsed$*5 $EntityTypeExpander_CollapsedOrExpand��6   Expanded$*6 $EntityTypeExpander_CollapsedOrExpand��$��2,2,2,2q�7 9� 
IsExpanded7 . 8 � ContextMenu#8 [ ���� 9 �� 	Converter#9 [ : �� Mode$: OneTime=����� #9 [ ��I  CICSharpCode.Data.EDMDesigner.Core.UI.UserControls.EditableTextBlock  -   ;  Name$#; entityHeaderEditableTextBlock��$��0,5,0,5q�$
��Bold"�<   Text< �� *Name+$: TwoWay=�.���� -   = ��Name$= propertiesListView��$��0,0,0,10q�$��0,1,0,1q�
��� ���
�������> � Cursor$> Arrow������ ? �� Source#? [ @ �� 
GroupStyle@ (  "System.Windows.Controls.GroupStyle  A   HeaderTemplateA �� .R�� -   
�������.+��� $��2q����� *Name+���� .R��� B �� Orientation$B 
Horizontal=�$��	0,-1,0,-2q�.+�� .+��� $��16��$��16��$��-5,0,0,0q�$V��Ppack://application:,,,/ICSharpCode.Data.Core.UI;component/Images/Icons/table.png��$��Uniform=��� $��16��$��16��$��-5,0,0,0q�$Z��Tpack://application:,,,/ICSharpCode.Data.Core.UI;component/Images/Icons/table_key.png��$��Uniform=�y��� C �� Path$C IsKey�#9 [  �� $��16��$��16��$��-5,0,0,0q�$Y��Spack://application:,,,/ICSharpCode.Data.Core.UI;component/Images/Icons/table_go.png��$��Uniform=�y��� $C This.BusinessInstance�#9 [ D �� ConverterParameterS  MICSharpCode.Data.EDMDesigner.Core.EDMObjects.CSDL.Property.NavigationProperty"D    $��2,0,0,0q�< �� *Name+$: TwoWay=�. �� #9 [ $
D 0.45������ #9 [ � -   E �Name$E 
rectangles��y��� F �� RelativeSourceF �� *FindAncestor+G �� AncestorType"G  $C 
IsSelected�#9 [  $: TwoWay=�  H �� MergedDictionariesI �� Source�� H �� $2I ,..\SelectionRectangleResourceDictionary.xaml?�%    .+��� $	��Top=�$
��Left=��� $	��Top=�$��Right=��� $��Bottom=�$
��Left=��� $��Bottom=�$��Right=�
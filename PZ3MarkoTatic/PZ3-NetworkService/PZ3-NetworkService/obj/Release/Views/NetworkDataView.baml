   M S B A M L   `   `   `  ���� M  IPZ3-NetworkService, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:PZ3_NetworkService.ViewsPZ3_NetworkService.Views  K*clr-namespace:PZ3_NetworkService.ViewModelPZ3_NetworkService.ViewModel  C&clr-namespace:PZ3_NetworkService.ModelPZ3_NetworkService.Model  .    (PZ3_NetworkService.Views.NetworkDataView   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     8local&clr-namespace:PZ3_NetworkService.Views     @	viewModel*clr-namespace:PZ3_NetworkService.ViewModel     7data&clr-namespace:PZ3_NetworkService.Model       � DataContext  7   1PZ3_NetworkService.ViewModel.NetworkDataViewModel   J� InputBindings �� 
 �� Key$ 	Backspace�� �� Command �� *
DeletePump+ � 	Resources  �� DataType$   PZ3_NetworkService.Model.Pumpa��%   (��       *, +)�� "  .���� .���  � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto �.+�� $��0��.+���  �� Orientation$ 
Horizontal=�$��Center=�.+��� $ Vertical=�$	��179��$��40��$��0,0,0,1q�.+�	� $
��NAME�� � ToolTip$+ %Search DataGrid table by pumps names.��$��Center=�$��	44,0,64,0q�$��72��	 d� 	IsChecked	 �� *
SrchName+	� $
��TYPE��$+ %Search DataGrid table by pumps types.��$��Center=�$��	44,0,65,0q�$��71��	 �� *
SrchType+�� $ Vertical=�$	��150��.+��� $��Center=�$( "Enter the text you want to search.��$��33��$��
-13,0,10,0q�$	��153������ *SrcClr+
 �� Mode$
 TwoWay=����� *TekstIzSrch+$
 TwoWay=��� $ Vertical=�$	��150��.+��� $��SEARCH��$��33��$g aSearch DataGrid table for name or type values. First choose NAME or TYPE and fill search textbox.��$��0,0,18,0q����� *SearchSvePumpe+�� $ Vertical=�$	��150��.+��� $��EXIT SEARCH��$��33��$5 /Quit search, display all water pumps in system.��$��	-9,0,27,0q����� *SearchStareVr+� $��1��.+�&   System.Windows.Controls.DataGrid  -   $��dataGridPumpe��$% Table with all pumps in system.��$	��650��$	��130��$
��Auto=�"   VerticalScrollBarVisibility$
 Auto=�   AutoGenerateColumns .     
IsReadOnly . ���� *Pumpe+ �� SelectedItem �� *SelektovanaPumpa+   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$	 Id:��   Width5  /System.Windows.Controls.DataGridLengthConverter$ * 1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *Id+  $ Name:��$ *  �� *Name+  $ Type:��$ *  �� *Type+  $ Value:��$ *  �� *Value+� $��2��.+��� $ Vertical=�.+�9� $��
Add new...�� 9� 
IsExpanded . $	��259��
�������.���� $ Vertical=�.+�� $��0��.+��� $��ID--->���� $��	66,0,17,0q�$6 0Add new ID, value must be >0 and must be unique.������ *CurrId+$
 TwoWay=�� $��1��.+��� $��15��
���  ������ *#!CurrentPumpa.ValidationErrors[Id]+� $��2��.+��� $��NAME--->���� $��	66,0,17,0q�$ Add new NAME of pump.������ *CurrentPumpa.Name+$
 TwoWay=�� $��3��.+��� $��15��
���  ������ *%#CurrentPumpa.ValidationErrors[Name]+� $��4��.+��� $��TYPE--->���� $��	66,0,17,0q�$" Choose water pump type name.������  �� Path$ Tipovi� �� *CurrentPumpa.Type+� $��5��.+��� $��15��
���  ������ *%#CurrentPumpa.ValidationErrors[Type]+� $��6��$��30��.+��� $	��ADD��$ ADD new object to system.������ *
AddNewPump+�� $��DELETE��$3 -Deleting selected object from DataGrid table.��$��30��$	��256������ *
DeletePump+
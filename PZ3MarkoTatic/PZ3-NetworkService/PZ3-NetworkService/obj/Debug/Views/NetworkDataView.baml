   M S B A M L   `   `   `  ����M  IPZ3-NetworkService, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:PZ3_NetworkService.ViewsPZ3_NetworkService.Views  5      K*clr-namespace:PZ3_NetworkService.ViewModelPZ3_NetworkService.ViewModel  5      C&clr-namespace:PZ3_NetworkService.ModelPZ3_NetworkService.Model  5      .    (PZ3_NetworkService.Views.NetworkDataView   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      8local&clr-namespace:PZ3_NetworkService.Views     5      @	viewModel*clr-namespace:PZ3_NetworkService.ViewModel     5      7data&clr-namespace:PZ3_NetworkService.Model     5        � DataContext  5      7   1PZ3_NetworkService.ViewModel.NetworkDataViewModel  5   
    J� InputBindings 5      �� 5   
   
 �� Key$ 	Backspace��6    �� Command 6&   �� *
DeletePump+ � 	Resources 5       �� DataType$   PZ3_NetworkService.Model.Pumpa��%-   (��       5      *, +)�� 6
   "  6   5      .��5      �� .��5   
   �  � RowDefinitions 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    .+�5      � $��0��6   .+�5       ��  �� Orientation$ 
Horizontal=�6   $��Center=�66   .+�5!      �� $ Vertical=�6!   $	��179��68   $��40��6D   $��0,0,0,1q�6P   .+�5"      	� $
��NAME��6&    � ToolTip$+ %Search DataGrid table by pumps names.��65   $��Center=�6e   $��	44,0,64,0q�6�   $��72��6�   	 d� 	IsChecked	 6�   �� *
SrchName+6�   	� 5#      $
��TYPE��6&   $+ %Search DataGrid table by pumps types.��65   $��Center=�6e   $��	44,0,65,0q�6�   $��71��6�   	 6�   �� *
SrchType+6�   5$      �� 5%      $ Vertical=�6!   $	��150��68   .+�5&      �� $��Center=�6"   $( "Enter the text you want to search.��6k   $��33��6�   $��
-13,0,10,0q�6�   $	��153��6�   ��6?   �� *SrcClr+
 �� Mode$
 TwoWay=���6�   �� *TekstIzSrch+$
 TwoWay=�6�   5'      �� 5(      $ Vertical=�6!   $	��150��68   .+�5)      �� $��SEARCH��6!   $��33��62   $g aSearch DataGrid table for name or type values. First choose NAME or TYPE and fill search textbox.��6>   $��0,0,18,0q�6�   ��6�   �� *SearchSvePumpe+6�   5*      �� 5+      $ Vertical=�6!   $	��150��68   .+�5,      �� $��EXIT SEARCH��6!   $��33��67   $5 /Quit search, display all water pumps in system.��6C   $��	-9,0,27,0q�6�   ��6}   �� *SearchStareVr+6�   5-      5.      5/      � 50      $��1��6   .+�51      &   System.Windows.Controls.DataGrid  -   5        $��dataGridPumpe��51      $% Table with all pumps in system.��60   $	��650��6Z   $	��130��6f   $
��Auto=�6s   "   VerticalScrollBarVisibility$
 Auto=�6�      AutoGenerateColumns .     
IsReadOnly . ��6�   �� *Pumpe+ �� SelectedItem 6�   �� *SelektovanaPumpa+   Columns 52      0  *System.Windows.Controls.DataGridTextColumn  53      ,  &System.Windows.Controls.DataGridColumn   Header$	 Id:��6-      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6:   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6D   �� *Id+  54      $ Name:��6-   $ * 6<    6F   �� *Name+  55      $ Type:��6-   $ * 6<    6F   �� *Type+  56      $ Value:��6-   $ * 6=    6G   �� *Value+58      59      � 5:      $��2��6   .+�5;      �� $ Vertical=�6   .+�5<      9� $��
Add new...��6    9� 
IsExpanded . $	��259��6E   
�������.��5=      �� $ Vertical=�6%   .+�5>      � $��0��6#   .+�5?   "   �� $��ID--->��6,   �� 5@   "   $��	66,0,17,0q�6*   $6 0Add new ID, value must be >0 and must be unique.��6=   ��6y   �� *CurrId+$
 TwoWay=�5A      � 5C      $��1��6#   .+�5D   "   �� $��15��6,   
���  ����69   �� *#!CurrentPumpa.ValidationErrors[Id]+6l   5E      � 5G      $��2��6#   .+�5H   "   �� $��NAME--->��6,   �� 5I   "   $��	66,0,17,0q�6*   $ Add new NAME of pump.��6=   ��6]   �� *CurrentPumpa.Name+$
 TwoWay=�5J      � 5L      $��3��6#   .+�5M   "   �� $��15��6-   
���  ����69   �� *%#CurrentPumpa.ValidationErrors[Name]+6n   5N      � 5P      $��4��6#   .+�5Q   "   �� $��TYPE--->��6,   �� 5R   "   $��	66,0,17,0q�6+   $" Choose water pump type name.��6>   ��6e   ��  �� Path$ Tipovi� 6�   �� *CurrentPumpa.Type+5S      � 5V      $��5��6#   .+�5W   "   �� $��15��6-   
���  ����69   �� *%#CurrentPumpa.ValidationErrors[Type]+6n   5X      � 5[      $��6��6#   $��30��60   .+�5\   "   �� $	��ADD��6)   $ ADD new object to system.��67   ��6\   �� *
AddNewPump+5]      5^      5`      �� 5a      $��DELETE��6   $3 -Deleting selected object from DataGrid table.��6.   $��30��6f   $	��256��6�   ��6r   �� *
DeletePump+6�   5b      5c      5e      5f      5g      
   M S B A M L   `   `   `  ���� M  IPZ3-NetworkService, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:PZ3_NetworkServicePZ3_NetworkService  K*clr-namespace:PZ3_NetworkService.ViewModelPZ3_NetworkService.ViewModel  C&clr-namespace:PZ3_NetworkService.ViewsPZ3_NetworkService.Views  #    PZ3_NetworkService.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     2local clr-namespace:PZ3_NetworkService     @	viewModel*clr-namespace:PZ3_NetworkService.ViewModel     8views&clr-namespace:PZ3_NetworkService.Views       � Title$  
MainWindow��$	��650��$	��830�� � DataContext 0   *PZ3_NetworkService.ViewModel.MainViewModel   J� InputBindings �� 
 �� Key$ F1�� �� CommandParameter$
 Home�� �� Command �� *
Navigacija+�� $ F2��$ Network View�� �� *
Navigacija+�� $ F3��$ Network Data�� �� *
Navigacija+�� $ F4��$ 
Data Chart�� �� *
Navigacija+�� $ F5��$ Report�� �� *
Navigacija+�� $ F6��$
 Help�� �� *
Navigacija+ � 	Resources  �� DataType0   *PZ3_NetworkService.ViewModel.HomeViewModel'   !PZ3_NetworkService.Views.HomeView7   1PZ3_NetworkService.ViewModel.NetworkDataViewModel.   (PZ3_NetworkService.Views.NetworkDataView2   ,PZ3_NetworkService.ViewModel.ReportViewModel)   #PZ3_NetworkService.Views.ReportView0   *PZ3_NetworkService.ViewModel.HelpViewModel'	   !PZ3_NetworkService.Views.HelpView7
   1PZ3_NetworkService.ViewModel.NetworkViewViewModel.   (PZ3_NetworkService.Views.NetworkViewView5   /PZ3_NetworkService.ViewModel.DataChartViewModel,   &PZ3_NetworkService.Views.DataChartView��%�   (��       *, +)(��      *, +)(�� $     *, +)(�� 6     *, +)(�� H     *,
 +)(�� Z     *, +)�� "  .R�  �� "  .R�  �� "  .R�  �� "  .R�	  �� " 
 .R�  �� "  .R�  .���  � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $`��ZC:\Users\ASUS\Desktop\PZ3MarkoTatic\PZ3-NetworkService\PZ3-NetworkService\konacniBaner.jpg��$��0��]� $��1��$��5q�$��Center=�$��Center=�.+�o� $	��Top=�$��12(����� 	 �� EndPoint$	 0.5,1&�
 �� 
StartPoint$
 0.5,0&�.���  � Color$ 	#FFBCF5F2�� � Offset$ 0Q�� $ 	#FF20B0A7��$ 1Q�.@�m� $��80�� m� CommandParameter$
 Home�� � ToolTip$ 	Home page�� m� Command �� *
Navigacija+����  �� Orientation$ 
Horizontal=�.+��� $��29��$��26��$[��UC:\Users\ASUS\Desktop\PZ3MarkoTatic\PZ3-NetworkService\PZ3-NetworkService\homicon.png���� $
��Home��$��Center=�$��Center=�m� $	��120��$ Network View��$# Overview of water consumption�� �� *
Navigacija+���� $ 
Horizontal=�.+��� $��31��$��30��$Z��TC:\Users\ASUS\Desktop\PZ3MarkoTatic\PZ3-NetworkService\PZ3-NetworkService\nvIcon.png���� $��Network View��$��Center=�$��Center=�m� $	��120��$ Network Data��$# Base with all parts of system�� �� *
Navigacija+���� $ 
Horizontal=�.+��� $��29��$��26��$Z��TC:\Users\ASUS\Desktop\PZ3MarkoTatic\PZ3-NetworkService\PZ3-NetworkService\ndIcon.png���� $��Network Data��$��Center=�$��Center=�m� $	��100��$ 
Data Chart��$+ %Graphical presentation of consumption�� �� *
Navigacija+���� $ 
Horizontal=�.+��� $��31��$��30��$Z��TC:\Users\ASUS\Desktop\PZ3MarkoTatic\PZ3-NetworkService\PZ3-NetworkService\dcIcon.png���� $��
Data Chart��$��Center=�$��Center=�m� $ Report��$��80��$  Daily status change report�� �� *
Navigacija+���� $ 
Horizontal=�.+��� $��29��$��26��$[��UC:\Users\ASUS\Desktop\PZ3MarkoTatic\PZ3-NetworkService\PZ3-NetworkService\repIcon.png���� $��Report��$��Center=�$��Center=�m� $
 Help��$��80��$ Help and options�� �� *
Navigacija+���� $ 
Horizontal=�.+��� $��32��$��29��$\��VC:\Users\ASUS\Desktop\PZ3MarkoTatic\PZ3-NetworkService\PZ3-NetworkService\helpIcon.png���� $
��Help��$��Center=�$��Center=�� $��2��.+��� ���� *TrenutniViewModel+
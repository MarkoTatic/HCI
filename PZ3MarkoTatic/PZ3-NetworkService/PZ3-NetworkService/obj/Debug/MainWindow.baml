   M S B A M L   `   `   `  ����M  IPZ3-NetworkService, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:PZ3_NetworkServicePZ3_NetworkService  5   	   K*clr-namespace:PZ3_NetworkService.ViewModelPZ3_NetworkService.ViewModel  5   	   C&clr-namespace:PZ3_NetworkService.ViewsPZ3_NetworkService.Views  5   	   #    PZ3_NetworkService.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:PZ3_NetworkService     5   	   @	viewModel*clr-namespace:PZ3_NetworkService.ViewModel     5   	   8views&clr-namespace:PZ3_NetworkService.Views     5   	     � Title$  
MainWindow��5
   	   $	��650��6   $	��830��6)    � DataContext 5      0   *PZ3_NetworkService.ViewModel.MainViewModel  5   
    J� InputBindings 5      �� 5   
   
 �� Key$ F1��6    �� CommandParameter$
 Home��6=    �� Command 6   �� *
Navigacija+6=   �� 5   
   $ F2��6   $ Network View��6=    6   �� *
Navigacija+6=   �� 5   
   $ F3��6   $ Network Data��6=    6   �� *
Navigacija+6=   �� 5   
   $ F4��6   $ 
Data Chart��6=    6   �� *
Navigacija+6=   �� 5   
   $ F5��6   $ Report��6=    6   �� *
Navigacija+6=   �� 5   
   $ F6��6   $
 Help��6=    6   �� *
Navigacija+6=    � 	Resources 5       �� DataType0   *PZ3_NetworkService.ViewModel.HomeViewModel'   !PZ3_NetworkService.Views.HomeView7   1PZ3_NetworkService.ViewModel.NetworkDataViewModel.   (PZ3_NetworkService.Views.NetworkDataView2   ,PZ3_NetworkService.ViewModel.ReportViewModel)   #PZ3_NetworkService.Views.ReportView0   *PZ3_NetworkService.ViewModel.HelpViewModel'	   !PZ3_NetworkService.Views.HelpView7
   1PZ3_NetworkService.ViewModel.NetworkViewViewModel.   (PZ3_NetworkService.Views.NetworkViewView5   /PZ3_NetworkService.ViewModel.DataChartViewModel,   &PZ3_NetworkService.Views.DataChartView��%�  (��       5      *, +)(�� 2     5      *, +)(�� d     5       *, +)(�� �     5#      *, +)(�� �     5&      *,
 +)(�� �     5)      *, +)�� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      �� 5    
   "  6   .R�5!        5"      �� 5#   
   "  6   .R�5$      	  5%      �� 5&   
   " 
 6   .R�5'        5(      �� 5)   
   "  6   .R�5*        5+      5,      .��5.      �  � RowDefinitions 5/   
   �� 50      $
��Auto �6   �� 51      $
��Auto �6   �� 52      $
��Auto �6   .+�55   
   �� $`��ZC:\Users\ASUS\Desktop\PZ3MarkoTatic\PZ3-NetworkService\PZ3-NetworkService\konacniBaner.jpg��6   $��0��6t   ]� 56   
   $��1��6   $��5q�6!   $��Center=�6,   $��Center=�6I   .+�57      o� $	��Top=�6   $��12(�6(   ��58      �� 59      	 �� EndPoint$	 0.5,1&�6*   
 �� 
StartPoint$
 0.5,0&�6;   .��5:      �  � Color$ 	#FFBCF5F2��6'    � Offset$ 0Q�69   � 5;      $ 	#FF20B0A7��6'   $ 1Q�69   5<      .@�5>      m� $��80��6    m� CommandParameter$
 Home��6E    � ToolTip$ 	Home page��6]    m� Command 6&   �� *
Navigacija+��5?      �� 5@       �� Orientation$ 
Horizontal=�6%   .+�5A      �� $��29��6$   $��26��6/   $[��UC:\Users\ASUS\Desktop\PZ3MarkoTatic\PZ3-NetworkService\PZ3-NetworkService\homicon.png��6;   �� 5B      $
��Home��6(   $��Center=�64   $��Center=�6Q   5C      5E      m� 5F      $	��120��6   $ Network View��6F   $# Overview of water consumption��6f    6'   �� *
Navigacija+��5G      �� 5H      $ 
Horizontal=�6%   .+�5I      �� $��31��6$   $��30��6/   $Z��TC:\Users\ASUS\Desktop\PZ3MarkoTatic\PZ3-NetworkService\PZ3-NetworkService\nvIcon.png��6;   �� 5J      $��Network View��6(   $��Center=�6<   $��Center=�6Y   5K      5M      m� 5N      $	��120��6   $ Network Data��6F   $# Base with all parts of system��6f    6'   �� *
Navigacija+��5O      �� 5P      $ 
Horizontal=�6%   .+�5Q      �� $��29��6$   $��26��6/   $Z��TC:\Users\ASUS\Desktop\PZ3MarkoTatic\PZ3-NetworkService\PZ3-NetworkService\ndIcon.png��6;   �� 5R      $��Network Data��6(   $��Center=�6<   $��Center=�6Y   5S      5U      m� 5V      $	��100��6   $ 
Data Chart��6F   $+ %Graphical presentation of consumption��6d    6'   �� *
Navigacija+��5W      �� 5X      $ 
Horizontal=�6%   .+�5Y      �� $��31��6$   $��30��6/   $Z��TC:\Users\ASUS\Desktop\PZ3MarkoTatic\PZ3-NetworkService\PZ3-NetworkService\dcIcon.png��6;   �� 5Z      $��
Data Chart��6(   $��Center=�6:   $��Center=�6W   5[      5]      m� 5^      $ Report��6;   $��80��6U   $  Daily status change report��6`    6   �� *
Navigacija+��5_      �� 5`      $ 
Horizontal=�6%   .+�5a      �� $��29��6$   $��26��6/   $[��UC:\Users\ASUS\Desktop\PZ3MarkoTatic\PZ3-NetworkService\PZ3-NetworkService\repIcon.png��6;   �� 5b      $��Report��6(   $��Center=�66   $��Center=�6S   5c      5e      m� 5f      $
 Help��6:   $��80��6R   $ Help and options��6]    6   �� *
Navigacija+��5g      �� 5h      $ 
Horizontal=�6%   .+�5i      �� $��32��6$   $��29��6/   $\��VC:\Users\ASUS\Desktop\PZ3MarkoTatic\PZ3-NetworkService\PZ3-NetworkService\helpIcon.png��6;   �� 5j      $
��Help��6(   $��Center=�64   $��Center=�6Q   5k      5m      5n      5o      � 5q   
   $��2��6   .+�5r      �� ��6   �� *TrenutniViewModel+5s      5u      5v      
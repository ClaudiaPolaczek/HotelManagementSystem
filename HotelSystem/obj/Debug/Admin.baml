   M S B A M L   `   `   `  ����F  BHotelSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:HotelSystemHotelSystem  5   	       HotelSystem.Admin   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962af bMaterialDesignThemes.MahApps, Version=0.1.5.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5   	   'localclr-namespace:HotelSystem   5   	   -   5          � Title$  Admin��5	   	   $	��650��6   $
��1000��6$    � AllowsTransparency .  � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�6    � WindowStartupLocation$ CenterScreen=�62   
���   �$��Light"�5      $��	helvetica)�5   	   $��18(�6    .��5      � ���	#FFF3F2F2 � ColumnDefinitions 5   
   �� 5      $	��200 �6   �� 5      $	��800 �6    � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $	��600 �6   .+�5   
   � -   5         �Name$ GridMain��5      $��2��6!   $��2��6.   $��Right=�6>   $��Bottom=�6Z   $	��600��6u   $	��800��6�   .+�5       � -   5          �Name$
 Main��5      	  � NavigationUIVisibility$	 Hidden=�6"   5      � 5   
   $��50��6   $��0��6   $��0��6(   
�����_�68   � 5   
   $��50��6   $��0��6   $��1��6(   $	��Top=�68   
�����_�
 J� Effect
 5      3  -System.Windows.Media.Effects.DropShadowEffect  5          
BlurRadius$ 1Q�6#      ShadowDepth$ 1Q�62      Color$ 	#FFACACAC��6B   .+�5"      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   $��50��6N   .+�5#      �� $��Admin��6   $��Center=�6)   $��18(�6D   '  !MaterialDesignThemes.Wpf.PopupBox  5$      $��PopupBox��6*   $��Right=�6=   $��Center=�5%   &      	StaysOpen .  $��10q�6S      PlacementMode$ BottomAndAlignRightEdges=�5&   &      PopupContent. 5'      �� $	��100��6!   $��5q�6-   .+�5(      �� -   5         ��Name$ ButtonPopUpLogout��5(   !   $��15(�6<   $��Logout��6J   6[   5)      5*      5+      �� 5,      $��Center=�6   $��Center=�65   $��20(�6P   Hotel Management System6w   5-      � 5/   
   -   5        $ GridMenu��5/      $��1��6!   $��0��6.   $	��200��6>   $
��Left=�6J   
�������
 50        51      $ 2Q�6#   $ 1Q�62   $ 	#FFAEAEAE��6B   .+�54      �� .+�55      � $	��300��6   
�������.+�56      �� -   5         ��Name$ ListViewMenu��56      $��18(�65   
���   �$��0q�6V   $��Disabled=�6j   .@�57      �� -   5         ��Name$ ItemRoom��57   '   $��60��69   .��58      �� $ 
Horizontal=�6)   .+�59   "   '  !MaterialDesignThemes.Wpf.PackIcon     Kind$	 Bed=�6:   $��25��6E   $��25��6Q   $��10q�6\   �� 5:   "   $��Rooms��6,   $��Center=�69   $��10 10q�6T   5;      5<      �� 5=      -   5        $ ItemNewRoom��5=   '   $��60��6<   .��5>      �� $ 
Horizontal=�6)   .+�5?   "     $	 Pen=�6:   $��25��6E   $��25��6Q   $��10q�6\   �� 5@   "   $��New room��6,   $��Center=�6<   $��10 10q�6W   5A      5B      �� 5C      -	   5        $ ItemEmployee��5C   '   $��60��6=   .��5D      �� $ 
Horizontal=�6)   .+�5E   "     $
 Face=�6:   $��25��6F   $��25��6R   $��10q�6]   �� 5F   "   $��	Employees��6,   $��Center=�6=   $��10 10q�6X   5G      5H      5I      5J      5K      5L      5M      5N      
   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5      F BHotelSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:HotelSystemHotelSystem 5          HotelSystem.NewReservation   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6sys&clr-namespace:System;assembly=mscorlib     5      +localclr-namespace:HotelSystem     5      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962af bMaterialDesignThemes.MahApps, Version=0.1.5.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5        N� 
FontFamily$  	Hervetica)�5
   0    N� FontSize$ 16(�6G    N� 
Foreground
 �   � N� Title$ NewReservation��5      .��5      �  � ColumnDefinitions 5   
   �� 5      $	��400 �6   �� 5      $	��400 �6    � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $��30 �6   �� 5      $��70 �6   �� 5      $��30 �6   �� 5      $	��190 �6   �� 5      $��30 �6   �� 5      $	��200 �6   .+�5   
   �� $��3��6   .+�5      �� $��
20 16 12 4q�6   $��16(�6,   New Reservation Information6W   �� 5          MaterialDesignLightSeparator#��[  6   
�������$��	16 0 12 0q�6e   5      �� 5!   
   $��3��6   $��1��6)   .+�5"      �� $��	20 8 12 4q�6   $��16(�6+   Reservation6F   �� 5#      #��[  6   
�������$��	16 0 12 0q�6e   5$      �� 5&   
   -   5        $��Reservation_1��5&      
������ $��	10 5 10 0q�6C   $��2��6V   $��3��6c    �� Orientation$ 
Horizontal=�6w   $
��Left=�5'      .+�5(      �� -   5        $��NumberOdPeople��5(   I   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Number of people��6   $
��Left=�6_   $	��150��6z   $��50��5)       �� 
IsEditable .  $��	15 0 10 5q�66    & "MaterialDesignFloatingHintComboBox#��[ 6I   .  (MaterialDesignThemes.Wpf.TextFieldAssist	   UnderlineBrush
	 ���_�
   
Foreground

 ���_�.@�5,      ��  �� 
IsSelected . .��61   15.      �� 5/      .��6   251      �� 52      .��6   354      �� 55      .��6   457      58      (  "System.Windows.Controls.DatePicker  59      -   5        $��ArrivalDatePicker��59   W   $ Arrival date��6   $��1��6G    ( $MaterialDesignFloatingHintDatePicker#��[ 6p    �� Today   DisplayDateStart# Z 5:      $��	15 0 10 5q�5;      $	��200��6,   $��50��68    � Cursor$ Arrow��6D      IsTodayHighlighted . 

 ���_�
������ 
	 ���_�-  'MaterialDesignThemes.Wpf.CalendarAssist   IsHeaderVisible .  $��10q�5?      5@        5A      -   5        $��DepartureDatePicker��5A   Y   $ Departure date��6   $��2��6I   #��[ 6t    .  $��Stretch=�5B   O   $��	15 0 10 5q�6k   $	��200��6~   $��50��6�   $ Arrow��6�   

 ���_�
������ 
	 ���_�5D      �� 5E      -   5        $
��Next��5E      $��Center=�6$   $��	15 0 10 5q�6A   $��Center=�6T   6o   5F      �� 5H   
   -   5        $��
ErrorRooms��5H      
���  ��$y�Hidden=�67   $	��350��6K   $��0 10 0 0q�6W   $��3��6i   $��3��6v   $��25��6�   �� 5J   
   -   5        $��Title_2��5J      $��3��6$   $��3��68   .+�5K      �� $��	20 8 12 4q�6   $��16(�6+   Room selection6I   �� 5L      #��[  6   
�������$��	16 0 12 0q�6e   5M      &   System.Windows.Controls.DataGrid  5O   
   -   5          Name$ dgRooms��5O   F   $��0 8 20 5q�6   $��3��6%   $��4��69   $	��700��6W      AutoGenerateColumns .     CanUserAddRows .    
IsReadOnly . "   VerticalScrollBarVisibility$
 Auto=�5P         CanUserSortColumns .    CanUserResizeColumns .    CanUserDeleteRows .     Columns 5R      0  *System.Windows.Controls.DataGridTextColumn  5S      ,  &System.Windows.Controls.DataGridColumn   Header$ Number��6%   -	   5        
NumberText��   Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 5S   d   1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 6I   �� *Number+6d     5T      $ Capacity��6%   -
   5        CapacityText��$	 100 5T   j    6M   �� *
Capacity+6j     5U      $ Floor��6%   -   5        	FloorText��$	 100 5U   a    6G   �� *Floor+6a     5V      $ Price��6%   -   5        	PriceText��$	 100 5V   a    6G   �� *Price+6a   4
  .System.Windows.Controls.DataGridTemplateColumn
  5W      $ Suite��6)   $	 100 68    
  CellTemplate 5X      �� 5Y      .R�5Z      �� $ Vertical=�6)   .+�5[   "   ��  ��Name$ SuiteBox��6,    J� IsHitTestVisible .  |�.   ( $MaterialDesignUserForegroundCheckBox#��[ 6i     d� 	IsChecked  5\   0   �� *Suite+! �� Mode$! TwoWay=�5]      5^      5`      
  5a       5b      �� 5c      .R�5d      �� $ Vertical=�6)   .+�5e   "   �� -   5        $��30��5e   )   $��Select��6H   5f      5g      5i      5k      �� 5m   
   -   5        $��Title_3��5m      $��3��6$   $��5��68   .+�5n      �� $��	20 8 12 4q�6   $��16(�6+   Client information6M   �� 5o      #��[  6   
�������$��	16 0 12 0q�6e   5p      �� 5r   
   -   5        $��Reservation_3��5r      
������ $��	10 5 10 0q�6C   $��0��6V   $��6��6f   $ Vertical=�5s      $
��Left=�6,   .+�5t      �� -   5        $��NameTextBox��5t   <   $
 Name��6   $	��350��6O   $��50��6[   $��	10 5 10 0q�6g    % !MaterialDesignFloatingHintTextBox#��[ 5u      
	 ���_�

 ���_�5w      �� 5x      -   5        $��SurnameTextBox��5x   ?   $ Surname��6   $	��350��6U   $��50��6a   $��	10 5 10 0q�6m   #��[ 5y      
	 ���_�

 ���_�5{      �� 5|      -   5        $��EmailTextBox��5|   =   $ Email��6   $	��350��6Q   $��50��6]   $��	10 5 10 0q�6i   #��[ 5}      
	 ���_�

 ���_�5      5�      �� 5�   
   -   5        $��Reservation_4��5�      
������ $��	10 5 10 0q�6C   $��1��6W   $��6��6g   $ Vertical=�6t   $
��Left=�5�      .+�5�      �� -   5        $��PhoneTextBox��5�   =   $ Phone��6   $	��350��6Q   $��50��6]   $��	10 5 10 0q�6i   #��[ 5�      
	 ���_�

 ���_�5�        5�      -   5        $��BirthdayBox��5�   H   $ Birthday date��6   "   DisplayDateEnd#" Z 6[   #��[ 5�      $��Stretch=�5�      $��	10 5 10 0q�65   $	��350��6H   $��50��6T   $ Arrow��6`   

 ���_�
������ 
�����_�
	 ���_�5�      �� 5�      -   5        $��Error��5�      
���  ��$y�Hidden=�66   $	��350��6J   $��0 10 0 0q�6V   $��25��6h   �� 5�      -   5        $
��Save��5�      $��Right=�6$   $��	10 5 10 0q�6@   $��Center=�6S   6n   5�      5�      5�      
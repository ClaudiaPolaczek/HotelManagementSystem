   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5      F BHotelSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:HotelSystemHotelSystem 5      !   HotelSystem.EditReservation   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6sys&clr-namespace:System;assembly=mscorlib     5      +localclr-namespace:HotelSystem     5      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962af bMaterialDesignThemes.MahApps, Version=0.1.5.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5   	     N� 
FontFamily$  	Hervetica)�5
   2    N� FontSize$ 16(�6I    N� 
Foreground
 �   � N� Title$ EditReservation��5      .��5      �  � ColumnDefinitions 5   
   �� 5      $	��400 �6   �� 5      $	��400 �6    � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $��50 �6   �� 5      $	��100 �6   �� 5      $��50 �6   �� 5      $	��270 �6   �� 5      $��80 �6   .+�5   
   �� $��2��6   .+�5      �� $��
20 16 12 4q�6   $��16(�6,   Edit reservation6L   �� 5          MaterialDesignLightSeparator#��[  6   
�������$��	16 0 12 0q�6e   5      �� 5    
   -   5        $��Title_1��5    Q   $��2��6   $��1��6)   $��Center=�66   .+�5!      �� $��	20 8 12 4q�6   $��16(�6+   Reservation6F   �� 5"      #��[  6   
�������$��	16 0 12 0q�6e   5#      �� 5%   
   -   5        $��Reservation_1��5%      
������ $��	10 5 10 0q�6C   $��2��6V   $��3��6c    �� Orientation$ 
Horizontal=�6w   $
��Left=�5&      .+�5'      �� -   5        $��NumberOfPeople��5'   I   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Number of people��6   $
��Left=�6_   $	��150��6z   $��50��6�    �� 
IsEditable . $��	15 0 10 5q�5(   )    & "MaterialDesignFloatingHintComboBox#��[ 6<   .  (MaterialDesignThemes.Wpf.TextFieldAssist	   UnderlineBrush
	 ���_�
   
Foreground

 ���_�.@�5+      ��  �� 
IsSelected . .��61   15-      �� 5.      .��6   250      �� 51      .��6   353      �� 54      .��6   456      57      (  "System.Windows.Controls.DatePicker  58      -   5        $��ArrivalDatePicker��58   W   $ Arrival date��6   $��1��6G    �� Today   DisplayDateStart# Z 59      $��	15 0 10 5q�5:      $	��200��6,   $��50��68    � Cursor$ Arrow��6D   

 ���_�
������ 
	 ���_�-  'MaterialDesignThemes.Wpf.CalendarAssist   IsHeaderVisible .  5=        5>      -   5        $��DepartureDatePicker��5>   Y   $ Departure date��6   $��2��6I   $��Stretch=�6t   $��	15 0 10 5q�5?      $	��200��6,   $��50��68   $ Arrow��6D   

 ���_�
������ 
	 ���_� .  5B      �� 5C      -   5        $
��Next��5C      $��	15 0 10 5q�6$   $��Center=�67   6R   5D      �� 5F   
   -   5        $��Title_2��5F      $��3��6$   $��3��68   $��Center=�6E   .+�5G      �� $��	20 8 12 4q�6   $��16(�6+   Room selection6I   �� 5H      #��[  6   
�������$��	16 0 12 0q�6e   5I      �� 5K   
   -   5        $��Reservation_2��5K      $��	20 8 12 4q�6*   $��3��6=   $��4��6Q   .+�5L      &   System.Windows.Controls.DataGrid  -	   5          Name$ dgRooms��5L      $	��700��6(      AutoGenerateColumns .  $��8q�6P      CanUserAddRows .     
IsReadOnly .    CanUserSortColumns .    CanUserResizeColumns .    CanUserDeleteRows .     Columns 5N      0  *System.Windows.Controls.DataGridTextColumn  5O      ,  &System.Windows.Controls.DataGridColumn   Header$ Number��6)   -
   5        
NumberText��   Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 5O   h   1	  +System.Windows.Controls.DataGridBoundColumn 	  Binding 6M   �� *Number+6h     5P      $ Capacity��6)   -   5        CapacityText��$	 100 5P   n    6Q   �� *
Capacity+6n     5Q      $ Floor��6)   -   5        	FloorText��$	 100 5Q   e    6K   �� *Floor+6e     5R      $ Price��6)   -   5        	PriceText��$	 100 5R   e    6K   �� *Price+6e   4
  .System.Windows.Controls.DataGridTemplateColumn
  5S      $ Suite��6-   $	 100 6<    
  CellTemplate 5T      �� 5U      .R�5V   "   �� $ Vertical=�6-   .+�5W   &   ��  ��Name$ SuiteBox��60    J� IsHitTestVisible .  |�.   d� 	IsChecked 6m   �� *Suite+ �� Mode$ TwoWay=�5X   #   5Y      5[      
  5\       5]      �� 5^      .R�5_   "   �� $ Vertical=�6-   .+�5`   &   �� -   5        $��30��5`   -   $��Select��6L   5a   #   5b      5d      5f      �� 5g      -   5        $��
SaveButton��5g   $   $
��Save��6   $y�Hidden=�66   $��80��6J   $��30��6U   
�����_�
�����_�$��Right=�5h      $��
10 50 20 0q�62   $��Center=�6F   6a   5i      �� 5k   
   $��16 10 15 15q�6   $��1��6*   $��5��6:   $��Bottom=�6G   $��Right=�6b   .+�5l      '  !MaterialDesignThemes.Wpf.PopupBox   3 /MaterialDesignMultiFloatingActionAccentPopupBox#���  6&   $��50��6p   $��50��6{   
�����_�
�����_�    ToggleCheckedContent  5n      '  !MaterialDesignThemes.Wpf.PackIcon  5o      !   Kind$! Pencil=�6.   
�������$��Center=�6O   $��Center=�6j   "   PopupContent." 5q      �� .+�5r      �� -   5        # � ToolTip$!# Client personal information��5r      
�����_�
�����_�$��50��5s      $��50��6(   .��5t        $! Human=�62   $��20��6?   $��20��6K   $��Center=�6V   
�������$��Center=�5u   R   5v      �� 5w      -   5        $# Reservation infromation��5w      
�����_�
�����_�$��50��5x      $��50��6(   .��5y        $
! Room=�62   
�������$��20��5z   9   $��20��6E   $��Center=�5{   9   $��Center=�5|   9   5}      5~      5      5�      �� 5�   
   -   5        $��Title_3��5�      $��3��6$   $��1��68   $��Center=�6E   .+�5�      �� $��	20 8 12 4q�6   $��16(�6+   Client information6M   �� 5�      #��[  6   
�������$��	16 0 12 0q�6e   5�      �� 5�   
   -   5        $��Reservation_3��5�      
������ $��	10 5 10 0q�6C   $��0��6V   $��2��6f   $��3��6s   $ Vertical=�5�      $
��Left=�6,   .+�5�      �� -   5        $��NameTextBox��5�   <   $
 Name��6   $	��350��6O   $��50��6[   $��	10 5 10 0q�6g    % !MaterialDesignFloatingHintTextBox#��[ 5�      
	 ���_�

 ���_�5�      �� 5�      -   5        $��SurnameTextBox��5�   ?   $ Surname��6   $	��350��6U   $��50��6a   $��	10 5 10 0q�6m   #��[ 5�      
	 ���_�

 ���_�5�      �� 5�      -   5        $��EmailTextBox��5�   =   $ Email��6   {�.  $	��350��6c   $��50��6o   $��	10 5 10 0q�6{   #��[ 5�      
	 ���_�

 ���_�5�      �� 5�      -   5        $��PhoneTextBox��5�   =   $ Phone��6   $	��350��6Q   $��50��6]   $��	10 5 10 0q�6i   #��[ 5�      
	 ���_�

 ���_�5�        5�      -   5        $��BirthdayBox��5�   H   $ Birthday date��6   $   DisplayDateEnd#$ Z 6[   $��Stretch=�5�      $��	10 5 10 0q�65   $	��350��6H   $��50��6T   $ Arrow��6`   

 ���_�
������ 
	 ���_�5�      �� 5�      -   5        $��Error��5�   P   $��0��6   $��5��6(   $��Center=�65   
���  ��$y�Hidden=�5�      $	��350��6(   $��0 10 0 0q�64   $��40��6F   �� 5�      -   5        $
��Save��5�      $��
10 15 10 0q�5�      $��Center=�6)   6D   5�      5�      5�      
   M S B A M L   `   `   `  ����F  BHotelSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:HotelSystemHotelSystem  5          HotelSystem.Reservations   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      +localclr-namespace:HotelSystem     5      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962af bMaterialDesignThemes.MahApps, Version=0.1.5.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5        N� 
FontFamily$  	Hervetica)�5	   0    N� FontSize$ 16(�6G    N� 
Foreground
 �   � N� Title$ Reservations��5
      .��5      �  � ColumnDefinitions 5   
   �� 5      $	��150 �6   �� 5      $	��150 �6   �� 5      $	��100 �6   �� 5      $	��150 �6   �� 5      $	��150 �6   �� 5      $	��100 �6    � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $	��470 �6   �� 5      $��80 �6   .+�5   
   �� $��0��6   $��14(�6$   $��Right=�62   $��Center=�6N   '  !MaterialDesignThemes.Wpf.PackIcon  5         Kind$ Search=�6&   $��0 0 10 0q�64   $��Right=�6F   $��Center=�5   &    Room number:5       �� 5!   
   -   5        $��SearchTextBox��5!   Z   $��8 0 8 0q�6   $��1��6#   $	��300��63   $��Center=�6?   .  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush
 ���_�)  #MaterialDesignThemes.Wpf.HintAssist   
Foreground
 ���_�5#      �� 5$   
   -   5        $��2��5$      
�����_�
�����_�$��Center=�6P   $
��Left=�5%      $��Search��6;   $��60��6L   �� 5&   
   $��3��6   $��14(�6$   $��Right=�62   $��Center=�6N     5'      $ Search=�6&   $��0 0 10 0q�64   $��Right=�6F   $��Center=�5(   &    Client surname:5*      �� 5+   
   -   5        $��SearchClientTextBox��5+   Z   $��8 0 8 0q�6   $��4��6#   $	��300��63   $��Center=�6?   
 ���_�
 ���_�5-      �� 5.   
   -   5        $��5��5.      
�����_�
�����_�$��Center=�6P   $
��Left=�5/      $��Search��6B   $��60��6S   &   System.Windows.Controls.DataGrid  51   
   -   5        	  Name$	 dgReservations��51   4   $��1��6   $��6��6    $��10q�6L   
   AutoGenerateColumns
 .  $��8q�6u      
IsReadOnly .    CanUserAddRows .  "   VerticalScrollBarVisibility$
 Auto=�52   .      CanUserSortColumns .    CanUserResizeColumns .    CanUserDeleteRows .     Columns 53      0  *System.Windows.Controls.DataGridTextColumn  54      ,  &System.Windows.Controls.DataGridColumn   Header$ Room No��6%   -   5        
NumberText��   Width5  /System.Windows.Controls.DataGridLengthConverter$ 90 54   j   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6J   �� *Room.Number+6j     55      $ Client��6%   -   5        ClientNameText��$ 80 55   m    6M   �� *Client.Name+6m     56      $  ��6%   -   5        ClientSurnameText��$ 90 56   m    6J   �� *Client.Surname+6m     57      $ Arrival��6%   -	   5        ArrivalText��$	 110 57   �    6K   �� *ArrivalDate+ �� StringFormat$ 
dd-MM-yyyy��6�     58      $ 	Departure��6%   -
   5        DepartureText��$	 110 58   �    6O   �� *DepartureDate+$ 
dd-MM-yyyy��6�     59      $ Price��6%   -   5        	PriceText��$ 90 59   a    6G   �� *Price+6a   4	  .System.Windows.Controls.DataGridTemplateColumn	  5;      $	 190 6)    	  CellTemplate 5<      �� 5=      .R�5>      ��  �� Orientation$ 
Horizontal=�6)   $	��145��6B   $
��Left=�6N   .+�5?   "   �� -   5        $��14(�5?   )   $��60��67   $
��Edit��6P   �� 5@   "   -   5        $��14(�5@   )   $��60��67   $��15 0 0 0q�6C   $��Delete��6d   5A      5B      5D         RowDetailsTemplate 5G      �� 5H      .R�5I      �� $ 
Horizontal=�6!   .+�5J      �� $ Vertical=�6%   $��10 10 10 10q�6<   .+�5K      �� $��Client��6(   $��5q�66   $
��Bold"�6A   �� 5L      $��Email��6(   $��5q�65   �� 5M      $��Phone number��6(   $��5q�6<   �� 5N      $��Birthday��6(   $��5q�68   5O      �� 5P      $ Vertical=�6%   $��10 10 10 10q�6<   .+�5Q      �� $�� ��6(   $��5q�60   �� 5R      $��5q�6F   ��6(   �� *Client.Email+6F   �� 5S      $��5q�6L   ��6(   �� *Client.PhoneNumber+6L   �� 5T      $��5q�6b   ��6(   �� *Client.Birthday+$ 
dd-MM-yyyy��6b   5U      �� 5V      $ Vertical=�6%   $��100 10 10 10q�6<   .+�5W      �� $��Reservation��6(   $��5q�6;   $
��Bold"�6F   �� 5X       ��Name$ 
CheckInBox��6'   $��Check in��6;    J� IsHitTestVisible .  |�.  $��10 5 0 0q�5Y   V    (  $MaterialDesignUserForegroundCheckBox#��[  6h    d� 	IsChecked 5X   O   �� *	CheckIn+ �� Mode$ TwoWay=�5Y   h   �� 5Z      $ CheckOutBox��6'   $��	Check out��6<    .  |�.  $��	10 20 0 0q�5[   V   #��[  6i    5Z   P   �� *
CheckOut+$ TwoWay=�5[   i   5\      �� 5]      $ Vertical=�6%   $��100 10 10 10q�6<   .+�5^      �� -   5        $��14(�5^   %   $	��100��63   $��Check In��6?   $��	10 20 0 0q�6R   6e   �� 5_      -   5        $��14(�5_   %   $	��100��63   $��	Check Out��6?   $��	10 15 0 0q�6S   6f   5`      5a      5b      5d      �� 5f   
   -   5        $��ErrorBox��5f   k   $��2��6   $��4��6!   $��Bottom=�65   $
��Left=�6P   
���  ��$y�Hidden=�5g   %   $	��350��69   $��
10 10 0 10q�6E   $��30��6Y   �� 5i   
   $��16 10 15 15q�6   $��6��6*   $��2��6:   $��Bottom=�6G   $��Right=�6b   .+�5j      '
  !MaterialDesignThemes.Wpf.PopupBox
   3 /MaterialDesignMultiFloatingActionAccentPopupBox#���  6&   $��50��6p   $��50��6{   
�����_�
�����_� 
  ToggleCheckedContent 5k        5l      $ Pencil=�6.   $��Center=�6<   $��Center=�6W    
  PopupContent. 5n      �� .+�5o      �� -   5         � ToolTip$ New reservation��5o      
�����_�
�����_�$��50��6{   $��50��6�   .��5p        $ Hotel=�62   $��20��6?   $��20��6K   
�������$��Center=�6i   $��Center=�5q   R   5r      5s      5t      5u      5v      5w      
   M S B A M L   `   `   `  ����F  BHotelSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:HotelSystemHotelSystem  5          HotelSystem.NewRoom   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962af bMaterialDesignThemes.MahApps, Version=0.1.5.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5      'localclr-namespace:HotelSystem   5        N� 
FontFamily$  	Hervetica)�5	   1    N� FontSize$ 16(�6H    N� 
Foreground
 �   � N� Title$ NewRoom��5
      .��5      �  � ColumnDefinitions 5   
   �� 5      $	��400 �6   �� 5      $	��400 �6    � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $	��550 �6   .+�5   
   �� $��2��6   .+�5      �� $��
20 16 12 4q�6   $��16(�6,   
New room6D   �� 5          MaterialDesignLightSeparator#��[  6   
�������$��	16 0 12 0q�6e   5      �� 5   
   $��
16 10 10 0q�6   $��2��6)   $��2��6=   .+�5      �� -   5        $��NumberTextBox��5   >   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Number��6   $	��350��6S   $��50��6_   .  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush
 ���_�   
Foreground
 ���_� % !MaterialDesignFloatingHintTextBox#��[ 5      6Q   �� 5       -   5        $��CapacityTextBox��5    A   $ Capacity��6   	 �� 
IsEditable	 .  $	��350��6k   $��50��5!      $��0 20 0 0q�6#   
 ���_�
 ���_� & "MaterialDesignFloatingHintComboBox#��[ 5$      .@�5%      �� 
 �� 
IsSelected
 . .��61   15'      �� 5(      .��6   25*      �� 5+      .��6   35-      �� 5.      .��6   450      51      �� 52      -   5        $��FloorTextBox��52   >   $ Floor��6   	 .  $	��350��6e   $��50��6q   $��0 20 0 0q�53      #��[ 6)   
 ���_�
 ���_�.@�56      �� 
 . .��61   158      �� 59      .��6   25;      �� 5<      .��6   35>      �� 5?      .��6   45A      5B      �� 5C      -   5        $��PriceTextBox��5C   =   $ Price��6   $	��350��6Q   $��50��6]   #��[ 5D      
 ���_�
 ���_�5F      �� 5G      -   5        $��SuiteBox��5G   >   $ Suite��6   	 .  $	��350��6a   $��50��6m   $��0 20 0 0q�5H      #��[ 6)   
 ���_�
 ���_�.@�5K      �� 
 . .��61   No5M      �� 5N      .��6   Yes5P      5Q      �� 5R      -   5        $��ErrorBox��5R      
���  ��$y�Hidden=�69   $	��350��6M   $��0 10 0 0q�6Y   $��30��6k   �� 5S      -   5        $
��Save��5S      $	��100��6$   $��40��60   $��Center=�5T      $��0 90 0 0q�62   $��Center=�6D   6_   5U      5V      5W      
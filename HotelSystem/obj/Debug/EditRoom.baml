   M S B A M L   `   `   `  ����F  BHotelSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:HotelSystemHotelSystem  5          HotelSystem.EditRoom   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962af bMaterialDesignThemes.MahApps, Version=0.1.5.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5      'localclr-namespace:HotelSystem   5        N� 
FontFamily$  	Hervetica)�5	   1    N� FontSize$ 16(�6H    N� 
Foreground
 �   � N� Title$ EditRoom��5
      .��5      �  � ColumnDefinitions 5   
   �� 5      $	��400 �6   �� 5      $	��400 �6    � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $	��550 �6   .+�5   
   �� $��2��6   .+�5      �� $��
20 16 12 4q�6   $��16(�6,   	Edit room6E   �� 5          MaterialDesignLightSeparator#��[  6   
�������$��	16 0 12 0q�6e   5      �� 5   
   $��
16 10 10 0q�6   $��2��6)   $��2��6=   .+�5      �� -   5        $��NumberTextBox��5   >   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Number��6   $	��350��6S   $��50��6_    % !MaterialDesignFloatingHintTextBox#��[ 5         
Foreground
 ���_�.  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush
 ���_�5      �� 5       -   5        $��CapacityTextBox��5    A   $ Capacity��6   $	��350��6X   $��50��6d   	 �� 
IsEditable	 . $��0 20 0 0q�6�    & "MaterialDesignFloatingHintComboBox#��[ 5!      
 ���_�
 ���_�.@�5$      �� 
 �� 
IsSelected
 . .��61   15&      �� 5'      .��6   25)      �� 5*      .��6   35,      �� 5-      .��6   45/      50      �� 51      -   5        $��FloorTextBox��51   >   $ Floor��6   $	��350��6R   $��50��6^   	 . $��0 20 0 0q�6|   #��[ 52      
 ���_�
 ���_�.@�55      �� 
 . .��61   157      �� 58      .��6   25:      �� 5;      .��6   35=      �� 5>      .��6   45@      5A      �� 5B      -   5        $��PriceTextBox��5B   =   $ Price��6   $	��350��6Q   $��50��6]   #��[ 5C      
 ���_�
 ���_�5E      �� 5F      -   5        $��SuiteBox��5F   >   $ Suite��6   $	��350��6N   $��50��6Z   	 . $��0 20 0 0q�6x   #��[ 5G      
 ���_�
 ���_�.@�5J      �� 
 . .��61   Yes5L      �� 5M      .��6   No5O      5P      �� 5Q      -   5        $��ErrorBox��5Q      
���  ��$y�Hidden=�69   $	��350��6M   $��0 10 0 0q�6Y   $��30��6k   
 ���_�
 ���_�5S      �� 5T      -   5        $
��Save��5T      $��0 90 0 0q�6$   $	��100��66   $��40��6B   $��Center=�6N   6i   5U      5V      5W      
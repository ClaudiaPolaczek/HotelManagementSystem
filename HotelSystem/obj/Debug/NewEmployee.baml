   M S B A M L   `   `   `  ����F  BHotelSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:HotelSystemHotelSystem  5          HotelSystem.NewEmployee   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      +localclr-namespace:HotelSystem     5      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962af bMaterialDesignThemes.MahApps, Version=0.1.5.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5        N� 
FontFamily$  	Hervetica)�5	   0    N� FontSize$ 16(�6G    N� 
Foreground
 �   � N� Title$ NewEmployee��5
      .��5      �  � ColumnDefinitions 5   
   �� 5      $	��400 �6   �� 5      $	��400 �6    � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $	��550 �6   .+�5   
   �� $��2��6   .+�5      �� $��
20 16 12 4q�6   $��16(�6,   New employee information6T   �� 5          MaterialDesignLightSeparator#��[  6   
�������$��	16 0 12 0q�6e   5      �� 5   
   $��
16 10 10 0q�6   $��0��6)   $��2��69   .+�5      �� $��
10 16 12 0q�6   $��16(�6,   Employee Information6P   �� 5      -   5        $��NameTextBox��5   <   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
 Name��6   $	��350��6O   $��50��6[    % !MaterialDesignFloatingHintTextBox#��[ 5      .  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush
 ���_�   
Foreground
 ���_�5       �� 5!      -   5        $��SurnameTextBox��5!   ?   $ Surname��6   $	��350��6U   $��50��6a   #��[ 5"      
 ���_�
 ���_�5$      �� 5%      -   5        $��PhoneBox��5%   =   $ Phone��6   $	��350��6N   $��50��6Z   #��[ 5&      
 ���_�
 ���_�5(      �� 5)      -   5        $��PositionBox��5)   @   $ Positon��6   $	��350��6S   $��50��6_   	 �� 
IsEditable	 .  $��0 20 0 0q�5*       & "MaterialDesignFloatingHintComboBox#��[ 6)   
 ���_�
 ���_�.@�5-      �� -   5        $��Receptionist��5-   1   
 �� 
IsSelected
 . .��6E   Receptionist5/      �� 50      -   5        $��Admin��50      .��6,   Admin52      �� 53      -   5        $��Owner��53      .��6,   Owner55      56      57      �� 59   
   $��
16 10 10 0q�6   $��1��6)   $��2��69   .+�5:      �� $��
16 16 12 0q�6   $��16(�6,   Account details6K   �� 5;      -   5        $��UsernameTextBox��5;   @   $ Username��6   $	��350��6W   $��50��6c   #��[ 5<      
 ���_�
 ���_�5>      G� 5?      -	   5        $��PasswordTextBox��5?   D   $ Password��6   $	��350��6[   $��50��6g    G� 	MaxLength$ 20��6s    G� PasswordChar$ *��6�   
 ���_�
 ���_�5A      G� 5B      -
   5        $��RepeatPasswordTextBox��5B   K   $ Repeat password��6   $	��350��6h   $��50��6t   $ 20��6�   $ *��6�   
 ���_�
 ���_�5D      �� 5E      -   5        $��Error��5E      $y�Hidden=�6%   
���  ��$	��350��6J   $��0 10 0 0q�6V   $	��100��6h   �� 5F      -   5        $
��Save��5F      $	��100��6$   $��40��60   $��	0 100 0 0q�6<   6O   5G      5H      5I      
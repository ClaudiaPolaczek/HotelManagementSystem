   M S B A M L   `   `   `  ����F  BHotelSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:HotelSystemHotelSystem  5          HotelSystem.EditEmployee   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      +localclr-namespace:HotelSystem     5      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962af bMaterialDesignThemes.MahApps, Version=0.1.5.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5        N� 
FontFamily$  	Hervetica)�5	   2    N� FontSize$ 16(�6I    N� 
Foreground
 �   � N� Title$ EditEmployee��5
      .��5      �  � ColumnDefinitions 5   
   �� 5      $	��400 �6   �� 5      $	��400 �6    � RowDefinitions 5   
   �� 5      $��50 �6   �� 5      $	��550 �6   .+�5   
   �� $��2��6   .+�5      �� $��
20 16 12 4q�6   $��16(�6,   Edit employee information6U   �� 5          MaterialDesignLightSeparator#��[  6   
�������$��	16 0 12 0q�6e   5      �� 5   
   $��16 10 15 15q�6   $��1��6*   $��2��6:   $��Bottom=�6G   $��Right=�6b   .+�5      '  !MaterialDesignThemes.Wpf.PopupBox   3 /MaterialDesignMultiFloatingActionAccentPopupBox#���  6&   $��50��6p   $��50��6{   
�����_�
�����_�   ToggleCheckedContent 5      '  !MaterialDesignThemes.Wpf.PackIcon  5         Kind$ Pencil=�6.   $��Center=�6<   $��Center=�6W      PopupContent. 5       �� .+�5!      �� -   5        	 � ToolTip$	 Personal infromation��5!      
�����_�
�����_�$��50��6�   $��50��6�   .��5"        $ Account=�62   
�������$��20��6T   $��20��6`   $��Center=�6k   $��Center=�5#   R   5$      �� 5%      -   5        $	 Account infromation��5%      
�����_�
�����_�$��50��6�   $��50��6�   .��5&        $	 key=�62   
�������$��20��5'   9   $��20��6E   $��Center=�5(   9   $��Center=�5)   9   5*      5+      5,      5-      �� 5/   
   $��
16 10 10 0q�6   $��0��6)   $��2��69   .+�50      #  MaterialDesignThemes.Wpf.Card  -   5        $��Information��50   "   
������ $��0 10 0 0q�6O   $	��350��6a   +  %MaterialDesignThemes.Wpf.ShadowAssist
   ShadowDepth$
 Depth3=�6n   .��51      �� .+�52      �� $��16 16 12 10q�6    $��16(�65   Personal Information6Y   �� 53      -   5        $��NameTextBox��53   D   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$
 Name��6   $	��350��6W   $��50��6c    % !MaterialDesignFloatingHintTextBox#��[ 54      .  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush
 ���_�   
Foreground
 ���_�56      �� 57      -   5        $��SurnameTextBox��57   G   $ Surname��6   $	��350��6]   $��50��6i   #��[ 58      
 ���_�
 ���_�5:      �� 5;      -   5        $��PhoneBox��5;   E   $ Phone��6   $	��350��6V   $��50��6b   #��[ 5<      
 ���_�
 ���_�5>      �� 5?      -   5        $��PositionBox��5?   H   $ Positon��6   $	��350��6[   $��50��6g    �� 
IsEditable .  $��0 20 0 0q�5@       & "MaterialDesignFloatingHintComboBox#��[ 61   
 ���_�
 ���_�.@�5C      �� -   5        $��Receptionist��5C   9    �� 
IsSelected . .��6M   Receptionist5E      �� 5F      -	   5        $��Admin��5F   '   .��64   Admin5H      �� 5I      -
   5        $��Owner��5I   '   .��64   Owner5K      5L      �� 5M      -   5        $
��Save��5M      $	��100��6,   $��40��68   $��Center=�6D   $��0 20 0 0q�6a   $��Center=�6s   
�����_�
�����_�6�   5N      5O      5P        5R   
   -   5        $��Account��5R   7   
������ $	��Top=�6F   $��0 10 0 0q�6^   $	��300��6p   $��0��6}   $��2��6�   $
 Depth3=�6�   .��5S      �� $��
16 10 10 0q�6   $��1��6-   $��2��6=   .+�5T      �� $��16 16 12 10q�6   $��16(�61   Account details6P   �� 5U      -   5        $��UsernameTextBox��5U   D   $ Username��6   $	��350��6[   $��50��6g   #��[ 5V      
 ���_�
 ���_�5X      G� 5Y      -   5        $��PasswordTextBox��5Y   H   $ Password��6   $	��350��6_   $��50��5Z       G� PasswordChar$ *��6*    G� 	MaxLength$ 20��6;   
 ���_�
 ���_�5[      G� 5\      -   5        $��RepeatPasswordTextBox��5\   O   $ Repeat password��6   $	��350��6l   $��50��5]      $ *��6*   $ 20��6;   
 ���_�
 ���_�5_      �� 5`      -   5        $
��Save��5`      $	��100��6(   $��40��64   $��Center=�6@   $��0 50 0 0q�6]   $��Center=�6o   
�����_�
�����_�6�   5a      5b      �� 5d   
   -   5        $��Error��5d   d   $��1��6   $��1��6$   $	��Top=�61   $
��Left=�6I   
���  ��$y�Hidden=�6�   $	��350��6�   $��	10 50 0 0q�6�   $	��100��6�   5e      5f      
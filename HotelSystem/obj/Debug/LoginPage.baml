   M S B A M L   `   `   `  ����F  BHotelSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:HotelSystemHotelSystem  5   	       HotelSystem.LoginPage   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:HotelSystem     5   	   b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962af bMaterialDesignThemes.MahApps, Version=0.1.5.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5   	   -   5          � Title$  	LoginPage��5
   	   $	��450��6   $	��380��6(    � AllowsTransparency . $��	Helvetica)�5   #   $��16(�6:   
���   �$��Light"�5      
������  � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�6    � WindowStartupLocation$ CenterScreen=�5   	   .��5      � .+�5   
   �  � RowDefinitions 5      �� 5      �� 5      .+�5      ��  �� CornerRadius$ 5��6   $��2��6&   ��5      �� 5      .��5      �  � Color$ #ced6e0��6'    � Offset$	 0.0Q�67   � 5      $ #a4b0be��6'   $	 1.0Q�67   5      5      �� 5!      $��2��6   .+�5"      �� 
�������$��10 10q�61   $ 5��6@   $��2��6Q   $	��430��6b   ._�5#      �� $��10q�6!   $��0��6-   .+�5$      �� 	 �� Orientation$	 
Horizontal=�6%   $��0,0,0,0q�6>   $��Right=�6O   .+�5%      �� -   5        $��15��5%   %   $��15��60   $��00,0,0,0q�6<   
������ $��Right=�6g   .��5&   "   '  !MaterialDesignThemes.Wpf.PackIcon  
   Kind$
 Power=�6:   $��15��6G   $��15��6S   $��Center=�6^   
���   �$��Center=�5'   *   5(      5)      �� 5*      $��Center=�6%   $��0��6@   $	��200��6M   .+�5+        $
 Hotel=�66   $��90��5,   1   $��90��6=   $��Center=�5-   1   $��Center=�5.   1   �� 5/      $��Hotel Management System��6(   $��Light"�50   (   $��	helvetica)�51   (   $��25(�52   (   $��Center=�53   (   $��0,20,0,0q�54   (   55      �� 57      $��1��6%   .+�58      �� $	 
Horizontal=�6)   .+�59   "   �� -   5        $��UsernameTextBox��5=   *   $��Light"�59   *   $��	helvetica)�5:   *   $��20(�5;   *   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Username��5<   *   $
��Left=�5>   *   
������ $��0q�5@   *   $	��235��5A   *   $
��Left=�5B   *      
Foreground
 ���_�.  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush
 ���� $��30��5E   *   $��40,0,0,0q�5F   *     5G   "   $
 Account=�6:   $��30��6I   $��35��6U   $��Center=�6`   $��Center=�5H   *   5I      �� 5K      $	��270��6%   $��2��5L   %   
���   � J� Opacity$	 0.5Q�5N   %   �� 5P      $	 
Horizontal=�6)   $��0,25,0,0q�6B   .+�5Q   "   G� -   5        $��PasswordTextBox��5U   .   $��	Helvetica)�5Q   .   $��Light"�5R   .   $ Password��5S   .   $��20(�5T   .   $��Center=�5V   .   
������ $��0q�5X   .   $	��235��5Y   .   $
��Left=�5Z   .   
 ���_�
 ���� $	 0.5Q�5]   .   $��30��5^   .   $��40,0,0,0q�5_   .     5`   "   $	
 key=�6:   $��30��5a   1   $��30��6=   $��Center=�5b   1   $��Center=�5c   1   5d      �� 5e      $	��270��6%   $��2��5f   %   
���   �$	 0.5Q�5h   %   �� 5j      -   5        $��ErrorBox��5j   (   $��Center=�68   
���  ��$y�Hidden=�6f   $	��250��6z   $��0 10 0 0q�6�   $��30��6�   �� 5l      $	 
Horizontal=�6)   $��0,20,0,0q�6B   .+�5m   "   �� -   5        $	��270��5m   )   $��40��65   $��LOGIN��6A   $��40,0,0,0q�6Q   
�����_�
�����_�5n   X   5o      5p      5q      5r      5s      5t      5u      5v      
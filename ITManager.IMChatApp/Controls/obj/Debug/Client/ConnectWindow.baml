   M S B A M L   `   `   `  ����G  CBaseControls, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA0clr-namespace:BaseControls;assembly=BaseControlsBaseControls  5       Controls%   ChatControls.Client.ConnectForm   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      IbaseControls0clr-namespace:BaseControls;assembly=BaseControls     5        � WindowStyle$
  None=�5       � 
ResizeMode$ NoResize=�5	       � AllowsTransparency . 
������  � WindowStartupLocation$ CenterScreen=�5       � Title$ Connect��5      $��265.5��6   $	��200��6,   .��5      �� -   5         ��Name$ windowBorder��5      $��1q�6#   ���#EDEFF0 �� CornerRadius$ 6��6M   ��5   
   �� 5       �� EndPoint$ 0.5,1&�6"    �� 
StartPoint$ 0.5,0&�63   .��5      � 	 � Color$	 #888A87��6   
 � Offset$
 0Q�6/   � 5      $	 #777875��6   $
 0.375Q�6/   � 5      $	 #50524F��6   $
 0.375Q�6/   � 5      $	 #323332��6   $
 1Q�6/   5      ._�5   
   � $��Stretch=�6   $��Stretch=�6-    � RowDefinitions 5      �� 5      $
��Auto �6    $��30��6.   �� 5      $
��Auto �6    $��30��6.   �� 5      $
��Auto �6    $��30��6.   �� 5      $
��Auto �6    $��30��6.   �� 5      $
��Auto �6    $��30��6.   �� 5      $
��Auto �6    $��50��6.    � ColumnDefinitions 5       �� 5!      $
��Auto �6#   $	��102��60   �� 5"      .+�5$      ��  �� TextAlignment$ Center=�6   $��Stretch=�6/   $��Center=�6M   $��2��6h   Login6�   �� 5%      $��1��6   $��Host IP Address:��6%   $��0��6=   $
��Left=�6M   $��Center=�6h   $��	10,4,0,10q�6�      BaseControls.ChatTextBox  5&      -   5          Name$ tbHost��5&   '   $��20��67   $��20��6F   $��Center=�6V   $��1��6q   $��1��6~   $��	10,0,10,0q�6�   �� 5'      $��2��6   $��Port:��6%   $��0��62   $
��Left=�6B   $��Center=�6]   $��
10,10,0,10q�6x   $ Right=�6�     5(      -   5        $ tbPort��5(   '   $��20��67   $��20��6F   $��2��6U   $��1��6b   $��	10,0,10,0q�6�   �� 5)      $��3��6   $��	UserName:��6%   $��0��66   $
��Left=�6F   $��Center=�6a   $��
10,10,0,10q�6|     5*      -   5        $ tbUser��5*   '   $��20��67   $��20��6F   $��3��6U   $��1��6b   $��	10,0,10,0q�6�      BaseControls.ChatCheckBox  5+      -   5          Name$ 	cbIsLocal��5+   (   $��Center=�6;   $��Center=�6X   $��2��6s   $��0��6�   $��4��6�   .��6�   Local server6�      BaseControls.ChatButton  5,      -   5          Name$ btnOk��5,   &   $��2��65   $��0��6I   $��OK��6Y   $
��Left=�6f   $��Center=�6�   $��76��6�   $��	41,6,0,24q�6�   $��5��6�   
����������#EDEFF05-   )     5.      -   5        $ 	btnCancel��5.   &   
����������#EDEFF0$��Cancel��6f   $��1��6w   $
��Left=�6�   $��	34,6,0,24q�6�    �� IsCancel . $��5��6�   $��Center=�6�   $��76��6�   $��20��6  5/      50       � Triggers 51      :� 52   
    :� RoutedEvent$ Window.Loaded��6   .[�53      �� .��54      �� .��55      W� -   5         g�Name$ FormFadeAnimation��55   &    �� TargetProperty$ (Window.Opacity)�56   &    W� From$	 0.0X�57   &   	 W� To$	 1.0X�61    g� Duration$ 0:0:1D�6:    g� AutoReverse .   g� RepeatBehavior$ 1x��58   :   59      5:      5;      5=      
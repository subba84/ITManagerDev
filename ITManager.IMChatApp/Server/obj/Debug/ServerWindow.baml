   M S B A M L   `   `   `  ����G  CBaseControls, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA0clr-namespace:BaseControls;assembly=BaseControlsBaseControls  5      
 Server   Server.ServerWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      IbaseControls0clr-namespace:BaseControls;assembly=BaseControls     5      -   5          � Title$  Server startup��5       � WindowStyle$
 None=�5       � AllowsTransparency .  � 
ResizeMode$ NoResize=�5
      
������ $	��300��5      $	��300��6   $	��300��6L   $��287.293��6X    � 	Resources 5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $1 +/BaseControls;component/Themes/Generic.xaml?�6%   %    5      .��5      �� -   5         ��Name$ windowBorder��5      
�������$��1q�6;   ���#EDEFF0._�5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��1* �6   	 � ColumnDefinitions	 5   
   �� 5      �� 5      .+�5    
   �� -   5        
 ��Name$
 connectedClients��5       $��1��6,   $
��Left=�6<   $	��257��6W   $��	10,31,0,0q�6d   $��4��6w   $	��Top=�6�   $	��130��6�   $��Visible=�6�   �� 5!   
   $��0��6   $��0��6   $
��Left=�6-   $��	10,10,0,0q�6H   $��Server Name:��6[   $	��Top=�6r      BaseControls.ChatTextBox  5"   
   -   5          Name$ tbServerName��5"   #   $��0��69   $��0��6F   $
��Left=�6V   $��23��6q   $��	10,31,0,0q�6}    �� TextWrapping$
 Wrap=�6�   $	��Top=�6�   $	��120��6�   �� 5#   
   $
��Left=�6   $��	10,10,0,0q�6+   $��1��6>   $��0��6K   $��Port Number:��6[   $	��Top=�6r     5$   
   -   5        $ tbPortNumber��5$   #   $
��Left=�69   $��23��6T   $��	10,31,0,0q�6`   $��1��6s   $��0��6�   $
 Wrap=�5%      $	��Top=�6&   $	��120��6>   �� 5&   
   $
��Left=�6   $��	10,10,0,0q�6+   $��2��6>   $��0��6K   $��Network Interface:��6[   $	��Top=�6x   �� 5'   
   -   5         ��Name$ cbInterfaces��5'      $
��Left=�6)   $��	10,31,0,0q�6D   $��2��6W   $��0��6d   $	��Top=�6t   $	��120��6�      BaseControls.ChatCheckBox  5(   
   -   5          Name$ cbStartStop��5(   $   $
��Left=�69   $��Start��6U   $��	10,10,0,0q�6e   $��3��6x   $��0��6�   $	��Top=�5)      6I   �� 5*   
   $��0��6   $��1��6   $
��Left=�6-   $��10.5,10,0,0q�6H   $��Connected Users:��6]   $	��Top=�6x   5,      5-   
   5.      
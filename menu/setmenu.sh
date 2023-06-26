#!/bin/bash

clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                   SYSTEM SETTING$wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y.  Ubah dan tambah domain/subdomain VPS"
echo -e "$yy 2$y.  Ubah port VPS"
echo -e "$yy 3$y.  Limit Bandwith Speed Server"
echo -e "$yy 4$y.  Reboot VPS"
echo -e "$yy 5$y.  Speedtest VPS"
echo -e "$yy 6$y.  System Information"
echo -e "$yy 7$y.  Menu"
echo -e "$yy 8$y.  Exit"
echo -e "$y-------------------------------------------------------------$wh"
echo -e ""
read -p "Select From Options [ 1 - 8 ] : " menu
echo -e ""
case $menu in
1)
host
;;
2)
ubahport
;;
3)
limitspeed
;;
4)
reboot
;;
5)
speedtest
;;
6)
info
;;
7)
clear
menu
;;
8)
clear
exit
;;
*)
clear
menu
;;
esac

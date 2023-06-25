#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                 SSH WEBSOCKET $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y.  Create SSH & OpenVPN Account"
echo -e "$yy 2$y.  Check User Login SSH & OpenVPN"
echo -e "$yy 3$y.  Daftar Member SSH & OpenVPN"
echo -e "$yy 4$y.  Delete SSH & OpenVpn Account"
echo -e "$yy 5$y.  Delete User Expired SSH & OpenVPN"
echo -e "$yy 6$y.  Set up Autokill SSH"
echo -e "$yy 7$y.  Displays Users Who Do Multi Login SSH"
echo -e "$yy 8$y. Restart All Service"
echo -e "$yy 9$y. Menu Utama"
echo -e "$yy 10$y. Exit"
echo -e "$y-------------------------------------------------------------$wh"
read -p "Select From Options [ 1 - 10 ] : " menu
echo -e ""
case $menu in
1)
addssh
;;
2)
cekceklimit
3)
member
;;
4)
delssh
;;
5)
delexp
;;
6)
autokill
;;
7)
ceklimit
;;
8)
restart
;;
9)
menu
;;
10)
clear
exit
;;
*)
clear
menu
;;
esac

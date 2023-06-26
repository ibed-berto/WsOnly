#!/bin/bash
# ABS
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================

clear
echo -e ""
echo -e "======================================"
echo -e ""
echo -e "[1]. Change Port SSH Websocket HTTP/Nontls"
echo -e "[2]. Change Port SSH Websocket TLS/SSL"
echo -e "[3]. Exit"
echo -e ""
echo -e "======================================"
echo -e ""
read -p "Select From Options [ 1-3 ] : " port
echo -e ""
case $port in
1)
portsshnontls
;;
2)
portsshws
;;
3)
clear
menu
;;
*)
echo "Please enter an correct number"
;;
esac

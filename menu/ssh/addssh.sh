#!/bin/bash

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
# Getting

domain=$(cat /etc/stunnel5/domain)
#sldomain=$(cat /root/nsdomain)

clear
read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (Days): " masaaktif

IP=$(wget -qO- ipinfo.io/ip);
ws="$(cat ~/log-install.txt | grep -w "Websocket TLS" | cut -d: -f2|sed 's/ //g')"
ws2="$(cat ~/log-install.txt | grep -w "Websocket None TLS" | cut -d: -f2|sed 's/ //g')"

ssl="$(cat ~/log-install.txt | grep -w "Stunnel5" | cut -d: -f2)"
#sqd="$(cat ~/log-install.txt | grep -w "Squid" | cut -d: -f2)"

clear


useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
expi="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
hariini=`date -d "0 days" +"%Y-%m-%d"`
expi=`date -d "$masaaktif days" +"%Y-%m-%d"`
echo -e ""
echo -e "Informasi Akun SSH Websocket"
echo -e "=============================="
echo -e "Username: $Login"
echo -e "Password: $Pass"
echo -e "Created: $hariini"
echo -e "Expired: $expi"
echo -e "===========HOST-SSH==========="
echo -e "IP/Host: $IP"
echo -e "Domain SSH: $domain"
echo -e "Domain Cloudflare: $domain"
echo -e "=========Service-Port========="
echo -e "OpenSSH: 22"
echo -e "Dropbear: 443, 109, 143"
echo -e "SSL/TLS: 443"
echo -e "SSH Websocket SSL/TLS: 443"
echo -e "SSH Websocket HTTP: 80"
echo -e "BadVPN UDPGW: 7100,7200,7300"
echo -e "Proxy CloudFront: [OFF]"
echo -e "Proxy Squid: [OFF]"
echo -e "=============================="
echo -e "SNI/Server Spoof: isi dengan bug"
echo -e "Payload Websocket SSL/TLS"
echo -e "=============================="
echo -e "GET wss://bug.com/ HTTP/1.1[crlf]Host: $domain[crlf]Upgrade: websocket[crlf][crlf]"
echo -e "=============================="
echo -e "Payload Websocket HTTP"
echo -e "=============================="
echo -e "GET / HTTP/1.1[crlf]Host: $domain[crlf]Upgrade: websocket[crlf][crlf]"
echo -e "=============================="
echo -e "Script Mod By ABS"

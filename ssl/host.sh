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

mkdir -p /etc/stunnel5

clear
read -rp "Masukan Domain/Host Yang sudah terpointing Di Cloudflare : " -e domain
#echo "IP=$domain" >>/var/lib/crot/ipvps.conf
rm -rf /etc/stunnel5/domain
echo $domain >> /etc/stunnel5/domain

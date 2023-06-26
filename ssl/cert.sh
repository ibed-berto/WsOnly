#!/bin/bash

domain=$(cat /etc/stunnel5/domain)

#inst alat
apt install iptables iptables-persistent -y
apt install curl socat xz-utils wget apt-transport-https gnupg gnupg2 gnupg1 dnsutils lsb-release -y 
apt install socat cron bash-completion ntpdate -y
ntpdate pool.ntp.org
apt -y install chrony
timedatectl set-ntp true
systemctl enable chronyd && systemctl restart chronyd
systemctl enable chrony && systemctl restart chrony
timedatectl set-timezone Asia/Jakarta
chronyc sourcestats -v
chronyc tracking -v
date

#folder cert
mkdir -p /etc/stunnel5

#inst cert
sudo lsof -t -i tcp:80 -s tcp:listen | sudo xargs kill
cd /root/
wget https://raw.githubusercontent.com/acmesh-official/acme.sh/master/acme.sh
bash acme.sh --install
rm acme.sh
cd .acme.sh
bash acme.sh --register-account -m ibedberto@gmail.com
bash acme.sh --issue --standalone -d $domain --force
bash acme.sh --installcert -d $domain --fullchainpath /etc/stunnel5/cert.crt --keypath /etc/stunnel5/cert.key

cd
systemctl restart stunnel5

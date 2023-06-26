#!/bin/bash

if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi

#install host
wget https://raw.githubusercontent.com/ibed-berto/WsOnly/main/ssl/host.sh && chmod +x host.sh && ./host.sh

#install build
wget https://raw.githubusercontent.com/ibed-berto/WsOnly/main/alat/build.sh && chmod +x build.sh && screen -S build ./build.sh

#install badvpn
wget https://raw.githubusercontent.com/ibed-berto/WsOnly/main/alat/badvpn.sh && chmod +x badvpn.sh && screen -S badvpn ./badvpn.sh

#install cert
wget https://raw.githubusercontent.com/ibed-berto/WsOnly/main/ssl/cert.sh && chmod +x cert.sh && screen -S cert ./cert.sh

#install stunnel5
wget https://raw.githubusercontent.com/ibed-berto/WsOnly/main/stunnel5/stunnel5.sh && chmod +x stunnel5.sh && screen -S stunnel5 ./stunnel5.sh

#install ws
wget https://raw.githubusercontent.com/ibed-berto/WsOnly/main/websocket/install.sh && chmod +x install.sh && screen -S install ./install.sh

#install menu
wget https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/addmenu.sh && chmod +x addmenu.sh && screen -S addmenu ./addmenu.sh

rm -f /root/host.sh
rm -f /root/build.sh 
rm -f /root/badvpn.sh
rm -f /root/cert.sh
rm -f /root/stunnel5.sh
rm -f /root/install.sh
rm -f /root/addmenu.sh

echo "============================================================================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "----------------------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - Stunnel5                : 443, 445"  | tee -a log-install.txt
echo "   - Dropbear                : 443, 109, 143"  | tee -a log-install.txt
echo "   - SSH Websocket TLS       : 443"  | tee -a log-install.txt
echo "   - SSH Websocket HTTP      : 80"  | tee -a log-install.txt
echo "   - Badvpn UDPGW            : 7100, 7200, 7300"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 05.00 GMT +7" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - White Label" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt

sleep 15
rm -f setupws.sh
reboot

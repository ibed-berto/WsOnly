#!/bin/bash

if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi

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


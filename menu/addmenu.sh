#!/bin/bash

cd /usr/bin

#Delete file
rm -rf menu 
rm -rf autokill 
rm -rf ceklimit 
rm -rf cekssh 
rm -rf delexp 
rm -rf delssh 
rm -rf member 
rm -rf restart 
rm -rf tendang 

rm -rf info 
rm -rf ipsaya 
rm -rf limitspeed 
rm -rf menu 
rm -rf portsshnontls 
rm -rf portsshtls 
rm -rf running 
rm -rf setmenu 
rm -rf sl-fix 
rm -rf speedtest 
rm -rf sshovpnmenu 
rm -rf ubahport 
rm -rf updatemenu 


#Download menu
wget -O menu "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/ssh/addssh.sh"
wget -O autokill "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/ssh/autokill.sh"
wget -O ceklimit "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/ssh/ceklimit.sh"
wget -O cekssh "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/ssh/cekssh.sh"
wget -O delexp "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/ssh/delexp.sh"
wget -O delssh "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/ssh/delssh.sh"
wget -O member "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/ssh/member.sh"
wget -O restart "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/ssh/restart.sh"
wget -O tendang "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/ssh/tendang.sh"

wget -O info "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/info.sh"
wget -O ipsaya "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/ipsaya.sh"
wget -O limitspeed "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/limitspeed.sh"
wget -O menu "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/menu.sh"
wget -O portsshnontls "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/portsshnontls.sh"
wget -O portsshtls "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/portsshtls.sh"
wget -O running "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/running.sh"
wget -O setmenu "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/setmenu.sh"
wget -O sl-fix "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/sl-fix.sh"
wget -O speedtest "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/speedtest.py"
wget -O sshovpnmenu "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/sshovpnmenu.sh"
wget -O ubahport "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/ubahport.sh"
wget -O updatemenu "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/updatemenu.sh"

#IZIN
chmod +x menu 
chmod +x autokill 
chmod +x ceklimit 
chmod +x cekssh 
chmod +x delexp 
chmod +x delssh 
chmod +x member 
chmod +x restart 
chmod +x tendang 

chmod +x info 
chmod +x ipsaya 
chmod +x limitspeed 
chmod +x menu 
chmod +x portsshnontls 
chmod +x portsshtls 
chmod +x running 
chmod +x setmenu 
chmod +x sl-fix 
chmod +x speedtest 
chmod +x sshovpnmenu 
chmod +x ubahport 
chmod +x updatemenu 


cd


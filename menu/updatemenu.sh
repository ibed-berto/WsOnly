#!/bin/bash
# ==========================================
# Color

# download menu
cd /usr/bin
rm -rf clearlog
rm -rf menu
rm -rf restart
rm -rf addssh
rm -rf ipsaya
rm -rf sl-fix
rm -rf sshovpnmenu
rm -rf setmenu
rm -rf running
rm -rf updatemenu

wget -O clearlog "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/ssh/clearlog.sh"
wget -O restart "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/ssh/restart.sh"
wget -O addssh "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/ssh/addssh.sh"
wget -O menu "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/menu.sh"
wget -O ipsaya "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/ipsaya.sh"
wget -O sl-fix "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/sl-fix.sh"
wget -O setmenu "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/setmenu.sh"
wget -O running "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/running.sh"
wget -O updatemenu "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/updatemenu.sh"
wget -O sshovpnmenu "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/sshovpnmenu.sh"

chmod +x clearlog
chmod +x restart
chmod +x addssh
chmod +x menu
chmod +x ipsaya
chmod +x sl-fix
chmod +x sshovpnmenu
chmod +x setmenu
chmod +x running
chmod +x updatemenu
cd

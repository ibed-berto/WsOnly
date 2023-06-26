#!/bin/bash

cd /usr/bin
rm -rf restart
rm -r restart
rm restart
rm -rf certssh
rm -r certssh
rm certssh
rm -rf updatemenu
rm -r updatemenu
rm updatemenu

cd /usr/bin
wget -O certssh "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/ssl/cert.sh"
wget -O restart "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/ssh/restart.sh"
wget -O updatemenu "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/updatemenu.sh"
#wget -O menu "https://raw.githubusercontent.com/ibed-berto/WsOnly/main/menu/menu.sh"


cd /usr/bin
chmod +x certssh
chmod +x restart
chmod +x updatemenu
#chmod +x menu

cd /root/

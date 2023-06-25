
### Install websocket 
   
```html
rm -f setup.sh && apt update && apt upgrade -y && update-grub && sleep 2 && apt-get update -y && apt-get upgrade && sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl unzip && wget https://raw.githubusercontent.com/ibed-berto/WsOnly/main/setupws.sh && chmod +x setupws.sh && sed -i -e 's/\r$//' setupws.sh && screen -S setupws ./setupws.sh
  
```

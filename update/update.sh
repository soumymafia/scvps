#!/bin/bash
#clear
echo -e "Downloading Update File"
sleep 2
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/menu.sh" && chmod +x /usr/bin/menu
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/udp-custom/ssh/usernew.sh"
wget -q -O backup "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/ssh/backup.sh"
wget -q -O restore "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/ssh/restore.sh"
wget -q -0 /usr/bin/m-vmess "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-vmess.sh"
wget -q -0 /usr/bin/m-vless "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-vless.sh"
wget -q -O /usr/bin/m-vless  "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-trojan.sh"
sleep 2

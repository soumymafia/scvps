#!/bin/bash
#clear
echo -e "Downloading Update File"
sleep 2
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/menu.sh" && chmod +x /usr/bin/menu
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/backup.sh" && chmod +x /usr/bin/menu-backup
wget -O m-vmess "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-vmess.sh"
wget -O m-vless "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-vless.sh"
wget -O running "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/running.sh"
wget -O clearcache "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/clearcache.sh"
wget -O m-ssws "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-ssws.sh"
wget -O m-trojan "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-trojan.sh"
wget -O m-system "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-system.sh"
sleep 2

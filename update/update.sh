#!/bin/bash
#clear
echo -e "Downloading Update File"
sleep 2
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/menu.sh" && chmod +x /usr/bin/menu
wget -q -O /usr/bin/add-ws "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/udp-custom/ssh/usernew.sh" && chmod +x /usr/bin/add-ws
sleep 2

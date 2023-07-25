#!/bin/bash
#clear
echo -e "Downloading Update File"
sleep 2
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/udp-custom/ssh/usernew.sh" && chmod +x /usr/bin/usernew
sleep 2

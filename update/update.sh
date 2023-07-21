#!/bin/bash
#clear
echo -e "Downloading Update File"
sleep 2
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/menu.sh" && chmod +x /usr/bin/menu
wget -O backup "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/ssh/backup.sh"
wget -O restore "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/ssh/restore.sh"
sleep 2

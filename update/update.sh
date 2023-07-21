#!/bin/bash
#clear
echo -e "Downloading Update File"
sleep 2
wget -q -O /usr/bin/update "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/update/update.sh" && chmod +x /usr/bin/update
wget -q -O /usr/bin/menu-bot "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/menu-bot.sh" && chmod +x /usr/bin/menu-bot
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/menu.sh" && chmod +x /usr/bin/menu
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/backup.sh" && chmod +x /usr/bin/menu-backup
sleep 2

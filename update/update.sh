#!/bin/bash
#clear
echo -e "Downloading Update File"
sleep 2
wget -q -O /usr/bin/update "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/update/update.sh" && chmod +x /usr/bin/update
wget -q -O /usr/bin/menu-bot "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/menu-bot.sh" && chmod +x /usr/bin/menu-bot
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/menu.sh" && chmod +x /usr/bin/menu
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/backup.sh" && chmod +x /usr/bin/menu-backup
wget -O m-vmess "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-vmess.sh"
wget -O m-vless "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-vless.sh"
wget -O running "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/running.sh"
wget -O clearcache "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/clearcache.sh"
wget -O m-ssws "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-ssws.sh"
wget -O m-trojan "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-trojan.sh"
wget -O m-system "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-system.sh"
wget -O add-tr "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/add-tr.sh" && chmod +x add-tr
wget -O trialtrojan "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/trialtrojan.sh" && chmod +x trialtrojan
wget -O del-tr "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/del-tr.sh" && chmod +x del-tr
wget -O renew-tr "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/renew-tr.sh" && chmod +x renew-tr
wget -O cek-tr "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/cek-tr.sh" && chmod +x cek-tr
wget -O add-ws "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/add-ws.sh" && chmod +x add-ws
wget -O trialvmess "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/trialvmess.sh" && chmod +x trialvmess
wget -O renew-ws "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/renew-ws.sh" && chmod +x renew-ws
wget -O del-ws "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/del-ws.sh" && chmod +x del-ws
wget -O cek-ws "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/cek-ws.sh" && chmod +x cek-ws
sleep 2

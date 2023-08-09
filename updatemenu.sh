#!/bin/bash
#clear
echo -e "$COLOR1 ${NC}  $COLOR1[INFO]${NC} INSTALL UPDATE MENU"
sleep 2
wget -O menu "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/menu.sh"
wget -O m-vmess "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-vmess.sh"
wget -O m-vless "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-vless.sh"
wget -O running "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/running.sh"
wget -O clearcache "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/clearcache.sh"
wget -O m-ssws "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-ssws.sh"
wget -O m-trojan "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-trojan.sh"

# menu ssh ovpn
wget -O m-sshovpn "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-sshovpn.sh"
wget -O usernew "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/ssh/usernew.sh"
wget -O trial "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/ssh/trial.sh"
wget -O renew "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/ssh/renew.sh"
wget -O hapus "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/ssh/hapus.sh"
wget -O cek "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/ssh/cek.sh"
wget -O member "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/ssh/member.sh"
wget -O delete "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/ssh/delete.sh"
wget -O autokill "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/ssh/autokill.sh"
wget -O ceklim "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/ssh/ceklim.sh"
wget -O tendang "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/ssh/tendang.sh"
wget -O sshws "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/ssh/sshws.sh"

# menu system
wget -O m-system "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-system.sh"
wget -O m-domain "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-domain.sh"
wget -O add-host "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/ssh/add-host.sh"
wget -O certv2ray "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/certv2ray.sh"
wget -O speedtest "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/ssh/speedtest_cli.py"
wget -O auto-reboot "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/auto-reboot.sh"
wget -O restart "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/restart.sh"
wget -O bw "https://raw.githubusercontent.com/rizkycky/rvpnstores/master/menu/bw.sh"
wget -O m-tcp "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/tcp.sh"
wget -O xp "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/ssh/xp.sh"
wget -O sshws "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/ssh/sshws.sh"
wget -O m-dns "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/menu/m-dns.sh"

# vmess
wget -O add-ws "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/add-ws.sh"
wget -O trialvmess "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/trialvmess.sh" 
wget -O renew-ws "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/renew-ws.sh" 
wget -O del-ws "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/del-ws.sh" 
wget -O cek-ws "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/cek-ws.sh" 

# vless
wget -O add-vless "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/add-vless.sh" 
wget -O trialvless "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/trialvless.sh"
wget -O renew-vless "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/renew-vless.sh" 
wget -O del-vless "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/del-vless.sh" 
wget -O cek-vless "https://raw.githubusercontent.com/rizkyckj/rvpnstoresmaster/xray/cek-vless.sh"

# trojan
wget -O add-tr "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/add-tr.sh" && chmod +x add-tr
wget -O trialtrojan "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/trialtrojan.sh" && chmod +x trialtrojan
wget -O del-tr "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/del-tr.sh" && chmod +x del-tr
wget -O renew-tr "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/renew-tr.sh" && chmod +x renew-tr
wget -O cek-tr "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/cek-tr.sh" && chmod +x cek-tr

# shadowsocks
wget -O add-ssws "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/add-ssws.sh" && chmod +x add-ssws
wget -O trialssws "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/trialssws.sh" && chmod +x trialssws
wget -O del-ssws "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/del-ssws.sh" && chmod +x del-ssws
wget -O renew-ssws "https://raw.githubusercontent.com/rizkyckj/rvpnstores/master/xray/renew-ssws.sh" && chmod +x renew-ssws
echo -e " [INFO] UPDATE SELESAI"
clear
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}            ${WH}• UPDATE SCRIPT VPS •              ${NC} $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}  $COLOR1[INFO]${NC} Check for Script updates"
echo -e "$COLOR1 ${NC}  $COLOR1[INFO]${NC} INSTALL UPDATE MENU [done]"
     ➢ Update All Menu 
     ➢ Fix All Bug
     

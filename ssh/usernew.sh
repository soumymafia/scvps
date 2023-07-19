#!/bin/bash
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
domain=$(cat /etc/xray/domain)
clear
read -p "Username       : " Login
read -p "Password       : " Pass
read -p "Max IP         : " iplimit
read -p "Expired (Days) : " masaaktif
sleep 1
#limitip
if [[ $iplimit -gt 0 ]]; then
echo -e "$iplimit" > /etc/funny/limit/ssh/ip/$user
else
echo > /dev/null
fi
clear
systemctl restart ws-tls
systemctl restart ws-nontls
systemctl restart ssh-ohp
systemctl restart dropbear-ohp
systemctl restart openvpn-ohp
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
expi="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
hariini=`date -d "0 days" +"%Y-%m-%d"`
expi=`date -d "$masaaktif days" +"%Y-%m-%d"`
echo -e "══════════════════════════"                 
echo -e "    <=  SSH ACCOUNT =>"       
echo -e "══════════════════════════"                 
echo -e ""
echo -e "Username     : $Login"
echo -e "Password     : $Pass"        
echo -e "CITY         : $(cat /root/.mycity)"
echo -e "ISP          : $(cat /root/.myisp)"
echo -e "Host/IP      : $(cat /etc/xray/domain)"
echo -e "Udp Custom   : 1-65535"
echo -e "Port ssl/tls : 443, 8443, 2086, 990, 445, 777"
echo -e "Port non tls : 8880, 109, 143, 2086"
echo -e "Port Squid   : 3128"
echo -e "BadVpn       : 7100, 7200, 7300"
echo -e "OVPN TCP     : http://$domain:89/tcp.ovpn"
echo -e "OVPN UDP     : http://$domain:89/udp.ovpn"
echo -e ""  
echo -e "══════════════════════════"                 
echo -e "Expired => $expi"
echo -e "══════════════════════════"                 
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
menu

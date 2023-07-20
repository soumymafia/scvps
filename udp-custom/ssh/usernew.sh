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
echo -e "◇━━━━━━━━━━━━━◇"
echo -e "  ⟨ SSH OVPN Account ⟩"
echo -e "◇━━━━━━━━━━━━━◇"
echo -e "» Username   : $Login"
echo -e "» Password   : $Pass"
echo -e "» Expired On : $exp"
echo -e "◇━━━━━━━━━━━━━◇"
echo -e "» IP         : $IP"
echo -e "» Host       : $domen"
echo -e "» OpenSSH    : $opensh"
echo -e "» Dropbear   : $db"
echo -e "» SSH WS     : $portsshws"
echo -e "» SSH SSL WS : $wsssl"
echo -e "» SSL/TLS    :$ssl"
echo -e "» UDPGW      : 7100-7900"
echo -e "» UDP Custom : 1-65350"
echo -e "» Port NS    : ALL Port (22, 443, 143)"
echo -e "» Nameserver : $sldomain"
echo -e "» Pubkey     : $slkey"
echo -e "» UDP CUSTOM  : 1-65535"
echo -e "◇━━━━━━━━━━━━━◇"
echo -e "» Payload WSS: GET wss://isi_bug_disini HTTP/1.1[crlf]Host: ${domen}[crlf]Upgrade: websocket[crlf][crlf]"
echo -e "◇━━━━━━━━━━━━━◇"
echo -e "» Payload WS : GET / HTTP/1.1[crlf]Host: $domen[crlf]Upgrade: websocket[crlf][crlf]"
echo -e "◇━━━━━━━━━━━━━◇"
fi
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
m-sshovpn

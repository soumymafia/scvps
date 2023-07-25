#!/bin/bash
echo "Checking VPS"
clear
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

echo -e "${BLUE}┌─────────────────────────────────────────────────┐${NC}"
echo -e "${BLUE}│${NC}              • VMESS PANEL MENU •              ${NC} ${BLUE}│$NC"
echo -e "${BLUE}└─────────────────────────────────────────────────┘${NC}"
echo -e " ${BLUE}┌───────────────────────────────────────────────┐${NC}"
echo -e " ${BLUE}│$NC   ${COLOR1}[01]${NC} • ADD VMESS   ${COLOR1}[04]${NC} • DELETE VMESS${NC}   ${BLUE}│$NC"
echo -e " ${BLUE}│$NC   ${COLOR1}[02]${NC} • TRIAL VMESS${NC}  ${COLOR1}[05]${NC} • USER ONLINE    ${BLUE}│$NC"
echo -e " ${BLUE}│$NC   ${COLOR1}[03]${NC} • RENEW VMESS${NC}  ${COLOR1}[06]${NC} • LOG CREATE VMESS    ${BLUE}│$NC"
echo -e " ${BLUE}│$NC                                              ${NC} ${BLUE}│$NC"
echo -e " ${BLUE}│$NC   ${COLOR1}[00]${NC} • GO BACK${NC}"                              ${BLUE}│$NC"
echo -e " ${BLUE}└───────────────────────────────────────────────┘${NC}"
echo -e "${BLUE}┌────────────────────────────────────────────────┐${NC}"
echo -e "${BLUE}│${NC}              SCRIPT RVPN STORES                ${BLUE}│$NC"
echo -e "${BLUE}└─────────────────────────────────────────────────┘${NC}" 
echo -e ""
read -p " Select menu :  "  opt
echo -e ""
case $opt in
1) clear ; add-ws ; exit ;;
2) clear ; trialvmess ; exit ;;
3) clear ; renew-ws ; exit ;;
4) clear ; del-ws ; exit ;;
5) clear ; cek-ws ; exit ;;
6) clear ; cat /etc/log-create-vmess.log ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; m-vmess ;;

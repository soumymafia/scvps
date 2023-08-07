#!/bin/bash
# =========================================
# Auther  : rvpnstores 
# =========================================
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
y="\033[0;1;37m"
wh="\033[0m"
# Getting
MYIP=$(wget -qO- ipv4.icanhazip.com);
echo "Checking VPS"
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "$y            DNS CHANGER$wh"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e " [\e[36m•1\e[0m] CHANGE DNS"
echo -e " [\e[36m•2\e[0m] Reset DNS To Default"
echo -e " [\e[36m•3\e[0m] Back To Main Menu"
echo -e ""
read -p "Select From Options [ 1 - 3 ] :  " dns
echo -e ""
case $opt in
1) clear ; ; exit ;;
2) clear ; trialvmess ; exit ;;
3) clear ; renew-ws ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; m-sshovpn ;;
esac



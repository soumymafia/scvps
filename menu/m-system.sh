#!/bin/bash
COLOR1='\033[0;34m'
NC='\e[0m'
clear
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1  $NC$COLBG1               ${WH}• VPS SETTING •                 $COLOR1  $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e " $COLOR1┌───────────────────────────────────────────────┐${NC}"
echo -e " $COLOR1 $NC   ${WH}[${COLOR1}01${WH}]${NC} ${COLOR1}• ${WH}DOMAIN MENU      ${WH}[${COLOR1}06${WH}]${NC} ${COLOR1}• ${WH}DNS CHANGER"
echo -e " $COLOR1 $NC   ${WH}[${COLOR1}02${WH}]${NC} ${COLOR1}• ${WH}SPEEDTEST        ${WH}[${COLOR1}07${WH}]${NC} ${COLOR1}• ${WH}MENU BACKUP"
echo -e " $COLOR1 $NC   ${WH}[${COLOR1}03${WH}]${NC} ${COLOR1}• ${WH}AUTOREBOOT       ${WH}[${COLOR1}08${WH}]${NC} ${COLOR1}• ${WH}MENU RESTORE"
echo -e " $COLOR1 $NC   ${WH}[${COLOR1}04${WH}]${NC} ${COLOR1}• ${WH}RESTART${NC}     ${WH}[${COLOR1}09${WH}]${NC} ${COLOR1}• ${WH}LOCK USER"
echo -e " $COLOR1 $NC   ${WH}[${COLOR1}05${WH}]${NC} ${COLOR1}• ${WH}BANDWIDTH        ${WH}[${COLOR1}10${WH}]${NC} ${COLOR1}• ${WH}UNLOCK USER"
echo -e " $COLOR1 $NC"
echo -e " $COLOR1 $NC   ${WH}[${COLOR1}00${WH}]${NC} ${COLOR1}• ${WH}MENU$NC"
echo -e " $COLOR1└───────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌────────────────────── ${WH}BY${NC} ${COLOR1}───────────────────────┐${NC}"
echo -e "$COLOR1 ${NC}                 ${WH}• RVPN STORES •${NC}                 $COLOR1 $NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e ""
echo -ne " ${WH}Select menu ${COLOR1}: ${WH}"; read opt
case $opt in
1) clear ; m-domain ; exit ;;
2) clear ; speedtest ; exit ;;
3) clear ; auto-reboot ; exit ;;
4) clear ; restart ; exit ;;
5) clear ; bw ; exit ;;
6) clear ; m-dns ; exit ;;
7) clear ; /usr/bin/backup ; exit ;;
8) clear ; /usr/bin/restore ; exit ;;
9) clear ; user-lock ; exit ;;
10) clear ; user-unlock ; exit ;;
0) clear ; menu ;; 
x) exit ;;
*) echo -e "" ; echo "Anda salah tekan" ; sleep 1 ; m-system ;;
esac

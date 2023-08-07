#!/bin/bash
MYIP=$(wget -qO- ipv4.icanhazip.com);
echo "Checking VPS"
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;100;33m        • WEB MENU •            \E[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "" 
echo -e " [\e[36m•1\e[0m] INSTALL WEB SSH"
echo -e " [\e[36m•2\e[0m] CHANGE PASSWORD WEB"
echo -e " [\e[36m•3\e[0m] RECTORY"
echo -e " [\e[36m•4\e[0m] RESTART PW WEB"
echo -e ""
echo -e " [\e[31m•0\e[0m] \e[31mBACK TO MENU\033[0m"
echo -e   ""
echo -e   "Press x or [ Ctrl+C ] • To-Exit"
echo -e   ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; wget https://raw.githubusercontent.com/rizkyckj/web/main/sslmar.sh && chmod 777 sslmar.sh && ./sslmar.sh ;;
2) clear ; nano /root/marzban/env ;;
3) clear ; cd /root/marzban ;;
4) clear ; docker compose down && docker compose up -d ;;
0) clear ; menu ;;
x) exit ;;
*) echo "Anda salah tekan" ; sleep 1 ; m-domain ;;
esac

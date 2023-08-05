#!/bin/bash
echo "Checking VPS"
#link izin ip vps
url_izin='https://raw.githubusercontent.com/rizkyckj/izin/master/izin'

#IP VPS
ip_vps=$(curl -sS ifconfig.me)

# Mendapatkan isi file izin.txt dari URL
izin=$(curl -s "$url_izin")

# Memeriksa apakah konten izin.txt berhasil didapatkan
if [[ -n "$izin" ]]; then
  while IFS= read -r line; do
    # Memisahkan nama VPS, IP VPS, dan tanggal kadaluwarsa
    nama=$(echo "$line" | awk '{print $1}')
    ipvps=$(echo "$line" | awk '{print $2}')
    tanggal=$(echo "$line" | awk '{print $3}')

    # Memeriksa apakah IP VPS saat ini cocok dengan IP VPS yang ada di izin.txt
    if [[ "$ipvps" == "$ip_vps" ]]; then
      echo "Nama VPS: $nama"
      echo "IP VPS: $ipvps"
      echo "Tanggal Kadaluwarsa: $tanggal"
      break
    fi
  done <<< "$izin"

  # Memeriksa apakah IP VPS ditemukan dalam izin.txt
  if [[ "$ipvps" != "$ip_vps" ]]; then
    echo "IP VPS tidak ditemukan dalam izin.txt"
    exit 0
  fi
else
  echo "Konten izin.txt tidak berhasil didapatkan dari URL"
  exit 0
fi

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
y='\033[0;34m'

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

echo -e "${y}┌━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┐${NC}"
echo -e "  \\E[40;1;37m[ Menu System ] \E[0m"
echo -e ""
echo -e "  \\E[40;1;37m [1] Panel Domain \E[0m"
echo -e "  \\E[40;1;37m [2] Panel Speedtest \E[0m"
echo -e "  \\E[40;1;37m [3] Panel Auto reboot \E[0m"
echo -e "  \\E[40;1;37m [4] Panel Restart service \E[0m"
echo -e "  \\E[40;1;37m [5] Panel Bandwidth \E[0m"
echo -e "  \\E[40;1;37m [6] Panel DNS \E[0m"
echo -e "  \\E[40;1;37m [7] Panel UPDATE MENU \E[0m"
echo -e "  \\E[40;1;37m [8] Banner SSH \E[0m"
echo -e "  \\E[40;1;37m [9] Bench Info \E[0m"
echo -e "${y}└━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┘${NC}"
echo -e ""
read -p " Select menu :  "  opt
echo -e ""
case $opt in
1) clear ; m-domain ; exit ;;
2) clear ; speedtest ; exit ;;
3) clear ; auto-reboot ; exit ;;
4) clear ; restart ; exit ;;
5) clear ; bw ; exit ;;
6) clear ; m-dns ; exit ;;
7) clear ; updatemenu; exit ;;
8) clear ; nano /etc/issue.net ; exit ;;
9) clear ; wget -qO- bench.sh | bash ; exit ;;
0) clear ; menu ;; 
x) exit ;;
*) echo -e "" ; echo "Anda salah tekan" ; sleep 1 ; m-system ;;
esac

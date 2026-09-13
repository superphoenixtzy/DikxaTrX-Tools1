#!/data/data/com.termux/files/usr/bin/bash

while true; do
clear
echo "======================"
echo "       DikxaPhishTrack"
echo "======================"
echo "01. Dana TrX"
echo "02. GoPay TrX"
echo "03. OVO TrX"
echo "00. KELUAR"
echo "======================"
read -p "Pilih: " pilihan

case $pilihan in
01)
termux-open html/menu1.html
;;
02)
termux-open html/menu2.html
;;
03)
termux-open html/menu3.html
;;
00)
exit
;;
*)
echo "Pilihan tidak tersedia!"
sleep 1
;;
esac
done
#!/bin/bash
# version 1.0

NC='\033[0m' 			# No Color
Black='\033[0;30m'        	# Black
Red='\033[0;31m'          	# Red
Green='\033[0;32m'        	# Green
Yellow='\033[0;33m'       	# Yellow
Blue='\033[0;34m'         	# Blue
Purple='\033[0;35m'       	# Purple
Cyan='\033[0;36m'         	# Cyan
White='\033[0;37m'        	# White

echo ""
printf "${White}Only download Scripts ${NC}"
sleep 2

printf "${White}.${NC}"
curl -k https://raw.githubusercontent.com/Hex-Dev/Mister/main/Clean/Clean_Cores.sh  --output /media/fat/Scripts/Hexatune/Clean_Cores.sh -s
printf "${White}.${NC}"
curl -k https://raw.githubusercontent.com/Hex-Dev/Mister/main/Arcade/Arcade_Reorg.sh --output  /media/fat/Scripts/Hexatune/Arcade_Reorg.sh -s
printf "${White}.${NC}"
curl -k https://raw.githubusercontent.com/Hex-Dev/Mister/main/Arcade/Cores.sh --output /media/fat/Scripts/Hexatune/Cores.sh -s
printf "${White}.${NC}"
curl -k https://raw.githubusercontent.com/Hex-Dev/Mister/main/Arcade/Capcom_Classic.sh  --output /media/fat/Scripts/Hexatune/Capcom_Classic.sh -s
printf "${White}.${NC}"
curl -k https://raw.githubusercontent.com/Hex-Dev/Mister/main/Arcade/Segasys1.sh  --output /media/fat/Scripts/Hexatune/Segasys1.sh -s
printf "${White}.${NC}"
curl -k https://raw.githubusercontent.com/Hex-Dev/Mister/main/Arcade/Segasys16.sh  --output /media/fat/Scripts/Hexatune/Segasys16.sh -s
printf "${White}.${NC}"
curl -k https://raw.githubusercontent.com/Hex-Dev/Mister/main/Arcade/Capcom_CPS.sh --output /media/fat/Scripts/Hexatune/Capcom_CPS.sh -s
printf "${White}.${NC}"
curl -k https://raw.githubusercontent.com/Hex-Dev/Mister/main/Arcade/Cave.sh --output /media/fat/Scripts/Hexatune/Cave.sh -s
printf "${White}.${NC}"
curl -k https://raw.githubusercontent.com/Hex-Dev/Mister/main/Arcade/Konami.sh --output /media/fat/Scripts/Hexatune/Konami.sh -s
printf "${White}.${NC}"
curl -k https://raw.githubusercontent.com/Hex-Dev/Mister/main/Arcade/Init.sh --output /media/fat/Scripts/Hexatune/Init.sh -s
printf "${White}.${NC}"
curl -k https://raw.githubusercontent.com/Hex-Dev/Mister/main/Arcade/Download_Scripts.sh --output /media/fat/Scripts/Hexatune/Download_Scripts.sh -s
printf "${White}.${NC}"
curl -k https://raw.githubusercontent.com/Hex-Dev/Mister/main/Arcade/By_Folder.sh --output  /media/fat/Scripts/Hexatune/By_Folder.sh -s
printf "${White}.${NC}"
curl -k https://raw.githubusercontent.com/Hex-Dev/Mister/main/Arcade/Arcade_LS_Hexatune.sh --output  /media/fat/Scripts/Hexatune/Arcade_LS_Hexatune.sh
printf "${White}.${NC}"

echo ""

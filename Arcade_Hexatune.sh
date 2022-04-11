#!/bin/bash
clear
Ver="Ver. 1.0.1"


NC='\033[0m' 				# No Color
Black='\033[0;30m'        	# Black
Red='\033[0;31m'          	# Red
Green='\033[0;32m'        	# Green
Yellow='\033[0;33m'       	# Yellow
Blue='\033[0;34m'         	# Blue
Purple='\033[0;35m'       	# Purple
Cyan='\033[0;36m'         	# Cyan
White='\033[0;37m'        	# White

echo ""
echo ""
printf "${White}$Ver ${NC}\n"
echo "Script : https://github.com/Hex-Dev/Mister/blob/main/Arcade_Hexatune.sh"
sleep 2

echo ""
printf "${Yellow}Check directory : ${NC}\n"
echo ""

		if [ -e /media/fat/Scripts/Hexatune ]
then
			printf "${White}Root${NC}"
			sleep 1
			printf "${White} > OK ${NC}\n"
else
    echo  "Création du répertoire Hexatune"
	mkdir /media/fat/Scripts/Hexatune
fi

# Download Scripts :

echo ""
printf "${White}Download & Execute Scripts ${NC}"
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

echo ""


# bash /media/fat/Scripts/Hexatune/Clean_Cores.sh
# bash /media/fat/Scripts/Hexatune/Arcade_Reorg.sh
# bash /media/fat/Scripts/Hexatune/Cores.sh
# bash /media/fat/Scripts/Hexatune/Capcom_Classic.sh

sleep 3
bash /media/fat/Scripts/Hexatune/Init.sh
sleep 3
bash /media/fat/Scripts/Hexatune/Capcom_CPS.sh
sleep 3
bash /media/fat/Scripts/Hexatune/Cave.sh
sleep 3
bash /media/fat/Scripts/Hexatune/Segasys1.sh
sleep 3
bash /media/fat/Scripts/Hexatune/Segasys16.sh
sleep 3
bash /media/fat/Scripts/Hexatune/Capcom_Classic.sh
sleep 3
bash /media/fat/Scripts/Hexatune/Konami.sh
sleep 3


echo ""
echo ""
printf "${Yellow}Update Script Arcade_Hexatune${NC}\n"
#
# Update Script Arcade_Hexatune.sh
curl -k https://raw.githubusercontent.com/Hex-Dev/Mister/main/Arcade_Hexatune.sh --output /media/fat/Scripts/Arcade_Hexatune.sh -s &> /dev/null

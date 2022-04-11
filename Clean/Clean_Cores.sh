#!/bin/bash
# version 1.0

NC='\033[0m'			# No Color
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
	printf "${Green}[ Clean Cores V1.0 ] ${NC}\n"
	echo ""


curl -k https://raw.githubusercontent.com/Hex-Dev/Mister/main/Clean/Computers.txt --output /media/fat/Scripts/Hexatune/Computers.txt -s
curl -k https://raw.githubusercontent.com/Hex-Dev/Mister/main/Clean/Consoles.txt --output /media/fat/Scripts/Hexatune/Consoles.txt -s

	echo ""
	printf "${Green}[ Consoles ] ${NC}\n"
	echo ""
	
	sleep 3

cd /media/fat/_Console

for n in $( cat /media/fat/Scripts/Hexatune/Consoles.txt )
do

	if [ -e $n ]
then
	echo "Suppression du core "$n | tr '*' ' '
	rm $n
else
    echo "Le core n'est pas présent : " $n | tr '*' ' '
fi

done


	echo ""
	printf "${Green}[ Computers ] ${NC}\n"
	echo ""


cd /media/fat/_Computer


for i in $( cat /media/fat/Scripts/Hexatune/Computers.txt )
do

	if  [ -e $i ]
then
	echo "Suppression du core "$i  | tr '*' ' '
	rm $i
else
    echo  "Le core n'est pas présent : " $i  | tr '*' ' '
fi

done

echo ""
exit




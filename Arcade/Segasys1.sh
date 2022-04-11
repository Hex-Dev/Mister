#!/bin/bash
############################################ Template #################################################
Title="SEGA SYSTEM 1"
Ver="Ver. 1.0.1"
System="Sega System 1"
Dir="_System_1"
Rbf="SEGASYS1_"
Path="/media/fat/_Bornes/$Dir"
Cores="/media/fat/_Bornes/cores"

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
printf "${Red}[ $Title ($Ver) ]${NC}\n"
echo ""

#######################################################################################################


printf "${Yellow}Checks : ${NC}\n"
echo ""

	
if [ -e $Path ]
then
	printf "${White}Directory $System${NC}"
	sleep 1
	printf "${White}> OK ${NC}\n"
else
    	printf "${White}Création du répertoire pour $System ${NC}\n"
	mkdir $Path
fi

############ CORE Sega System 1  ################################################################
cp /media/fat/_Arcade/cores/$Rbf* $Cores

printf "${White}Core $System ${NC}"

if [ -e $Cores/$Rbf* ]
then
	sleep 1
	printf "${White} > OK ${NC}\n"
else
	printf "${Red} > Le core n'est pas présent ${NC}\n"
fi

############ MRA Sega System 1  #################################################################

echo " "
printf "${Red}MRA $System : ${NC}\n"
echo " "


IFS=$'\n'       # make newlines the only separator
for file in /media/fat/_Arcade/*.mra
do
    # if grep -q ">Sega System 1<" $file
    if grep -q ">segasys1<" $file
    
	then
        echo -n "Copy : " 
		# echo ${file} | cut -d"/" -f5
		echo ${file} | rev | cut -d"/" -f1 | rev
		cp -p $file $Path
	fi
done



############ Sega System 1 : END #################################################################

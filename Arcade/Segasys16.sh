#!/bin/bash
############################################ Template #################################################
Title="SEGA SYSTEM 16"
Ver="Ver. 1.0.1"
System="Sega System 16"
Dir="_System_16"
Rbf="jts16"
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
#######################################################################################################

echo ""
printf "${Red}[ $Title ($Ver) ]${NC}\n"
echo ""
printf "${Yellow}Checks : ${NC}\n"
echo ""




	
if [ -e $Path ]
then
	printf "${White}Directory $System${NC}"
	sleep 1
	printf "${White} > OK ${NC}\n"
else
    	printf "${White}Création du répertoire pour $System ${NC}\n"
	mkdir $Path
fi

############ CORE Sega System 16  ################################################################
echo ""
printf "${Red}Core $System :${NC}\n"
echo ""

cp /media/fat/_Arcade/cores/$Rbf* $Cores
sleep 1

# find $Cores -name "jts16*" | cut -d"/" -f6
# finte !!
find $Cores -name "jts16*" | rev | cut -d'/' -f 1 | rev

############ MRA Sega System 16  #################################################################

echo " "
printf "${Red}MRA $System : ${NC}\n"
echo " "


IFS=$'\n'       # make newlines the only separator
# for file in /media/fat/_Arcade/*.mra
for file in $(find /media/fat/_Arcade -maxdepth 2 -type f -iname *.mra)

do
    #if grep -q ">jts16<" $file
    if grep -q ">jts16" $file
	then
        echo -n "Copy : " 
		# echo ${file} | cut -d"/" -f5
		echo ${file} | rev | cut -d"/" -f1 | rev
		cp $file $Path
	fi
done



echo ""

############ Sega System 16 : END #################################################################

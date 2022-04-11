#!/bin/bash
# version 1.0
echo ""

NC='\033[0m' 			# No Color
Black='\033[0;30m'        	# Black
Red='\033[0;31m'          	# Red
Green='\033[0;32m'        	# Green
Yellow='\033[0;33m'       	# Yellow
Blue='\033[0;34m'         	# Blue
Purple='\033[0;35m'       	# Purple
Cyan='\033[0;36m'         	# Cyan
White='\033[0;37m'        	# White

############ Cave  ################################################################

System="Cave"
Dir="_Cave"
Rbf="Cave"

printf "${Red}[ $System ]${NC}\n"
echo ""
printf "${Yellow}Checks : ${NC}\n"
echo ""



Path="/media/fat/_Bornes/$Dir"
Cores="/media/fat/_Bornes/cores"


	
if [ -e $Path ]
then
	printf "${White}Directory $System${NC}"
	sleep 1
	printf "${White} > OK ${NC}\n"
else
    	printf "${White}Création du répertoire pour $System ${NC}\n"
	mkdir $Path
fi

############ CORE Cave  ################################################################


cp /media/fat/_Arcade/cores/$Rbf* $Cores 2>/dev/null
cp /media/fat/_Terrier/cores/Cave_* $Cores 2>/dev/null
cp /media/fat/_Terrier/cores/CaveTest* $Cores 2>/dev/null

printf "${White}Core $System ${NC}"

if [ -e $Cores/Cave_* ]
then
	sleep 1
	printf "${White} > OK ${NC}\n"
else
	printf "${Red} > Le core n'est pas présent ${NC}\n"
fi

############ MRA Cave  #################################################################

echo " "
printf "${Red}MRA $System : ${NC}\n"
echo " "


IFS=$'\n'       # make newlines the only separator
for file in /media/fat/_Arcade/*.mra
do
    if grep -q "<rbf>Cave" $file 
	then
        echo -n "Copy : " 
		# echo ${file} | cut -d"/" -f5
		echo ${file} | rev | cut -d"/" -f1 | rev
		cp $file $Path
	fi
done


IFS=$'\n'       # make newlines the only separator
for file in $(find /media/fat/_Terrier -maxdepth 2 -type f -iname *.mra)
do
    if grep -iq "<rbf>Cave" $file 
	then
        echo -n "Copy : " 
		# echo ${file} | cut -d"/" -f5
		echo ${file} | rev | cut -d"/" -f1 | rev
		cp $file $Path
	fi
done

############ Cave : END #################################################################

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

############ Capcom CPS1  ################################################################

System="Capcom CPS1"
Dir="_CPS1"
Rbf="jtcps1_"

printf "${Red}[ $System ]${NC}\n"
echo ""
printf "${Yellow}Checks : ${NC}\n"
echo ""



Path="/media/fat/_Bornes/$Dir"
Cores="/media/fat/_Bornes/cores"


	
if [ -e $Path ]
then
	printf "${White}Directory $System > OK ${NC}\n"
else
    	printf "${White}Création du répertoire pour $System ${NC}\n"
	mkdir $Path
fi

############ CORE Capcom CPS1  ################################################################

printf "${White}Core $System ${NC}"

cp /media/fat/_Arcade/cores/$Rbf* $Cores
if [ -e $Cores/$Rbf* ]
then
	printf "${White} > OK ${NC}\n"
else
	printf "${Red} > Le core n'est pas présent ${NC}\n"
fi

############ MRA Capcom CPS1  #################################################################

echo " "
printf "${Red}MRA $System : ${NC}\n"
echo " "


IFS=$'\n'       # make newlines the only separator
for file in /media/fat/_Arcade/*.mra
do
    if grep -q ">jtcps1<" $file 
	then
        echo -n "Copy : " 
		# echo ${file} | cut -d"/" -f5
		echo ${file} | rev | cut -d"/" -f1 | rev
		cp $file $Path
	fi
done

############ Capcom CPS1 : END #################################################################

sleep 3

############ Capcom CPS1.5  ################################################################
echo ""
System="Capcom CPS1.5"
Dir="_CPS15"
Rbf="jtcps15_"

printf "${Red}[ $System ]${NC}\n"
echo ""
printf "${Yellow}Checks : ${NC}\n"
echo ""



Path="/media/fat/_Bornes/$Dir"
Cores="/media/fat/_Bornes/cores"


	
if [ -e $Path ]
then
	printf "${White}Directory $System > OK ${NC}\n"
else
    	printf "${White}Création du répertoire pour $System ${NC}\n"
	mkdir $Path
fi

############ CORE Capcom CPS1.5  ################################################################

printf "${White}Core $System ${NC}"

cp /media/fat/_Arcade/cores/$Rbf* $Cores
if [ -e $Cores/$Rbf* ]
then
	printf "${White} > OK ${NC}\n"
else
	printf "${Red} > Le core n'est pas présent ${NC}\n"
fi

############ MRA Capcom CPS1.5  #################################################################

echo " "
printf "${Red}MRA $System : ${NC}\n"
echo " "


IFS=$'\n'       # make newlines the only separator
for file in /media/fat/_Arcade/*.mra
do
    if grep -q ">jtcps15<" $file 
	then
        echo -n "Copy : " 
		# echo ${file} | cut -d"/" -f5
		echo ${file} | rev | cut -d"/" -f1 | rev
		cp $file $Path
	fi
done

############ Capcom CPS1.5 : END #################################################################
sleep 3
############ Capcom CPS2 ################################################################
echo ""
System="Capcom CPS2"
Dir="_CPS2"
Rbf="jtcps2_"

printf "${Red}[ $System ]${NC}\n"
echo ""
printf "${Yellow}Checks : ${NC}\n"
echo ""



Path="/media/fat/_Bornes/$Dir"
Cores="/media/fat/_Bornes/cores"


	
if [ -e $Path ]
then
	printf "${White}Directory $System > OK ${NC}\n"
else
    	printf "${White}Création du répertoire pour $System ${NC}\n"
	mkdir $Path
fi

############ CORE Capcom CPS2  ################################################################

printf "${White}Core $System ${NC}"

cp /media/fat/_Arcade/cores/$Rbf* $Cores
if [ -e $Cores/$Rbf* ]
then
	printf "${White} > OK ${NC}\n"
else
	printf "${Red} > Le core n'est pas présent ${NC}\n"
fi

############ MRA Capcom CPS2  #################################################################

echo " "
printf "${Red}MRA $System : ${NC}\n"
echo " "


IFS=$'\n'       # make newlines the only separator
for file in /media/fat/_Arcade/*.mra
do
    if grep -q ">jtcps2<" $file 
	then
        echo -n "Copy : " 
		# echo ${file} | cut -d"/" -f5
		echo ${file} | rev | cut -d"/" -f1 | rev
		cp $file $Path
	fi
done

############ Capcom CPS2 : END #################################################################

#!/bin/bash
# Version 1.0

NC='\033[0m'		# No Color
Black='\033[0;30m'	# Black
Red='\033[0;31m'	# Red
Green='\033[0;32m'	# Green
Yellow='\033[0;33m'	# Yellow
Blue='\033[0;34m'	# Blue
Purple='\033[0;35m'	# Purple
Cyan='\033[0;36m'	# Cyan
White='\033[0;37m'	# White

echo ""

printf "${Yellow}           [ Reorg Arcade V1.0 ]           ${NC}\n"


echo ""
#########################################################################################
if [ -e /media/fat/_Bornes ]
	then
		:
	else
    	echo  "Création du répertoire Borne "
		mkdir /media/fat/_Bornes
fi

#########################################################################################

if [ -e /media/fat/_Bornes/cores ]
	then
		:
	else
		echo  "Création du répertoire cores "
		mkdir /media/fat/_Bornes/cores
fi

#########################################################################################

########## Remove Cores

cores="/media/fat/_Bornes/cores"

if [ -e $cores\*.rbf ]
then
rm $cores/*.rbf
else
:
fi

#########################################################################################

	echo ""
	printf "${Yellow}Vérification de l'arborescence : ${NC}\n"
	echo ""

#########################################################################################

CPS1="_CPS1"
		if [ -e /media/fat/_Bornes/$CPS1 ]
then
	printf "${Green} - Directory $CPS1 		> OK ${NC}\n"
else
    echo  "Création du répertoire $CPS1"
	mkdir /media/fat/_Bornes/$CPS1
fi

cp /media/fat/_Arcade/cores/jtcps1_* $cores

#########################################################################################

CPS15="_CPS15"
		if [ -e /media/fat/_Bornes/$CPS15 ]
then
	printf "${Green} - Directory $CPS15 		> OK ${NC}\n"
else
    echo  "Création du répertoire $CPS15"
	mkdir /media/fat/_Bornes/$CPS15
fi

cp /media/fat/_Arcade/cores/jtcps15_* $cores

#########################################################################################

CPS2="_CPS2"
		if [ -e /media/fat/_Bornes/$CPS2 ]
then
	printf "${Green} - Directory $CPS2 		> OK ${NC}\n"
else
    echo  "Création du répertoire $CPS2"
	mkdir /media/fat/_Bornes/$CPS2
fi

cp /media/fat/_Arcade/cores/jtcps2_* $cores

#########################################################################################

CAVE="_CAVE"
		if [ -e /media/fat/_Bornes/$CAVE ]
then
	printf "${Green} - Directory $CAVE 		> OK ${NC}\n"
else
    echo  "Création du répertoire $CAVE"
	mkdir /media/fat/_Bornes/$CAVE
fi

cp /media/fat/_Arcade/cores/Cave* $cores 2>/dev/null
# cp /media/fat/_Terrier/cores/CaveTest* $cores 2>/dev/null

#########################################################################################

jts16="_System_16"
		if [ -e /media/fat/_Bornes/$jts16 ]
then
	printf "${Green} - Directory $jts16 	> OK ${NC}\n"
else
    echo  "Création du répertoire $jts16"
	mkdir /media/fat/_Bornes/$jts16
fi

cp /media/fat/_Arcade/cores/jts16* $cores 2>/dev/null
cp /media/fat/_Terrier/cores/jts16* $cores 2>/dev/null

#########################################################################################

Konami="_Konami"
		if [ -e /media/fat/_Bornes/$Konami ]
then
	printf "${Green} - Directory $Konami 		> OK ${NC}\n"
else
    echo  "Création du répertoire $Konami"
	mkdir /media/fat/_Bornes/$Konami
fi

########### Capcom Classic #######################################################
	
Capcom="_Capcom"
		if [ -e /media/fat/_Bornes/$Capcom ]
then
	printf "${Green} - Directory $Capcom 		> OK ${NC}\n"
else
    echo  "Création du répertoire $Capcom"
	mkdir /media/fat/_Bornes/$Capcom
fi

############################################################################

########### Copy MRA ########################################

echo " "
bash /media/fat/Scripts/Hexatune/Capcom_Classic.sh

bash /media/fat/Scripts/Hexatune/Segasys1.sh

######
#	IFS=$'\n'       # make newlines the only separator
#	for i in $( cat /media/fat/Scripts/Hexatune/Arcade/Capcom.txt )
#	do
#	if [ -e "/media/fat/_Arcade/$i" ]
#	then
#	echo "Copie de : $i"
#	cp /media/fat/_Arcade/$i $pcapcom
#	else
#    echo "Erreur : le mra n'existe pas" $i
#	fi
#
#	done
######




#########################################################################################





################################## Tri MRA Dynamique ###################################

############ MRA CPS1 ###################################################################

echo " "
printf "${Red}Capcom CPS1 : ${NC}\n"
echo " "
System="_CPS1"
PSystem="/media/fat/_Bornes/$System/"

IFS=$'\n'       # make newlines the only separator
for file in /media/fat/_Arcade/*.mra
do
    if grep -q ">jtcps1<" $file 
	then
	
        echo -n "Copy : " 
		echo ${file} | cut -d"/" -f5
		cp $file $PSystem
 
	fi
	
done


############ MRA CPS1.5 #################################################################

echo " "
printf "${Red}Capcom CPS1.5 : ${NC}\n"
echo " "
System="_CPS15"
PSystem="/media/fat/_Bornes/$System/"

IFS=$'\n'       # make newlines the only separator
for file in /media/fat/_Arcade/*.mra
do
    if grep -q ">jtcps15<" $file 
	then
        echo -n "Copy : " 
		echo ${file} | cut -d"/" -f5
		cp $file $PSystem
	fi
done


############ MRA CPS2 ###################################################################

echo " "
printf "${Red}Capcom CPS2 : ${NC}\n"
echo " "
System="_CPS2"
PSystem="/media/fat/_Bornes/$System/"

IFS=$'\n'       # make newlines the only separator
for file in /media/fat/_Arcade/*.mra
do
    if grep -q ">jtcps2<" $file 
	then
        echo -n "Copy : " 
		echo ${file} | cut -d"/" -f5
		cp $file $PSystem
	fi
done

############ MRA SYS16 ##################################################################

echo " "
printf "${Red}SEGA SYSTEM 16 : ${NC}\n"
echo " "
System="_System_16"
PSystem="/media/fat/_Bornes/$System/"

IFS=$'\n'       # make newlines the only separator
for file in /media/fat/_Arcade/*.mra
do
    if grep -q ">jts16<" $file 
	then
        echo -n "Copy : " 
		echo ${file} | cut -d"/" -f5
		cp $file $PSystem
	fi
done

############ MRA Cave ###################################################################

echo " "
printf "${Red}CAVE : ${NC}\n"
echo " "
System="_CAVE"
PSystem="/media/fat/_Bornes/$System/"

IFS=$'\n'       # make newlines the only separator
for file in /media/fat/_Arcade/*.mra
do
    if grep -q "<rbf>Cave" $file 
	then
        echo -n "Copy : " 
		echo ${file} | cut -d"/" -f5
		cp $file $PSystem
	fi
done

############ MRA Konami #################################################################

echo " "
printf "${Red}Konami : ${NC}\n"
echo " "
System="_Konami"
PSystem="/media/fat/_Bornes/$System/"

IFS=$'\n'       # make newlines the only separator
for file in /media/fat/_Arcade/*.mra
do
    if grep -q ">Konami<" $file 
	then
        echo -n "Copy : " 
		echo ${file} | cut -d"/" -f5
		cp $file $PSystem
	fi
done

############ FIN ########################################################################


# Memo
# "Download List Games :"
# wget -q -O /media/fat/Scripts/Hexatune/Arcade/CPS1.5.txt  https://raw.githubusercontent.com/Hex-Dev/Mister/main/Arcade/CPS1.5.txt
# wget -q -O /media/fat/Scripts/Hexatune/Arcade/CPS1.txt  https://raw.githubusercontent.com/Hex-Dev/Mister/main/Arcade/CPS1.txt
# wget -q -O /media/fat/Scripts/Hexatune/Arcade/CPS2.txt  https://raw.githubusercontent.com/Hex-Dev/Mister/main/Arcade/CPS2.txt
# wget -q -O /media/fat/Scripts/Hexatune/Arcade/Cave.txt  https://raw.githubusercontent.com/Hex-Dev/Mister/main/Arcade/Cave.txt
# wget -q -O /media/fat/Scripts/Hexatune/Arcade/SYS16.txt https://raw.githubusercontent.com/Hex-Dev/Mister/main/Arcade/SYS16.txt

# curl -k https://raw.githubusercontent.com/Hex-Dev/Mister/main/Arcade/Capcom.txt --output /media/fat/Scripts/Hexatune/Arcade/Capcom.txt -s
# curl -k https://raw.githubusercontent.com/Hex-Dev/Mister/main/Arcade/Konami.txt --output /media/fat/Scripts/Hexatune/Arcade/Konami.txt -s

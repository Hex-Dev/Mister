#!/bin/bash
Ver="Ver. 1.0.0"

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
echo ""
printf "${Yellow}[ Reorg Arcade ($Ver) ]${NC}\n"
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


cores="/media/fat/_Bornes/cores"

#if [ -e $cores\*.rbf ]
#then
#rm $cores/*.rbf
#else
#:
#fi


IFS=$'\n'       # make newlines the only separator
for file in $cores/*.rbf
do
         echo -n "Suppression du core : " 
		echo ${file} | cut -d"/" -f6
		# echo ${file} | rev | cut -d"/" -f1 | rev
		rm ${file}
done



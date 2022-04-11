#!/bin/bash
############################################ Template #################################################
Title="Reorg By Folder"
Ver="Ver. 1.0.1"
#System="Sega System 16"
#Dir="_System_16"
#Rbf="jts16"
#Path="/media/fat/_Bornes/$Dir"
#Cores="/media/fat/_Bornes/cores"


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

System="_System_16"

IFS=$'\n' # make newlines the only separator
for file in /media/fat/_Bornes/$System/*.mra
do
		dir=$(echo ${file} | rev | cut -d"/" -f1 | rev | cut -d"(" -f1)
		
if [ -e /media/fat/_Bornes/$System/_$dir ]
	then
		mv $file /media/fat/_Bornes/$System/_$dir	
			else
				printf "${Yellow}Création du répertoire : _$dir ${NC}\n"
				mkdir /media/fat/_Bornes/$System/_$dir
				sleep 2
				mv $file /media/fat/_Bornes/$System/_$dir
fi

done
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

############ Capcom Classic  ################################################################
Name="Capcom Classic"
System="Capcom_Classic"
Dir="_Capcom"
Path="/media/fat/_Bornes/$Dir"
Cores="/media/fat/_Bornes/cores"

printf "${Red}$System : ${NC}\n"
echo ""
printf "${Yellow}Checks : ${NC}\n"
echo ""

	
if [ -e $Path ]
then
	printf "${White}Directory $Name${NC}"
	sleep 1
	printf "${White} > OK ${NC}\n"
else
    	printf "${White}Création du répertoire pour $Name ${NC}\n"
	mkdir $Path
fi

############   ################################################################

if [ -e /media/fat/Scripts/Hexatune/cores.txt ]
then
rm /media/fat/Scripts/Hexatune/cores.txt
fi

if [ -e /media/fat/Scripts/Hexatune/TEMP.txt ]
then
rm /media/fat/Scripts/Hexatune/TEMP.txt
fi

###################### Capcom Classic ##################################################################




if [ -e /media/fat/Scripts/Hexatune/$System.txt ]
then
rm /media/fat/Scripts/Hexatune/$System.txt
fi


for core in $Path/*.mra
do

echo $core  >> /media/fat/Scripts/Hexatune/cores.txt


done



IFS=$'\n'       # make newlines the only separator
for core in $(cat /media/fat/Scripts/Hexatune/cores.txt)
do

( grep "rbf" $core | sed ' s/ //g ; s/<rbf>// ; s/[/]// ; s/<rbf>// ; s/[[:space:]]// ; s/.*>// ' ) >> /media/fat/Scripts/Hexatune/$System.txt

done

perl -pi -e 's/\r//g' /media/fat/Scripts/Hexatune/$System.txt
perl -lne '$seen{$_}++ and next or print;' /media/fat/Scripts/Hexatune/$System.txt > /media/fat/Scripts/Hexatune/TEMP.txt



echo ""

IFS=$'\n'
for rbf in $(cat /media/fat/Scripts/Hexatune/TEMP.txt )
do

printf "${White}Copy Core : $rbf ${NC}\n"
find /media/fat/_Arcade/cores -maxdepth 1 -type f -iname $rbf* -exec cp {} /media/fat/_Bornes/cores/ \;

done

############ MRA Capcom classic  #################################################################

echo " "
printf "${Red}MRA $System : ${NC}\n"
echo " "

IFS=$'\n'       # make newlines the only separator
for file in /media/fat/_Arcade/*.mra
do
    if grep -i ">capcom<" $file -q
	then
	if grep -iL "cps" $file &> /dev/null
	then
	:
	else
	echo -n "Copy : "
	# echo ${file} | cut -d"/" -f5
	echo ${file} | rev | cut -d"/" -f1 | rev
	cp $file $Path
	fi

	fi
	
	done

############ Capcom Classic : END #################################################################

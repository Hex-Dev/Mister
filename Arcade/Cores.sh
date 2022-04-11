#!/bin/bash
# Version 1.0

NC='\033[0m'               # No Color
Black='\033[0;30m'        	# Black
Red='\033[0;31m'          	# Red
Green='\033[0;32m'        	# Green
Yellow='\033[0;33m'       	# Yellow
Blue='\033[0;34m'         	# Blue
Purple='\033[0;35m'       	# Purple
Cyan='\033[0;36m'         	# Cyan
White='\033[0;37m'        	# White

if [ -e /media/fat/Scripts/Hexatune/cores.txt ]
then
rm /media/fat/Scripts/Hexatune/cores.txt
fi

if [ -e /media/fat/Scripts/Hexatune/TEMP.txt ]
then
rm /media/fat/Scripts/Hexatune/TEMP.txt
fi

###################### Konami ##################################################################


System="_Konami"
PSystem="/media/fat/_Bornes/$System/"

echo ""
printf "${Red}Cores$System : ${NC}\n" | tr '_' ' '


if [ -e /media/fat/Scripts/Hexatune/$System.txt ]
then
rm /media/fat/Scripts/Hexatune/$System.txt
fi

sleep 3

for core in $PSystem*.mra
do

echo $core  >> /media/fat/Scripts/Hexatune/cores.txt


done



IFS=$'\n'       # make newlines the only separator
for core in $(cat /media/fat/Scripts/Hexatune/cores.txt)
do

( grep "rbf" $core | sed ' s/ //g ; s/<rbf>// ; s/[/]// ; s/<rbf>// ; s/[[:space:]]// ' ) >> /media/fat/Scripts/Hexatune/$System.txt

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


 ##########################Capcom ######################################################################################
 
 
System="_Capcom"
PSystem="/media/fat/_Bornes/$System/"

echo ""
printf "${Red}Cores$System Classic : ${NC}\n" | tr '_' ' '

if [ -e /media/fat/Scripts/Hexatune/$System.txt ]
then
rm /media/fat/Scripts/Hexatune/$System.txt
fi

rm /media/fat/Scripts/Hexatune/cores.txt
sleep 3

for core in $PSystem*.mra
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

echo ""



# Memo 
# printf "${Green}CORES : ${NC}\n"
# echo "Copy core :  ${rbf} # | cut -d"/" -f5"
#find -iname $core* /media/fat/_Arcade/cores
#find /media/fat/_Arcade/ -maxdepth 1 -type f -iname $core*
#find /media/fat/_Arcade/cores/ -iname $core*
# (grep "rbf" $core | sed ' s/[[:space:]]// ; s/[/]// ; s/<rbf>// ; s/<rbf>// ; s/[[:space:]]// ') >> /media/fat/Scripts/Hexatune/cores.txt

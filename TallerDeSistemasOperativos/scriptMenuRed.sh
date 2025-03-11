#! /bin/bash

echo "Menu Scripts"
while true
do
	echo "1)Denegar ping remoto ip"
	echo "2)Permitir pin remoto ip"
	echo "3)Denegar puerto logico 22"
	echo "4)Permetir puerto logico 22"
	echo "5)Denegar puerto logico 22 rango de ip´s"
	echo "6)Permitir puerto logico 22 rango de ip´s"
	echo "7)Denegar puerto logico 22 mac"
	echo "8)Permitir puerto logico 22 mac"
	echo "9)Ver reglas de red"
	echo "10) Salir"
	read x
	case $x in
		1)
		./scriptPing.sh
		;;
		2)
		./scriptPing2.sh
		;;
		3)
		./scriptBlocked.sh
		;;
		4)
		./scriptDBlocked.sh
		;;
		5)
		./scriptRango.sh
		;;
		6)
		./scriptRango2.sh
		;;
		7)
		./scriptMac.sh
		;;
		8)
		./scriptMac2.sh
		;;
		9)
		./scriptRules.sh
		;;
		10)
		exit
		echo "Mommy Delete The Pictures"
		;;
		esac
	done
echo"fin del programa"
		
	

#!/bin/bash
##realizará las capturas de la prebeshell.
trap '' 2 20
casita="$PWD"
./instalar.sh
clear
PS1="\e[46;97m$PWD//$(whoami)//$HOSTNAME\e[0m>>"
echo -e "\e[41;37mLeSerge\e[0m y \e[44;97mHéctor\e[0m presentan su \e[91mPre\e[32mbe\e[34mshell\e[0m"
echo -e "\e[36mPara conocer los comandos escribe HelpPlox\e[94m"
while [ 1 ]; ##repetición hasta que se elija salir
do
	echo -e -n "$PS1"
	read -e a b c d e f g ##prompt de la prebeshell
	if [[ "$a" = "prebeplayer" ]];then ##estructura para elegir alguna opción.
		lugar="$PWD"
		cd $casita
		./PrebePlay.sh
		cd $lugar
	elif [[ "$a" == "buscador" ]];then
		lugar="$PWD"
		cd $casita
		./buscador.sh $b $c
		cd $lugar
	elif [[ "$a" == "salir" ]];then
		exit 1000
	elif [[ "$a" == "arbolito" ]];then
		lugar="$PWD"
		cd $casita
		./arbolito.sh
		cd $lugar
	elif [[ "$a" == "fork" ]];then
		clear
		lugar="$PWD"
		cd $casita
		cd juegos/fork
		./fork.sh
		cd $lugar
	elif [[ "$a" == "lxhero" ]];then
		clear
		lugar="$PWD"
		cd $casita
		cd juegos/lxhero
		./lxhero.sh
		cd $lugar
	elif [[ "$a" == "juego3" ]];then
		echo "mostrar juego 3"
	elif [[ "$a" == "date" ]];then
		mkdir holaholayalleguetrajepollitoyespam12342.192.168.255.255.hechobajolicenciagpl
		stat -c%y holaholayalleguetrajepollitoyespam12342.192.168.255.255.hechobajolicenciagpl
		rm -d holaholayalleguetrajepollitoyespam12342.192.168.255.255.hechobajolicenciagpl
	elif [[ "$a" == "HelpPlox" ]];then
		./ManPage.sh
	elif [[ "$a" == "fecha" ]];then
		sudo /sbin/hwclock
	elif [[ "$a" == 'exit' ]];then
		echo -e "\e[91mEscriba salir, >:v\e[94m"
	else
		$a $b $c $d $e $f $g
	fi
done

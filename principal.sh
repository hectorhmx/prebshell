#!/bin/bash
##realizará las capturas de la prebeshell.
trap '' 2 20
casita="$PWD"
clear
echo "para conocer los comandos escribe HelpPlox"
while [ 1 ]; ##repetición hasta que se elija salir
do
	read -p  "$PWD //$HOSTTYPE//$HOSTNAME   " a b c d e f g ##prompt de la prebeshell
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
		export exit
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
		echo "Escriba salir, no mame"
	else
		$a $b $c $d $e $f $g
	fi
done

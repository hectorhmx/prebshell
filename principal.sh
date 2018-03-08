#!/bin/bash
##realizará las capturas de la prebeshell.
clear
echo "para conocer los comandos escribe HelpPlox"
while [ 1 ]; ##repetición hasta que se elija salir
do
	read -p  "$PWD//$HOSTTYPE//$HOSTNAME   " a b c ##prompt de la prebeshell
	echo $a
	if [[ "$a" = "prebeplayer" ]];then ##estructura para elegir alguna opción.
		./PrebePlay.sh
	elif [[ "$a" == "buscador" ]];then
		./buscador.sh $b $c
	elif [[ "$a" == "salir" ]];then
		exit 1000
	elif [[ "$a" == "arbolito" ]];then
		./arbolito.sh
	elif [[ "$a" == "juego1" ]];then
		echo "mostrar juego 1"
	elif [[ "$a" == "juego2" ]];then
		echo "mostrar juego 2"
	elif [[ "$a" == "juego3" ]];then
		echo "mostrar juego 3"
	elif [[ "$a" == "date" ]];then
		mkdir holaholayalleguetrajepollitoyespam12342.192.168.255.255.hechobajolicenciagpl
		stat -c%y holaholayalleguetrajepollitoyespam12342.192.168.255.255.hechobajolicenciagpl
		rm -d holaholayalleguetrajepollitoyespam12342.192.168.255.255.hechobajolicenciagpl
	elif [[ "$a" == "HelpPlox" ]];then
		./ManPage.sh
	else
		echo "comando equivocado"
	fi
done

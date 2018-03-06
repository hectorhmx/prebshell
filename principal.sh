#!/bin/bash
##realizará las capturas de la prebeshell.
BOOL=1
while [ $BOOL ]; ##repetición hasta que se elija salir
do
	read -p "$PWD//$HOSTTYPE//$HOSTNAME   " ##prompt de la prebeshell
		if [[ "$1"=="prebeplayer" ]];then ##estructura para elegir alguna opción.
		./prebeplayer.sh
		elif [[ "$1"=="buscador" ]];then
		./buscador.sh $2 $3
		elif [[ "$1"=="salir" ]];then
			$BOOL = 0
		elif [[ "$1"=="arbolito" ]];then
		./tree.sh
		elif [[ "$1"=="juego1" ]];then
			echo "mostrar juego 1"
		elif [[ "$1"=="juego2" ]];then
			echo "mostrar juego 2"
		elif [[ "$1"=="juego3" ]];then
			echo "mostrar juego 3"
		elif [[ "$1"=="date" ]];then
			mkdir holaholayalleguetrajepollitoyespam12342.192.168.255.255.hechobajolicenciagpl
			stat -c%y holaholayalleguetrajepollitoyespam12342.192.168.255.255.hechobajolicenciagpl | echo
			rm holaholayalleguetrajepollitoyespam12342.192.168.255.255.hechobajolicenciagpl
		else
			echo "comando equivocado"
		fi
done
exit

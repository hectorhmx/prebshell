#!/bin/bash

clear
echo -e "Bienvenido a lxhero, la versión más trucha que podrás encontrar de un simulador musical :3"
echo -e "Puedes seleccionar cualquier canción de nuestro amplio repertorio, o también puedes escoger el modo libre"
echo -e "Por favor selecciona una opción:\n\n\t1)Abrir repertorio.\n\t2)Modo libre."
read -e -p ">> " option
case $option in
	1)	clear
		echo -e "1)Martinillo v:"
		read -p ">>" RepIndex
		./hero.sh
		echo "Ahora es tu turno, intenta reproducir los patrones en orden"
		sleep 15
		./playing.sh
		echo "$Cadena_id $Cadena_id_2"
		if [[ "$Cadena_id" == "$Cadena_id_2" ]]; then
			echo "Lo lograste!"
		else
			echo "No lograste reproducir los patrones de manera correcta, vuelve a intentarlo!"
		fi
		echo "Gracias por jugar lxhero :3"
		;;

	2)	clear
		echo -e "En el modo libre puedes utilizar cualquier tecla del intervalo [a,ñ]"
		echo -e "Si quisieras poner un silencio, presiona p"
		echo -e "Si deseas salir, presiona 0"
		sleep 8
		./playing.sh
		echo -e "La cadena que formaste fue: $Cadena_id_2"
		;;
esac

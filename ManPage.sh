#!/bin/bash

echo "La ayuda está en camino, este es el menú de la PrebeShell"
while [ $option -ne 6 ]; do
	echo -e "Comandos disponibles:\n\t1)Games\n\t2)PrebePlayer\n\t3)DaTree\n\t4)DaDate\n\t5)DaTime\n\t6)LeExit"
	echo -e "Por favor, eliga una opción: \n\t"
	read -e option
	case $option in
		1)
			echo -e "\n\ta) Ahorcado"
			echo -e "\n\tb) Gato"
			echo -e "\n\tc) Hola"
			read -e gameoption
			echo "Su opción fue $gameoption";;
		2)
			echo -e "\n y aqui pondria musica si supiera como :v";;
		3)
			echo -e "\n imaginemos que sé implementar el comando tree v:";;
		4)
			echo -e $ cal;;
		5)
			echo "";;
		6)
			exit;;
	esac
done

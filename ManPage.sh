#!/bin/bash
trap '' 2 20
ayiuda(){
clear
echo -e "\e[33mLa ayuda está en camino, este es el menú de la PrebeShell\e[0m"
while [ 1 ]; do
	echo -e "\e[92mComandos disponibles:\n\t1)Games\n\t2)PrebePlayer\n\t3)arbolito\n\t4)DaDate\n\t5)DaFecha\n\t6)LeExit(comando)\n\t7)Buscar\n\t8)Otros\n\t9)Salir de la manpage\e[0m"
	echo -e "\e[32m\nPor favor, eliga una opción: \n\t\e[0m"
	read -e option
	case $option in
		1)
			echo -e "\e[34m\n\ta) Fork"
			echo -e "\e[34m\n\tb) LXHERO"
			echo -e "\e[34m\n\tc) Ahorcado"
			read -e gameoption
			echo -e "\e[37mSu opción fue  $gameoption"
				while [[ 1 ]];do
				if [[ $gameoption == "a" ]];then
					echo -e "\e[36m\nEscriba el comando fork y se abrirá una trivia"
					read
					ayiuda
					exit 1000
				elif [[ $gameoption == "b" ]];then
					echo -e "\e[36m\nEscriba el comando lxhero y se abrirá un juego que simula un teclado virtual"
					echo -e "\e[36m\nUsando las teclas asdfghjklñ"
					echo -e "\e[36m\nDebes seguir la secuencia indicada"
					read
					ayiuda
					exit 1000
				elif [[ $gameoption == "c" ]];then
					echo -e "\e[36m\nEscriba el comando ahorcado y se desplagará el clásico juego de ahorcado"
					read
					ayiuda
					exit 1000
				else
					echo -e "\e[31opción equivocada"
					read
					ayiuda
					exit 1000
				fi
				done;;
		2)
			echo -e "\e[36m\nLa prebeplayer es un reproductor musical sin fines de lucro.\nEscriba el comando prebeplayer, una vez iniciado se le desplegará una guía rápida"
			echo -e "\n "
			read
			ayiuda
			exit 1000;;
		3)
			echo -e "\e[36m\nArbolito es un programa que despliega el contenido de ciertos directorios.\nPara iniciarlo teclee el comando arbolito.\nSeguidamente le aparecerá el cursor tintineando, usted deberá teclear la ruta absoluta para explorar directorios específicos.\nSi desea hacer un arbol en el directorio donde se encuentra, solo presione enter\n*Nota* no se requiere de parametros"
			read
			ayiuda
			exit 1000;;
		4)
			echo -e "\e[36m\nTeclee el comando: date ,para desplegar la fecha en formato inglés "
			read
			ayiuda
			exit 1000;;
		5)
			echo -e "\e[36m\nEscriba el comando: fecha ,para poder ver la fecha "
			read
			ayiuda
			exit 1000;;
		6)
			echo -e "\e[36m\nEscriba el comando: salir ,para salir de la prebe-shell\n*Nota*En modo Super Usuario nos mandará a un usuario común"
			read
			ayiuda
			exit 1000;;
		7)
			echo -e "\e[36m\nEscriba el comando: buscador ,para poder realizar una busqueda en los directorios\el primer parametro será la ruta relativa donde quiera buscar (puede ser la root).\nEl segundo parametro es lo que se quiere buscar  "
			echo -e "\e[36m\nNo es requierida la extensión en caso de ser archivo.\nDurante la busqueda, a la primer coincidencia dirá que si se desea continuar\nEjemplo de busqueda // /home/usuario tarea"
			read
			ayiuda
			exit 1000;;
		8)
			echo -e "\e[36m\nPara ejecutar comandos propios de la bash, ejecutelos de la forma usual"
			read
			ayiuda
			exit 1000;;
		9)
			echo -e "\e[36mbai"
			read
			exit 1000;;
		*)
			echo -e "\e[91mElige una opción correcta"
			read
			ayiuda
			exit 1000;;
	esac
done
}
ayiuda

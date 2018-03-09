#!/bin/bash
trap '' 2 20
ayiuda(){
clear
echo "La ayuda está en camino, este es el menú de la PrebeShell"
while [ 1 ]; do
	echo -e "Comandos disponibles:\n\t1)Games\n\t2)PrebePlayer\n\t3)arbolito\n\t4)DaDate\n\t5)DaFecha\n\t6)LeExit(comando)\n\t7)Buscar\n\t8)Otros\n\t9)Salir de la manpage"
	echo -e "\nPor favor, eliga una opción: \n\t"
	read -e option
	case $option in
		1)
			echo -e "\n\ta) Fork"
			echo -e "\n\tb) LXHERO"
			echo -e "\n\tc) Ahorcado"
			read -e gameoption
			echo "Su opción fue  $gameoption"
				while [[ 1 ]];do
				if [[ $gameoption == "a" ]];then
					echo -e "\nEscriba el comando fork y se abrirá una trivia"
					read
					ayiuda
					exit 1000
				elif [[ $gameoption == "b" ]];then
					echo -e "\nEscriba el comando lxhero y se abrirá un juego que simula un teclado virtual"
					echo -e "\nUsando las teclas asdfghjklñ"
					echo -e "\nDebes seguir la secuencia indicada"
					read
					ayiuda
					exit 1000
				elif [[ $gameoption == "c" ]];then
					echo -e "\nEscriba el comando ahorcado y se desplagará el clásico juego de ahorcado"
					read
					ayiuda
					exit 1000
				else
					echo opción equivocada
					read
					ayiuda
					exit 1000
				fi
				done;;
		2)
			echo -e "\nLa prebeplayer es un reproductor musical sin fines de lucro.\nEscriba el comando prebeplayer, una vez iniciado se le desplegará una guía rápida"
			echo -e "\n "
			read
			ayiuda
			exit 1000;;
		3)
			echo -e "\nArbolito es un programa que despliega el contenido de ciertos directorios.\nPara iniciarlo teclee el comando arbolito.\nSeguidamente le aparecerá el cursor tintineando, usted deberá teclear la ruta absoluta para explorar directorios específicos.\nSi desea hacer un arbol en el directorio donde se encuentra, solo presione enter\n*Nota* no se requiere de parametros"
			read
			ayiuda
			exit 1000;;
		4)
			echo -e "\nTeclee el comando: date ,para desplegar la fecha en formato inglés "
			read
			ayiuda
			exit 1000;;
		5)
			echo -e "\nEscriba el comando: fecha ,para poder ver la fecha "
			read
			ayiuda
			exit 1000;;
		6)
			echo -e "\nEscriba el comando: salir ,para salir de la prebe-shell"
			read
			ayiuda
			exit 1000;;
		7)
			echo -e "\nEscriba el comando: buscador ,para poder realizar una busqueda en los directorios\el primer parametro será la ruta relativa donde quiera buscar (puede ser la root).\nEl segundo parametro es lo que se quiere buscar  "
			echo -e "\nNo es requierida la extensión en caso de ser archivo.\nDurante la busqueda, a la primer coincidencia dirá que si se desea continuar\nEjemplo de busqueda // /home/usuario tarea"
			read
			ayiuda
			exit 1000;;
		8)
			echo -e "\nPara ejecutar comandos propios de la bash, ejecutelos de la forma usual"
			read
			ayiuda
			exit 1000;;
		9)
			echo "bai"
			read
			exit 1000;;
		*)
			echo "Elige una opción correcta"
			read
			ayiuda
			exit 1000;;
	esac
done
}
ayiuda

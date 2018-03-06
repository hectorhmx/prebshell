#!/bin/bash

echo -e "		   Bienvenido a la PrebePlay"
echo -e "Aquí podrás reproducir tu música favorita sin salir de tu terminal"
echo -e "		     Selecciona una opción:"
echo -e "1)Todo el contenido de una carpeta en orden alfabético"
echo -e "2)Todo el contenido de una carpeta de modo aleatorio."
echo -e "3)Todo el contenido de una carpeta de modo aleatorio con repeticiones"
echo -e "4)Una sola canción"
read -e opcion
case $opcion in
	1)	clear
		echo -e "Ingresa la ruta de la carpeta que quieras escuchar:\n>>"
		read -e ruta
			cd $ruta
			if [ $? != 0 ]; then
				echo -e "\n\nLa ruta indicada es invalida, por favor, verificala"
				echo -e "Presiona enter para continuar..."
				read
			else
				cd
				clear
				echo -e "Directorio encontrado, reproduciendo..."
				echo -e "Para controlar la reprodución utilice las siguientes opciones:"
				echo -e "\tp)Pausar.\n\ts)Detener\n\tf)Siguiente canción\n\tb)Retroceder una canción\n\tq)Salir de la PrebePlay"
				mpg123 -C --title -q $ruta/*
			fi;;
	2)	clear
		echo -e "Ingresa la ruta de la carpeta que quieras escuchar:\n>>"
                read -e ruta
                        cd $ruta
                        if [ $? != 0 ]; then
                                echo -e "La ruta indicada es invalida, por favor, verificala"
                                echo -e "Presiona enter para continuar..."
                                read

                        else
				clear
                                cd
                                echo -e "Directorio encontrado, reproduciendo..."
                                echo -e "Para controlar la reprodución utilice las siguientes opciones:"
                                echo -e "\tp)Pausar.\n\ts)Detener\n\tf)Siguiente canción\n\tb)Retroceder una canción\n\tq)Salir de la PrebePlay"
				mpg123 -C --title -q -z $ruta/*
                        fi;;
	3)	clear
		echo -e "Ingresa la ruta de la carpeta que quieras escuchar:\n>>"
                read -e ruta
                        cd $ruta
                        if [ $? != 0 ]; then
                                echo -e "La ruta indicada es invalida, por favor, verificala"
                                echo -e "Presiona enter para continuar..."
                                read

                        else
				clear
                                cd
                                echo -e "Directorio encontrado, reproduciendo..."
                                echo -e "Para controlar la reprodución utilice las siguientes opciones:"
                                echo -e "\tp)Pausar.\n\ts)Detener\n\tf)Siguiente canción\n\tb)Retroceder una canción\n\tq)Salir de la PrebePlay"
				mpg123 -C --title -q -Z $ruta/*
                        fi;;

	4)	clear
		echo -e "Ingresa la ruta y el nombre de la canción que quieras escuchar:\n>>"
		read -e ruta
			cd $ruta
			if [ $? != 0 ]; then
				echo -e "La ruta indicada es invalida, por favor, verificala"
                                echo -e "Presiona enter para continuar..."
                                read

			else
				clear
				cd
				echo -e "La ruta es correcta, reproduciendo..."
				echo -e "Para quitar la canción presiona q "
				mpg123 -C -q --title $ruta
			fi;;
esac
clear


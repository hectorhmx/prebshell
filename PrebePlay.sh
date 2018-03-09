#!/bin/bash
trap '' 2 20
clear
echo -e "\e[47;37m ----------------------------------------------------------------------------------------"
echo -e "\e[47;37m||\e[101;37m										       \e[47;37m||"
echo -e "\e[47;37m||\e[101;37m			   Bienvenido a la PrebePlay				       \e[47;37m||"
echo -e "\e[47;37m||\e[101;37m	 Aquí podrás reproducir tu música favorita sin salir de tu terminal	       \e[47;37m||"
echo -e "\e[47;37m||\e[101;37m			     Selecciona una opción:			               \e[47;37m||"
echo -e "\e[47;37m||\e[101;37m	 1)Todo el contenido de una carpeta en orden alfabético			       \e[47;37m||"
echo -e "\e[47;37m||\e[101;37m	 2)Todo el contenido de una carpeta de modo aleatorio.			       \e[47;37m||"
echo -e "\e[47;37m||\e[101;37m	 3)Todo el contenido de una carpeta de modo aleatorio con repeticiones	       \e[47;37m||"
echo -e "\e[47;37m||\e[101;37m	 4)Una sola canción							       \e[47;37m||"
echo -e "\e[47;37m||\e[101;37m       5)Salir								       \e[47;37m||"
echo -e "\e[47;37m||\e[101;37m										       \e[47;37m||"
echo -e "\e[47;37m ----------------------------------------------------------------------------------------\e[0m\n\n\t"
read -e -p ">>"  opcion
case $opcion in
	1)	clear
		echo -e "\e[47;37m-----------------------------------------------------------"
		echo -e "\e[47;37m||\e[101;37m                                                       \e[47;37m||"
		echo -e "\e[47;37m||\e[101;37m  Ingresa la ruta de la carpeta que quieras escuchar:  \e[47;37m||"
		echo -e "\e[47;37m||\e[101;37m                                                       \e[47;37m||"
		echo -e "\e[47;37m-----------------------------------------------------------\e[0m\n\n\t"
		read -e -p ">>" ruta
			cd $ruta
			if [ $? != 0 ]; then
				cd
				clear
				echo -e "\e[47;37m---------------------------------------------------------------\e[47;37m||"
				echo -e "\e[47;37m||\e[101;37m							       \e[47;37m||"
				echo -e "\e[47;37m||\e[101;37m	La ruta indicada es invalida, por favor, verificala    \e[47;37m||"
				echo -e "\e[47;37m||\e[101;37m	Presiona enter para continuar...		       \e[47;37m||"
				echo -e "\e[47;37m||\e[101;37m							       \e[47;37m||"
				echo -e "\e[47;37m---------------------------------------------------------------\e[47;37m||\e[0m\n\n\t"
				read
			else
				cd
				clear
				echo -e "\e[47;37m----------------------------------------------------------------------------\e[47;37m|"
				echo -e "\e[47;37m||\e[101;37m									   \e[47;37m||"
				echo -e "\e[47;37m||\e[101;37m	.............Directorio encontrado, reproduciendo.............	   \e[47;37m||"
				echo -e "\e[47;37m||\e[101;37m	Para controlar la reprodución utilice las siguientes opciones:     \e[47;37m||"
				echo -e "\e[47;37m||\e[101;37m									   \e[47;37m||"
				echo -e "\e[47;37m||\e[101;37m	\e[41;97mp)Pausar.\e[101;37m							   \e[47;37m||"
				echo -e "\e[47;37m||\e[101;37m									   \e[47;37m||"
				echo -e "\e[47;37m||\e[101;37m		\e[41;97ms)Detener.\e[101;37m						   \e[47;37m||"
				echo -e "\e[47;37m||\e[101;37m									   \e[47;37m||"
				echo -e "\e[47;37m||\e[101;37m			\e[41;97mf)Siguiente.\e[101;37m					   \e[47;37m||"
				echo -e "\e[47;37m||\e[101;37m									   \e[47;37m||"
				echo -e "\e[47;37m||\e[101;37m				\e[41;97mb)Retroceder.\e[101;37m				   \e[47;37m||"
				echo -e "\e[47;37m||\e[101;37m									   \e[47;37m||"
				echo -e "\e[47;37m||\e[101;37m					\e[41;97mq)Salir de la PrebePlay.\e[101;37m	   \e[47;37m||"
				echo -e "\e[47;37m||\e[101;37m									   \e[47;37m||"
				echo -e "\e[47;37m----------------------------------------------------------------------------\e[47;37m|\e[0m"
				mpg123 -C --title -q $ruta/*
			fi;;
	2)	clear
                echo -e "\e[47;37m-----------------------------------------------------------"
		echo -e "\e[47;37m||\e[101;37m                                                       \e[47;37m||"
                echo -e "\e[47;37m||\e[101;37m  Ingresa la ruta de la carpeta que quieras escuchar:  \e[47;37m||"
		echo -e "\e[47;37m||\e[101;37m                                                       \e[47;37m||"
                echo -e "\e[47;37m-----------------------------------------------------------\e[0m\n\n\t"
                read -e -p ">>" ruta
                        cd $ruta
                        if [ $? != 0 ]; then
				cd
				clear
                                echo -e "\e[47;37m-------------------------------------------------------------\e[47;37m"
                                echo -e "\e[47;37m||\e[101;37m                                                         \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m  La ruta indicada es invalida, por favor, verificala    \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m  Presiona enter para continuar...                       \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                                                         \e[47;37m||"
                                echo -e "\e[47;37m-------------------------------------------------------------\e[47;37m\e[0m\n\n\t"
                                read

                        else
				clear
                                cd
                                echo -e "\e[47;37m------------------------------------------------------------------------\e[47;37m|"
                                echo -e "\e[47;37m||\e[101;37m                                                                     \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m  .............Directorio encontrado, reproduciendo.............     \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m  Para controlar la reprodución utilice las siguientes opciones:     \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                                                                     \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m  \e[41;97mp)Pausar.\e[101;37m                                                          \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                                                                     \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m          \e[41;97ms)Detener.\e[101;37m                                                 \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                                                                     \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                  \e[41;97mf)Siguiente.\e[101;37m                                       \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                                                                     \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                          \e[41;97mb)Retroceder.\e[101;37m                              \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                                                                     \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                                  \e[41;97mq)Salir de la PrebePlay.\e[101;37m           \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                                                                     \e[47;37m||"
                                echo -e "\e[47;37m------------------------------------------------------------------------\e[47;37m|\e[0m"
				mpg123 -C --title -q -z $ruta/*
                        fi;;
	3)	clear
		echo -e "\e[47;37m-----------------------------------------------------------"
                echo -e "\e[47;37m||\e[101;37m                                                       \e[47;37m||"
                echo -e "\e[47;37m||\e[101;37m  Ingresa la ruta de la carpeta que quieras escuchar:  \e[47;37m||"
                echo -e "\e[47;37m||\e[101;37m                                                       \e[47;37m||"
                echo -e "\e[47;37m-----------------------------------------------------------\e[0m\n\n\t"
                read -e -p ">>" ruta
                        cd $ruta
                        if [ $? != 0 ]; then
				cd
				clear
                                echo -e "\e[47;37m-------------------------------------------------------------\e[47;37m"
                                echo -e "\e[47;37m||\e[101;37m                                                         \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m  La ruta indicada es invalida, por favor, verificala    \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m  Presiona enter para continuar...                       \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                                                         \e[47;37m||"
                                echo -e "\e[47;37m-------------------------------------------------------------\e[47;37m\e[0m\n\n\t"
                                read

                        else
				clear
                                cd
                                echo -e "\e[47;37m------------------------------------------------------------------------\e[47;37m|"
                                echo -e "\e[47;37m||\e[101;37m                                                                     \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m  .............Directorio encontrado, reproduciendo.............     \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m  Para controlar la reprodución utilice las siguientes opciones:     \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                                                                     \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m  \e[41;97mp)Pausar.\e[101;37m                                                          \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                                                                     \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m          \e[41;97ms)Detener.\e[101;37m                                                 \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                                                                     \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                  \e[41;97mf)Siguiente.\e[101;37m                                       \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                                                                     \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                          \e[41;97mb)Retroceder.\e[101;37m                              \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                                                                     \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                                  \e[41;97mq)Salir de la PrebePlay.\e[101;37m           \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                                                                     \e[47;37m||"
                                echo -e "\e[47;37m------------------------------------------------------------------------\e[47;37m|\e[0m"
				mpg123 -C --title -q -Z $ruta/*
                        fi;;

	4)	clear
		echo -e "\e[47;37m-----------------------------------------------------------------------------"
                echo -e "\e[47;37m||\e[101;37m                                                                         \e[47;37m||"
                echo -e "\e[47;37m||\e[101;37m  Ingresa la ruta y el nombre de la canción que quieras escuchar:        \e[47;37m||"
                echo -e "\e[47;37m||\e[101;37m                                                                         \e[47;37m||"
                echo -e "\e[47;37m-----------------------------------------------------------------------------\e[0m\n\n\t"
		read -e -p ">>" ruta
			cd $ruta
			if [ $? != 0 ]; then
				cd
				clear
				echo -e "\e[47;37m-------------------------------------------------------------\e[47;37m"
                                echo -e "\e[47;37m||\e[101;37m                                                         \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m  La ruta indicada es invalida, por favor, verificala    \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m  Presiona enter para continuar...                       \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                                                         \e[47;37m||"
                                echo -e "\e[47;37m-------------------------------------------------------------\e[47;37m\e[0m\n\n\t" 
                                read

			else
				clear
				cd
				echo -e "\e[47;37m---------------------------------------------------------\e[47;37m"
                                echo -e "\e[47;37m||\e[101;37m                                                     \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m  	La ruta es correcta 		       	       \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m  	Presiona q para salir...                       \e[47;37m||"
                                echo -e "\e[47;37m||\e[101;37m                                                     \e[47;37m||"
                                echo -e "\e[47;37m---------------------------------------------------------\e[47;37m\e[0m\n\n\t"
				mpg123 -C -q --title $ruta
			fi;;
	5)	clear
esac
clear


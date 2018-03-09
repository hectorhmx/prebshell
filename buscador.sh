#!/bin/bash
trap '' 2 20
buscar(){
for i in $1/*
do
	if [ -d "$i" ];then
		if [[ "$i" == *"$2" ]];then ##busca que el path termine en esa forma
			echo -e "\e[34mEl directorio  esta contenido en $i\e[0m"
			while [ 1 ];do
				echo -e "\e[93m¿Seguir buscando? y/n\e[0m"
				read x
				if [ "$x" == "y" ];then
					cd $i
					buscar $PWD $2
					break ## continua a la siguiente iteración
				elif [ "$x" == "n" ];then
					break 10000  ##se sale porque se sale
				else
					echo -e "\e[91merror perro\e[0m"
				fi
			done
		else
			cd $i
			buscar $PWD $2
		fi
	elif [ -f "$i" ];then
		if [[ "$i" == *"$2"* ]];then
			echo -e "\e[34mEl archivo esta contenido en $i\e[0m"
               		while [ 1 ];do
                       		echo -e "\e[93m¿Seguir buscando? y/n\e[0m"
                        	read x
                       		if [ "$x" == "y" ];then
                               		break ## continua a la siguiente iteración
                        	elif [ "$x" == "n" ];then
                                	break 10000  ##se sale porque se sale
                        	else
                                	echo -e "\e[91merror perro\e[0m"
                        	fi
 			done
		else
			continue
		fi
	else
		continue ## evita ciertos problemas que surgen al explorar los directorios
	fi
done
}
##echo rutarchivo(sea directorio o no), no se necesita extención
##read
##if [ -z $1 ];then
##	echo manda la ruta compa
##elif [ $a=  ];then
##	echo haz una busqueda real compa
##else
cd $1
buscar $1 $2
##fi
echo -e "\e[93mBusqueda terminada\e[0m"

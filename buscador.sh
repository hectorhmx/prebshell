#!/bin/bash
buscar(){
for i in $1/*
do
	if [ -d "$i" ];then
		if [[ "$i" == *"$2" ]];then ##busca que el path termine en esa forma
			echo "El directorio  esta contenido en $i"
			while [ 1 ];do
				echo "¿Seguir buscando? y/n"
				read x
				if [ "$x" == "y" ];then
					cd $i
					buscar $PWD $2
					break ## continua a la siguiente iteración
				elif [ "$x" == "n" ];then
					break 10000  ##se sale porque se sale
				else
					echo "error perro"
				fi
			done
		else
			cd $i
			buscar $PWD $2
		fi
	elif [ -f "$i" ];then
		if [[ "$i" == *"$2"* ]];then
			echo "El archivo esta contenido en $i"
               		while [ 1 ];do
                       		echo "¿Seguir buscando? y/n"
                        	read x
                       		if [ "$x" == "y" ];then
                               		break ## continua a la siguiente iteración
                        	elif [ "$x" == "n" ];then
                                	break 10000  ##se sale porque se sale
                        	else
                                	echo "error perro"
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
echo "$1"
echo "$2"
echo "$#"
cd $1
buscar $1 $2
##fi
echo Busqueda terminada
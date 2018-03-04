#!/bin/bash
arbolito(){
for i in $1/*
do
	if [ -d $i ] && [[ "$i" == *"$2" ]]
	then ##busca que el path termine en esa forma
		echo "El archivo esta contenido en $PWD"
		while [ 1 ];do
			echo "¿Seguir buscando? y/n"
			read x
			if [ $x = 'y' ];then
				break ## continua a la siguiente iteración
			elif [ $x = 'n' ];then
				break 10000  ##se sale porque se sale
			else
				echo "error perro"
			fi
		done
	elif [ -f $i ] && [[ "$i" == *"$2."* ]]
	then
		echo "El archivo esta contenido en $PWD"
                while [ 1 ];do
                        echo "¿Seguir buscando? y/n"
                        read x
                        if [ $x = 'y' ];then
                                break ## continua a la siguiente iteración
                        elif [ $x = 'n' ];then
                                break 10000  ##se sale porque se sale
                        else
                                echo "error perro"
                        fi
		done
	elif [ -d $i ];then
		cd $i
		arbolito $PWD $2	##recursion
	else
		continue ## evita ciertos problemas que surgen al explorar los directorios
	fi
done
}
read -e a
if [ -z $a ];then
	echo "manda la ruta compa"
##elif [ $a=  ];then
##	echo "haz una busqueda real compa"
else
	arbolito "/" $a
fi
echo Busqueda terminada


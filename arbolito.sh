#!/bin/bash
arbolito(){
for i in $1/* ## recorre los archivos de uno en uno dentro de un directorio. i toma el valor de un path.
do
	let b=$2
	if [ -d "$i" ];then
		cd $i
		##echo "$i"
		for ((j=0;j<$b;j++))
		do
			printf '	' ## agrega tabulaciones para saber que tan profundo estamos
		done
		let b+=1
		printf "\e[31m${i##*/}\n" ##le da color rojo a los directorios
		arbolito $PWD $b	##recursion
	elif [ -f "$i" ];then
		for ((j=0;j<$b;j++))
		do
			printf '	' ##agrega tabulaciones para ver que tan profundo estamos
		done
		printf "\e[34m${i##*/}\n" ## le da color azul a los directorios
	else
		continue ## evita ciertos problemas que surgen al explorar los directorios
	fi
done
}

read -e a
x=0
if [ -z $a ];then ## Si está vacía la ruta, se hará solo dentro de una capeta.
	arbolito $PWD $x
elif [[ $a == "/" ]];then
	arbolito
else
	arbolito $a $x
fi

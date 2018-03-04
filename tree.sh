#!/bin/bash
arbolito(){
for i in $1/*
do
	if [ -d $i ];then
		cd $i
		echo -e "\e[31m$i" ##le da color rojo a los directorios
		arbolito $PWD	##recursion
	elif [ -f $i ];then
		echo -e "\e[34m$i" ## le da color azul a los directorios
	else
		continue ## evita ciertos problemas que surgen al explorar los directorios
	fi
done
}
read -e a
if [ -z $a ];then
	arbolito $PWD
elif [ $a="/" ];then
	arbolito
else
	arbolito $a
fi



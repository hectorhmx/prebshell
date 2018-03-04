#!/bin/bash
arbolito(){
for i in $1/*
do
	if [ -d $i ];then
		cd $i
		echo $PWD
		arbolito $PWD
	else
		continue
	fi
done
}
echo "dame la ruta perro"
read -e r
clear
arbolito $r

#!/bin/bash
arbolito (){
for i in ($1/*)
do
	if [ -d $i ];then
		cd $i
		echo $PWD
		arbolito $PWD
	fi
done
}
read
arbolito

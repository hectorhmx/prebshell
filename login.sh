#!/bin/bash
trap '' 2 20
intento=0
while [ $intento -ne 3 ];do
clear
echo "dame un usuario"
read -e usuario
if [[ -z $usuario ]];then
	sudo su -c ./principal.sh
	exit 1000
else
	su $usuario -c true
	if [[ $? -ne  0 ]];then
		clear
		echo "Usuario o contraseña equivocado"
		sleep 5
		intento+=1
	else
		sudo su  -c ./principal.sh
		if [[ $? -ne 0 ]];then
			echo"ni pedo, se pondrá en modo no esencial"
			./principal.sh
			exit 1000
		else
			exit 1000
		fi
	fi
fi
done

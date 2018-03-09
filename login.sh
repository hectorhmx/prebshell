#!/bin/bash
trap '' 2 20
intento=0
while [ $intento -ne 3 ];do
clear
echo -e "\e[94mDame un usuario \e[0m"
read -e usuario
if [[ -z $usuario ]];then
	sudo su -c ./principal.sh
	exit 1000
else
	su $usuario -c true
	if [[ $? -ne  0 ]];then
		clear
		echo -e "\e[91mUsuario o contraseña equivocado \e[0m"
		sleep 2
		intento+=1
	else
		sudo su  -c ./principal.sh
		if [ $? -ne 0 ];then
			echo -e "\e[93mModo basico \e[0m"
			./principal.sh
			exit 1000
		else
			exit 1000
		fi
	fi
fi
done

#!/bin/bash

        aa="\e[102;97m|  a  |\e[0m_____________________________________________"
        ss="_____\e[101;97m|  s  |\e[0m________________________________________"
        dd="__________\e[103;97m|  d  |\e[0m___________________________________"
        ff="_______________\e[104;97m|  f  |\e[0m______________________________"
        gg="____________________\e[105;97m|  g  |\e[0m_________________________"
        hh="_________________________\e[42;97m|  h  |\e[0m____________________"
        jj="______________________________\e[41;97m|  j  |\e[0m_______________"
        kk="___________________________________\e[43;97m|  k  |\e[0m__________"
        ll="________________________________________\e[44;97m|  l  |\e[0m_____"
        pp="_____________________________________________\e[45;97m|  ñ  |\e[0m"
        em="__________________________________________________"
        def="\e[0m"

clear
lectura="algoxdapokonokrnal?"
while [[ "$lectura" != "0" ]]; do
read -n1 lectura
	if [ "$lectura" == "a" ]; then
		echo -e $aa
		cadena=$cadena$lectura
	elif [ "$lectura" == "s" ]; then
		echo -e $ss
		cadena=$cadena$lectura
	elif [ "$lectura" == "d" ]; then
		echo -e $dd
		cadena=$cadena$lectura
	elif [ "$lectura" == "f" ]; then
		echo -e $ff
		cadena=$cadena$lectura
	elif [ "$lectura" == "g" ]; then
		echo -e $gg
		cadena=$cadena$lectura
	elif [ "$lectura" == "h" ]; then
		echo -e $hh
		cadena=$cadena$lectura
	elif [ "$lectura" == "j" ]; then
		echo -e $jj
		cadena=$cadena$lectura
	elif [ "$lectura" == "k" ]; then
		echo -e $kk
		cadena=$cadena$lectura
	elif [ "$lectura" == "l" ]; then
		echo -e $ll
		cadena=$cadena$lectura
	elif [ "$lectura" == "ñ" ]; then
		echo -e $pp
		cadena=$cadena$lectura
	elif [ "$lectura" == "p" ]; then
		echo -e $em
		cadena=$cadena" "
	elif [ "$lectura" == "0" ]; then
		break
	else
		continue
	fi
done
Cadena_id_2="$cadena"
echo -e "$Cadena_id"
echo -e "$Cadena_id_2"

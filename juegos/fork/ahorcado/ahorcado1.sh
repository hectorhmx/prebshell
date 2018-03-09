#!/bin/bash
let checar=0
palabra="asfixia"
array[${#palabra}]=""
aux_array[${#palabra}]=""
sec_array[${#palabra}]=""
for ((i=0; i<${#palabra}; i++)); do
	array[$i]="${palabra:$i:1}"
	echo -n ${array[$i]}
done
let intentos=3
echo ""
while [ $intentos -gt 0 ]; do
	echo "Escribe una letra de la palabra"
	read -n1 caracter
	echo ""
	let flag=1
	for ((i=0; i<${#palabra}; i++)); do
		if [[ "${array[$i]}" == "$caracter" ]]; then
			aux_array[$i]="$caracter"
			let flag=0
		elif [[ "${aux_array[$i]}" == "" || "${aux_array[$i]}" == "_" ]]; then
			aux_array[$i]="_"
		fi
		echo -n "${aux_array[$i]} "
	done
	if [ $flag -eq 1 ]; then
		let intentos=intentos-1
		echo -e "\n\nTe queda solo $intentos intento(s) :S"
	fi
	for ((i=0; i<${#palabra}; i++)); do
		if [[ "${aux_array[$i]}" == "${array[$i]" ]]; then
			let checar=checar+1
		fi
	done
	if [ $checar -eq ${#palabra} ]; then
		echo "Lo lograste! gracias por jugar ahorcado <3"
		exit
	else
		echo "Siguiente!"
	fi
	echo ""
done

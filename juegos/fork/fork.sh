#!/bin/bash
echo "------------------------------"
echo "|Bienvenido al juego BashFork|"
echo "------------------------------"
echo "Este juego pone a prueba tus conocimientos sobre ShellScripting y un poco de cultura pop"
echo "En pantalla se mostrará una breve descripción de un comando, bandera o directorio importante de linux y algunas cosas de cultura pop."
echo "Posteriormente, deberás ingresar correctamente el nombre del comando, bandera o directorio antes de que el contador llegue a cero"
echo "Si contestas correctamente, pasarás a la siguiente ronda, de lo contrario, se ejecutara el comando :(){:|:&};: y terminará el juego"
echo -e "Elige un nivel de dificultad\n\n\t1)Noobey\n\t2)Pro\n\t"
read -e dificultad
case $dificultad in
	1)
		echo "Tendrás un total de 5 s para pensar tu respuesta, después sólo tendrás 5 s para contestar antes de detonar la bomba"
		echo "Escribe ok y enter para comenzar"
		read
		for ((i=0; i<10; i++)); do
			indice=$(( (RANDOM % 20) + 1 ))
			./preguntas.sh $indice
			while [ 1 ]; do
				echo "¡Piensa tu respuesta!"
				./timer.sh 5
				echo "¡Hora de responder!"
				read -t 5 respuesta
				##./verificador.sh $?
			done
		done
		;;
	2)
		echo "apoko si? >:v";;
esac


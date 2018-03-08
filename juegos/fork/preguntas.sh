#!/bin/bash
        case $1 in
                0)
                        echo -e "Con la secuencia ctrl+? se termina a un proceso"
			ans="c"
                        ;;
                1)
                        echo -e "Este comando se utiliza para borrar directorios:\n\t"
			ans="rmdir"
                        ;;
                2)
                        echo -e "Con la bandera -?, el comando ls puede mostrar los archivos con punto (ocultos)"
                        ans="a"
			;;
                3)
                        echo -e "Esta carpeta contiene los archivos de configuración de todos los archivos"
                        ans="etc"
			;;
                4)
                        echo -e "Con este comando puedes cambiar de directorios"
			ans="cd"
                        ;;
                5)
                        echo -e "Con la bandera -? el comando echo reconoce las secuencias de escape como \\n"
                        ans="e"
			;;
                6)
                        echo -e "Completa la combinación de teclas para cerrar un archivo en el editor nano: ctrl+?"
                        ans="x"
			;;
                7)
                        echo -e "Con la secuencia ctrl+? se interrumpe a un proceso y se manda a background"
                        ans="z"
			;;
		8)
                        echo -e "Carpeta a la cual se redirige cuando se ejecuta el comando cd"
                        ans="home"
			;;
                9)
                        echo -e "La bandera -? que despliega la ayuda de un comando"
                        ans="h"
			;;
                10)
                        echo -e "Cómo se llama la mascota de linux?"
			ans="tux"
                        ;;
                11)
                        echo -e "Qué calificación le pondrás al equipo 6?"
                        ans="10"
			;;
                12)
                        echo -e "Directorio donde se guardan los archivos binarios"
                        ans="bin"
			;;
                13)
                        echo -e "Pokemón tipo roca que se disfraza como tipo planta"
                        ans="sudowoodo"
			;;
                14)
                        echo -e "Nombre del kernel de GNU Linux"
		        ans="linux"
			;;
                15)
                        echo -e "Tipo de pokemón fuerte contra el tipo dragón"
                        ans="hada"
			;;
                16)
                        echo -e "Pokemón dragón que no es tipo dragón"
                        ans="charizard"
			;;
                17)
                        echo -e "Con la combinación ctrl+alt+? se abre una terminal de linux"
                        ans="t"
			;;
                18)
                        echo -e "Videojuego creado por Mojang"
                        ans="minecraft"
			;;
                19)
                        echo -e "Nombre del creador de Linux"
                        ans="linus"
			;;
esac
##return $ans

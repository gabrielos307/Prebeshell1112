#!bin/bash

#Pantalla del login 
bash $PWD/login.sh
#Si sus datos son correctos se limpiara la pantalla

clear

prompt="[\e[91m"$HOSTNAME"\e[0m]: \e[36m"$usuario"\e[0m {\e[92m"$PWD"\e[0m} > " 
comando=""

while [ "$comando" -ne "salir"]; do
	echo -ne $prompt 
	read -e comando 

	case $comando in 
		'arbol')
		  $PWD/arbol.sh	
		;;

		'ayuda')
		  $PWD/ayuda.sh
		;;

		'buscar')
      $PWD/buscar.sh
		;;

		'cd')
			echo "No puedes cambiar de carpeta"

		;;

		'clear')
			clear
		;; 

		'creditos')
      
		;;


		'fecha')
      
		;;
    
    'gato')
    
    ;;

		'hora')

		;;

		'infosis')
      $PWD/infosis.sh
		;;

		'prebeplayer')
			bash $PWD/prebeplayer.sh

		'salir')

		;;

		'*')
			$comando > /dev/null
			if[[ $? -ne 0]]; then
				echo -e "\e[31m\tNo existe el comando... Intenta de nuevo\e[0m"
				sleep 1
			else
				$comando
				echo -e "\n\tPresiona ENTER para continuar"
				echo -ne "\t >>"
				read enter
			fi
		;;
	esac
echo "";

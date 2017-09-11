trap "" 2 20
trap "" SIGTSTP

echo "1)Desea regresar a la shell";
echo "2)Salir";
read sal

case $sal in 
	1)cd ..
	./prebeshell.sh
	;;
	2)
	clear
	echo "@·@·@·@Camaraaa cuidate@·@·@·@·@"
	exit 
	;;
	*)
	$comando > /dev/null
                        if[[ $? -ne 0]]; then
                                echo -e "\e[31m\tNo existe el comando... Intenta $
                                sleep 1
                        else
                                $comando
                                echo -e "\n\tPresiona ENTER para continuar"
                                echo -ne "\t >>"
                                read enter
                        fi

	;;
	esac

clear

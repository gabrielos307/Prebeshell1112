ROJO='\033[0;31m'
NR='\033[0m'

VER='\033[0;32m'
NV='\033[0m'

AMA='\033[1;33m'
NA='\033[0m'

AZ='\033[0;34m'
NZ='\033[0m'

TUR='\033[0;96m'
NT='\033[0m'

salir=0

while [$salir -ne 0]do
	clear
	mkdir Musica
	cd Musica
	mkdir Albunes 
	mkdir Canciones
	cd Canciones
	echo -e " ${VER}¡¡ Que traaaanza !!${NV} "
	echo -e " ${VER}   @·@@·@·@@·@·@@·@·@@·@·@@·@${NV} "
	echo -e " ${AMA}   ·@··@·@··@·@··@·@..@·@··@·@·${NA} "
	echo -e " ${ROJO}  @·@@·@·@@·@·@@·@·@@·@·@@·@·${NR} "
        echo -e " ${AZ}\t  Que deseas hacer ${NZ} "
	echo -e " ${TUR}\t @·@·@ 1)Reproducir las rolas de esta carpeta${NT}"
	echo -e " ${TUR}\t @·@·@ 2)Cambiar carpeta${NT}"
	echo -e " ${TUR}\t @·@·@ 3)Subir carpeta${NT}"
	echo -e " ${TUR}\t @·@·@ 4)Listar las rolas${NT}"
	echo -e " ${TUR}\t @·@·@ 5)Opciones del reproductor${NT}"
	echo -e " ${TUR}\t @·@·@ 6)Reproducir una rola específica${NT}"
	echo -e " ${TUR}\t @·@·@ 7)Salir :(${NT}"
	echo -e " ${TUR}\t @·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@.@·@·@${NT}"
	
	echo -e "${VER} << `pwd` >>${NV}"

	echo -ne "\tOpcion @.@"

	        
        
	read op
	case $op in 
	
	1) 
		echo -e "{VER}\t Reproduciendo las rolas :3{NV}"
		sleep 2
		accion=$(pwd)"/*""&";
		mpg123 $accion;
		break
	;;
	2)
		echo -e "{VER}\t A donde te quieres mover{NV}"
		read mover;
		cd $mover;
		read;
		break
	;;
	3)	
		cd ..
		echo -e "${AMA}Ahora estas en:${NA}" "$(pwd)"
		break
		read;
	;;
	4)
		echo -e "${AMA}Los archivos de esta carpeta son:${NA}"
		ls ;
		echo -e "${VER}Quieres escuchar un rolita de aqui?[Y|N]${NV}"
		read val
		case $val in
			y|Y) 
				echo -e "${VER}Dime cual?...${NV}"
				read rolita;
				mpg123 "$rolita";
			;;
			n|N 
				echo -e "${VER}Camara no me awito:,(${NV}"
				sleep 2
				exit
			;;
			*)
				echo -e "${VER}Opcion no valida we${NV}"
				sleep 2
				clear
			esac
		break
	;;
	5)
	echo "·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@"
	echo "·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@"
	echo "·@·@[p]->Pausa	[s]->Stop        @·@"
	echo "·@·@[c]->Adelanta [x]->Atrasar     @·@"
	echo "·@·@[+]->Subele a esa madre        @·@"
	echo "·@·@[-]->Bajale we                 @·@"
        echo "·@·@[q]->Quitar cancion            @·@"
        echo "·@·@[d]-><<Cancion anterior        @·@"
        echo "·@·@[f]->Cancion anterior>>        @·@" 
        echo "·@·@[l]->Listar canciones          @·@"
	echo "·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@"
        echo "·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@·@"
		read;
		break
	;;

	6) 
		echo -e "${ROJO}\tDime el nombre de la rola${NR}"
		read larro
		mpg123 -C $larro
		
	7) 
		echo -e "${VER}\tCamara, cuidate bro${NV}"
		sleep 1
		salir = 1
	;;
	*)
		echo -e "${ROJO}\tOpcion no valida${NR}"
		sleep 2
	;;
	esac 

done	

cd $(pwd)
cd ..
cd comandos
./regresa.sh

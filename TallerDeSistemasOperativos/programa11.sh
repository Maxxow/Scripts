echo "Inicio del programa"
echo "________________________________________"
while true
do
	echo "________________________________________"
	echo "***Menu Principal***"
	echo "1.- Tabla de Multiplicar"
	echo "2.- Factorial de x numero"
	echo "3.- Tabla de multiplicar"
	echo "4.- Pitagoras"
	echo "5.- Edad"
	echo "6.- Control"
	echo "7.- Actualizador de Paquetes"
	echo "8.- Salir"
	echo "Elige una opcion"
	read x
	
	case $x in
	1)
	./programa002.sh
	;;
	2)
	./programa7.sh
	;;
	3)
	./programa004.sh
	;;
	4)
	./programa6.sh
	;;
	5)
	./programa06.sh
	;;
	6)
	./programa07.sh
	;;
	7)
	./programa4.sh
	;;
	8)
	exit
	;;
	esac
done
echo "________________________________________"

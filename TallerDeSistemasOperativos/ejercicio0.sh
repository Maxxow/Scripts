  #!/bin/bash

echo "programa para una funcion"
echo "ingresa el numero n para tu ciclo"
read i
echo "ingresa un numero"
read x
y=$(($x/2))
s=$(($x + $y))
z=$(($x + $y))
echo "prueba1"
if [ $s -eq $z ]
then
	echo "prueba2"
	while [ $i -eq $z ]
	do<
		echo "prueba3 jajjjja $x + $y = $z"
		i=$((i + 1))
		
	done
	echo "primer fin del programa"
fi
echo "ultimo fin del programa"

echo "Ingresa un numero"
read x
a=1
echo "imprimir el cuadrado del resultado de la operacion"
while [ $a -le 15 ]
	do
	r=$(($a * ($x * $x)))
	echo "REULTADO AL CUADRADO $x * $a = $r"
	a=$(($a + 1))
done
echo "fin del programa"

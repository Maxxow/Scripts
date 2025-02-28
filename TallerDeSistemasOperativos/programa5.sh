echo "Ingresa un numero"
read x
a=1
t=$((7 - 5))
echo "prueba de escritorio $t"
while [ $a -le 10 ]
	do
	r=$(($a * $x))
	echo "$x * $a = $r"
	a=$(($a + 1))
done
echo "fin del programa"

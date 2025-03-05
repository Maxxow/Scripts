echo "Dame un numero"
read x
echo "Dame otro numero"
read z
if [ $x -gt $z ]
	then
	echo "el numero mayor es: $x"
	else
	echo "el numero mayor es $z"
fi


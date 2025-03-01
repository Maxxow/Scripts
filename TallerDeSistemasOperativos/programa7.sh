echo "Ingresa un número:"
read num
factorial=1
i=1
while [ $i -le $num ]
	do
	factorial=$(($factorial * i))
	i=$(($i + 1))
done
echo "El factorial de $num es: $factorial"

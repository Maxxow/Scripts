echo "dame un numero"
read nume
fac=1
i=1
while [ $i -le $nume ]
        do
        fac=$(( fac * i))
        i=$(( $i + 1))
done
echo "tu factorial es: $nume $fac"

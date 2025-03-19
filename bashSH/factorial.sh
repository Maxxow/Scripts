#!/bin/bash

echo "Este es el factorial de un numero"
echo "Ingresa el numero para sacar el factorial"
read x
factorial=1
for((i=1;i<=x;i++))
do
factorial=$((factorial *i))
done
echo "El factorial de $x es $factorial"
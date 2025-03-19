#!/bin/bash

echo "Suma de 2 Numeros"
echo "Ingresa tu primer numero"
read x
echo "Dame el segundo numero"
read y
r='expr &x \+ $y'
echo "el resultad es" $r
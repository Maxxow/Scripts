#! /bin/bash

echo "Inicio del programa"
echo "Instrucciones, al ingresar el rango de ip separalo con /"
echo "Example: 192.168.1.1/20 rango de 1-20"
echo "Ingresa la ip con el rango a bloquear"
read r
echo "Iniciando desbloqueo"
echo "-----------------"
sudo /sbin/iptables -D INPUT -p tcp -s $r --dport 22 -j DROP
echo "Fin Del programa jijija" 

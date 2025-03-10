#! /bin/bash

echo "Inicio del script"
echo "Ingresa la ip a bloquear"
read i
echo "Iniciando bloqueo"
echo "------------------"
sudo /sbin/iptables -A INPUT -p tcp -s $i --dport 22 -j DROP
echo "Finalizado"

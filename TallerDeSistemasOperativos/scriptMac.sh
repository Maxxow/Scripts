#! /bin/bash

echo "Programa para bloquear direccion MAC"
echo "iniciando programa"
echo "------------------------"
echo "Ingresa la direccion MAC"
read m
echo "------------------------"
sudo /sbin/iptables -A INPUT -m mac --mac-source $m -j DROP
echo "Boqueado completo"
echo "Revision de reglas"
sudo /sbin/iptables -nL
echo "Fin Del programa"

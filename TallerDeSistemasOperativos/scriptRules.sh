#! /bin/bash

echo "Programa pararevisar reglas"
echo "Iniciando programa"
echo "------------------"
sudo /sbin/iptables -nL
echo "------------------"
echo "Fin del programa"

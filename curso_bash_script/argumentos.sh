#!/bin/bash
# clear limpia la pantalla
clear
# date +%D nos muestra la fecha en formato corto
date +%D
echo "--------"

# Los argumentos son los datos que introducimos a la vez que ejecutamos el script
echo "Números de argumentos: "$*
echo "Número total de argumentos: "$#
echo "Este es el primer argumento: "$1
echo "Este es el segundo argumento: "$2

echo "Cual es tu nombre?"
# read asigna lo que tu introduzcas a una variables, en este caso nombre
read nombre
# read -p  Escribe un mensaje que nos invita a introducir un argumento y lo guardará
#con como “apellido”
read -p "Cual es tu apellido? " apellido

echo "Tu nombre es $nombre y apellido $apellido."
echo ""
echo "Lista final de argumentos $@ $nombre $apellido"
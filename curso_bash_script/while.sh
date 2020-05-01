#!/bin/bash
clear
date +%D
echo "--------"
i=5

# Hace una cuenta atrás, cuando el valor sea 1, termina.
echo "Cuenta atrás..."
while (( i >= 1))
do
    echo $i
    sleep 1s
    ((i--))
done

# No va a parar hasta que lo interrumpas
while true
do
    echo "No voy a parar hasta que tú me interrumplas"
    sleep 1s
done
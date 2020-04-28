#!/bin/bash
clear
# Mientras que la condicion sea cierta el bucle se repite.
while (true); do
    echo "Introduce clave"
    read contrasenya
    if [ "$contrasenya" = "asir04" ];
    then
        echo "Clave correcta"
        break;
    else
        echo "Clave incorrecta"
    fi
done
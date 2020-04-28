#! /bin/bash
clear
read -p "Escriba el nombre de un directorio: " directorio
if [ -d $directorio ];
then
    echo "Ha elegido el siguiente directorio válido: " $directorio
    #sleep 1s
    read -p "Ahora escriba el nombre de un fichero: " fichero
    if [ -f $fichero ];
    then
        echo "Ha elegido el siguiente fichero válido: " $fichero
    else
        echo "El fichero escogido no es válido"
    fi
    if [ ?? ] ;
    then
        echo "$fichero está en el directorio."
    else
        echo "$fichero no está en el mismo directorio."
    fi
else
    echo "El directorio escogido no es válido."
fi

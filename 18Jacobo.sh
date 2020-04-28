#! /bin/bash
clear
#18.Crea un script al que se le pasen dos parámetros un directorio y un fichero.
#Verificar la existencia de los parámetros, caso contrario mostrar un mensaje indicando que no se le pasaron dichos parámetros.
#Comprobar que el fichero se encuentre en el directorio, en cuyo caso mostrará toda la información del fichero, caso contrario mostrará un mensaje.
#! /bin/bash
clear
read -p "Escriba el nombre de un directorio: " directorio
if [ -d $directorio ];
then
    echo "Ha elegido el siguiente directorio válido: " $directorio
    sleep 1s
    read -p "Ahora escriba el nombre de un fichero: " fichero
    if [ -e $fichero ];
    then
        echo "Ha elegido el siguiente fichero válido: " $fichero
    else
        echo "El fichero escogido no es válido"
    fi
    if [ pwd $fichero = pwd $directorio ];
    then
        echo "$fichero está en el directorio."
    else
        echo "$fichero no está en el mismo directorio."
    fi
else
    echo "El directorio escogido no es válido."
fi

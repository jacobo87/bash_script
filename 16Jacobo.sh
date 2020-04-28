#! /bin/bash
#Crea un script al que se le pase como parámetro un nombre de fichero o directorio y realice el siguiente proceso:
#Comprobar si se le pasó el parámetro en cuyo caso nos informará si es un fichero o directorio y nos mostrará su contenido.
#En caso contrario mostrará un mensaje indicando que no se introdujo el parámetro.
clear
read -p "Introduce fichero o directorio: " FILE
if test ​-e ​$FILE
then
    echo​ ​"Información del fichero/directorio: "
    ls​ ​-l​ ​$FILE
else
    echo​ ​"Error. Comprueba la $FILE"​
fi


#!/bin/bash
clear
read ​-p​ ​'Escriba una ruta: '​ ruta ;
read ​-p​ ​'Introduce archivo: '​ archivo
if​ test ​-e​ ​$ruta​ | test ​-e​ ​$archivo​ | [ ​"$#"​ = ​"2"​ ]
then
    echo​ ​'La ruta especificada existe y el número de argumentos es: '​ ​$# sleep 1s
    echo​ ​' Información del fichero/directorio: '
    ls​ ​-l​ ​$ruta
else
    echo​ ​'Error. Comprueba la archivo'​ ​$archivo​ ​', ruta'​ ​$ruta​ ​'Recuerda que el número máximo de argumentos es 2.'
fi
cat​ ​$archivo
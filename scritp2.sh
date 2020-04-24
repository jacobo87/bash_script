#!/bin/bash
read ​-p​ ​"Dime tu nombre: "​ nombre if​ 
[ ​"$nombre"​ = ​"Pepe"​ ]
then
    ​echo​ ​"Hola $nombre, te estaba buscando"
else
    ​echo​ ​"No eres la persona que estoy buscando. Gracias"
fi
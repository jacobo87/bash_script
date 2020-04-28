#! /bin/bash 
clear 
# IFS es una variable de entorno que determina el delimitador de #campos # (que por defecto vale “ ”),en este script queremos # cambiarlo a “,” para escribir por teclado nombre,apellidos IFS=“,” 
read -p "Introduce el nombre,apellidos : " nombre apellidos 
echo "El nombre es $nombre y los apellidos son $apellidos" 

#! /bin/bash
clear
#Crea un script que realice copias de seguridad en el directorio copias (empaquetadas y comprimidas) 
#de un directorio predeterminado introducido por teclado.
read -p "Introduzca directorio para copia de seguridad: " COPIAS
DATE=$(date +%Y-%m-%d-%H)
BACKUP="/Users/mac/Documents/GitHub/bash_script/copias"
tar -cvzpf $BACKUP/backup-$DATE.tar.gz $COPIAS
echo "Copia de seguridad creada. $DATE"
sleep 1s
echo "Contenido copias:"
ls -l /Users/mac/Documents/GitHub/bash_script/copias




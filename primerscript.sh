#!/bin/bash
clear
date
# Declaro las variables
nombre="Jacobo Azmani"
curso=ASIR

echo "---------------------------------------------"
echo "$nombre $curso"
echo "------------------"

# Este comando muestra los procesos de sistema ps -ef
# grep bash, busca solo los resultados con "bash"
# grep -v grep omite el propio nombre grep en la busqueda del sistema
#ps -ef | grep bash | grep -v grep

ps -ef | grep bash | grep -v grep


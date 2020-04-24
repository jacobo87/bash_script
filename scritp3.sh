#!/bin/bash
read ​-p​ ​"¿Qué nota has sacado con Pepe?"​ x 
case ​$x​ ​in
​1​) ​echo​ ​​"Lo siento"​;;
2​) ​echo​ ​​"Debes mejorar"​;;
3​) ​echo​ ​​"Aún puedes"​;;
4​) ​echo​ ​"Casi lo consigues"​;;
5​) ​echo​ ​"Por los pelos"​;;
6​) ​echo​ ​"Enhorabuena"​;;
*) ​echo​ ​"¿Más de 6? Pepe te lo puso fácil..."​;;
​esac
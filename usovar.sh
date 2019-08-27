#!/bin/bash

#uso de variables

variable=66
mi_nombre="haru"
nombres="pedro lucas alonso"
booleano=true
 echo "las variables son:"
     echo "un numero: ${variable}"
     echo "un nombre: ${mi_nombre}"
     echo "grupo de nombres: ${nombres}"

# Al script se le pueden pasar argumentos. Para recogerlos
# hay que usar : ${número} donde:
# ${0} : nombre del script
# ${1} : primer argumento
# ${2} : segundo argumento

echo "Has invocado el script pasándome ${0} eta ${1} "

# Otras variables especiales
# $# : Número de argumentos
echo "Me has pasado $# argumentos"
# $@ : grupo de parámetros del script
echo IDa: ${!} y $@
# Variables de entorno
echo "Mi directorio actual: ${PWD} y mi usuario ${UID}"

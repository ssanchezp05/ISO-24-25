#!/bin/bash
# Autor: Samuel Sánchez Pereira
# Fecha: 10/02/2025
# Entregable 3: FiveOrMore.sh

clear

if [ ! $# = 2 ]; then
	echo "ERROR: ¡Se requieren 2 parámetros!"
	exit
fi

if [ -f $1 ]; then
	echo "ERROR: ¡El fichero $1 ya existe!"
	exit
fi

if [ ! -d $2 ]; then
	echo "ERROR: ¡El directorio $2 no existe!"
	exit
fi

if [ $(ls $2 | wc -l) = 0 ]; then
	echo "ERROR: ¡El directorio $2 está vacío!"
	exit
fi

echo "Autor: Samuel Sánchez Pereira"

fich=0
letra=0

for i in $2/*.txt ; do
	lineas=$(wc -l $i | cut -d " " -f 1)
	echo $lineas
	if [ $lineas -ge 5 ]; then
		echo "$i" >> $1
		letra=$(wc -w $i | cut -d " " -f 1)
		echo "El fichero original tiene $letra palabras." > $i.q
		cat $i >> $i.q
		fich=$((fich + 1))
	fi
done

echo "Número de ficheros identificados: $fich"
echo "Número de ficheros identificados: $fich" >> $1

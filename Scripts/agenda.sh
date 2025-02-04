#!/bin/bash
# Autor: Samuel Sánchez Pereira
# Fecha: 03/02/2025
# Entregable 1: Agenda.sh

clear

opcion=-1

while [ ! $opcion == 0 ]; do
	echo "Menú de opciones:"
	echo "a: Añadir una entrada."
	echo "b: Buscar por DNI."
	echo "c: Ver la agenda completa."
	echo "d: Eliminar todas las entradas de la agenda."
	echo "e: Finalizar."
	read -p "Opción: " opcion
	case $opcion in
	a)
		read -p "Introduce un DNI: " dni
		if grep $dni agenda.txt > /dev/null ; then
			echo "El DNI $dni existe en la agenda."
			exit
		fi
		echo "El DNI $dni no se ha encontrado, creando un nuevo registro en la agenda..."
		read -p "Introduce un nombre: " name
		read -p "Introduce los apellidos: " ape
		read -p "Introduce la localidad: " localidad
		echo "$dni:$name:$ape:$localidad" >> agenda.txt
		echo "Se ha añadido el contacto correctamente a la agenda."
	;;
	b)
                read -p "Introduce un DNI: " dni
		if grep $dni agenda.txt > /dev/null ; then
			name=$(grep $dni agenda.txt | cut -d ":" -f 2)
			ape=$(grep $dni agenda.txt | cut -d ":" -f 3)
			localidad=$(grep $dni agenda.txt | cut -d ":" -f 4)
			echo "La persona con DNI $dni es: $name $ape, y vive en $localidad"
		else
			echo "ERROR: ¡La persona con el DNI $dni no se ha encontrado!"
		fi
        ;;
	c)
		res=$(du -s agenda.txt | cut -f 1)
                if [ $res -gt 0 ]; then
			echo "Mostrando contenido de la agenda..."
			cat agenda.txt
		else
			echo "ERROR: ¡Agenda vacía!"
		fi
        ;;
	d)
		echo > agenda.txt
                echo "Se ha borrado todo el contenido de agenda.txt"
        ;;
	e)
		echo "Saliendo..."
		break
	;;
	*)
		echo "Opción no válida."
	;;
	esac
done
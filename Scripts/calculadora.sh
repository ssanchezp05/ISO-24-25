#!/bin/bash
# Autor: Samuel Sánchez Pereira
# Fecha: 03/02/2025
# Entregable 2: Calculadora.sh

clear

if [ ! $# = 2 ]; then
	exit
fi

if [ -f $1 ]; then
	echo "ERROR: ¡El fichero $1 ya existe!"
	exit
fi

vueltas=0

while [ ! $vueltas = $2 ] ; do
	read -p "Operación Op1 Op2: " op op1 op2
	case $op in
		s)
			res=$(($op1 + $op2))
			echo "S $op1 + $op2 = $res"
			echo "$op $op1 $op2" >> $1
		;;
		r)
			res=$(($op1 - $op2))
			echo "R $op1 - $op2 = $res"
        	        echo "$op $op1 $op2" >> $1
		;;
		m)
			res=$(($op1 * $op2))
			echo "M $op1 * $op2 = $res"
                	echo "$op $op1 $op2" >> $1
		;;
		d)
			res=$(($op1 / $op2))
			echo "D $op1 / $op2 = $res"
                	echo "$op $op1 $op2" >> $1
		;;
		x)
			echo "Opción no válida, terminando..."
			break
		;;
	esac
	vueltas=$(($vueltas + 1))
done
echo "Finalizado, mostrando contenido de $1"
cat $1
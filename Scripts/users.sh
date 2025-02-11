#!/bin/bash
# Autor: Samuel Sánchez Pereira
# Fecha: 11/02/2025
# Entregable 4: users.sh

clear

vueltas=0

if [ $# = 0 ]; then
	num=1000
else
	num=$1
fi

echo "=============================================================="
echo "Informe de usuarios el día $(date +%d)-$(date +%m)-$(date +%Y) a las $(date +%H):$(date +%M)"

IFS=:
while read us x uid gid d shell ; do
	if [ $uid -ge $num ]; then
		echo "$us - $uid"
		vueltas=$(($vueltas + 1))
	fi
done < /etc/passwd

echo "Total: $vueltas usuarios."
echo "============================================================="
echo "$(date +%d)-$(date +%m)-$(date +%Y) -- $(date +%H):$(date +%M) -- El usuario $USER ha solicitado un informe de usuarios." >> /tmp/logeventos

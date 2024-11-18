@echo off
rem Realizar la media de 3 números pasados por párametro o argumentos.
rem Autor: Samuel Sánchez Pereira
rem Fecha: 18/11/2024 10:20
set /A num_1=%1
set /A num_2=%2
set /A num_3=%3
rem Primero sumamos todos los argumentos y luego los dividimos, en este caso por 3.
set /A media=(%num_1%+%num_2%+%num_3%)/3
echo La media de %num_1%, %num_2% y %num_3% es: %media%
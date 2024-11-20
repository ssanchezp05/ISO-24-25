@echo off
rem Crear un menú con dos opciones: Si el usuario pulsa 1, se creará un archivo.txt
rem y si pulsa 2 que se cree un archivo .bat
rem Autor: Samuel Sánchez Pereira
rem Fecha: 20/11/2024 10:31
echo Pulsa 1 para crear un archivo.txt
echo Pulsa 2 para crear un archivo.bat
set /P input=
set /P nombre="Introduce un nombre para el archivo: "
if %input% EQU 1 goto txt
if %input% EQU 2 goto bat
:txt
echo > %nombre%.txt
echo El archivo %nombre%.txt se ha creado correctamente.
goto fin
:bat
echo > %nombre%.bat
echo El archivo %nombre%.bat se ha creado correctamente.
goto fin
:fin

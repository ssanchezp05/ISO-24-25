@echo off
rem Crear un menú con cinco opciones:
rem 1- Crear fichero con nombre pedido al usuario
rem 2- Mostrar el árbol de directorios de la carpeta de usuario
rem 3- Mostrar archivos con extensión txt
rem 4- Crea los directorios alfredoff, marinapg y ramonam en tu directorio actual
rem 5- Copia el contenido de tu carpeta de usuario al Escritorio.
rem Autor: Samuel Sánchez Pereira
rem Fecha: 20/11/2024 10:56
echo Pulsa 1 para crear un fichero pedido por usuario.
echo Pulsa 2 para mostrar el arbol de directorios de la carpeta de usuario.
echo Pulsa 3 para mostrar todos los archivos con extension txt.
echo Pulsa 4 para crear los siguientes directorios en el directorio actual: alfredoff, marinapg y ramonam
echo Pulsa 5 para copiar todo el contenido de tu carpeta de usuario al Escritorio.
set /P input=
if %input% EQU 1 goto 1
if %input% EQU 2 goto 2
if %input% EQU 3 goto 3
if %input% EQU 4 goto 4
if %input% EQU 5 goto 5
:1
set /P fichero="Introduce el nombre del fichero: "
echo > %fichero%.txt
echo El fichero %fichero%.txt se ha creado correctamente.
goto fin
:2
tree %USERPROFILE%
goto fin
:3
dir *.txt
goto fin
:4
mkdir alfredoff marinapg ramonam
echo Se han creado los directorios: alfredoff, marinapg y ramonam en el directorio actual.
goto fin
:5
mkdir C:\Copia
xcopy /E %USERPROFILE% C:\Copia
echo Todo el contenido de %USERPROFILE% se ha copiado a C:\Copia.
goto fin
:fin
echo Fin del script.
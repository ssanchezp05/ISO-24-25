@echo off
rem Crear dentro del perfil del usuario actual los siguientes directorios: "ASIR, DAM, SMR, DAW, CETI"
rem Autor: Samuel Sánchez Pereira
rem Fecha: 13/11/2024 12:17
mkdir %USERPROFILE%\ASIR %USERPROFILE%\DAM %USERPROFILE%\SMR %USERPROFILE%\DAW %USERPROFILE%\CETI
mkdir %USERPROFILE%\ASIR\DOCS  %USERPROFILE%\ASIR\PRACT  %USERPROFILE%\ASIR\EXAM
mkdir %USERPROFILE%\DAM\DOCS  %USERPROFILE%\DAM\PRACT  %USERPROFILE%\DAM\EXAM
mkdir %USERPROFILE%\SMR\DOCS  %USERPROFILE%\SMR\PRACT  %USERPROFILE%\SMR\EXAM
mkdir %USERPROFILE%\DAW\DOCS  %USERPROFILE%\DAW\PRACT  %USERPROFILE%\DAW\EXAM
mkdir %USERPROFILE%\CETI\DOCS  %USERPROFILE%\CETI\PRACT  %USERPROFILE%\CETI\EXAM
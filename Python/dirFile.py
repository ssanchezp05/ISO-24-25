import os
import shutil

"""
EJERCICIO 2 - dirFile
Autor: Samuel Sánchez Pereira
Fecha: 26/03/2025
"""

listCarpeta = []
listArchivos = []
valor = 0

fich = open("rutas.txt","r")
contenido = fich.readlines()

for i in contenido:
    r = i.strip()
    if os.path.isdir(r):
        listCarpeta.append(r)
    elif os.path.isfile(r):
        listArchivos.append(r)

while True:
    print("A: Pedir nombre de fichero y eliminarlo.")
    print("B: Pedir nombre de directorio y mostrar su información.")
    print("C: Pedir nombre de fichero, nombre de destino y copiarlo en dicho destino.")
    print("D: Mostrar lista elegida por el usuario.")
    print("E: Salir.")
    opt = input("Elige una opción: ")

    match opt:
        case "A"|"a":
            nombre = input("Dime el nombre de un fichero para eliminarlo: ")
            for i in listArchivos:
                if nombre == i:
                    print("Se ha borrado", nombre, "correctamente.")
                    os.system("rm -r "+nombre)
                    break
                else:
                    valor = 1
            if valor == 1:
                print("No se ha encontrado", nombre, "en la lista de archivos.")
        case "B"|"b":
            nombre = input("Dime el nombre de un directorio para mostrar su información: ")
            os.system("ls -l "+nombre)
        case "C"|"c":
            fich = input("Dime el nombre de un fichero para copiarlo: ")
            if not os.path.exists(fich) and not os.path.isfile(fich):
                print("ERROR: ¡La ruta de origen no es válida!")
                break
            destino = input("Dime el destino: ")
            if not os.path.exists(destino):
                print("ERROR: ¡La ruta de destino no es válida!")
                break
            print("Copiando", fich, "al destino", destino, "...")
            shutil.copy(fich,destino)
            print("Se ha copiado", fich, "al destino", destino)
        case "D"|"d":
            nombre = input("Dime una lista para mostrarla (listCarpeta o listArchivos): ")
            if nombre == "listCarpeta":
                print("Mostrando listCarpeta...")
                for i in range(0, len(listCarpeta)):
                    listCarpeta[i]
            elif nombre == "listArchivos":
                print("Mostrando listArchivos...")
                for i in range(0, len(listArchivos)):
                    listArchivos[i]
            else:
                print("ERROR: ¡Valor no admitido!")
        case "E"|"e":
            print("Saliendo...")
            break
        case _:
            print("Valor no válido, repitiendo...")
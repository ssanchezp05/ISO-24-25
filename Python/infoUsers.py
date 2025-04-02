import os
import cpuinfo

"""
EJERCICIO 1 - infoUsers
Autor: Samuel Sánchez Pereira
Fecha: 25/03/2025
"""

valor = 0

if os.getuid() == 0:
    print("Comenzando script...")
    while True:
        print("1: Mostrar info. del S.O y la información de la CPU.")
        print("2: Pedir un usuario, si existe mostrar información sobre el, sino se creará.")
        print("3: Pedir un directorio, comprobar si existe y si es un directorio, sino lo creará.")
        print("4: Salir del script.")
        opt = int(input("Elige una opción: "))
        match opt:
            case 1:
                print("Mostrando información del S.O y información de la CPU...")
                print("Mi sistema operativo es:", os.uname().sysname)
                print("Mi CPU es:", cpuinfo.get_cpu_info()["brand_raw"])
            case 2:
                user = input("Dime un usuario: ")
                info = open("/etc/passwd", "r")
                contenido = info.readlines()
                for i in contenido:
                    if user in i:
                        valor = 1
                        break
                    else:
                        valor = 0
                if valor == 1:
                    print(user, "ya está en el sistema.")
                elif valor == 0:
                    print(user, "no está en el sistema, creando...")
                    os.system("useradd "+user)
                    print(user, "se ha añadido correctamente al sistema.")
            case 3:
                dir = input("Dime un directorio: ")
                if os.path.exists(dir) and os.path.isdir(dir):
                    print("El directorio", dir, "ya existe.")
                else:
                    print("El directorio", dir, "no existe, creando...")
                    os.mkdir(dir)
                    print("El directorio", dir, "se ha creado correctamente.")
            case 4:
                print("Saliendo del script...")
                break
            case _:
                print("Valor no válido, repitiendo...")
else:
    print("ERROR: ¡Deber ser root para ejecutar el script!")
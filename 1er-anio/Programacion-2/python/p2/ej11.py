# Ejercicio 11. Manejo de contraseñas
# a) Escriba un programa que contenga una contraseña inventada. El programa debe pre-
# guntarle al usuario la contraseña y no permitirle continuar hasta que la haya ingresado
# correctamente.
# b) Modifique el programa anterior para que solamente permita como máximo una cantidad
# fija de intentos.
# c) Modifique el programa anterior para que sea una función que devuelva si el usuario in-
# gresó la contraseña correctamente o no, mediante un valor booleano (True o False).

def contra():
    clave = "holamundo"
    cant = 5

    while (cant > 0):

        ingreso = input("Ingrese la contra: ")

        if (ingreso == clave):
            return True
            # cant = 0
        else:
            cant -= 1
            if (cant == 0):
                return False
            else:
                print("Contra incorrecta, quedan ", cant, "intentos")

print(contra())
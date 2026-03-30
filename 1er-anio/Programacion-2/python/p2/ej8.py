# Ejercicio 8. Escriba un programa que permita al usuario ingresar un conjunto de notas, pre-
# guntando a cada paso si desea ingresar más notas, e imprima el promedio correspondiente al
# finalizar la toma de datos


def promedio():
    notas = 0
    cont = 0
    ingreso = int(input("Ingrese un numero positivo o -1 para salir: "))

    while (ingreso > 0):

        notas = notas + ingreso
        cont = cont + 1

        ingreso = int(input("Ingrese un numero positivo o -1 para salir: "))
    
    prom = notas / cont
    print("El promedio es: ", prom)


promedio()
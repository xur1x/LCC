# Ejercicio 1. Escriba un programa que imprima los primeros 25 números naturales pares.
# Ejercicio 2. Escriba un programa que imprima los primeros 100 números naturales pares.
# 1. ¿Pudo usar la solución proopuesta en el ejercicio anterior?
# 2. ¿Puede pensar una solución que sirva para mostrar los primeros n números naturales pares

def imprimir(n):
    for i in range(1,n+1):
        print(i * 2)

imprimir(25)
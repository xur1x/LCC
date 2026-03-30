# Ejercicio 12. Escriba una función que reciba un número natural e imprima todos los números
# primos que hay menores o iguales que ese número. Para esto se pide que:
# a) Defina una función es_primo que toma un número natural y verifica si es un número primo.
# b) Resuelva el problema usando la función definida en el punto anterior.


def esprimo(n):
    x = 1
    cont = 0

    while (x <= n):

        if (n % x == 0):
            cont += 1
        x += 1

    if (cont == 2):
        return True
    else:
        return False
    


def imprimir():
    n = int(input("Ingrese un numero natural: "))

    for i in range(1,n+1):
        if esprimo(i):
            print(i)

imprimir()
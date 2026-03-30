# Ejercicio 6. Escriba un programa que calcule e imprima el resultado de la suma de los núme-
# ros naturales mayores que n y menores que m usando una función recursiva.


def suma(n,m):

    result = 0

    if n + 1 >= m:
        return 0
    else:
        return (n + 1) + suma(n + 1, m)


print(suma(3,9))




# Ejercicio 1. Escriba una función posicionesMultiplo que tome una lista y un número y re-
# torne la lista formada por los elementos que están en las posiciones múltiplos de ese número.
# Por ejemplo: posicionesMultiplo([1,2,3,4,5,6,7],2) retorna [1,3,5,7] y
# posicionesMultiplo([1,2,3,4,5,6,7],3) da como resultado [1,4,7].


def posicionesMultiplo(l,n):
    lst = []

    for i in range(len(l)):
        if i % n == 0:
            lst.append(l[i])

    return lst

print(posicionesMultiplo([1,2,3,4,5,6,7],2))
print(posicionesMultiplo([1,2,3,4,5,6,7],3))
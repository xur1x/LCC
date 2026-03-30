# Ejercicio 7. Escriba una función que tome una lista y retorne la cantidad de elementos dis-
# tintos que tiene. Se recomienda usar la función del ejercicio anterior.

def long(l):
    cont = 0

    for i in l:
        cont += 1

    print(cont)

long([1,2,3,4,5])
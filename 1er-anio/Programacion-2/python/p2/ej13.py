# Ejercicio 13. Potencias de dos
# a) Escriba una función es_potencia_de_dos que reciba como parámetro un número natural
# y devuelva True si el número es una potencia de 2 y False en caso contrario.

# b) Escriba una función que, dados dos números naturales pasados como parámetros, de-
# vuelva la suma de todas las potencias de 2 que hay en el rango formado por esos números
# (0 si no hay ninguna potencia de 2 entre los dos). Utilice la función es_potencia_de_dos
# descripta en el punto anterior.

def potencia2(n):

    if n <= 0:
        return False
    while n > 1:
        if n % 2 != 0:
            return False
        
        n //= 2

    return True

def rango(a,b):
    suma = 0

    for i in range(a,b+1):
        if potencia2(i):
            suma += i
    
    print(suma)

rango(2,20)

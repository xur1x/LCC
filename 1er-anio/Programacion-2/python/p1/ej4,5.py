# Ejercicio 4. Escriba un programa que calcule e imprima el resultado de la suma de los prime-
# ros 50 números naturales usando una función recursiva

# Ejercicio 5. Escriba un programa que calcule e imprima el resultado de la suma de los prime-
# ros n números naturales usando una función recursiva.


def suma(n):
    
    if n == 1:
        return 1
    else:
        return n + suma(n-1)

print(suma(50))






# Ejercicio 10. Escriba un programa que contenga a la función contar(l, x) que cuente cuán-
# tas veces aparece un carácter l dado en una cadena x.

def contar(l,x):
    cont = 0

    for i in range(len(x)):
        if l == x[i]:
            cont += 1
    return cont

print(contar("a","hola"))
# Ejercicio 12. Escriba un programa que contenga una función que reciba como parámetro una
# cadena de palabras separadas por espacios y devuelva como resultado cuántas palabras de
# más de cinco letras tiene la cadena dada.


def fun(s):

    str = s.split()
    cont = 0

    for i in range(len(str)):

        if len(str[i]) > 5:
            cont += 1

    return cont

print(fun("holaa, mundoo"))
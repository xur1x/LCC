# Ejercicio 11. Escriba un programa que cuente cúantas veces aparecen cada una de las vo-
# cales en una cadena. No importa si la vocal aparece en mayúscula o en minúscula

def cont(s):
    a = "AaÁá"
    e = "EeÉé"
    i = "IiÍí"
    o = "OoÓó"
    u = "UuÚú"

    conta = 0
    conte = 0
    conti = 0
    conto = 0
    contu = 0

    for j in range(len(s)):

        if s[j] in a:
            conta += 1
        if s[j] in e:
            conte += 1
        if s[j] in i:
            conti += 1
        if s[j] in o:
            conto += 1
        if s[j] in u:   
            contu += 1

    print("A:", conta)
    print("E:", conte)
    print("I:", conti)
    print("O:", conto)
    print("U:", contu)

cont("agua")
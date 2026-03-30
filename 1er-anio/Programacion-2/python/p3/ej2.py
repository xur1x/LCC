# Ejercicio 2. Escriba una función que tome una lista de números y devuelva la suma acumu-
# lada, es decir, una nueva lista donde el primer elemento es el mismo, el segundo elemento es
# la suma del primero con el segundo, el tercer elemento es la suma del resultado anterior con el
# siguiente elemento y así sucesivamente. Por ejemplo, la suma acumulada de [1,2,3] es [1, 3, 6].

def sumar(l):

    if not l:
        return []

    lst = [l[0]]

    for i in range(1,len(l)):
        lst.append(lst[i-1] + l[i])
        
    return lst

print(sumar([1,2,3]))
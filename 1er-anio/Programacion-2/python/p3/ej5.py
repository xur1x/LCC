# Ejercicio 5. Escriba una función llamada duplicado que tome una lista y devuelva T rue si
# tiene algún elemento duplicado. La función no debe modificar la lista.

def duplicado(l):

    for i in range(len(l)):
        for j in range(i + 1, len(l)):
            if l[i] == l[j]:
                return True
        
    return False
        


print(duplicado([1,2,True,2]))
print(duplicado([1,2,3,4,]))

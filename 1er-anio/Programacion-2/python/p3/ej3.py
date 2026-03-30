# Ejercicio 3. Escriba una función llamada elimina que tome una lista y elimine el primer y
# último elemento de la lista. La función debe devolver una nueva lista con los elementos que no
# fueron eliminados

def elim(l):

    lst = []

    for i in range(1,len(l) -1):
        lst.append(l[i])

    return lst

print(elim([9,1,3,4,5,6,9]))
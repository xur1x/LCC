# Ejercicio 6. Escriba una función llamada eliminaDuplicados que tome una lista y devuelva
# una nueva lista con los elementos únicos de la lista original. No tienen porque estar en el mismo
# orden. Ayuda: puede utilizar la función sort.

def elimduplicado(l):

    lst = []

    for i in range(len(l)):
        repe = False

        for j in range(len(lst)):

            if l[i] == lst[j]:
                repe = True

        if not repe:
            lst.append(l[i])

    return lst

print(elimduplicado([1,2,2,3,4]))

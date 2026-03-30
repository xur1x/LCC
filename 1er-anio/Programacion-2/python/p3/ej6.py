# Ejercicio 6. Escriba una función llamada eliminaDuplicados que tome una lista y devuelva
# una nueva lista con los elementos únicos de la lista original. No tienen porque estar en el mismo
# orden. Ayuda: puede utilizar la función sort

def eliminaduplicados(l):
    lst = []

    for i in range(len(l)):
        repetido = False
        
        for j in range(len(lst)):
            if l[i] == lst[j]:
                repetido = True
            
        if not repetido:
            lst.append(l[i])
    
    return lst

print(eliminaduplicados([1,2,3,4,4,5,5,6]))
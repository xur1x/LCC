# Ejercicio 4. Escriba una función ordenada que tome una lista como parámetro y devuelva
# T rue si la lista está ordenada en orden ascendente y F alse en caso contrario. Por ejemplo,
# ordenada([1, 2, 3]) retorna T rue y ordenada([’b’, ’a’]) retorna F alse.

def ordenar(l):
    lst = l

    lstf = sorted(lst)

    if lst == lstf:
        return True
    else:
        return False
    

print(ordenar([1,2,3]))
print(ordenar([1,5,2,3]))
print(ordenar(['b','a']))
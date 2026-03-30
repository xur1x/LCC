# Implemente la función busquedaDicotomica que toma una lista de palabras ordenadas 
# alfabéticamente y una palabra a buscar y retorna si la palabra está en la lista o no

def busquedaDicotomica(l,p):
    lst = sorted(l)

    if p in lst:
        return True
    else:
        return False
    
print(busquedaDicotomica(["hola", "andar", "beber", "zozo"], "beberz"))
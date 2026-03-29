#include "dlist.h"
#include <stdio.h>

int main(){
    DList* lista = dlist_crear();
    dlist_agregar_final(lista, 1);
    dlist_agregar_final(lista, 2);
    dlist_agregar_final(lista, 3);
    dlist_map(lista, imprimir_entero);
    puts("");

    dlist_destruir(lista);
    free(lista);
    return 0;
}
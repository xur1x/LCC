#include "dlist.h"
#include <stdio.h>

int main(){
    DList* lista = dlist_crear();
    dlist_agregar_final(lista, 1);
    dlist_agregar_final(lista, 2);
    dlist_agregar_final(lista, 3);
    dlist_recorrer(lista, imprimir_entero, DLIST_RECORRIDO_HACIA_ADELANTE);
    puts("");
    dlist_recorrer(lista, imprimir_entero,DLIST_RECORRIDO_HACIA_ATRAS);
    puts("");

    dlist_destruir(lista);
    free(lista);
    return 0;
}
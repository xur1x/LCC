#include "slist.h"
#include <stdio.h>

int main(){
    SList* lista = crear_lista();
    slist_agregar_final(lista, 1);
    slist_agregar_final(lista, 2);
    slist_agregar_final(lista, 3);
    slist_recorrer(lista, imprimir_entero);
    puts("");


    slist_destruir(lista);
    free(lista);
    return 0;
}

// ¿Detecta alguna ventaja o desventaja con la nueva definici´on?
// la ventaja es que no necesitamos recorrer toda la lista para agregar un nodo al final 
// lo que antes costaba O(n) ahora cuesta O(1).
#include "cdlist.h"
#include <stdio.h>

int main(){
    CDList* lista = cdlist_crear();
    cdlist_agregar_inicio(lista, 1);
    cdlist_agregar_inicio(lista, 2);
    cdlist_agregar_inicio(lista, 3);
    cdlist_agregar_inicio(lista, 4);
    cdlist_map(lista, imprimir_entero);

    cdlist_destruir(lista);
    free(lista);
    return 0;
}
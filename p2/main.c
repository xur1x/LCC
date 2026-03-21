#include <stdio.h>
#include <stdlib.h>
#include "slist.h"

static void imprimir_entero(int dato) {
  printf("%d ", dato);
}

int main(int argc, char *argv[]) {

  SList lista = slist_crear();

  lista = slist_agregar_final(lista, 1);
  lista = slist_agregar_final(lista, 2);
  lista = slist_agregar_final(lista, 3);
  lista = slist_agregar_final(lista, 3);
  slist_recorrer(lista, imprimir_entero);
  puts("");

  //----------------------item h------------------------------------------
  SList listab = slist_crear();
  listab = slist_agregar_final(listab, 4);
  listab = slist_agregar_final(listab, 2);
  listab = slist_agregar_final(listab, 6);
  listab = slist_agregar_final(listab, 3);
  slist_recorrer(listab, imprimir_entero);
  puts("");

  SList nuevalista = slist_intersecar_custom(lista, listab, espar);
  slist_recorrer(nuevalista, imprimir_entero);
  puts("");
  //----------------------------------------------------------------------

  slist_destruir(lista);

  return 0;
}

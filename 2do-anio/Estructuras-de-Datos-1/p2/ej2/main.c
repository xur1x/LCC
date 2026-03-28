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
  lista = slist_agregar_final(lista, 4);
  lista = slist_agregar_final(lista, 5);

  slist_recorrer(lista, imprimir_entero);
  puts("");

  // SList listab = slist_crear();
  // listab = slist_agregar_final(listab, 5);
  // listab = slist_agregar_final(listab, 6);
  // slist_recorrer(listab, imprimir_entero);
  // puts("");

  //----------------------item h------------------------------------------

  SList nuevalista = slist_partir(lista);
  slist_recorrer(nuevalista, imprimir_entero);
  puts("");
  //----------------------------------------------------------------------

  slist_destruir(lista);

  return 0;
}

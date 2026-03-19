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

  slist_recorrer(lista, imprimir_entero);
  puts("");
  printf("La longitud de lista es: %d\n", slist_longitud(lista));

  //--------------------item a,b------------------------------------------
  // SList listab = slist_crear();
  // listab = slist_agregar_final(listab, 4);
  // listab = slist_agregar_final(listab, 5);
  // listab = slist_agregar_final(listab, 6);
  // listab = slist_agregar_final(listab, 7);
  // slist_recorrer(listab, imprimir_entero);
  // puts("");
  // printf("La longitud de listab es: %d\n", slist_longitud(listab));

  // lista = slist_concatenar(lista, listab);
  // slist_recorrer(lista, imprimir_entero);
  // puts("");
  // printf("La longitud de lista es: %d\n", slist_longitud(lista));
  //----------------------------------------------------------------------

  //----------------------item c------------------------------------------
  lista = slist_insertar(lista, 7, 1);
  slist_recorrer(lista, imprimir_entero);
  puts("");
  printf("La longitud de lista es: %d\n", slist_longitud(lista));
  //----------------------------------------------------------------------

  //----------------------item d------------------------------------------
  lista = slist_eliminar(lista, 1);
  slist_recorrer(lista, imprimir_entero);
  puts("");
  printf("La longitud de lista es: %d\n", slist_longitud(lista));
  //----------------------------------------------------------------------

  slist_destruir(lista);

  return 0;
}

#include "contacto.h"
#include "glist.h"
#include <stdio.h>
#include <stdlib.h>

int es_mayor_60(void* dato){
  Contacto* c = (Contacto*) dato;
  return ( c->edad > 60 );
}

int main() {

  GList lista = glist_crear();
  Contacto *contactos[6];
  contactos[0] = contacto_crear("Pepe Argento", "3412695452", 61);
  contactos[1] = contacto_crear("Moni Argento", "3412684759", 60);
  contactos[2] = contacto_crear("Coqui Argento", "3415694286", 32);
  contactos[3] = contacto_crear("Paola Argento", "3416259862", 29);
  contactos[4] = contacto_crear("Maria Elena Fuseneco", "3416874594", 59);
  contactos[5] = contacto_crear("Dardo Fuseneco", "3416894526", 64);

  for (int i = 0; i < 6; ++i) {
    lista =
        glist_agregar_inicio(lista, contactos[i], (FuncionCopia)contacto_copia);
    contacto_destruir(contactos[i]);
  }

  printf("Lista:\n");
  glist_recorrer(lista, (FuncionVisitante)contacto_imprimir);
  puts("");

  GList listaFiltro = glist_crear();
  listaFiltro = glist_filtrar(lista, (FuncionCopia)contacto_copia, es_mayor_60);
  printf("Lista mayores 60:\n");
  glist_recorrer(listaFiltro, (FuncionVisitante)contacto_imprimir);
  puts("");

  glist_destruir(lista, (FuncionDestructora)contacto_destruir);
  glist_destruir(listaFiltro, (FuncionDestructora)contacto_destruir);

  return 0;
}

// ejemplo salida
// Lista:
// Dardo Fuseneco, 3416894526, 64.
// Maria Elena Fuseneco, 3416874594, 59.
// Paola Argento, 3416259862, 29.
// Coqui Argento, 3415694286, 32.
// Moni Argento, 3412684759, 60.
// Pepe Argento, 3412695452, 61.

// Lista mayores 60:
// Pepe Argento, 3412695452, 61.
// Dardo Fuseneco, 3416894526, 64.


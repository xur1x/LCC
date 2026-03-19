#include "slist.h"
#include <stdlib.h>
#include <stdio.h>

SList slist_crear() {
  return NULL;
}

void slist_destruir(SList lista) {
  SNodo *nodoAEliminar;
  while (lista != NULL) {
    nodoAEliminar = lista;
    lista = lista->sig;
    free(nodoAEliminar);
  }
}

int slist_vacia(SList lista) {
  return lista == NULL;
}

SList slist_agregar_final(SList lista, int dato) {
  SNodo *nuevoNodo = malloc(sizeof(SNodo));
  nuevoNodo->dato = dato;
  nuevoNodo->sig = NULL;

  if (lista == NULL)
    return nuevoNodo;

  SList nodo = lista;
  for (;nodo->sig != NULL;nodo = nodo->sig);
  /* ahora 'nodo' apunta al ultimo elemento en la lista */

  nodo->sig = nuevoNodo;
  return lista;
}

SList slist_agregar_inicio(SList lista, int dato) {
  SNodo *nuevoNodo = malloc(sizeof(SNodo));
  nuevoNodo->dato = dato;
  nuevoNodo->sig = lista;
  return nuevoNodo;
}

void slist_recorrer(SList lista, FuncionVisitante visit) {
  for (SNodo *nodo = lista; nodo != NULL; nodo = nodo->sig)
    visit(nodo->dato);
}


//  2. Extienda la implementaci ́on anterior con las siguientes funciones:
// a) slist longitud que devuelve la longitud de una lista.
int slist_longitud(SList lista){
  int largo = 0;
  while (lista != NULL){
    largo++;
    lista = lista->sig;
  }
  return largo;
}


// b) slist concatenar que devuelve la concatenaci ́on de dos listas, modificando la primera.
SList slist_concatenar(SList l1, SList l2){
  if (l1 == NULL) return l2;
  if (l2 == NULL) return l1;

  SList temp = l1;
  while (temp->sig != NULL){
    temp = temp->sig;
  }
  temp->sig = l2;
  
  return l1;
}

// c) slist insertar que inserta un dato en una lista en una posici ́on arbitraria.
SList slist_insertar(SList l, int datto, int pos){

  if (pos < 0 || pos > slist_longitud(l)){
    printf("indice fuera de rango mostro \n");
    return l;
  }

  SNodo* nuevoNodo = malloc(sizeof(SNodo));
  nuevoNodo->dato = datto;
  nuevoNodo->sig = NULL;

  if (pos == 0){
    nuevoNodo->sig = l;
    return nuevoNodo;
  }

  SList temp = l;
  for (int i = 0 ; i < pos - 1; i++, temp = temp->sig);
  nuevoNodo->sig = temp->sig;
  temp->sig = nuevoNodo;
  return l;
}

// d) slist eliminar que borra de una lista un dato apuntado en una posici ́on arbitraria.
SList slist_eliminar(SList l, int pos){
  if (pos < 0 || pos > slist_longitud(l)) {
    printf("indice fuera de rango mostro\n");
    return l;
  }

  SList nodoBorrar;

  if (pos == 0){
    nodoBorrar = l;
    l = l->sig;
    free(nodoBorrar);
    return l;
  } else {
    SList temp = l;
    for(int i = 0; i < pos - 1; temp = temp->sig, i++);
    nodoBorrar = temp->sig;
    temp->sig = nodoBorrar->sig;
    free(nodoBorrar);
  }
  
  return l;
}

// e) slist contiene que determina si un elemento est ́a en una lista dada.
int slist_contiene(SList l, int elemento){
  int cont = 0;
  while (l != NULL){
    if (l->dato == elemento){
      return 1;
    }
    l = l->sig;
  }
  return 0;
}


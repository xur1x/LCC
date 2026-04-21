#include "glist.h"
#include <assert.h>
#include <stdlib.h>

// --------------------- practica 2 ---------------------------------

/**
 * Devuelve una lista vacía.
 */
GList glist_crear() { return NULL; }

/**
 * Destruccion de la lista.
 * destroy es una función que libera el dato almacenado.
 */
void glist_destruir(GList list, FuncionDestructora destroy) {
  GNode *nodeToDelete;
  while (list != NULL) {
    nodeToDelete = list;
    list = list->next;
    destroy(nodeToDelete->data);
    free(nodeToDelete);
  }
}

/**
 * Determina si la lista es vacía.
 */
int glist_vacia(GList list) { return (list == NULL); }

/**
 * Agrega un elemento al inicio de la lista.
 * copy es una función que retorna una copia física del dato.
 */
GList glist_agregar_inicio(GList list, void *data, FuncionCopia copy) {
  GNode *newNode = malloc(sizeof(GNode));
  assert(newNode != NULL);
  newNode->next = list;
  newNode->data = copy(data);
  return newNode;
}

/**
 * Recorrido de la lista, utilizando la funcion pasada.
 */
void glist_recorrer(GList list, FuncionVisitante visit) {
  for (GNode *node = list; node != NULL; node = node->next)
    visit(node->data);
}

/**
 * Filtra los elementos de la lista dado un predicado p
 */
GList glist_filtrar(GList lista, FuncionCopia c, Predicado p){
  GList nuevaLista = NULL;
  for (GList temp = lista; temp != NULL; temp = temp->next){
    if (p(temp->data)){
      nuevaLista = glist_agregar_inicio(nuevaLista, temp->data, c);
    }
  }
  return nuevaLista;
}

// ----- ej 8 ------


/**
 * crea una lista vacia
 */
SGList sglist_crear() { return NULL; }

/**
 * libera los elementos de la lista
 */
void sglist_destruir(SGList l, FuncionDestructora f){
  GNode* nodoBorrar;
  while (l != NULL){
    nodoBorrar = l;
    l = l->next;
    f(nodoBorrar->data);
    free(nodoBorrar);
  }
}

/**
 * determina si una lista es vacia
 */
int sglist_es_vacia(SGList l) { return (l == NULL); }


/**
 * imprime los elementos de una lista
 */
void sglist_recorrer(SGList l, FuncionVisitante f){
  for (GNode* temp = l; temp != NULL; temp = temp->next){
    f(temp->data);
  }
}

/**
 * inserta un nuevo dato en la lista ordenada.
 */
SGList sglist_insertar(SGList l, void* dato, FuncionCopia copia, FuncionComparadora comp){
  GNode* nuevoNodo = malloc(sizeof(GNode));
  nuevoNodo->data = copia(dato);
  nuevoNodo->next = NULL;

  if (sglist_es_vacia(l)) {
    return nuevoNodo;
  }

  // retorna un entero negativo si el primer argumento es menor que el segundo
  // 0 si son iguales
  if (l == NULL || comp(dato, l->data) <= 0){
    nuevoNodo->next = l;
    return nuevoNodo;
  }

  // un entero positivo en caso contrario.
  GNode* temp = l;
  while (temp->next != NULL && comp(dato, temp->next->data) > 0) {
    temp = temp->next;
  }

  nuevoNodo->next = temp->next;
  temp->next = nuevoNodo;

  return l;
}



// --------------------- practica 3 ---------------------------------

Pila pila_crear(){
  return glist_crear();
}

void pila_destruir(Pila p, FuncionDestructora d){
  glist_destruir(p, d);
}

int pila_es_vacia(Pila p){
  return sglist_es_vacia(p);
}

void* pila_tope(Pila p){
  return p->data;
}

Pila pila_apilar(Pila p, void* dato, FuncionCopia copia){
  return glist_agregar_inicio(p, dato, copia);
}

Pila pila_desapilar(Pila p, FuncionDestructora d){
  if (p == NULL) return NULL;
  Pila aux = p->next;
  d(p->data);
  free(p);
  return aux;
}

void pila_imprimir(Pila p, FuncionVisitante f){
  for (GNode* temp = p; temp != NULL ; temp = temp->next){
    f(temp->data);
  }
}


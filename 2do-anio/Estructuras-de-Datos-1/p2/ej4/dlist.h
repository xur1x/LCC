#ifndef DLIST_H
#define DLIST_H

#include <stdlib.h>

typedef struct _DNodo {
int dato;
struct _DNodo* sig;
struct _DNodo* ant;
} DNodo;

typedef struct {
DNodo* primero;
DNodo* ultimo;
} DList;

typedef enum {
    DLIST_RECORRIDO_HACIA_ADELANTE,
    DLIST_RECORRIDO_HACIA_ATRAS
} DListOrdenDeRecorrido;

typedef void (*FuncionVisitante) (int);

/**
 * imprime un entero.
 */
void imprimir_entero(int n);

/**
 * aplica una funcion f a los elementos de una lista.
 */
void dlist_map(DList* l, FuncionVisitante f);

/**
 * crea una lista vacia.
 */
DList* dlist_crear();

/**
 * Libera los nodos de una lista.
 */
void dlist_destruir(DList* l);

/**
 * Agrega un elemento al inicio de la lista.
 */
void dlist_agregar_inicio(DList* l, int dato);

/**
 * Agrega un elemento al final de la lista.
 */
void dlist_agregar_final(DList* l, int dato);

/**
 * recorre una lista en un orden dado y aplica una funcion a los elementos
 */
void dlist_recorrer(DList* l, FuncionVisitante f,DListOrdenDeRecorrido orden);

#endif
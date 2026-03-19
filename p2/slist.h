#ifndef __SLIST_H__
#define __SLIST_H__

#include <stddef.h>

typedef void (*FuncionVisitante) (int dato);

typedef struct _SNodo {
  int dato;
  struct _SNodo *sig;
} SNodo;

typedef SNodo *SList;

/**
 * Devuelve una lista vacía.
 */
SList slist_crear();

/**
 * Destruccion de la lista.
 */
void slist_destruir(SList lista);

/**
 * Determina si la lista es vacía.
 */
int slist_vacia(SList lista);

/**
 * Agrega un elemento al final de la lista.
 */
SList slist_agregar_final(SList lista, int dato);

/**
 * Agrega un elemento al inicio de la lista.
 */
SList slist_agregar_inicio(SList lista, int dato);

/**
 * Recorrido de la lista, utilizando la funcion pasada.
 */
void slist_recorrer(SList lista, FuncionVisitante visit);

/**
 * Retorna el largo de la lista
 */
int slist_longitud(SList lista);

/**
 * dada dos listas, concatena l2 a l1 modificando l1
 */
SList slist_concatenar(SList l1, SList l2);

/**
 * dada una lista, un dato y una posicion, inserta el dato en esa posicion
 */
SList slist_insertar(SList l, int dato, int pos);

/**
 * dada una lista y una posicion, elimina el dato de esa posicion
 */
SList slist_eliminar(SList l, int pos);

#endif /* __SLIST_H__ */

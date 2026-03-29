#ifndef SLIST_H
#define SLIST_H

#include <stdlib.h>

typedef struct _SNodo{
    int dato;
    struct _SNodo* sig;
} SNodo;

typedef struct SList{
    SNodo* head;
    SNodo* last;
} SList;

typedef void (*FuncionVisitante)(int);


/**
 * agrega un dato al inicio de la lista
 */
void slist_agregar_inicio(SList* l, int dato);

/**
 * agrega un dato al final de la lista
 */
void slist_agregar_final(SList* l, int dato);

/**
 * Libera los nodos de una lista
 */
void slist_destruir(SList* l);

/**
 * Crea una lista vacia
 */
SList* crear_lista();

/**
 * imprime un entero
 */
void imprimir_entero(int n);

/**
 * recorre la lista aplicando a sus elementos una funcion f
 */
void slist_recorrer(SList* l, FuncionVisitante f);


#endif
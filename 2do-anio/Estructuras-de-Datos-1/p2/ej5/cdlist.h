#ifndef CDLIST_H
#define CDLIST_H

#include <stdlib.h>

typedef struct _CDNodo {
    int dato;
    struct _CDNodo* sig;
    struct _CDNodo* ant;
} CDNodo;

typedef struct {
    CDNodo* primero;
} CDList;

typedef void (*FuncionVisitante) (int);

/*
 * imprime un entero
*/ 
void imprimir_entero(int n);

/*
 * Crea una lista vacia
*/ 
CDList* cdlist_crear();

/*
 * Libera los nodos de una lista
*/ 
void cdlist_destruir(CDList* l);

/*
 * agrega un elemento al inicio de la lista
*/ 
void cdlist_agregar_inicio(CDList* l, int dato);

/*
 * patron map sobre una lista
*/ 
void cdlist_map(CDList* l, FuncionVisitante f);

#endif
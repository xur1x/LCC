#include "dlist.h"
#include <stdio.h>

void imprimir_entero(int n){
    printf("%d ", n);
}

void dlist_map(DList* l, FuncionVisitante f){
    for (DNodo* temp = l->primero; temp != NULL; temp = temp->sig){
        f(temp->dato);
    }
    
}

DList* dlist_crear(){
    DList* listaNueva = malloc(sizeof(DList));
    if (listaNueva != NULL){
        listaNueva->primero = NULL;
        listaNueva->ultimo = NULL;
    }
    return listaNueva;
}

void dlist_destruir(DList* l){
    DNodo* nodoAEliminar = l->primero;
    while (nodoAEliminar != NULL){
        DNodo* temp = nodoAEliminar->sig;
        free(nodoAEliminar);
        nodoAEliminar = temp;
    }
    l->primero = NULL;
    l->ultimo = NULL;
}

void dlist_agregar_inicio(DList* l, int dato){
    DNodo* nuevoNodo = malloc(sizeof(DNodo));
    if (nuevoNodo == NULL) return;

    nuevoNodo->dato = dato;
    nuevoNodo->sig = NULL;
    nuevoNodo->ant = NULL;

    if (l->primero == NULL){
        l->primero = nuevoNodo;
        l->ultimo = nuevoNodo;
    } else{
        nuevoNodo->sig = l->primero;
        l->primero->ant = nuevoNodo;
        l->primero = nuevoNodo;
    }
}

void dlist_agregar_final(DList* l, int dato){
    DNodo* nuevoNodo = malloc(sizeof(DNodo));
    if (nuevoNodo == NULL) return;

    nuevoNodo->dato = dato;
    nuevoNodo->sig = NULL;
    nuevoNodo->ant = NULL;

    if (l->primero == NULL){
        l->primero = nuevoNodo;
        l->ultimo = nuevoNodo;
    } else {
        nuevoNodo->ant = l->ultimo;
        l->ultimo->sig = nuevoNodo;
        l->ultimo = nuevoNodo;
    }
}


void dlist_recorrer(DList* l, FuncionVisitante f,DListOrdenDeRecorrido orden){
    if (l->primero == NULL) return;

    if (orden == DLIST_RECORRIDO_HACIA_ADELANTE){
        for (DNodo* temp = l->primero; temp != NULL; temp = temp->sig){
            f(temp->dato);
        }
        
    } else {
        for (DNodo* temp = l->ultimo; temp != NULL; temp = temp->ant){
            f(temp->dato);
        }
    }
}
#include "slist.h"
#include <stdio.h>

// Reimplemente para este caso las funciones slist crear, slist agregar inicio y slist agregar final.
void slist_agregar_inicio(SList* l, int dato){
    SNodo* nuevoNodo = malloc(sizeof(SNodo));
    if (nuevoNodo == NULL) return;
    nuevoNodo->dato = dato;
    nuevoNodo->sig = NULL;

    if (l->head == NULL){
        l->head = nuevoNodo;
        l->last = nuevoNodo;
    } else {
        nuevoNodo->sig = l->head;
        l->head = nuevoNodo;
    }
}

void slist_agregar_final(SList* l, int dato){
    SNodo* nuevoNodo = malloc(sizeof(SNodo));
    if (nuevoNodo == NULL) return;
    nuevoNodo->dato = dato;
    nuevoNodo->sig = NULL;

    if (l->head == NULL){
        l->head = nuevoNodo;
        l->last = nuevoNodo;
    } else{
        l->last->sig = nuevoNodo;
        l->last = nuevoNodo;
    }
}

void slist_destruir(SList* l){
    SNodo* nodoAEliminar = l->head;
    while (nodoAEliminar != NULL){
        SNodo* temp = nodoAEliminar->sig;
        free(nodoAEliminar);
        nodoAEliminar = temp;
    }
    l->head = NULL;
    l->last = NULL;
}

SList* crear_lista(){
    SList* nuevaLista = malloc(sizeof(SList));
    if (nuevaLista != NULL){
        nuevaLista->head = NULL;
        nuevaLista->last = NULL;
    }
    return nuevaLista;
}

void imprimir_entero(int n){
    printf("%d ", n);
}

void slist_recorrer(SList* l, FuncionVisitante f){
    for (SNodo* temp = l->head; temp != NULL; temp = temp->sig){
        f(temp->dato);
    }
}



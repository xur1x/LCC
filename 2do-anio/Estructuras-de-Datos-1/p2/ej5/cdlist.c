#include "cdlist.h"
#include <stdio.h>

void imprimir_entero(int n){
    printf("%d ", n);
}

void cdlist_map(CDList* l, FuncionVisitante f){
    if (l->primero == NULL) return;
    CDNodo* actual = l->primero;
    CDNodo* ultimo = l->primero->ant;
    CDNodo* prox;

    while (actual != ultimo){
        prox = actual->sig;
        f(actual->dato);
        actual = prox;
    }
    f(ultimo->dato);
    puts("");    
}

CDList* cdlist_crear(){
    CDList* listaNueva = malloc(sizeof(CDList));
    if (listaNueva != NULL){
        listaNueva->primero = NULL;
    }
    return listaNueva;
}

void cdlist_destruir(CDList* l){
    if (l->primero == NULL) return;

    CDNodo* nodoActual = l->primero;
    CDNodo* nodoUltimo = l->primero->ant;
    CDNodo* nodoProximo;

    while (nodoActual != nodoUltimo){
        nodoProximo = nodoActual->sig;
        free(nodoActual);
        nodoActual = nodoProximo;
    }

    free(nodoUltimo);
    l->primero = NULL;

}

void cdlist_agregar_inicio(CDList* l, int dato){
    CDNodo* nuevoNodo = malloc(sizeof(CDNodo));
    if (nuevoNodo == NULL) return;

    nuevoNodo->dato = dato;
    nuevoNodo->sig = NULL;
    nuevoNodo->ant = NULL;

    if (l->primero == NULL){
        nuevoNodo->sig = nuevoNodo;
        nuevoNodo->ant = nuevoNodo;
        l->primero = nuevoNodo;
    } else{
        CDNodo* ultimo = l->primero->ant;

        nuevoNodo->sig = l->primero;
        nuevoNodo->ant = ultimo;
        ultimo->sig = nuevoNodo;

        l->primero->ant = nuevoNodo;
        l->primero = nuevoNodo;
    }
}

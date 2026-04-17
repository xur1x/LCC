#include <stdio.h>
#include <stdlib.h>

typedef struct _SNodo {
int dato;
struct _SNodo *sig;
} SNodo;

typedef struct SList {
    SNodo *primero;
    SNodo *ultimo;
} SList;

void recorrer(SList* l){
    for (SNodo* temp = l->primero; temp != NULL; temp = temp->sig){
        printf("%d ", temp->dato);
    }
}

int slist_longitud(SList* l){
    int len = 0;
    for (SNodo* temp = l->primero; temp != NULL; temp = temp->sig){
        len++;
    }
    return len;
}

SList* slist_crear(){
    SList* lista = malloc(sizeof(SList));
    lista->primero = NULL;
    lista->ultimo = NULL;
    return lista;
}

void slist_agregar_inicio(SList* l, int dato){
    SNodo* nuevoNodo = malloc(sizeof(SNodo));
    nuevoNodo->dato = dato;
    nuevoNodo->sig = l->primero;

    if (l->ultimo == NULL){
        l->ultimo = nuevoNodo;
    }

    l->primero = nuevoNodo;
}

void slist_agregar_final(SList* l, int dato){
    SNodo* nuevoNodo = malloc(sizeof(SNodo));
    nuevoNodo->dato = dato;
    nuevoNodo->sig = NULL;

    if (l->primero == NULL){
        l->primero = nuevoNodo;
        l->ultimo = nuevoNodo;
    } else {
        l->ultimo->sig = nuevoNodo;
        l->ultimo = nuevoNodo;
    }
}

void slist_destruir(SList* l){
    SNodo* aux = l->primero;
    while (aux != NULL){
        SNodo* nodoBorrar = aux;
        aux = aux->sig;
        free(nodoBorrar);        
    }
    free(l);
}

int main(){
    SList* lista = slist_crear();
    slist_agregar_final(lista, 1);
    slist_agregar_final(lista, 2);
    slist_agregar_final(lista, 3);
    slist_agregar_final(lista, 4);
    recorrer(lista);
    puts("");
    printf("la longitud es: %d\n", slist_longitud(lista));


    slist_destruir(lista);
    return 0;
}
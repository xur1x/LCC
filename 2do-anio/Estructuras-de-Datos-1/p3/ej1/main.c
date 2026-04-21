#include <stdio.h>
#include <stdlib.h>
#include "arreglosenteros.h"

int main(){
    Pila pila = pila_crear(5);
    pila_apilar(pila, 1);
    pila_apilar(pila, 2);
    pila_apilar(pila, 3);
    pila_apilar(pila, 4);
    pila_apilar(pila, 5);
    pila_imprimir(pila);
    puts("");

    printf("El tope es: %d ", pila_tope(pila));
    puts("");

    pila_desapilar(pila);
    pila_imprimir(pila);
    puts("");
    printf("El tope es: %d ", pila_tope(pila));
    puts("");

    pila_destruir(pila);
    return 0;
}

// 1 2 3 4 5 
// El tope es: 5 
// 1 2 3 4 
// El tope es: 4 

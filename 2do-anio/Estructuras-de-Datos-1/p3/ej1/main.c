#include <stdio.h>
#include <stdlib.h>
#include "arreglosenteros.h"

int main(){
    ArregloEnteros* arreglo = arreglo_entero_crear(5);
    for (int i = 0; i < 5; i++){
        arreglo_entero_escribir(arreglo, i, i);
    }
    arreglo_enteros_imprimir(arreglo);
    puts("");
    
    arreglo_entero_ajustar(arreglo, 4);
    arreglo_enteros_imprimir(arreglo);
    puts("");

    arreglo_entero_insertar(arreglo, 2, 7);
    arreglo_enteros_imprimir(arreglo);
    puts("");

    arreglo_entero_eliminar(arreglo, 2);
    arreglo_enteros_imprimir(arreglo);
    puts("");

    arreglo_entero_destruir(arreglo);
    return 0;
}
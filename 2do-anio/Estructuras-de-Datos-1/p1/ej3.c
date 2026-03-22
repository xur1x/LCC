#include <stdio.h>
#include <stdlib.h>

// 3. Considere arreglos de enteros definidos a
//  traves de una estructura que lleve registro de la capacidad:
typedef struct {
    int* direccion;
    int capacidad;
} ArregloEnteros;

// a) ArregloEnteros* arreglo_enteros_crear(int capacidad);

ArregloEnteros* arreglo_enteros_crear(int capacidad){
    ArregloEnteros* nuevoArreglo = malloc(sizeof(ArregloEnteros));
    if (nuevoArreglo == NULL){
        return NULL;
    }
    
    nuevoArreglo->capacidad = capacidad;
    nuevoArreglo->direccion = malloc(sizeof(int) * capacidad);
    return nuevoArreglo;
}

// b) void arreglo_enteros_destruir(ArregloEnteros* arreglo);

void arreglo_enteros_destruir(ArregloEnteros* arreglo){
    free(arreglo->direccion);
    free(arreglo);
    printf("el arreglo se destruyo \n");
}

// c) int arreglo_enteros_leer(ArregloEnteros* arreglo, int pos);

int arreglo_enteros_leer(ArregloEnteros* arreglo, int pos){
    if (pos >= 0 && pos < arreglo->capacidad){
        return *(arreglo->direccion+pos);
    }
    return -1;
}

// d) void arreglo_enteros_escribir(ArregloEnteros* arreglo, int pos, int dato);

void arreglo_enteros_escribir(ArregloEnteros* arreglo, int pos, int dato){
    if (pos >= 0 && pos < arreglo->capacidad){
        *(arreglo->direccion+pos) = dato;
    }
}

// e) int arreglo_enteros_capacidad(ArregloEnteros* arreglo);

int arreglo_enteros_capacidad(ArregloEnteros* arreglo){
    if(arreglo != NULL){
        return arreglo->capacidad;
    }
    return -1;
}

// f) void arreglo_enteros_imprimir(ArregloEnteros* arreglo);

void arreglo_enteros_imprimir(ArregloEnteros* arreglo){
    if (arreglo != NULL){
        for (int i = 0; i < arreglo->capacidad; i++){
            printf("valor %d direccion %p\n", *(arreglo->direccion+i), arreglo->direccion+i);
        }
    }
}

int main(){
    ArregloEnteros* a = arreglo_enteros_crear(5);
    printf("la capaidad del arreglo es %d\n", arreglo_enteros_capacidad(a));

    for (int i = 0; i < a->capacidad; i++){
        arreglo_enteros_escribir(a, i, i);
    }

    arreglo_enteros_imprimir(a);
    arreglo_enteros_destruir(a);
    return 0;
}

// ejemplo salida:
// la capaidad del arreglo es 5
// valor 0 direccion 0x5a268e1bc2c0
// valor 1 direccion 0x5a268e1bc2c4
// valor 2 direccion 0x5a268e1bc2c8
// valor 3 direccion 0x5a268e1bc2cc
// valor 4 direccion 0x5a268e1bc2d0
// el arreglo se destruyo 

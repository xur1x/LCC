#include <stdlib.h>
#include <stdio.h>
#include "arreglosenteros.h"

// ----------- repaso pract 1 -----------
ArregloEnteros* arreglo_entero_crear(int capacidad){
    ArregloEnteros* nuevoArreglo = malloc(sizeof(ArregloEnteros));
    nuevoArreglo->capacidad = capacidad;
    nuevoArreglo->direccion = malloc(sizeof(int) * capacidad);
    return nuevoArreglo;
}

void arreglo_entero_destruir(ArregloEnteros* arr){
    free(arr->direccion);
    free(arr);
}

int arreglo_entero_leer(ArregloEnteros* arreglo, int pos){
    if (arreglo == NULL || pos < arreglo->capacidad || pos > arreglo->capacidad){
        printf("indice fuera de rango o el arreglo no existe\n");
        return -1;
    }

    return *(arreglo->direccion + pos);
}

void arreglo_entero_escribir(ArregloEnteros* arreglo, int pos, int dato){
    if (pos >= 0 && pos < arreglo->capacidad){
        *(arreglo->direccion + pos) = dato;
    } else {
        printf("indice fuera de rango");
    }
}
int arreglo_enteros_capacidad(ArregloEnteros* arreglo){
    if (arreglo != NULL) return arreglo->capacidad;
    return -1;
}

void arreglo_enteros_imprimir(ArregloEnteros* arreglo){
    int largo = arreglo->capacidad;
    if (arreglo != NULL) {
        for (int i = 0; i < largo; i++){
            printf("%d ", *(arreglo->direccion+i));
        }
    }
}

void arreglo_entero_ajustar(ArregloEnteros* arreglo, int capacidad){
    int* temp = realloc(arreglo->direccion, sizeof(int) * capacidad);
    if (temp != NULL) {
        arreglo->capacidad = capacidad;
        arreglo->direccion = temp;
    } else {
        printf("No se pudo ajustar el arreglo\n");
    }
}

void arreglo_entero_insertar(ArregloEnteros* arreglo, int pos, int dato){
    int capacidadVieja = arreglo->capacidad;
    if (pos >= 0 && pos < arreglo->capacidad){
        arreglo_entero_ajustar(arreglo, arreglo->capacidad + 1);
        for (int i = capacidadVieja; i > pos; i-- ){
            *(arreglo->direccion+i) = *(arreglo->direccion+i-1);
        }
        *(arreglo->direccion+pos) = dato; 
    }
}

void arreglo_entero_eliminar(ArregloEnteros* arreglo, int pos){
    int largoViejo = arreglo->capacidad;
    if (pos >= 0 && pos < largoViejo){
        for (int i = pos; i < largoViejo; i++){
            *(arreglo->direccion+i) = *(arreglo->direccion+i+1);
        }
    }
    arreglo_entero_ajustar(arreglo, largoViejo - 1);
}

// ----------- fin pract 1 -----------



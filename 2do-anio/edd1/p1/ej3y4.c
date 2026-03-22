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

// int main(){
//     ArregloEnteros* a = arreglo_enteros_crear(5);
//     printf("la capaidad del arreglo es %d\n", arreglo_enteros_capacidad(a));

//     for (int i = 0; i < a->capacidad; i++){
//         arreglo_enteros_escribir(a, i, i);
//     }

//     arreglo_enteros_imprimir(a);
//     arreglo_enteros_destruir(a);
//     return 0;
// }

// ejemplo salida:
// la capaidad del arreglo es 5
// valor 0 direccion 0x5a268e1bc2c0
// valor 1 direccion 0x5a268e1bc2c4
// valor 2 direccion 0x5a268e1bc2c8
// valor 3 direccion 0x5a268e1bc2cc
// valor 4 direccion 0x5a268e1bc2d0
// el arreglo se destruyo 
// -----------------------------------------------------------------------------

// -----------------------------------------------------------------------------
// ejercicio 4

// a) void arreglo enteros ajustar(ArregloEnteros* arreglo, int capacidad), que ajuste el
// tama ̃no del arreglo. Si la nueva capacidad es menor, el contenido debe ser truncado.

void arreglo_enteros_ajustar(ArregloEnteros* arreglo, int nueva_capacidad){
    int * ajuste = realloc(arreglo->direccion, sizeof(int) * nueva_capacidad);
    if (ajuste != NULL){
        arreglo->capacidad = nueva_capacidad;
        arreglo->direccion = ajuste;
    } else{
        printf("No se pudo ajustar el arreglo (NULL)");
    }
}

// b) void arreglo enteros insertar(ArregloEnteros* arreglo, int pos, int dato), que
// inserte el dato en la posici ́on dada, moviendo todos los elementos desde esa posici ́on un lugar a la
// derecha (tendr ́a que incrementar el tama ̃no del arreglo).

void arreglo_enteros_insertar(ArregloEnteros* arreglo, int pos, int dato){
    int viejaCapacidad = arreglo->capacidad;
    arreglo_enteros_ajustar(arreglo, viejaCapacidad + 1);
    for (int i = viejaCapacidad; i > pos; i--){
        *(arreglo->direccion+i) = *(arreglo->direccion+(i - 1));
    }
    *(arreglo->direccion+pos) = dato;
}


// int main(){
//     ArregloEnteros* a = arreglo_enteros_crear(5);
//     printf("la capaidad del arreglo es %d\n", arreglo_enteros_capacidad(a));
//     for (int i = 0; i < a->capacidad; i++){
//         arreglo_enteros_escribir(a, i, i);
//     }
//     arreglo_enteros_imprimir(a);
//     arreglo_enteros_insertar(a, 2, 7);
//     printf("------\n");
//     arreglo_enteros_imprimir(a);
//     arreglo_enteros_destruir(a);
//     return 0;
// }

// ejemplo de salida
// la capaidad del arreglo es 5
// valor 0 direccion 0x623e00c612c0
// valor 1 direccion 0x623e00c612c4
// valor 2 direccion 0x623e00c612c8
// valor 3 direccion 0x623e00c612cc
// valor 4 direccion 0x623e00c612d0
// ------
// valor 0 direccion 0x623e00c612c0
// valor 1 direccion 0x623e00c612c4
// valor 7 direccion 0x623e00c612c8
// valor 2 direccion 0x623e00c612cc
// valor 3 direccion 0x623e00c612d0
// valor 4 direccion 0x623e00c612d4
// el arreglo se destruyo 
// -----------------------------------------------------------------------------


// -----------------------------------------------------------------------------

// c) void arreglo enteros eliminar(ArregloEnteros* arreglo, int pos), que elimine el dato en
// la posici ́on dada, moviendo todos los elementos posteriores un lugar a la izquierda (tendr ́a que
// reducir el tama ̃no del arreglo).

void arreglo_enteros_eliminar(ArregloEnteros* arreglo, int pos){
    int viejaCapacidad = arreglo->capacidad;
    for (int i = pos; i < viejaCapacidad - 1; i++){
        *(arreglo->direccion+i) = *(arreglo->direccion+i+1);
    }

    arreglo_enteros_ajustar(arreglo, viejaCapacidad - 1);
    
}

int main(){
    ArregloEnteros* a = arreglo_enteros_crear(5);
    printf("la capaidad del arreglo es %d\n", arreglo_enteros_capacidad(a));
    for (int i = 0; i < a->capacidad; i++){
        arreglo_enteros_escribir(a, i, i);
    }
    arreglo_enteros_imprimir(a);
    arreglo_enteros_insertar(a, 2, 7);
    printf("------\n");
    arreglo_enteros_imprimir(a);
    arreglo_enteros_eliminar(a, 2);
    printf("------\n");
    arreglo_enteros_imprimir(a);
    arreglo_enteros_destruir(a);
    return 0;
}
// ejemplo de salida
// la capaidad del arreglo es 5
// valor 0 direccion 0x58096fb9f2c0
// valor 1 direccion 0x58096fb9f2c4
// valor 2 direccion 0x58096fb9f2c8
// valor 3 direccion 0x58096fb9f2cc
// valor 4 direccion 0x58096fb9f2d0
// ------
// valor 0 direccion 0x58096fb9f2c0
// valor 1 direccion 0x58096fb9f2c4
// valor 7 direccion 0x58096fb9f2c8
// valor 2 direccion 0x58096fb9f2cc
// valor 3 direccion 0x58096fb9f2d0
// valor 4 direccion 0x58096fb9f2d4
// ------
// valor 0 direccion 0x58096fb9f2c0
// valor 1 direccion 0x58096fb9f2c4
// valor 2 direccion 0x58096fb9f2c8
// valor 3 direccion 0x58096fb9f2cc
// valor 4 direccion 0x58096fb9f2d0
// el arreglo se destruyo 

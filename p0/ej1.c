// 1. Escriba un programa que declare algunas variables locales, e imprima las direcciones de memoria de
// las mismas. Pruebe declarar un arreglo de caracteres, y verifique que las direcciones de sus elementos
// son contiguas.
#include <stdio.h>

// mostrarArr: void -> void
// dado un arreglo y el tamanio del mismo,
// muestra por pantalla junto a sus elementos y direcciones
void mostrarArr(int a[], int tam){
    for(int i = 0; i < tam; i++){
        printf("valor %d , direccion: %p\n", a[i], &a[i]);
    }
}

int main(){
    int a = 1, b = 7;
    int arr[] = {1,2,3,4,5};
    printf("valor de a: %d --> %p\n", a, &a);
    printf("valor de b: %d --> %p\n", b, &b);
    mostrarArr(arr, 5);
    return 0;
}

// Ej salida:
// valor de a: 1 --> 0x7ffe278c37c8
// valor de b: 7 --> 0x7ffe278c37cc
// valor 1 , direccion: 0x7ffe278c37d0
// valor 2 , direccion: 0x7ffe278c37d4
// valor 3 , direccion: 0x7ffe278c37d8
// valor 4 , direccion: 0x7ffe278c37dc
// valor 5 , direccion: 0x7ffe278c37e0

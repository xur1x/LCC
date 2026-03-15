// 2. Implemente una funcion void set first(int []) que ponga en cero el primer elemento del arreglo
// recibido. Verifique desde la funcion llamante que efectivamente modifica este valor.

// ¿Por que pasa esto? El nombre del arreglo es un puntero al primer elemento
// ¿No llama a la funcion por valor? Se pasa por valor la direccion de memoria 

#include <stdio.h>

// mostrarArr: void -> void
// dado un arreglo y el tamanio del mismo,
// muestra por pantalla junto a sus elementos y direcciones
void mostrarArr(int a[], int tam){
    for(int i = 0; i < tam; i++){
        printf("valor %d , direccion: %p\n", a[i], &a[i]);
    }
}

void set_first(int a[]){
    a[0] = 0;
}

int main(){
    int a[] = {7,7,7};
    mostrarArr(a,3);
    printf("--------\n");
    set_first(a);
    mostrarArr(a,3);
    return 0;
}

// ejemplo de salida
// valor 7 , direccion: 0x7ffdf80af54c
// valor 7 , direccion: 0x7ffdf80af550
// valor 7 , direccion: 0x7ffdf80af554
// --------
// valor 0 , direccion: 0x7ffdf80af54c
// valor 7 , direccion: 0x7ffdf80af550
// valor 7 , direccion: 0x7ffdf80af554

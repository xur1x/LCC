// 8 Implemente las siguientes funciones que reciben como argumento punteros a funci ́on:
#include <stdio.h>

// d) Pruebe las funciones anteriores pas ́andoles como par ́ametro las siguientes funciones:
int sucesor(int n){
    return n + 1;
}

void imprimir(int n){
    printf("%d\n", n);
}

// a) int apply(int (*)(int), int) que toma un puntero a funci ́on, y un entero, y aplica la funci ́on al
// entero y retorna el valor dado.

int apply(int (*f)(int), int n){
    return f(n);
}

// b) void apply in(int (*)(int), int*) que toma un puntero a funci ́on, un puntero a un entero, y
// reemplaza el entero apuntado por el valor de ejecutar la funci ́on apuntada sobre el valor apuntado.

void apply_in(int (*g)(int), int* n){
    int temp = g(*n);
    *n = temp;
}

// c) void recorre(VisitorFunc, int[], int) que toma un puntero a una funci ́on, un arreglo de enteros,
// y su longitud, y aplica la funci ́on a cada elemento del arreglo. VisitorFunc est ́a definido por
// typedef void (*VisitorFunc)(int).

typedef void (*VisitorFunc)(int); //define el tipo (ptr a funcion int -> void)

// r: Array(int) int --> void
// dado un arreglo y su tamanio, imprime sus elementos
void recorre(VisitorFunc f, int a[], int tam){
    for(int i = 0; i < tam; i++){
        f(a[i]);
    }
}

int main(){
    int n = 5, arr[] = {1,2,3,4,5};
    int* a = &n;
    // printf("n es %d y su sucesor %d\n", n, apply(sucesor,n));

    // printf("n es %d --> %p\n", n, &n); // n es 5 --> 0x7ffc9c1c863c
    // apply_in(sucesor, a);
    // printf("n es %d --> %p\n", n, &n); // n es 6 --> 0x7ffc9c1c863c

    recorre(imprimir, arr, 5);

    return 0;
}



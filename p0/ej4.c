// 4. Implemente una funci ́on void swap(int *, int *) que dados dos punteros a variables, intercambie
// el contenido de las variables apuntadas.

#include <stdio.h>

// swap: dado dos punteros a enteros, intercambia
// el contenido de las mismas.
void swap(int* a, int* b){
    int temp = *a;
    *a = *b;
    *b = temp;
}

int main(){
    int a = 3, b = 7;
    printf("valor de a: %d --> %p\n", a, &a);
    printf("valor de b: %d --> %p\n", b, &b);
    swap(&a, &b);
    printf("valor de a: %d --> %p\n", a, &a);
    printf("valor de b: %d --> %p\n", b, &b);
    return 0;
}

// ejemplo de salida
// valor de a: 3 --> 0x7ffcd723d980
// valor de b: 7 --> 0x7ffcd723d984
// valor de a: 7 --> 0x7ffcd723d980
// valor de b: 3 --> 0x7ffcd723d984

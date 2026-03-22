// 3. Implemente una funci ́on set in(int *) que toma un puntero a un entero, y reemplaza el entero
// apuntado por un 1 si el entero apuntado era diferente a 0, y 0 en caso contrario.

#include <stdio.h>

// set_in: dado un puntero a entero, se
// reemplaza el valor apuntado por 1 si este es
// != 0 o por 0 en caso contrario
void set_in(int *a){
    if (*a != 0){
        *a = 1;
    }
}

int main(){
    int a = 7;
    printf("valor de a: %d --> %p\n", a, &a);
    set_in(&a);
    printf("valor de a: %d --> %p\n", a, &a);
    return 0;
}

// ejemplo salida
// valor de a: 7 --> 0x7ffd5265cd84
// valor de a: 1 --> 0x7ffd5265cd84

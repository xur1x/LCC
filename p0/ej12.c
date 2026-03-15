// 12. Defina una estructura para representar puntos en el plano, y una funci ́on medio que dados dos de
// estos puntos, calcule el punto medio.
#include <stdio.h>

typedef struct{
    int x;
    int y;
} Punto;

Punto crearPunto(int a, int b){
    Punto rta;
    rta.x = a;
    rta.y = b;
    return rta;
}

Punto medio(Punto a, Punto b){
    Punto rta;
    rta.x = (a.x + b.x) / 2;
    rta.y = (a.y + b.y) / 2;
    return rta;
}

int main(){
    Punto a = crearPunto(1,1);
    Punto b = crearPunto(3,3);
    Punto pmedio = medio(a,b);
    printf("(%d,%d)\n", pmedio.x, pmedio.y);
    return 0;
}
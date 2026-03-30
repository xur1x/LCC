#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <assert.h>

typedef struct {
    int verde, negro, amarillo;
} Color;

// crearColorAux: int int int -> int
// Dado tres enteros, determina si es posible crear un color (1), y si no (0)
// crearColorAux(-1,1,1) = 0
// crearColorAux(1,1,1) = 1
// crearColorAux(0,10,10) = 1
int crearColorAux(int a, int b, int c){
    if ((a >= 0 && a <= 255) && (b >= 0 && b <= 255) && (c >= 0 && c <= 255)){
        return 1;
    } else{
        return 0;
    }
}

// crearColor: int int int -> Color
// Dado tres enteros, determina si es posible crear un color (1), y si no (0)
Color crearColor(int a, int b, int c){
    Color rta;
    if (crearColorAux(a,b,c)){
        rta.verde = a;
        rta.negro = b;
        rta.amarillo = c;
    }
    return rta;
}

// esIgual: Color Color -> int
// Dado dos colores, determina si son iguales (1), y si no (0)
// esIgual((1,1,1), (1,1,1)) = 1
// esIgual((1,1,1), (1,1,2)) = 0
// esIgual((1,3,3), (3,3,3)) = 0
int esIgual(Color c1, Color c2){
    if (c1.verde == c2.verde && c1.negro == c2.negro && c1.amarillo == c2.amarillo){
        return 1;
    } else{
        return 0;
    }
}

// inverso: Color -> Color
// dado un color, calcula su inverso
Color inverso(Color c1){
    Color rta;
    int a1 = 255 - c1.negro;
    int a2 = 255 - c1.amarillo;
    int a3 = 255 - c1.verde;

    if (crearColor(a1,a2,a3)){
        rta.negro = a1;
        rta.amarillo = a2;
        rta.verde = a3;
    }
    return rta;
}


// mezclar: Color Color -> Color
// Dado dos colores, retorna otro Color que representa la mezcla de estos dos.
Color mezcla(Color c1, Color c2){
    Color rta;
    int promedio1 = c1.amarillo + c1.verde + c1.negro / 3;
    int promedio2 = c2.amarillo + c2.verde + c2.negro / 3;
    int promedio = promedio1 + promedio2;

    if (crearColor(promedio, promedio, promedio)){
        rta.negro = promedio;
        rta.verde = promedio;
        rta.amarillo = promedio;
    }
    return rta;
}



int main(void){


    // TESTING
    assert(crearColorAux(1,1,1) == 1);
    assert(crearColorAux(-1,1,1) == 0);
    assert(crearColorAux(0,10,10) == 1);

    Color a = crearColor(1,1,1), b = crearColor(1,1,1), c = crearColor(0,0,100);

    assert(esIgual(a,b) == 1);
    assert(esIgual(a,c) == 0);
    assert(esIgual(c,b) == 0);


    return 0;
}


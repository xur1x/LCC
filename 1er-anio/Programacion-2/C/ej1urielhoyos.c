#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <assert.h>

// LEN representa los 12 meses (longitud del arreglo temperaturas)
#define LEN 12 
float temperaturas[LEN] = {25.0, 27.5, 22.0, 17.0, 12.0, 8.0, 6.0, 8.5, 12.0, 16.0, 20.0, 24.0};

// promAritmetico: [float] -> float
// Dado un arreglo l de longitud LEN, retorna el promedio
// aritmetico del mismo.
// Representamos temperaturas mediante numeros
// Ejemplos:
// promAritmetico([1,1,2,0], 4) = 1;
// promAritmetico([0,0,0], 3) = 0;
// promAritmetico([2.5,3.5, 0.0], 3) = 2;
float promAritmetico(float l[]){
    // Calculamos la suma
    float suma = 0;
    for (int i = 0; i < LEN; i++){
        suma += l[i];
    }
    return suma / LEN;
}

// mostrarArray: [float] -> void
// Dado un arreglo de longitud LEN, muestra por pantalla el mismo
// Representamos temperaturas mediante numeros
// Ejemplos:
// mostrarArray([1,2,3]) = 123
// mostrarArray([1,1,1,1]) = 1111
// mostrarArray([3,2,1]) = 321
void mostrarArray(float l[]){
    for (int i = 0; i < LEN; i++){
        printf("%.1f ", l[i]);
    }
}

// desviacionProm: [float] -> [float]
// Dado un arreglo de longitud LEN, retorna el mismo
// aplicando la diferencia del valor absoluto con el promedio.
float* desviacionProm(float l[]){
    float *arr = malloc(sizeof(float)*LEN);
    for (int i = 0; i < LEN; i++){
        arr[i] = fabs(l[i] - promAritmetico(temperaturas));
    }
    return arr;
}

// promInfusionesAux: float -> void
// dado un flotante n, determina a que mes pertenece
// promInfusionesAux(0) == Enero
// promInfusionesAux(11) == Noviembre
// promInfusionesAux(12) == Diciembre
void promInfusionesAux(float n){
    if (n == 0){
        printf("Enero ");
    } else if (n == 1){
        printf("Febrero ");
    } else if (n == 2){
        printf("Marzo ");
    } else if (n == 3){
        printf("Abril ");
    } else if (n == 4){
        printf("Marzo ");
    } else if (n == 5){
        printf("Junio ");
    } else if (n == 6){
        printf("Julio ");
    } else if (n == 7){
        printf("Agosto ");
    } else if (n == 8){
        printf("Septiembre ");
    } else if (n == 9){
        printf("Octubre ");
    } else if (n == 10){
        printf("Noviembre ");
    } else if (n == 11){
        printf("Diciembre ");
    }
}

// promInfusiones: [float] -> void
// Dado un numero, imprime las infusiones a ofrecer segun la
// temperatura ingresada
// Representamos temperaturas mediante numeros
void promInfusiones(float n[]){
    for (int i = 0; i < LEN; i++){
        int j = 0;
        promInfusionesAux(n[j]);
        if (n[i] < 10){
            // promInfusionesAux(n[j]);
            printf("%.2f: Submarinos o Remos.\n", n[i]);
        } else if(n[i] >= 10 && n[i] < 20){
            // promInfusionesAux(n[j]);
            printf("%.2f: Cafe y te.\n", n[i]);
        } else if (n[i] >= 20 && n[i] < 25){
            // promInfusionesAux(n[j]);
            printf("%.2f: Milkshakes.\n", n[i]);
        } else if (n[i] >= 25){
            // promInfusionesAux(n[j]);
            printf("%.2f: Copas heladas.\n", n[i]);
        }
        j++;
    }
}

int main(void){
    float *arr = desviacionProm(temperaturas);
    // Mostramos arreglo temperaturas
    printf("Temperaturas: ");
    mostrarArray(temperaturas);
    printf("\n");
    // Mostramos el promedio aritmetico
    printf("El promedio aritmetico es: %.2f\n", promAritmetico(temperaturas));
    printf("Desviacion del promedio: ");
    // Mostramos la desviacion del promedio
    mostrarArray(arr);
    printf("\n");
    // Mostramos las promociones
    promInfusiones(temperaturas);

    // TESTING
    float a[] = {1,1,1,1,1,1,1,1,1,1,1,1}, b[] = {0,0,0,0,0,0,0,0,0,0,0,0};
    float c[] = {2.5,3.5,1,1,1,1,1,1,0,0,0,0};
    assert(promAritmetico(a) == 1);
    assert(promAritmetico(b) == 0);
    assert(promAritmetico(c) == 1);

    // Liberamos memoria 
    free(arr);
    return 0;
}

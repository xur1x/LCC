// 1. La mediana de un arreglo ordenado de n n ́umeros se define como el elemento del medio cuando n es
// impar y como el promedio de los dos elementos del medio cuando n es par. Por ejemplo,
// mediana([-1.0, 2.2, 2.9, 3.1, 3.5]) = 2.9
// mediana([-1.0, 2.2, 2.9, 3.1]) = 2.55
// Escriba una funci ́on que reciba un arreglo, no necesariamente ordenado, de n ́umeros y calcule su mediana:
// float mediana(float *arreglo, int longitud);
// Puede utilizar la siguiente rutina para ordenar un arreglo de menor a mayor
// Nota: La funci ́on mediana no debe modificar el arreglo original.

#include <stdio.h>
#include <stdlib.h>

void bubbleSort(float a[], int tam){
	for (int i = 0; i < tam - 1; i++){
		for (int j = 0; j < tam - i - 1; j++){
			if (a[j] > a[j + 1]){
				float aux = a[j];
				a[j] = a[j + 1];
				a[j + 1] = aux;
			}
		}
	}
}

float mediana(float* a, int tam){
	float* copia = malloc(sizeof(float) * tam);
	float rta;
	for (int i = 0; i < tam; i++){
		copia[i] = a[i]; 
	}

	bubbleSort(copia, tam);

	if (tam % 2 != 0){
		rta = copia[(tam/2)];
	} else{
		rta = (copia[tam/2] + copia[(tam/2) - 1]) / 2;
	}

	free(copia);
	return rta;
}

int main(){
	float a[] = {-1.0, 2.2, 2.9, 3.1, 3.5};
	float b[] = {-1.0, 2.2, 2.9, 3.1};
	float rta = mediana(a, 5);
	float rtaa = mediana(b, 4);
	printf("la mediana de a es %.2f\n", rta);
	printf("la mediana de b es %.2f\n", rtaa);

	return 0;
}

// ejemplo de salida
// 2.2
// 2.9
// la mediana de a es 2.90
// la mediana de b es 2.55

#ifndef __SLIST_H__
#define __SLIST_H__

typedef struct {
    int* direccion;
    int capacidad;
} ArregloEnteros;

typedef struct Pila {
    ArregloEnteros *arr;
    int ultimo;
} Pila;

// ----------- repaso pract 1 -----------

ArregloEnteros* arreglo_entero_crear(int capacidad);
void arreglo_entero_destruir(ArregloEnteros* arr);
int arreglo_entero_leer(ArregloEnteros* arreglo, int pos);
void arreglo_entero_escribir(ArregloEnteros* arreglo, int pos, int dato);
int arreglo_enteros_capacidad(ArregloEnteros* arreglo);
void arreglo_enteros_imprimir(ArregloEnteros* arreglo);
void arreglo_entero_ajustar(ArregloEnteros* arreglo, int capacidad);
void arreglo_entero_insertar(ArregloEnteros* arreglo, int pos, int dato);
void arreglo_entero_eliminar(ArregloEnteros* arreglo, int pos);

// ----------- fin pract 1 -----------




#endif /* __SLIST_H__ */
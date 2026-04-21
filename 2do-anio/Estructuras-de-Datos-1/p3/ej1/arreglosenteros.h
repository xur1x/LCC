#ifndef __SLIST_H__
#define __SLIST_H__

typedef struct {
    int* direccion;
    int capacidad;
} ArregloEnteros;

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


// ----------- pract 3 ej1 -----------


struct _Pila {
    ArregloEnteros *arr;
    int ultimo;
};

typedef struct _Pila *Pila;

Pila pila_crear(int capacidad);
void pila_destruir(Pila p);
int pila_es_vacia(Pila p);
int pila_tope(Pila p);
void pila_apilar(Pila p, int dato);
void pila_desapilar(Pila p);
void pila_imprimir(Pila p);

#endif /* __SLIST_H__ */
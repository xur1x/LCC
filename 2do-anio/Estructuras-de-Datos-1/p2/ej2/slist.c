#include "slist.h"
#include <stdlib.h>
#include <stdio.h>

SList slist_crear() {
  return NULL;
}

void slist_destruir(SList lista) {
  SNodo *nodoAEliminar;
  while (lista != NULL) {
    nodoAEliminar = lista;
    lista = lista->sig;
    free(nodoAEliminar);
  }
}

int slist_vacia(SList lista) {
  return lista == NULL;
}

SList slist_agregar_final(SList lista, int dato) {
  SNodo *nuevoNodo = malloc(sizeof(SNodo));
  nuevoNodo->dato = dato;
  nuevoNodo->sig = NULL;

  if (lista == NULL)
    return nuevoNodo;

  SList nodo = lista;
  for (;nodo->sig != NULL;nodo = nodo->sig);
  /* ahora 'nodo' apunta al ultimo elemento en la lista */

  nodo->sig = nuevoNodo;
  return lista;
}

SList slist_agregar_inicio(SList lista, int dato) {
  SNodo *nuevoNodo = malloc(sizeof(SNodo));
  nuevoNodo->dato = dato;
  nuevoNodo->sig = lista;
  return nuevoNodo;
}

void slist_recorrer(SList lista, FuncionVisitante visit) {
  for (SNodo *nodo = lista; nodo != NULL; nodo = nodo->sig)
    visit(nodo->dato);
}


//  2. Extienda la implementaci ́on anterior con las siguientes funciones:
// a) slist longitud que devuelve la longitud de una lista.
int slist_longitud(SList lista){
  int largo = 0;
  while (lista != NULL){
    largo++;
    lista = lista->sig;
  }
  return largo;
}


// b) slist concatenar que devuelve la concatenaci ́on de dos listas, modificando la primera.
SList slist_concatenar(SList l1, SList l2){
  if (l1 == NULL) return l2;
  if (l2 == NULL) return l1;

  SList temp = l1;
  while (temp->sig != NULL){
    temp = temp->sig;
  }
  temp->sig = l2;
  
  return l1;
}

// c) slist insertar que inserta un dato en una lista en una posici ́on arbitraria.
SList slist_insertar(SList l, int datto, int pos){

  if (pos < 0 || pos > slist_longitud(l)){
    printf("indice fuera de rango mostro \n");
    return l;
  }

  SNodo* nuevoNodo = malloc(sizeof(SNodo));
  nuevoNodo->dato = datto;
  nuevoNodo->sig = NULL;

  if (pos == 0){
    nuevoNodo->sig = l;
    return nuevoNodo;
  }

  SList temp = l;
  for (int i = 0 ; i < pos - 1; i++, temp = temp->sig);
  nuevoNodo->sig = temp->sig;
  temp->sig = nuevoNodo;
  return l;
}

// d) slist eliminar que borra de una lista un dato apuntado en una posici ́on arbitraria.
SNodo* slist_eliminar(SNodo* l, int pos){
    int len = slist_longitud(l);
    if (l == NULL) return l;
    if (pos < 0 || pos > len){
        printf("indice fuera de rango\n");
        return l;
    }

    SNodo* temp = l;
    for (int i = 0 ; i < pos - 1 ; temp = temp->sig, i++);
    SNodo* nodoBorrar = temp->sig;
    temp->sig = nodoBorrar->sig;
    free(nodoBorrar);
    return l;
}

// e) slist contiene que determina si un elemento est ́a en una lista dada.
int slist_contiene(SList l, int elemento){
  int cont = 0;
  while (l != NULL){
    if (l->dato == elemento){
      return 1;
    }
    l = l->sig;
  }
  return 0;
}

// f) slist indice que devuelve la posici ́on de la primera ocurrencia de un elemento si el mismo est ́a en
// la lista dada, y -1 en caso que no est ́e.
int slist_indice(SList l, int elemento){
  int indice = 0;
  while (l != NULL){
    if (l->dato == elemento){
      return indice;
    }
    indice++;
    l = l->sig;
  }
  return -1;
}

// g) slist intersecar que devuelve una nueva lista con los elementos comunes (independientemente de
// la posici ́on) de dos listas dadas por par ́ametro. Las listas originales no se modifican.
SList slist_intersecar(SList l1, SList l2){
  SList nuevaLista = NULL;
  for (SList i = l1; i != NULL; i = i->sig){
    int datoActual = i->dato;
    if (slist_contiene(l2, datoActual) && !(slist_contiene(nuevaLista, datoActual)) ){
      nuevaLista = slist_agregar_final(nuevaLista, datoActual);
    }
  }
  return nuevaLista;
}

// h) slist intersecar custom que trabaja como la anterior pero recibe un par ́ametro extra que es un
// puntero a una funci ́on de comparaci ́on que permite definir la noci ́on de igualdad a ser usada al
// comparar elementos por igualdad.
int espar(int a, int b){
  if (a % 2 == 0 && b % 2 == 0){
    return 1;
  } else{
    return 0;
  }
}

int slist_contiene_custom(SList l, int elemento, FuncionComp comp){
  int cont = 0;
  while (l != NULL){
    if (comp(l->dato, elemento)){
      return 1;
    }
    l = l->sig;
  }
  return 0;
}

SList slist_intersecar_custom(SList l1, SList l2, FuncionComp comp){
  SList nuevaLista = NULL;
  for (SList i = l1; i != NULL; i = i->sig){
    int datoActual = i->dato;
    if (slist_contiene_custom(l2, datoActual, comp) &&
     !(slist_contiene_custom(nuevaLista, datoActual, comp))){
      nuevaLista = slist_agregar_final(nuevaLista, datoActual);
    }
  }
  return nuevaLista;
}


// i) slist ordenar que ordena una lista de acuerdo al criterio dado por una funci´on de comparaci´on
// (que usa los mismos valores de retorno que strcmp()) pasada por par´ametro.


// j) slist reverso que obtenga el reverso de una lista.
SList slist_reverse(SList l){
  SList lista_invertida = NULL;
  SList temp = l;
  while (temp != NULL){
    lista_invertida = slist_agregar_inicio(lista_invertida, temp->dato);
    temp = temp->sig;
  }
  return lista_invertida;
}


// k) slist intercalar que dadas dos listas, intercale sus elementos en la lista resultante. Por ejemplo,
// dadas las listas [1, 2, 3, 4] y [5, 6], debe obtener la lista [1, 5, 2, 6, 3, 4].

SList slist_intercalar(SList l1, SList l2){
  if (l1 == NULL ) return l2;
  if (l2 == NULL ) return l1;

  SList nuevaLista = NULL;
  SList i = l1, j = l2;
  int pos = 1;
  while (i != NULL || j != NULL){
    if (j == NULL){
      nuevaLista = slist_concatenar(nuevaLista, i);
      break;
    } else if (i == NULL){
      nuevaLista = slist_concatenar(nuevaLista, j);
      break;
    }

    if (!(pos % 2 == 0)){
      nuevaLista = slist_agregar_final(nuevaLista, i->dato);
      i = i->sig;
    } else{
      nuevaLista = slist_agregar_final(nuevaLista, j->dato);
      j = j->sig;
    }
    pos++;
  }
  return nuevaLista;
}


// l) slist partir que divide una lista a la mitad. En caso de longitud impar (2n + 1), la primer lista
// tendr´a longitud n + 1 y la segunda n. Retorna un puntero al primer elemento de la segunda mitad,
// siempre que sea no vac´ıa

SList slist_partir(SList l){
  if (l == NULL || l->sig == NULL) return NULL;
  SList listaNueva = NULL;
  SList temp = l;
  int tam = slist_longitud(l), corte;

  if (tam % 2 == 0){
    corte = tam/2;
  } else {
      corte = (tam / 2) + 1;
  }

  for (int i = 0; i < corte - 1; i++){
    temp = temp->sig;
  }

  listaNueva = temp->sig;
  temp->sig = NULL;
  return listaNueva;
}

#include "btree.h"
#include <assert.h>
#include <stdlib.h>

struct _BTNodo {
  int dato;
  struct _BTNodo *left;
  struct _BTNodo *right;
};

/**
 * Devuelve un arbol vacío.
 */
BTree btree_crear() { return NULL; }

/**
 * Destruccion del árbol.
 */
void btree_destruir(BTree nodo) {
  if (nodo != NULL) {
    btree_destruir(nodo->left);
    btree_destruir(nodo->right);
    free(nodo);
  }
}

/**
 * Indica si el árbol es vacío.
 */
int btree_empty(BTree nodo) { return nodo == NULL; }

/**
 * Crea un nuevo arbol, con el dato dado en el nodo raiz, y los subarboles dados
 * a izquierda y derecha.
 */
BTree btree_unir(int dato, BTree left, BTree right) {
  BTree nuevoNodo = malloc(sizeof(struct _BTNodo));
  assert(nuevoNodo != NULL);
  nuevoNodo->dato = dato;
  nuevoNodo->left = left;
  nuevoNodo->right = right;
  return nuevoNodo;
}

/**
 * Recorrido del arbol, utilizando la funcion pasada.
 */
void btree_recorrer(BTree arbol, BTreeOrdenDeRecorrido orden, FuncionVisitante visit) {

  if (btree_empty(arbol)){
    return ;
  }

  if (orden == BTREE_RECORRIDO_PRE) {
    visit(arbol->dato);
    BTree left = arbol->left;
    btree_recorrer(left, orden, visit);
    BTree right = arbol->right;
    btree_recorrer(right, orden, visit);
  }

  if (orden == BTREE_RECORRIDO_IN) {
    BTree left = arbol->left;
    btree_recorrer(left, orden, visit);
    visit(arbol->dato);
    BTree right = arbol->right;
    btree_recorrer(right, orden, visit);
  }

  if (orden == BTREE_RECORRIDO_POST){
    BTree left = arbol->left;
    btree_recorrer(left, orden, visit);
    BTree right = arbol->right;
    btree_recorrer(right, orden, visit);
    visit(arbol->dato);
  }

  return;
}
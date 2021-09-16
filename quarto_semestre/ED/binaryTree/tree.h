#ifndef _TREE_H_
#define _TREE_H_
#include "treeNode.h"

typedef struct tree {
  PNODE root;
} TREE;

TREE constructTree();
void adicionarValorNaArvore(TREE* arbol, int valor);
void imprimeArbol(TREE* tree);
void contarNosDaArvore(TREE* tree);
void pesquisarValorNaArvore(TREE* tree, int valor);


#endif
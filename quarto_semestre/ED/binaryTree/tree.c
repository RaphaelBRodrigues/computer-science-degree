#include <stdio.h>
#include "tree.h"
#include "treeNode.h"

TREE constructTree(){
  TREE newTree;
  newTree.root = NULL;

  return  newTree;

}

void adicionarValorNaArvore(TREE* arbol, int valor){
  PNODE newNode = constructTreeNode(valor);
  arbol->root = addNewNode(arbol->root, newNode);
}

void imprimeArbol(TREE* tree){
  printf("MINHA ARVORE\n");
  printTreeNode(tree->root);
  printf("\n");
}

void contarNosDaArvore(TREE* tree){
   int resultado = countTreeNode(tree->root);
   printf("TAMANHO DA ARVORE: %d\n", resultado);
}
void pesquisarValorNaArvore(TREE* tree, int valor){
  PNODE resultado = searchTreeNode(tree->root, valor);
  if(resultado == NULL)
    printf("NAO ACHEI NADA\n");
  else
    printf("O VALOR %d FOI ENCONTRADO\n",valor);
}
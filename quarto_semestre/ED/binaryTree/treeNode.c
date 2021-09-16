#include <stdio.h>
#include <malloc.h>
#include "treeNode.h"


PNODE constructTreeNode(int valor){
  PNODE newNode = (PNODE) malloc(sizeof(TREE_NODE));
  newNode->valor = valor;
  newNode->nEsc = NULL;
  newNode->nDir= NULL;
  return newNode;
}

PNODE addNewNode(PNODE raiz, PNODE newNode){
  
  if(raiz == NULL) return newNode;

  // Validar valor
  if(newNode->valor < raiz->valor){
    //
    raiz->nEsc = addNewNode(raiz->nEsc, newNode);
  }
  else{
   //
   raiz->nDir = addNewNode(raiz->nDir, newNode);
  }

  return raiz;
}

PNODE searchTreeNode(PNODE raiz, int valor){
 if(raiz == NULL) return NULL;
 if(raiz->valor == valor) return raiz;

 if(valor > raiz->valor)
    return searchTreeNode(raiz->nDir, valor);
 else
    return searchTreeNode(raiz->nEsc, valor);
}

int countTreeNode(PNODE raiz){
 if(raiz == NULL) return 0;
 return countTreeNode(raiz->nEsc) + 1 + countTreeNode(raiz->nDir);
}

void printTreeNode(PNODE raiz){
  if(raiz != NULL){
    printf("%d", raiz->valor);
    printf("[");
    printTreeNode(raiz->nEsc);
    printTreeNode(raiz->nDir);
    printf("]");
  }

}

PNODE procurarNoComPai(PNODE raiz, int valor, PNODE* pai){
  PNODE aux = raiz;
  *pai = NULL;

  while(aux != NULL){
     if(aux->valor == valor) return aux;
    *pai = aux;
     if (valor < aux->valor) aux = aux->nEsc;
     else aux = aux->nDir;
  }

  return NULL;
}


PNODE removeNode(PNODE raiz, int valor){
    PNODE cara, paiDele;
    int isFilhoDireita, isFilhoEsquerda;
    if(raiz == NULL) return NULL;

    cara = procurarNoComPai(raiz, valor, &paiDele);

    if(cara == NULL) return raiz;

     if(paiDele != NULL){
        isFilhoDireita = valor > paiDele->valor ? 1:0;
        isFilhoEsquerda = valor < paiDele->valor ? 1:0;
      }
    //CARA NÃO TEM FILHOS
    if(cara->nDir == NULL && cara->nEsc == NULL){
      if(paiDele != NULL){
        if(isFilhoDireita == 1)
          paiDele->nDir = NULL;
        else if(isFilhoEsquerda == 1)
          paiDele->nEsc= NULL;
      }

      free(cara);

      return raiz;
    }

    //CARA TEM 1 FILHOS

    //1 FILHO A DIREITA
    if(cara->nDir != NULL && cara->nEsc == NULL){
      if(paiDele != NULL){
        if(isFilhoDireita == 1) 
          paiDele->nDir = cara->nDir;
        else if(isFilhoEsquerda == 1)
          paiDele->nEsc = cara->nDir;
        
        free(cara);
        return raiz;
      }
    PNODE caraQueSeraRetonado = cara->nDir;
    free(cara);

    return caraQueSeraRetonado;
    }

    if(cara->nDir == NULL && cara->nEsc != NULL){
      if(paiDele != NULL){
        
      }

    }
}
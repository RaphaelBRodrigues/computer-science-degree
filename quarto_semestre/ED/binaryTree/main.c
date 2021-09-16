#include <stdio.h>
#include "tree.h"

int main(void) {
  TREE minhaArbol = constructTree();  
  adicionarValorNaArvore(&minhaArbol, 10);
  adicionarValorNaArvore(&minhaArbol, 20);
  adicionarValorNaArvore(&minhaArbol, 15);
  adicionarValorNaArvore(&minhaArbol, 8);
  
  imprimeArbol(&minhaArbol);

  contarNosDaArvore(&minhaArbol);

  pesquisarValorNaArvore(&minhaArbol, 8);
  pesquisarValorNaArvore(&minhaArbol, 14);
  return 0;;
}
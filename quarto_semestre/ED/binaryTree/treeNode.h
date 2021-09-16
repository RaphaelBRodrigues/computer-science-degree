#ifndef _TREE_NODE_H_
#define _TREE_NODE_H_

typedef struct treeNode{
  int valor;
  struct treeNode* nEsc;
  struct treeNode* nDir;
} TREE_NODE;

typedef TREE_NODE* PNODE;

PNODE constructTreeNode(int valor);
PNODE addNewNode(PNODE raiz, PNODE newNode);
PNODE removeNode(PNODE raiz, int valor);
PNODE searchTreeNode(PNODE raiz, int valor);
PNODE procurarNoComPai(PNODE raiz, int valor, PNODE* pai);
int countTreeNode(PNODE raiz);
void printTreeNode(PNODE raiz);
#endif
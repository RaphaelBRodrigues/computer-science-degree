#include "constants.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>

struct Message promptUser()
{
  struct Message message;
  struct Client client;

  char cpf[256];
  char address[256];
  char name[256];
  int option;

  printf("Operações disponíveis:\n");
  printf("%d - Consultar \n", CONSULT_CODE);
  printf("%d - Adicionar  \n", CREATE_CODE);
  printf("%d - Remover \n", REMOVE_CODE);
  printf("Insira o código da operação: ");
  scanf("%d", &option);

  switch (option)
  {
  case CONSULT_CODE:
    printf("Insira o nome do cliente: ");
    scanf("%s", name);

    memcpy(client.name, name, strlen(name) + 1);
    message.operationToken = option;
    message.clientData = client;
    break;

  case CREATE_CODE:
    printf("Insira os dados do cliente\n");
    printf("Nome:");
    scanf("%s", name);

    printf("\nCPF:");
    scanf("%s", cpf);

    printf("\nEndereco:");
    scanf("%s", address);

    memcpy(client.name, name, strlen(name) + 1);
    memcpy(client.document, cpf, strlen(cpf) + 1);
    memcpy(client.address, address, strlen(address) + 1);

    printf("%s", client.address);
    message.operationToken = option;
    message.clientData = client;
    break;

  case REMOVE_CODE:
    printf("Insira o nome do cliente: ");
    scanf("%s", name);
    getchar();
    memcpy(client.name, name, strlen(name));

    message.operationToken = option;
    message.clientData = client;
    break;

  default:
    printf("Operação inválida, por favor\n");
    return promptUser();
  }

  return message;
}

int main()
{
  struct sockaddr_in serv_addr;
  int sock = 0;
  char buffer[1024] = {0};

  if ((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0)
  {
    printf("\n Falha na criacao do socket \n");
    return -1;
  }

  serv_addr.sin_family = AF_INET;
  serv_addr.sin_port = htons(SERVER_PORT);
  inet_pton(AF_INET, "127.0.0.1", &serv_addr.sin_addr);

  connect(sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr));

  struct Message message;
  message = promptUser();

  send(sock, &message, sizeof(struct Message), 0);

  read(sock, buffer, sizeof(buffer));
  printf("Resultado: %s\n", buffer);
  return 0;
}
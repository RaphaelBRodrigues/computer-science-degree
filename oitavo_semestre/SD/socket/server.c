#include "constants.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>

int main()
{
  struct Client *clients = (struct Client *)malloc(CLIENTS_LIMIT * sizeof(struct Client));
  int server_fd, new_socket;
  struct sockaddr_in address;
  struct Client client;
  struct Message message;

  int opt = 1;
  int currentIndex = 1;
  int addrlen = sizeof(address);

  server_fd = socket(AF_INET, SOCK_STREAM, 0);

  address.sin_family = AF_INET;
  address.sin_addr.s_addr = INADDR_ANY;
  address.sin_port = htons(SERVER_PORT);

  bind(server_fd, (struct sockaddr *)&address, sizeof(address));

  setsockopt(server_fd, SOL_SOCKET,
             SO_REUSEADDR | SO_REUSEPORT, &opt,
             sizeof(&opt));
  listen(server_fd, 3);

  fflush(stdout);
  printf("Server running\n");
  while (1)
  {
    if ((new_socket = accept(server_fd, (struct sockaddr *)&address, (socklen_t *)&addrlen)) < 0)
    {
      perror("Erro na aceitação\n");
      exit(EXIT_FAILURE);
    }

    recv(new_socket, &message, sizeof(struct Message), 0);

    if (message.operationToken == CREATE_CODE)
    {
      clients[currentIndex] = message.clientData;

      printf("Create: %s | %d\n", clients[currentIndex].address, currentIndex);

      currentIndex = currentIndex + 1;
      send(new_socket, CREATE_MESSAGE, strlen(CREATE_MESSAGE), 0);
    }
    else if (message.operationToken == CONSULT_CODE)
    {
      int found = 0;
      for (size_t i = 0; i < CLIENTS_LIMIT; i++)
      {
        printf("%s | %s | %d\n", clients[i].name, message.clientData.name, strcmp(clients[i].name, message.clientData.name));

        if (strcmp(clients[i].name, message.clientData.name) == 0)
        {
          if (strcmp(clients[i].address, "") == 0)
          {
            send(new_socket, "Cliente removido", strlen("Cliente removido"), 0);
          }
          else
          {

            printf("To no if consulta\n");
            char consultMessage[45] = "";

            strcat(consultMessage, "Nome: ");
            strcat(consultMessage, clients[i].name);
            strcat(consultMessage, "| Endereço:");
            strcat(consultMessage, clients[i].address);
            strcat(consultMessage, "| Documento:");
            strcat(consultMessage, clients[i].document);

            printf("name: %s\n", clients[i].name);
            printf("address: %s\n", clients[i].address);
            printf("document: %s\n", clients[i].document);

            found = 1;
            send(new_socket, consultMessage, strlen(consultMessage), 0);
            break;
          }
        }
      }

      if (found == 0)
      {
        send(new_socket, "Cliente não encontrado", strlen("Cliente não encontrado"), 0);
      }
    }
    else if (message.operationToken == REMOVE_CODE)
    {

      for (size_t i = 0; i < CLIENTS_LIMIT; i++)
      {
        if (strcmp(clients[i].name, message.clientData.name) == 0)
        {
          char consultMessage[45] = "";
          memcpy(clients[i].name, "", strlen("") + 1);
          send(new_socket, DELETE_MESSAGE, strlen(DELETE_MESSAGE), 0);
          break;
        }
      }
    }
    close(new_socket);
  }

  return 0;
}
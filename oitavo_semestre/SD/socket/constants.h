#define SERVER_PORT 8080

#define CONSULT_CODE 1
#define CREATE_CODE 2
#define REMOVE_CODE 3

#define SERVER_SERVER_PORT = 123

#define CLIENTS_LIMIT 100

#define CREATE_MESSAGE "Client created!"
#define DELETE_MESSAGE "Client deleted!"

struct Client
{
  char name[128];
  char document[128];
  char address[128];
};

struct Message
{
  long operationToken;
  struct Client clientData;
};
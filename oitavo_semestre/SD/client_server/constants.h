

#define DIVISON_CODE 1
#define SUBTRACTION_CODE 2
#define SUM_CODE 3
#define MULTIPLICATION_CODE 4
#define E_BAD_CODE -1

#define CLIENT_PORT = 321
#define SERVER_PORT = 123

struct Message
{
  long source;
  long operationToken;
  int firstNumber;
  int secondNumber;
};
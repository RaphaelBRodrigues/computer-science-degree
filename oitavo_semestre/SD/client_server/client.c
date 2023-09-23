#include <stdio.h>
#include <constants.h>

struct UserParams
{
    int firstNumber;
    int secondNumber;
    int operationCode;
};

struct UserParams requestUserParams()
{

    struct UserParams userParams;
    int selectedOperation = 0;

    printf("Insira o código da operação que deseja realizar:");
    printf("Divisão - %d", DIVISON_CODE);
    printf("Subtração - %d", SUBTRACTION_CODE);
    printf("Soma - %d", SUM_CODE);
    printf("Multiplicação - %d", MULTIPLICATION_CODE);

    scanf("%d", selectedOperation);

    if (selectedOperation > 4 || selectedOperation < 1)
    {
        printf("Operação Inválida, por favor");
        return requestUserParams();
    }

    int firstNumber = 0;
    int secondNumber = 0;

    printf("Digite o primeiro número: ");
    scanf("%d", firstNumber);

    printf("Digite o segundo número: ");
    scanf("%d", secondNumber);

    userParams.firstNumber = firstNumber;
    userParams.secondNumber = secondNumber;
    userParams.operationCode = selectedOperation;

    return userParams;
}

void main(void)
{
    struct UserParams userParams = requestUserParams();
    struct Message message;

    message.firstNumber = userParams.firstNumber;
    message.secondNumber = userParams.secondNumber;
    message.operationToken = userParams.operationCode;
    message.source = CLIENT_PORT;

    send(SERVER_PORT, request);

    receive(CLIENT_PORT, &response);

    printf("%d", response);
}
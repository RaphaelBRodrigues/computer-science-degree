#include <stdio.h>
#include <constants.h>

void main(void)
{
    struct Message message;
    int result = 0;

    while (1)
    {
        receive(SERVER_PORT, &message);

        switch (message.operationToken)
        {
        case SUM_CODE:
            result = message.firstNumber + message.secondNumber;
            break;
        case SUBTRACTION_CODE:
            result = message.firstNumber - message.secondNumber;
            break;
        case DIVISON_CODE:
            result = message.firstNumber / message.secondNumber;
            break;
        case MULTIPLICATION_CODE:
            result = message.firstNumber * message.secondNumber;
            break;
        }

        send(message.source, result);
    }
}
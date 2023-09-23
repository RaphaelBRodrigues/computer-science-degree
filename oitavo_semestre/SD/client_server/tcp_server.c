#include <stdio.h>
#include <constants.h>

struct message
{
    long source;
    long operation_token;
    int first_number;
    int second_number;
};

void main(void)
{
    int PORT = 213;

    struct message m1;
    int result = 0;

    while (1)
    {
        receive(PORT, &m1);
        switch (m1.operation_token)
        {
        case SUM:
            result = m1.first_number + m1.second_number;
            break;
        case SUB:
            result = m1.first_number - m1.second_number;
            break;
        case DIV:
            result = m1.first_number / m1.second_number;
            break;
        case MULT:
            result = m1.first_number * m1.second_number;
            break;
        default:
            result = E_BAD_OPCODE;
            break;
        }

        send(m1.source, result);
    }
}
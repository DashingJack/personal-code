#include <stdio.h>
#include <string.h>
struct Quadruple
{
    char op;
    char arg1[10];
    char arg2[10];
    char result[10];
};
int precedence(char operator)
{
    if (operator== '+' || operator== '-')
        return 1;
    else if (operator== '*' || operator== '/')
        return 2;
    return 0;
}
int isOperator(char character)
{
    return (character == '+' || character == '-' || character == '*' || character == '/');
}
void printQuadruple(struct Quadruple q, int index)
{
    printf("| %2d | %2c | %8s | %8s | %8s |\n", index, q.op, q.arg1, q.arg2, q.result);
}
void infixToQuadruples(char *infix)
{
    struct Quadruple quadruples[50];
    char stack[50];
    int top = -1;
    int quadrupleCount = 0;
    int tempVarCount = 1;
    int currentQuadruple = 0;
    printf("Enter the infix expression: ");
    fgets(infix, 100, stdin);
    infix[strlen(infix) - 1] = '\0';
    printf("Quadruple Table:\n");
    printf("+----+-------+-----------+-----------+-----------+\n");
    printf("| No | Op |     Arg1 |     Arg2 |   Result |\n");
    printf("+----+-------+-----------+-----------+-----------+\n");
    for (int i = 0; i < strlen(infix); i++)
    {
        if (infix[i] == ' ')
            continue;
        if (infix[i] == '(')
            stack[++top] = infix[i];
        else if (infix[i] == ')')
        {
            while (top >= 0 && stack[top] != '(')
            {
                struct Quadruple q;
                q.op = stack[top--];
                strcpy(q.arg2, quadruples[quadrupleCount - 1].result);
                strcpy(q.arg1, quadruples[quadrupleCount - 2].result);
                sprintf(q.result, "t%d", tempVarCount++);
                quadrupleCount -= 2;
                quadruples[quadrupleCount++] = q;
                printQuadruple(q, currentQuadruple);
                currentQuadruple++;
            }
            if (top >= 0 && stack[top] == '(')\
                top--;
        }
        else if (isOperator(infix[i]))
        {
            while (top >= 0 && precedence(stack[top]) >= precedence(infix[i]))
            {
                struct Quadruple q;
                q.op = stack[top--];
                strcpy(q.arg2, quadruples[quadrupleCount - 1].result);
                strcpy(q.arg1, quadruples[quadrupleCount - 2].result);
                sprintf(q.result, "t%d", tempVarCount++);
                quadrupleCount -= 2;
                quadruples[quadrupleCount++] = q;
                printQuadruple(q, currentQuadruple);
                currentQuadruple++;
            }
            stack[++top] = infix[i];
        }
        else
        {
            struct Quadruple q;
            q.op = '\0';
            q.arg2[0] = '\0';
            q.op = infix[i];
            sprintf(q.arg1, "%c", infix[i]);
            sprintf(q.result, "t%d", tempVarCount++);
            quadruples[quadrupleCount++] = q;
            printQuadruple(q, currentQuadruple);
            currentQuadruple++;
        }
    }
    while (top >= 0)
    {
        struct Quadruple q;
        q.op = stack[top--];
        strcpy(q.arg2, quadruples[quadrupleCount - 1].result);
        strcpy(q.arg1, quadruples[quadrupleCount - 2].result);
        sprintf(q.result, "t%d", tempVarCount++);
        quadrupleCount -= 2;
        quadruples[quadrupleCount++] = q;
        printQuadruple(q, currentQuadruple);
        currentQuadruple++;
    }
    printf("+----+-------+-----------+-----------+-----------+\n");
}
int main()
{
    char infixExpression[100];
    infixToQuadruples(infixExpression);
    return 0;
}
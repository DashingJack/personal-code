#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAXROWS 100
#define MAXCOLS 128

int readFile(char path[], int rows[][MAXCOLS])
{
    int rowIndex = 0, colIndex = 0, i, j;
    char line[128];
    char *token = NULL;
    FILE *fp = fopen(path, "r");
    if (fp != NULL)
    {
        while (fgets(line, sizeof(line), fp) != NULL && rowIndex < MAXROWS)
        {
            colIndex = 0;
            for (token = strtok(line, ","); token != NULL && colIndex < MAXCOLS; token = strtok(NULL, ";"))
            {
                rows[rowIndex][colIndex++] = (int)atof(token);
            }
            rowIndex++;
        }
        fclose(fp);
        printf("\nDisplaying values: \n\n");
        for (i = 0; i < rowIndex; ++i)
        {
            for (j = 0; j < colIndex; ++j)
            {
                printf("%d, ", rows[i][j]);
            }
            printf("\n");
        }
    }
    return rowIndex;
}

int searchAlphabets(char rows[][MAXCOLS], char toBeFound)
{
    int i;
    for (i = 0; i < strlen(rows[0]); i++)
    {
        if (rows[0][i] == toBeFound)
        {
            return i;
        }
    }
}

int main()
{
    int rows[MAXROWS - 1][MAXCOLS] = {{0, 0}};
    char path[100], string[100];
    printf("Enter DFA file name: ");
    scanf("%s", &path);
    int finalState = readFile(path, rows);
    finalState--;
    int currentState = 1, colunmIndex, i;
    printf("%d\n", finalState);
    while (0 == 0)
    {
        printf("Enter String you want to check (enter 'closeProgram' if done checking)\n");
        scanf("%s", &string);
        if (strcmp(string, "closeProgram") == 0)
        {
            break;
        }
        for (i = 0; i < strlen(string); i++)
        {
            colunmIndex = searchAlphabets(rows, string[i]);
            printf("\n %d, %d", currentState, colunmIndex);
            currentState = rows[currentState][colunmIndex];
        }
        if (currentState == finalState)
        {
            printf("\nGiven String matchs with DFA\n\n");
        }
        else
        {
            printf("\nGiven String does not match with DFA\n\n");
        }
        printf("--------------------------------------------------------\n\n");
    }

    return 0;
}

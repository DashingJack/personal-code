#include <stdio.h>
#include <string.h>

int main()
{
    char line[20];
    int s[20];
    int t = 1;
    int i = 0;

    printf("Enter string..  : ");
    fgets(line, sizeof(line), stdin);

    for (i = 0; i < 20; i++)
        s[i] = 0;

    printf("op\t\ta1\t\ta2\t\tres\n");

    for (i = 2; line[i] != '\0'; i++)
    {
        if (line[i] == '/' || line[i] == '*')
        {
            printf("\n");
            if (s[i] == 0)
            {
                if (s[i + 1] == 0)
                {
                    printf(":=\t%c\t\tt%d\n", line[i + 1], t);
                    s[i + 1] = t++;
                }
                printf("%c\t", line[i]);
                (s[i - 1] == 0) ? printf("%c\t", line[i - 1]) : printf("t%d\t", s[i - 1]);
                printf("t%d \t t%d", s[i + 1], t);
                s[i - 1] = s[i + 1] = t++;
                s[i] = 1;
            }
        }
    }

    for (i = 2; line[i] != '\0'; i++)
    {
        if (line[i] == '+' || line[i] == '-')
        {
            printf("\n");
            if (s[i] == 0)
            {
                if (s[i + 1] == 0)
                {
                    printf(":=\t%c\t\tt%d\n", line[i + 1], t);
                    s[i + 1] = t++;
                }
                printf("%c\t", line[i]);
                (s[i - 1] == 0) ? printf("%c\t", line[i - 1]) : printf("t%d\t", s[i - 1]);
                printf("t%d \t t%d", s[i + 1], t);
                s[i - 1] = s[i + 1] = t++;
                s[i] = 1;
            }
        }
    }

    printf("\nResult: =\t t%d\t\t%c", t - 1, line[0]);

    return 0;
}
#include <stdio.h>
#include <string.h>

int main(int argc, char const *argv[])
{
    char a[100], b[100];    
    printf("Enter the first string ");
    scanf("%s", &a);
    printf("Enter the second string ");
    scanf("%s", &b);
    printf("\n");
    int c[100][100];
    for (int i = 0; i <= strlen(a); i++) {
        for (int j = 0; j <= strlen(b); j++) {
            if (i == 0 || j == 0) {
                c[i][j] = 0;
            }
            else if (a[i - 1] == b[j - 1]) {
                c[i][j] = c[i - 1][j - 1] + 1;
            }
            else {
                c[i][j] = (c[i - 1][j] < c[i][j - 1]) ? c[i][j - 1] : c[i - 1][j];
            }
        }
    }
    for (int i = 0; i <= strlen(a); i++)
    {
        for (int j = 0; j <= strlen(b); j++)
        {
            printf("%d ", c[i][j]);
        }
        printf("\n");
    }

    return 0;
}

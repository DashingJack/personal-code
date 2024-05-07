#include <stdio.h>

int main()
{
    printf("Enter the number of coins ");
    int n, w, arr[100], a[100][100], i, j;
    scanf("%d", &n);
    printf("Enter the values of coins one by one \n");
    for (i = 0; i < n; i++)
    {
        scanf("%d", &arr[i]);
    }
    printf("Enter the amount to change ");
    scanf("%d", &w);
    for (i = 0; i < n; i++)
    {
        a[i][0] = 1;
        for (j = 1; j <= w; j++)
        {
            if ((arr[i] > j))
            {
                if (i - 1 < 0)
                {
                    a[i][j] = 0;
                }
                else
                {
                    a[i][j] = a[i - 1][j];
                }
            }
            else
            {
                if (i - 1 < 0)
                {
                    a[i][j] = a[i][j - arr[i]];
                }
                else
                {
                    a[i][j] = (a[i - 1][j] + a[i][j - arr[i]]);
                }
            }
        }
    }
    for (i = 0; i < n; i++)
    {
        for (j = 0; j <= w; j++)
        {
            printf("%d ", a[i][j]);
        }
        printf("\n");
    }
    return 0;
}
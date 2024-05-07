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
    for (int i = 0; i < n; i++)
    {
        a[i][0] = 0;
        for (int j = 1; j <= w; j++)
        {
            if (i == 0)
            {
                a[i][j] = 1 + a[0][j - arr[i]];
            }
            else if (j < arr[i])
            {
                a[i][j] = a[i - 1][j];
            }
            else
            {
                a[i][j] = (a[i - 1][j] > 1 + a[i][j - arr[i]]) ? 1 + a[i][j - arr[i]] : a[i - 1][j];
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
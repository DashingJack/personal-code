#include <stdio.h>

int arrayMax(float a[], int n)
{
    float max = a[0];
    int maxIndex = 0;
    for (int i = 0; i < n; i++)
    {
        if (a[i] > max)
        {
            max = a[i];
            maxIndex = i;
        }
    }
    return maxIndex;
}

void printArrayInt(int a[], int n)
{
    printf("\n[");
    for (int i = 0; i < n; i++)
    {
        printf("%d", a[i]);
        if (i != n - 1)
        {
            printf(", ");
        }
    }
    printf("]");
}

void printArrayFloat(float a[], int n)
{
    printf("\n[");
    for (int i = 0; i < n; i++)
    {
        printf("%f", a[i]);
        if (i != n - 1)
        {
            printf(", ");
        }
    }
    printf("]");
}

int main(int argc, char const *argv[])
{
    printf("Enter the number of items ");
    int n, w, value[100], weight[100];
    float valueweight[100], maxValue;
    scanf("%d", &n);
    printf("Enter the value and weight of each item one by one \n");
    for (int i = 0; i < n; i++)
    {
        scanf("%d %d", &value[i], &weight[i]);
        valueweight[i] = (float)value[i] / weight[i];
    }
    printf("Enter the capacity of knapsack ");
    scanf("%d", &w);
    printArrayInt(value, n);
    printArrayInt(weight, n);
    printArrayFloat(valueweight, n);
    for (int i = 0; i < n; i++)
    {
        int j = arrayMax(valueweight, n);
        if (weight[j] > w)
        {
            maxValue += valueweight[j] * w;
            w = 0;
            valueweight[j] = 0;
            break;
        }
        else
        {
            maxValue += value[j];
            w -= weight[j];
            valueweight[j] = 0;
            if (w == 0)
            {
                break;
            }
        }
    }
    printf("\nThe maximum possilbe value for knapsack is %f", maxValue);

    return 0;
}

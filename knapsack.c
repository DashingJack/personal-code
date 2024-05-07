#include <stdio.h>

typedef struct
{
    int value;
    int weight;
}item;

int main()
{
    printf("Enter the number of items ");
    int n, w, v[100][100];
    scanf("%d", &n);
    item objects[n];
    printf("Enter the value and weight of each item one by one \n");
    for (int i = 0; i < n; i++)
    {
        scanf("%d %d", &objects[i].value, &objects[i].weight);
        printf("\n");
    }
    printf("Enter the capacity of knapsack ");
    scanf("%d", &w);
    for (int i = 0; i < n; i++) {
        v[i][0] = 0;
        for (int j = 0; j <= w ; j++) {
            if ((objects[i].weight > j)){
                if(i - 1 < 0){
                    v[i][j] = 0;
                }
                else{
                    v[i][j] = v[i - 1][j];
                }
            }
            else{
                if(i - 1 < 0){
                        v[i][j] = objects[i].value;
                }
                else{
                    v[i][j] = (v[i - 1][j] > v[i - 1][j - objects[i].weight] + objects[i].value) ? v[i - 1][j] : v[i - 1][j - objects[i].weight] + objects[i].value;
                }
            }
        }        
    }
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j <= w; j++)
        {
            printf("%d ", v[i][j]);
        }
        printf("\n");
    }
    return 0;
}
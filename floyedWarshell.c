#include <stdio.h>

int warshell(int i, int j, int k) {
    if (i < 0) {
        return j + k;
    }
    else if (j < 0 || k < 0){
        return i;
    }
    else {
        return (i < j + k) ? i : (j + k);
    }
}

int main(){
    printf("Enter number of nodes in graph ");
    int n, g[100][100];            
    scanf("%d" , &n);
    printf("Enter graph in matrix form (enter -1 for no connection) \n");
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            scanf("%d", &g[i][j]);
        }
    }
    for (int k = 0; k < n; k++) {
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                if (i != k  && j != k ) {
                    g[i][j] = warshell(g[i][j], g[i][k], g[k][j]);
                }
            }
        }
    }
    printf("After applying floyed-warshell \n");
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < n; j++)
        {
            printf("%d ", g[i][j]);
        }
        printf("\n");
    }
    return 0;
}
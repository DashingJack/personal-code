#include <stdio.h>
#include <string.h>
char s[20], stack[20];
void main(){
    char m[5][6][3] = {"TB", "", "", "TB", "", "",
                       "", "+TB", "", "", "n", "n",
                       "FC", "", "", "FC", "", "",
                       "", "n", "*FC", "", "n", "n",
                       "i", "", "", "(E)", "", ""};
    int size[5][6] = {2, 0, 0, 2, 0, 0,
                      0, 3, 0, 0, 1, 1,
                      2, 0, 0, 2, 0, 0,
                      0, 1, 3, 0, 1, 1,
                      1, 0, 0, 3, 0, 0};
    int i, j, k, n, str1, str2, flag = 0;
    printf("\nEnter the input string: ");
    scanf("%s", s);
    strcat(s, "$");
    n = strlen(s);
    stack[0] = '$';
    stack[1] = 'E';
    i = 1;
    j = 0;
    printf("\nStack   	Input\n");
    printf(" \n");
    while ((stack[i] != '$') && (s[j] != '$')){
        if (stack[i] == s[j]){
            stack[i] = '\0';
            i--;
            j++;
        }
        printf("%-16s", stack);
        for (k = j; k <= n; k++)
            printf("%c", s[k]);
        printf("\n");
        switch (stack[i]){
        case 'E':
            str1 = 0;
            break;
        case 'B':
            str1 = 1;
            break;
        case 'T':
            str1 = 2;
            break;
        case 'C':
            str1 = 3;
            break;
        case 'F':
            str1 = 4;
            break;
        }
        switch (s[j]){
        case 'i':
            str2 = 0;
            break;
        case '+':
            str2 = 1;
            break;
        case '*':
            str2 = 2;
            break;
        case '(':
            str2 = 3;
            break;
        case ')':
            str2 = 4;
            break;
        case '$':
            str2 = 5;
            break;
        }
        if (m[str1][str2][0] == '\0'){
            flag = 1;
            break;
        }
        else if (m[str1][str2][0] == 'n'){
            stack[i] = '\0';
            i--;
        }
        else if (m[str1][str2][0] == 'i')
            stack[i] = 'i';
        else{
            for (k = size[str1][str2] - 1; k >= 0; k--){
                stack[i] = m[str1][str2][k];
                i++;
            }
            stack[i] = '\0';
            i--;
        }
        printf("%-16s", stack);
        for (k = j; k <= n; k++)
            printf("%c", s[k]);
        printf("\n");
    }
    if (flag == 0){
        printf("%-16c$", stack[0]);
        printf("\n\nSUCCESS");
    }
    else
        printf("\n\nERROR");
}
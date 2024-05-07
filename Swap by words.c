#include <stdio.h>

int main(){
    int i, j, last, start, end;
    char temp;
    char str[100];
    printf("Enter your string\n");
    scanf("%[^\n]%*c", str);
    
    last=strlen(str);
    printf("%d",last);
    
    for(i=0, start = 0; i<last; i++ ){
        if (str[i]==' '||str[i]=='\0'){
            end = i-1;
            stringReverse(str, start, end);
            start = i+1;
        }
    }
    
    printf("Your string is \n%s ",str);
}



void stringReverse(char *str, int start, int end){
    int i, temp;
    for(i=start; i<(end/2); i++){
        temp = str[i];
        str[i] = str[end-i];
        str[end-i] = temp;
    }
}

%{

#include <stdio.h>
#include <string.h>

char word[] = "you";
int count = 0;

%}

%%

[a-zA-Z]+ {if(strcmp(yytext, word)==0){count++;}}
. ;

%%

void main(){
    yyin = fopen("input.txt", "r");
    yylex();
    printf("Word %s has appered %d times", word, count);
}

int yywrap(){
    return 1;
}
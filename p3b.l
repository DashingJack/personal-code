%{
char ch;
int key;
%}

%%

[a-z] {ch = yytext[0] + key;
    if(ch > 'z'){
        ch -= ('z' + 1 - 'a');
    }
    printf("%c\n", ch);
}

[A-Z] {ch = yytext[0] + key;
    if(ch > 'Z'){
        ch -= ('Z' + 1 - 'A');
    }
    printf("%c\n", ch);
}

. {printf("Not valid character\n");}

%%

void main(){
    printf("Enter key value: ");
    scanf("%d", &key);
    printf("Enter your character: \n");
    yylex();
}

int yywrap(){
    return 1;
}
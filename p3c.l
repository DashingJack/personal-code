%{
%}

%%

\/\/(.*) {};
\/\*(.*\n)*.*\*\/ {};

%%

void main(){
    yyin = fopen("input.c", "r");
    yyout = fopen("output.c", "w");
    yylex();
}

int yywrap(){
    return 1;
}

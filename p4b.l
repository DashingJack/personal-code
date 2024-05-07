%{
%}

%%

[^\.]*[  \t](and|or|but)[^\.]*[.?\n]\. {printf("%s\nGiven Statement is a compound Statement\n", yytext);};
.* {printf("%s\nGiven Statement is not a compound Statement\n", yytext);};

%%

void main(){
    yyin = fopen("statements.txt", "r");
    yylex();
}

int yywrap(){
    return 1;
}
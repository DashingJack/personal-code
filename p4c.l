%{
    #include <stdio.h>
%}

%%

\<[^\>]+\> {fprintf(yyout, "%s", yytext);}
. ;

%%
int main()
{
    yyin = fopen("input.html", "r");
    yyout = fopen("output.html", "w");
    yylex();
}
int yywrap(){
    return 1;
}
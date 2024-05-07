%{
    int num = 0;
%}

%%

'M' {num += 1000; REJECT;}
'CM' {num += 900; REJECT;}
'DCCC' {num += 800; REJECT;}
'DCC' {num += 700; REJECT;}
'DC' {num += 600; REJECT;}
'D' {num += 500; REJECT;}
'CD' {num += 400; REJECT;}
'CCC' {num += 300; REJECT;}
'CC' {num += 200; REJECT;}
'C' {num += 100; REJECT;}
'XC' {num += 90; REJECT;}
'LXXX' {num += 80; REJECT;}
'LXX' {num += 70; REJECT;}
'LX' {num += 60; REJECT;}
'L' {num += 50; REJECT;}
'XL' {num += 40; REJECT;}
'XXX' {num += 30; REJECT;}
'XX' {num += 20; REJECT;}
'X' {num += 10; REJECT;}
'IX' {num += 9; REJECT;}
'VIII' {num += 8; REJECT;}
'VII' {num += 7; REJECT;}
'VI' {num += 6; REJECT;}
'V' {num += 5; REJECT;}
'IV' {num += 4; REJECT;}
'III' {num += 3; REJECT;}
'II' {num += 2; REJECT;}
'I' {num += 1; REJECT;}
.|\n

%%

void main(){
    printf("Enter your number: \n");
    yylex();
    printf("%d", num);
}

int yywrap(){   
    return 1;
}
%{
%}

%%

M {printf("1000\n");};
CM {printf("900\n");};
DCCC {printf("800\n");};
DCC {printf("700\n");};
DC {printf("600\n");};
D {printf("500\n");};
CD {printf("400\n");};
CCC {printf("300\n");};
CC {printf("200\n");};
C {printf("100\n");};
XC {printf("90\n");};
LXXX {printf("80\n");};
LXX {printf("70\n");};
LX {printf("60\n");};
L {printf("50\n");};
XL {printf("40\n");};
XXX {printf("30\n");};
XX {printf("20\n");};
X {printf("10\n");};
IX {printf("9\n");};
VIII {printf("8\n");};
VII {printf("7\n");};
VI {printf("6\n");};
V {printf("5\n");};
IV {printf("4\n");};
III {printf("3\n");};
II {printf("2\n");};
I {printf("1\n");};
. {printf("Not valid Number\n");};

%%

void main(){
    printf("Enter your number: \n");
    yylex();
}

int yywrap(){   
    return 1;
}
;9 Write an assembly language program to generate Fibonacci series
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data

;code
start: nop
LXI H,0000h	;HL = 0000h(Starting address)
MVI C,08	;C = 08(Numberof terms)
MVI B,00	;B = 00(First term)
MVI D,01	;D = 01(Second term)
MOV M,B	;M = B
INX H		;HL = HL+1
MOV M,D	;M = D
L1: MOV A,B	;A = B
ADD D		;A = A+D
MOV B,D	;B = D
MOV D,A	;D = B
INX H		;HL = HL+1
MOV M,A	;M = A
DCR C		;C = C-1
JNZ L1		;If flag Z=0 then jump L1
hlt
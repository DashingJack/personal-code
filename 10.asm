;10 Write assembly language program to 
;find avarage of number store in memory
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data

;code
start: nop
MVI C,03H	;C = 03H(Number of terms)
MOV B,C	;B = C
LXI H,0000H	;HL = 0000H
MVI A,00H	;A = 00H
L1: ADD M	;A = A+M
INX H		;HL = HL+1
DCR C		;C = C-1
JNZ L1		;If flag Z=0 then jump to L1
NEXT: CMP B	;Compare A and B
JC LOOP	;If flag C=1 then Jump to LOOP
SUB B		;A = A-B
INR C		;C = C+1
JMP NEXT	;Jump  to NEXT
LOOP: MOV A,C	;A = C
STA 000BH	;000BH = A
hlt
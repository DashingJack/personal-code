;11 Write an assembly language program for determining
;if a given number is prime or not
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data
;Number = 0000H
;Result = 0001H

;code
start: nop
LDA 0000H		;Number = A
MVI C, 00H		;C = 00H
MOV E, A		;E = A
MOV B, A		;B = A
LOOP1: MOV D, E	;D = E
LOOP2: CMP D		;Compare D and A
JC L1			;If flag C=1 then jump to L1
SUB D			;A = A-D
JNZ LOOP2		;If flag Z=0 then jump to LOOP2
L1: CPI 00H		;Compare A with Data 00H
JNZ L2			;If flag Z=0 then jump to L2
INR C			;C = C+1
L2: MOV A, B		;A = B
DCR E			;E = E-1
JNZ LOOP1		;If flag Z=0 then jump to LOOP1
MOV A, C		;A = C
MVI C, 00H		;C = 00H
CPI 02H		;Compare A with Data 02H
JNZ L3			;If flag Z=0 then jump to LOOP2
INR C			;C = C+1
L3: MOV A, C		;A = C
STA 0001H		;Result = A
hlt
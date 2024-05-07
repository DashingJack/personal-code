;12 Write an assembly language code to find the factorial of a number
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data
;Number = 0000H
;Result = 0001H

;code
start: nop
LXI H, 0000H			;HL = 0000H
MOV B, M			;B = M(Number)
MVI D, 01H			;D = 01H
FACTORIAL: CALL MULTIPLY	;Call Multiply Function
DCR B				;B = B-1
JNZ FACTORIAL			;If flag Z = 0 then jump to FACTORIAL
INX H				;Hl = HL+1
MOV M, D			;M = D
HLT				;Halts the program

MULTIPLY: MOV E, B		;E = B
MVI A, 00H			;A = 00H
MULTIPLYLOOP: ADD D		;A = A+D
DCR E				;E = E-1
JNZ MULTIPLYLOOP		;If flag Z = 0 then jump to MULTIPLYLOOP
MOV D, A			;D = A
RET				;Returm
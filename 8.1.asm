;8 Write an assembly language program to SEARCH GIVEN DATA
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data

;code
start: nop
LXI H,0000H		;HL = 0000h(Start point of search)
MVI C,01H		;C = 01h(Data to search)
MVI B,05H		;B = 05h(Range to search in)
MOV A,C		;A = C
L2: CMP M		;Compare A and M(Data pionted by HL)
JZ L1			;If flag Z=1 the jump to L1
INX H			;HL = HL+1(Go to next memory address)
DCR B			;B = B-1
JNZ L2			;If flag Z=0 then jump to L2
JMP L3			;Jump to L3
L1: LXI H,000BH	;HL = 000Bh
MOV M,A		;M = A
JMP L4			;Jump to L4
L3: LXI H,000BH	;HL = 000Bh
XRA A			;A = A XOR A(A=00h)
MOV M,A		;M = A
L4: HLT		;Hault the program
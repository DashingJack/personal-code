;6.3 Write an assembly language code to DIVIDE two numbers
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data
;Dividend = 0000h
;Divisor = 0001h
;Remainder = 0002h
;Quotient = 0003h

;code
start: nop
LXI H, 0000H	;HL = Address of Dividend
MOV A, M	;A = Dividend
MVI C, 00H	;C = 00H(Used to store Quotient)
INX H		;HL = HL+1(Address of Devisor)
MOV B, M	;B = Devisor
L2: CMP B	;Compare A and B
JC L1		;If flag C=1 then jump to L1
SUB B		;A = A-B
INR C		;C = C+1
JMP L2		;Jump to L2
L1: STA 0002H	;Remainder = A
MOV A, C	;A = C
STA 0003H	;Quotient = A
hlt
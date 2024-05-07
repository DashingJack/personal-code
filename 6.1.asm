;6.1 Write an assembly language code to multiply two numbers
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data
;Multiplicand = 0000h
;Multiplier = 0001h
;Product = 0002h

;code
start: nop
LXI H,0000H	;HL = Address of Multiplicand
MOV C,M	;C = Multiplicand
XRA A		;A = A XOR A(A=00h)
INX H		;HL = HL+1(Address of Multiplier)
L1: ADD M	;A = A+Multiplier
DCR C		;C = C-1
JNZ L1		;If flag Z=0 then jump to L1
INX H		;HL = HL+1(Address of Product)
MOV M,A	;Prodcut = A
hlt
;7.2_Write an assembly language code in GNUsim8085 to find
;largest number from given array stored at consecutive ML.
;First memory location indicates the counter number.
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data
;Counter = 0000h
;Array = (Address of Counter + 1) to (0001h + Counter - 0001h)
;Largest = Address of Counter + Counter

;code
start: nop
LXI H,0000H	;HL = Adrress of Counter
MOV C,M	;C = Counter
DCR C		;C = C-1
INX H		;HL = Adrress of 1st Element of Array
MOV A,M	;A = 1st Element of Array
L2: INX H	;HL = HL+1(Adrress of next Element of Array)
CMP M		;Compare A and M(Element of Array Pointed by HL)
JNC L1		;If flag C=0 then jump to L1
MOV A,M	;A = M
L1: DCR C	;C = C-1
JNZ L2		;If flag Z=0 then jump to L2
INX H		;HL = HL+1(Adrress of Largest)
MOV M,A	;Largest = A
hlt
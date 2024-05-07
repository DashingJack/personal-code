;7.1 Write an assembly language code to find largest number
;from given array stored at 5 consecutive ML.
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data
;Array = 0000h to 0004h
;Largest = 0005h

;code
start: nop
MVI C,05H	;C = 05h(no of elements in Array)
LXI H,0000H	;HL = Adrress of 1st Element of Array
MOV A,M	;A = 1st Element of Array
L2: INX H	;HL = HL+1(Adrress of next Element of Array)
CMP M		;Compare A and M(Element of Array Pointed by HL)
JNC L1		;If flag C=0 then jump to L1
MOV A,M	;A = M
L1: DCR C	;C = C-1
JNZ L2		;If flag Z=0 then jump to L2
STA 0005H	;Largest = A
hlt
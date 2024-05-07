
;5.1 Assume the data in reg. B is 93h and in accumulator is 15h.
;Illustrate the result of ORA B, XRA B and CMA.
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data


;code
start: nop
MVI A,15H	;A=15H
MVI B,93H	;B=93H
MOV D,A	;D=15H
ORA B		;A=97H
MOV H,A	;H=97H
MOV A,D	;A=15H
XRA B		;A=86H
MOV L,A	;L=86H
MOV A,D	;A=15H
CMA		;A=EAH
hlt
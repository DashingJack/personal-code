
;5.3 Write a Program to shift an 8-bit data 4 bit right.
;Assume the data in register C.
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data


;code
start: nop
MVI C,3EH	;C=3EH
MOV A,C	;A=3EH
RRC		;A=1FH
RRC		;A=8FH
RRC		;A=C7H
RRC		;A=E3H
MOV C,A	;C=E3H

hlt
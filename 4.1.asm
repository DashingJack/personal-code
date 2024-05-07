
;4.1 Load Register B and C with 55h and 66h.
;Add register B, C and store the result in
;Register D.
;PREPARED BY > Jenilkumar Radadiya


jmp start

;data


;code
start: nop
MVI B,55H	;B=55H
MVI C,66H	;C=66H
MOV A,B	;A=55H
ADD C		;A=BBH
MOV D,A	;D=BBH

hlt
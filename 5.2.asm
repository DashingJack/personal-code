
;5.2 Assume data 8EH and F7H in reg. D and reg. E respectively,
;mask higher order bits(D7-D4)from both the data bytes, exclusive
;or the lower order bits and display the result in ML 0000H
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data


;code
start: nop
MVI D,8EH	;D=8EH
MVI E,0F7H	;E=F7H
MOV A,D	;A=8EH
ANI 0FH	;A=0EH
MOV D,A	;D=0EH
MOV A,E	;A=F7H
ANI 0FH	;A=07H
XRA D		;A=09H
STA 00000H	;0000H=09H
hlt

;4.2 WALP to add the content of memory location C500h,
;C501h and store the result at memory locations C503h
;and C504H using indirect addressing mode
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data
;C500H=35H
;C501H=66H

;code
start: nop
LXI H,0C500H	;HL=C500H
MOV A,M	;A=35H
INX H		;HL=C501H
ADD M		;A=9BH
LXI H,0C503H	;HL=C503H
MOV M,A	;C503H=9BH
INX H		;HL=C504H
MOV M,A	;C504H=9BH

hlt
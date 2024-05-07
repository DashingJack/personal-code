
;4.3 Transfer the array (3 byte) of data starting from
;C500h to C600h by memory pointer without LDA and STA
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data
;C500H=43H
;C501H=34H
;C502H=65H

;code
start: nop
LXI H,0C500H	;HL=C500H
MOV A,M	;A=43H
INX H		;HL=C501H
MOV B,M	;B=34H
INX H		;HL=C502H
MOV D,M	;D=65H
LXI H,0C600H	;HL=C600H
MOV M,A	;C600H=43H
INX H		;HL=C601H
MOV M,B	;C601H=34H
INX H		;HL=C602H
MOV M,D	;C602H=65H

hlt
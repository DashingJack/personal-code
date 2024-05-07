
;2.3 Copy 8Fh in all Register
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data


;code
start: nop
MVI A,8Fh
MOV B,A
MOV C,B
MOV D,C
MOV E,D
MOV H,E
MOV L,H

hlt
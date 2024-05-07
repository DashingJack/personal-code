
;3 Write an assembly language code in
;GNUsim8085 to store numbers in reverse
;order in memory location.
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data


;code
start: nop
LDA 00001H	;A=01H
MOV B,A	;B=01H
LDA 00004H	;A=04H
STA 00001H	;00001H=04H
MOV A,B	;A=01H
STA 00004H	;00004H=01H
LDA 00002H	;A=02H
MOV B,A	;B=02H
LDA 00003H	;A=03H
STA 00002H	;00002H=03H
MOV A,B	;A=02H
STA 00003H	;00003H=02H

hlt
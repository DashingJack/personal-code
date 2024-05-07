
;3 Write an assembly language code in
;GNUsim8085 to store numbers in reverse
;order in memory location usnig Indirect Method.
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data


;code
start: nop
LXI H,00001H	;HL=0001H
LXI D,00004H	;DE=0004H
MOV B,M	;B=01H
LDAX D		;A=04H
MOV M,A	;0001H=04H
MOV A,B	;A=01H
STAX D		;0004H=01H
LXI H,00002H	;HL=0002H
LXI D,00003H	;DE=0003H
MOV B,M	;B=02H
LDAX D		;A=03H
MOV M,A	;0002H=03H
MOV A,B	;A=02H
STAX D		;0003H=02H

hlt
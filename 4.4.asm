
;4.4 WALP to add 2 16 bit numbers stored from 0004h
;i.e Adding 0103h & 0205h lower byte of data is stored first
;store result from 0008h i.e lower byte is stored first
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data
;0004H=03H
;0005H=01H
;0006H=05H
;0007H=02H

;code
start: nop
LHLD 0004H	;HL=0103H
MOV C,L	;C=03
MOV B,H	;B=01
LHLD 0006H	;HL=0205H
MOV A,C	;A=03
ADD L		;03+05=08=A
MOV L,A	;L=08
MOV A,B	;A=01
ADC H		;01+02=03=A
MOV H,A	;H=03
SHLD 0008H	;0008H=08;0009H=03

hlt

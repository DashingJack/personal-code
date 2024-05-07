
;Exchange the content of memory location C000h
;and D000h using direct addressing.
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data


;code
start: nop
LXI H,0C000H
LXI D,0D000H
MOV B,M
LDAX D
MOV M,A
MOV A,B
STAX D

hlt
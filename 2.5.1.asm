
;Exchange the content of memory location C000h
;and D000h using direct addressing.
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data


;code
start: nop
LDA 0C000H
MOV B,A
LDA 0D000H
STA 0C000H
MOV A,B
STA 0D000H

hlt

;2.1> Write an ALP to write a data 52H into
;register C and copy it into D
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data


;code
start: nop
MVI C,52H
MOV D,C

hlt

;2.4 Load accumulator with the contant of
;memory whose address is F500h and stor the
;data in memory location F501h.
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data


;code
start: nop
LXI B,0F500H
LXI D,0F501H
LDAX B
STAX D

hlt

;2.4 Load accumulator with the contant of
;memory whose address is F500h and stor the
;data in memory location F501h.
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data


;code
start: nop
LXI H,0F500H
MOV A,M
LXI H,0F501H
MOV M,A

hlt
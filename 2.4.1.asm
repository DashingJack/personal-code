
;2.4 Load accumulator with the contant of
;memory whose address is F500h and store the
;data in memory location F501h.
;PREPARED BY > Jenilkumar Radadiya

jmp start

;data


;code
start: nop
LDA 0F500H
STA 0F501H

hlt

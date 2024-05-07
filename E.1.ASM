
;<Program title>

jmp start

;data


;code
start: nop
MVI B,05h
MOV A,B
LXI H,02000H
ADD M
LXI H,02001H
MOV M,A

hlt
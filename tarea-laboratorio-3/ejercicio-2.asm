org             100h

section         .data
xor             AX, AX
xor             BX, BX
mov             AL, 5d
mov             BL, 1d

Factorial:
cmp             BL, 5d
je              Exit
mul             BL
inc             BL 
jmp             Factorial

Exit:
mov             [20Bh], AL
int             20h
; Factorial:

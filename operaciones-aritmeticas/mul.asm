org         100h
section     .text
; register multiplication
; if operand is byte size then will multiply AL * operand and store it in AX
mov         AL, 5d
mov         BL, 5d
mul         BL
; if operand is word size then will multiply AX * operand and store it in
; DX:AX (a combination of DX and AX)
mov         AX, 250h
mov         BX, 250h
mul         BX
int         20h
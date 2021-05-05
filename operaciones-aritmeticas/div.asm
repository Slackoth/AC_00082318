org         100h
section     .text
; if operand is byte size then the QUOTIENT (AX / operand) will be stored in AL
; and the REMAINDER  (AX mod operand) will be stored in AH
mov         AX, 15d
mov         AL, 4d
div         BL
; if operand is word size then the QUOTIENT (DX:AX / operand) will be stored in AX
; and the REMAINDER  (AX mod operand) will be stored in DX
mov         AX, 15d
mov         DX, 0h
mov         BX, 4d
div         BX 
int         20h


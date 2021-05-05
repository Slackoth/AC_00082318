org         100h
section     .text
; register substraction
; will substract AL - BL and store in AL
mov         AL, 5d
mov         BL, 3d
sub         AL, BL
; negative substraction
mov         AL, 3d
mov         BL, 5d
sub         AL, BL
int         20h
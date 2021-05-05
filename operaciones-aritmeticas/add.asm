org         100h
section     .text
; register addition
; will sum AL + BL and store it in AL
mov         AL, 5d
mov         BL, 3d
add         AL, BL
; memory addition
; will sum [What'sInside200h] + BL and store it in 200h
mov         byte [200h], 8h
add         byte [200h], BL
; OverflowFlag and CarryFlag will be active after executing this section
mov         AL, 90h
mov         BL, 90h
add         AL, BL
; will sum AX + BX + CarryFromBefore and sotre it in AX
mov         AX, 90h
mov         BX, 90h
adc         AX, BX
int         20h
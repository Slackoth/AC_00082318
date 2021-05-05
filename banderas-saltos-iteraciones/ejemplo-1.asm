org         100h

section     .text
xor         AX, AX ; Limpia el resgitro AX
mov         AX, 10d
jmp         Iterar ; Salta a la etiqueta llamada "Iterar"

Iterar:
cmp         AX, 15d ; Compara si AX tiene el valor de 15 
je          Exit; Salta a la etiqueta "Exit" si AX == 15.
; Si no, entonces ejecuta el codigo debajo
add         AX, 1d
jmp         Iterar

Exit:
int         20h
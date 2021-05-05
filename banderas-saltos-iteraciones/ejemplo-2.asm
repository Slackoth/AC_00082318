org             100h

section         .data
letter          DB "hornito"

section         .text
xor             SI, DI
mov             CX, 7d
jmp             Iterar

Iterar:
; [letter + DI] -> posicion del string. DI indica que posicion
mov byte        AL, [letter + DI]
; Movera cada letra del string a cada direccion de memoria
mov byte        [200h + SI], AL
inc             DI ; Incremente DI en 1
inc             SI ; Incremente SI en 1
; Itera la etiqueta "Iterar" hasta que CX sea igual a 0
; LOOP esta enlazado con el registro CX
LOOP            Iterar

Exit:
int             20h
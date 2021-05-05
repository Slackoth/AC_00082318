org             100h
section         .text
xor             AX, AX
xor             SI, SI
mov byte        [200h], 2d
mov byte        AL, 3d
; call dirige el programa a la etiqueta indicada y cuando termina la ejecucion, 
; el programa regresa a la parte donde call fue utilizada
call            Multiplicar
call            Exit

Multiplicar:
mul byte        [200h + SI]
inc             SI
cmp             SI, 5d
; Salta a la etiqueta Multiplicar si es igual o si la bandera ZF no esta activa
jne             Multiplicar 
ret ; Retorna la llamada de call en caso que el salto no haya sido ejecutado

; Nunca se ejecutara este codigo
Mensaje:
mov byte        [20Ah], "N"
mov byte        [20Bh], "O"
mov byte        [20Ch], "P"

Exit:
int             20h
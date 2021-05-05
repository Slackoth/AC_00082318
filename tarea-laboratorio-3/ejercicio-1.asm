org             100h

section         .data
mov byte            [200h], 0d
mov byte            [201h], 0d
mov byte            [202h], 0d
mov byte            [203h], 8d
mov byte            [204h], 2d
mov byte            [205h], 3d
mov byte            [206h], 1d
mov byte            [207h], 8d
xor             AX, AX
xor             BX, BX
xor             DI, DI         
jmp             Sumar

Sumar:
cmp             DI, 8d
je              Promedio
add             AL, [200h + DI]
inc             DI
jmp             Sumar

Promedio:
mov               BL, 8d
div               BL
mov               [20Ah], AL

Exit:
int             20h

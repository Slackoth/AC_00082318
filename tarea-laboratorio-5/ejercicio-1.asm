org         100h

section     .text
xor          AX, AX
xor          SI, SI
xor          BX, BX
xor          CX, CX
xor          DX, DX
mov          SI, 0d
mov          DI, 0d
mov          DH, 10
mov          DL, 20
mov          BL, 1d
mov          byte [200h], 4d
mov          byte [201h], 6d
mov          byte [202h], 8d
mov          byte [203h], 5d
call         textMode

traverseString:
call         movePointer
mov          CL, [name+SI]
call         writeCharacter
inc          SI
inc          DL
cmp          BL, [200h+DI]
je           changeRow
inc          BL
jmp          traverseString

textMode:
mov          AH, 0h
mov          AL, 03h
int          10h
ret

movePointer:
mov          AH, 02h
mov          BH, 0h 
int          10h
ret

writeCharacter:
mov          AH, 0Ah 
mov          AL, CL 
mov          BH, 0h 
mov          CX, 1h 
int          10h
ret

changeRow:
cmp          DI, 3d
je           waitKey
inc          DH
inc          SI
inc          DI
mov          DL, 20
mov          BL, 1d
jmp          traverseString

waitKey:
mov          AH, 00h 
int          16h
exit:
int         20h

section     .data
name        db 'LUIS MANUEL CALDERON PERLA '
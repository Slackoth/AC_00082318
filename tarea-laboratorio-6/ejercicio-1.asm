org             100h

section         .text
mov             DX, message
call            showString
mov             BP, input
call            readString

comparePassword:
xor             DI, DI
for:
cmp             DI, 5d
je              showWelcome
mov             BL, [password + DI]
cmp             BL, [BP + DI]
je              increment
jmp             showError

increment:
inc             DI
jmp             for

showWelcome:
mov             DX, welcome
call            showString
jmp             trueExit

showError:
mov             DX, error
call            showString
jmp             trueExit

trueExit:
int             20h

showString:
mov             AH, 09
int             21h
ret

waitKey:
mov         AH, 01h,
int         21h,
ret

readString: 
xor             SI, SI
while:  
call            waitKey
cmp             AL, 0x0D
je              exit
mov             [BP + SI], AL
inc             SI
jmp             while

exit:
mov byte        [BP + SI], '$'
ret

section         .data
message         db 'Ingrese la clave: ', '$' 
input times     20 db ' '
password        db 'SARAH'
welcome         db 'BIENVENIDO', '$'
error           db 'INCORRECTO', '$'
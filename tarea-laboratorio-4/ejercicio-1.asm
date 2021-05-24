org         100h
section     .text
xor         BX, BX
mov         BP, byteArr
mov         BL, 2d
call        StoreEven
xor         SI, SI
xor         DI, DI
call        StoreOdd
int         20h

StoreEven:
forEven:
xor         AX, AX
mov         AL, [BP+SI]
cmp         AL, 0xA
je          end
div         BL
cmp         AH, 0d
je          storeEven
inc         SI
jmp         forEven

storeEven:
mov         AL, [BP+SI]
mov         [300h+DI], AL
inc         DI
inc         SI
jmp         forEven

StoreOdd:
forOdd:
xor         AX, AX
mov         AL, [BP+SI]
cmp         AL, 0xA
je          end
div         BL
cmp         AH, 0d
je          incSi
jmp         storeOdd

storeOdd:
mov         AL, [BP+SI]
mov         [320h+DI], AL
inc         DI
inc         SI
jmp         forOdd

incSi:
inc SI
jmp         forOdd

end:
ret

section     .data
byteArr     db 01,02,03,04,05,06,07,08,09,02,0xA
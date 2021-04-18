section     .text
mov byte         [200h], 4Ch ;Luis
mov byte         [201h], 4Dh ;Manuel
mov byte         [202h], 43h ;Calderon
mov byte         [203h], 50h ;Perla

; Direccionamiento absoluto
mov               AX, [200h]
; Direccionamiento inderecto por registro
mov              BX, 201h
mov              CX, [BX]
; Direccionamiento indirecto base mas indice
mov              SI, 1h
mov              DX, [BX+SI]
; Direccionamiento relativo por registro
mov              DI, [BX+2h]

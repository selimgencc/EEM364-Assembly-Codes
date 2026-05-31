.model small

.data
 t db 0
.code

mov ax,@data
mov ds, ax

mov al, 12H
mov bl, 02H

mul bl
mov t, al

hlt

MOV AL, 200     ; AL = 200
MOV CL, 100     ; CL = 100
MUL CL          ; 200 * 100 = 20000
                ; AX = 4E20h
                ; AH = 4Eh, AL = 20h
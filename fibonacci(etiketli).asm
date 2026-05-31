.model small

.data

fib db 0
n equ 10

.code

mov ax , @data
mov ds , ax

mov si , 0
mov al , 0
mov ah , 1
mov cx , n

L0:
    mov fib[si] , al
    add  al ,ah
    xchg al,ah
    inc  si
    
    loop L0

HLT
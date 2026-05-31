.model small

.data 

x       db 1,2,3,4,5,6,7,8,9,10,11,12,13,14
lx      equ $-x

ciftler db 10 dup(0)
tekler  db 10 dup(0)

.code

mov ax, @data
mov ds, ax

xor bx, bx
xor si, si
xor di, di
mov cx, lx              

dongu:

    mov al, x[bx]
    test bx, 01H            
    jnz tek
    jz cift

D:
    inc bx
    loop dongu
    
HLT

tek:
    mov tekler[di], al
    inc di
    jmp D
    
cift:
    mov ciftler[si], al
    inc si
    jmp D
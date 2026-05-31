.model small 

.data

x db 1,2,4,5,7,1
y db 3,1,5,2,2,4
ly equ $-y

toplam db 0 

.code
mov ax, @data
mov ds, ax
mov ax, 0
mov si, 0
mov cl, ly

DONGU:
    mov al, x[si]
    sub al, y[si]
    js  NEG_TOP
    jns POZ_TOP

D:
    inc si
    loop DONGU

HLT

NEG_TOP:
        neg al
        add toplam, al
        jmp D

POZ_TOP:
        add toplam, al
        jmp D
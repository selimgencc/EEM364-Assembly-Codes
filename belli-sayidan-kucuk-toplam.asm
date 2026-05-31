.model small

.data

x db 1,2,15,33,66,5,3,8,9,25,34,22

lx equ $-x

ts equ 10

toplam db 0

.code 

mov ax, @Data
mov ds, ax

mov ax,0
mov si,0
mov cx,lx

kar:

    mov al, x[si]
    cmp al, ts
    jl  TOPLA

devam:

    inc si
    loop kar

HLT

topla:

    add toplam, al
    jmp devam
hlt
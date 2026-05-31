.model small

.data

x db 1,2,15,33,66,5,3,8,9,25,34,22
lx equ $-x

ts equ 10

B db 0
K db 0

.code 

mov ax, @data
mov ds, ax

mov ax,0
mov si,0
mov cx,lx

DON:
    mov al, x[si]
    cmp al, ts
    jl KCK
    jg BYK

SON:
    
HLT

KCK:
    add K, al
    inc si
    loop DON
    
BYK:
    add B, al
    inc si
    loop DON
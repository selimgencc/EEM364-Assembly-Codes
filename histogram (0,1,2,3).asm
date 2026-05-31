.model small

.data

x db 1,2,0,1,2,3,0,0,1,3,2,3
lx equ $-x 
 
sifirlar db 0
birler db 0
ikiler db 0
ucler db 0

.code

mov ax,@data
mov ds,ax

mov ax,0
mov si,0
mov cx,lx

L0:
    mov al, x[si]
    
    cmp al, 0
    je sifir
    cmp al, 1
    je bir
    cmp al, 2
    je iki
    cmp al, 3
    je uc

D:
  inc si
  loop L0

HLT
    
sifir:
    inc sifirlar
    jmp D   
    
bir: 
    inc birler
    jmp D  
iki:
    inc ikiler
    jmp D  
uc:
    inc ucler 
    jmp D  

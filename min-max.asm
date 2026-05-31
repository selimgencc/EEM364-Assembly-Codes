.model small

.data

dizi db 12h,05h,33h,11h,45h,02h,27h

lx equ 7

mx db 0
mn db 0

.code

mov ax,@data
mov ds,ax

lea si,dizi

mov al,[si]
mov mx,al
mov mn,al

mov cx,lx
dec cx

inc si

check:
    mov al,[si]
    
    cmp al,mx
    jg update_max
    
    cmp al,mn
    jl update_min
D:
    inc si
    loop check
    
HLT

update_max:
    mov mx,al
    jmp d
    
update_min:
    mov mn,al
    jmp d
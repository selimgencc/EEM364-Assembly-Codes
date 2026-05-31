.model small

.data

A equ 21
B equ 14

carpim dw 0

.code
 
main proc far
    
    mov ax,@data
    mov ds, ax
    
    mov ax, A
    mov cx, B
    
    call carp

hlt

main endp

carp proc
    
    dongu:
    add carpim,A
    loop dongu
    
    ret   
    
carp endp

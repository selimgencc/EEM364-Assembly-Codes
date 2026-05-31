.model small

.data 

    dizi1 db 1,2,3,4,5
    dizi2 db 2,3,4,5,6
    lx equ $-dizi2
    sonuc dw 0

.code         

main proc
    mov ax,@data
    mov ds,ax
    
    mov si,0
    mov cx,lx
    call carpim
    
    HLT
main endp

carpim proc
    
    mov ax,0
    mov sonuc,0
    
dongu:
    xor ax,ax
    
    mov al, dizi1[si]
    mul dizi2[si]
    
    add sonuc,ax
    inc si
    
    loop dongu
    
    ret
    
carpim endp    
.MODEL SMALL

.DATA

x   db 1,2,3,4 , 5,6,7,8 , 9,10,11,12
lx  equ 3
ly  equ 4

T db lx dup(0)

.CODE

main proc far

    mov ax , @data
    mov ds , ax
    
    mov si , 0
    
    L0:
        
        mov ax , 0
        mov dl , 0
        
    L1:
        add al , x[si]
        inc si
        
        inc dl
        cmp dl , ly
        jnz L1
        
        mov T[di] , al
        inc di
        cmp di , lx
        
        jnz L0

main endp
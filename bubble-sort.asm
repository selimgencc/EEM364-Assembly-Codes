.model small

.data

x   db 10,2,5,15,7,0,11,8,20
lx equ $-x-1
           
.code 

main proc far 
      
    mov ax , @data
    mov ds , ax
         
    L1: 
    mov ax , 0
    mov si , 0
    mov cl , 0
            
        L0:  
        mov al , x[si]
        mov ah , x[si+1]
        
        call swap   
           
        inc si
        cmp si , lx
        jnz L0       
        cmp cl, 0
        jnz L1

    HLT         
main endp

swap proc    
         cmp al , ah
         jg swp 
    
    D:
        ret
    swp:
        mov x[si] , ah
        mov x[si+1] ,al
        
        inc cl
        jmp D

swap endp


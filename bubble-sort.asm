.model small

.data

x   db 10,2,5,15,7,0,11,8,20
lx equ $-x-1
           
.code 

main proc far 
      
    mov ax , @data
    mov ds , ax
    
    mov ax , 0    
    mov cx , lx
    
    L1:  
    
    push cx
    mov si , 0
    mov cx , lx 
            
        L0:  
        mov al , x[si]
        mov ah , x[si+1]
        
        call swap   
           
        inc si
        loop l0  
        
    pop cx          
    loop L1

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
        
        jmp D

swap endp
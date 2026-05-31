.model small

.data 

x      dw 5       
sonuc  dw 0       

.code
    
    mov ax, @data
    mov ds, ax

    mov ax, 1
    mov cx, x                  

dongu: 

    mul cx            
    loop dongu 

D:
    mov sonuc, ax     
    hlt             


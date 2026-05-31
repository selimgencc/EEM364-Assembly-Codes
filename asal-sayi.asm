.MODEL SMALL

.DATA

    N       EQU 17
    Nh      EQU N/2
    asal_   DB 0
    bolen   DW 0

.CODE

main:
    mov AX, @DATA
    mov DS, AX
    
    mov cx, 2           

L0:
    mov dx, 0           
    mov ax, N           
    
    div cx              
    cmp dx, 0           
    je asal_degil       
    
    inc cx              
    cmp cx, Nh
    jbe L0              
    
    mov asal_, 1        
    jmp bitis

asal_degil:

    mov asal_, 0
    mov bolen, cx       

bitis:

    HLT

END main


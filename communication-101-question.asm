.model small

.data

T db 100 dup(0)
M dw 0

.code

mov ax,@data
mov ds,ax

mov si,0
mov di,0

L0:
    mov ah, 01H
    int 21H
    
    cmp al, 's'
    je finish
    
    and al, 0FH
    cmp al,1
    je T1
    
    D:
    jmp L0
T1:
    mov ah,01H
    int 21H
    
    and al, 0FH
    cmp al,0
    je T2
    jmp D
T2:
   mov ah, 01H
    int 21H
    
    and al, 0FH
    cmp al,1
    je T3
T3:
    mov cx, 4
    
    L1:
        mov ah, 01H
        int 21H
        and al, 0FH
        
        mov T[si], al
        inc si
        loop l1
        jmp D
finish:
    mov cx,100
    mov ax,0
    
    L2:
        add al, T[di]
        inc di
        loop l2
        
    div si
    mov M, ax
    
    HLT 
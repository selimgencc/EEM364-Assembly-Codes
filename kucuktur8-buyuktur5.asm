.model small

.data

x equ 5 
y equ 8 

msg  db  0AH, 0DH, 'D $'
msg2 db 0AH, 0DH, 'Y $'

.code

mov ax , @Data
mov ds , ax


mov ah, 01H
int 21H         ;sayi alma  (al'ye)

and al, 0FH
                                   
cmp al, x
jle ATLA
cmp al, y
jge ATLA

mov ah, 09H
lea dx, msg
int 21H 

D:

HLT
        
ATLA:
    mov ah, 09H
    lea dx, msg2
    int 21H
    jmp D 
    
 
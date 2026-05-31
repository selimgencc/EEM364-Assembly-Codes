.model small

.data

msg db "5 adet sayi giriniz(0-9): $"
msg2 db 0AH, 0DH, "Ortalama =  $"
lx equ 5    

toplam db 0

sonuc db 0 

.code


main proc far
    
    mov ax , @Data
    mov ds , ax
    
    mov ax , 0 
    mov cx , lx
    
    mov ah , 09H
    lea dx , msg
    int 21H
    
dongu:

    mov ah, 01H
    int 21H  
    and al, 0FH
    
    add toplam, al
    loop dongu
        
ORT:
    call ortalama

SON:
    
    mov ah, 4CH
    int 21H
    
main endp
          
ortalama proc
    
    xor ah , ah
    mov al , toplam    
    mov dl , lx 
    div dl  
    
    mov sonuc , al
    
    mov ah , 09H
    lea dx , msg2
    int 21H
    
     
    mov dl , sonuc
    add dl, 30H    
    mov ah , 02H
    int 21H
    
    ret      
    
ortalama endp
.model small
.data

x db "KABAK"
lx equ ($-x)
 
.code

mov ax , @data
mov ds , ax

xor ax , ax   ; 0 mov ax, 0 ile ayni
mov si , 0
mov di , lx-1 ; çcunku indeksler 0dan basliyor 1 degil o yuzden ona esitledik
mov bl , 1    ;palindrom varsayarak basladik, bl = palindrom bayragi

L:

mov al , x[si]
mov ah , x[di] ; sondan geliyor

cmp al , ah
jnz not_pali

inc si
dec di
cmp si , di

jl L


D:

HLT


not_pali:
mov bl , 0
jmp D           
.model small 
.stack 100h
.data 
name db 'mi nombre'
.code 
main proc 
mov ax , @data 
mov ds , ax 
; Imprimir nombre 
mov ah , 09h
lea dx , name 
int 21h
mov ah , 4ch
int 21h 
main endp 
end 
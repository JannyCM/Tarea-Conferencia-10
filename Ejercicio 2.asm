.model small
.stack 100h
.data 
mensaje db 'ingrese una letra :$'
.code 
main proc 
mov ax , @data
mov ds , ax 
; mostrar mensaje para ingresas letra 
mov ah , 09h
lea dx , mensaje 
int 21h 
; capturar letra con la macro
capturar_letra 
; mostrar la letra ingresada 
mov ah , 02h
mov dl , al
int 21h
mov ah , 4ch
int 21 
main endp
end 
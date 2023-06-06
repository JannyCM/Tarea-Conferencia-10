;Macro para capturar una letra 
macro capturar_letra 
mov ah 01h 
int 21h 
endm

;Macro para capturar una palabra 
macro capturar_palabra 
mov ah , 0Ah 
lea dx , palabra 
int 21h 
endm

;Macro para capturar un numero 
macro capturar_numero
mov ah , 01h 
int 21h 
sub al 30h
endm
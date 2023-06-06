.model samall
.stack 100h
.data 
NUM db 13,4,7,4,6,8,1,5,6,7,8,9,0,8
.code 
main proc 
mov ax ,@data
mov ds , ax
;Sumar los numeros en la variable NUM
mov cx , NUM ;Cargar el contador de elementos 
lea si , NUM+2; Cargar la direccion de memoria del segudo numero 
; Inicia;izar la suma en 0
mov ax , 0
;Sumar los numeros uno por uno 
add_loop:
add al , byte ptr 
[si] ; Sumar el numero actual a la suma 
inc 
si ; Apuntar al siguiente numero 
loop 
add loop ; Repetir hasta que se hayan sumado todos los numeros 
; Mostrar el resultado
mov ah , 02h
mov dl , al
int 21h 
mov ah , 4ch
int 21h 
main endp
end   
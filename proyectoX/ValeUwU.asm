org 100h  ; Comienza el código en la dirección 100h

inicio:
    ; Pide al usuario que ingrese un número
    mov ah, 09h  ; Funcion 09h de interrupción 21h para mostrar una cadena
    lea dx, msg  ; Cargar la dirección del mensaje en DX
    int 21h      ; Llamar a la interrupcion 21h para mostrar el mensaje

    ; Leer el número ingresado por el usuario
    mov ah, 01h  ; Función 01h de interrupcion 21h para leer un carácter
    int 21h      ; Llamar a la interrupcion 21h para leer el carácter
    sub al, 30h  ; Convertir el carácter ASCII a su valor numérico (0-9)
    mov bl, al   ; Guardar el número en BL

    ; Imprimir el mensaje "Has ingresado el numero :"
    mov ah, 09h  ; Funcion 09h de interrupcion 21h para mostrar una cadena
    lea dx, msg_num  ; Cargar la direccion del mensaje en DX
    int 21h      ; Llamar a la interrupcion 21h para mostrar el mensaje

    ; Imprimir el número ingresado
    mov ah, 02h  ; Funcion 02h de interrupcion 21h para mostrar un carácter
    add bl, 30h  ; Convertir el número de vuelta a carácter ASCII
    mov dl, bl   ; Cargar el carácter en DL
    int 21h      ; Llamar a la interrupcion 21h para mostrar el carácter

    ; Preguntar al usuario si desea terminar el programa
    mov ah, 09h  ; Función 09h de interrupcion 21h para mostrar una cadena
    lea dx, msg_fin  ; Cargar la direccion del mensaje en DX
    int 21h      ; Llamar a la interrupcion 21h para mostrar el mensaje

    ; Leer la respuesta del usuario
    mov ah, 01h  ; Función 01h de interrupcion 21h para leer un carácter
    int 21h      ; Llamar a la interrupcion 21h para leer el carácter
    cmp al, 'n'  ; Comparar si el usuario ingrese 'n'
    je salir     ; Si ingresó 'n', salir del programa
    cmp al, 'N'  ; Comparar si el usuario ingrese 'N'
    je salir     ; Si ingresó 'N', salir del programa

    ; Si el usuario no ingresó 'n' o 'N', repetir el proceso
    jmp inicio

salir:
    ; Finaliza el programa
    mov ah, 4Ch  ; Funcion 4Ch de interrupcion 21h para terminar el programa
    int 21h      ; Llamar a la interrupcion 21h para salir

msg db 'Ingrese un numero (0-9): $'
msg_num db 0Dh,0Ah,'Has ingresado el numero : $'
msg_fin db 0Dh,0Ah,'Deseas terminar el programa? (s/n): $'
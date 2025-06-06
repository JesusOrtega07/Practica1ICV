org 100h  ; Comienza el c�digo en la direcci�n 100h

inicio:
    ; Pide al usuario que ingrese un n�mero
    mov ah, 09h  ; Funcion 09h de interrupci�n 21h para mostrar una cadena
    lea dx, msg  ; Cargar la direcci�n del mensaje en DX
    int 21h      ; Llamar a la interrupcion 21h para mostrar el mensaje

    ; Leer el n�mero ingresado por el usuario
    mov ah, 01h  ; Funci�n 01h de interrupcion 21h para leer un car�cter
    int 21h      ; Llamar a la interrupcion 21h para leer el car�cter
    sub al, 30h  ; Convertir el car�cter ASCII a su valor num�rico (0-9)
    mov bl, al   ; Guardar el n�mero en BL

    ; Imprimir el mensaje "Has ingresado el numero :"
    mov ah, 09h  ; Funcion 09h de interrupcion 21h para mostrar una cadena
    lea dx, msg_num  ; Cargar la direccion del mensaje en DX
    int 21h      ; Llamar a la interrupcion 21h para mostrar el mensaje

    ; Imprimir el n�mero ingresado
    mov ah, 02h  ; Funcion 02h de interrupcion 21h para mostrar un car�cter
    add bl, 30h  ; Convertir el n�mero de vuelta a car�cter ASCII
    mov dl, bl   ; Cargar el car�cter en DL
    int 21h      ; Llamar a la interrupcion 21h para mostrar el car�cter

    ; Preguntar al usuario si desea terminar el programa
    mov ah, 09h  ; Funci�n 09h de interrupcion 21h para mostrar una cadena
    lea dx, msg_fin  ; Cargar la direccion del mensaje en DX
    int 21h      ; Llamar a la interrupcion 21h para mostrar el mensaje

    ; Leer la respuesta del usuario
    mov ah, 01h  ; Funci�n 01h de interrupcion 21h para leer un car�cter
    int 21h      ; Llamar a la interrupcion 21h para leer el car�cter
    cmp al, 'n'  ; Comparar si el usuario ingrese 'n'
    je salir     ; Si ingres� 'n', salir del programa
    cmp al, 'N'  ; Comparar si el usuario ingrese 'N'
    je salir     ; Si ingres� 'N', salir del programa

    ; Si el usuario no ingres� 'n' o 'N', repetir el proceso
    jmp inicio

salir:
    ; Finaliza el programa
    mov ah, 4Ch  ; Funcion 4Ch de interrupcion 21h para terminar el programa
    int 21h      ; Llamar a la interrupcion 21h para salir

msg db 'Ingrese un numero (0-9): $'
msg_num db 0Dh,0Ah,'Has ingresado el numero : $'
msg_fin db 0Dh,0Ah,'Deseas terminar el programa? (s/n): $'
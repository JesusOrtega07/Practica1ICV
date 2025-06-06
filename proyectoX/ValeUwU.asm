org 100h 

inicio:
    ; Pide al usuario que ingrese un número
    mov ah, 09h  
    lea dx, msg  
    int 21h     

    ; Leer el número ingresado por el usuario
    mov ah, 01h  
    int 21h      
    sub al, 30h  
    mov bl, al   

    ; Imprimir el mensaje "Has ingresado el numero :"
    mov ah, 09h  
    lea dx, msg_num  
    int 21h      

    ; Imprimir el número ingresado
    mov ah, 02h  
    add bl, 30h  
    mov dl, bl   
    int 21h      

    ; Preguntar al usuario si desea terminar el programa
    mov ah, 09h  
    lea dx, msg_fin  
    int 21h      

    ; Leer la respuesta del usuario
    mov ah, 01h  
    int 21h      
    cmp al, 'n'  
    je salir     
    cmp al, 'N'  
    je salir     

 
    jmp inicio

salir:
    ; Finaliza el programa
    mov ah, 4Ch  
    int 21h      

msg db 'Ingrese un numero (0-9): $'
msg_num db 0Dh,0Ah,'Has ingresado el numero : $'
msg_fin db 0Dh,0Ah,'Deseas terminar el programa? (s/n): $'
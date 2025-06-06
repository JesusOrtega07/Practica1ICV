
org 100h

msg db 'Ingrese un numero (0-9): $'
msg_num db 0Dh,0Ah,'Has ingresado el numero : $'
msg_fin db 0Dh,0Ah,'Deseas terminar el programa?(s/n): $' 

inicio: 

    ; Pide al usuario que ingrese un numero uwu
    mov ah, 09h
    lea dx, msg  
    int 21h   



ret





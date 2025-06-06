
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

msg db 'Ingrese un numero (0-9): $'
msg_num db 0Dh,0Ah,'Has ingresado el numero : $'
msg_fin db 0Dh,0Ah,'Deseas terminar el programa? (s/n): $'

ret





.model small
.stack 100h
.code
main proc far
    mov cx,26
    mov dl,65
    l1:   
    mov ah,02h
    int 21h
    inc dl  
    loop l1 
    mov ax,4ch
    int 21h
endp
end main
    
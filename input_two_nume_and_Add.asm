.model small
.stack 100h
.code
main proc far
    mov ah, 01h
    int 21h
    mov bl,al
    mov ah,01h
    int 21h
    add bl,al
    sub bl,30h
    mov dl,bl
    mov ah,02h
    int 21h
    mov ah,4ch
    int 21h
endp
end main
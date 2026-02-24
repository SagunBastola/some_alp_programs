.model small
.stack 100h
.code
main proc far
    mov ah,01h
    int 21h
    mov dl,al
    mov ah,02h
    int 21h
    mov ah,4ch
    int 21h
endp
end main
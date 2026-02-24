.model small
.stack 100h
.data
sum dw ?
.code   
main proc
    mov dl,"s" 
    mov ah,02
    int 21h 
    mov ah,4ch
    int 21h
endp
end main
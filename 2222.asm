.model small
.stack 100h
.data
string db "this"
.code
main proc far  
    mov cl,04h 
    mov ax,@data
    mov ds,ax
    lea bx,string
    l1:
    mov dl,[bx]
    inc bx
    mov ah,02h
    int 21h 
    dec cl
    jnz l1
    mov ah,4ch
    int 21h
endp
end main
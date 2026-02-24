.model small
.stack 100h
.data
string db "this"
.code
main proc far
    mov ax,@data
    mov ds,ax
    
    mov si,offset string
    mov cx,04h
    
    loop1:    
    mov dx,[si]
    inc si
    mov ah,02h
    int 21h
    loop loop1
    
    mov ah,4ch
    int 21h
    
endp
end main
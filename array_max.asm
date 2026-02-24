
.model small
.stack 100h
.data
arr db 2,9,8 
.code
main proc far
    mov ax,@data
    mov ds,ax
    mov si,offset arr
    mov cx,3h
    mov bl,[si]
    loop1:
    mov dl,[si]  
    cmp bl,dl
    jg juu
    mov bl,dl
    juu:
    add dl,30h
    inc si
    mov ah, 02h
    int 21h       
    loop loop1 
    mov ah, 02h
    add bl,30h
    mov dl,bl
    int 21h
    mov ah,4ch
    int 21h
endp
end main
.model small
.stack 100h
.code
main proc far
    mov ah,01h
    int 21h
    mov bl,al
    mov ah,01h
    int 21h
    cmp bl,al
    jg loop1
    mov bl,al
    loop1: 
     mov ah,01h
    int 21h     
    cmp bl,al
    jg loop3
    mov bl,al
    
    loop3:  
    mov dl,bl
    mov ah, 02h  
    int 21h
    
    mov ah,4ch
    int 21h
endp
end main
    
          
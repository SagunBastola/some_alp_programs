.model small
.stack 100h
.data
string1 db "enter the passsword:$"
msg1 db "invalid_passowrd:$"
msg2 db "valid_passoword:$ "
pass db "wrc"
.code
newline proc
    mov dl,10
    mov ah,02h
    int 21h  
    mov dl,13
    int 21h
    ret    
main proc  
    mov ax,@data
    mov ds,ax
    
    mov dx,offset string1
    mov ah,09h
    int 21h
    
    
    call newline
    mov cx,0003h
    mov si,offset pass
    loop1:    
    mov ah,01h
    int 21h
    cmp al,[si]
    jne notvalid        
    inc si
    loop loop1
    
    call newline
    mov dx,offset msg2
    mov ah,09h
    int 21h   
    jmp ex
    
    notvalid:
    call newline   
    
    mov dx,offset msg1
    mov ah,09h
    int 21h
    
    ex:
    mov ah,4ch
    int 21h
endp
end main
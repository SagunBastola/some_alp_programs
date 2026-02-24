.model small
.data
string db 10 dup('$')
.code
main proc  
           
    mov ax,@data
    mov ds,ax
    
    mov si,offset string
    mov ah,01h
    int 21h   
    sub al,32
    mov [si],al
    inc si
    
    loop1:    
    mov ah,01h
    int 21h
    cmp al,13
    jz l2 
    mov [si],al
    inc si
    jmp loop1
    
    l2:
    mov [si],'$'
    
    
    
    mov dl,13
    mov ah,02h
    int 21h
    mov dl,10
    int 21h
    
    mov dx,offset string
    mov ah,09h
    int 21h
    
    mov ah,4ch
    int 21h
endp
end main

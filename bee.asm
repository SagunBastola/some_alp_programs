.model small
.data
string db 100 dup(?) 
var db ?
.stack 100h
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov si,offset string  
    mov cx,00h
    
    loop1:
    mov ah, 01h
    int 21h    
    mov [si],al
    inc si    
    inc cx
    cmp al,13
    jnz loop1  
         
    dec cx
    mov si,offset string
    mov var,cl
    mov ax,0600h
    mov bh,1fh
    mov cx,0000h
    mov dx,184fh   
    
    
    int 10h      
    
    mov cl,var
    loop2:
    mov dl,[si]
    inc si    
    mov ah,02h
    int 21h    
    dec bx
    jnz loop2
    
        
        
    mov ah,4ch
    int 21h
endp
end main
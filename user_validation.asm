.model small
.data
max db 20
min db ?
string db 20 dup(?)  
user db "TribhuwanUniversity" 
msg db "Invalid!!$"
msg2 db "Valid!!$"
.stack 100h
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov dx,offset max
    mov ah,0ah
    int 21h
    
    
       
    mov al,19
    cmp al,min
    jne notvalid 
    
    mov si,offset user
    mov di, offset string+2
    
    mov cl,min
    xor ch,ch
    loop3:    
    mov al,[si]
    cmp al,[di]
    jne notvalid
    inc si
    inc di
    loop loop3
     
       
    
    valid:
    mov dx,offset msg2
    mov ah,09h
    int 21h
    jmp ex
    
    
    
    notvalid:
    mov dx,offset msg
    mov ah,09h
    int 21h
    
    ex:
    mov ah,4ch
    int 21h
endp
end main
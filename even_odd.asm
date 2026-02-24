.model small
.stack 100h
.data
string db "enter the number: $"
.code
main proc far
    mov ax,@data
    mov ds,ax  
    mov dl,30h
    mov dx,offset string
    mov ah,09h  
    int 21h   
      
    mov ah,01h
    int 21h   
    sub al,30h
    mov ah,00h
    mov bl,2
    div bl 
    
    cmp ah,0
    je loop2
    mov dl,31h
    loop2:
    mov ah,01h
    int 21h
    mov ah,4ch
    int 21h
endp
end main
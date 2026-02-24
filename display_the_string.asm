.model small
.stack 64h
.data
string db "it is fun to relieve$"
.code
main proc far                    
    mov ax,@data
    mov ds,ax
    mov dx,offset string
    mov ah,09h
    
    int 21h
    
    mov ah,4ch
    int 21h   
endp
end
.model small
.stack 100h
.data
string db "programming is fun$"
.code
main proc
    mov ax,@data
    mov ds,ax
           
    mov ax,0600h
    mov bh,1fh
    mov cx,0230h
    mov dx,1234h
    int 10h
    
    mov dx,offset string
    mov ah,09h
    int 21h     
    
    mov ah,4ch
    int 21h         
endp
end main
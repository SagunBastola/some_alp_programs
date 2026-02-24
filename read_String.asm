.model small
.stack 100h
.data
string db 20
        db ? 
    db 10 dup(?)
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov dx,offset string
    mov ah,0ah
    int 21h
    
    mov ah,4ch
    int 21h
    
endp
end main
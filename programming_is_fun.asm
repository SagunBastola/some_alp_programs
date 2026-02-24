.model small
.stack 100h
.data
string db "Programming is Fun$"    
string2 db "hello$"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov dx,offset string
    mov ah,09h
    int 21h           
    
    mov ah,01h
    int 21h
    
    mov ah,00h
    mov al,03h
    int 10h
    
    mov dx,offset string2
    mov ah,09h
    int 21h
    
    mov ah,4ch
    int 21h
    
endp
end main
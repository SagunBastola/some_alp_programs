.model small
.stack 100h

.data
string db 100 dup(?)  
msg db "length_of_string ? : $"
d db ?

.code
main proc far
           
    mov ax,@data
    mov ds,ax
    
    mov si,offset string      
    
    ; print message
    mov dx,offset msg
    mov ah,09h
    int 21h
    
    ; read length (single digit only)
    mov ah,01h
    int 21h
    sub al,30h
    mov d,al
    mov cl,d
    
test1:
    mov ah,01h
    int 21h
    mov [si],al 
    inc si
    loop test1  
    
    mov si,offset string
    mov cl,d 
    
test2:   
    mov dl,[si]
    mov ah,02h
    int 21h   
    inc si
    loop test2
    
    mov ah,4ch 
    int 21h

main endp
end main

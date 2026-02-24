.model small
.stack 200h
.data   
msg1 db "not the vowel$"
msg2 db "is_a_vowel$"
.code
main proc far      
    mov ax,@data
    mov ds,ax
    mov ah,01h   
    int 21h   
    
    cmp al,"A"
    
    je vwl 
    mov dl, 13
    mov ah, 02h
    int 21h
    mov dl, 10
    int 21h
    
    
    mov dx,offset msg1
    mov ah,09h
    int 21h  
    jmp quit
    vwl:   
      mov dx,offset msg2
      mov ah,09h
      int 21h
    quit:
    mov ax,4c00h
    int 21h
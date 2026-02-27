.model small
.data
sum dw ?
.stack 100h 
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov cx,0000h   
    mov dx,0000h
    loop1:  
    mov ah,01h
    int 21h
    cmp al,13
    je rem
    cmp al,'a'
    je ex
    cmp al,'e'
    je ex
    cmp al,'i'
    je ex
    cmp al,'o'
    je ex
    cmp al,'u'
    je ex
    jmp loop1
    ex:
    inc cl
    jmp loop1 
     
    rem:           
    mov dx,0000h
    mov bx,10
    mov ax,cx
    mov cx,0000h
    loop2:
    xor dx,dx
    div bx
    push dx     
    
    
    inc cx   
    cmp ax,0h
    jne loop2  
    mov sum,cx
    mov ah,06h 
    mov al,00h
    mov bh,1fh
    mov cx,0000h
    mov dx,184fh
    int 10h
    
    mov cx,sum
    loop3:    
    pop dx
    add dl,30h
    mov ah, 02h
    int 21h
    loop loop3
    
    
    exit:
    
    mov ah,4ch
    int 21h
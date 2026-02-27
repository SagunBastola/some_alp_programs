.model small
.stack 100h
.data
sum db ? 
cnt dw ?
.code
main proc
    mov ax,@data
    mov ds,ax
    mov bx,0000h   
    
    
    
    loop1:
    mov ah,01h
    int 21h
    cmp al,13
    je ex    
    cmp al,'a'
    je c
    cmp al,'e'
    je c
    cmp al,'i'
    je c
    cmp al,'o'
    je c
    cmp al,'u'
    je c
    jmp g
    c:
    inc bx
    g:
    jmp loop1
    
    
    
    ex: 
    mov ax,bx
    mov bx,10 
    mov cx,0000h
    loop2:
    div bx
    push dx
    inc cx
    cmp al,00h
    je loop3
    jmp loop2
    mov ax,cx
    mov cnt,ax
    
    mov ax,0600h
    mov bh,07h      ; attribute (gray on black)
    mov cx,0000h    ; start row/col
    mov dx,184fh    ; end row/col (24x80)
    int 10h
    
    mov cx,cnt
    loop3:
    pop dx 
    add dl,30h
    mov ah,02h
    int 21h
    loop loop3
        
    
    show:
    mov ah,4ch
    int 21h
    
endp
end main
    
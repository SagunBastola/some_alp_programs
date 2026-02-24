.model small
.stack 100h
.data
string1 db "correct"
string  db 15 dup(?)
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset string
    xor bx,bx

read_loop:
    mov ah,01h
    int 21h
    cmp al,13
    je check
    mov [si],al
    inc si
    inc bl
    jmp read_loop

check:
    cmp bl,7
    jne no_ex

    mov si,offset string
    mov di,offset string1
    mov cx,7
    
    mov dl,13
    mov ah,02h
    int 21h
    mov dl,10
    int 21h
compare_loop:
    mov al,[si]
    cmp al,[di]
    jne no_ex
    inc si
    inc di
    loop compare_loop

    mov ah,02h
    mov dl,'y'
    int 21h
    jmp exit

no_ex:
    mov ah,02h
    mov dl,'n'
    int 21h

exit:
    mov ah,4ch
    int 21h
main endp
end main
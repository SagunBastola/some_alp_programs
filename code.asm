.model small
.stack 100h

.data
msg db 'HELLO$'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov si,offset msg

print_loop:
    mov al,[si]
    cmp al,'$'
    je done
    
    mov ah,0Eh
    int 10h
    
    inc si
    jmp print_loop

done:
    mov ah,4Ch
    int 21h
main endp
end main

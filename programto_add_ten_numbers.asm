.model small
.stack 100h
.data
arr db 10,20,30,40,50,50,20,20,30,80
.code
main proc    
    mov ax,@data
    mov ds,ax
    
    mov cx,10
    lea bx,arr
    mov ax,00h
    
    l1:   
    add ax,[bx]
    inc bx
    loop l1
    
     mov bx,ax
    
    
    mov ah,4ch
    int 21h
endp
end main
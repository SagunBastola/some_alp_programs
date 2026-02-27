.model small
.stack 100h
.data
arr dw 1234h,1223h,1231h   
max dw 0
.code 
main proc  
    mov ax,@data
    mov ds,ax
    
    mov si,offset arr
    
    xor ax,ax
    mov cx,03h
    loop1:      
    mov ax,[si]
    cmp max,ax
    jg ex
    mov max,ax
    ex:
    inc si 
    inc si
    loop loop1
    mov ah,4ch
    int 21h
endp
end main
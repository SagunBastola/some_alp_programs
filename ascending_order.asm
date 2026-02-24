.model small
.stack 100h
.data
arr db 5 dup(?)
.code
main proc far
    mov ax,@data
    mov ds,ax
    mov si,offset arr
    mov cx,5
    loop1: 
    mov ah,01h
    int 21h   
    mov [si],al
    inc si    
    loop loop1 
    mov cx,5
    dec cx 
    
    
    outerloop:
    mov bx,cx
    mov si,0
    comploop:
    mov al,arr[si]
    mov dl,arr[si+1]
    cmp al,dl
    jc noswap
    mov arr[si],dl
    mov arr[si+1],al 
    noswap:
    inc si
    dec bx
    jnz comploop
    loop outerloop
          
          
          
    mov cx,05h  
    mov si,offset arr
    l:               
    mov dl,[si]
    mov ah,02h 
    inc si
    int 21h
    loop l
    
    
    mov ax,4200h
    int 21h
endp
end main
    
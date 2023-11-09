.model small
.stack 100h
.data
a dw ?
b dw ?

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    sub ax,48
    mov a,ax
    
    mov ah,1
    int 21h
    sub ax,48
    ;mov b,ax
    
    
    mul a ; ax = ax * a
    
     
    mov ah,2
    mov dx,ax
    add dx,48
    int 21h 
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
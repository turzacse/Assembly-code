;find large number

.model small
.stack 100h
.data
a db 'Input two number $'
b db 10,13, 'Largest number $'

.code 
main proc
    mov ax, @data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov bh,al
    
    
    bigger:
    cmp bl,bh
    jg l1
    jmp l2
    
    l2:
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bh
    jmp exit
    
    l1:
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,bl
    jmp exit
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main
    
    
     
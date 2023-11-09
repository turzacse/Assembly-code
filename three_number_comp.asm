.model small  ; code segment and data segment 
.stack 100h
.data
    p db 'Enter three number $'
    
.code
 main proc  
 
;data segment initilazition
    mov ax,@data
    mov ds,ax  
             
    mov ah,9
    lea dx,p
    int 21h         
    
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov bh,al
    int 21h
    mov cl,al
    
    cmp bl,bh
    jge a
    
    b:
    cmp bh,cl
    jge c
    mov ah,2
    mov dl,cl
    int 21h
    jmp exit
    
    c:
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit
    
    a:
    cmp bl,cl
    jge d
    mov ah,2
    mov dl,cl
    int 21h
    jmp exit
    
    d:
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch  ; last 4 line use for exit
    int 21h
    main endp
end main     

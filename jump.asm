.model small  ; code segment and data segment 
.stack 100h
.data
    a db 'I am $'
    b db 'Masud $'
    c db 'Parvez $'
    
.code
 main proc  
 
;data segment initilazition
    mov ax,@data
    mov ds,ax  
          
    mov ah,9
    lea dx,a
    int 21h
    
    level1:
    mov ah,9
    lea dx,b
    int 21h
    jmp level2
    
    level2:
    mov ah,9
    lea dx,c
    int 21h
    jmp exit
    
    exit:
    mov ah,4ch  ; last 4 line use for exit
    int 21h
    main endp
end main     

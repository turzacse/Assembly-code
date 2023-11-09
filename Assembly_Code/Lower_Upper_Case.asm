.model small  ; code segment and data segment 
.stack 100h
.data
    a db 'Enter lower case $'
    b db 10,13,'Upper case $'
    
.code
 main proc  
 
;data segment initilazition
    mov ax,@data
    mov ds,ax  
          
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    sub bl,32    ; low to up
    ; add bl, 32 ; up to low 
    mov dl,bl
    int 21h   
    
    exit:
    mov ah,4ch  ; last 4 line use for exit
    int 21h
    main endp
end main     

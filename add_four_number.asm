.model small  ; code segment and data segment 
.stack 100h
.data
    a db 'Enter four number $'
    b db 10,13,'Result $'
    
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
    int 21h
    mov bh,al
    int 21h
    mov cl,al
    int 21h
    mov ch,al  
             
; add four number
    add bl,bh ; bl = bl+bh
    sub bl,48 
    
    add bl,cl
    sub bl,48
    
    add bl,ch
    sub bl,48
    
;print sum 
    mov ah,9
    lea dx,b
    int 21h
      
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch  ; last 4 line use for exit
    int 21h
    main endp
end main     

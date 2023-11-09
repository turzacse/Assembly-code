.model small  ; code segment and data segment 
.stack 100h
.data   
    m db 3  
    s db 'Masud Parvez $'  
    
.code
 main proc  
 
;data segment initilazition
    mov ax,@data
    mov ds,ax  
    
    mov ah,2   ; for char print
    add m,48                            
    mov dl,m
    int 21h    
    
    mov ah,9   ; for string print
    lea dx,s   ; load effective address, s variable save in dx
    int 21h
    
    mov ah,1   ; for input
    int 21h    ; execution 
    mov bl,al  ; default data store in al, then al store in bl
    
    mov ah,1
    int 21h
    mov bh,al
          
;newline print
    mov ah,2    ; for printing a character
    mov dl,10   ; for a newline character
    int 21h     ; Execute the system call
    mov dl,13  
    int 21h
    
    mov ah,2    ; for output
    mov dl,bl   ; dl use for data display, so bl and bh store in dl
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h   
    
    exit:
    mov ah,4ch  ; last 4 line use for exit
    int 21h
    main endp
end main
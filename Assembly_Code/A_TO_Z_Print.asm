.model small  ; code segment and data segment 
.stack 100h
.code
 main proc  

    mov cx,26
    mov ah,2
    mov dl,'a'
    
    level:
    int 21h
    inc dl
    loop level
    
    exit:
    mov ah,4ch  ; last 4 line use for exit
    int 21h
    main endp
end main     

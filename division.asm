include 'emu8086.inc'
.model small
.stack 100h
.data
a dw ?
b dw ?

.code
main proc
   
    
    mov al,9
    mov bl,2
    
    div bl
    
    
    mov bx,ax
    print "ans-> "
    mov ah,2
    mov dl,bl
    add dl,48
    int 21h  
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    print "remainder-> "
    mov ah,2
    mov dl,bh
    add dl,48
    int 21h 
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
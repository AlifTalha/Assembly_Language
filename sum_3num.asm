.model small      ;3 number summation
.stack 100h
.data
msg db ? ;not initial
.code
main proc
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,1
    int 21h
    mov cl,al  
    
    add bl,bh   ;bl=bl+bh
    sub bl,48   ;bl=bl-48
    mov ch,bl
    add ch,cl
    sub ch,48
    mov msg,ch
    
    mov ah,2
    mov dl,msg
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    
.model small
.stack 100h
.data

m1 db "Hello Talha $"
.code

main proc
    
    mov ax,@data
    mov ds,ax
    mov cx,0  ; cx counter register for count  
    
print:   ; level
    mov ah,9
    lea dx,m1
    int 21h
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    inc cx
    
    cmp cx,5    ; 5 times string print 
    je exit     ; je = jump else
    
    jmp print
    
    
exit:
    mov ah,4ch
    int 21h
    
    
main endp
end main
        
.model small
.stack 100h
.data
a equ '2'     ;2 value fixed can't change for EQU
b equ 'AIUB $'    ;equ only one output so c variable a b rakbo
c db b
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,a
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,a
    int 21h 
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    mov ah,9
    lea dx,c
    int 21h
    
    exit:
    mov ah,4ch
    main endp
end main
    
; Write a program that can convert user input character Lowercase to convert Uppercase  
; A=41 and a= 61


.model small
.stack 100h
.data

m1 db "Enter a lower case letter: $"
m2 db "ENter a upper case letter: $"
a db ?   ;a variable could not init that's use ?

.code 
main proc 
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,m1
    int 21h
    
    mov ah,1
    int 21h
    sub al,20h    ;input nile al a jbe  (20h or 32 use)
    mov a,al
    
    
    mov ah,2
    mov dl,10        ; dl 10 (new Line)   (dl for single char)
    int 21h
    mov ah,2
    mov dl,13      ;dl 13  using for new center line start for beginning)
    int 21h
    
    
    mov ah,9       ; single char a  ah use
    lea dx,m2
    int 21h
    mov ah,2
    mov dl,a
    int 21h 
    
    
    mov ah,4ch
    int 21h
    
endp    
    
      
    
    
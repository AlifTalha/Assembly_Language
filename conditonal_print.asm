; Write a progra  to display "o" if AL contains 1 or 3; if AL contains 2 or 4 display  "e"

.model small
.stack 100h
.data
a db "o"
b db "e"
m1 db "Enter your Number : $"
array1 db 49,51
array2 db 50,52

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9   ;String Print
    lea dx,m1
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,array1
    
    cmp al,bl
    je print1
    
    mov bl,array1+1      ; 1 increment
    
    
    cmp al,bl
    je print1 
    
    mov bl,array2
    
    cmp al,bl
    je print2
    
    mov bl,array2+1
    
    cmp al,bl
    je print2
    
    jmp exit
    
    
    
print1:
     mov ah,2         ; new line
     mov dl,10
     int 21h
     mov dl,13
     int 21h
     
     
     mov ah,2         ; o print
     mov dl,a
     int 21h
     
     jmp exit
     
print2:
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h
     
     mov ah,2
     mov dl,b
     int 21h
     
     
exit:
   mov ah,4ch
   int 21h
   
   
main endp
end
     
         
     
     
     
     
          
    
    

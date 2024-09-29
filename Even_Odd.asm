;Number of 0 = even then output Even
;if number of 0 = odd then print ODD

.model small
.stack 100h
.data
odd dw "ODD$"
even dw "EVEN$"

.code
main proc
    mov ax,@data
    mov ds,ax
    mov cl,0   
input:
    mov ah,1
    int 21h
    cmp al,"0"
    je incre
    cmp al,13
    je judge
    jmp input

incre:
    inc cl
    jmp input
    
judge:
    mov al,cl
    mov bl,2
    xor ah,ah
    div bl
    cmp ah,0
    je printEven
    jmp printOdd 
    
printEven:
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        mov ah,9
        lea dx,even
        int 21h
        jmp exit
        
        
printOdd:
       mov ah,2
       mov dl,10
       int 21h
       mov dl,13
       int 21h
       
       mov ah,9
       lea dx,odd
       int 21h
       
       
exit:
    mov ah,4ch
    int 21h
    
endp                           
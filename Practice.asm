.MODEL SMALL 
.STACK 100H 
.DATA 
     ARR DB 1,2,3,4,5
     MSG1 DB 'maximum number is:$'
     
.CODE
MAIN PROC FAR
    
    mov ax,@data
    mov ds,ax
    
    mov si,offset msg1
    mov bl,[si]
    mov cx,5
    lable1:
        cmp bl,[si]
        jge   increment
        mov bl,[si]
        increment:
        inc si
        loop lable1
        
        mov ax,09h
        lea dx,msg1
        int 21h
        
        
        mov dl,bl
        add dl,48
        
        mov ah,02h
        int 21h
        
        mov ah,4ch
        int 21h
    
    MAIN ENDP 
END MAIN 
;Program to print 0 to 9    
.model small
.stack 100h
.data
.code
main proc far  
    
    mov cx,10
    mov dx,48
    
    L1:
       
       mov ah,02h
       int 21h
       
       ;add dx,1
       
       inc dx
         
    Loop L1  
    
    mov ah,4ch
    int 21h
    
    main endp
end main
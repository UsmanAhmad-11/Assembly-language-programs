;Program to print two different strings on two different lines
.model small
.stack 100h
.data 
     msg1 db 'Hello$'
     msg2 db 'World$'
.code
main proc far
    
    mov ax,@data
    mov ds,ax
    
    mov dx,offset msg1
    ;lea dx,msg1
     
     mov ah,09h
     int 21h
     
     mov dx,10
     mov ah,02h
     int 21h
     
     mov dx,13
     mov ah,02h
     int 21h
     
     mov dx,offset msg2
     mov ah,09h
     int 21h
     
     mov ah,4ch
     int 21h
    
    main endp
end main
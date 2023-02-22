;Program to input a character from user and print it
.model small
.stack 100h
.code
.data
main proc far
         mov ah,01h
         int 21h
         
         mov dl,al
         mov ah,02h
         int 21h
         
         mov ah,4ch
         int 21h
    
    
    
    main endp
end main
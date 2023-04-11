.model tiny
.code
     org 0100h

main: jumps
    jmp start

msg1 db "Machine Problem #3$"
msg2 db "ASCII DRAWER$"
msg3 db "BY: Jomari Divinagracia$"
row db ?
col db ?

start:
     mov ax, 03
     int 10h


     mov ah,02
     mov bh,0
     mov dh, 1
     mov dl, 2
     int 10h

     mov ah,09
     Lea dx,ds: msg1
     int 21h

     mov ah,02
     mov bh,0
     mov dh, 1
     mov dl, 35
     int 10h

     mov ah,09
     Lea dx,ds: msg2
     int 21h

     mov ah,02
     mov bh,0
     mov dh, 1
     mov dl, 55
     int 10h

     mov ah,09
     Lea dx,ds: msg3
     int 21h


 mov col,1
 mov cx,79
 line1:
 mov ah,02
 mov bh,0
 mov dh,0
 mov dl,col
 int 10h
 mov ah,02
 mov dl, 'Ä'
 int 21h

 mov ah,02
 mov bh,0
 mov dh,2
 mov dl,col
 int 10h
 mov ah,02
 mov dl,'Ä'
 int 21h

 mov ah,02
 mov bh,0
 mov dh,19
 mov dl,col
 int 10h
 mov ah,02
 mov dl,'Ä'
 int 21h

 mov ah,02
 mov bh,0
 mov dh,23
 mov dl,col
 int 10h
 mov ah,02
 mov dl,'Ä'
 int 21h



 inc col
 loop line1

 mov row,1
 mov cx,23
 line2:
 mov ah,02
 mov bh,0
 mov dh,row
 mov dl,79
 int 10h
 mov ah,02
 mov dl,'³'
 int 21h

 mov ah,02
 mov bh,0
 mov dh,row
 mov dl,1
 int 10h
 mov ah,02
 mov dl,'³'
 int 21h

 inc row
 loop line2

 mov ah,02
 mov bh,0
 mov dh,0
 mov dl,1
 int 10h
 mov ah,02
 mov dl,'Ú'
 int 21h

 mov ah,02
 mov bh,0
 mov dh,0
 mov dl,79
 int 10h
 mov ah,02
 mov dl,'¿'
 int 21h

 mov ah,02
 mov bh,0
 mov dh,23
 mov dl,1
 int 10h
 mov ah,02
 mov dl,'À'
 int 21h

 mov ah,02
 mov bh,0
 mov dh,23
 mov dl,79
 int 10h
 mov ah,02
 mov dl,'Ù'
 int 21h

 mov ah,02
 mov bh,0
 mov dh,19
 mov dl,79
 int 10h
 mov ah,02
 mov dl,'´'
 int 21h


 mov ah,02
 mov bh,0
 mov dh,19
 mov dl,1
 int 10h
 mov ah,02
 mov dl,'Ã'
 int 21h

 mov ah,02
 mov bh,0
 mov dh,2
 mov dl,1
 int 10h
 mov ah,02
 mov dl,'Ã'
 int 21h


 mov ah,02
 mov bh,0
 mov dh,2
 mov dl,79
 int 10h
 mov ah,02
 mov dl,'´'
 int 21h




 mov ah,09
 mov bh,0
 mov bl,0
 mov cx,1
 int 10h



    mov ah,01 
    int 21h
    int 20h
end main
end


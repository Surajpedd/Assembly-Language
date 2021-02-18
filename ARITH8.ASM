;Name : Suraj P
;DOB : 05/09/2001
;******************************************
;ALP TO PERFORM 8-BIT ARITHMETIC OPERATIONS
;******************************************
code segment
ASSUME CS: code, DS:data
START:
mov ax,data
mov ds,ax
xor ax,ax      ;clear ax
mov ah,09H
mov bh,05H
add ah,bh
mov sum,ah
mov ah,09H
sub ah,bh
mov diff,ah
mov al,09H
mul bh
mov prod,ax    ; ans can be more than 8bits
mov ax,09H
div bh
mov quo,al
mov rem,ah
hlt
code ends

data segment
org 1200h
sum db ? 
diff db ?
prod dw ?
quo db ?
rem db ?
data ends
end
end

;Name : Suraj P
;DOB : 05/09/2001
;******************************************
;ALP TO PERFORM 16-BIT ARITHMETIC OPERATIONS
;******************************************
code segment
ASSUME CS: code, DS:data
START:
mov ax,data
mov ds,ax
xor ax,ax      ;clear ax
mov ax,2001H
mov bx,0509H
add ax,bx
mov sum,ax
mov ax,2001H
sub ax,bx
mov diff,ax
mov ax,2001H
mul bx
mov prod1,ax    ; ans can be more than 8bits
mov prod2,dx
mov ax,2001H
mov bx,05H
mov dx,0H
div bx
mov quo,ax
mov rem,dx
hlt
code ends

data segment
org 1200h
sum dw ? 
diff dw ?
prod1 dw ?
prod2 dw ?
quo dw ?
rem dw ?
data ends
end
end



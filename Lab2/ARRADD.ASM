;**************************************
;AVERAGE OF AN ARRAY OF 10 NUMBERS
;**************************************

ASSUME CS:CODE, DS:DATA
DATA SEGMENT
MYARRAY dw 005AH,005BH,005CH,005DH,005EH,005FH,0060H,0061H,0062H,0063H
SUM dw ?
QUO dw ?
DATA ENDS

CODE SEGMENT
START:
MOV CX,000AH    ;LOOP always dec CX register, no need explicit DEC
MOV BX,CX       ;FOR LOOPS always store n in CX register
MOV AX,DATA
MOV DS,AX
XOR AX,AX
LEA SI,MYARRAY

RPT:
ADD AX,MYARRAY[SI]
ADD SI,02H            ;or INC twice
LOOP RPT

MOV SUM,AX
DIV BX
MOV QUO,AX
HLT
CODE ENDS
END START

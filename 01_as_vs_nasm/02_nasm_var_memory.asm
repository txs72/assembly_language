; Data section begins 
section .data 
var1 dd 40 
var2 dd 20 
var3 dd 30 
section .text 
global _start 
_start: 
; Move the contents of variables 
mov ecx, [var1] 
cmp ecx, [var2] 
jg check_third_var 
mov ecx, [var2] 
check_third_var: 
cmp ecx, [var3] 
jg _exit 
mov ecx, [var3] 
_exit: 
mov eax, 1 
mov ebx, ecx 
int 80h


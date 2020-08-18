;Text segment begins 
section .text 
global _start ; Program entry point 
_start: 
; Put the code number for system call 
mov eax, 1 ; Return value 
mov ebx, 2 ; Call the OS 
int 80h

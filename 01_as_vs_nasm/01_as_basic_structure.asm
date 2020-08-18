# Text segment begins 
.section .text 
.globl _start 
# Program entry point 
_start: 
# Put the code number for system call 
movl $1, %eax 
/* Return value */ 
movl $2, %ebx 
# Call the OS 
int $0x80

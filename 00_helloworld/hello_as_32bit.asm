.data
s:
    .ascii "hello world\n"
    len = . - s
.text
    .global _start
_start:

    movl $4, %eax   /* write system call number */
    movl $1, %ebx   /* stdout */
    movl $s, %ecx   /* the data to print */
    movl $len, %edx /* length of the buffer */
    int $0x80

    movl $1, %eax   /* exit system call number */
    movl $0, %ebx   /* exit status */
    int $0x80



; ----------------------------------------------------------------------------------------
; Example of signed saturated arithmetic.
; ----------------------------------------------------------------------------------------

        global  main
        extern  printf

        section .text
main:
        push    rbp
        movaps  xmm0, [arg1]
        movaps  xmm1, [arg2]
        paddb   xmm0, xmm1
        movaps  [result], xmm0

        lea     rdi, [format]
        mov     esi, dword [result]
        mov     edx, dword [result+4]
        mov     ecx, dword [result+8]
        mov     r8d, dword [result+12]
        xor     rax, rax
        call    printf
        pop     rbp
        ret
        section .data
        align   16
arg1:   dw      0x3544,0x24FF,0x7654,0x9A77,0xF677,0x9000,0xFFFF,0x0000
arg2:   dw      0x7000,0x1000,0xC000,0x1000,0xB000,0xA000,0x1000,0x0000
result: dd      0, 0, 0, 0
format: db      '%x%x%x%x',10,0

;The XMM registers can also do arithmetic on integers. The instructions have the form:
;
;op xmmreg_or_memory, xmmreg
;For integer addition, the instructions are:
;
;paddb	do 16 byte-additions
;paddw	do 8 word-additions
;paddd	do 4 dword-additions
;paddq	do 2 qword-additions
;paddsb	do 16 byte-additions with signed saturation (80..7F)
;paddsw	do 8 word-additions with signed saturation (8000..7F)
;paddusb do 16 byte-additions with unsigned saturation (00..FF)
;paddusw do 8 word-additions with unsigned saturation (00..FFFF)


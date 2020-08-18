; void add_four_floats(float x[4], float y[4])
; x[i] += y[i] for i in range(0..4)

        global   add_four_floats
        section  .text

add_four_floats:
        movdqa   xmm0, [rdi]            ; all four values of x
        movdqa   xmm1, [rsi]            ; all four values of y
        addps    xmm0, xmm1             ; do all four sums in one shot
        movdqa   [rdi], xmm0
        ret

; The XMM registers can do arithmetic on floating point values one operation at a time (scalar) or multiple operations at a time (packed). The operations have the form:

; op xmmreg_or_memory, xmmreg
; For floating point addition, the instructions are:

; addpd     	do 2 double-precision additions in parallel (add packed double)
; addsd	do just one double-precision addition, using the low 64-bits of the register (add scalar double)
; addps	do 4 single-precision additions in parallel (add packed single)
; addss	do just one single-precision addition, using the low 32-bits of the register (add scalar single)


.nacro mnm x y z a b
    mov \x, \b
    mov \y, %rdi
    mov \z, %rsi
    mov \a, %rdx
    syscall
.endm
mov $60, %rax
syscall
#as
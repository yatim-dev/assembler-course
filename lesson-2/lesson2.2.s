.global _start
.text
_start:

    mov $1, %rax
    mov $1, %rdi
    mov $str, %rsi
    mov $len, %rdx
    syscall
    mov $60, %rax
    syscall
.data
   
    str: .ascii "hello"
    .align 8
    .byte 10
    .align 8

len=.-str

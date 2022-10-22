.global _start
.text
_start:

mov $2, %rax
lea funcs(, %rax, 8), %r9   
call *%r9
mov $1, %rax
mov $1, %rdi
mov $2, %rdx
syscall

mov $60, %rax
syscall

f1:
    mov $s1, %rsi
    ret
f2:
    mov $s2, %rsi
    ret
f3:
    mov $s3, %rsi
    ret

funcs:
.quad f1, f2
jmp f3
s1:
.ascii "1\n"
s2:
.ascii "2\n"
s3:
.ascii "3\n"

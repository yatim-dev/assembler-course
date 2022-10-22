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
str: .ascii "Привет\n"
len=.-str

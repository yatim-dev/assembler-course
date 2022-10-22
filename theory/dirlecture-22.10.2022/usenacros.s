.global _start
.text
_start:
.include "macros.s"

mnm $1, $1, $str, $len, %rax

mov $60, %rax
syscall

.data
str: .ascii "Привет\n"
len=.-str

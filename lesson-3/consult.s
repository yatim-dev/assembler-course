# снимать со стека число, цикл(операция, число)
# работать через коды аски символов
# 90-no operation
# .byte 0x90 или nop
# в секции текст .byte 0x90, .byte 0x80
.global _start
.text

_start:

mov $0, %al


call func

mov $60, %rax
syscall

func:
add $10, %al # то же самое что .byte 4, 10

.byte 4, 10

# .byte 4, 0x0a
#
ret





##########################################
.ascii "                       "


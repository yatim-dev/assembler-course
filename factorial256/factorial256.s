.global _start
.text
_start:

/*
input:
    mov $0, %rax    # номер системной функции чтения
    mov $0, %rdi    #stdin
    mov $a, %rsi    #адрес буфера
    mov $100, %rdx  #длина буфера
    syscall
output:
    mov $1, %rax    # номер системной функции вывода
    mov $1, %rdi    #stdout
    mov $a, %rsi    #адрес буфера
    #dec %rsi
    mov $100, %rdx  #длина буфера
    syscall
ex:
    mov $60, %rax
    mov $0, %rdi
    syscall

.data
a:.space 100
#msg: .ascii "0"
#len=.-msg


#cmp
# != 1  -> еще на круг по уножению
# иначе вывод и ексит 
*/
movl $3, %eax
addl $4, %eax
push %rax
syscall

mov $1, %rax    # номер системной функции вывода
mov $1, %rdi    #stdout
pop %rax
#mov $a, %rsi    #адрес буфера
mov $100, %rdx  #длина буфера
syscall

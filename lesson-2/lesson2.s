.global _start
.text
_start:

    pop %rcx
lp:
	pop %rsi
	mov $0, %rdx 
llp:
    inc %rdx
    cmpb $0, -1(%rsi, %rdx)
    jne llp
    
    movb $10, -1(%rsi, %rdx)
    inc %rdx
    mov $1, %rax 
	mov $1, %rdi	
    push %rcx
    syscall
    pop %rcx
    loop lp
end:
	mov $60, %rax
	syscall
.data
    str: .ascii "hello"
len=.-str

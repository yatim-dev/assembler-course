.global _start
.text

_start:

	mov $0, %rax
	mov $0, %rsi
	
m:
	push %rax
	mov $0, %rax 
	mov $0, %rdi
	mov $msg, %rsi
	mov $1, %rdx 
	syscall
	pop %rax
	
	mov $0, %rdx 
	mov msg, %cl 
	cmp $10, %cl
	jz exit
	
	mov $10, %rbx
	mul %rbx
	sub $48, %rcx
	add %rcx, %rax
	
	jmp m
	
exit:
	mov %rax, %rdi
	mov $60, %rax
	syscall
	
.data
msg: .ascii "0"
len=.-msg

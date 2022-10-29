#	.text
#	.globl	main
#main:
#	endbr64
#	pushq	%rbp
#	movl	$10, %eax
#	popq	%rbp
#	ret

#	.text
#	.globl _start
#
#_start:
#	mov %10, %rdi
#	mov $60, %rax
#	syscall


#	mov edi, 257        запуск в fasm
#	mov eax, 60
#	syscall
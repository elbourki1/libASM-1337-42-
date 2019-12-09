section .text

global _ft_read
_ft_read:
	push rax
	mov rax, 0x2000003
	syscall

	pop rax
	ret
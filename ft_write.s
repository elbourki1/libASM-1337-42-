section .text

global _ft_write
_ft_write:
	push rax
	mov rax, 0x2000004
	syscall

	pop rax
	ret

section .text

global _ft_write
;.type    ft_strlen,@function
_ft_write:
	push rax
	mov rax, 0x2000004
	syscall

	pop rax
	ret
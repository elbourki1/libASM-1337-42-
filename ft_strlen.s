section .text

global _ft_strlen
_ft_strlen:
	push rbx
	mov rbx, rdi
	mov rcx, 0
nextchar:
	cmp byte[rdi], 0
	jz finish
	inc rdi
	inc rcx
	jmp nextchar
finish:
	mov rax, rcx
	pop rbx
	ret

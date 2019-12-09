section .text

global _ft_strlen
;.type    ft_strlen,@function
_ft_strlen:
	push rbx
	mov rbx, rdi
nextchar:
	cmp byte[rdi], 0
	jz finish
	inc rdi
	jmp nextchar
finish:
	sub rdi, rbx
	mov rax,rdi
	pop rbx
	ret

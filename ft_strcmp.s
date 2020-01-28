section .text

global _ft_strcmp
_ft_strcmp:
	push rdi
	push rsi

label:
	mov al,byte[rdi]
    cmp al, byte[rsi]
	jne finishx
	cmp byte[rdi], 0
	je finish1
	inc rdi
	inc rsi
    jmp label
finishx:
	mov al, byte[rdi]
	mov bl, byte[rsi]
	movzx rax,al
	movzx rbx,bl
	sub rax, rbx
	cmp rax, 0
	jmp end
finish1:
	mov rax, 0
	jmp end
end:
	pop rsi
	pop rdi
	ret
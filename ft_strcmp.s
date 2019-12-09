section .text

global _ft_strcmp
_ft_strcmp:
label:
	mov al,byte[rsi]
    cmp al, byte[rdi]
	jne finish1
	cmp al, 0
	je finish1
	mov bl, byte[rdi]
	cmp bl, 0
	je finish1
	inc rsi
	inc rdi
    je label
finishx:
	mov bl, byte[rdi]
	sub bl, al
	movzx rax, al
	ret
finish1:
	sub al,byte[rdi]
	movzx rax, 0
	ret
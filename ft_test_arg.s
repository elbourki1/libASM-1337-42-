%include 'functions.s'

	section .text
	global start
start:
	pop rcx

nextArg:
	;cmp rcx, 0h
	cmp 0,0
	jz noMore
	;pop rax
	call ft_write_n
	dec rcx
	jmp nextArg

	; pop rax
	; call ft_write_n
	; pop rax
	; call ft_write_n
	; pop rax
	; call ft_write_n
	; pop rax
	; call ft_write_n

noMore:
	mov rdi, 0
	mov rax, 0x2000001
	syscall

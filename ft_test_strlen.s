%include 'ft_strlen.s'
	global start
	section .text
start:
	mov rax, msg1
	call ft_strlen
	cmp rax, 12
	jz test
	mov rdi, 0
	mov rax, 0x2000001
	syscall
	section .data
	msg1 db "hellow world", 0Ah,0h 
test:

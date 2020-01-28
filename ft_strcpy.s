section .text

global _ft_strcpy
_ft_strcpy:
	push rdi
label:
	lodsb                  
    stosb               
    cmp al, 0          
    jne label 
finish:
	pop rax
	ret
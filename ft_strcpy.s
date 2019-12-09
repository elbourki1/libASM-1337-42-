section .text

global _ft_strcpy
_ft_strcpy:
	push rdi
;next:
;	cmp byte[rsi], 0h
;	jz finish
;    movq byte[rdi], byte[rsi]
;	inc rdi
;	inc rsi
;	jmp next
label:
	lodsb                  
    stosb               
    cmp al, 0          
    jne label 
finish:
	pop rax
	ret
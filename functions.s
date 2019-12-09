# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    functions.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oel-bour <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/12/02 15:35:49 by oel-bour          #+#    #+#              #
#    Updated: 2019/12/02 15:35:51 by oel-bour         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

ft_strlen:
	push rbx
	mov rbx, rax
nextchar:
	cmp byte[rax], 0
	jz finish
	inc rax
	jmp nextchar
finish:
	sub rax, rbx
	pop rbx
	ret

ft_write:
	;sub     rsp, 8
	push rdi
	push rsi
	push rdx
	push rax
	call ft_strlen

	mov rdx, rax
	pop rax

	mov rsi, rax
	mov rdi, 1
	mov rax, 0x2000004
	push rdx
	syscall

	pop rax
	pop rdi
	pop rsi
	pop rdx
;	add     rsp, 8
	ret
ft_write_n:
	call ft_write

	push rax
	mov rax, 0xA
	push rax
	mov rax, rsp
	call ft_write
	pop rax
	pop rax
	ret

ft_strcpy:
	push rdi
label:
	lodsb                  
    stosb               
    cmp al, 0          
    jne label 
	pop rax
	ret
exit:
	mov rdi, 0
	mov rax, 0x2000001
	syscall
	ret

# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_test.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oel-bour <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/12/02 15:35:41 by oel-bour          #+#    #+#              #
#    Updated: 2019/12/02 15:35:43 by oel-bour         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%include 'functions.s'
	section .data
	msg1:
		default rel
	 	db 'hello world', 0
	msg2:
		default rel
	 	db 'hello world', 0
	
	section .text
	global start

start:
	;mov rax, msg1
	lea rax, [msg1]
	call ft_write_n

	lea rax, [msg2]
	call ft_write_n


	call exit

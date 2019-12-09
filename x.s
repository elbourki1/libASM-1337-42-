0:
        .string "hello"
		main:
		        push    rbp
				        mov     rbp, rsp
						        mov     edx, 5
								        mov     esi, OFFSET FLAT:.LC0
										        mov     edi, 1
												        call    write
														        mov     eax, 0
																        pop     rbp
																		        ret

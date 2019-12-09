section .text
%include        'functions.s'

global _ft_strdup
;extern _malloc
_ft_strdup:
;call ft_write
;inc rbx
 ;   call ft_strlen
  ;  push rdi
   ; call ft_write
;     mov rdi, rax
;     inc rdi
;     call _malloc
;     cmp rax,0
;     je exit1
;     mov rdi,rax
;     pop rsi
;     call ft_strcpy
;     ret
; exit1:
;     call exit
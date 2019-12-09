section .text
global _ft_malloc
    push rdi
_ft_malloc:
    mov rax, 69
    mov rdi, 0
    syscall
    mov rsi, rax
    mov rax, 69
    mov rdi, rsi
    pop rbx
    add rdi, rbx
    syscall
    ret
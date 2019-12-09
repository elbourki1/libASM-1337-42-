
SECTION .data
msg     db      'Hello World!', 0Ah     ; assign msg variable with your message string
 
SECTION .text
global  start
 
start:
 
    mov     rdx, 13     ; number of bytes to write - one for each letter plus 0Ah (line feed character)
    mov     rcx, msg    ; move the memory address of our message string into ecx
    mov     rbx, 1      ; write to the STDOUT file
    mov     rax, 4      ; invoke SYS_WRITE (kernel opcode 4)
   

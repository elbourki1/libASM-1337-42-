	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, %edi
	leaq	L_.str(%rip), %rsi
	movl	$6, %eax
	movl	%eax, %edx
	movl	$0, -4(%rbp)
	callq	_write
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)         ## 8-byte Spill
	movl	%edi, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"otman\n"


.subsections_via_symbols

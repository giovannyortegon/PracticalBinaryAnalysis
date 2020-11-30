	.file	"compilation_example.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"Hello, world!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	QWORD PTR -16[rbp], rsi
	lea	rdi, .LC0[rip]
	call	puts@PLT
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 10.2.0-7) 10.2.0"
	.section	.note.GNU-stack,"",@progbits

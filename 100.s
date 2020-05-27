	.file	"100.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"sum = %d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	movdqa	.LC1(%rip), %xmm3
	xorl	%eax, %eax
	pxor	%xmm1, %xmm1
	movdqa	.LC0(%rip), %xmm0
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L5:
	movdqa	%xmm2, %xmm0
.L3:
	movdqa	%xmm0, %xmm2
	addl	$1, %eax
	paddd	%xmm0, %xmm1
	cmpl	$25, %eax
	paddd	%xmm3, %xmm2
	jne	.L5
	movdqa	%xmm1, %xmm4
	movl	$.LC2, %edi
	xorl	%eax, %eax
	psrldq	$8, %xmm4
	paddd	%xmm4, %xmm1
	movdqa	%xmm1, %xmm5
	psrldq	$4, %xmm5
	paddd	%xmm5, %xmm1
	movdqa	%xmm1, %xmm6
	movd	%xmm6, -12(%rsp)
	movl	-12(%rsp), %esi
	jmp	printf
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	1
	.long	2
	.long	3
	.long	4
	.align 16
.LC1:
	.long	4
	.long	4
	.long	4
	.long	4
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-39)"
	.section	.note.GNU-stack,"",@progbits

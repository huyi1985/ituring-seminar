	.file	"twosum.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d + %d = %d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	movl	$30, %ecx
	movl	$20, %edx
	movl	$10, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	jmp	printf
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-39)"
	.section	.note.GNU-stack,"",@progbits

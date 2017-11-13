global _ft_abs

section .text

_ft_abs:
		push rbp
		mov rbp, rsp
		cmp edi, 0
		jge end
		not rdi
		inc rdi

end:
		mov rax, rdi
		leave
		ret

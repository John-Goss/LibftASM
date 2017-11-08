global _ft_tolower

section .text

_ft_tolower:
		push rbp
		mov rbp, rsp
		mov rax, rdi
		cmp rax, 0x41
		jl end
		cmp rax, 0x5a
		jg end
		add rax, 0x20
		jmp end

end:
		leave
		ret

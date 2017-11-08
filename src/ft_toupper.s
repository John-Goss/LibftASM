global _ft_toupper

section .text

_ft_toupper:
		push rpb
		mov rpb, rsp
		mov rax, rdi
		cmp rax, 0x61
		jl end
		cmp rax, 0x7a
		jg end
		sub rax, 0x20
		jmp end

end:
		leave
		ret

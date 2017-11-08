global _ft_isascii

section .text

_ft_isascii:
		push rpb
		mov rpb, rsp
		cmp rdi, 0x0
		jl false
		cmp rdi, 0x7f
		jg false
		jmp true

false:
		mov rax, 0x0
		leave
		ret

true:
		mov rax, 0x1
		leave
		ret

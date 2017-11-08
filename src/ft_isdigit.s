global _ft_isdigit

section .text
		_ft_isdigit

_ft_isdigit:
		push rpb
		mov rpb, rsp
		cmp rdi, 0x0
		jl false
		cmp rdi, 0x9
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

global _ft_isalpha

section .text
		_ft_isalpha
		extern _ft_islower
		extern _ft_isupper

_ft_isalpha:
		push rpb
		mov rpb, rsp
		call _ft_islower
		cmp rax, 0x1
		je true
		call _ft_isupper
		cmp rax, 0x1
		je true
		jmp false

false:
		mov rax, 0x0
		leave
		ret

true:
		mov rax, 0x1
		leave
		ret

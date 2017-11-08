global _ft_isalnum

section .text
		extern _ft_isalpha
		extern _ft_isdigit

_ft_isalnum:
		push rbp
		mov rbp, rsp
		call _ft_isalpha
		cmp rax, 0x1
		je true
		call _ft_isdigit
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

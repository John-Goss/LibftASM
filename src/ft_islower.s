global _ft_islower

section .text

_ft_islower:
		push rbp
		mov rbp, rsp
		cmp rdi, 0x61
		jl false
		cmp rdi, 0x7a
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

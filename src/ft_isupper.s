global _ft_isupper

section .text

_ft_isupper:
		push rbp
		mov rbp, rsp
		cmp rdi, 0x41
		jl false
		cmp rdi, 0x5a
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

global _ft_memcpy

section .text

_ft_memcpy:
		push rbp
		mov rbp, rsp
		cmp rdi, 0x0
		je end
		cmp rsi, 0x0
		je end
		cld ; Clear RFLAGS
		mov rcx, rdx ; Set the len for cpy
		rep movsb ; Move rsi to rdi while rcx

end:
		mov rax, rdi
		leave
		ret

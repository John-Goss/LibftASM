global _ft_bzero

section .text

_ft_bzero:
		push rbp
		mov rbp, rsp
		cmp rsi, 0x0
		je end
		mov [rdi], byte 0x0
		inc rdi
		dec rsi
		jmp _ft_bzero

end:
		leave
		ret

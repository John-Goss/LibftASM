global _ft_bzero

section .text

_ft_bzero:
		push rbp
		mov rbp, rsp
		cmp rdi, 0x0
		je end

loop:
		cmp rsi, 0x0
		je end
		mov byte[rdi], 0x0
		inc rdi
		dec rsi
		jmp loop

end:
		leave
		ret

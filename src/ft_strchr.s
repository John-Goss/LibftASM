global _ft_strchr

section .text
		extern _ft_strlen

_ft_strchr:
		push rbp
		mov rbp, rsp
		cmp rdi, 0x0
		je not_found
		cmp, rsi, 0x0
		je not_found

		call _ft_strlen
		cld
		mov rcx, rax
		mov al, rsi
		repne scasb
		test rcx, rcx
		jz not_found
		dec rcx
		mov rax, [rdi + rcx]
		leave
		ret

not_found:
		mov rax, 0x0
		leave
		ret

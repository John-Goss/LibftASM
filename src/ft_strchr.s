global _ft_strchr

section .text
		extern _ft_strlen

_ft_strchr:
		push rbp
		mov rbp, rsp
		test rdi, rdi
		jz not_found
		test rsi, rsi
		jz not_found
		push rdi ; Save String addr in stack
		push rsi ; Save Char to find in stack

		call _ft_strlen
		pop rsi
		pop rdi
		push rax ; Save String Len in stack
		cld ; Clear the RFLAGS
		mov rax, rsi
		mov rcx, -1
		repne scasb

		not rcx ; Set rcx to absolute value
		dec rcx
		pop rax ; String Len

		cmp rcx, rax
		jge not_found

		dec rdi
		mov rax, rdi
		leave
		ret

not_found:
		mov rax, 0x0
		leave
		ret

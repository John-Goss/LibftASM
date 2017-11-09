global _ft_strlen

section .text

_ft_strlen:
		push rbp
		mov rbp, rsp
		cmp rdi, 0x0
		je null
		cld ; clear the RFLAGS
		mov al, 0x0 ; register where find the same value as inside
		mov rcx, -1 ; register of count
		repne scasb ; REPNE (repeat while not equal) searching a particular character
		not rcx
		dec rcx
		mov rax, rcx
		leave
		ret

null:
		mov rax, 0x0
		leave
		ret

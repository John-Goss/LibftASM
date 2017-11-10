global _ft_memset

section .text

_ft_memset:
		push rbp
		mov rbp, rsp
		cmp rdi, 0x0 ; If ptr = NULL
		je end
		mov r9, rdi ; Save beggin of ptr
		mov rcx, rdx ; Len to copy
		mov al, sil  ; Value to copy: sil -> 8bits (unsigned char) of rsi
		cld ; Clear RFLAGS
		rep stosb ; Repeat while len not 0 and store byte string
		mov rdi, r9

end:
		mov rax, rdi
		leave
		ret

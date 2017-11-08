global _ft_puts

section .text

_ft_puts:
		push rbp
		mov rbp, rsp
		mov rsi, rdi
		mov rdi, 0x1 ; STDOUT
		mov rdx, 0x0 ; String lenght

count:
		cmp [rsi], byte 0x0
		je writeString
		inc rdx
		inc rsi
		jmp count

writeString:
		cmp rdx, 0x0
		je false
		sub [rsi], rdx
		mov rax, 0x2000004 ; WRITE is Syscall
		syscall
		jmp end

false:
		mov rax, -1
		leave
		ret

end:
		mov rax, 0x2000004
		mov rdx, 0x1
		mov rsi, 0xa ; print \n
		mov rdi, 0x1
		syscall
		mov rax, 0x1
		leave
		ret

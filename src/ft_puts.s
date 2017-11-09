global _ft_puts

section .data
string:
		.newLine db 0xa
		.nullstring db "(null)"
		.nullLen equ $ - string.nullstring

section .text

_ft_puts:
		push rbp
		mov rbp, rsp
		cmp rdi, 0x0
		je null
		mov rsi, rdi
		mov rax, 0x2000004 ; Syscall WRITE
		mov rdi, 0x1 ; STDOUT
		mov rdx, 0x0 ; String lenght

count:
		cmp [rsi + rdx], byte 0x0
		je writeString
		inc rdx
		jmp count

writeString:
		cmp rdx, 0x0
		je end
		syscall
		jmp end

null:
		mov rax, 0x2000004 ; Syscall WRITE
		mov rdi, 0x1 ; STDOUT
		lea rsi, [rel string.nullstring]
		mov rdx, string.nullLen ; size of "(null)"
		syscall

end:
		mov rax, 0x2000004
		mov rdi, 0x1
		lea rsi, [rel string.newLine]
		mov rdx, 0x1
		syscall
		mov rax, 0xa
		leave
		ret

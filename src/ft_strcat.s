global _ft_strcat

section .text

_ft_strcat:
		push rbp
		mov rbp, rsp

s1:
		cmp [rdi], byte 0x0
		je s2
		inc rdi
		jmp s1

s2:
		cmp [rsi], byte 0x0
		je end
		mov cl, [rsi] ; tmp 8bits register
		mov [rdi], cl
		inc rsi
		inc rdi
		jmp s2

end:
		mov [rdi], byte 0x0
		mov rax, rdi
		leave
		ret

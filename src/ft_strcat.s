global _ft_strcat

section .text

_ft_strcat:
		push rbp
		mov rbp, rsp
		cmp rdi, 0x0
		je false
		cmp rsi, 0x0
		je false
		mov rcx, 0x0

s1:
		cmp byte [rdi + rcx], 0x0
		je init
		inc rcx
		jmp s1

init:
		mov r9, 0x0

s2:
		cmp byte [rsi + r9], 0x0
		je end
		mov al, byte [rsi + r9] ; tmp 8bits register
		mov [rdi + rcx], al
		inc r9
		inc rcx
		jmp s2

false:
		mov rax, rdi
		leave
		ret

end:
		mov byte [rdi + rcx], 0x0
		mov rax, rdi
		leave
		ret

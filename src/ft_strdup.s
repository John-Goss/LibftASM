global _ft_strdup

section .text
		extern _ft_strlen
		extern _malloc

_ft_strdup:
		push rbp
		mov rbp, rsp
		mov rax, rdi
		cmp rax, 0x0
		je end

strlen:
		push rdi ; Save the string ptr in stack
		call _ft_strlen
		pop rdi ; Retrieve the ptr from stack

malloc:
		inc rax ; Add 1 for the final '\0'
		mov r9, rdi ; Save string ptr in r9
		mov rdi, rax ; Put the len for malloc
		push r9 ; Save string in stack before call malloc
		push rdi ; Save len in stack
		;sub rsp, 0x10 ; Align stack for malloc (void ptr (2 bytes))
		call _malloc
		;add rsp, 0x10 ; Restore stack
		cmp rax, 0x0 ; Check if malloc return is not NULL
		je end

duplicate:
		pop rcx ; Len from stack
		pop rsi ; String from stack
		mov rdi, rax; Put the allocated return of malloc in rdi
		cld ; Clear RFLAGS
		rep movsb ; Do the move

end:
		leave
		ret

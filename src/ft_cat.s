global _ft_cat

%define SYSCALL(n) 0x2000000 | n
%define BUFF_SIZE 255

section .bss
		buffer resb BUFF_SIZE

section .text
		extern _ft_strlen

_ft_cat:
		push rbp
		mov rbp, rsp

read:
		push rdi ; Push FD in stack
		mov rax, SYSCALL(3) ; Read Syscall
		mov rsi, buffer
		mov rdx, BUFF_SIZE
		syscall
		jc fail ; Out if err on read (Carry Flag == 1)

		cmp rax, 0
		je end ; Exit if EOF

		mov rdi, 1 ; Set STDOUT FD
		mov rdx, rax ; Size to Write
		mov rax, SYSCALL(4) ; Write Syscall
		syscall
		jc fail ; Out if err on write (Carry Flag == 1)

		pop rdi ; Restore FD in rdi
		jmp read

fail:
		pop rdi
		mov rax, 1

end:
		leave
		ret

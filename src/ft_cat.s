global _ft_cat

%define SYSCALL(n) 0x2000000 | n
%define BUFF_SIZE 255

section .data
		buffer: times BUFF_SIZE db 0x0

section .text

_ft_cat:
		push rbp
		mov rbp, rsp

read:
		push rdi ; Push FD in stack
		mov rax, SYSCALL(3) ; Read Syscall
		lea rsi, [rel buffer]
		mov rdx, BUFF_SIZE
		syscall
		jc fail ; Out if err on read (Carry Flag == 1)

		cmp rax, 0x0
		je end ; Exit if EOF

		mov rdi, 0x1 ; Set STDOUT FD
		mov rdx, rax ; Size to Write
		mov rax, SYSCALL(4) ; Write Syscall
		syscall
		jc fail ; Out if err on write (Carry Flag == 1)

		pop rdi ; Restore FD in rdi
		jmp read

fail:
		pop rdi
		mov rax, 0x1

end:
		leave
		ret

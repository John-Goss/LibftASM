section .data
print:
		.intFormat db "%d", 0
		.string db "%s", 0
		.newLine db 10, 0
		.ligne db "Hello World!", 10

section .text
		global start
		global _main
		extern _printf

start:
	call _main
	ret

_main:
		push rbp
		mov rbp, rsp
		lea rdi, [rel print.ligne]
		call _printf
		leave
		ret

%include "../../stud_io.inc" ;  http://www.stolyarov.info/books/extra/stud_io_inc
global _start

section .text
_start: 	mov		eax, 0
again: 		PRINT	"Hello!"
			PUTCHAR 10
			inc		eax
			cmp		eax, 5
			jl		again
			FINISH

; Source: "Программирование: введение в профессию. Издание второе, в трёх томах." http://stolyarov.info/books/programming_intro/e2
; nasm -f elf hello5.asm - вызываем NASM
; ld -m elf_i386 hello5.o -o hello5 - запускаем компановщик командой ld
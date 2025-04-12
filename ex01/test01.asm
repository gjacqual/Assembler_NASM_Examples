global  _start

section  .data
msg     db "Hello world!!!", 10
msg_len equ $-msg

section .text
_start: mov     eax, 4          ; вызов write
        mov     ebx, 1          ; стантартный вывод
        mov     ecx, msg
        mov     edx, msg_len
        int     80h

        mov     eax, 1          ; вызов _exit
        mov     ebx, 0          ; код "успех"
        int     80h

; nasm -f elf64 test01.asm -o test01.o
; ld -o test01 test01.o
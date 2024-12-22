global _start           ; делаем метку метку _start видимой извне
 
section .text           ; объявление секции кода
_start:                 ; объявление метки _start - точки входа в программу
    mov rax, 60         ; 60 - номер системного вызова exit 
    mov rdi, 22         ; произвольный код возврата - 22 
    syscall             ; выполняем системный вызов exit

; Source: https://metanit.com/assembler/nasm/1.4.php
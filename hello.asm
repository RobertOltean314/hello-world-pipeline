; Define variables in the data section
section .data
    hello:     db 'Hello world!', 0x0A  ; null-terminated string
    helloLen:  equ $ - hello          ; length of the string

; Code goes in the text section
section .text
    global _start 

_start:
    ; 'write' system call
    mov eax, 1              ; syscall number for sys_write (syscall 1)
    mov edi, 1              ; file descriptor (1 = STDOUT)
    mov rsi, hello          ; string to write
    mov rdx, helloLen       ; length of string to write
    syscall                ; invoke syscall

    ; 'exit' system call
    mov eax, 60             ; syscall number for sys_exit (syscall 60)
    xor edi, edi            ; exit code 0
    syscall                ; invoke syscall

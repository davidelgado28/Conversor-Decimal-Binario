section .data
    msg_in   db "Digite um numero decimal: ", 0
    msg_out  db "Binario: ", 0
    buffer   times 64 db 0

section .bss
    entrada  resb 16

section .text
    global _start

_start:
    ; imprime mensagem de entrada
    mov rax, 1
    mov rdi, 1
    mov rsi msg_in
    mov rdx, 26    syscall

    ; lê entrada
    mov rax, 0
    mov rdi, 0    mov rsi, entrada
    mov rdx, 16
    syscall

    ; converte string para int (atoi simples)
    mov rsi, entrada
    xor rax, rax
atoi:
    movzx rbx, byte [rsi]
    cmp rbx, 48
    jl atoi_done
    cmp rbx, 57
    jg atoi_done
    imul rax, 10
    sub rbx, 48
    add rax, rbx
    inc rsi
    jmp atoi
atoi_done:
    mov rdi, buffer
    add rdi,63
    mov byte [rdi], 10  ; newline
    mov rcx, 0

    cmp rax, 0
    jne convert
    dec rdi
    mov byte [rdi], '0'
    jmp print

convert:
    xor rdx, rdx
    mov rbx, 2
    div rbx
    add dl, '0'
    dec rdi
    mov [rdi], dl
    inc rcx
    test rax, rax
    jnz convert

print:
    ; imprime "Binario: "
    mov rax, 1
    mov rdi, 1
 mov rsi, msg_out
    mov rdx, 9
    syscall

    ; imprime binário
    movax, 1
    mov rdi, 1
    mov rdx, rcx
    inc rdx
    mov rsi, rdi
    syscall    ; exit
    mov rax, 60
    xor rdi, rdi
    syscall

default rel
global main
extern printf

section .data
    message db "Hello, World!", 10, 0

section .text
main:
    sub rsp, 40             ; reserve shadow space and align the stack
    lea rcx, [message]      ; first argument to printf on Windows x64
    xor eax, eax            ; no vector arguments are used
    call printf
    add rsp, 40

    xor eax, eax            ; return 0 to the C runtime
    ret
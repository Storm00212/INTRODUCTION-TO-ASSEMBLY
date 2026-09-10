global main
extern exit

section .text
main:
    ; Subroutines must align the stack pointer (RSP) on Windows x64
    sub rsp, 40          

    mov rax, 2          ; Put 2 into RAX
    mov rcx, 3          ; Put 3 into RCX
    add rax, rcx        ; Add RCX to RAX (RAX now equals 5)

    ; Clean up the stack and exit
    mov ecx, eax        ; Move our result (5) into ECX to act as the exit code
    add rsp, 40         
    call exit           

global main
extern exit

section .text
main:
    ; 1. Setup Stack Alignment (Shadow Space)
    ; Windows x64 ABI requires 32 bytes of shadow space plus 8 bytes 
    ; to fix the alignment because the 'call' instruction pushed an 8-byte return address.
    sub rsp, 40          

    ; 2. Your Register Math
    mov rax, 2          ; Put 2 into RAX
    mov rcx, 3          ; Put 3 into RCX
    add rax, rcx        ; Add RCX to RAX (RAX now equals 5)

    ; 3. Clean up and Exit safely
    mov ecx, eax        ; Move the lower 32-bits of RAX (our 5) into ECX for the exit status
    add rsp, 40         ; Clean up the 40 bytes we allocated
    call exit           ; Safe exit back to Windows

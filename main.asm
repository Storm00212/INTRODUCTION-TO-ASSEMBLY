global main

section .text
main:
    ; Perform your register math
    mov eax, 2          ; Put 2 into EAX
    mov ecx, 3          ; Put 3 into ECX
    add eax, ecx        ; Add ECX to EAX (EAX now equals 5)

    ; In the C calling convention, the return value of a function 
    ; MUST be placed in the EAX/RAX register right before returning.
    ; Since EAX is already 5, Windows will receive 5 as the exit code.

    ret                 ; Return directly back to GCC's starter code

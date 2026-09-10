.intel_syntax noprefix
.global _start
.text 
_start

mov rax, 5   ; moves 5 to the register.
mov rbx, rax ;moves the value of rax to rbx.
mov rax,  0x4ffffffffff7  ; can also move hexadecimal values.
mov rax, [0000500000000088] ; stores the data located in that address.
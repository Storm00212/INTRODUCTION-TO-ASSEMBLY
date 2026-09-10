global main

section .text
main:


mov rax, 5
mov rbx, 10

add rax, rbx ;adds rbx to the value of rax.
sub rax, rbx ;subtracts rbx from the value of rax.

inc rax
inc rax

inc rax ; increments rax 3 times.

dec rax
dec rax
dec rax ; decrements rax 3 times.

ret

.section .text
.globl _start
_start:
  movq $0b1010, %rdi
  movq $60, %rax
  syscall

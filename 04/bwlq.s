.section .text
.globl _start
_start:
  movb $3, %al
  incw %ax
  movl $2, %ebx
  divq %rbx

  movq %rax, %rdi

  movq $60, %rax
  syscall

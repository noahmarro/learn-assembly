.globl _start

# return 1 if a numer is even, 0 otherwise

.section .text
_start:
  # chose a number
  movq $66, %rcx

  # 0 edge case
  movq $1, %rdi
  cmpq $0, %rcx
  je complete

odd:
  movq $0, %rdi
  loopq even
  jmp complete

even:
  movq $1, %rdi
  loopq odd

complete:
  movq $60, %rax
  syscall

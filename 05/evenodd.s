.globl _start

# return 1 if a numer is even, 0 otherwise

.section .text
_start:
  # chose a number
  movq $33, %rax

  # divide it by 2
  movq $2, %rdi
  divq %rdi
  
  # the numer is even if the remainder stored in %rdx is 0
  # even
  movq $1, %rdi
  cmpq $0, %rdx
  je complete
  # odd
  movq $0, %rdi

complete:
  movq $60, %rax
  syscall

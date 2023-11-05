.globl _start

# multiply 2 numers by adding

.section .text
_start:
  movq $2, %rbx
  movq $3, %rcx

  # skip the loop if there is a 0
  cmpq $0, %rbx
  je complete
  cmpq $0, %rcx
  je complete

mainloop:
  addq %rbx, %rax
  loopq mainloop

complete:
  movq %rax, %rdi
  movq $60, %rax
  syscall

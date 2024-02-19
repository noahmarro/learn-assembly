.globl _start
.section .text
_start:
  # Initialize Registers
  leaq people, %rbx
  movq numpeople, %rcx
  movq $0, %rdi
  # Check Preconditions
  cmpq $0, %rcx
  je finish
mainloop:
  # Grab the height field and store it in %rax
  movq HEIGHT_OFFSET(%rbx), %rax
  # If smaller, go to the next one
  cmpq %rdi, %rax
  jbe endloop
  # Else store it
  movq %rax, %rdi
endloop:
  addq $PERSON_RECORD_SIZE, %rbx
  loopq mainloop
finish:
  movq $60, %rax
  syscall

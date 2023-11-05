.globl _start
.section .text
_start:
  # Perform various arithemtic functions
  movb $3, %dl
  movb %dl, %al
  addb %dl, %al
  mulq %rdx
  movb $2, %dh
  addb %dh, %al
  movw $4, %dx
  mulq %rdx

  # Store the final result in %rdi
  # (the register where the exit code has to be stored)
  movq %rax, %rdi

  # Set the exit system call number
  movq $60, %rax

  # Perform the system call
  syscall

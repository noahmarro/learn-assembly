.globl _start

.section .text
_start:
  # number of loops
  movq $500000000, %rcx

mainloop:
  loopq mainloop

exit:
  movq $60, %rax
  syscall

# The CPU executed approximately
# 1'500'000'003 instructions in 1 second.
# (one loop = 3 instructions: decq, cmpq, and jmp)

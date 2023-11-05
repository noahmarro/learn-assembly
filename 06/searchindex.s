.globl _start

.section .data
# How many data elements we have
n:
  .quad 7
# The data elements themselves
numbers:
  .quad 5, 20, 33, 80, 52, 10, 1
# The value to search for
query:
  .quad 52

### Search "numbers" for "query"
.section .text
_start:
  ## Initialize Registers
  # Put the number of elements of the array in %rcx
  movq n, %rcx

  ## Check Preconditions
  # If there are no numbers, stop
  cmp $0, %rcx
  je endloop

  ## Main Loop
myloop:
  # Get the next value 
  movq numbers-8(,%rcx,8), %rax
  # If it is not the value, go to the end of the loop
  cmp query, %rax
  jne loopcontrol
  # Otherwise, we found the value! Give back its index (one-based)
  movq %rcx, %rdi

loopcontrol:
  # Decrement %rcx and keep going until %rcx is zero
  loopq myloop

  ## Cleanup and Exit
endloop:
  movq $60, %rax
  syscall

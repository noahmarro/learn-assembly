.section .data

# Array of people
.globl numpeople, people
numpeople:
  # Calculate the number of elements in the array
  .quad (endpeople - people)/PERSON_RECORD_SIZE
people:
  .quad 200, 10, 2, 74, 20
  .quad 135, 8, 4, 65, 21 # Me!
  .quad 150, 8, 1, 68, 30
  .quad 250, 14, 3, 75, 24
  .quad 250, 10, 2, 70, 11
  .quad 180, 11, 5, 69, 65
endpeople:

# Describe the components of the struct
.globl WEIGHT_OFFSET, SHOE_OFFSET, HAIR_OFFSET, HEIGHT_OFFSET, AGE_OFFSET
.equ WEIGHT_OFFSET, 0
.equ SHOE_OFFSET, 8
.equ HAIR_OFFSET, 16
.equ HEIGHT_OFFSET, 24
.equ AGE_OFFSET, 32

# Total size of the struct
.globl PERSON_RECORD_SIZE 
.equ PERSON_RECORD_SIZE, 40

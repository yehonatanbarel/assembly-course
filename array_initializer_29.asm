.data
	# '.space' tell the computer to allocate memory with size of byte 
	# given the number after (in this example - with 12 byte).
	# need to remember how many byte of memory each data type need
	# in this example we could store 3 int, because: 1 int = 4 byte
	myArray: .word 100:3
	newLine: .asciiz "\n"
 
.text

	main:
	
	# Index -> $t0
	# here we declare the register $t0 to be our index
	# and set it to first be index zero
	addi $t0,$zero,0
	
	while:
		beq $t0,12,exit
		
		lw $t6,myArray($t0)
		
		addi $t0,$t0,4
		
		# Print current number
		li $v0,1
		move $a0,$t6 # $t0 -> $a0
		syscall
		
		# Print new line
		li $v0,4
		la $a0,newLine
		syscall
		
		j while
		
		
		
	exit:
	# End program
	li $v0,10
	syscall

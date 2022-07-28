.data
	# '.space' tell the computer to allocate memory with size of byte 
	# given the number after (in this example - with 12 byte).
	# need to remember how many byte of memory each data type need
	# in this example we could store 3 int, because: 1 int = 4 byte
	myArray: .space 12
 
.text
	addi  $s0,$zero,4
	addi  $s1,$zero,8
	addi  $s2,$zero,12
	
	# Index -> $t0
	 # here we declare the register $t0 to be our index
	 # and set it to first be index zero
	addi $t0,$zero,0
	
	sw $s0,myArray($t0) #save the $s0 value on the RAM at myArray index 0 
		addi $t0,$zero,4 # incearse the index by 4
	sw $s1,myArray($t0) # $s1 -> myArray[4] 
		addi $t0,$zero,4 # incearse the index by 4
	sw $s2,myArray($t0) # $s2 -> myArray[8] 
	
	
	lw $t6,,myArray($zero) # load word from the RAM to register t6
	
	# Print value myArray[0]
	li $v0,1
	addi $a0,$t6,0
	syscall
	
	
		

.data
	message: .asciiz "The number are equal"
	message_2: .asciiz "Nothing happen"
	
.text
	main:
		addi $t0, $zero ,20
		addi $t1, $zero ,20	
	
		beq $t0, $t1, numbersEqual 
		
		
		# End program
		li $v0, 10
		syscall
		
		
	numbersEqual:
		li $v0, 4
		la $a0, message
		syscall
		
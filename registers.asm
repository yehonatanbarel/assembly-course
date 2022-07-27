.data
	newLine: .asciiz "\n"
	
.text
	main:
		addi $s0, $zero, 10
		
		jal increaseMyRegister
		
		# Print a new line
		li $v0,4
		la $a0,newLine
		syscall
		
	
		# Print new value in function with nested procedure (function)
		jal printTheValue 
	
		# This line is going to end the program
		li, $v0,10
		syscall
	
	increaseMyRegister:
		addi $sp, $sp, -4
		sw $s0, 0($sp)
		
		addi $s0, $s0, 30
		
		
		# nested procedure (fucntion)
		jal printTheValue 
		
		lw $s0, 0($sp)
		addi $sp, $sp,4
		
		jr $ra
		
		
	printTheValue:
		li $v0,1
		move $a0,$s0
		syscall
		
		jr $ra
		
	
	
	

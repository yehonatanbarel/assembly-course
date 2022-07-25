.data
	msg: .asciiz "hello world"

.text
	main:
	
	
	
	displayMsg:
		li $v0,4
		la $a0, msg
		syscall
		
		# this is very important to put at the end of every procedure (fucntion).
		# this tell the program to go back to the place where the procedure (fucntion) was called
		jr $ra
		
			

.data
	msg: .asciiz "Enter a number"
.text
.global main
	main:
	
	# Print num 5
	li $v0,1
	li $a0,5
	syscall
	
	# Get num from user
	li $v0,5 
	syscall
	
	# Notice that this line is after get user input
	# get user input will put the value in register $v0 and then when we want to print 
	# that value we will need to move it to register $a0
	move $a0,$v0
	
	
	# Print num 5
	li $v0,1
	syscall
	
	
	# End program
	li $v0,10
	syscall
		

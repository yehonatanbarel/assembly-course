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
	move $a0,$v0
	
	
	# Print num 5
	li $v0,1
	syscall
	
	
	# End program
	li $v0,10
	syscall
		
.data
	prompt: .asciiz "Enter your age: "
	message: .asciiz "\nYour age is " 
.text
	# Promp the user to enter age.
	li $v0,4
	la $a0,prompt
	syscall
	
	# Get user age
	li $v0,5 #this is syscall that we can get user age.this is how to get an int from keyboard
	syscall
	
	# Store the result in $t0
	move $t0,$v0 # we move it from $v0 -> $t0 so we could modifie it later
	
	# Display
	li $v0,4
	la $a0,message
	syscall
	
	# Print or show the age
	li $v0,1
	move $a0,$t0 	# $t0 -> $a0
	syscall
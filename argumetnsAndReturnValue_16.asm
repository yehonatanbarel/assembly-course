.data

.text
	main:
		addi $a1, $zero, 50
		addi $a2, $zero, 100
		
		jal addNumbers
	
		# this is just another line of code to show that it 
		# would run after the our procedure (fucntion) 'addNumbers'
		li $v0, 1
		addi $a0,$v1,0
		syscall
	
	
	# Tell the system that the rpogram is done.
	li $v0,,10
	syscall
	
	addNumbers:
		add $v1, $a1,$a2
		jr $ra
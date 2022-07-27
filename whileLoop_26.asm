.data
	message: .asciiz"After while loop is done"
	space: .asciiz ", "
.text
	# this program is for this lines of code:
	# int i = 0;
	# while ( i <= 10 ){
	#	i++;
	# }
	
	main:
		# i = 0
		addi $t0, $zero,0
		
		while:
			bgt $t0, 10, exit # when $t0 = 10 we will exit the while loop
			jal printNumber
			addi $t0, $t0, 1 # i++ -> $t0 = $t0 + 1
			
			j while
		
		exit:
			li $v0,4 
			la $a0, message
			syscall
			
		# End program
		li $v0,10
		syscall
			
	printNumber:
		li $v0, 1
		add $a0,$t0, $zero
		syscall
		
		
		
		li $v0,4
		la $a0, space
		syscall
		
		jr $ra
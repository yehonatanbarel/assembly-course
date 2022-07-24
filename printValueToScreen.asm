.data
	myMessege: .asciiz "Helo world!\n"
	
.text
	# this tell the computer that he need to get ready to print
	# somthing to the screen
	# code 4 - is for print a string msg
	# code 1 - is for print an int
	li $v0,4 
	la $a0,myMessege
	# this just tell the computer: 'do it'
	syscall 
	
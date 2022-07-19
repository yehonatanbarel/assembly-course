#solution to Q4
#Author: 
#Date:
#Version:
#This program..

.data     #this will hold all the var we will use in our prog
msg: .asciiz"\nPlease enter a number in the range -9999..9999\n"  #.asciiz
error_msg: .asciiz"\nThe number is illegal. ENTER AGAIN\n"

.text   #this tell the assembler that here the prog is beggin
.global main    #    this and above are directive
main:    #this is label
	li $v0,4    #in this way we print a string to the screen
	la $a0,msg
	syscall  # print welcome msg
get_input:	
	li $v0,5
	syscall  #read int from keyboard
	slti $t0,$v0,-9999
	slti $t1,$v0,10000
	not $t0,$t0
	and $t2,$t1,$t0
	bne $t2,$zero,continue # if number in range = continue
	li $v0,4		# else try again
	la $a0,error_msg
	syscall
	j get_input
	
continue:

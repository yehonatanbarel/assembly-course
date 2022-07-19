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
	move $s0,$v0
	li $v0,1
	li $t0,0x8000 # i dont understand, minute 34
print_16_bit:
	and $a0,$s0,$t0			# mask
	beq $a0,$zero,print_digit
	li $a0,1
print_digit:
	syscall
	srl $t0,$t0,1
	bne $t0,$zero,print_16_bit # if mask is not zero - go back to loop
	
	li $v0,11
	li $a0,'\n'
	syscall
	
	#================ THIS SECTION IS SEIF B =============
	li $v0,1
	li $t0,0x1
print_digit_reverse:
	and $a0,$s0,$t0
	beq $a0,$zero,print_digit_reverse
	li $a0,1
print_digit_reverse:
	syscall
	sll $t0,$t0,1
	bne $t0,0x10000,print_digit_reverse
	
	li $v0,11
	li $a0,'\n'
	syscall
	#================ THIS SECTION IS SEIF B =============
	
	
	
	li $v0,10  # exit program gracfully
	syscall
	
	# =============== ALL THE ABOVE IS JUST FOR Q4 SEIF A=========
	# =============== SEMETER 2018 A MAMAN 12 Q 4 =================
	
		
	
	
	
	
	
	
	
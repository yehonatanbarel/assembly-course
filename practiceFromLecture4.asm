#solution to Q4
#Author: 
#Date:
#Version:
#This program..

.data     #this will hold all the var we will use in our prog
msg: .asciiz"\nPlease enter a number in the range -9999..9999\n"  #.asciiz


.text   #this tell the assembler that here the prog is beggin
.global main    #    this and above are directive
main:    #this is label
li $v0,4    #in this way we print a string to the screen
la $a0,msg
syscall
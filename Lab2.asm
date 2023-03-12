# Title:	Filename:
# Author:	Date:
# Description:
# Input:
# Output:
################# Data segment #####################
.data

message : .asciiz "\nPlease enter a char between a - z  \n"
error : .asciiz "\nError ! please enter char  : \n"
result : .asciiz "The result  : \n"
  
################# Code segment #####################
.text
.globl main
main:	# main program entry

#load max and min to registers 
li $s0 , 'a'
li $s1, 'z'

#print message 
la $a0 , message  #load the mesage for the print 
li $v0 , 4 	       #ready for print the message 
syscall 	  #print the message 

#getting user's input  and check if  the input currect
Check :
li    $v0,12
syscall

#make/check  the condition
bgt $v0, 'z', Again
blt $v0, 'a', Again



move $a1,$v0	# save input letter in $a1

#print new line 
la $a0 , '\n'
li $v0 , 11
syscall

#print message 
la $a0 , result
li $v0 , 4 
syscall

move $a0,$a1	# save input letter in $a0

#print char , and check condition 
Print :
li $v0,11 
syscall
beq $a0, 'z', Exit
addi $a0,$a0,1
j Print


# Exit the program
Exit:
li $v0, 10 
syscall

#enable to recieve input again
Again :
#print message 
la $a0 , error
li $v0 , 4 
syscall

j Check
li $v0,0

#la $a0 , result  #load the mesage for the print 
#li $v0 ,  	       #ready for print the message 
#syscall 	  #print the message 

#la $a0 , char
#li $v0,4 # print string
#syscall

#la $a0 , '\n'
#li $v0 ,$a0
#syscall

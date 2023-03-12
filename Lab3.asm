# Title:	Filename:
# Author:	Date:
# Description:
# Input:
# Output:
################# Data segment #####################
.data

char : .byte '*'
space: .byte ' '
message : .asciiz "\nEnter a number please\n"     
result : .asciiz "\nThe result  is : \n"
                    
                     
################# Code segment #####################
.text
.globl main
main:	# main program entry

######## print message and recieve input #########
la $a0 , message  
li $v0 , 4 
syscall 

#waiting to receive input
li $v0 , 5 
syscall 

#define n = $t0 
move  $t0 , $v0 #move the number in $v0 to $t1

#define  i = $t1(1) 
li $t1 , 1 

#contain how much space to print
li $t3 ,0

#contain how much space to print
li $t4 ,0

######## enter Loop #########
Loop : 
#first condition 
sub $t3, $t0, $t1 #$t3 = n - i
mul $t4, $t1, 2 # $t4 = 2*i
subi $t4, $t4, 1 # $t4 = (2*i)-1
 
#print new line 
la $a0 , '\n'
li $v0 , 11
syscall

#print space
PrintSpace :
lbu $a0, space
li $v0,11 
syscall

beq $t3, $zero, PrintChar # go print char
subi $t3, $t3, 1 # (n-1) -1 
bne $t3, $zero, PrintSpace # go print space

#print char ( * )
PrintChar :
lbu $a0, char
li $v0,11 
syscall
subi $t4, $t4, 1 # (2*i-1) -1 
bne $t4, $zero, PrintChar # go print space


# i = i + 1
addi $t1, $t1, 1
#statement  while( i <= n )
ble $t1 , $t0 , Loop

#Exit from program
Exit:
li $v0, 10	# Exit program
syscall
	

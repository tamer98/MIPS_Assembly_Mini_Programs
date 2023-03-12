############ Data segment ############
.data

message : .asciiz "\nEnter a number please\n" 
message1 : .asciiz "\nThe result of PLUS : \n"
message2 : .asciiz "\nThe result of MINUS : \n"
message3 : .asciiz "\nThe result of AND : \n"
message4 : .asciiz "\nThe result of SLT : \n"


############ Code segment ############
.text
.globl main
main :
#########Part 1#########
la $a0 , message #load the mesage for the print 
li $v0 , 4 #ready for print the message 
syscall #print the message 

li $v0 , 5 #waiting to receive input
syscall #recieve

move  $t1 , $v0 #move the number in $v0 to $t1

la $a0 , message #load the mesage for the print 
li $v0 , 4 #ready for print the message 
syscall #print the message 

li $v0 , 5 #waiting to receive input
syscall #recieve

move  $t2 , $v0 #move the number in $v0 to $t1

add $t3 , $t2 , $t1

la $a0 , message1 #load the mesage for the print 
li $v0 , 4 #ready for print the message 
syscall #print the message 

move  $a0 , $t3 #move the number in $v0 to $t1
li $v0 , 1
syscall

#########Part 2#########
la $a0 , message #load the mesage for the print 
li $v0 , 4 #ready for print the message 
syscall #print the message 

li $v0 , 5 #waiting to receive input
syscall #recieve

move  $t1 , $v0 #move the number in $v0 to $t1

la $a0 , message #load the mesage for the print 
li $v0 , 4 #ready for print the message 
syscall #print the message 

li $v0 , 5 #waiting to receive input
syscall #recieve

move  $t2 , $v0 #move the number in $v0 to $t1

sub $t3 , $t2 , $t1

la $a0 , message2 #load the mesage for the print 
li $v0 , 4 #ready for print the message 
syscall #print the message 

move  $a0 , $t3 #move the number in $v0 to $t1
li $v0 , 1
syscall

#########Part 3#########
la $a0 , message #load the mesage for the print 
li $v0 , 4 #ready for print the message 
syscall #print the message 

li $v0 , 5 #waiting to receive input
syscall #recieve

move  $t1 , $v0 #move the number in $v0 to $t1

la $a0 , message #load the mesage for the print 
li $v0 , 4 #ready for print the message 
syscall #print the message 

li $v0 , 5 #waiting to receive input
syscall #recieve

move  $t2 , $v0 #move the number in $v0 to $t1

and $t3 , $t2 , $t1

la $a0 , message3 #load the mesage for the print 
li $v0 , 4 #ready for print the message 
syscall #print the message 

move  $a0 , $t3 #move the number in $v0 to $t1
li $v0 , 1
syscall

#########Part4#########
la $a0 , message #load the mesage for the print 
li $v0 , 4 #ready for print the message 
syscall #print the message 

li $v0 , 5 #waiting to receive input
syscall #recieve

move  $t1 , $v0 #move the number in $v0 to $t1

la $a0 , message #load the mesage for the print 
li $v0 , 4 #ready for print the message 
syscall #print the message 

li $v0 , 5 #waiting to receive input
syscall #recieve

move  $t2 , $v0 #move the number in $v0 to $t1

slt $t3 , $t1 , $t2

la $a0 , message4 #load the mesage for the print 
li $v0 , 4 #ready for print the message 
syscall #print the message 

move  $a0 , $t3 #move the number in $v0 to $t1
li $v0 , 1
syscall

li $v0 , 10
syscall







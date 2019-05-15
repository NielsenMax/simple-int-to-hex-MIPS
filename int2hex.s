.data

.text
main:
li $v0, 5
syscall
move $t0, $v0 #muevo el int leido a t0
li $t3, 28
#li $t3, 0
li $t4, 0xF             #cargo un 1111
FOR:
blt $t3, $zero END           
sll $t2, $t4, $t3       #lo desplazo al 1111 << t3 veces
and $t1, $t0, $t2       #hago un and para ver si que bits estan prendidos en la posicion t3
li $t5, 0xF             #cargo 1111
sll $t5, $t5, $t3       #desplazo 1111 t3 veces
beq $t1, $t5, F         #si los bits son igual a F imprimo F
li $t5, 0xE
sll $t5, $t5, $t3 
beq $t1, $t5, E
li $t5, 0xD
sll $t5, $t5, $t3 
beq $t1, $t5, D
li $t5, 0xC
sll $t5, $t5, $t3 
beq $t1, $t5, C
li $t5, 0xB
sll $t5, $t5, $t3 
beq $t1, $t5, B
li $t5, 0xA
sll $t5, $t5, $t3 
beq $t1, $t5, A
li $t5, 0x9
sll $t5, $t5, $t3 
beq $t1, $t5, NUEVE
li $t5, 0x8
sll $t5, $t5, $t3 
beq $t1, $t5, OCHO
li $t5, 0x7
sll $t5, $t5, $t3 
beq $t1, $t5, SIETE
li $t5, 0x6
sll $t5, $t5, $t3 
beq $t1, $t5, SEIS
li $t5, 0x5
sll $t5, $t5, $t3 
beq $t1, $t5, CINCO
li $t5, 0x4
sll $t5, $t5, $t3 
beq $t1, $t5, CUATRO
li $t5, 0x3
sll $t5, $t5, $t3 
beq $t1, $t5, TRES
li $t5, 0x2
sll $t5, $t5, $t3 
beq $t1, $t5, DOS
li $t5, 0x1
sll $t5, $t5, $t3 
beq $t1, $t5, UNO
li $t5, 0x0
sll $t5, $t5, $t3 
beq $t1, $t5, CERO

CERO:
li $v0, 11
li $a0, '0'
syscall 
j SIG

UNO:
li $v0, 11
li $a0, '1'
syscall 
j SIG

DOS:
li $v0, 11
li $a0, '2'
syscall 
j SIG

TRES:
li $v0, 11
li $a0, '3'
syscall 
j SIG

CUATRO:
li $v0, 11
li $a0, '4'
syscall 
j SIG

CINCO:
li $v0, 11
li $a0, '5'
syscall 
j SIG

SEIS:
li $v0, 11
li $a0, '6'
syscall 
j SIG

SIETE:
li $v0, 11
li $a0, '7'
syscall 
j SIG

OCHO:
li $v0, 11
li $a0, '8'
syscall 
j SIG

NUEVE:
li $v0, 11
li $a0, '9'
syscall 
j SIG

A:
li $v0, 11
li $a0, 'A'
syscall 
j SIG

B:
li $v0, 11
li $a0, 'B'
syscall 
j SIG

C:
li $v0, 11
li $a0, 'C'
syscall 
j SIG

D:
li $v0, 11
li $a0, 'D'
syscall 
j SIG

E:
li $v0, 11
li $a0, 'E'
syscall 
j SIG

F:
li $v0, 11
li $a0, 'F'
syscall 
j SIG

SIG:
addi $t3,$t3, -4

j FOR

END:
li $v0, 10
syscall 

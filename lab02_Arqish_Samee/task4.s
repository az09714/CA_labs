.text
.globl main
main:
    li x7, 0    #i=0
    li x10, 0x200  #x10=base address of array
    li x5, 3       #a=3
    li x6, 4     #b=4

loop1:
    bge x7, x5, Exit   #if i>=a then exit
    li x29, 0       #j = 0

loop2:
    bge x29, x6, nexti   #if j>=b then end the inner loop and go to next i in outerloop(loop1)
    slli t3, x29, 4     #t3=j*16
    add t5, x10, t3    #t5=array[j]
    add t6, x7, x29     #t6=i+j
    sw t6, 0(t5)       #store t6 into memory
    addi x29, x29, 1   #j++
    beq x0, x0, loop2 

nexti:
    addi x7, x7, 1    #i++
    beq x0, x0, loop1  

Exit:





.text
.globl main
main:
    li x10, 0x200       #base address 
    li x22, 0           #i=0
    li x23, 0           #sum=0

    Loop1:
        li t0, 10
        bge x22, t0, Reset  #if i>=10 then next loop
        slli t1, x22, 2     #t1=i*4
        add t2, x10, t1     #t2=a[i]
        sw x22, 0(t2)       #store into x22 the value in 0(t2)
        addi x22, x22, 1    #increment x22
        beq x0, x0, Loop1

    Reset:
        li x22, 0           #i=0 


    Loop2:
        li t0, 10
        bge x22, t0, Exit   
        slli t1, x22, 2     
        add t2, x10, t1    
        lw t3, 0(t2)        
        add x23, x23, t3    # sum = sum + a[i]
        addi x22, x22, 1    
        beq x0, x0, Loop2

Exit:

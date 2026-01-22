.text
.globl main
main:

    #address of array stored in register bcz can't access directly 
    li x10, 0x100
    li x20, 0x200
    li x30, 0x300

    #array a
    li x5, 2           
    sb x5, 0(x10)  #store at first index of array a
    li x5, 3
    sb x5, 1(x10)  #a[1]=3    
    li x5, 4
    sb x5, 2(x10) #a[2]=4    
    li x5, 5
    sb x5, 3(x10)  #a[3]=5
    #array b
    li x5, 10
    sh x5, 0(x20)  #b[0]=10
    li x5, 20
    sh x5, 2(x20) #b[1]=20
    li x5, 30
    sh x5, 4(x20)  #b[2]=30 
    li x5, 40
    sh x5, 6(x20)  #b[3]=40
    #iteration 1
    lb x13, 0(x10) #character array(1 byte)
    lh x14, 0(x20) #short array(2 bytes)-halfword
    add x15, x13,x14
    sw x15, 0(x30) # int array (4 bytes)-word
    #iteration 2
    lb x16, 1(x10)
    lh x17, 2(x20)
    add x18, x16,x17
    sw x18, 4(x30)
    #iteration 3
    lb x19, 2(x10)
    lh x20, 4(x20)
    add x21, x19,x20
    sw x21, 8(x30)
    #iteration 4
    lb x22, 3(x10)
    lh x23, 6(x20)
    add x24, x22, x23
    sw x24, 12(x30)
end:
    j end





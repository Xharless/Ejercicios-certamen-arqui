@ r0: cateto x
@ r1: cateto y

calculo:
    mov r2, r0
    mov r3, r1
    mul r2, r2, r2
    mul r3, r3, r3
    sum r4, r2, r3
    sqrt r5, r4
    mov pc, lr 
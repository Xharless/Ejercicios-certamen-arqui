@ r0: direccion de a
@ r1: direccion de b
@ r2: direccion de c
@ r3: cantidad de elementos

intercalar:
    mov r4, r3
    sub r4, r4, #1
    mul r5, r4, #2 @sacar el largo total de la lista c
    sub r5, r5, #1 

loop:
    ldr r6, [r0, r4, lsl #2] @el de a
    ldr r7, [r1, r4, lsl #2] @el de b
    str r7, [r2, r5, lsl #2] @primero va el de b
    sub r5, r5, #1
    str r6, [r2, r5, lsl #2]
    sub r5, r5, #1
    subs r4, r4, #1
    bpl loop
    mov pc, lr
    

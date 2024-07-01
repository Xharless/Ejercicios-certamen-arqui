@ r0: direccion de a
@ r1: direccion de b
@ r2: direccion de c
@ r3: cantidad de elementos

maximo:
    mov r4, r3
    sub r4, r4, #1

loop:
    ldr r5, [r0, r4, lsl #2]
    ldr r6, [r1, r4, lsl #2]
    cmp r5, r6
    strmi r6, [r2, r4, lsl #2] @si r6 es mayor
    strpl r5, [r2, r4, lsl #2] @si r5 es mayor
    subs r4, r4, #1
    bpl loop
    mov pc, lr
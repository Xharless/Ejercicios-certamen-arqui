@r1: registro de a
@r2: registro de b
@r3: registro de c
@r4: tamaño de las listas
@se asume que la cantidad de elementos en las listas sera el mismo en todos 

main:
    sub r4, r4, #1

loop:
    ldr r5, [r1, r4, lsl #2]
    ldr r6, [r2, r4, lsl #2]
    cmp r5,r6
    subpl r5, N, r5 @N-a
    submi r6, N, r6 @N-b
    strpl r5, [r3, r4, lsl #2]
    strmi r6, [r3, r4, lsl #2]
    subs r4, r4, 1
    bpl loop
@r0: direccion base
@r1: tamaño 
@r2: numero
@se asume que el numero no sera mayor a la suma total de cada elemento de la lista 
sumar:
    cmp r3, r1
    sub r3, r3, #1
    cmp r5, #0
    cmp r6, #0 @cantida de elementos que se utilizaron

loop:
    cmp r2, r5
    bmi listo
    ldr r4, [r0, r3, lsl #2]
    sum r6, r6, #1
    sum r5, r5, r4   @suma total
    sub r3, r3, #1
    b loop

listo:
    pintInt r6
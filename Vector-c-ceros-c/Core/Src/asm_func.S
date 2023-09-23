.syntax unified
.thumb
.text

@ Simbolos exportados --> No olvidar de colocar los nombres de las funciones aquí
.global asm_svc
.global asm_sum
.global asm_zeros

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@ Prototipo en "C":
@   void asm_svc (void)
@
.thumb_func
    asm_svc:
        svc 0
        bx lr


@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@ Prototipo en "C":
@   uint32_t asmSum (uint32_t firstOperand, uint32_t secondOperand)
@
@ Parametros recibidos:
@   r0: firstOperand
@   r1: secondOperand
@
@ Valor de retorno:
@   r0: resultado de la suma de firstOperand y secondOperand
@
.thumb_func
    asm_sum:
        add r0, r1  @ r0 = r0 + r1
        bx lr       @ vuelve adonde fue llamada (especificamente, si "pc"
                    @ es la direccion, en el codigo del programa, de la
                    @ instruccion "bl asm_sum" usada para saltar a
                    @ esta funcion, entonces "lr" contiene ese "pc" + 4).
                    @ el valor de retorno debe quedar en el registro r0.
                    @ En este caso, r0 es el resultado de r0 + r1.

        @ Otras alternativas para el retorno
        @ mov pc,lr
        @ bx lr
        @ push {lr} ... pop {pc}


 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@ Prototipo en "C":
@   void asm_zeros(uint32_t *vectorIn, uint32_t longitud)
@
@ Parametros recibidos:
@   r0: vectorIn
@   r1: longitud
@
@ Valor de retorno:
@   r0: vectorIn
@
 .thumb_func
    asm_zeros:
        //Guarda de seguridad: comprueba si el puntero vectorIn es nulo
        cbz r0, exit
        //Guarda de seguridad: comprueba si la longitud es cero.
        cbz r1, exit
        //Inicializa r2 en cero (r2 se utilizara para rellenar el vector)
        mov r2, 0

//Etiqueta de bucle principal.
        loop:
        //Decremento el contador de longitud r1 en uno
        	subs r1, #1
			// El destino es r0 (vectorIn), con un desplazamiento de r1 * 4 bytes
   			 // (cada elemento del vector es de 32 bits, por lo que se desplaza r1 * 4 bytes)
        	str r2, [r0,r1, LSL #2]
  	// Salta de nuevo al bucle si r1 no es igual a cero (BNE significa "Branch if Not Equal")
			bne loop
 //Etiqueta de salida
        exit:
        bx lr       @ vuelve adonde fue llamada (especificamente, si "pc"
                    @ es la direccion, en el codigo del programa, de la
                    @ instruccion "bl asm_sum" usada para saltar a
                    @ esta funcion, entonces "lr" contiene ese "pc" + 4).
                    @ el valor de retorno debe quedar en el registro r0.
                    @ En este caso, r0 es el resultado de r0 + r1.

        @ Otras alternativas para el retorno
        @ mov pc,lr
        @ bx lr
        @ push {lr} ... pop {pc}





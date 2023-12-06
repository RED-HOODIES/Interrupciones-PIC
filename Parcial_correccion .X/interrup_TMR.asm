;-------------------------------------------------------------------------------
;		CONFIGURACIÓN Y RUTINAS interrupciones por TMR
;------------------------------------------------------------------------------- 
#include "Inte_TMR.inc"
    extern EXIT_ISR
    extern COUNTER1
    extern COUNTER2
interrup_TMR code

    
config_inte_TMR0:
	global config_inte_TMR0	    ;Declara la funcion como global para ser utilizada
	
	BCF INTCON,TMR0IF ; Deshabilitar bandera 

	if 0
	    BSF T0CON,TMR0ON	    ; Habilita/Enciende TMR0 7 BIT
	    BCF T0CON,T08BIT	    ; Elige operación a 16bits 6 bit
	    BCF T0CON,T0CS	    ; Elige el conteo como ciclos de instrucción
	    BCF T0CON,T0SE	    ; Elige funcionamiento en flanco de bajada
	    ;T0CON,T0PS '00' PARA PRESCALER DE 1:2 
	endif
	movlw b'00000000'	    ; Carga el arreglo de bits al registro
	movwf T0CON
	BCF INTCON,TMR0IE ; Habilitar timmer 0 para interrumpir
    return

interrup_TMR0:
; COUNTER 1 = 200 

	global interrup_TMR0
	BCF INTCON,TMR0IF		 ; Borra bandera interrupción por TMR0	
	DECFSZ COUNTER1			 ; Decrementa contador en 1. Si el contador es 1 hace la instrucción siguiente sino la salta 
	bra EXIT			 ; Reinicia PLD para contar interrupciones 
    
INCREMENTO:
	INCF COUNTER2			 ; INCREMENTA EL CONTADOR 	  
	movlw 03h			 ; Hace registro [0000 0011] 
	ANDWF LATD			 ; Realiza AND de f0 con registro LATD
	movlw 0FCh			 ; Hace registro [1111 1100]  
	ANDWF COUNTER2,w		 ; Realiza AND entre contador y registro anterior, almacena en W 																						;	interrupcions.asm
	IORWF LATD                       ; Realiza OR con el registro W y el contenido de LATD
	movlw	.35			 ; Carga el valor de 15 en W
	movwf	COUNTER1		 ; Carga un contador a 15 para contar 1.5 segundos

EXIT:
	BCF T0CON,TMR0ON	    ; Detiene/apaga TMR0
	LOAD16B T0PLD,TMR0H, TMR0L  ; Carga el preload (PLD) de TMR0 con el cual debe contar los ciclos de instrucciones hasta overflow
	BSF T0CON,TMR0ON	    ; Habilita/Enciende TMR0
    return
	
	END



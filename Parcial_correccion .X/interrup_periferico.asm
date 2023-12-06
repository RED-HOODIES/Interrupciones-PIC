;-------------------------------------------------------------------------------
;		CONFIGURACIÓN Y RUTINAS interrupciones por periféricos
;------------------------------------------------------------------------------- 
#include "Inte_periferico.inc"
    
    extern EXIT_ISR
    extern CONTROL

interrup_periferi code

    
config_inte_boton:
	global config_inte_boton  ;Declara la funcion como global para ser utilizada
	
	BCF INTCON,INT0IF   ; Borra bandera
	BSF INTCON,INT0IE   ; Habilita ENABLE
	BCF INTCON2,RBPU    ; Pone el pull up (logica negativa)	
	BCF INTCON2,INTEDG0 ; Flanco de subida	
    return

Interrup_boton:
	global Interrup_boton	    ;Declara la funcion como global para ser utilizada
	BCF INTCON,INT0IF	    ; Borra la bandera de interrupción
	BTG INTCON,TMR0IE	    ; Deshabilitar / habilita timmer 0 para interrumpir
	
	;TSTFSZ CONTROL
	;		    ; Limpia puertos
	MOVLW b'00000000' 	    ; Habilita todos los puertos
	MOVWF TRISD		    ; Se carga en los tree state D
	movlw	.1		    ; Carga el valor de 15 en W
	movwf	CONTROL	            ; Carga un contador a 15 para contar 1.5 segundos
	BCF T0CON,TMR0ON	    ; Detiene/apaga TMR0
	LOAD16B T0PLD,TMR0H, TMR0L  ; Carga el preload (PLD) de TMR0 con el cual debe contar los ciclos de instrucciones hasta overflow
	BSF T0CON,TMR0ON	    ; Habilita/Enciende TMR0

    return
	
	
	END
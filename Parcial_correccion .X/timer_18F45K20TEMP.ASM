;******************************************************************************
;                                                                             *
;    Filename:        Parcial 18f45k20                                        *
;    Date:             28/09/2023                                             *
;    File Version:      Versión 2                                             *
;    Author:          Oscar David Poblador Parra			      *
;    Código:	      20211005116					      *
;    Company:        Universidad Distrital FJC                                *
;                                                                             *
;******************************************************************************
;                                                                             *
;    Files Required: P18F45K20.INC					      *
;		     Macros.inc						      *
;		     Delay.inc						      *
;		     Config_general.inc					      *
;		     Inte_periferico.inc				      *
;		     Inte_TMR.inc					      *
;		     Setup.inc						      *
;		     Pines_config.inc					      *
;		     Vectores_config.inc				      *
;		     Macros.inc						      *
;		     Inte_PIC.inc					      *
;		     Interrupciones.inc				              *
;		     delay.asm					              *
;		     interrup_periferico.asm				      *
;		     interrup_TMR.asm					      *
;		     setup.asm					              *
;		     timer_18f45k20TEMP.asm				      *
;                                                                             *
;******************************************************************************
;                                                                             *
; Notes:     Control de conteos e interrupciones por TMR0 para el PIC 18f4520 *
;                                                                             *
;******************************************************************************
;                                                                             *
;    Revision History:                                                        *
;                                                                             *
;******************************************************************************
    #include "Config_general.inc"
    #include "Interno_PIC.inc"
    #include "Setup.inc"
    
    extern CONTROL_DELAY		  ; Agrega una variable global 
    extern CONTROL
;------------------------------------------------------------------------------
; RESET VECTOR
;------------------------------------------------------------------------------

RES_VECT  ORG     reset_vector            ; processor reset vector
          GOTO    main             ; go to beginning of program

;------------------------------------------------------------------------------
; MAIN PROGRAM
;------------------------------------------------------------------------------
maindata udata ; Da la dirección de memoria a partir de la que se alamcenan datos
;CONTROL_DELAY res 1   ; Reseva 1 byte a la variable conreb.  
	  
	  
	  
main_ code

;*********************************************************************
main:
	global main	    ; Define nombre global si se requiere en otro código
	call Set_up         ; Llama a la etiqueta Set_up en el archivo setup.asm
	
loop:	
		DECFSZ CONTROL
		bra loop
		bra codigo
codigo:
		DECFSZ CONTROL_DELAY
		bra espera
		bra reiniciar
		bra $                      ; loop program counter
espera: 		
		call Delay100	; Llama a la etiqueta Delay100 en el archivo Delay.asm
		bra loop
reiniciar:
		BTG LED		;Cambia estado LED
		movlw .5
		movwf CONTROL_DELAY
		bra loop
          END
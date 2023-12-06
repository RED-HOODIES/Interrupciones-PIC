;-------------------------------------------------------------------------------
;		CONFIGURACIÓN E IMPLEMENTACIÓN SET UP 
;------------------------------------------------------------------------------- 
      
#INCLUDE "Config_general.inc"    ;Incluye las configuraciones generales del proyecto

     extern config_inte_boton	 ;Se define la función como externa para que sea posible su uso
     extern config_inte_TMR0	 ;Se define la función como externa para que sea posible su uso
    
Setup_ udata			 ; Da la dirección de memoria a partir de la que se alamcenan datos
CONTROL_DELAY res 1		 ; Reseva 1 byte a la variable conreb.
CONTROL res 1
COUNTER1 res 1
COUNTER2 res 1
    global CONTROL_DELAY	 ; Declara la variable global 
    global CONTROL	 ; Declara la variable global 
    global COUNTER1	 ; Declara la variable global 
    global COUNTER2	 ; Declara la variable global 
 
SETUP_ code                      ; Permite distinguir programa para el LINKER

Set_up:
	global Set_up		 ; Referencia global de uso. Permite utilizar 
	movlw	.5		 ; Carga el valor de 15 en W
	movwf	CONTROL_DELAY	 ; Carga un contador a 15 para contar 1.5 segundos
	movlw	.100		 ; Carga el valor de 15 en W
	movwf	CONTROL		 ; Carga un contador a 15 para contar 1.5 segundos
	movlw	.32		 ; Carga el valor de 15 en W
	movwf	COUNTER1	 ; Carga un contador a 15 para contar 1.5 segundos
	movlw	.0		 ; Carga el valor de 15 en W
	movwf	COUNTER2	 ; Carga un contador a 15 para contar 1.5 segundos
OSCC:				 ; Configuración Oscilador interno
    
    MOVLW b'01101100'  		 ;Oscilador interno a 8MHz
    movwf OSCCON   
    
PORTD_:				 ;Configuración Puerto D
	;CLRF contreb ;inicia en 0
	CLRF PORTD		; Limpia el registro de entrada 
	CLRF LATD		; Limpia el registro de salida
	MOVLW b'11111111' ;
	MOVWF TRISD		; Configura los tree state del puerto 
	
	CLRF  LATB              ; Limpia registro para el botón 
	MOVLW 0FF		; Carga el registro [1111 1111] en W
	MOVWF TRISB  		; Carga el resgitro W en el registro de tree State del botón 
CONFIGURACION_INTERRUP:
	
	BSF INTCON,PEIE		; Habilita interrupciones por periféricos 
	BSF INTCON,GIE		; Habilita interrupciones globales
	call config_inte_boton  ; Llama configuración interrupción por botón
	call config_inte_TMR0	; Llama configuración interrupción por TMR1
	
	
	RETURN
      END 


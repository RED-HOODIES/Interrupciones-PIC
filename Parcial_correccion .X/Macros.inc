;-------------------------------------------------------------------------------
;		CONFIGURACIÓN Y USO MACROS
;-------------------------------------------------------------------------------   
LOAD16B MACRO HL,H,L
	    movlw   HL>>8
	    movwf   H
	    movlw   HL&0FFh
	    movwf   L
	ENDM 
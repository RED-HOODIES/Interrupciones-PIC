;-------------------------------------------------------------------------------
;		CONFIGURACIÓN INTERRUPCIONES 
;------------------------------------------------------------------------------- 
#INCLUDE "Config_general.inc"	;Incluye las configuraciones generales del proyecto
 
		
context_ram  udata ;configura la posición de almacenamiento de registros según convenga
W_TEMP        res 1  ; Reseva 1 byte a el registro W_TEMP
STATUS_TEMP   res 1  ; Reseva 1 byte a el registro status 
BSR_TEMP      res 1  ; Reseva 1 byte a el registro bank select usado en interrupciones

		


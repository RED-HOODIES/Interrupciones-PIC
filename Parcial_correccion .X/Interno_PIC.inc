;------------------------------------------------------------------------------
; PROCESSOR DECLARATION
;------------------------------------------------------------------------------

     LIST      P=PIC18F45K20          ; list directive to define processor

     
;------------------------------------------------------------------------------
;
; CONFIGURATION WORD SETUP
;
; The 'CONFIG' directive is used to embed the configuration word within the 
; .asm file. The lables following the directive are located in the respective 
; .inc file.  See the data sheet for additional information on configuration 
; word settings.
;
;------------------------------------------------------------------------------

     CONFIG FOSC = INTIO7, FCMEN = OFF, IESO = OFF, PWRT = OFF, BOREN = OFF
     CONFIG BORV = 18, WDTEN = OFF, WDTPS = 1, MCLRE = ON, HFOFST = ON
     CONFIG LPT1OSC = OFF, PBADEN = OFF, CCP2MX = PORTC, STVREN = OFF
     CONFIG LVP = OFF,  XINST = OFF, CP0 = OFF, CP1 = OFF, CP2 = OFF
     CONFIG CP3 = OFF, CPB = OFF, CPD = OFF, WRT0 = OFF, WRT1 = OFF
     CONFIG WRT2 = OFF, WRT3 = OFF, WRTB = OFF, WRTC = OFF, WRTD = OFF
     CONFIG EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF
     CONFIG EBTRB = OFF
;------------------------------------------------------------------------------
    #define FALSE 0


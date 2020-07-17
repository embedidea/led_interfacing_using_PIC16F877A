
_main:

;Led_blink.c,2 :: 		void main ()
;Led_blink.c,4 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;Led_blink.c,5 :: 		while (1)
L_main0:
;Led_blink.c,7 :: 		led = 1;
	BSF        PORTC+0, 0
;Led_blink.c,8 :: 		Delay_ms (1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;Led_blink.c,9 :: 		led = 0;
	BCF        PORTC+0, 0
;Led_blink.c,10 :: 		Delay_ms (1000);
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;Led_blink.c,11 :: 		}
	GOTO       L_main0
;Led_blink.c,12 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

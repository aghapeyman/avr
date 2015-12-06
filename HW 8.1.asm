/*
 * HW_8.asm
 *
 *  Created: 5/15/2015 11:19:26 AM
 *   Author: Peyman Ghasemi
 */ 
 //Peyman Ghasemi _ 91113033

 LOOP:
	 LDI R20,$1D
	 OUT TCCR0,R20
	 LDI R20,$00
	 OUT TCNT0,R20
	 LDI R20,$7D
	 OUT OCR0,R20

	 HERE:
		IN R20,TIFR
		SBRS R20,1
		RJMP HERE

	ANDI R20,$FD
	OUT TIFR,R20
	RJMP LOOP




/*
 * HW_8.asm
 *
 *  Created: 5/16/2015 11:37:04 PM
 *   Author: Peyman Ghasemi
 */ 
//Peyman Ghasemi_91113033

LOOP:
	SBI PORTB,4
	LDI R20,$7A
	OUT TCCR0,R20
	LDI R20,$32
	OUT OCR0,R20
	LDI R20,$00
	OUT TCNT0,R20

	HERE:
		IN R20,TIFR
		SBRS R20,1
		RJMP HERE

	ANDI R20,$FD
	OUT TIFR,R20
	WAIT:
		IN R20,TIFR
		SBRS R20,0
		RJMP WAIT
	ANDI R20,$FE
	OUT TIFR,R20
	RJMP LOOP

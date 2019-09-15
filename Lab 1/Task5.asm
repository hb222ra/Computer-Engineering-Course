;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
; 1DT301,Computer Technology I 
;Author: 
; Baha Eddine Hmidi 
; 
; Lab number: 1 
; Title: Task 5
; 
; Hardware: STK600, CPU ATmega2560 
;
; Function: To run a Ring Counter 
; 
; Input ports: None 
; 
; Output ports: Leds connected to port B. 
; 
; Subroutines: delay: accounts for 1 second delay between changing LED. 
; 
;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 
.include "m2560def.inc" 

; Initialize SP, Stack Pointer
ldi r20, HIGH(RAMEND) ; R20 = high part of RAMEND address
out SPH,R20 ; SPH = high part of RAMEND address
ldi R20, low(RAMEND) ; R20 = low part of RAMEND address
out SPL,R20 ; SPL = low part of RAMEND address

ldi r16, 0xFF
out DDRB, r16
ldi r17, 0b00000001

my_loop:
com r17
out PORTB, r17
com r17
lsl r17
rcall Delay
cpi r17,0b00000000
breq equal
rjmp my_loop 

equal:

ldi r17, 0b00000001
rjmp my_loop
Delay
	ldi r18,82
	ldi r19,42
L1: dec r19
	brne L1
	dec r18
	brne L1
	nop
	ret
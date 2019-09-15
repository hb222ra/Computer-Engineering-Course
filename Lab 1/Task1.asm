;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
; 1DT301,Computer Technology I 
;Author: 
; Baha eddine Hmidi 
; 
; Lab number: 1 
; Title: Task 1 
; 
; Hardware: STK600, CPU ATmega2560 
; 
; Function: To light LED 2 
; 
; Input ports: None
; 
; Output ports: Leds connected to port B. 
; 
; Included files: m2560def.inc 
; 
;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 
 
.include "m2560def.inc" 
 
ldi r16, 0xFF 	 
out DDRB, r16 	; set DDRB as output for lighting LEDs  

loop:	; Keep a loop running indefinitely 
  ldi r16, ob00000100 	; Set the output for LED2
  out PORTB, r16 	; Send this info to light LED on Port B. 
rjmp loop // if you remove the loop part 4 instruction is the minimum number!
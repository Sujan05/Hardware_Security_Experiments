;
; Assembler_exp7.asm
;
; Created: 10/21/2019 6:48:23 PM
; Author : panka
;


; Replace with your application code


.include "m16u4def.inc"

.org 0

rjmp main

 

main:

;set pd as output

ldi r16, 0xFF

out DDRD, r16

;set pc7 and pb7 as output

sbi DDRC, 7

sbi DDRB, 7

rjmp loop


 
delay:
ldi r23, 0x00
delay_inc:
call delay1        
inc r23
sbrs r23, 7
rjmp delay_inc
ret


delay1:
ldi r24, 0x00
delay1_inc:
call delay2        
inc r24
sbrs r24, 7
rjmp delay1_inc
ret

 
 delay2: 
 ldi r25, 0x00 
 delay2_inc:        
 inc r25 
 sbrs r25, 2 
 rjmp delay2_inc 
 ret 
 

 

;==============================================

loop:
lds r17, $504
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $504
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay
; rjmp loop

lds r17, $504
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $504
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $504
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $504
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $504
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $504
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $504
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17,$504
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $504
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay





rjmp loop
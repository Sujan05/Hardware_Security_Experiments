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
lds r17, $500
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $501
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay
; rjmp loop

lds r17, $502
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $503
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

lds r17, $505
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $506
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $507
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $508
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $509
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $50a
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $50b
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $50c
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $50d
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $50e
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $50f
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $510
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $511
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay
; rjmp loop

lds r17, $512
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $513
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $514
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $515
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $516
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $517
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $518
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $519
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $51a
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $51b
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $51c
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $51d
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $51e
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $51f
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $520
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $521
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay
; rjmp loop

lds r17, $522
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $523
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $524
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $525
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $526
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $527
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $528
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $529
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $52a
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $52b
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $52c
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $52d
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $52e
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $52f
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $530
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $531
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $532
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay
; rjmp loop

lds r17, $533
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $534
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $535
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $536
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $537
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $538
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $539
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $53a
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $53b
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $53c
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $53d
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $53e
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay

lds r17, $53f
out PORTD, r17
sbi PORTC, 7
cbi PORTB, 7
call delay
cbi PORTC, 7
sbi PORTB, 7
call delay



rjmp loop


rjmp loop
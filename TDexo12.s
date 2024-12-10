.global _start
.align
tab: .word 10 ,53453,4,9,9,1,3,0,142,987,4
_start:
		adr r6,tab
		mov r0,#1
		ldr r1,[r6]	
		mov r3,#0
tq:		cmp r0,#10
		bhs end
		ldr r2, [r6, r0, lsl #2]
		cmp r2,r1
		ble finsi
		mov r1, r2
		mov r3,r0
		add r0, r0, #1 
		b tq 
finsi:  add r0, r0, #1 
		b tq
end:
		b end
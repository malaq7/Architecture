.global _start
.align
tab: .word 0 ,12, 5, 0, -2, 8, 9, 15, 0, -3, 0, 0, 0, 4, 8, 42 
tab2: .fill 10 ,4
_start:
		adr r5,tab
		adr r6,tab2
		mov r0,#0
		mov r1,#0	
tq:		cmp r0,#16
		bge end
		ldr r4, [r5, r0, lsl #2]
		add r0,r0,#1
		cmp r4,#0
		beq tq
		str r4, [r6, r1, lsl #2]
		add r1, r1, #1 
		b tq 
end:
		b end
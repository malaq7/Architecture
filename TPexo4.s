.global _start
val:    .word 0xAABBCCDD 
_start:
    	LDR r5, =val    
    	LDR r5, [r5]
		and r0,r5,#0xFF
		mov r5,r5, lsr #8
		and r1,r5,#0xFF
		mov r5,r5, lsr #8
		and r2,r5,#0xFF
		mov r5,r5, lsr #8
		and r3,r5,#0xFF
end:
		b end
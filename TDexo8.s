.global _start
.equ N,1
_start:
		mov r0 ,#N
		mov r1,#0
		mov r2,#0
		mov r3,#0
		mov r4,#0	
while:  cmp r4,#N
		bgt end
		and r5,r4,#0b1
		cmp r5,#1
		beq end1
		add r1,r1,r4
		tst r4,#0b11
		bne end1
		add r2,r2,r4
		tst r4,#0b111
		bne end1
		add r3,r3,r4
end1:
	add r4,r4,#1
	b while
end:
	b end
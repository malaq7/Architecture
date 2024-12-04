.global _start
.equ N,1
_start:
		mov r1,#5
		and r0,r1,#1
while:  cmp r1,#0
		beq end
		mov r1,r1, lsr #1
		tst r1,#1
		beq while
		add r0,r0,#1
		b while 
end:
		b end
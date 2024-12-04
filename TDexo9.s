.global _start
.equ N,1
_start:
		mov r1,#3
		mov r4,#10
		mov r2,#0
		mov r3,r4
while:  cmp r3,r1
		blo end
		sub r3, r3, r1
		add r2,r2,#1
		b while
end:
	b end
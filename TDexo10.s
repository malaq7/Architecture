.global _start
.equ N,1
_start:
		mov r0,#3
		mov r1,r0
		mov r2,#1
	
while:  cmp r1,#2
		blo end
		mul r2,r2,r1
		sub r1,r1,#1
		b while
end:
	b end
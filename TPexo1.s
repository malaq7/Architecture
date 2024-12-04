.global _start
.equ N,1
_start:
		mov r0,#3
		mov r1,#8
		mov r2,#24
while:  cmp r2,#0
		beq end
		mov r0,r1
while2: cmp r0,r2
		blo finish
		sub r0 ,r0 ,r2
finish:	mov r1,r2
		mov r2,r0
		b while
end:
		b end
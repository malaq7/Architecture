.global _start
chaine: .asciz "aaaaaaavaf" 
.align

_start:
		adr r6,chaine
		mov r3,#0
		mov r1,#0
		mov r2,#0
tq:		ldrb r4, [r6,r3]
		cmp  r4,#0
		beq end
		cmp r4,#'a'
		bne finsi
		cmp r1,#0
		moveq r2,r3
		add r1, r1, #1 
		add r3, r3, #1
		b tq 
finsi:  add r3, r3, #1 
		b tq
end:
		b end
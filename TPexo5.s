.global _start
a: .byte 22
b: .byte 12
op: .byte '+' 
.align
res: .fill 1,4
_start:
	    LDR r4, =res         
		ldrb r0,a
		ldr r1,=b
		ldrb r1,[r1]
		ldr r2,=op
		ldrb r2,[r2]
		cmp r2, #'+'
		beq addition
		cmp r2, #'-'
		beq sous 
		cmp r2,#'*'
		beq mul	
addition:
		add r3 ,r0, r1
		str r3 ,[r4]
		b end
sous:	sub r3,r0,r1
		str r3 ,[r4]
		b end
mul:	mul r3,r0,r1
		str r3, [r4]
end:
		b end
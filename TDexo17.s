.global _start
TAB: .word 10
_start:	
    ldr r0, =TAB        
    mov r1, #10          
    mov r2, #42       
    bl init     
    b .
	
init:
	stmfd sp!,{r3}
	mov r3,#0
tq:	cmp r3,r1
	bhs fin
	str r2 ,[r0 ,r3, lsl #2]
	add r3,r3,#1
	b tq
fin:
	ldmfd sp!,{r3}
	mov pc ,lr 
	

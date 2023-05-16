stack_size equ 0x400
	area    stack,noinit,readwrite
stack_mem space stack_size
__initial_sp
    preserve8
    thumb
; Vector Table Mapped to Address 0 at Reset
    area reset,data,readonly
    export __Vectors
	export Reset_Handler
	export __initial_sp

	
__Vectors dcd __initial_sp
          dcd Reset_Handler

		
    area init,code,readonly

Reset_Handler
;implement code here.
	mov		r0,		#0x5c
	mov		r1,r0,lsr#4
	and		r2,R0,#0x0F
	cmp		r1,#9
	addgt	r1,r1,#7
	add		r1,r1,#0x30
	lsl		r1,#8
	cmp		r2,#9
	addgt	r2,r2,#7
	add		r2,r2,#0x30	
	orr		r1,r2
	ldr		r3,=result
	str		r1,[r3]
here
	b here

		
	align
	area input,data,readonly
	align
table dcd -114514,-1919810,-3,-2,-1,0,1,2,3,114514
	align
length dcd length-table
	area output,data,readwrite
	align
result dcd 0;save fianl result
	end
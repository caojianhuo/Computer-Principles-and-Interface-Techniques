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
;implemet code here.
	ldr		r0,		=table
	ldr		r1,		[r0]
	ldr		r2,		[r0,#4]
	cmp		r1,		r2
	bgt		final
	mov		r1,		r2
final
	ldr		r0,		=result
	str		r1,		[r0]
here
	b here

	
	
	align
	area input,data,readonly
	align
table dcd -114514,-1919810
	align
length dcd length-table
	area output,data,readwrite
	align
result dcd 0
	end
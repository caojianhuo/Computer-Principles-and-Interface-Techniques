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
	ldr		r2,		=x
	ldr		r0,		[r2]	
	cmp		r0,		#10
	ble		next
	mov		r1,		#1
	b	final
next
	cmp		r0,		#-10
	movge	r1,		#0
	movlt	r1,		#-1
final
	ldr		r2,		=result
	str		r1,		[r2]
here
	b here

	
	
	align
	area input,data,readonly
	align
x dcd -11
	align
length dcd length-x
	area output,data,readwrite
	align
result dcd 0
	end
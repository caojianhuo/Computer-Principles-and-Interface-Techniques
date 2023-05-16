
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
result dcd 0
	end
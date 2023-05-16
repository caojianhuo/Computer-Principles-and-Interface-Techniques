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
	ldr 		r0,			=table
	ldr			r2,			=length
	ldr			r3,			[r2]
	sub			r3,			#4
	ldr			r2,			[r0]  ;save the largest	number
loop
	cmp			r3,			#0
	beq			final
	ldr			r1,			[r0,r3];get another number from buttom to top
	cmp			r1,			r2
	movgt		r2,			r1
	sub			r3,			#4
	b			loop
final
	ldr			r0,			=result
	str			r2,			[r0]
here
	b here
	
	align
	area input,data,readonly
	align
table dcd +12306,-114514,+13,-19,+16,-7,0,182,987,-923
	align
length dcd length-table
	area output,data,readwrite
	align
result dcd 0
	end
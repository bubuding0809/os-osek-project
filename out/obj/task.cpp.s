	.file	"task.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.FuncClockTask,"ax",@progbits
.global	FuncClockTask
	.type	FuncClockTask, @function
FuncClockTask:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,second
	lds r25,second+1
	adiw r24,1
	cpi r24,60
	cpc r25,__zero_reg__
	breq .L2
	sts second+1,r25
	sts second,r24
.L3:
	ldi r24,lo8(1)
	sts isNewTime,r24
/* epilogue start */
	ret
.L2:
	sts second+1,__zero_reg__
	sts second,__zero_reg__
	lds r24,minute
	lds r25,minute+1
	adiw r24,1
	cpi r24,60
	cpc r25,__zero_reg__
	breq .L4
	sts minute+1,r25
	sts minute,r24
	rjmp .L3
.L4:
	sts minute+1,__zero_reg__
	sts minute,__zero_reg__
	lds r24,hour
	lds r25,hour+1
	adiw r24,1
	cpi r24,24
	cpc r25,__zero_reg__
	breq .L6
	sts hour+1,r25
	sts hour,r24
	rjmp .L3
.L6:
	sts hour+1,__zero_reg__
	sts hour,__zero_reg__
	rjmp .L3
	.size	FuncClockTask, .-FuncClockTask
	.section	.rodata.FuncToggleEastServoTask.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Opening East blinds"
.LC1:
	.string	"Opened East blinds"
.LC2:
	.string	"Contracting East blinds"
.LC3:
	.string	"Contracted East blinds"
	.section	.text.FuncToggleEastServoTask,"ax",@progbits
.global	FuncToggleEastServoTask
	.type	FuncToggleEastServoTask, @function
FuncToggleEastServoTask:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,eastContracted
	tst r24
	breq .L8
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
	ldi r22,lo8(-54)
	ldi r23,lo8(8)
	ldi r24,lo8(eastServo)
	ldi r25,hi8(eastServo)
	call _ZN11ServoTimer25writeEi
	ldi r22,lo8(.LC1)
	ldi r23,hi8(.LC1)
.L10:
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
	lds r24,eastContracted
	ldi r25,lo8(1)
	eor r24,r25
	sts eastContracted,r24
/* epilogue start */
	ret
.L8:
	ldi r22,lo8(.LC2)
	ldi r23,hi8(.LC2)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
	ldi r22,lo8(-18)
	ldi r23,lo8(2)
	ldi r24,lo8(eastServo)
	ldi r25,hi8(eastServo)
	call _ZN11ServoTimer25writeEi
	ldi r22,lo8(.LC3)
	ldi r23,hi8(.LC3)
	rjmp .L10
	.size	FuncToggleEastServoTask, .-FuncToggleEastServoTask
	.section	.rodata.FuncToggleWestServoTask.str1.1,"aMS",@progbits,1
.LC4:
	.string	"Opening West blinds"
.LC5:
	.string	"Opened West blinds"
.LC6:
	.string	"Contracting West blinds"
	.section	.text.FuncToggleWestServoTask,"ax",@progbits
.global	FuncToggleWestServoTask
	.type	FuncToggleWestServoTask, @function
FuncToggleWestServoTask:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	lds r24,westContracted
	tst r24
	breq .L12
	ldi r22,lo8(.LC4)
	ldi r23,hi8(.LC4)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
	ldi r22,lo8(-54)
	ldi r23,lo8(8)
	ldi r24,lo8(westServo)
	ldi r25,hi8(westServo)
	call _ZN11ServoTimer25writeEi
	ldi r22,lo8(.LC5)
	ldi r23,hi8(.LC5)
.L14:
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
	lds r24,westContracted
	ldi r25,lo8(1)
	eor r24,r25
	sts westContracted,r24
/* epilogue start */
	ret
.L12:
	ldi r22,lo8(.LC6)
	ldi r23,hi8(.LC6)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
	ldi r22,lo8(-18)
	ldi r23,lo8(2)
	ldi r24,lo8(westServo)
	ldi r25,hi8(westServo)
	call _ZN11ServoTimer25writeEi
	ldi r22,lo8(.LC3)
	ldi r23,hi8(.LC3)
	rjmp .L14
	.size	FuncToggleWestServoTask, .-FuncToggleWestServoTask
	.section	.text.FuncToggleServoTask,"ax",@progbits
.global	FuncToggleServoTask
	.type	FuncToggleServoTask, @function
FuncToggleServoTask:
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	ldi r17,lo8(1)
.L19:
	ldi r24,lo8(3)
	ldi r25,0
	call WaitEvent
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(6)
	call GetEvent
	ldd r24,Y+1
	sbrs r24,1
	rjmp .L16
	lds r24,eastContracted
	tst r24
	breq .L17
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
	ldi r22,lo8(-54)
	ldi r23,lo8(8)
	ldi r24,lo8(eastServo)
	ldi r25,hi8(eastServo)
	call _ZN11ServoTimer25writeEi
	ldi r22,lo8(.LC1)
	ldi r23,hi8(.LC1)
.L28:
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
	lds r24,eastContracted
	eor r24,r17
	sts eastContracted,r24
	ldi r24,lo8(2)
	ldi r25,0
	call ClearEvent
.L16:
	ldd r24,Y+1
	sbrs r24,0
	rjmp .L19
	lds r24,westContracted
	tst r24
	breq .L20
	ldi r22,lo8(.LC4)
	ldi r23,hi8(.LC4)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
	ldi r22,lo8(-54)
	ldi r23,lo8(8)
	ldi r24,lo8(westServo)
	ldi r25,hi8(westServo)
	call _ZN11ServoTimer25writeEi
	ldi r22,lo8(.LC5)
	ldi r23,hi8(.LC5)
.L29:
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
	lds r24,westContracted
	eor r24,r17
	sts westContracted,r24
	ldi r24,lo8(1)
	ldi r25,0
	call ClearEvent
	rjmp .L19
.L17:
	ldi r22,lo8(.LC2)
	ldi r23,hi8(.LC2)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
	ldi r22,lo8(-18)
	ldi r23,lo8(2)
	ldi r24,lo8(eastServo)
	ldi r25,hi8(eastServo)
	call _ZN11ServoTimer25writeEi
	ldi r22,lo8(.LC3)
	ldi r23,hi8(.LC3)
	rjmp .L28
.L20:
	ldi r22,lo8(.LC6)
	ldi r23,hi8(.LC6)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEPKc
	ldi r22,lo8(-18)
	ldi r23,lo8(2)
	ldi r24,lo8(westServo)
	ldi r25,hi8(westServo)
	call _ZN11ServoTimer25writeEi
	ldi r22,lo8(.LC3)
	ldi r23,hi8(.LC3)
	rjmp .L29
	.size	FuncToggleServoTask, .-FuncToggleServoTask
	.section	.rodata.FuncDisplayTask.str1.1,"aMS",@progbits,1
.LC7:
	.string	"ON "
.LC8:
	.string	"OFF"
.global	__fixsfsi
.global	__addsf3
.global	__mulsf3
.LC9:
	.string	"LUX : %3dW %3dA %3dE"
.LC10:
	.string	"SHADE : E-%s W-%s"
.LC11:
	.string	"LIGHT : E-%s W-%s"
.LC12:
	.string	"CLOCK : %02d:%02d:%02d%"
	.section	.text.FuncDisplayTask,"ax",@progbits
.global	FuncDisplayTask
	.type	FuncDisplayTask, @function
FuncDisplayTask:
	push r8
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,20
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 20 */
/* stack size = 32 */
.L__stack_usage = 32
	ldi r20,0
	ldi r22,0
	ldi r24,lo8(lcd)
	ldi r25,hi8(lcd)
	call _ZN13LiquidCrystal9setCursorEhh
	lds r8,avgEast
	lds r9,avgEast+1
	lds r10,avgEast+2
	lds r11,avgEast+3
	lds r12,avgWest
	lds r13,avgWest+1
	lds r14,avgWest+2
	lds r15,avgWest+3
	movw r24,r10
	movw r22,r8
	call __fixsfsi
	push r23
	push r22
	movw r20,r14
	movw r18,r12
	movw r24,r10
	movw r22,r8
	call __addsf3
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,lo8(63)
	call __mulsf3
	call __fixsfsi
	push r23
	push r22
	movw r24,r14
	movw r22,r12
	call __fixsfsi
	push r23
	push r22
	ldi r24,lo8(.LC9)
	ldi r25,hi8(.LC9)
	push r25
	push r24
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	push r17
	push r16
	call sprintf
	movw r22,r16
	ldi r24,lo8(lcd)
	ldi r25,hi8(lcd)
	call _ZN5Print5printEPKc
	ldi r20,lo8(1)
	ldi r22,0
	ldi r24,lo8(lcd)
	ldi r25,hi8(lcd)
	call _ZN13LiquidCrystal9setCursorEhh
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	lds r24,westContracted
	ldi r18,lo8(.LC8)
	ldi r19,hi8(.LC8)
	tst r24
	breq .L31
	ldi r18,lo8(.LC7)
	ldi r19,hi8(.LC7)
.L31:
	lds r24,eastContracted
	cpse r24,__zero_reg__
	rjmp .L37
	ldi r24,lo8(.LC8)
	ldi r25,hi8(.LC8)
.L32:
	push r19
	push r18
	push r25
	push r24
	ldi r24,lo8(.LC10)
	ldi r25,hi8(.LC10)
	push r25
	push r24
	push r17
	push r16
	call sprintf
	movw r22,r16
	ldi r24,lo8(lcd)
	ldi r25,hi8(lcd)
	call _ZN5Print5printEPKc
	ldi r20,lo8(2)
	ldi r22,0
	ldi r24,lo8(lcd)
	ldi r25,hi8(lcd)
	call _ZN13LiquidCrystal9setCursorEhh
	ldi r24,lo8(7)
	call digitalRead
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	or r24,r25
	breq .+2
	rjmp .L38
	ldi r25,lo8(.LC8)
	mov r14,r25
	ldi r25,hi8(.LC8)
	mov r15,r25
.L33:
	ldi r24,lo8(3)
	call digitalRead
	or r24,r25
	breq .+2
	rjmp .L39
	ldi r24,lo8(.LC8)
	ldi r25,hi8(.LC8)
.L34:
	push r15
	push r14
	push r25
	push r24
	ldi r24,lo8(.LC11)
	ldi r25,hi8(.LC11)
	push r25
	push r24
	push r17
	push r16
	call sprintf
	movw r22,r16
	ldi r24,lo8(lcd)
	ldi r25,hi8(lcd)
	call _ZN5Print5printEPKc
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	lds r24,isNewTime
	tst r24
	breq .L35
	ldi r20,lo8(3)
	ldi r22,0
	ldi r24,lo8(lcd)
	ldi r25,hi8(lcd)
	call _ZN13LiquidCrystal9setCursorEhh
	lds r24,second+1
	push r24
	lds r24,second
	push r24
	lds r24,minute+1
	push r24
	lds r24,minute
	push r24
	lds r24,hour+1
	push r24
	lds r24,hour
	push r24
	ldi r24,lo8(.LC12)
	ldi r25,hi8(.LC12)
	push r25
	push r24
	push r17
	push r16
	call sprintf
	movw r22,r16
	ldi r24,lo8(lcd)
	ldi r25,hi8(lcd)
	call _ZN5Print5printEPKc
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
.L35:
	call TerminateTask
/* epilogue start */
	adiw r28,20
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
.L37:
	ldi r24,lo8(.LC7)
	ldi r25,hi8(.LC7)
	rjmp .L32
.L38:
	ldi r24,lo8(.LC7)
	mov r14,r24
	ldi r24,hi8(.LC7)
	mov r15,r24
	rjmp .L33
.L39:
	ldi r24,lo8(.LC7)
	ldi r25,hi8(.LC7)
	rjmp .L34
	.size	FuncDisplayTask, .-FuncDisplayTask
	.section	.text.long_operation,"ax",@progbits
.global	long_operation
	.type	long_operation, @function
long_operation:
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	ldi r22,lo8(-12)
	ldi r23,lo8(1)
	ldi r24,0
	ldi r25,0
	call delay
	ldi r22,0
	mov r24,r28
	call digitalWrite
	ldi r22,lo8(-12)
	ldi r23,lo8(1)
	ldi r24,0
	ldi r25,0
/* epilogue start */
	pop r28
	jmp delay
	.size	long_operation, .-long_operation
.global	__floatsisf
.global	__divsf3
.global	__subsf3
	.section	.text.getLux,"ax",@progbits
.global	getLux
	.type	getLux, @function
getLux:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r22,r24
	lsl r25
	sbc r24,r24
	sbc r25,r25
	call __floatsisf
	ldi r18,0
	ldi r19,lo8(-64)
	ldi r20,lo8(127)
	ldi r21,lo8(68)
	call __divsf3
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-96)
	ldi r21,lo8(64)
	call __mulsf3
	movw r12,r22
	movw r14,r24
	movw r20,r24
	movw r18,r22
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-96)
	ldi r25,lo8(64)
	call __subsf3
	movw r20,r14
	movw r18,r12
	call __divsf3
	ldi r18,0
	ldi r19,lo8(64)
	ldi r20,lo8(-100)
	ldi r21,lo8(69)
	call __mulsf3
	ldi r18,lo8(-62)
	ldi r19,lo8(47)
	ldi r20,lo8(-107)
	ldi r21,lo8(-65)
	call pow
	ldi r18,lo8(30)
	ldi r19,lo8(72)
	ldi r20,lo8(89)
	ldi r21,lo8(73)
	call __mulsf3
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	getLux, .-getLux
	.section	.rodata.FuncDetectTask.str1.1,"aMS",@progbits,1
.LC13:
	.string	"East RAW data:"
.LC14:
	.string	"East data:"
.LC15:
	.string	"West RAW data:"
.LC16:
	.string	"West data:"
.LC17:
	.string	"Avg east lux: "
.LC18:
	.string	"Avg west lux: "
.global	__lesf2
.global	__ltsf2
.global	__gesf2
	.section	.text.FuncDetectTask,"ax",@progbits
.global	FuncDetectTask
	.type	FuncDetectTask, @function
FuncDetectTask:
	push r12
	push r13
	push r14
	push r15
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	lds r24,countEast
	lds r25,countEast+1
	sbiw r24,4
	brlt .+2
	rjmp .L46
	ldi r22,lo8(.LC13)
	ldi r23,hi8(.LC13)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	lds r30,countEast
	lds r31,countEast+1
	lsl r30
	rol r31
	subi r30,lo8(-(dataRawEast))
	sbci r31,hi8(-(dataRawEast))
	ld r22,Z
	ldd r23,Z+1
	ldi r20,lo8(10)
	ldi r21,0
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEii
	lds r28,countEast
	lds r29,countEast+1
	ldi r24,lo8(19)
	call analogRead
	lsl r28
	rol r29
	subi r28,lo8(-(dataRawEast))
	sbci r29,hi8(-(dataRawEast))
	std Y+1,r25
	st Y,r24
	lds r28,countEast
	lds r29,countEast+1
	movw r30,r28
	lsl r30
	rol r31
	subi r30,lo8(-(dataRawEast))
	sbci r31,hi8(-(dataRawEast))
	ld r24,Z
	ldd r25,Z+1
	call getLux
	lsl r28
	rol r29
	lsl r28
	rol r29
	subi r28,lo8(-(dataLuxEast))
	sbci r29,hi8(-(dataLuxEast))
	st Y,r22
	std Y+1,r23
	std Y+2,r24
	std Y+3,r25
	ldi r22,lo8(.LC14)
	ldi r23,hi8(.LC14)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	lds r30,countEast
	lds r31,countEast+1
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(dataLuxEast))
	sbci r31,hi8(-(dataLuxEast))
	ld r20,Z
	ldd r21,Z+1
	ldd r22,Z+2
	ldd r23,Z+3
	ldi r18,lo8(2)
	ldi r19,0
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEdi
	lds r24,countEast
	lds r25,countEast+1
	adiw r24,1
	sts countEast+1,r25
	sts countEast,r24
.L46:
	lds r24,countWest
	lds r25,countWest+1
	sbiw r24,4
	brlt .+2
	rjmp .L47
	ldi r22,lo8(.LC15)
	ldi r23,hi8(.LC15)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	lds r30,countWest
	lds r31,countWest+1
	lsl r30
	rol r31
	subi r30,lo8(-(dataRawWest))
	sbci r31,hi8(-(dataRawWest))
	ld r22,Z
	ldd r23,Z+1
	ldi r20,lo8(10)
	ldi r21,0
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEii
	lds r28,countWest
	lds r29,countWest+1
	ldi r24,lo8(18)
	call analogRead
	lsl r28
	rol r29
	subi r28,lo8(-(dataRawWest))
	sbci r29,hi8(-(dataRawWest))
	std Y+1,r25
	st Y,r24
	lds r28,countWest
	lds r29,countWest+1
	movw r30,r28
	lsl r30
	rol r31
	subi r30,lo8(-(dataRawWest))
	sbci r31,hi8(-(dataRawWest))
	ld r24,Z
	ldd r25,Z+1
	call getLux
	lsl r28
	rol r29
	lsl r28
	rol r29
	subi r28,lo8(-(dataLuxWest))
	sbci r29,hi8(-(dataLuxWest))
	st Y,r22
	std Y+1,r23
	std Y+2,r24
	std Y+3,r25
	ldi r22,lo8(.LC16)
	ldi r23,hi8(.LC16)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	lds r30,countWest
	lds r31,countWest+1
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(dataLuxWest))
	sbci r31,hi8(-(dataLuxWest))
	ld r20,Z
	ldd r21,Z+1
	ldd r22,Z+2
	ldd r23,Z+3
	ldi r18,lo8(2)
	ldi r19,0
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEdi
	lds r24,countWest
	lds r25,countWest+1
	adiw r24,1
	sts countWest+1,r25
	sts countWest,r24
.L47:
	lds r18,dataLuxEast+4
	lds r19,dataLuxEast+4+1
	lds r20,dataLuxEast+4+2
	lds r21,dataLuxEast+4+3
	lds r22,dataLuxEast
	lds r23,dataLuxEast+1
	lds r24,dataLuxEast+2
	lds r25,dataLuxEast+3
	call __addsf3
	lds r18,dataLuxEast+8
	lds r19,dataLuxEast+8+1
	lds r20,dataLuxEast+8+2
	lds r21,dataLuxEast+8+3
	call __addsf3
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(64)
	ldi r21,lo8(64)
	call __divsf3
	sts avgEast,r22
	sts avgEast+1,r23
	sts avgEast+2,r24
	sts avgEast+3,r25
	ldi r22,lo8(.LC17)
	ldi r23,hi8(.LC17)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	lds r20,avgEast
	lds r21,avgEast+1
	lds r22,avgEast+2
	lds r23,avgEast+3
	ldi r18,lo8(2)
	ldi r19,0
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEdi
	lds r18,dataLuxWest+4
	lds r19,dataLuxWest+4+1
	lds r20,dataLuxWest+4+2
	lds r21,dataLuxWest+4+3
	lds r22,dataLuxWest
	lds r23,dataLuxWest+1
	lds r24,dataLuxWest+2
	lds r25,dataLuxWest+3
	call __addsf3
	lds r18,dataLuxWest+8
	lds r19,dataLuxWest+8+1
	lds r20,dataLuxWest+8+2
	lds r21,dataLuxWest+8+3
	call __addsf3
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(64)
	ldi r21,lo8(64)
	call __divsf3
	sts avgWest,r22
	sts avgWest+1,r23
	sts avgWest+2,r24
	sts avgWest+3,r25
	ldi r22,lo8(.LC18)
	ldi r23,hi8(.LC18)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	lds r20,avgWest
	lds r21,avgWest+1
	lds r22,avgWest+2
	lds r23,avgWest+3
	ldi r18,lo8(2)
	ldi r19,0
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEdi
	lds r24,countEast
	lds r25,countEast+1
	sbiw r24,3
	brne .L48
	sts countEast+1,__zero_reg__
	sts countEast,__zero_reg__
.L48:
	lds r24,countWest
	lds r25,countWest+1
	sbiw r24,3
	brne .L49
	sts countWest+1,__zero_reg__
	sts countWest,__zero_reg__
.L49:
	lds r18,hour
	lds r19,hour+1
	lds r24,minute
	lds r25,minute+1
	cpi r18,18
	cpc r19,__zero_reg__
	brge .+2
	rjmp .L50
	sbiw r24,30
	brlt .+2
	rjmp .L51
.L57:
	lds r12,avgEast
	lds r13,avgEast+1
	lds r14,avgEast+2
	lds r15,avgEast+3
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-6)
	ldi r21,lo8(67)
	movw r24,r14
	movw r22,r12
	call __ltsf2
	sbrs r24,7
	rjmp .L86
	lds r24,eastContracted
	cpse r24,__zero_reg__
	rjmp .L64
.L67:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,lo8(6)
	call SetEvent
.L65:
	lds r12,avgWest
	lds r13,avgWest+1
	lds r14,avgWest+2
	lds r15,avgWest+3
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-6)
	ldi r21,lo8(67)
	movw r24,r14
	movw r22,r12
	call __ltsf2
	sbrs r24,7
	rjmp .L87
	lds r24,westContracted
	cpse r24,__zero_reg__
	rjmp .L70
.L73:
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(6)
	call SetEvent
.L71:
/* epilogue start */
	pop r29
	pop r28
	pop r15
	pop r14
	pop r13
	pop r12
	jmp TerminateTask
.L50:
	cpi r18,7
	cpc r19,__zero_reg__
	brlt .+2
	rjmp .L53
	sbiw r24,30
	brge .L54
.L51:
	ldi r24,lo8(3)
	call digitalRead
	or r24,r25
	brne .L55
	ldi r22,lo8(1)
	ldi r24,lo8(3)
	call digitalWrite
.L55:
	ldi r24,lo8(7)
	call digitalRead
	or r24,r25
	breq .+2
	rjmp .L57
.L56:
	ldi r22,lo8(1)
.L89:
	ldi r24,lo8(7)
	call digitalWrite
	rjmp .L57
.L54:
	cpi r18,6
	cpc r19,__zero_reg__
	breq .+2
	rjmp .L57
.L58:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(72)
	ldi r21,lo8(67)
	lds r22,avgEast
	lds r23,avgEast+1
	lds r24,avgEast+2
	lds r25,avgEast+3
	call __lesf2
	ldi r22,lo8(1)
	cp __zero_reg__,r24
	brge .L88
	ldi r22,0
.L88:
	ldi r24,lo8(3)
	call digitalWrite
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(72)
	ldi r21,lo8(67)
	lds r22,avgWest
	lds r23,avgWest+1
	lds r24,avgWest+2
	lds r25,avgWest+3
	call __lesf2
	cp __zero_reg__,r24
	brge .L56
	ldi r22,0
	rjmp .L89
.L53:
	sbiw r24,30
	brge .L58
	rjmp .L57
.L86:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-6)
	ldi r21,lo8(67)
	movw r24,r14
	movw r22,r12
	call __gesf2
	sbrc r24,7
	rjmp .L65
	lds r24,eastContracted
	tst r24
	brne .+2
	rjmp .L65
	rjmp .L67
.L87:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-6)
	ldi r21,lo8(67)
	movw r24,r14
	movw r22,r12
	call __gesf2
	sbrc r24,7
	rjmp .L71
	lds r24,westContracted
	tst r24
	brne .+2
	rjmp .L71
	rjmp .L73
.L64:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-6)
	ldi r21,lo8(67)
	movw r24,r14
	movw r22,r12
	call __gesf2
	sbrc r24,7
	rjmp .L65
	rjmp .L67
.L70:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-6)
	ldi r21,lo8(67)
	movw r24,r14
	movw r22,r12
	call __gesf2
	sbrc r24,7
	rjmp .L71
	rjmp .L73
	.size	FuncDetectTask, .-FuncDetectTask
	.section	.text.startup._GLOBAL__sub_I_eastServo,"ax",@progbits
	.type	_GLOBAL__sub_I_eastServo, @function
_GLOBAL__sub_I_eastServo:
	push r12
	push r14
	push r16
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	ldi r24,lo8(eastServo)
	ldi r25,hi8(eastServo)
	call _ZN11ServoTimer2C1Ev
	ldi r24,lo8(westServo)
	ldi r25,hi8(westServo)
	call _ZN11ServoTimer2C1Ev
	ldi r24,lo8(13)
	mov r12,r24
	ldi r25,lo8(12)
	mov r14,r25
	ldi r16,lo8(11)
	ldi r18,lo8(10)
	ldi r20,lo8(9)
	ldi r22,lo8(8)
	ldi r24,lo8(lcd)
	ldi r25,hi8(lcd)
	call _ZN13LiquidCrystalC1Ehhhhhh
/* epilogue start */
	pop r16
	pop r14
	pop r12
	ret
	.size	_GLOBAL__sub_I_eastServo, .-_GLOBAL__sub_I_eastServo
	.global __do_global_ctors
	.section .ctors,"a",@progbits
	.p2align	1
	.word	gs(_GLOBAL__sub_I_eastServo)
.global	isNewTime
	.section	.bss.isNewTime,"aw",@nobits
	.type	isNewTime, @object
	.size	isNewTime, 1
isNewTime:
	.zero	1
.global	second
	.section	.data.second,"aw",@progbits
	.type	second, @object
	.size	second, 2
second:
	.word	55
.global	minute
	.section	.data.minute,"aw",@progbits
	.type	minute, @object
	.size	minute, 2
minute:
	.word	29
.global	hour
	.section	.data.hour,"aw",@progbits
	.type	hour, @object
	.size	hour, 2
hour:
	.word	6
.global	countWest
	.section	.bss.countWest,"aw",@nobits
	.type	countWest, @object
	.size	countWest, 2
countWest:
	.zero	2
.global	countEast
	.section	.bss.countEast,"aw",@nobits
	.type	countEast, @object
	.size	countEast, 2
countEast:
	.zero	2
.global	westContracted
	.section	.bss.westContracted,"aw",@nobits
	.type	westContracted, @object
	.size	westContracted, 1
westContracted:
	.zero	1
.global	eastContracted
	.section	.bss.eastContracted,"aw",@nobits
	.type	eastContracted, @object
	.size	eastContracted, 1
eastContracted:
	.zero	1
.global	avgWest
	.section	.bss.avgWest,"aw",@nobits
	.type	avgWest, @object
	.size	avgWest, 4
avgWest:
	.zero	4
.global	avgEast
	.section	.bss.avgEast,"aw",@nobits
	.type	avgEast, @object
	.size	avgEast, 4
avgEast:
	.zero	4
.global	dataLuxWest
	.section	.bss.dataLuxWest,"aw",@nobits
	.type	dataLuxWest, @object
	.size	dataLuxWest, 12
dataLuxWest:
	.zero	12
.global	dataLuxEast
	.section	.bss.dataLuxEast,"aw",@nobits
	.type	dataLuxEast, @object
	.size	dataLuxEast, 12
dataLuxEast:
	.zero	12
.global	dataRawWest
	.section	.data.dataRawWest,"aw",@progbits
	.type	dataRawWest, @object
	.size	dataRawWest, 6
dataRawWest:
	.word	-2000
	.word	-2000
	.word	-2000
.global	dataRawEast
	.section	.data.dataRawEast,"aw",@progbits
	.type	dataRawEast, @object
	.size	dataRawEast, 6
dataRawEast:
	.word	-2000
	.word	-2000
	.word	-2000
.global	lcd
	.section	.bss.lcd,"aw",@nobits
	.type	lcd, @object
	.size	lcd, 24
lcd:
	.zero	24
.global	westServo
	.section	.bss.westServo,"aw",@nobits
	.type	westServo, @object
	.size	westServo, 1
westServo:
	.zero	1
.global	eastServo
	.section	.bss.eastServo,"aw",@nobits
	.type	eastServo, @object
	.size	eastServo, 1
eastServo:
	.zero	1
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss

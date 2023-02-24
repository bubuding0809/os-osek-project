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
	lds r8,dataLux
	lds r9,dataLux+1
	lds r10,dataLux+2
	lds r11,dataLux+3
	lds r12,dataLux+4
	lds r13,dataLux+4+1
	lds r14,dataLux+4+2
	lds r15,dataLux+4+3
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
	ldi r24,lo8(19)
	call analogRead
	sts dataRaw+1,r25
	sts dataRaw,r24
	ldi r24,lo8(18)
	call analogRead
	movw r28,r24
	sts dataRaw+2+1,r25
	sts dataRaw+2,r24
	lds r24,dataRaw
	lds r25,dataRaw+1
	call getLux
	movw r12,r22
	movw r14,r24
	sts dataLux,r12
	sts dataLux+1,r13
	sts dataLux+2,r14
	sts dataLux+3,r15
	movw r24,r28
	call getLux
	sts dataLux+4,r22
	sts dataLux+4+1,r23
	sts dataLux+4+2,r24
	sts dataLux+4+3,r25
	lds r18,hour
	lds r19,hour+1
	lds r24,minute
	lds r25,minute+1
	cpi r18,18
	cpc r19,__zero_reg__
	brlt .L46
	cpi r24,30
	cpc r25,__zero_reg__
	brge .L47
.L48:
	sbiw r24,30
	brge .+2
	rjmp .L52
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(72)
	ldi r21,lo8(67)
	movw r24,r14
	movw r22,r12
	call __lesf2
	ldi r22,lo8(1)
	cp __zero_reg__,r24
	brge .L80
	ldi r22,0
.L80:
	ldi r24,lo8(3)
	call digitalWrite
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(72)
	ldi r21,lo8(67)
	lds r22,dataLux+4
	lds r23,dataLux+4+1
	lds r24,dataLux+4+2
	lds r25,dataLux+4+3
	call __lesf2
	cp __zero_reg__,r24
	brge .L51
	ldi r22,0
	rjmp .L81
.L46:
	cpi r18,7
	cpc r19,__zero_reg__
	brge .L48
	cpi r24,30
	cpc r25,__zero_reg__
	brge .L49
.L47:
	ldi r24,lo8(3)
	call digitalRead
	or r24,r25
	brne .L50
	ldi r22,lo8(1)
	ldi r24,lo8(3)
	call digitalWrite
.L50:
	ldi r24,lo8(7)
	call digitalRead
	or r24,r25
	brne .L52
.L51:
	ldi r22,lo8(1)
.L81:
	ldi r24,lo8(7)
	call digitalWrite
	rjmp .L52
.L49:
	cpi r18,6
	cpc r19,__zero_reg__
	brne .+2
	rjmp .L48
.L52:
	lds r12,dataLux
	lds r13,dataLux+1
	lds r14,dataLux+2
	lds r15,dataLux+3
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-6)
	ldi r21,lo8(67)
	movw r24,r14
	movw r22,r12
	call __ltsf2
	sbrs r24,7
	rjmp .L78
	lds r24,eastContracted
	cpse r24,__zero_reg__
	rjmp .L59
.L62:
	ldi r22,lo8(2)
	ldi r23,0
	ldi r24,lo8(6)
	call SetEvent
.L60:
	lds r12,dataLux+4
	lds r13,dataLux+4+1
	lds r14,dataLux+4+2
	lds r15,dataLux+4+3
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-6)
	ldi r21,lo8(67)
	movw r24,r14
	movw r22,r12
	call __ltsf2
	sbrs r24,7
	rjmp .L79
	lds r24,westContracted
	cpse r24,__zero_reg__
	rjmp .L65
.L68:
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(6)
	call SetEvent
.L66:
/* epilogue start */
	pop r29
	pop r28
	pop r15
	pop r14
	pop r13
	pop r12
	jmp TerminateTask
.L78:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-6)
	ldi r21,lo8(67)
	movw r24,r14
	movw r22,r12
	call __gesf2
	sbrc r24,7
	rjmp .L60
	lds r24,eastContracted
	tst r24
	breq .L60
	rjmp .L62
.L79:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-6)
	ldi r21,lo8(67)
	movw r24,r14
	movw r22,r12
	call __gesf2
	sbrc r24,7
	rjmp .L66
	lds r24,westContracted
	tst r24
	breq .L66
	rjmp .L68
.L59:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-6)
	ldi r21,lo8(67)
	movw r24,r14
	movw r22,r12
	call __gesf2
	sbrc r24,7
	rjmp .L60
	rjmp .L62
.L65:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-6)
	ldi r21,lo8(67)
	movw r24,r14
	movw r22,r12
	call __gesf2
	sbrc r24,7
	rjmp .L66
	rjmp .L68
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
.global	dataLux
	.section	.bss.dataLux,"aw",@nobits
	.type	dataLux, @object
	.size	dataLux, 8
dataLux:
	.zero	8
.global	dataRaw
	.section	.bss.dataRaw,"aw",@nobits
	.type	dataRaw, @object
	.size	dataRaw, 4
dataRaw:
	.zero	4
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

	.file	"code.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
	.section	.text.StartupHook,"ax",@progbits
.global	StartupHook
	.type	StartupHook, @function
StartupHook:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
	ret
	.size	StartupHook, .-StartupHook
	.section	.rodata.idle_hook.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Test Failed!!!, line:101 \r\n"
	.section	.text.idle_hook,"ax",@progbits
.global	idle_hook
	.type	idle_hook, @function
idle_hook:
	push r16
	push r17
	push r28
	push r29
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 6 */
.L__stack_usage = 6
	in r24,__SP_L__
	in r25,__SP_L__+1
	std Y+2,r25
	std Y+1,r24
	lds r24,main_sp
	lds r25,main_sp+1
	or r24,r25
	brne .L3
	ldd r24,Y+1
	ldd r25,Y+2
	sts main_sp+1,r25
	sts main_sp,r24
.L4:
/* #APP */
 ;  104 "/home/user/Osek/OSEK-Project/code.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(gs(_Z14serialEventRunv))
	ldi r25,hi8(gs(_Z14serialEventRunv))
	or r24,r25
	breq .L7
	call _Z14serialEventRunv
.L7:
/* #APP */
 ;  108 "/home/user/Osek/OSEK-Project/code.cpp" 1
	sei
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.L3:
	lds r18,main_sp
	lds r19,main_sp+1
	ldd r24,Y+1
	ldd r25,Y+2
	cp r18,r24
	cpc r19,r25
	breq .L4
/* #APP */
 ;  101 "/home/user/Osek/OSEK-Project/code.cpp" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	call serial_print
	ldi r16,lo8(gs(_Z14serialEventRunv))
	ldi r17,hi8(gs(_Z14serialEventRunv))
.L5:
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L5
	call _Z14serialEventRunv
	rjmp .L5
	.size	idle_hook, .-idle_hook
	.section	.rodata.setup.str1.1,"aMS",@progbits,1
.LC1:
	.string	"My Shade Controller!"
	.section	.text.setup,"ax",@progbits
.global	setup
	.type	setup, @function
setup:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(5)
	ldi r23,0
	ldi r24,lo8(eastServo)
	ldi r25,hi8(eastServo)
	call _ZN11ServoTimer26attachEi
	ldi r22,lo8(-18)
	ldi r23,lo8(2)
	ldi r24,lo8(eastServo)
	ldi r25,hi8(eastServo)
	call _ZN11ServoTimer25writeEi
	ldi r22,lo8(4)
	ldi r23,0
	ldi r24,lo8(westServo)
	ldi r25,hi8(westServo)
	call _ZN11ServoTimer26attachEi
	ldi r22,lo8(-18)
	ldi r23,lo8(2)
	ldi r24,lo8(westServo)
	ldi r25,hi8(westServo)
	call _ZN11ServoTimer25writeEi
	ldi r18,0
	ldi r20,lo8(4)
	ldi r22,lo8(20)
	ldi r24,lo8(lcd)
	ldi r25,hi8(lcd)
	call _ZN13LiquidCrystal5beginEhhh
	ldi r20,lo8(_ZL8mapChar1)
	ldi r21,hi8(_ZL8mapChar1)
	ldi r22,lo8(1)
	ldi r24,lo8(lcd)
	ldi r25,hi8(lcd)
	call _ZN13LiquidCrystal10createCharEhPh
	ldi r24,lo8(lcd)
	ldi r25,hi8(lcd)
	call _ZN13LiquidCrystal5clearEv
	ldi r22,0
	ldi r24,lo8(19)
	call pinMode
	ldi r22,0
	ldi r24,lo8(18)
	call pinMode
	ldi r22,lo8(1)
	ldi r24,lo8(3)
	call pinMode
	ldi r22,lo8(1)
	ldi r24,lo8(7)
	call pinMode
	ldi r22,0
	ldi r24,lo8(3)
	call digitalWrite
	ldi r22,0
	ldi r24,lo8(7)
	call digitalWrite
	ldi r30,lo8(105)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(2)
	st Z,r24
	sbi 0x1d,0
	ldi r18,lo8(6)
	ldi r20,0
	ldi r21,lo8(-62)
	ldi r22,lo8(1)
	ldi r23,0
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN14HardwareSerial5beginEmh
	ldi r22,lo8(.LC1)
	ldi r23,hi8(.LC1)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	jmp _ZN5Print7printlnEPKc
	.size	setup, .-setup
	.section	.rodata.ErrorHook.str1.1,"aMS",@progbits,1
.LC2:
	.string	"E_OS_ID-"
.LC3:
	.string	"E_OS_LIMIT"
.LC4:
	.string	"E_OS_STATE-"
.LC5:
	.string	"OSServiceId_SetRelAlarm"
.LC6:
	.string	"E_OS_PARAM_POINTER-"
.LC7:
	.string	"OSServiceId_GetAlarm"
.LC8:
	.string	"-"
	.section	.text.ErrorHook,"ax",@progbits
.global	ErrorHook
	.type	ErrorHook, @function
ErrorHook:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call osEE_get_service_id
	movw r16,r24
	cpi r28,4
	cpc r29,__zero_reg__
	brne .+2
	rjmp .L16
	brsh .L17
	cpi r28,1
	cpc r29,__zero_reg__
	breq .L18
	cpi r28,3
	cpc r29,__zero_reg__
	breq .L19
.L15:
	ldi r20,lo8(10)
	ldi r21,0
	movw r22,r28
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEii
	ldi r22,lo8(.LC8)
	ldi r23,hi8(.LC8)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	call osEE_get_service_id
	ldi r20,lo8(10)
	ldi r21,0
	movw r22,r24
	rjmp .L28
.L17:
	cpi r28,7
	cpc r29,__zero_reg__
	breq .L20
	cpi r28,14
	cpc r29,__zero_reg__
	brne .L15
	ldi r22,lo8(.LC6)
	ldi r23,hi8(.LC6)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	cpi r16,38
	cpc r17,__zero_reg__
	brne .L14
	ldi r22,lo8(.LC7)
	ldi r23,hi8(.LC7)
.L29:
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	jmp _ZN5Print7printlnEPKc
.L18:
	ldi r20,lo8(10)
	ldi r21,0
	ldi r22,lo8(1)
	ldi r23,0
.L28:
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	jmp _ZN5Print7printlnEii
.L19:
	ldi r22,lo8(.LC2)
	ldi r23,hi8(.LC2)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	ldi r20,lo8(10)
	ldi r21,0
	movw r22,r16
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEii
.L16:
	ldi r22,lo8(.LC3)
	ldi r23,hi8(.LC3)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	jmp _ZN5Print5printEPKc
.L20:
	ldi r22,lo8(.LC4)
	ldi r23,hi8(.LC4)
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print5printEPKc
	ldi r22,lo8(.LC5)
	ldi r23,hi8(.LC5)
	cpi r16,40
	cpc r17,__zero_reg__
	breq .L29
.L14:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	ErrorHook, .-ErrorHook
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init
	call setup
	ldi r24,0
	call StartOS
	ldi r25,0
	ldi r24,0
/* epilogue start */
	ret
	.size	main, .-main
.global	main_sp
	.section	.bss.main_sp,"aw",@nobits
	.type	main_sp, @object
	.size	main_sp, 2
main_sp:
	.zero	2
.global	startupmode
	.section	.bss.startupmode,"aw",@nobits
	.type	startupmode, @object
	.size	startupmode, 1
startupmode:
	.zero	1
.global	old_sp
	.section	.bss.old_sp,"aw",@nobits
	.type	old_sp, @object
	.size	old_sp, 2
old_sp:
	.zero	2
.global	stk_wrong
	.section	.bss.stk_wrong,"aw",@nobits
	.type	stk_wrong, @object
	.size	stk_wrong, 1
stk_wrong:
	.zero	1
	.section	.data._ZL8mapChar1,"aw",@progbits
	.type	_ZL8mapChar1, @object
	.size	_ZL8mapChar1, 8
_ZL8mapChar1:
	.byte	0
	.byte	0
	.byte	10
	.byte	31
	.byte	31
	.byte	14
	.byte	4
	.byte	0
	.weak	_Z14serialEventRunv
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss

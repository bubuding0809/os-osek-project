	.file	"ee_avr8_irqstub.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.osEE_avr8_isr1_stub,"ax",@progbits
.global	osEE_avr8_isr1_stub
	.type	osEE_avr8_isr1_stub, @function
osEE_avr8_isr1_stub:
.LFB61:
	.file 1 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c"
	.loc 1 68 0
	.cfi_startproc
.LVL0:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 70 0
/* #APP */
 ;  70 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r1

 ;  0 "" 2
 ;  70 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r0

 ;  0 "" 2
 ;  70 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	in   r0, 0x3f

 ;  0 "" 2
 ;  70 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r0

 ;  0 "" 2
 ;  70 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	eor  r1, r1

 ;  0 "" 2
 ;  70 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r18

 ;  0 "" 2
 ;  70 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r19

 ;  0 "" 2
 ;  70 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r20

 ;  0 "" 2
 ;  70 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r21

 ;  0 "" 2
 ;  70 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r22

 ;  0 "" 2
 ;  70 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r23

 ;  0 "" 2
 ;  70 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r26

 ;  0 "" 2
 ;  70 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r27

 ;  0 "" 2
 ;  70 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r30

 ;  0 "" 2
 ;  70 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r31

 ;  0 "" 2
/* #NOAPP */
.LBB8:
.LBB9:
	.file 2 "/home/user/Osek/OSEK-Project/erika/src/ee_hal_internal.h"
	.loc 2 105 0
/* #APP */
 ;  105 "/home/user/Osek/OSEK-Project/erika/src/ee_hal_internal.h" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.LBE9:
.LBE8:
	.loc 1 78 0
	movw r30,r24
	icall
.LVL1:
	.loc 1 80 0
/* #APP */
 ;  80 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r31

 ;  0 "" 2
 ;  80 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r30

 ;  0 "" 2
 ;  80 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r27

 ;  0 "" 2
 ;  80 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r26

 ;  0 "" 2
 ;  80 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r23

 ;  0 "" 2
 ;  80 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r22

 ;  0 "" 2
 ;  80 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r21

 ;  0 "" 2
 ;  80 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r20

 ;  0 "" 2
 ;  80 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r19

 ;  0 "" 2
 ;  80 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r18

 ;  0 "" 2
 ;  80 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r0

 ;  0 "" 2
 ;  80 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	out 0x3f, r0

 ;  0 "" 2
 ;  80 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r0

 ;  0 "" 2
 ;  80 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r1

 ;  0 "" 2
	.loc 1 82 0
 ;  82 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	ret
 ;  0 "" 2
/* epilogue start */
	.loc 1 84 0
/* #NOAPP */
	.cfi_endproc
.LFE61:
	.size	osEE_avr8_isr1_stub, .-osEE_avr8_isr1_stub
	.section	.text.osEE_avr8_isr2_stub,"ax",@progbits
.global	osEE_avr8_isr2_stub
	.type	osEE_avr8_isr2_stub, @function
osEE_avr8_isr2_stub:
.LFB62:
	.loc 1 90 0
	.cfi_startproc
.LVL2:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 92 0
/* #APP */
 ;  92 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r1

 ;  0 "" 2
 ;  92 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r0

 ;  0 "" 2
 ;  92 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	in   r0, 0x3f

 ;  0 "" 2
 ;  92 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r0

 ;  0 "" 2
 ;  92 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	eor  r1, r1

 ;  0 "" 2
 ;  92 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r18

 ;  0 "" 2
 ;  92 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r19

 ;  0 "" 2
 ;  92 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r20

 ;  0 "" 2
 ;  92 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r21

 ;  0 "" 2
 ;  92 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r22

 ;  0 "" 2
 ;  92 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r23

 ;  0 "" 2
 ;  92 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r26

 ;  0 "" 2
 ;  92 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r27

 ;  0 "" 2
 ;  92 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r30

 ;  0 "" 2
 ;  92 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	push r31

 ;  0 "" 2
.LVL3:
/* #NOAPP */
.LBB14:
.LBB15:
	.file 3 "/home/user/Osek/OSEK-Project/erika/src/ee_kernel.h"
	.loc 3 194 0
	lds r30,KDB+2
	lds r31,KDB+2+1
	ldi r25,0
	lsl r24
	rol r25
.LVL4:
	add r30,r24
	adc r31,r25
	ld r20,Z
	ldd r21,Z+1
.LVL5:
	.loc 3 197 0
	movw r26,r20
	adiw r26,4
	ld r30,X+
	ld r31,X
	ld r24,Z
	subi r24,lo8(-(1))
	st Z,r24
	.loc 3 199 0
	ldi r22,lo8(CDB)
	ldi r23,hi8(CDB)
	ldi r24,lo8(KDB)
	ldi r25,hi8(KDB)
	call osEE_scheduler_task_set_running
.LVL6:
.LBE15:
.LBE14:
	.loc 1 102 0
/* #APP */
 ;  102 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r31

 ;  0 "" 2
 ;  102 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r30

 ;  0 "" 2
 ;  102 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r27

 ;  0 "" 2
 ;  102 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r26

 ;  0 "" 2
 ;  102 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r23

 ;  0 "" 2
 ;  102 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r22

 ;  0 "" 2
 ;  102 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r21

 ;  0 "" 2
 ;  102 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r20

 ;  0 "" 2
 ;  102 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r19

 ;  0 "" 2
 ;  102 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r18

 ;  0 "" 2
 ;  102 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r0

 ;  0 "" 2
 ;  102 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	out 0x3f, r0

 ;  0 "" 2
 ;  102 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r0

 ;  0 "" 2
 ;  102 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	pop r1

 ;  0 "" 2
	.loc 1 104 0
 ;  104 "/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c" 1
	ret
 ;  0 "" 2
/* epilogue start */
	.loc 1 106 0
/* #NOAPP */
	.cfi_endproc
.LFE62:
	.size	osEE_avr8_isr2_stub, .-osEE_avr8_isr2_stub
	.text
.Letext0:
	.file 4 "/home/user/arduino-1.8.15/hardware/tools/avr/avr/include/stdint.h"
	.file 5 "/home/user/Osek/OSEK-Project/erika/inc/ee_platform_types.h"
	.file 6 "/home/user/Osek/OSEK-Project/erika/inc/ee_api_types.h"
	.file 7 "/home/user/Osek/OSEK-Project/erika/inc/ee_hal_internal_types.h"
	.file 8 "/home/user/Osek/OSEK-Project/erika/inc/ee_scheduler_types.h"
	.file 9 "/home/user/Osek/OSEK-Project/erika/inc/ee_kernel_types.h"
	.file 10 "/home/user/Osek/OSEK-Project/erika/inc/ee_get_kernel_and_core.h"
	.file 11 "/home/user/Osek/OSEK-Project/erika/src/ee_scheduler.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x10af
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF309
	.byte	0xc
	.long	.LASF310
	.long	.LASF311
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF5
	.byte	0x4
	.byte	0x7e
	.long	0x57
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF6
	.byte	0x4
	.byte	0x80
	.long	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x5
	.byte	0x56
	.long	0x98
	.uleb128 0x6
	.long	.LASF10
	.byte	0
	.uleb128 0x6
	.long	.LASF11
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	.LASF12
	.byte	0x5
	.byte	0x59
	.long	0x7e
	.uleb128 0x4
	.long	.LASF13
	.byte	0x5
	.byte	0x5e
	.long	0xae
	.uleb128 0x7
	.byte	0x2
	.uleb128 0x4
	.long	.LASF14
	.byte	0x5
	.byte	0x5f
	.long	0x4c
	.uleb128 0x4
	.long	.LASF15
	.byte	0x5
	.byte	0x66
	.long	0x5e
	.uleb128 0x4
	.long	.LASF16
	.byte	0x5
	.byte	0x69
	.long	0x5e
	.uleb128 0x4
	.long	.LASF17
	.byte	0x5
	.byte	0x6c
	.long	0x5e
	.uleb128 0x4
	.long	.LASF18
	.byte	0x5
	.byte	0x71
	.long	0x5e
	.uleb128 0x4
	.long	.LASF19
	.byte	0x5
	.byte	0x7a
	.long	0xf2
	.uleb128 0x8
	.byte	0x2
	.long	0xf8
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x4
	.long	.LASF20
	.byte	0x6
	.byte	0x3f
	.long	0x57
	.uleb128 0x4
	.long	.LASF21
	.byte	0x6
	.byte	0x45
	.long	0xb0
	.uleb128 0x4
	.long	.LASF22
	.byte	0x6
	.byte	0x4f
	.long	0x57
	.uleb128 0x4
	.long	.LASF23
	.byte	0x6
	.byte	0x5b
	.long	0x57
	.uleb128 0x4
	.long	.LASF24
	.byte	0x6
	.byte	0x66
	.long	0xf2
	.uleb128 0xa
	.long	.LASF31
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.byte	0x6d
	.long	0x15b
	.uleb128 0x6
	.long	.LASF25
	.byte	0
	.uleb128 0x6
	.long	.LASF26
	.byte	0x1
	.uleb128 0x6
	.long	.LASF27
	.byte	0x2
	.uleb128 0x6
	.long	.LASF28
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF29
	.byte	0x6
	.byte	0x72
	.long	0x131
	.uleb128 0x4
	.long	.LASF30
	.byte	0x6
	.byte	0x74
	.long	0x15b
	.uleb128 0xa
	.long	.LASF32
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.byte	0x76
	.long	0x1a7
	.uleb128 0x6
	.long	.LASF33
	.byte	0
	.uleb128 0x6
	.long	.LASF34
	.byte	0x1
	.uleb128 0x6
	.long	.LASF35
	.byte	0x2
	.uleb128 0x6
	.long	.LASF36
	.byte	0x3
	.uleb128 0x6
	.long	.LASF37
	.byte	0x4
	.uleb128 0x6
	.long	.LASF38
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	.LASF39
	.byte	0x6
	.byte	0x7f
	.long	0x171
	.uleb128 0x4
	.long	.LASF40
	.byte	0x6
	.byte	0x86
	.long	0x1a7
	.uleb128 0x4
	.long	.LASF41
	.byte	0x6
	.byte	0x93
	.long	0xd1
	.uleb128 0xb
	.byte	0x6
	.byte	0x6
	.byte	0xa0
	.long	0x1fb
	.uleb128 0xc
	.long	.LASF42
	.byte	0x6
	.byte	0xa2
	.long	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF43
	.byte	0x6
	.byte	0xa5
	.long	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF44
	.byte	0x6
	.byte	0xa9
	.long	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF45
	.byte	0x6
	.byte	0xab
	.long	0x1c8
	.uleb128 0x4
	.long	.LASF46
	.byte	0x6
	.byte	0xc8
	.long	0xdc
	.uleb128 0x4
	.long	.LASF47
	.byte	0x6
	.byte	0xd5
	.long	0xbb
	.uleb128 0x4
	.long	.LASF48
	.byte	0x6
	.byte	0xdc
	.long	0xc6
	.uleb128 0xa
	.long	.LASF49
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.byte	0xe4
	.long	0x2e1
	.uleb128 0x6
	.long	.LASF50
	.byte	0
	.uleb128 0x6
	.long	.LASF51
	.byte	0x1
	.uleb128 0x6
	.long	.LASF52
	.byte	0x2
	.uleb128 0x6
	.long	.LASF53
	.byte	0x3
	.uleb128 0x6
	.long	.LASF54
	.byte	0x4
	.uleb128 0x6
	.long	.LASF55
	.byte	0x5
	.uleb128 0x6
	.long	.LASF56
	.byte	0x6
	.uleb128 0x6
	.long	.LASF57
	.byte	0x7
	.uleb128 0x6
	.long	.LASF58
	.byte	0x8
	.uleb128 0x6
	.long	.LASF59
	.byte	0x9
	.uleb128 0x6
	.long	.LASF60
	.byte	0xa
	.uleb128 0x6
	.long	.LASF61
	.byte	0xb
	.uleb128 0x6
	.long	.LASF62
	.byte	0xc
	.uleb128 0x6
	.long	.LASF63
	.byte	0xd
	.uleb128 0x6
	.long	.LASF64
	.byte	0xe
	.uleb128 0x6
	.long	.LASF65
	.byte	0xf
	.uleb128 0x6
	.long	.LASF66
	.byte	0x10
	.uleb128 0x6
	.long	.LASF67
	.byte	0x11
	.uleb128 0x6
	.long	.LASF68
	.byte	0x12
	.uleb128 0x6
	.long	.LASF69
	.byte	0x13
	.uleb128 0x6
	.long	.LASF70
	.byte	0x14
	.uleb128 0x6
	.long	.LASF71
	.byte	0x15
	.uleb128 0x6
	.long	.LASF72
	.byte	0x16
	.uleb128 0x6
	.long	.LASF73
	.byte	0x17
	.uleb128 0x6
	.long	.LASF74
	.byte	0x18
	.uleb128 0x6
	.long	.LASF75
	.byte	0x19
	.uleb128 0x6
	.long	.LASF76
	.byte	0x1a
	.uleb128 0x6
	.long	.LASF77
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.long	.LASF78
	.byte	0x6
	.word	0x106
	.long	0x227
	.uleb128 0xd
	.long	.LASF79
	.byte	0x6
	.word	0x108
	.long	0x2e1
	.uleb128 0xe
	.long	.LASF312
	.byte	0x2
	.byte	0x6
	.word	0x110
	.long	0x31f
	.uleb128 0xf
	.long	.LASF80
	.byte	0x6
	.word	0x111
	.long	0x211
	.uleb128 0xf
	.long	.LASF81
	.byte	0x6
	.word	0x112
	.long	0xa3
	.byte	0
	.uleb128 0xd
	.long	.LASF82
	.byte	0x6
	.word	0x113
	.long	0x2f9
	.uleb128 0x10
	.long	.LASF83
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x6
	.word	0x11a
	.long	0x4d0
	.uleb128 0x6
	.long	.LASF84
	.byte	0
	.uleb128 0x6
	.long	.LASF85
	.byte	0x1
	.uleb128 0x6
	.long	.LASF86
	.byte	0x2
	.uleb128 0x6
	.long	.LASF87
	.byte	0x3
	.uleb128 0x6
	.long	.LASF88
	.byte	0x4
	.uleb128 0x6
	.long	.LASF89
	.byte	0x5
	.uleb128 0x6
	.long	.LASF90
	.byte	0x6
	.uleb128 0x6
	.long	.LASF91
	.byte	0x7
	.uleb128 0x6
	.long	.LASF92
	.byte	0x8
	.uleb128 0x6
	.long	.LASF93
	.byte	0x9
	.uleb128 0x6
	.long	.LASF94
	.byte	0xa
	.uleb128 0x6
	.long	.LASF95
	.byte	0xb
	.uleb128 0x6
	.long	.LASF96
	.byte	0xc
	.uleb128 0x6
	.long	.LASF97
	.byte	0xd
	.uleb128 0x6
	.long	.LASF98
	.byte	0xe
	.uleb128 0x6
	.long	.LASF99
	.byte	0xf
	.uleb128 0x6
	.long	.LASF100
	.byte	0x10
	.uleb128 0x6
	.long	.LASF101
	.byte	0x11
	.uleb128 0x6
	.long	.LASF102
	.byte	0x12
	.uleb128 0x6
	.long	.LASF103
	.byte	0x13
	.uleb128 0x6
	.long	.LASF104
	.byte	0x14
	.uleb128 0x6
	.long	.LASF105
	.byte	0x15
	.uleb128 0x6
	.long	.LASF106
	.byte	0x16
	.uleb128 0x6
	.long	.LASF107
	.byte	0x17
	.uleb128 0x6
	.long	.LASF108
	.byte	0x18
	.uleb128 0x6
	.long	.LASF109
	.byte	0x19
	.uleb128 0x6
	.long	.LASF110
	.byte	0x1a
	.uleb128 0x6
	.long	.LASF111
	.byte	0x1b
	.uleb128 0x6
	.long	.LASF112
	.byte	0x1c
	.uleb128 0x6
	.long	.LASF113
	.byte	0x1d
	.uleb128 0x6
	.long	.LASF114
	.byte	0x1e
	.uleb128 0x6
	.long	.LASF115
	.byte	0x1f
	.uleb128 0x6
	.long	.LASF116
	.byte	0x20
	.uleb128 0x6
	.long	.LASF117
	.byte	0x21
	.uleb128 0x6
	.long	.LASF118
	.byte	0x22
	.uleb128 0x6
	.long	.LASF119
	.byte	0x23
	.uleb128 0x6
	.long	.LASF120
	.byte	0x24
	.uleb128 0x6
	.long	.LASF121
	.byte	0x25
	.uleb128 0x6
	.long	.LASF122
	.byte	0x26
	.uleb128 0x6
	.long	.LASF123
	.byte	0x27
	.uleb128 0x6
	.long	.LASF124
	.byte	0x28
	.uleb128 0x6
	.long	.LASF125
	.byte	0x29
	.uleb128 0x6
	.long	.LASF126
	.byte	0x2a
	.uleb128 0x6
	.long	.LASF127
	.byte	0x2b
	.uleb128 0x6
	.long	.LASF128
	.byte	0x2c
	.uleb128 0x6
	.long	.LASF129
	.byte	0x2d
	.uleb128 0x6
	.long	.LASF130
	.byte	0x2e
	.uleb128 0x6
	.long	.LASF131
	.byte	0x2f
	.uleb128 0x6
	.long	.LASF132
	.byte	0x30
	.uleb128 0x6
	.long	.LASF133
	.byte	0x31
	.uleb128 0x6
	.long	.LASF134
	.byte	0x32
	.uleb128 0x6
	.long	.LASF135
	.byte	0x33
	.uleb128 0x6
	.long	.LASF136
	.byte	0x34
	.uleb128 0x6
	.long	.LASF137
	.byte	0x35
	.uleb128 0x6
	.long	.LASF138
	.byte	0x36
	.uleb128 0x6
	.long	.LASF139
	.byte	0x37
	.uleb128 0x6
	.long	.LASF140
	.byte	0x38
	.uleb128 0x6
	.long	.LASF141
	.byte	0x39
	.uleb128 0x6
	.long	.LASF142
	.byte	0x3a
	.uleb128 0x6
	.long	.LASF143
	.byte	0x3b
	.uleb128 0x6
	.long	.LASF144
	.byte	0x3c
	.uleb128 0x6
	.long	.LASF145
	.byte	0x3d
	.uleb128 0x6
	.long	.LASF146
	.byte	0x3e
	.uleb128 0x6
	.long	.LASF147
	.byte	0x3f
	.uleb128 0x6
	.long	.LASF148
	.byte	0x40
	.uleb128 0x6
	.long	.LASF149
	.byte	0x41
	.uleb128 0x6
	.long	.LASF150
	.byte	0x42
	.byte	0
	.uleb128 0xd
	.long	.LASF151
	.byte	0x6
	.word	0x170
	.long	0x32b
	.uleb128 0xd
	.long	.LASF152
	.byte	0x6
	.word	0x173
	.long	0x4d0
	.uleb128 0x11
	.long	.LASF155
	.byte	0x14
	.byte	0x7
	.byte	0x3f
	.long	0x5f7
	.uleb128 0x12
	.string	"r29"
	.byte	0x7
	.byte	0x40
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"r28"
	.byte	0x7
	.byte	0x41
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.string	"r17"
	.byte	0x7
	.byte	0x42
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.string	"r16"
	.byte	0x7
	.byte	0x43
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x12
	.string	"r15"
	.byte	0x7
	.byte	0x44
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"r14"
	.byte	0x7
	.byte	0x45
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x12
	.string	"r13"
	.byte	0x7
	.byte	0x46
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x12
	.string	"r12"
	.byte	0x7
	.byte	0x47
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x12
	.string	"r11"
	.byte	0x7
	.byte	0x48
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"r10"
	.byte	0x7
	.byte	0x49
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x12
	.string	"r9"
	.byte	0x7
	.byte	0x4a
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x12
	.string	"r8"
	.byte	0x7
	.byte	0x4b
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x12
	.string	"r7"
	.byte	0x7
	.byte	0x4c
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"r6"
	.byte	0x7
	.byte	0x4d
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x12
	.string	"r5"
	.byte	0x7
	.byte	0x4e
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x12
	.string	"r4"
	.byte	0x7
	.byte	0x4f
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x12
	.string	"r3"
	.byte	0x7
	.byte	0x50
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"r2"
	.byte	0x7
	.byte	0x51
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xc
	.long	.LASF153
	.byte	0x7
	.byte	0x52
	.long	0x5f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x4e8
	.uleb128 0x4
	.long	.LASF154
	.byte	0x7
	.byte	0x53
	.long	0x4e8
	.uleb128 0x11
	.long	.LASF156
	.byte	0x2
	.byte	0x7
	.byte	0x56
	.long	0x623
	.uleb128 0xc
	.long	.LASF157
	.byte	0x7
	.byte	0x57
	.long	0x623
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x5fd
	.uleb128 0x4
	.long	.LASF158
	.byte	0x7
	.byte	0x58
	.long	0x608
	.uleb128 0x11
	.long	.LASF159
	.byte	0x4
	.byte	0x7
	.byte	0x5a
	.long	0x65d
	.uleb128 0xc
	.long	.LASF160
	.byte	0x7
	.byte	0x5b
	.long	0x623
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF161
	.byte	0x7
	.byte	0x5c
	.long	0xc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x13
	.long	0x634
	.uleb128 0x4
	.long	.LASF162
	.byte	0x7
	.byte	0x5d
	.long	0x65d
	.uleb128 0x11
	.long	.LASF163
	.byte	0x4
	.byte	0x7
	.byte	0x5f
	.long	0x696
	.uleb128 0xc
	.long	.LASF164
	.byte	0x7
	.byte	0x60
	.long	0x69b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF165
	.byte	0x7
	.byte	0x61
	.long	0x6a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x13
	.long	0x66d
	.uleb128 0x8
	.byte	0x2
	.long	0x662
	.uleb128 0x8
	.byte	0x2
	.long	0x629
	.uleb128 0x4
	.long	.LASF166
	.byte	0x7
	.byte	0x65
	.long	0x696
	.uleb128 0x11
	.long	.LASF167
	.byte	0x4
	.byte	0x8
	.byte	0x45
	.long	0x6db
	.uleb128 0xc
	.long	.LASF168
	.byte	0x8
	.byte	0x46
	.long	0x6db
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF169
	.byte	0x8
	.byte	0x47
	.long	0x763
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x6b2
	.uleb128 0x11
	.long	.LASF170
	.byte	0xe
	.byte	0x9
	.byte	0xac
	.long	0x75e
	.uleb128 0x12
	.string	"hdb"
	.byte	0x9
	.byte	0xad
	.long	0x6a7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF171
	.byte	0x9
	.byte	0xae
	.long	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"tid"
	.byte	0x9
	.byte	0xaf
	.long	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF172
	.byte	0x9
	.byte	0xb0
	.long	0x166
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xc
	.long	.LASF173
	.byte	0x9
	.byte	0xb1
	.long	0x126
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xc
	.long	.LASF174
	.byte	0x9
	.byte	0xb2
	.long	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xc
	.long	.LASF175
	.byte	0x9
	.byte	0xb3
	.long	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.long	.LASF176
	.byte	0x9
	.byte	0xb4
	.long	0x11b
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x13
	.long	0x6e1
	.uleb128 0x8
	.byte	0x2
	.long	0x75e
	.uleb128 0x4
	.long	.LASF177
	.byte	0x8
	.byte	0x48
	.long	0x6b2
	.uleb128 0x4
	.long	.LASF178
	.byte	0x8
	.byte	0x9f
	.long	0x77f
	.uleb128 0x8
	.byte	0x2
	.long	0x769
	.uleb128 0x4
	.long	.LASF179
	.byte	0x9
	.byte	0x50
	.long	0xf2
	.uleb128 0x4
	.long	.LASF180
	.byte	0x9
	.byte	0x52
	.long	0x57
	.uleb128 0xa
	.long	.LASF181
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x9
	.byte	0x63
	.long	0x7ef
	.uleb128 0x6
	.long	.LASF182
	.byte	0
	.uleb128 0x6
	.long	.LASF183
	.byte	0x1
	.uleb128 0x6
	.long	.LASF184
	.byte	0x2
	.uleb128 0x6
	.long	.LASF185
	.byte	0x3
	.uleb128 0x6
	.long	.LASF186
	.byte	0x4
	.uleb128 0x6
	.long	.LASF187
	.byte	0x5
	.uleb128 0x6
	.long	.LASF188
	.byte	0x6
	.uleb128 0x6
	.long	.LASF189
	.byte	0x7
	.uleb128 0x6
	.long	.LASF190
	.byte	0x8
	.uleb128 0x6
	.long	.LASF191
	.byte	0x9
	.uleb128 0x6
	.long	.LASF192
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	.LASF193
	.byte	0x9
	.byte	0x6f
	.long	0x79b
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x9
	.byte	0x71
	.long	0x820
	.uleb128 0x6
	.long	.LASF194
	.byte	0
	.uleb128 0x6
	.long	.LASF195
	.byte	0x1
	.uleb128 0x6
	.long	.LASF196
	.byte	0x2
	.uleb128 0x6
	.long	.LASF197
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF198
	.byte	0x9
	.byte	0x79
	.long	0x7fa
	.uleb128 0x11
	.long	.LASF199
	.byte	0x5
	.byte	0x9
	.byte	0x7f
	.long	0x862
	.uleb128 0xc
	.long	.LASF168
	.byte	0x9
	.byte	0x80
	.long	0x890
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF200
	.byte	0x9
	.byte	0x81
	.long	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF201
	.byte	0x9
	.byte	0x83
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x11
	.long	.LASF202
	.byte	0x3
	.byte	0x9
	.byte	0x91
	.long	0x88b
	.uleb128 0xc
	.long	.LASF203
	.byte	0x9
	.byte	0x92
	.long	0x8a1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF204
	.byte	0x9
	.byte	0x93
	.long	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x13
	.long	0x862
	.uleb128 0x8
	.byte	0x2
	.long	0x88b
	.uleb128 0x4
	.long	.LASF205
	.byte	0x9
	.byte	0x88
	.long	0x82b
	.uleb128 0x8
	.byte	0x2
	.long	0x896
	.uleb128 0x4
	.long	.LASF206
	.byte	0x9
	.byte	0x99
	.long	0x88b
	.uleb128 0x11
	.long	.LASF207
	.byte	0xa
	.byte	0x9
	.byte	0x9c
	.long	0x913
	.uleb128 0xc
	.long	.LASF208
	.byte	0x9
	.byte	0x9d
	.long	0x11b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF209
	.byte	0x9
	.byte	0x9e
	.long	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.long	.LASF210
	.byte	0x9
	.byte	0x9f
	.long	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF211
	.byte	0x9
	.byte	0xa1
	.long	0x913
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF212
	.byte	0x9
	.byte	0xa4
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF213
	.byte	0x9
	.byte	0xa5
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x8a7
	.uleb128 0x13
	.long	0x913
	.uleb128 0x4
	.long	.LASF214
	.byte	0x9
	.byte	0xaa
	.long	0x8b2
	.uleb128 0x8
	.byte	0x2
	.long	0x91e
	.uleb128 0x4
	.long	.LASF215
	.byte	0x9
	.byte	0xb8
	.long	0x75e
	.uleb128 0x8
	.byte	0x2
	.long	0x92f
	.uleb128 0x13
	.long	0x93a
	.uleb128 0x4
	.long	.LASF216
	.byte	0x9
	.byte	0xcb
	.long	0x950
	.uleb128 0x8
	.byte	0x2
	.long	0x991
	.uleb128 0x14
	.long	.LASF217
	.byte	0xe
	.byte	0x9
	.word	0x110
	.long	0x991
	.uleb128 0x15
	.long	.LASF218
	.byte	0x9
	.word	0x111
	.long	0xb1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.long	.LASF219
	.byte	0x9
	.word	0x112
	.long	0xa7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x15
	.long	.LASF220
	.byte	0x9
	.word	0x116
	.long	0xabc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x13
	.long	0x956
	.uleb128 0x11
	.long	.LASF221
	.byte	0x4
	.byte	0x9
	.byte	0xcd
	.long	0x9bf
	.uleb128 0xc
	.long	.LASF222
	.byte	0x9
	.byte	0xce
	.long	0x945
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF223
	.byte	0x9
	.byte	0xcf
	.long	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF224
	.byte	0x9
	.byte	0xd3
	.long	0x996
	.uleb128 0x11
	.long	.LASF225
	.byte	0x8
	.byte	0x9
	.byte	0xdc
	.long	0x9f3
	.uleb128 0xc
	.long	.LASF226
	.byte	0x9
	.byte	0xdd
	.long	0x9f8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF227
	.byte	0x9
	.byte	0xe1
	.long	0x1fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x13
	.long	0x9ca
	.uleb128 0x8
	.byte	0x2
	.long	0x9bf
	.uleb128 0x4
	.long	.LASF228
	.byte	0x9
	.byte	0xe5
	.long	0x9f3
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x30
	.byte	0x9
	.byte	0xe7
	.long	0xa2f
	.uleb128 0x6
	.long	.LASF229
	.byte	0
	.uleb128 0x6
	.long	.LASF230
	.byte	0x1
	.uleb128 0x6
	.long	.LASF231
	.byte	0x2
	.uleb128 0x6
	.long	.LASF232
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF233
	.byte	0x9
	.byte	0xec
	.long	0xa09
	.uleb128 0x11
	.long	.LASF234
	.byte	0x8
	.byte	0x9
	.byte	0xee
	.long	0xa7d
	.uleb128 0x12
	.string	"f"
	.byte	0x9
	.byte	0xef
	.long	0x785
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF169
	.byte	0x9
	.byte	0xf0
	.long	0x93a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF219
	.byte	0x9
	.byte	0xf1
	.long	0xa7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF235
	.byte	0x9
	.byte	0xf3
	.long	0x206
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x9fe
	.uleb128 0x13
	.long	0xa7d
	.uleb128 0x4
	.long	.LASF234
	.byte	0x9
	.byte	0xf5
	.long	0xa3a
	.uleb128 0x11
	.long	.LASF236
	.byte	0xa
	.byte	0x9
	.byte	0xf7
	.long	0xabc
	.uleb128 0xc
	.long	.LASF237
	.byte	0x9
	.byte	0xf8
	.long	0xa88
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF238
	.byte	0x9
	.byte	0xf9
	.long	0xa2f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF239
	.byte	0x9
	.byte	0xfa
	.long	0xa93
	.uleb128 0x14
	.long	.LASF240
	.byte	0x8
	.byte	0x9
	.word	0x103
	.long	0xb11
	.uleb128 0x15
	.long	.LASF168
	.byte	0x9
	.word	0x104
	.long	0x950
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.long	.LASF241
	.byte	0x9
	.word	0x105
	.long	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x15
	.long	.LASF242
	.byte	0x9
	.word	0x106
	.long	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.long	.LASF243
	.byte	0x9
	.word	0x109
	.long	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xd
	.long	.LASF244
	.byte	0x9
	.word	0x10e
	.long	0xac7
	.uleb128 0x8
	.byte	0x2
	.long	0xb11
	.uleb128 0xd
	.long	.LASF245
	.byte	0x9
	.word	0x11a
	.long	0x991
	.uleb128 0x14
	.long	.LASF246
	.byte	0x6
	.byte	0x9
	.word	0x11d
	.long	0xb6a
	.uleb128 0x15
	.long	.LASF247
	.byte	0x9
	.word	0x11e
	.long	0xb6f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.long	.LASF248
	.byte	0x9
	.word	0x11f
	.long	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x15
	.long	.LASF243
	.byte	0x9
	.word	0x120
	.long	0x1bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x13
	.long	0xb2f
	.uleb128 0x8
	.byte	0x2
	.long	0xb23
	.uleb128 0xd
	.long	.LASF249
	.byte	0x9
	.word	0x121
	.long	0xb6a
	.uleb128 0x14
	.long	.LASF250
	.byte	0x4
	.byte	0x9
	.word	0x123
	.long	0xbad
	.uleb128 0x15
	.long	.LASF251
	.byte	0x9
	.word	0x124
	.long	0xbbd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.long	.LASF252
	.byte	0x9
	.word	0x125
	.long	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x13
	.long	0xb81
	.uleb128 0x16
	.long	0xb75
	.long	0xbbd
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xbb2
	.uleb128 0xd
	.long	.LASF253
	.byte	0x9
	.word	0x126
	.long	0xbad
	.uleb128 0xd
	.long	.LASF254
	.byte	0x9
	.word	0x135
	.long	0xb23
	.uleb128 0x14
	.long	.LASF255
	.byte	0x4
	.byte	0x9
	.word	0x13c
	.long	0xc07
	.uleb128 0x15
	.long	.LASF256
	.byte	0x9
	.word	0x13d
	.long	0xc17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.long	.LASF257
	.byte	0x9
	.word	0x13e
	.long	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x13
	.long	0xbdb
	.uleb128 0x16
	.long	0x940
	.long	0xc17
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xc0c
	.uleb128 0xd
	.long	.LASF258
	.byte	0x9
	.word	0x13f
	.long	0xc07
	.uleb128 0x14
	.long	.LASF259
	.byte	0x1c
	.byte	0x9
	.word	0x142
	.long	0xd35
	.uleb128 0x15
	.long	.LASF260
	.byte	0x9
	.word	0x143
	.long	0x93a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.string	"rq"
	.byte	0x9
	.word	0x148
	.long	0x774
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x15
	.long	.LASF261
	.byte	0x9
	.word	0x149
	.long	0x77f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.long	.LASF262
	.byte	0x9
	.word	0x14e
	.long	0x77f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x15
	.long	.LASF263
	.byte	0x9
	.word	0x14f
	.long	0x820
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.long	.LASF264
	.byte	0x9
	.word	0x150
	.long	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x15
	.long	.LASF265
	.byte	0x9
	.word	0x152
	.long	0x2ed
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x15
	.long	.LASF266
	.byte	0x9
	.word	0x154
	.long	0x4dc
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x15
	.long	.LASF267
	.byte	0x9
	.word	0x157
	.long	0x31f
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x15
	.long	.LASF268
	.byte	0x9
	.word	0x158
	.long	0x31f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x15
	.long	.LASF269
	.byte	0x9
	.word	0x159
	.long	0x31f
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0x15
	.long	.LASF270
	.byte	0x9
	.word	0x15c
	.long	0x7ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x15
	.long	.LASF271
	.byte	0x9
	.word	0x163
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0x15
	.long	.LASF272
	.byte	0x9
	.word	0x164
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x15
	.long	.LASF273
	.byte	0x9
	.word	0x165
	.long	0x790
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0x15
	.long	.LASF274
	.byte	0x9
	.word	0x166
	.long	0x790
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x15
	.long	.LASF275
	.byte	0x9
	.word	0x167
	.long	0x790
	.byte	0x2
	.byte	0x23
	.uleb128 0x1b
	.byte	0
	.uleb128 0xd
	.long	.LASF276
	.byte	0x9
	.word	0x16b
	.long	0xc29
	.uleb128 0x14
	.long	.LASF277
	.byte	0x10
	.byte	0x9
	.word	0x16d
	.long	0xdc7
	.uleb128 0x15
	.long	.LASF278
	.byte	0x9
	.word	0x171
	.long	0xdcc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.long	.LASF279
	.byte	0x9
	.word	0x173
	.long	0x126
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x15
	.long	.LASF280
	.byte	0x9
	.word	0x175
	.long	0x93a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.long	.LASF281
	.byte	0x9
	.word	0x177
	.long	0xa7d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x15
	.long	.LASF282
	.byte	0x9
	.word	0x17a
	.long	0xddd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.long	.LASF283
	.byte	0x9
	.word	0x17b
	.long	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x15
	.long	.LASF284
	.byte	0x9
	.word	0x17e
	.long	0xdee
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.long	.LASF285
	.byte	0x9
	.word	0x17f
	.long	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x13
	.long	0xd41
	.uleb128 0x8
	.byte	0x2
	.long	0xd35
	.uleb128 0x16
	.long	0xc1d
	.long	0xddd
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xdd2
	.uleb128 0x16
	.long	0xbc3
	.long	0xdee
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xde3
	.uleb128 0xd
	.long	.LASF286
	.byte	0x9
	.word	0x184
	.long	0xdc7
	.uleb128 0x14
	.long	.LASF287
	.byte	0x1
	.byte	0x9
	.word	0x186
	.long	0xe1d
	.uleb128 0x15
	.long	.LASF288
	.byte	0x9
	.word	0x19c
	.long	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.long	.LASF289
	.byte	0x9
	.word	0x19e
	.long	0xe00
	.uleb128 0x14
	.long	.LASF290
	.byte	0x16
	.byte	0x9
	.word	0x1a0
	.long	0xedc
	.uleb128 0x15
	.long	.LASF291
	.byte	0x9
	.word	0x1a1
	.long	0xee1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.long	.LASF256
	.byte	0x9
	.word	0x1a8
	.long	0xc17
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x15
	.long	.LASF292
	.byte	0x9
	.word	0x1ae
	.long	0xef2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.long	.LASF257
	.byte	0x9
	.word	0x1b0
	.long	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x15
	.long	.LASF293
	.byte	0x9
	.word	0x1b1
	.long	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.long	.LASF294
	.byte	0x9
	.word	0x1b3
	.long	0xf03
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x15
	.long	.LASF295
	.byte	0x9
	.word	0x1b4
	.long	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.long	.LASF296
	.byte	0x9
	.word	0x1b7
	.long	0xf14
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x15
	.long	.LASF297
	.byte	0x9
	.word	0x1b8
	.long	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.long	.LASF298
	.byte	0x9
	.word	0x1ba
	.long	0xf30
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x15
	.long	.LASF299
	.byte	0x9
	.word	0x1bb
	.long	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x13
	.long	0xe29
	.uleb128 0x8
	.byte	0x2
	.long	0xe1d
	.uleb128 0x16
	.long	0x769
	.long	0xef2
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xee7
	.uleb128 0x16
	.long	0x919
	.long	0xf03
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xef8
	.uleb128 0x16
	.long	0xa83
	.long	0xf14
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xf09
	.uleb128 0x16
	.long	0xf2b
	.long	0xf25
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xbcf
	.uleb128 0x13
	.long	0xf25
	.uleb128 0x8
	.byte	0x2
	.long	0xf1a
	.uleb128 0xd
	.long	.LASF300
	.byte	0x9
	.word	0x1c1
	.long	0xedc
	.uleb128 0x19
	.string	"KDB"
	.byte	0xa
	.byte	0x3b
	.long	0xf36
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"CDB"
	.byte	0xa
	.byte	0x3c
	.long	0xdf4
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"KCB"
	.byte	0xa
	.byte	0x3d
	.long	0xe1d
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"CCB"
	.byte	0xa
	.byte	0x3e
	.long	0xd35
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF301
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.long	.LFB62
	.long	.LFE62
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xfe3
	.uleb128 0x1b
	.string	"t"
	.byte	0x1
	.byte	0x59
	.long	0x105
	.long	.LLST1
	.uleb128 0x1c
	.long	0x1023
	.long	.LBB14
	.long	.LBE14
	.byte	0x1
	.byte	0x64
	.uleb128 0x1d
	.long	0x1034
	.long	.LLST2
	.uleb128 0x1e
	.long	.LBB15
	.long	.LBE15
	.uleb128 0x1f
	.long	0x103f
	.byte	0
	.uleb128 0x20
	.long	0x104a
	.uleb128 0x20
	.long	0x1055
	.uleb128 0x21
	.long	0x1060
	.long	.LLST3
	.uleb128 0x22
	.long	.LVL6
	.long	0x10a5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF302
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.long	.LFB61
	.long	.LFE61
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1023
	.uleb128 0x1b
	.string	"f"
	.byte	0x1
	.byte	0x43
	.long	0xe7
	.long	.LLST0
	.uleb128 0x23
	.long	0x1082
	.long	.LBB8
	.long	.LBE8
	.byte	0x1
	.byte	0x4a
	.uleb128 0x24
	.long	.LVL1
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0
	.uleb128 0x25
	.long	.LASF313
	.byte	0x3
	.byte	0xb9
	.byte	0x1
	.long	0x2ed
	.byte	0x3
	.long	0x106c
	.uleb128 0x26
	.long	.LASF314
	.byte	0x3
	.byte	0xbb
	.long	0x105
	.uleb128 0x27
	.long	.LASF303
	.byte	0x3
	.byte	0xbe
	.long	0x2ed
	.uleb128 0x27
	.long	.LASF304
	.byte	0x3
	.byte	0xbf
	.long	0x1072
	.uleb128 0x27
	.long	.LASF305
	.byte	0x3
	.byte	0xc0
	.long	0x107d
	.uleb128 0x27
	.long	.LASF306
	.byte	0x3
	.byte	0xc2
	.long	0x940
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xf36
	.uleb128 0x13
	.long	0x106c
	.uleb128 0x8
	.byte	0x2
	.long	0xdf4
	.uleb128 0x13
	.long	0x1077
	.uleb128 0x28
	.long	.LASF315
	.byte	0x2
	.byte	0x67
	.byte	0x1
	.byte	0x3
	.uleb128 0x29
	.long	.LASF307
	.byte	0xa
	.byte	0x4e
	.byte	0x1
	.long	0x106c
	.byte	0x3
	.uleb128 0x29
	.long	.LASF308
	.byte	0xa
	.byte	0x46
	.byte	0x1
	.long	0x1077
	.byte	0x3
	.uleb128 0x2a
	.byte	0x1
	.byte	0x1
	.long	.LASF316
	.long	.LASF316
	.byte	0xb
	.byte	0x93
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.long	.LVL2
	.long	.LVL4
	.word	0x1
	.byte	0x68
	.long	.LVL4
	.long	.LFE62
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL4
	.word	0x1
	.byte	0x68
	.long	.LVL4
	.long	.LVL6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL6-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST0:
	.long	.LVL0
	.long	.LVL1-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1-1
	.long	.LFE61
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.long	.LFB62
	.long	.LFE62-.LFB62
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB61
	.long	.LFE61
	.long	.LFB62
	.long	.LFE62
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF289:
	.string	"OsEE_KCB"
.LASF218:
	.string	"p_trigger_cb"
.LASF140:
	.string	"OSServiceId_StartOS"
.LASF232:
	.string	"OSEE_ACTION_CALLBACK"
.LASF61:
	.string	"E_OS_MISSINGEND"
.LASF63:
	.string	"E_OS_STACKFAULT"
.LASF132:
	.string	"OSServiceId_GetCounterValue"
.LASF222:
	.string	"trigger_queue"
.LASF286:
	.string	"OsEE_CDB"
.LASF277:
	.string	"OsEE_CDB_tag"
.LASF81:
	.string	"p_param"
.LASF311:
	.string	"/home/user/Osek/OSEK-Project/erika"
.LASF35:
	.string	"OSEE_TASK_READY_STACKED"
.LASF257:
	.string	"tdb_array_size"
.LASF46:
	.string	"EventMaskType"
.LASF25:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF178:
	.string	"OsEE_RQ"
.LASF175:
	.string	"dispatch_prio"
.LASF141:
	.string	"OSServiceId_StartOS_Entry"
.LASF19:
	.string	"OsEE_void_cb"
.LASF247:
	.string	"p_trigger_db"
.LASF273:
	.string	"s_isr_all_cnt"
.LASF117:
	.string	"OSServiceId_GetEvent_Entry"
.LASF0:
	.string	"unsigned int"
.LASF245:
	.string	"OsEE_TriggerDB"
.LASF279:
	.string	"p_idle_hook"
.LASF41:
	.string	"TickType"
.LASF281:
	.string	"p_sys_counter_db"
.LASF180:
	.string	"OsEE_byte"
.LASF59:
	.string	"E_OS_SERVICEID"
.LASF143:
	.string	"OSId_TaskBody_Entry"
.LASF202:
	.string	"OsEE_MDB_tag"
.LASF235:
	.string	"mask"
.LASF240:
	.string	"OsEE_TriggerCB_tag"
.LASF85:
	.string	"OSServiceId_ActivateTask_Entry"
.LASF270:
	.string	"os_context"
.LASF294:
	.string	"p_res_ptr_array"
.LASF241:
	.string	"when"
.LASF288:
	.string	"dummy"
.LASF120:
	.string	"OSServiceId_GetAlarmBase"
.LASF183:
	.string	"OSEE_TASK_CTX"
.LASF47:
	.string	"ObjectIDType"
.LASF56:
	.string	"E_OS_RESOURCE"
.LASF130:
	.string	"OSServiceId_IncrementCounter"
.LASF152:
	.string	"OSServiceIdType"
.LASF177:
	.string	"OsEE_SN"
.LASF99:
	.string	"OSServiceId_EnableAllInterrupts_Entry"
.LASF204:
	.string	"mtx_prio"
.LASF157:
	.string	"p_tos"
.LASF121:
	.string	"OSServiceId_GetAlarmBase_Entry"
.LASF18:
	.string	"OsEE_event_mask"
.LASF43:
	.string	"ticksperbase"
.LASF86:
	.string	"OSServiceId_TerminateTask"
.LASF244:
	.string	"OsEE_TriggerCB"
.LASF88:
	.string	"OSServiceId_ChainTask"
.LASF55:
	.string	"E_OS_NOFUNC"
.LASF312:
	.string	"OsEE_api_param_tag"
.LASF31:
	.string	"OsEE_task_type_tag"
.LASF242:
	.string	"active"
.LASF158:
	.string	"OsEE_SCB"
.LASF213:
	.string	"event_mask"
.LASF280:
	.string	"p_idle_task"
.LASF106:
	.string	"OSServiceId_ResumeOSInterrupts"
.LASF17:
	.string	"OsEE_tick_type"
.LASF310:
	.string	"/home/user/Osek/OSEK-Project/erika/src/ee_avr8_irqstub.c"
.LASF151:
	.string	"OsEE_service_id_type"
.LASF29:
	.string	"OsEE_task_type"
.LASF308:
	.string	"osEE_get_curr_core"
.LASF174:
	.string	"ready_prio"
.LASF250:
	.string	"OsEE_autostart_trigger_tag"
.LASF162:
	.string	"OsEE_SDB"
.LASF194:
	.string	"OSEE_KERNEL_STOPPED"
.LASF9:
	.string	"long long unsigned int"
.LASF164:
	.string	"p_sdb"
.LASF21:
	.string	"TaskType"
.LASF48:
	.string	"MemSize"
.LASF163:
	.string	"OsEE_HDB_tag"
.LASF225:
	.string	"OsEE_CounterDB_tag"
.LASF138:
	.string	"OSServiceId_ShutdownOS"
.LASF226:
	.string	"p_counter_cb"
.LASF246:
	.string	"OsEE_autostart_trigger_info_tag"
.LASF223:
	.string	"value"
.LASF173:
	.string	"task_func"
.LASF96:
	.string	"OSServiceId_DisableAllInterrupts"
.LASF110:
	.string	"OSServiceId_ReleaseResource"
.LASF100:
	.string	"OSServiceId_SuspendAllInterrupts"
.LASF94:
	.string	"OSServiceId_GetTaskState"
.LASF40:
	.string	"TaskStateType"
.LASF50:
	.string	"E_OK"
.LASF292:
	.string	"p_sn_array"
.LASF209:
	.string	"current_prio"
.LASF287:
	.string	"OsEE_KCB_tag"
.LASF260:
	.string	"p_curr"
.LASF216:
	.string	"OsEE_TriggerQ"
.LASF231:
	.string	"OSEE_ACTION_COUNTER"
.LASF34:
	.string	"OSEE_TASK_READY"
.LASF171:
	.string	"p_tcb"
.LASF298:
	.string	"p_alarm_ptr_array"
.LASF262:
	.string	"p_stk_sn"
.LASF299:
	.string	"alarm_array_size"
.LASF135:
	.string	"OSServiceId_GetElapsedValue_Entry"
.LASF16:
	.string	"OsEE_mem_size"
.LASF77:
	.string	"E_OS_SYS_ACT"
.LASF42:
	.string	"maxallowedvalue"
.LASF248:
	.string	"increment"
.LASF133:
	.string	"OSServiceId_GetCounterValue_Entry"
.LASF219:
	.string	"p_counter_db"
.LASF115:
	.string	"OSServiceId_ClearEvent_Entry"
.LASF296:
	.string	"p_counter_ptr_array"
.LASF114:
	.string	"OSServiceId_ClearEvent"
.LASF53:
	.string	"E_OS_ID"
.LASF313:
	.string	"osEE_activate_isr2"
.LASF188:
	.string	"OSEE_POSTTASKHOOK_CTX"
.LASF45:
	.string	"AlarmBaseType"
.LASF198:
	.string	"OsEE_kernel_status"
.LASF169:
	.string	"p_tdb"
.LASF314:
	.string	"isr2_id"
.LASF71:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF179:
	.string	"OsEE_kernel_cb"
.LASF54:
	.string	"E_OS_LIMIT"
.LASF285:
	.string	"autostart_trigger_array_size"
.LASF20:
	.string	"AppModeType"
.LASF148:
	.string	"OSId_Kernel"
.LASF305:
	.string	"p_cdb"
.LASF30:
	.string	"TaskExecutionType"
.LASF264:
	.string	"app_mode"
.LASF124:
	.string	"OSServiceId_SetRelAlarm"
.LASF91:
	.string	"OSServiceId_Schedule_Entry"
.LASF271:
	.string	"prev_s_isr_all_status"
.LASF72:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF195:
	.string	"OSEE_KERNEL_STARTING"
.LASF199:
	.string	"OsEE_MCB_tag"
.LASF254:
	.string	"OsEE_AlarmDB"
.LASF150:
	.string	"OsId_Invalid"
.LASF5:
	.string	"uint8_t"
.LASF210:
	.string	"status"
.LASF238:
	.string	"type"
.LASF24:
	.string	"TaskFunc"
.LASF201:
	.string	"locked"
.LASF155:
	.string	"OsEE_CTX_tag"
.LASF221:
	.string	"OsEE_CounterCB_tag"
.LASF103:
	.string	"OSServiceId_ResumeAllInterrupts_Entry"
.LASF159:
	.string	"OsEE_SDB_tag"
.LASF68:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF64:
	.string	"E_OS_PARAM_POINTER"
.LASF239:
	.string	"OsEE_action"
.LASF112:
	.string	"OSServiceId_SetEvent"
.LASF229:
	.string	"OSEE_ACTION_TASK"
.LASF122:
	.string	"OSServiceId_GetAlarm"
.LASF1:
	.string	"long long int"
.LASF49:
	.string	"OsEE_status_type_tag"
.LASF131:
	.string	"OSServiceId_IncrementCounter_Entry"
.LASF193:
	.string	"OsEE_os_context"
.LASF147:
	.string	"OSId_Action_Entry"
.LASF78:
	.string	"OsEE_status_type"
.LASF125:
	.string	"OSServiceId_SetRelAlarm_Entry"
.LASF189:
	.string	"OSEE_STARTUPHOOK_CTX"
.LASF129:
	.string	"OSServiceId_CancelAlarm_Entry"
.LASF107:
	.string	"OSServiceId_ResumeOSInterrupts_Entry"
.LASF134:
	.string	"OSServiceId_GetElapsedValue"
.LASF87:
	.string	"OSServiceId_TerminateTask_Entry"
.LASF203:
	.string	"p_mcb"
.LASF224:
	.string	"OsEE_CounterCB"
.LASF139:
	.string	"OSServiceId_ShutdownOS_Entry"
.LASF12:
	.string	"OsEE_bool"
.LASF237:
	.string	"param"
.LASF214:
	.string	"OsEE_TCB"
.LASF258:
	.string	"OsEE_autostart_tdb"
.LASF28:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF38:
	.string	"OSEE_TASK_CHAINED"
.LASF227:
	.string	"info"
.LASF297:
	.string	"counter_array_size"
.LASF263:
	.string	"os_status"
.LASF278:
	.string	"p_ccb"
.LASF307:
	.string	"osEE_get_kernel"
.LASF295:
	.string	"res_array_size"
.LASF187:
	.string	"OSEE_PRETASKHOOK_CTX"
.LASF70:
	.string	"E_OS_SPINLOCK"
.LASF108:
	.string	"OSServiceId_GetResource"
.LASF76:
	.string	"E_OS_SYS_STACK"
.LASF167:
	.string	"OsEE_SN_tag"
.LASF191:
	.string	"OSEE_ALARMCALLBACK_CTX"
.LASF10:
	.string	"OSEE_FALSE"
.LASF2:
	.string	"long double"
.LASF6:
	.string	"uint16_t"
.LASF145:
	.string	"OSId_ISR2Body_Entry"
.LASF192:
	.string	"OSEE_IDLE_CTX"
.LASF215:
	.string	"OsEE_TDB"
.LASF249:
	.string	"OsEE_autostart_trigger_info"
.LASF128:
	.string	"OSServiceId_CancelAlarm"
.LASF256:
	.string	"p_tdb_ptr_array"
.LASF275:
	.string	"d_isr_all_cnt"
.LASF207:
	.string	"OsEE_TCB_tag"
.LASF11:
	.string	"OSEE_TRUE"
.LASF36:
	.string	"OSEE_TASK_WAITING"
.LASF185:
	.string	"OSEE_ERRORHOOK_CTX"
.LASF97:
	.string	"OSServiceId_DisableAllInterrupts_Entry"
.LASF118:
	.string	"OSServiceId_WaitEvent"
.LASF230:
	.string	"OSEE_ACTION_EVENT"
.LASF23:
	.string	"TaskActivation"
.LASF142:
	.string	"OSId_TaskBody"
.LASF33:
	.string	"OSEE_TASK_SUSPENDED"
.LASF172:
	.string	"task_type"
.LASF252:
	.string	"trigger_array_size"
.LASF7:
	.string	"long int"
.LASF212:
	.string	"wait_mask"
.LASF228:
	.string	"OsEE_CounterDB"
.LASF236:
	.string	"OsEE_action_tag"
.LASF266:
	.string	"service_id"
.LASF301:
	.string	"osEE_avr8_isr2_stub"
.LASF102:
	.string	"OSServiceId_ResumeAllInterrupts"
.LASF95:
	.string	"OSServiceId_GetTaskState_Entry"
.LASF92:
	.string	"OSServiceId_GetTaskID"
.LASF243:
	.string	"cycle"
.LASF168:
	.string	"p_next"
.LASF176:
	.string	"max_num_of_act"
.LASF144:
	.string	"OSId_ISR2Body"
.LASF22:
	.string	"TaskPrio"
.LASF153:
	.string	"p_ctx"
.LASF220:
	.string	"action"
.LASF65:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF32:
	.string	"OsEE_task_status_tag"
.LASF89:
	.string	"OSServiceId_ChainTask_Entry"
.LASF217:
	.string	"OsEE_TriggerDB_tag"
.LASF302:
	.string	"osEE_avr8_isr1_stub"
.LASF184:
	.string	"OSEE_TASK_ISR2_CTX"
.LASF14:
	.string	"OsEE_reg"
.LASF79:
	.string	"StatusType"
.LASF282:
	.string	"p_autostart_tdb_array"
.LASF127:
	.string	"OSServiceId_SetAbsAlarm_Entry"
.LASF69:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF291:
	.string	"p_kcb"
.LASF234:
	.string	"OsEE_action_param"
.LASF58:
	.string	"E_OS_VALUE"
.LASF67:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF186:
	.string	"OSEE_PROTECTIONHOOK_CTX"
.LASF293:
	.string	"sn_array_size"
.LASF37:
	.string	"OSEE_TASK_RUNNING"
.LASF265:
	.string	"last_error"
.LASF90:
	.string	"OSServiceId_Schedule"
.LASF137:
	.string	"OSServiceId_GetActiveApplicationMode_Entry"
.LASF233:
	.string	"OsEE_action_type"
.LASF136:
	.string	"OSServiceId_GetActiveApplicationMode"
.LASF98:
	.string	"OSServiceId_EnableAllInterrupts"
.LASF8:
	.string	"long unsigned int"
.LASF272:
	.string	"prev_s_isr_os_status"
.LASF205:
	.string	"OsEE_MCB"
.LASF284:
	.string	"p_autostart_trigger_array"
.LASF60:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF62:
	.string	"E_OS_DISABLEDINT"
.LASF274:
	.string	"s_isr_os_cnt"
.LASF182:
	.string	"OSEE_KERNEL_CTX"
.LASF303:
	.string	"ret_val"
.LASF149:
	.string	"OSId_Kernel_Entry"
.LASF75:
	.string	"E_OS_SYS_TASK"
.LASF300:
	.string	"OsEE_KDB"
.LASF4:
	.string	"unsigned char"
.LASF156:
	.string	"OsEE_SCB_tag"
.LASF52:
	.string	"E_OS_CALLEVEL"
.LASF126:
	.string	"OSServiceId_SetAbsAlarm"
.LASF51:
	.string	"E_OS_ACCESS"
.LASF304:
	.string	"p_kdb"
.LASF39:
	.string	"OsEE_task_status"
.LASF57:
	.string	"E_OS_STATE"
.LASF206:
	.string	"OsEE_MDB"
.LASF197:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF26:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF283:
	.string	"autostart_tdb_array_size"
.LASF146:
	.string	"OSId_Action"
.LASF123:
	.string	"OSServiceId_GetAlarm_Entry"
.LASF166:
	.string	"OsEE_HDB"
.LASF116:
	.string	"OSServiceId_GetEvent"
.LASF190:
	.string	"OSEE_SHUTDOWNHOOK_CTX"
.LASF44:
	.string	"mincycle"
.LASF66:
	.string	"E_OS_PROTECTION_TIME"
.LASF84:
	.string	"OSServiceId_ActivateTask"
.LASF309:
	.string	"GNU C11 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF200:
	.string	"prev_prio"
.LASF27:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF316:
	.string	"osEE_scheduler_task_set_running"
.LASF276:
	.string	"OsEE_CCB"
.LASF13:
	.string	"OsEE_addr"
.LASF3:
	.string	"signed char"
.LASF259:
	.string	"OsEE_CCB_tag"
.LASF306:
	.string	"p_act_tdb"
.LASF196:
	.string	"OSEE_KERNEL_STARTED"
.LASF211:
	.string	"p_first_mtx"
.LASF83:
	.string	"OsEE_service_id_type_tag"
.LASF101:
	.string	"OSServiceId_SuspendAllInterrupts_Entry"
.LASF170:
	.string	"OsEE_TDB_tag"
.LASF165:
	.string	"p_scb"
.LASF93:
	.string	"OSServiceId_GetTaskID_Entry"
.LASF73:
	.string	"E_OS_CORE"
.LASF113:
	.string	"OSServiceId_SetEvent_Entry"
.LASF161:
	.string	"stack_size"
.LASF82:
	.string	"OsEE_api_param"
.LASF208:
	.string	"current_num_of_act"
.LASF111:
	.string	"OSServiceId_ReleaseResource_Entry"
.LASF290:
	.string	"OsEE_KDB_tag"
.LASF253:
	.string	"OsEE_autostart_trigger"
.LASF261:
	.string	"p_free_sn"
.LASF154:
	.string	"OsEE_CTX"
.LASF105:
	.string	"OSServiceId_SuspendOSInterrupts_Entry"
.LASF181:
	.string	"OsEE_os_context_tag"
.LASF104:
	.string	"OSServiceId_SuspendOSInterrupts"
.LASF255:
	.string	"OsEE_autostart_tdb_tag"
.LASF251:
	.string	"p_trigger_ptr_array"
.LASF315:
	.string	"osEE_hal_enableIRQ"
.LASF267:
	.string	"api_param1"
.LASF268:
	.string	"api_param2"
.LASF269:
	.string	"api_param3"
.LASF119:
	.string	"OSServiceId_WaitEvent_Entry"
.LASF80:
	.string	"num_param"
.LASF74:
	.string	"E_OS_SYS_INIT"
.LASF160:
	.string	"p_bos"
.LASF15:
	.string	"OsEE_object_id_type"
.LASF109:
	.string	"OSServiceId_GetResource_Entry"
	.ident	"GCC: (GNU) 7.3.0"

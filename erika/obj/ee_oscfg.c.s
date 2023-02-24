	.file	"ee_oscfg.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
.Letext0:
	.file 1 "/home/user/arduino-1.8.15/hardware/tools/avr/avr/include/stdint.h"
	.file 2 "/home/user/Osek/OSEK-Project/erika/inc/ee_platform_types.h"
	.file 3 "/home/user/Osek/OSEK-Project/erika/inc/ee_api_types.h"
	.file 4 "/home/user/Osek/OSEK-Project/erika/inc/ee_hal_internal_types.h"
	.file 5 "/home/user/Osek/OSEK-Project/erika/inc/ee_scheduler_types.h"
	.file 6 "/home/user/Osek/OSEK-Project/erika/inc/ee_kernel_types.h"
	.file 7 "/home/user/Osek/OSEK-Project/erika/inc/ee_get_kernel_and_core.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf5c
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF300
	.byte	0xc
	.long	.LASF301
	.long	.LASF302
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
	.byte	0x1
	.byte	0x7e
	.long	0x4b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF6
	.byte	0x1
	.byte	0x80
	.long	0x24
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
	.long	0x24
	.byte	0x2
	.byte	0x56
	.long	0x8c
	.uleb128 0x6
	.long	.LASF10
	.byte	0
	.uleb128 0x6
	.long	.LASF11
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	.LASF12
	.byte	0x2
	.byte	0x59
	.long	0x72
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0x5e
	.long	0xa2
	.uleb128 0x7
	.byte	0x2
	.uleb128 0x4
	.long	.LASF14
	.byte	0x2
	.byte	0x5f
	.long	0x40
	.uleb128 0x4
	.long	.LASF15
	.byte	0x2
	.byte	0x66
	.long	0x52
	.uleb128 0x4
	.long	.LASF16
	.byte	0x2
	.byte	0x69
	.long	0x52
	.uleb128 0x4
	.long	.LASF17
	.byte	0x2
	.byte	0x6c
	.long	0x52
	.uleb128 0x4
	.long	.LASF18
	.byte	0x2
	.byte	0x71
	.long	0x52
	.uleb128 0x8
	.byte	0x2
	.long	0xe1
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x4
	.long	.LASF19
	.byte	0x3
	.byte	0x3f
	.long	0x4b
	.uleb128 0x4
	.long	.LASF20
	.byte	0x3
	.byte	0x45
	.long	0xa4
	.uleb128 0x4
	.long	.LASF21
	.byte	0x3
	.byte	0x4f
	.long	0x4b
	.uleb128 0x4
	.long	.LASF22
	.byte	0x3
	.byte	0x5b
	.long	0x4b
	.uleb128 0x4
	.long	.LASF23
	.byte	0x3
	.byte	0x66
	.long	0xdb
	.uleb128 0xa
	.long	.LASF30
	.byte	0x7
	.byte	0x2
	.long	0x24
	.byte	0x3
	.byte	0x6d
	.long	0x144
	.uleb128 0x6
	.long	.LASF24
	.byte	0
	.uleb128 0x6
	.long	.LASF25
	.byte	0x1
	.uleb128 0x6
	.long	.LASF26
	.byte	0x2
	.uleb128 0x6
	.long	.LASF27
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF28
	.byte	0x3
	.byte	0x72
	.long	0x11a
	.uleb128 0x4
	.long	.LASF29
	.byte	0x3
	.byte	0x74
	.long	0x144
	.uleb128 0xa
	.long	.LASF31
	.byte	0x7
	.byte	0x2
	.long	0x24
	.byte	0x3
	.byte	0x76
	.long	0x190
	.uleb128 0x6
	.long	.LASF32
	.byte	0
	.uleb128 0x6
	.long	.LASF33
	.byte	0x1
	.uleb128 0x6
	.long	.LASF34
	.byte	0x2
	.uleb128 0x6
	.long	.LASF35
	.byte	0x3
	.uleb128 0x6
	.long	.LASF36
	.byte	0x4
	.uleb128 0x6
	.long	.LASF37
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.long	.LASF38
	.byte	0x3
	.byte	0x7f
	.long	0x15a
	.uleb128 0x4
	.long	.LASF39
	.byte	0x3
	.byte	0x86
	.long	0x190
	.uleb128 0x4
	.long	.LASF40
	.byte	0x3
	.byte	0x93
	.long	0xc5
	.uleb128 0xb
	.byte	0x6
	.byte	0x3
	.byte	0xa0
	.long	0x1e4
	.uleb128 0xc
	.long	.LASF41
	.byte	0x3
	.byte	0xa2
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF42
	.byte	0x3
	.byte	0xa5
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF43
	.byte	0x3
	.byte	0xa9
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF44
	.byte	0x3
	.byte	0xab
	.long	0x1b1
	.uleb128 0x4
	.long	.LASF45
	.byte	0x3
	.byte	0xc8
	.long	0xd0
	.uleb128 0x4
	.long	.LASF46
	.byte	0x3
	.byte	0xd5
	.long	0xaf
	.uleb128 0x4
	.long	.LASF47
	.byte	0x3
	.byte	0xdc
	.long	0xba
	.uleb128 0xa
	.long	.LASF48
	.byte	0x7
	.byte	0x2
	.long	0x24
	.byte	0x3
	.byte	0xe4
	.long	0x2ca
	.uleb128 0x6
	.long	.LASF49
	.byte	0
	.uleb128 0x6
	.long	.LASF50
	.byte	0x1
	.uleb128 0x6
	.long	.LASF51
	.byte	0x2
	.uleb128 0x6
	.long	.LASF52
	.byte	0x3
	.uleb128 0x6
	.long	.LASF53
	.byte	0x4
	.uleb128 0x6
	.long	.LASF54
	.byte	0x5
	.uleb128 0x6
	.long	.LASF55
	.byte	0x6
	.uleb128 0x6
	.long	.LASF56
	.byte	0x7
	.uleb128 0x6
	.long	.LASF57
	.byte	0x8
	.uleb128 0x6
	.long	.LASF58
	.byte	0x9
	.uleb128 0x6
	.long	.LASF59
	.byte	0xa
	.uleb128 0x6
	.long	.LASF60
	.byte	0xb
	.uleb128 0x6
	.long	.LASF61
	.byte	0xc
	.uleb128 0x6
	.long	.LASF62
	.byte	0xd
	.uleb128 0x6
	.long	.LASF63
	.byte	0xe
	.uleb128 0x6
	.long	.LASF64
	.byte	0xf
	.uleb128 0x6
	.long	.LASF65
	.byte	0x10
	.uleb128 0x6
	.long	.LASF66
	.byte	0x11
	.uleb128 0x6
	.long	.LASF67
	.byte	0x12
	.uleb128 0x6
	.long	.LASF68
	.byte	0x13
	.uleb128 0x6
	.long	.LASF69
	.byte	0x14
	.uleb128 0x6
	.long	.LASF70
	.byte	0x15
	.uleb128 0x6
	.long	.LASF71
	.byte	0x16
	.uleb128 0x6
	.long	.LASF72
	.byte	0x17
	.uleb128 0x6
	.long	.LASF73
	.byte	0x18
	.uleb128 0x6
	.long	.LASF74
	.byte	0x19
	.uleb128 0x6
	.long	.LASF75
	.byte	0x1a
	.uleb128 0x6
	.long	.LASF76
	.byte	0x1b
	.byte	0
	.uleb128 0xd
	.long	.LASF77
	.byte	0x3
	.word	0x106
	.long	0x210
	.uleb128 0xd
	.long	.LASF78
	.byte	0x3
	.word	0x108
	.long	0x2ca
	.uleb128 0xe
	.long	.LASF303
	.byte	0x2
	.byte	0x3
	.word	0x110
	.long	0x308
	.uleb128 0xf
	.long	.LASF79
	.byte	0x3
	.word	0x111
	.long	0x1fa
	.uleb128 0xf
	.long	.LASF80
	.byte	0x3
	.word	0x112
	.long	0x97
	.byte	0
	.uleb128 0xd
	.long	.LASF81
	.byte	0x3
	.word	0x113
	.long	0x2e2
	.uleb128 0x10
	.long	.LASF82
	.byte	0x7
	.byte	0x2
	.long	0x24
	.byte	0x3
	.word	0x11a
	.long	0x4b9
	.uleb128 0x6
	.long	.LASF83
	.byte	0
	.uleb128 0x6
	.long	.LASF84
	.byte	0x1
	.uleb128 0x6
	.long	.LASF85
	.byte	0x2
	.uleb128 0x6
	.long	.LASF86
	.byte	0x3
	.uleb128 0x6
	.long	.LASF87
	.byte	0x4
	.uleb128 0x6
	.long	.LASF88
	.byte	0x5
	.uleb128 0x6
	.long	.LASF89
	.byte	0x6
	.uleb128 0x6
	.long	.LASF90
	.byte	0x7
	.uleb128 0x6
	.long	.LASF91
	.byte	0x8
	.uleb128 0x6
	.long	.LASF92
	.byte	0x9
	.uleb128 0x6
	.long	.LASF93
	.byte	0xa
	.uleb128 0x6
	.long	.LASF94
	.byte	0xb
	.uleb128 0x6
	.long	.LASF95
	.byte	0xc
	.uleb128 0x6
	.long	.LASF96
	.byte	0xd
	.uleb128 0x6
	.long	.LASF97
	.byte	0xe
	.uleb128 0x6
	.long	.LASF98
	.byte	0xf
	.uleb128 0x6
	.long	.LASF99
	.byte	0x10
	.uleb128 0x6
	.long	.LASF100
	.byte	0x11
	.uleb128 0x6
	.long	.LASF101
	.byte	0x12
	.uleb128 0x6
	.long	.LASF102
	.byte	0x13
	.uleb128 0x6
	.long	.LASF103
	.byte	0x14
	.uleb128 0x6
	.long	.LASF104
	.byte	0x15
	.uleb128 0x6
	.long	.LASF105
	.byte	0x16
	.uleb128 0x6
	.long	.LASF106
	.byte	0x17
	.uleb128 0x6
	.long	.LASF107
	.byte	0x18
	.uleb128 0x6
	.long	.LASF108
	.byte	0x19
	.uleb128 0x6
	.long	.LASF109
	.byte	0x1a
	.uleb128 0x6
	.long	.LASF110
	.byte	0x1b
	.uleb128 0x6
	.long	.LASF111
	.byte	0x1c
	.uleb128 0x6
	.long	.LASF112
	.byte	0x1d
	.uleb128 0x6
	.long	.LASF113
	.byte	0x1e
	.uleb128 0x6
	.long	.LASF114
	.byte	0x1f
	.uleb128 0x6
	.long	.LASF115
	.byte	0x20
	.uleb128 0x6
	.long	.LASF116
	.byte	0x21
	.uleb128 0x6
	.long	.LASF117
	.byte	0x22
	.uleb128 0x6
	.long	.LASF118
	.byte	0x23
	.uleb128 0x6
	.long	.LASF119
	.byte	0x24
	.uleb128 0x6
	.long	.LASF120
	.byte	0x25
	.uleb128 0x6
	.long	.LASF121
	.byte	0x26
	.uleb128 0x6
	.long	.LASF122
	.byte	0x27
	.uleb128 0x6
	.long	.LASF123
	.byte	0x28
	.uleb128 0x6
	.long	.LASF124
	.byte	0x29
	.uleb128 0x6
	.long	.LASF125
	.byte	0x2a
	.uleb128 0x6
	.long	.LASF126
	.byte	0x2b
	.uleb128 0x6
	.long	.LASF127
	.byte	0x2c
	.uleb128 0x6
	.long	.LASF128
	.byte	0x2d
	.uleb128 0x6
	.long	.LASF129
	.byte	0x2e
	.uleb128 0x6
	.long	.LASF130
	.byte	0x2f
	.uleb128 0x6
	.long	.LASF131
	.byte	0x30
	.uleb128 0x6
	.long	.LASF132
	.byte	0x31
	.uleb128 0x6
	.long	.LASF133
	.byte	0x32
	.uleb128 0x6
	.long	.LASF134
	.byte	0x33
	.uleb128 0x6
	.long	.LASF135
	.byte	0x34
	.uleb128 0x6
	.long	.LASF136
	.byte	0x35
	.uleb128 0x6
	.long	.LASF137
	.byte	0x36
	.uleb128 0x6
	.long	.LASF138
	.byte	0x37
	.uleb128 0x6
	.long	.LASF139
	.byte	0x38
	.uleb128 0x6
	.long	.LASF140
	.byte	0x39
	.uleb128 0x6
	.long	.LASF141
	.byte	0x3a
	.uleb128 0x6
	.long	.LASF142
	.byte	0x3b
	.uleb128 0x6
	.long	.LASF143
	.byte	0x3c
	.uleb128 0x6
	.long	.LASF144
	.byte	0x3d
	.uleb128 0x6
	.long	.LASF145
	.byte	0x3e
	.uleb128 0x6
	.long	.LASF146
	.byte	0x3f
	.uleb128 0x6
	.long	.LASF147
	.byte	0x40
	.uleb128 0x6
	.long	.LASF148
	.byte	0x41
	.uleb128 0x6
	.long	.LASF149
	.byte	0x42
	.byte	0
	.uleb128 0xd
	.long	.LASF150
	.byte	0x3
	.word	0x170
	.long	0x314
	.uleb128 0xd
	.long	.LASF151
	.byte	0x3
	.word	0x173
	.long	0x4b9
	.uleb128 0x11
	.long	.LASF154
	.byte	0x14
	.byte	0x4
	.byte	0x3f
	.long	0x5e0
	.uleb128 0x12
	.string	"r29"
	.byte	0x4
	.byte	0x40
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"r28"
	.byte	0x4
	.byte	0x41
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x12
	.string	"r17"
	.byte	0x4
	.byte	0x42
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x12
	.string	"r16"
	.byte	0x4
	.byte	0x43
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x12
	.string	"r15"
	.byte	0x4
	.byte	0x44
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"r14"
	.byte	0x4
	.byte	0x45
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x12
	.string	"r13"
	.byte	0x4
	.byte	0x46
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x12
	.string	"r12"
	.byte	0x4
	.byte	0x47
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x12
	.string	"r11"
	.byte	0x4
	.byte	0x48
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"r10"
	.byte	0x4
	.byte	0x49
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x12
	.string	"r9"
	.byte	0x4
	.byte	0x4a
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x12
	.string	"r8"
	.byte	0x4
	.byte	0x4b
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x12
	.string	"r7"
	.byte	0x4
	.byte	0x4c
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"r6"
	.byte	0x4
	.byte	0x4d
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x12
	.string	"r5"
	.byte	0x4
	.byte	0x4e
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x12
	.string	"r4"
	.byte	0x4
	.byte	0x4f
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x12
	.string	"r3"
	.byte	0x4
	.byte	0x50
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"r2"
	.byte	0x4
	.byte	0x51
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xc
	.long	.LASF152
	.byte	0x4
	.byte	0x52
	.long	0x5e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x4d1
	.uleb128 0x4
	.long	.LASF153
	.byte	0x4
	.byte	0x53
	.long	0x4d1
	.uleb128 0x11
	.long	.LASF155
	.byte	0x2
	.byte	0x4
	.byte	0x56
	.long	0x60c
	.uleb128 0xc
	.long	.LASF156
	.byte	0x4
	.byte	0x57
	.long	0x60c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x5e6
	.uleb128 0x4
	.long	.LASF157
	.byte	0x4
	.byte	0x58
	.long	0x5f1
	.uleb128 0x11
	.long	.LASF158
	.byte	0x4
	.byte	0x4
	.byte	0x5a
	.long	0x646
	.uleb128 0xc
	.long	.LASF159
	.byte	0x4
	.byte	0x5b
	.long	0x60c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF160
	.byte	0x4
	.byte	0x5c
	.long	0xba
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x13
	.long	0x61d
	.uleb128 0x4
	.long	.LASF161
	.byte	0x4
	.byte	0x5d
	.long	0x646
	.uleb128 0x11
	.long	.LASF162
	.byte	0x4
	.byte	0x4
	.byte	0x5f
	.long	0x67f
	.uleb128 0xc
	.long	.LASF163
	.byte	0x4
	.byte	0x60
	.long	0x684
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF164
	.byte	0x4
	.byte	0x61
	.long	0x68a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x13
	.long	0x656
	.uleb128 0x8
	.byte	0x2
	.long	0x64b
	.uleb128 0x8
	.byte	0x2
	.long	0x612
	.uleb128 0x4
	.long	.LASF165
	.byte	0x4
	.byte	0x65
	.long	0x67f
	.uleb128 0x11
	.long	.LASF166
	.byte	0x4
	.byte	0x5
	.byte	0x45
	.long	0x6c4
	.uleb128 0xc
	.long	.LASF167
	.byte	0x5
	.byte	0x46
	.long	0x6c4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF168
	.byte	0x5
	.byte	0x47
	.long	0x74c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x69b
	.uleb128 0x11
	.long	.LASF169
	.byte	0xe
	.byte	0x6
	.byte	0xac
	.long	0x747
	.uleb128 0x12
	.string	"hdb"
	.byte	0x6
	.byte	0xad
	.long	0x690
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF170
	.byte	0x6
	.byte	0xae
	.long	0x912
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"tid"
	.byte	0x6
	.byte	0xaf
	.long	0xee
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF171
	.byte	0x6
	.byte	0xb0
	.long	0x14f
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xc
	.long	.LASF172
	.byte	0x6
	.byte	0xb1
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xc
	.long	.LASF173
	.byte	0x6
	.byte	0xb2
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xc
	.long	.LASF174
	.byte	0x6
	.byte	0xb3
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.long	.LASF175
	.byte	0x6
	.byte	0xb4
	.long	0x104
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x13
	.long	0x6ca
	.uleb128 0x8
	.byte	0x2
	.long	0x747
	.uleb128 0x4
	.long	.LASF176
	.byte	0x5
	.byte	0x48
	.long	0x69b
	.uleb128 0x4
	.long	.LASF177
	.byte	0x5
	.byte	0x9f
	.long	0x768
	.uleb128 0x8
	.byte	0x2
	.long	0x752
	.uleb128 0x4
	.long	.LASF178
	.byte	0x6
	.byte	0x50
	.long	0xdb
	.uleb128 0x4
	.long	.LASF179
	.byte	0x6
	.byte	0x52
	.long	0x4b
	.uleb128 0xa
	.long	.LASF180
	.byte	0x7
	.byte	0x2
	.long	0x24
	.byte	0x6
	.byte	0x63
	.long	0x7d8
	.uleb128 0x6
	.long	.LASF181
	.byte	0
	.uleb128 0x6
	.long	.LASF182
	.byte	0x1
	.uleb128 0x6
	.long	.LASF183
	.byte	0x2
	.uleb128 0x6
	.long	.LASF184
	.byte	0x3
	.uleb128 0x6
	.long	.LASF185
	.byte	0x4
	.uleb128 0x6
	.long	.LASF186
	.byte	0x5
	.uleb128 0x6
	.long	.LASF187
	.byte	0x6
	.uleb128 0x6
	.long	.LASF188
	.byte	0x7
	.uleb128 0x6
	.long	.LASF189
	.byte	0x8
	.uleb128 0x6
	.long	.LASF190
	.byte	0x9
	.uleb128 0x6
	.long	.LASF191
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	.LASF192
	.byte	0x6
	.byte	0x6f
	.long	0x784
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x24
	.byte	0x6
	.byte	0x71
	.long	0x809
	.uleb128 0x6
	.long	.LASF193
	.byte	0
	.uleb128 0x6
	.long	.LASF194
	.byte	0x1
	.uleb128 0x6
	.long	.LASF195
	.byte	0x2
	.uleb128 0x6
	.long	.LASF196
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF197
	.byte	0x6
	.byte	0x79
	.long	0x7e3
	.uleb128 0x11
	.long	.LASF198
	.byte	0x5
	.byte	0x6
	.byte	0x7f
	.long	0x84b
	.uleb128 0xc
	.long	.LASF167
	.byte	0x6
	.byte	0x80
	.long	0x879
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF199
	.byte	0x6
	.byte	0x81
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF200
	.byte	0x6
	.byte	0x83
	.long	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x11
	.long	.LASF201
	.byte	0x3
	.byte	0x6
	.byte	0x91
	.long	0x874
	.uleb128 0xc
	.long	.LASF202
	.byte	0x6
	.byte	0x92
	.long	0x88a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF203
	.byte	0x6
	.byte	0x93
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x13
	.long	0x84b
	.uleb128 0x8
	.byte	0x2
	.long	0x874
	.uleb128 0x4
	.long	.LASF204
	.byte	0x6
	.byte	0x88
	.long	0x814
	.uleb128 0x8
	.byte	0x2
	.long	0x87f
	.uleb128 0x4
	.long	.LASF205
	.byte	0x6
	.byte	0x99
	.long	0x874
	.uleb128 0x11
	.long	.LASF206
	.byte	0xa
	.byte	0x6
	.byte	0x9c
	.long	0x8fc
	.uleb128 0xc
	.long	.LASF207
	.byte	0x6
	.byte	0x9d
	.long	0x104
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF208
	.byte	0x6
	.byte	0x9e
	.long	0xf9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xc
	.long	.LASF209
	.byte	0x6
	.byte	0x9f
	.long	0x19b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF210
	.byte	0x6
	.byte	0xa1
	.long	0x8fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF211
	.byte	0x6
	.byte	0xa4
	.long	0x1ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.long	.LASF212
	.byte	0x6
	.byte	0xa5
	.long	0x1ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x890
	.uleb128 0x13
	.long	0x8fc
	.uleb128 0x4
	.long	.LASF213
	.byte	0x6
	.byte	0xaa
	.long	0x89b
	.uleb128 0x8
	.byte	0x2
	.long	0x907
	.uleb128 0x4
	.long	.LASF214
	.byte	0x6
	.byte	0xb8
	.long	0x747
	.uleb128 0x8
	.byte	0x2
	.long	0x918
	.uleb128 0x13
	.long	0x923
	.uleb128 0x4
	.long	.LASF215
	.byte	0x6
	.byte	0xcb
	.long	0x939
	.uleb128 0x8
	.byte	0x2
	.long	0x97a
	.uleb128 0x14
	.long	.LASF216
	.byte	0xe
	.byte	0x6
	.word	0x110
	.long	0x97a
	.uleb128 0x15
	.long	.LASF217
	.byte	0x6
	.word	0x111
	.long	0xb06
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.long	.LASF218
	.byte	0x6
	.word	0x112
	.long	0xa66
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x15
	.long	.LASF219
	.byte	0x6
	.word	0x116
	.long	0xaa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x13
	.long	0x93f
	.uleb128 0x11
	.long	.LASF220
	.byte	0x4
	.byte	0x6
	.byte	0xcd
	.long	0x9a8
	.uleb128 0xc
	.long	.LASF221
	.byte	0x6
	.byte	0xce
	.long	0x92e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF222
	.byte	0x6
	.byte	0xcf
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF223
	.byte	0x6
	.byte	0xd3
	.long	0x97f
	.uleb128 0x11
	.long	.LASF224
	.byte	0x8
	.byte	0x6
	.byte	0xdc
	.long	0x9dc
	.uleb128 0xc
	.long	.LASF225
	.byte	0x6
	.byte	0xdd
	.long	0x9e1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF226
	.byte	0x6
	.byte	0xe1
	.long	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x13
	.long	0x9b3
	.uleb128 0x8
	.byte	0x2
	.long	0x9a8
	.uleb128 0x4
	.long	.LASF227
	.byte	0x6
	.byte	0xe5
	.long	0x9dc
	.uleb128 0x5
	.byte	0x7
	.byte	0x2
	.long	0x24
	.byte	0x6
	.byte	0xe7
	.long	0xa18
	.uleb128 0x6
	.long	.LASF228
	.byte	0
	.uleb128 0x6
	.long	.LASF229
	.byte	0x1
	.uleb128 0x6
	.long	.LASF230
	.byte	0x2
	.uleb128 0x6
	.long	.LASF231
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF232
	.byte	0x6
	.byte	0xec
	.long	0x9f2
	.uleb128 0x11
	.long	.LASF233
	.byte	0x8
	.byte	0x6
	.byte	0xee
	.long	0xa66
	.uleb128 0x12
	.string	"f"
	.byte	0x6
	.byte	0xef
	.long	0x76e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF168
	.byte	0x6
	.byte	0xf0
	.long	0x923
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.long	.LASF218
	.byte	0x6
	.byte	0xf1
	.long	0xa66
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.long	.LASF234
	.byte	0x6
	.byte	0xf3
	.long	0x1ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0x9e7
	.uleb128 0x13
	.long	0xa66
	.uleb128 0x4
	.long	.LASF233
	.byte	0x6
	.byte	0xf5
	.long	0xa23
	.uleb128 0x11
	.long	.LASF235
	.byte	0xa
	.byte	0x6
	.byte	0xf7
	.long	0xaa5
	.uleb128 0xc
	.long	.LASF236
	.byte	0x6
	.byte	0xf8
	.long	0xa71
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.long	.LASF237
	.byte	0x6
	.byte	0xf9
	.long	0xa18
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF238
	.byte	0x6
	.byte	0xfa
	.long	0xa7c
	.uleb128 0x14
	.long	.LASF239
	.byte	0x8
	.byte	0x6
	.word	0x103
	.long	0xafa
	.uleb128 0x15
	.long	.LASF167
	.byte	0x6
	.word	0x104
	.long	0x939
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.long	.LASF240
	.byte	0x6
	.word	0x105
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x15
	.long	.LASF241
	.byte	0x6
	.word	0x106
	.long	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.long	.LASF242
	.byte	0x6
	.word	0x109
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xd
	.long	.LASF243
	.byte	0x6
	.word	0x10e
	.long	0xab0
	.uleb128 0x8
	.byte	0x2
	.long	0xafa
	.uleb128 0xd
	.long	.LASF244
	.byte	0x6
	.word	0x11a
	.long	0x97a
	.uleb128 0x14
	.long	.LASF245
	.byte	0x6
	.byte	0x6
	.word	0x11d
	.long	0xb53
	.uleb128 0x15
	.long	.LASF246
	.byte	0x6
	.word	0x11e
	.long	0xb58
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.long	.LASF247
	.byte	0x6
	.word	0x11f
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x15
	.long	.LASF242
	.byte	0x6
	.word	0x120
	.long	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x13
	.long	0xb18
	.uleb128 0x8
	.byte	0x2
	.long	0xb0c
	.uleb128 0xd
	.long	.LASF248
	.byte	0x6
	.word	0x121
	.long	0xb53
	.uleb128 0x14
	.long	.LASF249
	.byte	0x4
	.byte	0x6
	.word	0x123
	.long	0xb96
	.uleb128 0x15
	.long	.LASF250
	.byte	0x6
	.word	0x124
	.long	0xba6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.long	.LASF251
	.byte	0x6
	.word	0x125
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x13
	.long	0xb6a
	.uleb128 0x16
	.long	0xb5e
	.long	0xba6
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xb9b
	.uleb128 0xd
	.long	.LASF252
	.byte	0x6
	.word	0x126
	.long	0xb96
	.uleb128 0xd
	.long	.LASF253
	.byte	0x6
	.word	0x135
	.long	0xb0c
	.uleb128 0x14
	.long	.LASF254
	.byte	0x4
	.byte	0x6
	.word	0x13c
	.long	0xbf0
	.uleb128 0x15
	.long	.LASF255
	.byte	0x6
	.word	0x13d
	.long	0xc00
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.long	.LASF256
	.byte	0x6
	.word	0x13e
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x13
	.long	0xbc4
	.uleb128 0x16
	.long	0x929
	.long	0xc00
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xbf5
	.uleb128 0xd
	.long	.LASF257
	.byte	0x6
	.word	0x13f
	.long	0xbf0
	.uleb128 0x14
	.long	.LASF258
	.byte	0x1c
	.byte	0x6
	.word	0x142
	.long	0xd1e
	.uleb128 0x15
	.long	.LASF259
	.byte	0x6
	.word	0x143
	.long	0x923
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.string	"rq"
	.byte	0x6
	.word	0x148
	.long	0x75d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x15
	.long	.LASF260
	.byte	0x6
	.word	0x149
	.long	0x768
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.long	.LASF261
	.byte	0x6
	.word	0x14e
	.long	0x768
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x15
	.long	.LASF262
	.byte	0x6
	.word	0x14f
	.long	0x809
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.long	.LASF263
	.byte	0x6
	.word	0x150
	.long	0xe3
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x15
	.long	.LASF264
	.byte	0x6
	.word	0x152
	.long	0x2d6
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x15
	.long	.LASF265
	.byte	0x6
	.word	0x154
	.long	0x4c5
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x15
	.long	.LASF266
	.byte	0x6
	.word	0x157
	.long	0x308
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x15
	.long	.LASF267
	.byte	0x6
	.word	0x158
	.long	0x308
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x15
	.long	.LASF268
	.byte	0x6
	.word	0x159
	.long	0x308
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0x15
	.long	.LASF269
	.byte	0x6
	.word	0x15c
	.long	0x7d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x15
	.long	.LASF270
	.byte	0x6
	.word	0x163
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0x15
	.long	.LASF271
	.byte	0x6
	.word	0x164
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x15
	.long	.LASF272
	.byte	0x6
	.word	0x165
	.long	0x779
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0x15
	.long	.LASF273
	.byte	0x6
	.word	0x166
	.long	0x779
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x15
	.long	.LASF274
	.byte	0x6
	.word	0x167
	.long	0x779
	.byte	0x2
	.byte	0x23
	.uleb128 0x1b
	.byte	0
	.uleb128 0xd
	.long	.LASF275
	.byte	0x6
	.word	0x16b
	.long	0xc12
	.uleb128 0x14
	.long	.LASF276
	.byte	0x10
	.byte	0x6
	.word	0x16d
	.long	0xdb0
	.uleb128 0x15
	.long	.LASF277
	.byte	0x6
	.word	0x171
	.long	0xdb5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.long	.LASF278
	.byte	0x6
	.word	0x173
	.long	0x10f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x15
	.long	.LASF279
	.byte	0x6
	.word	0x175
	.long	0x923
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.long	.LASF280
	.byte	0x6
	.word	0x177
	.long	0xa66
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x15
	.long	.LASF281
	.byte	0x6
	.word	0x17a
	.long	0xdc6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.long	.LASF282
	.byte	0x6
	.word	0x17b
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x15
	.long	.LASF283
	.byte	0x6
	.word	0x17e
	.long	0xdd7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.long	.LASF284
	.byte	0x6
	.word	0x17f
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x13
	.long	0xd2a
	.uleb128 0x8
	.byte	0x2
	.long	0xd1e
	.uleb128 0x16
	.long	0xc06
	.long	0xdc6
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xdbb
	.uleb128 0x16
	.long	0xbac
	.long	0xdd7
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xdcc
	.uleb128 0xd
	.long	.LASF285
	.byte	0x6
	.word	0x184
	.long	0xdb0
	.uleb128 0x14
	.long	.LASF286
	.byte	0x1
	.byte	0x6
	.word	0x186
	.long	0xe06
	.uleb128 0x15
	.long	.LASF287
	.byte	0x6
	.word	0x19c
	.long	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xd
	.long	.LASF288
	.byte	0x6
	.word	0x19e
	.long	0xde9
	.uleb128 0x14
	.long	.LASF289
	.byte	0x16
	.byte	0x6
	.word	0x1a0
	.long	0xec5
	.uleb128 0x15
	.long	.LASF290
	.byte	0x6
	.word	0x1a1
	.long	0xeca
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.long	.LASF255
	.byte	0x6
	.word	0x1a8
	.long	0xc00
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x15
	.long	.LASF291
	.byte	0x6
	.word	0x1ae
	.long	0xedb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.long	.LASF256
	.byte	0x6
	.word	0x1b0
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x15
	.long	.LASF292
	.byte	0x6
	.word	0x1b1
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.long	.LASF293
	.byte	0x6
	.word	0x1b3
	.long	0xeec
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x15
	.long	.LASF294
	.byte	0x6
	.word	0x1b4
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.long	.LASF295
	.byte	0x6
	.word	0x1b7
	.long	0xefd
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x15
	.long	.LASF296
	.byte	0x6
	.word	0x1b8
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.long	.LASF297
	.byte	0x6
	.word	0x1ba
	.long	0xf19
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x15
	.long	.LASF298
	.byte	0x6
	.word	0x1bb
	.long	0x205
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x13
	.long	0xe12
	.uleb128 0x8
	.byte	0x2
	.long	0xe06
	.uleb128 0x16
	.long	0x752
	.long	0xedb
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xed0
	.uleb128 0x16
	.long	0x902
	.long	0xeec
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xee1
	.uleb128 0x16
	.long	0xa6c
	.long	0xefd
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xef2
	.uleb128 0x16
	.long	0xf14
	.long	0xf0e
	.uleb128 0x17
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.long	0xbb8
	.uleb128 0x13
	.long	0xf0e
	.uleb128 0x8
	.byte	0x2
	.long	0xf03
	.uleb128 0xd
	.long	.LASF299
	.byte	0x6
	.word	0x1c1
	.long	0xec5
	.uleb128 0x19
	.string	"KDB"
	.byte	0x7
	.byte	0x3b
	.long	0xf1f
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"CDB"
	.byte	0x7
	.byte	0x3c
	.long	0xddd
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"KCB"
	.byte	0x7
	.byte	0x3d
	.long	0xe06
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.string	"CCB"
	.byte	0x7
	.byte	0x3e
	.long	0xd1e
	.byte	0x1
	.byte	0x1
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x14
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF288:
	.string	"OsEE_KCB"
.LASF217:
	.string	"p_trigger_cb"
.LASF139:
	.string	"OSServiceId_StartOS"
.LASF231:
	.string	"OSEE_ACTION_CALLBACK"
.LASF60:
	.string	"E_OS_MISSINGEND"
.LASF62:
	.string	"E_OS_STACKFAULT"
.LASF131:
	.string	"OSServiceId_GetCounterValue"
.LASF221:
	.string	"trigger_queue"
.LASF285:
	.string	"OsEE_CDB"
.LASF276:
	.string	"OsEE_CDB_tag"
.LASF80:
	.string	"p_param"
.LASF302:
	.string	"/home/user/Osek/OSEK-Project/erika"
.LASF34:
	.string	"OSEE_TASK_READY_STACKED"
.LASF256:
	.string	"tdb_array_size"
.LASF45:
	.string	"EventMaskType"
.LASF24:
	.string	"OSEE_TASK_TYPE_BASIC"
.LASF177:
	.string	"OsEE_RQ"
.LASF174:
	.string	"dispatch_prio"
.LASF140:
	.string	"OSServiceId_StartOS_Entry"
.LASF246:
	.string	"p_trigger_db"
.LASF272:
	.string	"s_isr_all_cnt"
.LASF116:
	.string	"OSServiceId_GetEvent_Entry"
.LASF0:
	.string	"unsigned int"
.LASF244:
	.string	"OsEE_TriggerDB"
.LASF278:
	.string	"p_idle_hook"
.LASF40:
	.string	"TickType"
.LASF280:
	.string	"p_sys_counter_db"
.LASF179:
	.string	"OsEE_byte"
.LASF58:
	.string	"E_OS_SERVICEID"
.LASF142:
	.string	"OSId_TaskBody_Entry"
.LASF201:
	.string	"OsEE_MDB_tag"
.LASF234:
	.string	"mask"
.LASF239:
	.string	"OsEE_TriggerCB_tag"
.LASF84:
	.string	"OSServiceId_ActivateTask_Entry"
.LASF269:
	.string	"os_context"
.LASF293:
	.string	"p_res_ptr_array"
.LASF240:
	.string	"when"
.LASF287:
	.string	"dummy"
.LASF119:
	.string	"OSServiceId_GetAlarmBase"
.LASF182:
	.string	"OSEE_TASK_CTX"
.LASF46:
	.string	"ObjectIDType"
.LASF55:
	.string	"E_OS_RESOURCE"
.LASF129:
	.string	"OSServiceId_IncrementCounter"
.LASF151:
	.string	"OSServiceIdType"
.LASF176:
	.string	"OsEE_SN"
.LASF98:
	.string	"OSServiceId_EnableAllInterrupts_Entry"
.LASF203:
	.string	"mtx_prio"
.LASF156:
	.string	"p_tos"
.LASF120:
	.string	"OSServiceId_GetAlarmBase_Entry"
.LASF18:
	.string	"OsEE_event_mask"
.LASF42:
	.string	"ticksperbase"
.LASF85:
	.string	"OSServiceId_TerminateTask"
.LASF243:
	.string	"OsEE_TriggerCB"
.LASF87:
	.string	"OSServiceId_ChainTask"
.LASF54:
	.string	"E_OS_NOFUNC"
.LASF303:
	.string	"OsEE_api_param_tag"
.LASF30:
	.string	"OsEE_task_type_tag"
.LASF241:
	.string	"active"
.LASF157:
	.string	"OsEE_SCB"
.LASF212:
	.string	"event_mask"
.LASF279:
	.string	"p_idle_task"
.LASF105:
	.string	"OSServiceId_ResumeOSInterrupts"
.LASF17:
	.string	"OsEE_tick_type"
.LASF115:
	.string	"OSServiceId_GetEvent"
.LASF150:
	.string	"OsEE_service_id_type"
.LASF28:
	.string	"OsEE_task_type"
.LASF173:
	.string	"ready_prio"
.LASF249:
	.string	"OsEE_autostart_trigger_tag"
.LASF161:
	.string	"OsEE_SDB"
.LASF193:
	.string	"OSEE_KERNEL_STOPPED"
.LASF9:
	.string	"long long unsigned int"
.LASF163:
	.string	"p_sdb"
.LASF20:
	.string	"TaskType"
.LASF47:
	.string	"MemSize"
.LASF162:
	.string	"OsEE_HDB_tag"
.LASF224:
	.string	"OsEE_CounterDB_tag"
.LASF137:
	.string	"OSServiceId_ShutdownOS"
.LASF225:
	.string	"p_counter_cb"
.LASF245:
	.string	"OsEE_autostart_trigger_info_tag"
.LASF222:
	.string	"value"
.LASF172:
	.string	"task_func"
.LASF95:
	.string	"OSServiceId_DisableAllInterrupts"
.LASF109:
	.string	"OSServiceId_ReleaseResource"
.LASF99:
	.string	"OSServiceId_SuspendAllInterrupts"
.LASF93:
	.string	"OSServiceId_GetTaskState"
.LASF39:
	.string	"TaskStateType"
.LASF49:
	.string	"E_OK"
.LASF291:
	.string	"p_sn_array"
.LASF208:
	.string	"current_prio"
.LASF286:
	.string	"OsEE_KCB_tag"
.LASF259:
	.string	"p_curr"
.LASF215:
	.string	"OsEE_TriggerQ"
.LASF230:
	.string	"OSEE_ACTION_COUNTER"
.LASF33:
	.string	"OSEE_TASK_READY"
.LASF170:
	.string	"p_tcb"
.LASF297:
	.string	"p_alarm_ptr_array"
.LASF261:
	.string	"p_stk_sn"
.LASF298:
	.string	"alarm_array_size"
.LASF134:
	.string	"OSServiceId_GetElapsedValue_Entry"
.LASF16:
	.string	"OsEE_mem_size"
.LASF76:
	.string	"E_OS_SYS_ACT"
.LASF41:
	.string	"maxallowedvalue"
.LASF247:
	.string	"increment"
.LASF132:
	.string	"OSServiceId_GetCounterValue_Entry"
.LASF218:
	.string	"p_counter_db"
.LASF114:
	.string	"OSServiceId_ClearEvent_Entry"
.LASF295:
	.string	"p_counter_ptr_array"
.LASF113:
	.string	"OSServiceId_ClearEvent"
.LASF52:
	.string	"E_OS_ID"
.LASF187:
	.string	"OSEE_POSTTASKHOOK_CTX"
.LASF44:
	.string	"AlarmBaseType"
.LASF197:
	.string	"OsEE_kernel_status"
.LASF168:
	.string	"p_tdb"
.LASF70:
	.string	"E_OS_INTERFERENCE_DEADLOCK"
.LASF178:
	.string	"OsEE_kernel_cb"
.LASF53:
	.string	"E_OS_LIMIT"
.LASF301:
	.string	"/home/user/Osek/OSEK-Project/erika/src/ee_oscfg.c"
.LASF284:
	.string	"autostart_trigger_array_size"
.LASF19:
	.string	"AppModeType"
.LASF147:
	.string	"OSId_Kernel"
.LASF29:
	.string	"TaskExecutionType"
.LASF263:
	.string	"app_mode"
.LASF123:
	.string	"OSServiceId_SetRelAlarm"
.LASF90:
	.string	"OSServiceId_Schedule_Entry"
.LASF270:
	.string	"prev_s_isr_all_status"
.LASF71:
	.string	"E_OS_NESTING_DEADLOCK"
.LASF194:
	.string	"OSEE_KERNEL_STARTING"
.LASF198:
	.string	"OsEE_MCB_tag"
.LASF253:
	.string	"OsEE_AlarmDB"
.LASF149:
	.string	"OsId_Invalid"
.LASF5:
	.string	"uint8_t"
.LASF209:
	.string	"status"
.LASF237:
	.string	"type"
.LASF23:
	.string	"TaskFunc"
.LASF200:
	.string	"locked"
.LASF154:
	.string	"OsEE_CTX_tag"
.LASF220:
	.string	"OsEE_CounterCB_tag"
.LASF102:
	.string	"OSServiceId_ResumeAllInterrupts_Entry"
.LASF158:
	.string	"OsEE_SDB_tag"
.LASF67:
	.string	"E_OS_PROTECTION_LOCKED"
.LASF63:
	.string	"E_OS_PARAM_POINTER"
.LASF238:
	.string	"OsEE_action"
.LASF111:
	.string	"OSServiceId_SetEvent"
.LASF228:
	.string	"OSEE_ACTION_TASK"
.LASF121:
	.string	"OSServiceId_GetAlarm"
.LASF1:
	.string	"long long int"
.LASF48:
	.string	"OsEE_status_type_tag"
.LASF130:
	.string	"OSServiceId_IncrementCounter_Entry"
.LASF192:
	.string	"OsEE_os_context"
.LASF146:
	.string	"OSId_Action_Entry"
.LASF77:
	.string	"OsEE_status_type"
.LASF124:
	.string	"OSServiceId_SetRelAlarm_Entry"
.LASF188:
	.string	"OSEE_STARTUPHOOK_CTX"
.LASF128:
	.string	"OSServiceId_CancelAlarm_Entry"
.LASF106:
	.string	"OSServiceId_ResumeOSInterrupts_Entry"
.LASF133:
	.string	"OSServiceId_GetElapsedValue"
.LASF86:
	.string	"OSServiceId_TerminateTask_Entry"
.LASF202:
	.string	"p_mcb"
.LASF223:
	.string	"OsEE_CounterCB"
.LASF138:
	.string	"OSServiceId_ShutdownOS_Entry"
.LASF12:
	.string	"OsEE_bool"
.LASF236:
	.string	"param"
.LASF213:
	.string	"OsEE_TCB"
.LASF257:
	.string	"OsEE_autostart_tdb"
.LASF27:
	.string	"OSEE_TASK_TYPE_IDLE"
.LASF37:
	.string	"OSEE_TASK_CHAINED"
.LASF226:
	.string	"info"
.LASF296:
	.string	"counter_array_size"
.LASF262:
	.string	"os_status"
.LASF277:
	.string	"p_ccb"
.LASF294:
	.string	"res_array_size"
.LASF186:
	.string	"OSEE_PRETASKHOOK_CTX"
.LASF69:
	.string	"E_OS_SPINLOCK"
.LASF107:
	.string	"OSServiceId_GetResource"
.LASF75:
	.string	"E_OS_SYS_STACK"
.LASF166:
	.string	"OsEE_SN_tag"
.LASF190:
	.string	"OSEE_ALARMCALLBACK_CTX"
.LASF10:
	.string	"OSEE_FALSE"
.LASF2:
	.string	"long double"
.LASF6:
	.string	"uint16_t"
.LASF144:
	.string	"OSId_ISR2Body_Entry"
.LASF191:
	.string	"OSEE_IDLE_CTX"
.LASF214:
	.string	"OsEE_TDB"
.LASF248:
	.string	"OsEE_autostart_trigger_info"
.LASF127:
	.string	"OSServiceId_CancelAlarm"
.LASF255:
	.string	"p_tdb_ptr_array"
.LASF274:
	.string	"d_isr_all_cnt"
.LASF206:
	.string	"OsEE_TCB_tag"
.LASF11:
	.string	"OSEE_TRUE"
.LASF35:
	.string	"OSEE_TASK_WAITING"
.LASF184:
	.string	"OSEE_ERRORHOOK_CTX"
.LASF96:
	.string	"OSServiceId_DisableAllInterrupts_Entry"
.LASF117:
	.string	"OSServiceId_WaitEvent"
.LASF229:
	.string	"OSEE_ACTION_EVENT"
.LASF22:
	.string	"TaskActivation"
.LASF141:
	.string	"OSId_TaskBody"
.LASF32:
	.string	"OSEE_TASK_SUSPENDED"
.LASF171:
	.string	"task_type"
.LASF251:
	.string	"trigger_array_size"
.LASF7:
	.string	"long int"
.LASF211:
	.string	"wait_mask"
.LASF227:
	.string	"OsEE_CounterDB"
.LASF235:
	.string	"OsEE_action_tag"
.LASF265:
	.string	"service_id"
.LASF101:
	.string	"OSServiceId_ResumeAllInterrupts"
.LASF94:
	.string	"OSServiceId_GetTaskState_Entry"
.LASF91:
	.string	"OSServiceId_GetTaskID"
.LASF242:
	.string	"cycle"
.LASF167:
	.string	"p_next"
.LASF175:
	.string	"max_num_of_act"
.LASF143:
	.string	"OSId_ISR2Body"
.LASF21:
	.string	"TaskPrio"
.LASF152:
	.string	"p_ctx"
.LASF219:
	.string	"action"
.LASF64:
	.string	"E_OS_PROTECTION_MEMORY"
.LASF31:
	.string	"OsEE_task_status_tag"
.LASF88:
	.string	"OSServiceId_ChainTask_Entry"
.LASF216:
	.string	"OsEE_TriggerDB_tag"
.LASF183:
	.string	"OSEE_TASK_ISR2_CTX"
.LASF14:
	.string	"OsEE_reg"
.LASF78:
	.string	"StatusType"
.LASF281:
	.string	"p_autostart_tdb_array"
.LASF126:
	.string	"OSServiceId_SetAbsAlarm_Entry"
.LASF68:
	.string	"E_OS_PROTECTION_EXCEPTION"
.LASF290:
	.string	"p_kcb"
.LASF233:
	.string	"OsEE_action_param"
.LASF57:
	.string	"E_OS_VALUE"
.LASF66:
	.string	"E_OS_PROTECTION_ARRIVAL"
.LASF185:
	.string	"OSEE_PROTECTIONHOOK_CTX"
.LASF292:
	.string	"sn_array_size"
.LASF36:
	.string	"OSEE_TASK_RUNNING"
.LASF264:
	.string	"last_error"
.LASF89:
	.string	"OSServiceId_Schedule"
.LASF136:
	.string	"OSServiceId_GetActiveApplicationMode_Entry"
.LASF232:
	.string	"OsEE_action_type"
.LASF135:
	.string	"OSServiceId_GetActiveApplicationMode"
.LASF97:
	.string	"OSServiceId_EnableAllInterrupts"
.LASF8:
	.string	"long unsigned int"
.LASF271:
	.string	"prev_s_isr_os_status"
.LASF204:
	.string	"OsEE_MCB"
.LASF283:
	.string	"p_autostart_trigger_array"
.LASF59:
	.string	"E_OS_ILLEGAL_ADDRESS"
.LASF61:
	.string	"E_OS_DISABLEDINT"
.LASF273:
	.string	"s_isr_os_cnt"
.LASF181:
	.string	"OSEE_KERNEL_CTX"
.LASF148:
	.string	"OSId_Kernel_Entry"
.LASF74:
	.string	"E_OS_SYS_TASK"
.LASF299:
	.string	"OsEE_KDB"
.LASF4:
	.string	"unsigned char"
.LASF155:
	.string	"OsEE_SCB_tag"
.LASF51:
	.string	"E_OS_CALLEVEL"
.LASF125:
	.string	"OSServiceId_SetAbsAlarm"
.LASF50:
	.string	"E_OS_ACCESS"
.LASF38:
	.string	"OsEE_task_status"
.LASF56:
	.string	"E_OS_STATE"
.LASF205:
	.string	"OsEE_MDB"
.LASF196:
	.string	"OSEE_KERNEL_SHUTDOWN"
.LASF25:
	.string	"OSEE_TASK_TYPE_EXTENDED"
.LASF282:
	.string	"autostart_tdb_array_size"
.LASF145:
	.string	"OSId_Action"
.LASF122:
	.string	"OSServiceId_GetAlarm_Entry"
.LASF165:
	.string	"OsEE_HDB"
.LASF189:
	.string	"OSEE_SHUTDOWNHOOK_CTX"
.LASF43:
	.string	"mincycle"
.LASF65:
	.string	"E_OS_PROTECTION_TIME"
.LASF83:
	.string	"OSServiceId_ActivateTask"
.LASF300:
	.string	"GNU C11 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g -Os -std=gnu11 -ffunction-sections -fdata-sections"
.LASF199:
	.string	"prev_prio"
.LASF26:
	.string	"OSEE_TASK_TYPE_ISR2"
.LASF275:
	.string	"OsEE_CCB"
.LASF13:
	.string	"OsEE_addr"
.LASF3:
	.string	"signed char"
.LASF258:
	.string	"OsEE_CCB_tag"
.LASF195:
	.string	"OSEE_KERNEL_STARTED"
.LASF210:
	.string	"p_first_mtx"
.LASF82:
	.string	"OsEE_service_id_type_tag"
.LASF100:
	.string	"OSServiceId_SuspendAllInterrupts_Entry"
.LASF169:
	.string	"OsEE_TDB_tag"
.LASF164:
	.string	"p_scb"
.LASF92:
	.string	"OSServiceId_GetTaskID_Entry"
.LASF72:
	.string	"E_OS_CORE"
.LASF112:
	.string	"OSServiceId_SetEvent_Entry"
.LASF160:
	.string	"stack_size"
.LASF81:
	.string	"OsEE_api_param"
.LASF207:
	.string	"current_num_of_act"
.LASF110:
	.string	"OSServiceId_ReleaseResource_Entry"
.LASF289:
	.string	"OsEE_KDB_tag"
.LASF252:
	.string	"OsEE_autostart_trigger"
.LASF260:
	.string	"p_free_sn"
.LASF153:
	.string	"OsEE_CTX"
.LASF104:
	.string	"OSServiceId_SuspendOSInterrupts_Entry"
.LASF180:
	.string	"OsEE_os_context_tag"
.LASF103:
	.string	"OSServiceId_SuspendOSInterrupts"
.LASF254:
	.string	"OsEE_autostart_tdb_tag"
.LASF250:
	.string	"p_trigger_ptr_array"
.LASF266:
	.string	"api_param1"
.LASF267:
	.string	"api_param2"
.LASF268:
	.string	"api_param3"
.LASF118:
	.string	"OSServiceId_WaitEvent_Entry"
.LASF79:
	.string	"num_param"
.LASF73:
	.string	"E_OS_SYS_INIT"
.LASF159:
	.string	"p_bos"
.LASF15:
	.string	"OsEE_object_id_type"
.LASF108:
	.string	"OSServiceId_GetResource_Entry"
	.ident	"GCC: (GNU) 7.3.0"

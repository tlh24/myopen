
test.dxe:     file format elf32-bfin

Disassembly of section .text:

ffa00000 <start>:
ffa00000:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00000(-4194304) */
ffa00004:	08 e1 10 00 	P0.L = 0x10;		/* ( 16)	P0=0xffc00010(-4194288) */
ffa00008:	80 e1 00 03 	R0 = 0x300 (Z);		/*		R0=0x300(768) */
ffa0000c:	00 8a       	W[P0] = R0.L;
ffa0000e:	24 00       	SSYNC;
ffa00010:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00000(-4194304) */
ffa00014:	0a e1 10 0a 	P2.L = 0xa10;		/* (2576)	P2=0xffc00a10(-4191728) */
ffa00018:	10 91       	R0 = [P2];
ffa0001a:	c0 4a       	BITSET (R0, 0x18);		/* bit 24 */
ffa0001c:	10 93       	[P2] = R0;
ffa0001e:	24 00       	SSYNC;
ffa00020:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa00022:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00010(-4194288) */
ffa00026:	08 e1 04 00 	P0.L = 0x4;		/* (  4)	P0=0xffc00004(-4194300) */
ffa0002a:	00 8a       	W[P0] = R0.L;
ffa0002c:	24 00       	SSYNC;
ffa0002e:	c0 60       	R0 = 0x18 (X);		/*		R0=0x18( 24) */
ffa00030:	82 c6 48 80 	R0 = R0 << 0x9;
ffa00034:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00036:	01 56       	R0 = R1 | R0;
ffa00038:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0003a:	82 c6 41 82 	R1 = R1 << 0x8;
ffa0003e:	01 56       	R0 = R1 | R0;
ffa00040:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00004(-4194300) */
ffa00044:	08 e1 00 00 	P0.L = 0x0;		/* (  0)	P0=0xffc00000(-4194304) */
ffa00048:	32 00       	CLI R2;
ffa0004a:	24 00       	SSYNC;
ffa0004c:	00 8a       	W[P0] = R0.L;
ffa0004e:	20 00       	IDLE;
ffa00050:	42 00       	STI R2;

ffa00052 <check_again>:
ffa00052:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00000(-4194304) */
ffa00056:	08 e1 0c 00 	P0.L = 0xc;		/* ( 12)	P0=0xffc0000c(-4194292) */
ffa0005a:	00 95       	R0 = W[P0] (Z);
ffa0005c:	28 49       	CC = BITTST (R0, 0x5);		/* bit  5 */
ffa0005e:	fa 13       	IF !CC JUMP 0xffa00052 <check_again>;
ffa00060:	08 e1 18 0a 	P0.L = 0xa18;		/* (2584)	P0=0xffc00a18(-4191720) */
ffa00064:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00a18(-4191720) */
ffa00068:	80 e1 d0 03 	R0 = 0x3d0 (Z);		/*		R0=0x3d0(976) */
ffa0006c:	00 8a       	W[P0] = R0.L;
ffa0006e:	24 00       	SSYNC;
ffa00070:	08 e1 14 0a 	P0.L = 0xa14;		/* (2580)	P0=0xffc00a14(-4191724) */
ffa00074:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00a14(-4191724) */
ffa00078:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa0007a:	00 8a       	W[P0] = R0.L;
ffa0007c:	24 00       	SSYNC;
ffa0007e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00a10(-4191728) */
ffa00082:	0a e1 10 0a 	P2.L = 0xa10;		/* (2576)	P2=0xffc00a10(-4191728) */
ffa00086:	40 e1 b1 e0 	R0.H = 0xe0b1;		/* (-8015)	R0=0xe0b10013(-525271021) */
ffa0008a:	00 e1 49 11 	R0.L = 0x1149;		/* (4425)	R0=0xe0b11149(-525266615) */
ffa0008e:	10 93       	[P2] = R0;
ffa00090:	24 00       	SSYNC;
ffa00092:	00 00       	NOP;
ffa00094:	00 00       	NOP;
ffa00096:	8a e1 00 00 	P2 = 0x0 (Z);		/*		P2=0x0(  0) */
ffa0009a:	12 82       	R0.L = W[P2];
ffa0009c:	00 00       	NOP;
ffa0009e:	08 e1 04 21 	P0.L = 0x2104;		/* (8452)	P0=0xffc02104(-4185852) */
ffa000a2:	48 e1 e0 ff 	P0.H = 0xffe0;		/* (-32)	P0=0xffe02104(-2088700) */
ffa000a6:	00 e1 7e 01 	R0.L = 0x17e;		/* (382)	R0=0xe0b1017e(-525270658) */
ffa000aa:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0017e <_isr_mstimer>(-6291074) */
ffa000ae:	00 e6 cb ff 	[P0 + -0xd4] = R0;
ffa000b2:	00 91       	R0 = [P0];
ffa000b4:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa000b6:	00 93       	[P0] = R0;
ffa000b8:	08 e1 50 01 	P0.L = 0x150;		/* (336)	P0=0xffe00150(-2096816) */
ffa000bc:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00150(-4193968) */
ffa000c0:	40 e1 5f ff 	R0.H = 0xff5f;		/* (-161)	R0=0xff5f017e(-10550914) */
ffa000c4:	00 e1 ff ff 	R0.L = 0xffff;		/* ( -1)	R0=0xff5fffff(-10485761) */
ffa000c8:	00 93       	[P0] = R0;
ffa000ca:	08 e1 4c 01 	P0.L = 0x14c;		/* (332)	P0=0xffc0014c(-4193972) */
ffa000ce:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0014c(-4193972) */
ffa000d2:	00 91       	R0 = [P0];
ffa000d4:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa000d6:	00 93       	[P0] = R0;
ffa000d8:	80 e1 1f 90 	R0 = 0x901f (Z);		/*		R0=0x901f(36895) */
ffa000dc:	40 00       	STI R0;
ffa000de:	9f 00       	RAISE 0xf;
ffa000e0:	08 e1 f6 00 	P0.L = 0xf6;		/* (246)	P0=0xffc000f6(-4194058) */
ffa000e4:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa000f6 <wait> */
ffa000e8:	09 e1 3c 20 	P1.L = 0x203c;		/* (8252)	P1=0x203c */
ffa000ec:	49 e1 e0 ff 	P1.H = 0xffe0;		/* (-32)	P1=0xffe0203c(-2088900) */
ffa000f0:	48 93       	[P1] = P0;
ffa000f2:	58 3e       	RETI = P0;
ffa000f4:	11 00       	RTI;

ffa000f6 <wait>:
ffa000f6:	7b 01       	[--SP] = RETI;
ffa000f8:	00 00       	NOP;
ffa000fa:	9c 00       	RAISE 0xc;
ffa000fc:	08 e1 40 07 	P0.L = 0x740;		/* (1856)	P0=0xffa00740 */
ffa00100:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00740(-4192448) */
ffa00104:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00106:	00 97       	W[P0] = R0;
ffa00108:	08 e1 30 07 	P0.L = 0x730;		/* (1840)	P0=0xffc00730(-4192464) */
ffa0010c:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00730(-4192464) */
ffa00110:	00 91       	R0 = [P0];
ffa00112:	21 e1 ff 00 	R1 = 0xff (X);		/*		R1=0xff(255) */
ffa00116:	08 56       	R0 = R0 | R1;
ffa00118:	00 97       	W[P0] = R0;
ffa0011a:	08 e1 00 32 	P0.L = 0x3200;		/* (12800)	P0=0xffc03200(-4181504) */
ffa0011e:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc03200(-4181504) */
ffa00122:	00 91       	R0 = [P0];
ffa00124:	81 e1 00 ff 	R1 = 0xff00 (Z);		/*		R1=0xff00(65280) */
ffa00128:	08 54       	R0 = R0 & R1;
ffa0012a:	00 97       	W[P0] = R0;
ffa0012c:	08 e1 40 15 	P0.L = 0x1540;		/* (5440)	P0=0xffc01540(-4188864) */
ffa00130:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc01540(-4188864) */
ffa00134:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00136:	00 97       	W[P0] = R0;
ffa00138:	08 e1 30 15 	P0.L = 0x1530;		/* (5424)	P0=0xffc01530(-4188880) */
ffa0013c:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc01530(-4188880) */
ffa00140:	00 91       	R0 = [P0];
ffa00142:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa00144:	08 56       	R0 = R0 | R1;
ffa00146:	00 97       	W[P0] = R0;
ffa00148:	08 e1 04 32 	P0.L = 0x3204;		/* (12804)	P0=0xffc03204(-4181500) */
ffa0014c:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc03204(-4181500) */
ffa00150:	00 91       	R0 = [P0];
ffa00152:	81 e1 fe ff 	R1 = 0xfffe (Z);		/*		R1=0xfffe(65534) */
ffa00156:	08 54       	R0 = R0 & R1;
ffa00158:	00 97       	W[P0] = R0;

ffa0015a <_test_loop>:
ffa0015a:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc03204(-4181500) */
ffa0015e:	08 e1 0c 07 	P0.L = 0x70c;		/* (1804)	P0=0xffc0070c(-4192500) */
ffa00162:	80 e1 ff 00 	R0 = 0xff (Z);		/*		R0=0xff(255) */
ffa00166:	00 8a       	W[P0] = R0.L;
ffa00168:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0070c(-4192500) */
ffa0016c:	08 e1 0c 15 	P0.L = 0x150c;		/* (5388)	P0=0xffc0150c(-4188916) */
ffa00170:	80 e1 01 00 	R0 = 0x1 (Z);		/*		R0=0x1(  1) */
ffa00174:	00 8a       	W[P0] = R0.L;
ffa00176:	24 00       	SSYNC;
ffa00178:	18 20       	JUMP.S 0xffa001a8 <_main>;
ffa0017a:	00 00       	NOP;
ffa0017c:	ef 2f       	JUMP.S 0xffa0015a <_test_loop>;

ffa0017e <_isr_mstimer>:
ffa0017e:	66 01       	[--SP] = ASTAT;
ffa00180:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00182:	0d e1 88 06 	P5.L = 0x688;		/* (1672)	P5=0x688 */
ffa00186:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00688(-4192632) */
ffa0018a:	07 e1 00 00 	R7.L = 0x0;		/* (  0)	R7=0x0(  0) */
ffa0018e:	47 e1 02 00 	R7.H = 0x2;		/* (  2)	R7=0x20000(131072) */
ffa00192:	2f 93       	[P5] = R7;
ffa00194:	0d e1 00 08 	P5.L = 0x800;		/* (2048)	P5=0xffc00800(-4192256) */
ffa00198:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800800 */
ffa0019c:	2f 91       	R7 = [P5];
ffa0019e:	0f 64       	R7 += 0x1;		/* (  1) */
ffa001a0:	2f 93       	[P5] = R7;
ffa001a2:	bd 05       	(R7:7, P5:5) = [SP++];
ffa001a4:	26 01       	ASTAT = [SP++];
ffa001a6:	11 00       	RTI;

ffa001a8 <_main>:
ffa001a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00000(-4194304) */
ffa001ac:	e3 05       	[--SP] = (R7:4, P5:3);
ffa001ae:	20 e1 9c c1 	R0 = -0x3e64 (X);		/*		R0=0xffffc19c(-15972) */
ffa001b2:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa001b6:	00 e8 0c 00 	LINK 0x30;		/* (48) */
ffa001ba:	10 97       	W[P2] = R0;
ffa001bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa001c0:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa001c2:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa001c6:	12 97       	W[P2] = R2;
ffa001c8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa001cc:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa001ce:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa001d2:	10 97       	W[P2] = R0;
ffa001d4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa001d8:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa001da:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa001de:	10 97       	W[P2] = R0;
ffa001e0:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa001e4:	a2 6f       	P2 += -0xc;		/* (-12) */
ffa001e6:	10 97       	W[P2] = R0;
ffa001e8:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa001ec:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa001ee:	10 97       	W[P2] = R0;
ffa001f0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa001f2:	22 6c       	P2 += 0x4;		/* (  4) */
ffa001f4:	11 97       	W[P2] = R1;
ffa001f6:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0150c(-4188916) */
ffa001fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa001fe:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0203c(-4186052) */
ffa00202:	09 e1 0c 04 	P1.L = 0x40c;		/* (1036)	P1=0xffc0040c(-4193268) */
ffa00206:	08 e1 04 04 	P0.L = 0x404;		/* (1028)	P0=0xffc00404(-4193276) */
ffa0020a:	0a e1 10 04 	P2.L = 0x410;		/* (1040)	P2=0xffc00410(-4193264) */
ffa0020e:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa00212:	01 97       	W[P0] = R1;
ffa00214:	11 97       	W[P2] = R1;
ffa00216:	08 97       	W[P1] = R0;
ffa00218:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0021a:	20 e1 88 00 	R0 = 0x88 (X);		/*		R0=0x88(136) */
ffa0021e:	10 97       	W[P2] = R0;
ffa00220:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00222:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00224:	01 97       	W[P0] = R1;
ffa00226:	0a 97       	W[P1] = R2;
ffa00228:	10 97       	W[P2] = R0;
ffa0022a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0022c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900410 */
ffa00230:	b8 4f       	R0 <<= 0x17;
ffa00232:	0a e1 d8 0b 	P2.L = 0xbd8;		/* (3032)	P2=0xff900bd8 <_printf_temp> */
ffa00236:	10 93       	[P2] = R0;
ffa00238:	20 e1 01 e0 	R0 = -0x1fff (X);		/*		R0=0xffffe001(-8191) */
ffa0023c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bd8 <_printf_temp> */
ffa00240:	0a e1 dc 0b 	P2.L = 0xbdc;		/* (3036)	P2=0xff900bdc <_printf_out> */
ffa00244:	50 4f       	R0 <<= 0xa;
ffa00246:	10 93       	[P2] = R0;
ffa00248:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90e001(-7282687) */
ffa0024c:	21 e1 80 01 	R1 = 0x180 (X);		/*		R1=0x180(384) */
ffa00250:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00254:	00 e3 18 04 	CALL 0xffa00a84 <_printf_int>;
ffa00258:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0025c:	00 e1 68 0a 	R0.L = 0xa68;		/* (2664)	R0=0xff900a68(-7337368) */
ffa00260:	00 e3 50 03 	CALL 0xffa00900 <_printf_str>;
ffa00264:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a68(-7337368) */
ffa00268:	00 e1 10 00 	R0.L = 0x10;		/* ( 16)	R0=0xff900010(-7340016) */
ffa0026c:	00 e3 4a 03 	CALL 0xffa00900 <_printf_str>;
ffa00270:	49 e1 40 00 	P1.H = 0x40;		/* ( 64)	P1=0x40040c */
ffa00274:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa00276:	20 e1 ca de 	R0 = -0x2136 (X);		/*		R0=0xffffdeca(-8502) */
ffa0027a:	21 e1 ad fb 	R1 = -0x453 (X);		/*		R1=0xfffffbad(-1107) */
ffa0027e:	22 e1 ed c0 	R2 = -0x3f13 (X);		/*		R2=0xffffc0ed(-16147) */
ffa00282:	23 e1 be ba 	R3 = -0x4542 (X);		/*		R3=0xffffbabe(-17730) */
ffa00286:	09 e1 00 00 	P1.L = 0x0;		/* (  0)	P1=0x400000 */
ffa0028a:	b2 e0 06 10 	LSETUP(0xffa0028e <_main+0xe6>, 0xffa00296 <_main+0xee>) LC1 = P1;
ffa0028e:	10 97       	W[P2] = R0;
ffa00290:	51 b4       	W[P2 + 0x2] = R1;
ffa00292:	92 b4       	W[P2 + 0x4] = R2;
ffa00294:	d3 b4       	W[P2 + 0x6] = R3;
ffa00296:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00298:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa0029a:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa0029c:	02 20       	JUMP.S 0xffa002a0 <_main+0xf8>;
ffa0029e:	45 6c       	P5 += 0x8;		/* (  8) */
ffa002a0:	2f 95       	R7 = W[P5] (Z);
ffa002a2:	80 e1 ca de 	R0 = 0xdeca (Z);		/*		R0=0xdeca(57034) */
ffa002a6:	07 08       	CC = R7 == R0;
ffa002a8:	15 18       	IF CC JUMP 0xffa002d2 <_main+0x12a>;
ffa002aa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90deca(-7282998) */
ffa002ae:	0e 30       	R1 = R6;
ffa002b0:	00 e1 24 00 	R0.L = 0x24;		/* ( 36)	R0=0xff900024(-7339996) */
ffa002b4:	00 e3 8c 03 	CALL 0xffa009cc <_printf_hex>;
ffa002b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900024(-7339996) */
ffa002bc:	00 e1 30 00 	R0.L = 0x30;		/* ( 48)	R0=0xff900030(-7339984) */
ffa002c0:	0f 30       	R1 = R7;
ffa002c2:	00 e3 85 03 	CALL 0xffa009cc <_printf_hex>;
ffa002c6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900030(-7339984) */
ffa002ca:	00 e1 68 0a 	R0.L = 0xa68;		/* (2664)	R0=0xff900a68(-7337368) */
ffa002ce:	00 e3 19 03 	CALL 0xffa00900 <_printf_str>;
ffa002d2:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa002d4:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa002d8:	08 08       	CC = R0 == R1;
ffa002da:	08 18       	IF CC JUMP 0xffa002ea <_main+0x142>;
ffa002dc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a68(-7337368) */
ffa002e0:	00 e1 24 00 	R0.L = 0x24;		/* ( 36)	R0=0xff900024(-7339996) */
ffa002e4:	0e 30       	R1 = R6;
ffa002e6:	00 e3 73 03 	CALL 0xffa009cc <_printf_hex>;
ffa002ea:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa002ec:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa002f0:	08 08       	CC = R0 == R1;
ffa002f2:	08 18       	IF CC JUMP 0xffa00302 <_main+0x15a>;
ffa002f4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900024(-7339996) */
ffa002f8:	00 e1 24 00 	R0.L = 0x24;		/* ( 36)	R0=0xff900024(-7339996) */
ffa002fc:	0e 30       	R1 = R6;
ffa002fe:	00 e3 67 03 	CALL 0xffa009cc <_printf_hex>;
ffa00302:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa00304:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa00308:	08 08       	CC = R0 == R1;
ffa0030a:	08 18       	IF CC JUMP 0xffa0031a <_main+0x172>;
ffa0030c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900024(-7339996) */
ffa00310:	00 e1 24 00 	R0.L = 0x24;		/* ( 36)	R0=0xff900024(-7339996) */
ffa00314:	0e 30       	R1 = R6;
ffa00316:	00 e3 5b 03 	CALL 0xffa009cc <_printf_hex>;
ffa0031a:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa0031e:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa00322:	55 08       	CC = P5 == P2;
ffa00324:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00326:	bc 17       	IF !CC JUMP 0xffa0029e <_main+0xf6> (BP);
ffa00328:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900024(-7339996) */
ffa0032c:	00 e1 38 00 	R0.L = 0x38;		/* ( 56)	R0=0xff900038(-7339976) */
ffa00330:	00 e3 e8 02 	CALL 0xffa00900 <_printf_str>;
ffa00334:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0fff8(-4128776) */
ffa00338:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0033a:	0a e1 84 06 	P2.L = 0x684;		/* (1668)	P2=0xffc00684(-4192636) */
ffa0033e:	10 97       	W[P2] = R0;
ffa00340:	24 00       	SSYNC;
ffa00342:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800684 */
ffa00346:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00348:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa0034c:	10 93       	[P2] = R0;
ffa0034e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa00352:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa00356:	0a e1 50 06 	P2.L = 0x650;		/* (1616)	P2=0xffc00650(-4192688) */
ffa0035a:	10 97       	W[P2] = R0;
ffa0035c:	20 e1 09 3d 	R0 = 0x3d09 (X);		/*		R0=0x3d09(15625) */
ffa00360:	18 4f       	R0 <<= 0x3;
ffa00362:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00364:	10 93       	[P2] = R0;
ffa00366:	80 e1 24 f4 	R0 = 0xf424 (Z);		/*		R0=0xf424(62500) */
ffa0036a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0036c:	10 93       	[P2] = R0;
ffa0036e:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00370:	50 95       	R0 = W[P2] (X);
ffa00372:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa00374:	10 97       	W[P2] = R0;
ffa00376:	00 e3 11 11 	CALL 0xffa02598 <_bfin_EMAC_init>;
ffa0037a:	00 0c       	CC = R0 == 0x0;
ffa0037c:	03 14       	IF !CC JUMP 0xffa00382 <_main+0x1da> (BP);
ffa0037e:	00 e3 df 12 	CALL 0xffa0293c <_DHCP_req>;
ffa00382:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00404(-4193276) */
ffa00386:	08 e1 00 32 	P0.L = 0x3200;		/* (12800)	P0=0xffc03200(-4181504) */
ffa0038a:	40 95       	R0 = W[P0] (X);
ffa0038c:	3a 62       	R2 = -0x39 (X);		/*		R2=0xffffffc7(-57) */
ffa0038e:	10 54       	R0 = R0 & R2;
ffa00390:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa00394:	00 97       	W[P0] = R0;
ffa00396:	0d e1 30 07 	P5.L = 0x730;		/* (1840)	P5=0xffc00730(-4192464) */
ffa0039a:	69 95       	R1 = W[P5] (X);
ffa0039c:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa0039e:	08 56       	R0 = R0 | R1;
ffa003a0:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00000(-4194304) */
ffa003a4:	28 97       	W[P5] = R0;
ffa003a6:	0c e1 40 07 	P4.L = 0x740;		/* (1856)	P4=0xffc00740(-4192448) */
ffa003aa:	60 95       	R0 = W[P4] (X);
ffa003ac:	10 54       	R0 = R0 & R2;
ffa003ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00650(-4192688) */
ffa003b2:	20 97       	W[P4] = R0;
ffa003b4:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa003b8:	50 95       	R0 = W[P2] (X);
ffa003ba:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa003bc:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00000(-4194304) */
ffa003c0:	10 97       	W[P2] = R0;
ffa003c2:	09 e1 30 15 	P1.L = 0x1530;		/* (5424)	P1=0xffc01530(-4188880) */
ffa003c6:	48 95       	R0 = W[P1] (X);
ffa003c8:	58 4c       	BITCLR (R0, 0xb);		/* bit 11 */
ffa003ca:	08 97       	W[P1] = R0;
ffa003cc:	50 95       	R0 = W[P2] (X);
ffa003ce:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa003d0:	10 97       	W[P2] = R0;
ffa003d2:	48 95       	R0 = W[P1] (X);
ffa003d4:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa003d6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa003da:	08 97       	W[P1] = R0;
ffa003dc:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa003e0:	50 95       	R0 = W[P2] (X);
ffa003e2:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa003e4:	10 97       	W[P2] = R0;
ffa003e6:	68 95       	R0 = W[P5] (X);
ffa003e8:	22 e1 00 38 	R2 = 0x3800 (X);		/*		R2=0x3800(14336) */
ffa003ec:	02 56       	R0 = R2 | R0;
ffa003ee:	28 97       	W[P5] = R0;
ffa003f0:	60 95       	R0 = W[P4] (X);
ffa003f2:	21 e1 ff c7 	R1 = -0x3801 (X);		/*		R1=0xffffc7ff(-14337) */
ffa003f6:	08 54       	R0 = R0 & R1;
ffa003f8:	20 97       	W[P4] = R0;
ffa003fa:	40 95       	R0 = W[P0] (X);
ffa003fc:	82 56       	R2 = R2 | R0;
ffa003fe:	02 97       	W[P0] = R2;
ffa00400:	62 6c       	P2 += 0xc;		/* ( 12) */
ffa00402:	51 95       	R1 = W[P2] (X);
ffa00404:	20 e1 c0 03 	R0 = 0x3c0 (X);		/*		R0=0x3c0(960) */
ffa00408:	08 54       	R0 = R0 & R1;
ffa0040a:	10 97       	W[P2] = R0;
ffa0040c:	51 95       	R1 = W[P2] (X);
ffa0040e:	20 e1 40 01 	R0 = 0x140 (X);		/*		R0=0x140(320) */
ffa00412:	08 56       	R0 = R0 | R1;
ffa00414:	10 97       	W[P2] = R0;
ffa00416:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa0041a:	f0 61       	R0 = 0x3e (X);		/*		R0=0x3e( 62) */
ffa0041c:	0a e1 08 09 	P2.L = 0x908;		/* (2312)	P2=0xffc00908(-4191992) */
ffa00420:	10 97       	W[P2] = R0;
ffa00422:	c0 60       	R0 = 0x18 (X);		/*		R0=0x18( 24) */
ffa00424:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00426:	10 97       	W[P2] = R0;
ffa00428:	b8 60       	R0 = 0x17 (X);		/*		R0=0x17( 23) */
ffa0042a:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa0042c:	10 97       	W[P2] = R0;
ffa0042e:	20 e1 03 4e 	R0 = 0x4e03 (X);		/*		R0=0x4e03(19971) */
ffa00432:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa00434:	10 97       	W[P2] = R0;
ffa00436:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa0043a:	c0 bb       	[FP -0x10] = R0;
ffa0043c:	20 e1 90 01 	R0 = 0x190 (X);		/*		R0=0x190(400) */
ffa00440:	d0 bb       	[FP -0xc] = R0;
ffa00442:	50 e1 90 ff 	I0.H = 0xff90;		/* (-112)	I0=0xff900000 <_l1_data_a>(-7340032) */
ffa00446:	20 e1 2c 01 	R0 = 0x12c (X);		/*		R0=0x12c(300) */
ffa0044a:	4f 32       	P1 = FP;
ffa0044c:	e0 bb       	[FP -0x8] = R0;
ffa0044e:	10 e1 84 00 	I0.L = 0x84;		/* (132)	I0=0xff900084 <_C.5.1911>(-7339900) */
ffa00452:	20 e1 b4 00 	R0 = 0xb4 (X);		/*		R0=0xb4(180) */
ffa00456:	e1 6e       	P1 += -0x24;		/* (-36) */
ffa00458:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa0045a:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc03200(-4181504) */
ffa0045e:	f0 bb       	[FP -0x4] = R0;
ffa00460:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa00462:	00 9c       	R0 = [I0++];
ffa00464:	b2 e0 02 20 	LSETUP(0xffa00468 <_main+0x2c0>, 0xffa00468 <_main+0x2c0>) LC1 = P2;
ffa00468:	03 c8 00 18 	MNOP || [P1++] = R0 || R0 = [I0++];
ffa0046c:	08 92 00 9c 
ffa00470:	08 92       	[P1++] = R0;
ffa00472:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00474:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa00476:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00478:	31 e1 00 00 	I1 = 0x0 (X);		/*		I1=0x0(  0) */
ffa0047c:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa0047e:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00480:	03 68       	P3 = 0x0 (X);		/*		P3=0x0(  0) */
ffa00482:	30 e1 00 00 	I0 = 0x0 (X);		/*		I0=0x0(  0) */
ffa00486:	08 e1 30 09 	P0.L = 0x930;		/* (2352)	P0=0xffc00930(-4191952) */
ffa0048a:	44 60       	R4 = 0x8 (X);		/*		R4=0x8(  8) */
ffa0048c:	00 00       	NOP;
ffa0048e:	40 95       	R0 = W[P0] (X);
ffa00490:	04 54       	R0 = R4 & R0;
ffa00492:	00 0c       	CC = R0 == 0x0;
ffa00494:	4a 14       	IF !CC JUMP 0xffa00528 <_main+0x380> (BP);
ffa00496:	22 e1 ff 7f 	R2 = 0x7fff (X);		/*		R2=0x7fff(32767) */
ffa0049a:	35 50       	R0 = R5 + R6;
ffa0049c:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0049e:	08 4d       	R0 >>>= 0x1;
ffa004a0:	99 4f       	R1 <<= 0x13;
ffa004a2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00004(-4194300) */
ffa004a6:	08 56       	R0 = R0 | R1;
ffa004a8:	0a e1 10 09 	P2.L = 0x910;		/* (2320)	P2=0xffc00910(-4191984) */
ffa004ac:	10 93       	[P2] = R0;
ffa004ae:	40 95       	R0 = W[P0] (X);
ffa004b0:	04 54       	R0 = R4 & R0;
ffa004b2:	00 0c       	CC = R0 == 0x0;
ffa004b4:	0d 18       	IF CC JUMP 0xffa004ce <_main+0x326>;
	...
ffa004be:	00 00       	NOP;
ffa004c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00910(-4191984) */
ffa004c4:	0a e1 30 09 	P2.L = 0x930;		/* (2352)	P2=0xffc00930(-4191952) */
ffa004c8:	50 95       	R0 = W[P2] (X);
ffa004ca:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa004cc:	f6 17       	IF !CC JUMP 0xffa004b8 <_main+0x310> (BP);
ffa004ce:	1f 50       	R0 = R7 + R3;
ffa004d0:	c9 60       	R1 = 0x19 (X);		/*		R1=0x19( 25) */
ffa004d2:	81 4f       	R1 <<= 0x10;
ffa004d4:	08 4d       	R0 >>>= 0x1;
ffa004d6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00930(-4191952) */
ffa004da:	08 56       	R0 = R0 | R1;
ffa004dc:	0a e1 10 09 	P2.L = 0x910;		/* (2320)	P2=0xffc00910(-4191984) */
ffa004e0:	10 93       	[P2] = R0;
ffa004e2:	bb 5a       	P2 = P3 + FP;
ffa004e4:	10 e4 fc ff 	R0 = [P2 + -0x10];
ffa004e8:	0f 64       	R7 += 0x1;		/* (  1) */
ffa004ea:	a0 32       	P4 = I0;
ffa004ec:	45 50       	R1 = R5 + R0;
ffa004ee:	bc 5a       	P2 = P4 + FP;
ffa004f0:	38 50       	R0 = R0 + R7;
ffa004f2:	c7 42       	R7 = R0.L (Z);
ffa004f4:	0b 64       	R3 += 0x1;		/* (  1) */
ffa004f6:	10 e4 f7 ff 	R0 = [P2 + -0x24];
ffa004fa:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x910 */
ffa004fe:	cd 42       	R5 = R1.L (Z);
ffa00500:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00502:	46 50       	R1 = R6 + R0;
ffa00504:	0a e1 50 c3 	P2.L = 0xc350;		/* (-15536)	P2=0xc350 */
ffa00508:	18 50       	R0 = R0 + R3;
ffa0050a:	91 55       	R6 = R1 & R2;
ffa0050c:	d0 54       	R3 = R0 & R2;
ffa0050e:	51 09       	CC = P1 <= P2;
ffa00510:	11 1c       	IF CC JUMP 0xffa00532 <_main+0x38a> (BP);
ffa00512:	4d 30       	R1 = P5;
ffa00514:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa00516:	09 64       	R1 += 0x1;		/* (  1) */
ffa00518:	41 54       	R1 = R1 & R0;
ffa0051a:	29 32       	P5 = R1;
ffa0051c:	40 95       	R0 = W[P0] (X);
ffa0051e:	04 54       	R0 = R4 & R0;
ffa00520:	00 0c       	CC = R0 == 0x0;
ffa00522:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa00524:	6b 44       	P3 = P5 << 0x2;
ffa00526:	ba 1f       	IF CC JUMP 0xffa0049a <_main+0x2f2> (BP);
	...
ffa00530:	ae 2f       	JUMP.S 0xffa0048c <_main+0x2e4>;
ffa00532:	2c e1 a8 61 	P4 = 0x61a8 (X);		/*		P4=0x61a8(25000) */
ffa00536:	61 08       	CC = P1 == P4;
ffa00538:	aa 17       	IF !CC JUMP 0xffa0048c <_main+0x2e4> (BP);
ffa0053a:	91 30       	R2 = I1;
ffa0053c:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660003(1717960707) */
ffa00540:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00542:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa00546:	80 c0 10 18 	A1 = R2.L * R0.L (FU);
ffa0054a:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa0054e:	11 c1 10 86 	A1 += R2.H * R0.L (M), A0 = R2.H * R0.H (IS);
ffa00552:	11 c1 02 98 	A1 += R0.H * R2.L (M, IS);
ffa00556:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa0055a:	0b c4 00 00 	R0 = (A0 += A1);
ffa0055e:	08 4d       	R0 >>>= 0x1;
ffa00560:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa00564:	08 52       	R0 = R0 - R1;
ffa00566:	20 32       	P4 = R0;
ffa00568:	a4 5e       	P2 = P4 + (P4 << 0x2);
ffa0056a:	42 30       	R0 = P2;
ffa0056c:	02 52       	R0 = R2 - R0;
ffa0056e:	08 34       	I1 = R0;
ffa00570:	10 4f       	R0 <<= 0x2;
ffa00572:	00 34       	I0 = R0;
ffa00574:	8c 2f       	JUMP.S 0xffa0048c <_main+0x2e4>;
	...

ffa00578 <_wait_flash>:
ffa00578:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0057a:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa0057e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00582:	0d e1 04 15 	P5.L = 0x1504;		/* (5380)	P5=0xffc01504(-4188924) */
ffa00586:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa00588:	2f 97       	W[P5] = R7;
ffa0058a:	24 00       	SSYNC;
ffa0058c:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa0058e:	00 e3 fb 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa00592:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00594:	00 e3 f8 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa00598:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0c350(-4144304) */
ffa0059c:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa005a0:	17 97       	W[P2] = R7;
ffa005a2:	24 00       	SSYNC;
ffa005a4:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa005a6:	f1 17       	IF !CC JUMP 0xffa00588 <_wait_flash+0x10> (BP);
ffa005a8:	01 e8 00 00 	UNLINK;
ffa005ac:	bd 05       	(R7:7, P5:5) = [SP++];
ffa005ae:	10 00       	RTS;

ffa005b0 <_write_enable_flash>:
ffa005b0:	fc 05       	[--SP] = (R7:7, P5:4);
ffa005b2:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01504(-4188924) */
ffa005b6:	0d e1 04 15 	P5.L = 0x1504;		/* (5380)	P5=0xffc01504(-4188924) */
ffa005ba:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa005bc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa005c0:	2f 97       	W[P5] = R7;
ffa005c2:	24 00       	SSYNC;
ffa005c4:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc061a8(-4169304) */
ffa005c8:	0c e1 08 15 	P4.L = 0x1508;		/* (5384)	P4=0xffc01508(-4188920) */
ffa005cc:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa005d0:	00 e3 da 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa005d4:	27 97       	W[P4] = R7;
ffa005d6:	24 00       	SSYNC;
ffa005d8:	2f 97       	W[P5] = R7;
ffa005da:	24 00       	SSYNC;
ffa005dc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa005de:	00 e3 d3 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa005e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa005e4:	00 e3 d0 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa005e8:	27 97       	W[P4] = R7;
ffa005ea:	24 00       	SSYNC;
ffa005ec:	2f 97       	W[P5] = R7;
ffa005ee:	24 00       	SSYNC;
ffa005f0:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa005f2:	00 e3 c9 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa005f6:	27 97       	W[P4] = R7;
ffa005f8:	24 00       	SSYNC;
ffa005fa:	01 e8 00 00 	UNLINK;
ffa005fe:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00600:	10 00       	RTS;
	...

ffa00604 <_read_flash_u32>:
ffa00604:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00608:	70 05       	[--SP] = (R7:6);
ffa0060a:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0060e:	16 60       	R6 = 0x2 (X);		/*		R6=0x2(  2) */
ffa00610:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00614:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R6 || NOP;
ffa00618:	16 97 00 00 
ffa0061c:	24 00       	SSYNC;
ffa0061e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa00620:	00 e3 b2 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa00624:	82 c6 87 81 	R0 = R7 >> 0x10;
ffa00628:	40 43       	R0 = R0.B (Z);
ffa0062a:	00 e3 ad 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa0062e:	82 c6 c7 81 	R0 = R7 >> 0x8;
ffa00632:	40 43       	R0 = R0.B (Z);
ffa00634:	7f 43       	R7 = R7.B (Z);
ffa00636:	00 e3 a7 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa0063a:	07 30       	R0 = R7;
ffa0063c:	00 e3 a4 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa00640:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00642:	00 e3 a1 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa00646:	47 43       	R7 = R0.B (Z);
ffa00648:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0064a:	00 e3 9d 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa0064e:	40 43       	R0 = R0.B (Z);
ffa00650:	47 4f       	R7 <<= 0x8;
ffa00652:	c7 51       	R7 = R7 + R0;
ffa00654:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00656:	00 e3 97 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa0065a:	40 43       	R0 = R0.B (Z);
ffa0065c:	47 4f       	R7 <<= 0x8;
ffa0065e:	c7 51       	R7 = R7 + R0;
ffa00660:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00662:	00 e3 91 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa00666:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0066a:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0066e:	47 4f       	R7 <<= 0x8;
ffa00670:	16 97       	W[P2] = R6;
ffa00672:	24 00       	SSYNC;
ffa00674:	40 43       	R0 = R0.B (Z);
ffa00676:	c7 51       	R7 = R7 + R0;
ffa00678:	01 e8 00 00 	UNLINK;
ffa0067c:	07 30       	R0 = R7;
ffa0067e:	30 05       	(R7:6) = [SP++];
ffa00680:	10 00       	RTS;
	...

ffa00684 <_read_flash_u8>:
ffa00684:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00688:	70 05       	[--SP] = (R7:6);
ffa0068a:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0068e:	16 60       	R6 = 0x2 (X);		/*		R6=0x2(  2) */
ffa00690:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00694:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R6 || NOP;
ffa00698:	16 97 00 00 
ffa0069c:	24 00       	SSYNC;
ffa0069e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa006a0:	00 e3 72 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa006a4:	82 c6 87 81 	R0 = R7 >> 0x10;
ffa006a8:	40 43       	R0 = R0.B (Z);
ffa006aa:	00 e3 6d 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa006ae:	82 c6 c7 81 	R0 = R7 >> 0x8;
ffa006b2:	40 43       	R0 = R0.B (Z);
ffa006b4:	7f 43       	R7 = R7.B (Z);
ffa006b6:	00 e3 67 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa006ba:	07 30       	R0 = R7;
ffa006bc:	00 e3 64 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa006c0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa006c2:	00 e3 61 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa006c6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa006ca:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa006ce:	16 97       	W[P2] = R6;
ffa006d0:	24 00       	SSYNC;
ffa006d2:	01 e8 00 00 	UNLINK;
ffa006d6:	40 43       	R0 = R0.B (Z);
ffa006d8:	30 05       	(R7:6) = [SP++];
ffa006da:	10 00       	RTS;

ffa006dc <_write_flash>:
ffa006dc:	e3 05       	[--SP] = (R7:4, P5:3);
ffa006de:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa006e2:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01504(-4188924) */
ffa006e6:	f1 bb       	[FP -0x4] = R1;
ffa006e8:	0d e1 04 15 	P5.L = 0x1504;		/* (5380)	P5=0xffc01504(-4188924) */
ffa006ec:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa006ee:	20 30       	R4 = R0;
ffa006f0:	ff e3 60 ff 	CALL 0xffa005b0 <_write_enable_flash>;
ffa006f4:	2f 97       	W[P5] = R7;
ffa006f6:	24 00       	SSYNC;
ffa006f8:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa006fa:	00 e3 45 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa006fe:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa00700:	00 e3 42 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa00704:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa00708:	00 e3 3e 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa0070c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0070e:	00 e3 3b 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa00712:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00716:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0071a:	17 97       	W[P2] = R7;
ffa0071c:	24 00       	SSYNC;
ffa0071e:	ff e3 2d ff 	CALL 0xffa00578 <_wait_flash>;
ffa00722:	04 0c       	CC = R4 == 0x0;
ffa00724:	66 18       	IF CC JUMP 0xffa007f0 <_write_flash+0x114>;
ffa00726:	fc b9       	P4 = [FP -0x4];
ffa00728:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa0072a:	15 60       	R5 = 0x2 (X);		/*		R5=0x2(  2) */
ffa0072c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00730:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00734:	15 97       	W[P2] = R5;
ffa00736:	24 00       	SSYNC;
ffa00738:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01504(-4188924) */
ffa0073c:	0d e1 08 15 	P5.L = 0x1508;		/* (5384)	P5=0xffc01508(-4188920) */
ffa00740:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa00742:	00 e3 21 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa00746:	2d 97       	W[P5] = R5;
ffa00748:	24 00       	SSYNC;
ffa0074a:	4b e1 07 00 	P3.H = 0x7;		/* (  7)	P3=0x70000 */
ffa0074e:	0b e1 00 f0 	P3.L = 0xf000;		/* (-4096)	P3=0x7f000 */
ffa00752:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00756:	43 30       	R0 = P3;
ffa00758:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0075c:	04 cc 30 0e 	R7 = R6 + R0 (NS) || W[P2] = R5 || NOP;
ffa00760:	15 97 00 00 
ffa00764:	24 00       	SSYNC;
ffa00766:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa00768:	00 e3 0e 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa0076c:	82 c6 87 81 	R0 = R7 >> 0x10;
ffa00770:	47 4e       	R7 >>= 0x8;
ffa00772:	7f 43       	R7 = R7.B (Z);
ffa00774:	40 43       	R0 = R0.B (Z);
ffa00776:	00 e3 07 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa0077a:	07 30       	R0 = R7;
ffa0077c:	00 e3 04 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa00780:	70 43       	R0 = R6.B (Z);
ffa00782:	00 e3 01 05 	CALL 0xffa01184 <_spi_write_byte>;
ffa00786:	20 98       	R0 = B[P4++] (Z);
ffa00788:	00 e3 fe 04 	CALL 0xffa01184 <_spi_write_byte>;
ffa0078c:	2d 97       	W[P5] = R5;
ffa0078e:	24 00       	SSYNC;
ffa00790:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00792:	ff e3 f3 fe 	CALL 0xffa00578 <_wait_flash>;
ffa00796:	34 08       	CC = R4 == R6;
ffa00798:	ca 17       	IF !CC JUMP 0xffa0072c <_write_flash+0x50> (BP);
ffa0079a:	fd b9       	P5 = [FP -0x4];
ffa0079c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0079e:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
ffa007a0:	73 30       	R6 = P3;
ffa007a2:	65 32       	P4 = P5;
ffa007a4:	02 20       	JUMP.S 0xffa007a8 <_write_flash+0xcc>;
ffa007a6:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa007a8:	37 50       	R0 = R7 + R6;
ffa007aa:	ff e3 6d ff 	CALL 0xffa00684 <_read_flash_u8>;
ffa007ae:	41 43       	R1 = R0.B (Z);
ffa007b0:	28 99       	R0 = B[P5] (Z);
ffa007b2:	01 08       	CC = R1 == R0;
ffa007b4:	0f 18       	IF CC JUMP 0xffa007d2 <_write_flash+0xf6>;
ffa007b6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa007ba:	00 e1 4c 00 	R0.L = 0x4c;		/* ( 76)	R0=0xff90004c(-7339956) */
ffa007be:	00 e3 b1 00 	CALL 0xffa00920 <_printf_hex_byte>;
ffa007c2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90004c(-7339956) */
ffa007c6:	21 99       	R1 = B[P4] (Z);
ffa007c8:	00 e1 5c 00 	R0.L = 0x5c;		/* ( 92)	R0=0xff90005c(-7339940) */
ffa007cc:	00 e3 aa 00 	CALL 0xffa00920 <_printf_hex_byte>;
ffa007d0:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa007d2:	0f 64       	R7 += 0x1;		/* (  1) */
ffa007d4:	3c 08       	CC = R4 == R7;
ffa007d6:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa007d8:	e7 17       	IF !CC JUMP 0xffa007a6 <_write_flash+0xca> (BP);
ffa007da:	05 48       	CC = !BITTST (R5, 0x0);		/* bit  0 */
ffa007dc:	0a 10       	IF !CC JUMP 0xffa007f0 <_write_flash+0x114>;
ffa007de:	01 e8 00 00 	UNLINK;
ffa007e2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90005c(-7339940) */
ffa007e6:	00 e1 68 00 	R0.L = 0x68;		/* (104)	R0=0xff900068(-7339928) */
ffa007ea:	a3 05       	(R7:4, P5:3) = [SP++];
ffa007ec:	00 e2 8a 00 	JUMP.L 0xffa00900 <_printf_str>;
ffa007f0:	01 e8 00 00 	UNLINK;
ffa007f4:	a3 05       	(R7:4, P5:3) = [SP++];
ffa007f6:	10 00       	RTS;

ffa007f8 <_eth_listen>:
ffa007f8:	00 0c       	CC = R0 == 0x0;
ffa007fa:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa007fe:	04 18       	IF CC JUMP 0xffa00806 <_eth_listen+0xe>;
ffa00800:	01 e8 00 00 	UNLINK;
ffa00804:	10 00       	RTS;
ffa00806:	47 30       	R0 = FP;
ffa00808:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa0080a:	00 e3 0b 11 	CALL 0xffa02a20 <_bfin_EMAC_recv>;
ffa0080e:	00 0d       	CC = R0 <= 0x0;
ffa00810:	f8 1b       	IF CC JUMP 0xffa00800 <_eth_listen+0x8>;
ffa00812:	f9 b9       	P1 = [FP -0x4];
ffa00814:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901504 */
ffa00818:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetDataDestIP> */
ffa0081c:	11 91       	R1 = [P2];
ffa0081e:	c8 a1       	R0 = [P1 + 0x1c];
ffa00820:	08 08       	CC = R0 == R1;
ffa00822:	ef 17       	IF !CC JUMP 0xffa00800 <_eth_listen+0x8> (BP);
ffa00824:	48 e4 13 00 	R0 = W[P1 + 0x26] (Z);
ffa00828:	00 e3 d8 07 	CALL 0xffa017d8 <_htons>;
ffa0082c:	c0 42       	R0 = R0.L (Z);
ffa0082e:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa00832:	08 08       	CC = R0 == R1;
ffa00834:	e6 17       	IF !CC JUMP 0xffa00800 <_eth_listen+0x8> (BP);
ffa00836:	f0 b9       	R0 = [FP -0x4];
ffa00838:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa0083c:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa0083e:	01 e1 b5 0b 	R1.L = 0xbb5;		/* (2997)	R1=0xff900bb5 <_g_outpkt>(-7337035) */
ffa00842:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa00844:	00 e3 06 02 	CALL 0xffa00c50 <_memcpy_>;
ffa00848:	dc 2f       	JUMP.S 0xffa00800 <_eth_listen+0x8>;
	...

ffa0084c <_uart_str>:
ffa0084c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c60(-4191136) */
ffa00850:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00854:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa00858:	08 32       	P1 = R0;
ffa0085a:	50 95       	R0 = W[P2] (X);
ffa0085c:	c0 42       	R0 = R0.L (Z);
ffa0085e:	08 0c       	CC = R0 == 0x1;
ffa00860:	06 18       	IF CC JUMP 0xffa0086c <_uart_str+0x20>;
ffa00862:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00864:	02 30       	R0 = R2;
ffa00866:	01 e8 00 00 	UNLINK;
ffa0086a:	10 00       	RTS;
ffa0086c:	48 99       	R0 = B[P1] (X);
ffa0086e:	01 43       	R1 = R0.B (X);
ffa00870:	01 0c       	CC = R1 == 0x0;
ffa00872:	f8 1b       	IF CC JUMP 0xffa00862 <_uart_str+0x16>;
ffa00874:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa00878:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0087a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0087c:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa00880:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa00884:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa00886:	b2 e0 1c 00 	LSETUP(0xffa0088a <_uart_str+0x3e>, 0xffa008be <_uart_str+0x72>) LC1 = P0;
ffa0088a:	19 08       	CC = R1 == R3;
ffa0088c:	1b 18       	IF CC JUMP 0xffa008c2 <_uart_str+0x76>;
ffa0088e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa00892:	00 43       	R0 = R0.B (X);
ffa00894:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00898:	10 97       	W[P2] = R0;
ffa0089a:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa0089c:	50 95       	R0 = W[P2] (X);
ffa0089e:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa008a0:	0a 10       	IF !CC JUMP 0xffa008b4 <_uart_str+0x68>;
ffa008a2:	00 00       	NOP;
ffa008a4:	00 00       	NOP;
ffa008a6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa008aa:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa008ae:	50 95       	R0 = W[P2] (X);
ffa008b0:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa008b2:	f9 1f       	IF CC JUMP 0xffa008a4 <_uart_str+0x58> (BP);
ffa008b4:	48 99       	R0 = B[P1] (X);
ffa008b6:	01 43       	R1 = R0.B (X);
ffa008b8:	01 0c       	CC = R1 == 0x0;
ffa008ba:	0a 64       	R2 += 0x1;		/* (  1) */
ffa008bc:	d4 1b       	IF CC JUMP 0xffa00864 <_uart_str+0x18>;
ffa008be:	09 6c       	P1 += 0x1;		/* (  1) */
ffa008c0:	d2 2f       	JUMP.S 0xffa00864 <_uart_str+0x18>;
ffa008c2:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa008c4:	20 9f       	W[I0] = R0.L;
ffa008c6:	02 20       	JUMP.S 0xffa008ca <_uart_str+0x7e>;
ffa008c8:	00 00       	NOP;
ffa008ca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa008ce:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa008d2:	50 95       	R0 = W[P2] (X);
ffa008d4:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa008d6:	f9 1f       	IF CC JUMP 0xffa008c8 <_uart_str+0x7c> (BP);
ffa008d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa008dc:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa008de:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa008e2:	10 97       	W[P2] = R0;
ffa008e4:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa008e6:	50 95       	R0 = W[P2] (X);
ffa008e8:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa008ea:	e5 13       	IF !CC JUMP 0xffa008b4 <_uart_str+0x68>;
ffa008ec:	00 00       	NOP;
ffa008ee:	00 00       	NOP;
ffa008f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa008f4:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa008f8:	50 95       	R0 = W[P2] (X);
ffa008fa:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa008fc:	f9 1f       	IF CC JUMP 0xffa008ee <_uart_str+0xa2> (BP);
ffa008fe:	db 2f       	JUMP.S 0xffa008b4 <_uart_str+0x68>;

ffa00900 <_printf_str>:
ffa00900:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00904:	01 e8 00 00 	UNLINK;
ffa00908:	ff e2 a2 ff 	JUMP.L 0xffa0084c <_uart_str>;

ffa0090c <_printf_newline>:
ffa0090c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00910:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa00914:	00 e1 68 0a 	R0.L = 0xa68;		/* (2664)	R0=0xff900a68(-7337368) */
ffa00918:	01 e8 00 00 	UNLINK;
ffa0091c:	ff e2 98 ff 	JUMP.L 0xffa0084c <_uart_str>;

ffa00920 <_printf_hex_byte>:
ffa00920:	fc 05       	[--SP] = (R7:7, P5:4);
ffa00922:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00926:	28 32       	P5 = R0;
ffa00928:	39 30       	R7 = R1;
ffa0092a:	00 e3 b1 01 	CALL 0xffa00c8c <_strlen_>;
ffa0092e:	10 30       	R2 = R0;
ffa00930:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa00934:	02 09       	CC = R2 <= R0;
ffa00936:	41 10       	IF !CC JUMP 0xffa009b8 <_printf_hex_byte+0x98>;
ffa00938:	02 0d       	CC = R2 <= 0x0;
ffa0093a:	44 18       	IF CC JUMP 0xffa009c2 <_printf_hex_byte+0xa2>;
ffa0093c:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa00940:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00942:	08 e1 dc 0b 	P0.L = 0xbdc;		/* (3036)	P0=0xff900bdc <_printf_out> */
ffa00946:	09 32       	P1 = R1;
ffa00948:	42 91       	P2 = [P0];
ffa0094a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0094c:	68 98       	R0 = B[P5++] (X);
ffa0094e:	0a 08       	CC = R2 == R1;
ffa00950:	8a 5a       	P2 = P2 + P1;
ffa00952:	10 9b       	B[P2] = R0;
ffa00954:	f9 17       	IF !CC JUMP 0xffa00946 <_printf_hex_byte+0x26> (BP);
ffa00956:	0a 32       	P1 = R2;
ffa00958:	42 91       	P2 = [P0];
ffa0095a:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0095c:	22 32       	P4 = R2;
ffa0095e:	79 43       	R1 = R7.B (Z);
ffa00960:	8a 5a       	P2 = P2 + P1;
ffa00962:	10 9b       	B[P2] = R0;
ffa00964:	42 91       	P2 = [P0];
ffa00966:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00968:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0096c:	11 6c       	P1 += 0x2;		/* (  2) */
ffa0096e:	a2 5a       	P2 = P2 + P4;
ffa00970:	10 9b       	B[P2] = R0;
ffa00972:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa00974:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa00976:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa00978:	01 30       	R0 = R1;
ffa0097a:	10 40       	R0 >>>= R2;
ffa0097c:	18 54       	R0 = R0 & R3;
ffa0097e:	38 09       	CC = R0 <= R7;
ffa00980:	1a 1c       	IF CC JUMP 0xffa009b4 <_printf_hex_byte+0x94> (BP);
ffa00982:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00984:	42 91       	P2 = [P0];
ffa00986:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa00988:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff901508 */
ffa0098c:	22 0c       	CC = R2 == -0x4;
ffa0098e:	8a 5a       	P2 = P2 + P1;
ffa00990:	0d e1 dc 0b 	P5.L = 0xbdc;		/* (3036)	P5=0xff900bdc <_printf_out> */
ffa00994:	10 9b       	B[P2] = R0;
ffa00996:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00998:	f0 17       	IF !CC JUMP 0xffa00978 <_printf_hex_byte+0x58> (BP);
ffa0099a:	6a 91       	P2 = [P5];
ffa0099c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0099e:	94 5a       	P2 = P4 + P2;
ffa009a0:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa009a4:	28 91       	R0 = [P5];
ffa009a6:	ff e3 53 ff 	CALL 0xffa0084c <_uart_str>;
ffa009aa:	01 e8 00 00 	UNLINK;
ffa009ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009b0:	bc 05       	(R7:7, P5:4) = [SP++];
ffa009b2:	10 00       	RTS;
ffa009b4:	80 65       	R0 += 0x30;		/* ( 48) */
ffa009b6:	e7 2f       	JUMP.S 0xffa00984 <_printf_hex_byte+0x64>;
ffa009b8:	01 e8 00 00 	UNLINK;
ffa009bc:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa009be:	bc 05       	(R7:7, P5:4) = [SP++];
ffa009c0:	10 00       	RTS;
ffa009c2:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900bdc <_printf_out> */
ffa009c6:	08 e1 dc 0b 	P0.L = 0xbdc;		/* (3036)	P0=0xff900bdc <_printf_out> */
ffa009ca:	c6 2f       	JUMP.S 0xffa00956 <_printf_hex_byte+0x36>;

ffa009cc <_printf_hex>:
ffa009cc:	fb 05       	[--SP] = (R7:7, P5:3);
ffa009ce:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa009d2:	28 32       	P5 = R0;
ffa009d4:	39 30       	R7 = R1;
ffa009d6:	00 e3 5b 01 	CALL 0xffa00c8c <_strlen_>;
ffa009da:	10 30       	R2 = R0;
ffa009dc:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa009e0:	02 09       	CC = R2 <= R0;
ffa009e2:	47 10       	IF !CC JUMP 0xffa00a70 <_printf_hex+0xa4>;
ffa009e4:	02 0d       	CC = R2 <= 0x0;
ffa009e6:	4a 18       	IF CC JUMP 0xffa00a7a <_printf_hex+0xae>;
ffa009e8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900000 <_l1_data_a> */
ffa009ec:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa009ee:	09 e1 dc 0b 	P1.L = 0xbdc;		/* (3036)	P1=0xff900bdc <_printf_out> */
ffa009f2:	01 32       	P0 = R1;
ffa009f4:	4a 91       	P2 = [P1];
ffa009f6:	09 64       	R1 += 0x1;		/* (  1) */
ffa009f8:	68 98       	R0 = B[P5++] (X);
ffa009fa:	0a 08       	CC = R2 == R1;
ffa009fc:	82 5a       	P2 = P2 + P0;
ffa009fe:	10 9b       	B[P2] = R0;
ffa00a00:	f9 17       	IF !CC JUMP 0xffa009f2 <_printf_hex+0x26> (BP);
ffa00a02:	02 32       	P0 = R2;
ffa00a04:	4a 91       	P2 = [P1];
ffa00a06:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00a08:	1a 32       	P3 = R2;
ffa00a0a:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa00a0c:	82 5a       	P2 = P2 + P0;
ffa00a0e:	10 9b       	B[P2] = R0;
ffa00a10:	4a 91       	P2 = [P1];
ffa00a12:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa00a14:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00a18:	10 6c       	P0 += 0x2;		/* (  2) */
ffa00a1a:	9a 5a       	P2 = P2 + P3;
ffa00a1c:	10 9b       	B[P2] = R0;
ffa00a1e:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa00a20:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa00a22:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa00a24:	b2 e0 10 50 	LSETUP(0xffa00a28 <_printf_hex+0x5c>, 0xffa00a44 <_printf_hex+0x78>) LC1 = P5;
ffa00a28:	07 30       	R0 = R7;
ffa00a2a:	08 40       	R0 >>>= R1;
ffa00a2c:	10 54       	R0 = R0 & R2;
ffa00a2e:	18 09       	CC = R0 <= R3;
ffa00a30:	1e 1c       	IF CC JUMP 0xffa00a6c <_printf_hex+0xa0> (BP);
ffa00a32:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00a34:	4a 91       	P2 = [P1];
ffa00a36:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff901508 */
ffa00a3a:	0c e1 dc 0b 	P4.L = 0xbdc;		/* (3036)	P4=0xff900bdc <_printf_out> */
ffa00a3e:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa00a40:	82 5a       	P2 = P2 + P0;
ffa00a42:	10 9b       	B[P2] = R0;
ffa00a44:	08 6c       	P0 += 0x1;		/* (  1) */
ffa00a46:	62 91       	P2 = [P4];
ffa00a48:	4b 32       	P1 = P3;
ffa00a4a:	49 6c       	P1 += 0x9;		/* (  9) */
ffa00a4c:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00a4e:	8a 5a       	P2 = P2 + P1;
ffa00a50:	10 9b       	B[P2] = R0;
ffa00a52:	62 91       	P2 = [P4];
ffa00a54:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a56:	8a 5a       	P2 = P2 + P1;
ffa00a58:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa00a5c:	20 91       	R0 = [P4];
ffa00a5e:	ff e3 f7 fe 	CALL 0xffa0084c <_uart_str>;
ffa00a62:	01 e8 00 00 	UNLINK;
ffa00a66:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a68:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00a6a:	10 00       	RTS;
ffa00a6c:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00a6e:	e3 2f       	JUMP.S 0xffa00a34 <_printf_hex+0x68>;
ffa00a70:	01 e8 00 00 	UNLINK;
ffa00a74:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00a76:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00a78:	10 00       	RTS;
ffa00a7a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bdc <_printf_out> */
ffa00a7e:	09 e1 dc 0b 	P1.L = 0xbdc;		/* (3036)	P1=0xff900bdc <_printf_out> */
ffa00a82:	c0 2f       	JUMP.S 0xffa00a02 <_printf_hex+0x36>;

ffa00a84 <_printf_int>:
ffa00a84:	f3 05       	[--SP] = (R7:6, P5:3);
ffa00a86:	01 0c       	CC = R1 == 0x0;
ffa00a88:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00a8c:	28 32       	P5 = R0;
ffa00a8e:	39 30       	R7 = R1;
ffa00a90:	41 14       	IF !CC JUMP 0xffa00b12 <_printf_int+0x8e> (BP);
ffa00a92:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90f000 */
ffa00a96:	0b e1 d8 0b 	P3.L = 0xbd8;		/* (3032)	P3=0xff900bd8 <_printf_temp> */
ffa00a9a:	5a 91       	P2 = [P3];
ffa00a9c:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00a9e:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa00aa0:	10 9b       	B[P2] = R0;
ffa00aa2:	45 30       	R0 = P5;
ffa00aa4:	00 e3 f4 00 	CALL 0xffa00c8c <_strlen_>;
ffa00aa8:	c6 50       	R3 = R6 + R0;
ffa00aaa:	10 30       	R2 = R0;
ffa00aac:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa00ab0:	03 09       	CC = R3 <= R0;
ffa00ab2:	4e 10       	IF !CC JUMP 0xffa00b4e <_printf_int+0xca>;
ffa00ab4:	02 0d       	CC = R2 <= 0x0;
ffa00ab6:	79 18       	IF CC JUMP 0xffa00ba8 <_printf_int+0x124>;
ffa00ab8:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900bdc <_printf_out> */
ffa00abc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00abe:	08 e1 dc 0b 	P0.L = 0xbdc;		/* (3036)	P0=0xff900bdc <_printf_out> */
ffa00ac2:	09 32       	P1 = R1;
ffa00ac4:	42 91       	P2 = [P0];
ffa00ac6:	09 64       	R1 += 0x1;		/* (  1) */
ffa00ac8:	68 98       	R0 = B[P5++] (X);
ffa00aca:	0a 08       	CC = R2 == R1;
ffa00acc:	8a 5a       	P2 = P2 + P1;
ffa00ace:	10 9b       	B[P2] = R0;
ffa00ad0:	f9 17       	IF !CC JUMP 0xffa00ac2 <_printf_int+0x3e> (BP);
ffa00ad2:	06 0d       	CC = R6 <= 0x0;
ffa00ad4:	12 18       	IF CC JUMP 0xffa00af8 <_printf_int+0x74>;
ffa00ad6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00ad8:	00 91       	R0 = [P0];
ffa00ada:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa00ade:	5a 91 00 00 
ffa00ae2:	08 50       	R0 = R0 + R1;
ffa00ae4:	08 32       	P1 = R0;
ffa00ae6:	0e 52       	R0 = R6 - R1;
ffa00ae8:	28 32       	P5 = R0;
ffa00aea:	09 64       	R1 += 0x1;		/* (  1) */
ffa00aec:	0e 08       	CC = R6 == R1;
ffa00aee:	aa 5a       	P2 = P2 + P5;
ffa00af0:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa00af4:	08 9b       	B[P1] = R0;
ffa00af6:	f1 17       	IF !CC JUMP 0xffa00ad8 <_printf_int+0x54> (BP);
ffa00af8:	0b 32       	P1 = R3;
ffa00afa:	42 91       	P2 = [P0];
ffa00afc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00afe:	91 5a       	P2 = P1 + P2;
ffa00b00:	10 9b       	B[P2] = R0;
ffa00b02:	00 91       	R0 = [P0];
ffa00b04:	ff e3 a4 fe 	CALL 0xffa0084c <_uart_str>;
ffa00b08:	01 e8 00 00 	UNLINK;
ffa00b0c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b0e:	b3 05       	(R7:6, P5:3) = [SP++];
ffa00b10:	10 00       	RTS;
ffa00b12:	01 0d       	CC = R1 <= 0x0;
ffa00b14:	22 18       	IF CC JUMP 0xffa00b58 <_printf_int+0xd4>;
ffa00b16:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bd8 <_printf_temp> */
ffa00b1a:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00b1c:	0b e1 d8 0b 	P3.L = 0xbd8;		/* (3032)	P3=0xff900bd8 <_printf_temp> */
ffa00b20:	05 20       	JUMP.S 0xffa00b2a <_printf_int+0xa6>;
ffa00b22:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa00b26:	06 08       	CC = R6 == R0;
ffa00b28:	bd 1b       	IF CC JUMP 0xffa00aa2 <_printf_int+0x1e>;
ffa00b2a:	07 30       	R0 = R7;
ffa00b2c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00b2e:	00 e3 83 00 	CALL 0xffa00c34 <_mod>;
ffa00b32:	0e 32       	P1 = R6;
ffa00b34:	5a 91       	P2 = [P3];
ffa00b36:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00b38:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00b3a:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00b3c:	8a 5a       	P2 = P2 + P1;
ffa00b3e:	10 9b       	B[P2] = R0;
ffa00b40:	07 30       	R0 = R7;
ffa00b42:	00 e3 6b 00 	CALL 0xffa00c18 <_div>;
ffa00b46:	00 0d       	CC = R0 <= 0x0;
ffa00b48:	38 30       	R7 = R0;
ffa00b4a:	ec 17       	IF !CC JUMP 0xffa00b22 <_printf_int+0x9e> (BP);
ffa00b4c:	ab 2f       	JUMP.S 0xffa00aa2 <_printf_int+0x1e>;
ffa00b4e:	01 e8 00 00 	UNLINK;
ffa00b52:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00b54:	b3 05       	(R7:6, P5:3) = [SP++];
ffa00b56:	10 00       	RTS;
ffa00b58:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00b5a:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa00b5c:	f8 4f       	R0 <<= 0x1f;
ffa00b5e:	f8 53       	R7 = R0 - R7;
ffa00b60:	07 0d       	CC = R7 <= 0x0;
ffa00b62:	2c 18       	IF CC JUMP 0xffa00bba <_printf_int+0x136>;
ffa00b64:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bd8 <_printf_temp> */
ffa00b68:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa00b6a:	0b e1 d8 0b 	P3.L = 0xbd8;		/* (3032)	P3=0xff900bd8 <_printf_temp> */
ffa00b6e:	05 20       	JUMP.S 0xffa00b78 <_printf_int+0xf4>;
ffa00b70:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa00b74:	4c 08       	CC = P4 == P1;
ffa00b76:	1e 18       	IF CC JUMP 0xffa00bb2 <_printf_int+0x12e>;
ffa00b78:	07 30       	R0 = R7;
ffa00b7a:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00b7c:	00 e3 5c 00 	CALL 0xffa00c34 <_mod>;
ffa00b80:	5a 91       	P2 = [P3];
ffa00b82:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00b84:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00b86:	a2 5a       	P2 = P2 + P4;
ffa00b88:	10 9b       	B[P2] = R0;
ffa00b8a:	07 30       	R0 = R7;
ffa00b8c:	00 e3 46 00 	CALL 0xffa00c18 <_div>;
ffa00b90:	00 0d       	CC = R0 <= 0x0;
ffa00b92:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00b94:	38 30       	R7 = R0;
ffa00b96:	ed 17       	IF !CC JUMP 0xffa00b70 <_printf_int+0xec> (BP);
ffa00b98:	74 30       	R6 = P4;
ffa00b9a:	4c 32       	P1 = P4;
ffa00b9c:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00b9e:	5a 91       	P2 = [P3];
ffa00ba0:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa00ba2:	8a 5a       	P2 = P2 + P1;
ffa00ba4:	10 9b       	B[P2] = R0;
ffa00ba6:	7e 2f       	JUMP.S 0xffa00aa2 <_printf_int+0x1e>;
ffa00ba8:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900bdc <_printf_out> */
ffa00bac:	08 e1 dc 0b 	P0.L = 0xbdc;		/* (3036)	P0=0xff900bdc <_printf_out> */
ffa00bb0:	91 2f       	JUMP.S 0xffa00ad2 <_printf_int+0x4e>;
ffa00bb2:	4c 32       	P1 = P4;
ffa00bb4:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa00bb8:	f3 2f       	JUMP.S 0xffa00b9e <_printf_int+0x11a>;
ffa00bba:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bd8 <_printf_temp> */
ffa00bbe:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa00bc0:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa00bc2:	0b e1 d8 0b 	P3.L = 0xbd8;		/* (3032)	P3=0xff900bd8 <_printf_temp> */
ffa00bc6:	ec 2f       	JUMP.S 0xffa00b9e <_printf_int+0x11a>;

ffa00bc8 <_printf_ip>:
ffa00bc8:	70 05       	[--SP] = (R7:6);
ffa00bca:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00bce:	39 30       	R7 = R1;
ffa00bd0:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa00bd4:	49 43       	R1 = R1.B (Z);
ffa00bd6:	ff e3 57 ff 	CALL 0xffa00a84 <_printf_int>;
ffa00bda:	06 e1 0c 00 	R6.L = 0xc;		/* ( 12)	R6=0xff90000c(-7340020) */
ffa00bde:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa00be2:	49 43       	R1 = R1.B (Z);
ffa00be4:	06 30       	R0 = R6;
ffa00be6:	ff e3 4f ff 	CALL 0xffa00a84 <_printf_int>;
ffa00bea:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa00bee:	49 43       	R1 = R1.B (Z);
ffa00bf0:	06 30       	R0 = R6;
ffa00bf2:	c7 4e       	R7 >>= 0x18;
ffa00bf4:	ff e3 48 ff 	CALL 0xffa00a84 <_printf_int>;
ffa00bf8:	0f 30       	R1 = R7;
ffa00bfa:	06 30       	R0 = R6;
ffa00bfc:	ff e3 44 ff 	CALL 0xffa00a84 <_printf_int>;
ffa00c00:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa00c04:	00 e1 0c 05 	R0.L = 0x50c;		/* (1292)	R0=0xff90050c(-7338740) */
ffa00c08:	ff e3 7c fe 	CALL 0xffa00900 <_printf_str>;
ffa00c0c:	01 e8 00 00 	UNLINK;
ffa00c10:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00c12:	30 05       	(R7:6) = [SP++];
ffa00c14:	10 00       	RTS;
	...

ffa00c18 <_div>:
ffa00c18:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00c1c:	08 4f       	R0 <<= 0x1;
ffa00c1e:	48 42       	DIVS (R0, R1);
ffa00c20:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa00c22:	b2 e0 03 20 	LSETUP(0xffa00c26 <_div+0xe>, 0xffa00c28 <_div+0x10>) LC1 = P2;
ffa00c26:	08 42       	DIVQ (R0, R1);
ffa00c28:	00 00       	NOP;
ffa00c2a:	80 42       	R0 = R0.L (X);
ffa00c2c:	01 e8 00 00 	UNLINK;
ffa00c30:	10 00       	RTS;
	...

ffa00c34 <_mod>:
ffa00c34:	70 05       	[--SP] = (R7:6);
ffa00c36:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00c3a:	30 30       	R6 = R0;
ffa00c3c:	39 30       	R7 = R1;
ffa00c3e:	ff e3 ed ff 	CALL 0xffa00c18 <_div>;
ffa00c42:	c7 40       	R7 *= R0;
ffa00c44:	01 e8 00 00 	UNLINK;
ffa00c48:	be 53       	R6 = R6 - R7;
ffa00c4a:	06 30       	R0 = R6;
ffa00c4c:	30 05       	(R7:6) = [SP++];
ffa00c4e:	10 00       	RTS;

ffa00c50 <_memcpy_>:
ffa00c50:	02 0d       	CC = R2 <= 0x0;
ffa00c52:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00c56:	08 32       	P1 = R0;
ffa00c58:	11 32       	P2 = R1;
ffa00c5a:	08 18       	IF CC JUMP 0xffa00c6a <_memcpy_+0x1a>;
ffa00c5c:	00 00       	NOP;
ffa00c5e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00c60:	09 64       	R1 += 0x1;		/* (  1) */
ffa00c62:	48 98       	R0 = B[P1++] (X);
ffa00c64:	0a 08       	CC = R2 == R1;
ffa00c66:	10 9a       	B[P2++] = R0;
ffa00c68:	fc 17       	IF !CC JUMP 0xffa00c60 <_memcpy_+0x10> (BP);
ffa00c6a:	01 e8 00 00 	UNLINK;
ffa00c6e:	10 00       	RTS;

ffa00c70 <_memset_>:
ffa00c70:	02 0d       	CC = R2 <= 0x0;
ffa00c72:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00c76:	10 32       	P2 = R0;
ffa00c78:	06 18       	IF CC JUMP 0xffa00c84 <_memset_+0x14>;
ffa00c7a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00c7c:	08 64       	R0 += 0x1;		/* (  1) */
ffa00c7e:	02 08       	CC = R2 == R0;
ffa00c80:	11 9a       	B[P2++] = R1;
ffa00c82:	fd 17       	IF !CC JUMP 0xffa00c7c <_memset_+0xc> (BP);
ffa00c84:	01 e8 00 00 	UNLINK;
ffa00c88:	10 00       	RTS;
	...

ffa00c8c <_strlen_>:
ffa00c8c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00c90:	10 32       	P2 = R0;
ffa00c92:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00c94:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa00c98:	b2 e0 06 10 	LSETUP(0xffa00c9c <_strlen_+0x10>, 0xffa00ca4 <_strlen_+0x18>) LC1 = P1;
ffa00c9c:	50 99       	R0 = B[P2] (X);
ffa00c9e:	00 0c       	CC = R0 == 0x0;
ffa00ca0:	04 18       	IF CC JUMP 0xffa00ca8 <_strlen_+0x1c>;
ffa00ca2:	09 64       	R1 += 0x1;		/* (  1) */
ffa00ca4:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00ca6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00ca8:	01 30       	R0 = R1;
ffa00caa:	01 e8 00 00 	UNLINK;
ffa00cae:	10 00       	RTS;

ffa00cb0 <_strcpy_>:
ffa00cb0:	12 32       	P2 = R2;
ffa00cb2:	c5 04       	[--SP] = (P5:5);
ffa00cb4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00cb8:	29 32       	P5 = R1;
ffa00cba:	00 32       	P0 = R0;
ffa00cbc:	51 99       	R1 = B[P2] (X);
ffa00cbe:	08 43       	R0 = R1.B (X);
ffa00cc0:	00 0c       	CC = R0 == 0x0;
ffa00cc2:	17 18       	IF CC JUMP 0xffa00cf0 <_strcpy_+0x40>;
ffa00cc4:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00cc6:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00cc8:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa00ccc:	b2 e0 09 10 	LSETUP(0xffa00cd0 <_strcpy_+0x20>, 0xffa00cde <_strcpy_+0x2e>) LC1 = P1;
ffa00cd0:	01 9a       	B[P0++] = R1;
ffa00cd2:	51 99       	R1 = B[P2] (X);
ffa00cd4:	08 43       	R0 = R1.B (X);
ffa00cd6:	00 0c       	CC = R0 == 0x0;
ffa00cd8:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00cda:	03 18       	IF CC JUMP 0xffa00ce0 <_strcpy_+0x30>;
ffa00cdc:	00 00       	NOP;
ffa00cde:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00ce0:	01 e8 00 00 	UNLINK;
ffa00ce4:	28 91       	R0 = [P5];
ffa00ce6:	10 50       	R0 = R0 + R2;
ffa00ce8:	28 93       	[P5] = R0;
ffa00cea:	40 30       	R0 = P0;
ffa00cec:	85 04       	(P5:5) = [SP++];
ffa00cee:	10 00       	RTS;
ffa00cf0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00cf2:	f7 2f       	JUMP.S 0xffa00ce0 <_strcpy_+0x30>;

ffa00cf4 <_strprepend>:
ffa00cf4:	fc 05       	[--SP] = (R7:7, P5:4);
ffa00cf6:	21 32       	P4 = R1;
ffa00cf8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00cfc:	38 30       	R7 = R0;
ffa00cfe:	02 30       	R0 = R2;
ffa00d00:	2a 32       	P5 = R2;
ffa00d02:	ff e3 c5 ff 	CALL 0xffa00c8c <_strlen_>;
ffa00d06:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa00d0a:	20 91 00 00 
ffa00d0e:	02 0d       	CC = R2 <= 0x0;
ffa00d10:	0a 18       	IF CC JUMP 0xffa00d24 <_strprepend+0x30>;
ffa00d12:	07 52       	R0 = R7 - R0;
ffa00d14:	10 32       	P2 = R0;
ffa00d16:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00d18:	09 64       	R1 += 0x1;		/* (  1) */
ffa00d1a:	68 98       	R0 = B[P5++] (X);
ffa00d1c:	0a 08       	CC = R2 == R1;
ffa00d1e:	10 9a       	B[P2++] = R0;
ffa00d20:	fc 17       	IF !CC JUMP 0xffa00d18 <_strprepend+0x24> (BP);
ffa00d22:	20 91       	R0 = [P4];
ffa00d24:	01 e8 00 00 	UNLINK;
ffa00d28:	07 52       	R0 = R7 - R0;
ffa00d2a:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00d2c:	10 00       	RTS;
	...

ffa00d30 <_strcmp>:
ffa00d30:	10 32       	P2 = R0;
ffa00d32:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00d36:	01 32       	P0 = R1;
ffa00d38:	51 99       	R1 = B[P2] (X);
ffa00d3a:	01 0c       	CC = R1 == 0x0;
ffa00d3c:	1b 18       	IF CC JUMP 0xffa00d72 <_strcmp+0x42>;
ffa00d3e:	00 00       	NOP;
ffa00d40:	00 00       	NOP;
ffa00d42:	00 00       	NOP;
ffa00d44:	40 99       	R0 = B[P0] (X);
ffa00d46:	00 0c       	CC = R0 == 0x0;
ffa00d48:	15 18       	IF CC JUMP 0xffa00d72 <_strcmp+0x42>;
ffa00d4a:	01 08       	CC = R1 == R0;
ffa00d4c:	1c 10       	IF !CC JUMP 0xffa00d84 <_strcmp+0x54>;
ffa00d4e:	4a 32       	P1 = P2;
ffa00d50:	50 32       	P2 = P0;
ffa00d52:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00d54:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00d56:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa00d5a:	49 99       	R1 = B[P1] (X);
ffa00d5c:	01 0c       	CC = R1 == 0x0;
ffa00d5e:	0a 18       	IF CC JUMP 0xffa00d72 <_strcmp+0x42>;
ffa00d60:	00 00       	NOP;
ffa00d62:	00 00       	NOP;
ffa00d64:	00 00       	NOP;
ffa00d66:	50 99       	R0 = B[P2] (X);
ffa00d68:	00 0c       	CC = R0 == 0x0;
ffa00d6a:	04 18       	IF CC JUMP 0xffa00d72 <_strcmp+0x42>;
ffa00d6c:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa00d6e:	40 0c       	CC = P0 == 0x0;
ffa00d70:	05 10       	IF !CC JUMP 0xffa00d7a <_strcmp+0x4a>;
ffa00d72:	01 e8 00 00 	UNLINK;
ffa00d76:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00d78:	10 00       	RTS;
ffa00d7a:	01 08       	CC = R1 == R0;
ffa00d7c:	04 10       	IF !CC JUMP 0xffa00d84 <_strcmp+0x54>;
ffa00d7e:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00d80:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00d82:	ec 2f       	JUMP.S 0xffa00d5a <_strcmp+0x2a>;
ffa00d84:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00d86:	01 e8 00 00 	UNLINK;
ffa00d8a:	10 00       	RTS;

ffa00d8c <_substr>:
ffa00d8c:	f4 05       	[--SP] = (R7:6, P5:4);
ffa00d8e:	20 32       	P4 = R0;
ffa00d90:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00d94:	11 32       	P2 = R1;
ffa00d96:	32 30       	R6 = R2;
ffa00d98:	61 99       	R1 = B[P4] (X);
ffa00d9a:	01 0c       	CC = R1 == 0x0;
ffa00d9c:	14 18       	IF CC JUMP 0xffa00dc4 <_substr+0x38>;
ffa00d9e:	00 00       	NOP;
ffa00da0:	00 00       	NOP;
ffa00da2:	00 00       	NOP;
ffa00da4:	50 99       	R0 = B[P2] (X);
ffa00da6:	00 0c       	CC = R0 == 0x0;
ffa00da8:	0e 18       	IF CC JUMP 0xffa00dc4 <_substr+0x38>;
ffa00daa:	02 0d       	CC = R2 <= 0x0;
ffa00dac:	0c 18       	IF CC JUMP 0xffa00dc4 <_substr+0x38>;
ffa00dae:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00db0:	01 08       	CC = R1 == R0;
ffa00db2:	0f 18       	IF CC JUMP 0xffa00dd0 <_substr+0x44>;
ffa00db4:	00 00       	NOP;
ffa00db6:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00db8:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00dba:	50 99       	R0 = B[P2] (X);
ffa00dbc:	00 0c       	CC = R0 == 0x0;
ffa00dbe:	03 18       	IF CC JUMP 0xffa00dc4 <_substr+0x38>;
ffa00dc0:	1e 09       	CC = R6 <= R3;
ffa00dc2:	f7 17       	IF !CC JUMP 0xffa00db0 <_substr+0x24> (BP);
ffa00dc4:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa00dc6:	01 e8 00 00 	UNLINK;
ffa00dca:	40 30       	R0 = P0;
ffa00dcc:	b4 05       	(R7:6, P5:4) = [SP++];
ffa00dce:	10 00       	RTS;
ffa00dd0:	52 30       	R2 = P2;
ffa00dd2:	3b 30       	R7 = R3;
ffa00dd4:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00dd6:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00dd8:	12 32       	P2 = R2;
ffa00dda:	07 32       	P0 = R7;
ffa00ddc:	4c 32       	P1 = P4;
ffa00dde:	6c 32       	P5 = P4;
ffa00de0:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00de2:	15 6c       	P5 += 0x2;		/* (  2) */
ffa00de4:	02 20       	JUMP.S 0xffa00de8 <_substr+0x5c>;
ffa00de6:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00de8:	4b 99       	R3 = B[P1] (X);
ffa00dea:	50 99       	R0 = B[P2] (X);
ffa00dec:	03 08       	CC = R3 == R0;
ffa00dee:	0e 10       	IF !CC JUMP 0xffa00e0a <_substr+0x7e>;
ffa00df0:	03 0c       	CC = R3 == 0x0;
ffa00df2:	0c 18       	IF CC JUMP 0xffa00e0a <_substr+0x7e>;
ffa00df4:	00 00       	NOP;
ffa00df6:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00df8:	08 6c       	P0 += 0x1;		/* (  1) */
ffa00dfa:	68 98       	R0 = B[P5++] (X);
ffa00dfc:	00 0c       	CC = R0 == 0x0;
ffa00dfe:	f4 17       	IF !CC JUMP 0xffa00de6 <_substr+0x5a> (BP);
ffa00e00:	01 e8 00 00 	UNLINK;
ffa00e04:	40 30       	R0 = P0;
ffa00e06:	b4 05       	(R7:6, P5:4) = [SP++];
ffa00e08:	10 00       	RTS;
ffa00e0a:	12 32       	P2 = R2;
ffa00e0c:	1f 30       	R3 = R7;
ffa00e0e:	d6 2f       	JUMP.S 0xffa00dba <_substr+0x2e>;

ffa00e10 <_sprintf_int>:
ffa00e10:	fb 05       	[--SP] = (R7:7, P5:3);
ffa00e12:	01 0c       	CC = R1 == 0x0;
ffa00e14:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00e18:	00 34       	I0 = R0;
ffa00e1a:	11 30       	R2 = R1;
ffa00e1c:	1a 14       	IF !CC JUMP 0xffa00e50 <_sprintf_int+0x40> (BP);
ffa00e1e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bd8 <_printf_temp> */
ffa00e22:	0b e1 d8 0b 	P3.L = 0xbd8;		/* (3032)	P3=0xff900bd8 <_printf_temp> */
ffa00e26:	5a 91       	P2 = [P3];
ffa00e28:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00e2a:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa00e2c:	10 9b       	B[P2] = R0;
ffa00e2e:	88 32       	P1 = I0;
ffa00e30:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00e32:	0b 52       	R0 = R3 - R1;
ffa00e34:	00 32       	P0 = R0;
ffa00e36:	5a 91       	P2 = [P3];
ffa00e38:	09 64       	R1 += 0x1;		/* (  1) */
ffa00e3a:	99 08       	CC = R1 < R3;
ffa00e3c:	82 5a       	P2 = P2 + P0;
ffa00e3e:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa00e42:	08 9a       	B[P1++] = R0;
ffa00e44:	f7 1f       	IF CC JUMP 0xffa00e32 <_sprintf_int+0x22> (BP);
ffa00e46:	01 e8 00 00 	UNLINK;
ffa00e4a:	03 30       	R0 = R3;
ffa00e4c:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00e4e:	10 00       	RTS;
ffa00e50:	01 0d       	CC = R1 <= 0x0;
ffa00e52:	2d 18       	IF CC JUMP 0xffa00eac <_sprintf_int+0x9c>;
ffa00e54:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bd8 <_printf_temp> */
ffa00e58:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa00e5c:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00e5e:	0b e1 d8 0b 	P3.L = 0xbd8;		/* (3032)	P3=0xff900bd8 <_printf_temp> */
ffa00e62:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa00e66:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa00e68:	b2 e0 20 50 	LSETUP(0xffa00e6c <_sprintf_int+0x5c>, 0xffa00ea8 <_sprintf_int+0x98>) LC1 = P5;
ffa00e6c:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa00e70:	59 91 00 00 
ffa00e74:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00e78:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa00e7c:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa00e80:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa00e84:	0b c4 00 00 	R0 = (A0 += A1);
ffa00e88:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa00e8c:	10 4d       	R0 >>>= 0x2;
ffa00e8e:	08 52       	R0 = R0 - R1;
ffa00e90:	00 32       	P0 = R0;
ffa00e92:	13 32       	P2 = R3;
ffa00e94:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00e96:	40 0d       	CC = P0 <= 0x0;
ffa00e98:	51 5a       	P1 = P1 + P2;
ffa00e9a:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa00e9c:	92 5a       	P2 = P2 << 0x1;
ffa00e9e:	4a 30       	R1 = P2;
ffa00ea0:	0a 52       	R0 = R2 - R1;
ffa00ea2:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00ea4:	08 9b       	B[P1] = R0;
ffa00ea6:	39 18       	IF CC JUMP 0xffa00f18 <_sprintf_int+0x108>;
ffa00ea8:	50 30       	R2 = P0;
ffa00eaa:	c2 2f       	JUMP.S 0xffa00e2e <_sprintf_int+0x1e>;
ffa00eac:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00eae:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa00eb0:	f8 4f       	R0 <<= 0x1f;
ffa00eb2:	90 52       	R2 = R0 - R2;
ffa00eb4:	02 0d       	CC = R2 <= 0x0;
ffa00eb6:	3c 18       	IF CC JUMP 0xffa00f2e <_sprintf_int+0x11e>;
ffa00eb8:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bd8 <_printf_temp> */
ffa00ebc:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa00ec0:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa00ec2:	0b e1 d8 0b 	P3.L = 0xbd8;		/* (3032)	P3=0xff900bd8 <_printf_temp> */
ffa00ec6:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa00eca:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa00ecc:	b2 e0 1f 50 	LSETUP(0xffa00ed0 <_sprintf_int+0xc0>, 0xffa00f0a <_sprintf_int+0xfa>) LC1 = P5;
ffa00ed0:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa00ed4:	59 91 00 00 
ffa00ed8:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00edc:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa00ee0:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa00ee4:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa00ee8:	0b c4 00 00 	R0 = (A0 += A1);
ffa00eec:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa00ef0:	10 4d       	R0 >>>= 0x2;
ffa00ef2:	08 52       	R0 = R0 - R1;
ffa00ef4:	00 32       	P0 = R0;
ffa00ef6:	61 5a       	P1 = P1 + P4;
ffa00ef8:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00efa:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa00efc:	92 5a       	P2 = P2 << 0x1;
ffa00efe:	4a 30       	R1 = P2;
ffa00f00:	0a 52       	R0 = R2 - R1;
ffa00f02:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00f04:	40 0d       	CC = P0 <= 0x0;
ffa00f06:	08 9b       	B[P1] = R0;
ffa00f08:	0f 18       	IF CC JUMP 0xffa00f26 <_sprintf_int+0x116>;
ffa00f0a:	50 30       	R2 = P0;
ffa00f0c:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa00f0e:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa00f10:	5a 91       	P2 = [P3];
ffa00f12:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa00f14:	8a 5a       	P2 = P2 + P1;
ffa00f16:	10 9b       	B[P2] = R0;
ffa00f18:	03 0d       	CC = R3 <= 0x0;
ffa00f1a:	8a 17       	IF !CC JUMP 0xffa00e2e <_sprintf_int+0x1e> (BP);
ffa00f1c:	01 e8 00 00 	UNLINK;
ffa00f20:	03 30       	R0 = R3;
ffa00f22:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00f24:	10 00       	RTS;
ffa00f26:	5c 30       	R3 = P4;
ffa00f28:	4c 32       	P1 = P4;
ffa00f2a:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00f2c:	f2 2f       	JUMP.S 0xffa00f10 <_sprintf_int+0x100>;
ffa00f2e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bd8 <_printf_temp> */
ffa00f32:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa00f34:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa00f36:	0b e1 d8 0b 	P3.L = 0xbd8;		/* (3032)	P3=0xff900bd8 <_printf_temp> */
ffa00f3a:	eb 2f       	JUMP.S 0xffa00f10 <_sprintf_int+0x100>;

ffa00f3c <_sprintf_hex>:
ffa00f3c:	10 32       	P2 = R0;
ffa00f3e:	78 05       	[--SP] = (R7:7);
ffa00f40:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00f42:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00f46:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa00f48:	10 9b       	B[P2] = R0;
ffa00f4a:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00f4e:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa00f52:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa00f54:	12 6c       	P2 += 0x2;		/* (  2) */
ffa00f56:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa00f58:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa00f5a:	b2 e0 09 10 	LSETUP(0xffa00f5e <_sprintf_hex+0x22>, 0xffa00f6c <_sprintf_hex+0x30>) LC1 = P1;
ffa00f5e:	01 30       	R0 = R1;
ffa00f60:	10 40       	R0 >>>= R2;
ffa00f62:	18 54       	R0 = R0 & R3;
ffa00f64:	38 09       	CC = R0 <= R7;
ffa00f66:	09 1c       	IF CC JUMP 0xffa00f78 <_sprintf_hex+0x3c> (BP);
ffa00f68:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00f6a:	10 9a       	B[P2++] = R0;
ffa00f6c:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa00f6e:	01 e8 00 00 	UNLINK;
ffa00f72:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00f74:	38 05       	(R7:7) = [SP++];
ffa00f76:	10 00       	RTS;
ffa00f78:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00f7a:	f8 2f       	JUMP.S 0xffa00f6a <_sprintf_hex+0x2e>;

ffa00f7c <_strprintf_int>:
ffa00f7c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00f7e:	29 32       	P5 = R1;
ffa00f80:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00f84:	0a 30       	R1 = R2;
ffa00f86:	38 30       	R7 = R0;
ffa00f88:	ff e3 44 ff 	CALL 0xffa00e10 <_sprintf_int>;
ffa00f8c:	29 91       	R1 = [P5];
ffa00f8e:	41 50       	R1 = R1 + R0;
ffa00f90:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa00f94:	29 93 00 00 
ffa00f98:	01 e8 00 00 	UNLINK;
ffa00f9c:	07 30       	R0 = R7;
ffa00f9e:	bd 05       	(R7:7, P5:5) = [SP++];
ffa00fa0:	10 00       	RTS;
	...

ffa00fa4 <_strprintf_hex>:
ffa00fa4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00fa6:	29 32       	P5 = R1;
ffa00fa8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00fac:	0a 30       	R1 = R2;
ffa00fae:	38 30       	R7 = R0;
ffa00fb0:	ff e3 c6 ff 	CALL 0xffa00f3c <_sprintf_hex>;
ffa00fb4:	29 91       	R1 = [P5];
ffa00fb6:	41 50       	R1 = R1 + R0;
ffa00fb8:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa00fbc:	29 93 00 00 
ffa00fc0:	01 e8 00 00 	UNLINK;
ffa00fc4:	07 30       	R0 = R7;
ffa00fc6:	bd 05       	(R7:7, P5:5) = [SP++];
ffa00fc8:	10 00       	RTS;
	...

ffa00fcc <_atoi>:
ffa00fcc:	08 32       	P1 = R0;
ffa00fce:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa00fd0:	f5 05       	[--SP] = (R7:6, P5:5);
ffa00fd2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00fd6:	48 99       	R0 = B[P1] (X);
ffa00fd8:	10 08       	CC = R0 == R2;
ffa00fda:	25 18       	IF CC JUMP 0xffa01024 <_atoi+0x58>;
ffa00fdc:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00fde:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa00fe0:	41 32       	P0 = P1;
ffa00fe2:	08 6c       	P0 += 0x1;		/* (  1) */
ffa00fe4:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa00fe6:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa00fe8:	12 20       	JUMP.S 0xffa0100c <_atoi+0x40>;
ffa00fea:	8b 08       	CC = R3 < R1;
ffa00fec:	16 10       	IF !CC JUMP 0xffa01018 <_atoi+0x4c>;
ffa00fee:	10 43       	R0 = R2.B (X);
ffa00ff0:	28 32       	P5 = R0;
ffa00ff2:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa00ff4:	40 99       	R0 = B[P0] (X);
ffa00ff6:	80 66       	R0 += -0x30;		/* (-48) */
ffa00ff8:	40 43       	R0 = R0.B (Z);
ffa00ffa:	aa 5a       	P2 = P2 + P5;
ffa00ffc:	10 0a       	CC = R0 <= R2 (IU);
ffa00ffe:	82 6e       	P2 += -0x30;		/* (-48) */
ffa01000:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01002:	03 14       	IF !CC JUMP 0xffa01008 <_atoi+0x3c> (BP);
ffa01004:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa01006:	92 5a       	P2 = P2 << 0x1;
ffa01008:	0b 64       	R3 += 0x1;		/* (  1) */
ffa0100a:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0100c:	4a 99       	R2 = B[P1] (X);
ffa0100e:	02 30       	R0 = R2;
ffa01010:	80 66       	R0 += -0x30;		/* (-48) */
ffa01012:	40 43       	R0 = R0.B (Z);
ffa01014:	30 0a       	CC = R0 <= R6 (IU);
ffa01016:	ea 1f       	IF CC JUMP 0xffa00fea <_atoi+0x1e> (BP);
ffa01018:	42 30       	R0 = P2;
ffa0101a:	f8 40       	R0 *= R7;
ffa0101c:	01 e8 00 00 	UNLINK;
ffa01020:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01022:	10 00       	RTS;
ffa01024:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01026:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01028:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa0102a:	db 2f       	JUMP.S 0xffa00fe0 <_atoi+0x14>;

ffa0102c <_udelay>:
ffa0102c:	00 0d       	CC = R0 <= 0x0;
ffa0102e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01032:	0b 18       	IF CC JUMP 0xffa01048 <_udelay+0x1c>;
ffa01034:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01036:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa0103a:	b2 e0 03 20 	LSETUP(0xffa0103e <_udelay+0x12>, 0xffa01040 <_udelay+0x14>) LC1 = P2;
ffa0103e:	00 00       	NOP;
ffa01040:	00 00       	NOP;
ffa01042:	09 64       	R1 += 0x1;		/* (  1) */
ffa01044:	08 08       	CC = R0 == R1;
ffa01046:	f8 17       	IF !CC JUMP 0xffa01036 <_udelay+0xa> (BP);
ffa01048:	01 e8 00 00 	UNLINK;
ffa0104c:	10 00       	RTS;
	...

ffa01050 <_spi_delay>:
ffa01050:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa01054:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01058:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0105c:	00 00       	NOP;
ffa0105e:	50 95       	R0 = W[P2] (X);
ffa01060:	c0 42       	R0 = R0.L (Z);
ffa01062:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01064:	fc 17       	IF !CC JUMP 0xffa0105c <_spi_delay+0xc> (BP);
ffa01066:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01068:	0a 10       	IF !CC JUMP 0xffa0107c <_spi_delay+0x2c>;
ffa0106a:	00 00       	NOP;
ffa0106c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa01070:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa01074:	00 00       	NOP;
ffa01076:	50 95       	R0 = W[P2] (X);
ffa01078:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0107a:	fd 1f       	IF CC JUMP 0xffa01074 <_spi_delay+0x24> (BP);
ffa0107c:	01 e8 00 00 	UNLINK;
ffa01080:	10 00       	RTS;
	...

ffa01084 <_spi_write_register>:
ffa01084:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa01088:	ed 05       	[--SP] = (R7:5, P5:5);
ffa0108a:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0108e:	25 e1 00 02 	R5 = 0x200 (X);		/*		R5=0x200(512) */
ffa01092:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01096:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || W[P2] = R5 || NOP;
ffa0109a:	15 97 00 00 
ffa0109e:	24 00       	SSYNC;
ffa010a0:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0000b(-4194293) */
ffa010a4:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa010a6:	40 43       	R0 = R0.B (Z);
ffa010a8:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa010ac:	28 97       	W[P5] = R0;
ffa010ae:	ff e3 d1 ff 	CALL 0xffa01050 <_spi_delay>;
ffa010b2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa010b6:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa010ba:	76 43       	R6 = R6.B (Z);
ffa010bc:	57 95       	R7 = W[P2] (X);
ffa010be:	2e 97       	W[P5] = R6;
ffa010c0:	ff e3 c8 ff 	CALL 0xffa01050 <_spi_delay>;
ffa010c4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa010c8:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa010cc:	15 97       	W[P2] = R5;
ffa010ce:	24 00       	SSYNC;
ffa010d0:	7f 43       	R7 = R7.B (Z);
ffa010d2:	01 e8 00 00 	UNLINK;
ffa010d6:	07 30       	R0 = R7;
ffa010d8:	ad 05       	(R7:5, P5:5) = [SP++];
ffa010da:	10 00       	RTS;

ffa010dc <_spi_read_register>:
ffa010dc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa010e0:	fc 05       	[--SP] = (R7:7, P5:4);
ffa010e2:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa010e6:	27 e1 00 02 	R7 = 0x200 (X);		/*		R7=0x200(512) */
ffa010ea:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa010ee:	17 97       	W[P2] = R7;
ffa010f0:	24 00       	SSYNC;
ffa010f2:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00000(-4194304) */
ffa010f6:	40 43       	R0 = R0.B (Z);
ffa010f8:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa010fc:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa01100:	20 97       	W[P4] = R0;
ffa01102:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa01106:	ff e3 a5 ff 	CALL 0xffa01050 <_spi_delay>;
ffa0110a:	68 95       	R0 = W[P5] (X);
ffa0110c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0110e:	20 97       	W[P4] = R0;
ffa01110:	ff e3 a0 ff 	CALL 0xffa01050 <_spi_delay>;
ffa01114:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01118:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0111c:	68 95       	R0 = W[P5] (X);
ffa0111e:	17 97       	W[P2] = R7;
ffa01120:	24 00       	SSYNC;
ffa01122:	01 e8 00 00 	UNLINK;
ffa01126:	40 43       	R0 = R0.B (Z);
ffa01128:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0112a:	10 00       	RTS;

ffa0112c <_spi_read_register_status>:
ffa0112c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01130:	f3 05       	[--SP] = (R7:6, P5:3);
ffa01132:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01136:	26 e1 00 02 	R6 = 0x200 (X);		/*		R6=0x200(512) */
ffa0113a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0113e:	19 32       	P3 = R1;
ffa01140:	16 97       	W[P2] = R6;
ffa01142:	24 00       	SSYNC;
ffa01144:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc0050c(-4193012) */
ffa01148:	40 43       	R0 = R0.B (Z);
ffa0114a:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa0114e:	20 97       	W[P4] = R0;
ffa01150:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa01154:	ff e3 7e ff 	CALL 0xffa01050 <_spi_delay>;
ffa01158:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa0115c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0115e:	6f 95       	R7 = W[P5] (X);
ffa01160:	20 97       	W[P4] = R0;
ffa01162:	ff e3 77 ff 	CALL 0xffa01050 <_spi_delay>;
ffa01166:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0116a:	68 95       	R0 = W[P5] (X);
ffa0116c:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01170:	18 9b       	B[P3] = R0;
ffa01172:	16 97       	W[P2] = R6;
ffa01174:	24 00       	SSYNC;
ffa01176:	7f 43       	R7 = R7.B (Z);
ffa01178:	01 e8 00 00 	UNLINK;
ffa0117c:	07 30       	R0 = R7;
ffa0117e:	b3 05       	(R7:6, P5:3) = [SP++];
ffa01180:	10 00       	RTS;
	...

ffa01184 <_spi_write_byte>:
ffa01184:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01188:	78 05       	[--SP] = (R7:7);
ffa0118a:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0118e:	27 e1 00 02 	R7 = 0x200 (X);		/*		R7=0x200(512) */
ffa01192:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01196:	17 97       	W[P2] = R7;
ffa01198:	24 00       	SSYNC;
ffa0119a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0119e:	40 43       	R0 = R0.B (Z);
ffa011a0:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa011a4:	10 97       	W[P2] = R0;
ffa011a6:	ff e3 55 ff 	CALL 0xffa01050 <_spi_delay>;
ffa011aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa011ae:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa011b2:	50 95       	R0 = W[P2] (X);
ffa011b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa011b8:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa011bc:	17 97       	W[P2] = R7;
ffa011be:	24 00       	SSYNC;
ffa011c0:	01 e8 00 00 	UNLINK;
ffa011c4:	40 43       	R0 = R0.B (Z);
ffa011c6:	38 05       	(R7:7) = [SP++];
ffa011c8:	10 00       	RTS;
	...

ffa011cc <_spi_write_packet>:
ffa011cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa011d0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa011d2:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa011d6:	38 30       	R7 = R0;
ffa011d8:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa011dc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa011e0:	10 97       	W[P2] = R0;
ffa011e2:	24 00       	SSYNC;
ffa011e4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa011e8:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa011ec:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa011f0:	10 97       	W[P2] = R0;
ffa011f2:	ff e3 2f ff 	CALL 0xffa01050 <_spi_delay>;
ffa011f6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa011fa:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa011fe:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa01202:	10 97       	W[P2] = R0;
ffa01204:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa01208:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0120a:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0120e:	10 97       	W[P2] = R0;
ffa01210:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01212:	22 6c       	P2 += 0x4;		/* (  4) */
ffa01214:	10 97       	W[P2] = R0;
ffa01216:	82 6f       	P2 += -0x10;		/* (-16) */
ffa01218:	17 93       	[P2] = R7;
ffa0121a:	24 00       	SSYNC;
ffa0121c:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa01220:	22 6c       	P2 += 0x4;		/* (  4) */
ffa01222:	10 97       	W[P2] = R0;
ffa01224:	01 20       	JUMP.S 0xffa01226 <_spi_write_packet+0x5a>;
	...
ffa0122e:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa01232:	0d e1 68 0d 	P5.L = 0xd68;		/* (3432)	P5=0xffc00d68(-4190872) */
ffa01236:	68 95       	R0 = W[P5] (X);
ffa01238:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0123a:	f6 1f       	IF CC JUMP 0xffa01226 <_spi_write_packet+0x5a> (BP);
ffa0123c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa01240:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa01244:	50 95       	R0 = W[P2] (X);
ffa01246:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01248:	ef 17       	IF !CC JUMP 0xffa01226 <_spi_write_packet+0x5a> (BP);
ffa0124a:	69 95       	R1 = W[P5] (X);
ffa0124c:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0124e:	08 54       	R0 = R0 & R1;
ffa01250:	00 0c       	CC = R0 == 0x0;
ffa01252:	ea 17       	IF !CC JUMP 0xffa01226 <_spi_write_packet+0x5a> (BP);
ffa01254:	ff e3 fe fe 	CALL 0xffa01050 <_spi_delay>;
ffa01258:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0125a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0125e:	28 97       	W[P5] = R0;
ffa01260:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa01264:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa01268:	10 97       	W[P2] = R0;
ffa0126a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0126e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01270:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa01274:	10 97       	W[P2] = R0;
ffa01276:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0127a:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0127e:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01282:	10 97       	W[P2] = R0;
ffa01284:	24 00       	SSYNC;
ffa01286:	01 e8 00 00 	UNLINK;
ffa0128a:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0128c:	10 00       	RTS;
	...

ffa01290 <_spi_write_packet_noDMA>:
ffa01290:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01294:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01296:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0129a:	38 30       	R7 = R0;
ffa0129c:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa012a0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa012a4:	10 97       	W[P2] = R0;
ffa012a6:	24 00       	SSYNC;
ffa012a8:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00d68(-4190872) */
ffa012ac:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa012b0:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa012b4:	28 97       	W[P5] = R0;
ffa012b6:	27 32       	P4 = R7;
ffa012b8:	ff e3 cc fe 	CALL 0xffa01050 <_spi_delay>;
ffa012bc:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa012be:	0f 64       	R7 += 0x1;		/* (  1) */
ffa012c0:	60 98       	R0 = B[P4++] (X);
ffa012c2:	28 97       	W[P5] = R0;
ffa012c4:	ff e3 c6 fe 	CALL 0xffa01050 <_spi_delay>;
ffa012c8:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa012ca:	07 08       	CC = R7 == R0;
ffa012cc:	f9 17       	IF !CC JUMP 0xffa012be <_spi_write_packet_noDMA+0x2e> (BP);
ffa012ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa012d2:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa012d6:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa012da:	10 97       	W[P2] = R0;
ffa012dc:	24 00       	SSYNC;
ffa012de:	01 e8 00 00 	UNLINK;
ffa012e2:	bc 05       	(R7:7, P5:4) = [SP++];
ffa012e4:	10 00       	RTS;
	...

ffa012e8 <_spi_read_packet>:
ffa012e8:	f3 05       	[--SP] = (R7:6, P5:3);
ffa012ea:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa012ee:	20 32       	P4 = R0;
ffa012f0:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa012f4:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa012f6:	ff e3 c7 fe 	CALL 0xffa01084 <_spi_write_register>;
ffa012fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa012fe:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01302:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01306:	10 97       	W[P2] = R0;
ffa01308:	24 00       	SSYNC;
ffa0130a:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa0130e:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa01312:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa01316:	28 97       	W[P5] = R0;
ffa01318:	5d 32       	P3 = P5;
ffa0131a:	ff e3 9b fe 	CALL 0xffa01050 <_spi_delay>;
ffa0131e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01320:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01322:	65 6c       	P5 += 0xc;		/* ( 12) */
ffa01324:	1e 97       	W[P3] = R6;
ffa01326:	ff e3 95 fe 	CALL 0xffa01050 <_spi_delay>;
ffa0132a:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0132c:	68 95       	R0 = W[P5] (X);
ffa0132e:	20 9a       	B[P4++] = R0;
ffa01330:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa01332:	78 43       	R0 = R7.B (Z);
ffa01334:	08 08       	CC = R0 == R1;
ffa01336:	f7 17       	IF !CC JUMP 0xffa01324 <_spi_read_packet+0x3c> (BP);
ffa01338:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0133c:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01340:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01344:	10 97       	W[P2] = R0;
ffa01346:	24 00       	SSYNC;
ffa01348:	01 e8 00 00 	UNLINK;
ffa0134c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0134e:	b3 05       	(R7:6, P5:3) = [SP++];
ffa01350:	10 00       	RTS;
	...

ffa01354 <_spi_read_packet_nocheck>:
ffa01354:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01358:	78 05       	[--SP] = (R7:7);
ffa0135a:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0135e:	38 30       	R7 = R0;
ffa01360:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01364:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01368:	10 97       	W[P2] = R0;
ffa0136a:	24 00       	SSYNC;
ffa0136c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01370:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa01374:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa01378:	10 97       	W[P2] = R0;
ffa0137a:	ff e3 6b fe 	CALL 0xffa01050 <_spi_delay>;
ffa0137e:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00008(-4194296) */
ffa01382:	09 e1 00 05 	P1.L = 0x500;		/* (1280)	P1=0xffc00500(-4193024) */
ffa01386:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01388:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0138c:	08 97       	W[P1] = R0;
ffa0138e:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa01392:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01394:	10 97       	W[P2] = R0;
ffa01396:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01398:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0139a:	10 97       	W[P2] = R0;
ffa0139c:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0139e:	17 93       	[P2] = R7;
ffa013a0:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa013a4:	22 6c       	P2 += 0x4;		/* (  4) */
ffa013a6:	10 97       	W[P2] = R0;
ffa013a8:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa013ac:	08 97       	W[P1] = R0;
	...
ffa013b6:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00500(-4193024) */
ffa013ba:	09 e1 68 0d 	P1.L = 0xd68;		/* (3432)	P1=0xffc00d68(-4190872) */
ffa013be:	48 95       	R0 = W[P1] (X);
ffa013c0:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa013c2:	f6 1f       	IF CC JUMP 0xffa013ae <_spi_read_packet_nocheck+0x5a> (BP);
ffa013c4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa013c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa013ca:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa013ce:	10 97       	W[P2] = R0;
ffa013d0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa013d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa013d6:	08 97       	W[P1] = R0;
ffa013d8:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa013dc:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa013e0:	10 97       	W[P2] = R0;
ffa013e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa013e6:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa013ea:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa013ee:	10 97       	W[P2] = R0;
ffa013f0:	24 00       	SSYNC;
ffa013f2:	01 e8 00 00 	UNLINK;
ffa013f6:	38 05       	(R7:7) = [SP++];
ffa013f8:	10 00       	RTS;
	...

ffa013fc <_radio_set_rx>:
ffa013fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01400:	78 05       	[--SP] = (R7:7);
ffa01402:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01406:	27 e1 00 04 	R7 = 0x400 (X);		/*		R7=0x400(1024) */
ffa0140a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0140e:	17 97       	W[P2] = R7;
ffa01410:	24 00       	SSYNC;
ffa01412:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01414:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01416:	ff e3 37 fe 	CALL 0xffa01084 <_spi_write_register>;
ffa0141a:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0141e:	ff e3 b3 fe 	CALL 0xffa01184 <_spi_write_byte>;
ffa01422:	99 60       	R1 = 0x13 (X);		/*		R1=0x13( 19) */
ffa01424:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01426:	ff e3 2f fe 	CALL 0xffa01084 <_spi_write_register>;
ffa0142a:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0142e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01430:	ff e3 2a fe 	CALL 0xffa01084 <_spi_write_register>;
ffa01434:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01438:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0143a:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0143e:	10 97       	W[P2] = R0;
ffa01440:	24 00       	SSYNC;
ffa01442:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa01446:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0144a:	17 97       	W[P2] = R7;
ffa0144c:	24 00       	SSYNC;
ffa0144e:	01 e8 00 00 	UNLINK;
ffa01452:	38 05       	(R7:7) = [SP++];
ffa01454:	10 00       	RTS;
	...

ffa01458 <_radio_set_tx>:
ffa01458:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0145c:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa01460:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01464:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01468:	10 97       	W[P2] = R0;
ffa0146a:	24 00       	SSYNC;
ffa0146c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0146e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01470:	ff e3 0a fe 	CALL 0xffa01084 <_spi_write_register>;
ffa01474:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa01478:	ff e3 86 fe 	CALL 0xffa01184 <_spi_write_byte>;
ffa0147c:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01480:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01482:	ff e3 01 fe 	CALL 0xffa01084 <_spi_write_register>;
ffa01486:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01488:	f1 60       	R1 = 0x1e (X);		/*		R1=0x1e( 30) */
ffa0148a:	ff e3 fd fd 	CALL 0xffa01084 <_spi_write_register>;
ffa0148e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01492:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01494:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa01498:	10 97       	W[P2] = R0;
ffa0149a:	01 e8 00 00 	UNLINK;
ffa0149e:	10 00       	RTS;

ffa014a0 <_radio_wait_irq>:
ffa014a0:	78 05       	[--SP] = (R7:7);
ffa014a2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa014a6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa014aa:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa014ae:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (X) || NOP;
ffa014b2:	50 95 00 00 
ffa014b6:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa014b8:	25 18       	IF CC JUMP 0xffa01502 <_radio_wait_irq+0x62>;
ffa014ba:	01 0d       	CC = R1 <= 0x0;
ffa014bc:	25 18       	IF CC JUMP 0xffa01506 <_radio_wait_irq+0x66>;
ffa014be:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa014c0:	04 20       	JUMP.S 0xffa014c8 <_radio_wait_irq+0x28>;
ffa014c2:	39 08       	CC = R1 == R7;
ffa014c4:	10 18       	IF CC JUMP 0xffa014e4 <_radio_wait_irq+0x44>;
	...
ffa014ce:	00 00       	NOP;
ffa014d0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa014d4:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa014d8:	50 95       	R0 = W[P2] (X);
ffa014da:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa014dc:	0f 64       	R7 += 0x1;		/* (  1) */
ffa014de:	f2 17       	IF !CC JUMP 0xffa014c2 <_radio_wait_irq+0x22> (BP);
ffa014e0:	39 09       	CC = R1 <= R7;
ffa014e2:	06 10       	IF !CC JUMP 0xffa014ee <_radio_wait_irq+0x4e>;
ffa014e4:	01 e8 00 00 	UNLINK;
ffa014e8:	07 30       	R0 = R7;
ffa014ea:	38 05       	(R7:7) = [SP++];
ffa014ec:	10 00       	RTS;
ffa014ee:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa014f0:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa014f4:	ff e3 c8 fd 	CALL 0xffa01084 <_spi_write_register>;
ffa014f8:	01 e8 00 00 	UNLINK;
ffa014fc:	07 30       	R0 = R7;
ffa014fe:	38 05       	(R7:7) = [SP++];
ffa01500:	10 00       	RTS;
ffa01502:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01504:	ee 2f       	JUMP.S 0xffa014e0 <_radio_wait_irq+0x40>;
ffa01506:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01508:	ee 2f       	JUMP.S 0xffa014e4 <_radio_wait_irq+0x44>;
	...

ffa0150c <_spi_write_register_ver>:
ffa0150c:	68 05       	[--SP] = (R7:5);
ffa0150e:	47 43       	R7 = R0.B (Z);
ffa01510:	4e 43       	R6 = R1.B (Z);
ffa01512:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01516:	0e 30       	R1 = R6;
ffa01518:	07 30       	R0 = R7;
ffa0151a:	ff e3 b5 fd 	CALL 0xffa01084 <_spi_write_register>;
ffa0151e:	07 30       	R0 = R7;
ffa01520:	ff e3 de fd 	CALL 0xffa010dc <_spi_read_register>;
ffa01524:	45 43       	R5 = R0.B (Z);
ffa01526:	2e 08       	CC = R6 == R5;
ffa01528:	29 18       	IF CC JUMP 0xffa0157a <_spi_write_register_ver+0x6e>;
ffa0152a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900007(-7340025) */
ffa0152e:	0f 30       	R1 = R7;
ffa01530:	00 e1 98 00 	R0.L = 0x98;		/* (152)	R0=0xff900098(-7339880) */
ffa01534:	ff e3 a8 fa 	CALL 0xffa00a84 <_printf_int>;
ffa01538:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900098(-7339880) */
ffa0153c:	00 e1 0c 05 	R0.L = 0x50c;		/* (1292)	R0=0xff90050c(-7338740) */
ffa01540:	ff e3 86 f9 	CALL 0xffa0084c <_uart_str>;
ffa01544:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90050c(-7338740) */
ffa01548:	0e 30       	R1 = R6;
ffa0154a:	00 e1 ac 00 	R0.L = 0xac;		/* (172)	R0=0xff9000ac(-7339860) */
ffa0154e:	ff e3 e9 f9 	CALL 0xffa00920 <_printf_hex_byte>;
ffa01552:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000ac(-7339860) */
ffa01556:	00 e1 0c 05 	R0.L = 0x50c;		/* (1292)	R0=0xff90050c(-7338740) */
ffa0155a:	ff e3 79 f9 	CALL 0xffa0084c <_uart_str>;
ffa0155e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90050c(-7338740) */
ffa01562:	00 e1 b8 00 	R0.L = 0xb8;		/* (184)	R0=0xff9000b8(-7339848) */
ffa01566:	0d 30       	R1 = R5;
ffa01568:	ff e3 dc f9 	CALL 0xffa00920 <_printf_hex_byte>;
ffa0156c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000b8(-7339848) */
ffa01570:	00 e1 68 0a 	R0.L = 0xa68;		/* (2664)	R0=0xff900a68(-7337368) */
ffa01574:	35 30       	R6 = R5;
ffa01576:	ff e3 6b f9 	CALL 0xffa0084c <_uart_str>;
ffa0157a:	01 e8 00 00 	UNLINK;
ffa0157e:	06 30       	R0 = R6;
ffa01580:	28 05       	(R7:5) = [SP++];
ffa01582:	10 00       	RTS;

ffa01584 <_radio_init>:
ffa01584:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa01588:	78 05       	[--SP] = (R7:7);
ffa0158a:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa0158c:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa01590:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01594:	11 97       	W[P2] = R1;
ffa01596:	21 e1 2d 50 	R1 = 0x502d (X);		/*		R1=0x502d(20525) */
ffa0159a:	62 6f       	P2 += -0x14;		/* (-20) */
ffa0159c:	11 97       	W[P2] = R1;
ffa0159e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa015a0:	22 6c       	P2 += 0x4;		/* (  4) */
ffa015a2:	11 97       	W[P2] = R1;
ffa015a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa015a8:	21 e1 00 02 	R1 = 0x200 (X);		/*		R1=0x200(512) */
ffa015ac:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa015b0:	11 97       	W[P2] = R1;
ffa015b2:	c2 6d       	P2 += 0x38;		/* ( 56) */
ffa015b4:	51 95       	R1 = W[P2] (X);
ffa015b6:	59 4a       	BITSET (R1, 0xb);		/* bit 11 */
ffa015b8:	11 97       	W[P2] = R1;
ffa015ba:	82 6f       	P2 += -0x10;		/* (-16) */
ffa015bc:	51 95       	R1 = W[P2] (X);
ffa015be:	59 4c       	BITCLR (R1, 0xb);		/* bit 11 */
ffa015c0:	11 97       	W[P2] = R1;
ffa015c2:	52 95       	R2 = W[P2] (X);
ffa015c4:	21 e1 00 06 	R1 = 0x600 (X);		/*		R1=0x600(1536) */
ffa015c8:	51 56       	R1 = R1 | R2;
ffa015ca:	11 97       	W[P2] = R1;
ffa015cc:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa015d0:	41 43       	R1 = R0.B (Z);
ffa015d2:	11 0a       	CC = R1 <= R2 (IU);
ffa015d4:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa015d8:	01 06       	IF !CC R0 = R1;
ffa015da:	47 43       	R7 = R0.B (Z);
ffa015dc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a68(-7337368) */
ffa015e0:	0f 30       	R1 = R7;
ffa015e2:	00 e1 c4 00 	R0.L = 0xc4;		/* (196)	R0=0xff9000c4(-7339836) */
ffa015e6:	ff e3 4f fa 	CALL 0xffa00a84 <_printf_int>;
ffa015ea:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000c4(-7339836) */
ffa015ee:	00 e1 68 0a 	R0.L = 0xa68;		/* (2664)	R0=0xff900a68(-7337368) */
ffa015f2:	ff e3 2d f9 	CALL 0xffa0084c <_uart_str>;
ffa015f6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa015f8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa015fa:	ff e3 45 fd 	CALL 0xffa01084 <_spi_write_register>;
ffa015fe:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01600:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01602:	ff e3 85 ff 	CALL 0xffa0150c <_spi_write_register_ver>;
ffa01606:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01608:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0160a:	ff e3 81 ff 	CALL 0xffa0150c <_spi_write_register_ver>;
ffa0160e:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01610:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01612:	ff e3 7d ff 	CALL 0xffa0150c <_spi_write_register_ver>;
ffa01616:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01618:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0161a:	ff e3 79 ff 	CALL 0xffa0150c <_spi_write_register_ver>;
ffa0161e:	0f 30       	R1 = R7;
ffa01620:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa01622:	ff e3 75 ff 	CALL 0xffa0150c <_spi_write_register_ver>;
ffa01626:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa01628:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0162a:	ff e3 71 ff 	CALL 0xffa0150c <_spi_write_register_ver>;
ffa0162e:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01632:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01634:	ff e3 6c ff 	CALL 0xffa0150c <_spi_write_register_ver>;
ffa01638:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0163a:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0163c:	ff e3 68 ff 	CALL 0xffa0150c <_spi_write_register_ver>;
ffa01640:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01644:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa01648:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0164a:	10 97       	W[P2] = R0;
ffa0164c:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa01650:	ff e3 9a fd 	CALL 0xffa01184 <_spi_write_byte>;
ffa01654:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa01658:	ff e3 96 fd 	CALL 0xffa01184 <_spi_write_byte>;
ffa0165c:	01 e8 00 00 	UNLINK;
ffa01660:	40 43       	R0 = R0.B (Z);
ffa01662:	38 05       	(R7:7) = [SP++];
ffa01664:	10 00       	RTS;
	...

ffa01668 <_bfin_EMAC_send_check>:
ffa01668:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0166c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01670:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01674:	50 95       	R0 = W[P2] (X);
ffa01676:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa01678:	00 02       	R0 = CC;
ffa0167a:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa0167c:	01 e8 00 00 	UNLINK;
ffa01680:	10 00       	RTS;
	...

ffa01684 <_FormatIPAddress>:
ffa01684:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01688:	18 30       	R3 = R0;
ffa0168a:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa0168e:	40 4f       	R0 <<= 0x8;
ffa01690:	52 43       	R2 = R2.B (Z);
ffa01692:	10 56       	R0 = R0 | R2;
ffa01694:	40 4f       	R0 <<= 0x8;
ffa01696:	49 43       	R1 = R1.B (Z);
ffa01698:	08 56       	R0 = R0 | R1;
ffa0169a:	40 4f       	R0 <<= 0x8;
ffa0169c:	5b 43       	R3 = R3.B (Z);
ffa0169e:	18 56       	R0 = R0 | R3;
ffa016a0:	01 e8 00 00 	UNLINK;
ffa016a4:	10 00       	RTS;
	...

ffa016a8 <_bfin_EMAC_halt>:
ffa016a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa016ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa016ae:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa016b2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa016b6:	10 93       	[P2] = R0;
ffa016b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa016bc:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa016c0:	10 97       	W[P2] = R0;
ffa016c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa016c6:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa016ca:	10 97       	W[P2] = R0;
ffa016cc:	01 e8 00 00 	UNLINK;
ffa016d0:	10 00       	RTS;
	...

ffa016d4 <_PollMdcDone>:
ffa016d4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa016d8:	02 20       	JUMP.S 0xffa016dc <_PollMdcDone+0x8>;
ffa016da:	00 00       	NOP;
ffa016dc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa016e0:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa016e4:	10 91       	R0 = [P2];
ffa016e6:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa016e8:	f9 17       	IF !CC JUMP 0xffa016da <_PollMdcDone+0x6> (BP);
ffa016ea:	01 e8 00 00 	UNLINK;
ffa016ee:	10 00       	RTS;

ffa016f0 <_WrPHYReg>:
ffa016f0:	68 05       	[--SP] = (R7:5);
ffa016f2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa016f6:	28 30       	R5 = R0;
ffa016f8:	31 30       	R6 = R1;
ffa016fa:	3a 30       	R7 = R2;
ffa016fc:	ff e3 ec ff 	CALL 0xffa016d4 <_PollMdcDone>;
ffa01700:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01702:	b0 55       	R6 = R0 & R6;
ffa01704:	28 54       	R0 = R0 & R5;
ffa01706:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0170a:	58 4f       	R0 <<= 0xb;
ffa0170c:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0170e:	ff 42       	R7 = R7.L (Z);
ffa01710:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01714:	36 4f       	R6 <<= 0x6;
ffa01716:	08 56       	R0 = R0 | R1;
ffa01718:	17 93       	[P2] = R7;
ffa0171a:	86 57       	R6 = R6 | R0;
ffa0171c:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0171e:	16 93       	[P2] = R6;
ffa01720:	01 e8 00 00 	UNLINK;
ffa01724:	28 05       	(R7:5) = [SP++];
ffa01726:	10 00       	RTS;

ffa01728 <_RdPHYReg>:
ffa01728:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0172a:	29 32       	P5 = R1;
ffa0172c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01730:	38 30       	R7 = R0;
ffa01732:	ff e3 d1 ff 	CALL 0xffa016d4 <_PollMdcDone>;
ffa01736:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa0173a:	45 30       	R0 = P5;
ffa0173c:	c0 42       	R0 = R0.L (Z);
ffa0173e:	28 32       	P5 = R0;
ffa01740:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01742:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01746:	55 30       	R2 = P5;
ffa01748:	42 54       	R1 = R2 & R0;
ffa0174a:	38 54       	R0 = R0 & R7;
ffa0174c:	58 4f       	R0 <<= 0xb;
ffa0174e:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa01750:	31 4f       	R1 <<= 0x6;
ffa01752:	41 56       	R1 = R1 | R0;
ffa01754:	11 93       	[P2] = R1;
ffa01756:	ff e3 bf ff 	CALL 0xffa016d4 <_PollMdcDone>;
ffa0175a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0175e:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01762:	10 91       	R0 = [P2];
ffa01764:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa01768:	0a e1 e0 0b 	P2.L = 0xbe0;		/* (3040)	P2=0xff900be0 <_PHYregs> */
ffa0176c:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa0176e:	10 97       	W[P2] = R0;
ffa01770:	01 e8 00 00 	UNLINK;
ffa01774:	c0 42       	R0 = R0.L (Z);
ffa01776:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01778:	10 00       	RTS;
	...

ffa0177c <_SoftResetPHY>:
ffa0177c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0177e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01780:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa01784:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01788:	ff e3 b4 ff 	CALL 0xffa016f0 <_WrPHYReg>;
ffa0178c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0178e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01790:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01792:	ff e3 af ff 	CALL 0xffa016f0 <_WrPHYReg>;
ffa01796:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01798:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0179a:	ff e3 c7 ff 	CALL 0xffa01728 <_RdPHYReg>;
ffa0179e:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa017a0:	fb 1f       	IF CC JUMP 0xffa01796 <_SoftResetPHY+0x1a> (BP);
ffa017a2:	01 e8 00 00 	UNLINK;
ffa017a6:	10 00       	RTS;

ffa017a8 <_NetCksum>:
ffa017a8:	01 0d       	CC = R1 <= 0x0;
ffa017aa:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa017ae:	10 18       	IF CC JUMP 0xffa017ce <_NetCksum+0x26>;
ffa017b0:	10 32       	P2 = R0;
ffa017b2:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa017b4:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa017b6:	0a 64       	R2 += 0x1;		/* (  1) */
ffa017b8:	10 94       	R0 = W[P2++] (Z);
ffa017ba:	0a 08       	CC = R2 == R1;
ffa017bc:	c3 50       	R3 = R3 + R0;
ffa017be:	fc 17       	IF !CC JUMP 0xffa017b6 <_NetCksum+0xe> (BP);
ffa017c0:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa017c4:	03 50       	R0 = R3 + R0;
ffa017c6:	c0 42       	R0 = R0.L (Z);
ffa017c8:	01 e8 00 00 	UNLINK;
ffa017cc:	10 00       	RTS;
ffa017ce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017d0:	01 e8 00 00 	UNLINK;
ffa017d4:	10 00       	RTS;
	...

ffa017d8 <_htons>:
ffa017d8:	08 30       	R1 = R0;
ffa017da:	c0 42       	R0 = R0.L (Z);
ffa017dc:	40 4e       	R0 >>= 0x8;
ffa017de:	41 4f       	R1 <<= 0x8;
ffa017e0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa017e4:	08 56       	R0 = R0 | R1;
ffa017e6:	c0 42       	R0 = R0.L (Z);
ffa017e8:	01 e8 00 00 	UNLINK;
ffa017ec:	10 00       	RTS;
	...

ffa017f0 <_htonl>:
ffa017f0:	10 30       	R2 = R0;
ffa017f2:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa017f6:	40 43       	R0 = R0.B (Z);
ffa017f8:	49 43       	R1 = R1.B (Z);
ffa017fa:	40 4f       	R0 <<= 0x8;
ffa017fc:	08 56       	R0 = R0 | R1;
ffa017fe:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa01802:	40 4f       	R0 <<= 0x8;
ffa01804:	49 43       	R1 = R1.B (Z);
ffa01806:	08 56       	R0 = R0 | R1;
ffa01808:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0180c:	40 4f       	R0 <<= 0x8;
ffa0180e:	c2 4e       	R2 >>= 0x18;
ffa01810:	10 56       	R0 = R0 | R2;
ffa01812:	01 e8 00 00 	UNLINK;
ffa01816:	10 00       	RTS;

ffa01818 <_pack4chars>:
ffa01818:	08 32       	P1 = R0;
ffa0181a:	10 32       	P2 = R0;
ffa0181c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01820:	01 e8 00 00 	UNLINK;
ffa01824:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa01828:	10 98       	R0 = B[P2++] (Z);
ffa0182a:	41 4f       	R1 <<= 0x8;
ffa0182c:	08 50       	R0 = R0 + R1;
ffa0182e:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa01832:	81 4f       	R1 <<= 0x10;
ffa01834:	08 50       	R0 = R0 + R1;
ffa01836:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa0183a:	c1 4f       	R1 <<= 0x18;
ffa0183c:	08 50       	R0 = R0 + R1;
ffa0183e:	10 00       	RTS;

ffa01840 <_ip_header_setup>:
ffa01840:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01842:	28 32       	P5 = R0;
ffa01844:	21 32       	P4 = R1;
ffa01846:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa0184a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0184e:	32 30       	R6 = R2;
ffa01850:	28 9b       	B[P5] = R0;
ffa01852:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01854:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa01858:	27 91       	R7 = [P4];
ffa0185a:	f8 42       	R0 = R7.L (Z);
ffa0185c:	ff e3 be ff 	CALL 0xffa017d8 <_htons>;
ffa01860:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be0 <_PHYregs> */
ffa01864:	0a e1 2a 0c 	P2.L = 0xc2a;		/* (3114)	P2=0xff900c2a <_NetIPID> */
ffa01868:	68 b4       	W[P5 + 0x2] = R0;
ffa0186a:	10 95       	R0 = W[P2] (Z);
ffa0186c:	08 30       	R1 = R0;
ffa0186e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01870:	67 67       	R7 += -0x14;		/* (-20) */
ffa01872:	11 97       	W[P2] = R1;
ffa01874:	27 93       	[P4] = R7;
ffa01876:	ff e3 b1 ff 	CALL 0xffa017d8 <_htons>;
ffa0187a:	a8 b4       	W[P5 + 0x4] = R0;
ffa0187c:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01880:	ff e3 ac ff 	CALL 0xffa017d8 <_htons>;
ffa01884:	e8 b4       	W[P5 + 0x6] = R0;
ffa01886:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa0188a:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0188e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2a <_NetIPID> */
ffa01892:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa01896:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0189a:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetOurIP> */
ffa0189e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018a0:	68 b5       	W[P5 + 0xa] = R0;
ffa018a2:	10 91       	R0 = [P2];
ffa018a4:	e8 b0       	[P5 + 0xc] = R0;
ffa018a6:	2e b1       	[P5 + 0x10] = R6;
ffa018a8:	45 30       	R0 = P5;
ffa018aa:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa018ac:	ff e3 7e ff 	CALL 0xffa017a8 <_NetCksum>;
ffa018b0:	c0 43       	R0 =~ R0;
ffa018b2:	68 b5       	W[P5 + 0xa] = R0;
ffa018b4:	01 e8 00 00 	UNLINK;
ffa018b8:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa018ba:	45 30       	R0 = P5;
ffa018bc:	b4 05       	(R7:6, P5:4) = [SP++];
ffa018be:	10 00       	RTS;

ffa018c0 <_ip_header_checksum>:
ffa018c0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa018c4:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa018c6:	ff e3 71 ff 	CALL 0xffa017a8 <_NetCksum>;
ffa018ca:	08 02       	CC = R0;
ffa018cc:	00 02       	R0 = CC;
ffa018ce:	01 e8 00 00 	UNLINK;
ffa018d2:	10 00       	RTS;

ffa018d4 <_icmp_header_setup>:
ffa018d4:	00 32       	P0 = R0;
ffa018d6:	c5 04       	[--SP] = (P5:5);
ffa018d8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018da:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa018de:	29 32       	P5 = R1;
ffa018e0:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa018e4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018e6:	40 b4       	W[P0 + 0x2] = R0;
ffa018e8:	38 ab       	R0 = W[FP + 0x18] (X);
ffa018ea:	80 b4       	W[P0 + 0x4] = R0;
ffa018ec:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa018ee:	02 9b       	B[P0] = R2;
ffa018f0:	c0 b4       	W[P0 + 0x6] = R0;
ffa018f2:	48 32       	P1 = P0;
ffa018f4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa018f6:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa018f8:	b2 e0 03 20 	LSETUP(0xffa018fc <_icmp_header_setup+0x28>, 0xffa018fe <_icmp_header_setup+0x2a>) LC1 = P2;
ffa018fc:	08 94       	R0 = W[P1++] (Z);
ffa018fe:	41 50       	R1 = R1 + R0;
ffa01900:	c8 42       	R0 = R1.L (Z);
ffa01902:	81 4e       	R1 >>= 0x10;
ffa01904:	08 50       	R0 = R0 + R1;
ffa01906:	c0 43       	R0 =~ R0;
ffa01908:	40 b4       	W[P0 + 0x2] = R0;
ffa0190a:	28 91       	R0 = [P5];
ffa0190c:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa0190e:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01910:	01 e8 00 00 	UNLINK;
ffa01914:	28 93       	[P5] = R0;
ffa01916:	40 30       	R0 = P0;
ffa01918:	85 04       	(P5:5) = [SP++];
ffa0191a:	10 00       	RTS;

ffa0191c <_udp_header_setup>:
ffa0191c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0191e:	28 32       	P5 = R0;
ffa01920:	21 32       	P4 = R1;
ffa01922:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01926:	d0 42       	R0 = R2.L (Z);
ffa01928:	ff e3 58 ff 	CALL 0xffa017d8 <_htons>;
ffa0192c:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa01930:	28 97       	W[P5] = R0;
ffa01932:	07 30       	R0 = R7;
ffa01934:	ff e3 52 ff 	CALL 0xffa017d8 <_htons>;
ffa01938:	27 91       	R7 = [P4];
ffa0193a:	68 b4       	W[P5 + 0x2] = R0;
ffa0193c:	f8 42       	R0 = R7.L (Z);
ffa0193e:	ff e3 4d ff 	CALL 0xffa017d8 <_htons>;
ffa01942:	a8 b4       	W[P5 + 0x4] = R0;
ffa01944:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01946:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa01948:	e8 b4       	W[P5 + 0x6] = R0;
ffa0194a:	01 e8 00 00 	UNLINK;
ffa0194e:	45 6c       	P5 += 0x8;		/* (  8) */
ffa01950:	45 30       	R0 = P5;
ffa01952:	27 93       	[P4] = R7;
ffa01954:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01956:	10 00       	RTS;

ffa01958 <_tcp_header_setup>:
ffa01958:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0195a:	28 32       	P5 = R0;
ffa0195c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01960:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01964:	21 32       	P4 = R1;
ffa01966:	3a 30       	R7 = R2;
ffa01968:	ff e3 38 ff 	CALL 0xffa017d8 <_htons>;
ffa0196c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa01970:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpClientPort> */
ffa01974:	28 97       	W[P5] = R0;
ffa01976:	50 95       	R0 = W[P2] (X);
ffa01978:	68 b4       	W[P5 + 0x2] = R0;
ffa0197a:	38 a2       	R0 = [FP + 0x20];
ffa0197c:	ff e3 3a ff 	CALL 0xffa017f0 <_htonl>;
ffa01980:	68 b0       	[P5 + 0x4] = R0;
ffa01982:	78 a2       	R0 = [FP + 0x24];
ffa01984:	ff e3 36 ff 	CALL 0xffa017f0 <_htonl>;
ffa01988:	a8 b0       	[P5 + 0x8] = R0;
ffa0198a:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa0198e:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01992:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa01996:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa0199a:	ff e3 1f ff 	CALL 0xffa017d8 <_htons>;
ffa0199e:	e8 b5       	W[P5 + 0xe] = R0;
ffa019a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa019a2:	28 b6       	W[P5 + 0x10] = R0;
ffa019a4:	68 b6       	W[P5 + 0x12] = R0;
ffa019a6:	20 91       	R0 = [P4];
ffa019a8:	60 67       	R0 += -0x14;		/* (-20) */
ffa019aa:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa019ac:	01 e8 00 00 	UNLINK;
ffa019b0:	20 93       	[P4] = R0;
ffa019b2:	45 30       	R0 = P5;
ffa019b4:	bc 05       	(R7:7, P5:4) = [SP++];
ffa019b6:	10 00       	RTS;

ffa019b8 <_DHCP_parse>:
ffa019b8:	f5 05       	[--SP] = (R7:6, P5:5);
ffa019ba:	09 0d       	CC = R1 <= 0x1;
ffa019bc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa019c0:	10 32       	P2 = R0;
ffa019c2:	33 18       	IF CC JUMP 0xffa01a28 <_DHCP_parse+0x70>;
ffa019c4:	00 00       	NOP;
ffa019c6:	31 30       	R6 = R1;
ffa019c8:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa019ca:	11 98       	R1 = B[P2++] (Z);
ffa019cc:	01 0c       	CC = R1 == 0x0;
ffa019ce:	2b 1c       	IF CC JUMP 0xffa01a24 <_DHCP_parse+0x6c> (BP);
ffa019d0:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa019d4:	01 08       	CC = R1 == R0;
ffa019d6:	57 99       	R7 = B[P2] (X);
ffa019d8:	28 18       	IF CC JUMP 0xffa01a28 <_DHCP_parse+0x70>;
ffa019da:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa019dc:	6a 32       	P5 = P2;
ffa019de:	01 0a       	CC = R1 <= R0 (IU);
ffa019e0:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa019e2:	09 14       	IF !CC JUMP 0xffa019f4 <_DHCP_parse+0x3c> (BP);
ffa019e4:	09 32       	P1 = R1;
ffa019e6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpClientPort> */
ffa019ea:	0a e1 ac 03 	P2.L = 0x3ac;		/* (940)	P2=0xff9003ac */
ffa019ee:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa019f0:	52 91       	P2 = [P2];
ffa019f2:	52 00       	JUMP (P2);
ffa019f4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa019f8:	00 e1 84 01 	R0.L = 0x184;		/* (388)	R0=0xff900184(-7339644) */
ffa019fc:	ff e3 44 f8 	CALL 0xffa00a84 <_printf_int>;
ffa01a00:	7f 43       	R7 = R7.B (Z);
ffa01a02:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900184(-7339644) */
ffa01a06:	00 e1 98 01 	R0.L = 0x198;		/* (408)	R0=0xff900198(-7339624) */
ffa01a0a:	0f 30       	R1 = R7;
ffa01a0c:	ff e3 3c f8 	CALL 0xffa00a84 <_printf_int>;
ffa01a10:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900198(-7339624) */
ffa01a14:	00 e1 68 0a 	R0.L = 0xa68;		/* (2664)	R0=0xff900a68(-7337368) */
ffa01a18:	ff e3 74 f7 	CALL 0xffa00900 <_printf_str>;
ffa01a1c:	0f 32       	P1 = R7;
ffa01a1e:	be 53       	R6 = R6 - R7;
ffa01a20:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01a22:	8d 5a       	P2 = P5 + P1;
ffa01a24:	0e 0d       	CC = R6 <= 0x1;
ffa01a26:	d1 17       	IF !CC JUMP 0xffa019c8 <_DHCP_parse+0x10> (BP);
ffa01a28:	01 e8 00 00 	UNLINK;
ffa01a2c:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01a2e:	10 00       	RTS;
ffa01a30:	45 30       	R0 = P5;
ffa01a32:	ff e3 f3 fe 	CALL 0xffa01818 <_pack4chars>;
ffa01a36:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff9003ac */
ffa01a3a:	0a e1 58 0c 	P2.L = 0xc58;		/* (3160)	P2=0xff900c58 <_NetSubnetMask> */
ffa01a3e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01a42:	10 93 00 00 
ffa01a46:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a68(-7337368) */
ffa01a4a:	00 e1 dc 00 	R0.L = 0xdc;		/* (220)	R0=0xff9000dc(-7339812) */
ffa01a4e:	ff e3 bd f8 	CALL 0xffa00bc8 <_printf_ip>;
ffa01a52:	7f 43       	R7 = R7.B (Z);
ffa01a54:	de 2f       	JUMP.S 0xffa01a10 <_DHCP_parse+0x58>;
ffa01a56:	45 30       	R0 = P5;
ffa01a58:	ff e3 e0 fe 	CALL 0xffa01818 <_pack4chars>;
ffa01a5c:	08 30       	R1 = R0;
ffa01a5e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000dc(-7339812) */
ffa01a62:	00 e1 ec 00 	R0.L = 0xec;		/* (236)	R0=0xff9000ec(-7339796) */
ffa01a66:	ff e3 b1 f8 	CALL 0xffa00bc8 <_printf_ip>;
ffa01a6a:	7f 43       	R7 = R7.B (Z);
ffa01a6c:	d2 2f       	JUMP.S 0xffa01a10 <_DHCP_parse+0x58>;
ffa01a6e:	45 30       	R0 = P5;
ffa01a70:	ff e3 d4 fe 	CALL 0xffa01818 <_pack4chars>;
ffa01a74:	08 30       	R1 = R0;
ffa01a76:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000ec(-7339796) */
ffa01a7a:	00 e1 fc 00 	R0.L = 0xfc;		/* (252)	R0=0xff9000fc(-7339780) */
ffa01a7e:	ff e3 a5 f8 	CALL 0xffa00bc8 <_printf_ip>;
ffa01a82:	7f 43       	R7 = R7.B (Z);
ffa01a84:	c6 2f       	JUMP.S 0xffa01a10 <_DHCP_parse+0x58>;
ffa01a86:	45 30       	R0 = P5;
ffa01a88:	ff e3 c8 fe 	CALL 0xffa01818 <_pack4chars>;
ffa01a8c:	08 30       	R1 = R0;
ffa01a8e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000fc(-7339780) */
ffa01a92:	00 e1 0c 01 	R0.L = 0x10c;		/* (268)	R0=0xff90010c(-7339764) */
ffa01a96:	ff e3 99 f8 	CALL 0xffa00bc8 <_printf_ip>;
ffa01a9a:	7f 43       	R7 = R7.B (Z);
ffa01a9c:	ba 2f       	JUMP.S 0xffa01a10 <_DHCP_parse+0x58>;
ffa01a9e:	45 30       	R0 = P5;
ffa01aa0:	ff e3 bc fe 	CALL 0xffa01818 <_pack4chars>;
ffa01aa4:	ff e3 a6 fe 	CALL 0xffa017f0 <_htonl>;
ffa01aa8:	08 30       	R1 = R0;
ffa01aaa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90010c(-7339764) */
ffa01aae:	00 e1 1c 01 	R0.L = 0x11c;		/* (284)	R0=0xff90011c(-7339748) */
ffa01ab2:	ff e3 e9 f7 	CALL 0xffa00a84 <_printf_int>;
ffa01ab6:	7f 43       	R7 = R7.B (Z);
ffa01ab8:	ac 2f       	JUMP.S 0xffa01a10 <_DHCP_parse+0x58>;
ffa01aba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa01abe:	29 99       	R1 = B[P5] (Z);
ffa01ac0:	00 e1 30 01 	R0.L = 0x130;		/* (304)	R0=0xff900130(-7339728) */
ffa01ac4:	ff e3 e0 f7 	CALL 0xffa00a84 <_printf_int>;
ffa01ac8:	7f 43       	R7 = R7.B (Z);
ffa01aca:	a3 2f       	JUMP.S 0xffa01a10 <_DHCP_parse+0x58>;
ffa01acc:	45 30       	R0 = P5;
ffa01ace:	ff e3 a5 fe 	CALL 0xffa01818 <_pack4chars>;
ffa01ad2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c58 <_NetSubnetMask> */
ffa01ad6:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDHCPserv> */
ffa01ada:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01ade:	10 93 00 00 
ffa01ae2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900130(-7339728) */
ffa01ae6:	00 e1 44 01 	R0.L = 0x144;		/* (324)	R0=0xff900144(-7339708) */
ffa01aea:	ff e3 6f f8 	CALL 0xffa00bc8 <_printf_ip>;
ffa01aee:	7f 43       	R7 = R7.B (Z);
ffa01af0:	90 2f       	JUMP.S 0xffa01a10 <_DHCP_parse+0x58>;
ffa01af2:	45 30       	R0 = P5;
ffa01af4:	ff e3 92 fe 	CALL 0xffa01818 <_pack4chars>;
ffa01af8:	ff e3 7c fe 	CALL 0xffa017f0 <_htonl>;
ffa01afc:	08 30       	R1 = R0;
ffa01afe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900144(-7339708) */
ffa01b02:	00 e1 58 01 	R0.L = 0x158;		/* (344)	R0=0xff900158(-7339688) */
ffa01b06:	ff e3 bf f7 	CALL 0xffa00a84 <_printf_int>;
ffa01b0a:	7f 43       	R7 = R7.B (Z);
ffa01b0c:	82 2f       	JUMP.S 0xffa01a10 <_DHCP_parse+0x58>;
ffa01b0e:	45 30       	R0 = P5;
ffa01b10:	ff e3 84 fe 	CALL 0xffa01818 <_pack4chars>;
ffa01b14:	ff e3 6e fe 	CALL 0xffa017f0 <_htonl>;
ffa01b18:	08 30       	R1 = R0;
ffa01b1a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900158(-7339688) */
ffa01b1e:	00 e1 6c 01 	R0.L = 0x16c;		/* (364)	R0=0xff90016c(-7339668) */
ffa01b22:	ff e3 b1 f7 	CALL 0xffa00a84 <_printf_int>;
ffa01b26:	7f 43       	R7 = R7.B (Z);
ffa01b28:	74 2f       	JUMP.S 0xffa01a10 <_DHCP_parse+0x58>;
	...

ffa01b2c <_bfin_EMAC_send_nocopy>:
ffa01b2c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c24(-4191196) */
ffa01b30:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01b32:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01b36:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b3a:	10 97       	W[P2] = R0;
ffa01b3c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01b40:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01b44:	50 95       	R0 = W[P2] (X);
ffa01b46:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01b48:	59 10       	IF !CC JUMP 0xffa01bfa <_bfin_EMAC_send_nocopy+0xce>;
ffa01b4a:	00 00       	NOP;
ffa01b4c:	00 00       	NOP;
ffa01b4e:	00 00       	NOP;
ffa01b50:	50 95       	R0 = W[P2] (X);
ffa01b52:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01b54:	16 18       	IF CC JUMP 0xffa01b80 <_bfin_EMAC_send_nocopy+0x54>;
ffa01b56:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0d68 */
ffa01b5a:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01b5e:	b2 e0 09 10 	LSETUP(0xffa01b62 <_bfin_EMAC_send_nocopy+0x36>, 0xffa01b70 <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa01b62:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01b66:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01b6a:	50 95       	R0 = W[P2] (X);
ffa01b6c:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01b6e:	09 18       	IF CC JUMP 0xffa01b80 <_bfin_EMAC_send_nocopy+0x54>;
ffa01b70:	00 00       	NOP;
ffa01b72:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa01b76:	00 e1 b8 01 	R0.L = 0x1b8;		/* (440)	R0=0xff9001b8(-7339592) */
ffa01b7a:	ff e3 c3 f6 	CALL 0xffa00900 <_printf_str>;
ffa01b7e:	30 20       	JUMP.S 0xffa01bde <_bfin_EMAC_send_nocopy+0xb2>;
ffa01b80:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa01b84:	08 e1 28 0c 	P0.L = 0xc28;		/* (3112)	P0=0xff900c28 <_txIdx> */
ffa01b88:	00 95       	R0 = W[P0] (Z);
ffa01b8a:	10 32       	P2 = R0;
ffa01b8c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01b90:	09 e1 2c 0c 	P1.L = 0xc2c;		/* (3116)	P1=0xff900c2c <_txbuf> */
ffa01b94:	42 95       	R2 = W[P0] (X);
ffa01b96:	d1 42       	R1 = R2.L (Z);
ffa01b98:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01b9a:	52 91       	P2 = [P2];
ffa01b9c:	11 0d       	CC = R1 <= 0x2;
ffa01b9e:	90 a1       	R0 = [P2 + 0x18];
ffa01ba0:	50 b0       	[P2 + 0x4] = R0;
ffa01ba2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ba4:	90 b2       	[P2 + 0x28] = R0;
ffa01ba6:	11 32       	P2 = R1;
ffa01ba8:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa01baa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01bae:	08 91       	R0 = [P1];
ffa01bb0:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01bb4:	10 93       	[P2] = R0;
ffa01bb6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01bba:	0a e1 9e 04 	P2.L = 0x49e;		/* (1182)	P2=0xff90049e <_txdmacfg> */
ffa01bbe:	50 95       	R0 = W[P2] (X);
ffa01bc0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0049e(-4193122) */
ffa01bc4:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01bc8:	10 97       	W[P2] = R0;
ffa01bca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01bce:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01bd2:	10 91       	R0 = [P2];
ffa01bd4:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01bd6:	10 93       	[P2] = R0;
ffa01bd8:	0d 1c       	IF CC JUMP 0xffa01bf2 <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa01bda:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01bdc:	00 97       	W[P0] = R0;
ffa01bde:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01be2:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01be4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01be8:	10 97       	W[P2] = R0;
ffa01bea:	01 e8 00 00 	UNLINK;
ffa01bee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01bf0:	10 00       	RTS;
ffa01bf2:	02 30       	R0 = R2;
ffa01bf4:	08 64       	R0 += 0x1;		/* (  1) */
ffa01bf6:	00 97       	W[P0] = R0;
ffa01bf8:	f3 2f       	JUMP.S 0xffa01bde <_bfin_EMAC_send_nocopy+0xb2>;
ffa01bfa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01bfe:	00 e1 a0 01 	R0.L = 0x1a0;		/* (416)	R0=0xff9001a0(-7339616) */
ffa01c02:	ff e3 7f f6 	CALL 0xffa00900 <_printf_str>;
ffa01c06:	ec 2f       	JUMP.S 0xffa01bde <_bfin_EMAC_send_nocopy+0xb2>;

ffa01c08 <_DHCP_tx>:
ffa01c08:	e3 05       	[--SP] = (R7:4, P5:3);
ffa01c0a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa01c0e:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01c12:	0a e1 28 0c 	P2.L = 0xc28;		/* (3112)	P2=0xff900c28 <_txIdx> */
ffa01c16:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa01c1a:	10 95 00 00 
ffa01c1e:	10 32       	P2 = R0;
ffa01c20:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c2c <_txbuf> */
ffa01c24:	09 e1 2c 0c 	P1.L = 0xc2c;		/* (3116)	P1=0xff900c2c <_txbuf> */
ffa01c28:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa01c2c:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01c2e:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01c30:	52 91       	P2 = [P2];
ffa01c32:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa01c36:	f1 bb 00 00 
ffa01c3a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90050c */
ffa01c3e:	0d e1 50 0c 	P5.L = 0xc50;		/* (3152)	P5=0xff900c50 <_NetOurMAC> */
ffa01c42:	94 ad       	P4 = [P2 + 0x18];
ffa01c44:	1a 32       	P3 = R2;
ffa01c46:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01c48:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01c4a:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa01c4e:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa01c52:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa01c56:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa01c5a:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa01c5e:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa01c62:	20 97       	W[P4] = R0;
ffa01c64:	68 99       	R0 = B[P5] (X);
ffa01c66:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa01c6a:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01c6e:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa01c72:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01c76:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa01c7a:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01c7e:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa01c82:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01c86:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa01c8a:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01c8e:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa01c92:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01c96:	ff e3 a1 fd 	CALL 0xffa017d8 <_htons>;
ffa01c9a:	e0 b5       	W[P4 + 0xe] = R0;
ffa01c9c:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01ca0:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa01ca4:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa01ca8:	04 50       	R0 = R4 + R0;
ffa01caa:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa01cae:	c0 42       	R0 = R0.L (Z);
ffa01cb0:	ff e3 94 fd 	CALL 0xffa017d8 <_htons>;
ffa01cb4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c28 <_txIdx> */
ffa01cb8:	0a e1 2a 0c 	P2.L = 0xc2a;		/* (3114)	P2=0xff900c2a <_NetIPID> */
ffa01cbc:	60 b6       	W[P4 + 0x12] = R0;
ffa01cbe:	10 95       	R0 = W[P2] (Z);
ffa01cc0:	08 30       	R1 = R0;
ffa01cc2:	09 64       	R1 += 0x1;		/* (  1) */
ffa01cc4:	11 97       	W[P2] = R1;
ffa01cc6:	ff e3 89 fd 	CALL 0xffa017d8 <_htons>;
ffa01cca:	a0 b6       	W[P4 + 0x14] = R0;
ffa01ccc:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01cd0:	ff e3 84 fd 	CALL 0xffa017d8 <_htons>;
ffa01cd4:	e0 b6       	W[P4 + 0x16] = R0;
ffa01cd6:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01cd8:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa01cdc:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa01ce0:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa01ce4:	66 b7 00 00 
ffa01ce8:	44 30       	R0 = P4;
ffa01cea:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01cec:	e7 b1       	[P4 + 0x1c] = R7;
ffa01cee:	23 be       	[P4 + 0x20] = P3;
ffa01cf0:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01cf2:	ff e3 5b fd 	CALL 0xffa017a8 <_NetCksum>;
ffa01cf6:	c0 43       	R0 =~ R0;
ffa01cf8:	60 b7       	W[P4 + 0x1a] = R0;
ffa01cfa:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa01cfe:	ff e3 6d fd 	CALL 0xffa017d8 <_htons>;
ffa01d02:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa01d06:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa01d0a:	ff e3 67 fd 	CALL 0xffa017d8 <_htons>;
ffa01d0e:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa01d12:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa01d16:	04 50       	R0 = R4 + R0;
ffa01d18:	c0 42       	R0 = R0.L (Z);
ffa01d1a:	ff e3 5f fd 	CALL 0xffa017d8 <_htons>;
ffa01d1e:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa01d22:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01d24:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa01d28:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa01d2c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c2a(-4191190) */
ffa01d30:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01d32:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa01d36:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa01d3a:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa01d3e:	10 91       	R0 = [P2];
ffa01d40:	20 b3       	[P4 + 0x30] = R0;
ffa01d42:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa01d46:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa01d4a:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa01d4e:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa01d52:	a7 b3       	[P4 + 0x38] = R7;
ffa01d54:	e7 b3       	[P4 + 0x3c] = R7;
ffa01d56:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa01d5a:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa01d5e:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa01d62:	ff e3 47 fd 	CALL 0xffa017f0 <_htonl>;
ffa01d66:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa01d6a:	68 99       	R0 = B[P5] (X);
ffa01d6c:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa01d70:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01d74:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa01d78:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01d7c:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa01d80:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01d84:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa01d88:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01d8c:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa01d90:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01d94:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa01d98:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa01d9c:	54 5a       	P1 = P4 + P2;
ffa01d9e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01da0:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa01da2:	b2 e0 02 20 	LSETUP(0xffa01da6 <_DHCP_tx+0x19e>, 0xffa01da6 <_DHCP_tx+0x19e>) LC1 = P2;
ffa01da6:	08 9a       	B[P1++] = R0;
ffa01da8:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa01dac:	54 5a       	P1 = P4 + P2;
ffa01dae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01db0:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa01db2:	b2 e0 02 20 	LSETUP(0xffa01db6 <_DHCP_tx+0x1ae>, 0xffa01db6 <_DHCP_tx+0x1ae>) LC1 = P2;
ffa01db6:	08 92       	[P1++] = R0;
ffa01db8:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa01dbc:	54 5a       	P1 = P4 + P2;
ffa01dbe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01dc0:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa01dc2:	b2 e0 02 20 	LSETUP(0xffa01dc6 <_DHCP_tx+0x1be>, 0xffa01dc6 <_DHCP_tx+0x1be>) LC1 = P2;
ffa01dc6:	08 92       	[P1++] = R0;
ffa01dc8:	44 30       	R0 = P4;
ffa01dca:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa01dce:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa01dd2:	f0 b9 00 00 
ffa01dd6:	14 30       	R2 = R4;
ffa01dd8:	ff e3 3c f7 	CALL 0xffa00c50 <_memcpy_>;
ffa01ddc:	01 e8 00 00 	UNLINK;
ffa01de0:	a3 05       	(R7:4, P5:3) = [SP++];
ffa01de2:	ff e2 a5 fe 	JUMP.L 0xffa01b2c <_bfin_EMAC_send_nocopy>;
	...

ffa01de8 <_bfin_EMAC_send>:
ffa01de8:	c4 04       	[--SP] = (P5:4);
ffa01dea:	01 0d       	CC = R1 <= 0x0;
ffa01dec:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01df0:	18 30       	R3 = R0;
ffa01df2:	11 30       	R2 = R1;
ffa01df4:	90 18       	IF CC JUMP 0xffa01f14 <_bfin_EMAC_send+0x12c>;
ffa01df6:	00 00       	NOP;
ffa01df8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00020(-4194272) */
ffa01dfc:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01e00:	50 95       	R0 = W[P2] (X);
ffa01e02:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01e04:	74 10       	IF !CC JUMP 0xffa01eec <_bfin_EMAC_send+0x104>;
ffa01e06:	00 00       	NOP;
ffa01e08:	00 00       	NOP;
ffa01e0a:	00 00       	NOP;
ffa01e0c:	50 95       	R0 = W[P2] (X);
ffa01e0e:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01e10:	17 18       	IF CC JUMP 0xffa01e3e <_bfin_EMAC_send+0x56>;
ffa01e12:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0c2c */
ffa01e16:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01e1a:	b2 e0 09 10 	LSETUP(0xffa01e1e <_bfin_EMAC_send+0x36>, 0xffa01e2c <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa01e1e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01e22:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01e26:	50 95       	R0 = W[P2] (X);
ffa01e28:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01e2a:	0a 18       	IF CC JUMP 0xffa01e3e <_bfin_EMAC_send+0x56>;
ffa01e2c:	00 00       	NOP;
ffa01e2e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01e32:	00 e1 ec 01 	R0.L = 0x1ec;		/* (492)	R0=0xff9001ec(-7339540) */
ffa01e36:	ff e3 65 f5 	CALL 0xffa00900 <_printf_str>;
ffa01e3a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01e3c:	53 20       	JUMP.S 0xffa01ee2 <_bfin_EMAC_send+0xfa>;
ffa01e3e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90050c */
ffa01e42:	0c e1 28 0c 	P4.L = 0xc28;		/* (3112)	P4=0xff900c28 <_txIdx> */
ffa01e46:	20 95       	R0 = W[P4] (Z);
ffa01e48:	10 32       	P2 = R0;
ffa01e4a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c50 <_NetOurMAC> */
ffa01e4e:	0d e1 2c 0c 	P5.L = 0xc2c;		/* (3116)	P5=0xff900c2c <_txbuf> */
ffa01e52:	0b 30       	R1 = R3;
ffa01e54:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01e56:	52 91       	P2 = [P2];
ffa01e58:	92 ad       	P2 = [P2 + 0x18];
ffa01e5a:	12 96       	W[P2++] = R2;
ffa01e5c:	42 30       	R0 = P2;
ffa01e5e:	ff e3 f9 f6 	CALL 0xffa00c50 <_memcpy_>;
ffa01e62:	20 95       	R0 = W[P4] (Z);
ffa01e64:	10 32       	P2 = R0;
ffa01e66:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01e68:	51 91       	P1 = [P2];
ffa01e6a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01e6e:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01e72:	51 93       	[P2] = P1;
ffa01e74:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01e78:	88 a1       	R0 = [P1 + 0x18];
ffa01e7a:	0a e1 9e 04 	P2.L = 0x49e;		/* (1182)	P2=0xff90049e <_txdmacfg> */
ffa01e7e:	48 b0       	[P1 + 0x4] = R0;
ffa01e80:	50 95       	R0 = W[P2] (X);
ffa01e82:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0049e(-4193122) */
ffa01e86:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01e8a:	10 97       	W[P2] = R0;
ffa01e8c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01e90:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01e94:	10 91       	R0 = [P2];
ffa01e96:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01e98:	10 93       	[P2] = R0;
ffa01e9a:	88 a2       	R0 = [P1 + 0x28];
ffa01e9c:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01e9e:	13 10       	IF !CC JUMP 0xffa01ec4 <_bfin_EMAC_send+0xdc>;
ffa01ea0:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa01ea4:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa01ea8:	b2 e0 05 20 	LSETUP(0xffa01eac <_bfin_EMAC_send+0xc4>, 0xffa01eb2 <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa01eac:	88 a2       	R0 = [P1 + 0x28];
ffa01eae:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01eb0:	0a 10       	IF !CC JUMP 0xffa01ec4 <_bfin_EMAC_send+0xdc>;
ffa01eb2:	00 00       	NOP;
ffa01eb4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001ec(-7339540) */
ffa01eb8:	00 e1 04 02 	R0.L = 0x204;		/* (516)	R0=0xff900204(-7339516) */
ffa01ebc:	ff e3 22 f5 	CALL 0xffa00900 <_printf_str>;
ffa01ec0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01ec2:	10 20       	JUMP.S 0xffa01ee2 <_bfin_EMAC_send+0xfa>;
ffa01ec4:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa01ec8:	61 95 00 00 
ffa01ecc:	8a a2       	R2 = [P1 + 0x28];
ffa01ece:	88 b2       	[P1 + 0x28] = R0;
ffa01ed0:	c8 42       	R0 = R1.L (Z);
ffa01ed2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa01ed6:	10 0d       	CC = R0 <= 0x2;
ffa01ed8:	0a e1 28 0c 	P2.L = 0xc28;		/* (3112)	P2=0xff900c28 <_txIdx> */
ffa01edc:	14 1c       	IF CC JUMP 0xffa01f04 <_bfin_EMAC_send+0x11c> (BP);
ffa01ede:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ee0:	10 97       	W[P2] = R0;
ffa01ee2:	01 e8 00 00 	UNLINK;
ffa01ee6:	02 30       	R0 = R2;
ffa01ee8:	84 04       	(P5:4) = [SP++];
ffa01eea:	10 00       	RTS;
ffa01eec:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01ef0:	00 e1 a0 01 	R0.L = 0x1a0;		/* (416)	R0=0xff9001a0(-7339616) */
ffa01ef4:	ff e3 06 f5 	CALL 0xffa00900 <_printf_str>;
ffa01ef8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01efa:	01 e8 00 00 	UNLINK;
ffa01efe:	02 30       	R0 = R2;
ffa01f00:	84 04       	(P5:4) = [SP++];
ffa01f02:	10 00       	RTS;
ffa01f04:	01 30       	R0 = R1;
ffa01f06:	08 64       	R0 += 0x1;		/* (  1) */
ffa01f08:	10 97       	W[P2] = R0;
ffa01f0a:	01 e8 00 00 	UNLINK;
ffa01f0e:	02 30       	R0 = R2;
ffa01f10:	84 04       	(P5:4) = [SP++];
ffa01f12:	10 00       	RTS;
ffa01f14:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001a0(-7339616) */
ffa01f18:	00 e1 d0 01 	R0.L = 0x1d0;		/* (464)	R0=0xff9001d0(-7339568) */
ffa01f1c:	ff e3 b4 f5 	CALL 0xffa00a84 <_printf_int>;
ffa01f20:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01f22:	01 e8 00 00 	UNLINK;
ffa01f26:	02 30       	R0 = R2;
ffa01f28:	84 04       	(P5:4) = [SP++];
ffa01f2a:	10 00       	RTS;

ffa01f2c <_ether_testUDP>:
ffa01f2c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01f2e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c28 <_txIdx> */
ffa01f32:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01f36:	0a e1 28 0c 	P2.L = 0xc28;		/* (3112)	P2=0xff900c28 <_txIdx> */
ffa01f3a:	11 95       	R1 = W[P2] (Z);
ffa01f3c:	11 32       	P2 = R1;
ffa01f3e:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01f42:	09 e1 2c 0c 	P1.L = 0xc2c;		/* (3116)	P1=0xff900c2c <_txbuf> */
ffa01f46:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa01f4a:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01f4c:	52 91       	P2 = [P2];
ffa01f4e:	95 ad       	P5 = [P2 + 0x18];
ffa01f50:	55 32       	P2 = P5;
ffa01f52:	11 96       	W[P2++] = R1;
ffa01f54:	4a 30       	R1 = P2;
ffa01f56:	00 e3 4d 08 	CALL 0xffa02ff0 <_ARP_req>;
ffa01f5a:	00 0c       	CC = R0 == 0x0;
ffa01f5c:	7f 18       	IF CC JUMP 0xffa0205a <_ether_testUDP+0x12e>;
ffa01f5e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c28 <_txIdx> */
ffa01f62:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_NetOurMAC> */
ffa01f66:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01f68:	50 99       	R0 = B[P2] (X);
ffa01f6a:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01f6e:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa01f72:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01f76:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa01f7a:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa01f7e:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa01f82:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa01f86:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa01f8a:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01f8e:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa01f92:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa01f96:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01f9a:	ff e3 1f fc 	CALL 0xffa017d8 <_htons>;
ffa01f9e:	e8 b5       	W[P5 + 0xe] = R0;
ffa01fa0:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01fa4:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa01fa8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01faa:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa01fae:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa01fb0:	ff e3 14 fc 	CALL 0xffa017d8 <_htons>;
ffa01fb4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_NetOurMAC> */
ffa01fb8:	0a e1 2a 0c 	P2.L = 0xc2a;		/* (3114)	P2=0xff900c2a <_NetIPID> */
ffa01fbc:	68 b6       	W[P5 + 0x12] = R0;
ffa01fbe:	10 95       	R0 = W[P2] (Z);
ffa01fc0:	08 30       	R1 = R0;
ffa01fc2:	09 64       	R1 += 0x1;		/* (  1) */
ffa01fc4:	11 97       	W[P2] = R1;
ffa01fc6:	ff e3 09 fc 	CALL 0xffa017d8 <_htons>;
ffa01fca:	a8 b6       	W[P5 + 0x14] = R0;
ffa01fcc:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01fd0:	ff e3 04 fc 	CALL 0xffa017d8 <_htons>;
ffa01fd4:	e8 b6       	W[P5 + 0x16] = R0;
ffa01fd6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01fd8:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa01fdc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2a <_NetIPID> */
ffa01fe0:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01fe2:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa01fe6:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetOurIP> */
ffa01fea:	10 91       	R0 = [P2];
ffa01fec:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_NetOurIP> */
ffa01ff0:	0a e1 20 0c 	P2.L = 0xc20;		/* (3104)	P2=0xff900c20 <_NetDestIP> */
ffa01ff4:	e8 b1       	[P5 + 0x1c] = R0;
ffa01ff6:	10 91       	R0 = [P2];
ffa01ff8:	28 b2       	[P5 + 0x20] = R0;
ffa01ffa:	45 30       	R0 = P5;
ffa01ffc:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01ffe:	6f b7       	W[P5 + 0x1a] = R7;
ffa02000:	80 64       	R0 += 0x10;		/* ( 16) */
ffa02002:	ff e3 d3 fb 	CALL 0xffa017a8 <_NetCksum>;
ffa02006:	c0 43       	R0 =~ R0;
ffa02008:	68 b7       	W[P5 + 0x1a] = R0;
ffa0200a:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa0200e:	ff e3 e5 fb 	CALL 0xffa017d8 <_htons>;
ffa02012:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa02016:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa0201a:	ff e3 df fb 	CALL 0xffa017d8 <_htons>;
ffa0201e:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa02022:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa02024:	ff e3 da fb 	CALL 0xffa017d8 <_htons>;
ffa02028:	55 32       	P2 = P5;
ffa0202a:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa0202e:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa02032:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa02034:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02036:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa02038:	b2 e0 03 10 	LSETUP(0xffa0203c <_ether_testUDP+0x110>, 0xffa0203e <_ether_testUDP+0x112>) LC1 = P1;
ffa0203c:	11 9a       	B[P2++] = R1;
ffa0203e:	09 64       	R1 += 0x1;		/* (  1) */
ffa02040:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa02044:	00 e1 18 02 	R0.L = 0x218;		/* (536)	R0=0xff900218(-7339496) */
ffa02048:	ff e3 5c f4 	CALL 0xffa00900 <_printf_str>;
ffa0204c:	ff e3 70 fd 	CALL 0xffa01b2c <_bfin_EMAC_send_nocopy>;
ffa02050:	01 e8 00 00 	UNLINK;
ffa02054:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02056:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02058:	10 00       	RTS;
ffa0205a:	01 e8 00 00 	UNLINK;
ffa0205e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02060:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02062:	10 00       	RTS;

ffa02064 <_eth_header_setup>:
ffa02064:	c4 04       	[--SP] = (P5:4);
ffa02066:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c20 <_NetDestIP> */
ffa0206a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0206e:	0a e1 28 0c 	P2.L = 0xc28;		/* (3112)	P2=0xff900c28 <_txIdx> */
ffa02072:	00 32       	P0 = R0;
ffa02074:	10 95       	R0 = W[P2] (Z);
ffa02076:	10 32       	P2 = R0;
ffa02078:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa0207c:	09 e1 2c 0c 	P1.L = 0xc2c;		/* (3116)	P1=0xff900c2c <_txbuf> */
ffa02080:	00 91       	R0 = [P0];
ffa02082:	21 32       	P4 = R1;
ffa02084:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02086:	52 91       	P2 = [P2];
ffa02088:	08 30       	R1 = R0;
ffa0208a:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa0208c:	80 67       	R0 += -0x10;		/* (-16) */
ffa0208e:	95 ad       	P5 = [P2 + 0x18];
ffa02090:	00 93       	[P0] = R0;
ffa02092:	02 30       	R0 = R2;
ffa02094:	55 32       	P2 = P5;
ffa02096:	11 96       	W[P2++] = R1;
ffa02098:	4a 30       	R1 = P2;
ffa0209a:	00 e3 ab 07 	CALL 0xffa02ff0 <_ARP_req>;
ffa0209e:	00 0c       	CC = R0 == 0x0;
ffa020a0:	2b 18       	IF CC JUMP 0xffa020f6 <_eth_header_setup+0x92>;
ffa020a2:	00 00       	NOP;
ffa020a4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c28 <_txIdx> */
ffa020a8:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_NetOurMAC> */
ffa020ac:	50 99       	R0 = B[P2] (X);
ffa020ae:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa020b2:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa020b6:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa020ba:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa020be:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa020c2:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa020c6:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa020ca:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa020ce:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa020d2:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa020d6:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa020da:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa020de:	ff e3 7d fb 	CALL 0xffa017d8 <_htons>;
ffa020e2:	e8 b5       	W[P5 + 0xe] = R0;
ffa020e4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa020e6:	20 9b       	B[P4] = R0;
ffa020e8:	4d 30       	R1 = P5;
ffa020ea:	81 64       	R1 += 0x10;		/* ( 16) */
ffa020ec:	01 e8 00 00 	UNLINK;
ffa020f0:	01 30       	R0 = R1;
ffa020f2:	84 04       	(P5:4) = [SP++];
ffa020f4:	10 00       	RTS;
ffa020f6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa020f8:	20 9b       	B[P4] = R0;
ffa020fa:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa020fc:	01 e8 00 00 	UNLINK;
ffa02100:	01 30       	R0 = R1;
ffa02102:	84 04       	(P5:4) = [SP++];
ffa02104:	10 00       	RTS;
	...

ffa02108 <_icmp_packet_setup>:
ffa02108:	e4 05       	[--SP] = (R7:4, P5:4);
ffa0210a:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0210e:	29 32       	P5 = R1;
ffa02110:	7f 30       	R7 = FP;
ffa02112:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02114:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02116:	f0 bb       	[FP -0x4] = R0;
ffa02118:	07 30       	R0 = R7;
ffa0211a:	22 32       	P4 = R2;
ffa0211c:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa02120:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa02124:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa02128:	ff e3 9e ff 	CALL 0xffa02064 <_eth_header_setup>;
ffa0212c:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa02130:	68 99 00 00 
ffa02134:	80 0c       	CC = R0 < 0x0;
ffa02136:	14 18       	IF CC JUMP 0xffa0215e <_icmp_packet_setup+0x56>;
ffa02138:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0213a:	f0 b0       	[SP + 0xc] = R0;
ffa0213c:	54 30       	R2 = P4;
ffa0213e:	01 30       	R0 = R1;
ffa02140:	0f 30       	R1 = R7;
ffa02142:	ff e3 7f fb 	CALL 0xffa01840 <_ip_header_setup>;
ffa02146:	e9 42       	R1 = R5.L (Z);
ffa02148:	f1 b0       	[SP + 0xc] = R1;
ffa0214a:	e1 42       	R1 = R4.L (Z);
ffa0214c:	31 b1       	[SP + 0x10] = R1;
ffa0214e:	72 43       	R2 = R6.B (Z);
ffa02150:	0f 30       	R1 = R7;
ffa02152:	ff e3 c1 fb 	CALL 0xffa018d4 <_icmp_header_setup>;
ffa02156:	01 e8 00 00 	UNLINK;
ffa0215a:	a4 05       	(R7:4, P5:4) = [SP++];
ffa0215c:	10 00       	RTS;
ffa0215e:	01 e8 00 00 	UNLINK;
ffa02162:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02164:	a4 05       	(R7:4, P5:4) = [SP++];
ffa02166:	10 00       	RTS;

ffa02168 <_icmp_rx>:
ffa02168:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0216a:	28 32       	P5 = R0;
ffa0216c:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02170:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02174:	39 30       	R7 = R1;
ffa02176:	ff e3 31 fb 	CALL 0xffa017d8 <_htons>;
ffa0217a:	c0 42       	R0 = R0.L (Z);
ffa0217c:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa0217e:	01 08       	CC = R1 == R0;
ffa02180:	06 18       	IF CC JUMP 0xffa0218c <_icmp_rx+0x24>;
ffa02182:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02184:	01 e8 00 00 	UNLINK;
ffa02188:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0218a:	10 00       	RTS;
ffa0218c:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa0218e:	07 0a       	CC = R7 <= R0 (IU);
ffa02190:	f9 1b       	IF CC JUMP 0xffa02182 <_icmp_rx+0x1a>;
ffa02192:	00 00       	NOP;
ffa02194:	00 00       	NOP;
ffa02196:	00 00       	NOP;
ffa02198:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa0219c:	08 0c       	CC = R0 == 0x1;
ffa0219e:	f2 17       	IF !CC JUMP 0xffa02182 <_icmp_rx+0x1a> (BP);
ffa021a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_NetOurMAC> */
ffa021a4:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetOurIP> */
ffa021a8:	28 a2       	R0 = [P5 + 0x20];
ffa021aa:	11 91       	R1 = [P2];
ffa021ac:	08 08       	CC = R0 == R1;
ffa021ae:	ea 17       	IF !CC JUMP 0xffa02182 <_icmp_rx+0x1a> (BP);
ffa021b0:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa021b4:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa021b8:	08 08       	CC = R0 == R1;
ffa021ba:	3e 18       	IF CC JUMP 0xffa02236 <_icmp_rx+0xce>;
ffa021bc:	00 00       	NOP;
ffa021be:	00 00       	NOP;
ffa021c0:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa021c2:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa021c6:	08 08       	CC = R0 == R1;
ffa021c8:	dd 17       	IF !CC JUMP 0xffa02182 <_icmp_rx+0x1a> (BP);
ffa021ca:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa021ce:	e9 a1       	R1 = [P5 + 0x1c];
ffa021d0:	00 e1 30 02 	R0.L = 0x230;		/* (560)	R0=0xff900230(-7339472) */
ffa021d4:	ff e3 fa f4 	CALL 0xffa00bc8 <_printf_ip>;
ffa021d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_NetOurIP> */
ffa021dc:	0a e1 20 0c 	P2.L = 0xc20;		/* (3104)	P2=0xff900c20 <_NetDestIP> */
ffa021e0:	e8 a1       	R0 = [P5 + 0x1c];
ffa021e2:	4d 30       	R1 = P5;
ffa021e4:	10 93       	[P2] = R0;
ffa021e6:	41 64       	R1 += 0x8;		/* (  8) */
ffa021e8:	00 e3 06 05 	CALL 0xffa02bf4 <_ARP_lut_add>;
ffa021ec:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900230(-7339472) */
ffa021f0:	00 e1 68 0a 	R0.L = 0xa68;		/* (2664)	R0=0xff900a68(-7337368) */
ffa021f4:	ff e3 86 f3 	CALL 0xffa00900 <_printf_str>;
ffa021f8:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa021fc:	ea a1 00 00 
ffa02200:	f0 b0       	[SP + 0xc] = R0;
ffa02202:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa02206:	30 b1       	[SP + 0x10] = R0;
ffa02208:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa0220a:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa0220e:	4f 30       	R1 = FP;
ffa02210:	70 b1       	[SP + 0x14] = R0;
ffa02212:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa02214:	07 30       	R0 = R7;
ffa02216:	ff e3 79 ff 	CALL 0xffa02108 <_icmp_packet_setup>;
ffa0221a:	08 30       	R1 = R0;
ffa0221c:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa02220:	00 0d       	CC = R0 <= 0x0;
ffa02222:	b0 1b       	IF CC JUMP 0xffa02182 <_icmp_rx+0x1a>;
ffa02224:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa02226:	45 30       	R0 = P5;
ffa02228:	17 30       	R2 = R7;
ffa0222a:	ff e3 13 f5 	CALL 0xffa00c50 <_memcpy_>;
ffa0222e:	ff e3 7f fc 	CALL 0xffa01b2c <_bfin_EMAC_send_nocopy>;
ffa02232:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02234:	a8 2f       	JUMP.S 0xffa02184 <_icmp_rx+0x1c>;
ffa02236:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c20 <_NetDestIP> */
ffa0223a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0223c:	0a e1 b4 0b 	P2.L = 0xbb4;		/* (2996)	P2=0xff900bb4 <_g_streamEnabled> */
ffa02240:	10 9b       	B[P2] = R0;
ffa02242:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02244:	a0 2f       	JUMP.S 0xffa02184 <_icmp_rx+0x1c>;
	...

ffa02248 <_udp_packet_setup>:
ffa02248:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0224a:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0224e:	29 32       	P5 = R1;
ffa02250:	7f 30       	R7 = FP;
ffa02252:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c28 <_txIdx> */
ffa02256:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02258:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0225a:	0c e1 60 0c 	P4.L = 0xc60;		/* (3168)	P4=0xff900c60 <_NetDataDestIP> */
ffa0225e:	f0 bb       	[FP -0x4] = R0;
ffa02260:	22 91       	R2 = [P4];
ffa02262:	07 30       	R0 = R7;
ffa02264:	ff e3 00 ff 	CALL 0xffa02064 <_eth_header_setup>;
ffa02268:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa0226c:	68 99 00 00 
ffa02270:	80 0c       	CC = R0 < 0x0;
ffa02272:	14 18       	IF CC JUMP 0xffa0229a <_udp_packet_setup+0x52>;
ffa02274:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa02276:	f0 b0       	[SP + 0xc] = R0;
ffa02278:	01 30       	R0 = R1;
ffa0227a:	22 91       	R2 = [P4];
ffa0227c:	0f 30       	R1 = R7;
ffa0227e:	ff e3 e1 fa 	CALL 0xffa01840 <_ip_header_setup>;
ffa02282:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa02286:	f1 b0       	[SP + 0xc] = R1;
ffa02288:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa0228c:	0f 30       	R1 = R7;
ffa0228e:	ff e3 47 fb 	CALL 0xffa0191c <_udp_header_setup>;
ffa02292:	01 e8 00 00 	UNLINK;
ffa02296:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02298:	10 00       	RTS;
ffa0229a:	01 e8 00 00 	UNLINK;
ffa0229e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa022a0:	bc 05       	(R7:7, P5:4) = [SP++];
ffa022a2:	10 00       	RTS;

ffa022a4 <_SetupTxBuffer>:
ffa022a4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa022a6:	38 30       	R7 = R0;
ffa022a8:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa022ac:	c7 40       	R7 *= R0;
ffa022ae:	17 32       	P2 = R7;
ffa022b0:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800c2c */
ffa022b4:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa022b8:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa022bc:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa022c0:	6a 5b       	P5 = P2 + P5;
ffa022c2:	c7 51       	R7 = R7 + R0;
ffa022c4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa022c8:	45 30       	R0 = P5;
ffa022ca:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa022cc:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa022ce:	ff e3 d1 f4 	CALL 0xffa00c70 <_memset_>;
ffa022d2:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa022d6:	af b1 00 00 
ffa022da:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa022de:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa022e2:	ff e3 c7 f4 	CALL 0xffa00c70 <_memset_>;
ffa022e6:	45 30       	R0 = P5;
ffa022e8:	60 64       	R0 += 0xc;		/* ( 12) */
ffa022ea:	28 93       	[P5] = R0;
ffa022ec:	a8 a1       	R0 = [P5 + 0x18];
ffa022ee:	68 b0       	[P5 + 0x4] = R0;
ffa022f0:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa022f4:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa022f6:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa022f8:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa022fa:	10 54       	R0 = R0 & R2;
ffa022fc:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa022fe:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02302:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa02304:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa02308:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0230a:	18 54       	R0 = R0 & R3;
ffa0230c:	08 56       	R0 = R0 | R1;
ffa0230e:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa02312:	08 56       	R0 = R0 | R1;
ffa02314:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02318:	45 30       	R0 = P5;
ffa0231a:	40 65       	R0 += 0x28;		/* ( 40) */
ffa0231c:	28 b1       	[P5 + 0x10] = R0;
ffa0231e:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa02322:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02324:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02326:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa0232a:	10 54       	R0 = R0 & R2;
ffa0232c:	08 56       	R0 = R0 | R1;
ffa0232e:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa02332:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa02336:	18 54       	R0 = R0 & R3;
ffa02338:	39 64       	R1 += 0x7;		/* (  7) */
ffa0233a:	08 54       	R0 = R0 & R1;
ffa0233c:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02340:	ed bc       	[P5 + 0xc] = P5;
ffa02342:	01 e8 00 00 	UNLINK;
ffa02346:	45 30       	R0 = P5;
ffa02348:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0234a:	10 00       	RTS;

ffa0234c <_SetupRxBuffer>:
ffa0234c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0234e:	38 30       	R7 = R0;
ffa02350:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02354:	c7 40       	R7 *= R0;
ffa02356:	17 32       	P2 = R7;
ffa02358:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa0235c:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa02360:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02364:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa02368:	6a 5b       	P5 = P2 + P5;
ffa0236a:	c7 51       	R7 = R7 + R0;
ffa0236c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02370:	45 30       	R0 = P5;
ffa02372:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02374:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa02376:	ff e3 7d f4 	CALL 0xffa00c70 <_memset_>;
ffa0237a:	af b1       	[P5 + 0x18] = R7;
ffa0237c:	07 30       	R0 = R7;
ffa0237e:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa02382:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02386:	ff e3 75 f4 	CALL 0xffa00c70 <_memset_>;
ffa0238a:	45 30       	R0 = P5;
ffa0238c:	60 64       	R0 += 0xc;		/* ( 12) */
ffa0238e:	28 93       	[P5] = R0;
ffa02390:	a8 a1       	R0 = [P5 + 0x18];
ffa02392:	68 b0       	[P5 + 0x4] = R0;
ffa02394:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa02398:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0239a:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa0239c:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0239e:	08 54       	R0 = R0 & R1;
ffa023a0:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa023a2:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa023a6:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa023a8:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa023ac:	38 54       	R0 = R0 & R7;
ffa023ae:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa023b0:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa023b4:	18 56       	R0 = R0 | R3;
ffa023b6:	10 56       	R0 = R0 | R2;
ffa023b8:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa023bc:	45 30       	R0 = P5;
ffa023be:	20 65       	R0 += 0x24;		/* ( 36) */
ffa023c0:	28 b1       	[P5 + 0x10] = R0;
ffa023c2:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa023c6:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa023c8:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa023ca:	08 54       	R0 = R0 & R1;
ffa023cc:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa023d0:	08 56       	R0 = R0 | R1;
ffa023d2:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa023d6:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa023da:	38 54       	R0 = R0 & R7;
ffa023dc:	18 56       	R0 = R0 | R3;
ffa023de:	10 56       	R0 = R0 | R2;
ffa023e0:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa023e4:	ed bc       	[P5 + 0xc] = P5;
ffa023e6:	01 e8 00 00 	UNLINK;
ffa023ea:	45 30       	R0 = P5;
ffa023ec:	bd 05       	(R7:7, P5:5) = [SP++];
ffa023ee:	10 00       	RTS;

ffa023f0 <_SetupSystemRegs>:
ffa023f0:	f5 05       	[--SP] = (R7:6, P5:5);
ffa023f2:	28 32       	P5 = R0;
ffa023f4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa023f8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa023fc:	00 e1 4c 02 	R0.L = 0x24c;		/* (588)	R0=0xff90024c(-7339444) */
ffa02400:	ff e3 80 f2 	CALL 0xffa00900 <_printf_str>;
ffa02404:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bb4(-4191308) */
ffa02408:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa0240c:	50 95       	R0 = W[P2] (X);
ffa0240e:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa02412:	08 54       	R0 = R0 & R1;
ffa02414:	10 97       	W[P2] = R0;
ffa02416:	50 95       	R0 = W[P2] (X);
ffa02418:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa0241a:	10 97       	W[P2] = R0;
ffa0241c:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0241e:	51 95       	R1 = W[P2] (X);
ffa02420:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa02424:	08 56       	R0 = R0 | R1;
ffa02426:	10 97       	W[P2] = R0;
ffa02428:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0242a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0242c:	10 97       	W[P2] = R0;
ffa0242e:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa02430:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa02432:	10 97       	W[P2] = R0;
ffa02434:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa02438:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa0243c:	50 95       	R0 = W[P2] (X);
ffa0243e:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa02440:	10 97       	W[P2] = R0;
ffa02442:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa02446:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa0244a:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa0244e:	10 93       	[P2] = R0;
ffa02450:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02452:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa02456:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02458:	ff e3 4c f9 	CALL 0xffa016f0 <_WrPHYReg>;
ffa0245c:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02460:	ff e3 e6 f5 	CALL 0xffa0102c <_udelay>;
ffa02464:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02466:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02468:	ff e3 60 f9 	CALL 0xffa01728 <_RdPHYReg>;
ffa0246c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0246e:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa02470:	0e 20       	JUMP.S 0xffa0248c <_SetupSystemRegs+0x9c>;
ffa02472:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02476:	ff e3 db f5 	CALL 0xffa0102c <_udelay>;
ffa0247a:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0247c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0247e:	ff e3 55 f9 	CALL 0xffa01728 <_RdPHYReg>;
ffa02482:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02484:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa02488:	0f 08       	CC = R7 == R1;
ffa0248a:	35 18       	IF CC JUMP 0xffa024f4 <_SetupSystemRegs+0x104>;
ffa0248c:	06 54       	R0 = R6 & R0;
ffa0248e:	00 0c       	CC = R0 == 0x0;
ffa02490:	f1 1f       	IF CC JUMP 0xffa02472 <_SetupSystemRegs+0x82> (BP);
ffa02492:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa02494:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02496:	ff e3 49 f9 	CALL 0xffa01728 <_RdPHYReg>;
ffa0249a:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa0249e:	01 54       	R0 = R1 & R0;
ffa024a0:	00 0c       	CC = R0 == 0x0;
ffa024a2:	27 1c       	IF CC JUMP 0xffa024f0 <_SetupSystemRegs+0x100> (BP);
ffa024a4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa024a6:	d0 4f       	R0 <<= 0x1a;
ffa024a8:	28 93       	[P5] = R0;
ffa024aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa024ae:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa024b0:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa024b4:	10 93       	[P2] = R0;
ffa024b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa024ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024bc:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa024c0:	10 97       	W[P2] = R0;
ffa024c2:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa024c4:	22 6c       	P2 += 0x4;		/* (  4) */
ffa024c6:	11 97       	W[P2] = R1;
ffa024c8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa024ca:	10 97       	W[P2] = R0;
ffa024cc:	22 6c       	P2 += 0x4;		/* (  4) */
ffa024ce:	10 97       	W[P2] = R0;
ffa024d0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa024d4:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa024d8:	10 97       	W[P2] = R0;
ffa024da:	22 6c       	P2 += 0x4;		/* (  4) */
ffa024dc:	11 97       	W[P2] = R1;
ffa024de:	22 6c       	P2 += 0x4;		/* (  4) */
ffa024e0:	10 97       	W[P2] = R0;
ffa024e2:	22 6c       	P2 += 0x4;		/* (  4) */
ffa024e4:	10 97       	W[P2] = R0;
ffa024e6:	01 e8 00 00 	UNLINK;
ffa024ea:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024ec:	b5 05       	(R7:6, P5:5) = [SP++];
ffa024ee:	10 00       	RTS;
ffa024f0:	28 93       	[P5] = R0;
ffa024f2:	dc 2f       	JUMP.S 0xffa024aa <_SetupSystemRegs+0xba>;
ffa024f4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa024f8:	00 e1 64 02 	R0.L = 0x264;		/* (612)	R0=0xff900264(-7339420) */
ffa024fc:	ff e3 02 f2 	CALL 0xffa00900 <_printf_str>;
ffa02500:	01 e8 00 00 	UNLINK;
ffa02504:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02506:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02508:	10 00       	RTS;
	...

ffa0250c <_SetupMacAddr>:
ffa0250c:	10 32       	P2 = R0;
ffa0250e:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02510:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02512:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02516:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa0251a:	10 9b       	B[P2] = R0;
ffa0251c:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa0251e:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa02522:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa02524:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa02528:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa0252a:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa0252e:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa02532:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02536:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa02538:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa0253c:	10 99       	R0 = B[P2] (Z);
ffa0253e:	08 56       	R0 = R0 | R1;
ffa02540:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa02544:	89 4f       	R1 <<= 0x11;
ffa02546:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c2c(-4191188) */
ffa0254a:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa0254e:	08 56       	R0 = R0 | R1;
ffa02550:	08 93       	[P1] = R0;
ffa02552:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02556:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa0255a:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa0255e:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa02560:	28 93       	[P5] = R0;
ffa02562:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa02566:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa0256a:	09 91       	R1 = [P1];
ffa0256c:	07 e1 68 0a 	R7.L = 0xa68;		/* (2664)	R7=0xff900a68(-7337368) */
ffa02570:	00 e1 98 02 	R0.L = 0x298;		/* (664)	R0=0xff900298(-7339368) */
ffa02574:	ff e3 2c f2 	CALL 0xffa009cc <_printf_hex>;
ffa02578:	07 30       	R0 = R7;
ffa0257a:	ff e3 c3 f1 	CALL 0xffa00900 <_printf_str>;
ffa0257e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900298(-7339368) */
ffa02582:	29 91       	R1 = [P5];
ffa02584:	00 e1 a4 02 	R0.L = 0x2a4;		/* (676)	R0=0xff9002a4(-7339356) */
ffa02588:	ff e3 22 f2 	CALL 0xffa009cc <_printf_hex>;
ffa0258c:	01 e8 00 00 	UNLINK;
ffa02590:	07 30       	R0 = R7;
ffa02592:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02594:	ff e2 b6 f1 	JUMP.L 0xffa00900 <_printf_str>;

ffa02598 <_bfin_EMAC_init>:
ffa02598:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0259a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002a4(-7339356) */
ffa0259e:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa025a2:	00 e1 b0 02 	R0.L = 0x2b0;		/* (688)	R0=0xff9002b0(-7339344) */
ffa025a6:	ff e3 ad f1 	CALL 0xffa00900 <_printf_str>;
ffa025aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_NetOurMAC> */
ffa025ae:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa025b0:	0a e1 28 0c 	P2.L = 0xc28;		/* (3112)	P2=0xff900c28 <_txIdx> */
ffa025b4:	16 97       	W[P2] = R6;
ffa025b6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c28 <_txIdx> */
ffa025ba:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_rxIdx> */
ffa025be:	16 97       	W[P2] = R6;
ffa025c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_rxIdx> */
ffa025c4:	0a e1 2a 0c 	P2.L = 0xc2a;		/* (3114)	P2=0xff900c2a <_NetIPID> */
ffa025c8:	16 97       	W[P2] = R6;
ffa025ca:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2a <_NetIPID> */
ffa025ce:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa025d0:	0a e1 58 0c 	P2.L = 0xc58;		/* (3160)	P2=0xff900c58 <_NetSubnetMask> */
ffa025d4:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa025d6:	17 93       	[P2] = R7;
ffa025d8:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa025dc:	f0 b0       	[SP + 0xc] = R0;
ffa025de:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa025e0:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa025e4:	ff e3 50 f8 	CALL 0xffa01684 <_FormatIPAddress>;
ffa025e8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c58 <_NetSubnetMask> */
ffa025ec:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetOurIP> */
ffa025f0:	10 93       	[P2] = R0;
ffa025f2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa025f4:	f0 b0       	[SP + 0xc] = R0;
ffa025f6:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa025fa:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa025fc:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02600:	ff e3 42 f8 	CALL 0xffa01684 <_FormatIPAddress>;
ffa02604:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_NetOurIP> */
ffa02608:	0a e1 20 0c 	P2.L = 0xc20;		/* (3104)	P2=0xff900c20 <_NetDestIP> */
ffa0260c:	10 93       	[P2] = R0;
ffa0260e:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa02610:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa02612:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa02616:	f0 b0       	[SP + 0xc] = R0;
ffa02618:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa0261c:	ff e3 34 f8 	CALL 0xffa01684 <_FormatIPAddress>;
ffa02620:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c20 <_NetDestIP> */
ffa02624:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetDataDestIP> */
ffa02628:	10 93       	[P2] = R0;
ffa0262a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetDataDestIP> */
ffa0262e:	0a e1 40 0d 	P2.L = 0xd40;		/* (3392)	P2=0xff900d40 <_TcpState> */
ffa02632:	17 93       	[P2] = R7;
ffa02634:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d40 <_TcpState> */
ffa02638:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqClient> */
ffa0263c:	17 93       	[P2] = R7;
ffa0263e:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa02642:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqClient> */
ffa02646:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa0264a:	0a e1 34 0d 	P2.L = 0xd34;		/* (3380)	P2=0xff900d34 <_TcpSeqHost> */
ffa0264e:	10 93       	[P2] = R0;
ffa02650:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d34 <_TcpSeqHost> */
ffa02654:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpClientPort> */
ffa02658:	16 97       	W[P2] = R6;
ffa0265a:	00 e3 7f 02 	CALL 0xffa02b58 <_ARP_init>;
ffa0265e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d4c(-4190900) */
ffa02662:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02666:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa0266a:	17 93       	[P2] = R7;
ffa0266c:	00 e1 50 0c 	R0.L = 0xc50;		/* (3152)	R0=0xff900c50 <_NetOurMAC>(-7336880) */
ffa02670:	ff e3 4e ff 	CALL 0xffa0250c <_SetupMacAddr>;
ffa02674:	47 30       	R0 = FP;
ffa02676:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa02678:	ff e3 bc fe 	CALL 0xffa023f0 <_SetupSystemRegs>;
ffa0267c:	80 0c       	CC = R0 < 0x0;
ffa0267e:	7a 18       	IF CC JUMP 0xffa02772 <_bfin_EMAC_init+0x1da>;
ffa02680:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa02684:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02686:	07 e1 40 0c 	R7.L = 0xc40;		/* (3136)	R7=0xff900c40 <_rxbuf>(-7336896) */
ffa0268a:	ff e3 61 fe 	CALL 0xffa0234c <_SetupRxBuffer>;
ffa0268e:	07 32       	P0 = R7;
ffa02690:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02692:	00 93       	[P0] = R0;
ffa02694:	17 32       	P2 = R7;
ffa02696:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa02698:	44 30       	R0 = P4;
ffa0269a:	ff e3 59 fe 	CALL 0xffa0234c <_SetupRxBuffer>;
ffa0269e:	44 0c       	CC = P4 == 0x0;
ffa026a0:	08 32       	P1 = R0;
ffa026a2:	28 92       	[P5++] = R0;
ffa026a4:	52 18       	IF CC JUMP 0xffa02748 <_bfin_EMAC_init+0x1b0>;
ffa026a6:	07 32       	P0 = R7;
ffa026a8:	5c 0c       	CC = P4 == 0x3;
ffa026aa:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa026ac:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa026b0:	d0 b0       	[P2 + 0xc] = R0;
ffa026b2:	54 18       	IF CC JUMP 0xffa0275a <_bfin_EMAC_init+0x1c2>;
ffa026b4:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa026b6:	5c 0d       	CC = P4 <= 0x3;
ffa026b8:	ee 1f       	IF CC JUMP 0xffa02694 <_bfin_EMAC_init+0xfc> (BP);
ffa026ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026bc:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bd8 <_printf_temp> */
ffa026c0:	ff e3 f2 fd 	CALL 0xffa022a4 <_SetupTxBuffer>;
ffa026c4:	0b e1 2c 0c 	P3.L = 0xc2c;		/* (3116)	P3=0xff900c2c <_txbuf> */
ffa026c8:	18 93       	[P3] = R0;
ffa026ca:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa026cc:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa026ce:	44 30       	R0 = P4;
ffa026d0:	ff e3 ea fd 	CALL 0xffa022a4 <_SetupTxBuffer>;
ffa026d4:	44 0c       	CC = P4 == 0x0;
ffa026d6:	08 32       	P1 = R0;
ffa026d8:	28 92       	[P5++] = R0;
ffa026da:	35 18       	IF CC JUMP 0xffa02744 <_bfin_EMAC_init+0x1ac>;
ffa026dc:	00 00       	NOP;
ffa026de:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa026e0:	5c 0c       	CC = P4 == 0x3;
ffa026e2:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa026e6:	d0 b0       	[P2 + 0xc] = R0;
ffa026e8:	32 18       	IF CC JUMP 0xffa0274c <_bfin_EMAC_init+0x1b4>;
ffa026ea:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa026ec:	5c 0d       	CC = P4 <= 0x3;
ffa026ee:	ef 1f       	IF CC JUMP 0xffa026cc <_bfin_EMAC_init+0x134> (BP);
ffa026f0:	17 32       	P2 = R7;
ffa026f2:	51 91       	P1 = [P2];
ffa026f4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa026f8:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa026fc:	51 93       	[P2] = P1;
ffa026fe:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa02700:	42 6c       	P2 += 0x8;		/* (  8) */
ffa02702:	10 97       	W[P2] = R0;
ffa02704:	ff e3 e8 f7 	CALL 0xffa016d4 <_PollMdcDone>;
ffa02708:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0270a:	f0 b9       	R0 = [FP -0x4];
ffa0270c:	d1 4f       	R1 <<= 0x1a;
ffa0270e:	08 08       	CC = R0 == R1;
ffa02710:	2c 18       	IF CC JUMP 0xffa02768 <_bfin_EMAC_init+0x1d0>;
ffa02712:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02716:	01 30       	R0 = R1;
ffa02718:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa0271c:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02720:	10 93       	[P2] = R0;
ffa02722:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02726:	00 e1 c0 02 	R0.L = 0x2c0;		/* (704)	R0=0xff9002c0(-7339328) */
ffa0272a:	ff e3 51 f1 	CALL 0xffa009cc <_printf_hex>;
ffa0272e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002c0(-7339328) */
ffa02732:	00 e1 68 0a 	R0.L = 0xa68;		/* (2664)	R0=0xff900a68(-7337368) */
ffa02736:	ff e3 e5 f0 	CALL 0xffa00900 <_printf_str>;
ffa0273a:	01 e8 00 00 	UNLINK;
ffa0273e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02740:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02742:	10 00       	RTS;
ffa02744:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02746:	c4 2f       	JUMP.S 0xffa026ce <_bfin_EMAC_init+0x136>;
ffa02748:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa0274a:	a7 2f       	JUMP.S 0xffa02698 <_bfin_EMAC_init+0x100>;
ffa0274c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa02750:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txbuf> */
ffa02754:	10 91       	R0 = [P2];
ffa02756:	c8 b0       	[P1 + 0xc] = R0;
ffa02758:	cc 2f       	JUMP.S 0xffa026f0 <_bfin_EMAC_init+0x158>;
ffa0275a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txbuf> */
ffa0275e:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_rxbuf> */
ffa02762:	10 91       	R0 = [P2];
ffa02764:	c8 b0       	[P1 + 0xc] = R0;
ffa02766:	aa 2f       	JUMP.S 0xffa026ba <_bfin_EMAC_init+0x122>;
ffa02768:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa0276c:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa0276e:	01 30       	R0 = R1;
ffa02770:	d4 2f       	JUMP.S 0xffa02718 <_bfin_EMAC_init+0x180>;
ffa02772:	01 e8 00 00 	UNLINK;
ffa02776:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02778:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0277a:	10 00       	RTS;

ffa0277c <_bfin_EMAC_recv_poll>:
ffa0277c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0277e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa02782:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa02786:	0d e1 40 0c 	P5.L = 0xc40;		/* (3136)	P5=0xff900c40 <_rxbuf> */
ffa0278a:	0c e1 3c 0c 	P4.L = 0xc3c;		/* (3132)	P4=0xff900c3c <_rxIdx> */
ffa0278e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02792:	28 30       	R5 = R0;
ffa02794:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02796:	75 30       	R6 = P5;
ffa02798:	5c 32       	P3 = P4;
ffa0279a:	06 20       	JUMP.S 0xffa027a6 <_bfin_EMAC_recv_poll+0x2a>;
ffa0279c:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0279e:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa027a2:	07 08       	CC = R7 == R0;
ffa027a4:	0c 18       	IF CC JUMP 0xffa027bc <_bfin_EMAC_recv_poll+0x40>;
ffa027a6:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa027aa:	ff e3 41 f4 	CALL 0xffa0102c <_udelay>;
ffa027ae:	20 95       	R0 = W[P4] (Z);
ffa027b0:	10 32       	P2 = R0;
ffa027b2:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa027b4:	52 91       	P2 = [P2];
ffa027b6:	90 a2       	R0 = [P2 + 0x28];
ffa027b8:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa027ba:	f1 1f       	IF CC JUMP 0xffa0279c <_bfin_EMAC_recv_poll+0x20> (BP);
ffa027bc:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa027c0:	91 a2       	R1 = [P2 + 0x28];
ffa027c2:	41 54       	R1 = R1 & R0;
ffa027c4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa027c6:	01 09       	CC = R1 <= R0;
ffa027c8:	07 10       	IF !CC JUMP 0xffa027d6 <_bfin_EMAC_recv_poll+0x5a>;
ffa027ca:	01 e8 00 00 	UNLINK;
ffa027ce:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa027d0:	07 30       	R0 = R7;
ffa027d2:	a3 05       	(R7:4, P5:3) = [SP++];
ffa027d4:	10 00       	RTS;
ffa027d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027d8:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa027dc:	90 b2 00 00 
ffa027e0:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa027e2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa027e6:	0f 30       	R1 = R7;
ffa027e8:	00 e1 cc 02 	R0.L = 0x2cc;		/* (716)	R0=0xff9002cc(-7339316) */
ffa027ec:	ff e3 4c f1 	CALL 0xffa00a84 <_printf_int>;
ffa027f0:	18 95       	R0 = W[P3] (Z);
ffa027f2:	10 32       	P2 = R0;
ffa027f4:	0e 32       	P1 = R6;
ffa027f6:	0f 30       	R1 = R7;
ffa027f8:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa027fa:	52 91       	P2 = [P2];
ffa027fc:	90 a1       	R0 = [P2 + 0x18];
ffa027fe:	15 32       	P2 = R5;
ffa02800:	10 93       	[P2] = R0;
ffa02802:	00 e3 5f 02 	CALL 0xffa02cc0 <_ARP_rx>;
ffa02806:	00 0c       	CC = R0 == 0x0;
ffa02808:	1f 18       	IF CC JUMP 0xffa02846 <_bfin_EMAC_recv_poll+0xca>;
ffa0280a:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa0280c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02810:	20 95       	R0 = W[P4] (Z);
ffa02812:	10 32       	P2 = R0;
ffa02814:	61 95       	R1 = W[P4] (X);
ffa02816:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02818:	09 e1 3c 0c 	P1.L = 0xc3c;		/* (3132)	P1=0xff900c3c <_rxIdx> */
ffa0281c:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa0281e:	52 91       	P2 = [P2];
ffa02820:	90 b2       	[P2 + 0x28] = R0;
ffa02822:	c8 42       	R0 = R1.L (Z);
ffa02824:	10 0d       	CC = R0 <= 0x2;
ffa02826:	08 1c       	IF CC JUMP 0xffa02836 <_bfin_EMAC_recv_poll+0xba> (BP);
ffa02828:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0282a:	08 97       	W[P1] = R0;
ffa0282c:	01 e8 00 00 	UNLINK;
ffa02830:	07 30       	R0 = R7;
ffa02832:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02834:	10 00       	RTS;
ffa02836:	01 30       	R0 = R1;
ffa02838:	08 64       	R0 += 0x1;		/* (  1) */
ffa0283a:	08 97       	W[P1] = R0;
ffa0283c:	01 e8 00 00 	UNLINK;
ffa02840:	07 30       	R0 = R7;
ffa02842:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02844:	10 00       	RTS;
ffa02846:	0d 32       	P1 = R5;
ffa02848:	0f 30       	R1 = R7;
ffa0284a:	08 91       	R0 = [P1];
ffa0284c:	ff e3 8e fc 	CALL 0xffa02168 <_icmp_rx>;
ffa02850:	00 0c       	CC = R0 == 0x0;
ffa02852:	dd 1f       	IF CC JUMP 0xffa0280c <_bfin_EMAC_recv_poll+0x90> (BP);
ffa02854:	db 2f       	JUMP.S 0xffa0280a <_bfin_EMAC_recv_poll+0x8e>;
	...

ffa02858 <_DHCP_rx>:
ffa02858:	ed 05       	[--SP] = (R7:5, P5:5);
ffa0285a:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0285e:	6f 30       	R5 = FP;
ffa02860:	e5 67       	R5 += -0x4;		/* ( -4) */
ffa02862:	01 20       	JUMP.S 0xffa02864 <_DHCP_rx+0xc>;
ffa02864:	05 30       	R0 = R5;
ffa02866:	ff e3 8b ff 	CALL 0xffa0277c <_bfin_EMAC_recv_poll>;
ffa0286a:	38 30       	R7 = R0;
ffa0286c:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa02870:	87 51       	R6 = R7 + R0;
ffa02872:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa02876:	00 e1 0c 03 	R0.L = 0x30c;		/* (780)	R0=0xff90030c(-7339252) */
ffa0287a:	0e 30       	R1 = R6;
ffa0287c:	ff e3 04 f1 	CALL 0xffa00a84 <_printf_int>;
ffa02880:	20 e1 1b 01 	R0 = 0x11b (X);		/*		R0=0x11b(283) */
ffa02884:	07 09       	CC = R7 <= R0;
ffa02886:	fd b9       	P5 = [FP -0x4];
ffa02888:	0c 18       	IF CC JUMP 0xffa028a0 <_DHCP_rx+0x48>;
ffa0288a:	00 00       	NOP;
ffa0288c:	00 00       	NOP;
ffa0288e:	00 00       	NOP;
ffa02890:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa02892:	ff e3 a3 f7 	CALL 0xffa017d8 <_htons>;
ffa02896:	c0 42       	R0 = R0.L (Z);
ffa02898:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa0289c:	08 08       	CC = R0 == R1;
ffa0289e:	08 18       	IF CC JUMP 0xffa028ae <_DHCP_rx+0x56>;
ffa028a0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011b(-7339749) */
ffa028a4:	00 e1 f0 02 	R0.L = 0x2f0;		/* (752)	R0=0xff9002f0(-7339280) */
ffa028a8:	ff e3 2c f0 	CALL 0xffa00900 <_printf_str>;
ffa028ac:	dc 2f       	JUMP.S 0xffa02864 <_DHCP_rx+0xc>;
ffa028ae:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa028b2:	ff e3 93 f7 	CALL 0xffa017d8 <_htons>;
ffa028b6:	c0 42       	R0 = R0.L (Z);
ffa028b8:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa028bc:	01 08       	CC = R1 == R0;
ffa028be:	d3 17       	IF !CC JUMP 0xffa02864 <_DHCP_rx+0xc> (BP);
ffa028c0:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa028c4:	ff e3 8a f7 	CALL 0xffa017d8 <_htons>;
ffa028c8:	c0 42       	R0 = R0.L (Z);
ffa028ca:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa028ce:	01 08       	CC = R1 == R0;
ffa028d0:	ca 17       	IF !CC JUMP 0xffa02864 <_DHCP_rx+0xc> (BP);
ffa028d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa028d6:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa028da:	11 91       	R1 = [P2];
ffa028dc:	28 a3       	R0 = [P5 + 0x30];
ffa028de:	08 08       	CC = R0 == R1;
ffa028e0:	c2 17       	IF !CC JUMP 0xffa02864 <_DHCP_rx+0xc> (BP);
ffa028e2:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa028e6:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa028ea:	ff e3 83 f7 	CALL 0xffa017f0 <_htonl>;
ffa028ee:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa028f2:	01 08       	CC = R1 == R0;
ffa028f4:	b8 17       	IF !CC JUMP 0xffa02864 <_DHCP_rx+0xc> (BP);
ffa028f6:	4d 30       	R1 = P5;
ffa028f8:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa028fc:	01 50       	R0 = R1 + R0;
ffa028fe:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa02902:	f0 bb 00 00 
ffa02906:	ff e3 59 f8 	CALL 0xffa019b8 <_DHCP_parse>;
ffa0290a:	e9 a3       	R1 = [P5 + 0x3c];
ffa0290c:	01 0c       	CC = R1 == 0x0;
ffa0290e:	12 1c       	IF CC JUMP 0xffa02932 <_DHCP_rx+0xda> (BP);
ffa02910:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa02914:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetOurIP> */
ffa02918:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa0291c:	11 93       	[P2] = R1;
ffa0291e:	00 e1 e0 02 	R0.L = 0x2e0;		/* (736)	R0=0xff9002e0(-7339296) */
ffa02922:	ff e3 53 f1 	CALL 0xffa00bc8 <_printf_ip>;
ffa02926:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002e0(-7339296) */
ffa0292a:	00 e1 68 0a 	R0.L = 0xa68;		/* (2664)	R0=0xff900a68(-7337368) */
ffa0292e:	ff e3 e9 ef 	CALL 0xffa00900 <_printf_str>;
ffa02932:	01 e8 00 00 	UNLINK;
ffa02936:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02938:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0293a:	10 00       	RTS;

ffa0293c <_DHCP_req>:
ffa0293c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0293e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c40 <_rxbuf> */
ffa02942:	0d e1 24 0c 	P5.L = 0xc24;		/* (3108)	P5=0xff900c24 <_NetDHCPserv> */
ffa02946:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02948:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0294c:	28 93       	[P5] = R0;
ffa0294e:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa02950:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa02954:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02956:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa0295a:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa0295e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02960:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02964:	7f 30       	R7 = FP;
ffa02966:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa0296a:	00 e1 20 03 	R0.L = 0x320;		/* (800)	R0=0xff900320(-7339232) */
ffa0296e:	a7 67       	R7 += -0xc;		/* (-12) */
ffa02970:	ff e3 c8 ef 	CALL 0xffa00900 <_printf_str>;
ffa02974:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa02978:	2a 91 00 00 
ffa0297c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0297e:	ff e3 45 f9 	CALL 0xffa01c08 <_DHCP_tx>;
ffa02982:	ff e3 6b ff 	CALL 0xffa02858 <_DHCP_rx>;
ffa02986:	29 91       	R1 = [P5];
ffa02988:	39 0c       	CC = R1 == -0x1;
ffa0298a:	43 18       	IF CC JUMP 0xffa02a10 <_DHCP_req+0xd4>;
ffa0298c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_NetOurIP> */
ffa02990:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetOurIP> */
ffa02994:	10 91       	R0 = [P2];
ffa02996:	00 0c       	CC = R0 == 0x0;
ffa02998:	08 18       	IF CC JUMP 0xffa029a8 <_DHCP_req+0x6c>;
ffa0299a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_NetOurIP> */
ffa0299e:	0a e1 58 0c 	P2.L = 0xc58;		/* (3160)	P2=0xff900c58 <_NetSubnetMask> */
ffa029a2:	10 91       	R0 = [P2];
ffa029a4:	00 0c       	CC = R0 == 0x0;
ffa029a6:	30 10       	IF !CC JUMP 0xffa02a06 <_DHCP_req+0xca>;
ffa029a8:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa029aa:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa029ae:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa029b0:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa029b4:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa029b6:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa029ba:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa029bc:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa029c0:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa029c2:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa029c6:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa029ca:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa029ce:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa029d2:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa029d6:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa029da:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa029de:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa029e0:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa029e4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa029e8:	00 e1 50 03 	R0.L = 0x350;		/* (848)	R0=0xff900350(-7339184) */
ffa029ec:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa029f0:	ff e3 88 ef 	CALL 0xffa00900 <_printf_str>;
ffa029f4:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa029f6:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa029fa:	2a 91 00 00 
ffa029fe:	ff e3 05 f9 	CALL 0xffa01c08 <_DHCP_tx>;
ffa02a02:	ff e3 2b ff 	CALL 0xffa02858 <_DHCP_rx>;
ffa02a06:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a08:	01 e8 00 00 	UNLINK;
ffa02a0c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02a0e:	10 00       	RTS;
ffa02a10:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02a14:	00 e1 34 03 	R0.L = 0x334;		/* (820)	R0=0xff900334(-7339212) */
ffa02a18:	ff e3 74 ef 	CALL 0xffa00900 <_printf_str>;
ffa02a1c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02a1e:	f5 2f       	JUMP.S 0xffa02a08 <_DHCP_req+0xcc>;

ffa02a20 <_bfin_EMAC_recv>:
ffa02a20:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02a22:	28 32       	P5 = R0;
ffa02a24:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c3c <_rxIdx> */
ffa02a28:	0c e1 3c 0c 	P4.L = 0xc3c;		/* (3132)	P4=0xff900c3c <_rxIdx> */
ffa02a2c:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00c2c(-4191188) */
ffa02a30:	44 e1 c0 ff 	R4.H = 0xffc0;		/* (-64)	R4=0xffc00008(-4194296) */
ffa02a34:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02a38:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02a3a:	6c 30       	R5 = P4;
ffa02a3c:	86 60       	R6 = 0x10 (X);		/*		R6=0x10( 16) */
ffa02a3e:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa02a42:	04 e1 04 07 	R4.L = 0x704;		/* (1796)	R4=0xffc00704(-4192508) */
ffa02a46:	0f 20       	JUMP.S 0xffa02a64 <_bfin_EMAC_recv+0x44>;
ffa02a48:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a4a:	20 97       	W[P4] = R0;
ffa02a4c:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R0 = [P5] || NOP;
ffa02a50:	28 91 00 00 
ffa02a54:	00 e3 36 01 	CALL 0xffa02cc0 <_ARP_rx>;
ffa02a58:	00 0c       	CC = R0 == 0x0;
ffa02a5a:	43 18       	IF CC JUMP 0xffa02ae0 <_bfin_EMAC_recv+0xc0>;
ffa02a5c:	14 32       	P2 = R4;
ffa02a5e:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02a60:	16 97       	W[P2] = R6;
ffa02a62:	01 20       	JUMP.S 0xffa02a64 <_bfin_EMAC_recv+0x44>;
ffa02a64:	0d 32       	P1 = R5;
ffa02a66:	08 95       	R0 = W[P1] (Z);
ffa02a68:	10 32       	P2 = R0;
ffa02a6a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c3c <_rxIdx> */
ffa02a6e:	09 e1 40 0c 	P1.L = 0xc40;		/* (3136)	P1=0xff900c40 <_rxbuf> */
ffa02a72:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02a74:	51 91       	P1 = [P2];
ffa02a76:	88 a2       	R0 = [P1 + 0x28];
ffa02a78:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02a7a:	48 18       	IF CC JUMP 0xffa02b0a <_bfin_EMAC_recv+0xea>;
ffa02a7c:	00 00       	NOP;
ffa02a7e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02a80:	a0 4f       	R0 <<= 0x14;
ffa02a82:	89 a2       	R1 = [P1 + 0x28];
ffa02a84:	81 54       	R2 = R1 & R0;
ffa02a86:	02 0c       	CC = R2 == 0x0;
ffa02a88:	47 10       	IF !CC JUMP 0xffa02b16 <_bfin_EMAC_recv+0xf6>;
ffa02a8a:	00 00       	NOP;
ffa02a8c:	00 00       	NOP;
ffa02a8e:	00 00       	NOP;
ffa02a90:	88 a2       	R0 = [P1 + 0x28];
ffa02a92:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa02a94:	4c 18       	IF CC JUMP 0xffa02b2c <_bfin_EMAC_recv+0x10c>;
ffa02a96:	00 00       	NOP;
ffa02a98:	00 00       	NOP;
ffa02a9a:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02a9e:	89 a2       	R1 = [P1 + 0x28];
ffa02aa0:	c1 55       	R7 = R1 & R0;
ffa02aa2:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02aa4:	07 09       	CC = R7 <= R0;
ffa02aa6:	4e 18       	IF CC JUMP 0xffa02b42 <_bfin_EMAC_recv+0x122>;
ffa02aa8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c58(-4191144) */
ffa02aac:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa02ab0:	16 97       	W[P2] = R6;
ffa02ab2:	88 a1       	R0 = [P1 + 0x18];
ffa02ab4:	59 95       	R1 = W[P3] (X);
ffa02ab6:	28 93       	[P5] = R0;
ffa02ab8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02aba:	08 56       	R0 = R0 | R1;
ffa02abc:	18 97       	W[P3] = R0;
ffa02abe:	61 95       	R1 = W[P4] (X);
ffa02ac0:	c8 42       	R0 = R1.L (Z);
ffa02ac2:	10 0d       	CC = R0 <= 0x2;
ffa02ac4:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02ac6:	8a b2       	[P1 + 0x28] = R2;
ffa02ac8:	c0 17       	IF !CC JUMP 0xffa02a48 <_bfin_EMAC_recv+0x28> (BP);
ffa02aca:	01 30       	R0 = R1;
ffa02acc:	08 64       	R0 += 0x1;		/* (  1) */
ffa02ace:	20 97       	W[P4] = R0;
ffa02ad0:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R0 = [P5] || NOP;
ffa02ad4:	28 91 00 00 
ffa02ad8:	00 e3 f4 00 	CALL 0xffa02cc0 <_ARP_rx>;
ffa02adc:	00 0c       	CC = R0 == 0x0;
ffa02ade:	bf 17       	IF !CC JUMP 0xffa02a5c <_bfin_EMAC_recv+0x3c> (BP);
ffa02ae0:	28 91       	R0 = [P5];
ffa02ae2:	0f 30       	R1 = R7;
ffa02ae4:	ff e3 42 fb 	CALL 0xffa02168 <_icmp_rx>;
ffa02ae8:	00 0c       	CC = R0 == 0x0;
ffa02aea:	b9 17       	IF !CC JUMP 0xffa02a5c <_bfin_EMAC_recv+0x3c> (BP);
ffa02aec:	28 91       	R0 = [P5];
ffa02aee:	0f 30       	R1 = R7;
ffa02af0:	00 e3 46 04 	CALL 0xffa0337c <_tcp_rx>;
ffa02af4:	00 0c       	CC = R0 == 0x0;
ffa02af6:	b3 17       	IF !CC JUMP 0xffa02a5c <_bfin_EMAC_recv+0x3c> (BP);
ffa02af8:	0c 32       	P1 = R4;
ffa02afa:	07 0d       	CC = R7 <= 0x0;
ffa02afc:	0e 97       	W[P1] = R6;
ffa02afe:	b3 1f       	IF CC JUMP 0xffa02a64 <_bfin_EMAC_recv+0x44> (BP);
ffa02b00:	01 e8 00 00 	UNLINK;
ffa02b04:	07 30       	R0 = R7;
ffa02b06:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b08:	10 00       	RTS;
ffa02b0a:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02b0c:	01 e8 00 00 	UNLINK;
ffa02b10:	07 30       	R0 = R7;
ffa02b12:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b14:	10 00       	RTS;
ffa02b16:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900003(-7340029) */
ffa02b1a:	00 e1 64 03 	R0.L = 0x364;		/* (868)	R0=0xff900364(-7339164) */
ffa02b1e:	ff e3 f1 ee 	CALL 0xffa00900 <_printf_str>;
ffa02b22:	01 e8 00 00 	UNLINK;
ffa02b26:	07 30       	R0 = R7;
ffa02b28:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b2a:	10 00       	RTS;
ffa02b2c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900364(-7339164) */
ffa02b30:	00 e1 80 03 	R0.L = 0x380;		/* (896)	R0=0xff900380(-7339136) */
ffa02b34:	ff e3 e6 ee 	CALL 0xffa00900 <_printf_str>;
ffa02b38:	01 e8 00 00 	UNLINK;
ffa02b3c:	07 30       	R0 = R7;
ffa02b3e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b40:	10 00       	RTS;
ffa02b42:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900380(-7339136) */
ffa02b46:	00 e1 94 03 	R0.L = 0x394;		/* (916)	R0=0xff900394(-7339116) */
ffa02b4a:	ff e3 db ee 	CALL 0xffa00900 <_printf_str>;
ffa02b4e:	01 e8 00 00 	UNLINK;
ffa02b52:	07 30       	R0 = R7;
ffa02b54:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b56:	10 00       	RTS;

ffa02b58 <_ARP_init>:
ffa02b58:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa02b5c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02b60:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xff900c68 <_NetArpLut> */
ffa02b64:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02b66:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b68:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02b6a:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa02b6c:	b2 e0 12 10 	LSETUP(0xffa02b70 <_ARP_init+0x18>, 0xffa02b90 <_ARP_init+0x38>) LC1 = P1;
ffa02b70:	11 93       	[P2] = R1;
ffa02b72:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02b76:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02b7a:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa02b7e:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa02b82:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02b86:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02b8a:	52 b5       	W[P2 + 0xa] = R2;
ffa02b8c:	d1 b0       	[P2 + 0xc] = R1;
ffa02b8e:	11 b1       	[P2 + 0x10] = R1;
ffa02b90:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa02b92:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c68 <_NetArpLut> */
ffa02b96:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02b9a:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetArpLut_age> */
ffa02b9e:	10 97       	W[P2] = R0;
ffa02ba0:	01 e8 00 00 	UNLINK;
ffa02ba4:	10 00       	RTS;
	...

ffa02ba8 <_ARP_lut_find>:
ffa02ba8:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900c28 <_txIdx> */
ffa02bac:	08 e1 68 0c 	P0.L = 0xc68;		/* (3176)	P0=0xff900c68 <_NetArpLut> */
ffa02bb0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02bb4:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02bb6:	48 32       	P1 = P0;
ffa02bb8:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02bba:	b2 e0 06 20 	LSETUP(0xffa02bbe <_ARP_lut_find+0x16>, 0xffa02bc6 <_ARP_lut_find+0x1e>) LC1 = P2;
ffa02bbe:	08 91       	R0 = [P1];
ffa02bc0:	00 0c       	CC = R0 == 0x0;
ffa02bc2:	14 18       	IF CC JUMP 0xffa02bea <_ARP_lut_find+0x42>;
ffa02bc4:	0a 64       	R2 += 0x1;		/* (  1) */
ffa02bc6:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02bc8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa02bcc:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02bce:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02bd0:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa02bd2:	09 e1 86 0c 	P1.L = 0xc86;		/* (3206)	P1=0xff900c86 */
ffa02bd6:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa02bd8:	b2 e0 08 20 	LSETUP(0xffa02bdc <_ARP_lut_find+0x34>, 0xffa02be8 <_ARP_lut_find+0x40>) LC1 = P2;
ffa02bdc:	08 95       	R0 = W[P1] (Z);
ffa02bde:	03 09       	CC = R3 <= R0;
ffa02be0:	03 18       	IF CC JUMP 0xffa02be6 <_ARP_lut_find+0x3e>;
ffa02be2:	11 30       	R2 = R1;
ffa02be4:	18 30       	R3 = R0;
ffa02be6:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02be8:	09 64       	R1 += 0x1;		/* (  1) */
ffa02bea:	02 30       	R0 = R2;
ffa02bec:	01 e8 00 00 	UNLINK;
ffa02bf0:	10 00       	RTS;
	...

ffa02bf4 <_ARP_lut_add>:
ffa02bf4:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02bf6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c24 <_NetDHCPserv> */
ffa02bfa:	0d e1 68 0c 	P5.L = 0xc68;		/* (3176)	P5=0xff900c68 <_NetArpLut> */
ffa02bfe:	31 30       	R6 = R1;
ffa02c00:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02c04:	38 30       	R7 = R0;
ffa02c06:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02c08:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa02c0a:	4d 32       	P1 = P5;
ffa02c0c:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02c0e:	00 00       	NOP;
ffa02c10:	08 91       	R0 = [P1];
ffa02c12:	07 08       	CC = R7 == R0;
ffa02c14:	11 07       	IF CC R2 = R1;
ffa02c16:	09 64       	R1 += 0x1;		/* (  1) */
ffa02c18:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa02c1a:	42 0c       	CC = P2 == 0x0;
ffa02c1c:	23 10       	IF !CC JUMP 0xffa02c62 <_ARP_lut_add+0x6e>;
ffa02c1e:	82 0c       	CC = R2 < 0x0;
ffa02c20:	25 18       	IF CC JUMP 0xffa02c6a <_ARP_lut_add+0x76>;
ffa02c22:	82 c6 12 82 	R1 = R2 << 0x2;
ffa02c26:	0a 32       	P1 = R2;
ffa02c28:	11 32       	P2 = R1;
ffa02c2a:	06 32       	P0 = R6;
ffa02c2c:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa02c2e:	6a 5a       	P1 = P2 + P5;
ffa02c30:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02c32:	0f 93       	[P1] = R7;
ffa02c34:	aa 5a       	P2 = P2 + P5;
ffa02c36:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02c38:	b2 e0 03 10 	LSETUP(0xffa02c3c <_ARP_lut_add+0x48>, 0xffa02c3e <_ARP_lut_add+0x4a>) LC1 = P1;
ffa02c3c:	40 98       	R0 = B[P0++] (X);
ffa02c3e:	10 9a       	B[P2++] = R0;
ffa02c40:	51 41       	R1 = (R1 + R2) << 0x2;
ffa02c42:	09 32       	P1 = R1;
ffa02c44:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa02c48:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetArpLut_age> */
ffa02c4c:	50 95       	R0 = W[P2] (X);
ffa02c4e:	08 64       	R0 += 0x1;		/* (  1) */
ffa02c50:	10 97       	W[P2] = R0;
ffa02c52:	a9 5a       	P2 = P1 + P5;
ffa02c54:	50 b5       	W[P2 + 0xa] = R0;
ffa02c56:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c58:	10 b1       	[P2 + 0x10] = R0;
ffa02c5a:	01 e8 00 00 	UNLINK;
ffa02c5e:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02c60:	10 00       	RTS;
ffa02c62:	82 0c       	CC = R2 < 0x0;
ffa02c64:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02c66:	d4 1f       	IF CC JUMP 0xffa02c0e <_ARP_lut_add+0x1a> (BP);
ffa02c68:	dd 2f       	JUMP.S 0xffa02c22 <_ARP_lut_add+0x2e>;
ffa02c6a:	ff e3 9f ff 	CALL 0xffa02ba8 <_ARP_lut_find>;
ffa02c6e:	10 30       	R2 = R0;
ffa02c70:	d9 2f       	JUMP.S 0xffa02c22 <_ARP_lut_add+0x2e>;
	...

ffa02c74 <_ARP_lu>:
ffa02c74:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02c78:	c4 04       	[--SP] = (P5:4);
ffa02c7a:	09 e1 68 0c 	P1.L = 0xc68;		/* (3176)	P1=0xff900c68 <_NetArpLut> */
ffa02c7e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02c82:	10 30       	R2 = R0;
ffa02c84:	29 32       	P5 = R1;
ffa02c86:	61 32       	P4 = P1;
ffa02c88:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa02c8a:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02c8c:	b2 e0 06 20 	LSETUP(0xffa02c90 <_ARP_lu+0x1c>, 0xffa02c98 <_ARP_lu+0x24>) LC1 = P2;
ffa02c90:	08 91       	R0 = [P1];
ffa02c92:	10 08       	CC = R0 == R2;
ffa02c94:	08 18       	IF CC JUMP 0xffa02ca4 <_ARP_lu+0x30>;
ffa02c96:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa02c98:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02c9a:	01 e8 00 00 	UNLINK;
ffa02c9e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02ca0:	84 04       	(P5:4) = [SP++];
ffa02ca2:	10 00       	RTS;
ffa02ca4:	08 a1       	R0 = [P1 + 0x10];
ffa02ca6:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02ca8:	f7 1f       	IF CC JUMP 0xffa02c96 <_ARP_lu+0x22> (BP);
ffa02caa:	60 5a       	P1 = P0 + P4;
ffa02cac:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa02cae:	b2 e0 03 20 	LSETUP(0xffa02cb2 <_ARP_lu+0x3e>, 0xffa02cb4 <_ARP_lu+0x40>) LC1 = P2;
ffa02cb2:	48 98       	R0 = B[P1++] (X);
ffa02cb4:	28 9a       	B[P5++] = R0;
ffa02cb6:	01 e8 00 00 	UNLINK;
ffa02cba:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02cbc:	84 04       	(P5:4) = [SP++];
ffa02cbe:	10 00       	RTS;

ffa02cc0 <_ARP_rx>:
ffa02cc0:	fb 05       	[--SP] = (R7:7, P5:3);
ffa02cc2:	20 32       	P4 = R0;
ffa02cc4:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02cc8:	39 30       	R7 = R1;
ffa02cca:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa02ccc:	ff e3 86 f5 	CALL 0xffa017d8 <_htons>;
ffa02cd0:	c0 42       	R0 = R0.L (Z);
ffa02cd2:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa02cd6:	08 08       	CC = R0 == R1;
ffa02cd8:	06 18       	IF CC JUMP 0xffa02ce4 <_ARP_rx+0x24>;
ffa02cda:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02cdc:	01 e8 00 00 	UNLINK;
ffa02ce0:	bb 05       	(R7:7, P5:3) = [SP++];
ffa02ce2:	10 00       	RTS;
ffa02ce4:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02ce6:	07 0a       	CC = R7 <= R0 (IU);
ffa02ce8:	f9 1f       	IF CC JUMP 0xffa02cda <_ARP_rx+0x1a> (BP);
ffa02cea:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02cec:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02cee:	ff e3 75 f5 	CALL 0xffa017d8 <_htons>;
ffa02cf2:	c0 42       	R0 = R0.L (Z);
ffa02cf4:	07 08       	CC = R7 == R0;
ffa02cf6:	f2 17       	IF !CC JUMP 0xffa02cda <_ARP_rx+0x1a> (BP);
ffa02cf8:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02cfc:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02cfe:	ff e3 6d f5 	CALL 0xffa017d8 <_htons>;
ffa02d02:	c0 42       	R0 = R0.L (Z);
ffa02d04:	07 08       	CC = R7 == R0;
ffa02d06:	ea 17       	IF !CC JUMP 0xffa02cda <_ARP_rx+0x1a> (BP);
ffa02d08:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02d0a:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02d0e:	08 08       	CC = R0 == R1;
ffa02d10:	e5 17       	IF !CC JUMP 0xffa02cda <_ARP_rx+0x1a> (BP);
ffa02d12:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02d14:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02d16:	ff e3 61 f5 	CALL 0xffa017d8 <_htons>;
ffa02d1a:	c0 42       	R0 = R0.L (Z);
ffa02d1c:	07 08       	CC = R7 == R0;
ffa02d1e:	0c 14       	IF !CC JUMP 0xffa02d36 <_ARP_rx+0x76> (BP);
ffa02d20:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa02d24:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_NetOurMAC> */
ffa02d28:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa02d2c:	10 99       	R0 = B[P2] (Z);
ffa02d2e:	01 08       	CC = R1 == R0;
ffa02d30:	ae 18       	IF CC JUMP 0xffa02e8c <_ARP_rx+0x1cc>;
ffa02d32:	00 00       	NOP;
ffa02d34:	00 00       	NOP;
ffa02d36:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d38:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02d3a:	ff e3 4f f5 	CALL 0xffa017d8 <_htons>;
ffa02d3e:	c0 42       	R0 = R0.L (Z);
ffa02d40:	07 08       	CC = R7 == R0;
ffa02d42:	cc 17       	IF !CC JUMP 0xffa02cda <_ARP_rx+0x1a> (BP);
ffa02d44:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02d48:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02d4a:	ff e3 47 f5 	CALL 0xffa017d8 <_htons>;
ffa02d4e:	c0 42       	R0 = R0.L (Z);
ffa02d50:	07 08       	CC = R7 == R0;
ffa02d52:	c4 17       	IF !CC JUMP 0xffa02cda <_ARP_rx+0x1a> (BP);
ffa02d54:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02d56:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02d5a:	08 08       	CC = R0 == R1;
ffa02d5c:	bf 17       	IF !CC JUMP 0xffa02cda <_ARP_rx+0x1a> (BP);
ffa02d5e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d60:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02d62:	ff e3 3b f5 	CALL 0xffa017d8 <_htons>;
ffa02d66:	c0 42       	R0 = R0.L (Z);
ffa02d68:	07 08       	CC = R7 == R0;
ffa02d6a:	b8 17       	IF !CC JUMP 0xffa02cda <_ARP_rx+0x1a> (BP);
ffa02d6c:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa02d70:	07 e1 5c 0c 	R7.L = 0xc5c;		/* (3164)	R7=0xff900c5c <_NetOurIP>(-7336868) */
ffa02d74:	17 32       	P2 = R7;
ffa02d76:	a1 a2       	R1 = [P4 + 0x28];
ffa02d78:	10 91       	R0 = [P2];
ffa02d7a:	01 08       	CC = R1 == R0;
ffa02d7c:	af 17       	IF !CC JUMP 0xffa02cda <_ARP_rx+0x1a> (BP);
ffa02d7e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_NetOurMAC> */
ffa02d82:	0a e1 28 0c 	P2.L = 0xc28;		/* (3112)	P2=0xff900c28 <_txIdx> */
ffa02d86:	10 95       	R0 = W[P2] (Z);
ffa02d88:	10 32       	P2 = R0;
ffa02d8a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c68 <_NetArpLut> */
ffa02d8e:	09 e1 2c 0c 	P1.L = 0xc2c;		/* (3116)	P1=0xff900c2c <_txbuf> */
ffa02d92:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa02d94:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c68 <_NetArpLut> */
ffa02d98:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02d9a:	52 91       	P2 = [P2];
ffa02d9c:	0d e1 50 0c 	P5.L = 0xc50;		/* (3152)	P5=0xff900c50 <_NetOurMAC> */
ffa02da0:	93 ad       	P3 = [P2 + 0x18];
ffa02da2:	18 97       	W[P3] = R0;
ffa02da4:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa02da8:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa02dac:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa02db0:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa02db4:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa02db8:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa02dbc:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa02dc0:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa02dc4:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa02dc8:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa02dcc:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa02dd0:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa02dd4:	68 99       	R0 = B[P5] (X);
ffa02dd6:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa02dda:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02dde:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa02de2:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02de6:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa02dea:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02dee:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa02df2:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02df6:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa02dfa:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02dfe:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa02e02:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02e06:	ff e3 e9 f4 	CALL 0xffa017d8 <_htons>;
ffa02e0a:	d8 b5       	W[P3 + 0xe] = R0;
ffa02e0c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e0e:	ff e3 e5 f4 	CALL 0xffa017d8 <_htons>;
ffa02e12:	18 b6       	W[P3 + 0x10] = R0;
ffa02e14:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02e18:	ff e3 e0 f4 	CALL 0xffa017d8 <_htons>;
ffa02e1c:	58 b6       	W[P3 + 0x12] = R0;
ffa02e1e:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02e20:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa02e24:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02e26:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa02e2a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02e2c:	ff e3 d6 f4 	CALL 0xffa017d8 <_htons>;
ffa02e30:	44 32       	P0 = P4;
ffa02e32:	d8 b6       	W[P3 + 0x16] = R0;
ffa02e34:	53 32       	P2 = P3;
ffa02e36:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa02e38:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02e3a:	b2 e0 08 10 	LSETUP(0xffa02e3e <_ARP_rx+0x17e>, 0xffa02e4a <_ARP_rx+0x18a>) LC1 = P1;
ffa02e3e:	68 98       	R0 = B[P5++] (X);
ffa02e40:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa02e44:	40 98       	R0 = B[P0++] (X);
ffa02e46:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa02e4a:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02e4c:	17 32       	P2 = R7;
ffa02e4e:	50 99       	R0 = B[P2] (X);
ffa02e50:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa02e54:	10 91       	R0 = [P2];
ffa02e56:	40 4e       	R0 >>= 0x8;
ffa02e58:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa02e5c:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02e60:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa02e64:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02e68:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa02e6c:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa02e70:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa02e74:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa02e78:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa02e7c:	f3 b0       	[SP + 0xc] = R3;
ffa02e7e:	ff e3 03 f4 	CALL 0xffa01684 <_FormatIPAddress>;
ffa02e82:	98 b2       	[P3 + 0x28] = R0;
ffa02e84:	ff e3 54 f6 	CALL 0xffa01b2c <_bfin_EMAC_send_nocopy>;
ffa02e88:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e8a:	29 2f       	JUMP.S 0xffa02cdc <_ARP_rx+0x1c>;
ffa02e8c:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa02e90:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa02e94:	01 08       	CC = R1 == R0;
ffa02e96:	50 17       	IF !CC JUMP 0xffa02d36 <_ARP_rx+0x76> (BP);
ffa02e98:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa02e9c:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa02ea0:	01 08       	CC = R1 == R0;
ffa02ea2:	4a 17       	IF !CC JUMP 0xffa02d36 <_ARP_rx+0x76> (BP);
ffa02ea4:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa02ea8:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa02eac:	01 08       	CC = R1 == R0;
ffa02eae:	44 17       	IF !CC JUMP 0xffa02d36 <_ARP_rx+0x76> (BP);
ffa02eb0:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa02eb4:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02eb8:	01 08       	CC = R1 == R0;
ffa02eba:	3e 17       	IF !CC JUMP 0xffa02d36 <_ARP_rx+0x76> (BP);
ffa02ebc:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa02ec0:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa02ec4:	01 08       	CC = R1 == R0;
ffa02ec6:	38 17       	IF !CC JUMP 0xffa02d36 <_ARP_rx+0x76> (BP);
ffa02ec8:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa02eca:	44 30       	R0 = P4;
ffa02ecc:	ff e3 a6 f4 	CALL 0xffa01818 <_pack4chars>;
ffa02ed0:	38 30       	R7 = R0;
ffa02ed2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa02ed6:	0f 30       	R1 = R7;
ffa02ed8:	00 e1 a0 04 	R0.L = 0x4a0;		/* (1184)	R0=0xff9004a0(-7338848) */
ffa02edc:	ff e3 76 ee 	CALL 0xffa00bc8 <_printf_ip>;
ffa02ee0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004a0(-7338848) */
ffa02ee4:	00 e1 68 0a 	R0.L = 0xa68;		/* (2664)	R0=0xff900a68(-7337368) */
ffa02ee8:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa02eea:	ff e3 0b ed 	CALL 0xffa00900 <_printf_str>;
ffa02eee:	07 30       	R0 = R7;
ffa02ef0:	4c 30       	R1 = P4;
ffa02ef2:	ff e3 81 fe 	CALL 0xffa02bf4 <_ARP_lut_add>;
ffa02ef6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ef8:	f2 2e       	JUMP.S 0xffa02cdc <_ARP_rx+0x1c>;
	...

ffa02efc <_ARP_tx>:
ffa02efc:	fc 05       	[--SP] = (R7:7, P5:4);
ffa02efe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c28 <_txIdx> */
ffa02f02:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02f06:	0a e1 28 0c 	P2.L = 0xc28;		/* (3112)	P2=0xff900c28 <_txIdx> */
ffa02f0a:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa02f0e:	10 95 00 00 
ffa02f12:	10 32       	P2 = R0;
ffa02f14:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02f18:	09 e1 2c 0c 	P1.L = 0xc2c;		/* (3116)	P1=0xff900c2c <_txbuf> */
ffa02f1c:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa02f1e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c50 <_NetOurMAC> */
ffa02f22:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02f24:	52 91       	P2 = [P2];
ffa02f26:	0d e1 50 0c 	P5.L = 0xc50;		/* (3152)	P5=0xff900c50 <_NetOurMAC> */
ffa02f2a:	94 ad       	P4 = [P2 + 0x18];
ffa02f2c:	20 97       	W[P4] = R0;
ffa02f2e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02f30:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa02f34:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa02f38:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa02f3c:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa02f40:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa02f44:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa02f48:	68 99       	R0 = B[P5] (X);
ffa02f4a:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa02f4e:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02f52:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa02f56:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02f5a:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa02f5e:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02f62:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa02f66:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02f6a:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa02f6e:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02f72:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa02f76:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02f7a:	ff e3 2f f4 	CALL 0xffa017d8 <_htons>;
ffa02f7e:	e0 b5       	W[P4 + 0xe] = R0;
ffa02f80:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f82:	ff e3 2b f4 	CALL 0xffa017d8 <_htons>;
ffa02f86:	20 b6       	W[P4 + 0x10] = R0;
ffa02f88:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02f8c:	ff e3 26 f4 	CALL 0xffa017d8 <_htons>;
ffa02f90:	60 b6       	W[P4 + 0x12] = R0;
ffa02f92:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02f94:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa02f98:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02f9a:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa02f9e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02fa0:	ff e3 1c f4 	CALL 0xffa017d8 <_htons>;
ffa02fa4:	e0 b6       	W[P4 + 0x16] = R0;
ffa02fa6:	54 32       	P2 = P4;
ffa02fa8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02faa:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02fac:	b2 e0 07 10 	LSETUP(0xffa02fb0 <_ARP_tx+0xb4>, 0xffa02fba <_ARP_tx+0xbe>) LC1 = P1;
ffa02fb0:	68 98       	R0 = B[P5++] (X);
ffa02fb2:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa02fb6:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa02fba:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02fbc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c28 <_txIdx> */
ffa02fc0:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetOurIP> */
ffa02fc4:	50 99       	R0 = B[P2] (X);
ffa02fc6:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa02fca:	10 91       	R0 = [P2];
ffa02fcc:	40 4e       	R0 >>= 0x8;
ffa02fce:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa02fd2:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02fd6:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa02fda:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02fde:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa02fe2:	a7 b2       	[P4 + 0x28] = R7;
ffa02fe4:	01 e8 00 00 	UNLINK;
ffa02fe8:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02fea:	ff e2 a1 f5 	JUMP.L 0xffa01b2c <_bfin_EMAC_send_nocopy>;
	...

ffa02ff0 <_ARP_req>:
ffa02ff0:	ec 05       	[--SP] = (R7:5, P5:4);
ffa02ff2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02ff6:	38 30       	R7 = R0;
ffa02ff8:	ff e3 3e fe 	CALL 0xffa02c74 <_ARP_lu>;
ffa02ffc:	00 0c       	CC = R0 == 0x0;
ffa02ffe:	50 10       	IF !CC JUMP 0xffa0309e <_ARP_req+0xae>;
ffa03000:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c5c */
ffa03004:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa03008:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c3c <_rxIdx> */
ffa0300c:	16 91       	R6 = [P2];
ffa0300e:	0c e1 68 0c 	P4.L = 0xc68;		/* (3176)	P4=0xff900c68 <_NetArpLut> */
ffa03012:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa03016:	4c 32       	P1 = P4;
ffa03018:	46 51       	R5 = R6 + R0;
ffa0301a:	6c 32       	P5 = P4;
ffa0301c:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa0301e:	b2 e0 06 20 	LSETUP(0xffa03022 <_ARP_req+0x32>, 0xffa0302a <_ARP_req+0x3a>) LC1 = P2;
ffa03022:	08 91       	R0 = [P1];
ffa03024:	07 08       	CC = R7 == R0;
ffa03026:	21 18       	IF CC JUMP 0xffa03068 <_ARP_req+0x78>;
ffa03028:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa0302a:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa0302c:	ff e3 be fd 	CALL 0xffa02ba8 <_ARP_lut_find>;
ffa03030:	10 32       	P2 = R0;
ffa03032:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03034:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa03038:	09 e1 64 0c 	P1.L = 0xc64;		/* (3172)	P1=0xff900c64 <_NetArpLut_age> */
ffa0303c:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa0303e:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa03040:	10 b1       	[P2 + 0x10] = R0;
ffa03042:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa03046:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa0304a:	17 93 00 00 
ffa0304e:	d0 b0       	[P2 + 0xc] = R0;
ffa03050:	48 95       	R0 = W[P1] (X);
ffa03052:	08 64       	R0 += 0x1;		/* (  1) */
ffa03054:	08 97       	W[P1] = R0;
ffa03056:	50 b5       	W[P2 + 0xa] = R0;
ffa03058:	07 30       	R0 = R7;
ffa0305a:	ff e3 51 ff 	CALL 0xffa02efc <_ARP_tx>;
ffa0305e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03060:	01 e8 00 00 	UNLINK;
ffa03064:	ac 05       	(R7:5, P5:4) = [SP++];
ffa03066:	10 00       	RTS;
ffa03068:	08 a1       	R0 = [P1 + 0x10];
ffa0306a:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa0306c:	de 1f       	IF CC JUMP 0xffa03028 <_ARP_req+0x38> (BP);
ffa0306e:	e8 a0       	R0 = [P5 + 0xc];
ffa03070:	86 09       	CC = R6 < R0 (IU);
ffa03072:	f6 1f       	IF CC JUMP 0xffa0305e <_ARP_req+0x6e> (BP);
ffa03074:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03078:	0f 30       	R1 = R7;
ffa0307a:	00 e1 c4 04 	R0.L = 0x4c4;		/* (1220)	R0=0xff9004c4(-7338812) */
ffa0307e:	ff e3 a5 ed 	CALL 0xffa00bc8 <_printf_ip>;
ffa03082:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004c4(-7338812) */
ffa03086:	00 e1 68 0a 	R0.L = 0xa68;		/* (2664)	R0=0xff900a68(-7337368) */
ffa0308a:	ff e3 3b ec 	CALL 0xffa00900 <_printf_str>;
ffa0308e:	07 30       	R0 = R7;
ffa03090:	ff e3 36 ff 	CALL 0xffa02efc <_ARP_tx>;
ffa03094:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa03098:	ed b0 00 00 
ffa0309c:	e2 2f       	JUMP.S 0xffa03060 <_ARP_req+0x70>;
ffa0309e:	01 e8 00 00 	UNLINK;
ffa030a2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa030a4:	ac 05       	(R7:5, P5:4) = [SP++];
ffa030a6:	10 00       	RTS;

ffa030a8 <_tcp_length>:
ffa030a8:	c5 04       	[--SP] = (P5:5);
ffa030aa:	28 32       	P5 = R0;
ffa030ac:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa030b0:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa030b2:	ff e3 93 f3 	CALL 0xffa017d8 <_htons>;
ffa030b6:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa030ba:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa030bc:	51 54       	R1 = R1 & R2;
ffa030be:	11 4f       	R1 <<= 0x2;
ffa030c0:	c0 42       	R0 = R0.L (Z);
ffa030c2:	08 52       	R0 = R0 - R1;
ffa030c4:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa030c8:	11 4d       	R1 >>>= 0x2;
ffa030ca:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa030cc:	51 54       	R1 = R1 & R2;
ffa030ce:	01 e8 00 00 	UNLINK;
ffa030d2:	08 52       	R0 = R0 - R1;
ffa030d4:	85 04       	(P5:5) = [SP++];
ffa030d6:	10 00       	RTS;

ffa030d8 <_tcp_checksum_calc>:
ffa030d8:	08 32       	P1 = R0;
ffa030da:	ed 05       	[--SP] = (R7:5, P5:5);
ffa030dc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa030e0:	28 32       	P5 = R0;
ffa030e2:	31 30       	R6 = R1;
ffa030e4:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa030e6:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa030e8:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa030ea:	b2 e0 03 20 	LSETUP(0xffa030ee <_tcp_checksum_calc+0x16>, 0xffa030f0 <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa030ee:	08 94       	R0 = W[P1++] (Z);
ffa030f0:	45 51       	R5 = R5 + R0;
ffa030f2:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa030f6:	10 4e       	R0 >>= 0x2;
ffa030f8:	06 50       	R0 = R6 + R0;
ffa030fa:	c0 42       	R0 = R0.L (Z);
ffa030fc:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa03100:	ff e3 6c f3 	CALL 0xffa017d8 <_htons>;
ffa03104:	47 4f       	R7 <<= 0x8;
ffa03106:	c0 42       	R0 = R0.L (Z);
ffa03108:	c7 51       	R7 = R7 + R0;
ffa0310a:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa0310c:	ef 50       	R3 = R7 + R5;
ffa0310e:	0d 1c       	IF CC JUMP 0xffa03128 <_tcp_checksum_calc+0x50> (BP);
ffa03110:	0e 32       	P1 = R6;
ffa03112:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03116:	10 4e       	R0 >>= 0x2;
ffa03118:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa0311a:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0311c:	a9 5a       	P2 = P1 + P5;
ffa0311e:	08 32       	P1 = R0;
ffa03120:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03122:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa03124:	8a 5a       	P2 = P2 + P1;
ffa03126:	10 9b       	B[P2] = R0;
ffa03128:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa0312c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0312e:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa03132:	71 50       	R1 = R1 + R6;
ffa03134:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03138:	09 4d       	R1 >>>= 0x1;
ffa0313a:	18 4e       	R0 >>= 0x3;
ffa0313c:	41 50       	R1 = R1 + R0;
ffa0313e:	01 0d       	CC = R1 <= 0x0;
ffa03140:	09 18       	IF CC JUMP 0xffa03152 <_tcp_checksum_calc+0x7a>;
ffa03142:	55 32       	P2 = P5;
ffa03144:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa03146:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa03148:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0314a:	10 94       	R0 = W[P2++] (Z);
ffa0314c:	0a 08       	CC = R2 == R1;
ffa0314e:	c3 50       	R3 = R3 + R0;
ffa03150:	fc 17       	IF !CC JUMP 0xffa03148 <_tcp_checksum_calc+0x70> (BP);
ffa03152:	d8 42       	R0 = R3.L (Z);
ffa03154:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa03158:	08 50       	R0 = R0 + R1;
ffa0315a:	c0 43       	R0 =~ R0;
ffa0315c:	01 e8 00 00 	UNLINK;
ffa03160:	c0 42       	R0 = R0.L (Z);
ffa03162:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03164:	10 00       	RTS;
	...

ffa03168 <_tcp_checksum_set>:
ffa03168:	c5 04       	[--SP] = (P5:5);
ffa0316a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa0316e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03172:	0a e1 28 0c 	P2.L = 0xc28;		/* (3112)	P2=0xff900c28 <_txIdx> */
ffa03176:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa0317a:	10 95 00 00 
ffa0317e:	10 32       	P2 = R0;
ffa03180:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c64 <_NetArpLut_age> */
ffa03184:	09 e1 2c 0c 	P1.L = 0xc2c;		/* (3116)	P1=0xff900c2c <_txbuf> */
ffa03188:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0318a:	52 91       	P2 = [P2];
ffa0318c:	95 ad       	P5 = [P2 + 0x18];
ffa0318e:	45 30       	R0 = P5;
ffa03190:	ff e3 a4 ff 	CALL 0xffa030d8 <_tcp_checksum_calc>;
ffa03194:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa03198:	01 e8 00 00 	UNLINK;
ffa0319c:	85 04       	(P5:5) = [SP++];
ffa0319e:	10 00       	RTS;

ffa031a0 <_tcp_checksum_check>:
ffa031a0:	10 32       	P2 = R0;
ffa031a2:	78 05       	[--SP] = (R7:7);
ffa031a4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa031a8:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa031ac:	ff e3 96 ff 	CALL 0xffa030d8 <_tcp_checksum_calc>;
ffa031b0:	0f 30       	R1 = R7;
ffa031b2:	c7 42       	R7 = R0.L (Z);
ffa031b4:	39 08       	CC = R1 == R7;
ffa031b6:	19 18       	IF CC JUMP 0xffa031e8 <_tcp_checksum_check+0x48>;
ffa031b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa031bc:	00 e1 e4 04 	R0.L = 0x4e4;		/* (1252)	R0=0xff9004e4(-7338780) */
ffa031c0:	ff e3 06 ec 	CALL 0xffa009cc <_printf_hex>;
ffa031c4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004e4(-7338780) */
ffa031c8:	0f 30       	R1 = R7;
ffa031ca:	00 e1 00 05 	R0.L = 0x500;		/* (1280)	R0=0xff900500(-7338752) */
ffa031ce:	ff e3 ff eb 	CALL 0xffa009cc <_printf_hex>;
ffa031d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900500(-7338752) */
ffa031d6:	00 e1 68 0a 	R0.L = 0xa68;		/* (2664)	R0=0xff900a68(-7337368) */
ffa031da:	ff e3 93 eb 	CALL 0xffa00900 <_printf_str>;
ffa031de:	01 e8 00 00 	UNLINK;
ffa031e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa031e4:	38 05       	(R7:7) = [SP++];
ffa031e6:	10 00       	RTS;
ffa031e8:	01 e8 00 00 	UNLINK;
ffa031ec:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa031ee:	38 05       	(R7:7) = [SP++];
ffa031f0:	10 00       	RTS;
	...

ffa031f4 <_tcp_packet_setup>:
ffa031f4:	ed 05       	[--SP] = (R7:5, P5:5);
ffa031f6:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa031fa:	29 32       	P5 = R1;
ffa031fc:	7f 30       	R7 = FP;
ffa031fe:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa03200:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03202:	f0 bb       	[FP -0x4] = R0;
ffa03204:	07 30       	R0 = R7;
ffa03206:	2a 30       	R5 = R2;
ffa03208:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa0320c:	ff e3 2c f7 	CALL 0xffa02064 <_eth_header_setup>;
ffa03210:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa03214:	68 99 00 00 
ffa03218:	80 0c       	CC = R0 < 0x0;
ffa0321a:	14 18       	IF CC JUMP 0xffa03242 <_tcp_packet_setup+0x4e>;
ffa0321c:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0321e:	f0 b0       	[SP + 0xc] = R0;
ffa03220:	15 30       	R2 = R5;
ffa03222:	01 30       	R0 = R1;
ffa03224:	0f 30       	R1 = R7;
ffa03226:	ff e3 0d f3 	CALL 0xffa01840 <_ip_header_setup>;
ffa0322a:	b9 a2       	R1 = [FP + 0x28];
ffa0322c:	f1 b0       	[SP + 0xc] = R1;
ffa0322e:	f9 a2       	R1 = [FP + 0x2c];
ffa03230:	31 b1       	[SP + 0x10] = R1;
ffa03232:	72 43       	R2 = R6.B (Z);
ffa03234:	0f 30       	R1 = R7;
ffa03236:	ff e3 91 f3 	CALL 0xffa01958 <_tcp_header_setup>;
ffa0323a:	01 e8 00 00 	UNLINK;
ffa0323e:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03240:	10 00       	RTS;
ffa03242:	01 e8 00 00 	UNLINK;
ffa03246:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03248:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0324a:	10 00       	RTS;

ffa0324c <_tcp_burst>:
ffa0324c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0324e:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa03252:	78 b2       	[FP + 0x24] = R0;
ffa03254:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 <_NetArpLut> */
ffa03258:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c28 <_txIdx> */
ffa0325c:	7a a2       	R2 = [FP + 0x24];
ffa0325e:	0b e1 50 0d 	P3.L = 0xd50;		/* (3408)	P3=0xff900d50 <_g_httpHeaderLen> */
ffa03262:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpContentLen> */
ffa03266:	02 0d       	CC = R2 <= 0x0;
ffa03268:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa0326c:	10 91 00 00 
ffa03270:	19 91       	R1 = [P3];
ffa03272:	7e 18       	IF CC JUMP 0xffa0336e <_tcp_burst+0x122>;
ffa03274:	41 50       	R1 = R1 + R0;
ffa03276:	8f 09       	CC = R7 < R1 (IU);
ffa03278:	21 32       	P4 = R1;
ffa0327a:	7a 10       	IF !CC JUMP 0xffa0336e <_tcp_burst+0x122>;
ffa0327c:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa0327e:	38 20       	JUMP.S 0xffa032ee <_tcp_burst+0xa2>;
ffa03280:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03282:	18 91       	R0 = [P3];
ffa03284:	07 52       	R0 = R7 - R0;
ffa03286:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa0328a:	08 50       	R0 = R0 + R1;
ffa0328c:	16 30       	R2 = R6;
ffa0328e:	0d 30       	R1 = R5;
ffa03290:	ff e3 e0 ec 	CALL 0xffa00c50 <_memcpy_>;
ffa03294:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c2c <_txbuf> */
ffa03298:	09 e1 3c 0d 	P1.L = 0xd3c;		/* (3388)	P1=0xff900d3c <_TcpSeqHttpStart> */
ffa0329c:	08 91       	R0 = [P1];
ffa0329e:	f7 51       	R7 = R7 + R6;
ffa032a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpContentLen> */
ffa032a4:	0a e1 34 0d 	P2.L = 0xd34;		/* (3380)	P2=0xff900d34 <_TcpSeqHost> */
ffa032a8:	07 50       	R0 = R7 + R0;
ffa032aa:	10 93       	[P2] = R0;
ffa032ac:	26 50       	R0 = R6 + R4;
ffa032ae:	ff e3 5d ff 	CALL 0xffa03168 <_tcp_checksum_set>;
ffa032b2:	ff e3 3d f4 	CALL 0xffa01b2c <_bfin_EMAC_send_nocopy>;
ffa032b6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d34 <_TcpSeqHost> */
ffa032ba:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_rxIdx> */
ffa032be:	10 95       	R0 = W[P2] (Z);
ffa032c0:	10 32       	P2 = R0;
ffa032c2:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d3c <_TcpSeqHttpStart> */
ffa032c6:	09 e1 40 0c 	P1.L = 0xc40;		/* (3136)	P1=0xff900c40 <_rxbuf> */
ffa032ca:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa032cc:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa032ce:	52 91       	P2 = [P2];
ffa032d0:	90 a2       	R0 = [P2 + 0x28];
ffa032d2:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa032d4:	07 1c       	IF CC JUMP 0xffa032e2 <_tcp_burst+0x96> (BP);
ffa032d6:	90 a2       	R0 = [P2 + 0x28];
ffa032d8:	4d 30       	R1 = P5;
ffa032da:	7a a2       	R2 = [FP + 0x24];
ffa032dc:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa032de:	11 50       	R0 = R1 + R2;
ffa032e0:	a8 06       	IF !CC P5 = R0;
ffa032e2:	79 ae       	P1 = [FP + 0x24];
ffa032e4:	69 09       	CC = P1 <= P5;
ffa032e6:	45 18       	IF CC JUMP 0xffa03370 <_tcp_burst+0x124>;
ffa032e8:	44 30       	R0 = P4;
ffa032ea:	87 09       	CC = R7 < R0 (IU);
ffa032ec:	42 10       	IF !CC JUMP 0xffa03370 <_tcp_burst+0x124>;
ffa032ee:	44 30       	R0 = P4;
ffa032f0:	b8 52       	R2 = R0 - R7;
ffa032f2:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa032f6:	0a 09       	CC = R2 <= R1;
ffa032f8:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa032fa:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa032fc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c40 <_rxbuf> */
ffa03300:	08 06       	IF !CC R1 = R0;
ffa03302:	09 e1 3c 0d 	P1.L = 0xd3c;		/* (3388)	P1=0xff900d3c <_TcpSeqHttpStart> */
ffa03306:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa0330a:	07 cc 10 4c 	R6 = MIN (R2, R0) || R0 = [P1] || NOP;
ffa0330e:	08 91 00 00 
ffa03312:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_rxIdx> */
ffa03316:	07 50       	R0 = R7 + R0;
ffa03318:	0a e1 34 0d 	P2.L = 0xd34;		/* (3380)	P2=0xff900d34 <_TcpSeqHost> */
ffa0331c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d3c <_TcpSeqHttpStart> */
ffa03320:	10 93       	[P2] = R0;
ffa03322:	09 e1 38 0d 	P1.L = 0xd38;		/* (3384)	P1=0xff900d38 <_TcpSeqClient> */
ffa03326:	f1 b0       	[SP + 0xc] = R1;
ffa03328:	30 b1       	[SP + 0x10] = R0;
ffa0332a:	08 91       	R0 = [P1];
ffa0332c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d34 <_TcpSeqHost> */
ffa03330:	70 b1       	[SP + 0x14] = R0;
ffa03332:	0a e1 20 0c 	P2.L = 0xc20;		/* (3104)	P2=0xff900c20 <_NetDestIP> */
ffa03336:	4f 30       	R1 = FP;
ffa03338:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R2 = [P2] || NOP;
ffa0333c:	12 91 00 00 
ffa03340:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03342:	ff e3 59 ff 	CALL 0xffa031f4 <_tcp_packet_setup>;
ffa03346:	28 30       	R5 = R0;
ffa03348:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0334c:	00 0d       	CC = R0 <= 0x0;
ffa0334e:	ca 1b       	IF CC JUMP 0xffa032e2 <_tcp_burst+0x96>;
ffa03350:	18 91       	R0 = [P3];
ffa03352:	38 0a       	CC = R0 <= R7 (IU);
ffa03354:	96 1f       	IF CC JUMP 0xffa03280 <_tcp_burst+0x34> (BP);
ffa03356:	38 53       	R4 = R0 - R7;
ffa03358:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa0335c:	07 50       	R0 = R7 + R0;
ffa0335e:	0d 30       	R1 = R5;
ffa03360:	14 30       	R2 = R4;
ffa03362:	ff e3 77 ec 	CALL 0xffa00c50 <_memcpy_>;
ffa03366:	65 51       	R5 = R5 + R4;
ffa03368:	a6 53       	R6 = R6 - R4;
ffa0336a:	e7 51       	R7 = R7 + R4;
ffa0336c:	8b 2f       	JUMP.S 0xffa03282 <_tcp_burst+0x36>;
ffa0336e:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa03370:	01 e8 00 00 	UNLINK;
ffa03374:	45 30       	R0 = P5;
ffa03376:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03378:	10 00       	RTS;
	...

ffa0337c <_tcp_rx>:
ffa0337c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0337e:	20 32       	P4 = R0;
ffa03380:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa03384:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03388:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa0338a:	ff e3 27 f2 	CALL 0xffa017d8 <_htons>;
ffa0338e:	c0 42       	R0 = R0.L (Z);
ffa03390:	07 08       	CC = R7 == R0;
ffa03392:	06 18       	IF CC JUMP 0xffa0339e <_tcp_rx+0x22>;
ffa03394:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03396:	01 e8 00 00 	UNLINK;
ffa0339a:	a3 05       	(R7:4, P5:3) = [SP++];
ffa0339c:	10 00       	RTS;
ffa0339e:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa033a2:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa033a4:	08 08       	CC = R0 == R1;
ffa033a6:	f7 17       	IF !CC JUMP 0xffa03394 <_tcp_rx+0x18> (BP);
ffa033a8:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa033ac:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa033b0:	ff e3 14 f2 	CALL 0xffa017d8 <_htons>;
ffa033b4:	c0 42       	R0 = R0.L (Z);
ffa033b6:	07 08       	CC = R7 == R0;
ffa033b8:	ee 17       	IF !CC JUMP 0xffa03394 <_tcp_rx+0x18> (BP);
ffa033ba:	44 30       	R0 = P4;
ffa033bc:	80 64       	R0 += 0x10;		/* ( 16) */
ffa033be:	ff e3 81 f2 	CALL 0xffa018c0 <_ip_header_checksum>;
ffa033c2:	40 43       	R0 = R0.B (Z);
ffa033c4:	00 0c       	CC = R0 == 0x0;
ffa033c6:	e7 1f       	IF CC JUMP 0xffa03394 <_tcp_rx+0x18> (BP);
ffa033c8:	4c 30       	R1 = P4;
ffa033ca:	41 64       	R1 += 0x8;		/* (  8) */
ffa033cc:	e0 a1       	R0 = [P4 + 0x1c];
ffa033ce:	ff e3 13 fc 	CALL 0xffa02bf4 <_ARP_lut_add>;
ffa033d2:	44 30       	R0 = P4;
ffa033d4:	ff e3 6a fe 	CALL 0xffa030a8 <_tcp_length>;
ffa033d8:	30 30       	R6 = R0;
ffa033da:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa033de:	0e 30       	R1 = R6;
ffa033e0:	00 e1 10 05 	R0.L = 0x510;		/* (1296)	R0=0xff900510(-7338736) */
ffa033e4:	ff e3 50 eb 	CALL 0xffa00a84 <_printf_int>;
ffa033e8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900510(-7338736) */
ffa033ec:	00 e1 68 0a 	R0.L = 0xa68;		/* (2664)	R0=0xff900a68(-7337368) */
ffa033f0:	ff e3 88 ea 	CALL 0xffa00900 <_printf_str>;
ffa033f4:	44 30       	R0 = P4;
ffa033f6:	0e 30       	R1 = R6;
ffa033f8:	ff e3 d4 fe 	CALL 0xffa031a0 <_tcp_checksum_check>;
ffa033fc:	40 43       	R0 = R0.B (Z);
ffa033fe:	00 0c       	CC = R0 == 0x0;
ffa03400:	ca 1b       	IF CC JUMP 0xffa03394 <_tcp_rx+0x18>;
ffa03402:	00 00       	NOP;
ffa03404:	00 00       	NOP;
ffa03406:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa03408:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa0340c:	48 43       	R0 = R1.B (Z);
ffa0340e:	10 08       	CC = R0 == R2;
ffa03410:	f1 18       	IF CC JUMP 0xffa035f2 <_tcp_rx+0x276>;
ffa03412:	10 0c       	CC = R0 == 0x2;
ffa03414:	0a 19       	IF CC JUMP 0xffa03628 <_tcp_rx+0x2ac>;
ffa03416:	48 43       	R0 = R1.B (Z);
ffa03418:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa0341a:	08 08       	CC = R0 == R1;
ffa0341c:	85 18       	IF CC JUMP 0xffa03526 <_tcp_rx+0x1aa>;
ffa0341e:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03420:	ab 10       	IF !CC JUMP 0xffa03576 <_tcp_rx+0x1fa>;
ffa03422:	00 00       	NOP;
ffa03424:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d50 <_g_httpHeaderLen> */
ffa03428:	0b e1 40 0d 	P3.L = 0xd40;		/* (3392)	P3=0xff900d40 <_TcpState> */
ffa0342c:	00 00       	NOP;
ffa0342e:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa03432:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa03434:	38 10       	IF !CC JUMP 0xffa034a4 <_tcp_rx+0x128>;
ffa03436:	18 91       	R0 = [P3];
ffa03438:	10 0c       	CC = R0 == 0x2;
ffa0343a:	ad 17       	IF !CC JUMP 0xffa03394 <_tcp_rx+0x18> (BP);
ffa0343c:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900000 <_l1_data_a>(-7340032) */
ffa03440:	a0 a2       	R0 = [P4 + 0x28];
ffa03442:	04 e1 20 0c 	R4.L = 0xc20;		/* (3104)	R4=0xff900c20 <_NetDestIP>(-7336928) */
ffa03446:	a5 e5 30 00 	R5 = B[P4 + 0x30] (X);
ffa0344a:	ff e3 d3 f1 	CALL 0xffa017f0 <_htonl>;
ffa0344e:	14 32       	P2 = R4;
ffa03450:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa03454:	30 50       	R0 = R0 + R6;
ffa03456:	0d e1 38 0d 	P5.L = 0xd38;		/* (3384)	P5=0xff900d38 <_TcpSeqClient> */
ffa0345a:	28 93       	[P5] = R0;
ffa0345c:	e0 a1       	R0 = [P4 + 0x1c];
ffa0345e:	10 93       	[P2] = R0;
ffa03460:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d40 <_TcpState> */
ffa03464:	e0 a2       	R0 = [P4 + 0x2c];
ffa03466:	0b e1 3c 0d 	P3.L = 0xd3c;		/* (3388)	P3=0xff900d3c <_TcpSeqHttpStart> */
ffa0346a:	ff e3 c3 f1 	CALL 0xffa017f0 <_htonl>;
ffa0346e:	19 91       	R1 = [P3];
ffa03470:	c8 53       	R7 = R0 - R1;
ffa03472:	a1 e4 31 00 	R1 = B[P4 + 0x31] (Z);
ffa03476:	21 48       	CC = !BITTST (R1, 0x4);		/* bit  4 */
ffa03478:	1e 1d       	IF CC JUMP 0xffa036b4 <_tcp_rx+0x338> (BP);
ffa0347a:	06 0c       	CC = R6 == 0x0;
ffa0347c:	1c 15       	IF !CC JUMP 0xffa036b4 <_tcp_rx+0x338> (BP);
ffa0347e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c20 <_NetDestIP> */
ffa03482:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_g_httpHeaderLen> */
ffa03486:	10 91       	R0 = [P2];
ffa03488:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_g_httpHeaderLen> */
ffa0348c:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpContentLen> */
ffa03490:	11 91       	R1 = [P2];
ffa03492:	08 50       	R0 = R0 + R1;
ffa03494:	07 08       	CC = R7 == R0;
ffa03496:	46 18       	IF CC JUMP 0xffa03522 <_tcp_rx+0x1a6>;
ffa03498:	0f 30       	R1 = R7;
ffa0349a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0349c:	ff e3 d8 fe 	CALL 0xffa0324c <_tcp_burst>;
ffa034a0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034a2:	7a 2f       	JUMP.S 0xffa03396 <_tcp_rx+0x1a>;
ffa034a4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa034a6:	1f 91       	R7 = [P3];
ffa034a8:	07 08       	CC = R7 == R0;
ffa034aa:	85 19       	IF CC JUMP 0xffa037b4 <_tcp_rx+0x438>;
ffa034ac:	07 0c       	CC = R7 == 0x0;
ffa034ae:	c4 17       	IF !CC JUMP 0xffa03436 <_tcp_rx+0xba> (BP);
ffa034b0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa034b4:	00 e1 8c 05 	R0.L = 0x58c;		/* (1420)	R0=0xff90058c(-7338612) */
ffa034b8:	ff e3 24 ea 	CALL 0xffa00900 <_printf_str>;
ffa034bc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpContentLen> */
ffa034c0:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpRxed> */
ffa034c4:	17 93       	[P2] = R7;
ffa034c6:	a0 a2       	R0 = [P4 + 0x28];
ffa034c8:	ff e3 94 f1 	CALL 0xffa017f0 <_htonl>;
ffa034cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpRxed> */
ffa034d0:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqClient> */
ffa034d4:	10 93       	[P2] = R0;
ffa034d6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqClient> */
ffa034da:	e2 a1       	R2 = [P4 + 0x1c];
ffa034dc:	0a e1 20 0c 	P2.L = 0xc20;		/* (3104)	P2=0xff900c20 <_NetDestIP> */
ffa034e0:	12 93       	[P2] = R2;
ffa034e2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c20 <_NetDestIP> */
ffa034e6:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa034ea:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpClientPort> */
ffa034ee:	11 97       	W[P2] = R1;
ffa034f0:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa034f2:	f1 b0       	[SP + 0xc] = R1;
ffa034f4:	4f 30       	R1 = FP;
ffa034f6:	30 b1       	[SP + 0x10] = R0;
ffa034f8:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa034fa:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa034fe:	77 b1 00 00 
ffa03502:	ff e3 79 fe 	CALL 0xffa031f4 <_tcp_packet_setup>;
ffa03506:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0350a:	00 0d       	CC = R0 <= 0x0;
ffa0350c:	95 1b       	IF CC JUMP 0xffa03436 <_tcp_rx+0xba>;
ffa0350e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpClientPort> */
ffa03512:	0a e1 40 0d 	P2.L = 0xd40;		/* (3392)	P2=0xff900d40 <_TcpState> */
ffa03516:	17 93       	[P2] = R7;
ffa03518:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0351a:	ff e3 27 fe 	CALL 0xffa03168 <_tcp_checksum_set>;
ffa0351e:	ff e3 07 f3 	CALL 0xffa01b2c <_bfin_EMAC_send_nocopy>;
ffa03522:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03524:	39 2f       	JUMP.S 0xffa03396 <_tcp_rx+0x1a>;
ffa03526:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d3c <_TcpSeqHttpStart> */
ffa0352a:	0b e1 40 0d 	P3.L = 0xd40;		/* (3392)	P3=0xff900d40 <_TcpState> */
ffa0352e:	18 91       	R0 = [P3];
ffa03530:	08 0c       	CC = R0 == 0x1;
ffa03532:	b9 17       	IF !CC JUMP 0xffa034a4 <_tcp_rx+0x128> (BP);
ffa03534:	e0 a2       	R0 = [P4 + 0x2c];
ffa03536:	ff e3 5d f1 	CALL 0xffa017f0 <_htonl>;
ffa0353a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d40 <_TcpState> */
ffa0353e:	0a e1 34 0d 	P2.L = 0xd34;		/* (3380)	P2=0xff900d34 <_TcpSeqHost> */
ffa03542:	11 91       	R1 = [P2];
ffa03544:	08 08       	CC = R0 == R1;
ffa03546:	42 19       	IF CC JUMP 0xffa037ca <_tcp_rx+0x44e>;
ffa03548:	00 00       	NOP;
ffa0354a:	00 00       	NOP;
ffa0354c:	00 00       	NOP;
ffa0354e:	e0 a2       	R0 = [P4 + 0x2c];
ffa03550:	ff e3 50 f1 	CALL 0xffa017f0 <_htonl>;
ffa03554:	08 30       	R1 = R0;
ffa03556:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0355a:	00 e1 3c 05 	R0.L = 0x53c;		/* (1340)	R0=0xff90053c(-7338692) */
ffa0355e:	ff e3 35 eb 	CALL 0xffa00bc8 <_printf_ip>;
ffa03562:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03564:	18 93       	[P3] = R0;
ffa03566:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0356a:	00 e1 68 0a 	R0.L = 0xa68;		/* (2664)	R0=0xff900a68(-7337368) */
ffa0356e:	ff e3 c9 e9 	CALL 0xffa00900 <_printf_str>;
ffa03572:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03574:	11 2f       	JUMP.S 0xffa03396 <_tcp_rx+0x1a>;
ffa03576:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0357a:	00 e1 68 05 	R0.L = 0x568;		/* (1384)	R0=0xff900568(-7338648) */
ffa0357e:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900c20 <_NetDestIP>(-7336928) */
ffa03582:	ff e3 bf e9 	CALL 0xffa00900 <_printf_str>;
ffa03586:	04 e1 20 0c 	R4.L = 0xc20;		/* (3104)	R4=0xff900c20 <_NetDestIP>(-7336928) */
ffa0358a:	a0 a2       	R0 = [P4 + 0x28];
ffa0358c:	ff e3 32 f1 	CALL 0xffa017f0 <_htonl>;
ffa03590:	14 32       	P2 = R4;
ffa03592:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d38 <_TcpSeqClient> */
ffa03596:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d40 <_TcpState> */
ffa0359a:	0d e1 38 0d 	P5.L = 0xd38;		/* (3384)	P5=0xff900d38 <_TcpSeqClient> */
ffa0359e:	0b e1 40 0d 	P3.L = 0xd40;		/* (3392)	P3=0xff900d40 <_TcpState> */
ffa035a2:	28 93       	[P5] = R0;
ffa035a4:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa035a8:	18 91 00 00 
ffa035ac:	e2 a1       	R2 = [P4 + 0x1c];
ffa035ae:	09 64       	R1 += 0x1;		/* (  1) */
ffa035b0:	10 0c       	CC = R0 == 0x2;
ffa035b2:	12 93       	[P2] = R2;
ffa035b4:	29 93       	[P5] = R1;
ffa035b6:	03 18       	IF CC JUMP 0xffa035bc <_tcp_rx+0x240>;
ffa035b8:	00 0c       	CC = R0 == 0x0;
ffa035ba:	c0 14       	IF !CC JUMP 0xffa0373a <_tcp_rx+0x3be> (BP);
ffa035bc:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa035be:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d34 <_TcpSeqHost> */
ffa035c2:	f0 b0       	[SP + 0xc] = R0;
ffa035c4:	0a e1 34 0d 	P2.L = 0xd34;		/* (3380)	P2=0xff900d34 <_TcpSeqHost> */
ffa035c8:	10 91       	R0 = [P2];
ffa035ca:	71 b1       	[SP + 0x14] = R1;
ffa035cc:	4f 30       	R1 = FP;
ffa035ce:	30 b1       	[SP + 0x10] = R0;
ffa035d0:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa035d2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa035d4:	ff e3 10 fe 	CALL 0xffa031f4 <_tcp_packet_setup>;
ffa035d8:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa035dc:	00 0d       	CC = R0 <= 0x0;
ffa035de:	ae 18       	IF CC JUMP 0xffa0373a <_tcp_rx+0x3be>;
ffa035e0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa035e2:	18 93       	[P3] = R0;
ffa035e4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa035e6:	ff e3 c1 fd 	CALL 0xffa03168 <_tcp_checksum_set>;
ffa035ea:	ff e3 a1 f2 	CALL 0xffa01b2c <_bfin_EMAC_send_nocopy>;
ffa035ee:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa035f0:	d3 2e       	JUMP.S 0xffa03396 <_tcp_rx+0x1a>;
ffa035f2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa035f6:	00 e1 24 05 	R0.L = 0x524;		/* (1316)	R0=0xff900524(-7338716) */
ffa035fa:	ff e3 83 e9 	CALL 0xffa00900 <_printf_str>;
ffa035fe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d34 <_TcpSeqHost> */
ffa03602:	0a e1 40 0d 	P2.L = 0xd40;		/* (3392)	P2=0xff900d40 <_TcpState> */
ffa03606:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03608:	17 93       	[P2] = R7;
ffa0360a:	a0 a2       	R0 = [P4 + 0x28];
ffa0360c:	ff e3 f2 f0 	CALL 0xffa017f0 <_htonl>;
ffa03610:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d40 <_TcpState> */
ffa03614:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqClient> */
ffa03618:	10 93       	[P2] = R0;
ffa0361a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqClient> */
ffa0361e:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpRxed> */
ffa03622:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03624:	17 93       	[P2] = R7;
ffa03626:	b8 2e       	JUMP.S 0xffa03396 <_tcp_rx+0x1a>;
ffa03628:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0362c:	00 e1 30 05 	R0.L = 0x530;		/* (1328)	R0=0xff900530(-7338704) */
ffa03630:	ff e3 68 e9 	CALL 0xffa00900 <_printf_str>;
ffa03634:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d38 <_TcpSeqClient> */
ffa03638:	a0 a2       	R0 = [P4 + 0x28];
ffa0363a:	ff e3 db f0 	CALL 0xffa017f0 <_htonl>;
ffa0363e:	0d e1 38 0d 	P5.L = 0xd38;		/* (3384)	P5=0xff900d38 <_TcpSeqClient> */
ffa03642:	28 93       	[P5] = R0;
ffa03644:	44 30       	R0 = P4;
ffa03646:	ff e3 31 fd 	CALL 0xffa030a8 <_tcp_length>;
ffa0364a:	29 91       	R1 = [P5];
ffa0364c:	09 64       	R1 += 0x1;		/* (  1) */
ffa0364e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpRxed> */
ffa03652:	08 50       	R0 = R0 + R1;
ffa03654:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpClientPort> */
ffa03658:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa0365c:	11 97       	W[P2] = R1;
ffa0365e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpClientPort> */
ffa03662:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa03666:	28 93 00 00 
ffa0366a:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpRxed> */
ffa0366e:	11 93       	[P2] = R1;
ffa03670:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpRxed> */
ffa03674:	e2 a1       	R2 = [P4 + 0x1c];
ffa03676:	0a e1 20 0c 	P2.L = 0xc20;		/* (3104)	P2=0xff900c20 <_NetDestIP> */
ffa0367a:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa0367c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d38 <_TcpSeqClient> */
ffa03680:	12 93       	[P2] = R2;
ffa03682:	0d e1 34 0d 	P5.L = 0xd34;		/* (3380)	P5=0xff900d34 <_TcpSeqHost> */
ffa03686:	f1 b0       	[SP + 0xc] = R1;
ffa03688:	29 91       	R1 = [P5];
ffa0368a:	31 b1       	[SP + 0x10] = R1;
ffa0368c:	4f 30       	R1 = FP;
ffa0368e:	70 b1       	[SP + 0x14] = R0;
ffa03690:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03692:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03694:	ff e3 b0 fd 	CALL 0xffa031f4 <_tcp_packet_setup>;
ffa03698:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0369c:	00 0d       	CC = R0 <= 0x0;
ffa0369e:	93 18       	IF CC JUMP 0xffa037c4 <_tcp_rx+0x448>;
ffa036a0:	28 91       	R0 = [P5];
ffa036a2:	08 64       	R0 += 0x1;		/* (  1) */
ffa036a4:	28 93       	[P5] = R0;
ffa036a6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa036a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c20 <_NetDestIP> */
ffa036ac:	0a e1 40 0d 	P2.L = 0xd40;		/* (3392)	P2=0xff900d40 <_TcpState> */
ffa036b0:	10 93       	[P2] = R0;
ffa036b2:	33 2f       	JUMP.S 0xffa03518 <_tcp_rx+0x19c>;
ffa036b4:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa036b8:	28 54       	R0 = R0 & R5;
ffa036ba:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa036bc:	10 4d       	R0 >>>= 0x2;
ffa036be:	54 30       	R2 = P4;
ffa036c0:	19 48       	CC = !BITTST (R1, 0x3);		/* bit  3 */
ffa036c2:	02 50       	R0 = R2 + R0;
ffa036c4:	5d 1c       	IF CC JUMP 0xffa0377e <_tcp_rx+0x402> (BP);
ffa036c6:	0e 30       	R1 = R6;
ffa036c8:	00 e3 16 05 	CALL 0xffa040f4 <_httpCollate>;
ffa036cc:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d34 <_TcpSeqHost> */
ffa036d0:	18 91       	R0 = [P3];
ffa036d2:	07 50       	R0 = R7 + R0;
ffa036d4:	0d e1 34 0d 	P5.L = 0xd34;		/* (3380)	P5=0xff900d34 <_TcpSeqHost> */
ffa036d8:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c68 <_NetArpLut> */
ffa036dc:	28 93       	[P5] = R0;
ffa036de:	0c e1 58 0d 	P4.L = 0xd58;		/* (3416)	P4=0xff900d58 <_g_httpRxed> */
ffa036e2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa036e4:	80 4f       	R0 <<= 0x10;
ffa036e6:	21 91       	R1 = [P4];
ffa036e8:	00 e3 dc 02 	CALL 0xffa03ca0 <_httpResp>;
ffa036ec:	00 0c       	CC = R0 == 0x0;
ffa036ee:	22 1c       	IF CC JUMP 0xffa03732 <_tcp_rx+0x3b6> (BP);
ffa036f0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d40 <_TcpState> */
ffa036f4:	28 91       	R0 = [P5];
ffa036f6:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqHttpStart> */
ffa036fa:	10 93       	[P2] = R0;
ffa036fc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqHttpStart> */
ffa03700:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_g_httpHeaderLen> */
ffa03704:	11 91       	R1 = [P2];
ffa03706:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_g_httpHeaderLen> */
ffa0370a:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpContentLen> */
ffa0370e:	10 91       	R0 = [P2];
ffa03710:	41 50       	R1 = R1 + R0;
ffa03712:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03716:	00 e1 a8 05 	R0.L = 0x5a8;		/* (1448)	R0=0xff9005a8(-7338584) */
ffa0371a:	ff e3 b5 e9 	CALL 0xffa00a84 <_printf_int>;
ffa0371e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005a8(-7338584) */
ffa03722:	00 e1 68 0a 	R0.L = 0xa68;		/* (2664)	R0=0xff900a68(-7337368) */
ffa03726:	ff e3 ed e8 	CALL 0xffa00900 <_printf_str>;
ffa0372a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0372c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0372e:	ff e3 8f fd 	CALL 0xffa0324c <_tcp_burst>;
ffa03732:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03734:	20 93       	[P4] = R0;
ffa03736:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03738:	2f 2e       	JUMP.S 0xffa03396 <_tcp_rx+0x1a>;
ffa0373a:	18 91       	R0 = [P3];
ffa0373c:	18 0c       	CC = R0 == 0x3;
ffa0373e:	77 16       	IF !CC JUMP 0xffa0342c <_tcp_rx+0xb0> (BP);
ffa03740:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpContentLen> */
ffa03744:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03746:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpRxed> */
ffa0374a:	10 93       	[P2] = R0;
ffa0374c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0374e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpRxed> */
ffa03752:	f0 b0       	[SP + 0xc] = R0;
ffa03754:	0a e1 34 0d 	P2.L = 0xd34;		/* (3380)	P2=0xff900d34 <_TcpSeqHost> */
ffa03758:	10 91       	R0 = [P2];
ffa0375a:	14 32       	P2 = R4;
ffa0375c:	30 b1       	[SP + 0x10] = R0;
ffa0375e:	28 91       	R0 = [P5];
ffa03760:	70 b1       	[SP + 0x14] = R0;
ffa03762:	4f 30       	R1 = FP;
ffa03764:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03768:	12 91 00 00 
ffa0376c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0376e:	ff e3 43 fd 	CALL 0xffa031f4 <_tcp_packet_setup>;
ffa03772:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03776:	00 0d       	CC = R0 <= 0x0;
ffa03778:	5a 1a       	IF CC JUMP 0xffa0342c <_tcp_rx+0xb0>;
ffa0377a:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0377c:	96 2f       	JUMP.S 0xffa036a8 <_tcp_rx+0x32c>;
ffa0377e:	0e 30       	R1 = R6;
ffa03780:	00 e3 ba 04 	CALL 0xffa040f4 <_httpCollate>;
ffa03784:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03786:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d34 <_TcpSeqHost> */
ffa0378a:	f0 b0       	[SP + 0xc] = R0;
ffa0378c:	0a e1 34 0d 	P2.L = 0xd34;		/* (3380)	P2=0xff900d34 <_TcpSeqHost> */
ffa03790:	10 91       	R0 = [P2];
ffa03792:	14 32       	P2 = R4;
ffa03794:	30 b1       	[SP + 0x10] = R0;
ffa03796:	28 91       	R0 = [P5];
ffa03798:	70 b1       	[SP + 0x14] = R0;
ffa0379a:	4f 30       	R1 = FP;
ffa0379c:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa037a0:	12 91 00 00 
ffa037a4:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa037a6:	ff e3 27 fd 	CALL 0xffa031f4 <_tcp_packet_setup>;
ffa037aa:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa037ae:	00 0d       	CC = R0 <= 0x0;
ffa037b0:	b4 16       	IF !CC JUMP 0xffa03518 <_tcp_rx+0x19c> (BP);
ffa037b2:	f1 2d       	JUMP.S 0xffa03394 <_tcp_rx+0x18>;
ffa037b4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa037b8:	00 e1 78 05 	R0.L = 0x578;		/* (1400)	R0=0xff900578(-7338632) */
ffa037bc:	ff e3 a2 e8 	CALL 0xffa00900 <_printf_str>;
ffa037c0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa037c2:	ea 2d       	JUMP.S 0xffa03396 <_tcp_rx+0x1a>;
ffa037c4:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa037c8:	27 2e       	JUMP.S 0xffa03416 <_tcp_rx+0x9a>;
ffa037ca:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa037cc:	18 93       	[P3] = R0;
ffa037ce:	a0 a2       	R0 = [P4 + 0x28];
ffa037d0:	ff e3 10 f0 	CALL 0xffa017f0 <_htonl>;
ffa037d4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d34 <_TcpSeqHost> */
ffa037d8:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqClient> */
ffa037dc:	10 93       	[P2] = R0;
ffa037de:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa037e2:	00 e1 58 05 	R0.L = 0x558;		/* (1368)	R0=0xff900558(-7338664) */
ffa037e6:	ff e3 8d e8 	CALL 0xffa00900 <_printf_str>;
ffa037ea:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa037ec:	d5 2d       	JUMP.S 0xffa03396 <_tcp_rx+0x1a>;
	...

ffa037f0 <_htmlForm>:
ffa037f0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa037f4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa037f8:	02 e1 c4 05 	R2.L = 0x5c4;		/* (1476)	R2=0xff9005c4(-7338556) */
ffa037fc:	01 e8 00 00 	UNLINK;
ffa03800:	ff e2 58 ea 	JUMP.L 0xffa00cb0 <_strcpy_>;

ffa03804 <_htmlDiv>:
ffa03804:	12 43       	R2 = R2.B (X);
ffa03806:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa0380a:	1a 08       	CC = R2 == R3;
ffa0380c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03810:	09 18       	IF CC JUMP 0xffa03822 <_htmlDiv+0x1e>;
ffa03812:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005c4(-7338556) */
ffa03816:	02 e1 18 06 	R2.L = 0x618;		/* (1560)	R2=0xff900618(-7338472) */
ffa0381a:	01 e8 00 00 	UNLINK;
ffa0381e:	ff e2 49 ea 	JUMP.L 0xffa00cb0 <_strcpy_>;
ffa03822:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900618(-7338472) */
ffa03826:	02 e1 e4 05 	R2.L = 0x5e4;		/* (1508)	R2=0xff9005e4(-7338524) */
ffa0382a:	01 e8 00 00 	UNLINK;
ffa0382e:	ff e2 41 ea 	JUMP.L 0xffa00cb0 <_strcpy_>;
	...

ffa03834 <_html404>:
ffa03834:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03838:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0383a:	4f 30       	R1 = FP;
ffa0383c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005e4(-7338524) */
ffa03840:	f0 bb       	[FP -0x4] = R0;
ffa03842:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03844:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03848:	02 e1 4c 06 	R2.L = 0x64c;		/* (1612)	R2=0xff90064c(-7338420) */
ffa0384c:	ff e3 32 ea 	CALL 0xffa00cb0 <_strcpy_>;
ffa03850:	f0 b9       	R0 = [FP -0x4];
ffa03852:	01 e8 00 00 	UNLINK;
ffa03856:	10 00       	RTS;

ffa03858 <_htmlCursorOption>:
ffa03858:	68 05       	[--SP] = (R7:5);
ffa0385a:	2a 30       	R5 = R2;
ffa0385c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90064c(-7338420) */
ffa03860:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03864:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa03868:	3f a2 00 00 
ffa0386c:	02 e1 68 06 	R2.L = 0x668;		/* (1640)	R2=0xff900668(-7338392) */
ffa03870:	ff e3 20 ea 	CALL 0xffa00cb0 <_strcpy_>;
ffa03874:	0e 30       	R1 = R6;
ffa03876:	15 30       	R2 = R5;
ffa03878:	ff e3 82 eb 	CALL 0xffa00f7c <_strprintf_int>;
ffa0387c:	3d 08       	CC = R5 == R7;
ffa0387e:	16 18       	IF CC JUMP 0xffa038aa <_htmlCursorOption+0x52>;
ffa03880:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900668(-7338392) */
ffa03884:	0e 30       	R1 = R6;
ffa03886:	02 e1 90 06 	R2.L = 0x690;		/* (1680)	R2=0xff900690(-7338352) */
ffa0388a:	ff e3 13 ea 	CALL 0xffa00cb0 <_strcpy_>;
ffa0388e:	0e 30       	R1 = R6;
ffa03890:	15 30       	R2 = R5;
ffa03892:	ff e3 75 eb 	CALL 0xffa00f7c <_strprintf_int>;
ffa03896:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900690(-7338352) */
ffa0389a:	01 e8 00 00 	UNLINK;
ffa0389e:	0e 30       	R1 = R6;
ffa038a0:	02 e1 94 06 	R2.L = 0x694;		/* (1684)	R2=0xff900694(-7338348) */
ffa038a4:	28 05       	(R7:5) = [SP++];
ffa038a6:	ff e2 05 ea 	JUMP.L 0xffa00cb0 <_strcpy_>;
ffa038aa:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900694(-7338348) */
ffa038ae:	0e 30       	R1 = R6;
ffa038b0:	02 e1 78 06 	R2.L = 0x678;		/* (1656)	R2=0xff900678(-7338376) */
ffa038b4:	ff e3 fe e9 	CALL 0xffa00cb0 <_strcpy_>;
ffa038b8:	e4 2f       	JUMP.S 0xffa03880 <_htmlCursorOption+0x28>;
	...

ffa038bc <_htmlCursorSelect>:
ffa038bc:	60 05       	[--SP] = (R7:4);
ffa038be:	3a 30       	R7 = R2;
ffa038c0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900678(-7338376) */
ffa038c4:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa038c8:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa038cc:	7e a2 00 00 
ffa038d0:	02 e1 a0 06 	R2.L = 0x6a0;		/* (1696)	R2=0xff9006a0(-7338336) */
ffa038d4:	bc a2       	R4 = [FP + 0x28];
ffa038d6:	ff e3 ed e9 	CALL 0xffa00cb0 <_strcpy_>;
ffa038da:	17 30       	R2 = R7;
ffa038dc:	0d 30       	R1 = R5;
ffa038de:	ff e3 e9 e9 	CALL 0xffa00cb0 <_strcpy_>;
ffa038e2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006a0(-7338336) */
ffa038e6:	0d 30       	R1 = R5;
ffa038e8:	02 e1 ac 06 	R2.L = 0x6ac;		/* (1708)	R2=0xff9006ac(-7338324) */
ffa038ec:	ff e3 e2 e9 	CALL 0xffa00cb0 <_strcpy_>;
ffa038f0:	0d 30       	R1 = R5;
ffa038f2:	16 30       	R2 = R6;
ffa038f4:	ff e3 de e9 	CALL 0xffa00cb0 <_strcpy_>;
ffa038f8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006ac(-7338324) */
ffa038fc:	0d 30       	R1 = R5;
ffa038fe:	02 e1 c8 06 	R2.L = 0x6c8;		/* (1736)	R2=0xff9006c8(-7338296) */
ffa03902:	ff e3 d7 e9 	CALL 0xffa00cb0 <_strcpy_>;
ffa03906:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03908:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa0390c:	f4 b0 00 00 
ffa03910:	17 30       	R2 = R7;
ffa03912:	ff e3 a3 ff 	CALL 0xffa03858 <_htmlCursorOption>;
ffa03916:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03918:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa0391a:	0f 08       	CC = R7 == R1;
ffa0391c:	f6 17       	IF !CC JUMP 0xffa03908 <_htmlCursorSelect+0x4c> (BP);
ffa0391e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c8(-7338296) */
ffa03922:	01 e8 00 00 	UNLINK;
ffa03926:	0d 30       	R1 = R5;
ffa03928:	02 e1 cc 06 	R2.L = 0x6cc;		/* (1740)	R2=0xff9006cc(-7338292) */
ffa0392c:	20 05       	(R7:4) = [SP++];
ffa0392e:	ff e2 c1 e9 	JUMP.L 0xffa00cb0 <_strcpy_>;
	...

ffa03934 <_htmlDefault>:
ffa03934:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03936:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0393a:	77 30       	R6 = FP;
ffa0393c:	e6 67       	R6 += -0x4;		/* ( -4) */
ffa0393e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03940:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006cc(-7338292) */
ffa03944:	f0 bb       	[FP -0x4] = R0;
ffa03946:	0e 30       	R1 = R6;
ffa03948:	02 e1 e4 06 	R2.L = 0x6e4;		/* (1764)	R2=0xff9006e4(-7338268) */
ffa0394c:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03950:	ff e3 b0 e9 	CALL 0xffa00cb0 <_strcpy_>;
ffa03954:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03958:	0e 30       	R1 = R6;
ffa0395a:	ff e3 55 ff 	CALL 0xffa03804 <_htmlDiv>;
ffa0395e:	0e 30       	R1 = R6;
ffa03960:	ff e3 48 ff 	CALL 0xffa037f0 <_htmlForm>;
ffa03964:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03968:	0e 30       	R1 = R6;
ffa0396a:	02 e1 34 07 	R2.L = 0x734;		/* (1844)	R2=0xff900734(-7338188) */
ffa0396e:	ff e3 a1 e9 	CALL 0xffa00cb0 <_strcpy_>;
ffa03972:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqClient> */
ffa03976:	0a e1 b4 0b 	P2.L = 0xbb4;		/* (2996)	P2=0xff900bb4 <_g_streamEnabled> */
ffa0397a:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa0397e:	10 99 00 00 
ffa03982:	00 0c       	CC = R0 == 0x0;
ffa03984:	2c 1d       	IF CC JUMP 0xffa03bdc <_htmlDefault+0x2a8> (BP);
ffa03986:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900734(-7338188) */
ffa0398a:	01 30       	R0 = R1;
ffa0398c:	02 e1 84 07 	R2.L = 0x784;		/* (1924)	R2=0xff900784(-7338108) */
ffa03990:	0e 30       	R1 = R6;
ffa03992:	ff e3 8f e9 	CALL 0xffa00cb0 <_strcpy_>;
ffa03996:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900784(-7338108) */
ffa0399a:	0e 30       	R1 = R6;
ffa0399c:	02 e1 9c 07 	R2.L = 0x79c;		/* (1948)	R2=0xff90079c(-7338084) */
ffa039a0:	ff e3 88 e9 	CALL 0xffa00cb0 <_strcpy_>;
ffa039a4:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa039a8:	0e 30       	R1 = R6;
ffa039aa:	ff e3 2d ff 	CALL 0xffa03804 <_htmlDiv>;
ffa039ae:	0e 30       	R1 = R6;
ffa039b0:	ff e3 20 ff 	CALL 0xffa037f0 <_htmlForm>;
ffa039b4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa039b8:	0e 30       	R1 = R6;
ffa039ba:	02 e1 b0 07 	R2.L = 0x7b0;		/* (1968)	R2=0xff9007b0(-7338064) */
ffa039be:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d34 <_TcpSeqHost> */
ffa039c2:	ff e3 77 e9 	CALL 0xffa00cb0 <_strcpy_>;
ffa039c6:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa039c8:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa039ca:	0d e1 60 0c 	P5.L = 0xc60;		/* (3168)	P5=0xff900c60 <_NetDataDestIP> */
ffa039ce:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007b0(-7338064) */
ffa039d2:	0e 30       	R1 = R6;
ffa039d4:	02 e1 cc 07 	R2.L = 0x7cc;		/* (1996)	R2=0xff9007cc(-7338036) */
ffa039d8:	ff e3 6c e9 	CALL 0xffa00cb0 <_strcpy_>;
ffa039dc:	17 30       	R2 = R7;
ffa039de:	0e 30       	R1 = R6;
ffa039e0:	ff e3 ce ea 	CALL 0xffa00f7c <_strprintf_int>;
ffa039e4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007cc(-7338036) */
ffa039e8:	0e 30       	R1 = R6;
ffa039ea:	02 e1 e8 07 	R2.L = 0x7e8;		/* (2024)	R2=0xff9007e8(-7338008) */
ffa039ee:	ff e3 61 e9 	CALL 0xffa00cb0 <_strcpy_>;
ffa039f2:	2a 91       	R2 = [P5];
ffa039f4:	6a 40       	R2 >>= R5;
ffa039f6:	52 43       	R2 = R2.B (Z);
ffa039f8:	0e 30       	R1 = R6;
ffa039fa:	ff e3 c1 ea 	CALL 0xffa00f7c <_strprintf_int>;
ffa039fe:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007e8(-7338008) */
ffa03a02:	0e 30       	R1 = R6;
ffa03a04:	02 e1 fc 07 	R2.L = 0x7fc;		/* (2044)	R2=0xff9007fc(-7337988) */
ffa03a08:	ff e3 54 e9 	CALL 0xffa00cb0 <_strcpy_>;
ffa03a0c:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03a0e:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03a10:	0f 08       	CC = R7 == R1;
ffa03a12:	45 64       	R5 += 0x8;		/* (  8) */
ffa03a14:	dd 17       	IF !CC JUMP 0xffa039ce <_htmlDefault+0x9a> (BP);
ffa03a16:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007fc(-7337988) */
ffa03a1a:	0e 30       	R1 = R6;
ffa03a1c:	02 e1 04 08 	R2.L = 0x804;		/* (2052)	R2=0xff900804(-7337980) */
ffa03a20:	ff e3 48 e9 	CALL 0xffa00cb0 <_strcpy_>;
ffa03a24:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900804(-7337980) */
ffa03a28:	0e 30       	R1 = R6;
ffa03a2a:	02 e1 9c 07 	R2.L = 0x79c;		/* (1948)	R2=0xff90079c(-7338084) */
ffa03a2e:	ff e3 41 e9 	CALL 0xffa00cb0 <_strcpy_>;
ffa03a32:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03a36:	0e 30       	R1 = R6;
ffa03a38:	ff e3 e6 fe 	CALL 0xffa03804 <_htmlDiv>;
ffa03a3c:	0e 30       	R1 = R6;
ffa03a3e:	ff e3 d9 fe 	CALL 0xffa037f0 <_htmlForm>;
ffa03a42:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03a46:	0e 30       	R1 = R6;
ffa03a48:	02 e1 28 08 	R2.L = 0x828;		/* (2088)	R2=0xff900828(-7337944) */
ffa03a4c:	ff e3 32 e9 	CALL 0xffa00cb0 <_strcpy_>;
ffa03a50:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bb4 */
ffa03a54:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03a58:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03a5c:	10 99 00 00 
ffa03a60:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03a62:	c6 1c       	IF CC JUMP 0xffa03bee <_htmlDefault+0x2ba> (BP);
ffa03a64:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900828(-7337944) */
ffa03a68:	01 30       	R0 = R1;
ffa03a6a:	02 e1 90 07 	R2.L = 0x790;		/* (1936)	R2=0xff900790(-7338096) */
ffa03a6e:	0e 30       	R1 = R6;
ffa03a70:	ff e3 20 e9 	CALL 0xffa00cb0 <_strcpy_>;
ffa03a74:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900790(-7338096) */
ffa03a78:	0e 30       	R1 = R6;
ffa03a7a:	02 e1 9c 07 	R2.L = 0x79c;		/* (1948)	R2=0xff90079c(-7338084) */
ffa03a7e:	ff e3 19 e9 	CALL 0xffa00cb0 <_strcpy_>;
ffa03a82:	0e 30       	R1 = R6;
ffa03a84:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03a88:	ff e3 be fe 	CALL 0xffa03804 <_htmlDiv>;
ffa03a8c:	0e 30       	R1 = R6;
ffa03a8e:	ff e3 b1 fe 	CALL 0xffa037f0 <_htmlForm>;
ffa03a92:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03a96:	0e 30       	R1 = R6;
ffa03a98:	02 e1 68 08 	R2.L = 0x868;		/* (2152)	R2=0xff900868(-7337880) */
ffa03a9c:	ff e3 0a e9 	CALL 0xffa00cb0 <_strcpy_>;
ffa03aa0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa03aa4:	01 e1 98 08 	R1.L = 0x898;		/* (2200)	R1=0xff900898(-7337832) */
ffa03aa8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900868(-7337880) */
ffa03aac:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa03ab0:	f1 b0 00 00 
ffa03ab4:	02 e1 8c 08 	R2.L = 0x88c;		/* (2188)	R2=0xff90088c(-7337844) */
ffa03ab8:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03abc:	37 b1 00 00 
ffa03ac0:	ff e3 fe fe 	CALL 0xffa038bc <_htmlCursorSelect>;
ffa03ac4:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900898(-7337832) */
ffa03ac8:	01 e1 b0 08 	R1.L = 0x8b0;		/* (2224)	R1=0xff9008b0(-7337808) */
ffa03acc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90088c(-7337844) */
ffa03ad0:	f1 b0       	[SP + 0xc] = R1;
ffa03ad2:	02 e1 a4 08 	R2.L = 0x8a4;		/* (2212)	R2=0xff9008a4(-7337820) */
ffa03ad6:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03ada:	37 b1 00 00 
ffa03ade:	ff e3 ef fe 	CALL 0xffa038bc <_htmlCursorSelect>;
ffa03ae2:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008b0(-7337808) */
ffa03ae6:	01 e1 c8 08 	R1.L = 0x8c8;		/* (2248)	R1=0xff9008c8(-7337784) */
ffa03aea:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a4(-7337820) */
ffa03aee:	f1 b0       	[SP + 0xc] = R1;
ffa03af0:	02 e1 bc 08 	R2.L = 0x8bc;		/* (2236)	R2=0xff9008bc(-7337796) */
ffa03af4:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03af8:	37 b1 00 00 
ffa03afc:	ff e3 e0 fe 	CALL 0xffa038bc <_htmlCursorSelect>;
ffa03b00:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008c8(-7337784) */
ffa03b04:	01 e1 dc 08 	R1.L = 0x8dc;		/* (2268)	R1=0xff9008dc(-7337764) */
ffa03b08:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008bc(-7337796) */
ffa03b0c:	f1 b0       	[SP + 0xc] = R1;
ffa03b0e:	02 e1 d4 08 	R2.L = 0x8d4;		/* (2260)	R2=0xff9008d4(-7337772) */
ffa03b12:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03b16:	37 b1 00 00 
ffa03b1a:	ff e3 d1 fe 	CALL 0xffa038bc <_htmlCursorSelect>;
ffa03b1e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008d4(-7337772) */
ffa03b22:	0e 30       	R1 = R6;
ffa03b24:	02 e1 e8 08 	R2.L = 0x8e8;		/* (2280)	R2=0xff9008e8(-7337752) */
ffa03b28:	ff e3 c4 e8 	CALL 0xffa00cb0 <_strcpy_>;
ffa03b2c:	0e 30       	R1 = R6;
ffa03b2e:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03b32:	ff e3 69 fe 	CALL 0xffa03804 <_htmlDiv>;
ffa03b36:	0e 30       	R1 = R6;
ffa03b38:	ff e3 5c fe 	CALL 0xffa037f0 <_htmlForm>;
ffa03b3c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03b40:	0e 30       	R1 = R6;
ffa03b42:	02 e1 24 09 	R2.L = 0x924;		/* (2340)	R2=0xff900924(-7337692) */
ffa03b46:	ff e3 b5 e8 	CALL 0xffa00cb0 <_strcpy_>;
ffa03b4a:	0e 30       	R1 = R6;
ffa03b4c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03b50:	ff e3 5a fe 	CALL 0xffa03804 <_htmlDiv>;
ffa03b54:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03b58:	0e 30       	R1 = R6;
ffa03b5a:	02 e1 7c 09 	R2.L = 0x97c;		/* (2428)	R2=0xff90097c(-7337604) */
ffa03b5e:	ff e3 a9 e8 	CALL 0xffa00cb0 <_strcpy_>;
ffa03b62:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90097c(-7337604) */
ffa03b66:	0e 30       	R1 = R6;
ffa03b68:	02 e1 a4 09 	R2.L = 0x9a4;		/* (2468)	R2=0xff9009a4(-7337564) */
ffa03b6c:	ff e3 a2 e8 	CALL 0xffa00cb0 <_strcpy_>;
ffa03b70:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009a4(-7337564) */
ffa03b74:	0e 30       	R1 = R6;
ffa03b76:	02 e1 9c 07 	R2.L = 0x79c;		/* (1948)	R2=0xff90079c(-7338084) */
ffa03b7a:	ff e3 9b e8 	CALL 0xffa00cb0 <_strcpy_>;
ffa03b7e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90079c(-7338084) */
ffa03b82:	0e 30       	R1 = R6;
ffa03b84:	02 e1 ec 09 	R2.L = 0x9ec;		/* (2540)	R2=0xff9009ec(-7337492) */
ffa03b88:	ff e3 94 e8 	CALL 0xffa00cb0 <_strcpy_>;
ffa03b8c:	0e 30       	R1 = R6;
ffa03b8e:	22 e1 75 ff 	R2 = -0x8b (X);		/*		R2=0xffffff75(-139) */
ffa03b92:	ff e3 f5 e9 	CALL 0xffa00f7c <_strprintf_int>;
ffa03b96:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ff75(-7274635) */
ffa03b9a:	0e 30       	R1 = R6;
ffa03b9c:	02 e1 34 00 	R2.L = 0x34;		/* ( 52)	R2=0xff900034(-7339980) */
ffa03ba0:	ff e3 88 e8 	CALL 0xffa00cb0 <_strcpy_>;
ffa03ba4:	0e 30       	R1 = R6;
ffa03ba6:	92 62       	R2 = -0x2e (X);		/*		R2=0xffffffd2(-46) */
ffa03ba8:	ff e3 ea e9 	CALL 0xffa00f7c <_strprintf_int>;
ffa03bac:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ffd2(-7274542) */
ffa03bb0:	0e 30       	R1 = R6;
ffa03bb2:	02 e1 0c 00 	R2.L = 0xc;		/* ( 12)	R2=0xff90000c(-7340020) */
ffa03bb6:	ff e3 7d e8 	CALL 0xffa00cb0 <_strcpy_>;
ffa03bba:	0e 30       	R1 = R6;
ffa03bbc:	22 e1 d0 fd 	R2 = -0x230 (X);		/*		R2=0xfffffdd0(-560) */
ffa03bc0:	ff e3 de e9 	CALL 0xffa00f7c <_strprintf_int>;
ffa03bc4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90fdd0(-7275056) */
ffa03bc8:	0e 30       	R1 = R6;
ffa03bca:	02 e1 f8 09 	R2.L = 0x9f8;		/* (2552)	R2=0xff9009f8(-7337480) */
ffa03bce:	ff e3 71 e8 	CALL 0xffa00cb0 <_strcpy_>;
ffa03bd2:	f0 b9       	R0 = [FP -0x4];
ffa03bd4:	01 e8 00 00 	UNLINK;
ffa03bd8:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03bda:	10 00       	RTS;
ffa03bdc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009f8(-7337480) */
ffa03be0:	01 30       	R0 = R1;
ffa03be2:	02 e1 90 07 	R2.L = 0x790;		/* (1936)	R2=0xff900790(-7338096) */
ffa03be6:	0e 30       	R1 = R6;
ffa03be8:	ff e3 64 e8 	CALL 0xffa00cb0 <_strcpy_>;
ffa03bec:	d5 2e       	JUMP.S 0xffa03996 <_htmlDefault+0x62>;
ffa03bee:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900790(-7338096) */
ffa03bf2:	01 30       	R0 = R1;
ffa03bf4:	02 e1 84 07 	R2.L = 0x784;		/* (1924)	R2=0xff900784(-7338108) */
ffa03bf8:	0e 30       	R1 = R6;
ffa03bfa:	ff e3 5b e8 	CALL 0xffa00cb0 <_strcpy_>;
ffa03bfe:	3b 2f       	JUMP.S 0xffa03a74 <_htmlDefault+0x140>;

ffa03c00 <_httpHeader>:
ffa03c00:	78 05       	[--SP] = (R7:7);
ffa03c02:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03c06:	7f 30       	R7 = FP;
ffa03c08:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03c0a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c0c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900784(-7338108) */
ffa03c10:	f0 bb       	[FP -0x4] = R0;
ffa03c12:	0f 30       	R1 = R7;
ffa03c14:	02 e1 10 0a 	R2.L = 0xa10;		/* (2576)	R2=0xff900a10(-7337456) */
ffa03c18:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03c1c:	ff e3 4a e8 	CALL 0xffa00cb0 <_strcpy_>;
ffa03c20:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a10(-7337456) */
ffa03c24:	0f 30       	R1 = R7;
ffa03c26:	02 e1 24 0a 	R2.L = 0xa24;		/* (2596)	R2=0xff900a24(-7337436) */
ffa03c2a:	ff e3 43 e8 	CALL 0xffa00cb0 <_strcpy_>;
ffa03c2e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a24(-7337436) */
ffa03c32:	0f 30       	R1 = R7;
ffa03c34:	02 e1 38 0a 	R2.L = 0xa38;		/* (2616)	R2=0xff900a38(-7337416) */
ffa03c38:	ff e3 3c e8 	CALL 0xffa00cb0 <_strcpy_>;
ffa03c3c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa03c40:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpContentLen> */
ffa03c44:	12 91       	R2 = [P2];
ffa03c46:	0f 30       	R1 = R7;
ffa03c48:	ff e3 9a e9 	CALL 0xffa00f7c <_strprintf_int>;
ffa03c4c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a38(-7337416) */
ffa03c50:	0f 30       	R1 = R7;
ffa03c52:	02 e1 4c 0a 	R2.L = 0xa4c;		/* (2636)	R2=0xff900a4c(-7337396) */
ffa03c56:	ff e3 2d e8 	CALL 0xffa00cb0 <_strcpy_>;
ffa03c5a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpContentLen> */
ffa03c5e:	f0 b9       	R0 = [FP -0x4];
ffa03c60:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_g_httpHeaderLen> */
ffa03c64:	10 93       	[P2] = R0;
ffa03c66:	01 e8 00 00 	UNLINK;
ffa03c6a:	38 05       	(R7:7) = [SP++];
ffa03c6c:	10 00       	RTS;
	...

ffa03c70 <_htmlGeneric>:
ffa03c70:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03c74:	10 30       	R2 = R0;
ffa03c76:	4f 30       	R1 = FP;
ffa03c78:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c7a:	f0 bb       	[FP -0x4] = R0;
ffa03c7c:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03c7e:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03c82:	ff e3 17 e8 	CALL 0xffa00cb0 <_strcpy_>;
ffa03c86:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_g_httpHeaderLen> */
ffa03c8a:	f0 b9       	R0 = [FP -0x4];
ffa03c8c:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpContentLen> */
ffa03c90:	10 93       	[P2] = R0;
ffa03c92:	ff e3 b7 ff 	CALL 0xffa03c00 <_httpHeader>;
ffa03c96:	f0 b9       	R0 = [FP -0x4];
ffa03c98:	01 e8 00 00 	UNLINK;
ffa03c9c:	10 00       	RTS;
	...

ffa03ca0 <_httpResp>:
ffa03ca0:	60 05       	[--SP] = (R7:4);
ffa03ca2:	30 30       	R6 = R0;
ffa03ca4:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa03ca6:	01 09       	CC = R1 <= R0;
ffa03ca8:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa03cac:	39 30       	R7 = R1;
ffa03cae:	21 10       	IF !CC JUMP 0xffa03cf0 <_httpResp+0x50>;
ffa03cb0:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa03cb2:	0f 09       	CC = R7 <= R1;
ffa03cb4:	34 10       	IF !CC JUMP 0xffa03d1c <_httpResp+0x7c>;
ffa03cb6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa03cba:	00 e1 08 0a 	R0.L = 0xa08;		/* (2568)	R0=0xff900a08(-7337464) */
ffa03cbe:	0e 30       	R1 = R6;
ffa03cc0:	17 30       	R2 = R7;
ffa03cc2:	ff e3 65 e8 	CALL 0xffa00d8c <_substr>;
ffa03cc6:	00 0c       	CC = R0 == 0x0;
ffa03cc8:	06 10       	IF !CC JUMP 0xffa03cd4 <_httpResp+0x34>;
ffa03cca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ccc:	01 e8 00 00 	UNLINK;
ffa03cd0:	20 05       	(R7:4) = [SP++];
ffa03cd2:	10 00       	RTS;
ffa03cd4:	ff e3 b0 fd 	CALL 0xffa03834 <_html404>;
ffa03cd8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpContentLen> */
ffa03cdc:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpContentLen> */
ffa03ce0:	10 93       	[P2] = R0;
ffa03ce2:	ff e3 8f ff 	CALL 0xffa03c00 <_httpHeader>;
ffa03ce6:	01 e8 00 00 	UNLINK;
ffa03cea:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03cec:	20 05       	(R7:4) = [SP++];
ffa03cee:	10 00       	RTS;
ffa03cf0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa03cf4:	06 30       	R0 = R6;
ffa03cf6:	01 e1 6c 0a 	R1.L = 0xa6c;		/* (2668)	R1=0xff900a6c(-7337364) */
ffa03cfa:	ff e3 1b e8 	CALL 0xffa00d30 <_strcmp>;
ffa03cfe:	00 0c       	CC = R0 == 0x0;
ffa03d00:	d8 1f       	IF CC JUMP 0xffa03cb0 <_httpResp+0x10> (BP);
ffa03d02:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03d06:	00 e1 08 0a 	R0.L = 0xa08;		/* (2568)	R0=0xff900a08(-7337464) */
ffa03d0a:	0e 30       	R1 = R6;
ffa03d0c:	17 30       	R2 = R7;
ffa03d0e:	ff e3 3f e8 	CALL 0xffa00d8c <_substr>;
ffa03d12:	00 0c       	CC = R0 == 0x0;
ffa03d14:	db 1f       	IF CC JUMP 0xffa03cca <_httpResp+0x2a> (BP);
ffa03d16:	ff e3 0f fe 	CALL 0xffa03934 <_htmlDefault>;
ffa03d1a:	df 2f       	JUMP.S 0xffa03cd8 <_httpResp+0x38>;
ffa03d1c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a08(-7337464) */
ffa03d20:	00 e1 78 0a 	R0.L = 0xa78;		/* (2680)	R0=0xff900a78(-7337352) */
ffa03d24:	0e 30       	R1 = R6;
ffa03d26:	17 30       	R2 = R7;
ffa03d28:	ff e3 32 e8 	CALL 0xffa00d8c <_substr>;
ffa03d2c:	00 0c       	CC = R0 == 0x0;
ffa03d2e:	3c 1c       	IF CC JUMP 0xffa03da6 <_httpResp+0x106> (BP);
ffa03d30:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a78(-7337352) */
ffa03d34:	00 e1 84 0a 	R0.L = 0xa84;		/* (2692)	R0=0xff900a84(-7337340) */
ffa03d38:	0e 30       	R1 = R6;
ffa03d3a:	17 30       	R2 = R7;
ffa03d3c:	ff e3 28 e8 	CALL 0xffa00d8c <_substr>;
ffa03d40:	00 0c       	CC = R0 == 0x0;
ffa03d42:	c4 1f       	IF CC JUMP 0xffa03cca <_httpResp+0x2a> (BP);
ffa03d44:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa03d46:	06 50       	R0 = R6 + R0;
ffa03d48:	ff e3 42 e9 	CALL 0xffa00fcc <_atoi>;
ffa03d4c:	08 30       	R1 = R0;
ffa03d4e:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa03d52:	00 67       	R0 += -0x20;		/* (-32) */
ffa03d54:	10 0a       	CC = R0 <= R2 (IU);
ffa03d56:	24 11       	IF !CC JUMP 0xffa03f9e <_httpResp+0x2fe>;
ffa03d58:	82 c6 19 84 	R2 = R1 << 0x3;
ffa03d5c:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800d54 */
ffa03d60:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03d64:	02 0d       	CC = R2 <= 0x0;
ffa03d66:	13 91       	R3 = [P2];
ffa03d68:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa03d6c:	14 18       	IF CC JUMP 0xffa03d94 <_httpResp+0xf4>;
ffa03d6e:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa03d72:	28 4f       	R0 <<= 0x5;
ffa03d74:	03 54       	R0 = R3 & R0;
ffa03d76:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa03d78:	38 52       	R0 = R0 - R7;
ffa03d7a:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa03d7e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03d80:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa03d84:	18 54       	R0 = R0 & R3;
ffa03d86:	10 32       	P2 = R0;
ffa03d88:	09 64       	R1 += 0x1;		/* (  1) */
ffa03d8a:	0a 08       	CC = R2 == R1;
ffa03d8c:	10 90       	R0 = [P2++];
ffa03d8e:	08 92       	[P1++] = R0;
ffa03d90:	42 30       	R0 = P2;
ffa03d92:	f9 17       	IF !CC JUMP 0xffa03d84 <_httpResp+0xe4> (BP);
ffa03d94:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900804 */
ffa03d98:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpContentLen> */
ffa03d9c:	17 93       	[P2] = R7;
ffa03d9e:	ff e3 31 ff 	CALL 0xffa03c00 <_httpHeader>;
ffa03da2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03da4:	94 2f       	JUMP.S 0xffa03ccc <_httpResp+0x2c>;
ffa03da6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03daa:	00 e1 b8 0a 	R0.L = 0xab8;		/* (2744)	R0=0xff900ab8(-7337288) */
ffa03dae:	0e 30       	R1 = R6;
ffa03db0:	17 30       	R2 = R7;
ffa03db2:	ff e3 ed e7 	CALL 0xffa00d8c <_substr>;
ffa03db6:	00 0c       	CC = R0 == 0x0;
ffa03db8:	7f 1f       	IF CC JUMP 0xffa03cb6 <_httpResp+0x16> (BP);
ffa03dba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ab8(-7337288) */
ffa03dbe:	0e 30       	R1 = R6;
ffa03dc0:	17 30       	R2 = R7;
ffa03dc2:	00 e1 b8 0a 	R0.L = 0xab8;		/* (2744)	R0=0xff900ab8(-7337288) */
ffa03dc6:	ff e3 e3 e7 	CALL 0xffa00d8c <_substr>;
ffa03dca:	86 51       	R6 = R6 + R0;
ffa03dcc:	47 53       	R5 = R7 - R0;
ffa03dce:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ab8(-7337288) */
ffa03dd2:	00 e1 c0 0a 	R0.L = 0xac0;		/* (2752)	R0=0xff900ac0(-7337280) */
ffa03dd6:	0e 30       	R1 = R6;
ffa03dd8:	15 30       	R2 = R5;
ffa03dda:	ff e3 d9 e7 	CALL 0xffa00d8c <_substr>;
ffa03dde:	00 0c       	CC = R0 == 0x0;
ffa03de0:	10 11       	IF !CC JUMP 0xffa04000 <_httpResp+0x360>;
ffa03de2:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03de4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ac0(-7337280) */
ffa03de8:	00 e1 e4 0a 	R0.L = 0xae4;		/* (2788)	R0=0xff900ae4(-7337244) */
ffa03dec:	0e 30       	R1 = R6;
ffa03dee:	15 30       	R2 = R5;
ffa03df0:	ff e3 ce e7 	CALL 0xffa00d8c <_substr>;
ffa03df4:	00 0c       	CC = R0 == 0x0;
ffa03df6:	e2 10       	IF !CC JUMP 0xffa03fba <_httpResp+0x31a>;
ffa03df8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ae4(-7337244) */
ffa03dfc:	0e 30       	R1 = R6;
ffa03dfe:	00 e1 f0 0a 	R0.L = 0xaf0;		/* (2800)	R0=0xff900af0(-7337232) */
ffa03e02:	15 30       	R2 = R5;
ffa03e04:	ff e3 c4 e7 	CALL 0xffa00d8c <_substr>;
ffa03e08:	00 0c       	CC = R0 == 0x0;
ffa03e0a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900af0(-7337232) */
ffa03e0e:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03e10:	0e 30       	R1 = R6;
ffa03e12:	15 30       	R2 = R5;
ffa03e14:	00 e1 fc 0a 	R0.L = 0xafc;		/* (2812)	R0=0xff900afc(-7337220) */
ffa03e18:	27 06       	IF !CC R4 = R7;
ffa03e1a:	ff e3 b9 e7 	CALL 0xffa00d8c <_substr>;
ffa03e1e:	00 0c       	CC = R0 == 0x0;
ffa03e20:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900afc(-7337220) */
ffa03e24:	0e 30       	R1 = R6;
ffa03e26:	15 30       	R2 = R5;
ffa03e28:	00 e1 08 0b 	R0.L = 0xb08;		/* (2824)	R0=0xff900b08(-7337208) */
ffa03e2c:	27 06       	IF !CC R4 = R7;
ffa03e2e:	ff e3 af e7 	CALL 0xffa00d8c <_substr>;
ffa03e32:	00 0c       	CC = R0 == 0x0;
ffa03e34:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b08(-7337208) */
ffa03e38:	0e 30       	R1 = R6;
ffa03e3a:	15 30       	R2 = R5;
ffa03e3c:	00 e1 14 0b 	R0.L = 0xb14;		/* (2836)	R0=0xff900b14(-7337196) */
ffa03e40:	27 06       	IF !CC R4 = R7;
ffa03e42:	ff e3 a5 e7 	CALL 0xffa00d8c <_substr>;
ffa03e46:	00 0c       	CC = R0 == 0x0;
ffa03e48:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b14(-7337196) */
ffa03e4c:	00 e1 20 0b 	R0.L = 0xb20;		/* (2848)	R0=0xff900b20(-7337184) */
ffa03e50:	0e 30       	R1 = R6;
ffa03e52:	15 30       	R2 = R5;
ffa03e54:	27 06       	IF !CC R4 = R7;
ffa03e56:	ff e3 9b e7 	CALL 0xffa00d8c <_substr>;
ffa03e5a:	00 0c       	CC = R0 == 0x0;
ffa03e5c:	15 11       	IF !CC JUMP 0xffa04086 <_httpResp+0x3e6>;
ffa03e5e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b20(-7337184) */
ffa03e62:	00 e1 28 0b 	R0.L = 0xb28;		/* (2856)	R0=0xff900b28(-7337176) */
ffa03e66:	0e 30       	R1 = R6;
ffa03e68:	15 30       	R2 = R5;
ffa03e6a:	ff e3 91 e7 	CALL 0xffa00d8c <_substr>;
ffa03e6e:	00 0c       	CC = R0 == 0x0;
ffa03e70:	f6 10       	IF !CC JUMP 0xffa0405c <_httpResp+0x3bc>;
ffa03e72:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b28(-7337176) */
ffa03e76:	00 e1 30 0b 	R0.L = 0xb30;		/* (2864)	R0=0xff900b30(-7337168) */
ffa03e7a:	0e 30       	R1 = R6;
ffa03e7c:	15 30       	R2 = R5;
ffa03e7e:	ff e3 87 e7 	CALL 0xffa00d8c <_substr>;
ffa03e82:	00 0c       	CC = R0 == 0x0;
ffa03e84:	13 11       	IF !CC JUMP 0xffa040aa <_httpResp+0x40a>;
ffa03e86:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b30(-7337168) */
ffa03e8a:	00 e1 38 0b 	R0.L = 0xb38;		/* (2872)	R0=0xff900b38(-7337160) */
ffa03e8e:	0e 30       	R1 = R6;
ffa03e90:	15 30       	R2 = R5;
ffa03e92:	ff e3 7d e7 	CALL 0xffa00d8c <_substr>;
ffa03e96:	00 0c       	CC = R0 == 0x0;
ffa03e98:	d1 10       	IF !CC JUMP 0xffa0403a <_httpResp+0x39a>;
ffa03e9a:	20 43       	R0 = R4.B (X);
ffa03e9c:	00 0c       	CC = R0 == 0x0;
ffa03e9e:	3c 17       	IF !CC JUMP 0xffa03d16 <_httpResp+0x76> (BP);
ffa03ea0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b38(-7337160) */
ffa03ea4:	00 e1 40 0b 	R0.L = 0xb40;		/* (2880)	R0=0xff900b40(-7337152) */
ffa03ea8:	0e 30       	R1 = R6;
ffa03eaa:	15 30       	R2 = R5;
ffa03eac:	ff e3 70 e7 	CALL 0xffa00d8c <_substr>;
ffa03eb0:	00 0c       	CC = R0 == 0x0;
ffa03eb2:	0c 1b       	IF CC JUMP 0xffa03cca <_httpResp+0x2a>;
ffa03eb4:	7f 30       	R7 = FP;
ffa03eb6:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03eba:	57 5a       	P1 = FP + P2;
ffa03ebc:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03ebe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ec0:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa03ec2:	b2 e0 02 20 	LSETUP(0xffa03ec6 <_httpResp+0x226>, 0xffa03ec6 <_httpResp+0x226>) LC1 = P2;
ffa03ec6:	08 92       	[P1++] = R0;
ffa03ec8:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa03ecc:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03ed0:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa03ed4:	29 4f       	R1 <<= 0x5;
ffa03ed6:	10 91       	R0 = [P2];
ffa03ed8:	08 54       	R0 = R0 & R1;
ffa03eda:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03edc:	81 4f       	R1 <<= 0x10;
ffa03ede:	08 50       	R0 = R0 + R1;
ffa03ee0:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03ee2:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa03ee6:	88 54       	R2 = R0 & R1;
ffa03ee8:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa03eec:	b2 e0 12 10 	LSETUP(0xffa03ef0 <_httpResp+0x250>, 0xffa03f10 <_httpResp+0x270>) LC1 = P1;
ffa03ef0:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03ef4:	97 5a       	P2 = FP + P2;
ffa03ef6:	02 32       	P0 = R2;
ffa03ef8:	11 91       	R1 = [P2];
ffa03efa:	12 64       	R2 += 0x2;		/* (  2) */
ffa03efc:	00 94       	R0 = W[P0++] (Z);
ffa03efe:	41 50       	R1 = R1 + R0;
ffa03f00:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03f02:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa03f06:	11 92       	[P2++] = R1;
ffa03f08:	82 54       	R2 = R2 & R0;
ffa03f0a:	42 30       	R0 = P2;
ffa03f0c:	38 08       	CC = R0 == R7;
ffa03f0e:	f4 17       	IF !CC JUMP 0xffa03ef6 <_httpResp+0x256> (BP);
ffa03f10:	00 00       	NOP;
ffa03f12:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03f16:	97 5a       	P2 = FP + P2;
ffa03f18:	00 00       	NOP;
ffa03f1a:	10 91       	R0 = [P2];
ffa03f1c:	58 4d       	R0 >>>= 0xb;
ffa03f1e:	10 92       	[P2++] = R0;
ffa03f20:	4a 30       	R1 = P2;
ffa03f22:	39 08       	CC = R1 == R7;
ffa03f24:	fa 17       	IF !CC JUMP 0xffa03f18 <_httpResp+0x278> (BP);
ffa03f26:	ff e3 07 fd 	CALL 0xffa03934 <_htmlDefault>;
ffa03f2a:	68 67       	R0 += -0x13;		/* (-19) */
ffa03f2c:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa03f30:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80(-7336064) */
ffa03f34:	f0 bb       	[FP -0x4] = R0;
ffa03f36:	02 e1 50 0b 	R2.L = 0xb50;		/* (2896)	R2=0xff900b50(-7337136) */
ffa03f3a:	08 50       	R0 = R0 + R1;
ffa03f3c:	0f 30       	R1 = R7;
ffa03f3e:	ff e3 b9 e6 	CALL 0xffa00cb0 <_strcpy_>;
ffa03f42:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa03f46:	f5 b8 00 00 
ffa03f4a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b50(-7337136) */
ffa03f4e:	0f 30       	R1 = R7;
ffa03f50:	02 e1 5c 0b 	R2.L = 0xb5c;		/* (2908)	R2=0xff900b5c(-7337124) */
ffa03f54:	ff e3 ae e6 	CALL 0xffa00cb0 <_strcpy_>;
ffa03f58:	16 30       	R2 = R6;
ffa03f5a:	0f 30       	R1 = R7;
ffa03f5c:	ff e3 10 e8 	CALL 0xffa00f7c <_strprintf_int>;
ffa03f60:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b5c(-7337124) */
ffa03f64:	0f 30       	R1 = R7;
ffa03f66:	02 e1 70 0b 	R2.L = 0xb70;		/* (2928)	R2=0xff900b70(-7337104) */
ffa03f6a:	ff e3 a3 e6 	CALL 0xffa00cb0 <_strcpy_>;
ffa03f6e:	0f 30       	R1 = R7;
ffa03f70:	15 30       	R2 = R5;
ffa03f72:	ff e3 05 e8 	CALL 0xffa00f7c <_strprintf_int>;
ffa03f76:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b70(-7337104) */
ffa03f7a:	02 e1 80 0b 	R2.L = 0xb80;		/* (2944)	R2=0xff900b80(-7337088) */
ffa03f7e:	0f 30       	R1 = R7;
ffa03f80:	ff e3 98 e6 	CALL 0xffa00cb0 <_strcpy_>;
ffa03f84:	0e 64       	R6 += 0x1;		/* (  1) */
ffa03f86:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa03f88:	16 08       	CC = R6 == R2;
ffa03f8a:	e0 17       	IF !CC JUMP 0xffa03f4a <_httpResp+0x2aa> (BP);
ffa03f8c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa03f90:	0f 30       	R1 = R7;
ffa03f92:	02 e1 8c 0b 	R2.L = 0xb8c;		/* (2956)	R2=0xff900b8c(-7337076) */
ffa03f96:	ff e3 8d e6 	CALL 0xffa00cb0 <_strcpy_>;
ffa03f9a:	f0 b9       	R0 = [FP -0x4];
ffa03f9c:	9e 2e       	JUMP.S 0xffa03cd8 <_httpResp+0x38>;
ffa03f9e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03fa0:	4f 30       	R1 = FP;
ffa03fa2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b8c(-7337076) */
ffa03fa6:	f0 bb       	[FP -0x4] = R0;
ffa03fa8:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03faa:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03fae:	02 e1 8c 0a 	R2.L = 0xa8c;		/* (2700)	R2=0xff900a8c(-7337332) */
ffa03fb2:	ff e3 7f e6 	CALL 0xffa00cb0 <_strcpy_>;
ffa03fb6:	f0 b9       	R0 = [FP -0x4];
ffa03fb8:	90 2e       	JUMP.S 0xffa03cd8 <_httpResp+0x38>;
ffa03fba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa03fbe:	00 e1 d0 0a 	R0.L = 0xad0;		/* (2768)	R0=0xff900ad0(-7337264) */
ffa03fc2:	0e 30       	R1 = R6;
ffa03fc4:	15 30       	R2 = R5;
ffa03fc6:	ff e3 e3 e6 	CALL 0xffa00d8c <_substr>;
ffa03fca:	00 0c       	CC = R0 == 0x0;
ffa03fcc:	08 1c       	IF CC JUMP 0xffa03fdc <_httpResp+0x33c> (BP);
ffa03fce:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa03fd2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03fd4:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03fd8:	10 9b       	B[P2] = R0;
ffa03fda:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03fdc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03fe0:	00 e1 d8 0a 	R0.L = 0xad8;		/* (2776)	R0=0xff900ad8(-7337256) */
ffa03fe4:	0e 30       	R1 = R6;
ffa03fe6:	15 30       	R2 = R5;
ffa03fe8:	ff e3 d2 e6 	CALL 0xffa00d8c <_substr>;
ffa03fec:	00 0c       	CC = R0 == 0x0;
ffa03fee:	05 1f       	IF CC JUMP 0xffa03df8 <_httpResp+0x158> (BP);
ffa03ff0:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa03ff4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03ff6:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03ffa:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03ffc:	10 9b       	B[P2] = R0;
ffa03ffe:	fd 2e       	JUMP.S 0xffa03df8 <_httpResp+0x158>;
ffa04000:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa04004:	00 e1 d0 0a 	R0.L = 0xad0;		/* (2768)	R0=0xff900ad0(-7337264) */
ffa04008:	0e 30       	R1 = R6;
ffa0400a:	15 30       	R2 = R5;
ffa0400c:	ff e3 c0 e6 	CALL 0xffa00d8c <_substr>;
ffa04010:	00 0c       	CC = R0 == 0x0;
ffa04012:	61 14       	IF !CC JUMP 0xffa040d4 <_httpResp+0x434> (BP);
ffa04014:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa04016:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ad0(-7337264) */
ffa0401a:	00 e1 d8 0a 	R0.L = 0xad8;		/* (2776)	R0=0xff900ad8(-7337256) */
ffa0401e:	0e 30       	R1 = R6;
ffa04020:	15 30       	R2 = R5;
ffa04022:	ff e3 b5 e6 	CALL 0xffa00d8c <_substr>;
ffa04026:	00 0c       	CC = R0 == 0x0;
ffa04028:	de 1e       	IF CC JUMP 0xffa03de4 <_httpResp+0x144> (BP);
ffa0402a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa0402e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04030:	0a e1 b4 0b 	P2.L = 0xbb4;		/* (2996)	P2=0xff900bb4 <_g_streamEnabled> */
ffa04034:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04036:	10 9b       	B[P2] = R0;
ffa04038:	d6 2e       	JUMP.S 0xffa03de4 <_httpResp+0x144>;
ffa0403a:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0403c:	06 50       	R0 = R6 + R0;
ffa0403e:	ff e3 c7 e7 	CALL 0xffa00fcc <_atoi>;
ffa04042:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb4 <_g_streamEnabled> */
ffa04046:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetDataDestIP> */
ffa0404a:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0404c:	11 91       	R1 = [P2];
ffa0404e:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa04052:	51 54       	R1 = R1 & R2;
ffa04054:	c0 4f       	R0 <<= 0x18;
ffa04056:	41 50       	R1 = R1 + R0;
ffa04058:	11 93       	[P2] = R1;
ffa0405a:	5e 2e       	JUMP.S 0xffa03d16 <_httpResp+0x76>;
ffa0405c:	86 51       	R6 = R6 + R0;
ffa0405e:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04060:	45 53       	R5 = R5 - R0;
ffa04062:	06 30       	R0 = R6;
ffa04064:	ff e3 b4 e7 	CALL 0xffa00fcc <_atoi>;
ffa04068:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetDataDestIP> */
ffa0406c:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetDataDestIP> */
ffa04070:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04072:	11 91       	R1 = [P2];
ffa04074:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa04078:	40 43       	R0 = R0.B (Z);
ffa0407a:	51 54       	R1 = R1 & R2;
ffa0407c:	40 4f       	R0 <<= 0x8;
ffa0407e:	41 50       	R1 = R1 + R0;
ffa04080:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04082:	11 93       	[P2] = R1;
ffa04084:	f7 2e       	JUMP.S 0xffa03e72 <_httpResp+0x1d2>;
ffa04086:	86 51       	R6 = R6 + R0;
ffa04088:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0408a:	45 53       	R5 = R5 - R0;
ffa0408c:	06 30       	R0 = R6;
ffa0408e:	ff e3 9f e7 	CALL 0xffa00fcc <_atoi>;
ffa04092:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetDataDestIP> */
ffa04096:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetDataDestIP> */
ffa0409a:	11 91       	R1 = [P2];
ffa0409c:	41 4d       	R1 >>>= 0x8;
ffa0409e:	41 4f       	R1 <<= 0x8;
ffa040a0:	40 43       	R0 = R0.B (Z);
ffa040a2:	08 50       	R0 = R0 + R1;
ffa040a4:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa040a6:	10 93       	[P2] = R0;
ffa040a8:	db 2e       	JUMP.S 0xffa03e5e <_httpResp+0x1be>;
ffa040aa:	86 51       	R6 = R6 + R0;
ffa040ac:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa040ae:	45 53       	R5 = R5 - R0;
ffa040b0:	06 30       	R0 = R6;
ffa040b2:	ff e3 8d e7 	CALL 0xffa00fcc <_atoi>;
ffa040b6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetDataDestIP> */
ffa040ba:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetDataDestIP> */
ffa040be:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa040c0:	11 91       	R1 = [P2];
ffa040c2:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa040c6:	40 43       	R0 = R0.B (Z);
ffa040c8:	51 54       	R1 = R1 & R2;
ffa040ca:	80 4f       	R0 <<= 0x10;
ffa040cc:	41 50       	R1 = R1 + R0;
ffa040ce:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa040d0:	11 93       	[P2] = R1;
ffa040d2:	da 2e       	JUMP.S 0xffa03e86 <_httpResp+0x1e6>;
ffa040d4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetDataDestIP> */
ffa040d8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa040da:	0a e1 b4 0b 	P2.L = 0xbb4;		/* (2996)	P2=0xff900bb4 <_g_streamEnabled> */
ffa040de:	10 9b       	B[P2] = R0;
ffa040e0:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bb4 */
ffa040e4:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa040e8:	10 91       	R0 = [P2];
ffa040ea:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa040ec:	22 6c       	P2 += 0x4;		/* (  4) */
ffa040ee:	10 93       	[P2] = R0;
ffa040f0:	93 2f       	JUMP.S 0xffa04016 <_httpResp+0x376>;
	...

ffa040f4 <_httpCollate>:
ffa040f4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa040f6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c60 <_NetDataDestIP> */
ffa040fa:	0d e1 58 0d 	P5.L = 0xd58;		/* (3416)	P5=0xff900d58 <_g_httpRxed> */
ffa040fe:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa04100:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R1 = [P5] || NOP;
ffa04104:	29 91 00 00 
ffa04108:	82 4f       	R2 <<= 0x10;
ffa0410a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0410e:	51 50       	R1 = R1 + R2;
ffa04110:	17 30       	R2 = R7;
ffa04112:	ff e3 9f e5 	CALL 0xffa00c50 <_memcpy_>;
ffa04116:	28 91       	R0 = [P5];
ffa04118:	38 50       	R0 = R0 + R7;
ffa0411a:	01 e8 00 00 	UNLINK;
ffa0411e:	28 93       	[P5] = R0;
ffa04120:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04122:	bd 05       	(R7:7, P5:5) = [SP++];
ffa04124:	10 00       	RTS;
	...


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
ffa001ac:	e4 05       	[--SP] = (R7:4, P5:4);
ffa001ae:	20 e1 9c c1 	R0 = -0x3e64 (X);		/*		R0=0xffffc19c(-15972) */
ffa001b2:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa001b6:	00 e8 07 00 	LINK 0x1c;		/* (28) */
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
ffa00232:	0a e1 c4 0b 	P2.L = 0xbc4;		/* (3012)	P2=0xff900bc4 <_printf_temp> */
ffa00236:	10 93       	[P2] = R0;
ffa00238:	20 e1 01 e0 	R0 = -0x1fff (X);		/*		R0=0xffffe001(-8191) */
ffa0023c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bc4 <_printf_temp> */
ffa00240:	0a e1 c8 0b 	P2.L = 0xbc8;		/* (3016)	P2=0xff900bc8 <_printf_out> */
ffa00244:	50 4f       	R0 <<= 0xa;
ffa00246:	10 93       	[P2] = R0;
ffa00248:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90e001(-7282687) */
ffa0024c:	21 e1 80 01 	R1 = 0x180 (X);		/*		R1=0x180(384) */
ffa00250:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00254:	00 e3 d2 03 	CALL 0xffa009f8 <_printf_int>;
ffa00258:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0025c:	00 e1 54 0a 	R0.L = 0xa54;		/* (2644)	R0=0xff900a54(-7337388) */
ffa00260:	00 e3 0a 03 	CALL 0xffa00874 <_printf_str>;
ffa00264:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a54(-7337388) */
ffa00268:	00 e1 10 00 	R0.L = 0x10;		/* ( 16)	R0=0xff900010(-7340016) */
ffa0026c:	00 e3 04 03 	CALL 0xffa00874 <_printf_str>;
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
ffa002b4:	00 e3 46 03 	CALL 0xffa00940 <_printf_hex>;
ffa002b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900024(-7339996) */
ffa002bc:	00 e1 30 00 	R0.L = 0x30;		/* ( 48)	R0=0xff900030(-7339984) */
ffa002c0:	0f 30       	R1 = R7;
ffa002c2:	00 e3 3f 03 	CALL 0xffa00940 <_printf_hex>;
ffa002c6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900030(-7339984) */
ffa002ca:	00 e1 54 0a 	R0.L = 0xa54;		/* (2644)	R0=0xff900a54(-7337388) */
ffa002ce:	00 e3 d3 02 	CALL 0xffa00874 <_printf_str>;
ffa002d2:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa002d4:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa002d8:	08 08       	CC = R0 == R1;
ffa002da:	08 18       	IF CC JUMP 0xffa002ea <_main+0x142>;
ffa002dc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a54(-7337388) */
ffa002e0:	00 e1 24 00 	R0.L = 0x24;		/* ( 36)	R0=0xff900024(-7339996) */
ffa002e4:	0e 30       	R1 = R6;
ffa002e6:	00 e3 2d 03 	CALL 0xffa00940 <_printf_hex>;
ffa002ea:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa002ec:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa002f0:	08 08       	CC = R0 == R1;
ffa002f2:	08 18       	IF CC JUMP 0xffa00302 <_main+0x15a>;
ffa002f4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900024(-7339996) */
ffa002f8:	00 e1 24 00 	R0.L = 0x24;		/* ( 36)	R0=0xff900024(-7339996) */
ffa002fc:	0e 30       	R1 = R6;
ffa002fe:	00 e3 21 03 	CALL 0xffa00940 <_printf_hex>;
ffa00302:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa00304:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa00308:	08 08       	CC = R0 == R1;
ffa0030a:	08 18       	IF CC JUMP 0xffa0031a <_main+0x172>;
ffa0030c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900024(-7339996) */
ffa00310:	00 e1 24 00 	R0.L = 0x24;		/* ( 36)	R0=0xff900024(-7339996) */
ffa00314:	0e 30       	R1 = R6;
ffa00316:	00 e3 15 03 	CALL 0xffa00940 <_printf_hex>;
ffa0031a:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa0031e:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa00322:	55 08       	CC = P5 == P2;
ffa00324:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00326:	bc 17       	IF !CC JUMP 0xffa0029e <_main+0xf6> (BP);
ffa00328:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900024(-7339996) */
ffa0032c:	00 e1 38 00 	R0.L = 0x38;		/* ( 56)	R0=0xff900038(-7339976) */
ffa00330:	00 e3 a2 02 	CALL 0xffa00874 <_printf_str>;
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
ffa00376:	00 e3 cb 10 	CALL 0xffa0250c <_bfin_EMAC_init>;
ffa0037a:	00 0c       	CC = R0 == 0x0;
ffa0037c:	03 14       	IF !CC JUMP 0xffa00382 <_main+0x1da> (BP);
ffa0037e:	00 e3 99 12 	CALL 0xffa028b0 <_DHCP_req>;
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
ffa00442:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc01530(-4188880) */
ffa00446:	20 e1 2c 01 	R0 = 0x12c (X);		/*		R0=0x12c(300) */
ffa0044a:	1c 60       	R4 = 0x3 (X);		/*		R4=0x3(  3) */
ffa0044c:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00730(-4192464) */
ffa00450:	e0 bb       	[FP -0x8] = R0;
ffa00452:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00454:	20 e1 b4 00 	R0 = 0xb4 (X);		/*		R0=0xb4(180) */
ffa00458:	00 cc 12 c4 	R2 = R2 -|- R2 || [FP -0x4] = R0 || NOP;
ffa0045c:	f0 bb 00 00 
ffa00460:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00462:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa00464:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa00466:	09 e1 30 09 	P1.L = 0x930;		/* (2352)	P1=0xffc00930(-4191952) */
ffa0046a:	46 60       	R6 = 0x8 (X);		/*		R6=0x8(  8) */
ffa0046c:	9c 4f       	R4 <<= 0x13;
ffa0046e:	0d e1 10 09 	P5.L = 0x910;		/* (2320)	P5=0xffc00910(-4191984) */
ffa00472:	00 00       	NOP;
ffa00474:	48 95       	R0 = W[P1] (X);
ffa00476:	06 54       	R0 = R6 & R0;
ffa00478:	00 0c       	CC = R0 == 0x0;
ffa0047a:	33 14       	IF !CC JUMP 0xffa004e0 <_main+0x338> (BP);
ffa0047c:	27 56       	R0 = R7 | R4;
ffa0047e:	28 93       	[P5] = R0;
ffa00480:	48 95       	R0 = W[P1] (X);
ffa00482:	06 54       	R0 = R6 & R0;
ffa00484:	00 0c       	CC = R0 == 0x0;
ffa00486:	0d 18       	IF CC JUMP 0xffa004a0 <_main+0x2f8>;
	...
ffa00490:	00 00       	NOP;
ffa00492:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00908(-4191992) */
ffa00496:	0a e1 30 09 	P2.L = 0x930;		/* (2352)	P2=0xffc00930(-4191952) */
ffa0049a:	50 95       	R0 = W[P2] (X);
ffa0049c:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0049e:	f6 17       	IF !CC JUMP 0xffa0048a <_main+0x2e2> (BP);
ffa004a0:	c8 60       	R0 = 0x19 (X);		/*		R0=0x19( 25) */
ffa004a2:	80 4f       	R0 <<= 0x10;
ffa004a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00930(-4191952) */
ffa004a8:	02 56       	R0 = R2 | R0;
ffa004aa:	0a e1 10 09 	P2.L = 0x910;		/* (2320)	P2=0xffc00910(-4191984) */
ffa004ae:	10 93       	[P2] = R0;
ffa004b0:	b8 5a       	P2 = P0 + FP;
ffa004b2:	10 e4 fc ff 	R0 = [P2 + -0x10];
ffa004b6:	0a 64       	R2 += 0x1;		/* (  1) */
ffa004b8:	47 50       	R1 = R7 + R0;
ffa004ba:	10 50       	R0 = R0 + R2;
ffa004bc:	c2 42       	R2 = R0.L (Z);
ffa004be:	0b 64       	R3 += 0x1;		/* (  1) */
ffa004c0:	80 e1 50 c3 	R0 = 0xc350 (Z);		/*		R0=0xc350(50000) */
ffa004c4:	cf 42       	R7 = R1.L (Z);
ffa004c6:	03 09       	CC = R3 <= R0;
ffa004c8:	d5 1f       	IF CC JUMP 0xffa00472 <_main+0x2ca> (BP);
ffa004ca:	0d 30       	R1 = R5;
ffa004cc:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa004ce:	09 64       	R1 += 0x1;		/* (  1) */
ffa004d0:	41 55       	R5 = R1 & R0;
ffa004d2:	15 32       	P2 = R5;
ffa004d4:	48 95       	R0 = W[P1] (X);
ffa004d6:	06 54       	R0 = R6 & R0;
ffa004d8:	00 0c       	CC = R0 == 0x0;
ffa004da:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa004dc:	50 44       	P0 = P2 << 0x2;
ffa004de:	cf 1f       	IF CC JUMP 0xffa0047c <_main+0x2d4> (BP);
	...
ffa004e8:	c5 2f       	JUMP.S 0xffa00472 <_main+0x2ca>;
	...

ffa004ec <_wait_flash>:
ffa004ec:	fd 05       	[--SP] = (R7:7, P5:5);
ffa004ee:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00910(-4191984) */
ffa004f2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa004f6:	0d e1 04 15 	P5.L = 0x1504;		/* (5380)	P5=0xffc01504(-4188924) */
ffa004fa:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa004fc:	2f 97       	W[P5] = R7;
ffa004fe:	24 00       	SSYNC;
ffa00500:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa00502:	00 e3 fb 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa00506:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00508:	00 e3 f8 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa0050c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00910(-4191984) */
ffa00510:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00514:	17 97       	W[P2] = R7;
ffa00516:	24 00       	SSYNC;
ffa00518:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0051a:	f1 17       	IF !CC JUMP 0xffa004fc <_wait_flash+0x10> (BP);
ffa0051c:	01 e8 00 00 	UNLINK;
ffa00520:	bd 05       	(R7:7, P5:5) = [SP++];
ffa00522:	10 00       	RTS;

ffa00524 <_write_enable_flash>:
ffa00524:	fc 05       	[--SP] = (R7:7, P5:4);
ffa00526:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01504(-4188924) */
ffa0052a:	0d e1 04 15 	P5.L = 0x1504;		/* (5380)	P5=0xffc01504(-4188924) */
ffa0052e:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa00530:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00534:	2f 97       	W[P5] = R7;
ffa00536:	24 00       	SSYNC;
ffa00538:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00740(-4192448) */
ffa0053c:	0c e1 08 15 	P4.L = 0x1508;		/* (5384)	P4=0xffc01508(-4188920) */
ffa00540:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa00544:	00 e3 da 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa00548:	27 97       	W[P4] = R7;
ffa0054a:	24 00       	SSYNC;
ffa0054c:	2f 97       	W[P5] = R7;
ffa0054e:	24 00       	SSYNC;
ffa00550:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00552:	00 e3 d3 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa00556:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00558:	00 e3 d0 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa0055c:	27 97       	W[P4] = R7;
ffa0055e:	24 00       	SSYNC;
ffa00560:	2f 97       	W[P5] = R7;
ffa00562:	24 00       	SSYNC;
ffa00564:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa00566:	00 e3 c9 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa0056a:	27 97       	W[P4] = R7;
ffa0056c:	24 00       	SSYNC;
ffa0056e:	01 e8 00 00 	UNLINK;
ffa00572:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00574:	10 00       	RTS;
	...

ffa00578 <_read_flash_u32>:
ffa00578:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0057c:	70 05       	[--SP] = (R7:6);
ffa0057e:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00582:	16 60       	R6 = 0x2 (X);		/*		R6=0x2(  2) */
ffa00584:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00588:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R6 || NOP;
ffa0058c:	16 97 00 00 
ffa00590:	24 00       	SSYNC;
ffa00592:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa00594:	00 e3 b2 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa00598:	82 c6 87 81 	R0 = R7 >> 0x10;
ffa0059c:	40 43       	R0 = R0.B (Z);
ffa0059e:	00 e3 ad 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa005a2:	82 c6 c7 81 	R0 = R7 >> 0x8;
ffa005a6:	40 43       	R0 = R0.B (Z);
ffa005a8:	7f 43       	R7 = R7.B (Z);
ffa005aa:	00 e3 a7 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa005ae:	07 30       	R0 = R7;
ffa005b0:	00 e3 a4 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa005b4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa005b6:	00 e3 a1 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa005ba:	47 43       	R7 = R0.B (Z);
ffa005bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa005be:	00 e3 9d 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa005c2:	40 43       	R0 = R0.B (Z);
ffa005c4:	47 4f       	R7 <<= 0x8;
ffa005c6:	c7 51       	R7 = R7 + R0;
ffa005c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa005ca:	00 e3 97 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa005ce:	40 43       	R0 = R0.B (Z);
ffa005d0:	47 4f       	R7 <<= 0x8;
ffa005d2:	c7 51       	R7 = R7 + R0;
ffa005d4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa005d6:	00 e3 91 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa005da:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa005de:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa005e2:	47 4f       	R7 <<= 0x8;
ffa005e4:	16 97       	W[P2] = R6;
ffa005e6:	24 00       	SSYNC;
ffa005e8:	40 43       	R0 = R0.B (Z);
ffa005ea:	c7 51       	R7 = R7 + R0;
ffa005ec:	01 e8 00 00 	UNLINK;
ffa005f0:	07 30       	R0 = R7;
ffa005f2:	30 05       	(R7:6) = [SP++];
ffa005f4:	10 00       	RTS;
	...

ffa005f8 <_read_flash_u8>:
ffa005f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa005fc:	70 05       	[--SP] = (R7:6);
ffa005fe:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00602:	16 60       	R6 = 0x2 (X);		/*		R6=0x2(  2) */
ffa00604:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00608:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R6 || NOP;
ffa0060c:	16 97 00 00 
ffa00610:	24 00       	SSYNC;
ffa00612:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa00614:	00 e3 72 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa00618:	82 c6 87 81 	R0 = R7 >> 0x10;
ffa0061c:	40 43       	R0 = R0.B (Z);
ffa0061e:	00 e3 6d 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa00622:	82 c6 c7 81 	R0 = R7 >> 0x8;
ffa00626:	40 43       	R0 = R0.B (Z);
ffa00628:	7f 43       	R7 = R7.B (Z);
ffa0062a:	00 e3 67 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa0062e:	07 30       	R0 = R7;
ffa00630:	00 e3 64 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa00634:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00636:	00 e3 61 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa0063a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0063e:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00642:	16 97       	W[P2] = R6;
ffa00644:	24 00       	SSYNC;
ffa00646:	01 e8 00 00 	UNLINK;
ffa0064a:	40 43       	R0 = R0.B (Z);
ffa0064c:	30 05       	(R7:6) = [SP++];
ffa0064e:	10 00       	RTS;

ffa00650 <_write_flash>:
ffa00650:	e3 05       	[--SP] = (R7:4, P5:3);
ffa00652:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa00656:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01504(-4188924) */
ffa0065a:	f1 bb       	[FP -0x4] = R1;
ffa0065c:	0d e1 04 15 	P5.L = 0x1504;		/* (5380)	P5=0xffc01504(-4188924) */
ffa00660:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa00662:	20 30       	R4 = R0;
ffa00664:	ff e3 60 ff 	CALL 0xffa00524 <_write_enable_flash>;
ffa00668:	2f 97       	W[P5] = R7;
ffa0066a:	24 00       	SSYNC;
ffa0066c:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0066e:	00 e3 45 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa00672:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa00674:	00 e3 42 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa00678:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa0067c:	00 e3 3e 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa00680:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00682:	00 e3 3b 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa00686:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0068a:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0068e:	17 97       	W[P2] = R7;
ffa00690:	24 00       	SSYNC;
ffa00692:	ff e3 2d ff 	CALL 0xffa004ec <_wait_flash>;
ffa00696:	04 0c       	CC = R4 == 0x0;
ffa00698:	66 18       	IF CC JUMP 0xffa00764 <_write_flash+0x114>;
ffa0069a:	fc b9       	P4 = [FP -0x4];
ffa0069c:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa0069e:	15 60       	R5 = 0x2 (X);		/*		R5=0x2(  2) */
ffa006a0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa006a4:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa006a8:	15 97       	W[P2] = R5;
ffa006aa:	24 00       	SSYNC;
ffa006ac:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01504(-4188924) */
ffa006b0:	0d e1 08 15 	P5.L = 0x1508;		/* (5384)	P5=0xffc01508(-4188920) */
ffa006b4:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa006b6:	00 e3 21 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa006ba:	2d 97       	W[P5] = R5;
ffa006bc:	24 00       	SSYNC;
ffa006be:	4b e1 07 00 	P3.H = 0x7;		/* (  7)	P3=0x70000 */
ffa006c2:	0b e1 00 f0 	P3.L = 0xf000;		/* (-4096)	P3=0x7f000 */
ffa006c6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa006ca:	43 30       	R0 = P3;
ffa006cc:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa006d0:	04 cc 30 0e 	R7 = R6 + R0 (NS) || W[P2] = R5 || NOP;
ffa006d4:	15 97 00 00 
ffa006d8:	24 00       	SSYNC;
ffa006da:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa006dc:	00 e3 0e 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa006e0:	82 c6 87 81 	R0 = R7 >> 0x10;
ffa006e4:	47 4e       	R7 >>= 0x8;
ffa006e6:	7f 43       	R7 = R7.B (Z);
ffa006e8:	40 43       	R0 = R0.B (Z);
ffa006ea:	00 e3 07 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa006ee:	07 30       	R0 = R7;
ffa006f0:	00 e3 04 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa006f4:	70 43       	R0 = R6.B (Z);
ffa006f6:	00 e3 01 05 	CALL 0xffa010f8 <_spi_write_byte>;
ffa006fa:	20 98       	R0 = B[P4++] (Z);
ffa006fc:	00 e3 fe 04 	CALL 0xffa010f8 <_spi_write_byte>;
ffa00700:	2d 97       	W[P5] = R5;
ffa00702:	24 00       	SSYNC;
ffa00704:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00706:	ff e3 f3 fe 	CALL 0xffa004ec <_wait_flash>;
ffa0070a:	34 08       	CC = R4 == R6;
ffa0070c:	ca 17       	IF !CC JUMP 0xffa006a0 <_write_flash+0x50> (BP);
ffa0070e:	fd b9       	P5 = [FP -0x4];
ffa00710:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00712:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
ffa00714:	73 30       	R6 = P3;
ffa00716:	65 32       	P4 = P5;
ffa00718:	02 20       	JUMP.S 0xffa0071c <_write_flash+0xcc>;
ffa0071a:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa0071c:	37 50       	R0 = R7 + R6;
ffa0071e:	ff e3 6d ff 	CALL 0xffa005f8 <_read_flash_u8>;
ffa00722:	41 43       	R1 = R0.B (Z);
ffa00724:	28 99       	R0 = B[P5] (Z);
ffa00726:	01 08       	CC = R1 == R0;
ffa00728:	0f 18       	IF CC JUMP 0xffa00746 <_write_flash+0xf6>;
ffa0072a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa0072e:	00 e1 4c 00 	R0.L = 0x4c;		/* ( 76)	R0=0xff90004c(-7339956) */
ffa00732:	00 e3 b1 00 	CALL 0xffa00894 <_printf_hex_byte>;
ffa00736:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90004c(-7339956) */
ffa0073a:	21 99       	R1 = B[P4] (Z);
ffa0073c:	00 e1 5c 00 	R0.L = 0x5c;		/* ( 92)	R0=0xff90005c(-7339940) */
ffa00740:	00 e3 aa 00 	CALL 0xffa00894 <_printf_hex_byte>;
ffa00744:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa00746:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00748:	3c 08       	CC = R4 == R7;
ffa0074a:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa0074c:	e7 17       	IF !CC JUMP 0xffa0071a <_write_flash+0xca> (BP);
ffa0074e:	05 48       	CC = !BITTST (R5, 0x0);		/* bit  0 */
ffa00750:	0a 10       	IF !CC JUMP 0xffa00764 <_write_flash+0x114>;
ffa00752:	01 e8 00 00 	UNLINK;
ffa00756:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90005c(-7339940) */
ffa0075a:	00 e1 68 00 	R0.L = 0x68;		/* (104)	R0=0xff900068(-7339928) */
ffa0075e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa00760:	00 e2 8a 00 	JUMP.L 0xffa00874 <_printf_str>;
ffa00764:	01 e8 00 00 	UNLINK;
ffa00768:	a3 05       	(R7:4, P5:3) = [SP++];
ffa0076a:	10 00       	RTS;

ffa0076c <_eth_listen>:
ffa0076c:	00 0c       	CC = R0 == 0x0;
ffa0076e:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa00772:	04 18       	IF CC JUMP 0xffa0077a <_eth_listen+0xe>;
ffa00774:	01 e8 00 00 	UNLINK;
ffa00778:	10 00       	RTS;
ffa0077a:	47 30       	R0 = FP;
ffa0077c:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa0077e:	00 e3 0b 11 	CALL 0xffa02994 <_bfin_EMAC_recv>;
ffa00782:	00 0d       	CC = R0 <= 0x0;
ffa00784:	f8 1b       	IF CC JUMP 0xffa00774 <_eth_listen+0x8>;
ffa00786:	f9 b9       	P1 = [FP -0x4];
ffa00788:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901504 */
ffa0078c:	0a e1 4c 0c 	P2.L = 0xc4c;		/* (3148)	P2=0xff900c4c <_NetDataDestIP> */
ffa00790:	11 91       	R1 = [P2];
ffa00792:	c8 a1       	R0 = [P1 + 0x1c];
ffa00794:	08 08       	CC = R0 == R1;
ffa00796:	ef 17       	IF !CC JUMP 0xffa00774 <_eth_listen+0x8> (BP);
ffa00798:	48 e4 13 00 	R0 = W[P1 + 0x26] (Z);
ffa0079c:	00 e3 d8 07 	CALL 0xffa0174c <_htons>;
ffa007a0:	c0 42       	R0 = R0.L (Z);
ffa007a2:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa007a6:	08 08       	CC = R0 == R1;
ffa007a8:	e6 17       	IF !CC JUMP 0xffa00774 <_eth_listen+0x8> (BP);
ffa007aa:	f0 b9       	R0 = [FP -0x4];
ffa007ac:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa007b0:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa007b2:	01 e1 a1 0b 	R1.L = 0xba1;		/* (2977)	R1=0xff900ba1 <_g_outpkt>(-7337055) */
ffa007b6:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa007b8:	00 e3 06 02 	CALL 0xffa00bc4 <_memcpy_>;
ffa007bc:	dc 2f       	JUMP.S 0xffa00774 <_eth_listen+0x8>;
	...

ffa007c0 <_uart_str>:
ffa007c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c4c(-4191156) */
ffa007c4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa007c8:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa007cc:	08 32       	P1 = R0;
ffa007ce:	50 95       	R0 = W[P2] (X);
ffa007d0:	c0 42       	R0 = R0.L (Z);
ffa007d2:	08 0c       	CC = R0 == 0x1;
ffa007d4:	06 18       	IF CC JUMP 0xffa007e0 <_uart_str+0x20>;
ffa007d6:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa007d8:	02 30       	R0 = R2;
ffa007da:	01 e8 00 00 	UNLINK;
ffa007de:	10 00       	RTS;
ffa007e0:	48 99       	R0 = B[P1] (X);
ffa007e2:	01 43       	R1 = R0.B (X);
ffa007e4:	01 0c       	CC = R1 == 0x0;
ffa007e6:	f8 1b       	IF CC JUMP 0xffa007d6 <_uart_str+0x16>;
ffa007e8:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa007ec:	09 6c       	P1 += 0x1;		/* (  1) */
ffa007ee:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa007f0:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa007f4:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa007f8:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa007fa:	b2 e0 1c 00 	LSETUP(0xffa007fe <_uart_str+0x3e>, 0xffa00832 <_uart_str+0x72>) LC1 = P0;
ffa007fe:	19 08       	CC = R1 == R3;
ffa00800:	1b 18       	IF CC JUMP 0xffa00836 <_uart_str+0x76>;
ffa00802:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa00806:	00 43       	R0 = R0.B (X);
ffa00808:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa0080c:	10 97       	W[P2] = R0;
ffa0080e:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa00810:	50 95       	R0 = W[P2] (X);
ffa00812:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00814:	0a 10       	IF !CC JUMP 0xffa00828 <_uart_str+0x68>;
ffa00816:	00 00       	NOP;
ffa00818:	00 00       	NOP;
ffa0081a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa0081e:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00822:	50 95       	R0 = W[P2] (X);
ffa00824:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00826:	f9 1f       	IF CC JUMP 0xffa00818 <_uart_str+0x58> (BP);
ffa00828:	48 99       	R0 = B[P1] (X);
ffa0082a:	01 43       	R1 = R0.B (X);
ffa0082c:	01 0c       	CC = R1 == 0x0;
ffa0082e:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00830:	d4 1b       	IF CC JUMP 0xffa007d8 <_uart_str+0x18>;
ffa00832:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00834:	d2 2f       	JUMP.S 0xffa007d8 <_uart_str+0x18>;
ffa00836:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00838:	20 9f       	W[I0] = R0.L;
ffa0083a:	02 20       	JUMP.S 0xffa0083e <_uart_str+0x7e>;
ffa0083c:	00 00       	NOP;
ffa0083e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa00842:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00846:	50 95       	R0 = W[P2] (X);
ffa00848:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0084a:	f9 1f       	IF CC JUMP 0xffa0083c <_uart_str+0x7c> (BP);
ffa0084c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa00850:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa00852:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00856:	10 97       	W[P2] = R0;
ffa00858:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa0085a:	50 95       	R0 = W[P2] (X);
ffa0085c:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0085e:	e5 13       	IF !CC JUMP 0xffa00828 <_uart_str+0x68>;
ffa00860:	00 00       	NOP;
ffa00862:	00 00       	NOP;
ffa00864:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa00868:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa0086c:	50 95       	R0 = W[P2] (X);
ffa0086e:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00870:	f9 1f       	IF CC JUMP 0xffa00862 <_uart_str+0xa2> (BP);
ffa00872:	db 2f       	JUMP.S 0xffa00828 <_uart_str+0x68>;

ffa00874 <_printf_str>:
ffa00874:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00878:	01 e8 00 00 	UNLINK;
ffa0087c:	ff e2 a2 ff 	JUMP.L 0xffa007c0 <_uart_str>;

ffa00880 <_printf_newline>:
ffa00880:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00884:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa00888:	00 e1 54 0a 	R0.L = 0xa54;		/* (2644)	R0=0xff900a54(-7337388) */
ffa0088c:	01 e8 00 00 	UNLINK;
ffa00890:	ff e2 98 ff 	JUMP.L 0xffa007c0 <_uart_str>;

ffa00894 <_printf_hex_byte>:
ffa00894:	fc 05       	[--SP] = (R7:7, P5:4);
ffa00896:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0089a:	28 32       	P5 = R0;
ffa0089c:	39 30       	R7 = R1;
ffa0089e:	00 e3 b1 01 	CALL 0xffa00c00 <_strlen_>;
ffa008a2:	10 30       	R2 = R0;
ffa008a4:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa008a8:	02 09       	CC = R2 <= R0;
ffa008aa:	41 10       	IF !CC JUMP 0xffa0092c <_printf_hex_byte+0x98>;
ffa008ac:	02 0d       	CC = R2 <= 0x0;
ffa008ae:	44 18       	IF CC JUMP 0xffa00936 <_printf_hex_byte+0xa2>;
ffa008b0:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa008b4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa008b6:	08 e1 c8 0b 	P0.L = 0xbc8;		/* (3016)	P0=0xff900bc8 <_printf_out> */
ffa008ba:	09 32       	P1 = R1;
ffa008bc:	42 91       	P2 = [P0];
ffa008be:	09 64       	R1 += 0x1;		/* (  1) */
ffa008c0:	68 98       	R0 = B[P5++] (X);
ffa008c2:	0a 08       	CC = R2 == R1;
ffa008c4:	8a 5a       	P2 = P2 + P1;
ffa008c6:	10 9b       	B[P2] = R0;
ffa008c8:	f9 17       	IF !CC JUMP 0xffa008ba <_printf_hex_byte+0x26> (BP);
ffa008ca:	0a 32       	P1 = R2;
ffa008cc:	42 91       	P2 = [P0];
ffa008ce:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa008d0:	22 32       	P4 = R2;
ffa008d2:	79 43       	R1 = R7.B (Z);
ffa008d4:	8a 5a       	P2 = P2 + P1;
ffa008d6:	10 9b       	B[P2] = R0;
ffa008d8:	42 91       	P2 = [P0];
ffa008da:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa008dc:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa008e0:	11 6c       	P1 += 0x2;		/* (  2) */
ffa008e2:	a2 5a       	P2 = P2 + P4;
ffa008e4:	10 9b       	B[P2] = R0;
ffa008e6:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa008e8:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa008ea:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa008ec:	01 30       	R0 = R1;
ffa008ee:	10 40       	R0 >>>= R2;
ffa008f0:	18 54       	R0 = R0 & R3;
ffa008f2:	38 09       	CC = R0 <= R7;
ffa008f4:	1a 1c       	IF CC JUMP 0xffa00928 <_printf_hex_byte+0x94> (BP);
ffa008f6:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa008f8:	42 91       	P2 = [P0];
ffa008fa:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa008fc:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff901508 */
ffa00900:	22 0c       	CC = R2 == -0x4;
ffa00902:	8a 5a       	P2 = P2 + P1;
ffa00904:	0d e1 c8 0b 	P5.L = 0xbc8;		/* (3016)	P5=0xff900bc8 <_printf_out> */
ffa00908:	10 9b       	B[P2] = R0;
ffa0090a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0090c:	f0 17       	IF !CC JUMP 0xffa008ec <_printf_hex_byte+0x58> (BP);
ffa0090e:	6a 91       	P2 = [P5];
ffa00910:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00912:	94 5a       	P2 = P4 + P2;
ffa00914:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa00918:	28 91       	R0 = [P5];
ffa0091a:	ff e3 53 ff 	CALL 0xffa007c0 <_uart_str>;
ffa0091e:	01 e8 00 00 	UNLINK;
ffa00922:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00924:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00926:	10 00       	RTS;
ffa00928:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0092a:	e7 2f       	JUMP.S 0xffa008f8 <_printf_hex_byte+0x64>;
ffa0092c:	01 e8 00 00 	UNLINK;
ffa00930:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00932:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00934:	10 00       	RTS;
ffa00936:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900bc8 <_printf_out> */
ffa0093a:	08 e1 c8 0b 	P0.L = 0xbc8;		/* (3016)	P0=0xff900bc8 <_printf_out> */
ffa0093e:	c6 2f       	JUMP.S 0xffa008ca <_printf_hex_byte+0x36>;

ffa00940 <_printf_hex>:
ffa00940:	fb 05       	[--SP] = (R7:7, P5:3);
ffa00942:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00946:	28 32       	P5 = R0;
ffa00948:	39 30       	R7 = R1;
ffa0094a:	00 e3 5b 01 	CALL 0xffa00c00 <_strlen_>;
ffa0094e:	10 30       	R2 = R0;
ffa00950:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa00954:	02 09       	CC = R2 <= R0;
ffa00956:	47 10       	IF !CC JUMP 0xffa009e4 <_printf_hex+0xa4>;
ffa00958:	02 0d       	CC = R2 <= 0x0;
ffa0095a:	4a 18       	IF CC JUMP 0xffa009ee <_printf_hex+0xae>;
ffa0095c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900930 */
ffa00960:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00962:	09 e1 c8 0b 	P1.L = 0xbc8;		/* (3016)	P1=0xff900bc8 <_printf_out> */
ffa00966:	01 32       	P0 = R1;
ffa00968:	4a 91       	P2 = [P1];
ffa0096a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0096c:	68 98       	R0 = B[P5++] (X);
ffa0096e:	0a 08       	CC = R2 == R1;
ffa00970:	82 5a       	P2 = P2 + P0;
ffa00972:	10 9b       	B[P2] = R0;
ffa00974:	f9 17       	IF !CC JUMP 0xffa00966 <_printf_hex+0x26> (BP);
ffa00976:	02 32       	P0 = R2;
ffa00978:	4a 91       	P2 = [P1];
ffa0097a:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0097c:	1a 32       	P3 = R2;
ffa0097e:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa00980:	82 5a       	P2 = P2 + P0;
ffa00982:	10 9b       	B[P2] = R0;
ffa00984:	4a 91       	P2 = [P1];
ffa00986:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa00988:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0098c:	10 6c       	P0 += 0x2;		/* (  2) */
ffa0098e:	9a 5a       	P2 = P2 + P3;
ffa00990:	10 9b       	B[P2] = R0;
ffa00992:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa00994:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa00996:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa00998:	b2 e0 10 50 	LSETUP(0xffa0099c <_printf_hex+0x5c>, 0xffa009b8 <_printf_hex+0x78>) LC1 = P5;
ffa0099c:	07 30       	R0 = R7;
ffa0099e:	08 40       	R0 >>>= R1;
ffa009a0:	10 54       	R0 = R0 & R2;
ffa009a2:	18 09       	CC = R0 <= R3;
ffa009a4:	1e 1c       	IF CC JUMP 0xffa009e0 <_printf_hex+0xa0> (BP);
ffa009a6:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa009a8:	4a 91       	P2 = [P1];
ffa009aa:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff901508 */
ffa009ae:	0c e1 c8 0b 	P4.L = 0xbc8;		/* (3016)	P4=0xff900bc8 <_printf_out> */
ffa009b2:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa009b4:	82 5a       	P2 = P2 + P0;
ffa009b6:	10 9b       	B[P2] = R0;
ffa009b8:	08 6c       	P0 += 0x1;		/* (  1) */
ffa009ba:	62 91       	P2 = [P4];
ffa009bc:	4b 32       	P1 = P3;
ffa009be:	49 6c       	P1 += 0x9;		/* (  9) */
ffa009c0:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa009c2:	8a 5a       	P2 = P2 + P1;
ffa009c4:	10 9b       	B[P2] = R0;
ffa009c6:	62 91       	P2 = [P4];
ffa009c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009ca:	8a 5a       	P2 = P2 + P1;
ffa009cc:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa009d0:	20 91       	R0 = [P4];
ffa009d2:	ff e3 f7 fe 	CALL 0xffa007c0 <_uart_str>;
ffa009d6:	01 e8 00 00 	UNLINK;
ffa009da:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009dc:	bb 05       	(R7:7, P5:3) = [SP++];
ffa009de:	10 00       	RTS;
ffa009e0:	80 65       	R0 += 0x30;		/* ( 48) */
ffa009e2:	e3 2f       	JUMP.S 0xffa009a8 <_printf_hex+0x68>;
ffa009e4:	01 e8 00 00 	UNLINK;
ffa009e8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa009ea:	bb 05       	(R7:7, P5:3) = [SP++];
ffa009ec:	10 00       	RTS;
ffa009ee:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bc8 <_printf_out> */
ffa009f2:	09 e1 c8 0b 	P1.L = 0xbc8;		/* (3016)	P1=0xff900bc8 <_printf_out> */
ffa009f6:	c0 2f       	JUMP.S 0xffa00976 <_printf_hex+0x36>;

ffa009f8 <_printf_int>:
ffa009f8:	f3 05       	[--SP] = (R7:6, P5:3);
ffa009fa:	01 0c       	CC = R1 == 0x0;
ffa009fc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00a00:	28 32       	P5 = R0;
ffa00a02:	39 30       	R7 = R1;
ffa00a04:	41 14       	IF !CC JUMP 0xffa00a86 <_printf_int+0x8e> (BP);
ffa00a06:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90f000 */
ffa00a0a:	0b e1 c4 0b 	P3.L = 0xbc4;		/* (3012)	P3=0xff900bc4 <_printf_temp> */
ffa00a0e:	5a 91       	P2 = [P3];
ffa00a10:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00a12:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa00a14:	10 9b       	B[P2] = R0;
ffa00a16:	45 30       	R0 = P5;
ffa00a18:	00 e3 f4 00 	CALL 0xffa00c00 <_strlen_>;
ffa00a1c:	c6 50       	R3 = R6 + R0;
ffa00a1e:	10 30       	R2 = R0;
ffa00a20:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa00a24:	03 09       	CC = R3 <= R0;
ffa00a26:	4e 10       	IF !CC JUMP 0xffa00ac2 <_printf_int+0xca>;
ffa00a28:	02 0d       	CC = R2 <= 0x0;
ffa00a2a:	79 18       	IF CC JUMP 0xffa00b1c <_printf_int+0x124>;
ffa00a2c:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900bc8 <_printf_out> */
ffa00a30:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00a32:	08 e1 c8 0b 	P0.L = 0xbc8;		/* (3016)	P0=0xff900bc8 <_printf_out> */
ffa00a36:	09 32       	P1 = R1;
ffa00a38:	42 91       	P2 = [P0];
ffa00a3a:	09 64       	R1 += 0x1;		/* (  1) */
ffa00a3c:	68 98       	R0 = B[P5++] (X);
ffa00a3e:	0a 08       	CC = R2 == R1;
ffa00a40:	8a 5a       	P2 = P2 + P1;
ffa00a42:	10 9b       	B[P2] = R0;
ffa00a44:	f9 17       	IF !CC JUMP 0xffa00a36 <_printf_int+0x3e> (BP);
ffa00a46:	06 0d       	CC = R6 <= 0x0;
ffa00a48:	12 18       	IF CC JUMP 0xffa00a6c <_printf_int+0x74>;
ffa00a4a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00a4c:	00 91       	R0 = [P0];
ffa00a4e:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa00a52:	5a 91 00 00 
ffa00a56:	08 50       	R0 = R0 + R1;
ffa00a58:	08 32       	P1 = R0;
ffa00a5a:	0e 52       	R0 = R6 - R1;
ffa00a5c:	28 32       	P5 = R0;
ffa00a5e:	09 64       	R1 += 0x1;		/* (  1) */
ffa00a60:	0e 08       	CC = R6 == R1;
ffa00a62:	aa 5a       	P2 = P2 + P5;
ffa00a64:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa00a68:	08 9b       	B[P1] = R0;
ffa00a6a:	f1 17       	IF !CC JUMP 0xffa00a4c <_printf_int+0x54> (BP);
ffa00a6c:	0b 32       	P1 = R3;
ffa00a6e:	42 91       	P2 = [P0];
ffa00a70:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a72:	91 5a       	P2 = P1 + P2;
ffa00a74:	10 9b       	B[P2] = R0;
ffa00a76:	00 91       	R0 = [P0];
ffa00a78:	ff e3 a4 fe 	CALL 0xffa007c0 <_uart_str>;
ffa00a7c:	01 e8 00 00 	UNLINK;
ffa00a80:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a82:	b3 05       	(R7:6, P5:3) = [SP++];
ffa00a84:	10 00       	RTS;
ffa00a86:	01 0d       	CC = R1 <= 0x0;
ffa00a88:	22 18       	IF CC JUMP 0xffa00acc <_printf_int+0xd4>;
ffa00a8a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bc4 <_printf_temp> */
ffa00a8e:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00a90:	0b e1 c4 0b 	P3.L = 0xbc4;		/* (3012)	P3=0xff900bc4 <_printf_temp> */
ffa00a94:	05 20       	JUMP.S 0xffa00a9e <_printf_int+0xa6>;
ffa00a96:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa00a9a:	06 08       	CC = R6 == R0;
ffa00a9c:	bd 1b       	IF CC JUMP 0xffa00a16 <_printf_int+0x1e>;
ffa00a9e:	07 30       	R0 = R7;
ffa00aa0:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00aa2:	00 e3 83 00 	CALL 0xffa00ba8 <_mod>;
ffa00aa6:	0e 32       	P1 = R6;
ffa00aa8:	5a 91       	P2 = [P3];
ffa00aaa:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00aac:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00aae:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00ab0:	8a 5a       	P2 = P2 + P1;
ffa00ab2:	10 9b       	B[P2] = R0;
ffa00ab4:	07 30       	R0 = R7;
ffa00ab6:	00 e3 6b 00 	CALL 0xffa00b8c <_div>;
ffa00aba:	00 0d       	CC = R0 <= 0x0;
ffa00abc:	38 30       	R7 = R0;
ffa00abe:	ec 17       	IF !CC JUMP 0xffa00a96 <_printf_int+0x9e> (BP);
ffa00ac0:	ab 2f       	JUMP.S 0xffa00a16 <_printf_int+0x1e>;
ffa00ac2:	01 e8 00 00 	UNLINK;
ffa00ac6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00ac8:	b3 05       	(R7:6, P5:3) = [SP++];
ffa00aca:	10 00       	RTS;
ffa00acc:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00ace:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa00ad0:	f8 4f       	R0 <<= 0x1f;
ffa00ad2:	f8 53       	R7 = R0 - R7;
ffa00ad4:	07 0d       	CC = R7 <= 0x0;
ffa00ad6:	2c 18       	IF CC JUMP 0xffa00b2e <_printf_int+0x136>;
ffa00ad8:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bc4 <_printf_temp> */
ffa00adc:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa00ade:	0b e1 c4 0b 	P3.L = 0xbc4;		/* (3012)	P3=0xff900bc4 <_printf_temp> */
ffa00ae2:	05 20       	JUMP.S 0xffa00aec <_printf_int+0xf4>;
ffa00ae4:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa00ae8:	4c 08       	CC = P4 == P1;
ffa00aea:	1e 18       	IF CC JUMP 0xffa00b26 <_printf_int+0x12e>;
ffa00aec:	07 30       	R0 = R7;
ffa00aee:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00af0:	00 e3 5c 00 	CALL 0xffa00ba8 <_mod>;
ffa00af4:	5a 91       	P2 = [P3];
ffa00af6:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00af8:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00afa:	a2 5a       	P2 = P2 + P4;
ffa00afc:	10 9b       	B[P2] = R0;
ffa00afe:	07 30       	R0 = R7;
ffa00b00:	00 e3 46 00 	CALL 0xffa00b8c <_div>;
ffa00b04:	00 0d       	CC = R0 <= 0x0;
ffa00b06:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00b08:	38 30       	R7 = R0;
ffa00b0a:	ed 17       	IF !CC JUMP 0xffa00ae4 <_printf_int+0xec> (BP);
ffa00b0c:	74 30       	R6 = P4;
ffa00b0e:	4c 32       	P1 = P4;
ffa00b10:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00b12:	5a 91       	P2 = [P3];
ffa00b14:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa00b16:	8a 5a       	P2 = P2 + P1;
ffa00b18:	10 9b       	B[P2] = R0;
ffa00b1a:	7e 2f       	JUMP.S 0xffa00a16 <_printf_int+0x1e>;
ffa00b1c:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900bc8 <_printf_out> */
ffa00b20:	08 e1 c8 0b 	P0.L = 0xbc8;		/* (3016)	P0=0xff900bc8 <_printf_out> */
ffa00b24:	91 2f       	JUMP.S 0xffa00a46 <_printf_int+0x4e>;
ffa00b26:	4c 32       	P1 = P4;
ffa00b28:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa00b2c:	f3 2f       	JUMP.S 0xffa00b12 <_printf_int+0x11a>;
ffa00b2e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bc4 <_printf_temp> */
ffa00b32:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa00b34:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa00b36:	0b e1 c4 0b 	P3.L = 0xbc4;		/* (3012)	P3=0xff900bc4 <_printf_temp> */
ffa00b3a:	ec 2f       	JUMP.S 0xffa00b12 <_printf_int+0x11a>;

ffa00b3c <_printf_ip>:
ffa00b3c:	70 05       	[--SP] = (R7:6);
ffa00b3e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00b42:	39 30       	R7 = R1;
ffa00b44:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa00b48:	49 43       	R1 = R1.B (Z);
ffa00b4a:	ff e3 57 ff 	CALL 0xffa009f8 <_printf_int>;
ffa00b4e:	06 e1 0c 00 	R6.L = 0xc;		/* ( 12)	R6=0xff90000c(-7340020) */
ffa00b52:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa00b56:	49 43       	R1 = R1.B (Z);
ffa00b58:	06 30       	R0 = R6;
ffa00b5a:	ff e3 4f ff 	CALL 0xffa009f8 <_printf_int>;
ffa00b5e:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa00b62:	49 43       	R1 = R1.B (Z);
ffa00b64:	06 30       	R0 = R6;
ffa00b66:	c7 4e       	R7 >>= 0x18;
ffa00b68:	ff e3 48 ff 	CALL 0xffa009f8 <_printf_int>;
ffa00b6c:	0f 30       	R1 = R7;
ffa00b6e:	06 30       	R0 = R6;
ffa00b70:	ff e3 44 ff 	CALL 0xffa009f8 <_printf_int>;
ffa00b74:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa00b78:	00 e1 f8 04 	R0.L = 0x4f8;		/* (1272)	R0=0xff9004f8(-7338760) */
ffa00b7c:	ff e3 7c fe 	CALL 0xffa00874 <_printf_str>;
ffa00b80:	01 e8 00 00 	UNLINK;
ffa00b84:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b86:	30 05       	(R7:6) = [SP++];
ffa00b88:	10 00       	RTS;
	...

ffa00b8c <_div>:
ffa00b8c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00b90:	08 4f       	R0 <<= 0x1;
ffa00b92:	48 42       	DIVS (R0, R1);
ffa00b94:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa00b96:	b2 e0 03 20 	LSETUP(0xffa00b9a <_div+0xe>, 0xffa00b9c <_div+0x10>) LC1 = P2;
ffa00b9a:	08 42       	DIVQ (R0, R1);
ffa00b9c:	00 00       	NOP;
ffa00b9e:	80 42       	R0 = R0.L (X);
ffa00ba0:	01 e8 00 00 	UNLINK;
ffa00ba4:	10 00       	RTS;
	...

ffa00ba8 <_mod>:
ffa00ba8:	70 05       	[--SP] = (R7:6);
ffa00baa:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00bae:	30 30       	R6 = R0;
ffa00bb0:	39 30       	R7 = R1;
ffa00bb2:	ff e3 ed ff 	CALL 0xffa00b8c <_div>;
ffa00bb6:	c7 40       	R7 *= R0;
ffa00bb8:	01 e8 00 00 	UNLINK;
ffa00bbc:	be 53       	R6 = R6 - R7;
ffa00bbe:	06 30       	R0 = R6;
ffa00bc0:	30 05       	(R7:6) = [SP++];
ffa00bc2:	10 00       	RTS;

ffa00bc4 <_memcpy_>:
ffa00bc4:	02 0d       	CC = R2 <= 0x0;
ffa00bc6:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00bca:	08 32       	P1 = R0;
ffa00bcc:	11 32       	P2 = R1;
ffa00bce:	08 18       	IF CC JUMP 0xffa00bde <_memcpy_+0x1a>;
ffa00bd0:	00 00       	NOP;
ffa00bd2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00bd4:	09 64       	R1 += 0x1;		/* (  1) */
ffa00bd6:	48 98       	R0 = B[P1++] (X);
ffa00bd8:	0a 08       	CC = R2 == R1;
ffa00bda:	10 9a       	B[P2++] = R0;
ffa00bdc:	fc 17       	IF !CC JUMP 0xffa00bd4 <_memcpy_+0x10> (BP);
ffa00bde:	01 e8 00 00 	UNLINK;
ffa00be2:	10 00       	RTS;

ffa00be4 <_memset_>:
ffa00be4:	02 0d       	CC = R2 <= 0x0;
ffa00be6:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00bea:	10 32       	P2 = R0;
ffa00bec:	06 18       	IF CC JUMP 0xffa00bf8 <_memset_+0x14>;
ffa00bee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00bf0:	08 64       	R0 += 0x1;		/* (  1) */
ffa00bf2:	02 08       	CC = R2 == R0;
ffa00bf4:	11 9a       	B[P2++] = R1;
ffa00bf6:	fd 17       	IF !CC JUMP 0xffa00bf0 <_memset_+0xc> (BP);
ffa00bf8:	01 e8 00 00 	UNLINK;
ffa00bfc:	10 00       	RTS;
	...

ffa00c00 <_strlen_>:
ffa00c00:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00c04:	10 32       	P2 = R0;
ffa00c06:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00c08:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa00c0c:	b2 e0 06 10 	LSETUP(0xffa00c10 <_strlen_+0x10>, 0xffa00c18 <_strlen_+0x18>) LC1 = P1;
ffa00c10:	50 99       	R0 = B[P2] (X);
ffa00c12:	00 0c       	CC = R0 == 0x0;
ffa00c14:	04 18       	IF CC JUMP 0xffa00c1c <_strlen_+0x1c>;
ffa00c16:	09 64       	R1 += 0x1;		/* (  1) */
ffa00c18:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00c1a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00c1c:	01 30       	R0 = R1;
ffa00c1e:	01 e8 00 00 	UNLINK;
ffa00c22:	10 00       	RTS;

ffa00c24 <_strcpy_>:
ffa00c24:	12 32       	P2 = R2;
ffa00c26:	c5 04       	[--SP] = (P5:5);
ffa00c28:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00c2c:	29 32       	P5 = R1;
ffa00c2e:	00 32       	P0 = R0;
ffa00c30:	51 99       	R1 = B[P2] (X);
ffa00c32:	08 43       	R0 = R1.B (X);
ffa00c34:	00 0c       	CC = R0 == 0x0;
ffa00c36:	17 18       	IF CC JUMP 0xffa00c64 <_strcpy_+0x40>;
ffa00c38:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00c3a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00c3c:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa00c40:	b2 e0 09 10 	LSETUP(0xffa00c44 <_strcpy_+0x20>, 0xffa00c52 <_strcpy_+0x2e>) LC1 = P1;
ffa00c44:	01 9a       	B[P0++] = R1;
ffa00c46:	51 99       	R1 = B[P2] (X);
ffa00c48:	08 43       	R0 = R1.B (X);
ffa00c4a:	00 0c       	CC = R0 == 0x0;
ffa00c4c:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00c4e:	03 18       	IF CC JUMP 0xffa00c54 <_strcpy_+0x30>;
ffa00c50:	00 00       	NOP;
ffa00c52:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00c54:	01 e8 00 00 	UNLINK;
ffa00c58:	28 91       	R0 = [P5];
ffa00c5a:	10 50       	R0 = R0 + R2;
ffa00c5c:	28 93       	[P5] = R0;
ffa00c5e:	40 30       	R0 = P0;
ffa00c60:	85 04       	(P5:5) = [SP++];
ffa00c62:	10 00       	RTS;
ffa00c64:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00c66:	f7 2f       	JUMP.S 0xffa00c54 <_strcpy_+0x30>;

ffa00c68 <_strprepend>:
ffa00c68:	fc 05       	[--SP] = (R7:7, P5:4);
ffa00c6a:	21 32       	P4 = R1;
ffa00c6c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00c70:	38 30       	R7 = R0;
ffa00c72:	02 30       	R0 = R2;
ffa00c74:	2a 32       	P5 = R2;
ffa00c76:	ff e3 c5 ff 	CALL 0xffa00c00 <_strlen_>;
ffa00c7a:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa00c7e:	20 91 00 00 
ffa00c82:	02 0d       	CC = R2 <= 0x0;
ffa00c84:	0a 18       	IF CC JUMP 0xffa00c98 <_strprepend+0x30>;
ffa00c86:	07 52       	R0 = R7 - R0;
ffa00c88:	10 32       	P2 = R0;
ffa00c8a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00c8c:	09 64       	R1 += 0x1;		/* (  1) */
ffa00c8e:	68 98       	R0 = B[P5++] (X);
ffa00c90:	0a 08       	CC = R2 == R1;
ffa00c92:	10 9a       	B[P2++] = R0;
ffa00c94:	fc 17       	IF !CC JUMP 0xffa00c8c <_strprepend+0x24> (BP);
ffa00c96:	20 91       	R0 = [P4];
ffa00c98:	01 e8 00 00 	UNLINK;
ffa00c9c:	07 52       	R0 = R7 - R0;
ffa00c9e:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00ca0:	10 00       	RTS;
	...

ffa00ca4 <_strcmp>:
ffa00ca4:	10 32       	P2 = R0;
ffa00ca6:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00caa:	01 32       	P0 = R1;
ffa00cac:	51 99       	R1 = B[P2] (X);
ffa00cae:	01 0c       	CC = R1 == 0x0;
ffa00cb0:	1b 18       	IF CC JUMP 0xffa00ce6 <_strcmp+0x42>;
ffa00cb2:	00 00       	NOP;
ffa00cb4:	00 00       	NOP;
ffa00cb6:	00 00       	NOP;
ffa00cb8:	40 99       	R0 = B[P0] (X);
ffa00cba:	00 0c       	CC = R0 == 0x0;
ffa00cbc:	15 18       	IF CC JUMP 0xffa00ce6 <_strcmp+0x42>;
ffa00cbe:	01 08       	CC = R1 == R0;
ffa00cc0:	1c 10       	IF !CC JUMP 0xffa00cf8 <_strcmp+0x54>;
ffa00cc2:	4a 32       	P1 = P2;
ffa00cc4:	50 32       	P2 = P0;
ffa00cc6:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00cc8:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00cca:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa00cce:	49 99       	R1 = B[P1] (X);
ffa00cd0:	01 0c       	CC = R1 == 0x0;
ffa00cd2:	0a 18       	IF CC JUMP 0xffa00ce6 <_strcmp+0x42>;
ffa00cd4:	00 00       	NOP;
ffa00cd6:	00 00       	NOP;
ffa00cd8:	00 00       	NOP;
ffa00cda:	50 99       	R0 = B[P2] (X);
ffa00cdc:	00 0c       	CC = R0 == 0x0;
ffa00cde:	04 18       	IF CC JUMP 0xffa00ce6 <_strcmp+0x42>;
ffa00ce0:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa00ce2:	40 0c       	CC = P0 == 0x0;
ffa00ce4:	05 10       	IF !CC JUMP 0xffa00cee <_strcmp+0x4a>;
ffa00ce6:	01 e8 00 00 	UNLINK;
ffa00cea:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00cec:	10 00       	RTS;
ffa00cee:	01 08       	CC = R1 == R0;
ffa00cf0:	04 10       	IF !CC JUMP 0xffa00cf8 <_strcmp+0x54>;
ffa00cf2:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00cf4:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00cf6:	ec 2f       	JUMP.S 0xffa00cce <_strcmp+0x2a>;
ffa00cf8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00cfa:	01 e8 00 00 	UNLINK;
ffa00cfe:	10 00       	RTS;

ffa00d00 <_substr>:
ffa00d00:	f4 05       	[--SP] = (R7:6, P5:4);
ffa00d02:	20 32       	P4 = R0;
ffa00d04:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00d08:	11 32       	P2 = R1;
ffa00d0a:	32 30       	R6 = R2;
ffa00d0c:	61 99       	R1 = B[P4] (X);
ffa00d0e:	01 0c       	CC = R1 == 0x0;
ffa00d10:	14 18       	IF CC JUMP 0xffa00d38 <_substr+0x38>;
ffa00d12:	00 00       	NOP;
ffa00d14:	00 00       	NOP;
ffa00d16:	00 00       	NOP;
ffa00d18:	50 99       	R0 = B[P2] (X);
ffa00d1a:	00 0c       	CC = R0 == 0x0;
ffa00d1c:	0e 18       	IF CC JUMP 0xffa00d38 <_substr+0x38>;
ffa00d1e:	02 0d       	CC = R2 <= 0x0;
ffa00d20:	0c 18       	IF CC JUMP 0xffa00d38 <_substr+0x38>;
ffa00d22:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00d24:	01 08       	CC = R1 == R0;
ffa00d26:	0f 18       	IF CC JUMP 0xffa00d44 <_substr+0x44>;
ffa00d28:	00 00       	NOP;
ffa00d2a:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00d2c:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00d2e:	50 99       	R0 = B[P2] (X);
ffa00d30:	00 0c       	CC = R0 == 0x0;
ffa00d32:	03 18       	IF CC JUMP 0xffa00d38 <_substr+0x38>;
ffa00d34:	1e 09       	CC = R6 <= R3;
ffa00d36:	f7 17       	IF !CC JUMP 0xffa00d24 <_substr+0x24> (BP);
ffa00d38:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa00d3a:	01 e8 00 00 	UNLINK;
ffa00d3e:	40 30       	R0 = P0;
ffa00d40:	b4 05       	(R7:6, P5:4) = [SP++];
ffa00d42:	10 00       	RTS;
ffa00d44:	52 30       	R2 = P2;
ffa00d46:	3b 30       	R7 = R3;
ffa00d48:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00d4a:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00d4c:	12 32       	P2 = R2;
ffa00d4e:	07 32       	P0 = R7;
ffa00d50:	4c 32       	P1 = P4;
ffa00d52:	6c 32       	P5 = P4;
ffa00d54:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00d56:	15 6c       	P5 += 0x2;		/* (  2) */
ffa00d58:	02 20       	JUMP.S 0xffa00d5c <_substr+0x5c>;
ffa00d5a:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00d5c:	4b 99       	R3 = B[P1] (X);
ffa00d5e:	50 99       	R0 = B[P2] (X);
ffa00d60:	03 08       	CC = R3 == R0;
ffa00d62:	0e 10       	IF !CC JUMP 0xffa00d7e <_substr+0x7e>;
ffa00d64:	03 0c       	CC = R3 == 0x0;
ffa00d66:	0c 18       	IF CC JUMP 0xffa00d7e <_substr+0x7e>;
ffa00d68:	00 00       	NOP;
ffa00d6a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00d6c:	08 6c       	P0 += 0x1;		/* (  1) */
ffa00d6e:	68 98       	R0 = B[P5++] (X);
ffa00d70:	00 0c       	CC = R0 == 0x0;
ffa00d72:	f4 17       	IF !CC JUMP 0xffa00d5a <_substr+0x5a> (BP);
ffa00d74:	01 e8 00 00 	UNLINK;
ffa00d78:	40 30       	R0 = P0;
ffa00d7a:	b4 05       	(R7:6, P5:4) = [SP++];
ffa00d7c:	10 00       	RTS;
ffa00d7e:	12 32       	P2 = R2;
ffa00d80:	1f 30       	R3 = R7;
ffa00d82:	d6 2f       	JUMP.S 0xffa00d2e <_substr+0x2e>;

ffa00d84 <_sprintf_int>:
ffa00d84:	fb 05       	[--SP] = (R7:7, P5:3);
ffa00d86:	01 0c       	CC = R1 == 0x0;
ffa00d88:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00d8c:	00 34       	I0 = R0;
ffa00d8e:	11 30       	R2 = R1;
ffa00d90:	1a 14       	IF !CC JUMP 0xffa00dc4 <_sprintf_int+0x40> (BP);
ffa00d92:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bc4 <_printf_temp> */
ffa00d96:	0b e1 c4 0b 	P3.L = 0xbc4;		/* (3012)	P3=0xff900bc4 <_printf_temp> */
ffa00d9a:	5a 91       	P2 = [P3];
ffa00d9c:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00d9e:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa00da0:	10 9b       	B[P2] = R0;
ffa00da2:	88 32       	P1 = I0;
ffa00da4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00da6:	0b 52       	R0 = R3 - R1;
ffa00da8:	00 32       	P0 = R0;
ffa00daa:	5a 91       	P2 = [P3];
ffa00dac:	09 64       	R1 += 0x1;		/* (  1) */
ffa00dae:	99 08       	CC = R1 < R3;
ffa00db0:	82 5a       	P2 = P2 + P0;
ffa00db2:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa00db6:	08 9a       	B[P1++] = R0;
ffa00db8:	f7 1f       	IF CC JUMP 0xffa00da6 <_sprintf_int+0x22> (BP);
ffa00dba:	01 e8 00 00 	UNLINK;
ffa00dbe:	03 30       	R0 = R3;
ffa00dc0:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00dc2:	10 00       	RTS;
ffa00dc4:	01 0d       	CC = R1 <= 0x0;
ffa00dc6:	2d 18       	IF CC JUMP 0xffa00e20 <_sprintf_int+0x9c>;
ffa00dc8:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bc4 <_printf_temp> */
ffa00dcc:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa00dd0:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00dd2:	0b e1 c4 0b 	P3.L = 0xbc4;		/* (3012)	P3=0xff900bc4 <_printf_temp> */
ffa00dd6:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa00dda:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa00ddc:	b2 e0 20 50 	LSETUP(0xffa00de0 <_sprintf_int+0x5c>, 0xffa00e1c <_sprintf_int+0x98>) LC1 = P5;
ffa00de0:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa00de4:	59 91 00 00 
ffa00de8:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00dec:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa00df0:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa00df4:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa00df8:	0b c4 00 00 	R0 = (A0 += A1);
ffa00dfc:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa00e00:	10 4d       	R0 >>>= 0x2;
ffa00e02:	08 52       	R0 = R0 - R1;
ffa00e04:	00 32       	P0 = R0;
ffa00e06:	13 32       	P2 = R3;
ffa00e08:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00e0a:	40 0d       	CC = P0 <= 0x0;
ffa00e0c:	51 5a       	P1 = P1 + P2;
ffa00e0e:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa00e10:	92 5a       	P2 = P2 << 0x1;
ffa00e12:	4a 30       	R1 = P2;
ffa00e14:	0a 52       	R0 = R2 - R1;
ffa00e16:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00e18:	08 9b       	B[P1] = R0;
ffa00e1a:	39 18       	IF CC JUMP 0xffa00e8c <_sprintf_int+0x108>;
ffa00e1c:	50 30       	R2 = P0;
ffa00e1e:	c2 2f       	JUMP.S 0xffa00da2 <_sprintf_int+0x1e>;
ffa00e20:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00e22:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa00e24:	f8 4f       	R0 <<= 0x1f;
ffa00e26:	90 52       	R2 = R0 - R2;
ffa00e28:	02 0d       	CC = R2 <= 0x0;
ffa00e2a:	3c 18       	IF CC JUMP 0xffa00ea2 <_sprintf_int+0x11e>;
ffa00e2c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bc4 <_printf_temp> */
ffa00e30:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa00e34:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa00e36:	0b e1 c4 0b 	P3.L = 0xbc4;		/* (3012)	P3=0xff900bc4 <_printf_temp> */
ffa00e3a:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa00e3e:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa00e40:	b2 e0 1f 50 	LSETUP(0xffa00e44 <_sprintf_int+0xc0>, 0xffa00e7e <_sprintf_int+0xfa>) LC1 = P5;
ffa00e44:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa00e48:	59 91 00 00 
ffa00e4c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00e50:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa00e54:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa00e58:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa00e5c:	0b c4 00 00 	R0 = (A0 += A1);
ffa00e60:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa00e64:	10 4d       	R0 >>>= 0x2;
ffa00e66:	08 52       	R0 = R0 - R1;
ffa00e68:	00 32       	P0 = R0;
ffa00e6a:	61 5a       	P1 = P1 + P4;
ffa00e6c:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00e6e:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa00e70:	92 5a       	P2 = P2 << 0x1;
ffa00e72:	4a 30       	R1 = P2;
ffa00e74:	0a 52       	R0 = R2 - R1;
ffa00e76:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00e78:	40 0d       	CC = P0 <= 0x0;
ffa00e7a:	08 9b       	B[P1] = R0;
ffa00e7c:	0f 18       	IF CC JUMP 0xffa00e9a <_sprintf_int+0x116>;
ffa00e7e:	50 30       	R2 = P0;
ffa00e80:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa00e82:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa00e84:	5a 91       	P2 = [P3];
ffa00e86:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa00e88:	8a 5a       	P2 = P2 + P1;
ffa00e8a:	10 9b       	B[P2] = R0;
ffa00e8c:	03 0d       	CC = R3 <= 0x0;
ffa00e8e:	8a 17       	IF !CC JUMP 0xffa00da2 <_sprintf_int+0x1e> (BP);
ffa00e90:	01 e8 00 00 	UNLINK;
ffa00e94:	03 30       	R0 = R3;
ffa00e96:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00e98:	10 00       	RTS;
ffa00e9a:	5c 30       	R3 = P4;
ffa00e9c:	4c 32       	P1 = P4;
ffa00e9e:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00ea0:	f2 2f       	JUMP.S 0xffa00e84 <_sprintf_int+0x100>;
ffa00ea2:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bc4 <_printf_temp> */
ffa00ea6:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa00ea8:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa00eaa:	0b e1 c4 0b 	P3.L = 0xbc4;		/* (3012)	P3=0xff900bc4 <_printf_temp> */
ffa00eae:	eb 2f       	JUMP.S 0xffa00e84 <_sprintf_int+0x100>;

ffa00eb0 <_sprintf_hex>:
ffa00eb0:	10 32       	P2 = R0;
ffa00eb2:	78 05       	[--SP] = (R7:7);
ffa00eb4:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00eb6:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00eba:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa00ebc:	10 9b       	B[P2] = R0;
ffa00ebe:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00ec2:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa00ec6:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa00ec8:	12 6c       	P2 += 0x2;		/* (  2) */
ffa00eca:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa00ecc:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa00ece:	b2 e0 09 10 	LSETUP(0xffa00ed2 <_sprintf_hex+0x22>, 0xffa00ee0 <_sprintf_hex+0x30>) LC1 = P1;
ffa00ed2:	01 30       	R0 = R1;
ffa00ed4:	10 40       	R0 >>>= R2;
ffa00ed6:	18 54       	R0 = R0 & R3;
ffa00ed8:	38 09       	CC = R0 <= R7;
ffa00eda:	09 1c       	IF CC JUMP 0xffa00eec <_sprintf_hex+0x3c> (BP);
ffa00edc:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00ede:	10 9a       	B[P2++] = R0;
ffa00ee0:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa00ee2:	01 e8 00 00 	UNLINK;
ffa00ee6:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00ee8:	38 05       	(R7:7) = [SP++];
ffa00eea:	10 00       	RTS;
ffa00eec:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00eee:	f8 2f       	JUMP.S 0xffa00ede <_sprintf_hex+0x2e>;

ffa00ef0 <_strprintf_int>:
ffa00ef0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00ef2:	29 32       	P5 = R1;
ffa00ef4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00ef8:	0a 30       	R1 = R2;
ffa00efa:	38 30       	R7 = R0;
ffa00efc:	ff e3 44 ff 	CALL 0xffa00d84 <_sprintf_int>;
ffa00f00:	29 91       	R1 = [P5];
ffa00f02:	41 50       	R1 = R1 + R0;
ffa00f04:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa00f08:	29 93 00 00 
ffa00f0c:	01 e8 00 00 	UNLINK;
ffa00f10:	07 30       	R0 = R7;
ffa00f12:	bd 05       	(R7:7, P5:5) = [SP++];
ffa00f14:	10 00       	RTS;
	...

ffa00f18 <_strprintf_hex>:
ffa00f18:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00f1a:	29 32       	P5 = R1;
ffa00f1c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00f20:	0a 30       	R1 = R2;
ffa00f22:	38 30       	R7 = R0;
ffa00f24:	ff e3 c6 ff 	CALL 0xffa00eb0 <_sprintf_hex>;
ffa00f28:	29 91       	R1 = [P5];
ffa00f2a:	41 50       	R1 = R1 + R0;
ffa00f2c:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa00f30:	29 93 00 00 
ffa00f34:	01 e8 00 00 	UNLINK;
ffa00f38:	07 30       	R0 = R7;
ffa00f3a:	bd 05       	(R7:7, P5:5) = [SP++];
ffa00f3c:	10 00       	RTS;
	...

ffa00f40 <_atoi>:
ffa00f40:	08 32       	P1 = R0;
ffa00f42:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa00f44:	f5 05       	[--SP] = (R7:6, P5:5);
ffa00f46:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00f4a:	48 99       	R0 = B[P1] (X);
ffa00f4c:	10 08       	CC = R0 == R2;
ffa00f4e:	25 18       	IF CC JUMP 0xffa00f98 <_atoi+0x58>;
ffa00f50:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00f52:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa00f54:	41 32       	P0 = P1;
ffa00f56:	08 6c       	P0 += 0x1;		/* (  1) */
ffa00f58:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa00f5a:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa00f5c:	12 20       	JUMP.S 0xffa00f80 <_atoi+0x40>;
ffa00f5e:	8b 08       	CC = R3 < R1;
ffa00f60:	16 10       	IF !CC JUMP 0xffa00f8c <_atoi+0x4c>;
ffa00f62:	10 43       	R0 = R2.B (X);
ffa00f64:	28 32       	P5 = R0;
ffa00f66:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa00f68:	40 99       	R0 = B[P0] (X);
ffa00f6a:	80 66       	R0 += -0x30;		/* (-48) */
ffa00f6c:	40 43       	R0 = R0.B (Z);
ffa00f6e:	aa 5a       	P2 = P2 + P5;
ffa00f70:	10 0a       	CC = R0 <= R2 (IU);
ffa00f72:	82 6e       	P2 += -0x30;		/* (-48) */
ffa00f74:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00f76:	03 14       	IF !CC JUMP 0xffa00f7c <_atoi+0x3c> (BP);
ffa00f78:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa00f7a:	92 5a       	P2 = P2 << 0x1;
ffa00f7c:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00f7e:	08 6c       	P0 += 0x1;		/* (  1) */
ffa00f80:	4a 99       	R2 = B[P1] (X);
ffa00f82:	02 30       	R0 = R2;
ffa00f84:	80 66       	R0 += -0x30;		/* (-48) */
ffa00f86:	40 43       	R0 = R0.B (Z);
ffa00f88:	30 0a       	CC = R0 <= R6 (IU);
ffa00f8a:	ea 1f       	IF CC JUMP 0xffa00f5e <_atoi+0x1e> (BP);
ffa00f8c:	42 30       	R0 = P2;
ffa00f8e:	f8 40       	R0 *= R7;
ffa00f90:	01 e8 00 00 	UNLINK;
ffa00f94:	b5 05       	(R7:6, P5:5) = [SP++];
ffa00f96:	10 00       	RTS;
ffa00f98:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00f9a:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa00f9c:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa00f9e:	db 2f       	JUMP.S 0xffa00f54 <_atoi+0x14>;

ffa00fa0 <_udelay>:
ffa00fa0:	00 0d       	CC = R0 <= 0x0;
ffa00fa2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00fa6:	0b 18       	IF CC JUMP 0xffa00fbc <_udelay+0x1c>;
ffa00fa8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00faa:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa00fae:	b2 e0 03 20 	LSETUP(0xffa00fb2 <_udelay+0x12>, 0xffa00fb4 <_udelay+0x14>) LC1 = P2;
ffa00fb2:	00 00       	NOP;
ffa00fb4:	00 00       	NOP;
ffa00fb6:	09 64       	R1 += 0x1;		/* (  1) */
ffa00fb8:	08 08       	CC = R0 == R1;
ffa00fba:	f8 17       	IF !CC JUMP 0xffa00faa <_udelay+0xa> (BP);
ffa00fbc:	01 e8 00 00 	UNLINK;
ffa00fc0:	10 00       	RTS;
	...

ffa00fc4 <_spi_delay>:
ffa00fc4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa00fc8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00fcc:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa00fd0:	00 00       	NOP;
ffa00fd2:	50 95       	R0 = W[P2] (X);
ffa00fd4:	c0 42       	R0 = R0.L (Z);
ffa00fd6:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa00fd8:	fc 17       	IF !CC JUMP 0xffa00fd0 <_spi_delay+0xc> (BP);
ffa00fda:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa00fdc:	0a 10       	IF !CC JUMP 0xffa00ff0 <_spi_delay+0x2c>;
ffa00fde:	00 00       	NOP;
ffa00fe0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa00fe4:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa00fe8:	00 00       	NOP;
ffa00fea:	50 95       	R0 = W[P2] (X);
ffa00fec:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa00fee:	fd 1f       	IF CC JUMP 0xffa00fe8 <_spi_delay+0x24> (BP);
ffa00ff0:	01 e8 00 00 	UNLINK;
ffa00ff4:	10 00       	RTS;
	...

ffa00ff8 <_spi_write_register>:
ffa00ff8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa00ffc:	ed 05       	[--SP] = (R7:5, P5:5);
ffa00ffe:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01002:	25 e1 00 02 	R5 = 0x200 (X);		/*		R5=0x200(512) */
ffa01006:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0100a:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || W[P2] = R5 || NOP;
ffa0100e:	15 97 00 00 
ffa01012:	24 00       	SSYNC;
ffa01014:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0000b(-4194293) */
ffa01018:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa0101a:	40 43       	R0 = R0.B (Z);
ffa0101c:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa01020:	28 97       	W[P5] = R0;
ffa01022:	ff e3 d1 ff 	CALL 0xffa00fc4 <_spi_delay>;
ffa01026:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0102a:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0102e:	76 43       	R6 = R6.B (Z);
ffa01030:	57 95       	R7 = W[P2] (X);
ffa01032:	2e 97       	W[P5] = R6;
ffa01034:	ff e3 c8 ff 	CALL 0xffa00fc4 <_spi_delay>;
ffa01038:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0103c:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01040:	15 97       	W[P2] = R5;
ffa01042:	24 00       	SSYNC;
ffa01044:	7f 43       	R7 = R7.B (Z);
ffa01046:	01 e8 00 00 	UNLINK;
ffa0104a:	07 30       	R0 = R7;
ffa0104c:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0104e:	10 00       	RTS;

ffa01050 <_spi_read_register>:
ffa01050:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01054:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01056:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0105a:	27 e1 00 02 	R7 = 0x200 (X);		/*		R7=0x200(512) */
ffa0105e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01062:	17 97       	W[P2] = R7;
ffa01064:	24 00       	SSYNC;
ffa01066:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00000(-4194304) */
ffa0106a:	40 43       	R0 = R0.B (Z);
ffa0106c:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa01070:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa01074:	20 97       	W[P4] = R0;
ffa01076:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa0107a:	ff e3 a5 ff 	CALL 0xffa00fc4 <_spi_delay>;
ffa0107e:	68 95       	R0 = W[P5] (X);
ffa01080:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01082:	20 97       	W[P4] = R0;
ffa01084:	ff e3 a0 ff 	CALL 0xffa00fc4 <_spi_delay>;
ffa01088:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0108c:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01090:	68 95       	R0 = W[P5] (X);
ffa01092:	17 97       	W[P2] = R7;
ffa01094:	24 00       	SSYNC;
ffa01096:	01 e8 00 00 	UNLINK;
ffa0109a:	40 43       	R0 = R0.B (Z);
ffa0109c:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0109e:	10 00       	RTS;

ffa010a0 <_spi_read_register_status>:
ffa010a0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa010a4:	f3 05       	[--SP] = (R7:6, P5:3);
ffa010a6:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa010aa:	26 e1 00 02 	R6 = 0x200 (X);		/*		R6=0x200(512) */
ffa010ae:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa010b2:	19 32       	P3 = R1;
ffa010b4:	16 97       	W[P2] = R6;
ffa010b6:	24 00       	SSYNC;
ffa010b8:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc0050c(-4193012) */
ffa010bc:	40 43       	R0 = R0.B (Z);
ffa010be:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa010c2:	20 97       	W[P4] = R0;
ffa010c4:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa010c8:	ff e3 7e ff 	CALL 0xffa00fc4 <_spi_delay>;
ffa010cc:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa010d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa010d2:	6f 95       	R7 = W[P5] (X);
ffa010d4:	20 97       	W[P4] = R0;
ffa010d6:	ff e3 77 ff 	CALL 0xffa00fc4 <_spi_delay>;
ffa010da:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa010de:	68 95       	R0 = W[P5] (X);
ffa010e0:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa010e4:	18 9b       	B[P3] = R0;
ffa010e6:	16 97       	W[P2] = R6;
ffa010e8:	24 00       	SSYNC;
ffa010ea:	7f 43       	R7 = R7.B (Z);
ffa010ec:	01 e8 00 00 	UNLINK;
ffa010f0:	07 30       	R0 = R7;
ffa010f2:	b3 05       	(R7:6, P5:3) = [SP++];
ffa010f4:	10 00       	RTS;
	...

ffa010f8 <_spi_write_byte>:
ffa010f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa010fc:	78 05       	[--SP] = (R7:7);
ffa010fe:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01102:	27 e1 00 02 	R7 = 0x200 (X);		/*		R7=0x200(512) */
ffa01106:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0110a:	17 97       	W[P2] = R7;
ffa0110c:	24 00       	SSYNC;
ffa0110e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01112:	40 43       	R0 = R0.B (Z);
ffa01114:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa01118:	10 97       	W[P2] = R0;
ffa0111a:	ff e3 55 ff 	CALL 0xffa00fc4 <_spi_delay>;
ffa0111e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa01122:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa01126:	50 95       	R0 = W[P2] (X);
ffa01128:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0112c:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01130:	17 97       	W[P2] = R7;
ffa01132:	24 00       	SSYNC;
ffa01134:	01 e8 00 00 	UNLINK;
ffa01138:	40 43       	R0 = R0.B (Z);
ffa0113a:	38 05       	(R7:7) = [SP++];
ffa0113c:	10 00       	RTS;
	...

ffa01140 <_spi_write_packet>:
ffa01140:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01144:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01146:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0114a:	38 30       	R7 = R0;
ffa0114c:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01150:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01154:	10 97       	W[P2] = R0;
ffa01156:	24 00       	SSYNC;
ffa01158:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0115c:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa01160:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa01164:	10 97       	W[P2] = R0;
ffa01166:	ff e3 2f ff 	CALL 0xffa00fc4 <_spi_delay>;
ffa0116a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0116e:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa01172:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa01176:	10 97       	W[P2] = R0;
ffa01178:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0117c:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0117e:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa01182:	10 97       	W[P2] = R0;
ffa01184:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01186:	22 6c       	P2 += 0x4;		/* (  4) */
ffa01188:	10 97       	W[P2] = R0;
ffa0118a:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0118c:	17 93       	[P2] = R7;
ffa0118e:	24 00       	SSYNC;
ffa01190:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa01194:	22 6c       	P2 += 0x4;		/* (  4) */
ffa01196:	10 97       	W[P2] = R0;
ffa01198:	01 20       	JUMP.S 0xffa0119a <_spi_write_packet+0x5a>;
	...
ffa011a2:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa011a6:	0d e1 68 0d 	P5.L = 0xd68;		/* (3432)	P5=0xffc00d68(-4190872) */
ffa011aa:	68 95       	R0 = W[P5] (X);
ffa011ac:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa011ae:	f6 1f       	IF CC JUMP 0xffa0119a <_spi_write_packet+0x5a> (BP);
ffa011b0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa011b4:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa011b8:	50 95       	R0 = W[P2] (X);
ffa011ba:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa011bc:	ef 17       	IF !CC JUMP 0xffa0119a <_spi_write_packet+0x5a> (BP);
ffa011be:	69 95       	R1 = W[P5] (X);
ffa011c0:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa011c2:	08 54       	R0 = R0 & R1;
ffa011c4:	00 0c       	CC = R0 == 0x0;
ffa011c6:	ea 17       	IF !CC JUMP 0xffa0119a <_spi_write_packet+0x5a> (BP);
ffa011c8:	ff e3 fe fe 	CALL 0xffa00fc4 <_spi_delay>;
ffa011cc:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa011ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa011d2:	28 97       	W[P5] = R0;
ffa011d4:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa011d8:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa011dc:	10 97       	W[P2] = R0;
ffa011de:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa011e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa011e4:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa011e8:	10 97       	W[P2] = R0;
ffa011ea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa011ee:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa011f2:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa011f6:	10 97       	W[P2] = R0;
ffa011f8:	24 00       	SSYNC;
ffa011fa:	01 e8 00 00 	UNLINK;
ffa011fe:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01200:	10 00       	RTS;
	...

ffa01204 <_spi_write_packet_noDMA>:
ffa01204:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01208:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0120a:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0120e:	38 30       	R7 = R0;
ffa01210:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01214:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01218:	10 97       	W[P2] = R0;
ffa0121a:	24 00       	SSYNC;
ffa0121c:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00d68(-4190872) */
ffa01220:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa01224:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa01228:	28 97       	W[P5] = R0;
ffa0122a:	27 32       	P4 = R7;
ffa0122c:	ff e3 cc fe 	CALL 0xffa00fc4 <_spi_delay>;
ffa01230:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01232:	0f 64       	R7 += 0x1;		/* (  1) */
ffa01234:	60 98       	R0 = B[P4++] (X);
ffa01236:	28 97       	W[P5] = R0;
ffa01238:	ff e3 c6 fe 	CALL 0xffa00fc4 <_spi_delay>;
ffa0123c:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0123e:	07 08       	CC = R7 == R0;
ffa01240:	f9 17       	IF !CC JUMP 0xffa01232 <_spi_write_packet_noDMA+0x2e> (BP);
ffa01242:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01246:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0124a:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0124e:	10 97       	W[P2] = R0;
ffa01250:	24 00       	SSYNC;
ffa01252:	01 e8 00 00 	UNLINK;
ffa01256:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01258:	10 00       	RTS;
	...

ffa0125c <_spi_read_packet>:
ffa0125c:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0125e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01262:	20 32       	P4 = R0;
ffa01264:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01268:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0126a:	ff e3 c7 fe 	CALL 0xffa00ff8 <_spi_write_register>;
ffa0126e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01272:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01276:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0127a:	10 97       	W[P2] = R0;
ffa0127c:	24 00       	SSYNC;
ffa0127e:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa01282:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa01286:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0128a:	28 97       	W[P5] = R0;
ffa0128c:	5d 32       	P3 = P5;
ffa0128e:	ff e3 9b fe 	CALL 0xffa00fc4 <_spi_delay>;
ffa01292:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01294:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01296:	65 6c       	P5 += 0xc;		/* ( 12) */
ffa01298:	1e 97       	W[P3] = R6;
ffa0129a:	ff e3 95 fe 	CALL 0xffa00fc4 <_spi_delay>;
ffa0129e:	0f 64       	R7 += 0x1;		/* (  1) */
ffa012a0:	68 95       	R0 = W[P5] (X);
ffa012a2:	20 9a       	B[P4++] = R0;
ffa012a4:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa012a6:	78 43       	R0 = R7.B (Z);
ffa012a8:	08 08       	CC = R0 == R1;
ffa012aa:	f7 17       	IF !CC JUMP 0xffa01298 <_spi_read_packet+0x3c> (BP);
ffa012ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa012b0:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa012b4:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa012b8:	10 97       	W[P2] = R0;
ffa012ba:	24 00       	SSYNC;
ffa012bc:	01 e8 00 00 	UNLINK;
ffa012c0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa012c2:	b3 05       	(R7:6, P5:3) = [SP++];
ffa012c4:	10 00       	RTS;
	...

ffa012c8 <_spi_read_packet_nocheck>:
ffa012c8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa012cc:	78 05       	[--SP] = (R7:7);
ffa012ce:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa012d2:	38 30       	R7 = R0;
ffa012d4:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa012d8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa012dc:	10 97       	W[P2] = R0;
ffa012de:	24 00       	SSYNC;
ffa012e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa012e4:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa012e8:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa012ec:	10 97       	W[P2] = R0;
ffa012ee:	ff e3 6b fe 	CALL 0xffa00fc4 <_spi_delay>;
ffa012f2:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00008(-4194296) */
ffa012f6:	09 e1 00 05 	P1.L = 0x500;		/* (1280)	P1=0xffc00500(-4193024) */
ffa012fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa012fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa01300:	08 97       	W[P1] = R0;
ffa01302:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa01306:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01308:	10 97       	W[P2] = R0;
ffa0130a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0130c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0130e:	10 97       	W[P2] = R0;
ffa01310:	82 6f       	P2 += -0x10;		/* (-16) */
ffa01312:	17 93       	[P2] = R7;
ffa01314:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa01318:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0131a:	10 97       	W[P2] = R0;
ffa0131c:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa01320:	08 97       	W[P1] = R0;
	...
ffa0132a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00500(-4193024) */
ffa0132e:	09 e1 68 0d 	P1.L = 0xd68;		/* (3432)	P1=0xffc00d68(-4190872) */
ffa01332:	48 95       	R0 = W[P1] (X);
ffa01334:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01336:	f6 1f       	IF CC JUMP 0xffa01322 <_spi_read_packet_nocheck+0x5a> (BP);
ffa01338:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0133c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0133e:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa01342:	10 97       	W[P2] = R0;
ffa01344:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01346:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0134a:	08 97       	W[P1] = R0;
ffa0134c:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa01350:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa01354:	10 97       	W[P2] = R0;
ffa01356:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0135a:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0135e:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01362:	10 97       	W[P2] = R0;
ffa01364:	24 00       	SSYNC;
ffa01366:	01 e8 00 00 	UNLINK;
ffa0136a:	38 05       	(R7:7) = [SP++];
ffa0136c:	10 00       	RTS;
	...

ffa01370 <_radio_set_rx>:
ffa01370:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01374:	78 05       	[--SP] = (R7:7);
ffa01376:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0137a:	27 e1 00 04 	R7 = 0x400 (X);		/*		R7=0x400(1024) */
ffa0137e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01382:	17 97       	W[P2] = R7;
ffa01384:	24 00       	SSYNC;
ffa01386:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01388:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0138a:	ff e3 37 fe 	CALL 0xffa00ff8 <_spi_write_register>;
ffa0138e:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa01392:	ff e3 b3 fe 	CALL 0xffa010f8 <_spi_write_byte>;
ffa01396:	99 60       	R1 = 0x13 (X);		/*		R1=0x13( 19) */
ffa01398:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0139a:	ff e3 2f fe 	CALL 0xffa00ff8 <_spi_write_register>;
ffa0139e:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa013a2:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa013a4:	ff e3 2a fe 	CALL 0xffa00ff8 <_spi_write_register>;
ffa013a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa013ac:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa013ae:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa013b2:	10 97       	W[P2] = R0;
ffa013b4:	24 00       	SSYNC;
ffa013b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa013ba:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa013be:	17 97       	W[P2] = R7;
ffa013c0:	24 00       	SSYNC;
ffa013c2:	01 e8 00 00 	UNLINK;
ffa013c6:	38 05       	(R7:7) = [SP++];
ffa013c8:	10 00       	RTS;
	...

ffa013cc <_radio_set_tx>:
ffa013cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa013d0:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa013d4:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa013d8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa013dc:	10 97       	W[P2] = R0;
ffa013de:	24 00       	SSYNC;
ffa013e0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa013e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa013e4:	ff e3 0a fe 	CALL 0xffa00ff8 <_spi_write_register>;
ffa013e8:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa013ec:	ff e3 86 fe 	CALL 0xffa010f8 <_spi_write_byte>;
ffa013f0:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa013f4:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa013f6:	ff e3 01 fe 	CALL 0xffa00ff8 <_spi_write_register>;
ffa013fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa013fc:	f1 60       	R1 = 0x1e (X);		/*		R1=0x1e( 30) */
ffa013fe:	ff e3 fd fd 	CALL 0xffa00ff8 <_spi_write_register>;
ffa01402:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01406:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01408:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0140c:	10 97       	W[P2] = R0;
ffa0140e:	01 e8 00 00 	UNLINK;
ffa01412:	10 00       	RTS;

ffa01414 <_radio_wait_irq>:
ffa01414:	78 05       	[--SP] = (R7:7);
ffa01416:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0141a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0141e:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa01422:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (X) || NOP;
ffa01426:	50 95 00 00 
ffa0142a:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa0142c:	25 18       	IF CC JUMP 0xffa01476 <_radio_wait_irq+0x62>;
ffa0142e:	01 0d       	CC = R1 <= 0x0;
ffa01430:	25 18       	IF CC JUMP 0xffa0147a <_radio_wait_irq+0x66>;
ffa01432:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01434:	04 20       	JUMP.S 0xffa0143c <_radio_wait_irq+0x28>;
ffa01436:	39 08       	CC = R1 == R7;
ffa01438:	10 18       	IF CC JUMP 0xffa01458 <_radio_wait_irq+0x44>;
	...
ffa01442:	00 00       	NOP;
ffa01444:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa01448:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa0144c:	50 95       	R0 = W[P2] (X);
ffa0144e:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa01450:	0f 64       	R7 += 0x1;		/* (  1) */
ffa01452:	f2 17       	IF !CC JUMP 0xffa01436 <_radio_wait_irq+0x22> (BP);
ffa01454:	39 09       	CC = R1 <= R7;
ffa01456:	06 10       	IF !CC JUMP 0xffa01462 <_radio_wait_irq+0x4e>;
ffa01458:	01 e8 00 00 	UNLINK;
ffa0145c:	07 30       	R0 = R7;
ffa0145e:	38 05       	(R7:7) = [SP++];
ffa01460:	10 00       	RTS;
ffa01462:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01464:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01468:	ff e3 c8 fd 	CALL 0xffa00ff8 <_spi_write_register>;
ffa0146c:	01 e8 00 00 	UNLINK;
ffa01470:	07 30       	R0 = R7;
ffa01472:	38 05       	(R7:7) = [SP++];
ffa01474:	10 00       	RTS;
ffa01476:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01478:	ee 2f       	JUMP.S 0xffa01454 <_radio_wait_irq+0x40>;
ffa0147a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0147c:	ee 2f       	JUMP.S 0xffa01458 <_radio_wait_irq+0x44>;
	...

ffa01480 <_spi_write_register_ver>:
ffa01480:	68 05       	[--SP] = (R7:5);
ffa01482:	47 43       	R7 = R0.B (Z);
ffa01484:	4e 43       	R6 = R1.B (Z);
ffa01486:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0148a:	0e 30       	R1 = R6;
ffa0148c:	07 30       	R0 = R7;
ffa0148e:	ff e3 b5 fd 	CALL 0xffa00ff8 <_spi_write_register>;
ffa01492:	07 30       	R0 = R7;
ffa01494:	ff e3 de fd 	CALL 0xffa01050 <_spi_read_register>;
ffa01498:	45 43       	R5 = R0.B (Z);
ffa0149a:	2e 08       	CC = R6 == R5;
ffa0149c:	29 18       	IF CC JUMP 0xffa014ee <_spi_write_register_ver+0x6e>;
ffa0149e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900007(-7340025) */
ffa014a2:	0f 30       	R1 = R7;
ffa014a4:	00 e1 84 00 	R0.L = 0x84;		/* (132)	R0=0xff900084(-7339900) */
ffa014a8:	ff e3 a8 fa 	CALL 0xffa009f8 <_printf_int>;
ffa014ac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900084(-7339900) */
ffa014b0:	00 e1 f8 04 	R0.L = 0x4f8;		/* (1272)	R0=0xff9004f8(-7338760) */
ffa014b4:	ff e3 86 f9 	CALL 0xffa007c0 <_uart_str>;
ffa014b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004f8(-7338760) */
ffa014bc:	0e 30       	R1 = R6;
ffa014be:	00 e1 98 00 	R0.L = 0x98;		/* (152)	R0=0xff900098(-7339880) */
ffa014c2:	ff e3 e9 f9 	CALL 0xffa00894 <_printf_hex_byte>;
ffa014c6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900098(-7339880) */
ffa014ca:	00 e1 f8 04 	R0.L = 0x4f8;		/* (1272)	R0=0xff9004f8(-7338760) */
ffa014ce:	ff e3 79 f9 	CALL 0xffa007c0 <_uart_str>;
ffa014d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004f8(-7338760) */
ffa014d6:	00 e1 a4 00 	R0.L = 0xa4;		/* (164)	R0=0xff9000a4(-7339868) */
ffa014da:	0d 30       	R1 = R5;
ffa014dc:	ff e3 dc f9 	CALL 0xffa00894 <_printf_hex_byte>;
ffa014e0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a4(-7339868) */
ffa014e4:	00 e1 54 0a 	R0.L = 0xa54;		/* (2644)	R0=0xff900a54(-7337388) */
ffa014e8:	35 30       	R6 = R5;
ffa014ea:	ff e3 6b f9 	CALL 0xffa007c0 <_uart_str>;
ffa014ee:	01 e8 00 00 	UNLINK;
ffa014f2:	06 30       	R0 = R6;
ffa014f4:	28 05       	(R7:5) = [SP++];
ffa014f6:	10 00       	RTS;

ffa014f8 <_radio_init>:
ffa014f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa014fc:	78 05       	[--SP] = (R7:7);
ffa014fe:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa01500:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa01504:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01508:	11 97       	W[P2] = R1;
ffa0150a:	21 e1 2d 50 	R1 = 0x502d (X);		/*		R1=0x502d(20525) */
ffa0150e:	62 6f       	P2 += -0x14;		/* (-20) */
ffa01510:	11 97       	W[P2] = R1;
ffa01512:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01514:	22 6c       	P2 += 0x4;		/* (  4) */
ffa01516:	11 97       	W[P2] = R1;
ffa01518:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa0151c:	21 e1 00 02 	R1 = 0x200 (X);		/*		R1=0x200(512) */
ffa01520:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01524:	11 97       	W[P2] = R1;
ffa01526:	c2 6d       	P2 += 0x38;		/* ( 56) */
ffa01528:	51 95       	R1 = W[P2] (X);
ffa0152a:	59 4a       	BITSET (R1, 0xb);		/* bit 11 */
ffa0152c:	11 97       	W[P2] = R1;
ffa0152e:	82 6f       	P2 += -0x10;		/* (-16) */
ffa01530:	51 95       	R1 = W[P2] (X);
ffa01532:	59 4c       	BITCLR (R1, 0xb);		/* bit 11 */
ffa01534:	11 97       	W[P2] = R1;
ffa01536:	52 95       	R2 = W[P2] (X);
ffa01538:	21 e1 00 06 	R1 = 0x600 (X);		/*		R1=0x600(1536) */
ffa0153c:	51 56       	R1 = R1 | R2;
ffa0153e:	11 97       	W[P2] = R1;
ffa01540:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa01544:	41 43       	R1 = R0.B (Z);
ffa01546:	11 0a       	CC = R1 <= R2 (IU);
ffa01548:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa0154c:	01 06       	IF !CC R0 = R1;
ffa0154e:	47 43       	R7 = R0.B (Z);
ffa01550:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a54(-7337388) */
ffa01554:	0f 30       	R1 = R7;
ffa01556:	00 e1 b0 00 	R0.L = 0xb0;		/* (176)	R0=0xff9000b0(-7339856) */
ffa0155a:	ff e3 4f fa 	CALL 0xffa009f8 <_printf_int>;
ffa0155e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000b0(-7339856) */
ffa01562:	00 e1 54 0a 	R0.L = 0xa54;		/* (2644)	R0=0xff900a54(-7337388) */
ffa01566:	ff e3 2d f9 	CALL 0xffa007c0 <_uart_str>;
ffa0156a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0156c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0156e:	ff e3 45 fd 	CALL 0xffa00ff8 <_spi_write_register>;
ffa01572:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01574:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01576:	ff e3 85 ff 	CALL 0xffa01480 <_spi_write_register_ver>;
ffa0157a:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0157c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0157e:	ff e3 81 ff 	CALL 0xffa01480 <_spi_write_register_ver>;
ffa01582:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01584:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01586:	ff e3 7d ff 	CALL 0xffa01480 <_spi_write_register_ver>;
ffa0158a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0158c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0158e:	ff e3 79 ff 	CALL 0xffa01480 <_spi_write_register_ver>;
ffa01592:	0f 30       	R1 = R7;
ffa01594:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa01596:	ff e3 75 ff 	CALL 0xffa01480 <_spi_write_register_ver>;
ffa0159a:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa0159c:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0159e:	ff e3 71 ff 	CALL 0xffa01480 <_spi_write_register_ver>;
ffa015a2:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa015a6:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa015a8:	ff e3 6c ff 	CALL 0xffa01480 <_spi_write_register_ver>;
ffa015ac:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa015ae:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa015b0:	ff e3 68 ff 	CALL 0xffa01480 <_spi_write_register_ver>;
ffa015b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa015b8:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa015bc:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa015be:	10 97       	W[P2] = R0;
ffa015c0:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa015c4:	ff e3 9a fd 	CALL 0xffa010f8 <_spi_write_byte>;
ffa015c8:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa015cc:	ff e3 96 fd 	CALL 0xffa010f8 <_spi_write_byte>;
ffa015d0:	01 e8 00 00 	UNLINK;
ffa015d4:	40 43       	R0 = R0.B (Z);
ffa015d6:	38 05       	(R7:7) = [SP++];
ffa015d8:	10 00       	RTS;
	...

ffa015dc <_bfin_EMAC_send_check>:
ffa015dc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa015e0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa015e4:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa015e8:	50 95       	R0 = W[P2] (X);
ffa015ea:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa015ec:	00 02       	R0 = CC;
ffa015ee:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa015f0:	01 e8 00 00 	UNLINK;
ffa015f4:	10 00       	RTS;
	...

ffa015f8 <_FormatIPAddress>:
ffa015f8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa015fc:	18 30       	R3 = R0;
ffa015fe:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa01602:	40 4f       	R0 <<= 0x8;
ffa01604:	52 43       	R2 = R2.B (Z);
ffa01606:	10 56       	R0 = R0 | R2;
ffa01608:	40 4f       	R0 <<= 0x8;
ffa0160a:	49 43       	R1 = R1.B (Z);
ffa0160c:	08 56       	R0 = R0 | R1;
ffa0160e:	40 4f       	R0 <<= 0x8;
ffa01610:	5b 43       	R3 = R3.B (Z);
ffa01612:	18 56       	R0 = R0 | R3;
ffa01614:	01 e8 00 00 	UNLINK;
ffa01618:	10 00       	RTS;
	...

ffa0161c <_bfin_EMAC_halt>:
ffa0161c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01620:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01622:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01626:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0162a:	10 93       	[P2] = R0;
ffa0162c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01630:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa01634:	10 97       	W[P2] = R0;
ffa01636:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa0163a:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa0163e:	10 97       	W[P2] = R0;
ffa01640:	01 e8 00 00 	UNLINK;
ffa01644:	10 00       	RTS;
	...

ffa01648 <_PollMdcDone>:
ffa01648:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0164c:	02 20       	JUMP.S 0xffa01650 <_PollMdcDone+0x8>;
ffa0164e:	00 00       	NOP;
ffa01650:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01654:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01658:	10 91       	R0 = [P2];
ffa0165a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0165c:	f9 17       	IF !CC JUMP 0xffa0164e <_PollMdcDone+0x6> (BP);
ffa0165e:	01 e8 00 00 	UNLINK;
ffa01662:	10 00       	RTS;

ffa01664 <_WrPHYReg>:
ffa01664:	68 05       	[--SP] = (R7:5);
ffa01666:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0166a:	28 30       	R5 = R0;
ffa0166c:	31 30       	R6 = R1;
ffa0166e:	3a 30       	R7 = R2;
ffa01670:	ff e3 ec ff 	CALL 0xffa01648 <_PollMdcDone>;
ffa01674:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01676:	b0 55       	R6 = R0 & R6;
ffa01678:	28 54       	R0 = R0 & R5;
ffa0167a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0167e:	58 4f       	R0 <<= 0xb;
ffa01680:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa01682:	ff 42       	R7 = R7.L (Z);
ffa01684:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01688:	36 4f       	R6 <<= 0x6;
ffa0168a:	08 56       	R0 = R0 | R1;
ffa0168c:	17 93       	[P2] = R7;
ffa0168e:	86 57       	R6 = R6 | R0;
ffa01690:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa01692:	16 93       	[P2] = R6;
ffa01694:	01 e8 00 00 	UNLINK;
ffa01698:	28 05       	(R7:5) = [SP++];
ffa0169a:	10 00       	RTS;

ffa0169c <_RdPHYReg>:
ffa0169c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0169e:	29 32       	P5 = R1;
ffa016a0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa016a4:	38 30       	R7 = R0;
ffa016a6:	ff e3 d1 ff 	CALL 0xffa01648 <_PollMdcDone>;
ffa016aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa016ae:	45 30       	R0 = P5;
ffa016b0:	c0 42       	R0 = R0.L (Z);
ffa016b2:	28 32       	P5 = R0;
ffa016b4:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa016b6:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa016ba:	55 30       	R2 = P5;
ffa016bc:	42 54       	R1 = R2 & R0;
ffa016be:	38 54       	R0 = R0 & R7;
ffa016c0:	58 4f       	R0 <<= 0xb;
ffa016c2:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa016c4:	31 4f       	R1 <<= 0x6;
ffa016c6:	41 56       	R1 = R1 | R0;
ffa016c8:	11 93       	[P2] = R1;
ffa016ca:	ff e3 bf ff 	CALL 0xffa01648 <_PollMdcDone>;
ffa016ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa016d2:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa016d6:	10 91       	R0 = [P2];
ffa016d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa016dc:	0a e1 cc 0b 	P2.L = 0xbcc;		/* (3020)	P2=0xff900bcc <_PHYregs> */
ffa016e0:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa016e2:	10 97       	W[P2] = R0;
ffa016e4:	01 e8 00 00 	UNLINK;
ffa016e8:	c0 42       	R0 = R0.L (Z);
ffa016ea:	bd 05       	(R7:7, P5:5) = [SP++];
ffa016ec:	10 00       	RTS;
	...

ffa016f0 <_SoftResetPHY>:
ffa016f0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa016f2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa016f4:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa016f8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa016fc:	ff e3 b4 ff 	CALL 0xffa01664 <_WrPHYReg>;
ffa01700:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01702:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01704:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01706:	ff e3 af ff 	CALL 0xffa01664 <_WrPHYReg>;
ffa0170a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0170c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0170e:	ff e3 c7 ff 	CALL 0xffa0169c <_RdPHYReg>;
ffa01712:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa01714:	fb 1f       	IF CC JUMP 0xffa0170a <_SoftResetPHY+0x1a> (BP);
ffa01716:	01 e8 00 00 	UNLINK;
ffa0171a:	10 00       	RTS;

ffa0171c <_NetCksum>:
ffa0171c:	01 0d       	CC = R1 <= 0x0;
ffa0171e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01722:	10 18       	IF CC JUMP 0xffa01742 <_NetCksum+0x26>;
ffa01724:	10 32       	P2 = R0;
ffa01726:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01728:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0172a:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0172c:	10 94       	R0 = W[P2++] (Z);
ffa0172e:	0a 08       	CC = R2 == R1;
ffa01730:	c3 50       	R3 = R3 + R0;
ffa01732:	fc 17       	IF !CC JUMP 0xffa0172a <_NetCksum+0xe> (BP);
ffa01734:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa01738:	03 50       	R0 = R3 + R0;
ffa0173a:	c0 42       	R0 = R0.L (Z);
ffa0173c:	01 e8 00 00 	UNLINK;
ffa01740:	10 00       	RTS;
ffa01742:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01744:	01 e8 00 00 	UNLINK;
ffa01748:	10 00       	RTS;
	...

ffa0174c <_htons>:
ffa0174c:	08 30       	R1 = R0;
ffa0174e:	c0 42       	R0 = R0.L (Z);
ffa01750:	40 4e       	R0 >>= 0x8;
ffa01752:	41 4f       	R1 <<= 0x8;
ffa01754:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01758:	08 56       	R0 = R0 | R1;
ffa0175a:	c0 42       	R0 = R0.L (Z);
ffa0175c:	01 e8 00 00 	UNLINK;
ffa01760:	10 00       	RTS;
	...

ffa01764 <_htonl>:
ffa01764:	10 30       	R2 = R0;
ffa01766:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa0176a:	40 43       	R0 = R0.B (Z);
ffa0176c:	49 43       	R1 = R1.B (Z);
ffa0176e:	40 4f       	R0 <<= 0x8;
ffa01770:	08 56       	R0 = R0 | R1;
ffa01772:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa01776:	40 4f       	R0 <<= 0x8;
ffa01778:	49 43       	R1 = R1.B (Z);
ffa0177a:	08 56       	R0 = R0 | R1;
ffa0177c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01780:	40 4f       	R0 <<= 0x8;
ffa01782:	c2 4e       	R2 >>= 0x18;
ffa01784:	10 56       	R0 = R0 | R2;
ffa01786:	01 e8 00 00 	UNLINK;
ffa0178a:	10 00       	RTS;

ffa0178c <_pack4chars>:
ffa0178c:	08 32       	P1 = R0;
ffa0178e:	10 32       	P2 = R0;
ffa01790:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01794:	01 e8 00 00 	UNLINK;
ffa01798:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa0179c:	10 98       	R0 = B[P2++] (Z);
ffa0179e:	41 4f       	R1 <<= 0x8;
ffa017a0:	08 50       	R0 = R0 + R1;
ffa017a2:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa017a6:	81 4f       	R1 <<= 0x10;
ffa017a8:	08 50       	R0 = R0 + R1;
ffa017aa:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa017ae:	c1 4f       	R1 <<= 0x18;
ffa017b0:	08 50       	R0 = R0 + R1;
ffa017b2:	10 00       	RTS;

ffa017b4 <_ip_header_setup>:
ffa017b4:	f4 05       	[--SP] = (R7:6, P5:4);
ffa017b6:	28 32       	P5 = R0;
ffa017b8:	21 32       	P4 = R1;
ffa017ba:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa017be:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa017c2:	32 30       	R6 = R2;
ffa017c4:	28 9b       	B[P5] = R0;
ffa017c6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017c8:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa017cc:	27 91       	R7 = [P4];
ffa017ce:	f8 42       	R0 = R7.L (Z);
ffa017d0:	ff e3 be ff 	CALL 0xffa0174c <_htons>;
ffa017d4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bcc <_PHYregs> */
ffa017d8:	0a e1 16 0c 	P2.L = 0xc16;		/* (3094)	P2=0xff900c16 <_NetIPID> */
ffa017dc:	68 b4       	W[P5 + 0x2] = R0;
ffa017de:	10 95       	R0 = W[P2] (Z);
ffa017e0:	08 30       	R1 = R0;
ffa017e2:	09 64       	R1 += 0x1;		/* (  1) */
ffa017e4:	67 67       	R7 += -0x14;		/* (-20) */
ffa017e6:	11 97       	W[P2] = R1;
ffa017e8:	27 93       	[P4] = R7;
ffa017ea:	ff e3 b1 ff 	CALL 0xffa0174c <_htons>;
ffa017ee:	a8 b4       	W[P5 + 0x4] = R0;
ffa017f0:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa017f4:	ff e3 ac ff 	CALL 0xffa0174c <_htons>;
ffa017f8:	e8 b4       	W[P5 + 0x6] = R0;
ffa017fa:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa017fe:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01802:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c16 <_NetIPID> */
ffa01806:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa0180a:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0180e:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xff900c48 <_NetOurIP> */
ffa01812:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01814:	68 b5       	W[P5 + 0xa] = R0;
ffa01816:	10 91       	R0 = [P2];
ffa01818:	e8 b0       	[P5 + 0xc] = R0;
ffa0181a:	2e b1       	[P5 + 0x10] = R6;
ffa0181c:	45 30       	R0 = P5;
ffa0181e:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01820:	ff e3 7e ff 	CALL 0xffa0171c <_NetCksum>;
ffa01824:	c0 43       	R0 =~ R0;
ffa01826:	68 b5       	W[P5 + 0xa] = R0;
ffa01828:	01 e8 00 00 	UNLINK;
ffa0182c:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa0182e:	45 30       	R0 = P5;
ffa01830:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01832:	10 00       	RTS;

ffa01834 <_ip_header_checksum>:
ffa01834:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01838:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa0183a:	ff e3 71 ff 	CALL 0xffa0171c <_NetCksum>;
ffa0183e:	08 02       	CC = R0;
ffa01840:	00 02       	R0 = CC;
ffa01842:	01 e8 00 00 	UNLINK;
ffa01846:	10 00       	RTS;

ffa01848 <_icmp_header_setup>:
ffa01848:	00 32       	P0 = R0;
ffa0184a:	c5 04       	[--SP] = (P5:5);
ffa0184c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0184e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01852:	29 32       	P5 = R1;
ffa01854:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa01858:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0185a:	40 b4       	W[P0 + 0x2] = R0;
ffa0185c:	38 ab       	R0 = W[FP + 0x18] (X);
ffa0185e:	80 b4       	W[P0 + 0x4] = R0;
ffa01860:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa01862:	02 9b       	B[P0] = R2;
ffa01864:	c0 b4       	W[P0 + 0x6] = R0;
ffa01866:	48 32       	P1 = P0;
ffa01868:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0186a:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa0186c:	b2 e0 03 20 	LSETUP(0xffa01870 <_icmp_header_setup+0x28>, 0xffa01872 <_icmp_header_setup+0x2a>) LC1 = P2;
ffa01870:	08 94       	R0 = W[P1++] (Z);
ffa01872:	41 50       	R1 = R1 + R0;
ffa01874:	c8 42       	R0 = R1.L (Z);
ffa01876:	81 4e       	R1 >>= 0x10;
ffa01878:	08 50       	R0 = R0 + R1;
ffa0187a:	c0 43       	R0 =~ R0;
ffa0187c:	40 b4       	W[P0 + 0x2] = R0;
ffa0187e:	28 91       	R0 = [P5];
ffa01880:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa01882:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01884:	01 e8 00 00 	UNLINK;
ffa01888:	28 93       	[P5] = R0;
ffa0188a:	40 30       	R0 = P0;
ffa0188c:	85 04       	(P5:5) = [SP++];
ffa0188e:	10 00       	RTS;

ffa01890 <_udp_header_setup>:
ffa01890:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01892:	28 32       	P5 = R0;
ffa01894:	21 32       	P4 = R1;
ffa01896:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0189a:	d0 42       	R0 = R2.L (Z);
ffa0189c:	ff e3 58 ff 	CALL 0xffa0174c <_htons>;
ffa018a0:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa018a4:	28 97       	W[P5] = R0;
ffa018a6:	07 30       	R0 = R7;
ffa018a8:	ff e3 52 ff 	CALL 0xffa0174c <_htons>;
ffa018ac:	27 91       	R7 = [P4];
ffa018ae:	68 b4       	W[P5 + 0x2] = R0;
ffa018b0:	f8 42       	R0 = R7.L (Z);
ffa018b2:	ff e3 4d ff 	CALL 0xffa0174c <_htons>;
ffa018b6:	a8 b4       	W[P5 + 0x4] = R0;
ffa018b8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018ba:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa018bc:	e8 b4       	W[P5 + 0x6] = R0;
ffa018be:	01 e8 00 00 	UNLINK;
ffa018c2:	45 6c       	P5 += 0x8;		/* (  8) */
ffa018c4:	45 30       	R0 = P5;
ffa018c6:	27 93       	[P4] = R7;
ffa018c8:	bc 05       	(R7:7, P5:4) = [SP++];
ffa018ca:	10 00       	RTS;

ffa018cc <_tcp_header_setup>:
ffa018cc:	fc 05       	[--SP] = (R7:7, P5:4);
ffa018ce:	28 32       	P5 = R0;
ffa018d0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa018d4:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa018d8:	21 32       	P4 = R1;
ffa018da:	3a 30       	R7 = R2;
ffa018dc:	ff e3 38 ff 	CALL 0xffa0174c <_htons>;
ffa018e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa018e4:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpClientPort> */
ffa018e8:	28 97       	W[P5] = R0;
ffa018ea:	50 95       	R0 = W[P2] (X);
ffa018ec:	68 b4       	W[P5 + 0x2] = R0;
ffa018ee:	38 a2       	R0 = [FP + 0x20];
ffa018f0:	ff e3 3a ff 	CALL 0xffa01764 <_htonl>;
ffa018f4:	68 b0       	[P5 + 0x4] = R0;
ffa018f6:	78 a2       	R0 = [FP + 0x24];
ffa018f8:	ff e3 36 ff 	CALL 0xffa01764 <_htonl>;
ffa018fc:	a8 b0       	[P5 + 0x8] = R0;
ffa018fe:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01902:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01906:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa0190a:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa0190e:	ff e3 1f ff 	CALL 0xffa0174c <_htons>;
ffa01912:	e8 b5       	W[P5 + 0xe] = R0;
ffa01914:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01916:	28 b6       	W[P5 + 0x10] = R0;
ffa01918:	68 b6       	W[P5 + 0x12] = R0;
ffa0191a:	20 91       	R0 = [P4];
ffa0191c:	60 67       	R0 += -0x14;		/* (-20) */
ffa0191e:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01920:	01 e8 00 00 	UNLINK;
ffa01924:	20 93       	[P4] = R0;
ffa01926:	45 30       	R0 = P5;
ffa01928:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0192a:	10 00       	RTS;

ffa0192c <_DHCP_parse>:
ffa0192c:	f5 05       	[--SP] = (R7:6, P5:5);
ffa0192e:	09 0d       	CC = R1 <= 0x1;
ffa01930:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01934:	10 32       	P2 = R0;
ffa01936:	33 18       	IF CC JUMP 0xffa0199c <_DHCP_parse+0x70>;
ffa01938:	00 00       	NOP;
ffa0193a:	31 30       	R6 = R1;
ffa0193c:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa0193e:	11 98       	R1 = B[P2++] (Z);
ffa01940:	01 0c       	CC = R1 == 0x0;
ffa01942:	2b 1c       	IF CC JUMP 0xffa01998 <_DHCP_parse+0x6c> (BP);
ffa01944:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa01948:	01 08       	CC = R1 == R0;
ffa0194a:	57 99       	R7 = B[P2] (X);
ffa0194c:	28 18       	IF CC JUMP 0xffa0199c <_DHCP_parse+0x70>;
ffa0194e:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa01950:	6a 32       	P5 = P2;
ffa01952:	01 0a       	CC = R1 <= R0 (IU);
ffa01954:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa01956:	09 14       	IF !CC JUMP 0xffa01968 <_DHCP_parse+0x3c> (BP);
ffa01958:	09 32       	P1 = R1;
ffa0195a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpClientPort> */
ffa0195e:	0a e1 98 03 	P2.L = 0x398;		/* (920)	P2=0xff900398 */
ffa01962:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa01964:	52 91       	P2 = [P2];
ffa01966:	52 00       	JUMP (P2);
ffa01968:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa0196c:	00 e1 70 01 	R0.L = 0x170;		/* (368)	R0=0xff900170(-7339664) */
ffa01970:	ff e3 44 f8 	CALL 0xffa009f8 <_printf_int>;
ffa01974:	7f 43       	R7 = R7.B (Z);
ffa01976:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900170(-7339664) */
ffa0197a:	00 e1 84 01 	R0.L = 0x184;		/* (388)	R0=0xff900184(-7339644) */
ffa0197e:	0f 30       	R1 = R7;
ffa01980:	ff e3 3c f8 	CALL 0xffa009f8 <_printf_int>;
ffa01984:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900184(-7339644) */
ffa01988:	00 e1 54 0a 	R0.L = 0xa54;		/* (2644)	R0=0xff900a54(-7337388) */
ffa0198c:	ff e3 74 f7 	CALL 0xffa00874 <_printf_str>;
ffa01990:	0f 32       	P1 = R7;
ffa01992:	be 53       	R6 = R6 - R7;
ffa01994:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01996:	8d 5a       	P2 = P5 + P1;
ffa01998:	0e 0d       	CC = R6 <= 0x1;
ffa0199a:	d1 17       	IF !CC JUMP 0xffa0193c <_DHCP_parse+0x10> (BP);
ffa0199c:	01 e8 00 00 	UNLINK;
ffa019a0:	b5 05       	(R7:6, P5:5) = [SP++];
ffa019a2:	10 00       	RTS;
ffa019a4:	45 30       	R0 = P5;
ffa019a6:	ff e3 f3 fe 	CALL 0xffa0178c <_pack4chars>;
ffa019aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900398 */
ffa019ae:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_NetSubnetMask> */
ffa019b2:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa019b6:	10 93 00 00 
ffa019ba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a54(-7337388) */
ffa019be:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa019c2:	ff e3 bd f8 	CALL 0xffa00b3c <_printf_ip>;
ffa019c6:	7f 43       	R7 = R7.B (Z);
ffa019c8:	de 2f       	JUMP.S 0xffa01984 <_DHCP_parse+0x58>;
ffa019ca:	45 30       	R0 = P5;
ffa019cc:	ff e3 e0 fe 	CALL 0xffa0178c <_pack4chars>;
ffa019d0:	08 30       	R1 = R0;
ffa019d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000c8(-7339832) */
ffa019d6:	00 e1 d8 00 	R0.L = 0xd8;		/* (216)	R0=0xff9000d8(-7339816) */
ffa019da:	ff e3 b1 f8 	CALL 0xffa00b3c <_printf_ip>;
ffa019de:	7f 43       	R7 = R7.B (Z);
ffa019e0:	d2 2f       	JUMP.S 0xffa01984 <_DHCP_parse+0x58>;
ffa019e2:	45 30       	R0 = P5;
ffa019e4:	ff e3 d4 fe 	CALL 0xffa0178c <_pack4chars>;
ffa019e8:	08 30       	R1 = R0;
ffa019ea:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000d8(-7339816) */
ffa019ee:	00 e1 e8 00 	R0.L = 0xe8;		/* (232)	R0=0xff9000e8(-7339800) */
ffa019f2:	ff e3 a5 f8 	CALL 0xffa00b3c <_printf_ip>;
ffa019f6:	7f 43       	R7 = R7.B (Z);
ffa019f8:	c6 2f       	JUMP.S 0xffa01984 <_DHCP_parse+0x58>;
ffa019fa:	45 30       	R0 = P5;
ffa019fc:	ff e3 c8 fe 	CALL 0xffa0178c <_pack4chars>;
ffa01a00:	08 30       	R1 = R0;
ffa01a02:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000e8(-7339800) */
ffa01a06:	00 e1 f8 00 	R0.L = 0xf8;		/* (248)	R0=0xff9000f8(-7339784) */
ffa01a0a:	ff e3 99 f8 	CALL 0xffa00b3c <_printf_ip>;
ffa01a0e:	7f 43       	R7 = R7.B (Z);
ffa01a10:	ba 2f       	JUMP.S 0xffa01984 <_DHCP_parse+0x58>;
ffa01a12:	45 30       	R0 = P5;
ffa01a14:	ff e3 bc fe 	CALL 0xffa0178c <_pack4chars>;
ffa01a18:	ff e3 a6 fe 	CALL 0xffa01764 <_htonl>;
ffa01a1c:	08 30       	R1 = R0;
ffa01a1e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f8(-7339784) */
ffa01a22:	00 e1 08 01 	R0.L = 0x108;		/* (264)	R0=0xff900108(-7339768) */
ffa01a26:	ff e3 e9 f7 	CALL 0xffa009f8 <_printf_int>;
ffa01a2a:	7f 43       	R7 = R7.B (Z);
ffa01a2c:	ac 2f       	JUMP.S 0xffa01984 <_DHCP_parse+0x58>;
ffa01a2e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900108(-7339768) */
ffa01a32:	29 99       	R1 = B[P5] (Z);
ffa01a34:	00 e1 1c 01 	R0.L = 0x11c;		/* (284)	R0=0xff90011c(-7339748) */
ffa01a38:	ff e3 e0 f7 	CALL 0xffa009f8 <_printf_int>;
ffa01a3c:	7f 43       	R7 = R7.B (Z);
ffa01a3e:	a3 2f       	JUMP.S 0xffa01984 <_DHCP_parse+0x58>;
ffa01a40:	45 30       	R0 = P5;
ffa01a42:	ff e3 a5 fe 	CALL 0xffa0178c <_pack4chars>;
ffa01a46:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c44 <_NetSubnetMask> */
ffa01a4a:	0a e1 10 0c 	P2.L = 0xc10;		/* (3088)	P2=0xff900c10 <_NetDHCPserv> */
ffa01a4e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01a52:	10 93 00 00 
ffa01a56:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa01a5a:	00 e1 30 01 	R0.L = 0x130;		/* (304)	R0=0xff900130(-7339728) */
ffa01a5e:	ff e3 6f f8 	CALL 0xffa00b3c <_printf_ip>;
ffa01a62:	7f 43       	R7 = R7.B (Z);
ffa01a64:	90 2f       	JUMP.S 0xffa01984 <_DHCP_parse+0x58>;
ffa01a66:	45 30       	R0 = P5;
ffa01a68:	ff e3 92 fe 	CALL 0xffa0178c <_pack4chars>;
ffa01a6c:	ff e3 7c fe 	CALL 0xffa01764 <_htonl>;
ffa01a70:	08 30       	R1 = R0;
ffa01a72:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900130(-7339728) */
ffa01a76:	00 e1 44 01 	R0.L = 0x144;		/* (324)	R0=0xff900144(-7339708) */
ffa01a7a:	ff e3 bf f7 	CALL 0xffa009f8 <_printf_int>;
ffa01a7e:	7f 43       	R7 = R7.B (Z);
ffa01a80:	82 2f       	JUMP.S 0xffa01984 <_DHCP_parse+0x58>;
ffa01a82:	45 30       	R0 = P5;
ffa01a84:	ff e3 84 fe 	CALL 0xffa0178c <_pack4chars>;
ffa01a88:	ff e3 6e fe 	CALL 0xffa01764 <_htonl>;
ffa01a8c:	08 30       	R1 = R0;
ffa01a8e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900144(-7339708) */
ffa01a92:	00 e1 58 01 	R0.L = 0x158;		/* (344)	R0=0xff900158(-7339688) */
ffa01a96:	ff e3 b1 f7 	CALL 0xffa009f8 <_printf_int>;
ffa01a9a:	7f 43       	R7 = R7.B (Z);
ffa01a9c:	74 2f       	JUMP.S 0xffa01984 <_DHCP_parse+0x58>;
	...

ffa01aa0 <_bfin_EMAC_send_nocopy>:
ffa01aa0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c10(-4191216) */
ffa01aa4:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01aa6:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01aaa:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01aae:	10 97       	W[P2] = R0;
ffa01ab0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01ab4:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01ab8:	50 95       	R0 = W[P2] (X);
ffa01aba:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01abc:	59 10       	IF !CC JUMP 0xffa01b6e <_bfin_EMAC_send_nocopy+0xce>;
ffa01abe:	00 00       	NOP;
ffa01ac0:	00 00       	NOP;
ffa01ac2:	00 00       	NOP;
ffa01ac4:	50 95       	R0 = W[P2] (X);
ffa01ac6:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01ac8:	16 18       	IF CC JUMP 0xffa01af4 <_bfin_EMAC_send_nocopy+0x54>;
ffa01aca:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0d68 */
ffa01ace:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01ad2:	b2 e0 09 10 	LSETUP(0xffa01ad6 <_bfin_EMAC_send_nocopy+0x36>, 0xffa01ae4 <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa01ad6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01ada:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01ade:	50 95       	R0 = W[P2] (X);
ffa01ae0:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01ae2:	09 18       	IF CC JUMP 0xffa01af4 <_bfin_EMAC_send_nocopy+0x54>;
ffa01ae4:	00 00       	NOP;
ffa01ae6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa01aea:	00 e1 a4 01 	R0.L = 0x1a4;		/* (420)	R0=0xff9001a4(-7339612) */
ffa01aee:	ff e3 c3 f6 	CALL 0xffa00874 <_printf_str>;
ffa01af2:	30 20       	JUMP.S 0xffa01b52 <_bfin_EMAC_send_nocopy+0xb2>;
ffa01af4:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa01af8:	08 e1 14 0c 	P0.L = 0xc14;		/* (3092)	P0=0xff900c14 <_txIdx> */
ffa01afc:	00 95       	R0 = W[P0] (Z);
ffa01afe:	10 32       	P2 = R0;
ffa01b00:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01b04:	09 e1 18 0c 	P1.L = 0xc18;		/* (3096)	P1=0xff900c18 <_txbuf> */
ffa01b08:	42 95       	R2 = W[P0] (X);
ffa01b0a:	d1 42       	R1 = R2.L (Z);
ffa01b0c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01b0e:	52 91       	P2 = [P2];
ffa01b10:	11 0d       	CC = R1 <= 0x2;
ffa01b12:	90 a1       	R0 = [P2 + 0x18];
ffa01b14:	50 b0       	[P2 + 0x4] = R0;
ffa01b16:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b18:	90 b2       	[P2 + 0x28] = R0;
ffa01b1a:	11 32       	P2 = R1;
ffa01b1c:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa01b1e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01b22:	08 91       	R0 = [P1];
ffa01b24:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01b28:	10 93       	[P2] = R0;
ffa01b2a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01b2e:	0a e1 8a 04 	P2.L = 0x48a;		/* (1162)	P2=0xff90048a <_txdmacfg> */
ffa01b32:	50 95       	R0 = W[P2] (X);
ffa01b34:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0048a(-4193142) */
ffa01b38:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01b3c:	10 97       	W[P2] = R0;
ffa01b3e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01b42:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01b46:	10 91       	R0 = [P2];
ffa01b48:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01b4a:	10 93       	[P2] = R0;
ffa01b4c:	0d 1c       	IF CC JUMP 0xffa01b66 <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa01b4e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b50:	00 97       	W[P0] = R0;
ffa01b52:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01b56:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01b58:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01b5c:	10 97       	W[P2] = R0;
ffa01b5e:	01 e8 00 00 	UNLINK;
ffa01b62:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b64:	10 00       	RTS;
ffa01b66:	02 30       	R0 = R2;
ffa01b68:	08 64       	R0 += 0x1;		/* (  1) */
ffa01b6a:	00 97       	W[P0] = R0;
ffa01b6c:	f3 2f       	JUMP.S 0xffa01b52 <_bfin_EMAC_send_nocopy+0xb2>;
ffa01b6e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01b72:	00 e1 8c 01 	R0.L = 0x18c;		/* (396)	R0=0xff90018c(-7339636) */
ffa01b76:	ff e3 7f f6 	CALL 0xffa00874 <_printf_str>;
ffa01b7a:	ec 2f       	JUMP.S 0xffa01b52 <_bfin_EMAC_send_nocopy+0xb2>;

ffa01b7c <_DHCP_tx>:
ffa01b7c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa01b7e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa01b82:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01b86:	0a e1 14 0c 	P2.L = 0xc14;		/* (3092)	P2=0xff900c14 <_txIdx> */
ffa01b8a:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa01b8e:	10 95 00 00 
ffa01b92:	10 32       	P2 = R0;
ffa01b94:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c18 <_txbuf> */
ffa01b98:	09 e1 18 0c 	P1.L = 0xc18;		/* (3096)	P1=0xff900c18 <_txbuf> */
ffa01b9c:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa01ba0:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01ba2:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01ba4:	52 91       	P2 = [P2];
ffa01ba6:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa01baa:	f1 bb 00 00 
ffa01bae:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90050c */
ffa01bb2:	0d e1 3c 0c 	P5.L = 0xc3c;		/* (3132)	P5=0xff900c3c <_NetOurMAC> */
ffa01bb6:	94 ad       	P4 = [P2 + 0x18];
ffa01bb8:	1a 32       	P3 = R2;
ffa01bba:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01bbc:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01bbe:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa01bc2:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa01bc6:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa01bca:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa01bce:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa01bd2:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa01bd6:	20 97       	W[P4] = R0;
ffa01bd8:	68 99       	R0 = B[P5] (X);
ffa01bda:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa01bde:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01be2:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa01be6:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01bea:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa01bee:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01bf2:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa01bf6:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01bfa:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa01bfe:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01c02:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa01c06:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01c0a:	ff e3 a1 fd 	CALL 0xffa0174c <_htons>;
ffa01c0e:	e0 b5       	W[P4 + 0xe] = R0;
ffa01c10:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01c14:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa01c18:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa01c1c:	04 50       	R0 = R4 + R0;
ffa01c1e:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa01c22:	c0 42       	R0 = R0.L (Z);
ffa01c24:	ff e3 94 fd 	CALL 0xffa0174c <_htons>;
ffa01c28:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c14 <_txIdx> */
ffa01c2c:	0a e1 16 0c 	P2.L = 0xc16;		/* (3094)	P2=0xff900c16 <_NetIPID> */
ffa01c30:	60 b6       	W[P4 + 0x12] = R0;
ffa01c32:	10 95       	R0 = W[P2] (Z);
ffa01c34:	08 30       	R1 = R0;
ffa01c36:	09 64       	R1 += 0x1;		/* (  1) */
ffa01c38:	11 97       	W[P2] = R1;
ffa01c3a:	ff e3 89 fd 	CALL 0xffa0174c <_htons>;
ffa01c3e:	a0 b6       	W[P4 + 0x14] = R0;
ffa01c40:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01c44:	ff e3 84 fd 	CALL 0xffa0174c <_htons>;
ffa01c48:	e0 b6       	W[P4 + 0x16] = R0;
ffa01c4a:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01c4c:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa01c50:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa01c54:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa01c58:	66 b7 00 00 
ffa01c5c:	44 30       	R0 = P4;
ffa01c5e:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01c60:	e7 b1       	[P4 + 0x1c] = R7;
ffa01c62:	23 be       	[P4 + 0x20] = P3;
ffa01c64:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01c66:	ff e3 5b fd 	CALL 0xffa0171c <_NetCksum>;
ffa01c6a:	c0 43       	R0 =~ R0;
ffa01c6c:	60 b7       	W[P4 + 0x1a] = R0;
ffa01c6e:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa01c72:	ff e3 6d fd 	CALL 0xffa0174c <_htons>;
ffa01c76:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa01c7a:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa01c7e:	ff e3 67 fd 	CALL 0xffa0174c <_htons>;
ffa01c82:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa01c86:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa01c8a:	04 50       	R0 = R4 + R0;
ffa01c8c:	c0 42       	R0 = R0.L (Z);
ffa01c8e:	ff e3 5f fd 	CALL 0xffa0174c <_htons>;
ffa01c92:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa01c96:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01c98:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa01c9c:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa01ca0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c16(-4191210) */
ffa01ca4:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01ca6:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa01caa:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa01cae:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa01cb2:	10 91       	R0 = [P2];
ffa01cb4:	20 b3       	[P4 + 0x30] = R0;
ffa01cb6:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa01cba:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa01cbe:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa01cc2:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa01cc6:	a7 b3       	[P4 + 0x38] = R7;
ffa01cc8:	e7 b3       	[P4 + 0x3c] = R7;
ffa01cca:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa01cce:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa01cd2:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa01cd6:	ff e3 47 fd 	CALL 0xffa01764 <_htonl>;
ffa01cda:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa01cde:	68 99       	R0 = B[P5] (X);
ffa01ce0:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa01ce4:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01ce8:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa01cec:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01cf0:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa01cf4:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01cf8:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa01cfc:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01d00:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa01d04:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01d08:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa01d0c:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa01d10:	54 5a       	P1 = P4 + P2;
ffa01d12:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d14:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa01d16:	b2 e0 02 20 	LSETUP(0xffa01d1a <_DHCP_tx+0x19e>, 0xffa01d1a <_DHCP_tx+0x19e>) LC1 = P2;
ffa01d1a:	08 9a       	B[P1++] = R0;
ffa01d1c:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa01d20:	54 5a       	P1 = P4 + P2;
ffa01d22:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d24:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa01d26:	b2 e0 02 20 	LSETUP(0xffa01d2a <_DHCP_tx+0x1ae>, 0xffa01d2a <_DHCP_tx+0x1ae>) LC1 = P2;
ffa01d2a:	08 92       	[P1++] = R0;
ffa01d2c:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa01d30:	54 5a       	P1 = P4 + P2;
ffa01d32:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d34:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa01d36:	b2 e0 02 20 	LSETUP(0xffa01d3a <_DHCP_tx+0x1be>, 0xffa01d3a <_DHCP_tx+0x1be>) LC1 = P2;
ffa01d3a:	08 92       	[P1++] = R0;
ffa01d3c:	44 30       	R0 = P4;
ffa01d3e:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa01d42:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa01d46:	f0 b9 00 00 
ffa01d4a:	14 30       	R2 = R4;
ffa01d4c:	ff e3 3c f7 	CALL 0xffa00bc4 <_memcpy_>;
ffa01d50:	01 e8 00 00 	UNLINK;
ffa01d54:	a3 05       	(R7:4, P5:3) = [SP++];
ffa01d56:	ff e2 a5 fe 	JUMP.L 0xffa01aa0 <_bfin_EMAC_send_nocopy>;
	...

ffa01d5c <_bfin_EMAC_send>:
ffa01d5c:	c4 04       	[--SP] = (P5:4);
ffa01d5e:	01 0d       	CC = R1 <= 0x0;
ffa01d60:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01d64:	18 30       	R3 = R0;
ffa01d66:	11 30       	R2 = R1;
ffa01d68:	90 18       	IF CC JUMP 0xffa01e88 <_bfin_EMAC_send+0x12c>;
ffa01d6a:	00 00       	NOP;
ffa01d6c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00020(-4194272) */
ffa01d70:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01d74:	50 95       	R0 = W[P2] (X);
ffa01d76:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01d78:	74 10       	IF !CC JUMP 0xffa01e60 <_bfin_EMAC_send+0x104>;
ffa01d7a:	00 00       	NOP;
ffa01d7c:	00 00       	NOP;
ffa01d7e:	00 00       	NOP;
ffa01d80:	50 95       	R0 = W[P2] (X);
ffa01d82:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01d84:	17 18       	IF CC JUMP 0xffa01db2 <_bfin_EMAC_send+0x56>;
ffa01d86:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0c18 */
ffa01d8a:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01d8e:	b2 e0 09 10 	LSETUP(0xffa01d92 <_bfin_EMAC_send+0x36>, 0xffa01da0 <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa01d92:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01d96:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01d9a:	50 95       	R0 = W[P2] (X);
ffa01d9c:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01d9e:	0a 18       	IF CC JUMP 0xffa01db2 <_bfin_EMAC_send+0x56>;
ffa01da0:	00 00       	NOP;
ffa01da2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01da6:	00 e1 d8 01 	R0.L = 0x1d8;		/* (472)	R0=0xff9001d8(-7339560) */
ffa01daa:	ff e3 65 f5 	CALL 0xffa00874 <_printf_str>;
ffa01dae:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01db0:	53 20       	JUMP.S 0xffa01e56 <_bfin_EMAC_send+0xfa>;
ffa01db2:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90050c */
ffa01db6:	0c e1 14 0c 	P4.L = 0xc14;		/* (3092)	P4=0xff900c14 <_txIdx> */
ffa01dba:	20 95       	R0 = W[P4] (Z);
ffa01dbc:	10 32       	P2 = R0;
ffa01dbe:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c3c <_NetOurMAC> */
ffa01dc2:	0d e1 18 0c 	P5.L = 0xc18;		/* (3096)	P5=0xff900c18 <_txbuf> */
ffa01dc6:	0b 30       	R1 = R3;
ffa01dc8:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01dca:	52 91       	P2 = [P2];
ffa01dcc:	92 ad       	P2 = [P2 + 0x18];
ffa01dce:	12 96       	W[P2++] = R2;
ffa01dd0:	42 30       	R0 = P2;
ffa01dd2:	ff e3 f9 f6 	CALL 0xffa00bc4 <_memcpy_>;
ffa01dd6:	20 95       	R0 = W[P4] (Z);
ffa01dd8:	10 32       	P2 = R0;
ffa01dda:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01ddc:	51 91       	P1 = [P2];
ffa01dde:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01de2:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01de6:	51 93       	[P2] = P1;
ffa01de8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01dec:	88 a1       	R0 = [P1 + 0x18];
ffa01dee:	0a e1 8a 04 	P2.L = 0x48a;		/* (1162)	P2=0xff90048a <_txdmacfg> */
ffa01df2:	48 b0       	[P1 + 0x4] = R0;
ffa01df4:	50 95       	R0 = W[P2] (X);
ffa01df6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0048a(-4193142) */
ffa01dfa:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01dfe:	10 97       	W[P2] = R0;
ffa01e00:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01e04:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01e08:	10 91       	R0 = [P2];
ffa01e0a:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01e0c:	10 93       	[P2] = R0;
ffa01e0e:	88 a2       	R0 = [P1 + 0x28];
ffa01e10:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01e12:	13 10       	IF !CC JUMP 0xffa01e38 <_bfin_EMAC_send+0xdc>;
ffa01e14:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa01e18:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa01e1c:	b2 e0 05 20 	LSETUP(0xffa01e20 <_bfin_EMAC_send+0xc4>, 0xffa01e26 <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa01e20:	88 a2       	R0 = [P1 + 0x28];
ffa01e22:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01e24:	0a 10       	IF !CC JUMP 0xffa01e38 <_bfin_EMAC_send+0xdc>;
ffa01e26:	00 00       	NOP;
ffa01e28:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001d8(-7339560) */
ffa01e2c:	00 e1 f0 01 	R0.L = 0x1f0;		/* (496)	R0=0xff9001f0(-7339536) */
ffa01e30:	ff e3 22 f5 	CALL 0xffa00874 <_printf_str>;
ffa01e34:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01e36:	10 20       	JUMP.S 0xffa01e56 <_bfin_EMAC_send+0xfa>;
ffa01e38:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa01e3c:	61 95 00 00 
ffa01e40:	8a a2       	R2 = [P1 + 0x28];
ffa01e42:	88 b2       	[P1 + 0x28] = R0;
ffa01e44:	c8 42       	R0 = R1.L (Z);
ffa01e46:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa01e4a:	10 0d       	CC = R0 <= 0x2;
ffa01e4c:	0a e1 14 0c 	P2.L = 0xc14;		/* (3092)	P2=0xff900c14 <_txIdx> */
ffa01e50:	14 1c       	IF CC JUMP 0xffa01e78 <_bfin_EMAC_send+0x11c> (BP);
ffa01e52:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e54:	10 97       	W[P2] = R0;
ffa01e56:	01 e8 00 00 	UNLINK;
ffa01e5a:	02 30       	R0 = R2;
ffa01e5c:	84 04       	(P5:4) = [SP++];
ffa01e5e:	10 00       	RTS;
ffa01e60:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01e64:	00 e1 8c 01 	R0.L = 0x18c;		/* (396)	R0=0xff90018c(-7339636) */
ffa01e68:	ff e3 06 f5 	CALL 0xffa00874 <_printf_str>;
ffa01e6c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01e6e:	01 e8 00 00 	UNLINK;
ffa01e72:	02 30       	R0 = R2;
ffa01e74:	84 04       	(P5:4) = [SP++];
ffa01e76:	10 00       	RTS;
ffa01e78:	01 30       	R0 = R1;
ffa01e7a:	08 64       	R0 += 0x1;		/* (  1) */
ffa01e7c:	10 97       	W[P2] = R0;
ffa01e7e:	01 e8 00 00 	UNLINK;
ffa01e82:	02 30       	R0 = R2;
ffa01e84:	84 04       	(P5:4) = [SP++];
ffa01e86:	10 00       	RTS;
ffa01e88:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90018c(-7339636) */
ffa01e8c:	00 e1 bc 01 	R0.L = 0x1bc;		/* (444)	R0=0xff9001bc(-7339588) */
ffa01e90:	ff e3 b4 f5 	CALL 0xffa009f8 <_printf_int>;
ffa01e94:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01e96:	01 e8 00 00 	UNLINK;
ffa01e9a:	02 30       	R0 = R2;
ffa01e9c:	84 04       	(P5:4) = [SP++];
ffa01e9e:	10 00       	RTS;

ffa01ea0 <_ether_testUDP>:
ffa01ea0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01ea2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c14 <_txIdx> */
ffa01ea6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01eaa:	0a e1 14 0c 	P2.L = 0xc14;		/* (3092)	P2=0xff900c14 <_txIdx> */
ffa01eae:	11 95       	R1 = W[P2] (Z);
ffa01eb0:	11 32       	P2 = R1;
ffa01eb2:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01eb6:	09 e1 18 0c 	P1.L = 0xc18;		/* (3096)	P1=0xff900c18 <_txbuf> */
ffa01eba:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa01ebe:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01ec0:	52 91       	P2 = [P2];
ffa01ec2:	95 ad       	P5 = [P2 + 0x18];
ffa01ec4:	55 32       	P2 = P5;
ffa01ec6:	11 96       	W[P2++] = R1;
ffa01ec8:	4a 30       	R1 = P2;
ffa01eca:	00 e3 4d 08 	CALL 0xffa02f64 <_ARP_req>;
ffa01ece:	00 0c       	CC = R0 == 0x0;
ffa01ed0:	7f 18       	IF CC JUMP 0xffa01fce <_ether_testUDP+0x12e>;
ffa01ed2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c14 <_txIdx> */
ffa01ed6:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_NetOurMAC> */
ffa01eda:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01edc:	50 99       	R0 = B[P2] (X);
ffa01ede:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01ee2:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa01ee6:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01eea:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa01eee:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa01ef2:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa01ef6:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa01efa:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa01efe:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01f02:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa01f06:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa01f0a:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01f0e:	ff e3 1f fc 	CALL 0xffa0174c <_htons>;
ffa01f12:	e8 b5       	W[P5 + 0xe] = R0;
ffa01f14:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01f18:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa01f1c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01f1e:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa01f22:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa01f24:	ff e3 14 fc 	CALL 0xffa0174c <_htons>;
ffa01f28:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_NetOurMAC> */
ffa01f2c:	0a e1 16 0c 	P2.L = 0xc16;		/* (3094)	P2=0xff900c16 <_NetIPID> */
ffa01f30:	68 b6       	W[P5 + 0x12] = R0;
ffa01f32:	10 95       	R0 = W[P2] (Z);
ffa01f34:	08 30       	R1 = R0;
ffa01f36:	09 64       	R1 += 0x1;		/* (  1) */
ffa01f38:	11 97       	W[P2] = R1;
ffa01f3a:	ff e3 09 fc 	CALL 0xffa0174c <_htons>;
ffa01f3e:	a8 b6       	W[P5 + 0x14] = R0;
ffa01f40:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01f44:	ff e3 04 fc 	CALL 0xffa0174c <_htons>;
ffa01f48:	e8 b6       	W[P5 + 0x16] = R0;
ffa01f4a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01f4c:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa01f50:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c16 <_NetIPID> */
ffa01f54:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01f56:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa01f5a:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xff900c48 <_NetOurIP> */
ffa01f5e:	10 91       	R0 = [P2];
ffa01f60:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c48 <_NetOurIP> */
ffa01f64:	0a e1 0c 0c 	P2.L = 0xc0c;		/* (3084)	P2=0xff900c0c <_NetDestIP> */
ffa01f68:	e8 b1       	[P5 + 0x1c] = R0;
ffa01f6a:	10 91       	R0 = [P2];
ffa01f6c:	28 b2       	[P5 + 0x20] = R0;
ffa01f6e:	45 30       	R0 = P5;
ffa01f70:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01f72:	6f b7       	W[P5 + 0x1a] = R7;
ffa01f74:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01f76:	ff e3 d3 fb 	CALL 0xffa0171c <_NetCksum>;
ffa01f7a:	c0 43       	R0 =~ R0;
ffa01f7c:	68 b7       	W[P5 + 0x1a] = R0;
ffa01f7e:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa01f82:	ff e3 e5 fb 	CALL 0xffa0174c <_htons>;
ffa01f86:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa01f8a:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa01f8e:	ff e3 df fb 	CALL 0xffa0174c <_htons>;
ffa01f92:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa01f96:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa01f98:	ff e3 da fb 	CALL 0xffa0174c <_htons>;
ffa01f9c:	55 32       	P2 = P5;
ffa01f9e:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa01fa2:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa01fa6:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa01fa8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01faa:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa01fac:	b2 e0 03 10 	LSETUP(0xffa01fb0 <_ether_testUDP+0x110>, 0xffa01fb2 <_ether_testUDP+0x112>) LC1 = P1;
ffa01fb0:	11 9a       	B[P2++] = R1;
ffa01fb2:	09 64       	R1 += 0x1;		/* (  1) */
ffa01fb4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa01fb8:	00 e1 04 02 	R0.L = 0x204;		/* (516)	R0=0xff900204(-7339516) */
ffa01fbc:	ff e3 5c f4 	CALL 0xffa00874 <_printf_str>;
ffa01fc0:	ff e3 70 fd 	CALL 0xffa01aa0 <_bfin_EMAC_send_nocopy>;
ffa01fc4:	01 e8 00 00 	UNLINK;
ffa01fc8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01fca:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01fcc:	10 00       	RTS;
ffa01fce:	01 e8 00 00 	UNLINK;
ffa01fd2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01fd4:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01fd6:	10 00       	RTS;

ffa01fd8 <_eth_header_setup>:
ffa01fd8:	c4 04       	[--SP] = (P5:4);
ffa01fda:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c0c <_NetDestIP> */
ffa01fde:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01fe2:	0a e1 14 0c 	P2.L = 0xc14;		/* (3092)	P2=0xff900c14 <_txIdx> */
ffa01fe6:	00 32       	P0 = R0;
ffa01fe8:	10 95       	R0 = W[P2] (Z);
ffa01fea:	10 32       	P2 = R0;
ffa01fec:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa01ff0:	09 e1 18 0c 	P1.L = 0xc18;		/* (3096)	P1=0xff900c18 <_txbuf> */
ffa01ff4:	00 91       	R0 = [P0];
ffa01ff6:	21 32       	P4 = R1;
ffa01ff8:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01ffa:	52 91       	P2 = [P2];
ffa01ffc:	08 30       	R1 = R0;
ffa01ffe:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa02000:	80 67       	R0 += -0x10;		/* (-16) */
ffa02002:	95 ad       	P5 = [P2 + 0x18];
ffa02004:	00 93       	[P0] = R0;
ffa02006:	02 30       	R0 = R2;
ffa02008:	55 32       	P2 = P5;
ffa0200a:	11 96       	W[P2++] = R1;
ffa0200c:	4a 30       	R1 = P2;
ffa0200e:	00 e3 ab 07 	CALL 0xffa02f64 <_ARP_req>;
ffa02012:	00 0c       	CC = R0 == 0x0;
ffa02014:	2b 18       	IF CC JUMP 0xffa0206a <_eth_header_setup+0x92>;
ffa02016:	00 00       	NOP;
ffa02018:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c14 <_txIdx> */
ffa0201c:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_NetOurMAC> */
ffa02020:	50 99       	R0 = B[P2] (X);
ffa02022:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02026:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa0202a:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0202e:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02032:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa02036:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa0203a:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa0203e:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa02042:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa02046:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa0204a:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa0204e:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02052:	ff e3 7d fb 	CALL 0xffa0174c <_htons>;
ffa02056:	e8 b5       	W[P5 + 0xe] = R0;
ffa02058:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0205a:	20 9b       	B[P4] = R0;
ffa0205c:	4d 30       	R1 = P5;
ffa0205e:	81 64       	R1 += 0x10;		/* ( 16) */
ffa02060:	01 e8 00 00 	UNLINK;
ffa02064:	01 30       	R0 = R1;
ffa02066:	84 04       	(P5:4) = [SP++];
ffa02068:	10 00       	RTS;
ffa0206a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0206c:	20 9b       	B[P4] = R0;
ffa0206e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02070:	01 e8 00 00 	UNLINK;
ffa02074:	01 30       	R0 = R1;
ffa02076:	84 04       	(P5:4) = [SP++];
ffa02078:	10 00       	RTS;
	...

ffa0207c <_icmp_packet_setup>:
ffa0207c:	e4 05       	[--SP] = (R7:4, P5:4);
ffa0207e:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02082:	29 32       	P5 = R1;
ffa02084:	7f 30       	R7 = FP;
ffa02086:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02088:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0208a:	f0 bb       	[FP -0x4] = R0;
ffa0208c:	07 30       	R0 = R7;
ffa0208e:	22 32       	P4 = R2;
ffa02090:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa02094:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa02098:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa0209c:	ff e3 9e ff 	CALL 0xffa01fd8 <_eth_header_setup>;
ffa020a0:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa020a4:	68 99 00 00 
ffa020a8:	80 0c       	CC = R0 < 0x0;
ffa020aa:	14 18       	IF CC JUMP 0xffa020d2 <_icmp_packet_setup+0x56>;
ffa020ac:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa020ae:	f0 b0       	[SP + 0xc] = R0;
ffa020b0:	54 30       	R2 = P4;
ffa020b2:	01 30       	R0 = R1;
ffa020b4:	0f 30       	R1 = R7;
ffa020b6:	ff e3 7f fb 	CALL 0xffa017b4 <_ip_header_setup>;
ffa020ba:	e9 42       	R1 = R5.L (Z);
ffa020bc:	f1 b0       	[SP + 0xc] = R1;
ffa020be:	e1 42       	R1 = R4.L (Z);
ffa020c0:	31 b1       	[SP + 0x10] = R1;
ffa020c2:	72 43       	R2 = R6.B (Z);
ffa020c4:	0f 30       	R1 = R7;
ffa020c6:	ff e3 c1 fb 	CALL 0xffa01848 <_icmp_header_setup>;
ffa020ca:	01 e8 00 00 	UNLINK;
ffa020ce:	a4 05       	(R7:4, P5:4) = [SP++];
ffa020d0:	10 00       	RTS;
ffa020d2:	01 e8 00 00 	UNLINK;
ffa020d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa020d8:	a4 05       	(R7:4, P5:4) = [SP++];
ffa020da:	10 00       	RTS;

ffa020dc <_icmp_rx>:
ffa020dc:	fd 05       	[--SP] = (R7:7, P5:5);
ffa020de:	28 32       	P5 = R0;
ffa020e0:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa020e4:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa020e8:	39 30       	R7 = R1;
ffa020ea:	ff e3 31 fb 	CALL 0xffa0174c <_htons>;
ffa020ee:	c0 42       	R0 = R0.L (Z);
ffa020f0:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa020f2:	01 08       	CC = R1 == R0;
ffa020f4:	06 18       	IF CC JUMP 0xffa02100 <_icmp_rx+0x24>;
ffa020f6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa020f8:	01 e8 00 00 	UNLINK;
ffa020fc:	bd 05       	(R7:7, P5:5) = [SP++];
ffa020fe:	10 00       	RTS;
ffa02100:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02102:	07 0a       	CC = R7 <= R0 (IU);
ffa02104:	f9 1b       	IF CC JUMP 0xffa020f6 <_icmp_rx+0x1a>;
ffa02106:	00 00       	NOP;
ffa02108:	00 00       	NOP;
ffa0210a:	00 00       	NOP;
ffa0210c:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa02110:	08 0c       	CC = R0 == 0x1;
ffa02112:	f2 17       	IF !CC JUMP 0xffa020f6 <_icmp_rx+0x1a> (BP);
ffa02114:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_NetOurMAC> */
ffa02118:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xff900c48 <_NetOurIP> */
ffa0211c:	28 a2       	R0 = [P5 + 0x20];
ffa0211e:	11 91       	R1 = [P2];
ffa02120:	08 08       	CC = R0 == R1;
ffa02122:	ea 17       	IF !CC JUMP 0xffa020f6 <_icmp_rx+0x1a> (BP);
ffa02124:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa02128:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa0212c:	08 08       	CC = R0 == R1;
ffa0212e:	3e 18       	IF CC JUMP 0xffa021aa <_icmp_rx+0xce>;
ffa02130:	00 00       	NOP;
ffa02132:	00 00       	NOP;
ffa02134:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa02136:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa0213a:	08 08       	CC = R0 == R1;
ffa0213c:	dd 17       	IF !CC JUMP 0xffa020f6 <_icmp_rx+0x1a> (BP);
ffa0213e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa02142:	e9 a1       	R1 = [P5 + 0x1c];
ffa02144:	00 e1 1c 02 	R0.L = 0x21c;		/* (540)	R0=0xff90021c(-7339492) */
ffa02148:	ff e3 fa f4 	CALL 0xffa00b3c <_printf_ip>;
ffa0214c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c48 <_NetOurIP> */
ffa02150:	0a e1 0c 0c 	P2.L = 0xc0c;		/* (3084)	P2=0xff900c0c <_NetDestIP> */
ffa02154:	e8 a1       	R0 = [P5 + 0x1c];
ffa02156:	4d 30       	R1 = P5;
ffa02158:	10 93       	[P2] = R0;
ffa0215a:	41 64       	R1 += 0x8;		/* (  8) */
ffa0215c:	00 e3 06 05 	CALL 0xffa02b68 <_ARP_lut_add>;
ffa02160:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90021c(-7339492) */
ffa02164:	00 e1 54 0a 	R0.L = 0xa54;		/* (2644)	R0=0xff900a54(-7337388) */
ffa02168:	ff e3 86 f3 	CALL 0xffa00874 <_printf_str>;
ffa0216c:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa02170:	ea a1 00 00 
ffa02174:	f0 b0       	[SP + 0xc] = R0;
ffa02176:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa0217a:	30 b1       	[SP + 0x10] = R0;
ffa0217c:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa0217e:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa02182:	4f 30       	R1 = FP;
ffa02184:	70 b1       	[SP + 0x14] = R0;
ffa02186:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa02188:	07 30       	R0 = R7;
ffa0218a:	ff e3 79 ff 	CALL 0xffa0207c <_icmp_packet_setup>;
ffa0218e:	08 30       	R1 = R0;
ffa02190:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa02194:	00 0d       	CC = R0 <= 0x0;
ffa02196:	b0 1b       	IF CC JUMP 0xffa020f6 <_icmp_rx+0x1a>;
ffa02198:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa0219a:	45 30       	R0 = P5;
ffa0219c:	17 30       	R2 = R7;
ffa0219e:	ff e3 13 f5 	CALL 0xffa00bc4 <_memcpy_>;
ffa021a2:	ff e3 7f fc 	CALL 0xffa01aa0 <_bfin_EMAC_send_nocopy>;
ffa021a6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa021a8:	a8 2f       	JUMP.S 0xffa020f8 <_icmp_rx+0x1c>;
ffa021aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c0c <_NetDestIP> */
ffa021ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa021b0:	0a e1 a0 0b 	P2.L = 0xba0;		/* (2976)	P2=0xff900ba0 <_g_streamEnabled> */
ffa021b4:	10 9b       	B[P2] = R0;
ffa021b6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa021b8:	a0 2f       	JUMP.S 0xffa020f8 <_icmp_rx+0x1c>;
	...

ffa021bc <_udp_packet_setup>:
ffa021bc:	fc 05       	[--SP] = (R7:7, P5:4);
ffa021be:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa021c2:	29 32       	P5 = R1;
ffa021c4:	7f 30       	R7 = FP;
ffa021c6:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c14 <_txIdx> */
ffa021ca:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa021cc:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa021ce:	0c e1 4c 0c 	P4.L = 0xc4c;		/* (3148)	P4=0xff900c4c <_NetDataDestIP> */
ffa021d2:	f0 bb       	[FP -0x4] = R0;
ffa021d4:	22 91       	R2 = [P4];
ffa021d6:	07 30       	R0 = R7;
ffa021d8:	ff e3 00 ff 	CALL 0xffa01fd8 <_eth_header_setup>;
ffa021dc:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa021e0:	68 99 00 00 
ffa021e4:	80 0c       	CC = R0 < 0x0;
ffa021e6:	14 18       	IF CC JUMP 0xffa0220e <_udp_packet_setup+0x52>;
ffa021e8:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa021ea:	f0 b0       	[SP + 0xc] = R0;
ffa021ec:	01 30       	R0 = R1;
ffa021ee:	22 91       	R2 = [P4];
ffa021f0:	0f 30       	R1 = R7;
ffa021f2:	ff e3 e1 fa 	CALL 0xffa017b4 <_ip_header_setup>;
ffa021f6:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa021fa:	f1 b0       	[SP + 0xc] = R1;
ffa021fc:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa02200:	0f 30       	R1 = R7;
ffa02202:	ff e3 47 fb 	CALL 0xffa01890 <_udp_header_setup>;
ffa02206:	01 e8 00 00 	UNLINK;
ffa0220a:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0220c:	10 00       	RTS;
ffa0220e:	01 e8 00 00 	UNLINK;
ffa02212:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02214:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02216:	10 00       	RTS;

ffa02218 <_SetupTxBuffer>:
ffa02218:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0221a:	38 30       	R7 = R0;
ffa0221c:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02220:	c7 40       	R7 *= R0;
ffa02222:	17 32       	P2 = R7;
ffa02224:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800c18 */
ffa02228:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa0222c:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02230:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa02234:	6a 5b       	P5 = P2 + P5;
ffa02236:	c7 51       	R7 = R7 + R0;
ffa02238:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0223c:	45 30       	R0 = P5;
ffa0223e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02240:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa02242:	ff e3 d1 f4 	CALL 0xffa00be4 <_memset_>;
ffa02246:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa0224a:	af b1 00 00 
ffa0224e:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa02252:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02256:	ff e3 c7 f4 	CALL 0xffa00be4 <_memset_>;
ffa0225a:	45 30       	R0 = P5;
ffa0225c:	60 64       	R0 += 0xc;		/* ( 12) */
ffa0225e:	28 93       	[P5] = R0;
ffa02260:	a8 a1       	R0 = [P5 + 0x18];
ffa02262:	68 b0       	[P5 + 0x4] = R0;
ffa02264:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa02268:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0226a:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa0226c:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa0226e:	10 54       	R0 = R0 & R2;
ffa02270:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02272:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02276:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa02278:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa0227c:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0227e:	18 54       	R0 = R0 & R3;
ffa02280:	08 56       	R0 = R0 | R1;
ffa02282:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa02286:	08 56       	R0 = R0 | R1;
ffa02288:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0228c:	45 30       	R0 = P5;
ffa0228e:	40 65       	R0 += 0x28;		/* ( 40) */
ffa02290:	28 b1       	[P5 + 0x10] = R0;
ffa02292:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa02296:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02298:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0229a:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa0229e:	10 54       	R0 = R0 & R2;
ffa022a0:	08 56       	R0 = R0 | R1;
ffa022a2:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa022a6:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa022aa:	18 54       	R0 = R0 & R3;
ffa022ac:	39 64       	R1 += 0x7;		/* (  7) */
ffa022ae:	08 54       	R0 = R0 & R1;
ffa022b0:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa022b4:	ed bc       	[P5 + 0xc] = P5;
ffa022b6:	01 e8 00 00 	UNLINK;
ffa022ba:	45 30       	R0 = P5;
ffa022bc:	bd 05       	(R7:7, P5:5) = [SP++];
ffa022be:	10 00       	RTS;

ffa022c0 <_SetupRxBuffer>:
ffa022c0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa022c2:	38 30       	R7 = R0;
ffa022c4:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa022c8:	c7 40       	R7 *= R0;
ffa022ca:	17 32       	P2 = R7;
ffa022cc:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa022d0:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa022d4:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa022d8:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa022dc:	6a 5b       	P5 = P2 + P5;
ffa022de:	c7 51       	R7 = R7 + R0;
ffa022e0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa022e4:	45 30       	R0 = P5;
ffa022e6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa022e8:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa022ea:	ff e3 7d f4 	CALL 0xffa00be4 <_memset_>;
ffa022ee:	af b1       	[P5 + 0x18] = R7;
ffa022f0:	07 30       	R0 = R7;
ffa022f2:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa022f6:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa022fa:	ff e3 75 f4 	CALL 0xffa00be4 <_memset_>;
ffa022fe:	45 30       	R0 = P5;
ffa02300:	60 64       	R0 += 0xc;		/* ( 12) */
ffa02302:	28 93       	[P5] = R0;
ffa02304:	a8 a1       	R0 = [P5 + 0x18];
ffa02306:	68 b0       	[P5 + 0x4] = R0;
ffa02308:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa0230c:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0230e:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa02310:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02312:	08 54       	R0 = R0 & R1;
ffa02314:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02316:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0231a:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa0231c:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa02320:	38 54       	R0 = R0 & R7;
ffa02322:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa02324:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa02328:	18 56       	R0 = R0 | R3;
ffa0232a:	10 56       	R0 = R0 | R2;
ffa0232c:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02330:	45 30       	R0 = P5;
ffa02332:	20 65       	R0 += 0x24;		/* ( 36) */
ffa02334:	28 b1       	[P5 + 0x10] = R0;
ffa02336:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa0233a:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0233c:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0233e:	08 54       	R0 = R0 & R1;
ffa02340:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa02344:	08 56       	R0 = R0 | R1;
ffa02346:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa0234a:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa0234e:	38 54       	R0 = R0 & R7;
ffa02350:	18 56       	R0 = R0 | R3;
ffa02352:	10 56       	R0 = R0 | R2;
ffa02354:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02358:	ed bc       	[P5 + 0xc] = P5;
ffa0235a:	01 e8 00 00 	UNLINK;
ffa0235e:	45 30       	R0 = P5;
ffa02360:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02362:	10 00       	RTS;

ffa02364 <_SetupSystemRegs>:
ffa02364:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02366:	28 32       	P5 = R0;
ffa02368:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa0236c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02370:	00 e1 38 02 	R0.L = 0x238;		/* (568)	R0=0xff900238(-7339464) */
ffa02374:	ff e3 80 f2 	CALL 0xffa00874 <_printf_str>;
ffa02378:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ba0(-4191328) */
ffa0237c:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa02380:	50 95       	R0 = W[P2] (X);
ffa02382:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa02386:	08 54       	R0 = R0 & R1;
ffa02388:	10 97       	W[P2] = R0;
ffa0238a:	50 95       	R0 = W[P2] (X);
ffa0238c:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa0238e:	10 97       	W[P2] = R0;
ffa02390:	82 6f       	P2 += -0x10;		/* (-16) */
ffa02392:	51 95       	R1 = W[P2] (X);
ffa02394:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa02398:	08 56       	R0 = R0 | R1;
ffa0239a:	10 97       	W[P2] = R0;
ffa0239c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0239e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa023a0:	10 97       	W[P2] = R0;
ffa023a2:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa023a4:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa023a6:	10 97       	W[P2] = R0;
ffa023a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa023ac:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa023b0:	50 95       	R0 = W[P2] (X);
ffa023b2:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa023b4:	10 97       	W[P2] = R0;
ffa023b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa023ba:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa023be:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa023c2:	10 93       	[P2] = R0;
ffa023c4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa023c6:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa023ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa023cc:	ff e3 4c f9 	CALL 0xffa01664 <_WrPHYReg>;
ffa023d0:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa023d4:	ff e3 e6 f5 	CALL 0xffa00fa0 <_udelay>;
ffa023d8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa023da:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa023dc:	ff e3 60 f9 	CALL 0xffa0169c <_RdPHYReg>;
ffa023e0:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa023e2:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa023e4:	0e 20       	JUMP.S 0xffa02400 <_SetupSystemRegs+0x9c>;
ffa023e6:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa023ea:	ff e3 db f5 	CALL 0xffa00fa0 <_udelay>;
ffa023ee:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa023f0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa023f2:	ff e3 55 f9 	CALL 0xffa0169c <_RdPHYReg>;
ffa023f6:	0f 64       	R7 += 0x1;		/* (  1) */
ffa023f8:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa023fc:	0f 08       	CC = R7 == R1;
ffa023fe:	35 18       	IF CC JUMP 0xffa02468 <_SetupSystemRegs+0x104>;
ffa02400:	06 54       	R0 = R6 & R0;
ffa02402:	00 0c       	CC = R0 == 0x0;
ffa02404:	f1 1f       	IF CC JUMP 0xffa023e6 <_SetupSystemRegs+0x82> (BP);
ffa02406:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa02408:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0240a:	ff e3 49 f9 	CALL 0xffa0169c <_RdPHYReg>;
ffa0240e:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa02412:	01 54       	R0 = R1 & R0;
ffa02414:	00 0c       	CC = R0 == 0x0;
ffa02416:	27 1c       	IF CC JUMP 0xffa02464 <_SetupSystemRegs+0x100> (BP);
ffa02418:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0241a:	d0 4f       	R0 <<= 0x1a;
ffa0241c:	28 93       	[P5] = R0;
ffa0241e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa02422:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02424:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa02428:	10 93       	[P2] = R0;
ffa0242a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa0242e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02430:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa02434:	10 97       	W[P2] = R0;
ffa02436:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa02438:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0243a:	11 97       	W[P2] = R1;
ffa0243c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0243e:	10 97       	W[P2] = R0;
ffa02440:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02442:	10 97       	W[P2] = R0;
ffa02444:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa02448:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa0244c:	10 97       	W[P2] = R0;
ffa0244e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02450:	11 97       	W[P2] = R1;
ffa02452:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02454:	10 97       	W[P2] = R0;
ffa02456:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02458:	10 97       	W[P2] = R0;
ffa0245a:	01 e8 00 00 	UNLINK;
ffa0245e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02460:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02462:	10 00       	RTS;
ffa02464:	28 93       	[P5] = R0;
ffa02466:	dc 2f       	JUMP.S 0xffa0241e <_SetupSystemRegs+0xba>;
ffa02468:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0246c:	00 e1 50 02 	R0.L = 0x250;		/* (592)	R0=0xff900250(-7339440) */
ffa02470:	ff e3 02 f2 	CALL 0xffa00874 <_printf_str>;
ffa02474:	01 e8 00 00 	UNLINK;
ffa02478:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0247a:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0247c:	10 00       	RTS;
	...

ffa02480 <_SetupMacAddr>:
ffa02480:	10 32       	P2 = R0;
ffa02482:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02484:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02486:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0248a:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa0248e:	10 9b       	B[P2] = R0;
ffa02490:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa02492:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa02496:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa02498:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa0249c:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa0249e:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa024a2:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa024a6:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa024aa:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa024ac:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa024b0:	10 99       	R0 = B[P2] (Z);
ffa024b2:	08 56       	R0 = R0 | R1;
ffa024b4:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa024b8:	89 4f       	R1 <<= 0x11;
ffa024ba:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c18(-4191208) */
ffa024be:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa024c2:	08 56       	R0 = R0 | R1;
ffa024c4:	08 93       	[P1] = R0;
ffa024c6:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa024ca:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa024ce:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa024d2:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa024d4:	28 93       	[P5] = R0;
ffa024d6:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa024da:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa024de:	09 91       	R1 = [P1];
ffa024e0:	07 e1 54 0a 	R7.L = 0xa54;		/* (2644)	R7=0xff900a54(-7337388) */
ffa024e4:	00 e1 84 02 	R0.L = 0x284;		/* (644)	R0=0xff900284(-7339388) */
ffa024e8:	ff e3 2c f2 	CALL 0xffa00940 <_printf_hex>;
ffa024ec:	07 30       	R0 = R7;
ffa024ee:	ff e3 c3 f1 	CALL 0xffa00874 <_printf_str>;
ffa024f2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900284(-7339388) */
ffa024f6:	29 91       	R1 = [P5];
ffa024f8:	00 e1 90 02 	R0.L = 0x290;		/* (656)	R0=0xff900290(-7339376) */
ffa024fc:	ff e3 22 f2 	CALL 0xffa00940 <_printf_hex>;
ffa02500:	01 e8 00 00 	UNLINK;
ffa02504:	07 30       	R0 = R7;
ffa02506:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02508:	ff e2 b6 f1 	JUMP.L 0xffa00874 <_printf_str>;

ffa0250c <_bfin_EMAC_init>:
ffa0250c:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0250e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900290(-7339376) */
ffa02512:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02516:	00 e1 9c 02 	R0.L = 0x29c;		/* (668)	R0=0xff90029c(-7339364) */
ffa0251a:	ff e3 ad f1 	CALL 0xffa00874 <_printf_str>;
ffa0251e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_NetArpLut_age> */
ffa02522:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02524:	0a e1 14 0c 	P2.L = 0xc14;		/* (3092)	P2=0xff900c14 <_txIdx> */
ffa02528:	16 97       	W[P2] = R6;
ffa0252a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c14 <_txIdx> */
ffa0252e:	0a e1 28 0c 	P2.L = 0xc28;		/* (3112)	P2=0xff900c28 <_rxIdx> */
ffa02532:	16 97       	W[P2] = R6;
ffa02534:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c28 <_rxIdx> */
ffa02538:	0a e1 16 0c 	P2.L = 0xc16;		/* (3094)	P2=0xff900c16 <_NetIPID> */
ffa0253c:	16 97       	W[P2] = R6;
ffa0253e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c16 <_NetIPID> */
ffa02542:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02544:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_NetSubnetMask> */
ffa02548:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa0254a:	17 93       	[P2] = R7;
ffa0254c:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa02550:	f0 b0       	[SP + 0xc] = R0;
ffa02552:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02554:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02558:	ff e3 50 f8 	CALL 0xffa015f8 <_FormatIPAddress>;
ffa0255c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c44 <_NetSubnetMask> */
ffa02560:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xff900c48 <_NetOurIP> */
ffa02564:	10 93       	[P2] = R0;
ffa02566:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02568:	f0 b0       	[SP + 0xc] = R0;
ffa0256a:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa0256e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02570:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02574:	ff e3 42 f8 	CALL 0xffa015f8 <_FormatIPAddress>;
ffa02578:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c48 <_NetOurIP> */
ffa0257c:	0a e1 0c 0c 	P2.L = 0xc0c;		/* (3084)	P2=0xff900c0c <_NetDestIP> */
ffa02580:	10 93       	[P2] = R0;
ffa02582:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa02584:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa02586:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa0258a:	f0 b0       	[SP + 0xc] = R0;
ffa0258c:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa02590:	ff e3 34 f8 	CALL 0xffa015f8 <_FormatIPAddress>;
ffa02594:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c0c <_NetDestIP> */
ffa02598:	0a e1 4c 0c 	P2.L = 0xc4c;		/* (3148)	P2=0xff900c4c <_NetDataDestIP> */
ffa0259c:	10 93       	[P2] = R0;
ffa0259e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c4c <_NetDataDestIP> */
ffa025a2:	0a e1 2c 0d 	P2.L = 0xd2c;		/* (3372)	P2=0xff900d2c <_TcpState> */
ffa025a6:	17 93       	[P2] = R7;
ffa025a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d2c <_TcpState> */
ffa025ac:	0a e1 24 0d 	P2.L = 0xd24;		/* (3364)	P2=0xff900d24 <_TcpSeqClient> */
ffa025b0:	17 93       	[P2] = R7;
ffa025b2:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa025b6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d24 <_TcpSeqClient> */
ffa025ba:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa025be:	0a e1 20 0d 	P2.L = 0xd20;		/* (3360)	P2=0xff900d20 <_TcpSeqHost> */
ffa025c2:	10 93       	[P2] = R0;
ffa025c4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d20 <_TcpSeqHost> */
ffa025c8:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpClientPort> */
ffa025cc:	16 97       	W[P2] = R6;
ffa025ce:	00 e3 7f 02 	CALL 0xffa02acc <_ARP_init>;
ffa025d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d38(-4190920) */
ffa025d6:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa025da:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa025de:	17 93       	[P2] = R7;
ffa025e0:	00 e1 3c 0c 	R0.L = 0xc3c;		/* (3132)	R0=0xff900c3c <_NetOurMAC>(-7336900) */
ffa025e4:	ff e3 4e ff 	CALL 0xffa02480 <_SetupMacAddr>;
ffa025e8:	47 30       	R0 = FP;
ffa025ea:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa025ec:	ff e3 bc fe 	CALL 0xffa02364 <_SetupSystemRegs>;
ffa025f0:	80 0c       	CC = R0 < 0x0;
ffa025f2:	7a 18       	IF CC JUMP 0xffa026e6 <_bfin_EMAC_init+0x1da>;
ffa025f4:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa025f8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa025fa:	07 e1 2c 0c 	R7.L = 0xc2c;		/* (3116)	R7=0xff900c2c <_rxbuf>(-7336916) */
ffa025fe:	ff e3 61 fe 	CALL 0xffa022c0 <_SetupRxBuffer>;
ffa02602:	07 32       	P0 = R7;
ffa02604:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02606:	00 93       	[P0] = R0;
ffa02608:	17 32       	P2 = R7;
ffa0260a:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa0260c:	44 30       	R0 = P4;
ffa0260e:	ff e3 59 fe 	CALL 0xffa022c0 <_SetupRxBuffer>;
ffa02612:	44 0c       	CC = P4 == 0x0;
ffa02614:	08 32       	P1 = R0;
ffa02616:	28 92       	[P5++] = R0;
ffa02618:	52 18       	IF CC JUMP 0xffa026bc <_bfin_EMAC_init+0x1b0>;
ffa0261a:	07 32       	P0 = R7;
ffa0261c:	5c 0c       	CC = P4 == 0x3;
ffa0261e:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa02620:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa02624:	d0 b0       	[P2 + 0xc] = R0;
ffa02626:	54 18       	IF CC JUMP 0xffa026ce <_bfin_EMAC_init+0x1c2>;
ffa02628:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa0262a:	5c 0d       	CC = P4 <= 0x3;
ffa0262c:	ee 1f       	IF CC JUMP 0xffa02608 <_bfin_EMAC_init+0xfc> (BP);
ffa0262e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02630:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bc4 <_printf_temp> */
ffa02634:	ff e3 f2 fd 	CALL 0xffa02218 <_SetupTxBuffer>;
ffa02638:	0b e1 18 0c 	P3.L = 0xc18;		/* (3096)	P3=0xff900c18 <_txbuf> */
ffa0263c:	18 93       	[P3] = R0;
ffa0263e:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02640:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa02642:	44 30       	R0 = P4;
ffa02644:	ff e3 ea fd 	CALL 0xffa02218 <_SetupTxBuffer>;
ffa02648:	44 0c       	CC = P4 == 0x0;
ffa0264a:	08 32       	P1 = R0;
ffa0264c:	28 92       	[P5++] = R0;
ffa0264e:	35 18       	IF CC JUMP 0xffa026b8 <_bfin_EMAC_init+0x1ac>;
ffa02650:	00 00       	NOP;
ffa02652:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa02654:	5c 0c       	CC = P4 == 0x3;
ffa02656:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa0265a:	d0 b0       	[P2 + 0xc] = R0;
ffa0265c:	32 18       	IF CC JUMP 0xffa026c0 <_bfin_EMAC_init+0x1b4>;
ffa0265e:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa02660:	5c 0d       	CC = P4 <= 0x3;
ffa02662:	ef 1f       	IF CC JUMP 0xffa02640 <_bfin_EMAC_init+0x134> (BP);
ffa02664:	17 32       	P2 = R7;
ffa02666:	51 91       	P1 = [P2];
ffa02668:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa0266c:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa02670:	51 93       	[P2] = P1;
ffa02672:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa02674:	42 6c       	P2 += 0x8;		/* (  8) */
ffa02676:	10 97       	W[P2] = R0;
ffa02678:	ff e3 e8 f7 	CALL 0xffa01648 <_PollMdcDone>;
ffa0267c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0267e:	f0 b9       	R0 = [FP -0x4];
ffa02680:	d1 4f       	R1 <<= 0x1a;
ffa02682:	08 08       	CC = R0 == R1;
ffa02684:	2c 18       	IF CC JUMP 0xffa026dc <_bfin_EMAC_init+0x1d0>;
ffa02686:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa0268a:	01 30       	R0 = R1;
ffa0268c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa02690:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02694:	10 93       	[P2] = R0;
ffa02696:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0269a:	00 e1 ac 02 	R0.L = 0x2ac;		/* (684)	R0=0xff9002ac(-7339348) */
ffa0269e:	ff e3 51 f1 	CALL 0xffa00940 <_printf_hex>;
ffa026a2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002ac(-7339348) */
ffa026a6:	00 e1 54 0a 	R0.L = 0xa54;		/* (2644)	R0=0xff900a54(-7337388) */
ffa026aa:	ff e3 e5 f0 	CALL 0xffa00874 <_printf_str>;
ffa026ae:	01 e8 00 00 	UNLINK;
ffa026b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026b4:	b3 05       	(R7:6, P5:3) = [SP++];
ffa026b6:	10 00       	RTS;
ffa026b8:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa026ba:	c4 2f       	JUMP.S 0xffa02642 <_bfin_EMAC_init+0x136>;
ffa026bc:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa026be:	a7 2f       	JUMP.S 0xffa0260c <_bfin_EMAC_init+0x100>;
ffa026c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa026c4:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_txbuf> */
ffa026c8:	10 91       	R0 = [P2];
ffa026ca:	c8 b0       	[P1 + 0xc] = R0;
ffa026cc:	cc 2f       	JUMP.S 0xffa02664 <_bfin_EMAC_init+0x158>;
ffa026ce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c18 <_txbuf> */
ffa026d2:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_rxbuf> */
ffa026d6:	10 91       	R0 = [P2];
ffa026d8:	c8 b0       	[P1 + 0xc] = R0;
ffa026da:	aa 2f       	JUMP.S 0xffa0262e <_bfin_EMAC_init+0x122>;
ffa026dc:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa026e0:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa026e2:	01 30       	R0 = R1;
ffa026e4:	d4 2f       	JUMP.S 0xffa0268c <_bfin_EMAC_init+0x180>;
ffa026e6:	01 e8 00 00 	UNLINK;
ffa026ea:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa026ec:	b3 05       	(R7:6, P5:3) = [SP++];
ffa026ee:	10 00       	RTS;

ffa026f0 <_bfin_EMAC_recv_poll>:
ffa026f0:	e3 05       	[--SP] = (R7:4, P5:3);
ffa026f2:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa026f6:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa026fa:	0d e1 2c 0c 	P5.L = 0xc2c;		/* (3116)	P5=0xff900c2c <_rxbuf> */
ffa026fe:	0c e1 28 0c 	P4.L = 0xc28;		/* (3112)	P4=0xff900c28 <_rxIdx> */
ffa02702:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02706:	28 30       	R5 = R0;
ffa02708:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0270a:	75 30       	R6 = P5;
ffa0270c:	5c 32       	P3 = P4;
ffa0270e:	06 20       	JUMP.S 0xffa0271a <_bfin_EMAC_recv_poll+0x2a>;
ffa02710:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02712:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02716:	07 08       	CC = R7 == R0;
ffa02718:	0c 18       	IF CC JUMP 0xffa02730 <_bfin_EMAC_recv_poll+0x40>;
ffa0271a:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa0271e:	ff e3 41 f4 	CALL 0xffa00fa0 <_udelay>;
ffa02722:	20 95       	R0 = W[P4] (Z);
ffa02724:	10 32       	P2 = R0;
ffa02726:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02728:	52 91       	P2 = [P2];
ffa0272a:	90 a2       	R0 = [P2 + 0x28];
ffa0272c:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa0272e:	f1 1f       	IF CC JUMP 0xffa02710 <_bfin_EMAC_recv_poll+0x20> (BP);
ffa02730:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02734:	91 a2       	R1 = [P2 + 0x28];
ffa02736:	41 54       	R1 = R1 & R0;
ffa02738:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0273a:	01 09       	CC = R1 <= R0;
ffa0273c:	07 10       	IF !CC JUMP 0xffa0274a <_bfin_EMAC_recv_poll+0x5a>;
ffa0273e:	01 e8 00 00 	UNLINK;
ffa02742:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02744:	07 30       	R0 = R7;
ffa02746:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02748:	10 00       	RTS;
ffa0274a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0274c:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa02750:	90 b2 00 00 
ffa02754:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02756:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0275a:	0f 30       	R1 = R7;
ffa0275c:	00 e1 b8 02 	R0.L = 0x2b8;		/* (696)	R0=0xff9002b8(-7339336) */
ffa02760:	ff e3 4c f1 	CALL 0xffa009f8 <_printf_int>;
ffa02764:	18 95       	R0 = W[P3] (Z);
ffa02766:	10 32       	P2 = R0;
ffa02768:	0e 32       	P1 = R6;
ffa0276a:	0f 30       	R1 = R7;
ffa0276c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0276e:	52 91       	P2 = [P2];
ffa02770:	90 a1       	R0 = [P2 + 0x18];
ffa02772:	15 32       	P2 = R5;
ffa02774:	10 93       	[P2] = R0;
ffa02776:	00 e3 5f 02 	CALL 0xffa02c34 <_ARP_rx>;
ffa0277a:	00 0c       	CC = R0 == 0x0;
ffa0277c:	1f 18       	IF CC JUMP 0xffa027ba <_bfin_EMAC_recv_poll+0xca>;
ffa0277e:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02780:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02784:	20 95       	R0 = W[P4] (Z);
ffa02786:	10 32       	P2 = R0;
ffa02788:	61 95       	R1 = W[P4] (X);
ffa0278a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0278c:	09 e1 28 0c 	P1.L = 0xc28;		/* (3112)	P1=0xff900c28 <_rxIdx> */
ffa02790:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02792:	52 91       	P2 = [P2];
ffa02794:	90 b2       	[P2 + 0x28] = R0;
ffa02796:	c8 42       	R0 = R1.L (Z);
ffa02798:	10 0d       	CC = R0 <= 0x2;
ffa0279a:	08 1c       	IF CC JUMP 0xffa027aa <_bfin_EMAC_recv_poll+0xba> (BP);
ffa0279c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0279e:	08 97       	W[P1] = R0;
ffa027a0:	01 e8 00 00 	UNLINK;
ffa027a4:	07 30       	R0 = R7;
ffa027a6:	a3 05       	(R7:4, P5:3) = [SP++];
ffa027a8:	10 00       	RTS;
ffa027aa:	01 30       	R0 = R1;
ffa027ac:	08 64       	R0 += 0x1;		/* (  1) */
ffa027ae:	08 97       	W[P1] = R0;
ffa027b0:	01 e8 00 00 	UNLINK;
ffa027b4:	07 30       	R0 = R7;
ffa027b6:	a3 05       	(R7:4, P5:3) = [SP++];
ffa027b8:	10 00       	RTS;
ffa027ba:	0d 32       	P1 = R5;
ffa027bc:	0f 30       	R1 = R7;
ffa027be:	08 91       	R0 = [P1];
ffa027c0:	ff e3 8e fc 	CALL 0xffa020dc <_icmp_rx>;
ffa027c4:	00 0c       	CC = R0 == 0x0;
ffa027c6:	dd 1f       	IF CC JUMP 0xffa02780 <_bfin_EMAC_recv_poll+0x90> (BP);
ffa027c8:	db 2f       	JUMP.S 0xffa0277e <_bfin_EMAC_recv_poll+0x8e>;
	...

ffa027cc <_DHCP_rx>:
ffa027cc:	ed 05       	[--SP] = (R7:5, P5:5);
ffa027ce:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa027d2:	6f 30       	R5 = FP;
ffa027d4:	e5 67       	R5 += -0x4;		/* ( -4) */
ffa027d6:	01 20       	JUMP.S 0xffa027d8 <_DHCP_rx+0xc>;
ffa027d8:	05 30       	R0 = R5;
ffa027da:	ff e3 8b ff 	CALL 0xffa026f0 <_bfin_EMAC_recv_poll>;
ffa027de:	38 30       	R7 = R0;
ffa027e0:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa027e4:	87 51       	R6 = R7 + R0;
ffa027e6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa027ea:	00 e1 f8 02 	R0.L = 0x2f8;		/* (760)	R0=0xff9002f8(-7339272) */
ffa027ee:	0e 30       	R1 = R6;
ffa027f0:	ff e3 04 f1 	CALL 0xffa009f8 <_printf_int>;
ffa027f4:	20 e1 1b 01 	R0 = 0x11b (X);		/*		R0=0x11b(283) */
ffa027f8:	07 09       	CC = R7 <= R0;
ffa027fa:	fd b9       	P5 = [FP -0x4];
ffa027fc:	0c 18       	IF CC JUMP 0xffa02814 <_DHCP_rx+0x48>;
ffa027fe:	00 00       	NOP;
ffa02800:	00 00       	NOP;
ffa02802:	00 00       	NOP;
ffa02804:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa02806:	ff e3 a3 f7 	CALL 0xffa0174c <_htons>;
ffa0280a:	c0 42       	R0 = R0.L (Z);
ffa0280c:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa02810:	08 08       	CC = R0 == R1;
ffa02812:	08 18       	IF CC JUMP 0xffa02822 <_DHCP_rx+0x56>;
ffa02814:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011b(-7339749) */
ffa02818:	00 e1 dc 02 	R0.L = 0x2dc;		/* (732)	R0=0xff9002dc(-7339300) */
ffa0281c:	ff e3 2c f0 	CALL 0xffa00874 <_printf_str>;
ffa02820:	dc 2f       	JUMP.S 0xffa027d8 <_DHCP_rx+0xc>;
ffa02822:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa02826:	ff e3 93 f7 	CALL 0xffa0174c <_htons>;
ffa0282a:	c0 42       	R0 = R0.L (Z);
ffa0282c:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa02830:	01 08       	CC = R1 == R0;
ffa02832:	d3 17       	IF !CC JUMP 0xffa027d8 <_DHCP_rx+0xc> (BP);
ffa02834:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa02838:	ff e3 8a f7 	CALL 0xffa0174c <_htons>;
ffa0283c:	c0 42       	R0 = R0.L (Z);
ffa0283e:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa02842:	01 08       	CC = R1 == R0;
ffa02844:	ca 17       	IF !CC JUMP 0xffa027d8 <_DHCP_rx+0xc> (BP);
ffa02846:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c2c(-4191188) */
ffa0284a:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa0284e:	11 91       	R1 = [P2];
ffa02850:	28 a3       	R0 = [P5 + 0x30];
ffa02852:	08 08       	CC = R0 == R1;
ffa02854:	c2 17       	IF !CC JUMP 0xffa027d8 <_DHCP_rx+0xc> (BP);
ffa02856:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa0285a:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa0285e:	ff e3 83 f7 	CALL 0xffa01764 <_htonl>;
ffa02862:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa02866:	01 08       	CC = R1 == R0;
ffa02868:	b8 17       	IF !CC JUMP 0xffa027d8 <_DHCP_rx+0xc> (BP);
ffa0286a:	4d 30       	R1 = P5;
ffa0286c:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa02870:	01 50       	R0 = R1 + R0;
ffa02872:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa02876:	f0 bb 00 00 
ffa0287a:	ff e3 59 f8 	CALL 0xffa0192c <_DHCP_parse>;
ffa0287e:	e9 a3       	R1 = [P5 + 0x3c];
ffa02880:	01 0c       	CC = R1 == 0x0;
ffa02882:	12 1c       	IF CC JUMP 0xffa028a6 <_DHCP_rx+0xda> (BP);
ffa02884:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa02888:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xff900c48 <_NetOurIP> */
ffa0288c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa02890:	11 93       	[P2] = R1;
ffa02892:	00 e1 cc 02 	R0.L = 0x2cc;		/* (716)	R0=0xff9002cc(-7339316) */
ffa02896:	ff e3 53 f1 	CALL 0xffa00b3c <_printf_ip>;
ffa0289a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002cc(-7339316) */
ffa0289e:	00 e1 54 0a 	R0.L = 0xa54;		/* (2644)	R0=0xff900a54(-7337388) */
ffa028a2:	ff e3 e9 ef 	CALL 0xffa00874 <_printf_str>;
ffa028a6:	01 e8 00 00 	UNLINK;
ffa028aa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa028ac:	ad 05       	(R7:5, P5:5) = [SP++];
ffa028ae:	10 00       	RTS;

ffa028b0 <_DHCP_req>:
ffa028b0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa028b2:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c2c <_rxbuf> */
ffa028b6:	0d e1 10 0c 	P5.L = 0xc10;		/* (3088)	P5=0xff900c10 <_NetDHCPserv> */
ffa028ba:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa028bc:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa028c0:	28 93       	[P5] = R0;
ffa028c2:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa028c4:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa028c8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa028ca:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa028ce:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa028d2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa028d4:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa028d8:	7f 30       	R7 = FP;
ffa028da:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa028de:	00 e1 0c 03 	R0.L = 0x30c;		/* (780)	R0=0xff90030c(-7339252) */
ffa028e2:	a7 67       	R7 += -0xc;		/* (-12) */
ffa028e4:	ff e3 c8 ef 	CALL 0xffa00874 <_printf_str>;
ffa028e8:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa028ec:	2a 91 00 00 
ffa028f0:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa028f2:	ff e3 45 f9 	CALL 0xffa01b7c <_DHCP_tx>;
ffa028f6:	ff e3 6b ff 	CALL 0xffa027cc <_DHCP_rx>;
ffa028fa:	29 91       	R1 = [P5];
ffa028fc:	39 0c       	CC = R1 == -0x1;
ffa028fe:	43 18       	IF CC JUMP 0xffa02984 <_DHCP_req+0xd4>;
ffa02900:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c48 <_NetOurIP> */
ffa02904:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xff900c48 <_NetOurIP> */
ffa02908:	10 91       	R0 = [P2];
ffa0290a:	00 0c       	CC = R0 == 0x0;
ffa0290c:	08 18       	IF CC JUMP 0xffa0291c <_DHCP_req+0x6c>;
ffa0290e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c48 <_NetOurIP> */
ffa02912:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_NetSubnetMask> */
ffa02916:	10 91       	R0 = [P2];
ffa02918:	00 0c       	CC = R0 == 0x0;
ffa0291a:	30 10       	IF !CC JUMP 0xffa0297a <_DHCP_req+0xca>;
ffa0291c:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa0291e:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa02922:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02924:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa02928:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0292a:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa0292e:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02930:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02934:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02936:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa0293a:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa0293e:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa02942:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa02946:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0294a:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa0294e:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa02952:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02954:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa02958:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa0295c:	00 e1 3c 03 	R0.L = 0x33c;		/* (828)	R0=0xff90033c(-7339204) */
ffa02960:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa02964:	ff e3 88 ef 	CALL 0xffa00874 <_printf_str>;
ffa02968:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0296a:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa0296e:	2a 91 00 00 
ffa02972:	ff e3 05 f9 	CALL 0xffa01b7c <_DHCP_tx>;
ffa02976:	ff e3 2b ff 	CALL 0xffa027cc <_DHCP_rx>;
ffa0297a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0297c:	01 e8 00 00 	UNLINK;
ffa02980:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02982:	10 00       	RTS;
ffa02984:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02988:	00 e1 20 03 	R0.L = 0x320;		/* (800)	R0=0xff900320(-7339232) */
ffa0298c:	ff e3 74 ef 	CALL 0xffa00874 <_printf_str>;
ffa02990:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02992:	f5 2f       	JUMP.S 0xffa0297c <_DHCP_req+0xcc>;

ffa02994 <_bfin_EMAC_recv>:
ffa02994:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02996:	28 32       	P5 = R0;
ffa02998:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c28 <_rxIdx> */
ffa0299c:	0c e1 28 0c 	P4.L = 0xc28;		/* (3112)	P4=0xff900c28 <_rxIdx> */
ffa029a0:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00c18(-4191208) */
ffa029a4:	44 e1 c0 ff 	R4.H = 0xffc0;		/* (-64)	R4=0xffc00003(-4194301) */
ffa029a8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa029ac:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa029ae:	6c 30       	R5 = P4;
ffa029b0:	86 60       	R6 = 0x10 (X);		/*		R6=0x10( 16) */
ffa029b2:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa029b6:	04 e1 04 07 	R4.L = 0x704;		/* (1796)	R4=0xffc00704(-4192508) */
ffa029ba:	0f 20       	JUMP.S 0xffa029d8 <_bfin_EMAC_recv+0x44>;
ffa029bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa029be:	20 97       	W[P4] = R0;
ffa029c0:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R0 = [P5] || NOP;
ffa029c4:	28 91 00 00 
ffa029c8:	00 e3 36 01 	CALL 0xffa02c34 <_ARP_rx>;
ffa029cc:	00 0c       	CC = R0 == 0x0;
ffa029ce:	43 18       	IF CC JUMP 0xffa02a54 <_bfin_EMAC_recv+0xc0>;
ffa029d0:	14 32       	P2 = R4;
ffa029d2:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa029d4:	16 97       	W[P2] = R6;
ffa029d6:	01 20       	JUMP.S 0xffa029d8 <_bfin_EMAC_recv+0x44>;
ffa029d8:	0d 32       	P1 = R5;
ffa029da:	08 95       	R0 = W[P1] (Z);
ffa029dc:	10 32       	P2 = R0;
ffa029de:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c28 <_rxIdx> */
ffa029e2:	09 e1 2c 0c 	P1.L = 0xc2c;		/* (3116)	P1=0xff900c2c <_rxbuf> */
ffa029e6:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa029e8:	51 91       	P1 = [P2];
ffa029ea:	88 a2       	R0 = [P1 + 0x28];
ffa029ec:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa029ee:	48 18       	IF CC JUMP 0xffa02a7e <_bfin_EMAC_recv+0xea>;
ffa029f0:	00 00       	NOP;
ffa029f2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa029f4:	a0 4f       	R0 <<= 0x14;
ffa029f6:	89 a2       	R1 = [P1 + 0x28];
ffa029f8:	81 54       	R2 = R1 & R0;
ffa029fa:	02 0c       	CC = R2 == 0x0;
ffa029fc:	47 10       	IF !CC JUMP 0xffa02a8a <_bfin_EMAC_recv+0xf6>;
ffa029fe:	00 00       	NOP;
ffa02a00:	00 00       	NOP;
ffa02a02:	00 00       	NOP;
ffa02a04:	88 a2       	R0 = [P1 + 0x28];
ffa02a06:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa02a08:	4c 18       	IF CC JUMP 0xffa02aa0 <_bfin_EMAC_recv+0x10c>;
ffa02a0a:	00 00       	NOP;
ffa02a0c:	00 00       	NOP;
ffa02a0e:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02a12:	89 a2       	R1 = [P1 + 0x28];
ffa02a14:	c1 55       	R7 = R1 & R0;
ffa02a16:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02a18:	07 09       	CC = R7 <= R0;
ffa02a1a:	4e 18       	IF CC JUMP 0xffa02ab6 <_bfin_EMAC_recv+0x122>;
ffa02a1c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c44(-4191164) */
ffa02a20:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa02a24:	16 97       	W[P2] = R6;
ffa02a26:	88 a1       	R0 = [P1 + 0x18];
ffa02a28:	59 95       	R1 = W[P3] (X);
ffa02a2a:	28 93       	[P5] = R0;
ffa02a2c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02a2e:	08 56       	R0 = R0 | R1;
ffa02a30:	18 97       	W[P3] = R0;
ffa02a32:	61 95       	R1 = W[P4] (X);
ffa02a34:	c8 42       	R0 = R1.L (Z);
ffa02a36:	10 0d       	CC = R0 <= 0x2;
ffa02a38:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02a3a:	8a b2       	[P1 + 0x28] = R2;
ffa02a3c:	c0 17       	IF !CC JUMP 0xffa029bc <_bfin_EMAC_recv+0x28> (BP);
ffa02a3e:	01 30       	R0 = R1;
ffa02a40:	08 64       	R0 += 0x1;		/* (  1) */
ffa02a42:	20 97       	W[P4] = R0;
ffa02a44:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R0 = [P5] || NOP;
ffa02a48:	28 91 00 00 
ffa02a4c:	00 e3 f4 00 	CALL 0xffa02c34 <_ARP_rx>;
ffa02a50:	00 0c       	CC = R0 == 0x0;
ffa02a52:	bf 17       	IF !CC JUMP 0xffa029d0 <_bfin_EMAC_recv+0x3c> (BP);
ffa02a54:	28 91       	R0 = [P5];
ffa02a56:	0f 30       	R1 = R7;
ffa02a58:	ff e3 42 fb 	CALL 0xffa020dc <_icmp_rx>;
ffa02a5c:	00 0c       	CC = R0 == 0x0;
ffa02a5e:	b9 17       	IF !CC JUMP 0xffa029d0 <_bfin_EMAC_recv+0x3c> (BP);
ffa02a60:	28 91       	R0 = [P5];
ffa02a62:	0f 30       	R1 = R7;
ffa02a64:	00 e3 46 04 	CALL 0xffa032f0 <_tcp_rx>;
ffa02a68:	00 0c       	CC = R0 == 0x0;
ffa02a6a:	b3 17       	IF !CC JUMP 0xffa029d0 <_bfin_EMAC_recv+0x3c> (BP);
ffa02a6c:	0c 32       	P1 = R4;
ffa02a6e:	07 0d       	CC = R7 <= 0x0;
ffa02a70:	0e 97       	W[P1] = R6;
ffa02a72:	b3 1f       	IF CC JUMP 0xffa029d8 <_bfin_EMAC_recv+0x44> (BP);
ffa02a74:	01 e8 00 00 	UNLINK;
ffa02a78:	07 30       	R0 = R7;
ffa02a7a:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02a7c:	10 00       	RTS;
ffa02a7e:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02a80:	01 e8 00 00 	UNLINK;
ffa02a84:	07 30       	R0 = R7;
ffa02a86:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02a88:	10 00       	RTS;
ffa02a8a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900003(-7340029) */
ffa02a8e:	00 e1 50 03 	R0.L = 0x350;		/* (848)	R0=0xff900350(-7339184) */
ffa02a92:	ff e3 f1 ee 	CALL 0xffa00874 <_printf_str>;
ffa02a96:	01 e8 00 00 	UNLINK;
ffa02a9a:	07 30       	R0 = R7;
ffa02a9c:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02a9e:	10 00       	RTS;
ffa02aa0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900350(-7339184) */
ffa02aa4:	00 e1 6c 03 	R0.L = 0x36c;		/* (876)	R0=0xff90036c(-7339156) */
ffa02aa8:	ff e3 e6 ee 	CALL 0xffa00874 <_printf_str>;
ffa02aac:	01 e8 00 00 	UNLINK;
ffa02ab0:	07 30       	R0 = R7;
ffa02ab2:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02ab4:	10 00       	RTS;
ffa02ab6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90036c(-7339156) */
ffa02aba:	00 e1 80 03 	R0.L = 0x380;		/* (896)	R0=0xff900380(-7339136) */
ffa02abe:	ff e3 db ee 	CALL 0xffa00874 <_printf_str>;
ffa02ac2:	01 e8 00 00 	UNLINK;
ffa02ac6:	07 30       	R0 = R7;
ffa02ac8:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02aca:	10 00       	RTS;

ffa02acc <_ARP_init>:
ffa02acc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa02ad0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02ad4:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_NetArpLut> */
ffa02ad8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02ada:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02adc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02ade:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa02ae0:	b2 e0 12 10 	LSETUP(0xffa02ae4 <_ARP_init+0x18>, 0xffa02b04 <_ARP_init+0x38>) LC1 = P1;
ffa02ae4:	11 93       	[P2] = R1;
ffa02ae6:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02aea:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02aee:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa02af2:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa02af6:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02afa:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02afe:	52 b5       	W[P2 + 0xa] = R2;
ffa02b00:	d1 b0       	[P2 + 0xc] = R1;
ffa02b02:	11 b1       	[P2 + 0x10] = R1;
ffa02b04:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa02b06:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_NetArpLut> */
ffa02b0a:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02b0e:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_NetArpLut_age> */
ffa02b12:	10 97       	W[P2] = R0;
ffa02b14:	01 e8 00 00 	UNLINK;
ffa02b18:	10 00       	RTS;
	...

ffa02b1c <_ARP_lut_find>:
ffa02b1c:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900c14 <_txIdx> */
ffa02b20:	08 e1 54 0c 	P0.L = 0xc54;		/* (3156)	P0=0xff900c54 <_NetArpLut> */
ffa02b24:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02b28:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02b2a:	48 32       	P1 = P0;
ffa02b2c:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02b2e:	b2 e0 06 20 	LSETUP(0xffa02b32 <_ARP_lut_find+0x16>, 0xffa02b3a <_ARP_lut_find+0x1e>) LC1 = P2;
ffa02b32:	08 91       	R0 = [P1];
ffa02b34:	00 0c       	CC = R0 == 0x0;
ffa02b36:	14 18       	IF CC JUMP 0xffa02b5e <_ARP_lut_find+0x42>;
ffa02b38:	0a 64       	R2 += 0x1;		/* (  1) */
ffa02b3a:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02b3c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa02b40:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02b42:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02b44:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa02b46:	09 e1 72 0c 	P1.L = 0xc72;		/* (3186)	P1=0xff900c72 */
ffa02b4a:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa02b4c:	b2 e0 08 20 	LSETUP(0xffa02b50 <_ARP_lut_find+0x34>, 0xffa02b5c <_ARP_lut_find+0x40>) LC1 = P2;
ffa02b50:	08 95       	R0 = W[P1] (Z);
ffa02b52:	03 09       	CC = R3 <= R0;
ffa02b54:	03 18       	IF CC JUMP 0xffa02b5a <_ARP_lut_find+0x3e>;
ffa02b56:	11 30       	R2 = R1;
ffa02b58:	18 30       	R3 = R0;
ffa02b5a:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02b5c:	09 64       	R1 += 0x1;		/* (  1) */
ffa02b5e:	02 30       	R0 = R2;
ffa02b60:	01 e8 00 00 	UNLINK;
ffa02b64:	10 00       	RTS;
	...

ffa02b68 <_ARP_lut_add>:
ffa02b68:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02b6a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c10 <_NetDHCPserv> */
ffa02b6e:	0d e1 54 0c 	P5.L = 0xc54;		/* (3156)	P5=0xff900c54 <_NetArpLut> */
ffa02b72:	31 30       	R6 = R1;
ffa02b74:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02b78:	38 30       	R7 = R0;
ffa02b7a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02b7c:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa02b7e:	4d 32       	P1 = P5;
ffa02b80:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02b82:	00 00       	NOP;
ffa02b84:	08 91       	R0 = [P1];
ffa02b86:	07 08       	CC = R7 == R0;
ffa02b88:	11 07       	IF CC R2 = R1;
ffa02b8a:	09 64       	R1 += 0x1;		/* (  1) */
ffa02b8c:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa02b8e:	42 0c       	CC = P2 == 0x0;
ffa02b90:	23 10       	IF !CC JUMP 0xffa02bd6 <_ARP_lut_add+0x6e>;
ffa02b92:	82 0c       	CC = R2 < 0x0;
ffa02b94:	25 18       	IF CC JUMP 0xffa02bde <_ARP_lut_add+0x76>;
ffa02b96:	82 c6 12 82 	R1 = R2 << 0x2;
ffa02b9a:	0a 32       	P1 = R2;
ffa02b9c:	11 32       	P2 = R1;
ffa02b9e:	06 32       	P0 = R6;
ffa02ba0:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa02ba2:	6a 5a       	P1 = P2 + P5;
ffa02ba4:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02ba6:	0f 93       	[P1] = R7;
ffa02ba8:	aa 5a       	P2 = P2 + P5;
ffa02baa:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02bac:	b2 e0 03 10 	LSETUP(0xffa02bb0 <_ARP_lut_add+0x48>, 0xffa02bb2 <_ARP_lut_add+0x4a>) LC1 = P1;
ffa02bb0:	40 98       	R0 = B[P0++] (X);
ffa02bb2:	10 9a       	B[P2++] = R0;
ffa02bb4:	51 41       	R1 = (R1 + R2) << 0x2;
ffa02bb6:	09 32       	P1 = R1;
ffa02bb8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa02bbc:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_NetArpLut_age> */
ffa02bc0:	50 95       	R0 = W[P2] (X);
ffa02bc2:	08 64       	R0 += 0x1;		/* (  1) */
ffa02bc4:	10 97       	W[P2] = R0;
ffa02bc6:	a9 5a       	P2 = P1 + P5;
ffa02bc8:	50 b5       	W[P2 + 0xa] = R0;
ffa02bca:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02bcc:	10 b1       	[P2 + 0x10] = R0;
ffa02bce:	01 e8 00 00 	UNLINK;
ffa02bd2:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02bd4:	10 00       	RTS;
ffa02bd6:	82 0c       	CC = R2 < 0x0;
ffa02bd8:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02bda:	d4 1f       	IF CC JUMP 0xffa02b82 <_ARP_lut_add+0x1a> (BP);
ffa02bdc:	dd 2f       	JUMP.S 0xffa02b96 <_ARP_lut_add+0x2e>;
ffa02bde:	ff e3 9f ff 	CALL 0xffa02b1c <_ARP_lut_find>;
ffa02be2:	10 30       	R2 = R0;
ffa02be4:	d9 2f       	JUMP.S 0xffa02b96 <_ARP_lut_add+0x2e>;
	...

ffa02be8 <_ARP_lu>:
ffa02be8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02bec:	c4 04       	[--SP] = (P5:4);
ffa02bee:	09 e1 54 0c 	P1.L = 0xc54;		/* (3156)	P1=0xff900c54 <_NetArpLut> */
ffa02bf2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02bf6:	10 30       	R2 = R0;
ffa02bf8:	29 32       	P5 = R1;
ffa02bfa:	61 32       	P4 = P1;
ffa02bfc:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa02bfe:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02c00:	b2 e0 06 20 	LSETUP(0xffa02c04 <_ARP_lu+0x1c>, 0xffa02c0c <_ARP_lu+0x24>) LC1 = P2;
ffa02c04:	08 91       	R0 = [P1];
ffa02c06:	10 08       	CC = R0 == R2;
ffa02c08:	08 18       	IF CC JUMP 0xffa02c18 <_ARP_lu+0x30>;
ffa02c0a:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa02c0c:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02c0e:	01 e8 00 00 	UNLINK;
ffa02c12:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02c14:	84 04       	(P5:4) = [SP++];
ffa02c16:	10 00       	RTS;
ffa02c18:	08 a1       	R0 = [P1 + 0x10];
ffa02c1a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02c1c:	f7 1f       	IF CC JUMP 0xffa02c0a <_ARP_lu+0x22> (BP);
ffa02c1e:	60 5a       	P1 = P0 + P4;
ffa02c20:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa02c22:	b2 e0 03 20 	LSETUP(0xffa02c26 <_ARP_lu+0x3e>, 0xffa02c28 <_ARP_lu+0x40>) LC1 = P2;
ffa02c26:	48 98       	R0 = B[P1++] (X);
ffa02c28:	28 9a       	B[P5++] = R0;
ffa02c2a:	01 e8 00 00 	UNLINK;
ffa02c2e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c30:	84 04       	(P5:4) = [SP++];
ffa02c32:	10 00       	RTS;

ffa02c34 <_ARP_rx>:
ffa02c34:	fb 05       	[--SP] = (R7:7, P5:3);
ffa02c36:	20 32       	P4 = R0;
ffa02c38:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02c3c:	39 30       	R7 = R1;
ffa02c3e:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa02c40:	ff e3 86 f5 	CALL 0xffa0174c <_htons>;
ffa02c44:	c0 42       	R0 = R0.L (Z);
ffa02c46:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa02c4a:	08 08       	CC = R0 == R1;
ffa02c4c:	06 18       	IF CC JUMP 0xffa02c58 <_ARP_rx+0x24>;
ffa02c4e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02c50:	01 e8 00 00 	UNLINK;
ffa02c54:	bb 05       	(R7:7, P5:3) = [SP++];
ffa02c56:	10 00       	RTS;
ffa02c58:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02c5a:	07 0a       	CC = R7 <= R0 (IU);
ffa02c5c:	f9 1f       	IF CC JUMP 0xffa02c4e <_ARP_rx+0x1a> (BP);
ffa02c5e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c60:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02c62:	ff e3 75 f5 	CALL 0xffa0174c <_htons>;
ffa02c66:	c0 42       	R0 = R0.L (Z);
ffa02c68:	07 08       	CC = R7 == R0;
ffa02c6a:	f2 17       	IF !CC JUMP 0xffa02c4e <_ARP_rx+0x1a> (BP);
ffa02c6c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02c70:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02c72:	ff e3 6d f5 	CALL 0xffa0174c <_htons>;
ffa02c76:	c0 42       	R0 = R0.L (Z);
ffa02c78:	07 08       	CC = R7 == R0;
ffa02c7a:	ea 17       	IF !CC JUMP 0xffa02c4e <_ARP_rx+0x1a> (BP);
ffa02c7c:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02c7e:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02c82:	08 08       	CC = R0 == R1;
ffa02c84:	e5 17       	IF !CC JUMP 0xffa02c4e <_ARP_rx+0x1a> (BP);
ffa02c86:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02c88:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02c8a:	ff e3 61 f5 	CALL 0xffa0174c <_htons>;
ffa02c8e:	c0 42       	R0 = R0.L (Z);
ffa02c90:	07 08       	CC = R7 == R0;
ffa02c92:	0c 14       	IF !CC JUMP 0xffa02caa <_ARP_rx+0x76> (BP);
ffa02c94:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa02c98:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_NetOurMAC> */
ffa02c9c:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa02ca0:	10 99       	R0 = B[P2] (Z);
ffa02ca2:	01 08       	CC = R1 == R0;
ffa02ca4:	ae 18       	IF CC JUMP 0xffa02e00 <_ARP_rx+0x1cc>;
ffa02ca6:	00 00       	NOP;
ffa02ca8:	00 00       	NOP;
ffa02caa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02cac:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02cae:	ff e3 4f f5 	CALL 0xffa0174c <_htons>;
ffa02cb2:	c0 42       	R0 = R0.L (Z);
ffa02cb4:	07 08       	CC = R7 == R0;
ffa02cb6:	cc 17       	IF !CC JUMP 0xffa02c4e <_ARP_rx+0x1a> (BP);
ffa02cb8:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02cbc:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02cbe:	ff e3 47 f5 	CALL 0xffa0174c <_htons>;
ffa02cc2:	c0 42       	R0 = R0.L (Z);
ffa02cc4:	07 08       	CC = R7 == R0;
ffa02cc6:	c4 17       	IF !CC JUMP 0xffa02c4e <_ARP_rx+0x1a> (BP);
ffa02cc8:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02cca:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02cce:	08 08       	CC = R0 == R1;
ffa02cd0:	bf 17       	IF !CC JUMP 0xffa02c4e <_ARP_rx+0x1a> (BP);
ffa02cd2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02cd4:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02cd6:	ff e3 3b f5 	CALL 0xffa0174c <_htons>;
ffa02cda:	c0 42       	R0 = R0.L (Z);
ffa02cdc:	07 08       	CC = R7 == R0;
ffa02cde:	b8 17       	IF !CC JUMP 0xffa02c4e <_ARP_rx+0x1a> (BP);
ffa02ce0:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa02ce4:	07 e1 48 0c 	R7.L = 0xc48;		/* (3144)	R7=0xff900c48 <_NetOurIP>(-7336888) */
ffa02ce8:	17 32       	P2 = R7;
ffa02cea:	a1 a2       	R1 = [P4 + 0x28];
ffa02cec:	10 91       	R0 = [P2];
ffa02cee:	01 08       	CC = R1 == R0;
ffa02cf0:	af 17       	IF !CC JUMP 0xffa02c4e <_ARP_rx+0x1a> (BP);
ffa02cf2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_NetOurMAC> */
ffa02cf6:	0a e1 14 0c 	P2.L = 0xc14;		/* (3092)	P2=0xff900c14 <_txIdx> */
ffa02cfa:	10 95       	R0 = W[P2] (Z);
ffa02cfc:	10 32       	P2 = R0;
ffa02cfe:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c54 <_NetArpLut> */
ffa02d02:	09 e1 18 0c 	P1.L = 0xc18;		/* (3096)	P1=0xff900c18 <_txbuf> */
ffa02d06:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa02d08:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c54 <_NetArpLut> */
ffa02d0c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02d0e:	52 91       	P2 = [P2];
ffa02d10:	0d e1 3c 0c 	P5.L = 0xc3c;		/* (3132)	P5=0xff900c3c <_NetOurMAC> */
ffa02d14:	93 ad       	P3 = [P2 + 0x18];
ffa02d16:	18 97       	W[P3] = R0;
ffa02d18:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa02d1c:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa02d20:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa02d24:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa02d28:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa02d2c:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa02d30:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa02d34:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa02d38:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa02d3c:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa02d40:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa02d44:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa02d48:	68 99       	R0 = B[P5] (X);
ffa02d4a:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa02d4e:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02d52:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa02d56:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02d5a:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa02d5e:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02d62:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa02d66:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02d6a:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa02d6e:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02d72:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa02d76:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02d7a:	ff e3 e9 f4 	CALL 0xffa0174c <_htons>;
ffa02d7e:	d8 b5       	W[P3 + 0xe] = R0;
ffa02d80:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d82:	ff e3 e5 f4 	CALL 0xffa0174c <_htons>;
ffa02d86:	18 b6       	W[P3 + 0x10] = R0;
ffa02d88:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02d8c:	ff e3 e0 f4 	CALL 0xffa0174c <_htons>;
ffa02d90:	58 b6       	W[P3 + 0x12] = R0;
ffa02d92:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02d94:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa02d98:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02d9a:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa02d9e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02da0:	ff e3 d6 f4 	CALL 0xffa0174c <_htons>;
ffa02da4:	44 32       	P0 = P4;
ffa02da6:	d8 b6       	W[P3 + 0x16] = R0;
ffa02da8:	53 32       	P2 = P3;
ffa02daa:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa02dac:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02dae:	b2 e0 08 10 	LSETUP(0xffa02db2 <_ARP_rx+0x17e>, 0xffa02dbe <_ARP_rx+0x18a>) LC1 = P1;
ffa02db2:	68 98       	R0 = B[P5++] (X);
ffa02db4:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa02db8:	40 98       	R0 = B[P0++] (X);
ffa02dba:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa02dbe:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02dc0:	17 32       	P2 = R7;
ffa02dc2:	50 99       	R0 = B[P2] (X);
ffa02dc4:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa02dc8:	10 91       	R0 = [P2];
ffa02dca:	40 4e       	R0 >>= 0x8;
ffa02dcc:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa02dd0:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02dd4:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa02dd8:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02ddc:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa02de0:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa02de4:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa02de8:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa02dec:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa02df0:	f3 b0       	[SP + 0xc] = R3;
ffa02df2:	ff e3 03 f4 	CALL 0xffa015f8 <_FormatIPAddress>;
ffa02df6:	98 b2       	[P3 + 0x28] = R0;
ffa02df8:	ff e3 54 f6 	CALL 0xffa01aa0 <_bfin_EMAC_send_nocopy>;
ffa02dfc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02dfe:	29 2f       	JUMP.S 0xffa02c50 <_ARP_rx+0x1c>;
ffa02e00:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa02e04:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa02e08:	01 08       	CC = R1 == R0;
ffa02e0a:	50 17       	IF !CC JUMP 0xffa02caa <_ARP_rx+0x76> (BP);
ffa02e0c:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa02e10:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa02e14:	01 08       	CC = R1 == R0;
ffa02e16:	4a 17       	IF !CC JUMP 0xffa02caa <_ARP_rx+0x76> (BP);
ffa02e18:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa02e1c:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa02e20:	01 08       	CC = R1 == R0;
ffa02e22:	44 17       	IF !CC JUMP 0xffa02caa <_ARP_rx+0x76> (BP);
ffa02e24:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa02e28:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02e2c:	01 08       	CC = R1 == R0;
ffa02e2e:	3e 17       	IF !CC JUMP 0xffa02caa <_ARP_rx+0x76> (BP);
ffa02e30:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa02e34:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa02e38:	01 08       	CC = R1 == R0;
ffa02e3a:	38 17       	IF !CC JUMP 0xffa02caa <_ARP_rx+0x76> (BP);
ffa02e3c:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa02e3e:	44 30       	R0 = P4;
ffa02e40:	ff e3 a6 f4 	CALL 0xffa0178c <_pack4chars>;
ffa02e44:	38 30       	R7 = R0;
ffa02e46:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa02e4a:	0f 30       	R1 = R7;
ffa02e4c:	00 e1 8c 04 	R0.L = 0x48c;		/* (1164)	R0=0xff90048c(-7338868) */
ffa02e50:	ff e3 76 ee 	CALL 0xffa00b3c <_printf_ip>;
ffa02e54:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90048c(-7338868) */
ffa02e58:	00 e1 54 0a 	R0.L = 0xa54;		/* (2644)	R0=0xff900a54(-7337388) */
ffa02e5c:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa02e5e:	ff e3 0b ed 	CALL 0xffa00874 <_printf_str>;
ffa02e62:	07 30       	R0 = R7;
ffa02e64:	4c 30       	R1 = P4;
ffa02e66:	ff e3 81 fe 	CALL 0xffa02b68 <_ARP_lut_add>;
ffa02e6a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e6c:	f2 2e       	JUMP.S 0xffa02c50 <_ARP_rx+0x1c>;
	...

ffa02e70 <_ARP_tx>:
ffa02e70:	fc 05       	[--SP] = (R7:7, P5:4);
ffa02e72:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c14 <_txIdx> */
ffa02e76:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02e7a:	0a e1 14 0c 	P2.L = 0xc14;		/* (3092)	P2=0xff900c14 <_txIdx> */
ffa02e7e:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa02e82:	10 95 00 00 
ffa02e86:	10 32       	P2 = R0;
ffa02e88:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02e8c:	09 e1 18 0c 	P1.L = 0xc18;		/* (3096)	P1=0xff900c18 <_txbuf> */
ffa02e90:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa02e92:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c3c <_NetOurMAC> */
ffa02e96:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02e98:	52 91       	P2 = [P2];
ffa02e9a:	0d e1 3c 0c 	P5.L = 0xc3c;		/* (3132)	P5=0xff900c3c <_NetOurMAC> */
ffa02e9e:	94 ad       	P4 = [P2 + 0x18];
ffa02ea0:	20 97       	W[P4] = R0;
ffa02ea2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02ea4:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa02ea8:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa02eac:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa02eb0:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa02eb4:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa02eb8:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa02ebc:	68 99       	R0 = B[P5] (X);
ffa02ebe:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa02ec2:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02ec6:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa02eca:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02ece:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa02ed2:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02ed6:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa02eda:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02ede:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa02ee2:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02ee6:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa02eea:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02eee:	ff e3 2f f4 	CALL 0xffa0174c <_htons>;
ffa02ef2:	e0 b5       	W[P4 + 0xe] = R0;
ffa02ef4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ef6:	ff e3 2b f4 	CALL 0xffa0174c <_htons>;
ffa02efa:	20 b6       	W[P4 + 0x10] = R0;
ffa02efc:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02f00:	ff e3 26 f4 	CALL 0xffa0174c <_htons>;
ffa02f04:	60 b6       	W[P4 + 0x12] = R0;
ffa02f06:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02f08:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa02f0c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02f0e:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa02f12:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f14:	ff e3 1c f4 	CALL 0xffa0174c <_htons>;
ffa02f18:	e0 b6       	W[P4 + 0x16] = R0;
ffa02f1a:	54 32       	P2 = P4;
ffa02f1c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02f1e:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02f20:	b2 e0 07 10 	LSETUP(0xffa02f24 <_ARP_tx+0xb4>, 0xffa02f2e <_ARP_tx+0xbe>) LC1 = P1;
ffa02f24:	68 98       	R0 = B[P5++] (X);
ffa02f26:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa02f2a:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa02f2e:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02f30:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c14 <_txIdx> */
ffa02f34:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xff900c48 <_NetOurIP> */
ffa02f38:	50 99       	R0 = B[P2] (X);
ffa02f3a:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa02f3e:	10 91       	R0 = [P2];
ffa02f40:	40 4e       	R0 >>= 0x8;
ffa02f42:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa02f46:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02f4a:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa02f4e:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02f52:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa02f56:	a7 b2       	[P4 + 0x28] = R7;
ffa02f58:	01 e8 00 00 	UNLINK;
ffa02f5c:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02f5e:	ff e2 a1 f5 	JUMP.L 0xffa01aa0 <_bfin_EMAC_send_nocopy>;
	...

ffa02f64 <_ARP_req>:
ffa02f64:	ec 05       	[--SP] = (R7:5, P5:4);
ffa02f66:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02f6a:	38 30       	R7 = R0;
ffa02f6c:	ff e3 3e fe 	CALL 0xffa02be8 <_ARP_lu>;
ffa02f70:	00 0c       	CC = R0 == 0x0;
ffa02f72:	50 10       	IF !CC JUMP 0xffa03012 <_ARP_req+0xae>;
ffa02f74:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c48 */
ffa02f78:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa02f7c:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c28 <_rxIdx> */
ffa02f80:	16 91       	R6 = [P2];
ffa02f82:	0c e1 54 0c 	P4.L = 0xc54;		/* (3156)	P4=0xff900c54 <_NetArpLut> */
ffa02f86:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02f8a:	4c 32       	P1 = P4;
ffa02f8c:	46 51       	R5 = R6 + R0;
ffa02f8e:	6c 32       	P5 = P4;
ffa02f90:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02f92:	b2 e0 06 20 	LSETUP(0xffa02f96 <_ARP_req+0x32>, 0xffa02f9e <_ARP_req+0x3a>) LC1 = P2;
ffa02f96:	08 91       	R0 = [P1];
ffa02f98:	07 08       	CC = R7 == R0;
ffa02f9a:	21 18       	IF CC JUMP 0xffa02fdc <_ARP_req+0x78>;
ffa02f9c:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa02f9e:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02fa0:	ff e3 be fd 	CALL 0xffa02b1c <_ARP_lut_find>;
ffa02fa4:	10 32       	P2 = R0;
ffa02fa6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02fa8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02fac:	09 e1 50 0c 	P1.L = 0xc50;		/* (3152)	P1=0xff900c50 <_NetArpLut_age> */
ffa02fb0:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa02fb2:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa02fb4:	10 b1       	[P2 + 0x10] = R0;
ffa02fb6:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02fba:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa02fbe:	17 93 00 00 
ffa02fc2:	d0 b0       	[P2 + 0xc] = R0;
ffa02fc4:	48 95       	R0 = W[P1] (X);
ffa02fc6:	08 64       	R0 += 0x1;		/* (  1) */
ffa02fc8:	08 97       	W[P1] = R0;
ffa02fca:	50 b5       	W[P2 + 0xa] = R0;
ffa02fcc:	07 30       	R0 = R7;
ffa02fce:	ff e3 51 ff 	CALL 0xffa02e70 <_ARP_tx>;
ffa02fd2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02fd4:	01 e8 00 00 	UNLINK;
ffa02fd8:	ac 05       	(R7:5, P5:4) = [SP++];
ffa02fda:	10 00       	RTS;
ffa02fdc:	08 a1       	R0 = [P1 + 0x10];
ffa02fde:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa02fe0:	de 1f       	IF CC JUMP 0xffa02f9c <_ARP_req+0x38> (BP);
ffa02fe2:	e8 a0       	R0 = [P5 + 0xc];
ffa02fe4:	86 09       	CC = R6 < R0 (IU);
ffa02fe6:	f6 1f       	IF CC JUMP 0xffa02fd2 <_ARP_req+0x6e> (BP);
ffa02fe8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02fec:	0f 30       	R1 = R7;
ffa02fee:	00 e1 b0 04 	R0.L = 0x4b0;		/* (1200)	R0=0xff9004b0(-7338832) */
ffa02ff2:	ff e3 a5 ed 	CALL 0xffa00b3c <_printf_ip>;
ffa02ff6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004b0(-7338832) */
ffa02ffa:	00 e1 54 0a 	R0.L = 0xa54;		/* (2644)	R0=0xff900a54(-7337388) */
ffa02ffe:	ff e3 3b ec 	CALL 0xffa00874 <_printf_str>;
ffa03002:	07 30       	R0 = R7;
ffa03004:	ff e3 36 ff 	CALL 0xffa02e70 <_ARP_tx>;
ffa03008:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa0300c:	ed b0 00 00 
ffa03010:	e2 2f       	JUMP.S 0xffa02fd4 <_ARP_req+0x70>;
ffa03012:	01 e8 00 00 	UNLINK;
ffa03016:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03018:	ac 05       	(R7:5, P5:4) = [SP++];
ffa0301a:	10 00       	RTS;

ffa0301c <_tcp_length>:
ffa0301c:	c5 04       	[--SP] = (P5:5);
ffa0301e:	28 32       	P5 = R0;
ffa03020:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03024:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa03026:	ff e3 93 f3 	CALL 0xffa0174c <_htons>;
ffa0302a:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa0302e:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa03030:	51 54       	R1 = R1 & R2;
ffa03032:	11 4f       	R1 <<= 0x2;
ffa03034:	c0 42       	R0 = R0.L (Z);
ffa03036:	08 52       	R0 = R0 - R1;
ffa03038:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa0303c:	11 4d       	R1 >>>= 0x2;
ffa0303e:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa03040:	51 54       	R1 = R1 & R2;
ffa03042:	01 e8 00 00 	UNLINK;
ffa03046:	08 52       	R0 = R0 - R1;
ffa03048:	85 04       	(P5:5) = [SP++];
ffa0304a:	10 00       	RTS;

ffa0304c <_tcp_checksum_calc>:
ffa0304c:	08 32       	P1 = R0;
ffa0304e:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03050:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03054:	28 32       	P5 = R0;
ffa03056:	31 30       	R6 = R1;
ffa03058:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa0305a:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa0305c:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa0305e:	b2 e0 03 20 	LSETUP(0xffa03062 <_tcp_checksum_calc+0x16>, 0xffa03064 <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa03062:	08 94       	R0 = W[P1++] (Z);
ffa03064:	45 51       	R5 = R5 + R0;
ffa03066:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa0306a:	10 4e       	R0 >>= 0x2;
ffa0306c:	06 50       	R0 = R6 + R0;
ffa0306e:	c0 42       	R0 = R0.L (Z);
ffa03070:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa03074:	ff e3 6c f3 	CALL 0xffa0174c <_htons>;
ffa03078:	47 4f       	R7 <<= 0x8;
ffa0307a:	c0 42       	R0 = R0.L (Z);
ffa0307c:	c7 51       	R7 = R7 + R0;
ffa0307e:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa03080:	ef 50       	R3 = R7 + R5;
ffa03082:	0d 1c       	IF CC JUMP 0xffa0309c <_tcp_checksum_calc+0x50> (BP);
ffa03084:	0e 32       	P1 = R6;
ffa03086:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa0308a:	10 4e       	R0 >>= 0x2;
ffa0308c:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa0308e:	0e 64       	R6 += 0x1;		/* (  1) */
ffa03090:	a9 5a       	P2 = P1 + P5;
ffa03092:	08 32       	P1 = R0;
ffa03094:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03096:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa03098:	8a 5a       	P2 = P2 + P1;
ffa0309a:	10 9b       	B[P2] = R0;
ffa0309c:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa030a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa030a2:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa030a6:	71 50       	R1 = R1 + R6;
ffa030a8:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa030ac:	09 4d       	R1 >>>= 0x1;
ffa030ae:	18 4e       	R0 >>= 0x3;
ffa030b0:	41 50       	R1 = R1 + R0;
ffa030b2:	01 0d       	CC = R1 <= 0x0;
ffa030b4:	09 18       	IF CC JUMP 0xffa030c6 <_tcp_checksum_calc+0x7a>;
ffa030b6:	55 32       	P2 = P5;
ffa030b8:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa030ba:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa030bc:	0a 64       	R2 += 0x1;		/* (  1) */
ffa030be:	10 94       	R0 = W[P2++] (Z);
ffa030c0:	0a 08       	CC = R2 == R1;
ffa030c2:	c3 50       	R3 = R3 + R0;
ffa030c4:	fc 17       	IF !CC JUMP 0xffa030bc <_tcp_checksum_calc+0x70> (BP);
ffa030c6:	d8 42       	R0 = R3.L (Z);
ffa030c8:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa030cc:	08 50       	R0 = R0 + R1;
ffa030ce:	c0 43       	R0 =~ R0;
ffa030d0:	01 e8 00 00 	UNLINK;
ffa030d4:	c0 42       	R0 = R0.L (Z);
ffa030d6:	ad 05       	(R7:5, P5:5) = [SP++];
ffa030d8:	10 00       	RTS;
	...

ffa030dc <_tcp_checksum_set>:
ffa030dc:	c5 04       	[--SP] = (P5:5);
ffa030de:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa030e2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa030e6:	0a e1 14 0c 	P2.L = 0xc14;		/* (3092)	P2=0xff900c14 <_txIdx> */
ffa030ea:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa030ee:	10 95 00 00 
ffa030f2:	10 32       	P2 = R0;
ffa030f4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c50 <_NetArpLut_age> */
ffa030f8:	09 e1 18 0c 	P1.L = 0xc18;		/* (3096)	P1=0xff900c18 <_txbuf> */
ffa030fc:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa030fe:	52 91       	P2 = [P2];
ffa03100:	95 ad       	P5 = [P2 + 0x18];
ffa03102:	45 30       	R0 = P5;
ffa03104:	ff e3 a4 ff 	CALL 0xffa0304c <_tcp_checksum_calc>;
ffa03108:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa0310c:	01 e8 00 00 	UNLINK;
ffa03110:	85 04       	(P5:5) = [SP++];
ffa03112:	10 00       	RTS;

ffa03114 <_tcp_checksum_check>:
ffa03114:	10 32       	P2 = R0;
ffa03116:	78 05       	[--SP] = (R7:7);
ffa03118:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0311c:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa03120:	ff e3 96 ff 	CALL 0xffa0304c <_tcp_checksum_calc>;
ffa03124:	0f 30       	R1 = R7;
ffa03126:	c7 42       	R7 = R0.L (Z);
ffa03128:	39 08       	CC = R1 == R7;
ffa0312a:	19 18       	IF CC JUMP 0xffa0315c <_tcp_checksum_check+0x48>;
ffa0312c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03130:	00 e1 d0 04 	R0.L = 0x4d0;		/* (1232)	R0=0xff9004d0(-7338800) */
ffa03134:	ff e3 06 ec 	CALL 0xffa00940 <_printf_hex>;
ffa03138:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004d0(-7338800) */
ffa0313c:	0f 30       	R1 = R7;
ffa0313e:	00 e1 ec 04 	R0.L = 0x4ec;		/* (1260)	R0=0xff9004ec(-7338772) */
ffa03142:	ff e3 ff eb 	CALL 0xffa00940 <_printf_hex>;
ffa03146:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004ec(-7338772) */
ffa0314a:	00 e1 54 0a 	R0.L = 0xa54;		/* (2644)	R0=0xff900a54(-7337388) */
ffa0314e:	ff e3 93 eb 	CALL 0xffa00874 <_printf_str>;
ffa03152:	01 e8 00 00 	UNLINK;
ffa03156:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03158:	38 05       	(R7:7) = [SP++];
ffa0315a:	10 00       	RTS;
ffa0315c:	01 e8 00 00 	UNLINK;
ffa03160:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03162:	38 05       	(R7:7) = [SP++];
ffa03164:	10 00       	RTS;
	...

ffa03168 <_tcp_packet_setup>:
ffa03168:	ed 05       	[--SP] = (R7:5, P5:5);
ffa0316a:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0316e:	29 32       	P5 = R1;
ffa03170:	7f 30       	R7 = FP;
ffa03172:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa03174:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03176:	f0 bb       	[FP -0x4] = R0;
ffa03178:	07 30       	R0 = R7;
ffa0317a:	2a 30       	R5 = R2;
ffa0317c:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa03180:	ff e3 2c f7 	CALL 0xffa01fd8 <_eth_header_setup>;
ffa03184:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa03188:	68 99 00 00 
ffa0318c:	80 0c       	CC = R0 < 0x0;
ffa0318e:	14 18       	IF CC JUMP 0xffa031b6 <_tcp_packet_setup+0x4e>;
ffa03190:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03192:	f0 b0       	[SP + 0xc] = R0;
ffa03194:	15 30       	R2 = R5;
ffa03196:	01 30       	R0 = R1;
ffa03198:	0f 30       	R1 = R7;
ffa0319a:	ff e3 0d f3 	CALL 0xffa017b4 <_ip_header_setup>;
ffa0319e:	b9 a2       	R1 = [FP + 0x28];
ffa031a0:	f1 b0       	[SP + 0xc] = R1;
ffa031a2:	f9 a2       	R1 = [FP + 0x2c];
ffa031a4:	31 b1       	[SP + 0x10] = R1;
ffa031a6:	72 43       	R2 = R6.B (Z);
ffa031a8:	0f 30       	R1 = R7;
ffa031aa:	ff e3 91 f3 	CALL 0xffa018cc <_tcp_header_setup>;
ffa031ae:	01 e8 00 00 	UNLINK;
ffa031b2:	ad 05       	(R7:5, P5:5) = [SP++];
ffa031b4:	10 00       	RTS;
ffa031b6:	01 e8 00 00 	UNLINK;
ffa031ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa031bc:	ad 05       	(R7:5, P5:5) = [SP++];
ffa031be:	10 00       	RTS;

ffa031c0 <_tcp_burst>:
ffa031c0:	e3 05       	[--SP] = (R7:4, P5:3);
ffa031c2:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa031c6:	78 b2       	[FP + 0x24] = R0;
ffa031c8:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 */
ffa031cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c14 <_txIdx> */
ffa031d0:	7a a2       	R2 = [FP + 0x24];
ffa031d2:	0b e1 3c 0d 	P3.L = 0xd3c;		/* (3388)	P3=0xff900d3c <_g_httpHeaderLen> */
ffa031d6:	0a e1 40 0d 	P2.L = 0xd40;		/* (3392)	P2=0xff900d40 <_g_httpContentLen> */
ffa031da:	02 0d       	CC = R2 <= 0x0;
ffa031dc:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa031e0:	10 91 00 00 
ffa031e4:	19 91       	R1 = [P3];
ffa031e6:	7e 18       	IF CC JUMP 0xffa032e2 <_tcp_burst+0x122>;
ffa031e8:	41 50       	R1 = R1 + R0;
ffa031ea:	8f 09       	CC = R7 < R1 (IU);
ffa031ec:	21 32       	P4 = R1;
ffa031ee:	7a 10       	IF !CC JUMP 0xffa032e2 <_tcp_burst+0x122>;
ffa031f0:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa031f2:	38 20       	JUMP.S 0xffa03262 <_tcp_burst+0xa2>;
ffa031f4:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa031f6:	18 91       	R0 = [P3];
ffa031f8:	07 52       	R0 = R7 - R0;
ffa031fa:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa031fe:	08 50       	R0 = R0 + R1;
ffa03200:	16 30       	R2 = R6;
ffa03202:	0d 30       	R1 = R5;
ffa03204:	ff e3 e0 ec 	CALL 0xffa00bc4 <_memcpy_>;
ffa03208:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c18 <_txbuf> */
ffa0320c:	09 e1 28 0d 	P1.L = 0xd28;		/* (3368)	P1=0xff900d28 <_TcpSeqHttpStart> */
ffa03210:	08 91       	R0 = [P1];
ffa03212:	f7 51       	R7 = R7 + R6;
ffa03214:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d40 <_g_httpContentLen> */
ffa03218:	0a e1 20 0d 	P2.L = 0xd20;		/* (3360)	P2=0xff900d20 <_TcpSeqHost> */
ffa0321c:	07 50       	R0 = R7 + R0;
ffa0321e:	10 93       	[P2] = R0;
ffa03220:	26 50       	R0 = R6 + R4;
ffa03222:	ff e3 5d ff 	CALL 0xffa030dc <_tcp_checksum_set>;
ffa03226:	ff e3 3d f4 	CALL 0xffa01aa0 <_bfin_EMAC_send_nocopy>;
ffa0322a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d20 <_TcpSeqHost> */
ffa0322e:	0a e1 28 0c 	P2.L = 0xc28;		/* (3112)	P2=0xff900c28 <_rxIdx> */
ffa03232:	10 95       	R0 = W[P2] (Z);
ffa03234:	10 32       	P2 = R0;
ffa03236:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d28 <_TcpSeqHttpStart> */
ffa0323a:	09 e1 2c 0c 	P1.L = 0xc2c;		/* (3116)	P1=0xff900c2c <_rxbuf> */
ffa0323e:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa03240:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03242:	52 91       	P2 = [P2];
ffa03244:	90 a2       	R0 = [P2 + 0x28];
ffa03246:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa03248:	07 1c       	IF CC JUMP 0xffa03256 <_tcp_burst+0x96> (BP);
ffa0324a:	90 a2       	R0 = [P2 + 0x28];
ffa0324c:	4d 30       	R1 = P5;
ffa0324e:	7a a2       	R2 = [FP + 0x24];
ffa03250:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa03252:	11 50       	R0 = R1 + R2;
ffa03254:	a8 06       	IF !CC P5 = R0;
ffa03256:	79 ae       	P1 = [FP + 0x24];
ffa03258:	69 09       	CC = P1 <= P5;
ffa0325a:	45 18       	IF CC JUMP 0xffa032e4 <_tcp_burst+0x124>;
ffa0325c:	44 30       	R0 = P4;
ffa0325e:	87 09       	CC = R7 < R0 (IU);
ffa03260:	42 10       	IF !CC JUMP 0xffa032e4 <_tcp_burst+0x124>;
ffa03262:	44 30       	R0 = P4;
ffa03264:	b8 52       	R2 = R0 - R7;
ffa03266:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa0326a:	0a 09       	CC = R2 <= R1;
ffa0326c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0326e:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa03270:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c2c <_rxbuf> */
ffa03274:	08 06       	IF !CC R1 = R0;
ffa03276:	09 e1 28 0d 	P1.L = 0xd28;		/* (3368)	P1=0xff900d28 <_TcpSeqHttpStart> */
ffa0327a:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa0327e:	07 cc 10 4c 	R6 = MIN (R2, R0) || R0 = [P1] || NOP;
ffa03282:	08 91 00 00 
ffa03286:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c28 <_rxIdx> */
ffa0328a:	07 50       	R0 = R7 + R0;
ffa0328c:	0a e1 20 0d 	P2.L = 0xd20;		/* (3360)	P2=0xff900d20 <_TcpSeqHost> */
ffa03290:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d28 <_TcpSeqHttpStart> */
ffa03294:	10 93       	[P2] = R0;
ffa03296:	09 e1 24 0d 	P1.L = 0xd24;		/* (3364)	P1=0xff900d24 <_TcpSeqClient> */
ffa0329a:	f1 b0       	[SP + 0xc] = R1;
ffa0329c:	30 b1       	[SP + 0x10] = R0;
ffa0329e:	08 91       	R0 = [P1];
ffa032a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d20 <_TcpSeqHost> */
ffa032a4:	70 b1       	[SP + 0x14] = R0;
ffa032a6:	0a e1 0c 0c 	P2.L = 0xc0c;		/* (3084)	P2=0xff900c0c <_NetDestIP> */
ffa032aa:	4f 30       	R1 = FP;
ffa032ac:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R2 = [P2] || NOP;
ffa032b0:	12 91 00 00 
ffa032b4:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa032b6:	ff e3 59 ff 	CALL 0xffa03168 <_tcp_packet_setup>;
ffa032ba:	28 30       	R5 = R0;
ffa032bc:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa032c0:	00 0d       	CC = R0 <= 0x0;
ffa032c2:	ca 1b       	IF CC JUMP 0xffa03256 <_tcp_burst+0x96>;
ffa032c4:	18 91       	R0 = [P3];
ffa032c6:	38 0a       	CC = R0 <= R7 (IU);
ffa032c8:	96 1f       	IF CC JUMP 0xffa031f4 <_tcp_burst+0x34> (BP);
ffa032ca:	38 53       	R4 = R0 - R7;
ffa032cc:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa032d0:	07 50       	R0 = R7 + R0;
ffa032d2:	0d 30       	R1 = R5;
ffa032d4:	14 30       	R2 = R4;
ffa032d6:	ff e3 77 ec 	CALL 0xffa00bc4 <_memcpy_>;
ffa032da:	65 51       	R5 = R5 + R4;
ffa032dc:	a6 53       	R6 = R6 - R4;
ffa032de:	e7 51       	R7 = R7 + R4;
ffa032e0:	8b 2f       	JUMP.S 0xffa031f6 <_tcp_burst+0x36>;
ffa032e2:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa032e4:	01 e8 00 00 	UNLINK;
ffa032e8:	45 30       	R0 = P5;
ffa032ea:	a3 05       	(R7:4, P5:3) = [SP++];
ffa032ec:	10 00       	RTS;
	...

ffa032f0 <_tcp_rx>:
ffa032f0:	e3 05       	[--SP] = (R7:4, P5:3);
ffa032f2:	20 32       	P4 = R0;
ffa032f4:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa032f8:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa032fc:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa032fe:	ff e3 27 f2 	CALL 0xffa0174c <_htons>;
ffa03302:	c0 42       	R0 = R0.L (Z);
ffa03304:	07 08       	CC = R7 == R0;
ffa03306:	06 18       	IF CC JUMP 0xffa03312 <_tcp_rx+0x22>;
ffa03308:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0330a:	01 e8 00 00 	UNLINK;
ffa0330e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03310:	10 00       	RTS;
ffa03312:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa03316:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa03318:	08 08       	CC = R0 == R1;
ffa0331a:	f7 17       	IF !CC JUMP 0xffa03308 <_tcp_rx+0x18> (BP);
ffa0331c:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa03320:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa03324:	ff e3 14 f2 	CALL 0xffa0174c <_htons>;
ffa03328:	c0 42       	R0 = R0.L (Z);
ffa0332a:	07 08       	CC = R7 == R0;
ffa0332c:	ee 17       	IF !CC JUMP 0xffa03308 <_tcp_rx+0x18> (BP);
ffa0332e:	44 30       	R0 = P4;
ffa03330:	80 64       	R0 += 0x10;		/* ( 16) */
ffa03332:	ff e3 81 f2 	CALL 0xffa01834 <_ip_header_checksum>;
ffa03336:	40 43       	R0 = R0.B (Z);
ffa03338:	00 0c       	CC = R0 == 0x0;
ffa0333a:	e7 1f       	IF CC JUMP 0xffa03308 <_tcp_rx+0x18> (BP);
ffa0333c:	4c 30       	R1 = P4;
ffa0333e:	41 64       	R1 += 0x8;		/* (  8) */
ffa03340:	e0 a1       	R0 = [P4 + 0x1c];
ffa03342:	ff e3 13 fc 	CALL 0xffa02b68 <_ARP_lut_add>;
ffa03346:	44 30       	R0 = P4;
ffa03348:	ff e3 6a fe 	CALL 0xffa0301c <_tcp_length>;
ffa0334c:	30 30       	R6 = R0;
ffa0334e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa03352:	0e 30       	R1 = R6;
ffa03354:	00 e1 fc 04 	R0.L = 0x4fc;		/* (1276)	R0=0xff9004fc(-7338756) */
ffa03358:	ff e3 50 eb 	CALL 0xffa009f8 <_printf_int>;
ffa0335c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004fc(-7338756) */
ffa03360:	00 e1 54 0a 	R0.L = 0xa54;		/* (2644)	R0=0xff900a54(-7337388) */
ffa03364:	ff e3 88 ea 	CALL 0xffa00874 <_printf_str>;
ffa03368:	44 30       	R0 = P4;
ffa0336a:	0e 30       	R1 = R6;
ffa0336c:	ff e3 d4 fe 	CALL 0xffa03114 <_tcp_checksum_check>;
ffa03370:	40 43       	R0 = R0.B (Z);
ffa03372:	00 0c       	CC = R0 == 0x0;
ffa03374:	ca 1b       	IF CC JUMP 0xffa03308 <_tcp_rx+0x18>;
ffa03376:	00 00       	NOP;
ffa03378:	00 00       	NOP;
ffa0337a:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa0337c:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03380:	48 43       	R0 = R1.B (Z);
ffa03382:	10 08       	CC = R0 == R2;
ffa03384:	f1 18       	IF CC JUMP 0xffa03566 <_tcp_rx+0x276>;
ffa03386:	10 0c       	CC = R0 == 0x2;
ffa03388:	0a 19       	IF CC JUMP 0xffa0359c <_tcp_rx+0x2ac>;
ffa0338a:	48 43       	R0 = R1.B (Z);
ffa0338c:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa0338e:	08 08       	CC = R0 == R1;
ffa03390:	85 18       	IF CC JUMP 0xffa0349a <_tcp_rx+0x1aa>;
ffa03392:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03394:	ab 10       	IF !CC JUMP 0xffa034ea <_tcp_rx+0x1fa>;
ffa03396:	00 00       	NOP;
ffa03398:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d3c <_g_httpHeaderLen> */
ffa0339c:	0b e1 2c 0d 	P3.L = 0xd2c;		/* (3372)	P3=0xff900d2c <_TcpState> */
ffa033a0:	00 00       	NOP;
ffa033a2:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa033a6:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa033a8:	38 10       	IF !CC JUMP 0xffa03418 <_tcp_rx+0x128>;
ffa033aa:	18 91       	R0 = [P3];
ffa033ac:	10 0c       	CC = R0 == 0x2;
ffa033ae:	ad 17       	IF !CC JUMP 0xffa03308 <_tcp_rx+0x18> (BP);
ffa033b0:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900000 <_l1_data_a>(-7340032) */
ffa033b4:	a0 a2       	R0 = [P4 + 0x28];
ffa033b6:	04 e1 0c 0c 	R4.L = 0xc0c;		/* (3084)	R4=0xff900c0c <_NetDestIP>(-7336948) */
ffa033ba:	a5 e5 30 00 	R5 = B[P4 + 0x30] (X);
ffa033be:	ff e3 d3 f1 	CALL 0xffa01764 <_htonl>;
ffa033c2:	14 32       	P2 = R4;
ffa033c4:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa033c8:	30 50       	R0 = R0 + R6;
ffa033ca:	0d e1 24 0d 	P5.L = 0xd24;		/* (3364)	P5=0xff900d24 <_TcpSeqClient> */
ffa033ce:	28 93       	[P5] = R0;
ffa033d0:	e0 a1       	R0 = [P4 + 0x1c];
ffa033d2:	10 93       	[P2] = R0;
ffa033d4:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d2c <_TcpState> */
ffa033d8:	e0 a2       	R0 = [P4 + 0x2c];
ffa033da:	0b e1 28 0d 	P3.L = 0xd28;		/* (3368)	P3=0xff900d28 <_TcpSeqHttpStart> */
ffa033de:	ff e3 c3 f1 	CALL 0xffa01764 <_htonl>;
ffa033e2:	19 91       	R1 = [P3];
ffa033e4:	c8 53       	R7 = R0 - R1;
ffa033e6:	a1 e4 31 00 	R1 = B[P4 + 0x31] (Z);
ffa033ea:	21 48       	CC = !BITTST (R1, 0x4);		/* bit  4 */
ffa033ec:	1e 1d       	IF CC JUMP 0xffa03628 <_tcp_rx+0x338> (BP);
ffa033ee:	06 0c       	CC = R6 == 0x0;
ffa033f0:	1c 15       	IF !CC JUMP 0xffa03628 <_tcp_rx+0x338> (BP);
ffa033f2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c0c <_NetDestIP> */
ffa033f6:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_g_httpHeaderLen> */
ffa033fa:	10 91       	R0 = [P2];
ffa033fc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_g_httpHeaderLen> */
ffa03400:	0a e1 40 0d 	P2.L = 0xd40;		/* (3392)	P2=0xff900d40 <_g_httpContentLen> */
ffa03404:	11 91       	R1 = [P2];
ffa03406:	08 50       	R0 = R0 + R1;
ffa03408:	07 08       	CC = R7 == R0;
ffa0340a:	46 18       	IF CC JUMP 0xffa03496 <_tcp_rx+0x1a6>;
ffa0340c:	0f 30       	R1 = R7;
ffa0340e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03410:	ff e3 d8 fe 	CALL 0xffa031c0 <_tcp_burst>;
ffa03414:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03416:	7a 2f       	JUMP.S 0xffa0330a <_tcp_rx+0x1a>;
ffa03418:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0341a:	1f 91       	R7 = [P3];
ffa0341c:	07 08       	CC = R7 == R0;
ffa0341e:	85 19       	IF CC JUMP 0xffa03728 <_tcp_rx+0x438>;
ffa03420:	07 0c       	CC = R7 == 0x0;
ffa03422:	c4 17       	IF !CC JUMP 0xffa033aa <_tcp_rx+0xba> (BP);
ffa03424:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa03428:	00 e1 78 05 	R0.L = 0x578;		/* (1400)	R0=0xff900578(-7338632) */
ffa0342c:	ff e3 24 ea 	CALL 0xffa00874 <_printf_str>;
ffa03430:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d40 <_g_httpContentLen> */
ffa03434:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_g_httpRxed> */
ffa03438:	17 93       	[P2] = R7;
ffa0343a:	a0 a2       	R0 = [P4 + 0x28];
ffa0343c:	ff e3 94 f1 	CALL 0xffa01764 <_htonl>;
ffa03440:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_g_httpRxed> */
ffa03444:	0a e1 24 0d 	P2.L = 0xd24;		/* (3364)	P2=0xff900d24 <_TcpSeqClient> */
ffa03448:	10 93       	[P2] = R0;
ffa0344a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d24 <_TcpSeqClient> */
ffa0344e:	e2 a1       	R2 = [P4 + 0x1c];
ffa03450:	0a e1 0c 0c 	P2.L = 0xc0c;		/* (3084)	P2=0xff900c0c <_NetDestIP> */
ffa03454:	12 93       	[P2] = R2;
ffa03456:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c0c <_NetDestIP> */
ffa0345a:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa0345e:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpClientPort> */
ffa03462:	11 97       	W[P2] = R1;
ffa03464:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa03466:	f1 b0       	[SP + 0xc] = R1;
ffa03468:	4f 30       	R1 = FP;
ffa0346a:	30 b1       	[SP + 0x10] = R0;
ffa0346c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0346e:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa03472:	77 b1 00 00 
ffa03476:	ff e3 79 fe 	CALL 0xffa03168 <_tcp_packet_setup>;
ffa0347a:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0347e:	00 0d       	CC = R0 <= 0x0;
ffa03480:	95 1b       	IF CC JUMP 0xffa033aa <_tcp_rx+0xba>;
ffa03482:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpClientPort> */
ffa03486:	0a e1 2c 0d 	P2.L = 0xd2c;		/* (3372)	P2=0xff900d2c <_TcpState> */
ffa0348a:	17 93       	[P2] = R7;
ffa0348c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0348e:	ff e3 27 fe 	CALL 0xffa030dc <_tcp_checksum_set>;
ffa03492:	ff e3 07 f3 	CALL 0xffa01aa0 <_bfin_EMAC_send_nocopy>;
ffa03496:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03498:	39 2f       	JUMP.S 0xffa0330a <_tcp_rx+0x1a>;
ffa0349a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d28 <_TcpSeqHttpStart> */
ffa0349e:	0b e1 2c 0d 	P3.L = 0xd2c;		/* (3372)	P3=0xff900d2c <_TcpState> */
ffa034a2:	18 91       	R0 = [P3];
ffa034a4:	08 0c       	CC = R0 == 0x1;
ffa034a6:	b9 17       	IF !CC JUMP 0xffa03418 <_tcp_rx+0x128> (BP);
ffa034a8:	e0 a2       	R0 = [P4 + 0x2c];
ffa034aa:	ff e3 5d f1 	CALL 0xffa01764 <_htonl>;
ffa034ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d2c <_TcpState> */
ffa034b2:	0a e1 20 0d 	P2.L = 0xd20;		/* (3360)	P2=0xff900d20 <_TcpSeqHost> */
ffa034b6:	11 91       	R1 = [P2];
ffa034b8:	08 08       	CC = R0 == R1;
ffa034ba:	42 19       	IF CC JUMP 0xffa0373e <_tcp_rx+0x44e>;
ffa034bc:	00 00       	NOP;
ffa034be:	00 00       	NOP;
ffa034c0:	00 00       	NOP;
ffa034c2:	e0 a2       	R0 = [P4 + 0x2c];
ffa034c4:	ff e3 50 f1 	CALL 0xffa01764 <_htonl>;
ffa034c8:	08 30       	R1 = R0;
ffa034ca:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa034ce:	00 e1 28 05 	R0.L = 0x528;		/* (1320)	R0=0xff900528(-7338712) */
ffa034d2:	ff e3 35 eb 	CALL 0xffa00b3c <_printf_ip>;
ffa034d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa034d8:	18 93       	[P3] = R0;
ffa034da:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa034de:	00 e1 54 0a 	R0.L = 0xa54;		/* (2644)	R0=0xff900a54(-7337388) */
ffa034e2:	ff e3 c9 e9 	CALL 0xffa00874 <_printf_str>;
ffa034e6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034e8:	11 2f       	JUMP.S 0xffa0330a <_tcp_rx+0x1a>;
ffa034ea:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa034ee:	00 e1 54 05 	R0.L = 0x554;		/* (1364)	R0=0xff900554(-7338668) */
ffa034f2:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900c0c <_NetDestIP>(-7336948) */
ffa034f6:	ff e3 bf e9 	CALL 0xffa00874 <_printf_str>;
ffa034fa:	04 e1 0c 0c 	R4.L = 0xc0c;		/* (3084)	R4=0xff900c0c <_NetDestIP>(-7336948) */
ffa034fe:	a0 a2       	R0 = [P4 + 0x28];
ffa03500:	ff e3 32 f1 	CALL 0xffa01764 <_htonl>;
ffa03504:	14 32       	P2 = R4;
ffa03506:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d24 <_TcpSeqClient> */
ffa0350a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d2c <_TcpState> */
ffa0350e:	0d e1 24 0d 	P5.L = 0xd24;		/* (3364)	P5=0xff900d24 <_TcpSeqClient> */
ffa03512:	0b e1 2c 0d 	P3.L = 0xd2c;		/* (3372)	P3=0xff900d2c <_TcpState> */
ffa03516:	28 93       	[P5] = R0;
ffa03518:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa0351c:	18 91 00 00 
ffa03520:	e2 a1       	R2 = [P4 + 0x1c];
ffa03522:	09 64       	R1 += 0x1;		/* (  1) */
ffa03524:	10 0c       	CC = R0 == 0x2;
ffa03526:	12 93       	[P2] = R2;
ffa03528:	29 93       	[P5] = R1;
ffa0352a:	03 18       	IF CC JUMP 0xffa03530 <_tcp_rx+0x240>;
ffa0352c:	00 0c       	CC = R0 == 0x0;
ffa0352e:	c0 14       	IF !CC JUMP 0xffa036ae <_tcp_rx+0x3be> (BP);
ffa03530:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa03532:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d20 <_TcpSeqHost> */
ffa03536:	f0 b0       	[SP + 0xc] = R0;
ffa03538:	0a e1 20 0d 	P2.L = 0xd20;		/* (3360)	P2=0xff900d20 <_TcpSeqHost> */
ffa0353c:	10 91       	R0 = [P2];
ffa0353e:	71 b1       	[SP + 0x14] = R1;
ffa03540:	4f 30       	R1 = FP;
ffa03542:	30 b1       	[SP + 0x10] = R0;
ffa03544:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03546:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03548:	ff e3 10 fe 	CALL 0xffa03168 <_tcp_packet_setup>;
ffa0354c:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03550:	00 0d       	CC = R0 <= 0x0;
ffa03552:	ae 18       	IF CC JUMP 0xffa036ae <_tcp_rx+0x3be>;
ffa03554:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa03556:	18 93       	[P3] = R0;
ffa03558:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0355a:	ff e3 c1 fd 	CALL 0xffa030dc <_tcp_checksum_set>;
ffa0355e:	ff e3 a1 f2 	CALL 0xffa01aa0 <_bfin_EMAC_send_nocopy>;
ffa03562:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03564:	d3 2e       	JUMP.S 0xffa0330a <_tcp_rx+0x1a>;
ffa03566:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0356a:	00 e1 10 05 	R0.L = 0x510;		/* (1296)	R0=0xff900510(-7338736) */
ffa0356e:	ff e3 83 e9 	CALL 0xffa00874 <_printf_str>;
ffa03572:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d20 <_TcpSeqHost> */
ffa03576:	0a e1 2c 0d 	P2.L = 0xd2c;		/* (3372)	P2=0xff900d2c <_TcpState> */
ffa0357a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0357c:	17 93       	[P2] = R7;
ffa0357e:	a0 a2       	R0 = [P4 + 0x28];
ffa03580:	ff e3 f2 f0 	CALL 0xffa01764 <_htonl>;
ffa03584:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d2c <_TcpState> */
ffa03588:	0a e1 24 0d 	P2.L = 0xd24;		/* (3364)	P2=0xff900d24 <_TcpSeqClient> */
ffa0358c:	10 93       	[P2] = R0;
ffa0358e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d24 <_TcpSeqClient> */
ffa03592:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_g_httpRxed> */
ffa03596:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03598:	17 93       	[P2] = R7;
ffa0359a:	b8 2e       	JUMP.S 0xffa0330a <_tcp_rx+0x1a>;
ffa0359c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa035a0:	00 e1 1c 05 	R0.L = 0x51c;		/* (1308)	R0=0xff90051c(-7338724) */
ffa035a4:	ff e3 68 e9 	CALL 0xffa00874 <_printf_str>;
ffa035a8:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d24 <_TcpSeqClient> */
ffa035ac:	a0 a2       	R0 = [P4 + 0x28];
ffa035ae:	ff e3 db f0 	CALL 0xffa01764 <_htonl>;
ffa035b2:	0d e1 24 0d 	P5.L = 0xd24;		/* (3364)	P5=0xff900d24 <_TcpSeqClient> */
ffa035b6:	28 93       	[P5] = R0;
ffa035b8:	44 30       	R0 = P4;
ffa035ba:	ff e3 31 fd 	CALL 0xffa0301c <_tcp_length>;
ffa035be:	29 91       	R1 = [P5];
ffa035c0:	09 64       	R1 += 0x1;		/* (  1) */
ffa035c2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_g_httpRxed> */
ffa035c6:	08 50       	R0 = R0 + R1;
ffa035c8:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpClientPort> */
ffa035cc:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa035d0:	11 97       	W[P2] = R1;
ffa035d2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpClientPort> */
ffa035d6:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa035da:	28 93 00 00 
ffa035de:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_g_httpRxed> */
ffa035e2:	11 93       	[P2] = R1;
ffa035e4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_g_httpRxed> */
ffa035e8:	e2 a1       	R2 = [P4 + 0x1c];
ffa035ea:	0a e1 0c 0c 	P2.L = 0xc0c;		/* (3084)	P2=0xff900c0c <_NetDestIP> */
ffa035ee:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa035f0:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d24 <_TcpSeqClient> */
ffa035f4:	12 93       	[P2] = R2;
ffa035f6:	0d e1 20 0d 	P5.L = 0xd20;		/* (3360)	P5=0xff900d20 <_TcpSeqHost> */
ffa035fa:	f1 b0       	[SP + 0xc] = R1;
ffa035fc:	29 91       	R1 = [P5];
ffa035fe:	31 b1       	[SP + 0x10] = R1;
ffa03600:	4f 30       	R1 = FP;
ffa03602:	70 b1       	[SP + 0x14] = R0;
ffa03604:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03606:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03608:	ff e3 b0 fd 	CALL 0xffa03168 <_tcp_packet_setup>;
ffa0360c:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03610:	00 0d       	CC = R0 <= 0x0;
ffa03612:	93 18       	IF CC JUMP 0xffa03738 <_tcp_rx+0x448>;
ffa03614:	28 91       	R0 = [P5];
ffa03616:	08 64       	R0 += 0x1;		/* (  1) */
ffa03618:	28 93       	[P5] = R0;
ffa0361a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0361c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c0c <_NetDestIP> */
ffa03620:	0a e1 2c 0d 	P2.L = 0xd2c;		/* (3372)	P2=0xff900d2c <_TcpState> */
ffa03624:	10 93       	[P2] = R0;
ffa03626:	33 2f       	JUMP.S 0xffa0348c <_tcp_rx+0x19c>;
ffa03628:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa0362c:	28 54       	R0 = R0 & R5;
ffa0362e:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa03630:	10 4d       	R0 >>>= 0x2;
ffa03632:	54 30       	R2 = P4;
ffa03634:	19 48       	CC = !BITTST (R1, 0x3);		/* bit  3 */
ffa03636:	02 50       	R0 = R2 + R0;
ffa03638:	5d 1c       	IF CC JUMP 0xffa036f2 <_tcp_rx+0x402> (BP);
ffa0363a:	0e 30       	R1 = R6;
ffa0363c:	00 e3 16 05 	CALL 0xffa04068 <_httpCollate>;
ffa03640:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d20 <_TcpSeqHost> */
ffa03644:	18 91       	R0 = [P3];
ffa03646:	07 50       	R0 = R7 + R0;
ffa03648:	0d e1 20 0d 	P5.L = 0xd20;		/* (3360)	P5=0xff900d20 <_TcpSeqHost> */
ffa0364c:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c54 <_NetArpLut> */
ffa03650:	28 93       	[P5] = R0;
ffa03652:	0c e1 44 0d 	P4.L = 0xd44;		/* (3396)	P4=0xff900d44 <_g_httpRxed> */
ffa03656:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03658:	80 4f       	R0 <<= 0x10;
ffa0365a:	21 91       	R1 = [P4];
ffa0365c:	00 e3 dc 02 	CALL 0xffa03c14 <_httpResp>;
ffa03660:	00 0c       	CC = R0 == 0x0;
ffa03662:	22 1c       	IF CC JUMP 0xffa036a6 <_tcp_rx+0x3b6> (BP);
ffa03664:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d2c <_TcpState> */
ffa03668:	28 91       	R0 = [P5];
ffa0366a:	0a e1 28 0d 	P2.L = 0xd28;		/* (3368)	P2=0xff900d28 <_TcpSeqHttpStart> */
ffa0366e:	10 93       	[P2] = R0;
ffa03670:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d28 <_TcpSeqHttpStart> */
ffa03674:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_g_httpHeaderLen> */
ffa03678:	11 91       	R1 = [P2];
ffa0367a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_g_httpHeaderLen> */
ffa0367e:	0a e1 40 0d 	P2.L = 0xd40;		/* (3392)	P2=0xff900d40 <_g_httpContentLen> */
ffa03682:	10 91       	R0 = [P2];
ffa03684:	41 50       	R1 = R1 + R0;
ffa03686:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0368a:	00 e1 94 05 	R0.L = 0x594;		/* (1428)	R0=0xff900594(-7338604) */
ffa0368e:	ff e3 b5 e9 	CALL 0xffa009f8 <_printf_int>;
ffa03692:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900594(-7338604) */
ffa03696:	00 e1 54 0a 	R0.L = 0xa54;		/* (2644)	R0=0xff900a54(-7337388) */
ffa0369a:	ff e3 ed e8 	CALL 0xffa00874 <_printf_str>;
ffa0369e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa036a0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa036a2:	ff e3 8f fd 	CALL 0xffa031c0 <_tcp_burst>;
ffa036a6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa036a8:	20 93       	[P4] = R0;
ffa036aa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa036ac:	2f 2e       	JUMP.S 0xffa0330a <_tcp_rx+0x1a>;
ffa036ae:	18 91       	R0 = [P3];
ffa036b0:	18 0c       	CC = R0 == 0x3;
ffa036b2:	77 16       	IF !CC JUMP 0xffa033a0 <_tcp_rx+0xb0> (BP);
ffa036b4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d40 <_g_httpContentLen> */
ffa036b8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa036ba:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_g_httpRxed> */
ffa036be:	10 93       	[P2] = R0;
ffa036c0:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa036c2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_g_httpRxed> */
ffa036c6:	f0 b0       	[SP + 0xc] = R0;
ffa036c8:	0a e1 20 0d 	P2.L = 0xd20;		/* (3360)	P2=0xff900d20 <_TcpSeqHost> */
ffa036cc:	10 91       	R0 = [P2];
ffa036ce:	14 32       	P2 = R4;
ffa036d0:	30 b1       	[SP + 0x10] = R0;
ffa036d2:	28 91       	R0 = [P5];
ffa036d4:	70 b1       	[SP + 0x14] = R0;
ffa036d6:	4f 30       	R1 = FP;
ffa036d8:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa036dc:	12 91 00 00 
ffa036e0:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa036e2:	ff e3 43 fd 	CALL 0xffa03168 <_tcp_packet_setup>;
ffa036e6:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa036ea:	00 0d       	CC = R0 <= 0x0;
ffa036ec:	5a 1a       	IF CC JUMP 0xffa033a0 <_tcp_rx+0xb0>;
ffa036ee:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa036f0:	96 2f       	JUMP.S 0xffa0361c <_tcp_rx+0x32c>;
ffa036f2:	0e 30       	R1 = R6;
ffa036f4:	00 e3 ba 04 	CALL 0xffa04068 <_httpCollate>;
ffa036f8:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa036fa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d20 <_TcpSeqHost> */
ffa036fe:	f0 b0       	[SP + 0xc] = R0;
ffa03700:	0a e1 20 0d 	P2.L = 0xd20;		/* (3360)	P2=0xff900d20 <_TcpSeqHost> */
ffa03704:	10 91       	R0 = [P2];
ffa03706:	14 32       	P2 = R4;
ffa03708:	30 b1       	[SP + 0x10] = R0;
ffa0370a:	28 91       	R0 = [P5];
ffa0370c:	70 b1       	[SP + 0x14] = R0;
ffa0370e:	4f 30       	R1 = FP;
ffa03710:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03714:	12 91 00 00 
ffa03718:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0371a:	ff e3 27 fd 	CALL 0xffa03168 <_tcp_packet_setup>;
ffa0371e:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03722:	00 0d       	CC = R0 <= 0x0;
ffa03724:	b4 16       	IF !CC JUMP 0xffa0348c <_tcp_rx+0x19c> (BP);
ffa03726:	f1 2d       	JUMP.S 0xffa03308 <_tcp_rx+0x18>;
ffa03728:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa0372c:	00 e1 64 05 	R0.L = 0x564;		/* (1380)	R0=0xff900564(-7338652) */
ffa03730:	ff e3 a2 e8 	CALL 0xffa00874 <_printf_str>;
ffa03734:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03736:	ea 2d       	JUMP.S 0xffa0330a <_tcp_rx+0x1a>;
ffa03738:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa0373c:	27 2e       	JUMP.S 0xffa0338a <_tcp_rx+0x9a>;
ffa0373e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03740:	18 93       	[P3] = R0;
ffa03742:	a0 a2       	R0 = [P4 + 0x28];
ffa03744:	ff e3 10 f0 	CALL 0xffa01764 <_htonl>;
ffa03748:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d20 <_TcpSeqHost> */
ffa0374c:	0a e1 24 0d 	P2.L = 0xd24;		/* (3364)	P2=0xff900d24 <_TcpSeqClient> */
ffa03750:	10 93       	[P2] = R0;
ffa03752:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa03756:	00 e1 44 05 	R0.L = 0x544;		/* (1348)	R0=0xff900544(-7338684) */
ffa0375a:	ff e3 8d e8 	CALL 0xffa00874 <_printf_str>;
ffa0375e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03760:	d5 2d       	JUMP.S 0xffa0330a <_tcp_rx+0x1a>;
	...

ffa03764 <_htmlForm>:
ffa03764:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03768:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa0376c:	02 e1 b0 05 	R2.L = 0x5b0;		/* (1456)	R2=0xff9005b0(-7338576) */
ffa03770:	01 e8 00 00 	UNLINK;
ffa03774:	ff e2 58 ea 	JUMP.L 0xffa00c24 <_strcpy_>;

ffa03778 <_htmlDiv>:
ffa03778:	12 43       	R2 = R2.B (X);
ffa0377a:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa0377e:	1a 08       	CC = R2 == R3;
ffa03780:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03784:	09 18       	IF CC JUMP 0xffa03796 <_htmlDiv+0x1e>;
ffa03786:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005b0(-7338576) */
ffa0378a:	02 e1 04 06 	R2.L = 0x604;		/* (1540)	R2=0xff900604(-7338492) */
ffa0378e:	01 e8 00 00 	UNLINK;
ffa03792:	ff e2 49 ea 	JUMP.L 0xffa00c24 <_strcpy_>;
ffa03796:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900604(-7338492) */
ffa0379a:	02 e1 d0 05 	R2.L = 0x5d0;		/* (1488)	R2=0xff9005d0(-7338544) */
ffa0379e:	01 e8 00 00 	UNLINK;
ffa037a2:	ff e2 41 ea 	JUMP.L 0xffa00c24 <_strcpy_>;
	...

ffa037a8 <_html404>:
ffa037a8:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa037ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa037ae:	4f 30       	R1 = FP;
ffa037b0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005d0(-7338544) */
ffa037b4:	f0 bb       	[FP -0x4] = R0;
ffa037b6:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa037b8:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa037bc:	02 e1 38 06 	R2.L = 0x638;		/* (1592)	R2=0xff900638(-7338440) */
ffa037c0:	ff e3 32 ea 	CALL 0xffa00c24 <_strcpy_>;
ffa037c4:	f0 b9       	R0 = [FP -0x4];
ffa037c6:	01 e8 00 00 	UNLINK;
ffa037ca:	10 00       	RTS;

ffa037cc <_htmlCursorOption>:
ffa037cc:	68 05       	[--SP] = (R7:5);
ffa037ce:	2a 30       	R5 = R2;
ffa037d0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900638(-7338440) */
ffa037d4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa037d8:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa037dc:	3f a2 00 00 
ffa037e0:	02 e1 54 06 	R2.L = 0x654;		/* (1620)	R2=0xff900654(-7338412) */
ffa037e4:	ff e3 20 ea 	CALL 0xffa00c24 <_strcpy_>;
ffa037e8:	0e 30       	R1 = R6;
ffa037ea:	15 30       	R2 = R5;
ffa037ec:	ff e3 82 eb 	CALL 0xffa00ef0 <_strprintf_int>;
ffa037f0:	3d 08       	CC = R5 == R7;
ffa037f2:	16 18       	IF CC JUMP 0xffa0381e <_htmlCursorOption+0x52>;
ffa037f4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900654(-7338412) */
ffa037f8:	0e 30       	R1 = R6;
ffa037fa:	02 e1 7c 06 	R2.L = 0x67c;		/* (1660)	R2=0xff90067c(-7338372) */
ffa037fe:	ff e3 13 ea 	CALL 0xffa00c24 <_strcpy_>;
ffa03802:	0e 30       	R1 = R6;
ffa03804:	15 30       	R2 = R5;
ffa03806:	ff e3 75 eb 	CALL 0xffa00ef0 <_strprintf_int>;
ffa0380a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90067c(-7338372) */
ffa0380e:	01 e8 00 00 	UNLINK;
ffa03812:	0e 30       	R1 = R6;
ffa03814:	02 e1 80 06 	R2.L = 0x680;		/* (1664)	R2=0xff900680(-7338368) */
ffa03818:	28 05       	(R7:5) = [SP++];
ffa0381a:	ff e2 05 ea 	JUMP.L 0xffa00c24 <_strcpy_>;
ffa0381e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900680(-7338368) */
ffa03822:	0e 30       	R1 = R6;
ffa03824:	02 e1 64 06 	R2.L = 0x664;		/* (1636)	R2=0xff900664(-7338396) */
ffa03828:	ff e3 fe e9 	CALL 0xffa00c24 <_strcpy_>;
ffa0382c:	e4 2f       	JUMP.S 0xffa037f4 <_htmlCursorOption+0x28>;
	...

ffa03830 <_htmlCursorSelect>:
ffa03830:	60 05       	[--SP] = (R7:4);
ffa03832:	3a 30       	R7 = R2;
ffa03834:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900664(-7338396) */
ffa03838:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0383c:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa03840:	7e a2 00 00 
ffa03844:	02 e1 8c 06 	R2.L = 0x68c;		/* (1676)	R2=0xff90068c(-7338356) */
ffa03848:	bc a2       	R4 = [FP + 0x28];
ffa0384a:	ff e3 ed e9 	CALL 0xffa00c24 <_strcpy_>;
ffa0384e:	17 30       	R2 = R7;
ffa03850:	0d 30       	R1 = R5;
ffa03852:	ff e3 e9 e9 	CALL 0xffa00c24 <_strcpy_>;
ffa03856:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90068c(-7338356) */
ffa0385a:	0d 30       	R1 = R5;
ffa0385c:	02 e1 98 06 	R2.L = 0x698;		/* (1688)	R2=0xff900698(-7338344) */
ffa03860:	ff e3 e2 e9 	CALL 0xffa00c24 <_strcpy_>;
ffa03864:	0d 30       	R1 = R5;
ffa03866:	16 30       	R2 = R6;
ffa03868:	ff e3 de e9 	CALL 0xffa00c24 <_strcpy_>;
ffa0386c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900698(-7338344) */
ffa03870:	0d 30       	R1 = R5;
ffa03872:	02 e1 b4 06 	R2.L = 0x6b4;		/* (1716)	R2=0xff9006b4(-7338316) */
ffa03876:	ff e3 d7 e9 	CALL 0xffa00c24 <_strcpy_>;
ffa0387a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0387c:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa03880:	f4 b0 00 00 
ffa03884:	17 30       	R2 = R7;
ffa03886:	ff e3 a3 ff 	CALL 0xffa037cc <_htmlCursorOption>;
ffa0388a:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0388c:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa0388e:	0f 08       	CC = R7 == R1;
ffa03890:	f6 17       	IF !CC JUMP 0xffa0387c <_htmlCursorSelect+0x4c> (BP);
ffa03892:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006b4(-7338316) */
ffa03896:	01 e8 00 00 	UNLINK;
ffa0389a:	0d 30       	R1 = R5;
ffa0389c:	02 e1 b8 06 	R2.L = 0x6b8;		/* (1720)	R2=0xff9006b8(-7338312) */
ffa038a0:	20 05       	(R7:4) = [SP++];
ffa038a2:	ff e2 c1 e9 	JUMP.L 0xffa00c24 <_strcpy_>;
	...

ffa038a8 <_htmlDefault>:
ffa038a8:	ed 05       	[--SP] = (R7:5, P5:5);
ffa038aa:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa038ae:	77 30       	R6 = FP;
ffa038b0:	e6 67       	R6 += -0x4;		/* ( -4) */
ffa038b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa038b4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006b8(-7338312) */
ffa038b8:	f0 bb       	[FP -0x4] = R0;
ffa038ba:	0e 30       	R1 = R6;
ffa038bc:	02 e1 d0 06 	R2.L = 0x6d0;		/* (1744)	R2=0xff9006d0(-7338288) */
ffa038c0:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa038c4:	ff e3 b0 e9 	CALL 0xffa00c24 <_strcpy_>;
ffa038c8:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa038cc:	0e 30       	R1 = R6;
ffa038ce:	ff e3 55 ff 	CALL 0xffa03778 <_htmlDiv>;
ffa038d2:	0e 30       	R1 = R6;
ffa038d4:	ff e3 48 ff 	CALL 0xffa03764 <_htmlForm>;
ffa038d8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa038dc:	0e 30       	R1 = R6;
ffa038de:	02 e1 20 07 	R2.L = 0x720;		/* (1824)	R2=0xff900720(-7338208) */
ffa038e2:	ff e3 a1 e9 	CALL 0xffa00c24 <_strcpy_>;
ffa038e6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d24 <_TcpSeqClient> */
ffa038ea:	0a e1 a0 0b 	P2.L = 0xba0;		/* (2976)	P2=0xff900ba0 <_g_streamEnabled> */
ffa038ee:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa038f2:	10 99 00 00 
ffa038f6:	00 0c       	CC = R0 == 0x0;
ffa038f8:	2c 1d       	IF CC JUMP 0xffa03b50 <_htmlDefault+0x2a8> (BP);
ffa038fa:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900720(-7338208) */
ffa038fe:	01 30       	R0 = R1;
ffa03900:	02 e1 70 07 	R2.L = 0x770;		/* (1904)	R2=0xff900770(-7338128) */
ffa03904:	0e 30       	R1 = R6;
ffa03906:	ff e3 8f e9 	CALL 0xffa00c24 <_strcpy_>;
ffa0390a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900770(-7338128) */
ffa0390e:	0e 30       	R1 = R6;
ffa03910:	02 e1 88 07 	R2.L = 0x788;		/* (1928)	R2=0xff900788(-7338104) */
ffa03914:	ff e3 88 e9 	CALL 0xffa00c24 <_strcpy_>;
ffa03918:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa0391c:	0e 30       	R1 = R6;
ffa0391e:	ff e3 2d ff 	CALL 0xffa03778 <_htmlDiv>;
ffa03922:	0e 30       	R1 = R6;
ffa03924:	ff e3 20 ff 	CALL 0xffa03764 <_htmlForm>;
ffa03928:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa0392c:	0e 30       	R1 = R6;
ffa0392e:	02 e1 9c 07 	R2.L = 0x79c;		/* (1948)	R2=0xff90079c(-7338084) */
ffa03932:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d20 <_TcpSeqHost> */
ffa03936:	ff e3 77 e9 	CALL 0xffa00c24 <_strcpy_>;
ffa0393a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa0393c:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa0393e:	0d e1 4c 0c 	P5.L = 0xc4c;		/* (3148)	P5=0xff900c4c <_NetDataDestIP> */
ffa03942:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90079c(-7338084) */
ffa03946:	0e 30       	R1 = R6;
ffa03948:	02 e1 b8 07 	R2.L = 0x7b8;		/* (1976)	R2=0xff9007b8(-7338056) */
ffa0394c:	ff e3 6c e9 	CALL 0xffa00c24 <_strcpy_>;
ffa03950:	17 30       	R2 = R7;
ffa03952:	0e 30       	R1 = R6;
ffa03954:	ff e3 ce ea 	CALL 0xffa00ef0 <_strprintf_int>;
ffa03958:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007b8(-7338056) */
ffa0395c:	0e 30       	R1 = R6;
ffa0395e:	02 e1 d4 07 	R2.L = 0x7d4;		/* (2004)	R2=0xff9007d4(-7338028) */
ffa03962:	ff e3 61 e9 	CALL 0xffa00c24 <_strcpy_>;
ffa03966:	2a 91       	R2 = [P5];
ffa03968:	6a 40       	R2 >>= R5;
ffa0396a:	52 43       	R2 = R2.B (Z);
ffa0396c:	0e 30       	R1 = R6;
ffa0396e:	ff e3 c1 ea 	CALL 0xffa00ef0 <_strprintf_int>;
ffa03972:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007d4(-7338028) */
ffa03976:	0e 30       	R1 = R6;
ffa03978:	02 e1 e8 07 	R2.L = 0x7e8;		/* (2024)	R2=0xff9007e8(-7338008) */
ffa0397c:	ff e3 54 e9 	CALL 0xffa00c24 <_strcpy_>;
ffa03980:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03982:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03984:	0f 08       	CC = R7 == R1;
ffa03986:	45 64       	R5 += 0x8;		/* (  8) */
ffa03988:	dd 17       	IF !CC JUMP 0xffa03942 <_htmlDefault+0x9a> (BP);
ffa0398a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007e8(-7338008) */
ffa0398e:	0e 30       	R1 = R6;
ffa03990:	02 e1 f0 07 	R2.L = 0x7f0;		/* (2032)	R2=0xff9007f0(-7338000) */
ffa03994:	ff e3 48 e9 	CALL 0xffa00c24 <_strcpy_>;
ffa03998:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007f0(-7338000) */
ffa0399c:	0e 30       	R1 = R6;
ffa0399e:	02 e1 88 07 	R2.L = 0x788;		/* (1928)	R2=0xff900788(-7338104) */
ffa039a2:	ff e3 41 e9 	CALL 0xffa00c24 <_strcpy_>;
ffa039a6:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa039aa:	0e 30       	R1 = R6;
ffa039ac:	ff e3 e6 fe 	CALL 0xffa03778 <_htmlDiv>;
ffa039b0:	0e 30       	R1 = R6;
ffa039b2:	ff e3 d9 fe 	CALL 0xffa03764 <_htmlForm>;
ffa039b6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa039ba:	0e 30       	R1 = R6;
ffa039bc:	02 e1 14 08 	R2.L = 0x814;		/* (2068)	R2=0xff900814(-7337964) */
ffa039c0:	ff e3 32 e9 	CALL 0xffa00c24 <_strcpy_>;
ffa039c4:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800ba0 */
ffa039c8:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa039cc:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa039d0:	10 99 00 00 
ffa039d4:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa039d6:	c6 1c       	IF CC JUMP 0xffa03b62 <_htmlDefault+0x2ba> (BP);
ffa039d8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900814(-7337964) */
ffa039dc:	01 30       	R0 = R1;
ffa039de:	02 e1 7c 07 	R2.L = 0x77c;		/* (1916)	R2=0xff90077c(-7338116) */
ffa039e2:	0e 30       	R1 = R6;
ffa039e4:	ff e3 20 e9 	CALL 0xffa00c24 <_strcpy_>;
ffa039e8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90077c(-7338116) */
ffa039ec:	0e 30       	R1 = R6;
ffa039ee:	02 e1 88 07 	R2.L = 0x788;		/* (1928)	R2=0xff900788(-7338104) */
ffa039f2:	ff e3 19 e9 	CALL 0xffa00c24 <_strcpy_>;
ffa039f6:	0e 30       	R1 = R6;
ffa039f8:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa039fc:	ff e3 be fe 	CALL 0xffa03778 <_htmlDiv>;
ffa03a00:	0e 30       	R1 = R6;
ffa03a02:	ff e3 b1 fe 	CALL 0xffa03764 <_htmlForm>;
ffa03a06:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03a0a:	0e 30       	R1 = R6;
ffa03a0c:	02 e1 54 08 	R2.L = 0x854;		/* (2132)	R2=0xff900854(-7337900) */
ffa03a10:	ff e3 0a e9 	CALL 0xffa00c24 <_strcpy_>;
ffa03a14:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa03a18:	01 e1 84 08 	R1.L = 0x884;		/* (2180)	R1=0xff900884(-7337852) */
ffa03a1c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900854(-7337900) */
ffa03a20:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa03a24:	f1 b0 00 00 
ffa03a28:	02 e1 78 08 	R2.L = 0x878;		/* (2168)	R2=0xff900878(-7337864) */
ffa03a2c:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03a30:	37 b1 00 00 
ffa03a34:	ff e3 fe fe 	CALL 0xffa03830 <_htmlCursorSelect>;
ffa03a38:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900884(-7337852) */
ffa03a3c:	01 e1 9c 08 	R1.L = 0x89c;		/* (2204)	R1=0xff90089c(-7337828) */
ffa03a40:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900878(-7337864) */
ffa03a44:	f1 b0       	[SP + 0xc] = R1;
ffa03a46:	02 e1 90 08 	R2.L = 0x890;		/* (2192)	R2=0xff900890(-7337840) */
ffa03a4a:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03a4e:	37 b1 00 00 
ffa03a52:	ff e3 ef fe 	CALL 0xffa03830 <_htmlCursorSelect>;
ffa03a56:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff90089c(-7337828) */
ffa03a5a:	01 e1 b4 08 	R1.L = 0x8b4;		/* (2228)	R1=0xff9008b4(-7337804) */
ffa03a5e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900890(-7337840) */
ffa03a62:	f1 b0       	[SP + 0xc] = R1;
ffa03a64:	02 e1 a8 08 	R2.L = 0x8a8;		/* (2216)	R2=0xff9008a8(-7337816) */
ffa03a68:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03a6c:	37 b1 00 00 
ffa03a70:	ff e3 e0 fe 	CALL 0xffa03830 <_htmlCursorSelect>;
ffa03a74:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008b4(-7337804) */
ffa03a78:	01 e1 c8 08 	R1.L = 0x8c8;		/* (2248)	R1=0xff9008c8(-7337784) */
ffa03a7c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a8(-7337816) */
ffa03a80:	f1 b0       	[SP + 0xc] = R1;
ffa03a82:	02 e1 c0 08 	R2.L = 0x8c0;		/* (2240)	R2=0xff9008c0(-7337792) */
ffa03a86:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03a8a:	37 b1 00 00 
ffa03a8e:	ff e3 d1 fe 	CALL 0xffa03830 <_htmlCursorSelect>;
ffa03a92:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008c0(-7337792) */
ffa03a96:	0e 30       	R1 = R6;
ffa03a98:	02 e1 d4 08 	R2.L = 0x8d4;		/* (2260)	R2=0xff9008d4(-7337772) */
ffa03a9c:	ff e3 c4 e8 	CALL 0xffa00c24 <_strcpy_>;
ffa03aa0:	0e 30       	R1 = R6;
ffa03aa2:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03aa6:	ff e3 69 fe 	CALL 0xffa03778 <_htmlDiv>;
ffa03aaa:	0e 30       	R1 = R6;
ffa03aac:	ff e3 5c fe 	CALL 0xffa03764 <_htmlForm>;
ffa03ab0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03ab4:	0e 30       	R1 = R6;
ffa03ab6:	02 e1 10 09 	R2.L = 0x910;		/* (2320)	R2=0xff900910(-7337712) */
ffa03aba:	ff e3 b5 e8 	CALL 0xffa00c24 <_strcpy_>;
ffa03abe:	0e 30       	R1 = R6;
ffa03ac0:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03ac4:	ff e3 5a fe 	CALL 0xffa03778 <_htmlDiv>;
ffa03ac8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03acc:	0e 30       	R1 = R6;
ffa03ace:	02 e1 68 09 	R2.L = 0x968;		/* (2408)	R2=0xff900968(-7337624) */
ffa03ad2:	ff e3 a9 e8 	CALL 0xffa00c24 <_strcpy_>;
ffa03ad6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900968(-7337624) */
ffa03ada:	0e 30       	R1 = R6;
ffa03adc:	02 e1 90 09 	R2.L = 0x990;		/* (2448)	R2=0xff900990(-7337584) */
ffa03ae0:	ff e3 a2 e8 	CALL 0xffa00c24 <_strcpy_>;
ffa03ae4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900990(-7337584) */
ffa03ae8:	0e 30       	R1 = R6;
ffa03aea:	02 e1 88 07 	R2.L = 0x788;		/* (1928)	R2=0xff900788(-7338104) */
ffa03aee:	ff e3 9b e8 	CALL 0xffa00c24 <_strcpy_>;
ffa03af2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900788(-7338104) */
ffa03af6:	0e 30       	R1 = R6;
ffa03af8:	02 e1 d8 09 	R2.L = 0x9d8;		/* (2520)	R2=0xff9009d8(-7337512) */
ffa03afc:	ff e3 94 e8 	CALL 0xffa00c24 <_strcpy_>;
ffa03b00:	0e 30       	R1 = R6;
ffa03b02:	22 e1 75 ff 	R2 = -0x8b (X);		/*		R2=0xffffff75(-139) */
ffa03b06:	ff e3 f5 e9 	CALL 0xffa00ef0 <_strprintf_int>;
ffa03b0a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ff75(-7274635) */
ffa03b0e:	0e 30       	R1 = R6;
ffa03b10:	02 e1 34 00 	R2.L = 0x34;		/* ( 52)	R2=0xff900034(-7339980) */
ffa03b14:	ff e3 88 e8 	CALL 0xffa00c24 <_strcpy_>;
ffa03b18:	0e 30       	R1 = R6;
ffa03b1a:	92 62       	R2 = -0x2e (X);		/*		R2=0xffffffd2(-46) */
ffa03b1c:	ff e3 ea e9 	CALL 0xffa00ef0 <_strprintf_int>;
ffa03b20:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ffd2(-7274542) */
ffa03b24:	0e 30       	R1 = R6;
ffa03b26:	02 e1 0c 00 	R2.L = 0xc;		/* ( 12)	R2=0xff90000c(-7340020) */
ffa03b2a:	ff e3 7d e8 	CALL 0xffa00c24 <_strcpy_>;
ffa03b2e:	0e 30       	R1 = R6;
ffa03b30:	22 e1 d0 fd 	R2 = -0x230 (X);		/*		R2=0xfffffdd0(-560) */
ffa03b34:	ff e3 de e9 	CALL 0xffa00ef0 <_strprintf_int>;
ffa03b38:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90fdd0(-7275056) */
ffa03b3c:	0e 30       	R1 = R6;
ffa03b3e:	02 e1 e4 09 	R2.L = 0x9e4;		/* (2532)	R2=0xff9009e4(-7337500) */
ffa03b42:	ff e3 71 e8 	CALL 0xffa00c24 <_strcpy_>;
ffa03b46:	f0 b9       	R0 = [FP -0x4];
ffa03b48:	01 e8 00 00 	UNLINK;
ffa03b4c:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03b4e:	10 00       	RTS;
ffa03b50:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009e4(-7337500) */
ffa03b54:	01 30       	R0 = R1;
ffa03b56:	02 e1 7c 07 	R2.L = 0x77c;		/* (1916)	R2=0xff90077c(-7338116) */
ffa03b5a:	0e 30       	R1 = R6;
ffa03b5c:	ff e3 64 e8 	CALL 0xffa00c24 <_strcpy_>;
ffa03b60:	d5 2e       	JUMP.S 0xffa0390a <_htmlDefault+0x62>;
ffa03b62:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90077c(-7338116) */
ffa03b66:	01 30       	R0 = R1;
ffa03b68:	02 e1 70 07 	R2.L = 0x770;		/* (1904)	R2=0xff900770(-7338128) */
ffa03b6c:	0e 30       	R1 = R6;
ffa03b6e:	ff e3 5b e8 	CALL 0xffa00c24 <_strcpy_>;
ffa03b72:	3b 2f       	JUMP.S 0xffa039e8 <_htmlDefault+0x140>;

ffa03b74 <_httpHeader>:
ffa03b74:	78 05       	[--SP] = (R7:7);
ffa03b76:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03b7a:	7f 30       	R7 = FP;
ffa03b7c:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03b7e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b80:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900770(-7338128) */
ffa03b84:	f0 bb       	[FP -0x4] = R0;
ffa03b86:	0f 30       	R1 = R7;
ffa03b88:	02 e1 fc 09 	R2.L = 0x9fc;		/* (2556)	R2=0xff9009fc(-7337476) */
ffa03b8c:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03b90:	ff e3 4a e8 	CALL 0xffa00c24 <_strcpy_>;
ffa03b94:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009fc(-7337476) */
ffa03b98:	0f 30       	R1 = R7;
ffa03b9a:	02 e1 10 0a 	R2.L = 0xa10;		/* (2576)	R2=0xff900a10(-7337456) */
ffa03b9e:	ff e3 43 e8 	CALL 0xffa00c24 <_strcpy_>;
ffa03ba2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a10(-7337456) */
ffa03ba6:	0f 30       	R1 = R7;
ffa03ba8:	02 e1 24 0a 	R2.L = 0xa24;		/* (2596)	R2=0xff900a24(-7337436) */
ffa03bac:	ff e3 3c e8 	CALL 0xffa00c24 <_strcpy_>;
ffa03bb0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa03bb4:	0a e1 40 0d 	P2.L = 0xd40;		/* (3392)	P2=0xff900d40 <_g_httpContentLen> */
ffa03bb8:	12 91       	R2 = [P2];
ffa03bba:	0f 30       	R1 = R7;
ffa03bbc:	ff e3 9a e9 	CALL 0xffa00ef0 <_strprintf_int>;
ffa03bc0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a24(-7337436) */
ffa03bc4:	0f 30       	R1 = R7;
ffa03bc6:	02 e1 38 0a 	R2.L = 0xa38;		/* (2616)	R2=0xff900a38(-7337416) */
ffa03bca:	ff e3 2d e8 	CALL 0xffa00c24 <_strcpy_>;
ffa03bce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d40 <_g_httpContentLen> */
ffa03bd2:	f0 b9       	R0 = [FP -0x4];
ffa03bd4:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_g_httpHeaderLen> */
ffa03bd8:	10 93       	[P2] = R0;
ffa03bda:	01 e8 00 00 	UNLINK;
ffa03bde:	38 05       	(R7:7) = [SP++];
ffa03be0:	10 00       	RTS;
	...

ffa03be4 <_htmlGeneric>:
ffa03be4:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03be8:	10 30       	R2 = R0;
ffa03bea:	4f 30       	R1 = FP;
ffa03bec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03bee:	f0 bb       	[FP -0x4] = R0;
ffa03bf0:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03bf2:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03bf6:	ff e3 17 e8 	CALL 0xffa00c24 <_strcpy_>;
ffa03bfa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_g_httpHeaderLen> */
ffa03bfe:	f0 b9       	R0 = [FP -0x4];
ffa03c00:	0a e1 40 0d 	P2.L = 0xd40;		/* (3392)	P2=0xff900d40 <_g_httpContentLen> */
ffa03c04:	10 93       	[P2] = R0;
ffa03c06:	ff e3 b7 ff 	CALL 0xffa03b74 <_httpHeader>;
ffa03c0a:	f0 b9       	R0 = [FP -0x4];
ffa03c0c:	01 e8 00 00 	UNLINK;
ffa03c10:	10 00       	RTS;
	...

ffa03c14 <_httpResp>:
ffa03c14:	60 05       	[--SP] = (R7:4);
ffa03c16:	30 30       	R6 = R0;
ffa03c18:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa03c1a:	01 09       	CC = R1 <= R0;
ffa03c1c:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa03c20:	39 30       	R7 = R1;
ffa03c22:	21 10       	IF !CC JUMP 0xffa03c64 <_httpResp+0x50>;
ffa03c24:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa03c26:	0f 09       	CC = R7 <= R1;
ffa03c28:	34 10       	IF !CC JUMP 0xffa03c90 <_httpResp+0x7c>;
ffa03c2a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa03c2e:	00 e1 f4 09 	R0.L = 0x9f4;		/* (2548)	R0=0xff9009f4(-7337484) */
ffa03c32:	0e 30       	R1 = R6;
ffa03c34:	17 30       	R2 = R7;
ffa03c36:	ff e3 65 e8 	CALL 0xffa00d00 <_substr>;
ffa03c3a:	00 0c       	CC = R0 == 0x0;
ffa03c3c:	06 10       	IF !CC JUMP 0xffa03c48 <_httpResp+0x34>;
ffa03c3e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c40:	01 e8 00 00 	UNLINK;
ffa03c44:	20 05       	(R7:4) = [SP++];
ffa03c46:	10 00       	RTS;
ffa03c48:	ff e3 b0 fd 	CALL 0xffa037a8 <_html404>;
ffa03c4c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d40 <_g_httpContentLen> */
ffa03c50:	0a e1 40 0d 	P2.L = 0xd40;		/* (3392)	P2=0xff900d40 <_g_httpContentLen> */
ffa03c54:	10 93       	[P2] = R0;
ffa03c56:	ff e3 8f ff 	CALL 0xffa03b74 <_httpHeader>;
ffa03c5a:	01 e8 00 00 	UNLINK;
ffa03c5e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03c60:	20 05       	(R7:4) = [SP++];
ffa03c62:	10 00       	RTS;
ffa03c64:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa03c68:	06 30       	R0 = R6;
ffa03c6a:	01 e1 58 0a 	R1.L = 0xa58;		/* (2648)	R1=0xff900a58(-7337384) */
ffa03c6e:	ff e3 1b e8 	CALL 0xffa00ca4 <_strcmp>;
ffa03c72:	00 0c       	CC = R0 == 0x0;
ffa03c74:	d8 1f       	IF CC JUMP 0xffa03c24 <_httpResp+0x10> (BP);
ffa03c76:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03c7a:	00 e1 f4 09 	R0.L = 0x9f4;		/* (2548)	R0=0xff9009f4(-7337484) */
ffa03c7e:	0e 30       	R1 = R6;
ffa03c80:	17 30       	R2 = R7;
ffa03c82:	ff e3 3f e8 	CALL 0xffa00d00 <_substr>;
ffa03c86:	00 0c       	CC = R0 == 0x0;
ffa03c88:	db 1f       	IF CC JUMP 0xffa03c3e <_httpResp+0x2a> (BP);
ffa03c8a:	ff e3 0f fe 	CALL 0xffa038a8 <_htmlDefault>;
ffa03c8e:	df 2f       	JUMP.S 0xffa03c4c <_httpResp+0x38>;
ffa03c90:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9009f4(-7337484) */
ffa03c94:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa03c98:	0e 30       	R1 = R6;
ffa03c9a:	17 30       	R2 = R7;
ffa03c9c:	ff e3 32 e8 	CALL 0xffa00d00 <_substr>;
ffa03ca0:	00 0c       	CC = R0 == 0x0;
ffa03ca2:	3c 1c       	IF CC JUMP 0xffa03d1a <_httpResp+0x106> (BP);
ffa03ca4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa03ca8:	00 e1 70 0a 	R0.L = 0xa70;		/* (2672)	R0=0xff900a70(-7337360) */
ffa03cac:	0e 30       	R1 = R6;
ffa03cae:	17 30       	R2 = R7;
ffa03cb0:	ff e3 28 e8 	CALL 0xffa00d00 <_substr>;
ffa03cb4:	00 0c       	CC = R0 == 0x0;
ffa03cb6:	c4 1f       	IF CC JUMP 0xffa03c3e <_httpResp+0x2a> (BP);
ffa03cb8:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa03cba:	06 50       	R0 = R6 + R0;
ffa03cbc:	ff e3 42 e9 	CALL 0xffa00f40 <_atoi>;
ffa03cc0:	08 30       	R1 = R0;
ffa03cc2:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa03cc6:	00 67       	R0 += -0x20;		/* (-32) */
ffa03cc8:	10 0a       	CC = R0 <= R2 (IU);
ffa03cca:	24 11       	IF !CC JUMP 0xffa03f12 <_httpResp+0x2fe>;
ffa03ccc:	82 c6 19 84 	R2 = R1 << 0x3;
ffa03cd0:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800d40 */
ffa03cd4:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03cd8:	02 0d       	CC = R2 <= 0x0;
ffa03cda:	13 91       	R3 = [P2];
ffa03cdc:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa03ce0:	14 18       	IF CC JUMP 0xffa03d08 <_httpResp+0xf4>;
ffa03ce2:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa03ce6:	28 4f       	R0 <<= 0x5;
ffa03ce8:	03 54       	R0 = R3 & R0;
ffa03cea:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa03cec:	38 52       	R0 = R0 - R7;
ffa03cee:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa03cf2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03cf4:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa03cf8:	18 54       	R0 = R0 & R3;
ffa03cfa:	10 32       	P2 = R0;
ffa03cfc:	09 64       	R1 += 0x1;		/* (  1) */
ffa03cfe:	0a 08       	CC = R2 == R1;
ffa03d00:	10 90       	R0 = [P2++];
ffa03d02:	08 92       	[P1++] = R0;
ffa03d04:	42 30       	R0 = P2;
ffa03d06:	f9 17       	IF !CC JUMP 0xffa03cf8 <_httpResp+0xe4> (BP);
ffa03d08:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900804 */
ffa03d0c:	0a e1 40 0d 	P2.L = 0xd40;		/* (3392)	P2=0xff900d40 <_g_httpContentLen> */
ffa03d10:	17 93       	[P2] = R7;
ffa03d12:	ff e3 31 ff 	CALL 0xffa03b74 <_httpHeader>;
ffa03d16:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03d18:	94 2f       	JUMP.S 0xffa03c40 <_httpResp+0x2c>;
ffa03d1a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03d1e:	00 e1 a4 0a 	R0.L = 0xaa4;		/* (2724)	R0=0xff900aa4(-7337308) */
ffa03d22:	0e 30       	R1 = R6;
ffa03d24:	17 30       	R2 = R7;
ffa03d26:	ff e3 ed e7 	CALL 0xffa00d00 <_substr>;
ffa03d2a:	00 0c       	CC = R0 == 0x0;
ffa03d2c:	7f 1f       	IF CC JUMP 0xffa03c2a <_httpResp+0x16> (BP);
ffa03d2e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900aa4(-7337308) */
ffa03d32:	0e 30       	R1 = R6;
ffa03d34:	17 30       	R2 = R7;
ffa03d36:	00 e1 a4 0a 	R0.L = 0xaa4;		/* (2724)	R0=0xff900aa4(-7337308) */
ffa03d3a:	ff e3 e3 e7 	CALL 0xffa00d00 <_substr>;
ffa03d3e:	86 51       	R6 = R6 + R0;
ffa03d40:	47 53       	R5 = R7 - R0;
ffa03d42:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900aa4(-7337308) */
ffa03d46:	00 e1 ac 0a 	R0.L = 0xaac;		/* (2732)	R0=0xff900aac(-7337300) */
ffa03d4a:	0e 30       	R1 = R6;
ffa03d4c:	15 30       	R2 = R5;
ffa03d4e:	ff e3 d9 e7 	CALL 0xffa00d00 <_substr>;
ffa03d52:	00 0c       	CC = R0 == 0x0;
ffa03d54:	10 11       	IF !CC JUMP 0xffa03f74 <_httpResp+0x360>;
ffa03d56:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03d58:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900aac(-7337300) */
ffa03d5c:	00 e1 d0 0a 	R0.L = 0xad0;		/* (2768)	R0=0xff900ad0(-7337264) */
ffa03d60:	0e 30       	R1 = R6;
ffa03d62:	15 30       	R2 = R5;
ffa03d64:	ff e3 ce e7 	CALL 0xffa00d00 <_substr>;
ffa03d68:	00 0c       	CC = R0 == 0x0;
ffa03d6a:	e2 10       	IF !CC JUMP 0xffa03f2e <_httpResp+0x31a>;
ffa03d6c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ad0(-7337264) */
ffa03d70:	0e 30       	R1 = R6;
ffa03d72:	00 e1 dc 0a 	R0.L = 0xadc;		/* (2780)	R0=0xff900adc(-7337252) */
ffa03d76:	15 30       	R2 = R5;
ffa03d78:	ff e3 c4 e7 	CALL 0xffa00d00 <_substr>;
ffa03d7c:	00 0c       	CC = R0 == 0x0;
ffa03d7e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900adc(-7337252) */
ffa03d82:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03d84:	0e 30       	R1 = R6;
ffa03d86:	15 30       	R2 = R5;
ffa03d88:	00 e1 e8 0a 	R0.L = 0xae8;		/* (2792)	R0=0xff900ae8(-7337240) */
ffa03d8c:	27 06       	IF !CC R4 = R7;
ffa03d8e:	ff e3 b9 e7 	CALL 0xffa00d00 <_substr>;
ffa03d92:	00 0c       	CC = R0 == 0x0;
ffa03d94:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ae8(-7337240) */
ffa03d98:	0e 30       	R1 = R6;
ffa03d9a:	15 30       	R2 = R5;
ffa03d9c:	00 e1 f4 0a 	R0.L = 0xaf4;		/* (2804)	R0=0xff900af4(-7337228) */
ffa03da0:	27 06       	IF !CC R4 = R7;
ffa03da2:	ff e3 af e7 	CALL 0xffa00d00 <_substr>;
ffa03da6:	00 0c       	CC = R0 == 0x0;
ffa03da8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900af4(-7337228) */
ffa03dac:	0e 30       	R1 = R6;
ffa03dae:	15 30       	R2 = R5;
ffa03db0:	00 e1 00 0b 	R0.L = 0xb00;		/* (2816)	R0=0xff900b00(-7337216) */
ffa03db4:	27 06       	IF !CC R4 = R7;
ffa03db6:	ff e3 a5 e7 	CALL 0xffa00d00 <_substr>;
ffa03dba:	00 0c       	CC = R0 == 0x0;
ffa03dbc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b00(-7337216) */
ffa03dc0:	00 e1 0c 0b 	R0.L = 0xb0c;		/* (2828)	R0=0xff900b0c(-7337204) */
ffa03dc4:	0e 30       	R1 = R6;
ffa03dc6:	15 30       	R2 = R5;
ffa03dc8:	27 06       	IF !CC R4 = R7;
ffa03dca:	ff e3 9b e7 	CALL 0xffa00d00 <_substr>;
ffa03dce:	00 0c       	CC = R0 == 0x0;
ffa03dd0:	15 11       	IF !CC JUMP 0xffa03ffa <_httpResp+0x3e6>;
ffa03dd2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b0c(-7337204) */
ffa03dd6:	00 e1 14 0b 	R0.L = 0xb14;		/* (2836)	R0=0xff900b14(-7337196) */
ffa03dda:	0e 30       	R1 = R6;
ffa03ddc:	15 30       	R2 = R5;
ffa03dde:	ff e3 91 e7 	CALL 0xffa00d00 <_substr>;
ffa03de2:	00 0c       	CC = R0 == 0x0;
ffa03de4:	f6 10       	IF !CC JUMP 0xffa03fd0 <_httpResp+0x3bc>;
ffa03de6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b14(-7337196) */
ffa03dea:	00 e1 1c 0b 	R0.L = 0xb1c;		/* (2844)	R0=0xff900b1c(-7337188) */
ffa03dee:	0e 30       	R1 = R6;
ffa03df0:	15 30       	R2 = R5;
ffa03df2:	ff e3 87 e7 	CALL 0xffa00d00 <_substr>;
ffa03df6:	00 0c       	CC = R0 == 0x0;
ffa03df8:	13 11       	IF !CC JUMP 0xffa0401e <_httpResp+0x40a>;
ffa03dfa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b1c(-7337188) */
ffa03dfe:	00 e1 24 0b 	R0.L = 0xb24;		/* (2852)	R0=0xff900b24(-7337180) */
ffa03e02:	0e 30       	R1 = R6;
ffa03e04:	15 30       	R2 = R5;
ffa03e06:	ff e3 7d e7 	CALL 0xffa00d00 <_substr>;
ffa03e0a:	00 0c       	CC = R0 == 0x0;
ffa03e0c:	d1 10       	IF !CC JUMP 0xffa03fae <_httpResp+0x39a>;
ffa03e0e:	20 43       	R0 = R4.B (X);
ffa03e10:	00 0c       	CC = R0 == 0x0;
ffa03e12:	3c 17       	IF !CC JUMP 0xffa03c8a <_httpResp+0x76> (BP);
ffa03e14:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b24(-7337180) */
ffa03e18:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa03e1c:	0e 30       	R1 = R6;
ffa03e1e:	15 30       	R2 = R5;
ffa03e20:	ff e3 70 e7 	CALL 0xffa00d00 <_substr>;
ffa03e24:	00 0c       	CC = R0 == 0x0;
ffa03e26:	0c 1b       	IF CC JUMP 0xffa03c3e <_httpResp+0x2a>;
ffa03e28:	7f 30       	R7 = FP;
ffa03e2a:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03e2e:	57 5a       	P1 = FP + P2;
ffa03e30:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03e32:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03e34:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa03e36:	b2 e0 02 20 	LSETUP(0xffa03e3a <_httpResp+0x226>, 0xffa03e3a <_httpResp+0x226>) LC1 = P2;
ffa03e3a:	08 92       	[P1++] = R0;
ffa03e3c:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa03e40:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03e44:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa03e48:	29 4f       	R1 <<= 0x5;
ffa03e4a:	10 91       	R0 = [P2];
ffa03e4c:	08 54       	R0 = R0 & R1;
ffa03e4e:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03e50:	81 4f       	R1 <<= 0x10;
ffa03e52:	08 50       	R0 = R0 + R1;
ffa03e54:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03e56:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa03e5a:	88 54       	R2 = R0 & R1;
ffa03e5c:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa03e60:	b2 e0 12 10 	LSETUP(0xffa03e64 <_httpResp+0x250>, 0xffa03e84 <_httpResp+0x270>) LC1 = P1;
ffa03e64:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03e68:	97 5a       	P2 = FP + P2;
ffa03e6a:	02 32       	P0 = R2;
ffa03e6c:	11 91       	R1 = [P2];
ffa03e6e:	12 64       	R2 += 0x2;		/* (  2) */
ffa03e70:	00 94       	R0 = W[P0++] (Z);
ffa03e72:	41 50       	R1 = R1 + R0;
ffa03e74:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03e76:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa03e7a:	11 92       	[P2++] = R1;
ffa03e7c:	82 54       	R2 = R2 & R0;
ffa03e7e:	42 30       	R0 = P2;
ffa03e80:	38 08       	CC = R0 == R7;
ffa03e82:	f4 17       	IF !CC JUMP 0xffa03e6a <_httpResp+0x256> (BP);
ffa03e84:	00 00       	NOP;
ffa03e86:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03e8a:	97 5a       	P2 = FP + P2;
ffa03e8c:	00 00       	NOP;
ffa03e8e:	10 91       	R0 = [P2];
ffa03e90:	58 4d       	R0 >>>= 0xb;
ffa03e92:	10 92       	[P2++] = R0;
ffa03e94:	4a 30       	R1 = P2;
ffa03e96:	39 08       	CC = R1 == R7;
ffa03e98:	fa 17       	IF !CC JUMP 0xffa03e8c <_httpResp+0x278> (BP);
ffa03e9a:	ff e3 07 fd 	CALL 0xffa038a8 <_htmlDefault>;
ffa03e9e:	68 67       	R0 += -0x13;		/* (-19) */
ffa03ea0:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa03ea4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80(-7336064) */
ffa03ea8:	f0 bb       	[FP -0x4] = R0;
ffa03eaa:	02 e1 3c 0b 	R2.L = 0xb3c;		/* (2876)	R2=0xff900b3c(-7337156) */
ffa03eae:	08 50       	R0 = R0 + R1;
ffa03eb0:	0f 30       	R1 = R7;
ffa03eb2:	ff e3 b9 e6 	CALL 0xffa00c24 <_strcpy_>;
ffa03eb6:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa03eba:	f5 b8 00 00 
ffa03ebe:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b3c(-7337156) */
ffa03ec2:	0f 30       	R1 = R7;
ffa03ec4:	02 e1 48 0b 	R2.L = 0xb48;		/* (2888)	R2=0xff900b48(-7337144) */
ffa03ec8:	ff e3 ae e6 	CALL 0xffa00c24 <_strcpy_>;
ffa03ecc:	16 30       	R2 = R6;
ffa03ece:	0f 30       	R1 = R7;
ffa03ed0:	ff e3 10 e8 	CALL 0xffa00ef0 <_strprintf_int>;
ffa03ed4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b48(-7337144) */
ffa03ed8:	0f 30       	R1 = R7;
ffa03eda:	02 e1 5c 0b 	R2.L = 0xb5c;		/* (2908)	R2=0xff900b5c(-7337124) */
ffa03ede:	ff e3 a3 e6 	CALL 0xffa00c24 <_strcpy_>;
ffa03ee2:	0f 30       	R1 = R7;
ffa03ee4:	15 30       	R2 = R5;
ffa03ee6:	ff e3 05 e8 	CALL 0xffa00ef0 <_strprintf_int>;
ffa03eea:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b5c(-7337124) */
ffa03eee:	02 e1 6c 0b 	R2.L = 0xb6c;		/* (2924)	R2=0xff900b6c(-7337108) */
ffa03ef2:	0f 30       	R1 = R7;
ffa03ef4:	ff e3 98 e6 	CALL 0xffa00c24 <_strcpy_>;
ffa03ef8:	0e 64       	R6 += 0x1;		/* (  1) */
ffa03efa:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa03efc:	16 08       	CC = R6 == R2;
ffa03efe:	e0 17       	IF !CC JUMP 0xffa03ebe <_httpResp+0x2aa> (BP);
ffa03f00:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa03f04:	0f 30       	R1 = R7;
ffa03f06:	02 e1 78 0b 	R2.L = 0xb78;		/* (2936)	R2=0xff900b78(-7337096) */
ffa03f0a:	ff e3 8d e6 	CALL 0xffa00c24 <_strcpy_>;
ffa03f0e:	f0 b9       	R0 = [FP -0x4];
ffa03f10:	9e 2e       	JUMP.S 0xffa03c4c <_httpResp+0x38>;
ffa03f12:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03f14:	4f 30       	R1 = FP;
ffa03f16:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b78(-7337096) */
ffa03f1a:	f0 bb       	[FP -0x4] = R0;
ffa03f1c:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03f1e:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03f22:	02 e1 78 0a 	R2.L = 0xa78;		/* (2680)	R2=0xff900a78(-7337352) */
ffa03f26:	ff e3 7f e6 	CALL 0xffa00c24 <_strcpy_>;
ffa03f2a:	f0 b9       	R0 = [FP -0x4];
ffa03f2c:	90 2e       	JUMP.S 0xffa03c4c <_httpResp+0x38>;
ffa03f2e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa03f32:	00 e1 bc 0a 	R0.L = 0xabc;		/* (2748)	R0=0xff900abc(-7337284) */
ffa03f36:	0e 30       	R1 = R6;
ffa03f38:	15 30       	R2 = R5;
ffa03f3a:	ff e3 e3 e6 	CALL 0xffa00d00 <_substr>;
ffa03f3e:	00 0c       	CC = R0 == 0x0;
ffa03f40:	08 1c       	IF CC JUMP 0xffa03f50 <_httpResp+0x33c> (BP);
ffa03f42:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa03f46:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03f48:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03f4c:	10 9b       	B[P2] = R0;
ffa03f4e:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03f50:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03f54:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa03f58:	0e 30       	R1 = R6;
ffa03f5a:	15 30       	R2 = R5;
ffa03f5c:	ff e3 d2 e6 	CALL 0xffa00d00 <_substr>;
ffa03f60:	00 0c       	CC = R0 == 0x0;
ffa03f62:	05 1f       	IF CC JUMP 0xffa03d6c <_httpResp+0x158> (BP);
ffa03f64:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa03f68:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03f6a:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03f6e:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03f70:	10 9b       	B[P2] = R0;
ffa03f72:	fd 2e       	JUMP.S 0xffa03d6c <_httpResp+0x158>;
ffa03f74:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03f78:	00 e1 bc 0a 	R0.L = 0xabc;		/* (2748)	R0=0xff900abc(-7337284) */
ffa03f7c:	0e 30       	R1 = R6;
ffa03f7e:	15 30       	R2 = R5;
ffa03f80:	ff e3 c0 e6 	CALL 0xffa00d00 <_substr>;
ffa03f84:	00 0c       	CC = R0 == 0x0;
ffa03f86:	61 14       	IF !CC JUMP 0xffa04048 <_httpResp+0x434> (BP);
ffa03f88:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03f8a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900abc(-7337284) */
ffa03f8e:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa03f92:	0e 30       	R1 = R6;
ffa03f94:	15 30       	R2 = R5;
ffa03f96:	ff e3 b5 e6 	CALL 0xffa00d00 <_substr>;
ffa03f9a:	00 0c       	CC = R0 == 0x0;
ffa03f9c:	de 1e       	IF CC JUMP 0xffa03d58 <_httpResp+0x144> (BP);
ffa03f9e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa03fa2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03fa4:	0a e1 a0 0b 	P2.L = 0xba0;		/* (2976)	P2=0xff900ba0 <_g_streamEnabled> */
ffa03fa8:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03faa:	10 9b       	B[P2] = R0;
ffa03fac:	d6 2e       	JUMP.S 0xffa03d58 <_httpResp+0x144>;
ffa03fae:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa03fb0:	06 50       	R0 = R6 + R0;
ffa03fb2:	ff e3 c7 e7 	CALL 0xffa00f40 <_atoi>;
ffa03fb6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba0 <_g_streamEnabled> */
ffa03fba:	0a e1 4c 0c 	P2.L = 0xc4c;		/* (3148)	P2=0xff900c4c <_NetDataDestIP> */
ffa03fbe:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa03fc0:	11 91       	R1 = [P2];
ffa03fc2:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa03fc6:	51 54       	R1 = R1 & R2;
ffa03fc8:	c0 4f       	R0 <<= 0x18;
ffa03fca:	41 50       	R1 = R1 + R0;
ffa03fcc:	11 93       	[P2] = R1;
ffa03fce:	5e 2e       	JUMP.S 0xffa03c8a <_httpResp+0x76>;
ffa03fd0:	86 51       	R6 = R6 + R0;
ffa03fd2:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa03fd4:	45 53       	R5 = R5 - R0;
ffa03fd6:	06 30       	R0 = R6;
ffa03fd8:	ff e3 b4 e7 	CALL 0xffa00f40 <_atoi>;
ffa03fdc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c4c <_NetDataDestIP> */
ffa03fe0:	0a e1 4c 0c 	P2.L = 0xc4c;		/* (3148)	P2=0xff900c4c <_NetDataDestIP> */
ffa03fe4:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa03fe6:	11 91       	R1 = [P2];
ffa03fe8:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa03fec:	40 43       	R0 = R0.B (Z);
ffa03fee:	51 54       	R1 = R1 & R2;
ffa03ff0:	40 4f       	R0 <<= 0x8;
ffa03ff2:	41 50       	R1 = R1 + R0;
ffa03ff4:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03ff6:	11 93       	[P2] = R1;
ffa03ff8:	f7 2e       	JUMP.S 0xffa03de6 <_httpResp+0x1d2>;
ffa03ffa:	86 51       	R6 = R6 + R0;
ffa03ffc:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa03ffe:	45 53       	R5 = R5 - R0;
ffa04000:	06 30       	R0 = R6;
ffa04002:	ff e3 9f e7 	CALL 0xffa00f40 <_atoi>;
ffa04006:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c4c <_NetDataDestIP> */
ffa0400a:	0a e1 4c 0c 	P2.L = 0xc4c;		/* (3148)	P2=0xff900c4c <_NetDataDestIP> */
ffa0400e:	11 91       	R1 = [P2];
ffa04010:	41 4d       	R1 >>>= 0x8;
ffa04012:	41 4f       	R1 <<= 0x8;
ffa04014:	40 43       	R0 = R0.B (Z);
ffa04016:	08 50       	R0 = R0 + R1;
ffa04018:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0401a:	10 93       	[P2] = R0;
ffa0401c:	db 2e       	JUMP.S 0xffa03dd2 <_httpResp+0x1be>;
ffa0401e:	86 51       	R6 = R6 + R0;
ffa04020:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04022:	45 53       	R5 = R5 - R0;
ffa04024:	06 30       	R0 = R6;
ffa04026:	ff e3 8d e7 	CALL 0xffa00f40 <_atoi>;
ffa0402a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c4c <_NetDataDestIP> */
ffa0402e:	0a e1 4c 0c 	P2.L = 0xc4c;		/* (3148)	P2=0xff900c4c <_NetDataDestIP> */
ffa04032:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04034:	11 91       	R1 = [P2];
ffa04036:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa0403a:	40 43       	R0 = R0.B (Z);
ffa0403c:	51 54       	R1 = R1 & R2;
ffa0403e:	80 4f       	R0 <<= 0x10;
ffa04040:	41 50       	R1 = R1 + R0;
ffa04042:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04044:	11 93       	[P2] = R1;
ffa04046:	da 2e       	JUMP.S 0xffa03dfa <_httpResp+0x1e6>;
ffa04048:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c4c <_NetDataDestIP> */
ffa0404c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0404e:	0a e1 a0 0b 	P2.L = 0xba0;		/* (2976)	P2=0xff900ba0 <_g_streamEnabled> */
ffa04052:	10 9b       	B[P2] = R0;
ffa04054:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800ba0 */
ffa04058:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa0405c:	10 91       	R0 = [P2];
ffa0405e:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04060:	22 6c       	P2 += 0x4;		/* (  4) */
ffa04062:	10 93       	[P2] = R0;
ffa04064:	93 2f       	JUMP.S 0xffa03f8a <_httpResp+0x376>;
	...

ffa04068 <_httpCollate>:
ffa04068:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0406a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c4c <_NetDataDestIP> */
ffa0406e:	0d e1 44 0d 	P5.L = 0xd44;		/* (3396)	P5=0xff900d44 <_g_httpRxed> */
ffa04072:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa04074:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R1 = [P5] || NOP;
ffa04078:	29 91 00 00 
ffa0407c:	82 4f       	R2 <<= 0x10;
ffa0407e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa04082:	51 50       	R1 = R1 + R2;
ffa04084:	17 30       	R2 = R7;
ffa04086:	ff e3 9f e5 	CALL 0xffa00bc4 <_memcpy_>;
ffa0408a:	28 91       	R0 = [P5];
ffa0408c:	38 50       	R0 = R0 + R7;
ffa0408e:	01 e8 00 00 	UNLINK;
ffa04092:	28 93       	[P5] = R0;
ffa04094:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04096:	bd 05       	(R7:7, P5:5) = [SP++];
ffa04098:	10 00       	RTS;
	...

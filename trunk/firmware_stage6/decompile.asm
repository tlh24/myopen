
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
ffa00178:	42 20       	JUMP.S 0xffa001fc <_main>;
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

ffa001a8 <_eth_listen>:
ffa001a8:	00 0c       	CC = R0 == 0x0;
ffa001aa:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa001ae:	04 18       	IF CC JUMP 0xffa001b6 <_eth_listen+0xe>;
ffa001b0:	01 e8 00 00 	UNLINK;
ffa001b4:	10 00       	RTS;
ffa001b6:	47 30       	R0 = FP;
ffa001b8:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa001ba:	00 e3 ed 12 	CALL 0xffa02794 <_bfin_EMAC_recv>;
ffa001be:	00 0d       	CC = R0 <= 0x0;
ffa001c0:	f8 1b       	IF CC JUMP 0xffa001b0 <_eth_listen+0x8>;
ffa001c2:	f9 b9       	P1 = [FP -0x4];
ffa001c4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900000 <_l1_data_a> */
ffa001c8:	0a e1 20 0c 	P2.L = 0xc20;		/* (3104)	P2=0xff900c20 <_NetDataDestIP> */
ffa001cc:	11 91       	R1 = [P2];
ffa001ce:	c8 a1       	R0 = [P1 + 0x1c];
ffa001d0:	08 08       	CC = R0 == R1;
ffa001d2:	ef 17       	IF !CC JUMP 0xffa001b0 <_eth_listen+0x8> (BP);
ffa001d4:	48 e4 13 00 	R0 = W[P1 + 0x26] (Z);
ffa001d8:	00 e3 ba 09 	CALL 0xffa0154c <_htons>;
ffa001dc:	c0 42       	R0 = R0.L (Z);
ffa001de:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa001e2:	08 08       	CC = R0 == R1;
ffa001e4:	e6 17       	IF !CC JUMP 0xffa001b0 <_eth_listen+0x8> (BP);
ffa001e6:	f0 b9       	R0 = [FP -0x4];
ffa001e8:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa001ec:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa001ee:	01 e1 75 0b 	R1.L = 0xb75;		/* (2933)	R1=0xff900b75 <_g_outpkt>(-7337099) */
ffa001f2:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa001f4:	00 e3 ee 03 	CALL 0xffa009d0 <_memcpy_>;
ffa001f8:	dc 2f       	JUMP.S 0xffa001b0 <_eth_listen+0x8>;
	...

ffa001fc <_main>:
ffa001fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c20(-4191200) */
ffa00200:	e3 05       	[--SP] = (R7:4, P5:3);
ffa00202:	20 e1 9c c1 	R0 = -0x3e64 (X);		/*		R0=0xffffc19c(-15972) */
ffa00206:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa0020a:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0020e:	10 97       	W[P2] = R0;
ffa00210:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa00214:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa00216:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa0021a:	12 97       	W[P2] = R2;
ffa0021c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa00220:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00222:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa00226:	10 97       	W[P2] = R0;
ffa00228:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa0022c:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0022e:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa00232:	10 97       	W[P2] = R0;
ffa00234:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa00238:	a2 6f       	P2 += -0xc;		/* (-12) */
ffa0023a:	10 97       	W[P2] = R0;
ffa0023c:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa00240:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00242:	10 97       	W[P2] = R0;
ffa00244:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00246:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00248:	11 97       	W[P2] = R1;
ffa0024a:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0150c(-4188916) */
ffa0024e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa00252:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0203c(-4186052) */
ffa00256:	09 e1 0c 04 	P1.L = 0x40c;		/* (1036)	P1=0xffc0040c(-4193268) */
ffa0025a:	08 e1 04 04 	P0.L = 0x404;		/* (1028)	P0=0xffc00404(-4193276) */
ffa0025e:	0a e1 10 04 	P2.L = 0x410;		/* (1040)	P2=0xffc00410(-4193264) */
ffa00262:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa00266:	01 97       	W[P0] = R1;
ffa00268:	11 97       	W[P2] = R1;
ffa0026a:	08 97       	W[P1] = R0;
ffa0026c:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0026e:	20 e1 88 00 	R0 = 0x88 (X);		/*		R0=0x88(136) */
ffa00272:	10 97       	W[P2] = R0;
ffa00274:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00276:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00278:	01 97       	W[P0] = R1;
ffa0027a:	0a 97       	W[P1] = R2;
ffa0027c:	10 97       	W[P2] = R0;
ffa0027e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00280:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900410 */
ffa00284:	b8 4f       	R0 <<= 0x17;
ffa00286:	0a e1 98 0b 	P2.L = 0xb98;		/* (2968)	P2=0xff900b98 <_printf_temp> */
ffa0028a:	10 93       	[P2] = R0;
ffa0028c:	20 e1 01 e0 	R0 = -0x1fff (X);		/*		R0=0xffffe001(-8191) */
ffa00290:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900b98 <_printf_temp> */
ffa00294:	0a e1 9c 0b 	P2.L = 0xb9c;		/* (2972)	P2=0xff900b9c <_printf_out> */
ffa00298:	50 4f       	R0 <<= 0xa;
ffa0029a:	10 93       	[P2] = R0;
ffa0029c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90e001(-7282687) */
ffa002a0:	21 e1 80 01 	R1 = 0x180 (X);		/*		R1=0x180(384) */
ffa002a4:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa002a8:	00 e3 ae 02 	CALL 0xffa00804 <_printf_int>;
ffa002ac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa002b0:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa002b4:	00 e3 e6 01 	CALL 0xffa00680 <_printf_str>;
ffa002b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a34(-7337420) */
ffa002bc:	00 e1 10 00 	R0.L = 0x10;		/* ( 16)	R0=0xff900010(-7340016) */
ffa002c0:	00 e3 e0 01 	CALL 0xffa00680 <_printf_str>;
ffa002c4:	49 e1 40 00 	P1.H = 0x40;		/* ( 64)	P1=0x40040c */
ffa002c8:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa002ca:	23 e1 ca de 	R3 = -0x2136 (X);		/*		R3=0xffffdeca(-8502) */
ffa002ce:	20 e1 ad fb 	R0 = -0x453 (X);		/*		R0=0xfffffbad(-1107) */
ffa002d2:	21 e1 ed c0 	R1 = -0x3f13 (X);		/*		R1=0xffffc0ed(-16147) */
ffa002d6:	22 e1 be ba 	R2 = -0x4542 (X);		/*		R2=0xffffbabe(-17730) */
ffa002da:	09 e1 00 00 	P1.L = 0x0;		/* (  0)	P1=0x400000 */
ffa002de:	b2 e0 06 10 	LSETUP(0xffa002e2 <_main+0xe6>, 0xffa002ea <_main+0xee>) LC1 = P1;
ffa002e2:	13 97       	W[P2] = R3;
ffa002e4:	50 b4       	W[P2 + 0x2] = R0;
ffa002e6:	91 b4       	W[P2 + 0x4] = R1;
ffa002e8:	d2 b4       	W[P2 + 0x6] = R2;
ffa002ea:	42 6c       	P2 += 0x8;		/* (  8) */
ffa002ec:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa002ee:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa002f0:	02 20       	JUMP.S 0xffa002f4 <_main+0xf8>;
ffa002f2:	45 6c       	P5 += 0x8;		/* (  8) */
ffa002f4:	2f 95       	R7 = W[P5] (Z);
ffa002f6:	80 e1 ca de 	R0 = 0xdeca (Z);		/*		R0=0xdeca(57034) */
ffa002fa:	07 08       	CC = R7 == R0;
ffa002fc:	15 18       	IF CC JUMP 0xffa00326 <_main+0x12a>;
ffa002fe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90deca(-7282998) */
ffa00302:	0e 30       	R1 = R6;
ffa00304:	00 e1 24 00 	R0.L = 0x24;		/* ( 36)	R0=0xff900024(-7339996) */
ffa00308:	00 e3 22 02 	CALL 0xffa0074c <_printf_hex>;
ffa0030c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900024(-7339996) */
ffa00310:	00 e1 30 00 	R0.L = 0x30;		/* ( 48)	R0=0xff900030(-7339984) */
ffa00314:	0f 30       	R1 = R7;
ffa00316:	00 e3 1b 02 	CALL 0xffa0074c <_printf_hex>;
ffa0031a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900030(-7339984) */
ffa0031e:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa00322:	00 e3 af 01 	CALL 0xffa00680 <_printf_str>;
ffa00326:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa00328:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa0032c:	08 08       	CC = R0 == R1;
ffa0032e:	08 18       	IF CC JUMP 0xffa0033e <_main+0x142>;
ffa00330:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a34(-7337420) */
ffa00334:	00 e1 24 00 	R0.L = 0x24;		/* ( 36)	R0=0xff900024(-7339996) */
ffa00338:	0e 30       	R1 = R6;
ffa0033a:	00 e3 09 02 	CALL 0xffa0074c <_printf_hex>;
ffa0033e:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa00340:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa00344:	08 08       	CC = R0 == R1;
ffa00346:	08 18       	IF CC JUMP 0xffa00356 <_main+0x15a>;
ffa00348:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900024(-7339996) */
ffa0034c:	00 e1 24 00 	R0.L = 0x24;		/* ( 36)	R0=0xff900024(-7339996) */
ffa00350:	0e 30       	R1 = R6;
ffa00352:	00 e3 fd 01 	CALL 0xffa0074c <_printf_hex>;
ffa00356:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa00358:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa0035c:	08 08       	CC = R0 == R1;
ffa0035e:	08 18       	IF CC JUMP 0xffa0036e <_main+0x172>;
ffa00360:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900024(-7339996) */
ffa00364:	00 e1 24 00 	R0.L = 0x24;		/* ( 36)	R0=0xff900024(-7339996) */
ffa00368:	0e 30       	R1 = R6;
ffa0036a:	00 e3 f1 01 	CALL 0xffa0074c <_printf_hex>;
ffa0036e:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa00372:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa00376:	55 08       	CC = P5 == P2;
ffa00378:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0037a:	bc 17       	IF !CC JUMP 0xffa002f2 <_main+0xf6> (BP);
ffa0037c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900024(-7339996) */
ffa00380:	00 e1 38 00 	R0.L = 0x38;		/* ( 56)	R0=0xff900038(-7339976) */
ffa00384:	00 e3 7e 01 	CALL 0xffa00680 <_printf_str>;
ffa00388:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0fff8(-4128776) */
ffa0038c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0038e:	0a e1 84 06 	P2.L = 0x684;		/* (1668)	P2=0xffc00684(-4192636) */
ffa00392:	10 97       	W[P2] = R0;
ffa00394:	24 00       	SSYNC;
ffa00396:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800684 */
ffa0039a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0039c:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa003a0:	10 93       	[P2] = R0;
ffa003a2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa003a6:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa003aa:	0a e1 50 06 	P2.L = 0x650;		/* (1616)	P2=0xffc00650(-4192688) */
ffa003ae:	10 97       	W[P2] = R0;
ffa003b0:	20 e1 09 3d 	R0 = 0x3d09 (X);		/*		R0=0x3d09(15625) */
ffa003b4:	18 4f       	R0 <<= 0x3;
ffa003b6:	42 6c       	P2 += 0x8;		/* (  8) */
ffa003b8:	10 93       	[P2] = R0;
ffa003ba:	80 e1 24 f4 	R0 = 0xf424 (Z);		/*		R0=0xf424(62500) */
ffa003be:	22 6c       	P2 += 0x4;		/* (  4) */
ffa003c0:	10 93       	[P2] = R0;
ffa003c2:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa003c4:	50 95       	R0 = W[P2] (X);
ffa003c6:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa003c8:	10 97       	W[P2] = R0;
ffa003ca:	00 e3 a1 0f 	CALL 0xffa0230c <_bfin_EMAC_init>;
ffa003ce:	00 0c       	CC = R0 == 0x0;
ffa003d0:	20 30       	R4 = R0;
ffa003d2:	03 14       	IF !CC JUMP 0xffa003d8 <_main+0x1dc> (BP);
ffa003d4:	00 e3 6e 11 	CALL 0xffa026b0 <_DHCP_req>;
ffa003d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00650(-4192688) */
ffa003dc:	0a e1 00 32 	P2.L = 0x3200;		/* (12800)	P2=0xffc03200(-4181504) */
ffa003e0:	50 95       	R0 = W[P2] (X);
ffa003e2:	3a 62       	R2 = -0x39 (X);		/*		R2=0xffffffc7(-57) */
ffa003e4:	10 54       	R0 = R0 & R2;
ffa003e6:	10 97       	W[P2] = R0;
ffa003e8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03200(-4181504) */
ffa003ec:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa003f0:	51 95       	R1 = W[P2] (X);
ffa003f2:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa003f4:	08 56       	R0 = R0 | R1;
ffa003f6:	10 97       	W[P2] = R0;
ffa003f8:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa003fa:	50 95       	R0 = W[P2] (X);
ffa003fc:	10 54       	R0 = R0 & R2;
ffa003fe:	10 97       	W[P2] = R0;
ffa00400:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa00404:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa00408:	50 95       	R0 = W[P2] (X);
ffa0040a:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa0040c:	10 97       	W[P2] = R0;
ffa0040e:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00410:	50 95       	R0 = W[P2] (X);
ffa00412:	58 4c       	BITCLR (R0, 0xb);		/* bit 11 */
ffa00414:	10 97       	W[P2] = R0;
ffa00416:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa0041a:	00 e3 6f 07 	CALL 0xffa012f8 <_radio_init>;
ffa0041e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa00422:	00 e1 4c 00 	R0.L = 0x4c;		/* ( 76)	R0=0xff90004c(-7339956) */
ffa00426:	00 e3 2d 01 	CALL 0xffa00680 <_printf_str>;
ffa0042a:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa0042c:	00 e3 a8 06 	CALL 0xffa0117c <_radio_set_rx>;
ffa00430:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00432:	00 cc 00 c0 	R0 = R0 -|- R0 || [FP -0x8] = R5 || NOP;
ffa00436:	e5 bb 00 00 
ffa0043a:	d0 bb       	[FP -0xc] = R0;
ffa0043c:	04 30       	R0 = R4;
ffa0043e:	ff e3 b5 fe 	CALL 0xffa001a8 <_eth_listen>;
ffa00442:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa00446:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa0044a:	50 95       	R0 = W[P2] (X);
ffa0044c:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa0044e:	43 18       	IF CC JUMP 0xffa004d4 <_main+0x2d8>;
ffa00450:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa00454:	05 0a       	CC = R5 <= R0 (IU);
ffa00456:	1a 1c       	IF CC JUMP 0xffa0048a <_main+0x28e> (BP);
ffa00458:	4f 30       	R1 = FP;
ffa0045a:	20 e1 04 01 	R0 = 0x104 (X);		/*		R0=0x104(260) */
ffa0045e:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa00460:	00 e3 ae 0d 	CALL 0xffa01fbc <_udp_packet_setup>;
ffa00464:	10 32       	P2 = R0;
ffa00466:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0046a:	00 0d       	CC = R0 <= 0x0;
ffa0046c:	6d 18       	IF CC JUMP 0xffa00546 <_main+0x34a>;
ffa0046e:	e1 b9       	R1 = [FP -0x8];
ffa00470:	11 92       	[P2++] = R1;
ffa00472:	4a 30       	R1 = P2;
ffa00474:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00476:	22 e1 00 01 	R2 = 0x100 (X);		/*		R2=0x100(256) */
ffa0047a:	00 e3 ab 02 	CALL 0xffa009d0 <_memcpy_>;
ffa0047e:	ea b9       	P2 = [FP -0x8];
ffa00480:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa00482:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00484:	ea bb       	[FP -0x8] = P2;
ffa00486:	00 e3 0d 0a 	CALL 0xffa018a0 <_bfin_EMAC_send_nocopy>;
ffa0048a:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff801500 */
ffa0048e:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00492:	40 e1 62 10 	R0.H = 0x1062;		/* (4194)	R0=0x10620000(274857984) */
ffa00496:	11 91       	R1 = [P2];
ffa00498:	00 e1 d3 4d 	R0.L = 0x4dd3;		/* (19923)	R0=0x10624dd3(274877907) */
ffa0049c:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa004a0:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa004a4:	81 c0 08 86 	A1 += R1.H * R0.L, A0 = R1.H * R0.H (FU);
ffa004a8:	81 c0 01 98 	A1 += R0.H * R1.L (FU);
ffa004ac:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa004b0:	0b c4 00 80 	A0 += A1;
ffa004b4:	8b c0 00 38 	R0 = A0 (FU);
ffa004b8:	82 ce d0 83 	R1 = R0 >> 0x6 || R0 = [FP -0xc] || NOP;
ffa004bc:	d0 b9 00 00 
ffa004c0:	08 08       	CC = R0 == R1;
ffa004c2:	bd 1b       	IF CC JUMP 0xffa0043c <_main+0x240>;
ffa004c4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa004c8:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa004ca:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa004ce:	10 97       	W[P2] = R0;
ffa004d0:	d1 bb       	[FP -0xc] = R1;
ffa004d2:	b5 2f       	JUMP.S 0xffa0043c <_main+0x240>;
ffa004d4:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa004d8:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa004da:	00 e3 95 04 	CALL 0xffa00e04 <_spi_write_register>;
ffa004de:	24 00       	SSYNC;
ffa004e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa004e4:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa004e8:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa004ec:	10 97       	W[P2] = R0;
ffa004ee:	24 00       	SSYNC;
ffa004f0:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa004f4:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa004f8:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa004fc:	28 97       	W[P5] = R0;
ffa004fe:	5d 32       	P3 = P5;
ffa00500:	00 e3 68 04 	CALL 0xffa00dd0 <_spi_delay>;
ffa00504:	25 32       	P4 = R5;
ffa00506:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00508:	65 6c       	P5 += 0xc;		/* ( 12) */
ffa0050a:	1e 97       	W[P3] = R6;
ffa0050c:	00 e3 62 04 	CALL 0xffa00dd0 <_spi_delay>;
ffa00510:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00512:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa00514:	68 95       	R0 = W[P5] (X);
ffa00516:	0f 08       	CC = R7 == R1;
ffa00518:	20 9a       	B[P4++] = R0;
ffa0051a:	f8 17       	IF !CC JUMP 0xffa0050a <_main+0x30e> (BP);
ffa0051c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00520:	27 e1 00 06 	R7 = 0x600 (X);		/*		R7=0x600(1536) */
ffa00524:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00528:	17 97       	W[P2] = R7;
ffa0052a:	24 00       	SSYNC;
ffa0052c:	15 32       	P2 = R5;
ffa0052e:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00530:	90 e5 1b 00 	R0 = B[P2 + 0x1b] (X);
ffa00534:	08 54       	R0 = R0 & R1;
ffa00536:	08 08       	CC = R0 == R1;
ffa00538:	0e 18       	IF CC JUMP 0xffa00554 <_main+0x358>;
ffa0053a:	0d 30       	R1 = R5;
ffa0053c:	01 65       	R1 += 0x20;		/* ( 32) */
ffa0053e:	20 e1 ff 0f 	R0 = 0xfff (X);		/*		R0=0xfff(4095) */
ffa00542:	41 55       	R5 = R1 & R0;
ffa00544:	86 2f       	JUMP.S 0xffa00450 <_main+0x254>;
ffa00546:	e0 b9       	R0 = [FP -0x8];
ffa00548:	08 64       	R0 += 0x1;		/* (  1) */
ffa0054a:	00 cc 2d ca 	R5 = R5 -|- R5 || [FP -0x8] = R0 || NOP;
ffa0054e:	e0 bb 00 00 
ffa00552:	9c 2f       	JUMP.S 0xffa0048a <_main+0x28e>;
ffa00554:	00 e3 3c 06 	CALL 0xffa011cc <_radio_set_tx>;
ffa00558:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0055c:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00560:	17 97       	W[P2] = R7;
ffa00562:	24 00       	SSYNC;
ffa00564:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90050c */
ffa00568:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0056c:	0d e1 75 0b 	P5.L = 0xb75;		/* (2933)	P5=0xff900b75 <_g_outpkt> */
ffa00570:	18 97       	W[P3] = R0;
ffa00572:	65 32       	P4 = P5;
ffa00574:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00000(-4194304) */
ffa00578:	00 e3 2c 04 	CALL 0xffa00dd0 <_spi_delay>;
ffa0057c:	0b e1 0c 05 	P3.L = 0x50c;		/* (1292)	P3=0xffc0050c(-4193012) */
ffa00580:	04 6d       	P4 += 0x20;		/* ( 32) */
ffa00582:	00 00       	NOP;
ffa00584:	28 98       	R0 = B[P5++] (Z);
ffa00586:	18 97       	W[P3] = R0;
ffa00588:	00 e3 24 04 	CALL 0xffa00dd0 <_spi_delay>;
ffa0058c:	65 08       	CC = P5 == P4;
ffa0058e:	fa 17       	IF !CC JUMP 0xffa00582 <_main+0x386> (BP);
ffa00590:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00594:	20 e1 00 06 	R0 = 0x600 (X);		/*		R0=0x600(1536) */
ffa00598:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0059c:	10 97       	W[P2] = R0;
ffa0059e:	24 00       	SSYNC;
ffa005a0:	04 30       	R0 = R4;
ffa005a2:	ff e3 03 fe 	CALL 0xffa001a8 <_eth_listen>;
ffa005a6:	03 20       	JUMP.S 0xffa005ac <_main+0x3b0>;
ffa005a8:	00 00       	NOP;
ffa005aa:	00 00       	NOP;
ffa005ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa005b0:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa005b4:	50 95       	R0 = W[P2] (X);
ffa005b6:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa005b8:	f8 17       	IF !CC JUMP 0xffa005a8 <_main+0x3ac> (BP);
ffa005ba:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa005be:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa005c0:	00 e3 22 04 	CALL 0xffa00e04 <_spi_write_register>;
ffa005c4:	00 e3 dc 05 	CALL 0xffa0117c <_radio_set_rx>;
ffa005c8:	48 2f       	JUMP.S 0xffa00458 <_main+0x25c>;
	...

ffa005cc <_uart_str>:
ffa005cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa005d0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa005d4:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa005d8:	08 32       	P1 = R0;
ffa005da:	50 95       	R0 = W[P2] (X);
ffa005dc:	c0 42       	R0 = R0.L (Z);
ffa005de:	08 0c       	CC = R0 == 0x1;
ffa005e0:	06 18       	IF CC JUMP 0xffa005ec <_uart_str+0x20>;
ffa005e2:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa005e4:	02 30       	R0 = R2;
ffa005e6:	01 e8 00 00 	UNLINK;
ffa005ea:	10 00       	RTS;
ffa005ec:	48 99       	R0 = B[P1] (X);
ffa005ee:	01 43       	R1 = R0.B (X);
ffa005f0:	01 0c       	CC = R1 == 0x0;
ffa005f2:	f8 1b       	IF CC JUMP 0xffa005e2 <_uart_str+0x16>;
ffa005f4:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa005f8:	09 6c       	P1 += 0x1;		/* (  1) */
ffa005fa:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa005fc:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa00600:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa00604:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa00606:	b2 e0 1c 00 	LSETUP(0xffa0060a <_uart_str+0x3e>, 0xffa0063e <_uart_str+0x72>) LC1 = P0;
ffa0060a:	19 08       	CC = R1 == R3;
ffa0060c:	1b 18       	IF CC JUMP 0xffa00642 <_uart_str+0x76>;
ffa0060e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa00612:	00 43       	R0 = R0.B (X);
ffa00614:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00618:	10 97       	W[P2] = R0;
ffa0061a:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa0061c:	50 95       	R0 = W[P2] (X);
ffa0061e:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00620:	0a 10       	IF !CC JUMP 0xffa00634 <_uart_str+0x68>;
ffa00622:	00 00       	NOP;
ffa00624:	00 00       	NOP;
ffa00626:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa0062a:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa0062e:	50 95       	R0 = W[P2] (X);
ffa00630:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00632:	f9 1f       	IF CC JUMP 0xffa00624 <_uart_str+0x58> (BP);
ffa00634:	48 99       	R0 = B[P1] (X);
ffa00636:	01 43       	R1 = R0.B (X);
ffa00638:	01 0c       	CC = R1 == 0x0;
ffa0063a:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0063c:	d4 1b       	IF CC JUMP 0xffa005e4 <_uart_str+0x18>;
ffa0063e:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00640:	d2 2f       	JUMP.S 0xffa005e4 <_uart_str+0x18>;
ffa00642:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00644:	20 9f       	W[I0] = R0.L;
ffa00646:	02 20       	JUMP.S 0xffa0064a <_uart_str+0x7e>;
ffa00648:	00 00       	NOP;
ffa0064a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa0064e:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00652:	50 95       	R0 = W[P2] (X);
ffa00654:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00656:	f9 1f       	IF CC JUMP 0xffa00648 <_uart_str+0x7c> (BP);
ffa00658:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa0065c:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa0065e:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00662:	10 97       	W[P2] = R0;
ffa00664:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa00666:	50 95       	R0 = W[P2] (X);
ffa00668:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0066a:	e5 13       	IF !CC JUMP 0xffa00634 <_uart_str+0x68>;
ffa0066c:	00 00       	NOP;
ffa0066e:	00 00       	NOP;
ffa00670:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa00674:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00678:	50 95       	R0 = W[P2] (X);
ffa0067a:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0067c:	f9 1f       	IF CC JUMP 0xffa0066e <_uart_str+0xa2> (BP);
ffa0067e:	db 2f       	JUMP.S 0xffa00634 <_uart_str+0x68>;

ffa00680 <_printf_str>:
ffa00680:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00684:	01 e8 00 00 	UNLINK;
ffa00688:	ff e2 a2 ff 	JUMP.L 0xffa005cc <_uart_str>;

ffa0068c <_printf_newline>:
ffa0068c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00690:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa00694:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa00698:	01 e8 00 00 	UNLINK;
ffa0069c:	ff e2 98 ff 	JUMP.L 0xffa005cc <_uart_str>;

ffa006a0 <_printf_hex_byte>:
ffa006a0:	fc 05       	[--SP] = (R7:7, P5:4);
ffa006a2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa006a6:	28 32       	P5 = R0;
ffa006a8:	39 30       	R7 = R1;
ffa006aa:	00 e3 b1 01 	CALL 0xffa00a0c <_strlen_>;
ffa006ae:	10 30       	R2 = R0;
ffa006b0:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa006b4:	02 09       	CC = R2 <= R0;
ffa006b6:	41 10       	IF !CC JUMP 0xffa00738 <_printf_hex_byte+0x98>;
ffa006b8:	02 0d       	CC = R2 <= 0x0;
ffa006ba:	44 18       	IF CC JUMP 0xffa00742 <_printf_hex_byte+0xa2>;
ffa006bc:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa006c0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa006c2:	08 e1 9c 0b 	P0.L = 0xb9c;		/* (2972)	P0=0xff900b9c <_printf_out> */
ffa006c6:	09 32       	P1 = R1;
ffa006c8:	42 91       	P2 = [P0];
ffa006ca:	09 64       	R1 += 0x1;		/* (  1) */
ffa006cc:	68 98       	R0 = B[P5++] (X);
ffa006ce:	0a 08       	CC = R2 == R1;
ffa006d0:	8a 5a       	P2 = P2 + P1;
ffa006d2:	10 9b       	B[P2] = R0;
ffa006d4:	f9 17       	IF !CC JUMP 0xffa006c6 <_printf_hex_byte+0x26> (BP);
ffa006d6:	0a 32       	P1 = R2;
ffa006d8:	42 91       	P2 = [P0];
ffa006da:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa006dc:	22 32       	P4 = R2;
ffa006de:	79 43       	R1 = R7.B (Z);
ffa006e0:	8a 5a       	P2 = P2 + P1;
ffa006e2:	10 9b       	B[P2] = R0;
ffa006e4:	42 91       	P2 = [P0];
ffa006e6:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa006e8:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa006ec:	11 6c       	P1 += 0x2;		/* (  2) */
ffa006ee:	a2 5a       	P2 = P2 + P4;
ffa006f0:	10 9b       	B[P2] = R0;
ffa006f2:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa006f4:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa006f6:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa006f8:	01 30       	R0 = R1;
ffa006fa:	10 40       	R0 >>>= R2;
ffa006fc:	18 54       	R0 = R0 & R3;
ffa006fe:	38 09       	CC = R0 <= R7;
ffa00700:	1a 1c       	IF CC JUMP 0xffa00734 <_printf_hex_byte+0x94> (BP);
ffa00702:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00704:	42 91       	P2 = [P0];
ffa00706:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa00708:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900b75 <_g_outpkt> */
ffa0070c:	22 0c       	CC = R2 == -0x4;
ffa0070e:	8a 5a       	P2 = P2 + P1;
ffa00710:	0d e1 9c 0b 	P5.L = 0xb9c;		/* (2972)	P5=0xff900b9c <_printf_out> */
ffa00714:	10 9b       	B[P2] = R0;
ffa00716:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00718:	f0 17       	IF !CC JUMP 0xffa006f8 <_printf_hex_byte+0x58> (BP);
ffa0071a:	6a 91       	P2 = [P5];
ffa0071c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0071e:	94 5a       	P2 = P4 + P2;
ffa00720:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa00724:	28 91       	R0 = [P5];
ffa00726:	ff e3 53 ff 	CALL 0xffa005cc <_uart_str>;
ffa0072a:	01 e8 00 00 	UNLINK;
ffa0072e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00730:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00732:	10 00       	RTS;
ffa00734:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00736:	e7 2f       	JUMP.S 0xffa00704 <_printf_hex_byte+0x64>;
ffa00738:	01 e8 00 00 	UNLINK;
ffa0073c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0073e:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00740:	10 00       	RTS;
ffa00742:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900b9c <_printf_out> */
ffa00746:	08 e1 9c 0b 	P0.L = 0xb9c;		/* (2972)	P0=0xff900b9c <_printf_out> */
ffa0074a:	c6 2f       	JUMP.S 0xffa006d6 <_printf_hex_byte+0x36>;

ffa0074c <_printf_hex>:
ffa0074c:	fb 05       	[--SP] = (R7:7, P5:3);
ffa0074e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00752:	28 32       	P5 = R0;
ffa00754:	39 30       	R7 = R1;
ffa00756:	00 e3 5b 01 	CALL 0xffa00a0c <_strlen_>;
ffa0075a:	10 30       	R2 = R0;
ffa0075c:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa00760:	02 09       	CC = R2 <= R0;
ffa00762:	47 10       	IF !CC JUMP 0xffa007f0 <_printf_hex+0xa4>;
ffa00764:	02 0d       	CC = R2 <= 0x0;
ffa00766:	4a 18       	IF CC JUMP 0xffa007fa <_printf_hex+0xae>;
ffa00768:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900000 <_l1_data_a> */
ffa0076c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0076e:	09 e1 9c 0b 	P1.L = 0xb9c;		/* (2972)	P1=0xff900b9c <_printf_out> */
ffa00772:	01 32       	P0 = R1;
ffa00774:	4a 91       	P2 = [P1];
ffa00776:	09 64       	R1 += 0x1;		/* (  1) */
ffa00778:	68 98       	R0 = B[P5++] (X);
ffa0077a:	0a 08       	CC = R2 == R1;
ffa0077c:	82 5a       	P2 = P2 + P0;
ffa0077e:	10 9b       	B[P2] = R0;
ffa00780:	f9 17       	IF !CC JUMP 0xffa00772 <_printf_hex+0x26> (BP);
ffa00782:	02 32       	P0 = R2;
ffa00784:	4a 91       	P2 = [P1];
ffa00786:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00788:	1a 32       	P3 = R2;
ffa0078a:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa0078c:	82 5a       	P2 = P2 + P0;
ffa0078e:	10 9b       	B[P2] = R0;
ffa00790:	4a 91       	P2 = [P1];
ffa00792:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa00794:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00798:	10 6c       	P0 += 0x2;		/* (  2) */
ffa0079a:	9a 5a       	P2 = P2 + P3;
ffa0079c:	10 9b       	B[P2] = R0;
ffa0079e:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa007a0:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa007a2:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa007a4:	b2 e0 10 50 	LSETUP(0xffa007a8 <_printf_hex+0x5c>, 0xffa007c4 <_printf_hex+0x78>) LC1 = P5;
ffa007a8:	07 30       	R0 = R7;
ffa007aa:	08 40       	R0 >>>= R1;
ffa007ac:	10 54       	R0 = R0 & R2;
ffa007ae:	18 09       	CC = R0 <= R3;
ffa007b0:	1e 1c       	IF CC JUMP 0xffa007ec <_printf_hex+0xa0> (BP);
ffa007b2:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa007b4:	4a 91       	P2 = [P1];
ffa007b6:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900000 <_l1_data_a> */
ffa007ba:	0c e1 9c 0b 	P4.L = 0xb9c;		/* (2972)	P4=0xff900b9c <_printf_out> */
ffa007be:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa007c0:	82 5a       	P2 = P2 + P0;
ffa007c2:	10 9b       	B[P2] = R0;
ffa007c4:	08 6c       	P0 += 0x1;		/* (  1) */
ffa007c6:	62 91       	P2 = [P4];
ffa007c8:	4b 32       	P1 = P3;
ffa007ca:	49 6c       	P1 += 0x9;		/* (  9) */
ffa007cc:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa007ce:	8a 5a       	P2 = P2 + P1;
ffa007d0:	10 9b       	B[P2] = R0;
ffa007d2:	62 91       	P2 = [P4];
ffa007d4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007d6:	8a 5a       	P2 = P2 + P1;
ffa007d8:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa007dc:	20 91       	R0 = [P4];
ffa007de:	ff e3 f7 fe 	CALL 0xffa005cc <_uart_str>;
ffa007e2:	01 e8 00 00 	UNLINK;
ffa007e6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007e8:	bb 05       	(R7:7, P5:3) = [SP++];
ffa007ea:	10 00       	RTS;
ffa007ec:	80 65       	R0 += 0x30;		/* ( 48) */
ffa007ee:	e3 2f       	JUMP.S 0xffa007b4 <_printf_hex+0x68>;
ffa007f0:	01 e8 00 00 	UNLINK;
ffa007f4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa007f6:	bb 05       	(R7:7, P5:3) = [SP++];
ffa007f8:	10 00       	RTS;
ffa007fa:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900b9c <_printf_out> */
ffa007fe:	09 e1 9c 0b 	P1.L = 0xb9c;		/* (2972)	P1=0xff900b9c <_printf_out> */
ffa00802:	c0 2f       	JUMP.S 0xffa00782 <_printf_hex+0x36>;

ffa00804 <_printf_int>:
ffa00804:	f3 05       	[--SP] = (R7:6, P5:3);
ffa00806:	01 0c       	CC = R1 == 0x0;
ffa00808:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0080c:	28 32       	P5 = R0;
ffa0080e:	39 30       	R7 = R1;
ffa00810:	41 14       	IF !CC JUMP 0xffa00892 <_printf_int+0x8e> (BP);
ffa00812:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90050c */
ffa00816:	0b e1 98 0b 	P3.L = 0xb98;		/* (2968)	P3=0xff900b98 <_printf_temp> */
ffa0081a:	5a 91       	P2 = [P3];
ffa0081c:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0081e:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa00820:	10 9b       	B[P2] = R0;
ffa00822:	45 30       	R0 = P5;
ffa00824:	00 e3 f4 00 	CALL 0xffa00a0c <_strlen_>;
ffa00828:	c6 50       	R3 = R6 + R0;
ffa0082a:	10 30       	R2 = R0;
ffa0082c:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa00830:	03 09       	CC = R3 <= R0;
ffa00832:	4e 10       	IF !CC JUMP 0xffa008ce <_printf_int+0xca>;
ffa00834:	02 0d       	CC = R2 <= 0x0;
ffa00836:	79 18       	IF CC JUMP 0xffa00928 <_printf_int+0x124>;
ffa00838:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900b9c <_printf_out> */
ffa0083c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0083e:	08 e1 9c 0b 	P0.L = 0xb9c;		/* (2972)	P0=0xff900b9c <_printf_out> */
ffa00842:	09 32       	P1 = R1;
ffa00844:	42 91       	P2 = [P0];
ffa00846:	09 64       	R1 += 0x1;		/* (  1) */
ffa00848:	68 98       	R0 = B[P5++] (X);
ffa0084a:	0a 08       	CC = R2 == R1;
ffa0084c:	8a 5a       	P2 = P2 + P1;
ffa0084e:	10 9b       	B[P2] = R0;
ffa00850:	f9 17       	IF !CC JUMP 0xffa00842 <_printf_int+0x3e> (BP);
ffa00852:	06 0d       	CC = R6 <= 0x0;
ffa00854:	12 18       	IF CC JUMP 0xffa00878 <_printf_int+0x74>;
ffa00856:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00858:	00 91       	R0 = [P0];
ffa0085a:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa0085e:	5a 91 00 00 
ffa00862:	08 50       	R0 = R0 + R1;
ffa00864:	08 32       	P1 = R0;
ffa00866:	0e 52       	R0 = R6 - R1;
ffa00868:	28 32       	P5 = R0;
ffa0086a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0086c:	0e 08       	CC = R6 == R1;
ffa0086e:	aa 5a       	P2 = P2 + P5;
ffa00870:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa00874:	08 9b       	B[P1] = R0;
ffa00876:	f1 17       	IF !CC JUMP 0xffa00858 <_printf_int+0x54> (BP);
ffa00878:	0b 32       	P1 = R3;
ffa0087a:	42 91       	P2 = [P0];
ffa0087c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0087e:	91 5a       	P2 = P1 + P2;
ffa00880:	10 9b       	B[P2] = R0;
ffa00882:	00 91       	R0 = [P0];
ffa00884:	ff e3 a4 fe 	CALL 0xffa005cc <_uart_str>;
ffa00888:	01 e8 00 00 	UNLINK;
ffa0088c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0088e:	b3 05       	(R7:6, P5:3) = [SP++];
ffa00890:	10 00       	RTS;
ffa00892:	01 0d       	CC = R1 <= 0x0;
ffa00894:	22 18       	IF CC JUMP 0xffa008d8 <_printf_int+0xd4>;
ffa00896:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900b98 <_printf_temp> */
ffa0089a:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa0089c:	0b e1 98 0b 	P3.L = 0xb98;		/* (2968)	P3=0xff900b98 <_printf_temp> */
ffa008a0:	05 20       	JUMP.S 0xffa008aa <_printf_int+0xa6>;
ffa008a2:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa008a6:	06 08       	CC = R6 == R0;
ffa008a8:	bd 1b       	IF CC JUMP 0xffa00822 <_printf_int+0x1e>;
ffa008aa:	07 30       	R0 = R7;
ffa008ac:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa008ae:	00 e3 83 00 	CALL 0xffa009b4 <_mod>;
ffa008b2:	0e 32       	P1 = R6;
ffa008b4:	5a 91       	P2 = [P3];
ffa008b6:	80 65       	R0 += 0x30;		/* ( 48) */
ffa008b8:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa008ba:	0e 64       	R6 += 0x1;		/* (  1) */
ffa008bc:	8a 5a       	P2 = P2 + P1;
ffa008be:	10 9b       	B[P2] = R0;
ffa008c0:	07 30       	R0 = R7;
ffa008c2:	00 e3 6b 00 	CALL 0xffa00998 <_div>;
ffa008c6:	00 0d       	CC = R0 <= 0x0;
ffa008c8:	38 30       	R7 = R0;
ffa008ca:	ec 17       	IF !CC JUMP 0xffa008a2 <_printf_int+0x9e> (BP);
ffa008cc:	ab 2f       	JUMP.S 0xffa00822 <_printf_int+0x1e>;
ffa008ce:	01 e8 00 00 	UNLINK;
ffa008d2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa008d4:	b3 05       	(R7:6, P5:3) = [SP++];
ffa008d6:	10 00       	RTS;
ffa008d8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa008da:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa008dc:	f8 4f       	R0 <<= 0x1f;
ffa008de:	f8 53       	R7 = R0 - R7;
ffa008e0:	07 0d       	CC = R7 <= 0x0;
ffa008e2:	2c 18       	IF CC JUMP 0xffa0093a <_printf_int+0x136>;
ffa008e4:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900b98 <_printf_temp> */
ffa008e8:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa008ea:	0b e1 98 0b 	P3.L = 0xb98;		/* (2968)	P3=0xff900b98 <_printf_temp> */
ffa008ee:	05 20       	JUMP.S 0xffa008f8 <_printf_int+0xf4>;
ffa008f0:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa008f4:	4c 08       	CC = P4 == P1;
ffa008f6:	1e 18       	IF CC JUMP 0xffa00932 <_printf_int+0x12e>;
ffa008f8:	07 30       	R0 = R7;
ffa008fa:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa008fc:	00 e3 5c 00 	CALL 0xffa009b4 <_mod>;
ffa00900:	5a 91       	P2 = [P3];
ffa00902:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00904:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00906:	a2 5a       	P2 = P2 + P4;
ffa00908:	10 9b       	B[P2] = R0;
ffa0090a:	07 30       	R0 = R7;
ffa0090c:	00 e3 46 00 	CALL 0xffa00998 <_div>;
ffa00910:	00 0d       	CC = R0 <= 0x0;
ffa00912:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00914:	38 30       	R7 = R0;
ffa00916:	ed 17       	IF !CC JUMP 0xffa008f0 <_printf_int+0xec> (BP);
ffa00918:	74 30       	R6 = P4;
ffa0091a:	4c 32       	P1 = P4;
ffa0091c:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0091e:	5a 91       	P2 = [P3];
ffa00920:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa00922:	8a 5a       	P2 = P2 + P1;
ffa00924:	10 9b       	B[P2] = R0;
ffa00926:	7e 2f       	JUMP.S 0xffa00822 <_printf_int+0x1e>;
ffa00928:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900b9c <_printf_out> */
ffa0092c:	08 e1 9c 0b 	P0.L = 0xb9c;		/* (2972)	P0=0xff900b9c <_printf_out> */
ffa00930:	91 2f       	JUMP.S 0xffa00852 <_printf_int+0x4e>;
ffa00932:	4c 32       	P1 = P4;
ffa00934:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa00938:	f3 2f       	JUMP.S 0xffa0091e <_printf_int+0x11a>;
ffa0093a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900b98 <_printf_temp> */
ffa0093e:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa00940:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa00942:	0b e1 98 0b 	P3.L = 0xb98;		/* (2968)	P3=0xff900b98 <_printf_temp> */
ffa00946:	ec 2f       	JUMP.S 0xffa0091e <_printf_int+0x11a>;

ffa00948 <_printf_ip>:
ffa00948:	70 05       	[--SP] = (R7:6);
ffa0094a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0094e:	39 30       	R7 = R1;
ffa00950:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa00954:	49 43       	R1 = R1.B (Z);
ffa00956:	ff e3 57 ff 	CALL 0xffa00804 <_printf_int>;
ffa0095a:	06 e1 0c 00 	R6.L = 0xc;		/* ( 12)	R6=0xff90000c(-7340020) */
ffa0095e:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa00962:	49 43       	R1 = R1.B (Z);
ffa00964:	06 30       	R0 = R6;
ffa00966:	ff e3 4f ff 	CALL 0xffa00804 <_printf_int>;
ffa0096a:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa0096e:	49 43       	R1 = R1.B (Z);
ffa00970:	06 30       	R0 = R6;
ffa00972:	c7 4e       	R7 >>= 0x18;
ffa00974:	ff e3 48 ff 	CALL 0xffa00804 <_printf_int>;
ffa00978:	0f 30       	R1 = R7;
ffa0097a:	06 30       	R0 = R6;
ffa0097c:	ff e3 44 ff 	CALL 0xffa00804 <_printf_int>;
ffa00980:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa00984:	00 e1 d8 04 	R0.L = 0x4d8;		/* (1240)	R0=0xff9004d8(-7338792) */
ffa00988:	ff e3 7c fe 	CALL 0xffa00680 <_printf_str>;
ffa0098c:	01 e8 00 00 	UNLINK;
ffa00990:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00992:	30 05       	(R7:6) = [SP++];
ffa00994:	10 00       	RTS;
	...

ffa00998 <_div>:
ffa00998:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0099c:	08 4f       	R0 <<= 0x1;
ffa0099e:	48 42       	DIVS (R0, R1);
ffa009a0:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa009a2:	b2 e0 03 20 	LSETUP(0xffa009a6 <_div+0xe>, 0xffa009a8 <_div+0x10>) LC1 = P2;
ffa009a6:	08 42       	DIVQ (R0, R1);
ffa009a8:	00 00       	NOP;
ffa009aa:	80 42       	R0 = R0.L (X);
ffa009ac:	01 e8 00 00 	UNLINK;
ffa009b0:	10 00       	RTS;
	...

ffa009b4 <_mod>:
ffa009b4:	70 05       	[--SP] = (R7:6);
ffa009b6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa009ba:	30 30       	R6 = R0;
ffa009bc:	39 30       	R7 = R1;
ffa009be:	ff e3 ed ff 	CALL 0xffa00998 <_div>;
ffa009c2:	c7 40       	R7 *= R0;
ffa009c4:	01 e8 00 00 	UNLINK;
ffa009c8:	be 53       	R6 = R6 - R7;
ffa009ca:	06 30       	R0 = R6;
ffa009cc:	30 05       	(R7:6) = [SP++];
ffa009ce:	10 00       	RTS;

ffa009d0 <_memcpy_>:
ffa009d0:	02 0d       	CC = R2 <= 0x0;
ffa009d2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa009d6:	08 32       	P1 = R0;
ffa009d8:	11 32       	P2 = R1;
ffa009da:	08 18       	IF CC JUMP 0xffa009ea <_memcpy_+0x1a>;
ffa009dc:	00 00       	NOP;
ffa009de:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa009e0:	09 64       	R1 += 0x1;		/* (  1) */
ffa009e2:	48 98       	R0 = B[P1++] (X);
ffa009e4:	0a 08       	CC = R2 == R1;
ffa009e6:	10 9a       	B[P2++] = R0;
ffa009e8:	fc 17       	IF !CC JUMP 0xffa009e0 <_memcpy_+0x10> (BP);
ffa009ea:	01 e8 00 00 	UNLINK;
ffa009ee:	10 00       	RTS;

ffa009f0 <_memset_>:
ffa009f0:	02 0d       	CC = R2 <= 0x0;
ffa009f2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa009f6:	10 32       	P2 = R0;
ffa009f8:	06 18       	IF CC JUMP 0xffa00a04 <_memset_+0x14>;
ffa009fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009fc:	08 64       	R0 += 0x1;		/* (  1) */
ffa009fe:	02 08       	CC = R2 == R0;
ffa00a00:	11 9a       	B[P2++] = R1;
ffa00a02:	fd 17       	IF !CC JUMP 0xffa009fc <_memset_+0xc> (BP);
ffa00a04:	01 e8 00 00 	UNLINK;
ffa00a08:	10 00       	RTS;
	...

ffa00a0c <_strlen_>:
ffa00a0c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00a10:	10 32       	P2 = R0;
ffa00a12:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00a14:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa00a18:	b2 e0 06 10 	LSETUP(0xffa00a1c <_strlen_+0x10>, 0xffa00a24 <_strlen_+0x18>) LC1 = P1;
ffa00a1c:	50 99       	R0 = B[P2] (X);
ffa00a1e:	00 0c       	CC = R0 == 0x0;
ffa00a20:	04 18       	IF CC JUMP 0xffa00a28 <_strlen_+0x1c>;
ffa00a22:	09 64       	R1 += 0x1;		/* (  1) */
ffa00a24:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00a26:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00a28:	01 30       	R0 = R1;
ffa00a2a:	01 e8 00 00 	UNLINK;
ffa00a2e:	10 00       	RTS;

ffa00a30 <_strcpy_>:
ffa00a30:	12 32       	P2 = R2;
ffa00a32:	c5 04       	[--SP] = (P5:5);
ffa00a34:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00a38:	29 32       	P5 = R1;
ffa00a3a:	00 32       	P0 = R0;
ffa00a3c:	51 99       	R1 = B[P2] (X);
ffa00a3e:	08 43       	R0 = R1.B (X);
ffa00a40:	00 0c       	CC = R0 == 0x0;
ffa00a42:	17 18       	IF CC JUMP 0xffa00a70 <_strcpy_+0x40>;
ffa00a44:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00a46:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00a48:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa00a4c:	b2 e0 09 10 	LSETUP(0xffa00a50 <_strcpy_+0x20>, 0xffa00a5e <_strcpy_+0x2e>) LC1 = P1;
ffa00a50:	01 9a       	B[P0++] = R1;
ffa00a52:	51 99       	R1 = B[P2] (X);
ffa00a54:	08 43       	R0 = R1.B (X);
ffa00a56:	00 0c       	CC = R0 == 0x0;
ffa00a58:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00a5a:	03 18       	IF CC JUMP 0xffa00a60 <_strcpy_+0x30>;
ffa00a5c:	00 00       	NOP;
ffa00a5e:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00a60:	01 e8 00 00 	UNLINK;
ffa00a64:	28 91       	R0 = [P5];
ffa00a66:	10 50       	R0 = R0 + R2;
ffa00a68:	28 93       	[P5] = R0;
ffa00a6a:	40 30       	R0 = P0;
ffa00a6c:	85 04       	(P5:5) = [SP++];
ffa00a6e:	10 00       	RTS;
ffa00a70:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00a72:	f7 2f       	JUMP.S 0xffa00a60 <_strcpy_+0x30>;

ffa00a74 <_strprepend>:
ffa00a74:	fc 05       	[--SP] = (R7:7, P5:4);
ffa00a76:	21 32       	P4 = R1;
ffa00a78:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00a7c:	38 30       	R7 = R0;
ffa00a7e:	02 30       	R0 = R2;
ffa00a80:	2a 32       	P5 = R2;
ffa00a82:	ff e3 c5 ff 	CALL 0xffa00a0c <_strlen_>;
ffa00a86:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa00a8a:	20 91 00 00 
ffa00a8e:	02 0d       	CC = R2 <= 0x0;
ffa00a90:	0a 18       	IF CC JUMP 0xffa00aa4 <_strprepend+0x30>;
ffa00a92:	07 52       	R0 = R7 - R0;
ffa00a94:	10 32       	P2 = R0;
ffa00a96:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00a98:	09 64       	R1 += 0x1;		/* (  1) */
ffa00a9a:	68 98       	R0 = B[P5++] (X);
ffa00a9c:	0a 08       	CC = R2 == R1;
ffa00a9e:	10 9a       	B[P2++] = R0;
ffa00aa0:	fc 17       	IF !CC JUMP 0xffa00a98 <_strprepend+0x24> (BP);
ffa00aa2:	20 91       	R0 = [P4];
ffa00aa4:	01 e8 00 00 	UNLINK;
ffa00aa8:	07 52       	R0 = R7 - R0;
ffa00aaa:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00aac:	10 00       	RTS;
	...

ffa00ab0 <_strcmp>:
ffa00ab0:	10 32       	P2 = R0;
ffa00ab2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00ab6:	01 32       	P0 = R1;
ffa00ab8:	51 99       	R1 = B[P2] (X);
ffa00aba:	01 0c       	CC = R1 == 0x0;
ffa00abc:	1b 18       	IF CC JUMP 0xffa00af2 <_strcmp+0x42>;
ffa00abe:	00 00       	NOP;
ffa00ac0:	00 00       	NOP;
ffa00ac2:	00 00       	NOP;
ffa00ac4:	40 99       	R0 = B[P0] (X);
ffa00ac6:	00 0c       	CC = R0 == 0x0;
ffa00ac8:	15 18       	IF CC JUMP 0xffa00af2 <_strcmp+0x42>;
ffa00aca:	01 08       	CC = R1 == R0;
ffa00acc:	1c 10       	IF !CC JUMP 0xffa00b04 <_strcmp+0x54>;
ffa00ace:	4a 32       	P1 = P2;
ffa00ad0:	50 32       	P2 = P0;
ffa00ad2:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00ad4:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00ad6:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa00ada:	49 99       	R1 = B[P1] (X);
ffa00adc:	01 0c       	CC = R1 == 0x0;
ffa00ade:	0a 18       	IF CC JUMP 0xffa00af2 <_strcmp+0x42>;
ffa00ae0:	00 00       	NOP;
ffa00ae2:	00 00       	NOP;
ffa00ae4:	00 00       	NOP;
ffa00ae6:	50 99       	R0 = B[P2] (X);
ffa00ae8:	00 0c       	CC = R0 == 0x0;
ffa00aea:	04 18       	IF CC JUMP 0xffa00af2 <_strcmp+0x42>;
ffa00aec:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa00aee:	40 0c       	CC = P0 == 0x0;
ffa00af0:	05 10       	IF !CC JUMP 0xffa00afa <_strcmp+0x4a>;
ffa00af2:	01 e8 00 00 	UNLINK;
ffa00af6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00af8:	10 00       	RTS;
ffa00afa:	01 08       	CC = R1 == R0;
ffa00afc:	04 10       	IF !CC JUMP 0xffa00b04 <_strcmp+0x54>;
ffa00afe:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00b00:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00b02:	ec 2f       	JUMP.S 0xffa00ada <_strcmp+0x2a>;
ffa00b04:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b06:	01 e8 00 00 	UNLINK;
ffa00b0a:	10 00       	RTS;

ffa00b0c <_substr>:
ffa00b0c:	f4 05       	[--SP] = (R7:6, P5:4);
ffa00b0e:	20 32       	P4 = R0;
ffa00b10:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00b14:	11 32       	P2 = R1;
ffa00b16:	32 30       	R6 = R2;
ffa00b18:	61 99       	R1 = B[P4] (X);
ffa00b1a:	01 0c       	CC = R1 == 0x0;
ffa00b1c:	14 18       	IF CC JUMP 0xffa00b44 <_substr+0x38>;
ffa00b1e:	00 00       	NOP;
ffa00b20:	00 00       	NOP;
ffa00b22:	00 00       	NOP;
ffa00b24:	50 99       	R0 = B[P2] (X);
ffa00b26:	00 0c       	CC = R0 == 0x0;
ffa00b28:	0e 18       	IF CC JUMP 0xffa00b44 <_substr+0x38>;
ffa00b2a:	02 0d       	CC = R2 <= 0x0;
ffa00b2c:	0c 18       	IF CC JUMP 0xffa00b44 <_substr+0x38>;
ffa00b2e:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00b30:	01 08       	CC = R1 == R0;
ffa00b32:	0f 18       	IF CC JUMP 0xffa00b50 <_substr+0x44>;
ffa00b34:	00 00       	NOP;
ffa00b36:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00b38:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00b3a:	50 99       	R0 = B[P2] (X);
ffa00b3c:	00 0c       	CC = R0 == 0x0;
ffa00b3e:	03 18       	IF CC JUMP 0xffa00b44 <_substr+0x38>;
ffa00b40:	1e 09       	CC = R6 <= R3;
ffa00b42:	f7 17       	IF !CC JUMP 0xffa00b30 <_substr+0x24> (BP);
ffa00b44:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa00b46:	01 e8 00 00 	UNLINK;
ffa00b4a:	40 30       	R0 = P0;
ffa00b4c:	b4 05       	(R7:6, P5:4) = [SP++];
ffa00b4e:	10 00       	RTS;
ffa00b50:	52 30       	R2 = P2;
ffa00b52:	3b 30       	R7 = R3;
ffa00b54:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00b56:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00b58:	12 32       	P2 = R2;
ffa00b5a:	07 32       	P0 = R7;
ffa00b5c:	4c 32       	P1 = P4;
ffa00b5e:	6c 32       	P5 = P4;
ffa00b60:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00b62:	15 6c       	P5 += 0x2;		/* (  2) */
ffa00b64:	02 20       	JUMP.S 0xffa00b68 <_substr+0x5c>;
ffa00b66:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00b68:	4b 99       	R3 = B[P1] (X);
ffa00b6a:	50 99       	R0 = B[P2] (X);
ffa00b6c:	03 08       	CC = R3 == R0;
ffa00b6e:	0e 10       	IF !CC JUMP 0xffa00b8a <_substr+0x7e>;
ffa00b70:	03 0c       	CC = R3 == 0x0;
ffa00b72:	0c 18       	IF CC JUMP 0xffa00b8a <_substr+0x7e>;
ffa00b74:	00 00       	NOP;
ffa00b76:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00b78:	08 6c       	P0 += 0x1;		/* (  1) */
ffa00b7a:	68 98       	R0 = B[P5++] (X);
ffa00b7c:	00 0c       	CC = R0 == 0x0;
ffa00b7e:	f4 17       	IF !CC JUMP 0xffa00b66 <_substr+0x5a> (BP);
ffa00b80:	01 e8 00 00 	UNLINK;
ffa00b84:	40 30       	R0 = P0;
ffa00b86:	b4 05       	(R7:6, P5:4) = [SP++];
ffa00b88:	10 00       	RTS;
ffa00b8a:	12 32       	P2 = R2;
ffa00b8c:	1f 30       	R3 = R7;
ffa00b8e:	d6 2f       	JUMP.S 0xffa00b3a <_substr+0x2e>;

ffa00b90 <_sprintf_int>:
ffa00b90:	fb 05       	[--SP] = (R7:7, P5:3);
ffa00b92:	01 0c       	CC = R1 == 0x0;
ffa00b94:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00b98:	00 34       	I0 = R0;
ffa00b9a:	11 30       	R2 = R1;
ffa00b9c:	1a 14       	IF !CC JUMP 0xffa00bd0 <_sprintf_int+0x40> (BP);
ffa00b9e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900b98 <_printf_temp> */
ffa00ba2:	0b e1 98 0b 	P3.L = 0xb98;		/* (2968)	P3=0xff900b98 <_printf_temp> */
ffa00ba6:	5a 91       	P2 = [P3];
ffa00ba8:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00baa:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa00bac:	10 9b       	B[P2] = R0;
ffa00bae:	88 32       	P1 = I0;
ffa00bb0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00bb2:	0b 52       	R0 = R3 - R1;
ffa00bb4:	00 32       	P0 = R0;
ffa00bb6:	5a 91       	P2 = [P3];
ffa00bb8:	09 64       	R1 += 0x1;		/* (  1) */
ffa00bba:	99 08       	CC = R1 < R3;
ffa00bbc:	82 5a       	P2 = P2 + P0;
ffa00bbe:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa00bc2:	08 9a       	B[P1++] = R0;
ffa00bc4:	f7 1f       	IF CC JUMP 0xffa00bb2 <_sprintf_int+0x22> (BP);
ffa00bc6:	01 e8 00 00 	UNLINK;
ffa00bca:	03 30       	R0 = R3;
ffa00bcc:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00bce:	10 00       	RTS;
ffa00bd0:	01 0d       	CC = R1 <= 0x0;
ffa00bd2:	2d 18       	IF CC JUMP 0xffa00c2c <_sprintf_int+0x9c>;
ffa00bd4:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900b98 <_printf_temp> */
ffa00bd8:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa00bdc:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00bde:	0b e1 98 0b 	P3.L = 0xb98;		/* (2968)	P3=0xff900b98 <_printf_temp> */
ffa00be2:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa00be6:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa00be8:	b2 e0 20 50 	LSETUP(0xffa00bec <_sprintf_int+0x5c>, 0xffa00c28 <_sprintf_int+0x98>) LC1 = P5;
ffa00bec:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa00bf0:	59 91 00 00 
ffa00bf4:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00bf8:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa00bfc:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa00c00:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa00c04:	0b c4 00 00 	R0 = (A0 += A1);
ffa00c08:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa00c0c:	10 4d       	R0 >>>= 0x2;
ffa00c0e:	08 52       	R0 = R0 - R1;
ffa00c10:	00 32       	P0 = R0;
ffa00c12:	13 32       	P2 = R3;
ffa00c14:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00c16:	40 0d       	CC = P0 <= 0x0;
ffa00c18:	51 5a       	P1 = P1 + P2;
ffa00c1a:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa00c1c:	92 5a       	P2 = P2 << 0x1;
ffa00c1e:	4a 30       	R1 = P2;
ffa00c20:	0a 52       	R0 = R2 - R1;
ffa00c22:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00c24:	08 9b       	B[P1] = R0;
ffa00c26:	39 18       	IF CC JUMP 0xffa00c98 <_sprintf_int+0x108>;
ffa00c28:	50 30       	R2 = P0;
ffa00c2a:	c2 2f       	JUMP.S 0xffa00bae <_sprintf_int+0x1e>;
ffa00c2c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00c2e:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa00c30:	f8 4f       	R0 <<= 0x1f;
ffa00c32:	90 52       	R2 = R0 - R2;
ffa00c34:	02 0d       	CC = R2 <= 0x0;
ffa00c36:	3c 18       	IF CC JUMP 0xffa00cae <_sprintf_int+0x11e>;
ffa00c38:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900b98 <_printf_temp> */
ffa00c3c:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa00c40:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa00c42:	0b e1 98 0b 	P3.L = 0xb98;		/* (2968)	P3=0xff900b98 <_printf_temp> */
ffa00c46:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa00c4a:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa00c4c:	b2 e0 1f 50 	LSETUP(0xffa00c50 <_sprintf_int+0xc0>, 0xffa00c8a <_sprintf_int+0xfa>) LC1 = P5;
ffa00c50:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa00c54:	59 91 00 00 
ffa00c58:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00c5c:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa00c60:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa00c64:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa00c68:	0b c4 00 00 	R0 = (A0 += A1);
ffa00c6c:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa00c70:	10 4d       	R0 >>>= 0x2;
ffa00c72:	08 52       	R0 = R0 - R1;
ffa00c74:	00 32       	P0 = R0;
ffa00c76:	61 5a       	P1 = P1 + P4;
ffa00c78:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00c7a:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa00c7c:	92 5a       	P2 = P2 << 0x1;
ffa00c7e:	4a 30       	R1 = P2;
ffa00c80:	0a 52       	R0 = R2 - R1;
ffa00c82:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00c84:	40 0d       	CC = P0 <= 0x0;
ffa00c86:	08 9b       	B[P1] = R0;
ffa00c88:	0f 18       	IF CC JUMP 0xffa00ca6 <_sprintf_int+0x116>;
ffa00c8a:	50 30       	R2 = P0;
ffa00c8c:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa00c8e:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa00c90:	5a 91       	P2 = [P3];
ffa00c92:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa00c94:	8a 5a       	P2 = P2 + P1;
ffa00c96:	10 9b       	B[P2] = R0;
ffa00c98:	03 0d       	CC = R3 <= 0x0;
ffa00c9a:	8a 17       	IF !CC JUMP 0xffa00bae <_sprintf_int+0x1e> (BP);
ffa00c9c:	01 e8 00 00 	UNLINK;
ffa00ca0:	03 30       	R0 = R3;
ffa00ca2:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00ca4:	10 00       	RTS;
ffa00ca6:	5c 30       	R3 = P4;
ffa00ca8:	4c 32       	P1 = P4;
ffa00caa:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00cac:	f2 2f       	JUMP.S 0xffa00c90 <_sprintf_int+0x100>;
ffa00cae:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900b98 <_printf_temp> */
ffa00cb2:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa00cb4:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa00cb6:	0b e1 98 0b 	P3.L = 0xb98;		/* (2968)	P3=0xff900b98 <_printf_temp> */
ffa00cba:	eb 2f       	JUMP.S 0xffa00c90 <_sprintf_int+0x100>;

ffa00cbc <_sprintf_hex>:
ffa00cbc:	10 32       	P2 = R0;
ffa00cbe:	78 05       	[--SP] = (R7:7);
ffa00cc0:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00cc2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00cc6:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa00cc8:	10 9b       	B[P2] = R0;
ffa00cca:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00cce:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa00cd2:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa00cd4:	12 6c       	P2 += 0x2;		/* (  2) */
ffa00cd6:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa00cd8:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa00cda:	b2 e0 09 10 	LSETUP(0xffa00cde <_sprintf_hex+0x22>, 0xffa00cec <_sprintf_hex+0x30>) LC1 = P1;
ffa00cde:	01 30       	R0 = R1;
ffa00ce0:	10 40       	R0 >>>= R2;
ffa00ce2:	18 54       	R0 = R0 & R3;
ffa00ce4:	38 09       	CC = R0 <= R7;
ffa00ce6:	09 1c       	IF CC JUMP 0xffa00cf8 <_sprintf_hex+0x3c> (BP);
ffa00ce8:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00cea:	10 9a       	B[P2++] = R0;
ffa00cec:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa00cee:	01 e8 00 00 	UNLINK;
ffa00cf2:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00cf4:	38 05       	(R7:7) = [SP++];
ffa00cf6:	10 00       	RTS;
ffa00cf8:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00cfa:	f8 2f       	JUMP.S 0xffa00cea <_sprintf_hex+0x2e>;

ffa00cfc <_strprintf_int>:
ffa00cfc:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00cfe:	29 32       	P5 = R1;
ffa00d00:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00d04:	0a 30       	R1 = R2;
ffa00d06:	38 30       	R7 = R0;
ffa00d08:	ff e3 44 ff 	CALL 0xffa00b90 <_sprintf_int>;
ffa00d0c:	29 91       	R1 = [P5];
ffa00d0e:	41 50       	R1 = R1 + R0;
ffa00d10:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa00d14:	29 93 00 00 
ffa00d18:	01 e8 00 00 	UNLINK;
ffa00d1c:	07 30       	R0 = R7;
ffa00d1e:	bd 05       	(R7:7, P5:5) = [SP++];
ffa00d20:	10 00       	RTS;
	...

ffa00d24 <_strprintf_hex>:
ffa00d24:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00d26:	29 32       	P5 = R1;
ffa00d28:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00d2c:	0a 30       	R1 = R2;
ffa00d2e:	38 30       	R7 = R0;
ffa00d30:	ff e3 c6 ff 	CALL 0xffa00cbc <_sprintf_hex>;
ffa00d34:	29 91       	R1 = [P5];
ffa00d36:	41 50       	R1 = R1 + R0;
ffa00d38:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa00d3c:	29 93 00 00 
ffa00d40:	01 e8 00 00 	UNLINK;
ffa00d44:	07 30       	R0 = R7;
ffa00d46:	bd 05       	(R7:7, P5:5) = [SP++];
ffa00d48:	10 00       	RTS;
	...

ffa00d4c <_atoi>:
ffa00d4c:	08 32       	P1 = R0;
ffa00d4e:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa00d50:	f5 05       	[--SP] = (R7:6, P5:5);
ffa00d52:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00d56:	48 99       	R0 = B[P1] (X);
ffa00d58:	10 08       	CC = R0 == R2;
ffa00d5a:	25 18       	IF CC JUMP 0xffa00da4 <_atoi+0x58>;
ffa00d5c:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00d5e:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa00d60:	41 32       	P0 = P1;
ffa00d62:	08 6c       	P0 += 0x1;		/* (  1) */
ffa00d64:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa00d66:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa00d68:	12 20       	JUMP.S 0xffa00d8c <_atoi+0x40>;
ffa00d6a:	8b 08       	CC = R3 < R1;
ffa00d6c:	16 10       	IF !CC JUMP 0xffa00d98 <_atoi+0x4c>;
ffa00d6e:	10 43       	R0 = R2.B (X);
ffa00d70:	28 32       	P5 = R0;
ffa00d72:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa00d74:	40 99       	R0 = B[P0] (X);
ffa00d76:	80 66       	R0 += -0x30;		/* (-48) */
ffa00d78:	40 43       	R0 = R0.B (Z);
ffa00d7a:	aa 5a       	P2 = P2 + P5;
ffa00d7c:	10 0a       	CC = R0 <= R2 (IU);
ffa00d7e:	82 6e       	P2 += -0x30;		/* (-48) */
ffa00d80:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00d82:	03 14       	IF !CC JUMP 0xffa00d88 <_atoi+0x3c> (BP);
ffa00d84:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa00d86:	92 5a       	P2 = P2 << 0x1;
ffa00d88:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00d8a:	08 6c       	P0 += 0x1;		/* (  1) */
ffa00d8c:	4a 99       	R2 = B[P1] (X);
ffa00d8e:	02 30       	R0 = R2;
ffa00d90:	80 66       	R0 += -0x30;		/* (-48) */
ffa00d92:	40 43       	R0 = R0.B (Z);
ffa00d94:	30 0a       	CC = R0 <= R6 (IU);
ffa00d96:	ea 1f       	IF CC JUMP 0xffa00d6a <_atoi+0x1e> (BP);
ffa00d98:	42 30       	R0 = P2;
ffa00d9a:	f8 40       	R0 *= R7;
ffa00d9c:	01 e8 00 00 	UNLINK;
ffa00da0:	b5 05       	(R7:6, P5:5) = [SP++];
ffa00da2:	10 00       	RTS;
ffa00da4:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00da6:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa00da8:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa00daa:	db 2f       	JUMP.S 0xffa00d60 <_atoi+0x14>;

ffa00dac <_udelay>:
ffa00dac:	00 0d       	CC = R0 <= 0x0;
ffa00dae:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00db2:	0b 18       	IF CC JUMP 0xffa00dc8 <_udelay+0x1c>;
ffa00db4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00db6:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa00dba:	b2 e0 03 20 	LSETUP(0xffa00dbe <_udelay+0x12>, 0xffa00dc0 <_udelay+0x14>) LC1 = P2;
ffa00dbe:	00 00       	NOP;
ffa00dc0:	00 00       	NOP;
ffa00dc2:	09 64       	R1 += 0x1;		/* (  1) */
ffa00dc4:	08 08       	CC = R0 == R1;
ffa00dc6:	f8 17       	IF !CC JUMP 0xffa00db6 <_udelay+0xa> (BP);
ffa00dc8:	01 e8 00 00 	UNLINK;
ffa00dcc:	10 00       	RTS;
	...

ffa00dd0 <_spi_delay>:
ffa00dd0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa00dd4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00dd8:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa00ddc:	00 00       	NOP;
ffa00dde:	50 95       	R0 = W[P2] (X);
ffa00de0:	c0 42       	R0 = R0.L (Z);
ffa00de2:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa00de4:	fc 17       	IF !CC JUMP 0xffa00ddc <_spi_delay+0xc> (BP);
ffa00de6:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa00de8:	0a 10       	IF !CC JUMP 0xffa00dfc <_spi_delay+0x2c>;
ffa00dea:	00 00       	NOP;
ffa00dec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa00df0:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa00df4:	00 00       	NOP;
ffa00df6:	50 95       	R0 = W[P2] (X);
ffa00df8:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa00dfa:	fd 1f       	IF CC JUMP 0xffa00df4 <_spi_delay+0x24> (BP);
ffa00dfc:	01 e8 00 00 	UNLINK;
ffa00e00:	10 00       	RTS;
	...

ffa00e04 <_spi_write_register>:
ffa00e04:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa00e08:	ed 05       	[--SP] = (R7:5, P5:5);
ffa00e0a:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00e0e:	25 e1 00 02 	R5 = 0x200 (X);		/*		R5=0x200(512) */
ffa00e12:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00e16:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || W[P2] = R5 || NOP;
ffa00e1a:	15 97 00 00 
ffa00e1e:	24 00       	SSYNC;
ffa00e20:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0000b(-4194293) */
ffa00e24:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa00e26:	40 43       	R0 = R0.B (Z);
ffa00e28:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa00e2c:	28 97       	W[P5] = R0;
ffa00e2e:	ff e3 d1 ff 	CALL 0xffa00dd0 <_spi_delay>;
ffa00e32:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00e36:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa00e3a:	76 43       	R6 = R6.B (Z);
ffa00e3c:	57 95       	R7 = W[P2] (X);
ffa00e3e:	2e 97       	W[P5] = R6;
ffa00e40:	ff e3 c8 ff 	CALL 0xffa00dd0 <_spi_delay>;
ffa00e44:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa00e48:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00e4c:	15 97       	W[P2] = R5;
ffa00e4e:	24 00       	SSYNC;
ffa00e50:	7f 43       	R7 = R7.B (Z);
ffa00e52:	01 e8 00 00 	UNLINK;
ffa00e56:	07 30       	R0 = R7;
ffa00e58:	ad 05       	(R7:5, P5:5) = [SP++];
ffa00e5a:	10 00       	RTS;

ffa00e5c <_spi_read_register>:
ffa00e5c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00e60:	fc 05       	[--SP] = (R7:7, P5:4);
ffa00e62:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00e66:	27 e1 00 02 	R7 = 0x200 (X);		/*		R7=0x200(512) */
ffa00e6a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00e6e:	17 97       	W[P2] = R7;
ffa00e70:	24 00       	SSYNC;
ffa00e72:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00000(-4194304) */
ffa00e76:	40 43       	R0 = R0.B (Z);
ffa00e78:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa00e7c:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa00e80:	20 97       	W[P4] = R0;
ffa00e82:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa00e86:	ff e3 a5 ff 	CALL 0xffa00dd0 <_spi_delay>;
ffa00e8a:	68 95       	R0 = W[P5] (X);
ffa00e8c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00e8e:	20 97       	W[P4] = R0;
ffa00e90:	ff e3 a0 ff 	CALL 0xffa00dd0 <_spi_delay>;
ffa00e94:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00e98:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00e9c:	68 95       	R0 = W[P5] (X);
ffa00e9e:	17 97       	W[P2] = R7;
ffa00ea0:	24 00       	SSYNC;
ffa00ea2:	01 e8 00 00 	UNLINK;
ffa00ea6:	40 43       	R0 = R0.B (Z);
ffa00ea8:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00eaa:	10 00       	RTS;

ffa00eac <_spi_read_register_status>:
ffa00eac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00eb0:	f3 05       	[--SP] = (R7:6, P5:3);
ffa00eb2:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00eb6:	26 e1 00 02 	R6 = 0x200 (X);		/*		R6=0x200(512) */
ffa00eba:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00ebe:	19 32       	P3 = R1;
ffa00ec0:	16 97       	W[P2] = R6;
ffa00ec2:	24 00       	SSYNC;
ffa00ec4:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc0050c(-4193012) */
ffa00ec8:	40 43       	R0 = R0.B (Z);
ffa00eca:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa00ece:	20 97       	W[P4] = R0;
ffa00ed0:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa00ed4:	ff e3 7e ff 	CALL 0xffa00dd0 <_spi_delay>;
ffa00ed8:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa00edc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00ede:	6f 95       	R7 = W[P5] (X);
ffa00ee0:	20 97       	W[P4] = R0;
ffa00ee2:	ff e3 77 ff 	CALL 0xffa00dd0 <_spi_delay>;
ffa00ee6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00eea:	68 95       	R0 = W[P5] (X);
ffa00eec:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00ef0:	18 9b       	B[P3] = R0;
ffa00ef2:	16 97       	W[P2] = R6;
ffa00ef4:	24 00       	SSYNC;
ffa00ef6:	7f 43       	R7 = R7.B (Z);
ffa00ef8:	01 e8 00 00 	UNLINK;
ffa00efc:	07 30       	R0 = R7;
ffa00efe:	b3 05       	(R7:6, P5:3) = [SP++];
ffa00f00:	10 00       	RTS;
	...

ffa00f04 <_spi_write_byte>:
ffa00f04:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00f08:	78 05       	[--SP] = (R7:7);
ffa00f0a:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00f0e:	27 e1 00 02 	R7 = 0x200 (X);		/*		R7=0x200(512) */
ffa00f12:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00f16:	17 97       	W[P2] = R7;
ffa00f18:	24 00       	SSYNC;
ffa00f1a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00f1e:	40 43       	R0 = R0.B (Z);
ffa00f20:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa00f24:	10 97       	W[P2] = R0;
ffa00f26:	ff e3 55 ff 	CALL 0xffa00dd0 <_spi_delay>;
ffa00f2a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa00f2e:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa00f32:	50 95       	R0 = W[P2] (X);
ffa00f34:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa00f38:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00f3c:	17 97       	W[P2] = R7;
ffa00f3e:	24 00       	SSYNC;
ffa00f40:	01 e8 00 00 	UNLINK;
ffa00f44:	40 43       	R0 = R0.B (Z);
ffa00f46:	38 05       	(R7:7) = [SP++];
ffa00f48:	10 00       	RTS;
	...

ffa00f4c <_spi_write_packet>:
ffa00f4c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00f50:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00f52:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00f56:	38 30       	R7 = R0;
ffa00f58:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa00f5c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00f60:	10 97       	W[P2] = R0;
ffa00f62:	24 00       	SSYNC;
ffa00f64:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00f68:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa00f6c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa00f70:	10 97       	W[P2] = R0;
ffa00f72:	ff e3 2f ff 	CALL 0xffa00dd0 <_spi_delay>;
ffa00f76:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa00f7a:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa00f7e:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa00f82:	10 97       	W[P2] = R0;
ffa00f84:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa00f88:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00f8a:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa00f8e:	10 97       	W[P2] = R0;
ffa00f90:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00f92:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00f94:	10 97       	W[P2] = R0;
ffa00f96:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00f98:	17 93       	[P2] = R7;
ffa00f9a:	24 00       	SSYNC;
ffa00f9c:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa00fa0:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00fa2:	10 97       	W[P2] = R0;
ffa00fa4:	01 20       	JUMP.S 0xffa00fa6 <_spi_write_packet+0x5a>;
	...
ffa00fae:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa00fb2:	0d e1 68 0d 	P5.L = 0xd68;		/* (3432)	P5=0xffc00d68(-4190872) */
ffa00fb6:	68 95       	R0 = W[P5] (X);
ffa00fb8:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa00fba:	f6 1f       	IF CC JUMP 0xffa00fa6 <_spi_write_packet+0x5a> (BP);
ffa00fbc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa00fc0:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa00fc4:	50 95       	R0 = W[P2] (X);
ffa00fc6:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa00fc8:	ef 17       	IF !CC JUMP 0xffa00fa6 <_spi_write_packet+0x5a> (BP);
ffa00fca:	69 95       	R1 = W[P5] (X);
ffa00fcc:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa00fce:	08 54       	R0 = R0 & R1;
ffa00fd0:	00 0c       	CC = R0 == 0x0;
ffa00fd2:	ea 17       	IF !CC JUMP 0xffa00fa6 <_spi_write_packet+0x5a> (BP);
ffa00fd4:	ff e3 fe fe 	CALL 0xffa00dd0 <_spi_delay>;
ffa00fd8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa00fda:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa00fde:	28 97       	W[P5] = R0;
ffa00fe0:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa00fe4:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa00fe8:	10 97       	W[P2] = R0;
ffa00fea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa00fee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00ff0:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa00ff4:	10 97       	W[P2] = R0;
ffa00ff6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa00ffa:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa00ffe:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01002:	10 97       	W[P2] = R0;
ffa01004:	24 00       	SSYNC;
ffa01006:	01 e8 00 00 	UNLINK;
ffa0100a:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0100c:	10 00       	RTS;
	...

ffa01010 <_spi_write_packet_noDMA>:
ffa01010:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01014:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01016:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0101a:	38 30       	R7 = R0;
ffa0101c:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01020:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01024:	10 97       	W[P2] = R0;
ffa01026:	24 00       	SSYNC;
ffa01028:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00d68(-4190872) */
ffa0102c:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa01030:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa01034:	28 97       	W[P5] = R0;
ffa01036:	27 32       	P4 = R7;
ffa01038:	ff e3 cc fe 	CALL 0xffa00dd0 <_spi_delay>;
ffa0103c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0103e:	0f 64       	R7 += 0x1;		/* (  1) */
ffa01040:	60 98       	R0 = B[P4++] (X);
ffa01042:	28 97       	W[P5] = R0;
ffa01044:	ff e3 c6 fe 	CALL 0xffa00dd0 <_spi_delay>;
ffa01048:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0104a:	07 08       	CC = R7 == R0;
ffa0104c:	f9 17       	IF !CC JUMP 0xffa0103e <_spi_write_packet_noDMA+0x2e> (BP);
ffa0104e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01052:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01056:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0105a:	10 97       	W[P2] = R0;
ffa0105c:	24 00       	SSYNC;
ffa0105e:	01 e8 00 00 	UNLINK;
ffa01062:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01064:	10 00       	RTS;
	...

ffa01068 <_spi_read_packet>:
ffa01068:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0106a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0106e:	20 32       	P4 = R0;
ffa01070:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01074:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01076:	ff e3 c7 fe 	CALL 0xffa00e04 <_spi_write_register>;
ffa0107a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0107e:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01082:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01086:	10 97       	W[P2] = R0;
ffa01088:	24 00       	SSYNC;
ffa0108a:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa0108e:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa01092:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa01096:	28 97       	W[P5] = R0;
ffa01098:	5d 32       	P3 = P5;
ffa0109a:	ff e3 9b fe 	CALL 0xffa00dd0 <_spi_delay>;
ffa0109e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa010a0:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa010a2:	65 6c       	P5 += 0xc;		/* ( 12) */
ffa010a4:	1e 97       	W[P3] = R6;
ffa010a6:	ff e3 95 fe 	CALL 0xffa00dd0 <_spi_delay>;
ffa010aa:	0f 64       	R7 += 0x1;		/* (  1) */
ffa010ac:	68 95       	R0 = W[P5] (X);
ffa010ae:	20 9a       	B[P4++] = R0;
ffa010b0:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa010b2:	78 43       	R0 = R7.B (Z);
ffa010b4:	08 08       	CC = R0 == R1;
ffa010b6:	f7 17       	IF !CC JUMP 0xffa010a4 <_spi_read_packet+0x3c> (BP);
ffa010b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa010bc:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa010c0:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa010c4:	10 97       	W[P2] = R0;
ffa010c6:	24 00       	SSYNC;
ffa010c8:	01 e8 00 00 	UNLINK;
ffa010cc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa010ce:	b3 05       	(R7:6, P5:3) = [SP++];
ffa010d0:	10 00       	RTS;
	...

ffa010d4 <_spi_read_packet_nocheck>:
ffa010d4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa010d8:	78 05       	[--SP] = (R7:7);
ffa010da:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa010de:	38 30       	R7 = R0;
ffa010e0:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa010e4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa010e8:	10 97       	W[P2] = R0;
ffa010ea:	24 00       	SSYNC;
ffa010ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa010f0:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa010f4:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa010f8:	10 97       	W[P2] = R0;
ffa010fa:	ff e3 6b fe 	CALL 0xffa00dd0 <_spi_delay>;
ffa010fe:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00008(-4194296) */
ffa01102:	09 e1 00 05 	P1.L = 0x500;		/* (1280)	P1=0xffc00500(-4193024) */
ffa01106:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01108:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0110c:	08 97       	W[P1] = R0;
ffa0110e:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa01112:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01114:	10 97       	W[P2] = R0;
ffa01116:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01118:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0111a:	10 97       	W[P2] = R0;
ffa0111c:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0111e:	17 93       	[P2] = R7;
ffa01120:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa01124:	22 6c       	P2 += 0x4;		/* (  4) */
ffa01126:	10 97       	W[P2] = R0;
ffa01128:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa0112c:	08 97       	W[P1] = R0;
	...
ffa01136:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00500(-4193024) */
ffa0113a:	09 e1 68 0d 	P1.L = 0xd68;		/* (3432)	P1=0xffc00d68(-4190872) */
ffa0113e:	48 95       	R0 = W[P1] (X);
ffa01140:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01142:	f6 1f       	IF CC JUMP 0xffa0112e <_spi_read_packet_nocheck+0x5a> (BP);
ffa01144:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa01148:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0114a:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0114e:	10 97       	W[P2] = R0;
ffa01150:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01152:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa01156:	08 97       	W[P1] = R0;
ffa01158:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0115c:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa01160:	10 97       	W[P2] = R0;
ffa01162:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa01166:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0116a:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0116e:	10 97       	W[P2] = R0;
ffa01170:	24 00       	SSYNC;
ffa01172:	01 e8 00 00 	UNLINK;
ffa01176:	38 05       	(R7:7) = [SP++];
ffa01178:	10 00       	RTS;
	...

ffa0117c <_radio_set_rx>:
ffa0117c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01180:	78 05       	[--SP] = (R7:7);
ffa01182:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01186:	27 e1 00 04 	R7 = 0x400 (X);		/*		R7=0x400(1024) */
ffa0118a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0118e:	17 97       	W[P2] = R7;
ffa01190:	24 00       	SSYNC;
ffa01192:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa01196:	ff e3 b7 fe 	CALL 0xffa00f04 <_spi_write_byte>;
ffa0119a:	99 60       	R1 = 0x13 (X);		/*		R1=0x13( 19) */
ffa0119c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0119e:	ff e3 33 fe 	CALL 0xffa00e04 <_spi_write_register>;
ffa011a2:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa011a6:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa011a8:	ff e3 2e fe 	CALL 0xffa00e04 <_spi_write_register>;
ffa011ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa011b0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa011b2:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa011b6:	10 97       	W[P2] = R0;
ffa011b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa011bc:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa011c0:	17 97       	W[P2] = R7;
ffa011c2:	24 00       	SSYNC;
ffa011c4:	01 e8 00 00 	UNLINK;
ffa011c8:	38 05       	(R7:7) = [SP++];
ffa011ca:	10 00       	RTS;

ffa011cc <_radio_set_tx>:
ffa011cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa011d0:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa011d4:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa011d8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa011dc:	10 97       	W[P2] = R0;
ffa011de:	24 00       	SSYNC;
ffa011e0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa011e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa011e4:	ff e3 10 fe 	CALL 0xffa00e04 <_spi_write_register>;
ffa011e8:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa011ec:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa011ee:	ff e3 0b fe 	CALL 0xffa00e04 <_spi_write_register>;
ffa011f2:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa011f6:	ff e3 87 fe 	CALL 0xffa00f04 <_spi_write_byte>;
ffa011fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa011fc:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa011fe:	ff e3 03 fe 	CALL 0xffa00e04 <_spi_write_register>;
ffa01202:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01206:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01208:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0120c:	10 97       	W[P2] = R0;
ffa0120e:	01 e8 00 00 	UNLINK;
ffa01212:	10 00       	RTS;

ffa01214 <_radio_wait_irq>:
ffa01214:	78 05       	[--SP] = (R7:7);
ffa01216:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0121a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0121e:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa01222:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (X) || NOP;
ffa01226:	50 95 00 00 
ffa0122a:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa0122c:	25 18       	IF CC JUMP 0xffa01276 <_radio_wait_irq+0x62>;
ffa0122e:	01 0d       	CC = R1 <= 0x0;
ffa01230:	25 18       	IF CC JUMP 0xffa0127a <_radio_wait_irq+0x66>;
ffa01232:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01234:	04 20       	JUMP.S 0xffa0123c <_radio_wait_irq+0x28>;
ffa01236:	39 08       	CC = R1 == R7;
ffa01238:	10 18       	IF CC JUMP 0xffa01258 <_radio_wait_irq+0x44>;
	...
ffa01242:	00 00       	NOP;
ffa01244:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa01248:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa0124c:	50 95       	R0 = W[P2] (X);
ffa0124e:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa01250:	0f 64       	R7 += 0x1;		/* (  1) */
ffa01252:	f2 17       	IF !CC JUMP 0xffa01236 <_radio_wait_irq+0x22> (BP);
ffa01254:	39 09       	CC = R1 <= R7;
ffa01256:	06 10       	IF !CC JUMP 0xffa01262 <_radio_wait_irq+0x4e>;
ffa01258:	01 e8 00 00 	UNLINK;
ffa0125c:	07 30       	R0 = R7;
ffa0125e:	38 05       	(R7:7) = [SP++];
ffa01260:	10 00       	RTS;
ffa01262:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01264:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01268:	ff e3 ce fd 	CALL 0xffa00e04 <_spi_write_register>;
ffa0126c:	01 e8 00 00 	UNLINK;
ffa01270:	07 30       	R0 = R7;
ffa01272:	38 05       	(R7:7) = [SP++];
ffa01274:	10 00       	RTS;
ffa01276:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01278:	ee 2f       	JUMP.S 0xffa01254 <_radio_wait_irq+0x40>;
ffa0127a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0127c:	ee 2f       	JUMP.S 0xffa01258 <_radio_wait_irq+0x44>;
	...

ffa01280 <_spi_write_register_ver>:
ffa01280:	68 05       	[--SP] = (R7:5);
ffa01282:	47 43       	R7 = R0.B (Z);
ffa01284:	4e 43       	R6 = R1.B (Z);
ffa01286:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0128a:	0e 30       	R1 = R6;
ffa0128c:	07 30       	R0 = R7;
ffa0128e:	ff e3 bb fd 	CALL 0xffa00e04 <_spi_write_register>;
ffa01292:	07 30       	R0 = R7;
ffa01294:	ff e3 e4 fd 	CALL 0xffa00e5c <_spi_read_register>;
ffa01298:	45 43       	R5 = R0.B (Z);
ffa0129a:	2e 08       	CC = R6 == R5;
ffa0129c:	29 18       	IF CC JUMP 0xffa012ee <_spi_write_register_ver+0x6e>;
ffa0129e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900007(-7340025) */
ffa012a2:	0f 30       	R1 = R7;
ffa012a4:	00 e1 64 00 	R0.L = 0x64;		/* (100)	R0=0xff900064(-7339932) */
ffa012a8:	ff e3 ae fa 	CALL 0xffa00804 <_printf_int>;
ffa012ac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900064(-7339932) */
ffa012b0:	00 e1 d8 04 	R0.L = 0x4d8;		/* (1240)	R0=0xff9004d8(-7338792) */
ffa012b4:	ff e3 8c f9 	CALL 0xffa005cc <_uart_str>;
ffa012b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004d8(-7338792) */
ffa012bc:	0e 30       	R1 = R6;
ffa012be:	00 e1 78 00 	R0.L = 0x78;		/* (120)	R0=0xff900078(-7339912) */
ffa012c2:	ff e3 ef f9 	CALL 0xffa006a0 <_printf_hex_byte>;
ffa012c6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900078(-7339912) */
ffa012ca:	00 e1 d8 04 	R0.L = 0x4d8;		/* (1240)	R0=0xff9004d8(-7338792) */
ffa012ce:	ff e3 7f f9 	CALL 0xffa005cc <_uart_str>;
ffa012d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004d8(-7338792) */
ffa012d6:	00 e1 84 00 	R0.L = 0x84;		/* (132)	R0=0xff900084(-7339900) */
ffa012da:	0d 30       	R1 = R5;
ffa012dc:	ff e3 e2 f9 	CALL 0xffa006a0 <_printf_hex_byte>;
ffa012e0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900084(-7339900) */
ffa012e4:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa012e8:	35 30       	R6 = R5;
ffa012ea:	ff e3 71 f9 	CALL 0xffa005cc <_uart_str>;
ffa012ee:	01 e8 00 00 	UNLINK;
ffa012f2:	06 30       	R0 = R6;
ffa012f4:	28 05       	(R7:5) = [SP++];
ffa012f6:	10 00       	RTS;

ffa012f8 <_radio_init>:
ffa012f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa012fc:	78 05       	[--SP] = (R7:7);
ffa012fe:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa01300:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa01304:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01308:	11 97       	W[P2] = R1;
ffa0130a:	21 e1 2d 50 	R1 = 0x502d (X);		/*		R1=0x502d(20525) */
ffa0130e:	62 6f       	P2 += -0x14;		/* (-20) */
ffa01310:	11 97       	W[P2] = R1;
ffa01312:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01314:	22 6c       	P2 += 0x4;		/* (  4) */
ffa01316:	11 97       	W[P2] = R1;
ffa01318:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa0131c:	21 e1 00 02 	R1 = 0x200 (X);		/*		R1=0x200(512) */
ffa01320:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01324:	11 97       	W[P2] = R1;
ffa01326:	c2 6d       	P2 += 0x38;		/* ( 56) */
ffa01328:	51 95       	R1 = W[P2] (X);
ffa0132a:	59 4a       	BITSET (R1, 0xb);		/* bit 11 */
ffa0132c:	11 97       	W[P2] = R1;
ffa0132e:	82 6f       	P2 += -0x10;		/* (-16) */
ffa01330:	51 95       	R1 = W[P2] (X);
ffa01332:	59 4c       	BITCLR (R1, 0xb);		/* bit 11 */
ffa01334:	11 97       	W[P2] = R1;
ffa01336:	52 95       	R2 = W[P2] (X);
ffa01338:	21 e1 00 06 	R1 = 0x600 (X);		/*		R1=0x600(1536) */
ffa0133c:	51 56       	R1 = R1 | R2;
ffa0133e:	11 97       	W[P2] = R1;
ffa01340:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa01344:	41 43       	R1 = R0.B (Z);
ffa01346:	11 0a       	CC = R1 <= R2 (IU);
ffa01348:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa0134c:	01 06       	IF !CC R0 = R1;
ffa0134e:	47 43       	R7 = R0.B (Z);
ffa01350:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a34(-7337420) */
ffa01354:	0f 30       	R1 = R7;
ffa01356:	00 e1 90 00 	R0.L = 0x90;		/* (144)	R0=0xff900090(-7339888) */
ffa0135a:	ff e3 55 fa 	CALL 0xffa00804 <_printf_int>;
ffa0135e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900090(-7339888) */
ffa01362:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa01366:	ff e3 33 f9 	CALL 0xffa005cc <_uart_str>;
ffa0136a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0136c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0136e:	ff e3 4b fd 	CALL 0xffa00e04 <_spi_write_register>;
ffa01372:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01374:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01376:	ff e3 85 ff 	CALL 0xffa01280 <_spi_write_register_ver>;
ffa0137a:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0137c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0137e:	ff e3 81 ff 	CALL 0xffa01280 <_spi_write_register_ver>;
ffa01382:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01384:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01386:	ff e3 7d ff 	CALL 0xffa01280 <_spi_write_register_ver>;
ffa0138a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0138c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0138e:	ff e3 79 ff 	CALL 0xffa01280 <_spi_write_register_ver>;
ffa01392:	0f 30       	R1 = R7;
ffa01394:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa01396:	ff e3 75 ff 	CALL 0xffa01280 <_spi_write_register_ver>;
ffa0139a:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa0139c:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0139e:	ff e3 71 ff 	CALL 0xffa01280 <_spi_write_register_ver>;
ffa013a2:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa013a6:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa013a8:	ff e3 6c ff 	CALL 0xffa01280 <_spi_write_register_ver>;
ffa013ac:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa013ae:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa013b0:	ff e3 68 ff 	CALL 0xffa01280 <_spi_write_register_ver>;
ffa013b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa013b8:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa013bc:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa013be:	10 97       	W[P2] = R0;
ffa013c0:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa013c4:	ff e3 a0 fd 	CALL 0xffa00f04 <_spi_write_byte>;
ffa013c8:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa013cc:	ff e3 9c fd 	CALL 0xffa00f04 <_spi_write_byte>;
ffa013d0:	01 e8 00 00 	UNLINK;
ffa013d4:	40 43       	R0 = R0.B (Z);
ffa013d6:	38 05       	(R7:7) = [SP++];
ffa013d8:	10 00       	RTS;
	...

ffa013dc <_bfin_EMAC_send_check>:
ffa013dc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa013e0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa013e4:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa013e8:	50 95       	R0 = W[P2] (X);
ffa013ea:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa013ec:	00 02       	R0 = CC;
ffa013ee:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa013f0:	01 e8 00 00 	UNLINK;
ffa013f4:	10 00       	RTS;
	...

ffa013f8 <_FormatIPAddress>:
ffa013f8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa013fc:	18 30       	R3 = R0;
ffa013fe:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa01402:	40 4f       	R0 <<= 0x8;
ffa01404:	52 43       	R2 = R2.B (Z);
ffa01406:	10 56       	R0 = R0 | R2;
ffa01408:	40 4f       	R0 <<= 0x8;
ffa0140a:	49 43       	R1 = R1.B (Z);
ffa0140c:	08 56       	R0 = R0 | R1;
ffa0140e:	40 4f       	R0 <<= 0x8;
ffa01410:	5b 43       	R3 = R3.B (Z);
ffa01412:	18 56       	R0 = R0 | R3;
ffa01414:	01 e8 00 00 	UNLINK;
ffa01418:	10 00       	RTS;
	...

ffa0141c <_bfin_EMAC_halt>:
ffa0141c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01420:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01422:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01426:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0142a:	10 93       	[P2] = R0;
ffa0142c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01430:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa01434:	10 97       	W[P2] = R0;
ffa01436:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa0143a:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa0143e:	10 97       	W[P2] = R0;
ffa01440:	01 e8 00 00 	UNLINK;
ffa01444:	10 00       	RTS;
	...

ffa01448 <_PollMdcDone>:
ffa01448:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0144c:	02 20       	JUMP.S 0xffa01450 <_PollMdcDone+0x8>;
ffa0144e:	00 00       	NOP;
ffa01450:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01454:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01458:	10 91       	R0 = [P2];
ffa0145a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0145c:	f9 17       	IF !CC JUMP 0xffa0144e <_PollMdcDone+0x6> (BP);
ffa0145e:	01 e8 00 00 	UNLINK;
ffa01462:	10 00       	RTS;

ffa01464 <_WrPHYReg>:
ffa01464:	68 05       	[--SP] = (R7:5);
ffa01466:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0146a:	28 30       	R5 = R0;
ffa0146c:	31 30       	R6 = R1;
ffa0146e:	3a 30       	R7 = R2;
ffa01470:	ff e3 ec ff 	CALL 0xffa01448 <_PollMdcDone>;
ffa01474:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01476:	b0 55       	R6 = R0 & R6;
ffa01478:	28 54       	R0 = R0 & R5;
ffa0147a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0147e:	58 4f       	R0 <<= 0xb;
ffa01480:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa01482:	ff 42       	R7 = R7.L (Z);
ffa01484:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01488:	36 4f       	R6 <<= 0x6;
ffa0148a:	08 56       	R0 = R0 | R1;
ffa0148c:	17 93       	[P2] = R7;
ffa0148e:	86 57       	R6 = R6 | R0;
ffa01490:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa01492:	16 93       	[P2] = R6;
ffa01494:	01 e8 00 00 	UNLINK;
ffa01498:	28 05       	(R7:5) = [SP++];
ffa0149a:	10 00       	RTS;

ffa0149c <_RdPHYReg>:
ffa0149c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0149e:	29 32       	P5 = R1;
ffa014a0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa014a4:	38 30       	R7 = R0;
ffa014a6:	ff e3 d1 ff 	CALL 0xffa01448 <_PollMdcDone>;
ffa014aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa014ae:	45 30       	R0 = P5;
ffa014b0:	c0 42       	R0 = R0.L (Z);
ffa014b2:	28 32       	P5 = R0;
ffa014b4:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa014b6:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa014ba:	55 30       	R2 = P5;
ffa014bc:	42 54       	R1 = R2 & R0;
ffa014be:	38 54       	R0 = R0 & R7;
ffa014c0:	58 4f       	R0 <<= 0xb;
ffa014c2:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa014c4:	31 4f       	R1 <<= 0x6;
ffa014c6:	41 56       	R1 = R1 | R0;
ffa014c8:	11 93       	[P2] = R1;
ffa014ca:	ff e3 bf ff 	CALL 0xffa01448 <_PollMdcDone>;
ffa014ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa014d2:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa014d6:	10 91       	R0 = [P2];
ffa014d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa014dc:	0a e1 a0 0b 	P2.L = 0xba0;		/* (2976)	P2=0xff900ba0 <_PHYregs> */
ffa014e0:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa014e2:	10 97       	W[P2] = R0;
ffa014e4:	01 e8 00 00 	UNLINK;
ffa014e8:	c0 42       	R0 = R0.L (Z);
ffa014ea:	bd 05       	(R7:7, P5:5) = [SP++];
ffa014ec:	10 00       	RTS;
	...

ffa014f0 <_SoftResetPHY>:
ffa014f0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa014f2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa014f4:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa014f8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa014fc:	ff e3 b4 ff 	CALL 0xffa01464 <_WrPHYReg>;
ffa01500:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01502:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01504:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01506:	ff e3 af ff 	CALL 0xffa01464 <_WrPHYReg>;
ffa0150a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0150c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0150e:	ff e3 c7 ff 	CALL 0xffa0149c <_RdPHYReg>;
ffa01512:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa01514:	fb 1f       	IF CC JUMP 0xffa0150a <_SoftResetPHY+0x1a> (BP);
ffa01516:	01 e8 00 00 	UNLINK;
ffa0151a:	10 00       	RTS;

ffa0151c <_NetCksum>:
ffa0151c:	01 0d       	CC = R1 <= 0x0;
ffa0151e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01522:	10 18       	IF CC JUMP 0xffa01542 <_NetCksum+0x26>;
ffa01524:	10 32       	P2 = R0;
ffa01526:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01528:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0152a:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0152c:	10 94       	R0 = W[P2++] (Z);
ffa0152e:	0a 08       	CC = R2 == R1;
ffa01530:	c3 50       	R3 = R3 + R0;
ffa01532:	fc 17       	IF !CC JUMP 0xffa0152a <_NetCksum+0xe> (BP);
ffa01534:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa01538:	03 50       	R0 = R3 + R0;
ffa0153a:	c0 42       	R0 = R0.L (Z);
ffa0153c:	01 e8 00 00 	UNLINK;
ffa01540:	10 00       	RTS;
ffa01542:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01544:	01 e8 00 00 	UNLINK;
ffa01548:	10 00       	RTS;
	...

ffa0154c <_htons>:
ffa0154c:	08 30       	R1 = R0;
ffa0154e:	c0 42       	R0 = R0.L (Z);
ffa01550:	40 4e       	R0 >>= 0x8;
ffa01552:	41 4f       	R1 <<= 0x8;
ffa01554:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01558:	08 56       	R0 = R0 | R1;
ffa0155a:	c0 42       	R0 = R0.L (Z);
ffa0155c:	01 e8 00 00 	UNLINK;
ffa01560:	10 00       	RTS;
	...

ffa01564 <_htonl>:
ffa01564:	10 30       	R2 = R0;
ffa01566:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa0156a:	40 43       	R0 = R0.B (Z);
ffa0156c:	49 43       	R1 = R1.B (Z);
ffa0156e:	40 4f       	R0 <<= 0x8;
ffa01570:	08 56       	R0 = R0 | R1;
ffa01572:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa01576:	40 4f       	R0 <<= 0x8;
ffa01578:	49 43       	R1 = R1.B (Z);
ffa0157a:	08 56       	R0 = R0 | R1;
ffa0157c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01580:	40 4f       	R0 <<= 0x8;
ffa01582:	c2 4e       	R2 >>= 0x18;
ffa01584:	10 56       	R0 = R0 | R2;
ffa01586:	01 e8 00 00 	UNLINK;
ffa0158a:	10 00       	RTS;

ffa0158c <_pack4chars>:
ffa0158c:	08 32       	P1 = R0;
ffa0158e:	10 32       	P2 = R0;
ffa01590:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01594:	01 e8 00 00 	UNLINK;
ffa01598:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa0159c:	10 98       	R0 = B[P2++] (Z);
ffa0159e:	41 4f       	R1 <<= 0x8;
ffa015a0:	08 50       	R0 = R0 + R1;
ffa015a2:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa015a6:	81 4f       	R1 <<= 0x10;
ffa015a8:	08 50       	R0 = R0 + R1;
ffa015aa:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa015ae:	c1 4f       	R1 <<= 0x18;
ffa015b0:	08 50       	R0 = R0 + R1;
ffa015b2:	10 00       	RTS;

ffa015b4 <_ip_header_setup>:
ffa015b4:	f4 05       	[--SP] = (R7:6, P5:4);
ffa015b6:	28 32       	P5 = R0;
ffa015b8:	21 32       	P4 = R1;
ffa015ba:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa015be:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa015c2:	32 30       	R6 = R2;
ffa015c4:	28 9b       	B[P5] = R0;
ffa015c6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa015c8:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa015cc:	27 91       	R7 = [P4];
ffa015ce:	f8 42       	R0 = R7.L (Z);
ffa015d0:	ff e3 be ff 	CALL 0xffa0154c <_htons>;
ffa015d4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba0 <_PHYregs> */
ffa015d8:	0a e1 ea 0b 	P2.L = 0xbea;		/* (3050)	P2=0xff900bea <_NetIPID> */
ffa015dc:	68 b4       	W[P5 + 0x2] = R0;
ffa015de:	10 95       	R0 = W[P2] (Z);
ffa015e0:	08 30       	R1 = R0;
ffa015e2:	09 64       	R1 += 0x1;		/* (  1) */
ffa015e4:	67 67       	R7 += -0x14;		/* (-20) */
ffa015e6:	11 97       	W[P2] = R1;
ffa015e8:	27 93       	[P4] = R7;
ffa015ea:	ff e3 b1 ff 	CALL 0xffa0154c <_htons>;
ffa015ee:	a8 b4       	W[P5 + 0x4] = R0;
ffa015f0:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa015f4:	ff e3 ac ff 	CALL 0xffa0154c <_htons>;
ffa015f8:	e8 b4       	W[P5 + 0x6] = R0;
ffa015fa:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa015fe:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01602:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bea <_NetIPID> */
ffa01606:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa0160a:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0160e:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_NetOurIP> */
ffa01612:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01614:	68 b5       	W[P5 + 0xa] = R0;
ffa01616:	10 91       	R0 = [P2];
ffa01618:	e8 b0       	[P5 + 0xc] = R0;
ffa0161a:	2e b1       	[P5 + 0x10] = R6;
ffa0161c:	45 30       	R0 = P5;
ffa0161e:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01620:	ff e3 7e ff 	CALL 0xffa0151c <_NetCksum>;
ffa01624:	c0 43       	R0 =~ R0;
ffa01626:	68 b5       	W[P5 + 0xa] = R0;
ffa01628:	01 e8 00 00 	UNLINK;
ffa0162c:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa0162e:	45 30       	R0 = P5;
ffa01630:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01632:	10 00       	RTS;

ffa01634 <_ip_header_checksum>:
ffa01634:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01638:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa0163a:	ff e3 71 ff 	CALL 0xffa0151c <_NetCksum>;
ffa0163e:	08 02       	CC = R0;
ffa01640:	00 02       	R0 = CC;
ffa01642:	01 e8 00 00 	UNLINK;
ffa01646:	10 00       	RTS;

ffa01648 <_icmp_header_setup>:
ffa01648:	00 32       	P0 = R0;
ffa0164a:	c5 04       	[--SP] = (P5:5);
ffa0164c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0164e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01652:	29 32       	P5 = R1;
ffa01654:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa01658:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0165a:	40 b4       	W[P0 + 0x2] = R0;
ffa0165c:	38 ab       	R0 = W[FP + 0x18] (X);
ffa0165e:	80 b4       	W[P0 + 0x4] = R0;
ffa01660:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa01662:	02 9b       	B[P0] = R2;
ffa01664:	c0 b4       	W[P0 + 0x6] = R0;
ffa01666:	48 32       	P1 = P0;
ffa01668:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0166a:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa0166c:	b2 e0 03 20 	LSETUP(0xffa01670 <_icmp_header_setup+0x28>, 0xffa01672 <_icmp_header_setup+0x2a>) LC1 = P2;
ffa01670:	08 94       	R0 = W[P1++] (Z);
ffa01672:	41 50       	R1 = R1 + R0;
ffa01674:	c8 42       	R0 = R1.L (Z);
ffa01676:	81 4e       	R1 >>= 0x10;
ffa01678:	08 50       	R0 = R0 + R1;
ffa0167a:	c0 43       	R0 =~ R0;
ffa0167c:	40 b4       	W[P0 + 0x2] = R0;
ffa0167e:	28 91       	R0 = [P5];
ffa01680:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa01682:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01684:	01 e8 00 00 	UNLINK;
ffa01688:	28 93       	[P5] = R0;
ffa0168a:	40 30       	R0 = P0;
ffa0168c:	85 04       	(P5:5) = [SP++];
ffa0168e:	10 00       	RTS;

ffa01690 <_udp_header_setup>:
ffa01690:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01692:	28 32       	P5 = R0;
ffa01694:	21 32       	P4 = R1;
ffa01696:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0169a:	d0 42       	R0 = R2.L (Z);
ffa0169c:	ff e3 58 ff 	CALL 0xffa0154c <_htons>;
ffa016a0:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa016a4:	28 97       	W[P5] = R0;
ffa016a6:	07 30       	R0 = R7;
ffa016a8:	ff e3 52 ff 	CALL 0xffa0154c <_htons>;
ffa016ac:	27 91       	R7 = [P4];
ffa016ae:	68 b4       	W[P5 + 0x2] = R0;
ffa016b0:	f8 42       	R0 = R7.L (Z);
ffa016b2:	ff e3 4d ff 	CALL 0xffa0154c <_htons>;
ffa016b6:	a8 b4       	W[P5 + 0x4] = R0;
ffa016b8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa016ba:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa016bc:	e8 b4       	W[P5 + 0x6] = R0;
ffa016be:	01 e8 00 00 	UNLINK;
ffa016c2:	45 6c       	P5 += 0x8;		/* (  8) */
ffa016c4:	45 30       	R0 = P5;
ffa016c6:	27 93       	[P4] = R7;
ffa016c8:	bc 05       	(R7:7, P5:4) = [SP++];
ffa016ca:	10 00       	RTS;

ffa016cc <_tcp_header_setup>:
ffa016cc:	fc 05       	[--SP] = (R7:7, P5:4);
ffa016ce:	28 32       	P5 = R0;
ffa016d0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa016d4:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa016d8:	21 32       	P4 = R1;
ffa016da:	3a 30       	R7 = R2;
ffa016dc:	ff e3 38 ff 	CALL 0xffa0154c <_htons>;
ffa016e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa016e4:	0a e1 0c 0d 	P2.L = 0xd0c;		/* (3340)	P2=0xff900d0c <_TcpClientPort> */
ffa016e8:	28 97       	W[P5] = R0;
ffa016ea:	50 95       	R0 = W[P2] (X);
ffa016ec:	68 b4       	W[P5 + 0x2] = R0;
ffa016ee:	38 a2       	R0 = [FP + 0x20];
ffa016f0:	ff e3 3a ff 	CALL 0xffa01564 <_htonl>;
ffa016f4:	68 b0       	[P5 + 0x4] = R0;
ffa016f6:	78 a2       	R0 = [FP + 0x24];
ffa016f8:	ff e3 36 ff 	CALL 0xffa01564 <_htonl>;
ffa016fc:	a8 b0       	[P5 + 0x8] = R0;
ffa016fe:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01702:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01706:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa0170a:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa0170e:	ff e3 1f ff 	CALL 0xffa0154c <_htons>;
ffa01712:	e8 b5       	W[P5 + 0xe] = R0;
ffa01714:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01716:	28 b6       	W[P5 + 0x10] = R0;
ffa01718:	68 b6       	W[P5 + 0x12] = R0;
ffa0171a:	20 91       	R0 = [P4];
ffa0171c:	60 67       	R0 += -0x14;		/* (-20) */
ffa0171e:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01720:	01 e8 00 00 	UNLINK;
ffa01724:	20 93       	[P4] = R0;
ffa01726:	45 30       	R0 = P5;
ffa01728:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0172a:	10 00       	RTS;

ffa0172c <_DHCP_parse>:
ffa0172c:	f5 05       	[--SP] = (R7:6, P5:5);
ffa0172e:	09 0d       	CC = R1 <= 0x1;
ffa01730:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01734:	10 32       	P2 = R0;
ffa01736:	33 18       	IF CC JUMP 0xffa0179c <_DHCP_parse+0x70>;
ffa01738:	00 00       	NOP;
ffa0173a:	31 30       	R6 = R1;
ffa0173c:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa0173e:	11 98       	R1 = B[P2++] (Z);
ffa01740:	01 0c       	CC = R1 == 0x0;
ffa01742:	2b 1c       	IF CC JUMP 0xffa01798 <_DHCP_parse+0x6c> (BP);
ffa01744:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa01748:	01 08       	CC = R1 == R0;
ffa0174a:	57 99       	R7 = B[P2] (X);
ffa0174c:	28 18       	IF CC JUMP 0xffa0179c <_DHCP_parse+0x70>;
ffa0174e:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa01750:	6a 32       	P5 = P2;
ffa01752:	01 0a       	CC = R1 <= R0 (IU);
ffa01754:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa01756:	09 14       	IF !CC JUMP 0xffa01768 <_DHCP_parse+0x3c> (BP);
ffa01758:	09 32       	P1 = R1;
ffa0175a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d0c <_TcpClientPort> */
ffa0175e:	0a e1 78 03 	P2.L = 0x378;		/* (888)	P2=0xff900378 */
ffa01762:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa01764:	52 91       	P2 = [P2];
ffa01766:	52 00       	JUMP (P2);
ffa01768:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa0176c:	00 e1 50 01 	R0.L = 0x150;		/* (336)	R0=0xff900150(-7339696) */
ffa01770:	ff e3 4a f8 	CALL 0xffa00804 <_printf_int>;
ffa01774:	7f 43       	R7 = R7.B (Z);
ffa01776:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900150(-7339696) */
ffa0177a:	00 e1 64 01 	R0.L = 0x164;		/* (356)	R0=0xff900164(-7339676) */
ffa0177e:	0f 30       	R1 = R7;
ffa01780:	ff e3 42 f8 	CALL 0xffa00804 <_printf_int>;
ffa01784:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900164(-7339676) */
ffa01788:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa0178c:	ff e3 7a f7 	CALL 0xffa00680 <_printf_str>;
ffa01790:	0f 32       	P1 = R7;
ffa01792:	be 53       	R6 = R6 - R7;
ffa01794:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01796:	8d 5a       	P2 = P5 + P1;
ffa01798:	0e 0d       	CC = R6 <= 0x1;
ffa0179a:	d1 17       	IF !CC JUMP 0xffa0173c <_DHCP_parse+0x10> (BP);
ffa0179c:	01 e8 00 00 	UNLINK;
ffa017a0:	b5 05       	(R7:6, P5:5) = [SP++];
ffa017a2:	10 00       	RTS;
ffa017a4:	45 30       	R0 = P5;
ffa017a6:	ff e3 f3 fe 	CALL 0xffa0158c <_pack4chars>;
ffa017aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900378 */
ffa017ae:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_NetSubnetMask> */
ffa017b2:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa017b6:	10 93 00 00 
ffa017ba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a34(-7337420) */
ffa017be:	00 e1 a8 00 	R0.L = 0xa8;		/* (168)	R0=0xff9000a8(-7339864) */
ffa017c2:	ff e3 c3 f8 	CALL 0xffa00948 <_printf_ip>;
ffa017c6:	7f 43       	R7 = R7.B (Z);
ffa017c8:	de 2f       	JUMP.S 0xffa01784 <_DHCP_parse+0x58>;
ffa017ca:	45 30       	R0 = P5;
ffa017cc:	ff e3 e0 fe 	CALL 0xffa0158c <_pack4chars>;
ffa017d0:	08 30       	R1 = R0;
ffa017d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a8(-7339864) */
ffa017d6:	00 e1 b8 00 	R0.L = 0xb8;		/* (184)	R0=0xff9000b8(-7339848) */
ffa017da:	ff e3 b7 f8 	CALL 0xffa00948 <_printf_ip>;
ffa017de:	7f 43       	R7 = R7.B (Z);
ffa017e0:	d2 2f       	JUMP.S 0xffa01784 <_DHCP_parse+0x58>;
ffa017e2:	45 30       	R0 = P5;
ffa017e4:	ff e3 d4 fe 	CALL 0xffa0158c <_pack4chars>;
ffa017e8:	08 30       	R1 = R0;
ffa017ea:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000b8(-7339848) */
ffa017ee:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa017f2:	ff e3 ab f8 	CALL 0xffa00948 <_printf_ip>;
ffa017f6:	7f 43       	R7 = R7.B (Z);
ffa017f8:	c6 2f       	JUMP.S 0xffa01784 <_DHCP_parse+0x58>;
ffa017fa:	45 30       	R0 = P5;
ffa017fc:	ff e3 c8 fe 	CALL 0xffa0158c <_pack4chars>;
ffa01800:	08 30       	R1 = R0;
ffa01802:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000c8(-7339832) */
ffa01806:	00 e1 d8 00 	R0.L = 0xd8;		/* (216)	R0=0xff9000d8(-7339816) */
ffa0180a:	ff e3 9f f8 	CALL 0xffa00948 <_printf_ip>;
ffa0180e:	7f 43       	R7 = R7.B (Z);
ffa01810:	ba 2f       	JUMP.S 0xffa01784 <_DHCP_parse+0x58>;
ffa01812:	45 30       	R0 = P5;
ffa01814:	ff e3 bc fe 	CALL 0xffa0158c <_pack4chars>;
ffa01818:	ff e3 a6 fe 	CALL 0xffa01564 <_htonl>;
ffa0181c:	08 30       	R1 = R0;
ffa0181e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000d8(-7339816) */
ffa01822:	00 e1 e8 00 	R0.L = 0xe8;		/* (232)	R0=0xff9000e8(-7339800) */
ffa01826:	ff e3 ef f7 	CALL 0xffa00804 <_printf_int>;
ffa0182a:	7f 43       	R7 = R7.B (Z);
ffa0182c:	ac 2f       	JUMP.S 0xffa01784 <_DHCP_parse+0x58>;
ffa0182e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000e8(-7339800) */
ffa01832:	29 99       	R1 = B[P5] (Z);
ffa01834:	00 e1 fc 00 	R0.L = 0xfc;		/* (252)	R0=0xff9000fc(-7339780) */
ffa01838:	ff e3 e6 f7 	CALL 0xffa00804 <_printf_int>;
ffa0183c:	7f 43       	R7 = R7.B (Z);
ffa0183e:	a3 2f       	JUMP.S 0xffa01784 <_DHCP_parse+0x58>;
ffa01840:	45 30       	R0 = P5;
ffa01842:	ff e3 a5 fe 	CALL 0xffa0158c <_pack4chars>;
ffa01846:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c18 <_NetSubnetMask> */
ffa0184a:	0a e1 e4 0b 	P2.L = 0xbe4;		/* (3044)	P2=0xff900be4 <_NetDHCPserv> */
ffa0184e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01852:	10 93 00 00 
ffa01856:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000fc(-7339780) */
ffa0185a:	00 e1 10 01 	R0.L = 0x110;		/* (272)	R0=0xff900110(-7339760) */
ffa0185e:	ff e3 75 f8 	CALL 0xffa00948 <_printf_ip>;
ffa01862:	7f 43       	R7 = R7.B (Z);
ffa01864:	90 2f       	JUMP.S 0xffa01784 <_DHCP_parse+0x58>;
ffa01866:	45 30       	R0 = P5;
ffa01868:	ff e3 92 fe 	CALL 0xffa0158c <_pack4chars>;
ffa0186c:	ff e3 7c fe 	CALL 0xffa01564 <_htonl>;
ffa01870:	08 30       	R1 = R0;
ffa01872:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900110(-7339760) */
ffa01876:	00 e1 24 01 	R0.L = 0x124;		/* (292)	R0=0xff900124(-7339740) */
ffa0187a:	ff e3 c5 f7 	CALL 0xffa00804 <_printf_int>;
ffa0187e:	7f 43       	R7 = R7.B (Z);
ffa01880:	82 2f       	JUMP.S 0xffa01784 <_DHCP_parse+0x58>;
ffa01882:	45 30       	R0 = P5;
ffa01884:	ff e3 84 fe 	CALL 0xffa0158c <_pack4chars>;
ffa01888:	ff e3 6e fe 	CALL 0xffa01564 <_htonl>;
ffa0188c:	08 30       	R1 = R0;
ffa0188e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900124(-7339740) */
ffa01892:	00 e1 38 01 	R0.L = 0x138;		/* (312)	R0=0xff900138(-7339720) */
ffa01896:	ff e3 b7 f7 	CALL 0xffa00804 <_printf_int>;
ffa0189a:	7f 43       	R7 = R7.B (Z);
ffa0189c:	74 2f       	JUMP.S 0xffa01784 <_DHCP_parse+0x58>;
	...

ffa018a0 <_bfin_EMAC_send_nocopy>:
ffa018a0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00be4(-4191260) */
ffa018a4:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa018a6:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa018aa:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa018ae:	10 97       	W[P2] = R0;
ffa018b0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa018b4:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa018b8:	50 95       	R0 = W[P2] (X);
ffa018ba:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa018bc:	59 10       	IF !CC JUMP 0xffa0196e <_bfin_EMAC_send_nocopy+0xce>;
ffa018be:	00 00       	NOP;
ffa018c0:	00 00       	NOP;
ffa018c2:	00 00       	NOP;
ffa018c4:	50 95       	R0 = W[P2] (X);
ffa018c6:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa018c8:	16 18       	IF CC JUMP 0xffa018f4 <_bfin_EMAC_send_nocopy+0x54>;
ffa018ca:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0d68 */
ffa018ce:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa018d2:	b2 e0 09 10 	LSETUP(0xffa018d6 <_bfin_EMAC_send_nocopy+0x36>, 0xffa018e4 <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa018d6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa018da:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa018de:	50 95       	R0 = W[P2] (X);
ffa018e0:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa018e2:	09 18       	IF CC JUMP 0xffa018f4 <_bfin_EMAC_send_nocopy+0x54>;
ffa018e4:	00 00       	NOP;
ffa018e6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa018ea:	00 e1 84 01 	R0.L = 0x184;		/* (388)	R0=0xff900184(-7339644) */
ffa018ee:	ff e3 c9 f6 	CALL 0xffa00680 <_printf_str>;
ffa018f2:	30 20       	JUMP.S 0xffa01952 <_bfin_EMAC_send_nocopy+0xb2>;
ffa018f4:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa018f8:	08 e1 e8 0b 	P0.L = 0xbe8;		/* (3048)	P0=0xff900be8 <_txIdx> */
ffa018fc:	00 95       	R0 = W[P0] (Z);
ffa018fe:	10 32       	P2 = R0;
ffa01900:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01904:	09 e1 ec 0b 	P1.L = 0xbec;		/* (3052)	P1=0xff900bec <_txbuf> */
ffa01908:	42 95       	R2 = W[P0] (X);
ffa0190a:	d1 42       	R1 = R2.L (Z);
ffa0190c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0190e:	52 91       	P2 = [P2];
ffa01910:	11 0d       	CC = R1 <= 0x2;
ffa01912:	90 a1       	R0 = [P2 + 0x18];
ffa01914:	50 b0       	[P2 + 0x4] = R0;
ffa01916:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01918:	90 b2       	[P2 + 0x28] = R0;
ffa0191a:	11 32       	P2 = R1;
ffa0191c:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa0191e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01922:	08 91       	R0 = [P1];
ffa01924:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01928:	10 93       	[P2] = R0;
ffa0192a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa0192e:	0a e1 6a 04 	P2.L = 0x46a;		/* (1130)	P2=0xff90046a <_txdmacfg> */
ffa01932:	50 95       	R0 = W[P2] (X);
ffa01934:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0046a(-4193174) */
ffa01938:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa0193c:	10 97       	W[P2] = R0;
ffa0193e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01942:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01946:	10 91       	R0 = [P2];
ffa01948:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa0194a:	10 93       	[P2] = R0;
ffa0194c:	0d 1c       	IF CC JUMP 0xffa01966 <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa0194e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01950:	00 97       	W[P0] = R0;
ffa01952:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01956:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01958:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0195c:	10 97       	W[P2] = R0;
ffa0195e:	01 e8 00 00 	UNLINK;
ffa01962:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01964:	10 00       	RTS;
ffa01966:	02 30       	R0 = R2;
ffa01968:	08 64       	R0 += 0x1;		/* (  1) */
ffa0196a:	00 97       	W[P0] = R0;
ffa0196c:	f3 2f       	JUMP.S 0xffa01952 <_bfin_EMAC_send_nocopy+0xb2>;
ffa0196e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01972:	00 e1 6c 01 	R0.L = 0x16c;		/* (364)	R0=0xff90016c(-7339668) */
ffa01976:	ff e3 85 f6 	CALL 0xffa00680 <_printf_str>;
ffa0197a:	ec 2f       	JUMP.S 0xffa01952 <_bfin_EMAC_send_nocopy+0xb2>;

ffa0197c <_DHCP_tx>:
ffa0197c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0197e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa01982:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01986:	0a e1 e8 0b 	P2.L = 0xbe8;		/* (3048)	P2=0xff900be8 <_txIdx> */
ffa0198a:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa0198e:	10 95 00 00 
ffa01992:	10 32       	P2 = R0;
ffa01994:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bec <_txbuf> */
ffa01998:	09 e1 ec 0b 	P1.L = 0xbec;		/* (3052)	P1=0xff900bec <_txbuf> */
ffa0199c:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa019a0:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa019a2:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa019a4:	52 91       	P2 = [P2];
ffa019a6:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa019aa:	f1 bb 00 00 
ffa019ae:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90050c */
ffa019b2:	0d e1 10 0c 	P5.L = 0xc10;		/* (3088)	P5=0xff900c10 <_NetOurMAC> */
ffa019b6:	94 ad       	P4 = [P2 + 0x18];
ffa019b8:	1a 32       	P3 = R2;
ffa019ba:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa019bc:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa019be:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa019c2:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa019c6:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa019ca:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa019ce:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa019d2:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa019d6:	20 97       	W[P4] = R0;
ffa019d8:	68 99       	R0 = B[P5] (X);
ffa019da:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa019de:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa019e2:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa019e6:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa019ea:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa019ee:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa019f2:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa019f6:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa019fa:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa019fe:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01a02:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa01a06:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01a0a:	ff e3 a1 fd 	CALL 0xffa0154c <_htons>;
ffa01a0e:	e0 b5       	W[P4 + 0xe] = R0;
ffa01a10:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01a14:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa01a18:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa01a1c:	04 50       	R0 = R4 + R0;
ffa01a1e:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa01a22:	c0 42       	R0 = R0.L (Z);
ffa01a24:	ff e3 94 fd 	CALL 0xffa0154c <_htons>;
ffa01a28:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be8 <_txIdx> */
ffa01a2c:	0a e1 ea 0b 	P2.L = 0xbea;		/* (3050)	P2=0xff900bea <_NetIPID> */
ffa01a30:	60 b6       	W[P4 + 0x12] = R0;
ffa01a32:	10 95       	R0 = W[P2] (Z);
ffa01a34:	08 30       	R1 = R0;
ffa01a36:	09 64       	R1 += 0x1;		/* (  1) */
ffa01a38:	11 97       	W[P2] = R1;
ffa01a3a:	ff e3 89 fd 	CALL 0xffa0154c <_htons>;
ffa01a3e:	a0 b6       	W[P4 + 0x14] = R0;
ffa01a40:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01a44:	ff e3 84 fd 	CALL 0xffa0154c <_htons>;
ffa01a48:	e0 b6       	W[P4 + 0x16] = R0;
ffa01a4a:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01a4c:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa01a50:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa01a54:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa01a58:	66 b7 00 00 
ffa01a5c:	44 30       	R0 = P4;
ffa01a5e:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01a60:	e7 b1       	[P4 + 0x1c] = R7;
ffa01a62:	23 be       	[P4 + 0x20] = P3;
ffa01a64:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01a66:	ff e3 5b fd 	CALL 0xffa0151c <_NetCksum>;
ffa01a6a:	c0 43       	R0 =~ R0;
ffa01a6c:	60 b7       	W[P4 + 0x1a] = R0;
ffa01a6e:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa01a72:	ff e3 6d fd 	CALL 0xffa0154c <_htons>;
ffa01a76:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa01a7a:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa01a7e:	ff e3 67 fd 	CALL 0xffa0154c <_htons>;
ffa01a82:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa01a86:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa01a8a:	04 50       	R0 = R4 + R0;
ffa01a8c:	c0 42       	R0 = R0.L (Z);
ffa01a8e:	ff e3 5f fd 	CALL 0xffa0154c <_htons>;
ffa01a92:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa01a96:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01a98:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa01a9c:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa01aa0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bea(-4191254) */
ffa01aa4:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01aa6:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa01aaa:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa01aae:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa01ab2:	10 91       	R0 = [P2];
ffa01ab4:	20 b3       	[P4 + 0x30] = R0;
ffa01ab6:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa01aba:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa01abe:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa01ac2:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa01ac6:	a7 b3       	[P4 + 0x38] = R7;
ffa01ac8:	e7 b3       	[P4 + 0x3c] = R7;
ffa01aca:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa01ace:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa01ad2:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa01ad6:	ff e3 47 fd 	CALL 0xffa01564 <_htonl>;
ffa01ada:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa01ade:	68 99       	R0 = B[P5] (X);
ffa01ae0:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa01ae4:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01ae8:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa01aec:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01af0:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa01af4:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01af8:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa01afc:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01b00:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa01b04:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01b08:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa01b0c:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa01b10:	54 5a       	P1 = P4 + P2;
ffa01b12:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b14:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa01b16:	b2 e0 02 20 	LSETUP(0xffa01b1a <_DHCP_tx+0x19e>, 0xffa01b1a <_DHCP_tx+0x19e>) LC1 = P2;
ffa01b1a:	08 9a       	B[P1++] = R0;
ffa01b1c:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa01b20:	54 5a       	P1 = P4 + P2;
ffa01b22:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b24:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa01b26:	b2 e0 02 20 	LSETUP(0xffa01b2a <_DHCP_tx+0x1ae>, 0xffa01b2a <_DHCP_tx+0x1ae>) LC1 = P2;
ffa01b2a:	08 92       	[P1++] = R0;
ffa01b2c:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa01b30:	54 5a       	P1 = P4 + P2;
ffa01b32:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b34:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa01b36:	b2 e0 02 20 	LSETUP(0xffa01b3a <_DHCP_tx+0x1be>, 0xffa01b3a <_DHCP_tx+0x1be>) LC1 = P2;
ffa01b3a:	08 92       	[P1++] = R0;
ffa01b3c:	44 30       	R0 = P4;
ffa01b3e:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa01b42:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa01b46:	f0 b9 00 00 
ffa01b4a:	14 30       	R2 = R4;
ffa01b4c:	ff e3 42 f7 	CALL 0xffa009d0 <_memcpy_>;
ffa01b50:	01 e8 00 00 	UNLINK;
ffa01b54:	a3 05       	(R7:4, P5:3) = [SP++];
ffa01b56:	ff e2 a5 fe 	JUMP.L 0xffa018a0 <_bfin_EMAC_send_nocopy>;
	...

ffa01b5c <_bfin_EMAC_send>:
ffa01b5c:	c4 04       	[--SP] = (P5:4);
ffa01b5e:	01 0d       	CC = R1 <= 0x0;
ffa01b60:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b64:	18 30       	R3 = R0;
ffa01b66:	11 30       	R2 = R1;
ffa01b68:	90 18       	IF CC JUMP 0xffa01c88 <_bfin_EMAC_send+0x12c>;
ffa01b6a:	00 00       	NOP;
ffa01b6c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00020(-4194272) */
ffa01b70:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01b74:	50 95       	R0 = W[P2] (X);
ffa01b76:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01b78:	74 10       	IF !CC JUMP 0xffa01c60 <_bfin_EMAC_send+0x104>;
ffa01b7a:	00 00       	NOP;
ffa01b7c:	00 00       	NOP;
ffa01b7e:	00 00       	NOP;
ffa01b80:	50 95       	R0 = W[P2] (X);
ffa01b82:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01b84:	17 18       	IF CC JUMP 0xffa01bb2 <_bfin_EMAC_send+0x56>;
ffa01b86:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0bec */
ffa01b8a:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01b8e:	b2 e0 09 10 	LSETUP(0xffa01b92 <_bfin_EMAC_send+0x36>, 0xffa01ba0 <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa01b92:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01b96:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01b9a:	50 95       	R0 = W[P2] (X);
ffa01b9c:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01b9e:	0a 18       	IF CC JUMP 0xffa01bb2 <_bfin_EMAC_send+0x56>;
ffa01ba0:	00 00       	NOP;
ffa01ba2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01ba6:	00 e1 b8 01 	R0.L = 0x1b8;		/* (440)	R0=0xff9001b8(-7339592) */
ffa01baa:	ff e3 6b f5 	CALL 0xffa00680 <_printf_str>;
ffa01bae:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01bb0:	53 20       	JUMP.S 0xffa01c56 <_bfin_EMAC_send+0xfa>;
ffa01bb2:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90050c */
ffa01bb6:	0c e1 e8 0b 	P4.L = 0xbe8;		/* (3048)	P4=0xff900be8 <_txIdx> */
ffa01bba:	20 95       	R0 = W[P4] (Z);
ffa01bbc:	10 32       	P2 = R0;
ffa01bbe:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c10 <_NetOurMAC> */
ffa01bc2:	0d e1 ec 0b 	P5.L = 0xbec;		/* (3052)	P5=0xff900bec <_txbuf> */
ffa01bc6:	0b 30       	R1 = R3;
ffa01bc8:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01bca:	52 91       	P2 = [P2];
ffa01bcc:	92 ad       	P2 = [P2 + 0x18];
ffa01bce:	12 96       	W[P2++] = R2;
ffa01bd0:	42 30       	R0 = P2;
ffa01bd2:	ff e3 ff f6 	CALL 0xffa009d0 <_memcpy_>;
ffa01bd6:	20 95       	R0 = W[P4] (Z);
ffa01bd8:	10 32       	P2 = R0;
ffa01bda:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01bdc:	51 91       	P1 = [P2];
ffa01bde:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01be2:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01be6:	51 93       	[P2] = P1;
ffa01be8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01bec:	88 a1       	R0 = [P1 + 0x18];
ffa01bee:	0a e1 6a 04 	P2.L = 0x46a;		/* (1130)	P2=0xff90046a <_txdmacfg> */
ffa01bf2:	48 b0       	[P1 + 0x4] = R0;
ffa01bf4:	50 95       	R0 = W[P2] (X);
ffa01bf6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0046a(-4193174) */
ffa01bfa:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01bfe:	10 97       	W[P2] = R0;
ffa01c00:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01c04:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01c08:	10 91       	R0 = [P2];
ffa01c0a:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01c0c:	10 93       	[P2] = R0;
ffa01c0e:	88 a2       	R0 = [P1 + 0x28];
ffa01c10:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01c12:	13 10       	IF !CC JUMP 0xffa01c38 <_bfin_EMAC_send+0xdc>;
ffa01c14:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa01c18:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa01c1c:	b2 e0 05 20 	LSETUP(0xffa01c20 <_bfin_EMAC_send+0xc4>, 0xffa01c26 <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa01c20:	88 a2       	R0 = [P1 + 0x28];
ffa01c22:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01c24:	0a 10       	IF !CC JUMP 0xffa01c38 <_bfin_EMAC_send+0xdc>;
ffa01c26:	00 00       	NOP;
ffa01c28:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001b8(-7339592) */
ffa01c2c:	00 e1 d0 01 	R0.L = 0x1d0;		/* (464)	R0=0xff9001d0(-7339568) */
ffa01c30:	ff e3 28 f5 	CALL 0xffa00680 <_printf_str>;
ffa01c34:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01c36:	10 20       	JUMP.S 0xffa01c56 <_bfin_EMAC_send+0xfa>;
ffa01c38:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa01c3c:	61 95 00 00 
ffa01c40:	8a a2       	R2 = [P1 + 0x28];
ffa01c42:	88 b2       	[P1 + 0x28] = R0;
ffa01c44:	c8 42       	R0 = R1.L (Z);
ffa01c46:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa01c4a:	10 0d       	CC = R0 <= 0x2;
ffa01c4c:	0a e1 e8 0b 	P2.L = 0xbe8;		/* (3048)	P2=0xff900be8 <_txIdx> */
ffa01c50:	14 1c       	IF CC JUMP 0xffa01c78 <_bfin_EMAC_send+0x11c> (BP);
ffa01c52:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c54:	10 97       	W[P2] = R0;
ffa01c56:	01 e8 00 00 	UNLINK;
ffa01c5a:	02 30       	R0 = R2;
ffa01c5c:	84 04       	(P5:4) = [SP++];
ffa01c5e:	10 00       	RTS;
ffa01c60:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01c64:	00 e1 6c 01 	R0.L = 0x16c;		/* (364)	R0=0xff90016c(-7339668) */
ffa01c68:	ff e3 0c f5 	CALL 0xffa00680 <_printf_str>;
ffa01c6c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01c6e:	01 e8 00 00 	UNLINK;
ffa01c72:	02 30       	R0 = R2;
ffa01c74:	84 04       	(P5:4) = [SP++];
ffa01c76:	10 00       	RTS;
ffa01c78:	01 30       	R0 = R1;
ffa01c7a:	08 64       	R0 += 0x1;		/* (  1) */
ffa01c7c:	10 97       	W[P2] = R0;
ffa01c7e:	01 e8 00 00 	UNLINK;
ffa01c82:	02 30       	R0 = R2;
ffa01c84:	84 04       	(P5:4) = [SP++];
ffa01c86:	10 00       	RTS;
ffa01c88:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90016c(-7339668) */
ffa01c8c:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa01c90:	ff e3 ba f5 	CALL 0xffa00804 <_printf_int>;
ffa01c94:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01c96:	01 e8 00 00 	UNLINK;
ffa01c9a:	02 30       	R0 = R2;
ffa01c9c:	84 04       	(P5:4) = [SP++];
ffa01c9e:	10 00       	RTS;

ffa01ca0 <_ether_testUDP>:
ffa01ca0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01ca2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be8 <_txIdx> */
ffa01ca6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01caa:	0a e1 e8 0b 	P2.L = 0xbe8;		/* (3048)	P2=0xff900be8 <_txIdx> */
ffa01cae:	11 95       	R1 = W[P2] (Z);
ffa01cb0:	11 32       	P2 = R1;
ffa01cb2:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01cb6:	09 e1 ec 0b 	P1.L = 0xbec;		/* (3052)	P1=0xff900bec <_txbuf> */
ffa01cba:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa01cbe:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01cc0:	52 91       	P2 = [P2];
ffa01cc2:	95 ad       	P5 = [P2 + 0x18];
ffa01cc4:	55 32       	P2 = P5;
ffa01cc6:	11 96       	W[P2++] = R1;
ffa01cc8:	4a 30       	R1 = P2;
ffa01cca:	00 e3 4d 08 	CALL 0xffa02d64 <_ARP_req>;
ffa01cce:	00 0c       	CC = R0 == 0x0;
ffa01cd0:	7f 18       	IF CC JUMP 0xffa01dce <_ether_testUDP+0x12e>;
ffa01cd2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be8 <_txIdx> */
ffa01cd6:	0a e1 10 0c 	P2.L = 0xc10;		/* (3088)	P2=0xff900c10 <_NetOurMAC> */
ffa01cda:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01cdc:	50 99       	R0 = B[P2] (X);
ffa01cde:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01ce2:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa01ce6:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01cea:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa01cee:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa01cf2:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa01cf6:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa01cfa:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa01cfe:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01d02:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa01d06:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa01d0a:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01d0e:	ff e3 1f fc 	CALL 0xffa0154c <_htons>;
ffa01d12:	e8 b5       	W[P5 + 0xe] = R0;
ffa01d14:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01d18:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa01d1c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d1e:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa01d22:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa01d24:	ff e3 14 fc 	CALL 0xffa0154c <_htons>;
ffa01d28:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c10 <_NetOurMAC> */
ffa01d2c:	0a e1 ea 0b 	P2.L = 0xbea;		/* (3050)	P2=0xff900bea <_NetIPID> */
ffa01d30:	68 b6       	W[P5 + 0x12] = R0;
ffa01d32:	10 95       	R0 = W[P2] (Z);
ffa01d34:	08 30       	R1 = R0;
ffa01d36:	09 64       	R1 += 0x1;		/* (  1) */
ffa01d38:	11 97       	W[P2] = R1;
ffa01d3a:	ff e3 09 fc 	CALL 0xffa0154c <_htons>;
ffa01d3e:	a8 b6       	W[P5 + 0x14] = R0;
ffa01d40:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01d44:	ff e3 04 fc 	CALL 0xffa0154c <_htons>;
ffa01d48:	e8 b6       	W[P5 + 0x16] = R0;
ffa01d4a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01d4c:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa01d50:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bea <_NetIPID> */
ffa01d54:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01d56:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa01d5a:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_NetOurIP> */
ffa01d5e:	10 91       	R0 = [P2];
ffa01d60:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c1c <_NetOurIP> */
ffa01d64:	0a e1 e0 0b 	P2.L = 0xbe0;		/* (3040)	P2=0xff900be0 <_NetDestIP> */
ffa01d68:	e8 b1       	[P5 + 0x1c] = R0;
ffa01d6a:	10 91       	R0 = [P2];
ffa01d6c:	28 b2       	[P5 + 0x20] = R0;
ffa01d6e:	45 30       	R0 = P5;
ffa01d70:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01d72:	6f b7       	W[P5 + 0x1a] = R7;
ffa01d74:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01d76:	ff e3 d3 fb 	CALL 0xffa0151c <_NetCksum>;
ffa01d7a:	c0 43       	R0 =~ R0;
ffa01d7c:	68 b7       	W[P5 + 0x1a] = R0;
ffa01d7e:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa01d82:	ff e3 e5 fb 	CALL 0xffa0154c <_htons>;
ffa01d86:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa01d8a:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa01d8e:	ff e3 df fb 	CALL 0xffa0154c <_htons>;
ffa01d92:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa01d96:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa01d98:	ff e3 da fb 	CALL 0xffa0154c <_htons>;
ffa01d9c:	55 32       	P2 = P5;
ffa01d9e:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa01da2:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa01da6:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa01da8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01daa:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa01dac:	b2 e0 03 10 	LSETUP(0xffa01db0 <_ether_testUDP+0x110>, 0xffa01db2 <_ether_testUDP+0x112>) LC1 = P1;
ffa01db0:	11 9a       	B[P2++] = R1;
ffa01db2:	09 64       	R1 += 0x1;		/* (  1) */
ffa01db4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa01db8:	00 e1 e4 01 	R0.L = 0x1e4;		/* (484)	R0=0xff9001e4(-7339548) */
ffa01dbc:	ff e3 62 f4 	CALL 0xffa00680 <_printf_str>;
ffa01dc0:	ff e3 70 fd 	CALL 0xffa018a0 <_bfin_EMAC_send_nocopy>;
ffa01dc4:	01 e8 00 00 	UNLINK;
ffa01dc8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01dca:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01dcc:	10 00       	RTS;
ffa01dce:	01 e8 00 00 	UNLINK;
ffa01dd2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01dd4:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01dd6:	10 00       	RTS;

ffa01dd8 <_eth_header_setup>:
ffa01dd8:	c4 04       	[--SP] = (P5:4);
ffa01dda:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be0 <_NetDestIP> */
ffa01dde:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01de2:	0a e1 e8 0b 	P2.L = 0xbe8;		/* (3048)	P2=0xff900be8 <_txIdx> */
ffa01de6:	00 32       	P0 = R0;
ffa01de8:	10 95       	R0 = W[P2] (Z);
ffa01dea:	10 32       	P2 = R0;
ffa01dec:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa01df0:	09 e1 ec 0b 	P1.L = 0xbec;		/* (3052)	P1=0xff900bec <_txbuf> */
ffa01df4:	00 91       	R0 = [P0];
ffa01df6:	21 32       	P4 = R1;
ffa01df8:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01dfa:	52 91       	P2 = [P2];
ffa01dfc:	08 30       	R1 = R0;
ffa01dfe:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa01e00:	80 67       	R0 += -0x10;		/* (-16) */
ffa01e02:	95 ad       	P5 = [P2 + 0x18];
ffa01e04:	00 93       	[P0] = R0;
ffa01e06:	02 30       	R0 = R2;
ffa01e08:	55 32       	P2 = P5;
ffa01e0a:	11 96       	W[P2++] = R1;
ffa01e0c:	4a 30       	R1 = P2;
ffa01e0e:	00 e3 ab 07 	CALL 0xffa02d64 <_ARP_req>;
ffa01e12:	00 0c       	CC = R0 == 0x0;
ffa01e14:	2b 18       	IF CC JUMP 0xffa01e6a <_eth_header_setup+0x92>;
ffa01e16:	00 00       	NOP;
ffa01e18:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be8 <_txIdx> */
ffa01e1c:	0a e1 10 0c 	P2.L = 0xc10;		/* (3088)	P2=0xff900c10 <_NetOurMAC> */
ffa01e20:	50 99       	R0 = B[P2] (X);
ffa01e22:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01e26:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa01e2a:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01e2e:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa01e32:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa01e36:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa01e3a:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa01e3e:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa01e42:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01e46:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa01e4a:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa01e4e:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01e52:	ff e3 7d fb 	CALL 0xffa0154c <_htons>;
ffa01e56:	e8 b5       	W[P5 + 0xe] = R0;
ffa01e58:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01e5a:	20 9b       	B[P4] = R0;
ffa01e5c:	4d 30       	R1 = P5;
ffa01e5e:	81 64       	R1 += 0x10;		/* ( 16) */
ffa01e60:	01 e8 00 00 	UNLINK;
ffa01e64:	01 30       	R0 = R1;
ffa01e66:	84 04       	(P5:4) = [SP++];
ffa01e68:	10 00       	RTS;
ffa01e6a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01e6c:	20 9b       	B[P4] = R0;
ffa01e6e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01e70:	01 e8 00 00 	UNLINK;
ffa01e74:	01 30       	R0 = R1;
ffa01e76:	84 04       	(P5:4) = [SP++];
ffa01e78:	10 00       	RTS;
	...

ffa01e7c <_icmp_packet_setup>:
ffa01e7c:	e4 05       	[--SP] = (R7:4, P5:4);
ffa01e7e:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa01e82:	29 32       	P5 = R1;
ffa01e84:	7f 30       	R7 = FP;
ffa01e86:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa01e88:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa01e8a:	f0 bb       	[FP -0x4] = R0;
ffa01e8c:	07 30       	R0 = R7;
ffa01e8e:	22 32       	P4 = R2;
ffa01e90:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa01e94:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa01e98:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa01e9c:	ff e3 9e ff 	CALL 0xffa01dd8 <_eth_header_setup>;
ffa01ea0:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa01ea4:	68 99 00 00 
ffa01ea8:	80 0c       	CC = R0 < 0x0;
ffa01eaa:	14 18       	IF CC JUMP 0xffa01ed2 <_icmp_packet_setup+0x56>;
ffa01eac:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01eae:	f0 b0       	[SP + 0xc] = R0;
ffa01eb0:	54 30       	R2 = P4;
ffa01eb2:	01 30       	R0 = R1;
ffa01eb4:	0f 30       	R1 = R7;
ffa01eb6:	ff e3 7f fb 	CALL 0xffa015b4 <_ip_header_setup>;
ffa01eba:	e9 42       	R1 = R5.L (Z);
ffa01ebc:	f1 b0       	[SP + 0xc] = R1;
ffa01ebe:	e1 42       	R1 = R4.L (Z);
ffa01ec0:	31 b1       	[SP + 0x10] = R1;
ffa01ec2:	72 43       	R2 = R6.B (Z);
ffa01ec4:	0f 30       	R1 = R7;
ffa01ec6:	ff e3 c1 fb 	CALL 0xffa01648 <_icmp_header_setup>;
ffa01eca:	01 e8 00 00 	UNLINK;
ffa01ece:	a4 05       	(R7:4, P5:4) = [SP++];
ffa01ed0:	10 00       	RTS;
ffa01ed2:	01 e8 00 00 	UNLINK;
ffa01ed6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ed8:	a4 05       	(R7:4, P5:4) = [SP++];
ffa01eda:	10 00       	RTS;

ffa01edc <_icmp_rx>:
ffa01edc:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01ede:	28 32       	P5 = R0;
ffa01ee0:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa01ee4:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01ee8:	39 30       	R7 = R1;
ffa01eea:	ff e3 31 fb 	CALL 0xffa0154c <_htons>;
ffa01eee:	c0 42       	R0 = R0.L (Z);
ffa01ef0:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa01ef2:	01 08       	CC = R1 == R0;
ffa01ef4:	06 18       	IF CC JUMP 0xffa01f00 <_icmp_rx+0x24>;
ffa01ef6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ef8:	01 e8 00 00 	UNLINK;
ffa01efc:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01efe:	10 00       	RTS;
ffa01f00:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa01f02:	07 0a       	CC = R7 <= R0 (IU);
ffa01f04:	f9 1b       	IF CC JUMP 0xffa01ef6 <_icmp_rx+0x1a>;
ffa01f06:	00 00       	NOP;
ffa01f08:	00 00       	NOP;
ffa01f0a:	00 00       	NOP;
ffa01f0c:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa01f10:	08 0c       	CC = R0 == 0x1;
ffa01f12:	f2 17       	IF !CC JUMP 0xffa01ef6 <_icmp_rx+0x1a> (BP);
ffa01f14:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c10 <_NetOurMAC> */
ffa01f18:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_NetOurIP> */
ffa01f1c:	28 a2       	R0 = [P5 + 0x20];
ffa01f1e:	11 91       	R1 = [P2];
ffa01f20:	08 08       	CC = R0 == R1;
ffa01f22:	ea 17       	IF !CC JUMP 0xffa01ef6 <_icmp_rx+0x1a> (BP);
ffa01f24:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa01f28:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa01f2c:	08 08       	CC = R0 == R1;
ffa01f2e:	3e 18       	IF CC JUMP 0xffa01faa <_icmp_rx+0xce>;
ffa01f30:	00 00       	NOP;
ffa01f32:	00 00       	NOP;
ffa01f34:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa01f36:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa01f3a:	08 08       	CC = R0 == R1;
ffa01f3c:	dd 17       	IF !CC JUMP 0xffa01ef6 <_icmp_rx+0x1a> (BP);
ffa01f3e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa01f42:	e9 a1       	R1 = [P5 + 0x1c];
ffa01f44:	00 e1 fc 01 	R0.L = 0x1fc;		/* (508)	R0=0xff9001fc(-7339524) */
ffa01f48:	ff e3 00 f5 	CALL 0xffa00948 <_printf_ip>;
ffa01f4c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c1c <_NetOurIP> */
ffa01f50:	0a e1 e0 0b 	P2.L = 0xbe0;		/* (3040)	P2=0xff900be0 <_NetDestIP> */
ffa01f54:	e8 a1       	R0 = [P5 + 0x1c];
ffa01f56:	4d 30       	R1 = P5;
ffa01f58:	10 93       	[P2] = R0;
ffa01f5a:	41 64       	R1 += 0x8;		/* (  8) */
ffa01f5c:	00 e3 06 05 	CALL 0xffa02968 <_ARP_lut_add>;
ffa01f60:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001fc(-7339524) */
ffa01f64:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa01f68:	ff e3 8c f3 	CALL 0xffa00680 <_printf_str>;
ffa01f6c:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa01f70:	ea a1 00 00 
ffa01f74:	f0 b0       	[SP + 0xc] = R0;
ffa01f76:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa01f7a:	30 b1       	[SP + 0x10] = R0;
ffa01f7c:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa01f7e:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa01f82:	4f 30       	R1 = FP;
ffa01f84:	70 b1       	[SP + 0x14] = R0;
ffa01f86:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa01f88:	07 30       	R0 = R7;
ffa01f8a:	ff e3 79 ff 	CALL 0xffa01e7c <_icmp_packet_setup>;
ffa01f8e:	08 30       	R1 = R0;
ffa01f90:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa01f94:	00 0d       	CC = R0 <= 0x0;
ffa01f96:	b0 1b       	IF CC JUMP 0xffa01ef6 <_icmp_rx+0x1a>;
ffa01f98:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa01f9a:	45 30       	R0 = P5;
ffa01f9c:	17 30       	R2 = R7;
ffa01f9e:	ff e3 19 f5 	CALL 0xffa009d0 <_memcpy_>;
ffa01fa2:	ff e3 7f fc 	CALL 0xffa018a0 <_bfin_EMAC_send_nocopy>;
ffa01fa6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01fa8:	a8 2f       	JUMP.S 0xffa01ef8 <_icmp_rx+0x1c>;
ffa01faa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be0 <_NetDestIP> */
ffa01fae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01fb0:	0a e1 74 0b 	P2.L = 0xb74;		/* (2932)	P2=0xff900b74 <_g_streamEnabled> */
ffa01fb4:	10 9b       	B[P2] = R0;
ffa01fb6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01fb8:	a0 2f       	JUMP.S 0xffa01ef8 <_icmp_rx+0x1c>;
	...

ffa01fbc <_udp_packet_setup>:
ffa01fbc:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01fbe:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa01fc2:	29 32       	P5 = R1;
ffa01fc4:	7f 30       	R7 = FP;
ffa01fc6:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900be8 <_txIdx> */
ffa01fca:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa01fcc:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa01fce:	0c e1 20 0c 	P4.L = 0xc20;		/* (3104)	P4=0xff900c20 <_NetDataDestIP> */
ffa01fd2:	f0 bb       	[FP -0x4] = R0;
ffa01fd4:	22 91       	R2 = [P4];
ffa01fd6:	07 30       	R0 = R7;
ffa01fd8:	ff e3 00 ff 	CALL 0xffa01dd8 <_eth_header_setup>;
ffa01fdc:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa01fe0:	68 99 00 00 
ffa01fe4:	80 0c       	CC = R0 < 0x0;
ffa01fe6:	14 18       	IF CC JUMP 0xffa0200e <_udp_packet_setup+0x52>;
ffa01fe8:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01fea:	f0 b0       	[SP + 0xc] = R0;
ffa01fec:	01 30       	R0 = R1;
ffa01fee:	22 91       	R2 = [P4];
ffa01ff0:	0f 30       	R1 = R7;
ffa01ff2:	ff e3 e1 fa 	CALL 0xffa015b4 <_ip_header_setup>;
ffa01ff6:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa01ffa:	f1 b0       	[SP + 0xc] = R1;
ffa01ffc:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa02000:	0f 30       	R1 = R7;
ffa02002:	ff e3 47 fb 	CALL 0xffa01690 <_udp_header_setup>;
ffa02006:	01 e8 00 00 	UNLINK;
ffa0200a:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0200c:	10 00       	RTS;
ffa0200e:	01 e8 00 00 	UNLINK;
ffa02012:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02014:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02016:	10 00       	RTS;

ffa02018 <_SetupTxBuffer>:
ffa02018:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0201a:	38 30       	R7 = R0;
ffa0201c:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02020:	c7 40       	R7 *= R0;
ffa02022:	17 32       	P2 = R7;
ffa02024:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800bec */
ffa02028:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa0202c:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02030:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa02034:	6a 5b       	P5 = P2 + P5;
ffa02036:	c7 51       	R7 = R7 + R0;
ffa02038:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0203c:	45 30       	R0 = P5;
ffa0203e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02040:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa02042:	ff e3 d7 f4 	CALL 0xffa009f0 <_memset_>;
ffa02046:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa0204a:	af b1 00 00 
ffa0204e:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa02052:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02056:	ff e3 cd f4 	CALL 0xffa009f0 <_memset_>;
ffa0205a:	45 30       	R0 = P5;
ffa0205c:	60 64       	R0 += 0xc;		/* ( 12) */
ffa0205e:	28 93       	[P5] = R0;
ffa02060:	a8 a1       	R0 = [P5 + 0x18];
ffa02062:	68 b0       	[P5 + 0x4] = R0;
ffa02064:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa02068:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0206a:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa0206c:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa0206e:	10 54       	R0 = R0 & R2;
ffa02070:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02072:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02076:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa02078:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa0207c:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0207e:	18 54       	R0 = R0 & R3;
ffa02080:	08 56       	R0 = R0 | R1;
ffa02082:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa02086:	08 56       	R0 = R0 | R1;
ffa02088:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0208c:	45 30       	R0 = P5;
ffa0208e:	40 65       	R0 += 0x28;		/* ( 40) */
ffa02090:	28 b1       	[P5 + 0x10] = R0;
ffa02092:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa02096:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02098:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0209a:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa0209e:	10 54       	R0 = R0 & R2;
ffa020a0:	08 56       	R0 = R0 | R1;
ffa020a2:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa020a6:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa020aa:	18 54       	R0 = R0 & R3;
ffa020ac:	39 64       	R1 += 0x7;		/* (  7) */
ffa020ae:	08 54       	R0 = R0 & R1;
ffa020b0:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa020b4:	ed bc       	[P5 + 0xc] = P5;
ffa020b6:	01 e8 00 00 	UNLINK;
ffa020ba:	45 30       	R0 = P5;
ffa020bc:	bd 05       	(R7:7, P5:5) = [SP++];
ffa020be:	10 00       	RTS;

ffa020c0 <_SetupRxBuffer>:
ffa020c0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa020c2:	38 30       	R7 = R0;
ffa020c4:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa020c8:	c7 40       	R7 *= R0;
ffa020ca:	17 32       	P2 = R7;
ffa020cc:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa020d0:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa020d4:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa020d8:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa020dc:	6a 5b       	P5 = P2 + P5;
ffa020de:	c7 51       	R7 = R7 + R0;
ffa020e0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa020e4:	45 30       	R0 = P5;
ffa020e6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa020e8:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa020ea:	ff e3 83 f4 	CALL 0xffa009f0 <_memset_>;
ffa020ee:	af b1       	[P5 + 0x18] = R7;
ffa020f0:	07 30       	R0 = R7;
ffa020f2:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa020f6:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa020fa:	ff e3 7b f4 	CALL 0xffa009f0 <_memset_>;
ffa020fe:	45 30       	R0 = P5;
ffa02100:	60 64       	R0 += 0xc;		/* ( 12) */
ffa02102:	28 93       	[P5] = R0;
ffa02104:	a8 a1       	R0 = [P5 + 0x18];
ffa02106:	68 b0       	[P5 + 0x4] = R0;
ffa02108:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa0210c:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0210e:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa02110:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02112:	08 54       	R0 = R0 & R1;
ffa02114:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02116:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0211a:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa0211c:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa02120:	38 54       	R0 = R0 & R7;
ffa02122:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa02124:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa02128:	18 56       	R0 = R0 | R3;
ffa0212a:	10 56       	R0 = R0 | R2;
ffa0212c:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02130:	45 30       	R0 = P5;
ffa02132:	20 65       	R0 += 0x24;		/* ( 36) */
ffa02134:	28 b1       	[P5 + 0x10] = R0;
ffa02136:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa0213a:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0213c:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0213e:	08 54       	R0 = R0 & R1;
ffa02140:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa02144:	08 56       	R0 = R0 | R1;
ffa02146:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa0214a:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa0214e:	38 54       	R0 = R0 & R7;
ffa02150:	18 56       	R0 = R0 | R3;
ffa02152:	10 56       	R0 = R0 | R2;
ffa02154:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02158:	ed bc       	[P5 + 0xc] = P5;
ffa0215a:	01 e8 00 00 	UNLINK;
ffa0215e:	45 30       	R0 = P5;
ffa02160:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02162:	10 00       	RTS;

ffa02164 <_SetupSystemRegs>:
ffa02164:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02166:	28 32       	P5 = R0;
ffa02168:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa0216c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02170:	00 e1 18 02 	R0.L = 0x218;		/* (536)	R0=0xff900218(-7339496) */
ffa02174:	ff e3 86 f2 	CALL 0xffa00680 <_printf_str>;
ffa02178:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00b74(-4191372) */
ffa0217c:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa02180:	50 95       	R0 = W[P2] (X);
ffa02182:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa02186:	08 54       	R0 = R0 & R1;
ffa02188:	10 97       	W[P2] = R0;
ffa0218a:	50 95       	R0 = W[P2] (X);
ffa0218c:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa0218e:	10 97       	W[P2] = R0;
ffa02190:	82 6f       	P2 += -0x10;		/* (-16) */
ffa02192:	51 95       	R1 = W[P2] (X);
ffa02194:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa02198:	08 56       	R0 = R0 | R1;
ffa0219a:	10 97       	W[P2] = R0;
ffa0219c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0219e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa021a0:	10 97       	W[P2] = R0;
ffa021a2:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa021a4:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa021a6:	10 97       	W[P2] = R0;
ffa021a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa021ac:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa021b0:	50 95       	R0 = W[P2] (X);
ffa021b2:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa021b4:	10 97       	W[P2] = R0;
ffa021b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa021ba:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa021be:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa021c2:	10 93       	[P2] = R0;
ffa021c4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa021c6:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa021ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa021cc:	ff e3 4c f9 	CALL 0xffa01464 <_WrPHYReg>;
ffa021d0:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa021d4:	ff e3 ec f5 	CALL 0xffa00dac <_udelay>;
ffa021d8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa021da:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa021dc:	ff e3 60 f9 	CALL 0xffa0149c <_RdPHYReg>;
ffa021e0:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa021e2:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa021e4:	0e 20       	JUMP.S 0xffa02200 <_SetupSystemRegs+0x9c>;
ffa021e6:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa021ea:	ff e3 e1 f5 	CALL 0xffa00dac <_udelay>;
ffa021ee:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa021f0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa021f2:	ff e3 55 f9 	CALL 0xffa0149c <_RdPHYReg>;
ffa021f6:	0f 64       	R7 += 0x1;		/* (  1) */
ffa021f8:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa021fc:	0f 08       	CC = R7 == R1;
ffa021fe:	35 18       	IF CC JUMP 0xffa02268 <_SetupSystemRegs+0x104>;
ffa02200:	06 54       	R0 = R6 & R0;
ffa02202:	00 0c       	CC = R0 == 0x0;
ffa02204:	f1 1f       	IF CC JUMP 0xffa021e6 <_SetupSystemRegs+0x82> (BP);
ffa02206:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa02208:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0220a:	ff e3 49 f9 	CALL 0xffa0149c <_RdPHYReg>;
ffa0220e:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa02212:	01 54       	R0 = R1 & R0;
ffa02214:	00 0c       	CC = R0 == 0x0;
ffa02216:	27 1c       	IF CC JUMP 0xffa02264 <_SetupSystemRegs+0x100> (BP);
ffa02218:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0221a:	d0 4f       	R0 <<= 0x1a;
ffa0221c:	28 93       	[P5] = R0;
ffa0221e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa02222:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02224:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa02228:	10 93       	[P2] = R0;
ffa0222a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa0222e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02230:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa02234:	10 97       	W[P2] = R0;
ffa02236:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa02238:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0223a:	11 97       	W[P2] = R1;
ffa0223c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0223e:	10 97       	W[P2] = R0;
ffa02240:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02242:	10 97       	W[P2] = R0;
ffa02244:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa02248:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa0224c:	10 97       	W[P2] = R0;
ffa0224e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02250:	11 97       	W[P2] = R1;
ffa02252:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02254:	10 97       	W[P2] = R0;
ffa02256:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02258:	10 97       	W[P2] = R0;
ffa0225a:	01 e8 00 00 	UNLINK;
ffa0225e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02260:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02262:	10 00       	RTS;
ffa02264:	28 93       	[P5] = R0;
ffa02266:	dc 2f       	JUMP.S 0xffa0221e <_SetupSystemRegs+0xba>;
ffa02268:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0226c:	00 e1 30 02 	R0.L = 0x230;		/* (560)	R0=0xff900230(-7339472) */
ffa02270:	ff e3 08 f2 	CALL 0xffa00680 <_printf_str>;
ffa02274:	01 e8 00 00 	UNLINK;
ffa02278:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0227a:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0227c:	10 00       	RTS;
	...

ffa02280 <_SetupMacAddr>:
ffa02280:	10 32       	P2 = R0;
ffa02282:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02284:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02286:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0228a:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa0228e:	10 9b       	B[P2] = R0;
ffa02290:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa02292:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa02296:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa02298:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa0229c:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa0229e:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa022a2:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa022a6:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa022aa:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa022ac:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa022b0:	10 99       	R0 = B[P2] (Z);
ffa022b2:	08 56       	R0 = R0 | R1;
ffa022b4:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa022b8:	89 4f       	R1 <<= 0x11;
ffa022ba:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00bec(-4191252) */
ffa022be:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa022c2:	08 56       	R0 = R0 | R1;
ffa022c4:	08 93       	[P1] = R0;
ffa022c6:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa022ca:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa022ce:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa022d2:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa022d4:	28 93       	[P5] = R0;
ffa022d6:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa022da:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa022de:	09 91       	R1 = [P1];
ffa022e0:	07 e1 34 0a 	R7.L = 0xa34;		/* (2612)	R7=0xff900a34(-7337420) */
ffa022e4:	00 e1 64 02 	R0.L = 0x264;		/* (612)	R0=0xff900264(-7339420) */
ffa022e8:	ff e3 32 f2 	CALL 0xffa0074c <_printf_hex>;
ffa022ec:	07 30       	R0 = R7;
ffa022ee:	ff e3 c9 f1 	CALL 0xffa00680 <_printf_str>;
ffa022f2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900264(-7339420) */
ffa022f6:	29 91       	R1 = [P5];
ffa022f8:	00 e1 70 02 	R0.L = 0x270;		/* (624)	R0=0xff900270(-7339408) */
ffa022fc:	ff e3 28 f2 	CALL 0xffa0074c <_printf_hex>;
ffa02300:	01 e8 00 00 	UNLINK;
ffa02304:	07 30       	R0 = R7;
ffa02306:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02308:	ff e2 bc f1 	JUMP.L 0xffa00680 <_printf_str>;

ffa0230c <_bfin_EMAC_init>:
ffa0230c:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0230e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900270(-7339408) */
ffa02312:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02316:	00 e1 7c 02 	R0.L = 0x27c;		/* (636)	R0=0xff90027c(-7339396) */
ffa0231a:	ff e3 b3 f1 	CALL 0xffa00680 <_printf_str>;
ffa0231e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 */
ffa02322:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02324:	0a e1 e8 0b 	P2.L = 0xbe8;		/* (3048)	P2=0xff900be8 <_txIdx> */
ffa02328:	16 97       	W[P2] = R6;
ffa0232a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be8 <_txIdx> */
ffa0232e:	0a e1 fc 0b 	P2.L = 0xbfc;		/* (3068)	P2=0xff900bfc <_rxIdx> */
ffa02332:	16 97       	W[P2] = R6;
ffa02334:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bfc <_rxIdx> */
ffa02338:	0a e1 ea 0b 	P2.L = 0xbea;		/* (3050)	P2=0xff900bea <_NetIPID> */
ffa0233c:	16 97       	W[P2] = R6;
ffa0233e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bea <_NetIPID> */
ffa02342:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02344:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_NetSubnetMask> */
ffa02348:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa0234a:	17 93       	[P2] = R7;
ffa0234c:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa02350:	f0 b0       	[SP + 0xc] = R0;
ffa02352:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02354:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02358:	ff e3 50 f8 	CALL 0xffa013f8 <_FormatIPAddress>;
ffa0235c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c18 <_NetSubnetMask> */
ffa02360:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_NetOurIP> */
ffa02364:	10 93       	[P2] = R0;
ffa02366:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02368:	f0 b0       	[SP + 0xc] = R0;
ffa0236a:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa0236e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02370:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02374:	ff e3 42 f8 	CALL 0xffa013f8 <_FormatIPAddress>;
ffa02378:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c1c <_NetOurIP> */
ffa0237c:	0a e1 e0 0b 	P2.L = 0xbe0;		/* (3040)	P2=0xff900be0 <_NetDestIP> */
ffa02380:	10 93       	[P2] = R0;
ffa02382:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa02384:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa02386:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa0238a:	f0 b0       	[SP + 0xc] = R0;
ffa0238c:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa02390:	ff e3 34 f8 	CALL 0xffa013f8 <_FormatIPAddress>;
ffa02394:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be0 <_NetDestIP> */
ffa02398:	0a e1 20 0c 	P2.L = 0xc20;		/* (3104)	P2=0xff900c20 <_NetDataDestIP> */
ffa0239c:	10 93       	[P2] = R0;
ffa0239e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c20 <_NetDataDestIP> */
ffa023a2:	0a e1 00 0d 	P2.L = 0xd00;		/* (3328)	P2=0xff900d00 <_TcpState> */
ffa023a6:	17 93       	[P2] = R7;
ffa023a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d00 <_TcpState> */
ffa023ac:	0a e1 f8 0c 	P2.L = 0xcf8;		/* (3320)	P2=0xff900cf8 <_TcpSeqClient> */
ffa023b0:	17 93       	[P2] = R7;
ffa023b2:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa023b6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf8 <_TcpSeqClient> */
ffa023ba:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa023be:	0a e1 f4 0c 	P2.L = 0xcf4;		/* (3316)	P2=0xff900cf4 <_TcpSeqHost> */
ffa023c2:	10 93       	[P2] = R0;
ffa023c4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf4 <_TcpSeqHost> */
ffa023c8:	0a e1 0c 0d 	P2.L = 0xd0c;		/* (3340)	P2=0xff900d0c <_TcpClientPort> */
ffa023cc:	16 97       	W[P2] = R6;
ffa023ce:	00 e3 7f 02 	CALL 0xffa028cc <_ARP_init>;
ffa023d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d0c(-4190964) */
ffa023d6:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa023da:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa023de:	17 93       	[P2] = R7;
ffa023e0:	00 e1 10 0c 	R0.L = 0xc10;		/* (3088)	R0=0xff900c10 <_NetOurMAC>(-7336944) */
ffa023e4:	ff e3 4e ff 	CALL 0xffa02280 <_SetupMacAddr>;
ffa023e8:	47 30       	R0 = FP;
ffa023ea:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa023ec:	ff e3 bc fe 	CALL 0xffa02164 <_SetupSystemRegs>;
ffa023f0:	80 0c       	CC = R0 < 0x0;
ffa023f2:	7a 18       	IF CC JUMP 0xffa024e6 <_bfin_EMAC_init+0x1da>;
ffa023f4:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa023f8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa023fa:	07 e1 00 0c 	R7.L = 0xc00;		/* (3072)	R7=0xff900c00 <_rxbuf>(-7336960) */
ffa023fe:	ff e3 61 fe 	CALL 0xffa020c0 <_SetupRxBuffer>;
ffa02402:	07 32       	P0 = R7;
ffa02404:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02406:	00 93       	[P0] = R0;
ffa02408:	17 32       	P2 = R7;
ffa0240a:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa0240c:	44 30       	R0 = P4;
ffa0240e:	ff e3 59 fe 	CALL 0xffa020c0 <_SetupRxBuffer>;
ffa02412:	44 0c       	CC = P4 == 0x0;
ffa02414:	08 32       	P1 = R0;
ffa02416:	28 92       	[P5++] = R0;
ffa02418:	52 18       	IF CC JUMP 0xffa024bc <_bfin_EMAC_init+0x1b0>;
ffa0241a:	07 32       	P0 = R7;
ffa0241c:	5c 0c       	CC = P4 == 0x3;
ffa0241e:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa02420:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa02424:	d0 b0       	[P2 + 0xc] = R0;
ffa02426:	54 18       	IF CC JUMP 0xffa024ce <_bfin_EMAC_init+0x1c2>;
ffa02428:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa0242a:	5c 0d       	CC = P4 <= 0x3;
ffa0242c:	ee 1f       	IF CC JUMP 0xffa02408 <_bfin_EMAC_init+0xfc> (BP);
ffa0242e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02430:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900b98 <_printf_temp> */
ffa02434:	ff e3 f2 fd 	CALL 0xffa02018 <_SetupTxBuffer>;
ffa02438:	0b e1 ec 0b 	P3.L = 0xbec;		/* (3052)	P3=0xff900bec <_txbuf> */
ffa0243c:	18 93       	[P3] = R0;
ffa0243e:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02440:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa02442:	44 30       	R0 = P4;
ffa02444:	ff e3 ea fd 	CALL 0xffa02018 <_SetupTxBuffer>;
ffa02448:	44 0c       	CC = P4 == 0x0;
ffa0244a:	08 32       	P1 = R0;
ffa0244c:	28 92       	[P5++] = R0;
ffa0244e:	35 18       	IF CC JUMP 0xffa024b8 <_bfin_EMAC_init+0x1ac>;
ffa02450:	00 00       	NOP;
ffa02452:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa02454:	5c 0c       	CC = P4 == 0x3;
ffa02456:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa0245a:	d0 b0       	[P2 + 0xc] = R0;
ffa0245c:	32 18       	IF CC JUMP 0xffa024c0 <_bfin_EMAC_init+0x1b4>;
ffa0245e:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa02460:	5c 0d       	CC = P4 <= 0x3;
ffa02462:	ef 1f       	IF CC JUMP 0xffa02440 <_bfin_EMAC_init+0x134> (BP);
ffa02464:	17 32       	P2 = R7;
ffa02466:	51 91       	P1 = [P2];
ffa02468:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa0246c:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa02470:	51 93       	[P2] = P1;
ffa02472:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa02474:	42 6c       	P2 += 0x8;		/* (  8) */
ffa02476:	10 97       	W[P2] = R0;
ffa02478:	ff e3 e8 f7 	CALL 0xffa01448 <_PollMdcDone>;
ffa0247c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0247e:	f0 b9       	R0 = [FP -0x4];
ffa02480:	d1 4f       	R1 <<= 0x1a;
ffa02482:	08 08       	CC = R0 == R1;
ffa02484:	2c 18       	IF CC JUMP 0xffa024dc <_bfin_EMAC_init+0x1d0>;
ffa02486:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa0248a:	01 30       	R0 = R1;
ffa0248c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa02490:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02494:	10 93       	[P2] = R0;
ffa02496:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0249a:	00 e1 8c 02 	R0.L = 0x28c;		/* (652)	R0=0xff90028c(-7339380) */
ffa0249e:	ff e3 57 f1 	CALL 0xffa0074c <_printf_hex>;
ffa024a2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90028c(-7339380) */
ffa024a6:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa024aa:	ff e3 eb f0 	CALL 0xffa00680 <_printf_str>;
ffa024ae:	01 e8 00 00 	UNLINK;
ffa024b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024b4:	b3 05       	(R7:6, P5:3) = [SP++];
ffa024b6:	10 00       	RTS;
ffa024b8:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa024ba:	c4 2f       	JUMP.S 0xffa02442 <_bfin_EMAC_init+0x136>;
ffa024bc:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa024be:	a7 2f       	JUMP.S 0xffa0240c <_bfin_EMAC_init+0x100>;
ffa024c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa024c4:	0a e1 ec 0b 	P2.L = 0xbec;		/* (3052)	P2=0xff900bec <_txbuf> */
ffa024c8:	10 91       	R0 = [P2];
ffa024ca:	c8 b0       	[P1 + 0xc] = R0;
ffa024cc:	cc 2f       	JUMP.S 0xffa02464 <_bfin_EMAC_init+0x158>;
ffa024ce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bec <_txbuf> */
ffa024d2:	0a e1 00 0c 	P2.L = 0xc00;		/* (3072)	P2=0xff900c00 <_rxbuf> */
ffa024d6:	10 91       	R0 = [P2];
ffa024d8:	c8 b0       	[P1 + 0xc] = R0;
ffa024da:	aa 2f       	JUMP.S 0xffa0242e <_bfin_EMAC_init+0x122>;
ffa024dc:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa024e0:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa024e2:	01 30       	R0 = R1;
ffa024e4:	d4 2f       	JUMP.S 0xffa0248c <_bfin_EMAC_init+0x180>;
ffa024e6:	01 e8 00 00 	UNLINK;
ffa024ea:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa024ec:	b3 05       	(R7:6, P5:3) = [SP++];
ffa024ee:	10 00       	RTS;

ffa024f0 <_bfin_EMAC_recv_poll>:
ffa024f0:	e3 05       	[--SP] = (R7:4, P5:3);
ffa024f2:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa024f6:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa024fa:	0d e1 00 0c 	P5.L = 0xc00;		/* (3072)	P5=0xff900c00 <_rxbuf> */
ffa024fe:	0c e1 fc 0b 	P4.L = 0xbfc;		/* (3068)	P4=0xff900bfc <_rxIdx> */
ffa02502:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02506:	28 30       	R5 = R0;
ffa02508:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0250a:	75 30       	R6 = P5;
ffa0250c:	5c 32       	P3 = P4;
ffa0250e:	06 20       	JUMP.S 0xffa0251a <_bfin_EMAC_recv_poll+0x2a>;
ffa02510:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02512:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02516:	07 08       	CC = R7 == R0;
ffa02518:	0c 18       	IF CC JUMP 0xffa02530 <_bfin_EMAC_recv_poll+0x40>;
ffa0251a:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa0251e:	ff e3 47 f4 	CALL 0xffa00dac <_udelay>;
ffa02522:	20 95       	R0 = W[P4] (Z);
ffa02524:	10 32       	P2 = R0;
ffa02526:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02528:	52 91       	P2 = [P2];
ffa0252a:	90 a2       	R0 = [P2 + 0x28];
ffa0252c:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa0252e:	f1 1f       	IF CC JUMP 0xffa02510 <_bfin_EMAC_recv_poll+0x20> (BP);
ffa02530:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02534:	91 a2       	R1 = [P2 + 0x28];
ffa02536:	41 54       	R1 = R1 & R0;
ffa02538:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0253a:	01 09       	CC = R1 <= R0;
ffa0253c:	07 10       	IF !CC JUMP 0xffa0254a <_bfin_EMAC_recv_poll+0x5a>;
ffa0253e:	01 e8 00 00 	UNLINK;
ffa02542:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02544:	07 30       	R0 = R7;
ffa02546:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02548:	10 00       	RTS;
ffa0254a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0254c:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa02550:	90 b2 00 00 
ffa02554:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02556:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0255a:	0f 30       	R1 = R7;
ffa0255c:	00 e1 98 02 	R0.L = 0x298;		/* (664)	R0=0xff900298(-7339368) */
ffa02560:	ff e3 52 f1 	CALL 0xffa00804 <_printf_int>;
ffa02564:	18 95       	R0 = W[P3] (Z);
ffa02566:	10 32       	P2 = R0;
ffa02568:	0e 32       	P1 = R6;
ffa0256a:	0f 30       	R1 = R7;
ffa0256c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0256e:	52 91       	P2 = [P2];
ffa02570:	90 a1       	R0 = [P2 + 0x18];
ffa02572:	15 32       	P2 = R5;
ffa02574:	10 93       	[P2] = R0;
ffa02576:	00 e3 5f 02 	CALL 0xffa02a34 <_ARP_rx>;
ffa0257a:	00 0c       	CC = R0 == 0x0;
ffa0257c:	1f 18       	IF CC JUMP 0xffa025ba <_bfin_EMAC_recv_poll+0xca>;
ffa0257e:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02580:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02584:	20 95       	R0 = W[P4] (Z);
ffa02586:	10 32       	P2 = R0;
ffa02588:	61 95       	R1 = W[P4] (X);
ffa0258a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0258c:	09 e1 fc 0b 	P1.L = 0xbfc;		/* (3068)	P1=0xff900bfc <_rxIdx> */
ffa02590:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02592:	52 91       	P2 = [P2];
ffa02594:	90 b2       	[P2 + 0x28] = R0;
ffa02596:	c8 42       	R0 = R1.L (Z);
ffa02598:	10 0d       	CC = R0 <= 0x2;
ffa0259a:	08 1c       	IF CC JUMP 0xffa025aa <_bfin_EMAC_recv_poll+0xba> (BP);
ffa0259c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0259e:	08 97       	W[P1] = R0;
ffa025a0:	01 e8 00 00 	UNLINK;
ffa025a4:	07 30       	R0 = R7;
ffa025a6:	a3 05       	(R7:4, P5:3) = [SP++];
ffa025a8:	10 00       	RTS;
ffa025aa:	01 30       	R0 = R1;
ffa025ac:	08 64       	R0 += 0x1;		/* (  1) */
ffa025ae:	08 97       	W[P1] = R0;
ffa025b0:	01 e8 00 00 	UNLINK;
ffa025b4:	07 30       	R0 = R7;
ffa025b6:	a3 05       	(R7:4, P5:3) = [SP++];
ffa025b8:	10 00       	RTS;
ffa025ba:	0d 32       	P1 = R5;
ffa025bc:	0f 30       	R1 = R7;
ffa025be:	08 91       	R0 = [P1];
ffa025c0:	ff e3 8e fc 	CALL 0xffa01edc <_icmp_rx>;
ffa025c4:	00 0c       	CC = R0 == 0x0;
ffa025c6:	dd 1f       	IF CC JUMP 0xffa02580 <_bfin_EMAC_recv_poll+0x90> (BP);
ffa025c8:	db 2f       	JUMP.S 0xffa0257e <_bfin_EMAC_recv_poll+0x8e>;
	...

ffa025cc <_DHCP_rx>:
ffa025cc:	ed 05       	[--SP] = (R7:5, P5:5);
ffa025ce:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa025d2:	6f 30       	R5 = FP;
ffa025d4:	e5 67       	R5 += -0x4;		/* ( -4) */
ffa025d6:	01 20       	JUMP.S 0xffa025d8 <_DHCP_rx+0xc>;
ffa025d8:	05 30       	R0 = R5;
ffa025da:	ff e3 8b ff 	CALL 0xffa024f0 <_bfin_EMAC_recv_poll>;
ffa025de:	38 30       	R7 = R0;
ffa025e0:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa025e4:	87 51       	R6 = R7 + R0;
ffa025e6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa025ea:	00 e1 d8 02 	R0.L = 0x2d8;		/* (728)	R0=0xff9002d8(-7339304) */
ffa025ee:	0e 30       	R1 = R6;
ffa025f0:	ff e3 0a f1 	CALL 0xffa00804 <_printf_int>;
ffa025f4:	20 e1 1b 01 	R0 = 0x11b (X);		/*		R0=0x11b(283) */
ffa025f8:	07 09       	CC = R7 <= R0;
ffa025fa:	fd b9       	P5 = [FP -0x4];
ffa025fc:	0c 18       	IF CC JUMP 0xffa02614 <_DHCP_rx+0x48>;
ffa025fe:	00 00       	NOP;
ffa02600:	00 00       	NOP;
ffa02602:	00 00       	NOP;
ffa02604:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa02606:	ff e3 a3 f7 	CALL 0xffa0154c <_htons>;
ffa0260a:	c0 42       	R0 = R0.L (Z);
ffa0260c:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa02610:	08 08       	CC = R0 == R1;
ffa02612:	08 18       	IF CC JUMP 0xffa02622 <_DHCP_rx+0x56>;
ffa02614:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011b(-7339749) */
ffa02618:	00 e1 bc 02 	R0.L = 0x2bc;		/* (700)	R0=0xff9002bc(-7339332) */
ffa0261c:	ff e3 32 f0 	CALL 0xffa00680 <_printf_str>;
ffa02620:	dc 2f       	JUMP.S 0xffa025d8 <_DHCP_rx+0xc>;
ffa02622:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa02626:	ff e3 93 f7 	CALL 0xffa0154c <_htons>;
ffa0262a:	c0 42       	R0 = R0.L (Z);
ffa0262c:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa02630:	01 08       	CC = R1 == R0;
ffa02632:	d3 17       	IF !CC JUMP 0xffa025d8 <_DHCP_rx+0xc> (BP);
ffa02634:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa02638:	ff e3 8a f7 	CALL 0xffa0154c <_htons>;
ffa0263c:	c0 42       	R0 = R0.L (Z);
ffa0263e:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa02642:	01 08       	CC = R1 == R0;
ffa02644:	ca 17       	IF !CC JUMP 0xffa025d8 <_DHCP_rx+0xc> (BP);
ffa02646:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c00(-4191232) */
ffa0264a:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa0264e:	11 91       	R1 = [P2];
ffa02650:	28 a3       	R0 = [P5 + 0x30];
ffa02652:	08 08       	CC = R0 == R1;
ffa02654:	c2 17       	IF !CC JUMP 0xffa025d8 <_DHCP_rx+0xc> (BP);
ffa02656:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa0265a:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa0265e:	ff e3 83 f7 	CALL 0xffa01564 <_htonl>;
ffa02662:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa02666:	01 08       	CC = R1 == R0;
ffa02668:	b8 17       	IF !CC JUMP 0xffa025d8 <_DHCP_rx+0xc> (BP);
ffa0266a:	4d 30       	R1 = P5;
ffa0266c:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa02670:	01 50       	R0 = R1 + R0;
ffa02672:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa02676:	f0 bb 00 00 
ffa0267a:	ff e3 59 f8 	CALL 0xffa0172c <_DHCP_parse>;
ffa0267e:	e9 a3       	R1 = [P5 + 0x3c];
ffa02680:	01 0c       	CC = R1 == 0x0;
ffa02682:	12 1c       	IF CC JUMP 0xffa026a6 <_DHCP_rx+0xda> (BP);
ffa02684:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa02688:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_NetOurIP> */
ffa0268c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa02690:	11 93       	[P2] = R1;
ffa02692:	00 e1 ac 02 	R0.L = 0x2ac;		/* (684)	R0=0xff9002ac(-7339348) */
ffa02696:	ff e3 59 f1 	CALL 0xffa00948 <_printf_ip>;
ffa0269a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002ac(-7339348) */
ffa0269e:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa026a2:	ff e3 ef ef 	CALL 0xffa00680 <_printf_str>;
ffa026a6:	01 e8 00 00 	UNLINK;
ffa026aa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa026ac:	ad 05       	(R7:5, P5:5) = [SP++];
ffa026ae:	10 00       	RTS;

ffa026b0 <_DHCP_req>:
ffa026b0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa026b2:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c00 <_rxbuf> */
ffa026b6:	0d e1 e4 0b 	P5.L = 0xbe4;		/* (3044)	P5=0xff900be4 <_NetDHCPserv> */
ffa026ba:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa026bc:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa026c0:	28 93       	[P5] = R0;
ffa026c2:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa026c4:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa026c8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa026ca:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa026ce:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa026d2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa026d4:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa026d8:	7f 30       	R7 = FP;
ffa026da:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa026de:	00 e1 ec 02 	R0.L = 0x2ec;		/* (748)	R0=0xff9002ec(-7339284) */
ffa026e2:	a7 67       	R7 += -0xc;		/* (-12) */
ffa026e4:	ff e3 ce ef 	CALL 0xffa00680 <_printf_str>;
ffa026e8:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa026ec:	2a 91 00 00 
ffa026f0:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa026f2:	ff e3 45 f9 	CALL 0xffa0197c <_DHCP_tx>;
ffa026f6:	ff e3 6b ff 	CALL 0xffa025cc <_DHCP_rx>;
ffa026fa:	29 91       	R1 = [P5];
ffa026fc:	39 0c       	CC = R1 == -0x1;
ffa026fe:	43 18       	IF CC JUMP 0xffa02784 <_DHCP_req+0xd4>;
ffa02700:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c1c <_NetOurIP> */
ffa02704:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_NetOurIP> */
ffa02708:	10 91       	R0 = [P2];
ffa0270a:	00 0c       	CC = R0 == 0x0;
ffa0270c:	08 18       	IF CC JUMP 0xffa0271c <_DHCP_req+0x6c>;
ffa0270e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c1c <_NetOurIP> */
ffa02712:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_NetSubnetMask> */
ffa02716:	10 91       	R0 = [P2];
ffa02718:	00 0c       	CC = R0 == 0x0;
ffa0271a:	30 10       	IF !CC JUMP 0xffa0277a <_DHCP_req+0xca>;
ffa0271c:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa0271e:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa02722:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02724:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa02728:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0272a:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa0272e:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02730:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02734:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02736:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa0273a:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa0273e:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa02742:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa02746:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0274a:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa0274e:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa02752:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02754:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa02758:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa0275c:	00 e1 1c 03 	R0.L = 0x31c;		/* (796)	R0=0xff90031c(-7339236) */
ffa02760:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa02764:	ff e3 8e ef 	CALL 0xffa00680 <_printf_str>;
ffa02768:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0276a:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa0276e:	2a 91 00 00 
ffa02772:	ff e3 05 f9 	CALL 0xffa0197c <_DHCP_tx>;
ffa02776:	ff e3 2b ff 	CALL 0xffa025cc <_DHCP_rx>;
ffa0277a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0277c:	01 e8 00 00 	UNLINK;
ffa02780:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02782:	10 00       	RTS;
ffa02784:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02788:	00 e1 00 03 	R0.L = 0x300;		/* (768)	R0=0xff900300(-7339264) */
ffa0278c:	ff e3 7a ef 	CALL 0xffa00680 <_printf_str>;
ffa02790:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02792:	f5 2f       	JUMP.S 0xffa0277c <_DHCP_req+0xcc>;

ffa02794 <_bfin_EMAC_recv>:
ffa02794:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02796:	28 32       	P5 = R0;
ffa02798:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900bfc <_rxIdx> */
ffa0279c:	0c e1 fc 0b 	P4.L = 0xbfc;		/* (3068)	P4=0xff900bfc <_rxIdx> */
ffa027a0:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00bec(-4191252) */
ffa027a4:	44 e1 c0 ff 	R4.H = 0xffc0;		/* (-64)	R4=0xffc00000(-4194304) */
ffa027a8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa027ac:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa027ae:	6c 30       	R5 = P4;
ffa027b0:	86 60       	R6 = 0x10 (X);		/*		R6=0x10( 16) */
ffa027b2:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa027b6:	04 e1 04 07 	R4.L = 0x704;		/* (1796)	R4=0xffc00704(-4192508) */
ffa027ba:	0f 20       	JUMP.S 0xffa027d8 <_bfin_EMAC_recv+0x44>;
ffa027bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027be:	20 97       	W[P4] = R0;
ffa027c0:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R0 = [P5] || NOP;
ffa027c4:	28 91 00 00 
ffa027c8:	00 e3 36 01 	CALL 0xffa02a34 <_ARP_rx>;
ffa027cc:	00 0c       	CC = R0 == 0x0;
ffa027ce:	43 18       	IF CC JUMP 0xffa02854 <_bfin_EMAC_recv+0xc0>;
ffa027d0:	14 32       	P2 = R4;
ffa027d2:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa027d4:	16 97       	W[P2] = R6;
ffa027d6:	01 20       	JUMP.S 0xffa027d8 <_bfin_EMAC_recv+0x44>;
ffa027d8:	0d 32       	P1 = R5;
ffa027da:	08 95       	R0 = W[P1] (Z);
ffa027dc:	10 32       	P2 = R0;
ffa027de:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bfc <_rxIdx> */
ffa027e2:	09 e1 00 0c 	P1.L = 0xc00;		/* (3072)	P1=0xff900c00 <_rxbuf> */
ffa027e6:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa027e8:	51 91       	P1 = [P2];
ffa027ea:	88 a2       	R0 = [P1 + 0x28];
ffa027ec:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa027ee:	48 18       	IF CC JUMP 0xffa0287e <_bfin_EMAC_recv+0xea>;
ffa027f0:	00 00       	NOP;
ffa027f2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa027f4:	a0 4f       	R0 <<= 0x14;
ffa027f6:	89 a2       	R1 = [P1 + 0x28];
ffa027f8:	81 54       	R2 = R1 & R0;
ffa027fa:	02 0c       	CC = R2 == 0x0;
ffa027fc:	47 10       	IF !CC JUMP 0xffa0288a <_bfin_EMAC_recv+0xf6>;
ffa027fe:	00 00       	NOP;
ffa02800:	00 00       	NOP;
ffa02802:	00 00       	NOP;
ffa02804:	88 a2       	R0 = [P1 + 0x28];
ffa02806:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa02808:	4c 18       	IF CC JUMP 0xffa028a0 <_bfin_EMAC_recv+0x10c>;
ffa0280a:	00 00       	NOP;
ffa0280c:	00 00       	NOP;
ffa0280e:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02812:	89 a2       	R1 = [P1 + 0x28];
ffa02814:	c1 55       	R7 = R1 & R0;
ffa02816:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02818:	07 09       	CC = R7 <= R0;
ffa0281a:	4e 18       	IF CC JUMP 0xffa028b6 <_bfin_EMAC_recv+0x122>;
ffa0281c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c18(-4191208) */
ffa02820:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa02824:	16 97       	W[P2] = R6;
ffa02826:	88 a1       	R0 = [P1 + 0x18];
ffa02828:	59 95       	R1 = W[P3] (X);
ffa0282a:	28 93       	[P5] = R0;
ffa0282c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0282e:	08 56       	R0 = R0 | R1;
ffa02830:	18 97       	W[P3] = R0;
ffa02832:	61 95       	R1 = W[P4] (X);
ffa02834:	c8 42       	R0 = R1.L (Z);
ffa02836:	10 0d       	CC = R0 <= 0x2;
ffa02838:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0283a:	8a b2       	[P1 + 0x28] = R2;
ffa0283c:	c0 17       	IF !CC JUMP 0xffa027bc <_bfin_EMAC_recv+0x28> (BP);
ffa0283e:	01 30       	R0 = R1;
ffa02840:	08 64       	R0 += 0x1;		/* (  1) */
ffa02842:	20 97       	W[P4] = R0;
ffa02844:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R0 = [P5] || NOP;
ffa02848:	28 91 00 00 
ffa0284c:	00 e3 f4 00 	CALL 0xffa02a34 <_ARP_rx>;
ffa02850:	00 0c       	CC = R0 == 0x0;
ffa02852:	bf 17       	IF !CC JUMP 0xffa027d0 <_bfin_EMAC_recv+0x3c> (BP);
ffa02854:	28 91       	R0 = [P5];
ffa02856:	0f 30       	R1 = R7;
ffa02858:	ff e3 42 fb 	CALL 0xffa01edc <_icmp_rx>;
ffa0285c:	00 0c       	CC = R0 == 0x0;
ffa0285e:	b9 17       	IF !CC JUMP 0xffa027d0 <_bfin_EMAC_recv+0x3c> (BP);
ffa02860:	28 91       	R0 = [P5];
ffa02862:	0f 30       	R1 = R7;
ffa02864:	00 e3 40 04 	CALL 0xffa030e4 <_tcp_rx>;
ffa02868:	00 0c       	CC = R0 == 0x0;
ffa0286a:	b3 17       	IF !CC JUMP 0xffa027d0 <_bfin_EMAC_recv+0x3c> (BP);
ffa0286c:	0c 32       	P1 = R4;
ffa0286e:	07 0d       	CC = R7 <= 0x0;
ffa02870:	0e 97       	W[P1] = R6;
ffa02872:	b3 1f       	IF CC JUMP 0xffa027d8 <_bfin_EMAC_recv+0x44> (BP);
ffa02874:	01 e8 00 00 	UNLINK;
ffa02878:	07 30       	R0 = R7;
ffa0287a:	a3 05       	(R7:4, P5:3) = [SP++];
ffa0287c:	10 00       	RTS;
ffa0287e:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02880:	01 e8 00 00 	UNLINK;
ffa02884:	07 30       	R0 = R7;
ffa02886:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02888:	10 00       	RTS;
ffa0288a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900003(-7340029) */
ffa0288e:	00 e1 30 03 	R0.L = 0x330;		/* (816)	R0=0xff900330(-7339216) */
ffa02892:	ff e3 f7 ee 	CALL 0xffa00680 <_printf_str>;
ffa02896:	01 e8 00 00 	UNLINK;
ffa0289a:	07 30       	R0 = R7;
ffa0289c:	a3 05       	(R7:4, P5:3) = [SP++];
ffa0289e:	10 00       	RTS;
ffa028a0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900330(-7339216) */
ffa028a4:	00 e1 4c 03 	R0.L = 0x34c;		/* (844)	R0=0xff90034c(-7339188) */
ffa028a8:	ff e3 ec ee 	CALL 0xffa00680 <_printf_str>;
ffa028ac:	01 e8 00 00 	UNLINK;
ffa028b0:	07 30       	R0 = R7;
ffa028b2:	a3 05       	(R7:4, P5:3) = [SP++];
ffa028b4:	10 00       	RTS;
ffa028b6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90034c(-7339188) */
ffa028ba:	00 e1 60 03 	R0.L = 0x360;		/* (864)	R0=0xff900360(-7339168) */
ffa028be:	ff e3 e1 ee 	CALL 0xffa00680 <_printf_str>;
ffa028c2:	01 e8 00 00 	UNLINK;
ffa028c6:	07 30       	R0 = R7;
ffa028c8:	a3 05       	(R7:4, P5:3) = [SP++];
ffa028ca:	10 00       	RTS;

ffa028cc <_ARP_init>:
ffa028cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa028d0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa028d4:	0a e1 28 0c 	P2.L = 0xc28;		/* (3112)	P2=0xff900c28 <_NetArpLut> */
ffa028d8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa028da:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa028dc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa028de:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa028e0:	b2 e0 12 10 	LSETUP(0xffa028e4 <_ARP_init+0x18>, 0xffa02904 <_ARP_init+0x38>) LC1 = P1;
ffa028e4:	11 93       	[P2] = R1;
ffa028e6:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa028ea:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa028ee:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa028f2:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa028f6:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa028fa:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa028fe:	52 b5       	W[P2 + 0xa] = R2;
ffa02900:	d1 b0       	[P2 + 0xc] = R1;
ffa02902:	11 b1       	[P2 + 0x10] = R1;
ffa02904:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa02906:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c28 <_NetArpLut> */
ffa0290a:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa0290e:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetArpLut_age> */
ffa02912:	10 97       	W[P2] = R0;
ffa02914:	01 e8 00 00 	UNLINK;
ffa02918:	10 00       	RTS;
	...

ffa0291c <_ARP_lut_find>:
ffa0291c:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900be8 <_txIdx> */
ffa02920:	08 e1 28 0c 	P0.L = 0xc28;		/* (3112)	P0=0xff900c28 <_NetArpLut> */
ffa02924:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02928:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0292a:	48 32       	P1 = P0;
ffa0292c:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa0292e:	b2 e0 06 20 	LSETUP(0xffa02932 <_ARP_lut_find+0x16>, 0xffa0293a <_ARP_lut_find+0x1e>) LC1 = P2;
ffa02932:	08 91       	R0 = [P1];
ffa02934:	00 0c       	CC = R0 == 0x0;
ffa02936:	14 18       	IF CC JUMP 0xffa0295e <_ARP_lut_find+0x42>;
ffa02938:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0293a:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa0293c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa02940:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02942:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02944:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa02946:	09 e1 46 0c 	P1.L = 0xc46;		/* (3142)	P1=0xff900c46 */
ffa0294a:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa0294c:	b2 e0 08 20 	LSETUP(0xffa02950 <_ARP_lut_find+0x34>, 0xffa0295c <_ARP_lut_find+0x40>) LC1 = P2;
ffa02950:	08 95       	R0 = W[P1] (Z);
ffa02952:	03 09       	CC = R3 <= R0;
ffa02954:	03 18       	IF CC JUMP 0xffa0295a <_ARP_lut_find+0x3e>;
ffa02956:	11 30       	R2 = R1;
ffa02958:	18 30       	R3 = R0;
ffa0295a:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa0295c:	09 64       	R1 += 0x1;		/* (  1) */
ffa0295e:	02 30       	R0 = R2;
ffa02960:	01 e8 00 00 	UNLINK;
ffa02964:	10 00       	RTS;
	...

ffa02968 <_ARP_lut_add>:
ffa02968:	f5 05       	[--SP] = (R7:6, P5:5);
ffa0296a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900be4 <_NetDHCPserv> */
ffa0296e:	0d e1 28 0c 	P5.L = 0xc28;		/* (3112)	P5=0xff900c28 <_NetArpLut> */
ffa02972:	31 30       	R6 = R1;
ffa02974:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02978:	38 30       	R7 = R0;
ffa0297a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0297c:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0297e:	4d 32       	P1 = P5;
ffa02980:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02982:	00 00       	NOP;
ffa02984:	08 91       	R0 = [P1];
ffa02986:	07 08       	CC = R7 == R0;
ffa02988:	11 07       	IF CC R2 = R1;
ffa0298a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0298c:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa0298e:	42 0c       	CC = P2 == 0x0;
ffa02990:	23 10       	IF !CC JUMP 0xffa029d6 <_ARP_lut_add+0x6e>;
ffa02992:	82 0c       	CC = R2 < 0x0;
ffa02994:	25 18       	IF CC JUMP 0xffa029de <_ARP_lut_add+0x76>;
ffa02996:	82 c6 12 82 	R1 = R2 << 0x2;
ffa0299a:	0a 32       	P1 = R2;
ffa0299c:	11 32       	P2 = R1;
ffa0299e:	06 32       	P0 = R6;
ffa029a0:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa029a2:	6a 5a       	P1 = P2 + P5;
ffa029a4:	22 6c       	P2 += 0x4;		/* (  4) */
ffa029a6:	0f 93       	[P1] = R7;
ffa029a8:	aa 5a       	P2 = P2 + P5;
ffa029aa:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa029ac:	b2 e0 03 10 	LSETUP(0xffa029b0 <_ARP_lut_add+0x48>, 0xffa029b2 <_ARP_lut_add+0x4a>) LC1 = P1;
ffa029b0:	40 98       	R0 = B[P0++] (X);
ffa029b2:	10 9a       	B[P2++] = R0;
ffa029b4:	51 41       	R1 = (R1 + R2) << 0x2;
ffa029b6:	09 32       	P1 = R1;
ffa029b8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa029bc:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetArpLut_age> */
ffa029c0:	50 95       	R0 = W[P2] (X);
ffa029c2:	08 64       	R0 += 0x1;		/* (  1) */
ffa029c4:	10 97       	W[P2] = R0;
ffa029c6:	a9 5a       	P2 = P1 + P5;
ffa029c8:	50 b5       	W[P2 + 0xa] = R0;
ffa029ca:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa029cc:	10 b1       	[P2 + 0x10] = R0;
ffa029ce:	01 e8 00 00 	UNLINK;
ffa029d2:	b5 05       	(R7:6, P5:5) = [SP++];
ffa029d4:	10 00       	RTS;
ffa029d6:	82 0c       	CC = R2 < 0x0;
ffa029d8:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa029da:	d4 1f       	IF CC JUMP 0xffa02982 <_ARP_lut_add+0x1a> (BP);
ffa029dc:	dd 2f       	JUMP.S 0xffa02996 <_ARP_lut_add+0x2e>;
ffa029de:	ff e3 9f ff 	CALL 0xffa0291c <_ARP_lut_find>;
ffa029e2:	10 30       	R2 = R0;
ffa029e4:	d9 2f       	JUMP.S 0xffa02996 <_ARP_lut_add+0x2e>;
	...

ffa029e8 <_ARP_lu>:
ffa029e8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa029ec:	c4 04       	[--SP] = (P5:4);
ffa029ee:	09 e1 28 0c 	P1.L = 0xc28;		/* (3112)	P1=0xff900c28 <_NetArpLut> */
ffa029f2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa029f6:	10 30       	R2 = R0;
ffa029f8:	29 32       	P5 = R1;
ffa029fa:	61 32       	P4 = P1;
ffa029fc:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa029fe:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02a00:	b2 e0 06 20 	LSETUP(0xffa02a04 <_ARP_lu+0x1c>, 0xffa02a0c <_ARP_lu+0x24>) LC1 = P2;
ffa02a04:	08 91       	R0 = [P1];
ffa02a06:	10 08       	CC = R0 == R2;
ffa02a08:	08 18       	IF CC JUMP 0xffa02a18 <_ARP_lu+0x30>;
ffa02a0a:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa02a0c:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02a0e:	01 e8 00 00 	UNLINK;
ffa02a12:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a14:	84 04       	(P5:4) = [SP++];
ffa02a16:	10 00       	RTS;
ffa02a18:	08 a1       	R0 = [P1 + 0x10];
ffa02a1a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02a1c:	f7 1f       	IF CC JUMP 0xffa02a0a <_ARP_lu+0x22> (BP);
ffa02a1e:	60 5a       	P1 = P0 + P4;
ffa02a20:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa02a22:	b2 e0 03 20 	LSETUP(0xffa02a26 <_ARP_lu+0x3e>, 0xffa02a28 <_ARP_lu+0x40>) LC1 = P2;
ffa02a26:	48 98       	R0 = B[P1++] (X);
ffa02a28:	28 9a       	B[P5++] = R0;
ffa02a2a:	01 e8 00 00 	UNLINK;
ffa02a2e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02a30:	84 04       	(P5:4) = [SP++];
ffa02a32:	10 00       	RTS;

ffa02a34 <_ARP_rx>:
ffa02a34:	fb 05       	[--SP] = (R7:7, P5:3);
ffa02a36:	20 32       	P4 = R0;
ffa02a38:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02a3c:	39 30       	R7 = R1;
ffa02a3e:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa02a40:	ff e3 86 f5 	CALL 0xffa0154c <_htons>;
ffa02a44:	c0 42       	R0 = R0.L (Z);
ffa02a46:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa02a4a:	08 08       	CC = R0 == R1;
ffa02a4c:	06 18       	IF CC JUMP 0xffa02a58 <_ARP_rx+0x24>;
ffa02a4e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a50:	01 e8 00 00 	UNLINK;
ffa02a54:	bb 05       	(R7:7, P5:3) = [SP++];
ffa02a56:	10 00       	RTS;
ffa02a58:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02a5a:	07 0a       	CC = R7 <= R0 (IU);
ffa02a5c:	f9 1f       	IF CC JUMP 0xffa02a4e <_ARP_rx+0x1a> (BP);
ffa02a5e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02a60:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02a62:	ff e3 75 f5 	CALL 0xffa0154c <_htons>;
ffa02a66:	c0 42       	R0 = R0.L (Z);
ffa02a68:	07 08       	CC = R7 == R0;
ffa02a6a:	f2 17       	IF !CC JUMP 0xffa02a4e <_ARP_rx+0x1a> (BP);
ffa02a6c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02a70:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02a72:	ff e3 6d f5 	CALL 0xffa0154c <_htons>;
ffa02a76:	c0 42       	R0 = R0.L (Z);
ffa02a78:	07 08       	CC = R7 == R0;
ffa02a7a:	ea 17       	IF !CC JUMP 0xffa02a4e <_ARP_rx+0x1a> (BP);
ffa02a7c:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02a7e:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02a82:	08 08       	CC = R0 == R1;
ffa02a84:	e5 17       	IF !CC JUMP 0xffa02a4e <_ARP_rx+0x1a> (BP);
ffa02a86:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02a88:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02a8a:	ff e3 61 f5 	CALL 0xffa0154c <_htons>;
ffa02a8e:	c0 42       	R0 = R0.L (Z);
ffa02a90:	07 08       	CC = R7 == R0;
ffa02a92:	0c 14       	IF !CC JUMP 0xffa02aaa <_ARP_rx+0x76> (BP);
ffa02a94:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa02a98:	0a e1 10 0c 	P2.L = 0xc10;		/* (3088)	P2=0xff900c10 <_NetOurMAC> */
ffa02a9c:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa02aa0:	10 99       	R0 = B[P2] (Z);
ffa02aa2:	01 08       	CC = R1 == R0;
ffa02aa4:	ae 18       	IF CC JUMP 0xffa02c00 <_ARP_rx+0x1cc>;
ffa02aa6:	00 00       	NOP;
ffa02aa8:	00 00       	NOP;
ffa02aaa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02aac:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02aae:	ff e3 4f f5 	CALL 0xffa0154c <_htons>;
ffa02ab2:	c0 42       	R0 = R0.L (Z);
ffa02ab4:	07 08       	CC = R7 == R0;
ffa02ab6:	cc 17       	IF !CC JUMP 0xffa02a4e <_ARP_rx+0x1a> (BP);
ffa02ab8:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02abc:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02abe:	ff e3 47 f5 	CALL 0xffa0154c <_htons>;
ffa02ac2:	c0 42       	R0 = R0.L (Z);
ffa02ac4:	07 08       	CC = R7 == R0;
ffa02ac6:	c4 17       	IF !CC JUMP 0xffa02a4e <_ARP_rx+0x1a> (BP);
ffa02ac8:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02aca:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02ace:	08 08       	CC = R0 == R1;
ffa02ad0:	bf 17       	IF !CC JUMP 0xffa02a4e <_ARP_rx+0x1a> (BP);
ffa02ad2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ad4:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02ad6:	ff e3 3b f5 	CALL 0xffa0154c <_htons>;
ffa02ada:	c0 42       	R0 = R0.L (Z);
ffa02adc:	07 08       	CC = R7 == R0;
ffa02ade:	b8 17       	IF !CC JUMP 0xffa02a4e <_ARP_rx+0x1a> (BP);
ffa02ae0:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa02ae4:	07 e1 1c 0c 	R7.L = 0xc1c;		/* (3100)	R7=0xff900c1c <_NetOurIP>(-7336932) */
ffa02ae8:	17 32       	P2 = R7;
ffa02aea:	a1 a2       	R1 = [P4 + 0x28];
ffa02aec:	10 91       	R0 = [P2];
ffa02aee:	01 08       	CC = R1 == R0;
ffa02af0:	af 17       	IF !CC JUMP 0xffa02a4e <_ARP_rx+0x1a> (BP);
ffa02af2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c10 <_NetOurMAC> */
ffa02af6:	0a e1 e8 0b 	P2.L = 0xbe8;		/* (3048)	P2=0xff900be8 <_txIdx> */
ffa02afa:	10 95       	R0 = W[P2] (Z);
ffa02afc:	10 32       	P2 = R0;
ffa02afe:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c28 <_NetArpLut> */
ffa02b02:	09 e1 ec 0b 	P1.L = 0xbec;		/* (3052)	P1=0xff900bec <_txbuf> */
ffa02b06:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa02b08:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c28 <_NetArpLut> */
ffa02b0c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02b0e:	52 91       	P2 = [P2];
ffa02b10:	0d e1 10 0c 	P5.L = 0xc10;		/* (3088)	P5=0xff900c10 <_NetOurMAC> */
ffa02b14:	93 ad       	P3 = [P2 + 0x18];
ffa02b16:	18 97       	W[P3] = R0;
ffa02b18:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa02b1c:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa02b20:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa02b24:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa02b28:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa02b2c:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa02b30:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa02b34:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa02b38:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa02b3c:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa02b40:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa02b44:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa02b48:	68 99       	R0 = B[P5] (X);
ffa02b4a:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa02b4e:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02b52:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa02b56:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02b5a:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa02b5e:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02b62:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa02b66:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02b6a:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa02b6e:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02b72:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa02b76:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02b7a:	ff e3 e9 f4 	CALL 0xffa0154c <_htons>;
ffa02b7e:	d8 b5       	W[P3 + 0xe] = R0;
ffa02b80:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02b82:	ff e3 e5 f4 	CALL 0xffa0154c <_htons>;
ffa02b86:	18 b6       	W[P3 + 0x10] = R0;
ffa02b88:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02b8c:	ff e3 e0 f4 	CALL 0xffa0154c <_htons>;
ffa02b90:	58 b6       	W[P3 + 0x12] = R0;
ffa02b92:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02b94:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa02b98:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02b9a:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa02b9e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02ba0:	ff e3 d6 f4 	CALL 0xffa0154c <_htons>;
ffa02ba4:	44 32       	P0 = P4;
ffa02ba6:	d8 b6       	W[P3 + 0x16] = R0;
ffa02ba8:	53 32       	P2 = P3;
ffa02baa:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa02bac:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02bae:	b2 e0 08 10 	LSETUP(0xffa02bb2 <_ARP_rx+0x17e>, 0xffa02bbe <_ARP_rx+0x18a>) LC1 = P1;
ffa02bb2:	68 98       	R0 = B[P5++] (X);
ffa02bb4:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa02bb8:	40 98       	R0 = B[P0++] (X);
ffa02bba:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa02bbe:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02bc0:	17 32       	P2 = R7;
ffa02bc2:	50 99       	R0 = B[P2] (X);
ffa02bc4:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa02bc8:	10 91       	R0 = [P2];
ffa02bca:	40 4e       	R0 >>= 0x8;
ffa02bcc:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa02bd0:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02bd4:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa02bd8:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02bdc:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa02be0:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa02be4:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa02be8:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa02bec:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa02bf0:	f3 b0       	[SP + 0xc] = R3;
ffa02bf2:	ff e3 03 f4 	CALL 0xffa013f8 <_FormatIPAddress>;
ffa02bf6:	98 b2       	[P3 + 0x28] = R0;
ffa02bf8:	ff e3 54 f6 	CALL 0xffa018a0 <_bfin_EMAC_send_nocopy>;
ffa02bfc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02bfe:	29 2f       	JUMP.S 0xffa02a50 <_ARP_rx+0x1c>;
ffa02c00:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa02c04:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa02c08:	01 08       	CC = R1 == R0;
ffa02c0a:	50 17       	IF !CC JUMP 0xffa02aaa <_ARP_rx+0x76> (BP);
ffa02c0c:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa02c10:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa02c14:	01 08       	CC = R1 == R0;
ffa02c16:	4a 17       	IF !CC JUMP 0xffa02aaa <_ARP_rx+0x76> (BP);
ffa02c18:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa02c1c:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa02c20:	01 08       	CC = R1 == R0;
ffa02c22:	44 17       	IF !CC JUMP 0xffa02aaa <_ARP_rx+0x76> (BP);
ffa02c24:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa02c28:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02c2c:	01 08       	CC = R1 == R0;
ffa02c2e:	3e 17       	IF !CC JUMP 0xffa02aaa <_ARP_rx+0x76> (BP);
ffa02c30:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa02c34:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa02c38:	01 08       	CC = R1 == R0;
ffa02c3a:	38 17       	IF !CC JUMP 0xffa02aaa <_ARP_rx+0x76> (BP);
ffa02c3c:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa02c3e:	44 30       	R0 = P4;
ffa02c40:	ff e3 a6 f4 	CALL 0xffa0158c <_pack4chars>;
ffa02c44:	38 30       	R7 = R0;
ffa02c46:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa02c4a:	0f 30       	R1 = R7;
ffa02c4c:	00 e1 6c 04 	R0.L = 0x46c;		/* (1132)	R0=0xff90046c(-7338900) */
ffa02c50:	ff e3 7c ee 	CALL 0xffa00948 <_printf_ip>;
ffa02c54:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90046c(-7338900) */
ffa02c58:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa02c5c:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa02c5e:	ff e3 11 ed 	CALL 0xffa00680 <_printf_str>;
ffa02c62:	07 30       	R0 = R7;
ffa02c64:	4c 30       	R1 = P4;
ffa02c66:	ff e3 81 fe 	CALL 0xffa02968 <_ARP_lut_add>;
ffa02c6a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c6c:	f2 2e       	JUMP.S 0xffa02a50 <_ARP_rx+0x1c>;
	...

ffa02c70 <_ARP_tx>:
ffa02c70:	fc 05       	[--SP] = (R7:7, P5:4);
ffa02c72:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be8 <_txIdx> */
ffa02c76:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02c7a:	0a e1 e8 0b 	P2.L = 0xbe8;		/* (3048)	P2=0xff900be8 <_txIdx> */
ffa02c7e:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa02c82:	10 95 00 00 
ffa02c86:	10 32       	P2 = R0;
ffa02c88:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02c8c:	09 e1 ec 0b 	P1.L = 0xbec;		/* (3052)	P1=0xff900bec <_txbuf> */
ffa02c90:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa02c92:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c10 <_NetOurMAC> */
ffa02c96:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02c98:	52 91       	P2 = [P2];
ffa02c9a:	0d e1 10 0c 	P5.L = 0xc10;		/* (3088)	P5=0xff900c10 <_NetOurMAC> */
ffa02c9e:	94 ad       	P4 = [P2 + 0x18];
ffa02ca0:	20 97       	W[P4] = R0;
ffa02ca2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02ca4:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa02ca8:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa02cac:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa02cb0:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa02cb4:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa02cb8:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa02cbc:	68 99       	R0 = B[P5] (X);
ffa02cbe:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa02cc2:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02cc6:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa02cca:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02cce:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa02cd2:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02cd6:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa02cda:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02cde:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa02ce2:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02ce6:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa02cea:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02cee:	ff e3 2f f4 	CALL 0xffa0154c <_htons>;
ffa02cf2:	e0 b5       	W[P4 + 0xe] = R0;
ffa02cf4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02cf6:	ff e3 2b f4 	CALL 0xffa0154c <_htons>;
ffa02cfa:	20 b6       	W[P4 + 0x10] = R0;
ffa02cfc:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02d00:	ff e3 26 f4 	CALL 0xffa0154c <_htons>;
ffa02d04:	60 b6       	W[P4 + 0x12] = R0;
ffa02d06:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02d08:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa02d0c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02d0e:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa02d12:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d14:	ff e3 1c f4 	CALL 0xffa0154c <_htons>;
ffa02d18:	e0 b6       	W[P4 + 0x16] = R0;
ffa02d1a:	54 32       	P2 = P4;
ffa02d1c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02d1e:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02d20:	b2 e0 07 10 	LSETUP(0xffa02d24 <_ARP_tx+0xb4>, 0xffa02d2e <_ARP_tx+0xbe>) LC1 = P1;
ffa02d24:	68 98       	R0 = B[P5++] (X);
ffa02d26:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa02d2a:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa02d2e:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02d30:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be8 <_txIdx> */
ffa02d34:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_NetOurIP> */
ffa02d38:	50 99       	R0 = B[P2] (X);
ffa02d3a:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa02d3e:	10 91       	R0 = [P2];
ffa02d40:	40 4e       	R0 >>= 0x8;
ffa02d42:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa02d46:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02d4a:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa02d4e:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02d52:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa02d56:	a7 b2       	[P4 + 0x28] = R7;
ffa02d58:	01 e8 00 00 	UNLINK;
ffa02d5c:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02d5e:	ff e2 a1 f5 	JUMP.L 0xffa018a0 <_bfin_EMAC_send_nocopy>;
	...

ffa02d64 <_ARP_req>:
ffa02d64:	ec 05       	[--SP] = (R7:5, P5:4);
ffa02d66:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02d6a:	38 30       	R7 = R0;
ffa02d6c:	ff e3 3e fe 	CALL 0xffa029e8 <_ARP_lu>;
ffa02d70:	00 0c       	CC = R0 == 0x0;
ffa02d72:	50 10       	IF !CC JUMP 0xffa02e12 <_ARP_req+0xae>;
ffa02d74:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c1c */
ffa02d78:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa02d7c:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900bfc <_rxIdx> */
ffa02d80:	16 91       	R6 = [P2];
ffa02d82:	0c e1 28 0c 	P4.L = 0xc28;		/* (3112)	P4=0xff900c28 <_NetArpLut> */
ffa02d86:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02d8a:	4c 32       	P1 = P4;
ffa02d8c:	46 51       	R5 = R6 + R0;
ffa02d8e:	6c 32       	P5 = P4;
ffa02d90:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02d92:	b2 e0 06 20 	LSETUP(0xffa02d96 <_ARP_req+0x32>, 0xffa02d9e <_ARP_req+0x3a>) LC1 = P2;
ffa02d96:	08 91       	R0 = [P1];
ffa02d98:	07 08       	CC = R7 == R0;
ffa02d9a:	21 18       	IF CC JUMP 0xffa02ddc <_ARP_req+0x78>;
ffa02d9c:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa02d9e:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02da0:	ff e3 be fd 	CALL 0xffa0291c <_ARP_lut_find>;
ffa02da4:	10 32       	P2 = R0;
ffa02da6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02da8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02dac:	09 e1 24 0c 	P1.L = 0xc24;		/* (3108)	P1=0xff900c24 <_NetArpLut_age> */
ffa02db0:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa02db2:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa02db4:	10 b1       	[P2 + 0x10] = R0;
ffa02db6:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02dba:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa02dbe:	17 93 00 00 
ffa02dc2:	d0 b0       	[P2 + 0xc] = R0;
ffa02dc4:	48 95       	R0 = W[P1] (X);
ffa02dc6:	08 64       	R0 += 0x1;		/* (  1) */
ffa02dc8:	08 97       	W[P1] = R0;
ffa02dca:	50 b5       	W[P2 + 0xa] = R0;
ffa02dcc:	07 30       	R0 = R7;
ffa02dce:	ff e3 51 ff 	CALL 0xffa02c70 <_ARP_tx>;
ffa02dd2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02dd4:	01 e8 00 00 	UNLINK;
ffa02dd8:	ac 05       	(R7:5, P5:4) = [SP++];
ffa02dda:	10 00       	RTS;
ffa02ddc:	08 a1       	R0 = [P1 + 0x10];
ffa02dde:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa02de0:	de 1f       	IF CC JUMP 0xffa02d9c <_ARP_req+0x38> (BP);
ffa02de2:	e8 a0       	R0 = [P5 + 0xc];
ffa02de4:	86 09       	CC = R6 < R0 (IU);
ffa02de6:	f6 1f       	IF CC JUMP 0xffa02dd2 <_ARP_req+0x6e> (BP);
ffa02de8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02dec:	0f 30       	R1 = R7;
ffa02dee:	00 e1 90 04 	R0.L = 0x490;		/* (1168)	R0=0xff900490(-7338864) */
ffa02df2:	ff e3 ab ed 	CALL 0xffa00948 <_printf_ip>;
ffa02df6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900490(-7338864) */
ffa02dfa:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa02dfe:	ff e3 41 ec 	CALL 0xffa00680 <_printf_str>;
ffa02e02:	07 30       	R0 = R7;
ffa02e04:	ff e3 36 ff 	CALL 0xffa02c70 <_ARP_tx>;
ffa02e08:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa02e0c:	ed b0 00 00 
ffa02e10:	e2 2f       	JUMP.S 0xffa02dd4 <_ARP_req+0x70>;
ffa02e12:	01 e8 00 00 	UNLINK;
ffa02e16:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e18:	ac 05       	(R7:5, P5:4) = [SP++];
ffa02e1a:	10 00       	RTS;

ffa02e1c <_tcp_length>:
ffa02e1c:	c5 04       	[--SP] = (P5:5);
ffa02e1e:	28 32       	P5 = R0;
ffa02e20:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02e24:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa02e26:	ff e3 93 f3 	CALL 0xffa0154c <_htons>;
ffa02e2a:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa02e2e:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa02e30:	51 54       	R1 = R1 & R2;
ffa02e32:	11 4f       	R1 <<= 0x2;
ffa02e34:	c0 42       	R0 = R0.L (Z);
ffa02e36:	08 52       	R0 = R0 - R1;
ffa02e38:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa02e3c:	11 4d       	R1 >>>= 0x2;
ffa02e3e:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa02e40:	51 54       	R1 = R1 & R2;
ffa02e42:	01 e8 00 00 	UNLINK;
ffa02e46:	08 52       	R0 = R0 - R1;
ffa02e48:	85 04       	(P5:5) = [SP++];
ffa02e4a:	10 00       	RTS;

ffa02e4c <_tcp_checksum_calc>:
ffa02e4c:	08 32       	P1 = R0;
ffa02e4e:	ed 05       	[--SP] = (R7:5, P5:5);
ffa02e50:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02e54:	28 32       	P5 = R0;
ffa02e56:	31 30       	R6 = R1;
ffa02e58:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa02e5a:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa02e5c:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa02e5e:	b2 e0 03 20 	LSETUP(0xffa02e62 <_tcp_checksum_calc+0x16>, 0xffa02e64 <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa02e62:	08 94       	R0 = W[P1++] (Z);
ffa02e64:	45 51       	R5 = R5 + R0;
ffa02e66:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa02e6a:	10 4e       	R0 >>= 0x2;
ffa02e6c:	06 50       	R0 = R6 + R0;
ffa02e6e:	c0 42       	R0 = R0.L (Z);
ffa02e70:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa02e74:	ff e3 6c f3 	CALL 0xffa0154c <_htons>;
ffa02e78:	47 4f       	R7 <<= 0x8;
ffa02e7a:	c0 42       	R0 = R0.L (Z);
ffa02e7c:	c7 51       	R7 = R7 + R0;
ffa02e7e:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa02e80:	ef 50       	R3 = R7 + R5;
ffa02e82:	0d 1c       	IF CC JUMP 0xffa02e9c <_tcp_checksum_calc+0x50> (BP);
ffa02e84:	0e 32       	P1 = R6;
ffa02e86:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa02e8a:	10 4e       	R0 >>= 0x2;
ffa02e8c:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa02e8e:	0e 64       	R6 += 0x1;		/* (  1) */
ffa02e90:	a9 5a       	P2 = P1 + P5;
ffa02e92:	08 32       	P1 = R0;
ffa02e94:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02e96:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa02e98:	8a 5a       	P2 = P2 + P1;
ffa02e9a:	10 9b       	B[P2] = R0;
ffa02e9c:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa02ea0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02ea2:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa02ea6:	71 50       	R1 = R1 + R6;
ffa02ea8:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa02eac:	09 4d       	R1 >>>= 0x1;
ffa02eae:	18 4e       	R0 >>= 0x3;
ffa02eb0:	41 50       	R1 = R1 + R0;
ffa02eb2:	01 0d       	CC = R1 <= 0x0;
ffa02eb4:	09 18       	IF CC JUMP 0xffa02ec6 <_tcp_checksum_calc+0x7a>;
ffa02eb6:	55 32       	P2 = P5;
ffa02eb8:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa02eba:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02ebc:	0a 64       	R2 += 0x1;		/* (  1) */
ffa02ebe:	10 94       	R0 = W[P2++] (Z);
ffa02ec0:	0a 08       	CC = R2 == R1;
ffa02ec2:	c3 50       	R3 = R3 + R0;
ffa02ec4:	fc 17       	IF !CC JUMP 0xffa02ebc <_tcp_checksum_calc+0x70> (BP);
ffa02ec6:	d8 42       	R0 = R3.L (Z);
ffa02ec8:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa02ecc:	08 50       	R0 = R0 + R1;
ffa02ece:	c0 43       	R0 =~ R0;
ffa02ed0:	01 e8 00 00 	UNLINK;
ffa02ed4:	c0 42       	R0 = R0.L (Z);
ffa02ed6:	ad 05       	(R7:5, P5:5) = [SP++];
ffa02ed8:	10 00       	RTS;
	...

ffa02edc <_tcp_checksum_set>:
ffa02edc:	c5 04       	[--SP] = (P5:5);
ffa02ede:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa02ee2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02ee6:	0a e1 e8 0b 	P2.L = 0xbe8;		/* (3048)	P2=0xff900be8 <_txIdx> */
ffa02eea:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa02eee:	10 95 00 00 
ffa02ef2:	10 32       	P2 = R0;
ffa02ef4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c24 <_NetArpLut_age> */
ffa02ef8:	09 e1 ec 0b 	P1.L = 0xbec;		/* (3052)	P1=0xff900bec <_txbuf> */
ffa02efc:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02efe:	52 91       	P2 = [P2];
ffa02f00:	95 ad       	P5 = [P2 + 0x18];
ffa02f02:	45 30       	R0 = P5;
ffa02f04:	ff e3 a4 ff 	CALL 0xffa02e4c <_tcp_checksum_calc>;
ffa02f08:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa02f0c:	01 e8 00 00 	UNLINK;
ffa02f10:	85 04       	(P5:5) = [SP++];
ffa02f12:	10 00       	RTS;

ffa02f14 <_tcp_checksum_check>:
ffa02f14:	10 32       	P2 = R0;
ffa02f16:	78 05       	[--SP] = (R7:7);
ffa02f18:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02f1c:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa02f20:	ff e3 96 ff 	CALL 0xffa02e4c <_tcp_checksum_calc>;
ffa02f24:	0f 30       	R1 = R7;
ffa02f26:	c7 42       	R7 = R0.L (Z);
ffa02f28:	39 08       	CC = R1 == R7;
ffa02f2a:	19 18       	IF CC JUMP 0xffa02f5c <_tcp_checksum_check+0x48>;
ffa02f2c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02f30:	00 e1 b0 04 	R0.L = 0x4b0;		/* (1200)	R0=0xff9004b0(-7338832) */
ffa02f34:	ff e3 0c ec 	CALL 0xffa0074c <_printf_hex>;
ffa02f38:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004b0(-7338832) */
ffa02f3c:	0f 30       	R1 = R7;
ffa02f3e:	00 e1 cc 04 	R0.L = 0x4cc;		/* (1228)	R0=0xff9004cc(-7338804) */
ffa02f42:	ff e3 05 ec 	CALL 0xffa0074c <_printf_hex>;
ffa02f46:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004cc(-7338804) */
ffa02f4a:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa02f4e:	ff e3 99 eb 	CALL 0xffa00680 <_printf_str>;
ffa02f52:	01 e8 00 00 	UNLINK;
ffa02f56:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f58:	38 05       	(R7:7) = [SP++];
ffa02f5a:	10 00       	RTS;
ffa02f5c:	01 e8 00 00 	UNLINK;
ffa02f60:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f62:	38 05       	(R7:7) = [SP++];
ffa02f64:	10 00       	RTS;
	...

ffa02f68 <_tcp_packet_setup>:
ffa02f68:	ed 05       	[--SP] = (R7:5, P5:5);
ffa02f6a:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02f6e:	29 32       	P5 = R1;
ffa02f70:	7f 30       	R7 = FP;
ffa02f72:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa02f74:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02f76:	f0 bb       	[FP -0x4] = R0;
ffa02f78:	07 30       	R0 = R7;
ffa02f7a:	2a 30       	R5 = R2;
ffa02f7c:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa02f80:	ff e3 2c f7 	CALL 0xffa01dd8 <_eth_header_setup>;
ffa02f84:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa02f88:	68 99 00 00 
ffa02f8c:	80 0c       	CC = R0 < 0x0;
ffa02f8e:	14 18       	IF CC JUMP 0xffa02fb6 <_tcp_packet_setup+0x4e>;
ffa02f90:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02f92:	f0 b0       	[SP + 0xc] = R0;
ffa02f94:	15 30       	R2 = R5;
ffa02f96:	01 30       	R0 = R1;
ffa02f98:	0f 30       	R1 = R7;
ffa02f9a:	ff e3 0d f3 	CALL 0xffa015b4 <_ip_header_setup>;
ffa02f9e:	b9 a2       	R1 = [FP + 0x28];
ffa02fa0:	f1 b0       	[SP + 0xc] = R1;
ffa02fa2:	f9 a2       	R1 = [FP + 0x2c];
ffa02fa4:	31 b1       	[SP + 0x10] = R1;
ffa02fa6:	72 43       	R2 = R6.B (Z);
ffa02fa8:	0f 30       	R1 = R7;
ffa02faa:	ff e3 91 f3 	CALL 0xffa016cc <_tcp_header_setup>;
ffa02fae:	01 e8 00 00 	UNLINK;
ffa02fb2:	ad 05       	(R7:5, P5:5) = [SP++];
ffa02fb4:	10 00       	RTS;
ffa02fb6:	01 e8 00 00 	UNLINK;
ffa02fba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02fbc:	ad 05       	(R7:5, P5:5) = [SP++];
ffa02fbe:	10 00       	RTS;

ffa02fc0 <_tcp_burst>:
ffa02fc0:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02fc2:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02fc6:	78 b2       	[FP + 0x24] = R0;
ffa02fc8:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 */
ffa02fcc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be8 <_txIdx> */
ffa02fd0:	7a a2       	R2 = [FP + 0x24];
ffa02fd2:	0b e1 10 0d 	P3.L = 0xd10;		/* (3344)	P3=0xff900d10 <_g_httpHeaderLen> */
ffa02fd6:	0a e1 14 0d 	P2.L = 0xd14;		/* (3348)	P2=0xff900d14 <_g_httpContentLen> */
ffa02fda:	02 0d       	CC = R2 <= 0x0;
ffa02fdc:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa02fe0:	10 91 00 00 
ffa02fe4:	19 91       	R1 = [P3];
ffa02fe6:	79 18       	IF CC JUMP 0xffa030d8 <_tcp_burst+0x118>;
ffa02fe8:	41 50       	R1 = R1 + R0;
ffa02fea:	8e 09       	CC = R6 < R1 (IU);
ffa02fec:	21 32       	P4 = R1;
ffa02fee:	75 10       	IF !CC JUMP 0xffa030d8 <_tcp_burst+0x118>;
ffa02ff0:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa02ff2:	38 20       	JUMP.S 0xffa03062 <_tcp_burst+0xa2>;
ffa02ff4:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa02ff6:	18 91       	R0 = [P3];
ffa02ff8:	06 52       	R0 = R6 - R0;
ffa02ffa:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa02ffe:	08 50       	R0 = R0 + R1;
ffa03000:	17 30       	R2 = R7;
ffa03002:	0d 30       	R1 = R5;
ffa03004:	ff e3 e6 ec 	CALL 0xffa009d0 <_memcpy_>;
ffa03008:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bec <_txbuf> */
ffa0300c:	09 e1 fc 0c 	P1.L = 0xcfc;		/* (3324)	P1=0xff900cfc <_TcpSeqHttpStart> */
ffa03010:	08 91       	R0 = [P1];
ffa03012:	be 51       	R6 = R6 + R7;
ffa03014:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d14 <_g_httpContentLen> */
ffa03018:	0a e1 f4 0c 	P2.L = 0xcf4;		/* (3316)	P2=0xff900cf4 <_TcpSeqHost> */
ffa0301c:	06 50       	R0 = R6 + R0;
ffa0301e:	10 93       	[P2] = R0;
ffa03020:	27 50       	R0 = R7 + R4;
ffa03022:	ff e3 5d ff 	CALL 0xffa02edc <_tcp_checksum_set>;
ffa03026:	ff e3 3d f4 	CALL 0xffa018a0 <_bfin_EMAC_send_nocopy>;
ffa0302a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf4 <_TcpSeqHost> */
ffa0302e:	0a e1 fc 0b 	P2.L = 0xbfc;		/* (3068)	P2=0xff900bfc <_rxIdx> */
ffa03032:	10 95       	R0 = W[P2] (Z);
ffa03034:	10 32       	P2 = R0;
ffa03036:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900cfc <_TcpSeqHttpStart> */
ffa0303a:	09 e1 00 0c 	P1.L = 0xc00;		/* (3072)	P1=0xff900c00 <_rxbuf> */
ffa0303e:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa03040:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03042:	52 91       	P2 = [P2];
ffa03044:	90 a2       	R0 = [P2 + 0x28];
ffa03046:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa03048:	07 1c       	IF CC JUMP 0xffa03056 <_tcp_burst+0x96> (BP);
ffa0304a:	90 a2       	R0 = [P2 + 0x28];
ffa0304c:	4d 30       	R1 = P5;
ffa0304e:	7a a2       	R2 = [FP + 0x24];
ffa03050:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa03052:	11 50       	R0 = R1 + R2;
ffa03054:	a8 06       	IF !CC P5 = R0;
ffa03056:	79 ae       	P1 = [FP + 0x24];
ffa03058:	69 09       	CC = P1 <= P5;
ffa0305a:	40 18       	IF CC JUMP 0xffa030da <_tcp_burst+0x11a>;
ffa0305c:	44 30       	R0 = P4;
ffa0305e:	86 09       	CC = R6 < R0 (IU);
ffa03060:	3d 10       	IF !CC JUMP 0xffa030da <_tcp_burst+0x11a>;
ffa03062:	44 30       	R0 = P4;
ffa03064:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c00 <_rxbuf> */
ffa03068:	f0 53       	R7 = R0 - R6;
ffa0306a:	09 e1 fc 0c 	P1.L = 0xcfc;		/* (3324)	P1=0xff900cfc <_TcpSeqHttpStart> */
ffa0306e:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa03072:	07 cc 38 4e 	R7 = MIN (R7, R0) || R0 = [P1] || NOP;
ffa03076:	08 91 00 00 
ffa0307a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bfc <_rxIdx> */
ffa0307e:	06 50       	R0 = R6 + R0;
ffa03080:	0a e1 f4 0c 	P2.L = 0xcf4;		/* (3316)	P2=0xff900cf4 <_TcpSeqHost> */
ffa03084:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa03086:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900cfc <_TcpSeqHttpStart> */
ffa0308a:	10 93       	[P2] = R0;
ffa0308c:	09 e1 f8 0c 	P1.L = 0xcf8;		/* (3320)	P1=0xff900cf8 <_TcpSeqClient> */
ffa03090:	f1 b0       	[SP + 0xc] = R1;
ffa03092:	30 b1       	[SP + 0x10] = R0;
ffa03094:	08 91       	R0 = [P1];
ffa03096:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf4 <_TcpSeqHost> */
ffa0309a:	70 b1       	[SP + 0x14] = R0;
ffa0309c:	0a e1 e0 0b 	P2.L = 0xbe0;		/* (3040)	P2=0xff900be0 <_NetDestIP> */
ffa030a0:	4f 30       	R1 = FP;
ffa030a2:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || R2 = [P2] || NOP;
ffa030a6:	12 91 00 00 
ffa030aa:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa030ac:	ff e3 5e ff 	CALL 0xffa02f68 <_tcp_packet_setup>;
ffa030b0:	28 30       	R5 = R0;
ffa030b2:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa030b6:	00 0d       	CC = R0 <= 0x0;
ffa030b8:	cf 1b       	IF CC JUMP 0xffa03056 <_tcp_burst+0x96>;
ffa030ba:	18 91       	R0 = [P3];
ffa030bc:	30 0a       	CC = R0 <= R6 (IU);
ffa030be:	9b 1f       	IF CC JUMP 0xffa02ff4 <_tcp_burst+0x34> (BP);
ffa030c0:	30 53       	R4 = R0 - R6;
ffa030c2:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa030c6:	06 50       	R0 = R6 + R0;
ffa030c8:	0d 30       	R1 = R5;
ffa030ca:	14 30       	R2 = R4;
ffa030cc:	ff e3 82 ec 	CALL 0xffa009d0 <_memcpy_>;
ffa030d0:	65 51       	R5 = R5 + R4;
ffa030d2:	e7 53       	R7 = R7 - R4;
ffa030d4:	a6 51       	R6 = R6 + R4;
ffa030d6:	90 2f       	JUMP.S 0xffa02ff6 <_tcp_burst+0x36>;
ffa030d8:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa030da:	01 e8 00 00 	UNLINK;
ffa030de:	45 30       	R0 = P5;
ffa030e0:	a3 05       	(R7:4, P5:3) = [SP++];
ffa030e2:	10 00       	RTS;

ffa030e4 <_tcp_rx>:
ffa030e4:	eb 05       	[--SP] = (R7:5, P5:3);
ffa030e6:	20 32       	P4 = R0;
ffa030e8:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa030ec:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa030f0:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa030f2:	ff e3 2d f2 	CALL 0xffa0154c <_htons>;
ffa030f6:	c0 42       	R0 = R0.L (Z);
ffa030f8:	07 08       	CC = R7 == R0;
ffa030fa:	06 18       	IF CC JUMP 0xffa03106 <_tcp_rx+0x22>;
ffa030fc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa030fe:	01 e8 00 00 	UNLINK;
ffa03102:	ab 05       	(R7:5, P5:3) = [SP++];
ffa03104:	10 00       	RTS;
ffa03106:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa0310a:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa0310c:	08 08       	CC = R0 == R1;
ffa0310e:	f7 17       	IF !CC JUMP 0xffa030fc <_tcp_rx+0x18> (BP);
ffa03110:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa03114:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa03118:	ff e3 1a f2 	CALL 0xffa0154c <_htons>;
ffa0311c:	c0 42       	R0 = R0.L (Z);
ffa0311e:	07 08       	CC = R7 == R0;
ffa03120:	ee 17       	IF !CC JUMP 0xffa030fc <_tcp_rx+0x18> (BP);
ffa03122:	44 30       	R0 = P4;
ffa03124:	80 64       	R0 += 0x10;		/* ( 16) */
ffa03126:	ff e3 87 f2 	CALL 0xffa01634 <_ip_header_checksum>;
ffa0312a:	40 43       	R0 = R0.B (Z);
ffa0312c:	00 0c       	CC = R0 == 0x0;
ffa0312e:	e7 1f       	IF CC JUMP 0xffa030fc <_tcp_rx+0x18> (BP);
ffa03130:	4c 30       	R1 = P4;
ffa03132:	41 64       	R1 += 0x8;		/* (  8) */
ffa03134:	e0 a1       	R0 = [P4 + 0x1c];
ffa03136:	ff e3 19 fc 	CALL 0xffa02968 <_ARP_lut_add>;
ffa0313a:	44 30       	R0 = P4;
ffa0313c:	ff e3 70 fe 	CALL 0xffa02e1c <_tcp_length>;
ffa03140:	30 30       	R6 = R0;
ffa03142:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa03146:	0e 30       	R1 = R6;
ffa03148:	00 e1 dc 04 	R0.L = 0x4dc;		/* (1244)	R0=0xff9004dc(-7338788) */
ffa0314c:	ff e3 5c eb 	CALL 0xffa00804 <_printf_int>;
ffa03150:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004dc(-7338788) */
ffa03154:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa03158:	ff e3 94 ea 	CALL 0xffa00680 <_printf_str>;
ffa0315c:	44 30       	R0 = P4;
ffa0315e:	0e 30       	R1 = R6;
ffa03160:	ff e3 da fe 	CALL 0xffa02f14 <_tcp_checksum_check>;
ffa03164:	40 43       	R0 = R0.B (Z);
ffa03166:	00 0c       	CC = R0 == 0x0;
ffa03168:	ca 1b       	IF CC JUMP 0xffa030fc <_tcp_rx+0x18>;
ffa0316a:	00 00       	NOP;
ffa0316c:	00 00       	NOP;
ffa0316e:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa03170:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03174:	48 43       	R0 = R1.B (Z);
ffa03176:	10 08       	CC = R0 == R2;
ffa03178:	fb 18       	IF CC JUMP 0xffa0336e <_tcp_rx+0x28a>;
ffa0317a:	10 0c       	CC = R0 == 0x2;
ffa0317c:	14 19       	IF CC JUMP 0xffa033a4 <_tcp_rx+0x2c0>;
ffa0317e:	48 43       	R0 = R1.B (Z);
ffa03180:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03182:	08 08       	CC = R0 == R1;
ffa03184:	8f 18       	IF CC JUMP 0xffa032a2 <_tcp_rx+0x1be>;
ffa03186:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03188:	b5 10       	IF !CC JUMP 0xffa032f2 <_tcp_rx+0x20e>;
ffa0318a:	00 00       	NOP;
ffa0318c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d10 <_g_httpHeaderLen> */
ffa03190:	0b e1 00 0d 	P3.L = 0xd00;		/* (3328)	P3=0xff900d00 <_TcpState> */
ffa03194:	00 00       	NOP;
ffa03196:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa0319a:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa0319c:	42 10       	IF !CC JUMP 0xffa03220 <_tcp_rx+0x13c>;
ffa0319e:	18 91       	R0 = [P3];
ffa031a0:	10 0c       	CC = R0 == 0x2;
ffa031a2:	ad 17       	IF !CC JUMP 0xffa030fc <_tcp_rx+0x18> (BP);
ffa031a4:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000 <_l1_data_a>(-7340032) */
ffa031a8:	a0 a2       	R0 = [P4 + 0x28];
ffa031aa:	05 e1 e0 0b 	R5.L = 0xbe0;		/* (3040)	R5=0xff900be0 <_NetDestIP>(-7336992) */
ffa031ae:	a7 e5 30 00 	R7 = B[P4 + 0x30] (X);
ffa031b2:	ff e3 d9 f1 	CALL 0xffa01564 <_htonl>;
ffa031b6:	15 32       	P2 = R5;
ffa031b8:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa031bc:	30 50       	R0 = R0 + R6;
ffa031be:	0d e1 f8 0c 	P5.L = 0xcf8;		/* (3320)	P5=0xff900cf8 <_TcpSeqClient> */
ffa031c2:	28 93       	[P5] = R0;
ffa031c4:	e0 a1       	R0 = [P4 + 0x1c];
ffa031c6:	10 93       	[P2] = R0;
ffa031c8:	e0 a2       	R0 = [P4 + 0x2c];
ffa031ca:	ff e3 cd f1 	CALL 0xffa01564 <_htonl>;
ffa031ce:	08 30       	R1 = R0;
ffa031d0:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d00 <_TcpState> */
ffa031d4:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa031d8:	0b e1 fc 0c 	P3.L = 0xcfc;		/* (3324)	P3=0xff900cfc <_TcpSeqHttpStart> */
ffa031dc:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa031de:	1b 91       	R3 = [P3];
ffa031e0:	4a 19       	IF CC JUMP 0xffa03474 <_tcp_rx+0x390>;
ffa031e2:	06 0c       	CC = R6 == 0x0;
ffa031e4:	48 15       	IF !CC JUMP 0xffa03474 <_tcp_rx+0x390> (BP);
ffa031e6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be0 <_NetDestIP> */
ffa031ea:	0a e1 10 0d 	P2.L = 0xd10;		/* (3344)	P2=0xff900d10 <_g_httpHeaderLen> */
ffa031ee:	10 91       	R0 = [P2];
ffa031f0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d10 <_g_httpHeaderLen> */
ffa031f4:	0a e1 14 0d 	P2.L = 0xd14;		/* (3348)	P2=0xff900d14 <_g_httpContentLen> */
ffa031f8:	04 cc 0b 44 	R2 = R1 - R3 (NS) || R1 = [P2] || NOP;
ffa031fc:	11 91 00 00 
ffa03200:	08 50       	R0 = R0 + R1;
ffa03202:	02 08       	CC = R2 == R0;
ffa03204:	8a 15       	IF !CC JUMP 0xffa03518 <_tcp_rx+0x434> (BP);
ffa03206:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d14 <_g_httpContentLen> */
ffa0320a:	0a e1 18 0d 	P2.L = 0xd18;		/* (3352)	P2=0xff900d18 <_g_httpRxed> */
ffa0320e:	16 93       	[P2] = R6;
ffa03210:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d18 <_g_httpRxed> */
ffa03214:	13 50       	R0 = R3 + R2;
ffa03216:	0a e1 f4 0c 	P2.L = 0xcf4;		/* (3316)	P2=0xff900cf4 <_TcpSeqHost> */
ffa0321a:	10 93       	[P2] = R0;
ffa0321c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0321e:	70 2f       	JUMP.S 0xffa030fe <_tcp_rx+0x1a>;
ffa03220:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03222:	1f 91       	R7 = [P3];
ffa03224:	07 08       	CC = R7 == R0;
ffa03226:	59 19       	IF CC JUMP 0xffa034d8 <_tcp_rx+0x3f4>;
ffa03228:	07 0c       	CC = R7 == 0x0;
ffa0322a:	ba 17       	IF !CC JUMP 0xffa0319e <_tcp_rx+0xba> (BP);
ffa0322c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa03230:	00 e1 58 05 	R0.L = 0x558;		/* (1368)	R0=0xff900558(-7338664) */
ffa03234:	ff e3 26 ea 	CALL 0xffa00680 <_printf_str>;
ffa03238:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf4 <_TcpSeqHost> */
ffa0323c:	0a e1 18 0d 	P2.L = 0xd18;		/* (3352)	P2=0xff900d18 <_g_httpRxed> */
ffa03240:	17 93       	[P2] = R7;
ffa03242:	a0 a2       	R0 = [P4 + 0x28];
ffa03244:	ff e3 90 f1 	CALL 0xffa01564 <_htonl>;
ffa03248:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d18 <_g_httpRxed> */
ffa0324c:	0a e1 f8 0c 	P2.L = 0xcf8;		/* (3320)	P2=0xff900cf8 <_TcpSeqClient> */
ffa03250:	10 93       	[P2] = R0;
ffa03252:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf8 <_TcpSeqClient> */
ffa03256:	e2 a1       	R2 = [P4 + 0x1c];
ffa03258:	0a e1 e0 0b 	P2.L = 0xbe0;		/* (3040)	P2=0xff900be0 <_NetDestIP> */
ffa0325c:	12 93       	[P2] = R2;
ffa0325e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be0 <_NetDestIP> */
ffa03262:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03266:	0a e1 0c 0d 	P2.L = 0xd0c;		/* (3340)	P2=0xff900d0c <_TcpClientPort> */
ffa0326a:	11 97       	W[P2] = R1;
ffa0326c:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa0326e:	f1 b0       	[SP + 0xc] = R1;
ffa03270:	4f 30       	R1 = FP;
ffa03272:	30 b1       	[SP + 0x10] = R0;
ffa03274:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03276:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa0327a:	77 b1 00 00 
ffa0327e:	ff e3 75 fe 	CALL 0xffa02f68 <_tcp_packet_setup>;
ffa03282:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03286:	00 0d       	CC = R0 <= 0x0;
ffa03288:	8b 1b       	IF CC JUMP 0xffa0319e <_tcp_rx+0xba>;
ffa0328a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d0c <_TcpClientPort> */
ffa0328e:	0a e1 00 0d 	P2.L = 0xd00;		/* (3328)	P2=0xff900d00 <_TcpState> */
ffa03292:	17 93       	[P2] = R7;
ffa03294:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03296:	ff e3 23 fe 	CALL 0xffa02edc <_tcp_checksum_set>;
ffa0329a:	ff e3 03 f3 	CALL 0xffa018a0 <_bfin_EMAC_send_nocopy>;
ffa0329e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa032a0:	2f 2f       	JUMP.S 0xffa030fe <_tcp_rx+0x1a>;
ffa032a2:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900cfc <_TcpSeqHttpStart> */
ffa032a6:	0b e1 00 0d 	P3.L = 0xd00;		/* (3328)	P3=0xff900d00 <_TcpState> */
ffa032aa:	18 91       	R0 = [P3];
ffa032ac:	08 0c       	CC = R0 == 0x1;
ffa032ae:	b9 17       	IF !CC JUMP 0xffa03220 <_tcp_rx+0x13c> (BP);
ffa032b0:	e0 a2       	R0 = [P4 + 0x2c];
ffa032b2:	ff e3 59 f1 	CALL 0xffa01564 <_htonl>;
ffa032b6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d00 <_TcpState> */
ffa032ba:	0a e1 f4 0c 	P2.L = 0xcf4;		/* (3316)	P2=0xff900cf4 <_TcpSeqHost> */
ffa032be:	11 91       	R1 = [P2];
ffa032c0:	08 08       	CC = R0 == R1;
ffa032c2:	31 19       	IF CC JUMP 0xffa03524 <_tcp_rx+0x440>;
ffa032c4:	00 00       	NOP;
ffa032c6:	00 00       	NOP;
ffa032c8:	00 00       	NOP;
ffa032ca:	e0 a2       	R0 = [P4 + 0x2c];
ffa032cc:	ff e3 4c f1 	CALL 0xffa01564 <_htonl>;
ffa032d0:	08 30       	R1 = R0;
ffa032d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa032d6:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa032da:	ff e3 37 eb 	CALL 0xffa00948 <_printf_ip>;
ffa032de:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa032e0:	18 93       	[P3] = R0;
ffa032e2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa032e6:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa032ea:	ff e3 cb e9 	CALL 0xffa00680 <_printf_str>;
ffa032ee:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa032f0:	07 2f       	JUMP.S 0xffa030fe <_tcp_rx+0x1a>;
ffa032f2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa032f6:	00 e1 34 05 	R0.L = 0x534;		/* (1332)	R0=0xff900534(-7338700) */
ffa032fa:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900be0 <_NetDestIP>(-7336992) */
ffa032fe:	ff e3 c1 e9 	CALL 0xffa00680 <_printf_str>;
ffa03302:	05 e1 e0 0b 	R5.L = 0xbe0;		/* (3040)	R5=0xff900be0 <_NetDestIP>(-7336992) */
ffa03306:	a0 a2       	R0 = [P4 + 0x28];
ffa03308:	ff e3 2e f1 	CALL 0xffa01564 <_htonl>;
ffa0330c:	15 32       	P2 = R5;
ffa0330e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900cf8 <_TcpSeqClient> */
ffa03312:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d00 <_TcpState> */
ffa03316:	0d e1 f8 0c 	P5.L = 0xcf8;		/* (3320)	P5=0xff900cf8 <_TcpSeqClient> */
ffa0331a:	0b e1 00 0d 	P3.L = 0xd00;		/* (3328)	P3=0xff900d00 <_TcpState> */
ffa0331e:	28 93       	[P5] = R0;
ffa03320:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa03324:	18 91 00 00 
ffa03328:	e2 a1       	R2 = [P4 + 0x1c];
ffa0332a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0332c:	10 0c       	CC = R0 == 0x2;
ffa0332e:	12 93       	[P2] = R2;
ffa03330:	29 93       	[P5] = R1;
ffa03332:	03 18       	IF CC JUMP 0xffa03338 <_tcp_rx+0x254>;
ffa03334:	00 0c       	CC = R0 == 0x0;
ffa03336:	7d 14       	IF !CC JUMP 0xffa03430 <_tcp_rx+0x34c> (BP);
ffa03338:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0333a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf4 <_TcpSeqHost> */
ffa0333e:	f0 b0       	[SP + 0xc] = R0;
ffa03340:	0a e1 f4 0c 	P2.L = 0xcf4;		/* (3316)	P2=0xff900cf4 <_TcpSeqHost> */
ffa03344:	10 91       	R0 = [P2];
ffa03346:	71 b1       	[SP + 0x14] = R1;
ffa03348:	4f 30       	R1 = FP;
ffa0334a:	30 b1       	[SP + 0x10] = R0;
ffa0334c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0334e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03350:	ff e3 0c fe 	CALL 0xffa02f68 <_tcp_packet_setup>;
ffa03354:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03358:	00 0d       	CC = R0 <= 0x0;
ffa0335a:	6b 18       	IF CC JUMP 0xffa03430 <_tcp_rx+0x34c>;
ffa0335c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0335e:	18 93       	[P3] = R0;
ffa03360:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03362:	ff e3 bd fd 	CALL 0xffa02edc <_tcp_checksum_set>;
ffa03366:	ff e3 9d f2 	CALL 0xffa018a0 <_bfin_EMAC_send_nocopy>;
ffa0336a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0336c:	c9 2e       	JUMP.S 0xffa030fe <_tcp_rx+0x1a>;
ffa0336e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03372:	00 e1 f0 04 	R0.L = 0x4f0;		/* (1264)	R0=0xff9004f0(-7338768) */
ffa03376:	ff e3 85 e9 	CALL 0xffa00680 <_printf_str>;
ffa0337a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf4 <_TcpSeqHost> */
ffa0337e:	0a e1 00 0d 	P2.L = 0xd00;		/* (3328)	P2=0xff900d00 <_TcpState> */
ffa03382:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03384:	17 93       	[P2] = R7;
ffa03386:	a0 a2       	R0 = [P4 + 0x28];
ffa03388:	ff e3 ee f0 	CALL 0xffa01564 <_htonl>;
ffa0338c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d00 <_TcpState> */
ffa03390:	0a e1 f8 0c 	P2.L = 0xcf8;		/* (3320)	P2=0xff900cf8 <_TcpSeqClient> */
ffa03394:	10 93       	[P2] = R0;
ffa03396:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf8 <_TcpSeqClient> */
ffa0339a:	0a e1 18 0d 	P2.L = 0xd18;		/* (3352)	P2=0xff900d18 <_g_httpRxed> */
ffa0339e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa033a0:	17 93       	[P2] = R7;
ffa033a2:	ae 2e       	JUMP.S 0xffa030fe <_tcp_rx+0x1a>;
ffa033a4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa033a8:	00 e1 fc 04 	R0.L = 0x4fc;		/* (1276)	R0=0xff9004fc(-7338756) */
ffa033ac:	ff e3 6a e9 	CALL 0xffa00680 <_printf_str>;
ffa033b0:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900cf8 <_TcpSeqClient> */
ffa033b4:	a0 a2       	R0 = [P4 + 0x28];
ffa033b6:	ff e3 d7 f0 	CALL 0xffa01564 <_htonl>;
ffa033ba:	0d e1 f8 0c 	P5.L = 0xcf8;		/* (3320)	P5=0xff900cf8 <_TcpSeqClient> */
ffa033be:	28 93       	[P5] = R0;
ffa033c0:	44 30       	R0 = P4;
ffa033c2:	ff e3 2d fd 	CALL 0xffa02e1c <_tcp_length>;
ffa033c6:	29 91       	R1 = [P5];
ffa033c8:	09 64       	R1 += 0x1;		/* (  1) */
ffa033ca:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d18 <_g_httpRxed> */
ffa033ce:	08 50       	R0 = R0 + R1;
ffa033d0:	0a e1 0c 0d 	P2.L = 0xd0c;		/* (3340)	P2=0xff900d0c <_TcpClientPort> */
ffa033d4:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa033d8:	11 97       	W[P2] = R1;
ffa033da:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d0c <_TcpClientPort> */
ffa033de:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa033e2:	28 93 00 00 
ffa033e6:	0a e1 18 0d 	P2.L = 0xd18;		/* (3352)	P2=0xff900d18 <_g_httpRxed> */
ffa033ea:	11 93       	[P2] = R1;
ffa033ec:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d18 <_g_httpRxed> */
ffa033f0:	e2 a1       	R2 = [P4 + 0x1c];
ffa033f2:	0a e1 e0 0b 	P2.L = 0xbe0;		/* (3040)	P2=0xff900be0 <_NetDestIP> */
ffa033f6:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa033f8:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900cf8 <_TcpSeqClient> */
ffa033fc:	12 93       	[P2] = R2;
ffa033fe:	0d e1 f4 0c 	P5.L = 0xcf4;		/* (3316)	P5=0xff900cf4 <_TcpSeqHost> */
ffa03402:	f1 b0       	[SP + 0xc] = R1;
ffa03404:	29 91       	R1 = [P5];
ffa03406:	31 b1       	[SP + 0x10] = R1;
ffa03408:	4f 30       	R1 = FP;
ffa0340a:	70 b1       	[SP + 0x14] = R0;
ffa0340c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0340e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03410:	ff e3 ac fd 	CALL 0xffa02f68 <_tcp_packet_setup>;
ffa03414:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03418:	00 0d       	CC = R0 <= 0x0;
ffa0341a:	5c 18       	IF CC JUMP 0xffa034d2 <_tcp_rx+0x3ee>;
ffa0341c:	28 91       	R0 = [P5];
ffa0341e:	08 64       	R0 += 0x1;		/* (  1) */
ffa03420:	28 93       	[P5] = R0;
ffa03422:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03424:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be0 <_NetDestIP> */
ffa03428:	0a e1 00 0d 	P2.L = 0xd00;		/* (3328)	P2=0xff900d00 <_TcpState> */
ffa0342c:	10 93       	[P2] = R0;
ffa0342e:	33 2f       	JUMP.S 0xffa03294 <_tcp_rx+0x1b0>;
ffa03430:	18 91       	R0 = [P3];
ffa03432:	18 0c       	CC = R0 == 0x3;
ffa03434:	b0 16       	IF !CC JUMP 0xffa03194 <_tcp_rx+0xb0> (BP);
ffa03436:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d00 <_TcpState> */
ffa0343a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0343c:	0a e1 18 0d 	P2.L = 0xd18;		/* (3352)	P2=0xff900d18 <_g_httpRxed> */
ffa03440:	10 93       	[P2] = R0;
ffa03442:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03444:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d18 <_g_httpRxed> */
ffa03448:	f0 b0       	[SP + 0xc] = R0;
ffa0344a:	0a e1 f4 0c 	P2.L = 0xcf4;		/* (3316)	P2=0xff900cf4 <_TcpSeqHost> */
ffa0344e:	10 91       	R0 = [P2];
ffa03450:	15 32       	P2 = R5;
ffa03452:	30 b1       	[SP + 0x10] = R0;
ffa03454:	28 91       	R0 = [P5];
ffa03456:	70 b1       	[SP + 0x14] = R0;
ffa03458:	4f 30       	R1 = FP;
ffa0345a:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa0345e:	12 91 00 00 
ffa03462:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03464:	ff e3 82 fd 	CALL 0xffa02f68 <_tcp_packet_setup>;
ffa03468:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0346c:	00 0d       	CC = R0 <= 0x0;
ffa0346e:	93 1a       	IF CC JUMP 0xffa03194 <_tcp_rx+0xb0>;
ffa03470:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03472:	d9 2f       	JUMP.S 0xffa03424 <_tcp_rx+0x340>;
ffa03474:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa03478:	38 54       	R0 = R0 & R7;
ffa0347a:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa0347c:	4c 30       	R1 = P4;
ffa0347e:	10 4d       	R0 >>>= 0x2;
ffa03480:	01 50       	R0 = R1 + R0;
ffa03482:	0e 30       	R1 = R6;
ffa03484:	00 e3 d4 04 	CALL 0xffa03e2c <_httpCollate>;
ffa03488:	00 0c       	CC = R0 == 0x0;
ffa0348a:	2f 1c       	IF CC JUMP 0xffa034e8 <_tcp_rx+0x404> (BP);
ffa0348c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf4 <_TcpSeqHost> */
ffa03490:	0a e1 f4 0c 	P2.L = 0xcf4;		/* (3316)	P2=0xff900cf4 <_TcpSeqHost> */
ffa03494:	10 91       	R0 = [P2];
ffa03496:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf4 <_TcpSeqHost> */
ffa0349a:	0a e1 10 0d 	P2.L = 0xd10;		/* (3344)	P2=0xff900d10 <_g_httpHeaderLen> */
ffa0349e:	11 91       	R1 = [P2];
ffa034a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d10 <_g_httpHeaderLen> */
ffa034a4:	0a e1 14 0d 	P2.L = 0xd14;		/* (3348)	P2=0xff900d14 <_g_httpContentLen> */
ffa034a8:	18 93       	[P3] = R0;
ffa034aa:	10 91       	R0 = [P2];
ffa034ac:	41 50       	R1 = R1 + R0;
ffa034ae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f0(-7339792) */
ffa034b2:	00 e1 74 05 	R0.L = 0x574;		/* (1396)	R0=0xff900574(-7338636) */
ffa034b6:	ff e3 a7 e9 	CALL 0xffa00804 <_printf_int>;
ffa034ba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900574(-7338636) */
ffa034be:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa034c2:	ff e3 df e8 	CALL 0xffa00680 <_printf_str>;
ffa034c6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034c8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa034ca:	ff e3 7b fd 	CALL 0xffa02fc0 <_tcp_burst>;
ffa034ce:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034d0:	17 2e       	JUMP.S 0xffa030fe <_tcp_rx+0x1a>;
ffa034d2:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa034d6:	54 2e       	JUMP.S 0xffa0317e <_tcp_rx+0x9a>;
ffa034d8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa034dc:	00 e1 44 05 	R0.L = 0x544;		/* (1348)	R0=0xff900544(-7338684) */
ffa034e0:	ff e3 d0 e8 	CALL 0xffa00680 <_printf_str>;
ffa034e4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034e6:	0c 2e       	JUMP.S 0xffa030fe <_tcp_rx+0x1a>;
ffa034e8:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa034ea:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d14 <_g_httpContentLen> */
ffa034ee:	f0 b0       	[SP + 0xc] = R0;
ffa034f0:	0a e1 f4 0c 	P2.L = 0xcf4;		/* (3316)	P2=0xff900cf4 <_TcpSeqHost> */
ffa034f4:	10 91       	R0 = [P2];
ffa034f6:	15 32       	P2 = R5;
ffa034f8:	30 b1       	[SP + 0x10] = R0;
ffa034fa:	28 91       	R0 = [P5];
ffa034fc:	70 b1       	[SP + 0x14] = R0;
ffa034fe:	4f 30       	R1 = FP;
ffa03500:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03504:	12 91 00 00 
ffa03508:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0350a:	ff e3 2f fd 	CALL 0xffa02f68 <_tcp_packet_setup>;
ffa0350e:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03512:	00 0d       	CC = R0 <= 0x0;
ffa03514:	c0 16       	IF !CC JUMP 0xffa03294 <_tcp_rx+0x1b0> (BP);
ffa03516:	f3 2d       	JUMP.S 0xffa030fc <_tcp_rx+0x18>;
ffa03518:	0a 30       	R1 = R2;
ffa0351a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0351c:	ff e3 52 fd 	CALL 0xffa02fc0 <_tcp_burst>;
ffa03520:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03522:	ee 2d       	JUMP.S 0xffa030fe <_tcp_rx+0x1a>;
ffa03524:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03526:	18 93       	[P3] = R0;
ffa03528:	a0 a2       	R0 = [P4 + 0x28];
ffa0352a:	ff e3 1d f0 	CALL 0xffa01564 <_htonl>;
ffa0352e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf4 <_TcpSeqHost> */
ffa03532:	0a e1 f8 0c 	P2.L = 0xcf8;		/* (3320)	P2=0xff900cf8 <_TcpSeqClient> */
ffa03536:	10 93       	[P2] = R0;
ffa03538:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa0353c:	00 e1 24 05 	R0.L = 0x524;		/* (1316)	R0=0xff900524(-7338716) */
ffa03540:	ff e3 a0 e8 	CALL 0xffa00680 <_printf_str>;
ffa03544:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03546:	dc 2d       	JUMP.S 0xffa030fe <_tcp_rx+0x1a>;

ffa03548 <_htmlForm>:
ffa03548:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0354c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa03550:	02 e1 90 05 	R2.L = 0x590;		/* (1424)	R2=0xff900590(-7338608) */
ffa03554:	01 e8 00 00 	UNLINK;
ffa03558:	ff e2 6c ea 	JUMP.L 0xffa00a30 <_strcpy_>;

ffa0355c <_htmlDiv>:
ffa0355c:	12 43       	R2 = R2.B (X);
ffa0355e:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa03562:	1a 08       	CC = R2 == R3;
ffa03564:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03568:	09 18       	IF CC JUMP 0xffa0357a <_htmlDiv+0x1e>;
ffa0356a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900590(-7338608) */
ffa0356e:	02 e1 e4 05 	R2.L = 0x5e4;		/* (1508)	R2=0xff9005e4(-7338524) */
ffa03572:	01 e8 00 00 	UNLINK;
ffa03576:	ff e2 5d ea 	JUMP.L 0xffa00a30 <_strcpy_>;
ffa0357a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005e4(-7338524) */
ffa0357e:	02 e1 b0 05 	R2.L = 0x5b0;		/* (1456)	R2=0xff9005b0(-7338576) */
ffa03582:	01 e8 00 00 	UNLINK;
ffa03586:	ff e2 55 ea 	JUMP.L 0xffa00a30 <_strcpy_>;
	...

ffa0358c <_html404>:
ffa0358c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03590:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03592:	4f 30       	R1 = FP;
ffa03594:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005b0(-7338576) */
ffa03598:	f0 bb       	[FP -0x4] = R0;
ffa0359a:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa0359c:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa035a0:	02 e1 18 06 	R2.L = 0x618;		/* (1560)	R2=0xff900618(-7338472) */
ffa035a4:	ff e3 46 ea 	CALL 0xffa00a30 <_strcpy_>;
ffa035a8:	f0 b9       	R0 = [FP -0x4];
ffa035aa:	01 e8 00 00 	UNLINK;
ffa035ae:	10 00       	RTS;

ffa035b0 <_htmlCursorOption>:
ffa035b0:	68 05       	[--SP] = (R7:5);
ffa035b2:	2a 30       	R5 = R2;
ffa035b4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900618(-7338472) */
ffa035b8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa035bc:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa035c0:	3f a2 00 00 
ffa035c4:	02 e1 34 06 	R2.L = 0x634;		/* (1588)	R2=0xff900634(-7338444) */
ffa035c8:	ff e3 34 ea 	CALL 0xffa00a30 <_strcpy_>;
ffa035cc:	0e 30       	R1 = R6;
ffa035ce:	15 30       	R2 = R5;
ffa035d0:	ff e3 96 eb 	CALL 0xffa00cfc <_strprintf_int>;
ffa035d4:	3d 08       	CC = R5 == R7;
ffa035d6:	16 18       	IF CC JUMP 0xffa03602 <_htmlCursorOption+0x52>;
ffa035d8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900634(-7338444) */
ffa035dc:	0e 30       	R1 = R6;
ffa035de:	02 e1 5c 06 	R2.L = 0x65c;		/* (1628)	R2=0xff90065c(-7338404) */
ffa035e2:	ff e3 27 ea 	CALL 0xffa00a30 <_strcpy_>;
ffa035e6:	0e 30       	R1 = R6;
ffa035e8:	15 30       	R2 = R5;
ffa035ea:	ff e3 89 eb 	CALL 0xffa00cfc <_strprintf_int>;
ffa035ee:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90065c(-7338404) */
ffa035f2:	01 e8 00 00 	UNLINK;
ffa035f6:	0e 30       	R1 = R6;
ffa035f8:	02 e1 60 06 	R2.L = 0x660;		/* (1632)	R2=0xff900660(-7338400) */
ffa035fc:	28 05       	(R7:5) = [SP++];
ffa035fe:	ff e2 19 ea 	JUMP.L 0xffa00a30 <_strcpy_>;
ffa03602:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900660(-7338400) */
ffa03606:	0e 30       	R1 = R6;
ffa03608:	02 e1 44 06 	R2.L = 0x644;		/* (1604)	R2=0xff900644(-7338428) */
ffa0360c:	ff e3 12 ea 	CALL 0xffa00a30 <_strcpy_>;
ffa03610:	e4 2f       	JUMP.S 0xffa035d8 <_htmlCursorOption+0x28>;
	...

ffa03614 <_htmlCursorSelect>:
ffa03614:	60 05       	[--SP] = (R7:4);
ffa03616:	3a 30       	R7 = R2;
ffa03618:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900644(-7338428) */
ffa0361c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03620:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa03624:	7e a2 00 00 
ffa03628:	02 e1 6c 06 	R2.L = 0x66c;		/* (1644)	R2=0xff90066c(-7338388) */
ffa0362c:	bc a2       	R4 = [FP + 0x28];
ffa0362e:	ff e3 01 ea 	CALL 0xffa00a30 <_strcpy_>;
ffa03632:	17 30       	R2 = R7;
ffa03634:	0d 30       	R1 = R5;
ffa03636:	ff e3 fd e9 	CALL 0xffa00a30 <_strcpy_>;
ffa0363a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90066c(-7338388) */
ffa0363e:	0d 30       	R1 = R5;
ffa03640:	02 e1 78 06 	R2.L = 0x678;		/* (1656)	R2=0xff900678(-7338376) */
ffa03644:	ff e3 f6 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa03648:	0d 30       	R1 = R5;
ffa0364a:	16 30       	R2 = R6;
ffa0364c:	ff e3 f2 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa03650:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900678(-7338376) */
ffa03654:	0d 30       	R1 = R5;
ffa03656:	02 e1 94 06 	R2.L = 0x694;		/* (1684)	R2=0xff900694(-7338348) */
ffa0365a:	ff e3 eb e9 	CALL 0xffa00a30 <_strcpy_>;
ffa0365e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03660:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa03664:	f4 b0 00 00 
ffa03668:	17 30       	R2 = R7;
ffa0366a:	ff e3 a3 ff 	CALL 0xffa035b0 <_htmlCursorOption>;
ffa0366e:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03670:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03672:	0f 08       	CC = R7 == R1;
ffa03674:	f6 17       	IF !CC JUMP 0xffa03660 <_htmlCursorSelect+0x4c> (BP);
ffa03676:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900694(-7338348) */
ffa0367a:	01 e8 00 00 	UNLINK;
ffa0367e:	0d 30       	R1 = R5;
ffa03680:	02 e1 98 06 	R2.L = 0x698;		/* (1688)	R2=0xff900698(-7338344) */
ffa03684:	20 05       	(R7:4) = [SP++];
ffa03686:	ff e2 d5 e9 	JUMP.L 0xffa00a30 <_strcpy_>;
	...

ffa0368c <_htmlDefault>:
ffa0368c:	ed 05       	[--SP] = (R7:5, P5:5);
ffa0368e:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03692:	77 30       	R6 = FP;
ffa03694:	e6 67       	R6 += -0x4;		/* ( -4) */
ffa03696:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03698:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900698(-7338344) */
ffa0369c:	f0 bb       	[FP -0x4] = R0;
ffa0369e:	0e 30       	R1 = R6;
ffa036a0:	02 e1 b0 06 	R2.L = 0x6b0;		/* (1712)	R2=0xff9006b0(-7338320) */
ffa036a4:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa036a8:	ff e3 c4 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa036ac:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa036b0:	0e 30       	R1 = R6;
ffa036b2:	ff e3 55 ff 	CALL 0xffa0355c <_htmlDiv>;
ffa036b6:	0e 30       	R1 = R6;
ffa036b8:	ff e3 48 ff 	CALL 0xffa03548 <_htmlForm>;
ffa036bc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa036c0:	0e 30       	R1 = R6;
ffa036c2:	02 e1 00 07 	R2.L = 0x700;		/* (1792)	R2=0xff900700(-7338240) */
ffa036c6:	ff e3 b5 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa036ca:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf8 <_TcpSeqClient> */
ffa036ce:	0a e1 74 0b 	P2.L = 0xb74;		/* (2932)	P2=0xff900b74 <_g_streamEnabled> */
ffa036d2:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa036d6:	10 99 00 00 
ffa036da:	00 0c       	CC = R0 == 0x0;
ffa036dc:	2c 1d       	IF CC JUMP 0xffa03934 <_htmlDefault+0x2a8> (BP);
ffa036de:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900700(-7338240) */
ffa036e2:	01 30       	R0 = R1;
ffa036e4:	02 e1 50 07 	R2.L = 0x750;		/* (1872)	R2=0xff900750(-7338160) */
ffa036e8:	0e 30       	R1 = R6;
ffa036ea:	ff e3 a3 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa036ee:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900750(-7338160) */
ffa036f2:	0e 30       	R1 = R6;
ffa036f4:	02 e1 68 07 	R2.L = 0x768;		/* (1896)	R2=0xff900768(-7338136) */
ffa036f8:	ff e3 9c e9 	CALL 0xffa00a30 <_strcpy_>;
ffa036fc:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03700:	0e 30       	R1 = R6;
ffa03702:	ff e3 2d ff 	CALL 0xffa0355c <_htmlDiv>;
ffa03706:	0e 30       	R1 = R6;
ffa03708:	ff e3 20 ff 	CALL 0xffa03548 <_htmlForm>;
ffa0370c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03710:	0e 30       	R1 = R6;
ffa03712:	02 e1 7c 07 	R2.L = 0x77c;		/* (1916)	R2=0xff90077c(-7338116) */
ffa03716:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900cf4 <_TcpSeqHost> */
ffa0371a:	ff e3 8b e9 	CALL 0xffa00a30 <_strcpy_>;
ffa0371e:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03720:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa03722:	0d e1 20 0c 	P5.L = 0xc20;		/* (3104)	P5=0xff900c20 <_NetDataDestIP> */
ffa03726:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90077c(-7338116) */
ffa0372a:	0e 30       	R1 = R6;
ffa0372c:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03730:	ff e3 80 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa03734:	17 30       	R2 = R7;
ffa03736:	0e 30       	R1 = R6;
ffa03738:	ff e3 e2 ea 	CALL 0xffa00cfc <_strprintf_int>;
ffa0373c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900798(-7338088) */
ffa03740:	0e 30       	R1 = R6;
ffa03742:	02 e1 b4 07 	R2.L = 0x7b4;		/* (1972)	R2=0xff9007b4(-7338060) */
ffa03746:	ff e3 75 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa0374a:	2a 91       	R2 = [P5];
ffa0374c:	6a 40       	R2 >>= R5;
ffa0374e:	52 43       	R2 = R2.B (Z);
ffa03750:	0e 30       	R1 = R6;
ffa03752:	ff e3 d5 ea 	CALL 0xffa00cfc <_strprintf_int>;
ffa03756:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007b4(-7338060) */
ffa0375a:	0e 30       	R1 = R6;
ffa0375c:	02 e1 c8 07 	R2.L = 0x7c8;		/* (1992)	R2=0xff9007c8(-7338040) */
ffa03760:	ff e3 68 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa03764:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03766:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03768:	0f 08       	CC = R7 == R1;
ffa0376a:	45 64       	R5 += 0x8;		/* (  8) */
ffa0376c:	dd 17       	IF !CC JUMP 0xffa03726 <_htmlDefault+0x9a> (BP);
ffa0376e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007c8(-7338040) */
ffa03772:	0e 30       	R1 = R6;
ffa03774:	02 e1 d0 07 	R2.L = 0x7d0;		/* (2000)	R2=0xff9007d0(-7338032) */
ffa03778:	ff e3 5c e9 	CALL 0xffa00a30 <_strcpy_>;
ffa0377c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007d0(-7338032) */
ffa03780:	0e 30       	R1 = R6;
ffa03782:	02 e1 68 07 	R2.L = 0x768;		/* (1896)	R2=0xff900768(-7338136) */
ffa03786:	ff e3 55 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa0378a:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa0378e:	0e 30       	R1 = R6;
ffa03790:	ff e3 e6 fe 	CALL 0xffa0355c <_htmlDiv>;
ffa03794:	0e 30       	R1 = R6;
ffa03796:	ff e3 d9 fe 	CALL 0xffa03548 <_htmlForm>;
ffa0379a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa0379e:	0e 30       	R1 = R6;
ffa037a0:	02 e1 f4 07 	R2.L = 0x7f4;		/* (2036)	R2=0xff9007f4(-7337996) */
ffa037a4:	ff e3 46 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa037a8:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800b74 */
ffa037ac:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa037b0:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa037b4:	10 99 00 00 
ffa037b8:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa037ba:	c6 1c       	IF CC JUMP 0xffa03946 <_htmlDefault+0x2ba> (BP);
ffa037bc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007f4(-7337996) */
ffa037c0:	01 30       	R0 = R1;
ffa037c2:	02 e1 5c 07 	R2.L = 0x75c;		/* (1884)	R2=0xff90075c(-7338148) */
ffa037c6:	0e 30       	R1 = R6;
ffa037c8:	ff e3 34 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa037cc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90075c(-7338148) */
ffa037d0:	0e 30       	R1 = R6;
ffa037d2:	02 e1 68 07 	R2.L = 0x768;		/* (1896)	R2=0xff900768(-7338136) */
ffa037d6:	ff e3 2d e9 	CALL 0xffa00a30 <_strcpy_>;
ffa037da:	0e 30       	R1 = R6;
ffa037dc:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa037e0:	ff e3 be fe 	CALL 0xffa0355c <_htmlDiv>;
ffa037e4:	0e 30       	R1 = R6;
ffa037e6:	ff e3 b1 fe 	CALL 0xffa03548 <_htmlForm>;
ffa037ea:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa037ee:	0e 30       	R1 = R6;
ffa037f0:	02 e1 34 08 	R2.L = 0x834;		/* (2100)	R2=0xff900834(-7337932) */
ffa037f4:	ff e3 1e e9 	CALL 0xffa00a30 <_strcpy_>;
ffa037f8:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa037fc:	01 e1 64 08 	R1.L = 0x864;		/* (2148)	R1=0xff900864(-7337884) */
ffa03800:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900834(-7337932) */
ffa03804:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa03808:	f1 b0 00 00 
ffa0380c:	02 e1 58 08 	R2.L = 0x858;		/* (2136)	R2=0xff900858(-7337896) */
ffa03810:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03814:	37 b1 00 00 
ffa03818:	ff e3 fe fe 	CALL 0xffa03614 <_htmlCursorSelect>;
ffa0381c:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900864(-7337884) */
ffa03820:	01 e1 7c 08 	R1.L = 0x87c;		/* (2172)	R1=0xff90087c(-7337860) */
ffa03824:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900858(-7337896) */
ffa03828:	f1 b0       	[SP + 0xc] = R1;
ffa0382a:	02 e1 70 08 	R2.L = 0x870;		/* (2160)	R2=0xff900870(-7337872) */
ffa0382e:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03832:	37 b1 00 00 
ffa03836:	ff e3 ef fe 	CALL 0xffa03614 <_htmlCursorSelect>;
ffa0383a:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff90087c(-7337860) */
ffa0383e:	01 e1 94 08 	R1.L = 0x894;		/* (2196)	R1=0xff900894(-7337836) */
ffa03842:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900870(-7337872) */
ffa03846:	f1 b0       	[SP + 0xc] = R1;
ffa03848:	02 e1 88 08 	R2.L = 0x888;		/* (2184)	R2=0xff900888(-7337848) */
ffa0384c:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03850:	37 b1 00 00 
ffa03854:	ff e3 e0 fe 	CALL 0xffa03614 <_htmlCursorSelect>;
ffa03858:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900894(-7337836) */
ffa0385c:	01 e1 a8 08 	R1.L = 0x8a8;		/* (2216)	R1=0xff9008a8(-7337816) */
ffa03860:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900888(-7337848) */
ffa03864:	f1 b0       	[SP + 0xc] = R1;
ffa03866:	02 e1 a0 08 	R2.L = 0x8a0;		/* (2208)	R2=0xff9008a0(-7337824) */
ffa0386a:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa0386e:	37 b1 00 00 
ffa03872:	ff e3 d1 fe 	CALL 0xffa03614 <_htmlCursorSelect>;
ffa03876:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a0(-7337824) */
ffa0387a:	0e 30       	R1 = R6;
ffa0387c:	02 e1 b4 08 	R2.L = 0x8b4;		/* (2228)	R2=0xff9008b4(-7337804) */
ffa03880:	ff e3 d8 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa03884:	0e 30       	R1 = R6;
ffa03886:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa0388a:	ff e3 69 fe 	CALL 0xffa0355c <_htmlDiv>;
ffa0388e:	0e 30       	R1 = R6;
ffa03890:	ff e3 5c fe 	CALL 0xffa03548 <_htmlForm>;
ffa03894:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03898:	0e 30       	R1 = R6;
ffa0389a:	02 e1 f0 08 	R2.L = 0x8f0;		/* (2288)	R2=0xff9008f0(-7337744) */
ffa0389e:	ff e3 c9 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa038a2:	0e 30       	R1 = R6;
ffa038a4:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa038a8:	ff e3 5a fe 	CALL 0xffa0355c <_htmlDiv>;
ffa038ac:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa038b0:	0e 30       	R1 = R6;
ffa038b2:	02 e1 48 09 	R2.L = 0x948;		/* (2376)	R2=0xff900948(-7337656) */
ffa038b6:	ff e3 bd e8 	CALL 0xffa00a30 <_strcpy_>;
ffa038ba:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900948(-7337656) */
ffa038be:	0e 30       	R1 = R6;
ffa038c0:	02 e1 70 09 	R2.L = 0x970;		/* (2416)	R2=0xff900970(-7337616) */
ffa038c4:	ff e3 b6 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa038c8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900970(-7337616) */
ffa038cc:	0e 30       	R1 = R6;
ffa038ce:	02 e1 68 07 	R2.L = 0x768;		/* (1896)	R2=0xff900768(-7338136) */
ffa038d2:	ff e3 af e8 	CALL 0xffa00a30 <_strcpy_>;
ffa038d6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900768(-7338136) */
ffa038da:	0e 30       	R1 = R6;
ffa038dc:	02 e1 b8 09 	R2.L = 0x9b8;		/* (2488)	R2=0xff9009b8(-7337544) */
ffa038e0:	ff e3 a8 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa038e4:	0e 30       	R1 = R6;
ffa038e6:	22 e1 75 ff 	R2 = -0x8b (X);		/*		R2=0xffffff75(-139) */
ffa038ea:	ff e3 09 ea 	CALL 0xffa00cfc <_strprintf_int>;
ffa038ee:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ff75(-7274635) */
ffa038f2:	0e 30       	R1 = R6;
ffa038f4:	02 e1 34 00 	R2.L = 0x34;		/* ( 52)	R2=0xff900034(-7339980) */
ffa038f8:	ff e3 9c e8 	CALL 0xffa00a30 <_strcpy_>;
ffa038fc:	0e 30       	R1 = R6;
ffa038fe:	92 62       	R2 = -0x2e (X);		/*		R2=0xffffffd2(-46) */
ffa03900:	ff e3 fe e9 	CALL 0xffa00cfc <_strprintf_int>;
ffa03904:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ffd2(-7274542) */
ffa03908:	0e 30       	R1 = R6;
ffa0390a:	02 e1 0c 00 	R2.L = 0xc;		/* ( 12)	R2=0xff90000c(-7340020) */
ffa0390e:	ff e3 91 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa03912:	0e 30       	R1 = R6;
ffa03914:	22 e1 d0 fd 	R2 = -0x230 (X);		/*		R2=0xfffffdd0(-560) */
ffa03918:	ff e3 f2 e9 	CALL 0xffa00cfc <_strprintf_int>;
ffa0391c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90fdd0(-7275056) */
ffa03920:	0e 30       	R1 = R6;
ffa03922:	02 e1 c4 09 	R2.L = 0x9c4;		/* (2500)	R2=0xff9009c4(-7337532) */
ffa03926:	ff e3 85 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa0392a:	f0 b9       	R0 = [FP -0x4];
ffa0392c:	01 e8 00 00 	UNLINK;
ffa03930:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03932:	10 00       	RTS;
ffa03934:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009c4(-7337532) */
ffa03938:	01 30       	R0 = R1;
ffa0393a:	02 e1 5c 07 	R2.L = 0x75c;		/* (1884)	R2=0xff90075c(-7338148) */
ffa0393e:	0e 30       	R1 = R6;
ffa03940:	ff e3 78 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa03944:	d5 2e       	JUMP.S 0xffa036ee <_htmlDefault+0x62>;
ffa03946:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90075c(-7338148) */
ffa0394a:	01 30       	R0 = R1;
ffa0394c:	02 e1 50 07 	R2.L = 0x750;		/* (1872)	R2=0xff900750(-7338160) */
ffa03950:	0e 30       	R1 = R6;
ffa03952:	ff e3 6f e8 	CALL 0xffa00a30 <_strcpy_>;
ffa03956:	3b 2f       	JUMP.S 0xffa037cc <_htmlDefault+0x140>;

ffa03958 <_httpHeader>:
ffa03958:	78 05       	[--SP] = (R7:7);
ffa0395a:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0395e:	7f 30       	R7 = FP;
ffa03960:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03962:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03964:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900750(-7338160) */
ffa03968:	f0 bb       	[FP -0x4] = R0;
ffa0396a:	0f 30       	R1 = R7;
ffa0396c:	02 e1 dc 09 	R2.L = 0x9dc;		/* (2524)	R2=0xff9009dc(-7337508) */
ffa03970:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03974:	ff e3 5e e8 	CALL 0xffa00a30 <_strcpy_>;
ffa03978:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009dc(-7337508) */
ffa0397c:	0f 30       	R1 = R7;
ffa0397e:	02 e1 f0 09 	R2.L = 0x9f0;		/* (2544)	R2=0xff9009f0(-7337488) */
ffa03982:	ff e3 57 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa03986:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009f0(-7337488) */
ffa0398a:	0f 30       	R1 = R7;
ffa0398c:	02 e1 04 0a 	R2.L = 0xa04;		/* (2564)	R2=0xff900a04(-7337468) */
ffa03990:	ff e3 50 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa03994:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa03998:	0a e1 14 0d 	P2.L = 0xd14;		/* (3348)	P2=0xff900d14 <_g_httpContentLen> */
ffa0399c:	12 91       	R2 = [P2];
ffa0399e:	0f 30       	R1 = R7;
ffa039a0:	ff e3 ae e9 	CALL 0xffa00cfc <_strprintf_int>;
ffa039a4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a04(-7337468) */
ffa039a8:	0f 30       	R1 = R7;
ffa039aa:	02 e1 18 0a 	R2.L = 0xa18;		/* (2584)	R2=0xff900a18(-7337448) */
ffa039ae:	ff e3 41 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa039b2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d14 <_g_httpContentLen> */
ffa039b6:	f0 b9       	R0 = [FP -0x4];
ffa039b8:	0a e1 10 0d 	P2.L = 0xd10;		/* (3344)	P2=0xff900d10 <_g_httpHeaderLen> */
ffa039bc:	10 93       	[P2] = R0;
ffa039be:	01 e8 00 00 	UNLINK;
ffa039c2:	38 05       	(R7:7) = [SP++];
ffa039c4:	10 00       	RTS;
	...

ffa039c8 <_htmlGeneric>:
ffa039c8:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa039cc:	10 30       	R2 = R0;
ffa039ce:	4f 30       	R1 = FP;
ffa039d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa039d2:	f0 bb       	[FP -0x4] = R0;
ffa039d4:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa039d6:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa039da:	ff e3 2b e8 	CALL 0xffa00a30 <_strcpy_>;
ffa039de:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d10 <_g_httpHeaderLen> */
ffa039e2:	f0 b9       	R0 = [FP -0x4];
ffa039e4:	0a e1 14 0d 	P2.L = 0xd14;		/* (3348)	P2=0xff900d14 <_g_httpContentLen> */
ffa039e8:	10 93       	[P2] = R0;
ffa039ea:	ff e3 b7 ff 	CALL 0xffa03958 <_httpHeader>;
ffa039ee:	f0 b9       	R0 = [FP -0x4];
ffa039f0:	01 e8 00 00 	UNLINK;
ffa039f4:	10 00       	RTS;
	...

ffa039f8 <_httpResp>:
ffa039f8:	60 05       	[--SP] = (R7:4);
ffa039fa:	28 30       	R5 = R0;
ffa039fc:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa039fe:	01 09       	CC = R1 <= R0;
ffa03a00:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa03a04:	31 30       	R6 = R1;
ffa03a06:	21 10       	IF !CC JUMP 0xffa03a48 <_httpResp+0x50>;
ffa03a08:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa03a0a:	0e 09       	CC = R6 <= R1;
ffa03a0c:	34 10       	IF !CC JUMP 0xffa03a74 <_httpResp+0x7c>;
ffa03a0e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa03a12:	00 e1 d4 09 	R0.L = 0x9d4;		/* (2516)	R0=0xff9009d4(-7337516) */
ffa03a16:	0d 30       	R1 = R5;
ffa03a18:	16 30       	R2 = R6;
ffa03a1a:	ff e3 79 e8 	CALL 0xffa00b0c <_substr>;
ffa03a1e:	00 0c       	CC = R0 == 0x0;
ffa03a20:	06 10       	IF !CC JUMP 0xffa03a2c <_httpResp+0x34>;
ffa03a22:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a24:	01 e8 00 00 	UNLINK;
ffa03a28:	20 05       	(R7:4) = [SP++];
ffa03a2a:	10 00       	RTS;
ffa03a2c:	ff e3 b0 fd 	CALL 0xffa0358c <_html404>;
ffa03a30:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d14 <_g_httpContentLen> */
ffa03a34:	0a e1 14 0d 	P2.L = 0xd14;		/* (3348)	P2=0xff900d14 <_g_httpContentLen> */
ffa03a38:	10 93       	[P2] = R0;
ffa03a3a:	ff e3 8f ff 	CALL 0xffa03958 <_httpHeader>;
ffa03a3e:	01 e8 00 00 	UNLINK;
ffa03a42:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03a44:	20 05       	(R7:4) = [SP++];
ffa03a46:	10 00       	RTS;
ffa03a48:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa03a4c:	05 30       	R0 = R5;
ffa03a4e:	01 e1 38 0a 	R1.L = 0xa38;		/* (2616)	R1=0xff900a38(-7337416) */
ffa03a52:	ff e3 2f e8 	CALL 0xffa00ab0 <_strcmp>;
ffa03a56:	00 0c       	CC = R0 == 0x0;
ffa03a58:	d8 1f       	IF CC JUMP 0xffa03a08 <_httpResp+0x10> (BP);
ffa03a5a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03a5e:	00 e1 d4 09 	R0.L = 0x9d4;		/* (2516)	R0=0xff9009d4(-7337516) */
ffa03a62:	0d 30       	R1 = R5;
ffa03a64:	16 30       	R2 = R6;
ffa03a66:	ff e3 53 e8 	CALL 0xffa00b0c <_substr>;
ffa03a6a:	00 0c       	CC = R0 == 0x0;
ffa03a6c:	db 1f       	IF CC JUMP 0xffa03a22 <_httpResp+0x2a> (BP);
ffa03a6e:	ff e3 0f fe 	CALL 0xffa0368c <_htmlDefault>;
ffa03a72:	df 2f       	JUMP.S 0xffa03a30 <_httpResp+0x38>;
ffa03a74:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9009d4(-7337516) */
ffa03a78:	00 e1 44 0a 	R0.L = 0xa44;		/* (2628)	R0=0xff900a44(-7337404) */
ffa03a7c:	0d 30       	R1 = R5;
ffa03a7e:	16 30       	R2 = R6;
ffa03a80:	ff e3 46 e8 	CALL 0xffa00b0c <_substr>;
ffa03a84:	00 0c       	CC = R0 == 0x0;
ffa03a86:	3c 1c       	IF CC JUMP 0xffa03afe <_httpResp+0x106> (BP);
ffa03a88:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a44(-7337404) */
ffa03a8c:	00 e1 50 0a 	R0.L = 0xa50;		/* (2640)	R0=0xff900a50(-7337392) */
ffa03a90:	0d 30       	R1 = R5;
ffa03a92:	16 30       	R2 = R6;
ffa03a94:	ff e3 3c e8 	CALL 0xffa00b0c <_substr>;
ffa03a98:	00 0c       	CC = R0 == 0x0;
ffa03a9a:	c4 1f       	IF CC JUMP 0xffa03a22 <_httpResp+0x2a> (BP);
ffa03a9c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa03a9e:	05 50       	R0 = R5 + R0;
ffa03aa0:	ff e3 56 e9 	CALL 0xffa00d4c <_atoi>;
ffa03aa4:	08 30       	R1 = R0;
ffa03aa6:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa03aaa:	00 67       	R0 += -0x20;		/* (-32) */
ffa03aac:	10 0a       	CC = R0 <= R2 (IU);
ffa03aae:	1a 11       	IF !CC JUMP 0xffa03ce2 <_httpResp+0x2ea>;
ffa03ab0:	82 c6 19 84 	R2 = R1 << 0x3;
ffa03ab4:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800d14 */
ffa03ab8:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03abc:	02 0d       	CC = R2 <= 0x0;
ffa03abe:	13 91       	R3 = [P2];
ffa03ac0:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa03ac4:	14 18       	IF CC JUMP 0xffa03aec <_httpResp+0xf4>;
ffa03ac6:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa03aca:	28 4f       	R0 <<= 0x5;
ffa03acc:	03 54       	R0 = R3 & R0;
ffa03ace:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa03ad0:	38 52       	R0 = R0 - R7;
ffa03ad2:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa03ad6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03ad8:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa03adc:	18 54       	R0 = R0 & R3;
ffa03ade:	10 32       	P2 = R0;
ffa03ae0:	09 64       	R1 += 0x1;		/* (  1) */
ffa03ae2:	0a 08       	CC = R2 == R1;
ffa03ae4:	10 90       	R0 = [P2++];
ffa03ae6:	08 92       	[P1++] = R0;
ffa03ae8:	42 30       	R0 = P2;
ffa03aea:	f9 17       	IF !CC JUMP 0xffa03adc <_httpResp+0xe4> (BP);
ffa03aec:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900804 */
ffa03af0:	0a e1 14 0d 	P2.L = 0xd14;		/* (3348)	P2=0xff900d14 <_g_httpContentLen> */
ffa03af4:	17 93       	[P2] = R7;
ffa03af6:	ff e3 31 ff 	CALL 0xffa03958 <_httpHeader>;
ffa03afa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03afc:	94 2f       	JUMP.S 0xffa03a24 <_httpResp+0x2c>;
ffa03afe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03b02:	00 e1 6c 0b 	R0.L = 0xb6c;		/* (2924)	R0=0xff900b6c(-7337108) */
ffa03b06:	0d 30       	R1 = R5;
ffa03b08:	16 30       	R2 = R6;
ffa03b0a:	ff e3 01 e8 	CALL 0xffa00b0c <_substr>;
ffa03b0e:	00 0c       	CC = R0 == 0x0;
ffa03b10:	7f 1f       	IF CC JUMP 0xffa03a0e <_httpResp+0x16> (BP);
ffa03b12:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b6c(-7337108) */
ffa03b16:	00 e1 84 0a 	R0.L = 0xa84;		/* (2692)	R0=0xff900a84(-7337340) */
ffa03b1a:	0d 30       	R1 = R5;
ffa03b1c:	16 30       	R2 = R6;
ffa03b1e:	ff e3 f7 e7 	CALL 0xffa00b0c <_substr>;
ffa03b22:	00 0c       	CC = R0 == 0x0;
ffa03b24:	10 11       	IF !CC JUMP 0xffa03d44 <_httpResp+0x34c>;
ffa03b26:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03b28:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a84(-7337340) */
ffa03b2c:	00 e1 a8 0a 	R0.L = 0xaa8;		/* (2728)	R0=0xff900aa8(-7337304) */
ffa03b30:	0d 30       	R1 = R5;
ffa03b32:	16 30       	R2 = R6;
ffa03b34:	ff e3 ec e7 	CALL 0xffa00b0c <_substr>;
ffa03b38:	00 0c       	CC = R0 == 0x0;
ffa03b3a:	e2 10       	IF !CC JUMP 0xffa03cfe <_httpResp+0x306>;
ffa03b3c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900aa8(-7337304) */
ffa03b40:	0d 30       	R1 = R5;
ffa03b42:	00 e1 b4 0a 	R0.L = 0xab4;		/* (2740)	R0=0xff900ab4(-7337292) */
ffa03b46:	16 30       	R2 = R6;
ffa03b48:	ff e3 e2 e7 	CALL 0xffa00b0c <_substr>;
ffa03b4c:	00 0c       	CC = R0 == 0x0;
ffa03b4e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ab4(-7337292) */
ffa03b52:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03b54:	0d 30       	R1 = R5;
ffa03b56:	16 30       	R2 = R6;
ffa03b58:	00 e1 c0 0a 	R0.L = 0xac0;		/* (2752)	R0=0xff900ac0(-7337280) */
ffa03b5c:	27 06       	IF !CC R4 = R7;
ffa03b5e:	ff e3 d7 e7 	CALL 0xffa00b0c <_substr>;
ffa03b62:	00 0c       	CC = R0 == 0x0;
ffa03b64:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ac0(-7337280) */
ffa03b68:	0d 30       	R1 = R5;
ffa03b6a:	16 30       	R2 = R6;
ffa03b6c:	00 e1 cc 0a 	R0.L = 0xacc;		/* (2764)	R0=0xff900acc(-7337268) */
ffa03b70:	27 06       	IF !CC R4 = R7;
ffa03b72:	ff e3 cd e7 	CALL 0xffa00b0c <_substr>;
ffa03b76:	00 0c       	CC = R0 == 0x0;
ffa03b78:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900acc(-7337268) */
ffa03b7c:	0d 30       	R1 = R5;
ffa03b7e:	16 30       	R2 = R6;
ffa03b80:	00 e1 d8 0a 	R0.L = 0xad8;		/* (2776)	R0=0xff900ad8(-7337256) */
ffa03b84:	27 06       	IF !CC R4 = R7;
ffa03b86:	ff e3 c3 e7 	CALL 0xffa00b0c <_substr>;
ffa03b8a:	00 0c       	CC = R0 == 0x0;
ffa03b8c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ad8(-7337256) */
ffa03b90:	00 e1 e4 0a 	R0.L = 0xae4;		/* (2788)	R0=0xff900ae4(-7337244) */
ffa03b94:	0d 30       	R1 = R5;
ffa03b96:	16 30       	R2 = R6;
ffa03b98:	27 06       	IF !CC R4 = R7;
ffa03b9a:	ff e3 b9 e7 	CALL 0xffa00b0c <_substr>;
ffa03b9e:	00 0c       	CC = R0 == 0x0;
ffa03ba0:	13 11       	IF !CC JUMP 0xffa03dc6 <_httpResp+0x3ce>;
ffa03ba2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ae4(-7337244) */
ffa03ba6:	00 e1 ec 0a 	R0.L = 0xaec;		/* (2796)	R0=0xff900aec(-7337236) */
ffa03baa:	0d 30       	R1 = R5;
ffa03bac:	16 30       	R2 = R6;
ffa03bae:	ff e3 af e7 	CALL 0xffa00b0c <_substr>;
ffa03bb2:	00 0c       	CC = R0 == 0x0;
ffa03bb4:	f6 10       	IF !CC JUMP 0xffa03da0 <_httpResp+0x3a8>;
ffa03bb6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900aec(-7337236) */
ffa03bba:	00 e1 f4 0a 	R0.L = 0xaf4;		/* (2804)	R0=0xff900af4(-7337228) */
ffa03bbe:	0d 30       	R1 = R5;
ffa03bc0:	16 30       	R2 = R6;
ffa03bc2:	ff e3 a5 e7 	CALL 0xffa00b0c <_substr>;
ffa03bc6:	00 0c       	CC = R0 == 0x0;
ffa03bc8:	0f 11       	IF !CC JUMP 0xffa03de6 <_httpResp+0x3ee>;
ffa03bca:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900af4(-7337228) */
ffa03bce:	00 e1 fc 0a 	R0.L = 0xafc;		/* (2812)	R0=0xff900afc(-7337220) */
ffa03bd2:	0d 30       	R1 = R5;
ffa03bd4:	16 30       	R2 = R6;
ffa03bd6:	ff e3 9b e7 	CALL 0xffa00b0c <_substr>;
ffa03bda:	00 0c       	CC = R0 == 0x0;
ffa03bdc:	d1 10       	IF !CC JUMP 0xffa03d7e <_httpResp+0x386>;
ffa03bde:	20 43       	R0 = R4.B (X);
ffa03be0:	00 0c       	CC = R0 == 0x0;
ffa03be2:	46 17       	IF !CC JUMP 0xffa03a6e <_httpResp+0x76> (BP);
ffa03be4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900afc(-7337220) */
ffa03be8:	00 e1 04 0b 	R0.L = 0xb04;		/* (2820)	R0=0xff900b04(-7337212) */
ffa03bec:	0d 30       	R1 = R5;
ffa03bee:	16 30       	R2 = R6;
ffa03bf0:	ff e3 8e e7 	CALL 0xffa00b0c <_substr>;
ffa03bf4:	00 0c       	CC = R0 == 0x0;
ffa03bf6:	16 1b       	IF CC JUMP 0xffa03a22 <_httpResp+0x2a>;
ffa03bf8:	7f 30       	R7 = FP;
ffa03bfa:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03bfe:	57 5a       	P1 = FP + P2;
ffa03c00:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03c02:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c04:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa03c06:	b2 e0 02 20 	LSETUP(0xffa03c0a <_httpResp+0x212>, 0xffa03c0a <_httpResp+0x212>) LC1 = P2;
ffa03c0a:	08 92       	[P1++] = R0;
ffa03c0c:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa03c10:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03c14:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa03c18:	29 4f       	R1 <<= 0x5;
ffa03c1a:	10 91       	R0 = [P2];
ffa03c1c:	08 54       	R0 = R0 & R1;
ffa03c1e:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03c20:	81 4f       	R1 <<= 0x10;
ffa03c22:	08 50       	R0 = R0 + R1;
ffa03c24:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03c26:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa03c2a:	88 54       	R2 = R0 & R1;
ffa03c2c:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa03c30:	b2 e0 12 10 	LSETUP(0xffa03c34 <_httpResp+0x23c>, 0xffa03c54 <_httpResp+0x25c>) LC1 = P1;
ffa03c34:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03c38:	97 5a       	P2 = FP + P2;
ffa03c3a:	02 32       	P0 = R2;
ffa03c3c:	11 91       	R1 = [P2];
ffa03c3e:	12 64       	R2 += 0x2;		/* (  2) */
ffa03c40:	00 94       	R0 = W[P0++] (Z);
ffa03c42:	41 50       	R1 = R1 + R0;
ffa03c44:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03c46:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa03c4a:	11 92       	[P2++] = R1;
ffa03c4c:	82 54       	R2 = R2 & R0;
ffa03c4e:	42 30       	R0 = P2;
ffa03c50:	38 08       	CC = R0 == R7;
ffa03c52:	f4 17       	IF !CC JUMP 0xffa03c3a <_httpResp+0x242> (BP);
ffa03c54:	00 00       	NOP;
ffa03c56:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03c5a:	97 5a       	P2 = FP + P2;
ffa03c5c:	00 00       	NOP;
ffa03c5e:	10 91       	R0 = [P2];
ffa03c60:	58 4d       	R0 >>>= 0xb;
ffa03c62:	10 92       	[P2++] = R0;
ffa03c64:	4a 30       	R1 = P2;
ffa03c66:	39 08       	CC = R1 == R7;
ffa03c68:	fa 17       	IF !CC JUMP 0xffa03c5c <_httpResp+0x264> (BP);
ffa03c6a:	ff e3 11 fd 	CALL 0xffa0368c <_htmlDefault>;
ffa03c6e:	68 67       	R0 += -0x13;		/* (-19) */
ffa03c70:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa03c74:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80(-7336064) */
ffa03c78:	f0 bb       	[FP -0x4] = R0;
ffa03c7a:	02 e1 14 0b 	R2.L = 0xb14;		/* (2836)	R2=0xff900b14(-7337196) */
ffa03c7e:	08 50       	R0 = R0 + R1;
ffa03c80:	0f 30       	R1 = R7;
ffa03c82:	ff e3 d7 e6 	CALL 0xffa00a30 <_strcpy_>;
ffa03c86:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa03c8a:	f5 b8 00 00 
ffa03c8e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b14(-7337196) */
ffa03c92:	0f 30       	R1 = R7;
ffa03c94:	02 e1 20 0b 	R2.L = 0xb20;		/* (2848)	R2=0xff900b20(-7337184) */
ffa03c98:	ff e3 cc e6 	CALL 0xffa00a30 <_strcpy_>;
ffa03c9c:	16 30       	R2 = R6;
ffa03c9e:	0f 30       	R1 = R7;
ffa03ca0:	ff e3 2e e8 	CALL 0xffa00cfc <_strprintf_int>;
ffa03ca4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b20(-7337184) */
ffa03ca8:	0f 30       	R1 = R7;
ffa03caa:	02 e1 34 0b 	R2.L = 0xb34;		/* (2868)	R2=0xff900b34(-7337164) */
ffa03cae:	ff e3 c1 e6 	CALL 0xffa00a30 <_strcpy_>;
ffa03cb2:	0f 30       	R1 = R7;
ffa03cb4:	15 30       	R2 = R5;
ffa03cb6:	ff e3 23 e8 	CALL 0xffa00cfc <_strprintf_int>;
ffa03cba:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b34(-7337164) */
ffa03cbe:	02 e1 44 0b 	R2.L = 0xb44;		/* (2884)	R2=0xff900b44(-7337148) */
ffa03cc2:	0f 30       	R1 = R7;
ffa03cc4:	ff e3 b6 e6 	CALL 0xffa00a30 <_strcpy_>;
ffa03cc8:	0e 64       	R6 += 0x1;		/* (  1) */
ffa03cca:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa03ccc:	16 08       	CC = R6 == R2;
ffa03cce:	e0 17       	IF !CC JUMP 0xffa03c8e <_httpResp+0x296> (BP);
ffa03cd0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa03cd4:	0f 30       	R1 = R7;
ffa03cd6:	02 e1 50 0b 	R2.L = 0xb50;		/* (2896)	R2=0xff900b50(-7337136) */
ffa03cda:	ff e3 ab e6 	CALL 0xffa00a30 <_strcpy_>;
ffa03cde:	f0 b9       	R0 = [FP -0x4];
ffa03ce0:	a8 2e       	JUMP.S 0xffa03a30 <_httpResp+0x38>;
ffa03ce2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ce4:	4f 30       	R1 = FP;
ffa03ce6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b50(-7337136) */
ffa03cea:	f0 bb       	[FP -0x4] = R0;
ffa03cec:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03cee:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03cf2:	02 e1 58 0a 	R2.L = 0xa58;		/* (2648)	R2=0xff900a58(-7337384) */
ffa03cf6:	ff e3 9d e6 	CALL 0xffa00a30 <_strcpy_>;
ffa03cfa:	f0 b9       	R0 = [FP -0x4];
ffa03cfc:	9a 2e       	JUMP.S 0xffa03a30 <_httpResp+0x38>;
ffa03cfe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa03d02:	00 e1 94 0a 	R0.L = 0xa94;		/* (2708)	R0=0xff900a94(-7337324) */
ffa03d06:	0d 30       	R1 = R5;
ffa03d08:	16 30       	R2 = R6;
ffa03d0a:	ff e3 01 e7 	CALL 0xffa00b0c <_substr>;
ffa03d0e:	00 0c       	CC = R0 == 0x0;
ffa03d10:	08 1c       	IF CC JUMP 0xffa03d20 <_httpResp+0x328> (BP);
ffa03d12:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa03d16:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d18:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03d1c:	10 9b       	B[P2] = R0;
ffa03d1e:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03d20:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03d24:	00 e1 9c 0a 	R0.L = 0xa9c;		/* (2716)	R0=0xff900a9c(-7337316) */
ffa03d28:	0d 30       	R1 = R5;
ffa03d2a:	16 30       	R2 = R6;
ffa03d2c:	ff e3 f0 e6 	CALL 0xffa00b0c <_substr>;
ffa03d30:	00 0c       	CC = R0 == 0x0;
ffa03d32:	05 1f       	IF CC JUMP 0xffa03b3c <_httpResp+0x144> (BP);
ffa03d34:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa03d38:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03d3a:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03d3e:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03d40:	10 9b       	B[P2] = R0;
ffa03d42:	fd 2e       	JUMP.S 0xffa03b3c <_httpResp+0x144>;
ffa03d44:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03d48:	00 e1 94 0a 	R0.L = 0xa94;		/* (2708)	R0=0xff900a94(-7337324) */
ffa03d4c:	0d 30       	R1 = R5;
ffa03d4e:	16 30       	R2 = R6;
ffa03d50:	ff e3 de e6 	CALL 0xffa00b0c <_substr>;
ffa03d54:	00 0c       	CC = R0 == 0x0;
ffa03d56:	5b 14       	IF !CC JUMP 0xffa03e0c <_httpResp+0x414> (BP);
ffa03d58:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03d5a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a94(-7337324) */
ffa03d5e:	00 e1 9c 0a 	R0.L = 0xa9c;		/* (2716)	R0=0xff900a9c(-7337316) */
ffa03d62:	0d 30       	R1 = R5;
ffa03d64:	16 30       	R2 = R6;
ffa03d66:	ff e3 d3 e6 	CALL 0xffa00b0c <_substr>;
ffa03d6a:	00 0c       	CC = R0 == 0x0;
ffa03d6c:	de 1e       	IF CC JUMP 0xffa03b28 <_httpResp+0x130> (BP);
ffa03d6e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa03d72:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d74:	0a e1 74 0b 	P2.L = 0xb74;		/* (2932)	P2=0xff900b74 <_g_streamEnabled> */
ffa03d78:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03d7a:	10 9b       	B[P2] = R0;
ffa03d7c:	d6 2e       	JUMP.S 0xffa03b28 <_httpResp+0x130>;
ffa03d7e:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa03d80:	05 50       	R0 = R5 + R0;
ffa03d82:	ff e3 e5 e7 	CALL 0xffa00d4c <_atoi>;
ffa03d86:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900b74 <_g_streamEnabled> */
ffa03d8a:	0a e1 20 0c 	P2.L = 0xc20;		/* (3104)	P2=0xff900c20 <_NetDataDestIP> */
ffa03d8e:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa03d90:	11 91       	R1 = [P2];
ffa03d92:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa03d96:	51 54       	R1 = R1 & R2;
ffa03d98:	c0 4f       	R0 <<= 0x18;
ffa03d9a:	41 50       	R1 = R1 + R0;
ffa03d9c:	11 93       	[P2] = R1;
ffa03d9e:	68 2e       	JUMP.S 0xffa03a6e <_httpResp+0x76>;
ffa03da0:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa03da2:	05 50       	R0 = R5 + R0;
ffa03da4:	ff e3 d4 e7 	CALL 0xffa00d4c <_atoi>;
ffa03da8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c20 <_NetDataDestIP> */
ffa03dac:	0a e1 20 0c 	P2.L = 0xc20;		/* (3104)	P2=0xff900c20 <_NetDataDestIP> */
ffa03db0:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa03db2:	11 91       	R1 = [P2];
ffa03db4:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa03db8:	40 43       	R0 = R0.B (Z);
ffa03dba:	51 54       	R1 = R1 & R2;
ffa03dbc:	40 4f       	R0 <<= 0x8;
ffa03dbe:	41 50       	R1 = R1 + R0;
ffa03dc0:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03dc2:	11 93       	[P2] = R1;
ffa03dc4:	f9 2e       	JUMP.S 0xffa03bb6 <_httpResp+0x1be>;
ffa03dc6:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa03dc8:	05 50       	R0 = R5 + R0;
ffa03dca:	ff e3 c1 e7 	CALL 0xffa00d4c <_atoi>;
ffa03dce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c20 <_NetDataDestIP> */
ffa03dd2:	0a e1 20 0c 	P2.L = 0xc20;		/* (3104)	P2=0xff900c20 <_NetDataDestIP> */
ffa03dd6:	11 91       	R1 = [P2];
ffa03dd8:	41 4d       	R1 >>>= 0x8;
ffa03dda:	41 4f       	R1 <<= 0x8;
ffa03ddc:	40 43       	R0 = R0.B (Z);
ffa03dde:	08 50       	R0 = R0 + R1;
ffa03de0:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03de2:	10 93       	[P2] = R0;
ffa03de4:	df 2e       	JUMP.S 0xffa03ba2 <_httpResp+0x1aa>;
ffa03de6:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa03de8:	05 50       	R0 = R5 + R0;
ffa03dea:	ff e3 b1 e7 	CALL 0xffa00d4c <_atoi>;
ffa03dee:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c20 <_NetDataDestIP> */
ffa03df2:	0a e1 20 0c 	P2.L = 0xc20;		/* (3104)	P2=0xff900c20 <_NetDataDestIP> */
ffa03df6:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa03df8:	11 91       	R1 = [P2];
ffa03dfa:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa03dfe:	40 43       	R0 = R0.B (Z);
ffa03e00:	51 54       	R1 = R1 & R2;
ffa03e02:	80 4f       	R0 <<= 0x10;
ffa03e04:	41 50       	R1 = R1 + R0;
ffa03e06:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03e08:	11 93       	[P2] = R1;
ffa03e0a:	e0 2e       	JUMP.S 0xffa03bca <_httpResp+0x1d2>;
ffa03e0c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c20 <_NetDataDestIP> */
ffa03e10:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03e12:	0a e1 74 0b 	P2.L = 0xb74;		/* (2932)	P2=0xff900b74 <_g_streamEnabled> */
ffa03e16:	10 9b       	B[P2] = R0;
ffa03e18:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800b74 */
ffa03e1c:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03e20:	10 91       	R0 = [P2];
ffa03e22:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03e24:	22 6c       	P2 += 0x4;		/* (  4) */
ffa03e26:	10 93       	[P2] = R0;
ffa03e28:	99 2f       	JUMP.S 0xffa03d5a <_httpResp+0x362>;
	...

ffa03e2c <_httpCollate>:
ffa03e2c:	e5 05       	[--SP] = (R7:4, P5:5);
ffa03e2e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c20 <_NetDataDestIP> */
ffa03e32:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03e36:	0d e1 18 0d 	P5.L = 0xd18;		/* (3352)	P5=0xff900d18 <_g_httpRxed> */
ffa03e3a:	2e 91       	R6 = [P5];
ffa03e3c:	06 0c       	CC = R6 == 0x0;
ffa03e3e:	28 30       	R5 = R0;
ffa03e40:	21 30       	R4 = R1;
ffa03e42:	16 1c       	IF CC JUMP 0xffa03e6e <_httpCollate+0x42> (BP);
ffa03e44:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03e46:	87 4f       	R7 <<= 0x10;
ffa03e48:	7e 50       	R1 = R6 + R7;
ffa03e4a:	14 30       	R2 = R4;
ffa03e4c:	ff e3 c2 e5 	CALL 0xffa009d0 <_memcpy_>;
ffa03e50:	29 91       	R1 = [P5];
ffa03e52:	4c 50       	R1 = R4 + R1;
ffa03e54:	29 93       	[P5] = R1;
ffa03e56:	07 30       	R0 = R7;
ffa03e58:	ff e3 d0 fd 	CALL 0xffa039f8 <_httpResp>;
ffa03e5c:	00 0c       	CC = R0 == 0x0;
ffa03e5e:	04 18       	IF CC JUMP 0xffa03e66 <_httpCollate+0x3a>;
ffa03e60:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03e62:	28 93       	[P5] = R0;
ffa03e64:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03e66:	01 e8 00 00 	UNLINK;
ffa03e6a:	a5 05       	(R7:4, P5:5) = [SP++];
ffa03e6c:	10 00       	RTS;
ffa03e6e:	ff e3 c5 fd 	CALL 0xffa039f8 <_httpResp>;
ffa03e72:	00 0c       	CC = R0 == 0x0;
ffa03e74:	07 18       	IF CC JUMP 0xffa03e82 <_httpCollate+0x56>;
ffa03e76:	2e 93       	[P5] = R6;
ffa03e78:	01 e8 00 00 	UNLINK;
ffa03e7c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03e7e:	a5 05       	(R7:4, P5:5) = [SP++];
ffa03e80:	10 00       	RTS;
ffa03e82:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa03e84:	05 30       	R0 = R5;
ffa03e86:	14 30       	R2 = R4;
ffa03e88:	81 4f       	R1 <<= 0x10;
ffa03e8a:	ff e3 a3 e5 	CALL 0xffa009d0 <_memcpy_>;
ffa03e8e:	2c 93       	[P5] = R4;
ffa03e90:	01 e8 00 00 	UNLINK;
ffa03e94:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03e96:	a5 05       	(R7:4, P5:5) = [SP++];
ffa03e98:	10 00       	RTS;
	...

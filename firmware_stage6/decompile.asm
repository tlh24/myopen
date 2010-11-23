
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
ffa001ba:	00 e3 f3 12 	CALL 0xffa027a0 <_bfin_EMAC_recv>;
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
ffa001d8:	00 e3 c0 09 	CALL 0xffa01558 <_htons>;
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
ffa003ca:	00 e3 a7 0f 	CALL 0xffa02318 <_bfin_EMAC_init>;
ffa003ce:	00 0c       	CC = R0 == 0x0;
ffa003d0:	20 30       	R4 = R0;
ffa003d2:	03 14       	IF !CC JUMP 0xffa003d8 <_main+0x1dc> (BP);
ffa003d4:	00 e3 74 11 	CALL 0xffa026bc <_DHCP_req>;
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
ffa0041a:	00 e3 75 07 	CALL 0xffa01304 <_radio_init>;
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
ffa00460:	00 e3 b4 0d 	CALL 0xffa01fc8 <_udp_packet_setup>;
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
ffa00486:	00 e3 13 0a 	CALL 0xffa018ac <_bfin_EMAC_send_nocopy>;
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
ffa00554:	00 e3 42 06 	CALL 0xffa011d8 <_radio_set_tx>;
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
ffa01192:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01194:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01196:	ff e3 37 fe 	CALL 0xffa00e04 <_spi_write_register>;
ffa0119a:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0119e:	ff e3 b3 fe 	CALL 0xffa00f04 <_spi_write_byte>;
ffa011a2:	99 60       	R1 = 0x13 (X);		/*		R1=0x13( 19) */
ffa011a4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa011a6:	ff e3 2f fe 	CALL 0xffa00e04 <_spi_write_register>;
ffa011aa:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa011ae:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa011b0:	ff e3 2a fe 	CALL 0xffa00e04 <_spi_write_register>;
ffa011b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa011b8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa011ba:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa011be:	10 97       	W[P2] = R0;
ffa011c0:	24 00       	SSYNC;
ffa011c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa011c6:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa011ca:	17 97       	W[P2] = R7;
ffa011cc:	24 00       	SSYNC;
ffa011ce:	01 e8 00 00 	UNLINK;
ffa011d2:	38 05       	(R7:7) = [SP++];
ffa011d4:	10 00       	RTS;
	...

ffa011d8 <_radio_set_tx>:
ffa011d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa011dc:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa011e0:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa011e4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa011e8:	10 97       	W[P2] = R0;
ffa011ea:	24 00       	SSYNC;
ffa011ec:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa011ee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa011f0:	ff e3 0a fe 	CALL 0xffa00e04 <_spi_write_register>;
ffa011f4:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa011f8:	ff e3 86 fe 	CALL 0xffa00f04 <_spi_write_byte>;
ffa011fc:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01200:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01202:	ff e3 01 fe 	CALL 0xffa00e04 <_spi_write_register>;
ffa01206:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01208:	f1 60       	R1 = 0x1e (X);		/*		R1=0x1e( 30) */
ffa0120a:	ff e3 fd fd 	CALL 0xffa00e04 <_spi_write_register>;
ffa0120e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01212:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01214:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa01218:	10 97       	W[P2] = R0;
ffa0121a:	01 e8 00 00 	UNLINK;
ffa0121e:	10 00       	RTS;

ffa01220 <_radio_wait_irq>:
ffa01220:	78 05       	[--SP] = (R7:7);
ffa01222:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa01226:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0122a:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa0122e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (X) || NOP;
ffa01232:	50 95 00 00 
ffa01236:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa01238:	25 18       	IF CC JUMP 0xffa01282 <_radio_wait_irq+0x62>;
ffa0123a:	01 0d       	CC = R1 <= 0x0;
ffa0123c:	25 18       	IF CC JUMP 0xffa01286 <_radio_wait_irq+0x66>;
ffa0123e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01240:	04 20       	JUMP.S 0xffa01248 <_radio_wait_irq+0x28>;
ffa01242:	39 08       	CC = R1 == R7;
ffa01244:	10 18       	IF CC JUMP 0xffa01264 <_radio_wait_irq+0x44>;
	...
ffa0124e:	00 00       	NOP;
ffa01250:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa01254:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa01258:	50 95       	R0 = W[P2] (X);
ffa0125a:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa0125c:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0125e:	f2 17       	IF !CC JUMP 0xffa01242 <_radio_wait_irq+0x22> (BP);
ffa01260:	39 09       	CC = R1 <= R7;
ffa01262:	06 10       	IF !CC JUMP 0xffa0126e <_radio_wait_irq+0x4e>;
ffa01264:	01 e8 00 00 	UNLINK;
ffa01268:	07 30       	R0 = R7;
ffa0126a:	38 05       	(R7:7) = [SP++];
ffa0126c:	10 00       	RTS;
ffa0126e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01270:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01274:	ff e3 c8 fd 	CALL 0xffa00e04 <_spi_write_register>;
ffa01278:	01 e8 00 00 	UNLINK;
ffa0127c:	07 30       	R0 = R7;
ffa0127e:	38 05       	(R7:7) = [SP++];
ffa01280:	10 00       	RTS;
ffa01282:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01284:	ee 2f       	JUMP.S 0xffa01260 <_radio_wait_irq+0x40>;
ffa01286:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01288:	ee 2f       	JUMP.S 0xffa01264 <_radio_wait_irq+0x44>;
	...

ffa0128c <_spi_write_register_ver>:
ffa0128c:	68 05       	[--SP] = (R7:5);
ffa0128e:	47 43       	R7 = R0.B (Z);
ffa01290:	4e 43       	R6 = R1.B (Z);
ffa01292:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01296:	0e 30       	R1 = R6;
ffa01298:	07 30       	R0 = R7;
ffa0129a:	ff e3 b5 fd 	CALL 0xffa00e04 <_spi_write_register>;
ffa0129e:	07 30       	R0 = R7;
ffa012a0:	ff e3 de fd 	CALL 0xffa00e5c <_spi_read_register>;
ffa012a4:	45 43       	R5 = R0.B (Z);
ffa012a6:	2e 08       	CC = R6 == R5;
ffa012a8:	29 18       	IF CC JUMP 0xffa012fa <_spi_write_register_ver+0x6e>;
ffa012aa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900007(-7340025) */
ffa012ae:	0f 30       	R1 = R7;
ffa012b0:	00 e1 64 00 	R0.L = 0x64;		/* (100)	R0=0xff900064(-7339932) */
ffa012b4:	ff e3 a8 fa 	CALL 0xffa00804 <_printf_int>;
ffa012b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900064(-7339932) */
ffa012bc:	00 e1 d8 04 	R0.L = 0x4d8;		/* (1240)	R0=0xff9004d8(-7338792) */
ffa012c0:	ff e3 86 f9 	CALL 0xffa005cc <_uart_str>;
ffa012c4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004d8(-7338792) */
ffa012c8:	0e 30       	R1 = R6;
ffa012ca:	00 e1 78 00 	R0.L = 0x78;		/* (120)	R0=0xff900078(-7339912) */
ffa012ce:	ff e3 e9 f9 	CALL 0xffa006a0 <_printf_hex_byte>;
ffa012d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900078(-7339912) */
ffa012d6:	00 e1 d8 04 	R0.L = 0x4d8;		/* (1240)	R0=0xff9004d8(-7338792) */
ffa012da:	ff e3 79 f9 	CALL 0xffa005cc <_uart_str>;
ffa012de:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004d8(-7338792) */
ffa012e2:	00 e1 84 00 	R0.L = 0x84;		/* (132)	R0=0xff900084(-7339900) */
ffa012e6:	0d 30       	R1 = R5;
ffa012e8:	ff e3 dc f9 	CALL 0xffa006a0 <_printf_hex_byte>;
ffa012ec:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900084(-7339900) */
ffa012f0:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa012f4:	35 30       	R6 = R5;
ffa012f6:	ff e3 6b f9 	CALL 0xffa005cc <_uart_str>;
ffa012fa:	01 e8 00 00 	UNLINK;
ffa012fe:	06 30       	R0 = R6;
ffa01300:	28 05       	(R7:5) = [SP++];
ffa01302:	10 00       	RTS;

ffa01304 <_radio_init>:
ffa01304:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa01308:	78 05       	[--SP] = (R7:7);
ffa0130a:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa0130c:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa01310:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01314:	11 97       	W[P2] = R1;
ffa01316:	21 e1 2d 50 	R1 = 0x502d (X);		/*		R1=0x502d(20525) */
ffa0131a:	62 6f       	P2 += -0x14;		/* (-20) */
ffa0131c:	11 97       	W[P2] = R1;
ffa0131e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01320:	22 6c       	P2 += 0x4;		/* (  4) */
ffa01322:	11 97       	W[P2] = R1;
ffa01324:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa01328:	21 e1 00 02 	R1 = 0x200 (X);		/*		R1=0x200(512) */
ffa0132c:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01330:	11 97       	W[P2] = R1;
ffa01332:	c2 6d       	P2 += 0x38;		/* ( 56) */
ffa01334:	51 95       	R1 = W[P2] (X);
ffa01336:	59 4a       	BITSET (R1, 0xb);		/* bit 11 */
ffa01338:	11 97       	W[P2] = R1;
ffa0133a:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0133c:	51 95       	R1 = W[P2] (X);
ffa0133e:	59 4c       	BITCLR (R1, 0xb);		/* bit 11 */
ffa01340:	11 97       	W[P2] = R1;
ffa01342:	52 95       	R2 = W[P2] (X);
ffa01344:	21 e1 00 06 	R1 = 0x600 (X);		/*		R1=0x600(1536) */
ffa01348:	51 56       	R1 = R1 | R2;
ffa0134a:	11 97       	W[P2] = R1;
ffa0134c:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa01350:	41 43       	R1 = R0.B (Z);
ffa01352:	11 0a       	CC = R1 <= R2 (IU);
ffa01354:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa01358:	01 06       	IF !CC R0 = R1;
ffa0135a:	47 43       	R7 = R0.B (Z);
ffa0135c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a34(-7337420) */
ffa01360:	0f 30       	R1 = R7;
ffa01362:	00 e1 90 00 	R0.L = 0x90;		/* (144)	R0=0xff900090(-7339888) */
ffa01366:	ff e3 4f fa 	CALL 0xffa00804 <_printf_int>;
ffa0136a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900090(-7339888) */
ffa0136e:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa01372:	ff e3 2d f9 	CALL 0xffa005cc <_uart_str>;
ffa01376:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01378:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0137a:	ff e3 45 fd 	CALL 0xffa00e04 <_spi_write_register>;
ffa0137e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01380:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01382:	ff e3 85 ff 	CALL 0xffa0128c <_spi_write_register_ver>;
ffa01386:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01388:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0138a:	ff e3 81 ff 	CALL 0xffa0128c <_spi_write_register_ver>;
ffa0138e:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01390:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01392:	ff e3 7d ff 	CALL 0xffa0128c <_spi_write_register_ver>;
ffa01396:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01398:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0139a:	ff e3 79 ff 	CALL 0xffa0128c <_spi_write_register_ver>;
ffa0139e:	0f 30       	R1 = R7;
ffa013a0:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa013a2:	ff e3 75 ff 	CALL 0xffa0128c <_spi_write_register_ver>;
ffa013a6:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa013a8:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa013aa:	ff e3 71 ff 	CALL 0xffa0128c <_spi_write_register_ver>;
ffa013ae:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa013b2:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa013b4:	ff e3 6c ff 	CALL 0xffa0128c <_spi_write_register_ver>;
ffa013b8:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa013ba:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa013bc:	ff e3 68 ff 	CALL 0xffa0128c <_spi_write_register_ver>;
ffa013c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa013c4:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa013c8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa013ca:	10 97       	W[P2] = R0;
ffa013cc:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa013d0:	ff e3 9a fd 	CALL 0xffa00f04 <_spi_write_byte>;
ffa013d4:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa013d8:	ff e3 96 fd 	CALL 0xffa00f04 <_spi_write_byte>;
ffa013dc:	01 e8 00 00 	UNLINK;
ffa013e0:	40 43       	R0 = R0.B (Z);
ffa013e2:	38 05       	(R7:7) = [SP++];
ffa013e4:	10 00       	RTS;
	...

ffa013e8 <_bfin_EMAC_send_check>:
ffa013e8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa013ec:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa013f0:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa013f4:	50 95       	R0 = W[P2] (X);
ffa013f6:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa013f8:	00 02       	R0 = CC;
ffa013fa:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa013fc:	01 e8 00 00 	UNLINK;
ffa01400:	10 00       	RTS;
	...

ffa01404 <_FormatIPAddress>:
ffa01404:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01408:	18 30       	R3 = R0;
ffa0140a:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa0140e:	40 4f       	R0 <<= 0x8;
ffa01410:	52 43       	R2 = R2.B (Z);
ffa01412:	10 56       	R0 = R0 | R2;
ffa01414:	40 4f       	R0 <<= 0x8;
ffa01416:	49 43       	R1 = R1.B (Z);
ffa01418:	08 56       	R0 = R0 | R1;
ffa0141a:	40 4f       	R0 <<= 0x8;
ffa0141c:	5b 43       	R3 = R3.B (Z);
ffa0141e:	18 56       	R0 = R0 | R3;
ffa01420:	01 e8 00 00 	UNLINK;
ffa01424:	10 00       	RTS;
	...

ffa01428 <_bfin_EMAC_halt>:
ffa01428:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa0142c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0142e:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01432:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01436:	10 93       	[P2] = R0;
ffa01438:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa0143c:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa01440:	10 97       	W[P2] = R0;
ffa01442:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa01446:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa0144a:	10 97       	W[P2] = R0;
ffa0144c:	01 e8 00 00 	UNLINK;
ffa01450:	10 00       	RTS;
	...

ffa01454 <_PollMdcDone>:
ffa01454:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01458:	02 20       	JUMP.S 0xffa0145c <_PollMdcDone+0x8>;
ffa0145a:	00 00       	NOP;
ffa0145c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01460:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01464:	10 91       	R0 = [P2];
ffa01466:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01468:	f9 17       	IF !CC JUMP 0xffa0145a <_PollMdcDone+0x6> (BP);
ffa0146a:	01 e8 00 00 	UNLINK;
ffa0146e:	10 00       	RTS;

ffa01470 <_WrPHYReg>:
ffa01470:	68 05       	[--SP] = (R7:5);
ffa01472:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01476:	28 30       	R5 = R0;
ffa01478:	31 30       	R6 = R1;
ffa0147a:	3a 30       	R7 = R2;
ffa0147c:	ff e3 ec ff 	CALL 0xffa01454 <_PollMdcDone>;
ffa01480:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01482:	b0 55       	R6 = R0 & R6;
ffa01484:	28 54       	R0 = R0 & R5;
ffa01486:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0148a:	58 4f       	R0 <<= 0xb;
ffa0148c:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0148e:	ff 42       	R7 = R7.L (Z);
ffa01490:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01494:	36 4f       	R6 <<= 0x6;
ffa01496:	08 56       	R0 = R0 | R1;
ffa01498:	17 93       	[P2] = R7;
ffa0149a:	86 57       	R6 = R6 | R0;
ffa0149c:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0149e:	16 93       	[P2] = R6;
ffa014a0:	01 e8 00 00 	UNLINK;
ffa014a4:	28 05       	(R7:5) = [SP++];
ffa014a6:	10 00       	RTS;

ffa014a8 <_RdPHYReg>:
ffa014a8:	fd 05       	[--SP] = (R7:7, P5:5);
ffa014aa:	29 32       	P5 = R1;
ffa014ac:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa014b0:	38 30       	R7 = R0;
ffa014b2:	ff e3 d1 ff 	CALL 0xffa01454 <_PollMdcDone>;
ffa014b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa014ba:	45 30       	R0 = P5;
ffa014bc:	c0 42       	R0 = R0.L (Z);
ffa014be:	28 32       	P5 = R0;
ffa014c0:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa014c2:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa014c6:	55 30       	R2 = P5;
ffa014c8:	42 54       	R1 = R2 & R0;
ffa014ca:	38 54       	R0 = R0 & R7;
ffa014cc:	58 4f       	R0 <<= 0xb;
ffa014ce:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa014d0:	31 4f       	R1 <<= 0x6;
ffa014d2:	41 56       	R1 = R1 | R0;
ffa014d4:	11 93       	[P2] = R1;
ffa014d6:	ff e3 bf ff 	CALL 0xffa01454 <_PollMdcDone>;
ffa014da:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa014de:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa014e2:	10 91       	R0 = [P2];
ffa014e4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa014e8:	0a e1 a0 0b 	P2.L = 0xba0;		/* (2976)	P2=0xff900ba0 <_PHYregs> */
ffa014ec:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa014ee:	10 97       	W[P2] = R0;
ffa014f0:	01 e8 00 00 	UNLINK;
ffa014f4:	c0 42       	R0 = R0.L (Z);
ffa014f6:	bd 05       	(R7:7, P5:5) = [SP++];
ffa014f8:	10 00       	RTS;
	...

ffa014fc <_SoftResetPHY>:
ffa014fc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa014fe:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01500:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa01504:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01508:	ff e3 b4 ff 	CALL 0xffa01470 <_WrPHYReg>;
ffa0150c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0150e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01510:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01512:	ff e3 af ff 	CALL 0xffa01470 <_WrPHYReg>;
ffa01516:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01518:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0151a:	ff e3 c7 ff 	CALL 0xffa014a8 <_RdPHYReg>;
ffa0151e:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa01520:	fb 1f       	IF CC JUMP 0xffa01516 <_SoftResetPHY+0x1a> (BP);
ffa01522:	01 e8 00 00 	UNLINK;
ffa01526:	10 00       	RTS;

ffa01528 <_NetCksum>:
ffa01528:	01 0d       	CC = R1 <= 0x0;
ffa0152a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0152e:	10 18       	IF CC JUMP 0xffa0154e <_NetCksum+0x26>;
ffa01530:	10 32       	P2 = R0;
ffa01532:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01534:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01536:	0a 64       	R2 += 0x1;		/* (  1) */
ffa01538:	10 94       	R0 = W[P2++] (Z);
ffa0153a:	0a 08       	CC = R2 == R1;
ffa0153c:	c3 50       	R3 = R3 + R0;
ffa0153e:	fc 17       	IF !CC JUMP 0xffa01536 <_NetCksum+0xe> (BP);
ffa01540:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa01544:	03 50       	R0 = R3 + R0;
ffa01546:	c0 42       	R0 = R0.L (Z);
ffa01548:	01 e8 00 00 	UNLINK;
ffa0154c:	10 00       	RTS;
ffa0154e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01550:	01 e8 00 00 	UNLINK;
ffa01554:	10 00       	RTS;
	...

ffa01558 <_htons>:
ffa01558:	08 30       	R1 = R0;
ffa0155a:	c0 42       	R0 = R0.L (Z);
ffa0155c:	40 4e       	R0 >>= 0x8;
ffa0155e:	41 4f       	R1 <<= 0x8;
ffa01560:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01564:	08 56       	R0 = R0 | R1;
ffa01566:	c0 42       	R0 = R0.L (Z);
ffa01568:	01 e8 00 00 	UNLINK;
ffa0156c:	10 00       	RTS;
	...

ffa01570 <_htonl>:
ffa01570:	10 30       	R2 = R0;
ffa01572:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa01576:	40 43       	R0 = R0.B (Z);
ffa01578:	49 43       	R1 = R1.B (Z);
ffa0157a:	40 4f       	R0 <<= 0x8;
ffa0157c:	08 56       	R0 = R0 | R1;
ffa0157e:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa01582:	40 4f       	R0 <<= 0x8;
ffa01584:	49 43       	R1 = R1.B (Z);
ffa01586:	08 56       	R0 = R0 | R1;
ffa01588:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0158c:	40 4f       	R0 <<= 0x8;
ffa0158e:	c2 4e       	R2 >>= 0x18;
ffa01590:	10 56       	R0 = R0 | R2;
ffa01592:	01 e8 00 00 	UNLINK;
ffa01596:	10 00       	RTS;

ffa01598 <_pack4chars>:
ffa01598:	08 32       	P1 = R0;
ffa0159a:	10 32       	P2 = R0;
ffa0159c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa015a0:	01 e8 00 00 	UNLINK;
ffa015a4:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa015a8:	10 98       	R0 = B[P2++] (Z);
ffa015aa:	41 4f       	R1 <<= 0x8;
ffa015ac:	08 50       	R0 = R0 + R1;
ffa015ae:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa015b2:	81 4f       	R1 <<= 0x10;
ffa015b4:	08 50       	R0 = R0 + R1;
ffa015b6:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa015ba:	c1 4f       	R1 <<= 0x18;
ffa015bc:	08 50       	R0 = R0 + R1;
ffa015be:	10 00       	RTS;

ffa015c0 <_ip_header_setup>:
ffa015c0:	f4 05       	[--SP] = (R7:6, P5:4);
ffa015c2:	28 32       	P5 = R0;
ffa015c4:	21 32       	P4 = R1;
ffa015c6:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa015ca:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa015ce:	32 30       	R6 = R2;
ffa015d0:	28 9b       	B[P5] = R0;
ffa015d2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa015d4:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa015d8:	27 91       	R7 = [P4];
ffa015da:	f8 42       	R0 = R7.L (Z);
ffa015dc:	ff e3 be ff 	CALL 0xffa01558 <_htons>;
ffa015e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba0 <_PHYregs> */
ffa015e4:	0a e1 ea 0b 	P2.L = 0xbea;		/* (3050)	P2=0xff900bea <_NetIPID> */
ffa015e8:	68 b4       	W[P5 + 0x2] = R0;
ffa015ea:	10 95       	R0 = W[P2] (Z);
ffa015ec:	08 30       	R1 = R0;
ffa015ee:	09 64       	R1 += 0x1;		/* (  1) */
ffa015f0:	67 67       	R7 += -0x14;		/* (-20) */
ffa015f2:	11 97       	W[P2] = R1;
ffa015f4:	27 93       	[P4] = R7;
ffa015f6:	ff e3 b1 ff 	CALL 0xffa01558 <_htons>;
ffa015fa:	a8 b4       	W[P5 + 0x4] = R0;
ffa015fc:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01600:	ff e3 ac ff 	CALL 0xffa01558 <_htons>;
ffa01604:	e8 b4       	W[P5 + 0x6] = R0;
ffa01606:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa0160a:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0160e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bea <_NetIPID> */
ffa01612:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa01616:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0161a:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_NetOurIP> */
ffa0161e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01620:	68 b5       	W[P5 + 0xa] = R0;
ffa01622:	10 91       	R0 = [P2];
ffa01624:	e8 b0       	[P5 + 0xc] = R0;
ffa01626:	2e b1       	[P5 + 0x10] = R6;
ffa01628:	45 30       	R0 = P5;
ffa0162a:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0162c:	ff e3 7e ff 	CALL 0xffa01528 <_NetCksum>;
ffa01630:	c0 43       	R0 =~ R0;
ffa01632:	68 b5       	W[P5 + 0xa] = R0;
ffa01634:	01 e8 00 00 	UNLINK;
ffa01638:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa0163a:	45 30       	R0 = P5;
ffa0163c:	b4 05       	(R7:6, P5:4) = [SP++];
ffa0163e:	10 00       	RTS;

ffa01640 <_ip_header_checksum>:
ffa01640:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01644:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa01646:	ff e3 71 ff 	CALL 0xffa01528 <_NetCksum>;
ffa0164a:	08 02       	CC = R0;
ffa0164c:	00 02       	R0 = CC;
ffa0164e:	01 e8 00 00 	UNLINK;
ffa01652:	10 00       	RTS;

ffa01654 <_icmp_header_setup>:
ffa01654:	00 32       	P0 = R0;
ffa01656:	c5 04       	[--SP] = (P5:5);
ffa01658:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0165a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0165e:	29 32       	P5 = R1;
ffa01660:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa01664:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01666:	40 b4       	W[P0 + 0x2] = R0;
ffa01668:	38 ab       	R0 = W[FP + 0x18] (X);
ffa0166a:	80 b4       	W[P0 + 0x4] = R0;
ffa0166c:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa0166e:	02 9b       	B[P0] = R2;
ffa01670:	c0 b4       	W[P0 + 0x6] = R0;
ffa01672:	48 32       	P1 = P0;
ffa01674:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01676:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa01678:	b2 e0 03 20 	LSETUP(0xffa0167c <_icmp_header_setup+0x28>, 0xffa0167e <_icmp_header_setup+0x2a>) LC1 = P2;
ffa0167c:	08 94       	R0 = W[P1++] (Z);
ffa0167e:	41 50       	R1 = R1 + R0;
ffa01680:	c8 42       	R0 = R1.L (Z);
ffa01682:	81 4e       	R1 >>= 0x10;
ffa01684:	08 50       	R0 = R0 + R1;
ffa01686:	c0 43       	R0 =~ R0;
ffa01688:	40 b4       	W[P0 + 0x2] = R0;
ffa0168a:	28 91       	R0 = [P5];
ffa0168c:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa0168e:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01690:	01 e8 00 00 	UNLINK;
ffa01694:	28 93       	[P5] = R0;
ffa01696:	40 30       	R0 = P0;
ffa01698:	85 04       	(P5:5) = [SP++];
ffa0169a:	10 00       	RTS;

ffa0169c <_udp_header_setup>:
ffa0169c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0169e:	28 32       	P5 = R0;
ffa016a0:	21 32       	P4 = R1;
ffa016a2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa016a6:	d0 42       	R0 = R2.L (Z);
ffa016a8:	ff e3 58 ff 	CALL 0xffa01558 <_htons>;
ffa016ac:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa016b0:	28 97       	W[P5] = R0;
ffa016b2:	07 30       	R0 = R7;
ffa016b4:	ff e3 52 ff 	CALL 0xffa01558 <_htons>;
ffa016b8:	27 91       	R7 = [P4];
ffa016ba:	68 b4       	W[P5 + 0x2] = R0;
ffa016bc:	f8 42       	R0 = R7.L (Z);
ffa016be:	ff e3 4d ff 	CALL 0xffa01558 <_htons>;
ffa016c2:	a8 b4       	W[P5 + 0x4] = R0;
ffa016c4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa016c6:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa016c8:	e8 b4       	W[P5 + 0x6] = R0;
ffa016ca:	01 e8 00 00 	UNLINK;
ffa016ce:	45 6c       	P5 += 0x8;		/* (  8) */
ffa016d0:	45 30       	R0 = P5;
ffa016d2:	27 93       	[P4] = R7;
ffa016d4:	bc 05       	(R7:7, P5:4) = [SP++];
ffa016d6:	10 00       	RTS;

ffa016d8 <_tcp_header_setup>:
ffa016d8:	fc 05       	[--SP] = (R7:7, P5:4);
ffa016da:	28 32       	P5 = R0;
ffa016dc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa016e0:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa016e4:	21 32       	P4 = R1;
ffa016e6:	3a 30       	R7 = R2;
ffa016e8:	ff e3 38 ff 	CALL 0xffa01558 <_htons>;
ffa016ec:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa016f0:	0a e1 0c 0d 	P2.L = 0xd0c;		/* (3340)	P2=0xff900d0c <_TcpClientPort> */
ffa016f4:	28 97       	W[P5] = R0;
ffa016f6:	50 95       	R0 = W[P2] (X);
ffa016f8:	68 b4       	W[P5 + 0x2] = R0;
ffa016fa:	38 a2       	R0 = [FP + 0x20];
ffa016fc:	ff e3 3a ff 	CALL 0xffa01570 <_htonl>;
ffa01700:	68 b0       	[P5 + 0x4] = R0;
ffa01702:	78 a2       	R0 = [FP + 0x24];
ffa01704:	ff e3 36 ff 	CALL 0xffa01570 <_htonl>;
ffa01708:	a8 b0       	[P5 + 0x8] = R0;
ffa0170a:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa0170e:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01712:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa01716:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa0171a:	ff e3 1f ff 	CALL 0xffa01558 <_htons>;
ffa0171e:	e8 b5       	W[P5 + 0xe] = R0;
ffa01720:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01722:	28 b6       	W[P5 + 0x10] = R0;
ffa01724:	68 b6       	W[P5 + 0x12] = R0;
ffa01726:	20 91       	R0 = [P4];
ffa01728:	60 67       	R0 += -0x14;		/* (-20) */
ffa0172a:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa0172c:	01 e8 00 00 	UNLINK;
ffa01730:	20 93       	[P4] = R0;
ffa01732:	45 30       	R0 = P5;
ffa01734:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01736:	10 00       	RTS;

ffa01738 <_DHCP_parse>:
ffa01738:	f5 05       	[--SP] = (R7:6, P5:5);
ffa0173a:	09 0d       	CC = R1 <= 0x1;
ffa0173c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01740:	10 32       	P2 = R0;
ffa01742:	33 18       	IF CC JUMP 0xffa017a8 <_DHCP_parse+0x70>;
ffa01744:	00 00       	NOP;
ffa01746:	31 30       	R6 = R1;
ffa01748:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa0174a:	11 98       	R1 = B[P2++] (Z);
ffa0174c:	01 0c       	CC = R1 == 0x0;
ffa0174e:	2b 1c       	IF CC JUMP 0xffa017a4 <_DHCP_parse+0x6c> (BP);
ffa01750:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa01754:	01 08       	CC = R1 == R0;
ffa01756:	57 99       	R7 = B[P2] (X);
ffa01758:	28 18       	IF CC JUMP 0xffa017a8 <_DHCP_parse+0x70>;
ffa0175a:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa0175c:	6a 32       	P5 = P2;
ffa0175e:	01 0a       	CC = R1 <= R0 (IU);
ffa01760:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa01762:	09 14       	IF !CC JUMP 0xffa01774 <_DHCP_parse+0x3c> (BP);
ffa01764:	09 32       	P1 = R1;
ffa01766:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d0c <_TcpClientPort> */
ffa0176a:	0a e1 78 03 	P2.L = 0x378;		/* (888)	P2=0xff900378 */
ffa0176e:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa01770:	52 91       	P2 = [P2];
ffa01772:	52 00       	JUMP (P2);
ffa01774:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa01778:	00 e1 50 01 	R0.L = 0x150;		/* (336)	R0=0xff900150(-7339696) */
ffa0177c:	ff e3 44 f8 	CALL 0xffa00804 <_printf_int>;
ffa01780:	7f 43       	R7 = R7.B (Z);
ffa01782:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900150(-7339696) */
ffa01786:	00 e1 64 01 	R0.L = 0x164;		/* (356)	R0=0xff900164(-7339676) */
ffa0178a:	0f 30       	R1 = R7;
ffa0178c:	ff e3 3c f8 	CALL 0xffa00804 <_printf_int>;
ffa01790:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900164(-7339676) */
ffa01794:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa01798:	ff e3 74 f7 	CALL 0xffa00680 <_printf_str>;
ffa0179c:	0f 32       	P1 = R7;
ffa0179e:	be 53       	R6 = R6 - R7;
ffa017a0:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa017a2:	8d 5a       	P2 = P5 + P1;
ffa017a4:	0e 0d       	CC = R6 <= 0x1;
ffa017a6:	d1 17       	IF !CC JUMP 0xffa01748 <_DHCP_parse+0x10> (BP);
ffa017a8:	01 e8 00 00 	UNLINK;
ffa017ac:	b5 05       	(R7:6, P5:5) = [SP++];
ffa017ae:	10 00       	RTS;
ffa017b0:	45 30       	R0 = P5;
ffa017b2:	ff e3 f3 fe 	CALL 0xffa01598 <_pack4chars>;
ffa017b6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900378 */
ffa017ba:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_NetSubnetMask> */
ffa017be:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa017c2:	10 93 00 00 
ffa017c6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a34(-7337420) */
ffa017ca:	00 e1 a8 00 	R0.L = 0xa8;		/* (168)	R0=0xff9000a8(-7339864) */
ffa017ce:	ff e3 bd f8 	CALL 0xffa00948 <_printf_ip>;
ffa017d2:	7f 43       	R7 = R7.B (Z);
ffa017d4:	de 2f       	JUMP.S 0xffa01790 <_DHCP_parse+0x58>;
ffa017d6:	45 30       	R0 = P5;
ffa017d8:	ff e3 e0 fe 	CALL 0xffa01598 <_pack4chars>;
ffa017dc:	08 30       	R1 = R0;
ffa017de:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a8(-7339864) */
ffa017e2:	00 e1 b8 00 	R0.L = 0xb8;		/* (184)	R0=0xff9000b8(-7339848) */
ffa017e6:	ff e3 b1 f8 	CALL 0xffa00948 <_printf_ip>;
ffa017ea:	7f 43       	R7 = R7.B (Z);
ffa017ec:	d2 2f       	JUMP.S 0xffa01790 <_DHCP_parse+0x58>;
ffa017ee:	45 30       	R0 = P5;
ffa017f0:	ff e3 d4 fe 	CALL 0xffa01598 <_pack4chars>;
ffa017f4:	08 30       	R1 = R0;
ffa017f6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000b8(-7339848) */
ffa017fa:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa017fe:	ff e3 a5 f8 	CALL 0xffa00948 <_printf_ip>;
ffa01802:	7f 43       	R7 = R7.B (Z);
ffa01804:	c6 2f       	JUMP.S 0xffa01790 <_DHCP_parse+0x58>;
ffa01806:	45 30       	R0 = P5;
ffa01808:	ff e3 c8 fe 	CALL 0xffa01598 <_pack4chars>;
ffa0180c:	08 30       	R1 = R0;
ffa0180e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000c8(-7339832) */
ffa01812:	00 e1 d8 00 	R0.L = 0xd8;		/* (216)	R0=0xff9000d8(-7339816) */
ffa01816:	ff e3 99 f8 	CALL 0xffa00948 <_printf_ip>;
ffa0181a:	7f 43       	R7 = R7.B (Z);
ffa0181c:	ba 2f       	JUMP.S 0xffa01790 <_DHCP_parse+0x58>;
ffa0181e:	45 30       	R0 = P5;
ffa01820:	ff e3 bc fe 	CALL 0xffa01598 <_pack4chars>;
ffa01824:	ff e3 a6 fe 	CALL 0xffa01570 <_htonl>;
ffa01828:	08 30       	R1 = R0;
ffa0182a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000d8(-7339816) */
ffa0182e:	00 e1 e8 00 	R0.L = 0xe8;		/* (232)	R0=0xff9000e8(-7339800) */
ffa01832:	ff e3 e9 f7 	CALL 0xffa00804 <_printf_int>;
ffa01836:	7f 43       	R7 = R7.B (Z);
ffa01838:	ac 2f       	JUMP.S 0xffa01790 <_DHCP_parse+0x58>;
ffa0183a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000e8(-7339800) */
ffa0183e:	29 99       	R1 = B[P5] (Z);
ffa01840:	00 e1 fc 00 	R0.L = 0xfc;		/* (252)	R0=0xff9000fc(-7339780) */
ffa01844:	ff e3 e0 f7 	CALL 0xffa00804 <_printf_int>;
ffa01848:	7f 43       	R7 = R7.B (Z);
ffa0184a:	a3 2f       	JUMP.S 0xffa01790 <_DHCP_parse+0x58>;
ffa0184c:	45 30       	R0 = P5;
ffa0184e:	ff e3 a5 fe 	CALL 0xffa01598 <_pack4chars>;
ffa01852:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c18 <_NetSubnetMask> */
ffa01856:	0a e1 e4 0b 	P2.L = 0xbe4;		/* (3044)	P2=0xff900be4 <_NetDHCPserv> */
ffa0185a:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa0185e:	10 93 00 00 
ffa01862:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000fc(-7339780) */
ffa01866:	00 e1 10 01 	R0.L = 0x110;		/* (272)	R0=0xff900110(-7339760) */
ffa0186a:	ff e3 6f f8 	CALL 0xffa00948 <_printf_ip>;
ffa0186e:	7f 43       	R7 = R7.B (Z);
ffa01870:	90 2f       	JUMP.S 0xffa01790 <_DHCP_parse+0x58>;
ffa01872:	45 30       	R0 = P5;
ffa01874:	ff e3 92 fe 	CALL 0xffa01598 <_pack4chars>;
ffa01878:	ff e3 7c fe 	CALL 0xffa01570 <_htonl>;
ffa0187c:	08 30       	R1 = R0;
ffa0187e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900110(-7339760) */
ffa01882:	00 e1 24 01 	R0.L = 0x124;		/* (292)	R0=0xff900124(-7339740) */
ffa01886:	ff e3 bf f7 	CALL 0xffa00804 <_printf_int>;
ffa0188a:	7f 43       	R7 = R7.B (Z);
ffa0188c:	82 2f       	JUMP.S 0xffa01790 <_DHCP_parse+0x58>;
ffa0188e:	45 30       	R0 = P5;
ffa01890:	ff e3 84 fe 	CALL 0xffa01598 <_pack4chars>;
ffa01894:	ff e3 6e fe 	CALL 0xffa01570 <_htonl>;
ffa01898:	08 30       	R1 = R0;
ffa0189a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900124(-7339740) */
ffa0189e:	00 e1 38 01 	R0.L = 0x138;		/* (312)	R0=0xff900138(-7339720) */
ffa018a2:	ff e3 b1 f7 	CALL 0xffa00804 <_printf_int>;
ffa018a6:	7f 43       	R7 = R7.B (Z);
ffa018a8:	74 2f       	JUMP.S 0xffa01790 <_DHCP_parse+0x58>;
	...

ffa018ac <_bfin_EMAC_send_nocopy>:
ffa018ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00be4(-4191260) */
ffa018b0:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa018b2:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa018b6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa018ba:	10 97       	W[P2] = R0;
ffa018bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa018c0:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa018c4:	50 95       	R0 = W[P2] (X);
ffa018c6:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa018c8:	59 10       	IF !CC JUMP 0xffa0197a <_bfin_EMAC_send_nocopy+0xce>;
ffa018ca:	00 00       	NOP;
ffa018cc:	00 00       	NOP;
ffa018ce:	00 00       	NOP;
ffa018d0:	50 95       	R0 = W[P2] (X);
ffa018d2:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa018d4:	16 18       	IF CC JUMP 0xffa01900 <_bfin_EMAC_send_nocopy+0x54>;
ffa018d6:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0d68 */
ffa018da:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa018de:	b2 e0 09 10 	LSETUP(0xffa018e2 <_bfin_EMAC_send_nocopy+0x36>, 0xffa018f0 <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa018e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa018e6:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa018ea:	50 95       	R0 = W[P2] (X);
ffa018ec:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa018ee:	09 18       	IF CC JUMP 0xffa01900 <_bfin_EMAC_send_nocopy+0x54>;
ffa018f0:	00 00       	NOP;
ffa018f2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa018f6:	00 e1 84 01 	R0.L = 0x184;		/* (388)	R0=0xff900184(-7339644) */
ffa018fa:	ff e3 c3 f6 	CALL 0xffa00680 <_printf_str>;
ffa018fe:	30 20       	JUMP.S 0xffa0195e <_bfin_EMAC_send_nocopy+0xb2>;
ffa01900:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa01904:	08 e1 e8 0b 	P0.L = 0xbe8;		/* (3048)	P0=0xff900be8 <_txIdx> */
ffa01908:	00 95       	R0 = W[P0] (Z);
ffa0190a:	10 32       	P2 = R0;
ffa0190c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01910:	09 e1 ec 0b 	P1.L = 0xbec;		/* (3052)	P1=0xff900bec <_txbuf> */
ffa01914:	42 95       	R2 = W[P0] (X);
ffa01916:	d1 42       	R1 = R2.L (Z);
ffa01918:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0191a:	52 91       	P2 = [P2];
ffa0191c:	11 0d       	CC = R1 <= 0x2;
ffa0191e:	90 a1       	R0 = [P2 + 0x18];
ffa01920:	50 b0       	[P2 + 0x4] = R0;
ffa01922:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01924:	90 b2       	[P2 + 0x28] = R0;
ffa01926:	11 32       	P2 = R1;
ffa01928:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa0192a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa0192e:	08 91       	R0 = [P1];
ffa01930:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01934:	10 93       	[P2] = R0;
ffa01936:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa0193a:	0a e1 6a 04 	P2.L = 0x46a;		/* (1130)	P2=0xff90046a <_txdmacfg> */
ffa0193e:	50 95       	R0 = W[P2] (X);
ffa01940:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0046a(-4193174) */
ffa01944:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01948:	10 97       	W[P2] = R0;
ffa0194a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa0194e:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01952:	10 91       	R0 = [P2];
ffa01954:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01956:	10 93       	[P2] = R0;
ffa01958:	0d 1c       	IF CC JUMP 0xffa01972 <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa0195a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0195c:	00 97       	W[P0] = R0;
ffa0195e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01962:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01964:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01968:	10 97       	W[P2] = R0;
ffa0196a:	01 e8 00 00 	UNLINK;
ffa0196e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01970:	10 00       	RTS;
ffa01972:	02 30       	R0 = R2;
ffa01974:	08 64       	R0 += 0x1;		/* (  1) */
ffa01976:	00 97       	W[P0] = R0;
ffa01978:	f3 2f       	JUMP.S 0xffa0195e <_bfin_EMAC_send_nocopy+0xb2>;
ffa0197a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0197e:	00 e1 6c 01 	R0.L = 0x16c;		/* (364)	R0=0xff90016c(-7339668) */
ffa01982:	ff e3 7f f6 	CALL 0xffa00680 <_printf_str>;
ffa01986:	ec 2f       	JUMP.S 0xffa0195e <_bfin_EMAC_send_nocopy+0xb2>;

ffa01988 <_DHCP_tx>:
ffa01988:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0198a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa0198e:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01992:	0a e1 e8 0b 	P2.L = 0xbe8;		/* (3048)	P2=0xff900be8 <_txIdx> */
ffa01996:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa0199a:	10 95 00 00 
ffa0199e:	10 32       	P2 = R0;
ffa019a0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bec <_txbuf> */
ffa019a4:	09 e1 ec 0b 	P1.L = 0xbec;		/* (3052)	P1=0xff900bec <_txbuf> */
ffa019a8:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa019ac:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa019ae:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa019b0:	52 91       	P2 = [P2];
ffa019b2:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa019b6:	f1 bb 00 00 
ffa019ba:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90050c */
ffa019be:	0d e1 10 0c 	P5.L = 0xc10;		/* (3088)	P5=0xff900c10 <_NetOurMAC> */
ffa019c2:	94 ad       	P4 = [P2 + 0x18];
ffa019c4:	1a 32       	P3 = R2;
ffa019c6:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa019c8:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa019ca:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa019ce:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa019d2:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa019d6:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa019da:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa019de:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa019e2:	20 97       	W[P4] = R0;
ffa019e4:	68 99       	R0 = B[P5] (X);
ffa019e6:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa019ea:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa019ee:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa019f2:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa019f6:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa019fa:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa019fe:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa01a02:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01a06:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa01a0a:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01a0e:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa01a12:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01a16:	ff e3 a1 fd 	CALL 0xffa01558 <_htons>;
ffa01a1a:	e0 b5       	W[P4 + 0xe] = R0;
ffa01a1c:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01a20:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa01a24:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa01a28:	04 50       	R0 = R4 + R0;
ffa01a2a:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa01a2e:	c0 42       	R0 = R0.L (Z);
ffa01a30:	ff e3 94 fd 	CALL 0xffa01558 <_htons>;
ffa01a34:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be8 <_txIdx> */
ffa01a38:	0a e1 ea 0b 	P2.L = 0xbea;		/* (3050)	P2=0xff900bea <_NetIPID> */
ffa01a3c:	60 b6       	W[P4 + 0x12] = R0;
ffa01a3e:	10 95       	R0 = W[P2] (Z);
ffa01a40:	08 30       	R1 = R0;
ffa01a42:	09 64       	R1 += 0x1;		/* (  1) */
ffa01a44:	11 97       	W[P2] = R1;
ffa01a46:	ff e3 89 fd 	CALL 0xffa01558 <_htons>;
ffa01a4a:	a0 b6       	W[P4 + 0x14] = R0;
ffa01a4c:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01a50:	ff e3 84 fd 	CALL 0xffa01558 <_htons>;
ffa01a54:	e0 b6       	W[P4 + 0x16] = R0;
ffa01a56:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01a58:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa01a5c:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa01a60:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa01a64:	66 b7 00 00 
ffa01a68:	44 30       	R0 = P4;
ffa01a6a:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01a6c:	e7 b1       	[P4 + 0x1c] = R7;
ffa01a6e:	23 be       	[P4 + 0x20] = P3;
ffa01a70:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01a72:	ff e3 5b fd 	CALL 0xffa01528 <_NetCksum>;
ffa01a76:	c0 43       	R0 =~ R0;
ffa01a78:	60 b7       	W[P4 + 0x1a] = R0;
ffa01a7a:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa01a7e:	ff e3 6d fd 	CALL 0xffa01558 <_htons>;
ffa01a82:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa01a86:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa01a8a:	ff e3 67 fd 	CALL 0xffa01558 <_htons>;
ffa01a8e:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa01a92:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa01a96:	04 50       	R0 = R4 + R0;
ffa01a98:	c0 42       	R0 = R0.L (Z);
ffa01a9a:	ff e3 5f fd 	CALL 0xffa01558 <_htons>;
ffa01a9e:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa01aa2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01aa4:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa01aa8:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa01aac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bea(-4191254) */
ffa01ab0:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01ab2:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa01ab6:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa01aba:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa01abe:	10 91       	R0 = [P2];
ffa01ac0:	20 b3       	[P4 + 0x30] = R0;
ffa01ac2:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa01ac6:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa01aca:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa01ace:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa01ad2:	a7 b3       	[P4 + 0x38] = R7;
ffa01ad4:	e7 b3       	[P4 + 0x3c] = R7;
ffa01ad6:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa01ada:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa01ade:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa01ae2:	ff e3 47 fd 	CALL 0xffa01570 <_htonl>;
ffa01ae6:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa01aea:	68 99       	R0 = B[P5] (X);
ffa01aec:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa01af0:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01af4:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa01af8:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01afc:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa01b00:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01b04:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa01b08:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01b0c:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa01b10:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01b14:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa01b18:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa01b1c:	54 5a       	P1 = P4 + P2;
ffa01b1e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b20:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa01b22:	b2 e0 02 20 	LSETUP(0xffa01b26 <_DHCP_tx+0x19e>, 0xffa01b26 <_DHCP_tx+0x19e>) LC1 = P2;
ffa01b26:	08 9a       	B[P1++] = R0;
ffa01b28:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa01b2c:	54 5a       	P1 = P4 + P2;
ffa01b2e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b30:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa01b32:	b2 e0 02 20 	LSETUP(0xffa01b36 <_DHCP_tx+0x1ae>, 0xffa01b36 <_DHCP_tx+0x1ae>) LC1 = P2;
ffa01b36:	08 92       	[P1++] = R0;
ffa01b38:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa01b3c:	54 5a       	P1 = P4 + P2;
ffa01b3e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b40:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa01b42:	b2 e0 02 20 	LSETUP(0xffa01b46 <_DHCP_tx+0x1be>, 0xffa01b46 <_DHCP_tx+0x1be>) LC1 = P2;
ffa01b46:	08 92       	[P1++] = R0;
ffa01b48:	44 30       	R0 = P4;
ffa01b4a:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa01b4e:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa01b52:	f0 b9 00 00 
ffa01b56:	14 30       	R2 = R4;
ffa01b58:	ff e3 3c f7 	CALL 0xffa009d0 <_memcpy_>;
ffa01b5c:	01 e8 00 00 	UNLINK;
ffa01b60:	a3 05       	(R7:4, P5:3) = [SP++];
ffa01b62:	ff e2 a5 fe 	JUMP.L 0xffa018ac <_bfin_EMAC_send_nocopy>;
	...

ffa01b68 <_bfin_EMAC_send>:
ffa01b68:	c4 04       	[--SP] = (P5:4);
ffa01b6a:	01 0d       	CC = R1 <= 0x0;
ffa01b6c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b70:	18 30       	R3 = R0;
ffa01b72:	11 30       	R2 = R1;
ffa01b74:	90 18       	IF CC JUMP 0xffa01c94 <_bfin_EMAC_send+0x12c>;
ffa01b76:	00 00       	NOP;
ffa01b78:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00020(-4194272) */
ffa01b7c:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01b80:	50 95       	R0 = W[P2] (X);
ffa01b82:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01b84:	74 10       	IF !CC JUMP 0xffa01c6c <_bfin_EMAC_send+0x104>;
ffa01b86:	00 00       	NOP;
ffa01b88:	00 00       	NOP;
ffa01b8a:	00 00       	NOP;
ffa01b8c:	50 95       	R0 = W[P2] (X);
ffa01b8e:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01b90:	17 18       	IF CC JUMP 0xffa01bbe <_bfin_EMAC_send+0x56>;
ffa01b92:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0bec */
ffa01b96:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01b9a:	b2 e0 09 10 	LSETUP(0xffa01b9e <_bfin_EMAC_send+0x36>, 0xffa01bac <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa01b9e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01ba2:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01ba6:	50 95       	R0 = W[P2] (X);
ffa01ba8:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01baa:	0a 18       	IF CC JUMP 0xffa01bbe <_bfin_EMAC_send+0x56>;
ffa01bac:	00 00       	NOP;
ffa01bae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01bb2:	00 e1 b8 01 	R0.L = 0x1b8;		/* (440)	R0=0xff9001b8(-7339592) */
ffa01bb6:	ff e3 65 f5 	CALL 0xffa00680 <_printf_str>;
ffa01bba:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01bbc:	53 20       	JUMP.S 0xffa01c62 <_bfin_EMAC_send+0xfa>;
ffa01bbe:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90050c */
ffa01bc2:	0c e1 e8 0b 	P4.L = 0xbe8;		/* (3048)	P4=0xff900be8 <_txIdx> */
ffa01bc6:	20 95       	R0 = W[P4] (Z);
ffa01bc8:	10 32       	P2 = R0;
ffa01bca:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c10 <_NetOurMAC> */
ffa01bce:	0d e1 ec 0b 	P5.L = 0xbec;		/* (3052)	P5=0xff900bec <_txbuf> */
ffa01bd2:	0b 30       	R1 = R3;
ffa01bd4:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01bd6:	52 91       	P2 = [P2];
ffa01bd8:	92 ad       	P2 = [P2 + 0x18];
ffa01bda:	12 96       	W[P2++] = R2;
ffa01bdc:	42 30       	R0 = P2;
ffa01bde:	ff e3 f9 f6 	CALL 0xffa009d0 <_memcpy_>;
ffa01be2:	20 95       	R0 = W[P4] (Z);
ffa01be4:	10 32       	P2 = R0;
ffa01be6:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01be8:	51 91       	P1 = [P2];
ffa01bea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01bee:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01bf2:	51 93       	[P2] = P1;
ffa01bf4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01bf8:	88 a1       	R0 = [P1 + 0x18];
ffa01bfa:	0a e1 6a 04 	P2.L = 0x46a;		/* (1130)	P2=0xff90046a <_txdmacfg> */
ffa01bfe:	48 b0       	[P1 + 0x4] = R0;
ffa01c00:	50 95       	R0 = W[P2] (X);
ffa01c02:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0046a(-4193174) */
ffa01c06:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01c0a:	10 97       	W[P2] = R0;
ffa01c0c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01c10:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01c14:	10 91       	R0 = [P2];
ffa01c16:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01c18:	10 93       	[P2] = R0;
ffa01c1a:	88 a2       	R0 = [P1 + 0x28];
ffa01c1c:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01c1e:	13 10       	IF !CC JUMP 0xffa01c44 <_bfin_EMAC_send+0xdc>;
ffa01c20:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa01c24:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa01c28:	b2 e0 05 20 	LSETUP(0xffa01c2c <_bfin_EMAC_send+0xc4>, 0xffa01c32 <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa01c2c:	88 a2       	R0 = [P1 + 0x28];
ffa01c2e:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01c30:	0a 10       	IF !CC JUMP 0xffa01c44 <_bfin_EMAC_send+0xdc>;
ffa01c32:	00 00       	NOP;
ffa01c34:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001b8(-7339592) */
ffa01c38:	00 e1 d0 01 	R0.L = 0x1d0;		/* (464)	R0=0xff9001d0(-7339568) */
ffa01c3c:	ff e3 22 f5 	CALL 0xffa00680 <_printf_str>;
ffa01c40:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01c42:	10 20       	JUMP.S 0xffa01c62 <_bfin_EMAC_send+0xfa>;
ffa01c44:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa01c48:	61 95 00 00 
ffa01c4c:	8a a2       	R2 = [P1 + 0x28];
ffa01c4e:	88 b2       	[P1 + 0x28] = R0;
ffa01c50:	c8 42       	R0 = R1.L (Z);
ffa01c52:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa01c56:	10 0d       	CC = R0 <= 0x2;
ffa01c58:	0a e1 e8 0b 	P2.L = 0xbe8;		/* (3048)	P2=0xff900be8 <_txIdx> */
ffa01c5c:	14 1c       	IF CC JUMP 0xffa01c84 <_bfin_EMAC_send+0x11c> (BP);
ffa01c5e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c60:	10 97       	W[P2] = R0;
ffa01c62:	01 e8 00 00 	UNLINK;
ffa01c66:	02 30       	R0 = R2;
ffa01c68:	84 04       	(P5:4) = [SP++];
ffa01c6a:	10 00       	RTS;
ffa01c6c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01c70:	00 e1 6c 01 	R0.L = 0x16c;		/* (364)	R0=0xff90016c(-7339668) */
ffa01c74:	ff e3 06 f5 	CALL 0xffa00680 <_printf_str>;
ffa01c78:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01c7a:	01 e8 00 00 	UNLINK;
ffa01c7e:	02 30       	R0 = R2;
ffa01c80:	84 04       	(P5:4) = [SP++];
ffa01c82:	10 00       	RTS;
ffa01c84:	01 30       	R0 = R1;
ffa01c86:	08 64       	R0 += 0x1;		/* (  1) */
ffa01c88:	10 97       	W[P2] = R0;
ffa01c8a:	01 e8 00 00 	UNLINK;
ffa01c8e:	02 30       	R0 = R2;
ffa01c90:	84 04       	(P5:4) = [SP++];
ffa01c92:	10 00       	RTS;
ffa01c94:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90016c(-7339668) */
ffa01c98:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa01c9c:	ff e3 b4 f5 	CALL 0xffa00804 <_printf_int>;
ffa01ca0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01ca2:	01 e8 00 00 	UNLINK;
ffa01ca6:	02 30       	R0 = R2;
ffa01ca8:	84 04       	(P5:4) = [SP++];
ffa01caa:	10 00       	RTS;

ffa01cac <_ether_testUDP>:
ffa01cac:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01cae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be8 <_txIdx> */
ffa01cb2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01cb6:	0a e1 e8 0b 	P2.L = 0xbe8;		/* (3048)	P2=0xff900be8 <_txIdx> */
ffa01cba:	11 95       	R1 = W[P2] (Z);
ffa01cbc:	11 32       	P2 = R1;
ffa01cbe:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01cc2:	09 e1 ec 0b 	P1.L = 0xbec;		/* (3052)	P1=0xff900bec <_txbuf> */
ffa01cc6:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa01cca:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01ccc:	52 91       	P2 = [P2];
ffa01cce:	95 ad       	P5 = [P2 + 0x18];
ffa01cd0:	55 32       	P2 = P5;
ffa01cd2:	11 96       	W[P2++] = R1;
ffa01cd4:	4a 30       	R1 = P2;
ffa01cd6:	00 e3 4d 08 	CALL 0xffa02d70 <_ARP_req>;
ffa01cda:	00 0c       	CC = R0 == 0x0;
ffa01cdc:	7f 18       	IF CC JUMP 0xffa01dda <_ether_testUDP+0x12e>;
ffa01cde:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be8 <_txIdx> */
ffa01ce2:	0a e1 10 0c 	P2.L = 0xc10;		/* (3088)	P2=0xff900c10 <_NetOurMAC> */
ffa01ce6:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01ce8:	50 99       	R0 = B[P2] (X);
ffa01cea:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01cee:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa01cf2:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01cf6:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa01cfa:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa01cfe:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa01d02:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa01d06:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa01d0a:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01d0e:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa01d12:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa01d16:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01d1a:	ff e3 1f fc 	CALL 0xffa01558 <_htons>;
ffa01d1e:	e8 b5       	W[P5 + 0xe] = R0;
ffa01d20:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01d24:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa01d28:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d2a:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa01d2e:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa01d30:	ff e3 14 fc 	CALL 0xffa01558 <_htons>;
ffa01d34:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c10 <_NetOurMAC> */
ffa01d38:	0a e1 ea 0b 	P2.L = 0xbea;		/* (3050)	P2=0xff900bea <_NetIPID> */
ffa01d3c:	68 b6       	W[P5 + 0x12] = R0;
ffa01d3e:	10 95       	R0 = W[P2] (Z);
ffa01d40:	08 30       	R1 = R0;
ffa01d42:	09 64       	R1 += 0x1;		/* (  1) */
ffa01d44:	11 97       	W[P2] = R1;
ffa01d46:	ff e3 09 fc 	CALL 0xffa01558 <_htons>;
ffa01d4a:	a8 b6       	W[P5 + 0x14] = R0;
ffa01d4c:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01d50:	ff e3 04 fc 	CALL 0xffa01558 <_htons>;
ffa01d54:	e8 b6       	W[P5 + 0x16] = R0;
ffa01d56:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01d58:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa01d5c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bea <_NetIPID> */
ffa01d60:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01d62:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa01d66:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_NetOurIP> */
ffa01d6a:	10 91       	R0 = [P2];
ffa01d6c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c1c <_NetOurIP> */
ffa01d70:	0a e1 e0 0b 	P2.L = 0xbe0;		/* (3040)	P2=0xff900be0 <_NetDestIP> */
ffa01d74:	e8 b1       	[P5 + 0x1c] = R0;
ffa01d76:	10 91       	R0 = [P2];
ffa01d78:	28 b2       	[P5 + 0x20] = R0;
ffa01d7a:	45 30       	R0 = P5;
ffa01d7c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01d7e:	6f b7       	W[P5 + 0x1a] = R7;
ffa01d80:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01d82:	ff e3 d3 fb 	CALL 0xffa01528 <_NetCksum>;
ffa01d86:	c0 43       	R0 =~ R0;
ffa01d88:	68 b7       	W[P5 + 0x1a] = R0;
ffa01d8a:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa01d8e:	ff e3 e5 fb 	CALL 0xffa01558 <_htons>;
ffa01d92:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa01d96:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa01d9a:	ff e3 df fb 	CALL 0xffa01558 <_htons>;
ffa01d9e:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa01da2:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa01da4:	ff e3 da fb 	CALL 0xffa01558 <_htons>;
ffa01da8:	55 32       	P2 = P5;
ffa01daa:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa01dae:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa01db2:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa01db4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01db6:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa01db8:	b2 e0 03 10 	LSETUP(0xffa01dbc <_ether_testUDP+0x110>, 0xffa01dbe <_ether_testUDP+0x112>) LC1 = P1;
ffa01dbc:	11 9a       	B[P2++] = R1;
ffa01dbe:	09 64       	R1 += 0x1;		/* (  1) */
ffa01dc0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa01dc4:	00 e1 e4 01 	R0.L = 0x1e4;		/* (484)	R0=0xff9001e4(-7339548) */
ffa01dc8:	ff e3 5c f4 	CALL 0xffa00680 <_printf_str>;
ffa01dcc:	ff e3 70 fd 	CALL 0xffa018ac <_bfin_EMAC_send_nocopy>;
ffa01dd0:	01 e8 00 00 	UNLINK;
ffa01dd4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01dd6:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01dd8:	10 00       	RTS;
ffa01dda:	01 e8 00 00 	UNLINK;
ffa01dde:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01de0:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01de2:	10 00       	RTS;

ffa01de4 <_eth_header_setup>:
ffa01de4:	c4 04       	[--SP] = (P5:4);
ffa01de6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be0 <_NetDestIP> */
ffa01dea:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01dee:	0a e1 e8 0b 	P2.L = 0xbe8;		/* (3048)	P2=0xff900be8 <_txIdx> */
ffa01df2:	00 32       	P0 = R0;
ffa01df4:	10 95       	R0 = W[P2] (Z);
ffa01df6:	10 32       	P2 = R0;
ffa01df8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa01dfc:	09 e1 ec 0b 	P1.L = 0xbec;		/* (3052)	P1=0xff900bec <_txbuf> */
ffa01e00:	00 91       	R0 = [P0];
ffa01e02:	21 32       	P4 = R1;
ffa01e04:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01e06:	52 91       	P2 = [P2];
ffa01e08:	08 30       	R1 = R0;
ffa01e0a:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa01e0c:	80 67       	R0 += -0x10;		/* (-16) */
ffa01e0e:	95 ad       	P5 = [P2 + 0x18];
ffa01e10:	00 93       	[P0] = R0;
ffa01e12:	02 30       	R0 = R2;
ffa01e14:	55 32       	P2 = P5;
ffa01e16:	11 96       	W[P2++] = R1;
ffa01e18:	4a 30       	R1 = P2;
ffa01e1a:	00 e3 ab 07 	CALL 0xffa02d70 <_ARP_req>;
ffa01e1e:	00 0c       	CC = R0 == 0x0;
ffa01e20:	2b 18       	IF CC JUMP 0xffa01e76 <_eth_header_setup+0x92>;
ffa01e22:	00 00       	NOP;
ffa01e24:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be8 <_txIdx> */
ffa01e28:	0a e1 10 0c 	P2.L = 0xc10;		/* (3088)	P2=0xff900c10 <_NetOurMAC> */
ffa01e2c:	50 99       	R0 = B[P2] (X);
ffa01e2e:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01e32:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa01e36:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01e3a:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa01e3e:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa01e42:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa01e46:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa01e4a:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa01e4e:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01e52:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa01e56:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa01e5a:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01e5e:	ff e3 7d fb 	CALL 0xffa01558 <_htons>;
ffa01e62:	e8 b5       	W[P5 + 0xe] = R0;
ffa01e64:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01e66:	20 9b       	B[P4] = R0;
ffa01e68:	4d 30       	R1 = P5;
ffa01e6a:	81 64       	R1 += 0x10;		/* ( 16) */
ffa01e6c:	01 e8 00 00 	UNLINK;
ffa01e70:	01 30       	R0 = R1;
ffa01e72:	84 04       	(P5:4) = [SP++];
ffa01e74:	10 00       	RTS;
ffa01e76:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01e78:	20 9b       	B[P4] = R0;
ffa01e7a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01e7c:	01 e8 00 00 	UNLINK;
ffa01e80:	01 30       	R0 = R1;
ffa01e82:	84 04       	(P5:4) = [SP++];
ffa01e84:	10 00       	RTS;
	...

ffa01e88 <_icmp_packet_setup>:
ffa01e88:	e4 05       	[--SP] = (R7:4, P5:4);
ffa01e8a:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa01e8e:	29 32       	P5 = R1;
ffa01e90:	7f 30       	R7 = FP;
ffa01e92:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa01e94:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa01e96:	f0 bb       	[FP -0x4] = R0;
ffa01e98:	07 30       	R0 = R7;
ffa01e9a:	22 32       	P4 = R2;
ffa01e9c:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa01ea0:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa01ea4:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa01ea8:	ff e3 9e ff 	CALL 0xffa01de4 <_eth_header_setup>;
ffa01eac:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa01eb0:	68 99 00 00 
ffa01eb4:	80 0c       	CC = R0 < 0x0;
ffa01eb6:	14 18       	IF CC JUMP 0xffa01ede <_icmp_packet_setup+0x56>;
ffa01eb8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01eba:	f0 b0       	[SP + 0xc] = R0;
ffa01ebc:	54 30       	R2 = P4;
ffa01ebe:	01 30       	R0 = R1;
ffa01ec0:	0f 30       	R1 = R7;
ffa01ec2:	ff e3 7f fb 	CALL 0xffa015c0 <_ip_header_setup>;
ffa01ec6:	e9 42       	R1 = R5.L (Z);
ffa01ec8:	f1 b0       	[SP + 0xc] = R1;
ffa01eca:	e1 42       	R1 = R4.L (Z);
ffa01ecc:	31 b1       	[SP + 0x10] = R1;
ffa01ece:	72 43       	R2 = R6.B (Z);
ffa01ed0:	0f 30       	R1 = R7;
ffa01ed2:	ff e3 c1 fb 	CALL 0xffa01654 <_icmp_header_setup>;
ffa01ed6:	01 e8 00 00 	UNLINK;
ffa01eda:	a4 05       	(R7:4, P5:4) = [SP++];
ffa01edc:	10 00       	RTS;
ffa01ede:	01 e8 00 00 	UNLINK;
ffa01ee2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ee4:	a4 05       	(R7:4, P5:4) = [SP++];
ffa01ee6:	10 00       	RTS;

ffa01ee8 <_icmp_rx>:
ffa01ee8:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01eea:	28 32       	P5 = R0;
ffa01eec:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa01ef0:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01ef4:	39 30       	R7 = R1;
ffa01ef6:	ff e3 31 fb 	CALL 0xffa01558 <_htons>;
ffa01efa:	c0 42       	R0 = R0.L (Z);
ffa01efc:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa01efe:	01 08       	CC = R1 == R0;
ffa01f00:	06 18       	IF CC JUMP 0xffa01f0c <_icmp_rx+0x24>;
ffa01f02:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01f04:	01 e8 00 00 	UNLINK;
ffa01f08:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01f0a:	10 00       	RTS;
ffa01f0c:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa01f0e:	07 0a       	CC = R7 <= R0 (IU);
ffa01f10:	f9 1b       	IF CC JUMP 0xffa01f02 <_icmp_rx+0x1a>;
ffa01f12:	00 00       	NOP;
ffa01f14:	00 00       	NOP;
ffa01f16:	00 00       	NOP;
ffa01f18:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa01f1c:	08 0c       	CC = R0 == 0x1;
ffa01f1e:	f2 17       	IF !CC JUMP 0xffa01f02 <_icmp_rx+0x1a> (BP);
ffa01f20:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c10 <_NetOurMAC> */
ffa01f24:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_NetOurIP> */
ffa01f28:	28 a2       	R0 = [P5 + 0x20];
ffa01f2a:	11 91       	R1 = [P2];
ffa01f2c:	08 08       	CC = R0 == R1;
ffa01f2e:	ea 17       	IF !CC JUMP 0xffa01f02 <_icmp_rx+0x1a> (BP);
ffa01f30:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa01f34:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa01f38:	08 08       	CC = R0 == R1;
ffa01f3a:	3e 18       	IF CC JUMP 0xffa01fb6 <_icmp_rx+0xce>;
ffa01f3c:	00 00       	NOP;
ffa01f3e:	00 00       	NOP;
ffa01f40:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa01f42:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa01f46:	08 08       	CC = R0 == R1;
ffa01f48:	dd 17       	IF !CC JUMP 0xffa01f02 <_icmp_rx+0x1a> (BP);
ffa01f4a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa01f4e:	e9 a1       	R1 = [P5 + 0x1c];
ffa01f50:	00 e1 fc 01 	R0.L = 0x1fc;		/* (508)	R0=0xff9001fc(-7339524) */
ffa01f54:	ff e3 fa f4 	CALL 0xffa00948 <_printf_ip>;
ffa01f58:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c1c <_NetOurIP> */
ffa01f5c:	0a e1 e0 0b 	P2.L = 0xbe0;		/* (3040)	P2=0xff900be0 <_NetDestIP> */
ffa01f60:	e8 a1       	R0 = [P5 + 0x1c];
ffa01f62:	4d 30       	R1 = P5;
ffa01f64:	10 93       	[P2] = R0;
ffa01f66:	41 64       	R1 += 0x8;		/* (  8) */
ffa01f68:	00 e3 06 05 	CALL 0xffa02974 <_ARP_lut_add>;
ffa01f6c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001fc(-7339524) */
ffa01f70:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa01f74:	ff e3 86 f3 	CALL 0xffa00680 <_printf_str>;
ffa01f78:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa01f7c:	ea a1 00 00 
ffa01f80:	f0 b0       	[SP + 0xc] = R0;
ffa01f82:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa01f86:	30 b1       	[SP + 0x10] = R0;
ffa01f88:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa01f8a:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa01f8e:	4f 30       	R1 = FP;
ffa01f90:	70 b1       	[SP + 0x14] = R0;
ffa01f92:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa01f94:	07 30       	R0 = R7;
ffa01f96:	ff e3 79 ff 	CALL 0xffa01e88 <_icmp_packet_setup>;
ffa01f9a:	08 30       	R1 = R0;
ffa01f9c:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa01fa0:	00 0d       	CC = R0 <= 0x0;
ffa01fa2:	b0 1b       	IF CC JUMP 0xffa01f02 <_icmp_rx+0x1a>;
ffa01fa4:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa01fa6:	45 30       	R0 = P5;
ffa01fa8:	17 30       	R2 = R7;
ffa01faa:	ff e3 13 f5 	CALL 0xffa009d0 <_memcpy_>;
ffa01fae:	ff e3 7f fc 	CALL 0xffa018ac <_bfin_EMAC_send_nocopy>;
ffa01fb2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01fb4:	a8 2f       	JUMP.S 0xffa01f04 <_icmp_rx+0x1c>;
ffa01fb6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be0 <_NetDestIP> */
ffa01fba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01fbc:	0a e1 74 0b 	P2.L = 0xb74;		/* (2932)	P2=0xff900b74 <_g_streamEnabled> */
ffa01fc0:	10 9b       	B[P2] = R0;
ffa01fc2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01fc4:	a0 2f       	JUMP.S 0xffa01f04 <_icmp_rx+0x1c>;
	...

ffa01fc8 <_udp_packet_setup>:
ffa01fc8:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01fca:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa01fce:	29 32       	P5 = R1;
ffa01fd0:	7f 30       	R7 = FP;
ffa01fd2:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900be8 <_txIdx> */
ffa01fd6:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa01fd8:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa01fda:	0c e1 20 0c 	P4.L = 0xc20;		/* (3104)	P4=0xff900c20 <_NetDataDestIP> */
ffa01fde:	f0 bb       	[FP -0x4] = R0;
ffa01fe0:	22 91       	R2 = [P4];
ffa01fe2:	07 30       	R0 = R7;
ffa01fe4:	ff e3 00 ff 	CALL 0xffa01de4 <_eth_header_setup>;
ffa01fe8:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa01fec:	68 99 00 00 
ffa01ff0:	80 0c       	CC = R0 < 0x0;
ffa01ff2:	14 18       	IF CC JUMP 0xffa0201a <_udp_packet_setup+0x52>;
ffa01ff4:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01ff6:	f0 b0       	[SP + 0xc] = R0;
ffa01ff8:	01 30       	R0 = R1;
ffa01ffa:	22 91       	R2 = [P4];
ffa01ffc:	0f 30       	R1 = R7;
ffa01ffe:	ff e3 e1 fa 	CALL 0xffa015c0 <_ip_header_setup>;
ffa02002:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa02006:	f1 b0       	[SP + 0xc] = R1;
ffa02008:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa0200c:	0f 30       	R1 = R7;
ffa0200e:	ff e3 47 fb 	CALL 0xffa0169c <_udp_header_setup>;
ffa02012:	01 e8 00 00 	UNLINK;
ffa02016:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02018:	10 00       	RTS;
ffa0201a:	01 e8 00 00 	UNLINK;
ffa0201e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02020:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02022:	10 00       	RTS;

ffa02024 <_SetupTxBuffer>:
ffa02024:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02026:	38 30       	R7 = R0;
ffa02028:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa0202c:	c7 40       	R7 *= R0;
ffa0202e:	17 32       	P2 = R7;
ffa02030:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800bec */
ffa02034:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa02038:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa0203c:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa02040:	6a 5b       	P5 = P2 + P5;
ffa02042:	c7 51       	R7 = R7 + R0;
ffa02044:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02048:	45 30       	R0 = P5;
ffa0204a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0204c:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa0204e:	ff e3 d1 f4 	CALL 0xffa009f0 <_memset_>;
ffa02052:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa02056:	af b1 00 00 
ffa0205a:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa0205e:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02062:	ff e3 c7 f4 	CALL 0xffa009f0 <_memset_>;
ffa02066:	45 30       	R0 = P5;
ffa02068:	60 64       	R0 += 0xc;		/* ( 12) */
ffa0206a:	28 93       	[P5] = R0;
ffa0206c:	a8 a1       	R0 = [P5 + 0x18];
ffa0206e:	68 b0       	[P5 + 0x4] = R0;
ffa02070:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa02074:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02076:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa02078:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa0207a:	10 54       	R0 = R0 & R2;
ffa0207c:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa0207e:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02082:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa02084:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa02088:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0208a:	18 54       	R0 = R0 & R3;
ffa0208c:	08 56       	R0 = R0 | R1;
ffa0208e:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa02092:	08 56       	R0 = R0 | R1;
ffa02094:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02098:	45 30       	R0 = P5;
ffa0209a:	40 65       	R0 += 0x28;		/* ( 40) */
ffa0209c:	28 b1       	[P5 + 0x10] = R0;
ffa0209e:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa020a2:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa020a4:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa020a6:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa020aa:	10 54       	R0 = R0 & R2;
ffa020ac:	08 56       	R0 = R0 | R1;
ffa020ae:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa020b2:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa020b6:	18 54       	R0 = R0 & R3;
ffa020b8:	39 64       	R1 += 0x7;		/* (  7) */
ffa020ba:	08 54       	R0 = R0 & R1;
ffa020bc:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa020c0:	ed bc       	[P5 + 0xc] = P5;
ffa020c2:	01 e8 00 00 	UNLINK;
ffa020c6:	45 30       	R0 = P5;
ffa020c8:	bd 05       	(R7:7, P5:5) = [SP++];
ffa020ca:	10 00       	RTS;

ffa020cc <_SetupRxBuffer>:
ffa020cc:	fd 05       	[--SP] = (R7:7, P5:5);
ffa020ce:	38 30       	R7 = R0;
ffa020d0:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa020d4:	c7 40       	R7 *= R0;
ffa020d6:	17 32       	P2 = R7;
ffa020d8:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa020dc:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa020e0:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa020e4:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa020e8:	6a 5b       	P5 = P2 + P5;
ffa020ea:	c7 51       	R7 = R7 + R0;
ffa020ec:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa020f0:	45 30       	R0 = P5;
ffa020f2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa020f4:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa020f6:	ff e3 7d f4 	CALL 0xffa009f0 <_memset_>;
ffa020fa:	af b1       	[P5 + 0x18] = R7;
ffa020fc:	07 30       	R0 = R7;
ffa020fe:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa02102:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02106:	ff e3 75 f4 	CALL 0xffa009f0 <_memset_>;
ffa0210a:	45 30       	R0 = P5;
ffa0210c:	60 64       	R0 += 0xc;		/* ( 12) */
ffa0210e:	28 93       	[P5] = R0;
ffa02110:	a8 a1       	R0 = [P5 + 0x18];
ffa02112:	68 b0       	[P5 + 0x4] = R0;
ffa02114:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa02118:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0211a:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa0211c:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0211e:	08 54       	R0 = R0 & R1;
ffa02120:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02122:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02126:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa02128:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa0212c:	38 54       	R0 = R0 & R7;
ffa0212e:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa02130:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa02134:	18 56       	R0 = R0 | R3;
ffa02136:	10 56       	R0 = R0 | R2;
ffa02138:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0213c:	45 30       	R0 = P5;
ffa0213e:	20 65       	R0 += 0x24;		/* ( 36) */
ffa02140:	28 b1       	[P5 + 0x10] = R0;
ffa02142:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa02146:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02148:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0214a:	08 54       	R0 = R0 & R1;
ffa0214c:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa02150:	08 56       	R0 = R0 | R1;
ffa02152:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa02156:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa0215a:	38 54       	R0 = R0 & R7;
ffa0215c:	18 56       	R0 = R0 | R3;
ffa0215e:	10 56       	R0 = R0 | R2;
ffa02160:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02164:	ed bc       	[P5 + 0xc] = P5;
ffa02166:	01 e8 00 00 	UNLINK;
ffa0216a:	45 30       	R0 = P5;
ffa0216c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0216e:	10 00       	RTS;

ffa02170 <_SetupSystemRegs>:
ffa02170:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02172:	28 32       	P5 = R0;
ffa02174:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa02178:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0217c:	00 e1 18 02 	R0.L = 0x218;		/* (536)	R0=0xff900218(-7339496) */
ffa02180:	ff e3 80 f2 	CALL 0xffa00680 <_printf_str>;
ffa02184:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00b74(-4191372) */
ffa02188:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa0218c:	50 95       	R0 = W[P2] (X);
ffa0218e:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa02192:	08 54       	R0 = R0 & R1;
ffa02194:	10 97       	W[P2] = R0;
ffa02196:	50 95       	R0 = W[P2] (X);
ffa02198:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa0219a:	10 97       	W[P2] = R0;
ffa0219c:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0219e:	51 95       	R1 = W[P2] (X);
ffa021a0:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa021a4:	08 56       	R0 = R0 | R1;
ffa021a6:	10 97       	W[P2] = R0;
ffa021a8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa021aa:	22 6c       	P2 += 0x4;		/* (  4) */
ffa021ac:	10 97       	W[P2] = R0;
ffa021ae:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa021b0:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa021b2:	10 97       	W[P2] = R0;
ffa021b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa021b8:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa021bc:	50 95       	R0 = W[P2] (X);
ffa021be:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa021c0:	10 97       	W[P2] = R0;
ffa021c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa021c6:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa021ca:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa021ce:	10 93       	[P2] = R0;
ffa021d0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa021d2:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa021d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa021d8:	ff e3 4c f9 	CALL 0xffa01470 <_WrPHYReg>;
ffa021dc:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa021e0:	ff e3 e6 f5 	CALL 0xffa00dac <_udelay>;
ffa021e4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa021e6:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa021e8:	ff e3 60 f9 	CALL 0xffa014a8 <_RdPHYReg>;
ffa021ec:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa021ee:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa021f0:	0e 20       	JUMP.S 0xffa0220c <_SetupSystemRegs+0x9c>;
ffa021f2:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa021f6:	ff e3 db f5 	CALL 0xffa00dac <_udelay>;
ffa021fa:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa021fc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa021fe:	ff e3 55 f9 	CALL 0xffa014a8 <_RdPHYReg>;
ffa02202:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02204:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa02208:	0f 08       	CC = R7 == R1;
ffa0220a:	35 18       	IF CC JUMP 0xffa02274 <_SetupSystemRegs+0x104>;
ffa0220c:	06 54       	R0 = R6 & R0;
ffa0220e:	00 0c       	CC = R0 == 0x0;
ffa02210:	f1 1f       	IF CC JUMP 0xffa021f2 <_SetupSystemRegs+0x82> (BP);
ffa02212:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa02214:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02216:	ff e3 49 f9 	CALL 0xffa014a8 <_RdPHYReg>;
ffa0221a:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa0221e:	01 54       	R0 = R1 & R0;
ffa02220:	00 0c       	CC = R0 == 0x0;
ffa02222:	27 1c       	IF CC JUMP 0xffa02270 <_SetupSystemRegs+0x100> (BP);
ffa02224:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02226:	d0 4f       	R0 <<= 0x1a;
ffa02228:	28 93       	[P5] = R0;
ffa0222a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa0222e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02230:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa02234:	10 93       	[P2] = R0;
ffa02236:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa0223a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0223c:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa02240:	10 97       	W[P2] = R0;
ffa02242:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa02244:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02246:	11 97       	W[P2] = R1;
ffa02248:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0224a:	10 97       	W[P2] = R0;
ffa0224c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0224e:	10 97       	W[P2] = R0;
ffa02250:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa02254:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa02258:	10 97       	W[P2] = R0;
ffa0225a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0225c:	11 97       	W[P2] = R1;
ffa0225e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02260:	10 97       	W[P2] = R0;
ffa02262:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02264:	10 97       	W[P2] = R0;
ffa02266:	01 e8 00 00 	UNLINK;
ffa0226a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0226c:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0226e:	10 00       	RTS;
ffa02270:	28 93       	[P5] = R0;
ffa02272:	dc 2f       	JUMP.S 0xffa0222a <_SetupSystemRegs+0xba>;
ffa02274:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02278:	00 e1 30 02 	R0.L = 0x230;		/* (560)	R0=0xff900230(-7339472) */
ffa0227c:	ff e3 02 f2 	CALL 0xffa00680 <_printf_str>;
ffa02280:	01 e8 00 00 	UNLINK;
ffa02284:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02286:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02288:	10 00       	RTS;
	...

ffa0228c <_SetupMacAddr>:
ffa0228c:	10 32       	P2 = R0;
ffa0228e:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02290:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02292:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02296:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa0229a:	10 9b       	B[P2] = R0;
ffa0229c:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa0229e:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa022a2:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa022a4:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa022a8:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa022aa:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa022ae:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa022b2:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa022b6:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa022b8:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa022bc:	10 99       	R0 = B[P2] (Z);
ffa022be:	08 56       	R0 = R0 | R1;
ffa022c0:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa022c4:	89 4f       	R1 <<= 0x11;
ffa022c6:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00bec(-4191252) */
ffa022ca:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa022ce:	08 56       	R0 = R0 | R1;
ffa022d0:	08 93       	[P1] = R0;
ffa022d2:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa022d6:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa022da:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa022de:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa022e0:	28 93       	[P5] = R0;
ffa022e2:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa022e6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa022ea:	09 91       	R1 = [P1];
ffa022ec:	07 e1 34 0a 	R7.L = 0xa34;		/* (2612)	R7=0xff900a34(-7337420) */
ffa022f0:	00 e1 64 02 	R0.L = 0x264;		/* (612)	R0=0xff900264(-7339420) */
ffa022f4:	ff e3 2c f2 	CALL 0xffa0074c <_printf_hex>;
ffa022f8:	07 30       	R0 = R7;
ffa022fa:	ff e3 c3 f1 	CALL 0xffa00680 <_printf_str>;
ffa022fe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900264(-7339420) */
ffa02302:	29 91       	R1 = [P5];
ffa02304:	00 e1 70 02 	R0.L = 0x270;		/* (624)	R0=0xff900270(-7339408) */
ffa02308:	ff e3 22 f2 	CALL 0xffa0074c <_printf_hex>;
ffa0230c:	01 e8 00 00 	UNLINK;
ffa02310:	07 30       	R0 = R7;
ffa02312:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02314:	ff e2 b6 f1 	JUMP.L 0xffa00680 <_printf_str>;

ffa02318 <_bfin_EMAC_init>:
ffa02318:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0231a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900270(-7339408) */
ffa0231e:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02322:	00 e1 7c 02 	R0.L = 0x27c;		/* (636)	R0=0xff90027c(-7339396) */
ffa02326:	ff e3 ad f1 	CALL 0xffa00680 <_printf_str>;
ffa0232a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 */
ffa0232e:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02330:	0a e1 e8 0b 	P2.L = 0xbe8;		/* (3048)	P2=0xff900be8 <_txIdx> */
ffa02334:	16 97       	W[P2] = R6;
ffa02336:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be8 <_txIdx> */
ffa0233a:	0a e1 fc 0b 	P2.L = 0xbfc;		/* (3068)	P2=0xff900bfc <_rxIdx> */
ffa0233e:	16 97       	W[P2] = R6;
ffa02340:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bfc <_rxIdx> */
ffa02344:	0a e1 ea 0b 	P2.L = 0xbea;		/* (3050)	P2=0xff900bea <_NetIPID> */
ffa02348:	16 97       	W[P2] = R6;
ffa0234a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bea <_NetIPID> */
ffa0234e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02350:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_NetSubnetMask> */
ffa02354:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa02356:	17 93       	[P2] = R7;
ffa02358:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa0235c:	f0 b0       	[SP + 0xc] = R0;
ffa0235e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02360:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02364:	ff e3 50 f8 	CALL 0xffa01404 <_FormatIPAddress>;
ffa02368:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c18 <_NetSubnetMask> */
ffa0236c:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_NetOurIP> */
ffa02370:	10 93       	[P2] = R0;
ffa02372:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02374:	f0 b0       	[SP + 0xc] = R0;
ffa02376:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa0237a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0237c:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02380:	ff e3 42 f8 	CALL 0xffa01404 <_FormatIPAddress>;
ffa02384:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c1c <_NetOurIP> */
ffa02388:	0a e1 e0 0b 	P2.L = 0xbe0;		/* (3040)	P2=0xff900be0 <_NetDestIP> */
ffa0238c:	10 93       	[P2] = R0;
ffa0238e:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa02390:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa02392:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa02396:	f0 b0       	[SP + 0xc] = R0;
ffa02398:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa0239c:	ff e3 34 f8 	CALL 0xffa01404 <_FormatIPAddress>;
ffa023a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be0 <_NetDestIP> */
ffa023a4:	0a e1 20 0c 	P2.L = 0xc20;		/* (3104)	P2=0xff900c20 <_NetDataDestIP> */
ffa023a8:	10 93       	[P2] = R0;
ffa023aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c20 <_NetDataDestIP> */
ffa023ae:	0a e1 00 0d 	P2.L = 0xd00;		/* (3328)	P2=0xff900d00 <_TcpState> */
ffa023b2:	17 93       	[P2] = R7;
ffa023b4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d00 <_TcpState> */
ffa023b8:	0a e1 f8 0c 	P2.L = 0xcf8;		/* (3320)	P2=0xff900cf8 <_TcpSeqClient> */
ffa023bc:	17 93       	[P2] = R7;
ffa023be:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa023c2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf8 <_TcpSeqClient> */
ffa023c6:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa023ca:	0a e1 f4 0c 	P2.L = 0xcf4;		/* (3316)	P2=0xff900cf4 <_TcpSeqHost> */
ffa023ce:	10 93       	[P2] = R0;
ffa023d0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf4 <_TcpSeqHost> */
ffa023d4:	0a e1 0c 0d 	P2.L = 0xd0c;		/* (3340)	P2=0xff900d0c <_TcpClientPort> */
ffa023d8:	16 97       	W[P2] = R6;
ffa023da:	00 e3 7f 02 	CALL 0xffa028d8 <_ARP_init>;
ffa023de:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d0c(-4190964) */
ffa023e2:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa023e6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa023ea:	17 93       	[P2] = R7;
ffa023ec:	00 e1 10 0c 	R0.L = 0xc10;		/* (3088)	R0=0xff900c10 <_NetOurMAC>(-7336944) */
ffa023f0:	ff e3 4e ff 	CALL 0xffa0228c <_SetupMacAddr>;
ffa023f4:	47 30       	R0 = FP;
ffa023f6:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa023f8:	ff e3 bc fe 	CALL 0xffa02170 <_SetupSystemRegs>;
ffa023fc:	80 0c       	CC = R0 < 0x0;
ffa023fe:	7a 18       	IF CC JUMP 0xffa024f2 <_bfin_EMAC_init+0x1da>;
ffa02400:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa02404:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02406:	07 e1 00 0c 	R7.L = 0xc00;		/* (3072)	R7=0xff900c00 <_rxbuf>(-7336960) */
ffa0240a:	ff e3 61 fe 	CALL 0xffa020cc <_SetupRxBuffer>;
ffa0240e:	07 32       	P0 = R7;
ffa02410:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02412:	00 93       	[P0] = R0;
ffa02414:	17 32       	P2 = R7;
ffa02416:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa02418:	44 30       	R0 = P4;
ffa0241a:	ff e3 59 fe 	CALL 0xffa020cc <_SetupRxBuffer>;
ffa0241e:	44 0c       	CC = P4 == 0x0;
ffa02420:	08 32       	P1 = R0;
ffa02422:	28 92       	[P5++] = R0;
ffa02424:	52 18       	IF CC JUMP 0xffa024c8 <_bfin_EMAC_init+0x1b0>;
ffa02426:	07 32       	P0 = R7;
ffa02428:	5c 0c       	CC = P4 == 0x3;
ffa0242a:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa0242c:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa02430:	d0 b0       	[P2 + 0xc] = R0;
ffa02432:	54 18       	IF CC JUMP 0xffa024da <_bfin_EMAC_init+0x1c2>;
ffa02434:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa02436:	5c 0d       	CC = P4 <= 0x3;
ffa02438:	ee 1f       	IF CC JUMP 0xffa02414 <_bfin_EMAC_init+0xfc> (BP);
ffa0243a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0243c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900b98 <_printf_temp> */
ffa02440:	ff e3 f2 fd 	CALL 0xffa02024 <_SetupTxBuffer>;
ffa02444:	0b e1 ec 0b 	P3.L = 0xbec;		/* (3052)	P3=0xff900bec <_txbuf> */
ffa02448:	18 93       	[P3] = R0;
ffa0244a:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa0244c:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa0244e:	44 30       	R0 = P4;
ffa02450:	ff e3 ea fd 	CALL 0xffa02024 <_SetupTxBuffer>;
ffa02454:	44 0c       	CC = P4 == 0x0;
ffa02456:	08 32       	P1 = R0;
ffa02458:	28 92       	[P5++] = R0;
ffa0245a:	35 18       	IF CC JUMP 0xffa024c4 <_bfin_EMAC_init+0x1ac>;
ffa0245c:	00 00       	NOP;
ffa0245e:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa02460:	5c 0c       	CC = P4 == 0x3;
ffa02462:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa02466:	d0 b0       	[P2 + 0xc] = R0;
ffa02468:	32 18       	IF CC JUMP 0xffa024cc <_bfin_EMAC_init+0x1b4>;
ffa0246a:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa0246c:	5c 0d       	CC = P4 <= 0x3;
ffa0246e:	ef 1f       	IF CC JUMP 0xffa0244c <_bfin_EMAC_init+0x134> (BP);
ffa02470:	17 32       	P2 = R7;
ffa02472:	51 91       	P1 = [P2];
ffa02474:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa02478:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa0247c:	51 93       	[P2] = P1;
ffa0247e:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa02480:	42 6c       	P2 += 0x8;		/* (  8) */
ffa02482:	10 97       	W[P2] = R0;
ffa02484:	ff e3 e8 f7 	CALL 0xffa01454 <_PollMdcDone>;
ffa02488:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0248a:	f0 b9       	R0 = [FP -0x4];
ffa0248c:	d1 4f       	R1 <<= 0x1a;
ffa0248e:	08 08       	CC = R0 == R1;
ffa02490:	2c 18       	IF CC JUMP 0xffa024e8 <_bfin_EMAC_init+0x1d0>;
ffa02492:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02496:	01 30       	R0 = R1;
ffa02498:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa0249c:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa024a0:	10 93       	[P2] = R0;
ffa024a2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa024a6:	00 e1 8c 02 	R0.L = 0x28c;		/* (652)	R0=0xff90028c(-7339380) */
ffa024aa:	ff e3 51 f1 	CALL 0xffa0074c <_printf_hex>;
ffa024ae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90028c(-7339380) */
ffa024b2:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa024b6:	ff e3 e5 f0 	CALL 0xffa00680 <_printf_str>;
ffa024ba:	01 e8 00 00 	UNLINK;
ffa024be:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024c0:	b3 05       	(R7:6, P5:3) = [SP++];
ffa024c2:	10 00       	RTS;
ffa024c4:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa024c6:	c4 2f       	JUMP.S 0xffa0244e <_bfin_EMAC_init+0x136>;
ffa024c8:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa024ca:	a7 2f       	JUMP.S 0xffa02418 <_bfin_EMAC_init+0x100>;
ffa024cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa024d0:	0a e1 ec 0b 	P2.L = 0xbec;		/* (3052)	P2=0xff900bec <_txbuf> */
ffa024d4:	10 91       	R0 = [P2];
ffa024d6:	c8 b0       	[P1 + 0xc] = R0;
ffa024d8:	cc 2f       	JUMP.S 0xffa02470 <_bfin_EMAC_init+0x158>;
ffa024da:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bec <_txbuf> */
ffa024de:	0a e1 00 0c 	P2.L = 0xc00;		/* (3072)	P2=0xff900c00 <_rxbuf> */
ffa024e2:	10 91       	R0 = [P2];
ffa024e4:	c8 b0       	[P1 + 0xc] = R0;
ffa024e6:	aa 2f       	JUMP.S 0xffa0243a <_bfin_EMAC_init+0x122>;
ffa024e8:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa024ec:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa024ee:	01 30       	R0 = R1;
ffa024f0:	d4 2f       	JUMP.S 0xffa02498 <_bfin_EMAC_init+0x180>;
ffa024f2:	01 e8 00 00 	UNLINK;
ffa024f6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa024f8:	b3 05       	(R7:6, P5:3) = [SP++];
ffa024fa:	10 00       	RTS;

ffa024fc <_bfin_EMAC_recv_poll>:
ffa024fc:	e3 05       	[--SP] = (R7:4, P5:3);
ffa024fe:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa02502:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa02506:	0d e1 00 0c 	P5.L = 0xc00;		/* (3072)	P5=0xff900c00 <_rxbuf> */
ffa0250a:	0c e1 fc 0b 	P4.L = 0xbfc;		/* (3068)	P4=0xff900bfc <_rxIdx> */
ffa0250e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02512:	28 30       	R5 = R0;
ffa02514:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02516:	75 30       	R6 = P5;
ffa02518:	5c 32       	P3 = P4;
ffa0251a:	06 20       	JUMP.S 0xffa02526 <_bfin_EMAC_recv_poll+0x2a>;
ffa0251c:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0251e:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02522:	07 08       	CC = R7 == R0;
ffa02524:	0c 18       	IF CC JUMP 0xffa0253c <_bfin_EMAC_recv_poll+0x40>;
ffa02526:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa0252a:	ff e3 41 f4 	CALL 0xffa00dac <_udelay>;
ffa0252e:	20 95       	R0 = W[P4] (Z);
ffa02530:	10 32       	P2 = R0;
ffa02532:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02534:	52 91       	P2 = [P2];
ffa02536:	90 a2       	R0 = [P2 + 0x28];
ffa02538:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa0253a:	f1 1f       	IF CC JUMP 0xffa0251c <_bfin_EMAC_recv_poll+0x20> (BP);
ffa0253c:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02540:	91 a2       	R1 = [P2 + 0x28];
ffa02542:	41 54       	R1 = R1 & R0;
ffa02544:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02546:	01 09       	CC = R1 <= R0;
ffa02548:	07 10       	IF !CC JUMP 0xffa02556 <_bfin_EMAC_recv_poll+0x5a>;
ffa0254a:	01 e8 00 00 	UNLINK;
ffa0254e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02550:	07 30       	R0 = R7;
ffa02552:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02554:	10 00       	RTS;
ffa02556:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02558:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa0255c:	90 b2 00 00 
ffa02560:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02562:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02566:	0f 30       	R1 = R7;
ffa02568:	00 e1 98 02 	R0.L = 0x298;		/* (664)	R0=0xff900298(-7339368) */
ffa0256c:	ff e3 4c f1 	CALL 0xffa00804 <_printf_int>;
ffa02570:	18 95       	R0 = W[P3] (Z);
ffa02572:	10 32       	P2 = R0;
ffa02574:	0e 32       	P1 = R6;
ffa02576:	0f 30       	R1 = R7;
ffa02578:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0257a:	52 91       	P2 = [P2];
ffa0257c:	90 a1       	R0 = [P2 + 0x18];
ffa0257e:	15 32       	P2 = R5;
ffa02580:	10 93       	[P2] = R0;
ffa02582:	00 e3 5f 02 	CALL 0xffa02a40 <_ARP_rx>;
ffa02586:	00 0c       	CC = R0 == 0x0;
ffa02588:	1f 18       	IF CC JUMP 0xffa025c6 <_bfin_EMAC_recv_poll+0xca>;
ffa0258a:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa0258c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02590:	20 95       	R0 = W[P4] (Z);
ffa02592:	10 32       	P2 = R0;
ffa02594:	61 95       	R1 = W[P4] (X);
ffa02596:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02598:	09 e1 fc 0b 	P1.L = 0xbfc;		/* (3068)	P1=0xff900bfc <_rxIdx> */
ffa0259c:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa0259e:	52 91       	P2 = [P2];
ffa025a0:	90 b2       	[P2 + 0x28] = R0;
ffa025a2:	c8 42       	R0 = R1.L (Z);
ffa025a4:	10 0d       	CC = R0 <= 0x2;
ffa025a6:	08 1c       	IF CC JUMP 0xffa025b6 <_bfin_EMAC_recv_poll+0xba> (BP);
ffa025a8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa025aa:	08 97       	W[P1] = R0;
ffa025ac:	01 e8 00 00 	UNLINK;
ffa025b0:	07 30       	R0 = R7;
ffa025b2:	a3 05       	(R7:4, P5:3) = [SP++];
ffa025b4:	10 00       	RTS;
ffa025b6:	01 30       	R0 = R1;
ffa025b8:	08 64       	R0 += 0x1;		/* (  1) */
ffa025ba:	08 97       	W[P1] = R0;
ffa025bc:	01 e8 00 00 	UNLINK;
ffa025c0:	07 30       	R0 = R7;
ffa025c2:	a3 05       	(R7:4, P5:3) = [SP++];
ffa025c4:	10 00       	RTS;
ffa025c6:	0d 32       	P1 = R5;
ffa025c8:	0f 30       	R1 = R7;
ffa025ca:	08 91       	R0 = [P1];
ffa025cc:	ff e3 8e fc 	CALL 0xffa01ee8 <_icmp_rx>;
ffa025d0:	00 0c       	CC = R0 == 0x0;
ffa025d2:	dd 1f       	IF CC JUMP 0xffa0258c <_bfin_EMAC_recv_poll+0x90> (BP);
ffa025d4:	db 2f       	JUMP.S 0xffa0258a <_bfin_EMAC_recv_poll+0x8e>;
	...

ffa025d8 <_DHCP_rx>:
ffa025d8:	ed 05       	[--SP] = (R7:5, P5:5);
ffa025da:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa025de:	6f 30       	R5 = FP;
ffa025e0:	e5 67       	R5 += -0x4;		/* ( -4) */
ffa025e2:	01 20       	JUMP.S 0xffa025e4 <_DHCP_rx+0xc>;
ffa025e4:	05 30       	R0 = R5;
ffa025e6:	ff e3 8b ff 	CALL 0xffa024fc <_bfin_EMAC_recv_poll>;
ffa025ea:	38 30       	R7 = R0;
ffa025ec:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa025f0:	87 51       	R6 = R7 + R0;
ffa025f2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa025f6:	00 e1 d8 02 	R0.L = 0x2d8;		/* (728)	R0=0xff9002d8(-7339304) */
ffa025fa:	0e 30       	R1 = R6;
ffa025fc:	ff e3 04 f1 	CALL 0xffa00804 <_printf_int>;
ffa02600:	20 e1 1b 01 	R0 = 0x11b (X);		/*		R0=0x11b(283) */
ffa02604:	07 09       	CC = R7 <= R0;
ffa02606:	fd b9       	P5 = [FP -0x4];
ffa02608:	0c 18       	IF CC JUMP 0xffa02620 <_DHCP_rx+0x48>;
ffa0260a:	00 00       	NOP;
ffa0260c:	00 00       	NOP;
ffa0260e:	00 00       	NOP;
ffa02610:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa02612:	ff e3 a3 f7 	CALL 0xffa01558 <_htons>;
ffa02616:	c0 42       	R0 = R0.L (Z);
ffa02618:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa0261c:	08 08       	CC = R0 == R1;
ffa0261e:	08 18       	IF CC JUMP 0xffa0262e <_DHCP_rx+0x56>;
ffa02620:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011b(-7339749) */
ffa02624:	00 e1 bc 02 	R0.L = 0x2bc;		/* (700)	R0=0xff9002bc(-7339332) */
ffa02628:	ff e3 2c f0 	CALL 0xffa00680 <_printf_str>;
ffa0262c:	dc 2f       	JUMP.S 0xffa025e4 <_DHCP_rx+0xc>;
ffa0262e:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa02632:	ff e3 93 f7 	CALL 0xffa01558 <_htons>;
ffa02636:	c0 42       	R0 = R0.L (Z);
ffa02638:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa0263c:	01 08       	CC = R1 == R0;
ffa0263e:	d3 17       	IF !CC JUMP 0xffa025e4 <_DHCP_rx+0xc> (BP);
ffa02640:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa02644:	ff e3 8a f7 	CALL 0xffa01558 <_htons>;
ffa02648:	c0 42       	R0 = R0.L (Z);
ffa0264a:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa0264e:	01 08       	CC = R1 == R0;
ffa02650:	ca 17       	IF !CC JUMP 0xffa025e4 <_DHCP_rx+0xc> (BP);
ffa02652:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c00(-4191232) */
ffa02656:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa0265a:	11 91       	R1 = [P2];
ffa0265c:	28 a3       	R0 = [P5 + 0x30];
ffa0265e:	08 08       	CC = R0 == R1;
ffa02660:	c2 17       	IF !CC JUMP 0xffa025e4 <_DHCP_rx+0xc> (BP);
ffa02662:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa02666:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa0266a:	ff e3 83 f7 	CALL 0xffa01570 <_htonl>;
ffa0266e:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa02672:	01 08       	CC = R1 == R0;
ffa02674:	b8 17       	IF !CC JUMP 0xffa025e4 <_DHCP_rx+0xc> (BP);
ffa02676:	4d 30       	R1 = P5;
ffa02678:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa0267c:	01 50       	R0 = R1 + R0;
ffa0267e:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa02682:	f0 bb 00 00 
ffa02686:	ff e3 59 f8 	CALL 0xffa01738 <_DHCP_parse>;
ffa0268a:	e9 a3       	R1 = [P5 + 0x3c];
ffa0268c:	01 0c       	CC = R1 == 0x0;
ffa0268e:	12 1c       	IF CC JUMP 0xffa026b2 <_DHCP_rx+0xda> (BP);
ffa02690:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa02694:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_NetOurIP> */
ffa02698:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa0269c:	11 93       	[P2] = R1;
ffa0269e:	00 e1 ac 02 	R0.L = 0x2ac;		/* (684)	R0=0xff9002ac(-7339348) */
ffa026a2:	ff e3 53 f1 	CALL 0xffa00948 <_printf_ip>;
ffa026a6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002ac(-7339348) */
ffa026aa:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa026ae:	ff e3 e9 ef 	CALL 0xffa00680 <_printf_str>;
ffa026b2:	01 e8 00 00 	UNLINK;
ffa026b6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa026b8:	ad 05       	(R7:5, P5:5) = [SP++];
ffa026ba:	10 00       	RTS;

ffa026bc <_DHCP_req>:
ffa026bc:	fd 05       	[--SP] = (R7:7, P5:5);
ffa026be:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c00 <_rxbuf> */
ffa026c2:	0d e1 e4 0b 	P5.L = 0xbe4;		/* (3044)	P5=0xff900be4 <_NetDHCPserv> */
ffa026c6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa026c8:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa026cc:	28 93       	[P5] = R0;
ffa026ce:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa026d0:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa026d4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa026d6:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa026da:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa026de:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa026e0:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa026e4:	7f 30       	R7 = FP;
ffa026e6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa026ea:	00 e1 ec 02 	R0.L = 0x2ec;		/* (748)	R0=0xff9002ec(-7339284) */
ffa026ee:	a7 67       	R7 += -0xc;		/* (-12) */
ffa026f0:	ff e3 c8 ef 	CALL 0xffa00680 <_printf_str>;
ffa026f4:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa026f8:	2a 91 00 00 
ffa026fc:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa026fe:	ff e3 45 f9 	CALL 0xffa01988 <_DHCP_tx>;
ffa02702:	ff e3 6b ff 	CALL 0xffa025d8 <_DHCP_rx>;
ffa02706:	29 91       	R1 = [P5];
ffa02708:	39 0c       	CC = R1 == -0x1;
ffa0270a:	43 18       	IF CC JUMP 0xffa02790 <_DHCP_req+0xd4>;
ffa0270c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c1c <_NetOurIP> */
ffa02710:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_NetOurIP> */
ffa02714:	10 91       	R0 = [P2];
ffa02716:	00 0c       	CC = R0 == 0x0;
ffa02718:	08 18       	IF CC JUMP 0xffa02728 <_DHCP_req+0x6c>;
ffa0271a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c1c <_NetOurIP> */
ffa0271e:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_NetSubnetMask> */
ffa02722:	10 91       	R0 = [P2];
ffa02724:	00 0c       	CC = R0 == 0x0;
ffa02726:	30 10       	IF !CC JUMP 0xffa02786 <_DHCP_req+0xca>;
ffa02728:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa0272a:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa0272e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02730:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa02734:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02736:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa0273a:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa0273c:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02740:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02742:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa02746:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa0274a:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa0274e:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa02752:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa02756:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa0275a:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa0275e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02760:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa02764:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa02768:	00 e1 1c 03 	R0.L = 0x31c;		/* (796)	R0=0xff90031c(-7339236) */
ffa0276c:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa02770:	ff e3 88 ef 	CALL 0xffa00680 <_printf_str>;
ffa02774:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02776:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa0277a:	2a 91 00 00 
ffa0277e:	ff e3 05 f9 	CALL 0xffa01988 <_DHCP_tx>;
ffa02782:	ff e3 2b ff 	CALL 0xffa025d8 <_DHCP_rx>;
ffa02786:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02788:	01 e8 00 00 	UNLINK;
ffa0278c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0278e:	10 00       	RTS;
ffa02790:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02794:	00 e1 00 03 	R0.L = 0x300;		/* (768)	R0=0xff900300(-7339264) */
ffa02798:	ff e3 74 ef 	CALL 0xffa00680 <_printf_str>;
ffa0279c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0279e:	f5 2f       	JUMP.S 0xffa02788 <_DHCP_req+0xcc>;

ffa027a0 <_bfin_EMAC_recv>:
ffa027a0:	e3 05       	[--SP] = (R7:4, P5:3);
ffa027a2:	28 32       	P5 = R0;
ffa027a4:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900bfc <_rxIdx> */
ffa027a8:	0c e1 fc 0b 	P4.L = 0xbfc;		/* (3068)	P4=0xff900bfc <_rxIdx> */
ffa027ac:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00bec(-4191252) */
ffa027b0:	44 e1 c0 ff 	R4.H = 0xffc0;		/* (-64)	R4=0xffc00000(-4194304) */
ffa027b4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa027b8:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa027ba:	6c 30       	R5 = P4;
ffa027bc:	86 60       	R6 = 0x10 (X);		/*		R6=0x10( 16) */
ffa027be:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa027c2:	04 e1 04 07 	R4.L = 0x704;		/* (1796)	R4=0xffc00704(-4192508) */
ffa027c6:	0f 20       	JUMP.S 0xffa027e4 <_bfin_EMAC_recv+0x44>;
ffa027c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027ca:	20 97       	W[P4] = R0;
ffa027cc:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R0 = [P5] || NOP;
ffa027d0:	28 91 00 00 
ffa027d4:	00 e3 36 01 	CALL 0xffa02a40 <_ARP_rx>;
ffa027d8:	00 0c       	CC = R0 == 0x0;
ffa027da:	43 18       	IF CC JUMP 0xffa02860 <_bfin_EMAC_recv+0xc0>;
ffa027dc:	14 32       	P2 = R4;
ffa027de:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa027e0:	16 97       	W[P2] = R6;
ffa027e2:	01 20       	JUMP.S 0xffa027e4 <_bfin_EMAC_recv+0x44>;
ffa027e4:	0d 32       	P1 = R5;
ffa027e6:	08 95       	R0 = W[P1] (Z);
ffa027e8:	10 32       	P2 = R0;
ffa027ea:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bfc <_rxIdx> */
ffa027ee:	09 e1 00 0c 	P1.L = 0xc00;		/* (3072)	P1=0xff900c00 <_rxbuf> */
ffa027f2:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa027f4:	51 91       	P1 = [P2];
ffa027f6:	88 a2       	R0 = [P1 + 0x28];
ffa027f8:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa027fa:	48 18       	IF CC JUMP 0xffa0288a <_bfin_EMAC_recv+0xea>;
ffa027fc:	00 00       	NOP;
ffa027fe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02800:	a0 4f       	R0 <<= 0x14;
ffa02802:	89 a2       	R1 = [P1 + 0x28];
ffa02804:	81 54       	R2 = R1 & R0;
ffa02806:	02 0c       	CC = R2 == 0x0;
ffa02808:	47 10       	IF !CC JUMP 0xffa02896 <_bfin_EMAC_recv+0xf6>;
ffa0280a:	00 00       	NOP;
ffa0280c:	00 00       	NOP;
ffa0280e:	00 00       	NOP;
ffa02810:	88 a2       	R0 = [P1 + 0x28];
ffa02812:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa02814:	4c 18       	IF CC JUMP 0xffa028ac <_bfin_EMAC_recv+0x10c>;
ffa02816:	00 00       	NOP;
ffa02818:	00 00       	NOP;
ffa0281a:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa0281e:	89 a2       	R1 = [P1 + 0x28];
ffa02820:	c1 55       	R7 = R1 & R0;
ffa02822:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02824:	07 09       	CC = R7 <= R0;
ffa02826:	4e 18       	IF CC JUMP 0xffa028c2 <_bfin_EMAC_recv+0x122>;
ffa02828:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c18(-4191208) */
ffa0282c:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa02830:	16 97       	W[P2] = R6;
ffa02832:	88 a1       	R0 = [P1 + 0x18];
ffa02834:	59 95       	R1 = W[P3] (X);
ffa02836:	28 93       	[P5] = R0;
ffa02838:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0283a:	08 56       	R0 = R0 | R1;
ffa0283c:	18 97       	W[P3] = R0;
ffa0283e:	61 95       	R1 = W[P4] (X);
ffa02840:	c8 42       	R0 = R1.L (Z);
ffa02842:	10 0d       	CC = R0 <= 0x2;
ffa02844:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02846:	8a b2       	[P1 + 0x28] = R2;
ffa02848:	c0 17       	IF !CC JUMP 0xffa027c8 <_bfin_EMAC_recv+0x28> (BP);
ffa0284a:	01 30       	R0 = R1;
ffa0284c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0284e:	20 97       	W[P4] = R0;
ffa02850:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R0 = [P5] || NOP;
ffa02854:	28 91 00 00 
ffa02858:	00 e3 f4 00 	CALL 0xffa02a40 <_ARP_rx>;
ffa0285c:	00 0c       	CC = R0 == 0x0;
ffa0285e:	bf 17       	IF !CC JUMP 0xffa027dc <_bfin_EMAC_recv+0x3c> (BP);
ffa02860:	28 91       	R0 = [P5];
ffa02862:	0f 30       	R1 = R7;
ffa02864:	ff e3 42 fb 	CALL 0xffa01ee8 <_icmp_rx>;
ffa02868:	00 0c       	CC = R0 == 0x0;
ffa0286a:	b9 17       	IF !CC JUMP 0xffa027dc <_bfin_EMAC_recv+0x3c> (BP);
ffa0286c:	28 91       	R0 = [P5];
ffa0286e:	0f 30       	R1 = R7;
ffa02870:	00 e3 40 04 	CALL 0xffa030f0 <_tcp_rx>;
ffa02874:	00 0c       	CC = R0 == 0x0;
ffa02876:	b3 17       	IF !CC JUMP 0xffa027dc <_bfin_EMAC_recv+0x3c> (BP);
ffa02878:	0c 32       	P1 = R4;
ffa0287a:	07 0d       	CC = R7 <= 0x0;
ffa0287c:	0e 97       	W[P1] = R6;
ffa0287e:	b3 1f       	IF CC JUMP 0xffa027e4 <_bfin_EMAC_recv+0x44> (BP);
ffa02880:	01 e8 00 00 	UNLINK;
ffa02884:	07 30       	R0 = R7;
ffa02886:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02888:	10 00       	RTS;
ffa0288a:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa0288c:	01 e8 00 00 	UNLINK;
ffa02890:	07 30       	R0 = R7;
ffa02892:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02894:	10 00       	RTS;
ffa02896:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900003(-7340029) */
ffa0289a:	00 e1 30 03 	R0.L = 0x330;		/* (816)	R0=0xff900330(-7339216) */
ffa0289e:	ff e3 f1 ee 	CALL 0xffa00680 <_printf_str>;
ffa028a2:	01 e8 00 00 	UNLINK;
ffa028a6:	07 30       	R0 = R7;
ffa028a8:	a3 05       	(R7:4, P5:3) = [SP++];
ffa028aa:	10 00       	RTS;
ffa028ac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900330(-7339216) */
ffa028b0:	00 e1 4c 03 	R0.L = 0x34c;		/* (844)	R0=0xff90034c(-7339188) */
ffa028b4:	ff e3 e6 ee 	CALL 0xffa00680 <_printf_str>;
ffa028b8:	01 e8 00 00 	UNLINK;
ffa028bc:	07 30       	R0 = R7;
ffa028be:	a3 05       	(R7:4, P5:3) = [SP++];
ffa028c0:	10 00       	RTS;
ffa028c2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90034c(-7339188) */
ffa028c6:	00 e1 60 03 	R0.L = 0x360;		/* (864)	R0=0xff900360(-7339168) */
ffa028ca:	ff e3 db ee 	CALL 0xffa00680 <_printf_str>;
ffa028ce:	01 e8 00 00 	UNLINK;
ffa028d2:	07 30       	R0 = R7;
ffa028d4:	a3 05       	(R7:4, P5:3) = [SP++];
ffa028d6:	10 00       	RTS;

ffa028d8 <_ARP_init>:
ffa028d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa028dc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa028e0:	0a e1 28 0c 	P2.L = 0xc28;		/* (3112)	P2=0xff900c28 <_NetArpLut> */
ffa028e4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa028e6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa028e8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa028ea:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa028ec:	b2 e0 12 10 	LSETUP(0xffa028f0 <_ARP_init+0x18>, 0xffa02910 <_ARP_init+0x38>) LC1 = P1;
ffa028f0:	11 93       	[P2] = R1;
ffa028f2:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa028f6:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa028fa:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa028fe:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa02902:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02906:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa0290a:	52 b5       	W[P2 + 0xa] = R2;
ffa0290c:	d1 b0       	[P2 + 0xc] = R1;
ffa0290e:	11 b1       	[P2 + 0x10] = R1;
ffa02910:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa02912:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c28 <_NetArpLut> */
ffa02916:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa0291a:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetArpLut_age> */
ffa0291e:	10 97       	W[P2] = R0;
ffa02920:	01 e8 00 00 	UNLINK;
ffa02924:	10 00       	RTS;
	...

ffa02928 <_ARP_lut_find>:
ffa02928:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900be8 <_txIdx> */
ffa0292c:	08 e1 28 0c 	P0.L = 0xc28;		/* (3112)	P0=0xff900c28 <_NetArpLut> */
ffa02930:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02934:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02936:	48 32       	P1 = P0;
ffa02938:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa0293a:	b2 e0 06 20 	LSETUP(0xffa0293e <_ARP_lut_find+0x16>, 0xffa02946 <_ARP_lut_find+0x1e>) LC1 = P2;
ffa0293e:	08 91       	R0 = [P1];
ffa02940:	00 0c       	CC = R0 == 0x0;
ffa02942:	14 18       	IF CC JUMP 0xffa0296a <_ARP_lut_find+0x42>;
ffa02944:	0a 64       	R2 += 0x1;		/* (  1) */
ffa02946:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02948:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa0294c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0294e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02950:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa02952:	09 e1 46 0c 	P1.L = 0xc46;		/* (3142)	P1=0xff900c46 */
ffa02956:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa02958:	b2 e0 08 20 	LSETUP(0xffa0295c <_ARP_lut_find+0x34>, 0xffa02968 <_ARP_lut_find+0x40>) LC1 = P2;
ffa0295c:	08 95       	R0 = W[P1] (Z);
ffa0295e:	03 09       	CC = R3 <= R0;
ffa02960:	03 18       	IF CC JUMP 0xffa02966 <_ARP_lut_find+0x3e>;
ffa02962:	11 30       	R2 = R1;
ffa02964:	18 30       	R3 = R0;
ffa02966:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02968:	09 64       	R1 += 0x1;		/* (  1) */
ffa0296a:	02 30       	R0 = R2;
ffa0296c:	01 e8 00 00 	UNLINK;
ffa02970:	10 00       	RTS;
	...

ffa02974 <_ARP_lut_add>:
ffa02974:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02976:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900be4 <_NetDHCPserv> */
ffa0297a:	0d e1 28 0c 	P5.L = 0xc28;		/* (3112)	P5=0xff900c28 <_NetArpLut> */
ffa0297e:	31 30       	R6 = R1;
ffa02980:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02984:	38 30       	R7 = R0;
ffa02986:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02988:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0298a:	4d 32       	P1 = P5;
ffa0298c:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa0298e:	00 00       	NOP;
ffa02990:	08 91       	R0 = [P1];
ffa02992:	07 08       	CC = R7 == R0;
ffa02994:	11 07       	IF CC R2 = R1;
ffa02996:	09 64       	R1 += 0x1;		/* (  1) */
ffa02998:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa0299a:	42 0c       	CC = P2 == 0x0;
ffa0299c:	23 10       	IF !CC JUMP 0xffa029e2 <_ARP_lut_add+0x6e>;
ffa0299e:	82 0c       	CC = R2 < 0x0;
ffa029a0:	25 18       	IF CC JUMP 0xffa029ea <_ARP_lut_add+0x76>;
ffa029a2:	82 c6 12 82 	R1 = R2 << 0x2;
ffa029a6:	0a 32       	P1 = R2;
ffa029a8:	11 32       	P2 = R1;
ffa029aa:	06 32       	P0 = R6;
ffa029ac:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa029ae:	6a 5a       	P1 = P2 + P5;
ffa029b0:	22 6c       	P2 += 0x4;		/* (  4) */
ffa029b2:	0f 93       	[P1] = R7;
ffa029b4:	aa 5a       	P2 = P2 + P5;
ffa029b6:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa029b8:	b2 e0 03 10 	LSETUP(0xffa029bc <_ARP_lut_add+0x48>, 0xffa029be <_ARP_lut_add+0x4a>) LC1 = P1;
ffa029bc:	40 98       	R0 = B[P0++] (X);
ffa029be:	10 9a       	B[P2++] = R0;
ffa029c0:	51 41       	R1 = (R1 + R2) << 0x2;
ffa029c2:	09 32       	P1 = R1;
ffa029c4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa029c8:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetArpLut_age> */
ffa029cc:	50 95       	R0 = W[P2] (X);
ffa029ce:	08 64       	R0 += 0x1;		/* (  1) */
ffa029d0:	10 97       	W[P2] = R0;
ffa029d2:	a9 5a       	P2 = P1 + P5;
ffa029d4:	50 b5       	W[P2 + 0xa] = R0;
ffa029d6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa029d8:	10 b1       	[P2 + 0x10] = R0;
ffa029da:	01 e8 00 00 	UNLINK;
ffa029de:	b5 05       	(R7:6, P5:5) = [SP++];
ffa029e0:	10 00       	RTS;
ffa029e2:	82 0c       	CC = R2 < 0x0;
ffa029e4:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa029e6:	d4 1f       	IF CC JUMP 0xffa0298e <_ARP_lut_add+0x1a> (BP);
ffa029e8:	dd 2f       	JUMP.S 0xffa029a2 <_ARP_lut_add+0x2e>;
ffa029ea:	ff e3 9f ff 	CALL 0xffa02928 <_ARP_lut_find>;
ffa029ee:	10 30       	R2 = R0;
ffa029f0:	d9 2f       	JUMP.S 0xffa029a2 <_ARP_lut_add+0x2e>;
	...

ffa029f4 <_ARP_lu>:
ffa029f4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa029f8:	c4 04       	[--SP] = (P5:4);
ffa029fa:	09 e1 28 0c 	P1.L = 0xc28;		/* (3112)	P1=0xff900c28 <_NetArpLut> */
ffa029fe:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02a02:	10 30       	R2 = R0;
ffa02a04:	29 32       	P5 = R1;
ffa02a06:	61 32       	P4 = P1;
ffa02a08:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa02a0a:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02a0c:	b2 e0 06 20 	LSETUP(0xffa02a10 <_ARP_lu+0x1c>, 0xffa02a18 <_ARP_lu+0x24>) LC1 = P2;
ffa02a10:	08 91       	R0 = [P1];
ffa02a12:	10 08       	CC = R0 == R2;
ffa02a14:	08 18       	IF CC JUMP 0xffa02a24 <_ARP_lu+0x30>;
ffa02a16:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa02a18:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02a1a:	01 e8 00 00 	UNLINK;
ffa02a1e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a20:	84 04       	(P5:4) = [SP++];
ffa02a22:	10 00       	RTS;
ffa02a24:	08 a1       	R0 = [P1 + 0x10];
ffa02a26:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02a28:	f7 1f       	IF CC JUMP 0xffa02a16 <_ARP_lu+0x22> (BP);
ffa02a2a:	60 5a       	P1 = P0 + P4;
ffa02a2c:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa02a2e:	b2 e0 03 20 	LSETUP(0xffa02a32 <_ARP_lu+0x3e>, 0xffa02a34 <_ARP_lu+0x40>) LC1 = P2;
ffa02a32:	48 98       	R0 = B[P1++] (X);
ffa02a34:	28 9a       	B[P5++] = R0;
ffa02a36:	01 e8 00 00 	UNLINK;
ffa02a3a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02a3c:	84 04       	(P5:4) = [SP++];
ffa02a3e:	10 00       	RTS;

ffa02a40 <_ARP_rx>:
ffa02a40:	fb 05       	[--SP] = (R7:7, P5:3);
ffa02a42:	20 32       	P4 = R0;
ffa02a44:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02a48:	39 30       	R7 = R1;
ffa02a4a:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa02a4c:	ff e3 86 f5 	CALL 0xffa01558 <_htons>;
ffa02a50:	c0 42       	R0 = R0.L (Z);
ffa02a52:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa02a56:	08 08       	CC = R0 == R1;
ffa02a58:	06 18       	IF CC JUMP 0xffa02a64 <_ARP_rx+0x24>;
ffa02a5a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a5c:	01 e8 00 00 	UNLINK;
ffa02a60:	bb 05       	(R7:7, P5:3) = [SP++];
ffa02a62:	10 00       	RTS;
ffa02a64:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02a66:	07 0a       	CC = R7 <= R0 (IU);
ffa02a68:	f9 1f       	IF CC JUMP 0xffa02a5a <_ARP_rx+0x1a> (BP);
ffa02a6a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02a6c:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02a6e:	ff e3 75 f5 	CALL 0xffa01558 <_htons>;
ffa02a72:	c0 42       	R0 = R0.L (Z);
ffa02a74:	07 08       	CC = R7 == R0;
ffa02a76:	f2 17       	IF !CC JUMP 0xffa02a5a <_ARP_rx+0x1a> (BP);
ffa02a78:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02a7c:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02a7e:	ff e3 6d f5 	CALL 0xffa01558 <_htons>;
ffa02a82:	c0 42       	R0 = R0.L (Z);
ffa02a84:	07 08       	CC = R7 == R0;
ffa02a86:	ea 17       	IF !CC JUMP 0xffa02a5a <_ARP_rx+0x1a> (BP);
ffa02a88:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02a8a:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02a8e:	08 08       	CC = R0 == R1;
ffa02a90:	e5 17       	IF !CC JUMP 0xffa02a5a <_ARP_rx+0x1a> (BP);
ffa02a92:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02a94:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02a96:	ff e3 61 f5 	CALL 0xffa01558 <_htons>;
ffa02a9a:	c0 42       	R0 = R0.L (Z);
ffa02a9c:	07 08       	CC = R7 == R0;
ffa02a9e:	0c 14       	IF !CC JUMP 0xffa02ab6 <_ARP_rx+0x76> (BP);
ffa02aa0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa02aa4:	0a e1 10 0c 	P2.L = 0xc10;		/* (3088)	P2=0xff900c10 <_NetOurMAC> */
ffa02aa8:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa02aac:	10 99       	R0 = B[P2] (Z);
ffa02aae:	01 08       	CC = R1 == R0;
ffa02ab0:	ae 18       	IF CC JUMP 0xffa02c0c <_ARP_rx+0x1cc>;
ffa02ab2:	00 00       	NOP;
ffa02ab4:	00 00       	NOP;
ffa02ab6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ab8:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02aba:	ff e3 4f f5 	CALL 0xffa01558 <_htons>;
ffa02abe:	c0 42       	R0 = R0.L (Z);
ffa02ac0:	07 08       	CC = R7 == R0;
ffa02ac2:	cc 17       	IF !CC JUMP 0xffa02a5a <_ARP_rx+0x1a> (BP);
ffa02ac4:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02ac8:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02aca:	ff e3 47 f5 	CALL 0xffa01558 <_htons>;
ffa02ace:	c0 42       	R0 = R0.L (Z);
ffa02ad0:	07 08       	CC = R7 == R0;
ffa02ad2:	c4 17       	IF !CC JUMP 0xffa02a5a <_ARP_rx+0x1a> (BP);
ffa02ad4:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02ad6:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02ada:	08 08       	CC = R0 == R1;
ffa02adc:	bf 17       	IF !CC JUMP 0xffa02a5a <_ARP_rx+0x1a> (BP);
ffa02ade:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ae0:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02ae2:	ff e3 3b f5 	CALL 0xffa01558 <_htons>;
ffa02ae6:	c0 42       	R0 = R0.L (Z);
ffa02ae8:	07 08       	CC = R7 == R0;
ffa02aea:	b8 17       	IF !CC JUMP 0xffa02a5a <_ARP_rx+0x1a> (BP);
ffa02aec:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa02af0:	07 e1 1c 0c 	R7.L = 0xc1c;		/* (3100)	R7=0xff900c1c <_NetOurIP>(-7336932) */
ffa02af4:	17 32       	P2 = R7;
ffa02af6:	a1 a2       	R1 = [P4 + 0x28];
ffa02af8:	10 91       	R0 = [P2];
ffa02afa:	01 08       	CC = R1 == R0;
ffa02afc:	af 17       	IF !CC JUMP 0xffa02a5a <_ARP_rx+0x1a> (BP);
ffa02afe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c10 <_NetOurMAC> */
ffa02b02:	0a e1 e8 0b 	P2.L = 0xbe8;		/* (3048)	P2=0xff900be8 <_txIdx> */
ffa02b06:	10 95       	R0 = W[P2] (Z);
ffa02b08:	10 32       	P2 = R0;
ffa02b0a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c28 <_NetArpLut> */
ffa02b0e:	09 e1 ec 0b 	P1.L = 0xbec;		/* (3052)	P1=0xff900bec <_txbuf> */
ffa02b12:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa02b14:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c28 <_NetArpLut> */
ffa02b18:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02b1a:	52 91       	P2 = [P2];
ffa02b1c:	0d e1 10 0c 	P5.L = 0xc10;		/* (3088)	P5=0xff900c10 <_NetOurMAC> */
ffa02b20:	93 ad       	P3 = [P2 + 0x18];
ffa02b22:	18 97       	W[P3] = R0;
ffa02b24:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa02b28:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa02b2c:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa02b30:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa02b34:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa02b38:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa02b3c:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa02b40:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa02b44:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa02b48:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa02b4c:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa02b50:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa02b54:	68 99       	R0 = B[P5] (X);
ffa02b56:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa02b5a:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02b5e:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa02b62:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02b66:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa02b6a:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02b6e:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa02b72:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02b76:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa02b7a:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02b7e:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa02b82:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02b86:	ff e3 e9 f4 	CALL 0xffa01558 <_htons>;
ffa02b8a:	d8 b5       	W[P3 + 0xe] = R0;
ffa02b8c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02b8e:	ff e3 e5 f4 	CALL 0xffa01558 <_htons>;
ffa02b92:	18 b6       	W[P3 + 0x10] = R0;
ffa02b94:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02b98:	ff e3 e0 f4 	CALL 0xffa01558 <_htons>;
ffa02b9c:	58 b6       	W[P3 + 0x12] = R0;
ffa02b9e:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02ba0:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa02ba4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02ba6:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa02baa:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02bac:	ff e3 d6 f4 	CALL 0xffa01558 <_htons>;
ffa02bb0:	44 32       	P0 = P4;
ffa02bb2:	d8 b6       	W[P3 + 0x16] = R0;
ffa02bb4:	53 32       	P2 = P3;
ffa02bb6:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa02bb8:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02bba:	b2 e0 08 10 	LSETUP(0xffa02bbe <_ARP_rx+0x17e>, 0xffa02bca <_ARP_rx+0x18a>) LC1 = P1;
ffa02bbe:	68 98       	R0 = B[P5++] (X);
ffa02bc0:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa02bc4:	40 98       	R0 = B[P0++] (X);
ffa02bc6:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa02bca:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02bcc:	17 32       	P2 = R7;
ffa02bce:	50 99       	R0 = B[P2] (X);
ffa02bd0:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa02bd4:	10 91       	R0 = [P2];
ffa02bd6:	40 4e       	R0 >>= 0x8;
ffa02bd8:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa02bdc:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02be0:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa02be4:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02be8:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa02bec:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa02bf0:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa02bf4:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa02bf8:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa02bfc:	f3 b0       	[SP + 0xc] = R3;
ffa02bfe:	ff e3 03 f4 	CALL 0xffa01404 <_FormatIPAddress>;
ffa02c02:	98 b2       	[P3 + 0x28] = R0;
ffa02c04:	ff e3 54 f6 	CALL 0xffa018ac <_bfin_EMAC_send_nocopy>;
ffa02c08:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c0a:	29 2f       	JUMP.S 0xffa02a5c <_ARP_rx+0x1c>;
ffa02c0c:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa02c10:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa02c14:	01 08       	CC = R1 == R0;
ffa02c16:	50 17       	IF !CC JUMP 0xffa02ab6 <_ARP_rx+0x76> (BP);
ffa02c18:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa02c1c:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa02c20:	01 08       	CC = R1 == R0;
ffa02c22:	4a 17       	IF !CC JUMP 0xffa02ab6 <_ARP_rx+0x76> (BP);
ffa02c24:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa02c28:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa02c2c:	01 08       	CC = R1 == R0;
ffa02c2e:	44 17       	IF !CC JUMP 0xffa02ab6 <_ARP_rx+0x76> (BP);
ffa02c30:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa02c34:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02c38:	01 08       	CC = R1 == R0;
ffa02c3a:	3e 17       	IF !CC JUMP 0xffa02ab6 <_ARP_rx+0x76> (BP);
ffa02c3c:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa02c40:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa02c44:	01 08       	CC = R1 == R0;
ffa02c46:	38 17       	IF !CC JUMP 0xffa02ab6 <_ARP_rx+0x76> (BP);
ffa02c48:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa02c4a:	44 30       	R0 = P4;
ffa02c4c:	ff e3 a6 f4 	CALL 0xffa01598 <_pack4chars>;
ffa02c50:	38 30       	R7 = R0;
ffa02c52:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa02c56:	0f 30       	R1 = R7;
ffa02c58:	00 e1 6c 04 	R0.L = 0x46c;		/* (1132)	R0=0xff90046c(-7338900) */
ffa02c5c:	ff e3 76 ee 	CALL 0xffa00948 <_printf_ip>;
ffa02c60:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90046c(-7338900) */
ffa02c64:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa02c68:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa02c6a:	ff e3 0b ed 	CALL 0xffa00680 <_printf_str>;
ffa02c6e:	07 30       	R0 = R7;
ffa02c70:	4c 30       	R1 = P4;
ffa02c72:	ff e3 81 fe 	CALL 0xffa02974 <_ARP_lut_add>;
ffa02c76:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c78:	f2 2e       	JUMP.S 0xffa02a5c <_ARP_rx+0x1c>;
	...

ffa02c7c <_ARP_tx>:
ffa02c7c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa02c7e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be8 <_txIdx> */
ffa02c82:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02c86:	0a e1 e8 0b 	P2.L = 0xbe8;		/* (3048)	P2=0xff900be8 <_txIdx> */
ffa02c8a:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa02c8e:	10 95 00 00 
ffa02c92:	10 32       	P2 = R0;
ffa02c94:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02c98:	09 e1 ec 0b 	P1.L = 0xbec;		/* (3052)	P1=0xff900bec <_txbuf> */
ffa02c9c:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa02c9e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c10 <_NetOurMAC> */
ffa02ca2:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02ca4:	52 91       	P2 = [P2];
ffa02ca6:	0d e1 10 0c 	P5.L = 0xc10;		/* (3088)	P5=0xff900c10 <_NetOurMAC> */
ffa02caa:	94 ad       	P4 = [P2 + 0x18];
ffa02cac:	20 97       	W[P4] = R0;
ffa02cae:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02cb0:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa02cb4:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa02cb8:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa02cbc:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa02cc0:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa02cc4:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa02cc8:	68 99       	R0 = B[P5] (X);
ffa02cca:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa02cce:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02cd2:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa02cd6:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02cda:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa02cde:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02ce2:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa02ce6:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02cea:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa02cee:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02cf2:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa02cf6:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02cfa:	ff e3 2f f4 	CALL 0xffa01558 <_htons>;
ffa02cfe:	e0 b5       	W[P4 + 0xe] = R0;
ffa02d00:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d02:	ff e3 2b f4 	CALL 0xffa01558 <_htons>;
ffa02d06:	20 b6       	W[P4 + 0x10] = R0;
ffa02d08:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02d0c:	ff e3 26 f4 	CALL 0xffa01558 <_htons>;
ffa02d10:	60 b6       	W[P4 + 0x12] = R0;
ffa02d12:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02d14:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa02d18:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02d1a:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa02d1e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d20:	ff e3 1c f4 	CALL 0xffa01558 <_htons>;
ffa02d24:	e0 b6       	W[P4 + 0x16] = R0;
ffa02d26:	54 32       	P2 = P4;
ffa02d28:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02d2a:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02d2c:	b2 e0 07 10 	LSETUP(0xffa02d30 <_ARP_tx+0xb4>, 0xffa02d3a <_ARP_tx+0xbe>) LC1 = P1;
ffa02d30:	68 98       	R0 = B[P5++] (X);
ffa02d32:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa02d36:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa02d3a:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02d3c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be8 <_txIdx> */
ffa02d40:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_NetOurIP> */
ffa02d44:	50 99       	R0 = B[P2] (X);
ffa02d46:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa02d4a:	10 91       	R0 = [P2];
ffa02d4c:	40 4e       	R0 >>= 0x8;
ffa02d4e:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa02d52:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02d56:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa02d5a:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02d5e:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa02d62:	a7 b2       	[P4 + 0x28] = R7;
ffa02d64:	01 e8 00 00 	UNLINK;
ffa02d68:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02d6a:	ff e2 a1 f5 	JUMP.L 0xffa018ac <_bfin_EMAC_send_nocopy>;
	...

ffa02d70 <_ARP_req>:
ffa02d70:	ec 05       	[--SP] = (R7:5, P5:4);
ffa02d72:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02d76:	38 30       	R7 = R0;
ffa02d78:	ff e3 3e fe 	CALL 0xffa029f4 <_ARP_lu>;
ffa02d7c:	00 0c       	CC = R0 == 0x0;
ffa02d7e:	50 10       	IF !CC JUMP 0xffa02e1e <_ARP_req+0xae>;
ffa02d80:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c1c */
ffa02d84:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa02d88:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900bfc <_rxIdx> */
ffa02d8c:	16 91       	R6 = [P2];
ffa02d8e:	0c e1 28 0c 	P4.L = 0xc28;		/* (3112)	P4=0xff900c28 <_NetArpLut> */
ffa02d92:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02d96:	4c 32       	P1 = P4;
ffa02d98:	46 51       	R5 = R6 + R0;
ffa02d9a:	6c 32       	P5 = P4;
ffa02d9c:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02d9e:	b2 e0 06 20 	LSETUP(0xffa02da2 <_ARP_req+0x32>, 0xffa02daa <_ARP_req+0x3a>) LC1 = P2;
ffa02da2:	08 91       	R0 = [P1];
ffa02da4:	07 08       	CC = R7 == R0;
ffa02da6:	21 18       	IF CC JUMP 0xffa02de8 <_ARP_req+0x78>;
ffa02da8:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa02daa:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02dac:	ff e3 be fd 	CALL 0xffa02928 <_ARP_lut_find>;
ffa02db0:	10 32       	P2 = R0;
ffa02db2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02db4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02db8:	09 e1 24 0c 	P1.L = 0xc24;		/* (3108)	P1=0xff900c24 <_NetArpLut_age> */
ffa02dbc:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa02dbe:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa02dc0:	10 b1       	[P2 + 0x10] = R0;
ffa02dc2:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02dc6:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa02dca:	17 93 00 00 
ffa02dce:	d0 b0       	[P2 + 0xc] = R0;
ffa02dd0:	48 95       	R0 = W[P1] (X);
ffa02dd2:	08 64       	R0 += 0x1;		/* (  1) */
ffa02dd4:	08 97       	W[P1] = R0;
ffa02dd6:	50 b5       	W[P2 + 0xa] = R0;
ffa02dd8:	07 30       	R0 = R7;
ffa02dda:	ff e3 51 ff 	CALL 0xffa02c7c <_ARP_tx>;
ffa02dde:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02de0:	01 e8 00 00 	UNLINK;
ffa02de4:	ac 05       	(R7:5, P5:4) = [SP++];
ffa02de6:	10 00       	RTS;
ffa02de8:	08 a1       	R0 = [P1 + 0x10];
ffa02dea:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa02dec:	de 1f       	IF CC JUMP 0xffa02da8 <_ARP_req+0x38> (BP);
ffa02dee:	e8 a0       	R0 = [P5 + 0xc];
ffa02df0:	86 09       	CC = R6 < R0 (IU);
ffa02df2:	f6 1f       	IF CC JUMP 0xffa02dde <_ARP_req+0x6e> (BP);
ffa02df4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02df8:	0f 30       	R1 = R7;
ffa02dfa:	00 e1 90 04 	R0.L = 0x490;		/* (1168)	R0=0xff900490(-7338864) */
ffa02dfe:	ff e3 a5 ed 	CALL 0xffa00948 <_printf_ip>;
ffa02e02:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900490(-7338864) */
ffa02e06:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa02e0a:	ff e3 3b ec 	CALL 0xffa00680 <_printf_str>;
ffa02e0e:	07 30       	R0 = R7;
ffa02e10:	ff e3 36 ff 	CALL 0xffa02c7c <_ARP_tx>;
ffa02e14:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa02e18:	ed b0 00 00 
ffa02e1c:	e2 2f       	JUMP.S 0xffa02de0 <_ARP_req+0x70>;
ffa02e1e:	01 e8 00 00 	UNLINK;
ffa02e22:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e24:	ac 05       	(R7:5, P5:4) = [SP++];
ffa02e26:	10 00       	RTS;

ffa02e28 <_tcp_length>:
ffa02e28:	c5 04       	[--SP] = (P5:5);
ffa02e2a:	28 32       	P5 = R0;
ffa02e2c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02e30:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa02e32:	ff e3 93 f3 	CALL 0xffa01558 <_htons>;
ffa02e36:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa02e3a:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa02e3c:	51 54       	R1 = R1 & R2;
ffa02e3e:	11 4f       	R1 <<= 0x2;
ffa02e40:	c0 42       	R0 = R0.L (Z);
ffa02e42:	08 52       	R0 = R0 - R1;
ffa02e44:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa02e48:	11 4d       	R1 >>>= 0x2;
ffa02e4a:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa02e4c:	51 54       	R1 = R1 & R2;
ffa02e4e:	01 e8 00 00 	UNLINK;
ffa02e52:	08 52       	R0 = R0 - R1;
ffa02e54:	85 04       	(P5:5) = [SP++];
ffa02e56:	10 00       	RTS;

ffa02e58 <_tcp_checksum_calc>:
ffa02e58:	08 32       	P1 = R0;
ffa02e5a:	ed 05       	[--SP] = (R7:5, P5:5);
ffa02e5c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02e60:	28 32       	P5 = R0;
ffa02e62:	31 30       	R6 = R1;
ffa02e64:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa02e66:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa02e68:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa02e6a:	b2 e0 03 20 	LSETUP(0xffa02e6e <_tcp_checksum_calc+0x16>, 0xffa02e70 <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa02e6e:	08 94       	R0 = W[P1++] (Z);
ffa02e70:	45 51       	R5 = R5 + R0;
ffa02e72:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa02e76:	10 4e       	R0 >>= 0x2;
ffa02e78:	06 50       	R0 = R6 + R0;
ffa02e7a:	c0 42       	R0 = R0.L (Z);
ffa02e7c:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa02e80:	ff e3 6c f3 	CALL 0xffa01558 <_htons>;
ffa02e84:	47 4f       	R7 <<= 0x8;
ffa02e86:	c0 42       	R0 = R0.L (Z);
ffa02e88:	c7 51       	R7 = R7 + R0;
ffa02e8a:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa02e8c:	ef 50       	R3 = R7 + R5;
ffa02e8e:	0d 1c       	IF CC JUMP 0xffa02ea8 <_tcp_checksum_calc+0x50> (BP);
ffa02e90:	0e 32       	P1 = R6;
ffa02e92:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa02e96:	10 4e       	R0 >>= 0x2;
ffa02e98:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa02e9a:	0e 64       	R6 += 0x1;		/* (  1) */
ffa02e9c:	a9 5a       	P2 = P1 + P5;
ffa02e9e:	08 32       	P1 = R0;
ffa02ea0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02ea2:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa02ea4:	8a 5a       	P2 = P2 + P1;
ffa02ea6:	10 9b       	B[P2] = R0;
ffa02ea8:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa02eac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02eae:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa02eb2:	71 50       	R1 = R1 + R6;
ffa02eb4:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa02eb8:	09 4d       	R1 >>>= 0x1;
ffa02eba:	18 4e       	R0 >>= 0x3;
ffa02ebc:	41 50       	R1 = R1 + R0;
ffa02ebe:	01 0d       	CC = R1 <= 0x0;
ffa02ec0:	09 18       	IF CC JUMP 0xffa02ed2 <_tcp_checksum_calc+0x7a>;
ffa02ec2:	55 32       	P2 = P5;
ffa02ec4:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa02ec6:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02ec8:	0a 64       	R2 += 0x1;		/* (  1) */
ffa02eca:	10 94       	R0 = W[P2++] (Z);
ffa02ecc:	0a 08       	CC = R2 == R1;
ffa02ece:	c3 50       	R3 = R3 + R0;
ffa02ed0:	fc 17       	IF !CC JUMP 0xffa02ec8 <_tcp_checksum_calc+0x70> (BP);
ffa02ed2:	d8 42       	R0 = R3.L (Z);
ffa02ed4:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa02ed8:	08 50       	R0 = R0 + R1;
ffa02eda:	c0 43       	R0 =~ R0;
ffa02edc:	01 e8 00 00 	UNLINK;
ffa02ee0:	c0 42       	R0 = R0.L (Z);
ffa02ee2:	ad 05       	(R7:5, P5:5) = [SP++];
ffa02ee4:	10 00       	RTS;
	...

ffa02ee8 <_tcp_checksum_set>:
ffa02ee8:	c5 04       	[--SP] = (P5:5);
ffa02eea:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa02eee:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02ef2:	0a e1 e8 0b 	P2.L = 0xbe8;		/* (3048)	P2=0xff900be8 <_txIdx> */
ffa02ef6:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa02efa:	10 95 00 00 
ffa02efe:	10 32       	P2 = R0;
ffa02f00:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c24 <_NetArpLut_age> */
ffa02f04:	09 e1 ec 0b 	P1.L = 0xbec;		/* (3052)	P1=0xff900bec <_txbuf> */
ffa02f08:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02f0a:	52 91       	P2 = [P2];
ffa02f0c:	95 ad       	P5 = [P2 + 0x18];
ffa02f0e:	45 30       	R0 = P5;
ffa02f10:	ff e3 a4 ff 	CALL 0xffa02e58 <_tcp_checksum_calc>;
ffa02f14:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa02f18:	01 e8 00 00 	UNLINK;
ffa02f1c:	85 04       	(P5:5) = [SP++];
ffa02f1e:	10 00       	RTS;

ffa02f20 <_tcp_checksum_check>:
ffa02f20:	10 32       	P2 = R0;
ffa02f22:	78 05       	[--SP] = (R7:7);
ffa02f24:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02f28:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa02f2c:	ff e3 96 ff 	CALL 0xffa02e58 <_tcp_checksum_calc>;
ffa02f30:	0f 30       	R1 = R7;
ffa02f32:	c7 42       	R7 = R0.L (Z);
ffa02f34:	39 08       	CC = R1 == R7;
ffa02f36:	19 18       	IF CC JUMP 0xffa02f68 <_tcp_checksum_check+0x48>;
ffa02f38:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02f3c:	00 e1 b0 04 	R0.L = 0x4b0;		/* (1200)	R0=0xff9004b0(-7338832) */
ffa02f40:	ff e3 06 ec 	CALL 0xffa0074c <_printf_hex>;
ffa02f44:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004b0(-7338832) */
ffa02f48:	0f 30       	R1 = R7;
ffa02f4a:	00 e1 cc 04 	R0.L = 0x4cc;		/* (1228)	R0=0xff9004cc(-7338804) */
ffa02f4e:	ff e3 ff eb 	CALL 0xffa0074c <_printf_hex>;
ffa02f52:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004cc(-7338804) */
ffa02f56:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa02f5a:	ff e3 93 eb 	CALL 0xffa00680 <_printf_str>;
ffa02f5e:	01 e8 00 00 	UNLINK;
ffa02f62:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f64:	38 05       	(R7:7) = [SP++];
ffa02f66:	10 00       	RTS;
ffa02f68:	01 e8 00 00 	UNLINK;
ffa02f6c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f6e:	38 05       	(R7:7) = [SP++];
ffa02f70:	10 00       	RTS;
	...

ffa02f74 <_tcp_packet_setup>:
ffa02f74:	ed 05       	[--SP] = (R7:5, P5:5);
ffa02f76:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02f7a:	29 32       	P5 = R1;
ffa02f7c:	7f 30       	R7 = FP;
ffa02f7e:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa02f80:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02f82:	f0 bb       	[FP -0x4] = R0;
ffa02f84:	07 30       	R0 = R7;
ffa02f86:	2a 30       	R5 = R2;
ffa02f88:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa02f8c:	ff e3 2c f7 	CALL 0xffa01de4 <_eth_header_setup>;
ffa02f90:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa02f94:	68 99 00 00 
ffa02f98:	80 0c       	CC = R0 < 0x0;
ffa02f9a:	14 18       	IF CC JUMP 0xffa02fc2 <_tcp_packet_setup+0x4e>;
ffa02f9c:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02f9e:	f0 b0       	[SP + 0xc] = R0;
ffa02fa0:	15 30       	R2 = R5;
ffa02fa2:	01 30       	R0 = R1;
ffa02fa4:	0f 30       	R1 = R7;
ffa02fa6:	ff e3 0d f3 	CALL 0xffa015c0 <_ip_header_setup>;
ffa02faa:	b9 a2       	R1 = [FP + 0x28];
ffa02fac:	f1 b0       	[SP + 0xc] = R1;
ffa02fae:	f9 a2       	R1 = [FP + 0x2c];
ffa02fb0:	31 b1       	[SP + 0x10] = R1;
ffa02fb2:	72 43       	R2 = R6.B (Z);
ffa02fb4:	0f 30       	R1 = R7;
ffa02fb6:	ff e3 91 f3 	CALL 0xffa016d8 <_tcp_header_setup>;
ffa02fba:	01 e8 00 00 	UNLINK;
ffa02fbe:	ad 05       	(R7:5, P5:5) = [SP++];
ffa02fc0:	10 00       	RTS;
ffa02fc2:	01 e8 00 00 	UNLINK;
ffa02fc6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02fc8:	ad 05       	(R7:5, P5:5) = [SP++];
ffa02fca:	10 00       	RTS;

ffa02fcc <_tcp_burst>:
ffa02fcc:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02fce:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02fd2:	78 b2       	[FP + 0x24] = R0;
ffa02fd4:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 */
ffa02fd8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be8 <_txIdx> */
ffa02fdc:	7a a2       	R2 = [FP + 0x24];
ffa02fde:	0b e1 10 0d 	P3.L = 0xd10;		/* (3344)	P3=0xff900d10 <_g_httpHeaderLen> */
ffa02fe2:	0a e1 14 0d 	P2.L = 0xd14;		/* (3348)	P2=0xff900d14 <_g_httpContentLen> */
ffa02fe6:	02 0d       	CC = R2 <= 0x0;
ffa02fe8:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa02fec:	10 91 00 00 
ffa02ff0:	19 91       	R1 = [P3];
ffa02ff2:	79 18       	IF CC JUMP 0xffa030e4 <_tcp_burst+0x118>;
ffa02ff4:	41 50       	R1 = R1 + R0;
ffa02ff6:	8e 09       	CC = R6 < R1 (IU);
ffa02ff8:	21 32       	P4 = R1;
ffa02ffa:	75 10       	IF !CC JUMP 0xffa030e4 <_tcp_burst+0x118>;
ffa02ffc:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa02ffe:	38 20       	JUMP.S 0xffa0306e <_tcp_burst+0xa2>;
ffa03000:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03002:	18 91       	R0 = [P3];
ffa03004:	06 52       	R0 = R6 - R0;
ffa03006:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa0300a:	08 50       	R0 = R0 + R1;
ffa0300c:	17 30       	R2 = R7;
ffa0300e:	0d 30       	R1 = R5;
ffa03010:	ff e3 e0 ec 	CALL 0xffa009d0 <_memcpy_>;
ffa03014:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bec <_txbuf> */
ffa03018:	09 e1 fc 0c 	P1.L = 0xcfc;		/* (3324)	P1=0xff900cfc <_TcpSeqHttpStart> */
ffa0301c:	08 91       	R0 = [P1];
ffa0301e:	be 51       	R6 = R6 + R7;
ffa03020:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d14 <_g_httpContentLen> */
ffa03024:	0a e1 f4 0c 	P2.L = 0xcf4;		/* (3316)	P2=0xff900cf4 <_TcpSeqHost> */
ffa03028:	06 50       	R0 = R6 + R0;
ffa0302a:	10 93       	[P2] = R0;
ffa0302c:	27 50       	R0 = R7 + R4;
ffa0302e:	ff e3 5d ff 	CALL 0xffa02ee8 <_tcp_checksum_set>;
ffa03032:	ff e3 3d f4 	CALL 0xffa018ac <_bfin_EMAC_send_nocopy>;
ffa03036:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf4 <_TcpSeqHost> */
ffa0303a:	0a e1 fc 0b 	P2.L = 0xbfc;		/* (3068)	P2=0xff900bfc <_rxIdx> */
ffa0303e:	10 95       	R0 = W[P2] (Z);
ffa03040:	10 32       	P2 = R0;
ffa03042:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900cfc <_TcpSeqHttpStart> */
ffa03046:	09 e1 00 0c 	P1.L = 0xc00;		/* (3072)	P1=0xff900c00 <_rxbuf> */
ffa0304a:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa0304c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0304e:	52 91       	P2 = [P2];
ffa03050:	90 a2       	R0 = [P2 + 0x28];
ffa03052:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa03054:	07 1c       	IF CC JUMP 0xffa03062 <_tcp_burst+0x96> (BP);
ffa03056:	90 a2       	R0 = [P2 + 0x28];
ffa03058:	4d 30       	R1 = P5;
ffa0305a:	7a a2       	R2 = [FP + 0x24];
ffa0305c:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa0305e:	11 50       	R0 = R1 + R2;
ffa03060:	a8 06       	IF !CC P5 = R0;
ffa03062:	79 ae       	P1 = [FP + 0x24];
ffa03064:	69 09       	CC = P1 <= P5;
ffa03066:	40 18       	IF CC JUMP 0xffa030e6 <_tcp_burst+0x11a>;
ffa03068:	44 30       	R0 = P4;
ffa0306a:	86 09       	CC = R6 < R0 (IU);
ffa0306c:	3d 10       	IF !CC JUMP 0xffa030e6 <_tcp_burst+0x11a>;
ffa0306e:	44 30       	R0 = P4;
ffa03070:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c00 <_rxbuf> */
ffa03074:	f0 53       	R7 = R0 - R6;
ffa03076:	09 e1 fc 0c 	P1.L = 0xcfc;		/* (3324)	P1=0xff900cfc <_TcpSeqHttpStart> */
ffa0307a:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa0307e:	07 cc 38 4e 	R7 = MIN (R7, R0) || R0 = [P1] || NOP;
ffa03082:	08 91 00 00 
ffa03086:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bfc <_rxIdx> */
ffa0308a:	06 50       	R0 = R6 + R0;
ffa0308c:	0a e1 f4 0c 	P2.L = 0xcf4;		/* (3316)	P2=0xff900cf4 <_TcpSeqHost> */
ffa03090:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa03092:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900cfc <_TcpSeqHttpStart> */
ffa03096:	10 93       	[P2] = R0;
ffa03098:	09 e1 f8 0c 	P1.L = 0xcf8;		/* (3320)	P1=0xff900cf8 <_TcpSeqClient> */
ffa0309c:	f1 b0       	[SP + 0xc] = R1;
ffa0309e:	30 b1       	[SP + 0x10] = R0;
ffa030a0:	08 91       	R0 = [P1];
ffa030a2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf4 <_TcpSeqHost> */
ffa030a6:	70 b1       	[SP + 0x14] = R0;
ffa030a8:	0a e1 e0 0b 	P2.L = 0xbe0;		/* (3040)	P2=0xff900be0 <_NetDestIP> */
ffa030ac:	4f 30       	R1 = FP;
ffa030ae:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || R2 = [P2] || NOP;
ffa030b2:	12 91 00 00 
ffa030b6:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa030b8:	ff e3 5e ff 	CALL 0xffa02f74 <_tcp_packet_setup>;
ffa030bc:	28 30       	R5 = R0;
ffa030be:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa030c2:	00 0d       	CC = R0 <= 0x0;
ffa030c4:	cf 1b       	IF CC JUMP 0xffa03062 <_tcp_burst+0x96>;
ffa030c6:	18 91       	R0 = [P3];
ffa030c8:	30 0a       	CC = R0 <= R6 (IU);
ffa030ca:	9b 1f       	IF CC JUMP 0xffa03000 <_tcp_burst+0x34> (BP);
ffa030cc:	30 53       	R4 = R0 - R6;
ffa030ce:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa030d2:	06 50       	R0 = R6 + R0;
ffa030d4:	0d 30       	R1 = R5;
ffa030d6:	14 30       	R2 = R4;
ffa030d8:	ff e3 7c ec 	CALL 0xffa009d0 <_memcpy_>;
ffa030dc:	65 51       	R5 = R5 + R4;
ffa030de:	e7 53       	R7 = R7 - R4;
ffa030e0:	a6 51       	R6 = R6 + R4;
ffa030e2:	90 2f       	JUMP.S 0xffa03002 <_tcp_burst+0x36>;
ffa030e4:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa030e6:	01 e8 00 00 	UNLINK;
ffa030ea:	45 30       	R0 = P5;
ffa030ec:	a3 05       	(R7:4, P5:3) = [SP++];
ffa030ee:	10 00       	RTS;

ffa030f0 <_tcp_rx>:
ffa030f0:	eb 05       	[--SP] = (R7:5, P5:3);
ffa030f2:	20 32       	P4 = R0;
ffa030f4:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa030f8:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa030fc:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa030fe:	ff e3 2d f2 	CALL 0xffa01558 <_htons>;
ffa03102:	c0 42       	R0 = R0.L (Z);
ffa03104:	07 08       	CC = R7 == R0;
ffa03106:	06 18       	IF CC JUMP 0xffa03112 <_tcp_rx+0x22>;
ffa03108:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0310a:	01 e8 00 00 	UNLINK;
ffa0310e:	ab 05       	(R7:5, P5:3) = [SP++];
ffa03110:	10 00       	RTS;
ffa03112:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa03116:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa03118:	08 08       	CC = R0 == R1;
ffa0311a:	f7 17       	IF !CC JUMP 0xffa03108 <_tcp_rx+0x18> (BP);
ffa0311c:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa03120:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa03124:	ff e3 1a f2 	CALL 0xffa01558 <_htons>;
ffa03128:	c0 42       	R0 = R0.L (Z);
ffa0312a:	07 08       	CC = R7 == R0;
ffa0312c:	ee 17       	IF !CC JUMP 0xffa03108 <_tcp_rx+0x18> (BP);
ffa0312e:	44 30       	R0 = P4;
ffa03130:	80 64       	R0 += 0x10;		/* ( 16) */
ffa03132:	ff e3 87 f2 	CALL 0xffa01640 <_ip_header_checksum>;
ffa03136:	40 43       	R0 = R0.B (Z);
ffa03138:	00 0c       	CC = R0 == 0x0;
ffa0313a:	e7 1f       	IF CC JUMP 0xffa03108 <_tcp_rx+0x18> (BP);
ffa0313c:	4c 30       	R1 = P4;
ffa0313e:	41 64       	R1 += 0x8;		/* (  8) */
ffa03140:	e0 a1       	R0 = [P4 + 0x1c];
ffa03142:	ff e3 19 fc 	CALL 0xffa02974 <_ARP_lut_add>;
ffa03146:	44 30       	R0 = P4;
ffa03148:	ff e3 70 fe 	CALL 0xffa02e28 <_tcp_length>;
ffa0314c:	30 30       	R6 = R0;
ffa0314e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa03152:	0e 30       	R1 = R6;
ffa03154:	00 e1 dc 04 	R0.L = 0x4dc;		/* (1244)	R0=0xff9004dc(-7338788) */
ffa03158:	ff e3 56 eb 	CALL 0xffa00804 <_printf_int>;
ffa0315c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004dc(-7338788) */
ffa03160:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa03164:	ff e3 8e ea 	CALL 0xffa00680 <_printf_str>;
ffa03168:	44 30       	R0 = P4;
ffa0316a:	0e 30       	R1 = R6;
ffa0316c:	ff e3 da fe 	CALL 0xffa02f20 <_tcp_checksum_check>;
ffa03170:	40 43       	R0 = R0.B (Z);
ffa03172:	00 0c       	CC = R0 == 0x0;
ffa03174:	ca 1b       	IF CC JUMP 0xffa03108 <_tcp_rx+0x18>;
ffa03176:	00 00       	NOP;
ffa03178:	00 00       	NOP;
ffa0317a:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa0317c:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03180:	48 43       	R0 = R1.B (Z);
ffa03182:	10 08       	CC = R0 == R2;
ffa03184:	fb 18       	IF CC JUMP 0xffa0337a <_tcp_rx+0x28a>;
ffa03186:	10 0c       	CC = R0 == 0x2;
ffa03188:	14 19       	IF CC JUMP 0xffa033b0 <_tcp_rx+0x2c0>;
ffa0318a:	48 43       	R0 = R1.B (Z);
ffa0318c:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa0318e:	08 08       	CC = R0 == R1;
ffa03190:	8f 18       	IF CC JUMP 0xffa032ae <_tcp_rx+0x1be>;
ffa03192:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03194:	b5 10       	IF !CC JUMP 0xffa032fe <_tcp_rx+0x20e>;
ffa03196:	00 00       	NOP;
ffa03198:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d10 <_g_httpHeaderLen> */
ffa0319c:	0b e1 00 0d 	P3.L = 0xd00;		/* (3328)	P3=0xff900d00 <_TcpState> */
ffa031a0:	00 00       	NOP;
ffa031a2:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa031a6:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa031a8:	42 10       	IF !CC JUMP 0xffa0322c <_tcp_rx+0x13c>;
ffa031aa:	18 91       	R0 = [P3];
ffa031ac:	10 0c       	CC = R0 == 0x2;
ffa031ae:	ad 17       	IF !CC JUMP 0xffa03108 <_tcp_rx+0x18> (BP);
ffa031b0:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000 <_l1_data_a>(-7340032) */
ffa031b4:	a0 a2       	R0 = [P4 + 0x28];
ffa031b6:	05 e1 e0 0b 	R5.L = 0xbe0;		/* (3040)	R5=0xff900be0 <_NetDestIP>(-7336992) */
ffa031ba:	a7 e5 30 00 	R7 = B[P4 + 0x30] (X);
ffa031be:	ff e3 d9 f1 	CALL 0xffa01570 <_htonl>;
ffa031c2:	15 32       	P2 = R5;
ffa031c4:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa031c8:	30 50       	R0 = R0 + R6;
ffa031ca:	0d e1 f8 0c 	P5.L = 0xcf8;		/* (3320)	P5=0xff900cf8 <_TcpSeqClient> */
ffa031ce:	28 93       	[P5] = R0;
ffa031d0:	e0 a1       	R0 = [P4 + 0x1c];
ffa031d2:	10 93       	[P2] = R0;
ffa031d4:	e0 a2       	R0 = [P4 + 0x2c];
ffa031d6:	ff e3 cd f1 	CALL 0xffa01570 <_htonl>;
ffa031da:	08 30       	R1 = R0;
ffa031dc:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d00 <_TcpState> */
ffa031e0:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa031e4:	0b e1 fc 0c 	P3.L = 0xcfc;		/* (3324)	P3=0xff900cfc <_TcpSeqHttpStart> */
ffa031e8:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa031ea:	1b 91       	R3 = [P3];
ffa031ec:	4a 19       	IF CC JUMP 0xffa03480 <_tcp_rx+0x390>;
ffa031ee:	06 0c       	CC = R6 == 0x0;
ffa031f0:	48 15       	IF !CC JUMP 0xffa03480 <_tcp_rx+0x390> (BP);
ffa031f2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be0 <_NetDestIP> */
ffa031f6:	0a e1 10 0d 	P2.L = 0xd10;		/* (3344)	P2=0xff900d10 <_g_httpHeaderLen> */
ffa031fa:	10 91       	R0 = [P2];
ffa031fc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d10 <_g_httpHeaderLen> */
ffa03200:	0a e1 14 0d 	P2.L = 0xd14;		/* (3348)	P2=0xff900d14 <_g_httpContentLen> */
ffa03204:	04 cc 0b 44 	R2 = R1 - R3 (NS) || R1 = [P2] || NOP;
ffa03208:	11 91 00 00 
ffa0320c:	08 50       	R0 = R0 + R1;
ffa0320e:	02 08       	CC = R2 == R0;
ffa03210:	8a 15       	IF !CC JUMP 0xffa03524 <_tcp_rx+0x434> (BP);
ffa03212:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d14 <_g_httpContentLen> */
ffa03216:	0a e1 18 0d 	P2.L = 0xd18;		/* (3352)	P2=0xff900d18 <_g_httpRxed> */
ffa0321a:	16 93       	[P2] = R6;
ffa0321c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d18 <_g_httpRxed> */
ffa03220:	13 50       	R0 = R3 + R2;
ffa03222:	0a e1 f4 0c 	P2.L = 0xcf4;		/* (3316)	P2=0xff900cf4 <_TcpSeqHost> */
ffa03226:	10 93       	[P2] = R0;
ffa03228:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0322a:	70 2f       	JUMP.S 0xffa0310a <_tcp_rx+0x1a>;
ffa0322c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0322e:	1f 91       	R7 = [P3];
ffa03230:	07 08       	CC = R7 == R0;
ffa03232:	59 19       	IF CC JUMP 0xffa034e4 <_tcp_rx+0x3f4>;
ffa03234:	07 0c       	CC = R7 == 0x0;
ffa03236:	ba 17       	IF !CC JUMP 0xffa031aa <_tcp_rx+0xba> (BP);
ffa03238:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa0323c:	00 e1 58 05 	R0.L = 0x558;		/* (1368)	R0=0xff900558(-7338664) */
ffa03240:	ff e3 20 ea 	CALL 0xffa00680 <_printf_str>;
ffa03244:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf4 <_TcpSeqHost> */
ffa03248:	0a e1 18 0d 	P2.L = 0xd18;		/* (3352)	P2=0xff900d18 <_g_httpRxed> */
ffa0324c:	17 93       	[P2] = R7;
ffa0324e:	a0 a2       	R0 = [P4 + 0x28];
ffa03250:	ff e3 90 f1 	CALL 0xffa01570 <_htonl>;
ffa03254:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d18 <_g_httpRxed> */
ffa03258:	0a e1 f8 0c 	P2.L = 0xcf8;		/* (3320)	P2=0xff900cf8 <_TcpSeqClient> */
ffa0325c:	10 93       	[P2] = R0;
ffa0325e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf8 <_TcpSeqClient> */
ffa03262:	e2 a1       	R2 = [P4 + 0x1c];
ffa03264:	0a e1 e0 0b 	P2.L = 0xbe0;		/* (3040)	P2=0xff900be0 <_NetDestIP> */
ffa03268:	12 93       	[P2] = R2;
ffa0326a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be0 <_NetDestIP> */
ffa0326e:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03272:	0a e1 0c 0d 	P2.L = 0xd0c;		/* (3340)	P2=0xff900d0c <_TcpClientPort> */
ffa03276:	11 97       	W[P2] = R1;
ffa03278:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa0327a:	f1 b0       	[SP + 0xc] = R1;
ffa0327c:	4f 30       	R1 = FP;
ffa0327e:	30 b1       	[SP + 0x10] = R0;
ffa03280:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03282:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa03286:	77 b1 00 00 
ffa0328a:	ff e3 75 fe 	CALL 0xffa02f74 <_tcp_packet_setup>;
ffa0328e:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03292:	00 0d       	CC = R0 <= 0x0;
ffa03294:	8b 1b       	IF CC JUMP 0xffa031aa <_tcp_rx+0xba>;
ffa03296:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d0c <_TcpClientPort> */
ffa0329a:	0a e1 00 0d 	P2.L = 0xd00;		/* (3328)	P2=0xff900d00 <_TcpState> */
ffa0329e:	17 93       	[P2] = R7;
ffa032a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa032a2:	ff e3 23 fe 	CALL 0xffa02ee8 <_tcp_checksum_set>;
ffa032a6:	ff e3 03 f3 	CALL 0xffa018ac <_bfin_EMAC_send_nocopy>;
ffa032aa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa032ac:	2f 2f       	JUMP.S 0xffa0310a <_tcp_rx+0x1a>;
ffa032ae:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900cfc <_TcpSeqHttpStart> */
ffa032b2:	0b e1 00 0d 	P3.L = 0xd00;		/* (3328)	P3=0xff900d00 <_TcpState> */
ffa032b6:	18 91       	R0 = [P3];
ffa032b8:	08 0c       	CC = R0 == 0x1;
ffa032ba:	b9 17       	IF !CC JUMP 0xffa0322c <_tcp_rx+0x13c> (BP);
ffa032bc:	e0 a2       	R0 = [P4 + 0x2c];
ffa032be:	ff e3 59 f1 	CALL 0xffa01570 <_htonl>;
ffa032c2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d00 <_TcpState> */
ffa032c6:	0a e1 f4 0c 	P2.L = 0xcf4;		/* (3316)	P2=0xff900cf4 <_TcpSeqHost> */
ffa032ca:	11 91       	R1 = [P2];
ffa032cc:	08 08       	CC = R0 == R1;
ffa032ce:	31 19       	IF CC JUMP 0xffa03530 <_tcp_rx+0x440>;
ffa032d0:	00 00       	NOP;
ffa032d2:	00 00       	NOP;
ffa032d4:	00 00       	NOP;
ffa032d6:	e0 a2       	R0 = [P4 + 0x2c];
ffa032d8:	ff e3 4c f1 	CALL 0xffa01570 <_htonl>;
ffa032dc:	08 30       	R1 = R0;
ffa032de:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa032e2:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa032e6:	ff e3 31 eb 	CALL 0xffa00948 <_printf_ip>;
ffa032ea:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa032ec:	18 93       	[P3] = R0;
ffa032ee:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa032f2:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa032f6:	ff e3 c5 e9 	CALL 0xffa00680 <_printf_str>;
ffa032fa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa032fc:	07 2f       	JUMP.S 0xffa0310a <_tcp_rx+0x1a>;
ffa032fe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03302:	00 e1 34 05 	R0.L = 0x534;		/* (1332)	R0=0xff900534(-7338700) */
ffa03306:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900be0 <_NetDestIP>(-7336992) */
ffa0330a:	ff e3 bb e9 	CALL 0xffa00680 <_printf_str>;
ffa0330e:	05 e1 e0 0b 	R5.L = 0xbe0;		/* (3040)	R5=0xff900be0 <_NetDestIP>(-7336992) */
ffa03312:	a0 a2       	R0 = [P4 + 0x28];
ffa03314:	ff e3 2e f1 	CALL 0xffa01570 <_htonl>;
ffa03318:	15 32       	P2 = R5;
ffa0331a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900cf8 <_TcpSeqClient> */
ffa0331e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d00 <_TcpState> */
ffa03322:	0d e1 f8 0c 	P5.L = 0xcf8;		/* (3320)	P5=0xff900cf8 <_TcpSeqClient> */
ffa03326:	0b e1 00 0d 	P3.L = 0xd00;		/* (3328)	P3=0xff900d00 <_TcpState> */
ffa0332a:	28 93       	[P5] = R0;
ffa0332c:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa03330:	18 91 00 00 
ffa03334:	e2 a1       	R2 = [P4 + 0x1c];
ffa03336:	09 64       	R1 += 0x1;		/* (  1) */
ffa03338:	10 0c       	CC = R0 == 0x2;
ffa0333a:	12 93       	[P2] = R2;
ffa0333c:	29 93       	[P5] = R1;
ffa0333e:	03 18       	IF CC JUMP 0xffa03344 <_tcp_rx+0x254>;
ffa03340:	00 0c       	CC = R0 == 0x0;
ffa03342:	7d 14       	IF !CC JUMP 0xffa0343c <_tcp_rx+0x34c> (BP);
ffa03344:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa03346:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf4 <_TcpSeqHost> */
ffa0334a:	f0 b0       	[SP + 0xc] = R0;
ffa0334c:	0a e1 f4 0c 	P2.L = 0xcf4;		/* (3316)	P2=0xff900cf4 <_TcpSeqHost> */
ffa03350:	10 91       	R0 = [P2];
ffa03352:	71 b1       	[SP + 0x14] = R1;
ffa03354:	4f 30       	R1 = FP;
ffa03356:	30 b1       	[SP + 0x10] = R0;
ffa03358:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0335a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0335c:	ff e3 0c fe 	CALL 0xffa02f74 <_tcp_packet_setup>;
ffa03360:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03364:	00 0d       	CC = R0 <= 0x0;
ffa03366:	6b 18       	IF CC JUMP 0xffa0343c <_tcp_rx+0x34c>;
ffa03368:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0336a:	18 93       	[P3] = R0;
ffa0336c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0336e:	ff e3 bd fd 	CALL 0xffa02ee8 <_tcp_checksum_set>;
ffa03372:	ff e3 9d f2 	CALL 0xffa018ac <_bfin_EMAC_send_nocopy>;
ffa03376:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03378:	c9 2e       	JUMP.S 0xffa0310a <_tcp_rx+0x1a>;
ffa0337a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0337e:	00 e1 f0 04 	R0.L = 0x4f0;		/* (1264)	R0=0xff9004f0(-7338768) */
ffa03382:	ff e3 7f e9 	CALL 0xffa00680 <_printf_str>;
ffa03386:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf4 <_TcpSeqHost> */
ffa0338a:	0a e1 00 0d 	P2.L = 0xd00;		/* (3328)	P2=0xff900d00 <_TcpState> */
ffa0338e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03390:	17 93       	[P2] = R7;
ffa03392:	a0 a2       	R0 = [P4 + 0x28];
ffa03394:	ff e3 ee f0 	CALL 0xffa01570 <_htonl>;
ffa03398:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d00 <_TcpState> */
ffa0339c:	0a e1 f8 0c 	P2.L = 0xcf8;		/* (3320)	P2=0xff900cf8 <_TcpSeqClient> */
ffa033a0:	10 93       	[P2] = R0;
ffa033a2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf8 <_TcpSeqClient> */
ffa033a6:	0a e1 18 0d 	P2.L = 0xd18;		/* (3352)	P2=0xff900d18 <_g_httpRxed> */
ffa033aa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa033ac:	17 93       	[P2] = R7;
ffa033ae:	ae 2e       	JUMP.S 0xffa0310a <_tcp_rx+0x1a>;
ffa033b0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa033b4:	00 e1 fc 04 	R0.L = 0x4fc;		/* (1276)	R0=0xff9004fc(-7338756) */
ffa033b8:	ff e3 64 e9 	CALL 0xffa00680 <_printf_str>;
ffa033bc:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900cf8 <_TcpSeqClient> */
ffa033c0:	a0 a2       	R0 = [P4 + 0x28];
ffa033c2:	ff e3 d7 f0 	CALL 0xffa01570 <_htonl>;
ffa033c6:	0d e1 f8 0c 	P5.L = 0xcf8;		/* (3320)	P5=0xff900cf8 <_TcpSeqClient> */
ffa033ca:	28 93       	[P5] = R0;
ffa033cc:	44 30       	R0 = P4;
ffa033ce:	ff e3 2d fd 	CALL 0xffa02e28 <_tcp_length>;
ffa033d2:	29 91       	R1 = [P5];
ffa033d4:	09 64       	R1 += 0x1;		/* (  1) */
ffa033d6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d18 <_g_httpRxed> */
ffa033da:	08 50       	R0 = R0 + R1;
ffa033dc:	0a e1 0c 0d 	P2.L = 0xd0c;		/* (3340)	P2=0xff900d0c <_TcpClientPort> */
ffa033e0:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa033e4:	11 97       	W[P2] = R1;
ffa033e6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d0c <_TcpClientPort> */
ffa033ea:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa033ee:	28 93 00 00 
ffa033f2:	0a e1 18 0d 	P2.L = 0xd18;		/* (3352)	P2=0xff900d18 <_g_httpRxed> */
ffa033f6:	11 93       	[P2] = R1;
ffa033f8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d18 <_g_httpRxed> */
ffa033fc:	e2 a1       	R2 = [P4 + 0x1c];
ffa033fe:	0a e1 e0 0b 	P2.L = 0xbe0;		/* (3040)	P2=0xff900be0 <_NetDestIP> */
ffa03402:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa03404:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900cf8 <_TcpSeqClient> */
ffa03408:	12 93       	[P2] = R2;
ffa0340a:	0d e1 f4 0c 	P5.L = 0xcf4;		/* (3316)	P5=0xff900cf4 <_TcpSeqHost> */
ffa0340e:	f1 b0       	[SP + 0xc] = R1;
ffa03410:	29 91       	R1 = [P5];
ffa03412:	31 b1       	[SP + 0x10] = R1;
ffa03414:	4f 30       	R1 = FP;
ffa03416:	70 b1       	[SP + 0x14] = R0;
ffa03418:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0341a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0341c:	ff e3 ac fd 	CALL 0xffa02f74 <_tcp_packet_setup>;
ffa03420:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03424:	00 0d       	CC = R0 <= 0x0;
ffa03426:	5c 18       	IF CC JUMP 0xffa034de <_tcp_rx+0x3ee>;
ffa03428:	28 91       	R0 = [P5];
ffa0342a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0342c:	28 93       	[P5] = R0;
ffa0342e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03430:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be0 <_NetDestIP> */
ffa03434:	0a e1 00 0d 	P2.L = 0xd00;		/* (3328)	P2=0xff900d00 <_TcpState> */
ffa03438:	10 93       	[P2] = R0;
ffa0343a:	33 2f       	JUMP.S 0xffa032a0 <_tcp_rx+0x1b0>;
ffa0343c:	18 91       	R0 = [P3];
ffa0343e:	18 0c       	CC = R0 == 0x3;
ffa03440:	b0 16       	IF !CC JUMP 0xffa031a0 <_tcp_rx+0xb0> (BP);
ffa03442:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d00 <_TcpState> */
ffa03446:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03448:	0a e1 18 0d 	P2.L = 0xd18;		/* (3352)	P2=0xff900d18 <_g_httpRxed> */
ffa0344c:	10 93       	[P2] = R0;
ffa0344e:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03450:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d18 <_g_httpRxed> */
ffa03454:	f0 b0       	[SP + 0xc] = R0;
ffa03456:	0a e1 f4 0c 	P2.L = 0xcf4;		/* (3316)	P2=0xff900cf4 <_TcpSeqHost> */
ffa0345a:	10 91       	R0 = [P2];
ffa0345c:	15 32       	P2 = R5;
ffa0345e:	30 b1       	[SP + 0x10] = R0;
ffa03460:	28 91       	R0 = [P5];
ffa03462:	70 b1       	[SP + 0x14] = R0;
ffa03464:	4f 30       	R1 = FP;
ffa03466:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa0346a:	12 91 00 00 
ffa0346e:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03470:	ff e3 82 fd 	CALL 0xffa02f74 <_tcp_packet_setup>;
ffa03474:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03478:	00 0d       	CC = R0 <= 0x0;
ffa0347a:	93 1a       	IF CC JUMP 0xffa031a0 <_tcp_rx+0xb0>;
ffa0347c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0347e:	d9 2f       	JUMP.S 0xffa03430 <_tcp_rx+0x340>;
ffa03480:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa03484:	38 54       	R0 = R0 & R7;
ffa03486:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa03488:	4c 30       	R1 = P4;
ffa0348a:	10 4d       	R0 >>>= 0x2;
ffa0348c:	01 50       	R0 = R1 + R0;
ffa0348e:	0e 30       	R1 = R6;
ffa03490:	00 e3 d4 04 	CALL 0xffa03e38 <_httpCollate>;
ffa03494:	00 0c       	CC = R0 == 0x0;
ffa03496:	2f 1c       	IF CC JUMP 0xffa034f4 <_tcp_rx+0x404> (BP);
ffa03498:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf4 <_TcpSeqHost> */
ffa0349c:	0a e1 f4 0c 	P2.L = 0xcf4;		/* (3316)	P2=0xff900cf4 <_TcpSeqHost> */
ffa034a0:	10 91       	R0 = [P2];
ffa034a2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf4 <_TcpSeqHost> */
ffa034a6:	0a e1 10 0d 	P2.L = 0xd10;		/* (3344)	P2=0xff900d10 <_g_httpHeaderLen> */
ffa034aa:	11 91       	R1 = [P2];
ffa034ac:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d10 <_g_httpHeaderLen> */
ffa034b0:	0a e1 14 0d 	P2.L = 0xd14;		/* (3348)	P2=0xff900d14 <_g_httpContentLen> */
ffa034b4:	18 93       	[P3] = R0;
ffa034b6:	10 91       	R0 = [P2];
ffa034b8:	41 50       	R1 = R1 + R0;
ffa034ba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f0(-7339792) */
ffa034be:	00 e1 74 05 	R0.L = 0x574;		/* (1396)	R0=0xff900574(-7338636) */
ffa034c2:	ff e3 a1 e9 	CALL 0xffa00804 <_printf_int>;
ffa034c6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900574(-7338636) */
ffa034ca:	00 e1 34 0a 	R0.L = 0xa34;		/* (2612)	R0=0xff900a34(-7337420) */
ffa034ce:	ff e3 d9 e8 	CALL 0xffa00680 <_printf_str>;
ffa034d2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034d4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa034d6:	ff e3 7b fd 	CALL 0xffa02fcc <_tcp_burst>;
ffa034da:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034dc:	17 2e       	JUMP.S 0xffa0310a <_tcp_rx+0x1a>;
ffa034de:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa034e2:	54 2e       	JUMP.S 0xffa0318a <_tcp_rx+0x9a>;
ffa034e4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa034e8:	00 e1 44 05 	R0.L = 0x544;		/* (1348)	R0=0xff900544(-7338684) */
ffa034ec:	ff e3 ca e8 	CALL 0xffa00680 <_printf_str>;
ffa034f0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034f2:	0c 2e       	JUMP.S 0xffa0310a <_tcp_rx+0x1a>;
ffa034f4:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa034f6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d14 <_g_httpContentLen> */
ffa034fa:	f0 b0       	[SP + 0xc] = R0;
ffa034fc:	0a e1 f4 0c 	P2.L = 0xcf4;		/* (3316)	P2=0xff900cf4 <_TcpSeqHost> */
ffa03500:	10 91       	R0 = [P2];
ffa03502:	15 32       	P2 = R5;
ffa03504:	30 b1       	[SP + 0x10] = R0;
ffa03506:	28 91       	R0 = [P5];
ffa03508:	70 b1       	[SP + 0x14] = R0;
ffa0350a:	4f 30       	R1 = FP;
ffa0350c:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03510:	12 91 00 00 
ffa03514:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03516:	ff e3 2f fd 	CALL 0xffa02f74 <_tcp_packet_setup>;
ffa0351a:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0351e:	00 0d       	CC = R0 <= 0x0;
ffa03520:	c0 16       	IF !CC JUMP 0xffa032a0 <_tcp_rx+0x1b0> (BP);
ffa03522:	f3 2d       	JUMP.S 0xffa03108 <_tcp_rx+0x18>;
ffa03524:	0a 30       	R1 = R2;
ffa03526:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03528:	ff e3 52 fd 	CALL 0xffa02fcc <_tcp_burst>;
ffa0352c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0352e:	ee 2d       	JUMP.S 0xffa0310a <_tcp_rx+0x1a>;
ffa03530:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03532:	18 93       	[P3] = R0;
ffa03534:	a0 a2       	R0 = [P4 + 0x28];
ffa03536:	ff e3 1d f0 	CALL 0xffa01570 <_htonl>;
ffa0353a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf4 <_TcpSeqHost> */
ffa0353e:	0a e1 f8 0c 	P2.L = 0xcf8;		/* (3320)	P2=0xff900cf8 <_TcpSeqClient> */
ffa03542:	10 93       	[P2] = R0;
ffa03544:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa03548:	00 e1 24 05 	R0.L = 0x524;		/* (1316)	R0=0xff900524(-7338716) */
ffa0354c:	ff e3 9a e8 	CALL 0xffa00680 <_printf_str>;
ffa03550:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03552:	dc 2d       	JUMP.S 0xffa0310a <_tcp_rx+0x1a>;

ffa03554 <_htmlForm>:
ffa03554:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03558:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa0355c:	02 e1 90 05 	R2.L = 0x590;		/* (1424)	R2=0xff900590(-7338608) */
ffa03560:	01 e8 00 00 	UNLINK;
ffa03564:	ff e2 66 ea 	JUMP.L 0xffa00a30 <_strcpy_>;

ffa03568 <_htmlDiv>:
ffa03568:	12 43       	R2 = R2.B (X);
ffa0356a:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa0356e:	1a 08       	CC = R2 == R3;
ffa03570:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03574:	09 18       	IF CC JUMP 0xffa03586 <_htmlDiv+0x1e>;
ffa03576:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900590(-7338608) */
ffa0357a:	02 e1 e4 05 	R2.L = 0x5e4;		/* (1508)	R2=0xff9005e4(-7338524) */
ffa0357e:	01 e8 00 00 	UNLINK;
ffa03582:	ff e2 57 ea 	JUMP.L 0xffa00a30 <_strcpy_>;
ffa03586:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005e4(-7338524) */
ffa0358a:	02 e1 b0 05 	R2.L = 0x5b0;		/* (1456)	R2=0xff9005b0(-7338576) */
ffa0358e:	01 e8 00 00 	UNLINK;
ffa03592:	ff e2 4f ea 	JUMP.L 0xffa00a30 <_strcpy_>;
	...

ffa03598 <_html404>:
ffa03598:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0359c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0359e:	4f 30       	R1 = FP;
ffa035a0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005b0(-7338576) */
ffa035a4:	f0 bb       	[FP -0x4] = R0;
ffa035a6:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa035a8:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa035ac:	02 e1 18 06 	R2.L = 0x618;		/* (1560)	R2=0xff900618(-7338472) */
ffa035b0:	ff e3 40 ea 	CALL 0xffa00a30 <_strcpy_>;
ffa035b4:	f0 b9       	R0 = [FP -0x4];
ffa035b6:	01 e8 00 00 	UNLINK;
ffa035ba:	10 00       	RTS;

ffa035bc <_htmlCursorOption>:
ffa035bc:	68 05       	[--SP] = (R7:5);
ffa035be:	2a 30       	R5 = R2;
ffa035c0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900618(-7338472) */
ffa035c4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa035c8:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa035cc:	3f a2 00 00 
ffa035d0:	02 e1 34 06 	R2.L = 0x634;		/* (1588)	R2=0xff900634(-7338444) */
ffa035d4:	ff e3 2e ea 	CALL 0xffa00a30 <_strcpy_>;
ffa035d8:	0e 30       	R1 = R6;
ffa035da:	15 30       	R2 = R5;
ffa035dc:	ff e3 90 eb 	CALL 0xffa00cfc <_strprintf_int>;
ffa035e0:	3d 08       	CC = R5 == R7;
ffa035e2:	16 18       	IF CC JUMP 0xffa0360e <_htmlCursorOption+0x52>;
ffa035e4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900634(-7338444) */
ffa035e8:	0e 30       	R1 = R6;
ffa035ea:	02 e1 5c 06 	R2.L = 0x65c;		/* (1628)	R2=0xff90065c(-7338404) */
ffa035ee:	ff e3 21 ea 	CALL 0xffa00a30 <_strcpy_>;
ffa035f2:	0e 30       	R1 = R6;
ffa035f4:	15 30       	R2 = R5;
ffa035f6:	ff e3 83 eb 	CALL 0xffa00cfc <_strprintf_int>;
ffa035fa:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90065c(-7338404) */
ffa035fe:	01 e8 00 00 	UNLINK;
ffa03602:	0e 30       	R1 = R6;
ffa03604:	02 e1 60 06 	R2.L = 0x660;		/* (1632)	R2=0xff900660(-7338400) */
ffa03608:	28 05       	(R7:5) = [SP++];
ffa0360a:	ff e2 13 ea 	JUMP.L 0xffa00a30 <_strcpy_>;
ffa0360e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900660(-7338400) */
ffa03612:	0e 30       	R1 = R6;
ffa03614:	02 e1 44 06 	R2.L = 0x644;		/* (1604)	R2=0xff900644(-7338428) */
ffa03618:	ff e3 0c ea 	CALL 0xffa00a30 <_strcpy_>;
ffa0361c:	e4 2f       	JUMP.S 0xffa035e4 <_htmlCursorOption+0x28>;
	...

ffa03620 <_htmlCursorSelect>:
ffa03620:	60 05       	[--SP] = (R7:4);
ffa03622:	3a 30       	R7 = R2;
ffa03624:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900644(-7338428) */
ffa03628:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0362c:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa03630:	7e a2 00 00 
ffa03634:	02 e1 6c 06 	R2.L = 0x66c;		/* (1644)	R2=0xff90066c(-7338388) */
ffa03638:	bc a2       	R4 = [FP + 0x28];
ffa0363a:	ff e3 fb e9 	CALL 0xffa00a30 <_strcpy_>;
ffa0363e:	17 30       	R2 = R7;
ffa03640:	0d 30       	R1 = R5;
ffa03642:	ff e3 f7 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa03646:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90066c(-7338388) */
ffa0364a:	0d 30       	R1 = R5;
ffa0364c:	02 e1 78 06 	R2.L = 0x678;		/* (1656)	R2=0xff900678(-7338376) */
ffa03650:	ff e3 f0 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa03654:	0d 30       	R1 = R5;
ffa03656:	16 30       	R2 = R6;
ffa03658:	ff e3 ec e9 	CALL 0xffa00a30 <_strcpy_>;
ffa0365c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900678(-7338376) */
ffa03660:	0d 30       	R1 = R5;
ffa03662:	02 e1 94 06 	R2.L = 0x694;		/* (1684)	R2=0xff900694(-7338348) */
ffa03666:	ff e3 e5 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa0366a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0366c:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa03670:	f4 b0 00 00 
ffa03674:	17 30       	R2 = R7;
ffa03676:	ff e3 a3 ff 	CALL 0xffa035bc <_htmlCursorOption>;
ffa0367a:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0367c:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa0367e:	0f 08       	CC = R7 == R1;
ffa03680:	f6 17       	IF !CC JUMP 0xffa0366c <_htmlCursorSelect+0x4c> (BP);
ffa03682:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900694(-7338348) */
ffa03686:	01 e8 00 00 	UNLINK;
ffa0368a:	0d 30       	R1 = R5;
ffa0368c:	02 e1 98 06 	R2.L = 0x698;		/* (1688)	R2=0xff900698(-7338344) */
ffa03690:	20 05       	(R7:4) = [SP++];
ffa03692:	ff e2 cf e9 	JUMP.L 0xffa00a30 <_strcpy_>;
	...

ffa03698 <_htmlDefault>:
ffa03698:	ed 05       	[--SP] = (R7:5, P5:5);
ffa0369a:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0369e:	77 30       	R6 = FP;
ffa036a0:	e6 67       	R6 += -0x4;		/* ( -4) */
ffa036a2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa036a4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900698(-7338344) */
ffa036a8:	f0 bb       	[FP -0x4] = R0;
ffa036aa:	0e 30       	R1 = R6;
ffa036ac:	02 e1 b0 06 	R2.L = 0x6b0;		/* (1712)	R2=0xff9006b0(-7338320) */
ffa036b0:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa036b4:	ff e3 be e9 	CALL 0xffa00a30 <_strcpy_>;
ffa036b8:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa036bc:	0e 30       	R1 = R6;
ffa036be:	ff e3 55 ff 	CALL 0xffa03568 <_htmlDiv>;
ffa036c2:	0e 30       	R1 = R6;
ffa036c4:	ff e3 48 ff 	CALL 0xffa03554 <_htmlForm>;
ffa036c8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa036cc:	0e 30       	R1 = R6;
ffa036ce:	02 e1 00 07 	R2.L = 0x700;		/* (1792)	R2=0xff900700(-7338240) */
ffa036d2:	ff e3 af e9 	CALL 0xffa00a30 <_strcpy_>;
ffa036d6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cf8 <_TcpSeqClient> */
ffa036da:	0a e1 74 0b 	P2.L = 0xb74;		/* (2932)	P2=0xff900b74 <_g_streamEnabled> */
ffa036de:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa036e2:	10 99 00 00 
ffa036e6:	00 0c       	CC = R0 == 0x0;
ffa036e8:	2c 1d       	IF CC JUMP 0xffa03940 <_htmlDefault+0x2a8> (BP);
ffa036ea:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900700(-7338240) */
ffa036ee:	01 30       	R0 = R1;
ffa036f0:	02 e1 50 07 	R2.L = 0x750;		/* (1872)	R2=0xff900750(-7338160) */
ffa036f4:	0e 30       	R1 = R6;
ffa036f6:	ff e3 9d e9 	CALL 0xffa00a30 <_strcpy_>;
ffa036fa:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900750(-7338160) */
ffa036fe:	0e 30       	R1 = R6;
ffa03700:	02 e1 68 07 	R2.L = 0x768;		/* (1896)	R2=0xff900768(-7338136) */
ffa03704:	ff e3 96 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa03708:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa0370c:	0e 30       	R1 = R6;
ffa0370e:	ff e3 2d ff 	CALL 0xffa03568 <_htmlDiv>;
ffa03712:	0e 30       	R1 = R6;
ffa03714:	ff e3 20 ff 	CALL 0xffa03554 <_htmlForm>;
ffa03718:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa0371c:	0e 30       	R1 = R6;
ffa0371e:	02 e1 7c 07 	R2.L = 0x77c;		/* (1916)	R2=0xff90077c(-7338116) */
ffa03722:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900cf4 <_TcpSeqHost> */
ffa03726:	ff e3 85 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa0372a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa0372c:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa0372e:	0d e1 20 0c 	P5.L = 0xc20;		/* (3104)	P5=0xff900c20 <_NetDataDestIP> */
ffa03732:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90077c(-7338116) */
ffa03736:	0e 30       	R1 = R6;
ffa03738:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa0373c:	ff e3 7a e9 	CALL 0xffa00a30 <_strcpy_>;
ffa03740:	17 30       	R2 = R7;
ffa03742:	0e 30       	R1 = R6;
ffa03744:	ff e3 dc ea 	CALL 0xffa00cfc <_strprintf_int>;
ffa03748:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900798(-7338088) */
ffa0374c:	0e 30       	R1 = R6;
ffa0374e:	02 e1 b4 07 	R2.L = 0x7b4;		/* (1972)	R2=0xff9007b4(-7338060) */
ffa03752:	ff e3 6f e9 	CALL 0xffa00a30 <_strcpy_>;
ffa03756:	2a 91       	R2 = [P5];
ffa03758:	6a 40       	R2 >>= R5;
ffa0375a:	52 43       	R2 = R2.B (Z);
ffa0375c:	0e 30       	R1 = R6;
ffa0375e:	ff e3 cf ea 	CALL 0xffa00cfc <_strprintf_int>;
ffa03762:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007b4(-7338060) */
ffa03766:	0e 30       	R1 = R6;
ffa03768:	02 e1 c8 07 	R2.L = 0x7c8;		/* (1992)	R2=0xff9007c8(-7338040) */
ffa0376c:	ff e3 62 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa03770:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03772:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03774:	0f 08       	CC = R7 == R1;
ffa03776:	45 64       	R5 += 0x8;		/* (  8) */
ffa03778:	dd 17       	IF !CC JUMP 0xffa03732 <_htmlDefault+0x9a> (BP);
ffa0377a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007c8(-7338040) */
ffa0377e:	0e 30       	R1 = R6;
ffa03780:	02 e1 d0 07 	R2.L = 0x7d0;		/* (2000)	R2=0xff9007d0(-7338032) */
ffa03784:	ff e3 56 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa03788:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007d0(-7338032) */
ffa0378c:	0e 30       	R1 = R6;
ffa0378e:	02 e1 68 07 	R2.L = 0x768;		/* (1896)	R2=0xff900768(-7338136) */
ffa03792:	ff e3 4f e9 	CALL 0xffa00a30 <_strcpy_>;
ffa03796:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa0379a:	0e 30       	R1 = R6;
ffa0379c:	ff e3 e6 fe 	CALL 0xffa03568 <_htmlDiv>;
ffa037a0:	0e 30       	R1 = R6;
ffa037a2:	ff e3 d9 fe 	CALL 0xffa03554 <_htmlForm>;
ffa037a6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa037aa:	0e 30       	R1 = R6;
ffa037ac:	02 e1 f4 07 	R2.L = 0x7f4;		/* (2036)	R2=0xff9007f4(-7337996) */
ffa037b0:	ff e3 40 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa037b4:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800b74 */
ffa037b8:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa037bc:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa037c0:	10 99 00 00 
ffa037c4:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa037c6:	c6 1c       	IF CC JUMP 0xffa03952 <_htmlDefault+0x2ba> (BP);
ffa037c8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007f4(-7337996) */
ffa037cc:	01 30       	R0 = R1;
ffa037ce:	02 e1 5c 07 	R2.L = 0x75c;		/* (1884)	R2=0xff90075c(-7338148) */
ffa037d2:	0e 30       	R1 = R6;
ffa037d4:	ff e3 2e e9 	CALL 0xffa00a30 <_strcpy_>;
ffa037d8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90075c(-7338148) */
ffa037dc:	0e 30       	R1 = R6;
ffa037de:	02 e1 68 07 	R2.L = 0x768;		/* (1896)	R2=0xff900768(-7338136) */
ffa037e2:	ff e3 27 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa037e6:	0e 30       	R1 = R6;
ffa037e8:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa037ec:	ff e3 be fe 	CALL 0xffa03568 <_htmlDiv>;
ffa037f0:	0e 30       	R1 = R6;
ffa037f2:	ff e3 b1 fe 	CALL 0xffa03554 <_htmlForm>;
ffa037f6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa037fa:	0e 30       	R1 = R6;
ffa037fc:	02 e1 34 08 	R2.L = 0x834;		/* (2100)	R2=0xff900834(-7337932) */
ffa03800:	ff e3 18 e9 	CALL 0xffa00a30 <_strcpy_>;
ffa03804:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa03808:	01 e1 64 08 	R1.L = 0x864;		/* (2148)	R1=0xff900864(-7337884) */
ffa0380c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900834(-7337932) */
ffa03810:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa03814:	f1 b0 00 00 
ffa03818:	02 e1 58 08 	R2.L = 0x858;		/* (2136)	R2=0xff900858(-7337896) */
ffa0381c:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03820:	37 b1 00 00 
ffa03824:	ff e3 fe fe 	CALL 0xffa03620 <_htmlCursorSelect>;
ffa03828:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900864(-7337884) */
ffa0382c:	01 e1 7c 08 	R1.L = 0x87c;		/* (2172)	R1=0xff90087c(-7337860) */
ffa03830:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900858(-7337896) */
ffa03834:	f1 b0       	[SP + 0xc] = R1;
ffa03836:	02 e1 70 08 	R2.L = 0x870;		/* (2160)	R2=0xff900870(-7337872) */
ffa0383a:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa0383e:	37 b1 00 00 
ffa03842:	ff e3 ef fe 	CALL 0xffa03620 <_htmlCursorSelect>;
ffa03846:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff90087c(-7337860) */
ffa0384a:	01 e1 94 08 	R1.L = 0x894;		/* (2196)	R1=0xff900894(-7337836) */
ffa0384e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900870(-7337872) */
ffa03852:	f1 b0       	[SP + 0xc] = R1;
ffa03854:	02 e1 88 08 	R2.L = 0x888;		/* (2184)	R2=0xff900888(-7337848) */
ffa03858:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa0385c:	37 b1 00 00 
ffa03860:	ff e3 e0 fe 	CALL 0xffa03620 <_htmlCursorSelect>;
ffa03864:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900894(-7337836) */
ffa03868:	01 e1 a8 08 	R1.L = 0x8a8;		/* (2216)	R1=0xff9008a8(-7337816) */
ffa0386c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900888(-7337848) */
ffa03870:	f1 b0       	[SP + 0xc] = R1;
ffa03872:	02 e1 a0 08 	R2.L = 0x8a0;		/* (2208)	R2=0xff9008a0(-7337824) */
ffa03876:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa0387a:	37 b1 00 00 
ffa0387e:	ff e3 d1 fe 	CALL 0xffa03620 <_htmlCursorSelect>;
ffa03882:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a0(-7337824) */
ffa03886:	0e 30       	R1 = R6;
ffa03888:	02 e1 b4 08 	R2.L = 0x8b4;		/* (2228)	R2=0xff9008b4(-7337804) */
ffa0388c:	ff e3 d2 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa03890:	0e 30       	R1 = R6;
ffa03892:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03896:	ff e3 69 fe 	CALL 0xffa03568 <_htmlDiv>;
ffa0389a:	0e 30       	R1 = R6;
ffa0389c:	ff e3 5c fe 	CALL 0xffa03554 <_htmlForm>;
ffa038a0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa038a4:	0e 30       	R1 = R6;
ffa038a6:	02 e1 f0 08 	R2.L = 0x8f0;		/* (2288)	R2=0xff9008f0(-7337744) */
ffa038aa:	ff e3 c3 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa038ae:	0e 30       	R1 = R6;
ffa038b0:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa038b4:	ff e3 5a fe 	CALL 0xffa03568 <_htmlDiv>;
ffa038b8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa038bc:	0e 30       	R1 = R6;
ffa038be:	02 e1 48 09 	R2.L = 0x948;		/* (2376)	R2=0xff900948(-7337656) */
ffa038c2:	ff e3 b7 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa038c6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900948(-7337656) */
ffa038ca:	0e 30       	R1 = R6;
ffa038cc:	02 e1 70 09 	R2.L = 0x970;		/* (2416)	R2=0xff900970(-7337616) */
ffa038d0:	ff e3 b0 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa038d4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900970(-7337616) */
ffa038d8:	0e 30       	R1 = R6;
ffa038da:	02 e1 68 07 	R2.L = 0x768;		/* (1896)	R2=0xff900768(-7338136) */
ffa038de:	ff e3 a9 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa038e2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900768(-7338136) */
ffa038e6:	0e 30       	R1 = R6;
ffa038e8:	02 e1 b8 09 	R2.L = 0x9b8;		/* (2488)	R2=0xff9009b8(-7337544) */
ffa038ec:	ff e3 a2 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa038f0:	0e 30       	R1 = R6;
ffa038f2:	22 e1 75 ff 	R2 = -0x8b (X);		/*		R2=0xffffff75(-139) */
ffa038f6:	ff e3 03 ea 	CALL 0xffa00cfc <_strprintf_int>;
ffa038fa:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ff75(-7274635) */
ffa038fe:	0e 30       	R1 = R6;
ffa03900:	02 e1 34 00 	R2.L = 0x34;		/* ( 52)	R2=0xff900034(-7339980) */
ffa03904:	ff e3 96 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa03908:	0e 30       	R1 = R6;
ffa0390a:	92 62       	R2 = -0x2e (X);		/*		R2=0xffffffd2(-46) */
ffa0390c:	ff e3 f8 e9 	CALL 0xffa00cfc <_strprintf_int>;
ffa03910:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ffd2(-7274542) */
ffa03914:	0e 30       	R1 = R6;
ffa03916:	02 e1 0c 00 	R2.L = 0xc;		/* ( 12)	R2=0xff90000c(-7340020) */
ffa0391a:	ff e3 8b e8 	CALL 0xffa00a30 <_strcpy_>;
ffa0391e:	0e 30       	R1 = R6;
ffa03920:	22 e1 d0 fd 	R2 = -0x230 (X);		/*		R2=0xfffffdd0(-560) */
ffa03924:	ff e3 ec e9 	CALL 0xffa00cfc <_strprintf_int>;
ffa03928:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90fdd0(-7275056) */
ffa0392c:	0e 30       	R1 = R6;
ffa0392e:	02 e1 c4 09 	R2.L = 0x9c4;		/* (2500)	R2=0xff9009c4(-7337532) */
ffa03932:	ff e3 7f e8 	CALL 0xffa00a30 <_strcpy_>;
ffa03936:	f0 b9       	R0 = [FP -0x4];
ffa03938:	01 e8 00 00 	UNLINK;
ffa0393c:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0393e:	10 00       	RTS;
ffa03940:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009c4(-7337532) */
ffa03944:	01 30       	R0 = R1;
ffa03946:	02 e1 5c 07 	R2.L = 0x75c;		/* (1884)	R2=0xff90075c(-7338148) */
ffa0394a:	0e 30       	R1 = R6;
ffa0394c:	ff e3 72 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa03950:	d5 2e       	JUMP.S 0xffa036fa <_htmlDefault+0x62>;
ffa03952:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90075c(-7338148) */
ffa03956:	01 30       	R0 = R1;
ffa03958:	02 e1 50 07 	R2.L = 0x750;		/* (1872)	R2=0xff900750(-7338160) */
ffa0395c:	0e 30       	R1 = R6;
ffa0395e:	ff e3 69 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa03962:	3b 2f       	JUMP.S 0xffa037d8 <_htmlDefault+0x140>;

ffa03964 <_httpHeader>:
ffa03964:	78 05       	[--SP] = (R7:7);
ffa03966:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0396a:	7f 30       	R7 = FP;
ffa0396c:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0396e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03970:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900750(-7338160) */
ffa03974:	f0 bb       	[FP -0x4] = R0;
ffa03976:	0f 30       	R1 = R7;
ffa03978:	02 e1 dc 09 	R2.L = 0x9dc;		/* (2524)	R2=0xff9009dc(-7337508) */
ffa0397c:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03980:	ff e3 58 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa03984:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009dc(-7337508) */
ffa03988:	0f 30       	R1 = R7;
ffa0398a:	02 e1 f0 09 	R2.L = 0x9f0;		/* (2544)	R2=0xff9009f0(-7337488) */
ffa0398e:	ff e3 51 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa03992:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009f0(-7337488) */
ffa03996:	0f 30       	R1 = R7;
ffa03998:	02 e1 04 0a 	R2.L = 0xa04;		/* (2564)	R2=0xff900a04(-7337468) */
ffa0399c:	ff e3 4a e8 	CALL 0xffa00a30 <_strcpy_>;
ffa039a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa039a4:	0a e1 14 0d 	P2.L = 0xd14;		/* (3348)	P2=0xff900d14 <_g_httpContentLen> */
ffa039a8:	12 91       	R2 = [P2];
ffa039aa:	0f 30       	R1 = R7;
ffa039ac:	ff e3 a8 e9 	CALL 0xffa00cfc <_strprintf_int>;
ffa039b0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a04(-7337468) */
ffa039b4:	0f 30       	R1 = R7;
ffa039b6:	02 e1 18 0a 	R2.L = 0xa18;		/* (2584)	R2=0xff900a18(-7337448) */
ffa039ba:	ff e3 3b e8 	CALL 0xffa00a30 <_strcpy_>;
ffa039be:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d14 <_g_httpContentLen> */
ffa039c2:	f0 b9       	R0 = [FP -0x4];
ffa039c4:	0a e1 10 0d 	P2.L = 0xd10;		/* (3344)	P2=0xff900d10 <_g_httpHeaderLen> */
ffa039c8:	10 93       	[P2] = R0;
ffa039ca:	01 e8 00 00 	UNLINK;
ffa039ce:	38 05       	(R7:7) = [SP++];
ffa039d0:	10 00       	RTS;
	...

ffa039d4 <_htmlGeneric>:
ffa039d4:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa039d8:	10 30       	R2 = R0;
ffa039da:	4f 30       	R1 = FP;
ffa039dc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa039de:	f0 bb       	[FP -0x4] = R0;
ffa039e0:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa039e2:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa039e6:	ff e3 25 e8 	CALL 0xffa00a30 <_strcpy_>;
ffa039ea:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d10 <_g_httpHeaderLen> */
ffa039ee:	f0 b9       	R0 = [FP -0x4];
ffa039f0:	0a e1 14 0d 	P2.L = 0xd14;		/* (3348)	P2=0xff900d14 <_g_httpContentLen> */
ffa039f4:	10 93       	[P2] = R0;
ffa039f6:	ff e3 b7 ff 	CALL 0xffa03964 <_httpHeader>;
ffa039fa:	f0 b9       	R0 = [FP -0x4];
ffa039fc:	01 e8 00 00 	UNLINK;
ffa03a00:	10 00       	RTS;
	...

ffa03a04 <_httpResp>:
ffa03a04:	60 05       	[--SP] = (R7:4);
ffa03a06:	28 30       	R5 = R0;
ffa03a08:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa03a0a:	01 09       	CC = R1 <= R0;
ffa03a0c:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa03a10:	31 30       	R6 = R1;
ffa03a12:	21 10       	IF !CC JUMP 0xffa03a54 <_httpResp+0x50>;
ffa03a14:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa03a16:	0e 09       	CC = R6 <= R1;
ffa03a18:	34 10       	IF !CC JUMP 0xffa03a80 <_httpResp+0x7c>;
ffa03a1a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa03a1e:	00 e1 d4 09 	R0.L = 0x9d4;		/* (2516)	R0=0xff9009d4(-7337516) */
ffa03a22:	0d 30       	R1 = R5;
ffa03a24:	16 30       	R2 = R6;
ffa03a26:	ff e3 73 e8 	CALL 0xffa00b0c <_substr>;
ffa03a2a:	00 0c       	CC = R0 == 0x0;
ffa03a2c:	06 10       	IF !CC JUMP 0xffa03a38 <_httpResp+0x34>;
ffa03a2e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a30:	01 e8 00 00 	UNLINK;
ffa03a34:	20 05       	(R7:4) = [SP++];
ffa03a36:	10 00       	RTS;
ffa03a38:	ff e3 b0 fd 	CALL 0xffa03598 <_html404>;
ffa03a3c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d14 <_g_httpContentLen> */
ffa03a40:	0a e1 14 0d 	P2.L = 0xd14;		/* (3348)	P2=0xff900d14 <_g_httpContentLen> */
ffa03a44:	10 93       	[P2] = R0;
ffa03a46:	ff e3 8f ff 	CALL 0xffa03964 <_httpHeader>;
ffa03a4a:	01 e8 00 00 	UNLINK;
ffa03a4e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03a50:	20 05       	(R7:4) = [SP++];
ffa03a52:	10 00       	RTS;
ffa03a54:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa03a58:	05 30       	R0 = R5;
ffa03a5a:	01 e1 38 0a 	R1.L = 0xa38;		/* (2616)	R1=0xff900a38(-7337416) */
ffa03a5e:	ff e3 29 e8 	CALL 0xffa00ab0 <_strcmp>;
ffa03a62:	00 0c       	CC = R0 == 0x0;
ffa03a64:	d8 1f       	IF CC JUMP 0xffa03a14 <_httpResp+0x10> (BP);
ffa03a66:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03a6a:	00 e1 d4 09 	R0.L = 0x9d4;		/* (2516)	R0=0xff9009d4(-7337516) */
ffa03a6e:	0d 30       	R1 = R5;
ffa03a70:	16 30       	R2 = R6;
ffa03a72:	ff e3 4d e8 	CALL 0xffa00b0c <_substr>;
ffa03a76:	00 0c       	CC = R0 == 0x0;
ffa03a78:	db 1f       	IF CC JUMP 0xffa03a2e <_httpResp+0x2a> (BP);
ffa03a7a:	ff e3 0f fe 	CALL 0xffa03698 <_htmlDefault>;
ffa03a7e:	df 2f       	JUMP.S 0xffa03a3c <_httpResp+0x38>;
ffa03a80:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9009d4(-7337516) */
ffa03a84:	00 e1 44 0a 	R0.L = 0xa44;		/* (2628)	R0=0xff900a44(-7337404) */
ffa03a88:	0d 30       	R1 = R5;
ffa03a8a:	16 30       	R2 = R6;
ffa03a8c:	ff e3 40 e8 	CALL 0xffa00b0c <_substr>;
ffa03a90:	00 0c       	CC = R0 == 0x0;
ffa03a92:	3c 1c       	IF CC JUMP 0xffa03b0a <_httpResp+0x106> (BP);
ffa03a94:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a44(-7337404) */
ffa03a98:	00 e1 50 0a 	R0.L = 0xa50;		/* (2640)	R0=0xff900a50(-7337392) */
ffa03a9c:	0d 30       	R1 = R5;
ffa03a9e:	16 30       	R2 = R6;
ffa03aa0:	ff e3 36 e8 	CALL 0xffa00b0c <_substr>;
ffa03aa4:	00 0c       	CC = R0 == 0x0;
ffa03aa6:	c4 1f       	IF CC JUMP 0xffa03a2e <_httpResp+0x2a> (BP);
ffa03aa8:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa03aaa:	05 50       	R0 = R5 + R0;
ffa03aac:	ff e3 50 e9 	CALL 0xffa00d4c <_atoi>;
ffa03ab0:	08 30       	R1 = R0;
ffa03ab2:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa03ab6:	00 67       	R0 += -0x20;		/* (-32) */
ffa03ab8:	10 0a       	CC = R0 <= R2 (IU);
ffa03aba:	1a 11       	IF !CC JUMP 0xffa03cee <_httpResp+0x2ea>;
ffa03abc:	82 c6 19 84 	R2 = R1 << 0x3;
ffa03ac0:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800d14 */
ffa03ac4:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03ac8:	02 0d       	CC = R2 <= 0x0;
ffa03aca:	13 91       	R3 = [P2];
ffa03acc:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa03ad0:	14 18       	IF CC JUMP 0xffa03af8 <_httpResp+0xf4>;
ffa03ad2:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa03ad6:	28 4f       	R0 <<= 0x5;
ffa03ad8:	03 54       	R0 = R3 & R0;
ffa03ada:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa03adc:	38 52       	R0 = R0 - R7;
ffa03ade:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa03ae2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03ae4:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa03ae8:	18 54       	R0 = R0 & R3;
ffa03aea:	10 32       	P2 = R0;
ffa03aec:	09 64       	R1 += 0x1;		/* (  1) */
ffa03aee:	0a 08       	CC = R2 == R1;
ffa03af0:	10 90       	R0 = [P2++];
ffa03af2:	08 92       	[P1++] = R0;
ffa03af4:	42 30       	R0 = P2;
ffa03af6:	f9 17       	IF !CC JUMP 0xffa03ae8 <_httpResp+0xe4> (BP);
ffa03af8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900804 */
ffa03afc:	0a e1 14 0d 	P2.L = 0xd14;		/* (3348)	P2=0xff900d14 <_g_httpContentLen> */
ffa03b00:	17 93       	[P2] = R7;
ffa03b02:	ff e3 31 ff 	CALL 0xffa03964 <_httpHeader>;
ffa03b06:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03b08:	94 2f       	JUMP.S 0xffa03a30 <_httpResp+0x2c>;
ffa03b0a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03b0e:	00 e1 6c 0b 	R0.L = 0xb6c;		/* (2924)	R0=0xff900b6c(-7337108) */
ffa03b12:	0d 30       	R1 = R5;
ffa03b14:	16 30       	R2 = R6;
ffa03b16:	ff e3 fb e7 	CALL 0xffa00b0c <_substr>;
ffa03b1a:	00 0c       	CC = R0 == 0x0;
ffa03b1c:	7f 1f       	IF CC JUMP 0xffa03a1a <_httpResp+0x16> (BP);
ffa03b1e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b6c(-7337108) */
ffa03b22:	00 e1 84 0a 	R0.L = 0xa84;		/* (2692)	R0=0xff900a84(-7337340) */
ffa03b26:	0d 30       	R1 = R5;
ffa03b28:	16 30       	R2 = R6;
ffa03b2a:	ff e3 f1 e7 	CALL 0xffa00b0c <_substr>;
ffa03b2e:	00 0c       	CC = R0 == 0x0;
ffa03b30:	10 11       	IF !CC JUMP 0xffa03d50 <_httpResp+0x34c>;
ffa03b32:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03b34:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a84(-7337340) */
ffa03b38:	00 e1 a8 0a 	R0.L = 0xaa8;		/* (2728)	R0=0xff900aa8(-7337304) */
ffa03b3c:	0d 30       	R1 = R5;
ffa03b3e:	16 30       	R2 = R6;
ffa03b40:	ff e3 e6 e7 	CALL 0xffa00b0c <_substr>;
ffa03b44:	00 0c       	CC = R0 == 0x0;
ffa03b46:	e2 10       	IF !CC JUMP 0xffa03d0a <_httpResp+0x306>;
ffa03b48:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900aa8(-7337304) */
ffa03b4c:	0d 30       	R1 = R5;
ffa03b4e:	00 e1 b4 0a 	R0.L = 0xab4;		/* (2740)	R0=0xff900ab4(-7337292) */
ffa03b52:	16 30       	R2 = R6;
ffa03b54:	ff e3 dc e7 	CALL 0xffa00b0c <_substr>;
ffa03b58:	00 0c       	CC = R0 == 0x0;
ffa03b5a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ab4(-7337292) */
ffa03b5e:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03b60:	0d 30       	R1 = R5;
ffa03b62:	16 30       	R2 = R6;
ffa03b64:	00 e1 c0 0a 	R0.L = 0xac0;		/* (2752)	R0=0xff900ac0(-7337280) */
ffa03b68:	27 06       	IF !CC R4 = R7;
ffa03b6a:	ff e3 d1 e7 	CALL 0xffa00b0c <_substr>;
ffa03b6e:	00 0c       	CC = R0 == 0x0;
ffa03b70:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ac0(-7337280) */
ffa03b74:	0d 30       	R1 = R5;
ffa03b76:	16 30       	R2 = R6;
ffa03b78:	00 e1 cc 0a 	R0.L = 0xacc;		/* (2764)	R0=0xff900acc(-7337268) */
ffa03b7c:	27 06       	IF !CC R4 = R7;
ffa03b7e:	ff e3 c7 e7 	CALL 0xffa00b0c <_substr>;
ffa03b82:	00 0c       	CC = R0 == 0x0;
ffa03b84:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900acc(-7337268) */
ffa03b88:	0d 30       	R1 = R5;
ffa03b8a:	16 30       	R2 = R6;
ffa03b8c:	00 e1 d8 0a 	R0.L = 0xad8;		/* (2776)	R0=0xff900ad8(-7337256) */
ffa03b90:	27 06       	IF !CC R4 = R7;
ffa03b92:	ff e3 bd e7 	CALL 0xffa00b0c <_substr>;
ffa03b96:	00 0c       	CC = R0 == 0x0;
ffa03b98:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ad8(-7337256) */
ffa03b9c:	00 e1 e4 0a 	R0.L = 0xae4;		/* (2788)	R0=0xff900ae4(-7337244) */
ffa03ba0:	0d 30       	R1 = R5;
ffa03ba2:	16 30       	R2 = R6;
ffa03ba4:	27 06       	IF !CC R4 = R7;
ffa03ba6:	ff e3 b3 e7 	CALL 0xffa00b0c <_substr>;
ffa03baa:	00 0c       	CC = R0 == 0x0;
ffa03bac:	13 11       	IF !CC JUMP 0xffa03dd2 <_httpResp+0x3ce>;
ffa03bae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ae4(-7337244) */
ffa03bb2:	00 e1 ec 0a 	R0.L = 0xaec;		/* (2796)	R0=0xff900aec(-7337236) */
ffa03bb6:	0d 30       	R1 = R5;
ffa03bb8:	16 30       	R2 = R6;
ffa03bba:	ff e3 a9 e7 	CALL 0xffa00b0c <_substr>;
ffa03bbe:	00 0c       	CC = R0 == 0x0;
ffa03bc0:	f6 10       	IF !CC JUMP 0xffa03dac <_httpResp+0x3a8>;
ffa03bc2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900aec(-7337236) */
ffa03bc6:	00 e1 f4 0a 	R0.L = 0xaf4;		/* (2804)	R0=0xff900af4(-7337228) */
ffa03bca:	0d 30       	R1 = R5;
ffa03bcc:	16 30       	R2 = R6;
ffa03bce:	ff e3 9f e7 	CALL 0xffa00b0c <_substr>;
ffa03bd2:	00 0c       	CC = R0 == 0x0;
ffa03bd4:	0f 11       	IF !CC JUMP 0xffa03df2 <_httpResp+0x3ee>;
ffa03bd6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900af4(-7337228) */
ffa03bda:	00 e1 fc 0a 	R0.L = 0xafc;		/* (2812)	R0=0xff900afc(-7337220) */
ffa03bde:	0d 30       	R1 = R5;
ffa03be0:	16 30       	R2 = R6;
ffa03be2:	ff e3 95 e7 	CALL 0xffa00b0c <_substr>;
ffa03be6:	00 0c       	CC = R0 == 0x0;
ffa03be8:	d1 10       	IF !CC JUMP 0xffa03d8a <_httpResp+0x386>;
ffa03bea:	20 43       	R0 = R4.B (X);
ffa03bec:	00 0c       	CC = R0 == 0x0;
ffa03bee:	46 17       	IF !CC JUMP 0xffa03a7a <_httpResp+0x76> (BP);
ffa03bf0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900afc(-7337220) */
ffa03bf4:	00 e1 04 0b 	R0.L = 0xb04;		/* (2820)	R0=0xff900b04(-7337212) */
ffa03bf8:	0d 30       	R1 = R5;
ffa03bfa:	16 30       	R2 = R6;
ffa03bfc:	ff e3 88 e7 	CALL 0xffa00b0c <_substr>;
ffa03c00:	00 0c       	CC = R0 == 0x0;
ffa03c02:	16 1b       	IF CC JUMP 0xffa03a2e <_httpResp+0x2a>;
ffa03c04:	7f 30       	R7 = FP;
ffa03c06:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03c0a:	57 5a       	P1 = FP + P2;
ffa03c0c:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03c0e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c10:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa03c12:	b2 e0 02 20 	LSETUP(0xffa03c16 <_httpResp+0x212>, 0xffa03c16 <_httpResp+0x212>) LC1 = P2;
ffa03c16:	08 92       	[P1++] = R0;
ffa03c18:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa03c1c:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03c20:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa03c24:	29 4f       	R1 <<= 0x5;
ffa03c26:	10 91       	R0 = [P2];
ffa03c28:	08 54       	R0 = R0 & R1;
ffa03c2a:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03c2c:	81 4f       	R1 <<= 0x10;
ffa03c2e:	08 50       	R0 = R0 + R1;
ffa03c30:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03c32:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa03c36:	88 54       	R2 = R0 & R1;
ffa03c38:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa03c3c:	b2 e0 12 10 	LSETUP(0xffa03c40 <_httpResp+0x23c>, 0xffa03c60 <_httpResp+0x25c>) LC1 = P1;
ffa03c40:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03c44:	97 5a       	P2 = FP + P2;
ffa03c46:	02 32       	P0 = R2;
ffa03c48:	11 91       	R1 = [P2];
ffa03c4a:	12 64       	R2 += 0x2;		/* (  2) */
ffa03c4c:	00 94       	R0 = W[P0++] (Z);
ffa03c4e:	41 50       	R1 = R1 + R0;
ffa03c50:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03c52:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa03c56:	11 92       	[P2++] = R1;
ffa03c58:	82 54       	R2 = R2 & R0;
ffa03c5a:	42 30       	R0 = P2;
ffa03c5c:	38 08       	CC = R0 == R7;
ffa03c5e:	f4 17       	IF !CC JUMP 0xffa03c46 <_httpResp+0x242> (BP);
ffa03c60:	00 00       	NOP;
ffa03c62:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03c66:	97 5a       	P2 = FP + P2;
ffa03c68:	00 00       	NOP;
ffa03c6a:	10 91       	R0 = [P2];
ffa03c6c:	58 4d       	R0 >>>= 0xb;
ffa03c6e:	10 92       	[P2++] = R0;
ffa03c70:	4a 30       	R1 = P2;
ffa03c72:	39 08       	CC = R1 == R7;
ffa03c74:	fa 17       	IF !CC JUMP 0xffa03c68 <_httpResp+0x264> (BP);
ffa03c76:	ff e3 11 fd 	CALL 0xffa03698 <_htmlDefault>;
ffa03c7a:	68 67       	R0 += -0x13;		/* (-19) */
ffa03c7c:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa03c80:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80(-7336064) */
ffa03c84:	f0 bb       	[FP -0x4] = R0;
ffa03c86:	02 e1 14 0b 	R2.L = 0xb14;		/* (2836)	R2=0xff900b14(-7337196) */
ffa03c8a:	08 50       	R0 = R0 + R1;
ffa03c8c:	0f 30       	R1 = R7;
ffa03c8e:	ff e3 d1 e6 	CALL 0xffa00a30 <_strcpy_>;
ffa03c92:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa03c96:	f5 b8 00 00 
ffa03c9a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b14(-7337196) */
ffa03c9e:	0f 30       	R1 = R7;
ffa03ca0:	02 e1 20 0b 	R2.L = 0xb20;		/* (2848)	R2=0xff900b20(-7337184) */
ffa03ca4:	ff e3 c6 e6 	CALL 0xffa00a30 <_strcpy_>;
ffa03ca8:	16 30       	R2 = R6;
ffa03caa:	0f 30       	R1 = R7;
ffa03cac:	ff e3 28 e8 	CALL 0xffa00cfc <_strprintf_int>;
ffa03cb0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b20(-7337184) */
ffa03cb4:	0f 30       	R1 = R7;
ffa03cb6:	02 e1 34 0b 	R2.L = 0xb34;		/* (2868)	R2=0xff900b34(-7337164) */
ffa03cba:	ff e3 bb e6 	CALL 0xffa00a30 <_strcpy_>;
ffa03cbe:	0f 30       	R1 = R7;
ffa03cc0:	15 30       	R2 = R5;
ffa03cc2:	ff e3 1d e8 	CALL 0xffa00cfc <_strprintf_int>;
ffa03cc6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b34(-7337164) */
ffa03cca:	02 e1 44 0b 	R2.L = 0xb44;		/* (2884)	R2=0xff900b44(-7337148) */
ffa03cce:	0f 30       	R1 = R7;
ffa03cd0:	ff e3 b0 e6 	CALL 0xffa00a30 <_strcpy_>;
ffa03cd4:	0e 64       	R6 += 0x1;		/* (  1) */
ffa03cd6:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa03cd8:	16 08       	CC = R6 == R2;
ffa03cda:	e0 17       	IF !CC JUMP 0xffa03c9a <_httpResp+0x296> (BP);
ffa03cdc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa03ce0:	0f 30       	R1 = R7;
ffa03ce2:	02 e1 50 0b 	R2.L = 0xb50;		/* (2896)	R2=0xff900b50(-7337136) */
ffa03ce6:	ff e3 a5 e6 	CALL 0xffa00a30 <_strcpy_>;
ffa03cea:	f0 b9       	R0 = [FP -0x4];
ffa03cec:	a8 2e       	JUMP.S 0xffa03a3c <_httpResp+0x38>;
ffa03cee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03cf0:	4f 30       	R1 = FP;
ffa03cf2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b50(-7337136) */
ffa03cf6:	f0 bb       	[FP -0x4] = R0;
ffa03cf8:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03cfa:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03cfe:	02 e1 58 0a 	R2.L = 0xa58;		/* (2648)	R2=0xff900a58(-7337384) */
ffa03d02:	ff e3 97 e6 	CALL 0xffa00a30 <_strcpy_>;
ffa03d06:	f0 b9       	R0 = [FP -0x4];
ffa03d08:	9a 2e       	JUMP.S 0xffa03a3c <_httpResp+0x38>;
ffa03d0a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa03d0e:	00 e1 94 0a 	R0.L = 0xa94;		/* (2708)	R0=0xff900a94(-7337324) */
ffa03d12:	0d 30       	R1 = R5;
ffa03d14:	16 30       	R2 = R6;
ffa03d16:	ff e3 fb e6 	CALL 0xffa00b0c <_substr>;
ffa03d1a:	00 0c       	CC = R0 == 0x0;
ffa03d1c:	08 1c       	IF CC JUMP 0xffa03d2c <_httpResp+0x328> (BP);
ffa03d1e:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa03d22:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d24:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03d28:	10 9b       	B[P2] = R0;
ffa03d2a:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03d2c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03d30:	00 e1 9c 0a 	R0.L = 0xa9c;		/* (2716)	R0=0xff900a9c(-7337316) */
ffa03d34:	0d 30       	R1 = R5;
ffa03d36:	16 30       	R2 = R6;
ffa03d38:	ff e3 ea e6 	CALL 0xffa00b0c <_substr>;
ffa03d3c:	00 0c       	CC = R0 == 0x0;
ffa03d3e:	05 1f       	IF CC JUMP 0xffa03b48 <_httpResp+0x144> (BP);
ffa03d40:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa03d44:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03d46:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03d4a:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03d4c:	10 9b       	B[P2] = R0;
ffa03d4e:	fd 2e       	JUMP.S 0xffa03b48 <_httpResp+0x144>;
ffa03d50:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03d54:	00 e1 94 0a 	R0.L = 0xa94;		/* (2708)	R0=0xff900a94(-7337324) */
ffa03d58:	0d 30       	R1 = R5;
ffa03d5a:	16 30       	R2 = R6;
ffa03d5c:	ff e3 d8 e6 	CALL 0xffa00b0c <_substr>;
ffa03d60:	00 0c       	CC = R0 == 0x0;
ffa03d62:	5b 14       	IF !CC JUMP 0xffa03e18 <_httpResp+0x414> (BP);
ffa03d64:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03d66:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a94(-7337324) */
ffa03d6a:	00 e1 9c 0a 	R0.L = 0xa9c;		/* (2716)	R0=0xff900a9c(-7337316) */
ffa03d6e:	0d 30       	R1 = R5;
ffa03d70:	16 30       	R2 = R6;
ffa03d72:	ff e3 cd e6 	CALL 0xffa00b0c <_substr>;
ffa03d76:	00 0c       	CC = R0 == 0x0;
ffa03d78:	de 1e       	IF CC JUMP 0xffa03b34 <_httpResp+0x130> (BP);
ffa03d7a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa03d7e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d80:	0a e1 74 0b 	P2.L = 0xb74;		/* (2932)	P2=0xff900b74 <_g_streamEnabled> */
ffa03d84:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03d86:	10 9b       	B[P2] = R0;
ffa03d88:	d6 2e       	JUMP.S 0xffa03b34 <_httpResp+0x130>;
ffa03d8a:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa03d8c:	05 50       	R0 = R5 + R0;
ffa03d8e:	ff e3 df e7 	CALL 0xffa00d4c <_atoi>;
ffa03d92:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900b74 <_g_streamEnabled> */
ffa03d96:	0a e1 20 0c 	P2.L = 0xc20;		/* (3104)	P2=0xff900c20 <_NetDataDestIP> */
ffa03d9a:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa03d9c:	11 91       	R1 = [P2];
ffa03d9e:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa03da2:	51 54       	R1 = R1 & R2;
ffa03da4:	c0 4f       	R0 <<= 0x18;
ffa03da6:	41 50       	R1 = R1 + R0;
ffa03da8:	11 93       	[P2] = R1;
ffa03daa:	68 2e       	JUMP.S 0xffa03a7a <_httpResp+0x76>;
ffa03dac:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa03dae:	05 50       	R0 = R5 + R0;
ffa03db0:	ff e3 ce e7 	CALL 0xffa00d4c <_atoi>;
ffa03db4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c20 <_NetDataDestIP> */
ffa03db8:	0a e1 20 0c 	P2.L = 0xc20;		/* (3104)	P2=0xff900c20 <_NetDataDestIP> */
ffa03dbc:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa03dbe:	11 91       	R1 = [P2];
ffa03dc0:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa03dc4:	40 43       	R0 = R0.B (Z);
ffa03dc6:	51 54       	R1 = R1 & R2;
ffa03dc8:	40 4f       	R0 <<= 0x8;
ffa03dca:	41 50       	R1 = R1 + R0;
ffa03dcc:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03dce:	11 93       	[P2] = R1;
ffa03dd0:	f9 2e       	JUMP.S 0xffa03bc2 <_httpResp+0x1be>;
ffa03dd2:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa03dd4:	05 50       	R0 = R5 + R0;
ffa03dd6:	ff e3 bb e7 	CALL 0xffa00d4c <_atoi>;
ffa03dda:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c20 <_NetDataDestIP> */
ffa03dde:	0a e1 20 0c 	P2.L = 0xc20;		/* (3104)	P2=0xff900c20 <_NetDataDestIP> */
ffa03de2:	11 91       	R1 = [P2];
ffa03de4:	41 4d       	R1 >>>= 0x8;
ffa03de6:	41 4f       	R1 <<= 0x8;
ffa03de8:	40 43       	R0 = R0.B (Z);
ffa03dea:	08 50       	R0 = R0 + R1;
ffa03dec:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03dee:	10 93       	[P2] = R0;
ffa03df0:	df 2e       	JUMP.S 0xffa03bae <_httpResp+0x1aa>;
ffa03df2:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa03df4:	05 50       	R0 = R5 + R0;
ffa03df6:	ff e3 ab e7 	CALL 0xffa00d4c <_atoi>;
ffa03dfa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c20 <_NetDataDestIP> */
ffa03dfe:	0a e1 20 0c 	P2.L = 0xc20;		/* (3104)	P2=0xff900c20 <_NetDataDestIP> */
ffa03e02:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa03e04:	11 91       	R1 = [P2];
ffa03e06:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa03e0a:	40 43       	R0 = R0.B (Z);
ffa03e0c:	51 54       	R1 = R1 & R2;
ffa03e0e:	80 4f       	R0 <<= 0x10;
ffa03e10:	41 50       	R1 = R1 + R0;
ffa03e12:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03e14:	11 93       	[P2] = R1;
ffa03e16:	e0 2e       	JUMP.S 0xffa03bd6 <_httpResp+0x1d2>;
ffa03e18:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c20 <_NetDataDestIP> */
ffa03e1c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03e1e:	0a e1 74 0b 	P2.L = 0xb74;		/* (2932)	P2=0xff900b74 <_g_streamEnabled> */
ffa03e22:	10 9b       	B[P2] = R0;
ffa03e24:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800b74 */
ffa03e28:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03e2c:	10 91       	R0 = [P2];
ffa03e2e:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03e30:	22 6c       	P2 += 0x4;		/* (  4) */
ffa03e32:	10 93       	[P2] = R0;
ffa03e34:	99 2f       	JUMP.S 0xffa03d66 <_httpResp+0x362>;
	...

ffa03e38 <_httpCollate>:
ffa03e38:	e5 05       	[--SP] = (R7:4, P5:5);
ffa03e3a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c20 <_NetDataDestIP> */
ffa03e3e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03e42:	0d e1 18 0d 	P5.L = 0xd18;		/* (3352)	P5=0xff900d18 <_g_httpRxed> */
ffa03e46:	2e 91       	R6 = [P5];
ffa03e48:	06 0c       	CC = R6 == 0x0;
ffa03e4a:	28 30       	R5 = R0;
ffa03e4c:	21 30       	R4 = R1;
ffa03e4e:	16 1c       	IF CC JUMP 0xffa03e7a <_httpCollate+0x42> (BP);
ffa03e50:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03e52:	87 4f       	R7 <<= 0x10;
ffa03e54:	7e 50       	R1 = R6 + R7;
ffa03e56:	14 30       	R2 = R4;
ffa03e58:	ff e3 bc e5 	CALL 0xffa009d0 <_memcpy_>;
ffa03e5c:	29 91       	R1 = [P5];
ffa03e5e:	4c 50       	R1 = R4 + R1;
ffa03e60:	29 93       	[P5] = R1;
ffa03e62:	07 30       	R0 = R7;
ffa03e64:	ff e3 d0 fd 	CALL 0xffa03a04 <_httpResp>;
ffa03e68:	00 0c       	CC = R0 == 0x0;
ffa03e6a:	04 18       	IF CC JUMP 0xffa03e72 <_httpCollate+0x3a>;
ffa03e6c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03e6e:	28 93       	[P5] = R0;
ffa03e70:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03e72:	01 e8 00 00 	UNLINK;
ffa03e76:	a5 05       	(R7:4, P5:5) = [SP++];
ffa03e78:	10 00       	RTS;
ffa03e7a:	ff e3 c5 fd 	CALL 0xffa03a04 <_httpResp>;
ffa03e7e:	00 0c       	CC = R0 == 0x0;
ffa03e80:	07 18       	IF CC JUMP 0xffa03e8e <_httpCollate+0x56>;
ffa03e82:	2e 93       	[P5] = R6;
ffa03e84:	01 e8 00 00 	UNLINK;
ffa03e88:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03e8a:	a5 05       	(R7:4, P5:5) = [SP++];
ffa03e8c:	10 00       	RTS;
ffa03e8e:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa03e90:	05 30       	R0 = R5;
ffa03e92:	14 30       	R2 = R4;
ffa03e94:	81 4f       	R1 <<= 0x10;
ffa03e96:	ff e3 9d e5 	CALL 0xffa009d0 <_memcpy_>;
ffa03e9a:	2c 93       	[P5] = R4;
ffa03e9c:	01 e8 00 00 	UNLINK;
ffa03ea0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ea2:	a5 05       	(R7:4, P5:5) = [SP++];
ffa03ea4:	10 00       	RTS;
	...

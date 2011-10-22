
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
ffa000d8:	80 e1 9f 90 	R0 = 0x909f (Z);		/*		R0=0x909f(37023) */
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
ffa00178:	d0 27       	JUMP.S 0xffa01118 <_main>;
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

ffa001a8 <_spi_delay>:
ffa001a8:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa001ac:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa001ae:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa001b2:	08 20       	JUMP.S 0xffa001c2 <_spi_delay+0x1a>;
ffa001b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00000(-4194304) */
ffa001b8:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa001bc:	50 95       	R0 = W[P2] (X);
ffa001be:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa001c2:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa001c6:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa001c8:	08 54       	R0 = R0 & R1;
ffa001ca:	00 0c       	CC = R0 == 0x0;
ffa001cc:	f4 13       	IF !CC JUMP 0xffa001b4 <_spi_delay+0xc>;
ffa001ce:	08 20       	JUMP.S 0xffa001de <_spi_delay+0x36>;
ffa001d0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa001d4:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa001d8:	50 95       	R0 = W[P2] (X);
ffa001da:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa001de:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa001e2:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa001e4:	00 02       	R0 = CC;
ffa001e6:	00 0c       	CC = R0 == 0x0;
ffa001e8:	f4 1b       	IF CC JUMP 0xffa001d0 <_spi_delay+0x28>;
ffa001ea:	01 e8 00 00 	UNLINK;
ffa001ee:	10 00       	RTS;

ffa001f0 <_spi_write_register>:
ffa001f0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa001f4:	38 b5       	W[FP + 0x8] = R0;
ffa001f6:	01 30       	R0 = R1;
ffa001f8:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa001fc:	02 30       	R0 = R2;
ffa001fe:	b8 e6 10 00 	B[FP + 0x10] = R0;
ffa00202:	b8 e5 0c 00 	R0 = B[FP + 0xc] (X);
ffa00206:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa00208:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa0020c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa00210:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00214:	38 a9       	R0 = W[FP + 0x8] (X);
ffa00216:	10 97       	W[P2] = R0;
ffa00218:	24 00       	SSYNC;
ffa0021a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0021e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa00222:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa00226:	10 97       	W[P2] = R0;
ffa00228:	ff e3 c0 ff 	CALL 0xffa001a8 <_spi_delay>;
ffa0022c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa00230:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa00234:	50 95       	R0 = W[P2] (X);
ffa00236:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa0023a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0023e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa00242:	b8 e4 10 00 	R0 = B[FP + 0x10] (Z);
ffa00246:	10 97       	W[P2] = R0;
ffa00248:	ff e3 b0 ff 	CALL 0xffa001a8 <_spi_delay>;
ffa0024c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa00250:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00254:	38 a9       	R0 = W[FP + 0x8] (X);
ffa00256:	10 97       	W[P2] = R0;
ffa00258:	24 00       	SSYNC;
ffa0025a:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa0025e:	01 e8 00 00 	UNLINK;
ffa00262:	10 00       	RTS;

ffa00264 <_spi_read_register>:
ffa00264:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00268:	38 b5       	W[FP + 0x8] = R0;
ffa0026a:	01 30       	R0 = R1;
ffa0026c:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa00270:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00274:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00278:	38 a9       	R0 = W[FP + 0x8] (X);
ffa0027a:	10 97       	W[P2] = R0;
ffa0027c:	24 00       	SSYNC;
ffa0027e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00282:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa00286:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa0028a:	10 97       	W[P2] = R0;
ffa0028c:	ff e3 8e ff 	CALL 0xffa001a8 <_spi_delay>;
ffa00290:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa00294:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa00298:	50 95       	R0 = W[P2] (X);
ffa0029a:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa0029e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa002a2:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa002a6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa002a8:	10 97       	W[P2] = R0;
ffa002aa:	ff e3 7f ff 	CALL 0xffa001a8 <_spi_delay>;
ffa002ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa002b2:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa002b6:	50 95       	R0 = W[P2] (X);
ffa002b8:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa002bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa002c0:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa002c4:	38 a9       	R0 = W[FP + 0x8] (X);
ffa002c6:	10 97       	W[P2] = R0;
ffa002c8:	24 00       	SSYNC;
ffa002ca:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa002ce:	01 e8 00 00 	UNLINK;
ffa002d2:	10 00       	RTS;

ffa002d4 <_spi_write_register_ver>:
ffa002d4:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa002d8:	38 b5       	W[FP + 0x8] = R0;
ffa002da:	01 30       	R0 = R1;
ffa002dc:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa002e0:	02 30       	R0 = R2;
ffa002e2:	b8 e6 10 00 	B[FP + 0x10] = R0;
ffa002e6:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa002e8:	b9 e4 0c 00 	R1 = B[FP + 0xc] (Z);
ffa002ec:	ba e4 10 00 	R2 = B[FP + 0x10] (Z);
ffa002f0:	ff e3 80 ff 	CALL 0xffa001f0 <_spi_write_register>;
ffa002f4:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa002f6:	b9 e4 0c 00 	R1 = B[FP + 0xc] (Z);
ffa002fa:	ff e3 b5 ff 	CALL 0xffa00264 <_spi_read_register>;
ffa002fe:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa00302:	b9 e4 ff ff 	R1 = B[FP + -0x1] (Z);
ffa00306:	b8 e4 10 00 	R0 = B[FP + 0x10] (Z);
ffa0030a:	01 08       	CC = R1 == R0;
ffa0030c:	2b 18       	IF CC JUMP 0xffa00362 <_spi_write_register_ver+0x8e>;
ffa0030e:	b9 e4 0c 00 	R1 = B[FP + 0xc] (Z);
ffa00312:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00316:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0031a:	00 e3 ef 09 	CALL 0xffa016f8 <_printf_int>;
ffa0031e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00322:	00 e1 14 00 	R0.L = 0x14;		/* ( 20)	R0=0xff900014(-7340012) */
ffa00326:	00 e3 7b 09 	CALL 0xffa0161c <_uart_str>;
ffa0032a:	b9 e4 10 00 	R1 = B[FP + 0x10] (Z);
ffa0032e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900014(-7340012) */
ffa00332:	00 e1 18 00 	R0.L = 0x18;		/* ( 24)	R0=0xff900018(-7340008) */
ffa00336:	00 e3 59 0b 	CALL 0xffa019e8 <_printf_hex_byte>;
ffa0033a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900018(-7340008) */
ffa0033e:	00 e1 14 00 	R0.L = 0x14;		/* ( 20)	R0=0xff900014(-7340012) */
ffa00342:	00 e3 6d 09 	CALL 0xffa0161c <_uart_str>;
ffa00346:	b9 e4 ff ff 	R1 = B[FP + -0x1] (Z);
ffa0034a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900014(-7340012) */
ffa0034e:	00 e1 24 00 	R0.L = 0x24;		/* ( 36)	R0=0xff900024(-7339996) */
ffa00352:	00 e3 4b 0b 	CALL 0xffa019e8 <_printf_hex_byte>;
ffa00356:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900024(-7339996) */
ffa0035a:	00 e1 30 00 	R0.L = 0x30;		/* ( 48)	R0=0xff900030(-7339984) */
ffa0035e:	00 e3 5f 09 	CALL 0xffa0161c <_uart_str>;
ffa00362:	b8 e4 ff ff 	R0 = B[FP + -0x1] (Z);
ffa00366:	01 e8 00 00 	UNLINK;
ffa0036a:	10 00       	RTS;

ffa0036c <_spi_read_register_status>:
ffa0036c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00370:	3a b1       	[FP + 0x10] = R2;
ffa00372:	38 b5       	W[FP + 0x8] = R0;
ffa00374:	01 30       	R0 = R1;
ffa00376:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa0037a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0037e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00382:	38 a9       	R0 = W[FP + 0x8] (X);
ffa00384:	10 97       	W[P2] = R0;
ffa00386:	24 00       	SSYNC;
ffa00388:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0038c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa00390:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa00394:	10 97       	W[P2] = R0;
ffa00396:	ff e3 09 ff 	CALL 0xffa001a8 <_spi_delay>;
ffa0039a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0039e:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa003a2:	50 95       	R0 = W[P2] (X);
ffa003a4:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa003a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa003ac:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa003b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa003b2:	10 97       	W[P2] = R0;
ffa003b4:	ff e3 fa fe 	CALL 0xffa001a8 <_spi_delay>;
ffa003b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa003bc:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa003c0:	50 95       	R0 = W[P2] (X);
ffa003c2:	3a ad       	P2 = [FP + 0x10];
ffa003c4:	10 9b       	B[P2] = R0;
ffa003c6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa003ca:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa003ce:	38 a9       	R0 = W[FP + 0x8] (X);
ffa003d0:	10 97       	W[P2] = R0;
ffa003d2:	24 00       	SSYNC;
ffa003d4:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa003d8:	01 e8 00 00 	UNLINK;
ffa003dc:	10 00       	RTS;
	...

ffa003e0 <_spi_write_byte>:
ffa003e0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa003e4:	38 b5       	W[FP + 0x8] = R0;
ffa003e6:	01 30       	R0 = R1;
ffa003e8:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa003ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa003f0:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa003f4:	38 a9       	R0 = W[FP + 0x8] (X);
ffa003f6:	10 97       	W[P2] = R0;
ffa003f8:	24 00       	SSYNC;
ffa003fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa003fe:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa00402:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa00406:	10 97       	W[P2] = R0;
ffa00408:	ff e3 d0 fe 	CALL 0xffa001a8 <_spi_delay>;
ffa0040c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa00410:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa00414:	50 95       	R0 = W[P2] (X);
ffa00416:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa0041a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0041e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00422:	38 a9       	R0 = W[FP + 0x8] (X);
ffa00424:	10 97       	W[P2] = R0;
ffa00426:	24 00       	SSYNC;
ffa00428:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa0042c:	01 e8 00 00 	UNLINK;
ffa00430:	10 00       	RTS;
	...

ffa00434 <_radio_set_rx>:
ffa00434:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00438:	38 b5       	W[FP + 0x8] = R0;
ffa0043a:	01 30       	R0 = R1;
ffa0043c:	b8 b5       	W[FP + 0xc] = R0;
ffa0043e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00442:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00446:	b8 a9       	R0 = W[FP + 0xc] (X);
ffa00448:	10 97       	W[P2] = R0;
ffa0044a:	24 00       	SSYNC;
ffa0044c:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa0044e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00450:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00452:	ff e3 cf fe 	CALL 0xffa001f0 <_spi_write_register>;
ffa00456:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa00458:	21 e1 e2 00 	R1 = 0xe2 (X);		/*		R1=0xe2(226) */
ffa0045c:	ff e3 c2 ff 	CALL 0xffa003e0 <_spi_write_byte>;
ffa00460:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa00462:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00464:	fa 60       	R2 = 0x1f (X);		/*		R2=0x1f( 31) */
ffa00466:	ff e3 c5 fe 	CALL 0xffa001f0 <_spi_write_register>;
ffa0046a:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa0046c:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa0046e:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00472:	ff e3 bf fe 	CALL 0xffa001f0 <_spi_write_register>;
ffa00476:	24 00       	SSYNC;
ffa00478:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0047c:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00480:	b8 a9       	R0 = W[FP + 0xc] (X);
ffa00482:	10 97       	W[P2] = R0;
ffa00484:	24 00       	SSYNC;
ffa00486:	01 e8 00 00 	UNLINK;
ffa0048a:	10 00       	RTS;

ffa0048c <_radio_set_tx>:
ffa0048c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00490:	38 b5       	W[FP + 0x8] = R0;
ffa00492:	01 30       	R0 = R1;
ffa00494:	b8 b5       	W[FP + 0xc] = R0;
ffa00496:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0049a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0049e:	b8 a9       	R0 = W[FP + 0xc] (X);
ffa004a0:	10 97       	W[P2] = R0;
ffa004a2:	24 00       	SSYNC;
ffa004a4:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa004a6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa004a8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa004aa:	ff e3 a3 fe 	CALL 0xffa001f0 <_spi_write_register>;
ffa004ae:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa004b0:	21 e1 e1 00 	R1 = 0xe1 (X);		/*		R1=0xe1(225) */
ffa004b4:	ff e3 96 ff 	CALL 0xffa003e0 <_spi_write_byte>;
ffa004b8:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa004ba:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa004bc:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa004c0:	ff e3 98 fe 	CALL 0xffa001f0 <_spi_write_register>;
ffa004c4:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa004c6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa004c8:	f2 60       	R2 = 0x1e (X);		/*		R2=0x1e( 30) */
ffa004ca:	ff e3 93 fe 	CALL 0xffa001f0 <_spi_write_register>;
ffa004ce:	01 e8 00 00 	UNLINK;
ffa004d2:	10 00       	RTS;

ffa004d4 <_radio_init>:
ffa004d4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa004d8:	38 b5       	W[FP + 0x8] = R0;
ffa004da:	01 30       	R0 = R1;
ffa004dc:	b8 b5       	W[FP + 0xc] = R0;
ffa004de:	02 30       	R0 = R2;
ffa004e0:	b8 e6 10 00 	B[FP + 0x10] = R0;
ffa004e4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa004e8:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa004ec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa004ee:	10 97       	W[P2] = R0;
ffa004f0:	24 00       	SSYNC;
ffa004f2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa004f6:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa004fa:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa004fc:	10 97       	W[P2] = R0;
ffa004fe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa00502:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa00506:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa0050a:	10 97       	W[P2] = R0;
ffa0050c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa00510:	0a e1 04 05 	P2.L = 0x504;		/* (1284)	P2=0xffc00504(-4193020) */
ffa00514:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00516:	10 97       	W[P2] = R0;
ffa00518:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00504(-4193020) */
ffa0051c:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00520:	38 a9       	R0 = W[FP + 0x8] (X);
ffa00522:	10 97       	W[P2] = R0;
ffa00524:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0203c(-4186052) */
ffa00528:	09 e1 40 07 	P1.L = 0x740;		/* (1856)	P1=0xffc00740(-4192448) */
ffa0052c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00530:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa00534:	51 95       	R1 = W[P2] (X);
ffa00536:	b8 a9       	R0 = W[FP + 0xc] (X);
ffa00538:	01 56       	R0 = R1 | R0;
ffa0053a:	08 97       	W[P1] = R0;
ffa0053c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00740(-4192448) */
ffa00540:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa00544:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa00548:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa0054c:	51 95       	R1 = W[P2] (X);
ffa0054e:	b8 a9       	R0 = W[FP + 0xc] (X);
ffa00550:	c0 43       	R0 =~ R0;
ffa00552:	01 54       	R0 = R1 & R0;
ffa00554:	08 97       	W[P1] = R0;
ffa00556:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa0055a:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa0055e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa00562:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa00566:	51 95       	R1 = W[P2] (X);
ffa00568:	38 a9       	R0 = W[FP + 0x8] (X);
ffa0056a:	01 56       	R0 = R1 | R0;
ffa0056c:	50 4a       	BITSET (R0, 0xa);		/* bit 10 */
ffa0056e:	08 97       	W[P1] = R0;
ffa00570:	b8 e4 10 00 	R0 = B[FP + 0x10] (Z);
ffa00574:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa00578:	08 0a       	CC = R0 <= R1 (IU);
ffa0057a:	05 18       	IF CC JUMP 0xffa00584 <_radio_init+0xb0>;
ffa0057c:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa00580:	b8 e6 10 00 	B[FP + 0x10] = R0;
ffa00584:	b9 e4 10 00 	R1 = B[FP + 0x10] (Z);
ffa00588:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa0058c:	00 e1 34 00 	R0.L = 0x34;		/* ( 52)	R0=0xff900034(-7339980) */
ffa00590:	00 e3 b4 08 	CALL 0xffa016f8 <_printf_int>;
ffa00594:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900034(-7339980) */
ffa00598:	00 e1 30 00 	R0.L = 0x30;		/* ( 48)	R0=0xff900030(-7339984) */
ffa0059c:	00 e3 40 08 	CALL 0xffa0161c <_uart_str>;
ffa005a0:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa005a2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa005a4:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa005a6:	ff e3 25 fe 	CALL 0xffa001f0 <_spi_write_register>;
ffa005aa:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa005ac:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa005ae:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa005b0:	ff e3 92 fe 	CALL 0xffa002d4 <_spi_write_register_ver>;
ffa005b4:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa005b6:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
ffa005b8:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa005ba:	ff e3 8d fe 	CALL 0xffa002d4 <_spi_write_register_ver>;
ffa005be:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa005c0:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa005c2:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa005c4:	ff e3 88 fe 	CALL 0xffa002d4 <_spi_write_register_ver>;
ffa005c8:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa005ca:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa005cc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa005ce:	ff e3 83 fe 	CALL 0xffa002d4 <_spi_write_register_ver>;
ffa005d2:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa005d4:	ba e4 10 00 	R2 = B[FP + 0x10] (Z);
ffa005d8:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa005da:	ff e3 7d fe 	CALL 0xffa002d4 <_spi_write_register_ver>;
ffa005de:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa005e0:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa005e2:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa005e4:	ff e3 78 fe 	CALL 0xffa002d4 <_spi_write_register_ver>;
ffa005e8:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa005ea:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa005ec:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa005f0:	ff e3 72 fe 	CALL 0xffa002d4 <_spi_write_register_ver>;
ffa005f4:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa005f6:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa005f8:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa005fa:	ff e3 6d fe 	CALL 0xffa002d4 <_spi_write_register_ver>;
ffa005fe:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa00600:	21 e1 e2 00 	R1 = 0xe2 (X);		/*		R1=0xe2(226) */
ffa00604:	ff e3 ee fe 	CALL 0xffa003e0 <_spi_write_byte>;
ffa00608:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa0060a:	21 e1 e1 00 	R1 = 0xe1 (X);		/*		R1=0xe1(225) */
ffa0060e:	ff e3 e9 fe 	CALL 0xffa003e0 <_spi_write_byte>;
ffa00612:	40 43       	R0 = R0.B (Z);
ffa00614:	01 e8 00 00 	UNLINK;
ffa00618:	10 00       	RTS;
	...

ffa0061c <_eth_listen>:
ffa0061c:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa00620:	b8 b0       	[FP + 0x8] = R0;
ffa00622:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00624:	d0 bb       	[FP -0xc] = R0;
ffa00626:	b8 a0       	R0 = [FP + 0x8];
ffa00628:	00 0c       	CC = R0 == 0x0;
ffa0062a:	06 10       	IF !CC JUMP 0xffa00636 <_eth_listen+0x1a>;
ffa0062c:	47 30       	R0 = FP;
ffa0062e:	80 67       	R0 += -0x10;		/* (-16) */
ffa00630:	00 e3 be 0f 	CALL 0xffa025ac <_bfin_EMAC_recv>;
ffa00634:	d0 bb       	[FP -0xc] = R0;
ffa00636:	d0 b9       	R0 = [FP -0xc];
ffa00638:	00 0d       	CC = R0 <= 0x0;
ffa0063a:	26 18       	IF CC JUMP 0xffa00686 <_eth_listen+0x6a>;
ffa0063c:	c0 b9       	R0 = [FP -0x10];
ffa0063e:	e0 bb       	[FP -0x8] = R0;
ffa00640:	ea b9       	P2 = [FP -0x8];
ffa00642:	d1 a1       	R1 = [P2 + 0x1c];
ffa00644:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900730 */
ffa00648:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa0064c:	10 91       	R0 = [P2];
ffa0064e:	01 08       	CC = R1 == R0;
ffa00650:	1b 10       	IF !CC JUMP 0xffa00686 <_eth_listen+0x6a>;
ffa00652:	00 00       	NOP;
ffa00654:	00 00       	NOP;
ffa00656:	ea b9       	P2 = [FP -0x8];
ffa00658:	50 e5 13 00 	R0 = W[P2 + 0x26] (X);
ffa0065c:	c0 42       	R0 = R0.L (Z);
ffa0065e:	00 e3 5d 16 	CALL 0xffa03318 <_htons>;
ffa00662:	c0 42       	R0 = R0.L (Z);
ffa00664:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa00668:	08 08       	CC = R0 == R1;
ffa0066a:	0e 10       	IF !CC JUMP 0xffa00686 <_eth_listen+0x6a>;
ffa0066c:	c0 b9       	R0 = [FP -0x10];
ffa0066e:	f0 bb       	[FP -0x4] = R0;
ffa00670:	f0 b9       	R0 = [FP -0x4];
ffa00672:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa00674:	f0 bb       	[FP -0x4] = R0;
ffa00676:	f0 b9       	R0 = [FP -0x4];
ffa00678:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa0067c:	01 e1 70 0c 	R1.L = 0xc70;		/* (3184)	R1=0xff900c70 <_g_outpkt>(-7336848) */
ffa00680:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa00682:	00 e3 c3 0a 	CALL 0xffa01c08 <_memcpy_>;
ffa00686:	01 e8 00 00 	UNLINK;
ffa0068a:	10 00       	RTS;

ffa0068c <_read_flash_u8>:
ffa0068c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa00690:	b8 b0       	[FP + 0x8] = R0;
ffa00692:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00f18(-4190440) */
ffa00696:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0069a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0069c:	10 97       	W[P2] = R0;
ffa0069e:	24 00       	SSYNC;
ffa006a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa006a2:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa006a4:	ff e3 9e fe 	CALL 0xffa003e0 <_spi_write_byte>;
ffa006a8:	b8 a0       	R0 = [FP + 0x8];
ffa006aa:	80 4e       	R0 >>= 0x10;
ffa006ac:	41 43       	R1 = R0.B (Z);
ffa006ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa006b0:	ff e3 98 fe 	CALL 0xffa003e0 <_spi_write_byte>;
ffa006b4:	b8 a0       	R0 = [FP + 0x8];
ffa006b6:	40 4e       	R0 >>= 0x8;
ffa006b8:	41 43       	R1 = R0.B (Z);
ffa006ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa006bc:	ff e3 92 fe 	CALL 0xffa003e0 <_spi_write_byte>;
ffa006c0:	b8 a0       	R0 = [FP + 0x8];
ffa006c2:	41 43       	R1 = R0.B (Z);
ffa006c4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa006c6:	ff e3 8d fe 	CALL 0xffa003e0 <_spi_write_byte>;
ffa006ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa006cc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa006ce:	ff e3 89 fe 	CALL 0xffa003e0 <_spi_write_byte>;
ffa006d2:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa006d6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa006da:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa006de:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa006e0:	10 97       	W[P2] = R0;
ffa006e2:	24 00       	SSYNC;
ffa006e4:	b8 e4 ff ff 	R0 = B[FP + -0x1] (Z);
ffa006e8:	01 e8 00 00 	UNLINK;
ffa006ec:	10 00       	RTS;
	...

ffa006f0 <_read_flash_u32>:
ffa006f0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa006f4:	b8 b0       	[FP + 0x8] = R0;
ffa006f6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa006fa:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa006fe:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa00700:	10 97       	W[P2] = R0;
ffa00702:	24 00       	SSYNC;
ffa00704:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00706:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa00708:	ff e3 6c fe 	CALL 0xffa003e0 <_spi_write_byte>;
ffa0070c:	b8 a0       	R0 = [FP + 0x8];
ffa0070e:	80 4e       	R0 >>= 0x10;
ffa00710:	41 43       	R1 = R0.B (Z);
ffa00712:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00714:	ff e3 66 fe 	CALL 0xffa003e0 <_spi_write_byte>;
ffa00718:	b8 a0       	R0 = [FP + 0x8];
ffa0071a:	40 4e       	R0 >>= 0x8;
ffa0071c:	41 43       	R1 = R0.B (Z);
ffa0071e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00720:	ff e3 60 fe 	CALL 0xffa003e0 <_spi_write_byte>;
ffa00724:	b8 a0       	R0 = [FP + 0x8];
ffa00726:	41 43       	R1 = R0.B (Z);
ffa00728:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0072a:	ff e3 5b fe 	CALL 0xffa003e0 <_spi_write_byte>;
ffa0072e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00730:	f0 bb       	[FP -0x4] = R0;
ffa00732:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00734:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00736:	ff e3 55 fe 	CALL 0xffa003e0 <_spi_write_byte>;
ffa0073a:	41 43       	R1 = R0.B (Z);
ffa0073c:	f0 b9       	R0 = [FP -0x4];
ffa0073e:	08 50       	R0 = R0 + R1;
ffa00740:	f0 bb       	[FP -0x4] = R0;
ffa00742:	f0 b9       	R0 = [FP -0x4];
ffa00744:	40 4f       	R0 <<= 0x8;
ffa00746:	f0 bb       	[FP -0x4] = R0;
ffa00748:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0074a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0074c:	ff e3 4a fe 	CALL 0xffa003e0 <_spi_write_byte>;
ffa00750:	41 43       	R1 = R0.B (Z);
ffa00752:	f0 b9       	R0 = [FP -0x4];
ffa00754:	08 50       	R0 = R0 + R1;
ffa00756:	f0 bb       	[FP -0x4] = R0;
ffa00758:	f0 b9       	R0 = [FP -0x4];
ffa0075a:	40 4f       	R0 <<= 0x8;
ffa0075c:	f0 bb       	[FP -0x4] = R0;
ffa0075e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00760:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00762:	ff e3 3f fe 	CALL 0xffa003e0 <_spi_write_byte>;
ffa00766:	41 43       	R1 = R0.B (Z);
ffa00768:	f0 b9       	R0 = [FP -0x4];
ffa0076a:	08 50       	R0 = R0 + R1;
ffa0076c:	f0 bb       	[FP -0x4] = R0;
ffa0076e:	f0 b9       	R0 = [FP -0x4];
ffa00770:	40 4f       	R0 <<= 0x8;
ffa00772:	f0 bb       	[FP -0x4] = R0;
ffa00774:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00776:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00778:	ff e3 34 fe 	CALL 0xffa003e0 <_spi_write_byte>;
ffa0077c:	41 43       	R1 = R0.B (Z);
ffa0077e:	f0 b9       	R0 = [FP -0x4];
ffa00780:	08 50       	R0 = R0 + R1;
ffa00782:	f0 bb       	[FP -0x4] = R0;
ffa00784:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00788:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0078c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0078e:	10 97       	W[P2] = R0;
ffa00790:	24 00       	SSYNC;
ffa00792:	f0 b9       	R0 = [FP -0x4];
ffa00794:	01 e8 00 00 	UNLINK;
ffa00798:	10 00       	RTS;
	...

ffa0079c <_write_enable_flash>:
ffa0079c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa007a0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa007a4:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa007a8:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa007aa:	10 97       	W[P2] = R0;
ffa007ac:	24 00       	SSYNC;
ffa007ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007b0:	21 e1 50 00 	R1 = 0x50 (X);		/*		R1=0x50( 80) */
ffa007b4:	ff e3 16 fe 	CALL 0xffa003e0 <_spi_write_byte>;
ffa007b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa007bc:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa007c0:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa007c2:	10 97       	W[P2] = R0;
ffa007c4:	24 00       	SSYNC;
ffa007c6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa007ca:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa007ce:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa007d0:	10 97       	W[P2] = R0;
ffa007d2:	24 00       	SSYNC;
ffa007d4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007d6:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa007d8:	ff e3 04 fe 	CALL 0xffa003e0 <_spi_write_byte>;
ffa007dc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007de:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa007e0:	ff e3 00 fe 	CALL 0xffa003e0 <_spi_write_byte>;
ffa007e4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa007e8:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa007ec:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa007ee:	10 97       	W[P2] = R0;
ffa007f0:	24 00       	SSYNC;
ffa007f2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa007f6:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa007fa:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa007fc:	10 97       	W[P2] = R0;
ffa007fe:	24 00       	SSYNC;
ffa00800:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00802:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa00804:	ff e3 ee fd 	CALL 0xffa003e0 <_spi_write_byte>;
ffa00808:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0080c:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00810:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa00812:	10 97       	W[P2] = R0;
ffa00814:	24 00       	SSYNC;
ffa00816:	01 e8 00 00 	UNLINK;
ffa0081a:	10 00       	RTS;

ffa0081c <_wait_flash>:
ffa0081c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa00820:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00822:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa00826:	19 20       	JUMP.S 0xffa00858 <_wait_flash+0x3c>;
ffa00828:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0082c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00830:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa00832:	10 97       	W[P2] = R0;
ffa00834:	24 00       	SSYNC;
ffa00836:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00838:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0083a:	ff e3 d3 fd 	CALL 0xffa003e0 <_spi_write_byte>;
ffa0083e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00840:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00842:	ff e3 cf fd 	CALL 0xffa003e0 <_spi_write_byte>;
ffa00846:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa0084a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0084e:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00852:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa00854:	10 97       	W[P2] = R0;
ffa00856:	24 00       	SSYNC;
ffa00858:	b8 e4 ff ff 	R0 = B[FP + -0x1] (Z);
ffa0085c:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0085e:	00 02       	R0 = CC;
ffa00860:	40 43       	R0 = R0.B (Z);
ffa00862:	00 0c       	CC = R0 == 0x0;
ffa00864:	e2 13       	IF !CC JUMP 0xffa00828 <_wait_flash+0xc>;
ffa00866:	01 e8 00 00 	UNLINK;
ffa0086a:	10 00       	RTS;

ffa0086c <_write_flash>:
ffa0086c:	00 e8 09 00 	LINK 0x24;		/* (36) */
ffa00870:	b8 b0       	[FP + 0x8] = R0;
ffa00872:	f9 b0       	[FP + 0xc] = R1;
ffa00874:	20 e1 7f 00 	R0 = 0x7f (X);		/*		R0=0x7f(127) */
ffa00878:	a0 bb       	[FP -0x18] = R0;
ffa0087a:	a0 b9       	R0 = [FP -0x18];
ffa0087c:	60 4f       	R0 <<= 0xc;
ffa0087e:	b0 bb       	[FP -0x14] = R0;
ffa00880:	ff e3 8e ff 	CALL 0xffa0079c <_write_enable_flash>;
ffa00884:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00888:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0088c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0088e:	10 97       	W[P2] = R0;
ffa00890:	24 00       	SSYNC;
ffa00892:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00894:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa00896:	ff e3 a5 fd 	CALL 0xffa003e0 <_spi_write_byte>;
ffa0089a:	b0 b9       	R0 = [FP -0x14];
ffa0089c:	80 4e       	R0 >>= 0x10;
ffa0089e:	41 43       	R1 = R0.B (Z);
ffa008a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008a2:	ff e3 9f fd 	CALL 0xffa003e0 <_spi_write_byte>;
ffa008a6:	b0 b9       	R0 = [FP -0x14];
ffa008a8:	40 4e       	R0 >>= 0x8;
ffa008aa:	41 43       	R1 = R0.B (Z);
ffa008ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008ae:	ff e3 99 fd 	CALL 0xffa003e0 <_spi_write_byte>;
ffa008b2:	b0 b9       	R0 = [FP -0x14];
ffa008b4:	41 43       	R1 = R0.B (Z);
ffa008b6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008b8:	ff e3 94 fd 	CALL 0xffa003e0 <_spi_write_byte>;
ffa008bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa008c0:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa008c4:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa008c6:	10 97       	W[P2] = R0;
ffa008c8:	24 00       	SSYNC;
ffa008ca:	ff e3 a9 ff 	CALL 0xffa0081c <_wait_flash>;
ffa008ce:	f8 a0       	R0 = [FP + 0xc];
ffa008d0:	e0 bb       	[FP -0x8] = R0;
ffa008d2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008d4:	c0 bb       	[FP -0x10] = R0;
ffa008d6:	48 20       	JUMP.S 0xffa00966 <_write_flash+0xfa>;
ffa008d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa008dc:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa008e0:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa008e2:	10 97       	W[P2] = R0;
ffa008e4:	24 00       	SSYNC;
ffa008e6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008e8:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa008ea:	ff e3 7b fd 	CALL 0xffa003e0 <_spi_write_byte>;
ffa008ee:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa008f2:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa008f6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa008f8:	10 97       	W[P2] = R0;
ffa008fa:	24 00       	SSYNC;
ffa008fc:	b1 b9       	R1 = [FP -0x14];
ffa008fe:	c0 b9       	R0 = [FP -0x10];
ffa00900:	01 50       	R0 = R1 + R0;
ffa00902:	d0 bb       	[FP -0xc] = R0;
ffa00904:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00908:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0090c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0090e:	10 97       	W[P2] = R0;
ffa00910:	24 00       	SSYNC;
ffa00912:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00914:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
ffa00916:	ff e3 65 fd 	CALL 0xffa003e0 <_spi_write_byte>;
ffa0091a:	d0 b9       	R0 = [FP -0xc];
ffa0091c:	80 4e       	R0 >>= 0x10;
ffa0091e:	41 43       	R1 = R0.B (Z);
ffa00920:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00922:	ff e3 5f fd 	CALL 0xffa003e0 <_spi_write_byte>;
ffa00926:	d0 b9       	R0 = [FP -0xc];
ffa00928:	40 4e       	R0 >>= 0x8;
ffa0092a:	41 43       	R1 = R0.B (Z);
ffa0092c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0092e:	ff e3 59 fd 	CALL 0xffa003e0 <_spi_write_byte>;
ffa00932:	d0 b9       	R0 = [FP -0xc];
ffa00934:	41 43       	R1 = R0.B (Z);
ffa00936:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00938:	ff e3 54 fd 	CALL 0xffa003e0 <_spi_write_byte>;
ffa0093c:	ea b9       	P2 = [FP -0x8];
ffa0093e:	50 99       	R0 = B[P2] (X);
ffa00940:	41 43       	R1 = R0.B (Z);
ffa00942:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00944:	ff e3 4e fd 	CALL 0xffa003e0 <_spi_write_byte>;
ffa00948:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0094c:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00950:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa00952:	10 97       	W[P2] = R0;
ffa00954:	24 00       	SSYNC;
ffa00956:	e0 b9       	R0 = [FP -0x8];
ffa00958:	08 64       	R0 += 0x1;		/* (  1) */
ffa0095a:	e0 bb       	[FP -0x8] = R0;
ffa0095c:	ff e3 60 ff 	CALL 0xffa0081c <_wait_flash>;
ffa00960:	c0 b9       	R0 = [FP -0x10];
ffa00962:	08 64       	R0 += 0x1;		/* (  1) */
ffa00964:	c0 bb       	[FP -0x10] = R0;
ffa00966:	b9 a0       	R1 = [FP + 0x8];
ffa00968:	c0 b9       	R0 = [FP -0x10];
ffa0096a:	01 0a       	CC = R1 <= R0 (IU);
ffa0096c:	b6 13       	IF !CC JUMP 0xffa008d8 <_write_flash+0x6c>;
ffa0096e:	f8 a0       	R0 = [FP + 0xc];
ffa00970:	e0 bb       	[FP -0x8] = R0;
ffa00972:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00974:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa00978:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0097a:	c0 bb       	[FP -0x10] = R0;
ffa0097c:	29 20       	JUMP.S 0xffa009ce <_write_flash+0x162>;
ffa0097e:	b1 b9       	R1 = [FP -0x14];
ffa00980:	c0 b9       	R0 = [FP -0x10];
ffa00982:	01 50       	R0 = R1 + R0;
ffa00984:	ff e3 84 fe 	CALL 0xffa0068c <_read_flash_u8>;
ffa00988:	b8 e6 fe ff 	B[FP + -0x2] = R0;
ffa0098c:	ea b9       	P2 = [FP -0x8];
ffa0098e:	50 99       	R0 = B[P2] (X);
ffa00990:	41 43       	R1 = R0.B (Z);
ffa00992:	b8 e4 fe ff 	R0 = B[FP + -0x2] (Z);
ffa00996:	01 08       	CC = R1 == R0;
ffa00998:	15 18       	IF CC JUMP 0xffa009c2 <_write_flash+0x156>;
ffa0099a:	b9 e4 fe ff 	R1 = B[FP + -0x2] (Z);
ffa0099e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa009a2:	00 e1 4c 00 	R0.L = 0x4c;		/* ( 76)	R0=0xff90004c(-7339956) */
ffa009a6:	00 e3 21 08 	CALL 0xffa019e8 <_printf_hex_byte>;
ffa009aa:	ea b9       	P2 = [FP -0x8];
ffa009ac:	50 99       	R0 = B[P2] (X);
ffa009ae:	41 43       	R1 = R0.B (Z);
ffa009b0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90004c(-7339956) */
ffa009b4:	00 e1 5c 00 	R0.L = 0x5c;		/* ( 92)	R0=0xff90005c(-7339940) */
ffa009b8:	00 e3 18 08 	CALL 0xffa019e8 <_printf_hex_byte>;
ffa009bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009be:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa009c2:	e0 b9       	R0 = [FP -0x8];
ffa009c4:	08 64       	R0 += 0x1;		/* (  1) */
ffa009c6:	e0 bb       	[FP -0x8] = R0;
ffa009c8:	c0 b9       	R0 = [FP -0x10];
ffa009ca:	08 64       	R0 += 0x1;		/* (  1) */
ffa009cc:	c0 bb       	[FP -0x10] = R0;
ffa009ce:	b9 a0       	R1 = [FP + 0x8];
ffa009d0:	c0 b9       	R0 = [FP -0x10];
ffa009d2:	01 0a       	CC = R1 <= R0 (IU);
ffa009d4:	d5 13       	IF !CC JUMP 0xffa0097e <_write_flash+0x112>;
ffa009d6:	b8 e4 ff ff 	R0 = B[FP + -0x1] (Z);
ffa009da:	00 0c       	CC = R0 == 0x0;
ffa009dc:	07 10       	IF !CC JUMP 0xffa009ea <_write_flash+0x17e>;
ffa009de:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa009e2:	00 e1 68 00 	R0.L = 0x68;		/* (104)	R0=0xff900068(-7339928) */
ffa009e6:	00 e3 7f 06 	CALL 0xffa016e4 <_printf_str>;
ffa009ea:	01 e8 00 00 	UNLINK;
ffa009ee:	10 00       	RTS;

ffa009f0 <_getRadioPacket>:
ffa009f0:	00 e8 0c 00 	LINK 0x30;		/* (48) */
ffa009f4:	38 b5       	W[FP + 0x8] = R0;
ffa009f6:	01 30       	R0 = R1;
ffa009f8:	b8 b5       	W[FP + 0xc] = R0;
ffa009fa:	02 30       	R0 = R2;
ffa009fc:	b8 e6 10 00 	B[FP + 0x10] = R0;
ffa00a00:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a02:	b8 e6 df ff 	B[FP + -0x21] = R0;
ffa00a06:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa00a08:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00a0a:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00a0e:	ff e3 f1 fb 	CALL 0xffa001f0 <_spi_write_register>;
ffa00a12:	24 00       	SSYNC;
ffa00a14:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00a18:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00a1c:	38 a9       	R0 = W[FP + 0x8] (X);
ffa00a1e:	10 97       	W[P2] = R0;
ffa00a20:	24 00       	SSYNC;
ffa00a22:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00a26:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa00a2a:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa00a2e:	10 97       	W[P2] = R0;
ffa00a30:	ff e3 bc fb 	CALL 0xffa001a8 <_spi_delay>;
ffa00a34:	b8 e4 10 00 	R0 = B[FP + 0x10] (Z);
ffa00a38:	00 0c       	CC = R0 == 0x0;
ffa00a3a:	18 18       	IF CC JUMP 0xffa00a6a <_getRadioPacket+0x7a>;
ffa00a3c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90050c */
ffa00a40:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_wrptr> */
ffa00a44:	10 91       	R0 = [P2];
ffa00a46:	08 32       	P1 = R0;
ffa00a48:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c44 */
ffa00a4c:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00a50:	10 91       	R0 = [P2];
ffa00a52:	08 93       	[P1] = R0;
ffa00a54:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900800 */
ffa00a58:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_wrptr> */
ffa00a5c:	10 91       	R0 = [P2];
ffa00a5e:	20 64       	R0 += 0x4;		/* (  4) */
ffa00a60:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c44 <_wrptr> */
ffa00a64:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_wrptr> */
ffa00a68:	10 93       	[P2] = R0;
ffa00a6a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c44 <_wrptr> */
ffa00a6e:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_wrptr> */
ffa00a72:	10 91       	R0 = [P2];
ffa00a74:	a0 bb       	[FP -0x18] = R0;
ffa00a76:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a78:	78 e6 f2 ff 	W[FP + -0x1c] = R0;
ffa00a7c:	6b 20       	JUMP.S 0xffa00b52 <_getRadioPacket+0x162>;
ffa00a7e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c44(-4191164) */
ffa00a82:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa00a86:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a88:	10 97       	W[P2] = R0;
ffa00a8a:	ff e3 8f fb 	CALL 0xffa001a8 <_spi_delay>;
ffa00a8e:	b8 e4 10 00 	R0 = B[FP + 0x10] (Z);
ffa00a92:	00 0c       	CC = R0 == 0x0;
ffa00a94:	5a 18       	IF CC JUMP 0xffa00b48 <_getRadioPacket+0x158>;
ffa00a96:	00 00       	NOP;
ffa00a98:	00 00       	NOP;
ffa00a9a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa00a9e:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa00aa2:	50 95       	R0 = W[P2] (X);
ffa00aa4:	b8 e6 ef ff 	B[FP + -0x11] = R0;
ffa00aa8:	aa b9       	P2 = [FP -0x18];
ffa00aaa:	b8 e5 ef ff 	R0 = B[FP + -0x11] (X);
ffa00aae:	10 9b       	B[P2] = R0;
ffa00ab0:	a0 b9       	R0 = [FP -0x18];
ffa00ab2:	08 64       	R0 += 0x1;		/* (  1) */
ffa00ab4:	a0 bb       	[FP -0x18] = R0;
ffa00ab6:	78 e4 f2 ff 	R0 = W[FP + -0x1c] (Z);
ffa00aba:	b9 60       	R1 = 0x17 (X);		/*		R1=0x17( 23) */
ffa00abc:	08 0a       	CC = R0 <= R1 (IU);
ffa00abe:	45 10       	IF !CC JUMP 0xffa00b48 <_getRadioPacket+0x158>;
ffa00ac0:	78 e4 f2 ff 	R0 = W[FP + -0x1c] (Z);
ffa00ac4:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa00ac6:	08 54       	R0 = R0 & R1;
ffa00ac8:	00 0c       	CC = R0 == 0x0;
ffa00aca:	1d 10       	IF !CC JUMP 0xffa00b04 <_getRadioPacket+0x114>;
ffa00acc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900518 */
ffa00ad0:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xff900c48 <_g_sampW> */
ffa00ad4:	11 91       	R1 = [P2];
ffa00ad6:	20 e1 ff 01 	R0 = 0x1ff (X);		/*		R0=0x1ff(511) */
ffa00ada:	41 54       	R1 = R1 & R0;
ffa00adc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001ff(-7339521) */
ffa00ae0:	00 e1 90 0c 	R0.L = 0xc90;		/* (3216)	R0=0xff900c90 <_g_samples>(-7336816) */
ffa00ae4:	08 50       	R0 = R0 + R1;
ffa00ae6:	10 32       	P2 = R0;
ffa00ae8:	b8 e5 ef ff 	R0 = B[FP + -0x11] (X);
ffa00aec:	10 9b       	B[P2] = R0;
ffa00aee:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c48 <_g_sampW> */
ffa00af2:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xff900c48 <_g_sampW> */
ffa00af6:	10 91       	R0 = [P2];
ffa00af8:	08 64       	R0 += 0x1;		/* (  1) */
ffa00afa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c48 <_g_sampW> */
ffa00afe:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xff900c48 <_g_sampW> */
ffa00b02:	10 93       	[P2] = R0;
ffa00b04:	78 e4 f2 ff 	R0 = W[FP + -0x1c] (Z);
ffa00b08:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa00b0a:	08 54       	R0 = R0 & R1;
ffa00b0c:	08 0c       	CC = R0 == 0x1;
ffa00b0e:	1d 10       	IF !CC JUMP 0xffa00b48 <_getRadioPacket+0x158>;
ffa00b10:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c48 <_g_sampW> */
ffa00b14:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xff900c48 <_g_sampW> */
ffa00b18:	11 91       	R1 = [P2];
ffa00b1a:	20 e1 ff 01 	R0 = 0x1ff (X);		/*		R0=0x1ff(511) */
ffa00b1e:	41 54       	R1 = R1 & R0;
ffa00b20:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001ff(-7339521) */
ffa00b24:	00 e1 90 0c 	R0.L = 0xc90;		/* (3216)	R0=0xff900c90 <_g_samples>(-7336816) */
ffa00b28:	08 50       	R0 = R0 + R1;
ffa00b2a:	10 32       	P2 = R0;
ffa00b2c:	b8 e5 ef ff 	R0 = B[FP + -0x11] (X);
ffa00b30:	10 9b       	B[P2] = R0;
ffa00b32:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c48 <_g_sampW> */
ffa00b36:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xff900c48 <_g_sampW> */
ffa00b3a:	10 91       	R0 = [P2];
ffa00b3c:	08 64       	R0 += 0x1;		/* (  1) */
ffa00b3e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c48 <_g_sampW> */
ffa00b42:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xff900c48 <_g_sampW> */
ffa00b46:	10 93       	[P2] = R0;
ffa00b48:	78 e5 f2 ff 	R0 = W[FP + -0x1c] (X);
ffa00b4c:	08 64       	R0 += 0x1;		/* (  1) */
ffa00b4e:	78 e6 f2 ff 	W[FP + -0x1c] = R0;
ffa00b52:	78 e4 f2 ff 	R0 = W[FP + -0x1c] (Z);
ffa00b56:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa00b58:	08 0a       	CC = R0 <= R1 (IU);
ffa00b5a:	92 1b       	IF CC JUMP 0xffa00a7e <_getRadioPacket+0x8e>;
ffa00b5c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa00b60:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00b64:	38 a9       	R0 = W[FP + 0x8] (X);
ffa00b66:	10 97       	W[P2] = R0;
ffa00b68:	24 00       	SSYNC;
ffa00b6a:	b8 e4 10 00 	R0 = B[FP + 0x10] (Z);
ffa00b6e:	00 0c       	CC = R0 == 0x0;
ffa00b70:	df 18       	IF CC JUMP 0xffa00d2e <_getRadioPacket+0x33e>;
ffa00b72:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00b76:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_wrptr> */
ffa00b7a:	10 91       	R0 = [P2];
ffa00b7c:	c0 bb       	[FP -0x10] = R0;
ffa00b7e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c44 <_wrptr> */
ffa00b82:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_wrptr> */
ffa00b86:	10 91       	R0 = [P2];
ffa00b88:	00 65       	R0 += 0x20;		/* ( 32) */
ffa00b8a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c44 <_wrptr> */
ffa00b8e:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_wrptr> */
ffa00b92:	10 93       	[P2] = R0;
ffa00b94:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c44 <_wrptr> */
ffa00b98:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_wrptr> */
ffa00b9c:	11 91       	R1 = [P2];
ffa00b9e:	20 e1 ff 0f 	R0 = 0xfff (X);		/*		R0=0xfff(4095) */
ffa00ba2:	01 54       	R0 = R1 & R0;
ffa00ba4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c44 <_wrptr> */
ffa00ba8:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_wrptr> */
ffa00bac:	10 93       	[P2] = R0;
ffa00bae:	c0 b9       	R0 = [FP -0x10];
ffa00bb0:	c0 64       	R0 += 0x18;		/* ( 24) */
ffa00bb2:	c0 bb       	[FP -0x10] = R0;
ffa00bb4:	ca b9       	P2 = [FP -0x10];
ffa00bb6:	10 91       	R0 = [P2];
ffa00bb8:	d0 bb       	[FP -0xc] = R0;
ffa00bba:	d0 b9       	R0 = [FP -0xc];
ffa00bbc:	38 4e       	R0 >>= 0x7;
ffa00bbe:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa00bc0:	02 02       	R2 = CC;
ffa00bc2:	d0 b9       	R0 = [FP -0xc];
ffa00bc4:	82 c6 90 83 	R1 = R0 >> 0xe;
ffa00bc8:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa00bca:	01 54       	R0 = R1 & R0;
ffa00bcc:	82 56       	R2 = R2 | R0;
ffa00bce:	d0 b9       	R0 = [FP -0xc];
ffa00bd0:	82 c6 58 83 	R1 = R0 >> 0x15;
ffa00bd4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa00bd6:	01 54       	R0 = R1 & R0;
ffa00bd8:	82 56       	R2 = R2 | R0;
ffa00bda:	d0 b9       	R0 = [FP -0xc];
ffa00bdc:	82 c6 20 83 	R1 = R0 >> 0x1c;
ffa00be0:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa00be2:	01 54       	R0 = R1 & R0;
ffa00be4:	02 56       	R0 = R2 | R0;
ffa00be6:	d0 bb       	[FP -0xc] = R0;
ffa00be8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c44 <_wrptr> */
ffa00bec:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_nextFlag> */
ffa00bf0:	11 91       	R1 = [P2];
ffa00bf2:	d0 b9       	R0 = [FP -0xc];
ffa00bf4:	01 08       	CC = R1 == R0;
ffa00bf6:	35 18       	IF CC JUMP 0xffa00c60 <_getRadioPacket+0x270>;
ffa00bf8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_g_nextFlag> */
ffa00bfc:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_nextFlag> */
ffa00c00:	11 91       	R1 = [P2];
ffa00c02:	d0 b9       	R0 = [FP -0xc];
ffa00c04:	01 0a       	CC = R1 <= R0 (IU);
ffa00c06:	15 18       	IF CC JUMP 0xffa00c30 <_getRadioPacket+0x240>;
ffa00c08:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_g_nextFlag> */
ffa00c0c:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_nextFlag> */
ffa00c10:	11 91       	R1 = [P2];
ffa00c12:	d0 b9       	R0 = [FP -0xc];
ffa00c14:	48 52       	R1 = R0 - R1;
ffa00c16:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_g_nextFlag> */
ffa00c1a:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_g_dropped> */
ffa00c1e:	10 91       	R0 = [P2];
ffa00c20:	01 50       	R0 = R1 + R0;
ffa00c22:	80 64       	R0 += 0x10;		/* ( 16) */
ffa00c24:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_g_dropped> */
ffa00c28:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_g_dropped> */
ffa00c2c:	10 93       	[P2] = R0;
ffa00c2e:	13 20       	JUMP.S 0xffa00c54 <_getRadioPacket+0x264>;
ffa00c30:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_g_dropped> */
ffa00c34:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_nextFlag> */
ffa00c38:	11 91       	R1 = [P2];
ffa00c3a:	d0 b9       	R0 = [FP -0xc];
ffa00c3c:	48 52       	R1 = R0 - R1;
ffa00c3e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_g_nextFlag> */
ffa00c42:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_g_dropped> */
ffa00c46:	10 91       	R0 = [P2];
ffa00c48:	01 50       	R0 = R1 + R0;
ffa00c4a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_g_dropped> */
ffa00c4e:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_g_dropped> */
ffa00c52:	10 93       	[P2] = R0;
ffa00c54:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c60(-4191136) */
ffa00c58:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00c5c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa00c5e:	10 97       	W[P2] = R0;
ffa00c60:	d0 b9       	R0 = [FP -0xc];
ffa00c62:	08 30       	R1 = R0;
ffa00c64:	09 64       	R1 += 0x1;		/* (  1) */
ffa00c66:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00c68:	01 54       	R0 = R1 & R0;
ffa00c6a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00c6e:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_nextFlag> */
ffa00c72:	10 93       	[P2] = R0;
ffa00c74:	d0 b9       	R0 = [FP -0xc];
ffa00c76:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa00c78:	08 08       	CC = R0 == R1;
ffa00c7a:	5a 10       	IF !CC JUMP 0xffa00d2e <_getRadioPacket+0x33e>;
ffa00c7c:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa00c7e:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00c82:	ff e3 05 fc 	CALL 0xffa0048c <_radio_set_tx>;
ffa00c86:	24 00       	SSYNC;
ffa00c88:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c38(-4191176) */
ffa00c8c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00c90:	38 a9       	R0 = W[FP + 0x8] (X);
ffa00c92:	10 97       	W[P2] = R0;
ffa00c94:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00c98:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa00c9c:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa00ca0:	10 97       	W[P2] = R0;
ffa00ca2:	ff e3 83 fa 	CALL 0xffa001a8 <_spi_delay>;
ffa00ca6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00caa:	00 e1 70 0c 	R0.L = 0xc70;		/* (3184)	R0=0xff900c70 <_g_outpkt>(-7336848) */
ffa00cae:	e0 bb       	[FP -0x8] = R0;
ffa00cb0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00cb2:	78 e6 f2 ff 	W[FP + -0x1c] = R0;
ffa00cb6:	13 20       	JUMP.S 0xffa00cdc <_getRadioPacket+0x2ec>;
ffa00cb8:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa00cbc:	09 e1 0c 05 	P1.L = 0x50c;		/* (1292)	P1=0xffc0050c(-4193012) */
ffa00cc0:	ea b9       	P2 = [FP -0x8];
ffa00cc2:	50 99       	R0 = B[P2] (X);
ffa00cc4:	40 43       	R0 = R0.B (Z);
ffa00cc6:	08 97       	W[P1] = R0;
ffa00cc8:	e0 b9       	R0 = [FP -0x8];
ffa00cca:	08 64       	R0 += 0x1;		/* (  1) */
ffa00ccc:	e0 bb       	[FP -0x8] = R0;
ffa00cce:	ff e3 6d fa 	CALL 0xffa001a8 <_spi_delay>;
ffa00cd2:	78 e5 f2 ff 	R0 = W[FP + -0x1c] (X);
ffa00cd6:	08 64       	R0 += 0x1;		/* (  1) */
ffa00cd8:	78 e6 f2 ff 	W[FP + -0x1c] = R0;
ffa00cdc:	78 e4 f2 ff 	R0 = W[FP + -0x1c] (Z);
ffa00ce0:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa00ce2:	08 0a       	CC = R0 <= R1 (IU);
ffa00ce4:	ea 1b       	IF CC JUMP 0xffa00cb8 <_getRadioPacket+0x2c8>;
ffa00ce6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa00cea:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00cee:	38 a9       	R0 = W[FP + 0x8] (X);
ffa00cf0:	50 4a       	BITSET (R0, 0xa);		/* bit 10 */
ffa00cf2:	10 97       	W[P2] = R0;
ffa00cf4:	24 00       	SSYNC;
ffa00cf6:	04 20       	JUMP.S 0xffa00cfe <_getRadioPacket+0x30e>;
ffa00cf8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00cfa:	ff e3 91 fc 	CALL 0xffa0061c <_eth_listen>;
ffa00cfe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00d02:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa00d06:	51 95       	R1 = W[P2] (X);
ffa00d08:	b8 a9       	R0 = W[FP + 0xc] (X);
ffa00d0a:	01 54       	R0 = R1 & R0;
ffa00d0c:	c0 42       	R0 = R0.L (Z);
ffa00d0e:	00 0c       	CC = R0 == 0x0;
ffa00d10:	f4 13       	IF !CC JUMP 0xffa00cf8 <_getRadioPacket+0x308>;
ffa00d12:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa00d14:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00d16:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00d1a:	ff e3 6b fa 	CALL 0xffa001f0 <_spi_write_register>;
ffa00d1e:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa00d20:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00d24:	ff e3 88 fb 	CALL 0xffa00434 <_radio_set_rx>;
ffa00d28:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00d2a:	b8 e6 df ff 	B[FP + -0x21] = R0;
ffa00d2e:	b8 e5 df ff 	R0 = B[FP + -0x21] (X);
ffa00d32:	00 0c       	CC = R0 == 0x0;
ffa00d34:	0a 10       	IF !CC JUMP 0xffa00d48 <_getRadioPacket+0x358>;
ffa00d36:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900700 */
ffa00d3a:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_wrptr> */
ffa00d3e:	10 91       	R0 = [P2];
ffa00d40:	21 e1 3f 02 	R1 = 0x23f (X);		/*		R1=0x23f(575) */
ffa00d44:	08 0a       	CC = R0 <= R1 (IU);
ffa00d46:	87 18       	IF CC JUMP 0xffa00e54 <_getRadioPacket+0x464>;
ffa00d48:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c44(-4191164) */
ffa00d4c:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00d50:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa00d54:	10 97       	W[P2] = R0;
ffa00d56:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa00d58:	21 e1 e2 00 	R1 = 0xe2 (X);		/*		R1=0xe2(226) */
ffa00d5c:	ff e3 42 fb 	CALL 0xffa003e0 <_spi_write_byte>;
ffa00d60:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00d64:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_wrptr> */
ffa00d68:	10 91       	R0 = [P2];
ffa00d6a:	20 64       	R0 += 0x4;		/* (  4) */
ffa00d6c:	4f 30       	R1 = FP;
ffa00d6e:	f1 66       	R1 += -0x22;		/* (-34) */
ffa00d70:	00 e3 c4 15 	CALL 0xffa038f8 <_udp_packet_setup>;
ffa00d74:	80 bb       	[FP -0x20] = R0;
ffa00d76:	b8 e5 de ff 	R0 = B[FP + -0x22] (X);
ffa00d7a:	00 43       	R0 = R0.B (X);
ffa00d7c:	00 0d       	CC = R0 <= 0x0;
ffa00d7e:	50 18       	IF CC JUMP 0xffa00e1e <_getRadioPacket+0x42e>;
ffa00d80:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c44 <_wrptr> */
ffa00d84:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_g_dropped> */
ffa00d88:	10 91       	R0 = [P2];
ffa00d8a:	8a b9       	P2 = [FP -0x20];
ffa00d8c:	10 93       	[P2] = R0;
ffa00d8e:	80 b9       	R0 = [FP -0x20];
ffa00d90:	20 64       	R0 += 0x4;		/* (  4) */
ffa00d92:	80 bb       	[FP -0x20] = R0;
ffa00d94:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00d96:	f0 bb       	[FP -0x4] = R0;
ffa00d98:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00d9a:	78 e6 f2 ff 	W[FP + -0x1c] = R0;
ffa00d9e:	10 20       	JUMP.S 0xffa00dbe <_getRadioPacket+0x3ce>;
ffa00da0:	fa b9       	P2 = [FP -0x4];
ffa00da2:	10 91       	R0 = [P2];
ffa00da4:	8a b9       	P2 = [FP -0x20];
ffa00da6:	10 93       	[P2] = R0;
ffa00da8:	80 b9       	R0 = [FP -0x20];
ffa00daa:	20 64       	R0 += 0x4;		/* (  4) */
ffa00dac:	80 bb       	[FP -0x20] = R0;
ffa00dae:	f0 b9       	R0 = [FP -0x4];
ffa00db0:	20 64       	R0 += 0x4;		/* (  4) */
ffa00db2:	f0 bb       	[FP -0x4] = R0;
ffa00db4:	78 e5 f2 ff 	R0 = W[FP + -0x1c] (X);
ffa00db8:	08 64       	R0 += 0x1;		/* (  1) */
ffa00dba:	78 e6 f2 ff 	W[FP + -0x1c] = R0;
ffa00dbe:	79 e4 f2 ff 	R1 = W[FP + -0x1c] (Z);
ffa00dc2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_g_dropped> */
ffa00dc6:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_wrptr> */
ffa00dca:	10 91       	R0 = [P2];
ffa00dcc:	10 4e       	R0 >>= 0x2;
ffa00dce:	81 09       	CC = R1 < R0 (IU);
ffa00dd0:	e8 1b       	IF CC JUMP 0xffa00da0 <_getRadioPacket+0x3b0>;
ffa00dd2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c44 <_wrptr> */
ffa00dd6:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_trptr> */
ffa00dda:	10 91       	R0 = [P2];
ffa00ddc:	08 64       	R0 += 0x1;		/* (  1) */
ffa00dde:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_trptr> */
ffa00de2:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_trptr> */
ffa00de6:	10 93       	[P2] = R0;
ffa00de8:	00 e3 30 0b 	CALL 0xffa02448 <_bfin_EMAC_send_nocopy>;
ffa00dec:	fa b9       	P2 = [FP -0x4];
ffa00dee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00df0:	10 93       	[P2] = R0;
ffa00df2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00df4:	78 e6 f2 ff 	W[FP + -0x1c] = R0;
ffa00df8:	0c 20       	JUMP.S 0xffa00e10 <_getRadioPacket+0x420>;
ffa00dfa:	fa b9       	P2 = [FP -0x4];
ffa00dfc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00dfe:	10 93       	[P2] = R0;
ffa00e00:	f0 b9       	R0 = [FP -0x4];
ffa00e02:	20 64       	R0 += 0x4;		/* (  4) */
ffa00e04:	f0 bb       	[FP -0x4] = R0;
ffa00e06:	78 e5 f2 ff 	R0 = W[FP + -0x1c] (X);
ffa00e0a:	08 64       	R0 += 0x1;		/* (  1) */
ffa00e0c:	78 e6 f2 ff 	W[FP + -0x1c] = R0;
ffa00e10:	78 e4 f2 ff 	R0 = W[FP + -0x1c] (Z);
ffa00e14:	21 e1 8f 00 	R1 = 0x8f (X);		/*		R1=0x8f(143) */
ffa00e18:	08 0a       	CC = R0 <= R1 (IU);
ffa00e1a:	f0 1b       	IF CC JUMP 0xffa00dfa <_getRadioPacket+0x40a>;
ffa00e1c:	0c 20       	JUMP.S 0xffa00e34 <_getRadioPacket+0x444>;
ffa00e1e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_trptr> */
ffa00e22:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_trptr> */
ffa00e26:	10 91       	R0 = [P2];
ffa00e28:	08 64       	R0 += 0x1;		/* (  1) */
ffa00e2a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_trptr> */
ffa00e2e:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_trptr> */
ffa00e32:	10 93       	[P2] = R0;
ffa00e34:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa00e38:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00e3c:	20 e1 04 40 	R0 = 0x4004 (X);		/*		R0=0x4004(16388) */
ffa00e40:	10 97       	W[P2] = R0;
ffa00e42:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00e44:	b8 e6 df ff 	B[FP + -0x21] = R0;
ffa00e48:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa00e4c:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_wrptr> */
ffa00e50:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00e52:	10 93       	[P2] = R0;
ffa00e54:	01 e8 00 00 	UNLINK;
ffa00e58:	10 00       	RTS;
	...

ffa00e5c <_audio_out>:
ffa00e5c:	66 01       	[--SP] = ASTAT;
ffa00e5e:	40 01       	[--SP] = R0;
ffa00e60:	41 01       	[--SP] = R1;
ffa00e62:	42 01       	[--SP] = R2;
ffa00e64:	4a 01       	[--SP] = P2;
ffa00e66:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00e6a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c44(-4191164) */
ffa00e6e:	0a e1 30 09 	P2.L = 0x930;		/* (2352)	P2=0xffc00930(-4191952) */
ffa00e72:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00e74:	10 97       	W[P2] = R0;
ffa00e76:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900930 */
ffa00e7a:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_g_sampCh> */
ffa00e7e:	50 99       	R0 = B[P2] (X);
ffa00e80:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa00e84:	b9 e4 f5 ff 	R1 = B[FP + -0xb] (Z);
ffa00e88:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_g_sampCh> */
ffa00e8c:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_g_sampR> */
ffa00e90:	10 91       	R0 = [P2];
ffa00e92:	41 50       	R1 = R1 + R0;
ffa00e94:	20 e1 ff 01 	R0 = 0x1ff (X);		/*		R0=0x1ff(511) */
ffa00e98:	41 54       	R1 = R1 & R0;
ffa00e9a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001ff(-7339521) */
ffa00e9e:	00 e1 90 0c 	R0.L = 0xc90;		/* (3216)	R0=0xff900c90 <_g_samples>(-7336816) */
ffa00ea2:	08 50       	R0 = R0 + R1;
ffa00ea4:	10 32       	P2 = R0;
ffa00ea6:	50 99       	R0 = B[P2] (X);
ffa00ea8:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa00eac:	b9 e4 f5 ff 	R1 = B[FP + -0xb] (Z);
ffa00eb0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_g_sampR> */
ffa00eb4:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_g_sampR> */
ffa00eb8:	10 91       	R0 = [P2];
ffa00eba:	01 50       	R0 = R1 + R0;
ffa00ebc:	08 30       	R1 = R0;
ffa00ebe:	11 64       	R1 += 0x2;		/* (  2) */
ffa00ec0:	20 e1 ff 01 	R0 = 0x1ff (X);		/*		R0=0x1ff(511) */
ffa00ec4:	41 54       	R1 = R1 & R0;
ffa00ec6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001ff(-7339521) */
ffa00eca:	00 e1 90 0c 	R0.L = 0xc90;		/* (3216)	R0=0xff900c90 <_g_samples>(-7336816) */
ffa00ece:	08 50       	R0 = R0 + R1;
ffa00ed0:	10 32       	P2 = R0;
ffa00ed2:	50 99       	R0 = B[P2] (X);
ffa00ed4:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa00ed8:	b9 e5 f6 ff 	R1 = B[FP + -0xa] (X);
ffa00edc:	20 e1 80 ff 	R0 = -0x80 (X);		/*		R0=0xffffff80(-128) */
ffa00ee0:	01 58       	R0 = R1 ^ R0;
ffa00ee2:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa00ee6:	b9 e5 f7 ff 	R1 = B[FP + -0x9] (X);
ffa00eea:	20 e1 80 ff 	R0 = -0x80 (X);		/*		R0=0xffffff80(-128) */
ffa00eee:	01 58       	R0 = R1 ^ R0;
ffa00ef0:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa00ef4:	ba e4 f6 ff 	R2 = B[FP + -0xa] (Z);
ffa00ef8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_g_sampR> */
ffa00efc:	0a e1 6c 0c 	P2.L = 0xc6c;		/* (3180)	P2=0xff900c6c <_g_sampOff> */
ffa00f00:	10 91       	R0 = [P2];
ffa00f02:	82 c6 60 83 	R1 = R0 >> 0x14;
ffa00f06:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa00f0a:	08 52       	R0 = R0 - R1;
ffa00f0c:	d0 40       	R0 *= R2;
ffa00f0e:	10 30       	R2 = R0;
ffa00f10:	b9 e4 f7 ff 	R1 = B[FP + -0x9] (Z);
ffa00f14:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c6c <_g_sampOff> */
ffa00f18:	0a e1 6c 0c 	P2.L = 0xc6c;		/* (3180)	P2=0xff900c6c <_g_sampOff> */
ffa00f1c:	10 91       	R0 = [P2];
ffa00f1e:	a0 4e       	R0 >>= 0x14;
ffa00f20:	c8 40       	R0 *= R1;
ffa00f22:	02 50       	R0 = R2 + R0;
ffa00f24:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa00f28:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c6c(-4191124) */
ffa00f2c:	0a e1 10 09 	P2.L = 0x910;		/* (2320)	P2=0xffc00910(-4191984) */
ffa00f30:	79 e4 fc ff 	R1 = W[FP + -0x8] (Z);
ffa00f34:	b8 e4 f5 ff 	R0 = B[FP + -0xb] (Z);
ffa00f38:	80 4f       	R0 <<= 0x10;
ffa00f3a:	41 56       	R1 = R1 | R0;
ffa00f3c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa00f3e:	98 4f       	R0 <<= 0x13;
ffa00f40:	01 56       	R0 = R1 | R0;
ffa00f42:	10 93       	[P2] = R0;
ffa00f44:	b8 e4 f5 ff 	R0 = B[FP + -0xb] (Z);
ffa00f48:	08 0c       	CC = R0 == 0x1;
ffa00f4a:	d3 10       	IF !CC JUMP 0xffa010f0 <_audio_out+0x294>;
ffa00f4c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900910 */
ffa00f50:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xff900c48 <_g_sampW> */
ffa00f54:	11 91       	R1 = [P2];
ffa00f56:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c48 <_g_sampW> */
ffa00f5a:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_g_sampR> */
ffa00f5e:	10 91       	R0 = [P2];
ffa00f60:	81 09       	CC = R1 < R0 (IU);
ffa00f62:	0b 10       	IF !CC JUMP 0xffa00f78 <_audio_out+0x11c>;
ffa00f64:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_g_sampR> */
ffa00f68:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xff900c48 <_g_sampW> */
ffa00f6c:	10 91       	R0 = [P2];
ffa00f6e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c48 <_g_sampW> */
ffa00f72:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_g_sampR> */
ffa00f76:	10 93       	[P2] = R0;
ffa00f78:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_g_sampR> */
ffa00f7c:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xff900c48 <_g_sampW> */
ffa00f80:	11 91       	R1 = [P2];
ffa00f82:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c48 <_g_sampW> */
ffa00f86:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_g_sampR> */
ffa00f8a:	10 91       	R0 = [P2];
ffa00f8c:	01 52       	R0 = R1 - R0;
ffa00f8e:	f0 bb       	[FP -0x4] = R0;
ffa00f90:	f0 b9       	R0 = [FP -0x4];
ffa00f92:	21 e1 d4 01 	R1 = 0x1d4 (X);		/*		R1=0x1d4(468) */
ffa00f96:	08 0a       	CC = R0 <= R1 (IU);
ffa00f98:	1e 18       	IF CC JUMP 0xffa00fd4 <_audio_out+0x178>;
ffa00f9a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_g_sampR> */
ffa00f9e:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_g_sampMode> */
ffa00fa2:	50 99       	R0 = B[P2] (X);
ffa00fa4:	40 43       	R0 = R0.B (Z);
ffa00fa6:	08 0c       	CC = R0 == 0x1;
ffa00fa8:	07 10       	IF !CC JUMP 0xffa00fb6 <_audio_out+0x15a>;
ffa00faa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_g_sampMode> */
ffa00fae:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_g_sampMode> */
ffa00fb2:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa00fb4:	10 9b       	B[P2] = R0;
ffa00fb6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_g_sampMode> */
ffa00fba:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_g_sampMode> */
ffa00fbe:	50 99       	R0 = B[P2] (X);
ffa00fc0:	40 43       	R0 = R0.B (Z);
ffa00fc2:	10 0c       	CC = R0 == 0x2;
ffa00fc4:	2a 10       	IF !CC JUMP 0xffa01018 <_audio_out+0x1bc>;
ffa00fc6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_g_sampMode> */
ffa00fca:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_g_sampMode> */
ffa00fce:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00fd0:	10 9b       	B[P2] = R0;
ffa00fd2:	23 20       	JUMP.S 0xffa01018 <_audio_out+0x1bc>;
ffa00fd4:	f0 b9       	R0 = [FP -0x4];
ffa00fd6:	21 e1 63 00 	R1 = 0x63 (X);		/*		R1=0x63( 99) */
ffa00fda:	08 0a       	CC = R0 <= R1 (IU);
ffa00fdc:	1e 10       	IF !CC JUMP 0xffa01018 <_audio_out+0x1bc>;
ffa00fde:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_g_sampMode> */
ffa00fe2:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_g_sampMode> */
ffa00fe6:	50 99       	R0 = B[P2] (X);
ffa00fe8:	40 43       	R0 = R0.B (Z);
ffa00fea:	08 0c       	CC = R0 == 0x1;
ffa00fec:	07 10       	IF !CC JUMP 0xffa00ffa <_audio_out+0x19e>;
ffa00fee:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_g_sampMode> */
ffa00ff2:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_g_sampMode> */
ffa00ff6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa00ff8:	10 9b       	B[P2] = R0;
ffa00ffa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_g_sampMode> */
ffa00ffe:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_g_sampMode> */
ffa01002:	50 99       	R0 = B[P2] (X);
ffa01004:	40 43       	R0 = R0.B (Z);
ffa01006:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa01008:	08 08       	CC = R0 == R1;
ffa0100a:	07 10       	IF !CC JUMP 0xffa01018 <_audio_out+0x1bc>;
ffa0100c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_g_sampMode> */
ffa01010:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_g_sampMode> */
ffa01014:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01016:	10 9b       	B[P2] = R0;
ffa01018:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_g_sampMode> */
ffa0101c:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_g_sampMode> */
ffa01020:	50 99       	R0 = B[P2] (X);
ffa01022:	40 43       	R0 = R0.B (Z);
ffa01024:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa01026:	08 08       	CC = R0 == R1;
ffa01028:	0b 10       	IF !CC JUMP 0xffa0103e <_audio_out+0x1e2>;
ffa0102a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_g_sampMode> */
ffa0102e:	0a e1 4c 0c 	P2.L = 0xc4c;		/* (3148)	P2=0xff900c4c <_g_sampInc> */
ffa01032:	40 e1 13 10 	R0.H = 0x1013;		/* (4115)	R0=0x10130001(269680641) */
ffa01036:	00 e1 cd ab 	R0.L = 0xabcd;		/* (-21555)	R0=0x1013abcd(269724621) */
ffa0103a:	10 93       	[P2] = R0;
ffa0103c:	1a 20       	JUMP.S 0xffa01070 <_audio_out+0x214>;
ffa0103e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c4c <_g_sampInc> */
ffa01042:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_g_sampMode> */
ffa01046:	50 99       	R0 = B[P2] (X);
ffa01048:	40 43       	R0 = R0.B (Z);
ffa0104a:	10 0c       	CC = R0 == 0x2;
ffa0104c:	0b 10       	IF !CC JUMP 0xffa01062 <_audio_out+0x206>;
ffa0104e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_g_sampMode> */
ffa01052:	0a e1 4c 0c 	P2.L = 0xc4c;		/* (3148)	P2=0xff900c4c <_g_sampInc> */
ffa01056:	40 e1 f1 0f 	R0.H = 0xff1;		/* (4081)	R0=0xff1abcd(267496397) */
ffa0105a:	00 e1 21 43 	R0.L = 0x4321;		/* (17185)	R0=0xff14321(267469601) */
ffa0105e:	10 93       	[P2] = R0;
ffa01060:	08 20       	JUMP.S 0xffa01070 <_audio_out+0x214>;
ffa01062:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c4c <_g_sampInc> */
ffa01066:	0a e1 4c 0c 	P2.L = 0xc4c;		/* (3148)	P2=0xff900c4c <_g_sampInc> */
ffa0106a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0106c:	e0 4f       	R0 <<= 0x1c;
ffa0106e:	10 93       	[P2] = R0;
ffa01070:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c4c <_g_sampInc> */
ffa01074:	0a e1 6c 0c 	P2.L = 0xc6c;		/* (3180)	P2=0xff900c6c <_g_sampOff> */
ffa01078:	11 91       	R1 = [P2];
ffa0107a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c6c <_g_sampOff> */
ffa0107e:	0a e1 4c 0c 	P2.L = 0xc4c;		/* (3148)	P2=0xff900c4c <_g_sampInc> */
ffa01082:	10 91       	R0 = [P2];
ffa01084:	01 50       	R0 = R1 + R0;
ffa01086:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c4c <_g_sampInc> */
ffa0108a:	0a e1 6c 0c 	P2.L = 0xc6c;		/* (3180)	P2=0xff900c6c <_g_sampOff> */
ffa0108e:	10 93       	[P2] = R0;
ffa01090:	19 20       	JUMP.S 0xffa010c2 <_audio_out+0x266>;
ffa01092:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c6c <_g_sampOff> */
ffa01096:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_g_sampR> */
ffa0109a:	10 91       	R0 = [P2];
ffa0109c:	10 64       	R0 += 0x2;		/* (  2) */
ffa0109e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_g_sampR> */
ffa010a2:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_g_sampR> */
ffa010a6:	10 93       	[P2] = R0;
ffa010a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_g_sampR> */
ffa010ac:	0a e1 6c 0c 	P2.L = 0xc6c;		/* (3180)	P2=0xff900c6c <_g_sampOff> */
ffa010b0:	11 91       	R1 = [P2];
ffa010b2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa010b4:	e0 4f       	R0 <<= 0x1c;
ffa010b6:	01 50       	R0 = R1 + R0;
ffa010b8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c6c <_g_sampOff> */
ffa010bc:	0a e1 6c 0c 	P2.L = 0xc6c;		/* (3180)	P2=0xff900c6c <_g_sampOff> */
ffa010c0:	10 93       	[P2] = R0;
ffa010c2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c6c <_g_sampOff> */
ffa010c6:	0a e1 6c 0c 	P2.L = 0xc6c;		/* (3180)	P2=0xff900c6c <_g_sampOff> */
ffa010ca:	10 91       	R0 = [P2];
ffa010cc:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa010ce:	e1 4f       	R1 <<= 0x1c;
ffa010d0:	08 0a       	CC = R0 <= R1 (IU);
ffa010d2:	e0 13       	IF !CC JUMP 0xffa01092 <_audio_out+0x236>;
ffa010d4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c6c <_g_sampOff> */
ffa010d8:	0a e1 6c 0c 	P2.L = 0xc6c;		/* (3180)	P2=0xff900c6c <_g_sampOff> */
ffa010dc:	11 91       	R1 = [P2];
ffa010de:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa010e0:	40 e1 ff 0f 	R0.H = 0xfff;		/* (4095)	R0=0xfffffff(268435455) */
ffa010e4:	01 54       	R0 = R1 & R0;
ffa010e6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c6c <_g_sampOff> */
ffa010ea:	0a e1 6c 0c 	P2.L = 0xc6c;		/* (3180)	P2=0xff900c6c <_g_sampOff> */
ffa010ee:	10 93       	[P2] = R0;
ffa010f0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c6c <_g_sampOff> */
ffa010f4:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_g_sampCh> */
ffa010f8:	50 99       	R0 = B[P2] (X);
ffa010fa:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa010fc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_g_sampCh> */
ffa01100:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_g_sampCh> */
ffa01104:	10 9b       	B[P2] = R0;
ffa01106:	01 e8 00 00 	UNLINK;
ffa0110a:	72 90       	P2 = [SP++];
ffa0110c:	32 90       	R2 = [SP++];
ffa0110e:	31 90       	R1 = [SP++];
ffa01110:	30 90       	R0 = [SP++];
ffa01112:	26 01       	ASTAT = [SP++];
ffa01114:	11 00       	RTI;
	...

ffa01118 <_main>:
ffa01118:	00 e8 0b 00 	LINK 0x2c;		/* (44) */
ffa0111c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c5c(-4191140) */
ffa01120:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa01124:	20 e1 9c c1 	R0 = -0x3e64 (X);		/*		R0=0xffffc19c(-15972) */
ffa01128:	10 97       	W[P2] = R0;
ffa0112a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa0112e:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa01132:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01134:	10 97       	W[P2] = R0;
ffa01136:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa0113a:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa0113e:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01140:	10 97       	W[P2] = R0;
ffa01142:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa01146:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa0114a:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0114c:	10 97       	W[P2] = R0;
ffa0114e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa01152:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa01156:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa0115a:	10 97       	W[P2] = R0;
ffa0115c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa01160:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa01164:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa01168:	10 97       	W[P2] = R0;
ffa0116a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0116e:	0a e1 04 05 	P2.L = 0x504;		/* (1284)	P2=0xffc00504(-4193020) */
ffa01172:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01174:	10 97       	W[P2] = R0;
ffa01176:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00504(-4193020) */
ffa0117a:	0a e1 04 04 	P2.L = 0x404;		/* (1028)	P2=0xffc00404(-4193276) */
ffa0117e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01180:	10 97       	W[P2] = R0;
ffa01182:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00404(-4193276) */
ffa01186:	0a e1 10 04 	P2.L = 0x410;		/* (1040)	P2=0xffc00410(-4193264) */
ffa0118a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0118c:	10 97       	W[P2] = R0;
ffa0118e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00410(-4193264) */
ffa01192:	0a e1 0c 04 	P2.L = 0x40c;		/* (1036)	P2=0xffc0040c(-4193268) */
ffa01196:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa0119a:	10 97       	W[P2] = R0;
ffa0119c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0040c(-4193268) */
ffa011a0:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa011a4:	20 e1 88 00 	R0 = 0x88 (X);		/*		R0=0x88(136) */
ffa011a8:	10 97       	W[P2] = R0;
ffa011aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa011ae:	0a e1 04 04 	P2.L = 0x404;		/* (1028)	P2=0xffc00404(-4193276) */
ffa011b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa011b4:	10 97       	W[P2] = R0;
ffa011b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00404(-4193276) */
ffa011ba:	0a e1 0c 04 	P2.L = 0x40c;		/* (1036)	P2=0xffc0040c(-4193268) */
ffa011be:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa011c0:	10 97       	W[P2] = R0;
ffa011c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0040c(-4193268) */
ffa011c6:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa011ca:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa011cc:	10 97       	W[P2] = R0;
ffa011ce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900424 */
ffa011d2:	0a e1 90 0e 	P2.L = 0xe90;		/* (3728)	P2=0xff900e90 <_printf_temp> */
ffa011d6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa011d8:	b8 4f       	R0 <<= 0x17;
ffa011da:	10 93       	[P2] = R0;
ffa011dc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e90 <_printf_temp> */
ffa011e0:	0a e1 94 0e 	P2.L = 0xe94;		/* (3732)	P2=0xff900e94 <_printf_out> */
ffa011e4:	20 e1 01 e0 	R0 = -0x1fff (X);		/*		R0=0xffffe001(-8191) */
ffa011e8:	50 4f       	R0 <<= 0xa;
ffa011ea:	10 93       	[P2] = R0;
ffa011ec:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90e001(-7282687) */
ffa011f0:	00 e1 84 00 	R0.L = 0x84;		/* (132)	R0=0xff900084(-7339900) */
ffa011f4:	21 e1 80 01 	R1 = 0x180 (X);		/*		R1=0x180(384) */
ffa011f8:	00 e3 80 02 	CALL 0xffa016f8 <_printf_int>;
ffa011fc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900084(-7339900) */
ffa01200:	00 e1 94 00 	R0.L = 0x94;		/* (148)	R0=0xff900094(-7339884) */
ffa01204:	00 e3 70 02 	CALL 0xffa016e4 <_printf_str>;
ffa01208:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900094(-7339884) */
ffa0120c:	00 e1 98 00 	R0.L = 0x98;		/* (152)	R0=0xff900098(-7339880) */
ffa01210:	00 e3 6a 02 	CALL 0xffa016e4 <_printf_str>;
ffa01214:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01216:	80 bb       	[FP -0x20] = R0;
ffa01218:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0121a:	90 bb       	[FP -0x1c] = R0;
ffa0121c:	20 20       	JUMP.S 0xffa0125c <_main+0x144>;
ffa0121e:	8a b9       	P2 = [FP -0x20];
ffa01220:	20 e1 ca de 	R0 = -0x2136 (X);		/*		R0=0xffffdeca(-8502) */
ffa01224:	10 97       	W[P2] = R0;
ffa01226:	80 b9       	R0 = [FP -0x20];
ffa01228:	10 64       	R0 += 0x2;		/* (  2) */
ffa0122a:	80 bb       	[FP -0x20] = R0;
ffa0122c:	8a b9       	P2 = [FP -0x20];
ffa0122e:	20 e1 ad fb 	R0 = -0x453 (X);		/*		R0=0xfffffbad(-1107) */
ffa01232:	10 97       	W[P2] = R0;
ffa01234:	80 b9       	R0 = [FP -0x20];
ffa01236:	10 64       	R0 += 0x2;		/* (  2) */
ffa01238:	80 bb       	[FP -0x20] = R0;
ffa0123a:	8a b9       	P2 = [FP -0x20];
ffa0123c:	20 e1 ed c0 	R0 = -0x3f13 (X);		/*		R0=0xffffc0ed(-16147) */
ffa01240:	10 97       	W[P2] = R0;
ffa01242:	80 b9       	R0 = [FP -0x20];
ffa01244:	10 64       	R0 += 0x2;		/* (  2) */
ffa01246:	80 bb       	[FP -0x20] = R0;
ffa01248:	8a b9       	P2 = [FP -0x20];
ffa0124a:	20 e1 be ba 	R0 = -0x4542 (X);		/*		R0=0xffffbabe(-17730) */
ffa0124e:	10 97       	W[P2] = R0;
ffa01250:	80 b9       	R0 = [FP -0x20];
ffa01252:	10 64       	R0 += 0x2;		/* (  2) */
ffa01254:	80 bb       	[FP -0x20] = R0;
ffa01256:	90 b9       	R0 = [FP -0x1c];
ffa01258:	08 64       	R0 += 0x1;		/* (  1) */
ffa0125a:	90 bb       	[FP -0x1c] = R0;
ffa0125c:	90 b9       	R0 = [FP -0x1c];
ffa0125e:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa01260:	41 e1 3f 00 	R1.H = 0x3f;		/* ( 63)	R1=0x3fffff(4194303) */
ffa01264:	08 09       	CC = R0 <= R1;
ffa01266:	dc 1b       	IF CC JUMP 0xffa0121e <_main+0x106>;
ffa01268:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0126a:	80 bb       	[FP -0x20] = R0;
ffa0126c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0126e:	90 bb       	[FP -0x1c] = R0;
ffa01270:	62 20       	JUMP.S 0xffa01334 <_main+0x21c>;
ffa01272:	8a b9       	P2 = [FP -0x20];
ffa01274:	50 95       	R0 = W[P2] (X);
ffa01276:	78 e6 f4 ff 	W[FP + -0x18] = R0;
ffa0127a:	80 b9       	R0 = [FP -0x20];
ffa0127c:	10 64       	R0 += 0x2;		/* (  2) */
ffa0127e:	80 bb       	[FP -0x20] = R0;
ffa01280:	78 e4 f4 ff 	R0 = W[FP + -0x18] (Z);
ffa01284:	81 e1 ca de 	R1 = 0xdeca (Z);		/*		R1=0xdeca(57034) */
ffa01288:	08 08       	CC = R0 == R1;
ffa0128a:	16 18       	IF CC JUMP 0xffa012b6 <_main+0x19e>;
ffa0128c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01290:	00 e1 ac 00 	R0.L = 0xac;		/* (172)	R0=0xff9000ac(-7339860) */
ffa01294:	91 b9       	R1 = [FP -0x1c];
ffa01296:	00 e3 07 03 	CALL 0xffa018a4 <_printf_hex>;
ffa0129a:	79 e4 f4 ff 	R1 = W[FP + -0x18] (Z);
ffa0129e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000ac(-7339860) */
ffa012a2:	00 e1 b8 00 	R0.L = 0xb8;		/* (184)	R0=0xff9000b8(-7339848) */
ffa012a6:	00 e3 ff 02 	CALL 0xffa018a4 <_printf_hex>;
ffa012aa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000b8(-7339848) */
ffa012ae:	00 e1 94 00 	R0.L = 0x94;		/* (148)	R0=0xff900094(-7339884) */
ffa012b2:	00 e3 19 02 	CALL 0xffa016e4 <_printf_str>;
ffa012b6:	8a b9       	P2 = [FP -0x20];
ffa012b8:	50 95       	R0 = W[P2] (X);
ffa012ba:	78 e6 f4 ff 	W[FP + -0x18] = R0;
ffa012be:	80 b9       	R0 = [FP -0x20];
ffa012c0:	10 64       	R0 += 0x2;		/* (  2) */
ffa012c2:	80 bb       	[FP -0x20] = R0;
ffa012c4:	78 e4 f4 ff 	R0 = W[FP + -0x18] (Z);
ffa012c8:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa012cc:	08 08       	CC = R0 == R1;
ffa012ce:	08 18       	IF CC JUMP 0xffa012de <_main+0x1c6>;
ffa012d0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900094(-7339884) */
ffa012d4:	00 e1 ac 00 	R0.L = 0xac;		/* (172)	R0=0xff9000ac(-7339860) */
ffa012d8:	91 b9       	R1 = [FP -0x1c];
ffa012da:	00 e3 e5 02 	CALL 0xffa018a4 <_printf_hex>;
ffa012de:	8a b9       	P2 = [FP -0x20];
ffa012e0:	50 95       	R0 = W[P2] (X);
ffa012e2:	78 e6 f4 ff 	W[FP + -0x18] = R0;
ffa012e6:	80 b9       	R0 = [FP -0x20];
ffa012e8:	10 64       	R0 += 0x2;		/* (  2) */
ffa012ea:	80 bb       	[FP -0x20] = R0;
ffa012ec:	78 e4 f4 ff 	R0 = W[FP + -0x18] (Z);
ffa012f0:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa012f4:	08 08       	CC = R0 == R1;
ffa012f6:	08 18       	IF CC JUMP 0xffa01306 <_main+0x1ee>;
ffa012f8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000ac(-7339860) */
ffa012fc:	00 e1 ac 00 	R0.L = 0xac;		/* (172)	R0=0xff9000ac(-7339860) */
ffa01300:	91 b9       	R1 = [FP -0x1c];
ffa01302:	00 e3 d1 02 	CALL 0xffa018a4 <_printf_hex>;
ffa01306:	8a b9       	P2 = [FP -0x20];
ffa01308:	50 95       	R0 = W[P2] (X);
ffa0130a:	78 e6 f4 ff 	W[FP + -0x18] = R0;
ffa0130e:	80 b9       	R0 = [FP -0x20];
ffa01310:	10 64       	R0 += 0x2;		/* (  2) */
ffa01312:	80 bb       	[FP -0x20] = R0;
ffa01314:	78 e4 f4 ff 	R0 = W[FP + -0x18] (Z);
ffa01318:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa0131c:	08 08       	CC = R0 == R1;
ffa0131e:	08 18       	IF CC JUMP 0xffa0132e <_main+0x216>;
ffa01320:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000ac(-7339860) */
ffa01324:	00 e1 ac 00 	R0.L = 0xac;		/* (172)	R0=0xff9000ac(-7339860) */
ffa01328:	91 b9       	R1 = [FP -0x1c];
ffa0132a:	00 e3 bd 02 	CALL 0xffa018a4 <_printf_hex>;
ffa0132e:	90 b9       	R0 = [FP -0x1c];
ffa01330:	08 64       	R0 += 0x1;		/* (  1) */
ffa01332:	90 bb       	[FP -0x1c] = R0;
ffa01334:	90 b9       	R0 = [FP -0x1c];
ffa01336:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa01338:	41 e1 3f 00 	R1.H = 0x3f;		/* ( 63)	R1=0x3fffff(4194303) */
ffa0133c:	08 09       	CC = R0 <= R1;
ffa0133e:	9a 1b       	IF CC JUMP 0xffa01272 <_main+0x15a>;
ffa01340:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000ac(-7339860) */
ffa01344:	00 e1 c0 00 	R0.L = 0xc0;		/* (192)	R0=0xff9000c0(-7339840) */
ffa01348:	00 e3 ce 01 	CALL 0xffa016e4 <_printf_str>;
ffa0134c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e94(-4190572) */
ffa01350:	0a e1 84 06 	P2.L = 0x684;		/* (1668)	P2=0xffc00684(-4192636) */
ffa01354:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01356:	10 97       	W[P2] = R0;
ffa01358:	24 00       	SSYNC;
ffa0135a:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800684 */
ffa0135e:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa01362:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01364:	10 93       	[P2] = R0;
ffa01366:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa0136a:	0a e1 50 06 	P2.L = 0x650;		/* (1616)	P2=0xffc00650(-4192688) */
ffa0136e:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa01372:	10 97       	W[P2] = R0;
ffa01374:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00650(-4192688) */
ffa01378:	0a e1 58 06 	P2.L = 0x658;		/* (1624)	P2=0xffc00658(-4192680) */
ffa0137c:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x30059(196697) */
ffa01380:	00 e1 8a a9 	R0.L = 0xa98a;		/* (-22134)	R0=0x3a98a(240010) */
ffa01384:	10 93       	[P2] = R0;
ffa01386:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00658(-4192680) */
ffa0138a:	0a e1 5c 06 	P2.L = 0x65c;		/* (1628)	P2=0xffc0065c(-4192676) */
ffa0138e:	80 e1 65 ea 	R0 = 0xea65 (Z);		/*		R0=0xea65(60005) */
ffa01392:	08 4f       	R0 <<= 0x1;
ffa01394:	10 93       	[P2] = R0;
ffa01396:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0050c(-4193012) */
ffa0139a:	09 e1 80 06 	P1.L = 0x680;		/* (1664)	P1=0xffc00680(-4192640) */
ffa0139e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0065c(-4192676) */
ffa013a2:	0a e1 80 06 	P2.L = 0x680;		/* (1664)	P2=0xffc00680(-4192640) */
ffa013a6:	50 95       	R0 = W[P2] (X);
ffa013a8:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa013aa:	08 97       	W[P1] = R0;
ffa013ac:	00 e3 d2 0a 	CALL 0xffa02950 <_bfin_EMAC_init>;
ffa013b0:	b0 bb       	[FP -0x14] = R0;
ffa013b2:	b0 b9       	R0 = [FP -0x14];
ffa013b4:	00 0c       	CC = R0 == 0x0;
ffa013b6:	03 10       	IF !CC JUMP 0xffa013bc <_main+0x2a4>;
ffa013b8:	00 e3 dc 15 	CALL 0xffa03f70 <_DHCP_req>;
ffa013bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00680(-4192640) */
ffa013c0:	0a e1 00 32 	P2.L = 0x3200;		/* (12800)	P2=0xffc03200(-4181504) */
ffa013c4:	20 e1 83 38 	R0 = 0x3883 (X);		/*		R0=0x3883(14467) */
ffa013c8:	10 97       	W[P2] = R0;
ffa013ca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03200(-4181504) */
ffa013ce:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa013d2:	20 e1 56 fe 	R0 = -0x1aa (X);		/*		R0=0xfffffe56(-426) */
ffa013d6:	10 97       	W[P2] = R0;
ffa013d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa013dc:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa013e0:	20 e1 ab 01 	R0 = 0x1ab (X);		/*		R0=0x1ab(427) */
ffa013e4:	10 97       	W[P2] = R0;
ffa013e6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa013ea:	0a e1 10 32 	P2.L = 0x3210;		/* (12816)	P2=0xffc03210(-4181488) */
ffa013ee:	20 e1 40 01 	R0 = 0x140 (X);		/*		R0=0x140(320) */
ffa013f2:	10 97       	W[P2] = R0;
ffa013f4:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00680(-4192640) */
ffa013f8:	09 e1 40 15 	P1.L = 0x1540;		/* (5440)	P1=0xffc01540(-4188864) */
ffa013fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03210(-4181488) */
ffa01400:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa01404:	51 95       	R1 = W[P2] (X);
ffa01406:	e8 63       	R0 = -0x3 (X);		/*		R0=0xfffffffd( -3) */
ffa01408:	01 54       	R0 = R1 & R0;
ffa0140a:	08 97       	W[P1] = R0;
ffa0140c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc01540(-4188864) */
ffa01410:	09 e1 30 15 	P1.L = 0x1530;		/* (5424)	P1=0xffc01530(-4188880) */
ffa01414:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa01418:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa0141c:	50 95       	R0 = W[P2] (X);
ffa0141e:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa01420:	08 97       	W[P1] = R0;
ffa01422:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc01530(-4188880) */
ffa01426:	09 e1 04 32 	P1.L = 0x3204;		/* (12804)	P1=0xffc03204(-4181500) */
ffa0142a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa0142e:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa01432:	51 95       	R1 = W[P2] (X);
ffa01434:	e8 63       	R0 = -0x3 (X);		/*		R0=0xfffffffd( -3) */
ffa01436:	01 54       	R0 = R1 & R0;
ffa01438:	08 97       	W[P1] = R0;
ffa0143a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fffd(-7274499) */
ffa0143e:	00 e1 d4 00 	R0.L = 0xd4;		/* (212)	R0=0xff9000d4(-7339820) */
ffa01442:	00 e3 51 01 	CALL 0xffa016e4 <_printf_str>;
ffa01446:	00 e3 e5 16 	CALL 0xffa04210 <_bridge_publish>;
ffa0144a:	b8 e6 f3 ff 	B[FP + -0xd] = R0;
ffa0144e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01450:	d0 bb       	[FP -0xc] = R0;
ffa01452:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903204 */
ffa01456:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_wrptr> */
ffa0145a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0145c:	10 93       	[P2] = R0;
ffa0145e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c44 <_wrptr> */
ffa01462:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_trptr> */
ffa01466:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01468:	10 93       	[P2] = R0;
ffa0146a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_trptr> */
ffa0146e:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_g_dropped> */
ffa01472:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01474:	10 93       	[P2] = R0;
ffa01476:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_g_dropped> */
ffa0147a:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_nextFlag> */
ffa0147e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01480:	10 93       	[P2] = R0;
ffa01482:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01486:	00 e1 ec 00 	R0.L = 0xec;		/* (236)	R0=0xff9000ec(-7339796) */
ffa0148a:	00 e3 2d 01 	CALL 0xffa016e4 <_printf_str>;
ffa0148e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c38(-4191176) */
ffa01492:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01496:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa0149a:	10 97       	W[P2] = R0;
ffa0149c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa014a0:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa014a4:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa014a8:	10 97       	W[P2] = R0;
ffa014aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa014ae:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa014b2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa014b4:	10 97       	W[P2] = R0;
ffa014b6:	24 00       	SSYNC;
ffa014b8:	ba e4 f3 ff 	R2 = B[FP + -0xd] (Z);
ffa014bc:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa014be:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa014c0:	ff e3 0a f8 	CALL 0xffa004d4 <_radio_init>;
ffa014c4:	ba e4 f3 ff 	R2 = B[FP + -0xd] (Z);
ffa014c8:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa014cc:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa014ce:	ff e3 03 f8 	CALL 0xffa004d4 <_radio_init>;
ffa014d2:	ba e4 f3 ff 	R2 = B[FP + -0xd] (Z);
ffa014d6:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa014da:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa014de:	ff e3 fb f7 	CALL 0xffa004d4 <_radio_init>;
ffa014e2:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa014e4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa014e6:	ff e3 a7 f7 	CALL 0xffa00434 <_radio_set_rx>;
ffa014ea:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa014ee:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa014f0:	ff e3 a2 f7 	CALL 0xffa00434 <_radio_set_rx>;
ffa014f4:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa014f8:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa014fc:	ff e3 9c f7 	CALL 0xffa00434 <_radio_set_rx>;
ffa01500:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01502:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa01506:	81 20       	JUMP.S 0xffa01608 <_main+0x4f0>;
ffa01508:	b0 b9       	R0 = [FP -0x14];
ffa0150a:	ff e3 89 f8 	CALL 0xffa0061c <_eth_listen>;
ffa0150e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01512:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa01516:	50 95       	R0 = W[P2] (X);
ffa01518:	c1 42       	R1 = R0.L (Z);
ffa0151a:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0151c:	01 54       	R0 = R1 & R0;
ffa0151e:	00 0c       	CC = R0 == 0x0;
ffa01520:	0b 10       	IF !CC JUMP 0xffa01536 <_main+0x41e>;
ffa01522:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa01526:	42 43       	R2 = R0.B (Z);
ffa01528:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0152a:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa0152c:	ff e3 62 fa 	CALL 0xffa009f0 <_getRadioPacket>;
ffa01530:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01532:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa01536:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa0153a:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa0153e:	50 95       	R0 = W[P2] (X);
ffa01540:	c1 42       	R1 = R0.L (Z);
ffa01542:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01544:	01 54       	R0 = R1 & R0;
ffa01546:	00 0c       	CC = R0 == 0x0;
ffa01548:	0c 10       	IF !CC JUMP 0xffa01560 <_main+0x448>;
ffa0154a:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0154e:	42 43       	R2 = R0.B (Z);
ffa01550:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01554:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa01556:	ff e3 4d fa 	CALL 0xffa009f0 <_getRadioPacket>;
ffa0155a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0155c:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa01560:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa01564:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa01568:	50 95       	R0 = W[P2] (X);
ffa0156a:	c1 42       	R1 = R0.L (Z);
ffa0156c:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa01570:	01 54       	R0 = R1 & R0;
ffa01572:	00 0c       	CC = R0 == 0x0;
ffa01574:	0d 10       	IF !CC JUMP 0xffa0158e <_main+0x476>;
ffa01576:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0157a:	42 43       	R2 = R0.B (Z);
ffa0157c:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01580:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa01584:	ff e3 36 fa 	CALL 0xffa009f0 <_getRadioPacket>;
ffa01588:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0158a:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa0158e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa01592:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa01596:	50 95       	R0 = W[P2] (X);
ffa01598:	c1 42       	R1 = R0.L (Z);
ffa0159a:	20 e1 28 01 	R0 = 0x128 (X);		/*		R0=0x128(296) */
ffa0159e:	01 54       	R0 = R1 & R0;
ffa015a0:	21 e1 28 01 	R1 = 0x128 (X);		/*		R1=0x128(296) */
ffa015a4:	08 08       	CC = R0 == R1;
ffa015a6:	04 10       	IF !CC JUMP 0xffa015ae <_main+0x496>;
ffa015a8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa015aa:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa015ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00700(-4192512) */
ffa015b2:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa015b6:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa015ba:	10 97       	W[P2] = R0;
ffa015bc:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800708 */
ffa015c0:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa015c4:	11 91       	R1 = [P2];
ffa015c6:	40 e1 62 10 	R0.H = 0x1062;		/* (4194)	R0=0x10620250(274858576) */
ffa015ca:	00 e1 d3 4d 	R0.L = 0x4dd3;		/* (19923)	R0=0x10624dd3(274877907) */
ffa015ce:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa015d2:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa015d6:	81 c0 08 86 	A1 += R1.H * R0.L, A0 = R1.H * R0.H (FU);
ffa015da:	81 c0 01 98 	A1 += R0.H * R1.L (FU);
ffa015de:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa015e2:	0b c4 00 80 	A0 += A1;
ffa015e6:	8b c0 00 38 	R0 = A0 (FU);
ffa015ea:	28 4e       	R0 >>= 0x5;
ffa015ec:	e0 bb       	[FP -0x8] = R0;
ffa015ee:	e1 b9       	R1 = [FP -0x8];
ffa015f0:	d0 b9       	R0 = [FP -0xc];
ffa015f2:	01 08       	CC = R1 == R0;
ffa015f4:	0a 18       	IF CC JUMP 0xffa01608 <_main+0x4f0>;
ffa015f6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa015fa:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa015fe:	20 e1 00 80 	R0 = -0x8000 (X);		/*		R0=0xffff8000(-32768) */
ffa01602:	10 97       	W[P2] = R0;
ffa01604:	e0 b9       	R0 = [FP -0x8];
ffa01606:	d0 bb       	[FP -0xc] = R0;
ffa01608:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90070c */
ffa0160c:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xff900c68 <_g_streamEnabled> */
ffa01610:	50 99       	R0 = B[P2] (X);
ffa01612:	40 43       	R0 = R0.B (Z);
ffa01614:	00 0c       	CC = R0 == 0x0;
ffa01616:	79 13       	IF !CC JUMP 0xffa01508 <_main+0x3f0>;
ffa01618:	11 2f       	JUMP.S 0xffa0143a <_main+0x322>;
	...

ffa0161c <_uart_str>:
ffa0161c:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa01620:	b8 b0       	[FP + 0x8] = R0;
ffa01622:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01624:	e0 bb       	[FP -0x8] = R0;
ffa01626:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c68(-4191128) */
ffa0162a:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa0162e:	50 95       	R0 = W[P2] (X);
ffa01630:	c0 42       	R0 = R0.L (Z);
ffa01632:	08 0c       	CC = R0 == 0x1;
ffa01634:	53 10       	IF !CC JUMP 0xffa016da <_uart_str+0xbe>;
ffa01636:	48 20       	JUMP.S 0xffa016c6 <_uart_str+0xaa>;
ffa01638:	ba ac       	P2 = [FP + 0x8];
ffa0163a:	50 99       	R0 = B[P2] (X);
ffa0163c:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa01640:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa01644:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01646:	08 08       	CC = R0 == R1;
ffa01648:	26 10       	IF !CC JUMP 0xffa01694 <_uart_str+0x78>;
ffa0164a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa0164e:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa01652:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01654:	10 97       	W[P2] = R0;
ffa01656:	02 20       	JUMP.S 0xffa0165a <_uart_str+0x3e>;
ffa01658:	00 00       	NOP;
ffa0165a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa0165e:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa01662:	50 95       	R0 = W[P2] (X);
ffa01664:	c1 42       	R1 = R0.L (Z);
ffa01666:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01668:	01 54       	R0 = R1 & R0;
ffa0166a:	00 0c       	CC = R0 == 0x0;
ffa0166c:	f6 1b       	IF CC JUMP 0xffa01658 <_uart_str+0x3c>;
ffa0166e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa01672:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa01676:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa01678:	10 97       	W[P2] = R0;
ffa0167a:	02 20       	JUMP.S 0xffa0167e <_uart_str+0x62>;
ffa0167c:	00 00       	NOP;
ffa0167e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa01682:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa01686:	50 95       	R0 = W[P2] (X);
ffa01688:	c1 42       	R1 = R0.L (Z);
ffa0168a:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0168c:	01 54       	R0 = R1 & R0;
ffa0168e:	00 0c       	CC = R0 == 0x0;
ffa01690:	f6 1b       	IF CC JUMP 0xffa0167c <_uart_str+0x60>;
ffa01692:	14 20       	JUMP.S 0xffa016ba <_uart_str+0x9e>;
ffa01694:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa01698:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa0169c:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa016a0:	10 97       	W[P2] = R0;
ffa016a2:	02 20       	JUMP.S 0xffa016a6 <_uart_str+0x8a>;
ffa016a4:	00 00       	NOP;
ffa016a6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa016aa:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa016ae:	50 95       	R0 = W[P2] (X);
ffa016b0:	c1 42       	R1 = R0.L (Z);
ffa016b2:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa016b4:	01 54       	R0 = R1 & R0;
ffa016b6:	00 0c       	CC = R0 == 0x0;
ffa016b8:	f6 1b       	IF CC JUMP 0xffa016a4 <_uart_str+0x88>;
ffa016ba:	b8 a0       	R0 = [FP + 0x8];
ffa016bc:	08 64       	R0 += 0x1;		/* (  1) */
ffa016be:	b8 b0       	[FP + 0x8] = R0;
ffa016c0:	e0 b9       	R0 = [FP -0x8];
ffa016c2:	08 64       	R0 += 0x1;		/* (  1) */
ffa016c4:	e0 bb       	[FP -0x8] = R0;
ffa016c6:	ba ac       	P2 = [FP + 0x8];
ffa016c8:	50 99       	R0 = B[P2] (X);
ffa016ca:	00 43       	R0 = R0.B (X);
ffa016cc:	00 0c       	CC = R0 == 0x0;
ffa016ce:	06 18       	IF CC JUMP 0xffa016da <_uart_str+0xbe>;
ffa016d0:	e0 b9       	R0 = [FP -0x8];
ffa016d2:	21 e1 ff 03 	R1 = 0x3ff (X);		/*		R1=0x3ff(1023) */
ffa016d6:	08 09       	CC = R0 <= R1;
ffa016d8:	b0 1b       	IF CC JUMP 0xffa01638 <_uart_str+0x1c>;
ffa016da:	e0 b9       	R0 = [FP -0x8];
ffa016dc:	01 e8 00 00 	UNLINK;
ffa016e0:	10 00       	RTS;
	...

ffa016e4 <_printf_str>:
ffa016e4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa016e8:	b8 b0       	[FP + 0x8] = R0;
ffa016ea:	b8 a0       	R0 = [FP + 0x8];
ffa016ec:	ff e3 98 ff 	CALL 0xffa0161c <_uart_str>;
ffa016f0:	01 e8 00 00 	UNLINK;
ffa016f4:	10 00       	RTS;
	...

ffa016f8 <_printf_int>:
ffa016f8:	00 e8 09 00 	LINK 0x24;		/* (36) */
ffa016fc:	b8 b0       	[FP + 0x8] = R0;
ffa016fe:	f9 b0       	[FP + 0xc] = R1;
ffa01700:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01702:	c0 bb       	[FP -0x10] = R0;
ffa01704:	f8 a0       	R0 = [FP + 0xc];
ffa01706:	00 0c       	CC = R0 == 0x0;
ffa01708:	0b 10       	IF !CC JUMP 0xffa0171e <_printf_int+0x26>;
ffa0170a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900414 */
ffa0170e:	0a e1 90 0e 	P2.L = 0xe90;		/* (3728)	P2=0xff900e90 <_printf_temp> */
ffa01712:	52 91       	P2 = [P2];
ffa01714:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01716:	10 9b       	B[P2] = R0;
ffa01718:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0171a:	c0 bb       	[FP -0x10] = R0;
ffa0171c:	62 20       	JUMP.S 0xffa017e0 <_printf_int+0xe8>;
ffa0171e:	f8 a0       	R0 = [FP + 0xc];
ffa01720:	00 0d       	CC = R0 <= 0x0;
ffa01722:	25 18       	IF CC JUMP 0xffa0176c <_printf_int+0x74>;
ffa01724:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01726:	c0 bb       	[FP -0x10] = R0;
ffa01728:	19 20       	JUMP.S 0xffa0175a <_printf_int+0x62>;
ffa0172a:	f8 a0       	R0 = [FP + 0xc];
ffa0172c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0172e:	00 e3 5b 02 	CALL 0xffa01be4 <_mod>;
ffa01732:	d0 bb       	[FP -0xc] = R0;
ffa01734:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e90 <_printf_temp> */
ffa01738:	0a e1 90 0e 	P2.L = 0xe90;		/* (3728)	P2=0xff900e90 <_printf_temp> */
ffa0173c:	11 91       	R1 = [P2];
ffa0173e:	c0 b9       	R0 = [FP -0x10];
ffa01740:	41 50       	R1 = R1 + R0;
ffa01742:	11 32       	P2 = R1;
ffa01744:	d0 b9       	R0 = [FP -0xc];
ffa01746:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01748:	10 9b       	B[P2] = R0;
ffa0174a:	c0 b9       	R0 = [FP -0x10];
ffa0174c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0174e:	c0 bb       	[FP -0x10] = R0;
ffa01750:	f8 a0       	R0 = [FP + 0xc];
ffa01752:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01754:	00 e3 1e 02 	CALL 0xffa01b90 <_div>;
ffa01758:	f8 b0       	[FP + 0xc] = R0;
ffa0175a:	f8 a0       	R0 = [FP + 0xc];
ffa0175c:	00 0d       	CC = R0 <= 0x0;
ffa0175e:	41 18       	IF CC JUMP 0xffa017e0 <_printf_int+0xe8>;
ffa01760:	c0 b9       	R0 = [FP -0x10];
ffa01762:	21 e1 7f 00 	R1 = 0x7f (X);		/*		R1=0x7f(127) */
ffa01766:	08 09       	CC = R0 <= R1;
ffa01768:	e1 1b       	IF CC JUMP 0xffa0172a <_printf_int+0x32>;
ffa0176a:	3b 20       	JUMP.S 0xffa017e0 <_printf_int+0xe8>;
ffa0176c:	f8 a0       	R0 = [FP + 0xc];
ffa0176e:	80 0c       	CC = R0 < 0x0;
ffa01770:	38 10       	IF !CC JUMP 0xffa017e0 <_printf_int+0xe8>;
ffa01772:	f8 a0       	R0 = [FP + 0xc];
ffa01774:	08 30       	R1 = R0;
ffa01776:	f9 4c       	BITCLR (R1, 0x1f);		/* bit 31 */
ffa01778:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0177a:	f8 4f       	R0 <<= 0x1f;
ffa0177c:	08 52       	R0 = R0 - R1;
ffa0177e:	f8 b0       	[FP + 0xc] = R0;
ffa01780:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01782:	c0 bb       	[FP -0x10] = R0;
ffa01784:	19 20       	JUMP.S 0xffa017b6 <_printf_int+0xbe>;
ffa01786:	f8 a0       	R0 = [FP + 0xc];
ffa01788:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0178a:	00 e3 2d 02 	CALL 0xffa01be4 <_mod>;
ffa0178e:	d0 bb       	[FP -0xc] = R0;
ffa01790:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e90 <_printf_temp> */
ffa01794:	0a e1 90 0e 	P2.L = 0xe90;		/* (3728)	P2=0xff900e90 <_printf_temp> */
ffa01798:	11 91       	R1 = [P2];
ffa0179a:	c0 b9       	R0 = [FP -0x10];
ffa0179c:	41 50       	R1 = R1 + R0;
ffa0179e:	11 32       	P2 = R1;
ffa017a0:	d0 b9       	R0 = [FP -0xc];
ffa017a2:	80 65       	R0 += 0x30;		/* ( 48) */
ffa017a4:	10 9b       	B[P2] = R0;
ffa017a6:	c0 b9       	R0 = [FP -0x10];
ffa017a8:	08 64       	R0 += 0x1;		/* (  1) */
ffa017aa:	c0 bb       	[FP -0x10] = R0;
ffa017ac:	f8 a0       	R0 = [FP + 0xc];
ffa017ae:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa017b0:	00 e3 f0 01 	CALL 0xffa01b90 <_div>;
ffa017b4:	f8 b0       	[FP + 0xc] = R0;
ffa017b6:	f8 a0       	R0 = [FP + 0xc];
ffa017b8:	00 0d       	CC = R0 <= 0x0;
ffa017ba:	06 18       	IF CC JUMP 0xffa017c6 <_printf_int+0xce>;
ffa017bc:	c0 b9       	R0 = [FP -0x10];
ffa017be:	21 e1 7f 00 	R1 = 0x7f (X);		/*		R1=0x7f(127) */
ffa017c2:	08 09       	CC = R0 <= R1;
ffa017c4:	e1 1b       	IF CC JUMP 0xffa01786 <_printf_int+0x8e>;
ffa017c6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e90 <_printf_temp> */
ffa017ca:	0a e1 90 0e 	P2.L = 0xe90;		/* (3728)	P2=0xff900e90 <_printf_temp> */
ffa017ce:	11 91       	R1 = [P2];
ffa017d0:	c0 b9       	R0 = [FP -0x10];
ffa017d2:	41 50       	R1 = R1 + R0;
ffa017d4:	11 32       	P2 = R1;
ffa017d6:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa017d8:	10 9b       	B[P2] = R0;
ffa017da:	c0 b9       	R0 = [FP -0x10];
ffa017dc:	08 64       	R0 += 0x1;		/* (  1) */
ffa017de:	c0 bb       	[FP -0x10] = R0;
ffa017e0:	b8 a0       	R0 = [FP + 0x8];
ffa017e2:	00 e3 4b 02 	CALL 0xffa01c78 <_strlen_>;
ffa017e6:	b0 bb       	[FP -0x14] = R0;
ffa017e8:	b1 b9       	R1 = [FP -0x14];
ffa017ea:	c0 b9       	R0 = [FP -0x10];
ffa017ec:	01 50       	R0 = R1 + R0;
ffa017ee:	21 e1 ff 03 	R1 = 0x3ff (X);		/*		R1=0x3ff(1023) */
ffa017f2:	08 09       	CC = R0 <= R1;
ffa017f4:	52 10       	IF !CC JUMP 0xffa01898 <_printf_int+0x1a0>;
ffa017f6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017f8:	f0 bb       	[FP -0x4] = R0;
ffa017fa:	12 20       	JUMP.S 0xffa0181e <_printf_int+0x126>;
ffa017fc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e90 <_printf_temp> */
ffa01800:	0a e1 94 0e 	P2.L = 0xe94;		/* (3732)	P2=0xff900e94 <_printf_out> */
ffa01804:	11 91       	R1 = [P2];
ffa01806:	f0 b9       	R0 = [FP -0x4];
ffa01808:	41 50       	R1 = R1 + R0;
ffa0180a:	09 32       	P1 = R1;
ffa0180c:	ba ac       	P2 = [FP + 0x8];
ffa0180e:	50 99       	R0 = B[P2] (X);
ffa01810:	08 9b       	B[P1] = R0;
ffa01812:	b8 a0       	R0 = [FP + 0x8];
ffa01814:	08 64       	R0 += 0x1;		/* (  1) */
ffa01816:	b8 b0       	[FP + 0x8] = R0;
ffa01818:	f0 b9       	R0 = [FP -0x4];
ffa0181a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0181c:	f0 bb       	[FP -0x4] = R0;
ffa0181e:	f1 b9       	R1 = [FP -0x4];
ffa01820:	b0 b9       	R0 = [FP -0x14];
ffa01822:	81 08       	CC = R1 < R0;
ffa01824:	ec 1b       	IF CC JUMP 0xffa017fc <_printf_int+0x104>;
ffa01826:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01828:	e0 bb       	[FP -0x8] = R0;
ffa0182a:	1c 20       	JUMP.S 0xffa01862 <_printf_int+0x16a>;
ffa0182c:	b1 b9       	R1 = [FP -0x14];
ffa0182e:	e0 b9       	R0 = [FP -0x8];
ffa01830:	01 50       	R0 = R1 + R0;
ffa01832:	08 30       	R1 = R0;
ffa01834:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e94 <_printf_out> */
ffa01838:	0a e1 94 0e 	P2.L = 0xe94;		/* (3732)	P2=0xff900e94 <_printf_out> */
ffa0183c:	10 91       	R0 = [P2];
ffa0183e:	41 50       	R1 = R1 + R0;
ffa01840:	09 32       	P1 = R1;
ffa01842:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e94 <_printf_out> */
ffa01846:	0a e1 90 0e 	P2.L = 0xe90;		/* (3728)	P2=0xff900e90 <_printf_temp> */
ffa0184a:	12 91       	R2 = [P2];
ffa0184c:	c1 b9       	R1 = [FP -0x10];
ffa0184e:	e0 b9       	R0 = [FP -0x8];
ffa01850:	01 52       	R0 = R1 - R0;
ffa01852:	02 50       	R0 = R2 + R0;
ffa01854:	10 32       	P2 = R0;
ffa01856:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa01858:	50 99       	R0 = B[P2] (X);
ffa0185a:	08 9b       	B[P1] = R0;
ffa0185c:	e0 b9       	R0 = [FP -0x8];
ffa0185e:	08 64       	R0 += 0x1;		/* (  1) */
ffa01860:	e0 bb       	[FP -0x8] = R0;
ffa01862:	e1 b9       	R1 = [FP -0x8];
ffa01864:	c0 b9       	R0 = [FP -0x10];
ffa01866:	81 08       	CC = R1 < R0;
ffa01868:	e2 1b       	IF CC JUMP 0xffa0182c <_printf_int+0x134>;
ffa0186a:	b1 b9       	R1 = [FP -0x14];
ffa0186c:	c0 b9       	R0 = [FP -0x10];
ffa0186e:	01 50       	R0 = R1 + R0;
ffa01870:	08 30       	R1 = R0;
ffa01872:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e90 <_printf_temp> */
ffa01876:	0a e1 94 0e 	P2.L = 0xe94;		/* (3732)	P2=0xff900e94 <_printf_out> */
ffa0187a:	10 91       	R0 = [P2];
ffa0187c:	41 50       	R1 = R1 + R0;
ffa0187e:	11 32       	P2 = R1;
ffa01880:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01882:	10 9b       	B[P2] = R0;
ffa01884:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e94 <_printf_out> */
ffa01888:	0a e1 94 0e 	P2.L = 0xe94;		/* (3732)	P2=0xff900e94 <_printf_out> */
ffa0188c:	10 91       	R0 = [P2];
ffa0188e:	ff e3 c7 fe 	CALL 0xffa0161c <_uart_str>;
ffa01892:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01894:	a0 bb       	[FP -0x18] = R0;
ffa01896:	03 20       	JUMP.S 0xffa0189c <_printf_int+0x1a4>;
ffa01898:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa0189a:	a1 bb       	[FP -0x18] = R1;
ffa0189c:	a0 b9       	R0 = [FP -0x18];
ffa0189e:	01 e8 00 00 	UNLINK;
ffa018a2:	10 00       	RTS;

ffa018a4 <_printf_hex>:
ffa018a4:	00 e8 0a 00 	LINK 0x28;		/* (40) */
ffa018a8:	b8 b0       	[FP + 0x8] = R0;
ffa018aa:	f9 b0       	[FP + 0xc] = R1;
ffa018ac:	b8 a0       	R0 = [FP + 0x8];
ffa018ae:	00 e3 e5 01 	CALL 0xffa01c78 <_strlen_>;
ffa018b2:	a0 bb       	[FP -0x18] = R0;
ffa018b4:	a0 b9       	R0 = [FP -0x18];
ffa018b6:	21 e1 f5 03 	R1 = 0x3f5 (X);		/*		R1=0x3f5(1013) */
ffa018ba:	08 09       	CC = R0 <= R1;
ffa018bc:	8f 10       	IF !CC JUMP 0xffa019da <_printf_hex+0x136>;
ffa018be:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018c0:	f0 bb       	[FP -0x4] = R0;
ffa018c2:	12 20       	JUMP.S 0xffa018e6 <_printf_hex+0x42>;
ffa018c4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e94 <_printf_out> */
ffa018c8:	0a e1 94 0e 	P2.L = 0xe94;		/* (3732)	P2=0xff900e94 <_printf_out> */
ffa018cc:	11 91       	R1 = [P2];
ffa018ce:	f0 b9       	R0 = [FP -0x4];
ffa018d0:	41 50       	R1 = R1 + R0;
ffa018d2:	09 32       	P1 = R1;
ffa018d4:	ba ac       	P2 = [FP + 0x8];
ffa018d6:	50 99       	R0 = B[P2] (X);
ffa018d8:	08 9b       	B[P1] = R0;
ffa018da:	b8 a0       	R0 = [FP + 0x8];
ffa018dc:	08 64       	R0 += 0x1;		/* (  1) */
ffa018de:	b8 b0       	[FP + 0x8] = R0;
ffa018e0:	f0 b9       	R0 = [FP -0x4];
ffa018e2:	08 64       	R0 += 0x1;		/* (  1) */
ffa018e4:	f0 bb       	[FP -0x4] = R0;
ffa018e6:	f1 b9       	R1 = [FP -0x4];
ffa018e8:	a0 b9       	R0 = [FP -0x18];
ffa018ea:	81 08       	CC = R1 < R0;
ffa018ec:	ec 1b       	IF CC JUMP 0xffa018c4 <_printf_hex+0x20>;
ffa018ee:	a0 b9       	R0 = [FP -0x18];
ffa018f0:	c0 bb       	[FP -0x10] = R0;
ffa018f2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e94 <_printf_out> */
ffa018f6:	0a e1 94 0e 	P2.L = 0xe94;		/* (3732)	P2=0xff900e94 <_printf_out> */
ffa018fa:	11 91       	R1 = [P2];
ffa018fc:	c0 b9       	R0 = [FP -0x10];
ffa018fe:	41 50       	R1 = R1 + R0;
ffa01900:	11 32       	P2 = R1;
ffa01902:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01904:	10 9b       	B[P2] = R0;
ffa01906:	c0 b9       	R0 = [FP -0x10];
ffa01908:	08 64       	R0 += 0x1;		/* (  1) */
ffa0190a:	c0 bb       	[FP -0x10] = R0;
ffa0190c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e94 <_printf_out> */
ffa01910:	0a e1 94 0e 	P2.L = 0xe94;		/* (3732)	P2=0xff900e94 <_printf_out> */
ffa01914:	11 91       	R1 = [P2];
ffa01916:	c0 b9       	R0 = [FP -0x10];
ffa01918:	41 50       	R1 = R1 + R0;
ffa0191a:	11 32       	P2 = R1;
ffa0191c:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01920:	10 9b       	B[P2] = R0;
ffa01922:	c0 b9       	R0 = [FP -0x10];
ffa01924:	08 64       	R0 += 0x1;		/* (  1) */
ffa01926:	c0 bb       	[FP -0x10] = R0;
ffa01928:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0192a:	b0 bb       	[FP -0x14] = R0;
ffa0192c:	30 20       	JUMP.S 0xffa0198c <_printf_hex+0xe8>;
ffa0192e:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa01930:	b0 b9       	R0 = [FP -0x14];
ffa01932:	01 52       	R0 = R1 - R0;
ffa01934:	82 c6 10 82 	R1 = R0 << 0x2;
ffa01938:	f8 a0       	R0 = [FP + 0xc];
ffa0193a:	08 40       	R0 >>>= R1;
ffa0193c:	d0 bb       	[FP -0xc] = R0;
ffa0193e:	d0 b9       	R0 = [FP -0xc];
ffa01940:	08 30       	R1 = R0;
ffa01942:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa01944:	01 54       	R0 = R1 & R0;
ffa01946:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa0194a:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa0194e:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa01950:	08 09       	CC = R0 <= R1;
ffa01952:	07 18       	IF CC JUMP 0xffa01960 <_printf_hex+0xbc>;
ffa01954:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa01958:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa0195a:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa0195e:	06 20       	JUMP.S 0xffa0196a <_printf_hex+0xc6>;
ffa01960:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa01964:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01966:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa0196a:	c1 b9       	R1 = [FP -0x10];
ffa0196c:	b0 b9       	R0 = [FP -0x14];
ffa0196e:	01 50       	R0 = R1 + R0;
ffa01970:	08 30       	R1 = R0;
ffa01972:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e94 <_printf_out> */
ffa01976:	0a e1 94 0e 	P2.L = 0xe94;		/* (3732)	P2=0xff900e94 <_printf_out> */
ffa0197a:	10 91       	R0 = [P2];
ffa0197c:	41 50       	R1 = R1 + R0;
ffa0197e:	11 32       	P2 = R1;
ffa01980:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa01984:	10 9b       	B[P2] = R0;
ffa01986:	b0 b9       	R0 = [FP -0x14];
ffa01988:	08 64       	R0 += 0x1;		/* (  1) */
ffa0198a:	b0 bb       	[FP -0x14] = R0;
ffa0198c:	b0 b9       	R0 = [FP -0x14];
ffa0198e:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa01990:	08 09       	CC = R0 <= R1;
ffa01992:	ce 1b       	IF CC JUMP 0xffa0192e <_printf_hex+0x8a>;
ffa01994:	c1 b9       	R1 = [FP -0x10];
ffa01996:	b0 b9       	R0 = [FP -0x14];
ffa01998:	01 50       	R0 = R1 + R0;
ffa0199a:	c0 bb       	[FP -0x10] = R0;
ffa0199c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e94 <_printf_out> */
ffa019a0:	0a e1 94 0e 	P2.L = 0xe94;		/* (3732)	P2=0xff900e94 <_printf_out> */
ffa019a4:	11 91       	R1 = [P2];
ffa019a6:	c0 b9       	R0 = [FP -0x10];
ffa019a8:	41 50       	R1 = R1 + R0;
ffa019aa:	11 32       	P2 = R1;
ffa019ac:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa019ae:	10 9b       	B[P2] = R0;
ffa019b0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e94 <_printf_out> */
ffa019b4:	0a e1 94 0e 	P2.L = 0xe94;		/* (3732)	P2=0xff900e94 <_printf_out> */
ffa019b8:	11 91       	R1 = [P2];
ffa019ba:	c0 b9       	R0 = [FP -0x10];
ffa019bc:	01 50       	R0 = R1 + R0;
ffa019be:	10 32       	P2 = R0;
ffa019c0:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa019c2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa019c4:	10 9b       	B[P2] = R0;
ffa019c6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e94 <_printf_out> */
ffa019ca:	0a e1 94 0e 	P2.L = 0xe94;		/* (3732)	P2=0xff900e94 <_printf_out> */
ffa019ce:	10 91       	R0 = [P2];
ffa019d0:	ff e3 26 fe 	CALL 0xffa0161c <_uart_str>;
ffa019d4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa019d6:	90 bb       	[FP -0x1c] = R0;
ffa019d8:	03 20       	JUMP.S 0xffa019de <_printf_hex+0x13a>;
ffa019da:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa019dc:	91 bb       	[FP -0x1c] = R1;
ffa019de:	90 b9       	R0 = [FP -0x1c];
ffa019e0:	01 e8 00 00 	UNLINK;
ffa019e4:	10 00       	RTS;
	...

ffa019e8 <_printf_hex_byte>:
ffa019e8:	00 e8 0a 00 	LINK 0x28;		/* (40) */
ffa019ec:	b8 b0       	[FP + 0x8] = R0;
ffa019ee:	01 30       	R0 = R1;
ffa019f0:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa019f4:	b8 a0       	R0 = [FP + 0x8];
ffa019f6:	00 e3 41 01 	CALL 0xffa01c78 <_strlen_>;
ffa019fa:	a0 bb       	[FP -0x18] = R0;
ffa019fc:	a0 b9       	R0 = [FP -0x18];
ffa019fe:	21 e1 fb 03 	R1 = 0x3fb (X);		/*		R1=0x3fb(1019) */
ffa01a02:	08 09       	CC = R0 <= R1;
ffa01a04:	85 10       	IF !CC JUMP 0xffa01b0e <_printf_hex_byte+0x126>;
ffa01a06:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a08:	f0 bb       	[FP -0x4] = R0;
ffa01a0a:	12 20       	JUMP.S 0xffa01a2e <_printf_hex_byte+0x46>;
ffa01a0c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e94 <_printf_out> */
ffa01a10:	0a e1 94 0e 	P2.L = 0xe94;		/* (3732)	P2=0xff900e94 <_printf_out> */
ffa01a14:	11 91       	R1 = [P2];
ffa01a16:	f0 b9       	R0 = [FP -0x4];
ffa01a18:	41 50       	R1 = R1 + R0;
ffa01a1a:	09 32       	P1 = R1;
ffa01a1c:	ba ac       	P2 = [FP + 0x8];
ffa01a1e:	50 99       	R0 = B[P2] (X);
ffa01a20:	08 9b       	B[P1] = R0;
ffa01a22:	b8 a0       	R0 = [FP + 0x8];
ffa01a24:	08 64       	R0 += 0x1;		/* (  1) */
ffa01a26:	b8 b0       	[FP + 0x8] = R0;
ffa01a28:	f0 b9       	R0 = [FP -0x4];
ffa01a2a:	08 64       	R0 += 0x1;		/* (  1) */
ffa01a2c:	f0 bb       	[FP -0x4] = R0;
ffa01a2e:	f1 b9       	R1 = [FP -0x4];
ffa01a30:	a0 b9       	R0 = [FP -0x18];
ffa01a32:	81 08       	CC = R1 < R0;
ffa01a34:	ec 1b       	IF CC JUMP 0xffa01a0c <_printf_hex_byte+0x24>;
ffa01a36:	a0 b9       	R0 = [FP -0x18];
ffa01a38:	c0 bb       	[FP -0x10] = R0;
ffa01a3a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e94 <_printf_out> */
ffa01a3e:	0a e1 94 0e 	P2.L = 0xe94;		/* (3732)	P2=0xff900e94 <_printf_out> */
ffa01a42:	11 91       	R1 = [P2];
ffa01a44:	c0 b9       	R0 = [FP -0x10];
ffa01a46:	41 50       	R1 = R1 + R0;
ffa01a48:	11 32       	P2 = R1;
ffa01a4a:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01a4c:	10 9b       	B[P2] = R0;
ffa01a4e:	c0 b9       	R0 = [FP -0x10];
ffa01a50:	08 64       	R0 += 0x1;		/* (  1) */
ffa01a52:	c0 bb       	[FP -0x10] = R0;
ffa01a54:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e94 <_printf_out> */
ffa01a58:	0a e1 94 0e 	P2.L = 0xe94;		/* (3732)	P2=0xff900e94 <_printf_out> */
ffa01a5c:	11 91       	R1 = [P2];
ffa01a5e:	c0 b9       	R0 = [FP -0x10];
ffa01a60:	41 50       	R1 = R1 + R0;
ffa01a62:	11 32       	P2 = R1;
ffa01a64:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01a68:	10 9b       	B[P2] = R0;
ffa01a6a:	c0 b9       	R0 = [FP -0x10];
ffa01a6c:	08 64       	R0 += 0x1;		/* (  1) */
ffa01a6e:	c0 bb       	[FP -0x10] = R0;
ffa01a70:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a72:	b0 bb       	[FP -0x14] = R0;
ffa01a74:	32 20       	JUMP.S 0xffa01ad8 <_printf_hex_byte+0xf0>;
ffa01a76:	ba e4 0c 00 	R2 = B[FP + 0xc] (Z);
ffa01a7a:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01a7c:	b0 b9       	R0 = [FP -0x14];
ffa01a7e:	01 52       	R0 = R1 - R0;
ffa01a80:	10 4f       	R0 <<= 0x2;
ffa01a82:	0a 30       	R1 = R2;
ffa01a84:	01 40       	R1 >>>= R0;
ffa01a86:	01 30       	R0 = R1;
ffa01a88:	d0 bb       	[FP -0xc] = R0;
ffa01a8a:	d0 b9       	R0 = [FP -0xc];
ffa01a8c:	08 30       	R1 = R0;
ffa01a8e:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa01a90:	01 54       	R0 = R1 & R0;
ffa01a92:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa01a96:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa01a9a:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa01a9c:	08 09       	CC = R0 <= R1;
ffa01a9e:	07 18       	IF CC JUMP 0xffa01aac <_printf_hex_byte+0xc4>;
ffa01aa0:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa01aa4:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01aa6:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa01aaa:	06 20       	JUMP.S 0xffa01ab6 <_printf_hex_byte+0xce>;
ffa01aac:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa01ab0:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01ab2:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa01ab6:	c1 b9       	R1 = [FP -0x10];
ffa01ab8:	b0 b9       	R0 = [FP -0x14];
ffa01aba:	01 50       	R0 = R1 + R0;
ffa01abc:	08 30       	R1 = R0;
ffa01abe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e94 <_printf_out> */
ffa01ac2:	0a e1 94 0e 	P2.L = 0xe94;		/* (3732)	P2=0xff900e94 <_printf_out> */
ffa01ac6:	10 91       	R0 = [P2];
ffa01ac8:	41 50       	R1 = R1 + R0;
ffa01aca:	11 32       	P2 = R1;
ffa01acc:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa01ad0:	10 9b       	B[P2] = R0;
ffa01ad2:	b0 b9       	R0 = [FP -0x14];
ffa01ad4:	08 64       	R0 += 0x1;		/* (  1) */
ffa01ad6:	b0 bb       	[FP -0x14] = R0;
ffa01ad8:	b0 b9       	R0 = [FP -0x14];
ffa01ada:	08 0d       	CC = R0 <= 0x1;
ffa01adc:	cd 1b       	IF CC JUMP 0xffa01a76 <_printf_hex_byte+0x8e>;
ffa01ade:	c1 b9       	R1 = [FP -0x10];
ffa01ae0:	b0 b9       	R0 = [FP -0x14];
ffa01ae2:	01 50       	R0 = R1 + R0;
ffa01ae4:	c0 bb       	[FP -0x10] = R0;
ffa01ae6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e94 <_printf_out> */
ffa01aea:	0a e1 94 0e 	P2.L = 0xe94;		/* (3732)	P2=0xff900e94 <_printf_out> */
ffa01aee:	11 91       	R1 = [P2];
ffa01af0:	c0 b9       	R0 = [FP -0x10];
ffa01af2:	41 50       	R1 = R1 + R0;
ffa01af4:	11 32       	P2 = R1;
ffa01af6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01af8:	10 9b       	B[P2] = R0;
ffa01afa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e94 <_printf_out> */
ffa01afe:	0a e1 94 0e 	P2.L = 0xe94;		/* (3732)	P2=0xff900e94 <_printf_out> */
ffa01b02:	10 91       	R0 = [P2];
ffa01b04:	ff e3 8c fd 	CALL 0xffa0161c <_uart_str>;
ffa01b08:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b0a:	90 bb       	[FP -0x1c] = R0;
ffa01b0c:	03 20       	JUMP.S 0xffa01b12 <_printf_hex_byte+0x12a>;
ffa01b0e:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa01b10:	91 bb       	[FP -0x1c] = R1;
ffa01b12:	90 b9       	R0 = [FP -0x1c];
ffa01b14:	01 e8 00 00 	UNLINK;
ffa01b18:	10 00       	RTS;
	...

ffa01b1c <_printf_ip>:
ffa01b1c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b20:	b8 b0       	[FP + 0x8] = R0;
ffa01b22:	f9 b0       	[FP + 0xc] = R1;
ffa01b24:	f8 a0       	R0 = [FP + 0xc];
ffa01b26:	41 43       	R1 = R0.B (Z);
ffa01b28:	b8 a0       	R0 = [FP + 0x8];
ffa01b2a:	ff e3 e7 fd 	CALL 0xffa016f8 <_printf_int>;
ffa01b2e:	f8 a0       	R0 = [FP + 0xc];
ffa01b30:	40 4e       	R0 >>= 0x8;
ffa01b32:	41 43       	R1 = R0.B (Z);
ffa01b34:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01b38:	00 e1 fc 00 	R0.L = 0xfc;		/* (252)	R0=0xff9000fc(-7339780) */
ffa01b3c:	ff e3 de fd 	CALL 0xffa016f8 <_printf_int>;
ffa01b40:	f8 a0       	R0 = [FP + 0xc];
ffa01b42:	80 4e       	R0 >>= 0x10;
ffa01b44:	41 43       	R1 = R0.B (Z);
ffa01b46:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000fc(-7339780) */
ffa01b4a:	00 e1 fc 00 	R0.L = 0xfc;		/* (252)	R0=0xff9000fc(-7339780) */
ffa01b4e:	ff e3 d5 fd 	CALL 0xffa016f8 <_printf_int>;
ffa01b52:	f8 a0       	R0 = [FP + 0xc];
ffa01b54:	c0 4e       	R0 >>= 0x18;
ffa01b56:	41 43       	R1 = R0.B (Z);
ffa01b58:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000fc(-7339780) */
ffa01b5c:	00 e1 fc 00 	R0.L = 0xfc;		/* (252)	R0=0xff9000fc(-7339780) */
ffa01b60:	ff e3 cc fd 	CALL 0xffa016f8 <_printf_int>;
ffa01b64:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000fc(-7339780) */
ffa01b68:	00 e1 00 01 	R0.L = 0x100;		/* (256)	R0=0xff900100(-7339776) */
ffa01b6c:	ff e3 bc fd 	CALL 0xffa016e4 <_printf_str>;
ffa01b70:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b72:	01 e8 00 00 	UNLINK;
ffa01b76:	10 00       	RTS;

ffa01b78 <_printf_newline>:
ffa01b78:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b7c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01b80:	00 e1 04 01 	R0.L = 0x104;		/* (260)	R0=0xff900104(-7339772) */
ffa01b84:	ff e3 4c fd 	CALL 0xffa0161c <_uart_str>;
ffa01b88:	01 e8 00 00 	UNLINK;
ffa01b8c:	10 00       	RTS;
	...

ffa01b90 <_div>:
ffa01b90:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa01b94:	b8 b0       	[FP + 0x8] = R0;
ffa01b96:	f9 b0       	[FP + 0xc] = R1;
ffa01b98:	b8 a0       	R0 = [FP + 0x8];
ffa01b9a:	08 4f       	R0 <<= 0x1;
ffa01b9c:	b8 b0       	[FP + 0x8] = R0;
ffa01b9e:	b9 a0       	R1 = [FP + 0x8];
ffa01ba0:	f8 a0       	R0 = [FP + 0xc];
ffa01ba2:	11 30       	R2 = R1;
ffa01ba4:	18 30       	R3 = R0;
ffa01ba6:	5a 42       	DIVS (R2, R3);
ffa01ba8:	0b 30       	R1 = R3;
ffa01baa:	02 30       	R0 = R2;
ffa01bac:	b8 b0       	[FP + 0x8] = R0;
ffa01bae:	f9 b0       	[FP + 0xc] = R1;
ffa01bb0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01bb2:	f0 bb       	[FP -0x4] = R0;
ffa01bb4:	0d 20       	JUMP.S 0xffa01bce <_div+0x3e>;
ffa01bb6:	b9 a0       	R1 = [FP + 0x8];
ffa01bb8:	f8 a0       	R0 = [FP + 0xc];
ffa01bba:	11 30       	R2 = R1;
ffa01bbc:	18 30       	R3 = R0;
ffa01bbe:	1a 42       	DIVQ (R2, R3);
ffa01bc0:	0b 30       	R1 = R3;
ffa01bc2:	02 30       	R0 = R2;
ffa01bc4:	b8 b0       	[FP + 0x8] = R0;
ffa01bc6:	f9 b0       	[FP + 0xc] = R1;
ffa01bc8:	f0 b9       	R0 = [FP -0x4];
ffa01bca:	08 64       	R0 += 0x1;		/* (  1) */
ffa01bcc:	f0 bb       	[FP -0x4] = R0;
ffa01bce:	f0 b9       	R0 = [FP -0x4];
ffa01bd0:	71 60       	R1 = 0xe (X);		/*		R1=0xe( 14) */
ffa01bd2:	08 09       	CC = R0 <= R1;
ffa01bd4:	f1 1b       	IF CC JUMP 0xffa01bb6 <_div+0x26>;
ffa01bd6:	b8 a0       	R0 = [FP + 0x8];
ffa01bd8:	80 42       	R0 = R0.L (X);
ffa01bda:	b8 b0       	[FP + 0x8] = R0;
ffa01bdc:	b8 a0       	R0 = [FP + 0x8];
ffa01bde:	01 e8 00 00 	UNLINK;
ffa01be2:	10 00       	RTS;

ffa01be4 <_mod>:
ffa01be4:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01be8:	b8 b0       	[FP + 0x8] = R0;
ffa01bea:	f9 b0       	[FP + 0xc] = R1;
ffa01bec:	f9 a0       	R1 = [FP + 0xc];
ffa01bee:	b8 a0       	R0 = [FP + 0x8];
ffa01bf0:	ff e3 d0 ff 	CALL 0xffa01b90 <_div>;
ffa01bf4:	f0 bb       	[FP -0x4] = R0;
ffa01bf6:	f1 b9       	R1 = [FP -0x4];
ffa01bf8:	f8 a0       	R0 = [FP + 0xc];
ffa01bfa:	c1 40       	R1 *= R0;
ffa01bfc:	b8 a0       	R0 = [FP + 0x8];
ffa01bfe:	08 52       	R0 = R0 - R1;
ffa01c00:	01 e8 00 00 	UNLINK;
ffa01c04:	10 00       	RTS;
	...

ffa01c08 <_memcpy_>:
ffa01c08:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa01c0c:	b8 b0       	[FP + 0x8] = R0;
ffa01c0e:	f9 b0       	[FP + 0xc] = R1;
ffa01c10:	3a b1       	[FP + 0x10] = R2;
ffa01c12:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c14:	f0 bb       	[FP -0x4] = R0;
ffa01c16:	0e 20       	JUMP.S 0xffa01c32 <_memcpy_+0x2a>;
ffa01c18:	ba ac       	P2 = [FP + 0x8];
ffa01c1a:	50 99       	R0 = B[P2] (X);
ffa01c1c:	fa ac       	P2 = [FP + 0xc];
ffa01c1e:	10 9b       	B[P2] = R0;
ffa01c20:	f8 a0       	R0 = [FP + 0xc];
ffa01c22:	08 64       	R0 += 0x1;		/* (  1) */
ffa01c24:	f8 b0       	[FP + 0xc] = R0;
ffa01c26:	b8 a0       	R0 = [FP + 0x8];
ffa01c28:	08 64       	R0 += 0x1;		/* (  1) */
ffa01c2a:	b8 b0       	[FP + 0x8] = R0;
ffa01c2c:	f0 b9       	R0 = [FP -0x4];
ffa01c2e:	08 64       	R0 += 0x1;		/* (  1) */
ffa01c30:	f0 bb       	[FP -0x4] = R0;
ffa01c32:	f1 b9       	R1 = [FP -0x4];
ffa01c34:	38 a1       	R0 = [FP + 0x10];
ffa01c36:	81 08       	CC = R1 < R0;
ffa01c38:	f0 1b       	IF CC JUMP 0xffa01c18 <_memcpy_+0x10>;
ffa01c3a:	01 e8 00 00 	UNLINK;
ffa01c3e:	10 00       	RTS;

ffa01c40 <_memset_>:
ffa01c40:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa01c44:	b8 b0       	[FP + 0x8] = R0;
ffa01c46:	3a b1       	[FP + 0x10] = R2;
ffa01c48:	01 30       	R0 = R1;
ffa01c4a:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa01c4e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c50:	f0 bb       	[FP -0x4] = R0;
ffa01c52:	0b 20       	JUMP.S 0xffa01c68 <_memset_+0x28>;
ffa01c54:	ba ac       	P2 = [FP + 0x8];
ffa01c56:	b8 e5 0c 00 	R0 = B[FP + 0xc] (X);
ffa01c5a:	10 9b       	B[P2] = R0;
ffa01c5c:	b8 a0       	R0 = [FP + 0x8];
ffa01c5e:	08 64       	R0 += 0x1;		/* (  1) */
ffa01c60:	b8 b0       	[FP + 0x8] = R0;
ffa01c62:	f0 b9       	R0 = [FP -0x4];
ffa01c64:	08 64       	R0 += 0x1;		/* (  1) */
ffa01c66:	f0 bb       	[FP -0x4] = R0;
ffa01c68:	f1 b9       	R1 = [FP -0x4];
ffa01c6a:	38 a1       	R0 = [FP + 0x10];
ffa01c6c:	81 08       	CC = R1 < R0;
ffa01c6e:	f3 1b       	IF CC JUMP 0xffa01c54 <_memset_+0x14>;
ffa01c70:	01 e8 00 00 	UNLINK;
ffa01c74:	10 00       	RTS;
	...

ffa01c78 <_strlen_>:
ffa01c78:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa01c7c:	b8 b0       	[FP + 0x8] = R0;
ffa01c7e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c80:	f0 bb       	[FP -0x4] = R0;
ffa01c82:	10 20       	JUMP.S 0xffa01ca2 <_strlen_+0x2a>;
ffa01c84:	f0 b9       	R0 = [FP -0x4];
ffa01c86:	08 30       	R1 = R0;
ffa01c88:	b8 a0       	R0 = [FP + 0x8];
ffa01c8a:	41 50       	R1 = R1 + R0;
ffa01c8c:	11 32       	P2 = R1;
ffa01c8e:	50 99       	R0 = B[P2] (X);
ffa01c90:	00 43       	R0 = R0.B (X);
ffa01c92:	00 0c       	CC = R0 == 0x0;
ffa01c94:	04 10       	IF !CC JUMP 0xffa01c9c <_strlen_+0x24>;
ffa01c96:	f0 b9       	R0 = [FP -0x4];
ffa01c98:	e0 bb       	[FP -0x8] = R0;
ffa01c9a:	0b 20       	JUMP.S 0xffa01cb0 <_strlen_+0x38>;
ffa01c9c:	f0 b9       	R0 = [FP -0x4];
ffa01c9e:	08 64       	R0 += 0x1;		/* (  1) */
ffa01ca0:	f0 bb       	[FP -0x4] = R0;
ffa01ca2:	f0 b9       	R0 = [FP -0x4];
ffa01ca4:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa01ca8:	08 09       	CC = R0 <= R1;
ffa01caa:	ed 1b       	IF CC JUMP 0xffa01c84 <_strlen_+0xc>;
ffa01cac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01cae:	e0 bb       	[FP -0x8] = R0;
ffa01cb0:	e0 b9       	R0 = [FP -0x8];
ffa01cb2:	01 e8 00 00 	UNLINK;
ffa01cb6:	10 00       	RTS;

ffa01cb8 <_strcpy_>:
ffa01cb8:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa01cbc:	b8 b0       	[FP + 0x8] = R0;
ffa01cbe:	f9 b0       	[FP + 0xc] = R1;
ffa01cc0:	3a b1       	[FP + 0x10] = R2;
ffa01cc2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01cc4:	f0 bb       	[FP -0x4] = R0;
ffa01cc6:	0e 20       	JUMP.S 0xffa01ce2 <_strcpy_+0x2a>;
ffa01cc8:	3a ad       	P2 = [FP + 0x10];
ffa01cca:	50 99       	R0 = B[P2] (X);
ffa01ccc:	ba ac       	P2 = [FP + 0x8];
ffa01cce:	10 9b       	B[P2] = R0;
ffa01cd0:	b8 a0       	R0 = [FP + 0x8];
ffa01cd2:	08 64       	R0 += 0x1;		/* (  1) */
ffa01cd4:	b8 b0       	[FP + 0x8] = R0;
ffa01cd6:	38 a1       	R0 = [FP + 0x10];
ffa01cd8:	08 64       	R0 += 0x1;		/* (  1) */
ffa01cda:	38 b1       	[FP + 0x10] = R0;
ffa01cdc:	f0 b9       	R0 = [FP -0x4];
ffa01cde:	08 64       	R0 += 0x1;		/* (  1) */
ffa01ce0:	f0 bb       	[FP -0x4] = R0;
ffa01ce2:	3a ad       	P2 = [FP + 0x10];
ffa01ce4:	50 99       	R0 = B[P2] (X);
ffa01ce6:	00 43       	R0 = R0.B (X);
ffa01ce8:	00 0c       	CC = R0 == 0x0;
ffa01cea:	08 18       	IF CC JUMP 0xffa01cfa <_strcpy_+0x42>;
ffa01cec:	f0 b9       	R0 = [FP -0x4];
ffa01cee:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa01cf2:	08 09       	CC = R0 <= R1;
ffa01cf4:	ea 1b       	IF CC JUMP 0xffa01cc8 <_strcpy_+0x10>;
ffa01cf6:	00 00       	NOP;
ffa01cf8:	00 00       	NOP;
ffa01cfa:	fa ac       	P2 = [FP + 0xc];
ffa01cfc:	11 91       	R1 = [P2];
ffa01cfe:	f0 b9       	R0 = [FP -0x4];
ffa01d00:	01 50       	R0 = R1 + R0;
ffa01d02:	fa ac       	P2 = [FP + 0xc];
ffa01d04:	10 93       	[P2] = R0;
ffa01d06:	b8 a0       	R0 = [FP + 0x8];
ffa01d08:	01 e8 00 00 	UNLINK;
ffa01d0c:	10 00       	RTS;
	...

ffa01d10 <_strprepend>:
ffa01d10:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa01d14:	b8 b0       	[FP + 0x8] = R0;
ffa01d16:	f9 b0       	[FP + 0xc] = R1;
ffa01d18:	3a b1       	[FP + 0x10] = R2;
ffa01d1a:	38 a1       	R0 = [FP + 0x10];
ffa01d1c:	ff e3 ae ff 	CALL 0xffa01c78 <_strlen_>;
ffa01d20:	d0 bb       	[FP -0xc] = R0;
ffa01d22:	fa ac       	P2 = [FP + 0xc];
ffa01d24:	10 91       	R0 = [P2];
ffa01d26:	08 30       	R1 = R0;
ffa01d28:	b8 a0       	R0 = [FP + 0x8];
ffa01d2a:	08 52       	R0 = R0 - R1;
ffa01d2c:	e0 bb       	[FP -0x8] = R0;
ffa01d2e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d30:	f0 bb       	[FP -0x4] = R0;
ffa01d32:	0e 20       	JUMP.S 0xffa01d4e <_strprepend+0x3e>;
ffa01d34:	3a ad       	P2 = [FP + 0x10];
ffa01d36:	50 99       	R0 = B[P2] (X);
ffa01d38:	ea b9       	P2 = [FP -0x8];
ffa01d3a:	10 9b       	B[P2] = R0;
ffa01d3c:	e0 b9       	R0 = [FP -0x8];
ffa01d3e:	08 64       	R0 += 0x1;		/* (  1) */
ffa01d40:	e0 bb       	[FP -0x8] = R0;
ffa01d42:	38 a1       	R0 = [FP + 0x10];
ffa01d44:	08 64       	R0 += 0x1;		/* (  1) */
ffa01d46:	38 b1       	[FP + 0x10] = R0;
ffa01d48:	f0 b9       	R0 = [FP -0x4];
ffa01d4a:	08 64       	R0 += 0x1;		/* (  1) */
ffa01d4c:	f0 bb       	[FP -0x4] = R0;
ffa01d4e:	f1 b9       	R1 = [FP -0x4];
ffa01d50:	d0 b9       	R0 = [FP -0xc];
ffa01d52:	81 08       	CC = R1 < R0;
ffa01d54:	f0 1b       	IF CC JUMP 0xffa01d34 <_strprepend+0x24>;
ffa01d56:	00 00       	NOP;
ffa01d58:	00 00       	NOP;
ffa01d5a:	fa ac       	P2 = [FP + 0xc];
ffa01d5c:	10 91       	R0 = [P2];
ffa01d5e:	08 30       	R1 = R0;
ffa01d60:	b8 a0       	R0 = [FP + 0x8];
ffa01d62:	08 52       	R0 = R0 - R1;
ffa01d64:	01 e8 00 00 	UNLINK;
ffa01d68:	10 00       	RTS;
	...

ffa01d6c <_strcmp>:
ffa01d6c:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa01d70:	b8 b0       	[FP + 0x8] = R0;
ffa01d72:	f9 b0       	[FP + 0xc] = R1;
ffa01d74:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d76:	f0 bb       	[FP -0x4] = R0;
ffa01d78:	1a 20       	JUMP.S 0xffa01dac <_strcmp+0x40>;
ffa01d7a:	ba ac       	P2 = [FP + 0x8];
ffa01d7c:	51 99       	R1 = B[P2] (X);
ffa01d7e:	fa ac       	P2 = [FP + 0xc];
ffa01d80:	50 99       	R0 = B[P2] (X);
ffa01d82:	09 43       	R1 = R1.B (X);
ffa01d84:	00 43       	R0 = R0.B (X);
ffa01d86:	01 08       	CC = R1 == R0;
ffa01d88:	18 02       	CC = !CC;
ffa01d8a:	00 02       	R0 = CC;
ffa01d8c:	08 30       	R1 = R0;
ffa01d8e:	b8 a0       	R0 = [FP + 0x8];
ffa01d90:	08 64       	R0 += 0x1;		/* (  1) */
ffa01d92:	b8 b0       	[FP + 0x8] = R0;
ffa01d94:	f8 a0       	R0 = [FP + 0xc];
ffa01d96:	08 64       	R0 += 0x1;		/* (  1) */
ffa01d98:	f8 b0       	[FP + 0xc] = R0;
ffa01d9a:	48 43       	R0 = R1.B (Z);
ffa01d9c:	00 0c       	CC = R0 == 0x0;
ffa01d9e:	04 18       	IF CC JUMP 0xffa01da6 <_strcmp+0x3a>;
ffa01da0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01da2:	e0 bb       	[FP -0x8] = R0;
ffa01da4:	17 20       	JUMP.S 0xffa01dd2 <_strcmp+0x66>;
ffa01da6:	f0 b9       	R0 = [FP -0x4];
ffa01da8:	08 64       	R0 += 0x1;		/* (  1) */
ffa01daa:	f0 bb       	[FP -0x4] = R0;
ffa01dac:	ba ac       	P2 = [FP + 0x8];
ffa01dae:	50 99       	R0 = B[P2] (X);
ffa01db0:	00 43       	R0 = R0.B (X);
ffa01db2:	00 0c       	CC = R0 == 0x0;
ffa01db4:	0d 18       	IF CC JUMP 0xffa01dce <_strcmp+0x62>;
ffa01db6:	00 00       	NOP;
ffa01db8:	00 00       	NOP;
ffa01dba:	fa ac       	P2 = [FP + 0xc];
ffa01dbc:	50 99       	R0 = B[P2] (X);
ffa01dbe:	00 43       	R0 = R0.B (X);
ffa01dc0:	00 0c       	CC = R0 == 0x0;
ffa01dc2:	06 18       	IF CC JUMP 0xffa01dce <_strcmp+0x62>;
ffa01dc4:	f0 b9       	R0 = [FP -0x4];
ffa01dc6:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa01dca:	08 09       	CC = R0 <= R1;
ffa01dcc:	d7 1b       	IF CC JUMP 0xffa01d7a <_strcmp+0xe>;
ffa01dce:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01dd0:	e0 bb       	[FP -0x8] = R0;
ffa01dd2:	e0 b9       	R0 = [FP -0x8];
ffa01dd4:	01 e8 00 00 	UNLINK;
ffa01dd8:	10 00       	RTS;
	...

ffa01ddc <_substr>:
ffa01ddc:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa01de0:	b8 b0       	[FP + 0x8] = R0;
ffa01de2:	f9 b0       	[FP + 0xc] = R1;
ffa01de4:	3a b1       	[FP + 0x10] = R2;
ffa01de6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01de8:	e0 bb       	[FP -0x8] = R0;
ffa01dea:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01dec:	f0 bb       	[FP -0x4] = R0;
ffa01dee:	39 20       	JUMP.S 0xffa01e60 <_substr+0x84>;
ffa01df0:	ba ac       	P2 = [FP + 0x8];
ffa01df2:	51 99       	R1 = B[P2] (X);
ffa01df4:	fa ac       	P2 = [FP + 0xc];
ffa01df6:	50 99       	R0 = B[P2] (X);
ffa01df8:	09 43       	R1 = R1.B (X);
ffa01dfa:	00 43       	R0 = R0.B (X);
ffa01dfc:	01 08       	CC = R1 == R0;
ffa01dfe:	2b 10       	IF !CC JUMP 0xffa01e54 <_substr+0x78>;
ffa01e00:	b8 a0       	R0 = [FP + 0x8];
ffa01e02:	08 64       	R0 += 0x1;		/* (  1) */
ffa01e04:	c0 bb       	[FP -0x10] = R0;
ffa01e06:	f8 a0       	R0 = [FP + 0xc];
ffa01e08:	08 64       	R0 += 0x1;		/* (  1) */
ffa01e0a:	d0 bb       	[FP -0xc] = R0;
ffa01e0c:	e0 b9       	R0 = [FP -0x8];
ffa01e0e:	08 64       	R0 += 0x1;		/* (  1) */
ffa01e10:	f0 bb       	[FP -0x4] = R0;
ffa01e12:	12 20       	JUMP.S 0xffa01e36 <_substr+0x5a>;
ffa01e14:	c0 b9       	R0 = [FP -0x10];
ffa01e16:	08 64       	R0 += 0x1;		/* (  1) */
ffa01e18:	c0 bb       	[FP -0x10] = R0;
ffa01e1a:	d0 b9       	R0 = [FP -0xc];
ffa01e1c:	08 64       	R0 += 0x1;		/* (  1) */
ffa01e1e:	d0 bb       	[FP -0xc] = R0;
ffa01e20:	f0 b9       	R0 = [FP -0x4];
ffa01e22:	08 64       	R0 += 0x1;		/* (  1) */
ffa01e24:	f0 bb       	[FP -0x4] = R0;
ffa01e26:	ca b9       	P2 = [FP -0x10];
ffa01e28:	50 99       	R0 = B[P2] (X);
ffa01e2a:	00 43       	R0 = R0.B (X);
ffa01e2c:	00 0c       	CC = R0 == 0x0;
ffa01e2e:	04 10       	IF !CC JUMP 0xffa01e36 <_substr+0x5a>;
ffa01e30:	f0 b9       	R0 = [FP -0x4];
ffa01e32:	b0 bb       	[FP -0x14] = R0;
ffa01e34:	28 20       	JUMP.S 0xffa01e84 <_substr+0xa8>;
ffa01e36:	ca b9       	P2 = [FP -0x10];
ffa01e38:	51 99       	R1 = B[P2] (X);
ffa01e3a:	da b9       	P2 = [FP -0xc];
ffa01e3c:	50 99       	R0 = B[P2] (X);
ffa01e3e:	09 43       	R1 = R1.B (X);
ffa01e40:	00 43       	R0 = R0.B (X);
ffa01e42:	01 08       	CC = R1 == R0;
ffa01e44:	08 10       	IF !CC JUMP 0xffa01e54 <_substr+0x78>;
ffa01e46:	00 00       	NOP;
ffa01e48:	00 00       	NOP;
ffa01e4a:	da b9       	P2 = [FP -0xc];
ffa01e4c:	50 99       	R0 = B[P2] (X);
ffa01e4e:	00 43       	R0 = R0.B (X);
ffa01e50:	00 0c       	CC = R0 == 0x0;
ffa01e52:	e1 13       	IF !CC JUMP 0xffa01e14 <_substr+0x38>;
ffa01e54:	f8 a0       	R0 = [FP + 0xc];
ffa01e56:	08 64       	R0 += 0x1;		/* (  1) */
ffa01e58:	f8 b0       	[FP + 0xc] = R0;
ffa01e5a:	e0 b9       	R0 = [FP -0x8];
ffa01e5c:	08 64       	R0 += 0x1;		/* (  1) */
ffa01e5e:	e0 bb       	[FP -0x8] = R0;
ffa01e60:	ba ac       	P2 = [FP + 0x8];
ffa01e62:	50 99       	R0 = B[P2] (X);
ffa01e64:	00 43       	R0 = R0.B (X);
ffa01e66:	00 0c       	CC = R0 == 0x0;
ffa01e68:	0c 18       	IF CC JUMP 0xffa01e80 <_substr+0xa4>;
ffa01e6a:	00 00       	NOP;
ffa01e6c:	00 00       	NOP;
ffa01e6e:	fa ac       	P2 = [FP + 0xc];
ffa01e70:	50 99       	R0 = B[P2] (X);
ffa01e72:	00 43       	R0 = R0.B (X);
ffa01e74:	00 0c       	CC = R0 == 0x0;
ffa01e76:	05 18       	IF CC JUMP 0xffa01e80 <_substr+0xa4>;
ffa01e78:	e1 b9       	R1 = [FP -0x8];
ffa01e7a:	38 a1       	R0 = [FP + 0x10];
ffa01e7c:	81 08       	CC = R1 < R0;
ffa01e7e:	b9 1b       	IF CC JUMP 0xffa01df0 <_substr+0x14>;
ffa01e80:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e82:	b0 bb       	[FP -0x14] = R0;
ffa01e84:	b0 b9       	R0 = [FP -0x14];
ffa01e86:	01 e8 00 00 	UNLINK;
ffa01e8a:	10 00       	RTS;

ffa01e8c <_sprintf_int>:
ffa01e8c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01e90:	b8 b0       	[FP + 0x8] = R0;
ffa01e92:	f9 b0       	[FP + 0xc] = R1;
ffa01e94:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e96:	c0 bb       	[FP -0x10] = R0;
ffa01e98:	f8 a0       	R0 = [FP + 0xc];
ffa01e9a:	00 0c       	CC = R0 == 0x0;
ffa01e9c:	0b 10       	IF !CC JUMP 0xffa01eb2 <_sprintf_int+0x26>;
ffa01e9e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e94 <_printf_out> */
ffa01ea2:	0a e1 90 0e 	P2.L = 0xe90;		/* (3728)	P2=0xff900e90 <_printf_temp> */
ffa01ea6:	52 91       	P2 = [P2];
ffa01ea8:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01eaa:	10 9b       	B[P2] = R0;
ffa01eac:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01eae:	c0 bb       	[FP -0x10] = R0;
ffa01eb0:	90 20       	JUMP.S 0xffa01fd0 <_sprintf_int+0x144>;
ffa01eb2:	f8 a0       	R0 = [FP + 0xc];
ffa01eb4:	00 0d       	CC = R0 <= 0x0;
ffa01eb6:	3c 18       	IF CC JUMP 0xffa01f2e <_sprintf_int+0xa2>;
ffa01eb8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01eba:	c0 bb       	[FP -0x10] = R0;
ffa01ebc:	31 20       	JUMP.S 0xffa01f1e <_sprintf_int+0x92>;
ffa01ebe:	f9 a0       	R1 = [FP + 0xc];
ffa01ec0:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa01ec4:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa01ec8:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa01ecc:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01ed0:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa01ed4:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa01ed8:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01edc:	0b c4 00 00 	R0 = (A0 += A1);
ffa01ee0:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa01ee4:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa01ee8:	02 52       	R0 = R2 - R0;
ffa01eea:	f0 bb       	[FP -0x4] = R0;
ffa01eec:	f1 b9       	R1 = [FP -0x4];
ffa01eee:	01 30       	R0 = R1;
ffa01ef0:	10 4f       	R0 <<= 0x2;
ffa01ef2:	08 50       	R0 = R0 + R1;
ffa01ef4:	08 4f       	R0 <<= 0x1;
ffa01ef6:	08 30       	R1 = R0;
ffa01ef8:	f8 a0       	R0 = [FP + 0xc];
ffa01efa:	08 52       	R0 = R0 - R1;
ffa01efc:	d0 bb       	[FP -0xc] = R0;
ffa01efe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e90 <_printf_temp> */
ffa01f02:	0a e1 90 0e 	P2.L = 0xe90;		/* (3728)	P2=0xff900e90 <_printf_temp> */
ffa01f06:	11 91       	R1 = [P2];
ffa01f08:	c0 b9       	R0 = [FP -0x10];
ffa01f0a:	41 50       	R1 = R1 + R0;
ffa01f0c:	11 32       	P2 = R1;
ffa01f0e:	d0 b9       	R0 = [FP -0xc];
ffa01f10:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01f12:	10 9b       	B[P2] = R0;
ffa01f14:	c0 b9       	R0 = [FP -0x10];
ffa01f16:	08 64       	R0 += 0x1;		/* (  1) */
ffa01f18:	c0 bb       	[FP -0x10] = R0;
ffa01f1a:	f0 b9       	R0 = [FP -0x4];
ffa01f1c:	f8 b0       	[FP + 0xc] = R0;
ffa01f1e:	f8 a0       	R0 = [FP + 0xc];
ffa01f20:	00 0d       	CC = R0 <= 0x0;
ffa01f22:	57 18       	IF CC JUMP 0xffa01fd0 <_sprintf_int+0x144>;
ffa01f24:	c0 b9       	R0 = [FP -0x10];
ffa01f26:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01f28:	08 09       	CC = R0 <= R1;
ffa01f2a:	ca 1b       	IF CC JUMP 0xffa01ebe <_sprintf_int+0x32>;
ffa01f2c:	52 20       	JUMP.S 0xffa01fd0 <_sprintf_int+0x144>;
ffa01f2e:	f8 a0       	R0 = [FP + 0xc];
ffa01f30:	80 0c       	CC = R0 < 0x0;
ffa01f32:	4f 10       	IF !CC JUMP 0xffa01fd0 <_sprintf_int+0x144>;
ffa01f34:	f8 a0       	R0 = [FP + 0xc];
ffa01f36:	08 30       	R1 = R0;
ffa01f38:	f9 4c       	BITCLR (R1, 0x1f);		/* bit 31 */
ffa01f3a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01f3c:	f8 4f       	R0 <<= 0x1f;
ffa01f3e:	08 52       	R0 = R0 - R1;
ffa01f40:	f8 b0       	[FP + 0xc] = R0;
ffa01f42:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01f44:	c0 bb       	[FP -0x10] = R0;
ffa01f46:	31 20       	JUMP.S 0xffa01fa8 <_sprintf_int+0x11c>;
ffa01f48:	f9 a0       	R1 = [FP + 0xc];
ffa01f4a:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa01f4e:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa01f52:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa01f56:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01f5a:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa01f5e:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa01f62:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01f66:	0b c4 00 00 	R0 = (A0 += A1);
ffa01f6a:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa01f6e:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa01f72:	02 52       	R0 = R2 - R0;
ffa01f74:	f0 bb       	[FP -0x4] = R0;
ffa01f76:	f1 b9       	R1 = [FP -0x4];
ffa01f78:	01 30       	R0 = R1;
ffa01f7a:	10 4f       	R0 <<= 0x2;
ffa01f7c:	08 50       	R0 = R0 + R1;
ffa01f7e:	08 4f       	R0 <<= 0x1;
ffa01f80:	08 30       	R1 = R0;
ffa01f82:	f8 a0       	R0 = [FP + 0xc];
ffa01f84:	08 52       	R0 = R0 - R1;
ffa01f86:	d0 bb       	[FP -0xc] = R0;
ffa01f88:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e90 <_printf_temp> */
ffa01f8c:	0a e1 90 0e 	P2.L = 0xe90;		/* (3728)	P2=0xff900e90 <_printf_temp> */
ffa01f90:	11 91       	R1 = [P2];
ffa01f92:	c0 b9       	R0 = [FP -0x10];
ffa01f94:	41 50       	R1 = R1 + R0;
ffa01f96:	11 32       	P2 = R1;
ffa01f98:	d0 b9       	R0 = [FP -0xc];
ffa01f9a:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01f9c:	10 9b       	B[P2] = R0;
ffa01f9e:	c0 b9       	R0 = [FP -0x10];
ffa01fa0:	08 64       	R0 += 0x1;		/* (  1) */
ffa01fa2:	c0 bb       	[FP -0x10] = R0;
ffa01fa4:	f0 b9       	R0 = [FP -0x4];
ffa01fa6:	f8 b0       	[FP + 0xc] = R0;
ffa01fa8:	f8 a0       	R0 = [FP + 0xc];
ffa01faa:	00 0d       	CC = R0 <= 0x0;
ffa01fac:	05 18       	IF CC JUMP 0xffa01fb6 <_sprintf_int+0x12a>;
ffa01fae:	c0 b9       	R0 = [FP -0x10];
ffa01fb0:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01fb2:	08 09       	CC = R0 <= R1;
ffa01fb4:	ca 1b       	IF CC JUMP 0xffa01f48 <_sprintf_int+0xbc>;
ffa01fb6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e90 <_printf_temp> */
ffa01fba:	0a e1 90 0e 	P2.L = 0xe90;		/* (3728)	P2=0xff900e90 <_printf_temp> */
ffa01fbe:	11 91       	R1 = [P2];
ffa01fc0:	c0 b9       	R0 = [FP -0x10];
ffa01fc2:	41 50       	R1 = R1 + R0;
ffa01fc4:	11 32       	P2 = R1;
ffa01fc6:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa01fc8:	10 9b       	B[P2] = R0;
ffa01fca:	c0 b9       	R0 = [FP -0x10];
ffa01fcc:	08 64       	R0 += 0x1;		/* (  1) */
ffa01fce:	c0 bb       	[FP -0x10] = R0;
ffa01fd0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01fd2:	e0 bb       	[FP -0x8] = R0;
ffa01fd4:	16 20       	JUMP.S 0xffa02000 <_sprintf_int+0x174>;
ffa01fd6:	e0 b9       	R0 = [FP -0x8];
ffa01fd8:	08 30       	R1 = R0;
ffa01fda:	b8 a0       	R0 = [FP + 0x8];
ffa01fdc:	41 50       	R1 = R1 + R0;
ffa01fde:	09 32       	P1 = R1;
ffa01fe0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e90 <_printf_temp> */
ffa01fe4:	0a e1 90 0e 	P2.L = 0xe90;		/* (3728)	P2=0xff900e90 <_printf_temp> */
ffa01fe8:	12 91       	R2 = [P2];
ffa01fea:	c1 b9       	R1 = [FP -0x10];
ffa01fec:	e0 b9       	R0 = [FP -0x8];
ffa01fee:	01 52       	R0 = R1 - R0;
ffa01ff0:	02 50       	R0 = R2 + R0;
ffa01ff2:	10 32       	P2 = R0;
ffa01ff4:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa01ff6:	50 99       	R0 = B[P2] (X);
ffa01ff8:	08 9b       	B[P1] = R0;
ffa01ffa:	e0 b9       	R0 = [FP -0x8];
ffa01ffc:	08 64       	R0 += 0x1;		/* (  1) */
ffa01ffe:	e0 bb       	[FP -0x8] = R0;
ffa02000:	e1 b9       	R1 = [FP -0x8];
ffa02002:	c0 b9       	R0 = [FP -0x10];
ffa02004:	81 08       	CC = R1 < R0;
ffa02006:	e8 1b       	IF CC JUMP 0xffa01fd6 <_sprintf_int+0x14a>;
ffa02008:	c0 b9       	R0 = [FP -0x10];
ffa0200a:	01 e8 00 00 	UNLINK;
ffa0200e:	10 00       	RTS;

ffa02010 <_sprintf_hex>:
ffa02010:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02014:	b8 b0       	[FP + 0x8] = R0;
ffa02016:	f9 b0       	[FP + 0xc] = R1;
ffa02018:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0201a:	d0 bb       	[FP -0xc] = R0;
ffa0201c:	d0 b9       	R0 = [FP -0xc];
ffa0201e:	08 30       	R1 = R0;
ffa02020:	b8 a0       	R0 = [FP + 0x8];
ffa02022:	41 50       	R1 = R1 + R0;
ffa02024:	11 32       	P2 = R1;
ffa02026:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa02028:	10 9b       	B[P2] = R0;
ffa0202a:	d0 b9       	R0 = [FP -0xc];
ffa0202c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0202e:	d0 bb       	[FP -0xc] = R0;
ffa02030:	d0 b9       	R0 = [FP -0xc];
ffa02032:	08 30       	R1 = R0;
ffa02034:	b8 a0       	R0 = [FP + 0x8];
ffa02036:	41 50       	R1 = R1 + R0;
ffa02038:	11 32       	P2 = R1;
ffa0203a:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0203e:	10 9b       	B[P2] = R0;
ffa02040:	d0 b9       	R0 = [FP -0xc];
ffa02042:	08 64       	R0 += 0x1;		/* (  1) */
ffa02044:	d0 bb       	[FP -0xc] = R0;
ffa02046:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02048:	c0 bb       	[FP -0x10] = R0;
ffa0204a:	2c 20       	JUMP.S 0xffa020a2 <_sprintf_hex+0x92>;
ffa0204c:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa0204e:	c0 b9       	R0 = [FP -0x10];
ffa02050:	01 52       	R0 = R1 - R0;
ffa02052:	82 c6 10 82 	R1 = R0 << 0x2;
ffa02056:	f8 a0       	R0 = [FP + 0xc];
ffa02058:	08 40       	R0 >>>= R1;
ffa0205a:	e0 bb       	[FP -0x8] = R0;
ffa0205c:	e0 b9       	R0 = [FP -0x8];
ffa0205e:	08 30       	R1 = R0;
ffa02060:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa02062:	01 54       	R0 = R1 & R0;
ffa02064:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa02068:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0206c:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa0206e:	08 09       	CC = R0 <= R1;
ffa02070:	07 18       	IF CC JUMP 0xffa0207e <_sprintf_hex+0x6e>;
ffa02072:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa02076:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa02078:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0207c:	06 20       	JUMP.S 0xffa02088 <_sprintf_hex+0x78>;
ffa0207e:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa02082:	80 65       	R0 += 0x30;		/* ( 48) */
ffa02084:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa02088:	d1 b9       	R1 = [FP -0xc];
ffa0208a:	c0 b9       	R0 = [FP -0x10];
ffa0208c:	01 50       	R0 = R1 + R0;
ffa0208e:	08 30       	R1 = R0;
ffa02090:	b8 a0       	R0 = [FP + 0x8];
ffa02092:	41 50       	R1 = R1 + R0;
ffa02094:	11 32       	P2 = R1;
ffa02096:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0209a:	10 9b       	B[P2] = R0;
ffa0209c:	c0 b9       	R0 = [FP -0x10];
ffa0209e:	08 64       	R0 += 0x1;		/* (  1) */
ffa020a0:	c0 bb       	[FP -0x10] = R0;
ffa020a2:	c0 b9       	R0 = [FP -0x10];
ffa020a4:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa020a6:	08 09       	CC = R0 <= R1;
ffa020a8:	d2 1b       	IF CC JUMP 0xffa0204c <_sprintf_hex+0x3c>;
ffa020aa:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa020ac:	01 e8 00 00 	UNLINK;
ffa020b0:	10 00       	RTS;
	...

ffa020b4 <_strprintf_int>:
ffa020b4:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa020b8:	b8 b0       	[FP + 0x8] = R0;
ffa020ba:	f9 b0       	[FP + 0xc] = R1;
ffa020bc:	3a b1       	[FP + 0x10] = R2;
ffa020be:	39 a1       	R1 = [FP + 0x10];
ffa020c0:	b8 a0       	R0 = [FP + 0x8];
ffa020c2:	ff e3 e5 fe 	CALL 0xffa01e8c <_sprintf_int>;
ffa020c6:	f0 bb       	[FP -0x4] = R0;
ffa020c8:	fa ac       	P2 = [FP + 0xc];
ffa020ca:	11 91       	R1 = [P2];
ffa020cc:	f0 b9       	R0 = [FP -0x4];
ffa020ce:	01 50       	R0 = R1 + R0;
ffa020d0:	fa ac       	P2 = [FP + 0xc];
ffa020d2:	10 93       	[P2] = R0;
ffa020d4:	f0 b9       	R0 = [FP -0x4];
ffa020d6:	08 30       	R1 = R0;
ffa020d8:	b8 a0       	R0 = [FP + 0x8];
ffa020da:	08 50       	R0 = R0 + R1;
ffa020dc:	b8 b0       	[FP + 0x8] = R0;
ffa020de:	b8 a0       	R0 = [FP + 0x8];
ffa020e0:	01 e8 00 00 	UNLINK;
ffa020e4:	10 00       	RTS;
	...

ffa020e8 <_strprintf_hex>:
ffa020e8:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa020ec:	b8 b0       	[FP + 0x8] = R0;
ffa020ee:	f9 b0       	[FP + 0xc] = R1;
ffa020f0:	3a b1       	[FP + 0x10] = R2;
ffa020f2:	39 a1       	R1 = [FP + 0x10];
ffa020f4:	b8 a0       	R0 = [FP + 0x8];
ffa020f6:	ff e3 8d ff 	CALL 0xffa02010 <_sprintf_hex>;
ffa020fa:	f0 bb       	[FP -0x4] = R0;
ffa020fc:	fa ac       	P2 = [FP + 0xc];
ffa020fe:	11 91       	R1 = [P2];
ffa02100:	f0 b9       	R0 = [FP -0x4];
ffa02102:	01 50       	R0 = R1 + R0;
ffa02104:	fa ac       	P2 = [FP + 0xc];
ffa02106:	10 93       	[P2] = R0;
ffa02108:	f0 b9       	R0 = [FP -0x4];
ffa0210a:	08 30       	R1 = R0;
ffa0210c:	b8 a0       	R0 = [FP + 0x8];
ffa0210e:	08 50       	R0 = R0 + R1;
ffa02110:	b8 b0       	[FP + 0x8] = R0;
ffa02112:	b8 a0       	R0 = [FP + 0x8];
ffa02114:	01 e8 00 00 	UNLINK;
ffa02118:	10 00       	RTS;
	...

ffa0211c <_atoi>:
ffa0211c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02120:	b8 b0       	[FP + 0x8] = R0;
ffa02122:	f9 b0       	[FP + 0xc] = R1;
ffa02124:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02126:	d0 bb       	[FP -0xc] = R0;
ffa02128:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0212a:	e0 bb       	[FP -0x8] = R0;
ffa0212c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0212e:	f0 bb       	[FP -0x4] = R0;
ffa02130:	ba ac       	P2 = [FP + 0x8];
ffa02132:	50 99       	R0 = B[P2] (X);
ffa02134:	00 43       	R0 = R0.B (X);
ffa02136:	69 61       	R1 = 0x2d (X);		/*		R1=0x2d( 45) */
ffa02138:	08 08       	CC = R0 == R1;
ffa0213a:	2c 10       	IF !CC JUMP 0xffa02192 <_atoi+0x76>;
ffa0213c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0213e:	f0 bb       	[FP -0x4] = R0;
ffa02140:	b8 a0       	R0 = [FP + 0x8];
ffa02142:	08 64       	R0 += 0x1;		/* (  1) */
ffa02144:	b8 b0       	[FP + 0x8] = R0;
ffa02146:	d0 b9       	R0 = [FP -0xc];
ffa02148:	08 64       	R0 += 0x1;		/* (  1) */
ffa0214a:	d0 bb       	[FP -0xc] = R0;
ffa0214c:	23 20       	JUMP.S 0xffa02192 <_atoi+0x76>;
ffa0214e:	ba ac       	P2 = [FP + 0x8];
ffa02150:	50 99       	R0 = B[P2] (X);
ffa02152:	01 43       	R1 = R0.B (X);
ffa02154:	e0 b9       	R0 = [FP -0x8];
ffa02156:	01 50       	R0 = R1 + R0;
ffa02158:	80 66       	R0 += -0x30;		/* (-48) */
ffa0215a:	e0 bb       	[FP -0x8] = R0;
ffa0215c:	b8 a0       	R0 = [FP + 0x8];
ffa0215e:	08 64       	R0 += 0x1;		/* (  1) */
ffa02160:	b8 b0       	[FP + 0x8] = R0;
ffa02162:	d0 b9       	R0 = [FP -0xc];
ffa02164:	08 64       	R0 += 0x1;		/* (  1) */
ffa02166:	d0 bb       	[FP -0xc] = R0;
ffa02168:	ba ac       	P2 = [FP + 0x8];
ffa0216a:	50 99       	R0 = B[P2] (X);
ffa0216c:	00 43       	R0 = R0.B (X);
ffa0216e:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa02170:	08 09       	CC = R0 <= R1;
ffa02172:	10 18       	IF CC JUMP 0xffa02192 <_atoi+0x76>;
ffa02174:	00 00       	NOP;
ffa02176:	00 00       	NOP;
ffa02178:	ba ac       	P2 = [FP + 0x8];
ffa0217a:	50 99       	R0 = B[P2] (X);
ffa0217c:	00 43       	R0 = R0.B (X);
ffa0217e:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa02180:	08 09       	CC = R0 <= R1;
ffa02182:	08 10       	IF !CC JUMP 0xffa02192 <_atoi+0x76>;
ffa02184:	e0 b9       	R0 = [FP -0x8];
ffa02186:	08 30       	R1 = R0;
ffa02188:	11 4f       	R1 <<= 0x2;
ffa0218a:	41 50       	R1 = R1 + R0;
ffa0218c:	82 c6 09 80 	R0 = R1 << 0x1;
ffa02190:	e0 bb       	[FP -0x8] = R0;
ffa02192:	ba ac       	P2 = [FP + 0x8];
ffa02194:	50 99       	R0 = B[P2] (X);
ffa02196:	00 43       	R0 = R0.B (X);
ffa02198:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa0219a:	08 09       	CC = R0 <= R1;
ffa0219c:	0d 18       	IF CC JUMP 0xffa021b6 <_atoi+0x9a>;
ffa0219e:	00 00       	NOP;
ffa021a0:	00 00       	NOP;
ffa021a2:	ba ac       	P2 = [FP + 0x8];
ffa021a4:	50 99       	R0 = B[P2] (X);
ffa021a6:	00 43       	R0 = R0.B (X);
ffa021a8:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa021aa:	08 09       	CC = R0 <= R1;
ffa021ac:	05 10       	IF !CC JUMP 0xffa021b6 <_atoi+0x9a>;
ffa021ae:	d1 b9       	R1 = [FP -0xc];
ffa021b0:	f8 a0       	R0 = [FP + 0xc];
ffa021b2:	81 08       	CC = R1 < R0;
ffa021b4:	cd 1b       	IF CC JUMP 0xffa0214e <_atoi+0x32>;
ffa021b6:	e1 b9       	R1 = [FP -0x8];
ffa021b8:	f0 b9       	R0 = [FP -0x4];
ffa021ba:	c8 40       	R0 *= R1;
ffa021bc:	01 e8 00 00 	UNLINK;
ffa021c0:	10 00       	RTS;
	...

ffa021c4 <_udelay>:
ffa021c4:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa021c8:	b8 b0       	[FP + 0x8] = R0;
ffa021ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa021cc:	e0 bb       	[FP -0x8] = R0;
ffa021ce:	10 20       	JUMP.S 0xffa021ee <_udelay+0x2a>;
ffa021d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa021d2:	f0 bb       	[FP -0x4] = R0;
ffa021d4:	05 20       	JUMP.S 0xffa021de <_udelay+0x1a>;
ffa021d6:	00 00       	NOP;
ffa021d8:	f0 b9       	R0 = [FP -0x4];
ffa021da:	08 64       	R0 += 0x1;		/* (  1) */
ffa021dc:	f0 bb       	[FP -0x4] = R0;
ffa021de:	f0 b9       	R0 = [FP -0x4];
ffa021e0:	21 e1 9f 00 	R1 = 0x9f (X);		/*		R1=0x9f(159) */
ffa021e4:	08 09       	CC = R0 <= R1;
ffa021e6:	f8 1b       	IF CC JUMP 0xffa021d6 <_udelay+0x12>;
ffa021e8:	e0 b9       	R0 = [FP -0x8];
ffa021ea:	08 64       	R0 += 0x1;		/* (  1) */
ffa021ec:	e0 bb       	[FP -0x8] = R0;
ffa021ee:	e1 b9       	R1 = [FP -0x8];
ffa021f0:	b8 a0       	R0 = [FP + 0x8];
ffa021f2:	81 08       	CC = R1 < R0;
ffa021f4:	ee 1b       	IF CC JUMP 0xffa021d0 <_udelay+0xc>;
ffa021f6:	01 e8 00 00 	UNLINK;
ffa021fa:	10 00       	RTS;

ffa021fc <_bfin_EMAC_send>:
ffa021fc:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02200:	b8 b0       	[FP + 0x8] = R0;
ffa02202:	f9 b0       	[FP + 0xc] = R1;
ffa02204:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02206:	e0 bb       	[FP -0x8] = R0;
ffa02208:	b8 a0       	R0 = [FP + 0x8];
ffa0220a:	f0 bb       	[FP -0x4] = R0;
ffa0220c:	f8 a0       	R0 = [FP + 0xc];
ffa0220e:	00 0d       	CC = R0 <= 0x0;
ffa02210:	09 10       	IF !CC JUMP 0xffa02222 <_bfin_EMAC_send+0x26>;
ffa02212:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02216:	00 e1 0c 01 	R0.L = 0x10c;		/* (268)	R0=0xff90010c(-7339764) */
ffa0221a:	f9 a0       	R1 = [FP + 0xc];
ffa0221c:	ff e3 6e fa 	CALL 0xffa016f8 <_printf_int>;
ffa02220:	fa 20       	JUMP.S 0xffa02414 <_bfin_EMAC_send+0x218>;
ffa02222:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e90(-4190576) */
ffa02226:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa0222a:	50 95       	R0 = W[P2] (X);
ffa0222c:	c1 42       	R1 = R0.L (Z);
ffa0222e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02230:	01 54       	R0 = R1 & R0;
ffa02232:	00 0c       	CC = R0 == 0x0;
ffa02234:	08 18       	IF CC JUMP 0xffa02244 <_bfin_EMAC_send+0x48>;
ffa02236:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa0223a:	00 e1 28 01 	R0.L = 0x128;		/* (296)	R0=0xff900128(-7339736) */
ffa0223e:	ff e3 53 fa 	CALL 0xffa016e4 <_printf_str>;
ffa02242:	e9 20       	JUMP.S 0xffa02414 <_bfin_EMAC_send+0x218>;
ffa02244:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02246:	d0 bb       	[FP -0xc] = R0;
ffa02248:	11 20       	JUMP.S 0xffa0226a <_bfin_EMAC_send+0x6e>;
ffa0224a:	d0 b9       	R0 = [FP -0xc];
ffa0224c:	21 e1 09 3d 	R1 = 0x3d09 (X);		/*		R1=0x3d09(15625) */
ffa02250:	31 4f       	R1 <<= 0x6;
ffa02252:	08 09       	CC = R0 <= R1;
ffa02254:	08 18       	IF CC JUMP 0xffa02264 <_bfin_EMAC_send+0x68>;
ffa02256:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0225a:	00 e1 40 01 	R0.L = 0x140;		/* (320)	R0=0xff900140(-7339712) */
ffa0225e:	ff e3 43 fa 	CALL 0xffa016e4 <_printf_str>;
ffa02262:	d9 20       	JUMP.S 0xffa02414 <_bfin_EMAC_send+0x218>;
ffa02264:	d0 b9       	R0 = [FP -0xc];
ffa02266:	08 64       	R0 += 0x1;		/* (  1) */
ffa02268:	d0 bb       	[FP -0xc] = R0;
ffa0226a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa0226e:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa02272:	50 95       	R0 = W[P2] (X);
ffa02274:	c1 42       	R1 = R0.L (Z);
ffa02276:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa02278:	01 54       	R0 = R1 & R0;
ffa0227a:	00 0c       	CC = R0 == 0x0;
ffa0227c:	e7 13       	IF !CC JUMP 0xffa0224a <_bfin_EMAC_send+0x4e>;
ffa0227e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca8 */
ffa02282:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa02286:	50 95       	R0 = W[P2] (X);
ffa02288:	c0 42       	R0 = R0.L (Z);
ffa0228a:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff903d09(-7324407) */
ffa0228e:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa02292:	10 4f       	R0 <<= 0x2;
ffa02294:	08 50       	R0 = R0 + R1;
ffa02296:	10 32       	P2 = R0;
ffa02298:	52 91       	P2 = [P2];
ffa0229a:	92 ad       	P2 = [P2 + 0x18];
ffa0229c:	f8 a0       	R0 = [FP + 0xc];
ffa0229e:	10 97       	W[P2] = R0;
ffa022a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa022a4:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa022a8:	50 95       	R0 = W[P2] (X);
ffa022aa:	c0 42       	R0 = R0.L (Z);
ffa022ac:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa022b0:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa022b4:	10 4f       	R0 <<= 0x2;
ffa022b6:	08 50       	R0 = R0 + R1;
ffa022b8:	10 32       	P2 = R0;
ffa022ba:	52 91       	P2 = [P2];
ffa022bc:	90 a1       	R0 = [P2 + 0x18];
ffa022be:	10 64       	R0 += 0x2;		/* (  2) */
ffa022c0:	b9 a0       	R1 = [FP + 0x8];
ffa022c2:	fa a0       	R2 = [FP + 0xc];
ffa022c4:	ff e3 a2 fc 	CALL 0xffa01c08 <_memcpy_>;
ffa022c8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa022cc:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa022d0:	50 95       	R0 = W[P2] (X);
ffa022d2:	c0 42       	R0 = R0.L (Z);
ffa022d4:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa022d8:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa022dc:	10 4f       	R0 <<= 0x2;
ffa022de:	08 50       	R0 = R0 + R1;
ffa022e0:	10 32       	P2 = R0;
ffa022e2:	51 91       	P1 = [P2];
ffa022e4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa022e8:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa022ec:	50 95       	R0 = W[P2] (X);
ffa022ee:	c0 42       	R0 = R0.L (Z);
ffa022f0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa022f4:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa022f8:	10 4f       	R0 <<= 0x2;
ffa022fa:	08 50       	R0 = R0 + R1;
ffa022fc:	10 32       	P2 = R0;
ffa022fe:	52 91       	P2 = [P2];
ffa02300:	90 a1       	R0 = [P2 + 0x18];
ffa02302:	48 b0       	[P1 + 0x4] = R0;
ffa02304:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03204(-4181500) */
ffa02308:	09 e1 80 0c 	P1.L = 0xc80;		/* (3200)	P1=0xffc00c80(-4191104) */
ffa0230c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa02310:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa02314:	50 95       	R0 = W[P2] (X);
ffa02316:	c0 42       	R0 = R0.L (Z);
ffa02318:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa0231c:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa02320:	10 4f       	R0 <<= 0x2;
ffa02322:	08 50       	R0 = R0 + R1;
ffa02324:	10 32       	P2 = R0;
ffa02326:	10 91       	R0 = [P2];
ffa02328:	08 93       	[P1] = R0;
ffa0232a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c80(-4191104) */
ffa0232e:	09 e1 88 0c 	P1.L = 0xc88;		/* (3208)	P1=0xffc00c88(-4191096) */
ffa02332:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa02336:	0a e1 0a 01 	P2.L = 0x10a;		/* (266)	P2=0xff90010a <_txdmacfg> */
ffa0233a:	50 95       	R0 = W[P2] (X);
ffa0233c:	08 97       	W[P1] = R0;
ffa0233e:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c88(-4191096) */
ffa02342:	09 e1 00 30 	P1.L = 0x3000;		/* (12288)	P1=0xffc03000(-4182016) */
ffa02346:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0010a(-4194038) */
ffa0234a:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa0234e:	10 91       	R0 = [P2];
ffa02350:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa02352:	08 93       	[P1] = R0;
ffa02354:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02356:	d0 bb       	[FP -0xc] = R0;
ffa02358:	11 20       	JUMP.S 0xffa0237a <_bfin_EMAC_send+0x17e>;
ffa0235a:	d0 b9       	R0 = [FP -0xc];
ffa0235c:	21 e1 09 3d 	R1 = 0x3d09 (X);		/*		R1=0x3d09(15625) */
ffa02360:	31 4f       	R1 <<= 0x6;
ffa02362:	08 09       	CC = R0 <= R1;
ffa02364:	08 18       	IF CC JUMP 0xffa02374 <_bfin_EMAC_send+0x178>;
ffa02366:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0236a:	00 e1 58 01 	R0.L = 0x158;		/* (344)	R0=0xff900158(-7339688) */
ffa0236e:	ff e3 bb f9 	CALL 0xffa016e4 <_printf_str>;
ffa02372:	51 20       	JUMP.S 0xffa02414 <_bfin_EMAC_send+0x218>;
ffa02374:	d0 b9       	R0 = [FP -0xc];
ffa02376:	08 64       	R0 += 0x1;		/* (  1) */
ffa02378:	d0 bb       	[FP -0xc] = R0;
ffa0237a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa0237e:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa02382:	50 95       	R0 = W[P2] (X);
ffa02384:	c0 42       	R0 = R0.L (Z);
ffa02386:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff903d09(-7324407) */
ffa0238a:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa0238e:	10 4f       	R0 <<= 0x2;
ffa02390:	08 50       	R0 = R0 + R1;
ffa02392:	10 32       	P2 = R0;
ffa02394:	52 91       	P2 = [P2];
ffa02396:	90 a2       	R0 = [P2 + 0x28];
ffa02398:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0239a:	00 02       	R0 = CC;
ffa0239c:	00 0c       	CC = R0 == 0x0;
ffa0239e:	de 1b       	IF CC JUMP 0xffa0235a <_bfin_EMAC_send+0x15e>;
ffa023a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa023a4:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa023a8:	50 95       	R0 = W[P2] (X);
ffa023aa:	c0 42       	R0 = R0.L (Z);
ffa023ac:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa023b0:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa023b4:	10 4f       	R0 <<= 0x2;
ffa023b6:	08 50       	R0 = R0 + R1;
ffa023b8:	10 32       	P2 = R0;
ffa023ba:	52 91       	P2 = [P2];
ffa023bc:	90 a2       	R0 = [P2 + 0x28];
ffa023be:	e0 bb       	[FP -0x8] = R0;
ffa023c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa023c4:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa023c8:	50 95       	R0 = W[P2] (X);
ffa023ca:	c0 42       	R0 = R0.L (Z);
ffa023cc:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa023d0:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa023d4:	10 4f       	R0 <<= 0x2;
ffa023d6:	08 50       	R0 = R0 + R1;
ffa023d8:	10 32       	P2 = R0;
ffa023da:	52 91       	P2 = [P2];
ffa023dc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa023de:	90 b2       	[P2 + 0x28] = R0;
ffa023e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa023e4:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa023e8:	50 95       	R0 = W[P2] (X);
ffa023ea:	c0 42       	R0 = R0.L (Z);
ffa023ec:	10 0d       	CC = R0 <= 0x2;
ffa023ee:	08 18       	IF CC JUMP 0xffa023fe <_bfin_EMAC_send+0x202>;
ffa023f0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa023f4:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa023f8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa023fa:	10 97       	W[P2] = R0;
ffa023fc:	0c 20       	JUMP.S 0xffa02414 <_bfin_EMAC_send+0x218>;
ffa023fe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa02402:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa02406:	50 95       	R0 = W[P2] (X);
ffa02408:	08 64       	R0 += 0x1;		/* (  1) */
ffa0240a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa0240e:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa02412:	10 97       	W[P2] = R0;
ffa02414:	e0 b9       	R0 = [FP -0x8];
ffa02416:	01 e8 00 00 	UNLINK;
ffa0241a:	10 00       	RTS;

ffa0241c <_bfin_EMAC_send_check>:
ffa0241c:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa02420:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ee0(-4190496) */
ffa02424:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa02428:	50 95       	R0 = W[P2] (X);
ffa0242a:	c1 42       	R1 = R0.L (Z);
ffa0242c:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0242e:	01 54       	R0 = R1 & R0;
ffa02430:	00 0c       	CC = R0 == 0x0;
ffa02432:	04 18       	IF CC JUMP 0xffa0243a <_bfin_EMAC_send_check+0x1e>;
ffa02434:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02436:	f0 bb       	[FP -0x4] = R0;
ffa02438:	03 20       	JUMP.S 0xffa0243e <_bfin_EMAC_send_check+0x22>;
ffa0243a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0243c:	f0 bb       	[FP -0x4] = R0;
ffa0243e:	f0 b9       	R0 = [FP -0x4];
ffa02440:	01 e8 00 00 	UNLINK;
ffa02444:	10 00       	RTS;
	...

ffa02448 <_bfin_EMAC_send_nocopy>:
ffa02448:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0244c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0244e:	f0 bb       	[FP -0x4] = R0;
ffa02450:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa02454:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa02458:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0245a:	10 97       	W[P2] = R0;
ffa0245c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa02460:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa02464:	50 95       	R0 = W[P2] (X);
ffa02466:	c1 42       	R1 = R0.L (Z);
ffa02468:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0246a:	01 54       	R0 = R1 & R0;
ffa0246c:	00 0c       	CC = R0 == 0x0;
ffa0246e:	08 18       	IF CC JUMP 0xffa0247e <_bfin_EMAC_send_nocopy+0x36>;
ffa02470:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa02474:	00 e1 28 01 	R0.L = 0x128;		/* (296)	R0=0xff900128(-7339736) */
ffa02478:	ff e3 36 f9 	CALL 0xffa016e4 <_printf_str>;
ffa0247c:	8e 20       	JUMP.S 0xffa02598 <_bfin_EMAC_send_nocopy+0x150>;
ffa0247e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02480:	e0 bb       	[FP -0x8] = R0;
ffa02482:	11 20       	JUMP.S 0xffa024a4 <_bfin_EMAC_send_nocopy+0x5c>;
ffa02484:	e0 b9       	R0 = [FP -0x8];
ffa02486:	21 e1 09 3d 	R1 = 0x3d09 (X);		/*		R1=0x3d09(15625) */
ffa0248a:	31 4f       	R1 <<= 0x6;
ffa0248c:	08 09       	CC = R0 <= R1;
ffa0248e:	08 18       	IF CC JUMP 0xffa0249e <_bfin_EMAC_send_nocopy+0x56>;
ffa02490:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02494:	00 e1 6c 01 	R0.L = 0x16c;		/* (364)	R0=0xff90016c(-7339668) */
ffa02498:	ff e3 26 f9 	CALL 0xffa016e4 <_printf_str>;
ffa0249c:	7e 20       	JUMP.S 0xffa02598 <_bfin_EMAC_send_nocopy+0x150>;
ffa0249e:	e0 b9       	R0 = [FP -0x8];
ffa024a0:	08 64       	R0 += 0x1;		/* (  1) */
ffa024a2:	e0 bb       	[FP -0x8] = R0;
ffa024a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa024a8:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa024ac:	50 95       	R0 = W[P2] (X);
ffa024ae:	c1 42       	R1 = R0.L (Z);
ffa024b0:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa024b2:	01 54       	R0 = R1 & R0;
ffa024b4:	00 0c       	CC = R0 == 0x0;
ffa024b6:	e7 13       	IF !CC JUMP 0xffa02484 <_bfin_EMAC_send_nocopy+0x3c>;
ffa024b8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca8 */
ffa024bc:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa024c0:	50 95       	R0 = W[P2] (X);
ffa024c2:	c0 42       	R0 = R0.L (Z);
ffa024c4:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff903d09(-7324407) */
ffa024c8:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa024cc:	10 4f       	R0 <<= 0x2;
ffa024ce:	08 50       	R0 = R0 + R1;
ffa024d0:	10 32       	P2 = R0;
ffa024d2:	51 91       	P1 = [P2];
ffa024d4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa024d8:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa024dc:	50 95       	R0 = W[P2] (X);
ffa024de:	c0 42       	R0 = R0.L (Z);
ffa024e0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa024e4:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa024e8:	10 4f       	R0 <<= 0x2;
ffa024ea:	08 50       	R0 = R0 + R1;
ffa024ec:	10 32       	P2 = R0;
ffa024ee:	52 91       	P2 = [P2];
ffa024f0:	90 a1       	R0 = [P2 + 0x18];
ffa024f2:	48 b0       	[P1 + 0x4] = R0;
ffa024f4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa024f8:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa024fc:	50 95       	R0 = W[P2] (X);
ffa024fe:	c0 42       	R0 = R0.L (Z);
ffa02500:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa02504:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa02508:	10 4f       	R0 <<= 0x2;
ffa0250a:	08 50       	R0 = R0 + R1;
ffa0250c:	10 32       	P2 = R0;
ffa0250e:	52 91       	P2 = [P2];
ffa02510:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02512:	90 b2       	[P2 + 0x28] = R0;
ffa02514:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03000(-4182016) */
ffa02518:	09 e1 80 0c 	P1.L = 0xc80;		/* (3200)	P1=0xffc00c80(-4191104) */
ffa0251c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa02520:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa02524:	50 95       	R0 = W[P2] (X);
ffa02526:	c0 42       	R0 = R0.L (Z);
ffa02528:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa0252c:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa02530:	10 4f       	R0 <<= 0x2;
ffa02532:	08 50       	R0 = R0 + R1;
ffa02534:	10 32       	P2 = R0;
ffa02536:	10 91       	R0 = [P2];
ffa02538:	08 93       	[P1] = R0;
ffa0253a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c80(-4191104) */
ffa0253e:	09 e1 88 0c 	P1.L = 0xc88;		/* (3208)	P1=0xffc00c88(-4191096) */
ffa02542:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa02546:	0a e1 0a 01 	P2.L = 0x10a;		/* (266)	P2=0xff90010a <_txdmacfg> */
ffa0254a:	50 95       	R0 = W[P2] (X);
ffa0254c:	08 97       	W[P1] = R0;
ffa0254e:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c88(-4191096) */
ffa02552:	09 e1 00 30 	P1.L = 0x3000;		/* (12288)	P1=0xffc03000(-4182016) */
ffa02556:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0010a(-4194038) */
ffa0255a:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa0255e:	10 91       	R0 = [P2];
ffa02560:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa02562:	08 93       	[P1] = R0;
ffa02564:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa02568:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa0256c:	50 95       	R0 = W[P2] (X);
ffa0256e:	c0 42       	R0 = R0.L (Z);
ffa02570:	10 0d       	CC = R0 <= 0x2;
ffa02572:	08 18       	IF CC JUMP 0xffa02582 <_bfin_EMAC_send_nocopy+0x13a>;
ffa02574:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa02578:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa0257c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0257e:	10 97       	W[P2] = R0;
ffa02580:	0c 20       	JUMP.S 0xffa02598 <_bfin_EMAC_send_nocopy+0x150>;
ffa02582:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa02586:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa0258a:	50 95       	R0 = W[P2] (X);
ffa0258c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0258e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa02592:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa02596:	10 97       	W[P2] = R0;
ffa02598:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ee0(-4190496) */
ffa0259c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa025a0:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa025a2:	10 97       	W[P2] = R0;
ffa025a4:	f0 b9       	R0 = [FP -0x4];
ffa025a6:	01 e8 00 00 	UNLINK;
ffa025aa:	10 00       	RTS;

ffa025ac <_bfin_EMAC_recv>:
ffa025ac:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa025b0:	b8 b0       	[FP + 0x8] = R0;
ffa025b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa025b4:	f0 bb       	[FP -0x4] = R0;
ffa025b6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa025ba:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa025be:	50 95       	R0 = W[P2] (X);
ffa025c0:	c0 42       	R0 = R0.L (Z);
ffa025c2:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa025c6:	01 e1 f8 0e 	R1.L = 0xef8;		/* (3832)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa025ca:	10 4f       	R0 <<= 0x2;
ffa025cc:	08 50       	R0 = R0 + R1;
ffa025ce:	10 32       	P2 = R0;
ffa025d0:	52 91       	P2 = [P2];
ffa025d2:	91 a2       	R1 = [P2 + 0x28];
ffa025d4:	20 e1 00 10 	R0 = 0x1000 (X);		/*		R0=0x1000(4096) */
ffa025d8:	01 54       	R0 = R1 & R0;
ffa025da:	00 0c       	CC = R0 == 0x0;
ffa025dc:	04 10       	IF !CC JUMP 0xffa025e4 <_bfin_EMAC_recv+0x38>;
ffa025de:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa025e0:	f0 bb       	[FP -0x4] = R0;
ffa025e2:	c3 20       	JUMP.S 0xffa02768 <_bfin_EMAC_recv+0x1bc>;
ffa025e4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa025e8:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa025ec:	50 95       	R0 = W[P2] (X);
ffa025ee:	c0 42       	R0 = R0.L (Z);
ffa025f0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa025f4:	01 e1 f8 0e 	R1.L = 0xef8;		/* (3832)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa025f8:	10 4f       	R0 <<= 0x2;
ffa025fa:	08 50       	R0 = R0 + R1;
ffa025fc:	10 32       	P2 = R0;
ffa025fe:	52 91       	P2 = [P2];
ffa02600:	91 a2       	R1 = [P2 + 0x28];
ffa02602:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02604:	a0 4f       	R0 <<= 0x14;
ffa02606:	01 54       	R0 = R1 & R0;
ffa02608:	00 0c       	CC = R0 == 0x0;
ffa0260a:	08 18       	IF CC JUMP 0xffa0261a <_bfin_EMAC_recv+0x6e>;
ffa0260c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa02610:	00 e1 84 01 	R0.L = 0x184;		/* (388)	R0=0xff900184(-7339644) */
ffa02614:	ff e3 68 f8 	CALL 0xffa016e4 <_printf_str>;
ffa02618:	a8 20       	JUMP.S 0xffa02768 <_bfin_EMAC_recv+0x1bc>;
ffa0261a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa0261e:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa02622:	50 95       	R0 = W[P2] (X);
ffa02624:	c0 42       	R0 = R0.L (Z);
ffa02626:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa0262a:	01 e1 f8 0e 	R1.L = 0xef8;		/* (3832)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa0262e:	10 4f       	R0 <<= 0x2;
ffa02630:	08 50       	R0 = R0 + R1;
ffa02632:	10 32       	P2 = R0;
ffa02634:	52 91       	P2 = [P2];
ffa02636:	91 a2       	R1 = [P2 + 0x28];
ffa02638:	20 e1 00 20 	R0 = 0x2000 (X);		/*		R0=0x2000(8192) */
ffa0263c:	01 54       	R0 = R1 & R0;
ffa0263e:	00 0c       	CC = R0 == 0x0;
ffa02640:	08 10       	IF !CC JUMP 0xffa02650 <_bfin_EMAC_recv+0xa4>;
ffa02642:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff902000(-7331840) */
ffa02646:	00 e1 a0 01 	R0.L = 0x1a0;		/* (416)	R0=0xff9001a0(-7339616) */
ffa0264a:	ff e3 4d f8 	CALL 0xffa016e4 <_printf_str>;
ffa0264e:	8d 20       	JUMP.S 0xffa02768 <_bfin_EMAC_recv+0x1bc>;
ffa02650:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa02654:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa02658:	50 95       	R0 = W[P2] (X);
ffa0265a:	c0 42       	R0 = R0.L (Z);
ffa0265c:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa02660:	01 e1 f8 0e 	R1.L = 0xef8;		/* (3832)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa02664:	10 4f       	R0 <<= 0x2;
ffa02666:	08 50       	R0 = R0 + R1;
ffa02668:	10 32       	P2 = R0;
ffa0266a:	52 91       	P2 = [P2];
ffa0266c:	90 a2       	R0 = [P2 + 0x28];
ffa0266e:	08 30       	R1 = R0;
ffa02670:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02674:	01 54       	R0 = R1 & R0;
ffa02676:	f0 bb       	[FP -0x4] = R0;
ffa02678:	f0 b9       	R0 = [FP -0x4];
ffa0267a:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa0267c:	08 09       	CC = R0 <= R1;
ffa0267e:	08 10       	IF !CC JUMP 0xffa0268e <_bfin_EMAC_recv+0xe2>;
ffa02680:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007ff(-7337985) */
ffa02684:	00 e1 b4 01 	R0.L = 0x1b4;		/* (436)	R0=0xff9001b4(-7339596) */
ffa02688:	ff e3 2e f8 	CALL 0xffa016e4 <_printf_str>;
ffa0268c:	6e 20       	JUMP.S 0xffa02768 <_bfin_EMAC_recv+0x1bc>;
ffa0268e:	f0 b9       	R0 = [FP -0x4];
ffa02690:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa02692:	f0 bb       	[FP -0x4] = R0;
ffa02694:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa02698:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa0269c:	50 95       	R0 = W[P2] (X);
ffa0269e:	c0 42       	R0 = R0.L (Z);
ffa026a0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900004(-7340028) */
ffa026a4:	01 e1 f8 0e 	R1.L = 0xef8;		/* (3832)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa026a8:	10 4f       	R0 <<= 0x2;
ffa026aa:	08 50       	R0 = R0 + R1;
ffa026ac:	10 32       	P2 = R0;
ffa026ae:	52 91       	P2 = [P2];
ffa026b0:	90 a1       	R0 = [P2 + 0x18];
ffa026b2:	ba ac       	P2 = [FP + 0x8];
ffa026b4:	10 93       	[P2] = R0;
ffa026b6:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03000(-4182016) */
ffa026ba:	09 e1 68 0c 	P1.L = 0xc68;		/* (3176)	P1=0xffc00c68(-4191128) */
ffa026be:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ef4(-4190476) */
ffa026c2:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xffc00c68(-4191128) */
ffa026c6:	51 95       	R1 = W[P2] (X);
ffa026c8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa026ca:	01 56       	R0 = R1 | R0;
ffa026cc:	08 97       	W[P1] = R0;
ffa026ce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c68 <_g_streamEnabled> */
ffa026d2:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa026d6:	50 95       	R0 = W[P2] (X);
ffa026d8:	c0 42       	R0 = R0.L (Z);
ffa026da:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa026de:	01 e1 f8 0e 	R1.L = 0xef8;		/* (3832)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa026e2:	10 4f       	R0 <<= 0x2;
ffa026e4:	08 50       	R0 = R0 + R1;
ffa026e6:	10 32       	P2 = R0;
ffa026e8:	52 91       	P2 = [P2];
ffa026ea:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026ec:	90 b2       	[P2 + 0x28] = R0;
ffa026ee:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa026f2:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa026f6:	50 95       	R0 = W[P2] (X);
ffa026f8:	c0 42       	R0 = R0.L (Z);
ffa026fa:	10 0d       	CC = R0 <= 0x2;
ffa026fc:	08 18       	IF CC JUMP 0xffa0270c <_bfin_EMAC_recv+0x160>;
ffa026fe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa02702:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa02706:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02708:	10 97       	W[P2] = R0;
ffa0270a:	0c 20       	JUMP.S 0xffa02722 <_bfin_EMAC_recv+0x176>;
ffa0270c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa02710:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa02714:	50 95       	R0 = W[P2] (X);
ffa02716:	08 64       	R0 += 0x1;		/* (  1) */
ffa02718:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa0271c:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa02720:	10 97       	W[P2] = R0;
ffa02722:	ba ac       	P2 = [FP + 0x8];
ffa02724:	10 91       	R0 = [P2];
ffa02726:	f1 b9       	R1 = [FP -0x4];
ffa02728:	00 e3 60 0f 	CALL 0xffa045e8 <_ARP_rx>;
ffa0272c:	00 0c       	CC = R0 == 0x0;
ffa0272e:	04 18       	IF CC JUMP 0xffa02736 <_bfin_EMAC_recv+0x18a>;
ffa02730:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02732:	f0 bb       	[FP -0x4] = R0;
ffa02734:	14 20       	JUMP.S 0xffa0275c <_bfin_EMAC_recv+0x1b0>;
ffa02736:	ba ac       	P2 = [FP + 0x8];
ffa02738:	10 91       	R0 = [P2];
ffa0273a:	f1 b9       	R1 = [FP -0x4];
ffa0273c:	00 e3 64 09 	CALL 0xffa03a04 <_icmp_rx>;
ffa02740:	00 0c       	CC = R0 == 0x0;
ffa02742:	04 18       	IF CC JUMP 0xffa0274a <_bfin_EMAC_recv+0x19e>;
ffa02744:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02746:	f0 bb       	[FP -0x4] = R0;
ffa02748:	0a 20       	JUMP.S 0xffa0275c <_bfin_EMAC_recv+0x1b0>;
ffa0274a:	ba ac       	P2 = [FP + 0x8];
ffa0274c:	10 91       	R0 = [P2];
ffa0274e:	f1 b9       	R1 = [FP -0x4];
ffa02750:	00 e3 5c 14 	CALL 0xffa05008 <_tcp_rx>;
ffa02754:	00 0c       	CC = R0 == 0x0;
ffa02756:	03 18       	IF CC JUMP 0xffa0275c <_bfin_EMAC_recv+0x1b0>;
ffa02758:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0275a:	f0 bb       	[FP -0x4] = R0;
ffa0275c:	f0 b9       	R0 = [FP -0x4];
ffa0275e:	00 0d       	CC = R0 <= 0x0;
ffa02760:	2b 1b       	IF CC JUMP 0xffa025b6 <_bfin_EMAC_recv+0xa>;
ffa02762:	f0 b9       	R0 = [FP -0x4];
ffa02764:	e0 bb       	[FP -0x8] = R0;
ffa02766:	03 20       	JUMP.S 0xffa0276c <_bfin_EMAC_recv+0x1c0>;
ffa02768:	f1 b9       	R1 = [FP -0x4];
ffa0276a:	e1 bb       	[FP -0x8] = R1;
ffa0276c:	e0 b9       	R0 = [FP -0x8];
ffa0276e:	01 e8 00 00 	UNLINK;
ffa02772:	10 00       	RTS;

ffa02774 <_bfin_EMAC_recv_poll>:
ffa02774:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02778:	b8 b0       	[FP + 0x8] = R0;
ffa0277a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0277c:	e0 bb       	[FP -0x8] = R0;
ffa0277e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02780:	d0 bb       	[FP -0xc] = R0;
ffa02782:	1f 20       	JUMP.S 0xffa027c0 <_bfin_EMAC_recv_poll+0x4c>;
ffa02784:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02788:	ff e3 1e fd 	CALL 0xffa021c4 <_udelay>;
ffa0278c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa02790:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa02794:	50 95       	R0 = W[P2] (X);
ffa02796:	c0 42       	R0 = R0.L (Z);
ffa02798:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa0279c:	01 e1 f8 0e 	R1.L = 0xef8;		/* (3832)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa027a0:	10 4f       	R0 <<= 0x2;
ffa027a2:	08 50       	R0 = R0 + R1;
ffa027a4:	10 32       	P2 = R0;
ffa027a6:	52 91       	P2 = [P2];
ffa027a8:	91 a2       	R1 = [P2 + 0x28];
ffa027aa:	20 e1 00 10 	R0 = 0x1000 (X);		/*		R0=0x1000(4096) */
ffa027ae:	01 54       	R0 = R1 & R0;
ffa027b0:	00 0c       	CC = R0 == 0x0;
ffa027b2:	04 18       	IF CC JUMP 0xffa027ba <_bfin_EMAC_recv_poll+0x46>;
ffa027b4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa027b6:	e0 bb       	[FP -0x8] = R0;
ffa027b8:	09 20       	JUMP.S 0xffa027ca <_bfin_EMAC_recv_poll+0x56>;
ffa027ba:	d0 b9       	R0 = [FP -0xc];
ffa027bc:	08 64       	R0 += 0x1;		/* (  1) */
ffa027be:	d0 bb       	[FP -0xc] = R0;
ffa027c0:	d0 b9       	R0 = [FP -0xc];
ffa027c2:	21 e1 63 00 	R1 = 0x63 (X);		/*		R1=0x63( 99) */
ffa027c6:	08 09       	CC = R0 <= R1;
ffa027c8:	de 1b       	IF CC JUMP 0xffa02784 <_bfin_EMAC_recv_poll+0x10>;
ffa027ca:	e0 b9       	R0 = [FP -0x8];
ffa027cc:	00 0c       	CC = R0 == 0x0;
ffa027ce:	0a 10       	IF !CC JUMP 0xffa027e2 <_bfin_EMAC_recv_poll+0x6e>;
ffa027d0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa027d4:	00 e1 cc 01 	R0.L = 0x1cc;		/* (460)	R0=0xff9001cc(-7339572) */
ffa027d8:	ff e3 86 f7 	CALL 0xffa016e4 <_printf_str>;
ffa027dc:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa027de:	c0 bb       	[FP -0x10] = R0;
ffa027e0:	86 20       	JUMP.S 0xffa028ec <_bfin_EMAC_recv_poll+0x178>;
ffa027e2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa027e6:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa027ea:	50 95       	R0 = W[P2] (X);
ffa027ec:	c0 42       	R0 = R0.L (Z);
ffa027ee:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900063(-7339933) */
ffa027f2:	01 e1 f8 0e 	R1.L = 0xef8;		/* (3832)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa027f6:	10 4f       	R0 <<= 0x2;
ffa027f8:	08 50       	R0 = R0 + R1;
ffa027fa:	10 32       	P2 = R0;
ffa027fc:	52 91       	P2 = [P2];
ffa027fe:	90 a2       	R0 = [P2 + 0x28];
ffa02800:	08 30       	R1 = R0;
ffa02802:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02806:	01 54       	R0 = R1 & R0;
ffa02808:	f0 bb       	[FP -0x4] = R0;
ffa0280a:	f0 b9       	R0 = [FP -0x4];
ffa0280c:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa0280e:	08 09       	CC = R0 <= R1;
ffa02810:	04 10       	IF !CC JUMP 0xffa02818 <_bfin_EMAC_recv_poll+0xa4>;
ffa02812:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02814:	c0 bb       	[FP -0x10] = R0;
ffa02816:	6b 20       	JUMP.S 0xffa028ec <_bfin_EMAC_recv_poll+0x178>;
ffa02818:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa0281c:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa02820:	50 95       	R0 = W[P2] (X);
ffa02822:	c0 42       	R0 = R0.L (Z);
ffa02824:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900004(-7340028) */
ffa02828:	01 e1 f8 0e 	R1.L = 0xef8;		/* (3832)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa0282c:	10 4f       	R0 <<= 0x2;
ffa0282e:	08 50       	R0 = R0 + R1;
ffa02830:	10 32       	P2 = R0;
ffa02832:	52 91       	P2 = [P2];
ffa02834:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02836:	90 b2       	[P2 + 0x28] = R0;
ffa02838:	f0 b9       	R0 = [FP -0x4];
ffa0283a:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa0283c:	f0 bb       	[FP -0x4] = R0;
ffa0283e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02842:	00 e1 dc 01 	R0.L = 0x1dc;		/* (476)	R0=0xff9001dc(-7339556) */
ffa02846:	f1 b9       	R1 = [FP -0x4];
ffa02848:	ff e3 58 f7 	CALL 0xffa016f8 <_printf_int>;
ffa0284c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa02850:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa02854:	50 95       	R0 = W[P2] (X);
ffa02856:	c0 42       	R0 = R0.L (Z);
ffa02858:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa0285c:	01 e1 f8 0e 	R1.L = 0xef8;		/* (3832)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa02860:	10 4f       	R0 <<= 0x2;
ffa02862:	08 50       	R0 = R0 + R1;
ffa02864:	10 32       	P2 = R0;
ffa02866:	52 91       	P2 = [P2];
ffa02868:	90 a1       	R0 = [P2 + 0x18];
ffa0286a:	ba ac       	P2 = [FP + 0x8];
ffa0286c:	10 93       	[P2] = R0;
ffa0286e:	ba ac       	P2 = [FP + 0x8];
ffa02870:	10 91       	R0 = [P2];
ffa02872:	f1 b9       	R1 = [FP -0x4];
ffa02874:	00 e3 ba 0e 	CALL 0xffa045e8 <_ARP_rx>;
ffa02878:	00 0c       	CC = R0 == 0x0;
ffa0287a:	04 18       	IF CC JUMP 0xffa02882 <_bfin_EMAC_recv_poll+0x10e>;
ffa0287c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0287e:	f0 bb       	[FP -0x4] = R0;
ffa02880:	0a 20       	JUMP.S 0xffa02894 <_bfin_EMAC_recv_poll+0x120>;
ffa02882:	ba ac       	P2 = [FP + 0x8];
ffa02884:	10 91       	R0 = [P2];
ffa02886:	f1 b9       	R1 = [FP -0x4];
ffa02888:	00 e3 be 08 	CALL 0xffa03a04 <_icmp_rx>;
ffa0288c:	00 0c       	CC = R0 == 0x0;
ffa0288e:	03 18       	IF CC JUMP 0xffa02894 <_bfin_EMAC_recv_poll+0x120>;
ffa02890:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02892:	f0 bb       	[FP -0x4] = R0;
ffa02894:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa02898:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa0289c:	50 95       	R0 = W[P2] (X);
ffa0289e:	c0 42       	R0 = R0.L (Z);
ffa028a0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa028a4:	01 e1 f8 0e 	R1.L = 0xef8;		/* (3832)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa028a8:	10 4f       	R0 <<= 0x2;
ffa028aa:	08 50       	R0 = R0 + R1;
ffa028ac:	10 32       	P2 = R0;
ffa028ae:	52 91       	P2 = [P2];
ffa028b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa028b2:	90 b2       	[P2 + 0x28] = R0;
ffa028b4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa028b8:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa028bc:	50 95       	R0 = W[P2] (X);
ffa028be:	c0 42       	R0 = R0.L (Z);
ffa028c0:	10 0d       	CC = R0 <= 0x2;
ffa028c2:	08 18       	IF CC JUMP 0xffa028d2 <_bfin_EMAC_recv_poll+0x15e>;
ffa028c4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa028c8:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa028cc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa028ce:	10 97       	W[P2] = R0;
ffa028d0:	0c 20       	JUMP.S 0xffa028e8 <_bfin_EMAC_recv_poll+0x174>;
ffa028d2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa028d6:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa028da:	50 95       	R0 = W[P2] (X);
ffa028dc:	08 64       	R0 += 0x1;		/* (  1) */
ffa028de:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa028e2:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa028e6:	10 97       	W[P2] = R0;
ffa028e8:	f1 b9       	R1 = [FP -0x4];
ffa028ea:	c1 bb       	[FP -0x10] = R1;
ffa028ec:	c0 b9       	R0 = [FP -0x10];
ffa028ee:	01 e8 00 00 	UNLINK;
ffa028f2:	10 00       	RTS;

ffa028f4 <_FormatIPAddress>:
ffa028f4:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa028f8:	7b a1       	R3 = [FP + 0x14];
ffa028fa:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa028fe:	01 30       	R0 = R1;
ffa02900:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa02904:	02 30       	R0 = R2;
ffa02906:	b8 e6 10 00 	B[FP + 0x10] = R0;
ffa0290a:	03 30       	R0 = R3;
ffa0290c:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa02910:	b8 e4 f8 ff 	R0 = B[FP + -0x8] (Z);
ffa02914:	f0 bb       	[FP -0x4] = R0;
ffa02916:	f0 b9       	R0 = [FP -0x4];
ffa02918:	40 4f       	R0 <<= 0x8;
ffa0291a:	f0 bb       	[FP -0x4] = R0;
ffa0291c:	b9 e4 10 00 	R1 = B[FP + 0x10] (Z);
ffa02920:	f0 b9       	R0 = [FP -0x4];
ffa02922:	08 56       	R0 = R0 | R1;
ffa02924:	f0 bb       	[FP -0x4] = R0;
ffa02926:	f0 b9       	R0 = [FP -0x4];
ffa02928:	40 4f       	R0 <<= 0x8;
ffa0292a:	f0 bb       	[FP -0x4] = R0;
ffa0292c:	b9 e4 0c 00 	R1 = B[FP + 0xc] (Z);
ffa02930:	f0 b9       	R0 = [FP -0x4];
ffa02932:	08 56       	R0 = R0 | R1;
ffa02934:	f0 bb       	[FP -0x4] = R0;
ffa02936:	f0 b9       	R0 = [FP -0x4];
ffa02938:	40 4f       	R0 <<= 0x8;
ffa0293a:	f0 bb       	[FP -0x4] = R0;
ffa0293c:	b9 e4 08 00 	R1 = B[FP + 0x8] (Z);
ffa02940:	f0 b9       	R0 = [FP -0x4];
ffa02942:	08 56       	R0 = R0 | R1;
ffa02944:	f0 bb       	[FP -0x4] = R0;
ffa02946:	f0 b9       	R0 = [FP -0x4];
ffa02948:	01 e8 00 00 	UNLINK;
ffa0294c:	10 00       	RTS;
	...

ffa02950 <_bfin_EMAC_init>:
ffa02950:	78 05       	[--SP] = (R7:7);
ffa02952:	00 e8 08 00 	LINK 0x20;		/* (32) */
ffa02956:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02958:	e0 bb       	[FP -0x8] = R0;
ffa0295a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0295e:	00 e1 e8 01 	R0.L = 0x1e8;		/* (488)	R0=0xff9001e8(-7339544) */
ffa02962:	ff e3 c1 f6 	CALL 0xffa016e4 <_printf_str>;
ffa02966:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa0296a:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa0296e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02970:	10 97       	W[P2] = R0;
ffa02972:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa02976:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa0297a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0297c:	10 97       	W[P2] = R0;
ffa0297e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa02982:	0a e1 e2 0e 	P2.L = 0xee2;		/* (3810)	P2=0xff900ee2 <_NetIPID> */
ffa02986:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02988:	10 97       	W[P2] = R0;
ffa0298a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee2 <_NetIPID> */
ffa0298e:	0a e1 14 0f 	P2.L = 0xf14;		/* (3860)	P2=0xff900f14 <_NetOurIP> */
ffa02992:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02994:	10 93       	[P2] = R0;
ffa02996:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f14 <_NetOurIP> */
ffa0299a:	0a e1 10 0f 	P2.L = 0xf10;		/* (3856)	P2=0xff900f10 <_NetSubnetMask> */
ffa0299e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa029a0:	10 93       	[P2] = R0;
ffa029a2:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa029a4:	f0 b0       	[SP + 0xc] = R0;
ffa029a6:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa029aa:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa029ae:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa029b0:	ff e3 a2 ff 	CALL 0xffa028f4 <_FormatIPAddress>;
ffa029b4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f10 <_NetSubnetMask> */
ffa029b8:	0a e1 14 0f 	P2.L = 0xf14;		/* (3860)	P2=0xff900f14 <_NetOurIP> */
ffa029bc:	10 93       	[P2] = R0;
ffa029be:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa029c0:	f0 b0       	[SP + 0xc] = R0;
ffa029c2:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa029c6:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa029ca:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa029cc:	ff e3 94 ff 	CALL 0xffa028f4 <_FormatIPAddress>;
ffa029d0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f14 <_NetOurIP> */
ffa029d4:	0a e1 d8 0e 	P2.L = 0xed8;		/* (3800)	P2=0xff900ed8 <_NetDestIP> */
ffa029d8:	10 93       	[P2] = R0;
ffa029da:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa029dc:	f0 b0       	[SP + 0xc] = R0;
ffa029de:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa029e2:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa029e4:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa029e8:	ff e3 86 ff 	CALL 0xffa028f4 <_FormatIPAddress>;
ffa029ec:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed8 <_NetDestIP> */
ffa029f0:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa029f4:	10 93       	[P2] = R0;
ffa029f6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa029fa:	0a e1 f8 0f 	P2.L = 0xff8;		/* (4088)	P2=0xff900ff8 <_TcpState> */
ffa029fe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a00:	10 93       	[P2] = R0;
ffa02a02:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff8 <_TcpState> */
ffa02a06:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa02a0a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a0c:	10 93       	[P2] = R0;
ffa02a0e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa02a12:	0a e1 ec 0f 	P2.L = 0xfec;		/* (4076)	P2=0xff900fec <_TcpSeqHost> */
ffa02a16:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0000(165281792) */
ffa02a1a:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa02a1e:	10 93       	[P2] = R0;
ffa02a20:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fec <_TcpSeqHost> */
ffa02a24:	0a e1 04 10 	P2.L = 0x1004;		/* (4100)	P2=0xff901004 <_TcpClientPort> */
ffa02a28:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a2a:	10 97       	W[P2] = R0;
ffa02a2c:	00 e3 ce 0c 	CALL 0xffa043c8 <_ARP_init>;
ffa02a30:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01004(-4190204) */
ffa02a34:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02a38:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a3a:	10 93       	[P2] = R0;
ffa02a3c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02a40:	00 e1 08 0f 	R0.L = 0xf08;		/* (3848)	R0=0xff900f08 <_NetOurMAC>(-7336184) */
ffa02a44:	00 e3 e8 00 	CALL 0xffa02c14 <_SetupMacAddr>;
ffa02a48:	47 30       	R0 = FP;
ffa02a4a:	a0 67       	R0 += -0xc;		/* (-12) */
ffa02a4c:	00 e3 dc 01 	CALL 0xffa02e04 <_SetupSystemRegs>;
ffa02a50:	80 0c       	CC = R0 < 0x0;
ffa02a52:	04 10       	IF !CC JUMP 0xffa02a5a <_bfin_EMAC_init+0x10a>;
ffa02a54:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02a56:	c0 bb       	[FP -0x10] = R0;
ffa02a58:	c0 20       	JUMP.S 0xffa02bd8 <_bfin_EMAC_init+0x288>;
ffa02a5a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a5c:	f0 bb       	[FP -0x4] = R0;
ffa02a5e:	3b 20       	JUMP.S 0xffa02ad4 <_bfin_EMAC_init+0x184>;
ffa02a60:	f7 b9       	R7 = [FP -0x4];
ffa02a62:	f0 b9       	R0 = [FP -0x4];
ffa02a64:	00 e3 ac 02 	CALL 0xffa02fbc <_SetupRxBuffer>;
ffa02a68:	10 30       	R2 = R0;
ffa02a6a:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900010(-7340016) */
ffa02a6e:	01 e1 f8 0e 	R1.L = 0xef8;		/* (3832)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa02a72:	82 c6 17 80 	R0 = R7 << 0x2;
ffa02a76:	08 50       	R0 = R0 + R1;
ffa02a78:	10 32       	P2 = R0;
ffa02a7a:	12 93       	[P2] = R2;
ffa02a7c:	f0 b9       	R0 = [FP -0x4];
ffa02a7e:	00 0d       	CC = R0 <= 0x0;
ffa02a80:	27 18       	IF CC JUMP 0xffa02ace <_bfin_EMAC_init+0x17e>;
ffa02a82:	f0 b9       	R0 = [FP -0x4];
ffa02a84:	f8 67       	R0 += -0x1;		/* ( -1) */
ffa02a86:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa02a8a:	01 e1 f8 0e 	R1.L = 0xef8;		/* (3832)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa02a8e:	10 4f       	R0 <<= 0x2;
ffa02a90:	08 50       	R0 = R0 + R1;
ffa02a92:	10 32       	P2 = R0;
ffa02a94:	51 91       	P1 = [P2];
ffa02a96:	f0 b9       	R0 = [FP -0x4];
ffa02a98:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa02a9c:	01 e1 f8 0e 	R1.L = 0xef8;		/* (3832)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa02aa0:	10 4f       	R0 <<= 0x2;
ffa02aa2:	08 50       	R0 = R0 + R1;
ffa02aa4:	10 32       	P2 = R0;
ffa02aa6:	10 91       	R0 = [P2];
ffa02aa8:	c8 b0       	[P1 + 0xc] = R0;
ffa02aaa:	f0 b9       	R0 = [FP -0x4];
ffa02aac:	18 0c       	CC = R0 == 0x3;
ffa02aae:	10 10       	IF !CC JUMP 0xffa02ace <_bfin_EMAC_init+0x17e>;
ffa02ab0:	f0 b9       	R0 = [FP -0x4];
ffa02ab2:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa02ab6:	01 e1 f8 0e 	R1.L = 0xef8;		/* (3832)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa02aba:	10 4f       	R0 <<= 0x2;
ffa02abc:	08 50       	R0 = R0 + R1;
ffa02abe:	10 32       	P2 = R0;
ffa02ac0:	51 91       	P1 = [P2];
ffa02ac2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa02ac6:	0a e1 f8 0e 	P2.L = 0xef8;		/* (3832)	P2=0xff900ef8 <_rxbuf> */
ffa02aca:	10 91       	R0 = [P2];
ffa02acc:	c8 b0       	[P1 + 0xc] = R0;
ffa02ace:	f0 b9       	R0 = [FP -0x4];
ffa02ad0:	08 64       	R0 += 0x1;		/* (  1) */
ffa02ad2:	f0 bb       	[FP -0x4] = R0;
ffa02ad4:	f0 b9       	R0 = [FP -0x4];
ffa02ad6:	18 0d       	CC = R0 <= 0x3;
ffa02ad8:	c4 1b       	IF CC JUMP 0xffa02a60 <_bfin_EMAC_init+0x110>;
ffa02ada:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02adc:	f0 bb       	[FP -0x4] = R0;
ffa02ade:	3b 20       	JUMP.S 0xffa02b54 <_bfin_EMAC_init+0x204>;
ffa02ae0:	f7 b9       	R7 = [FP -0x4];
ffa02ae2:	f0 b9       	R0 = [FP -0x4];
ffa02ae4:	00 e3 30 03 	CALL 0xffa03144 <_SetupTxBuffer>;
ffa02ae8:	10 30       	R2 = R0;
ffa02aea:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa02aee:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa02af2:	82 c6 17 80 	R0 = R7 << 0x2;
ffa02af6:	08 50       	R0 = R0 + R1;
ffa02af8:	10 32       	P2 = R0;
ffa02afa:	12 93       	[P2] = R2;
ffa02afc:	f0 b9       	R0 = [FP -0x4];
ffa02afe:	00 0d       	CC = R0 <= 0x0;
ffa02b00:	27 18       	IF CC JUMP 0xffa02b4e <_bfin_EMAC_init+0x1fe>;
ffa02b02:	f0 b9       	R0 = [FP -0x4];
ffa02b04:	f8 67       	R0 += -0x1;		/* ( -1) */
ffa02b06:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa02b0a:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa02b0e:	10 4f       	R0 <<= 0x2;
ffa02b10:	08 50       	R0 = R0 + R1;
ffa02b12:	10 32       	P2 = R0;
ffa02b14:	51 91       	P1 = [P2];
ffa02b16:	f0 b9       	R0 = [FP -0x4];
ffa02b18:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa02b1c:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa02b20:	10 4f       	R0 <<= 0x2;
ffa02b22:	08 50       	R0 = R0 + R1;
ffa02b24:	10 32       	P2 = R0;
ffa02b26:	10 91       	R0 = [P2];
ffa02b28:	c8 b0       	[P1 + 0xc] = R0;
ffa02b2a:	f0 b9       	R0 = [FP -0x4];
ffa02b2c:	18 0c       	CC = R0 == 0x3;
ffa02b2e:	10 10       	IF !CC JUMP 0xffa02b4e <_bfin_EMAC_init+0x1fe>;
ffa02b30:	f0 b9       	R0 = [FP -0x4];
ffa02b32:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa02b36:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa02b3a:	10 4f       	R0 <<= 0x2;
ffa02b3c:	08 50       	R0 = R0 + R1;
ffa02b3e:	10 32       	P2 = R0;
ffa02b40:	51 91       	P1 = [P2];
ffa02b42:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef8 <_rxbuf> */
ffa02b46:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_txbuf> */
ffa02b4a:	10 91       	R0 = [P2];
ffa02b4c:	c8 b0       	[P1 + 0xc] = R0;
ffa02b4e:	f0 b9       	R0 = [FP -0x4];
ffa02b50:	08 64       	R0 += 0x1;		/* (  1) */
ffa02b52:	f0 bb       	[FP -0x4] = R0;
ffa02b54:	f0 b9       	R0 = [FP -0x4];
ffa02b56:	18 0d       	CC = R0 <= 0x3;
ffa02b58:	c4 1b       	IF CC JUMP 0xffa02ae0 <_bfin_EMAC_init+0x190>;
ffa02b5a:	00 00       	NOP;
ffa02b5c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c68(-4191128) */
ffa02b60:	09 e1 40 0c 	P1.L = 0xc40;		/* (3136)	P1=0xffc00c40(-4191168) */
ffa02b64:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_txbuf> */
ffa02b68:	0a e1 f8 0e 	P2.L = 0xef8;		/* (3832)	P2=0xff900ef8 <_rxbuf> */
ffa02b6c:	10 91       	R0 = [P2];
ffa02b6e:	08 93       	[P1] = R0;
ffa02b70:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c40(-4191168) */
ffa02b74:	09 e1 48 0c 	P1.L = 0xc48;		/* (3144)	P1=0xffc00c48(-4191160) */
ffa02b78:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef8 <_rxbuf> */
ffa02b7c:	0a e1 f8 0e 	P2.L = 0xef8;		/* (3832)	P2=0xff900ef8 <_rxbuf> */
ffa02b80:	10 91       	R0 = [P2];
ffa02b82:	40 64       	R0 += 0x8;		/* (  8) */
ffa02b84:	10 32       	P2 = R0;
ffa02b86:	50 95       	R0 = W[P2] (X);
ffa02b88:	08 97       	W[P1] = R0;
ffa02b8a:	00 e3 bb 00 	CALL 0xffa02d00 <_PollMdcDone>;
ffa02b8e:	d0 b9       	R0 = [FP -0xc];
ffa02b90:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02b92:	d1 4f       	R1 <<= 0x1a;
ffa02b94:	08 08       	CC = R0 == R1;
ffa02b96:	06 10       	IF !CC JUMP 0xffa02ba2 <_bfin_EMAC_init+0x252>;
ffa02b98:	20 e1 02 08 	R0 = 0x802 (X);		/*		R0=0x802(2050) */
ffa02b9c:	d0 4a       	BITSET (R0, 0x1a);		/* bit 26 */
ffa02b9e:	e0 bb       	[FP -0x8] = R0;
ffa02ba0:	04 20       	JUMP.S 0xffa02ba8 <_bfin_EMAC_init+0x258>;
ffa02ba2:	20 e1 02 08 	R0 = 0x802 (X);		/*		R0=0x802(2050) */
ffa02ba6:	e0 bb       	[FP -0x8] = R0;
ffa02ba8:	e0 b9       	R0 = [FP -0x8];
ffa02baa:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02bac:	e0 bb       	[FP -0x8] = R0;
ffa02bae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ef8(-4190472) */
ffa02bb2:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02bb6:	e0 b9       	R0 = [FP -0x8];
ffa02bb8:	10 93       	[P2] = R0;
ffa02bba:	e1 b9       	R1 = [FP -0x8];
ffa02bbc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900802(-7337982) */
ffa02bc0:	00 e1 f8 01 	R0.L = 0x1f8;		/* (504)	R0=0xff9001f8(-7339528) */
ffa02bc4:	ff e3 70 f6 	CALL 0xffa018a4 <_printf_hex>;
ffa02bc8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001f8(-7339528) */
ffa02bcc:	00 e1 04 02 	R0.L = 0x204;		/* (516)	R0=0xff900204(-7339516) */
ffa02bd0:	ff e3 8a f5 	CALL 0xffa016e4 <_printf_str>;
ffa02bd4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02bd6:	c0 bb       	[FP -0x10] = R0;
ffa02bd8:	c0 b9       	R0 = [FP -0x10];
ffa02bda:	01 e8 00 00 	UNLINK;
ffa02bde:	38 05       	(R7:7) = [SP++];
ffa02be0:	10 00       	RTS;
	...

ffa02be4 <_bfin_EMAC_halt>:
ffa02be4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02be8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa02bec:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02bf0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02bf2:	10 93       	[P2] = R0;
ffa02bf4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa02bf8:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa02bfc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02bfe:	10 97       	W[P2] = R0;
ffa02c00:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa02c04:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa02c08:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02c0a:	10 97       	W[P2] = R0;
ffa02c0c:	01 e8 00 00 	UNLINK;
ffa02c10:	10 00       	RTS;
	...

ffa02c14 <_SetupMacAddr>:
ffa02c14:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02c18:	b8 b0       	[FP + 0x8] = R0;
ffa02c1a:	ba ac       	P2 = [FP + 0x8];
ffa02c1c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02c1e:	10 9b       	B[P2] = R0;
ffa02c20:	b8 a0       	R0 = [FP + 0x8];
ffa02c22:	10 32       	P2 = R0;
ffa02c24:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02c26:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa02c28:	10 9b       	B[P2] = R0;
ffa02c2a:	b8 a0       	R0 = [FP + 0x8];
ffa02c2c:	10 32       	P2 = R0;
ffa02c2e:	12 6c       	P2 += 0x2;		/* (  2) */
ffa02c30:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa02c32:	10 9b       	B[P2] = R0;
ffa02c34:	b8 a0       	R0 = [FP + 0x8];
ffa02c36:	10 32       	P2 = R0;
ffa02c38:	1a 6c       	P2 += 0x3;		/* (  3) */
ffa02c3a:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa02c3c:	10 9b       	B[P2] = R0;
ffa02c3e:	b8 a0       	R0 = [FP + 0x8];
ffa02c40:	10 32       	P2 = R0;
ffa02c42:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02c44:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa02c48:	10 9b       	B[P2] = R0;
ffa02c4a:	b8 a0       	R0 = [FP + 0x8];
ffa02c4c:	10 32       	P2 = R0;
ffa02c4e:	2a 6c       	P2 += 0x5;		/* (  5) */
ffa02c50:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa02c52:	10 9b       	B[P2] = R0;
ffa02c54:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c48(-4191160) */
ffa02c58:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa02c5c:	ba ac       	P2 = [FP + 0x8];
ffa02c5e:	50 99       	R0 = B[P2] (X);
ffa02c60:	41 43       	R1 = R0.B (Z);
ffa02c62:	b8 a0       	R0 = [FP + 0x8];
ffa02c64:	10 32       	P2 = R0;
ffa02c66:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02c68:	50 99       	R0 = B[P2] (X);
ffa02c6a:	40 43       	R0 = R0.B (Z);
ffa02c6c:	40 4f       	R0 <<= 0x8;
ffa02c6e:	41 56       	R1 = R1 | R0;
ffa02c70:	b8 a0       	R0 = [FP + 0x8];
ffa02c72:	10 32       	P2 = R0;
ffa02c74:	12 6c       	P2 += 0x2;		/* (  2) */
ffa02c76:	50 99       	R0 = B[P2] (X);
ffa02c78:	40 43       	R0 = R0.B (Z);
ffa02c7a:	80 4f       	R0 <<= 0x10;
ffa02c7c:	41 56       	R1 = R1 | R0;
ffa02c7e:	b8 a0       	R0 = [FP + 0x8];
ffa02c80:	10 32       	P2 = R0;
ffa02c82:	1a 6c       	P2 += 0x3;		/* (  3) */
ffa02c84:	50 99       	R0 = B[P2] (X);
ffa02c86:	40 43       	R0 = R0.B (Z);
ffa02c88:	c0 4f       	R0 <<= 0x18;
ffa02c8a:	01 56       	R0 = R1 | R0;
ffa02c8c:	08 93       	[P1] = R0;
ffa02c8e:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03004(-4182012) */
ffa02c92:	09 e1 08 30 	P1.L = 0x3008;		/* (12296)	P1=0xffc03008(-4182008) */
ffa02c96:	b8 a0       	R0 = [FP + 0x8];
ffa02c98:	10 32       	P2 = R0;
ffa02c9a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02c9c:	50 99       	R0 = B[P2] (X);
ffa02c9e:	41 43       	R1 = R0.B (Z);
ffa02ca0:	b8 a0       	R0 = [FP + 0x8];
ffa02ca2:	10 32       	P2 = R0;
ffa02ca4:	2a 6c       	P2 += 0x5;		/* (  5) */
ffa02ca6:	50 99       	R0 = B[P2] (X);
ffa02ca8:	40 43       	R0 = R0.B (Z);
ffa02caa:	40 4f       	R0 <<= 0x8;
ffa02cac:	01 56       	R0 = R1 | R0;
ffa02cae:	08 93       	[P1] = R0;
ffa02cb0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa02cb4:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa02cb8:	10 91       	R0 = [P2];
ffa02cba:	08 30       	R1 = R0;
ffa02cbc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa02cc0:	00 e1 08 02 	R0.L = 0x208;		/* (520)	R0=0xff900208(-7339512) */
ffa02cc4:	ff e3 f0 f5 	CALL 0xffa018a4 <_printf_hex>;
ffa02cc8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900208(-7339512) */
ffa02ccc:	00 e1 04 02 	R0.L = 0x204;		/* (516)	R0=0xff900204(-7339516) */
ffa02cd0:	ff e3 0a f5 	CALL 0xffa016e4 <_printf_str>;
ffa02cd4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03004(-4182012) */
ffa02cd8:	0a e1 08 30 	P2.L = 0x3008;		/* (12296)	P2=0xffc03008(-4182008) */
ffa02cdc:	10 91       	R0 = [P2];
ffa02cde:	08 30       	R1 = R0;
ffa02ce0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900204(-7339516) */
ffa02ce4:	00 e1 14 02 	R0.L = 0x214;		/* (532)	R0=0xff900214(-7339500) */
ffa02ce8:	ff e3 de f5 	CALL 0xffa018a4 <_printf_hex>;
ffa02cec:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900214(-7339500) */
ffa02cf0:	00 e1 04 02 	R0.L = 0x204;		/* (516)	R0=0xff900204(-7339516) */
ffa02cf4:	ff e3 f8 f4 	CALL 0xffa016e4 <_printf_str>;
ffa02cf8:	01 e8 00 00 	UNLINK;
ffa02cfc:	10 00       	RTS;
	...

ffa02d00 <_PollMdcDone>:
ffa02d00:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02d04:	02 20       	JUMP.S 0xffa02d08 <_PollMdcDone+0x8>;
ffa02d06:	00 00       	NOP;
ffa02d08:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03008(-4182008) */
ffa02d0c:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa02d10:	10 91       	R0 = [P2];
ffa02d12:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa02d14:	00 02       	R0 = CC;
ffa02d16:	40 43       	R0 = R0.B (Z);
ffa02d18:	00 0c       	CC = R0 == 0x0;
ffa02d1a:	f6 13       	IF !CC JUMP 0xffa02d06 <_PollMdcDone+0x6>;
ffa02d1c:	01 e8 00 00 	UNLINK;
ffa02d20:	10 00       	RTS;
	...

ffa02d24 <_WrPHYReg>:
ffa02d24:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02d28:	38 b5       	W[FP + 0x8] = R0;
ffa02d2a:	01 30       	R0 = R1;
ffa02d2c:	b8 b5       	W[FP + 0xc] = R0;
ffa02d2e:	02 30       	R0 = R2;
ffa02d30:	38 b6       	W[FP + 0x10] = R0;
ffa02d32:	ff e3 e7 ff 	CALL 0xffa02d00 <_PollMdcDone>;
ffa02d36:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa02d3a:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa02d3e:	38 a6       	R0 = W[FP + 0x10] (Z);
ffa02d40:	10 93       	[P2] = R0;
ffa02d42:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa02d46:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa02d4a:	39 a5       	R1 = W[FP + 0x8] (Z);
ffa02d4c:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa02d4e:	01 54       	R0 = R1 & R0;
ffa02d50:	82 c6 58 84 	R2 = R0 << 0xb;
ffa02d54:	b9 a5       	R1 = W[FP + 0xc] (Z);
ffa02d56:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa02d58:	01 54       	R0 = R1 & R0;
ffa02d5a:	30 4f       	R0 <<= 0x6;
ffa02d5c:	42 56       	R1 = R2 | R0;
ffa02d5e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02d60:	01 56       	R0 = R1 | R0;
ffa02d62:	10 93       	[P2] = R0;
ffa02d64:	01 e8 00 00 	UNLINK;
ffa02d68:	10 00       	RTS;
	...

ffa02d6c <_RdPHYReg>:
ffa02d6c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02d70:	38 b5       	W[FP + 0x8] = R0;
ffa02d72:	01 30       	R0 = R1;
ffa02d74:	b8 b5       	W[FP + 0xc] = R0;
ffa02d76:	ff e3 c5 ff 	CALL 0xffa02d00 <_PollMdcDone>;
ffa02d7a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa02d7e:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa02d82:	39 a5       	R1 = W[FP + 0x8] (Z);
ffa02d84:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa02d86:	01 54       	R0 = R1 & R0;
ffa02d88:	82 c6 58 84 	R2 = R0 << 0xb;
ffa02d8c:	b9 a5       	R1 = W[FP + 0xc] (Z);
ffa02d8e:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa02d90:	01 54       	R0 = R1 & R0;
ffa02d92:	30 4f       	R0 <<= 0x6;
ffa02d94:	02 56       	R0 = R2 | R0;
ffa02d96:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02d98:	10 93       	[P2] = R0;
ffa02d9a:	ff e3 b3 ff 	CALL 0xffa02d00 <_PollMdcDone>;
ffa02d9e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa02da2:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa02da6:	10 91       	R0 = [P2];
ffa02da8:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa02dac:	b8 a5       	R0 = W[FP + 0xc] (Z);
ffa02dae:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900001(-7340031) */
ffa02db2:	01 e1 98 0e 	R1.L = 0xe98;		/* (3736)	R1=0xff900e98 <_PHYregs>(-7336296) */
ffa02db6:	08 4f       	R0 <<= 0x1;
ffa02db8:	08 50       	R0 = R0 + R1;
ffa02dba:	10 32       	P2 = R0;
ffa02dbc:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa02dc0:	10 97       	W[P2] = R0;
ffa02dc2:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa02dc6:	01 e8 00 00 	UNLINK;
ffa02dca:	10 00       	RTS;

ffa02dcc <_SoftResetPHY>:
ffa02dcc:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02dd0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02dd2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02dd4:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa02dd8:	ff e3 a6 ff 	CALL 0xffa02d24 <_WrPHYReg>;
ffa02ddc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02dde:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02de0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02de2:	ff e3 a1 ff 	CALL 0xffa02d24 <_WrPHYReg>;
ffa02de6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02de8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02dea:	ff e3 c1 ff 	CALL 0xffa02d6c <_RdPHYReg>;
ffa02dee:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa02df2:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa02df6:	80 42       	R0 = R0.L (X);
ffa02df8:	80 0c       	CC = R0 < 0x0;
ffa02dfa:	f6 1b       	IF CC JUMP 0xffa02de6 <_SoftResetPHY+0x1a>;
ffa02dfc:	01 e8 00 00 	UNLINK;
ffa02e00:	10 00       	RTS;
	...

ffa02e04 <_SetupSystemRegs>:
ffa02e04:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02e08:	b8 b0       	[FP + 0x8] = R0;
ffa02e0a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02e0e:	00 e1 20 02 	R0.L = 0x220;		/* (544)	R0=0xff900220(-7339488) */
ffa02e12:	ff e3 69 f4 	CALL 0xffa016e4 <_printf_str>;
ffa02e16:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02e18:	f0 bb       	[FP -0x4] = R0;
ffa02e1a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03008(-4182008) */
ffa02e1e:	09 e1 14 32 	P1.L = 0x3214;		/* (12820)	P1=0xffc03214(-4181484) */
ffa02e22:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa02e26:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa02e2a:	51 95       	R1 = W[P2] (X);
ffa02e2c:	20 e1 ff cf 	R0 = -0x3001 (X);		/*		R0=0xffffcfff(-12289) */
ffa02e30:	01 54       	R0 = R1 & R0;
ffa02e32:	08 97       	W[P1] = R0;
ffa02e34:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03214(-4181484) */
ffa02e38:	09 e1 14 32 	P1.L = 0x3214;		/* (12820)	P1=0xffc03214(-4181484) */
ffa02e3c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa02e40:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa02e44:	50 95       	R0 = W[P2] (X);
ffa02e46:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa02e48:	08 97       	W[P1] = R0;
ffa02e4a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03214(-4181484) */
ffa02e4e:	09 e1 04 32 	P1.L = 0x3204;		/* (12804)	P1=0xffc03204(-4181500) */
ffa02e52:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa02e56:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa02e5a:	51 95       	R1 = W[P2] (X);
ffa02e5c:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa02e60:	01 56       	R0 = R1 | R0;
ffa02e62:	08 97       	W[P1] = R0;
ffa02e64:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa02e68:	0a e1 08 32 	P2.L = 0x3208;		/* (12808)	P2=0xffc03208(-4181496) */
ffa02e6c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02e6e:	10 97       	W[P2] = R0;
ffa02e70:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03208(-4181496) */
ffa02e74:	0a e1 18 32 	P2.L = 0x3218;		/* (12824)	P2=0xffc03218(-4181480) */
ffa02e78:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa02e7a:	10 97       	W[P2] = R0;
ffa02e7c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03204(-4181500) */
ffa02e80:	09 e1 08 00 	P1.L = 0x8;		/* (  8)	P1=0xffc00008(-4194296) */
ffa02e84:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03218(-4181480) */
ffa02e88:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa02e8c:	50 95       	R0 = W[P2] (X);
ffa02e8e:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa02e90:	08 97       	W[P1] = R0;
ffa02e92:	20 e1 00 18 	R0 = 0x1800 (X);		/*		R0=0x1800(6144) */
ffa02e96:	78 e6 fa ff 	W[FP + -0xc] = R0;
ffa02e9a:	79 e5 fa ff 	R1 = W[FP + -0xc] (X);
ffa02e9e:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02ea0:	01 56       	R0 = R1 | R0;
ffa02ea2:	78 e6 fa ff 	W[FP + -0xc] = R0;
ffa02ea6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa02eaa:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa02eae:	78 e4 fa ff 	R0 = W[FP + -0xc] (Z);
ffa02eb2:	10 93       	[P2] = R0;
ffa02eb4:	20 e1 00 31 	R0 = 0x3100 (X);		/*		R0=0x3100(12544) */
ffa02eb8:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa02ebc:	7a e4 fc ff 	R2 = W[FP + -0x8] (Z);
ffa02ec0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02ec2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02ec4:	ff e3 30 ff 	CALL 0xffa02d24 <_WrPHYReg>;
ffa02ec8:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02ecc:	ff e3 7c f9 	CALL 0xffa021c4 <_udelay>;
ffa02ed0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02ed2:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02ed4:	ff e3 4c ff 	CALL 0xffa02d6c <_RdPHYReg>;
ffa02ed8:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa02edc:	f0 b9       	R0 = [FP -0x4];
ffa02ede:	21 e1 b8 0b 	R1 = 0xbb8 (X);		/*		R1=0xbb8(3000) */
ffa02ee2:	08 09       	CC = R0 <= R1;
ffa02ee4:	0a 18       	IF CC JUMP 0xffa02ef8 <_SetupSystemRegs+0xf4>;
ffa02ee6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02eea:	00 e1 38 02 	R0.L = 0x238;		/* (568)	R0=0xff900238(-7339464) */
ffa02eee:	ff e3 fb f3 	CALL 0xffa016e4 <_printf_str>;
ffa02ef2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02ef4:	c0 bb       	[FP -0x10] = R0;
ffa02ef6:	5e 20       	JUMP.S 0xffa02fb2 <_SetupSystemRegs+0x1ae>;
ffa02ef8:	f0 b9       	R0 = [FP -0x4];
ffa02efa:	08 64       	R0 += 0x1;		/* (  1) */
ffa02efc:	f0 bb       	[FP -0x4] = R0;
ffa02efe:	79 e4 fc ff 	R1 = W[FP + -0x8] (Z);
ffa02f02:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02f04:	01 54       	R0 = R1 & R0;
ffa02f06:	00 0c       	CC = R0 == 0x0;
ffa02f08:	e0 1b       	IF CC JUMP 0xffa02ec8 <_SetupSystemRegs+0xc4>;
ffa02f0a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f0c:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa02f0e:	ff e3 2f ff 	CALL 0xffa02d6c <_RdPHYReg>;
ffa02f12:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa02f16:	79 e4 fc ff 	R1 = W[FP + -0x8] (Z);
ffa02f1a:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa02f1e:	01 54       	R0 = R1 & R0;
ffa02f20:	00 0c       	CC = R0 == 0x0;
ffa02f22:	08 10       	IF !CC JUMP 0xffa02f32 <_SetupSystemRegs+0x12e>;
ffa02f24:	78 e4 fc ff 	R0 = W[FP + -0x8] (Z);
ffa02f28:	21 e1 40 00 	R1 = 0x40 (X);		/*		R1=0x40( 64) */
ffa02f2c:	08 54       	R0 = R0 & R1;
ffa02f2e:	00 0c       	CC = R0 == 0x0;
ffa02f30:	06 18       	IF CC JUMP 0xffa02f3c <_SetupSystemRegs+0x138>;
ffa02f32:	ba ac       	P2 = [FP + 0x8];
ffa02f34:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f36:	d0 4f       	R0 <<= 0x1a;
ffa02f38:	10 93       	[P2] = R0;
ffa02f3a:	04 20       	JUMP.S 0xffa02f42 <_SetupSystemRegs+0x13e>;
ffa02f3c:	ba ac       	P2 = [FP + 0x8];
ffa02f3e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f40:	10 93       	[P2] = R0;
ffa02f42:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa02f46:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa02f4a:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02f4c:	10 93       	[P2] = R0;
ffa02f4e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa02f52:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa02f56:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f58:	10 97       	W[P2] = R0;
ffa02f5a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa02f5e:	0a e1 94 0c 	P2.L = 0xc94;		/* (3220)	P2=0xffc00c94(-4191084) */
ffa02f62:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02f64:	10 97       	W[P2] = R0;
ffa02f66:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c94(-4191084) */
ffa02f6a:	0a e1 98 0c 	P2.L = 0xc98;		/* (3224)	P2=0xffc00c98(-4191080) */
ffa02f6e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f70:	10 97       	W[P2] = R0;
ffa02f72:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c98(-4191080) */
ffa02f76:	0a e1 9c 0c 	P2.L = 0xc9c;		/* (3228)	P2=0xffc00c9c(-4191076) */
ffa02f7a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f7c:	10 97       	W[P2] = R0;
ffa02f7e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c9c(-4191076) */
ffa02f82:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa02f86:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f88:	10 97       	W[P2] = R0;
ffa02f8a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c50(-4191152) */
ffa02f8e:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xffc00c54(-4191148) */
ffa02f92:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02f94:	10 97       	W[P2] = R0;
ffa02f96:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c54(-4191148) */
ffa02f9a:	0a e1 58 0c 	P2.L = 0xc58;		/* (3160)	P2=0xffc00c58(-4191144) */
ffa02f9e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02fa0:	10 97       	W[P2] = R0;
ffa02fa2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c58(-4191144) */
ffa02fa6:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xffc00c5c(-4191140) */
ffa02faa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02fac:	10 97       	W[P2] = R0;
ffa02fae:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02fb0:	c1 bb       	[FP -0x10] = R1;
ffa02fb2:	c0 b9       	R0 = [FP -0x10];
ffa02fb4:	01 e8 00 00 	UNLINK;
ffa02fb8:	10 00       	RTS;
	...

ffa02fbc <_SetupRxBuffer>:
ffa02fbc:	00 e8 0d 00 	LINK 0x34;		/* (52) */
ffa02fc0:	b8 b0       	[FP + 0x8] = R0;
ffa02fc2:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa02fc4:	e0 bb       	[FP -0x8] = R0;
ffa02fc6:	e1 b9       	R1 = [FP -0x8];
ffa02fc8:	20 e1 10 06 	R0 = 0x610 (X);		/*		R0=0x610(1552) */
ffa02fcc:	01 50       	R0 = R1 + R0;
ffa02fce:	f0 bb       	[FP -0x4] = R0;
ffa02fd0:	b9 a0       	R1 = [FP + 0x8];
ffa02fd2:	f0 b9       	R0 = [FP -0x4];
ffa02fd4:	c8 40       	R0 *= R1;
ffa02fd6:	08 30       	R1 = R0;
ffa02fd8:	20 e1 01 f8 	R0 = -0x7ff (X);		/*		R0=0xfffff801(-2047) */
ffa02fdc:	60 4f       	R0 <<= 0xc;
ffa02fde:	01 50       	R0 = R1 + R0;
ffa02fe0:	d0 bb       	[FP -0xc] = R0;
ffa02fe2:	b9 a0       	R1 = [FP + 0x8];
ffa02fe4:	f0 b9       	R0 = [FP -0x4];
ffa02fe6:	c8 40       	R0 *= R1;
ffa02fe8:	08 30       	R1 = R0;
ffa02fea:	e0 b9       	R0 = [FP -0x8];
ffa02fec:	41 50       	R1 = R1 + R0;
ffa02fee:	20 e1 01 f8 	R0 = -0x7ff (X);		/*		R0=0xfffff801(-2047) */
ffa02ff2:	60 4f       	R0 <<= 0xc;
ffa02ff4:	01 50       	R0 = R1 + R0;
ffa02ff6:	c0 bb       	[FP -0x10] = R0;
ffa02ff8:	d0 b9       	R0 = [FP -0xc];
ffa02ffa:	e2 b9       	R2 = [FP -0x8];
ffa02ffc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02ffe:	ff e3 21 f6 	CALL 0xffa01c40 <_memset_>;
ffa03002:	da b9       	P2 = [FP -0xc];
ffa03004:	c0 b9       	R0 = [FP -0x10];
ffa03006:	90 b1       	[P2 + 0x18] = R0;
ffa03008:	c0 b9       	R0 = [FP -0x10];
ffa0300a:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa0300e:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa03012:	ff e3 17 f6 	CALL 0xffa01c40 <_memset_>;
ffa03016:	d0 b9       	R0 = [FP -0xc];
ffa03018:	60 64       	R0 += 0xc;		/* ( 12) */
ffa0301a:	da b9       	P2 = [FP -0xc];
ffa0301c:	10 93       	[P2] = R0;
ffa0301e:	da b9       	P2 = [FP -0xc];
ffa03020:	90 a1       	R0 = [P2 + 0x18];
ffa03022:	da b9       	P2 = [FP -0xc];
ffa03024:	50 b0       	[P2 + 0x4] = R0;
ffa03026:	da b9       	P2 = [FP -0xc];
ffa03028:	90 e5 08 00 	R0 = B[P2 + 0x8] (X);
ffa0302c:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0302e:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa03032:	da b9       	P2 = [FP -0xc];
ffa03034:	90 e5 08 00 	R0 = B[P2 + 0x8] (X);
ffa03038:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0303a:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa0303e:	da b9       	P2 = [FP -0xc];
ffa03040:	90 e5 08 00 	R0 = B[P2 + 0x8] (X);
ffa03044:	b8 e6 ec ff 	B[FP + -0x14] = R0;
ffa03048:	98 63       	R0 = -0xd (X);		/*		R0=0xfffffff3(-13) */
ffa0304a:	b9 e5 ec ff 	R1 = B[FP + -0x14] (X);
ffa0304e:	01 54       	R0 = R1 & R0;
ffa03050:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa03052:	b8 e6 ec ff 	B[FP + -0x14] = R0;
ffa03056:	b8 e5 ec ff 	R0 = B[FP + -0x14] (X);
ffa0305a:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa0305e:	da b9       	P2 = [FP -0xc];
ffa03060:	91 e5 09 00 	R1 = B[P2 + 0x9] (X);
ffa03064:	b9 e6 e8 ff 	B[FP + -0x18] = R1;
ffa03068:	80 63       	R0 = -0x10 (X);		/*		R0=0xfffffff0(-16) */
ffa0306a:	b9 e5 e8 ff 	R1 = B[FP + -0x18] (X);
ffa0306e:	01 54       	R0 = R1 & R0;
ffa03070:	08 30       	R1 = R0;
ffa03072:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa03074:	01 56       	R0 = R1 | R0;
ffa03076:	b8 e6 e8 ff 	B[FP + -0x18] = R0;
ffa0307a:	b8 e5 e8 ff 	R0 = B[FP + -0x18] (X);
ffa0307e:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa03082:	da b9       	P2 = [FP -0xc];
ffa03084:	91 e5 09 00 	R1 = B[P2 + 0x9] (X);
ffa03088:	b9 e6 e4 ff 	B[FP + -0x1c] = R1;
ffa0308c:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa03090:	b9 e5 e4 ff 	R1 = B[FP + -0x1c] (X);
ffa03094:	01 56       	R0 = R1 | R0;
ffa03096:	b8 e6 e4 ff 	B[FP + -0x1c] = R0;
ffa0309a:	b8 e5 e4 ff 	R0 = B[FP + -0x1c] (X);
ffa0309e:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa030a2:	d0 b9       	R0 = [FP -0xc];
ffa030a4:	da b9       	P2 = [FP -0xc];
ffa030a6:	d0 b0       	[P2 + 0xc] = R0;
ffa030a8:	d0 b9       	R0 = [FP -0xc];
ffa030aa:	20 65       	R0 += 0x24;		/* ( 36) */
ffa030ac:	da b9       	P2 = [FP -0xc];
ffa030ae:	10 b1       	[P2 + 0x10] = R0;
ffa030b0:	da b9       	P2 = [FP -0xc];
ffa030b2:	90 e5 14 00 	R0 = B[P2 + 0x14] (X);
ffa030b6:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa030b8:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa030bc:	da b9       	P2 = [FP -0xc];
ffa030be:	90 e5 14 00 	R0 = B[P2 + 0x14] (X);
ffa030c2:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa030c4:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa030c8:	da b9       	P2 = [FP -0xc];
ffa030ca:	91 e5 14 00 	R1 = B[P2 + 0x14] (X);
ffa030ce:	b9 e6 e0 ff 	B[FP + -0x20] = R1;
ffa030d2:	98 63       	R0 = -0xd (X);		/*		R0=0xfffffff3(-13) */
ffa030d4:	b9 e5 e0 ff 	R1 = B[FP + -0x20] (X);
ffa030d8:	01 54       	R0 = R1 & R0;
ffa030da:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa030dc:	b8 e6 e0 ff 	B[FP + -0x20] = R0;
ffa030e0:	b8 e5 e0 ff 	R0 = B[FP + -0x20] (X);
ffa030e4:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa030e8:	da b9       	P2 = [FP -0xc];
ffa030ea:	91 e5 14 00 	R1 = B[P2 + 0x14] (X);
ffa030ee:	20 e1 80 ff 	R0 = -0x80 (X);		/*		R0=0xffffff80(-128) */
ffa030f2:	01 56       	R0 = R1 | R0;
ffa030f4:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa030f8:	da b9       	P2 = [FP -0xc];
ffa030fa:	91 e5 15 00 	R1 = B[P2 + 0x15] (X);
ffa030fe:	b9 e6 dc ff 	B[FP + -0x24] = R1;
ffa03102:	80 63       	R0 = -0x10 (X);		/*		R0=0xfffffff0(-16) */
ffa03104:	b9 e5 dc ff 	R1 = B[FP + -0x24] (X);
ffa03108:	01 54       	R0 = R1 & R0;
ffa0310a:	08 30       	R1 = R0;
ffa0310c:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa0310e:	01 56       	R0 = R1 | R0;
ffa03110:	b8 e6 dc ff 	B[FP + -0x24] = R0;
ffa03114:	b8 e5 dc ff 	R0 = B[FP + -0x24] (X);
ffa03118:	90 e6 15 00 	B[P2 + 0x15] = R0;
ffa0311c:	da b9       	P2 = [FP -0xc];
ffa0311e:	91 e5 15 00 	R1 = B[P2 + 0x15] (X);
ffa03122:	b9 e6 d8 ff 	B[FP + -0x28] = R1;
ffa03126:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa0312a:	b9 e5 d8 ff 	R1 = B[FP + -0x28] (X);
ffa0312e:	01 56       	R0 = R1 | R0;
ffa03130:	b8 e6 d8 ff 	B[FP + -0x28] = R0;
ffa03134:	b8 e5 d8 ff 	R0 = B[FP + -0x28] (X);
ffa03138:	90 e6 15 00 	B[P2 + 0x15] = R0;
ffa0313c:	d0 b9       	R0 = [FP -0xc];
ffa0313e:	01 e8 00 00 	UNLINK;
ffa03142:	10 00       	RTS;

ffa03144 <_SetupTxBuffer>:
ffa03144:	00 e8 0d 00 	LINK 0x34;		/* (52) */
ffa03148:	b8 b0       	[FP + 0x8] = R0;
ffa0314a:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa0314c:	e0 bb       	[FP -0x8] = R0;
ffa0314e:	e1 b9       	R1 = [FP -0x8];
ffa03150:	20 e1 10 06 	R0 = 0x610 (X);		/*		R0=0x610(1552) */
ffa03154:	01 50       	R0 = R1 + R0;
ffa03156:	f0 bb       	[FP -0x4] = R0;
ffa03158:	b9 a0       	R1 = [FP + 0x8];
ffa0315a:	f0 b9       	R0 = [FP -0x4];
ffa0315c:	c8 40       	R0 *= R1;
ffa0315e:	08 30       	R1 = R0;
ffa03160:	20 e1 03 f8 	R0 = -0x7fd (X);		/*		R0=0xfffff803(-2045) */
ffa03164:	60 4f       	R0 <<= 0xc;
ffa03166:	01 50       	R0 = R1 + R0;
ffa03168:	d0 bb       	[FP -0xc] = R0;
ffa0316a:	b9 a0       	R1 = [FP + 0x8];
ffa0316c:	f0 b9       	R0 = [FP -0x4];
ffa0316e:	c8 40       	R0 *= R1;
ffa03170:	08 30       	R1 = R0;
ffa03172:	e0 b9       	R0 = [FP -0x8];
ffa03174:	41 50       	R1 = R1 + R0;
ffa03176:	20 e1 03 f8 	R0 = -0x7fd (X);		/*		R0=0xfffff803(-2045) */
ffa0317a:	60 4f       	R0 <<= 0xc;
ffa0317c:	01 50       	R0 = R1 + R0;
ffa0317e:	c0 bb       	[FP -0x10] = R0;
ffa03180:	d0 b9       	R0 = [FP -0xc];
ffa03182:	e2 b9       	R2 = [FP -0x8];
ffa03184:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03186:	ff e3 5d f5 	CALL 0xffa01c40 <_memset_>;
ffa0318a:	da b9       	P2 = [FP -0xc];
ffa0318c:	c0 b9       	R0 = [FP -0x10];
ffa0318e:	90 b1       	[P2 + 0x18] = R0;
ffa03190:	c0 b9       	R0 = [FP -0x10];
ffa03192:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa03196:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa0319a:	ff e3 53 f5 	CALL 0xffa01c40 <_memset_>;
ffa0319e:	d0 b9       	R0 = [FP -0xc];
ffa031a0:	60 64       	R0 += 0xc;		/* ( 12) */
ffa031a2:	da b9       	P2 = [FP -0xc];
ffa031a4:	10 93       	[P2] = R0;
ffa031a6:	da b9       	P2 = [FP -0xc];
ffa031a8:	90 a1       	R0 = [P2 + 0x18];
ffa031aa:	da b9       	P2 = [FP -0xc];
ffa031ac:	50 b0       	[P2 + 0x4] = R0;
ffa031ae:	da b9       	P2 = [FP -0xc];
ffa031b0:	90 e5 08 00 	R0 = B[P2 + 0x8] (X);
ffa031b4:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa031b6:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa031ba:	da b9       	P2 = [FP -0xc];
ffa031bc:	90 e5 08 00 	R0 = B[P2 + 0x8] (X);
ffa031c0:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa031c2:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa031c6:	da b9       	P2 = [FP -0xc];
ffa031c8:	90 e5 08 00 	R0 = B[P2 + 0x8] (X);
ffa031cc:	b8 e6 ec ff 	B[FP + -0x14] = R0;
ffa031d0:	98 63       	R0 = -0xd (X);		/*		R0=0xfffffff3(-13) */
ffa031d2:	b9 e5 ec ff 	R1 = B[FP + -0x14] (X);
ffa031d6:	01 54       	R0 = R1 & R0;
ffa031d8:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa031da:	b8 e6 ec ff 	B[FP + -0x14] = R0;
ffa031de:	b8 e5 ec ff 	R0 = B[FP + -0x14] (X);
ffa031e2:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa031e6:	da b9       	P2 = [FP -0xc];
ffa031e8:	91 e5 09 00 	R1 = B[P2 + 0x9] (X);
ffa031ec:	b9 e6 e8 ff 	B[FP + -0x18] = R1;
ffa031f0:	80 63       	R0 = -0x10 (X);		/*		R0=0xfffffff0(-16) */
ffa031f2:	b9 e5 e8 ff 	R1 = B[FP + -0x18] (X);
ffa031f6:	01 54       	R0 = R1 & R0;
ffa031f8:	08 30       	R1 = R0;
ffa031fa:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa031fc:	01 56       	R0 = R1 | R0;
ffa031fe:	b8 e6 e8 ff 	B[FP + -0x18] = R0;
ffa03202:	b8 e5 e8 ff 	R0 = B[FP + -0x18] (X);
ffa03206:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa0320a:	da b9       	P2 = [FP -0xc];
ffa0320c:	91 e5 09 00 	R1 = B[P2 + 0x9] (X);
ffa03210:	b9 e6 e4 ff 	B[FP + -0x1c] = R1;
ffa03214:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa03218:	b9 e5 e4 ff 	R1 = B[FP + -0x1c] (X);
ffa0321c:	01 56       	R0 = R1 | R0;
ffa0321e:	b8 e6 e4 ff 	B[FP + -0x1c] = R0;
ffa03222:	b8 e5 e4 ff 	R0 = B[FP + -0x1c] (X);
ffa03226:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa0322a:	d0 b9       	R0 = [FP -0xc];
ffa0322c:	da b9       	P2 = [FP -0xc];
ffa0322e:	d0 b0       	[P2 + 0xc] = R0;
ffa03230:	d0 b9       	R0 = [FP -0xc];
ffa03232:	40 65       	R0 += 0x28;		/* ( 40) */
ffa03234:	da b9       	P2 = [FP -0xc];
ffa03236:	10 b1       	[P2 + 0x10] = R0;
ffa03238:	da b9       	P2 = [FP -0xc];
ffa0323a:	90 e5 14 00 	R0 = B[P2 + 0x14] (X);
ffa0323e:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa03240:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa03244:	da b9       	P2 = [FP -0xc];
ffa03246:	90 e5 14 00 	R0 = B[P2 + 0x14] (X);
ffa0324a:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0324c:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa03250:	da b9       	P2 = [FP -0xc];
ffa03252:	91 e5 14 00 	R1 = B[P2 + 0x14] (X);
ffa03256:	b9 e6 e0 ff 	B[FP + -0x20] = R1;
ffa0325a:	98 63       	R0 = -0xd (X);		/*		R0=0xfffffff3(-13) */
ffa0325c:	b9 e5 e0 ff 	R1 = B[FP + -0x20] (X);
ffa03260:	01 54       	R0 = R1 & R0;
ffa03262:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa03264:	b8 e6 e0 ff 	B[FP + -0x20] = R0;
ffa03268:	b8 e5 e0 ff 	R0 = B[FP + -0x20] (X);
ffa0326c:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa03270:	da b9       	P2 = [FP -0xc];
ffa03272:	91 e5 14 00 	R1 = B[P2 + 0x14] (X);
ffa03276:	20 e1 80 ff 	R0 = -0x80 (X);		/*		R0=0xffffff80(-128) */
ffa0327a:	01 56       	R0 = R1 | R0;
ffa0327c:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa03280:	da b9       	P2 = [FP -0xc];
ffa03282:	91 e5 15 00 	R1 = B[P2 + 0x15] (X);
ffa03286:	b9 e6 dc ff 	B[FP + -0x24] = R1;
ffa0328a:	80 63       	R0 = -0x10 (X);		/*		R0=0xfffffff0(-16) */
ffa0328c:	b9 e5 dc ff 	R1 = B[FP + -0x24] (X);
ffa03290:	01 54       	R0 = R1 & R0;
ffa03292:	b8 e6 dc ff 	B[FP + -0x24] = R0;
ffa03296:	b8 e5 dc ff 	R0 = B[FP + -0x24] (X);
ffa0329a:	90 e6 15 00 	B[P2 + 0x15] = R0;
ffa0329e:	da b9       	P2 = [FP -0xc];
ffa032a0:	91 e5 15 00 	R1 = B[P2 + 0x15] (X);
ffa032a4:	b9 e6 d8 ff 	B[FP + -0x28] = R1;
ffa032a8:	20 e1 8f ff 	R0 = -0x71 (X);		/*		R0=0xffffff8f(-113) */
ffa032ac:	b9 e5 d8 ff 	R1 = B[FP + -0x28] (X);
ffa032b0:	01 54       	R0 = R1 & R0;
ffa032b2:	b8 e6 d8 ff 	B[FP + -0x28] = R0;
ffa032b6:	b8 e5 d8 ff 	R0 = B[FP + -0x28] (X);
ffa032ba:	90 e6 15 00 	B[P2 + 0x15] = R0;
ffa032be:	d0 b9       	R0 = [FP -0xc];
ffa032c0:	01 e8 00 00 	UNLINK;
ffa032c4:	10 00       	RTS;
	...

ffa032c8 <_NetCksum>:
ffa032c8:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa032cc:	b8 b0       	[FP + 0x8] = R0;
ffa032ce:	f9 b0       	[FP + 0xc] = R1;
ffa032d0:	b8 a0       	R0 = [FP + 0x8];
ffa032d2:	f0 bb       	[FP -0x4] = R0;
ffa032d4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa032d6:	e0 bb       	[FP -0x8] = R0;
ffa032d8:	0a 20       	JUMP.S 0xffa032ec <_NetCksum+0x24>;
ffa032da:	fa b9       	P2 = [FP -0x4];
ffa032dc:	50 95       	R0 = W[P2] (X);
ffa032de:	c1 42       	R1 = R0.L (Z);
ffa032e0:	e0 b9       	R0 = [FP -0x8];
ffa032e2:	08 50       	R0 = R0 + R1;
ffa032e4:	e0 bb       	[FP -0x8] = R0;
ffa032e6:	f0 b9       	R0 = [FP -0x4];
ffa032e8:	10 64       	R0 += 0x2;		/* (  2) */
ffa032ea:	f0 bb       	[FP -0x4] = R0;
ffa032ec:	f8 a0       	R0 = [FP + 0xc];
ffa032ee:	00 0d       	CC = R0 <= 0x0;
ffa032f0:	18 02       	CC = !CC;
ffa032f2:	00 02       	R0 = CC;
ffa032f4:	08 30       	R1 = R0;
ffa032f6:	f8 a0       	R0 = [FP + 0xc];
ffa032f8:	f8 67       	R0 += -0x1;		/* ( -1) */
ffa032fa:	f8 b0       	[FP + 0xc] = R0;
ffa032fc:	48 43       	R0 = R1.B (Z);
ffa032fe:	00 0c       	CC = R0 == 0x0;
ffa03300:	ed 13       	IF !CC JUMP 0xffa032da <_NetCksum+0x12>;
ffa03302:	e0 b9       	R0 = [FP -0x8];
ffa03304:	c1 42       	R1 = R0.L (Z);
ffa03306:	e0 b9       	R0 = [FP -0x8];
ffa03308:	80 4e       	R0 >>= 0x10;
ffa0330a:	01 50       	R0 = R1 + R0;
ffa0330c:	e0 bb       	[FP -0x8] = R0;
ffa0330e:	e0 b9       	R0 = [FP -0x8];
ffa03310:	c0 42       	R0 = R0.L (Z);
ffa03312:	01 e8 00 00 	UNLINK;
ffa03316:	10 00       	RTS;

ffa03318 <_htons>:
ffa03318:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa0331c:	38 b5       	W[FP + 0x8] = R0;
ffa0331e:	38 a9       	R0 = W[FP + 0x8] (X);
ffa03320:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa03324:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa03326:	40 4e       	R0 >>= 0x8;
ffa03328:	40 43       	R0 = R0.B (Z);
ffa0332a:	38 b5       	W[FP + 0x8] = R0;
ffa0332c:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa03330:	40 4f       	R0 <<= 0x8;
ffa03332:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa03336:	39 a9       	R1 = W[FP + 0x8] (X);
ffa03338:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0333c:	01 56       	R0 = R1 | R0;
ffa0333e:	38 b5       	W[FP + 0x8] = R0;
ffa03340:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa03342:	01 e8 00 00 	UNLINK;
ffa03346:	10 00       	RTS;

ffa03348 <_htonl>:
ffa03348:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa0334c:	b8 b0       	[FP + 0x8] = R0;
ffa0334e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03350:	f0 bb       	[FP -0x4] = R0;
ffa03352:	b8 a0       	R0 = [FP + 0x8];
ffa03354:	40 43       	R0 = R0.B (Z);
ffa03356:	f0 bb       	[FP -0x4] = R0;
ffa03358:	f0 b9       	R0 = [FP -0x4];
ffa0335a:	40 4f       	R0 <<= 0x8;
ffa0335c:	f0 bb       	[FP -0x4] = R0;
ffa0335e:	b8 a0       	R0 = [FP + 0x8];
ffa03360:	40 4e       	R0 >>= 0x8;
ffa03362:	b8 b0       	[FP + 0x8] = R0;
ffa03364:	b8 a0       	R0 = [FP + 0x8];
ffa03366:	41 43       	R1 = R0.B (Z);
ffa03368:	f0 b9       	R0 = [FP -0x4];
ffa0336a:	08 56       	R0 = R0 | R1;
ffa0336c:	f0 bb       	[FP -0x4] = R0;
ffa0336e:	f0 b9       	R0 = [FP -0x4];
ffa03370:	40 4f       	R0 <<= 0x8;
ffa03372:	f0 bb       	[FP -0x4] = R0;
ffa03374:	b8 a0       	R0 = [FP + 0x8];
ffa03376:	40 4e       	R0 >>= 0x8;
ffa03378:	b8 b0       	[FP + 0x8] = R0;
ffa0337a:	b8 a0       	R0 = [FP + 0x8];
ffa0337c:	41 43       	R1 = R0.B (Z);
ffa0337e:	f0 b9       	R0 = [FP -0x4];
ffa03380:	08 56       	R0 = R0 | R1;
ffa03382:	f0 bb       	[FP -0x4] = R0;
ffa03384:	f0 b9       	R0 = [FP -0x4];
ffa03386:	40 4f       	R0 <<= 0x8;
ffa03388:	f0 bb       	[FP -0x4] = R0;
ffa0338a:	b8 a0       	R0 = [FP + 0x8];
ffa0338c:	40 4e       	R0 >>= 0x8;
ffa0338e:	b8 b0       	[FP + 0x8] = R0;
ffa03390:	b8 a0       	R0 = [FP + 0x8];
ffa03392:	41 43       	R1 = R0.B (Z);
ffa03394:	f0 b9       	R0 = [FP -0x4];
ffa03396:	08 56       	R0 = R0 | R1;
ffa03398:	f0 bb       	[FP -0x4] = R0;
ffa0339a:	f0 b9       	R0 = [FP -0x4];
ffa0339c:	01 e8 00 00 	UNLINK;
ffa033a0:	10 00       	RTS;
	...

ffa033a4 <_pack4chars>:
ffa033a4:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa033a8:	b8 b0       	[FP + 0x8] = R0;
ffa033aa:	ba ac       	P2 = [FP + 0x8];
ffa033ac:	50 99       	R0 = B[P2] (X);
ffa033ae:	40 43       	R0 = R0.B (Z);
ffa033b0:	f0 bb       	[FP -0x4] = R0;
ffa033b2:	b8 a0       	R0 = [FP + 0x8];
ffa033b4:	08 64       	R0 += 0x1;		/* (  1) */
ffa033b6:	b8 b0       	[FP + 0x8] = R0;
ffa033b8:	ba ac       	P2 = [FP + 0x8];
ffa033ba:	50 99       	R0 = B[P2] (X);
ffa033bc:	40 43       	R0 = R0.B (Z);
ffa033be:	40 4f       	R0 <<= 0x8;
ffa033c0:	08 30       	R1 = R0;
ffa033c2:	f0 b9       	R0 = [FP -0x4];
ffa033c4:	08 50       	R0 = R0 + R1;
ffa033c6:	f0 bb       	[FP -0x4] = R0;
ffa033c8:	b8 a0       	R0 = [FP + 0x8];
ffa033ca:	08 64       	R0 += 0x1;		/* (  1) */
ffa033cc:	b8 b0       	[FP + 0x8] = R0;
ffa033ce:	ba ac       	P2 = [FP + 0x8];
ffa033d0:	50 99       	R0 = B[P2] (X);
ffa033d2:	40 43       	R0 = R0.B (Z);
ffa033d4:	80 4f       	R0 <<= 0x10;
ffa033d6:	08 30       	R1 = R0;
ffa033d8:	f0 b9       	R0 = [FP -0x4];
ffa033da:	08 50       	R0 = R0 + R1;
ffa033dc:	f0 bb       	[FP -0x4] = R0;
ffa033de:	b8 a0       	R0 = [FP + 0x8];
ffa033e0:	08 64       	R0 += 0x1;		/* (  1) */
ffa033e2:	b8 b0       	[FP + 0x8] = R0;
ffa033e4:	ba ac       	P2 = [FP + 0x8];
ffa033e6:	50 99       	R0 = B[P2] (X);
ffa033e8:	40 43       	R0 = R0.B (Z);
ffa033ea:	c0 4f       	R0 <<= 0x18;
ffa033ec:	08 30       	R1 = R0;
ffa033ee:	f0 b9       	R0 = [FP -0x4];
ffa033f0:	08 50       	R0 = R0 + R1;
ffa033f2:	f0 bb       	[FP -0x4] = R0;
ffa033f4:	b8 a0       	R0 = [FP + 0x8];
ffa033f6:	08 64       	R0 += 0x1;		/* (  1) */
ffa033f8:	b8 b0       	[FP + 0x8] = R0;
ffa033fa:	f0 b9       	R0 = [FP -0x4];
ffa033fc:	01 e8 00 00 	UNLINK;
ffa03400:	10 00       	RTS;
	...

ffa03404 <_eth_header_setup>:
ffa03404:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa03408:	b8 b0       	[FP + 0x8] = R0;
ffa0340a:	f9 b0       	[FP + 0xc] = R1;
ffa0340c:	3a b1       	[FP + 0x10] = R2;
ffa0340e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_g_sampCh> */
ffa03412:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa03416:	50 95       	R0 = W[P2] (X);
ffa03418:	c0 42       	R0 = R0.L (Z);
ffa0341a:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9000aa(-7339862) */
ffa0341e:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa03422:	10 4f       	R0 <<= 0x2;
ffa03424:	08 50       	R0 = R0 + R1;
ffa03426:	10 32       	P2 = R0;
ffa03428:	52 91       	P2 = [P2];
ffa0342a:	90 a1       	R0 = [P2 + 0x18];
ffa0342c:	e0 bb       	[FP -0x8] = R0;
ffa0342e:	ba ac       	P2 = [FP + 0x8];
ffa03430:	10 91       	R0 = [P2];
ffa03432:	f0 67       	R0 += -0x2;		/* ( -2) */
ffa03434:	ea b9       	P2 = [FP -0x8];
ffa03436:	10 97       	W[P2] = R0;
ffa03438:	ba ac       	P2 = [FP + 0x8];
ffa0343a:	10 91       	R0 = [P2];
ffa0343c:	80 67       	R0 += -0x10;		/* (-16) */
ffa0343e:	ba ac       	P2 = [FP + 0x8];
ffa03440:	10 93       	[P2] = R0;
ffa03442:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa03446:	ff e3 81 ff 	CALL 0xffa03348 <_htonl>;
ffa0344a:	08 30       	R1 = R0;
ffa0344c:	38 a1       	R0 = [FP + 0x10];
ffa0344e:	01 54       	R0 = R1 & R0;
ffa03450:	00 0c       	CC = R0 == 0x0;
ffa03452:	1b 10       	IF !CC JUMP 0xffa03488 <_eth_header_setup+0x84>;
ffa03454:	ea b9       	P2 = [FP -0x8];
ffa03456:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03458:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa0345c:	ea b9       	P2 = [FP -0x8];
ffa0345e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03460:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa03464:	ea b9       	P2 = [FP -0x8];
ffa03466:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa0346a:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa0346e:	ea b9       	P2 = [FP -0x8];
ffa03470:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03472:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa03476:	ea b9       	P2 = [FP -0x8];
ffa03478:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa0347a:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa0347e:	ea b9       	P2 = [FP -0x8];
ffa03480:	d8 63       	R0 = -0x5 (X);		/*		R0=0xfffffffb( -5) */
ffa03482:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa03486:	0f 20       	JUMP.S 0xffa034a4 <_eth_header_setup+0xa0>;
ffa03488:	e0 b9       	R0 = [FP -0x8];
ffa0348a:	08 30       	R1 = R0;
ffa0348c:	11 64       	R1 += 0x2;		/* (  2) */
ffa0348e:	38 a1       	R0 = [FP + 0x10];
ffa03490:	00 e3 ac 0b 	CALL 0xffa04be8 <_ARP_req>;
ffa03494:	00 0c       	CC = R0 == 0x0;
ffa03496:	07 10       	IF !CC JUMP 0xffa034a4 <_eth_header_setup+0xa0>;
ffa03498:	fa ac       	P2 = [FP + 0xc];
ffa0349a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0349c:	10 9b       	B[P2] = R0;
ffa0349e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa034a0:	c0 bb       	[FP -0x10] = R0;
ffa034a2:	29 20       	JUMP.S 0xffa034f4 <_eth_header_setup+0xf0>;
ffa034a4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa034a6:	d0 bb       	[FP -0xc] = R0;
ffa034a8:	12 20       	JUMP.S 0xffa034cc <_eth_header_setup+0xc8>;
ffa034aa:	d2 b9       	R2 = [FP -0xc];
ffa034ac:	d1 b9       	R1 = [FP -0xc];
ffa034ae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa034b2:	00 e1 08 0f 	R0.L = 0xf08;		/* (3848)	R0=0xff900f08 <_NetOurMAC>(-7336184) */
ffa034b6:	08 50       	R0 = R0 + R1;
ffa034b8:	10 32       	P2 = R0;
ffa034ba:	51 99       	R1 = B[P2] (X);
ffa034bc:	e0 b9       	R0 = [FP -0x8];
ffa034be:	02 50       	R0 = R2 + R0;
ffa034c0:	10 32       	P2 = R0;
ffa034c2:	42 6c       	P2 += 0x8;		/* (  8) */
ffa034c4:	11 9b       	B[P2] = R1;
ffa034c6:	d0 b9       	R0 = [FP -0xc];
ffa034c8:	08 64       	R0 += 0x1;		/* (  1) */
ffa034ca:	d0 bb       	[FP -0xc] = R0;
ffa034cc:	d0 b9       	R0 = [FP -0xc];
ffa034ce:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa034d0:	08 09       	CC = R0 <= R1;
ffa034d2:	ec 1b       	IF CC JUMP 0xffa034aa <_eth_header_setup+0xa6>;
ffa034d4:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa034d8:	ff e3 20 ff 	CALL 0xffa03318 <_htons>;
ffa034dc:	ea b9       	P2 = [FP -0x8];
ffa034de:	d0 b5       	W[P2 + 0xe] = R0;
ffa034e0:	e0 b9       	R0 = [FP -0x8];
ffa034e2:	f0 bb       	[FP -0x4] = R0;
ffa034e4:	f0 b9       	R0 = [FP -0x4];
ffa034e6:	80 64       	R0 += 0x10;		/* ( 16) */
ffa034e8:	f0 bb       	[FP -0x4] = R0;
ffa034ea:	fa ac       	P2 = [FP + 0xc];
ffa034ec:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034ee:	10 9b       	B[P2] = R0;
ffa034f0:	f0 b9       	R0 = [FP -0x4];
ffa034f2:	c0 bb       	[FP -0x10] = R0;
ffa034f4:	c0 b9       	R0 = [FP -0x10];
ffa034f6:	01 e8 00 00 	UNLINK;
ffa034fa:	10 00       	RTS;

ffa034fc <_ip_header_setup>:
ffa034fc:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03500:	b8 b0       	[FP + 0x8] = R0;
ffa03502:	f9 b0       	[FP + 0xc] = R1;
ffa03504:	3a b1       	[FP + 0x10] = R2;
ffa03506:	78 a1       	R0 = [FP + 0x14];
ffa03508:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa0350c:	b8 a0       	R0 = [FP + 0x8];
ffa0350e:	f0 bb       	[FP -0x4] = R0;
ffa03510:	fa b9       	P2 = [FP -0x4];
ffa03512:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa03516:	10 9b       	B[P2] = R0;
ffa03518:	fa b9       	P2 = [FP -0x4];
ffa0351a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0351c:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa03520:	fa ac       	P2 = [FP + 0xc];
ffa03522:	10 91       	R0 = [P2];
ffa03524:	c0 42       	R0 = R0.L (Z);
ffa03526:	ff e3 f9 fe 	CALL 0xffa03318 <_htons>;
ffa0352a:	fa b9       	P2 = [FP -0x4];
ffa0352c:	50 b4       	W[P2 + 0x2] = R0;
ffa0352e:	fa ac       	P2 = [FP + 0xc];
ffa03530:	10 91       	R0 = [P2];
ffa03532:	60 67       	R0 += -0x14;		/* (-20) */
ffa03534:	fa ac       	P2 = [FP + 0xc];
ffa03536:	10 93       	[P2] = R0;
ffa03538:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa0353c:	0a e1 e2 0e 	P2.L = 0xee2;		/* (3810)	P2=0xff900ee2 <_NetIPID> */
ffa03540:	50 95       	R0 = W[P2] (X);
ffa03542:	c1 42       	R1 = R0.L (Z);
ffa03544:	08 64       	R0 += 0x1;		/* (  1) */
ffa03546:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee2 <_NetIPID> */
ffa0354a:	0a e1 e2 0e 	P2.L = 0xee2;		/* (3810)	P2=0xff900ee2 <_NetIPID> */
ffa0354e:	10 97       	W[P2] = R0;
ffa03550:	01 30       	R0 = R1;
ffa03552:	ff e3 e3 fe 	CALL 0xffa03318 <_htons>;
ffa03556:	fa b9       	P2 = [FP -0x4];
ffa03558:	90 b4       	W[P2 + 0x4] = R0;
ffa0355a:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa0355e:	ff e3 dd fe 	CALL 0xffa03318 <_htons>;
ffa03562:	fa b9       	P2 = [FP -0x4];
ffa03564:	d0 b4       	W[P2 + 0x6] = R0;
ffa03566:	38 a1       	R0 = [FP + 0x10];
ffa03568:	c0 4d       	R0 >>>= 0x18;
ffa0356a:	c0 4f       	R0 <<= 0x18;
ffa0356c:	00 0c       	CC = R0 == 0x0;
ffa0356e:	05 10       	IF !CC JUMP 0xffa03578 <_ip_header_setup+0x7c>;
ffa03570:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03572:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa03576:	05 20       	JUMP.S 0xffa03580 <_ip_header_setup+0x84>;
ffa03578:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa0357c:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa03580:	fa b9       	P2 = [FP -0x4];
ffa03582:	b8 e5 f7 ff 	R0 = B[FP + -0x9] (X);
ffa03586:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa0358a:	fa b9       	P2 = [FP -0x4];
ffa0358c:	b8 e5 f8 ff 	R0 = B[FP + -0x8] (X);
ffa03590:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa03594:	fa b9       	P2 = [FP -0x4];
ffa03596:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03598:	50 b5       	W[P2 + 0xa] = R0;
ffa0359a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee2 <_NetIPID> */
ffa0359e:	0a e1 14 0f 	P2.L = 0xf14;		/* (3860)	P2=0xff900f14 <_NetOurIP> */
ffa035a2:	10 91       	R0 = [P2];
ffa035a4:	fa b9       	P2 = [FP -0x4];
ffa035a6:	d0 b0       	[P2 + 0xc] = R0;
ffa035a8:	fa b9       	P2 = [FP -0x4];
ffa035aa:	38 a1       	R0 = [FP + 0x10];
ffa035ac:	10 b1       	[P2 + 0x10] = R0;
ffa035ae:	f0 b9       	R0 = [FP -0x4];
ffa035b0:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa035b2:	ff e3 8b fe 	CALL 0xffa032c8 <_NetCksum>;
ffa035b6:	c0 43       	R0 =~ R0;
ffa035b8:	fa b9       	P2 = [FP -0x4];
ffa035ba:	50 b5       	W[P2 + 0xa] = R0;
ffa035bc:	b8 a0       	R0 = [FP + 0x8];
ffa035be:	a0 64       	R0 += 0x14;		/* ( 20) */
ffa035c0:	b8 b0       	[FP + 0x8] = R0;
ffa035c2:	b8 a0       	R0 = [FP + 0x8];
ffa035c4:	01 e8 00 00 	UNLINK;
ffa035c8:	10 00       	RTS;
	...

ffa035cc <_ip_header_checksum>:
ffa035cc:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa035d0:	b8 b0       	[FP + 0x8] = R0;
ffa035d2:	b8 a0       	R0 = [FP + 0x8];
ffa035d4:	f0 bb       	[FP -0x4] = R0;
ffa035d6:	b8 a0       	R0 = [FP + 0x8];
ffa035d8:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa035da:	ff e3 77 fe 	CALL 0xffa032c8 <_NetCksum>;
ffa035de:	00 0c       	CC = R0 == 0x0;
ffa035e0:	04 18       	IF CC JUMP 0xffa035e8 <_ip_header_checksum+0x1c>;
ffa035e2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa035e4:	e0 bb       	[FP -0x8] = R0;
ffa035e6:	03 20       	JUMP.S 0xffa035ec <_ip_header_checksum+0x20>;
ffa035e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa035ea:	e0 bb       	[FP -0x8] = R0;
ffa035ec:	e0 b9       	R0 = [FP -0x8];
ffa035ee:	01 e8 00 00 	UNLINK;
ffa035f2:	10 00       	RTS;

ffa035f4 <_icmp_header_setup>:
ffa035f4:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa035f8:	b8 b0       	[FP + 0x8] = R0;
ffa035fa:	f9 b0       	[FP + 0xc] = R1;
ffa035fc:	79 a1       	R1 = [FP + 0x14];
ffa035fe:	bb a1       	R3 = [FP + 0x18];
ffa03600:	02 30       	R0 = R2;
ffa03602:	b8 e6 10 00 	B[FP + 0x10] = R0;
ffa03606:	01 30       	R0 = R1;
ffa03608:	78 e6 f6 ff 	W[FP + -0x14] = R0;
ffa0360c:	03 30       	R0 = R3;
ffa0360e:	78 e6 f4 ff 	W[FP + -0x18] = R0;
ffa03612:	b8 a0       	R0 = [FP + 0x8];
ffa03614:	c0 bb       	[FP -0x10] = R0;
ffa03616:	ca b9       	P2 = [FP -0x10];
ffa03618:	b8 e5 10 00 	R0 = B[FP + 0x10] (X);
ffa0361c:	10 9b       	B[P2] = R0;
ffa0361e:	ca b9       	P2 = [FP -0x10];
ffa03620:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03622:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa03626:	ca b9       	P2 = [FP -0x10];
ffa03628:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0362a:	50 b4       	W[P2 + 0x2] = R0;
ffa0362c:	ca b9       	P2 = [FP -0x10];
ffa0362e:	78 e5 f6 ff 	R0 = W[FP + -0x14] (X);
ffa03632:	90 b4       	W[P2 + 0x4] = R0;
ffa03634:	ca b9       	P2 = [FP -0x10];
ffa03636:	78 e5 f4 ff 	R0 = W[FP + -0x18] (X);
ffa0363a:	d0 b4       	W[P2 + 0x6] = R0;
ffa0363c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0363e:	d0 bb       	[FP -0xc] = R0;
ffa03640:	c0 b9       	R0 = [FP -0x10];
ffa03642:	f0 bb       	[FP -0x4] = R0;
ffa03644:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03646:	e0 bb       	[FP -0x8] = R0;
ffa03648:	0d 20       	JUMP.S 0xffa03662 <_icmp_header_setup+0x6e>;
ffa0364a:	fa b9       	P2 = [FP -0x4];
ffa0364c:	50 95       	R0 = W[P2] (X);
ffa0364e:	c1 42       	R1 = R0.L (Z);
ffa03650:	d0 b9       	R0 = [FP -0xc];
ffa03652:	08 50       	R0 = R0 + R1;
ffa03654:	d0 bb       	[FP -0xc] = R0;
ffa03656:	f0 b9       	R0 = [FP -0x4];
ffa03658:	10 64       	R0 += 0x2;		/* (  2) */
ffa0365a:	f0 bb       	[FP -0x4] = R0;
ffa0365c:	e0 b9       	R0 = [FP -0x8];
ffa0365e:	08 64       	R0 += 0x1;		/* (  1) */
ffa03660:	e0 bb       	[FP -0x8] = R0;
ffa03662:	e0 b9       	R0 = [FP -0x8];
ffa03664:	18 0d       	CC = R0 <= 0x3;
ffa03666:	f2 1b       	IF CC JUMP 0xffa0364a <_icmp_header_setup+0x56>;
ffa03668:	d0 b9       	R0 = [FP -0xc];
ffa0366a:	c1 42       	R1 = R0.L (Z);
ffa0366c:	d0 b9       	R0 = [FP -0xc];
ffa0366e:	80 4e       	R0 >>= 0x10;
ffa03670:	01 50       	R0 = R1 + R0;
ffa03672:	d0 bb       	[FP -0xc] = R0;
ffa03674:	d0 b9       	R0 = [FP -0xc];
ffa03676:	c0 43       	R0 =~ R0;
ffa03678:	ca b9       	P2 = [FP -0x10];
ffa0367a:	50 b4       	W[P2 + 0x2] = R0;
ffa0367c:	b8 a0       	R0 = [FP + 0x8];
ffa0367e:	40 64       	R0 += 0x8;		/* (  8) */
ffa03680:	b8 b0       	[FP + 0x8] = R0;
ffa03682:	fa ac       	P2 = [FP + 0xc];
ffa03684:	10 91       	R0 = [P2];
ffa03686:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa03688:	fa ac       	P2 = [FP + 0xc];
ffa0368a:	10 93       	[P2] = R0;
ffa0368c:	b8 a0       	R0 = [FP + 0x8];
ffa0368e:	01 e8 00 00 	UNLINK;
ffa03692:	10 00       	RTS;

ffa03694 <_udp_header_setup>:
ffa03694:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa03698:	b8 b0       	[FP + 0x8] = R0;
ffa0369a:	f9 b0       	[FP + 0xc] = R1;
ffa0369c:	79 a1       	R1 = [FP + 0x14];
ffa0369e:	02 30       	R0 = R2;
ffa036a0:	38 b6       	W[FP + 0x10] = R0;
ffa036a2:	01 30       	R0 = R1;
ffa036a4:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa036a8:	b8 a0       	R0 = [FP + 0x8];
ffa036aa:	f0 bb       	[FP -0x4] = R0;
ffa036ac:	38 a6       	R0 = W[FP + 0x10] (Z);
ffa036ae:	ff e3 35 fe 	CALL 0xffa03318 <_htons>;
ffa036b2:	fa b9       	P2 = [FP -0x4];
ffa036b4:	10 97       	W[P2] = R0;
ffa036b6:	78 e4 fc ff 	R0 = W[FP + -0x8] (Z);
ffa036ba:	ff e3 2f fe 	CALL 0xffa03318 <_htons>;
ffa036be:	fa b9       	P2 = [FP -0x4];
ffa036c0:	50 b4       	W[P2 + 0x2] = R0;
ffa036c2:	fa ac       	P2 = [FP + 0xc];
ffa036c4:	10 91       	R0 = [P2];
ffa036c6:	c0 42       	R0 = R0.L (Z);
ffa036c8:	ff e3 28 fe 	CALL 0xffa03318 <_htons>;
ffa036cc:	fa b9       	P2 = [FP -0x4];
ffa036ce:	90 b4       	W[P2 + 0x4] = R0;
ffa036d0:	fa ac       	P2 = [FP + 0xc];
ffa036d2:	10 91       	R0 = [P2];
ffa036d4:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa036d6:	fa ac       	P2 = [FP + 0xc];
ffa036d8:	10 93       	[P2] = R0;
ffa036da:	fa b9       	P2 = [FP -0x4];
ffa036dc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa036de:	d0 b4       	W[P2 + 0x6] = R0;
ffa036e0:	b8 a0       	R0 = [FP + 0x8];
ffa036e2:	40 64       	R0 += 0x8;		/* (  8) */
ffa036e4:	b8 b0       	[FP + 0x8] = R0;
ffa036e6:	b8 a0       	R0 = [FP + 0x8];
ffa036e8:	01 e8 00 00 	UNLINK;
ffa036ec:	10 00       	RTS;
	...

ffa036f0 <_tcp_header_setup>:
ffa036f0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa036f4:	b8 b0       	[FP + 0x8] = R0;
ffa036f6:	f9 b0       	[FP + 0xc] = R1;
ffa036f8:	02 30       	R0 = R2;
ffa036fa:	b8 e6 10 00 	B[FP + 0x10] = R0;
ffa036fe:	b8 a0       	R0 = [FP + 0x8];
ffa03700:	f0 bb       	[FP -0x4] = R0;
ffa03702:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa03706:	ff e3 09 fe 	CALL 0xffa03318 <_htons>;
ffa0370a:	fa b9       	P2 = [FP -0x4];
ffa0370c:	10 97       	W[P2] = R0;
ffa0370e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f14 <_NetOurIP> */
ffa03712:	0a e1 04 10 	P2.L = 0x1004;		/* (4100)	P2=0xff901004 <_TcpClientPort> */
ffa03716:	50 95       	R0 = W[P2] (X);
ffa03718:	fa b9       	P2 = [FP -0x4];
ffa0371a:	50 b4       	W[P2 + 0x2] = R0;
ffa0371c:	78 a1       	R0 = [FP + 0x14];
ffa0371e:	ff e3 15 fe 	CALL 0xffa03348 <_htonl>;
ffa03722:	fa b9       	P2 = [FP -0x4];
ffa03724:	50 b0       	[P2 + 0x4] = R0;
ffa03726:	b8 a1       	R0 = [FP + 0x18];
ffa03728:	ff e3 10 fe 	CALL 0xffa03348 <_htonl>;
ffa0372c:	fa b9       	P2 = [FP -0x4];
ffa0372e:	90 b0       	[P2 + 0x8] = R0;
ffa03730:	fa b9       	P2 = [FP -0x4];
ffa03732:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa03736:	90 e6 0c 00 	B[P2 + 0xc] = R0;
ffa0373a:	fa b9       	P2 = [FP -0x4];
ffa0373c:	b8 e5 10 00 	R0 = B[FP + 0x10] (X);
ffa03740:	90 e6 0d 00 	B[P2 + 0xd] = R0;
ffa03744:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa03748:	ff e3 e8 fd 	CALL 0xffa03318 <_htons>;
ffa0374c:	fa b9       	P2 = [FP -0x4];
ffa0374e:	d0 b5       	W[P2 + 0xe] = R0;
ffa03750:	fa b9       	P2 = [FP -0x4];
ffa03752:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03754:	10 b6       	W[P2 + 0x10] = R0;
ffa03756:	fa b9       	P2 = [FP -0x4];
ffa03758:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0375a:	50 b6       	W[P2 + 0x12] = R0;
ffa0375c:	b8 a0       	R0 = [FP + 0x8];
ffa0375e:	a0 64       	R0 += 0x14;		/* ( 20) */
ffa03760:	b8 b0       	[FP + 0x8] = R0;
ffa03762:	fa ac       	P2 = [FP + 0xc];
ffa03764:	10 91       	R0 = [P2];
ffa03766:	60 67       	R0 += -0x14;		/* (-20) */
ffa03768:	fa ac       	P2 = [FP + 0xc];
ffa0376a:	10 93       	[P2] = R0;
ffa0376c:	b8 a0       	R0 = [FP + 0x8];
ffa0376e:	01 e8 00 00 	UNLINK;
ffa03772:	10 00       	RTS;

ffa03774 <_ether_testUDP>:
ffa03774:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa03778:	b8 b0       	[FP + 0x8] = R0;
ffa0377a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901004 <_TcpClientPort> */
ffa0377e:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa03782:	50 95       	R0 = W[P2] (X);
ffa03784:	c0 42       	R0 = R0.L (Z);
ffa03786:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900014(-7340012) */
ffa0378a:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa0378e:	10 4f       	R0 <<= 0x2;
ffa03790:	08 50       	R0 = R0 + R1;
ffa03792:	10 32       	P2 = R0;
ffa03794:	52 91       	P2 = [P2];
ffa03796:	90 a1       	R0 = [P2 + 0x18];
ffa03798:	e0 bb       	[FP -0x8] = R0;
ffa0379a:	ea b9       	P2 = [FP -0x8];
ffa0379c:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa037a0:	10 97       	W[P2] = R0;
ffa037a2:	e0 b9       	R0 = [FP -0x8];
ffa037a4:	08 30       	R1 = R0;
ffa037a6:	11 64       	R1 += 0x2;		/* (  2) */
ffa037a8:	b8 a0       	R0 = [FP + 0x8];
ffa037aa:	00 e3 1f 0a 	CALL 0xffa04be8 <_ARP_req>;
ffa037ae:	00 0c       	CC = R0 == 0x0;
ffa037b0:	04 10       	IF !CC JUMP 0xffa037b8 <_ether_testUDP+0x44>;
ffa037b2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa037b4:	c0 bb       	[FP -0x10] = R0;
ffa037b6:	9d 20       	JUMP.S 0xffa038f0 <_ether_testUDP+0x17c>;
ffa037b8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa037ba:	d0 bb       	[FP -0xc] = R0;
ffa037bc:	12 20       	JUMP.S 0xffa037e0 <_ether_testUDP+0x6c>;
ffa037be:	d2 b9       	R2 = [FP -0xc];
ffa037c0:	d1 b9       	R1 = [FP -0xc];
ffa037c2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa037c6:	00 e1 08 0f 	R0.L = 0xf08;		/* (3848)	R0=0xff900f08 <_NetOurMAC>(-7336184) */
ffa037ca:	08 50       	R0 = R0 + R1;
ffa037cc:	10 32       	P2 = R0;
ffa037ce:	51 99       	R1 = B[P2] (X);
ffa037d0:	e0 b9       	R0 = [FP -0x8];
ffa037d2:	02 50       	R0 = R2 + R0;
ffa037d4:	10 32       	P2 = R0;
ffa037d6:	42 6c       	P2 += 0x8;		/* (  8) */
ffa037d8:	11 9b       	B[P2] = R1;
ffa037da:	d0 b9       	R0 = [FP -0xc];
ffa037dc:	08 64       	R0 += 0x1;		/* (  1) */
ffa037de:	d0 bb       	[FP -0xc] = R0;
ffa037e0:	d0 b9       	R0 = [FP -0xc];
ffa037e2:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa037e4:	08 09       	CC = R0 <= R1;
ffa037e6:	ec 1b       	IF CC JUMP 0xffa037be <_ether_testUDP+0x4a>;
ffa037e8:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa037ec:	ff e3 96 fd 	CALL 0xffa03318 <_htons>;
ffa037f0:	ea b9       	P2 = [FP -0x8];
ffa037f2:	d0 b5       	W[P2 + 0xe] = R0;
ffa037f4:	ea b9       	P2 = [FP -0x8];
ffa037f6:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa037fa:	90 e6 10 00 	B[P2 + 0x10] = R0;
ffa037fe:	ea b9       	P2 = [FP -0x8];
ffa03800:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03802:	90 e6 11 00 	B[P2 + 0x11] = R0;
ffa03806:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa03808:	ff e3 88 fd 	CALL 0xffa03318 <_htons>;
ffa0380c:	ea b9       	P2 = [FP -0x8];
ffa0380e:	50 b6       	W[P2 + 0x12] = R0;
ffa03810:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa03814:	0a e1 e2 0e 	P2.L = 0xee2;		/* (3810)	P2=0xff900ee2 <_NetIPID> */
ffa03818:	50 95       	R0 = W[P2] (X);
ffa0381a:	c1 42       	R1 = R0.L (Z);
ffa0381c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0381e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee2 <_NetIPID> */
ffa03822:	0a e1 e2 0e 	P2.L = 0xee2;		/* (3810)	P2=0xff900ee2 <_NetIPID> */
ffa03826:	10 97       	W[P2] = R0;
ffa03828:	01 30       	R0 = R1;
ffa0382a:	ff e3 77 fd 	CALL 0xffa03318 <_htons>;
ffa0382e:	ea b9       	P2 = [FP -0x8];
ffa03830:	90 b6       	W[P2 + 0x14] = R0;
ffa03832:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03836:	ff e3 71 fd 	CALL 0xffa03318 <_htons>;
ffa0383a:	ea b9       	P2 = [FP -0x8];
ffa0383c:	d0 b6       	W[P2 + 0x16] = R0;
ffa0383e:	ea b9       	P2 = [FP -0x8];
ffa03840:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03842:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa03846:	ea b9       	P2 = [FP -0x8];
ffa03848:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0384a:	90 e6 19 00 	B[P2 + 0x19] = R0;
ffa0384e:	ea b9       	P2 = [FP -0x8];
ffa03850:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03852:	50 b7       	W[P2 + 0x1a] = R0;
ffa03854:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee2 <_NetIPID> */
ffa03858:	0a e1 14 0f 	P2.L = 0xf14;		/* (3860)	P2=0xff900f14 <_NetOurIP> */
ffa0385c:	10 91       	R0 = [P2];
ffa0385e:	ea b9       	P2 = [FP -0x8];
ffa03860:	d0 b1       	[P2 + 0x1c] = R0;
ffa03862:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f14 <_NetOurIP> */
ffa03866:	0a e1 d8 0e 	P2.L = 0xed8;		/* (3800)	P2=0xff900ed8 <_NetDestIP> */
ffa0386a:	10 91       	R0 = [P2];
ffa0386c:	ea b9       	P2 = [FP -0x8];
ffa0386e:	10 b2       	[P2 + 0x20] = R0;
ffa03870:	e0 b9       	R0 = [FP -0x8];
ffa03872:	80 64       	R0 += 0x10;		/* ( 16) */
ffa03874:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa03876:	ff e3 29 fd 	CALL 0xffa032c8 <_NetCksum>;
ffa0387a:	c0 43       	R0 =~ R0;
ffa0387c:	ea b9       	P2 = [FP -0x8];
ffa0387e:	50 b7       	W[P2 + 0x1a] = R0;
ffa03880:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa03884:	ff e3 4a fd 	CALL 0xffa03318 <_htons>;
ffa03888:	ea b9       	P2 = [FP -0x8];
ffa0388a:	50 e6 12 00 	W[P2 + 0x24] = R0;
ffa0388e:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa03892:	ff e3 43 fd 	CALL 0xffa03318 <_htons>;
ffa03896:	ea b9       	P2 = [FP -0x8];
ffa03898:	50 e6 13 00 	W[P2 + 0x26] = R0;
ffa0389c:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa0389e:	ff e3 3d fd 	CALL 0xffa03318 <_htons>;
ffa038a2:	ea b9       	P2 = [FP -0x8];
ffa038a4:	50 e6 14 00 	W[P2 + 0x28] = R0;
ffa038a8:	ea b9       	P2 = [FP -0x8];
ffa038aa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa038ac:	50 e6 15 00 	W[P2 + 0x2a] = R0;
ffa038b0:	e0 b9       	R0 = [FP -0x8];
ffa038b2:	f0 bb       	[FP -0x4] = R0;
ffa038b4:	f0 b9       	R0 = [FP -0x4];
ffa038b6:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa038b8:	f0 bb       	[FP -0x4] = R0;
ffa038ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa038bc:	d0 bb       	[FP -0xc] = R0;
ffa038be:	0b 20       	JUMP.S 0xffa038d4 <_ether_testUDP+0x160>;
ffa038c0:	d0 b9       	R0 = [FP -0xc];
ffa038c2:	08 30       	R1 = R0;
ffa038c4:	f0 b9       	R0 = [FP -0x4];
ffa038c6:	41 50       	R1 = R1 + R0;
ffa038c8:	11 32       	P2 = R1;
ffa038ca:	d0 b9       	R0 = [FP -0xc];
ffa038cc:	10 9b       	B[P2] = R0;
ffa038ce:	d0 b9       	R0 = [FP -0xc];
ffa038d0:	08 64       	R0 += 0x1;		/* (  1) */
ffa038d2:	d0 bb       	[FP -0xc] = R0;
ffa038d4:	d0 b9       	R0 = [FP -0xc];
ffa038d6:	a9 60       	R1 = 0x15 (X);		/*		R1=0x15( 21) */
ffa038d8:	08 09       	CC = R0 <= R1;
ffa038da:	f3 1b       	IF CC JUMP 0xffa038c0 <_ether_testUDP+0x14c>;
ffa038dc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa038e0:	00 e1 6c 02 	R0.L = 0x26c;		/* (620)	R0=0xff90026c(-7339412) */
ffa038e4:	ff e3 00 ef 	CALL 0xffa016e4 <_printf_str>;
ffa038e8:	ff e3 b0 f5 	CALL 0xffa02448 <_bfin_EMAC_send_nocopy>;
ffa038ec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa038ee:	c0 bb       	[FP -0x10] = R0;
ffa038f0:	c0 b9       	R0 = [FP -0x10];
ffa038f2:	01 e8 00 00 	UNLINK;
ffa038f6:	10 00       	RTS;

ffa038f8 <_udp_packet_setup>:
ffa038f8:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa038fc:	b8 b0       	[FP + 0x8] = R0;
ffa038fe:	f9 b0       	[FP + 0xc] = R1;
ffa03900:	b8 a0       	R0 = [FP + 0x8];
ffa03902:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa03904:	e0 bb       	[FP -0x8] = R0;
ffa03906:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed8 <_NetDestIP> */
ffa0390a:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa0390e:	12 91       	R2 = [P2];
ffa03910:	47 30       	R0 = FP;
ffa03912:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa03914:	f9 a0       	R1 = [FP + 0xc];
ffa03916:	ff e3 77 fd 	CALL 0xffa03404 <_eth_header_setup>;
ffa0391a:	f0 bb       	[FP -0x4] = R0;
ffa0391c:	fa ac       	P2 = [FP + 0xc];
ffa0391e:	50 99       	R0 = B[P2] (X);
ffa03920:	00 43       	R0 = R0.B (X);
ffa03922:	80 0c       	CC = R0 < 0x0;
ffa03924:	04 10       	IF !CC JUMP 0xffa0392c <_udp_packet_setup+0x34>;
ffa03926:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03928:	d0 bb       	[FP -0xc] = R0;
ffa0392a:	20 20       	JUMP.S 0xffa0396a <_udp_packet_setup+0x72>;
ffa0392c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa03930:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa03934:	13 91       	R3 = [P2];
ffa03936:	f1 b9       	R1 = [FP -0x4];
ffa03938:	57 30       	R2 = FP;
ffa0393a:	c2 67       	R2 += -0x8;		/* ( -8) */
ffa0393c:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0393e:	f0 b0       	[SP + 0xc] = R0;
ffa03940:	01 30       	R0 = R1;
ffa03942:	0a 30       	R1 = R2;
ffa03944:	13 30       	R2 = R3;
ffa03946:	ff e3 db fd 	CALL 0xffa034fc <_ip_header_setup>;
ffa0394a:	f0 bb       	[FP -0x4] = R0;
ffa0394c:	f1 b9       	R1 = [FP -0x4];
ffa0394e:	57 30       	R2 = FP;
ffa03950:	c2 67       	R2 += -0x8;		/* ( -8) */
ffa03952:	20 e1 f4 10 	R0 = 0x10f4 (X);		/*		R0=0x10f4(4340) */
ffa03956:	f0 b0       	[SP + 0xc] = R0;
ffa03958:	01 30       	R0 = R1;
ffa0395a:	0a 30       	R1 = R2;
ffa0395c:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa03960:	ff e3 9a fe 	CALL 0xffa03694 <_udp_header_setup>;
ffa03964:	f0 bb       	[FP -0x4] = R0;
ffa03966:	f0 b9       	R0 = [FP -0x4];
ffa03968:	d0 bb       	[FP -0xc] = R0;
ffa0396a:	d0 b9       	R0 = [FP -0xc];
ffa0396c:	01 e8 00 00 	UNLINK;
ffa03970:	10 00       	RTS;
	...

ffa03974 <_icmp_packet_setup>:
ffa03974:	78 05       	[--SP] = (R7:7);
ffa03976:	00 e8 0b 00 	LINK 0x2c;		/* (44) */
ffa0397a:	f8 b0       	[FP + 0xc] = R0;
ffa0397c:	39 b1       	[FP + 0x10] = R1;
ffa0397e:	7a b1       	[FP + 0x14] = R2;
ffa03980:	b8 a1       	R0 = [FP + 0x18];
ffa03982:	f9 a1       	R1 = [FP + 0x1c];
ffa03984:	3a a2       	R2 = [FP + 0x20];
ffa03986:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa0398a:	01 30       	R0 = R1;
ffa0398c:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa03990:	02 30       	R0 = R2;
ffa03992:	78 e6 f6 ff 	W[FP + -0x14] = R0;
ffa03996:	f8 a0       	R0 = [FP + 0xc];
ffa03998:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa0399a:	e0 bb       	[FP -0x8] = R0;
ffa0399c:	47 30       	R0 = FP;
ffa0399e:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa039a0:	39 a1       	R1 = [FP + 0x10];
ffa039a2:	7a a1       	R2 = [FP + 0x14];
ffa039a4:	ff e3 30 fd 	CALL 0xffa03404 <_eth_header_setup>;
ffa039a8:	f0 bb       	[FP -0x4] = R0;
ffa039aa:	3a ad       	P2 = [FP + 0x10];
ffa039ac:	50 99       	R0 = B[P2] (X);
ffa039ae:	00 43       	R0 = R0.B (X);
ffa039b0:	80 0c       	CC = R0 < 0x0;
ffa039b2:	04 10       	IF !CC JUMP 0xffa039ba <_icmp_packet_setup+0x46>;
ffa039b4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa039b6:	a0 bb       	[FP -0x18] = R0;
ffa039b8:	20 20       	JUMP.S 0xffa039f8 <_icmp_packet_setup+0x84>;
ffa039ba:	f1 b9       	R1 = [FP -0x4];
ffa039bc:	57 30       	R2 = FP;
ffa039be:	c2 67       	R2 += -0x8;		/* ( -8) */
ffa039c0:	7b a1       	R3 = [FP + 0x14];
ffa039c2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa039c4:	f0 b0       	[SP + 0xc] = R0;
ffa039c6:	01 30       	R0 = R1;
ffa039c8:	0a 30       	R1 = R2;
ffa039ca:	13 30       	R2 = R3;
ffa039cc:	ff e3 98 fd 	CALL 0xffa034fc <_ip_header_setup>;
ffa039d0:	f0 bb       	[FP -0x4] = R0;
ffa039d2:	bf e4 f4 ff 	R7 = B[FP + -0xc] (Z);
ffa039d6:	78 e4 f8 ff 	R0 = W[FP + -0x10] (Z);
ffa039da:	79 e4 f6 ff 	R1 = W[FP + -0x14] (Z);
ffa039de:	f2 b9       	R2 = [FP -0x4];
ffa039e0:	5f 30       	R3 = FP;
ffa039e2:	c3 67       	R3 += -0x8;		/* ( -8) */
ffa039e4:	f0 b0       	[SP + 0xc] = R0;
ffa039e6:	31 b1       	[SP + 0x10] = R1;
ffa039e8:	02 30       	R0 = R2;
ffa039ea:	0b 30       	R1 = R3;
ffa039ec:	17 30       	R2 = R7;
ffa039ee:	ff e3 03 fe 	CALL 0xffa035f4 <_icmp_header_setup>;
ffa039f2:	f0 bb       	[FP -0x4] = R0;
ffa039f4:	f0 b9       	R0 = [FP -0x4];
ffa039f6:	a0 bb       	[FP -0x18] = R0;
ffa039f8:	a0 b9       	R0 = [FP -0x18];
ffa039fa:	01 e8 00 00 	UNLINK;
ffa039fe:	38 05       	(R7:7) = [SP++];
ffa03a00:	10 00       	RTS;
	...

ffa03a04 <_icmp_rx>:
ffa03a04:	70 05       	[--SP] = (R7:6);
ffa03a06:	00 e8 0b 00 	LINK 0x2c;		/* (44) */
ffa03a0a:	38 b1       	[FP + 0x10] = R0;
ffa03a0c:	79 b1       	[FP + 0x14] = R1;
ffa03a0e:	38 a1       	R0 = [FP + 0x10];
ffa03a10:	d0 bb       	[FP -0xc] = R0;
ffa03a12:	da b9       	P2 = [FP -0xc];
ffa03a14:	d7 a9       	R7 = W[P2 + 0xe] (X);
ffa03a16:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03a1a:	ff e3 7f fc 	CALL 0xffa03318 <_htons>;
ffa03a1e:	f9 42       	R1 = R7.L (Z);
ffa03a20:	c0 42       	R0 = R0.L (Z);
ffa03a22:	01 08       	CC = R1 == R0;
ffa03a24:	85 10       	IF !CC JUMP 0xffa03b2e <_icmp_rx+0x12a>;
ffa03a26:	78 a1       	R0 = [FP + 0x14];
ffa03a28:	59 61       	R1 = 0x2b (X);		/*		R1=0x2b( 43) */
ffa03a2a:	08 0a       	CC = R0 <= R1 (IU);
ffa03a2c:	81 18       	IF CC JUMP 0xffa03b2e <_icmp_rx+0x12a>;
ffa03a2e:	00 00       	NOP;
ffa03a30:	00 00       	NOP;
ffa03a32:	da b9       	P2 = [FP -0xc];
ffa03a34:	90 e5 19 00 	R0 = B[P2 + 0x19] (X);
ffa03a38:	40 43       	R0 = R0.B (Z);
ffa03a3a:	08 0c       	CC = R0 == 0x1;
ffa03a3c:	79 10       	IF !CC JUMP 0xffa03b2e <_icmp_rx+0x12a>;
ffa03a3e:	00 00       	NOP;
ffa03a40:	00 00       	NOP;
ffa03a42:	da b9       	P2 = [FP -0xc];
ffa03a44:	11 a2       	R1 = [P2 + 0x20];
ffa03a46:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa03a4a:	0a e1 14 0f 	P2.L = 0xf14;		/* (3860)	P2=0xff900f14 <_NetOurIP> */
ffa03a4e:	10 91       	R0 = [P2];
ffa03a50:	01 08       	CC = R1 == R0;
ffa03a52:	6e 10       	IF !CC JUMP 0xffa03b2e <_icmp_rx+0x12a>;
ffa03a54:	00 00       	NOP;
ffa03a56:	00 00       	NOP;
ffa03a58:	da b9       	P2 = [FP -0xc];
ffa03a5a:	90 e5 24 00 	R0 = B[P2 + 0x24] (X);
ffa03a5e:	40 43       	R0 = R0.B (Z);
ffa03a60:	18 0c       	CC = R0 == 0x3;
ffa03a62:	12 10       	IF !CC JUMP 0xffa03a86 <_icmp_rx+0x82>;
ffa03a64:	00 00       	NOP;
ffa03a66:	00 00       	NOP;
ffa03a68:	da b9       	P2 = [FP -0xc];
ffa03a6a:	90 e5 25 00 	R0 = B[P2 + 0x25] (X);
ffa03a6e:	40 43       	R0 = R0.B (Z);
ffa03a70:	18 0c       	CC = R0 == 0x3;
ffa03a72:	0a 10       	IF !CC JUMP 0xffa03a86 <_icmp_rx+0x82>;
ffa03a74:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f14 <_NetOurIP> */
ffa03a78:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xff900c68 <_g_streamEnabled> */
ffa03a7c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a7e:	10 9b       	B[P2] = R0;
ffa03a80:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03a82:	b0 bb       	[FP -0x14] = R0;
ffa03a84:	57 20       	JUMP.S 0xffa03b32 <_icmp_rx+0x12e>;
ffa03a86:	da b9       	P2 = [FP -0xc];
ffa03a88:	90 e5 24 00 	R0 = B[P2 + 0x24] (X);
ffa03a8c:	40 43       	R0 = R0.B (Z);
ffa03a8e:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa03a90:	08 08       	CC = R0 == R1;
ffa03a92:	4e 10       	IF !CC JUMP 0xffa03b2e <_icmp_rx+0x12a>;
ffa03a94:	00 00       	NOP;
ffa03a96:	00 00       	NOP;
ffa03a98:	da b9       	P2 = [FP -0xc];
ffa03a9a:	d1 a1       	R1 = [P2 + 0x1c];
ffa03a9c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03aa0:	00 e1 84 02 	R0.L = 0x284;		/* (644)	R0=0xff900284(-7339388) */
ffa03aa4:	ff e3 3c f0 	CALL 0xffa01b1c <_printf_ip>;
ffa03aa8:	da b9       	P2 = [FP -0xc];
ffa03aaa:	d0 a1       	R0 = [P2 + 0x1c];
ffa03aac:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c68 <_g_streamEnabled> */
ffa03ab0:	0a e1 d8 0e 	P2.L = 0xed8;		/* (3800)	P2=0xff900ed8 <_NetDestIP> */
ffa03ab4:	10 93       	[P2] = R0;
ffa03ab6:	da b9       	P2 = [FP -0xc];
ffa03ab8:	d2 a1       	R2 = [P2 + 0x1c];
ffa03aba:	d0 b9       	R0 = [FP -0xc];
ffa03abc:	08 30       	R1 = R0;
ffa03abe:	41 64       	R1 += 0x8;		/* (  8) */
ffa03ac0:	02 30       	R0 = R2;
ffa03ac2:	00 e3 b7 07 	CALL 0xffa04a30 <_ARP_lut_add>;
ffa03ac6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900284(-7339388) */
ffa03aca:	00 e1 04 02 	R0.L = 0x204;		/* (516)	R0=0xff900204(-7339516) */
ffa03ace:	ff e3 0b ee 	CALL 0xffa016e4 <_printf_str>;
ffa03ad2:	da b9       	P2 = [FP -0xc];
ffa03ad4:	d0 a1       	R0 = [P2 + 0x1c];
ffa03ad6:	e0 bb       	[FP -0x8] = R0;
ffa03ad8:	38 a1       	R0 = [FP + 0x10];
ffa03ada:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa03adc:	38 b1       	[FP + 0x10] = R0;
ffa03ade:	78 a1       	R0 = [FP + 0x14];
ffa03ae0:	b0 66       	R0 += -0x2a;		/* (-42) */
ffa03ae2:	78 b1       	[FP + 0x14] = R0;
ffa03ae4:	da b9       	P2 = [FP -0xc];
ffa03ae6:	50 e5 14 00 	R0 = W[P2 + 0x28] (X);
ffa03aea:	c1 42       	R1 = R0.L (Z);
ffa03aec:	da b9       	P2 = [FP -0xc];
ffa03aee:	50 e5 15 00 	R0 = W[P2 + 0x2a] (X);
ffa03af2:	c2 42       	R2 = R0.L (Z);
ffa03af4:	7b a1       	R3 = [FP + 0x14];
ffa03af6:	7f 30       	R7 = FP;
ffa03af8:	9f 67       	R7 += -0xd;		/* (-13) */
ffa03afa:	e6 b9       	R6 = [FP -0x8];
ffa03afc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03afe:	f0 b0       	[SP + 0xc] = R0;
ffa03b00:	31 b1       	[SP + 0x10] = R1;
ffa03b02:	72 b1       	[SP + 0x14] = R2;
ffa03b04:	03 30       	R0 = R3;
ffa03b06:	0f 30       	R1 = R7;
ffa03b08:	16 30       	R2 = R6;
ffa03b0a:	ff e3 35 ff 	CALL 0xffa03974 <_icmp_packet_setup>;
ffa03b0e:	f0 bb       	[FP -0x4] = R0;
ffa03b10:	b8 e5 f3 ff 	R0 = B[FP + -0xd] (X);
ffa03b14:	00 43       	R0 = R0.B (X);
ffa03b16:	00 0d       	CC = R0 <= 0x0;
ffa03b18:	0b 18       	IF CC JUMP 0xffa03b2e <_icmp_rx+0x12a>;
ffa03b1a:	f1 b9       	R1 = [FP -0x4];
ffa03b1c:	7a a1       	R2 = [FP + 0x14];
ffa03b1e:	38 a1       	R0 = [FP + 0x10];
ffa03b20:	ff e3 74 f0 	CALL 0xffa01c08 <_memcpy_>;
ffa03b24:	ff e3 92 f4 	CALL 0xffa02448 <_bfin_EMAC_send_nocopy>;
ffa03b28:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03b2a:	b0 bb       	[FP -0x14] = R0;
ffa03b2c:	03 20       	JUMP.S 0xffa03b32 <_icmp_rx+0x12e>;
ffa03b2e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03b30:	b1 bb       	[FP -0x14] = R1;
ffa03b32:	b0 b9       	R0 = [FP -0x14];
ffa03b34:	01 e8 00 00 	UNLINK;
ffa03b38:	30 05       	(R7:6) = [SP++];
ffa03b3a:	10 00       	RTS;

ffa03b3c <_DHCP_tx>:
ffa03b3c:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa03b40:	b8 b0       	[FP + 0x8] = R0;
ffa03b42:	f9 b0       	[FP + 0xc] = R1;
ffa03b44:	3a b1       	[FP + 0x10] = R2;
ffa03b46:	b9 a0       	R1 = [FP + 0x8];
ffa03b48:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa03b4c:	01 50       	R0 = R1 + R0;
ffa03b4e:	d0 bb       	[FP -0xc] = R0;
ffa03b50:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed8 <_NetDestIP> */
ffa03b54:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa03b58:	50 95       	R0 = W[P2] (X);
ffa03b5a:	c0 42       	R0 = R0.L (Z);
ffa03b5c:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900000 <_l1_data_a>(-7340032) */
ffa03b60:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa03b64:	10 4f       	R0 <<= 0x2;
ffa03b66:	08 50       	R0 = R0 + R1;
ffa03b68:	10 32       	P2 = R0;
ffa03b6a:	52 91       	P2 = [P2];
ffa03b6c:	90 a1       	R0 = [P2 + 0x18];
ffa03b6e:	c0 bb       	[FP -0x10] = R0;
ffa03b70:	d0 b9       	R0 = [FP -0xc];
ffa03b72:	ca b9       	P2 = [FP -0x10];
ffa03b74:	10 97       	W[P2] = R0;
ffa03b76:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b78:	e0 bb       	[FP -0x8] = R0;
ffa03b7a:	0b 20       	JUMP.S 0xffa03b90 <_DHCP_tx+0x54>;
ffa03b7c:	e1 b9       	R1 = [FP -0x8];
ffa03b7e:	c0 b9       	R0 = [FP -0x10];
ffa03b80:	08 50       	R0 = R0 + R1;
ffa03b82:	10 32       	P2 = R0;
ffa03b84:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03b86:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa03b8a:	e0 b9       	R0 = [FP -0x8];
ffa03b8c:	08 64       	R0 += 0x1;		/* (  1) */
ffa03b8e:	e0 bb       	[FP -0x8] = R0;
ffa03b90:	e0 b9       	R0 = [FP -0x8];
ffa03b92:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03b94:	08 09       	CC = R0 <= R1;
ffa03b96:	f3 1b       	IF CC JUMP 0xffa03b7c <_DHCP_tx+0x40>;
ffa03b98:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b9a:	e0 bb       	[FP -0x8] = R0;
ffa03b9c:	12 20       	JUMP.S 0xffa03bc0 <_DHCP_tx+0x84>;
ffa03b9e:	e2 b9       	R2 = [FP -0x8];
ffa03ba0:	e1 b9       	R1 = [FP -0x8];
ffa03ba2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03ba6:	00 e1 08 0f 	R0.L = 0xf08;		/* (3848)	R0=0xff900f08 <_NetOurMAC>(-7336184) */
ffa03baa:	08 50       	R0 = R0 + R1;
ffa03bac:	10 32       	P2 = R0;
ffa03bae:	51 99       	R1 = B[P2] (X);
ffa03bb0:	c0 b9       	R0 = [FP -0x10];
ffa03bb2:	02 50       	R0 = R2 + R0;
ffa03bb4:	10 32       	P2 = R0;
ffa03bb6:	42 6c       	P2 += 0x8;		/* (  8) */
ffa03bb8:	11 9b       	B[P2] = R1;
ffa03bba:	e0 b9       	R0 = [FP -0x8];
ffa03bbc:	08 64       	R0 += 0x1;		/* (  1) */
ffa03bbe:	e0 bb       	[FP -0x8] = R0;
ffa03bc0:	e0 b9       	R0 = [FP -0x8];
ffa03bc2:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03bc4:	08 09       	CC = R0 <= R1;
ffa03bc6:	ec 1b       	IF CC JUMP 0xffa03b9e <_DHCP_tx+0x62>;
ffa03bc8:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03bcc:	ff e3 a6 fb 	CALL 0xffa03318 <_htons>;
ffa03bd0:	ca b9       	P2 = [FP -0x10];
ffa03bd2:	d0 b5       	W[P2 + 0xe] = R0;
ffa03bd4:	ca b9       	P2 = [FP -0x10];
ffa03bd6:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa03bda:	90 e6 10 00 	B[P2 + 0x10] = R0;
ffa03bde:	ca b9       	P2 = [FP -0x10];
ffa03be0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03be2:	90 e6 11 00 	B[P2 + 0x11] = R0;
ffa03be6:	b8 a0       	R0 = [FP + 0x8];
ffa03be8:	08 30       	R1 = R0;
ffa03bea:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa03bee:	01 50       	R0 = R1 + R0;
ffa03bf0:	c0 42       	R0 = R0.L (Z);
ffa03bf2:	ff e3 93 fb 	CALL 0xffa03318 <_htons>;
ffa03bf6:	ca b9       	P2 = [FP -0x10];
ffa03bf8:	50 b6       	W[P2 + 0x12] = R0;
ffa03bfa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa03bfe:	0a e1 e2 0e 	P2.L = 0xee2;		/* (3810)	P2=0xff900ee2 <_NetIPID> */
ffa03c02:	50 95       	R0 = W[P2] (X);
ffa03c04:	c1 42       	R1 = R0.L (Z);
ffa03c06:	08 64       	R0 += 0x1;		/* (  1) */
ffa03c08:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee2 <_NetIPID> */
ffa03c0c:	0a e1 e2 0e 	P2.L = 0xee2;		/* (3810)	P2=0xff900ee2 <_NetIPID> */
ffa03c10:	10 97       	W[P2] = R0;
ffa03c12:	01 30       	R0 = R1;
ffa03c14:	ff e3 82 fb 	CALL 0xffa03318 <_htons>;
ffa03c18:	ca b9       	P2 = [FP -0x10];
ffa03c1a:	90 b6       	W[P2 + 0x14] = R0;
ffa03c1c:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03c20:	ff e3 7c fb 	CALL 0xffa03318 <_htons>;
ffa03c24:	ca b9       	P2 = [FP -0x10];
ffa03c26:	d0 b6       	W[P2 + 0x16] = R0;
ffa03c28:	ca b9       	P2 = [FP -0x10];
ffa03c2a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03c2c:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa03c30:	ca b9       	P2 = [FP -0x10];
ffa03c32:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa03c34:	90 e6 19 00 	B[P2 + 0x19] = R0;
ffa03c38:	ca b9       	P2 = [FP -0x10];
ffa03c3a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c3c:	50 b7       	W[P2 + 0x1a] = R0;
ffa03c3e:	ca b9       	P2 = [FP -0x10];
ffa03c40:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c42:	d0 b1       	[P2 + 0x1c] = R0;
ffa03c44:	ca b9       	P2 = [FP -0x10];
ffa03c46:	38 a1       	R0 = [FP + 0x10];
ffa03c48:	10 b2       	[P2 + 0x20] = R0;
ffa03c4a:	c0 b9       	R0 = [FP -0x10];
ffa03c4c:	80 64       	R0 += 0x10;		/* ( 16) */
ffa03c4e:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa03c50:	ff e3 3c fb 	CALL 0xffa032c8 <_NetCksum>;
ffa03c54:	c0 43       	R0 =~ R0;
ffa03c56:	ca b9       	P2 = [FP -0x10];
ffa03c58:	50 b7       	W[P2 + 0x1a] = R0;
ffa03c5a:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa03c5e:	ff e3 5d fb 	CALL 0xffa03318 <_htons>;
ffa03c62:	ca b9       	P2 = [FP -0x10];
ffa03c64:	50 e6 12 00 	W[P2 + 0x24] = R0;
ffa03c68:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa03c6c:	ff e3 56 fb 	CALL 0xffa03318 <_htons>;
ffa03c70:	ca b9       	P2 = [FP -0x10];
ffa03c72:	50 e6 13 00 	W[P2 + 0x26] = R0;
ffa03c76:	b8 a0       	R0 = [FP + 0x8];
ffa03c78:	08 30       	R1 = R0;
ffa03c7a:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa03c7e:	01 50       	R0 = R1 + R0;
ffa03c80:	c0 42       	R0 = R0.L (Z);
ffa03c82:	ff e3 4b fb 	CALL 0xffa03318 <_htons>;
ffa03c86:	ca b9       	P2 = [FP -0x10];
ffa03c88:	50 e6 14 00 	W[P2 + 0x28] = R0;
ffa03c8c:	ca b9       	P2 = [FP -0x10];
ffa03c8e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c90:	50 e6 15 00 	W[P2 + 0x2a] = R0;
ffa03c94:	ca b9       	P2 = [FP -0x10];
ffa03c96:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03c98:	90 e6 2c 00 	B[P2 + 0x2c] = R0;
ffa03c9c:	ca b9       	P2 = [FP -0x10];
ffa03c9e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03ca0:	90 e6 2d 00 	B[P2 + 0x2d] = R0;
ffa03ca4:	ca b9       	P2 = [FP -0x10];
ffa03ca6:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03ca8:	90 e6 2e 00 	B[P2 + 0x2e] = R0;
ffa03cac:	ca b9       	P2 = [FP -0x10];
ffa03cae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03cb0:	90 e6 2f 00 	B[P2 + 0x2f] = R0;
ffa03cb4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ee2(-4190494) */
ffa03cb8:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa03cbc:	10 91       	R0 = [P2];
ffa03cbe:	ca b9       	P2 = [FP -0x10];
ffa03cc0:	10 b3       	[P2 + 0x30] = R0;
ffa03cc2:	ca b9       	P2 = [FP -0x10];
ffa03cc4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03cc6:	50 e6 1a 00 	W[P2 + 0x34] = R0;
ffa03cca:	ca b9       	P2 = [FP -0x10];
ffa03ccc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03cce:	50 e6 1b 00 	W[P2 + 0x36] = R0;
ffa03cd2:	ca b9       	P2 = [FP -0x10];
ffa03cd4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03cd6:	90 b3       	[P2 + 0x38] = R0;
ffa03cd8:	ca b9       	P2 = [FP -0x10];
ffa03cda:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03cdc:	d0 b3       	[P2 + 0x3c] = R0;
ffa03cde:	ca b9       	P2 = [FP -0x10];
ffa03ce0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ce2:	10 e6 10 00 	[P2 + 0x40] = R0;
ffa03ce6:	ca b9       	P2 = [FP -0x10];
ffa03ce8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03cea:	10 e6 11 00 	[P2 + 0x44] = R0;
ffa03cee:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820000(1669464064) */
ffa03cf2:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa03cf6:	ff e3 29 fb 	CALL 0xffa03348 <_htonl>;
ffa03cfa:	ca b9       	P2 = [FP -0x10];
ffa03cfc:	10 e6 46 00 	[P2 + 0x118] = R0;
ffa03d00:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d02:	e0 bb       	[FP -0x8] = R0;
ffa03d04:	14 20       	JUMP.S 0xffa03d2c <_DHCP_tx+0x1f0>;
ffa03d06:	e3 b9       	R3 = [FP -0x8];
ffa03d08:	e1 b9       	R1 = [FP -0x8];
ffa03d0a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03d0e:	00 e1 08 0f 	R0.L = 0xf08;		/* (3848)	R0=0xff900f08 <_NetOurMAC>(-7336184) */
ffa03d12:	08 50       	R0 = R0 + R1;
ffa03d14:	10 32       	P2 = R0;
ffa03d16:	52 99       	R2 = B[P2] (X);
ffa03d18:	c0 b9       	R0 = [FP -0x10];
ffa03d1a:	43 50       	R1 = R3 + R0;
ffa03d1c:	20 e1 48 00 	R0 = 0x48 (X);		/*		R0=0x48( 72) */
ffa03d20:	41 50       	R1 = R1 + R0;
ffa03d22:	11 32       	P2 = R1;
ffa03d24:	12 9b       	B[P2] = R2;
ffa03d26:	e0 b9       	R0 = [FP -0x8];
ffa03d28:	08 64       	R0 += 0x1;		/* (  1) */
ffa03d2a:	e0 bb       	[FP -0x8] = R0;
ffa03d2c:	e0 b9       	R0 = [FP -0x8];
ffa03d2e:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03d30:	08 09       	CC = R0 <= R1;
ffa03d32:	ea 1b       	IF CC JUMP 0xffa03d06 <_DHCP_tx+0x1ca>;
ffa03d34:	0d 20       	JUMP.S 0xffa03d4e <_DHCP_tx+0x212>;
ffa03d36:	e1 b9       	R1 = [FP -0x8];
ffa03d38:	c0 b9       	R0 = [FP -0x10];
ffa03d3a:	41 50       	R1 = R1 + R0;
ffa03d3c:	20 e1 48 00 	R0 = 0x48 (X);		/*		R0=0x48( 72) */
ffa03d40:	41 50       	R1 = R1 + R0;
ffa03d42:	11 32       	P2 = R1;
ffa03d44:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d46:	10 9b       	B[P2] = R0;
ffa03d48:	e0 b9       	R0 = [FP -0x8];
ffa03d4a:	08 64       	R0 += 0x1;		/* (  1) */
ffa03d4c:	e0 bb       	[FP -0x8] = R0;
ffa03d4e:	e0 b9       	R0 = [FP -0x8];
ffa03d50:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa03d52:	08 09       	CC = R0 <= R1;
ffa03d54:	f1 1b       	IF CC JUMP 0xffa03d36 <_DHCP_tx+0x1fa>;
ffa03d56:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d58:	e0 bb       	[FP -0x8] = R0;
ffa03d5a:	0e 20       	JUMP.S 0xffa03d76 <_DHCP_tx+0x23a>;
ffa03d5c:	e0 b9       	R0 = [FP -0x8];
ffa03d5e:	c1 b9       	R1 = [FP -0x10];
ffa03d60:	10 4f       	R0 <<= 0x2;
ffa03d62:	48 50       	R1 = R0 + R1;
ffa03d64:	20 e1 58 00 	R0 = 0x58 (X);		/*		R0=0x58( 88) */
ffa03d68:	41 50       	R1 = R1 + R0;
ffa03d6a:	11 32       	P2 = R1;
ffa03d6c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d6e:	10 93       	[P2] = R0;
ffa03d70:	e0 b9       	R0 = [FP -0x8];
ffa03d72:	08 64       	R0 += 0x1;		/* (  1) */
ffa03d74:	e0 bb       	[FP -0x8] = R0;
ffa03d76:	e0 b9       	R0 = [FP -0x8];
ffa03d78:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa03d7a:	08 09       	CC = R0 <= R1;
ffa03d7c:	f0 1b       	IF CC JUMP 0xffa03d5c <_DHCP_tx+0x220>;
ffa03d7e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d80:	e0 bb       	[FP -0x8] = R0;
ffa03d82:	0e 20       	JUMP.S 0xffa03d9e <_DHCP_tx+0x262>;
ffa03d84:	e0 b9       	R0 = [FP -0x8];
ffa03d86:	c1 b9       	R1 = [FP -0x10];
ffa03d88:	10 4f       	R0 <<= 0x2;
ffa03d8a:	48 50       	R1 = R0 + R1;
ffa03d8c:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa03d90:	41 50       	R1 = R1 + R0;
ffa03d92:	11 32       	P2 = R1;
ffa03d94:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d96:	10 93       	[P2] = R0;
ffa03d98:	e0 b9       	R0 = [FP -0x8];
ffa03d9a:	08 64       	R0 += 0x1;		/* (  1) */
ffa03d9c:	e0 bb       	[FP -0x8] = R0;
ffa03d9e:	e0 b9       	R0 = [FP -0x8];
ffa03da0:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa03da2:	08 09       	CC = R0 <= R1;
ffa03da4:	f0 1b       	IF CC JUMP 0xffa03d84 <_DHCP_tx+0x248>;
ffa03da6:	c0 b9       	R0 = [FP -0x10];
ffa03da8:	f0 bb       	[FP -0x4] = R0;
ffa03daa:	f1 b9       	R1 = [FP -0x4];
ffa03dac:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa03db0:	01 50       	R0 = R1 + R0;
ffa03db2:	f0 bb       	[FP -0x4] = R0;
ffa03db4:	f8 a0       	R0 = [FP + 0xc];
ffa03db6:	f1 b9       	R1 = [FP -0x4];
ffa03db8:	ba a0       	R2 = [FP + 0x8];
ffa03dba:	ff e3 27 ef 	CALL 0xffa01c08 <_memcpy_>;
ffa03dbe:	ff e3 45 f3 	CALL 0xffa02448 <_bfin_EMAC_send_nocopy>;
ffa03dc2:	01 e8 00 00 	UNLINK;
ffa03dc6:	10 00       	RTS;

ffa03dc8 <_DHCP_tx_discover>:
ffa03dc8:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03dcc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa03dd0:	0a e1 dc 0e 	P2.L = 0xedc;		/* (3804)	P2=0xff900edc <_NetDHCPserv> */
ffa03dd4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03dd6:	10 93       	[P2] = R0;
ffa03dd8:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa03dda:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa03dde:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03de0:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa03de4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03de6:	b8 e6 fe ff 	B[FP + -0x2] = R0;
ffa03dea:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03dec:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa03df0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa03df4:	00 e1 a0 02 	R0.L = 0x2a0;		/* (672)	R0=0xff9002a0(-7339360) */
ffa03df8:	ff e3 76 ec 	CALL 0xffa016e4 <_printf_str>;
ffa03dfc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900edc <_NetDHCPserv> */
ffa03e00:	0a e1 dc 0e 	P2.L = 0xedc;		/* (3804)	P2=0xff900edc <_NetDHCPserv> */
ffa03e04:	12 91       	R2 = [P2];
ffa03e06:	4f 30       	R1 = FP;
ffa03e08:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03e0a:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03e0c:	ff e3 98 fe 	CALL 0xffa03b3c <_DHCP_tx>;
ffa03e10:	01 e8 00 00 	UNLINK;
ffa03e14:	10 00       	RTS;
	...

ffa03e18 <_DHCP_rx>:
ffa03e18:	78 05       	[--SP] = (R7:7);
ffa03e1a:	00 e8 09 00 	LINK 0x24;		/* (36) */
ffa03e1e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03e20:	e0 bb       	[FP -0x8] = R0;
ffa03e22:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03e24:	f0 bb       	[FP -0x4] = R0;
ffa03e26:	9b 20       	JUMP.S 0xffa03f5c <_DHCP_rx+0x144>;
ffa03e28:	47 30       	R0 = FP;
ffa03e2a:	60 67       	R0 += -0x14;		/* (-20) */
ffa03e2c:	ff e3 a4 f4 	CALL 0xffa02774 <_bfin_EMAC_recv_poll>;
ffa03e30:	c0 bb       	[FP -0x10] = R0;
ffa03e32:	c1 b9       	R1 = [FP -0x10];
ffa03e34:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa03e38:	01 50       	R0 = R1 + R0;
ffa03e3a:	08 30       	R1 = R0;
ffa03e3c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa03e40:	00 e1 b4 02 	R0.L = 0x2b4;		/* (692)	R0=0xff9002b4(-7339340) */
ffa03e44:	ff e3 5a ec 	CALL 0xffa016f8 <_printf_int>;
ffa03e48:	b0 b9       	R0 = [FP -0x14];
ffa03e4a:	d0 bb       	[FP -0xc] = R0;
ffa03e4c:	c0 b9       	R0 = [FP -0x10];
ffa03e4e:	00 0d       	CC = R0 <= 0x0;
ffa03e50:	75 18       	IF CC JUMP 0xffa03f3a <_DHCP_rx+0x122>;
ffa03e52:	c0 b9       	R0 = [FP -0x10];
ffa03e54:	21 e1 1b 01 	R1 = 0x11b (X);		/*		R1=0x11b(283) */
ffa03e58:	08 0a       	CC = R0 <= R1 (IU);
ffa03e5a:	70 18       	IF CC JUMP 0xffa03f3a <_DHCP_rx+0x122>;
ffa03e5c:	00 00       	NOP;
ffa03e5e:	00 00       	NOP;
ffa03e60:	da b9       	P2 = [FP -0xc];
ffa03e62:	d0 a9       	R0 = W[P2 + 0xe] (X);
ffa03e64:	c0 42       	R0 = R0.L (Z);
ffa03e66:	ff e3 59 fa 	CALL 0xffa03318 <_htons>;
ffa03e6a:	c0 42       	R0 = R0.L (Z);
ffa03e6c:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa03e70:	08 08       	CC = R0 == R1;
ffa03e72:	64 10       	IF !CC JUMP 0xffa03f3a <_DHCP_rx+0x122>;
ffa03e74:	00 00       	NOP;
ffa03e76:	00 00       	NOP;
ffa03e78:	da b9       	P2 = [FP -0xc];
ffa03e7a:	57 e5 12 00 	R7 = W[P2 + 0x24] (X);
ffa03e7e:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa03e82:	ff e3 4b fa 	CALL 0xffa03318 <_htons>;
ffa03e86:	f9 42       	R1 = R7.L (Z);
ffa03e88:	c0 42       	R0 = R0.L (Z);
ffa03e8a:	01 08       	CC = R1 == R0;
ffa03e8c:	60 10       	IF !CC JUMP 0xffa03f4c <_DHCP_rx+0x134>;
ffa03e8e:	00 00       	NOP;
ffa03e90:	00 00       	NOP;
ffa03e92:	da b9       	P2 = [FP -0xc];
ffa03e94:	57 e5 13 00 	R7 = W[P2 + 0x26] (X);
ffa03e98:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa03e9c:	ff e3 3e fa 	CALL 0xffa03318 <_htons>;
ffa03ea0:	f9 42       	R1 = R7.L (Z);
ffa03ea2:	c0 42       	R0 = R0.L (Z);
ffa03ea4:	01 08       	CC = R1 == R0;
ffa03ea6:	53 10       	IF !CC JUMP 0xffa03f4c <_DHCP_rx+0x134>;
ffa03ea8:	00 00       	NOP;
ffa03eaa:	00 00       	NOP;
ffa03eac:	da b9       	P2 = [FP -0xc];
ffa03eae:	11 a3       	R1 = [P2 + 0x30];
ffa03eb0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00edc(-4190500) */
ffa03eb4:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa03eb8:	10 91       	R0 = [P2];
ffa03eba:	01 08       	CC = R1 == R0;
ffa03ebc:	48 10       	IF !CC JUMP 0xffa03f4c <_DHCP_rx+0x134>;
ffa03ebe:	00 00       	NOP;
ffa03ec0:	00 00       	NOP;
ffa03ec2:	da b9       	P2 = [FP -0xc];
ffa03ec4:	17 e4 46 00 	R7 = [P2 + 0x118];
ffa03ec8:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa03ecc:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa03ed0:	ff e3 3c fa 	CALL 0xffa03348 <_htonl>;
ffa03ed4:	07 08       	CC = R7 == R0;
ffa03ed6:	3b 10       	IF !CC JUMP 0xffa03f4c <_DHCP_rx+0x134>;
ffa03ed8:	d0 b9       	R0 = [FP -0xc];
ffa03eda:	b0 bb       	[FP -0x14] = R0;
ffa03edc:	b1 b9       	R1 = [FP -0x14];
ffa03ede:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa03ee2:	01 50       	R0 = R1 + R0;
ffa03ee4:	b0 bb       	[FP -0x14] = R0;
ffa03ee6:	b2 b9       	R2 = [FP -0x14];
ffa03ee8:	c1 b9       	R1 = [FP -0x10];
ffa03eea:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa03eee:	01 50       	R0 = R1 + R0;
ffa03ef0:	08 30       	R1 = R0;
ffa03ef2:	02 30       	R0 = R2;
ffa03ef4:	00 e3 b6 00 	CALL 0xffa04060 <_DHCP_parse>;
ffa03ef8:	da b9       	P2 = [FP -0xc];
ffa03efa:	d0 a3       	R0 = [P2 + 0x3c];
ffa03efc:	00 0c       	CC = R0 == 0x0;
ffa03efe:	1b 18       	IF CC JUMP 0xffa03f34 <_DHCP_rx+0x11c>;
ffa03f00:	00 00       	NOP;
ffa03f02:	00 00       	NOP;
ffa03f04:	da b9       	P2 = [FP -0xc];
ffa03f06:	d0 a3       	R0 = [P2 + 0x3c];
ffa03f08:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa03f0c:	0a e1 14 0f 	P2.L = 0xf14;		/* (3860)	P2=0xff900f14 <_NetOurIP> */
ffa03f10:	10 93       	[P2] = R0;
ffa03f12:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f14 <_NetOurIP> */
ffa03f16:	0a e1 14 0f 	P2.L = 0xf14;		/* (3860)	P2=0xff900f14 <_NetOurIP> */
ffa03f1a:	11 91       	R1 = [P2];
ffa03f1c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa03f20:	00 e1 c8 02 	R0.L = 0x2c8;		/* (712)	R0=0xff9002c8(-7339320) */
ffa03f24:	ff e3 fc ed 	CALL 0xffa01b1c <_printf_ip>;
ffa03f28:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002c8(-7339320) */
ffa03f2c:	00 e1 04 02 	R0.L = 0x204;		/* (516)	R0=0xff900204(-7339516) */
ffa03f30:	ff e3 da eb 	CALL 0xffa016e4 <_printf_str>;
ffa03f34:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03f36:	a0 bb       	[FP -0x18] = R0;
ffa03f38:	17 20       	JUMP.S 0xffa03f66 <_DHCP_rx+0x14e>;
ffa03f3a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03f3e:	00 e1 d8 02 	R0.L = 0x2d8;		/* (728)	R0=0xff9002d8(-7339304) */
ffa03f42:	ff e3 d1 eb 	CALL 0xffa016e4 <_printf_str>;
ffa03f46:	f0 b9       	R0 = [FP -0x4];
ffa03f48:	08 64       	R0 += 0x1;		/* (  1) */
ffa03f4a:	f0 bb       	[FP -0x4] = R0;
ffa03f4c:	f0 b9       	R0 = [FP -0x4];
ffa03f4e:	61 60       	R1 = 0xc (X);		/*		R1=0xc( 12) */
ffa03f50:	08 09       	CC = R0 <= R1;
ffa03f52:	05 18       	IF CC JUMP 0xffa03f5c <_DHCP_rx+0x144>;
ffa03f54:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03f56:	f0 bb       	[FP -0x4] = R0;
ffa03f58:	ff e3 38 ff 	CALL 0xffa03dc8 <_DHCP_tx_discover>;
ffa03f5c:	e0 b9       	R0 = [FP -0x8];
ffa03f5e:	00 0c       	CC = R0 == 0x0;
ffa03f60:	64 1b       	IF CC JUMP 0xffa03e28 <_DHCP_rx+0x10>;
ffa03f62:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03f64:	a0 bb       	[FP -0x18] = R0;
ffa03f66:	a0 b9       	R0 = [FP -0x18];
ffa03f68:	01 e8 00 00 	UNLINK;
ffa03f6c:	38 05       	(R7:7) = [SP++];
ffa03f6e:	10 00       	RTS;

ffa03f70 <_DHCP_req>:
ffa03f70:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa03f74:	ff e3 2a ff 	CALL 0xffa03dc8 <_DHCP_tx_discover>;
ffa03f78:	ff e3 50 ff 	CALL 0xffa03e18 <_DHCP_rx>;
ffa03f7c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f14 <_NetOurIP> */
ffa03f80:	0a e1 dc 0e 	P2.L = 0xedc;		/* (3804)	P2=0xff900edc <_NetDHCPserv> */
ffa03f84:	10 91       	R0 = [P2];
ffa03f86:	38 0c       	CC = R0 == -0x1;
ffa03f88:	0a 10       	IF !CC JUMP 0xffa03f9c <_DHCP_req+0x2c>;
ffa03f8a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03f8e:	00 e1 f4 02 	R0.L = 0x2f4;		/* (756)	R0=0xff9002f4(-7339276) */
ffa03f92:	ff e3 a9 eb 	CALL 0xffa016e4 <_printf_str>;
ffa03f96:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03f98:	c0 bb       	[FP -0x10] = R0;
ffa03f9a:	5e 20       	JUMP.S 0xffa04056 <_DHCP_req+0xe6>;
ffa03f9c:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa03f9e:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa03fa2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03fa4:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa03fa8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa03faa:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa03fae:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa03fb0:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa03fb4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03fb6:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa03fba:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900edc <_NetDHCPserv> */
ffa03fbe:	0a e1 dc 0e 	P2.L = 0xedc;		/* (3804)	P2=0xff900edc <_NetDHCPserv> */
ffa03fc2:	10 91       	R0 = [P2];
ffa03fc4:	b8 e6 f9 ff 	B[FP + -0x7] = R0;
ffa03fc8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900edc <_NetDHCPserv> */
ffa03fcc:	0a e1 dc 0e 	P2.L = 0xedc;		/* (3804)	P2=0xff900edc <_NetDHCPserv> */
ffa03fd0:	10 91       	R0 = [P2];
ffa03fd2:	40 4e       	R0 >>= 0x8;
ffa03fd4:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa03fd8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900edc <_NetDHCPserv> */
ffa03fdc:	0a e1 dc 0e 	P2.L = 0xedc;		/* (3804)	P2=0xff900edc <_NetDHCPserv> */
ffa03fe0:	10 91       	R0 = [P2];
ffa03fe2:	80 4e       	R0 >>= 0x10;
ffa03fe4:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa03fe8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900edc <_NetDHCPserv> */
ffa03fec:	0a e1 dc 0e 	P2.L = 0xedc;		/* (3804)	P2=0xff900edc <_NetDHCPserv> */
ffa03ff0:	10 91       	R0 = [P2];
ffa03ff2:	c0 4e       	R0 >>= 0x18;
ffa03ff4:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa03ff8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03ffa:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa03ffe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900edc <_NetDHCPserv> */
ffa04002:	0a e1 14 0f 	P2.L = 0xf14;		/* (3860)	P2=0xff900f14 <_NetOurIP> */
ffa04006:	10 91       	R0 = [P2];
ffa04008:	00 0c       	CC = R0 == 0x0;
ffa0400a:	12 18       	IF CC JUMP 0xffa0402e <_DHCP_req+0xbe>;
ffa0400c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f14 <_NetOurIP> */
ffa04010:	0a e1 dc 0e 	P2.L = 0xedc;		/* (3804)	P2=0xff900edc <_NetDHCPserv> */
ffa04014:	10 91       	R0 = [P2];
ffa04016:	38 0c       	CC = R0 == -0x1;
ffa04018:	0b 18       	IF CC JUMP 0xffa0402e <_DHCP_req+0xbe>;
ffa0401a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900edc <_NetDHCPserv> */
ffa0401e:	0a e1 10 0f 	P2.L = 0xf10;		/* (3856)	P2=0xff900f10 <_NetSubnetMask> */
ffa04022:	10 91       	R0 = [P2];
ffa04024:	00 0c       	CC = R0 == 0x0;
ffa04026:	04 18       	IF CC JUMP 0xffa0402e <_DHCP_req+0xbe>;
ffa04028:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0402a:	c0 bb       	[FP -0x10] = R0;
ffa0402c:	15 20       	JUMP.S 0xffa04056 <_DHCP_req+0xe6>;
ffa0402e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa04032:	00 e1 10 03 	R0.L = 0x310;		/* (784)	R0=0xff900310(-7339248) */
ffa04036:	ff e3 57 eb 	CALL 0xffa016e4 <_printf_str>;
ffa0403a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f10 <_NetSubnetMask> */
ffa0403e:	0a e1 dc 0e 	P2.L = 0xedc;		/* (3804)	P2=0xff900edc <_NetDHCPserv> */
ffa04042:	12 91       	R2 = [P2];
ffa04044:	4f 30       	R1 = FP;
ffa04046:	a1 67       	R1 += -0xc;		/* (-12) */
ffa04048:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0404a:	ff e3 79 fd 	CALL 0xffa03b3c <_DHCP_tx>;
ffa0404e:	ff e3 e5 fe 	CALL 0xffa03e18 <_DHCP_rx>;
ffa04052:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04054:	c0 bb       	[FP -0x10] = R0;
ffa04056:	c0 b9       	R0 = [FP -0x10];
ffa04058:	01 e8 00 00 	UNLINK;
ffa0405c:	10 00       	RTS;
	...

ffa04060 <_DHCP_parse>:
ffa04060:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa04064:	b8 b0       	[FP + 0x8] = R0;
ffa04066:	f9 b0       	[FP + 0xc] = R1;
ffa04068:	f8 a0       	R0 = [FP + 0xc];
ffa0406a:	f0 bb       	[FP -0x4] = R0;
ffa0406c:	cb 20       	JUMP.S 0xffa04202 <_DHCP_parse+0x1a2>;
ffa0406e:	ba ac       	P2 = [FP + 0x8];
ffa04070:	50 99       	R0 = B[P2] (X);
ffa04072:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa04076:	b8 a0       	R0 = [FP + 0x8];
ffa04078:	08 64       	R0 += 0x1;		/* (  1) */
ffa0407a:	b8 b0       	[FP + 0x8] = R0;
ffa0407c:	f0 b9       	R0 = [FP -0x4];
ffa0407e:	f8 67       	R0 += -0x1;		/* ( -1) */
ffa04080:	f0 bb       	[FP -0x4] = R0;
ffa04082:	b8 e4 fa ff 	R0 = B[FP + -0x6] (Z);
ffa04086:	00 0c       	CC = R0 == 0x0;
ffa04088:	bd 18       	IF CC JUMP 0xffa04202 <_DHCP_parse+0x1a2>;
ffa0408a:	00 00       	NOP;
ffa0408c:	00 00       	NOP;
ffa0408e:	ba ac       	P2 = [FP + 0x8];
ffa04090:	50 99       	R0 = B[P2] (X);
ffa04092:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa04096:	b8 a0       	R0 = [FP + 0x8];
ffa04098:	08 64       	R0 += 0x1;		/* (  1) */
ffa0409a:	b8 b0       	[FP + 0x8] = R0;
ffa0409c:	b8 e4 fa ff 	R0 = B[FP + -0x6] (Z);
ffa040a0:	21 e1 ff 00 	R1 = 0xff (X);		/*		R1=0xff(255) */
ffa040a4:	08 08       	CC = R0 == R1;
ffa040a6:	b1 18       	IF CC JUMP 0xffa04208 <_DHCP_parse+0x1a8>;
ffa040a8:	b8 e4 fa ff 	R0 = B[FP + -0x6] (Z);
ffa040ac:	d0 bb       	[FP -0xc] = R0;
ffa040ae:	d1 b9       	R1 = [FP -0xc];
ffa040b0:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa040b2:	01 0a       	CC = R1 <= R0 (IU);
ffa040b4:	85 10       	IF !CC JUMP 0xffa041be <_DHCP_parse+0x15e>;
ffa040b6:	d1 b9       	R1 = [FP -0xc];
ffa040b8:	11 4f       	R1 <<= 0x2;
ffa040ba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa040be:	00 e1 e8 03 	R0.L = 0x3e8;		/* (1000)	R0=0xff9003e8(-7339032) */
ffa040c2:	41 50       	R1 = R1 + R0;
ffa040c4:	11 32       	P2 = R1;
ffa040c6:	52 91       	P2 = [P2];
ffa040c8:	52 00       	JUMP (P2);
ffa040ca:	b8 a0       	R0 = [FP + 0x8];
ffa040cc:	ff e3 6c f9 	CALL 0xffa033a4 <_pack4chars>;
ffa040d0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900edc <_NetDHCPserv> */
ffa040d4:	0a e1 10 0f 	P2.L = 0xf10;		/* (3856)	P2=0xff900f10 <_NetSubnetMask> */
ffa040d8:	10 93       	[P2] = R0;
ffa040da:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f10 <_NetSubnetMask> */
ffa040de:	0a e1 10 0f 	P2.L = 0xf10;		/* (3856)	P2=0xff900f10 <_NetSubnetMask> */
ffa040e2:	11 91       	R1 = [P2];
ffa040e4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003e8(-7339032) */
ffa040e8:	00 e1 24 03 	R0.L = 0x324;		/* (804)	R0=0xff900324(-7339228) */
ffa040ec:	ff e3 18 ed 	CALL 0xffa01b1c <_printf_ip>;
ffa040f0:	77 20       	JUMP.S 0xffa041de <_DHCP_parse+0x17e>;
ffa040f2:	b8 a0       	R0 = [FP + 0x8];
ffa040f4:	ff e3 58 f9 	CALL 0xffa033a4 <_pack4chars>;
ffa040f8:	08 30       	R1 = R0;
ffa040fa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900324(-7339228) */
ffa040fe:	00 e1 34 03 	R0.L = 0x334;		/* (820)	R0=0xff900334(-7339212) */
ffa04102:	ff e3 0d ed 	CALL 0xffa01b1c <_printf_ip>;
ffa04106:	6c 20       	JUMP.S 0xffa041de <_DHCP_parse+0x17e>;
ffa04108:	b8 a0       	R0 = [FP + 0x8];
ffa0410a:	ff e3 4d f9 	CALL 0xffa033a4 <_pack4chars>;
ffa0410e:	08 30       	R1 = R0;
ffa04110:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900334(-7339212) */
ffa04114:	00 e1 44 03 	R0.L = 0x344;		/* (836)	R0=0xff900344(-7339196) */
ffa04118:	ff e3 02 ed 	CALL 0xffa01b1c <_printf_ip>;
ffa0411c:	61 20       	JUMP.S 0xffa041de <_DHCP_parse+0x17e>;
ffa0411e:	b8 a0       	R0 = [FP + 0x8];
ffa04120:	ff e3 42 f9 	CALL 0xffa033a4 <_pack4chars>;
ffa04124:	08 30       	R1 = R0;
ffa04126:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900344(-7339196) */
ffa0412a:	00 e1 54 03 	R0.L = 0x354;		/* (852)	R0=0xff900354(-7339180) */
ffa0412e:	ff e3 f7 ec 	CALL 0xffa01b1c <_printf_ip>;
ffa04132:	56 20       	JUMP.S 0xffa041de <_DHCP_parse+0x17e>;
ffa04134:	b8 a0       	R0 = [FP + 0x8];
ffa04136:	ff e3 37 f9 	CALL 0xffa033a4 <_pack4chars>;
ffa0413a:	ff e3 07 f9 	CALL 0xffa03348 <_htonl>;
ffa0413e:	08 30       	R1 = R0;
ffa04140:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900354(-7339180) */
ffa04144:	00 e1 64 03 	R0.L = 0x364;		/* (868)	R0=0xff900364(-7339164) */
ffa04148:	ff e3 d8 ea 	CALL 0xffa016f8 <_printf_int>;
ffa0414c:	49 20       	JUMP.S 0xffa041de <_DHCP_parse+0x17e>;
ffa0414e:	ba ac       	P2 = [FP + 0x8];
ffa04150:	50 99       	R0 = B[P2] (X);
ffa04152:	41 43       	R1 = R0.B (Z);
ffa04154:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900364(-7339164) */
ffa04158:	00 e1 78 03 	R0.L = 0x378;		/* (888)	R0=0xff900378(-7339144) */
ffa0415c:	ff e3 ce ea 	CALL 0xffa016f8 <_printf_int>;
ffa04160:	3f 20       	JUMP.S 0xffa041de <_DHCP_parse+0x17e>;
ffa04162:	b8 a0       	R0 = [FP + 0x8];
ffa04164:	ff e3 20 f9 	CALL 0xffa033a4 <_pack4chars>;
ffa04168:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f10 <_NetSubnetMask> */
ffa0416c:	0a e1 dc 0e 	P2.L = 0xedc;		/* (3804)	P2=0xff900edc <_NetDHCPserv> */
ffa04170:	10 93       	[P2] = R0;
ffa04172:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900edc <_NetDHCPserv> */
ffa04176:	0a e1 dc 0e 	P2.L = 0xedc;		/* (3804)	P2=0xff900edc <_NetDHCPserv> */
ffa0417a:	11 91       	R1 = [P2];
ffa0417c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900378(-7339144) */
ffa04180:	00 e1 8c 03 	R0.L = 0x38c;		/* (908)	R0=0xff90038c(-7339124) */
ffa04184:	ff e3 cc ec 	CALL 0xffa01b1c <_printf_ip>;
ffa04188:	2b 20       	JUMP.S 0xffa041de <_DHCP_parse+0x17e>;
ffa0418a:	b8 a0       	R0 = [FP + 0x8];
ffa0418c:	ff e3 0c f9 	CALL 0xffa033a4 <_pack4chars>;
ffa04190:	ff e3 dc f8 	CALL 0xffa03348 <_htonl>;
ffa04194:	08 30       	R1 = R0;
ffa04196:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90038c(-7339124) */
ffa0419a:	00 e1 a0 03 	R0.L = 0x3a0;		/* (928)	R0=0xff9003a0(-7339104) */
ffa0419e:	ff e3 ad ea 	CALL 0xffa016f8 <_printf_int>;
ffa041a2:	1e 20       	JUMP.S 0xffa041de <_DHCP_parse+0x17e>;
ffa041a4:	b8 a0       	R0 = [FP + 0x8];
ffa041a6:	ff e3 ff f8 	CALL 0xffa033a4 <_pack4chars>;
ffa041aa:	ff e3 cf f8 	CALL 0xffa03348 <_htonl>;
ffa041ae:	08 30       	R1 = R0;
ffa041b0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003a0(-7339104) */
ffa041b4:	00 e1 b4 03 	R0.L = 0x3b4;		/* (948)	R0=0xff9003b4(-7339084) */
ffa041b8:	ff e3 a0 ea 	CALL 0xffa016f8 <_printf_int>;
ffa041bc:	11 20       	JUMP.S 0xffa041de <_DHCP_parse+0x17e>;
ffa041be:	b9 e4 fa ff 	R1 = B[FP + -0x6] (Z);
ffa041c2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003b4(-7339084) */
ffa041c6:	00 e1 cc 03 	R0.L = 0x3cc;		/* (972)	R0=0xff9003cc(-7339060) */
ffa041ca:	ff e3 97 ea 	CALL 0xffa016f8 <_printf_int>;
ffa041ce:	b9 e4 fb ff 	R1 = B[FP + -0x5] (Z);
ffa041d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003cc(-7339060) */
ffa041d6:	00 e1 e0 03 	R0.L = 0x3e0;		/* (992)	R0=0xff9003e0(-7339040) */
ffa041da:	ff e3 8f ea 	CALL 0xffa016f8 <_printf_int>;
ffa041de:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003e0(-7339040) */
ffa041e2:	00 e1 04 02 	R0.L = 0x204;		/* (516)	R0=0xff900204(-7339516) */
ffa041e6:	ff e3 7f ea 	CALL 0xffa016e4 <_printf_str>;
ffa041ea:	b8 e4 fb ff 	R0 = B[FP + -0x5] (Z);
ffa041ee:	08 30       	R1 = R0;
ffa041f0:	b8 a0       	R0 = [FP + 0x8];
ffa041f2:	08 50       	R0 = R0 + R1;
ffa041f4:	b8 b0       	[FP + 0x8] = R0;
ffa041f6:	b9 e4 fb ff 	R1 = B[FP + -0x5] (Z);
ffa041fa:	f0 b9       	R0 = [FP -0x4];
ffa041fc:	08 52       	R0 = R0 - R1;
ffa041fe:	f8 67       	R0 += -0x1;		/* ( -1) */
ffa04200:	f0 bb       	[FP -0x4] = R0;
ffa04202:	f0 b9       	R0 = [FP -0x4];
ffa04204:	08 0d       	CC = R0 <= 0x1;
ffa04206:	34 13       	IF !CC JUMP 0xffa0406e <_DHCP_parse+0xe>;
ffa04208:	01 e8 00 00 	UNLINK;
ffa0420c:	10 00       	RTS;
	...

ffa04210 <_bridge_publish>:
ffa04210:	78 05       	[--SP] = (R7:7);
ffa04212:	00 e8 0a 00 	LINK 0x28;		/* (40) */
ffa04216:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04218:	b8 e6 f3 ff 	B[FP + -0xd] = R0;
ffa0421c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0421e:	f0 b0       	[SP + 0xc] = R0;
ffa04220:	20 e1 ef 00 	R0 = 0xef (X);		/*		R0=0xef(239) */
ffa04224:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa04226:	22 e1 c8 00 	R2 = 0xc8 (X);		/*		R2=0xc8(200) */
ffa0422a:	ff e3 65 f3 	CALL 0xffa028f4 <_FormatIPAddress>;
ffa0422e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900edc <_NetDHCPserv> */
ffa04232:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa04236:	10 93       	[P2] = R0;
ffa04238:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa0423a:	d0 bb       	[FP -0xc] = R0;
ffa0423c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa04240:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa04244:	12 91       	R2 = [P2];
ffa04246:	47 30       	R0 = FP;
ffa04248:	a0 67       	R0 += -0xc;		/* (-12) */
ffa0424a:	4f 30       	R1 = FP;
ffa0424c:	99 67       	R1 += -0xd;		/* (-13) */
ffa0424e:	ff e3 db f8 	CALL 0xffa03404 <_eth_header_setup>;
ffa04252:	b0 bb       	[FP -0x14] = R0;
ffa04254:	b8 e5 f3 ff 	R0 = B[FP + -0xd] (X);
ffa04258:	00 43       	R0 = R0.B (X);
ffa0425a:	80 0c       	CC = R0 < 0x0;
ffa0425c:	04 10       	IF !CC JUMP 0xffa04264 <_bridge_publish+0x54>;
ffa0425e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04260:	a0 bb       	[FP -0x18] = R0;
ffa04262:	ad 20       	JUMP.S 0xffa043bc <_bridge_publish+0x1ac>;
ffa04264:	b2 b9       	R2 = [FP -0x14];
ffa04266:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa0426a:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa0426e:	13 91       	R3 = [P2];
ffa04270:	4f 30       	R1 = FP;
ffa04272:	a1 67       	R1 += -0xc;		/* (-12) */
ffa04274:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa04276:	f0 b0       	[SP + 0xc] = R0;
ffa04278:	02 30       	R0 = R2;
ffa0427a:	13 30       	R2 = R3;
ffa0427c:	ff e3 40 f9 	CALL 0xffa034fc <_ip_header_setup>;
ffa04280:	b0 bb       	[FP -0x14] = R0;
ffa04282:	b1 b9       	R1 = [FP -0x14];
ffa04284:	57 30       	R2 = FP;
ffa04286:	a2 67       	R2 += -0xc;		/* (-12) */
ffa04288:	20 e1 f4 10 	R0 = 0x10f4 (X);		/*		R0=0x10f4(4340) */
ffa0428c:	f0 b0       	[SP + 0xc] = R0;
ffa0428e:	01 30       	R0 = R1;
ffa04290:	0a 30       	R1 = R2;
ffa04292:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa04296:	ff e3 ff f9 	CALL 0xffa03694 <_udp_header_setup>;
ffa0429a:	b0 bb       	[FP -0x14] = R0;
ffa0429c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9010f4(-7335692) */
ffa042a0:	00 e1 d8 04 	R0.L = 0x4d8;		/* (1240)	R0=0xff9004d8(-7338792) */
ffa042a4:	b1 b9       	R1 = [FP -0x14];
ffa042a6:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
ffa042a8:	ff e3 b0 ec 	CALL 0xffa01c08 <_memcpy_>;
ffa042ac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004d8(-7338792) */
ffa042b0:	00 e1 e4 04 	R0.L = 0x4e4;		/* (1252)	R0=0xff9004e4(-7338780) */
ffa042b4:	ff e3 18 ea 	CALL 0xffa016e4 <_printf_str>;
ffa042b8:	ff e3 c8 f0 	CALL 0xffa02448 <_bfin_EMAC_send_nocopy>;
ffa042bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa042be:	e0 bb       	[FP -0x8] = R0;
ffa042c0:	69 20       	JUMP.S 0xffa04392 <_bridge_publish+0x182>;
ffa042c2:	47 30       	R0 = FP;
ffa042c4:	60 67       	R0 += -0x14;		/* (-20) */
ffa042c6:	ff e3 57 f2 	CALL 0xffa02774 <_bfin_EMAC_recv_poll>;
ffa042ca:	d0 bb       	[FP -0xc] = R0;
ffa042cc:	b0 b9       	R0 = [FP -0x14];
ffa042ce:	f0 bb       	[FP -0x4] = R0;
ffa042d0:	d0 b9       	R0 = [FP -0xc];
ffa042d2:	00 0d       	CC = R0 <= 0x0;
ffa042d4:	5c 18       	IF CC JUMP 0xffa0438c <_bridge_publish+0x17c>;
ffa042d6:	d0 b9       	R0 = [FP -0xc];
ffa042d8:	59 61       	R1 = 0x2b (X);		/*		R1=0x2b( 43) */
ffa042da:	08 0a       	CC = R0 <= R1 (IU);
ffa042dc:	58 18       	IF CC JUMP 0xffa0438c <_bridge_publish+0x17c>;
ffa042de:	00 00       	NOP;
ffa042e0:	00 00       	NOP;
ffa042e2:	fa b9       	P2 = [FP -0x4];
ffa042e4:	d0 a9       	R0 = W[P2 + 0xe] (X);
ffa042e6:	c0 42       	R0 = R0.L (Z);
ffa042e8:	ff e3 18 f8 	CALL 0xffa03318 <_htons>;
ffa042ec:	c0 42       	R0 = R0.L (Z);
ffa042ee:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa042f2:	08 08       	CC = R0 == R1;
ffa042f4:	4c 10       	IF !CC JUMP 0xffa0438c <_bridge_publish+0x17c>;
ffa042f6:	00 00       	NOP;
ffa042f8:	00 00       	NOP;
ffa042fa:	fa b9       	P2 = [FP -0x4];
ffa042fc:	57 e5 12 00 	R7 = W[P2 + 0x24] (X);
ffa04300:	20 e1 f4 10 	R0 = 0x10f4 (X);		/*		R0=0x10f4(4340) */
ffa04304:	ff e3 0a f8 	CALL 0xffa03318 <_htons>;
ffa04308:	f9 42       	R1 = R7.L (Z);
ffa0430a:	c0 42       	R0 = R0.L (Z);
ffa0430c:	01 08       	CC = R1 == R0;
ffa0430e:	3f 10       	IF !CC JUMP 0xffa0438c <_bridge_publish+0x17c>;
ffa04310:	00 00       	NOP;
ffa04312:	00 00       	NOP;
ffa04314:	fa b9       	P2 = [FP -0x4];
ffa04316:	57 e5 13 00 	R7 = W[P2 + 0x26] (X);
ffa0431a:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa0431e:	ff e3 fd f7 	CALL 0xffa03318 <_htons>;
ffa04322:	f9 42       	R1 = R7.L (Z);
ffa04324:	c0 42       	R0 = R0.L (Z);
ffa04326:	01 08       	CC = R1 == R0;
ffa04328:	32 10       	IF !CC JUMP 0xffa0438c <_bridge_publish+0x17c>;
ffa0432a:	00 00       	NOP;
ffa0432c:	00 00       	NOP;
ffa0432e:	fa b9       	P2 = [FP -0x4];
ffa04330:	d0 a1       	R0 = [P2 + 0x1c];
ffa04332:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa04336:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa0433a:	10 93       	[P2] = R0;
ffa0433c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa04340:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa04344:	11 91       	R1 = [P2];
ffa04346:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9010f5(-7335691) */
ffa0434a:	00 e1 fc 04 	R0.L = 0x4fc;		/* (1276)	R0=0xff9004fc(-7338756) */
ffa0434e:	ff e3 e7 eb 	CALL 0xffa01b1c <_printf_ip>;
ffa04352:	b0 b9       	R0 = [FP -0x14];
ffa04354:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa04356:	b0 bb       	[FP -0x14] = R0;
ffa04358:	ba b9       	P2 = [FP -0x14];
ffa0435a:	50 99       	R0 = B[P2] (X);
ffa0435c:	41 43       	R1 = R0.B (Z);
ffa0435e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004fc(-7338756) */
ffa04362:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa04366:	ff e3 41 eb 	CALL 0xffa019e8 <_printf_hex_byte>;
ffa0436a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900508(-7338744) */
ffa0436e:	00 e1 04 02 	R0.L = 0x204;		/* (516)	R0=0xff900204(-7339516) */
ffa04372:	ff e3 b9 e9 	CALL 0xffa016e4 <_printf_str>;
ffa04376:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa0437a:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xff900c68 <_g_streamEnabled> */
ffa0437e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04380:	10 9b       	B[P2] = R0;
ffa04382:	ba b9       	P2 = [FP -0x14];
ffa04384:	50 99       	R0 = B[P2] (X);
ffa04386:	40 43       	R0 = R0.B (Z);
ffa04388:	a0 bb       	[FP -0x18] = R0;
ffa0438a:	19 20       	JUMP.S 0xffa043bc <_bridge_publish+0x1ac>;
ffa0438c:	e0 b9       	R0 = [FP -0x8];
ffa0438e:	08 64       	R0 += 0x1;		/* (  1) */
ffa04390:	e0 bb       	[FP -0x8] = R0;
ffa04392:	e0 b9       	R0 = [FP -0x8];
ffa04394:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa04396:	08 09       	CC = R0 <= R1;
ffa04398:	95 1b       	IF CC JUMP 0xffa042c2 <_bridge_publish+0xb2>;
ffa0439a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0439c:	e0 bb       	[FP -0x8] = R0;
ffa0439e:	08 20       	JUMP.S 0xffa043ae <_bridge_publish+0x19e>;
	...
ffa043a8:	e0 b9       	R0 = [FP -0x8];
ffa043aa:	08 64       	R0 += 0x1;		/* (  1) */
ffa043ac:	e0 bb       	[FP -0x8] = R0;
ffa043ae:	e0 b9       	R0 = [FP -0x8];
ffa043b0:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa043b2:	41 e1 ff 01 	R1.H = 0x1ff;		/* (511)	R1=0x1ffffff(33554431) */
ffa043b6:	08 09       	CC = R0 <= R1;
ffa043b8:	f4 1b       	IF CC JUMP 0xffa043a0 <_bridge_publish+0x190>;
ffa043ba:	3f 2f       	JUMP.S 0xffa04238 <_bridge_publish+0x28>;
ffa043bc:	a0 b9       	R0 = [FP -0x18];
ffa043be:	01 e8 00 00 	UNLINK;
ffa043c2:	38 05       	(R7:7) = [SP++];
ffa043c4:	10 00       	RTS;
	...

ffa043c8 <_ARP_init>:
ffa043c8:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa043cc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa043ce:	e0 bb       	[FP -0x8] = R0;
ffa043d0:	55 20       	JUMP.S 0xffa0447a <_ARP_init+0xb2>;
ffa043d2:	e1 b9       	R1 = [FP -0x8];
ffa043d4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90000a(-7340022) */
ffa043d8:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa043dc:	01 30       	R0 = R1;
ffa043de:	10 4f       	R0 <<= 0x2;
ffa043e0:	08 50       	R0 = R0 + R1;
ffa043e2:	10 4f       	R0 <<= 0x2;
ffa043e4:	10 50       	R0 = R0 + R2;
ffa043e6:	10 32       	P2 = R0;
ffa043e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa043ea:	10 93       	[P2] = R0;
ffa043ec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa043ee:	f0 bb       	[FP -0x4] = R0;
ffa043f0:	14 20       	JUMP.S 0xffa04418 <_ARP_init+0x50>;
ffa043f2:	e1 b9       	R1 = [FP -0x8];
ffa043f4:	f3 b9       	R3 = [FP -0x4];
ffa043f6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa043fa:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa043fe:	01 30       	R0 = R1;
ffa04400:	10 4f       	R0 <<= 0x2;
ffa04402:	08 50       	R0 = R0 + R1;
ffa04404:	10 4f       	R0 <<= 0x2;
ffa04406:	10 50       	R0 = R0 + R2;
ffa04408:	18 50       	R0 = R0 + R3;
ffa0440a:	10 32       	P2 = R0;
ffa0440c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0440e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04410:	10 9b       	B[P2] = R0;
ffa04412:	f0 b9       	R0 = [FP -0x4];
ffa04414:	08 64       	R0 += 0x1;		/* (  1) */
ffa04416:	f0 bb       	[FP -0x4] = R0;
ffa04418:	f0 b9       	R0 = [FP -0x4];
ffa0441a:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0441c:	08 09       	CC = R0 <= R1;
ffa0441e:	ea 1b       	IF CC JUMP 0xffa043f2 <_ARP_init+0x2a>;
ffa04420:	e1 b9       	R1 = [FP -0x8];
ffa04422:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04426:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa0442a:	01 30       	R0 = R1;
ffa0442c:	10 4f       	R0 <<= 0x2;
ffa0442e:	08 50       	R0 = R0 + R1;
ffa04430:	10 4f       	R0 <<= 0x2;
ffa04432:	10 50       	R0 = R0 + R2;
ffa04434:	10 32       	P2 = R0;
ffa04436:	42 6c       	P2 += 0x8;		/* (  8) */
ffa04438:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0443a:	50 b4       	W[P2 + 0x2] = R0;
ffa0443c:	e1 b9       	R1 = [FP -0x8];
ffa0443e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04442:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04446:	01 30       	R0 = R1;
ffa04448:	10 4f       	R0 <<= 0x2;
ffa0444a:	08 50       	R0 = R0 + R1;
ffa0444c:	10 4f       	R0 <<= 0x2;
ffa0444e:	10 50       	R0 = R0 + R2;
ffa04450:	10 32       	P2 = R0;
ffa04452:	62 6c       	P2 += 0xc;		/* ( 12) */
ffa04454:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04456:	10 93       	[P2] = R0;
ffa04458:	e1 b9       	R1 = [FP -0x8];
ffa0445a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa0445e:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04462:	01 30       	R0 = R1;
ffa04464:	10 4f       	R0 <<= 0x2;
ffa04466:	08 50       	R0 = R0 + R1;
ffa04468:	10 4f       	R0 <<= 0x2;
ffa0446a:	10 50       	R0 = R0 + R2;
ffa0446c:	10 32       	P2 = R0;
ffa0446e:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa04470:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04472:	10 93       	[P2] = R0;
ffa04474:	e0 b9       	R0 = [FP -0x8];
ffa04476:	08 64       	R0 += 0x1;		/* (  1) */
ffa04478:	e0 bb       	[FP -0x8] = R0;
ffa0447a:	e0 b9       	R0 = [FP -0x8];
ffa0447c:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa0447e:	08 09       	CC = R0 <= R1;
ffa04480:	a9 1b       	IF CC JUMP 0xffa043d2 <_ARP_init+0xa>;
ffa04482:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c68 <_g_streamEnabled> */
ffa04486:	0a e1 1c 0f 	P2.L = 0xf1c;		/* (3868)	P2=0xff900f1c <_NetArpLut_age> */
ffa0448a:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa0448e:	10 97       	W[P2] = R0;
ffa04490:	01 e8 00 00 	UNLINK;
ffa04494:	10 00       	RTS;
	...

ffa04498 <_ARP_tx>:
ffa04498:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0449c:	b8 b0       	[FP + 0x8] = R0;
ffa0449e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f1c <_NetArpLut_age> */
ffa044a2:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa044a6:	50 95       	R0 = W[P2] (X);
ffa044a8:	c0 42       	R0 = R0.L (Z);
ffa044aa:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900009(-7340023) */
ffa044ae:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa044b2:	10 4f       	R0 <<= 0x2;
ffa044b4:	08 50       	R0 = R0 + R1;
ffa044b6:	10 32       	P2 = R0;
ffa044b8:	52 91       	P2 = [P2];
ffa044ba:	90 a1       	R0 = [P2 + 0x18];
ffa044bc:	f0 bb       	[FP -0x4] = R0;
ffa044be:	fa b9       	P2 = [FP -0x4];
ffa044c0:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa044c2:	10 97       	W[P2] = R0;
ffa044c4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa044c6:	e0 bb       	[FP -0x8] = R0;
ffa044c8:	0b 20       	JUMP.S 0xffa044de <_ARP_tx+0x46>;
ffa044ca:	e1 b9       	R1 = [FP -0x8];
ffa044cc:	f0 b9       	R0 = [FP -0x4];
ffa044ce:	08 50       	R0 = R0 + R1;
ffa044d0:	10 32       	P2 = R0;
ffa044d2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa044d4:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa044d8:	e0 b9       	R0 = [FP -0x8];
ffa044da:	08 64       	R0 += 0x1;		/* (  1) */
ffa044dc:	e0 bb       	[FP -0x8] = R0;
ffa044de:	e0 b9       	R0 = [FP -0x8];
ffa044e0:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa044e2:	08 09       	CC = R0 <= R1;
ffa044e4:	f3 1b       	IF CC JUMP 0xffa044ca <_ARP_tx+0x32>;
ffa044e6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa044e8:	e0 bb       	[FP -0x8] = R0;
ffa044ea:	12 20       	JUMP.S 0xffa0450e <_ARP_tx+0x76>;
ffa044ec:	e2 b9       	R2 = [FP -0x8];
ffa044ee:	e1 b9       	R1 = [FP -0x8];
ffa044f0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa044f4:	00 e1 08 0f 	R0.L = 0xf08;		/* (3848)	R0=0xff900f08 <_NetOurMAC>(-7336184) */
ffa044f8:	08 50       	R0 = R0 + R1;
ffa044fa:	10 32       	P2 = R0;
ffa044fc:	51 99       	R1 = B[P2] (X);
ffa044fe:	f0 b9       	R0 = [FP -0x4];
ffa04500:	02 50       	R0 = R2 + R0;
ffa04502:	10 32       	P2 = R0;
ffa04504:	42 6c       	P2 += 0x8;		/* (  8) */
ffa04506:	11 9b       	B[P2] = R1;
ffa04508:	e0 b9       	R0 = [FP -0x8];
ffa0450a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0450c:	e0 bb       	[FP -0x8] = R0;
ffa0450e:	e0 b9       	R0 = [FP -0x8];
ffa04510:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa04512:	08 09       	CC = R0 <= R1;
ffa04514:	ec 1b       	IF CC JUMP 0xffa044ec <_ARP_tx+0x54>;
ffa04516:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa0451a:	ff e3 ff f6 	CALL 0xffa03318 <_htons>;
ffa0451e:	fa b9       	P2 = [FP -0x4];
ffa04520:	d0 b5       	W[P2 + 0xe] = R0;
ffa04522:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04524:	ff e3 fa f6 	CALL 0xffa03318 <_htons>;
ffa04528:	fa b9       	P2 = [FP -0x4];
ffa0452a:	10 b6       	W[P2 + 0x10] = R0;
ffa0452c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa04530:	ff e3 f4 f6 	CALL 0xffa03318 <_htons>;
ffa04534:	fa b9       	P2 = [FP -0x4];
ffa04536:	50 b6       	W[P2 + 0x12] = R0;
ffa04538:	fa b9       	P2 = [FP -0x4];
ffa0453a:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0453c:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa04540:	fa b9       	P2 = [FP -0x4];
ffa04542:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa04544:	90 e6 15 00 	B[P2 + 0x15] = R0;
ffa04548:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0454a:	ff e3 e7 f6 	CALL 0xffa03318 <_htons>;
ffa0454e:	fa b9       	P2 = [FP -0x4];
ffa04550:	d0 b6       	W[P2 + 0x16] = R0;
ffa04552:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04554:	e0 bb       	[FP -0x8] = R0;
ffa04556:	1a 20       	JUMP.S 0xffa0458a <_ARP_tx+0xf2>;
ffa04558:	e2 b9       	R2 = [FP -0x8];
ffa0455a:	e1 b9       	R1 = [FP -0x8];
ffa0455c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa04560:	00 e1 08 0f 	R0.L = 0xf08;		/* (3848)	R0=0xff900f08 <_NetOurMAC>(-7336184) */
ffa04564:	08 50       	R0 = R0 + R1;
ffa04566:	10 32       	P2 = R0;
ffa04568:	51 99       	R1 = B[P2] (X);
ffa0456a:	f0 b9       	R0 = [FP -0x4];
ffa0456c:	02 50       	R0 = R2 + R0;
ffa0456e:	10 32       	P2 = R0;
ffa04570:	c2 6c       	P2 += 0x18;		/* ( 24) */
ffa04572:	11 9b       	B[P2] = R1;
ffa04574:	e1 b9       	R1 = [FP -0x8];
ffa04576:	f0 b9       	R0 = [FP -0x4];
ffa04578:	01 50       	R0 = R1 + R0;
ffa0457a:	10 32       	P2 = R0;
ffa0457c:	02 6d       	P2 += 0x20;		/* ( 32) */
ffa0457e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04580:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa04584:	e0 b9       	R0 = [FP -0x8];
ffa04586:	08 64       	R0 += 0x1;		/* (  1) */
ffa04588:	e0 bb       	[FP -0x8] = R0;
ffa0458a:	e0 b9       	R0 = [FP -0x8];
ffa0458c:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0458e:	08 09       	CC = R0 <= R1;
ffa04590:	e4 1b       	IF CC JUMP 0xffa04558 <_ARP_tx+0xc0>;
ffa04592:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa04596:	0a e1 14 0f 	P2.L = 0xf14;		/* (3860)	P2=0xff900f14 <_NetOurIP> */
ffa0459a:	10 91       	R0 = [P2];
ffa0459c:	fa b9       	P2 = [FP -0x4];
ffa0459e:	90 e6 1e 00 	B[P2 + 0x1e] = R0;
ffa045a2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f14 <_NetOurIP> */
ffa045a6:	0a e1 14 0f 	P2.L = 0xf14;		/* (3860)	P2=0xff900f14 <_NetOurIP> */
ffa045aa:	10 91       	R0 = [P2];
ffa045ac:	40 4e       	R0 >>= 0x8;
ffa045ae:	fa b9       	P2 = [FP -0x4];
ffa045b0:	90 e6 1f 00 	B[P2 + 0x1f] = R0;
ffa045b4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f14 <_NetOurIP> */
ffa045b8:	0a e1 14 0f 	P2.L = 0xf14;		/* (3860)	P2=0xff900f14 <_NetOurIP> */
ffa045bc:	10 91       	R0 = [P2];
ffa045be:	80 4e       	R0 >>= 0x10;
ffa045c0:	fa b9       	P2 = [FP -0x4];
ffa045c2:	90 e6 20 00 	B[P2 + 0x20] = R0;
ffa045c6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f14 <_NetOurIP> */
ffa045ca:	0a e1 14 0f 	P2.L = 0xf14;		/* (3860)	P2=0xff900f14 <_NetOurIP> */
ffa045ce:	10 91       	R0 = [P2];
ffa045d0:	c0 4e       	R0 >>= 0x18;
ffa045d2:	fa b9       	P2 = [FP -0x4];
ffa045d4:	90 e6 21 00 	B[P2 + 0x21] = R0;
ffa045d8:	fa b9       	P2 = [FP -0x4];
ffa045da:	b8 a0       	R0 = [FP + 0x8];
ffa045dc:	90 b2       	[P2 + 0x28] = R0;
ffa045de:	ff e3 35 ef 	CALL 0xffa02448 <_bfin_EMAC_send_nocopy>;
ffa045e2:	01 e8 00 00 	UNLINK;
ffa045e6:	10 00       	RTS;

ffa045e8 <_ARP_rx>:
ffa045e8:	78 05       	[--SP] = (R7:7);
ffa045ea:	00 e8 09 00 	LINK 0x24;		/* (36) */
ffa045ee:	f8 b0       	[FP + 0xc] = R0;
ffa045f0:	39 b1       	[FP + 0x10] = R1;
ffa045f2:	f8 a0       	R0 = [FP + 0xc];
ffa045f4:	c0 bb       	[FP -0x10] = R0;
ffa045f6:	ca b9       	P2 = [FP -0x10];
ffa045f8:	d0 a9       	R0 = W[P2 + 0xe] (X);
ffa045fa:	c0 42       	R0 = R0.L (Z);
ffa045fc:	ff e3 8e f6 	CALL 0xffa03318 <_htons>;
ffa04600:	c0 42       	R0 = R0.L (Z);
ffa04602:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa04606:	08 08       	CC = R0 == R1;
ffa04608:	ac 11       	IF !CC JUMP 0xffa04960 <_ARP_rx+0x378>;
ffa0460a:	38 a1       	R0 = [FP + 0x10];
ffa0460c:	59 61       	R1 = 0x2b (X);		/*		R1=0x2b( 43) */
ffa0460e:	08 0a       	CC = R0 <= R1 (IU);
ffa04610:	a8 19       	IF CC JUMP 0xffa04960 <_ARP_rx+0x378>;
ffa04612:	00 00       	NOP;
ffa04614:	00 00       	NOP;
ffa04616:	ca b9       	P2 = [FP -0x10];
ffa04618:	17 aa       	R7 = W[P2 + 0x10] (X);
ffa0461a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0461c:	ff e3 7e f6 	CALL 0xffa03318 <_htons>;
ffa04620:	f9 42       	R1 = R7.L (Z);
ffa04622:	c0 42       	R0 = R0.L (Z);
ffa04624:	01 08       	CC = R1 == R0;
ffa04626:	9d 11       	IF !CC JUMP 0xffa04960 <_ARP_rx+0x378>;
ffa04628:	00 00       	NOP;
ffa0462a:	00 00       	NOP;
ffa0462c:	ca b9       	P2 = [FP -0x10];
ffa0462e:	57 aa       	R7 = W[P2 + 0x12] (X);
ffa04630:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa04634:	ff e3 72 f6 	CALL 0xffa03318 <_htons>;
ffa04638:	f9 42       	R1 = R7.L (Z);
ffa0463a:	c0 42       	R0 = R0.L (Z);
ffa0463c:	01 08       	CC = R1 == R0;
ffa0463e:	91 11       	IF !CC JUMP 0xffa04960 <_ARP_rx+0x378>;
ffa04640:	00 00       	NOP;
ffa04642:	00 00       	NOP;
ffa04644:	ca b9       	P2 = [FP -0x10];
ffa04646:	90 e5 14 00 	R0 = B[P2 + 0x14] (X);
ffa0464a:	40 43       	R0 = R0.B (Z);
ffa0464c:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa0464e:	08 08       	CC = R0 == R1;
ffa04650:	88 11       	IF !CC JUMP 0xffa04960 <_ARP_rx+0x378>;
ffa04652:	00 00       	NOP;
ffa04654:	00 00       	NOP;
ffa04656:	ca b9       	P2 = [FP -0x10];
ffa04658:	90 e5 15 00 	R0 = B[P2 + 0x15] (X);
ffa0465c:	40 43       	R0 = R0.B (Z);
ffa0465e:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa04660:	08 08       	CC = R0 == R1;
ffa04662:	7f 11       	IF !CC JUMP 0xffa04960 <_ARP_rx+0x378>;
ffa04664:	00 00       	NOP;
ffa04666:	00 00       	NOP;
ffa04668:	ca b9       	P2 = [FP -0x10];
ffa0466a:	d7 aa       	R7 = W[P2 + 0x16] (X);
ffa0466c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0466e:	ff e3 55 f6 	CALL 0xffa03318 <_htons>;
ffa04672:	f9 42       	R1 = R7.L (Z);
ffa04674:	c0 42       	R0 = R0.L (Z);
ffa04676:	01 08       	CC = R1 == R0;
ffa04678:	75 10       	IF !CC JUMP 0xffa04762 <_ARP_rx+0x17a>;
ffa0467a:	00 00       	NOP;
ffa0467c:	00 00       	NOP;
ffa0467e:	ca b9       	P2 = [FP -0x10];
ffa04680:	91 e5 22 00 	R1 = B[P2 + 0x22] (X);
ffa04684:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f14 <_NetOurIP> */
ffa04688:	0a e1 08 0f 	P2.L = 0xf08;		/* (3848)	P2=0xff900f08 <_NetOurMAC> */
ffa0468c:	50 99       	R0 = B[P2] (X);
ffa0468e:	49 43       	R1 = R1.B (Z);
ffa04690:	40 43       	R0 = R0.B (Z);
ffa04692:	01 08       	CC = R1 == R0;
ffa04694:	67 10       	IF !CC JUMP 0xffa04762 <_ARP_rx+0x17a>;
ffa04696:	00 00       	NOP;
ffa04698:	00 00       	NOP;
ffa0469a:	ca b9       	P2 = [FP -0x10];
ffa0469c:	91 e5 23 00 	R1 = B[P2 + 0x23] (X);
ffa046a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f08 <_NetOurMAC> */
ffa046a4:	0a e1 08 0f 	P2.L = 0xf08;		/* (3848)	P2=0xff900f08 <_NetOurMAC> */
ffa046a8:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa046ac:	49 43       	R1 = R1.B (Z);
ffa046ae:	40 43       	R0 = R0.B (Z);
ffa046b0:	01 08       	CC = R1 == R0;
ffa046b2:	58 10       	IF !CC JUMP 0xffa04762 <_ARP_rx+0x17a>;
ffa046b4:	00 00       	NOP;
ffa046b6:	00 00       	NOP;
ffa046b8:	ca b9       	P2 = [FP -0x10];
ffa046ba:	91 e5 24 00 	R1 = B[P2 + 0x24] (X);
ffa046be:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f08 <_NetOurMAC> */
ffa046c2:	0a e1 08 0f 	P2.L = 0xf08;		/* (3848)	P2=0xff900f08 <_NetOurMAC> */
ffa046c6:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa046ca:	49 43       	R1 = R1.B (Z);
ffa046cc:	40 43       	R0 = R0.B (Z);
ffa046ce:	01 08       	CC = R1 == R0;
ffa046d0:	49 10       	IF !CC JUMP 0xffa04762 <_ARP_rx+0x17a>;
ffa046d2:	00 00       	NOP;
ffa046d4:	00 00       	NOP;
ffa046d6:	ca b9       	P2 = [FP -0x10];
ffa046d8:	91 e5 25 00 	R1 = B[P2 + 0x25] (X);
ffa046dc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f08 <_NetOurMAC> */
ffa046e0:	0a e1 08 0f 	P2.L = 0xf08;		/* (3848)	P2=0xff900f08 <_NetOurMAC> */
ffa046e4:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa046e8:	49 43       	R1 = R1.B (Z);
ffa046ea:	40 43       	R0 = R0.B (Z);
ffa046ec:	01 08       	CC = R1 == R0;
ffa046ee:	3a 10       	IF !CC JUMP 0xffa04762 <_ARP_rx+0x17a>;
ffa046f0:	00 00       	NOP;
ffa046f2:	00 00       	NOP;
ffa046f4:	ca b9       	P2 = [FP -0x10];
ffa046f6:	91 e5 26 00 	R1 = B[P2 + 0x26] (X);
ffa046fa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f08 <_NetOurMAC> */
ffa046fe:	0a e1 08 0f 	P2.L = 0xf08;		/* (3848)	P2=0xff900f08 <_NetOurMAC> */
ffa04702:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa04706:	49 43       	R1 = R1.B (Z);
ffa04708:	40 43       	R0 = R0.B (Z);
ffa0470a:	01 08       	CC = R1 == R0;
ffa0470c:	2b 10       	IF !CC JUMP 0xffa04762 <_ARP_rx+0x17a>;
ffa0470e:	00 00       	NOP;
ffa04710:	00 00       	NOP;
ffa04712:	ca b9       	P2 = [FP -0x10];
ffa04714:	91 e5 27 00 	R1 = B[P2 + 0x27] (X);
ffa04718:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f08 <_NetOurMAC> */
ffa0471c:	0a e1 08 0f 	P2.L = 0xf08;		/* (3848)	P2=0xff900f08 <_NetOurMAC> */
ffa04720:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa04724:	49 43       	R1 = R1.B (Z);
ffa04726:	40 43       	R0 = R0.B (Z);
ffa04728:	01 08       	CC = R1 == R0;
ffa0472a:	1c 10       	IF !CC JUMP 0xffa04762 <_ARP_rx+0x17a>;
ffa0472c:	c0 b9       	R0 = [FP -0x10];
ffa0472e:	f0 64       	R0 += 0x1e;		/* ( 30) */
ffa04730:	ff e3 3a f6 	CALL 0xffa033a4 <_pack4chars>;
ffa04734:	f0 bb       	[FP -0x4] = R0;
ffa04736:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa0473a:	00 e1 18 05 	R0.L = 0x518;		/* (1304)	R0=0xff900518(-7338728) */
ffa0473e:	f1 b9       	R1 = [FP -0x4];
ffa04740:	ff e3 ee e9 	CALL 0xffa01b1c <_printf_ip>;
ffa04744:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900518(-7338728) */
ffa04748:	00 e1 3c 05 	R0.L = 0x53c;		/* (1340)	R0=0xff90053c(-7338692) */
ffa0474c:	ff e3 cc e7 	CALL 0xffa016e4 <_printf_str>;
ffa04750:	c0 b9       	R0 = [FP -0x10];
ffa04752:	08 30       	R1 = R0;
ffa04754:	c1 64       	R1 += 0x18;		/* ( 24) */
ffa04756:	f0 b9       	R0 = [FP -0x4];
ffa04758:	00 e3 6c 01 	CALL 0xffa04a30 <_ARP_lut_add>;
ffa0475c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0475e:	b0 bb       	[FP -0x14] = R0;
ffa04760:	02 21       	JUMP.S 0xffa04964 <_ARP_rx+0x37c>;
ffa04762:	ca b9       	P2 = [FP -0x10];
ffa04764:	17 aa       	R7 = W[P2 + 0x10] (X);
ffa04766:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04768:	ff e3 d8 f5 	CALL 0xffa03318 <_htons>;
ffa0476c:	f9 42       	R1 = R7.L (Z);
ffa0476e:	c0 42       	R0 = R0.L (Z);
ffa04770:	01 08       	CC = R1 == R0;
ffa04772:	f7 10       	IF !CC JUMP 0xffa04960 <_ARP_rx+0x378>;
ffa04774:	00 00       	NOP;
ffa04776:	00 00       	NOP;
ffa04778:	ca b9       	P2 = [FP -0x10];
ffa0477a:	57 aa       	R7 = W[P2 + 0x12] (X);
ffa0477c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa04780:	ff e3 cc f5 	CALL 0xffa03318 <_htons>;
ffa04784:	f9 42       	R1 = R7.L (Z);
ffa04786:	c0 42       	R0 = R0.L (Z);
ffa04788:	01 08       	CC = R1 == R0;
ffa0478a:	eb 10       	IF !CC JUMP 0xffa04960 <_ARP_rx+0x378>;
ffa0478c:	00 00       	NOP;
ffa0478e:	00 00       	NOP;
ffa04790:	ca b9       	P2 = [FP -0x10];
ffa04792:	90 e5 14 00 	R0 = B[P2 + 0x14] (X);
ffa04796:	40 43       	R0 = R0.B (Z);
ffa04798:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa0479a:	08 08       	CC = R0 == R1;
ffa0479c:	e2 10       	IF !CC JUMP 0xffa04960 <_ARP_rx+0x378>;
ffa0479e:	00 00       	NOP;
ffa047a0:	00 00       	NOP;
ffa047a2:	ca b9       	P2 = [FP -0x10];
ffa047a4:	90 e5 15 00 	R0 = B[P2 + 0x15] (X);
ffa047a8:	40 43       	R0 = R0.B (Z);
ffa047aa:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa047ac:	08 08       	CC = R0 == R1;
ffa047ae:	d9 10       	IF !CC JUMP 0xffa04960 <_ARP_rx+0x378>;
ffa047b0:	00 00       	NOP;
ffa047b2:	00 00       	NOP;
ffa047b4:	ca b9       	P2 = [FP -0x10];
ffa047b6:	d7 aa       	R7 = W[P2 + 0x16] (X);
ffa047b8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa047ba:	ff e3 af f5 	CALL 0xffa03318 <_htons>;
ffa047be:	f9 42       	R1 = R7.L (Z);
ffa047c0:	c0 42       	R0 = R0.L (Z);
ffa047c2:	01 08       	CC = R1 == R0;
ffa047c4:	ce 10       	IF !CC JUMP 0xffa04960 <_ARP_rx+0x378>;
ffa047c6:	00 00       	NOP;
ffa047c8:	00 00       	NOP;
ffa047ca:	ca b9       	P2 = [FP -0x10];
ffa047cc:	91 a2       	R1 = [P2 + 0x28];
ffa047ce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f08 <_NetOurMAC> */
ffa047d2:	0a e1 14 0f 	P2.L = 0xf14;		/* (3860)	P2=0xff900f14 <_NetOurIP> */
ffa047d6:	10 91       	R0 = [P2];
ffa047d8:	01 08       	CC = R1 == R0;
ffa047da:	c3 10       	IF !CC JUMP 0xffa04960 <_ARP_rx+0x378>;
ffa047dc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f14 <_NetOurIP> */
ffa047e0:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa047e4:	50 95       	R0 = W[P2] (X);
ffa047e6:	c0 42       	R0 = R0.L (Z);
ffa047e8:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900004(-7340028) */
ffa047ec:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa047f0:	10 4f       	R0 <<= 0x2;
ffa047f2:	08 50       	R0 = R0 + R1;
ffa047f4:	10 32       	P2 = R0;
ffa047f6:	52 91       	P2 = [P2];
ffa047f8:	90 a1       	R0 = [P2 + 0x18];
ffa047fa:	d0 bb       	[FP -0xc] = R0;
ffa047fc:	da b9       	P2 = [FP -0xc];
ffa047fe:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa04800:	10 97       	W[P2] = R0;
ffa04802:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04804:	e0 bb       	[FP -0x8] = R0;
ffa04806:	10 20       	JUMP.S 0xffa04826 <_ARP_rx+0x23e>;
ffa04808:	e2 b9       	R2 = [FP -0x8];
ffa0480a:	e1 b9       	R1 = [FP -0x8];
ffa0480c:	c0 b9       	R0 = [FP -0x10];
ffa0480e:	01 50       	R0 = R1 + R0;
ffa04810:	10 32       	P2 = R0;
ffa04812:	42 6c       	P2 += 0x8;		/* (  8) */
ffa04814:	51 99       	R1 = B[P2] (X);
ffa04816:	d0 b9       	R0 = [FP -0xc];
ffa04818:	10 50       	R0 = R0 + R2;
ffa0481a:	10 32       	P2 = R0;
ffa0481c:	91 e6 02 00 	B[P2 + 0x2] = R1;
ffa04820:	e0 b9       	R0 = [FP -0x8];
ffa04822:	08 64       	R0 += 0x1;		/* (  1) */
ffa04824:	e0 bb       	[FP -0x8] = R0;
ffa04826:	e0 b9       	R0 = [FP -0x8];
ffa04828:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0482a:	08 09       	CC = R0 <= R1;
ffa0482c:	ee 1b       	IF CC JUMP 0xffa04808 <_ARP_rx+0x220>;
ffa0482e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04830:	e0 bb       	[FP -0x8] = R0;
ffa04832:	12 20       	JUMP.S 0xffa04856 <_ARP_rx+0x26e>;
ffa04834:	e2 b9       	R2 = [FP -0x8];
ffa04836:	e1 b9       	R1 = [FP -0x8];
ffa04838:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0483c:	00 e1 08 0f 	R0.L = 0xf08;		/* (3848)	R0=0xff900f08 <_NetOurMAC>(-7336184) */
ffa04840:	08 50       	R0 = R0 + R1;
ffa04842:	10 32       	P2 = R0;
ffa04844:	51 99       	R1 = B[P2] (X);
ffa04846:	d0 b9       	R0 = [FP -0xc];
ffa04848:	02 50       	R0 = R2 + R0;
ffa0484a:	10 32       	P2 = R0;
ffa0484c:	42 6c       	P2 += 0x8;		/* (  8) */
ffa0484e:	11 9b       	B[P2] = R1;
ffa04850:	e0 b9       	R0 = [FP -0x8];
ffa04852:	08 64       	R0 += 0x1;		/* (  1) */
ffa04854:	e0 bb       	[FP -0x8] = R0;
ffa04856:	e0 b9       	R0 = [FP -0x8];
ffa04858:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0485a:	08 09       	CC = R0 <= R1;
ffa0485c:	ec 1b       	IF CC JUMP 0xffa04834 <_ARP_rx+0x24c>;
ffa0485e:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa04862:	ff e3 5b f5 	CALL 0xffa03318 <_htons>;
ffa04866:	da b9       	P2 = [FP -0xc];
ffa04868:	d0 b5       	W[P2 + 0xe] = R0;
ffa0486a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0486c:	ff e3 56 f5 	CALL 0xffa03318 <_htons>;
ffa04870:	da b9       	P2 = [FP -0xc];
ffa04872:	10 b6       	W[P2 + 0x10] = R0;
ffa04874:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa04878:	ff e3 50 f5 	CALL 0xffa03318 <_htons>;
ffa0487c:	da b9       	P2 = [FP -0xc];
ffa0487e:	50 b6       	W[P2 + 0x12] = R0;
ffa04880:	da b9       	P2 = [FP -0xc];
ffa04882:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa04884:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa04888:	da b9       	P2 = [FP -0xc];
ffa0488a:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0488c:	90 e6 15 00 	B[P2 + 0x15] = R0;
ffa04890:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa04892:	ff e3 43 f5 	CALL 0xffa03318 <_htons>;
ffa04896:	da b9       	P2 = [FP -0xc];
ffa04898:	d0 b6       	W[P2 + 0x16] = R0;
ffa0489a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0489c:	e0 bb       	[FP -0x8] = R0;
ffa0489e:	1f 20       	JUMP.S 0xffa048dc <_ARP_rx+0x2f4>;
ffa048a0:	e2 b9       	R2 = [FP -0x8];
ffa048a2:	e1 b9       	R1 = [FP -0x8];
ffa048a4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa048a8:	00 e1 08 0f 	R0.L = 0xf08;		/* (3848)	R0=0xff900f08 <_NetOurMAC>(-7336184) */
ffa048ac:	08 50       	R0 = R0 + R1;
ffa048ae:	10 32       	P2 = R0;
ffa048b0:	51 99       	R1 = B[P2] (X);
ffa048b2:	d0 b9       	R0 = [FP -0xc];
ffa048b4:	02 50       	R0 = R2 + R0;
ffa048b6:	10 32       	P2 = R0;
ffa048b8:	c2 6c       	P2 += 0x18;		/* ( 24) */
ffa048ba:	11 9b       	B[P2] = R1;
ffa048bc:	e2 b9       	R2 = [FP -0x8];
ffa048be:	e1 b9       	R1 = [FP -0x8];
ffa048c0:	c0 b9       	R0 = [FP -0x10];
ffa048c2:	01 50       	R0 = R1 + R0;
ffa048c4:	10 32       	P2 = R0;
ffa048c6:	c2 6c       	P2 += 0x18;		/* ( 24) */
ffa048c8:	51 99       	R1 = B[P2] (X);
ffa048ca:	d0 b9       	R0 = [FP -0xc];
ffa048cc:	02 50       	R0 = R2 + R0;
ffa048ce:	10 32       	P2 = R0;
ffa048d0:	02 6d       	P2 += 0x20;		/* ( 32) */
ffa048d2:	91 e6 02 00 	B[P2 + 0x2] = R1;
ffa048d6:	e0 b9       	R0 = [FP -0x8];
ffa048d8:	08 64       	R0 += 0x1;		/* (  1) */
ffa048da:	e0 bb       	[FP -0x8] = R0;
ffa048dc:	e0 b9       	R0 = [FP -0x8];
ffa048de:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa048e0:	08 09       	CC = R0 <= R1;
ffa048e2:	df 1b       	IF CC JUMP 0xffa048a0 <_ARP_rx+0x2b8>;
ffa048e4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa048e8:	0a e1 14 0f 	P2.L = 0xf14;		/* (3860)	P2=0xff900f14 <_NetOurIP> */
ffa048ec:	10 91       	R0 = [P2];
ffa048ee:	da b9       	P2 = [FP -0xc];
ffa048f0:	90 e6 1e 00 	B[P2 + 0x1e] = R0;
ffa048f4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f14 <_NetOurIP> */
ffa048f8:	0a e1 14 0f 	P2.L = 0xf14;		/* (3860)	P2=0xff900f14 <_NetOurIP> */
ffa048fc:	10 91       	R0 = [P2];
ffa048fe:	40 4e       	R0 >>= 0x8;
ffa04900:	da b9       	P2 = [FP -0xc];
ffa04902:	90 e6 1f 00 	B[P2 + 0x1f] = R0;
ffa04906:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f14 <_NetOurIP> */
ffa0490a:	0a e1 14 0f 	P2.L = 0xf14;		/* (3860)	P2=0xff900f14 <_NetOurIP> */
ffa0490e:	10 91       	R0 = [P2];
ffa04910:	80 4e       	R0 >>= 0x10;
ffa04912:	da b9       	P2 = [FP -0xc];
ffa04914:	90 e6 20 00 	B[P2 + 0x20] = R0;
ffa04918:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f14 <_NetOurIP> */
ffa0491c:	0a e1 14 0f 	P2.L = 0xf14;		/* (3860)	P2=0xff900f14 <_NetOurIP> */
ffa04920:	10 91       	R0 = [P2];
ffa04922:	c0 4e       	R0 >>= 0x18;
ffa04924:	da b9       	P2 = [FP -0xc];
ffa04926:	90 e6 21 00 	B[P2 + 0x21] = R0;
ffa0492a:	ca b9       	P2 = [FP -0x10];
ffa0492c:	90 e5 1e 00 	R0 = B[P2 + 0x1e] (X);
ffa04930:	43 43       	R3 = R0.B (Z);
ffa04932:	ca b9       	P2 = [FP -0x10];
ffa04934:	90 e5 1f 00 	R0 = B[P2 + 0x1f] (X);
ffa04938:	41 43       	R1 = R0.B (Z);
ffa0493a:	ca b9       	P2 = [FP -0x10];
ffa0493c:	90 e5 20 00 	R0 = B[P2 + 0x20] (X);
ffa04940:	42 43       	R2 = R0.B (Z);
ffa04942:	ca b9       	P2 = [FP -0x10];
ffa04944:	90 e5 21 00 	R0 = B[P2 + 0x21] (X);
ffa04948:	40 43       	R0 = R0.B (Z);
ffa0494a:	f0 b0       	[SP + 0xc] = R0;
ffa0494c:	03 30       	R0 = R3;
ffa0494e:	ff e3 d3 ef 	CALL 0xffa028f4 <_FormatIPAddress>;
ffa04952:	da b9       	P2 = [FP -0xc];
ffa04954:	90 b2       	[P2 + 0x28] = R0;
ffa04956:	ff e3 79 ed 	CALL 0xffa02448 <_bfin_EMAC_send_nocopy>;
ffa0495a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0495c:	b0 bb       	[FP -0x14] = R0;
ffa0495e:	03 20       	JUMP.S 0xffa04964 <_ARP_rx+0x37c>;
ffa04960:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa04962:	b1 bb       	[FP -0x14] = R1;
ffa04964:	b0 b9       	R0 = [FP -0x14];
ffa04966:	01 e8 00 00 	UNLINK;
ffa0496a:	38 05       	(R7:7) = [SP++];
ffa0496c:	10 00       	RTS;
	...

ffa04970 <_ARP_lut_find>:
ffa04970:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa04974:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04976:	d0 bb       	[FP -0xc] = R0;
ffa04978:	12 20       	JUMP.S 0xffa0499c <_ARP_lut_find+0x2c>;
ffa0497a:	d1 b9       	R1 = [FP -0xc];
ffa0497c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04980:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04984:	01 30       	R0 = R1;
ffa04986:	10 4f       	R0 <<= 0x2;
ffa04988:	08 50       	R0 = R0 + R1;
ffa0498a:	10 4f       	R0 <<= 0x2;
ffa0498c:	10 50       	R0 = R0 + R2;
ffa0498e:	10 32       	P2 = R0;
ffa04990:	10 91       	R0 = [P2];
ffa04992:	00 0c       	CC = R0 == 0x0;
ffa04994:	08 18       	IF CC JUMP 0xffa049a4 <_ARP_lut_find+0x34>;
ffa04996:	d0 b9       	R0 = [FP -0xc];
ffa04998:	08 64       	R0 += 0x1;		/* (  1) */
ffa0499a:	d0 bb       	[FP -0xc] = R0;
ffa0499c:	d0 b9       	R0 = [FP -0xc];
ffa0499e:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa049a0:	08 09       	CC = R0 <= R1;
ffa049a2:	ec 1b       	IF CC JUMP 0xffa0497a <_ARP_lut_find+0xa>;
ffa049a4:	d0 b9       	R0 = [FP -0xc];
ffa049a6:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa049a8:	08 08       	CC = R0 == R1;
ffa049aa:	3e 10       	IF !CC JUMP 0xffa04a26 <_ARP_lut_find+0xb6>;
ffa049ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa049ae:	d0 bb       	[FP -0xc] = R0;
ffa049b0:	d1 b9       	R1 = [FP -0xc];
ffa049b2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa049b6:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa049ba:	01 30       	R0 = R1;
ffa049bc:	10 4f       	R0 <<= 0x2;
ffa049be:	08 50       	R0 = R0 + R1;
ffa049c0:	10 4f       	R0 <<= 0x2;
ffa049c2:	10 50       	R0 = R0 + R2;
ffa049c4:	10 32       	P2 = R0;
ffa049c6:	42 6c       	P2 += 0x8;		/* (  8) */
ffa049c8:	50 a8       	R0 = W[P2 + 0x2] (X);
ffa049ca:	c0 42       	R0 = R0.L (Z);
ffa049cc:	f0 bb       	[FP -0x4] = R0;
ffa049ce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa049d0:	e0 bb       	[FP -0x8] = R0;
ffa049d2:	26 20       	JUMP.S 0xffa04a1e <_ARP_lut_find+0xae>;
ffa049d4:	e1 b9       	R1 = [FP -0x8];
ffa049d6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa049da:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa049de:	01 30       	R0 = R1;
ffa049e0:	10 4f       	R0 <<= 0x2;
ffa049e2:	08 50       	R0 = R0 + R1;
ffa049e4:	10 4f       	R0 <<= 0x2;
ffa049e6:	10 50       	R0 = R0 + R2;
ffa049e8:	10 32       	P2 = R0;
ffa049ea:	42 6c       	P2 += 0x8;		/* (  8) */
ffa049ec:	50 a8       	R0 = W[P2 + 0x2] (X);
ffa049ee:	c1 42       	R1 = R0.L (Z);
ffa049f0:	f0 b9       	R0 = [FP -0x4];
ffa049f2:	81 08       	CC = R1 < R0;
ffa049f4:	12 10       	IF !CC JUMP 0xffa04a18 <_ARP_lut_find+0xa8>;
ffa049f6:	e0 b9       	R0 = [FP -0x8];
ffa049f8:	d0 bb       	[FP -0xc] = R0;
ffa049fa:	e1 b9       	R1 = [FP -0x8];
ffa049fc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04a00:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04a04:	01 30       	R0 = R1;
ffa04a06:	10 4f       	R0 <<= 0x2;
ffa04a08:	08 50       	R0 = R0 + R1;
ffa04a0a:	10 4f       	R0 <<= 0x2;
ffa04a0c:	10 50       	R0 = R0 + R2;
ffa04a0e:	10 32       	P2 = R0;
ffa04a10:	42 6c       	P2 += 0x8;		/* (  8) */
ffa04a12:	50 a8       	R0 = W[P2 + 0x2] (X);
ffa04a14:	c0 42       	R0 = R0.L (Z);
ffa04a16:	f0 bb       	[FP -0x4] = R0;
ffa04a18:	e0 b9       	R0 = [FP -0x8];
ffa04a1a:	08 64       	R0 += 0x1;		/* (  1) */
ffa04a1c:	e0 bb       	[FP -0x8] = R0;
ffa04a1e:	e0 b9       	R0 = [FP -0x8];
ffa04a20:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa04a22:	08 09       	CC = R0 <= R1;
ffa04a24:	d8 1b       	IF CC JUMP 0xffa049d4 <_ARP_lut_find+0x64>;
ffa04a26:	d0 b9       	R0 = [FP -0xc];
ffa04a28:	01 e8 00 00 	UNLINK;
ffa04a2c:	10 00       	RTS;
	...

ffa04a30 <_ARP_lut_add>:
ffa04a30:	78 05       	[--SP] = (R7:7);
ffa04a32:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa04a36:	f8 b0       	[FP + 0xc] = R0;
ffa04a38:	39 b1       	[FP + 0x10] = R1;
ffa04a3a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa04a3c:	f0 bb       	[FP -0x4] = R0;
ffa04a3e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04a40:	d0 bb       	[FP -0xc] = R0;
ffa04a42:	15 20       	JUMP.S 0xffa04a6c <_ARP_lut_add+0x3c>;
ffa04a44:	d1 b9       	R1 = [FP -0xc];
ffa04a46:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04a4a:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04a4e:	01 30       	R0 = R1;
ffa04a50:	10 4f       	R0 <<= 0x2;
ffa04a52:	08 50       	R0 = R0 + R1;
ffa04a54:	10 4f       	R0 <<= 0x2;
ffa04a56:	10 50       	R0 = R0 + R2;
ffa04a58:	10 32       	P2 = R0;
ffa04a5a:	11 91       	R1 = [P2];
ffa04a5c:	f8 a0       	R0 = [FP + 0xc];
ffa04a5e:	01 08       	CC = R1 == R0;
ffa04a60:	03 10       	IF !CC JUMP 0xffa04a66 <_ARP_lut_add+0x36>;
ffa04a62:	d0 b9       	R0 = [FP -0xc];
ffa04a64:	f0 bb       	[FP -0x4] = R0;
ffa04a66:	d0 b9       	R0 = [FP -0xc];
ffa04a68:	08 64       	R0 += 0x1;		/* (  1) */
ffa04a6a:	d0 bb       	[FP -0xc] = R0;
ffa04a6c:	d0 b9       	R0 = [FP -0xc];
ffa04a6e:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa04a70:	08 09       	CC = R0 <= R1;
ffa04a72:	04 10       	IF !CC JUMP 0xffa04a7a <_ARP_lut_add+0x4a>;
ffa04a74:	f0 b9       	R0 = [FP -0x4];
ffa04a76:	80 0c       	CC = R0 < 0x0;
ffa04a78:	e6 1b       	IF CC JUMP 0xffa04a44 <_ARP_lut_add+0x14>;
ffa04a7a:	f0 b9       	R0 = [FP -0x4];
ffa04a7c:	80 0c       	CC = R0 < 0x0;
ffa04a7e:	04 10       	IF !CC JUMP 0xffa04a86 <_ARP_lut_add+0x56>;
ffa04a80:	ff e3 78 ff 	CALL 0xffa04970 <_ARP_lut_find>;
ffa04a84:	f0 bb       	[FP -0x4] = R0;
ffa04a86:	f1 b9       	R1 = [FP -0x4];
ffa04a88:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04a8c:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04a90:	01 30       	R0 = R1;
ffa04a92:	10 4f       	R0 <<= 0x2;
ffa04a94:	08 50       	R0 = R0 + R1;
ffa04a96:	10 4f       	R0 <<= 0x2;
ffa04a98:	10 50       	R0 = R0 + R2;
ffa04a9a:	10 32       	P2 = R0;
ffa04a9c:	f8 a0       	R0 = [FP + 0xc];
ffa04a9e:	10 93       	[P2] = R0;
ffa04aa0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04aa2:	e0 bb       	[FP -0x8] = R0;
ffa04aa4:	19 20       	JUMP.S 0xffa04ad6 <_ARP_lut_add+0xa6>;
ffa04aa6:	f2 b9       	R2 = [FP -0x4];
ffa04aa8:	e7 b9       	R7 = [FP -0x8];
ffa04aaa:	e0 b9       	R0 = [FP -0x8];
ffa04aac:	08 30       	R1 = R0;
ffa04aae:	38 a1       	R0 = [FP + 0x10];
ffa04ab0:	41 50       	R1 = R1 + R0;
ffa04ab2:	11 32       	P2 = R1;
ffa04ab4:	53 99       	R3 = B[P2] (X);
ffa04ab6:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900009(-7340023) */
ffa04aba:	01 e1 20 0f 	R1.L = 0xf20;		/* (3872)	R1=0xff900f20 <_NetArpLut>(-7336160) */
ffa04abe:	02 30       	R0 = R2;
ffa04ac0:	10 4f       	R0 <<= 0x2;
ffa04ac2:	10 50       	R0 = R0 + R2;
ffa04ac4:	10 4f       	R0 <<= 0x2;
ffa04ac6:	08 50       	R0 = R0 + R1;
ffa04ac8:	38 50       	R0 = R0 + R7;
ffa04aca:	10 32       	P2 = R0;
ffa04acc:	22 6c       	P2 += 0x4;		/* (  4) */
ffa04ace:	13 9b       	B[P2] = R3;
ffa04ad0:	e0 b9       	R0 = [FP -0x8];
ffa04ad2:	08 64       	R0 += 0x1;		/* (  1) */
ffa04ad4:	e0 bb       	[FP -0x8] = R0;
ffa04ad6:	e0 b9       	R0 = [FP -0x8];
ffa04ad8:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa04ada:	08 09       	CC = R0 <= R1;
ffa04adc:	e5 1b       	IF CC JUMP 0xffa04aa6 <_ARP_lut_add+0x76>;
ffa04ade:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f14 <_NetOurIP> */
ffa04ae2:	0a e1 1c 0f 	P2.L = 0xf1c;		/* (3868)	P2=0xff900f1c <_NetArpLut_age> */
ffa04ae6:	50 95       	R0 = W[P2] (X);
ffa04ae8:	08 64       	R0 += 0x1;		/* (  1) */
ffa04aea:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f1c <_NetArpLut_age> */
ffa04aee:	0a e1 1c 0f 	P2.L = 0xf1c;		/* (3868)	P2=0xff900f1c <_NetArpLut_age> */
ffa04af2:	10 97       	W[P2] = R0;
ffa04af4:	f1 b9       	R1 = [FP -0x4];
ffa04af6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f1c <_NetArpLut_age> */
ffa04afa:	0a e1 1c 0f 	P2.L = 0xf1c;		/* (3868)	P2=0xff900f1c <_NetArpLut_age> */
ffa04afe:	53 95       	R3 = W[P2] (X);
ffa04b00:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04b04:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04b08:	01 30       	R0 = R1;
ffa04b0a:	10 4f       	R0 <<= 0x2;
ffa04b0c:	08 50       	R0 = R0 + R1;
ffa04b0e:	10 4f       	R0 <<= 0x2;
ffa04b10:	10 50       	R0 = R0 + R2;
ffa04b12:	10 32       	P2 = R0;
ffa04b14:	42 6c       	P2 += 0x8;		/* (  8) */
ffa04b16:	53 b4       	W[P2 + 0x2] = R3;
ffa04b18:	f1 b9       	R1 = [FP -0x4];
ffa04b1a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04b1e:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04b22:	01 30       	R0 = R1;
ffa04b24:	10 4f       	R0 <<= 0x2;
ffa04b26:	08 50       	R0 = R0 + R1;
ffa04b28:	10 4f       	R0 <<= 0x2;
ffa04b2a:	10 50       	R0 = R0 + R2;
ffa04b2c:	10 32       	P2 = R0;
ffa04b2e:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa04b30:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04b32:	10 93       	[P2] = R0;
ffa04b34:	01 e8 00 00 	UNLINK;
ffa04b38:	38 05       	(R7:7) = [SP++];
ffa04b3a:	10 00       	RTS;

ffa04b3c <_ARP_lu>:
ffa04b3c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa04b40:	b8 b0       	[FP + 0x8] = R0;
ffa04b42:	f9 b0       	[FP + 0xc] = R1;
ffa04b44:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04b46:	e0 bb       	[FP -0x8] = R0;
ffa04b48:	46 20       	JUMP.S 0xffa04bd4 <_ARP_lu+0x98>;
ffa04b4a:	e1 b9       	R1 = [FP -0x8];
ffa04b4c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04b50:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04b54:	01 30       	R0 = R1;
ffa04b56:	10 4f       	R0 <<= 0x2;
ffa04b58:	08 50       	R0 = R0 + R1;
ffa04b5a:	10 4f       	R0 <<= 0x2;
ffa04b5c:	10 50       	R0 = R0 + R2;
ffa04b5e:	10 32       	P2 = R0;
ffa04b60:	11 91       	R1 = [P2];
ffa04b62:	b8 a0       	R0 = [FP + 0x8];
ffa04b64:	01 08       	CC = R1 == R0;
ffa04b66:	34 10       	IF !CC JUMP 0xffa04bce <_ARP_lu+0x92>;
ffa04b68:	e1 b9       	R1 = [FP -0x8];
ffa04b6a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04b6e:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04b72:	01 30       	R0 = R1;
ffa04b74:	10 4f       	R0 <<= 0x2;
ffa04b76:	08 50       	R0 = R0 + R1;
ffa04b78:	10 4f       	R0 <<= 0x2;
ffa04b7a:	10 50       	R0 = R0 + R2;
ffa04b7c:	10 32       	P2 = R0;
ffa04b7e:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa04b80:	10 91       	R0 = [P2];
ffa04b82:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa04b84:	00 02       	R0 = CC;
ffa04b86:	40 43       	R0 = R0.B (Z);
ffa04b88:	00 0c       	CC = R0 == 0x0;
ffa04b8a:	22 18       	IF CC JUMP 0xffa04bce <_ARP_lu+0x92>;
ffa04b8c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04b8e:	f0 bb       	[FP -0x4] = R0;
ffa04b90:	18 20       	JUMP.S 0xffa04bc0 <_ARP_lu+0x84>;
ffa04b92:	e1 b9       	R1 = [FP -0x8];
ffa04b94:	f3 b9       	R3 = [FP -0x4];
ffa04b96:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04b9a:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04b9e:	01 30       	R0 = R1;
ffa04ba0:	10 4f       	R0 <<= 0x2;
ffa04ba2:	08 50       	R0 = R0 + R1;
ffa04ba4:	10 4f       	R0 <<= 0x2;
ffa04ba6:	10 50       	R0 = R0 + R2;
ffa04ba8:	18 50       	R0 = R0 + R3;
ffa04baa:	10 32       	P2 = R0;
ffa04bac:	22 6c       	P2 += 0x4;		/* (  4) */
ffa04bae:	50 99       	R0 = B[P2] (X);
ffa04bb0:	fa ac       	P2 = [FP + 0xc];
ffa04bb2:	10 9b       	B[P2] = R0;
ffa04bb4:	f8 a0       	R0 = [FP + 0xc];
ffa04bb6:	08 64       	R0 += 0x1;		/* (  1) */
ffa04bb8:	f8 b0       	[FP + 0xc] = R0;
ffa04bba:	f0 b9       	R0 = [FP -0x4];
ffa04bbc:	08 64       	R0 += 0x1;		/* (  1) */
ffa04bbe:	f0 bb       	[FP -0x4] = R0;
ffa04bc0:	f0 b9       	R0 = [FP -0x4];
ffa04bc2:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa04bc4:	08 09       	CC = R0 <= R1;
ffa04bc6:	e6 1b       	IF CC JUMP 0xffa04b92 <_ARP_lu+0x56>;
ffa04bc8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04bca:	d0 bb       	[FP -0xc] = R0;
ffa04bcc:	0a 20       	JUMP.S 0xffa04be0 <_ARP_lu+0xa4>;
ffa04bce:	e0 b9       	R0 = [FP -0x8];
ffa04bd0:	08 64       	R0 += 0x1;		/* (  1) */
ffa04bd2:	e0 bb       	[FP -0x8] = R0;
ffa04bd4:	e0 b9       	R0 = [FP -0x8];
ffa04bd6:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa04bd8:	08 09       	CC = R0 <= R1;
ffa04bda:	b8 1b       	IF CC JUMP 0xffa04b4a <_ARP_lu+0xe>;
ffa04bdc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04bde:	d0 bb       	[FP -0xc] = R0;
ffa04be0:	d0 b9       	R0 = [FP -0xc];
ffa04be2:	01 e8 00 00 	UNLINK;
ffa04be6:	10 00       	RTS;

ffa04be8 <_ARP_req>:
ffa04be8:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa04bec:	b8 b0       	[FP + 0x8] = R0;
ffa04bee:	f9 b0       	[FP + 0xc] = R1;
ffa04bf0:	f9 a0       	R1 = [FP + 0xc];
ffa04bf2:	b8 a0       	R0 = [FP + 0x8];
ffa04bf4:	ff e3 a4 ff 	CALL 0xffa04b3c <_ARP_lu>;
ffa04bf8:	00 0c       	CC = R0 == 0x0;
ffa04bfa:	04 18       	IF CC JUMP 0xffa04c02 <_ARP_req+0x1a>;
ffa04bfc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04bfe:	d0 bb       	[FP -0xc] = R0;
ffa04c00:	b9 20       	JUMP.S 0xffa04d72 <_ARP_req+0x18a>;
ffa04c02:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800f1c */
ffa04c06:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa04c0a:	10 91       	R0 = [P2];
ffa04c0c:	f0 bb       	[FP -0x4] = R0;
ffa04c0e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04c10:	e0 bb       	[FP -0x8] = R0;
ffa04c12:	5b 20       	JUMP.S 0xffa04cc8 <_ARP_req+0xe0>;
ffa04c14:	e1 b9       	R1 = [FP -0x8];
ffa04c16:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04c1a:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04c1e:	01 30       	R0 = R1;
ffa04c20:	10 4f       	R0 <<= 0x2;
ffa04c22:	08 50       	R0 = R0 + R1;
ffa04c24:	10 4f       	R0 <<= 0x2;
ffa04c26:	10 50       	R0 = R0 + R2;
ffa04c28:	10 32       	P2 = R0;
ffa04c2a:	11 91       	R1 = [P2];
ffa04c2c:	b8 a0       	R0 = [FP + 0x8];
ffa04c2e:	01 08       	CC = R1 == R0;
ffa04c30:	49 10       	IF !CC JUMP 0xffa04cc2 <_ARP_req+0xda>;
ffa04c32:	e1 b9       	R1 = [FP -0x8];
ffa04c34:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04c38:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04c3c:	01 30       	R0 = R1;
ffa04c3e:	10 4f       	R0 <<= 0x2;
ffa04c40:	08 50       	R0 = R0 + R1;
ffa04c42:	10 4f       	R0 <<= 0x2;
ffa04c44:	10 50       	R0 = R0 + R2;
ffa04c46:	10 32       	P2 = R0;
ffa04c48:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa04c4a:	11 91       	R1 = [P2];
ffa04c4c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa04c4e:	01 54       	R0 = R1 & R0;
ffa04c50:	00 0c       	CC = R0 == 0x0;
ffa04c52:	38 18       	IF CC JUMP 0xffa04cc2 <_ARP_req+0xda>;
ffa04c54:	e1 b9       	R1 = [FP -0x8];
ffa04c56:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04c5a:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04c5e:	01 30       	R0 = R1;
ffa04c60:	10 4f       	R0 <<= 0x2;
ffa04c62:	08 50       	R0 = R0 + R1;
ffa04c64:	10 4f       	R0 <<= 0x2;
ffa04c66:	10 50       	R0 = R0 + R2;
ffa04c68:	10 32       	P2 = R0;
ffa04c6a:	62 6c       	P2 += 0xc;		/* ( 12) */
ffa04c6c:	11 91       	R1 = [P2];
ffa04c6e:	f0 b9       	R0 = [FP -0x4];
ffa04c70:	01 0a       	CC = R1 <= R0 (IU);
ffa04c72:	04 18       	IF CC JUMP 0xffa04c7a <_ARP_req+0x92>;
ffa04c74:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa04c76:	d1 bb       	[FP -0xc] = R1;
ffa04c78:	7d 20       	JUMP.S 0xffa04d72 <_ARP_req+0x18a>;
ffa04c7a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa04c7e:	00 e1 40 05 	R0.L = 0x540;		/* (1344)	R0=0xff900540(-7338688) */
ffa04c82:	b9 a0       	R1 = [FP + 0x8];
ffa04c84:	ff e3 4c e7 	CALL 0xffa01b1c <_printf_ip>;
ffa04c88:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900540(-7338688) */
ffa04c8c:	00 e1 3c 05 	R0.L = 0x53c;		/* (1340)	R0=0xff90053c(-7338692) */
ffa04c90:	ff e3 2a e5 	CALL 0xffa016e4 <_printf_str>;
ffa04c94:	b8 a0       	R0 = [FP + 0x8];
ffa04c96:	ff e3 01 fc 	CALL 0xffa04498 <_ARP_tx>;
ffa04c9a:	e2 b9       	R2 = [FP -0x8];
ffa04c9c:	f1 b9       	R1 = [FP -0x4];
ffa04c9e:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa04ca2:	c1 50       	R3 = R1 + R0;
ffa04ca4:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900000 <_l1_data_a>(-7340032) */
ffa04ca8:	01 e1 20 0f 	R1.L = 0xf20;		/* (3872)	R1=0xff900f20 <_NetArpLut>(-7336160) */
ffa04cac:	02 30       	R0 = R2;
ffa04cae:	10 4f       	R0 <<= 0x2;
ffa04cb0:	10 50       	R0 = R0 + R2;
ffa04cb2:	10 4f       	R0 <<= 0x2;
ffa04cb4:	08 50       	R0 = R0 + R1;
ffa04cb6:	10 32       	P2 = R0;
ffa04cb8:	62 6c       	P2 += 0xc;		/* ( 12) */
ffa04cba:	13 93       	[P2] = R3;
ffa04cbc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04cbe:	d0 bb       	[FP -0xc] = R0;
ffa04cc0:	59 20       	JUMP.S 0xffa04d72 <_ARP_req+0x18a>;
ffa04cc2:	e0 b9       	R0 = [FP -0x8];
ffa04cc4:	08 64       	R0 += 0x1;		/* (  1) */
ffa04cc6:	e0 bb       	[FP -0x8] = R0;
ffa04cc8:	e0 b9       	R0 = [FP -0x8];
ffa04cca:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa04ccc:	08 09       	CC = R0 <= R1;
ffa04cce:	a3 1b       	IF CC JUMP 0xffa04c14 <_ARP_req+0x2c>;
ffa04cd0:	ff e3 50 fe 	CALL 0xffa04970 <_ARP_lut_find>;
ffa04cd4:	e0 bb       	[FP -0x8] = R0;
ffa04cd6:	e1 b9       	R1 = [FP -0x8];
ffa04cd8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04cdc:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04ce0:	01 30       	R0 = R1;
ffa04ce2:	10 4f       	R0 <<= 0x2;
ffa04ce4:	08 50       	R0 = R0 + R1;
ffa04ce6:	10 4f       	R0 <<= 0x2;
ffa04ce8:	10 50       	R0 = R0 + R2;
ffa04cea:	10 32       	P2 = R0;
ffa04cec:	b8 a0       	R0 = [FP + 0x8];
ffa04cee:	10 93       	[P2] = R0;
ffa04cf0:	e1 b9       	R1 = [FP -0x8];
ffa04cf2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04cf6:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04cfa:	01 30       	R0 = R1;
ffa04cfc:	10 4f       	R0 <<= 0x2;
ffa04cfe:	08 50       	R0 = R0 + R1;
ffa04d00:	10 4f       	R0 <<= 0x2;
ffa04d02:	10 50       	R0 = R0 + R2;
ffa04d04:	10 32       	P2 = R0;
ffa04d06:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa04d08:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa04d0a:	10 93       	[P2] = R0;
ffa04d0c:	e2 b9       	R2 = [FP -0x8];
ffa04d0e:	f1 b9       	R1 = [FP -0x4];
ffa04d10:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa04d14:	c1 50       	R3 = R1 + R0;
ffa04d16:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900009(-7340023) */
ffa04d1a:	01 e1 20 0f 	R1.L = 0xf20;		/* (3872)	R1=0xff900f20 <_NetArpLut>(-7336160) */
ffa04d1e:	02 30       	R0 = R2;
ffa04d20:	10 4f       	R0 <<= 0x2;
ffa04d22:	10 50       	R0 = R0 + R2;
ffa04d24:	10 4f       	R0 <<= 0x2;
ffa04d26:	08 50       	R0 = R0 + R1;
ffa04d28:	10 32       	P2 = R0;
ffa04d2a:	62 6c       	P2 += 0xc;		/* ( 12) */
ffa04d2c:	13 93       	[P2] = R3;
ffa04d2e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900800 */
ffa04d32:	0a e1 1c 0f 	P2.L = 0xf1c;		/* (3868)	P2=0xff900f1c <_NetArpLut_age> */
ffa04d36:	50 95       	R0 = W[P2] (X);
ffa04d38:	08 64       	R0 += 0x1;		/* (  1) */
ffa04d3a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f1c <_NetArpLut_age> */
ffa04d3e:	0a e1 1c 0f 	P2.L = 0xf1c;		/* (3868)	P2=0xff900f1c <_NetArpLut_age> */
ffa04d42:	10 97       	W[P2] = R0;
ffa04d44:	e1 b9       	R1 = [FP -0x8];
ffa04d46:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f1c <_NetArpLut_age> */
ffa04d4a:	0a e1 1c 0f 	P2.L = 0xf1c;		/* (3868)	P2=0xff900f1c <_NetArpLut_age> */
ffa04d4e:	53 95       	R3 = W[P2] (X);
ffa04d50:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04d54:	02 e1 20 0f 	R2.L = 0xf20;		/* (3872)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa04d58:	01 30       	R0 = R1;
ffa04d5a:	10 4f       	R0 <<= 0x2;
ffa04d5c:	08 50       	R0 = R0 + R1;
ffa04d5e:	10 4f       	R0 <<= 0x2;
ffa04d60:	10 50       	R0 = R0 + R2;
ffa04d62:	10 32       	P2 = R0;
ffa04d64:	42 6c       	P2 += 0x8;		/* (  8) */
ffa04d66:	53 b4       	W[P2 + 0x2] = R3;
ffa04d68:	b8 a0       	R0 = [FP + 0x8];
ffa04d6a:	ff e3 97 fb 	CALL 0xffa04498 <_ARP_tx>;
ffa04d6e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04d70:	d0 bb       	[FP -0xc] = R0;
ffa04d72:	d0 b9       	R0 = [FP -0xc];
ffa04d74:	01 e8 00 00 	UNLINK;
ffa04d78:	10 00       	RTS;
	...

ffa04d7c <_tcp_packet_setup>:
ffa04d7c:	00 e8 09 00 	LINK 0x24;		/* (36) */
ffa04d80:	b8 b0       	[FP + 0x8] = R0;
ffa04d82:	f9 b0       	[FP + 0xc] = R1;
ffa04d84:	3a b1       	[FP + 0x10] = R2;
ffa04d86:	78 a1       	R0 = [FP + 0x14];
ffa04d88:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa04d8c:	b8 a0       	R0 = [FP + 0x8];
ffa04d8e:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa04d90:	e0 bb       	[FP -0x8] = R0;
ffa04d92:	47 30       	R0 = FP;
ffa04d94:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa04d96:	f9 a0       	R1 = [FP + 0xc];
ffa04d98:	3a a1       	R2 = [FP + 0x10];
ffa04d9a:	ff e3 35 f3 	CALL 0xffa03404 <_eth_header_setup>;
ffa04d9e:	f0 bb       	[FP -0x4] = R0;
ffa04da0:	fa ac       	P2 = [FP + 0xc];
ffa04da2:	50 99       	R0 = B[P2] (X);
ffa04da4:	00 43       	R0 = R0.B (X);
ffa04da6:	80 0c       	CC = R0 < 0x0;
ffa04da8:	04 10       	IF !CC JUMP 0xffa04db0 <_tcp_packet_setup+0x34>;
ffa04daa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04dac:	c0 bb       	[FP -0x10] = R0;
ffa04dae:	1d 20       	JUMP.S 0xffa04de8 <_tcp_packet_setup+0x6c>;
ffa04db0:	f1 b9       	R1 = [FP -0x4];
ffa04db2:	57 30       	R2 = FP;
ffa04db4:	c2 67       	R2 += -0x8;		/* ( -8) */
ffa04db6:	3b a1       	R3 = [FP + 0x10];
ffa04db8:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa04dba:	f0 b0       	[SP + 0xc] = R0;
ffa04dbc:	01 30       	R0 = R1;
ffa04dbe:	0a 30       	R1 = R2;
ffa04dc0:	13 30       	R2 = R3;
ffa04dc2:	ff e3 9d f3 	CALL 0xffa034fc <_ip_header_setup>;
ffa04dc6:	f0 bb       	[FP -0x4] = R0;
ffa04dc8:	ba e4 f4 ff 	R2 = B[FP + -0xc] (Z);
ffa04dcc:	f1 b9       	R1 = [FP -0x4];
ffa04dce:	5f 30       	R3 = FP;
ffa04dd0:	c3 67       	R3 += -0x8;		/* ( -8) */
ffa04dd2:	b8 a1       	R0 = [FP + 0x18];
ffa04dd4:	f0 b0       	[SP + 0xc] = R0;
ffa04dd6:	f8 a1       	R0 = [FP + 0x1c];
ffa04dd8:	30 b1       	[SP + 0x10] = R0;
ffa04dda:	01 30       	R0 = R1;
ffa04ddc:	0b 30       	R1 = R3;
ffa04dde:	ff e3 89 f4 	CALL 0xffa036f0 <_tcp_header_setup>;
ffa04de2:	f0 bb       	[FP -0x4] = R0;
ffa04de4:	f0 b9       	R0 = [FP -0x4];
ffa04de6:	c0 bb       	[FP -0x10] = R0;
ffa04de8:	c0 b9       	R0 = [FP -0x10];
ffa04dea:	01 e8 00 00 	UNLINK;
ffa04dee:	10 00       	RTS;

ffa04df0 <_tcp_checksum_calc>:
ffa04df0:	00 e8 09 00 	LINK 0x24;		/* (36) */
ffa04df4:	b8 b0       	[FP + 0x8] = R0;
ffa04df6:	f9 b0       	[FP + 0xc] = R1;
ffa04df8:	b8 a0       	R0 = [FP + 0x8];
ffa04dfa:	b0 bb       	[FP -0x14] = R0;
ffa04dfc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04dfe:	c0 bb       	[FP -0x10] = R0;
ffa04e00:	b0 b9       	R0 = [FP -0x14];
ffa04e02:	e0 64       	R0 += 0x1c;		/* ( 28) */
ffa04e04:	e0 bb       	[FP -0x8] = R0;
ffa04e06:	e0 b9       	R0 = [FP -0x8];
ffa04e08:	d0 bb       	[FP -0xc] = R0;
ffa04e0a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04e0c:	a0 bb       	[FP -0x18] = R0;
ffa04e0e:	0d 20       	JUMP.S 0xffa04e28 <_tcp_checksum_calc+0x38>;
ffa04e10:	da b9       	P2 = [FP -0xc];
ffa04e12:	50 95       	R0 = W[P2] (X);
ffa04e14:	c1 42       	R1 = R0.L (Z);
ffa04e16:	c0 b9       	R0 = [FP -0x10];
ffa04e18:	08 50       	R0 = R0 + R1;
ffa04e1a:	c0 bb       	[FP -0x10] = R0;
ffa04e1c:	d0 b9       	R0 = [FP -0xc];
ffa04e1e:	10 64       	R0 += 0x2;		/* (  2) */
ffa04e20:	d0 bb       	[FP -0xc] = R0;
ffa04e22:	a0 b9       	R0 = [FP -0x18];
ffa04e24:	08 64       	R0 += 0x1;		/* (  1) */
ffa04e26:	a0 bb       	[FP -0x18] = R0;
ffa04e28:	a0 b9       	R0 = [FP -0x18];
ffa04e2a:	18 0d       	CC = R0 <= 0x3;
ffa04e2c:	f2 1b       	IF CC JUMP 0xffa04e10 <_tcp_checksum_calc+0x20>;
ffa04e2e:	00 00       	NOP;
ffa04e30:	00 00       	NOP;
ffa04e32:	ba b9       	P2 = [FP -0x14];
ffa04e34:	90 e5 19 00 	R0 = B[P2 + 0x19] (X);
ffa04e38:	40 43       	R0 = R0.B (Z);
ffa04e3a:	40 4f       	R0 <<= 0x8;
ffa04e3c:	c1 42       	R1 = R0.L (Z);
ffa04e3e:	c0 b9       	R0 = [FP -0x10];
ffa04e40:	08 50       	R0 = R0 + R1;
ffa04e42:	c0 bb       	[FP -0x10] = R0;
ffa04e44:	ba b9       	P2 = [FP -0x14];
ffa04e46:	90 e5 30 00 	R0 = B[P2 + 0x30] (X);
ffa04e4a:	40 43       	R0 = R0.B (Z);
ffa04e4c:	10 4e       	R0 >>= 0x2;
ffa04e4e:	41 43       	R1 = R0.B (Z);
ffa04e50:	f8 a0       	R0 = [FP + 0xc];
ffa04e52:	01 50       	R0 = R1 + R0;
ffa04e54:	c0 42       	R0 = R0.L (Z);
ffa04e56:	ff e3 61 f2 	CALL 0xffa03318 <_htons>;
ffa04e5a:	c1 42       	R1 = R0.L (Z);
ffa04e5c:	c0 b9       	R0 = [FP -0x10];
ffa04e5e:	08 50       	R0 = R0 + R1;
ffa04e60:	c0 bb       	[FP -0x10] = R0;
ffa04e62:	f8 a0       	R0 = [FP + 0xc];
ffa04e64:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa04e66:	00 02       	R0 = CC;
ffa04e68:	40 43       	R0 = R0.B (Z);
ffa04e6a:	00 0c       	CC = R0 == 0x0;
ffa04e6c:	16 18       	IF CC JUMP 0xffa04e98 <_tcp_checksum_calc+0xa8>;
ffa04e6e:	b0 b9       	R0 = [FP -0x14];
ffa04e70:	20 65       	R0 += 0x24;		/* ( 36) */
ffa04e72:	f0 bb       	[FP -0x4] = R0;
ffa04e74:	ba b9       	P2 = [FP -0x14];
ffa04e76:	90 e5 30 00 	R0 = B[P2 + 0x30] (X);
ffa04e7a:	40 43       	R0 = R0.B (Z);
ffa04e7c:	10 4e       	R0 >>= 0x2;
ffa04e7e:	41 43       	R1 = R0.B (Z);
ffa04e80:	f8 a0       	R0 = [FP + 0xc];
ffa04e82:	01 50       	R0 = R1 + R0;
ffa04e84:	08 30       	R1 = R0;
ffa04e86:	f0 b9       	R0 = [FP -0x4];
ffa04e88:	08 50       	R0 = R0 + R1;
ffa04e8a:	f0 bb       	[FP -0x4] = R0;
ffa04e8c:	fa b9       	P2 = [FP -0x4];
ffa04e8e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04e90:	10 9b       	B[P2] = R0;
ffa04e92:	f8 a0       	R0 = [FP + 0xc];
ffa04e94:	08 64       	R0 += 0x1;		/* (  1) */
ffa04e96:	f8 b0       	[FP + 0xc] = R0;
ffa04e98:	ba b9       	P2 = [FP -0x14];
ffa04e9a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04e9c:	50 e6 1a 00 	W[P2 + 0x34] = R0;
ffa04ea0:	b0 b9       	R0 = [FP -0x14];
ffa04ea2:	20 65       	R0 += 0x24;		/* ( 36) */
ffa04ea4:	d0 bb       	[FP -0xc] = R0;
ffa04ea6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04ea8:	a0 bb       	[FP -0x18] = R0;
ffa04eaa:	0d 20       	JUMP.S 0xffa04ec4 <_tcp_checksum_calc+0xd4>;
ffa04eac:	da b9       	P2 = [FP -0xc];
ffa04eae:	50 95       	R0 = W[P2] (X);
ffa04eb0:	c1 42       	R1 = R0.L (Z);
ffa04eb2:	c0 b9       	R0 = [FP -0x10];
ffa04eb4:	08 50       	R0 = R0 + R1;
ffa04eb6:	c0 bb       	[FP -0x10] = R0;
ffa04eb8:	d0 b9       	R0 = [FP -0xc];
ffa04eba:	10 64       	R0 += 0x2;		/* (  2) */
ffa04ebc:	d0 bb       	[FP -0xc] = R0;
ffa04ebe:	a0 b9       	R0 = [FP -0x18];
ffa04ec0:	08 64       	R0 += 0x1;		/* (  1) */
ffa04ec2:	a0 bb       	[FP -0x18] = R0;
ffa04ec4:	f9 a0       	R1 = [FP + 0xc];
ffa04ec6:	82 c6 09 81 	R0 = R1 >> 0x1f;
ffa04eca:	08 50       	R0 = R0 + R1;
ffa04ecc:	08 4d       	R0 >>>= 0x1;
ffa04ece:	08 30       	R1 = R0;
ffa04ed0:	ba b9       	P2 = [FP -0x14];
ffa04ed2:	90 e5 30 00 	R0 = B[P2 + 0x30] (X);
ffa04ed6:	40 43       	R0 = R0.B (Z);
ffa04ed8:	18 4e       	R0 >>= 0x3;
ffa04eda:	40 43       	R0 = R0.B (Z);
ffa04edc:	41 50       	R1 = R1 + R0;
ffa04ede:	a0 b9       	R0 = [FP -0x18];
ffa04ee0:	01 09       	CC = R1 <= R0;
ffa04ee2:	e5 13       	IF !CC JUMP 0xffa04eac <_tcp_checksum_calc+0xbc>;
ffa04ee4:	c0 b9       	R0 = [FP -0x10];
ffa04ee6:	c1 42       	R1 = R0.L (Z);
ffa04ee8:	c0 b9       	R0 = [FP -0x10];
ffa04eea:	80 4e       	R0 >>= 0x10;
ffa04eec:	01 50       	R0 = R1 + R0;
ffa04eee:	c0 bb       	[FP -0x10] = R0;
ffa04ef0:	c0 b9       	R0 = [FP -0x10];
ffa04ef2:	c0 43       	R0 =~ R0;
ffa04ef4:	c0 42       	R0 = R0.L (Z);
ffa04ef6:	01 e8 00 00 	UNLINK;
ffa04efa:	10 00       	RTS;

ffa04efc <_tcp_checksum_set>:
ffa04efc:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa04f00:	b8 b0       	[FP + 0x8] = R0;
ffa04f02:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f1c <_NetArpLut_age> */
ffa04f06:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa04f0a:	50 95       	R0 = W[P2] (X);
ffa04f0c:	c0 42       	R0 = R0.L (Z);
ffa04f0e:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900f20 <_NetArpLut>(-7336160) */
ffa04f12:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa04f16:	10 4f       	R0 <<= 0x2;
ffa04f18:	08 50       	R0 = R0 + R1;
ffa04f1a:	10 32       	P2 = R0;
ffa04f1c:	52 91       	P2 = [P2];
ffa04f1e:	90 a1       	R0 = [P2 + 0x18];
ffa04f20:	f0 bb       	[FP -0x4] = R0;
ffa04f22:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa04f26:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_txIdx> */
ffa04f2a:	50 95       	R0 = W[P2] (X);
ffa04f2c:	c0 42       	R0 = R0.L (Z);
ffa04f2e:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa04f32:	01 e1 e4 0e 	R1.L = 0xee4;		/* (3812)	R1=0xff900ee4 <_txbuf>(-7336220) */
ffa04f36:	10 4f       	R0 <<= 0x2;
ffa04f38:	08 50       	R0 = R0 + R1;
ffa04f3a:	10 32       	P2 = R0;
ffa04f3c:	52 91       	P2 = [P2];
ffa04f3e:	90 a1       	R0 = [P2 + 0x18];
ffa04f40:	b9 a0       	R1 = [FP + 0x8];
ffa04f42:	ff e3 57 ff 	CALL 0xffa04df0 <_tcp_checksum_calc>;
ffa04f46:	fa b9       	P2 = [FP -0x4];
ffa04f48:	50 e6 1a 00 	W[P2 + 0x34] = R0;
ffa04f4c:	01 e8 00 00 	UNLINK;
ffa04f50:	10 00       	RTS;
	...

ffa04f54 <_tcp_checksum_check>:
ffa04f54:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa04f58:	b8 b0       	[FP + 0x8] = R0;
ffa04f5a:	f9 b0       	[FP + 0xc] = R1;
ffa04f5c:	b8 a0       	R0 = [FP + 0x8];
ffa04f5e:	d0 bb       	[FP -0xc] = R0;
ffa04f60:	da b9       	P2 = [FP -0xc];
ffa04f62:	50 e5 1a 00 	R0 = W[P2 + 0x34] (X);
ffa04f66:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa04f6a:	f9 a0       	R1 = [FP + 0xc];
ffa04f6c:	b8 a0       	R0 = [FP + 0x8];
ffa04f6e:	ff e3 41 ff 	CALL 0xffa04df0 <_tcp_checksum_calc>;
ffa04f72:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa04f76:	79 e4 fc ff 	R1 = W[FP + -0x8] (Z);
ffa04f7a:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa04f7e:	01 08       	CC = R1 == R0;
ffa04f80:	04 10       	IF !CC JUMP 0xffa04f88 <_tcp_checksum_check+0x34>;
ffa04f82:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04f84:	c0 bb       	[FP -0x10] = R0;
ffa04f86:	19 20       	JUMP.S 0xffa04fb8 <_tcp_checksum_check+0x64>;
ffa04f88:	79 e4 fc ff 	R1 = W[FP + -0x8] (Z);
ffa04f8c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa04f90:	00 e1 60 05 	R0.L = 0x560;		/* (1376)	R0=0xff900560(-7338656) */
ffa04f94:	ff e3 88 e4 	CALL 0xffa018a4 <_printf_hex>;
ffa04f98:	79 e4 fe ff 	R1 = W[FP + -0x4] (Z);
ffa04f9c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900560(-7338656) */
ffa04fa0:	00 e1 7c 05 	R0.L = 0x57c;		/* (1404)	R0=0xff90057c(-7338628) */
ffa04fa4:	ff e3 80 e4 	CALL 0xffa018a4 <_printf_hex>;
ffa04fa8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90057c(-7338628) */
ffa04fac:	00 e1 8c 05 	R0.L = 0x58c;		/* (1420)	R0=0xff90058c(-7338612) */
ffa04fb0:	ff e3 9a e3 	CALL 0xffa016e4 <_printf_str>;
ffa04fb4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04fb6:	c0 bb       	[FP -0x10] = R0;
ffa04fb8:	c0 b9       	R0 = [FP -0x10];
ffa04fba:	01 e8 00 00 	UNLINK;
ffa04fbe:	10 00       	RTS;

ffa04fc0 <_tcp_length>:
ffa04fc0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa04fc4:	b8 b0       	[FP + 0x8] = R0;
ffa04fc6:	ba ac       	P2 = [FP + 0x8];
ffa04fc8:	50 aa       	R0 = W[P2 + 0x12] (X);
ffa04fca:	c0 42       	R0 = R0.L (Z);
ffa04fcc:	ff e3 a6 f1 	CALL 0xffa03318 <_htons>;
ffa04fd0:	c0 42       	R0 = R0.L (Z);
ffa04fd2:	f0 bb       	[FP -0x4] = R0;
ffa04fd4:	ba ac       	P2 = [FP + 0x8];
ffa04fd6:	90 e5 10 00 	R0 = B[P2 + 0x10] (X);
ffa04fda:	41 43       	R1 = R0.B (Z);
ffa04fdc:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa04fde:	01 54       	R0 = R1 & R0;
ffa04fe0:	82 c6 10 82 	R1 = R0 << 0x2;
ffa04fe4:	f0 b9       	R0 = [FP -0x4];
ffa04fe6:	08 52       	R0 = R0 - R1;
ffa04fe8:	f0 bb       	[FP -0x4] = R0;
ffa04fea:	ba ac       	P2 = [FP + 0x8];
ffa04fec:	90 e5 30 00 	R0 = B[P2 + 0x30] (X);
ffa04ff0:	40 43       	R0 = R0.B (Z);
ffa04ff2:	82 c6 f0 03 	R1 = R0 >>> 0x2;
ffa04ff6:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa04ff8:	41 54       	R1 = R1 & R0;
ffa04ffa:	f0 b9       	R0 = [FP -0x4];
ffa04ffc:	08 52       	R0 = R0 - R1;
ffa04ffe:	f0 bb       	[FP -0x4] = R0;
ffa05000:	f0 b9       	R0 = [FP -0x4];
ffa05002:	01 e8 00 00 	UNLINK;
ffa05006:	10 00       	RTS;

ffa05008 <_tcp_rx>:
ffa05008:	78 05       	[--SP] = (R7:7);
ffa0500a:	00 e8 0e 00 	LINK 0x38;		/* (56) */
ffa0500e:	f8 b0       	[FP + 0xc] = R0;
ffa05010:	39 b1       	[FP + 0x10] = R1;
ffa05012:	f8 a0       	R0 = [FP + 0xc];
ffa05014:	b0 bb       	[FP -0x14] = R0;
ffa05016:	ba b9       	P2 = [FP -0x14];
ffa05018:	d7 a9       	R7 = W[P2 + 0xe] (X);
ffa0501a:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa0501e:	ff e3 7d f1 	CALL 0xffa03318 <_htons>;
ffa05022:	f9 42       	R1 = R7.L (Z);
ffa05024:	c0 42       	R0 = R0.L (Z);
ffa05026:	01 08       	CC = R1 == R0;
ffa05028:	02 1c       	IF CC JUMP 0xffa0502c <_tcp_rx+0x24> (BP);
ffa0502a:	28 23       	JUMP.S 0xffa0567a <_tcp_rx+0x672>;
ffa0502c:	ba b9       	P2 = [FP -0x14];
ffa0502e:	90 e5 19 00 	R0 = B[P2 + 0x19] (X);
ffa05032:	40 43       	R0 = R0.B (Z);
ffa05034:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa05036:	08 08       	CC = R0 == R1;
ffa05038:	02 1c       	IF CC JUMP 0xffa0503c <_tcp_rx+0x34> (BP);
ffa0503a:	20 23       	JUMP.S 0xffa0567a <_tcp_rx+0x672>;
ffa0503c:	ba b9       	P2 = [FP -0x14];
ffa0503e:	57 e5 13 00 	R7 = W[P2 + 0x26] (X);
ffa05042:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa05046:	ff e3 69 f1 	CALL 0xffa03318 <_htons>;
ffa0504a:	f9 42       	R1 = R7.L (Z);
ffa0504c:	c0 42       	R0 = R0.L (Z);
ffa0504e:	01 08       	CC = R1 == R0;
ffa05050:	02 1c       	IF CC JUMP 0xffa05054 <_tcp_rx+0x4c> (BP);
ffa05052:	14 23       	JUMP.S 0xffa0567a <_tcp_rx+0x672>;
ffa05054:	f8 a0       	R0 = [FP + 0xc];
ffa05056:	80 64       	R0 += 0x10;		/* ( 16) */
ffa05058:	ff e3 ba f2 	CALL 0xffa035cc <_ip_header_checksum>;
ffa0505c:	40 43       	R0 = R0.B (Z);
ffa0505e:	00 0c       	CC = R0 == 0x0;
ffa05060:	02 14       	IF !CC JUMP 0xffa05064 <_tcp_rx+0x5c> (BP);
ffa05062:	0c 23       	JUMP.S 0xffa0567a <_tcp_rx+0x672>;
ffa05064:	ba b9       	P2 = [FP -0x14];
ffa05066:	d2 a1       	R2 = [P2 + 0x1c];
ffa05068:	b0 b9       	R0 = [FP -0x14];
ffa0506a:	08 30       	R1 = R0;
ffa0506c:	41 64       	R1 += 0x8;		/* (  8) */
ffa0506e:	02 30       	R0 = R2;
ffa05070:	ff e3 e0 fc 	CALL 0xffa04a30 <_ARP_lut_add>;
ffa05074:	b0 b9       	R0 = [FP -0x14];
ffa05076:	ff e3 a5 ff 	CALL 0xffa04fc0 <_tcp_length>;
ffa0507a:	c0 bb       	[FP -0x10] = R0;
ffa0507c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa05080:	00 e1 90 05 	R0.L = 0x590;		/* (1424)	R0=0xff900590(-7338608) */
ffa05084:	c1 b9       	R1 = [FP -0x10];
ffa05086:	ff e3 39 e3 	CALL 0xffa016f8 <_printf_int>;
ffa0508a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900590(-7338608) */
ffa0508e:	00 e1 8c 05 	R0.L = 0x58c;		/* (1420)	R0=0xff90058c(-7338612) */
ffa05092:	ff e3 29 e3 	CALL 0xffa016e4 <_printf_str>;
ffa05096:	c1 b9       	R1 = [FP -0x10];
ffa05098:	f8 a0       	R0 = [FP + 0xc];
ffa0509a:	ff e3 5d ff 	CALL 0xffa04f54 <_tcp_checksum_check>;
ffa0509e:	40 43       	R0 = R0.B (Z);
ffa050a0:	00 0c       	CC = R0 == 0x0;
ffa050a2:	02 14       	IF !CC JUMP 0xffa050a6 <_tcp_rx+0x9e> (BP);
ffa050a4:	eb 22       	JUMP.S 0xffa0567a <_tcp_rx+0x672>;
ffa050a6:	ba b9       	P2 = [FP -0x14];
ffa050a8:	90 e5 31 00 	R0 = B[P2 + 0x31] (X);
ffa050ac:	40 43       	R0 = R0.B (Z);
ffa050ae:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa050b0:	08 08       	CC = R0 == R1;
ffa050b2:	1f 10       	IF !CC JUMP 0xffa050f0 <_tcp_rx+0xe8>;
ffa050b4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90058c(-7338612) */
ffa050b8:	00 e1 a4 05 	R0.L = 0x5a4;		/* (1444)	R0=0xff9005a4(-7338588) */
ffa050bc:	ff e3 14 e3 	CALL 0xffa016e4 <_printf_str>;
ffa050c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_txIdx> */
ffa050c4:	0a e1 f8 0f 	P2.L = 0xff8;		/* (4088)	P2=0xff900ff8 <_TcpState> */
ffa050c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa050ca:	10 93       	[P2] = R0;
ffa050cc:	ba b9       	P2 = [FP -0x14];
ffa050ce:	90 a2       	R0 = [P2 + 0x28];
ffa050d0:	ff e3 3c f1 	CALL 0xffa03348 <_htonl>;
ffa050d4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff8 <_TcpState> */
ffa050d8:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa050dc:	10 93       	[P2] = R0;
ffa050de:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa050e2:	0a e1 10 10 	P2.L = 0x1010;		/* (4112)	P2=0xff901010 <_g_httpRxed> */
ffa050e6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa050e8:	10 93       	[P2] = R0;
ffa050ea:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa050ec:	90 bb       	[FP -0x1c] = R0;
ffa050ee:	c8 22       	JUMP.S 0xffa0567e <_tcp_rx+0x676>;
ffa050f0:	ba b9       	P2 = [FP -0x14];
ffa050f2:	90 e5 31 00 	R0 = B[P2 + 0x31] (X);
ffa050f6:	40 43       	R0 = R0.B (Z);
ffa050f8:	10 0c       	CC = R0 == 0x2;
ffa050fa:	77 10       	IF !CC JUMP 0xffa051e8 <_tcp_rx+0x1e0>;
ffa050fc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05100:	00 e1 b0 05 	R0.L = 0x5b0;		/* (1456)	R0=0xff9005b0(-7338576) */
ffa05104:	ff e3 f0 e2 	CALL 0xffa016e4 <_printf_str>;
ffa05108:	ba b9       	P2 = [FP -0x14];
ffa0510a:	90 a2       	R0 = [P2 + 0x28];
ffa0510c:	ff e3 1e f1 	CALL 0xffa03348 <_htonl>;
ffa05110:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901010 <_g_httpRxed> */
ffa05114:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa05118:	10 93       	[P2] = R0;
ffa0511a:	b0 b9       	R0 = [FP -0x14];
ffa0511c:	ff e3 52 ff 	CALL 0xffa04fc0 <_tcp_length>;
ffa05120:	08 30       	R1 = R0;
ffa05122:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa05126:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa0512a:	10 91       	R0 = [P2];
ffa0512c:	01 50       	R0 = R1 + R0;
ffa0512e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa05132:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa05136:	10 93       	[P2] = R0;
ffa05138:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa0513c:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa05140:	10 91       	R0 = [P2];
ffa05142:	08 64       	R0 += 0x1;		/* (  1) */
ffa05144:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa05148:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa0514c:	10 93       	[P2] = R0;
ffa0514e:	ba b9       	P2 = [FP -0x14];
ffa05150:	50 e5 12 00 	R0 = W[P2 + 0x24] (X);
ffa05154:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa05158:	0a e1 04 10 	P2.L = 0x1004;		/* (4100)	P2=0xff901004 <_TcpClientPort> */
ffa0515c:	10 97       	W[P2] = R0;
ffa0515e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901004 <_TcpClientPort> */
ffa05162:	0a e1 10 10 	P2.L = 0x1010;		/* (4112)	P2=0xff901010 <_g_httpRxed> */
ffa05166:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05168:	10 93       	[P2] = R0;
ffa0516a:	ba b9       	P2 = [FP -0x14];
ffa0516c:	d0 a1       	R0 = [P2 + 0x1c];
ffa0516e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901010 <_g_httpRxed> */
ffa05172:	0a e1 d8 0e 	P2.L = 0xed8;		/* (3800)	P2=0xff900ed8 <_NetDestIP> */
ffa05176:	10 93       	[P2] = R0;
ffa05178:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed8 <_NetDestIP> */
ffa0517c:	0a e1 d8 0e 	P2.L = 0xed8;		/* (3800)	P2=0xff900ed8 <_NetDestIP> */
ffa05180:	17 91       	R7 = [P2];
ffa05182:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed8 <_NetDestIP> */
ffa05186:	0a e1 ec 0f 	P2.L = 0xfec;		/* (4076)	P2=0xff900fec <_TcpSeqHost> */
ffa0518a:	12 91       	R2 = [P2];
ffa0518c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fec <_TcpSeqHost> */
ffa05190:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa05194:	11 91       	R1 = [P2];
ffa05196:	5f 30       	R3 = FP;
ffa05198:	5b 67       	R3 += -0x15;		/* (-21) */
ffa0519a:	90 60       	R0 = 0x12 (X);		/*		R0=0x12( 18) */
ffa0519c:	f0 b0       	[SP + 0xc] = R0;
ffa0519e:	32 b1       	[SP + 0x10] = R2;
ffa051a0:	71 b1       	[SP + 0x14] = R1;
ffa051a2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa051a4:	0b 30       	R1 = R3;
ffa051a6:	17 30       	R2 = R7;
ffa051a8:	ff e3 ea fd 	CALL 0xffa04d7c <_tcp_packet_setup>;
ffa051ac:	b8 e5 eb ff 	R0 = B[FP + -0x15] (X);
ffa051b0:	00 43       	R0 = R0.B (X);
ffa051b2:	00 0d       	CC = R0 <= 0x0;
ffa051b4:	1a 18       	IF CC JUMP 0xffa051e8 <_tcp_rx+0x1e0>;
ffa051b6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa051ba:	0a e1 ec 0f 	P2.L = 0xfec;		/* (4076)	P2=0xff900fec <_TcpSeqHost> */
ffa051be:	10 91       	R0 = [P2];
ffa051c0:	08 64       	R0 += 0x1;		/* (  1) */
ffa051c2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fec <_TcpSeqHost> */
ffa051c6:	0a e1 ec 0f 	P2.L = 0xfec;		/* (4076)	P2=0xff900fec <_TcpSeqHost> */
ffa051ca:	10 93       	[P2] = R0;
ffa051cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fec <_TcpSeqHost> */
ffa051d0:	0a e1 f8 0f 	P2.L = 0xff8;		/* (4088)	P2=0xff900ff8 <_TcpState> */
ffa051d4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa051d6:	10 93       	[P2] = R0;
ffa051d8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa051da:	ff e3 91 fe 	CALL 0xffa04efc <_tcp_checksum_set>;
ffa051de:	ff e3 35 e9 	CALL 0xffa02448 <_bfin_EMAC_send_nocopy>;
ffa051e2:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa051e4:	91 bb       	[FP -0x1c] = R1;
ffa051e6:	4c 22       	JUMP.S 0xffa0567e <_tcp_rx+0x676>;
ffa051e8:	ba b9       	P2 = [FP -0x14];
ffa051ea:	90 e5 31 00 	R0 = B[P2 + 0x31] (X);
ffa051ee:	40 43       	R0 = R0.B (Z);
ffa051f0:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa051f2:	08 08       	CC = R0 == R1;
ffa051f4:	4a 10       	IF !CC JUMP 0xffa05288 <_tcp_rx+0x280>;
ffa051f6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff8 <_TcpState> */
ffa051fa:	0a e1 f8 0f 	P2.L = 0xff8;		/* (4088)	P2=0xff900ff8 <_TcpState> */
ffa051fe:	10 91       	R0 = [P2];
ffa05200:	08 0c       	CC = R0 == 0x1;
ffa05202:	43 10       	IF !CC JUMP 0xffa05288 <_tcp_rx+0x280>;
ffa05204:	00 00       	NOP;
ffa05206:	00 00       	NOP;
ffa05208:	ba b9       	P2 = [FP -0x14];
ffa0520a:	d0 a2       	R0 = [P2 + 0x2c];
ffa0520c:	ff e3 9e f0 	CALL 0xffa03348 <_htonl>;
ffa05210:	08 30       	R1 = R0;
ffa05212:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff8 <_TcpState> */
ffa05216:	0a e1 ec 0f 	P2.L = 0xfec;		/* (4076)	P2=0xff900fec <_TcpSeqHost> */
ffa0521a:	10 91       	R0 = [P2];
ffa0521c:	01 08       	CC = R1 == R0;
ffa0521e:	1d 18       	IF CC JUMP 0xffa05258 <_tcp_rx+0x250>;
ffa05220:	00 00       	NOP;
ffa05222:	00 00       	NOP;
ffa05224:	ba b9       	P2 = [FP -0x14];
ffa05226:	d0 a2       	R0 = [P2 + 0x2c];
ffa05228:	ff e3 90 f0 	CALL 0xffa03348 <_htonl>;
ffa0522c:	08 30       	R1 = R0;
ffa0522e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa05232:	00 e1 bc 05 	R0.L = 0x5bc;		/* (1468)	R0=0xff9005bc(-7338564) */
ffa05236:	ff e3 73 e4 	CALL 0xffa01b1c <_printf_ip>;
ffa0523a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fec <_TcpSeqHost> */
ffa0523e:	0a e1 f8 0f 	P2.L = 0xff8;		/* (4088)	P2=0xff900ff8 <_TcpState> */
ffa05242:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05244:	10 93       	[P2] = R0;
ffa05246:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0524a:	00 e1 8c 05 	R0.L = 0x58c;		/* (1420)	R0=0xff90058c(-7338612) */
ffa0524e:	ff e3 4b e2 	CALL 0xffa016e4 <_printf_str>;
ffa05252:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05254:	90 bb       	[FP -0x1c] = R0;
ffa05256:	14 22       	JUMP.S 0xffa0567e <_tcp_rx+0x676>;
ffa05258:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff8 <_TcpState> */
ffa0525c:	0a e1 f8 0f 	P2.L = 0xff8;		/* (4088)	P2=0xff900ff8 <_TcpState> */
ffa05260:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa05262:	10 93       	[P2] = R0;
ffa05264:	ba b9       	P2 = [FP -0x14];
ffa05266:	90 a2       	R0 = [P2 + 0x28];
ffa05268:	ff e3 70 f0 	CALL 0xffa03348 <_htonl>;
ffa0526c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff8 <_TcpState> */
ffa05270:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa05274:	10 93       	[P2] = R0;
ffa05276:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa0527a:	00 e1 d8 05 	R0.L = 0x5d8;		/* (1496)	R0=0xff9005d8(-7338536) */
ffa0527e:	ff e3 33 e2 	CALL 0xffa016e4 <_printf_str>;
ffa05282:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa05284:	91 bb       	[FP -0x1c] = R1;
ffa05286:	fc 21       	JUMP.S 0xffa0567e <_tcp_rx+0x676>;
ffa05288:	ba b9       	P2 = [FP -0x14];
ffa0528a:	90 e5 31 00 	R0 = B[P2 + 0x31] (X);
ffa0528e:	40 43       	R0 = R0.B (Z);
ffa05290:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa05292:	00 02       	R0 = CC;
ffa05294:	40 43       	R0 = R0.B (Z);
ffa05296:	00 0c       	CC = R0 == 0x0;
ffa05298:	97 18       	IF CC JUMP 0xffa053c6 <_tcp_rx+0x3be>;
ffa0529a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005d8(-7338536) */
ffa0529e:	00 e1 e8 05 	R0.L = 0x5e8;		/* (1512)	R0=0xff9005e8(-7338520) */
ffa052a2:	ff e3 21 e2 	CALL 0xffa016e4 <_printf_str>;
ffa052a6:	ba b9       	P2 = [FP -0x14];
ffa052a8:	90 a2       	R0 = [P2 + 0x28];
ffa052aa:	ff e3 4f f0 	CALL 0xffa03348 <_htonl>;
ffa052ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa052b2:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa052b6:	10 93       	[P2] = R0;
ffa052b8:	ba b9       	P2 = [FP -0x14];
ffa052ba:	d0 a1       	R0 = [P2 + 0x1c];
ffa052bc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa052c0:	0a e1 d8 0e 	P2.L = 0xed8;		/* (3800)	P2=0xff900ed8 <_NetDestIP> */
ffa052c4:	10 93       	[P2] = R0;
ffa052c6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed8 <_NetDestIP> */
ffa052ca:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa052ce:	10 91       	R0 = [P2];
ffa052d0:	08 64       	R0 += 0x1;		/* (  1) */
ffa052d2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa052d6:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa052da:	10 93       	[P2] = R0;
ffa052dc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa052e0:	0a e1 f8 0f 	P2.L = 0xff8;		/* (4088)	P2=0xff900ff8 <_TcpState> */
ffa052e4:	10 91       	R0 = [P2];
ffa052e6:	10 0c       	CC = R0 == 0x2;
ffa052e8:	08 18       	IF CC JUMP 0xffa052f8 <_tcp_rx+0x2f0>;
ffa052ea:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff8 <_TcpState> */
ffa052ee:	0a e1 f8 0f 	P2.L = 0xff8;		/* (4088)	P2=0xff900ff8 <_TcpState> */
ffa052f2:	10 91       	R0 = [P2];
ffa052f4:	00 0c       	CC = R0 == 0x0;
ffa052f6:	2e 10       	IF !CC JUMP 0xffa05352 <_tcp_rx+0x34a>;
ffa052f8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff8 <_TcpState> */
ffa052fc:	0a e1 d8 0e 	P2.L = 0xed8;		/* (3800)	P2=0xff900ed8 <_NetDestIP> */
ffa05300:	17 91       	R7 = [P2];
ffa05302:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed8 <_NetDestIP> */
ffa05306:	0a e1 ec 0f 	P2.L = 0xfec;		/* (4076)	P2=0xff900fec <_TcpSeqHost> */
ffa0530a:	12 91       	R2 = [P2];
ffa0530c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fec <_TcpSeqHost> */
ffa05310:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa05314:	11 91       	R1 = [P2];
ffa05316:	5f 30       	R3 = FP;
ffa05318:	5b 67       	R3 += -0x15;		/* (-21) */
ffa0531a:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0531c:	f0 b0       	[SP + 0xc] = R0;
ffa0531e:	32 b1       	[SP + 0x10] = R2;
ffa05320:	71 b1       	[SP + 0x14] = R1;
ffa05322:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05324:	0b 30       	R1 = R3;
ffa05326:	17 30       	R2 = R7;
ffa05328:	ff e3 2a fd 	CALL 0xffa04d7c <_tcp_packet_setup>;
ffa0532c:	b8 e5 eb ff 	R0 = B[FP + -0x15] (X);
ffa05330:	00 43       	R0 = R0.B (X);
ffa05332:	00 0d       	CC = R0 <= 0x0;
ffa05334:	0f 18       	IF CC JUMP 0xffa05352 <_tcp_rx+0x34a>;
ffa05336:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa0533a:	0a e1 f8 0f 	P2.L = 0xff8;		/* (4088)	P2=0xff900ff8 <_TcpState> */
ffa0533e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa05340:	10 93       	[P2] = R0;
ffa05342:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05344:	ff e3 dc fd 	CALL 0xffa04efc <_tcp_checksum_set>;
ffa05348:	ff e3 80 e8 	CALL 0xffa02448 <_bfin_EMAC_send_nocopy>;
ffa0534c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0534e:	90 bb       	[FP -0x1c] = R0;
ffa05350:	97 21       	JUMP.S 0xffa0567e <_tcp_rx+0x676>;
ffa05352:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff8 <_TcpState> */
ffa05356:	0a e1 f8 0f 	P2.L = 0xff8;		/* (4088)	P2=0xff900ff8 <_TcpState> */
ffa0535a:	10 91       	R0 = [P2];
ffa0535c:	18 0c       	CC = R0 == 0x3;
ffa0535e:	34 10       	IF !CC JUMP 0xffa053c6 <_tcp_rx+0x3be>;
ffa05360:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff8 <_TcpState> */
ffa05364:	0a e1 10 10 	P2.L = 0x1010;		/* (4112)	P2=0xff901010 <_g_httpRxed> */
ffa05368:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0536a:	10 93       	[P2] = R0;
ffa0536c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901010 <_g_httpRxed> */
ffa05370:	0a e1 d8 0e 	P2.L = 0xed8;		/* (3800)	P2=0xff900ed8 <_NetDestIP> */
ffa05374:	17 91       	R7 = [P2];
ffa05376:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed8 <_NetDestIP> */
ffa0537a:	0a e1 ec 0f 	P2.L = 0xfec;		/* (4076)	P2=0xff900fec <_TcpSeqHost> */
ffa0537e:	12 91       	R2 = [P2];
ffa05380:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fec <_TcpSeqHost> */
ffa05384:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa05388:	11 91       	R1 = [P2];
ffa0538a:	5f 30       	R3 = FP;
ffa0538c:	5b 67       	R3 += -0x15;		/* (-21) */
ffa0538e:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa05390:	f0 b0       	[SP + 0xc] = R0;
ffa05392:	32 b1       	[SP + 0x10] = R2;
ffa05394:	71 b1       	[SP + 0x14] = R1;
ffa05396:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05398:	0b 30       	R1 = R3;
ffa0539a:	17 30       	R2 = R7;
ffa0539c:	ff e3 f0 fc 	CALL 0xffa04d7c <_tcp_packet_setup>;
ffa053a0:	b8 e5 eb ff 	R0 = B[FP + -0x15] (X);
ffa053a4:	00 43       	R0 = R0.B (X);
ffa053a6:	00 0d       	CC = R0 <= 0x0;
ffa053a8:	0f 18       	IF CC JUMP 0xffa053c6 <_tcp_rx+0x3be>;
ffa053aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa053ae:	0a e1 f8 0f 	P2.L = 0xff8;		/* (4088)	P2=0xff900ff8 <_TcpState> */
ffa053b2:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa053b4:	10 93       	[P2] = R0;
ffa053b6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa053b8:	ff e3 a2 fd 	CALL 0xffa04efc <_tcp_checksum_set>;
ffa053bc:	ff e3 46 e8 	CALL 0xffa02448 <_bfin_EMAC_send_nocopy>;
ffa053c0:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa053c2:	91 bb       	[FP -0x1c] = R1;
ffa053c4:	5d 21       	JUMP.S 0xffa0567e <_tcp_rx+0x676>;
ffa053c6:	ba b9       	P2 = [FP -0x14];
ffa053c8:	90 e5 31 00 	R0 = B[P2 + 0x31] (X);
ffa053cc:	41 43       	R1 = R0.B (Z);
ffa053ce:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa053d0:	01 54       	R0 = R1 & R0;
ffa053d2:	00 0c       	CC = R0 == 0x0;
ffa053d4:	66 18       	IF CC JUMP 0xffa054a0 <_tcp_rx+0x498>;
ffa053d6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff8 <_TcpState> */
ffa053da:	0a e1 f8 0f 	P2.L = 0xff8;		/* (4088)	P2=0xff900ff8 <_TcpState> */
ffa053de:	10 91       	R0 = [P2];
ffa053e0:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa053e2:	08 08       	CC = R0 == R1;
ffa053e4:	0a 10       	IF !CC JUMP 0xffa053f8 <_tcp_rx+0x3f0>;
ffa053e6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa053ea:	00 e1 f8 05 	R0.L = 0x5f8;		/* (1528)	R0=0xff9005f8(-7338504) */
ffa053ee:	ff e3 7b e1 	CALL 0xffa016e4 <_printf_str>;
ffa053f2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa053f4:	90 bb       	[FP -0x1c] = R0;
ffa053f6:	44 21       	JUMP.S 0xffa0567e <_tcp_rx+0x676>;
ffa053f8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff8 <_TcpState> */
ffa053fc:	0a e1 f8 0f 	P2.L = 0xff8;		/* (4088)	P2=0xff900ff8 <_TcpState> */
ffa05400:	10 91       	R0 = [P2];
ffa05402:	00 0c       	CC = R0 == 0x0;
ffa05404:	4e 10       	IF !CC JUMP 0xffa054a0 <_tcp_rx+0x498>;
ffa05406:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0540a:	00 e1 0c 06 	R0.L = 0x60c;		/* (1548)	R0=0xff90060c(-7338484) */
ffa0540e:	ff e3 6b e1 	CALL 0xffa016e4 <_printf_str>;
ffa05412:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff8 <_TcpState> */
ffa05416:	0a e1 10 10 	P2.L = 0x1010;		/* (4112)	P2=0xff901010 <_g_httpRxed> */
ffa0541a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0541c:	10 93       	[P2] = R0;
ffa0541e:	ba b9       	P2 = [FP -0x14];
ffa05420:	90 a2       	R0 = [P2 + 0x28];
ffa05422:	ff e3 93 ef 	CALL 0xffa03348 <_htonl>;
ffa05426:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901010 <_g_httpRxed> */
ffa0542a:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa0542e:	10 93       	[P2] = R0;
ffa05430:	ba b9       	P2 = [FP -0x14];
ffa05432:	d0 a1       	R0 = [P2 + 0x1c];
ffa05434:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa05438:	0a e1 d8 0e 	P2.L = 0xed8;		/* (3800)	P2=0xff900ed8 <_NetDestIP> */
ffa0543c:	10 93       	[P2] = R0;
ffa0543e:	ba b9       	P2 = [FP -0x14];
ffa05440:	50 e5 12 00 	R0 = W[P2 + 0x24] (X);
ffa05444:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed8 <_NetDestIP> */
ffa05448:	0a e1 04 10 	P2.L = 0x1004;		/* (4100)	P2=0xff901004 <_TcpClientPort> */
ffa0544c:	10 97       	W[P2] = R0;
ffa0544e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901004 <_TcpClientPort> */
ffa05452:	0a e1 d8 0e 	P2.L = 0xed8;		/* (3800)	P2=0xff900ed8 <_NetDestIP> */
ffa05456:	13 91       	R3 = [P2];
ffa05458:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed8 <_NetDestIP> */
ffa0545c:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa05460:	11 91       	R1 = [P2];
ffa05462:	57 30       	R2 = FP;
ffa05464:	5a 67       	R2 += -0x15;		/* (-21) */
ffa05466:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa05468:	f0 b0       	[SP + 0xc] = R0;
ffa0546a:	31 b1       	[SP + 0x10] = R1;
ffa0546c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0546e:	70 b1       	[SP + 0x14] = R0;
ffa05470:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05472:	0a 30       	R1 = R2;
ffa05474:	13 30       	R2 = R3;
ffa05476:	ff e3 83 fc 	CALL 0xffa04d7c <_tcp_packet_setup>;
ffa0547a:	b8 e5 eb ff 	R0 = B[FP + -0x15] (X);
ffa0547e:	00 43       	R0 = R0.B (X);
ffa05480:	00 0d       	CC = R0 <= 0x0;
ffa05482:	0f 18       	IF CC JUMP 0xffa054a0 <_tcp_rx+0x498>;
ffa05484:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa05488:	0a e1 f8 0f 	P2.L = 0xff8;		/* (4088)	P2=0xff900ff8 <_TcpState> */
ffa0548c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0548e:	10 93       	[P2] = R0;
ffa05490:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05492:	ff e3 35 fd 	CALL 0xffa04efc <_tcp_checksum_set>;
ffa05496:	ff e3 d9 e7 	CALL 0xffa02448 <_bfin_EMAC_send_nocopy>;
ffa0549a:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0549c:	91 bb       	[FP -0x1c] = R1;
ffa0549e:	f0 20       	JUMP.S 0xffa0567e <_tcp_rx+0x676>;
ffa054a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff8 <_TcpState> */
ffa054a4:	0a e1 f8 0f 	P2.L = 0xff8;		/* (4088)	P2=0xff900ff8 <_TcpState> */
ffa054a8:	10 91       	R0 = [P2];
ffa054aa:	10 0c       	CC = R0 == 0x2;
ffa054ac:	e7 10       	IF !CC JUMP 0xffa0567a <_tcp_rx+0x672>;
ffa054ae:	b0 b9       	R0 = [FP -0x14];
ffa054b0:	20 65       	R0 += 0x24;		/* ( 36) */
ffa054b2:	d0 bb       	[FP -0xc] = R0;
ffa054b4:	ba b9       	P2 = [FP -0x14];
ffa054b6:	90 e5 30 00 	R0 = B[P2 + 0x30] (X);
ffa054ba:	41 43       	R1 = R0.B (Z);
ffa054bc:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa054c0:	01 54       	R0 = R1 & R0;
ffa054c2:	80 bb       	[FP -0x20] = R0;
ffa054c4:	80 b9       	R0 = [FP -0x20];
ffa054c6:	80 0c       	CC = R0 < 0x0;
ffa054c8:	04 10       	IF !CC JUMP 0xffa054d0 <_tcp_rx+0x4c8>;
ffa054ca:	81 b9       	R1 = [FP -0x20];
ffa054cc:	19 64       	R1 += 0x3;		/* (  3) */
ffa054ce:	81 bb       	[FP -0x20] = R1;
ffa054d0:	80 b9       	R0 = [FP -0x20];
ffa054d2:	10 4d       	R0 >>>= 0x2;
ffa054d4:	08 30       	R1 = R0;
ffa054d6:	d0 b9       	R0 = [FP -0xc];
ffa054d8:	08 50       	R0 = R0 + R1;
ffa054da:	d0 bb       	[FP -0xc] = R0;
ffa054dc:	ba b9       	P2 = [FP -0x14];
ffa054de:	90 a2       	R0 = [P2 + 0x28];
ffa054e0:	ff e3 34 ef 	CALL 0xffa03348 <_htonl>;
ffa054e4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff8 <_TcpState> */
ffa054e8:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa054ec:	10 93       	[P2] = R0;
ffa054ee:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa054f2:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa054f6:	11 91       	R1 = [P2];
ffa054f8:	c0 b9       	R0 = [FP -0x10];
ffa054fa:	01 50       	R0 = R1 + R0;
ffa054fc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa05500:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa05504:	10 93       	[P2] = R0;
ffa05506:	ba b9       	P2 = [FP -0x14];
ffa05508:	d0 a1       	R0 = [P2 + 0x1c];
ffa0550a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa0550e:	0a e1 d8 0e 	P2.L = 0xed8;		/* (3800)	P2=0xff900ed8 <_NetDestIP> */
ffa05512:	10 93       	[P2] = R0;
ffa05514:	ba b9       	P2 = [FP -0x14];
ffa05516:	d0 a2       	R0 = [P2 + 0x2c];
ffa05518:	ff e3 18 ef 	CALL 0xffa03348 <_htonl>;
ffa0551c:	08 30       	R1 = R0;
ffa0551e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed8 <_NetDestIP> */
ffa05522:	0a e1 f4 0f 	P2.L = 0xff4;		/* (4084)	P2=0xff900ff4 <_TcpSeqHttpStart> */
ffa05526:	10 91       	R0 = [P2];
ffa05528:	01 52       	R0 = R1 - R0;
ffa0552a:	f0 bb       	[FP -0x4] = R0;
ffa0552c:	ba b9       	P2 = [FP -0x14];
ffa0552e:	90 e5 31 00 	R0 = B[P2 + 0x31] (X);
ffa05532:	41 43       	R1 = R0.B (Z);
ffa05534:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa05536:	01 54       	R0 = R1 & R0;
ffa05538:	00 0c       	CC = R0 == 0x0;
ffa0553a:	21 18       	IF CC JUMP 0xffa0557c <_tcp_rx+0x574>;
ffa0553c:	c0 b9       	R0 = [FP -0x10];
ffa0553e:	00 0c       	CC = R0 == 0x0;
ffa05540:	1e 10       	IF !CC JUMP 0xffa0557c <_tcp_rx+0x574>;
ffa05542:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff4 <_TcpSeqHttpStart> */
ffa05546:	0a e1 08 10 	P2.L = 0x1008;		/* (4104)	P2=0xff901008 <_g_httpHeaderLen> */
ffa0554a:	11 91       	R1 = [P2];
ffa0554c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901008 <_g_httpHeaderLen> */
ffa05550:	0a e1 0c 10 	P2.L = 0x100c;		/* (4108)	P2=0xff90100c <_g_httpContentLen> */
ffa05554:	10 91       	R0 = [P2];
ffa05556:	41 50       	R1 = R1 + R0;
ffa05558:	f0 b9       	R0 = [FP -0x4];
ffa0555a:	01 08       	CC = R1 == R0;
ffa0555c:	04 10       	IF !CC JUMP 0xffa05564 <_tcp_rx+0x55c>;
ffa0555e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05560:	90 bb       	[FP -0x1c] = R0;
ffa05562:	8e 20       	JUMP.S 0xffa0567e <_tcp_rx+0x676>;
ffa05564:	f1 b9       	R1 = [FP -0x4];
ffa05566:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05568:	00 e3 90 00 	CALL 0xffa05688 <_tcp_burst>;
ffa0556c:	00 0c       	CC = R0 == 0x0;
ffa0556e:	04 18       	IF CC JUMP 0xffa05576 <_tcp_rx+0x56e>;
ffa05570:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa05572:	91 bb       	[FP -0x1c] = R1;
ffa05574:	85 20       	JUMP.S 0xffa0567e <_tcp_rx+0x676>;
ffa05576:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05578:	90 bb       	[FP -0x1c] = R0;
ffa0557a:	82 20       	JUMP.S 0xffa0567e <_tcp_rx+0x676>;
ffa0557c:	ba b9       	P2 = [FP -0x14];
ffa0557e:	90 e5 31 00 	R0 = B[P2 + 0x31] (X);
ffa05582:	41 43       	R1 = R0.B (Z);
ffa05584:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa05586:	01 54       	R0 = R1 & R0;
ffa05588:	00 0c       	CC = R0 == 0x0;
ffa0558a:	4c 18       	IF CC JUMP 0xffa05622 <_tcp_rx+0x61a>;
ffa0558c:	d0 b9       	R0 = [FP -0xc];
ffa0558e:	c1 b9       	R1 = [FP -0x10];
ffa05590:	00 e3 64 01 	CALL 0xffa05858 <_httpCollate>;
ffa05594:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90100c <_g_httpContentLen> */
ffa05598:	0a e1 f4 0f 	P2.L = 0xff4;		/* (4084)	P2=0xff900ff4 <_TcpSeqHttpStart> */
ffa0559c:	11 91       	R1 = [P2];
ffa0559e:	f0 b9       	R0 = [FP -0x4];
ffa055a0:	01 50       	R0 = R1 + R0;
ffa055a2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff4 <_TcpSeqHttpStart> */
ffa055a6:	0a e1 ec 0f 	P2.L = 0xfec;		/* (4076)	P2=0xff900fec <_TcpSeqHost> */
ffa055aa:	10 93       	[P2] = R0;
ffa055ac:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fec <_TcpSeqHost> */
ffa055b0:	0a e1 10 10 	P2.L = 0x1010;		/* (4112)	P2=0xff901010 <_g_httpRxed> */
ffa055b4:	10 91       	R0 = [P2];
ffa055b6:	08 30       	R1 = R0;
ffa055b8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa055ba:	80 4f       	R0 <<= 0x10;
ffa055bc:	00 e3 74 01 	CALL 0xffa058a4 <_httpResp>;
ffa055c0:	00 0c       	CC = R0 == 0x0;
ffa055c2:	27 18       	IF CC JUMP 0xffa05610 <_tcp_rx+0x608>;
ffa055c4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901010 <_g_httpRxed> */
ffa055c8:	0a e1 ec 0f 	P2.L = 0xfec;		/* (4076)	P2=0xff900fec <_TcpSeqHost> */
ffa055cc:	10 91       	R0 = [P2];
ffa055ce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fec <_TcpSeqHost> */
ffa055d2:	0a e1 f4 0f 	P2.L = 0xff4;		/* (4084)	P2=0xff900ff4 <_TcpSeqHttpStart> */
ffa055d6:	10 93       	[P2] = R0;
ffa055d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff4 <_TcpSeqHttpStart> */
ffa055dc:	0a e1 08 10 	P2.L = 0x1008;		/* (4104)	P2=0xff901008 <_g_httpHeaderLen> */
ffa055e0:	11 91       	R1 = [P2];
ffa055e2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901008 <_g_httpHeaderLen> */
ffa055e6:	0a e1 0c 10 	P2.L = 0x100c;		/* (4108)	P2=0xff90100c <_g_httpContentLen> */
ffa055ea:	10 91       	R0 = [P2];
ffa055ec:	01 50       	R0 = R1 + R0;
ffa055ee:	08 30       	R1 = R0;
ffa055f0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa055f4:	00 e1 28 06 	R0.L = 0x628;		/* (1576)	R0=0xff900628(-7338456) */
ffa055f8:	ff e3 80 e0 	CALL 0xffa016f8 <_printf_int>;
ffa055fc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900628(-7338456) */
ffa05600:	00 e1 8c 05 	R0.L = 0x58c;		/* (1420)	R0=0xff90058c(-7338612) */
ffa05604:	ff e3 70 e0 	CALL 0xffa016e4 <_printf_str>;
ffa05608:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0560a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0560c:	00 e3 3e 00 	CALL 0xffa05688 <_tcp_burst>;
ffa05610:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90100c <_g_httpContentLen> */
ffa05614:	0a e1 10 10 	P2.L = 0x1010;		/* (4112)	P2=0xff901010 <_g_httpRxed> */
ffa05618:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0561a:	10 93       	[P2] = R0;
ffa0561c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0561e:	91 bb       	[FP -0x1c] = R1;
ffa05620:	2f 20       	JUMP.S 0xffa0567e <_tcp_rx+0x676>;
ffa05622:	d0 b9       	R0 = [FP -0xc];
ffa05624:	c1 b9       	R1 = [FP -0x10];
ffa05626:	00 e3 19 01 	CALL 0xffa05858 <_httpCollate>;
ffa0562a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901010 <_g_httpRxed> */
ffa0562e:	0a e1 d8 0e 	P2.L = 0xed8;		/* (3800)	P2=0xff900ed8 <_NetDestIP> */
ffa05632:	17 91       	R7 = [P2];
ffa05634:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed8 <_NetDestIP> */
ffa05638:	0a e1 ec 0f 	P2.L = 0xfec;		/* (4076)	P2=0xff900fec <_TcpSeqHost> */
ffa0563c:	12 91       	R2 = [P2];
ffa0563e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fec <_TcpSeqHost> */
ffa05642:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa05646:	11 91       	R1 = [P2];
ffa05648:	5f 30       	R3 = FP;
ffa0564a:	5b 67       	R3 += -0x15;		/* (-21) */
ffa0564c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0564e:	f0 b0       	[SP + 0xc] = R0;
ffa05650:	32 b1       	[SP + 0x10] = R2;
ffa05652:	71 b1       	[SP + 0x14] = R1;
ffa05654:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05656:	0b 30       	R1 = R3;
ffa05658:	17 30       	R2 = R7;
ffa0565a:	ff e3 91 fb 	CALL 0xffa04d7c <_tcp_packet_setup>;
ffa0565e:	e0 bb       	[FP -0x8] = R0;
ffa05660:	b8 e5 eb ff 	R0 = B[FP + -0x15] (X);
ffa05664:	00 43       	R0 = R0.B (X);
ffa05666:	00 0d       	CC = R0 <= 0x0;
ffa05668:	09 18       	IF CC JUMP 0xffa0567a <_tcp_rx+0x672>;
ffa0566a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0566c:	ff e3 48 fc 	CALL 0xffa04efc <_tcp_checksum_set>;
ffa05670:	ff e3 ec e6 	CALL 0xffa02448 <_bfin_EMAC_send_nocopy>;
ffa05674:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05676:	90 bb       	[FP -0x1c] = R0;
ffa05678:	03 20       	JUMP.S 0xffa0567e <_tcp_rx+0x676>;
ffa0567a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0567c:	91 bb       	[FP -0x1c] = R1;
ffa0567e:	90 b9       	R0 = [FP -0x1c];
ffa05680:	01 e8 00 00 	UNLINK;
ffa05684:	38 05       	(R7:7) = [SP++];
ffa05686:	10 00       	RTS;

ffa05688 <_tcp_burst>:
ffa05688:	70 05       	[--SP] = (R7:6);
ffa0568a:	00 e8 0f 00 	LINK 0x3c;		/* (60) */
ffa0568e:	38 b1       	[FP + 0x10] = R0;
ffa05690:	79 b1       	[FP + 0x14] = R1;
ffa05692:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05694:	80 bb       	[FP -0x20] = R0;
ffa05696:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa0569a:	0a e1 08 10 	P2.L = 0x1008;		/* (4104)	P2=0xff901008 <_g_httpHeaderLen> */
ffa0569e:	11 91       	R1 = [P2];
ffa056a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901008 <_g_httpHeaderLen> */
ffa056a4:	0a e1 0c 10 	P2.L = 0x100c;		/* (4108)	P2=0xff90100c <_g_httpContentLen> */
ffa056a8:	10 91       	R0 = [P2];
ffa056aa:	01 50       	R0 = R1 + R0;
ffa056ac:	b0 bb       	[FP -0x14] = R0;
ffa056ae:	c7 20       	JUMP.S 0xffa0583c <_tcp_burst+0x1b4>;
ffa056b0:	b1 b9       	R1 = [FP -0x14];
ffa056b2:	78 a1       	R0 = [FP + 0x14];
ffa056b4:	01 52       	R0 = R1 - R0;
ffa056b6:	c0 bb       	[FP -0x10] = R0;
ffa056b8:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa056ba:	d0 bb       	[FP -0xc] = R0;
ffa056bc:	c0 b9       	R0 = [FP -0x10];
ffa056be:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa056c2:	08 09       	CC = R0 <= R1;
ffa056c4:	04 10       	IF !CC JUMP 0xffa056cc <_tcp_burst+0x44>;
ffa056c6:	d0 b9       	R0 = [FP -0xc];
ffa056c8:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa056ca:	d0 bb       	[FP -0xc] = R0;
ffa056cc:	c1 b9       	R1 = [FP -0x10];
ffa056ce:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa056d2:	07 c4 08 40 	R0 = MIN (R1, R0);
ffa056d6:	90 bb       	[FP -0x1c] = R0;
ffa056d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90100c <_g_httpContentLen> */
ffa056dc:	0a e1 f4 0f 	P2.L = 0xff4;		/* (4084)	P2=0xff900ff4 <_TcpSeqHttpStart> */
ffa056e0:	11 91       	R1 = [P2];
ffa056e2:	78 a1       	R0 = [FP + 0x14];
ffa056e4:	01 50       	R0 = R1 + R0;
ffa056e6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff4 <_TcpSeqHttpStart> */
ffa056ea:	0a e1 ec 0f 	P2.L = 0xfec;		/* (4076)	P2=0xff900fec <_TcpSeqHost> */
ffa056ee:	10 93       	[P2] = R0;
ffa056f0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fec <_TcpSeqHost> */
ffa056f4:	0a e1 d8 0e 	P2.L = 0xed8;		/* (3800)	P2=0xff900ed8 <_NetDestIP> */
ffa056f8:	16 91       	R6 = [P2];
ffa056fa:	d0 b9       	R0 = [FP -0xc];
ffa056fc:	43 43       	R3 = R0.B (Z);
ffa056fe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed8 <_NetDestIP> */
ffa05702:	0a e1 ec 0f 	P2.L = 0xfec;		/* (4076)	P2=0xff900fec <_TcpSeqHost> */
ffa05706:	17 91       	R7 = [P2];
ffa05708:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fec <_TcpSeqHost> */
ffa0570c:	0a e1 f0 0f 	P2.L = 0xff0;		/* (4080)	P2=0xff900ff0 <_TcpSeqClient> */
ffa05710:	10 91       	R0 = [P2];
ffa05712:	91 b9       	R1 = [FP -0x1c];
ffa05714:	57 30       	R2 = FP;
ffa05716:	fa 66       	R2 += -0x21;		/* (-33) */
ffa05718:	f3 b0       	[SP + 0xc] = R3;
ffa0571a:	37 b1       	[SP + 0x10] = R7;
ffa0571c:	70 b1       	[SP + 0x14] = R0;
ffa0571e:	01 30       	R0 = R1;
ffa05720:	0a 30       	R1 = R2;
ffa05722:	16 30       	R2 = R6;
ffa05724:	ff e3 2c fb 	CALL 0xffa04d7c <_tcp_packet_setup>;
ffa05728:	a0 bb       	[FP -0x18] = R0;
ffa0572a:	b8 e5 df ff 	R0 = B[FP + -0x21] (X);
ffa0572e:	00 43       	R0 = R0.B (X);
ffa05730:	00 0d       	CC = R0 <= 0x0;
ffa05732:	85 18       	IF CC JUMP 0xffa0583c <_tcp_burst+0x1b4>;
ffa05734:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05736:	f0 bb       	[FP -0x4] = R0;
ffa05738:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff0 <_TcpSeqClient> */
ffa0573c:	0a e1 08 10 	P2.L = 0x1008;		/* (4104)	P2=0xff901008 <_g_httpHeaderLen> */
ffa05740:	11 91       	R1 = [P2];
ffa05742:	78 a1       	R0 = [FP + 0x14];
ffa05744:	88 09       	CC = R0 < R1 (IU);
ffa05746:	22 10       	IF !CC JUMP 0xffa0578a <_tcp_burst+0x102>;
ffa05748:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa0574c:	e0 bb       	[FP -0x8] = R0;
ffa0574e:	79 a1       	R1 = [FP + 0x14];
ffa05750:	e0 b9       	R0 = [FP -0x8];
ffa05752:	08 50       	R0 = R0 + R1;
ffa05754:	e0 bb       	[FP -0x8] = R0;
ffa05756:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901008 <_g_httpHeaderLen> */
ffa0575a:	0a e1 08 10 	P2.L = 0x1008;		/* (4104)	P2=0xff901008 <_g_httpHeaderLen> */
ffa0575e:	11 91       	R1 = [P2];
ffa05760:	78 a1       	R0 = [FP + 0x14];
ffa05762:	01 52       	R0 = R1 - R0;
ffa05764:	f0 bb       	[FP -0x4] = R0;
ffa05766:	e0 b9       	R0 = [FP -0x8];
ffa05768:	a1 b9       	R1 = [FP -0x18];
ffa0576a:	f2 b9       	R2 = [FP -0x4];
ffa0576c:	ff e3 4e e2 	CALL 0xffa01c08 <_memcpy_>;
ffa05770:	f0 b9       	R0 = [FP -0x4];
ffa05772:	08 30       	R1 = R0;
ffa05774:	a0 b9       	R0 = [FP -0x18];
ffa05776:	08 50       	R0 = R0 + R1;
ffa05778:	a0 bb       	[FP -0x18] = R0;
ffa0577a:	91 b9       	R1 = [FP -0x1c];
ffa0577c:	f0 b9       	R0 = [FP -0x4];
ffa0577e:	01 52       	R0 = R1 - R0;
ffa05780:	90 bb       	[FP -0x1c] = R0;
ffa05782:	f1 b9       	R1 = [FP -0x4];
ffa05784:	78 a1       	R0 = [FP + 0x14];
ffa05786:	08 50       	R0 = R0 + R1;
ffa05788:	78 b1       	[FP + 0x14] = R0;
ffa0578a:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa0578e:	e0 bb       	[FP -0x8] = R0;
ffa05790:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901008 <_g_httpHeaderLen> */
ffa05794:	0a e1 08 10 	P2.L = 0x1008;		/* (4104)	P2=0xff901008 <_g_httpHeaderLen> */
ffa05798:	11 91       	R1 = [P2];
ffa0579a:	78 a1       	R0 = [FP + 0x14];
ffa0579c:	08 52       	R0 = R0 - R1;
ffa0579e:	08 30       	R1 = R0;
ffa057a0:	e0 b9       	R0 = [FP -0x8];
ffa057a2:	08 50       	R0 = R0 + R1;
ffa057a4:	e0 bb       	[FP -0x8] = R0;
ffa057a6:	e0 b9       	R0 = [FP -0x8];
ffa057a8:	a1 b9       	R1 = [FP -0x18];
ffa057aa:	92 b9       	R2 = [FP -0x1c];
ffa057ac:	ff e3 2e e2 	CALL 0xffa01c08 <_memcpy_>;
ffa057b0:	91 b9       	R1 = [FP -0x1c];
ffa057b2:	78 a1       	R0 = [FP + 0x14];
ffa057b4:	08 50       	R0 = R0 + R1;
ffa057b6:	78 b1       	[FP + 0x14] = R0;
ffa057b8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901008 <_g_httpHeaderLen> */
ffa057bc:	0a e1 f4 0f 	P2.L = 0xff4;		/* (4084)	P2=0xff900ff4 <_TcpSeqHttpStart> */
ffa057c0:	11 91       	R1 = [P2];
ffa057c2:	78 a1       	R0 = [FP + 0x14];
ffa057c4:	01 50       	R0 = R1 + R0;
ffa057c6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ff4 <_TcpSeqHttpStart> */
ffa057ca:	0a e1 ec 0f 	P2.L = 0xfec;		/* (4076)	P2=0xff900fec <_TcpSeqHost> */
ffa057ce:	10 93       	[P2] = R0;
ffa057d0:	91 b9       	R1 = [FP -0x1c];
ffa057d2:	f0 b9       	R0 = [FP -0x4];
ffa057d4:	01 50       	R0 = R1 + R0;
ffa057d6:	ff e3 93 fb 	CALL 0xffa04efc <_tcp_checksum_set>;
ffa057da:	ff e3 37 e6 	CALL 0xffa02448 <_bfin_EMAC_send_nocopy>;
ffa057de:	80 b9       	R0 = [FP -0x20];
ffa057e0:	08 64       	R0 += 0x1;		/* (  1) */
ffa057e2:	80 bb       	[FP -0x20] = R0;
ffa057e4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fec <_TcpSeqHost> */
ffa057e8:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa057ec:	50 95       	R0 = W[P2] (X);
ffa057ee:	c0 42       	R0 = R0.L (Z);
ffa057f0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900400(-7339008) */
ffa057f4:	01 e1 f8 0e 	R1.L = 0xef8;		/* (3832)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa057f8:	10 4f       	R0 <<= 0x2;
ffa057fa:	08 50       	R0 = R0 + R1;
ffa057fc:	10 32       	P2 = R0;
ffa057fe:	52 91       	P2 = [P2];
ffa05800:	91 a2       	R1 = [P2 + 0x28];
ffa05802:	20 e1 00 10 	R0 = 0x1000 (X);		/*		R0=0x1000(4096) */
ffa05806:	01 54       	R0 = R1 & R0;
ffa05808:	00 0c       	CC = R0 == 0x0;
ffa0580a:	19 18       	IF CC JUMP 0xffa0583c <_tcp_burst+0x1b4>;
ffa0580c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa05810:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_rxIdx> */
ffa05814:	50 95       	R0 = W[P2] (X);
ffa05816:	c0 42       	R0 = R0.L (Z);
ffa05818:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa0581c:	01 e1 f8 0e 	R1.L = 0xef8;		/* (3832)	R1=0xff900ef8 <_rxbuf>(-7336200) */
ffa05820:	10 4f       	R0 <<= 0x2;
ffa05822:	08 50       	R0 = R0 + R1;
ffa05824:	10 32       	P2 = R0;
ffa05826:	52 91       	P2 = [P2];
ffa05828:	91 a2       	R1 = [P2 + 0x28];
ffa0582a:	20 e1 00 20 	R0 = 0x2000 (X);		/*		R0=0x2000(8192) */
ffa0582e:	01 54       	R0 = R1 & R0;
ffa05830:	00 0c       	CC = R0 == 0x0;
ffa05832:	05 18       	IF CC JUMP 0xffa0583c <_tcp_burst+0x1b4>;
ffa05834:	80 b9       	R0 = [FP -0x20];
ffa05836:	39 a1       	R1 = [FP + 0x10];
ffa05838:	08 50       	R0 = R0 + R1;
ffa0583a:	80 bb       	[FP -0x20] = R0;
ffa0583c:	81 b9       	R1 = [FP -0x20];
ffa0583e:	38 a1       	R0 = [FP + 0x10];
ffa05840:	81 08       	CC = R1 < R0;
ffa05842:	05 10       	IF !CC JUMP 0xffa0584c <_tcp_burst+0x1c4>;
ffa05844:	b1 b9       	R1 = [FP -0x14];
ffa05846:	78 a1       	R0 = [FP + 0x14];
ffa05848:	01 0a       	CC = R1 <= R0 (IU);
ffa0584a:	33 13       	IF !CC JUMP 0xffa056b0 <_tcp_burst+0x28>;
ffa0584c:	80 b9       	R0 = [FP -0x20];
ffa0584e:	01 e8 00 00 	UNLINK;
ffa05852:	30 05       	(R7:6) = [SP++];
ffa05854:	10 00       	RTS;
	...

ffa05858 <_httpCollate>:
ffa05858:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0585c:	b8 b0       	[FP + 0x8] = R0;
ffa0585e:	f9 b0       	[FP + 0xc] = R1;
ffa05860:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05862:	80 4f       	R0 <<= 0x10;
ffa05864:	f0 bb       	[FP -0x4] = R0;
ffa05866:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef4 <_rxIdx> */
ffa0586a:	0a e1 10 10 	P2.L = 0x1010;		/* (4112)	P2=0xff901010 <_g_httpRxed> */
ffa0586e:	10 91       	R0 = [P2];
ffa05870:	08 30       	R1 = R0;
ffa05872:	f0 b9       	R0 = [FP -0x4];
ffa05874:	08 50       	R0 = R0 + R1;
ffa05876:	f0 bb       	[FP -0x4] = R0;
ffa05878:	b8 a0       	R0 = [FP + 0x8];
ffa0587a:	f1 b9       	R1 = [FP -0x4];
ffa0587c:	fa a0       	R2 = [FP + 0xc];
ffa0587e:	ff e3 c5 e1 	CALL 0xffa01c08 <_memcpy_>;
ffa05882:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901010 <_g_httpRxed> */
ffa05886:	0a e1 10 10 	P2.L = 0x1010;		/* (4112)	P2=0xff901010 <_g_httpRxed> */
ffa0588a:	11 91       	R1 = [P2];
ffa0588c:	f8 a0       	R0 = [FP + 0xc];
ffa0588e:	01 50       	R0 = R1 + R0;
ffa05890:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901010 <_g_httpRxed> */
ffa05894:	0a e1 10 10 	P2.L = 0x1010;		/* (4112)	P2=0xff901010 <_g_httpRxed> */
ffa05898:	10 93       	[P2] = R0;
ffa0589a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0589c:	01 e8 00 00 	UNLINK;
ffa058a0:	10 00       	RTS;
	...

ffa058a4 <_httpResp>:
ffa058a4:	00 e8 2f 00 	LINK 0xbc;		/* (188) */
ffa058a8:	b8 b0       	[FP + 0x8] = R0;
ffa058aa:	f9 b0       	[FP + 0xc] = R1;
ffa058ac:	f8 a0       	R0 = [FP + 0xc];
ffa058ae:	71 60       	R1 = 0xe (X);		/*		R1=0xe( 14) */
ffa058b0:	08 09       	CC = R0 <= R1;
ffa058b2:	22 18       	IF CC JUMP 0xffa058f6 <_httpResp+0x52>;
ffa058b4:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff90000e(-7340018) */
ffa058b8:	01 e1 44 06 	R1.L = 0x644;		/* (1604)	R1=0xff900644(-7338428) */
ffa058bc:	b8 a0       	R0 = [FP + 0x8];
ffa058be:	ff e3 57 e2 	CALL 0xffa01d6c <_strcmp>;
ffa058c2:	00 0c       	CC = R0 == 0x0;
ffa058c4:	19 18       	IF CC JUMP 0xffa058f6 <_httpResp+0x52>;
ffa058c6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa058ca:	00 e1 50 06 	R0.L = 0x650;		/* (1616)	R0=0xff900650(-7338416) */
ffa058ce:	fa a0       	R2 = [FP + 0xc];
ffa058d0:	b9 a0       	R1 = [FP + 0x8];
ffa058d2:	ff e3 85 e2 	CALL 0xffa01ddc <_substr>;
ffa058d6:	00 0c       	CC = R0 == 0x0;
ffa058d8:	02 14       	IF !CC JUMP 0xffa058dc <_httpResp+0x38> (BP);
ffa058da:	99 23       	JUMP.S 0xffa0600c <_httpResp+0x768>;
ffa058dc:	00 e3 14 04 	CALL 0xffa06104 <_htmlDefault>;
ffa058e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901010 <_g_httpRxed> */
ffa058e4:	0a e1 0c 10 	P2.L = 0x100c;		/* (4108)	P2=0xff90100c <_g_httpContentLen> */
ffa058e8:	10 93       	[P2] = R0;
ffa058ea:	00 e3 99 03 	CALL 0xffa0601c <_httpHeader>;
ffa058ee:	09 68       	P1 = 0x1 (X);		/*		P1=0x1(  1) */
ffa058f0:	39 e7 d4 ff 	[FP + -0xb0] = P1;
ffa058f4:	8f 23       	JUMP.S 0xffa06012 <_httpResp+0x76e>;
ffa058f6:	f8 a0       	R0 = [FP + 0xc];
ffa058f8:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa058fa:	08 09       	CC = R0 <= R1;
ffa058fc:	85 18       	IF CC JUMP 0xffa05a06 <_httpResp+0x162>;
ffa058fe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900650(-7338416) */
ffa05902:	00 e1 58 06 	R0.L = 0x658;		/* (1624)	R0=0xff900658(-7338408) */
ffa05906:	fa a0       	R2 = [FP + 0xc];
ffa05908:	b9 a0       	R1 = [FP + 0x8];
ffa0590a:	ff e3 69 e2 	CALL 0xffa01ddc <_substr>;
ffa0590e:	00 0c       	CC = R0 == 0x0;
ffa05910:	7b 18       	IF CC JUMP 0xffa05a06 <_httpResp+0x162>;
ffa05912:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900658(-7338408) */
ffa05916:	00 e1 64 06 	R0.L = 0x664;		/* (1636)	R0=0xff900664(-7338396) */
ffa0591a:	fa a0       	R2 = [FP + 0xc];
ffa0591c:	b9 a0       	R1 = [FP + 0x8];
ffa0591e:	ff e3 5f e2 	CALL 0xffa01ddc <_substr>;
ffa05922:	70 ba       	[FP -0x64] = R0;
ffa05924:	70 b8       	R0 = [FP -0x64];
ffa05926:	00 0c       	CC = R0 == 0x0;
ffa05928:	02 14       	IF !CC JUMP 0xffa0592c <_httpResp+0x88> (BP);
ffa0592a:	71 23       	JUMP.S 0xffa0600c <_httpResp+0x768>;
ffa0592c:	b8 a0       	R0 = [FP + 0x8];
ffa0592e:	80 ba       	[FP -0x60] = R0;
ffa05930:	70 b8       	R0 = [FP -0x64];
ffa05932:	08 30       	R1 = R0;
ffa05934:	80 b8       	R0 = [FP -0x60];
ffa05936:	08 50       	R0 = R0 + R1;
ffa05938:	80 ba       	[FP -0x60] = R0;
ffa0593a:	80 b8       	R0 = [FP -0x60];
ffa0593c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0593e:	ff e3 ef e3 	CALL 0xffa0211c <_atoi>;
ffa05942:	90 ba       	[FP -0x5c] = R0;
ffa05944:	90 b8       	R0 = [FP -0x5c];
ffa05946:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa05948:	08 09       	CC = R0 <= R1;
ffa0594a:	41 18       	IF CC JUMP 0xffa059cc <_httpResp+0x128>;
ffa0594c:	90 b8       	R0 = [FP -0x5c];
ffa0594e:	21 e1 a0 0f 	R1 = 0xfa0 (X);		/*		R1=0xfa0(4000) */
ffa05952:	08 09       	CC = R0 <= R1;
ffa05954:	3c 10       	IF !CC JUMP 0xffa059cc <_httpResp+0x128>;
ffa05956:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff800664(-8386972) */
ffa0595a:	00 e1 04 08 	R0.L = 0x804;		/* (2052)	R0=0xff800804(-8386556) */
ffa0595e:	a0 ba       	[FP -0x58] = R0;
ffa05960:	aa b8       	P2 = [FP -0x58];
ffa05962:	11 91       	R1 = [P2];
ffa05964:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa05968:	28 4f       	R0 <<= 0x5;
ffa0596a:	41 54       	R1 = R1 & R0;
ffa0596c:	90 b8       	R0 = [FP -0x5c];
ffa0596e:	28 4f       	R0 <<= 0x5;
ffa05970:	01 52       	R0 = R1 - R0;
ffa05972:	b0 ba       	[FP -0x54] = R0;
ffa05974:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa05978:	c0 ba       	[FP -0x50] = R0;
ffa0597a:	b0 b8       	R0 = [FP -0x54];
ffa0597c:	d0 ba       	[FP -0x4c] = R0;
ffa0597e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05980:	e0 ba       	[FP -0x48] = R0;
ffa05982:	15 20       	JUMP.S 0xffa059ac <_httpResp+0x108>;
ffa05984:	d0 b8       	R0 = [FP -0x4c];
ffa05986:	08 30       	R1 = R0;
ffa05988:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0598a:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa0598e:	01 54       	R0 = R1 & R0;
ffa05990:	d0 ba       	[FP -0x4c] = R0;
ffa05992:	da b8       	P2 = [FP -0x4c];
ffa05994:	10 91       	R0 = [P2];
ffa05996:	ca b8       	P2 = [FP -0x50];
ffa05998:	10 93       	[P2] = R0;
ffa0599a:	c0 b8       	R0 = [FP -0x50];
ffa0599c:	20 64       	R0 += 0x4;		/* (  4) */
ffa0599e:	c0 ba       	[FP -0x50] = R0;
ffa059a0:	d0 b8       	R0 = [FP -0x4c];
ffa059a2:	20 64       	R0 += 0x4;		/* (  4) */
ffa059a4:	d0 ba       	[FP -0x4c] = R0;
ffa059a6:	e0 b8       	R0 = [FP -0x48];
ffa059a8:	08 64       	R0 += 0x1;		/* (  1) */
ffa059aa:	e0 ba       	[FP -0x48] = R0;
ffa059ac:	90 b8       	R0 = [FP -0x5c];
ffa059ae:	82 c6 18 82 	R1 = R0 << 0x3;
ffa059b2:	e0 b8       	R0 = [FP -0x48];
ffa059b4:	01 09       	CC = R1 <= R0;
ffa059b6:	e7 13       	IF !CC JUMP 0xffa05984 <_httpResp+0xe0>;
ffa059b8:	90 b8       	R0 = [FP -0x5c];
ffa059ba:	28 4f       	R0 <<= 0x5;
ffa059bc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90100c <_g_httpContentLen> */
ffa059c0:	0a e1 0c 10 	P2.L = 0x100c;		/* (4108)	P2=0xff90100c <_g_httpContentLen> */
ffa059c4:	10 93       	[P2] = R0;
ffa059c6:	00 e3 2b 03 	CALL 0xffa0601c <_httpHeader>;
ffa059ca:	1a 20       	JUMP.S 0xffa059fe <_httpResp+0x15a>;
ffa059cc:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa059d0:	f0 ba       	[FP -0x44] = R0;
ffa059d2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa059d4:	60 ba       	[FP -0x68] = R0;
ffa059d6:	f0 b8       	R0 = [FP -0x44];
ffa059d8:	2a e1 98 ff 	P2 = -0x68 (X);		/*		P2=0xffffff98(-104) */
ffa059dc:	97 5a       	P2 = FP + P2;
ffa059de:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f20 <_NetArpLut>(-7336160) */
ffa059e2:	02 e1 6c 06 	R2.L = 0x66c;		/* (1644)	R2=0xff90066c(-7338388) */
ffa059e6:	4a 30       	R1 = P2;
ffa059e8:	ff e3 68 e1 	CALL 0xffa01cb8 <_strcpy_>;
ffa059ec:	f0 ba       	[FP -0x44] = R0;
ffa059ee:	60 b8       	R0 = [FP -0x68];
ffa059f0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90ff98 */
ffa059f4:	0a e1 0c 10 	P2.L = 0x100c;		/* (4108)	P2=0xff90100c <_g_httpContentLen> */
ffa059f8:	10 93       	[P2] = R0;
ffa059fa:	00 e3 11 03 	CALL 0xffa0601c <_httpHeader>;
ffa059fe:	09 68       	P1 = 0x1 (X);		/*		P1=0x1(  1) */
ffa05a00:	39 e7 d4 ff 	[FP + -0xb0] = P1;
ffa05a04:	07 23       	JUMP.S 0xffa06012 <_httpResp+0x76e>;
ffa05a06:	f8 a0       	R0 = [FP + 0xc];
ffa05a08:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa05a0a:	08 09       	CC = R0 <= R1;
ffa05a0c:	02 14       	IF !CC JUMP 0xffa05a10 <_httpResp+0x16c> (BP);
ffa05a0e:	e8 22       	JUMP.S 0xffa05fde <_httpResp+0x73a>;
ffa05a10:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa05a14:	00 e1 98 06 	R0.L = 0x698;		/* (1688)	R0=0xff900698(-7338344) */
ffa05a18:	fa a0       	R2 = [FP + 0xc];
ffa05a1a:	b9 a0       	R1 = [FP + 0x8];
ffa05a1c:	ff e3 e0 e1 	CALL 0xffa01ddc <_substr>;
ffa05a20:	00 0c       	CC = R0 == 0x0;
ffa05a22:	02 14       	IF !CC JUMP 0xffa05a26 <_httpResp+0x182> (BP);
ffa05a24:	dd 22       	JUMP.S 0xffa05fde <_httpResp+0x73a>;
ffa05a26:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900698(-7338344) */
ffa05a2a:	00 e1 98 06 	R0.L = 0x698;		/* (1688)	R0=0xff900698(-7338344) */
ffa05a2e:	fa a0       	R2 = [FP + 0xc];
ffa05a30:	b9 a0       	R1 = [FP + 0x8];
ffa05a32:	ff e3 d5 e1 	CALL 0xffa01ddc <_substr>;
ffa05a36:	00 bb       	[FP -0x40] = R0;
ffa05a38:	00 b9       	R0 = [FP -0x40];
ffa05a3a:	08 30       	R1 = R0;
ffa05a3c:	b8 a0       	R0 = [FP + 0x8];
ffa05a3e:	08 50       	R0 = R0 + R1;
ffa05a40:	b8 b0       	[FP + 0x8] = R0;
ffa05a42:	f9 a0       	R1 = [FP + 0xc];
ffa05a44:	00 b9       	R0 = [FP -0x40];
ffa05a46:	01 52       	R0 = R1 - R0;
ffa05a48:	f8 b0       	[FP + 0xc] = R0;
ffa05a4a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05a4c:	b8 e6 c7 ff 	B[FP + -0x39] = R0;
ffa05a50:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa05a54:	00 e1 a0 06 	R0.L = 0x6a0;		/* (1696)	R0=0xff9006a0(-7338336) */
ffa05a58:	fa a0       	R2 = [FP + 0xc];
ffa05a5a:	b9 a0       	R1 = [FP + 0x8];
ffa05a5c:	ff e3 c0 e1 	CALL 0xffa01ddc <_substr>;
ffa05a60:	00 0c       	CC = R0 == 0x0;
ffa05a62:	35 18       	IF CC JUMP 0xffa05acc <_httpResp+0x228>;
ffa05a64:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9006a0(-7338336) */
ffa05a68:	00 e1 b0 06 	R0.L = 0x6b0;		/* (1712)	R0=0xff9006b0(-7338320) */
ffa05a6c:	fa a0       	R2 = [FP + 0xc];
ffa05a6e:	b9 a0       	R1 = [FP + 0x8];
ffa05a70:	ff e3 b6 e1 	CALL 0xffa01ddc <_substr>;
ffa05a74:	00 0c       	CC = R0 == 0x0;
ffa05a76:	18 18       	IF CC JUMP 0xffa05aa6 <_httpResp+0x202>;
ffa05a78:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff8006b0(-8386896) */
ffa05a7c:	00 e1 04 08 	R0.L = 0x804;		/* (2052)	R0=0xff800804(-8386556) */
ffa05a80:	30 bb       	[FP -0x34] = R0;
ffa05a82:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff800804(-8386556) */
ffa05a86:	00 e1 08 08 	R0.L = 0x808;		/* (2056)	R0=0xff800808(-8386552) */
ffa05a8a:	40 bb       	[FP -0x30] = R0;
ffa05a8c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90100c <_g_httpContentLen> */
ffa05a90:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xff900c68 <_g_streamEnabled> */
ffa05a94:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05a96:	10 9b       	B[P2] = R0;
ffa05a98:	3a b9       	P2 = [FP -0x34];
ffa05a9a:	10 91       	R0 = [P2];
ffa05a9c:	4a b9       	P2 = [FP -0x30];
ffa05a9e:	10 93       	[P2] = R0;
ffa05aa0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05aa2:	b8 e6 c7 ff 	B[FP + -0x39] = R0;
ffa05aa6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05aaa:	00 e1 b8 06 	R0.L = 0x6b8;		/* (1720)	R0=0xff9006b8(-7338312) */
ffa05aae:	fa a0       	R2 = [FP + 0xc];
ffa05ab0:	b9 a0       	R1 = [FP + 0x8];
ffa05ab2:	ff e3 95 e1 	CALL 0xffa01ddc <_substr>;
ffa05ab6:	00 0c       	CC = R0 == 0x0;
ffa05ab8:	0a 18       	IF CC JUMP 0xffa05acc <_httpResp+0x228>;
ffa05aba:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c68 <_g_streamEnabled> */
ffa05abe:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xff900c68 <_g_streamEnabled> */
ffa05ac2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05ac4:	10 9b       	B[P2] = R0;
ffa05ac6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05ac8:	b8 e6 c7 ff 	B[FP + -0x39] = R0;
ffa05acc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05ad0:	00 e1 c4 06 	R0.L = 0x6c4;		/* (1732)	R0=0xff9006c4(-7338300) */
ffa05ad4:	fa a0       	R2 = [FP + 0xc];
ffa05ad6:	b9 a0       	R1 = [FP + 0x8];
ffa05ad8:	ff e3 82 e1 	CALL 0xffa01ddc <_substr>;
ffa05adc:	00 0c       	CC = R0 == 0x0;
ffa05ade:	27 18       	IF CC JUMP 0xffa05b2c <_httpResp+0x288>;
ffa05ae0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9006c4(-7338300) */
ffa05ae4:	00 e1 b0 06 	R0.L = 0x6b0;		/* (1712)	R0=0xff9006b0(-7338320) */
ffa05ae8:	fa a0       	R2 = [FP + 0xc];
ffa05aea:	b9 a0       	R1 = [FP + 0x8];
ffa05aec:	ff e3 78 e1 	CALL 0xffa01ddc <_substr>;
ffa05af0:	00 0c       	CC = R0 == 0x0;
ffa05af2:	0a 18       	IF CC JUMP 0xffa05b06 <_httpResp+0x262>;
ffa05af4:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c68 */
ffa05af8:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa05afc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05afe:	10 9b       	B[P2] = R0;
ffa05b00:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05b02:	b8 e6 c7 ff 	B[FP + -0x39] = R0;
ffa05b06:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05b0a:	00 e1 b8 06 	R0.L = 0x6b8;		/* (1720)	R0=0xff9006b8(-7338312) */
ffa05b0e:	fa a0       	R2 = [FP + 0xc];
ffa05b10:	b9 a0       	R1 = [FP + 0x8];
ffa05b12:	ff e3 65 e1 	CALL 0xffa01ddc <_substr>;
ffa05b16:	00 0c       	CC = R0 == 0x0;
ffa05b18:	0a 18       	IF CC JUMP 0xffa05b2c <_httpResp+0x288>;
ffa05b1a:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa05b1e:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa05b22:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05b24:	10 9b       	B[P2] = R0;
ffa05b26:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05b28:	b8 e6 c7 ff 	B[FP + -0x39] = R0;
ffa05b2c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05b30:	00 e1 d0 06 	R0.L = 0x6d0;		/* (1744)	R0=0xff9006d0(-7338288) */
ffa05b34:	fa a0       	R2 = [FP + 0xc];
ffa05b36:	b9 a0       	R1 = [FP + 0x8];
ffa05b38:	ff e3 52 e1 	CALL 0xffa01ddc <_substr>;
ffa05b3c:	00 bb       	[FP -0x40] = R0;
ffa05b3e:	00 b9       	R0 = [FP -0x40];
ffa05b40:	00 0c       	CC = R0 == 0x0;
ffa05b42:	0b 18       	IF CC JUMP 0xffa05b58 <_httpResp+0x2b4>;
ffa05b44:	b8 a0       	R0 = [FP + 0x8];
ffa05b46:	20 bb       	[FP -0x38] = R0;
ffa05b48:	00 b9       	R0 = [FP -0x40];
ffa05b4a:	08 30       	R1 = R0;
ffa05b4c:	20 b9       	R0 = [FP -0x38];
ffa05b4e:	08 50       	R0 = R0 + R1;
ffa05b50:	20 bb       	[FP -0x38] = R0;
ffa05b52:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05b54:	b8 e6 c7 ff 	B[FP + -0x39] = R0;
ffa05b58:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05b5c:	00 e1 dc 06 	R0.L = 0x6dc;		/* (1756)	R0=0xff9006dc(-7338276) */
ffa05b60:	fa a0       	R2 = [FP + 0xc];
ffa05b62:	b9 a0       	R1 = [FP + 0x8];
ffa05b64:	ff e3 3c e1 	CALL 0xffa01ddc <_substr>;
ffa05b68:	00 bb       	[FP -0x40] = R0;
ffa05b6a:	00 b9       	R0 = [FP -0x40];
ffa05b6c:	00 0c       	CC = R0 == 0x0;
ffa05b6e:	0b 18       	IF CC JUMP 0xffa05b84 <_httpResp+0x2e0>;
ffa05b70:	b8 a0       	R0 = [FP + 0x8];
ffa05b72:	20 bb       	[FP -0x38] = R0;
ffa05b74:	00 b9       	R0 = [FP -0x40];
ffa05b76:	08 30       	R1 = R0;
ffa05b78:	20 b9       	R0 = [FP -0x38];
ffa05b7a:	08 50       	R0 = R0 + R1;
ffa05b7c:	20 bb       	[FP -0x38] = R0;
ffa05b7e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05b80:	b8 e6 c7 ff 	B[FP + -0x39] = R0;
ffa05b84:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05b88:	00 e1 e8 06 	R0.L = 0x6e8;		/* (1768)	R0=0xff9006e8(-7338264) */
ffa05b8c:	fa a0       	R2 = [FP + 0xc];
ffa05b8e:	b9 a0       	R1 = [FP + 0x8];
ffa05b90:	ff e3 26 e1 	CALL 0xffa01ddc <_substr>;
ffa05b94:	00 bb       	[FP -0x40] = R0;
ffa05b96:	00 b9       	R0 = [FP -0x40];
ffa05b98:	00 0c       	CC = R0 == 0x0;
ffa05b9a:	0b 18       	IF CC JUMP 0xffa05bb0 <_httpResp+0x30c>;
ffa05b9c:	b8 a0       	R0 = [FP + 0x8];
ffa05b9e:	20 bb       	[FP -0x38] = R0;
ffa05ba0:	00 b9       	R0 = [FP -0x40];
ffa05ba2:	08 30       	R1 = R0;
ffa05ba4:	20 b9       	R0 = [FP -0x38];
ffa05ba6:	08 50       	R0 = R0 + R1;
ffa05ba8:	20 bb       	[FP -0x38] = R0;
ffa05baa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05bac:	b8 e6 c7 ff 	B[FP + -0x39] = R0;
ffa05bb0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05bb4:	00 e1 f4 06 	R0.L = 0x6f4;		/* (1780)	R0=0xff9006f4(-7338252) */
ffa05bb8:	fa a0       	R2 = [FP + 0xc];
ffa05bba:	b9 a0       	R1 = [FP + 0x8];
ffa05bbc:	ff e3 10 e1 	CALL 0xffa01ddc <_substr>;
ffa05bc0:	00 bb       	[FP -0x40] = R0;
ffa05bc2:	00 b9       	R0 = [FP -0x40];
ffa05bc4:	00 0c       	CC = R0 == 0x0;
ffa05bc6:	0b 18       	IF CC JUMP 0xffa05bdc <_httpResp+0x338>;
ffa05bc8:	b8 a0       	R0 = [FP + 0x8];
ffa05bca:	20 bb       	[FP -0x38] = R0;
ffa05bcc:	00 b9       	R0 = [FP -0x40];
ffa05bce:	08 30       	R1 = R0;
ffa05bd0:	20 b9       	R0 = [FP -0x38];
ffa05bd2:	08 50       	R0 = R0 + R1;
ffa05bd4:	20 bb       	[FP -0x38] = R0;
ffa05bd6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05bd8:	b8 e6 c7 ff 	B[FP + -0x39] = R0;
ffa05bdc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05be0:	00 e1 00 07 	R0.L = 0x700;		/* (1792)	R0=0xff900700(-7338240) */
ffa05be4:	fa a0       	R2 = [FP + 0xc];
ffa05be6:	b9 a0       	R1 = [FP + 0x8];
ffa05be8:	ff e3 fa e0 	CALL 0xffa01ddc <_substr>;
ffa05bec:	00 bb       	[FP -0x40] = R0;
ffa05bee:	00 b9       	R0 = [FP -0x40];
ffa05bf0:	00 0c       	CC = R0 == 0x0;
ffa05bf2:	2d 18       	IF CC JUMP 0xffa05c4c <_httpResp+0x3a8>;
ffa05bf4:	00 b9       	R0 = [FP -0x40];
ffa05bf6:	08 30       	R1 = R0;
ffa05bf8:	b8 a0       	R0 = [FP + 0x8];
ffa05bfa:	08 50       	R0 = R0 + R1;
ffa05bfc:	b8 b0       	[FP + 0x8] = R0;
ffa05bfe:	f9 a0       	R1 = [FP + 0xc];
ffa05c00:	00 b9       	R0 = [FP -0x40];
ffa05c02:	01 52       	R0 = R1 - R0;
ffa05c04:	f8 b0       	[FP + 0xc] = R0;
ffa05c06:	b8 a0       	R0 = [FP + 0x8];
ffa05c08:	20 bb       	[FP -0x38] = R0;
ffa05c0a:	20 b9       	R0 = [FP -0x38];
ffa05c0c:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa05c0e:	ff e3 87 e2 	CALL 0xffa0211c <_atoi>;
ffa05c12:	40 43       	R0 = R0.B (Z);
ffa05c14:	50 bb       	[FP -0x2c] = R0;
ffa05c16:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa05c1a:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa05c1e:	10 91       	R0 = [P2];
ffa05c20:	40 4d       	R0 >>>= 0x8;
ffa05c22:	40 4f       	R0 <<= 0x8;
ffa05c24:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa05c28:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa05c2c:	10 93       	[P2] = R0;
ffa05c2e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa05c32:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa05c36:	11 91       	R1 = [P2];
ffa05c38:	50 b9       	R0 = [FP -0x2c];
ffa05c3a:	01 50       	R0 = R1 + R0;
ffa05c3c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa05c40:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa05c44:	10 93       	[P2] = R0;
ffa05c46:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05c48:	b8 e6 c7 ff 	B[FP + -0x39] = R0;
ffa05c4c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05c50:	00 e1 08 07 	R0.L = 0x708;		/* (1800)	R0=0xff900708(-7338232) */
ffa05c54:	fa a0       	R2 = [FP + 0xc];
ffa05c56:	b9 a0       	R1 = [FP + 0x8];
ffa05c58:	ff e3 c2 e0 	CALL 0xffa01ddc <_substr>;
ffa05c5c:	00 bb       	[FP -0x40] = R0;
ffa05c5e:	00 b9       	R0 = [FP -0x40];
ffa05c60:	00 0c       	CC = R0 == 0x0;
ffa05c62:	31 18       	IF CC JUMP 0xffa05cc4 <_httpResp+0x420>;
ffa05c64:	00 b9       	R0 = [FP -0x40];
ffa05c66:	08 30       	R1 = R0;
ffa05c68:	b8 a0       	R0 = [FP + 0x8];
ffa05c6a:	08 50       	R0 = R0 + R1;
ffa05c6c:	b8 b0       	[FP + 0x8] = R0;
ffa05c6e:	f9 a0       	R1 = [FP + 0xc];
ffa05c70:	00 b9       	R0 = [FP -0x40];
ffa05c72:	01 52       	R0 = R1 - R0;
ffa05c74:	f8 b0       	[FP + 0xc] = R0;
ffa05c76:	b8 a0       	R0 = [FP + 0x8];
ffa05c78:	20 bb       	[FP -0x38] = R0;
ffa05c7a:	20 b9       	R0 = [FP -0x38];
ffa05c7c:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa05c7e:	ff e3 4f e2 	CALL 0xffa0211c <_atoi>;
ffa05c82:	40 43       	R0 = R0.B (Z);
ffa05c84:	60 bb       	[FP -0x28] = R0;
ffa05c86:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa05c8a:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa05c8e:	11 91       	R1 = [P2];
ffa05c90:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa05c92:	00 e1 ff 00 	R0.L = 0xff;		/* (255)	R0=0xffff00ff(-65281) */
ffa05c96:	01 54       	R0 = R1 & R0;
ffa05c98:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa05c9c:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa05ca0:	10 93       	[P2] = R0;
ffa05ca2:	60 b9       	R0 = [FP -0x28];
ffa05ca4:	82 c6 40 82 	R1 = R0 << 0x8;
ffa05ca8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa05cac:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa05cb0:	10 91       	R0 = [P2];
ffa05cb2:	01 50       	R0 = R1 + R0;
ffa05cb4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa05cb8:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa05cbc:	10 93       	[P2] = R0;
ffa05cbe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05cc0:	b8 e6 c7 ff 	B[FP + -0x39] = R0;
ffa05cc4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05cc8:	00 e1 10 07 	R0.L = 0x710;		/* (1808)	R0=0xff900710(-7338224) */
ffa05ccc:	fa a0       	R2 = [FP + 0xc];
ffa05cce:	b9 a0       	R1 = [FP + 0x8];
ffa05cd0:	ff e3 86 e0 	CALL 0xffa01ddc <_substr>;
ffa05cd4:	00 bb       	[FP -0x40] = R0;
ffa05cd6:	00 b9       	R0 = [FP -0x40];
ffa05cd8:	00 0c       	CC = R0 == 0x0;
ffa05cda:	31 18       	IF CC JUMP 0xffa05d3c <_httpResp+0x498>;
ffa05cdc:	00 b9       	R0 = [FP -0x40];
ffa05cde:	08 30       	R1 = R0;
ffa05ce0:	b8 a0       	R0 = [FP + 0x8];
ffa05ce2:	08 50       	R0 = R0 + R1;
ffa05ce4:	b8 b0       	[FP + 0x8] = R0;
ffa05ce6:	f9 a0       	R1 = [FP + 0xc];
ffa05ce8:	00 b9       	R0 = [FP -0x40];
ffa05cea:	01 52       	R0 = R1 - R0;
ffa05cec:	f8 b0       	[FP + 0xc] = R0;
ffa05cee:	b8 a0       	R0 = [FP + 0x8];
ffa05cf0:	20 bb       	[FP -0x38] = R0;
ffa05cf2:	20 b9       	R0 = [FP -0x38];
ffa05cf4:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa05cf6:	ff e3 13 e2 	CALL 0xffa0211c <_atoi>;
ffa05cfa:	40 43       	R0 = R0.B (Z);
ffa05cfc:	70 bb       	[FP -0x24] = R0;
ffa05cfe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa05d02:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa05d06:	11 91       	R1 = [P2];
ffa05d08:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa05d0a:	40 e1 00 ff 	R0.H = 0xff00;		/* (-256)	R0=0xff00ffff(-16711681) */
ffa05d0e:	01 54       	R0 = R1 & R0;
ffa05d10:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa05d14:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa05d18:	10 93       	[P2] = R0;
ffa05d1a:	70 b9       	R0 = [FP -0x24];
ffa05d1c:	82 c6 80 82 	R1 = R0 << 0x10;
ffa05d20:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa05d24:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa05d28:	10 91       	R0 = [P2];
ffa05d2a:	01 50       	R0 = R1 + R0;
ffa05d2c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa05d30:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa05d34:	10 93       	[P2] = R0;
ffa05d36:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05d38:	b8 e6 c7 ff 	B[FP + -0x39] = R0;
ffa05d3c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05d40:	00 e1 18 07 	R0.L = 0x718;		/* (1816)	R0=0xff900718(-7338216) */
ffa05d44:	fa a0       	R2 = [FP + 0xc];
ffa05d46:	b9 a0       	R1 = [FP + 0x8];
ffa05d48:	ff e3 4a e0 	CALL 0xffa01ddc <_substr>;
ffa05d4c:	00 bb       	[FP -0x40] = R0;
ffa05d4e:	00 b9       	R0 = [FP -0x40];
ffa05d50:	00 0c       	CC = R0 == 0x0;
ffa05d52:	31 18       	IF CC JUMP 0xffa05db4 <_httpResp+0x510>;
ffa05d54:	00 b9       	R0 = [FP -0x40];
ffa05d56:	08 30       	R1 = R0;
ffa05d58:	b8 a0       	R0 = [FP + 0x8];
ffa05d5a:	08 50       	R0 = R0 + R1;
ffa05d5c:	b8 b0       	[FP + 0x8] = R0;
ffa05d5e:	f9 a0       	R1 = [FP + 0xc];
ffa05d60:	00 b9       	R0 = [FP -0x40];
ffa05d62:	01 52       	R0 = R1 - R0;
ffa05d64:	f8 b0       	[FP + 0xc] = R0;
ffa05d66:	b8 a0       	R0 = [FP + 0x8];
ffa05d68:	20 bb       	[FP -0x38] = R0;
ffa05d6a:	20 b9       	R0 = [FP -0x38];
ffa05d6c:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa05d6e:	ff e3 d7 e1 	CALL 0xffa0211c <_atoi>;
ffa05d72:	40 43       	R0 = R0.B (Z);
ffa05d74:	80 bb       	[FP -0x20] = R0;
ffa05d76:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa05d7a:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa05d7e:	11 91       	R1 = [P2];
ffa05d80:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa05d82:	40 e1 ff 00 	R0.H = 0xff;		/* (255)	R0=0xffffff(16777215) */
ffa05d86:	01 54       	R0 = R1 & R0;
ffa05d88:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa05d8c:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa05d90:	10 93       	[P2] = R0;
ffa05d92:	80 b9       	R0 = [FP -0x20];
ffa05d94:	82 c6 c0 82 	R1 = R0 << 0x18;
ffa05d98:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa05d9c:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa05da0:	10 91       	R0 = [P2];
ffa05da2:	01 50       	R0 = R1 + R0;
ffa05da4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa05da8:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa05dac:	10 93       	[P2] = R0;
ffa05dae:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05db0:	b8 e6 c7 ff 	B[FP + -0x39] = R0;
ffa05db4:	b8 e5 c7 ff 	R0 = B[FP + -0x39] (X);
ffa05db8:	00 0c       	CC = R0 == 0x0;
ffa05dba:	0e 18       	IF CC JUMP 0xffa05dd6 <_httpResp+0x532>;
ffa05dbc:	00 e3 a4 01 	CALL 0xffa06104 <_htmlDefault>;
ffa05dc0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f18 <_NetDataDestIP> */
ffa05dc4:	0a e1 0c 10 	P2.L = 0x100c;		/* (4108)	P2=0xff90100c <_g_httpContentLen> */
ffa05dc8:	10 93       	[P2] = R0;
ffa05dca:	00 e3 29 01 	CALL 0xffa0601c <_httpHeader>;
ffa05dce:	09 68       	P1 = 0x1 (X);		/*		P1=0x1(  1) */
ffa05dd0:	39 e7 d4 ff 	[FP + -0xb0] = P1;
ffa05dd4:	1f 21       	JUMP.S 0xffa06012 <_httpResp+0x76e>;
ffa05dd6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05dda:	00 e1 20 07 	R0.L = 0x720;		/* (1824)	R0=0xff900720(-7338208) */
ffa05dde:	fa a0       	R2 = [FP + 0xc];
ffa05de0:	b9 a0       	R1 = [FP + 0x8];
ffa05de2:	ff e3 fd df 	CALL 0xffa01ddc <_substr>;
ffa05de6:	00 0c       	CC = R0 == 0x0;
ffa05de8:	12 19       	IF CC JUMP 0xffa0600c <_httpResp+0x768>;
ffa05dea:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05dec:	90 bb       	[FP -0x1c] = R0;
ffa05dee:	0e 20       	JUMP.S 0xffa05e0a <_httpResp+0x566>;
ffa05df0:	90 b9       	R0 = [FP -0x1c];
ffa05df2:	08 32       	P1 = R0;
ffa05df4:	4a 44       	P2 = P1 << 0x2;
ffa05df6:	ba 5a       	P2 = P2 + FP;
ffa05df8:	20 e1 54 ff 	R0 = -0xac (X);		/*		R0=0xffffff54(-172) */
ffa05dfc:	08 32       	P1 = R0;
ffa05dfe:	8a 5a       	P2 = P2 + P1;
ffa05e00:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05e02:	10 93       	[P2] = R0;
ffa05e04:	90 b9       	R0 = [FP -0x1c];
ffa05e06:	08 64       	R0 += 0x1;		/* (  1) */
ffa05e08:	90 bb       	[FP -0x1c] = R0;
ffa05e0a:	90 b9       	R0 = [FP -0x1c];
ffa05e0c:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa05e0e:	08 09       	CC = R0 <= R1;
ffa05e10:	f0 1b       	IF CC JUMP 0xffa05df0 <_httpResp+0x54c>;
ffa05e12:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff800000(-8388608) */
ffa05e16:	00 e1 04 08 	R0.L = 0x804;		/* (2052)	R0=0xff800804(-8386556) */
ffa05e1a:	b0 bb       	[FP -0x14] = R0;
ffa05e1c:	ba b9       	P2 = [FP -0x14];
ffa05e1e:	11 91       	R1 = [P2];
ffa05e20:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa05e24:	28 4f       	R0 <<= 0x5;
ffa05e26:	41 54       	R1 = R1 & R0;
ffa05e28:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa05e2a:	80 4f       	R0 <<= 0x10;
ffa05e2c:	01 50       	R0 = R1 + R0;
ffa05e2e:	c0 bb       	[FP -0x10] = R0;
ffa05e30:	c1 b9       	R1 = [FP -0x10];
ffa05e32:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa05e34:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa05e38:	01 54       	R0 = R1 & R0;
ffa05e3a:	c0 bb       	[FP -0x10] = R0;
ffa05e3c:	c0 b9       	R0 = [FP -0x10];
ffa05e3e:	d0 bb       	[FP -0xc] = R0;
ffa05e40:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05e42:	a0 bb       	[FP -0x18] = R0;
ffa05e44:	2e 20       	JUMP.S 0xffa05ea0 <_httpResp+0x5fc>;
ffa05e46:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05e48:	90 bb       	[FP -0x1c] = R0;
ffa05e4a:	24 20       	JUMP.S 0xffa05e92 <_httpResp+0x5ee>;
ffa05e4c:	92 b9       	R2 = [FP -0x1c];
ffa05e4e:	90 b9       	R0 = [FP -0x1c];
ffa05e50:	08 32       	P1 = R0;
ffa05e52:	4a 44       	P2 = P1 << 0x2;
ffa05e54:	ba 5a       	P2 = P2 + FP;
ffa05e56:	20 e1 54 ff 	R0 = -0xac (X);		/*		R0=0xffffff54(-172) */
ffa05e5a:	08 32       	P1 = R0;
ffa05e5c:	8a 5a       	P2 = P2 + P1;
ffa05e5e:	11 91       	R1 = [P2];
ffa05e60:	da b9       	P2 = [FP -0xc];
ffa05e62:	50 95       	R0 = W[P2] (X);
ffa05e64:	c0 42       	R0 = R0.L (Z);
ffa05e66:	41 50       	R1 = R1 + R0;
ffa05e68:	0a 32       	P1 = R2;
ffa05e6a:	4a 44       	P2 = P1 << 0x2;
ffa05e6c:	ba 5a       	P2 = P2 + FP;
ffa05e6e:	20 e1 54 ff 	R0 = -0xac (X);		/*		R0=0xffffff54(-172) */
ffa05e72:	08 32       	P1 = R0;
ffa05e74:	8a 5a       	P2 = P2 + P1;
ffa05e76:	11 93       	[P2] = R1;
ffa05e78:	d0 b9       	R0 = [FP -0xc];
ffa05e7a:	10 64       	R0 += 0x2;		/* (  2) */
ffa05e7c:	d0 bb       	[FP -0xc] = R0;
ffa05e7e:	d0 b9       	R0 = [FP -0xc];
ffa05e80:	08 30       	R1 = R0;
ffa05e82:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa05e84:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa05e88:	01 54       	R0 = R1 & R0;
ffa05e8a:	d0 bb       	[FP -0xc] = R0;
ffa05e8c:	90 b9       	R0 = [FP -0x1c];
ffa05e8e:	08 64       	R0 += 0x1;		/* (  1) */
ffa05e90:	90 bb       	[FP -0x1c] = R0;
ffa05e92:	90 b9       	R0 = [FP -0x1c];
ffa05e94:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa05e96:	08 09       	CC = R0 <= R1;
ffa05e98:	da 1b       	IF CC JUMP 0xffa05e4c <_httpResp+0x5a8>;
ffa05e9a:	a0 b9       	R0 = [FP -0x18];
ffa05e9c:	08 64       	R0 += 0x1;		/* (  1) */
ffa05e9e:	a0 bb       	[FP -0x18] = R0;
ffa05ea0:	a0 b9       	R0 = [FP -0x18];
ffa05ea2:	21 e1 ff 07 	R1 = 0x7ff (X);		/*		R1=0x7ff(2047) */
ffa05ea6:	08 09       	CC = R0 <= R1;
ffa05ea8:	cf 1b       	IF CC JUMP 0xffa05e46 <_httpResp+0x5a2>;
ffa05eaa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05eac:	90 bb       	[FP -0x1c] = R0;
ffa05eae:	18 20       	JUMP.S 0xffa05ede <_httpResp+0x63a>;
ffa05eb0:	92 b9       	R2 = [FP -0x1c];
ffa05eb2:	90 b9       	R0 = [FP -0x1c];
ffa05eb4:	08 32       	P1 = R0;
ffa05eb6:	4a 44       	P2 = P1 << 0x2;
ffa05eb8:	ba 5a       	P2 = P2 + FP;
ffa05eba:	20 e1 54 ff 	R0 = -0xac (X);		/*		R0=0xffffff54(-172) */
ffa05ebe:	08 32       	P1 = R0;
ffa05ec0:	8a 5a       	P2 = P2 + P1;
ffa05ec2:	10 91       	R0 = [P2];
ffa05ec4:	82 c6 a8 03 	R1 = R0 >>> 0xb;
ffa05ec8:	0a 32       	P1 = R2;
ffa05eca:	4a 44       	P2 = P1 << 0x2;
ffa05ecc:	ba 5a       	P2 = P2 + FP;
ffa05ece:	20 e1 54 ff 	R0 = -0xac (X);		/*		R0=0xffffff54(-172) */
ffa05ed2:	08 32       	P1 = R0;
ffa05ed4:	8a 5a       	P2 = P2 + P1;
ffa05ed6:	11 93       	[P2] = R1;
ffa05ed8:	90 b9       	R0 = [FP -0x1c];
ffa05eda:	08 64       	R0 += 0x1;		/* (  1) */
ffa05edc:	90 bb       	[FP -0x1c] = R0;
ffa05ede:	90 b9       	R0 = [FP -0x1c];
ffa05ee0:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa05ee2:	08 09       	CC = R0 <= R1;
ffa05ee4:	e6 1b       	IF CC JUMP 0xffa05eb0 <_httpResp+0x60c>;
ffa05ee6:	00 e3 0f 01 	CALL 0xffa06104 <_htmlDefault>;
ffa05eea:	50 ba       	[FP -0x6c] = R0;
ffa05eec:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa05ef0:	e0 bb       	[FP -0x8] = R0;
ffa05ef2:	50 b8       	R0 = [FP -0x6c];
ffa05ef4:	68 67       	R0 += -0x13;		/* (-19) */
ffa05ef6:	50 ba       	[FP -0x6c] = R0;
ffa05ef8:	50 b8       	R0 = [FP -0x6c];
ffa05efa:	08 30       	R1 = R0;
ffa05efc:	e0 b9       	R0 = [FP -0x8];
ffa05efe:	08 50       	R0 = R0 + R1;
ffa05f00:	e0 bb       	[FP -0x8] = R0;
ffa05f02:	e0 b9       	R0 = [FP -0x8];
ffa05f04:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa05f08:	97 5a       	P2 = FP + P2;
ffa05f0a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90066c(-7338388) */
ffa05f0e:	02 e1 30 07 	R2.L = 0x730;		/* (1840)	R2=0xff900730(-7338192) */
ffa05f12:	4a 30       	R1 = P2;
ffa05f14:	ff e3 d2 de 	CALL 0xffa01cb8 <_strcpy_>;
ffa05f18:	e0 bb       	[FP -0x8] = R0;
ffa05f1a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05f1c:	90 bb       	[FP -0x1c] = R0;
ffa05f1e:	44 20       	JUMP.S 0xffa05fa6 <_httpResp+0x702>;
ffa05f20:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05f22:	f0 bb       	[FP -0x4] = R0;
ffa05f24:	e0 b9       	R0 = [FP -0x8];
ffa05f26:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa05f2a:	97 5a       	P2 = FP + P2;
ffa05f2c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900730(-7338192) */
ffa05f30:	02 e1 3c 07 	R2.L = 0x73c;		/* (1852)	R2=0xff90073c(-7338180) */
ffa05f34:	4a 30       	R1 = P2;
ffa05f36:	ff e3 c1 de 	CALL 0xffa01cb8 <_strcpy_>;
ffa05f3a:	e0 bb       	[FP -0x8] = R0;
ffa05f3c:	e0 b9       	R0 = [FP -0x8];
ffa05f3e:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa05f42:	97 5a       	P2 = FP + P2;
ffa05f44:	92 b9       	R2 = [FP -0x1c];
ffa05f46:	4a 30       	R1 = P2;
ffa05f48:	ff e3 b6 e0 	CALL 0xffa020b4 <_strprintf_int>;
ffa05f4c:	e0 bb       	[FP -0x8] = R0;
ffa05f4e:	e0 b9       	R0 = [FP -0x8];
ffa05f50:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa05f54:	97 5a       	P2 = FP + P2;
ffa05f56:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90073c(-7338180) */
ffa05f5a:	02 e1 50 07 	R2.L = 0x750;		/* (1872)	R2=0xff900750(-7338160) */
ffa05f5e:	4a 30       	R1 = P2;
ffa05f60:	ff e3 ac de 	CALL 0xffa01cb8 <_strcpy_>;
ffa05f64:	e0 bb       	[FP -0x8] = R0;
ffa05f66:	f0 b9       	R0 = [FP -0x4];
ffa05f68:	08 32       	P1 = R0;
ffa05f6a:	4a 44       	P2 = P1 << 0x2;
ffa05f6c:	ba 5a       	P2 = P2 + FP;
ffa05f6e:	20 e1 54 ff 	R0 = -0xac (X);		/*		R0=0xffffff54(-172) */
ffa05f72:	08 32       	P1 = R0;
ffa05f74:	8a 5a       	P2 = P2 + P1;
ffa05f76:	12 91       	R2 = [P2];
ffa05f78:	e0 b9       	R0 = [FP -0x8];
ffa05f7a:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa05f7e:	97 5a       	P2 = FP + P2;
ffa05f80:	4a 30       	R1 = P2;
ffa05f82:	ff e3 99 e0 	CALL 0xffa020b4 <_strprintf_int>;
ffa05f86:	e0 bb       	[FP -0x8] = R0;
ffa05f88:	e0 b9       	R0 = [FP -0x8];
ffa05f8a:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa05f8e:	97 5a       	P2 = FP + P2;
ffa05f90:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900750(-7338160) */
ffa05f94:	02 e1 60 07 	R2.L = 0x760;		/* (1888)	R2=0xff900760(-7338144) */
ffa05f98:	4a 30       	R1 = P2;
ffa05f9a:	ff e3 8f de 	CALL 0xffa01cb8 <_strcpy_>;
ffa05f9e:	e0 bb       	[FP -0x8] = R0;
ffa05fa0:	90 b9       	R0 = [FP -0x1c];
ffa05fa2:	08 64       	R0 += 0x1;		/* (  1) */
ffa05fa4:	90 bb       	[FP -0x1c] = R0;
ffa05fa6:	90 b9       	R0 = [FP -0x1c];
ffa05fa8:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa05faa:	08 09       	CC = R0 <= R1;
ffa05fac:	ba 1b       	IF CC JUMP 0xffa05f20 <_httpResp+0x67c>;
ffa05fae:	e0 b9       	R0 = [FP -0x8];
ffa05fb0:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa05fb4:	97 5a       	P2 = FP + P2;
ffa05fb6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900760(-7338144) */
ffa05fba:	02 e1 6c 07 	R2.L = 0x76c;		/* (1900)	R2=0xff90076c(-7338132) */
ffa05fbe:	4a 30       	R1 = P2;
ffa05fc0:	ff e3 7c de 	CALL 0xffa01cb8 <_strcpy_>;
ffa05fc4:	e0 bb       	[FP -0x8] = R0;
ffa05fc6:	50 b8       	R0 = [FP -0x6c];
ffa05fc8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90ff94 */
ffa05fcc:	0a e1 0c 10 	P2.L = 0x100c;		/* (4108)	P2=0xff90100c <_g_httpContentLen> */
ffa05fd0:	10 93       	[P2] = R0;
ffa05fd2:	00 e3 25 00 	CALL 0xffa0601c <_httpHeader>;
ffa05fd6:	09 68       	P1 = 0x1 (X);		/*		P1=0x1(  1) */
ffa05fd8:	39 e7 d4 ff 	[FP + -0xb0] = P1;
ffa05fdc:	1b 20       	JUMP.S 0xffa06012 <_httpResp+0x76e>;
ffa05fde:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ff54(-7274668) */
ffa05fe2:	00 e1 50 06 	R0.L = 0x650;		/* (1616)	R0=0xff900650(-7338416) */
ffa05fe6:	fa a0       	R2 = [FP + 0xc];
ffa05fe8:	b9 a0       	R1 = [FP + 0x8];
ffa05fea:	ff e3 f9 de 	CALL 0xffa01ddc <_substr>;
ffa05fee:	00 0c       	CC = R0 == 0x0;
ffa05ff0:	0e 18       	IF CC JUMP 0xffa0600c <_httpResp+0x768>;
ffa05ff2:	00 e3 59 00 	CALL 0xffa060a4 <_html404>;
ffa05ff6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90100c <_g_httpContentLen> */
ffa05ffa:	0a e1 0c 10 	P2.L = 0x100c;		/* (4108)	P2=0xff90100c <_g_httpContentLen> */
ffa05ffe:	10 93       	[P2] = R0;
ffa06000:	00 e3 0e 00 	CALL 0xffa0601c <_httpHeader>;
ffa06004:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa06006:	38 e6 d4 ff 	[FP + -0xb0] = R0;
ffa0600a:	04 20       	JUMP.S 0xffa06012 <_httpResp+0x76e>;
ffa0600c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0600e:	39 e6 d4 ff 	[FP + -0xb0] = R1;
ffa06012:	38 e4 d4 ff 	R0 = [FP + -0xb0];
ffa06016:	01 e8 00 00 	UNLINK;
ffa0601a:	10 00       	RTS;

ffa0601c <_httpHeader>:
ffa0601c:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa06020:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa06024:	f0 bb       	[FP -0x4] = R0;
ffa06026:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa06028:	e0 bb       	[FP -0x8] = R0;
ffa0602a:	f0 b9       	R0 = [FP -0x4];
ffa0602c:	4f 30       	R1 = FP;
ffa0602e:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa06030:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90076c(-7338132) */
ffa06034:	02 e1 88 07 	R2.L = 0x788;		/* (1928)	R2=0xff900788(-7338104) */
ffa06038:	ff e3 40 de 	CALL 0xffa01cb8 <_strcpy_>;
ffa0603c:	f0 bb       	[FP -0x4] = R0;
ffa0603e:	f0 b9       	R0 = [FP -0x4];
ffa06040:	4f 30       	R1 = FP;
ffa06042:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa06044:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900788(-7338104) */
ffa06048:	02 e1 9c 07 	R2.L = 0x79c;		/* (1948)	R2=0xff90079c(-7338084) */
ffa0604c:	ff e3 36 de 	CALL 0xffa01cb8 <_strcpy_>;
ffa06050:	f0 bb       	[FP -0x4] = R0;
ffa06052:	f0 b9       	R0 = [FP -0x4];
ffa06054:	4f 30       	R1 = FP;
ffa06056:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa06058:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90079c(-7338084) */
ffa0605c:	02 e1 b0 07 	R2.L = 0x7b0;		/* (1968)	R2=0xff9007b0(-7338064) */
ffa06060:	ff e3 2c de 	CALL 0xffa01cb8 <_strcpy_>;
ffa06064:	f0 bb       	[FP -0x4] = R0;
ffa06066:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90100c <_g_httpContentLen> */
ffa0606a:	0a e1 0c 10 	P2.L = 0x100c;		/* (4108)	P2=0xff90100c <_g_httpContentLen> */
ffa0606e:	10 91       	R0 = [P2];
ffa06070:	10 30       	R2 = R0;
ffa06072:	f0 b9       	R0 = [FP -0x4];
ffa06074:	4f 30       	R1 = FP;
ffa06076:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa06078:	ff e3 1e e0 	CALL 0xffa020b4 <_strprintf_int>;
ffa0607c:	f0 bb       	[FP -0x4] = R0;
ffa0607e:	f0 b9       	R0 = [FP -0x4];
ffa06080:	4f 30       	R1 = FP;
ffa06082:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa06084:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007b0(-7338064) */
ffa06088:	02 e1 c4 07 	R2.L = 0x7c4;		/* (1988)	R2=0xff9007c4(-7338044) */
ffa0608c:	ff e3 16 de 	CALL 0xffa01cb8 <_strcpy_>;
ffa06090:	f0 bb       	[FP -0x4] = R0;
ffa06092:	e0 b9       	R0 = [FP -0x8];
ffa06094:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90100c <_g_httpContentLen> */
ffa06098:	0a e1 08 10 	P2.L = 0x1008;		/* (4104)	P2=0xff901008 <_g_httpHeaderLen> */
ffa0609c:	10 93       	[P2] = R0;
ffa0609e:	01 e8 00 00 	UNLINK;
ffa060a2:	10 00       	RTS;

ffa060a4 <_html404>:
ffa060a4:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa060a8:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa060ac:	f0 bb       	[FP -0x4] = R0;
ffa060ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa060b0:	e0 bb       	[FP -0x8] = R0;
ffa060b2:	f0 b9       	R0 = [FP -0x4];
ffa060b4:	4f 30       	R1 = FP;
ffa060b6:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa060b8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007c4(-7338044) */
ffa060bc:	02 e1 e4 07 	R2.L = 0x7e4;		/* (2020)	R2=0xff9007e4(-7338012) */
ffa060c0:	ff e3 fc dd 	CALL 0xffa01cb8 <_strcpy_>;
ffa060c4:	f0 bb       	[FP -0x4] = R0;
ffa060c6:	e0 b9       	R0 = [FP -0x8];
ffa060c8:	01 e8 00 00 	UNLINK;
ffa060cc:	10 00       	RTS;
	...

ffa060d0 <_htmlGeneric>:
ffa060d0:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa060d4:	b8 b0       	[FP + 0x8] = R0;
ffa060d6:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa060da:	f0 bb       	[FP -0x4] = R0;
ffa060dc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa060de:	e0 bb       	[FP -0x8] = R0;
ffa060e0:	f0 b9       	R0 = [FP -0x4];
ffa060e2:	4f 30       	R1 = FP;
ffa060e4:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa060e6:	ba a0       	R2 = [FP + 0x8];
ffa060e8:	ff e3 e8 dd 	CALL 0xffa01cb8 <_strcpy_>;
ffa060ec:	e0 b9       	R0 = [FP -0x8];
ffa060ee:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901008 <_g_httpHeaderLen> */
ffa060f2:	0a e1 0c 10 	P2.L = 0x100c;		/* (4108)	P2=0xff90100c <_g_httpContentLen> */
ffa060f6:	10 93       	[P2] = R0;
ffa060f8:	ff e3 92 ff 	CALL 0xffa0601c <_httpHeader>;
ffa060fc:	e0 b9       	R0 = [FP -0x8];
ffa060fe:	01 e8 00 00 	UNLINK;
ffa06102:	10 00       	RTS;

ffa06104 <_htmlDefault>:
ffa06104:	00 e8 0b 00 	LINK 0x2c;		/* (44) */
ffa06108:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa0610c:	b0 bb       	[FP -0x14] = R0;
ffa0610e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa06110:	a0 bb       	[FP -0x18] = R0;
ffa06112:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa06114:	c0 bb       	[FP -0x10] = R0;
ffa06116:	b0 b9       	R0 = [FP -0x14];
ffa06118:	4f 30       	R1 = FP;
ffa0611a:	41 67       	R1 += -0x18;		/* (-24) */
ffa0611c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007e4(-7338012) */
ffa06120:	02 e1 00 08 	R2.L = 0x800;		/* (2048)	R2=0xff900800(-7337984) */
ffa06124:	ff e3 ca dd 	CALL 0xffa01cb8 <_strcpy_>;
ffa06128:	b0 bb       	[FP -0x14] = R0;
ffa0612a:	b0 b9       	R0 = [FP -0x14];
ffa0612c:	4f 30       	R1 = FP;
ffa0612e:	41 67       	R1 += -0x18;		/* (-24) */
ffa06130:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa06134:	00 e3 20 02 	CALL 0xffa06574 <_htmlDiv>;
ffa06138:	b0 bb       	[FP -0x14] = R0;
ffa0613a:	b0 b9       	R0 = [FP -0x14];
ffa0613c:	4f 30       	R1 = FP;
ffa0613e:	41 67       	R1 += -0x18;		/* (-24) */
ffa06140:	00 e3 3e 02 	CALL 0xffa065bc <_htmlForm>;
ffa06144:	b0 bb       	[FP -0x14] = R0;
ffa06146:	b0 b9       	R0 = [FP -0x14];
ffa06148:	4f 30       	R1 = FP;
ffa0614a:	41 67       	R1 += -0x18;		/* (-24) */
ffa0614c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa06150:	02 e1 50 08 	R2.L = 0x850;		/* (2128)	R2=0xff900850(-7337904) */
ffa06154:	ff e3 b2 dd 	CALL 0xffa01cb8 <_strcpy_>;
ffa06158:	b0 bb       	[FP -0x14] = R0;
ffa0615a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90100c <_g_httpContentLen> */
ffa0615e:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xff900c68 <_g_streamEnabled> */
ffa06162:	50 99       	R0 = B[P2] (X);
ffa06164:	40 43       	R0 = R0.B (Z);
ffa06166:	00 0c       	CC = R0 == 0x0;
ffa06168:	0c 18       	IF CC JUMP 0xffa06180 <_htmlDefault+0x7c>;
ffa0616a:	b0 b9       	R0 = [FP -0x14];
ffa0616c:	4f 30       	R1 = FP;
ffa0616e:	41 67       	R1 += -0x18;		/* (-24) */
ffa06170:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900850(-7337904) */
ffa06174:	02 e1 a0 08 	R2.L = 0x8a0;		/* (2208)	R2=0xff9008a0(-7337824) */
ffa06178:	ff e3 a0 dd 	CALL 0xffa01cb8 <_strcpy_>;
ffa0617c:	b0 bb       	[FP -0x14] = R0;
ffa0617e:	0b 20       	JUMP.S 0xffa06194 <_htmlDefault+0x90>;
ffa06180:	b0 b9       	R0 = [FP -0x14];
ffa06182:	4f 30       	R1 = FP;
ffa06184:	41 67       	R1 += -0x18;		/* (-24) */
ffa06186:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a0(-7337824) */
ffa0618a:	02 e1 ac 08 	R2.L = 0x8ac;		/* (2220)	R2=0xff9008ac(-7337812) */
ffa0618e:	ff e3 95 dd 	CALL 0xffa01cb8 <_strcpy_>;
ffa06192:	b0 bb       	[FP -0x14] = R0;
ffa06194:	b0 b9       	R0 = [FP -0x14];
ffa06196:	4f 30       	R1 = FP;
ffa06198:	41 67       	R1 += -0x18;		/* (-24) */
ffa0619a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008ac(-7337812) */
ffa0619e:	02 e1 b8 08 	R2.L = 0x8b8;		/* (2232)	R2=0xff9008b8(-7337800) */
ffa061a2:	ff e3 8b dd 	CALL 0xffa01cb8 <_strcpy_>;
ffa061a6:	b0 bb       	[FP -0x14] = R0;
ffa061a8:	b0 b9       	R0 = [FP -0x14];
ffa061aa:	4f 30       	R1 = FP;
ffa061ac:	41 67       	R1 += -0x18;		/* (-24) */
ffa061ae:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa061b2:	00 e3 e1 01 	CALL 0xffa06574 <_htmlDiv>;
ffa061b6:	b0 bb       	[FP -0x14] = R0;
ffa061b8:	b0 b9       	R0 = [FP -0x14];
ffa061ba:	4f 30       	R1 = FP;
ffa061bc:	41 67       	R1 += -0x18;		/* (-24) */
ffa061be:	00 e3 ff 01 	CALL 0xffa065bc <_htmlForm>;
ffa061c2:	b0 bb       	[FP -0x14] = R0;
ffa061c4:	b0 b9       	R0 = [FP -0x14];
ffa061c6:	4f 30       	R1 = FP;
ffa061c8:	41 67       	R1 += -0x18;		/* (-24) */
ffa061ca:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa061ce:	02 e1 cc 08 	R2.L = 0x8cc;		/* (2252)	R2=0xff9008cc(-7337780) */
ffa061d2:	ff e3 73 dd 	CALL 0xffa01cb8 <_strcpy_>;
ffa061d6:	b0 bb       	[FP -0x14] = R0;
ffa061d8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa061da:	c0 bb       	[FP -0x10] = R0;
ffa061dc:	3b 20       	JUMP.S 0xffa06252 <_htmlDefault+0x14e>;
ffa061de:	b0 b9       	R0 = [FP -0x14];
ffa061e0:	4f 30       	R1 = FP;
ffa061e2:	41 67       	R1 += -0x18;		/* (-24) */
ffa061e4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008cc(-7337780) */
ffa061e8:	02 e1 e8 08 	R2.L = 0x8e8;		/* (2280)	R2=0xff9008e8(-7337752) */
ffa061ec:	ff e3 66 dd 	CALL 0xffa01cb8 <_strcpy_>;
ffa061f0:	b0 bb       	[FP -0x14] = R0;
ffa061f2:	b0 b9       	R0 = [FP -0x14];
ffa061f4:	4f 30       	R1 = FP;
ffa061f6:	41 67       	R1 += -0x18;		/* (-24) */
ffa061f8:	c2 b9       	R2 = [FP -0x10];
ffa061fa:	ff e3 5d df 	CALL 0xffa020b4 <_strprintf_int>;
ffa061fe:	b0 bb       	[FP -0x14] = R0;
ffa06200:	b0 b9       	R0 = [FP -0x14];
ffa06202:	4f 30       	R1 = FP;
ffa06204:	41 67       	R1 += -0x18;		/* (-24) */
ffa06206:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008e8(-7337752) */
ffa0620a:	02 e1 04 09 	R2.L = 0x904;		/* (2308)	R2=0xff900904(-7337724) */
ffa0620e:	ff e3 55 dd 	CALL 0xffa01cb8 <_strcpy_>;
ffa06212:	b0 bb       	[FP -0x14] = R0;
ffa06214:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c68 <_g_streamEnabled> */
ffa06218:	0a e1 18 0f 	P2.L = 0xf18;		/* (3864)	P2=0xff900f18 <_NetDataDestIP> */
ffa0621c:	11 91       	R1 = [P2];
ffa0621e:	c0 b9       	R0 = [FP -0x10];
ffa06220:	18 4f       	R0 <<= 0x3;
ffa06222:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa06224:	11 30       	R2 = R1;
ffa06226:	42 40       	R2 >>= R0;
ffa06228:	02 30       	R0 = R2;
ffa0622a:	42 43       	R2 = R0.B (Z);
ffa0622c:	b0 b9       	R0 = [FP -0x14];
ffa0622e:	4f 30       	R1 = FP;
ffa06230:	41 67       	R1 += -0x18;		/* (-24) */
ffa06232:	ff e3 41 df 	CALL 0xffa020b4 <_strprintf_int>;
ffa06236:	b0 bb       	[FP -0x14] = R0;
ffa06238:	b0 b9       	R0 = [FP -0x14];
ffa0623a:	4f 30       	R1 = FP;
ffa0623c:	41 67       	R1 += -0x18;		/* (-24) */
ffa0623e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900904(-7337724) */
ffa06242:	02 e1 18 09 	R2.L = 0x918;		/* (2328)	R2=0xff900918(-7337704) */
ffa06246:	ff e3 39 dd 	CALL 0xffa01cb8 <_strcpy_>;
ffa0624a:	b0 bb       	[FP -0x14] = R0;
ffa0624c:	c0 b9       	R0 = [FP -0x10];
ffa0624e:	08 64       	R0 += 0x1;		/* (  1) */
ffa06250:	c0 bb       	[FP -0x10] = R0;
ffa06252:	c0 b9       	R0 = [FP -0x10];
ffa06254:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa06256:	08 09       	CC = R0 <= R1;
ffa06258:	c3 1b       	IF CC JUMP 0xffa061de <_htmlDefault+0xda>;
ffa0625a:	b0 b9       	R0 = [FP -0x14];
ffa0625c:	4f 30       	R1 = FP;
ffa0625e:	41 67       	R1 += -0x18;		/* (-24) */
ffa06260:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900918(-7337704) */
ffa06264:	02 e1 20 09 	R2.L = 0x920;		/* (2336)	R2=0xff900920(-7337696) */
ffa06268:	ff e3 28 dd 	CALL 0xffa01cb8 <_strcpy_>;
ffa0626c:	b0 bb       	[FP -0x14] = R0;
ffa0626e:	b0 b9       	R0 = [FP -0x14];
ffa06270:	4f 30       	R1 = FP;
ffa06272:	41 67       	R1 += -0x18;		/* (-24) */
ffa06274:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900920(-7337696) */
ffa06278:	02 e1 b8 08 	R2.L = 0x8b8;		/* (2232)	R2=0xff9008b8(-7337800) */
ffa0627c:	ff e3 1e dd 	CALL 0xffa01cb8 <_strcpy_>;
ffa06280:	b0 bb       	[FP -0x14] = R0;
ffa06282:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff800001(-8388607) */
ffa06286:	00 e1 0c 08 	R0.L = 0x80c;		/* (2060)	R0=0xff80080c(-8386548) */
ffa0628a:	d0 bb       	[FP -0xc] = R0;
ffa0628c:	b0 b9       	R0 = [FP -0x14];
ffa0628e:	4f 30       	R1 = FP;
ffa06290:	41 67       	R1 += -0x18;		/* (-24) */
ffa06292:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa06296:	00 e3 6f 01 	CALL 0xffa06574 <_htmlDiv>;
ffa0629a:	b0 bb       	[FP -0x14] = R0;
ffa0629c:	b0 b9       	R0 = [FP -0x14];
ffa0629e:	4f 30       	R1 = FP;
ffa062a0:	41 67       	R1 += -0x18;		/* (-24) */
ffa062a2:	00 e3 8d 01 	CALL 0xffa065bc <_htmlForm>;
ffa062a6:	b0 bb       	[FP -0x14] = R0;
ffa062a8:	b0 b9       	R0 = [FP -0x14];
ffa062aa:	4f 30       	R1 = FP;
ffa062ac:	41 67       	R1 += -0x18;		/* (-24) */
ffa062ae:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa062b2:	02 e1 44 09 	R2.L = 0x944;		/* (2372)	R2=0xff900944(-7337660) */
ffa062b6:	ff e3 01 dd 	CALL 0xffa01cb8 <_strcpy_>;
ffa062ba:	b0 bb       	[FP -0x14] = R0;
ffa062bc:	da b9       	P2 = [FP -0xc];
ffa062be:	50 99       	R0 = B[P2] (X);
ffa062c0:	40 43       	R0 = R0.B (Z);
ffa062c2:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa062c4:	00 02       	R0 = CC;
ffa062c6:	40 43       	R0 = R0.B (Z);
ffa062c8:	00 0c       	CC = R0 == 0x0;
ffa062ca:	0c 18       	IF CC JUMP 0xffa062e2 <_htmlDefault+0x1de>;
ffa062cc:	b0 b9       	R0 = [FP -0x14];
ffa062ce:	4f 30       	R1 = FP;
ffa062d0:	41 67       	R1 += -0x18;		/* (-24) */
ffa062d2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900944(-7337660) */
ffa062d6:	02 e1 ac 08 	R2.L = 0x8ac;		/* (2220)	R2=0xff9008ac(-7337812) */
ffa062da:	ff e3 ef dc 	CALL 0xffa01cb8 <_strcpy_>;
ffa062de:	b0 bb       	[FP -0x14] = R0;
ffa062e0:	0b 20       	JUMP.S 0xffa062f6 <_htmlDefault+0x1f2>;
ffa062e2:	b0 b9       	R0 = [FP -0x14];
ffa062e4:	4f 30       	R1 = FP;
ffa062e6:	41 67       	R1 += -0x18;		/* (-24) */
ffa062e8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008ac(-7337812) */
ffa062ec:	02 e1 a0 08 	R2.L = 0x8a0;		/* (2208)	R2=0xff9008a0(-7337824) */
ffa062f0:	ff e3 e4 dc 	CALL 0xffa01cb8 <_strcpy_>;
ffa062f4:	b0 bb       	[FP -0x14] = R0;
ffa062f6:	b0 b9       	R0 = [FP -0x14];
ffa062f8:	4f 30       	R1 = FP;
ffa062fa:	41 67       	R1 += -0x18;		/* (-24) */
ffa062fc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a0(-7337824) */
ffa06300:	02 e1 b8 08 	R2.L = 0x8b8;		/* (2232)	R2=0xff9008b8(-7337800) */
ffa06304:	ff e3 da dc 	CALL 0xffa01cb8 <_strcpy_>;
ffa06308:	b0 bb       	[FP -0x14] = R0;
ffa0630a:	b0 b9       	R0 = [FP -0x14];
ffa0630c:	4f 30       	R1 = FP;
ffa0630e:	41 67       	R1 += -0x18;		/* (-24) */
ffa06310:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa06314:	00 e3 30 01 	CALL 0xffa06574 <_htmlDiv>;
ffa06318:	b0 bb       	[FP -0x14] = R0;
ffa0631a:	b0 b9       	R0 = [FP -0x14];
ffa0631c:	4f 30       	R1 = FP;
ffa0631e:	41 67       	R1 += -0x18;		/* (-24) */
ffa06320:	00 e3 4e 01 	CALL 0xffa065bc <_htmlForm>;
ffa06324:	b0 bb       	[FP -0x14] = R0;
ffa06326:	b0 b9       	R0 = [FP -0x14];
ffa06328:	4f 30       	R1 = FP;
ffa0632a:	41 67       	R1 += -0x18;		/* (-24) */
ffa0632c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa06330:	02 e1 84 09 	R2.L = 0x984;		/* (2436)	R2=0xff900984(-7337596) */
ffa06334:	ff e3 c2 dc 	CALL 0xffa01cb8 <_strcpy_>;
ffa06338:	b0 bb       	[FP -0x14] = R0;
ffa0633a:	b1 b9       	R1 = [FP -0x14];
ffa0633c:	57 30       	R2 = FP;
ffa0633e:	42 67       	R2 += -0x18;		/* (-24) */
ffa06340:	43 e1 90 ff 	R3.H = 0xff90;		/* (-112)	R3=0xff900000 <_l1_data_a>(-7340032) */
ffa06344:	03 e1 a8 09 	R3.L = 0x9a8;		/* (2472)	R3=0xff9009a8(-7337560) */
ffa06348:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90080c(-7337972) */
ffa0634c:	00 e1 b4 09 	R0.L = 0x9b4;		/* (2484)	R0=0xff9009b4(-7337548) */
ffa06350:	f0 b0       	[SP + 0xc] = R0;
ffa06352:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa06354:	30 b1       	[SP + 0x10] = R0;
ffa06356:	01 30       	R0 = R1;
ffa06358:	0a 30       	R1 = R2;
ffa0635a:	13 30       	R2 = R3;
ffa0635c:	00 e3 40 01 	CALL 0xffa065dc <_htmlCursorSelect>;
ffa06360:	b0 bb       	[FP -0x14] = R0;
ffa06362:	b1 b9       	R1 = [FP -0x14];
ffa06364:	57 30       	R2 = FP;
ffa06366:	42 67       	R2 += -0x18;		/* (-24) */
ffa06368:	43 e1 90 ff 	R3.H = 0xff90;		/* (-112)	R3=0xff9009a8(-7337560) */
ffa0636c:	03 e1 c0 09 	R3.L = 0x9c0;		/* (2496)	R3=0xff9009c0(-7337536) */
ffa06370:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa06374:	00 e1 cc 09 	R0.L = 0x9cc;		/* (2508)	R0=0xff9009cc(-7337524) */
ffa06378:	f0 b0       	[SP + 0xc] = R0;
ffa0637a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0637c:	30 b1       	[SP + 0x10] = R0;
ffa0637e:	01 30       	R0 = R1;
ffa06380:	0a 30       	R1 = R2;
ffa06382:	13 30       	R2 = R3;
ffa06384:	00 e3 2c 01 	CALL 0xffa065dc <_htmlCursorSelect>;
ffa06388:	b0 bb       	[FP -0x14] = R0;
ffa0638a:	b1 b9       	R1 = [FP -0x14];
ffa0638c:	57 30       	R2 = FP;
ffa0638e:	42 67       	R2 += -0x18;		/* (-24) */
ffa06390:	43 e1 90 ff 	R3.H = 0xff90;		/* (-112)	R3=0xff9009c0(-7337536) */
ffa06394:	03 e1 d8 09 	R3.L = 0x9d8;		/* (2520)	R3=0xff9009d8(-7337512) */
ffa06398:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0639c:	00 e1 e4 09 	R0.L = 0x9e4;		/* (2532)	R0=0xff9009e4(-7337500) */
ffa063a0:	f0 b0       	[SP + 0xc] = R0;
ffa063a2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa063a4:	30 b1       	[SP + 0x10] = R0;
ffa063a6:	01 30       	R0 = R1;
ffa063a8:	0a 30       	R1 = R2;
ffa063aa:	13 30       	R2 = R3;
ffa063ac:	00 e3 18 01 	CALL 0xffa065dc <_htmlCursorSelect>;
ffa063b0:	b0 bb       	[FP -0x14] = R0;
ffa063b2:	b1 b9       	R1 = [FP -0x14];
ffa063b4:	57 30       	R2 = FP;
ffa063b6:	42 67       	R2 += -0x18;		/* (-24) */
ffa063b8:	43 e1 90 ff 	R3.H = 0xff90;		/* (-112)	R3=0xff9009d8(-7337512) */
ffa063bc:	03 e1 f0 09 	R3.L = 0x9f0;		/* (2544)	R3=0xff9009f0(-7337488) */
ffa063c0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa063c4:	00 e1 f8 09 	R0.L = 0x9f8;		/* (2552)	R0=0xff9009f8(-7337480) */
ffa063c8:	f0 b0       	[SP + 0xc] = R0;
ffa063ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa063cc:	30 b1       	[SP + 0x10] = R0;
ffa063ce:	01 30       	R0 = R1;
ffa063d0:	0a 30       	R1 = R2;
ffa063d2:	13 30       	R2 = R3;
ffa063d4:	00 e3 04 01 	CALL 0xffa065dc <_htmlCursorSelect>;
ffa063d8:	b0 bb       	[FP -0x14] = R0;
ffa063da:	b0 b9       	R0 = [FP -0x14];
ffa063dc:	4f 30       	R1 = FP;
ffa063de:	41 67       	R1 += -0x18;		/* (-24) */
ffa063e0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900984(-7337596) */
ffa063e4:	02 e1 04 0a 	R2.L = 0xa04;		/* (2564)	R2=0xff900a04(-7337468) */
ffa063e8:	ff e3 68 dc 	CALL 0xffa01cb8 <_strcpy_>;
ffa063ec:	b0 bb       	[FP -0x14] = R0;
ffa063ee:	b0 b9       	R0 = [FP -0x14];
ffa063f0:	4f 30       	R1 = FP;
ffa063f2:	41 67       	R1 += -0x18;		/* (-24) */
ffa063f4:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa063f8:	00 e3 be 00 	CALL 0xffa06574 <_htmlDiv>;
ffa063fc:	b0 bb       	[FP -0x14] = R0;
ffa063fe:	b0 b9       	R0 = [FP -0x14];
ffa06400:	4f 30       	R1 = FP;
ffa06402:	41 67       	R1 += -0x18;		/* (-24) */
ffa06404:	00 e3 dc 00 	CALL 0xffa065bc <_htmlForm>;
ffa06408:	b0 bb       	[FP -0x14] = R0;
ffa0640a:	b0 b9       	R0 = [FP -0x14];
ffa0640c:	4f 30       	R1 = FP;
ffa0640e:	41 67       	R1 += -0x18;		/* (-24) */
ffa06410:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa06414:	02 e1 40 0a 	R2.L = 0xa40;		/* (2624)	R2=0xff900a40(-7337408) */
ffa06418:	ff e3 50 dc 	CALL 0xffa01cb8 <_strcpy_>;
ffa0641c:	b0 bb       	[FP -0x14] = R0;
ffa0641e:	b0 b9       	R0 = [FP -0x14];
ffa06420:	4f 30       	R1 = FP;
ffa06422:	41 67       	R1 += -0x18;		/* (-24) */
ffa06424:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa06428:	00 e3 a6 00 	CALL 0xffa06574 <_htmlDiv>;
ffa0642c:	b0 bb       	[FP -0x14] = R0;
ffa0642e:	b0 b9       	R0 = [FP -0x14];
ffa06430:	4f 30       	R1 = FP;
ffa06432:	41 67       	R1 += -0x18;		/* (-24) */
ffa06434:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa06438:	02 e1 98 0a 	R2.L = 0xa98;		/* (2712)	R2=0xff900a98(-7337320) */
ffa0643c:	ff e3 3e dc 	CALL 0xffa01cb8 <_strcpy_>;
ffa06440:	b0 bb       	[FP -0x14] = R0;
ffa06442:	b0 b9       	R0 = [FP -0x14];
ffa06444:	4f 30       	R1 = FP;
ffa06446:	41 67       	R1 += -0x18;		/* (-24) */
ffa06448:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a98(-7337320) */
ffa0644c:	02 e1 c0 0a 	R2.L = 0xac0;		/* (2752)	R2=0xff900ac0(-7337280) */
ffa06450:	ff e3 34 dc 	CALL 0xffa01cb8 <_strcpy_>;
ffa06454:	b0 bb       	[FP -0x14] = R0;
ffa06456:	b0 b9       	R0 = [FP -0x14];
ffa06458:	4f 30       	R1 = FP;
ffa0645a:	41 67       	R1 += -0x18;		/* (-24) */
ffa0645c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ac0(-7337280) */
ffa06460:	02 e1 b8 08 	R2.L = 0x8b8;		/* (2232)	R2=0xff9008b8(-7337800) */
ffa06464:	ff e3 2a dc 	CALL 0xffa01cb8 <_strcpy_>;
ffa06468:	b0 bb       	[FP -0x14] = R0;
ffa0646a:	20 e1 01 f0 	R0 = -0xfff (X);		/*		R0=0xfffff001(-4095) */
ffa0646e:	58 4f       	R0 <<= 0xb;
ffa06470:	c0 bb       	[FP -0x10] = R0;
ffa06472:	b0 b9       	R0 = [FP -0x14];
ffa06474:	4f 30       	R1 = FP;
ffa06476:	41 67       	R1 += -0x18;		/* (-24) */
ffa06478:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008b8(-7337800) */
ffa0647c:	02 e1 08 0b 	R2.L = 0xb08;		/* (2824)	R2=0xff900b08(-7337208) */
ffa06480:	ff e3 1c dc 	CALL 0xffa01cb8 <_strcpy_>;
ffa06484:	b0 bb       	[FP -0x14] = R0;
ffa06486:	c1 b9       	R1 = [FP -0x10];
ffa06488:	40 e1 62 10 	R0.H = 0x1062;		/* (4194)	R0=0x1062f001(274919425) */
ffa0648c:	00 e1 d3 4d 	R0.L = 0x4dd3;		/* (19923)	R0=0x10624dd3(274877907) */
ffa06490:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa06494:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa06498:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa0649c:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa064a0:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa064a4:	0b c4 00 00 	R0 = (A0 += A1);
ffa064a8:	82 c6 d0 05 	R2 = R0 >>> 0x6;
ffa064ac:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa064b0:	02 52       	R0 = R2 - R0;
ffa064b2:	e0 bb       	[FP -0x8] = R0;
ffa064b4:	e1 b9       	R1 = [FP -0x8];
ffa064b6:	40 e1 88 88 	R0.H = 0x8888;		/* (-30584)	R0=0x88884dd3(-2004333101) */
ffa064ba:	00 e1 89 88 	R0.L = 0x8889;		/* (-30583)	R0=0x88888889(-2004318071) */
ffa064be:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa064c2:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa064c6:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa064ca:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa064ce:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa064d2:	0b c4 00 00 	R0 = (A0 += A1);
ffa064d6:	08 50       	R0 = R0 + R1;
ffa064d8:	82 c6 d8 05 	R2 = R0 >>> 0x5;
ffa064dc:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa064e0:	02 52       	R0 = R2 - R0;
ffa064e2:	f0 bb       	[FP -0x4] = R0;
ffa064e4:	b0 b9       	R0 = [FP -0x14];
ffa064e6:	4f 30       	R1 = FP;
ffa064e8:	41 67       	R1 += -0x18;		/* (-24) */
ffa064ea:	f2 b9       	R2 = [FP -0x4];
ffa064ec:	ff e3 e4 dd 	CALL 0xffa020b4 <_strprintf_int>;
ffa064f0:	b0 bb       	[FP -0x14] = R0;
ffa064f2:	b0 b9       	R0 = [FP -0x14];
ffa064f4:	4f 30       	R1 = FP;
ffa064f6:	41 67       	R1 += -0x18;		/* (-24) */
ffa064f8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b08(-7337208) */
ffa064fc:	02 e1 14 0b 	R2.L = 0xb14;		/* (2836)	R2=0xff900b14(-7337196) */
ffa06500:	ff e3 dc db 	CALL 0xffa01cb8 <_strcpy_>;
ffa06504:	b0 bb       	[FP -0x14] = R0;
ffa06506:	f1 b9       	R1 = [FP -0x4];
ffa06508:	01 30       	R0 = R1;
ffa0650a:	20 4f       	R0 <<= 0x4;
ffa0650c:	08 52       	R0 = R0 - R1;
ffa0650e:	10 4f       	R0 <<= 0x2;
ffa06510:	08 30       	R1 = R0;
ffa06512:	e0 b9       	R0 = [FP -0x8];
ffa06514:	88 52       	R2 = R0 - R1;
ffa06516:	b0 b9       	R0 = [FP -0x14];
ffa06518:	4f 30       	R1 = FP;
ffa0651a:	41 67       	R1 += -0x18;		/* (-24) */
ffa0651c:	ff e3 cc dd 	CALL 0xffa020b4 <_strprintf_int>;
ffa06520:	b0 bb       	[FP -0x14] = R0;
ffa06522:	b0 b9       	R0 = [FP -0x14];
ffa06524:	4f 30       	R1 = FP;
ffa06526:	41 67       	R1 += -0x18;		/* (-24) */
ffa06528:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b14(-7337196) */
ffa0652c:	02 e1 18 0b 	R2.L = 0xb18;		/* (2840)	R2=0xff900b18(-7337192) */
ffa06530:	ff e3 c4 db 	CALL 0xffa01cb8 <_strcpy_>;
ffa06534:	b0 bb       	[FP -0x14] = R0;
ffa06536:	e1 b9       	R1 = [FP -0x8];
ffa06538:	01 30       	R0 = R1;
ffa0653a:	28 4f       	R0 <<= 0x5;
ffa0653c:	08 52       	R0 = R0 - R1;
ffa0653e:	10 4f       	R0 <<= 0x2;
ffa06540:	08 50       	R0 = R0 + R1;
ffa06542:	18 4f       	R0 <<= 0x3;
ffa06544:	08 30       	R1 = R0;
ffa06546:	c0 b9       	R0 = [FP -0x10];
ffa06548:	88 52       	R2 = R0 - R1;
ffa0654a:	b0 b9       	R0 = [FP -0x14];
ffa0654c:	4f 30       	R1 = FP;
ffa0654e:	41 67       	R1 += -0x18;		/* (-24) */
ffa06550:	ff e3 b2 dd 	CALL 0xffa020b4 <_strprintf_int>;
ffa06554:	b0 bb       	[FP -0x14] = R0;
ffa06556:	b0 b9       	R0 = [FP -0x14];
ffa06558:	4f 30       	R1 = FP;
ffa0655a:	41 67       	R1 += -0x18;		/* (-24) */
ffa0655c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b18(-7337192) */
ffa06560:	02 e1 1c 0b 	R2.L = 0xb1c;		/* (2844)	R2=0xff900b1c(-7337188) */
ffa06564:	ff e3 aa db 	CALL 0xffa01cb8 <_strcpy_>;
ffa06568:	b0 bb       	[FP -0x14] = R0;
ffa0656a:	a0 b9       	R0 = [FP -0x18];
ffa0656c:	01 e8 00 00 	UNLINK;
ffa06570:	10 00       	RTS;
	...

ffa06574 <_htmlDiv>:
ffa06574:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa06578:	b8 b0       	[FP + 0x8] = R0;
ffa0657a:	f9 b0       	[FP + 0xc] = R1;
ffa0657c:	02 30       	R0 = R2;
ffa0657e:	b8 e6 10 00 	B[FP + 0x10] = R0;
ffa06582:	b8 e5 10 00 	R0 = B[FP + 0x10] (X);
ffa06586:	21 e1 62 00 	R1 = 0x62 (X);		/*		R1=0x62( 98) */
ffa0658a:	08 08       	CC = R0 == R1;
ffa0658c:	0b 10       	IF !CC JUMP 0xffa065a2 <_htmlDiv+0x2e>;
ffa0658e:	f9 a0       	R1 = [FP + 0xc];
ffa06590:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b1c(-7337188) */
ffa06594:	02 e1 34 0b 	R2.L = 0xb34;		/* (2868)	R2=0xff900b34(-7337164) */
ffa06598:	b8 a0       	R0 = [FP + 0x8];
ffa0659a:	ff e3 8f db 	CALL 0xffa01cb8 <_strcpy_>;
ffa0659e:	b8 b0       	[FP + 0x8] = R0;
ffa065a0:	0a 20       	JUMP.S 0xffa065b4 <_htmlDiv+0x40>;
ffa065a2:	f9 a0       	R1 = [FP + 0xc];
ffa065a4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b34(-7337164) */
ffa065a8:	02 e1 68 0b 	R2.L = 0xb68;		/* (2920)	R2=0xff900b68(-7337112) */
ffa065ac:	b8 a0       	R0 = [FP + 0x8];
ffa065ae:	ff e3 85 db 	CALL 0xffa01cb8 <_strcpy_>;
ffa065b2:	b8 b0       	[FP + 0x8] = R0;
ffa065b4:	b8 a0       	R0 = [FP + 0x8];
ffa065b6:	01 e8 00 00 	UNLINK;
ffa065ba:	10 00       	RTS;

ffa065bc <_htmlForm>:
ffa065bc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa065c0:	b8 b0       	[FP + 0x8] = R0;
ffa065c2:	f9 b0       	[FP + 0xc] = R1;
ffa065c4:	f9 a0       	R1 = [FP + 0xc];
ffa065c6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b68(-7337112) */
ffa065ca:	02 e1 9c 0b 	R2.L = 0xb9c;		/* (2972)	R2=0xff900b9c(-7337060) */
ffa065ce:	b8 a0       	R0 = [FP + 0x8];
ffa065d0:	ff e3 74 db 	CALL 0xffa01cb8 <_strcpy_>;
ffa065d4:	01 e8 00 00 	UNLINK;
ffa065d8:	10 00       	RTS;
	...

ffa065dc <_htmlCursorSelect>:
ffa065dc:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa065e0:	b8 b0       	[FP + 0x8] = R0;
ffa065e2:	f9 b0       	[FP + 0xc] = R1;
ffa065e4:	3a b1       	[FP + 0x10] = R2;
ffa065e6:	f9 a0       	R1 = [FP + 0xc];
ffa065e8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b9c(-7337060) */
ffa065ec:	02 e1 bc 0b 	R2.L = 0xbbc;		/* (3004)	R2=0xff900bbc(-7337028) */
ffa065f0:	b8 a0       	R0 = [FP + 0x8];
ffa065f2:	ff e3 63 db 	CALL 0xffa01cb8 <_strcpy_>;
ffa065f6:	b8 b0       	[FP + 0x8] = R0;
ffa065f8:	f9 a0       	R1 = [FP + 0xc];
ffa065fa:	3a a1       	R2 = [FP + 0x10];
ffa065fc:	b8 a0       	R0 = [FP + 0x8];
ffa065fe:	ff e3 5d db 	CALL 0xffa01cb8 <_strcpy_>;
ffa06602:	b8 b0       	[FP + 0x8] = R0;
ffa06604:	f9 a0       	R1 = [FP + 0xc];
ffa06606:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bbc(-7337028) */
ffa0660a:	02 e1 c8 0b 	R2.L = 0xbc8;		/* (3016)	R2=0xff900bc8(-7337016) */
ffa0660e:	b8 a0       	R0 = [FP + 0x8];
ffa06610:	ff e3 54 db 	CALL 0xffa01cb8 <_strcpy_>;
ffa06614:	b8 b0       	[FP + 0x8] = R0;
ffa06616:	f9 a0       	R1 = [FP + 0xc];
ffa06618:	7a a1       	R2 = [FP + 0x14];
ffa0661a:	b8 a0       	R0 = [FP + 0x8];
ffa0661c:	ff e3 4e db 	CALL 0xffa01cb8 <_strcpy_>;
ffa06620:	b8 b0       	[FP + 0x8] = R0;
ffa06622:	f9 a0       	R1 = [FP + 0xc];
ffa06624:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bc8(-7337016) */
ffa06628:	02 e1 e4 0b 	R2.L = 0xbe4;		/* (3044)	R2=0xff900be4(-7336988) */
ffa0662c:	b8 a0       	R0 = [FP + 0x8];
ffa0662e:	ff e3 45 db 	CALL 0xffa01cb8 <_strcpy_>;
ffa06632:	b8 b0       	[FP + 0x8] = R0;
ffa06634:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa06636:	f0 bb       	[FP -0x4] = R0;
ffa06638:	0c 20       	JUMP.S 0xffa06650 <_htmlCursorSelect+0x74>;
ffa0663a:	f9 a0       	R1 = [FP + 0xc];
ffa0663c:	f2 b9       	R2 = [FP -0x4];
ffa0663e:	b8 a1       	R0 = [FP + 0x18];
ffa06640:	f0 b0       	[SP + 0xc] = R0;
ffa06642:	b8 a0       	R0 = [FP + 0x8];
ffa06644:	00 e3 18 00 	CALL 0xffa06674 <_htmlCursorOption>;
ffa06648:	b8 b0       	[FP + 0x8] = R0;
ffa0664a:	f0 b9       	R0 = [FP -0x4];
ffa0664c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0664e:	f0 bb       	[FP -0x4] = R0;
ffa06650:	f0 b9       	R0 = [FP -0x4];
ffa06652:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa06654:	08 09       	CC = R0 <= R1;
ffa06656:	f2 1b       	IF CC JUMP 0xffa0663a <_htmlCursorSelect+0x5e>;
ffa06658:	f9 a0       	R1 = [FP + 0xc];
ffa0665a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900be4(-7336988) */
ffa0665e:	02 e1 e8 0b 	R2.L = 0xbe8;		/* (3048)	R2=0xff900be8(-7336984) */
ffa06662:	b8 a0       	R0 = [FP + 0x8];
ffa06664:	ff e3 2a db 	CALL 0xffa01cb8 <_strcpy_>;
ffa06668:	b8 b0       	[FP + 0x8] = R0;
ffa0666a:	b8 a0       	R0 = [FP + 0x8];
ffa0666c:	01 e8 00 00 	UNLINK;
ffa06670:	10 00       	RTS;
	...

ffa06674 <_htmlCursorOption>:
ffa06674:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa06678:	b8 b0       	[FP + 0x8] = R0;
ffa0667a:	f9 b0       	[FP + 0xc] = R1;
ffa0667c:	3a b1       	[FP + 0x10] = R2;
ffa0667e:	f9 a0       	R1 = [FP + 0xc];
ffa06680:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900be8(-7336984) */
ffa06684:	02 e1 00 0c 	R2.L = 0xc00;		/* (3072)	R2=0xff900c00(-7336960) */
ffa06688:	b8 a0       	R0 = [FP + 0x8];
ffa0668a:	ff e3 17 db 	CALL 0xffa01cb8 <_strcpy_>;
ffa0668e:	b8 b0       	[FP + 0x8] = R0;
ffa06690:	f9 a0       	R1 = [FP + 0xc];
ffa06692:	3a a1       	R2 = [FP + 0x10];
ffa06694:	b8 a0       	R0 = [FP + 0x8];
ffa06696:	ff e3 0f dd 	CALL 0xffa020b4 <_strprintf_int>;
ffa0669a:	b8 b0       	[FP + 0x8] = R0;
ffa0669c:	39 a1       	R1 = [FP + 0x10];
ffa0669e:	78 a1       	R0 = [FP + 0x14];
ffa066a0:	01 08       	CC = R1 == R0;
ffa066a2:	0a 10       	IF !CC JUMP 0xffa066b6 <_htmlCursorOption+0x42>;
ffa066a4:	f9 a0       	R1 = [FP + 0xc];
ffa066a6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c00(-7336960) */
ffa066aa:	02 e1 10 0c 	R2.L = 0xc10;		/* (3088)	R2=0xff900c10(-7336944) */
ffa066ae:	b8 a0       	R0 = [FP + 0x8];
ffa066b0:	ff e3 04 db 	CALL 0xffa01cb8 <_strcpy_>;
ffa066b4:	b8 b0       	[FP + 0x8] = R0;
ffa066b6:	f9 a0       	R1 = [FP + 0xc];
ffa066b8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c10(-7336944) */
ffa066bc:	02 e1 28 0c 	R2.L = 0xc28;		/* (3112)	R2=0xff900c28(-7336920) */
ffa066c0:	b8 a0       	R0 = [FP + 0x8];
ffa066c2:	ff e3 fb da 	CALL 0xffa01cb8 <_strcpy_>;
ffa066c6:	b8 b0       	[FP + 0x8] = R0;
ffa066c8:	f9 a0       	R1 = [FP + 0xc];
ffa066ca:	3a a1       	R2 = [FP + 0x10];
ffa066cc:	b8 a0       	R0 = [FP + 0x8];
ffa066ce:	ff e3 f3 dc 	CALL 0xffa020b4 <_strprintf_int>;
ffa066d2:	b8 b0       	[FP + 0x8] = R0;
ffa066d4:	f9 a0       	R1 = [FP + 0xc];
ffa066d6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c28(-7336920) */
ffa066da:	02 e1 2c 0c 	R2.L = 0xc2c;		/* (3116)	R2=0xff900c2c(-7336916) */
ffa066de:	b8 a0       	R0 = [FP + 0x8];
ffa066e0:	ff e3 ec da 	CALL 0xffa01cb8 <_strcpy_>;
ffa066e4:	b8 b0       	[FP + 0x8] = R0;
ffa066e6:	b8 a0       	R0 = [FP + 0x8];
ffa066e8:	01 e8 00 00 	UNLINK;
ffa066ec:	10 00       	RTS;
	...

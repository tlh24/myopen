
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
ffa00178:	50 20       	JUMP.S 0xffa00218 <_main>;
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
ffa001a8:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa001ac:	b8 b0       	[FP + 0x8] = R0;
ffa001ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa001b0:	d0 bb       	[FP -0xc] = R0;
ffa001b2:	b8 a0       	R0 = [FP + 0x8];
ffa001b4:	00 0c       	CC = R0 == 0x0;
ffa001b6:	06 10       	IF !CC JUMP 0xffa001c2 <_eth_listen+0x1a>;
ffa001b8:	47 30       	R0 = FP;
ffa001ba:	80 67       	R0 += -0x10;		/* (-16) */
ffa001bc:	00 e3 54 0e 	CALL 0xffa01e64 <_bfin_EMAC_recv>;
ffa001c0:	d0 bb       	[FP -0xc] = R0;
ffa001c2:	d0 b9       	R0 = [FP -0xc];
ffa001c4:	00 0d       	CC = R0 <= 0x0;
ffa001c6:	26 18       	IF CC JUMP 0xffa00212 <_eth_listen+0x6a>;
ffa001c8:	c0 b9       	R0 = [FP -0x10];
ffa001ca:	e0 bb       	[FP -0x8] = R0;
ffa001cc:	ea b9       	P2 = [FP -0x8];
ffa001ce:	d1 a1       	R1 = [P2 + 0x1c];
ffa001d0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900000 <_l1_data_a> */
ffa001d4:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa001d8:	10 91       	R0 = [P2];
ffa001da:	01 08       	CC = R1 == R0;
ffa001dc:	1b 10       	IF !CC JUMP 0xffa00212 <_eth_listen+0x6a>;
ffa001de:	00 00       	NOP;
ffa001e0:	00 00       	NOP;
ffa001e2:	ea b9       	P2 = [FP -0x8];
ffa001e4:	50 e5 13 00 	R0 = W[P2 + 0x26] (X);
ffa001e8:	c0 42       	R0 = R0.L (Z);
ffa001ea:	00 e3 fd 14 	CALL 0xffa02be4 <_htons>;
ffa001ee:	c0 42       	R0 = R0.L (Z);
ffa001f0:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa001f4:	08 08       	CC = R0 == R1;
ffa001f6:	0e 10       	IF !CC JUMP 0xffa00212 <_eth_listen+0x6a>;
ffa001f8:	c0 b9       	R0 = [FP -0x10];
ffa001fa:	f0 bb       	[FP -0x4] = R0;
ffa001fc:	f0 b9       	R0 = [FP -0x4];
ffa001fe:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa00200:	f0 bb       	[FP -0x4] = R0;
ffa00202:	f0 b9       	R0 = [FP -0x4];
ffa00204:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa00208:	01 e1 c9 0b 	R1.L = 0xbc9;		/* (3017)	R1=0xff900bc9 <_g_outpkt>(-7337015) */
ffa0020c:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa0020e:	00 e3 a5 05 	CALL 0xffa00d58 <_memcpy_>;
ffa00212:	01 e8 00 00 	UNLINK;
ffa00216:	10 00       	RTS;

ffa00218 <_main>:
ffa00218:	00 e8 11 00 	LINK 0x44;		/* (68) */
ffa0021c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c74(-4191116) */
ffa00220:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00224:	20 e1 9c c1 	R0 = -0x3e64 (X);		/*		R0=0xffffc19c(-15972) */
ffa00228:	10 97       	W[P2] = R0;
ffa0022a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa0022e:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa00232:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa00234:	10 97       	W[P2] = R0;
ffa00236:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa0023a:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa0023e:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00240:	10 97       	W[P2] = R0;
ffa00242:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa00246:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa0024a:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0024c:	10 97       	W[P2] = R0;
ffa0024e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa00252:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa00256:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa0025a:	10 97       	W[P2] = R0;
ffa0025c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa00260:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa00264:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa00268:	10 97       	W[P2] = R0;
ffa0026a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0026e:	0a e1 04 05 	P2.L = 0x504;		/* (1284)	P2=0xffc00504(-4193020) */
ffa00272:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00274:	10 97       	W[P2] = R0;
ffa00276:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00504(-4193020) */
ffa0027a:	0a e1 04 04 	P2.L = 0x404;		/* (1028)	P2=0xffc00404(-4193276) */
ffa0027e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00280:	10 97       	W[P2] = R0;
ffa00282:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00404(-4193276) */
ffa00286:	0a e1 10 04 	P2.L = 0x410;		/* (1040)	P2=0xffc00410(-4193264) */
ffa0028a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0028c:	10 97       	W[P2] = R0;
ffa0028e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00410(-4193264) */
ffa00292:	0a e1 0c 04 	P2.L = 0x40c;		/* (1036)	P2=0xffc0040c(-4193268) */
ffa00296:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa0029a:	10 97       	W[P2] = R0;
ffa0029c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0040c(-4193268) */
ffa002a0:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa002a4:	20 e1 88 00 	R0 = 0x88 (X);		/*		R0=0x88(136) */
ffa002a8:	10 97       	W[P2] = R0;
ffa002aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa002ae:	0a e1 04 04 	P2.L = 0x404;		/* (1028)	P2=0xffc00404(-4193276) */
ffa002b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa002b4:	10 97       	W[P2] = R0;
ffa002b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00404(-4193276) */
ffa002ba:	0a e1 0c 04 	P2.L = 0x40c;		/* (1036)	P2=0xffc0040c(-4193268) */
ffa002be:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa002c0:	10 97       	W[P2] = R0;
ffa002c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0040c(-4193268) */
ffa002c6:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa002ca:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa002cc:	10 97       	W[P2] = R0;
ffa002ce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900424 */
ffa002d2:	0a e1 ec 0b 	P2.L = 0xbec;		/* (3052)	P2=0xff900bec <_printf_temp> */
ffa002d6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa002d8:	b8 4f       	R0 <<= 0x17;
ffa002da:	10 93       	[P2] = R0;
ffa002dc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bec <_printf_temp> */
ffa002e0:	0a e1 f0 0b 	P2.L = 0xbf0;		/* (3056)	P2=0xff900bf0 <_printf_out> */
ffa002e4:	20 e1 01 e0 	R0 = -0x1fff (X);		/*		R0=0xffffe001(-8191) */
ffa002e8:	50 4f       	R0 <<= 0xa;
ffa002ea:	10 93       	[P2] = R0;
ffa002ec:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90e001(-7282687) */
ffa002f0:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa002f4:	21 e1 80 01 	R1 = 0x180 (X);		/*		R1=0x180(384) */
ffa002f8:	00 e3 a8 02 	CALL 0xffa00848 <_printf_int>;
ffa002fc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00300:	00 e1 10 00 	R0.L = 0x10;		/* ( 16)	R0=0xff900010(-7340016) */
ffa00304:	00 e3 98 02 	CALL 0xffa00834 <_printf_str>;
ffa00308:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa0030c:	00 e1 14 00 	R0.L = 0x14;		/* ( 20)	R0=0xff900014(-7340012) */
ffa00310:	00 e3 92 02 	CALL 0xffa00834 <_printf_str>;
ffa00314:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00316:	30 bb       	[FP -0x34] = R0;
ffa00318:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0031a:	40 bb       	[FP -0x30] = R0;
ffa0031c:	20 20       	JUMP.S 0xffa0035c <_main+0x144>;
ffa0031e:	3a b9       	P2 = [FP -0x34];
ffa00320:	20 e1 ca de 	R0 = -0x2136 (X);		/*		R0=0xffffdeca(-8502) */
ffa00324:	10 97       	W[P2] = R0;
ffa00326:	30 b9       	R0 = [FP -0x34];
ffa00328:	10 64       	R0 += 0x2;		/* (  2) */
ffa0032a:	30 bb       	[FP -0x34] = R0;
ffa0032c:	3a b9       	P2 = [FP -0x34];
ffa0032e:	20 e1 ad fb 	R0 = -0x453 (X);		/*		R0=0xfffffbad(-1107) */
ffa00332:	10 97       	W[P2] = R0;
ffa00334:	30 b9       	R0 = [FP -0x34];
ffa00336:	10 64       	R0 += 0x2;		/* (  2) */
ffa00338:	30 bb       	[FP -0x34] = R0;
ffa0033a:	3a b9       	P2 = [FP -0x34];
ffa0033c:	20 e1 ed c0 	R0 = -0x3f13 (X);		/*		R0=0xffffc0ed(-16147) */
ffa00340:	10 97       	W[P2] = R0;
ffa00342:	30 b9       	R0 = [FP -0x34];
ffa00344:	10 64       	R0 += 0x2;		/* (  2) */
ffa00346:	30 bb       	[FP -0x34] = R0;
ffa00348:	3a b9       	P2 = [FP -0x34];
ffa0034a:	20 e1 be ba 	R0 = -0x4542 (X);		/*		R0=0xffffbabe(-17730) */
ffa0034e:	10 97       	W[P2] = R0;
ffa00350:	30 b9       	R0 = [FP -0x34];
ffa00352:	10 64       	R0 += 0x2;		/* (  2) */
ffa00354:	30 bb       	[FP -0x34] = R0;
ffa00356:	40 b9       	R0 = [FP -0x30];
ffa00358:	08 64       	R0 += 0x1;		/* (  1) */
ffa0035a:	40 bb       	[FP -0x30] = R0;
ffa0035c:	40 b9       	R0 = [FP -0x30];
ffa0035e:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa00360:	41 e1 3f 00 	R1.H = 0x3f;		/* ( 63)	R1=0x3fffff(4194303) */
ffa00364:	08 09       	CC = R0 <= R1;
ffa00366:	dc 1b       	IF CC JUMP 0xffa0031e <_main+0x106>;
ffa00368:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0036a:	30 bb       	[FP -0x34] = R0;
ffa0036c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0036e:	40 bb       	[FP -0x30] = R0;
ffa00370:	62 20       	JUMP.S 0xffa00434 <_main+0x21c>;
ffa00372:	3a b9       	P2 = [FP -0x34];
ffa00374:	50 95       	R0 = W[P2] (X);
ffa00376:	78 e6 ea ff 	W[FP + -0x2c] = R0;
ffa0037a:	30 b9       	R0 = [FP -0x34];
ffa0037c:	10 64       	R0 += 0x2;		/* (  2) */
ffa0037e:	30 bb       	[FP -0x34] = R0;
ffa00380:	78 e4 ea ff 	R0 = W[FP + -0x2c] (Z);
ffa00384:	81 e1 ca de 	R1 = 0xdeca (Z);		/*		R1=0xdeca(57034) */
ffa00388:	08 08       	CC = R0 == R1;
ffa0038a:	16 18       	IF CC JUMP 0xffa003b6 <_main+0x19e>;
ffa0038c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00390:	00 e1 28 00 	R0.L = 0x28;		/* ( 40)	R0=0xff900028(-7339992) */
ffa00394:	41 b9       	R1 = [FP -0x30];
ffa00396:	00 e3 2f 03 	CALL 0xffa009f4 <_printf_hex>;
ffa0039a:	79 e4 ea ff 	R1 = W[FP + -0x2c] (Z);
ffa0039e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900028(-7339992) */
ffa003a2:	00 e1 34 00 	R0.L = 0x34;		/* ( 52)	R0=0xff900034(-7339980) */
ffa003a6:	00 e3 27 03 	CALL 0xffa009f4 <_printf_hex>;
ffa003aa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900034(-7339980) */
ffa003ae:	00 e1 10 00 	R0.L = 0x10;		/* ( 16)	R0=0xff900010(-7340016) */
ffa003b2:	00 e3 41 02 	CALL 0xffa00834 <_printf_str>;
ffa003b6:	3a b9       	P2 = [FP -0x34];
ffa003b8:	50 95       	R0 = W[P2] (X);
ffa003ba:	78 e6 ea ff 	W[FP + -0x2c] = R0;
ffa003be:	30 b9       	R0 = [FP -0x34];
ffa003c0:	10 64       	R0 += 0x2;		/* (  2) */
ffa003c2:	30 bb       	[FP -0x34] = R0;
ffa003c4:	78 e4 ea ff 	R0 = W[FP + -0x2c] (Z);
ffa003c8:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa003cc:	08 08       	CC = R0 == R1;
ffa003ce:	08 18       	IF CC JUMP 0xffa003de <_main+0x1c6>;
ffa003d0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa003d4:	00 e1 28 00 	R0.L = 0x28;		/* ( 40)	R0=0xff900028(-7339992) */
ffa003d8:	41 b9       	R1 = [FP -0x30];
ffa003da:	00 e3 0d 03 	CALL 0xffa009f4 <_printf_hex>;
ffa003de:	3a b9       	P2 = [FP -0x34];
ffa003e0:	50 95       	R0 = W[P2] (X);
ffa003e2:	78 e6 ea ff 	W[FP + -0x2c] = R0;
ffa003e6:	30 b9       	R0 = [FP -0x34];
ffa003e8:	10 64       	R0 += 0x2;		/* (  2) */
ffa003ea:	30 bb       	[FP -0x34] = R0;
ffa003ec:	78 e4 ea ff 	R0 = W[FP + -0x2c] (Z);
ffa003f0:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa003f4:	08 08       	CC = R0 == R1;
ffa003f6:	08 18       	IF CC JUMP 0xffa00406 <_main+0x1ee>;
ffa003f8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900028(-7339992) */
ffa003fc:	00 e1 28 00 	R0.L = 0x28;		/* ( 40)	R0=0xff900028(-7339992) */
ffa00400:	41 b9       	R1 = [FP -0x30];
ffa00402:	00 e3 f9 02 	CALL 0xffa009f4 <_printf_hex>;
ffa00406:	3a b9       	P2 = [FP -0x34];
ffa00408:	50 95       	R0 = W[P2] (X);
ffa0040a:	78 e6 ea ff 	W[FP + -0x2c] = R0;
ffa0040e:	30 b9       	R0 = [FP -0x34];
ffa00410:	10 64       	R0 += 0x2;		/* (  2) */
ffa00412:	30 bb       	[FP -0x34] = R0;
ffa00414:	78 e4 ea ff 	R0 = W[FP + -0x2c] (Z);
ffa00418:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa0041c:	08 08       	CC = R0 == R1;
ffa0041e:	08 18       	IF CC JUMP 0xffa0042e <_main+0x216>;
ffa00420:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900028(-7339992) */
ffa00424:	00 e1 28 00 	R0.L = 0x28;		/* ( 40)	R0=0xff900028(-7339992) */
ffa00428:	41 b9       	R1 = [FP -0x30];
ffa0042a:	00 e3 e5 02 	CALL 0xffa009f4 <_printf_hex>;
ffa0042e:	40 b9       	R0 = [FP -0x30];
ffa00430:	08 64       	R0 += 0x1;		/* (  1) */
ffa00432:	40 bb       	[FP -0x30] = R0;
ffa00434:	40 b9       	R0 = [FP -0x30];
ffa00436:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa00438:	41 e1 3f 00 	R1.H = 0x3f;		/* ( 63)	R1=0x3fffff(4194303) */
ffa0043c:	08 09       	CC = R0 <= R1;
ffa0043e:	9a 1b       	IF CC JUMP 0xffa00372 <_main+0x15a>;
ffa00440:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900028(-7339992) */
ffa00444:	00 e1 3c 00 	R0.L = 0x3c;		/* ( 60)	R0=0xff90003c(-7339972) */
ffa00448:	00 e3 f6 01 	CALL 0xffa00834 <_printf_str>;
ffa0044c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bf0(-4191248) */
ffa00450:	0a e1 84 06 	P2.L = 0x684;		/* (1668)	P2=0xffc00684(-4192636) */
ffa00454:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00456:	10 97       	W[P2] = R0;
ffa00458:	24 00       	SSYNC;
ffa0045a:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800684 */
ffa0045e:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00462:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00464:	10 93       	[P2] = R0;
ffa00466:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa0046a:	0a e1 50 06 	P2.L = 0x650;		/* (1616)	P2=0xffc00650(-4192688) */
ffa0046e:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa00472:	10 97       	W[P2] = R0;
ffa00474:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00650(-4192688) */
ffa00478:	0a e1 58 06 	P2.L = 0x658;		/* (1624)	P2=0xffc00658(-4192680) */
ffa0047c:	20 e1 09 3d 	R0 = 0x3d09 (X);		/*		R0=0x3d09(15625) */
ffa00480:	18 4f       	R0 <<= 0x3;
ffa00482:	10 93       	[P2] = R0;
ffa00484:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00658(-4192680) */
ffa00488:	0a e1 5c 06 	P2.L = 0x65c;		/* (1628)	P2=0xffc0065c(-4192676) */
ffa0048c:	80 e1 24 f4 	R0 = 0xf424 (Z);		/*		R0=0xf424(62500) */
ffa00490:	10 93       	[P2] = R0;
ffa00492:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0203c(-4186052) */
ffa00496:	09 e1 80 06 	P1.L = 0x680;		/* (1664)	P1=0xffc00680(-4192640) */
ffa0049a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0065c(-4192676) */
ffa0049e:	0a e1 80 06 	P2.L = 0x680;		/* (1664)	P2=0xffc00680(-4192640) */
ffa004a2:	50 95       	R0 = W[P2] (X);
ffa004a4:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa004a6:	08 97       	W[P1] = R0;
ffa004a8:	00 e3 ba 0e 	CALL 0xffa0221c <_bfin_EMAC_init>;
ffa004ac:	60 bb       	[FP -0x28] = R0;
ffa004ae:	60 b9       	R0 = [FP -0x28];
ffa004b0:	00 0c       	CC = R0 == 0x0;
ffa004b2:	03 10       	IF !CC JUMP 0xffa004b8 <_main+0x2a0>;
ffa004b4:	00 e3 60 19 	CALL 0xffa03774 <_DHCP_req>;
ffa004b8:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00680(-4192640) */
ffa004bc:	09 e1 00 32 	P1.L = 0x3200;		/* (12800)	P1=0xffc03200(-4181504) */
ffa004c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00680(-4192640) */
ffa004c4:	0a e1 00 32 	P2.L = 0x3200;		/* (12800)	P2=0xffc03200(-4181504) */
ffa004c8:	51 95       	R1 = W[P2] (X);
ffa004ca:	38 62       	R0 = -0x39 (X);		/*		R0=0xffffffc7(-57) */
ffa004cc:	01 54       	R0 = R1 & R0;
ffa004ce:	08 97       	W[P1] = R0;
ffa004d0:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03200(-4181504) */
ffa004d4:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa004d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03200(-4181504) */
ffa004dc:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa004e0:	51 95       	R1 = W[P2] (X);
ffa004e2:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa004e4:	01 56       	R0 = R1 | R0;
ffa004e6:	08 97       	W[P1] = R0;
ffa004e8:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa004ec:	09 e1 40 07 	P1.L = 0x740;		/* (1856)	P1=0xffc00740(-4192448) */
ffa004f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa004f4:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa004f8:	51 95       	R1 = W[P2] (X);
ffa004fa:	38 62       	R0 = -0x39 (X);		/*		R0=0xffffffc7(-57) */
ffa004fc:	01 54       	R0 = R1 & R0;
ffa004fe:	08 97       	W[P1] = R0;
ffa00500:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00740(-4192448) */
ffa00504:	09 e1 40 15 	P1.L = 0x1540;		/* (5440)	P1=0xffc01540(-4188864) */
ffa00508:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa0050c:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa00510:	50 95       	R0 = W[P2] (X);
ffa00512:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa00514:	08 97       	W[P1] = R0;
ffa00516:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc01540(-4188864) */
ffa0051a:	09 e1 30 15 	P1.L = 0x1530;		/* (5424)	P1=0xffc01530(-4188880) */
ffa0051e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa00522:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa00526:	51 95       	R1 = W[P2] (X);
ffa00528:	20 e1 ff f7 	R0 = -0x801 (X);		/*		R0=0xfffff7ff(-2049) */
ffa0052c:	01 54       	R0 = R1 & R0;
ffa0052e:	08 97       	W[P1] = R0;
ffa00530:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00532:	70 bb       	[FP -0x24] = R0;
ffa00534:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00536:	a0 bb       	[FP -0x18] = R0;
ffa00538:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0053a:	b0 bb       	[FP -0x14] = R0;
ffa0053c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0053e:	b8 e6 f3 ff 	B[FP + -0xd] = R0;
ffa00542:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa00546:	00 e3 23 0a 	CALL 0xffa0198c <_radio_init>;
ffa0054a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa0054e:	00 e1 50 00 	R0.L = 0x50;		/* ( 80)	R0=0xff900050(-7339952) */
ffa00552:	00 e3 71 01 	CALL 0xffa00834 <_printf_str>;
ffa00556:	00 e3 9f 09 	CALL 0xffa01894 <_radio_set_rx>;
ffa0055a:	01 20       	JUMP.S 0xffa0055c <_main+0x344>;
ffa0055c:	60 b9       	R0 = [FP -0x28];
ffa0055e:	ff e3 25 fe 	CALL 0xffa001a8 <_eth_listen>;
ffa00562:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa00566:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa0056a:	50 95       	R0 = W[P2] (X);
ffa0056c:	c1 42       	R1 = R0.L (Z);
ffa0056e:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa00572:	01 54       	R0 = R1 & R0;
ffa00574:	00 0c       	CC = R0 == 0x0;
ffa00576:	a5 10       	IF !CC JUMP 0xffa006c0 <_main+0x4a8>;
ffa00578:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0057a:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0057e:	00 e3 0b 07 	CALL 0xffa01394 <_spi_write_register>;
ffa00582:	24 00       	SSYNC;
ffa00584:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa00588:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0058c:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa00590:	10 97       	W[P2] = R0;
ffa00592:	24 00       	SSYNC;
ffa00594:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00598:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0059c:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa005a0:	10 97       	W[P2] = R0;
ffa005a2:	00 e3 d5 06 	CALL 0xffa0134c <_spi_delay>;
ffa005a6:	a0 b9       	R0 = [FP -0x18];
ffa005a8:	d0 bb       	[FP -0xc] = R0;
ffa005aa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa005ac:	40 bb       	[FP -0x30] = R0;
ffa005ae:	16 20       	JUMP.S 0xffa005da <_main+0x3c2>;
ffa005b0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa005b4:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa005b8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa005ba:	10 97       	W[P2] = R0;
ffa005bc:	00 e3 c8 06 	CALL 0xffa0134c <_spi_delay>;
ffa005c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa005c4:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa005c8:	50 95       	R0 = W[P2] (X);
ffa005ca:	da b9       	P2 = [FP -0xc];
ffa005cc:	10 9b       	B[P2] = R0;
ffa005ce:	d0 b9       	R0 = [FP -0xc];
ffa005d0:	08 64       	R0 += 0x1;		/* (  1) */
ffa005d2:	d0 bb       	[FP -0xc] = R0;
ffa005d4:	40 b9       	R0 = [FP -0x30];
ffa005d6:	08 64       	R0 += 0x1;		/* (  1) */
ffa005d8:	40 bb       	[FP -0x30] = R0;
ffa005da:	40 b9       	R0 = [FP -0x30];
ffa005dc:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa005de:	08 09       	CC = R0 <= R1;
ffa005e0:	e8 1b       	IF CC JUMP 0xffa005b0 <_main+0x398>;
ffa005e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa005e6:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa005ea:	20 e1 00 06 	R0 = 0x600 (X);		/*		R0=0x600(1536) */
ffa005ee:	10 97       	W[P2] = R0;
ffa005f0:	24 00       	SSYNC;
ffa005f2:	a0 b9       	R0 = [FP -0x18];
ffa005f4:	e0 bb       	[FP -0x8] = R0;
ffa005f6:	a0 b9       	R0 = [FP -0x18];
ffa005f8:	00 65       	R0 += 0x20;		/* ( 32) */
ffa005fa:	a0 bb       	[FP -0x18] = R0;
ffa005fc:	a1 b9       	R1 = [FP -0x18];
ffa005fe:	20 e1 ff 0f 	R0 = 0xfff (X);		/*		R0=0xfff(4095) */
ffa00602:	01 54       	R0 = R1 & R0;
ffa00604:	a0 bb       	[FP -0x18] = R0;
ffa00606:	e0 b9       	R0 = [FP -0x8];
ffa00608:	d8 64       	R0 += 0x1b;		/* ( 27) */
ffa0060a:	e0 bb       	[FP -0x8] = R0;
ffa0060c:	ea b9       	P2 = [FP -0x8];
ffa0060e:	50 99       	R0 = B[P2] (X);
ffa00610:	01 43       	R1 = R0.B (X);
ffa00612:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa00614:	01 54       	R0 = R1 & R0;
ffa00616:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00618:	08 08       	CC = R0 == R1;
ffa0061a:	53 10       	IF !CC JUMP 0xffa006c0 <_main+0x4a8>;
ffa0061c:	00 e3 6a 09 	CALL 0xffa018f0 <_radio_set_tx>;
ffa00620:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00624:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00628:	20 e1 00 06 	R0 = 0x600 (X);		/*		R0=0x600(1536) */
ffa0062c:	10 97       	W[P2] = R0;
ffa0062e:	24 00       	SSYNC;
ffa00630:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00634:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa00638:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0063c:	10 97       	W[P2] = R0;
ffa0063e:	00 e3 87 06 	CALL 0xffa0134c <_spi_delay>;
ffa00642:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00646:	00 e1 c9 0b 	R0.L = 0xbc9;		/* (3017)	R0=0xff900bc9 <_g_outpkt>(-7337015) */
ffa0064a:	f0 bb       	[FP -0x4] = R0;
ffa0064c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0064e:	40 bb       	[FP -0x30] = R0;
ffa00650:	11 20       	JUMP.S 0xffa00672 <_main+0x45a>;
ffa00652:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc01530(-4188880) */
ffa00656:	09 e1 0c 05 	P1.L = 0x50c;		/* (1292)	P1=0xffc0050c(-4193012) */
ffa0065a:	fa b9       	P2 = [FP -0x4];
ffa0065c:	50 99       	R0 = B[P2] (X);
ffa0065e:	40 43       	R0 = R0.B (Z);
ffa00660:	08 97       	W[P1] = R0;
ffa00662:	f0 b9       	R0 = [FP -0x4];
ffa00664:	08 64       	R0 += 0x1;		/* (  1) */
ffa00666:	f0 bb       	[FP -0x4] = R0;
ffa00668:	00 e3 72 06 	CALL 0xffa0134c <_spi_delay>;
ffa0066c:	40 b9       	R0 = [FP -0x30];
ffa0066e:	08 64       	R0 += 0x1;		/* (  1) */
ffa00670:	40 bb       	[FP -0x30] = R0;
ffa00672:	40 b9       	R0 = [FP -0x30];
ffa00674:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa00676:	08 09       	CC = R0 <= R1;
ffa00678:	ed 1b       	IF CC JUMP 0xffa00652 <_main+0x43a>;
ffa0067a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0067e:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00682:	20 e1 00 06 	R0 = 0x600 (X);		/*		R0=0x600(1536) */
ffa00686:	10 97       	W[P2] = R0;
ffa00688:	24 00       	SSYNC;
ffa0068a:	60 b9       	R0 = [FP -0x28];
ffa0068c:	ff e3 8e fd 	CALL 0xffa001a8 <_eth_listen>;
ffa00690:	03 20       	JUMP.S 0xffa00696 <_main+0x47e>;
ffa00692:	00 00       	NOP;
ffa00694:	00 00       	NOP;
ffa00696:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0069a:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa0069e:	50 95       	R0 = W[P2] (X);
ffa006a0:	c1 42       	R1 = R0.L (Z);
ffa006a2:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa006a6:	01 54       	R0 = R1 & R0;
ffa006a8:	00 0c       	CC = R0 == 0x0;
ffa006aa:	f4 13       	IF !CC JUMP 0xffa00692 <_main+0x47a>;
ffa006ac:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa006ae:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa006b2:	00 e3 71 06 	CALL 0xffa01394 <_spi_write_register>;
ffa006b6:	00 e3 ef 08 	CALL 0xffa01894 <_radio_set_rx>;
ffa006ba:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa006bc:	b8 e6 f3 ff 	B[FP + -0xd] = R0;
ffa006c0:	b8 e5 f3 ff 	R0 = B[FP + -0xd] (X);
ffa006c4:	00 0c       	CC = R0 == 0x0;
ffa006c6:	06 10       	IF !CC JUMP 0xffa006d2 <_main+0x4ba>;
ffa006c8:	a0 b9       	R0 = [FP -0x18];
ffa006ca:	21 e1 ff 00 	R1 = 0xff (X);		/*		R1=0xff(255) */
ffa006ce:	08 0a       	CC = R0 <= R1 (IU);
ffa006d0:	27 18       	IF CC JUMP 0xffa0071e <_main+0x506>;
ffa006d2:	4f 30       	R1 = FP;
ffa006d4:	59 66       	R1 += -0x35;		/* (-53) */
ffa006d6:	20 e1 04 01 	R0 = 0x104 (X);		/*		R0=0x104(260) */
ffa006da:	00 e3 45 15 	CALL 0xffa03164 <_udp_packet_setup>;
ffa006de:	90 bb       	[FP -0x1c] = R0;
ffa006e0:	b8 e5 cb ff 	R0 = B[FP + -0x35] (X);
ffa006e4:	00 43       	R0 = R0.B (X);
ffa006e6:	00 0d       	CC = R0 <= 0x0;
ffa006e8:	13 18       	IF CC JUMP 0xffa0070e <_main+0x4f6>;
ffa006ea:	9a b9       	P2 = [FP -0x1c];
ffa006ec:	b0 b9       	R0 = [FP -0x14];
ffa006ee:	10 93       	[P2] = R0;
ffa006f0:	90 b9       	R0 = [FP -0x1c];
ffa006f2:	20 64       	R0 += 0x4;		/* (  4) */
ffa006f4:	90 bb       	[FP -0x1c] = R0;
ffa006f6:	91 b9       	R1 = [FP -0x1c];
ffa006f8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa006fa:	22 e1 00 01 	R2 = 0x100 (X);		/*		R2=0x100(256) */
ffa006fe:	00 e3 2d 03 	CALL 0xffa00d58 <_memcpy_>;
ffa00702:	b0 b9       	R0 = [FP -0x14];
ffa00704:	08 64       	R0 += 0x1;		/* (  1) */
ffa00706:	b0 bb       	[FP -0x14] = R0;
ffa00708:	00 e3 fc 0a 	CALL 0xffa01d00 <_bfin_EMAC_send_nocopy>;
ffa0070c:	04 20       	JUMP.S 0xffa00714 <_main+0x4fc>;
ffa0070e:	b0 b9       	R0 = [FP -0x14];
ffa00710:	08 64       	R0 += 0x1;		/* (  1) */
ffa00712:	b0 bb       	[FP -0x14] = R0;
ffa00714:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00716:	b8 e6 f3 ff 	B[FP + -0xd] = R0;
ffa0071a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0071c:	a0 bb       	[FP -0x18] = R0;
ffa0071e:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff801500 */
ffa00722:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00726:	11 91       	R1 = [P2];
ffa00728:	40 e1 62 10 	R0.H = 0x1062;		/* (4194)	R0=0x10620000(274857984) */
ffa0072c:	00 e1 d3 4d 	R0.L = 0x4dd3;		/* (19923)	R0=0x10624dd3(274877907) */
ffa00730:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa00734:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00738:	81 c0 08 86 	A1 += R1.H * R0.L, A0 = R1.H * R0.H (FU);
ffa0073c:	81 c0 01 98 	A1 += R0.H * R1.L (FU);
ffa00740:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00744:	0b c4 00 80 	A0 += A1;
ffa00748:	8b c0 00 38 	R0 = A0 (FU);
ffa0074c:	30 4e       	R0 >>= 0x6;
ffa0074e:	80 bb       	[FP -0x20] = R0;
ffa00750:	81 b9       	R1 = [FP -0x20];
ffa00752:	70 b9       	R0 = [FP -0x24];
ffa00754:	01 08       	CC = R1 == R0;
ffa00756:	03 1b       	IF CC JUMP 0xffa0055c <_main+0x344>;
ffa00758:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa0075c:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa00760:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa00762:	10 97       	W[P2] = R0;
ffa00764:	80 b9       	R0 = [FP -0x20];
ffa00766:	70 bb       	[FP -0x24] = R0;
ffa00768:	fa 2e       	JUMP.S 0xffa0055c <_main+0x344>;
	...

ffa0076c <_uart_str>:
ffa0076c:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa00770:	b8 b0       	[FP + 0x8] = R0;
ffa00772:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00774:	e0 bb       	[FP -0x8] = R0;
ffa00776:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa0077a:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa0077e:	50 95       	R0 = W[P2] (X);
ffa00780:	c0 42       	R0 = R0.L (Z);
ffa00782:	08 0c       	CC = R0 == 0x1;
ffa00784:	53 10       	IF !CC JUMP 0xffa0082a <_uart_str+0xbe>;
ffa00786:	48 20       	JUMP.S 0xffa00816 <_uart_str+0xaa>;
ffa00788:	ba ac       	P2 = [FP + 0x8];
ffa0078a:	50 99       	R0 = B[P2] (X);
ffa0078c:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa00790:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa00794:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00796:	08 08       	CC = R0 == R1;
ffa00798:	26 10       	IF !CC JUMP 0xffa007e4 <_uart_str+0x78>;
ffa0079a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa0079e:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa007a2:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa007a4:	10 97       	W[P2] = R0;
ffa007a6:	02 20       	JUMP.S 0xffa007aa <_uart_str+0x3e>;
ffa007a8:	00 00       	NOP;
ffa007aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa007ae:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa007b2:	50 95       	R0 = W[P2] (X);
ffa007b4:	c1 42       	R1 = R0.L (Z);
ffa007b6:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa007b8:	01 54       	R0 = R1 & R0;
ffa007ba:	00 0c       	CC = R0 == 0x0;
ffa007bc:	f6 1b       	IF CC JUMP 0xffa007a8 <_uart_str+0x3c>;
ffa007be:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa007c2:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa007c6:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa007c8:	10 97       	W[P2] = R0;
ffa007ca:	02 20       	JUMP.S 0xffa007ce <_uart_str+0x62>;
ffa007cc:	00 00       	NOP;
ffa007ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa007d2:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa007d6:	50 95       	R0 = W[P2] (X);
ffa007d8:	c1 42       	R1 = R0.L (Z);
ffa007da:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa007dc:	01 54       	R0 = R1 & R0;
ffa007de:	00 0c       	CC = R0 == 0x0;
ffa007e0:	f6 1b       	IF CC JUMP 0xffa007cc <_uart_str+0x60>;
ffa007e2:	14 20       	JUMP.S 0xffa0080a <_uart_str+0x9e>;
ffa007e4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa007e8:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa007ec:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa007f0:	10 97       	W[P2] = R0;
ffa007f2:	02 20       	JUMP.S 0xffa007f6 <_uart_str+0x8a>;
ffa007f4:	00 00       	NOP;
ffa007f6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa007fa:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa007fe:	50 95       	R0 = W[P2] (X);
ffa00800:	c1 42       	R1 = R0.L (Z);
ffa00802:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00804:	01 54       	R0 = R1 & R0;
ffa00806:	00 0c       	CC = R0 == 0x0;
ffa00808:	f6 1b       	IF CC JUMP 0xffa007f4 <_uart_str+0x88>;
ffa0080a:	b8 a0       	R0 = [FP + 0x8];
ffa0080c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0080e:	b8 b0       	[FP + 0x8] = R0;
ffa00810:	e0 b9       	R0 = [FP -0x8];
ffa00812:	08 64       	R0 += 0x1;		/* (  1) */
ffa00814:	e0 bb       	[FP -0x8] = R0;
ffa00816:	ba ac       	P2 = [FP + 0x8];
ffa00818:	50 99       	R0 = B[P2] (X);
ffa0081a:	00 43       	R0 = R0.B (X);
ffa0081c:	00 0c       	CC = R0 == 0x0;
ffa0081e:	06 18       	IF CC JUMP 0xffa0082a <_uart_str+0xbe>;
ffa00820:	e0 b9       	R0 = [FP -0x8];
ffa00822:	21 e1 ff 03 	R1 = 0x3ff (X);		/*		R1=0x3ff(1023) */
ffa00826:	08 09       	CC = R0 <= R1;
ffa00828:	b0 1b       	IF CC JUMP 0xffa00788 <_uart_str+0x1c>;
ffa0082a:	e0 b9       	R0 = [FP -0x8];
ffa0082c:	01 e8 00 00 	UNLINK;
ffa00830:	10 00       	RTS;
	...

ffa00834 <_printf_str>:
ffa00834:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00838:	b8 b0       	[FP + 0x8] = R0;
ffa0083a:	b8 a0       	R0 = [FP + 0x8];
ffa0083c:	ff e3 98 ff 	CALL 0xffa0076c <_uart_str>;
ffa00840:	01 e8 00 00 	UNLINK;
ffa00844:	10 00       	RTS;
	...

ffa00848 <_printf_int>:
ffa00848:	00 e8 09 00 	LINK 0x24;		/* (36) */
ffa0084c:	b8 b0       	[FP + 0x8] = R0;
ffa0084e:	f9 b0       	[FP + 0xc] = R1;
ffa00850:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00852:	c0 bb       	[FP -0x10] = R0;
ffa00854:	f8 a0       	R0 = [FP + 0xc];
ffa00856:	00 0c       	CC = R0 == 0x0;
ffa00858:	0b 10       	IF !CC JUMP 0xffa0086e <_printf_int+0x26>;
ffa0085a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900414 */
ffa0085e:	0a e1 ec 0b 	P2.L = 0xbec;		/* (3052)	P2=0xff900bec <_printf_temp> */
ffa00862:	52 91       	P2 = [P2];
ffa00864:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00866:	10 9b       	B[P2] = R0;
ffa00868:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0086a:	c0 bb       	[FP -0x10] = R0;
ffa0086c:	62 20       	JUMP.S 0xffa00930 <_printf_int+0xe8>;
ffa0086e:	f8 a0       	R0 = [FP + 0xc];
ffa00870:	00 0d       	CC = R0 <= 0x0;
ffa00872:	25 18       	IF CC JUMP 0xffa008bc <_printf_int+0x74>;
ffa00874:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00876:	c0 bb       	[FP -0x10] = R0;
ffa00878:	19 20       	JUMP.S 0xffa008aa <_printf_int+0x62>;
ffa0087a:	f8 a0       	R0 = [FP + 0xc];
ffa0087c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0087e:	00 e3 5b 02 	CALL 0xffa00d34 <_mod>;
ffa00882:	d0 bb       	[FP -0xc] = R0;
ffa00884:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bec <_printf_temp> */
ffa00888:	0a e1 ec 0b 	P2.L = 0xbec;		/* (3052)	P2=0xff900bec <_printf_temp> */
ffa0088c:	11 91       	R1 = [P2];
ffa0088e:	c0 b9       	R0 = [FP -0x10];
ffa00890:	41 50       	R1 = R1 + R0;
ffa00892:	11 32       	P2 = R1;
ffa00894:	d0 b9       	R0 = [FP -0xc];
ffa00896:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00898:	10 9b       	B[P2] = R0;
ffa0089a:	c0 b9       	R0 = [FP -0x10];
ffa0089c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0089e:	c0 bb       	[FP -0x10] = R0;
ffa008a0:	f8 a0       	R0 = [FP + 0xc];
ffa008a2:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa008a4:	00 e3 1e 02 	CALL 0xffa00ce0 <_div>;
ffa008a8:	f8 b0       	[FP + 0xc] = R0;
ffa008aa:	f8 a0       	R0 = [FP + 0xc];
ffa008ac:	00 0d       	CC = R0 <= 0x0;
ffa008ae:	41 18       	IF CC JUMP 0xffa00930 <_printf_int+0xe8>;
ffa008b0:	c0 b9       	R0 = [FP -0x10];
ffa008b2:	21 e1 7f 00 	R1 = 0x7f (X);		/*		R1=0x7f(127) */
ffa008b6:	08 09       	CC = R0 <= R1;
ffa008b8:	e1 1b       	IF CC JUMP 0xffa0087a <_printf_int+0x32>;
ffa008ba:	3b 20       	JUMP.S 0xffa00930 <_printf_int+0xe8>;
ffa008bc:	f8 a0       	R0 = [FP + 0xc];
ffa008be:	80 0c       	CC = R0 < 0x0;
ffa008c0:	38 10       	IF !CC JUMP 0xffa00930 <_printf_int+0xe8>;
ffa008c2:	f8 a0       	R0 = [FP + 0xc];
ffa008c4:	08 30       	R1 = R0;
ffa008c6:	f9 4c       	BITCLR (R1, 0x1f);		/* bit 31 */
ffa008c8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa008ca:	f8 4f       	R0 <<= 0x1f;
ffa008cc:	08 52       	R0 = R0 - R1;
ffa008ce:	f8 b0       	[FP + 0xc] = R0;
ffa008d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008d2:	c0 bb       	[FP -0x10] = R0;
ffa008d4:	19 20       	JUMP.S 0xffa00906 <_printf_int+0xbe>;
ffa008d6:	f8 a0       	R0 = [FP + 0xc];
ffa008d8:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa008da:	00 e3 2d 02 	CALL 0xffa00d34 <_mod>;
ffa008de:	d0 bb       	[FP -0xc] = R0;
ffa008e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bec <_printf_temp> */
ffa008e4:	0a e1 ec 0b 	P2.L = 0xbec;		/* (3052)	P2=0xff900bec <_printf_temp> */
ffa008e8:	11 91       	R1 = [P2];
ffa008ea:	c0 b9       	R0 = [FP -0x10];
ffa008ec:	41 50       	R1 = R1 + R0;
ffa008ee:	11 32       	P2 = R1;
ffa008f0:	d0 b9       	R0 = [FP -0xc];
ffa008f2:	80 65       	R0 += 0x30;		/* ( 48) */
ffa008f4:	10 9b       	B[P2] = R0;
ffa008f6:	c0 b9       	R0 = [FP -0x10];
ffa008f8:	08 64       	R0 += 0x1;		/* (  1) */
ffa008fa:	c0 bb       	[FP -0x10] = R0;
ffa008fc:	f8 a0       	R0 = [FP + 0xc];
ffa008fe:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00900:	00 e3 f0 01 	CALL 0xffa00ce0 <_div>;
ffa00904:	f8 b0       	[FP + 0xc] = R0;
ffa00906:	f8 a0       	R0 = [FP + 0xc];
ffa00908:	00 0d       	CC = R0 <= 0x0;
ffa0090a:	06 18       	IF CC JUMP 0xffa00916 <_printf_int+0xce>;
ffa0090c:	c0 b9       	R0 = [FP -0x10];
ffa0090e:	21 e1 7f 00 	R1 = 0x7f (X);		/*		R1=0x7f(127) */
ffa00912:	08 09       	CC = R0 <= R1;
ffa00914:	e1 1b       	IF CC JUMP 0xffa008d6 <_printf_int+0x8e>;
ffa00916:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bec <_printf_temp> */
ffa0091a:	0a e1 ec 0b 	P2.L = 0xbec;		/* (3052)	P2=0xff900bec <_printf_temp> */
ffa0091e:	11 91       	R1 = [P2];
ffa00920:	c0 b9       	R0 = [FP -0x10];
ffa00922:	41 50       	R1 = R1 + R0;
ffa00924:	11 32       	P2 = R1;
ffa00926:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa00928:	10 9b       	B[P2] = R0;
ffa0092a:	c0 b9       	R0 = [FP -0x10];
ffa0092c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0092e:	c0 bb       	[FP -0x10] = R0;
ffa00930:	b8 a0       	R0 = [FP + 0x8];
ffa00932:	00 e3 4b 02 	CALL 0xffa00dc8 <_strlen_>;
ffa00936:	b0 bb       	[FP -0x14] = R0;
ffa00938:	b1 b9       	R1 = [FP -0x14];
ffa0093a:	c0 b9       	R0 = [FP -0x10];
ffa0093c:	01 50       	R0 = R1 + R0;
ffa0093e:	21 e1 ff 03 	R1 = 0x3ff (X);		/*		R1=0x3ff(1023) */
ffa00942:	08 09       	CC = R0 <= R1;
ffa00944:	52 10       	IF !CC JUMP 0xffa009e8 <_printf_int+0x1a0>;
ffa00946:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00948:	f0 bb       	[FP -0x4] = R0;
ffa0094a:	12 20       	JUMP.S 0xffa0096e <_printf_int+0x126>;
ffa0094c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bec <_printf_temp> */
ffa00950:	0a e1 f0 0b 	P2.L = 0xbf0;		/* (3056)	P2=0xff900bf0 <_printf_out> */
ffa00954:	11 91       	R1 = [P2];
ffa00956:	f0 b9       	R0 = [FP -0x4];
ffa00958:	41 50       	R1 = R1 + R0;
ffa0095a:	09 32       	P1 = R1;
ffa0095c:	ba ac       	P2 = [FP + 0x8];
ffa0095e:	50 99       	R0 = B[P2] (X);
ffa00960:	08 9b       	B[P1] = R0;
ffa00962:	b8 a0       	R0 = [FP + 0x8];
ffa00964:	08 64       	R0 += 0x1;		/* (  1) */
ffa00966:	b8 b0       	[FP + 0x8] = R0;
ffa00968:	f0 b9       	R0 = [FP -0x4];
ffa0096a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0096c:	f0 bb       	[FP -0x4] = R0;
ffa0096e:	f1 b9       	R1 = [FP -0x4];
ffa00970:	b0 b9       	R0 = [FP -0x14];
ffa00972:	81 08       	CC = R1 < R0;
ffa00974:	ec 1b       	IF CC JUMP 0xffa0094c <_printf_int+0x104>;
ffa00976:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00978:	e0 bb       	[FP -0x8] = R0;
ffa0097a:	1c 20       	JUMP.S 0xffa009b2 <_printf_int+0x16a>;
ffa0097c:	b1 b9       	R1 = [FP -0x14];
ffa0097e:	e0 b9       	R0 = [FP -0x8];
ffa00980:	01 50       	R0 = R1 + R0;
ffa00982:	08 30       	R1 = R0;
ffa00984:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bf0 <_printf_out> */
ffa00988:	0a e1 f0 0b 	P2.L = 0xbf0;		/* (3056)	P2=0xff900bf0 <_printf_out> */
ffa0098c:	10 91       	R0 = [P2];
ffa0098e:	41 50       	R1 = R1 + R0;
ffa00990:	09 32       	P1 = R1;
ffa00992:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bf0 <_printf_out> */
ffa00996:	0a e1 ec 0b 	P2.L = 0xbec;		/* (3052)	P2=0xff900bec <_printf_temp> */
ffa0099a:	12 91       	R2 = [P2];
ffa0099c:	c1 b9       	R1 = [FP -0x10];
ffa0099e:	e0 b9       	R0 = [FP -0x8];
ffa009a0:	01 52       	R0 = R1 - R0;
ffa009a2:	02 50       	R0 = R2 + R0;
ffa009a4:	10 32       	P2 = R0;
ffa009a6:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa009a8:	50 99       	R0 = B[P2] (X);
ffa009aa:	08 9b       	B[P1] = R0;
ffa009ac:	e0 b9       	R0 = [FP -0x8];
ffa009ae:	08 64       	R0 += 0x1;		/* (  1) */
ffa009b0:	e0 bb       	[FP -0x8] = R0;
ffa009b2:	e1 b9       	R1 = [FP -0x8];
ffa009b4:	c0 b9       	R0 = [FP -0x10];
ffa009b6:	81 08       	CC = R1 < R0;
ffa009b8:	e2 1b       	IF CC JUMP 0xffa0097c <_printf_int+0x134>;
ffa009ba:	b1 b9       	R1 = [FP -0x14];
ffa009bc:	c0 b9       	R0 = [FP -0x10];
ffa009be:	01 50       	R0 = R1 + R0;
ffa009c0:	08 30       	R1 = R0;
ffa009c2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bec <_printf_temp> */
ffa009c6:	0a e1 f0 0b 	P2.L = 0xbf0;		/* (3056)	P2=0xff900bf0 <_printf_out> */
ffa009ca:	10 91       	R0 = [P2];
ffa009cc:	41 50       	R1 = R1 + R0;
ffa009ce:	11 32       	P2 = R1;
ffa009d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009d2:	10 9b       	B[P2] = R0;
ffa009d4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bf0 <_printf_out> */
ffa009d8:	0a e1 f0 0b 	P2.L = 0xbf0;		/* (3056)	P2=0xff900bf0 <_printf_out> */
ffa009dc:	10 91       	R0 = [P2];
ffa009de:	ff e3 c7 fe 	CALL 0xffa0076c <_uart_str>;
ffa009e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009e4:	a0 bb       	[FP -0x18] = R0;
ffa009e6:	03 20       	JUMP.S 0xffa009ec <_printf_int+0x1a4>;
ffa009e8:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa009ea:	a1 bb       	[FP -0x18] = R1;
ffa009ec:	a0 b9       	R0 = [FP -0x18];
ffa009ee:	01 e8 00 00 	UNLINK;
ffa009f2:	10 00       	RTS;

ffa009f4 <_printf_hex>:
ffa009f4:	00 e8 0a 00 	LINK 0x28;		/* (40) */
ffa009f8:	b8 b0       	[FP + 0x8] = R0;
ffa009fa:	f9 b0       	[FP + 0xc] = R1;
ffa009fc:	b8 a0       	R0 = [FP + 0x8];
ffa009fe:	00 e3 e5 01 	CALL 0xffa00dc8 <_strlen_>;
ffa00a02:	a0 bb       	[FP -0x18] = R0;
ffa00a04:	a0 b9       	R0 = [FP -0x18];
ffa00a06:	21 e1 f5 03 	R1 = 0x3f5 (X);		/*		R1=0x3f5(1013) */
ffa00a0a:	08 09       	CC = R0 <= R1;
ffa00a0c:	8f 10       	IF !CC JUMP 0xffa00b2a <_printf_hex+0x136>;
ffa00a0e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a10:	f0 bb       	[FP -0x4] = R0;
ffa00a12:	12 20       	JUMP.S 0xffa00a36 <_printf_hex+0x42>;
ffa00a14:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bf0 <_printf_out> */
ffa00a18:	0a e1 f0 0b 	P2.L = 0xbf0;		/* (3056)	P2=0xff900bf0 <_printf_out> */
ffa00a1c:	11 91       	R1 = [P2];
ffa00a1e:	f0 b9       	R0 = [FP -0x4];
ffa00a20:	41 50       	R1 = R1 + R0;
ffa00a22:	09 32       	P1 = R1;
ffa00a24:	ba ac       	P2 = [FP + 0x8];
ffa00a26:	50 99       	R0 = B[P2] (X);
ffa00a28:	08 9b       	B[P1] = R0;
ffa00a2a:	b8 a0       	R0 = [FP + 0x8];
ffa00a2c:	08 64       	R0 += 0x1;		/* (  1) */
ffa00a2e:	b8 b0       	[FP + 0x8] = R0;
ffa00a30:	f0 b9       	R0 = [FP -0x4];
ffa00a32:	08 64       	R0 += 0x1;		/* (  1) */
ffa00a34:	f0 bb       	[FP -0x4] = R0;
ffa00a36:	f1 b9       	R1 = [FP -0x4];
ffa00a38:	a0 b9       	R0 = [FP -0x18];
ffa00a3a:	81 08       	CC = R1 < R0;
ffa00a3c:	ec 1b       	IF CC JUMP 0xffa00a14 <_printf_hex+0x20>;
ffa00a3e:	a0 b9       	R0 = [FP -0x18];
ffa00a40:	c0 bb       	[FP -0x10] = R0;
ffa00a42:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bf0 <_printf_out> */
ffa00a46:	0a e1 f0 0b 	P2.L = 0xbf0;		/* (3056)	P2=0xff900bf0 <_printf_out> */
ffa00a4a:	11 91       	R1 = [P2];
ffa00a4c:	c0 b9       	R0 = [FP -0x10];
ffa00a4e:	41 50       	R1 = R1 + R0;
ffa00a50:	11 32       	P2 = R1;
ffa00a52:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00a54:	10 9b       	B[P2] = R0;
ffa00a56:	c0 b9       	R0 = [FP -0x10];
ffa00a58:	08 64       	R0 += 0x1;		/* (  1) */
ffa00a5a:	c0 bb       	[FP -0x10] = R0;
ffa00a5c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bf0 <_printf_out> */
ffa00a60:	0a e1 f0 0b 	P2.L = 0xbf0;		/* (3056)	P2=0xff900bf0 <_printf_out> */
ffa00a64:	11 91       	R1 = [P2];
ffa00a66:	c0 b9       	R0 = [FP -0x10];
ffa00a68:	41 50       	R1 = R1 + R0;
ffa00a6a:	11 32       	P2 = R1;
ffa00a6c:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00a70:	10 9b       	B[P2] = R0;
ffa00a72:	c0 b9       	R0 = [FP -0x10];
ffa00a74:	08 64       	R0 += 0x1;		/* (  1) */
ffa00a76:	c0 bb       	[FP -0x10] = R0;
ffa00a78:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a7a:	b0 bb       	[FP -0x14] = R0;
ffa00a7c:	30 20       	JUMP.S 0xffa00adc <_printf_hex+0xe8>;
ffa00a7e:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00a80:	b0 b9       	R0 = [FP -0x14];
ffa00a82:	01 52       	R0 = R1 - R0;
ffa00a84:	82 c6 10 82 	R1 = R0 << 0x2;
ffa00a88:	f8 a0       	R0 = [FP + 0xc];
ffa00a8a:	08 40       	R0 >>>= R1;
ffa00a8c:	d0 bb       	[FP -0xc] = R0;
ffa00a8e:	d0 b9       	R0 = [FP -0xc];
ffa00a90:	08 30       	R1 = R0;
ffa00a92:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00a94:	01 54       	R0 = R1 & R0;
ffa00a96:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa00a9a:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa00a9e:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa00aa0:	08 09       	CC = R0 <= R1;
ffa00aa2:	07 18       	IF CC JUMP 0xffa00ab0 <_printf_hex+0xbc>;
ffa00aa4:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa00aa8:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00aaa:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa00aae:	06 20       	JUMP.S 0xffa00aba <_printf_hex+0xc6>;
ffa00ab0:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa00ab4:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00ab6:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa00aba:	c1 b9       	R1 = [FP -0x10];
ffa00abc:	b0 b9       	R0 = [FP -0x14];
ffa00abe:	01 50       	R0 = R1 + R0;
ffa00ac0:	08 30       	R1 = R0;
ffa00ac2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bf0 <_printf_out> */
ffa00ac6:	0a e1 f0 0b 	P2.L = 0xbf0;		/* (3056)	P2=0xff900bf0 <_printf_out> */
ffa00aca:	10 91       	R0 = [P2];
ffa00acc:	41 50       	R1 = R1 + R0;
ffa00ace:	11 32       	P2 = R1;
ffa00ad0:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa00ad4:	10 9b       	B[P2] = R0;
ffa00ad6:	b0 b9       	R0 = [FP -0x14];
ffa00ad8:	08 64       	R0 += 0x1;		/* (  1) */
ffa00ada:	b0 bb       	[FP -0x14] = R0;
ffa00adc:	b0 b9       	R0 = [FP -0x14];
ffa00ade:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00ae0:	08 09       	CC = R0 <= R1;
ffa00ae2:	ce 1b       	IF CC JUMP 0xffa00a7e <_printf_hex+0x8a>;
ffa00ae4:	c1 b9       	R1 = [FP -0x10];
ffa00ae6:	b0 b9       	R0 = [FP -0x14];
ffa00ae8:	01 50       	R0 = R1 + R0;
ffa00aea:	c0 bb       	[FP -0x10] = R0;
ffa00aec:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bf0 <_printf_out> */
ffa00af0:	0a e1 f0 0b 	P2.L = 0xbf0;		/* (3056)	P2=0xff900bf0 <_printf_out> */
ffa00af4:	11 91       	R1 = [P2];
ffa00af6:	c0 b9       	R0 = [FP -0x10];
ffa00af8:	41 50       	R1 = R1 + R0;
ffa00afa:	11 32       	P2 = R1;
ffa00afc:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00afe:	10 9b       	B[P2] = R0;
ffa00b00:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bf0 <_printf_out> */
ffa00b04:	0a e1 f0 0b 	P2.L = 0xbf0;		/* (3056)	P2=0xff900bf0 <_printf_out> */
ffa00b08:	11 91       	R1 = [P2];
ffa00b0a:	c0 b9       	R0 = [FP -0x10];
ffa00b0c:	01 50       	R0 = R1 + R0;
ffa00b0e:	10 32       	P2 = R0;
ffa00b10:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00b12:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b14:	10 9b       	B[P2] = R0;
ffa00b16:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bf0 <_printf_out> */
ffa00b1a:	0a e1 f0 0b 	P2.L = 0xbf0;		/* (3056)	P2=0xff900bf0 <_printf_out> */
ffa00b1e:	10 91       	R0 = [P2];
ffa00b20:	ff e3 26 fe 	CALL 0xffa0076c <_uart_str>;
ffa00b24:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b26:	90 bb       	[FP -0x1c] = R0;
ffa00b28:	03 20       	JUMP.S 0xffa00b2e <_printf_hex+0x13a>;
ffa00b2a:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa00b2c:	91 bb       	[FP -0x1c] = R1;
ffa00b2e:	90 b9       	R0 = [FP -0x1c];
ffa00b30:	01 e8 00 00 	UNLINK;
ffa00b34:	10 00       	RTS;
	...

ffa00b38 <_printf_hex_byte>:
ffa00b38:	00 e8 0a 00 	LINK 0x28;		/* (40) */
ffa00b3c:	b8 b0       	[FP + 0x8] = R0;
ffa00b3e:	01 30       	R0 = R1;
ffa00b40:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa00b44:	b8 a0       	R0 = [FP + 0x8];
ffa00b46:	00 e3 41 01 	CALL 0xffa00dc8 <_strlen_>;
ffa00b4a:	a0 bb       	[FP -0x18] = R0;
ffa00b4c:	a0 b9       	R0 = [FP -0x18];
ffa00b4e:	21 e1 fb 03 	R1 = 0x3fb (X);		/*		R1=0x3fb(1019) */
ffa00b52:	08 09       	CC = R0 <= R1;
ffa00b54:	85 10       	IF !CC JUMP 0xffa00c5e <_printf_hex_byte+0x126>;
ffa00b56:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b58:	f0 bb       	[FP -0x4] = R0;
ffa00b5a:	12 20       	JUMP.S 0xffa00b7e <_printf_hex_byte+0x46>;
ffa00b5c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bf0 <_printf_out> */
ffa00b60:	0a e1 f0 0b 	P2.L = 0xbf0;		/* (3056)	P2=0xff900bf0 <_printf_out> */
ffa00b64:	11 91       	R1 = [P2];
ffa00b66:	f0 b9       	R0 = [FP -0x4];
ffa00b68:	41 50       	R1 = R1 + R0;
ffa00b6a:	09 32       	P1 = R1;
ffa00b6c:	ba ac       	P2 = [FP + 0x8];
ffa00b6e:	50 99       	R0 = B[P2] (X);
ffa00b70:	08 9b       	B[P1] = R0;
ffa00b72:	b8 a0       	R0 = [FP + 0x8];
ffa00b74:	08 64       	R0 += 0x1;		/* (  1) */
ffa00b76:	b8 b0       	[FP + 0x8] = R0;
ffa00b78:	f0 b9       	R0 = [FP -0x4];
ffa00b7a:	08 64       	R0 += 0x1;		/* (  1) */
ffa00b7c:	f0 bb       	[FP -0x4] = R0;
ffa00b7e:	f1 b9       	R1 = [FP -0x4];
ffa00b80:	a0 b9       	R0 = [FP -0x18];
ffa00b82:	81 08       	CC = R1 < R0;
ffa00b84:	ec 1b       	IF CC JUMP 0xffa00b5c <_printf_hex_byte+0x24>;
ffa00b86:	a0 b9       	R0 = [FP -0x18];
ffa00b88:	c0 bb       	[FP -0x10] = R0;
ffa00b8a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bf0 <_printf_out> */
ffa00b8e:	0a e1 f0 0b 	P2.L = 0xbf0;		/* (3056)	P2=0xff900bf0 <_printf_out> */
ffa00b92:	11 91       	R1 = [P2];
ffa00b94:	c0 b9       	R0 = [FP -0x10];
ffa00b96:	41 50       	R1 = R1 + R0;
ffa00b98:	11 32       	P2 = R1;
ffa00b9a:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00b9c:	10 9b       	B[P2] = R0;
ffa00b9e:	c0 b9       	R0 = [FP -0x10];
ffa00ba0:	08 64       	R0 += 0x1;		/* (  1) */
ffa00ba2:	c0 bb       	[FP -0x10] = R0;
ffa00ba4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bf0 <_printf_out> */
ffa00ba8:	0a e1 f0 0b 	P2.L = 0xbf0;		/* (3056)	P2=0xff900bf0 <_printf_out> */
ffa00bac:	11 91       	R1 = [P2];
ffa00bae:	c0 b9       	R0 = [FP -0x10];
ffa00bb0:	41 50       	R1 = R1 + R0;
ffa00bb2:	11 32       	P2 = R1;
ffa00bb4:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00bb8:	10 9b       	B[P2] = R0;
ffa00bba:	c0 b9       	R0 = [FP -0x10];
ffa00bbc:	08 64       	R0 += 0x1;		/* (  1) */
ffa00bbe:	c0 bb       	[FP -0x10] = R0;
ffa00bc0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00bc2:	b0 bb       	[FP -0x14] = R0;
ffa00bc4:	32 20       	JUMP.S 0xffa00c28 <_printf_hex_byte+0xf0>;
ffa00bc6:	ba e4 0c 00 	R2 = B[FP + 0xc] (Z);
ffa00bca:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa00bcc:	b0 b9       	R0 = [FP -0x14];
ffa00bce:	01 52       	R0 = R1 - R0;
ffa00bd0:	10 4f       	R0 <<= 0x2;
ffa00bd2:	0a 30       	R1 = R2;
ffa00bd4:	01 40       	R1 >>>= R0;
ffa00bd6:	01 30       	R0 = R1;
ffa00bd8:	d0 bb       	[FP -0xc] = R0;
ffa00bda:	d0 b9       	R0 = [FP -0xc];
ffa00bdc:	08 30       	R1 = R0;
ffa00bde:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00be0:	01 54       	R0 = R1 & R0;
ffa00be2:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa00be6:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa00bea:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa00bec:	08 09       	CC = R0 <= R1;
ffa00bee:	07 18       	IF CC JUMP 0xffa00bfc <_printf_hex_byte+0xc4>;
ffa00bf0:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa00bf4:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00bf6:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa00bfa:	06 20       	JUMP.S 0xffa00c06 <_printf_hex_byte+0xce>;
ffa00bfc:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa00c00:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00c02:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa00c06:	c1 b9       	R1 = [FP -0x10];
ffa00c08:	b0 b9       	R0 = [FP -0x14];
ffa00c0a:	01 50       	R0 = R1 + R0;
ffa00c0c:	08 30       	R1 = R0;
ffa00c0e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bf0 <_printf_out> */
ffa00c12:	0a e1 f0 0b 	P2.L = 0xbf0;		/* (3056)	P2=0xff900bf0 <_printf_out> */
ffa00c16:	10 91       	R0 = [P2];
ffa00c18:	41 50       	R1 = R1 + R0;
ffa00c1a:	11 32       	P2 = R1;
ffa00c1c:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa00c20:	10 9b       	B[P2] = R0;
ffa00c22:	b0 b9       	R0 = [FP -0x14];
ffa00c24:	08 64       	R0 += 0x1;		/* (  1) */
ffa00c26:	b0 bb       	[FP -0x14] = R0;
ffa00c28:	b0 b9       	R0 = [FP -0x14];
ffa00c2a:	08 0d       	CC = R0 <= 0x1;
ffa00c2c:	cd 1b       	IF CC JUMP 0xffa00bc6 <_printf_hex_byte+0x8e>;
ffa00c2e:	c1 b9       	R1 = [FP -0x10];
ffa00c30:	b0 b9       	R0 = [FP -0x14];
ffa00c32:	01 50       	R0 = R1 + R0;
ffa00c34:	c0 bb       	[FP -0x10] = R0;
ffa00c36:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bf0 <_printf_out> */
ffa00c3a:	0a e1 f0 0b 	P2.L = 0xbf0;		/* (3056)	P2=0xff900bf0 <_printf_out> */
ffa00c3e:	11 91       	R1 = [P2];
ffa00c40:	c0 b9       	R0 = [FP -0x10];
ffa00c42:	41 50       	R1 = R1 + R0;
ffa00c44:	11 32       	P2 = R1;
ffa00c46:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00c48:	10 9b       	B[P2] = R0;
ffa00c4a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bf0 <_printf_out> */
ffa00c4e:	0a e1 f0 0b 	P2.L = 0xbf0;		/* (3056)	P2=0xff900bf0 <_printf_out> */
ffa00c52:	10 91       	R0 = [P2];
ffa00c54:	ff e3 8c fd 	CALL 0xffa0076c <_uart_str>;
ffa00c58:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00c5a:	90 bb       	[FP -0x1c] = R0;
ffa00c5c:	03 20       	JUMP.S 0xffa00c62 <_printf_hex_byte+0x12a>;
ffa00c5e:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa00c60:	91 bb       	[FP -0x1c] = R1;
ffa00c62:	90 b9       	R0 = [FP -0x1c];
ffa00c64:	01 e8 00 00 	UNLINK;
ffa00c68:	10 00       	RTS;
	...

ffa00c6c <_printf_ip>:
ffa00c6c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00c70:	b8 b0       	[FP + 0x8] = R0;
ffa00c72:	f9 b0       	[FP + 0xc] = R1;
ffa00c74:	f8 a0       	R0 = [FP + 0xc];
ffa00c76:	41 43       	R1 = R0.B (Z);
ffa00c78:	b8 a0       	R0 = [FP + 0x8];
ffa00c7a:	ff e3 e7 fd 	CALL 0xffa00848 <_printf_int>;
ffa00c7e:	f8 a0       	R0 = [FP + 0xc];
ffa00c80:	40 4e       	R0 >>= 0x8;
ffa00c82:	41 43       	R1 = R0.B (Z);
ffa00c84:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00c88:	00 e1 68 00 	R0.L = 0x68;		/* (104)	R0=0xff900068(-7339928) */
ffa00c8c:	ff e3 de fd 	CALL 0xffa00848 <_printf_int>;
ffa00c90:	f8 a0       	R0 = [FP + 0xc];
ffa00c92:	80 4e       	R0 >>= 0x10;
ffa00c94:	41 43       	R1 = R0.B (Z);
ffa00c96:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900068(-7339928) */
ffa00c9a:	00 e1 68 00 	R0.L = 0x68;		/* (104)	R0=0xff900068(-7339928) */
ffa00c9e:	ff e3 d5 fd 	CALL 0xffa00848 <_printf_int>;
ffa00ca2:	f8 a0       	R0 = [FP + 0xc];
ffa00ca4:	c0 4e       	R0 >>= 0x18;
ffa00ca6:	41 43       	R1 = R0.B (Z);
ffa00ca8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900068(-7339928) */
ffa00cac:	00 e1 68 00 	R0.L = 0x68;		/* (104)	R0=0xff900068(-7339928) */
ffa00cb0:	ff e3 cc fd 	CALL 0xffa00848 <_printf_int>;
ffa00cb4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900068(-7339928) */
ffa00cb8:	00 e1 6c 00 	R0.L = 0x6c;		/* (108)	R0=0xff90006c(-7339924) */
ffa00cbc:	ff e3 bc fd 	CALL 0xffa00834 <_printf_str>;
ffa00cc0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00cc2:	01 e8 00 00 	UNLINK;
ffa00cc6:	10 00       	RTS;

ffa00cc8 <_printf_newline>:
ffa00cc8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00ccc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00cd0:	00 e1 70 00 	R0.L = 0x70;		/* (112)	R0=0xff900070(-7339920) */
ffa00cd4:	ff e3 4c fd 	CALL 0xffa0076c <_uart_str>;
ffa00cd8:	01 e8 00 00 	UNLINK;
ffa00cdc:	10 00       	RTS;
	...

ffa00ce0 <_div>:
ffa00ce0:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa00ce4:	b8 b0       	[FP + 0x8] = R0;
ffa00ce6:	f9 b0       	[FP + 0xc] = R1;
ffa00ce8:	b8 a0       	R0 = [FP + 0x8];
ffa00cea:	08 4f       	R0 <<= 0x1;
ffa00cec:	b8 b0       	[FP + 0x8] = R0;
ffa00cee:	b9 a0       	R1 = [FP + 0x8];
ffa00cf0:	f8 a0       	R0 = [FP + 0xc];
ffa00cf2:	11 30       	R2 = R1;
ffa00cf4:	18 30       	R3 = R0;
ffa00cf6:	5a 42       	DIVS (R2, R3);
ffa00cf8:	0b 30       	R1 = R3;
ffa00cfa:	02 30       	R0 = R2;
ffa00cfc:	b8 b0       	[FP + 0x8] = R0;
ffa00cfe:	f9 b0       	[FP + 0xc] = R1;
ffa00d00:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00d02:	f0 bb       	[FP -0x4] = R0;
ffa00d04:	0d 20       	JUMP.S 0xffa00d1e <_div+0x3e>;
ffa00d06:	b9 a0       	R1 = [FP + 0x8];
ffa00d08:	f8 a0       	R0 = [FP + 0xc];
ffa00d0a:	11 30       	R2 = R1;
ffa00d0c:	18 30       	R3 = R0;
ffa00d0e:	1a 42       	DIVQ (R2, R3);
ffa00d10:	0b 30       	R1 = R3;
ffa00d12:	02 30       	R0 = R2;
ffa00d14:	b8 b0       	[FP + 0x8] = R0;
ffa00d16:	f9 b0       	[FP + 0xc] = R1;
ffa00d18:	f0 b9       	R0 = [FP -0x4];
ffa00d1a:	08 64       	R0 += 0x1;		/* (  1) */
ffa00d1c:	f0 bb       	[FP -0x4] = R0;
ffa00d1e:	f0 b9       	R0 = [FP -0x4];
ffa00d20:	71 60       	R1 = 0xe (X);		/*		R1=0xe( 14) */
ffa00d22:	08 09       	CC = R0 <= R1;
ffa00d24:	f1 1b       	IF CC JUMP 0xffa00d06 <_div+0x26>;
ffa00d26:	b8 a0       	R0 = [FP + 0x8];
ffa00d28:	80 42       	R0 = R0.L (X);
ffa00d2a:	b8 b0       	[FP + 0x8] = R0;
ffa00d2c:	b8 a0       	R0 = [FP + 0x8];
ffa00d2e:	01 e8 00 00 	UNLINK;
ffa00d32:	10 00       	RTS;

ffa00d34 <_mod>:
ffa00d34:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa00d38:	b8 b0       	[FP + 0x8] = R0;
ffa00d3a:	f9 b0       	[FP + 0xc] = R1;
ffa00d3c:	f9 a0       	R1 = [FP + 0xc];
ffa00d3e:	b8 a0       	R0 = [FP + 0x8];
ffa00d40:	ff e3 d0 ff 	CALL 0xffa00ce0 <_div>;
ffa00d44:	f0 bb       	[FP -0x4] = R0;
ffa00d46:	f1 b9       	R1 = [FP -0x4];
ffa00d48:	f8 a0       	R0 = [FP + 0xc];
ffa00d4a:	c1 40       	R1 *= R0;
ffa00d4c:	b8 a0       	R0 = [FP + 0x8];
ffa00d4e:	08 52       	R0 = R0 - R1;
ffa00d50:	01 e8 00 00 	UNLINK;
ffa00d54:	10 00       	RTS;
	...

ffa00d58 <_memcpy_>:
ffa00d58:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa00d5c:	b8 b0       	[FP + 0x8] = R0;
ffa00d5e:	f9 b0       	[FP + 0xc] = R1;
ffa00d60:	3a b1       	[FP + 0x10] = R2;
ffa00d62:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00d64:	f0 bb       	[FP -0x4] = R0;
ffa00d66:	0e 20       	JUMP.S 0xffa00d82 <_memcpy_+0x2a>;
ffa00d68:	ba ac       	P2 = [FP + 0x8];
ffa00d6a:	50 99       	R0 = B[P2] (X);
ffa00d6c:	fa ac       	P2 = [FP + 0xc];
ffa00d6e:	10 9b       	B[P2] = R0;
ffa00d70:	f8 a0       	R0 = [FP + 0xc];
ffa00d72:	08 64       	R0 += 0x1;		/* (  1) */
ffa00d74:	f8 b0       	[FP + 0xc] = R0;
ffa00d76:	b8 a0       	R0 = [FP + 0x8];
ffa00d78:	08 64       	R0 += 0x1;		/* (  1) */
ffa00d7a:	b8 b0       	[FP + 0x8] = R0;
ffa00d7c:	f0 b9       	R0 = [FP -0x4];
ffa00d7e:	08 64       	R0 += 0x1;		/* (  1) */
ffa00d80:	f0 bb       	[FP -0x4] = R0;
ffa00d82:	f1 b9       	R1 = [FP -0x4];
ffa00d84:	38 a1       	R0 = [FP + 0x10];
ffa00d86:	81 08       	CC = R1 < R0;
ffa00d88:	f0 1b       	IF CC JUMP 0xffa00d68 <_memcpy_+0x10>;
ffa00d8a:	01 e8 00 00 	UNLINK;
ffa00d8e:	10 00       	RTS;

ffa00d90 <_memset_>:
ffa00d90:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa00d94:	b8 b0       	[FP + 0x8] = R0;
ffa00d96:	3a b1       	[FP + 0x10] = R2;
ffa00d98:	01 30       	R0 = R1;
ffa00d9a:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa00d9e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00da0:	f0 bb       	[FP -0x4] = R0;
ffa00da2:	0b 20       	JUMP.S 0xffa00db8 <_memset_+0x28>;
ffa00da4:	ba ac       	P2 = [FP + 0x8];
ffa00da6:	b8 e5 0c 00 	R0 = B[FP + 0xc] (X);
ffa00daa:	10 9b       	B[P2] = R0;
ffa00dac:	b8 a0       	R0 = [FP + 0x8];
ffa00dae:	08 64       	R0 += 0x1;		/* (  1) */
ffa00db0:	b8 b0       	[FP + 0x8] = R0;
ffa00db2:	f0 b9       	R0 = [FP -0x4];
ffa00db4:	08 64       	R0 += 0x1;		/* (  1) */
ffa00db6:	f0 bb       	[FP -0x4] = R0;
ffa00db8:	f1 b9       	R1 = [FP -0x4];
ffa00dba:	38 a1       	R0 = [FP + 0x10];
ffa00dbc:	81 08       	CC = R1 < R0;
ffa00dbe:	f3 1b       	IF CC JUMP 0xffa00da4 <_memset_+0x14>;
ffa00dc0:	01 e8 00 00 	UNLINK;
ffa00dc4:	10 00       	RTS;
	...

ffa00dc8 <_strlen_>:
ffa00dc8:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa00dcc:	b8 b0       	[FP + 0x8] = R0;
ffa00dce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00dd0:	f0 bb       	[FP -0x4] = R0;
ffa00dd2:	10 20       	JUMP.S 0xffa00df2 <_strlen_+0x2a>;
ffa00dd4:	f0 b9       	R0 = [FP -0x4];
ffa00dd6:	08 30       	R1 = R0;
ffa00dd8:	b8 a0       	R0 = [FP + 0x8];
ffa00dda:	41 50       	R1 = R1 + R0;
ffa00ddc:	11 32       	P2 = R1;
ffa00dde:	50 99       	R0 = B[P2] (X);
ffa00de0:	00 43       	R0 = R0.B (X);
ffa00de2:	00 0c       	CC = R0 == 0x0;
ffa00de4:	04 10       	IF !CC JUMP 0xffa00dec <_strlen_+0x24>;
ffa00de6:	f0 b9       	R0 = [FP -0x4];
ffa00de8:	e0 bb       	[FP -0x8] = R0;
ffa00dea:	0b 20       	JUMP.S 0xffa00e00 <_strlen_+0x38>;
ffa00dec:	f0 b9       	R0 = [FP -0x4];
ffa00dee:	08 64       	R0 += 0x1;		/* (  1) */
ffa00df0:	f0 bb       	[FP -0x4] = R0;
ffa00df2:	f0 b9       	R0 = [FP -0x4];
ffa00df4:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa00df8:	08 09       	CC = R0 <= R1;
ffa00dfa:	ed 1b       	IF CC JUMP 0xffa00dd4 <_strlen_+0xc>;
ffa00dfc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00dfe:	e0 bb       	[FP -0x8] = R0;
ffa00e00:	e0 b9       	R0 = [FP -0x8];
ffa00e02:	01 e8 00 00 	UNLINK;
ffa00e06:	10 00       	RTS;

ffa00e08 <_strcpy_>:
ffa00e08:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa00e0c:	b8 b0       	[FP + 0x8] = R0;
ffa00e0e:	f9 b0       	[FP + 0xc] = R1;
ffa00e10:	3a b1       	[FP + 0x10] = R2;
ffa00e12:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00e14:	f0 bb       	[FP -0x4] = R0;
ffa00e16:	0e 20       	JUMP.S 0xffa00e32 <_strcpy_+0x2a>;
ffa00e18:	3a ad       	P2 = [FP + 0x10];
ffa00e1a:	50 99       	R0 = B[P2] (X);
ffa00e1c:	ba ac       	P2 = [FP + 0x8];
ffa00e1e:	10 9b       	B[P2] = R0;
ffa00e20:	b8 a0       	R0 = [FP + 0x8];
ffa00e22:	08 64       	R0 += 0x1;		/* (  1) */
ffa00e24:	b8 b0       	[FP + 0x8] = R0;
ffa00e26:	38 a1       	R0 = [FP + 0x10];
ffa00e28:	08 64       	R0 += 0x1;		/* (  1) */
ffa00e2a:	38 b1       	[FP + 0x10] = R0;
ffa00e2c:	f0 b9       	R0 = [FP -0x4];
ffa00e2e:	08 64       	R0 += 0x1;		/* (  1) */
ffa00e30:	f0 bb       	[FP -0x4] = R0;
ffa00e32:	3a ad       	P2 = [FP + 0x10];
ffa00e34:	50 99       	R0 = B[P2] (X);
ffa00e36:	00 43       	R0 = R0.B (X);
ffa00e38:	00 0c       	CC = R0 == 0x0;
ffa00e3a:	08 18       	IF CC JUMP 0xffa00e4a <_strcpy_+0x42>;
ffa00e3c:	f0 b9       	R0 = [FP -0x4];
ffa00e3e:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa00e42:	08 09       	CC = R0 <= R1;
ffa00e44:	ea 1b       	IF CC JUMP 0xffa00e18 <_strcpy_+0x10>;
ffa00e46:	00 00       	NOP;
ffa00e48:	00 00       	NOP;
ffa00e4a:	fa ac       	P2 = [FP + 0xc];
ffa00e4c:	11 91       	R1 = [P2];
ffa00e4e:	f0 b9       	R0 = [FP -0x4];
ffa00e50:	01 50       	R0 = R1 + R0;
ffa00e52:	fa ac       	P2 = [FP + 0xc];
ffa00e54:	10 93       	[P2] = R0;
ffa00e56:	b8 a0       	R0 = [FP + 0x8];
ffa00e58:	01 e8 00 00 	UNLINK;
ffa00e5c:	10 00       	RTS;
	...

ffa00e60 <_strprepend>:
ffa00e60:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa00e64:	b8 b0       	[FP + 0x8] = R0;
ffa00e66:	f9 b0       	[FP + 0xc] = R1;
ffa00e68:	3a b1       	[FP + 0x10] = R2;
ffa00e6a:	38 a1       	R0 = [FP + 0x10];
ffa00e6c:	ff e3 ae ff 	CALL 0xffa00dc8 <_strlen_>;
ffa00e70:	d0 bb       	[FP -0xc] = R0;
ffa00e72:	fa ac       	P2 = [FP + 0xc];
ffa00e74:	10 91       	R0 = [P2];
ffa00e76:	08 30       	R1 = R0;
ffa00e78:	b8 a0       	R0 = [FP + 0x8];
ffa00e7a:	08 52       	R0 = R0 - R1;
ffa00e7c:	e0 bb       	[FP -0x8] = R0;
ffa00e7e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00e80:	f0 bb       	[FP -0x4] = R0;
ffa00e82:	0e 20       	JUMP.S 0xffa00e9e <_strprepend+0x3e>;
ffa00e84:	3a ad       	P2 = [FP + 0x10];
ffa00e86:	50 99       	R0 = B[P2] (X);
ffa00e88:	ea b9       	P2 = [FP -0x8];
ffa00e8a:	10 9b       	B[P2] = R0;
ffa00e8c:	e0 b9       	R0 = [FP -0x8];
ffa00e8e:	08 64       	R0 += 0x1;		/* (  1) */
ffa00e90:	e0 bb       	[FP -0x8] = R0;
ffa00e92:	38 a1       	R0 = [FP + 0x10];
ffa00e94:	08 64       	R0 += 0x1;		/* (  1) */
ffa00e96:	38 b1       	[FP + 0x10] = R0;
ffa00e98:	f0 b9       	R0 = [FP -0x4];
ffa00e9a:	08 64       	R0 += 0x1;		/* (  1) */
ffa00e9c:	f0 bb       	[FP -0x4] = R0;
ffa00e9e:	f1 b9       	R1 = [FP -0x4];
ffa00ea0:	d0 b9       	R0 = [FP -0xc];
ffa00ea2:	81 08       	CC = R1 < R0;
ffa00ea4:	f0 1b       	IF CC JUMP 0xffa00e84 <_strprepend+0x24>;
ffa00ea6:	00 00       	NOP;
ffa00ea8:	00 00       	NOP;
ffa00eaa:	fa ac       	P2 = [FP + 0xc];
ffa00eac:	10 91       	R0 = [P2];
ffa00eae:	08 30       	R1 = R0;
ffa00eb0:	b8 a0       	R0 = [FP + 0x8];
ffa00eb2:	08 52       	R0 = R0 - R1;
ffa00eb4:	01 e8 00 00 	UNLINK;
ffa00eb8:	10 00       	RTS;
	...

ffa00ebc <_strcmp>:
ffa00ebc:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa00ec0:	b8 b0       	[FP + 0x8] = R0;
ffa00ec2:	f9 b0       	[FP + 0xc] = R1;
ffa00ec4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00ec6:	f0 bb       	[FP -0x4] = R0;
ffa00ec8:	1a 20       	JUMP.S 0xffa00efc <_strcmp+0x40>;
ffa00eca:	ba ac       	P2 = [FP + 0x8];
ffa00ecc:	51 99       	R1 = B[P2] (X);
ffa00ece:	fa ac       	P2 = [FP + 0xc];
ffa00ed0:	50 99       	R0 = B[P2] (X);
ffa00ed2:	09 43       	R1 = R1.B (X);
ffa00ed4:	00 43       	R0 = R0.B (X);
ffa00ed6:	01 08       	CC = R1 == R0;
ffa00ed8:	18 02       	CC = !CC;
ffa00eda:	00 02       	R0 = CC;
ffa00edc:	08 30       	R1 = R0;
ffa00ede:	b8 a0       	R0 = [FP + 0x8];
ffa00ee0:	08 64       	R0 += 0x1;		/* (  1) */
ffa00ee2:	b8 b0       	[FP + 0x8] = R0;
ffa00ee4:	f8 a0       	R0 = [FP + 0xc];
ffa00ee6:	08 64       	R0 += 0x1;		/* (  1) */
ffa00ee8:	f8 b0       	[FP + 0xc] = R0;
ffa00eea:	48 43       	R0 = R1.B (Z);
ffa00eec:	00 0c       	CC = R0 == 0x0;
ffa00eee:	04 18       	IF CC JUMP 0xffa00ef6 <_strcmp+0x3a>;
ffa00ef0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00ef2:	e0 bb       	[FP -0x8] = R0;
ffa00ef4:	17 20       	JUMP.S 0xffa00f22 <_strcmp+0x66>;
ffa00ef6:	f0 b9       	R0 = [FP -0x4];
ffa00ef8:	08 64       	R0 += 0x1;		/* (  1) */
ffa00efa:	f0 bb       	[FP -0x4] = R0;
ffa00efc:	ba ac       	P2 = [FP + 0x8];
ffa00efe:	50 99       	R0 = B[P2] (X);
ffa00f00:	00 43       	R0 = R0.B (X);
ffa00f02:	00 0c       	CC = R0 == 0x0;
ffa00f04:	0d 18       	IF CC JUMP 0xffa00f1e <_strcmp+0x62>;
ffa00f06:	00 00       	NOP;
ffa00f08:	00 00       	NOP;
ffa00f0a:	fa ac       	P2 = [FP + 0xc];
ffa00f0c:	50 99       	R0 = B[P2] (X);
ffa00f0e:	00 43       	R0 = R0.B (X);
ffa00f10:	00 0c       	CC = R0 == 0x0;
ffa00f12:	06 18       	IF CC JUMP 0xffa00f1e <_strcmp+0x62>;
ffa00f14:	f0 b9       	R0 = [FP -0x4];
ffa00f16:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa00f1a:	08 09       	CC = R0 <= R1;
ffa00f1c:	d7 1b       	IF CC JUMP 0xffa00eca <_strcmp+0xe>;
ffa00f1e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00f20:	e0 bb       	[FP -0x8] = R0;
ffa00f22:	e0 b9       	R0 = [FP -0x8];
ffa00f24:	01 e8 00 00 	UNLINK;
ffa00f28:	10 00       	RTS;
	...

ffa00f2c <_substr>:
ffa00f2c:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa00f30:	b8 b0       	[FP + 0x8] = R0;
ffa00f32:	f9 b0       	[FP + 0xc] = R1;
ffa00f34:	3a b1       	[FP + 0x10] = R2;
ffa00f36:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f38:	e0 bb       	[FP -0x8] = R0;
ffa00f3a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f3c:	f0 bb       	[FP -0x4] = R0;
ffa00f3e:	39 20       	JUMP.S 0xffa00fb0 <_substr+0x84>;
ffa00f40:	ba ac       	P2 = [FP + 0x8];
ffa00f42:	51 99       	R1 = B[P2] (X);
ffa00f44:	fa ac       	P2 = [FP + 0xc];
ffa00f46:	50 99       	R0 = B[P2] (X);
ffa00f48:	09 43       	R1 = R1.B (X);
ffa00f4a:	00 43       	R0 = R0.B (X);
ffa00f4c:	01 08       	CC = R1 == R0;
ffa00f4e:	2b 10       	IF !CC JUMP 0xffa00fa4 <_substr+0x78>;
ffa00f50:	b8 a0       	R0 = [FP + 0x8];
ffa00f52:	08 64       	R0 += 0x1;		/* (  1) */
ffa00f54:	c0 bb       	[FP -0x10] = R0;
ffa00f56:	f8 a0       	R0 = [FP + 0xc];
ffa00f58:	08 64       	R0 += 0x1;		/* (  1) */
ffa00f5a:	d0 bb       	[FP -0xc] = R0;
ffa00f5c:	e0 b9       	R0 = [FP -0x8];
ffa00f5e:	08 64       	R0 += 0x1;		/* (  1) */
ffa00f60:	f0 bb       	[FP -0x4] = R0;
ffa00f62:	12 20       	JUMP.S 0xffa00f86 <_substr+0x5a>;
ffa00f64:	c0 b9       	R0 = [FP -0x10];
ffa00f66:	08 64       	R0 += 0x1;		/* (  1) */
ffa00f68:	c0 bb       	[FP -0x10] = R0;
ffa00f6a:	d0 b9       	R0 = [FP -0xc];
ffa00f6c:	08 64       	R0 += 0x1;		/* (  1) */
ffa00f6e:	d0 bb       	[FP -0xc] = R0;
ffa00f70:	f0 b9       	R0 = [FP -0x4];
ffa00f72:	08 64       	R0 += 0x1;		/* (  1) */
ffa00f74:	f0 bb       	[FP -0x4] = R0;
ffa00f76:	ca b9       	P2 = [FP -0x10];
ffa00f78:	50 99       	R0 = B[P2] (X);
ffa00f7a:	00 43       	R0 = R0.B (X);
ffa00f7c:	00 0c       	CC = R0 == 0x0;
ffa00f7e:	04 10       	IF !CC JUMP 0xffa00f86 <_substr+0x5a>;
ffa00f80:	f0 b9       	R0 = [FP -0x4];
ffa00f82:	b0 bb       	[FP -0x14] = R0;
ffa00f84:	28 20       	JUMP.S 0xffa00fd4 <_substr+0xa8>;
ffa00f86:	ca b9       	P2 = [FP -0x10];
ffa00f88:	51 99       	R1 = B[P2] (X);
ffa00f8a:	da b9       	P2 = [FP -0xc];
ffa00f8c:	50 99       	R0 = B[P2] (X);
ffa00f8e:	09 43       	R1 = R1.B (X);
ffa00f90:	00 43       	R0 = R0.B (X);
ffa00f92:	01 08       	CC = R1 == R0;
ffa00f94:	08 10       	IF !CC JUMP 0xffa00fa4 <_substr+0x78>;
ffa00f96:	00 00       	NOP;
ffa00f98:	00 00       	NOP;
ffa00f9a:	da b9       	P2 = [FP -0xc];
ffa00f9c:	50 99       	R0 = B[P2] (X);
ffa00f9e:	00 43       	R0 = R0.B (X);
ffa00fa0:	00 0c       	CC = R0 == 0x0;
ffa00fa2:	e1 13       	IF !CC JUMP 0xffa00f64 <_substr+0x38>;
ffa00fa4:	f8 a0       	R0 = [FP + 0xc];
ffa00fa6:	08 64       	R0 += 0x1;		/* (  1) */
ffa00fa8:	f8 b0       	[FP + 0xc] = R0;
ffa00faa:	e0 b9       	R0 = [FP -0x8];
ffa00fac:	08 64       	R0 += 0x1;		/* (  1) */
ffa00fae:	e0 bb       	[FP -0x8] = R0;
ffa00fb0:	ba ac       	P2 = [FP + 0x8];
ffa00fb2:	50 99       	R0 = B[P2] (X);
ffa00fb4:	00 43       	R0 = R0.B (X);
ffa00fb6:	00 0c       	CC = R0 == 0x0;
ffa00fb8:	0c 18       	IF CC JUMP 0xffa00fd0 <_substr+0xa4>;
ffa00fba:	00 00       	NOP;
ffa00fbc:	00 00       	NOP;
ffa00fbe:	fa ac       	P2 = [FP + 0xc];
ffa00fc0:	50 99       	R0 = B[P2] (X);
ffa00fc2:	00 43       	R0 = R0.B (X);
ffa00fc4:	00 0c       	CC = R0 == 0x0;
ffa00fc6:	05 18       	IF CC JUMP 0xffa00fd0 <_substr+0xa4>;
ffa00fc8:	e1 b9       	R1 = [FP -0x8];
ffa00fca:	38 a1       	R0 = [FP + 0x10];
ffa00fcc:	81 08       	CC = R1 < R0;
ffa00fce:	b9 1b       	IF CC JUMP 0xffa00f40 <_substr+0x14>;
ffa00fd0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00fd2:	b0 bb       	[FP -0x14] = R0;
ffa00fd4:	b0 b9       	R0 = [FP -0x14];
ffa00fd6:	01 e8 00 00 	UNLINK;
ffa00fda:	10 00       	RTS;

ffa00fdc <_sprintf_int>:
ffa00fdc:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa00fe0:	b8 b0       	[FP + 0x8] = R0;
ffa00fe2:	f9 b0       	[FP + 0xc] = R1;
ffa00fe4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00fe6:	c0 bb       	[FP -0x10] = R0;
ffa00fe8:	f8 a0       	R0 = [FP + 0xc];
ffa00fea:	00 0c       	CC = R0 == 0x0;
ffa00fec:	0b 10       	IF !CC JUMP 0xffa01002 <_sprintf_int+0x26>;
ffa00fee:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bf0 <_printf_out> */
ffa00ff2:	0a e1 ec 0b 	P2.L = 0xbec;		/* (3052)	P2=0xff900bec <_printf_temp> */
ffa00ff6:	52 91       	P2 = [P2];
ffa00ff8:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00ffa:	10 9b       	B[P2] = R0;
ffa00ffc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00ffe:	c0 bb       	[FP -0x10] = R0;
ffa01000:	90 20       	JUMP.S 0xffa01120 <_sprintf_int+0x144>;
ffa01002:	f8 a0       	R0 = [FP + 0xc];
ffa01004:	00 0d       	CC = R0 <= 0x0;
ffa01006:	3c 18       	IF CC JUMP 0xffa0107e <_sprintf_int+0xa2>;
ffa01008:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0100a:	c0 bb       	[FP -0x10] = R0;
ffa0100c:	31 20       	JUMP.S 0xffa0106e <_sprintf_int+0x92>;
ffa0100e:	f9 a0       	R1 = [FP + 0xc];
ffa01010:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa01014:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa01018:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa0101c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01020:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa01024:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa01028:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa0102c:	0b c4 00 00 	R0 = (A0 += A1);
ffa01030:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa01034:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa01038:	02 52       	R0 = R2 - R0;
ffa0103a:	f0 bb       	[FP -0x4] = R0;
ffa0103c:	f1 b9       	R1 = [FP -0x4];
ffa0103e:	01 30       	R0 = R1;
ffa01040:	10 4f       	R0 <<= 0x2;
ffa01042:	08 50       	R0 = R0 + R1;
ffa01044:	08 4f       	R0 <<= 0x1;
ffa01046:	08 30       	R1 = R0;
ffa01048:	f8 a0       	R0 = [FP + 0xc];
ffa0104a:	08 52       	R0 = R0 - R1;
ffa0104c:	d0 bb       	[FP -0xc] = R0;
ffa0104e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bec <_printf_temp> */
ffa01052:	0a e1 ec 0b 	P2.L = 0xbec;		/* (3052)	P2=0xff900bec <_printf_temp> */
ffa01056:	11 91       	R1 = [P2];
ffa01058:	c0 b9       	R0 = [FP -0x10];
ffa0105a:	41 50       	R1 = R1 + R0;
ffa0105c:	11 32       	P2 = R1;
ffa0105e:	d0 b9       	R0 = [FP -0xc];
ffa01060:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01062:	10 9b       	B[P2] = R0;
ffa01064:	c0 b9       	R0 = [FP -0x10];
ffa01066:	08 64       	R0 += 0x1;		/* (  1) */
ffa01068:	c0 bb       	[FP -0x10] = R0;
ffa0106a:	f0 b9       	R0 = [FP -0x4];
ffa0106c:	f8 b0       	[FP + 0xc] = R0;
ffa0106e:	f8 a0       	R0 = [FP + 0xc];
ffa01070:	00 0d       	CC = R0 <= 0x0;
ffa01072:	57 18       	IF CC JUMP 0xffa01120 <_sprintf_int+0x144>;
ffa01074:	c0 b9       	R0 = [FP -0x10];
ffa01076:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01078:	08 09       	CC = R0 <= R1;
ffa0107a:	ca 1b       	IF CC JUMP 0xffa0100e <_sprintf_int+0x32>;
ffa0107c:	52 20       	JUMP.S 0xffa01120 <_sprintf_int+0x144>;
ffa0107e:	f8 a0       	R0 = [FP + 0xc];
ffa01080:	80 0c       	CC = R0 < 0x0;
ffa01082:	4f 10       	IF !CC JUMP 0xffa01120 <_sprintf_int+0x144>;
ffa01084:	f8 a0       	R0 = [FP + 0xc];
ffa01086:	08 30       	R1 = R0;
ffa01088:	f9 4c       	BITCLR (R1, 0x1f);		/* bit 31 */
ffa0108a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0108c:	f8 4f       	R0 <<= 0x1f;
ffa0108e:	08 52       	R0 = R0 - R1;
ffa01090:	f8 b0       	[FP + 0xc] = R0;
ffa01092:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01094:	c0 bb       	[FP -0x10] = R0;
ffa01096:	31 20       	JUMP.S 0xffa010f8 <_sprintf_int+0x11c>;
ffa01098:	f9 a0       	R1 = [FP + 0xc];
ffa0109a:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa0109e:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa010a2:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa010a6:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa010aa:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa010ae:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa010b2:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa010b6:	0b c4 00 00 	R0 = (A0 += A1);
ffa010ba:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa010be:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa010c2:	02 52       	R0 = R2 - R0;
ffa010c4:	f0 bb       	[FP -0x4] = R0;
ffa010c6:	f1 b9       	R1 = [FP -0x4];
ffa010c8:	01 30       	R0 = R1;
ffa010ca:	10 4f       	R0 <<= 0x2;
ffa010cc:	08 50       	R0 = R0 + R1;
ffa010ce:	08 4f       	R0 <<= 0x1;
ffa010d0:	08 30       	R1 = R0;
ffa010d2:	f8 a0       	R0 = [FP + 0xc];
ffa010d4:	08 52       	R0 = R0 - R1;
ffa010d6:	d0 bb       	[FP -0xc] = R0;
ffa010d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bec <_printf_temp> */
ffa010dc:	0a e1 ec 0b 	P2.L = 0xbec;		/* (3052)	P2=0xff900bec <_printf_temp> */
ffa010e0:	11 91       	R1 = [P2];
ffa010e2:	c0 b9       	R0 = [FP -0x10];
ffa010e4:	41 50       	R1 = R1 + R0;
ffa010e6:	11 32       	P2 = R1;
ffa010e8:	d0 b9       	R0 = [FP -0xc];
ffa010ea:	80 65       	R0 += 0x30;		/* ( 48) */
ffa010ec:	10 9b       	B[P2] = R0;
ffa010ee:	c0 b9       	R0 = [FP -0x10];
ffa010f0:	08 64       	R0 += 0x1;		/* (  1) */
ffa010f2:	c0 bb       	[FP -0x10] = R0;
ffa010f4:	f0 b9       	R0 = [FP -0x4];
ffa010f6:	f8 b0       	[FP + 0xc] = R0;
ffa010f8:	f8 a0       	R0 = [FP + 0xc];
ffa010fa:	00 0d       	CC = R0 <= 0x0;
ffa010fc:	05 18       	IF CC JUMP 0xffa01106 <_sprintf_int+0x12a>;
ffa010fe:	c0 b9       	R0 = [FP -0x10];
ffa01100:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01102:	08 09       	CC = R0 <= R1;
ffa01104:	ca 1b       	IF CC JUMP 0xffa01098 <_sprintf_int+0xbc>;
ffa01106:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bec <_printf_temp> */
ffa0110a:	0a e1 ec 0b 	P2.L = 0xbec;		/* (3052)	P2=0xff900bec <_printf_temp> */
ffa0110e:	11 91       	R1 = [P2];
ffa01110:	c0 b9       	R0 = [FP -0x10];
ffa01112:	41 50       	R1 = R1 + R0;
ffa01114:	11 32       	P2 = R1;
ffa01116:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa01118:	10 9b       	B[P2] = R0;
ffa0111a:	c0 b9       	R0 = [FP -0x10];
ffa0111c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0111e:	c0 bb       	[FP -0x10] = R0;
ffa01120:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01122:	e0 bb       	[FP -0x8] = R0;
ffa01124:	16 20       	JUMP.S 0xffa01150 <_sprintf_int+0x174>;
ffa01126:	e0 b9       	R0 = [FP -0x8];
ffa01128:	08 30       	R1 = R0;
ffa0112a:	b8 a0       	R0 = [FP + 0x8];
ffa0112c:	41 50       	R1 = R1 + R0;
ffa0112e:	09 32       	P1 = R1;
ffa01130:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bec <_printf_temp> */
ffa01134:	0a e1 ec 0b 	P2.L = 0xbec;		/* (3052)	P2=0xff900bec <_printf_temp> */
ffa01138:	12 91       	R2 = [P2];
ffa0113a:	c1 b9       	R1 = [FP -0x10];
ffa0113c:	e0 b9       	R0 = [FP -0x8];
ffa0113e:	01 52       	R0 = R1 - R0;
ffa01140:	02 50       	R0 = R2 + R0;
ffa01142:	10 32       	P2 = R0;
ffa01144:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa01146:	50 99       	R0 = B[P2] (X);
ffa01148:	08 9b       	B[P1] = R0;
ffa0114a:	e0 b9       	R0 = [FP -0x8];
ffa0114c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0114e:	e0 bb       	[FP -0x8] = R0;
ffa01150:	e1 b9       	R1 = [FP -0x8];
ffa01152:	c0 b9       	R0 = [FP -0x10];
ffa01154:	81 08       	CC = R1 < R0;
ffa01156:	e8 1b       	IF CC JUMP 0xffa01126 <_sprintf_int+0x14a>;
ffa01158:	c0 b9       	R0 = [FP -0x10];
ffa0115a:	01 e8 00 00 	UNLINK;
ffa0115e:	10 00       	RTS;

ffa01160 <_sprintf_hex>:
ffa01160:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01164:	b8 b0       	[FP + 0x8] = R0;
ffa01166:	f9 b0       	[FP + 0xc] = R1;
ffa01168:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0116a:	d0 bb       	[FP -0xc] = R0;
ffa0116c:	d0 b9       	R0 = [FP -0xc];
ffa0116e:	08 30       	R1 = R0;
ffa01170:	b8 a0       	R0 = [FP + 0x8];
ffa01172:	41 50       	R1 = R1 + R0;
ffa01174:	11 32       	P2 = R1;
ffa01176:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01178:	10 9b       	B[P2] = R0;
ffa0117a:	d0 b9       	R0 = [FP -0xc];
ffa0117c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0117e:	d0 bb       	[FP -0xc] = R0;
ffa01180:	d0 b9       	R0 = [FP -0xc];
ffa01182:	08 30       	R1 = R0;
ffa01184:	b8 a0       	R0 = [FP + 0x8];
ffa01186:	41 50       	R1 = R1 + R0;
ffa01188:	11 32       	P2 = R1;
ffa0118a:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0118e:	10 9b       	B[P2] = R0;
ffa01190:	d0 b9       	R0 = [FP -0xc];
ffa01192:	08 64       	R0 += 0x1;		/* (  1) */
ffa01194:	d0 bb       	[FP -0xc] = R0;
ffa01196:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01198:	c0 bb       	[FP -0x10] = R0;
ffa0119a:	2c 20       	JUMP.S 0xffa011f2 <_sprintf_hex+0x92>;
ffa0119c:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa0119e:	c0 b9       	R0 = [FP -0x10];
ffa011a0:	01 52       	R0 = R1 - R0;
ffa011a2:	82 c6 10 82 	R1 = R0 << 0x2;
ffa011a6:	f8 a0       	R0 = [FP + 0xc];
ffa011a8:	08 40       	R0 >>>= R1;
ffa011aa:	e0 bb       	[FP -0x8] = R0;
ffa011ac:	e0 b9       	R0 = [FP -0x8];
ffa011ae:	08 30       	R1 = R0;
ffa011b0:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa011b2:	01 54       	R0 = R1 & R0;
ffa011b4:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa011b8:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa011bc:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa011be:	08 09       	CC = R0 <= R1;
ffa011c0:	07 18       	IF CC JUMP 0xffa011ce <_sprintf_hex+0x6e>;
ffa011c2:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa011c6:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa011c8:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa011cc:	06 20       	JUMP.S 0xffa011d8 <_sprintf_hex+0x78>;
ffa011ce:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa011d2:	80 65       	R0 += 0x30;		/* ( 48) */
ffa011d4:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa011d8:	d1 b9       	R1 = [FP -0xc];
ffa011da:	c0 b9       	R0 = [FP -0x10];
ffa011dc:	01 50       	R0 = R1 + R0;
ffa011de:	08 30       	R1 = R0;
ffa011e0:	b8 a0       	R0 = [FP + 0x8];
ffa011e2:	41 50       	R1 = R1 + R0;
ffa011e4:	11 32       	P2 = R1;
ffa011e6:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa011ea:	10 9b       	B[P2] = R0;
ffa011ec:	c0 b9       	R0 = [FP -0x10];
ffa011ee:	08 64       	R0 += 0x1;		/* (  1) */
ffa011f0:	c0 bb       	[FP -0x10] = R0;
ffa011f2:	c0 b9       	R0 = [FP -0x10];
ffa011f4:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa011f6:	08 09       	CC = R0 <= R1;
ffa011f8:	d2 1b       	IF CC JUMP 0xffa0119c <_sprintf_hex+0x3c>;
ffa011fa:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa011fc:	01 e8 00 00 	UNLINK;
ffa01200:	10 00       	RTS;
	...

ffa01204 <_strprintf_int>:
ffa01204:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01208:	b8 b0       	[FP + 0x8] = R0;
ffa0120a:	f9 b0       	[FP + 0xc] = R1;
ffa0120c:	3a b1       	[FP + 0x10] = R2;
ffa0120e:	39 a1       	R1 = [FP + 0x10];
ffa01210:	b8 a0       	R0 = [FP + 0x8];
ffa01212:	ff e3 e5 fe 	CALL 0xffa00fdc <_sprintf_int>;
ffa01216:	f0 bb       	[FP -0x4] = R0;
ffa01218:	fa ac       	P2 = [FP + 0xc];
ffa0121a:	11 91       	R1 = [P2];
ffa0121c:	f0 b9       	R0 = [FP -0x4];
ffa0121e:	01 50       	R0 = R1 + R0;
ffa01220:	fa ac       	P2 = [FP + 0xc];
ffa01222:	10 93       	[P2] = R0;
ffa01224:	f0 b9       	R0 = [FP -0x4];
ffa01226:	08 30       	R1 = R0;
ffa01228:	b8 a0       	R0 = [FP + 0x8];
ffa0122a:	08 50       	R0 = R0 + R1;
ffa0122c:	b8 b0       	[FP + 0x8] = R0;
ffa0122e:	b8 a0       	R0 = [FP + 0x8];
ffa01230:	01 e8 00 00 	UNLINK;
ffa01234:	10 00       	RTS;
	...

ffa01238 <_strprintf_hex>:
ffa01238:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0123c:	b8 b0       	[FP + 0x8] = R0;
ffa0123e:	f9 b0       	[FP + 0xc] = R1;
ffa01240:	3a b1       	[FP + 0x10] = R2;
ffa01242:	39 a1       	R1 = [FP + 0x10];
ffa01244:	b8 a0       	R0 = [FP + 0x8];
ffa01246:	ff e3 8d ff 	CALL 0xffa01160 <_sprintf_hex>;
ffa0124a:	f0 bb       	[FP -0x4] = R0;
ffa0124c:	fa ac       	P2 = [FP + 0xc];
ffa0124e:	11 91       	R1 = [P2];
ffa01250:	f0 b9       	R0 = [FP -0x4];
ffa01252:	01 50       	R0 = R1 + R0;
ffa01254:	fa ac       	P2 = [FP + 0xc];
ffa01256:	10 93       	[P2] = R0;
ffa01258:	f0 b9       	R0 = [FP -0x4];
ffa0125a:	08 30       	R1 = R0;
ffa0125c:	b8 a0       	R0 = [FP + 0x8];
ffa0125e:	08 50       	R0 = R0 + R1;
ffa01260:	b8 b0       	[FP + 0x8] = R0;
ffa01262:	b8 a0       	R0 = [FP + 0x8];
ffa01264:	01 e8 00 00 	UNLINK;
ffa01268:	10 00       	RTS;
	...

ffa0126c <_atoi>:
ffa0126c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01270:	b8 b0       	[FP + 0x8] = R0;
ffa01272:	f9 b0       	[FP + 0xc] = R1;
ffa01274:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01276:	d0 bb       	[FP -0xc] = R0;
ffa01278:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0127a:	e0 bb       	[FP -0x8] = R0;
ffa0127c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0127e:	f0 bb       	[FP -0x4] = R0;
ffa01280:	ba ac       	P2 = [FP + 0x8];
ffa01282:	50 99       	R0 = B[P2] (X);
ffa01284:	00 43       	R0 = R0.B (X);
ffa01286:	69 61       	R1 = 0x2d (X);		/*		R1=0x2d( 45) */
ffa01288:	08 08       	CC = R0 == R1;
ffa0128a:	2c 10       	IF !CC JUMP 0xffa012e2 <_atoi+0x76>;
ffa0128c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0128e:	f0 bb       	[FP -0x4] = R0;
ffa01290:	b8 a0       	R0 = [FP + 0x8];
ffa01292:	08 64       	R0 += 0x1;		/* (  1) */
ffa01294:	b8 b0       	[FP + 0x8] = R0;
ffa01296:	d0 b9       	R0 = [FP -0xc];
ffa01298:	08 64       	R0 += 0x1;		/* (  1) */
ffa0129a:	d0 bb       	[FP -0xc] = R0;
ffa0129c:	23 20       	JUMP.S 0xffa012e2 <_atoi+0x76>;
ffa0129e:	ba ac       	P2 = [FP + 0x8];
ffa012a0:	50 99       	R0 = B[P2] (X);
ffa012a2:	01 43       	R1 = R0.B (X);
ffa012a4:	e0 b9       	R0 = [FP -0x8];
ffa012a6:	01 50       	R0 = R1 + R0;
ffa012a8:	80 66       	R0 += -0x30;		/* (-48) */
ffa012aa:	e0 bb       	[FP -0x8] = R0;
ffa012ac:	b8 a0       	R0 = [FP + 0x8];
ffa012ae:	08 64       	R0 += 0x1;		/* (  1) */
ffa012b0:	b8 b0       	[FP + 0x8] = R0;
ffa012b2:	d0 b9       	R0 = [FP -0xc];
ffa012b4:	08 64       	R0 += 0x1;		/* (  1) */
ffa012b6:	d0 bb       	[FP -0xc] = R0;
ffa012b8:	ba ac       	P2 = [FP + 0x8];
ffa012ba:	50 99       	R0 = B[P2] (X);
ffa012bc:	00 43       	R0 = R0.B (X);
ffa012be:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa012c0:	08 09       	CC = R0 <= R1;
ffa012c2:	10 18       	IF CC JUMP 0xffa012e2 <_atoi+0x76>;
ffa012c4:	00 00       	NOP;
ffa012c6:	00 00       	NOP;
ffa012c8:	ba ac       	P2 = [FP + 0x8];
ffa012ca:	50 99       	R0 = B[P2] (X);
ffa012cc:	00 43       	R0 = R0.B (X);
ffa012ce:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa012d0:	08 09       	CC = R0 <= R1;
ffa012d2:	08 10       	IF !CC JUMP 0xffa012e2 <_atoi+0x76>;
ffa012d4:	e0 b9       	R0 = [FP -0x8];
ffa012d6:	08 30       	R1 = R0;
ffa012d8:	11 4f       	R1 <<= 0x2;
ffa012da:	41 50       	R1 = R1 + R0;
ffa012dc:	82 c6 09 80 	R0 = R1 << 0x1;
ffa012e0:	e0 bb       	[FP -0x8] = R0;
ffa012e2:	ba ac       	P2 = [FP + 0x8];
ffa012e4:	50 99       	R0 = B[P2] (X);
ffa012e6:	00 43       	R0 = R0.B (X);
ffa012e8:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa012ea:	08 09       	CC = R0 <= R1;
ffa012ec:	0d 18       	IF CC JUMP 0xffa01306 <_atoi+0x9a>;
ffa012ee:	00 00       	NOP;
ffa012f0:	00 00       	NOP;
ffa012f2:	ba ac       	P2 = [FP + 0x8];
ffa012f4:	50 99       	R0 = B[P2] (X);
ffa012f6:	00 43       	R0 = R0.B (X);
ffa012f8:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa012fa:	08 09       	CC = R0 <= R1;
ffa012fc:	05 10       	IF !CC JUMP 0xffa01306 <_atoi+0x9a>;
ffa012fe:	d1 b9       	R1 = [FP -0xc];
ffa01300:	f8 a0       	R0 = [FP + 0xc];
ffa01302:	81 08       	CC = R1 < R0;
ffa01304:	cd 1b       	IF CC JUMP 0xffa0129e <_atoi+0x32>;
ffa01306:	e1 b9       	R1 = [FP -0x8];
ffa01308:	f0 b9       	R0 = [FP -0x4];
ffa0130a:	c8 40       	R0 *= R1;
ffa0130c:	01 e8 00 00 	UNLINK;
ffa01310:	10 00       	RTS;
	...

ffa01314 <_udelay>:
ffa01314:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa01318:	b8 b0       	[FP + 0x8] = R0;
ffa0131a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0131c:	e0 bb       	[FP -0x8] = R0;
ffa0131e:	10 20       	JUMP.S 0xffa0133e <_udelay+0x2a>;
ffa01320:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01322:	f0 bb       	[FP -0x4] = R0;
ffa01324:	05 20       	JUMP.S 0xffa0132e <_udelay+0x1a>;
ffa01326:	00 00       	NOP;
ffa01328:	f0 b9       	R0 = [FP -0x4];
ffa0132a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0132c:	f0 bb       	[FP -0x4] = R0;
ffa0132e:	f0 b9       	R0 = [FP -0x4];
ffa01330:	21 e1 9f 00 	R1 = 0x9f (X);		/*		R1=0x9f(159) */
ffa01334:	08 09       	CC = R0 <= R1;
ffa01336:	f8 1b       	IF CC JUMP 0xffa01326 <_udelay+0x12>;
ffa01338:	e0 b9       	R0 = [FP -0x8];
ffa0133a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0133c:	e0 bb       	[FP -0x8] = R0;
ffa0133e:	e1 b9       	R1 = [FP -0x8];
ffa01340:	b8 a0       	R0 = [FP + 0x8];
ffa01342:	81 08       	CC = R1 < R0;
ffa01344:	ee 1b       	IF CC JUMP 0xffa01320 <_udelay+0xc>;
ffa01346:	01 e8 00 00 	UNLINK;
ffa0134a:	10 00       	RTS;

ffa0134c <_spi_delay>:
ffa0134c:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa01350:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa01352:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa01356:	08 20       	JUMP.S 0xffa01366 <_spi_delay+0x1a>;
ffa01358:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bec(-4191252) */
ffa0135c:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa01360:	50 95       	R0 = W[P2] (X);
ffa01362:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa01366:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa0136a:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa0136c:	08 54       	R0 = R0 & R1;
ffa0136e:	00 0c       	CC = R0 == 0x0;
ffa01370:	f4 13       	IF !CC JUMP 0xffa01358 <_spi_delay+0xc>;
ffa01372:	08 20       	JUMP.S 0xffa01382 <_spi_delay+0x36>;
ffa01374:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa01378:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0137c:	50 95       	R0 = W[P2] (X);
ffa0137e:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa01382:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa01386:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa01388:	00 02       	R0 = CC;
ffa0138a:	00 0c       	CC = R0 == 0x0;
ffa0138c:	f4 1b       	IF CC JUMP 0xffa01374 <_spi_delay+0x28>;
ffa0138e:	01 e8 00 00 	UNLINK;
ffa01392:	10 00       	RTS;

ffa01394 <_spi_write_register>:
ffa01394:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01398:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0139c:	01 30       	R0 = R1;
ffa0139e:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa013a2:	b8 e5 08 00 	R0 = B[FP + 0x8] (X);
ffa013a6:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa013a8:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa013ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa013b0:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa013b4:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa013b8:	10 97       	W[P2] = R0;
ffa013ba:	24 00       	SSYNC;
ffa013bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa013c0:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa013c4:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa013c8:	10 97       	W[P2] = R0;
ffa013ca:	ff e3 c1 ff 	CALL 0xffa0134c <_spi_delay>;
ffa013ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa013d2:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa013d6:	50 95       	R0 = W[P2] (X);
ffa013d8:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa013dc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa013e0:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa013e4:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa013e8:	10 97       	W[P2] = R0;
ffa013ea:	ff e3 b1 ff 	CALL 0xffa0134c <_spi_delay>;
ffa013ee:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa013f2:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa013f6:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa013fa:	10 97       	W[P2] = R0;
ffa013fc:	24 00       	SSYNC;
ffa013fe:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa01402:	01 e8 00 00 	UNLINK;
ffa01406:	10 00       	RTS;

ffa01408 <_spi_write_register_ver>:
ffa01408:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0140c:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa01410:	01 30       	R0 = R1;
ffa01412:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa01416:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0141a:	b9 e4 0c 00 	R1 = B[FP + 0xc] (Z);
ffa0141e:	ff e3 bb ff 	CALL 0xffa01394 <_spi_write_register>;
ffa01422:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa01426:	00 e3 39 00 	CALL 0xffa01498 <_spi_read_register>;
ffa0142a:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa0142e:	b9 e4 ff ff 	R1 = B[FP + -0x1] (Z);
ffa01432:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa01436:	01 08       	CC = R1 == R0;
ffa01438:	2b 18       	IF CC JUMP 0xffa0148e <_spi_write_register_ver+0x86>;
ffa0143a:	b9 e4 08 00 	R1 = B[FP + 0x8] (Z);
ffa0143e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900200(-7339520) */
ffa01442:	00 e1 74 00 	R0.L = 0x74;		/* (116)	R0=0xff900074(-7339916) */
ffa01446:	ff e3 01 fa 	CALL 0xffa00848 <_printf_int>;
ffa0144a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900074(-7339916) */
ffa0144e:	00 e1 88 00 	R0.L = 0x88;		/* (136)	R0=0xff900088(-7339896) */
ffa01452:	ff e3 8d f9 	CALL 0xffa0076c <_uart_str>;
ffa01456:	b9 e4 0c 00 	R1 = B[FP + 0xc] (Z);
ffa0145a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900088(-7339896) */
ffa0145e:	00 e1 8c 00 	R0.L = 0x8c;		/* (140)	R0=0xff90008c(-7339892) */
ffa01462:	ff e3 6b fb 	CALL 0xffa00b38 <_printf_hex_byte>;
ffa01466:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90008c(-7339892) */
ffa0146a:	00 e1 88 00 	R0.L = 0x88;		/* (136)	R0=0xff900088(-7339896) */
ffa0146e:	ff e3 7f f9 	CALL 0xffa0076c <_uart_str>;
ffa01472:	b9 e4 ff ff 	R1 = B[FP + -0x1] (Z);
ffa01476:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900088(-7339896) */
ffa0147a:	00 e1 98 00 	R0.L = 0x98;		/* (152)	R0=0xff900098(-7339880) */
ffa0147e:	ff e3 5d fb 	CALL 0xffa00b38 <_printf_hex_byte>;
ffa01482:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900098(-7339880) */
ffa01486:	00 e1 a4 00 	R0.L = 0xa4;		/* (164)	R0=0xff9000a4(-7339868) */
ffa0148a:	ff e3 71 f9 	CALL 0xffa0076c <_uart_str>;
ffa0148e:	b8 e4 ff ff 	R0 = B[FP + -0x1] (Z);
ffa01492:	01 e8 00 00 	UNLINK;
ffa01496:	10 00       	RTS;

ffa01498 <_spi_read_register>:
ffa01498:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0149c:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa014a0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa014a4:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa014a8:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa014ac:	10 97       	W[P2] = R0;
ffa014ae:	24 00       	SSYNC;
ffa014b0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa014b4:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa014b8:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa014bc:	10 97       	W[P2] = R0;
ffa014be:	ff e3 47 ff 	CALL 0xffa0134c <_spi_delay>;
ffa014c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa014c6:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa014ca:	50 95       	R0 = W[P2] (X);
ffa014cc:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa014d0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa014d4:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa014d8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa014da:	10 97       	W[P2] = R0;
ffa014dc:	ff e3 38 ff 	CALL 0xffa0134c <_spi_delay>;
ffa014e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa014e4:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa014e8:	50 95       	R0 = W[P2] (X);
ffa014ea:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa014ee:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa014f2:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa014f6:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa014fa:	10 97       	W[P2] = R0;
ffa014fc:	24 00       	SSYNC;
ffa014fe:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa01502:	01 e8 00 00 	UNLINK;
ffa01506:	10 00       	RTS;

ffa01508 <_spi_read_register_status>:
ffa01508:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0150c:	f9 b0       	[FP + 0xc] = R1;
ffa0150e:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa01512:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01516:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0151a:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0151e:	10 97       	W[P2] = R0;
ffa01520:	24 00       	SSYNC;
ffa01522:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01526:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0152a:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0152e:	10 97       	W[P2] = R0;
ffa01530:	ff e3 0e ff 	CALL 0xffa0134c <_spi_delay>;
ffa01534:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa01538:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0153c:	50 95       	R0 = W[P2] (X);
ffa0153e:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa01542:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa01546:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0154a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0154c:	10 97       	W[P2] = R0;
ffa0154e:	ff e3 ff fe 	CALL 0xffa0134c <_spi_delay>;
ffa01552:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa01556:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0155a:	50 95       	R0 = W[P2] (X);
ffa0155c:	fa ac       	P2 = [FP + 0xc];
ffa0155e:	10 9b       	B[P2] = R0;
ffa01560:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa01564:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01568:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0156c:	10 97       	W[P2] = R0;
ffa0156e:	24 00       	SSYNC;
ffa01570:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa01574:	01 e8 00 00 	UNLINK;
ffa01578:	10 00       	RTS;
	...

ffa0157c <_spi_write_byte>:
ffa0157c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01580:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa01584:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01588:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0158c:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01590:	10 97       	W[P2] = R0;
ffa01592:	24 00       	SSYNC;
ffa01594:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01598:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0159c:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa015a0:	10 97       	W[P2] = R0;
ffa015a2:	ff e3 d5 fe 	CALL 0xffa0134c <_spi_delay>;
ffa015a6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa015aa:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa015ae:	50 95       	R0 = W[P2] (X);
ffa015b0:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa015b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa015b8:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa015bc:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa015c0:	10 97       	W[P2] = R0;
ffa015c2:	24 00       	SSYNC;
ffa015c4:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa015c8:	01 e8 00 00 	UNLINK;
ffa015cc:	10 00       	RTS;
	...

ffa015d0 <_spi_write_packet>:
ffa015d0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa015d4:	b8 b0       	[FP + 0x8] = R0;
ffa015d6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa015da:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa015de:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa015e2:	10 97       	W[P2] = R0;
ffa015e4:	24 00       	SSYNC;
ffa015e6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa015ea:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa015ee:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa015f2:	10 97       	W[P2] = R0;
ffa015f4:	ff e3 ac fe 	CALL 0xffa0134c <_spi_delay>;
ffa015f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa015fc:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa01600:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa01604:	10 97       	W[P2] = R0;
ffa01606:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0160a:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0160e:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01610:	10 97       	W[P2] = R0;
ffa01612:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa01616:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa0161a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0161c:	10 97       	W[P2] = R0;
ffa0161e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa01622:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa01626:	b8 a0       	R0 = [FP + 0x8];
ffa01628:	10 93       	[P2] = R0;
ffa0162a:	24 00       	SSYNC;
ffa0162c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa01630:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa01634:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa01638:	10 97       	W[P2] = R0;
ffa0163a:	01 20       	JUMP.S 0xffa0163c <_spi_write_packet+0x6c>;
	...
ffa01644:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa01648:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0164c:	50 95       	R0 = W[P2] (X);
ffa0164e:	c0 42       	R0 = R0.L (Z);
ffa01650:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa01652:	00 02       	R0 = CC;
ffa01654:	00 0c       	CC = R0 == 0x0;
ffa01656:	f3 1b       	IF CC JUMP 0xffa0163c <_spi_write_packet+0x6c>;
ffa01658:	00 00       	NOP;
ffa0165a:	00 00       	NOP;
ffa0165c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa01660:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa01664:	50 95       	R0 = W[P2] (X);
ffa01666:	c1 42       	R1 = R0.L (Z);
ffa01668:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0166a:	01 54       	R0 = R1 & R0;
ffa0166c:	00 0c       	CC = R0 == 0x0;
ffa0166e:	e7 13       	IF !CC JUMP 0xffa0163c <_spi_write_packet+0x6c>;
ffa01670:	00 00       	NOP;
ffa01672:	00 00       	NOP;
ffa01674:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa01678:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0167c:	50 95       	R0 = W[P2] (X);
ffa0167e:	c1 42       	R1 = R0.L (Z);
ffa01680:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa01682:	01 54       	R0 = R1 & R0;
ffa01684:	00 0c       	CC = R0 == 0x0;
ffa01686:	db 13       	IF !CC JUMP 0xffa0163c <_spi_write_packet+0x6c>;
ffa01688:	ff e3 62 fe 	CALL 0xffa0134c <_spi_delay>;
ffa0168c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa01690:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa01694:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01696:	10 97       	W[P2] = R0;
ffa01698:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0169c:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa016a0:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa016a4:	10 97       	W[P2] = R0;
ffa016a6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa016aa:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa016ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa016b0:	10 97       	W[P2] = R0;
ffa016b2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa016b6:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa016ba:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa016be:	10 97       	W[P2] = R0;
ffa016c0:	24 00       	SSYNC;
ffa016c2:	01 e8 00 00 	UNLINK;
ffa016c6:	10 00       	RTS;

ffa016c8 <_spi_write_packet_noDMA>:
ffa016c8:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa016cc:	b8 b0       	[FP + 0x8] = R0;
ffa016ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa016d2:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa016d6:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa016da:	10 97       	W[P2] = R0;
ffa016dc:	24 00       	SSYNC;
ffa016de:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa016e2:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa016e6:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa016ea:	10 97       	W[P2] = R0;
ffa016ec:	ff e3 30 fe 	CALL 0xffa0134c <_spi_delay>;
ffa016f0:	b8 a0       	R0 = [FP + 0x8];
ffa016f2:	f0 bb       	[FP -0x4] = R0;
ffa016f4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa016f6:	e0 bb       	[FP -0x8] = R0;
ffa016f8:	11 20       	JUMP.S 0xffa0171a <_spi_write_packet_noDMA+0x52>;
ffa016fa:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0050c(-4193012) */
ffa016fe:	09 e1 0c 05 	P1.L = 0x50c;		/* (1292)	P1=0xffc0050c(-4193012) */
ffa01702:	fa b9       	P2 = [FP -0x4];
ffa01704:	50 99       	R0 = B[P2] (X);
ffa01706:	00 43       	R0 = R0.B (X);
ffa01708:	08 97       	W[P1] = R0;
ffa0170a:	f0 b9       	R0 = [FP -0x4];
ffa0170c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0170e:	f0 bb       	[FP -0x4] = R0;
ffa01710:	ff e3 1e fe 	CALL 0xffa0134c <_spi_delay>;
ffa01714:	e0 b9       	R0 = [FP -0x8];
ffa01716:	08 64       	R0 += 0x1;		/* (  1) */
ffa01718:	e0 bb       	[FP -0x8] = R0;
ffa0171a:	e0 b9       	R0 = [FP -0x8];
ffa0171c:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0171e:	08 09       	CC = R0 <= R1;
ffa01720:	ed 1b       	IF CC JUMP 0xffa016fa <_spi_write_packet_noDMA+0x32>;
ffa01722:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa01726:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0172a:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0172e:	10 97       	W[P2] = R0;
ffa01730:	24 00       	SSYNC;
ffa01732:	01 e8 00 00 	UNLINK;
ffa01736:	10 00       	RTS;

ffa01738 <_spi_read_packet>:
ffa01738:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0173c:	b8 b0       	[FP + 0x8] = R0;
ffa0173e:	b8 a0       	R0 = [FP + 0x8];
ffa01740:	f0 bb       	[FP -0x4] = R0;
ffa01742:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01744:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01748:	ff e3 26 fe 	CALL 0xffa01394 <_spi_write_register>;
ffa0174c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01750:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01754:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01758:	10 97       	W[P2] = R0;
ffa0175a:	24 00       	SSYNC;
ffa0175c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01760:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa01764:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa01768:	10 97       	W[P2] = R0;
ffa0176a:	ff e3 f1 fd 	CALL 0xffa0134c <_spi_delay>;
ffa0176e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01770:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa01774:	18 20       	JUMP.S 0xffa017a4 <_spi_read_packet+0x6c>;
ffa01776:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0177a:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0177e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01780:	10 97       	W[P2] = R0;
ffa01782:	ff e3 e5 fd 	CALL 0xffa0134c <_spi_delay>;
ffa01786:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0178a:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0178e:	50 95       	R0 = W[P2] (X);
ffa01790:	fa b9       	P2 = [FP -0x4];
ffa01792:	10 9b       	B[P2] = R0;
ffa01794:	f0 b9       	R0 = [FP -0x4];
ffa01796:	08 64       	R0 += 0x1;		/* (  1) */
ffa01798:	f0 bb       	[FP -0x4] = R0;
ffa0179a:	b8 e5 fb ff 	R0 = B[FP + -0x5] (X);
ffa0179e:	08 64       	R0 += 0x1;		/* (  1) */
ffa017a0:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa017a4:	b8 e4 fb ff 	R0 = B[FP + -0x5] (Z);
ffa017a8:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa017aa:	08 0a       	CC = R0 <= R1 (IU);
ffa017ac:	e5 1b       	IF CC JUMP 0xffa01776 <_spi_read_packet+0x3e>;
ffa017ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa017b2:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa017b6:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa017ba:	10 97       	W[P2] = R0;
ffa017bc:	24 00       	SSYNC;
ffa017be:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa017c0:	01 e8 00 00 	UNLINK;
ffa017c4:	10 00       	RTS;
	...

ffa017c8 <_spi_read_packet_nocheck>:
ffa017c8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa017cc:	b8 b0       	[FP + 0x8] = R0;
ffa017ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa017d2:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa017d6:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa017da:	10 97       	W[P2] = R0;
ffa017dc:	24 00       	SSYNC;
ffa017de:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa017e2:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa017e6:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa017ea:	10 97       	W[P2] = R0;
ffa017ec:	ff e3 b0 fd 	CALL 0xffa0134c <_spi_delay>;
ffa017f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa017f4:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa017f8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017fa:	10 97       	W[P2] = R0;
ffa017fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa01800:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa01804:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01806:	10 97       	W[P2] = R0;
ffa01808:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0180c:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa01810:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01812:	10 97       	W[P2] = R0;
ffa01814:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa01818:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa0181c:	b8 a0       	R0 = [FP + 0x8];
ffa0181e:	10 93       	[P2] = R0;
ffa01820:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa01824:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa01828:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa0182c:	10 97       	W[P2] = R0;
ffa0182e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa01832:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa01836:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa0183a:	10 97       	W[P2] = R0;
	...
ffa01844:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa01848:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0184c:	50 95       	R0 = W[P2] (X);
ffa0184e:	c0 42       	R0 = R0.L (Z);
ffa01850:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa01852:	00 02       	R0 = CC;
ffa01854:	00 0c       	CC = R0 == 0x0;
ffa01856:	f3 1b       	IF CC JUMP 0xffa0183c <_spi_read_packet_nocheck+0x74>;
ffa01858:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0185c:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa01860:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01862:	10 97       	W[P2] = R0;
ffa01864:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa01868:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0186c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0186e:	10 97       	W[P2] = R0;
ffa01870:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa01874:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa01878:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa0187c:	10 97       	W[P2] = R0;
ffa0187e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa01882:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01886:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0188a:	10 97       	W[P2] = R0;
ffa0188c:	24 00       	SSYNC;
ffa0188e:	01 e8 00 00 	UNLINK;
ffa01892:	10 00       	RTS;

ffa01894 <_radio_set_rx>:
ffa01894:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01898:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0189c:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa018a0:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa018a4:	10 97       	W[P2] = R0;
ffa018a6:	24 00       	SSYNC;
ffa018a8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018aa:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa018ac:	ff e3 74 fd 	CALL 0xffa01394 <_spi_write_register>;
ffa018b0:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa018b4:	ff e3 64 fe 	CALL 0xffa0157c <_spi_write_byte>;
ffa018b8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018ba:	99 60       	R1 = 0x13 (X);		/*		R1=0x13( 19) */
ffa018bc:	ff e3 6c fd 	CALL 0xffa01394 <_spi_write_register>;
ffa018c0:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa018c2:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa018c6:	ff e3 67 fd 	CALL 0xffa01394 <_spi_write_register>;
ffa018ca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa018ce:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa018d2:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa018d4:	10 97       	W[P2] = R0;
ffa018d6:	24 00       	SSYNC;
ffa018d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa018dc:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa018e0:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa018e4:	10 97       	W[P2] = R0;
ffa018e6:	24 00       	SSYNC;
ffa018e8:	01 e8 00 00 	UNLINK;
ffa018ec:	10 00       	RTS;
	...

ffa018f0 <_radio_set_tx>:
ffa018f0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa018f4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa018f8:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa018fc:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa01900:	10 97       	W[P2] = R0;
ffa01902:	24 00       	SSYNC;
ffa01904:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01906:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01908:	ff e3 46 fd 	CALL 0xffa01394 <_spi_write_register>;
ffa0190c:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa01910:	ff e3 36 fe 	CALL 0xffa0157c <_spi_write_byte>;
ffa01914:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01916:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0191a:	ff e3 3d fd 	CALL 0xffa01394 <_spi_write_register>;
ffa0191e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01920:	f1 60       	R1 = 0x1e (X);		/*		R1=0x1e( 30) */
ffa01922:	ff e3 39 fd 	CALL 0xffa01394 <_spi_write_register>;
ffa01926:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0192a:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0192e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01930:	10 97       	W[P2] = R0;
ffa01932:	01 e8 00 00 	UNLINK;
ffa01936:	10 00       	RTS;

ffa01938 <_radio_wait_irq>:
ffa01938:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0193c:	b8 b0       	[FP + 0x8] = R0;
ffa0193e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01940:	f0 bb       	[FP -0x4] = R0;
ffa01942:	08 20       	JUMP.S 0xffa01952 <_radio_wait_irq+0x1a>;
	...
ffa0194c:	f0 b9       	R0 = [FP -0x4];
ffa0194e:	08 64       	R0 += 0x1;		/* (  1) */
ffa01950:	f0 bb       	[FP -0x4] = R0;
ffa01952:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa01956:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa0195a:	50 95       	R0 = W[P2] (X);
ffa0195c:	c1 42       	R1 = R0.L (Z);
ffa0195e:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01962:	01 54       	R0 = R1 & R0;
ffa01964:	00 0c       	CC = R0 == 0x0;
ffa01966:	05 18       	IF CC JUMP 0xffa01970 <_radio_wait_irq+0x38>;
ffa01968:	f1 b9       	R1 = [FP -0x4];
ffa0196a:	b8 a0       	R0 = [FP + 0x8];
ffa0196c:	81 08       	CC = R1 < R0;
ffa0196e:	eb 1b       	IF CC JUMP 0xffa01944 <_radio_wait_irq+0xc>;
ffa01970:	f1 b9       	R1 = [FP -0x4];
ffa01972:	b8 a0       	R0 = [FP + 0x8];
ffa01974:	81 08       	CC = R1 < R0;
ffa01976:	06 10       	IF !CC JUMP 0xffa01982 <_radio_wait_irq+0x4a>;
ffa01978:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0197a:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0197e:	ff e3 0b fd 	CALL 0xffa01394 <_spi_write_register>;
ffa01982:	f0 b9       	R0 = [FP -0x4];
ffa01984:	01 e8 00 00 	UNLINK;
ffa01988:	10 00       	RTS;
	...

ffa0198c <_radio_init>:
ffa0198c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01990:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa01994:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa01998:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa0199c:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0199e:	10 97       	W[P2] = R0;
ffa019a0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa019a4:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa019a8:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa019ac:	10 97       	W[P2] = R0;
ffa019ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa019b2:	0a e1 04 05 	P2.L = 0x504;		/* (1284)	P2=0xffc00504(-4193020) */
ffa019b6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa019b8:	10 97       	W[P2] = R0;
ffa019ba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00504(-4193020) */
ffa019be:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa019c2:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa019c6:	10 97       	W[P2] = R0;
ffa019c8:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0050c(-4193012) */
ffa019cc:	09 e1 40 15 	P1.L = 0x1540;		/* (5440)	P1=0xffc01540(-4188864) */
ffa019d0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa019d4:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa019d8:	50 95       	R0 = W[P2] (X);
ffa019da:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa019dc:	08 97       	W[P1] = R0;
ffa019de:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc01540(-4188864) */
ffa019e2:	09 e1 30 15 	P1.L = 0x1530;		/* (5424)	P1=0xffc01530(-4188880) */
ffa019e6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa019ea:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa019ee:	51 95       	R1 = W[P2] (X);
ffa019f0:	20 e1 ff f7 	R0 = -0x801 (X);		/*		R0=0xfffff7ff(-2049) */
ffa019f4:	01 54       	R0 = R1 & R0;
ffa019f6:	08 97       	W[P1] = R0;
ffa019f8:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc01530(-4188880) */
ffa019fc:	09 e1 30 15 	P1.L = 0x1530;		/* (5424)	P1=0xffc01530(-4188880) */
ffa01a00:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa01a04:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa01a08:	51 95       	R1 = W[P2] (X);
ffa01a0a:	20 e1 00 06 	R0 = 0x600 (X);		/*		R0=0x600(1536) */
ffa01a0e:	01 56       	R0 = R1 | R0;
ffa01a10:	08 97       	W[P1] = R0;
ffa01a12:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa01a16:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa01a1a:	08 0a       	CC = R0 <= R1 (IU);
ffa01a1c:	05 18       	IF CC JUMP 0xffa01a26 <_radio_init+0x9a>;
ffa01a1e:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa01a22:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa01a26:	b9 e4 08 00 	R1 = B[FP + 0x8] (Z);
ffa01a2a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa01a2e:	00 e1 a8 00 	R0.L = 0xa8;		/* (168)	R0=0xff9000a8(-7339864) */
ffa01a32:	ff e3 0b f7 	CALL 0xffa00848 <_printf_int>;
ffa01a36:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a8(-7339864) */
ffa01a3a:	00 e1 a4 00 	R0.L = 0xa4;		/* (164)	R0=0xff9000a4(-7339868) */
ffa01a3e:	ff e3 97 f6 	CALL 0xffa0076c <_uart_str>;
ffa01a42:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a44:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a46:	ff e3 a7 fc 	CALL 0xffa01394 <_spi_write_register>;
ffa01a4a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01a4c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a4e:	ff e3 dd fc 	CALL 0xffa01408 <_spi_write_register_ver>;
ffa01a52:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa01a54:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01a56:	ff e3 d9 fc 	CALL 0xffa01408 <_spi_write_register_ver>;
ffa01a5a:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01a5c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01a5e:	ff e3 d5 fc 	CALL 0xffa01408 <_spi_write_register_ver>;
ffa01a62:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa01a64:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a66:	ff e3 d1 fc 	CALL 0xffa01408 <_spi_write_register_ver>;
ffa01a6a:	b9 e4 08 00 	R1 = B[FP + 0x8] (Z);
ffa01a6e:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa01a70:	ff e3 cc fc 	CALL 0xffa01408 <_spi_write_register_ver>;
ffa01a74:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01a76:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa01a78:	ff e3 c8 fc 	CALL 0xffa01408 <_spi_write_register_ver>;
ffa01a7c:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01a7e:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01a82:	ff e3 c3 fc 	CALL 0xffa01408 <_spi_write_register_ver>;
ffa01a86:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01a88:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa01a8a:	ff e3 bf fc 	CALL 0xffa01408 <_spi_write_register_ver>;
ffa01a8e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa01a92:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa01a96:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01a98:	10 97       	W[P2] = R0;
ffa01a9a:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa01a9e:	ff e3 6f fd 	CALL 0xffa0157c <_spi_write_byte>;
ffa01aa2:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa01aa6:	ff e3 6b fd 	CALL 0xffa0157c <_spi_write_byte>;
ffa01aaa:	40 43       	R0 = R0.B (Z);
ffa01aac:	01 e8 00 00 	UNLINK;
ffa01ab0:	10 00       	RTS;
	...

ffa01ab4 <_bfin_EMAC_send>:
ffa01ab4:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa01ab8:	b8 b0       	[FP + 0x8] = R0;
ffa01aba:	f9 b0       	[FP + 0xc] = R1;
ffa01abc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01abe:	e0 bb       	[FP -0x8] = R0;
ffa01ac0:	b8 a0       	R0 = [FP + 0x8];
ffa01ac2:	f0 bb       	[FP -0x4] = R0;
ffa01ac4:	f8 a0       	R0 = [FP + 0xc];
ffa01ac6:	00 0d       	CC = R0 <= 0x0;
ffa01ac8:	09 10       	IF !CC JUMP 0xffa01ada <_bfin_EMAC_send+0x26>;
ffa01aca:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01ace:	00 e1 c4 00 	R0.L = 0xc4;		/* (196)	R0=0xff9000c4(-7339836) */
ffa01ad2:	f9 a0       	R1 = [FP + 0xc];
ffa01ad4:	ff e3 ba f6 	CALL 0xffa00848 <_printf_int>;
ffa01ad8:	fa 20       	JUMP.S 0xffa01ccc <_bfin_EMAC_send+0x218>;
ffa01ada:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa01ade:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01ae2:	50 95       	R0 = W[P2] (X);
ffa01ae4:	c1 42       	R1 = R0.L (Z);
ffa01ae6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa01ae8:	01 54       	R0 = R1 & R0;
ffa01aea:	00 0c       	CC = R0 == 0x0;
ffa01aec:	08 18       	IF CC JUMP 0xffa01afc <_bfin_EMAC_send+0x48>;
ffa01aee:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa01af2:	00 e1 e0 00 	R0.L = 0xe0;		/* (224)	R0=0xff9000e0(-7339808) */
ffa01af6:	ff e3 9f f6 	CALL 0xffa00834 <_printf_str>;
ffa01afa:	e9 20       	JUMP.S 0xffa01ccc <_bfin_EMAC_send+0x218>;
ffa01afc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01afe:	d0 bb       	[FP -0xc] = R0;
ffa01b00:	11 20       	JUMP.S 0xffa01b22 <_bfin_EMAC_send+0x6e>;
ffa01b02:	d0 b9       	R0 = [FP -0xc];
ffa01b04:	21 e1 09 3d 	R1 = 0x3d09 (X);		/*		R1=0x3d09(15625) */
ffa01b08:	31 4f       	R1 <<= 0x6;
ffa01b0a:	08 09       	CC = R0 <= R1;
ffa01b0c:	08 18       	IF CC JUMP 0xffa01b1c <_bfin_EMAC_send+0x68>;
ffa01b0e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01b12:	00 e1 f8 00 	R0.L = 0xf8;		/* (248)	R0=0xff9000f8(-7339784) */
ffa01b16:	ff e3 8f f6 	CALL 0xffa00834 <_printf_str>;
ffa01b1a:	d9 20       	JUMP.S 0xffa01ccc <_bfin_EMAC_send+0x218>;
ffa01b1c:	d0 b9       	R0 = [FP -0xc];
ffa01b1e:	08 64       	R0 += 0x1;		/* (  1) */
ffa01b20:	d0 bb       	[FP -0xc] = R0;
ffa01b22:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01b26:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01b2a:	50 95       	R0 = W[P2] (X);
ffa01b2c:	c1 42       	R1 = R0.L (Z);
ffa01b2e:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa01b30:	01 54       	R0 = R1 & R0;
ffa01b32:	00 0c       	CC = R0 == 0x0;
ffa01b34:	e7 13       	IF !CC JUMP 0xffa01b02 <_bfin_EMAC_send+0x4e>;
ffa01b36:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca8 */
ffa01b3a:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa01b3e:	50 95       	R0 = W[P2] (X);
ffa01b40:	c0 42       	R0 = R0.L (Z);
ffa01b42:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff903d09(-7324407) */
ffa01b46:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01b4a:	10 4f       	R0 <<= 0x2;
ffa01b4c:	08 50       	R0 = R0 + R1;
ffa01b4e:	10 32       	P2 = R0;
ffa01b50:	52 91       	P2 = [P2];
ffa01b52:	92 ad       	P2 = [P2 + 0x18];
ffa01b54:	f8 a0       	R0 = [FP + 0xc];
ffa01b56:	10 97       	W[P2] = R0;
ffa01b58:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa01b5c:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa01b60:	50 95       	R0 = W[P2] (X);
ffa01b62:	c0 42       	R0 = R0.L (Z);
ffa01b64:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01b68:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01b6c:	10 4f       	R0 <<= 0x2;
ffa01b6e:	08 50       	R0 = R0 + R1;
ffa01b70:	10 32       	P2 = R0;
ffa01b72:	52 91       	P2 = [P2];
ffa01b74:	90 a1       	R0 = [P2 + 0x18];
ffa01b76:	10 64       	R0 += 0x2;		/* (  2) */
ffa01b78:	b9 a0       	R1 = [FP + 0x8];
ffa01b7a:	fa a0       	R2 = [FP + 0xc];
ffa01b7c:	ff e3 ee f8 	CALL 0xffa00d58 <_memcpy_>;
ffa01b80:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa01b84:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa01b88:	50 95       	R0 = W[P2] (X);
ffa01b8a:	c0 42       	R0 = R0.L (Z);
ffa01b8c:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01b90:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01b94:	10 4f       	R0 <<= 0x2;
ffa01b96:	08 50       	R0 = R0 + R1;
ffa01b98:	10 32       	P2 = R0;
ffa01b9a:	51 91       	P1 = [P2];
ffa01b9c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa01ba0:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa01ba4:	50 95       	R0 = W[P2] (X);
ffa01ba6:	c0 42       	R0 = R0.L (Z);
ffa01ba8:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01bac:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01bb0:	10 4f       	R0 <<= 0x2;
ffa01bb2:	08 50       	R0 = R0 + R1;
ffa01bb4:	10 32       	P2 = R0;
ffa01bb6:	52 91       	P2 = [P2];
ffa01bb8:	90 a1       	R0 = [P2 + 0x18];
ffa01bba:	48 b0       	[P1 + 0x4] = R0;
ffa01bbc:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc01530(-4188880) */
ffa01bc0:	09 e1 80 0c 	P1.L = 0xc80;		/* (3200)	P1=0xffc00c80(-4191104) */
ffa01bc4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa01bc8:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa01bcc:	50 95       	R0 = W[P2] (X);
ffa01bce:	c0 42       	R0 = R0.L (Z);
ffa01bd0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01bd4:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01bd8:	10 4f       	R0 <<= 0x2;
ffa01bda:	08 50       	R0 = R0 + R1;
ffa01bdc:	10 32       	P2 = R0;
ffa01bde:	10 91       	R0 = [P2];
ffa01be0:	08 93       	[P1] = R0;
ffa01be2:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c80(-4191104) */
ffa01be6:	09 e1 88 0c 	P1.L = 0xc88;		/* (3208)	P1=0xffc00c88(-4191096) */
ffa01bea:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa01bee:	0a e1 c2 00 	P2.L = 0xc2;		/* (194)	P2=0xff9000c2 <_txdmacfg> */
ffa01bf2:	50 95       	R0 = W[P2] (X);
ffa01bf4:	08 97       	W[P1] = R0;
ffa01bf6:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c88(-4191096) */
ffa01bfa:	09 e1 00 30 	P1.L = 0x3000;		/* (12288)	P1=0xffc03000(-4182016) */
ffa01bfe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000c2(-4194110) */
ffa01c02:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01c06:	10 91       	R0 = [P2];
ffa01c08:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01c0a:	08 93       	[P1] = R0;
ffa01c0c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c0e:	d0 bb       	[FP -0xc] = R0;
ffa01c10:	11 20       	JUMP.S 0xffa01c32 <_bfin_EMAC_send+0x17e>;
ffa01c12:	d0 b9       	R0 = [FP -0xc];
ffa01c14:	21 e1 09 3d 	R1 = 0x3d09 (X);		/*		R1=0x3d09(15625) */
ffa01c18:	31 4f       	R1 <<= 0x6;
ffa01c1a:	08 09       	CC = R0 <= R1;
ffa01c1c:	08 18       	IF CC JUMP 0xffa01c2c <_bfin_EMAC_send+0x178>;
ffa01c1e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01c22:	00 e1 10 01 	R0.L = 0x110;		/* (272)	R0=0xff900110(-7339760) */
ffa01c26:	ff e3 07 f6 	CALL 0xffa00834 <_printf_str>;
ffa01c2a:	51 20       	JUMP.S 0xffa01ccc <_bfin_EMAC_send+0x218>;
ffa01c2c:	d0 b9       	R0 = [FP -0xc];
ffa01c2e:	08 64       	R0 += 0x1;		/* (  1) */
ffa01c30:	d0 bb       	[FP -0xc] = R0;
ffa01c32:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa01c36:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa01c3a:	50 95       	R0 = W[P2] (X);
ffa01c3c:	c0 42       	R0 = R0.L (Z);
ffa01c3e:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff903d09(-7324407) */
ffa01c42:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01c46:	10 4f       	R0 <<= 0x2;
ffa01c48:	08 50       	R0 = R0 + R1;
ffa01c4a:	10 32       	P2 = R0;
ffa01c4c:	52 91       	P2 = [P2];
ffa01c4e:	90 a2       	R0 = [P2 + 0x28];
ffa01c50:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa01c52:	00 02       	R0 = CC;
ffa01c54:	00 0c       	CC = R0 == 0x0;
ffa01c56:	de 1b       	IF CC JUMP 0xffa01c12 <_bfin_EMAC_send+0x15e>;
ffa01c58:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa01c5c:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa01c60:	50 95       	R0 = W[P2] (X);
ffa01c62:	c0 42       	R0 = R0.L (Z);
ffa01c64:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01c68:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01c6c:	10 4f       	R0 <<= 0x2;
ffa01c6e:	08 50       	R0 = R0 + R1;
ffa01c70:	10 32       	P2 = R0;
ffa01c72:	52 91       	P2 = [P2];
ffa01c74:	90 a2       	R0 = [P2 + 0x28];
ffa01c76:	e0 bb       	[FP -0x8] = R0;
ffa01c78:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa01c7c:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa01c80:	50 95       	R0 = W[P2] (X);
ffa01c82:	c0 42       	R0 = R0.L (Z);
ffa01c84:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01c88:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01c8c:	10 4f       	R0 <<= 0x2;
ffa01c8e:	08 50       	R0 = R0 + R1;
ffa01c90:	10 32       	P2 = R0;
ffa01c92:	52 91       	P2 = [P2];
ffa01c94:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c96:	90 b2       	[P2 + 0x28] = R0;
ffa01c98:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa01c9c:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa01ca0:	50 95       	R0 = W[P2] (X);
ffa01ca2:	c0 42       	R0 = R0.L (Z);
ffa01ca4:	10 0d       	CC = R0 <= 0x2;
ffa01ca6:	08 18       	IF CC JUMP 0xffa01cb6 <_bfin_EMAC_send+0x202>;
ffa01ca8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa01cac:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa01cb0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01cb2:	10 97       	W[P2] = R0;
ffa01cb4:	0c 20       	JUMP.S 0xffa01ccc <_bfin_EMAC_send+0x218>;
ffa01cb6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa01cba:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa01cbe:	50 95       	R0 = W[P2] (X);
ffa01cc0:	08 64       	R0 += 0x1;		/* (  1) */
ffa01cc2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa01cc6:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa01cca:	10 97       	W[P2] = R0;
ffa01ccc:	e0 b9       	R0 = [FP -0x8];
ffa01cce:	01 e8 00 00 	UNLINK;
ffa01cd2:	10 00       	RTS;

ffa01cd4 <_bfin_EMAC_send_check>:
ffa01cd4:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa01cd8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c3c(-4191172) */
ffa01cdc:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01ce0:	50 95       	R0 = W[P2] (X);
ffa01ce2:	c1 42       	R1 = R0.L (Z);
ffa01ce4:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa01ce6:	01 54       	R0 = R1 & R0;
ffa01ce8:	00 0c       	CC = R0 == 0x0;
ffa01cea:	04 18       	IF CC JUMP 0xffa01cf2 <_bfin_EMAC_send_check+0x1e>;
ffa01cec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01cee:	f0 bb       	[FP -0x4] = R0;
ffa01cf0:	03 20       	JUMP.S 0xffa01cf6 <_bfin_EMAC_send_check+0x22>;
ffa01cf2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01cf4:	f0 bb       	[FP -0x4] = R0;
ffa01cf6:	f0 b9       	R0 = [FP -0x4];
ffa01cf8:	01 e8 00 00 	UNLINK;
ffa01cfc:	10 00       	RTS;
	...

ffa01d00 <_bfin_EMAC_send_nocopy>:
ffa01d00:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa01d04:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d06:	f0 bb       	[FP -0x4] = R0;
ffa01d08:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01d0c:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01d10:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01d12:	10 97       	W[P2] = R0;
ffa01d14:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01d18:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01d1c:	50 95       	R0 = W[P2] (X);
ffa01d1e:	c1 42       	R1 = R0.L (Z);
ffa01d20:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa01d22:	01 54       	R0 = R1 & R0;
ffa01d24:	00 0c       	CC = R0 == 0x0;
ffa01d26:	08 18       	IF CC JUMP 0xffa01d36 <_bfin_EMAC_send_nocopy+0x36>;
ffa01d28:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa01d2c:	00 e1 e0 00 	R0.L = 0xe0;		/* (224)	R0=0xff9000e0(-7339808) */
ffa01d30:	ff e3 82 f5 	CALL 0xffa00834 <_printf_str>;
ffa01d34:	8e 20       	JUMP.S 0xffa01e50 <_bfin_EMAC_send_nocopy+0x150>;
ffa01d36:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d38:	e0 bb       	[FP -0x8] = R0;
ffa01d3a:	11 20       	JUMP.S 0xffa01d5c <_bfin_EMAC_send_nocopy+0x5c>;
ffa01d3c:	e0 b9       	R0 = [FP -0x8];
ffa01d3e:	21 e1 09 3d 	R1 = 0x3d09 (X);		/*		R1=0x3d09(15625) */
ffa01d42:	31 4f       	R1 <<= 0x6;
ffa01d44:	08 09       	CC = R0 <= R1;
ffa01d46:	08 18       	IF CC JUMP 0xffa01d56 <_bfin_EMAC_send_nocopy+0x56>;
ffa01d48:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01d4c:	00 e1 24 01 	R0.L = 0x124;		/* (292)	R0=0xff900124(-7339740) */
ffa01d50:	ff e3 72 f5 	CALL 0xffa00834 <_printf_str>;
ffa01d54:	7e 20       	JUMP.S 0xffa01e50 <_bfin_EMAC_send_nocopy+0x150>;
ffa01d56:	e0 b9       	R0 = [FP -0x8];
ffa01d58:	08 64       	R0 += 0x1;		/* (  1) */
ffa01d5a:	e0 bb       	[FP -0x8] = R0;
ffa01d5c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01d60:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01d64:	50 95       	R0 = W[P2] (X);
ffa01d66:	c1 42       	R1 = R0.L (Z);
ffa01d68:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa01d6a:	01 54       	R0 = R1 & R0;
ffa01d6c:	00 0c       	CC = R0 == 0x0;
ffa01d6e:	e7 13       	IF !CC JUMP 0xffa01d3c <_bfin_EMAC_send_nocopy+0x3c>;
ffa01d70:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca8 */
ffa01d74:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa01d78:	50 95       	R0 = W[P2] (X);
ffa01d7a:	c0 42       	R0 = R0.L (Z);
ffa01d7c:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff903d09(-7324407) */
ffa01d80:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01d84:	10 4f       	R0 <<= 0x2;
ffa01d86:	08 50       	R0 = R0 + R1;
ffa01d88:	10 32       	P2 = R0;
ffa01d8a:	51 91       	P1 = [P2];
ffa01d8c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa01d90:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa01d94:	50 95       	R0 = W[P2] (X);
ffa01d96:	c0 42       	R0 = R0.L (Z);
ffa01d98:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01d9c:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01da0:	10 4f       	R0 <<= 0x2;
ffa01da2:	08 50       	R0 = R0 + R1;
ffa01da4:	10 32       	P2 = R0;
ffa01da6:	52 91       	P2 = [P2];
ffa01da8:	90 a1       	R0 = [P2 + 0x18];
ffa01daa:	48 b0       	[P1 + 0x4] = R0;
ffa01dac:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa01db0:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa01db4:	50 95       	R0 = W[P2] (X);
ffa01db6:	c0 42       	R0 = R0.L (Z);
ffa01db8:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01dbc:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01dc0:	10 4f       	R0 <<= 0x2;
ffa01dc2:	08 50       	R0 = R0 + R1;
ffa01dc4:	10 32       	P2 = R0;
ffa01dc6:	52 91       	P2 = [P2];
ffa01dc8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01dca:	90 b2       	[P2 + 0x28] = R0;
ffa01dcc:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03000(-4182016) */
ffa01dd0:	09 e1 80 0c 	P1.L = 0xc80;		/* (3200)	P1=0xffc00c80(-4191104) */
ffa01dd4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa01dd8:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa01ddc:	50 95       	R0 = W[P2] (X);
ffa01dde:	c0 42       	R0 = R0.L (Z);
ffa01de0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01de4:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01de8:	10 4f       	R0 <<= 0x2;
ffa01dea:	08 50       	R0 = R0 + R1;
ffa01dec:	10 32       	P2 = R0;
ffa01dee:	10 91       	R0 = [P2];
ffa01df0:	08 93       	[P1] = R0;
ffa01df2:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c80(-4191104) */
ffa01df6:	09 e1 88 0c 	P1.L = 0xc88;		/* (3208)	P1=0xffc00c88(-4191096) */
ffa01dfa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa01dfe:	0a e1 c2 00 	P2.L = 0xc2;		/* (194)	P2=0xff9000c2 <_txdmacfg> */
ffa01e02:	50 95       	R0 = W[P2] (X);
ffa01e04:	08 97       	W[P1] = R0;
ffa01e06:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c88(-4191096) */
ffa01e0a:	09 e1 00 30 	P1.L = 0x3000;		/* (12288)	P1=0xffc03000(-4182016) */
ffa01e0e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000c2(-4194110) */
ffa01e12:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01e16:	10 91       	R0 = [P2];
ffa01e18:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01e1a:	08 93       	[P1] = R0;
ffa01e1c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa01e20:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa01e24:	50 95       	R0 = W[P2] (X);
ffa01e26:	c0 42       	R0 = R0.L (Z);
ffa01e28:	10 0d       	CC = R0 <= 0x2;
ffa01e2a:	08 18       	IF CC JUMP 0xffa01e3a <_bfin_EMAC_send_nocopy+0x13a>;
ffa01e2c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa01e30:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa01e34:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e36:	10 97       	W[P2] = R0;
ffa01e38:	0c 20       	JUMP.S 0xffa01e50 <_bfin_EMAC_send_nocopy+0x150>;
ffa01e3a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa01e3e:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa01e42:	50 95       	R0 = W[P2] (X);
ffa01e44:	08 64       	R0 += 0x1;		/* (  1) */
ffa01e46:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa01e4a:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa01e4e:	10 97       	W[P2] = R0;
ffa01e50:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c3c(-4191172) */
ffa01e54:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01e58:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01e5a:	10 97       	W[P2] = R0;
ffa01e5c:	f0 b9       	R0 = [FP -0x4];
ffa01e5e:	01 e8 00 00 	UNLINK;
ffa01e62:	10 00       	RTS;

ffa01e64 <_bfin_EMAC_recv>:
ffa01e64:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa01e68:	b8 b0       	[FP + 0x8] = R0;
ffa01e6a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e6c:	f0 bb       	[FP -0x4] = R0;
ffa01e6e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa01e72:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa01e76:	50 95       	R0 = W[P2] (X);
ffa01e78:	c0 42       	R0 = R0.L (Z);
ffa01e7a:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa01e7e:	01 e1 54 0c 	R1.L = 0xc54;		/* (3156)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa01e82:	10 4f       	R0 <<= 0x2;
ffa01e84:	08 50       	R0 = R0 + R1;
ffa01e86:	10 32       	P2 = R0;
ffa01e88:	52 91       	P2 = [P2];
ffa01e8a:	91 a2       	R1 = [P2 + 0x28];
ffa01e8c:	20 e1 00 10 	R0 = 0x1000 (X);		/*		R0=0x1000(4096) */
ffa01e90:	01 54       	R0 = R1 & R0;
ffa01e92:	00 0c       	CC = R0 == 0x0;
ffa01e94:	04 10       	IF !CC JUMP 0xffa01e9c <_bfin_EMAC_recv+0x38>;
ffa01e96:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01e98:	f0 bb       	[FP -0x4] = R0;
ffa01e9a:	cf 20       	JUMP.S 0xffa02038 <_bfin_EMAC_recv+0x1d4>;
ffa01e9c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_rxIdx> */
ffa01ea0:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa01ea4:	50 95       	R0 = W[P2] (X);
ffa01ea6:	c0 42       	R0 = R0.L (Z);
ffa01ea8:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa01eac:	01 e1 54 0c 	R1.L = 0xc54;		/* (3156)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa01eb0:	10 4f       	R0 <<= 0x2;
ffa01eb2:	08 50       	R0 = R0 + R1;
ffa01eb4:	10 32       	P2 = R0;
ffa01eb6:	52 91       	P2 = [P2];
ffa01eb8:	91 a2       	R1 = [P2 + 0x28];
ffa01eba:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01ebc:	a0 4f       	R0 <<= 0x14;
ffa01ebe:	01 54       	R0 = R1 & R0;
ffa01ec0:	00 0c       	CC = R0 == 0x0;
ffa01ec2:	08 18       	IF CC JUMP 0xffa01ed2 <_bfin_EMAC_recv+0x6e>;
ffa01ec4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa01ec8:	00 e1 3c 01 	R0.L = 0x13c;		/* (316)	R0=0xff90013c(-7339716) */
ffa01ecc:	ff e3 b4 f4 	CALL 0xffa00834 <_printf_str>;
ffa01ed0:	b4 20       	JUMP.S 0xffa02038 <_bfin_EMAC_recv+0x1d4>;
ffa01ed2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_rxIdx> */
ffa01ed6:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa01eda:	50 95       	R0 = W[P2] (X);
ffa01edc:	c0 42       	R0 = R0.L (Z);
ffa01ede:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa01ee2:	01 e1 54 0c 	R1.L = 0xc54;		/* (3156)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa01ee6:	10 4f       	R0 <<= 0x2;
ffa01ee8:	08 50       	R0 = R0 + R1;
ffa01eea:	10 32       	P2 = R0;
ffa01eec:	52 91       	P2 = [P2];
ffa01eee:	91 a2       	R1 = [P2 + 0x28];
ffa01ef0:	20 e1 00 20 	R0 = 0x2000 (X);		/*		R0=0x2000(8192) */
ffa01ef4:	01 54       	R0 = R1 & R0;
ffa01ef6:	00 0c       	CC = R0 == 0x0;
ffa01ef8:	08 10       	IF !CC JUMP 0xffa01f08 <_bfin_EMAC_recv+0xa4>;
ffa01efa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff902000(-7331840) */
ffa01efe:	00 e1 58 01 	R0.L = 0x158;		/* (344)	R0=0xff900158(-7339688) */
ffa01f02:	ff e3 99 f4 	CALL 0xffa00834 <_printf_str>;
ffa01f06:	99 20       	JUMP.S 0xffa02038 <_bfin_EMAC_recv+0x1d4>;
ffa01f08:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_rxIdx> */
ffa01f0c:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa01f10:	50 95       	R0 = W[P2] (X);
ffa01f12:	c0 42       	R0 = R0.L (Z);
ffa01f14:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa01f18:	01 e1 54 0c 	R1.L = 0xc54;		/* (3156)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa01f1c:	10 4f       	R0 <<= 0x2;
ffa01f1e:	08 50       	R0 = R0 + R1;
ffa01f20:	10 32       	P2 = R0;
ffa01f22:	52 91       	P2 = [P2];
ffa01f24:	90 a2       	R0 = [P2 + 0x28];
ffa01f26:	08 30       	R1 = R0;
ffa01f28:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa01f2c:	01 54       	R0 = R1 & R0;
ffa01f2e:	f0 bb       	[FP -0x4] = R0;
ffa01f30:	f0 b9       	R0 = [FP -0x4];
ffa01f32:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa01f34:	08 09       	CC = R0 <= R1;
ffa01f36:	08 10       	IF !CC JUMP 0xffa01f46 <_bfin_EMAC_recv+0xe2>;
ffa01f38:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007ff(-7337985) */
ffa01f3c:	00 e1 6c 01 	R0.L = 0x16c;		/* (364)	R0=0xff90016c(-7339668) */
ffa01f40:	ff e3 7a f4 	CALL 0xffa00834 <_printf_str>;
ffa01f44:	7a 20       	JUMP.S 0xffa02038 <_bfin_EMAC_recv+0x1d4>;
ffa01f46:	f0 b9       	R0 = [FP -0x4];
ffa01f48:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa01f4a:	f0 bb       	[FP -0x4] = R0;
ffa01f4c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c50(-4191152) */
ffa01f50:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01f54:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa01f56:	10 97       	W[P2] = R0;
ffa01f58:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa01f5c:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa01f60:	50 95       	R0 = W[P2] (X);
ffa01f62:	c0 42       	R0 = R0.L (Z);
ffa01f64:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900004(-7340028) */
ffa01f68:	01 e1 54 0c 	R1.L = 0xc54;		/* (3156)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa01f6c:	10 4f       	R0 <<= 0x2;
ffa01f6e:	08 50       	R0 = R0 + R1;
ffa01f70:	10 32       	P2 = R0;
ffa01f72:	52 91       	P2 = [P2];
ffa01f74:	90 a1       	R0 = [P2 + 0x18];
ffa01f76:	ba ac       	P2 = [FP + 0x8];
ffa01f78:	10 93       	[P2] = R0;
ffa01f7a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03000(-4182016) */
ffa01f7e:	09 e1 68 0c 	P1.L = 0xc68;		/* (3176)	P1=0xffc00c68(-4191128) */
ffa01f82:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c50(-4191152) */
ffa01f86:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xffc00c68(-4191128) */
ffa01f8a:	51 95       	R1 = W[P2] (X);
ffa01f8c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01f8e:	01 56       	R0 = R1 | R0;
ffa01f90:	08 97       	W[P1] = R0;
ffa01f92:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c68 */
ffa01f96:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa01f9a:	50 95       	R0 = W[P2] (X);
ffa01f9c:	c0 42       	R0 = R0.L (Z);
ffa01f9e:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa01fa2:	01 e1 54 0c 	R1.L = 0xc54;		/* (3156)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa01fa6:	10 4f       	R0 <<= 0x2;
ffa01fa8:	08 50       	R0 = R0 + R1;
ffa01faa:	10 32       	P2 = R0;
ffa01fac:	52 91       	P2 = [P2];
ffa01fae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01fb0:	90 b2       	[P2 + 0x28] = R0;
ffa01fb2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_rxIdx> */
ffa01fb6:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa01fba:	50 95       	R0 = W[P2] (X);
ffa01fbc:	c0 42       	R0 = R0.L (Z);
ffa01fbe:	10 0d       	CC = R0 <= 0x2;
ffa01fc0:	08 18       	IF CC JUMP 0xffa01fd0 <_bfin_EMAC_recv+0x16c>;
ffa01fc2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_rxIdx> */
ffa01fc6:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa01fca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01fcc:	10 97       	W[P2] = R0;
ffa01fce:	0c 20       	JUMP.S 0xffa01fe6 <_bfin_EMAC_recv+0x182>;
ffa01fd0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_rxIdx> */
ffa01fd4:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa01fd8:	50 95       	R0 = W[P2] (X);
ffa01fda:	08 64       	R0 += 0x1;		/* (  1) */
ffa01fdc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_rxIdx> */
ffa01fe0:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa01fe4:	10 97       	W[P2] = R0;
ffa01fe6:	ba ac       	P2 = [FP + 0x8];
ffa01fe8:	10 91       	R0 = [P2];
ffa01fea:	f1 b9       	R1 = [FP -0x4];
ffa01fec:	00 e3 44 0e 	CALL 0xffa03c74 <_ARP_rx>;
ffa01ff0:	00 0c       	CC = R0 == 0x0;
ffa01ff2:	04 18       	IF CC JUMP 0xffa01ffa <_bfin_EMAC_recv+0x196>;
ffa01ff4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01ff6:	f0 bb       	[FP -0x4] = R0;
ffa01ff8:	14 20       	JUMP.S 0xffa02020 <_bfin_EMAC_recv+0x1bc>;
ffa01ffa:	ba ac       	P2 = [FP + 0x8];
ffa01ffc:	10 91       	R0 = [P2];
ffa01ffe:	f1 b9       	R1 = [FP -0x4];
ffa02000:	00 e3 38 09 	CALL 0xffa03270 <_icmp_rx>;
ffa02004:	00 0c       	CC = R0 == 0x0;
ffa02006:	04 18       	IF CC JUMP 0xffa0200e <_bfin_EMAC_recv+0x1aa>;
ffa02008:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0200a:	f0 bb       	[FP -0x4] = R0;
ffa0200c:	0a 20       	JUMP.S 0xffa02020 <_bfin_EMAC_recv+0x1bc>;
ffa0200e:	ba ac       	P2 = [FP + 0x8];
ffa02010:	10 91       	R0 = [P2];
ffa02012:	f1 b9       	R1 = [FP -0x4];
ffa02014:	00 e3 40 13 	CALL 0xffa04694 <_tcp_rx>;
ffa02018:	00 0c       	CC = R0 == 0x0;
ffa0201a:	03 18       	IF CC JUMP 0xffa02020 <_bfin_EMAC_recv+0x1bc>;
ffa0201c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0201e:	f0 bb       	[FP -0x4] = R0;
ffa02020:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c50(-4191152) */
ffa02024:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa02028:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0202a:	10 97       	W[P2] = R0;
ffa0202c:	f0 b9       	R0 = [FP -0x4];
ffa0202e:	00 0d       	CC = R0 <= 0x0;
ffa02030:	1f 1b       	IF CC JUMP 0xffa01e6e <_bfin_EMAC_recv+0xa>;
ffa02032:	f0 b9       	R0 = [FP -0x4];
ffa02034:	e0 bb       	[FP -0x8] = R0;
ffa02036:	03 20       	JUMP.S 0xffa0203c <_bfin_EMAC_recv+0x1d8>;
ffa02038:	f1 b9       	R1 = [FP -0x4];
ffa0203a:	e1 bb       	[FP -0x8] = R1;
ffa0203c:	e0 b9       	R0 = [FP -0x8];
ffa0203e:	01 e8 00 00 	UNLINK;
ffa02042:	10 00       	RTS;

ffa02044 <_bfin_EMAC_recv_poll>:
ffa02044:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02048:	b8 b0       	[FP + 0x8] = R0;
ffa0204a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0204c:	d0 bb       	[FP -0xc] = R0;
ffa0204e:	1f 20       	JUMP.S 0xffa0208c <_bfin_EMAC_recv_poll+0x48>;
ffa02050:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa02054:	ff e3 60 f9 	CALL 0xffa01314 <_udelay>;
ffa02058:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa0205c:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa02060:	50 95       	R0 = W[P2] (X);
ffa02062:	c0 42       	R0 = R0.L (Z);
ffa02064:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa02068:	01 e1 54 0c 	R1.L = 0xc54;		/* (3156)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa0206c:	10 4f       	R0 <<= 0x2;
ffa0206e:	08 50       	R0 = R0 + R1;
ffa02070:	10 32       	P2 = R0;
ffa02072:	52 91       	P2 = [P2];
ffa02074:	91 a2       	R1 = [P2 + 0x28];
ffa02076:	20 e1 00 10 	R0 = 0x1000 (X);		/*		R0=0x1000(4096) */
ffa0207a:	01 54       	R0 = R1 & R0;
ffa0207c:	00 0c       	CC = R0 == 0x0;
ffa0207e:	04 18       	IF CC JUMP 0xffa02086 <_bfin_EMAC_recv_poll+0x42>;
ffa02080:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02082:	e0 bb       	[FP -0x8] = R0;
ffa02084:	09 20       	JUMP.S 0xffa02096 <_bfin_EMAC_recv_poll+0x52>;
ffa02086:	d0 b9       	R0 = [FP -0xc];
ffa02088:	08 64       	R0 += 0x1;		/* (  1) */
ffa0208a:	d0 bb       	[FP -0xc] = R0;
ffa0208c:	d0 b9       	R0 = [FP -0xc];
ffa0208e:	21 e1 63 00 	R1 = 0x63 (X);		/*		R1=0x63( 99) */
ffa02092:	08 09       	CC = R0 <= R1;
ffa02094:	de 1b       	IF CC JUMP 0xffa02050 <_bfin_EMAC_recv_poll+0xc>;
ffa02096:	e0 b9       	R0 = [FP -0x8];
ffa02098:	00 0c       	CC = R0 == 0x0;
ffa0209a:	0a 10       	IF !CC JUMP 0xffa020ae <_bfin_EMAC_recv_poll+0x6a>;
ffa0209c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa020a0:	00 e1 84 01 	R0.L = 0x184;		/* (388)	R0=0xff900184(-7339644) */
ffa020a4:	ff e3 c8 f3 	CALL 0xffa00834 <_printf_str>;
ffa020a8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa020aa:	c0 bb       	[FP -0x10] = R0;
ffa020ac:	86 20       	JUMP.S 0xffa021b8 <_bfin_EMAC_recv_poll+0x174>;
ffa020ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_rxIdx> */
ffa020b2:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa020b6:	50 95       	R0 = W[P2] (X);
ffa020b8:	c0 42       	R0 = R0.L (Z);
ffa020ba:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900063(-7339933) */
ffa020be:	01 e1 54 0c 	R1.L = 0xc54;		/* (3156)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa020c2:	10 4f       	R0 <<= 0x2;
ffa020c4:	08 50       	R0 = R0 + R1;
ffa020c6:	10 32       	P2 = R0;
ffa020c8:	52 91       	P2 = [P2];
ffa020ca:	90 a2       	R0 = [P2 + 0x28];
ffa020cc:	08 30       	R1 = R0;
ffa020ce:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa020d2:	01 54       	R0 = R1 & R0;
ffa020d4:	f0 bb       	[FP -0x4] = R0;
ffa020d6:	f0 b9       	R0 = [FP -0x4];
ffa020d8:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa020da:	08 09       	CC = R0 <= R1;
ffa020dc:	04 10       	IF !CC JUMP 0xffa020e4 <_bfin_EMAC_recv_poll+0xa0>;
ffa020de:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa020e0:	c0 bb       	[FP -0x10] = R0;
ffa020e2:	6b 20       	JUMP.S 0xffa021b8 <_bfin_EMAC_recv_poll+0x174>;
ffa020e4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_rxIdx> */
ffa020e8:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa020ec:	50 95       	R0 = W[P2] (X);
ffa020ee:	c0 42       	R0 = R0.L (Z);
ffa020f0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900004(-7340028) */
ffa020f4:	01 e1 54 0c 	R1.L = 0xc54;		/* (3156)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa020f8:	10 4f       	R0 <<= 0x2;
ffa020fa:	08 50       	R0 = R0 + R1;
ffa020fc:	10 32       	P2 = R0;
ffa020fe:	52 91       	P2 = [P2];
ffa02100:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02102:	90 b2       	[P2 + 0x28] = R0;
ffa02104:	f0 b9       	R0 = [FP -0x4];
ffa02106:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa02108:	f0 bb       	[FP -0x4] = R0;
ffa0210a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0210e:	00 e1 a4 01 	R0.L = 0x1a4;		/* (420)	R0=0xff9001a4(-7339612) */
ffa02112:	f1 b9       	R1 = [FP -0x4];
ffa02114:	ff e3 9a f3 	CALL 0xffa00848 <_printf_int>;
ffa02118:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_rxIdx> */
ffa0211c:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa02120:	50 95       	R0 = W[P2] (X);
ffa02122:	c0 42       	R0 = R0.L (Z);
ffa02124:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa02128:	01 e1 54 0c 	R1.L = 0xc54;		/* (3156)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa0212c:	10 4f       	R0 <<= 0x2;
ffa0212e:	08 50       	R0 = R0 + R1;
ffa02130:	10 32       	P2 = R0;
ffa02132:	52 91       	P2 = [P2];
ffa02134:	90 a1       	R0 = [P2 + 0x18];
ffa02136:	ba ac       	P2 = [FP + 0x8];
ffa02138:	10 93       	[P2] = R0;
ffa0213a:	ba ac       	P2 = [FP + 0x8];
ffa0213c:	10 91       	R0 = [P2];
ffa0213e:	f1 b9       	R1 = [FP -0x4];
ffa02140:	00 e3 9a 0d 	CALL 0xffa03c74 <_ARP_rx>;
ffa02144:	00 0c       	CC = R0 == 0x0;
ffa02146:	04 18       	IF CC JUMP 0xffa0214e <_bfin_EMAC_recv_poll+0x10a>;
ffa02148:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0214a:	f0 bb       	[FP -0x4] = R0;
ffa0214c:	0a 20       	JUMP.S 0xffa02160 <_bfin_EMAC_recv_poll+0x11c>;
ffa0214e:	ba ac       	P2 = [FP + 0x8];
ffa02150:	10 91       	R0 = [P2];
ffa02152:	f1 b9       	R1 = [FP -0x4];
ffa02154:	00 e3 8e 08 	CALL 0xffa03270 <_icmp_rx>;
ffa02158:	00 0c       	CC = R0 == 0x0;
ffa0215a:	03 18       	IF CC JUMP 0xffa02160 <_bfin_EMAC_recv_poll+0x11c>;
ffa0215c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0215e:	f0 bb       	[FP -0x4] = R0;
ffa02160:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_rxIdx> */
ffa02164:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa02168:	50 95       	R0 = W[P2] (X);
ffa0216a:	c0 42       	R0 = R0.L (Z);
ffa0216c:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa02170:	01 e1 54 0c 	R1.L = 0xc54;		/* (3156)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa02174:	10 4f       	R0 <<= 0x2;
ffa02176:	08 50       	R0 = R0 + R1;
ffa02178:	10 32       	P2 = R0;
ffa0217a:	52 91       	P2 = [P2];
ffa0217c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0217e:	90 b2       	[P2 + 0x28] = R0;
ffa02180:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_rxIdx> */
ffa02184:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa02188:	50 95       	R0 = W[P2] (X);
ffa0218a:	c0 42       	R0 = R0.L (Z);
ffa0218c:	10 0d       	CC = R0 <= 0x2;
ffa0218e:	08 18       	IF CC JUMP 0xffa0219e <_bfin_EMAC_recv_poll+0x15a>;
ffa02190:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_rxIdx> */
ffa02194:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa02198:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0219a:	10 97       	W[P2] = R0;
ffa0219c:	0c 20       	JUMP.S 0xffa021b4 <_bfin_EMAC_recv_poll+0x170>;
ffa0219e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_rxIdx> */
ffa021a2:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa021a6:	50 95       	R0 = W[P2] (X);
ffa021a8:	08 64       	R0 += 0x1;		/* (  1) */
ffa021aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_rxIdx> */
ffa021ae:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa021b2:	10 97       	W[P2] = R0;
ffa021b4:	f1 b9       	R1 = [FP -0x4];
ffa021b6:	c1 bb       	[FP -0x10] = R1;
ffa021b8:	c0 b9       	R0 = [FP -0x10];
ffa021ba:	01 e8 00 00 	UNLINK;
ffa021be:	10 00       	RTS;

ffa021c0 <_FormatIPAddress>:
ffa021c0:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa021c4:	7b a1       	R3 = [FP + 0x14];
ffa021c6:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa021ca:	01 30       	R0 = R1;
ffa021cc:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa021d0:	02 30       	R0 = R2;
ffa021d2:	b8 e6 10 00 	B[FP + 0x10] = R0;
ffa021d6:	03 30       	R0 = R3;
ffa021d8:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa021dc:	b8 e4 f8 ff 	R0 = B[FP + -0x8] (Z);
ffa021e0:	f0 bb       	[FP -0x4] = R0;
ffa021e2:	f0 b9       	R0 = [FP -0x4];
ffa021e4:	40 4f       	R0 <<= 0x8;
ffa021e6:	f0 bb       	[FP -0x4] = R0;
ffa021e8:	b9 e4 10 00 	R1 = B[FP + 0x10] (Z);
ffa021ec:	f0 b9       	R0 = [FP -0x4];
ffa021ee:	08 56       	R0 = R0 | R1;
ffa021f0:	f0 bb       	[FP -0x4] = R0;
ffa021f2:	f0 b9       	R0 = [FP -0x4];
ffa021f4:	40 4f       	R0 <<= 0x8;
ffa021f6:	f0 bb       	[FP -0x4] = R0;
ffa021f8:	b9 e4 0c 00 	R1 = B[FP + 0xc] (Z);
ffa021fc:	f0 b9       	R0 = [FP -0x4];
ffa021fe:	08 56       	R0 = R0 | R1;
ffa02200:	f0 bb       	[FP -0x4] = R0;
ffa02202:	f0 b9       	R0 = [FP -0x4];
ffa02204:	40 4f       	R0 <<= 0x8;
ffa02206:	f0 bb       	[FP -0x4] = R0;
ffa02208:	b9 e4 08 00 	R1 = B[FP + 0x8] (Z);
ffa0220c:	f0 b9       	R0 = [FP -0x4];
ffa0220e:	08 56       	R0 = R0 | R1;
ffa02210:	f0 bb       	[FP -0x4] = R0;
ffa02212:	f0 b9       	R0 = [FP -0x4];
ffa02214:	01 e8 00 00 	UNLINK;
ffa02218:	10 00       	RTS;
	...

ffa0221c <_bfin_EMAC_init>:
ffa0221c:	78 05       	[--SP] = (R7:7);
ffa0221e:	00 e8 08 00 	LINK 0x20;		/* (32) */
ffa02222:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02224:	e0 bb       	[FP -0x8] = R0;
ffa02226:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0222a:	00 e1 b8 01 	R0.L = 0x1b8;		/* (440)	R0=0xff9001b8(-7339592) */
ffa0222e:	ff e3 03 f3 	CALL 0xffa00834 <_printf_str>;
ffa02232:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_rxIdx> */
ffa02236:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa0223a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0223c:	10 97       	W[P2] = R0;
ffa0223e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa02242:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa02246:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02248:	10 97       	W[P2] = R0;
ffa0224a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_rxIdx> */
ffa0224e:	0a e1 3e 0c 	P2.L = 0xc3e;		/* (3134)	P2=0xff900c3e <_NetIPID> */
ffa02252:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02254:	10 97       	W[P2] = R0;
ffa02256:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3e <_NetIPID> */
ffa0225a:	0a e1 70 0c 	P2.L = 0xc70;		/* (3184)	P2=0xff900c70 <_NetOurIP> */
ffa0225e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02260:	10 93       	[P2] = R0;
ffa02262:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c70 <_NetOurIP> */
ffa02266:	0a e1 6c 0c 	P2.L = 0xc6c;		/* (3180)	P2=0xff900c6c <_NetSubnetMask> */
ffa0226a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0226c:	10 93       	[P2] = R0;
ffa0226e:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa02270:	f0 b0       	[SP + 0xc] = R0;
ffa02272:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02276:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa0227a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0227c:	ff e3 a2 ff 	CALL 0xffa021c0 <_FormatIPAddress>;
ffa02280:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c6c <_NetSubnetMask> */
ffa02284:	0a e1 70 0c 	P2.L = 0xc70;		/* (3184)	P2=0xff900c70 <_NetOurIP> */
ffa02288:	10 93       	[P2] = R0;
ffa0228a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0228c:	f0 b0       	[SP + 0xc] = R0;
ffa0228e:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02292:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa02296:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02298:	ff e3 94 ff 	CALL 0xffa021c0 <_FormatIPAddress>;
ffa0229c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c70 <_NetOurIP> */
ffa022a0:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_NetDestIP> */
ffa022a4:	10 93       	[P2] = R0;
ffa022a6:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa022a8:	f0 b0       	[SP + 0xc] = R0;
ffa022aa:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa022ae:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa022b0:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa022b4:	ff e3 86 ff 	CALL 0xffa021c0 <_FormatIPAddress>;
ffa022b8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c34 <_NetDestIP> */
ffa022bc:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa022c0:	10 93       	[P2] = R0;
ffa022c2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c74 <_NetDataDestIP> */
ffa022c6:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_TcpState> */
ffa022ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa022cc:	10 93       	[P2] = R0;
ffa022ce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_TcpState> */
ffa022d2:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa022d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa022d8:	10 93       	[P2] = R0;
ffa022da:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa022de:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xff900d48 <_TcpSeqHost> */
ffa022e2:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0000(165281792) */
ffa022e6:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa022ea:	10 93       	[P2] = R0;
ffa022ec:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d48 <_TcpSeqHost> */
ffa022f0:	0a e1 60 0d 	P2.L = 0xd60;		/* (3424)	P2=0xff900d60 <_TcpClientPort> */
ffa022f4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa022f6:	10 97       	W[P2] = R0;
ffa022f8:	00 e3 ae 0b 	CALL 0xffa03a54 <_ARP_init>;
ffa022fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d60(-4190880) */
ffa02300:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02304:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02306:	10 93       	[P2] = R0;
ffa02308:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0230c:	00 e1 64 0c 	R0.L = 0xc64;		/* (3172)	R0=0xff900c64 <_NetOurMAC>(-7336860) */
ffa02310:	00 e3 e8 00 	CALL 0xffa024e0 <_SetupMacAddr>;
ffa02314:	47 30       	R0 = FP;
ffa02316:	a0 67       	R0 += -0xc;		/* (-12) */
ffa02318:	00 e3 dc 01 	CALL 0xffa026d0 <_SetupSystemRegs>;
ffa0231c:	80 0c       	CC = R0 < 0x0;
ffa0231e:	04 10       	IF !CC JUMP 0xffa02326 <_bfin_EMAC_init+0x10a>;
ffa02320:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02322:	c0 bb       	[FP -0x10] = R0;
ffa02324:	c0 20       	JUMP.S 0xffa024a4 <_bfin_EMAC_init+0x288>;
ffa02326:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02328:	f0 bb       	[FP -0x4] = R0;
ffa0232a:	3b 20       	JUMP.S 0xffa023a0 <_bfin_EMAC_init+0x184>;
ffa0232c:	f7 b9       	R7 = [FP -0x4];
ffa0232e:	f0 b9       	R0 = [FP -0x4];
ffa02330:	00 e3 ac 02 	CALL 0xffa02888 <_SetupRxBuffer>;
ffa02334:	10 30       	R2 = R0;
ffa02336:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900010(-7340016) */
ffa0233a:	01 e1 54 0c 	R1.L = 0xc54;		/* (3156)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa0233e:	82 c6 17 80 	R0 = R7 << 0x2;
ffa02342:	08 50       	R0 = R0 + R1;
ffa02344:	10 32       	P2 = R0;
ffa02346:	12 93       	[P2] = R2;
ffa02348:	f0 b9       	R0 = [FP -0x4];
ffa0234a:	00 0d       	CC = R0 <= 0x0;
ffa0234c:	27 18       	IF CC JUMP 0xffa0239a <_bfin_EMAC_init+0x17e>;
ffa0234e:	f0 b9       	R0 = [FP -0x4];
ffa02350:	f8 67       	R0 += -0x1;		/* ( -1) */
ffa02352:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa02356:	01 e1 54 0c 	R1.L = 0xc54;		/* (3156)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa0235a:	10 4f       	R0 <<= 0x2;
ffa0235c:	08 50       	R0 = R0 + R1;
ffa0235e:	10 32       	P2 = R0;
ffa02360:	51 91       	P1 = [P2];
ffa02362:	f0 b9       	R0 = [FP -0x4];
ffa02364:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa02368:	01 e1 54 0c 	R1.L = 0xc54;		/* (3156)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa0236c:	10 4f       	R0 <<= 0x2;
ffa0236e:	08 50       	R0 = R0 + R1;
ffa02370:	10 32       	P2 = R0;
ffa02372:	10 91       	R0 = [P2];
ffa02374:	c8 b0       	[P1 + 0xc] = R0;
ffa02376:	f0 b9       	R0 = [FP -0x4];
ffa02378:	18 0c       	CC = R0 == 0x3;
ffa0237a:	10 10       	IF !CC JUMP 0xffa0239a <_bfin_EMAC_init+0x17e>;
ffa0237c:	f0 b9       	R0 = [FP -0x4];
ffa0237e:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa02382:	01 e1 54 0c 	R1.L = 0xc54;		/* (3156)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa02386:	10 4f       	R0 <<= 0x2;
ffa02388:	08 50       	R0 = R0 + R1;
ffa0238a:	10 32       	P2 = R0;
ffa0238c:	51 91       	P1 = [P2];
ffa0238e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa02392:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_rxbuf> */
ffa02396:	10 91       	R0 = [P2];
ffa02398:	c8 b0       	[P1 + 0xc] = R0;
ffa0239a:	f0 b9       	R0 = [FP -0x4];
ffa0239c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0239e:	f0 bb       	[FP -0x4] = R0;
ffa023a0:	f0 b9       	R0 = [FP -0x4];
ffa023a2:	18 0d       	CC = R0 <= 0x3;
ffa023a4:	c4 1b       	IF CC JUMP 0xffa0232c <_bfin_EMAC_init+0x110>;
ffa023a6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa023a8:	f0 bb       	[FP -0x4] = R0;
ffa023aa:	3b 20       	JUMP.S 0xffa02420 <_bfin_EMAC_init+0x204>;
ffa023ac:	f7 b9       	R7 = [FP -0x4];
ffa023ae:	f0 b9       	R0 = [FP -0x4];
ffa023b0:	00 e3 30 03 	CALL 0xffa02a10 <_SetupTxBuffer>;
ffa023b4:	10 30       	R2 = R0;
ffa023b6:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa023ba:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa023be:	82 c6 17 80 	R0 = R7 << 0x2;
ffa023c2:	08 50       	R0 = R0 + R1;
ffa023c4:	10 32       	P2 = R0;
ffa023c6:	12 93       	[P2] = R2;
ffa023c8:	f0 b9       	R0 = [FP -0x4];
ffa023ca:	00 0d       	CC = R0 <= 0x0;
ffa023cc:	27 18       	IF CC JUMP 0xffa0241a <_bfin_EMAC_init+0x1fe>;
ffa023ce:	f0 b9       	R0 = [FP -0x4];
ffa023d0:	f8 67       	R0 += -0x1;		/* ( -1) */
ffa023d2:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa023d6:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa023da:	10 4f       	R0 <<= 0x2;
ffa023dc:	08 50       	R0 = R0 + R1;
ffa023de:	10 32       	P2 = R0;
ffa023e0:	51 91       	P1 = [P2];
ffa023e2:	f0 b9       	R0 = [FP -0x4];
ffa023e4:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa023e8:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa023ec:	10 4f       	R0 <<= 0x2;
ffa023ee:	08 50       	R0 = R0 + R1;
ffa023f0:	10 32       	P2 = R0;
ffa023f2:	10 91       	R0 = [P2];
ffa023f4:	c8 b0       	[P1 + 0xc] = R0;
ffa023f6:	f0 b9       	R0 = [FP -0x4];
ffa023f8:	18 0c       	CC = R0 == 0x3;
ffa023fa:	10 10       	IF !CC JUMP 0xffa0241a <_bfin_EMAC_init+0x1fe>;
ffa023fc:	f0 b9       	R0 = [FP -0x4];
ffa023fe:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa02402:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa02406:	10 4f       	R0 <<= 0x2;
ffa02408:	08 50       	R0 = R0 + R1;
ffa0240a:	10 32       	P2 = R0;
ffa0240c:	51 91       	P1 = [P2];
ffa0240e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_rxbuf> */
ffa02412:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_txbuf> */
ffa02416:	10 91       	R0 = [P2];
ffa02418:	c8 b0       	[P1 + 0xc] = R0;
ffa0241a:	f0 b9       	R0 = [FP -0x4];
ffa0241c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0241e:	f0 bb       	[FP -0x4] = R0;
ffa02420:	f0 b9       	R0 = [FP -0x4];
ffa02422:	18 0d       	CC = R0 <= 0x3;
ffa02424:	c4 1b       	IF CC JUMP 0xffa023ac <_bfin_EMAC_init+0x190>;
ffa02426:	00 00       	NOP;
ffa02428:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c68(-4191128) */
ffa0242c:	09 e1 40 0c 	P1.L = 0xc40;		/* (3136)	P1=0xffc00c40(-4191168) */
ffa02430:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_txbuf> */
ffa02434:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_rxbuf> */
ffa02438:	10 91       	R0 = [P2];
ffa0243a:	08 93       	[P1] = R0;
ffa0243c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c40(-4191168) */
ffa02440:	09 e1 48 0c 	P1.L = 0xc48;		/* (3144)	P1=0xffc00c48(-4191160) */
ffa02444:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_rxbuf> */
ffa02448:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_rxbuf> */
ffa0244c:	10 91       	R0 = [P2];
ffa0244e:	40 64       	R0 += 0x8;		/* (  8) */
ffa02450:	10 32       	P2 = R0;
ffa02452:	50 95       	R0 = W[P2] (X);
ffa02454:	08 97       	W[P1] = R0;
ffa02456:	00 e3 bb 00 	CALL 0xffa025cc <_PollMdcDone>;
ffa0245a:	d0 b9       	R0 = [FP -0xc];
ffa0245c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0245e:	d1 4f       	R1 <<= 0x1a;
ffa02460:	08 08       	CC = R0 == R1;
ffa02462:	06 10       	IF !CC JUMP 0xffa0246e <_bfin_EMAC_init+0x252>;
ffa02464:	20 e1 02 08 	R0 = 0x802 (X);		/*		R0=0x802(2050) */
ffa02468:	d0 4a       	BITSET (R0, 0x1a);		/* bit 26 */
ffa0246a:	e0 bb       	[FP -0x8] = R0;
ffa0246c:	04 20       	JUMP.S 0xffa02474 <_bfin_EMAC_init+0x258>;
ffa0246e:	20 e1 02 08 	R0 = 0x802 (X);		/*		R0=0x802(2050) */
ffa02472:	e0 bb       	[FP -0x8] = R0;
ffa02474:	e0 b9       	R0 = [FP -0x8];
ffa02476:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02478:	e0 bb       	[FP -0x8] = R0;
ffa0247a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c54(-4191148) */
ffa0247e:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02482:	e0 b9       	R0 = [FP -0x8];
ffa02484:	10 93       	[P2] = R0;
ffa02486:	e1 b9       	R1 = [FP -0x8];
ffa02488:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900802(-7337982) */
ffa0248c:	00 e1 c8 01 	R0.L = 0x1c8;		/* (456)	R0=0xff9001c8(-7339576) */
ffa02490:	ff e3 b2 f2 	CALL 0xffa009f4 <_printf_hex>;
ffa02494:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001c8(-7339576) */
ffa02498:	00 e1 d4 01 	R0.L = 0x1d4;		/* (468)	R0=0xff9001d4(-7339564) */
ffa0249c:	ff e3 cc f1 	CALL 0xffa00834 <_printf_str>;
ffa024a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024a2:	c0 bb       	[FP -0x10] = R0;
ffa024a4:	c0 b9       	R0 = [FP -0x10];
ffa024a6:	01 e8 00 00 	UNLINK;
ffa024aa:	38 05       	(R7:7) = [SP++];
ffa024ac:	10 00       	RTS;
	...

ffa024b0 <_bfin_EMAC_halt>:
ffa024b0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa024b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa024b8:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa024bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024be:	10 93       	[P2] = R0;
ffa024c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa024c4:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa024c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024ca:	10 97       	W[P2] = R0;
ffa024cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa024d0:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa024d4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024d6:	10 97       	W[P2] = R0;
ffa024d8:	01 e8 00 00 	UNLINK;
ffa024dc:	10 00       	RTS;
	...

ffa024e0 <_SetupMacAddr>:
ffa024e0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa024e4:	b8 b0       	[FP + 0x8] = R0;
ffa024e6:	ba ac       	P2 = [FP + 0x8];
ffa024e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024ea:	10 9b       	B[P2] = R0;
ffa024ec:	b8 a0       	R0 = [FP + 0x8];
ffa024ee:	10 32       	P2 = R0;
ffa024f0:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa024f2:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa024f4:	10 9b       	B[P2] = R0;
ffa024f6:	b8 a0       	R0 = [FP + 0x8];
ffa024f8:	10 32       	P2 = R0;
ffa024fa:	12 6c       	P2 += 0x2;		/* (  2) */
ffa024fc:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa024fe:	10 9b       	B[P2] = R0;
ffa02500:	b8 a0       	R0 = [FP + 0x8];
ffa02502:	10 32       	P2 = R0;
ffa02504:	1a 6c       	P2 += 0x3;		/* (  3) */
ffa02506:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa02508:	10 9b       	B[P2] = R0;
ffa0250a:	b8 a0       	R0 = [FP + 0x8];
ffa0250c:	10 32       	P2 = R0;
ffa0250e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02510:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa02514:	10 9b       	B[P2] = R0;
ffa02516:	b8 a0       	R0 = [FP + 0x8];
ffa02518:	10 32       	P2 = R0;
ffa0251a:	2a 6c       	P2 += 0x5;		/* (  5) */
ffa0251c:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0251e:	10 9b       	B[P2] = R0;
ffa02520:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c48(-4191160) */
ffa02524:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa02528:	ba ac       	P2 = [FP + 0x8];
ffa0252a:	50 99       	R0 = B[P2] (X);
ffa0252c:	41 43       	R1 = R0.B (Z);
ffa0252e:	b8 a0       	R0 = [FP + 0x8];
ffa02530:	10 32       	P2 = R0;
ffa02532:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02534:	50 99       	R0 = B[P2] (X);
ffa02536:	40 43       	R0 = R0.B (Z);
ffa02538:	40 4f       	R0 <<= 0x8;
ffa0253a:	41 56       	R1 = R1 | R0;
ffa0253c:	b8 a0       	R0 = [FP + 0x8];
ffa0253e:	10 32       	P2 = R0;
ffa02540:	12 6c       	P2 += 0x2;		/* (  2) */
ffa02542:	50 99       	R0 = B[P2] (X);
ffa02544:	40 43       	R0 = R0.B (Z);
ffa02546:	80 4f       	R0 <<= 0x10;
ffa02548:	41 56       	R1 = R1 | R0;
ffa0254a:	b8 a0       	R0 = [FP + 0x8];
ffa0254c:	10 32       	P2 = R0;
ffa0254e:	1a 6c       	P2 += 0x3;		/* (  3) */
ffa02550:	50 99       	R0 = B[P2] (X);
ffa02552:	40 43       	R0 = R0.B (Z);
ffa02554:	c0 4f       	R0 <<= 0x18;
ffa02556:	01 56       	R0 = R1 | R0;
ffa02558:	08 93       	[P1] = R0;
ffa0255a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03004(-4182012) */
ffa0255e:	09 e1 08 30 	P1.L = 0x3008;		/* (12296)	P1=0xffc03008(-4182008) */
ffa02562:	b8 a0       	R0 = [FP + 0x8];
ffa02564:	10 32       	P2 = R0;
ffa02566:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02568:	50 99       	R0 = B[P2] (X);
ffa0256a:	41 43       	R1 = R0.B (Z);
ffa0256c:	b8 a0       	R0 = [FP + 0x8];
ffa0256e:	10 32       	P2 = R0;
ffa02570:	2a 6c       	P2 += 0x5;		/* (  5) */
ffa02572:	50 99       	R0 = B[P2] (X);
ffa02574:	40 43       	R0 = R0.B (Z);
ffa02576:	40 4f       	R0 <<= 0x8;
ffa02578:	01 56       	R0 = R1 | R0;
ffa0257a:	08 93       	[P1] = R0;
ffa0257c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa02580:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa02584:	10 91       	R0 = [P2];
ffa02586:	08 30       	R1 = R0;
ffa02588:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa0258c:	00 e1 d8 01 	R0.L = 0x1d8;		/* (472)	R0=0xff9001d8(-7339560) */
ffa02590:	ff e3 32 f2 	CALL 0xffa009f4 <_printf_hex>;
ffa02594:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001d8(-7339560) */
ffa02598:	00 e1 d4 01 	R0.L = 0x1d4;		/* (468)	R0=0xff9001d4(-7339564) */
ffa0259c:	ff e3 4c f1 	CALL 0xffa00834 <_printf_str>;
ffa025a0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03004(-4182012) */
ffa025a4:	0a e1 08 30 	P2.L = 0x3008;		/* (12296)	P2=0xffc03008(-4182008) */
ffa025a8:	10 91       	R0 = [P2];
ffa025aa:	08 30       	R1 = R0;
ffa025ac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001d4(-7339564) */
ffa025b0:	00 e1 e4 01 	R0.L = 0x1e4;		/* (484)	R0=0xff9001e4(-7339548) */
ffa025b4:	ff e3 20 f2 	CALL 0xffa009f4 <_printf_hex>;
ffa025b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001e4(-7339548) */
ffa025bc:	00 e1 d4 01 	R0.L = 0x1d4;		/* (468)	R0=0xff9001d4(-7339564) */
ffa025c0:	ff e3 3a f1 	CALL 0xffa00834 <_printf_str>;
ffa025c4:	01 e8 00 00 	UNLINK;
ffa025c8:	10 00       	RTS;
	...

ffa025cc <_PollMdcDone>:
ffa025cc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa025d0:	02 20       	JUMP.S 0xffa025d4 <_PollMdcDone+0x8>;
ffa025d2:	00 00       	NOP;
ffa025d4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03008(-4182008) */
ffa025d8:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa025dc:	10 91       	R0 = [P2];
ffa025de:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa025e0:	00 02       	R0 = CC;
ffa025e2:	40 43       	R0 = R0.B (Z);
ffa025e4:	00 0c       	CC = R0 == 0x0;
ffa025e6:	f6 13       	IF !CC JUMP 0xffa025d2 <_PollMdcDone+0x6>;
ffa025e8:	01 e8 00 00 	UNLINK;
ffa025ec:	10 00       	RTS;
	...

ffa025f0 <_WrPHYReg>:
ffa025f0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa025f4:	38 b5       	W[FP + 0x8] = R0;
ffa025f6:	01 30       	R0 = R1;
ffa025f8:	b8 b5       	W[FP + 0xc] = R0;
ffa025fa:	02 30       	R0 = R2;
ffa025fc:	38 b6       	W[FP + 0x10] = R0;
ffa025fe:	ff e3 e7 ff 	CALL 0xffa025cc <_PollMdcDone>;
ffa02602:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa02606:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa0260a:	38 a6       	R0 = W[FP + 0x10] (Z);
ffa0260c:	10 93       	[P2] = R0;
ffa0260e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa02612:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa02616:	39 a5       	R1 = W[FP + 0x8] (Z);
ffa02618:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa0261a:	01 54       	R0 = R1 & R0;
ffa0261c:	82 c6 58 84 	R2 = R0 << 0xb;
ffa02620:	b9 a5       	R1 = W[FP + 0xc] (Z);
ffa02622:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa02624:	01 54       	R0 = R1 & R0;
ffa02626:	30 4f       	R0 <<= 0x6;
ffa02628:	42 56       	R1 = R2 | R0;
ffa0262a:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0262c:	01 56       	R0 = R1 | R0;
ffa0262e:	10 93       	[P2] = R0;
ffa02630:	01 e8 00 00 	UNLINK;
ffa02634:	10 00       	RTS;
	...

ffa02638 <_RdPHYReg>:
ffa02638:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0263c:	38 b5       	W[FP + 0x8] = R0;
ffa0263e:	01 30       	R0 = R1;
ffa02640:	b8 b5       	W[FP + 0xc] = R0;
ffa02642:	ff e3 c5 ff 	CALL 0xffa025cc <_PollMdcDone>;
ffa02646:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0264a:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa0264e:	39 a5       	R1 = W[FP + 0x8] (Z);
ffa02650:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa02652:	01 54       	R0 = R1 & R0;
ffa02654:	82 c6 58 84 	R2 = R0 << 0xb;
ffa02658:	b9 a5       	R1 = W[FP + 0xc] (Z);
ffa0265a:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa0265c:	01 54       	R0 = R1 & R0;
ffa0265e:	30 4f       	R0 <<= 0x6;
ffa02660:	02 56       	R0 = R2 | R0;
ffa02662:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02664:	10 93       	[P2] = R0;
ffa02666:	ff e3 b3 ff 	CALL 0xffa025cc <_PollMdcDone>;
ffa0266a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0266e:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa02672:	10 91       	R0 = [P2];
ffa02674:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa02678:	b8 a5       	R0 = W[FP + 0xc] (Z);
ffa0267a:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900001(-7340031) */
ffa0267e:	01 e1 f4 0b 	R1.L = 0xbf4;		/* (3060)	R1=0xff900bf4 <_PHYregs>(-7336972) */
ffa02682:	08 4f       	R0 <<= 0x1;
ffa02684:	08 50       	R0 = R0 + R1;
ffa02686:	10 32       	P2 = R0;
ffa02688:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0268c:	10 97       	W[P2] = R0;
ffa0268e:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa02692:	01 e8 00 00 	UNLINK;
ffa02696:	10 00       	RTS;

ffa02698 <_SoftResetPHY>:
ffa02698:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0269c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0269e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa026a0:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa026a4:	ff e3 a6 ff 	CALL 0xffa025f0 <_WrPHYReg>;
ffa026a8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026aa:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa026ac:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa026ae:	ff e3 a1 ff 	CALL 0xffa025f0 <_WrPHYReg>;
ffa026b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026b4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa026b6:	ff e3 c1 ff 	CALL 0xffa02638 <_RdPHYReg>;
ffa026ba:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa026be:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa026c2:	80 42       	R0 = R0.L (X);
ffa026c4:	80 0c       	CC = R0 < 0x0;
ffa026c6:	f6 1b       	IF CC JUMP 0xffa026b2 <_SoftResetPHY+0x1a>;
ffa026c8:	01 e8 00 00 	UNLINK;
ffa026cc:	10 00       	RTS;
	...

ffa026d0 <_SetupSystemRegs>:
ffa026d0:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa026d4:	b8 b0       	[FP + 0x8] = R0;
ffa026d6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa026da:	00 e1 f0 01 	R0.L = 0x1f0;		/* (496)	R0=0xff9001f0(-7339536) */
ffa026de:	ff e3 ab f0 	CALL 0xffa00834 <_printf_str>;
ffa026e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026e4:	f0 bb       	[FP -0x4] = R0;
ffa026e6:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03008(-4182008) */
ffa026ea:	09 e1 14 32 	P1.L = 0x3214;		/* (12820)	P1=0xffc03214(-4181484) */
ffa026ee:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa026f2:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa026f6:	51 95       	R1 = W[P2] (X);
ffa026f8:	20 e1 ff cf 	R0 = -0x3001 (X);		/*		R0=0xffffcfff(-12289) */
ffa026fc:	01 54       	R0 = R1 & R0;
ffa026fe:	08 97       	W[P1] = R0;
ffa02700:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03214(-4181484) */
ffa02704:	09 e1 14 32 	P1.L = 0x3214;		/* (12820)	P1=0xffc03214(-4181484) */
ffa02708:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa0270c:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa02710:	50 95       	R0 = W[P2] (X);
ffa02712:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa02714:	08 97       	W[P1] = R0;
ffa02716:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03214(-4181484) */
ffa0271a:	09 e1 04 32 	P1.L = 0x3204;		/* (12804)	P1=0xffc03204(-4181500) */
ffa0271e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa02722:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa02726:	51 95       	R1 = W[P2] (X);
ffa02728:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa0272c:	01 56       	R0 = R1 | R0;
ffa0272e:	08 97       	W[P1] = R0;
ffa02730:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa02734:	0a e1 08 32 	P2.L = 0x3208;		/* (12808)	P2=0xffc03208(-4181496) */
ffa02738:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0273a:	10 97       	W[P2] = R0;
ffa0273c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03208(-4181496) */
ffa02740:	0a e1 18 32 	P2.L = 0x3218;		/* (12824)	P2=0xffc03218(-4181480) */
ffa02744:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa02746:	10 97       	W[P2] = R0;
ffa02748:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03204(-4181500) */
ffa0274c:	09 e1 08 00 	P1.L = 0x8;		/* (  8)	P1=0xffc00008(-4194296) */
ffa02750:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03218(-4181480) */
ffa02754:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa02758:	50 95       	R0 = W[P2] (X);
ffa0275a:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa0275c:	08 97       	W[P1] = R0;
ffa0275e:	20 e1 00 18 	R0 = 0x1800 (X);		/*		R0=0x1800(6144) */
ffa02762:	78 e6 fa ff 	W[FP + -0xc] = R0;
ffa02766:	79 e5 fa ff 	R1 = W[FP + -0xc] (X);
ffa0276a:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0276c:	01 56       	R0 = R1 | R0;
ffa0276e:	78 e6 fa ff 	W[FP + -0xc] = R0;
ffa02772:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa02776:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa0277a:	78 e4 fa ff 	R0 = W[FP + -0xc] (Z);
ffa0277e:	10 93       	[P2] = R0;
ffa02780:	20 e1 00 31 	R0 = 0x3100 (X);		/*		R0=0x3100(12544) */
ffa02784:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa02788:	7a e4 fc ff 	R2 = W[FP + -0x8] (Z);
ffa0278c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0278e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02790:	ff e3 30 ff 	CALL 0xffa025f0 <_WrPHYReg>;
ffa02794:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02798:	ff e3 be f5 	CALL 0xffa01314 <_udelay>;
ffa0279c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0279e:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa027a0:	ff e3 4c ff 	CALL 0xffa02638 <_RdPHYReg>;
ffa027a4:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa027a8:	f0 b9       	R0 = [FP -0x4];
ffa027aa:	21 e1 b8 0b 	R1 = 0xbb8 (X);		/*		R1=0xbb8(3000) */
ffa027ae:	08 09       	CC = R0 <= R1;
ffa027b0:	0a 18       	IF CC JUMP 0xffa027c4 <_SetupSystemRegs+0xf4>;
ffa027b2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa027b6:	00 e1 08 02 	R0.L = 0x208;		/* (520)	R0=0xff900208(-7339512) */
ffa027ba:	ff e3 3d f0 	CALL 0xffa00834 <_printf_str>;
ffa027be:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa027c0:	c0 bb       	[FP -0x10] = R0;
ffa027c2:	5e 20       	JUMP.S 0xffa0287e <_SetupSystemRegs+0x1ae>;
ffa027c4:	f0 b9       	R0 = [FP -0x4];
ffa027c6:	08 64       	R0 += 0x1;		/* (  1) */
ffa027c8:	f0 bb       	[FP -0x4] = R0;
ffa027ca:	79 e4 fc ff 	R1 = W[FP + -0x8] (Z);
ffa027ce:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa027d0:	01 54       	R0 = R1 & R0;
ffa027d2:	00 0c       	CC = R0 == 0x0;
ffa027d4:	e0 1b       	IF CC JUMP 0xffa02794 <_SetupSystemRegs+0xc4>;
ffa027d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027d8:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa027da:	ff e3 2f ff 	CALL 0xffa02638 <_RdPHYReg>;
ffa027de:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa027e2:	79 e4 fc ff 	R1 = W[FP + -0x8] (Z);
ffa027e6:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa027ea:	01 54       	R0 = R1 & R0;
ffa027ec:	00 0c       	CC = R0 == 0x0;
ffa027ee:	08 10       	IF !CC JUMP 0xffa027fe <_SetupSystemRegs+0x12e>;
ffa027f0:	78 e4 fc ff 	R0 = W[FP + -0x8] (Z);
ffa027f4:	21 e1 40 00 	R1 = 0x40 (X);		/*		R1=0x40( 64) */
ffa027f8:	08 54       	R0 = R0 & R1;
ffa027fa:	00 0c       	CC = R0 == 0x0;
ffa027fc:	06 18       	IF CC JUMP 0xffa02808 <_SetupSystemRegs+0x138>;
ffa027fe:	ba ac       	P2 = [FP + 0x8];
ffa02800:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02802:	d0 4f       	R0 <<= 0x1a;
ffa02804:	10 93       	[P2] = R0;
ffa02806:	04 20       	JUMP.S 0xffa0280e <_SetupSystemRegs+0x13e>;
ffa02808:	ba ac       	P2 = [FP + 0x8];
ffa0280a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0280c:	10 93       	[P2] = R0;
ffa0280e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa02812:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa02816:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02818:	10 93       	[P2] = R0;
ffa0281a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa0281e:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa02822:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02824:	10 97       	W[P2] = R0;
ffa02826:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa0282a:	0a e1 94 0c 	P2.L = 0xc94;		/* (3220)	P2=0xffc00c94(-4191084) */
ffa0282e:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02830:	10 97       	W[P2] = R0;
ffa02832:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c94(-4191084) */
ffa02836:	0a e1 98 0c 	P2.L = 0xc98;		/* (3224)	P2=0xffc00c98(-4191080) */
ffa0283a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0283c:	10 97       	W[P2] = R0;
ffa0283e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c98(-4191080) */
ffa02842:	0a e1 9c 0c 	P2.L = 0xc9c;		/* (3228)	P2=0xffc00c9c(-4191076) */
ffa02846:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02848:	10 97       	W[P2] = R0;
ffa0284a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c9c(-4191076) */
ffa0284e:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa02852:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02854:	10 97       	W[P2] = R0;
ffa02856:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c50(-4191152) */
ffa0285a:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xffc00c54(-4191148) */
ffa0285e:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02860:	10 97       	W[P2] = R0;
ffa02862:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c54(-4191148) */
ffa02866:	0a e1 58 0c 	P2.L = 0xc58;		/* (3160)	P2=0xffc00c58(-4191144) */
ffa0286a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0286c:	10 97       	W[P2] = R0;
ffa0286e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c58(-4191144) */
ffa02872:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xffc00c5c(-4191140) */
ffa02876:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02878:	10 97       	W[P2] = R0;
ffa0287a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0287c:	c1 bb       	[FP -0x10] = R1;
ffa0287e:	c0 b9       	R0 = [FP -0x10];
ffa02880:	01 e8 00 00 	UNLINK;
ffa02884:	10 00       	RTS;
	...

ffa02888 <_SetupRxBuffer>:
ffa02888:	00 e8 0d 00 	LINK 0x34;		/* (52) */
ffa0288c:	b8 b0       	[FP + 0x8] = R0;
ffa0288e:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa02890:	e0 bb       	[FP -0x8] = R0;
ffa02892:	e1 b9       	R1 = [FP -0x8];
ffa02894:	20 e1 10 06 	R0 = 0x610 (X);		/*		R0=0x610(1552) */
ffa02898:	01 50       	R0 = R1 + R0;
ffa0289a:	f0 bb       	[FP -0x4] = R0;
ffa0289c:	b9 a0       	R1 = [FP + 0x8];
ffa0289e:	f0 b9       	R0 = [FP -0x4];
ffa028a0:	c8 40       	R0 *= R1;
ffa028a2:	08 30       	R1 = R0;
ffa028a4:	20 e1 01 f8 	R0 = -0x7ff (X);		/*		R0=0xfffff801(-2047) */
ffa028a8:	60 4f       	R0 <<= 0xc;
ffa028aa:	01 50       	R0 = R1 + R0;
ffa028ac:	d0 bb       	[FP -0xc] = R0;
ffa028ae:	b9 a0       	R1 = [FP + 0x8];
ffa028b0:	f0 b9       	R0 = [FP -0x4];
ffa028b2:	c8 40       	R0 *= R1;
ffa028b4:	08 30       	R1 = R0;
ffa028b6:	e0 b9       	R0 = [FP -0x8];
ffa028b8:	41 50       	R1 = R1 + R0;
ffa028ba:	20 e1 01 f8 	R0 = -0x7ff (X);		/*		R0=0xfffff801(-2047) */
ffa028be:	60 4f       	R0 <<= 0xc;
ffa028c0:	01 50       	R0 = R1 + R0;
ffa028c2:	c0 bb       	[FP -0x10] = R0;
ffa028c4:	d0 b9       	R0 = [FP -0xc];
ffa028c6:	e2 b9       	R2 = [FP -0x8];
ffa028c8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa028ca:	ff e3 63 f2 	CALL 0xffa00d90 <_memset_>;
ffa028ce:	da b9       	P2 = [FP -0xc];
ffa028d0:	c0 b9       	R0 = [FP -0x10];
ffa028d2:	90 b1       	[P2 + 0x18] = R0;
ffa028d4:	c0 b9       	R0 = [FP -0x10];
ffa028d6:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa028da:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa028de:	ff e3 59 f2 	CALL 0xffa00d90 <_memset_>;
ffa028e2:	d0 b9       	R0 = [FP -0xc];
ffa028e4:	60 64       	R0 += 0xc;		/* ( 12) */
ffa028e6:	da b9       	P2 = [FP -0xc];
ffa028e8:	10 93       	[P2] = R0;
ffa028ea:	da b9       	P2 = [FP -0xc];
ffa028ec:	90 a1       	R0 = [P2 + 0x18];
ffa028ee:	da b9       	P2 = [FP -0xc];
ffa028f0:	50 b0       	[P2 + 0x4] = R0;
ffa028f2:	da b9       	P2 = [FP -0xc];
ffa028f4:	90 e5 08 00 	R0 = B[P2 + 0x8] (X);
ffa028f8:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa028fa:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa028fe:	da b9       	P2 = [FP -0xc];
ffa02900:	90 e5 08 00 	R0 = B[P2 + 0x8] (X);
ffa02904:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02906:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa0290a:	da b9       	P2 = [FP -0xc];
ffa0290c:	90 e5 08 00 	R0 = B[P2 + 0x8] (X);
ffa02910:	b8 e6 ec ff 	B[FP + -0x14] = R0;
ffa02914:	98 63       	R0 = -0xd (X);		/*		R0=0xfffffff3(-13) */
ffa02916:	b9 e5 ec ff 	R1 = B[FP + -0x14] (X);
ffa0291a:	01 54       	R0 = R1 & R0;
ffa0291c:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa0291e:	b8 e6 ec ff 	B[FP + -0x14] = R0;
ffa02922:	b8 e5 ec ff 	R0 = B[FP + -0x14] (X);
ffa02926:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa0292a:	da b9       	P2 = [FP -0xc];
ffa0292c:	91 e5 09 00 	R1 = B[P2 + 0x9] (X);
ffa02930:	b9 e6 e8 ff 	B[FP + -0x18] = R1;
ffa02934:	80 63       	R0 = -0x10 (X);		/*		R0=0xfffffff0(-16) */
ffa02936:	b9 e5 e8 ff 	R1 = B[FP + -0x18] (X);
ffa0293a:	01 54       	R0 = R1 & R0;
ffa0293c:	08 30       	R1 = R0;
ffa0293e:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa02940:	01 56       	R0 = R1 | R0;
ffa02942:	b8 e6 e8 ff 	B[FP + -0x18] = R0;
ffa02946:	b8 e5 e8 ff 	R0 = B[FP + -0x18] (X);
ffa0294a:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa0294e:	da b9       	P2 = [FP -0xc];
ffa02950:	91 e5 09 00 	R1 = B[P2 + 0x9] (X);
ffa02954:	b9 e6 e4 ff 	B[FP + -0x1c] = R1;
ffa02958:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa0295c:	b9 e5 e4 ff 	R1 = B[FP + -0x1c] (X);
ffa02960:	01 56       	R0 = R1 | R0;
ffa02962:	b8 e6 e4 ff 	B[FP + -0x1c] = R0;
ffa02966:	b8 e5 e4 ff 	R0 = B[FP + -0x1c] (X);
ffa0296a:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa0296e:	d0 b9       	R0 = [FP -0xc];
ffa02970:	da b9       	P2 = [FP -0xc];
ffa02972:	d0 b0       	[P2 + 0xc] = R0;
ffa02974:	d0 b9       	R0 = [FP -0xc];
ffa02976:	20 65       	R0 += 0x24;		/* ( 36) */
ffa02978:	da b9       	P2 = [FP -0xc];
ffa0297a:	10 b1       	[P2 + 0x10] = R0;
ffa0297c:	da b9       	P2 = [FP -0xc];
ffa0297e:	90 e5 14 00 	R0 = B[P2 + 0x14] (X);
ffa02982:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02984:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa02988:	da b9       	P2 = [FP -0xc];
ffa0298a:	90 e5 14 00 	R0 = B[P2 + 0x14] (X);
ffa0298e:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02990:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa02994:	da b9       	P2 = [FP -0xc];
ffa02996:	91 e5 14 00 	R1 = B[P2 + 0x14] (X);
ffa0299a:	b9 e6 e0 ff 	B[FP + -0x20] = R1;
ffa0299e:	98 63       	R0 = -0xd (X);		/*		R0=0xfffffff3(-13) */
ffa029a0:	b9 e5 e0 ff 	R1 = B[FP + -0x20] (X);
ffa029a4:	01 54       	R0 = R1 & R0;
ffa029a6:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa029a8:	b8 e6 e0 ff 	B[FP + -0x20] = R0;
ffa029ac:	b8 e5 e0 ff 	R0 = B[FP + -0x20] (X);
ffa029b0:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa029b4:	da b9       	P2 = [FP -0xc];
ffa029b6:	91 e5 14 00 	R1 = B[P2 + 0x14] (X);
ffa029ba:	20 e1 80 ff 	R0 = -0x80 (X);		/*		R0=0xffffff80(-128) */
ffa029be:	01 56       	R0 = R1 | R0;
ffa029c0:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa029c4:	da b9       	P2 = [FP -0xc];
ffa029c6:	91 e5 15 00 	R1 = B[P2 + 0x15] (X);
ffa029ca:	b9 e6 dc ff 	B[FP + -0x24] = R1;
ffa029ce:	80 63       	R0 = -0x10 (X);		/*		R0=0xfffffff0(-16) */
ffa029d0:	b9 e5 dc ff 	R1 = B[FP + -0x24] (X);
ffa029d4:	01 54       	R0 = R1 & R0;
ffa029d6:	08 30       	R1 = R0;
ffa029d8:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa029da:	01 56       	R0 = R1 | R0;
ffa029dc:	b8 e6 dc ff 	B[FP + -0x24] = R0;
ffa029e0:	b8 e5 dc ff 	R0 = B[FP + -0x24] (X);
ffa029e4:	90 e6 15 00 	B[P2 + 0x15] = R0;
ffa029e8:	da b9       	P2 = [FP -0xc];
ffa029ea:	91 e5 15 00 	R1 = B[P2 + 0x15] (X);
ffa029ee:	b9 e6 d8 ff 	B[FP + -0x28] = R1;
ffa029f2:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa029f6:	b9 e5 d8 ff 	R1 = B[FP + -0x28] (X);
ffa029fa:	01 56       	R0 = R1 | R0;
ffa029fc:	b8 e6 d8 ff 	B[FP + -0x28] = R0;
ffa02a00:	b8 e5 d8 ff 	R0 = B[FP + -0x28] (X);
ffa02a04:	90 e6 15 00 	B[P2 + 0x15] = R0;
ffa02a08:	d0 b9       	R0 = [FP -0xc];
ffa02a0a:	01 e8 00 00 	UNLINK;
ffa02a0e:	10 00       	RTS;

ffa02a10 <_SetupTxBuffer>:
ffa02a10:	00 e8 0d 00 	LINK 0x34;		/* (52) */
ffa02a14:	b8 b0       	[FP + 0x8] = R0;
ffa02a16:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa02a18:	e0 bb       	[FP -0x8] = R0;
ffa02a1a:	e1 b9       	R1 = [FP -0x8];
ffa02a1c:	20 e1 10 06 	R0 = 0x610 (X);		/*		R0=0x610(1552) */
ffa02a20:	01 50       	R0 = R1 + R0;
ffa02a22:	f0 bb       	[FP -0x4] = R0;
ffa02a24:	b9 a0       	R1 = [FP + 0x8];
ffa02a26:	f0 b9       	R0 = [FP -0x4];
ffa02a28:	c8 40       	R0 *= R1;
ffa02a2a:	08 30       	R1 = R0;
ffa02a2c:	20 e1 03 f8 	R0 = -0x7fd (X);		/*		R0=0xfffff803(-2045) */
ffa02a30:	60 4f       	R0 <<= 0xc;
ffa02a32:	01 50       	R0 = R1 + R0;
ffa02a34:	d0 bb       	[FP -0xc] = R0;
ffa02a36:	b9 a0       	R1 = [FP + 0x8];
ffa02a38:	f0 b9       	R0 = [FP -0x4];
ffa02a3a:	c8 40       	R0 *= R1;
ffa02a3c:	08 30       	R1 = R0;
ffa02a3e:	e0 b9       	R0 = [FP -0x8];
ffa02a40:	41 50       	R1 = R1 + R0;
ffa02a42:	20 e1 03 f8 	R0 = -0x7fd (X);		/*		R0=0xfffff803(-2045) */
ffa02a46:	60 4f       	R0 <<= 0xc;
ffa02a48:	01 50       	R0 = R1 + R0;
ffa02a4a:	c0 bb       	[FP -0x10] = R0;
ffa02a4c:	d0 b9       	R0 = [FP -0xc];
ffa02a4e:	e2 b9       	R2 = [FP -0x8];
ffa02a50:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02a52:	ff e3 9f f1 	CALL 0xffa00d90 <_memset_>;
ffa02a56:	da b9       	P2 = [FP -0xc];
ffa02a58:	c0 b9       	R0 = [FP -0x10];
ffa02a5a:	90 b1       	[P2 + 0x18] = R0;
ffa02a5c:	c0 b9       	R0 = [FP -0x10];
ffa02a5e:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa02a62:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02a66:	ff e3 95 f1 	CALL 0xffa00d90 <_memset_>;
ffa02a6a:	d0 b9       	R0 = [FP -0xc];
ffa02a6c:	60 64       	R0 += 0xc;		/* ( 12) */
ffa02a6e:	da b9       	P2 = [FP -0xc];
ffa02a70:	10 93       	[P2] = R0;
ffa02a72:	da b9       	P2 = [FP -0xc];
ffa02a74:	90 a1       	R0 = [P2 + 0x18];
ffa02a76:	da b9       	P2 = [FP -0xc];
ffa02a78:	50 b0       	[P2 + 0x4] = R0;
ffa02a7a:	da b9       	P2 = [FP -0xc];
ffa02a7c:	90 e5 08 00 	R0 = B[P2 + 0x8] (X);
ffa02a80:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02a82:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02a86:	da b9       	P2 = [FP -0xc];
ffa02a88:	90 e5 08 00 	R0 = B[P2 + 0x8] (X);
ffa02a8c:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa02a8e:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02a92:	da b9       	P2 = [FP -0xc];
ffa02a94:	90 e5 08 00 	R0 = B[P2 + 0x8] (X);
ffa02a98:	b8 e6 ec ff 	B[FP + -0x14] = R0;
ffa02a9c:	98 63       	R0 = -0xd (X);		/*		R0=0xfffffff3(-13) */
ffa02a9e:	b9 e5 ec ff 	R1 = B[FP + -0x14] (X);
ffa02aa2:	01 54       	R0 = R1 & R0;
ffa02aa4:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02aa6:	b8 e6 ec ff 	B[FP + -0x14] = R0;
ffa02aaa:	b8 e5 ec ff 	R0 = B[FP + -0x14] (X);
ffa02aae:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02ab2:	da b9       	P2 = [FP -0xc];
ffa02ab4:	91 e5 09 00 	R1 = B[P2 + 0x9] (X);
ffa02ab8:	b9 e6 e8 ff 	B[FP + -0x18] = R1;
ffa02abc:	80 63       	R0 = -0x10 (X);		/*		R0=0xfffffff0(-16) */
ffa02abe:	b9 e5 e8 ff 	R1 = B[FP + -0x18] (X);
ffa02ac2:	01 54       	R0 = R1 & R0;
ffa02ac4:	08 30       	R1 = R0;
ffa02ac6:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa02ac8:	01 56       	R0 = R1 | R0;
ffa02aca:	b8 e6 e8 ff 	B[FP + -0x18] = R0;
ffa02ace:	b8 e5 e8 ff 	R0 = B[FP + -0x18] (X);
ffa02ad2:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02ad6:	da b9       	P2 = [FP -0xc];
ffa02ad8:	91 e5 09 00 	R1 = B[P2 + 0x9] (X);
ffa02adc:	b9 e6 e4 ff 	B[FP + -0x1c] = R1;
ffa02ae0:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa02ae4:	b9 e5 e4 ff 	R1 = B[FP + -0x1c] (X);
ffa02ae8:	01 56       	R0 = R1 | R0;
ffa02aea:	b8 e6 e4 ff 	B[FP + -0x1c] = R0;
ffa02aee:	b8 e5 e4 ff 	R0 = B[FP + -0x1c] (X);
ffa02af2:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02af6:	d0 b9       	R0 = [FP -0xc];
ffa02af8:	da b9       	P2 = [FP -0xc];
ffa02afa:	d0 b0       	[P2 + 0xc] = R0;
ffa02afc:	d0 b9       	R0 = [FP -0xc];
ffa02afe:	40 65       	R0 += 0x28;		/* ( 40) */
ffa02b00:	da b9       	P2 = [FP -0xc];
ffa02b02:	10 b1       	[P2 + 0x10] = R0;
ffa02b04:	da b9       	P2 = [FP -0xc];
ffa02b06:	90 e5 14 00 	R0 = B[P2 + 0x14] (X);
ffa02b0a:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02b0c:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa02b10:	da b9       	P2 = [FP -0xc];
ffa02b12:	90 e5 14 00 	R0 = B[P2 + 0x14] (X);
ffa02b16:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02b18:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa02b1c:	da b9       	P2 = [FP -0xc];
ffa02b1e:	91 e5 14 00 	R1 = B[P2 + 0x14] (X);
ffa02b22:	b9 e6 e0 ff 	B[FP + -0x20] = R1;
ffa02b26:	98 63       	R0 = -0xd (X);		/*		R0=0xfffffff3(-13) */
ffa02b28:	b9 e5 e0 ff 	R1 = B[FP + -0x20] (X);
ffa02b2c:	01 54       	R0 = R1 & R0;
ffa02b2e:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02b30:	b8 e6 e0 ff 	B[FP + -0x20] = R0;
ffa02b34:	b8 e5 e0 ff 	R0 = B[FP + -0x20] (X);
ffa02b38:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa02b3c:	da b9       	P2 = [FP -0xc];
ffa02b3e:	91 e5 14 00 	R1 = B[P2 + 0x14] (X);
ffa02b42:	20 e1 80 ff 	R0 = -0x80 (X);		/*		R0=0xffffff80(-128) */
ffa02b46:	01 56       	R0 = R1 | R0;
ffa02b48:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa02b4c:	da b9       	P2 = [FP -0xc];
ffa02b4e:	91 e5 15 00 	R1 = B[P2 + 0x15] (X);
ffa02b52:	b9 e6 dc ff 	B[FP + -0x24] = R1;
ffa02b56:	80 63       	R0 = -0x10 (X);		/*		R0=0xfffffff0(-16) */
ffa02b58:	b9 e5 dc ff 	R1 = B[FP + -0x24] (X);
ffa02b5c:	01 54       	R0 = R1 & R0;
ffa02b5e:	b8 e6 dc ff 	B[FP + -0x24] = R0;
ffa02b62:	b8 e5 dc ff 	R0 = B[FP + -0x24] (X);
ffa02b66:	90 e6 15 00 	B[P2 + 0x15] = R0;
ffa02b6a:	da b9       	P2 = [FP -0xc];
ffa02b6c:	91 e5 15 00 	R1 = B[P2 + 0x15] (X);
ffa02b70:	b9 e6 d8 ff 	B[FP + -0x28] = R1;
ffa02b74:	20 e1 8f ff 	R0 = -0x71 (X);		/*		R0=0xffffff8f(-113) */
ffa02b78:	b9 e5 d8 ff 	R1 = B[FP + -0x28] (X);
ffa02b7c:	01 54       	R0 = R1 & R0;
ffa02b7e:	b8 e6 d8 ff 	B[FP + -0x28] = R0;
ffa02b82:	b8 e5 d8 ff 	R0 = B[FP + -0x28] (X);
ffa02b86:	90 e6 15 00 	B[P2 + 0x15] = R0;
ffa02b8a:	d0 b9       	R0 = [FP -0xc];
ffa02b8c:	01 e8 00 00 	UNLINK;
ffa02b90:	10 00       	RTS;
	...

ffa02b94 <_NetCksum>:
ffa02b94:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa02b98:	b8 b0       	[FP + 0x8] = R0;
ffa02b9a:	f9 b0       	[FP + 0xc] = R1;
ffa02b9c:	b8 a0       	R0 = [FP + 0x8];
ffa02b9e:	f0 bb       	[FP -0x4] = R0;
ffa02ba0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02ba2:	e0 bb       	[FP -0x8] = R0;
ffa02ba4:	0a 20       	JUMP.S 0xffa02bb8 <_NetCksum+0x24>;
ffa02ba6:	fa b9       	P2 = [FP -0x4];
ffa02ba8:	50 95       	R0 = W[P2] (X);
ffa02baa:	c1 42       	R1 = R0.L (Z);
ffa02bac:	e0 b9       	R0 = [FP -0x8];
ffa02bae:	08 50       	R0 = R0 + R1;
ffa02bb0:	e0 bb       	[FP -0x8] = R0;
ffa02bb2:	f0 b9       	R0 = [FP -0x4];
ffa02bb4:	10 64       	R0 += 0x2;		/* (  2) */
ffa02bb6:	f0 bb       	[FP -0x4] = R0;
ffa02bb8:	f8 a0       	R0 = [FP + 0xc];
ffa02bba:	00 0d       	CC = R0 <= 0x0;
ffa02bbc:	18 02       	CC = !CC;
ffa02bbe:	00 02       	R0 = CC;
ffa02bc0:	08 30       	R1 = R0;
ffa02bc2:	f8 a0       	R0 = [FP + 0xc];
ffa02bc4:	f8 67       	R0 += -0x1;		/* ( -1) */
ffa02bc6:	f8 b0       	[FP + 0xc] = R0;
ffa02bc8:	48 43       	R0 = R1.B (Z);
ffa02bca:	00 0c       	CC = R0 == 0x0;
ffa02bcc:	ed 13       	IF !CC JUMP 0xffa02ba6 <_NetCksum+0x12>;
ffa02bce:	e0 b9       	R0 = [FP -0x8];
ffa02bd0:	c1 42       	R1 = R0.L (Z);
ffa02bd2:	e0 b9       	R0 = [FP -0x8];
ffa02bd4:	80 4e       	R0 >>= 0x10;
ffa02bd6:	01 50       	R0 = R1 + R0;
ffa02bd8:	e0 bb       	[FP -0x8] = R0;
ffa02bda:	e0 b9       	R0 = [FP -0x8];
ffa02bdc:	c0 42       	R0 = R0.L (Z);
ffa02bde:	01 e8 00 00 	UNLINK;
ffa02be2:	10 00       	RTS;

ffa02be4 <_htons>:
ffa02be4:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa02be8:	38 b5       	W[FP + 0x8] = R0;
ffa02bea:	38 a9       	R0 = W[FP + 0x8] (X);
ffa02bec:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa02bf0:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa02bf2:	40 4e       	R0 >>= 0x8;
ffa02bf4:	40 43       	R0 = R0.B (Z);
ffa02bf6:	38 b5       	W[FP + 0x8] = R0;
ffa02bf8:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa02bfc:	40 4f       	R0 <<= 0x8;
ffa02bfe:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa02c02:	39 a9       	R1 = W[FP + 0x8] (X);
ffa02c04:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa02c08:	01 56       	R0 = R1 | R0;
ffa02c0a:	38 b5       	W[FP + 0x8] = R0;
ffa02c0c:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa02c0e:	01 e8 00 00 	UNLINK;
ffa02c12:	10 00       	RTS;

ffa02c14 <_htonl>:
ffa02c14:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa02c18:	b8 b0       	[FP + 0x8] = R0;
ffa02c1a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02c1c:	f0 bb       	[FP -0x4] = R0;
ffa02c1e:	b8 a0       	R0 = [FP + 0x8];
ffa02c20:	40 43       	R0 = R0.B (Z);
ffa02c22:	f0 bb       	[FP -0x4] = R0;
ffa02c24:	f0 b9       	R0 = [FP -0x4];
ffa02c26:	40 4f       	R0 <<= 0x8;
ffa02c28:	f0 bb       	[FP -0x4] = R0;
ffa02c2a:	b8 a0       	R0 = [FP + 0x8];
ffa02c2c:	40 4e       	R0 >>= 0x8;
ffa02c2e:	b8 b0       	[FP + 0x8] = R0;
ffa02c30:	b8 a0       	R0 = [FP + 0x8];
ffa02c32:	41 43       	R1 = R0.B (Z);
ffa02c34:	f0 b9       	R0 = [FP -0x4];
ffa02c36:	08 56       	R0 = R0 | R1;
ffa02c38:	f0 bb       	[FP -0x4] = R0;
ffa02c3a:	f0 b9       	R0 = [FP -0x4];
ffa02c3c:	40 4f       	R0 <<= 0x8;
ffa02c3e:	f0 bb       	[FP -0x4] = R0;
ffa02c40:	b8 a0       	R0 = [FP + 0x8];
ffa02c42:	40 4e       	R0 >>= 0x8;
ffa02c44:	b8 b0       	[FP + 0x8] = R0;
ffa02c46:	b8 a0       	R0 = [FP + 0x8];
ffa02c48:	41 43       	R1 = R0.B (Z);
ffa02c4a:	f0 b9       	R0 = [FP -0x4];
ffa02c4c:	08 56       	R0 = R0 | R1;
ffa02c4e:	f0 bb       	[FP -0x4] = R0;
ffa02c50:	f0 b9       	R0 = [FP -0x4];
ffa02c52:	40 4f       	R0 <<= 0x8;
ffa02c54:	f0 bb       	[FP -0x4] = R0;
ffa02c56:	b8 a0       	R0 = [FP + 0x8];
ffa02c58:	40 4e       	R0 >>= 0x8;
ffa02c5a:	b8 b0       	[FP + 0x8] = R0;
ffa02c5c:	b8 a0       	R0 = [FP + 0x8];
ffa02c5e:	41 43       	R1 = R0.B (Z);
ffa02c60:	f0 b9       	R0 = [FP -0x4];
ffa02c62:	08 56       	R0 = R0 | R1;
ffa02c64:	f0 bb       	[FP -0x4] = R0;
ffa02c66:	f0 b9       	R0 = [FP -0x4];
ffa02c68:	01 e8 00 00 	UNLINK;
ffa02c6c:	10 00       	RTS;
	...

ffa02c70 <_pack4chars>:
ffa02c70:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa02c74:	b8 b0       	[FP + 0x8] = R0;
ffa02c76:	ba ac       	P2 = [FP + 0x8];
ffa02c78:	50 99       	R0 = B[P2] (X);
ffa02c7a:	40 43       	R0 = R0.B (Z);
ffa02c7c:	f0 bb       	[FP -0x4] = R0;
ffa02c7e:	b8 a0       	R0 = [FP + 0x8];
ffa02c80:	08 64       	R0 += 0x1;		/* (  1) */
ffa02c82:	b8 b0       	[FP + 0x8] = R0;
ffa02c84:	ba ac       	P2 = [FP + 0x8];
ffa02c86:	50 99       	R0 = B[P2] (X);
ffa02c88:	40 43       	R0 = R0.B (Z);
ffa02c8a:	40 4f       	R0 <<= 0x8;
ffa02c8c:	08 30       	R1 = R0;
ffa02c8e:	f0 b9       	R0 = [FP -0x4];
ffa02c90:	08 50       	R0 = R0 + R1;
ffa02c92:	f0 bb       	[FP -0x4] = R0;
ffa02c94:	b8 a0       	R0 = [FP + 0x8];
ffa02c96:	08 64       	R0 += 0x1;		/* (  1) */
ffa02c98:	b8 b0       	[FP + 0x8] = R0;
ffa02c9a:	ba ac       	P2 = [FP + 0x8];
ffa02c9c:	50 99       	R0 = B[P2] (X);
ffa02c9e:	40 43       	R0 = R0.B (Z);
ffa02ca0:	80 4f       	R0 <<= 0x10;
ffa02ca2:	08 30       	R1 = R0;
ffa02ca4:	f0 b9       	R0 = [FP -0x4];
ffa02ca6:	08 50       	R0 = R0 + R1;
ffa02ca8:	f0 bb       	[FP -0x4] = R0;
ffa02caa:	b8 a0       	R0 = [FP + 0x8];
ffa02cac:	08 64       	R0 += 0x1;		/* (  1) */
ffa02cae:	b8 b0       	[FP + 0x8] = R0;
ffa02cb0:	ba ac       	P2 = [FP + 0x8];
ffa02cb2:	50 99       	R0 = B[P2] (X);
ffa02cb4:	40 43       	R0 = R0.B (Z);
ffa02cb6:	c0 4f       	R0 <<= 0x18;
ffa02cb8:	08 30       	R1 = R0;
ffa02cba:	f0 b9       	R0 = [FP -0x4];
ffa02cbc:	08 50       	R0 = R0 + R1;
ffa02cbe:	f0 bb       	[FP -0x4] = R0;
ffa02cc0:	b8 a0       	R0 = [FP + 0x8];
ffa02cc2:	08 64       	R0 += 0x1;		/* (  1) */
ffa02cc4:	b8 b0       	[FP + 0x8] = R0;
ffa02cc6:	f0 b9       	R0 = [FP -0x4];
ffa02cc8:	01 e8 00 00 	UNLINK;
ffa02ccc:	10 00       	RTS;
	...

ffa02cd0 <_eth_header_setup>:
ffa02cd0:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02cd4:	b8 b0       	[FP + 0x8] = R0;
ffa02cd6:	f9 b0       	[FP + 0xc] = R1;
ffa02cd8:	3a b1       	[FP + 0x10] = R2;
ffa02cda:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c */
ffa02cde:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa02ce2:	50 95       	R0 = W[P2] (X);
ffa02ce4:	c0 42       	R0 = R0.L (Z);
ffa02ce6:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9000aa(-7339862) */
ffa02cea:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa02cee:	10 4f       	R0 <<= 0x2;
ffa02cf0:	08 50       	R0 = R0 + R1;
ffa02cf2:	10 32       	P2 = R0;
ffa02cf4:	52 91       	P2 = [P2];
ffa02cf6:	90 a1       	R0 = [P2 + 0x18];
ffa02cf8:	e0 bb       	[FP -0x8] = R0;
ffa02cfa:	ba ac       	P2 = [FP + 0x8];
ffa02cfc:	10 91       	R0 = [P2];
ffa02cfe:	f0 67       	R0 += -0x2;		/* ( -2) */
ffa02d00:	ea b9       	P2 = [FP -0x8];
ffa02d02:	10 97       	W[P2] = R0;
ffa02d04:	ba ac       	P2 = [FP + 0x8];
ffa02d06:	10 91       	R0 = [P2];
ffa02d08:	80 67       	R0 += -0x10;		/* (-16) */
ffa02d0a:	ba ac       	P2 = [FP + 0x8];
ffa02d0c:	10 93       	[P2] = R0;
ffa02d0e:	e0 b9       	R0 = [FP -0x8];
ffa02d10:	08 30       	R1 = R0;
ffa02d12:	11 64       	R1 += 0x2;		/* (  2) */
ffa02d14:	38 a1       	R0 = [FP + 0x10];
ffa02d16:	00 e3 af 0a 	CALL 0xffa04274 <_ARP_req>;
ffa02d1a:	00 0c       	CC = R0 == 0x0;
ffa02d1c:	07 10       	IF !CC JUMP 0xffa02d2a <_eth_header_setup+0x5a>;
ffa02d1e:	fa ac       	P2 = [FP + 0xc];
ffa02d20:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02d22:	10 9b       	B[P2] = R0;
ffa02d24:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02d26:	c0 bb       	[FP -0x10] = R0;
ffa02d28:	29 20       	JUMP.S 0xffa02d7a <_eth_header_setup+0xaa>;
ffa02d2a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02d2c:	d0 bb       	[FP -0xc] = R0;
ffa02d2e:	12 20       	JUMP.S 0xffa02d52 <_eth_header_setup+0x82>;
ffa02d30:	d2 b9       	R2 = [FP -0xc];
ffa02d32:	d1 b9       	R1 = [FP -0xc];
ffa02d34:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02d38:	00 e1 64 0c 	R0.L = 0xc64;		/* (3172)	R0=0xff900c64 <_NetOurMAC>(-7336860) */
ffa02d3c:	08 50       	R0 = R0 + R1;
ffa02d3e:	10 32       	P2 = R0;
ffa02d40:	51 99       	R1 = B[P2] (X);
ffa02d42:	e0 b9       	R0 = [FP -0x8];
ffa02d44:	02 50       	R0 = R2 + R0;
ffa02d46:	10 32       	P2 = R0;
ffa02d48:	42 6c       	P2 += 0x8;		/* (  8) */
ffa02d4a:	11 9b       	B[P2] = R1;
ffa02d4c:	d0 b9       	R0 = [FP -0xc];
ffa02d4e:	08 64       	R0 += 0x1;		/* (  1) */
ffa02d50:	d0 bb       	[FP -0xc] = R0;
ffa02d52:	d0 b9       	R0 = [FP -0xc];
ffa02d54:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa02d56:	08 09       	CC = R0 <= R1;
ffa02d58:	ec 1b       	IF CC JUMP 0xffa02d30 <_eth_header_setup+0x60>;
ffa02d5a:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02d5e:	ff e3 43 ff 	CALL 0xffa02be4 <_htons>;
ffa02d62:	ea b9       	P2 = [FP -0x8];
ffa02d64:	d0 b5       	W[P2 + 0xe] = R0;
ffa02d66:	e0 b9       	R0 = [FP -0x8];
ffa02d68:	f0 bb       	[FP -0x4] = R0;
ffa02d6a:	f0 b9       	R0 = [FP -0x4];
ffa02d6c:	80 64       	R0 += 0x10;		/* ( 16) */
ffa02d6e:	f0 bb       	[FP -0x4] = R0;
ffa02d70:	fa ac       	P2 = [FP + 0xc];
ffa02d72:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d74:	10 9b       	B[P2] = R0;
ffa02d76:	f0 b9       	R0 = [FP -0x4];
ffa02d78:	c0 bb       	[FP -0x10] = R0;
ffa02d7a:	c0 b9       	R0 = [FP -0x10];
ffa02d7c:	01 e8 00 00 	UNLINK;
ffa02d80:	10 00       	RTS;
	...

ffa02d84 <_ip_header_setup>:
ffa02d84:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02d88:	b8 b0       	[FP + 0x8] = R0;
ffa02d8a:	f9 b0       	[FP + 0xc] = R1;
ffa02d8c:	3a b1       	[FP + 0x10] = R2;
ffa02d8e:	78 a1       	R0 = [FP + 0x14];
ffa02d90:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa02d94:	b8 a0       	R0 = [FP + 0x8];
ffa02d96:	f0 bb       	[FP -0x4] = R0;
ffa02d98:	fa b9       	P2 = [FP -0x4];
ffa02d9a:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa02d9e:	10 9b       	B[P2] = R0;
ffa02da0:	fa b9       	P2 = [FP -0x4];
ffa02da2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02da4:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa02da8:	fa ac       	P2 = [FP + 0xc];
ffa02daa:	10 91       	R0 = [P2];
ffa02dac:	c0 42       	R0 = R0.L (Z);
ffa02dae:	ff e3 1b ff 	CALL 0xffa02be4 <_htons>;
ffa02db2:	fa b9       	P2 = [FP -0x4];
ffa02db4:	50 b4       	W[P2 + 0x2] = R0;
ffa02db6:	fa ac       	P2 = [FP + 0xc];
ffa02db8:	10 91       	R0 = [P2];
ffa02dba:	60 67       	R0 += -0x14;		/* (-20) */
ffa02dbc:	fa ac       	P2 = [FP + 0xc];
ffa02dbe:	10 93       	[P2] = R0;
ffa02dc0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa02dc4:	0a e1 3e 0c 	P2.L = 0xc3e;		/* (3134)	P2=0xff900c3e <_NetIPID> */
ffa02dc8:	50 95       	R0 = W[P2] (X);
ffa02dca:	c1 42       	R1 = R0.L (Z);
ffa02dcc:	08 64       	R0 += 0x1;		/* (  1) */
ffa02dce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3e <_NetIPID> */
ffa02dd2:	0a e1 3e 0c 	P2.L = 0xc3e;		/* (3134)	P2=0xff900c3e <_NetIPID> */
ffa02dd6:	10 97       	W[P2] = R0;
ffa02dd8:	01 30       	R0 = R1;
ffa02dda:	ff e3 05 ff 	CALL 0xffa02be4 <_htons>;
ffa02dde:	fa b9       	P2 = [FP -0x4];
ffa02de0:	90 b4       	W[P2 + 0x4] = R0;
ffa02de2:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa02de6:	ff e3 ff fe 	CALL 0xffa02be4 <_htons>;
ffa02dea:	fa b9       	P2 = [FP -0x4];
ffa02dec:	d0 b4       	W[P2 + 0x6] = R0;
ffa02dee:	fa b9       	P2 = [FP -0x4];
ffa02df0:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa02df4:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02df8:	fa b9       	P2 = [FP -0x4];
ffa02dfa:	b8 e5 f8 ff 	R0 = B[FP + -0x8] (X);
ffa02dfe:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02e02:	fa b9       	P2 = [FP -0x4];
ffa02e04:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02e06:	50 b5       	W[P2 + 0xa] = R0;
ffa02e08:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3e <_NetIPID> */
ffa02e0c:	0a e1 70 0c 	P2.L = 0xc70;		/* (3184)	P2=0xff900c70 <_NetOurIP> */
ffa02e10:	10 91       	R0 = [P2];
ffa02e12:	fa b9       	P2 = [FP -0x4];
ffa02e14:	d0 b0       	[P2 + 0xc] = R0;
ffa02e16:	fa b9       	P2 = [FP -0x4];
ffa02e18:	38 a1       	R0 = [FP + 0x10];
ffa02e1a:	10 b1       	[P2 + 0x10] = R0;
ffa02e1c:	f0 b9       	R0 = [FP -0x4];
ffa02e1e:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa02e20:	ff e3 ba fe 	CALL 0xffa02b94 <_NetCksum>;
ffa02e24:	c0 43       	R0 =~ R0;
ffa02e26:	fa b9       	P2 = [FP -0x4];
ffa02e28:	50 b5       	W[P2 + 0xa] = R0;
ffa02e2a:	b8 a0       	R0 = [FP + 0x8];
ffa02e2c:	a0 64       	R0 += 0x14;		/* ( 20) */
ffa02e2e:	b8 b0       	[FP + 0x8] = R0;
ffa02e30:	b8 a0       	R0 = [FP + 0x8];
ffa02e32:	01 e8 00 00 	UNLINK;
ffa02e36:	10 00       	RTS;

ffa02e38 <_ip_header_checksum>:
ffa02e38:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02e3c:	b8 b0       	[FP + 0x8] = R0;
ffa02e3e:	b8 a0       	R0 = [FP + 0x8];
ffa02e40:	f0 bb       	[FP -0x4] = R0;
ffa02e42:	b8 a0       	R0 = [FP + 0x8];
ffa02e44:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa02e46:	ff e3 a7 fe 	CALL 0xffa02b94 <_NetCksum>;
ffa02e4a:	00 0c       	CC = R0 == 0x0;
ffa02e4c:	04 18       	IF CC JUMP 0xffa02e54 <_ip_header_checksum+0x1c>;
ffa02e4e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e50:	e0 bb       	[FP -0x8] = R0;
ffa02e52:	03 20       	JUMP.S 0xffa02e58 <_ip_header_checksum+0x20>;
ffa02e54:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02e56:	e0 bb       	[FP -0x8] = R0;
ffa02e58:	e0 b9       	R0 = [FP -0x8];
ffa02e5a:	01 e8 00 00 	UNLINK;
ffa02e5e:	10 00       	RTS;

ffa02e60 <_icmp_header_setup>:
ffa02e60:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02e64:	b8 b0       	[FP + 0x8] = R0;
ffa02e66:	f9 b0       	[FP + 0xc] = R1;
ffa02e68:	79 a1       	R1 = [FP + 0x14];
ffa02e6a:	bb a1       	R3 = [FP + 0x18];
ffa02e6c:	02 30       	R0 = R2;
ffa02e6e:	b8 e6 10 00 	B[FP + 0x10] = R0;
ffa02e72:	01 30       	R0 = R1;
ffa02e74:	78 e6 f6 ff 	W[FP + -0x14] = R0;
ffa02e78:	03 30       	R0 = R3;
ffa02e7a:	78 e6 f4 ff 	W[FP + -0x18] = R0;
ffa02e7e:	b8 a0       	R0 = [FP + 0x8];
ffa02e80:	c0 bb       	[FP -0x10] = R0;
ffa02e82:	ca b9       	P2 = [FP -0x10];
ffa02e84:	b8 e5 10 00 	R0 = B[FP + 0x10] (X);
ffa02e88:	10 9b       	B[P2] = R0;
ffa02e8a:	ca b9       	P2 = [FP -0x10];
ffa02e8c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02e8e:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa02e92:	ca b9       	P2 = [FP -0x10];
ffa02e94:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02e96:	50 b4       	W[P2 + 0x2] = R0;
ffa02e98:	ca b9       	P2 = [FP -0x10];
ffa02e9a:	78 e5 f6 ff 	R0 = W[FP + -0x14] (X);
ffa02e9e:	90 b4       	W[P2 + 0x4] = R0;
ffa02ea0:	ca b9       	P2 = [FP -0x10];
ffa02ea2:	78 e5 f4 ff 	R0 = W[FP + -0x18] (X);
ffa02ea6:	d0 b4       	W[P2 + 0x6] = R0;
ffa02ea8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02eaa:	d0 bb       	[FP -0xc] = R0;
ffa02eac:	c0 b9       	R0 = [FP -0x10];
ffa02eae:	f0 bb       	[FP -0x4] = R0;
ffa02eb0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02eb2:	e0 bb       	[FP -0x8] = R0;
ffa02eb4:	0d 20       	JUMP.S 0xffa02ece <_icmp_header_setup+0x6e>;
ffa02eb6:	fa b9       	P2 = [FP -0x4];
ffa02eb8:	50 95       	R0 = W[P2] (X);
ffa02eba:	c1 42       	R1 = R0.L (Z);
ffa02ebc:	d0 b9       	R0 = [FP -0xc];
ffa02ebe:	08 50       	R0 = R0 + R1;
ffa02ec0:	d0 bb       	[FP -0xc] = R0;
ffa02ec2:	f0 b9       	R0 = [FP -0x4];
ffa02ec4:	10 64       	R0 += 0x2;		/* (  2) */
ffa02ec6:	f0 bb       	[FP -0x4] = R0;
ffa02ec8:	e0 b9       	R0 = [FP -0x8];
ffa02eca:	08 64       	R0 += 0x1;		/* (  1) */
ffa02ecc:	e0 bb       	[FP -0x8] = R0;
ffa02ece:	e0 b9       	R0 = [FP -0x8];
ffa02ed0:	18 0d       	CC = R0 <= 0x3;
ffa02ed2:	f2 1b       	IF CC JUMP 0xffa02eb6 <_icmp_header_setup+0x56>;
ffa02ed4:	d0 b9       	R0 = [FP -0xc];
ffa02ed6:	c1 42       	R1 = R0.L (Z);
ffa02ed8:	d0 b9       	R0 = [FP -0xc];
ffa02eda:	80 4e       	R0 >>= 0x10;
ffa02edc:	01 50       	R0 = R1 + R0;
ffa02ede:	d0 bb       	[FP -0xc] = R0;
ffa02ee0:	d0 b9       	R0 = [FP -0xc];
ffa02ee2:	c0 43       	R0 =~ R0;
ffa02ee4:	ca b9       	P2 = [FP -0x10];
ffa02ee6:	50 b4       	W[P2 + 0x2] = R0;
ffa02ee8:	b8 a0       	R0 = [FP + 0x8];
ffa02eea:	40 64       	R0 += 0x8;		/* (  8) */
ffa02eec:	b8 b0       	[FP + 0x8] = R0;
ffa02eee:	fa ac       	P2 = [FP + 0xc];
ffa02ef0:	10 91       	R0 = [P2];
ffa02ef2:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa02ef4:	fa ac       	P2 = [FP + 0xc];
ffa02ef6:	10 93       	[P2] = R0;
ffa02ef8:	b8 a0       	R0 = [FP + 0x8];
ffa02efa:	01 e8 00 00 	UNLINK;
ffa02efe:	10 00       	RTS;

ffa02f00 <_udp_header_setup>:
ffa02f00:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02f04:	b8 b0       	[FP + 0x8] = R0;
ffa02f06:	f9 b0       	[FP + 0xc] = R1;
ffa02f08:	79 a1       	R1 = [FP + 0x14];
ffa02f0a:	02 30       	R0 = R2;
ffa02f0c:	38 b6       	W[FP + 0x10] = R0;
ffa02f0e:	01 30       	R0 = R1;
ffa02f10:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa02f14:	b8 a0       	R0 = [FP + 0x8];
ffa02f16:	f0 bb       	[FP -0x4] = R0;
ffa02f18:	38 a6       	R0 = W[FP + 0x10] (Z);
ffa02f1a:	ff e3 65 fe 	CALL 0xffa02be4 <_htons>;
ffa02f1e:	fa b9       	P2 = [FP -0x4];
ffa02f20:	10 97       	W[P2] = R0;
ffa02f22:	78 e4 fc ff 	R0 = W[FP + -0x8] (Z);
ffa02f26:	ff e3 5f fe 	CALL 0xffa02be4 <_htons>;
ffa02f2a:	fa b9       	P2 = [FP -0x4];
ffa02f2c:	50 b4       	W[P2 + 0x2] = R0;
ffa02f2e:	fa ac       	P2 = [FP + 0xc];
ffa02f30:	10 91       	R0 = [P2];
ffa02f32:	c0 42       	R0 = R0.L (Z);
ffa02f34:	ff e3 58 fe 	CALL 0xffa02be4 <_htons>;
ffa02f38:	fa b9       	P2 = [FP -0x4];
ffa02f3a:	90 b4       	W[P2 + 0x4] = R0;
ffa02f3c:	fa ac       	P2 = [FP + 0xc];
ffa02f3e:	10 91       	R0 = [P2];
ffa02f40:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa02f42:	fa ac       	P2 = [FP + 0xc];
ffa02f44:	10 93       	[P2] = R0;
ffa02f46:	fa b9       	P2 = [FP -0x4];
ffa02f48:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f4a:	d0 b4       	W[P2 + 0x6] = R0;
ffa02f4c:	b8 a0       	R0 = [FP + 0x8];
ffa02f4e:	40 64       	R0 += 0x8;		/* (  8) */
ffa02f50:	b8 b0       	[FP + 0x8] = R0;
ffa02f52:	b8 a0       	R0 = [FP + 0x8];
ffa02f54:	01 e8 00 00 	UNLINK;
ffa02f58:	10 00       	RTS;
	...

ffa02f5c <_tcp_header_setup>:
ffa02f5c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02f60:	b8 b0       	[FP + 0x8] = R0;
ffa02f62:	f9 b0       	[FP + 0xc] = R1;
ffa02f64:	02 30       	R0 = R2;
ffa02f66:	b8 e6 10 00 	B[FP + 0x10] = R0;
ffa02f6a:	b8 a0       	R0 = [FP + 0x8];
ffa02f6c:	f0 bb       	[FP -0x4] = R0;
ffa02f6e:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa02f72:	ff e3 39 fe 	CALL 0xffa02be4 <_htons>;
ffa02f76:	fa b9       	P2 = [FP -0x4];
ffa02f78:	10 97       	W[P2] = R0;
ffa02f7a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c70 <_NetOurIP> */
ffa02f7e:	0a e1 60 0d 	P2.L = 0xd60;		/* (3424)	P2=0xff900d60 <_TcpClientPort> */
ffa02f82:	50 95       	R0 = W[P2] (X);
ffa02f84:	fa b9       	P2 = [FP -0x4];
ffa02f86:	50 b4       	W[P2 + 0x2] = R0;
ffa02f88:	78 a1       	R0 = [FP + 0x14];
ffa02f8a:	ff e3 45 fe 	CALL 0xffa02c14 <_htonl>;
ffa02f8e:	fa b9       	P2 = [FP -0x4];
ffa02f90:	50 b0       	[P2 + 0x4] = R0;
ffa02f92:	b8 a1       	R0 = [FP + 0x18];
ffa02f94:	ff e3 40 fe 	CALL 0xffa02c14 <_htonl>;
ffa02f98:	fa b9       	P2 = [FP -0x4];
ffa02f9a:	90 b0       	[P2 + 0x8] = R0;
ffa02f9c:	fa b9       	P2 = [FP -0x4];
ffa02f9e:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa02fa2:	90 e6 0c 00 	B[P2 + 0xc] = R0;
ffa02fa6:	fa b9       	P2 = [FP -0x4];
ffa02fa8:	b8 e5 10 00 	R0 = B[FP + 0x10] (X);
ffa02fac:	90 e6 0d 00 	B[P2 + 0xd] = R0;
ffa02fb0:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa02fb4:	ff e3 18 fe 	CALL 0xffa02be4 <_htons>;
ffa02fb8:	fa b9       	P2 = [FP -0x4];
ffa02fba:	d0 b5       	W[P2 + 0xe] = R0;
ffa02fbc:	fa b9       	P2 = [FP -0x4];
ffa02fbe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02fc0:	10 b6       	W[P2 + 0x10] = R0;
ffa02fc2:	fa b9       	P2 = [FP -0x4];
ffa02fc4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02fc6:	50 b6       	W[P2 + 0x12] = R0;
ffa02fc8:	b8 a0       	R0 = [FP + 0x8];
ffa02fca:	a0 64       	R0 += 0x14;		/* ( 20) */
ffa02fcc:	b8 b0       	[FP + 0x8] = R0;
ffa02fce:	fa ac       	P2 = [FP + 0xc];
ffa02fd0:	10 91       	R0 = [P2];
ffa02fd2:	60 67       	R0 += -0x14;		/* (-20) */
ffa02fd4:	fa ac       	P2 = [FP + 0xc];
ffa02fd6:	10 93       	[P2] = R0;
ffa02fd8:	b8 a0       	R0 = [FP + 0x8];
ffa02fda:	01 e8 00 00 	UNLINK;
ffa02fde:	10 00       	RTS;

ffa02fe0 <_ether_testUDP>:
ffa02fe0:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02fe4:	b8 b0       	[FP + 0x8] = R0;
ffa02fe6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d60 <_TcpClientPort> */
ffa02fea:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa02fee:	50 95       	R0 = W[P2] (X);
ffa02ff0:	c0 42       	R0 = R0.L (Z);
ffa02ff2:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900014(-7340012) */
ffa02ff6:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa02ffa:	10 4f       	R0 <<= 0x2;
ffa02ffc:	08 50       	R0 = R0 + R1;
ffa02ffe:	10 32       	P2 = R0;
ffa03000:	52 91       	P2 = [P2];
ffa03002:	90 a1       	R0 = [P2 + 0x18];
ffa03004:	e0 bb       	[FP -0x8] = R0;
ffa03006:	ea b9       	P2 = [FP -0x8];
ffa03008:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa0300c:	10 97       	W[P2] = R0;
ffa0300e:	e0 b9       	R0 = [FP -0x8];
ffa03010:	08 30       	R1 = R0;
ffa03012:	11 64       	R1 += 0x2;		/* (  2) */
ffa03014:	b8 a0       	R0 = [FP + 0x8];
ffa03016:	00 e3 2f 09 	CALL 0xffa04274 <_ARP_req>;
ffa0301a:	00 0c       	CC = R0 == 0x0;
ffa0301c:	04 10       	IF !CC JUMP 0xffa03024 <_ether_testUDP+0x44>;
ffa0301e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03020:	c0 bb       	[FP -0x10] = R0;
ffa03022:	9d 20       	JUMP.S 0xffa0315c <_ether_testUDP+0x17c>;
ffa03024:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03026:	d0 bb       	[FP -0xc] = R0;
ffa03028:	12 20       	JUMP.S 0xffa0304c <_ether_testUDP+0x6c>;
ffa0302a:	d2 b9       	R2 = [FP -0xc];
ffa0302c:	d1 b9       	R1 = [FP -0xc];
ffa0302e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03032:	00 e1 64 0c 	R0.L = 0xc64;		/* (3172)	R0=0xff900c64 <_NetOurMAC>(-7336860) */
ffa03036:	08 50       	R0 = R0 + R1;
ffa03038:	10 32       	P2 = R0;
ffa0303a:	51 99       	R1 = B[P2] (X);
ffa0303c:	e0 b9       	R0 = [FP -0x8];
ffa0303e:	02 50       	R0 = R2 + R0;
ffa03040:	10 32       	P2 = R0;
ffa03042:	42 6c       	P2 += 0x8;		/* (  8) */
ffa03044:	11 9b       	B[P2] = R1;
ffa03046:	d0 b9       	R0 = [FP -0xc];
ffa03048:	08 64       	R0 += 0x1;		/* (  1) */
ffa0304a:	d0 bb       	[FP -0xc] = R0;
ffa0304c:	d0 b9       	R0 = [FP -0xc];
ffa0304e:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03050:	08 09       	CC = R0 <= R1;
ffa03052:	ec 1b       	IF CC JUMP 0xffa0302a <_ether_testUDP+0x4a>;
ffa03054:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03058:	ff e3 c6 fd 	CALL 0xffa02be4 <_htons>;
ffa0305c:	ea b9       	P2 = [FP -0x8];
ffa0305e:	d0 b5       	W[P2 + 0xe] = R0;
ffa03060:	ea b9       	P2 = [FP -0x8];
ffa03062:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa03066:	90 e6 10 00 	B[P2 + 0x10] = R0;
ffa0306a:	ea b9       	P2 = [FP -0x8];
ffa0306c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0306e:	90 e6 11 00 	B[P2 + 0x11] = R0;
ffa03072:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa03074:	ff e3 b8 fd 	CALL 0xffa02be4 <_htons>;
ffa03078:	ea b9       	P2 = [FP -0x8];
ffa0307a:	50 b6       	W[P2 + 0x12] = R0;
ffa0307c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa03080:	0a e1 3e 0c 	P2.L = 0xc3e;		/* (3134)	P2=0xff900c3e <_NetIPID> */
ffa03084:	50 95       	R0 = W[P2] (X);
ffa03086:	c1 42       	R1 = R0.L (Z);
ffa03088:	08 64       	R0 += 0x1;		/* (  1) */
ffa0308a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3e <_NetIPID> */
ffa0308e:	0a e1 3e 0c 	P2.L = 0xc3e;		/* (3134)	P2=0xff900c3e <_NetIPID> */
ffa03092:	10 97       	W[P2] = R0;
ffa03094:	01 30       	R0 = R1;
ffa03096:	ff e3 a7 fd 	CALL 0xffa02be4 <_htons>;
ffa0309a:	ea b9       	P2 = [FP -0x8];
ffa0309c:	90 b6       	W[P2 + 0x14] = R0;
ffa0309e:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa030a2:	ff e3 a1 fd 	CALL 0xffa02be4 <_htons>;
ffa030a6:	ea b9       	P2 = [FP -0x8];
ffa030a8:	d0 b6       	W[P2 + 0x16] = R0;
ffa030aa:	ea b9       	P2 = [FP -0x8];
ffa030ac:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa030ae:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa030b2:	ea b9       	P2 = [FP -0x8];
ffa030b4:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa030b6:	90 e6 19 00 	B[P2 + 0x19] = R0;
ffa030ba:	ea b9       	P2 = [FP -0x8];
ffa030bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa030be:	50 b7       	W[P2 + 0x1a] = R0;
ffa030c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3e <_NetIPID> */
ffa030c4:	0a e1 70 0c 	P2.L = 0xc70;		/* (3184)	P2=0xff900c70 <_NetOurIP> */
ffa030c8:	10 91       	R0 = [P2];
ffa030ca:	ea b9       	P2 = [FP -0x8];
ffa030cc:	d0 b1       	[P2 + 0x1c] = R0;
ffa030ce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c70 <_NetOurIP> */
ffa030d2:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_NetDestIP> */
ffa030d6:	10 91       	R0 = [P2];
ffa030d8:	ea b9       	P2 = [FP -0x8];
ffa030da:	10 b2       	[P2 + 0x20] = R0;
ffa030dc:	e0 b9       	R0 = [FP -0x8];
ffa030de:	80 64       	R0 += 0x10;		/* ( 16) */
ffa030e0:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa030e2:	ff e3 59 fd 	CALL 0xffa02b94 <_NetCksum>;
ffa030e6:	c0 43       	R0 =~ R0;
ffa030e8:	ea b9       	P2 = [FP -0x8];
ffa030ea:	50 b7       	W[P2 + 0x1a] = R0;
ffa030ec:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa030f0:	ff e3 7a fd 	CALL 0xffa02be4 <_htons>;
ffa030f4:	ea b9       	P2 = [FP -0x8];
ffa030f6:	50 e6 12 00 	W[P2 + 0x24] = R0;
ffa030fa:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa030fe:	ff e3 73 fd 	CALL 0xffa02be4 <_htons>;
ffa03102:	ea b9       	P2 = [FP -0x8];
ffa03104:	50 e6 13 00 	W[P2 + 0x26] = R0;
ffa03108:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa0310a:	ff e3 6d fd 	CALL 0xffa02be4 <_htons>;
ffa0310e:	ea b9       	P2 = [FP -0x8];
ffa03110:	50 e6 14 00 	W[P2 + 0x28] = R0;
ffa03114:	ea b9       	P2 = [FP -0x8];
ffa03116:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03118:	50 e6 15 00 	W[P2 + 0x2a] = R0;
ffa0311c:	e0 b9       	R0 = [FP -0x8];
ffa0311e:	f0 bb       	[FP -0x4] = R0;
ffa03120:	f0 b9       	R0 = [FP -0x4];
ffa03122:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa03124:	f0 bb       	[FP -0x4] = R0;
ffa03126:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03128:	d0 bb       	[FP -0xc] = R0;
ffa0312a:	0b 20       	JUMP.S 0xffa03140 <_ether_testUDP+0x160>;
ffa0312c:	d0 b9       	R0 = [FP -0xc];
ffa0312e:	08 30       	R1 = R0;
ffa03130:	f0 b9       	R0 = [FP -0x4];
ffa03132:	41 50       	R1 = R1 + R0;
ffa03134:	11 32       	P2 = R1;
ffa03136:	d0 b9       	R0 = [FP -0xc];
ffa03138:	10 9b       	B[P2] = R0;
ffa0313a:	d0 b9       	R0 = [FP -0xc];
ffa0313c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0313e:	d0 bb       	[FP -0xc] = R0;
ffa03140:	d0 b9       	R0 = [FP -0xc];
ffa03142:	a9 60       	R1 = 0x15 (X);		/*		R1=0x15( 21) */
ffa03144:	08 09       	CC = R0 <= R1;
ffa03146:	f3 1b       	IF CC JUMP 0xffa0312c <_ether_testUDP+0x14c>;
ffa03148:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0314c:	00 e1 3c 02 	R0.L = 0x23c;		/* (572)	R0=0xff90023c(-7339460) */
ffa03150:	ff e3 72 eb 	CALL 0xffa00834 <_printf_str>;
ffa03154:	ff e3 d6 f5 	CALL 0xffa01d00 <_bfin_EMAC_send_nocopy>;
ffa03158:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0315a:	c0 bb       	[FP -0x10] = R0;
ffa0315c:	c0 b9       	R0 = [FP -0x10];
ffa0315e:	01 e8 00 00 	UNLINK;
ffa03162:	10 00       	RTS;

ffa03164 <_udp_packet_setup>:
ffa03164:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa03168:	b8 b0       	[FP + 0x8] = R0;
ffa0316a:	f9 b0       	[FP + 0xc] = R1;
ffa0316c:	b8 a0       	R0 = [FP + 0x8];
ffa0316e:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa03170:	e0 bb       	[FP -0x8] = R0;
ffa03172:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c34 <_NetDestIP> */
ffa03176:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa0317a:	12 91       	R2 = [P2];
ffa0317c:	47 30       	R0 = FP;
ffa0317e:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa03180:	f9 a0       	R1 = [FP + 0xc];
ffa03182:	ff e3 a7 fd 	CALL 0xffa02cd0 <_eth_header_setup>;
ffa03186:	f0 bb       	[FP -0x4] = R0;
ffa03188:	fa ac       	P2 = [FP + 0xc];
ffa0318a:	50 99       	R0 = B[P2] (X);
ffa0318c:	00 43       	R0 = R0.B (X);
ffa0318e:	80 0c       	CC = R0 < 0x0;
ffa03190:	04 10       	IF !CC JUMP 0xffa03198 <_udp_packet_setup+0x34>;
ffa03192:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03194:	d0 bb       	[FP -0xc] = R0;
ffa03196:	20 20       	JUMP.S 0xffa031d6 <_udp_packet_setup+0x72>;
ffa03198:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c74 <_NetDataDestIP> */
ffa0319c:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa031a0:	13 91       	R3 = [P2];
ffa031a2:	f1 b9       	R1 = [FP -0x4];
ffa031a4:	57 30       	R2 = FP;
ffa031a6:	c2 67       	R2 += -0x8;		/* ( -8) */
ffa031a8:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa031aa:	f0 b0       	[SP + 0xc] = R0;
ffa031ac:	01 30       	R0 = R1;
ffa031ae:	0a 30       	R1 = R2;
ffa031b0:	13 30       	R2 = R3;
ffa031b2:	ff e3 e9 fd 	CALL 0xffa02d84 <_ip_header_setup>;
ffa031b6:	f0 bb       	[FP -0x4] = R0;
ffa031b8:	f1 b9       	R1 = [FP -0x4];
ffa031ba:	57 30       	R2 = FP;
ffa031bc:	c2 67       	R2 += -0x8;		/* ( -8) */
ffa031be:	20 e1 f4 10 	R0 = 0x10f4 (X);		/*		R0=0x10f4(4340) */
ffa031c2:	f0 b0       	[SP + 0xc] = R0;
ffa031c4:	01 30       	R0 = R1;
ffa031c6:	0a 30       	R1 = R2;
ffa031c8:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa031cc:	ff e3 9a fe 	CALL 0xffa02f00 <_udp_header_setup>;
ffa031d0:	f0 bb       	[FP -0x4] = R0;
ffa031d2:	f0 b9       	R0 = [FP -0x4];
ffa031d4:	d0 bb       	[FP -0xc] = R0;
ffa031d6:	d0 b9       	R0 = [FP -0xc];
ffa031d8:	01 e8 00 00 	UNLINK;
ffa031dc:	10 00       	RTS;
	...

ffa031e0 <_icmp_packet_setup>:
ffa031e0:	78 05       	[--SP] = (R7:7);
ffa031e2:	00 e8 0b 00 	LINK 0x2c;		/* (44) */
ffa031e6:	f8 b0       	[FP + 0xc] = R0;
ffa031e8:	39 b1       	[FP + 0x10] = R1;
ffa031ea:	7a b1       	[FP + 0x14] = R2;
ffa031ec:	b8 a1       	R0 = [FP + 0x18];
ffa031ee:	f9 a1       	R1 = [FP + 0x1c];
ffa031f0:	3a a2       	R2 = [FP + 0x20];
ffa031f2:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa031f6:	01 30       	R0 = R1;
ffa031f8:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa031fc:	02 30       	R0 = R2;
ffa031fe:	78 e6 f6 ff 	W[FP + -0x14] = R0;
ffa03202:	f8 a0       	R0 = [FP + 0xc];
ffa03204:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa03206:	e0 bb       	[FP -0x8] = R0;
ffa03208:	47 30       	R0 = FP;
ffa0320a:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa0320c:	39 a1       	R1 = [FP + 0x10];
ffa0320e:	7a a1       	R2 = [FP + 0x14];
ffa03210:	ff e3 60 fd 	CALL 0xffa02cd0 <_eth_header_setup>;
ffa03214:	f0 bb       	[FP -0x4] = R0;
ffa03216:	3a ad       	P2 = [FP + 0x10];
ffa03218:	50 99       	R0 = B[P2] (X);
ffa0321a:	00 43       	R0 = R0.B (X);
ffa0321c:	80 0c       	CC = R0 < 0x0;
ffa0321e:	04 10       	IF !CC JUMP 0xffa03226 <_icmp_packet_setup+0x46>;
ffa03220:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03222:	a0 bb       	[FP -0x18] = R0;
ffa03224:	20 20       	JUMP.S 0xffa03264 <_icmp_packet_setup+0x84>;
ffa03226:	f1 b9       	R1 = [FP -0x4];
ffa03228:	57 30       	R2 = FP;
ffa0322a:	c2 67       	R2 += -0x8;		/* ( -8) */
ffa0322c:	7b a1       	R3 = [FP + 0x14];
ffa0322e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03230:	f0 b0       	[SP + 0xc] = R0;
ffa03232:	01 30       	R0 = R1;
ffa03234:	0a 30       	R1 = R2;
ffa03236:	13 30       	R2 = R3;
ffa03238:	ff e3 a6 fd 	CALL 0xffa02d84 <_ip_header_setup>;
ffa0323c:	f0 bb       	[FP -0x4] = R0;
ffa0323e:	bf e4 f4 ff 	R7 = B[FP + -0xc] (Z);
ffa03242:	78 e4 f8 ff 	R0 = W[FP + -0x10] (Z);
ffa03246:	79 e4 f6 ff 	R1 = W[FP + -0x14] (Z);
ffa0324a:	f2 b9       	R2 = [FP -0x4];
ffa0324c:	5f 30       	R3 = FP;
ffa0324e:	c3 67       	R3 += -0x8;		/* ( -8) */
ffa03250:	f0 b0       	[SP + 0xc] = R0;
ffa03252:	31 b1       	[SP + 0x10] = R1;
ffa03254:	02 30       	R0 = R2;
ffa03256:	0b 30       	R1 = R3;
ffa03258:	17 30       	R2 = R7;
ffa0325a:	ff e3 03 fe 	CALL 0xffa02e60 <_icmp_header_setup>;
ffa0325e:	f0 bb       	[FP -0x4] = R0;
ffa03260:	f0 b9       	R0 = [FP -0x4];
ffa03262:	a0 bb       	[FP -0x18] = R0;
ffa03264:	a0 b9       	R0 = [FP -0x18];
ffa03266:	01 e8 00 00 	UNLINK;
ffa0326a:	38 05       	(R7:7) = [SP++];
ffa0326c:	10 00       	RTS;
	...

ffa03270 <_icmp_rx>:
ffa03270:	70 05       	[--SP] = (R7:6);
ffa03272:	00 e8 0b 00 	LINK 0x2c;		/* (44) */
ffa03276:	38 b1       	[FP + 0x10] = R0;
ffa03278:	79 b1       	[FP + 0x14] = R1;
ffa0327a:	38 a1       	R0 = [FP + 0x10];
ffa0327c:	d0 bb       	[FP -0xc] = R0;
ffa0327e:	da b9       	P2 = [FP -0xc];
ffa03280:	d7 a9       	R7 = W[P2 + 0xe] (X);
ffa03282:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03286:	ff e3 af fc 	CALL 0xffa02be4 <_htons>;
ffa0328a:	f9 42       	R1 = R7.L (Z);
ffa0328c:	c0 42       	R0 = R0.L (Z);
ffa0328e:	01 08       	CC = R1 == R0;
ffa03290:	85 10       	IF !CC JUMP 0xffa0339a <_icmp_rx+0x12a>;
ffa03292:	78 a1       	R0 = [FP + 0x14];
ffa03294:	59 61       	R1 = 0x2b (X);		/*		R1=0x2b( 43) */
ffa03296:	08 0a       	CC = R0 <= R1 (IU);
ffa03298:	81 18       	IF CC JUMP 0xffa0339a <_icmp_rx+0x12a>;
ffa0329a:	00 00       	NOP;
ffa0329c:	00 00       	NOP;
ffa0329e:	da b9       	P2 = [FP -0xc];
ffa032a0:	90 e5 19 00 	R0 = B[P2 + 0x19] (X);
ffa032a4:	40 43       	R0 = R0.B (Z);
ffa032a6:	08 0c       	CC = R0 == 0x1;
ffa032a8:	79 10       	IF !CC JUMP 0xffa0339a <_icmp_rx+0x12a>;
ffa032aa:	00 00       	NOP;
ffa032ac:	00 00       	NOP;
ffa032ae:	da b9       	P2 = [FP -0xc];
ffa032b0:	11 a2       	R1 = [P2 + 0x20];
ffa032b2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c74 <_NetDataDestIP> */
ffa032b6:	0a e1 70 0c 	P2.L = 0xc70;		/* (3184)	P2=0xff900c70 <_NetOurIP> */
ffa032ba:	10 91       	R0 = [P2];
ffa032bc:	01 08       	CC = R1 == R0;
ffa032be:	6e 10       	IF !CC JUMP 0xffa0339a <_icmp_rx+0x12a>;
ffa032c0:	00 00       	NOP;
ffa032c2:	00 00       	NOP;
ffa032c4:	da b9       	P2 = [FP -0xc];
ffa032c6:	90 e5 24 00 	R0 = B[P2 + 0x24] (X);
ffa032ca:	40 43       	R0 = R0.B (Z);
ffa032cc:	18 0c       	CC = R0 == 0x3;
ffa032ce:	12 10       	IF !CC JUMP 0xffa032f2 <_icmp_rx+0x82>;
ffa032d0:	00 00       	NOP;
ffa032d2:	00 00       	NOP;
ffa032d4:	da b9       	P2 = [FP -0xc];
ffa032d6:	90 e5 25 00 	R0 = B[P2 + 0x25] (X);
ffa032da:	40 43       	R0 = R0.B (Z);
ffa032dc:	18 0c       	CC = R0 == 0x3;
ffa032de:	0a 10       	IF !CC JUMP 0xffa032f2 <_icmp_rx+0x82>;
ffa032e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c70 <_NetOurIP> */
ffa032e4:	0a e1 c8 0b 	P2.L = 0xbc8;		/* (3016)	P2=0xff900bc8 <_g_streamEnabled> */
ffa032e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa032ea:	10 9b       	B[P2] = R0;
ffa032ec:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa032ee:	b0 bb       	[FP -0x14] = R0;
ffa032f0:	57 20       	JUMP.S 0xffa0339e <_icmp_rx+0x12e>;
ffa032f2:	da b9       	P2 = [FP -0xc];
ffa032f4:	90 e5 24 00 	R0 = B[P2 + 0x24] (X);
ffa032f8:	40 43       	R0 = R0.B (Z);
ffa032fa:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa032fc:	08 08       	CC = R0 == R1;
ffa032fe:	4e 10       	IF !CC JUMP 0xffa0339a <_icmp_rx+0x12a>;
ffa03300:	00 00       	NOP;
ffa03302:	00 00       	NOP;
ffa03304:	da b9       	P2 = [FP -0xc];
ffa03306:	d1 a1       	R1 = [P2 + 0x1c];
ffa03308:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0330c:	00 e1 54 02 	R0.L = 0x254;		/* (596)	R0=0xff900254(-7339436) */
ffa03310:	ff e3 ae ec 	CALL 0xffa00c6c <_printf_ip>;
ffa03314:	da b9       	P2 = [FP -0xc];
ffa03316:	d0 a1       	R0 = [P2 + 0x1c];
ffa03318:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bc8 <_g_streamEnabled> */
ffa0331c:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_NetDestIP> */
ffa03320:	10 93       	[P2] = R0;
ffa03322:	da b9       	P2 = [FP -0xc];
ffa03324:	d2 a1       	R2 = [P2 + 0x1c];
ffa03326:	d0 b9       	R0 = [FP -0xc];
ffa03328:	08 30       	R1 = R0;
ffa0332a:	41 64       	R1 += 0x8;		/* (  8) */
ffa0332c:	02 30       	R0 = R2;
ffa0332e:	00 e3 c7 06 	CALL 0xffa040bc <_ARP_lut_add>;
ffa03332:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900254(-7339436) */
ffa03336:	00 e1 d4 01 	R0.L = 0x1d4;		/* (468)	R0=0xff9001d4(-7339564) */
ffa0333a:	ff e3 7d ea 	CALL 0xffa00834 <_printf_str>;
ffa0333e:	da b9       	P2 = [FP -0xc];
ffa03340:	d0 a1       	R0 = [P2 + 0x1c];
ffa03342:	e0 bb       	[FP -0x8] = R0;
ffa03344:	38 a1       	R0 = [FP + 0x10];
ffa03346:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa03348:	38 b1       	[FP + 0x10] = R0;
ffa0334a:	78 a1       	R0 = [FP + 0x14];
ffa0334c:	b0 66       	R0 += -0x2a;		/* (-42) */
ffa0334e:	78 b1       	[FP + 0x14] = R0;
ffa03350:	da b9       	P2 = [FP -0xc];
ffa03352:	50 e5 14 00 	R0 = W[P2 + 0x28] (X);
ffa03356:	c1 42       	R1 = R0.L (Z);
ffa03358:	da b9       	P2 = [FP -0xc];
ffa0335a:	50 e5 15 00 	R0 = W[P2 + 0x2a] (X);
ffa0335e:	c2 42       	R2 = R0.L (Z);
ffa03360:	7b a1       	R3 = [FP + 0x14];
ffa03362:	7f 30       	R7 = FP;
ffa03364:	9f 67       	R7 += -0xd;		/* (-13) */
ffa03366:	e6 b9       	R6 = [FP -0x8];
ffa03368:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0336a:	f0 b0       	[SP + 0xc] = R0;
ffa0336c:	31 b1       	[SP + 0x10] = R1;
ffa0336e:	72 b1       	[SP + 0x14] = R2;
ffa03370:	03 30       	R0 = R3;
ffa03372:	0f 30       	R1 = R7;
ffa03374:	16 30       	R2 = R6;
ffa03376:	ff e3 35 ff 	CALL 0xffa031e0 <_icmp_packet_setup>;
ffa0337a:	f0 bb       	[FP -0x4] = R0;
ffa0337c:	b8 e5 f3 ff 	R0 = B[FP + -0xd] (X);
ffa03380:	00 43       	R0 = R0.B (X);
ffa03382:	00 0d       	CC = R0 <= 0x0;
ffa03384:	0b 18       	IF CC JUMP 0xffa0339a <_icmp_rx+0x12a>;
ffa03386:	f1 b9       	R1 = [FP -0x4];
ffa03388:	7a a1       	R2 = [FP + 0x14];
ffa0338a:	38 a1       	R0 = [FP + 0x10];
ffa0338c:	ff e3 e6 ec 	CALL 0xffa00d58 <_memcpy_>;
ffa03390:	ff e3 b8 f4 	CALL 0xffa01d00 <_bfin_EMAC_send_nocopy>;
ffa03394:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03396:	b0 bb       	[FP -0x14] = R0;
ffa03398:	03 20       	JUMP.S 0xffa0339e <_icmp_rx+0x12e>;
ffa0339a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0339c:	b1 bb       	[FP -0x14] = R1;
ffa0339e:	b0 b9       	R0 = [FP -0x14];
ffa033a0:	01 e8 00 00 	UNLINK;
ffa033a4:	30 05       	(R7:6) = [SP++];
ffa033a6:	10 00       	RTS;

ffa033a8 <_DHCP_tx>:
ffa033a8:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa033ac:	b8 b0       	[FP + 0x8] = R0;
ffa033ae:	f9 b0       	[FP + 0xc] = R1;
ffa033b0:	3a b1       	[FP + 0x10] = R2;
ffa033b2:	b9 a0       	R1 = [FP + 0x8];
ffa033b4:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa033b8:	01 50       	R0 = R1 + R0;
ffa033ba:	d0 bb       	[FP -0xc] = R0;
ffa033bc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c34 <_NetDestIP> */
ffa033c0:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa033c4:	50 95       	R0 = W[P2] (X);
ffa033c6:	c0 42       	R0 = R0.L (Z);
ffa033c8:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900000 <_l1_data_a>(-7340032) */
ffa033cc:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa033d0:	10 4f       	R0 <<= 0x2;
ffa033d2:	08 50       	R0 = R0 + R1;
ffa033d4:	10 32       	P2 = R0;
ffa033d6:	52 91       	P2 = [P2];
ffa033d8:	90 a1       	R0 = [P2 + 0x18];
ffa033da:	c0 bb       	[FP -0x10] = R0;
ffa033dc:	d0 b9       	R0 = [FP -0xc];
ffa033de:	ca b9       	P2 = [FP -0x10];
ffa033e0:	10 97       	W[P2] = R0;
ffa033e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa033e4:	e0 bb       	[FP -0x8] = R0;
ffa033e6:	0b 20       	JUMP.S 0xffa033fc <_DHCP_tx+0x54>;
ffa033e8:	e1 b9       	R1 = [FP -0x8];
ffa033ea:	c0 b9       	R0 = [FP -0x10];
ffa033ec:	08 50       	R0 = R0 + R1;
ffa033ee:	10 32       	P2 = R0;
ffa033f0:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa033f2:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa033f6:	e0 b9       	R0 = [FP -0x8];
ffa033f8:	08 64       	R0 += 0x1;		/* (  1) */
ffa033fa:	e0 bb       	[FP -0x8] = R0;
ffa033fc:	e0 b9       	R0 = [FP -0x8];
ffa033fe:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03400:	08 09       	CC = R0 <= R1;
ffa03402:	f3 1b       	IF CC JUMP 0xffa033e8 <_DHCP_tx+0x40>;
ffa03404:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03406:	e0 bb       	[FP -0x8] = R0;
ffa03408:	12 20       	JUMP.S 0xffa0342c <_DHCP_tx+0x84>;
ffa0340a:	e2 b9       	R2 = [FP -0x8];
ffa0340c:	e1 b9       	R1 = [FP -0x8];
ffa0340e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03412:	00 e1 64 0c 	R0.L = 0xc64;		/* (3172)	R0=0xff900c64 <_NetOurMAC>(-7336860) */
ffa03416:	08 50       	R0 = R0 + R1;
ffa03418:	10 32       	P2 = R0;
ffa0341a:	51 99       	R1 = B[P2] (X);
ffa0341c:	c0 b9       	R0 = [FP -0x10];
ffa0341e:	02 50       	R0 = R2 + R0;
ffa03420:	10 32       	P2 = R0;
ffa03422:	42 6c       	P2 += 0x8;		/* (  8) */
ffa03424:	11 9b       	B[P2] = R1;
ffa03426:	e0 b9       	R0 = [FP -0x8];
ffa03428:	08 64       	R0 += 0x1;		/* (  1) */
ffa0342a:	e0 bb       	[FP -0x8] = R0;
ffa0342c:	e0 b9       	R0 = [FP -0x8];
ffa0342e:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03430:	08 09       	CC = R0 <= R1;
ffa03432:	ec 1b       	IF CC JUMP 0xffa0340a <_DHCP_tx+0x62>;
ffa03434:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03438:	ff e3 d6 fb 	CALL 0xffa02be4 <_htons>;
ffa0343c:	ca b9       	P2 = [FP -0x10];
ffa0343e:	d0 b5       	W[P2 + 0xe] = R0;
ffa03440:	ca b9       	P2 = [FP -0x10];
ffa03442:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa03446:	90 e6 10 00 	B[P2 + 0x10] = R0;
ffa0344a:	ca b9       	P2 = [FP -0x10];
ffa0344c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0344e:	90 e6 11 00 	B[P2 + 0x11] = R0;
ffa03452:	b8 a0       	R0 = [FP + 0x8];
ffa03454:	08 30       	R1 = R0;
ffa03456:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa0345a:	01 50       	R0 = R1 + R0;
ffa0345c:	c0 42       	R0 = R0.L (Z);
ffa0345e:	ff e3 c3 fb 	CALL 0xffa02be4 <_htons>;
ffa03462:	ca b9       	P2 = [FP -0x10];
ffa03464:	50 b6       	W[P2 + 0x12] = R0;
ffa03466:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa0346a:	0a e1 3e 0c 	P2.L = 0xc3e;		/* (3134)	P2=0xff900c3e <_NetIPID> */
ffa0346e:	50 95       	R0 = W[P2] (X);
ffa03470:	c1 42       	R1 = R0.L (Z);
ffa03472:	08 64       	R0 += 0x1;		/* (  1) */
ffa03474:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3e <_NetIPID> */
ffa03478:	0a e1 3e 0c 	P2.L = 0xc3e;		/* (3134)	P2=0xff900c3e <_NetIPID> */
ffa0347c:	10 97       	W[P2] = R0;
ffa0347e:	01 30       	R0 = R1;
ffa03480:	ff e3 b2 fb 	CALL 0xffa02be4 <_htons>;
ffa03484:	ca b9       	P2 = [FP -0x10];
ffa03486:	90 b6       	W[P2 + 0x14] = R0;
ffa03488:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa0348c:	ff e3 ac fb 	CALL 0xffa02be4 <_htons>;
ffa03490:	ca b9       	P2 = [FP -0x10];
ffa03492:	d0 b6       	W[P2 + 0x16] = R0;
ffa03494:	ca b9       	P2 = [FP -0x10];
ffa03496:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03498:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa0349c:	ca b9       	P2 = [FP -0x10];
ffa0349e:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa034a0:	90 e6 19 00 	B[P2 + 0x19] = R0;
ffa034a4:	ca b9       	P2 = [FP -0x10];
ffa034a6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa034a8:	50 b7       	W[P2 + 0x1a] = R0;
ffa034aa:	ca b9       	P2 = [FP -0x10];
ffa034ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa034ae:	d0 b1       	[P2 + 0x1c] = R0;
ffa034b0:	ca b9       	P2 = [FP -0x10];
ffa034b2:	38 a1       	R0 = [FP + 0x10];
ffa034b4:	10 b2       	[P2 + 0x20] = R0;
ffa034b6:	c0 b9       	R0 = [FP -0x10];
ffa034b8:	80 64       	R0 += 0x10;		/* ( 16) */
ffa034ba:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa034bc:	ff e3 6c fb 	CALL 0xffa02b94 <_NetCksum>;
ffa034c0:	c0 43       	R0 =~ R0;
ffa034c2:	ca b9       	P2 = [FP -0x10];
ffa034c4:	50 b7       	W[P2 + 0x1a] = R0;
ffa034c6:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa034ca:	ff e3 8d fb 	CALL 0xffa02be4 <_htons>;
ffa034ce:	ca b9       	P2 = [FP -0x10];
ffa034d0:	50 e6 12 00 	W[P2 + 0x24] = R0;
ffa034d4:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa034d8:	ff e3 86 fb 	CALL 0xffa02be4 <_htons>;
ffa034dc:	ca b9       	P2 = [FP -0x10];
ffa034de:	50 e6 13 00 	W[P2 + 0x26] = R0;
ffa034e2:	b8 a0       	R0 = [FP + 0x8];
ffa034e4:	08 30       	R1 = R0;
ffa034e6:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa034ea:	01 50       	R0 = R1 + R0;
ffa034ec:	c0 42       	R0 = R0.L (Z);
ffa034ee:	ff e3 7b fb 	CALL 0xffa02be4 <_htons>;
ffa034f2:	ca b9       	P2 = [FP -0x10];
ffa034f4:	50 e6 14 00 	W[P2 + 0x28] = R0;
ffa034f8:	ca b9       	P2 = [FP -0x10];
ffa034fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa034fc:	50 e6 15 00 	W[P2 + 0x2a] = R0;
ffa03500:	ca b9       	P2 = [FP -0x10];
ffa03502:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03504:	90 e6 2c 00 	B[P2 + 0x2c] = R0;
ffa03508:	ca b9       	P2 = [FP -0x10];
ffa0350a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0350c:	90 e6 2d 00 	B[P2 + 0x2d] = R0;
ffa03510:	ca b9       	P2 = [FP -0x10];
ffa03512:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03514:	90 e6 2e 00 	B[P2 + 0x2e] = R0;
ffa03518:	ca b9       	P2 = [FP -0x10];
ffa0351a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0351c:	90 e6 2f 00 	B[P2 + 0x2f] = R0;
ffa03520:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c3e(-4191170) */
ffa03524:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa03528:	10 91       	R0 = [P2];
ffa0352a:	ca b9       	P2 = [FP -0x10];
ffa0352c:	10 b3       	[P2 + 0x30] = R0;
ffa0352e:	ca b9       	P2 = [FP -0x10];
ffa03530:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03532:	50 e6 1a 00 	W[P2 + 0x34] = R0;
ffa03536:	ca b9       	P2 = [FP -0x10];
ffa03538:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0353a:	50 e6 1b 00 	W[P2 + 0x36] = R0;
ffa0353e:	ca b9       	P2 = [FP -0x10];
ffa03540:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03542:	90 b3       	[P2 + 0x38] = R0;
ffa03544:	ca b9       	P2 = [FP -0x10];
ffa03546:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03548:	d0 b3       	[P2 + 0x3c] = R0;
ffa0354a:	ca b9       	P2 = [FP -0x10];
ffa0354c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0354e:	10 e6 10 00 	[P2 + 0x40] = R0;
ffa03552:	ca b9       	P2 = [FP -0x10];
ffa03554:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03556:	10 e6 11 00 	[P2 + 0x44] = R0;
ffa0355a:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820000(1669464064) */
ffa0355e:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa03562:	ff e3 59 fb 	CALL 0xffa02c14 <_htonl>;
ffa03566:	ca b9       	P2 = [FP -0x10];
ffa03568:	10 e6 46 00 	[P2 + 0x118] = R0;
ffa0356c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0356e:	e0 bb       	[FP -0x8] = R0;
ffa03570:	14 20       	JUMP.S 0xffa03598 <_DHCP_tx+0x1f0>;
ffa03572:	e3 b9       	R3 = [FP -0x8];
ffa03574:	e1 b9       	R1 = [FP -0x8];
ffa03576:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0357a:	00 e1 64 0c 	R0.L = 0xc64;		/* (3172)	R0=0xff900c64 <_NetOurMAC>(-7336860) */
ffa0357e:	08 50       	R0 = R0 + R1;
ffa03580:	10 32       	P2 = R0;
ffa03582:	52 99       	R2 = B[P2] (X);
ffa03584:	c0 b9       	R0 = [FP -0x10];
ffa03586:	43 50       	R1 = R3 + R0;
ffa03588:	20 e1 48 00 	R0 = 0x48 (X);		/*		R0=0x48( 72) */
ffa0358c:	41 50       	R1 = R1 + R0;
ffa0358e:	11 32       	P2 = R1;
ffa03590:	12 9b       	B[P2] = R2;
ffa03592:	e0 b9       	R0 = [FP -0x8];
ffa03594:	08 64       	R0 += 0x1;		/* (  1) */
ffa03596:	e0 bb       	[FP -0x8] = R0;
ffa03598:	e0 b9       	R0 = [FP -0x8];
ffa0359a:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0359c:	08 09       	CC = R0 <= R1;
ffa0359e:	ea 1b       	IF CC JUMP 0xffa03572 <_DHCP_tx+0x1ca>;
ffa035a0:	0d 20       	JUMP.S 0xffa035ba <_DHCP_tx+0x212>;
ffa035a2:	e1 b9       	R1 = [FP -0x8];
ffa035a4:	c0 b9       	R0 = [FP -0x10];
ffa035a6:	41 50       	R1 = R1 + R0;
ffa035a8:	20 e1 48 00 	R0 = 0x48 (X);		/*		R0=0x48( 72) */
ffa035ac:	41 50       	R1 = R1 + R0;
ffa035ae:	11 32       	P2 = R1;
ffa035b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa035b2:	10 9b       	B[P2] = R0;
ffa035b4:	e0 b9       	R0 = [FP -0x8];
ffa035b6:	08 64       	R0 += 0x1;		/* (  1) */
ffa035b8:	e0 bb       	[FP -0x8] = R0;
ffa035ba:	e0 b9       	R0 = [FP -0x8];
ffa035bc:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa035be:	08 09       	CC = R0 <= R1;
ffa035c0:	f1 1b       	IF CC JUMP 0xffa035a2 <_DHCP_tx+0x1fa>;
ffa035c2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa035c4:	e0 bb       	[FP -0x8] = R0;
ffa035c6:	0e 20       	JUMP.S 0xffa035e2 <_DHCP_tx+0x23a>;
ffa035c8:	e0 b9       	R0 = [FP -0x8];
ffa035ca:	c1 b9       	R1 = [FP -0x10];
ffa035cc:	10 4f       	R0 <<= 0x2;
ffa035ce:	48 50       	R1 = R0 + R1;
ffa035d0:	20 e1 58 00 	R0 = 0x58 (X);		/*		R0=0x58( 88) */
ffa035d4:	41 50       	R1 = R1 + R0;
ffa035d6:	11 32       	P2 = R1;
ffa035d8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa035da:	10 93       	[P2] = R0;
ffa035dc:	e0 b9       	R0 = [FP -0x8];
ffa035de:	08 64       	R0 += 0x1;		/* (  1) */
ffa035e0:	e0 bb       	[FP -0x8] = R0;
ffa035e2:	e0 b9       	R0 = [FP -0x8];
ffa035e4:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa035e6:	08 09       	CC = R0 <= R1;
ffa035e8:	f0 1b       	IF CC JUMP 0xffa035c8 <_DHCP_tx+0x220>;
ffa035ea:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa035ec:	e0 bb       	[FP -0x8] = R0;
ffa035ee:	0e 20       	JUMP.S 0xffa0360a <_DHCP_tx+0x262>;
ffa035f0:	e0 b9       	R0 = [FP -0x8];
ffa035f2:	c1 b9       	R1 = [FP -0x10];
ffa035f4:	10 4f       	R0 <<= 0x2;
ffa035f6:	48 50       	R1 = R0 + R1;
ffa035f8:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa035fc:	41 50       	R1 = R1 + R0;
ffa035fe:	11 32       	P2 = R1;
ffa03600:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03602:	10 93       	[P2] = R0;
ffa03604:	e0 b9       	R0 = [FP -0x8];
ffa03606:	08 64       	R0 += 0x1;		/* (  1) */
ffa03608:	e0 bb       	[FP -0x8] = R0;
ffa0360a:	e0 b9       	R0 = [FP -0x8];
ffa0360c:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0360e:	08 09       	CC = R0 <= R1;
ffa03610:	f0 1b       	IF CC JUMP 0xffa035f0 <_DHCP_tx+0x248>;
ffa03612:	c0 b9       	R0 = [FP -0x10];
ffa03614:	f0 bb       	[FP -0x4] = R0;
ffa03616:	f1 b9       	R1 = [FP -0x4];
ffa03618:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa0361c:	01 50       	R0 = R1 + R0;
ffa0361e:	f0 bb       	[FP -0x4] = R0;
ffa03620:	f8 a0       	R0 = [FP + 0xc];
ffa03622:	f1 b9       	R1 = [FP -0x4];
ffa03624:	ba a0       	R2 = [FP + 0x8];
ffa03626:	ff e3 99 eb 	CALL 0xffa00d58 <_memcpy_>;
ffa0362a:	ff e3 6b f3 	CALL 0xffa01d00 <_bfin_EMAC_send_nocopy>;
ffa0362e:	01 e8 00 00 	UNLINK;
ffa03632:	10 00       	RTS;

ffa03634 <_DHCP_rx>:
ffa03634:	78 05       	[--SP] = (R7:7);
ffa03636:	00 e8 08 00 	LINK 0x20;		/* (32) */
ffa0363a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0363c:	f0 bb       	[FP -0x4] = R0;
ffa0363e:	90 20       	JUMP.S 0xffa0375e <_DHCP_rx+0x12a>;
ffa03640:	47 30       	R0 = FP;
ffa03642:	80 67       	R0 += -0x10;		/* (-16) */
ffa03644:	ff e3 00 f5 	CALL 0xffa02044 <_bfin_EMAC_recv_poll>;
ffa03648:	d0 bb       	[FP -0xc] = R0;
ffa0364a:	d1 b9       	R1 = [FP -0xc];
ffa0364c:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa03650:	01 50       	R0 = R1 + R0;
ffa03652:	08 30       	R1 = R0;
ffa03654:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa03658:	00 e1 70 02 	R0.L = 0x270;		/* (624)	R0=0xff900270(-7339408) */
ffa0365c:	ff e3 f6 e8 	CALL 0xffa00848 <_printf_int>;
ffa03660:	c0 b9       	R0 = [FP -0x10];
ffa03662:	e0 bb       	[FP -0x8] = R0;
ffa03664:	d0 b9       	R0 = [FP -0xc];
ffa03666:	00 0d       	CC = R0 <= 0x0;
ffa03668:	75 18       	IF CC JUMP 0xffa03752 <_DHCP_rx+0x11e>;
ffa0366a:	d0 b9       	R0 = [FP -0xc];
ffa0366c:	21 e1 1b 01 	R1 = 0x11b (X);		/*		R1=0x11b(283) */
ffa03670:	08 0a       	CC = R0 <= R1 (IU);
ffa03672:	70 18       	IF CC JUMP 0xffa03752 <_DHCP_rx+0x11e>;
ffa03674:	00 00       	NOP;
ffa03676:	00 00       	NOP;
ffa03678:	ea b9       	P2 = [FP -0x8];
ffa0367a:	d0 a9       	R0 = W[P2 + 0xe] (X);
ffa0367c:	c0 42       	R0 = R0.L (Z);
ffa0367e:	ff e3 b3 fa 	CALL 0xffa02be4 <_htons>;
ffa03682:	c0 42       	R0 = R0.L (Z);
ffa03684:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa03688:	08 08       	CC = R0 == R1;
ffa0368a:	64 10       	IF !CC JUMP 0xffa03752 <_DHCP_rx+0x11e>;
ffa0368c:	00 00       	NOP;
ffa0368e:	00 00       	NOP;
ffa03690:	ea b9       	P2 = [FP -0x8];
ffa03692:	57 e5 12 00 	R7 = W[P2 + 0x24] (X);
ffa03696:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa0369a:	ff e3 a5 fa 	CALL 0xffa02be4 <_htons>;
ffa0369e:	f9 42       	R1 = R7.L (Z);
ffa036a0:	c0 42       	R0 = R0.L (Z);
ffa036a2:	01 08       	CC = R1 == R0;
ffa036a4:	5d 10       	IF !CC JUMP 0xffa0375e <_DHCP_rx+0x12a>;
ffa036a6:	00 00       	NOP;
ffa036a8:	00 00       	NOP;
ffa036aa:	ea b9       	P2 = [FP -0x8];
ffa036ac:	57 e5 13 00 	R7 = W[P2 + 0x26] (X);
ffa036b0:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa036b4:	ff e3 98 fa 	CALL 0xffa02be4 <_htons>;
ffa036b8:	f9 42       	R1 = R7.L (Z);
ffa036ba:	c0 42       	R0 = R0.L (Z);
ffa036bc:	01 08       	CC = R1 == R0;
ffa036be:	50 10       	IF !CC JUMP 0xffa0375e <_DHCP_rx+0x12a>;
ffa036c0:	00 00       	NOP;
ffa036c2:	00 00       	NOP;
ffa036c4:	ea b9       	P2 = [FP -0x8];
ffa036c6:	11 a3       	R1 = [P2 + 0x30];
ffa036c8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03004(-4182012) */
ffa036cc:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa036d0:	10 91       	R0 = [P2];
ffa036d2:	01 08       	CC = R1 == R0;
ffa036d4:	45 10       	IF !CC JUMP 0xffa0375e <_DHCP_rx+0x12a>;
ffa036d6:	00 00       	NOP;
ffa036d8:	00 00       	NOP;
ffa036da:	ea b9       	P2 = [FP -0x8];
ffa036dc:	17 e4 46 00 	R7 = [P2 + 0x118];
ffa036e0:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa036e4:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa036e8:	ff e3 96 fa 	CALL 0xffa02c14 <_htonl>;
ffa036ec:	07 08       	CC = R7 == R0;
ffa036ee:	38 10       	IF !CC JUMP 0xffa0375e <_DHCP_rx+0x12a>;
ffa036f0:	e0 b9       	R0 = [FP -0x8];
ffa036f2:	c0 bb       	[FP -0x10] = R0;
ffa036f4:	c1 b9       	R1 = [FP -0x10];
ffa036f6:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa036fa:	01 50       	R0 = R1 + R0;
ffa036fc:	c0 bb       	[FP -0x10] = R0;
ffa036fe:	c2 b9       	R2 = [FP -0x10];
ffa03700:	d1 b9       	R1 = [FP -0xc];
ffa03702:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa03706:	01 50       	R0 = R1 + R0;
ffa03708:	08 30       	R1 = R0;
ffa0370a:	02 30       	R0 = R2;
ffa0370c:	00 e3 cc 00 	CALL 0xffa038a4 <_DHCP_parse>;
ffa03710:	ea b9       	P2 = [FP -0x8];
ffa03712:	d0 a3       	R0 = [P2 + 0x3c];
ffa03714:	00 0c       	CC = R0 == 0x0;
ffa03716:	1b 18       	IF CC JUMP 0xffa0374c <_DHCP_rx+0x118>;
ffa03718:	00 00       	NOP;
ffa0371a:	00 00       	NOP;
ffa0371c:	ea b9       	P2 = [FP -0x8];
ffa0371e:	d0 a3       	R0 = [P2 + 0x3c];
ffa03720:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa03724:	0a e1 70 0c 	P2.L = 0xc70;		/* (3184)	P2=0xff900c70 <_NetOurIP> */
ffa03728:	10 93       	[P2] = R0;
ffa0372a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c70 <_NetOurIP> */
ffa0372e:	0a e1 70 0c 	P2.L = 0xc70;		/* (3184)	P2=0xff900c70 <_NetOurIP> */
ffa03732:	11 91       	R1 = [P2];
ffa03734:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa03738:	00 e1 84 02 	R0.L = 0x284;		/* (644)	R0=0xff900284(-7339388) */
ffa0373c:	ff e3 98 ea 	CALL 0xffa00c6c <_printf_ip>;
ffa03740:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900284(-7339388) */
ffa03744:	00 e1 d4 01 	R0.L = 0x1d4;		/* (468)	R0=0xff9001d4(-7339564) */
ffa03748:	ff e3 76 e8 	CALL 0xffa00834 <_printf_str>;
ffa0374c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0374e:	b0 bb       	[FP -0x14] = R0;
ffa03750:	0c 20       	JUMP.S 0xffa03768 <_DHCP_rx+0x134>;
ffa03752:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03756:	00 e1 94 02 	R0.L = 0x294;		/* (660)	R0=0xff900294(-7339372) */
ffa0375a:	ff e3 6d e8 	CALL 0xffa00834 <_printf_str>;
ffa0375e:	f0 b9       	R0 = [FP -0x4];
ffa03760:	00 0c       	CC = R0 == 0x0;
ffa03762:	6f 1b       	IF CC JUMP 0xffa03640 <_DHCP_rx+0xc>;
ffa03764:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03766:	b1 bb       	[FP -0x14] = R1;
ffa03768:	b0 b9       	R0 = [FP -0x14];
ffa0376a:	01 e8 00 00 	UNLINK;
ffa0376e:	38 05       	(R7:7) = [SP++];
ffa03770:	10 00       	RTS;
	...

ffa03774 <_DHCP_req>:
ffa03774:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa03778:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c70 <_NetOurIP> */
ffa0377c:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_NetDHCPserv> */
ffa03780:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03782:	10 93       	[P2] = R0;
ffa03784:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa03786:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa0378a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0378c:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa03790:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03792:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa03796:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03798:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa0379c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa037a0:	00 e1 b0 02 	R0.L = 0x2b0;		/* (688)	R0=0xff9002b0(-7339344) */
ffa037a4:	ff e3 48 e8 	CALL 0xffa00834 <_printf_str>;
ffa037a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_NetDHCPserv> */
ffa037ac:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_NetDHCPserv> */
ffa037b0:	12 91       	R2 = [P2];
ffa037b2:	4f 30       	R1 = FP;
ffa037b4:	a1 67       	R1 += -0xc;		/* (-12) */
ffa037b6:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa037b8:	ff e3 f8 fd 	CALL 0xffa033a8 <_DHCP_tx>;
ffa037bc:	ff e3 3c ff 	CALL 0xffa03634 <_DHCP_rx>;
ffa037c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_NetDHCPserv> */
ffa037c4:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_NetDHCPserv> */
ffa037c8:	10 91       	R0 = [P2];
ffa037ca:	38 0c       	CC = R0 == -0x1;
ffa037cc:	0a 10       	IF !CC JUMP 0xffa037e0 <_DHCP_req+0x6c>;
ffa037ce:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa037d2:	00 e1 c4 02 	R0.L = 0x2c4;		/* (708)	R0=0xff9002c4(-7339324) */
ffa037d6:	ff e3 2f e8 	CALL 0xffa00834 <_printf_str>;
ffa037da:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa037dc:	c0 bb       	[FP -0x10] = R0;
ffa037de:	5e 20       	JUMP.S 0xffa0389a <_DHCP_req+0x126>;
ffa037e0:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa037e2:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa037e6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa037e8:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa037ec:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa037ee:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa037f2:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa037f4:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa037f8:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa037fa:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa037fe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_NetDHCPserv> */
ffa03802:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_NetDHCPserv> */
ffa03806:	10 91       	R0 = [P2];
ffa03808:	b8 e6 f9 ff 	B[FP + -0x7] = R0;
ffa0380c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_NetDHCPserv> */
ffa03810:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_NetDHCPserv> */
ffa03814:	10 91       	R0 = [P2];
ffa03816:	40 4e       	R0 >>= 0x8;
ffa03818:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa0381c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_NetDHCPserv> */
ffa03820:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_NetDHCPserv> */
ffa03824:	10 91       	R0 = [P2];
ffa03826:	80 4e       	R0 >>= 0x10;
ffa03828:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0382c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_NetDHCPserv> */
ffa03830:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_NetDHCPserv> */
ffa03834:	10 91       	R0 = [P2];
ffa03836:	c0 4e       	R0 >>= 0x18;
ffa03838:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa0383c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0383e:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa03842:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_NetDHCPserv> */
ffa03846:	0a e1 70 0c 	P2.L = 0xc70;		/* (3184)	P2=0xff900c70 <_NetOurIP> */
ffa0384a:	10 91       	R0 = [P2];
ffa0384c:	00 0c       	CC = R0 == 0x0;
ffa0384e:	12 18       	IF CC JUMP 0xffa03872 <_DHCP_req+0xfe>;
ffa03850:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c70 <_NetOurIP> */
ffa03854:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_NetDHCPserv> */
ffa03858:	10 91       	R0 = [P2];
ffa0385a:	38 0c       	CC = R0 == -0x1;
ffa0385c:	0b 18       	IF CC JUMP 0xffa03872 <_DHCP_req+0xfe>;
ffa0385e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_NetDHCPserv> */
ffa03862:	0a e1 6c 0c 	P2.L = 0xc6c;		/* (3180)	P2=0xff900c6c <_NetSubnetMask> */
ffa03866:	10 91       	R0 = [P2];
ffa03868:	00 0c       	CC = R0 == 0x0;
ffa0386a:	04 18       	IF CC JUMP 0xffa03872 <_DHCP_req+0xfe>;
ffa0386c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0386e:	c0 bb       	[FP -0x10] = R0;
ffa03870:	15 20       	JUMP.S 0xffa0389a <_DHCP_req+0x126>;
ffa03872:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03876:	00 e1 e0 02 	R0.L = 0x2e0;		/* (736)	R0=0xff9002e0(-7339296) */
ffa0387a:	ff e3 dd e7 	CALL 0xffa00834 <_printf_str>;
ffa0387e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c6c <_NetSubnetMask> */
ffa03882:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_NetDHCPserv> */
ffa03886:	12 91       	R2 = [P2];
ffa03888:	4f 30       	R1 = FP;
ffa0388a:	a1 67       	R1 += -0xc;		/* (-12) */
ffa0388c:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0388e:	ff e3 8d fd 	CALL 0xffa033a8 <_DHCP_tx>;
ffa03892:	ff e3 d1 fe 	CALL 0xffa03634 <_DHCP_rx>;
ffa03896:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03898:	c0 bb       	[FP -0x10] = R0;
ffa0389a:	c0 b9       	R0 = [FP -0x10];
ffa0389c:	01 e8 00 00 	UNLINK;
ffa038a0:	10 00       	RTS;
	...

ffa038a4 <_DHCP_parse>:
ffa038a4:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa038a8:	b8 b0       	[FP + 0x8] = R0;
ffa038aa:	f9 b0       	[FP + 0xc] = R1;
ffa038ac:	f8 a0       	R0 = [FP + 0xc];
ffa038ae:	f0 bb       	[FP -0x4] = R0;
ffa038b0:	cb 20       	JUMP.S 0xffa03a46 <_DHCP_parse+0x1a2>;
ffa038b2:	ba ac       	P2 = [FP + 0x8];
ffa038b4:	50 99       	R0 = B[P2] (X);
ffa038b6:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa038ba:	b8 a0       	R0 = [FP + 0x8];
ffa038bc:	08 64       	R0 += 0x1;		/* (  1) */
ffa038be:	b8 b0       	[FP + 0x8] = R0;
ffa038c0:	f0 b9       	R0 = [FP -0x4];
ffa038c2:	f8 67       	R0 += -0x1;		/* ( -1) */
ffa038c4:	f0 bb       	[FP -0x4] = R0;
ffa038c6:	b8 e4 fa ff 	R0 = B[FP + -0x6] (Z);
ffa038ca:	00 0c       	CC = R0 == 0x0;
ffa038cc:	bd 18       	IF CC JUMP 0xffa03a46 <_DHCP_parse+0x1a2>;
ffa038ce:	00 00       	NOP;
ffa038d0:	00 00       	NOP;
ffa038d2:	ba ac       	P2 = [FP + 0x8];
ffa038d4:	50 99       	R0 = B[P2] (X);
ffa038d6:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa038da:	b8 a0       	R0 = [FP + 0x8];
ffa038dc:	08 64       	R0 += 0x1;		/* (  1) */
ffa038de:	b8 b0       	[FP + 0x8] = R0;
ffa038e0:	b8 e4 fa ff 	R0 = B[FP + -0x6] (Z);
ffa038e4:	21 e1 ff 00 	R1 = 0xff (X);		/*		R1=0xff(255) */
ffa038e8:	08 08       	CC = R0 == R1;
ffa038ea:	b1 18       	IF CC JUMP 0xffa03a4c <_DHCP_parse+0x1a8>;
ffa038ec:	b8 e4 fa ff 	R0 = B[FP + -0x6] (Z);
ffa038f0:	d0 bb       	[FP -0xc] = R0;
ffa038f2:	d1 b9       	R1 = [FP -0xc];
ffa038f4:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa038f6:	01 0a       	CC = R1 <= R0 (IU);
ffa038f8:	85 10       	IF !CC JUMP 0xffa03a02 <_DHCP_parse+0x15e>;
ffa038fa:	d1 b9       	R1 = [FP -0xc];
ffa038fc:	11 4f       	R1 <<= 0x2;
ffa038fe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa03902:	00 e1 b8 03 	R0.L = 0x3b8;		/* (952)	R0=0xff9003b8(-7339080) */
ffa03906:	41 50       	R1 = R1 + R0;
ffa03908:	11 32       	P2 = R1;
ffa0390a:	52 91       	P2 = [P2];
ffa0390c:	52 00       	JUMP (P2);
ffa0390e:	b8 a0       	R0 = [FP + 0x8];
ffa03910:	ff e3 b0 f9 	CALL 0xffa02c70 <_pack4chars>;
ffa03914:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_NetDHCPserv> */
ffa03918:	0a e1 6c 0c 	P2.L = 0xc6c;		/* (3180)	P2=0xff900c6c <_NetSubnetMask> */
ffa0391c:	10 93       	[P2] = R0;
ffa0391e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c6c <_NetSubnetMask> */
ffa03922:	0a e1 6c 0c 	P2.L = 0xc6c;		/* (3180)	P2=0xff900c6c <_NetSubnetMask> */
ffa03926:	11 91       	R1 = [P2];
ffa03928:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003b8(-7339080) */
ffa0392c:	00 e1 f4 02 	R0.L = 0x2f4;		/* (756)	R0=0xff9002f4(-7339276) */
ffa03930:	ff e3 9e e9 	CALL 0xffa00c6c <_printf_ip>;
ffa03934:	77 20       	JUMP.S 0xffa03a22 <_DHCP_parse+0x17e>;
ffa03936:	b8 a0       	R0 = [FP + 0x8];
ffa03938:	ff e3 9c f9 	CALL 0xffa02c70 <_pack4chars>;
ffa0393c:	08 30       	R1 = R0;
ffa0393e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002f4(-7339276) */
ffa03942:	00 e1 04 03 	R0.L = 0x304;		/* (772)	R0=0xff900304(-7339260) */
ffa03946:	ff e3 93 e9 	CALL 0xffa00c6c <_printf_ip>;
ffa0394a:	6c 20       	JUMP.S 0xffa03a22 <_DHCP_parse+0x17e>;
ffa0394c:	b8 a0       	R0 = [FP + 0x8];
ffa0394e:	ff e3 91 f9 	CALL 0xffa02c70 <_pack4chars>;
ffa03952:	08 30       	R1 = R0;
ffa03954:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900304(-7339260) */
ffa03958:	00 e1 14 03 	R0.L = 0x314;		/* (788)	R0=0xff900314(-7339244) */
ffa0395c:	ff e3 88 e9 	CALL 0xffa00c6c <_printf_ip>;
ffa03960:	61 20       	JUMP.S 0xffa03a22 <_DHCP_parse+0x17e>;
ffa03962:	b8 a0       	R0 = [FP + 0x8];
ffa03964:	ff e3 86 f9 	CALL 0xffa02c70 <_pack4chars>;
ffa03968:	08 30       	R1 = R0;
ffa0396a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900314(-7339244) */
ffa0396e:	00 e1 24 03 	R0.L = 0x324;		/* (804)	R0=0xff900324(-7339228) */
ffa03972:	ff e3 7d e9 	CALL 0xffa00c6c <_printf_ip>;
ffa03976:	56 20       	JUMP.S 0xffa03a22 <_DHCP_parse+0x17e>;
ffa03978:	b8 a0       	R0 = [FP + 0x8];
ffa0397a:	ff e3 7b f9 	CALL 0xffa02c70 <_pack4chars>;
ffa0397e:	ff e3 4b f9 	CALL 0xffa02c14 <_htonl>;
ffa03982:	08 30       	R1 = R0;
ffa03984:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900324(-7339228) */
ffa03988:	00 e1 34 03 	R0.L = 0x334;		/* (820)	R0=0xff900334(-7339212) */
ffa0398c:	ff e3 5e e7 	CALL 0xffa00848 <_printf_int>;
ffa03990:	49 20       	JUMP.S 0xffa03a22 <_DHCP_parse+0x17e>;
ffa03992:	ba ac       	P2 = [FP + 0x8];
ffa03994:	50 99       	R0 = B[P2] (X);
ffa03996:	41 43       	R1 = R0.B (Z);
ffa03998:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900334(-7339212) */
ffa0399c:	00 e1 48 03 	R0.L = 0x348;		/* (840)	R0=0xff900348(-7339192) */
ffa039a0:	ff e3 54 e7 	CALL 0xffa00848 <_printf_int>;
ffa039a4:	3f 20       	JUMP.S 0xffa03a22 <_DHCP_parse+0x17e>;
ffa039a6:	b8 a0       	R0 = [FP + 0x8];
ffa039a8:	ff e3 64 f9 	CALL 0xffa02c70 <_pack4chars>;
ffa039ac:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c6c <_NetSubnetMask> */
ffa039b0:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_NetDHCPserv> */
ffa039b4:	10 93       	[P2] = R0;
ffa039b6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_NetDHCPserv> */
ffa039ba:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_NetDHCPserv> */
ffa039be:	11 91       	R1 = [P2];
ffa039c0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900348(-7339192) */
ffa039c4:	00 e1 5c 03 	R0.L = 0x35c;		/* (860)	R0=0xff90035c(-7339172) */
ffa039c8:	ff e3 52 e9 	CALL 0xffa00c6c <_printf_ip>;
ffa039cc:	2b 20       	JUMP.S 0xffa03a22 <_DHCP_parse+0x17e>;
ffa039ce:	b8 a0       	R0 = [FP + 0x8];
ffa039d0:	ff e3 50 f9 	CALL 0xffa02c70 <_pack4chars>;
ffa039d4:	ff e3 20 f9 	CALL 0xffa02c14 <_htonl>;
ffa039d8:	08 30       	R1 = R0;
ffa039da:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90035c(-7339172) */
ffa039de:	00 e1 70 03 	R0.L = 0x370;		/* (880)	R0=0xff900370(-7339152) */
ffa039e2:	ff e3 33 e7 	CALL 0xffa00848 <_printf_int>;
ffa039e6:	1e 20       	JUMP.S 0xffa03a22 <_DHCP_parse+0x17e>;
ffa039e8:	b8 a0       	R0 = [FP + 0x8];
ffa039ea:	ff e3 43 f9 	CALL 0xffa02c70 <_pack4chars>;
ffa039ee:	ff e3 13 f9 	CALL 0xffa02c14 <_htonl>;
ffa039f2:	08 30       	R1 = R0;
ffa039f4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900370(-7339152) */
ffa039f8:	00 e1 84 03 	R0.L = 0x384;		/* (900)	R0=0xff900384(-7339132) */
ffa039fc:	ff e3 26 e7 	CALL 0xffa00848 <_printf_int>;
ffa03a00:	11 20       	JUMP.S 0xffa03a22 <_DHCP_parse+0x17e>;
ffa03a02:	b9 e4 fa ff 	R1 = B[FP + -0x6] (Z);
ffa03a06:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900384(-7339132) */
ffa03a0a:	00 e1 9c 03 	R0.L = 0x39c;		/* (924)	R0=0xff90039c(-7339108) */
ffa03a0e:	ff e3 1d e7 	CALL 0xffa00848 <_printf_int>;
ffa03a12:	b9 e4 fb ff 	R1 = B[FP + -0x5] (Z);
ffa03a16:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90039c(-7339108) */
ffa03a1a:	00 e1 b0 03 	R0.L = 0x3b0;		/* (944)	R0=0xff9003b0(-7339088) */
ffa03a1e:	ff e3 15 e7 	CALL 0xffa00848 <_printf_int>;
ffa03a22:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003b0(-7339088) */
ffa03a26:	00 e1 d4 01 	R0.L = 0x1d4;		/* (468)	R0=0xff9001d4(-7339564) */
ffa03a2a:	ff e3 05 e7 	CALL 0xffa00834 <_printf_str>;
ffa03a2e:	b8 e4 fb ff 	R0 = B[FP + -0x5] (Z);
ffa03a32:	08 30       	R1 = R0;
ffa03a34:	b8 a0       	R0 = [FP + 0x8];
ffa03a36:	08 50       	R0 = R0 + R1;
ffa03a38:	b8 b0       	[FP + 0x8] = R0;
ffa03a3a:	b9 e4 fb ff 	R1 = B[FP + -0x5] (Z);
ffa03a3e:	f0 b9       	R0 = [FP -0x4];
ffa03a40:	08 52       	R0 = R0 - R1;
ffa03a42:	f8 67       	R0 += -0x1;		/* ( -1) */
ffa03a44:	f0 bb       	[FP -0x4] = R0;
ffa03a46:	f0 b9       	R0 = [FP -0x4];
ffa03a48:	08 0d       	CC = R0 <= 0x1;
ffa03a4a:	34 13       	IF !CC JUMP 0xffa038b2 <_DHCP_parse+0xe>;
ffa03a4c:	01 e8 00 00 	UNLINK;
ffa03a50:	10 00       	RTS;
	...

ffa03a54 <_ARP_init>:
ffa03a54:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa03a58:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a5a:	e0 bb       	[FP -0x8] = R0;
ffa03a5c:	55 20       	JUMP.S 0xffa03b06 <_ARP_init+0xb2>;
ffa03a5e:	e1 b9       	R1 = [FP -0x8];
ffa03a60:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9010f5(-7335691) */
ffa03a64:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa03a68:	01 30       	R0 = R1;
ffa03a6a:	10 4f       	R0 <<= 0x2;
ffa03a6c:	08 50       	R0 = R0 + R1;
ffa03a6e:	10 4f       	R0 <<= 0x2;
ffa03a70:	10 50       	R0 = R0 + R2;
ffa03a72:	10 32       	P2 = R0;
ffa03a74:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a76:	10 93       	[P2] = R0;
ffa03a78:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a7a:	f0 bb       	[FP -0x4] = R0;
ffa03a7c:	14 20       	JUMP.S 0xffa03aa4 <_ARP_init+0x50>;
ffa03a7e:	e1 b9       	R1 = [FP -0x8];
ffa03a80:	f3 b9       	R3 = [FP -0x4];
ffa03a82:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa03a86:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa03a8a:	01 30       	R0 = R1;
ffa03a8c:	10 4f       	R0 <<= 0x2;
ffa03a8e:	08 50       	R0 = R0 + R1;
ffa03a90:	10 4f       	R0 <<= 0x2;
ffa03a92:	10 50       	R0 = R0 + R2;
ffa03a94:	18 50       	R0 = R0 + R3;
ffa03a96:	10 32       	P2 = R0;
ffa03a98:	22 6c       	P2 += 0x4;		/* (  4) */
ffa03a9a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a9c:	10 9b       	B[P2] = R0;
ffa03a9e:	f0 b9       	R0 = [FP -0x4];
ffa03aa0:	08 64       	R0 += 0x1;		/* (  1) */
ffa03aa2:	f0 bb       	[FP -0x4] = R0;
ffa03aa4:	f0 b9       	R0 = [FP -0x4];
ffa03aa6:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03aa8:	08 09       	CC = R0 <= R1;
ffa03aaa:	ea 1b       	IF CC JUMP 0xffa03a7e <_ARP_init+0x2a>;
ffa03aac:	e1 b9       	R1 = [FP -0x8];
ffa03aae:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa03ab2:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa03ab6:	01 30       	R0 = R1;
ffa03ab8:	10 4f       	R0 <<= 0x2;
ffa03aba:	08 50       	R0 = R0 + R1;
ffa03abc:	10 4f       	R0 <<= 0x2;
ffa03abe:	10 50       	R0 = R0 + R2;
ffa03ac0:	10 32       	P2 = R0;
ffa03ac2:	42 6c       	P2 += 0x8;		/* (  8) */
ffa03ac4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ac6:	50 b4       	W[P2 + 0x2] = R0;
ffa03ac8:	e1 b9       	R1 = [FP -0x8];
ffa03aca:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa03ace:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa03ad2:	01 30       	R0 = R1;
ffa03ad4:	10 4f       	R0 <<= 0x2;
ffa03ad6:	08 50       	R0 = R0 + R1;
ffa03ad8:	10 4f       	R0 <<= 0x2;
ffa03ada:	10 50       	R0 = R0 + R2;
ffa03adc:	10 32       	P2 = R0;
ffa03ade:	62 6c       	P2 += 0xc;		/* ( 12) */
ffa03ae0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ae2:	10 93       	[P2] = R0;
ffa03ae4:	e1 b9       	R1 = [FP -0x8];
ffa03ae6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa03aea:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa03aee:	01 30       	R0 = R1;
ffa03af0:	10 4f       	R0 <<= 0x2;
ffa03af2:	08 50       	R0 = R0 + R1;
ffa03af4:	10 4f       	R0 <<= 0x2;
ffa03af6:	10 50       	R0 = R0 + R2;
ffa03af8:	10 32       	P2 = R0;
ffa03afa:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa03afc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03afe:	10 93       	[P2] = R0;
ffa03b00:	e0 b9       	R0 = [FP -0x8];
ffa03b02:	08 64       	R0 += 0x1;		/* (  1) */
ffa03b04:	e0 bb       	[FP -0x8] = R0;
ffa03b06:	e0 b9       	R0 = [FP -0x8];
ffa03b08:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa03b0a:	08 09       	CC = R0 <= R1;
ffa03b0c:	a9 1b       	IF CC JUMP 0xffa03a5e <_ARP_init+0xa>;
ffa03b0e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_NetDHCPserv> */
ffa03b12:	0a e1 78 0c 	P2.L = 0xc78;		/* (3192)	P2=0xff900c78 <_NetArpLut_age> */
ffa03b16:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa03b1a:	10 97       	W[P2] = R0;
ffa03b1c:	01 e8 00 00 	UNLINK;
ffa03b20:	10 00       	RTS;
	...

ffa03b24 <_ARP_tx>:
ffa03b24:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa03b28:	b8 b0       	[FP + 0x8] = R0;
ffa03b2a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c78 <_NetArpLut_age> */
ffa03b2e:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa03b32:	50 95       	R0 = W[P2] (X);
ffa03b34:	c0 42       	R0 = R0.L (Z);
ffa03b36:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900009(-7340023) */
ffa03b3a:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa03b3e:	10 4f       	R0 <<= 0x2;
ffa03b40:	08 50       	R0 = R0 + R1;
ffa03b42:	10 32       	P2 = R0;
ffa03b44:	52 91       	P2 = [P2];
ffa03b46:	90 a1       	R0 = [P2 + 0x18];
ffa03b48:	f0 bb       	[FP -0x4] = R0;
ffa03b4a:	fa b9       	P2 = [FP -0x4];
ffa03b4c:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa03b4e:	10 97       	W[P2] = R0;
ffa03b50:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b52:	e0 bb       	[FP -0x8] = R0;
ffa03b54:	0b 20       	JUMP.S 0xffa03b6a <_ARP_tx+0x46>;
ffa03b56:	e1 b9       	R1 = [FP -0x8];
ffa03b58:	f0 b9       	R0 = [FP -0x4];
ffa03b5a:	08 50       	R0 = R0 + R1;
ffa03b5c:	10 32       	P2 = R0;
ffa03b5e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03b60:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa03b64:	e0 b9       	R0 = [FP -0x8];
ffa03b66:	08 64       	R0 += 0x1;		/* (  1) */
ffa03b68:	e0 bb       	[FP -0x8] = R0;
ffa03b6a:	e0 b9       	R0 = [FP -0x8];
ffa03b6c:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03b6e:	08 09       	CC = R0 <= R1;
ffa03b70:	f3 1b       	IF CC JUMP 0xffa03b56 <_ARP_tx+0x32>;
ffa03b72:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b74:	e0 bb       	[FP -0x8] = R0;
ffa03b76:	12 20       	JUMP.S 0xffa03b9a <_ARP_tx+0x76>;
ffa03b78:	e2 b9       	R2 = [FP -0x8];
ffa03b7a:	e1 b9       	R1 = [FP -0x8];
ffa03b7c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03b80:	00 e1 64 0c 	R0.L = 0xc64;		/* (3172)	R0=0xff900c64 <_NetOurMAC>(-7336860) */
ffa03b84:	08 50       	R0 = R0 + R1;
ffa03b86:	10 32       	P2 = R0;
ffa03b88:	51 99       	R1 = B[P2] (X);
ffa03b8a:	f0 b9       	R0 = [FP -0x4];
ffa03b8c:	02 50       	R0 = R2 + R0;
ffa03b8e:	10 32       	P2 = R0;
ffa03b90:	42 6c       	P2 += 0x8;		/* (  8) */
ffa03b92:	11 9b       	B[P2] = R1;
ffa03b94:	e0 b9       	R0 = [FP -0x8];
ffa03b96:	08 64       	R0 += 0x1;		/* (  1) */
ffa03b98:	e0 bb       	[FP -0x8] = R0;
ffa03b9a:	e0 b9       	R0 = [FP -0x8];
ffa03b9c:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03b9e:	08 09       	CC = R0 <= R1;
ffa03ba0:	ec 1b       	IF CC JUMP 0xffa03b78 <_ARP_tx+0x54>;
ffa03ba2:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa03ba6:	ff e3 1f f8 	CALL 0xffa02be4 <_htons>;
ffa03baa:	fa b9       	P2 = [FP -0x4];
ffa03bac:	d0 b5       	W[P2 + 0xe] = R0;
ffa03bae:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03bb0:	ff e3 1a f8 	CALL 0xffa02be4 <_htons>;
ffa03bb4:	fa b9       	P2 = [FP -0x4];
ffa03bb6:	10 b6       	W[P2 + 0x10] = R0;
ffa03bb8:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03bbc:	ff e3 14 f8 	CALL 0xffa02be4 <_htons>;
ffa03bc0:	fa b9       	P2 = [FP -0x4];
ffa03bc2:	50 b6       	W[P2 + 0x12] = R0;
ffa03bc4:	fa b9       	P2 = [FP -0x4];
ffa03bc6:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03bc8:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa03bcc:	fa b9       	P2 = [FP -0x4];
ffa03bce:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03bd0:	90 e6 15 00 	B[P2 + 0x15] = R0;
ffa03bd4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03bd6:	ff e3 07 f8 	CALL 0xffa02be4 <_htons>;
ffa03bda:	fa b9       	P2 = [FP -0x4];
ffa03bdc:	d0 b6       	W[P2 + 0x16] = R0;
ffa03bde:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03be0:	e0 bb       	[FP -0x8] = R0;
ffa03be2:	1a 20       	JUMP.S 0xffa03c16 <_ARP_tx+0xf2>;
ffa03be4:	e2 b9       	R2 = [FP -0x8];
ffa03be6:	e1 b9       	R1 = [FP -0x8];
ffa03be8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03bec:	00 e1 64 0c 	R0.L = 0xc64;		/* (3172)	R0=0xff900c64 <_NetOurMAC>(-7336860) */
ffa03bf0:	08 50       	R0 = R0 + R1;
ffa03bf2:	10 32       	P2 = R0;
ffa03bf4:	51 99       	R1 = B[P2] (X);
ffa03bf6:	f0 b9       	R0 = [FP -0x4];
ffa03bf8:	02 50       	R0 = R2 + R0;
ffa03bfa:	10 32       	P2 = R0;
ffa03bfc:	c2 6c       	P2 += 0x18;		/* ( 24) */
ffa03bfe:	11 9b       	B[P2] = R1;
ffa03c00:	e1 b9       	R1 = [FP -0x8];
ffa03c02:	f0 b9       	R0 = [FP -0x4];
ffa03c04:	01 50       	R0 = R1 + R0;
ffa03c06:	10 32       	P2 = R0;
ffa03c08:	02 6d       	P2 += 0x20;		/* ( 32) */
ffa03c0a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c0c:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa03c10:	e0 b9       	R0 = [FP -0x8];
ffa03c12:	08 64       	R0 += 0x1;		/* (  1) */
ffa03c14:	e0 bb       	[FP -0x8] = R0;
ffa03c16:	e0 b9       	R0 = [FP -0x8];
ffa03c18:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03c1a:	08 09       	CC = R0 <= R1;
ffa03c1c:	e4 1b       	IF CC JUMP 0xffa03be4 <_ARP_tx+0xc0>;
ffa03c1e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa03c22:	0a e1 70 0c 	P2.L = 0xc70;		/* (3184)	P2=0xff900c70 <_NetOurIP> */
ffa03c26:	10 91       	R0 = [P2];
ffa03c28:	fa b9       	P2 = [FP -0x4];
ffa03c2a:	90 e6 1e 00 	B[P2 + 0x1e] = R0;
ffa03c2e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c70 <_NetOurIP> */
ffa03c32:	0a e1 70 0c 	P2.L = 0xc70;		/* (3184)	P2=0xff900c70 <_NetOurIP> */
ffa03c36:	10 91       	R0 = [P2];
ffa03c38:	40 4e       	R0 >>= 0x8;
ffa03c3a:	fa b9       	P2 = [FP -0x4];
ffa03c3c:	90 e6 1f 00 	B[P2 + 0x1f] = R0;
ffa03c40:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c70 <_NetOurIP> */
ffa03c44:	0a e1 70 0c 	P2.L = 0xc70;		/* (3184)	P2=0xff900c70 <_NetOurIP> */
ffa03c48:	10 91       	R0 = [P2];
ffa03c4a:	80 4e       	R0 >>= 0x10;
ffa03c4c:	fa b9       	P2 = [FP -0x4];
ffa03c4e:	90 e6 20 00 	B[P2 + 0x20] = R0;
ffa03c52:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c70 <_NetOurIP> */
ffa03c56:	0a e1 70 0c 	P2.L = 0xc70;		/* (3184)	P2=0xff900c70 <_NetOurIP> */
ffa03c5a:	10 91       	R0 = [P2];
ffa03c5c:	c0 4e       	R0 >>= 0x18;
ffa03c5e:	fa b9       	P2 = [FP -0x4];
ffa03c60:	90 e6 21 00 	B[P2 + 0x21] = R0;
ffa03c64:	fa b9       	P2 = [FP -0x4];
ffa03c66:	b8 a0       	R0 = [FP + 0x8];
ffa03c68:	90 b2       	[P2 + 0x28] = R0;
ffa03c6a:	ff e3 4b f0 	CALL 0xffa01d00 <_bfin_EMAC_send_nocopy>;
ffa03c6e:	01 e8 00 00 	UNLINK;
ffa03c72:	10 00       	RTS;

ffa03c74 <_ARP_rx>:
ffa03c74:	78 05       	[--SP] = (R7:7);
ffa03c76:	00 e8 09 00 	LINK 0x24;		/* (36) */
ffa03c7a:	f8 b0       	[FP + 0xc] = R0;
ffa03c7c:	39 b1       	[FP + 0x10] = R1;
ffa03c7e:	f8 a0       	R0 = [FP + 0xc];
ffa03c80:	c0 bb       	[FP -0x10] = R0;
ffa03c82:	ca b9       	P2 = [FP -0x10];
ffa03c84:	d0 a9       	R0 = W[P2 + 0xe] (X);
ffa03c86:	c0 42       	R0 = R0.L (Z);
ffa03c88:	ff e3 ae f7 	CALL 0xffa02be4 <_htons>;
ffa03c8c:	c0 42       	R0 = R0.L (Z);
ffa03c8e:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa03c92:	08 08       	CC = R0 == R1;
ffa03c94:	ac 11       	IF !CC JUMP 0xffa03fec <_ARP_rx+0x378>;
ffa03c96:	38 a1       	R0 = [FP + 0x10];
ffa03c98:	59 61       	R1 = 0x2b (X);		/*		R1=0x2b( 43) */
ffa03c9a:	08 0a       	CC = R0 <= R1 (IU);
ffa03c9c:	a8 19       	IF CC JUMP 0xffa03fec <_ARP_rx+0x378>;
ffa03c9e:	00 00       	NOP;
ffa03ca0:	00 00       	NOP;
ffa03ca2:	ca b9       	P2 = [FP -0x10];
ffa03ca4:	17 aa       	R7 = W[P2 + 0x10] (X);
ffa03ca6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03ca8:	ff e3 9e f7 	CALL 0xffa02be4 <_htons>;
ffa03cac:	f9 42       	R1 = R7.L (Z);
ffa03cae:	c0 42       	R0 = R0.L (Z);
ffa03cb0:	01 08       	CC = R1 == R0;
ffa03cb2:	9d 11       	IF !CC JUMP 0xffa03fec <_ARP_rx+0x378>;
ffa03cb4:	00 00       	NOP;
ffa03cb6:	00 00       	NOP;
ffa03cb8:	ca b9       	P2 = [FP -0x10];
ffa03cba:	57 aa       	R7 = W[P2 + 0x12] (X);
ffa03cbc:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03cc0:	ff e3 92 f7 	CALL 0xffa02be4 <_htons>;
ffa03cc4:	f9 42       	R1 = R7.L (Z);
ffa03cc6:	c0 42       	R0 = R0.L (Z);
ffa03cc8:	01 08       	CC = R1 == R0;
ffa03cca:	91 11       	IF !CC JUMP 0xffa03fec <_ARP_rx+0x378>;
ffa03ccc:	00 00       	NOP;
ffa03cce:	00 00       	NOP;
ffa03cd0:	ca b9       	P2 = [FP -0x10];
ffa03cd2:	90 e5 14 00 	R0 = B[P2 + 0x14] (X);
ffa03cd6:	40 43       	R0 = R0.B (Z);
ffa03cd8:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa03cda:	08 08       	CC = R0 == R1;
ffa03cdc:	88 11       	IF !CC JUMP 0xffa03fec <_ARP_rx+0x378>;
ffa03cde:	00 00       	NOP;
ffa03ce0:	00 00       	NOP;
ffa03ce2:	ca b9       	P2 = [FP -0x10];
ffa03ce4:	90 e5 15 00 	R0 = B[P2 + 0x15] (X);
ffa03ce8:	40 43       	R0 = R0.B (Z);
ffa03cea:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa03cec:	08 08       	CC = R0 == R1;
ffa03cee:	7f 11       	IF !CC JUMP 0xffa03fec <_ARP_rx+0x378>;
ffa03cf0:	00 00       	NOP;
ffa03cf2:	00 00       	NOP;
ffa03cf4:	ca b9       	P2 = [FP -0x10];
ffa03cf6:	d7 aa       	R7 = W[P2 + 0x16] (X);
ffa03cf8:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03cfa:	ff e3 75 f7 	CALL 0xffa02be4 <_htons>;
ffa03cfe:	f9 42       	R1 = R7.L (Z);
ffa03d00:	c0 42       	R0 = R0.L (Z);
ffa03d02:	01 08       	CC = R1 == R0;
ffa03d04:	75 10       	IF !CC JUMP 0xffa03dee <_ARP_rx+0x17a>;
ffa03d06:	00 00       	NOP;
ffa03d08:	00 00       	NOP;
ffa03d0a:	ca b9       	P2 = [FP -0x10];
ffa03d0c:	91 e5 22 00 	R1 = B[P2 + 0x22] (X);
ffa03d10:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c70 <_NetOurIP> */
ffa03d14:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetOurMAC> */
ffa03d18:	50 99       	R0 = B[P2] (X);
ffa03d1a:	49 43       	R1 = R1.B (Z);
ffa03d1c:	40 43       	R0 = R0.B (Z);
ffa03d1e:	01 08       	CC = R1 == R0;
ffa03d20:	67 10       	IF !CC JUMP 0xffa03dee <_ARP_rx+0x17a>;
ffa03d22:	00 00       	NOP;
ffa03d24:	00 00       	NOP;
ffa03d26:	ca b9       	P2 = [FP -0x10];
ffa03d28:	91 e5 23 00 	R1 = B[P2 + 0x23] (X);
ffa03d2c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetOurMAC> */
ffa03d30:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetOurMAC> */
ffa03d34:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa03d38:	49 43       	R1 = R1.B (Z);
ffa03d3a:	40 43       	R0 = R0.B (Z);
ffa03d3c:	01 08       	CC = R1 == R0;
ffa03d3e:	58 10       	IF !CC JUMP 0xffa03dee <_ARP_rx+0x17a>;
ffa03d40:	00 00       	NOP;
ffa03d42:	00 00       	NOP;
ffa03d44:	ca b9       	P2 = [FP -0x10];
ffa03d46:	91 e5 24 00 	R1 = B[P2 + 0x24] (X);
ffa03d4a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetOurMAC> */
ffa03d4e:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetOurMAC> */
ffa03d52:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa03d56:	49 43       	R1 = R1.B (Z);
ffa03d58:	40 43       	R0 = R0.B (Z);
ffa03d5a:	01 08       	CC = R1 == R0;
ffa03d5c:	49 10       	IF !CC JUMP 0xffa03dee <_ARP_rx+0x17a>;
ffa03d5e:	00 00       	NOP;
ffa03d60:	00 00       	NOP;
ffa03d62:	ca b9       	P2 = [FP -0x10];
ffa03d64:	91 e5 25 00 	R1 = B[P2 + 0x25] (X);
ffa03d68:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetOurMAC> */
ffa03d6c:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetOurMAC> */
ffa03d70:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa03d74:	49 43       	R1 = R1.B (Z);
ffa03d76:	40 43       	R0 = R0.B (Z);
ffa03d78:	01 08       	CC = R1 == R0;
ffa03d7a:	3a 10       	IF !CC JUMP 0xffa03dee <_ARP_rx+0x17a>;
ffa03d7c:	00 00       	NOP;
ffa03d7e:	00 00       	NOP;
ffa03d80:	ca b9       	P2 = [FP -0x10];
ffa03d82:	91 e5 26 00 	R1 = B[P2 + 0x26] (X);
ffa03d86:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetOurMAC> */
ffa03d8a:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetOurMAC> */
ffa03d8e:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa03d92:	49 43       	R1 = R1.B (Z);
ffa03d94:	40 43       	R0 = R0.B (Z);
ffa03d96:	01 08       	CC = R1 == R0;
ffa03d98:	2b 10       	IF !CC JUMP 0xffa03dee <_ARP_rx+0x17a>;
ffa03d9a:	00 00       	NOP;
ffa03d9c:	00 00       	NOP;
ffa03d9e:	ca b9       	P2 = [FP -0x10];
ffa03da0:	91 e5 27 00 	R1 = B[P2 + 0x27] (X);
ffa03da4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetOurMAC> */
ffa03da8:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetOurMAC> */
ffa03dac:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa03db0:	49 43       	R1 = R1.B (Z);
ffa03db2:	40 43       	R0 = R0.B (Z);
ffa03db4:	01 08       	CC = R1 == R0;
ffa03db6:	1c 10       	IF !CC JUMP 0xffa03dee <_ARP_rx+0x17a>;
ffa03db8:	c0 b9       	R0 = [FP -0x10];
ffa03dba:	f0 64       	R0 += 0x1e;		/* ( 30) */
ffa03dbc:	ff e3 5a f7 	CALL 0xffa02c70 <_pack4chars>;
ffa03dc0:	f0 bb       	[FP -0x4] = R0;
ffa03dc2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa03dc6:	00 e1 a8 04 	R0.L = 0x4a8;		/* (1192)	R0=0xff9004a8(-7338840) */
ffa03dca:	f1 b9       	R1 = [FP -0x4];
ffa03dcc:	ff e3 50 e7 	CALL 0xffa00c6c <_printf_ip>;
ffa03dd0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004a8(-7338840) */
ffa03dd4:	00 e1 cc 04 	R0.L = 0x4cc;		/* (1228)	R0=0xff9004cc(-7338804) */
ffa03dd8:	ff e3 2e e5 	CALL 0xffa00834 <_printf_str>;
ffa03ddc:	c0 b9       	R0 = [FP -0x10];
ffa03dde:	08 30       	R1 = R0;
ffa03de0:	c1 64       	R1 += 0x18;		/* ( 24) */
ffa03de2:	f0 b9       	R0 = [FP -0x4];
ffa03de4:	00 e3 6c 01 	CALL 0xffa040bc <_ARP_lut_add>;
ffa03de8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03dea:	b0 bb       	[FP -0x14] = R0;
ffa03dec:	02 21       	JUMP.S 0xffa03ff0 <_ARP_rx+0x37c>;
ffa03dee:	ca b9       	P2 = [FP -0x10];
ffa03df0:	17 aa       	R7 = W[P2 + 0x10] (X);
ffa03df2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03df4:	ff e3 f8 f6 	CALL 0xffa02be4 <_htons>;
ffa03df8:	f9 42       	R1 = R7.L (Z);
ffa03dfa:	c0 42       	R0 = R0.L (Z);
ffa03dfc:	01 08       	CC = R1 == R0;
ffa03dfe:	f7 10       	IF !CC JUMP 0xffa03fec <_ARP_rx+0x378>;
ffa03e00:	00 00       	NOP;
ffa03e02:	00 00       	NOP;
ffa03e04:	ca b9       	P2 = [FP -0x10];
ffa03e06:	57 aa       	R7 = W[P2 + 0x12] (X);
ffa03e08:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03e0c:	ff e3 ec f6 	CALL 0xffa02be4 <_htons>;
ffa03e10:	f9 42       	R1 = R7.L (Z);
ffa03e12:	c0 42       	R0 = R0.L (Z);
ffa03e14:	01 08       	CC = R1 == R0;
ffa03e16:	eb 10       	IF !CC JUMP 0xffa03fec <_ARP_rx+0x378>;
ffa03e18:	00 00       	NOP;
ffa03e1a:	00 00       	NOP;
ffa03e1c:	ca b9       	P2 = [FP -0x10];
ffa03e1e:	90 e5 14 00 	R0 = B[P2 + 0x14] (X);
ffa03e22:	40 43       	R0 = R0.B (Z);
ffa03e24:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa03e26:	08 08       	CC = R0 == R1;
ffa03e28:	e2 10       	IF !CC JUMP 0xffa03fec <_ARP_rx+0x378>;
ffa03e2a:	00 00       	NOP;
ffa03e2c:	00 00       	NOP;
ffa03e2e:	ca b9       	P2 = [FP -0x10];
ffa03e30:	90 e5 15 00 	R0 = B[P2 + 0x15] (X);
ffa03e34:	40 43       	R0 = R0.B (Z);
ffa03e36:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa03e38:	08 08       	CC = R0 == R1;
ffa03e3a:	d9 10       	IF !CC JUMP 0xffa03fec <_ARP_rx+0x378>;
ffa03e3c:	00 00       	NOP;
ffa03e3e:	00 00       	NOP;
ffa03e40:	ca b9       	P2 = [FP -0x10];
ffa03e42:	d7 aa       	R7 = W[P2 + 0x16] (X);
ffa03e44:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03e46:	ff e3 cf f6 	CALL 0xffa02be4 <_htons>;
ffa03e4a:	f9 42       	R1 = R7.L (Z);
ffa03e4c:	c0 42       	R0 = R0.L (Z);
ffa03e4e:	01 08       	CC = R1 == R0;
ffa03e50:	ce 10       	IF !CC JUMP 0xffa03fec <_ARP_rx+0x378>;
ffa03e52:	00 00       	NOP;
ffa03e54:	00 00       	NOP;
ffa03e56:	ca b9       	P2 = [FP -0x10];
ffa03e58:	91 a2       	R1 = [P2 + 0x28];
ffa03e5a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetOurMAC> */
ffa03e5e:	0a e1 70 0c 	P2.L = 0xc70;		/* (3184)	P2=0xff900c70 <_NetOurIP> */
ffa03e62:	10 91       	R0 = [P2];
ffa03e64:	01 08       	CC = R1 == R0;
ffa03e66:	c3 10       	IF !CC JUMP 0xffa03fec <_ARP_rx+0x378>;
ffa03e68:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c70 <_NetOurIP> */
ffa03e6c:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa03e70:	50 95       	R0 = W[P2] (X);
ffa03e72:	c0 42       	R0 = R0.L (Z);
ffa03e74:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900004(-7340028) */
ffa03e78:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa03e7c:	10 4f       	R0 <<= 0x2;
ffa03e7e:	08 50       	R0 = R0 + R1;
ffa03e80:	10 32       	P2 = R0;
ffa03e82:	52 91       	P2 = [P2];
ffa03e84:	90 a1       	R0 = [P2 + 0x18];
ffa03e86:	d0 bb       	[FP -0xc] = R0;
ffa03e88:	da b9       	P2 = [FP -0xc];
ffa03e8a:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa03e8c:	10 97       	W[P2] = R0;
ffa03e8e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03e90:	e0 bb       	[FP -0x8] = R0;
ffa03e92:	10 20       	JUMP.S 0xffa03eb2 <_ARP_rx+0x23e>;
ffa03e94:	e2 b9       	R2 = [FP -0x8];
ffa03e96:	e1 b9       	R1 = [FP -0x8];
ffa03e98:	c0 b9       	R0 = [FP -0x10];
ffa03e9a:	01 50       	R0 = R1 + R0;
ffa03e9c:	10 32       	P2 = R0;
ffa03e9e:	42 6c       	P2 += 0x8;		/* (  8) */
ffa03ea0:	51 99       	R1 = B[P2] (X);
ffa03ea2:	d0 b9       	R0 = [FP -0xc];
ffa03ea4:	10 50       	R0 = R0 + R2;
ffa03ea6:	10 32       	P2 = R0;
ffa03ea8:	91 e6 02 00 	B[P2 + 0x2] = R1;
ffa03eac:	e0 b9       	R0 = [FP -0x8];
ffa03eae:	08 64       	R0 += 0x1;		/* (  1) */
ffa03eb0:	e0 bb       	[FP -0x8] = R0;
ffa03eb2:	e0 b9       	R0 = [FP -0x8];
ffa03eb4:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03eb6:	08 09       	CC = R0 <= R1;
ffa03eb8:	ee 1b       	IF CC JUMP 0xffa03e94 <_ARP_rx+0x220>;
ffa03eba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ebc:	e0 bb       	[FP -0x8] = R0;
ffa03ebe:	12 20       	JUMP.S 0xffa03ee2 <_ARP_rx+0x26e>;
ffa03ec0:	e2 b9       	R2 = [FP -0x8];
ffa03ec2:	e1 b9       	R1 = [FP -0x8];
ffa03ec4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03ec8:	00 e1 64 0c 	R0.L = 0xc64;		/* (3172)	R0=0xff900c64 <_NetOurMAC>(-7336860) */
ffa03ecc:	08 50       	R0 = R0 + R1;
ffa03ece:	10 32       	P2 = R0;
ffa03ed0:	51 99       	R1 = B[P2] (X);
ffa03ed2:	d0 b9       	R0 = [FP -0xc];
ffa03ed4:	02 50       	R0 = R2 + R0;
ffa03ed6:	10 32       	P2 = R0;
ffa03ed8:	42 6c       	P2 += 0x8;		/* (  8) */
ffa03eda:	11 9b       	B[P2] = R1;
ffa03edc:	e0 b9       	R0 = [FP -0x8];
ffa03ede:	08 64       	R0 += 0x1;		/* (  1) */
ffa03ee0:	e0 bb       	[FP -0x8] = R0;
ffa03ee2:	e0 b9       	R0 = [FP -0x8];
ffa03ee4:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03ee6:	08 09       	CC = R0 <= R1;
ffa03ee8:	ec 1b       	IF CC JUMP 0xffa03ec0 <_ARP_rx+0x24c>;
ffa03eea:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa03eee:	ff e3 7b f6 	CALL 0xffa02be4 <_htons>;
ffa03ef2:	da b9       	P2 = [FP -0xc];
ffa03ef4:	d0 b5       	W[P2 + 0xe] = R0;
ffa03ef6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03ef8:	ff e3 76 f6 	CALL 0xffa02be4 <_htons>;
ffa03efc:	da b9       	P2 = [FP -0xc];
ffa03efe:	10 b6       	W[P2 + 0x10] = R0;
ffa03f00:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03f04:	ff e3 70 f6 	CALL 0xffa02be4 <_htons>;
ffa03f08:	da b9       	P2 = [FP -0xc];
ffa03f0a:	50 b6       	W[P2 + 0x12] = R0;
ffa03f0c:	da b9       	P2 = [FP -0xc];
ffa03f0e:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03f10:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa03f14:	da b9       	P2 = [FP -0xc];
ffa03f16:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03f18:	90 e6 15 00 	B[P2 + 0x15] = R0;
ffa03f1c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03f1e:	ff e3 63 f6 	CALL 0xffa02be4 <_htons>;
ffa03f22:	da b9       	P2 = [FP -0xc];
ffa03f24:	d0 b6       	W[P2 + 0x16] = R0;
ffa03f26:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03f28:	e0 bb       	[FP -0x8] = R0;
ffa03f2a:	1f 20       	JUMP.S 0xffa03f68 <_ARP_rx+0x2f4>;
ffa03f2c:	e2 b9       	R2 = [FP -0x8];
ffa03f2e:	e1 b9       	R1 = [FP -0x8];
ffa03f30:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03f34:	00 e1 64 0c 	R0.L = 0xc64;		/* (3172)	R0=0xff900c64 <_NetOurMAC>(-7336860) */
ffa03f38:	08 50       	R0 = R0 + R1;
ffa03f3a:	10 32       	P2 = R0;
ffa03f3c:	51 99       	R1 = B[P2] (X);
ffa03f3e:	d0 b9       	R0 = [FP -0xc];
ffa03f40:	02 50       	R0 = R2 + R0;
ffa03f42:	10 32       	P2 = R0;
ffa03f44:	c2 6c       	P2 += 0x18;		/* ( 24) */
ffa03f46:	11 9b       	B[P2] = R1;
ffa03f48:	e2 b9       	R2 = [FP -0x8];
ffa03f4a:	e1 b9       	R1 = [FP -0x8];
ffa03f4c:	c0 b9       	R0 = [FP -0x10];
ffa03f4e:	01 50       	R0 = R1 + R0;
ffa03f50:	10 32       	P2 = R0;
ffa03f52:	c2 6c       	P2 += 0x18;		/* ( 24) */
ffa03f54:	51 99       	R1 = B[P2] (X);
ffa03f56:	d0 b9       	R0 = [FP -0xc];
ffa03f58:	02 50       	R0 = R2 + R0;
ffa03f5a:	10 32       	P2 = R0;
ffa03f5c:	02 6d       	P2 += 0x20;		/* ( 32) */
ffa03f5e:	91 e6 02 00 	B[P2 + 0x2] = R1;
ffa03f62:	e0 b9       	R0 = [FP -0x8];
ffa03f64:	08 64       	R0 += 0x1;		/* (  1) */
ffa03f66:	e0 bb       	[FP -0x8] = R0;
ffa03f68:	e0 b9       	R0 = [FP -0x8];
ffa03f6a:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03f6c:	08 09       	CC = R0 <= R1;
ffa03f6e:	df 1b       	IF CC JUMP 0xffa03f2c <_ARP_rx+0x2b8>;
ffa03f70:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa03f74:	0a e1 70 0c 	P2.L = 0xc70;		/* (3184)	P2=0xff900c70 <_NetOurIP> */
ffa03f78:	10 91       	R0 = [P2];
ffa03f7a:	da b9       	P2 = [FP -0xc];
ffa03f7c:	90 e6 1e 00 	B[P2 + 0x1e] = R0;
ffa03f80:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c70 <_NetOurIP> */
ffa03f84:	0a e1 70 0c 	P2.L = 0xc70;		/* (3184)	P2=0xff900c70 <_NetOurIP> */
ffa03f88:	10 91       	R0 = [P2];
ffa03f8a:	40 4e       	R0 >>= 0x8;
ffa03f8c:	da b9       	P2 = [FP -0xc];
ffa03f8e:	90 e6 1f 00 	B[P2 + 0x1f] = R0;
ffa03f92:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c70 <_NetOurIP> */
ffa03f96:	0a e1 70 0c 	P2.L = 0xc70;		/* (3184)	P2=0xff900c70 <_NetOurIP> */
ffa03f9a:	10 91       	R0 = [P2];
ffa03f9c:	80 4e       	R0 >>= 0x10;
ffa03f9e:	da b9       	P2 = [FP -0xc];
ffa03fa0:	90 e6 20 00 	B[P2 + 0x20] = R0;
ffa03fa4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c70 <_NetOurIP> */
ffa03fa8:	0a e1 70 0c 	P2.L = 0xc70;		/* (3184)	P2=0xff900c70 <_NetOurIP> */
ffa03fac:	10 91       	R0 = [P2];
ffa03fae:	c0 4e       	R0 >>= 0x18;
ffa03fb0:	da b9       	P2 = [FP -0xc];
ffa03fb2:	90 e6 21 00 	B[P2 + 0x21] = R0;
ffa03fb6:	ca b9       	P2 = [FP -0x10];
ffa03fb8:	90 e5 1e 00 	R0 = B[P2 + 0x1e] (X);
ffa03fbc:	43 43       	R3 = R0.B (Z);
ffa03fbe:	ca b9       	P2 = [FP -0x10];
ffa03fc0:	90 e5 1f 00 	R0 = B[P2 + 0x1f] (X);
ffa03fc4:	41 43       	R1 = R0.B (Z);
ffa03fc6:	ca b9       	P2 = [FP -0x10];
ffa03fc8:	90 e5 20 00 	R0 = B[P2 + 0x20] (X);
ffa03fcc:	42 43       	R2 = R0.B (Z);
ffa03fce:	ca b9       	P2 = [FP -0x10];
ffa03fd0:	90 e5 21 00 	R0 = B[P2 + 0x21] (X);
ffa03fd4:	40 43       	R0 = R0.B (Z);
ffa03fd6:	f0 b0       	[SP + 0xc] = R0;
ffa03fd8:	03 30       	R0 = R3;
ffa03fda:	ff e3 f3 f0 	CALL 0xffa021c0 <_FormatIPAddress>;
ffa03fde:	da b9       	P2 = [FP -0xc];
ffa03fe0:	90 b2       	[P2 + 0x28] = R0;
ffa03fe2:	ff e3 8f ee 	CALL 0xffa01d00 <_bfin_EMAC_send_nocopy>;
ffa03fe6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03fe8:	b0 bb       	[FP -0x14] = R0;
ffa03fea:	03 20       	JUMP.S 0xffa03ff0 <_ARP_rx+0x37c>;
ffa03fec:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03fee:	b1 bb       	[FP -0x14] = R1;
ffa03ff0:	b0 b9       	R0 = [FP -0x14];
ffa03ff2:	01 e8 00 00 	UNLINK;
ffa03ff6:	38 05       	(R7:7) = [SP++];
ffa03ff8:	10 00       	RTS;
	...

ffa03ffc <_ARP_lut_find>:
ffa03ffc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa04000:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04002:	d0 bb       	[FP -0xc] = R0;
ffa04004:	12 20       	JUMP.S 0xffa04028 <_ARP_lut_find+0x2c>;
ffa04006:	d1 b9       	R1 = [FP -0xc];
ffa04008:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa0400c:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa04010:	01 30       	R0 = R1;
ffa04012:	10 4f       	R0 <<= 0x2;
ffa04014:	08 50       	R0 = R0 + R1;
ffa04016:	10 4f       	R0 <<= 0x2;
ffa04018:	10 50       	R0 = R0 + R2;
ffa0401a:	10 32       	P2 = R0;
ffa0401c:	10 91       	R0 = [P2];
ffa0401e:	00 0c       	CC = R0 == 0x0;
ffa04020:	08 18       	IF CC JUMP 0xffa04030 <_ARP_lut_find+0x34>;
ffa04022:	d0 b9       	R0 = [FP -0xc];
ffa04024:	08 64       	R0 += 0x1;		/* (  1) */
ffa04026:	d0 bb       	[FP -0xc] = R0;
ffa04028:	d0 b9       	R0 = [FP -0xc];
ffa0402a:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa0402c:	08 09       	CC = R0 <= R1;
ffa0402e:	ec 1b       	IF CC JUMP 0xffa04006 <_ARP_lut_find+0xa>;
ffa04030:	d0 b9       	R0 = [FP -0xc];
ffa04032:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa04034:	08 08       	CC = R0 == R1;
ffa04036:	3e 10       	IF !CC JUMP 0xffa040b2 <_ARP_lut_find+0xb6>;
ffa04038:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0403a:	d0 bb       	[FP -0xc] = R0;
ffa0403c:	d1 b9       	R1 = [FP -0xc];
ffa0403e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa04042:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa04046:	01 30       	R0 = R1;
ffa04048:	10 4f       	R0 <<= 0x2;
ffa0404a:	08 50       	R0 = R0 + R1;
ffa0404c:	10 4f       	R0 <<= 0x2;
ffa0404e:	10 50       	R0 = R0 + R2;
ffa04050:	10 32       	P2 = R0;
ffa04052:	42 6c       	P2 += 0x8;		/* (  8) */
ffa04054:	50 a8       	R0 = W[P2 + 0x2] (X);
ffa04056:	c0 42       	R0 = R0.L (Z);
ffa04058:	f0 bb       	[FP -0x4] = R0;
ffa0405a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0405c:	e0 bb       	[FP -0x8] = R0;
ffa0405e:	26 20       	JUMP.S 0xffa040aa <_ARP_lut_find+0xae>;
ffa04060:	e1 b9       	R1 = [FP -0x8];
ffa04062:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa04066:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa0406a:	01 30       	R0 = R1;
ffa0406c:	10 4f       	R0 <<= 0x2;
ffa0406e:	08 50       	R0 = R0 + R1;
ffa04070:	10 4f       	R0 <<= 0x2;
ffa04072:	10 50       	R0 = R0 + R2;
ffa04074:	10 32       	P2 = R0;
ffa04076:	42 6c       	P2 += 0x8;		/* (  8) */
ffa04078:	50 a8       	R0 = W[P2 + 0x2] (X);
ffa0407a:	c1 42       	R1 = R0.L (Z);
ffa0407c:	f0 b9       	R0 = [FP -0x4];
ffa0407e:	81 08       	CC = R1 < R0;
ffa04080:	12 10       	IF !CC JUMP 0xffa040a4 <_ARP_lut_find+0xa8>;
ffa04082:	e0 b9       	R0 = [FP -0x8];
ffa04084:	d0 bb       	[FP -0xc] = R0;
ffa04086:	e1 b9       	R1 = [FP -0x8];
ffa04088:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa0408c:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa04090:	01 30       	R0 = R1;
ffa04092:	10 4f       	R0 <<= 0x2;
ffa04094:	08 50       	R0 = R0 + R1;
ffa04096:	10 4f       	R0 <<= 0x2;
ffa04098:	10 50       	R0 = R0 + R2;
ffa0409a:	10 32       	P2 = R0;
ffa0409c:	42 6c       	P2 += 0x8;		/* (  8) */
ffa0409e:	50 a8       	R0 = W[P2 + 0x2] (X);
ffa040a0:	c0 42       	R0 = R0.L (Z);
ffa040a2:	f0 bb       	[FP -0x4] = R0;
ffa040a4:	e0 b9       	R0 = [FP -0x8];
ffa040a6:	08 64       	R0 += 0x1;		/* (  1) */
ffa040a8:	e0 bb       	[FP -0x8] = R0;
ffa040aa:	e0 b9       	R0 = [FP -0x8];
ffa040ac:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa040ae:	08 09       	CC = R0 <= R1;
ffa040b0:	d8 1b       	IF CC JUMP 0xffa04060 <_ARP_lut_find+0x64>;
ffa040b2:	d0 b9       	R0 = [FP -0xc];
ffa040b4:	01 e8 00 00 	UNLINK;
ffa040b8:	10 00       	RTS;
	...

ffa040bc <_ARP_lut_add>:
ffa040bc:	78 05       	[--SP] = (R7:7);
ffa040be:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa040c2:	f8 b0       	[FP + 0xc] = R0;
ffa040c4:	39 b1       	[FP + 0x10] = R1;
ffa040c6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa040c8:	f0 bb       	[FP -0x4] = R0;
ffa040ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa040cc:	d0 bb       	[FP -0xc] = R0;
ffa040ce:	15 20       	JUMP.S 0xffa040f8 <_ARP_lut_add+0x3c>;
ffa040d0:	d1 b9       	R1 = [FP -0xc];
ffa040d2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa040d6:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa040da:	01 30       	R0 = R1;
ffa040dc:	10 4f       	R0 <<= 0x2;
ffa040de:	08 50       	R0 = R0 + R1;
ffa040e0:	10 4f       	R0 <<= 0x2;
ffa040e2:	10 50       	R0 = R0 + R2;
ffa040e4:	10 32       	P2 = R0;
ffa040e6:	11 91       	R1 = [P2];
ffa040e8:	f8 a0       	R0 = [FP + 0xc];
ffa040ea:	01 08       	CC = R1 == R0;
ffa040ec:	03 10       	IF !CC JUMP 0xffa040f2 <_ARP_lut_add+0x36>;
ffa040ee:	d0 b9       	R0 = [FP -0xc];
ffa040f0:	f0 bb       	[FP -0x4] = R0;
ffa040f2:	d0 b9       	R0 = [FP -0xc];
ffa040f4:	08 64       	R0 += 0x1;		/* (  1) */
ffa040f6:	d0 bb       	[FP -0xc] = R0;
ffa040f8:	d0 b9       	R0 = [FP -0xc];
ffa040fa:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa040fc:	08 09       	CC = R0 <= R1;
ffa040fe:	04 10       	IF !CC JUMP 0xffa04106 <_ARP_lut_add+0x4a>;
ffa04100:	f0 b9       	R0 = [FP -0x4];
ffa04102:	80 0c       	CC = R0 < 0x0;
ffa04104:	e6 1b       	IF CC JUMP 0xffa040d0 <_ARP_lut_add+0x14>;
ffa04106:	f0 b9       	R0 = [FP -0x4];
ffa04108:	80 0c       	CC = R0 < 0x0;
ffa0410a:	04 10       	IF !CC JUMP 0xffa04112 <_ARP_lut_add+0x56>;
ffa0410c:	ff e3 78 ff 	CALL 0xffa03ffc <_ARP_lut_find>;
ffa04110:	f0 bb       	[FP -0x4] = R0;
ffa04112:	f1 b9       	R1 = [FP -0x4];
ffa04114:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa04118:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa0411c:	01 30       	R0 = R1;
ffa0411e:	10 4f       	R0 <<= 0x2;
ffa04120:	08 50       	R0 = R0 + R1;
ffa04122:	10 4f       	R0 <<= 0x2;
ffa04124:	10 50       	R0 = R0 + R2;
ffa04126:	10 32       	P2 = R0;
ffa04128:	f8 a0       	R0 = [FP + 0xc];
ffa0412a:	10 93       	[P2] = R0;
ffa0412c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0412e:	e0 bb       	[FP -0x8] = R0;
ffa04130:	19 20       	JUMP.S 0xffa04162 <_ARP_lut_add+0xa6>;
ffa04132:	f2 b9       	R2 = [FP -0x4];
ffa04134:	e7 b9       	R7 = [FP -0x8];
ffa04136:	e0 b9       	R0 = [FP -0x8];
ffa04138:	08 30       	R1 = R0;
ffa0413a:	38 a1       	R0 = [FP + 0x10];
ffa0413c:	41 50       	R1 = R1 + R0;
ffa0413e:	11 32       	P2 = R1;
ffa04140:	53 99       	R3 = B[P2] (X);
ffa04142:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900009(-7340023) */
ffa04146:	01 e1 7c 0c 	R1.L = 0xc7c;		/* (3196)	R1=0xff900c7c <_NetArpLut>(-7336836) */
ffa0414a:	02 30       	R0 = R2;
ffa0414c:	10 4f       	R0 <<= 0x2;
ffa0414e:	10 50       	R0 = R0 + R2;
ffa04150:	10 4f       	R0 <<= 0x2;
ffa04152:	08 50       	R0 = R0 + R1;
ffa04154:	38 50       	R0 = R0 + R7;
ffa04156:	10 32       	P2 = R0;
ffa04158:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0415a:	13 9b       	B[P2] = R3;
ffa0415c:	e0 b9       	R0 = [FP -0x8];
ffa0415e:	08 64       	R0 += 0x1;		/* (  1) */
ffa04160:	e0 bb       	[FP -0x8] = R0;
ffa04162:	e0 b9       	R0 = [FP -0x8];
ffa04164:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa04166:	08 09       	CC = R0 <= R1;
ffa04168:	e5 1b       	IF CC JUMP 0xffa04132 <_ARP_lut_add+0x76>;
ffa0416a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c70 <_NetOurIP> */
ffa0416e:	0a e1 78 0c 	P2.L = 0xc78;		/* (3192)	P2=0xff900c78 <_NetArpLut_age> */
ffa04172:	50 95       	R0 = W[P2] (X);
ffa04174:	08 64       	R0 += 0x1;		/* (  1) */
ffa04176:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c78 <_NetArpLut_age> */
ffa0417a:	0a e1 78 0c 	P2.L = 0xc78;		/* (3192)	P2=0xff900c78 <_NetArpLut_age> */
ffa0417e:	10 97       	W[P2] = R0;
ffa04180:	f1 b9       	R1 = [FP -0x4];
ffa04182:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c78 <_NetArpLut_age> */
ffa04186:	0a e1 78 0c 	P2.L = 0xc78;		/* (3192)	P2=0xff900c78 <_NetArpLut_age> */
ffa0418a:	53 95       	R3 = W[P2] (X);
ffa0418c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa04190:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa04194:	01 30       	R0 = R1;
ffa04196:	10 4f       	R0 <<= 0x2;
ffa04198:	08 50       	R0 = R0 + R1;
ffa0419a:	10 4f       	R0 <<= 0x2;
ffa0419c:	10 50       	R0 = R0 + R2;
ffa0419e:	10 32       	P2 = R0;
ffa041a0:	42 6c       	P2 += 0x8;		/* (  8) */
ffa041a2:	53 b4       	W[P2 + 0x2] = R3;
ffa041a4:	f1 b9       	R1 = [FP -0x4];
ffa041a6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa041aa:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa041ae:	01 30       	R0 = R1;
ffa041b0:	10 4f       	R0 <<= 0x2;
ffa041b2:	08 50       	R0 = R0 + R1;
ffa041b4:	10 4f       	R0 <<= 0x2;
ffa041b6:	10 50       	R0 = R0 + R2;
ffa041b8:	10 32       	P2 = R0;
ffa041ba:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa041bc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa041be:	10 93       	[P2] = R0;
ffa041c0:	01 e8 00 00 	UNLINK;
ffa041c4:	38 05       	(R7:7) = [SP++];
ffa041c6:	10 00       	RTS;

ffa041c8 <_ARP_lu>:
ffa041c8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa041cc:	b8 b0       	[FP + 0x8] = R0;
ffa041ce:	f9 b0       	[FP + 0xc] = R1;
ffa041d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa041d2:	e0 bb       	[FP -0x8] = R0;
ffa041d4:	46 20       	JUMP.S 0xffa04260 <_ARP_lu+0x98>;
ffa041d6:	e1 b9       	R1 = [FP -0x8];
ffa041d8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa041dc:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa041e0:	01 30       	R0 = R1;
ffa041e2:	10 4f       	R0 <<= 0x2;
ffa041e4:	08 50       	R0 = R0 + R1;
ffa041e6:	10 4f       	R0 <<= 0x2;
ffa041e8:	10 50       	R0 = R0 + R2;
ffa041ea:	10 32       	P2 = R0;
ffa041ec:	11 91       	R1 = [P2];
ffa041ee:	b8 a0       	R0 = [FP + 0x8];
ffa041f0:	01 08       	CC = R1 == R0;
ffa041f2:	34 10       	IF !CC JUMP 0xffa0425a <_ARP_lu+0x92>;
ffa041f4:	e1 b9       	R1 = [FP -0x8];
ffa041f6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa041fa:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa041fe:	01 30       	R0 = R1;
ffa04200:	10 4f       	R0 <<= 0x2;
ffa04202:	08 50       	R0 = R0 + R1;
ffa04204:	10 4f       	R0 <<= 0x2;
ffa04206:	10 50       	R0 = R0 + R2;
ffa04208:	10 32       	P2 = R0;
ffa0420a:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa0420c:	10 91       	R0 = [P2];
ffa0420e:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa04210:	00 02       	R0 = CC;
ffa04212:	40 43       	R0 = R0.B (Z);
ffa04214:	00 0c       	CC = R0 == 0x0;
ffa04216:	22 18       	IF CC JUMP 0xffa0425a <_ARP_lu+0x92>;
ffa04218:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0421a:	f0 bb       	[FP -0x4] = R0;
ffa0421c:	18 20       	JUMP.S 0xffa0424c <_ARP_lu+0x84>;
ffa0421e:	e1 b9       	R1 = [FP -0x8];
ffa04220:	f3 b9       	R3 = [FP -0x4];
ffa04222:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa04226:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa0422a:	01 30       	R0 = R1;
ffa0422c:	10 4f       	R0 <<= 0x2;
ffa0422e:	08 50       	R0 = R0 + R1;
ffa04230:	10 4f       	R0 <<= 0x2;
ffa04232:	10 50       	R0 = R0 + R2;
ffa04234:	18 50       	R0 = R0 + R3;
ffa04236:	10 32       	P2 = R0;
ffa04238:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0423a:	50 99       	R0 = B[P2] (X);
ffa0423c:	fa ac       	P2 = [FP + 0xc];
ffa0423e:	10 9b       	B[P2] = R0;
ffa04240:	f8 a0       	R0 = [FP + 0xc];
ffa04242:	08 64       	R0 += 0x1;		/* (  1) */
ffa04244:	f8 b0       	[FP + 0xc] = R0;
ffa04246:	f0 b9       	R0 = [FP -0x4];
ffa04248:	08 64       	R0 += 0x1;		/* (  1) */
ffa0424a:	f0 bb       	[FP -0x4] = R0;
ffa0424c:	f0 b9       	R0 = [FP -0x4];
ffa0424e:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa04250:	08 09       	CC = R0 <= R1;
ffa04252:	e6 1b       	IF CC JUMP 0xffa0421e <_ARP_lu+0x56>;
ffa04254:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04256:	d0 bb       	[FP -0xc] = R0;
ffa04258:	0a 20       	JUMP.S 0xffa0426c <_ARP_lu+0xa4>;
ffa0425a:	e0 b9       	R0 = [FP -0x8];
ffa0425c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0425e:	e0 bb       	[FP -0x8] = R0;
ffa04260:	e0 b9       	R0 = [FP -0x8];
ffa04262:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa04264:	08 09       	CC = R0 <= R1;
ffa04266:	b8 1b       	IF CC JUMP 0xffa041d6 <_ARP_lu+0xe>;
ffa04268:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0426a:	d0 bb       	[FP -0xc] = R0;
ffa0426c:	d0 b9       	R0 = [FP -0xc];
ffa0426e:	01 e8 00 00 	UNLINK;
ffa04272:	10 00       	RTS;

ffa04274 <_ARP_req>:
ffa04274:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa04278:	b8 b0       	[FP + 0x8] = R0;
ffa0427a:	f9 b0       	[FP + 0xc] = R1;
ffa0427c:	f9 a0       	R1 = [FP + 0xc];
ffa0427e:	b8 a0       	R0 = [FP + 0x8];
ffa04280:	ff e3 a4 ff 	CALL 0xffa041c8 <_ARP_lu>;
ffa04284:	00 0c       	CC = R0 == 0x0;
ffa04286:	04 18       	IF CC JUMP 0xffa0428e <_ARP_req+0x1a>;
ffa04288:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0428a:	d0 bb       	[FP -0xc] = R0;
ffa0428c:	b9 20       	JUMP.S 0xffa043fe <_ARP_req+0x18a>;
ffa0428e:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c78 */
ffa04292:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa04296:	10 91       	R0 = [P2];
ffa04298:	f0 bb       	[FP -0x4] = R0;
ffa0429a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0429c:	e0 bb       	[FP -0x8] = R0;
ffa0429e:	5b 20       	JUMP.S 0xffa04354 <_ARP_req+0xe0>;
ffa042a0:	e1 b9       	R1 = [FP -0x8];
ffa042a2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa042a6:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa042aa:	01 30       	R0 = R1;
ffa042ac:	10 4f       	R0 <<= 0x2;
ffa042ae:	08 50       	R0 = R0 + R1;
ffa042b0:	10 4f       	R0 <<= 0x2;
ffa042b2:	10 50       	R0 = R0 + R2;
ffa042b4:	10 32       	P2 = R0;
ffa042b6:	11 91       	R1 = [P2];
ffa042b8:	b8 a0       	R0 = [FP + 0x8];
ffa042ba:	01 08       	CC = R1 == R0;
ffa042bc:	49 10       	IF !CC JUMP 0xffa0434e <_ARP_req+0xda>;
ffa042be:	e1 b9       	R1 = [FP -0x8];
ffa042c0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa042c4:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa042c8:	01 30       	R0 = R1;
ffa042ca:	10 4f       	R0 <<= 0x2;
ffa042cc:	08 50       	R0 = R0 + R1;
ffa042ce:	10 4f       	R0 <<= 0x2;
ffa042d0:	10 50       	R0 = R0 + R2;
ffa042d2:	10 32       	P2 = R0;
ffa042d4:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa042d6:	11 91       	R1 = [P2];
ffa042d8:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa042da:	01 54       	R0 = R1 & R0;
ffa042dc:	00 0c       	CC = R0 == 0x0;
ffa042de:	38 18       	IF CC JUMP 0xffa0434e <_ARP_req+0xda>;
ffa042e0:	e1 b9       	R1 = [FP -0x8];
ffa042e2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa042e6:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa042ea:	01 30       	R0 = R1;
ffa042ec:	10 4f       	R0 <<= 0x2;
ffa042ee:	08 50       	R0 = R0 + R1;
ffa042f0:	10 4f       	R0 <<= 0x2;
ffa042f2:	10 50       	R0 = R0 + R2;
ffa042f4:	10 32       	P2 = R0;
ffa042f6:	62 6c       	P2 += 0xc;		/* ( 12) */
ffa042f8:	11 91       	R1 = [P2];
ffa042fa:	f0 b9       	R0 = [FP -0x4];
ffa042fc:	01 0a       	CC = R1 <= R0 (IU);
ffa042fe:	04 18       	IF CC JUMP 0xffa04306 <_ARP_req+0x92>;
ffa04300:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa04302:	d1 bb       	[FP -0xc] = R1;
ffa04304:	7d 20       	JUMP.S 0xffa043fe <_ARP_req+0x18a>;
ffa04306:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa0430a:	00 e1 d0 04 	R0.L = 0x4d0;		/* (1232)	R0=0xff9004d0(-7338800) */
ffa0430e:	b9 a0       	R1 = [FP + 0x8];
ffa04310:	ff e3 ae e4 	CALL 0xffa00c6c <_printf_ip>;
ffa04314:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004d0(-7338800) */
ffa04318:	00 e1 cc 04 	R0.L = 0x4cc;		/* (1228)	R0=0xff9004cc(-7338804) */
ffa0431c:	ff e3 8c e2 	CALL 0xffa00834 <_printf_str>;
ffa04320:	b8 a0       	R0 = [FP + 0x8];
ffa04322:	ff e3 01 fc 	CALL 0xffa03b24 <_ARP_tx>;
ffa04326:	e2 b9       	R2 = [FP -0x8];
ffa04328:	f1 b9       	R1 = [FP -0x4];
ffa0432a:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa0432e:	c1 50       	R3 = R1 + R0;
ffa04330:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900000 <_l1_data_a>(-7340032) */
ffa04334:	01 e1 7c 0c 	R1.L = 0xc7c;		/* (3196)	R1=0xff900c7c <_NetArpLut>(-7336836) */
ffa04338:	02 30       	R0 = R2;
ffa0433a:	10 4f       	R0 <<= 0x2;
ffa0433c:	10 50       	R0 = R0 + R2;
ffa0433e:	10 4f       	R0 <<= 0x2;
ffa04340:	08 50       	R0 = R0 + R1;
ffa04342:	10 32       	P2 = R0;
ffa04344:	62 6c       	P2 += 0xc;		/* ( 12) */
ffa04346:	13 93       	[P2] = R3;
ffa04348:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0434a:	d0 bb       	[FP -0xc] = R0;
ffa0434c:	59 20       	JUMP.S 0xffa043fe <_ARP_req+0x18a>;
ffa0434e:	e0 b9       	R0 = [FP -0x8];
ffa04350:	08 64       	R0 += 0x1;		/* (  1) */
ffa04352:	e0 bb       	[FP -0x8] = R0;
ffa04354:	e0 b9       	R0 = [FP -0x8];
ffa04356:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa04358:	08 09       	CC = R0 <= R1;
ffa0435a:	a3 1b       	IF CC JUMP 0xffa042a0 <_ARP_req+0x2c>;
ffa0435c:	ff e3 50 fe 	CALL 0xffa03ffc <_ARP_lut_find>;
ffa04360:	e0 bb       	[FP -0x8] = R0;
ffa04362:	e1 b9       	R1 = [FP -0x8];
ffa04364:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa04368:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa0436c:	01 30       	R0 = R1;
ffa0436e:	10 4f       	R0 <<= 0x2;
ffa04370:	08 50       	R0 = R0 + R1;
ffa04372:	10 4f       	R0 <<= 0x2;
ffa04374:	10 50       	R0 = R0 + R2;
ffa04376:	10 32       	P2 = R0;
ffa04378:	b8 a0       	R0 = [FP + 0x8];
ffa0437a:	10 93       	[P2] = R0;
ffa0437c:	e1 b9       	R1 = [FP -0x8];
ffa0437e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa04382:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa04386:	01 30       	R0 = R1;
ffa04388:	10 4f       	R0 <<= 0x2;
ffa0438a:	08 50       	R0 = R0 + R1;
ffa0438c:	10 4f       	R0 <<= 0x2;
ffa0438e:	10 50       	R0 = R0 + R2;
ffa04390:	10 32       	P2 = R0;
ffa04392:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa04394:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa04396:	10 93       	[P2] = R0;
ffa04398:	e2 b9       	R2 = [FP -0x8];
ffa0439a:	f1 b9       	R1 = [FP -0x4];
ffa0439c:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa043a0:	c1 50       	R3 = R1 + R0;
ffa043a2:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900009(-7340023) */
ffa043a6:	01 e1 7c 0c 	R1.L = 0xc7c;		/* (3196)	R1=0xff900c7c <_NetArpLut>(-7336836) */
ffa043aa:	02 30       	R0 = R2;
ffa043ac:	10 4f       	R0 <<= 0x2;
ffa043ae:	10 50       	R0 = R0 + R2;
ffa043b0:	10 4f       	R0 <<= 0x2;
ffa043b2:	08 50       	R0 = R0 + R1;
ffa043b4:	10 32       	P2 = R0;
ffa043b6:	62 6c       	P2 += 0xc;		/* ( 12) */
ffa043b8:	13 93       	[P2] = R3;
ffa043ba:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900800 */
ffa043be:	0a e1 78 0c 	P2.L = 0xc78;		/* (3192)	P2=0xff900c78 <_NetArpLut_age> */
ffa043c2:	50 95       	R0 = W[P2] (X);
ffa043c4:	08 64       	R0 += 0x1;		/* (  1) */
ffa043c6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c78 <_NetArpLut_age> */
ffa043ca:	0a e1 78 0c 	P2.L = 0xc78;		/* (3192)	P2=0xff900c78 <_NetArpLut_age> */
ffa043ce:	10 97       	W[P2] = R0;
ffa043d0:	e1 b9       	R1 = [FP -0x8];
ffa043d2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c78 <_NetArpLut_age> */
ffa043d6:	0a e1 78 0c 	P2.L = 0xc78;		/* (3192)	P2=0xff900c78 <_NetArpLut_age> */
ffa043da:	53 95       	R3 = W[P2] (X);
ffa043dc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa043e0:	02 e1 7c 0c 	R2.L = 0xc7c;		/* (3196)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa043e4:	01 30       	R0 = R1;
ffa043e6:	10 4f       	R0 <<= 0x2;
ffa043e8:	08 50       	R0 = R0 + R1;
ffa043ea:	10 4f       	R0 <<= 0x2;
ffa043ec:	10 50       	R0 = R0 + R2;
ffa043ee:	10 32       	P2 = R0;
ffa043f0:	42 6c       	P2 += 0x8;		/* (  8) */
ffa043f2:	53 b4       	W[P2 + 0x2] = R3;
ffa043f4:	b8 a0       	R0 = [FP + 0x8];
ffa043f6:	ff e3 97 fb 	CALL 0xffa03b24 <_ARP_tx>;
ffa043fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa043fc:	d0 bb       	[FP -0xc] = R0;
ffa043fe:	d0 b9       	R0 = [FP -0xc];
ffa04400:	01 e8 00 00 	UNLINK;
ffa04404:	10 00       	RTS;
	...

ffa04408 <_tcp_packet_setup>:
ffa04408:	00 e8 09 00 	LINK 0x24;		/* (36) */
ffa0440c:	b8 b0       	[FP + 0x8] = R0;
ffa0440e:	f9 b0       	[FP + 0xc] = R1;
ffa04410:	3a b1       	[FP + 0x10] = R2;
ffa04412:	78 a1       	R0 = [FP + 0x14];
ffa04414:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa04418:	b8 a0       	R0 = [FP + 0x8];
ffa0441a:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa0441c:	e0 bb       	[FP -0x8] = R0;
ffa0441e:	47 30       	R0 = FP;
ffa04420:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa04422:	f9 a0       	R1 = [FP + 0xc];
ffa04424:	3a a1       	R2 = [FP + 0x10];
ffa04426:	ff e3 55 f4 	CALL 0xffa02cd0 <_eth_header_setup>;
ffa0442a:	f0 bb       	[FP -0x4] = R0;
ffa0442c:	fa ac       	P2 = [FP + 0xc];
ffa0442e:	50 99       	R0 = B[P2] (X);
ffa04430:	00 43       	R0 = R0.B (X);
ffa04432:	80 0c       	CC = R0 < 0x0;
ffa04434:	04 10       	IF !CC JUMP 0xffa0443c <_tcp_packet_setup+0x34>;
ffa04436:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04438:	c0 bb       	[FP -0x10] = R0;
ffa0443a:	1d 20       	JUMP.S 0xffa04474 <_tcp_packet_setup+0x6c>;
ffa0443c:	f1 b9       	R1 = [FP -0x4];
ffa0443e:	57 30       	R2 = FP;
ffa04440:	c2 67       	R2 += -0x8;		/* ( -8) */
ffa04442:	3b a1       	R3 = [FP + 0x10];
ffa04444:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa04446:	f0 b0       	[SP + 0xc] = R0;
ffa04448:	01 30       	R0 = R1;
ffa0444a:	0a 30       	R1 = R2;
ffa0444c:	13 30       	R2 = R3;
ffa0444e:	ff e3 9b f4 	CALL 0xffa02d84 <_ip_header_setup>;
ffa04452:	f0 bb       	[FP -0x4] = R0;
ffa04454:	ba e4 f4 ff 	R2 = B[FP + -0xc] (Z);
ffa04458:	f1 b9       	R1 = [FP -0x4];
ffa0445a:	5f 30       	R3 = FP;
ffa0445c:	c3 67       	R3 += -0x8;		/* ( -8) */
ffa0445e:	b8 a1       	R0 = [FP + 0x18];
ffa04460:	f0 b0       	[SP + 0xc] = R0;
ffa04462:	f8 a1       	R0 = [FP + 0x1c];
ffa04464:	30 b1       	[SP + 0x10] = R0;
ffa04466:	01 30       	R0 = R1;
ffa04468:	0b 30       	R1 = R3;
ffa0446a:	ff e3 79 f5 	CALL 0xffa02f5c <_tcp_header_setup>;
ffa0446e:	f0 bb       	[FP -0x4] = R0;
ffa04470:	f0 b9       	R0 = [FP -0x4];
ffa04472:	c0 bb       	[FP -0x10] = R0;
ffa04474:	c0 b9       	R0 = [FP -0x10];
ffa04476:	01 e8 00 00 	UNLINK;
ffa0447a:	10 00       	RTS;

ffa0447c <_tcp_checksum_calc>:
ffa0447c:	00 e8 09 00 	LINK 0x24;		/* (36) */
ffa04480:	b8 b0       	[FP + 0x8] = R0;
ffa04482:	f9 b0       	[FP + 0xc] = R1;
ffa04484:	b8 a0       	R0 = [FP + 0x8];
ffa04486:	b0 bb       	[FP -0x14] = R0;
ffa04488:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0448a:	c0 bb       	[FP -0x10] = R0;
ffa0448c:	b0 b9       	R0 = [FP -0x14];
ffa0448e:	e0 64       	R0 += 0x1c;		/* ( 28) */
ffa04490:	e0 bb       	[FP -0x8] = R0;
ffa04492:	e0 b9       	R0 = [FP -0x8];
ffa04494:	d0 bb       	[FP -0xc] = R0;
ffa04496:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04498:	a0 bb       	[FP -0x18] = R0;
ffa0449a:	0d 20       	JUMP.S 0xffa044b4 <_tcp_checksum_calc+0x38>;
ffa0449c:	da b9       	P2 = [FP -0xc];
ffa0449e:	50 95       	R0 = W[P2] (X);
ffa044a0:	c1 42       	R1 = R0.L (Z);
ffa044a2:	c0 b9       	R0 = [FP -0x10];
ffa044a4:	08 50       	R0 = R0 + R1;
ffa044a6:	c0 bb       	[FP -0x10] = R0;
ffa044a8:	d0 b9       	R0 = [FP -0xc];
ffa044aa:	10 64       	R0 += 0x2;		/* (  2) */
ffa044ac:	d0 bb       	[FP -0xc] = R0;
ffa044ae:	a0 b9       	R0 = [FP -0x18];
ffa044b0:	08 64       	R0 += 0x1;		/* (  1) */
ffa044b2:	a0 bb       	[FP -0x18] = R0;
ffa044b4:	a0 b9       	R0 = [FP -0x18];
ffa044b6:	18 0d       	CC = R0 <= 0x3;
ffa044b8:	f2 1b       	IF CC JUMP 0xffa0449c <_tcp_checksum_calc+0x20>;
ffa044ba:	00 00       	NOP;
ffa044bc:	00 00       	NOP;
ffa044be:	ba b9       	P2 = [FP -0x14];
ffa044c0:	90 e5 19 00 	R0 = B[P2 + 0x19] (X);
ffa044c4:	40 43       	R0 = R0.B (Z);
ffa044c6:	40 4f       	R0 <<= 0x8;
ffa044c8:	c1 42       	R1 = R0.L (Z);
ffa044ca:	c0 b9       	R0 = [FP -0x10];
ffa044cc:	08 50       	R0 = R0 + R1;
ffa044ce:	c0 bb       	[FP -0x10] = R0;
ffa044d0:	ba b9       	P2 = [FP -0x14];
ffa044d2:	90 e5 30 00 	R0 = B[P2 + 0x30] (X);
ffa044d6:	40 43       	R0 = R0.B (Z);
ffa044d8:	10 4e       	R0 >>= 0x2;
ffa044da:	41 43       	R1 = R0.B (Z);
ffa044dc:	f8 a0       	R0 = [FP + 0xc];
ffa044de:	01 50       	R0 = R1 + R0;
ffa044e0:	c0 42       	R0 = R0.L (Z);
ffa044e2:	ff e3 81 f3 	CALL 0xffa02be4 <_htons>;
ffa044e6:	c1 42       	R1 = R0.L (Z);
ffa044e8:	c0 b9       	R0 = [FP -0x10];
ffa044ea:	08 50       	R0 = R0 + R1;
ffa044ec:	c0 bb       	[FP -0x10] = R0;
ffa044ee:	f8 a0       	R0 = [FP + 0xc];
ffa044f0:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa044f2:	00 02       	R0 = CC;
ffa044f4:	40 43       	R0 = R0.B (Z);
ffa044f6:	00 0c       	CC = R0 == 0x0;
ffa044f8:	16 18       	IF CC JUMP 0xffa04524 <_tcp_checksum_calc+0xa8>;
ffa044fa:	b0 b9       	R0 = [FP -0x14];
ffa044fc:	20 65       	R0 += 0x24;		/* ( 36) */
ffa044fe:	f0 bb       	[FP -0x4] = R0;
ffa04500:	ba b9       	P2 = [FP -0x14];
ffa04502:	90 e5 30 00 	R0 = B[P2 + 0x30] (X);
ffa04506:	40 43       	R0 = R0.B (Z);
ffa04508:	10 4e       	R0 >>= 0x2;
ffa0450a:	41 43       	R1 = R0.B (Z);
ffa0450c:	f8 a0       	R0 = [FP + 0xc];
ffa0450e:	01 50       	R0 = R1 + R0;
ffa04510:	08 30       	R1 = R0;
ffa04512:	f0 b9       	R0 = [FP -0x4];
ffa04514:	08 50       	R0 = R0 + R1;
ffa04516:	f0 bb       	[FP -0x4] = R0;
ffa04518:	fa b9       	P2 = [FP -0x4];
ffa0451a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0451c:	10 9b       	B[P2] = R0;
ffa0451e:	f8 a0       	R0 = [FP + 0xc];
ffa04520:	08 64       	R0 += 0x1;		/* (  1) */
ffa04522:	f8 b0       	[FP + 0xc] = R0;
ffa04524:	ba b9       	P2 = [FP -0x14];
ffa04526:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04528:	50 e6 1a 00 	W[P2 + 0x34] = R0;
ffa0452c:	b0 b9       	R0 = [FP -0x14];
ffa0452e:	20 65       	R0 += 0x24;		/* ( 36) */
ffa04530:	d0 bb       	[FP -0xc] = R0;
ffa04532:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04534:	a0 bb       	[FP -0x18] = R0;
ffa04536:	0d 20       	JUMP.S 0xffa04550 <_tcp_checksum_calc+0xd4>;
ffa04538:	da b9       	P2 = [FP -0xc];
ffa0453a:	50 95       	R0 = W[P2] (X);
ffa0453c:	c1 42       	R1 = R0.L (Z);
ffa0453e:	c0 b9       	R0 = [FP -0x10];
ffa04540:	08 50       	R0 = R0 + R1;
ffa04542:	c0 bb       	[FP -0x10] = R0;
ffa04544:	d0 b9       	R0 = [FP -0xc];
ffa04546:	10 64       	R0 += 0x2;		/* (  2) */
ffa04548:	d0 bb       	[FP -0xc] = R0;
ffa0454a:	a0 b9       	R0 = [FP -0x18];
ffa0454c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0454e:	a0 bb       	[FP -0x18] = R0;
ffa04550:	f9 a0       	R1 = [FP + 0xc];
ffa04552:	82 c6 09 81 	R0 = R1 >> 0x1f;
ffa04556:	08 50       	R0 = R0 + R1;
ffa04558:	08 4d       	R0 >>>= 0x1;
ffa0455a:	08 30       	R1 = R0;
ffa0455c:	ba b9       	P2 = [FP -0x14];
ffa0455e:	90 e5 30 00 	R0 = B[P2 + 0x30] (X);
ffa04562:	40 43       	R0 = R0.B (Z);
ffa04564:	18 4e       	R0 >>= 0x3;
ffa04566:	40 43       	R0 = R0.B (Z);
ffa04568:	41 50       	R1 = R1 + R0;
ffa0456a:	a0 b9       	R0 = [FP -0x18];
ffa0456c:	01 09       	CC = R1 <= R0;
ffa0456e:	e5 13       	IF !CC JUMP 0xffa04538 <_tcp_checksum_calc+0xbc>;
ffa04570:	c0 b9       	R0 = [FP -0x10];
ffa04572:	c1 42       	R1 = R0.L (Z);
ffa04574:	c0 b9       	R0 = [FP -0x10];
ffa04576:	80 4e       	R0 >>= 0x10;
ffa04578:	01 50       	R0 = R1 + R0;
ffa0457a:	c0 bb       	[FP -0x10] = R0;
ffa0457c:	c0 b9       	R0 = [FP -0x10];
ffa0457e:	c0 43       	R0 =~ R0;
ffa04580:	c0 42       	R0 = R0.L (Z);
ffa04582:	01 e8 00 00 	UNLINK;
ffa04586:	10 00       	RTS;

ffa04588 <_tcp_checksum_set>:
ffa04588:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0458c:	b8 b0       	[FP + 0x8] = R0;
ffa0458e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c78 <_NetArpLut_age> */
ffa04592:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa04596:	50 95       	R0 = W[P2] (X);
ffa04598:	c0 42       	R0 = R0.L (Z);
ffa0459a:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c7c <_NetArpLut>(-7336836) */
ffa0459e:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa045a2:	10 4f       	R0 <<= 0x2;
ffa045a4:	08 50       	R0 = R0 + R1;
ffa045a6:	10 32       	P2 = R0;
ffa045a8:	52 91       	P2 = [P2];
ffa045aa:	90 a1       	R0 = [P2 + 0x18];
ffa045ac:	f0 bb       	[FP -0x4] = R0;
ffa045ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa045b2:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_txIdx> */
ffa045b6:	50 95       	R0 = W[P2] (X);
ffa045b8:	c0 42       	R0 = R0.L (Z);
ffa045ba:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa045be:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_txbuf>(-7336896) */
ffa045c2:	10 4f       	R0 <<= 0x2;
ffa045c4:	08 50       	R0 = R0 + R1;
ffa045c6:	10 32       	P2 = R0;
ffa045c8:	52 91       	P2 = [P2];
ffa045ca:	90 a1       	R0 = [P2 + 0x18];
ffa045cc:	b9 a0       	R1 = [FP + 0x8];
ffa045ce:	ff e3 57 ff 	CALL 0xffa0447c <_tcp_checksum_calc>;
ffa045d2:	fa b9       	P2 = [FP -0x4];
ffa045d4:	50 e6 1a 00 	W[P2 + 0x34] = R0;
ffa045d8:	01 e8 00 00 	UNLINK;
ffa045dc:	10 00       	RTS;
	...

ffa045e0 <_tcp_checksum_check>:
ffa045e0:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa045e4:	b8 b0       	[FP + 0x8] = R0;
ffa045e6:	f9 b0       	[FP + 0xc] = R1;
ffa045e8:	b8 a0       	R0 = [FP + 0x8];
ffa045ea:	d0 bb       	[FP -0xc] = R0;
ffa045ec:	da b9       	P2 = [FP -0xc];
ffa045ee:	50 e5 1a 00 	R0 = W[P2 + 0x34] (X);
ffa045f2:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa045f6:	f9 a0       	R1 = [FP + 0xc];
ffa045f8:	b8 a0       	R0 = [FP + 0x8];
ffa045fa:	ff e3 41 ff 	CALL 0xffa0447c <_tcp_checksum_calc>;
ffa045fe:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa04602:	79 e4 fc ff 	R1 = W[FP + -0x8] (Z);
ffa04606:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa0460a:	01 08       	CC = R1 == R0;
ffa0460c:	04 10       	IF !CC JUMP 0xffa04614 <_tcp_checksum_check+0x34>;
ffa0460e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04610:	c0 bb       	[FP -0x10] = R0;
ffa04612:	19 20       	JUMP.S 0xffa04644 <_tcp_checksum_check+0x64>;
ffa04614:	79 e4 fc ff 	R1 = W[FP + -0x8] (Z);
ffa04618:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0461c:	00 e1 f0 04 	R0.L = 0x4f0;		/* (1264)	R0=0xff9004f0(-7338768) */
ffa04620:	ff e3 ea e1 	CALL 0xffa009f4 <_printf_hex>;
ffa04624:	79 e4 fe ff 	R1 = W[FP + -0x4] (Z);
ffa04628:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004f0(-7338768) */
ffa0462c:	00 e1 0c 05 	R0.L = 0x50c;		/* (1292)	R0=0xff90050c(-7338740) */
ffa04630:	ff e3 e2 e1 	CALL 0xffa009f4 <_printf_hex>;
ffa04634:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90050c(-7338740) */
ffa04638:	00 e1 1c 05 	R0.L = 0x51c;		/* (1308)	R0=0xff90051c(-7338724) */
ffa0463c:	ff e3 fc e0 	CALL 0xffa00834 <_printf_str>;
ffa04640:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04642:	c0 bb       	[FP -0x10] = R0;
ffa04644:	c0 b9       	R0 = [FP -0x10];
ffa04646:	01 e8 00 00 	UNLINK;
ffa0464a:	10 00       	RTS;

ffa0464c <_tcp_length>:
ffa0464c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa04650:	b8 b0       	[FP + 0x8] = R0;
ffa04652:	ba ac       	P2 = [FP + 0x8];
ffa04654:	50 aa       	R0 = W[P2 + 0x12] (X);
ffa04656:	c0 42       	R0 = R0.L (Z);
ffa04658:	ff e3 c6 f2 	CALL 0xffa02be4 <_htons>;
ffa0465c:	c0 42       	R0 = R0.L (Z);
ffa0465e:	f0 bb       	[FP -0x4] = R0;
ffa04660:	ba ac       	P2 = [FP + 0x8];
ffa04662:	90 e5 10 00 	R0 = B[P2 + 0x10] (X);
ffa04666:	41 43       	R1 = R0.B (Z);
ffa04668:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa0466a:	01 54       	R0 = R1 & R0;
ffa0466c:	82 c6 10 82 	R1 = R0 << 0x2;
ffa04670:	f0 b9       	R0 = [FP -0x4];
ffa04672:	08 52       	R0 = R0 - R1;
ffa04674:	f0 bb       	[FP -0x4] = R0;
ffa04676:	ba ac       	P2 = [FP + 0x8];
ffa04678:	90 e5 30 00 	R0 = B[P2 + 0x30] (X);
ffa0467c:	40 43       	R0 = R0.B (Z);
ffa0467e:	82 c6 f0 03 	R1 = R0 >>> 0x2;
ffa04682:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa04684:	41 54       	R1 = R1 & R0;
ffa04686:	f0 b9       	R0 = [FP -0x4];
ffa04688:	08 52       	R0 = R0 - R1;
ffa0468a:	f0 bb       	[FP -0x4] = R0;
ffa0468c:	f0 b9       	R0 = [FP -0x4];
ffa0468e:	01 e8 00 00 	UNLINK;
ffa04692:	10 00       	RTS;

ffa04694 <_tcp_rx>:
ffa04694:	78 05       	[--SP] = (R7:7);
ffa04696:	00 e8 0e 00 	LINK 0x38;		/* (56) */
ffa0469a:	f8 b0       	[FP + 0xc] = R0;
ffa0469c:	39 b1       	[FP + 0x10] = R1;
ffa0469e:	f8 a0       	R0 = [FP + 0xc];
ffa046a0:	b0 bb       	[FP -0x14] = R0;
ffa046a2:	ba b9       	P2 = [FP -0x14];
ffa046a4:	d7 a9       	R7 = W[P2 + 0xe] (X);
ffa046a6:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa046aa:	ff e3 9d f2 	CALL 0xffa02be4 <_htons>;
ffa046ae:	f9 42       	R1 = R7.L (Z);
ffa046b0:	c0 42       	R0 = R0.L (Z);
ffa046b2:	01 08       	CC = R1 == R0;
ffa046b4:	02 1c       	IF CC JUMP 0xffa046b8 <_tcp_rx+0x24> (BP);
ffa046b6:	12 23       	JUMP.S 0xffa04cda <_tcp_rx+0x646>;
ffa046b8:	ba b9       	P2 = [FP -0x14];
ffa046ba:	90 e5 19 00 	R0 = B[P2 + 0x19] (X);
ffa046be:	40 43       	R0 = R0.B (Z);
ffa046c0:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa046c2:	08 08       	CC = R0 == R1;
ffa046c4:	02 1c       	IF CC JUMP 0xffa046c8 <_tcp_rx+0x34> (BP);
ffa046c6:	0a 23       	JUMP.S 0xffa04cda <_tcp_rx+0x646>;
ffa046c8:	ba b9       	P2 = [FP -0x14];
ffa046ca:	57 e5 13 00 	R7 = W[P2 + 0x26] (X);
ffa046ce:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa046d2:	ff e3 89 f2 	CALL 0xffa02be4 <_htons>;
ffa046d6:	f9 42       	R1 = R7.L (Z);
ffa046d8:	c0 42       	R0 = R0.L (Z);
ffa046da:	01 08       	CC = R1 == R0;
ffa046dc:	02 1c       	IF CC JUMP 0xffa046e0 <_tcp_rx+0x4c> (BP);
ffa046de:	fe 22       	JUMP.S 0xffa04cda <_tcp_rx+0x646>;
ffa046e0:	f8 a0       	R0 = [FP + 0xc];
ffa046e2:	80 64       	R0 += 0x10;		/* ( 16) */
ffa046e4:	ff e3 aa f3 	CALL 0xffa02e38 <_ip_header_checksum>;
ffa046e8:	40 43       	R0 = R0.B (Z);
ffa046ea:	00 0c       	CC = R0 == 0x0;
ffa046ec:	02 14       	IF !CC JUMP 0xffa046f0 <_tcp_rx+0x5c> (BP);
ffa046ee:	f6 22       	JUMP.S 0xffa04cda <_tcp_rx+0x646>;
ffa046f0:	ba b9       	P2 = [FP -0x14];
ffa046f2:	d2 a1       	R2 = [P2 + 0x1c];
ffa046f4:	b0 b9       	R0 = [FP -0x14];
ffa046f6:	08 30       	R1 = R0;
ffa046f8:	41 64       	R1 += 0x8;		/* (  8) */
ffa046fa:	02 30       	R0 = R2;
ffa046fc:	ff e3 e0 fc 	CALL 0xffa040bc <_ARP_lut_add>;
ffa04700:	b0 b9       	R0 = [FP -0x14];
ffa04702:	ff e3 a5 ff 	CALL 0xffa0464c <_tcp_length>;
ffa04706:	c0 bb       	[FP -0x10] = R0;
ffa04708:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa0470c:	00 e1 20 05 	R0.L = 0x520;		/* (1312)	R0=0xff900520(-7338720) */
ffa04710:	c1 b9       	R1 = [FP -0x10];
ffa04712:	ff e3 9b e0 	CALL 0xffa00848 <_printf_int>;
ffa04716:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900520(-7338720) */
ffa0471a:	00 e1 1c 05 	R0.L = 0x51c;		/* (1308)	R0=0xff90051c(-7338724) */
ffa0471e:	ff e3 8b e0 	CALL 0xffa00834 <_printf_str>;
ffa04722:	c1 b9       	R1 = [FP -0x10];
ffa04724:	f8 a0       	R0 = [FP + 0xc];
ffa04726:	ff e3 5d ff 	CALL 0xffa045e0 <_tcp_checksum_check>;
ffa0472a:	40 43       	R0 = R0.B (Z);
ffa0472c:	00 0c       	CC = R0 == 0x0;
ffa0472e:	02 14       	IF !CC JUMP 0xffa04732 <_tcp_rx+0x9e> (BP);
ffa04730:	d5 22       	JUMP.S 0xffa04cda <_tcp_rx+0x646>;
ffa04732:	ba b9       	P2 = [FP -0x14];
ffa04734:	90 e5 31 00 	R0 = B[P2 + 0x31] (X);
ffa04738:	40 43       	R0 = R0.B (Z);
ffa0473a:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa0473c:	08 08       	CC = R0 == R1;
ffa0473e:	1f 10       	IF !CC JUMP 0xffa0477c <_tcp_rx+0xe8>;
ffa04740:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90051c(-7338724) */
ffa04744:	00 e1 34 05 	R0.L = 0x534;		/* (1332)	R0=0xff900534(-7338700) */
ffa04748:	ff e3 76 e0 	CALL 0xffa00834 <_printf_str>;
ffa0474c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_txIdx> */
ffa04750:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_TcpState> */
ffa04754:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04756:	10 93       	[P2] = R0;
ffa04758:	ba b9       	P2 = [FP -0x14];
ffa0475a:	90 a2       	R0 = [P2 + 0x28];
ffa0475c:	ff e3 5c f2 	CALL 0xffa02c14 <_htonl>;
ffa04760:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_TcpState> */
ffa04764:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa04768:	10 93       	[P2] = R0;
ffa0476a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa0476e:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xff900d6c <_g_httpRxed> */
ffa04772:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04774:	10 93       	[P2] = R0;
ffa04776:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04778:	90 bb       	[FP -0x1c] = R0;
ffa0477a:	b2 22       	JUMP.S 0xffa04cde <_tcp_rx+0x64a>;
ffa0477c:	ba b9       	P2 = [FP -0x14];
ffa0477e:	90 e5 31 00 	R0 = B[P2 + 0x31] (X);
ffa04782:	40 43       	R0 = R0.B (Z);
ffa04784:	10 0c       	CC = R0 == 0x2;
ffa04786:	77 10       	IF !CC JUMP 0xffa04874 <_tcp_rx+0x1e0>;
ffa04788:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0478c:	00 e1 40 05 	R0.L = 0x540;		/* (1344)	R0=0xff900540(-7338688) */
ffa04790:	ff e3 52 e0 	CALL 0xffa00834 <_printf_str>;
ffa04794:	ba b9       	P2 = [FP -0x14];
ffa04796:	90 a2       	R0 = [P2 + 0x28];
ffa04798:	ff e3 3e f2 	CALL 0xffa02c14 <_htonl>;
ffa0479c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d6c <_g_httpRxed> */
ffa047a0:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa047a4:	10 93       	[P2] = R0;
ffa047a6:	b0 b9       	R0 = [FP -0x14];
ffa047a8:	ff e3 52 ff 	CALL 0xffa0464c <_tcp_length>;
ffa047ac:	08 30       	R1 = R0;
ffa047ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa047b2:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa047b6:	10 91       	R0 = [P2];
ffa047b8:	01 50       	R0 = R1 + R0;
ffa047ba:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa047be:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa047c2:	10 93       	[P2] = R0;
ffa047c4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa047c8:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa047cc:	10 91       	R0 = [P2];
ffa047ce:	08 64       	R0 += 0x1;		/* (  1) */
ffa047d0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa047d4:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa047d8:	10 93       	[P2] = R0;
ffa047da:	ba b9       	P2 = [FP -0x14];
ffa047dc:	50 e5 12 00 	R0 = W[P2 + 0x24] (X);
ffa047e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa047e4:	0a e1 60 0d 	P2.L = 0xd60;		/* (3424)	P2=0xff900d60 <_TcpClientPort> */
ffa047e8:	10 97       	W[P2] = R0;
ffa047ea:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d60 <_TcpClientPort> */
ffa047ee:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xff900d6c <_g_httpRxed> */
ffa047f2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa047f4:	10 93       	[P2] = R0;
ffa047f6:	ba b9       	P2 = [FP -0x14];
ffa047f8:	d0 a1       	R0 = [P2 + 0x1c];
ffa047fa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d6c <_g_httpRxed> */
ffa047fe:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_NetDestIP> */
ffa04802:	10 93       	[P2] = R0;
ffa04804:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c34 <_NetDestIP> */
ffa04808:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_NetDestIP> */
ffa0480c:	17 91       	R7 = [P2];
ffa0480e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c34 <_NetDestIP> */
ffa04812:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xff900d48 <_TcpSeqHost> */
ffa04816:	12 91       	R2 = [P2];
ffa04818:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d48 <_TcpSeqHost> */
ffa0481c:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa04820:	11 91       	R1 = [P2];
ffa04822:	5f 30       	R3 = FP;
ffa04824:	5b 67       	R3 += -0x15;		/* (-21) */
ffa04826:	90 60       	R0 = 0x12 (X);		/*		R0=0x12( 18) */
ffa04828:	f0 b0       	[SP + 0xc] = R0;
ffa0482a:	32 b1       	[SP + 0x10] = R2;
ffa0482c:	71 b1       	[SP + 0x14] = R1;
ffa0482e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04830:	0b 30       	R1 = R3;
ffa04832:	17 30       	R2 = R7;
ffa04834:	ff e3 ea fd 	CALL 0xffa04408 <_tcp_packet_setup>;
ffa04838:	b8 e5 eb ff 	R0 = B[FP + -0x15] (X);
ffa0483c:	00 43       	R0 = R0.B (X);
ffa0483e:	00 0d       	CC = R0 <= 0x0;
ffa04840:	1a 18       	IF CC JUMP 0xffa04874 <_tcp_rx+0x1e0>;
ffa04842:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa04846:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xff900d48 <_TcpSeqHost> */
ffa0484a:	10 91       	R0 = [P2];
ffa0484c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0484e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d48 <_TcpSeqHost> */
ffa04852:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xff900d48 <_TcpSeqHost> */
ffa04856:	10 93       	[P2] = R0;
ffa04858:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d48 <_TcpSeqHost> */
ffa0485c:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_TcpState> */
ffa04860:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04862:	10 93       	[P2] = R0;
ffa04864:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04866:	ff e3 91 fe 	CALL 0xffa04588 <_tcp_checksum_set>;
ffa0486a:	ff e3 4b ea 	CALL 0xffa01d00 <_bfin_EMAC_send_nocopy>;
ffa0486e:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa04870:	91 bb       	[FP -0x1c] = R1;
ffa04872:	36 22       	JUMP.S 0xffa04cde <_tcp_rx+0x64a>;
ffa04874:	ba b9       	P2 = [FP -0x14];
ffa04876:	90 e5 31 00 	R0 = B[P2 + 0x31] (X);
ffa0487a:	40 43       	R0 = R0.B (Z);
ffa0487c:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa0487e:	08 08       	CC = R0 == R1;
ffa04880:	4a 10       	IF !CC JUMP 0xffa04914 <_tcp_rx+0x280>;
ffa04882:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_TcpState> */
ffa04886:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_TcpState> */
ffa0488a:	10 91       	R0 = [P2];
ffa0488c:	08 0c       	CC = R0 == 0x1;
ffa0488e:	43 10       	IF !CC JUMP 0xffa04914 <_tcp_rx+0x280>;
ffa04890:	00 00       	NOP;
ffa04892:	00 00       	NOP;
ffa04894:	ba b9       	P2 = [FP -0x14];
ffa04896:	d0 a2       	R0 = [P2 + 0x2c];
ffa04898:	ff e3 be f1 	CALL 0xffa02c14 <_htonl>;
ffa0489c:	08 30       	R1 = R0;
ffa0489e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_TcpState> */
ffa048a2:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xff900d48 <_TcpSeqHost> */
ffa048a6:	10 91       	R0 = [P2];
ffa048a8:	01 08       	CC = R1 == R0;
ffa048aa:	1d 18       	IF CC JUMP 0xffa048e4 <_tcp_rx+0x250>;
ffa048ac:	00 00       	NOP;
ffa048ae:	00 00       	NOP;
ffa048b0:	ba b9       	P2 = [FP -0x14];
ffa048b2:	d0 a2       	R0 = [P2 + 0x2c];
ffa048b4:	ff e3 b0 f1 	CALL 0xffa02c14 <_htonl>;
ffa048b8:	08 30       	R1 = R0;
ffa048ba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa048be:	00 e1 4c 05 	R0.L = 0x54c;		/* (1356)	R0=0xff90054c(-7338676) */
ffa048c2:	ff e3 d5 e1 	CALL 0xffa00c6c <_printf_ip>;
ffa048c6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d48 <_TcpSeqHost> */
ffa048ca:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_TcpState> */
ffa048ce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa048d0:	10 93       	[P2] = R0;
ffa048d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa048d6:	00 e1 1c 05 	R0.L = 0x51c;		/* (1308)	R0=0xff90051c(-7338724) */
ffa048da:	ff e3 ad df 	CALL 0xffa00834 <_printf_str>;
ffa048de:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa048e0:	90 bb       	[FP -0x1c] = R0;
ffa048e2:	fe 21       	JUMP.S 0xffa04cde <_tcp_rx+0x64a>;
ffa048e4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_TcpState> */
ffa048e8:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_TcpState> */
ffa048ec:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa048ee:	10 93       	[P2] = R0;
ffa048f0:	ba b9       	P2 = [FP -0x14];
ffa048f2:	90 a2       	R0 = [P2 + 0x28];
ffa048f4:	ff e3 90 f1 	CALL 0xffa02c14 <_htonl>;
ffa048f8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_TcpState> */
ffa048fc:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa04900:	10 93       	[P2] = R0;
ffa04902:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa04906:	00 e1 68 05 	R0.L = 0x568;		/* (1384)	R0=0xff900568(-7338648) */
ffa0490a:	ff e3 95 df 	CALL 0xffa00834 <_printf_str>;
ffa0490e:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa04910:	91 bb       	[FP -0x1c] = R1;
ffa04912:	e6 21       	JUMP.S 0xffa04cde <_tcp_rx+0x64a>;
ffa04914:	ba b9       	P2 = [FP -0x14];
ffa04916:	90 e5 31 00 	R0 = B[P2 + 0x31] (X);
ffa0491a:	40 43       	R0 = R0.B (Z);
ffa0491c:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0491e:	00 02       	R0 = CC;
ffa04920:	40 43       	R0 = R0.B (Z);
ffa04922:	00 0c       	CC = R0 == 0x0;
ffa04924:	97 18       	IF CC JUMP 0xffa04a52 <_tcp_rx+0x3be>;
ffa04926:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900568(-7338648) */
ffa0492a:	00 e1 78 05 	R0.L = 0x578;		/* (1400)	R0=0xff900578(-7338632) */
ffa0492e:	ff e3 83 df 	CALL 0xffa00834 <_printf_str>;
ffa04932:	ba b9       	P2 = [FP -0x14];
ffa04934:	90 a2       	R0 = [P2 + 0x28];
ffa04936:	ff e3 6f f1 	CALL 0xffa02c14 <_htonl>;
ffa0493a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa0493e:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa04942:	10 93       	[P2] = R0;
ffa04944:	ba b9       	P2 = [FP -0x14];
ffa04946:	d0 a1       	R0 = [P2 + 0x1c];
ffa04948:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa0494c:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_NetDestIP> */
ffa04950:	10 93       	[P2] = R0;
ffa04952:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c34 <_NetDestIP> */
ffa04956:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa0495a:	10 91       	R0 = [P2];
ffa0495c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0495e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa04962:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa04966:	10 93       	[P2] = R0;
ffa04968:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa0496c:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_TcpState> */
ffa04970:	10 91       	R0 = [P2];
ffa04972:	10 0c       	CC = R0 == 0x2;
ffa04974:	08 18       	IF CC JUMP 0xffa04984 <_tcp_rx+0x2f0>;
ffa04976:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_TcpState> */
ffa0497a:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_TcpState> */
ffa0497e:	10 91       	R0 = [P2];
ffa04980:	00 0c       	CC = R0 == 0x0;
ffa04982:	2e 10       	IF !CC JUMP 0xffa049de <_tcp_rx+0x34a>;
ffa04984:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_TcpState> */
ffa04988:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_NetDestIP> */
ffa0498c:	17 91       	R7 = [P2];
ffa0498e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c34 <_NetDestIP> */
ffa04992:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xff900d48 <_TcpSeqHost> */
ffa04996:	12 91       	R2 = [P2];
ffa04998:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d48 <_TcpSeqHost> */
ffa0499c:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa049a0:	11 91       	R1 = [P2];
ffa049a2:	5f 30       	R3 = FP;
ffa049a4:	5b 67       	R3 += -0x15;		/* (-21) */
ffa049a6:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa049a8:	f0 b0       	[SP + 0xc] = R0;
ffa049aa:	32 b1       	[SP + 0x10] = R2;
ffa049ac:	71 b1       	[SP + 0x14] = R1;
ffa049ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa049b0:	0b 30       	R1 = R3;
ffa049b2:	17 30       	R2 = R7;
ffa049b4:	ff e3 2a fd 	CALL 0xffa04408 <_tcp_packet_setup>;
ffa049b8:	b8 e5 eb ff 	R0 = B[FP + -0x15] (X);
ffa049bc:	00 43       	R0 = R0.B (X);
ffa049be:	00 0d       	CC = R0 <= 0x0;
ffa049c0:	0f 18       	IF CC JUMP 0xffa049de <_tcp_rx+0x34a>;
ffa049c2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa049c6:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_TcpState> */
ffa049ca:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa049cc:	10 93       	[P2] = R0;
ffa049ce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa049d0:	ff e3 dc fd 	CALL 0xffa04588 <_tcp_checksum_set>;
ffa049d4:	ff e3 96 e9 	CALL 0xffa01d00 <_bfin_EMAC_send_nocopy>;
ffa049d8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa049da:	90 bb       	[FP -0x1c] = R0;
ffa049dc:	81 21       	JUMP.S 0xffa04cde <_tcp_rx+0x64a>;
ffa049de:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_TcpState> */
ffa049e2:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_TcpState> */
ffa049e6:	10 91       	R0 = [P2];
ffa049e8:	18 0c       	CC = R0 == 0x3;
ffa049ea:	34 10       	IF !CC JUMP 0xffa04a52 <_tcp_rx+0x3be>;
ffa049ec:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_TcpState> */
ffa049f0:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xff900d6c <_g_httpRxed> */
ffa049f4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa049f6:	10 93       	[P2] = R0;
ffa049f8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d6c <_g_httpRxed> */
ffa049fc:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_NetDestIP> */
ffa04a00:	17 91       	R7 = [P2];
ffa04a02:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c34 <_NetDestIP> */
ffa04a06:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xff900d48 <_TcpSeqHost> */
ffa04a0a:	12 91       	R2 = [P2];
ffa04a0c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d48 <_TcpSeqHost> */
ffa04a10:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa04a14:	11 91       	R1 = [P2];
ffa04a16:	5f 30       	R3 = FP;
ffa04a18:	5b 67       	R3 += -0x15;		/* (-21) */
ffa04a1a:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa04a1c:	f0 b0       	[SP + 0xc] = R0;
ffa04a1e:	32 b1       	[SP + 0x10] = R2;
ffa04a20:	71 b1       	[SP + 0x14] = R1;
ffa04a22:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04a24:	0b 30       	R1 = R3;
ffa04a26:	17 30       	R2 = R7;
ffa04a28:	ff e3 f0 fc 	CALL 0xffa04408 <_tcp_packet_setup>;
ffa04a2c:	b8 e5 eb ff 	R0 = B[FP + -0x15] (X);
ffa04a30:	00 43       	R0 = R0.B (X);
ffa04a32:	00 0d       	CC = R0 <= 0x0;
ffa04a34:	0f 18       	IF CC JUMP 0xffa04a52 <_tcp_rx+0x3be>;
ffa04a36:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa04a3a:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_TcpState> */
ffa04a3e:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa04a40:	10 93       	[P2] = R0;
ffa04a42:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04a44:	ff e3 a2 fd 	CALL 0xffa04588 <_tcp_checksum_set>;
ffa04a48:	ff e3 5c e9 	CALL 0xffa01d00 <_bfin_EMAC_send_nocopy>;
ffa04a4c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa04a4e:	91 bb       	[FP -0x1c] = R1;
ffa04a50:	47 21       	JUMP.S 0xffa04cde <_tcp_rx+0x64a>;
ffa04a52:	ba b9       	P2 = [FP -0x14];
ffa04a54:	90 e5 31 00 	R0 = B[P2 + 0x31] (X);
ffa04a58:	41 43       	R1 = R0.B (Z);
ffa04a5a:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa04a5c:	01 54       	R0 = R1 & R0;
ffa04a5e:	00 0c       	CC = R0 == 0x0;
ffa04a60:	66 18       	IF CC JUMP 0xffa04b2c <_tcp_rx+0x498>;
ffa04a62:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_TcpState> */
ffa04a66:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_TcpState> */
ffa04a6a:	10 91       	R0 = [P2];
ffa04a6c:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa04a6e:	08 08       	CC = R0 == R1;
ffa04a70:	0a 10       	IF !CC JUMP 0xffa04a84 <_tcp_rx+0x3f0>;
ffa04a72:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa04a76:	00 e1 88 05 	R0.L = 0x588;		/* (1416)	R0=0xff900588(-7338616) */
ffa04a7a:	ff e3 dd de 	CALL 0xffa00834 <_printf_str>;
ffa04a7e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04a80:	90 bb       	[FP -0x1c] = R0;
ffa04a82:	2e 21       	JUMP.S 0xffa04cde <_tcp_rx+0x64a>;
ffa04a84:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_TcpState> */
ffa04a88:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_TcpState> */
ffa04a8c:	10 91       	R0 = [P2];
ffa04a8e:	00 0c       	CC = R0 == 0x0;
ffa04a90:	4e 10       	IF !CC JUMP 0xffa04b2c <_tcp_rx+0x498>;
ffa04a92:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa04a96:	00 e1 9c 05 	R0.L = 0x59c;		/* (1436)	R0=0xff90059c(-7338596) */
ffa04a9a:	ff e3 cd de 	CALL 0xffa00834 <_printf_str>;
ffa04a9e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_TcpState> */
ffa04aa2:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xff900d6c <_g_httpRxed> */
ffa04aa6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04aa8:	10 93       	[P2] = R0;
ffa04aaa:	ba b9       	P2 = [FP -0x14];
ffa04aac:	90 a2       	R0 = [P2 + 0x28];
ffa04aae:	ff e3 b3 f0 	CALL 0xffa02c14 <_htonl>;
ffa04ab2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d6c <_g_httpRxed> */
ffa04ab6:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa04aba:	10 93       	[P2] = R0;
ffa04abc:	ba b9       	P2 = [FP -0x14];
ffa04abe:	d0 a1       	R0 = [P2 + 0x1c];
ffa04ac0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa04ac4:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_NetDestIP> */
ffa04ac8:	10 93       	[P2] = R0;
ffa04aca:	ba b9       	P2 = [FP -0x14];
ffa04acc:	50 e5 12 00 	R0 = W[P2 + 0x24] (X);
ffa04ad0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c34 <_NetDestIP> */
ffa04ad4:	0a e1 60 0d 	P2.L = 0xd60;		/* (3424)	P2=0xff900d60 <_TcpClientPort> */
ffa04ad8:	10 97       	W[P2] = R0;
ffa04ada:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d60 <_TcpClientPort> */
ffa04ade:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_NetDestIP> */
ffa04ae2:	13 91       	R3 = [P2];
ffa04ae4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c34 <_NetDestIP> */
ffa04ae8:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa04aec:	11 91       	R1 = [P2];
ffa04aee:	57 30       	R2 = FP;
ffa04af0:	5a 67       	R2 += -0x15;		/* (-21) */
ffa04af2:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa04af4:	f0 b0       	[SP + 0xc] = R0;
ffa04af6:	31 b1       	[SP + 0x10] = R1;
ffa04af8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04afa:	70 b1       	[SP + 0x14] = R0;
ffa04afc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04afe:	0a 30       	R1 = R2;
ffa04b00:	13 30       	R2 = R3;
ffa04b02:	ff e3 83 fc 	CALL 0xffa04408 <_tcp_packet_setup>;
ffa04b06:	b8 e5 eb ff 	R0 = B[FP + -0x15] (X);
ffa04b0a:	00 43       	R0 = R0.B (X);
ffa04b0c:	00 0d       	CC = R0 <= 0x0;
ffa04b0e:	0f 18       	IF CC JUMP 0xffa04b2c <_tcp_rx+0x498>;
ffa04b10:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa04b14:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_TcpState> */
ffa04b18:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04b1a:	10 93       	[P2] = R0;
ffa04b1c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04b1e:	ff e3 35 fd 	CALL 0xffa04588 <_tcp_checksum_set>;
ffa04b22:	ff e3 ef e8 	CALL 0xffa01d00 <_bfin_EMAC_send_nocopy>;
ffa04b26:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa04b28:	91 bb       	[FP -0x1c] = R1;
ffa04b2a:	da 20       	JUMP.S 0xffa04cde <_tcp_rx+0x64a>;
ffa04b2c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_TcpState> */
ffa04b30:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_TcpState> */
ffa04b34:	10 91       	R0 = [P2];
ffa04b36:	10 0c       	CC = R0 == 0x2;
ffa04b38:	d1 10       	IF !CC JUMP 0xffa04cda <_tcp_rx+0x646>;
ffa04b3a:	b0 b9       	R0 = [FP -0x14];
ffa04b3c:	20 65       	R0 += 0x24;		/* ( 36) */
ffa04b3e:	d0 bb       	[FP -0xc] = R0;
ffa04b40:	ba b9       	P2 = [FP -0x14];
ffa04b42:	90 e5 30 00 	R0 = B[P2 + 0x30] (X);
ffa04b46:	41 43       	R1 = R0.B (Z);
ffa04b48:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa04b4c:	01 54       	R0 = R1 & R0;
ffa04b4e:	80 bb       	[FP -0x20] = R0;
ffa04b50:	80 b9       	R0 = [FP -0x20];
ffa04b52:	80 0c       	CC = R0 < 0x0;
ffa04b54:	04 10       	IF !CC JUMP 0xffa04b5c <_tcp_rx+0x4c8>;
ffa04b56:	81 b9       	R1 = [FP -0x20];
ffa04b58:	19 64       	R1 += 0x3;		/* (  3) */
ffa04b5a:	81 bb       	[FP -0x20] = R1;
ffa04b5c:	80 b9       	R0 = [FP -0x20];
ffa04b5e:	10 4d       	R0 >>>= 0x2;
ffa04b60:	08 30       	R1 = R0;
ffa04b62:	d0 b9       	R0 = [FP -0xc];
ffa04b64:	08 50       	R0 = R0 + R1;
ffa04b66:	d0 bb       	[FP -0xc] = R0;
ffa04b68:	ba b9       	P2 = [FP -0x14];
ffa04b6a:	90 a2       	R0 = [P2 + 0x28];
ffa04b6c:	ff e3 54 f0 	CALL 0xffa02c14 <_htonl>;
ffa04b70:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_TcpState> */
ffa04b74:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa04b78:	10 93       	[P2] = R0;
ffa04b7a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa04b7e:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa04b82:	11 91       	R1 = [P2];
ffa04b84:	c0 b9       	R0 = [FP -0x10];
ffa04b86:	01 50       	R0 = R1 + R0;
ffa04b88:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa04b8c:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa04b90:	10 93       	[P2] = R0;
ffa04b92:	ba b9       	P2 = [FP -0x14];
ffa04b94:	d0 a1       	R0 = [P2 + 0x1c];
ffa04b96:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa04b9a:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_NetDestIP> */
ffa04b9e:	10 93       	[P2] = R0;
ffa04ba0:	ba b9       	P2 = [FP -0x14];
ffa04ba2:	d0 a2       	R0 = [P2 + 0x2c];
ffa04ba4:	ff e3 38 f0 	CALL 0xffa02c14 <_htonl>;
ffa04ba8:	08 30       	R1 = R0;
ffa04baa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c34 <_NetDestIP> */
ffa04bae:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpSeqHttpStart> */
ffa04bb2:	10 91       	R0 = [P2];
ffa04bb4:	01 52       	R0 = R1 - R0;
ffa04bb6:	f0 bb       	[FP -0x4] = R0;
ffa04bb8:	ba b9       	P2 = [FP -0x14];
ffa04bba:	90 e5 31 00 	R0 = B[P2 + 0x31] (X);
ffa04bbe:	41 43       	R1 = R0.B (Z);
ffa04bc0:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa04bc2:	01 54       	R0 = R1 & R0;
ffa04bc4:	00 0c       	CC = R0 == 0x0;
ffa04bc6:	33 18       	IF CC JUMP 0xffa04c2c <_tcp_rx+0x598>;
ffa04bc8:	c0 b9       	R0 = [FP -0x10];
ffa04bca:	00 0c       	CC = R0 == 0x0;
ffa04bcc:	30 10       	IF !CC JUMP 0xffa04c2c <_tcp_rx+0x598>;
ffa04bce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpSeqHttpStart> */
ffa04bd2:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_g_httpHeaderLen> */
ffa04bd6:	11 91       	R1 = [P2];
ffa04bd8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d64 <_g_httpHeaderLen> */
ffa04bdc:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xff900d68 <_g_httpContentLen> */
ffa04be0:	10 91       	R0 = [P2];
ffa04be2:	41 50       	R1 = R1 + R0;
ffa04be4:	f0 b9       	R0 = [FP -0x4];
ffa04be6:	01 08       	CC = R1 == R0;
ffa04be8:	16 10       	IF !CC JUMP 0xffa04c14 <_tcp_rx+0x580>;
ffa04bea:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d68 <_g_httpContentLen> */
ffa04bee:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xff900d6c <_g_httpRxed> */
ffa04bf2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04bf4:	10 93       	[P2] = R0;
ffa04bf6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d6c <_g_httpRxed> */
ffa04bfa:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpSeqHttpStart> */
ffa04bfe:	11 91       	R1 = [P2];
ffa04c00:	f0 b9       	R0 = [FP -0x4];
ffa04c02:	01 50       	R0 = R1 + R0;
ffa04c04:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpSeqHttpStart> */
ffa04c08:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xff900d48 <_TcpSeqHost> */
ffa04c0c:	10 93       	[P2] = R0;
ffa04c0e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04c10:	90 bb       	[FP -0x1c] = R0;
ffa04c12:	66 20       	JUMP.S 0xffa04cde <_tcp_rx+0x64a>;
ffa04c14:	f1 b9       	R1 = [FP -0x4];
ffa04c16:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04c18:	00 e3 68 00 	CALL 0xffa04ce8 <_tcp_burst>;
ffa04c1c:	00 0c       	CC = R0 == 0x0;
ffa04c1e:	04 18       	IF CC JUMP 0xffa04c26 <_tcp_rx+0x592>;
ffa04c20:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa04c22:	91 bb       	[FP -0x1c] = R1;
ffa04c24:	5d 20       	JUMP.S 0xffa04cde <_tcp_rx+0x64a>;
ffa04c26:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04c28:	90 bb       	[FP -0x1c] = R0;
ffa04c2a:	5a 20       	JUMP.S 0xffa04cde <_tcp_rx+0x64a>;
ffa04c2c:	d0 b9       	R0 = [FP -0xc];
ffa04c2e:	c1 b9       	R1 = [FP -0x10];
ffa04c30:	00 e3 38 01 	CALL 0xffa04ea0 <_httpCollate>;
ffa04c34:	00 0c       	CC = R0 == 0x0;
ffa04c36:	2a 18       	IF CC JUMP 0xffa04c8a <_tcp_rx+0x5f6>;
ffa04c38:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d48 <_TcpSeqHost> */
ffa04c3c:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xff900d48 <_TcpSeqHost> */
ffa04c40:	10 91       	R0 = [P2];
ffa04c42:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d48 <_TcpSeqHost> */
ffa04c46:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpSeqHttpStart> */
ffa04c4a:	10 93       	[P2] = R0;
ffa04c4c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpSeqHttpStart> */
ffa04c50:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_g_httpHeaderLen> */
ffa04c54:	11 91       	R1 = [P2];
ffa04c56:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d64 <_g_httpHeaderLen> */
ffa04c5a:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xff900d68 <_g_httpContentLen> */
ffa04c5e:	10 91       	R0 = [P2];
ffa04c60:	01 50       	R0 = R1 + R0;
ffa04c62:	08 30       	R1 = R0;
ffa04c64:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa04c68:	00 e1 b8 05 	R0.L = 0x5b8;		/* (1464)	R0=0xff9005b8(-7338568) */
ffa04c6c:	ff e3 ee dd 	CALL 0xffa00848 <_printf_int>;
ffa04c70:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005b8(-7338568) */
ffa04c74:	00 e1 1c 05 	R0.L = 0x51c;		/* (1308)	R0=0xff90051c(-7338724) */
ffa04c78:	ff e3 de dd 	CALL 0xffa00834 <_printf_str>;
ffa04c7c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04c7e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa04c80:	00 e3 34 00 	CALL 0xffa04ce8 <_tcp_burst>;
ffa04c84:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa04c86:	91 bb       	[FP -0x1c] = R1;
ffa04c88:	2b 20       	JUMP.S 0xffa04cde <_tcp_rx+0x64a>;
ffa04c8a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d68 <_g_httpContentLen> */
ffa04c8e:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_NetDestIP> */
ffa04c92:	17 91       	R7 = [P2];
ffa04c94:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c34 <_NetDestIP> */
ffa04c98:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xff900d48 <_TcpSeqHost> */
ffa04c9c:	12 91       	R2 = [P2];
ffa04c9e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d48 <_TcpSeqHost> */
ffa04ca2:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa04ca6:	11 91       	R1 = [P2];
ffa04ca8:	5f 30       	R3 = FP;
ffa04caa:	5b 67       	R3 += -0x15;		/* (-21) */
ffa04cac:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa04cae:	f0 b0       	[SP + 0xc] = R0;
ffa04cb0:	32 b1       	[SP + 0x10] = R2;
ffa04cb2:	71 b1       	[SP + 0x14] = R1;
ffa04cb4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04cb6:	0b 30       	R1 = R3;
ffa04cb8:	17 30       	R2 = R7;
ffa04cba:	ff e3 a7 fb 	CALL 0xffa04408 <_tcp_packet_setup>;
ffa04cbe:	e0 bb       	[FP -0x8] = R0;
ffa04cc0:	b8 e5 eb ff 	R0 = B[FP + -0x15] (X);
ffa04cc4:	00 43       	R0 = R0.B (X);
ffa04cc6:	00 0d       	CC = R0 <= 0x0;
ffa04cc8:	09 18       	IF CC JUMP 0xffa04cda <_tcp_rx+0x646>;
ffa04cca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04ccc:	ff e3 5e fc 	CALL 0xffa04588 <_tcp_checksum_set>;
ffa04cd0:	ff e3 18 e8 	CALL 0xffa01d00 <_bfin_EMAC_send_nocopy>;
ffa04cd4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04cd6:	90 bb       	[FP -0x1c] = R0;
ffa04cd8:	03 20       	JUMP.S 0xffa04cde <_tcp_rx+0x64a>;
ffa04cda:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa04cdc:	91 bb       	[FP -0x1c] = R1;
ffa04cde:	90 b9       	R0 = [FP -0x1c];
ffa04ce0:	01 e8 00 00 	UNLINK;
ffa04ce4:	38 05       	(R7:7) = [SP++];
ffa04ce6:	10 00       	RTS;

ffa04ce8 <_tcp_burst>:
ffa04ce8:	70 05       	[--SP] = (R7:6);
ffa04cea:	00 e8 0e 00 	LINK 0x38;		/* (56) */
ffa04cee:	38 b1       	[FP + 0x10] = R0;
ffa04cf0:	79 b1       	[FP + 0x14] = R1;
ffa04cf2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04cf4:	90 bb       	[FP -0x1c] = R0;
ffa04cf6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa04cfa:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_g_httpHeaderLen> */
ffa04cfe:	11 91       	R1 = [P2];
ffa04d00:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d64 <_g_httpHeaderLen> */
ffa04d04:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xff900d68 <_g_httpContentLen> */
ffa04d08:	10 91       	R0 = [P2];
ffa04d0a:	01 50       	R0 = R1 + R0;
ffa04d0c:	c0 bb       	[FP -0x10] = R0;
ffa04d0e:	bc 20       	JUMP.S 0xffa04e86 <_tcp_burst+0x19e>;
ffa04d10:	c1 b9       	R1 = [FP -0x10];
ffa04d12:	78 a1       	R0 = [FP + 0x14];
ffa04d14:	01 52       	R0 = R1 - R0;
ffa04d16:	d0 bb       	[FP -0xc] = R0;
ffa04d18:	d1 b9       	R1 = [FP -0xc];
ffa04d1a:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa04d1e:	07 c4 08 40 	R0 = MIN (R1, R0);
ffa04d22:	a0 bb       	[FP -0x18] = R0;
ffa04d24:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d68 <_g_httpContentLen> */
ffa04d28:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpSeqHttpStart> */
ffa04d2c:	11 91       	R1 = [P2];
ffa04d2e:	78 a1       	R0 = [FP + 0x14];
ffa04d30:	01 50       	R0 = R1 + R0;
ffa04d32:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpSeqHttpStart> */
ffa04d36:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xff900d48 <_TcpSeqHost> */
ffa04d3a:	10 93       	[P2] = R0;
ffa04d3c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d48 <_TcpSeqHost> */
ffa04d40:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_NetDestIP> */
ffa04d44:	16 91       	R6 = [P2];
ffa04d46:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c34 <_NetDestIP> */
ffa04d4a:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xff900d48 <_TcpSeqHost> */
ffa04d4e:	11 91       	R1 = [P2];
ffa04d50:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d48 <_TcpSeqHost> */
ffa04d54:	0a e1 4c 0d 	P2.L = 0xd4c;		/* (3404)	P2=0xff900d4c <_TcpSeqClient> */
ffa04d58:	12 91       	R2 = [P2];
ffa04d5a:	a3 b9       	R3 = [FP -0x18];
ffa04d5c:	7f 30       	R7 = FP;
ffa04d5e:	1f 67       	R7 += -0x1d;		/* (-29) */
ffa04d60:	c0 60       	R0 = 0x18 (X);		/*		R0=0x18( 24) */
ffa04d62:	f0 b0       	[SP + 0xc] = R0;
ffa04d64:	31 b1       	[SP + 0x10] = R1;
ffa04d66:	72 b1       	[SP + 0x14] = R2;
ffa04d68:	03 30       	R0 = R3;
ffa04d6a:	0f 30       	R1 = R7;
ffa04d6c:	16 30       	R2 = R6;
ffa04d6e:	ff e3 4d fb 	CALL 0xffa04408 <_tcp_packet_setup>;
ffa04d72:	b0 bb       	[FP -0x14] = R0;
ffa04d74:	b8 e5 e3 ff 	R0 = B[FP + -0x1d] (X);
ffa04d78:	00 43       	R0 = R0.B (X);
ffa04d7a:	00 0d       	CC = R0 <= 0x0;
ffa04d7c:	85 18       	IF CC JUMP 0xffa04e86 <_tcp_burst+0x19e>;
ffa04d7e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04d80:	f0 bb       	[FP -0x4] = R0;
ffa04d82:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d4c <_TcpSeqClient> */
ffa04d86:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_g_httpHeaderLen> */
ffa04d8a:	11 91       	R1 = [P2];
ffa04d8c:	78 a1       	R0 = [FP + 0x14];
ffa04d8e:	88 09       	CC = R0 < R1 (IU);
ffa04d90:	22 10       	IF !CC JUMP 0xffa04dd4 <_tcp_burst+0xec>;
ffa04d92:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa04d96:	e0 bb       	[FP -0x8] = R0;
ffa04d98:	79 a1       	R1 = [FP + 0x14];
ffa04d9a:	e0 b9       	R0 = [FP -0x8];
ffa04d9c:	08 50       	R0 = R0 + R1;
ffa04d9e:	e0 bb       	[FP -0x8] = R0;
ffa04da0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d64 <_g_httpHeaderLen> */
ffa04da4:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_g_httpHeaderLen> */
ffa04da8:	11 91       	R1 = [P2];
ffa04daa:	78 a1       	R0 = [FP + 0x14];
ffa04dac:	01 52       	R0 = R1 - R0;
ffa04dae:	f0 bb       	[FP -0x4] = R0;
ffa04db0:	e0 b9       	R0 = [FP -0x8];
ffa04db2:	b1 b9       	R1 = [FP -0x14];
ffa04db4:	f2 b9       	R2 = [FP -0x4];
ffa04db6:	ff e3 d1 df 	CALL 0xffa00d58 <_memcpy_>;
ffa04dba:	f0 b9       	R0 = [FP -0x4];
ffa04dbc:	08 30       	R1 = R0;
ffa04dbe:	b0 b9       	R0 = [FP -0x14];
ffa04dc0:	08 50       	R0 = R0 + R1;
ffa04dc2:	b0 bb       	[FP -0x14] = R0;
ffa04dc4:	a1 b9       	R1 = [FP -0x18];
ffa04dc6:	f0 b9       	R0 = [FP -0x4];
ffa04dc8:	01 52       	R0 = R1 - R0;
ffa04dca:	a0 bb       	[FP -0x18] = R0;
ffa04dcc:	f1 b9       	R1 = [FP -0x4];
ffa04dce:	78 a1       	R0 = [FP + 0x14];
ffa04dd0:	08 50       	R0 = R0 + R1;
ffa04dd2:	78 b1       	[FP + 0x14] = R0;
ffa04dd4:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa04dd8:	e0 bb       	[FP -0x8] = R0;
ffa04dda:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d64 <_g_httpHeaderLen> */
ffa04dde:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_g_httpHeaderLen> */
ffa04de2:	11 91       	R1 = [P2];
ffa04de4:	78 a1       	R0 = [FP + 0x14];
ffa04de6:	08 52       	R0 = R0 - R1;
ffa04de8:	08 30       	R1 = R0;
ffa04dea:	e0 b9       	R0 = [FP -0x8];
ffa04dec:	08 50       	R0 = R0 + R1;
ffa04dee:	e0 bb       	[FP -0x8] = R0;
ffa04df0:	e0 b9       	R0 = [FP -0x8];
ffa04df2:	b1 b9       	R1 = [FP -0x14];
ffa04df4:	a2 b9       	R2 = [FP -0x18];
ffa04df6:	ff e3 b1 df 	CALL 0xffa00d58 <_memcpy_>;
ffa04dfa:	a1 b9       	R1 = [FP -0x18];
ffa04dfc:	78 a1       	R0 = [FP + 0x14];
ffa04dfe:	08 50       	R0 = R0 + R1;
ffa04e00:	78 b1       	[FP + 0x14] = R0;
ffa04e02:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d64 <_g_httpHeaderLen> */
ffa04e06:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpSeqHttpStart> */
ffa04e0a:	11 91       	R1 = [P2];
ffa04e0c:	78 a1       	R0 = [FP + 0x14];
ffa04e0e:	01 50       	R0 = R1 + R0;
ffa04e10:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpSeqHttpStart> */
ffa04e14:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xff900d48 <_TcpSeqHost> */
ffa04e18:	10 93       	[P2] = R0;
ffa04e1a:	a1 b9       	R1 = [FP -0x18];
ffa04e1c:	f0 b9       	R0 = [FP -0x4];
ffa04e1e:	01 50       	R0 = R1 + R0;
ffa04e20:	ff e3 b4 fb 	CALL 0xffa04588 <_tcp_checksum_set>;
ffa04e24:	ff e3 6e e7 	CALL 0xffa01d00 <_bfin_EMAC_send_nocopy>;
ffa04e28:	90 b9       	R0 = [FP -0x1c];
ffa04e2a:	08 64       	R0 += 0x1;		/* (  1) */
ffa04e2c:	90 bb       	[FP -0x1c] = R0;
ffa04e2e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d48 <_TcpSeqHost> */
ffa04e32:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa04e36:	50 95       	R0 = W[P2] (X);
ffa04e38:	c0 42       	R0 = R0.L (Z);
ffa04e3a:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900000 <_l1_data_a>(-7340032) */
ffa04e3e:	01 e1 54 0c 	R1.L = 0xc54;		/* (3156)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa04e42:	10 4f       	R0 <<= 0x2;
ffa04e44:	08 50       	R0 = R0 + R1;
ffa04e46:	10 32       	P2 = R0;
ffa04e48:	52 91       	P2 = [P2];
ffa04e4a:	91 a2       	R1 = [P2 + 0x28];
ffa04e4c:	20 e1 00 10 	R0 = 0x1000 (X);		/*		R0=0x1000(4096) */
ffa04e50:	01 54       	R0 = R1 & R0;
ffa04e52:	00 0c       	CC = R0 == 0x0;
ffa04e54:	19 18       	IF CC JUMP 0xffa04e86 <_tcp_burst+0x19e>;
ffa04e56:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_rxIdx> */
ffa04e5a:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xff900c50 <_rxIdx> */
ffa04e5e:	50 95       	R0 = W[P2] (X);
ffa04e60:	c0 42       	R0 = R0.L (Z);
ffa04e62:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa04e66:	01 e1 54 0c 	R1.L = 0xc54;		/* (3156)	R1=0xff900c54 <_rxbuf>(-7336876) */
ffa04e6a:	10 4f       	R0 <<= 0x2;
ffa04e6c:	08 50       	R0 = R0 + R1;
ffa04e6e:	10 32       	P2 = R0;
ffa04e70:	52 91       	P2 = [P2];
ffa04e72:	91 a2       	R1 = [P2 + 0x28];
ffa04e74:	20 e1 00 20 	R0 = 0x2000 (X);		/*		R0=0x2000(8192) */
ffa04e78:	01 54       	R0 = R1 & R0;
ffa04e7a:	00 0c       	CC = R0 == 0x0;
ffa04e7c:	05 18       	IF CC JUMP 0xffa04e86 <_tcp_burst+0x19e>;
ffa04e7e:	90 b9       	R0 = [FP -0x1c];
ffa04e80:	39 a1       	R1 = [FP + 0x10];
ffa04e82:	08 50       	R0 = R0 + R1;
ffa04e84:	90 bb       	[FP -0x1c] = R0;
ffa04e86:	91 b9       	R1 = [FP -0x1c];
ffa04e88:	38 a1       	R0 = [FP + 0x10];
ffa04e8a:	81 08       	CC = R1 < R0;
ffa04e8c:	05 10       	IF !CC JUMP 0xffa04e96 <_tcp_burst+0x1ae>;
ffa04e8e:	c1 b9       	R1 = [FP -0x10];
ffa04e90:	78 a1       	R0 = [FP + 0x14];
ffa04e92:	01 0a       	CC = R1 <= R0 (IU);
ffa04e94:	3e 13       	IF !CC JUMP 0xffa04d10 <_tcp_burst+0x28>;
ffa04e96:	90 b9       	R0 = [FP -0x1c];
ffa04e98:	01 e8 00 00 	UNLINK;
ffa04e9c:	30 05       	(R7:6) = [SP++];
ffa04e9e:	10 00       	RTS;

ffa04ea0 <_httpCollate>:
ffa04ea0:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa04ea4:	b8 b0       	[FP + 0x8] = R0;
ffa04ea6:	f9 b0       	[FP + 0xc] = R1;
ffa04ea8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 <_rxIdx> */
ffa04eac:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xff900d6c <_g_httpRxed> */
ffa04eb0:	10 91       	R0 = [P2];
ffa04eb2:	00 0c       	CC = R0 == 0x0;
ffa04eb4:	33 18       	IF CC JUMP 0xffa04f1a <_httpCollate+0x7a>;
ffa04eb6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04eb8:	80 4f       	R0 <<= 0x10;
ffa04eba:	f0 bb       	[FP -0x4] = R0;
ffa04ebc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d6c <_g_httpRxed> */
ffa04ec0:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xff900d6c <_g_httpRxed> */
ffa04ec4:	10 91       	R0 = [P2];
ffa04ec6:	08 30       	R1 = R0;
ffa04ec8:	f0 b9       	R0 = [FP -0x4];
ffa04eca:	08 50       	R0 = R0 + R1;
ffa04ecc:	f0 bb       	[FP -0x4] = R0;
ffa04ece:	b8 a0       	R0 = [FP + 0x8];
ffa04ed0:	f1 b9       	R1 = [FP -0x4];
ffa04ed2:	fa a0       	R2 = [FP + 0xc];
ffa04ed4:	ff e3 42 df 	CALL 0xffa00d58 <_memcpy_>;
ffa04ed8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d6c <_g_httpRxed> */
ffa04edc:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xff900d6c <_g_httpRxed> */
ffa04ee0:	11 91       	R1 = [P2];
ffa04ee2:	f8 a0       	R0 = [FP + 0xc];
ffa04ee4:	01 50       	R0 = R1 + R0;
ffa04ee6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d6c <_g_httpRxed> */
ffa04eea:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xff900d6c <_g_httpRxed> */
ffa04eee:	10 93       	[P2] = R0;
ffa04ef0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d6c <_g_httpRxed> */
ffa04ef4:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xff900d6c <_g_httpRxed> */
ffa04ef8:	10 91       	R0 = [P2];
ffa04efa:	08 30       	R1 = R0;
ffa04efc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04efe:	80 4f       	R0 <<= 0x10;
ffa04f00:	00 e3 2e 00 	CALL 0xffa04f5c <_httpResp>;
ffa04f04:	00 0c       	CC = R0 == 0x0;
ffa04f06:	25 18       	IF CC JUMP 0xffa04f50 <_httpCollate+0xb0>;
ffa04f08:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d6c <_g_httpRxed> */
ffa04f0c:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xff900d6c <_g_httpRxed> */
ffa04f10:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04f12:	10 93       	[P2] = R0;
ffa04f14:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04f16:	e0 bb       	[FP -0x8] = R0;
ffa04f18:	1e 20       	JUMP.S 0xffa04f54 <_httpCollate+0xb4>;
ffa04f1a:	f9 a0       	R1 = [FP + 0xc];
ffa04f1c:	b8 a0       	R0 = [FP + 0x8];
ffa04f1e:	00 e3 1f 00 	CALL 0xffa04f5c <_httpResp>;
ffa04f22:	00 0c       	CC = R0 == 0x0;
ffa04f24:	0a 18       	IF CC JUMP 0xffa04f38 <_httpCollate+0x98>;
ffa04f26:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d6c <_g_httpRxed> */
ffa04f2a:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xff900d6c <_g_httpRxed> */
ffa04f2e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04f30:	10 93       	[P2] = R0;
ffa04f32:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04f34:	e0 bb       	[FP -0x8] = R0;
ffa04f36:	0f 20       	JUMP.S 0xffa04f54 <_httpCollate+0xb4>;
ffa04f38:	b8 a0       	R0 = [FP + 0x8];
ffa04f3a:	fa a0       	R2 = [FP + 0xc];
ffa04f3c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa04f3e:	81 4f       	R1 <<= 0x10;
ffa04f40:	ff e3 0c df 	CALL 0xffa00d58 <_memcpy_>;
ffa04f44:	f8 a0       	R0 = [FP + 0xc];
ffa04f46:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d6c <_g_httpRxed> */
ffa04f4a:	0a e1 6c 0d 	P2.L = 0xd6c;		/* (3436)	P2=0xff900d6c <_g_httpRxed> */
ffa04f4e:	10 93       	[P2] = R0;
ffa04f50:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04f52:	e0 bb       	[FP -0x8] = R0;
ffa04f54:	e0 b9       	R0 = [FP -0x8];
ffa04f56:	01 e8 00 00 	UNLINK;
ffa04f5a:	10 00       	RTS;

ffa04f5c <_httpResp>:
ffa04f5c:	00 e8 2f 00 	LINK 0xbc;		/* (188) */
ffa04f60:	b8 b0       	[FP + 0x8] = R0;
ffa04f62:	f9 b0       	[FP + 0xc] = R1;
ffa04f64:	f8 a0       	R0 = [FP + 0xc];
ffa04f66:	71 60       	R1 = 0xe (X);		/*		R1=0xe( 14) */
ffa04f68:	08 09       	CC = R0 <= R1;
ffa04f6a:	22 18       	IF CC JUMP 0xffa04fae <_httpResp+0x52>;
ffa04f6c:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff90000e(-7340018) */
ffa04f70:	01 e1 d4 05 	R1.L = 0x5d4;		/* (1492)	R1=0xff9005d4(-7338540) */
ffa04f74:	b8 a0       	R0 = [FP + 0x8];
ffa04f76:	ff e3 a3 df 	CALL 0xffa00ebc <_strcmp>;
ffa04f7a:	00 0c       	CC = R0 == 0x0;
ffa04f7c:	19 18       	IF CC JUMP 0xffa04fae <_httpResp+0x52>;
ffa04f7e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa04f82:	00 e1 e0 05 	R0.L = 0x5e0;		/* (1504)	R0=0xff9005e0(-7338528) */
ffa04f86:	fa a0       	R2 = [FP + 0xc];
ffa04f88:	b9 a0       	R1 = [FP + 0x8];
ffa04f8a:	ff e3 d1 df 	CALL 0xffa00f2c <_substr>;
ffa04f8e:	00 0c       	CC = R0 == 0x0;
ffa04f90:	02 14       	IF !CC JUMP 0xffa04f94 <_httpResp+0x38> (BP);
ffa04f92:	77 23       	JUMP.S 0xffa05680 <_httpResp+0x724>;
ffa04f94:	00 e3 f2 03 	CALL 0xffa05778 <_htmlDefault>;
ffa04f98:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d6c <_g_httpRxed> */
ffa04f9c:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xff900d68 <_g_httpContentLen> */
ffa04fa0:	10 93       	[P2] = R0;
ffa04fa2:	00 e3 77 03 	CALL 0xffa05690 <_httpHeader>;
ffa04fa6:	09 68       	P1 = 0x1 (X);		/*		P1=0x1(  1) */
ffa04fa8:	39 e7 d4 ff 	[FP + -0xb0] = P1;
ffa04fac:	6d 23       	JUMP.S 0xffa05686 <_httpResp+0x72a>;
ffa04fae:	f8 a0       	R0 = [FP + 0xc];
ffa04fb0:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa04fb2:	08 09       	CC = R0 <= R1;
ffa04fb4:	85 18       	IF CC JUMP 0xffa050be <_httpResp+0x162>;
ffa04fb6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005e0(-7338528) */
ffa04fba:	00 e1 e8 05 	R0.L = 0x5e8;		/* (1512)	R0=0xff9005e8(-7338520) */
ffa04fbe:	fa a0       	R2 = [FP + 0xc];
ffa04fc0:	b9 a0       	R1 = [FP + 0x8];
ffa04fc2:	ff e3 b5 df 	CALL 0xffa00f2c <_substr>;
ffa04fc6:	00 0c       	CC = R0 == 0x0;
ffa04fc8:	7b 18       	IF CC JUMP 0xffa050be <_httpResp+0x162>;
ffa04fca:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005e8(-7338520) */
ffa04fce:	00 e1 f4 05 	R0.L = 0x5f4;		/* (1524)	R0=0xff9005f4(-7338508) */
ffa04fd2:	fa a0       	R2 = [FP + 0xc];
ffa04fd4:	b9 a0       	R1 = [FP + 0x8];
ffa04fd6:	ff e3 ab df 	CALL 0xffa00f2c <_substr>;
ffa04fda:	70 ba       	[FP -0x64] = R0;
ffa04fdc:	70 b8       	R0 = [FP -0x64];
ffa04fde:	00 0c       	CC = R0 == 0x0;
ffa04fe0:	02 14       	IF !CC JUMP 0xffa04fe4 <_httpResp+0x88> (BP);
ffa04fe2:	4f 23       	JUMP.S 0xffa05680 <_httpResp+0x724>;
ffa04fe4:	b8 a0       	R0 = [FP + 0x8];
ffa04fe6:	80 ba       	[FP -0x60] = R0;
ffa04fe8:	70 b8       	R0 = [FP -0x64];
ffa04fea:	08 30       	R1 = R0;
ffa04fec:	80 b8       	R0 = [FP -0x60];
ffa04fee:	08 50       	R0 = R0 + R1;
ffa04ff0:	80 ba       	[FP -0x60] = R0;
ffa04ff2:	80 b8       	R0 = [FP -0x60];
ffa04ff4:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa04ff6:	ff e3 3b e1 	CALL 0xffa0126c <_atoi>;
ffa04ffa:	90 ba       	[FP -0x5c] = R0;
ffa04ffc:	90 b8       	R0 = [FP -0x5c];
ffa04ffe:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa05000:	08 09       	CC = R0 <= R1;
ffa05002:	41 18       	IF CC JUMP 0xffa05084 <_httpResp+0x128>;
ffa05004:	90 b8       	R0 = [FP -0x5c];
ffa05006:	21 e1 a0 0f 	R1 = 0xfa0 (X);		/*		R1=0xfa0(4000) */
ffa0500a:	08 09       	CC = R0 <= R1;
ffa0500c:	3c 10       	IF !CC JUMP 0xffa05084 <_httpResp+0x128>;
ffa0500e:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff8005f4(-8387084) */
ffa05012:	00 e1 04 08 	R0.L = 0x804;		/* (2052)	R0=0xff800804(-8386556) */
ffa05016:	a0 ba       	[FP -0x58] = R0;
ffa05018:	aa b8       	P2 = [FP -0x58];
ffa0501a:	11 91       	R1 = [P2];
ffa0501c:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa05020:	28 4f       	R0 <<= 0x5;
ffa05022:	41 54       	R1 = R1 & R0;
ffa05024:	90 b8       	R0 = [FP -0x5c];
ffa05026:	28 4f       	R0 <<= 0x5;
ffa05028:	01 52       	R0 = R1 - R0;
ffa0502a:	b0 ba       	[FP -0x54] = R0;
ffa0502c:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa05030:	c0 ba       	[FP -0x50] = R0;
ffa05032:	b0 b8       	R0 = [FP -0x54];
ffa05034:	d0 ba       	[FP -0x4c] = R0;
ffa05036:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05038:	e0 ba       	[FP -0x48] = R0;
ffa0503a:	15 20       	JUMP.S 0xffa05064 <_httpResp+0x108>;
ffa0503c:	d0 b8       	R0 = [FP -0x4c];
ffa0503e:	08 30       	R1 = R0;
ffa05040:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa05042:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa05046:	01 54       	R0 = R1 & R0;
ffa05048:	d0 ba       	[FP -0x4c] = R0;
ffa0504a:	da b8       	P2 = [FP -0x4c];
ffa0504c:	10 91       	R0 = [P2];
ffa0504e:	ca b8       	P2 = [FP -0x50];
ffa05050:	10 93       	[P2] = R0;
ffa05052:	c0 b8       	R0 = [FP -0x50];
ffa05054:	20 64       	R0 += 0x4;		/* (  4) */
ffa05056:	c0 ba       	[FP -0x50] = R0;
ffa05058:	d0 b8       	R0 = [FP -0x4c];
ffa0505a:	20 64       	R0 += 0x4;		/* (  4) */
ffa0505c:	d0 ba       	[FP -0x4c] = R0;
ffa0505e:	e0 b8       	R0 = [FP -0x48];
ffa05060:	08 64       	R0 += 0x1;		/* (  1) */
ffa05062:	e0 ba       	[FP -0x48] = R0;
ffa05064:	90 b8       	R0 = [FP -0x5c];
ffa05066:	82 c6 18 82 	R1 = R0 << 0x3;
ffa0506a:	e0 b8       	R0 = [FP -0x48];
ffa0506c:	01 09       	CC = R1 <= R0;
ffa0506e:	e7 13       	IF !CC JUMP 0xffa0503c <_httpResp+0xe0>;
ffa05070:	90 b8       	R0 = [FP -0x5c];
ffa05072:	28 4f       	R0 <<= 0x5;
ffa05074:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d68 <_g_httpContentLen> */
ffa05078:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xff900d68 <_g_httpContentLen> */
ffa0507c:	10 93       	[P2] = R0;
ffa0507e:	00 e3 09 03 	CALL 0xffa05690 <_httpHeader>;
ffa05082:	1a 20       	JUMP.S 0xffa050b6 <_httpResp+0x15a>;
ffa05084:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa05088:	f0 ba       	[FP -0x44] = R0;
ffa0508a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0508c:	60 ba       	[FP -0x68] = R0;
ffa0508e:	f0 b8       	R0 = [FP -0x44];
ffa05090:	2a e1 98 ff 	P2 = -0x68 (X);		/*		P2=0xffffff98(-104) */
ffa05094:	97 5a       	P2 = FP + P2;
ffa05096:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c7c <_NetArpLut>(-7336836) */
ffa0509a:	02 e1 fc 05 	R2.L = 0x5fc;		/* (1532)	R2=0xff9005fc(-7338500) */
ffa0509e:	4a 30       	R1 = P2;
ffa050a0:	ff e3 b4 de 	CALL 0xffa00e08 <_strcpy_>;
ffa050a4:	f0 ba       	[FP -0x44] = R0;
ffa050a6:	60 b8       	R0 = [FP -0x68];
ffa050a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90ff98 */
ffa050ac:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xff900d68 <_g_httpContentLen> */
ffa050b0:	10 93       	[P2] = R0;
ffa050b2:	00 e3 ef 02 	CALL 0xffa05690 <_httpHeader>;
ffa050b6:	09 68       	P1 = 0x1 (X);		/*		P1=0x1(  1) */
ffa050b8:	39 e7 d4 ff 	[FP + -0xb0] = P1;
ffa050bc:	e5 22       	JUMP.S 0xffa05686 <_httpResp+0x72a>;
ffa050be:	f8 a0       	R0 = [FP + 0xc];
ffa050c0:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa050c2:	08 09       	CC = R0 <= R1;
ffa050c4:	02 14       	IF !CC JUMP 0xffa050c8 <_httpResp+0x16c> (BP);
ffa050c6:	c6 22       	JUMP.S 0xffa05652 <_httpResp+0x6f6>;
ffa050c8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa050cc:	00 e1 28 06 	R0.L = 0x628;		/* (1576)	R0=0xff900628(-7338456) */
ffa050d0:	fa a0       	R2 = [FP + 0xc];
ffa050d2:	b9 a0       	R1 = [FP + 0x8];
ffa050d4:	ff e3 2c df 	CALL 0xffa00f2c <_substr>;
ffa050d8:	00 0c       	CC = R0 == 0x0;
ffa050da:	02 14       	IF !CC JUMP 0xffa050de <_httpResp+0x182> (BP);
ffa050dc:	bb 22       	JUMP.S 0xffa05652 <_httpResp+0x6f6>;
ffa050de:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa050e0:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa050e4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa050e8:	00 e1 30 06 	R0.L = 0x630;		/* (1584)	R0=0xff900630(-7338448) */
ffa050ec:	fa a0       	R2 = [FP + 0xc];
ffa050ee:	b9 a0       	R1 = [FP + 0x8];
ffa050f0:	ff e3 1e df 	CALL 0xffa00f2c <_substr>;
ffa050f4:	00 0c       	CC = R0 == 0x0;
ffa050f6:	35 18       	IF CC JUMP 0xffa05160 <_httpResp+0x204>;
ffa050f8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900630(-7338448) */
ffa050fc:	00 e1 40 06 	R0.L = 0x640;		/* (1600)	R0=0xff900640(-7338432) */
ffa05100:	fa a0       	R2 = [FP + 0xc];
ffa05102:	b9 a0       	R1 = [FP + 0x8];
ffa05104:	ff e3 14 df 	CALL 0xffa00f2c <_substr>;
ffa05108:	00 0c       	CC = R0 == 0x0;
ffa0510a:	18 18       	IF CC JUMP 0xffa0513a <_httpResp+0x1de>;
ffa0510c:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff800640(-8387008) */
ffa05110:	00 e1 04 08 	R0.L = 0x804;		/* (2052)	R0=0xff800804(-8386556) */
ffa05114:	30 bb       	[FP -0x34] = R0;
ffa05116:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff800804(-8386556) */
ffa0511a:	00 e1 08 08 	R0.L = 0x808;		/* (2056)	R0=0xff800808(-8386552) */
ffa0511e:	40 bb       	[FP -0x30] = R0;
ffa05120:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d68 <_g_httpContentLen> */
ffa05124:	0a e1 c8 0b 	P2.L = 0xbc8;		/* (3016)	P2=0xff900bc8 <_g_streamEnabled> */
ffa05128:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0512a:	10 9b       	B[P2] = R0;
ffa0512c:	3a b9       	P2 = [FP -0x34];
ffa0512e:	10 91       	R0 = [P2];
ffa05130:	4a b9       	P2 = [FP -0x30];
ffa05132:	10 93       	[P2] = R0;
ffa05134:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05136:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa0513a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0513e:	00 e1 48 06 	R0.L = 0x648;		/* (1608)	R0=0xff900648(-7338424) */
ffa05142:	fa a0       	R2 = [FP + 0xc];
ffa05144:	b9 a0       	R1 = [FP + 0x8];
ffa05146:	ff e3 f3 de 	CALL 0xffa00f2c <_substr>;
ffa0514a:	00 0c       	CC = R0 == 0x0;
ffa0514c:	0a 18       	IF CC JUMP 0xffa05160 <_httpResp+0x204>;
ffa0514e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bc8 <_g_streamEnabled> */
ffa05152:	0a e1 c8 0b 	P2.L = 0xbc8;		/* (3016)	P2=0xff900bc8 <_g_streamEnabled> */
ffa05156:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05158:	10 9b       	B[P2] = R0;
ffa0515a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0515c:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa05160:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05164:	00 e1 54 06 	R0.L = 0x654;		/* (1620)	R0=0xff900654(-7338412) */
ffa05168:	fa a0       	R2 = [FP + 0xc];
ffa0516a:	b9 a0       	R1 = [FP + 0x8];
ffa0516c:	ff e3 e0 de 	CALL 0xffa00f2c <_substr>;
ffa05170:	00 0c       	CC = R0 == 0x0;
ffa05172:	27 18       	IF CC JUMP 0xffa051c0 <_httpResp+0x264>;
ffa05174:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900654(-7338412) */
ffa05178:	00 e1 40 06 	R0.L = 0x640;		/* (1600)	R0=0xff900640(-7338432) */
ffa0517c:	fa a0       	R2 = [FP + 0xc];
ffa0517e:	b9 a0       	R1 = [FP + 0x8];
ffa05180:	ff e3 d6 de 	CALL 0xffa00f2c <_substr>;
ffa05184:	00 0c       	CC = R0 == 0x0;
ffa05186:	0a 18       	IF CC JUMP 0xffa0519a <_httpResp+0x23e>;
ffa05188:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bc8 */
ffa0518c:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa05190:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05192:	10 9b       	B[P2] = R0;
ffa05194:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05196:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa0519a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0519e:	00 e1 48 06 	R0.L = 0x648;		/* (1608)	R0=0xff900648(-7338424) */
ffa051a2:	fa a0       	R2 = [FP + 0xc];
ffa051a4:	b9 a0       	R1 = [FP + 0x8];
ffa051a6:	ff e3 c3 de 	CALL 0xffa00f2c <_substr>;
ffa051aa:	00 0c       	CC = R0 == 0x0;
ffa051ac:	0a 18       	IF CC JUMP 0xffa051c0 <_httpResp+0x264>;
ffa051ae:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa051b2:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa051b6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa051b8:	10 9b       	B[P2] = R0;
ffa051ba:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa051bc:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa051c0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa051c4:	00 e1 60 06 	R0.L = 0x660;		/* (1632)	R0=0xff900660(-7338400) */
ffa051c8:	fa a0       	R2 = [FP + 0xc];
ffa051ca:	b9 a0       	R1 = [FP + 0x8];
ffa051cc:	ff e3 b0 de 	CALL 0xffa00f2c <_substr>;
ffa051d0:	20 bb       	[FP -0x38] = R0;
ffa051d2:	20 b9       	R0 = [FP -0x38];
ffa051d4:	00 0c       	CC = R0 == 0x0;
ffa051d6:	0b 18       	IF CC JUMP 0xffa051ec <_httpResp+0x290>;
ffa051d8:	b8 a0       	R0 = [FP + 0x8];
ffa051da:	10 bb       	[FP -0x3c] = R0;
ffa051dc:	20 b9       	R0 = [FP -0x38];
ffa051de:	08 30       	R1 = R0;
ffa051e0:	10 b9       	R0 = [FP -0x3c];
ffa051e2:	08 50       	R0 = R0 + R1;
ffa051e4:	10 bb       	[FP -0x3c] = R0;
ffa051e6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa051e8:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa051ec:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa051f0:	00 e1 6c 06 	R0.L = 0x66c;		/* (1644)	R0=0xff90066c(-7338388) */
ffa051f4:	fa a0       	R2 = [FP + 0xc];
ffa051f6:	b9 a0       	R1 = [FP + 0x8];
ffa051f8:	ff e3 9a de 	CALL 0xffa00f2c <_substr>;
ffa051fc:	20 bb       	[FP -0x38] = R0;
ffa051fe:	20 b9       	R0 = [FP -0x38];
ffa05200:	00 0c       	CC = R0 == 0x0;
ffa05202:	0b 18       	IF CC JUMP 0xffa05218 <_httpResp+0x2bc>;
ffa05204:	b8 a0       	R0 = [FP + 0x8];
ffa05206:	10 bb       	[FP -0x3c] = R0;
ffa05208:	20 b9       	R0 = [FP -0x38];
ffa0520a:	08 30       	R1 = R0;
ffa0520c:	10 b9       	R0 = [FP -0x3c];
ffa0520e:	08 50       	R0 = R0 + R1;
ffa05210:	10 bb       	[FP -0x3c] = R0;
ffa05212:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05214:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa05218:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0521c:	00 e1 78 06 	R0.L = 0x678;		/* (1656)	R0=0xff900678(-7338376) */
ffa05220:	fa a0       	R2 = [FP + 0xc];
ffa05222:	b9 a0       	R1 = [FP + 0x8];
ffa05224:	ff e3 84 de 	CALL 0xffa00f2c <_substr>;
ffa05228:	20 bb       	[FP -0x38] = R0;
ffa0522a:	20 b9       	R0 = [FP -0x38];
ffa0522c:	00 0c       	CC = R0 == 0x0;
ffa0522e:	0b 18       	IF CC JUMP 0xffa05244 <_httpResp+0x2e8>;
ffa05230:	b8 a0       	R0 = [FP + 0x8];
ffa05232:	10 bb       	[FP -0x3c] = R0;
ffa05234:	20 b9       	R0 = [FP -0x38];
ffa05236:	08 30       	R1 = R0;
ffa05238:	10 b9       	R0 = [FP -0x3c];
ffa0523a:	08 50       	R0 = R0 + R1;
ffa0523c:	10 bb       	[FP -0x3c] = R0;
ffa0523e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05240:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa05244:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05248:	00 e1 84 06 	R0.L = 0x684;		/* (1668)	R0=0xff900684(-7338364) */
ffa0524c:	fa a0       	R2 = [FP + 0xc];
ffa0524e:	b9 a0       	R1 = [FP + 0x8];
ffa05250:	ff e3 6e de 	CALL 0xffa00f2c <_substr>;
ffa05254:	20 bb       	[FP -0x38] = R0;
ffa05256:	20 b9       	R0 = [FP -0x38];
ffa05258:	00 0c       	CC = R0 == 0x0;
ffa0525a:	0b 18       	IF CC JUMP 0xffa05270 <_httpResp+0x314>;
ffa0525c:	b8 a0       	R0 = [FP + 0x8];
ffa0525e:	10 bb       	[FP -0x3c] = R0;
ffa05260:	20 b9       	R0 = [FP -0x38];
ffa05262:	08 30       	R1 = R0;
ffa05264:	10 b9       	R0 = [FP -0x3c];
ffa05266:	08 50       	R0 = R0 + R1;
ffa05268:	10 bb       	[FP -0x3c] = R0;
ffa0526a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0526c:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa05270:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05274:	00 e1 90 06 	R0.L = 0x690;		/* (1680)	R0=0xff900690(-7338352) */
ffa05278:	fa a0       	R2 = [FP + 0xc];
ffa0527a:	b9 a0       	R1 = [FP + 0x8];
ffa0527c:	ff e3 58 de 	CALL 0xffa00f2c <_substr>;
ffa05280:	20 bb       	[FP -0x38] = R0;
ffa05282:	20 b9       	R0 = [FP -0x38];
ffa05284:	00 0c       	CC = R0 == 0x0;
ffa05286:	29 18       	IF CC JUMP 0xffa052d8 <_httpResp+0x37c>;
ffa05288:	b8 a0       	R0 = [FP + 0x8];
ffa0528a:	10 bb       	[FP -0x3c] = R0;
ffa0528c:	20 b9       	R0 = [FP -0x38];
ffa0528e:	08 30       	R1 = R0;
ffa05290:	10 b9       	R0 = [FP -0x3c];
ffa05292:	08 50       	R0 = R0 + R1;
ffa05294:	10 bb       	[FP -0x3c] = R0;
ffa05296:	10 b9       	R0 = [FP -0x3c];
ffa05298:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0529a:	ff e3 e9 df 	CALL 0xffa0126c <_atoi>;
ffa0529e:	40 43       	R0 = R0.B (Z);
ffa052a0:	50 bb       	[FP -0x2c] = R0;
ffa052a2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa052a6:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa052aa:	10 91       	R0 = [P2];
ffa052ac:	40 4d       	R0 >>>= 0x8;
ffa052ae:	40 4f       	R0 <<= 0x8;
ffa052b0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c74 <_NetDataDestIP> */
ffa052b4:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa052b8:	10 93       	[P2] = R0;
ffa052ba:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c74 <_NetDataDestIP> */
ffa052be:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa052c2:	11 91       	R1 = [P2];
ffa052c4:	50 b9       	R0 = [FP -0x2c];
ffa052c6:	01 50       	R0 = R1 + R0;
ffa052c8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c74 <_NetDataDestIP> */
ffa052cc:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa052d0:	10 93       	[P2] = R0;
ffa052d2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa052d4:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa052d8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa052dc:	00 e1 98 06 	R0.L = 0x698;		/* (1688)	R0=0xff900698(-7338344) */
ffa052e0:	fa a0       	R2 = [FP + 0xc];
ffa052e2:	b9 a0       	R1 = [FP + 0x8];
ffa052e4:	ff e3 24 de 	CALL 0xffa00f2c <_substr>;
ffa052e8:	20 bb       	[FP -0x38] = R0;
ffa052ea:	20 b9       	R0 = [FP -0x38];
ffa052ec:	00 0c       	CC = R0 == 0x0;
ffa052ee:	2d 18       	IF CC JUMP 0xffa05348 <_httpResp+0x3ec>;
ffa052f0:	b8 a0       	R0 = [FP + 0x8];
ffa052f2:	10 bb       	[FP -0x3c] = R0;
ffa052f4:	20 b9       	R0 = [FP -0x38];
ffa052f6:	08 30       	R1 = R0;
ffa052f8:	10 b9       	R0 = [FP -0x3c];
ffa052fa:	08 50       	R0 = R0 + R1;
ffa052fc:	10 bb       	[FP -0x3c] = R0;
ffa052fe:	10 b9       	R0 = [FP -0x3c];
ffa05300:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa05302:	ff e3 b5 df 	CALL 0xffa0126c <_atoi>;
ffa05306:	40 43       	R0 = R0.B (Z);
ffa05308:	60 bb       	[FP -0x28] = R0;
ffa0530a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c74 <_NetDataDestIP> */
ffa0530e:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa05312:	11 91       	R1 = [P2];
ffa05314:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa05316:	00 e1 ff 00 	R0.L = 0xff;		/* (255)	R0=0xffff00ff(-65281) */
ffa0531a:	01 54       	R0 = R1 & R0;
ffa0531c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c74 <_NetDataDestIP> */
ffa05320:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa05324:	10 93       	[P2] = R0;
ffa05326:	60 b9       	R0 = [FP -0x28];
ffa05328:	82 c6 40 82 	R1 = R0 << 0x8;
ffa0532c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c74 <_NetDataDestIP> */
ffa05330:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa05334:	10 91       	R0 = [P2];
ffa05336:	01 50       	R0 = R1 + R0;
ffa05338:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c74 <_NetDataDestIP> */
ffa0533c:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa05340:	10 93       	[P2] = R0;
ffa05342:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05344:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa05348:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0534c:	00 e1 a0 06 	R0.L = 0x6a0;		/* (1696)	R0=0xff9006a0(-7338336) */
ffa05350:	fa a0       	R2 = [FP + 0xc];
ffa05352:	b9 a0       	R1 = [FP + 0x8];
ffa05354:	ff e3 ec dd 	CALL 0xffa00f2c <_substr>;
ffa05358:	20 bb       	[FP -0x38] = R0;
ffa0535a:	20 b9       	R0 = [FP -0x38];
ffa0535c:	00 0c       	CC = R0 == 0x0;
ffa0535e:	2d 18       	IF CC JUMP 0xffa053b8 <_httpResp+0x45c>;
ffa05360:	b8 a0       	R0 = [FP + 0x8];
ffa05362:	10 bb       	[FP -0x3c] = R0;
ffa05364:	20 b9       	R0 = [FP -0x38];
ffa05366:	08 30       	R1 = R0;
ffa05368:	10 b9       	R0 = [FP -0x3c];
ffa0536a:	08 50       	R0 = R0 + R1;
ffa0536c:	10 bb       	[FP -0x3c] = R0;
ffa0536e:	10 b9       	R0 = [FP -0x3c];
ffa05370:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa05372:	ff e3 7d df 	CALL 0xffa0126c <_atoi>;
ffa05376:	40 43       	R0 = R0.B (Z);
ffa05378:	70 bb       	[FP -0x24] = R0;
ffa0537a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c74 <_NetDataDestIP> */
ffa0537e:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa05382:	11 91       	R1 = [P2];
ffa05384:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa05386:	40 e1 00 ff 	R0.H = 0xff00;		/* (-256)	R0=0xff00ffff(-16711681) */
ffa0538a:	01 54       	R0 = R1 & R0;
ffa0538c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c74 <_NetDataDestIP> */
ffa05390:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa05394:	10 93       	[P2] = R0;
ffa05396:	70 b9       	R0 = [FP -0x24];
ffa05398:	82 c6 80 82 	R1 = R0 << 0x10;
ffa0539c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c74 <_NetDataDestIP> */
ffa053a0:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa053a4:	10 91       	R0 = [P2];
ffa053a6:	01 50       	R0 = R1 + R0;
ffa053a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c74 <_NetDataDestIP> */
ffa053ac:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa053b0:	10 93       	[P2] = R0;
ffa053b2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa053b4:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa053b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa053bc:	00 e1 a8 06 	R0.L = 0x6a8;		/* (1704)	R0=0xff9006a8(-7338328) */
ffa053c0:	fa a0       	R2 = [FP + 0xc];
ffa053c2:	b9 a0       	R1 = [FP + 0x8];
ffa053c4:	ff e3 b4 dd 	CALL 0xffa00f2c <_substr>;
ffa053c8:	20 bb       	[FP -0x38] = R0;
ffa053ca:	20 b9       	R0 = [FP -0x38];
ffa053cc:	00 0c       	CC = R0 == 0x0;
ffa053ce:	2d 18       	IF CC JUMP 0xffa05428 <_httpResp+0x4cc>;
ffa053d0:	b8 a0       	R0 = [FP + 0x8];
ffa053d2:	10 bb       	[FP -0x3c] = R0;
ffa053d4:	20 b9       	R0 = [FP -0x38];
ffa053d6:	08 30       	R1 = R0;
ffa053d8:	10 b9       	R0 = [FP -0x3c];
ffa053da:	08 50       	R0 = R0 + R1;
ffa053dc:	10 bb       	[FP -0x3c] = R0;
ffa053de:	10 b9       	R0 = [FP -0x3c];
ffa053e0:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa053e2:	ff e3 45 df 	CALL 0xffa0126c <_atoi>;
ffa053e6:	40 43       	R0 = R0.B (Z);
ffa053e8:	80 bb       	[FP -0x20] = R0;
ffa053ea:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c74 <_NetDataDestIP> */
ffa053ee:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa053f2:	11 91       	R1 = [P2];
ffa053f4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa053f6:	40 e1 ff 00 	R0.H = 0xff;		/* (255)	R0=0xffffff(16777215) */
ffa053fa:	01 54       	R0 = R1 & R0;
ffa053fc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c74 <_NetDataDestIP> */
ffa05400:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa05404:	10 93       	[P2] = R0;
ffa05406:	80 b9       	R0 = [FP -0x20];
ffa05408:	82 c6 c0 82 	R1 = R0 << 0x18;
ffa0540c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c74 <_NetDataDestIP> */
ffa05410:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa05414:	10 91       	R0 = [P2];
ffa05416:	01 50       	R0 = R1 + R0;
ffa05418:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c74 <_NetDataDestIP> */
ffa0541c:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa05420:	10 93       	[P2] = R0;
ffa05422:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05424:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa05428:	b8 e5 c3 ff 	R0 = B[FP + -0x3d] (X);
ffa0542c:	00 0c       	CC = R0 == 0x0;
ffa0542e:	0e 18       	IF CC JUMP 0xffa0544a <_httpResp+0x4ee>;
ffa05430:	00 e3 a4 01 	CALL 0xffa05778 <_htmlDefault>;
ffa05434:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c74 <_NetDataDestIP> */
ffa05438:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xff900d68 <_g_httpContentLen> */
ffa0543c:	10 93       	[P2] = R0;
ffa0543e:	00 e3 29 01 	CALL 0xffa05690 <_httpHeader>;
ffa05442:	09 68       	P1 = 0x1 (X);		/*		P1=0x1(  1) */
ffa05444:	39 e7 d4 ff 	[FP + -0xb0] = P1;
ffa05448:	1f 21       	JUMP.S 0xffa05686 <_httpResp+0x72a>;
ffa0544a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0544e:	00 e1 b0 06 	R0.L = 0x6b0;		/* (1712)	R0=0xff9006b0(-7338320) */
ffa05452:	fa a0       	R2 = [FP + 0xc];
ffa05454:	b9 a0       	R1 = [FP + 0x8];
ffa05456:	ff e3 6b dd 	CALL 0xffa00f2c <_substr>;
ffa0545a:	00 0c       	CC = R0 == 0x0;
ffa0545c:	12 19       	IF CC JUMP 0xffa05680 <_httpResp+0x724>;
ffa0545e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05460:	90 bb       	[FP -0x1c] = R0;
ffa05462:	0e 20       	JUMP.S 0xffa0547e <_httpResp+0x522>;
ffa05464:	90 b9       	R0 = [FP -0x1c];
ffa05466:	08 32       	P1 = R0;
ffa05468:	4a 44       	P2 = P1 << 0x2;
ffa0546a:	ba 5a       	P2 = P2 + FP;
ffa0546c:	20 e1 54 ff 	R0 = -0xac (X);		/*		R0=0xffffff54(-172) */
ffa05470:	08 32       	P1 = R0;
ffa05472:	8a 5a       	P2 = P2 + P1;
ffa05474:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05476:	10 93       	[P2] = R0;
ffa05478:	90 b9       	R0 = [FP -0x1c];
ffa0547a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0547c:	90 bb       	[FP -0x1c] = R0;
ffa0547e:	90 b9       	R0 = [FP -0x1c];
ffa05480:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa05482:	08 09       	CC = R0 <= R1;
ffa05484:	f0 1b       	IF CC JUMP 0xffa05464 <_httpResp+0x508>;
ffa05486:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff800000(-8388608) */
ffa0548a:	00 e1 04 08 	R0.L = 0x804;		/* (2052)	R0=0xff800804(-8386556) */
ffa0548e:	b0 bb       	[FP -0x14] = R0;
ffa05490:	ba b9       	P2 = [FP -0x14];
ffa05492:	11 91       	R1 = [P2];
ffa05494:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa05498:	28 4f       	R0 <<= 0x5;
ffa0549a:	41 54       	R1 = R1 & R0;
ffa0549c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0549e:	80 4f       	R0 <<= 0x10;
ffa054a0:	01 50       	R0 = R1 + R0;
ffa054a2:	c0 bb       	[FP -0x10] = R0;
ffa054a4:	c1 b9       	R1 = [FP -0x10];
ffa054a6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa054a8:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa054ac:	01 54       	R0 = R1 & R0;
ffa054ae:	c0 bb       	[FP -0x10] = R0;
ffa054b0:	c0 b9       	R0 = [FP -0x10];
ffa054b2:	d0 bb       	[FP -0xc] = R0;
ffa054b4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa054b6:	a0 bb       	[FP -0x18] = R0;
ffa054b8:	2e 20       	JUMP.S 0xffa05514 <_httpResp+0x5b8>;
ffa054ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa054bc:	90 bb       	[FP -0x1c] = R0;
ffa054be:	24 20       	JUMP.S 0xffa05506 <_httpResp+0x5aa>;
ffa054c0:	92 b9       	R2 = [FP -0x1c];
ffa054c2:	90 b9       	R0 = [FP -0x1c];
ffa054c4:	08 32       	P1 = R0;
ffa054c6:	4a 44       	P2 = P1 << 0x2;
ffa054c8:	ba 5a       	P2 = P2 + FP;
ffa054ca:	20 e1 54 ff 	R0 = -0xac (X);		/*		R0=0xffffff54(-172) */
ffa054ce:	08 32       	P1 = R0;
ffa054d0:	8a 5a       	P2 = P2 + P1;
ffa054d2:	11 91       	R1 = [P2];
ffa054d4:	da b9       	P2 = [FP -0xc];
ffa054d6:	50 95       	R0 = W[P2] (X);
ffa054d8:	c0 42       	R0 = R0.L (Z);
ffa054da:	41 50       	R1 = R1 + R0;
ffa054dc:	0a 32       	P1 = R2;
ffa054de:	4a 44       	P2 = P1 << 0x2;
ffa054e0:	ba 5a       	P2 = P2 + FP;
ffa054e2:	20 e1 54 ff 	R0 = -0xac (X);		/*		R0=0xffffff54(-172) */
ffa054e6:	08 32       	P1 = R0;
ffa054e8:	8a 5a       	P2 = P2 + P1;
ffa054ea:	11 93       	[P2] = R1;
ffa054ec:	d0 b9       	R0 = [FP -0xc];
ffa054ee:	10 64       	R0 += 0x2;		/* (  2) */
ffa054f0:	d0 bb       	[FP -0xc] = R0;
ffa054f2:	d0 b9       	R0 = [FP -0xc];
ffa054f4:	08 30       	R1 = R0;
ffa054f6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa054f8:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa054fc:	01 54       	R0 = R1 & R0;
ffa054fe:	d0 bb       	[FP -0xc] = R0;
ffa05500:	90 b9       	R0 = [FP -0x1c];
ffa05502:	08 64       	R0 += 0x1;		/* (  1) */
ffa05504:	90 bb       	[FP -0x1c] = R0;
ffa05506:	90 b9       	R0 = [FP -0x1c];
ffa05508:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa0550a:	08 09       	CC = R0 <= R1;
ffa0550c:	da 1b       	IF CC JUMP 0xffa054c0 <_httpResp+0x564>;
ffa0550e:	a0 b9       	R0 = [FP -0x18];
ffa05510:	08 64       	R0 += 0x1;		/* (  1) */
ffa05512:	a0 bb       	[FP -0x18] = R0;
ffa05514:	a0 b9       	R0 = [FP -0x18];
ffa05516:	21 e1 ff 07 	R1 = 0x7ff (X);		/*		R1=0x7ff(2047) */
ffa0551a:	08 09       	CC = R0 <= R1;
ffa0551c:	cf 1b       	IF CC JUMP 0xffa054ba <_httpResp+0x55e>;
ffa0551e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05520:	90 bb       	[FP -0x1c] = R0;
ffa05522:	18 20       	JUMP.S 0xffa05552 <_httpResp+0x5f6>;
ffa05524:	92 b9       	R2 = [FP -0x1c];
ffa05526:	90 b9       	R0 = [FP -0x1c];
ffa05528:	08 32       	P1 = R0;
ffa0552a:	4a 44       	P2 = P1 << 0x2;
ffa0552c:	ba 5a       	P2 = P2 + FP;
ffa0552e:	20 e1 54 ff 	R0 = -0xac (X);		/*		R0=0xffffff54(-172) */
ffa05532:	08 32       	P1 = R0;
ffa05534:	8a 5a       	P2 = P2 + P1;
ffa05536:	10 91       	R0 = [P2];
ffa05538:	82 c6 a8 03 	R1 = R0 >>> 0xb;
ffa0553c:	0a 32       	P1 = R2;
ffa0553e:	4a 44       	P2 = P1 << 0x2;
ffa05540:	ba 5a       	P2 = P2 + FP;
ffa05542:	20 e1 54 ff 	R0 = -0xac (X);		/*		R0=0xffffff54(-172) */
ffa05546:	08 32       	P1 = R0;
ffa05548:	8a 5a       	P2 = P2 + P1;
ffa0554a:	11 93       	[P2] = R1;
ffa0554c:	90 b9       	R0 = [FP -0x1c];
ffa0554e:	08 64       	R0 += 0x1;		/* (  1) */
ffa05550:	90 bb       	[FP -0x1c] = R0;
ffa05552:	90 b9       	R0 = [FP -0x1c];
ffa05554:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa05556:	08 09       	CC = R0 <= R1;
ffa05558:	e6 1b       	IF CC JUMP 0xffa05524 <_httpResp+0x5c8>;
ffa0555a:	00 e3 0f 01 	CALL 0xffa05778 <_htmlDefault>;
ffa0555e:	50 ba       	[FP -0x6c] = R0;
ffa05560:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa05564:	e0 bb       	[FP -0x8] = R0;
ffa05566:	50 b8       	R0 = [FP -0x6c];
ffa05568:	68 67       	R0 += -0x13;		/* (-19) */
ffa0556a:	50 ba       	[FP -0x6c] = R0;
ffa0556c:	50 b8       	R0 = [FP -0x6c];
ffa0556e:	08 30       	R1 = R0;
ffa05570:	e0 b9       	R0 = [FP -0x8];
ffa05572:	08 50       	R0 = R0 + R1;
ffa05574:	e0 bb       	[FP -0x8] = R0;
ffa05576:	e0 b9       	R0 = [FP -0x8];
ffa05578:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa0557c:	97 5a       	P2 = FP + P2;
ffa0557e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005fc(-7338500) */
ffa05582:	02 e1 c0 06 	R2.L = 0x6c0;		/* (1728)	R2=0xff9006c0(-7338304) */
ffa05586:	4a 30       	R1 = P2;
ffa05588:	ff e3 40 dc 	CALL 0xffa00e08 <_strcpy_>;
ffa0558c:	e0 bb       	[FP -0x8] = R0;
ffa0558e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05590:	90 bb       	[FP -0x1c] = R0;
ffa05592:	44 20       	JUMP.S 0xffa0561a <_httpResp+0x6be>;
ffa05594:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05596:	f0 bb       	[FP -0x4] = R0;
ffa05598:	e0 b9       	R0 = [FP -0x8];
ffa0559a:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa0559e:	97 5a       	P2 = FP + P2;
ffa055a0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c0(-7338304) */
ffa055a4:	02 e1 cc 06 	R2.L = 0x6cc;		/* (1740)	R2=0xff9006cc(-7338292) */
ffa055a8:	4a 30       	R1 = P2;
ffa055aa:	ff e3 2f dc 	CALL 0xffa00e08 <_strcpy_>;
ffa055ae:	e0 bb       	[FP -0x8] = R0;
ffa055b0:	e0 b9       	R0 = [FP -0x8];
ffa055b2:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa055b6:	97 5a       	P2 = FP + P2;
ffa055b8:	92 b9       	R2 = [FP -0x1c];
ffa055ba:	4a 30       	R1 = P2;
ffa055bc:	ff e3 24 de 	CALL 0xffa01204 <_strprintf_int>;
ffa055c0:	e0 bb       	[FP -0x8] = R0;
ffa055c2:	e0 b9       	R0 = [FP -0x8];
ffa055c4:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa055c8:	97 5a       	P2 = FP + P2;
ffa055ca:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006cc(-7338292) */
ffa055ce:	02 e1 e0 06 	R2.L = 0x6e0;		/* (1760)	R2=0xff9006e0(-7338272) */
ffa055d2:	4a 30       	R1 = P2;
ffa055d4:	ff e3 1a dc 	CALL 0xffa00e08 <_strcpy_>;
ffa055d8:	e0 bb       	[FP -0x8] = R0;
ffa055da:	f0 b9       	R0 = [FP -0x4];
ffa055dc:	08 32       	P1 = R0;
ffa055de:	4a 44       	P2 = P1 << 0x2;
ffa055e0:	ba 5a       	P2 = P2 + FP;
ffa055e2:	20 e1 54 ff 	R0 = -0xac (X);		/*		R0=0xffffff54(-172) */
ffa055e6:	08 32       	P1 = R0;
ffa055e8:	8a 5a       	P2 = P2 + P1;
ffa055ea:	12 91       	R2 = [P2];
ffa055ec:	e0 b9       	R0 = [FP -0x8];
ffa055ee:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa055f2:	97 5a       	P2 = FP + P2;
ffa055f4:	4a 30       	R1 = P2;
ffa055f6:	ff e3 07 de 	CALL 0xffa01204 <_strprintf_int>;
ffa055fa:	e0 bb       	[FP -0x8] = R0;
ffa055fc:	e0 b9       	R0 = [FP -0x8];
ffa055fe:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa05602:	97 5a       	P2 = FP + P2;
ffa05604:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006e0(-7338272) */
ffa05608:	02 e1 f0 06 	R2.L = 0x6f0;		/* (1776)	R2=0xff9006f0(-7338256) */
ffa0560c:	4a 30       	R1 = P2;
ffa0560e:	ff e3 fd db 	CALL 0xffa00e08 <_strcpy_>;
ffa05612:	e0 bb       	[FP -0x8] = R0;
ffa05614:	90 b9       	R0 = [FP -0x1c];
ffa05616:	08 64       	R0 += 0x1;		/* (  1) */
ffa05618:	90 bb       	[FP -0x1c] = R0;
ffa0561a:	90 b9       	R0 = [FP -0x1c];
ffa0561c:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa0561e:	08 09       	CC = R0 <= R1;
ffa05620:	ba 1b       	IF CC JUMP 0xffa05594 <_httpResp+0x638>;
ffa05622:	e0 b9       	R0 = [FP -0x8];
ffa05624:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa05628:	97 5a       	P2 = FP + P2;
ffa0562a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006f0(-7338256) */
ffa0562e:	02 e1 fc 06 	R2.L = 0x6fc;		/* (1788)	R2=0xff9006fc(-7338244) */
ffa05632:	4a 30       	R1 = P2;
ffa05634:	ff e3 ea db 	CALL 0xffa00e08 <_strcpy_>;
ffa05638:	e0 bb       	[FP -0x8] = R0;
ffa0563a:	50 b8       	R0 = [FP -0x6c];
ffa0563c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90ff94 */
ffa05640:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xff900d68 <_g_httpContentLen> */
ffa05644:	10 93       	[P2] = R0;
ffa05646:	00 e3 25 00 	CALL 0xffa05690 <_httpHeader>;
ffa0564a:	09 68       	P1 = 0x1 (X);		/*		P1=0x1(  1) */
ffa0564c:	39 e7 d4 ff 	[FP + -0xb0] = P1;
ffa05650:	1b 20       	JUMP.S 0xffa05686 <_httpResp+0x72a>;
ffa05652:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ff54(-7274668) */
ffa05656:	00 e1 e0 05 	R0.L = 0x5e0;		/* (1504)	R0=0xff9005e0(-7338528) */
ffa0565a:	fa a0       	R2 = [FP + 0xc];
ffa0565c:	b9 a0       	R1 = [FP + 0x8];
ffa0565e:	ff e3 67 dc 	CALL 0xffa00f2c <_substr>;
ffa05662:	00 0c       	CC = R0 == 0x0;
ffa05664:	0e 18       	IF CC JUMP 0xffa05680 <_httpResp+0x724>;
ffa05666:	00 e3 59 00 	CALL 0xffa05718 <_html404>;
ffa0566a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d68 <_g_httpContentLen> */
ffa0566e:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xff900d68 <_g_httpContentLen> */
ffa05672:	10 93       	[P2] = R0;
ffa05674:	00 e3 0e 00 	CALL 0xffa05690 <_httpHeader>;
ffa05678:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0567a:	38 e6 d4 ff 	[FP + -0xb0] = R0;
ffa0567e:	04 20       	JUMP.S 0xffa05686 <_httpResp+0x72a>;
ffa05680:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa05682:	39 e6 d4 ff 	[FP + -0xb0] = R1;
ffa05686:	38 e4 d4 ff 	R0 = [FP + -0xb0];
ffa0568a:	01 e8 00 00 	UNLINK;
ffa0568e:	10 00       	RTS;

ffa05690 <_httpHeader>:
ffa05690:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa05694:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa05698:	f0 bb       	[FP -0x4] = R0;
ffa0569a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0569c:	e0 bb       	[FP -0x8] = R0;
ffa0569e:	f0 b9       	R0 = [FP -0x4];
ffa056a0:	4f 30       	R1 = FP;
ffa056a2:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa056a4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006fc(-7338244) */
ffa056a8:	02 e1 18 07 	R2.L = 0x718;		/* (1816)	R2=0xff900718(-7338216) */
ffa056ac:	ff e3 ae db 	CALL 0xffa00e08 <_strcpy_>;
ffa056b0:	f0 bb       	[FP -0x4] = R0;
ffa056b2:	f0 b9       	R0 = [FP -0x4];
ffa056b4:	4f 30       	R1 = FP;
ffa056b6:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa056b8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900718(-7338216) */
ffa056bc:	02 e1 2c 07 	R2.L = 0x72c;		/* (1836)	R2=0xff90072c(-7338196) */
ffa056c0:	ff e3 a4 db 	CALL 0xffa00e08 <_strcpy_>;
ffa056c4:	f0 bb       	[FP -0x4] = R0;
ffa056c6:	f0 b9       	R0 = [FP -0x4];
ffa056c8:	4f 30       	R1 = FP;
ffa056ca:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa056cc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90072c(-7338196) */
ffa056d0:	02 e1 40 07 	R2.L = 0x740;		/* (1856)	R2=0xff900740(-7338176) */
ffa056d4:	ff e3 9a db 	CALL 0xffa00e08 <_strcpy_>;
ffa056d8:	f0 bb       	[FP -0x4] = R0;
ffa056da:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d68 <_g_httpContentLen> */
ffa056de:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xff900d68 <_g_httpContentLen> */
ffa056e2:	10 91       	R0 = [P2];
ffa056e4:	10 30       	R2 = R0;
ffa056e6:	f0 b9       	R0 = [FP -0x4];
ffa056e8:	4f 30       	R1 = FP;
ffa056ea:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa056ec:	ff e3 8c dd 	CALL 0xffa01204 <_strprintf_int>;
ffa056f0:	f0 bb       	[FP -0x4] = R0;
ffa056f2:	f0 b9       	R0 = [FP -0x4];
ffa056f4:	4f 30       	R1 = FP;
ffa056f6:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa056f8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900740(-7338176) */
ffa056fc:	02 e1 54 07 	R2.L = 0x754;		/* (1876)	R2=0xff900754(-7338156) */
ffa05700:	ff e3 84 db 	CALL 0xffa00e08 <_strcpy_>;
ffa05704:	f0 bb       	[FP -0x4] = R0;
ffa05706:	e0 b9       	R0 = [FP -0x8];
ffa05708:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d68 <_g_httpContentLen> */
ffa0570c:	0a e1 64 0d 	P2.L = 0xd64;		/* (3428)	P2=0xff900d64 <_g_httpHeaderLen> */
ffa05710:	10 93       	[P2] = R0;
ffa05712:	01 e8 00 00 	UNLINK;
ffa05716:	10 00       	RTS;

ffa05718 <_html404>:
ffa05718:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0571c:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa05720:	f0 bb       	[FP -0x4] = R0;
ffa05722:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05724:	e0 bb       	[FP -0x8] = R0;
ffa05726:	f0 b9       	R0 = [FP -0x4];
ffa05728:	4f 30       	R1 = FP;
ffa0572a:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa0572c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900754(-7338156) */
ffa05730:	02 e1 74 07 	R2.L = 0x774;		/* (1908)	R2=0xff900774(-7338124) */
ffa05734:	ff e3 6a db 	CALL 0xffa00e08 <_strcpy_>;
ffa05738:	f0 bb       	[FP -0x4] = R0;
ffa0573a:	e0 b9       	R0 = [FP -0x8];
ffa0573c:	01 e8 00 00 	UNLINK;
ffa05740:	10 00       	RTS;
	...

ffa05744 <_htmlGeneric>:
ffa05744:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa05748:	b8 b0       	[FP + 0x8] = R0;
ffa0574a:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa0574e:	f0 bb       	[FP -0x4] = R0;
ffa05750:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05752:	e0 bb       	[FP -0x8] = R0;
ffa05754:	f0 b9       	R0 = [FP -0x4];
ffa05756:	4f 30       	R1 = FP;
ffa05758:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa0575a:	ba a0       	R2 = [FP + 0x8];
ffa0575c:	ff e3 56 db 	CALL 0xffa00e08 <_strcpy_>;
ffa05760:	e0 b9       	R0 = [FP -0x8];
ffa05762:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d64 <_g_httpHeaderLen> */
ffa05766:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xff900d68 <_g_httpContentLen> */
ffa0576a:	10 93       	[P2] = R0;
ffa0576c:	ff e3 92 ff 	CALL 0xffa05690 <_httpHeader>;
ffa05770:	e0 b9       	R0 = [FP -0x8];
ffa05772:	01 e8 00 00 	UNLINK;
ffa05776:	10 00       	RTS;

ffa05778 <_htmlDefault>:
ffa05778:	00 e8 0b 00 	LINK 0x2c;		/* (44) */
ffa0577c:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa05780:	b0 bb       	[FP -0x14] = R0;
ffa05782:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05784:	a0 bb       	[FP -0x18] = R0;
ffa05786:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05788:	c0 bb       	[FP -0x10] = R0;
ffa0578a:	b0 b9       	R0 = [FP -0x14];
ffa0578c:	4f 30       	R1 = FP;
ffa0578e:	41 67       	R1 += -0x18;		/* (-24) */
ffa05790:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900774(-7338124) */
ffa05794:	02 e1 90 07 	R2.L = 0x790;		/* (1936)	R2=0xff900790(-7338096) */
ffa05798:	ff e3 38 db 	CALL 0xffa00e08 <_strcpy_>;
ffa0579c:	b0 bb       	[FP -0x14] = R0;
ffa0579e:	b0 b9       	R0 = [FP -0x14];
ffa057a0:	4f 30       	R1 = FP;
ffa057a2:	41 67       	R1 += -0x18;		/* (-24) */
ffa057a4:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa057a8:	00 e3 20 02 	CALL 0xffa05be8 <_htmlDiv>;
ffa057ac:	b0 bb       	[FP -0x14] = R0;
ffa057ae:	b0 b9       	R0 = [FP -0x14];
ffa057b0:	4f 30       	R1 = FP;
ffa057b2:	41 67       	R1 += -0x18;		/* (-24) */
ffa057b4:	00 e3 3e 02 	CALL 0xffa05c30 <_htmlForm>;
ffa057b8:	b0 bb       	[FP -0x14] = R0;
ffa057ba:	b0 b9       	R0 = [FP -0x14];
ffa057bc:	4f 30       	R1 = FP;
ffa057be:	41 67       	R1 += -0x18;		/* (-24) */
ffa057c0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa057c4:	02 e1 e0 07 	R2.L = 0x7e0;		/* (2016)	R2=0xff9007e0(-7338016) */
ffa057c8:	ff e3 20 db 	CALL 0xffa00e08 <_strcpy_>;
ffa057cc:	b0 bb       	[FP -0x14] = R0;
ffa057ce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d68 <_g_httpContentLen> */
ffa057d2:	0a e1 c8 0b 	P2.L = 0xbc8;		/* (3016)	P2=0xff900bc8 <_g_streamEnabled> */
ffa057d6:	50 99       	R0 = B[P2] (X);
ffa057d8:	40 43       	R0 = R0.B (Z);
ffa057da:	00 0c       	CC = R0 == 0x0;
ffa057dc:	0c 18       	IF CC JUMP 0xffa057f4 <_htmlDefault+0x7c>;
ffa057de:	b0 b9       	R0 = [FP -0x14];
ffa057e0:	4f 30       	R1 = FP;
ffa057e2:	41 67       	R1 += -0x18;		/* (-24) */
ffa057e4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007e0(-7338016) */
ffa057e8:	02 e1 30 08 	R2.L = 0x830;		/* (2096)	R2=0xff900830(-7337936) */
ffa057ec:	ff e3 0e db 	CALL 0xffa00e08 <_strcpy_>;
ffa057f0:	b0 bb       	[FP -0x14] = R0;
ffa057f2:	0b 20       	JUMP.S 0xffa05808 <_htmlDefault+0x90>;
ffa057f4:	b0 b9       	R0 = [FP -0x14];
ffa057f6:	4f 30       	R1 = FP;
ffa057f8:	41 67       	R1 += -0x18;		/* (-24) */
ffa057fa:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900830(-7337936) */
ffa057fe:	02 e1 3c 08 	R2.L = 0x83c;		/* (2108)	R2=0xff90083c(-7337924) */
ffa05802:	ff e3 03 db 	CALL 0xffa00e08 <_strcpy_>;
ffa05806:	b0 bb       	[FP -0x14] = R0;
ffa05808:	b0 b9       	R0 = [FP -0x14];
ffa0580a:	4f 30       	R1 = FP;
ffa0580c:	41 67       	R1 += -0x18;		/* (-24) */
ffa0580e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90083c(-7337924) */
ffa05812:	02 e1 48 08 	R2.L = 0x848;		/* (2120)	R2=0xff900848(-7337912) */
ffa05816:	ff e3 f9 da 	CALL 0xffa00e08 <_strcpy_>;
ffa0581a:	b0 bb       	[FP -0x14] = R0;
ffa0581c:	b0 b9       	R0 = [FP -0x14];
ffa0581e:	4f 30       	R1 = FP;
ffa05820:	41 67       	R1 += -0x18;		/* (-24) */
ffa05822:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa05826:	00 e3 e1 01 	CALL 0xffa05be8 <_htmlDiv>;
ffa0582a:	b0 bb       	[FP -0x14] = R0;
ffa0582c:	b0 b9       	R0 = [FP -0x14];
ffa0582e:	4f 30       	R1 = FP;
ffa05830:	41 67       	R1 += -0x18;		/* (-24) */
ffa05832:	00 e3 ff 01 	CALL 0xffa05c30 <_htmlForm>;
ffa05836:	b0 bb       	[FP -0x14] = R0;
ffa05838:	b0 b9       	R0 = [FP -0x14];
ffa0583a:	4f 30       	R1 = FP;
ffa0583c:	41 67       	R1 += -0x18;		/* (-24) */
ffa0583e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa05842:	02 e1 5c 08 	R2.L = 0x85c;		/* (2140)	R2=0xff90085c(-7337892) */
ffa05846:	ff e3 e1 da 	CALL 0xffa00e08 <_strcpy_>;
ffa0584a:	b0 bb       	[FP -0x14] = R0;
ffa0584c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0584e:	c0 bb       	[FP -0x10] = R0;
ffa05850:	3b 20       	JUMP.S 0xffa058c6 <_htmlDefault+0x14e>;
ffa05852:	b0 b9       	R0 = [FP -0x14];
ffa05854:	4f 30       	R1 = FP;
ffa05856:	41 67       	R1 += -0x18;		/* (-24) */
ffa05858:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90085c(-7337892) */
ffa0585c:	02 e1 78 08 	R2.L = 0x878;		/* (2168)	R2=0xff900878(-7337864) */
ffa05860:	ff e3 d4 da 	CALL 0xffa00e08 <_strcpy_>;
ffa05864:	b0 bb       	[FP -0x14] = R0;
ffa05866:	b0 b9       	R0 = [FP -0x14];
ffa05868:	4f 30       	R1 = FP;
ffa0586a:	41 67       	R1 += -0x18;		/* (-24) */
ffa0586c:	c2 b9       	R2 = [FP -0x10];
ffa0586e:	ff e3 cb dc 	CALL 0xffa01204 <_strprintf_int>;
ffa05872:	b0 bb       	[FP -0x14] = R0;
ffa05874:	b0 b9       	R0 = [FP -0x14];
ffa05876:	4f 30       	R1 = FP;
ffa05878:	41 67       	R1 += -0x18;		/* (-24) */
ffa0587a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900878(-7337864) */
ffa0587e:	02 e1 94 08 	R2.L = 0x894;		/* (2196)	R2=0xff900894(-7337836) */
ffa05882:	ff e3 c3 da 	CALL 0xffa00e08 <_strcpy_>;
ffa05886:	b0 bb       	[FP -0x14] = R0;
ffa05888:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bc8 <_g_streamEnabled> */
ffa0588c:	0a e1 74 0c 	P2.L = 0xc74;		/* (3188)	P2=0xff900c74 <_NetDataDestIP> */
ffa05890:	11 91       	R1 = [P2];
ffa05892:	c0 b9       	R0 = [FP -0x10];
ffa05894:	18 4f       	R0 <<= 0x3;
ffa05896:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa05898:	11 30       	R2 = R1;
ffa0589a:	42 40       	R2 >>= R0;
ffa0589c:	02 30       	R0 = R2;
ffa0589e:	42 43       	R2 = R0.B (Z);
ffa058a0:	b0 b9       	R0 = [FP -0x14];
ffa058a2:	4f 30       	R1 = FP;
ffa058a4:	41 67       	R1 += -0x18;		/* (-24) */
ffa058a6:	ff e3 af dc 	CALL 0xffa01204 <_strprintf_int>;
ffa058aa:	b0 bb       	[FP -0x14] = R0;
ffa058ac:	b0 b9       	R0 = [FP -0x14];
ffa058ae:	4f 30       	R1 = FP;
ffa058b0:	41 67       	R1 += -0x18;		/* (-24) */
ffa058b2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900894(-7337836) */
ffa058b6:	02 e1 a8 08 	R2.L = 0x8a8;		/* (2216)	R2=0xff9008a8(-7337816) */
ffa058ba:	ff e3 a7 da 	CALL 0xffa00e08 <_strcpy_>;
ffa058be:	b0 bb       	[FP -0x14] = R0;
ffa058c0:	c0 b9       	R0 = [FP -0x10];
ffa058c2:	08 64       	R0 += 0x1;		/* (  1) */
ffa058c4:	c0 bb       	[FP -0x10] = R0;
ffa058c6:	c0 b9       	R0 = [FP -0x10];
ffa058c8:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa058ca:	08 09       	CC = R0 <= R1;
ffa058cc:	c3 1b       	IF CC JUMP 0xffa05852 <_htmlDefault+0xda>;
ffa058ce:	b0 b9       	R0 = [FP -0x14];
ffa058d0:	4f 30       	R1 = FP;
ffa058d2:	41 67       	R1 += -0x18;		/* (-24) */
ffa058d4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a8(-7337816) */
ffa058d8:	02 e1 b0 08 	R2.L = 0x8b0;		/* (2224)	R2=0xff9008b0(-7337808) */
ffa058dc:	ff e3 96 da 	CALL 0xffa00e08 <_strcpy_>;
ffa058e0:	b0 bb       	[FP -0x14] = R0;
ffa058e2:	b0 b9       	R0 = [FP -0x14];
ffa058e4:	4f 30       	R1 = FP;
ffa058e6:	41 67       	R1 += -0x18;		/* (-24) */
ffa058e8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008b0(-7337808) */
ffa058ec:	02 e1 48 08 	R2.L = 0x848;		/* (2120)	R2=0xff900848(-7337912) */
ffa058f0:	ff e3 8c da 	CALL 0xffa00e08 <_strcpy_>;
ffa058f4:	b0 bb       	[FP -0x14] = R0;
ffa058f6:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff800001(-8388607) */
ffa058fa:	00 e1 0c 08 	R0.L = 0x80c;		/* (2060)	R0=0xff80080c(-8386548) */
ffa058fe:	d0 bb       	[FP -0xc] = R0;
ffa05900:	b0 b9       	R0 = [FP -0x14];
ffa05902:	4f 30       	R1 = FP;
ffa05904:	41 67       	R1 += -0x18;		/* (-24) */
ffa05906:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa0590a:	00 e3 6f 01 	CALL 0xffa05be8 <_htmlDiv>;
ffa0590e:	b0 bb       	[FP -0x14] = R0;
ffa05910:	b0 b9       	R0 = [FP -0x14];
ffa05912:	4f 30       	R1 = FP;
ffa05914:	41 67       	R1 += -0x18;		/* (-24) */
ffa05916:	00 e3 8d 01 	CALL 0xffa05c30 <_htmlForm>;
ffa0591a:	b0 bb       	[FP -0x14] = R0;
ffa0591c:	b0 b9       	R0 = [FP -0x14];
ffa0591e:	4f 30       	R1 = FP;
ffa05920:	41 67       	R1 += -0x18;		/* (-24) */
ffa05922:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa05926:	02 e1 d4 08 	R2.L = 0x8d4;		/* (2260)	R2=0xff9008d4(-7337772) */
ffa0592a:	ff e3 6f da 	CALL 0xffa00e08 <_strcpy_>;
ffa0592e:	b0 bb       	[FP -0x14] = R0;
ffa05930:	da b9       	P2 = [FP -0xc];
ffa05932:	50 99       	R0 = B[P2] (X);
ffa05934:	40 43       	R0 = R0.B (Z);
ffa05936:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa05938:	00 02       	R0 = CC;
ffa0593a:	40 43       	R0 = R0.B (Z);
ffa0593c:	00 0c       	CC = R0 == 0x0;
ffa0593e:	0c 18       	IF CC JUMP 0xffa05956 <_htmlDefault+0x1de>;
ffa05940:	b0 b9       	R0 = [FP -0x14];
ffa05942:	4f 30       	R1 = FP;
ffa05944:	41 67       	R1 += -0x18;		/* (-24) */
ffa05946:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008d4(-7337772) */
ffa0594a:	02 e1 3c 08 	R2.L = 0x83c;		/* (2108)	R2=0xff90083c(-7337924) */
ffa0594e:	ff e3 5d da 	CALL 0xffa00e08 <_strcpy_>;
ffa05952:	b0 bb       	[FP -0x14] = R0;
ffa05954:	0b 20       	JUMP.S 0xffa0596a <_htmlDefault+0x1f2>;
ffa05956:	b0 b9       	R0 = [FP -0x14];
ffa05958:	4f 30       	R1 = FP;
ffa0595a:	41 67       	R1 += -0x18;		/* (-24) */
ffa0595c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90083c(-7337924) */
ffa05960:	02 e1 30 08 	R2.L = 0x830;		/* (2096)	R2=0xff900830(-7337936) */
ffa05964:	ff e3 52 da 	CALL 0xffa00e08 <_strcpy_>;
ffa05968:	b0 bb       	[FP -0x14] = R0;
ffa0596a:	b0 b9       	R0 = [FP -0x14];
ffa0596c:	4f 30       	R1 = FP;
ffa0596e:	41 67       	R1 += -0x18;		/* (-24) */
ffa05970:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900830(-7337936) */
ffa05974:	02 e1 48 08 	R2.L = 0x848;		/* (2120)	R2=0xff900848(-7337912) */
ffa05978:	ff e3 48 da 	CALL 0xffa00e08 <_strcpy_>;
ffa0597c:	b0 bb       	[FP -0x14] = R0;
ffa0597e:	b0 b9       	R0 = [FP -0x14];
ffa05980:	4f 30       	R1 = FP;
ffa05982:	41 67       	R1 += -0x18;		/* (-24) */
ffa05984:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa05988:	00 e3 30 01 	CALL 0xffa05be8 <_htmlDiv>;
ffa0598c:	b0 bb       	[FP -0x14] = R0;
ffa0598e:	b0 b9       	R0 = [FP -0x14];
ffa05990:	4f 30       	R1 = FP;
ffa05992:	41 67       	R1 += -0x18;		/* (-24) */
ffa05994:	00 e3 4e 01 	CALL 0xffa05c30 <_htmlForm>;
ffa05998:	b0 bb       	[FP -0x14] = R0;
ffa0599a:	b0 b9       	R0 = [FP -0x14];
ffa0599c:	4f 30       	R1 = FP;
ffa0599e:	41 67       	R1 += -0x18;		/* (-24) */
ffa059a0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa059a4:	02 e1 14 09 	R2.L = 0x914;		/* (2324)	R2=0xff900914(-7337708) */
ffa059a8:	ff e3 30 da 	CALL 0xffa00e08 <_strcpy_>;
ffa059ac:	b0 bb       	[FP -0x14] = R0;
ffa059ae:	b1 b9       	R1 = [FP -0x14];
ffa059b0:	57 30       	R2 = FP;
ffa059b2:	42 67       	R2 += -0x18;		/* (-24) */
ffa059b4:	43 e1 90 ff 	R3.H = 0xff90;		/* (-112)	R3=0xff900000 <_l1_data_a>(-7340032) */
ffa059b8:	03 e1 38 09 	R3.L = 0x938;		/* (2360)	R3=0xff900938(-7337672) */
ffa059bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90080c(-7337972) */
ffa059c0:	00 e1 44 09 	R0.L = 0x944;		/* (2372)	R0=0xff900944(-7337660) */
ffa059c4:	f0 b0       	[SP + 0xc] = R0;
ffa059c6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa059c8:	30 b1       	[SP + 0x10] = R0;
ffa059ca:	01 30       	R0 = R1;
ffa059cc:	0a 30       	R1 = R2;
ffa059ce:	13 30       	R2 = R3;
ffa059d0:	00 e3 40 01 	CALL 0xffa05c50 <_htmlCursorSelect>;
ffa059d4:	b0 bb       	[FP -0x14] = R0;
ffa059d6:	b1 b9       	R1 = [FP -0x14];
ffa059d8:	57 30       	R2 = FP;
ffa059da:	42 67       	R2 += -0x18;		/* (-24) */
ffa059dc:	43 e1 90 ff 	R3.H = 0xff90;		/* (-112)	R3=0xff900938(-7337672) */
ffa059e0:	03 e1 50 09 	R3.L = 0x950;		/* (2384)	R3=0xff900950(-7337648) */
ffa059e4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa059e8:	00 e1 5c 09 	R0.L = 0x95c;		/* (2396)	R0=0xff90095c(-7337636) */
ffa059ec:	f0 b0       	[SP + 0xc] = R0;
ffa059ee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa059f0:	30 b1       	[SP + 0x10] = R0;
ffa059f2:	01 30       	R0 = R1;
ffa059f4:	0a 30       	R1 = R2;
ffa059f6:	13 30       	R2 = R3;
ffa059f8:	00 e3 2c 01 	CALL 0xffa05c50 <_htmlCursorSelect>;
ffa059fc:	b0 bb       	[FP -0x14] = R0;
ffa059fe:	b1 b9       	R1 = [FP -0x14];
ffa05a00:	57 30       	R2 = FP;
ffa05a02:	42 67       	R2 += -0x18;		/* (-24) */
ffa05a04:	43 e1 90 ff 	R3.H = 0xff90;		/* (-112)	R3=0xff900950(-7337648) */
ffa05a08:	03 e1 68 09 	R3.L = 0x968;		/* (2408)	R3=0xff900968(-7337624) */
ffa05a0c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa05a10:	00 e1 74 09 	R0.L = 0x974;		/* (2420)	R0=0xff900974(-7337612) */
ffa05a14:	f0 b0       	[SP + 0xc] = R0;
ffa05a16:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05a18:	30 b1       	[SP + 0x10] = R0;
ffa05a1a:	01 30       	R0 = R1;
ffa05a1c:	0a 30       	R1 = R2;
ffa05a1e:	13 30       	R2 = R3;
ffa05a20:	00 e3 18 01 	CALL 0xffa05c50 <_htmlCursorSelect>;
ffa05a24:	b0 bb       	[FP -0x14] = R0;
ffa05a26:	b1 b9       	R1 = [FP -0x14];
ffa05a28:	57 30       	R2 = FP;
ffa05a2a:	42 67       	R2 += -0x18;		/* (-24) */
ffa05a2c:	43 e1 90 ff 	R3.H = 0xff90;		/* (-112)	R3=0xff900968(-7337624) */
ffa05a30:	03 e1 80 09 	R3.L = 0x980;		/* (2432)	R3=0xff900980(-7337600) */
ffa05a34:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa05a38:	00 e1 88 09 	R0.L = 0x988;		/* (2440)	R0=0xff900988(-7337592) */
ffa05a3c:	f0 b0       	[SP + 0xc] = R0;
ffa05a3e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05a40:	30 b1       	[SP + 0x10] = R0;
ffa05a42:	01 30       	R0 = R1;
ffa05a44:	0a 30       	R1 = R2;
ffa05a46:	13 30       	R2 = R3;
ffa05a48:	00 e3 04 01 	CALL 0xffa05c50 <_htmlCursorSelect>;
ffa05a4c:	b0 bb       	[FP -0x14] = R0;
ffa05a4e:	b0 b9       	R0 = [FP -0x14];
ffa05a50:	4f 30       	R1 = FP;
ffa05a52:	41 67       	R1 += -0x18;		/* (-24) */
ffa05a54:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900914(-7337708) */
ffa05a58:	02 e1 94 09 	R2.L = 0x994;		/* (2452)	R2=0xff900994(-7337580) */
ffa05a5c:	ff e3 d6 d9 	CALL 0xffa00e08 <_strcpy_>;
ffa05a60:	b0 bb       	[FP -0x14] = R0;
ffa05a62:	b0 b9       	R0 = [FP -0x14];
ffa05a64:	4f 30       	R1 = FP;
ffa05a66:	41 67       	R1 += -0x18;		/* (-24) */
ffa05a68:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa05a6c:	00 e3 be 00 	CALL 0xffa05be8 <_htmlDiv>;
ffa05a70:	b0 bb       	[FP -0x14] = R0;
ffa05a72:	b0 b9       	R0 = [FP -0x14];
ffa05a74:	4f 30       	R1 = FP;
ffa05a76:	41 67       	R1 += -0x18;		/* (-24) */
ffa05a78:	00 e3 dc 00 	CALL 0xffa05c30 <_htmlForm>;
ffa05a7c:	b0 bb       	[FP -0x14] = R0;
ffa05a7e:	b0 b9       	R0 = [FP -0x14];
ffa05a80:	4f 30       	R1 = FP;
ffa05a82:	41 67       	R1 += -0x18;		/* (-24) */
ffa05a84:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa05a88:	02 e1 d0 09 	R2.L = 0x9d0;		/* (2512)	R2=0xff9009d0(-7337520) */
ffa05a8c:	ff e3 be d9 	CALL 0xffa00e08 <_strcpy_>;
ffa05a90:	b0 bb       	[FP -0x14] = R0;
ffa05a92:	b0 b9       	R0 = [FP -0x14];
ffa05a94:	4f 30       	R1 = FP;
ffa05a96:	41 67       	R1 += -0x18;		/* (-24) */
ffa05a98:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa05a9c:	00 e3 a6 00 	CALL 0xffa05be8 <_htmlDiv>;
ffa05aa0:	b0 bb       	[FP -0x14] = R0;
ffa05aa2:	b0 b9       	R0 = [FP -0x14];
ffa05aa4:	4f 30       	R1 = FP;
ffa05aa6:	41 67       	R1 += -0x18;		/* (-24) */
ffa05aa8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa05aac:	02 e1 28 0a 	R2.L = 0xa28;		/* (2600)	R2=0xff900a28(-7337432) */
ffa05ab0:	ff e3 ac d9 	CALL 0xffa00e08 <_strcpy_>;
ffa05ab4:	b0 bb       	[FP -0x14] = R0;
ffa05ab6:	b0 b9       	R0 = [FP -0x14];
ffa05ab8:	4f 30       	R1 = FP;
ffa05aba:	41 67       	R1 += -0x18;		/* (-24) */
ffa05abc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a28(-7337432) */
ffa05ac0:	02 e1 50 0a 	R2.L = 0xa50;		/* (2640)	R2=0xff900a50(-7337392) */
ffa05ac4:	ff e3 a2 d9 	CALL 0xffa00e08 <_strcpy_>;
ffa05ac8:	b0 bb       	[FP -0x14] = R0;
ffa05aca:	b0 b9       	R0 = [FP -0x14];
ffa05acc:	4f 30       	R1 = FP;
ffa05ace:	41 67       	R1 += -0x18;		/* (-24) */
ffa05ad0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a50(-7337392) */
ffa05ad4:	02 e1 48 08 	R2.L = 0x848;		/* (2120)	R2=0xff900848(-7337912) */
ffa05ad8:	ff e3 98 d9 	CALL 0xffa00e08 <_strcpy_>;
ffa05adc:	b0 bb       	[FP -0x14] = R0;
ffa05ade:	20 e1 01 f0 	R0 = -0xfff (X);		/*		R0=0xfffff001(-4095) */
ffa05ae2:	58 4f       	R0 <<= 0xb;
ffa05ae4:	c0 bb       	[FP -0x10] = R0;
ffa05ae6:	b0 b9       	R0 = [FP -0x14];
ffa05ae8:	4f 30       	R1 = FP;
ffa05aea:	41 67       	R1 += -0x18;		/* (-24) */
ffa05aec:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900848(-7337912) */
ffa05af0:	02 e1 98 0a 	R2.L = 0xa98;		/* (2712)	R2=0xff900a98(-7337320) */
ffa05af4:	ff e3 8a d9 	CALL 0xffa00e08 <_strcpy_>;
ffa05af8:	b0 bb       	[FP -0x14] = R0;
ffa05afa:	c1 b9       	R1 = [FP -0x10];
ffa05afc:	40 e1 62 10 	R0.H = 0x1062;		/* (4194)	R0=0x1062f001(274919425) */
ffa05b00:	00 e1 d3 4d 	R0.L = 0x4dd3;		/* (19923)	R0=0x10624dd3(274877907) */
ffa05b04:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa05b08:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa05b0c:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa05b10:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa05b14:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa05b18:	0b c4 00 00 	R0 = (A0 += A1);
ffa05b1c:	82 c6 d0 05 	R2 = R0 >>> 0x6;
ffa05b20:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa05b24:	02 52       	R0 = R2 - R0;
ffa05b26:	e0 bb       	[FP -0x8] = R0;
ffa05b28:	e1 b9       	R1 = [FP -0x8];
ffa05b2a:	40 e1 88 88 	R0.H = 0x8888;		/* (-30584)	R0=0x88884dd3(-2004333101) */
ffa05b2e:	00 e1 89 88 	R0.L = 0x8889;		/* (-30583)	R0=0x88888889(-2004318071) */
ffa05b32:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa05b36:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa05b3a:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa05b3e:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa05b42:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa05b46:	0b c4 00 00 	R0 = (A0 += A1);
ffa05b4a:	08 50       	R0 = R0 + R1;
ffa05b4c:	82 c6 d8 05 	R2 = R0 >>> 0x5;
ffa05b50:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa05b54:	02 52       	R0 = R2 - R0;
ffa05b56:	f0 bb       	[FP -0x4] = R0;
ffa05b58:	b0 b9       	R0 = [FP -0x14];
ffa05b5a:	4f 30       	R1 = FP;
ffa05b5c:	41 67       	R1 += -0x18;		/* (-24) */
ffa05b5e:	f2 b9       	R2 = [FP -0x4];
ffa05b60:	ff e3 52 db 	CALL 0xffa01204 <_strprintf_int>;
ffa05b64:	b0 bb       	[FP -0x14] = R0;
ffa05b66:	b0 b9       	R0 = [FP -0x14];
ffa05b68:	4f 30       	R1 = FP;
ffa05b6a:	41 67       	R1 += -0x18;		/* (-24) */
ffa05b6c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a98(-7337320) */
ffa05b70:	02 e1 a4 0a 	R2.L = 0xaa4;		/* (2724)	R2=0xff900aa4(-7337308) */
ffa05b74:	ff e3 4a d9 	CALL 0xffa00e08 <_strcpy_>;
ffa05b78:	b0 bb       	[FP -0x14] = R0;
ffa05b7a:	f1 b9       	R1 = [FP -0x4];
ffa05b7c:	01 30       	R0 = R1;
ffa05b7e:	20 4f       	R0 <<= 0x4;
ffa05b80:	08 52       	R0 = R0 - R1;
ffa05b82:	10 4f       	R0 <<= 0x2;
ffa05b84:	08 30       	R1 = R0;
ffa05b86:	e0 b9       	R0 = [FP -0x8];
ffa05b88:	88 52       	R2 = R0 - R1;
ffa05b8a:	b0 b9       	R0 = [FP -0x14];
ffa05b8c:	4f 30       	R1 = FP;
ffa05b8e:	41 67       	R1 += -0x18;		/* (-24) */
ffa05b90:	ff e3 3a db 	CALL 0xffa01204 <_strprintf_int>;
ffa05b94:	b0 bb       	[FP -0x14] = R0;
ffa05b96:	b0 b9       	R0 = [FP -0x14];
ffa05b98:	4f 30       	R1 = FP;
ffa05b9a:	41 67       	R1 += -0x18;		/* (-24) */
ffa05b9c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900aa4(-7337308) */
ffa05ba0:	02 e1 a8 0a 	R2.L = 0xaa8;		/* (2728)	R2=0xff900aa8(-7337304) */
ffa05ba4:	ff e3 32 d9 	CALL 0xffa00e08 <_strcpy_>;
ffa05ba8:	b0 bb       	[FP -0x14] = R0;
ffa05baa:	e1 b9       	R1 = [FP -0x8];
ffa05bac:	01 30       	R0 = R1;
ffa05bae:	28 4f       	R0 <<= 0x5;
ffa05bb0:	08 52       	R0 = R0 - R1;
ffa05bb2:	10 4f       	R0 <<= 0x2;
ffa05bb4:	08 50       	R0 = R0 + R1;
ffa05bb6:	18 4f       	R0 <<= 0x3;
ffa05bb8:	08 30       	R1 = R0;
ffa05bba:	c0 b9       	R0 = [FP -0x10];
ffa05bbc:	88 52       	R2 = R0 - R1;
ffa05bbe:	b0 b9       	R0 = [FP -0x14];
ffa05bc0:	4f 30       	R1 = FP;
ffa05bc2:	41 67       	R1 += -0x18;		/* (-24) */
ffa05bc4:	ff e3 20 db 	CALL 0xffa01204 <_strprintf_int>;
ffa05bc8:	b0 bb       	[FP -0x14] = R0;
ffa05bca:	b0 b9       	R0 = [FP -0x14];
ffa05bcc:	4f 30       	R1 = FP;
ffa05bce:	41 67       	R1 += -0x18;		/* (-24) */
ffa05bd0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900aa8(-7337304) */
ffa05bd4:	02 e1 ac 0a 	R2.L = 0xaac;		/* (2732)	R2=0xff900aac(-7337300) */
ffa05bd8:	ff e3 18 d9 	CALL 0xffa00e08 <_strcpy_>;
ffa05bdc:	b0 bb       	[FP -0x14] = R0;
ffa05bde:	a0 b9       	R0 = [FP -0x18];
ffa05be0:	01 e8 00 00 	UNLINK;
ffa05be4:	10 00       	RTS;
	...

ffa05be8 <_htmlDiv>:
ffa05be8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa05bec:	b8 b0       	[FP + 0x8] = R0;
ffa05bee:	f9 b0       	[FP + 0xc] = R1;
ffa05bf0:	02 30       	R0 = R2;
ffa05bf2:	b8 e6 10 00 	B[FP + 0x10] = R0;
ffa05bf6:	b8 e5 10 00 	R0 = B[FP + 0x10] (X);
ffa05bfa:	21 e1 62 00 	R1 = 0x62 (X);		/*		R1=0x62( 98) */
ffa05bfe:	08 08       	CC = R0 == R1;
ffa05c00:	0b 10       	IF !CC JUMP 0xffa05c16 <_htmlDiv+0x2e>;
ffa05c02:	f9 a0       	R1 = [FP + 0xc];
ffa05c04:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900aac(-7337300) */
ffa05c08:	02 e1 c4 0a 	R2.L = 0xac4;		/* (2756)	R2=0xff900ac4(-7337276) */
ffa05c0c:	b8 a0       	R0 = [FP + 0x8];
ffa05c0e:	ff e3 fd d8 	CALL 0xffa00e08 <_strcpy_>;
ffa05c12:	b8 b0       	[FP + 0x8] = R0;
ffa05c14:	0a 20       	JUMP.S 0xffa05c28 <_htmlDiv+0x40>;
ffa05c16:	f9 a0       	R1 = [FP + 0xc];
ffa05c18:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ac4(-7337276) */
ffa05c1c:	02 e1 f8 0a 	R2.L = 0xaf8;		/* (2808)	R2=0xff900af8(-7337224) */
ffa05c20:	b8 a0       	R0 = [FP + 0x8];
ffa05c22:	ff e3 f3 d8 	CALL 0xffa00e08 <_strcpy_>;
ffa05c26:	b8 b0       	[FP + 0x8] = R0;
ffa05c28:	b8 a0       	R0 = [FP + 0x8];
ffa05c2a:	01 e8 00 00 	UNLINK;
ffa05c2e:	10 00       	RTS;

ffa05c30 <_htmlForm>:
ffa05c30:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa05c34:	b8 b0       	[FP + 0x8] = R0;
ffa05c36:	f9 b0       	[FP + 0xc] = R1;
ffa05c38:	f9 a0       	R1 = [FP + 0xc];
ffa05c3a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900af8(-7337224) */
ffa05c3e:	02 e1 2c 0b 	R2.L = 0xb2c;		/* (2860)	R2=0xff900b2c(-7337172) */
ffa05c42:	b8 a0       	R0 = [FP + 0x8];
ffa05c44:	ff e3 e2 d8 	CALL 0xffa00e08 <_strcpy_>;
ffa05c48:	01 e8 00 00 	UNLINK;
ffa05c4c:	10 00       	RTS;
	...

ffa05c50 <_htmlCursorSelect>:
ffa05c50:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa05c54:	b8 b0       	[FP + 0x8] = R0;
ffa05c56:	f9 b0       	[FP + 0xc] = R1;
ffa05c58:	3a b1       	[FP + 0x10] = R2;
ffa05c5a:	f9 a0       	R1 = [FP + 0xc];
ffa05c5c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b2c(-7337172) */
ffa05c60:	02 e1 4c 0b 	R2.L = 0xb4c;		/* (2892)	R2=0xff900b4c(-7337140) */
ffa05c64:	b8 a0       	R0 = [FP + 0x8];
ffa05c66:	ff e3 d1 d8 	CALL 0xffa00e08 <_strcpy_>;
ffa05c6a:	b8 b0       	[FP + 0x8] = R0;
ffa05c6c:	f9 a0       	R1 = [FP + 0xc];
ffa05c6e:	3a a1       	R2 = [FP + 0x10];
ffa05c70:	b8 a0       	R0 = [FP + 0x8];
ffa05c72:	ff e3 cb d8 	CALL 0xffa00e08 <_strcpy_>;
ffa05c76:	b8 b0       	[FP + 0x8] = R0;
ffa05c78:	f9 a0       	R1 = [FP + 0xc];
ffa05c7a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b4c(-7337140) */
ffa05c7e:	02 e1 58 0b 	R2.L = 0xb58;		/* (2904)	R2=0xff900b58(-7337128) */
ffa05c82:	b8 a0       	R0 = [FP + 0x8];
ffa05c84:	ff e3 c2 d8 	CALL 0xffa00e08 <_strcpy_>;
ffa05c88:	b8 b0       	[FP + 0x8] = R0;
ffa05c8a:	f9 a0       	R1 = [FP + 0xc];
ffa05c8c:	7a a1       	R2 = [FP + 0x14];
ffa05c8e:	b8 a0       	R0 = [FP + 0x8];
ffa05c90:	ff e3 bc d8 	CALL 0xffa00e08 <_strcpy_>;
ffa05c94:	b8 b0       	[FP + 0x8] = R0;
ffa05c96:	f9 a0       	R1 = [FP + 0xc];
ffa05c98:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b58(-7337128) */
ffa05c9c:	02 e1 74 0b 	R2.L = 0xb74;		/* (2932)	R2=0xff900b74(-7337100) */
ffa05ca0:	b8 a0       	R0 = [FP + 0x8];
ffa05ca2:	ff e3 b3 d8 	CALL 0xffa00e08 <_strcpy_>;
ffa05ca6:	b8 b0       	[FP + 0x8] = R0;
ffa05ca8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05caa:	f0 bb       	[FP -0x4] = R0;
ffa05cac:	0c 20       	JUMP.S 0xffa05cc4 <_htmlCursorSelect+0x74>;
ffa05cae:	f9 a0       	R1 = [FP + 0xc];
ffa05cb0:	f2 b9       	R2 = [FP -0x4];
ffa05cb2:	b8 a1       	R0 = [FP + 0x18];
ffa05cb4:	f0 b0       	[SP + 0xc] = R0;
ffa05cb6:	b8 a0       	R0 = [FP + 0x8];
ffa05cb8:	00 e3 18 00 	CALL 0xffa05ce8 <_htmlCursorOption>;
ffa05cbc:	b8 b0       	[FP + 0x8] = R0;
ffa05cbe:	f0 b9       	R0 = [FP -0x4];
ffa05cc0:	08 64       	R0 += 0x1;		/* (  1) */
ffa05cc2:	f0 bb       	[FP -0x4] = R0;
ffa05cc4:	f0 b9       	R0 = [FP -0x4];
ffa05cc6:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa05cc8:	08 09       	CC = R0 <= R1;
ffa05cca:	f2 1b       	IF CC JUMP 0xffa05cae <_htmlCursorSelect+0x5e>;
ffa05ccc:	f9 a0       	R1 = [FP + 0xc];
ffa05cce:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b74(-7337100) */
ffa05cd2:	02 e1 78 0b 	R2.L = 0xb78;		/* (2936)	R2=0xff900b78(-7337096) */
ffa05cd6:	b8 a0       	R0 = [FP + 0x8];
ffa05cd8:	ff e3 98 d8 	CALL 0xffa00e08 <_strcpy_>;
ffa05cdc:	b8 b0       	[FP + 0x8] = R0;
ffa05cde:	b8 a0       	R0 = [FP + 0x8];
ffa05ce0:	01 e8 00 00 	UNLINK;
ffa05ce4:	10 00       	RTS;
	...

ffa05ce8 <_htmlCursorOption>:
ffa05ce8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa05cec:	b8 b0       	[FP + 0x8] = R0;
ffa05cee:	f9 b0       	[FP + 0xc] = R1;
ffa05cf0:	3a b1       	[FP + 0x10] = R2;
ffa05cf2:	f9 a0       	R1 = [FP + 0xc];
ffa05cf4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b78(-7337096) */
ffa05cf8:	02 e1 90 0b 	R2.L = 0xb90;		/* (2960)	R2=0xff900b90(-7337072) */
ffa05cfc:	b8 a0       	R0 = [FP + 0x8];
ffa05cfe:	ff e3 85 d8 	CALL 0xffa00e08 <_strcpy_>;
ffa05d02:	b8 b0       	[FP + 0x8] = R0;
ffa05d04:	f9 a0       	R1 = [FP + 0xc];
ffa05d06:	3a a1       	R2 = [FP + 0x10];
ffa05d08:	b8 a0       	R0 = [FP + 0x8];
ffa05d0a:	ff e3 7d da 	CALL 0xffa01204 <_strprintf_int>;
ffa05d0e:	b8 b0       	[FP + 0x8] = R0;
ffa05d10:	39 a1       	R1 = [FP + 0x10];
ffa05d12:	78 a1       	R0 = [FP + 0x14];
ffa05d14:	01 08       	CC = R1 == R0;
ffa05d16:	0a 10       	IF !CC JUMP 0xffa05d2a <_htmlCursorOption+0x42>;
ffa05d18:	f9 a0       	R1 = [FP + 0xc];
ffa05d1a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b90(-7337072) */
ffa05d1e:	02 e1 a0 0b 	R2.L = 0xba0;		/* (2976)	R2=0xff900ba0(-7337056) */
ffa05d22:	b8 a0       	R0 = [FP + 0x8];
ffa05d24:	ff e3 72 d8 	CALL 0xffa00e08 <_strcpy_>;
ffa05d28:	b8 b0       	[FP + 0x8] = R0;
ffa05d2a:	f9 a0       	R1 = [FP + 0xc];
ffa05d2c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ba0(-7337056) */
ffa05d30:	02 e1 b8 0b 	R2.L = 0xbb8;		/* (3000)	R2=0xff900bb8(-7337032) */
ffa05d34:	b8 a0       	R0 = [FP + 0x8];
ffa05d36:	ff e3 69 d8 	CALL 0xffa00e08 <_strcpy_>;
ffa05d3a:	b8 b0       	[FP + 0x8] = R0;
ffa05d3c:	f9 a0       	R1 = [FP + 0xc];
ffa05d3e:	3a a1       	R2 = [FP + 0x10];
ffa05d40:	b8 a0       	R0 = [FP + 0x8];
ffa05d42:	ff e3 61 da 	CALL 0xffa01204 <_strprintf_int>;
ffa05d46:	b8 b0       	[FP + 0x8] = R0;
ffa05d48:	f9 a0       	R1 = [FP + 0xc];
ffa05d4a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bb8(-7337032) */
ffa05d4e:	02 e1 bc 0b 	R2.L = 0xbbc;		/* (3004)	R2=0xff900bbc(-7337028) */
ffa05d52:	b8 a0       	R0 = [FP + 0x8];
ffa05d54:	ff e3 5a d8 	CALL 0xffa00e08 <_strcpy_>;
ffa05d58:	b8 b0       	[FP + 0x8] = R0;
ffa05d5a:	b8 a0       	R0 = [FP + 0x8];
ffa05d5c:	01 e8 00 00 	UNLINK;
ffa05d60:	10 00       	RTS;
	...

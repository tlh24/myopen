
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
ffa001a8:	00 e8 1e 00 	LINK 0x78;		/* (120) */
ffa001ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00000(-4194304) */
ffa001b0:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa001b4:	20 e1 9c c1 	R0 = -0x3e64 (X);		/*		R0=0xffffc19c(-15972) */
ffa001b8:	10 97       	W[P2] = R0;
ffa001ba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa001be:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa001c2:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa001c4:	10 97       	W[P2] = R0;
ffa001c6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa001ca:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa001ce:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa001d0:	10 97       	W[P2] = R0;
ffa001d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa001d6:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa001da:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa001dc:	10 97       	W[P2] = R0;
ffa001de:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa001e2:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa001e6:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa001ea:	10 97       	W[P2] = R0;
ffa001ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa001f0:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa001f4:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa001f8:	10 97       	W[P2] = R0;
ffa001fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa001fe:	0a e1 04 05 	P2.L = 0x504;		/* (1284)	P2=0xffc00504(-4193020) */
ffa00202:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00204:	10 97       	W[P2] = R0;
ffa00206:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00504(-4193020) */
ffa0020a:	0a e1 04 04 	P2.L = 0x404;		/* (1028)	P2=0xffc00404(-4193276) */
ffa0020e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00210:	10 97       	W[P2] = R0;
ffa00212:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00404(-4193276) */
ffa00216:	0a e1 10 04 	P2.L = 0x410;		/* (1040)	P2=0xffc00410(-4193264) */
ffa0021a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0021c:	10 97       	W[P2] = R0;
ffa0021e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00410(-4193264) */
ffa00222:	0a e1 0c 04 	P2.L = 0x40c;		/* (1036)	P2=0xffc0040c(-4193268) */
ffa00226:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa0022a:	10 97       	W[P2] = R0;
ffa0022c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0040c(-4193268) */
ffa00230:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00234:	20 e1 88 00 	R0 = 0x88 (X);		/*		R0=0x88(136) */
ffa00238:	10 97       	W[P2] = R0;
ffa0023a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa0023e:	0a e1 04 04 	P2.L = 0x404;		/* (1028)	P2=0xffc00404(-4193276) */
ffa00242:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00244:	10 97       	W[P2] = R0;
ffa00246:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00404(-4193276) */
ffa0024a:	0a e1 0c 04 	P2.L = 0x40c;		/* (1036)	P2=0xffc0040c(-4193268) */
ffa0024e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa00250:	10 97       	W[P2] = R0;
ffa00252:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0040c(-4193268) */
ffa00256:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa0025a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0025c:	10 97       	W[P2] = R0;
ffa0025e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900424 */
ffa00262:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_printf_temp> */
ffa00266:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00268:	b8 4f       	R0 <<= 0x17;
ffa0026a:	10 93       	[P2] = R0;
ffa0026c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_printf_temp> */
ffa00270:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_printf_out> */
ffa00274:	20 e1 01 e0 	R0 = -0x1fff (X);		/*		R0=0xffffe001(-8191) */
ffa00278:	50 4f       	R0 <<= 0xa;
ffa0027a:	10 93       	[P2] = R0;
ffa0027c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90e001(-7282687) */
ffa00280:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00284:	21 e1 80 01 	R1 = 0x180 (X);		/*		R1=0x180(384) */
ffa00288:	00 e3 0e 03 	CALL 0xffa008a4 <_printf_int>;
ffa0028c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00290:	00 e1 10 00 	R0.L = 0x10;		/* ( 16)	R0=0xff900010(-7340016) */
ffa00294:	00 e3 fe 02 	CALL 0xffa00890 <_printf_str>;
ffa00298:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa0029c:	00 e1 14 00 	R0.L = 0x14;		/* ( 20)	R0=0xff900014(-7340012) */
ffa002a0:	00 e3 f8 02 	CALL 0xffa00890 <_printf_str>;
ffa002a4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa002a6:	00 bb       	[FP -0x40] = R0;
ffa002a8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa002aa:	10 bb       	[FP -0x3c] = R0;
ffa002ac:	20 20       	JUMP.S 0xffa002ec <_main+0x144>;
ffa002ae:	0a b9       	P2 = [FP -0x40];
ffa002b0:	20 e1 ca de 	R0 = -0x2136 (X);		/*		R0=0xffffdeca(-8502) */
ffa002b4:	10 97       	W[P2] = R0;
ffa002b6:	00 b9       	R0 = [FP -0x40];
ffa002b8:	10 64       	R0 += 0x2;		/* (  2) */
ffa002ba:	00 bb       	[FP -0x40] = R0;
ffa002bc:	0a b9       	P2 = [FP -0x40];
ffa002be:	20 e1 ad fb 	R0 = -0x453 (X);		/*		R0=0xfffffbad(-1107) */
ffa002c2:	10 97       	W[P2] = R0;
ffa002c4:	00 b9       	R0 = [FP -0x40];
ffa002c6:	10 64       	R0 += 0x2;		/* (  2) */
ffa002c8:	00 bb       	[FP -0x40] = R0;
ffa002ca:	0a b9       	P2 = [FP -0x40];
ffa002cc:	20 e1 ed c0 	R0 = -0x3f13 (X);		/*		R0=0xffffc0ed(-16147) */
ffa002d0:	10 97       	W[P2] = R0;
ffa002d2:	00 b9       	R0 = [FP -0x40];
ffa002d4:	10 64       	R0 += 0x2;		/* (  2) */
ffa002d6:	00 bb       	[FP -0x40] = R0;
ffa002d8:	0a b9       	P2 = [FP -0x40];
ffa002da:	20 e1 be ba 	R0 = -0x4542 (X);		/*		R0=0xffffbabe(-17730) */
ffa002de:	10 97       	W[P2] = R0;
ffa002e0:	00 b9       	R0 = [FP -0x40];
ffa002e2:	10 64       	R0 += 0x2;		/* (  2) */
ffa002e4:	00 bb       	[FP -0x40] = R0;
ffa002e6:	10 b9       	R0 = [FP -0x3c];
ffa002e8:	08 64       	R0 += 0x1;		/* (  1) */
ffa002ea:	10 bb       	[FP -0x3c] = R0;
ffa002ec:	10 b9       	R0 = [FP -0x3c];
ffa002ee:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa002f0:	41 e1 3f 00 	R1.H = 0x3f;		/* ( 63)	R1=0x3fffff(4194303) */
ffa002f4:	08 09       	CC = R0 <= R1;
ffa002f6:	dc 1b       	IF CC JUMP 0xffa002ae <_main+0x106>;
ffa002f8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa002fa:	00 bb       	[FP -0x40] = R0;
ffa002fc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa002fe:	10 bb       	[FP -0x3c] = R0;
ffa00300:	62 20       	JUMP.S 0xffa003c4 <_main+0x21c>;
ffa00302:	0a b9       	P2 = [FP -0x40];
ffa00304:	50 95       	R0 = W[P2] (X);
ffa00306:	78 e6 e4 ff 	W[FP + -0x38] = R0;
ffa0030a:	00 b9       	R0 = [FP -0x40];
ffa0030c:	10 64       	R0 += 0x2;		/* (  2) */
ffa0030e:	00 bb       	[FP -0x40] = R0;
ffa00310:	78 e4 e4 ff 	R0 = W[FP + -0x38] (Z);
ffa00314:	81 e1 ca de 	R1 = 0xdeca (Z);		/*		R1=0xdeca(57034) */
ffa00318:	08 08       	CC = R0 == R1;
ffa0031a:	16 18       	IF CC JUMP 0xffa00346 <_main+0x19e>;
ffa0031c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00320:	00 e1 28 00 	R0.L = 0x28;		/* ( 40)	R0=0xff900028(-7339992) */
ffa00324:	11 b9       	R1 = [FP -0x3c];
ffa00326:	00 e3 95 03 	CALL 0xffa00a50 <_printf_hex>;
ffa0032a:	79 e4 e4 ff 	R1 = W[FP + -0x38] (Z);
ffa0032e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900028(-7339992) */
ffa00332:	00 e1 34 00 	R0.L = 0x34;		/* ( 52)	R0=0xff900034(-7339980) */
ffa00336:	00 e3 8d 03 	CALL 0xffa00a50 <_printf_hex>;
ffa0033a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900034(-7339980) */
ffa0033e:	00 e1 10 00 	R0.L = 0x10;		/* ( 16)	R0=0xff900010(-7340016) */
ffa00342:	00 e3 a7 02 	CALL 0xffa00890 <_printf_str>;
ffa00346:	0a b9       	P2 = [FP -0x40];
ffa00348:	50 95       	R0 = W[P2] (X);
ffa0034a:	78 e6 e4 ff 	W[FP + -0x38] = R0;
ffa0034e:	00 b9       	R0 = [FP -0x40];
ffa00350:	10 64       	R0 += 0x2;		/* (  2) */
ffa00352:	00 bb       	[FP -0x40] = R0;
ffa00354:	78 e4 e4 ff 	R0 = W[FP + -0x38] (Z);
ffa00358:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa0035c:	08 08       	CC = R0 == R1;
ffa0035e:	08 18       	IF CC JUMP 0xffa0036e <_main+0x1c6>;
ffa00360:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa00364:	00 e1 28 00 	R0.L = 0x28;		/* ( 40)	R0=0xff900028(-7339992) */
ffa00368:	11 b9       	R1 = [FP -0x3c];
ffa0036a:	00 e3 73 03 	CALL 0xffa00a50 <_printf_hex>;
ffa0036e:	0a b9       	P2 = [FP -0x40];
ffa00370:	50 95       	R0 = W[P2] (X);
ffa00372:	78 e6 e4 ff 	W[FP + -0x38] = R0;
ffa00376:	00 b9       	R0 = [FP -0x40];
ffa00378:	10 64       	R0 += 0x2;		/* (  2) */
ffa0037a:	00 bb       	[FP -0x40] = R0;
ffa0037c:	78 e4 e4 ff 	R0 = W[FP + -0x38] (Z);
ffa00380:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa00384:	08 08       	CC = R0 == R1;
ffa00386:	08 18       	IF CC JUMP 0xffa00396 <_main+0x1ee>;
ffa00388:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900028(-7339992) */
ffa0038c:	00 e1 28 00 	R0.L = 0x28;		/* ( 40)	R0=0xff900028(-7339992) */
ffa00390:	11 b9       	R1 = [FP -0x3c];
ffa00392:	00 e3 5f 03 	CALL 0xffa00a50 <_printf_hex>;
ffa00396:	0a b9       	P2 = [FP -0x40];
ffa00398:	50 95       	R0 = W[P2] (X);
ffa0039a:	78 e6 e4 ff 	W[FP + -0x38] = R0;
ffa0039e:	00 b9       	R0 = [FP -0x40];
ffa003a0:	10 64       	R0 += 0x2;		/* (  2) */
ffa003a2:	00 bb       	[FP -0x40] = R0;
ffa003a4:	78 e4 e4 ff 	R0 = W[FP + -0x38] (Z);
ffa003a8:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa003ac:	08 08       	CC = R0 == R1;
ffa003ae:	08 18       	IF CC JUMP 0xffa003be <_main+0x216>;
ffa003b0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900028(-7339992) */
ffa003b4:	00 e1 28 00 	R0.L = 0x28;		/* ( 40)	R0=0xff900028(-7339992) */
ffa003b8:	11 b9       	R1 = [FP -0x3c];
ffa003ba:	00 e3 4b 03 	CALL 0xffa00a50 <_printf_hex>;
ffa003be:	10 b9       	R0 = [FP -0x3c];
ffa003c0:	08 64       	R0 += 0x1;		/* (  1) */
ffa003c2:	10 bb       	[FP -0x3c] = R0;
ffa003c4:	10 b9       	R0 = [FP -0x3c];
ffa003c6:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa003c8:	41 e1 3f 00 	R1.H = 0x3f;		/* ( 63)	R1=0x3fffff(4194303) */
ffa003cc:	08 09       	CC = R0 <= R1;
ffa003ce:	9a 1b       	IF CC JUMP 0xffa00302 <_main+0x15a>;
ffa003d0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900028(-7339992) */
ffa003d4:	00 e1 3c 00 	R0.L = 0x3c;		/* ( 60)	R0=0xff90003c(-7339972) */
ffa003d8:	00 e3 5c 02 	CALL 0xffa00890 <_printf_str>;
ffa003dc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa003e0:	0a e1 84 06 	P2.L = 0x684;		/* (1668)	P2=0xffc00684(-4192636) */
ffa003e4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa003e6:	10 97       	W[P2] = R0;
ffa003e8:	24 00       	SSYNC;
ffa003ea:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800684 */
ffa003ee:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa003f2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa003f4:	10 93       	[P2] = R0;
ffa003f6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa003fa:	0a e1 50 06 	P2.L = 0x650;		/* (1616)	P2=0xffc00650(-4192688) */
ffa003fe:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa00402:	10 97       	W[P2] = R0;
ffa00404:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00650(-4192688) */
ffa00408:	0a e1 58 06 	P2.L = 0x658;		/* (1624)	P2=0xffc00658(-4192680) */
ffa0040c:	20 e1 09 3d 	R0 = 0x3d09 (X);		/*		R0=0x3d09(15625) */
ffa00410:	18 4f       	R0 <<= 0x3;
ffa00412:	10 93       	[P2] = R0;
ffa00414:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00658(-4192680) */
ffa00418:	0a e1 5c 06 	P2.L = 0x65c;		/* (1628)	P2=0xffc0065c(-4192676) */
ffa0041c:	80 e1 24 f4 	R0 = 0xf424 (Z);		/*		R0=0xf424(62500) */
ffa00420:	10 93       	[P2] = R0;
ffa00422:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0203c(-4186052) */
ffa00426:	09 e1 80 06 	P1.L = 0x680;		/* (1664)	P1=0xffc00680(-4192640) */
ffa0042a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0065c(-4192676) */
ffa0042e:	0a e1 80 06 	P2.L = 0x680;		/* (1664)	P2=0xffc00680(-4192640) */
ffa00432:	50 95       	R0 = W[P2] (X);
ffa00434:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa00436:	08 97       	W[P1] = R0;
ffa00438:	00 e3 04 0f 	CALL 0xffa02240 <_bfin_EMAC_init>;
ffa0043c:	30 bb       	[FP -0x34] = R0;
ffa0043e:	30 b9       	R0 = [FP -0x34];
ffa00440:	00 0c       	CC = R0 == 0x0;
ffa00442:	03 10       	IF !CC JUMP 0xffa00448 <_main+0x2a0>;
ffa00444:	00 e3 b0 19 	CALL 0xffa037a4 <_DHCP_req>;
ffa00448:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00680(-4192640) */
ffa0044c:	09 e1 00 32 	P1.L = 0x3200;		/* (12800)	P1=0xffc03200(-4181504) */
ffa00450:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00680(-4192640) */
ffa00454:	0a e1 00 32 	P2.L = 0x3200;		/* (12800)	P2=0xffc03200(-4181504) */
ffa00458:	51 95       	R1 = W[P2] (X);
ffa0045a:	38 62       	R0 = -0x39 (X);		/*		R0=0xffffffc7(-57) */
ffa0045c:	01 54       	R0 = R1 & R0;
ffa0045e:	08 97       	W[P1] = R0;
ffa00460:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03200(-4181504) */
ffa00464:	09 e1 30 07 	P1.L = 0x730;		/* (1840)	P1=0xffc00730(-4192464) */
ffa00468:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03200(-4181504) */
ffa0046c:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa00470:	51 95       	R1 = W[P2] (X);
ffa00472:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa00474:	01 56       	R0 = R1 | R0;
ffa00476:	08 97       	W[P1] = R0;
ffa00478:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00730(-4192464) */
ffa0047c:	09 e1 40 07 	P1.L = 0x740;		/* (1856)	P1=0xffc00740(-4192448) */
ffa00480:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa00484:	0a e1 40 07 	P2.L = 0x740;		/* (1856)	P2=0xffc00740(-4192448) */
ffa00488:	51 95       	R1 = W[P2] (X);
ffa0048a:	38 62       	R0 = -0x39 (X);		/*		R0=0xffffffc7(-57) */
ffa0048c:	01 54       	R0 = R1 & R0;
ffa0048e:	08 97       	W[P1] = R0;
ffa00490:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00740(-4192448) */
ffa00494:	09 e1 40 15 	P1.L = 0x1540;		/* (5440)	P1=0xffc01540(-4188864) */
ffa00498:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00740(-4192448) */
ffa0049c:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa004a0:	50 95       	R0 = W[P2] (X);
ffa004a2:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa004a4:	08 97       	W[P1] = R0;
ffa004a6:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc01540(-4188864) */
ffa004aa:	09 e1 30 15 	P1.L = 0x1530;		/* (5424)	P1=0xffc01530(-4188880) */
ffa004ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa004b2:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa004b6:	51 95       	R1 = W[P2] (X);
ffa004b8:	20 e1 ff f7 	R0 = -0x801 (X);		/*		R0=0xfffff7ff(-2049) */
ffa004bc:	01 54       	R0 = R1 & R0;
ffa004be:	08 97       	W[P1] = R0;
ffa004c0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa004c2:	40 bb       	[FP -0x30] = R0;
ffa004c4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa004c6:	70 bb       	[FP -0x24] = R0;
ffa004c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa004ca:	80 bb       	[FP -0x20] = R0;
ffa004cc:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa004d0:	00 e3 82 0a 	CALL 0xffa019d4 <_radio_init>;
ffa004d4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa004d8:	00 e1 50 00 	R0.L = 0x50;		/* ( 80)	R0=0xff900050(-7339952) */
ffa004dc:	00 e3 da 01 	CALL 0xffa00890 <_printf_str>;
ffa004e0:	00 e3 08 0a 	CALL 0xffa018f0 <_radio_set_rx>;
ffa004e4:	01 20       	JUMP.S 0xffa004e6 <_main+0x33e>;
ffa004e6:	30 b9       	R0 = [FP -0x34];
ffa004e8:	00 0c       	CC = R0 == 0x0;
ffa004ea:	08 10       	IF !CC JUMP 0xffa004fa <_main+0x352>;
ffa004ec:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa004f0:	97 5a       	P2 = FP + P2;
ffa004f2:	42 30       	R0 = P2;
ffa004f4:	00 e3 d0 0c 	CALL 0xffa01e94 <_bfin_EMAC_recv>;
ffa004f8:	60 bb       	[FP -0x28] = R0;
ffa004fa:	60 b9       	R0 = [FP -0x28];
ffa004fc:	00 0d       	CC = R0 <= 0x0;
ffa004fe:	2f 18       	IF CC JUMP 0xffa0055c <_main+0x3b4>;
ffa00500:	f0 b8       	R0 = [FP -0x44];
ffa00502:	a0 bb       	[FP -0x18] = R0;
ffa00504:	aa b9       	P2 = [FP -0x18];
ffa00506:	d1 a1       	R1 = [P2 + 0x1c];
ffa00508:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90ffbc */
ffa0050c:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa00510:	10 91       	R0 = [P2];
ffa00512:	01 08       	CC = R1 == R0;
ffa00514:	24 10       	IF !CC JUMP 0xffa0055c <_main+0x3b4>;
ffa00516:	00 00       	NOP;
ffa00518:	00 00       	NOP;
ffa0051a:	aa b9       	P2 = [FP -0x18];
ffa0051c:	50 e5 13 00 	R0 = W[P2 + 0x26] (X);
ffa00520:	c0 42       	R0 = R0.L (Z);
ffa00522:	00 e3 73 13 	CALL 0xffa02c08 <_htons>;
ffa00526:	c0 42       	R0 = R0.L (Z);
ffa00528:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa0052c:	08 08       	CC = R0 == R1;
ffa0052e:	17 10       	IF !CC JUMP 0xffa0055c <_main+0x3b4>;
ffa00530:	f0 b8       	R0 = [FP -0x44];
ffa00532:	b0 bb       	[FP -0x14] = R0;
ffa00534:	b0 b9       	R0 = [FP -0x14];
ffa00536:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa00538:	b0 bb       	[FP -0x14] = R0;
ffa0053a:	b0 b9       	R0 = [FP -0x14];
ffa0053c:	2a e1 98 ff 	P2 = -0x68 (X);		/*		P2=0xffffff98(-104) */
ffa00540:	97 5a       	P2 = FP + P2;
ffa00542:	4a 30       	R1 = P2;
ffa00544:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa00546:	00 e3 37 04 	CALL 0xffa00db4 <_memcpy_>;
ffa0054a:	ba b9       	P2 = [FP -0x14];
ffa0054c:	10 91       	R0 = [P2];
ffa0054e:	08 30       	R1 = R0;
ffa00550:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa00554:	00 e1 68 00 	R0.L = 0x68;		/* (104)	R0=0xff900068(-7339928) */
ffa00558:	00 e3 7c 02 	CALL 0xffa00a50 <_printf_hex>;
ffa0055c:	2a e1 97 ff 	P2 = -0x69 (X);		/*		P2=0xffffff97(-105) */
ffa00560:	97 5a       	P2 = FP + P2;
ffa00562:	b8 60       	R0 = 0x17 (X);		/*		R0=0x17( 23) */
ffa00564:	4a 30       	R1 = P2;
ffa00566:	00 e3 ff 07 	CALL 0xffa01564 <_spi_read_register_status>;
ffa0056a:	b8 e6 e7 ff 	B[FP + -0x19] = R0;
ffa0056e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0ff97(-4128873) */
ffa00572:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa00576:	50 95       	R0 = W[P2] (X);
ffa00578:	c1 42       	R1 = R0.L (Z);
ffa0057a:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa0057e:	01 54       	R0 = R1 & R0;
ffa00580:	00 0c       	CC = R0 == 0x0;
ffa00582:	ad 10       	IF !CC JUMP 0xffa006dc <_main+0x534>;
ffa00584:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa00586:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0058a:	00 e3 33 07 	CALL 0xffa013f0 <_spi_write_register>;
ffa0058e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa00592:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00596:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00598:	10 97       	W[P2] = R0;
ffa0059a:	24 00       	SSYNC;
ffa0059c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa005a0:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa005a4:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa005a8:	10 97       	W[P2] = R0;
ffa005aa:	24 00       	SSYNC;
ffa005ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa005b0:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa005b4:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa005b8:	10 97       	W[P2] = R0;
ffa005ba:	00 e3 f7 06 	CALL 0xffa013a8 <_spi_delay>;
ffa005be:	70 b9       	R0 = [FP -0x24];
ffa005c0:	c0 bb       	[FP -0x10] = R0;
ffa005c2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa005c4:	10 bb       	[FP -0x3c] = R0;
ffa005c6:	16 20       	JUMP.S 0xffa005f2 <_main+0x44a>;
ffa005c8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa005cc:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa005d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa005d2:	10 97       	W[P2] = R0;
ffa005d4:	00 e3 ea 06 	CALL 0xffa013a8 <_spi_delay>;
ffa005d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa005dc:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa005e0:	50 95       	R0 = W[P2] (X);
ffa005e2:	ca b9       	P2 = [FP -0x10];
ffa005e4:	10 9b       	B[P2] = R0;
ffa005e6:	c0 b9       	R0 = [FP -0x10];
ffa005e8:	08 64       	R0 += 0x1;		/* (  1) */
ffa005ea:	c0 bb       	[FP -0x10] = R0;
ffa005ec:	10 b9       	R0 = [FP -0x3c];
ffa005ee:	08 64       	R0 += 0x1;		/* (  1) */
ffa005f0:	10 bb       	[FP -0x3c] = R0;
ffa005f2:	10 b9       	R0 = [FP -0x3c];
ffa005f4:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa005f6:	08 09       	CC = R0 <= R1;
ffa005f8:	e8 1b       	IF CC JUMP 0xffa005c8 <_main+0x420>;
ffa005fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa005fe:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00602:	20 e1 00 06 	R0 = 0x600 (X);		/*		R0=0x600(1536) */
ffa00606:	10 97       	W[P2] = R0;
ffa00608:	24 00       	SSYNC;
ffa0060a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0060e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00612:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00614:	10 97       	W[P2] = R0;
ffa00616:	24 00       	SSYNC;
ffa00618:	70 b9       	R0 = [FP -0x24];
ffa0061a:	d0 bb       	[FP -0xc] = R0;
ffa0061c:	70 b9       	R0 = [FP -0x24];
ffa0061e:	00 65       	R0 += 0x20;		/* ( 32) */
ffa00620:	70 bb       	[FP -0x24] = R0;
ffa00622:	d0 b9       	R0 = [FP -0xc];
ffa00624:	d8 64       	R0 += 0x1b;		/* ( 27) */
ffa00626:	d0 bb       	[FP -0xc] = R0;
ffa00628:	da b9       	P2 = [FP -0xc];
ffa0062a:	50 99       	R0 = B[P2] (X);
ffa0062c:	01 43       	R1 = R0.B (X);
ffa0062e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa00630:	01 54       	R0 = R1 & R0;
ffa00632:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00634:	08 08       	CC = R0 == R1;
ffa00636:	53 10       	IF !CC JUMP 0xffa006dc <_main+0x534>;
ffa00638:	00 e3 84 09 	CALL 0xffa01940 <_radio_set_tx>;
ffa0063c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00640:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00644:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa00648:	10 97       	W[P2] = R0;
ffa0064a:	24 00       	SSYNC;
ffa0064c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00650:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa00654:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa00658:	10 97       	W[P2] = R0;
ffa0065a:	00 e3 a7 06 	CALL 0xffa013a8 <_spi_delay>;
ffa0065e:	2a e1 98 ff 	P2 = -0x68 (X);		/*		P2=0xffffff98(-104) */
ffa00662:	97 5a       	P2 = FP + P2;
ffa00664:	ea bb       	[FP -0x8] = P2;
ffa00666:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00668:	10 bb       	[FP -0x3c] = R0;
ffa0066a:	11 20       	JUMP.S 0xffa0068c <_main+0x4e4>;
ffa0066c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc01530(-4188880) */
ffa00670:	09 e1 0c 05 	P1.L = 0x50c;		/* (1292)	P1=0xffc0050c(-4193012) */
ffa00674:	ea b9       	P2 = [FP -0x8];
ffa00676:	50 99       	R0 = B[P2] (X);
ffa00678:	40 43       	R0 = R0.B (Z);
ffa0067a:	08 97       	W[P1] = R0;
ffa0067c:	e0 b9       	R0 = [FP -0x8];
ffa0067e:	08 64       	R0 += 0x1;		/* (  1) */
ffa00680:	e0 bb       	[FP -0x8] = R0;
ffa00682:	00 e3 93 06 	CALL 0xffa013a8 <_spi_delay>;
ffa00686:	10 b9       	R0 = [FP -0x3c];
ffa00688:	08 64       	R0 += 0x1;		/* (  1) */
ffa0068a:	10 bb       	[FP -0x3c] = R0;
ffa0068c:	10 b9       	R0 = [FP -0x3c];
ffa0068e:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa00690:	08 09       	CC = R0 <= R1;
ffa00692:	ed 1b       	IF CC JUMP 0xffa0066c <_main+0x4c4>;
ffa00694:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0ff98(-4128872) */
ffa00698:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0069c:	20 e1 00 06 	R0 = 0x600 (X);		/*		R0=0x600(1536) */
ffa006a0:	10 97       	W[P2] = R0;
ffa006a2:	24 00       	SSYNC;
ffa006a4:	03 20       	JUMP.S 0xffa006aa <_main+0x502>;
ffa006a6:	00 00       	NOP;
ffa006a8:	00 00       	NOP;
ffa006aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa006ae:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa006b2:	50 95       	R0 = W[P2] (X);
ffa006b4:	c1 42       	R1 = R0.L (Z);
ffa006b6:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa006ba:	01 54       	R0 = R1 & R0;
ffa006bc:	00 0c       	CC = R0 == 0x0;
ffa006be:	f4 13       	IF !CC JUMP 0xffa006a6 <_main+0x4fe>;
ffa006c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa006c4:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa006c8:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa006cc:	10 97       	W[P2] = R0;
ffa006ce:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa006d0:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa006d4:	00 e3 8e 06 	CALL 0xffa013f0 <_spi_write_register>;
ffa006d8:	00 e3 0c 09 	CALL 0xffa018f0 <_radio_set_rx>;
ffa006dc:	71 b9       	R1 = [FP -0x24];
ffa006de:	80 b9       	R0 = [FP -0x20];
ffa006e0:	81 09       	CC = R1 < R0 (IU);
ffa006e2:	03 10       	IF !CC JUMP 0xffa006e8 <_main+0x540>;
ffa006e4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa006e6:	80 bb       	[FP -0x20] = R0;
ffa006e8:	70 b9       	R0 = [FP -0x24];
ffa006ea:	81 b9       	R1 = [FP -0x20];
ffa006ec:	08 52       	R0 = R0 - R1;
ffa006ee:	21 e1 ff 00 	R1 = 0xff (X);		/*		R1=0xff(255) */
ffa006f2:	08 0a       	CC = R0 <= R1 (IU);
ffa006f4:	43 18       	IF CC JUMP 0xffa0077a <_main+0x5d2>;
ffa006f6:	2a e1 bb ff 	P2 = -0x45 (X);		/*		P2=0xffffffbb(-69) */
ffa006fa:	97 5a       	P2 = FP + P2;
ffa006fc:	20 e1 04 01 	R0 = 0x104 (X);		/*		R0=0x104(260) */
ffa00700:	4a 30       	R1 = P2;
ffa00702:	00 e3 43 15 	CALL 0xffa03188 <_udp_packet_setup>;
ffa00706:	f0 ba       	[FP -0x44] = R0;
ffa00708:	b8 e5 bb ff 	R0 = B[FP + -0x45] (X);
ffa0070c:	00 43       	R0 = R0.B (X);
ffa0070e:	00 0d       	CC = R0 <= 0x0;
ffa00710:	30 18       	IF CC JUMP 0xffa00770 <_main+0x5c8>;
ffa00712:	fa b8       	P2 = [FP -0x44];
ffa00714:	80 b9       	R0 = [FP -0x20];
ffa00716:	10 93       	[P2] = R0;
ffa00718:	42 30       	R0 = P2;
ffa0071a:	20 64       	R0 += 0x4;		/* (  4) */
ffa0071c:	f0 ba       	[FP -0x44] = R0;
ffa0071e:	80 b9       	R0 = [FP -0x20];
ffa00720:	f0 bb       	[FP -0x4] = R0;
ffa00722:	f0 b9       	R0 = [FP -0x4];
ffa00724:	08 30       	R1 = R0;
ffa00726:	e0 63       	R0 = -0x4 (X);		/*		R0=0xfffffffc( -4) */
ffa00728:	01 54       	R0 = R1 & R0;
ffa0072a:	f0 bb       	[FP -0x4] = R0;
ffa0072c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0072e:	10 bb       	[FP -0x3c] = R0;
ffa00730:	14 20       	JUMP.S 0xffa00758 <_main+0x5b0>;
ffa00732:	f0 b9       	R0 = [FP -0x4];
ffa00734:	08 30       	R1 = R0;
ffa00736:	20 e1 ff 0f 	R0 = 0xfff (X);		/*		R0=0xfff(4095) */
ffa0073a:	01 54       	R0 = R1 & R0;
ffa0073c:	f0 bb       	[FP -0x4] = R0;
ffa0073e:	f9 b8       	P1 = [FP -0x44];
ffa00740:	fa b9       	P2 = [FP -0x4];
ffa00742:	10 91       	R0 = [P2];
ffa00744:	08 93       	[P1] = R0;
ffa00746:	41 30       	R0 = P1;
ffa00748:	20 64       	R0 += 0x4;		/* (  4) */
ffa0074a:	f0 ba       	[FP -0x44] = R0;
ffa0074c:	f0 b9       	R0 = [FP -0x4];
ffa0074e:	20 64       	R0 += 0x4;		/* (  4) */
ffa00750:	f0 bb       	[FP -0x4] = R0;
ffa00752:	10 b9       	R0 = [FP -0x3c];
ffa00754:	08 64       	R0 += 0x1;		/* (  1) */
ffa00756:	10 bb       	[FP -0x3c] = R0;
ffa00758:	10 b9       	R0 = [FP -0x3c];
ffa0075a:	f9 61       	R1 = 0x3f (X);		/*		R1=0x3f( 63) */
ffa0075c:	08 09       	CC = R0 <= R1;
ffa0075e:	ea 1b       	IF CC JUMP 0xffa00732 <_main+0x58a>;
ffa00760:	80 b9       	R0 = [FP -0x20];
ffa00762:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa00766:	08 50       	R0 = R0 + R1;
ffa00768:	80 bb       	[FP -0x20] = R0;
ffa0076a:	00 e3 ef 0a 	CALL 0xffa01d48 <_bfin_EMAC_send_nocopy>;
ffa0076e:	06 20       	JUMP.S 0xffa0077a <_main+0x5d2>;
ffa00770:	80 b9       	R0 = [FP -0x20];
ffa00772:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa00776:	08 50       	R0 = R0 + R1;
ffa00778:	80 bb       	[FP -0x20] = R0;
ffa0077a:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbb */
ffa0077e:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00782:	11 91       	R1 = [P2];
ffa00784:	40 e1 62 10 	R0.H = 0x1062;		/* (4194)	R0=0x10620fff(274862079) */
ffa00788:	00 e1 d3 4d 	R0.L = 0x4dd3;		/* (19923)	R0=0x10624dd3(274877907) */
ffa0078c:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa00790:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00794:	81 c0 08 86 	A1 += R1.H * R0.L, A0 = R1.H * R0.H (FU);
ffa00798:	81 c0 01 98 	A1 += R0.H * R1.L (FU);
ffa0079c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa007a0:	0b c4 00 80 	A0 += A1;
ffa007a4:	8b c0 00 38 	R0 = A0 (FU);
ffa007a8:	30 4e       	R0 >>= 0x6;
ffa007aa:	50 bb       	[FP -0x2c] = R0;
ffa007ac:	51 b9       	R1 = [FP -0x2c];
ffa007ae:	40 b9       	R0 = [FP -0x30];
ffa007b0:	01 08       	CC = R1 == R0;
ffa007b2:	9a 1a       	IF CC JUMP 0xffa004e6 <_main+0x33e>;
ffa007b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa007b8:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa007bc:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa007be:	10 97       	W[P2] = R0;
ffa007c0:	50 b9       	R0 = [FP -0x2c];
ffa007c2:	40 bb       	[FP -0x30] = R0;
ffa007c4:	91 2e       	JUMP.S 0xffa004e6 <_main+0x33e>;
	...

ffa007c8 <_uart_str>:
ffa007c8:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa007cc:	b8 b0       	[FP + 0x8] = R0;
ffa007ce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007d0:	e0 bb       	[FP -0x8] = R0;
ffa007d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa007d6:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa007da:	50 95       	R0 = W[P2] (X);
ffa007dc:	c0 42       	R0 = R0.L (Z);
ffa007de:	08 0c       	CC = R0 == 0x1;
ffa007e0:	53 10       	IF !CC JUMP 0xffa00886 <_uart_str+0xbe>;
ffa007e2:	48 20       	JUMP.S 0xffa00872 <_uart_str+0xaa>;
ffa007e4:	ba ac       	P2 = [FP + 0x8];
ffa007e6:	50 99       	R0 = B[P2] (X);
ffa007e8:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa007ec:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa007f0:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa007f2:	08 08       	CC = R0 == R1;
ffa007f4:	26 10       	IF !CC JUMP 0xffa00840 <_uart_str+0x78>;
ffa007f6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa007fa:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa007fe:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00800:	10 97       	W[P2] = R0;
ffa00802:	02 20       	JUMP.S 0xffa00806 <_uart_str+0x3e>;
ffa00804:	00 00       	NOP;
ffa00806:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa0080a:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa0080e:	50 95       	R0 = W[P2] (X);
ffa00810:	c1 42       	R1 = R0.L (Z);
ffa00812:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00814:	01 54       	R0 = R1 & R0;
ffa00816:	00 0c       	CC = R0 == 0x0;
ffa00818:	f6 1b       	IF CC JUMP 0xffa00804 <_uart_str+0x3c>;
ffa0081a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa0081e:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00822:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa00824:	10 97       	W[P2] = R0;
ffa00826:	02 20       	JUMP.S 0xffa0082a <_uart_str+0x62>;
ffa00828:	00 00       	NOP;
ffa0082a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa0082e:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00832:	50 95       	R0 = W[P2] (X);
ffa00834:	c1 42       	R1 = R0.L (Z);
ffa00836:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00838:	01 54       	R0 = R1 & R0;
ffa0083a:	00 0c       	CC = R0 == 0x0;
ffa0083c:	f6 1b       	IF CC JUMP 0xffa00828 <_uart_str+0x60>;
ffa0083e:	14 20       	JUMP.S 0xffa00866 <_uart_str+0x9e>;
ffa00840:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa00844:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00848:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0084c:	10 97       	W[P2] = R0;
ffa0084e:	02 20       	JUMP.S 0xffa00852 <_uart_str+0x8a>;
ffa00850:	00 00       	NOP;
ffa00852:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa00856:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa0085a:	50 95       	R0 = W[P2] (X);
ffa0085c:	c1 42       	R1 = R0.L (Z);
ffa0085e:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00860:	01 54       	R0 = R1 & R0;
ffa00862:	00 0c       	CC = R0 == 0x0;
ffa00864:	f6 1b       	IF CC JUMP 0xffa00850 <_uart_str+0x88>;
ffa00866:	b8 a0       	R0 = [FP + 0x8];
ffa00868:	08 64       	R0 += 0x1;		/* (  1) */
ffa0086a:	b8 b0       	[FP + 0x8] = R0;
ffa0086c:	e0 b9       	R0 = [FP -0x8];
ffa0086e:	08 64       	R0 += 0x1;		/* (  1) */
ffa00870:	e0 bb       	[FP -0x8] = R0;
ffa00872:	ba ac       	P2 = [FP + 0x8];
ffa00874:	50 99       	R0 = B[P2] (X);
ffa00876:	00 43       	R0 = R0.B (X);
ffa00878:	00 0c       	CC = R0 == 0x0;
ffa0087a:	06 18       	IF CC JUMP 0xffa00886 <_uart_str+0xbe>;
ffa0087c:	e0 b9       	R0 = [FP -0x8];
ffa0087e:	21 e1 ff 03 	R1 = 0x3ff (X);		/*		R1=0x3ff(1023) */
ffa00882:	08 09       	CC = R0 <= R1;
ffa00884:	b0 1b       	IF CC JUMP 0xffa007e4 <_uart_str+0x1c>;
ffa00886:	e0 b9       	R0 = [FP -0x8];
ffa00888:	01 e8 00 00 	UNLINK;
ffa0088c:	10 00       	RTS;
	...

ffa00890 <_printf_str>:
ffa00890:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00894:	b8 b0       	[FP + 0x8] = R0;
ffa00896:	b8 a0       	R0 = [FP + 0x8];
ffa00898:	ff e3 98 ff 	CALL 0xffa007c8 <_uart_str>;
ffa0089c:	01 e8 00 00 	UNLINK;
ffa008a0:	10 00       	RTS;
	...

ffa008a4 <_printf_int>:
ffa008a4:	00 e8 09 00 	LINK 0x24;		/* (36) */
ffa008a8:	b8 b0       	[FP + 0x8] = R0;
ffa008aa:	f9 b0       	[FP + 0xc] = R1;
ffa008ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008ae:	c0 bb       	[FP -0x10] = R0;
ffa008b0:	f8 a0       	R0 = [FP + 0xc];
ffa008b2:	00 0c       	CC = R0 == 0x0;
ffa008b4:	0b 10       	IF !CC JUMP 0xffa008ca <_printf_int+0x26>;
ffa008b6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900414 */
ffa008ba:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_printf_temp> */
ffa008be:	52 91       	P2 = [P2];
ffa008c0:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa008c2:	10 9b       	B[P2] = R0;
ffa008c4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa008c6:	c0 bb       	[FP -0x10] = R0;
ffa008c8:	62 20       	JUMP.S 0xffa0098c <_printf_int+0xe8>;
ffa008ca:	f8 a0       	R0 = [FP + 0xc];
ffa008cc:	00 0d       	CC = R0 <= 0x0;
ffa008ce:	25 18       	IF CC JUMP 0xffa00918 <_printf_int+0x74>;
ffa008d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008d2:	c0 bb       	[FP -0x10] = R0;
ffa008d4:	19 20       	JUMP.S 0xffa00906 <_printf_int+0x62>;
ffa008d6:	f8 a0       	R0 = [FP + 0xc];
ffa008d8:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa008da:	00 e3 5b 02 	CALL 0xffa00d90 <_mod>;
ffa008de:	d0 bb       	[FP -0xc] = R0;
ffa008e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_printf_temp> */
ffa008e4:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_printf_temp> */
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
ffa00900:	00 e3 1e 02 	CALL 0xffa00d3c <_div>;
ffa00904:	f8 b0       	[FP + 0xc] = R0;
ffa00906:	f8 a0       	R0 = [FP + 0xc];
ffa00908:	00 0d       	CC = R0 <= 0x0;
ffa0090a:	41 18       	IF CC JUMP 0xffa0098c <_printf_int+0xe8>;
ffa0090c:	c0 b9       	R0 = [FP -0x10];
ffa0090e:	21 e1 7f 00 	R1 = 0x7f (X);		/*		R1=0x7f(127) */
ffa00912:	08 09       	CC = R0 <= R1;
ffa00914:	e1 1b       	IF CC JUMP 0xffa008d6 <_printf_int+0x32>;
ffa00916:	3b 20       	JUMP.S 0xffa0098c <_printf_int+0xe8>;
ffa00918:	f8 a0       	R0 = [FP + 0xc];
ffa0091a:	80 0c       	CC = R0 < 0x0;
ffa0091c:	38 10       	IF !CC JUMP 0xffa0098c <_printf_int+0xe8>;
ffa0091e:	f8 a0       	R0 = [FP + 0xc];
ffa00920:	08 30       	R1 = R0;
ffa00922:	f9 4c       	BITCLR (R1, 0x1f);		/* bit 31 */
ffa00924:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00926:	f8 4f       	R0 <<= 0x1f;
ffa00928:	08 52       	R0 = R0 - R1;
ffa0092a:	f8 b0       	[FP + 0xc] = R0;
ffa0092c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0092e:	c0 bb       	[FP -0x10] = R0;
ffa00930:	19 20       	JUMP.S 0xffa00962 <_printf_int+0xbe>;
ffa00932:	f8 a0       	R0 = [FP + 0xc];
ffa00934:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00936:	00 e3 2d 02 	CALL 0xffa00d90 <_mod>;
ffa0093a:	d0 bb       	[FP -0xc] = R0;
ffa0093c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_printf_temp> */
ffa00940:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_printf_temp> */
ffa00944:	11 91       	R1 = [P2];
ffa00946:	c0 b9       	R0 = [FP -0x10];
ffa00948:	41 50       	R1 = R1 + R0;
ffa0094a:	11 32       	P2 = R1;
ffa0094c:	d0 b9       	R0 = [FP -0xc];
ffa0094e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00950:	10 9b       	B[P2] = R0;
ffa00952:	c0 b9       	R0 = [FP -0x10];
ffa00954:	08 64       	R0 += 0x1;		/* (  1) */
ffa00956:	c0 bb       	[FP -0x10] = R0;
ffa00958:	f8 a0       	R0 = [FP + 0xc];
ffa0095a:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0095c:	00 e3 f0 01 	CALL 0xffa00d3c <_div>;
ffa00960:	f8 b0       	[FP + 0xc] = R0;
ffa00962:	f8 a0       	R0 = [FP + 0xc];
ffa00964:	00 0d       	CC = R0 <= 0x0;
ffa00966:	06 18       	IF CC JUMP 0xffa00972 <_printf_int+0xce>;
ffa00968:	c0 b9       	R0 = [FP -0x10];
ffa0096a:	21 e1 7f 00 	R1 = 0x7f (X);		/*		R1=0x7f(127) */
ffa0096e:	08 09       	CC = R0 <= R1;
ffa00970:	e1 1b       	IF CC JUMP 0xffa00932 <_printf_int+0x8e>;
ffa00972:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_printf_temp> */
ffa00976:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_printf_temp> */
ffa0097a:	11 91       	R1 = [P2];
ffa0097c:	c0 b9       	R0 = [FP -0x10];
ffa0097e:	41 50       	R1 = R1 + R0;
ffa00980:	11 32       	P2 = R1;
ffa00982:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa00984:	10 9b       	B[P2] = R0;
ffa00986:	c0 b9       	R0 = [FP -0x10];
ffa00988:	08 64       	R0 += 0x1;		/* (  1) */
ffa0098a:	c0 bb       	[FP -0x10] = R0;
ffa0098c:	b8 a0       	R0 = [FP + 0x8];
ffa0098e:	00 e3 4b 02 	CALL 0xffa00e24 <_strlen_>;
ffa00992:	b0 bb       	[FP -0x14] = R0;
ffa00994:	b1 b9       	R1 = [FP -0x14];
ffa00996:	c0 b9       	R0 = [FP -0x10];
ffa00998:	01 50       	R0 = R1 + R0;
ffa0099a:	21 e1 ff 03 	R1 = 0x3ff (X);		/*		R1=0x3ff(1023) */
ffa0099e:	08 09       	CC = R0 <= R1;
ffa009a0:	52 10       	IF !CC JUMP 0xffa00a44 <_printf_int+0x1a0>;
ffa009a2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009a4:	f0 bb       	[FP -0x4] = R0;
ffa009a6:	12 20       	JUMP.S 0xffa009ca <_printf_int+0x126>;
ffa009a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_printf_temp> */
ffa009ac:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_printf_out> */
ffa009b0:	11 91       	R1 = [P2];
ffa009b2:	f0 b9       	R0 = [FP -0x4];
ffa009b4:	41 50       	R1 = R1 + R0;
ffa009b6:	09 32       	P1 = R1;
ffa009b8:	ba ac       	P2 = [FP + 0x8];
ffa009ba:	50 99       	R0 = B[P2] (X);
ffa009bc:	08 9b       	B[P1] = R0;
ffa009be:	b8 a0       	R0 = [FP + 0x8];
ffa009c0:	08 64       	R0 += 0x1;		/* (  1) */
ffa009c2:	b8 b0       	[FP + 0x8] = R0;
ffa009c4:	f0 b9       	R0 = [FP -0x4];
ffa009c6:	08 64       	R0 += 0x1;		/* (  1) */
ffa009c8:	f0 bb       	[FP -0x4] = R0;
ffa009ca:	f1 b9       	R1 = [FP -0x4];
ffa009cc:	b0 b9       	R0 = [FP -0x14];
ffa009ce:	81 08       	CC = R1 < R0;
ffa009d0:	ec 1b       	IF CC JUMP 0xffa009a8 <_printf_int+0x104>;
ffa009d2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009d4:	e0 bb       	[FP -0x8] = R0;
ffa009d6:	1c 20       	JUMP.S 0xffa00a0e <_printf_int+0x16a>;
ffa009d8:	b1 b9       	R1 = [FP -0x14];
ffa009da:	e0 b9       	R0 = [FP -0x8];
ffa009dc:	01 50       	R0 = R1 + R0;
ffa009de:	08 30       	R1 = R0;
ffa009e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_printf_out> */
ffa009e4:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_printf_out> */
ffa009e8:	10 91       	R0 = [P2];
ffa009ea:	41 50       	R1 = R1 + R0;
ffa009ec:	09 32       	P1 = R1;
ffa009ee:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_printf_out> */
ffa009f2:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_printf_temp> */
ffa009f6:	12 91       	R2 = [P2];
ffa009f8:	c1 b9       	R1 = [FP -0x10];
ffa009fa:	e0 b9       	R0 = [FP -0x8];
ffa009fc:	01 52       	R0 = R1 - R0;
ffa009fe:	02 50       	R0 = R2 + R0;
ffa00a00:	10 32       	P2 = R0;
ffa00a02:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa00a04:	50 99       	R0 = B[P2] (X);
ffa00a06:	08 9b       	B[P1] = R0;
ffa00a08:	e0 b9       	R0 = [FP -0x8];
ffa00a0a:	08 64       	R0 += 0x1;		/* (  1) */
ffa00a0c:	e0 bb       	[FP -0x8] = R0;
ffa00a0e:	e1 b9       	R1 = [FP -0x8];
ffa00a10:	c0 b9       	R0 = [FP -0x10];
ffa00a12:	81 08       	CC = R1 < R0;
ffa00a14:	e2 1b       	IF CC JUMP 0xffa009d8 <_printf_int+0x134>;
ffa00a16:	b1 b9       	R1 = [FP -0x14];
ffa00a18:	c0 b9       	R0 = [FP -0x10];
ffa00a1a:	01 50       	R0 = R1 + R0;
ffa00a1c:	08 30       	R1 = R0;
ffa00a1e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_printf_temp> */
ffa00a22:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_printf_out> */
ffa00a26:	10 91       	R0 = [P2];
ffa00a28:	41 50       	R1 = R1 + R0;
ffa00a2a:	11 32       	P2 = R1;
ffa00a2c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a2e:	10 9b       	B[P2] = R0;
ffa00a30:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_printf_out> */
ffa00a34:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_printf_out> */
ffa00a38:	10 91       	R0 = [P2];
ffa00a3a:	ff e3 c7 fe 	CALL 0xffa007c8 <_uart_str>;
ffa00a3e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a40:	a0 bb       	[FP -0x18] = R0;
ffa00a42:	03 20       	JUMP.S 0xffa00a48 <_printf_int+0x1a4>;
ffa00a44:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa00a46:	a1 bb       	[FP -0x18] = R1;
ffa00a48:	a0 b9       	R0 = [FP -0x18];
ffa00a4a:	01 e8 00 00 	UNLINK;
ffa00a4e:	10 00       	RTS;

ffa00a50 <_printf_hex>:
ffa00a50:	00 e8 0a 00 	LINK 0x28;		/* (40) */
ffa00a54:	b8 b0       	[FP + 0x8] = R0;
ffa00a56:	f9 b0       	[FP + 0xc] = R1;
ffa00a58:	b8 a0       	R0 = [FP + 0x8];
ffa00a5a:	00 e3 e5 01 	CALL 0xffa00e24 <_strlen_>;
ffa00a5e:	a0 bb       	[FP -0x18] = R0;
ffa00a60:	a0 b9       	R0 = [FP -0x18];
ffa00a62:	21 e1 f5 03 	R1 = 0x3f5 (X);		/*		R1=0x3f5(1013) */
ffa00a66:	08 09       	CC = R0 <= R1;
ffa00a68:	8f 10       	IF !CC JUMP 0xffa00b86 <_printf_hex+0x136>;
ffa00a6a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a6c:	f0 bb       	[FP -0x4] = R0;
ffa00a6e:	12 20       	JUMP.S 0xffa00a92 <_printf_hex+0x42>;
ffa00a70:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_printf_out> */
ffa00a74:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_printf_out> */
ffa00a78:	11 91       	R1 = [P2];
ffa00a7a:	f0 b9       	R0 = [FP -0x4];
ffa00a7c:	41 50       	R1 = R1 + R0;
ffa00a7e:	09 32       	P1 = R1;
ffa00a80:	ba ac       	P2 = [FP + 0x8];
ffa00a82:	50 99       	R0 = B[P2] (X);
ffa00a84:	08 9b       	B[P1] = R0;
ffa00a86:	b8 a0       	R0 = [FP + 0x8];
ffa00a88:	08 64       	R0 += 0x1;		/* (  1) */
ffa00a8a:	b8 b0       	[FP + 0x8] = R0;
ffa00a8c:	f0 b9       	R0 = [FP -0x4];
ffa00a8e:	08 64       	R0 += 0x1;		/* (  1) */
ffa00a90:	f0 bb       	[FP -0x4] = R0;
ffa00a92:	f1 b9       	R1 = [FP -0x4];
ffa00a94:	a0 b9       	R0 = [FP -0x18];
ffa00a96:	81 08       	CC = R1 < R0;
ffa00a98:	ec 1b       	IF CC JUMP 0xffa00a70 <_printf_hex+0x20>;
ffa00a9a:	a0 b9       	R0 = [FP -0x18];
ffa00a9c:	c0 bb       	[FP -0x10] = R0;
ffa00a9e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_printf_out> */
ffa00aa2:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_printf_out> */
ffa00aa6:	11 91       	R1 = [P2];
ffa00aa8:	c0 b9       	R0 = [FP -0x10];
ffa00aaa:	41 50       	R1 = R1 + R0;
ffa00aac:	11 32       	P2 = R1;
ffa00aae:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00ab0:	10 9b       	B[P2] = R0;
ffa00ab2:	c0 b9       	R0 = [FP -0x10];
ffa00ab4:	08 64       	R0 += 0x1;		/* (  1) */
ffa00ab6:	c0 bb       	[FP -0x10] = R0;
ffa00ab8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_printf_out> */
ffa00abc:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_printf_out> */
ffa00ac0:	11 91       	R1 = [P2];
ffa00ac2:	c0 b9       	R0 = [FP -0x10];
ffa00ac4:	41 50       	R1 = R1 + R0;
ffa00ac6:	11 32       	P2 = R1;
ffa00ac8:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00acc:	10 9b       	B[P2] = R0;
ffa00ace:	c0 b9       	R0 = [FP -0x10];
ffa00ad0:	08 64       	R0 += 0x1;		/* (  1) */
ffa00ad2:	c0 bb       	[FP -0x10] = R0;
ffa00ad4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00ad6:	b0 bb       	[FP -0x14] = R0;
ffa00ad8:	30 20       	JUMP.S 0xffa00b38 <_printf_hex+0xe8>;
ffa00ada:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00adc:	b0 b9       	R0 = [FP -0x14];
ffa00ade:	01 52       	R0 = R1 - R0;
ffa00ae0:	82 c6 10 82 	R1 = R0 << 0x2;
ffa00ae4:	f8 a0       	R0 = [FP + 0xc];
ffa00ae6:	08 40       	R0 >>>= R1;
ffa00ae8:	d0 bb       	[FP -0xc] = R0;
ffa00aea:	d0 b9       	R0 = [FP -0xc];
ffa00aec:	08 30       	R1 = R0;
ffa00aee:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00af0:	01 54       	R0 = R1 & R0;
ffa00af2:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa00af6:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa00afa:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa00afc:	08 09       	CC = R0 <= R1;
ffa00afe:	07 18       	IF CC JUMP 0xffa00b0c <_printf_hex+0xbc>;
ffa00b00:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa00b04:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00b06:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa00b0a:	06 20       	JUMP.S 0xffa00b16 <_printf_hex+0xc6>;
ffa00b0c:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa00b10:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00b12:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa00b16:	c1 b9       	R1 = [FP -0x10];
ffa00b18:	b0 b9       	R0 = [FP -0x14];
ffa00b1a:	01 50       	R0 = R1 + R0;
ffa00b1c:	08 30       	R1 = R0;
ffa00b1e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_printf_out> */
ffa00b22:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_printf_out> */
ffa00b26:	10 91       	R0 = [P2];
ffa00b28:	41 50       	R1 = R1 + R0;
ffa00b2a:	11 32       	P2 = R1;
ffa00b2c:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa00b30:	10 9b       	B[P2] = R0;
ffa00b32:	b0 b9       	R0 = [FP -0x14];
ffa00b34:	08 64       	R0 += 0x1;		/* (  1) */
ffa00b36:	b0 bb       	[FP -0x14] = R0;
ffa00b38:	b0 b9       	R0 = [FP -0x14];
ffa00b3a:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00b3c:	08 09       	CC = R0 <= R1;
ffa00b3e:	ce 1b       	IF CC JUMP 0xffa00ada <_printf_hex+0x8a>;
ffa00b40:	c1 b9       	R1 = [FP -0x10];
ffa00b42:	b0 b9       	R0 = [FP -0x14];
ffa00b44:	01 50       	R0 = R1 + R0;
ffa00b46:	c0 bb       	[FP -0x10] = R0;
ffa00b48:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_printf_out> */
ffa00b4c:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_printf_out> */
ffa00b50:	11 91       	R1 = [P2];
ffa00b52:	c0 b9       	R0 = [FP -0x10];
ffa00b54:	41 50       	R1 = R1 + R0;
ffa00b56:	11 32       	P2 = R1;
ffa00b58:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00b5a:	10 9b       	B[P2] = R0;
ffa00b5c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_printf_out> */
ffa00b60:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_printf_out> */
ffa00b64:	11 91       	R1 = [P2];
ffa00b66:	c0 b9       	R0 = [FP -0x10];
ffa00b68:	01 50       	R0 = R1 + R0;
ffa00b6a:	10 32       	P2 = R0;
ffa00b6c:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00b6e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b70:	10 9b       	B[P2] = R0;
ffa00b72:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_printf_out> */
ffa00b76:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_printf_out> */
ffa00b7a:	10 91       	R0 = [P2];
ffa00b7c:	ff e3 26 fe 	CALL 0xffa007c8 <_uart_str>;
ffa00b80:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b82:	90 bb       	[FP -0x1c] = R0;
ffa00b84:	03 20       	JUMP.S 0xffa00b8a <_printf_hex+0x13a>;
ffa00b86:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa00b88:	91 bb       	[FP -0x1c] = R1;
ffa00b8a:	90 b9       	R0 = [FP -0x1c];
ffa00b8c:	01 e8 00 00 	UNLINK;
ffa00b90:	10 00       	RTS;
	...

ffa00b94 <_printf_hex_byte>:
ffa00b94:	00 e8 0a 00 	LINK 0x28;		/* (40) */
ffa00b98:	b8 b0       	[FP + 0x8] = R0;
ffa00b9a:	01 30       	R0 = R1;
ffa00b9c:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa00ba0:	b8 a0       	R0 = [FP + 0x8];
ffa00ba2:	00 e3 41 01 	CALL 0xffa00e24 <_strlen_>;
ffa00ba6:	a0 bb       	[FP -0x18] = R0;
ffa00ba8:	a0 b9       	R0 = [FP -0x18];
ffa00baa:	21 e1 fb 03 	R1 = 0x3fb (X);		/*		R1=0x3fb(1019) */
ffa00bae:	08 09       	CC = R0 <= R1;
ffa00bb0:	85 10       	IF !CC JUMP 0xffa00cba <_printf_hex_byte+0x126>;
ffa00bb2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00bb4:	f0 bb       	[FP -0x4] = R0;
ffa00bb6:	12 20       	JUMP.S 0xffa00bda <_printf_hex_byte+0x46>;
ffa00bb8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_printf_out> */
ffa00bbc:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_printf_out> */
ffa00bc0:	11 91       	R1 = [P2];
ffa00bc2:	f0 b9       	R0 = [FP -0x4];
ffa00bc4:	41 50       	R1 = R1 + R0;
ffa00bc6:	09 32       	P1 = R1;
ffa00bc8:	ba ac       	P2 = [FP + 0x8];
ffa00bca:	50 99       	R0 = B[P2] (X);
ffa00bcc:	08 9b       	B[P1] = R0;
ffa00bce:	b8 a0       	R0 = [FP + 0x8];
ffa00bd0:	08 64       	R0 += 0x1;		/* (  1) */
ffa00bd2:	b8 b0       	[FP + 0x8] = R0;
ffa00bd4:	f0 b9       	R0 = [FP -0x4];
ffa00bd6:	08 64       	R0 += 0x1;		/* (  1) */
ffa00bd8:	f0 bb       	[FP -0x4] = R0;
ffa00bda:	f1 b9       	R1 = [FP -0x4];
ffa00bdc:	a0 b9       	R0 = [FP -0x18];
ffa00bde:	81 08       	CC = R1 < R0;
ffa00be0:	ec 1b       	IF CC JUMP 0xffa00bb8 <_printf_hex_byte+0x24>;
ffa00be2:	a0 b9       	R0 = [FP -0x18];
ffa00be4:	c0 bb       	[FP -0x10] = R0;
ffa00be6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_printf_out> */
ffa00bea:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_printf_out> */
ffa00bee:	11 91       	R1 = [P2];
ffa00bf0:	c0 b9       	R0 = [FP -0x10];
ffa00bf2:	41 50       	R1 = R1 + R0;
ffa00bf4:	11 32       	P2 = R1;
ffa00bf6:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00bf8:	10 9b       	B[P2] = R0;
ffa00bfa:	c0 b9       	R0 = [FP -0x10];
ffa00bfc:	08 64       	R0 += 0x1;		/* (  1) */
ffa00bfe:	c0 bb       	[FP -0x10] = R0;
ffa00c00:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_printf_out> */
ffa00c04:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_printf_out> */
ffa00c08:	11 91       	R1 = [P2];
ffa00c0a:	c0 b9       	R0 = [FP -0x10];
ffa00c0c:	41 50       	R1 = R1 + R0;
ffa00c0e:	11 32       	P2 = R1;
ffa00c10:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00c14:	10 9b       	B[P2] = R0;
ffa00c16:	c0 b9       	R0 = [FP -0x10];
ffa00c18:	08 64       	R0 += 0x1;		/* (  1) */
ffa00c1a:	c0 bb       	[FP -0x10] = R0;
ffa00c1c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00c1e:	b0 bb       	[FP -0x14] = R0;
ffa00c20:	32 20       	JUMP.S 0xffa00c84 <_printf_hex_byte+0xf0>;
ffa00c22:	ba e4 0c 00 	R2 = B[FP + 0xc] (Z);
ffa00c26:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa00c28:	b0 b9       	R0 = [FP -0x14];
ffa00c2a:	01 52       	R0 = R1 - R0;
ffa00c2c:	10 4f       	R0 <<= 0x2;
ffa00c2e:	0a 30       	R1 = R2;
ffa00c30:	01 40       	R1 >>>= R0;
ffa00c32:	01 30       	R0 = R1;
ffa00c34:	d0 bb       	[FP -0xc] = R0;
ffa00c36:	d0 b9       	R0 = [FP -0xc];
ffa00c38:	08 30       	R1 = R0;
ffa00c3a:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00c3c:	01 54       	R0 = R1 & R0;
ffa00c3e:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa00c42:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa00c46:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa00c48:	08 09       	CC = R0 <= R1;
ffa00c4a:	07 18       	IF CC JUMP 0xffa00c58 <_printf_hex_byte+0xc4>;
ffa00c4c:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa00c50:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00c52:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa00c56:	06 20       	JUMP.S 0xffa00c62 <_printf_hex_byte+0xce>;
ffa00c58:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa00c5c:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00c5e:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa00c62:	c1 b9       	R1 = [FP -0x10];
ffa00c64:	b0 b9       	R0 = [FP -0x14];
ffa00c66:	01 50       	R0 = R1 + R0;
ffa00c68:	08 30       	R1 = R0;
ffa00c6a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_printf_out> */
ffa00c6e:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_printf_out> */
ffa00c72:	10 91       	R0 = [P2];
ffa00c74:	41 50       	R1 = R1 + R0;
ffa00c76:	11 32       	P2 = R1;
ffa00c78:	78 e5 fc ff 	R0 = W[FP + -0x8] (X);
ffa00c7c:	10 9b       	B[P2] = R0;
ffa00c7e:	b0 b9       	R0 = [FP -0x14];
ffa00c80:	08 64       	R0 += 0x1;		/* (  1) */
ffa00c82:	b0 bb       	[FP -0x14] = R0;
ffa00c84:	b0 b9       	R0 = [FP -0x14];
ffa00c86:	08 0d       	CC = R0 <= 0x1;
ffa00c88:	cd 1b       	IF CC JUMP 0xffa00c22 <_printf_hex_byte+0x8e>;
ffa00c8a:	c1 b9       	R1 = [FP -0x10];
ffa00c8c:	b0 b9       	R0 = [FP -0x14];
ffa00c8e:	01 50       	R0 = R1 + R0;
ffa00c90:	c0 bb       	[FP -0x10] = R0;
ffa00c92:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_printf_out> */
ffa00c96:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_printf_out> */
ffa00c9a:	11 91       	R1 = [P2];
ffa00c9c:	c0 b9       	R0 = [FP -0x10];
ffa00c9e:	41 50       	R1 = R1 + R0;
ffa00ca0:	11 32       	P2 = R1;
ffa00ca2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00ca4:	10 9b       	B[P2] = R0;
ffa00ca6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_printf_out> */
ffa00caa:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_printf_out> */
ffa00cae:	10 91       	R0 = [P2];
ffa00cb0:	ff e3 8c fd 	CALL 0xffa007c8 <_uart_str>;
ffa00cb4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00cb6:	90 bb       	[FP -0x1c] = R0;
ffa00cb8:	03 20       	JUMP.S 0xffa00cbe <_printf_hex_byte+0x12a>;
ffa00cba:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa00cbc:	91 bb       	[FP -0x1c] = R1;
ffa00cbe:	90 b9       	R0 = [FP -0x1c];
ffa00cc0:	01 e8 00 00 	UNLINK;
ffa00cc4:	10 00       	RTS;
	...

ffa00cc8 <_printf_ip>:
ffa00cc8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00ccc:	b8 b0       	[FP + 0x8] = R0;
ffa00cce:	f9 b0       	[FP + 0xc] = R1;
ffa00cd0:	f8 a0       	R0 = [FP + 0xc];
ffa00cd2:	41 43       	R1 = R0.B (Z);
ffa00cd4:	b8 a0       	R0 = [FP + 0x8];
ffa00cd6:	ff e3 e7 fd 	CALL 0xffa008a4 <_printf_int>;
ffa00cda:	f8 a0       	R0 = [FP + 0xc];
ffa00cdc:	40 4e       	R0 >>= 0x8;
ffa00cde:	41 43       	R1 = R0.B (Z);
ffa00ce0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00ce4:	00 e1 70 00 	R0.L = 0x70;		/* (112)	R0=0xff900070(-7339920) */
ffa00ce8:	ff e3 de fd 	CALL 0xffa008a4 <_printf_int>;
ffa00cec:	f8 a0       	R0 = [FP + 0xc];
ffa00cee:	80 4e       	R0 >>= 0x10;
ffa00cf0:	41 43       	R1 = R0.B (Z);
ffa00cf2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900070(-7339920) */
ffa00cf6:	00 e1 70 00 	R0.L = 0x70;		/* (112)	R0=0xff900070(-7339920) */
ffa00cfa:	ff e3 d5 fd 	CALL 0xffa008a4 <_printf_int>;
ffa00cfe:	f8 a0       	R0 = [FP + 0xc];
ffa00d00:	c0 4e       	R0 >>= 0x18;
ffa00d02:	41 43       	R1 = R0.B (Z);
ffa00d04:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900070(-7339920) */
ffa00d08:	00 e1 70 00 	R0.L = 0x70;		/* (112)	R0=0xff900070(-7339920) */
ffa00d0c:	ff e3 cc fd 	CALL 0xffa008a4 <_printf_int>;
ffa00d10:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900070(-7339920) */
ffa00d14:	00 e1 74 00 	R0.L = 0x74;		/* (116)	R0=0xff900074(-7339916) */
ffa00d18:	ff e3 bc fd 	CALL 0xffa00890 <_printf_str>;
ffa00d1c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00d1e:	01 e8 00 00 	UNLINK;
ffa00d22:	10 00       	RTS;

ffa00d24 <_printf_newline>:
ffa00d24:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00d28:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00d2c:	00 e1 78 00 	R0.L = 0x78;		/* (120)	R0=0xff900078(-7339912) */
ffa00d30:	ff e3 4c fd 	CALL 0xffa007c8 <_uart_str>;
ffa00d34:	01 e8 00 00 	UNLINK;
ffa00d38:	10 00       	RTS;
	...

ffa00d3c <_div>:
ffa00d3c:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa00d40:	b8 b0       	[FP + 0x8] = R0;
ffa00d42:	f9 b0       	[FP + 0xc] = R1;
ffa00d44:	b8 a0       	R0 = [FP + 0x8];
ffa00d46:	08 4f       	R0 <<= 0x1;
ffa00d48:	b8 b0       	[FP + 0x8] = R0;
ffa00d4a:	b9 a0       	R1 = [FP + 0x8];
ffa00d4c:	f8 a0       	R0 = [FP + 0xc];
ffa00d4e:	11 30       	R2 = R1;
ffa00d50:	18 30       	R3 = R0;
ffa00d52:	5a 42       	DIVS (R2, R3);
ffa00d54:	0b 30       	R1 = R3;
ffa00d56:	02 30       	R0 = R2;
ffa00d58:	b8 b0       	[FP + 0x8] = R0;
ffa00d5a:	f9 b0       	[FP + 0xc] = R1;
ffa00d5c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00d5e:	f0 bb       	[FP -0x4] = R0;
ffa00d60:	0d 20       	JUMP.S 0xffa00d7a <_div+0x3e>;
ffa00d62:	b9 a0       	R1 = [FP + 0x8];
ffa00d64:	f8 a0       	R0 = [FP + 0xc];
ffa00d66:	11 30       	R2 = R1;
ffa00d68:	18 30       	R3 = R0;
ffa00d6a:	1a 42       	DIVQ (R2, R3);
ffa00d6c:	0b 30       	R1 = R3;
ffa00d6e:	02 30       	R0 = R2;
ffa00d70:	b8 b0       	[FP + 0x8] = R0;
ffa00d72:	f9 b0       	[FP + 0xc] = R1;
ffa00d74:	f0 b9       	R0 = [FP -0x4];
ffa00d76:	08 64       	R0 += 0x1;		/* (  1) */
ffa00d78:	f0 bb       	[FP -0x4] = R0;
ffa00d7a:	f0 b9       	R0 = [FP -0x4];
ffa00d7c:	71 60       	R1 = 0xe (X);		/*		R1=0xe( 14) */
ffa00d7e:	08 09       	CC = R0 <= R1;
ffa00d80:	f1 1b       	IF CC JUMP 0xffa00d62 <_div+0x26>;
ffa00d82:	b8 a0       	R0 = [FP + 0x8];
ffa00d84:	80 42       	R0 = R0.L (X);
ffa00d86:	b8 b0       	[FP + 0x8] = R0;
ffa00d88:	b8 a0       	R0 = [FP + 0x8];
ffa00d8a:	01 e8 00 00 	UNLINK;
ffa00d8e:	10 00       	RTS;

ffa00d90 <_mod>:
ffa00d90:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa00d94:	b8 b0       	[FP + 0x8] = R0;
ffa00d96:	f9 b0       	[FP + 0xc] = R1;
ffa00d98:	f9 a0       	R1 = [FP + 0xc];
ffa00d9a:	b8 a0       	R0 = [FP + 0x8];
ffa00d9c:	ff e3 d0 ff 	CALL 0xffa00d3c <_div>;
ffa00da0:	f0 bb       	[FP -0x4] = R0;
ffa00da2:	f1 b9       	R1 = [FP -0x4];
ffa00da4:	f8 a0       	R0 = [FP + 0xc];
ffa00da6:	c1 40       	R1 *= R0;
ffa00da8:	b8 a0       	R0 = [FP + 0x8];
ffa00daa:	08 52       	R0 = R0 - R1;
ffa00dac:	01 e8 00 00 	UNLINK;
ffa00db0:	10 00       	RTS;
	...

ffa00db4 <_memcpy_>:
ffa00db4:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa00db8:	b8 b0       	[FP + 0x8] = R0;
ffa00dba:	f9 b0       	[FP + 0xc] = R1;
ffa00dbc:	3a b1       	[FP + 0x10] = R2;
ffa00dbe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00dc0:	f0 bb       	[FP -0x4] = R0;
ffa00dc2:	0e 20       	JUMP.S 0xffa00dde <_memcpy_+0x2a>;
ffa00dc4:	ba ac       	P2 = [FP + 0x8];
ffa00dc6:	50 99       	R0 = B[P2] (X);
ffa00dc8:	fa ac       	P2 = [FP + 0xc];
ffa00dca:	10 9b       	B[P2] = R0;
ffa00dcc:	f8 a0       	R0 = [FP + 0xc];
ffa00dce:	08 64       	R0 += 0x1;		/* (  1) */
ffa00dd0:	f8 b0       	[FP + 0xc] = R0;
ffa00dd2:	b8 a0       	R0 = [FP + 0x8];
ffa00dd4:	08 64       	R0 += 0x1;		/* (  1) */
ffa00dd6:	b8 b0       	[FP + 0x8] = R0;
ffa00dd8:	f0 b9       	R0 = [FP -0x4];
ffa00dda:	08 64       	R0 += 0x1;		/* (  1) */
ffa00ddc:	f0 bb       	[FP -0x4] = R0;
ffa00dde:	f1 b9       	R1 = [FP -0x4];
ffa00de0:	38 a1       	R0 = [FP + 0x10];
ffa00de2:	81 08       	CC = R1 < R0;
ffa00de4:	f0 1b       	IF CC JUMP 0xffa00dc4 <_memcpy_+0x10>;
ffa00de6:	01 e8 00 00 	UNLINK;
ffa00dea:	10 00       	RTS;

ffa00dec <_memset_>:
ffa00dec:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa00df0:	b8 b0       	[FP + 0x8] = R0;
ffa00df2:	3a b1       	[FP + 0x10] = R2;
ffa00df4:	01 30       	R0 = R1;
ffa00df6:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa00dfa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00dfc:	f0 bb       	[FP -0x4] = R0;
ffa00dfe:	0b 20       	JUMP.S 0xffa00e14 <_memset_+0x28>;
ffa00e00:	ba ac       	P2 = [FP + 0x8];
ffa00e02:	b8 e5 0c 00 	R0 = B[FP + 0xc] (X);
ffa00e06:	10 9b       	B[P2] = R0;
ffa00e08:	b8 a0       	R0 = [FP + 0x8];
ffa00e0a:	08 64       	R0 += 0x1;		/* (  1) */
ffa00e0c:	b8 b0       	[FP + 0x8] = R0;
ffa00e0e:	f0 b9       	R0 = [FP -0x4];
ffa00e10:	08 64       	R0 += 0x1;		/* (  1) */
ffa00e12:	f0 bb       	[FP -0x4] = R0;
ffa00e14:	f1 b9       	R1 = [FP -0x4];
ffa00e16:	38 a1       	R0 = [FP + 0x10];
ffa00e18:	81 08       	CC = R1 < R0;
ffa00e1a:	f3 1b       	IF CC JUMP 0xffa00e00 <_memset_+0x14>;
ffa00e1c:	01 e8 00 00 	UNLINK;
ffa00e20:	10 00       	RTS;
	...

ffa00e24 <_strlen_>:
ffa00e24:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa00e28:	b8 b0       	[FP + 0x8] = R0;
ffa00e2a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00e2c:	f0 bb       	[FP -0x4] = R0;
ffa00e2e:	10 20       	JUMP.S 0xffa00e4e <_strlen_+0x2a>;
ffa00e30:	f0 b9       	R0 = [FP -0x4];
ffa00e32:	08 30       	R1 = R0;
ffa00e34:	b8 a0       	R0 = [FP + 0x8];
ffa00e36:	41 50       	R1 = R1 + R0;
ffa00e38:	11 32       	P2 = R1;
ffa00e3a:	50 99       	R0 = B[P2] (X);
ffa00e3c:	00 43       	R0 = R0.B (X);
ffa00e3e:	00 0c       	CC = R0 == 0x0;
ffa00e40:	04 10       	IF !CC JUMP 0xffa00e48 <_strlen_+0x24>;
ffa00e42:	f0 b9       	R0 = [FP -0x4];
ffa00e44:	e0 bb       	[FP -0x8] = R0;
ffa00e46:	0b 20       	JUMP.S 0xffa00e5c <_strlen_+0x38>;
ffa00e48:	f0 b9       	R0 = [FP -0x4];
ffa00e4a:	08 64       	R0 += 0x1;		/* (  1) */
ffa00e4c:	f0 bb       	[FP -0x4] = R0;
ffa00e4e:	f0 b9       	R0 = [FP -0x4];
ffa00e50:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa00e54:	08 09       	CC = R0 <= R1;
ffa00e56:	ed 1b       	IF CC JUMP 0xffa00e30 <_strlen_+0xc>;
ffa00e58:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00e5a:	e0 bb       	[FP -0x8] = R0;
ffa00e5c:	e0 b9       	R0 = [FP -0x8];
ffa00e5e:	01 e8 00 00 	UNLINK;
ffa00e62:	10 00       	RTS;

ffa00e64 <_strcpy_>:
ffa00e64:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa00e68:	b8 b0       	[FP + 0x8] = R0;
ffa00e6a:	f9 b0       	[FP + 0xc] = R1;
ffa00e6c:	3a b1       	[FP + 0x10] = R2;
ffa00e6e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00e70:	f0 bb       	[FP -0x4] = R0;
ffa00e72:	0e 20       	JUMP.S 0xffa00e8e <_strcpy_+0x2a>;
ffa00e74:	3a ad       	P2 = [FP + 0x10];
ffa00e76:	50 99       	R0 = B[P2] (X);
ffa00e78:	ba ac       	P2 = [FP + 0x8];
ffa00e7a:	10 9b       	B[P2] = R0;
ffa00e7c:	b8 a0       	R0 = [FP + 0x8];
ffa00e7e:	08 64       	R0 += 0x1;		/* (  1) */
ffa00e80:	b8 b0       	[FP + 0x8] = R0;
ffa00e82:	38 a1       	R0 = [FP + 0x10];
ffa00e84:	08 64       	R0 += 0x1;		/* (  1) */
ffa00e86:	38 b1       	[FP + 0x10] = R0;
ffa00e88:	f0 b9       	R0 = [FP -0x4];
ffa00e8a:	08 64       	R0 += 0x1;		/* (  1) */
ffa00e8c:	f0 bb       	[FP -0x4] = R0;
ffa00e8e:	3a ad       	P2 = [FP + 0x10];
ffa00e90:	50 99       	R0 = B[P2] (X);
ffa00e92:	00 43       	R0 = R0.B (X);
ffa00e94:	00 0c       	CC = R0 == 0x0;
ffa00e96:	08 18       	IF CC JUMP 0xffa00ea6 <_strcpy_+0x42>;
ffa00e98:	f0 b9       	R0 = [FP -0x4];
ffa00e9a:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa00e9e:	08 09       	CC = R0 <= R1;
ffa00ea0:	ea 1b       	IF CC JUMP 0xffa00e74 <_strcpy_+0x10>;
ffa00ea2:	00 00       	NOP;
ffa00ea4:	00 00       	NOP;
ffa00ea6:	fa ac       	P2 = [FP + 0xc];
ffa00ea8:	11 91       	R1 = [P2];
ffa00eaa:	f0 b9       	R0 = [FP -0x4];
ffa00eac:	01 50       	R0 = R1 + R0;
ffa00eae:	fa ac       	P2 = [FP + 0xc];
ffa00eb0:	10 93       	[P2] = R0;
ffa00eb2:	b8 a0       	R0 = [FP + 0x8];
ffa00eb4:	01 e8 00 00 	UNLINK;
ffa00eb8:	10 00       	RTS;
	...

ffa00ebc <_strprepend>:
ffa00ebc:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa00ec0:	b8 b0       	[FP + 0x8] = R0;
ffa00ec2:	f9 b0       	[FP + 0xc] = R1;
ffa00ec4:	3a b1       	[FP + 0x10] = R2;
ffa00ec6:	38 a1       	R0 = [FP + 0x10];
ffa00ec8:	ff e3 ae ff 	CALL 0xffa00e24 <_strlen_>;
ffa00ecc:	d0 bb       	[FP -0xc] = R0;
ffa00ece:	fa ac       	P2 = [FP + 0xc];
ffa00ed0:	10 91       	R0 = [P2];
ffa00ed2:	08 30       	R1 = R0;
ffa00ed4:	b8 a0       	R0 = [FP + 0x8];
ffa00ed6:	08 52       	R0 = R0 - R1;
ffa00ed8:	e0 bb       	[FP -0x8] = R0;
ffa00eda:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00edc:	f0 bb       	[FP -0x4] = R0;
ffa00ede:	0e 20       	JUMP.S 0xffa00efa <_strprepend+0x3e>;
ffa00ee0:	3a ad       	P2 = [FP + 0x10];
ffa00ee2:	50 99       	R0 = B[P2] (X);
ffa00ee4:	ea b9       	P2 = [FP -0x8];
ffa00ee6:	10 9b       	B[P2] = R0;
ffa00ee8:	e0 b9       	R0 = [FP -0x8];
ffa00eea:	08 64       	R0 += 0x1;		/* (  1) */
ffa00eec:	e0 bb       	[FP -0x8] = R0;
ffa00eee:	38 a1       	R0 = [FP + 0x10];
ffa00ef0:	08 64       	R0 += 0x1;		/* (  1) */
ffa00ef2:	38 b1       	[FP + 0x10] = R0;
ffa00ef4:	f0 b9       	R0 = [FP -0x4];
ffa00ef6:	08 64       	R0 += 0x1;		/* (  1) */
ffa00ef8:	f0 bb       	[FP -0x4] = R0;
ffa00efa:	f1 b9       	R1 = [FP -0x4];
ffa00efc:	d0 b9       	R0 = [FP -0xc];
ffa00efe:	81 08       	CC = R1 < R0;
ffa00f00:	f0 1b       	IF CC JUMP 0xffa00ee0 <_strprepend+0x24>;
ffa00f02:	00 00       	NOP;
ffa00f04:	00 00       	NOP;
ffa00f06:	fa ac       	P2 = [FP + 0xc];
ffa00f08:	10 91       	R0 = [P2];
ffa00f0a:	08 30       	R1 = R0;
ffa00f0c:	b8 a0       	R0 = [FP + 0x8];
ffa00f0e:	08 52       	R0 = R0 - R1;
ffa00f10:	01 e8 00 00 	UNLINK;
ffa00f14:	10 00       	RTS;
	...

ffa00f18 <_strcmp>:
ffa00f18:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa00f1c:	b8 b0       	[FP + 0x8] = R0;
ffa00f1e:	f9 b0       	[FP + 0xc] = R1;
ffa00f20:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f22:	f0 bb       	[FP -0x4] = R0;
ffa00f24:	1a 20       	JUMP.S 0xffa00f58 <_strcmp+0x40>;
ffa00f26:	ba ac       	P2 = [FP + 0x8];
ffa00f28:	51 99       	R1 = B[P2] (X);
ffa00f2a:	fa ac       	P2 = [FP + 0xc];
ffa00f2c:	50 99       	R0 = B[P2] (X);
ffa00f2e:	09 43       	R1 = R1.B (X);
ffa00f30:	00 43       	R0 = R0.B (X);
ffa00f32:	01 08       	CC = R1 == R0;
ffa00f34:	18 02       	CC = !CC;
ffa00f36:	00 02       	R0 = CC;
ffa00f38:	08 30       	R1 = R0;
ffa00f3a:	b8 a0       	R0 = [FP + 0x8];
ffa00f3c:	08 64       	R0 += 0x1;		/* (  1) */
ffa00f3e:	b8 b0       	[FP + 0x8] = R0;
ffa00f40:	f8 a0       	R0 = [FP + 0xc];
ffa00f42:	08 64       	R0 += 0x1;		/* (  1) */
ffa00f44:	f8 b0       	[FP + 0xc] = R0;
ffa00f46:	48 43       	R0 = R1.B (Z);
ffa00f48:	00 0c       	CC = R0 == 0x0;
ffa00f4a:	04 18       	IF CC JUMP 0xffa00f52 <_strcmp+0x3a>;
ffa00f4c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f4e:	e0 bb       	[FP -0x8] = R0;
ffa00f50:	17 20       	JUMP.S 0xffa00f7e <_strcmp+0x66>;
ffa00f52:	f0 b9       	R0 = [FP -0x4];
ffa00f54:	08 64       	R0 += 0x1;		/* (  1) */
ffa00f56:	f0 bb       	[FP -0x4] = R0;
ffa00f58:	ba ac       	P2 = [FP + 0x8];
ffa00f5a:	50 99       	R0 = B[P2] (X);
ffa00f5c:	00 43       	R0 = R0.B (X);
ffa00f5e:	00 0c       	CC = R0 == 0x0;
ffa00f60:	0d 18       	IF CC JUMP 0xffa00f7a <_strcmp+0x62>;
ffa00f62:	00 00       	NOP;
ffa00f64:	00 00       	NOP;
ffa00f66:	fa ac       	P2 = [FP + 0xc];
ffa00f68:	50 99       	R0 = B[P2] (X);
ffa00f6a:	00 43       	R0 = R0.B (X);
ffa00f6c:	00 0c       	CC = R0 == 0x0;
ffa00f6e:	06 18       	IF CC JUMP 0xffa00f7a <_strcmp+0x62>;
ffa00f70:	f0 b9       	R0 = [FP -0x4];
ffa00f72:	21 e1 ff 04 	R1 = 0x4ff (X);		/*		R1=0x4ff(1279) */
ffa00f76:	08 09       	CC = R0 <= R1;
ffa00f78:	d7 1b       	IF CC JUMP 0xffa00f26 <_strcmp+0xe>;
ffa00f7a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00f7c:	e0 bb       	[FP -0x8] = R0;
ffa00f7e:	e0 b9       	R0 = [FP -0x8];
ffa00f80:	01 e8 00 00 	UNLINK;
ffa00f84:	10 00       	RTS;
	...

ffa00f88 <_substr>:
ffa00f88:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa00f8c:	b8 b0       	[FP + 0x8] = R0;
ffa00f8e:	f9 b0       	[FP + 0xc] = R1;
ffa00f90:	3a b1       	[FP + 0x10] = R2;
ffa00f92:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f94:	e0 bb       	[FP -0x8] = R0;
ffa00f96:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f98:	f0 bb       	[FP -0x4] = R0;
ffa00f9a:	39 20       	JUMP.S 0xffa0100c <_substr+0x84>;
ffa00f9c:	ba ac       	P2 = [FP + 0x8];
ffa00f9e:	51 99       	R1 = B[P2] (X);
ffa00fa0:	fa ac       	P2 = [FP + 0xc];
ffa00fa2:	50 99       	R0 = B[P2] (X);
ffa00fa4:	09 43       	R1 = R1.B (X);
ffa00fa6:	00 43       	R0 = R0.B (X);
ffa00fa8:	01 08       	CC = R1 == R0;
ffa00faa:	2b 10       	IF !CC JUMP 0xffa01000 <_substr+0x78>;
ffa00fac:	b8 a0       	R0 = [FP + 0x8];
ffa00fae:	08 64       	R0 += 0x1;		/* (  1) */
ffa00fb0:	c0 bb       	[FP -0x10] = R0;
ffa00fb2:	f8 a0       	R0 = [FP + 0xc];
ffa00fb4:	08 64       	R0 += 0x1;		/* (  1) */
ffa00fb6:	d0 bb       	[FP -0xc] = R0;
ffa00fb8:	e0 b9       	R0 = [FP -0x8];
ffa00fba:	08 64       	R0 += 0x1;		/* (  1) */
ffa00fbc:	f0 bb       	[FP -0x4] = R0;
ffa00fbe:	12 20       	JUMP.S 0xffa00fe2 <_substr+0x5a>;
ffa00fc0:	c0 b9       	R0 = [FP -0x10];
ffa00fc2:	08 64       	R0 += 0x1;		/* (  1) */
ffa00fc4:	c0 bb       	[FP -0x10] = R0;
ffa00fc6:	d0 b9       	R0 = [FP -0xc];
ffa00fc8:	08 64       	R0 += 0x1;		/* (  1) */
ffa00fca:	d0 bb       	[FP -0xc] = R0;
ffa00fcc:	f0 b9       	R0 = [FP -0x4];
ffa00fce:	08 64       	R0 += 0x1;		/* (  1) */
ffa00fd0:	f0 bb       	[FP -0x4] = R0;
ffa00fd2:	ca b9       	P2 = [FP -0x10];
ffa00fd4:	50 99       	R0 = B[P2] (X);
ffa00fd6:	00 43       	R0 = R0.B (X);
ffa00fd8:	00 0c       	CC = R0 == 0x0;
ffa00fda:	04 10       	IF !CC JUMP 0xffa00fe2 <_substr+0x5a>;
ffa00fdc:	f0 b9       	R0 = [FP -0x4];
ffa00fde:	b0 bb       	[FP -0x14] = R0;
ffa00fe0:	28 20       	JUMP.S 0xffa01030 <_substr+0xa8>;
ffa00fe2:	ca b9       	P2 = [FP -0x10];
ffa00fe4:	51 99       	R1 = B[P2] (X);
ffa00fe6:	da b9       	P2 = [FP -0xc];
ffa00fe8:	50 99       	R0 = B[P2] (X);
ffa00fea:	09 43       	R1 = R1.B (X);
ffa00fec:	00 43       	R0 = R0.B (X);
ffa00fee:	01 08       	CC = R1 == R0;
ffa00ff0:	08 10       	IF !CC JUMP 0xffa01000 <_substr+0x78>;
ffa00ff2:	00 00       	NOP;
ffa00ff4:	00 00       	NOP;
ffa00ff6:	da b9       	P2 = [FP -0xc];
ffa00ff8:	50 99       	R0 = B[P2] (X);
ffa00ffa:	00 43       	R0 = R0.B (X);
ffa00ffc:	00 0c       	CC = R0 == 0x0;
ffa00ffe:	e1 13       	IF !CC JUMP 0xffa00fc0 <_substr+0x38>;
ffa01000:	f8 a0       	R0 = [FP + 0xc];
ffa01002:	08 64       	R0 += 0x1;		/* (  1) */
ffa01004:	f8 b0       	[FP + 0xc] = R0;
ffa01006:	e0 b9       	R0 = [FP -0x8];
ffa01008:	08 64       	R0 += 0x1;		/* (  1) */
ffa0100a:	e0 bb       	[FP -0x8] = R0;
ffa0100c:	ba ac       	P2 = [FP + 0x8];
ffa0100e:	50 99       	R0 = B[P2] (X);
ffa01010:	00 43       	R0 = R0.B (X);
ffa01012:	00 0c       	CC = R0 == 0x0;
ffa01014:	0c 18       	IF CC JUMP 0xffa0102c <_substr+0xa4>;
ffa01016:	00 00       	NOP;
ffa01018:	00 00       	NOP;
ffa0101a:	fa ac       	P2 = [FP + 0xc];
ffa0101c:	50 99       	R0 = B[P2] (X);
ffa0101e:	00 43       	R0 = R0.B (X);
ffa01020:	00 0c       	CC = R0 == 0x0;
ffa01022:	05 18       	IF CC JUMP 0xffa0102c <_substr+0xa4>;
ffa01024:	e1 b9       	R1 = [FP -0x8];
ffa01026:	38 a1       	R0 = [FP + 0x10];
ffa01028:	81 08       	CC = R1 < R0;
ffa0102a:	b9 1b       	IF CC JUMP 0xffa00f9c <_substr+0x14>;
ffa0102c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0102e:	b0 bb       	[FP -0x14] = R0;
ffa01030:	b0 b9       	R0 = [FP -0x14];
ffa01032:	01 e8 00 00 	UNLINK;
ffa01036:	10 00       	RTS;

ffa01038 <_sprintf_int>:
ffa01038:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0103c:	b8 b0       	[FP + 0x8] = R0;
ffa0103e:	f9 b0       	[FP + 0xc] = R1;
ffa01040:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01042:	c0 bb       	[FP -0x10] = R0;
ffa01044:	f8 a0       	R0 = [FP + 0xc];
ffa01046:	00 0c       	CC = R0 == 0x0;
ffa01048:	0b 10       	IF !CC JUMP 0xffa0105e <_sprintf_int+0x26>;
ffa0104a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_printf_out> */
ffa0104e:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_printf_temp> */
ffa01052:	52 91       	P2 = [P2];
ffa01054:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01056:	10 9b       	B[P2] = R0;
ffa01058:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0105a:	c0 bb       	[FP -0x10] = R0;
ffa0105c:	90 20       	JUMP.S 0xffa0117c <_sprintf_int+0x144>;
ffa0105e:	f8 a0       	R0 = [FP + 0xc];
ffa01060:	00 0d       	CC = R0 <= 0x0;
ffa01062:	3c 18       	IF CC JUMP 0xffa010da <_sprintf_int+0xa2>;
ffa01064:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01066:	c0 bb       	[FP -0x10] = R0;
ffa01068:	31 20       	JUMP.S 0xffa010ca <_sprintf_int+0x92>;
ffa0106a:	f9 a0       	R1 = [FP + 0xc];
ffa0106c:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa01070:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa01074:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa01078:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa0107c:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa01080:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa01084:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01088:	0b c4 00 00 	R0 = (A0 += A1);
ffa0108c:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa01090:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa01094:	02 52       	R0 = R2 - R0;
ffa01096:	f0 bb       	[FP -0x4] = R0;
ffa01098:	f1 b9       	R1 = [FP -0x4];
ffa0109a:	01 30       	R0 = R1;
ffa0109c:	10 4f       	R0 <<= 0x2;
ffa0109e:	08 50       	R0 = R0 + R1;
ffa010a0:	08 4f       	R0 <<= 0x1;
ffa010a2:	08 30       	R1 = R0;
ffa010a4:	f8 a0       	R0 = [FP + 0xc];
ffa010a6:	08 52       	R0 = R0 - R1;
ffa010a8:	d0 bb       	[FP -0xc] = R0;
ffa010aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_printf_temp> */
ffa010ae:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_printf_temp> */
ffa010b2:	11 91       	R1 = [P2];
ffa010b4:	c0 b9       	R0 = [FP -0x10];
ffa010b6:	41 50       	R1 = R1 + R0;
ffa010b8:	11 32       	P2 = R1;
ffa010ba:	d0 b9       	R0 = [FP -0xc];
ffa010bc:	80 65       	R0 += 0x30;		/* ( 48) */
ffa010be:	10 9b       	B[P2] = R0;
ffa010c0:	c0 b9       	R0 = [FP -0x10];
ffa010c2:	08 64       	R0 += 0x1;		/* (  1) */
ffa010c4:	c0 bb       	[FP -0x10] = R0;
ffa010c6:	f0 b9       	R0 = [FP -0x4];
ffa010c8:	f8 b0       	[FP + 0xc] = R0;
ffa010ca:	f8 a0       	R0 = [FP + 0xc];
ffa010cc:	00 0d       	CC = R0 <= 0x0;
ffa010ce:	57 18       	IF CC JUMP 0xffa0117c <_sprintf_int+0x144>;
ffa010d0:	c0 b9       	R0 = [FP -0x10];
ffa010d2:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa010d4:	08 09       	CC = R0 <= R1;
ffa010d6:	ca 1b       	IF CC JUMP 0xffa0106a <_sprintf_int+0x32>;
ffa010d8:	52 20       	JUMP.S 0xffa0117c <_sprintf_int+0x144>;
ffa010da:	f8 a0       	R0 = [FP + 0xc];
ffa010dc:	80 0c       	CC = R0 < 0x0;
ffa010de:	4f 10       	IF !CC JUMP 0xffa0117c <_sprintf_int+0x144>;
ffa010e0:	f8 a0       	R0 = [FP + 0xc];
ffa010e2:	08 30       	R1 = R0;
ffa010e4:	f9 4c       	BITCLR (R1, 0x1f);		/* bit 31 */
ffa010e6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa010e8:	f8 4f       	R0 <<= 0x1f;
ffa010ea:	08 52       	R0 = R0 - R1;
ffa010ec:	f8 b0       	[FP + 0xc] = R0;
ffa010ee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa010f0:	c0 bb       	[FP -0x10] = R0;
ffa010f2:	31 20       	JUMP.S 0xffa01154 <_sprintf_int+0x11c>;
ffa010f4:	f9 a0       	R1 = [FP + 0xc];
ffa010f6:	40 e1 66 66 	R0.H = 0x6666;		/* (26214)	R0=0x66660000(1717960704) */
ffa010fa:	00 e1 67 66 	R0.L = 0x6667;		/* (26215)	R0=0x66666667(1717986919) */
ffa010fe:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa01102:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01106:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa0110a:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa0110e:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01112:	0b c4 00 00 	R0 = (A0 += A1);
ffa01116:	82 c6 f0 05 	R2 = R0 >>> 0x2;
ffa0111a:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa0111e:	02 52       	R0 = R2 - R0;
ffa01120:	f0 bb       	[FP -0x4] = R0;
ffa01122:	f1 b9       	R1 = [FP -0x4];
ffa01124:	01 30       	R0 = R1;
ffa01126:	10 4f       	R0 <<= 0x2;
ffa01128:	08 50       	R0 = R0 + R1;
ffa0112a:	08 4f       	R0 <<= 0x1;
ffa0112c:	08 30       	R1 = R0;
ffa0112e:	f8 a0       	R0 = [FP + 0xc];
ffa01130:	08 52       	R0 = R0 - R1;
ffa01132:	d0 bb       	[FP -0xc] = R0;
ffa01134:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_printf_temp> */
ffa01138:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_printf_temp> */
ffa0113c:	11 91       	R1 = [P2];
ffa0113e:	c0 b9       	R0 = [FP -0x10];
ffa01140:	41 50       	R1 = R1 + R0;
ffa01142:	11 32       	P2 = R1;
ffa01144:	d0 b9       	R0 = [FP -0xc];
ffa01146:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01148:	10 9b       	B[P2] = R0;
ffa0114a:	c0 b9       	R0 = [FP -0x10];
ffa0114c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0114e:	c0 bb       	[FP -0x10] = R0;
ffa01150:	f0 b9       	R0 = [FP -0x4];
ffa01152:	f8 b0       	[FP + 0xc] = R0;
ffa01154:	f8 a0       	R0 = [FP + 0xc];
ffa01156:	00 0d       	CC = R0 <= 0x0;
ffa01158:	05 18       	IF CC JUMP 0xffa01162 <_sprintf_int+0x12a>;
ffa0115a:	c0 b9       	R0 = [FP -0x10];
ffa0115c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0115e:	08 09       	CC = R0 <= R1;
ffa01160:	ca 1b       	IF CC JUMP 0xffa010f4 <_sprintf_int+0xbc>;
ffa01162:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_printf_temp> */
ffa01166:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_printf_temp> */
ffa0116a:	11 91       	R1 = [P2];
ffa0116c:	c0 b9       	R0 = [FP -0x10];
ffa0116e:	41 50       	R1 = R1 + R0;
ffa01170:	11 32       	P2 = R1;
ffa01172:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa01174:	10 9b       	B[P2] = R0;
ffa01176:	c0 b9       	R0 = [FP -0x10];
ffa01178:	08 64       	R0 += 0x1;		/* (  1) */
ffa0117a:	c0 bb       	[FP -0x10] = R0;
ffa0117c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0117e:	e0 bb       	[FP -0x8] = R0;
ffa01180:	16 20       	JUMP.S 0xffa011ac <_sprintf_int+0x174>;
ffa01182:	e0 b9       	R0 = [FP -0x8];
ffa01184:	08 30       	R1 = R0;
ffa01186:	b8 a0       	R0 = [FP + 0x8];
ffa01188:	41 50       	R1 = R1 + R0;
ffa0118a:	09 32       	P1 = R1;
ffa0118c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_printf_temp> */
ffa01190:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_printf_temp> */
ffa01194:	12 91       	R2 = [P2];
ffa01196:	c1 b9       	R1 = [FP -0x10];
ffa01198:	e0 b9       	R0 = [FP -0x8];
ffa0119a:	01 52       	R0 = R1 - R0;
ffa0119c:	02 50       	R0 = R2 + R0;
ffa0119e:	10 32       	P2 = R0;
ffa011a0:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa011a2:	50 99       	R0 = B[P2] (X);
ffa011a4:	08 9b       	B[P1] = R0;
ffa011a6:	e0 b9       	R0 = [FP -0x8];
ffa011a8:	08 64       	R0 += 0x1;		/* (  1) */
ffa011aa:	e0 bb       	[FP -0x8] = R0;
ffa011ac:	e1 b9       	R1 = [FP -0x8];
ffa011ae:	c0 b9       	R0 = [FP -0x10];
ffa011b0:	81 08       	CC = R1 < R0;
ffa011b2:	e8 1b       	IF CC JUMP 0xffa01182 <_sprintf_int+0x14a>;
ffa011b4:	c0 b9       	R0 = [FP -0x10];
ffa011b6:	01 e8 00 00 	UNLINK;
ffa011ba:	10 00       	RTS;

ffa011bc <_sprintf_hex>:
ffa011bc:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa011c0:	b8 b0       	[FP + 0x8] = R0;
ffa011c2:	f9 b0       	[FP + 0xc] = R1;
ffa011c4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa011c6:	d0 bb       	[FP -0xc] = R0;
ffa011c8:	d0 b9       	R0 = [FP -0xc];
ffa011ca:	08 30       	R1 = R0;
ffa011cc:	b8 a0       	R0 = [FP + 0x8];
ffa011ce:	41 50       	R1 = R1 + R0;
ffa011d0:	11 32       	P2 = R1;
ffa011d2:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa011d4:	10 9b       	B[P2] = R0;
ffa011d6:	d0 b9       	R0 = [FP -0xc];
ffa011d8:	08 64       	R0 += 0x1;		/* (  1) */
ffa011da:	d0 bb       	[FP -0xc] = R0;
ffa011dc:	d0 b9       	R0 = [FP -0xc];
ffa011de:	08 30       	R1 = R0;
ffa011e0:	b8 a0       	R0 = [FP + 0x8];
ffa011e2:	41 50       	R1 = R1 + R0;
ffa011e4:	11 32       	P2 = R1;
ffa011e6:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa011ea:	10 9b       	B[P2] = R0;
ffa011ec:	d0 b9       	R0 = [FP -0xc];
ffa011ee:	08 64       	R0 += 0x1;		/* (  1) */
ffa011f0:	d0 bb       	[FP -0xc] = R0;
ffa011f2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa011f4:	c0 bb       	[FP -0x10] = R0;
ffa011f6:	2c 20       	JUMP.S 0xffa0124e <_sprintf_hex+0x92>;
ffa011f8:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa011fa:	c0 b9       	R0 = [FP -0x10];
ffa011fc:	01 52       	R0 = R1 - R0;
ffa011fe:	82 c6 10 82 	R1 = R0 << 0x2;
ffa01202:	f8 a0       	R0 = [FP + 0xc];
ffa01204:	08 40       	R0 >>>= R1;
ffa01206:	e0 bb       	[FP -0x8] = R0;
ffa01208:	e0 b9       	R0 = [FP -0x8];
ffa0120a:	08 30       	R1 = R0;
ffa0120c:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa0120e:	01 54       	R0 = R1 & R0;
ffa01210:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa01214:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa01218:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa0121a:	08 09       	CC = R0 <= R1;
ffa0121c:	07 18       	IF CC JUMP 0xffa0122a <_sprintf_hex+0x6e>;
ffa0121e:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa01222:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01224:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa01228:	06 20       	JUMP.S 0xffa01234 <_sprintf_hex+0x78>;
ffa0122a:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa0122e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01230:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa01234:	d1 b9       	R1 = [FP -0xc];
ffa01236:	c0 b9       	R0 = [FP -0x10];
ffa01238:	01 50       	R0 = R1 + R0;
ffa0123a:	08 30       	R1 = R0;
ffa0123c:	b8 a0       	R0 = [FP + 0x8];
ffa0123e:	41 50       	R1 = R1 + R0;
ffa01240:	11 32       	P2 = R1;
ffa01242:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa01246:	10 9b       	B[P2] = R0;
ffa01248:	c0 b9       	R0 = [FP -0x10];
ffa0124a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0124c:	c0 bb       	[FP -0x10] = R0;
ffa0124e:	c0 b9       	R0 = [FP -0x10];
ffa01250:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa01252:	08 09       	CC = R0 <= R1;
ffa01254:	d2 1b       	IF CC JUMP 0xffa011f8 <_sprintf_hex+0x3c>;
ffa01256:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01258:	01 e8 00 00 	UNLINK;
ffa0125c:	10 00       	RTS;
	...

ffa01260 <_strprintf_int>:
ffa01260:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01264:	b8 b0       	[FP + 0x8] = R0;
ffa01266:	f9 b0       	[FP + 0xc] = R1;
ffa01268:	3a b1       	[FP + 0x10] = R2;
ffa0126a:	39 a1       	R1 = [FP + 0x10];
ffa0126c:	b8 a0       	R0 = [FP + 0x8];
ffa0126e:	ff e3 e5 fe 	CALL 0xffa01038 <_sprintf_int>;
ffa01272:	f0 bb       	[FP -0x4] = R0;
ffa01274:	fa ac       	P2 = [FP + 0xc];
ffa01276:	11 91       	R1 = [P2];
ffa01278:	f0 b9       	R0 = [FP -0x4];
ffa0127a:	01 50       	R0 = R1 + R0;
ffa0127c:	fa ac       	P2 = [FP + 0xc];
ffa0127e:	10 93       	[P2] = R0;
ffa01280:	f0 b9       	R0 = [FP -0x4];
ffa01282:	08 30       	R1 = R0;
ffa01284:	b8 a0       	R0 = [FP + 0x8];
ffa01286:	08 50       	R0 = R0 + R1;
ffa01288:	b8 b0       	[FP + 0x8] = R0;
ffa0128a:	b8 a0       	R0 = [FP + 0x8];
ffa0128c:	01 e8 00 00 	UNLINK;
ffa01290:	10 00       	RTS;
	...

ffa01294 <_strprintf_hex>:
ffa01294:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01298:	b8 b0       	[FP + 0x8] = R0;
ffa0129a:	f9 b0       	[FP + 0xc] = R1;
ffa0129c:	3a b1       	[FP + 0x10] = R2;
ffa0129e:	39 a1       	R1 = [FP + 0x10];
ffa012a0:	b8 a0       	R0 = [FP + 0x8];
ffa012a2:	ff e3 8d ff 	CALL 0xffa011bc <_sprintf_hex>;
ffa012a6:	f0 bb       	[FP -0x4] = R0;
ffa012a8:	fa ac       	P2 = [FP + 0xc];
ffa012aa:	11 91       	R1 = [P2];
ffa012ac:	f0 b9       	R0 = [FP -0x4];
ffa012ae:	01 50       	R0 = R1 + R0;
ffa012b0:	fa ac       	P2 = [FP + 0xc];
ffa012b2:	10 93       	[P2] = R0;
ffa012b4:	f0 b9       	R0 = [FP -0x4];
ffa012b6:	08 30       	R1 = R0;
ffa012b8:	b8 a0       	R0 = [FP + 0x8];
ffa012ba:	08 50       	R0 = R0 + R1;
ffa012bc:	b8 b0       	[FP + 0x8] = R0;
ffa012be:	b8 a0       	R0 = [FP + 0x8];
ffa012c0:	01 e8 00 00 	UNLINK;
ffa012c4:	10 00       	RTS;
	...

ffa012c8 <_atoi>:
ffa012c8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa012cc:	b8 b0       	[FP + 0x8] = R0;
ffa012ce:	f9 b0       	[FP + 0xc] = R1;
ffa012d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa012d2:	d0 bb       	[FP -0xc] = R0;
ffa012d4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa012d6:	e0 bb       	[FP -0x8] = R0;
ffa012d8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa012da:	f0 bb       	[FP -0x4] = R0;
ffa012dc:	ba ac       	P2 = [FP + 0x8];
ffa012de:	50 99       	R0 = B[P2] (X);
ffa012e0:	00 43       	R0 = R0.B (X);
ffa012e2:	69 61       	R1 = 0x2d (X);		/*		R1=0x2d( 45) */
ffa012e4:	08 08       	CC = R0 == R1;
ffa012e6:	2c 10       	IF !CC JUMP 0xffa0133e <_atoi+0x76>;
ffa012e8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa012ea:	f0 bb       	[FP -0x4] = R0;
ffa012ec:	b8 a0       	R0 = [FP + 0x8];
ffa012ee:	08 64       	R0 += 0x1;		/* (  1) */
ffa012f0:	b8 b0       	[FP + 0x8] = R0;
ffa012f2:	d0 b9       	R0 = [FP -0xc];
ffa012f4:	08 64       	R0 += 0x1;		/* (  1) */
ffa012f6:	d0 bb       	[FP -0xc] = R0;
ffa012f8:	23 20       	JUMP.S 0xffa0133e <_atoi+0x76>;
ffa012fa:	ba ac       	P2 = [FP + 0x8];
ffa012fc:	50 99       	R0 = B[P2] (X);
ffa012fe:	01 43       	R1 = R0.B (X);
ffa01300:	e0 b9       	R0 = [FP -0x8];
ffa01302:	01 50       	R0 = R1 + R0;
ffa01304:	80 66       	R0 += -0x30;		/* (-48) */
ffa01306:	e0 bb       	[FP -0x8] = R0;
ffa01308:	b8 a0       	R0 = [FP + 0x8];
ffa0130a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0130c:	b8 b0       	[FP + 0x8] = R0;
ffa0130e:	d0 b9       	R0 = [FP -0xc];
ffa01310:	08 64       	R0 += 0x1;		/* (  1) */
ffa01312:	d0 bb       	[FP -0xc] = R0;
ffa01314:	ba ac       	P2 = [FP + 0x8];
ffa01316:	50 99       	R0 = B[P2] (X);
ffa01318:	00 43       	R0 = R0.B (X);
ffa0131a:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa0131c:	08 09       	CC = R0 <= R1;
ffa0131e:	10 18       	IF CC JUMP 0xffa0133e <_atoi+0x76>;
ffa01320:	00 00       	NOP;
ffa01322:	00 00       	NOP;
ffa01324:	ba ac       	P2 = [FP + 0x8];
ffa01326:	50 99       	R0 = B[P2] (X);
ffa01328:	00 43       	R0 = R0.B (X);
ffa0132a:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa0132c:	08 09       	CC = R0 <= R1;
ffa0132e:	08 10       	IF !CC JUMP 0xffa0133e <_atoi+0x76>;
ffa01330:	e0 b9       	R0 = [FP -0x8];
ffa01332:	08 30       	R1 = R0;
ffa01334:	11 4f       	R1 <<= 0x2;
ffa01336:	41 50       	R1 = R1 + R0;
ffa01338:	82 c6 09 80 	R0 = R1 << 0x1;
ffa0133c:	e0 bb       	[FP -0x8] = R0;
ffa0133e:	ba ac       	P2 = [FP + 0x8];
ffa01340:	50 99       	R0 = B[P2] (X);
ffa01342:	00 43       	R0 = R0.B (X);
ffa01344:	79 61       	R1 = 0x2f (X);		/*		R1=0x2f( 47) */
ffa01346:	08 09       	CC = R0 <= R1;
ffa01348:	0d 18       	IF CC JUMP 0xffa01362 <_atoi+0x9a>;
ffa0134a:	00 00       	NOP;
ffa0134c:	00 00       	NOP;
ffa0134e:	ba ac       	P2 = [FP + 0x8];
ffa01350:	50 99       	R0 = B[P2] (X);
ffa01352:	00 43       	R0 = R0.B (X);
ffa01354:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
ffa01356:	08 09       	CC = R0 <= R1;
ffa01358:	05 10       	IF !CC JUMP 0xffa01362 <_atoi+0x9a>;
ffa0135a:	d1 b9       	R1 = [FP -0xc];
ffa0135c:	f8 a0       	R0 = [FP + 0xc];
ffa0135e:	81 08       	CC = R1 < R0;
ffa01360:	cd 1b       	IF CC JUMP 0xffa012fa <_atoi+0x32>;
ffa01362:	e1 b9       	R1 = [FP -0x8];
ffa01364:	f0 b9       	R0 = [FP -0x4];
ffa01366:	c8 40       	R0 *= R1;
ffa01368:	01 e8 00 00 	UNLINK;
ffa0136c:	10 00       	RTS;
	...

ffa01370 <_udelay>:
ffa01370:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa01374:	b8 b0       	[FP + 0x8] = R0;
ffa01376:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01378:	e0 bb       	[FP -0x8] = R0;
ffa0137a:	10 20       	JUMP.S 0xffa0139a <_udelay+0x2a>;
ffa0137c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0137e:	f0 bb       	[FP -0x4] = R0;
ffa01380:	05 20       	JUMP.S 0xffa0138a <_udelay+0x1a>;
ffa01382:	00 00       	NOP;
ffa01384:	f0 b9       	R0 = [FP -0x4];
ffa01386:	08 64       	R0 += 0x1;		/* (  1) */
ffa01388:	f0 bb       	[FP -0x4] = R0;
ffa0138a:	f0 b9       	R0 = [FP -0x4];
ffa0138c:	21 e1 9f 00 	R1 = 0x9f (X);		/*		R1=0x9f(159) */
ffa01390:	08 09       	CC = R0 <= R1;
ffa01392:	f8 1b       	IF CC JUMP 0xffa01382 <_udelay+0x12>;
ffa01394:	e0 b9       	R0 = [FP -0x8];
ffa01396:	08 64       	R0 += 0x1;		/* (  1) */
ffa01398:	e0 bb       	[FP -0x8] = R0;
ffa0139a:	e1 b9       	R1 = [FP -0x8];
ffa0139c:	b8 a0       	R0 = [FP + 0x8];
ffa0139e:	81 08       	CC = R1 < R0;
ffa013a0:	ee 1b       	IF CC JUMP 0xffa0137c <_udelay+0xc>;
ffa013a2:	01 e8 00 00 	UNLINK;
ffa013a6:	10 00       	RTS;

ffa013a8 <_spi_delay>:
ffa013a8:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa013ac:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa013ae:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa013b2:	08 20       	JUMP.S 0xffa013c2 <_spi_delay+0x1a>;
ffa013b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c3c(-4191172) */
ffa013b8:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa013bc:	50 95       	R0 = W[P2] (X);
ffa013be:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa013c2:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa013c6:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa013c8:	08 54       	R0 = R0 & R1;
ffa013ca:	00 0c       	CC = R0 == 0x0;
ffa013cc:	f4 13       	IF !CC JUMP 0xffa013b4 <_spi_delay+0xc>;
ffa013ce:	08 20       	JUMP.S 0xffa013de <_spi_delay+0x36>;
ffa013d0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa013d4:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa013d8:	50 95       	R0 = W[P2] (X);
ffa013da:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa013de:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa013e2:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa013e4:	00 02       	R0 = CC;
ffa013e6:	00 0c       	CC = R0 == 0x0;
ffa013e8:	f4 1b       	IF CC JUMP 0xffa013d0 <_spi_delay+0x28>;
ffa013ea:	01 e8 00 00 	UNLINK;
ffa013ee:	10 00       	RTS;

ffa013f0 <_spi_write_register>:
ffa013f0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa013f4:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa013f8:	01 30       	R0 = R1;
ffa013fa:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa013fe:	b8 e5 08 00 	R0 = B[FP + 0x8] (X);
ffa01402:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa01404:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa01408:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0140c:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01410:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01414:	10 97       	W[P2] = R0;
ffa01416:	24 00       	SSYNC;
ffa01418:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0141c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa01420:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa01424:	10 97       	W[P2] = R0;
ffa01426:	ff e3 c1 ff 	CALL 0xffa013a8 <_spi_delay>;
ffa0142a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0142e:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa01432:	50 95       	R0 = W[P2] (X);
ffa01434:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa01438:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0143c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa01440:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa01444:	10 97       	W[P2] = R0;
ffa01446:	ff e3 b1 ff 	CALL 0xffa013a8 <_spi_delay>;
ffa0144a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0144e:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01452:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01456:	10 97       	W[P2] = R0;
ffa01458:	24 00       	SSYNC;
ffa0145a:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0145e:	01 e8 00 00 	UNLINK;
ffa01462:	10 00       	RTS;

ffa01464 <_spi_write_register_ver>:
ffa01464:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01468:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0146c:	01 30       	R0 = R1;
ffa0146e:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa01472:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa01476:	b9 e4 0c 00 	R1 = B[FP + 0xc] (Z);
ffa0147a:	ff e3 bb ff 	CALL 0xffa013f0 <_spi_write_register>;
ffa0147e:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa01482:	00 e3 39 00 	CALL 0xffa014f4 <_spi_read_register>;
ffa01486:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa0148a:	b9 e4 ff ff 	R1 = B[FP + -0x1] (Z);
ffa0148e:	b8 e4 0c 00 	R0 = B[FP + 0xc] (Z);
ffa01492:	01 08       	CC = R1 == R0;
ffa01494:	2b 18       	IF CC JUMP 0xffa014ea <_spi_write_register_ver+0x86>;
ffa01496:	b9 e4 08 00 	R1 = B[FP + 0x8] (Z);
ffa0149a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900200(-7339520) */
ffa0149e:	00 e1 7c 00 	R0.L = 0x7c;		/* (124)	R0=0xff90007c(-7339908) */
ffa014a2:	ff e3 01 fa 	CALL 0xffa008a4 <_printf_int>;
ffa014a6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa014aa:	00 e1 90 00 	R0.L = 0x90;		/* (144)	R0=0xff900090(-7339888) */
ffa014ae:	ff e3 8d f9 	CALL 0xffa007c8 <_uart_str>;
ffa014b2:	b9 e4 0c 00 	R1 = B[FP + 0xc] (Z);
ffa014b6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900090(-7339888) */
ffa014ba:	00 e1 94 00 	R0.L = 0x94;		/* (148)	R0=0xff900094(-7339884) */
ffa014be:	ff e3 6b fb 	CALL 0xffa00b94 <_printf_hex_byte>;
ffa014c2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900094(-7339884) */
ffa014c6:	00 e1 90 00 	R0.L = 0x90;		/* (144)	R0=0xff900090(-7339888) */
ffa014ca:	ff e3 7f f9 	CALL 0xffa007c8 <_uart_str>;
ffa014ce:	b9 e4 ff ff 	R1 = B[FP + -0x1] (Z);
ffa014d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900090(-7339888) */
ffa014d6:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa014da:	ff e3 5d fb 	CALL 0xffa00b94 <_printf_hex_byte>;
ffa014de:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa014e2:	00 e1 ac 00 	R0.L = 0xac;		/* (172)	R0=0xff9000ac(-7339860) */
ffa014e6:	ff e3 71 f9 	CALL 0xffa007c8 <_uart_str>;
ffa014ea:	b8 e4 ff ff 	R0 = B[FP + -0x1] (Z);
ffa014ee:	01 e8 00 00 	UNLINK;
ffa014f2:	10 00       	RTS;

ffa014f4 <_spi_read_register>:
ffa014f4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa014f8:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa014fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01500:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01504:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01508:	10 97       	W[P2] = R0;
ffa0150a:	24 00       	SSYNC;
ffa0150c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01510:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa01514:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa01518:	10 97       	W[P2] = R0;
ffa0151a:	ff e3 47 ff 	CALL 0xffa013a8 <_spi_delay>;
ffa0151e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa01522:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa01526:	50 95       	R0 = W[P2] (X);
ffa01528:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0152c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa01530:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa01534:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01536:	10 97       	W[P2] = R0;
ffa01538:	ff e3 38 ff 	CALL 0xffa013a8 <_spi_delay>;
ffa0153c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa01540:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa01544:	50 95       	R0 = W[P2] (X);
ffa01546:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0154a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0154e:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01552:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01556:	10 97       	W[P2] = R0;
ffa01558:	24 00       	SSYNC;
ffa0155a:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0155e:	01 e8 00 00 	UNLINK;
ffa01562:	10 00       	RTS;

ffa01564 <_spi_read_register_status>:
ffa01564:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01568:	f9 b0       	[FP + 0xc] = R1;
ffa0156a:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0156e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01572:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01576:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0157a:	10 97       	W[P2] = R0;
ffa0157c:	24 00       	SSYNC;
ffa0157e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01582:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa01586:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa0158a:	10 97       	W[P2] = R0;
ffa0158c:	ff e3 0e ff 	CALL 0xffa013a8 <_spi_delay>;
ffa01590:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa01594:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa01598:	50 95       	R0 = W[P2] (X);
ffa0159a:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa0159e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa015a2:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa015a6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa015a8:	10 97       	W[P2] = R0;
ffa015aa:	ff e3 ff fe 	CALL 0xffa013a8 <_spi_delay>;
ffa015ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa015b2:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa015b6:	50 95       	R0 = W[P2] (X);
ffa015b8:	fa ac       	P2 = [FP + 0xc];
ffa015ba:	10 9b       	B[P2] = R0;
ffa015bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa015c0:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa015c4:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa015c8:	10 97       	W[P2] = R0;
ffa015ca:	24 00       	SSYNC;
ffa015cc:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa015d0:	01 e8 00 00 	UNLINK;
ffa015d4:	10 00       	RTS;
	...

ffa015d8 <_spi_write_byte>:
ffa015d8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa015dc:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa015e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa015e4:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa015e8:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa015ec:	10 97       	W[P2] = R0;
ffa015ee:	24 00       	SSYNC;
ffa015f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa015f4:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa015f8:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa015fc:	10 97       	W[P2] = R0;
ffa015fe:	ff e3 d5 fe 	CALL 0xffa013a8 <_spi_delay>;
ffa01602:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa01606:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa0160a:	50 95       	R0 = W[P2] (X);
ffa0160c:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa01610:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa01614:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01618:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0161c:	10 97       	W[P2] = R0;
ffa0161e:	24 00       	SSYNC;
ffa01620:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa01624:	01 e8 00 00 	UNLINK;
ffa01628:	10 00       	RTS;
	...

ffa0162c <_spi_write_packet>:
ffa0162c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01630:	b8 b0       	[FP + 0x8] = R0;
ffa01632:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01636:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0163a:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0163e:	10 97       	W[P2] = R0;
ffa01640:	24 00       	SSYNC;
ffa01642:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01646:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa0164a:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0164e:	10 97       	W[P2] = R0;
ffa01650:	ff e3 ac fe 	CALL 0xffa013a8 <_spi_delay>;
ffa01654:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa01658:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0165c:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa01660:	10 97       	W[P2] = R0;
ffa01662:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa01666:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0166a:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0166c:	10 97       	W[P2] = R0;
ffa0166e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa01672:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa01676:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01678:	10 97       	W[P2] = R0;
ffa0167a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa0167e:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa01682:	b8 a0       	R0 = [FP + 0x8];
ffa01684:	10 93       	[P2] = R0;
ffa01686:	24 00       	SSYNC;
ffa01688:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa0168c:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa01690:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa01694:	10 97       	W[P2] = R0;
ffa01696:	01 20       	JUMP.S 0xffa01698 <_spi_write_packet+0x6c>;
	...
ffa016a0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa016a4:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa016a8:	50 95       	R0 = W[P2] (X);
ffa016aa:	c0 42       	R0 = R0.L (Z);
ffa016ac:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa016ae:	00 02       	R0 = CC;
ffa016b0:	00 0c       	CC = R0 == 0x0;
ffa016b2:	f3 1b       	IF CC JUMP 0xffa01698 <_spi_write_packet+0x6c>;
ffa016b4:	00 00       	NOP;
ffa016b6:	00 00       	NOP;
ffa016b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa016bc:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa016c0:	50 95       	R0 = W[P2] (X);
ffa016c2:	c1 42       	R1 = R0.L (Z);
ffa016c4:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa016c6:	01 54       	R0 = R1 & R0;
ffa016c8:	00 0c       	CC = R0 == 0x0;
ffa016ca:	e7 13       	IF !CC JUMP 0xffa01698 <_spi_write_packet+0x6c>;
ffa016cc:	00 00       	NOP;
ffa016ce:	00 00       	NOP;
ffa016d0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa016d4:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa016d8:	50 95       	R0 = W[P2] (X);
ffa016da:	c1 42       	R1 = R0.L (Z);
ffa016dc:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa016de:	01 54       	R0 = R1 & R0;
ffa016e0:	00 0c       	CC = R0 == 0x0;
ffa016e2:	db 13       	IF !CC JUMP 0xffa01698 <_spi_write_packet+0x6c>;
ffa016e4:	ff e3 62 fe 	CALL 0xffa013a8 <_spi_delay>;
ffa016e8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa016ec:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa016f0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa016f2:	10 97       	W[P2] = R0;
ffa016f4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa016f8:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa016fc:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa01700:	10 97       	W[P2] = R0;
ffa01702:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa01706:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0170a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0170c:	10 97       	W[P2] = R0;
ffa0170e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa01712:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01716:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0171a:	10 97       	W[P2] = R0;
ffa0171c:	24 00       	SSYNC;
ffa0171e:	01 e8 00 00 	UNLINK;
ffa01722:	10 00       	RTS;

ffa01724 <_spi_write_packet_noDMA>:
ffa01724:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa01728:	b8 b0       	[FP + 0x8] = R0;
ffa0172a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0172e:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01732:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01736:	10 97       	W[P2] = R0;
ffa01738:	24 00       	SSYNC;
ffa0173a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0173e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa01742:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa01746:	10 97       	W[P2] = R0;
ffa01748:	ff e3 30 fe 	CALL 0xffa013a8 <_spi_delay>;
ffa0174c:	b8 a0       	R0 = [FP + 0x8];
ffa0174e:	f0 bb       	[FP -0x4] = R0;
ffa01750:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01752:	e0 bb       	[FP -0x8] = R0;
ffa01754:	11 20       	JUMP.S 0xffa01776 <_spi_write_packet_noDMA+0x52>;
ffa01756:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0050c(-4193012) */
ffa0175a:	09 e1 0c 05 	P1.L = 0x50c;		/* (1292)	P1=0xffc0050c(-4193012) */
ffa0175e:	fa b9       	P2 = [FP -0x4];
ffa01760:	50 99       	R0 = B[P2] (X);
ffa01762:	00 43       	R0 = R0.B (X);
ffa01764:	08 97       	W[P1] = R0;
ffa01766:	f0 b9       	R0 = [FP -0x4];
ffa01768:	08 64       	R0 += 0x1;		/* (  1) */
ffa0176a:	f0 bb       	[FP -0x4] = R0;
ffa0176c:	ff e3 1e fe 	CALL 0xffa013a8 <_spi_delay>;
ffa01770:	e0 b9       	R0 = [FP -0x8];
ffa01772:	08 64       	R0 += 0x1;		/* (  1) */
ffa01774:	e0 bb       	[FP -0x8] = R0;
ffa01776:	e0 b9       	R0 = [FP -0x8];
ffa01778:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0177a:	08 09       	CC = R0 <= R1;
ffa0177c:	ed 1b       	IF CC JUMP 0xffa01756 <_spi_write_packet_noDMA+0x32>;
ffa0177e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa01782:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01786:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0178a:	10 97       	W[P2] = R0;
ffa0178c:	24 00       	SSYNC;
ffa0178e:	01 e8 00 00 	UNLINK;
ffa01792:	10 00       	RTS;

ffa01794 <_spi_read_packet>:
ffa01794:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa01798:	b8 b0       	[FP + 0x8] = R0;
ffa0179a:	b8 a0       	R0 = [FP + 0x8];
ffa0179c:	f0 bb       	[FP -0x4] = R0;
ffa0179e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa017a0:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa017a4:	ff e3 26 fe 	CALL 0xffa013f0 <_spi_write_register>;
ffa017a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa017ac:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa017b0:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa017b4:	10 97       	W[P2] = R0;
ffa017b6:	24 00       	SSYNC;
ffa017b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa017bc:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa017c0:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa017c4:	10 97       	W[P2] = R0;
ffa017c6:	ff e3 f1 fd 	CALL 0xffa013a8 <_spi_delay>;
ffa017ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017cc:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa017d0:	18 20       	JUMP.S 0xffa01800 <_spi_read_packet+0x6c>;
ffa017d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa017d6:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa017da:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017dc:	10 97       	W[P2] = R0;
ffa017de:	ff e3 e5 fd 	CALL 0xffa013a8 <_spi_delay>;
ffa017e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa017e6:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa017ea:	50 95       	R0 = W[P2] (X);
ffa017ec:	fa b9       	P2 = [FP -0x4];
ffa017ee:	10 9b       	B[P2] = R0;
ffa017f0:	f0 b9       	R0 = [FP -0x4];
ffa017f2:	08 64       	R0 += 0x1;		/* (  1) */
ffa017f4:	f0 bb       	[FP -0x4] = R0;
ffa017f6:	b8 e5 fb ff 	R0 = B[FP + -0x5] (X);
ffa017fa:	08 64       	R0 += 0x1;		/* (  1) */
ffa017fc:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa01800:	b8 e4 fb ff 	R0 = B[FP + -0x5] (Z);
ffa01804:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa01806:	08 0a       	CC = R0 <= R1 (IU);
ffa01808:	e5 1b       	IF CC JUMP 0xffa017d2 <_spi_read_packet+0x3e>;
ffa0180a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0180e:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01812:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01816:	10 97       	W[P2] = R0;
ffa01818:	24 00       	SSYNC;
ffa0181a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0181c:	01 e8 00 00 	UNLINK;
ffa01820:	10 00       	RTS;
	...

ffa01824 <_spi_read_packet_nocheck>:
ffa01824:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01828:	b8 b0       	[FP + 0x8] = R0;
ffa0182a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0182e:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01832:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01836:	10 97       	W[P2] = R0;
ffa01838:	24 00       	SSYNC;
ffa0183a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0183e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa01842:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa01846:	10 97       	W[P2] = R0;
ffa01848:	ff e3 b0 fd 	CALL 0xffa013a8 <_spi_delay>;
ffa0184c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa01850:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa01854:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01856:	10 97       	W[P2] = R0;
ffa01858:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0185c:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa01860:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01862:	10 97       	W[P2] = R0;
ffa01864:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa01868:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xffc00d54(-4190892) */
ffa0186c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0186e:	10 97       	W[P2] = R0;
ffa01870:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d54(-4190892) */
ffa01874:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xffc00d44(-4190908) */
ffa01878:	b8 a0       	R0 = [FP + 0x8];
ffa0187a:	10 93       	[P2] = R0;
ffa0187c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d44(-4190908) */
ffa01880:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa01884:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa01888:	10 97       	W[P2] = R0;
ffa0188a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0188e:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa01892:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa01896:	10 97       	W[P2] = R0;
	...
ffa018a0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa018a4:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa018a8:	50 95       	R0 = W[P2] (X);
ffa018aa:	c0 42       	R0 = R0.L (Z);
ffa018ac:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa018ae:	00 02       	R0 = CC;
ffa018b0:	00 0c       	CC = R0 == 0x0;
ffa018b2:	f3 1b       	IF CC JUMP 0xffa01898 <_spi_read_packet_nocheck+0x74>;
ffa018b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa018b8:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa018bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018be:	10 97       	W[P2] = R0;
ffa018c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa018c4:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa018c8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa018ca:	10 97       	W[P2] = R0;
ffa018cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa018d0:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa018d4:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa018d8:	10 97       	W[P2] = R0;
ffa018da:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa018de:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa018e2:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa018e6:	10 97       	W[P2] = R0;
ffa018e8:	24 00       	SSYNC;
ffa018ea:	01 e8 00 00 	UNLINK;
ffa018ee:	10 00       	RTS;

ffa018f0 <_radio_set_rx>:
ffa018f0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa018f4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa018f8:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa018fc:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa01900:	10 97       	W[P2] = R0;
ffa01902:	24 00       	SSYNC;
ffa01904:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01906:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01908:	ff e3 74 fd 	CALL 0xffa013f0 <_spi_write_register>;
ffa0190c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0190e:	99 60       	R1 = 0x13 (X);		/*		R1=0x13( 19) */
ffa01910:	ff e3 70 fd 	CALL 0xffa013f0 <_spi_write_register>;
ffa01914:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa01918:	ff e3 60 fe 	CALL 0xffa015d8 <_spi_write_byte>;
ffa0191c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01920:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa01924:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01926:	10 97       	W[P2] = R0;
ffa01928:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0192c:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01930:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa01934:	10 97       	W[P2] = R0;
ffa01936:	24 00       	SSYNC;
ffa01938:	01 e8 00 00 	UNLINK;
ffa0193c:	10 00       	RTS;
	...

ffa01940 <_radio_set_tx>:
ffa01940:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01944:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01948:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0194c:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa01950:	10 97       	W[P2] = R0;
ffa01952:	24 00       	SSYNC;
ffa01954:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01956:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01958:	ff e3 4c fd 	CALL 0xffa013f0 <_spi_write_register>;
ffa0195c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0195e:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa01960:	ff e3 48 fd 	CALL 0xffa013f0 <_spi_write_register>;
ffa01964:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa01968:	ff e3 38 fe 	CALL 0xffa015d8 <_spi_write_byte>;
ffa0196c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01970:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa01974:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01976:	10 97       	W[P2] = R0;
ffa01978:	01 e8 00 00 	UNLINK;
ffa0197c:	10 00       	RTS;
	...

ffa01980 <_radio_wait_irq>:
ffa01980:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01984:	b8 b0       	[FP + 0x8] = R0;
ffa01986:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01988:	f0 bb       	[FP -0x4] = R0;
ffa0198a:	08 20       	JUMP.S 0xffa0199a <_radio_wait_irq+0x1a>;
	...
ffa01994:	f0 b9       	R0 = [FP -0x4];
ffa01996:	08 64       	R0 += 0x1;		/* (  1) */
ffa01998:	f0 bb       	[FP -0x4] = R0;
ffa0199a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0199e:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa019a2:	50 95       	R0 = W[P2] (X);
ffa019a4:	c1 42       	R1 = R0.L (Z);
ffa019a6:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa019aa:	01 54       	R0 = R1 & R0;
ffa019ac:	00 0c       	CC = R0 == 0x0;
ffa019ae:	05 18       	IF CC JUMP 0xffa019b8 <_radio_wait_irq+0x38>;
ffa019b0:	f1 b9       	R1 = [FP -0x4];
ffa019b2:	b8 a0       	R0 = [FP + 0x8];
ffa019b4:	81 08       	CC = R1 < R0;
ffa019b6:	eb 1b       	IF CC JUMP 0xffa0198c <_radio_wait_irq+0xc>;
ffa019b8:	f1 b9       	R1 = [FP -0x4];
ffa019ba:	b8 a0       	R0 = [FP + 0x8];
ffa019bc:	81 08       	CC = R1 < R0;
ffa019be:	06 10       	IF !CC JUMP 0xffa019ca <_radio_wait_irq+0x4a>;
ffa019c0:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa019c2:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa019c6:	ff e3 15 fd 	CALL 0xffa013f0 <_spi_write_register>;
ffa019ca:	f0 b9       	R0 = [FP -0x4];
ffa019cc:	01 e8 00 00 	UNLINK;
ffa019d0:	10 00       	RTS;
	...

ffa019d4 <_radio_init>:
ffa019d4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa019d8:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa019dc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa019e0:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa019e4:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa019e6:	10 97       	W[P2] = R0;
ffa019e8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa019ec:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa019f0:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa019f4:	10 97       	W[P2] = R0;
ffa019f6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa019fa:	0a e1 04 05 	P2.L = 0x504;		/* (1284)	P2=0xffc00504(-4193020) */
ffa019fe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a00:	10 97       	W[P2] = R0;
ffa01a02:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00504(-4193020) */
ffa01a06:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01a0a:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01a0e:	10 97       	W[P2] = R0;
ffa01a10:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0050c(-4193012) */
ffa01a14:	09 e1 40 15 	P1.L = 0x1540;		/* (5440)	P1=0xffc01540(-4188864) */
ffa01a18:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01a1c:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa01a20:	50 95       	R0 = W[P2] (X);
ffa01a22:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa01a24:	08 97       	W[P1] = R0;
ffa01a26:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc01540(-4188864) */
ffa01a2a:	09 e1 30 15 	P1.L = 0x1530;		/* (5424)	P1=0xffc01530(-4188880) */
ffa01a2e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa01a32:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa01a36:	51 95       	R1 = W[P2] (X);
ffa01a38:	20 e1 ff f7 	R0 = -0x801 (X);		/*		R0=0xfffff7ff(-2049) */
ffa01a3c:	01 54       	R0 = R1 & R0;
ffa01a3e:	08 97       	W[P1] = R0;
ffa01a40:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc01530(-4188880) */
ffa01a44:	09 e1 30 15 	P1.L = 0x1530;		/* (5424)	P1=0xffc01530(-4188880) */
ffa01a48:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa01a4c:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa01a50:	51 95       	R1 = W[P2] (X);
ffa01a52:	20 e1 00 06 	R0 = 0x600 (X);		/*		R0=0x600(1536) */
ffa01a56:	01 56       	R0 = R1 | R0;
ffa01a58:	08 97       	W[P1] = R0;
ffa01a5a:	b8 e4 08 00 	R0 = B[FP + 0x8] (Z);
ffa01a5e:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa01a62:	08 0a       	CC = R0 <= R1 (IU);
ffa01a64:	05 18       	IF CC JUMP 0xffa01a6e <_radio_init+0x9a>;
ffa01a66:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa01a6a:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa01a6e:	b9 e4 08 00 	R1 = B[FP + 0x8] (Z);
ffa01a72:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa01a76:	00 e1 b0 00 	R0.L = 0xb0;		/* (176)	R0=0xff9000b0(-7339856) */
ffa01a7a:	ff e3 15 f7 	CALL 0xffa008a4 <_printf_int>;
ffa01a7e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000b0(-7339856) */
ffa01a82:	00 e1 ac 00 	R0.L = 0xac;		/* (172)	R0=0xff9000ac(-7339860) */
ffa01a86:	ff e3 a1 f6 	CALL 0xffa007c8 <_uart_str>;
ffa01a8a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a8c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a8e:	ff e3 b1 fc 	CALL 0xffa013f0 <_spi_write_register>;
ffa01a92:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01a94:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a96:	ff e3 e7 fc 	CALL 0xffa01464 <_spi_write_register_ver>;
ffa01a9a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa01a9c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01a9e:	ff e3 e3 fc 	CALL 0xffa01464 <_spi_write_register_ver>;
ffa01aa2:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01aa4:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01aa6:	ff e3 df fc 	CALL 0xffa01464 <_spi_write_register_ver>;
ffa01aaa:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa01aac:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01aae:	ff e3 db fc 	CALL 0xffa01464 <_spi_write_register_ver>;
ffa01ab2:	b9 e4 08 00 	R1 = B[FP + 0x8] (Z);
ffa01ab6:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa01ab8:	ff e3 d6 fc 	CALL 0xffa01464 <_spi_write_register_ver>;
ffa01abc:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01abe:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa01ac0:	ff e3 d2 fc 	CALL 0xffa01464 <_spi_write_register_ver>;
ffa01ac4:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01ac6:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01aca:	ff e3 cd fc 	CALL 0xffa01464 <_spi_write_register_ver>;
ffa01ace:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01ad0:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa01ad2:	ff e3 c9 fc 	CALL 0xffa01464 <_spi_write_register_ver>;
ffa01ad6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa01ada:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa01ade:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01ae0:	10 97       	W[P2] = R0;
ffa01ae2:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa01ae6:	ff e3 79 fd 	CALL 0xffa015d8 <_spi_write_byte>;
ffa01aea:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa01aee:	ff e3 75 fd 	CALL 0xffa015d8 <_spi_write_byte>;
ffa01af2:	40 43       	R0 = R0.B (Z);
ffa01af4:	01 e8 00 00 	UNLINK;
ffa01af8:	10 00       	RTS;
	...

ffa01afc <_bfin_EMAC_send>:
ffa01afc:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa01b00:	b8 b0       	[FP + 0x8] = R0;
ffa01b02:	f9 b0       	[FP + 0xc] = R1;
ffa01b04:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b06:	e0 bb       	[FP -0x8] = R0;
ffa01b08:	b8 a0       	R0 = [FP + 0x8];
ffa01b0a:	f0 bb       	[FP -0x4] = R0;
ffa01b0c:	f8 a0       	R0 = [FP + 0xc];
ffa01b0e:	00 0d       	CC = R0 <= 0x0;
ffa01b10:	09 10       	IF !CC JUMP 0xffa01b22 <_bfin_EMAC_send+0x26>;
ffa01b12:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01b16:	00 e1 cc 00 	R0.L = 0xcc;		/* (204)	R0=0xff9000cc(-7339828) */
ffa01b1a:	f9 a0       	R1 = [FP + 0xc];
ffa01b1c:	ff e3 c4 f6 	CALL 0xffa008a4 <_printf_int>;
ffa01b20:	fa 20       	JUMP.S 0xffa01d14 <_bfin_EMAC_send+0x218>;
ffa01b22:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa01b26:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01b2a:	50 95       	R0 = W[P2] (X);
ffa01b2c:	c1 42       	R1 = R0.L (Z);
ffa01b2e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa01b30:	01 54       	R0 = R1 & R0;
ffa01b32:	00 0c       	CC = R0 == 0x0;
ffa01b34:	08 18       	IF CC JUMP 0xffa01b44 <_bfin_EMAC_send+0x48>;
ffa01b36:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa01b3a:	00 e1 e8 00 	R0.L = 0xe8;		/* (232)	R0=0xff9000e8(-7339800) */
ffa01b3e:	ff e3 a9 f6 	CALL 0xffa00890 <_printf_str>;
ffa01b42:	e9 20       	JUMP.S 0xffa01d14 <_bfin_EMAC_send+0x218>;
ffa01b44:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b46:	d0 bb       	[FP -0xc] = R0;
ffa01b48:	11 20       	JUMP.S 0xffa01b6a <_bfin_EMAC_send+0x6e>;
ffa01b4a:	d0 b9       	R0 = [FP -0xc];
ffa01b4c:	21 e1 09 3d 	R1 = 0x3d09 (X);		/*		R1=0x3d09(15625) */
ffa01b50:	31 4f       	R1 <<= 0x6;
ffa01b52:	08 09       	CC = R0 <= R1;
ffa01b54:	08 18       	IF CC JUMP 0xffa01b64 <_bfin_EMAC_send+0x68>;
ffa01b56:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01b5a:	00 e1 00 01 	R0.L = 0x100;		/* (256)	R0=0xff900100(-7339776) */
ffa01b5e:	ff e3 99 f6 	CALL 0xffa00890 <_printf_str>;
ffa01b62:	d9 20       	JUMP.S 0xffa01d14 <_bfin_EMAC_send+0x218>;
ffa01b64:	d0 b9       	R0 = [FP -0xc];
ffa01b66:	08 64       	R0 += 0x1;		/* (  1) */
ffa01b68:	d0 bb       	[FP -0xc] = R0;
ffa01b6a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01b6e:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01b72:	50 95       	R0 = W[P2] (X);
ffa01b74:	c1 42       	R1 = R0.L (Z);
ffa01b76:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa01b78:	01 54       	R0 = R1 & R0;
ffa01b7a:	00 0c       	CC = R0 == 0x0;
ffa01b7c:	e7 13       	IF !CC JUMP 0xffa01b4a <_bfin_EMAC_send+0x4e>;
ffa01b7e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca8 */
ffa01b82:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa01b86:	50 95       	R0 = W[P2] (X);
ffa01b88:	c0 42       	R0 = R0.L (Z);
ffa01b8a:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff903d09(-7324407) */
ffa01b8e:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01b92:	10 4f       	R0 <<= 0x2;
ffa01b94:	08 50       	R0 = R0 + R1;
ffa01b96:	10 32       	P2 = R0;
ffa01b98:	52 91       	P2 = [P2];
ffa01b9a:	92 ad       	P2 = [P2 + 0x18];
ffa01b9c:	f8 a0       	R0 = [FP + 0xc];
ffa01b9e:	10 97       	W[P2] = R0;
ffa01ba0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa01ba4:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa01ba8:	50 95       	R0 = W[P2] (X);
ffa01baa:	c0 42       	R0 = R0.L (Z);
ffa01bac:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01bb0:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01bb4:	10 4f       	R0 <<= 0x2;
ffa01bb6:	08 50       	R0 = R0 + R1;
ffa01bb8:	10 32       	P2 = R0;
ffa01bba:	52 91       	P2 = [P2];
ffa01bbc:	90 a1       	R0 = [P2 + 0x18];
ffa01bbe:	10 64       	R0 += 0x2;		/* (  2) */
ffa01bc0:	b9 a0       	R1 = [FP + 0x8];
ffa01bc2:	fa a0       	R2 = [FP + 0xc];
ffa01bc4:	ff e3 f8 f8 	CALL 0xffa00db4 <_memcpy_>;
ffa01bc8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa01bcc:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa01bd0:	50 95       	R0 = W[P2] (X);
ffa01bd2:	c0 42       	R0 = R0.L (Z);
ffa01bd4:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01bd8:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01bdc:	10 4f       	R0 <<= 0x2;
ffa01bde:	08 50       	R0 = R0 + R1;
ffa01be0:	10 32       	P2 = R0;
ffa01be2:	51 91       	P1 = [P2];
ffa01be4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa01be8:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa01bec:	50 95       	R0 = W[P2] (X);
ffa01bee:	c0 42       	R0 = R0.L (Z);
ffa01bf0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01bf4:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01bf8:	10 4f       	R0 <<= 0x2;
ffa01bfa:	08 50       	R0 = R0 + R1;
ffa01bfc:	10 32       	P2 = R0;
ffa01bfe:	52 91       	P2 = [P2];
ffa01c00:	90 a1       	R0 = [P2 + 0x18];
ffa01c02:	48 b0       	[P1 + 0x4] = R0;
ffa01c04:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc01530(-4188880) */
ffa01c08:	09 e1 80 0c 	P1.L = 0xc80;		/* (3200)	P1=0xffc00c80(-4191104) */
ffa01c0c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa01c10:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa01c14:	50 95       	R0 = W[P2] (X);
ffa01c16:	c0 42       	R0 = R0.L (Z);
ffa01c18:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01c1c:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01c20:	10 4f       	R0 <<= 0x2;
ffa01c22:	08 50       	R0 = R0 + R1;
ffa01c24:	10 32       	P2 = R0;
ffa01c26:	10 91       	R0 = [P2];
ffa01c28:	08 93       	[P1] = R0;
ffa01c2a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c80(-4191104) */
ffa01c2e:	09 e1 88 0c 	P1.L = 0xc88;		/* (3208)	P1=0xffc00c88(-4191096) */
ffa01c32:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa01c36:	0a e1 ca 00 	P2.L = 0xca;		/* (202)	P2=0xff9000ca <_txdmacfg> */
ffa01c3a:	50 95       	R0 = W[P2] (X);
ffa01c3c:	08 97       	W[P1] = R0;
ffa01c3e:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c88(-4191096) */
ffa01c42:	09 e1 00 30 	P1.L = 0x3000;		/* (12288)	P1=0xffc03000(-4182016) */
ffa01c46:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000ca(-4194102) */
ffa01c4a:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01c4e:	10 91       	R0 = [P2];
ffa01c50:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01c52:	08 93       	[P1] = R0;
ffa01c54:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c56:	d0 bb       	[FP -0xc] = R0;
ffa01c58:	11 20       	JUMP.S 0xffa01c7a <_bfin_EMAC_send+0x17e>;
ffa01c5a:	d0 b9       	R0 = [FP -0xc];
ffa01c5c:	21 e1 09 3d 	R1 = 0x3d09 (X);		/*		R1=0x3d09(15625) */
ffa01c60:	31 4f       	R1 <<= 0x6;
ffa01c62:	08 09       	CC = R0 <= R1;
ffa01c64:	08 18       	IF CC JUMP 0xffa01c74 <_bfin_EMAC_send+0x178>;
ffa01c66:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01c6a:	00 e1 18 01 	R0.L = 0x118;		/* (280)	R0=0xff900118(-7339752) */
ffa01c6e:	ff e3 11 f6 	CALL 0xffa00890 <_printf_str>;
ffa01c72:	51 20       	JUMP.S 0xffa01d14 <_bfin_EMAC_send+0x218>;
ffa01c74:	d0 b9       	R0 = [FP -0xc];
ffa01c76:	08 64       	R0 += 0x1;		/* (  1) */
ffa01c78:	d0 bb       	[FP -0xc] = R0;
ffa01c7a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa01c7e:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa01c82:	50 95       	R0 = W[P2] (X);
ffa01c84:	c0 42       	R0 = R0.L (Z);
ffa01c86:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff903d09(-7324407) */
ffa01c8a:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01c8e:	10 4f       	R0 <<= 0x2;
ffa01c90:	08 50       	R0 = R0 + R1;
ffa01c92:	10 32       	P2 = R0;
ffa01c94:	52 91       	P2 = [P2];
ffa01c96:	90 a2       	R0 = [P2 + 0x28];
ffa01c98:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa01c9a:	00 02       	R0 = CC;
ffa01c9c:	00 0c       	CC = R0 == 0x0;
ffa01c9e:	de 1b       	IF CC JUMP 0xffa01c5a <_bfin_EMAC_send+0x15e>;
ffa01ca0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa01ca4:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa01ca8:	50 95       	R0 = W[P2] (X);
ffa01caa:	c0 42       	R0 = R0.L (Z);
ffa01cac:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01cb0:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01cb4:	10 4f       	R0 <<= 0x2;
ffa01cb6:	08 50       	R0 = R0 + R1;
ffa01cb8:	10 32       	P2 = R0;
ffa01cba:	52 91       	P2 = [P2];
ffa01cbc:	90 a2       	R0 = [P2 + 0x28];
ffa01cbe:	e0 bb       	[FP -0x8] = R0;
ffa01cc0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa01cc4:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa01cc8:	50 95       	R0 = W[P2] (X);
ffa01cca:	c0 42       	R0 = R0.L (Z);
ffa01ccc:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01cd0:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01cd4:	10 4f       	R0 <<= 0x2;
ffa01cd6:	08 50       	R0 = R0 + R1;
ffa01cd8:	10 32       	P2 = R0;
ffa01cda:	52 91       	P2 = [P2];
ffa01cdc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01cde:	90 b2       	[P2 + 0x28] = R0;
ffa01ce0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa01ce4:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa01ce8:	50 95       	R0 = W[P2] (X);
ffa01cea:	c0 42       	R0 = R0.L (Z);
ffa01cec:	10 0d       	CC = R0 <= 0x2;
ffa01cee:	08 18       	IF CC JUMP 0xffa01cfe <_bfin_EMAC_send+0x202>;
ffa01cf0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa01cf4:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa01cf8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01cfa:	10 97       	W[P2] = R0;
ffa01cfc:	0c 20       	JUMP.S 0xffa01d14 <_bfin_EMAC_send+0x218>;
ffa01cfe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa01d02:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa01d06:	50 95       	R0 = W[P2] (X);
ffa01d08:	08 64       	R0 += 0x1;		/* (  1) */
ffa01d0a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa01d0e:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa01d12:	10 97       	W[P2] = R0;
ffa01d14:	e0 b9       	R0 = [FP -0x8];
ffa01d16:	01 e8 00 00 	UNLINK;
ffa01d1a:	10 00       	RTS;

ffa01d1c <_bfin_EMAC_send_check>:
ffa01d1c:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa01d20:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c8c(-4191092) */
ffa01d24:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01d28:	50 95       	R0 = W[P2] (X);
ffa01d2a:	c1 42       	R1 = R0.L (Z);
ffa01d2c:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa01d2e:	01 54       	R0 = R1 & R0;
ffa01d30:	00 0c       	CC = R0 == 0x0;
ffa01d32:	04 18       	IF CC JUMP 0xffa01d3a <_bfin_EMAC_send_check+0x1e>;
ffa01d34:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d36:	f0 bb       	[FP -0x4] = R0;
ffa01d38:	03 20       	JUMP.S 0xffa01d3e <_bfin_EMAC_send_check+0x22>;
ffa01d3a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01d3c:	f0 bb       	[FP -0x4] = R0;
ffa01d3e:	f0 b9       	R0 = [FP -0x4];
ffa01d40:	01 e8 00 00 	UNLINK;
ffa01d44:	10 00       	RTS;
	...

ffa01d48 <_bfin_EMAC_send_nocopy>:
ffa01d48:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa01d4c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d4e:	f0 bb       	[FP -0x4] = R0;
ffa01d50:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01d54:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01d58:	50 95       	R0 = W[P2] (X);
ffa01d5a:	c1 42       	R1 = R0.L (Z);
ffa01d5c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa01d5e:	01 54       	R0 = R1 & R0;
ffa01d60:	00 0c       	CC = R0 == 0x0;
ffa01d62:	08 18       	IF CC JUMP 0xffa01d72 <_bfin_EMAC_send_nocopy+0x2a>;
ffa01d64:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa01d68:	00 e1 e8 00 	R0.L = 0xe8;		/* (232)	R0=0xff9000e8(-7339800) */
ffa01d6c:	ff e3 92 f5 	CALL 0xffa00890 <_printf_str>;
ffa01d70:	8e 20       	JUMP.S 0xffa01e8c <_bfin_EMAC_send_nocopy+0x144>;
ffa01d72:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d74:	e0 bb       	[FP -0x8] = R0;
ffa01d76:	11 20       	JUMP.S 0xffa01d98 <_bfin_EMAC_send_nocopy+0x50>;
ffa01d78:	e0 b9       	R0 = [FP -0x8];
ffa01d7a:	21 e1 09 3d 	R1 = 0x3d09 (X);		/*		R1=0x3d09(15625) */
ffa01d7e:	31 4f       	R1 <<= 0x6;
ffa01d80:	08 09       	CC = R0 <= R1;
ffa01d82:	08 18       	IF CC JUMP 0xffa01d92 <_bfin_EMAC_send_nocopy+0x4a>;
ffa01d84:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01d88:	00 e1 2c 01 	R0.L = 0x12c;		/* (300)	R0=0xff90012c(-7339732) */
ffa01d8c:	ff e3 82 f5 	CALL 0xffa00890 <_printf_str>;
ffa01d90:	7e 20       	JUMP.S 0xffa01e8c <_bfin_EMAC_send_nocopy+0x144>;
ffa01d92:	e0 b9       	R0 = [FP -0x8];
ffa01d94:	08 64       	R0 += 0x1;		/* (  1) */
ffa01d96:	e0 bb       	[FP -0x8] = R0;
ffa01d98:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01d9c:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01da0:	50 95       	R0 = W[P2] (X);
ffa01da2:	c1 42       	R1 = R0.L (Z);
ffa01da4:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa01da6:	01 54       	R0 = R1 & R0;
ffa01da8:	00 0c       	CC = R0 == 0x0;
ffa01daa:	e7 13       	IF !CC JUMP 0xffa01d78 <_bfin_EMAC_send_nocopy+0x30>;
ffa01dac:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca8 */
ffa01db0:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa01db4:	50 95       	R0 = W[P2] (X);
ffa01db6:	c0 42       	R0 = R0.L (Z);
ffa01db8:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff903d09(-7324407) */
ffa01dbc:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01dc0:	10 4f       	R0 <<= 0x2;
ffa01dc2:	08 50       	R0 = R0 + R1;
ffa01dc4:	10 32       	P2 = R0;
ffa01dc6:	51 91       	P1 = [P2];
ffa01dc8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa01dcc:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa01dd0:	50 95       	R0 = W[P2] (X);
ffa01dd2:	c0 42       	R0 = R0.L (Z);
ffa01dd4:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01dd8:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01ddc:	10 4f       	R0 <<= 0x2;
ffa01dde:	08 50       	R0 = R0 + R1;
ffa01de0:	10 32       	P2 = R0;
ffa01de2:	52 91       	P2 = [P2];
ffa01de4:	90 a1       	R0 = [P2 + 0x18];
ffa01de6:	48 b0       	[P1 + 0x4] = R0;
ffa01de8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa01dec:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa01df0:	50 95       	R0 = W[P2] (X);
ffa01df2:	c0 42       	R0 = R0.L (Z);
ffa01df4:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01df8:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01dfc:	10 4f       	R0 <<= 0x2;
ffa01dfe:	08 50       	R0 = R0 + R1;
ffa01e00:	10 32       	P2 = R0;
ffa01e02:	52 91       	P2 = [P2];
ffa01e04:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e06:	90 b2       	[P2 + 0x28] = R0;
ffa01e08:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03000(-4182016) */
ffa01e0c:	09 e1 80 0c 	P1.L = 0xc80;		/* (3200)	P1=0xffc00c80(-4191104) */
ffa01e10:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa01e14:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa01e18:	50 95       	R0 = W[P2] (X);
ffa01e1a:	c0 42       	R0 = R0.L (Z);
ffa01e1c:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01e20:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01e24:	10 4f       	R0 <<= 0x2;
ffa01e26:	08 50       	R0 = R0 + R1;
ffa01e28:	10 32       	P2 = R0;
ffa01e2a:	10 91       	R0 = [P2];
ffa01e2c:	08 93       	[P1] = R0;
ffa01e2e:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c80(-4191104) */
ffa01e32:	09 e1 88 0c 	P1.L = 0xc88;		/* (3208)	P1=0xffc00c88(-4191096) */
ffa01e36:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa01e3a:	0a e1 ca 00 	P2.L = 0xca;		/* (202)	P2=0xff9000ca <_txdmacfg> */
ffa01e3e:	50 95       	R0 = W[P2] (X);
ffa01e40:	08 97       	W[P1] = R0;
ffa01e42:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c88(-4191096) */
ffa01e46:	09 e1 00 30 	P1.L = 0x3000;		/* (12288)	P1=0xffc03000(-4182016) */
ffa01e4a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000ca(-4194102) */
ffa01e4e:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01e52:	10 91       	R0 = [P2];
ffa01e54:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01e56:	08 93       	[P1] = R0;
ffa01e58:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa01e5c:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa01e60:	50 95       	R0 = W[P2] (X);
ffa01e62:	c0 42       	R0 = R0.L (Z);
ffa01e64:	10 0d       	CC = R0 <= 0x2;
ffa01e66:	08 18       	IF CC JUMP 0xffa01e76 <_bfin_EMAC_send_nocopy+0x12e>;
ffa01e68:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa01e6c:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa01e70:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e72:	10 97       	W[P2] = R0;
ffa01e74:	0c 20       	JUMP.S 0xffa01e8c <_bfin_EMAC_send_nocopy+0x144>;
ffa01e76:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa01e7a:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa01e7e:	50 95       	R0 = W[P2] (X);
ffa01e80:	08 64       	R0 += 0x1;		/* (  1) */
ffa01e82:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa01e86:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa01e8a:	10 97       	W[P2] = R0;
ffa01e8c:	f0 b9       	R0 = [FP -0x4];
ffa01e8e:	01 e8 00 00 	UNLINK;
ffa01e92:	10 00       	RTS;

ffa01e94 <_bfin_EMAC_recv>:
ffa01e94:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa01e98:	b8 b0       	[FP + 0x8] = R0;
ffa01e9a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e9c:	f0 bb       	[FP -0x4] = R0;
ffa01e9e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa01ea2:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa01ea6:	50 95       	R0 = W[P2] (X);
ffa01ea8:	c0 42       	R0 = R0.L (Z);
ffa01eaa:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa01eae:	01 e1 a4 0c 	R1.L = 0xca4;		/* (3236)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa01eb2:	10 4f       	R0 <<= 0x2;
ffa01eb4:	08 50       	R0 = R0 + R1;
ffa01eb6:	10 32       	P2 = R0;
ffa01eb8:	52 91       	P2 = [P2];
ffa01eba:	91 a2       	R1 = [P2 + 0x28];
ffa01ebc:	20 e1 00 10 	R0 = 0x1000 (X);		/*		R0=0x1000(4096) */
ffa01ec0:	01 54       	R0 = R1 & R0;
ffa01ec2:	00 0c       	CC = R0 == 0x0;
ffa01ec4:	04 10       	IF !CC JUMP 0xffa01ecc <_bfin_EMAC_recv+0x38>;
ffa01ec6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01ec8:	f0 bb       	[FP -0x4] = R0;
ffa01eca:	c9 20       	JUMP.S 0xffa0205c <_bfin_EMAC_recv+0x1c8>;
ffa01ecc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca0 <_rxIdx> */
ffa01ed0:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa01ed4:	50 95       	R0 = W[P2] (X);
ffa01ed6:	c0 42       	R0 = R0.L (Z);
ffa01ed8:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa01edc:	01 e1 a4 0c 	R1.L = 0xca4;		/* (3236)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa01ee0:	10 4f       	R0 <<= 0x2;
ffa01ee2:	08 50       	R0 = R0 + R1;
ffa01ee4:	10 32       	P2 = R0;
ffa01ee6:	52 91       	P2 = [P2];
ffa01ee8:	91 a2       	R1 = [P2 + 0x28];
ffa01eea:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01eec:	a0 4f       	R0 <<= 0x14;
ffa01eee:	01 54       	R0 = R1 & R0;
ffa01ef0:	00 0c       	CC = R0 == 0x0;
ffa01ef2:	08 18       	IF CC JUMP 0xffa01f02 <_bfin_EMAC_recv+0x6e>;
ffa01ef4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa01ef8:	00 e1 44 01 	R0.L = 0x144;		/* (324)	R0=0xff900144(-7339708) */
ffa01efc:	ff e3 ca f4 	CALL 0xffa00890 <_printf_str>;
ffa01f00:	ae 20       	JUMP.S 0xffa0205c <_bfin_EMAC_recv+0x1c8>;
ffa01f02:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca0 <_rxIdx> */
ffa01f06:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa01f0a:	50 95       	R0 = W[P2] (X);
ffa01f0c:	c0 42       	R0 = R0.L (Z);
ffa01f0e:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa01f12:	01 e1 a4 0c 	R1.L = 0xca4;		/* (3236)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa01f16:	10 4f       	R0 <<= 0x2;
ffa01f18:	08 50       	R0 = R0 + R1;
ffa01f1a:	10 32       	P2 = R0;
ffa01f1c:	52 91       	P2 = [P2];
ffa01f1e:	91 a2       	R1 = [P2 + 0x28];
ffa01f20:	20 e1 00 20 	R0 = 0x2000 (X);		/*		R0=0x2000(8192) */
ffa01f24:	01 54       	R0 = R1 & R0;
ffa01f26:	00 0c       	CC = R0 == 0x0;
ffa01f28:	08 10       	IF !CC JUMP 0xffa01f38 <_bfin_EMAC_recv+0xa4>;
ffa01f2a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff902000(-7331840) */
ffa01f2e:	00 e1 60 01 	R0.L = 0x160;		/* (352)	R0=0xff900160(-7339680) */
ffa01f32:	ff e3 af f4 	CALL 0xffa00890 <_printf_str>;
ffa01f36:	93 20       	JUMP.S 0xffa0205c <_bfin_EMAC_recv+0x1c8>;
ffa01f38:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca0 <_rxIdx> */
ffa01f3c:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa01f40:	50 95       	R0 = W[P2] (X);
ffa01f42:	c0 42       	R0 = R0.L (Z);
ffa01f44:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa01f48:	01 e1 a4 0c 	R1.L = 0xca4;		/* (3236)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa01f4c:	10 4f       	R0 <<= 0x2;
ffa01f4e:	08 50       	R0 = R0 + R1;
ffa01f50:	10 32       	P2 = R0;
ffa01f52:	52 91       	P2 = [P2];
ffa01f54:	90 a2       	R0 = [P2 + 0x28];
ffa01f56:	08 30       	R1 = R0;
ffa01f58:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa01f5c:	01 54       	R0 = R1 & R0;
ffa01f5e:	f0 bb       	[FP -0x4] = R0;
ffa01f60:	f0 b9       	R0 = [FP -0x4];
ffa01f62:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa01f64:	08 09       	CC = R0 <= R1;
ffa01f66:	08 10       	IF !CC JUMP 0xffa01f76 <_bfin_EMAC_recv+0xe2>;
ffa01f68:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9007ff(-7337985) */
ffa01f6c:	00 e1 74 01 	R0.L = 0x174;		/* (372)	R0=0xff900174(-7339660) */
ffa01f70:	ff e3 90 f4 	CALL 0xffa00890 <_printf_str>;
ffa01f74:	74 20       	JUMP.S 0xffa0205c <_bfin_EMAC_recv+0x1c8>;
ffa01f76:	f0 b9       	R0 = [FP -0x4];
ffa01f78:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa01f7a:	f0 bb       	[FP -0x4] = R0;
ffa01f7c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca0(-4191072) */
ffa01f80:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa01f84:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa01f86:	10 97       	W[P2] = R0;
ffa01f88:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90070c */
ffa01f8c:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa01f90:	50 95       	R0 = W[P2] (X);
ffa01f92:	c0 42       	R0 = R0.L (Z);
ffa01f94:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900004(-7340028) */
ffa01f98:	01 e1 a4 0c 	R1.L = 0xca4;		/* (3236)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa01f9c:	10 4f       	R0 <<= 0x2;
ffa01f9e:	08 50       	R0 = R0 + R1;
ffa01fa0:	10 32       	P2 = R0;
ffa01fa2:	52 91       	P2 = [P2];
ffa01fa4:	90 a1       	R0 = [P2 + 0x18];
ffa01fa6:	ba ac       	P2 = [FP + 0x8];
ffa01fa8:	10 93       	[P2] = R0;
ffa01faa:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03000(-4182016) */
ffa01fae:	09 e1 68 0c 	P1.L = 0xc68;		/* (3176)	P1=0xffc00c68(-4191128) */
ffa01fb2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca0(-4191072) */
ffa01fb6:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xffc00c68(-4191128) */
ffa01fba:	51 95       	R1 = W[P2] (X);
ffa01fbc:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01fbe:	01 56       	R0 = R1 | R0;
ffa01fc0:	08 97       	W[P1] = R0;
ffa01fc2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c68 */
ffa01fc6:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa01fca:	50 95       	R0 = W[P2] (X);
ffa01fcc:	c0 42       	R0 = R0.L (Z);
ffa01fce:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa01fd2:	01 e1 a4 0c 	R1.L = 0xca4;		/* (3236)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa01fd6:	10 4f       	R0 <<= 0x2;
ffa01fd8:	08 50       	R0 = R0 + R1;
ffa01fda:	10 32       	P2 = R0;
ffa01fdc:	52 91       	P2 = [P2];
ffa01fde:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01fe0:	90 b2       	[P2 + 0x28] = R0;
ffa01fe2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca0 <_rxIdx> */
ffa01fe6:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa01fea:	50 95       	R0 = W[P2] (X);
ffa01fec:	c0 42       	R0 = R0.L (Z);
ffa01fee:	10 0d       	CC = R0 <= 0x2;
ffa01ff0:	08 18       	IF CC JUMP 0xffa02000 <_bfin_EMAC_recv+0x16c>;
ffa01ff2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca0 <_rxIdx> */
ffa01ff6:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa01ffa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ffc:	10 97       	W[P2] = R0;
ffa01ffe:	0c 20       	JUMP.S 0xffa02016 <_bfin_EMAC_recv+0x182>;
ffa02000:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca0 <_rxIdx> */
ffa02004:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa02008:	50 95       	R0 = W[P2] (X);
ffa0200a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0200c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca0 <_rxIdx> */
ffa02010:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa02014:	10 97       	W[P2] = R0;
ffa02016:	ba ac       	P2 = [FP + 0x8];
ffa02018:	10 91       	R0 = [P2];
ffa0201a:	f1 b9       	R1 = [FP -0x4];
ffa0201c:	00 e3 44 0e 	CALL 0xffa03ca4 <_ARP_rx>;
ffa02020:	00 0c       	CC = R0 == 0x0;
ffa02022:	04 18       	IF CC JUMP 0xffa0202a <_bfin_EMAC_recv+0x196>;
ffa02024:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02026:	f0 bb       	[FP -0x4] = R0;
ffa02028:	14 20       	JUMP.S 0xffa02050 <_bfin_EMAC_recv+0x1bc>;
ffa0202a:	ba ac       	P2 = [FP + 0x8];
ffa0202c:	10 91       	R0 = [P2];
ffa0202e:	f1 b9       	R1 = [FP -0x4];
ffa02030:	00 e3 32 09 	CALL 0xffa03294 <_icmp_rx>;
ffa02034:	00 0c       	CC = R0 == 0x0;
ffa02036:	04 18       	IF CC JUMP 0xffa0203e <_bfin_EMAC_recv+0x1aa>;
ffa02038:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0203a:	f0 bb       	[FP -0x4] = R0;
ffa0203c:	0a 20       	JUMP.S 0xffa02050 <_bfin_EMAC_recv+0x1bc>;
ffa0203e:	ba ac       	P2 = [FP + 0x8];
ffa02040:	10 91       	R0 = [P2];
ffa02042:	f1 b9       	R1 = [FP -0x4];
ffa02044:	00 e3 4c 13 	CALL 0xffa046dc <_tcp_rx>;
ffa02048:	00 0c       	CC = R0 == 0x0;
ffa0204a:	03 18       	IF CC JUMP 0xffa02050 <_bfin_EMAC_recv+0x1bc>;
ffa0204c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0204e:	f0 bb       	[FP -0x4] = R0;
ffa02050:	f0 b9       	R0 = [FP -0x4];
ffa02052:	00 0d       	CC = R0 <= 0x0;
ffa02054:	25 1b       	IF CC JUMP 0xffa01e9e <_bfin_EMAC_recv+0xa>;
ffa02056:	f0 b9       	R0 = [FP -0x4];
ffa02058:	e0 bb       	[FP -0x8] = R0;
ffa0205a:	03 20       	JUMP.S 0xffa02060 <_bfin_EMAC_recv+0x1cc>;
ffa0205c:	f1 b9       	R1 = [FP -0x4];
ffa0205e:	e1 bb       	[FP -0x8] = R1;
ffa02060:	e0 b9       	R0 = [FP -0x8];
ffa02062:	01 e8 00 00 	UNLINK;
ffa02066:	10 00       	RTS;

ffa02068 <_bfin_EMAC_recv_poll>:
ffa02068:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa0206c:	b8 b0       	[FP + 0x8] = R0;
ffa0206e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02070:	d0 bb       	[FP -0xc] = R0;
ffa02072:	1f 20       	JUMP.S 0xffa020b0 <_bfin_EMAC_recv_poll+0x48>;
ffa02074:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa02078:	ff e3 7c f9 	CALL 0xffa01370 <_udelay>;
ffa0207c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca0 <_rxIdx> */
ffa02080:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa02084:	50 95       	R0 = W[P2] (X);
ffa02086:	c0 42       	R0 = R0.L (Z);
ffa02088:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa0208c:	01 e1 a4 0c 	R1.L = 0xca4;		/* (3236)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa02090:	10 4f       	R0 <<= 0x2;
ffa02092:	08 50       	R0 = R0 + R1;
ffa02094:	10 32       	P2 = R0;
ffa02096:	52 91       	P2 = [P2];
ffa02098:	91 a2       	R1 = [P2 + 0x28];
ffa0209a:	20 e1 00 10 	R0 = 0x1000 (X);		/*		R0=0x1000(4096) */
ffa0209e:	01 54       	R0 = R1 & R0;
ffa020a0:	00 0c       	CC = R0 == 0x0;
ffa020a2:	04 18       	IF CC JUMP 0xffa020aa <_bfin_EMAC_recv_poll+0x42>;
ffa020a4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa020a6:	e0 bb       	[FP -0x8] = R0;
ffa020a8:	09 20       	JUMP.S 0xffa020ba <_bfin_EMAC_recv_poll+0x52>;
ffa020aa:	d0 b9       	R0 = [FP -0xc];
ffa020ac:	08 64       	R0 += 0x1;		/* (  1) */
ffa020ae:	d0 bb       	[FP -0xc] = R0;
ffa020b0:	d0 b9       	R0 = [FP -0xc];
ffa020b2:	21 e1 63 00 	R1 = 0x63 (X);		/*		R1=0x63( 99) */
ffa020b6:	08 09       	CC = R0 <= R1;
ffa020b8:	de 1b       	IF CC JUMP 0xffa02074 <_bfin_EMAC_recv_poll+0xc>;
ffa020ba:	e0 b9       	R0 = [FP -0x8];
ffa020bc:	00 0c       	CC = R0 == 0x0;
ffa020be:	0a 10       	IF !CC JUMP 0xffa020d2 <_bfin_EMAC_recv_poll+0x6a>;
ffa020c0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa020c4:	00 e1 8c 01 	R0.L = 0x18c;		/* (396)	R0=0xff90018c(-7339636) */
ffa020c8:	ff e3 e4 f3 	CALL 0xffa00890 <_printf_str>;
ffa020cc:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa020ce:	c0 bb       	[FP -0x10] = R0;
ffa020d0:	86 20       	JUMP.S 0xffa021dc <_bfin_EMAC_recv_poll+0x174>;
ffa020d2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca0 <_rxIdx> */
ffa020d6:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa020da:	50 95       	R0 = W[P2] (X);
ffa020dc:	c0 42       	R0 = R0.L (Z);
ffa020de:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900063(-7339933) */
ffa020e2:	01 e1 a4 0c 	R1.L = 0xca4;		/* (3236)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa020e6:	10 4f       	R0 <<= 0x2;
ffa020e8:	08 50       	R0 = R0 + R1;
ffa020ea:	10 32       	P2 = R0;
ffa020ec:	52 91       	P2 = [P2];
ffa020ee:	90 a2       	R0 = [P2 + 0x28];
ffa020f0:	08 30       	R1 = R0;
ffa020f2:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa020f6:	01 54       	R0 = R1 & R0;
ffa020f8:	f0 bb       	[FP -0x4] = R0;
ffa020fa:	f0 b9       	R0 = [FP -0x4];
ffa020fc:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa020fe:	08 09       	CC = R0 <= R1;
ffa02100:	04 10       	IF !CC JUMP 0xffa02108 <_bfin_EMAC_recv_poll+0xa0>;
ffa02102:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02104:	c0 bb       	[FP -0x10] = R0;
ffa02106:	6b 20       	JUMP.S 0xffa021dc <_bfin_EMAC_recv_poll+0x174>;
ffa02108:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca0 <_rxIdx> */
ffa0210c:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa02110:	50 95       	R0 = W[P2] (X);
ffa02112:	c0 42       	R0 = R0.L (Z);
ffa02114:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900004(-7340028) */
ffa02118:	01 e1 a4 0c 	R1.L = 0xca4;		/* (3236)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa0211c:	10 4f       	R0 <<= 0x2;
ffa0211e:	08 50       	R0 = R0 + R1;
ffa02120:	10 32       	P2 = R0;
ffa02122:	52 91       	P2 = [P2];
ffa02124:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02126:	90 b2       	[P2 + 0x28] = R0;
ffa02128:	f0 b9       	R0 = [FP -0x4];
ffa0212a:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa0212c:	f0 bb       	[FP -0x4] = R0;
ffa0212e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02132:	00 e1 ac 01 	R0.L = 0x1ac;		/* (428)	R0=0xff9001ac(-7339604) */
ffa02136:	f1 b9       	R1 = [FP -0x4];
ffa02138:	ff e3 b6 f3 	CALL 0xffa008a4 <_printf_int>;
ffa0213c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca0 <_rxIdx> */
ffa02140:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa02144:	50 95       	R0 = W[P2] (X);
ffa02146:	c0 42       	R0 = R0.L (Z);
ffa02148:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa0214c:	01 e1 a4 0c 	R1.L = 0xca4;		/* (3236)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa02150:	10 4f       	R0 <<= 0x2;
ffa02152:	08 50       	R0 = R0 + R1;
ffa02154:	10 32       	P2 = R0;
ffa02156:	52 91       	P2 = [P2];
ffa02158:	90 a1       	R0 = [P2 + 0x18];
ffa0215a:	ba ac       	P2 = [FP + 0x8];
ffa0215c:	10 93       	[P2] = R0;
ffa0215e:	ba ac       	P2 = [FP + 0x8];
ffa02160:	10 91       	R0 = [P2];
ffa02162:	f1 b9       	R1 = [FP -0x4];
ffa02164:	00 e3 a0 0d 	CALL 0xffa03ca4 <_ARP_rx>;
ffa02168:	00 0c       	CC = R0 == 0x0;
ffa0216a:	04 18       	IF CC JUMP 0xffa02172 <_bfin_EMAC_recv_poll+0x10a>;
ffa0216c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0216e:	f0 bb       	[FP -0x4] = R0;
ffa02170:	0a 20       	JUMP.S 0xffa02184 <_bfin_EMAC_recv_poll+0x11c>;
ffa02172:	ba ac       	P2 = [FP + 0x8];
ffa02174:	10 91       	R0 = [P2];
ffa02176:	f1 b9       	R1 = [FP -0x4];
ffa02178:	00 e3 8e 08 	CALL 0xffa03294 <_icmp_rx>;
ffa0217c:	00 0c       	CC = R0 == 0x0;
ffa0217e:	03 18       	IF CC JUMP 0xffa02184 <_bfin_EMAC_recv_poll+0x11c>;
ffa02180:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02182:	f0 bb       	[FP -0x4] = R0;
ffa02184:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca0 <_rxIdx> */
ffa02188:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa0218c:	50 95       	R0 = W[P2] (X);
ffa0218e:	c0 42       	R0 = R0.L (Z);
ffa02190:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa02194:	01 e1 a4 0c 	R1.L = 0xca4;		/* (3236)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa02198:	10 4f       	R0 <<= 0x2;
ffa0219a:	08 50       	R0 = R0 + R1;
ffa0219c:	10 32       	P2 = R0;
ffa0219e:	52 91       	P2 = [P2];
ffa021a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa021a2:	90 b2       	[P2 + 0x28] = R0;
ffa021a4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca0 <_rxIdx> */
ffa021a8:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa021ac:	50 95       	R0 = W[P2] (X);
ffa021ae:	c0 42       	R0 = R0.L (Z);
ffa021b0:	10 0d       	CC = R0 <= 0x2;
ffa021b2:	08 18       	IF CC JUMP 0xffa021c2 <_bfin_EMAC_recv_poll+0x15a>;
ffa021b4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca0 <_rxIdx> */
ffa021b8:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa021bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa021be:	10 97       	W[P2] = R0;
ffa021c0:	0c 20       	JUMP.S 0xffa021d8 <_bfin_EMAC_recv_poll+0x170>;
ffa021c2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca0 <_rxIdx> */
ffa021c6:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa021ca:	50 95       	R0 = W[P2] (X);
ffa021cc:	08 64       	R0 += 0x1;		/* (  1) */
ffa021ce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca0 <_rxIdx> */
ffa021d2:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa021d6:	10 97       	W[P2] = R0;
ffa021d8:	f1 b9       	R1 = [FP -0x4];
ffa021da:	c1 bb       	[FP -0x10] = R1;
ffa021dc:	c0 b9       	R0 = [FP -0x10];
ffa021de:	01 e8 00 00 	UNLINK;
ffa021e2:	10 00       	RTS;

ffa021e4 <_FormatIPAddress>:
ffa021e4:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa021e8:	7b a1       	R3 = [FP + 0x14];
ffa021ea:	b8 e6 08 00 	B[FP + 0x8] = R0;
ffa021ee:	01 30       	R0 = R1;
ffa021f0:	b8 e6 0c 00 	B[FP + 0xc] = R0;
ffa021f4:	02 30       	R0 = R2;
ffa021f6:	b8 e6 10 00 	B[FP + 0x10] = R0;
ffa021fa:	03 30       	R0 = R3;
ffa021fc:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa02200:	b8 e4 f8 ff 	R0 = B[FP + -0x8] (Z);
ffa02204:	f0 bb       	[FP -0x4] = R0;
ffa02206:	f0 b9       	R0 = [FP -0x4];
ffa02208:	40 4f       	R0 <<= 0x8;
ffa0220a:	f0 bb       	[FP -0x4] = R0;
ffa0220c:	b9 e4 10 00 	R1 = B[FP + 0x10] (Z);
ffa02210:	f0 b9       	R0 = [FP -0x4];
ffa02212:	08 56       	R0 = R0 | R1;
ffa02214:	f0 bb       	[FP -0x4] = R0;
ffa02216:	f0 b9       	R0 = [FP -0x4];
ffa02218:	40 4f       	R0 <<= 0x8;
ffa0221a:	f0 bb       	[FP -0x4] = R0;
ffa0221c:	b9 e4 0c 00 	R1 = B[FP + 0xc] (Z);
ffa02220:	f0 b9       	R0 = [FP -0x4];
ffa02222:	08 56       	R0 = R0 | R1;
ffa02224:	f0 bb       	[FP -0x4] = R0;
ffa02226:	f0 b9       	R0 = [FP -0x4];
ffa02228:	40 4f       	R0 <<= 0x8;
ffa0222a:	f0 bb       	[FP -0x4] = R0;
ffa0222c:	b9 e4 08 00 	R1 = B[FP + 0x8] (Z);
ffa02230:	f0 b9       	R0 = [FP -0x4];
ffa02232:	08 56       	R0 = R0 | R1;
ffa02234:	f0 bb       	[FP -0x4] = R0;
ffa02236:	f0 b9       	R0 = [FP -0x4];
ffa02238:	01 e8 00 00 	UNLINK;
ffa0223c:	10 00       	RTS;
	...

ffa02240 <_bfin_EMAC_init>:
ffa02240:	78 05       	[--SP] = (R7:7);
ffa02242:	00 e8 08 00 	LINK 0x20;		/* (32) */
ffa02246:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02248:	e0 bb       	[FP -0x8] = R0;
ffa0224a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0224e:	00 e1 c0 01 	R0.L = 0x1c0;		/* (448)	R0=0xff9001c0(-7339584) */
ffa02252:	ff e3 1f f3 	CALL 0xffa00890 <_printf_str>;
ffa02256:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca0 <_rxIdx> */
ffa0225a:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa0225e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02260:	10 97       	W[P2] = R0;
ffa02262:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa02266:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa0226a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0226c:	10 97       	W[P2] = R0;
ffa0226e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca0 <_rxIdx> */
ffa02272:	0a e1 8e 0c 	P2.L = 0xc8e;		/* (3214)	P2=0xff900c8e <_NetIPID> */
ffa02276:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02278:	10 97       	W[P2] = R0;
ffa0227a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8e <_NetIPID> */
ffa0227e:	0a e1 c0 0c 	P2.L = 0xcc0;		/* (3264)	P2=0xff900cc0 <_NetOurIP> */
ffa02282:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02284:	10 93       	[P2] = R0;
ffa02286:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc0 <_NetOurIP> */
ffa0228a:	0a e1 bc 0c 	P2.L = 0xcbc;		/* (3260)	P2=0xff900cbc <_NetSubnetMask> */
ffa0228e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02290:	10 93       	[P2] = R0;
ffa02292:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa02294:	f0 b0       	[SP + 0xc] = R0;
ffa02296:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa0229a:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa0229e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa022a0:	ff e3 a2 ff 	CALL 0xffa021e4 <_FormatIPAddress>;
ffa022a4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cbc <_NetSubnetMask> */
ffa022a8:	0a e1 c0 0c 	P2.L = 0xcc0;		/* (3264)	P2=0xff900cc0 <_NetOurIP> */
ffa022ac:	10 93       	[P2] = R0;
ffa022ae:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa022b0:	f0 b0       	[SP + 0xc] = R0;
ffa022b2:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa022b6:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa022ba:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa022bc:	ff e3 94 ff 	CALL 0xffa021e4 <_FormatIPAddress>;
ffa022c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc0 <_NetOurIP> */
ffa022c4:	0a e1 84 0c 	P2.L = 0xc84;		/* (3204)	P2=0xff900c84 <_NetDestIP> */
ffa022c8:	10 93       	[P2] = R0;
ffa022ca:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa022cc:	f0 b0       	[SP + 0xc] = R0;
ffa022ce:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa022d2:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa022d4:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa022d8:	ff e3 86 ff 	CALL 0xffa021e4 <_FormatIPAddress>;
ffa022dc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c84 <_NetDestIP> */
ffa022e0:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa022e4:	10 93       	[P2] = R0;
ffa022e6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc4 <_NetDataDestIP> */
ffa022ea:	0a e1 a4 0d 	P2.L = 0xda4;		/* (3492)	P2=0xff900da4 <_TcpState> */
ffa022ee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa022f0:	10 93       	[P2] = R0;
ffa022f2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900da4 <_TcpState> */
ffa022f6:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa022fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa022fc:	10 93       	[P2] = R0;
ffa022fe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa02302:	0a e1 98 0d 	P2.L = 0xd98;		/* (3480)	P2=0xff900d98 <_TcpSeqHost> */
ffa02306:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0000(165281792) */
ffa0230a:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa0230e:	10 93       	[P2] = R0;
ffa02310:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d98 <_TcpSeqHost> */
ffa02314:	0a e1 b0 0d 	P2.L = 0xdb0;		/* (3504)	P2=0xff900db0 <_TcpClientPort> */
ffa02318:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0231a:	10 97       	W[P2] = R0;
ffa0231c:	00 e3 b4 0b 	CALL 0xffa03a84 <_ARP_init>;
ffa02320:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00db0(-4190800) */
ffa02324:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02328:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0232a:	10 93       	[P2] = R0;
ffa0232c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02330:	00 e1 b4 0c 	R0.L = 0xcb4;		/* (3252)	R0=0xff900cb4 <_NetOurMAC>(-7336780) */
ffa02334:	00 e3 e8 00 	CALL 0xffa02504 <_SetupMacAddr>;
ffa02338:	47 30       	R0 = FP;
ffa0233a:	a0 67       	R0 += -0xc;		/* (-12) */
ffa0233c:	00 e3 dc 01 	CALL 0xffa026f4 <_SetupSystemRegs>;
ffa02340:	80 0c       	CC = R0 < 0x0;
ffa02342:	04 10       	IF !CC JUMP 0xffa0234a <_bfin_EMAC_init+0x10a>;
ffa02344:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02346:	c0 bb       	[FP -0x10] = R0;
ffa02348:	c0 20       	JUMP.S 0xffa024c8 <_bfin_EMAC_init+0x288>;
ffa0234a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0234c:	f0 bb       	[FP -0x4] = R0;
ffa0234e:	3b 20       	JUMP.S 0xffa023c4 <_bfin_EMAC_init+0x184>;
ffa02350:	f7 b9       	R7 = [FP -0x4];
ffa02352:	f0 b9       	R0 = [FP -0x4];
ffa02354:	00 e3 ac 02 	CALL 0xffa028ac <_SetupRxBuffer>;
ffa02358:	10 30       	R2 = R0;
ffa0235a:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900010(-7340016) */
ffa0235e:	01 e1 a4 0c 	R1.L = 0xca4;		/* (3236)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa02362:	82 c6 17 80 	R0 = R7 << 0x2;
ffa02366:	08 50       	R0 = R0 + R1;
ffa02368:	10 32       	P2 = R0;
ffa0236a:	12 93       	[P2] = R2;
ffa0236c:	f0 b9       	R0 = [FP -0x4];
ffa0236e:	00 0d       	CC = R0 <= 0x0;
ffa02370:	27 18       	IF CC JUMP 0xffa023be <_bfin_EMAC_init+0x17e>;
ffa02372:	f0 b9       	R0 = [FP -0x4];
ffa02374:	f8 67       	R0 += -0x1;		/* ( -1) */
ffa02376:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa0237a:	01 e1 a4 0c 	R1.L = 0xca4;		/* (3236)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa0237e:	10 4f       	R0 <<= 0x2;
ffa02380:	08 50       	R0 = R0 + R1;
ffa02382:	10 32       	P2 = R0;
ffa02384:	51 91       	P1 = [P2];
ffa02386:	f0 b9       	R0 = [FP -0x4];
ffa02388:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa0238c:	01 e1 a4 0c 	R1.L = 0xca4;		/* (3236)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa02390:	10 4f       	R0 <<= 0x2;
ffa02392:	08 50       	R0 = R0 + R1;
ffa02394:	10 32       	P2 = R0;
ffa02396:	10 91       	R0 = [P2];
ffa02398:	c8 b0       	[P1 + 0xc] = R0;
ffa0239a:	f0 b9       	R0 = [FP -0x4];
ffa0239c:	18 0c       	CC = R0 == 0x3;
ffa0239e:	10 10       	IF !CC JUMP 0xffa023be <_bfin_EMAC_init+0x17e>;
ffa023a0:	f0 b9       	R0 = [FP -0x4];
ffa023a2:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa023a6:	01 e1 a4 0c 	R1.L = 0xca4;		/* (3236)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa023aa:	10 4f       	R0 <<= 0x2;
ffa023ac:	08 50       	R0 = R0 + R1;
ffa023ae:	10 32       	P2 = R0;
ffa023b0:	51 91       	P1 = [P2];
ffa023b2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa023b6:	0a e1 a4 0c 	P2.L = 0xca4;		/* (3236)	P2=0xff900ca4 <_rxbuf> */
ffa023ba:	10 91       	R0 = [P2];
ffa023bc:	c8 b0       	[P1 + 0xc] = R0;
ffa023be:	f0 b9       	R0 = [FP -0x4];
ffa023c0:	08 64       	R0 += 0x1;		/* (  1) */
ffa023c2:	f0 bb       	[FP -0x4] = R0;
ffa023c4:	f0 b9       	R0 = [FP -0x4];
ffa023c6:	18 0d       	CC = R0 <= 0x3;
ffa023c8:	c4 1b       	IF CC JUMP 0xffa02350 <_bfin_EMAC_init+0x110>;
ffa023ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa023cc:	f0 bb       	[FP -0x4] = R0;
ffa023ce:	3b 20       	JUMP.S 0xffa02444 <_bfin_EMAC_init+0x204>;
ffa023d0:	f7 b9       	R7 = [FP -0x4];
ffa023d2:	f0 b9       	R0 = [FP -0x4];
ffa023d4:	00 e3 30 03 	CALL 0xffa02a34 <_SetupTxBuffer>;
ffa023d8:	10 30       	R2 = R0;
ffa023da:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa023de:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa023e2:	82 c6 17 80 	R0 = R7 << 0x2;
ffa023e6:	08 50       	R0 = R0 + R1;
ffa023e8:	10 32       	P2 = R0;
ffa023ea:	12 93       	[P2] = R2;
ffa023ec:	f0 b9       	R0 = [FP -0x4];
ffa023ee:	00 0d       	CC = R0 <= 0x0;
ffa023f0:	27 18       	IF CC JUMP 0xffa0243e <_bfin_EMAC_init+0x1fe>;
ffa023f2:	f0 b9       	R0 = [FP -0x4];
ffa023f4:	f8 67       	R0 += -0x1;		/* ( -1) */
ffa023f6:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa023fa:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa023fe:	10 4f       	R0 <<= 0x2;
ffa02400:	08 50       	R0 = R0 + R1;
ffa02402:	10 32       	P2 = R0;
ffa02404:	51 91       	P1 = [P2];
ffa02406:	f0 b9       	R0 = [FP -0x4];
ffa02408:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa0240c:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa02410:	10 4f       	R0 <<= 0x2;
ffa02412:	08 50       	R0 = R0 + R1;
ffa02414:	10 32       	P2 = R0;
ffa02416:	10 91       	R0 = [P2];
ffa02418:	c8 b0       	[P1 + 0xc] = R0;
ffa0241a:	f0 b9       	R0 = [FP -0x4];
ffa0241c:	18 0c       	CC = R0 == 0x3;
ffa0241e:	10 10       	IF !CC JUMP 0xffa0243e <_bfin_EMAC_init+0x1fe>;
ffa02420:	f0 b9       	R0 = [FP -0x4];
ffa02422:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa02426:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa0242a:	10 4f       	R0 <<= 0x2;
ffa0242c:	08 50       	R0 = R0 + R1;
ffa0242e:	10 32       	P2 = R0;
ffa02430:	51 91       	P1 = [P2];
ffa02432:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca4 <_rxbuf> */
ffa02436:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xff900c90 <_txbuf> */
ffa0243a:	10 91       	R0 = [P2];
ffa0243c:	c8 b0       	[P1 + 0xc] = R0;
ffa0243e:	f0 b9       	R0 = [FP -0x4];
ffa02440:	08 64       	R0 += 0x1;		/* (  1) */
ffa02442:	f0 bb       	[FP -0x4] = R0;
ffa02444:	f0 b9       	R0 = [FP -0x4];
ffa02446:	18 0d       	CC = R0 <= 0x3;
ffa02448:	c4 1b       	IF CC JUMP 0xffa023d0 <_bfin_EMAC_init+0x190>;
ffa0244a:	00 00       	NOP;
ffa0244c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c68(-4191128) */
ffa02450:	09 e1 40 0c 	P1.L = 0xc40;		/* (3136)	P1=0xffc00c40(-4191168) */
ffa02454:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c90 <_txbuf> */
ffa02458:	0a e1 a4 0c 	P2.L = 0xca4;		/* (3236)	P2=0xff900ca4 <_rxbuf> */
ffa0245c:	10 91       	R0 = [P2];
ffa0245e:	08 93       	[P1] = R0;
ffa02460:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c40(-4191168) */
ffa02464:	09 e1 48 0c 	P1.L = 0xc48;		/* (3144)	P1=0xffc00c48(-4191160) */
ffa02468:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca4 <_rxbuf> */
ffa0246c:	0a e1 a4 0c 	P2.L = 0xca4;		/* (3236)	P2=0xff900ca4 <_rxbuf> */
ffa02470:	10 91       	R0 = [P2];
ffa02472:	40 64       	R0 += 0x8;		/* (  8) */
ffa02474:	10 32       	P2 = R0;
ffa02476:	50 95       	R0 = W[P2] (X);
ffa02478:	08 97       	W[P1] = R0;
ffa0247a:	00 e3 bb 00 	CALL 0xffa025f0 <_PollMdcDone>;
ffa0247e:	d0 b9       	R0 = [FP -0xc];
ffa02480:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02482:	d1 4f       	R1 <<= 0x1a;
ffa02484:	08 08       	CC = R0 == R1;
ffa02486:	06 10       	IF !CC JUMP 0xffa02492 <_bfin_EMAC_init+0x252>;
ffa02488:	20 e1 02 08 	R0 = 0x802 (X);		/*		R0=0x802(2050) */
ffa0248c:	d0 4a       	BITSET (R0, 0x1a);		/* bit 26 */
ffa0248e:	e0 bb       	[FP -0x8] = R0;
ffa02490:	04 20       	JUMP.S 0xffa02498 <_bfin_EMAC_init+0x258>;
ffa02492:	20 e1 02 08 	R0 = 0x802 (X);		/*		R0=0x802(2050) */
ffa02496:	e0 bb       	[FP -0x8] = R0;
ffa02498:	e0 b9       	R0 = [FP -0x8];
ffa0249a:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0249c:	e0 bb       	[FP -0x8] = R0;
ffa0249e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca4(-4191068) */
ffa024a2:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa024a6:	e0 b9       	R0 = [FP -0x8];
ffa024a8:	10 93       	[P2] = R0;
ffa024aa:	e1 b9       	R1 = [FP -0x8];
ffa024ac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900802(-7337982) */
ffa024b0:	00 e1 d0 01 	R0.L = 0x1d0;		/* (464)	R0=0xff9001d0(-7339568) */
ffa024b4:	ff e3 ce f2 	CALL 0xffa00a50 <_printf_hex>;
ffa024b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001d0(-7339568) */
ffa024bc:	00 e1 dc 01 	R0.L = 0x1dc;		/* (476)	R0=0xff9001dc(-7339556) */
ffa024c0:	ff e3 e8 f1 	CALL 0xffa00890 <_printf_str>;
ffa024c4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024c6:	c0 bb       	[FP -0x10] = R0;
ffa024c8:	c0 b9       	R0 = [FP -0x10];
ffa024ca:	01 e8 00 00 	UNLINK;
ffa024ce:	38 05       	(R7:7) = [SP++];
ffa024d0:	10 00       	RTS;
	...

ffa024d4 <_bfin_EMAC_halt>:
ffa024d4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa024d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa024dc:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa024e0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024e2:	10 93       	[P2] = R0;
ffa024e4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa024e8:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa024ec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024ee:	10 97       	W[P2] = R0;
ffa024f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa024f4:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa024f8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024fa:	10 97       	W[P2] = R0;
ffa024fc:	01 e8 00 00 	UNLINK;
ffa02500:	10 00       	RTS;
	...

ffa02504 <_SetupMacAddr>:
ffa02504:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02508:	b8 b0       	[FP + 0x8] = R0;
ffa0250a:	ba ac       	P2 = [FP + 0x8];
ffa0250c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0250e:	10 9b       	B[P2] = R0;
ffa02510:	b8 a0       	R0 = [FP + 0x8];
ffa02512:	10 32       	P2 = R0;
ffa02514:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02516:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa02518:	10 9b       	B[P2] = R0;
ffa0251a:	b8 a0       	R0 = [FP + 0x8];
ffa0251c:	10 32       	P2 = R0;
ffa0251e:	12 6c       	P2 += 0x2;		/* (  2) */
ffa02520:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa02522:	10 9b       	B[P2] = R0;
ffa02524:	b8 a0       	R0 = [FP + 0x8];
ffa02526:	10 32       	P2 = R0;
ffa02528:	1a 6c       	P2 += 0x3;		/* (  3) */
ffa0252a:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa0252c:	10 9b       	B[P2] = R0;
ffa0252e:	b8 a0       	R0 = [FP + 0x8];
ffa02530:	10 32       	P2 = R0;
ffa02532:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02534:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa02538:	10 9b       	B[P2] = R0;
ffa0253a:	b8 a0       	R0 = [FP + 0x8];
ffa0253c:	10 32       	P2 = R0;
ffa0253e:	2a 6c       	P2 += 0x5;		/* (  5) */
ffa02540:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa02542:	10 9b       	B[P2] = R0;
ffa02544:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c48(-4191160) */
ffa02548:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa0254c:	ba ac       	P2 = [FP + 0x8];
ffa0254e:	50 99       	R0 = B[P2] (X);
ffa02550:	41 43       	R1 = R0.B (Z);
ffa02552:	b8 a0       	R0 = [FP + 0x8];
ffa02554:	10 32       	P2 = R0;
ffa02556:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02558:	50 99       	R0 = B[P2] (X);
ffa0255a:	40 43       	R0 = R0.B (Z);
ffa0255c:	40 4f       	R0 <<= 0x8;
ffa0255e:	41 56       	R1 = R1 | R0;
ffa02560:	b8 a0       	R0 = [FP + 0x8];
ffa02562:	10 32       	P2 = R0;
ffa02564:	12 6c       	P2 += 0x2;		/* (  2) */
ffa02566:	50 99       	R0 = B[P2] (X);
ffa02568:	40 43       	R0 = R0.B (Z);
ffa0256a:	80 4f       	R0 <<= 0x10;
ffa0256c:	41 56       	R1 = R1 | R0;
ffa0256e:	b8 a0       	R0 = [FP + 0x8];
ffa02570:	10 32       	P2 = R0;
ffa02572:	1a 6c       	P2 += 0x3;		/* (  3) */
ffa02574:	50 99       	R0 = B[P2] (X);
ffa02576:	40 43       	R0 = R0.B (Z);
ffa02578:	c0 4f       	R0 <<= 0x18;
ffa0257a:	01 56       	R0 = R1 | R0;
ffa0257c:	08 93       	[P1] = R0;
ffa0257e:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03004(-4182012) */
ffa02582:	09 e1 08 30 	P1.L = 0x3008;		/* (12296)	P1=0xffc03008(-4182008) */
ffa02586:	b8 a0       	R0 = [FP + 0x8];
ffa02588:	10 32       	P2 = R0;
ffa0258a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0258c:	50 99       	R0 = B[P2] (X);
ffa0258e:	41 43       	R1 = R0.B (Z);
ffa02590:	b8 a0       	R0 = [FP + 0x8];
ffa02592:	10 32       	P2 = R0;
ffa02594:	2a 6c       	P2 += 0x5;		/* (  5) */
ffa02596:	50 99       	R0 = B[P2] (X);
ffa02598:	40 43       	R0 = R0.B (Z);
ffa0259a:	40 4f       	R0 <<= 0x8;
ffa0259c:	01 56       	R0 = R1 | R0;
ffa0259e:	08 93       	[P1] = R0;
ffa025a0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa025a4:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa025a8:	10 91       	R0 = [P2];
ffa025aa:	08 30       	R1 = R0;
ffa025ac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa025b0:	00 e1 e0 01 	R0.L = 0x1e0;		/* (480)	R0=0xff9001e0(-7339552) */
ffa025b4:	ff e3 4e f2 	CALL 0xffa00a50 <_printf_hex>;
ffa025b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001e0(-7339552) */
ffa025bc:	00 e1 dc 01 	R0.L = 0x1dc;		/* (476)	R0=0xff9001dc(-7339556) */
ffa025c0:	ff e3 68 f1 	CALL 0xffa00890 <_printf_str>;
ffa025c4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03004(-4182012) */
ffa025c8:	0a e1 08 30 	P2.L = 0x3008;		/* (12296)	P2=0xffc03008(-4182008) */
ffa025cc:	10 91       	R0 = [P2];
ffa025ce:	08 30       	R1 = R0;
ffa025d0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001dc(-7339556) */
ffa025d4:	00 e1 ec 01 	R0.L = 0x1ec;		/* (492)	R0=0xff9001ec(-7339540) */
ffa025d8:	ff e3 3c f2 	CALL 0xffa00a50 <_printf_hex>;
ffa025dc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001ec(-7339540) */
ffa025e0:	00 e1 dc 01 	R0.L = 0x1dc;		/* (476)	R0=0xff9001dc(-7339556) */
ffa025e4:	ff e3 56 f1 	CALL 0xffa00890 <_printf_str>;
ffa025e8:	01 e8 00 00 	UNLINK;
ffa025ec:	10 00       	RTS;
	...

ffa025f0 <_PollMdcDone>:
ffa025f0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa025f4:	02 20       	JUMP.S 0xffa025f8 <_PollMdcDone+0x8>;
ffa025f6:	00 00       	NOP;
ffa025f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03008(-4182008) */
ffa025fc:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa02600:	10 91       	R0 = [P2];
ffa02602:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa02604:	00 02       	R0 = CC;
ffa02606:	40 43       	R0 = R0.B (Z);
ffa02608:	00 0c       	CC = R0 == 0x0;
ffa0260a:	f6 13       	IF !CC JUMP 0xffa025f6 <_PollMdcDone+0x6>;
ffa0260c:	01 e8 00 00 	UNLINK;
ffa02610:	10 00       	RTS;
	...

ffa02614 <_WrPHYReg>:
ffa02614:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02618:	38 b5       	W[FP + 0x8] = R0;
ffa0261a:	01 30       	R0 = R1;
ffa0261c:	b8 b5       	W[FP + 0xc] = R0;
ffa0261e:	02 30       	R0 = R2;
ffa02620:	38 b6       	W[FP + 0x10] = R0;
ffa02622:	ff e3 e7 ff 	CALL 0xffa025f0 <_PollMdcDone>;
ffa02626:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0262a:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa0262e:	38 a6       	R0 = W[FP + 0x10] (Z);
ffa02630:	10 93       	[P2] = R0;
ffa02632:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa02636:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa0263a:	39 a5       	R1 = W[FP + 0x8] (Z);
ffa0263c:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa0263e:	01 54       	R0 = R1 & R0;
ffa02640:	82 c6 58 84 	R2 = R0 << 0xb;
ffa02644:	b9 a5       	R1 = W[FP + 0xc] (Z);
ffa02646:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa02648:	01 54       	R0 = R1 & R0;
ffa0264a:	30 4f       	R0 <<= 0x6;
ffa0264c:	42 56       	R1 = R2 | R0;
ffa0264e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02650:	01 56       	R0 = R1 | R0;
ffa02652:	10 93       	[P2] = R0;
ffa02654:	01 e8 00 00 	UNLINK;
ffa02658:	10 00       	RTS;
	...

ffa0265c <_RdPHYReg>:
ffa0265c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02660:	38 b5       	W[FP + 0x8] = R0;
ffa02662:	01 30       	R0 = R1;
ffa02664:	b8 b5       	W[FP + 0xc] = R0;
ffa02666:	ff e3 c5 ff 	CALL 0xffa025f0 <_PollMdcDone>;
ffa0266a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0266e:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa02672:	39 a5       	R1 = W[FP + 0x8] (Z);
ffa02674:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa02676:	01 54       	R0 = R1 & R0;
ffa02678:	82 c6 58 84 	R2 = R0 << 0xb;
ffa0267c:	b9 a5       	R1 = W[FP + 0xc] (Z);
ffa0267e:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa02680:	01 54       	R0 = R1 & R0;
ffa02682:	30 4f       	R0 <<= 0x6;
ffa02684:	02 56       	R0 = R2 | R0;
ffa02686:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02688:	10 93       	[P2] = R0;
ffa0268a:	ff e3 b3 ff 	CALL 0xffa025f0 <_PollMdcDone>;
ffa0268e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa02692:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa02696:	10 91       	R0 = [P2];
ffa02698:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0269c:	b8 a5       	R0 = W[FP + 0xc] (Z);
ffa0269e:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900001(-7340031) */
ffa026a2:	01 e1 44 0c 	R1.L = 0xc44;		/* (3140)	R1=0xff900c44 <_PHYregs>(-7336892) */
ffa026a6:	08 4f       	R0 <<= 0x1;
ffa026a8:	08 50       	R0 = R0 + R1;
ffa026aa:	10 32       	P2 = R0;
ffa026ac:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa026b0:	10 97       	W[P2] = R0;
ffa026b2:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa026b6:	01 e8 00 00 	UNLINK;
ffa026ba:	10 00       	RTS;

ffa026bc <_SoftResetPHY>:
ffa026bc:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa026c0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026c2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa026c4:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa026c8:	ff e3 a6 ff 	CALL 0xffa02614 <_WrPHYReg>;
ffa026cc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026ce:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa026d0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa026d2:	ff e3 a1 ff 	CALL 0xffa02614 <_WrPHYReg>;
ffa026d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026d8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa026da:	ff e3 c1 ff 	CALL 0xffa0265c <_RdPHYReg>;
ffa026de:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa026e2:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa026e6:	80 42       	R0 = R0.L (X);
ffa026e8:	80 0c       	CC = R0 < 0x0;
ffa026ea:	f6 1b       	IF CC JUMP 0xffa026d6 <_SoftResetPHY+0x1a>;
ffa026ec:	01 e8 00 00 	UNLINK;
ffa026f0:	10 00       	RTS;
	...

ffa026f4 <_SetupSystemRegs>:
ffa026f4:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa026f8:	b8 b0       	[FP + 0x8] = R0;
ffa026fa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa026fe:	00 e1 f8 01 	R0.L = 0x1f8;		/* (504)	R0=0xff9001f8(-7339528) */
ffa02702:	ff e3 c7 f0 	CALL 0xffa00890 <_printf_str>;
ffa02706:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02708:	f0 bb       	[FP -0x4] = R0;
ffa0270a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03008(-4182008) */
ffa0270e:	09 e1 14 32 	P1.L = 0x3214;		/* (12820)	P1=0xffc03214(-4181484) */
ffa02712:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa02716:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa0271a:	51 95       	R1 = W[P2] (X);
ffa0271c:	20 e1 ff cf 	R0 = -0x3001 (X);		/*		R0=0xffffcfff(-12289) */
ffa02720:	01 54       	R0 = R1 & R0;
ffa02722:	08 97       	W[P1] = R0;
ffa02724:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03214(-4181484) */
ffa02728:	09 e1 14 32 	P1.L = 0x3214;		/* (12820)	P1=0xffc03214(-4181484) */
ffa0272c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa02730:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa02734:	50 95       	R0 = W[P2] (X);
ffa02736:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa02738:	08 97       	W[P1] = R0;
ffa0273a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03214(-4181484) */
ffa0273e:	09 e1 04 32 	P1.L = 0x3204;		/* (12804)	P1=0xffc03204(-4181500) */
ffa02742:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa02746:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa0274a:	51 95       	R1 = W[P2] (X);
ffa0274c:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa02750:	01 56       	R0 = R1 | R0;
ffa02752:	08 97       	W[P1] = R0;
ffa02754:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa02758:	0a e1 08 32 	P2.L = 0x3208;		/* (12808)	P2=0xffc03208(-4181496) */
ffa0275c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0275e:	10 97       	W[P2] = R0;
ffa02760:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03208(-4181496) */
ffa02764:	0a e1 18 32 	P2.L = 0x3218;		/* (12824)	P2=0xffc03218(-4181480) */
ffa02768:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa0276a:	10 97       	W[P2] = R0;
ffa0276c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc03204(-4181500) */
ffa02770:	09 e1 08 00 	P1.L = 0x8;		/* (  8)	P1=0xffc00008(-4194296) */
ffa02774:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03218(-4181480) */
ffa02778:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa0277c:	50 95       	R0 = W[P2] (X);
ffa0277e:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa02780:	08 97       	W[P1] = R0;
ffa02782:	20 e1 00 18 	R0 = 0x1800 (X);		/*		R0=0x1800(6144) */
ffa02786:	78 e6 fa ff 	W[FP + -0xc] = R0;
ffa0278a:	79 e5 fa ff 	R1 = W[FP + -0xc] (X);
ffa0278e:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02790:	01 56       	R0 = R1 | R0;
ffa02792:	78 e6 fa ff 	W[FP + -0xc] = R0;
ffa02796:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa0279a:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa0279e:	78 e4 fa ff 	R0 = W[FP + -0xc] (Z);
ffa027a2:	10 93       	[P2] = R0;
ffa027a4:	20 e1 00 31 	R0 = 0x3100 (X);		/*		R0=0x3100(12544) */
ffa027a8:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa027ac:	7a e4 fc ff 	R2 = W[FP + -0x8] (Z);
ffa027b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027b2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa027b4:	ff e3 30 ff 	CALL 0xffa02614 <_WrPHYReg>;
ffa027b8:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa027bc:	ff e3 da f5 	CALL 0xffa01370 <_udelay>;
ffa027c0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027c2:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa027c4:	ff e3 4c ff 	CALL 0xffa0265c <_RdPHYReg>;
ffa027c8:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa027cc:	f0 b9       	R0 = [FP -0x4];
ffa027ce:	21 e1 b8 0b 	R1 = 0xbb8 (X);		/*		R1=0xbb8(3000) */
ffa027d2:	08 09       	CC = R0 <= R1;
ffa027d4:	0a 18       	IF CC JUMP 0xffa027e8 <_SetupSystemRegs+0xf4>;
ffa027d6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa027da:	00 e1 10 02 	R0.L = 0x210;		/* (528)	R0=0xff900210(-7339504) */
ffa027de:	ff e3 59 f0 	CALL 0xffa00890 <_printf_str>;
ffa027e2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa027e4:	c0 bb       	[FP -0x10] = R0;
ffa027e6:	5e 20       	JUMP.S 0xffa028a2 <_SetupSystemRegs+0x1ae>;
ffa027e8:	f0 b9       	R0 = [FP -0x4];
ffa027ea:	08 64       	R0 += 0x1;		/* (  1) */
ffa027ec:	f0 bb       	[FP -0x4] = R0;
ffa027ee:	79 e4 fc ff 	R1 = W[FP + -0x8] (Z);
ffa027f2:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa027f4:	01 54       	R0 = R1 & R0;
ffa027f6:	00 0c       	CC = R0 == 0x0;
ffa027f8:	e0 1b       	IF CC JUMP 0xffa027b8 <_SetupSystemRegs+0xc4>;
ffa027fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027fc:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa027fe:	ff e3 2f ff 	CALL 0xffa0265c <_RdPHYReg>;
ffa02802:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa02806:	79 e4 fc ff 	R1 = W[FP + -0x8] (Z);
ffa0280a:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa0280e:	01 54       	R0 = R1 & R0;
ffa02810:	00 0c       	CC = R0 == 0x0;
ffa02812:	08 10       	IF !CC JUMP 0xffa02822 <_SetupSystemRegs+0x12e>;
ffa02814:	78 e4 fc ff 	R0 = W[FP + -0x8] (Z);
ffa02818:	21 e1 40 00 	R1 = 0x40 (X);		/*		R1=0x40( 64) */
ffa0281c:	08 54       	R0 = R0 & R1;
ffa0281e:	00 0c       	CC = R0 == 0x0;
ffa02820:	06 18       	IF CC JUMP 0xffa0282c <_SetupSystemRegs+0x138>;
ffa02822:	ba ac       	P2 = [FP + 0x8];
ffa02824:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02826:	d0 4f       	R0 <<= 0x1a;
ffa02828:	10 93       	[P2] = R0;
ffa0282a:	04 20       	JUMP.S 0xffa02832 <_SetupSystemRegs+0x13e>;
ffa0282c:	ba ac       	P2 = [FP + 0x8];
ffa0282e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02830:	10 93       	[P2] = R0;
ffa02832:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa02836:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa0283a:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0283c:	10 93       	[P2] = R0;
ffa0283e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa02842:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa02846:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02848:	10 97       	W[P2] = R0;
ffa0284a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa0284e:	0a e1 94 0c 	P2.L = 0xc94;		/* (3220)	P2=0xffc00c94(-4191084) */
ffa02852:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02854:	10 97       	W[P2] = R0;
ffa02856:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c94(-4191084) */
ffa0285a:	0a e1 98 0c 	P2.L = 0xc98;		/* (3224)	P2=0xffc00c98(-4191080) */
ffa0285e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02860:	10 97       	W[P2] = R0;
ffa02862:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c98(-4191080) */
ffa02866:	0a e1 9c 0c 	P2.L = 0xc9c;		/* (3228)	P2=0xffc00c9c(-4191076) */
ffa0286a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0286c:	10 97       	W[P2] = R0;
ffa0286e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c9c(-4191076) */
ffa02872:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa02876:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02878:	10 97       	W[P2] = R0;
ffa0287a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c50(-4191152) */
ffa0287e:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xffc00c54(-4191148) */
ffa02882:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02884:	10 97       	W[P2] = R0;
ffa02886:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c54(-4191148) */
ffa0288a:	0a e1 58 0c 	P2.L = 0xc58;		/* (3160)	P2=0xffc00c58(-4191144) */
ffa0288e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02890:	10 97       	W[P2] = R0;
ffa02892:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c58(-4191144) */
ffa02896:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xffc00c5c(-4191140) */
ffa0289a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0289c:	10 97       	W[P2] = R0;
ffa0289e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa028a0:	c1 bb       	[FP -0x10] = R1;
ffa028a2:	c0 b9       	R0 = [FP -0x10];
ffa028a4:	01 e8 00 00 	UNLINK;
ffa028a8:	10 00       	RTS;
	...

ffa028ac <_SetupRxBuffer>:
ffa028ac:	00 e8 0d 00 	LINK 0x34;		/* (52) */
ffa028b0:	b8 b0       	[FP + 0x8] = R0;
ffa028b2:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa028b4:	e0 bb       	[FP -0x8] = R0;
ffa028b6:	e1 b9       	R1 = [FP -0x8];
ffa028b8:	20 e1 10 06 	R0 = 0x610 (X);		/*		R0=0x610(1552) */
ffa028bc:	01 50       	R0 = R1 + R0;
ffa028be:	f0 bb       	[FP -0x4] = R0;
ffa028c0:	b9 a0       	R1 = [FP + 0x8];
ffa028c2:	f0 b9       	R0 = [FP -0x4];
ffa028c4:	c8 40       	R0 *= R1;
ffa028c6:	08 30       	R1 = R0;
ffa028c8:	20 e1 01 f8 	R0 = -0x7ff (X);		/*		R0=0xfffff801(-2047) */
ffa028cc:	60 4f       	R0 <<= 0xc;
ffa028ce:	01 50       	R0 = R1 + R0;
ffa028d0:	d0 bb       	[FP -0xc] = R0;
ffa028d2:	b9 a0       	R1 = [FP + 0x8];
ffa028d4:	f0 b9       	R0 = [FP -0x4];
ffa028d6:	c8 40       	R0 *= R1;
ffa028d8:	08 30       	R1 = R0;
ffa028da:	e0 b9       	R0 = [FP -0x8];
ffa028dc:	41 50       	R1 = R1 + R0;
ffa028de:	20 e1 01 f8 	R0 = -0x7ff (X);		/*		R0=0xfffff801(-2047) */
ffa028e2:	60 4f       	R0 <<= 0xc;
ffa028e4:	01 50       	R0 = R1 + R0;
ffa028e6:	c0 bb       	[FP -0x10] = R0;
ffa028e8:	d0 b9       	R0 = [FP -0xc];
ffa028ea:	e2 b9       	R2 = [FP -0x8];
ffa028ec:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa028ee:	ff e3 7f f2 	CALL 0xffa00dec <_memset_>;
ffa028f2:	da b9       	P2 = [FP -0xc];
ffa028f4:	c0 b9       	R0 = [FP -0x10];
ffa028f6:	90 b1       	[P2 + 0x18] = R0;
ffa028f8:	c0 b9       	R0 = [FP -0x10];
ffa028fa:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa028fe:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02902:	ff e3 75 f2 	CALL 0xffa00dec <_memset_>;
ffa02906:	d0 b9       	R0 = [FP -0xc];
ffa02908:	60 64       	R0 += 0xc;		/* ( 12) */
ffa0290a:	da b9       	P2 = [FP -0xc];
ffa0290c:	10 93       	[P2] = R0;
ffa0290e:	da b9       	P2 = [FP -0xc];
ffa02910:	90 a1       	R0 = [P2 + 0x18];
ffa02912:	da b9       	P2 = [FP -0xc];
ffa02914:	50 b0       	[P2 + 0x4] = R0;
ffa02916:	da b9       	P2 = [FP -0xc];
ffa02918:	90 e5 08 00 	R0 = B[P2 + 0x8] (X);
ffa0291c:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0291e:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02922:	da b9       	P2 = [FP -0xc];
ffa02924:	90 e5 08 00 	R0 = B[P2 + 0x8] (X);
ffa02928:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0292a:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa0292e:	da b9       	P2 = [FP -0xc];
ffa02930:	90 e5 08 00 	R0 = B[P2 + 0x8] (X);
ffa02934:	b8 e6 ec ff 	B[FP + -0x14] = R0;
ffa02938:	98 63       	R0 = -0xd (X);		/*		R0=0xfffffff3(-13) */
ffa0293a:	b9 e5 ec ff 	R1 = B[FP + -0x14] (X);
ffa0293e:	01 54       	R0 = R1 & R0;
ffa02940:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02942:	b8 e6 ec ff 	B[FP + -0x14] = R0;
ffa02946:	b8 e5 ec ff 	R0 = B[FP + -0x14] (X);
ffa0294a:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa0294e:	da b9       	P2 = [FP -0xc];
ffa02950:	91 e5 09 00 	R1 = B[P2 + 0x9] (X);
ffa02954:	b9 e6 e8 ff 	B[FP + -0x18] = R1;
ffa02958:	80 63       	R0 = -0x10 (X);		/*		R0=0xfffffff0(-16) */
ffa0295a:	b9 e5 e8 ff 	R1 = B[FP + -0x18] (X);
ffa0295e:	01 54       	R0 = R1 & R0;
ffa02960:	08 30       	R1 = R0;
ffa02962:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa02964:	01 56       	R0 = R1 | R0;
ffa02966:	b8 e6 e8 ff 	B[FP + -0x18] = R0;
ffa0296a:	b8 e5 e8 ff 	R0 = B[FP + -0x18] (X);
ffa0296e:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02972:	da b9       	P2 = [FP -0xc];
ffa02974:	91 e5 09 00 	R1 = B[P2 + 0x9] (X);
ffa02978:	b9 e6 e4 ff 	B[FP + -0x1c] = R1;
ffa0297c:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa02980:	b9 e5 e4 ff 	R1 = B[FP + -0x1c] (X);
ffa02984:	01 56       	R0 = R1 | R0;
ffa02986:	b8 e6 e4 ff 	B[FP + -0x1c] = R0;
ffa0298a:	b8 e5 e4 ff 	R0 = B[FP + -0x1c] (X);
ffa0298e:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02992:	d0 b9       	R0 = [FP -0xc];
ffa02994:	da b9       	P2 = [FP -0xc];
ffa02996:	d0 b0       	[P2 + 0xc] = R0;
ffa02998:	d0 b9       	R0 = [FP -0xc];
ffa0299a:	20 65       	R0 += 0x24;		/* ( 36) */
ffa0299c:	da b9       	P2 = [FP -0xc];
ffa0299e:	10 b1       	[P2 + 0x10] = R0;
ffa029a0:	da b9       	P2 = [FP -0xc];
ffa029a2:	90 e5 14 00 	R0 = B[P2 + 0x14] (X);
ffa029a6:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa029a8:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa029ac:	da b9       	P2 = [FP -0xc];
ffa029ae:	90 e5 14 00 	R0 = B[P2 + 0x14] (X);
ffa029b2:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa029b4:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa029b8:	da b9       	P2 = [FP -0xc];
ffa029ba:	91 e5 14 00 	R1 = B[P2 + 0x14] (X);
ffa029be:	b9 e6 e0 ff 	B[FP + -0x20] = R1;
ffa029c2:	98 63       	R0 = -0xd (X);		/*		R0=0xfffffff3(-13) */
ffa029c4:	b9 e5 e0 ff 	R1 = B[FP + -0x20] (X);
ffa029c8:	01 54       	R0 = R1 & R0;
ffa029ca:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa029cc:	b8 e6 e0 ff 	B[FP + -0x20] = R0;
ffa029d0:	b8 e5 e0 ff 	R0 = B[FP + -0x20] (X);
ffa029d4:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa029d8:	da b9       	P2 = [FP -0xc];
ffa029da:	91 e5 14 00 	R1 = B[P2 + 0x14] (X);
ffa029de:	20 e1 80 ff 	R0 = -0x80 (X);		/*		R0=0xffffff80(-128) */
ffa029e2:	01 56       	R0 = R1 | R0;
ffa029e4:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa029e8:	da b9       	P2 = [FP -0xc];
ffa029ea:	91 e5 15 00 	R1 = B[P2 + 0x15] (X);
ffa029ee:	b9 e6 dc ff 	B[FP + -0x24] = R1;
ffa029f2:	80 63       	R0 = -0x10 (X);		/*		R0=0xfffffff0(-16) */
ffa029f4:	b9 e5 dc ff 	R1 = B[FP + -0x24] (X);
ffa029f8:	01 54       	R0 = R1 & R0;
ffa029fa:	08 30       	R1 = R0;
ffa029fc:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa029fe:	01 56       	R0 = R1 | R0;
ffa02a00:	b8 e6 dc ff 	B[FP + -0x24] = R0;
ffa02a04:	b8 e5 dc ff 	R0 = B[FP + -0x24] (X);
ffa02a08:	90 e6 15 00 	B[P2 + 0x15] = R0;
ffa02a0c:	da b9       	P2 = [FP -0xc];
ffa02a0e:	91 e5 15 00 	R1 = B[P2 + 0x15] (X);
ffa02a12:	b9 e6 d8 ff 	B[FP + -0x28] = R1;
ffa02a16:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa02a1a:	b9 e5 d8 ff 	R1 = B[FP + -0x28] (X);
ffa02a1e:	01 56       	R0 = R1 | R0;
ffa02a20:	b8 e6 d8 ff 	B[FP + -0x28] = R0;
ffa02a24:	b8 e5 d8 ff 	R0 = B[FP + -0x28] (X);
ffa02a28:	90 e6 15 00 	B[P2 + 0x15] = R0;
ffa02a2c:	d0 b9       	R0 = [FP -0xc];
ffa02a2e:	01 e8 00 00 	UNLINK;
ffa02a32:	10 00       	RTS;

ffa02a34 <_SetupTxBuffer>:
ffa02a34:	00 e8 0d 00 	LINK 0x34;		/* (52) */
ffa02a38:	b8 b0       	[FP + 0x8] = R0;
ffa02a3a:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa02a3c:	e0 bb       	[FP -0x8] = R0;
ffa02a3e:	e1 b9       	R1 = [FP -0x8];
ffa02a40:	20 e1 10 06 	R0 = 0x610 (X);		/*		R0=0x610(1552) */
ffa02a44:	01 50       	R0 = R1 + R0;
ffa02a46:	f0 bb       	[FP -0x4] = R0;
ffa02a48:	b9 a0       	R1 = [FP + 0x8];
ffa02a4a:	f0 b9       	R0 = [FP -0x4];
ffa02a4c:	c8 40       	R0 *= R1;
ffa02a4e:	08 30       	R1 = R0;
ffa02a50:	20 e1 03 f8 	R0 = -0x7fd (X);		/*		R0=0xfffff803(-2045) */
ffa02a54:	60 4f       	R0 <<= 0xc;
ffa02a56:	01 50       	R0 = R1 + R0;
ffa02a58:	d0 bb       	[FP -0xc] = R0;
ffa02a5a:	b9 a0       	R1 = [FP + 0x8];
ffa02a5c:	f0 b9       	R0 = [FP -0x4];
ffa02a5e:	c8 40       	R0 *= R1;
ffa02a60:	08 30       	R1 = R0;
ffa02a62:	e0 b9       	R0 = [FP -0x8];
ffa02a64:	41 50       	R1 = R1 + R0;
ffa02a66:	20 e1 03 f8 	R0 = -0x7fd (X);		/*		R0=0xfffff803(-2045) */
ffa02a6a:	60 4f       	R0 <<= 0xc;
ffa02a6c:	01 50       	R0 = R1 + R0;
ffa02a6e:	c0 bb       	[FP -0x10] = R0;
ffa02a70:	d0 b9       	R0 = [FP -0xc];
ffa02a72:	e2 b9       	R2 = [FP -0x8];
ffa02a74:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02a76:	ff e3 bb f1 	CALL 0xffa00dec <_memset_>;
ffa02a7a:	da b9       	P2 = [FP -0xc];
ffa02a7c:	c0 b9       	R0 = [FP -0x10];
ffa02a7e:	90 b1       	[P2 + 0x18] = R0;
ffa02a80:	c0 b9       	R0 = [FP -0x10];
ffa02a82:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa02a86:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02a8a:	ff e3 b1 f1 	CALL 0xffa00dec <_memset_>;
ffa02a8e:	d0 b9       	R0 = [FP -0xc];
ffa02a90:	60 64       	R0 += 0xc;		/* ( 12) */
ffa02a92:	da b9       	P2 = [FP -0xc];
ffa02a94:	10 93       	[P2] = R0;
ffa02a96:	da b9       	P2 = [FP -0xc];
ffa02a98:	90 a1       	R0 = [P2 + 0x18];
ffa02a9a:	da b9       	P2 = [FP -0xc];
ffa02a9c:	50 b0       	[P2 + 0x4] = R0;
ffa02a9e:	da b9       	P2 = [FP -0xc];
ffa02aa0:	90 e5 08 00 	R0 = B[P2 + 0x8] (X);
ffa02aa4:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02aa6:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02aaa:	da b9       	P2 = [FP -0xc];
ffa02aac:	90 e5 08 00 	R0 = B[P2 + 0x8] (X);
ffa02ab0:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa02ab2:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02ab6:	da b9       	P2 = [FP -0xc];
ffa02ab8:	90 e5 08 00 	R0 = B[P2 + 0x8] (X);
ffa02abc:	b8 e6 ec ff 	B[FP + -0x14] = R0;
ffa02ac0:	98 63       	R0 = -0xd (X);		/*		R0=0xfffffff3(-13) */
ffa02ac2:	b9 e5 ec ff 	R1 = B[FP + -0x14] (X);
ffa02ac6:	01 54       	R0 = R1 & R0;
ffa02ac8:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02aca:	b8 e6 ec ff 	B[FP + -0x14] = R0;
ffa02ace:	b8 e5 ec ff 	R0 = B[FP + -0x14] (X);
ffa02ad2:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02ad6:	da b9       	P2 = [FP -0xc];
ffa02ad8:	91 e5 09 00 	R1 = B[P2 + 0x9] (X);
ffa02adc:	b9 e6 e8 ff 	B[FP + -0x18] = R1;
ffa02ae0:	80 63       	R0 = -0x10 (X);		/*		R0=0xfffffff0(-16) */
ffa02ae2:	b9 e5 e8 ff 	R1 = B[FP + -0x18] (X);
ffa02ae6:	01 54       	R0 = R1 & R0;
ffa02ae8:	08 30       	R1 = R0;
ffa02aea:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa02aec:	01 56       	R0 = R1 | R0;
ffa02aee:	b8 e6 e8 ff 	B[FP + -0x18] = R0;
ffa02af2:	b8 e5 e8 ff 	R0 = B[FP + -0x18] (X);
ffa02af6:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02afa:	da b9       	P2 = [FP -0xc];
ffa02afc:	91 e5 09 00 	R1 = B[P2 + 0x9] (X);
ffa02b00:	b9 e6 e4 ff 	B[FP + -0x1c] = R1;
ffa02b04:	20 e1 70 00 	R0 = 0x70 (X);		/*		R0=0x70(112) */
ffa02b08:	b9 e5 e4 ff 	R1 = B[FP + -0x1c] (X);
ffa02b0c:	01 56       	R0 = R1 | R0;
ffa02b0e:	b8 e6 e4 ff 	B[FP + -0x1c] = R0;
ffa02b12:	b8 e5 e4 ff 	R0 = B[FP + -0x1c] (X);
ffa02b16:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02b1a:	d0 b9       	R0 = [FP -0xc];
ffa02b1c:	da b9       	P2 = [FP -0xc];
ffa02b1e:	d0 b0       	[P2 + 0xc] = R0;
ffa02b20:	d0 b9       	R0 = [FP -0xc];
ffa02b22:	40 65       	R0 += 0x28;		/* ( 40) */
ffa02b24:	da b9       	P2 = [FP -0xc];
ffa02b26:	10 b1       	[P2 + 0x10] = R0;
ffa02b28:	da b9       	P2 = [FP -0xc];
ffa02b2a:	90 e5 14 00 	R0 = B[P2 + 0x14] (X);
ffa02b2e:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02b30:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa02b34:	da b9       	P2 = [FP -0xc];
ffa02b36:	90 e5 14 00 	R0 = B[P2 + 0x14] (X);
ffa02b3a:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02b3c:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa02b40:	da b9       	P2 = [FP -0xc];
ffa02b42:	91 e5 14 00 	R1 = B[P2 + 0x14] (X);
ffa02b46:	b9 e6 e0 ff 	B[FP + -0x20] = R1;
ffa02b4a:	98 63       	R0 = -0xd (X);		/*		R0=0xfffffff3(-13) */
ffa02b4c:	b9 e5 e0 ff 	R1 = B[FP + -0x20] (X);
ffa02b50:	01 54       	R0 = R1 & R0;
ffa02b52:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02b54:	b8 e6 e0 ff 	B[FP + -0x20] = R0;
ffa02b58:	b8 e5 e0 ff 	R0 = B[FP + -0x20] (X);
ffa02b5c:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa02b60:	da b9       	P2 = [FP -0xc];
ffa02b62:	91 e5 14 00 	R1 = B[P2 + 0x14] (X);
ffa02b66:	20 e1 80 ff 	R0 = -0x80 (X);		/*		R0=0xffffff80(-128) */
ffa02b6a:	01 56       	R0 = R1 | R0;
ffa02b6c:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa02b70:	da b9       	P2 = [FP -0xc];
ffa02b72:	91 e5 15 00 	R1 = B[P2 + 0x15] (X);
ffa02b76:	b9 e6 dc ff 	B[FP + -0x24] = R1;
ffa02b7a:	80 63       	R0 = -0x10 (X);		/*		R0=0xfffffff0(-16) */
ffa02b7c:	b9 e5 dc ff 	R1 = B[FP + -0x24] (X);
ffa02b80:	01 54       	R0 = R1 & R0;
ffa02b82:	b8 e6 dc ff 	B[FP + -0x24] = R0;
ffa02b86:	b8 e5 dc ff 	R0 = B[FP + -0x24] (X);
ffa02b8a:	90 e6 15 00 	B[P2 + 0x15] = R0;
ffa02b8e:	da b9       	P2 = [FP -0xc];
ffa02b90:	91 e5 15 00 	R1 = B[P2 + 0x15] (X);
ffa02b94:	b9 e6 d8 ff 	B[FP + -0x28] = R1;
ffa02b98:	20 e1 8f ff 	R0 = -0x71 (X);		/*		R0=0xffffff8f(-113) */
ffa02b9c:	b9 e5 d8 ff 	R1 = B[FP + -0x28] (X);
ffa02ba0:	01 54       	R0 = R1 & R0;
ffa02ba2:	b8 e6 d8 ff 	B[FP + -0x28] = R0;
ffa02ba6:	b8 e5 d8 ff 	R0 = B[FP + -0x28] (X);
ffa02baa:	90 e6 15 00 	B[P2 + 0x15] = R0;
ffa02bae:	d0 b9       	R0 = [FP -0xc];
ffa02bb0:	01 e8 00 00 	UNLINK;
ffa02bb4:	10 00       	RTS;
	...

ffa02bb8 <_NetCksum>:
ffa02bb8:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa02bbc:	b8 b0       	[FP + 0x8] = R0;
ffa02bbe:	f9 b0       	[FP + 0xc] = R1;
ffa02bc0:	b8 a0       	R0 = [FP + 0x8];
ffa02bc2:	f0 bb       	[FP -0x4] = R0;
ffa02bc4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02bc6:	e0 bb       	[FP -0x8] = R0;
ffa02bc8:	0a 20       	JUMP.S 0xffa02bdc <_NetCksum+0x24>;
ffa02bca:	fa b9       	P2 = [FP -0x4];
ffa02bcc:	50 95       	R0 = W[P2] (X);
ffa02bce:	c1 42       	R1 = R0.L (Z);
ffa02bd0:	e0 b9       	R0 = [FP -0x8];
ffa02bd2:	08 50       	R0 = R0 + R1;
ffa02bd4:	e0 bb       	[FP -0x8] = R0;
ffa02bd6:	f0 b9       	R0 = [FP -0x4];
ffa02bd8:	10 64       	R0 += 0x2;		/* (  2) */
ffa02bda:	f0 bb       	[FP -0x4] = R0;
ffa02bdc:	f8 a0       	R0 = [FP + 0xc];
ffa02bde:	00 0d       	CC = R0 <= 0x0;
ffa02be0:	18 02       	CC = !CC;
ffa02be2:	00 02       	R0 = CC;
ffa02be4:	08 30       	R1 = R0;
ffa02be6:	f8 a0       	R0 = [FP + 0xc];
ffa02be8:	f8 67       	R0 += -0x1;		/* ( -1) */
ffa02bea:	f8 b0       	[FP + 0xc] = R0;
ffa02bec:	48 43       	R0 = R1.B (Z);
ffa02bee:	00 0c       	CC = R0 == 0x0;
ffa02bf0:	ed 13       	IF !CC JUMP 0xffa02bca <_NetCksum+0x12>;
ffa02bf2:	e0 b9       	R0 = [FP -0x8];
ffa02bf4:	c1 42       	R1 = R0.L (Z);
ffa02bf6:	e0 b9       	R0 = [FP -0x8];
ffa02bf8:	80 4e       	R0 >>= 0x10;
ffa02bfa:	01 50       	R0 = R1 + R0;
ffa02bfc:	e0 bb       	[FP -0x8] = R0;
ffa02bfe:	e0 b9       	R0 = [FP -0x8];
ffa02c00:	c0 42       	R0 = R0.L (Z);
ffa02c02:	01 e8 00 00 	UNLINK;
ffa02c06:	10 00       	RTS;

ffa02c08 <_htons>:
ffa02c08:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa02c0c:	38 b5       	W[FP + 0x8] = R0;
ffa02c0e:	38 a9       	R0 = W[FP + 0x8] (X);
ffa02c10:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa02c14:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa02c16:	40 4e       	R0 >>= 0x8;
ffa02c18:	40 43       	R0 = R0.B (Z);
ffa02c1a:	38 b5       	W[FP + 0x8] = R0;
ffa02c1c:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa02c20:	40 4f       	R0 <<= 0x8;
ffa02c22:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa02c26:	39 a9       	R1 = W[FP + 0x8] (X);
ffa02c28:	78 e5 fe ff 	R0 = W[FP + -0x4] (X);
ffa02c2c:	01 56       	R0 = R1 | R0;
ffa02c2e:	38 b5       	W[FP + 0x8] = R0;
ffa02c30:	38 a5       	R0 = W[FP + 0x8] (Z);
ffa02c32:	01 e8 00 00 	UNLINK;
ffa02c36:	10 00       	RTS;

ffa02c38 <_htonl>:
ffa02c38:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa02c3c:	b8 b0       	[FP + 0x8] = R0;
ffa02c3e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02c40:	f0 bb       	[FP -0x4] = R0;
ffa02c42:	b8 a0       	R0 = [FP + 0x8];
ffa02c44:	40 43       	R0 = R0.B (Z);
ffa02c46:	f0 bb       	[FP -0x4] = R0;
ffa02c48:	f0 b9       	R0 = [FP -0x4];
ffa02c4a:	40 4f       	R0 <<= 0x8;
ffa02c4c:	f0 bb       	[FP -0x4] = R0;
ffa02c4e:	b8 a0       	R0 = [FP + 0x8];
ffa02c50:	40 4e       	R0 >>= 0x8;
ffa02c52:	b8 b0       	[FP + 0x8] = R0;
ffa02c54:	b8 a0       	R0 = [FP + 0x8];
ffa02c56:	41 43       	R1 = R0.B (Z);
ffa02c58:	f0 b9       	R0 = [FP -0x4];
ffa02c5a:	08 56       	R0 = R0 | R1;
ffa02c5c:	f0 bb       	[FP -0x4] = R0;
ffa02c5e:	f0 b9       	R0 = [FP -0x4];
ffa02c60:	40 4f       	R0 <<= 0x8;
ffa02c62:	f0 bb       	[FP -0x4] = R0;
ffa02c64:	b8 a0       	R0 = [FP + 0x8];
ffa02c66:	40 4e       	R0 >>= 0x8;
ffa02c68:	b8 b0       	[FP + 0x8] = R0;
ffa02c6a:	b8 a0       	R0 = [FP + 0x8];
ffa02c6c:	41 43       	R1 = R0.B (Z);
ffa02c6e:	f0 b9       	R0 = [FP -0x4];
ffa02c70:	08 56       	R0 = R0 | R1;
ffa02c72:	f0 bb       	[FP -0x4] = R0;
ffa02c74:	f0 b9       	R0 = [FP -0x4];
ffa02c76:	40 4f       	R0 <<= 0x8;
ffa02c78:	f0 bb       	[FP -0x4] = R0;
ffa02c7a:	b8 a0       	R0 = [FP + 0x8];
ffa02c7c:	40 4e       	R0 >>= 0x8;
ffa02c7e:	b8 b0       	[FP + 0x8] = R0;
ffa02c80:	b8 a0       	R0 = [FP + 0x8];
ffa02c82:	41 43       	R1 = R0.B (Z);
ffa02c84:	f0 b9       	R0 = [FP -0x4];
ffa02c86:	08 56       	R0 = R0 | R1;
ffa02c88:	f0 bb       	[FP -0x4] = R0;
ffa02c8a:	f0 b9       	R0 = [FP -0x4];
ffa02c8c:	01 e8 00 00 	UNLINK;
ffa02c90:	10 00       	RTS;
	...

ffa02c94 <_pack4chars>:
ffa02c94:	00 e8 01 00 	LINK 0x4;		/* (4) */
ffa02c98:	b8 b0       	[FP + 0x8] = R0;
ffa02c9a:	ba ac       	P2 = [FP + 0x8];
ffa02c9c:	50 99       	R0 = B[P2] (X);
ffa02c9e:	40 43       	R0 = R0.B (Z);
ffa02ca0:	f0 bb       	[FP -0x4] = R0;
ffa02ca2:	b8 a0       	R0 = [FP + 0x8];
ffa02ca4:	08 64       	R0 += 0x1;		/* (  1) */
ffa02ca6:	b8 b0       	[FP + 0x8] = R0;
ffa02ca8:	ba ac       	P2 = [FP + 0x8];
ffa02caa:	50 99       	R0 = B[P2] (X);
ffa02cac:	40 43       	R0 = R0.B (Z);
ffa02cae:	40 4f       	R0 <<= 0x8;
ffa02cb0:	08 30       	R1 = R0;
ffa02cb2:	f0 b9       	R0 = [FP -0x4];
ffa02cb4:	08 50       	R0 = R0 + R1;
ffa02cb6:	f0 bb       	[FP -0x4] = R0;
ffa02cb8:	b8 a0       	R0 = [FP + 0x8];
ffa02cba:	08 64       	R0 += 0x1;		/* (  1) */
ffa02cbc:	b8 b0       	[FP + 0x8] = R0;
ffa02cbe:	ba ac       	P2 = [FP + 0x8];
ffa02cc0:	50 99       	R0 = B[P2] (X);
ffa02cc2:	40 43       	R0 = R0.B (Z);
ffa02cc4:	80 4f       	R0 <<= 0x10;
ffa02cc6:	08 30       	R1 = R0;
ffa02cc8:	f0 b9       	R0 = [FP -0x4];
ffa02cca:	08 50       	R0 = R0 + R1;
ffa02ccc:	f0 bb       	[FP -0x4] = R0;
ffa02cce:	b8 a0       	R0 = [FP + 0x8];
ffa02cd0:	08 64       	R0 += 0x1;		/* (  1) */
ffa02cd2:	b8 b0       	[FP + 0x8] = R0;
ffa02cd4:	ba ac       	P2 = [FP + 0x8];
ffa02cd6:	50 99       	R0 = B[P2] (X);
ffa02cd8:	40 43       	R0 = R0.B (Z);
ffa02cda:	c0 4f       	R0 <<= 0x18;
ffa02cdc:	08 30       	R1 = R0;
ffa02cde:	f0 b9       	R0 = [FP -0x4];
ffa02ce0:	08 50       	R0 = R0 + R1;
ffa02ce2:	f0 bb       	[FP -0x4] = R0;
ffa02ce4:	b8 a0       	R0 = [FP + 0x8];
ffa02ce6:	08 64       	R0 += 0x1;		/* (  1) */
ffa02ce8:	b8 b0       	[FP + 0x8] = R0;
ffa02cea:	f0 b9       	R0 = [FP -0x4];
ffa02cec:	01 e8 00 00 	UNLINK;
ffa02cf0:	10 00       	RTS;
	...

ffa02cf4 <_eth_header_setup>:
ffa02cf4:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02cf8:	b8 b0       	[FP + 0x8] = R0;
ffa02cfa:	f9 b0       	[FP + 0xc] = R1;
ffa02cfc:	3a b1       	[FP + 0x10] = R2;
ffa02cfe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c */
ffa02d02:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa02d06:	50 95       	R0 = W[P2] (X);
ffa02d08:	c0 42       	R0 = R0.L (Z);
ffa02d0a:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9000aa(-7339862) */
ffa02d0e:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa02d12:	10 4f       	R0 <<= 0x2;
ffa02d14:	08 50       	R0 = R0 + R1;
ffa02d16:	10 32       	P2 = R0;
ffa02d18:	52 91       	P2 = [P2];
ffa02d1a:	90 a1       	R0 = [P2 + 0x18];
ffa02d1c:	e0 bb       	[FP -0x8] = R0;
ffa02d1e:	ba ac       	P2 = [FP + 0x8];
ffa02d20:	10 91       	R0 = [P2];
ffa02d22:	f0 67       	R0 += -0x2;		/* ( -2) */
ffa02d24:	ea b9       	P2 = [FP -0x8];
ffa02d26:	10 97       	W[P2] = R0;
ffa02d28:	ba ac       	P2 = [FP + 0x8];
ffa02d2a:	10 91       	R0 = [P2];
ffa02d2c:	80 67       	R0 += -0x10;		/* (-16) */
ffa02d2e:	ba ac       	P2 = [FP + 0x8];
ffa02d30:	10 93       	[P2] = R0;
ffa02d32:	e0 b9       	R0 = [FP -0x8];
ffa02d34:	08 30       	R1 = R0;
ffa02d36:	11 64       	R1 += 0x2;		/* (  2) */
ffa02d38:	38 a1       	R0 = [FP + 0x10];
ffa02d3a:	00 e3 c1 0a 	CALL 0xffa042bc <_ARP_req>;
ffa02d3e:	00 0c       	CC = R0 == 0x0;
ffa02d40:	07 10       	IF !CC JUMP 0xffa02d4e <_eth_header_setup+0x5a>;
ffa02d42:	fa ac       	P2 = [FP + 0xc];
ffa02d44:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02d46:	10 9b       	B[P2] = R0;
ffa02d48:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02d4a:	c0 bb       	[FP -0x10] = R0;
ffa02d4c:	29 20       	JUMP.S 0xffa02d9e <_eth_header_setup+0xaa>;
ffa02d4e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02d50:	d0 bb       	[FP -0xc] = R0;
ffa02d52:	12 20       	JUMP.S 0xffa02d76 <_eth_header_setup+0x82>;
ffa02d54:	d2 b9       	R2 = [FP -0xc];
ffa02d56:	d1 b9       	R1 = [FP -0xc];
ffa02d58:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02d5c:	00 e1 b4 0c 	R0.L = 0xcb4;		/* (3252)	R0=0xff900cb4 <_NetOurMAC>(-7336780) */
ffa02d60:	08 50       	R0 = R0 + R1;
ffa02d62:	10 32       	P2 = R0;
ffa02d64:	51 99       	R1 = B[P2] (X);
ffa02d66:	e0 b9       	R0 = [FP -0x8];
ffa02d68:	02 50       	R0 = R2 + R0;
ffa02d6a:	10 32       	P2 = R0;
ffa02d6c:	42 6c       	P2 += 0x8;		/* (  8) */
ffa02d6e:	11 9b       	B[P2] = R1;
ffa02d70:	d0 b9       	R0 = [FP -0xc];
ffa02d72:	08 64       	R0 += 0x1;		/* (  1) */
ffa02d74:	d0 bb       	[FP -0xc] = R0;
ffa02d76:	d0 b9       	R0 = [FP -0xc];
ffa02d78:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa02d7a:	08 09       	CC = R0 <= R1;
ffa02d7c:	ec 1b       	IF CC JUMP 0xffa02d54 <_eth_header_setup+0x60>;
ffa02d7e:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02d82:	ff e3 43 ff 	CALL 0xffa02c08 <_htons>;
ffa02d86:	ea b9       	P2 = [FP -0x8];
ffa02d88:	d0 b5       	W[P2 + 0xe] = R0;
ffa02d8a:	e0 b9       	R0 = [FP -0x8];
ffa02d8c:	f0 bb       	[FP -0x4] = R0;
ffa02d8e:	f0 b9       	R0 = [FP -0x4];
ffa02d90:	80 64       	R0 += 0x10;		/* ( 16) */
ffa02d92:	f0 bb       	[FP -0x4] = R0;
ffa02d94:	fa ac       	P2 = [FP + 0xc];
ffa02d96:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d98:	10 9b       	B[P2] = R0;
ffa02d9a:	f0 b9       	R0 = [FP -0x4];
ffa02d9c:	c0 bb       	[FP -0x10] = R0;
ffa02d9e:	c0 b9       	R0 = [FP -0x10];
ffa02da0:	01 e8 00 00 	UNLINK;
ffa02da4:	10 00       	RTS;
	...

ffa02da8 <_ip_header_setup>:
ffa02da8:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02dac:	b8 b0       	[FP + 0x8] = R0;
ffa02dae:	f9 b0       	[FP + 0xc] = R1;
ffa02db0:	3a b1       	[FP + 0x10] = R2;
ffa02db2:	78 a1       	R0 = [FP + 0x14];
ffa02db4:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa02db8:	b8 a0       	R0 = [FP + 0x8];
ffa02dba:	f0 bb       	[FP -0x4] = R0;
ffa02dbc:	fa b9       	P2 = [FP -0x4];
ffa02dbe:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa02dc2:	10 9b       	B[P2] = R0;
ffa02dc4:	fa b9       	P2 = [FP -0x4];
ffa02dc6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02dc8:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa02dcc:	fa ac       	P2 = [FP + 0xc];
ffa02dce:	10 91       	R0 = [P2];
ffa02dd0:	c0 42       	R0 = R0.L (Z);
ffa02dd2:	ff e3 1b ff 	CALL 0xffa02c08 <_htons>;
ffa02dd6:	fa b9       	P2 = [FP -0x4];
ffa02dd8:	50 b4       	W[P2 + 0x2] = R0;
ffa02dda:	fa ac       	P2 = [FP + 0xc];
ffa02ddc:	10 91       	R0 = [P2];
ffa02dde:	60 67       	R0 += -0x14;		/* (-20) */
ffa02de0:	fa ac       	P2 = [FP + 0xc];
ffa02de2:	10 93       	[P2] = R0;
ffa02de4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa02de8:	0a e1 8e 0c 	P2.L = 0xc8e;		/* (3214)	P2=0xff900c8e <_NetIPID> */
ffa02dec:	50 95       	R0 = W[P2] (X);
ffa02dee:	c1 42       	R1 = R0.L (Z);
ffa02df0:	08 64       	R0 += 0x1;		/* (  1) */
ffa02df2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8e <_NetIPID> */
ffa02df6:	0a e1 8e 0c 	P2.L = 0xc8e;		/* (3214)	P2=0xff900c8e <_NetIPID> */
ffa02dfa:	10 97       	W[P2] = R0;
ffa02dfc:	01 30       	R0 = R1;
ffa02dfe:	ff e3 05 ff 	CALL 0xffa02c08 <_htons>;
ffa02e02:	fa b9       	P2 = [FP -0x4];
ffa02e04:	90 b4       	W[P2 + 0x4] = R0;
ffa02e06:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa02e0a:	ff e3 ff fe 	CALL 0xffa02c08 <_htons>;
ffa02e0e:	fa b9       	P2 = [FP -0x4];
ffa02e10:	d0 b4       	W[P2 + 0x6] = R0;
ffa02e12:	fa b9       	P2 = [FP -0x4];
ffa02e14:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa02e18:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02e1c:	fa b9       	P2 = [FP -0x4];
ffa02e1e:	b8 e5 f8 ff 	R0 = B[FP + -0x8] (X);
ffa02e22:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02e26:	fa b9       	P2 = [FP -0x4];
ffa02e28:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02e2a:	50 b5       	W[P2 + 0xa] = R0;
ffa02e2c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8e <_NetIPID> */
ffa02e30:	0a e1 c0 0c 	P2.L = 0xcc0;		/* (3264)	P2=0xff900cc0 <_NetOurIP> */
ffa02e34:	10 91       	R0 = [P2];
ffa02e36:	fa b9       	P2 = [FP -0x4];
ffa02e38:	d0 b0       	[P2 + 0xc] = R0;
ffa02e3a:	fa b9       	P2 = [FP -0x4];
ffa02e3c:	38 a1       	R0 = [FP + 0x10];
ffa02e3e:	10 b1       	[P2 + 0x10] = R0;
ffa02e40:	f0 b9       	R0 = [FP -0x4];
ffa02e42:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa02e44:	ff e3 ba fe 	CALL 0xffa02bb8 <_NetCksum>;
ffa02e48:	c0 43       	R0 =~ R0;
ffa02e4a:	fa b9       	P2 = [FP -0x4];
ffa02e4c:	50 b5       	W[P2 + 0xa] = R0;
ffa02e4e:	b8 a0       	R0 = [FP + 0x8];
ffa02e50:	a0 64       	R0 += 0x14;		/* ( 20) */
ffa02e52:	b8 b0       	[FP + 0x8] = R0;
ffa02e54:	b8 a0       	R0 = [FP + 0x8];
ffa02e56:	01 e8 00 00 	UNLINK;
ffa02e5a:	10 00       	RTS;

ffa02e5c <_ip_header_checksum>:
ffa02e5c:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02e60:	b8 b0       	[FP + 0x8] = R0;
ffa02e62:	b8 a0       	R0 = [FP + 0x8];
ffa02e64:	f0 bb       	[FP -0x4] = R0;
ffa02e66:	b8 a0       	R0 = [FP + 0x8];
ffa02e68:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa02e6a:	ff e3 a7 fe 	CALL 0xffa02bb8 <_NetCksum>;
ffa02e6e:	00 0c       	CC = R0 == 0x0;
ffa02e70:	04 18       	IF CC JUMP 0xffa02e78 <_ip_header_checksum+0x1c>;
ffa02e72:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e74:	e0 bb       	[FP -0x8] = R0;
ffa02e76:	03 20       	JUMP.S 0xffa02e7c <_ip_header_checksum+0x20>;
ffa02e78:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02e7a:	e0 bb       	[FP -0x8] = R0;
ffa02e7c:	e0 b9       	R0 = [FP -0x8];
ffa02e7e:	01 e8 00 00 	UNLINK;
ffa02e82:	10 00       	RTS;

ffa02e84 <_icmp_header_setup>:
ffa02e84:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02e88:	b8 b0       	[FP + 0x8] = R0;
ffa02e8a:	f9 b0       	[FP + 0xc] = R1;
ffa02e8c:	79 a1       	R1 = [FP + 0x14];
ffa02e8e:	bb a1       	R3 = [FP + 0x18];
ffa02e90:	02 30       	R0 = R2;
ffa02e92:	b8 e6 10 00 	B[FP + 0x10] = R0;
ffa02e96:	01 30       	R0 = R1;
ffa02e98:	78 e6 f6 ff 	W[FP + -0x14] = R0;
ffa02e9c:	03 30       	R0 = R3;
ffa02e9e:	78 e6 f4 ff 	W[FP + -0x18] = R0;
ffa02ea2:	b8 a0       	R0 = [FP + 0x8];
ffa02ea4:	c0 bb       	[FP -0x10] = R0;
ffa02ea6:	ca b9       	P2 = [FP -0x10];
ffa02ea8:	b8 e5 10 00 	R0 = B[FP + 0x10] (X);
ffa02eac:	10 9b       	B[P2] = R0;
ffa02eae:	ca b9       	P2 = [FP -0x10];
ffa02eb0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02eb2:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa02eb6:	ca b9       	P2 = [FP -0x10];
ffa02eb8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02eba:	50 b4       	W[P2 + 0x2] = R0;
ffa02ebc:	ca b9       	P2 = [FP -0x10];
ffa02ebe:	78 e5 f6 ff 	R0 = W[FP + -0x14] (X);
ffa02ec2:	90 b4       	W[P2 + 0x4] = R0;
ffa02ec4:	ca b9       	P2 = [FP -0x10];
ffa02ec6:	78 e5 f4 ff 	R0 = W[FP + -0x18] (X);
ffa02eca:	d0 b4       	W[P2 + 0x6] = R0;
ffa02ecc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02ece:	d0 bb       	[FP -0xc] = R0;
ffa02ed0:	c0 b9       	R0 = [FP -0x10];
ffa02ed2:	f0 bb       	[FP -0x4] = R0;
ffa02ed4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02ed6:	e0 bb       	[FP -0x8] = R0;
ffa02ed8:	0d 20       	JUMP.S 0xffa02ef2 <_icmp_header_setup+0x6e>;
ffa02eda:	fa b9       	P2 = [FP -0x4];
ffa02edc:	50 95       	R0 = W[P2] (X);
ffa02ede:	c1 42       	R1 = R0.L (Z);
ffa02ee0:	d0 b9       	R0 = [FP -0xc];
ffa02ee2:	08 50       	R0 = R0 + R1;
ffa02ee4:	d0 bb       	[FP -0xc] = R0;
ffa02ee6:	f0 b9       	R0 = [FP -0x4];
ffa02ee8:	10 64       	R0 += 0x2;		/* (  2) */
ffa02eea:	f0 bb       	[FP -0x4] = R0;
ffa02eec:	e0 b9       	R0 = [FP -0x8];
ffa02eee:	08 64       	R0 += 0x1;		/* (  1) */
ffa02ef0:	e0 bb       	[FP -0x8] = R0;
ffa02ef2:	e0 b9       	R0 = [FP -0x8];
ffa02ef4:	18 0d       	CC = R0 <= 0x3;
ffa02ef6:	f2 1b       	IF CC JUMP 0xffa02eda <_icmp_header_setup+0x56>;
ffa02ef8:	d0 b9       	R0 = [FP -0xc];
ffa02efa:	c1 42       	R1 = R0.L (Z);
ffa02efc:	d0 b9       	R0 = [FP -0xc];
ffa02efe:	80 4e       	R0 >>= 0x10;
ffa02f00:	01 50       	R0 = R1 + R0;
ffa02f02:	d0 bb       	[FP -0xc] = R0;
ffa02f04:	d0 b9       	R0 = [FP -0xc];
ffa02f06:	c0 43       	R0 =~ R0;
ffa02f08:	ca b9       	P2 = [FP -0x10];
ffa02f0a:	50 b4       	W[P2 + 0x2] = R0;
ffa02f0c:	b8 a0       	R0 = [FP + 0x8];
ffa02f0e:	40 64       	R0 += 0x8;		/* (  8) */
ffa02f10:	b8 b0       	[FP + 0x8] = R0;
ffa02f12:	fa ac       	P2 = [FP + 0xc];
ffa02f14:	10 91       	R0 = [P2];
ffa02f16:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa02f18:	fa ac       	P2 = [FP + 0xc];
ffa02f1a:	10 93       	[P2] = R0;
ffa02f1c:	b8 a0       	R0 = [FP + 0x8];
ffa02f1e:	01 e8 00 00 	UNLINK;
ffa02f22:	10 00       	RTS;

ffa02f24 <_udp_header_setup>:
ffa02f24:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02f28:	b8 b0       	[FP + 0x8] = R0;
ffa02f2a:	f9 b0       	[FP + 0xc] = R1;
ffa02f2c:	79 a1       	R1 = [FP + 0x14];
ffa02f2e:	02 30       	R0 = R2;
ffa02f30:	38 b6       	W[FP + 0x10] = R0;
ffa02f32:	01 30       	R0 = R1;
ffa02f34:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa02f38:	b8 a0       	R0 = [FP + 0x8];
ffa02f3a:	f0 bb       	[FP -0x4] = R0;
ffa02f3c:	38 a6       	R0 = W[FP + 0x10] (Z);
ffa02f3e:	ff e3 65 fe 	CALL 0xffa02c08 <_htons>;
ffa02f42:	fa b9       	P2 = [FP -0x4];
ffa02f44:	10 97       	W[P2] = R0;
ffa02f46:	78 e4 fc ff 	R0 = W[FP + -0x8] (Z);
ffa02f4a:	ff e3 5f fe 	CALL 0xffa02c08 <_htons>;
ffa02f4e:	fa b9       	P2 = [FP -0x4];
ffa02f50:	50 b4       	W[P2 + 0x2] = R0;
ffa02f52:	fa ac       	P2 = [FP + 0xc];
ffa02f54:	10 91       	R0 = [P2];
ffa02f56:	c0 42       	R0 = R0.L (Z);
ffa02f58:	ff e3 58 fe 	CALL 0xffa02c08 <_htons>;
ffa02f5c:	fa b9       	P2 = [FP -0x4];
ffa02f5e:	90 b4       	W[P2 + 0x4] = R0;
ffa02f60:	fa ac       	P2 = [FP + 0xc];
ffa02f62:	10 91       	R0 = [P2];
ffa02f64:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa02f66:	fa ac       	P2 = [FP + 0xc];
ffa02f68:	10 93       	[P2] = R0;
ffa02f6a:	fa b9       	P2 = [FP -0x4];
ffa02f6c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f6e:	d0 b4       	W[P2 + 0x6] = R0;
ffa02f70:	b8 a0       	R0 = [FP + 0x8];
ffa02f72:	40 64       	R0 += 0x8;		/* (  8) */
ffa02f74:	b8 b0       	[FP + 0x8] = R0;
ffa02f76:	b8 a0       	R0 = [FP + 0x8];
ffa02f78:	01 e8 00 00 	UNLINK;
ffa02f7c:	10 00       	RTS;
	...

ffa02f80 <_tcp_header_setup>:
ffa02f80:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02f84:	b8 b0       	[FP + 0x8] = R0;
ffa02f86:	f9 b0       	[FP + 0xc] = R1;
ffa02f88:	02 30       	R0 = R2;
ffa02f8a:	b8 e6 10 00 	B[FP + 0x10] = R0;
ffa02f8e:	b8 a0       	R0 = [FP + 0x8];
ffa02f90:	f0 bb       	[FP -0x4] = R0;
ffa02f92:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa02f96:	ff e3 39 fe 	CALL 0xffa02c08 <_htons>;
ffa02f9a:	fa b9       	P2 = [FP -0x4];
ffa02f9c:	10 97       	W[P2] = R0;
ffa02f9e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc0 <_NetOurIP> */
ffa02fa2:	0a e1 b0 0d 	P2.L = 0xdb0;		/* (3504)	P2=0xff900db0 <_TcpClientPort> */
ffa02fa6:	50 95       	R0 = W[P2] (X);
ffa02fa8:	fa b9       	P2 = [FP -0x4];
ffa02faa:	50 b4       	W[P2 + 0x2] = R0;
ffa02fac:	78 a1       	R0 = [FP + 0x14];
ffa02fae:	ff e3 45 fe 	CALL 0xffa02c38 <_htonl>;
ffa02fb2:	fa b9       	P2 = [FP -0x4];
ffa02fb4:	50 b0       	[P2 + 0x4] = R0;
ffa02fb6:	b8 a1       	R0 = [FP + 0x18];
ffa02fb8:	ff e3 40 fe 	CALL 0xffa02c38 <_htonl>;
ffa02fbc:	fa b9       	P2 = [FP -0x4];
ffa02fbe:	90 b0       	[P2 + 0x8] = R0;
ffa02fc0:	fa b9       	P2 = [FP -0x4];
ffa02fc2:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa02fc6:	90 e6 0c 00 	B[P2 + 0xc] = R0;
ffa02fca:	fa b9       	P2 = [FP -0x4];
ffa02fcc:	b8 e5 10 00 	R0 = B[FP + 0x10] (X);
ffa02fd0:	90 e6 0d 00 	B[P2 + 0xd] = R0;
ffa02fd4:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa02fd8:	ff e3 18 fe 	CALL 0xffa02c08 <_htons>;
ffa02fdc:	fa b9       	P2 = [FP -0x4];
ffa02fde:	d0 b5       	W[P2 + 0xe] = R0;
ffa02fe0:	fa b9       	P2 = [FP -0x4];
ffa02fe2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02fe4:	10 b6       	W[P2 + 0x10] = R0;
ffa02fe6:	fa b9       	P2 = [FP -0x4];
ffa02fe8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02fea:	50 b6       	W[P2 + 0x12] = R0;
ffa02fec:	b8 a0       	R0 = [FP + 0x8];
ffa02fee:	a0 64       	R0 += 0x14;		/* ( 20) */
ffa02ff0:	b8 b0       	[FP + 0x8] = R0;
ffa02ff2:	fa ac       	P2 = [FP + 0xc];
ffa02ff4:	10 91       	R0 = [P2];
ffa02ff6:	60 67       	R0 += -0x14;		/* (-20) */
ffa02ff8:	fa ac       	P2 = [FP + 0xc];
ffa02ffa:	10 93       	[P2] = R0;
ffa02ffc:	b8 a0       	R0 = [FP + 0x8];
ffa02ffe:	01 e8 00 00 	UNLINK;
ffa03002:	10 00       	RTS;

ffa03004 <_ether_testUDP>:
ffa03004:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa03008:	b8 b0       	[FP + 0x8] = R0;
ffa0300a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900db0 <_TcpClientPort> */
ffa0300e:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa03012:	50 95       	R0 = W[P2] (X);
ffa03014:	c0 42       	R0 = R0.L (Z);
ffa03016:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900014(-7340012) */
ffa0301a:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa0301e:	10 4f       	R0 <<= 0x2;
ffa03020:	08 50       	R0 = R0 + R1;
ffa03022:	10 32       	P2 = R0;
ffa03024:	52 91       	P2 = [P2];
ffa03026:	90 a1       	R0 = [P2 + 0x18];
ffa03028:	e0 bb       	[FP -0x8] = R0;
ffa0302a:	ea b9       	P2 = [FP -0x8];
ffa0302c:	20 e1 42 00 	R0 = 0x42 (X);		/*		R0=0x42( 66) */
ffa03030:	10 97       	W[P2] = R0;
ffa03032:	e0 b9       	R0 = [FP -0x8];
ffa03034:	08 30       	R1 = R0;
ffa03036:	11 64       	R1 += 0x2;		/* (  2) */
ffa03038:	b8 a0       	R0 = [FP + 0x8];
ffa0303a:	00 e3 41 09 	CALL 0xffa042bc <_ARP_req>;
ffa0303e:	00 0c       	CC = R0 == 0x0;
ffa03040:	04 10       	IF !CC JUMP 0xffa03048 <_ether_testUDP+0x44>;
ffa03042:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03044:	c0 bb       	[FP -0x10] = R0;
ffa03046:	9d 20       	JUMP.S 0xffa03180 <_ether_testUDP+0x17c>;
ffa03048:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0304a:	d0 bb       	[FP -0xc] = R0;
ffa0304c:	12 20       	JUMP.S 0xffa03070 <_ether_testUDP+0x6c>;
ffa0304e:	d2 b9       	R2 = [FP -0xc];
ffa03050:	d1 b9       	R1 = [FP -0xc];
ffa03052:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03056:	00 e1 b4 0c 	R0.L = 0xcb4;		/* (3252)	R0=0xff900cb4 <_NetOurMAC>(-7336780) */
ffa0305a:	08 50       	R0 = R0 + R1;
ffa0305c:	10 32       	P2 = R0;
ffa0305e:	51 99       	R1 = B[P2] (X);
ffa03060:	e0 b9       	R0 = [FP -0x8];
ffa03062:	02 50       	R0 = R2 + R0;
ffa03064:	10 32       	P2 = R0;
ffa03066:	42 6c       	P2 += 0x8;		/* (  8) */
ffa03068:	11 9b       	B[P2] = R1;
ffa0306a:	d0 b9       	R0 = [FP -0xc];
ffa0306c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0306e:	d0 bb       	[FP -0xc] = R0;
ffa03070:	d0 b9       	R0 = [FP -0xc];
ffa03072:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03074:	08 09       	CC = R0 <= R1;
ffa03076:	ec 1b       	IF CC JUMP 0xffa0304e <_ether_testUDP+0x4a>;
ffa03078:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa0307c:	ff e3 c6 fd 	CALL 0xffa02c08 <_htons>;
ffa03080:	ea b9       	P2 = [FP -0x8];
ffa03082:	d0 b5       	W[P2 + 0xe] = R0;
ffa03084:	ea b9       	P2 = [FP -0x8];
ffa03086:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa0308a:	90 e6 10 00 	B[P2 + 0x10] = R0;
ffa0308e:	ea b9       	P2 = [FP -0x8];
ffa03090:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03092:	90 e6 11 00 	B[P2 + 0x11] = R0;
ffa03096:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa03098:	ff e3 b8 fd 	CALL 0xffa02c08 <_htons>;
ffa0309c:	ea b9       	P2 = [FP -0x8];
ffa0309e:	50 b6       	W[P2 + 0x12] = R0;
ffa030a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa030a4:	0a e1 8e 0c 	P2.L = 0xc8e;		/* (3214)	P2=0xff900c8e <_NetIPID> */
ffa030a8:	50 95       	R0 = W[P2] (X);
ffa030aa:	c1 42       	R1 = R0.L (Z);
ffa030ac:	08 64       	R0 += 0x1;		/* (  1) */
ffa030ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8e <_NetIPID> */
ffa030b2:	0a e1 8e 0c 	P2.L = 0xc8e;		/* (3214)	P2=0xff900c8e <_NetIPID> */
ffa030b6:	10 97       	W[P2] = R0;
ffa030b8:	01 30       	R0 = R1;
ffa030ba:	ff e3 a7 fd 	CALL 0xffa02c08 <_htons>;
ffa030be:	ea b9       	P2 = [FP -0x8];
ffa030c0:	90 b6       	W[P2 + 0x14] = R0;
ffa030c2:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa030c6:	ff e3 a1 fd 	CALL 0xffa02c08 <_htons>;
ffa030ca:	ea b9       	P2 = [FP -0x8];
ffa030cc:	d0 b6       	W[P2 + 0x16] = R0;
ffa030ce:	ea b9       	P2 = [FP -0x8];
ffa030d0:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa030d2:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa030d6:	ea b9       	P2 = [FP -0x8];
ffa030d8:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa030da:	90 e6 19 00 	B[P2 + 0x19] = R0;
ffa030de:	ea b9       	P2 = [FP -0x8];
ffa030e0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa030e2:	50 b7       	W[P2 + 0x1a] = R0;
ffa030e4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8e <_NetIPID> */
ffa030e8:	0a e1 c0 0c 	P2.L = 0xcc0;		/* (3264)	P2=0xff900cc0 <_NetOurIP> */
ffa030ec:	10 91       	R0 = [P2];
ffa030ee:	ea b9       	P2 = [FP -0x8];
ffa030f0:	d0 b1       	[P2 + 0x1c] = R0;
ffa030f2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc0 <_NetOurIP> */
ffa030f6:	0a e1 84 0c 	P2.L = 0xc84;		/* (3204)	P2=0xff900c84 <_NetDestIP> */
ffa030fa:	10 91       	R0 = [P2];
ffa030fc:	ea b9       	P2 = [FP -0x8];
ffa030fe:	10 b2       	[P2 + 0x20] = R0;
ffa03100:	e0 b9       	R0 = [FP -0x8];
ffa03102:	80 64       	R0 += 0x10;		/* ( 16) */
ffa03104:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa03106:	ff e3 59 fd 	CALL 0xffa02bb8 <_NetCksum>;
ffa0310a:	c0 43       	R0 =~ R0;
ffa0310c:	ea b9       	P2 = [FP -0x8];
ffa0310e:	50 b7       	W[P2 + 0x1a] = R0;
ffa03110:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa03114:	ff e3 7a fd 	CALL 0xffa02c08 <_htons>;
ffa03118:	ea b9       	P2 = [FP -0x8];
ffa0311a:	50 e6 12 00 	W[P2 + 0x24] = R0;
ffa0311e:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa03122:	ff e3 73 fd 	CALL 0xffa02c08 <_htons>;
ffa03126:	ea b9       	P2 = [FP -0x8];
ffa03128:	50 e6 13 00 	W[P2 + 0x26] = R0;
ffa0312c:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa0312e:	ff e3 6d fd 	CALL 0xffa02c08 <_htons>;
ffa03132:	ea b9       	P2 = [FP -0x8];
ffa03134:	50 e6 14 00 	W[P2 + 0x28] = R0;
ffa03138:	ea b9       	P2 = [FP -0x8];
ffa0313a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0313c:	50 e6 15 00 	W[P2 + 0x2a] = R0;
ffa03140:	e0 b9       	R0 = [FP -0x8];
ffa03142:	f0 bb       	[FP -0x4] = R0;
ffa03144:	f0 b9       	R0 = [FP -0x4];
ffa03146:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa03148:	f0 bb       	[FP -0x4] = R0;
ffa0314a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0314c:	d0 bb       	[FP -0xc] = R0;
ffa0314e:	0b 20       	JUMP.S 0xffa03164 <_ether_testUDP+0x160>;
ffa03150:	d0 b9       	R0 = [FP -0xc];
ffa03152:	08 30       	R1 = R0;
ffa03154:	f0 b9       	R0 = [FP -0x4];
ffa03156:	41 50       	R1 = R1 + R0;
ffa03158:	11 32       	P2 = R1;
ffa0315a:	d0 b9       	R0 = [FP -0xc];
ffa0315c:	10 9b       	B[P2] = R0;
ffa0315e:	d0 b9       	R0 = [FP -0xc];
ffa03160:	08 64       	R0 += 0x1;		/* (  1) */
ffa03162:	d0 bb       	[FP -0xc] = R0;
ffa03164:	d0 b9       	R0 = [FP -0xc];
ffa03166:	a9 60       	R1 = 0x15 (X);		/*		R1=0x15( 21) */
ffa03168:	08 09       	CC = R0 <= R1;
ffa0316a:	f3 1b       	IF CC JUMP 0xffa03150 <_ether_testUDP+0x14c>;
ffa0316c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03170:	00 e1 44 02 	R0.L = 0x244;		/* (580)	R0=0xff900244(-7339452) */
ffa03174:	ff e3 8e eb 	CALL 0xffa00890 <_printf_str>;
ffa03178:	ff e3 e8 f5 	CALL 0xffa01d48 <_bfin_EMAC_send_nocopy>;
ffa0317c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0317e:	c0 bb       	[FP -0x10] = R0;
ffa03180:	c0 b9       	R0 = [FP -0x10];
ffa03182:	01 e8 00 00 	UNLINK;
ffa03186:	10 00       	RTS;

ffa03188 <_udp_packet_setup>:
ffa03188:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa0318c:	b8 b0       	[FP + 0x8] = R0;
ffa0318e:	f9 b0       	[FP + 0xc] = R1;
ffa03190:	b8 a0       	R0 = [FP + 0x8];
ffa03192:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa03194:	e0 bb       	[FP -0x8] = R0;
ffa03196:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c84 <_NetDestIP> */
ffa0319a:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa0319e:	12 91       	R2 = [P2];
ffa031a0:	47 30       	R0 = FP;
ffa031a2:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa031a4:	f9 a0       	R1 = [FP + 0xc];
ffa031a6:	ff e3 a7 fd 	CALL 0xffa02cf4 <_eth_header_setup>;
ffa031aa:	f0 bb       	[FP -0x4] = R0;
ffa031ac:	fa ac       	P2 = [FP + 0xc];
ffa031ae:	50 99       	R0 = B[P2] (X);
ffa031b0:	00 43       	R0 = R0.B (X);
ffa031b2:	80 0c       	CC = R0 < 0x0;
ffa031b4:	04 10       	IF !CC JUMP 0xffa031bc <_udp_packet_setup+0x34>;
ffa031b6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa031b8:	d0 bb       	[FP -0xc] = R0;
ffa031ba:	20 20       	JUMP.S 0xffa031fa <_udp_packet_setup+0x72>;
ffa031bc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc4 <_NetDataDestIP> */
ffa031c0:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa031c4:	13 91       	R3 = [P2];
ffa031c6:	f1 b9       	R1 = [FP -0x4];
ffa031c8:	57 30       	R2 = FP;
ffa031ca:	c2 67       	R2 += -0x8;		/* ( -8) */
ffa031cc:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa031ce:	f0 b0       	[SP + 0xc] = R0;
ffa031d0:	01 30       	R0 = R1;
ffa031d2:	0a 30       	R1 = R2;
ffa031d4:	13 30       	R2 = R3;
ffa031d6:	ff e3 e9 fd 	CALL 0xffa02da8 <_ip_header_setup>;
ffa031da:	f0 bb       	[FP -0x4] = R0;
ffa031dc:	f1 b9       	R1 = [FP -0x4];
ffa031de:	57 30       	R2 = FP;
ffa031e0:	c2 67       	R2 += -0x8;		/* ( -8) */
ffa031e2:	20 e1 f4 10 	R0 = 0x10f4 (X);		/*		R0=0x10f4(4340) */
ffa031e6:	f0 b0       	[SP + 0xc] = R0;
ffa031e8:	01 30       	R0 = R1;
ffa031ea:	0a 30       	R1 = R2;
ffa031ec:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa031f0:	ff e3 9a fe 	CALL 0xffa02f24 <_udp_header_setup>;
ffa031f4:	f0 bb       	[FP -0x4] = R0;
ffa031f6:	f0 b9       	R0 = [FP -0x4];
ffa031f8:	d0 bb       	[FP -0xc] = R0;
ffa031fa:	d0 b9       	R0 = [FP -0xc];
ffa031fc:	01 e8 00 00 	UNLINK;
ffa03200:	10 00       	RTS;
	...

ffa03204 <_icmp_packet_setup>:
ffa03204:	78 05       	[--SP] = (R7:7);
ffa03206:	00 e8 0b 00 	LINK 0x2c;		/* (44) */
ffa0320a:	f8 b0       	[FP + 0xc] = R0;
ffa0320c:	39 b1       	[FP + 0x10] = R1;
ffa0320e:	7a b1       	[FP + 0x14] = R2;
ffa03210:	b8 a1       	R0 = [FP + 0x18];
ffa03212:	f9 a1       	R1 = [FP + 0x1c];
ffa03214:	3a a2       	R2 = [FP + 0x20];
ffa03216:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa0321a:	01 30       	R0 = R1;
ffa0321c:	78 e6 f8 ff 	W[FP + -0x10] = R0;
ffa03220:	02 30       	R0 = R2;
ffa03222:	78 e6 f6 ff 	W[FP + -0x14] = R0;
ffa03226:	f8 a0       	R0 = [FP + 0xc];
ffa03228:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa0322a:	e0 bb       	[FP -0x8] = R0;
ffa0322c:	47 30       	R0 = FP;
ffa0322e:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa03230:	39 a1       	R1 = [FP + 0x10];
ffa03232:	7a a1       	R2 = [FP + 0x14];
ffa03234:	ff e3 60 fd 	CALL 0xffa02cf4 <_eth_header_setup>;
ffa03238:	f0 bb       	[FP -0x4] = R0;
ffa0323a:	3a ad       	P2 = [FP + 0x10];
ffa0323c:	50 99       	R0 = B[P2] (X);
ffa0323e:	00 43       	R0 = R0.B (X);
ffa03240:	80 0c       	CC = R0 < 0x0;
ffa03242:	04 10       	IF !CC JUMP 0xffa0324a <_icmp_packet_setup+0x46>;
ffa03244:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03246:	a0 bb       	[FP -0x18] = R0;
ffa03248:	20 20       	JUMP.S 0xffa03288 <_icmp_packet_setup+0x84>;
ffa0324a:	f1 b9       	R1 = [FP -0x4];
ffa0324c:	57 30       	R2 = FP;
ffa0324e:	c2 67       	R2 += -0x8;		/* ( -8) */
ffa03250:	7b a1       	R3 = [FP + 0x14];
ffa03252:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03254:	f0 b0       	[SP + 0xc] = R0;
ffa03256:	01 30       	R0 = R1;
ffa03258:	0a 30       	R1 = R2;
ffa0325a:	13 30       	R2 = R3;
ffa0325c:	ff e3 a6 fd 	CALL 0xffa02da8 <_ip_header_setup>;
ffa03260:	f0 bb       	[FP -0x4] = R0;
ffa03262:	bf e4 f4 ff 	R7 = B[FP + -0xc] (Z);
ffa03266:	78 e4 f8 ff 	R0 = W[FP + -0x10] (Z);
ffa0326a:	79 e4 f6 ff 	R1 = W[FP + -0x14] (Z);
ffa0326e:	f2 b9       	R2 = [FP -0x4];
ffa03270:	5f 30       	R3 = FP;
ffa03272:	c3 67       	R3 += -0x8;		/* ( -8) */
ffa03274:	f0 b0       	[SP + 0xc] = R0;
ffa03276:	31 b1       	[SP + 0x10] = R1;
ffa03278:	02 30       	R0 = R2;
ffa0327a:	0b 30       	R1 = R3;
ffa0327c:	17 30       	R2 = R7;
ffa0327e:	ff e3 03 fe 	CALL 0xffa02e84 <_icmp_header_setup>;
ffa03282:	f0 bb       	[FP -0x4] = R0;
ffa03284:	f0 b9       	R0 = [FP -0x4];
ffa03286:	a0 bb       	[FP -0x18] = R0;
ffa03288:	a0 b9       	R0 = [FP -0x18];
ffa0328a:	01 e8 00 00 	UNLINK;
ffa0328e:	38 05       	(R7:7) = [SP++];
ffa03290:	10 00       	RTS;
	...

ffa03294 <_icmp_rx>:
ffa03294:	70 05       	[--SP] = (R7:6);
ffa03296:	00 e8 0b 00 	LINK 0x2c;		/* (44) */
ffa0329a:	38 b1       	[FP + 0x10] = R0;
ffa0329c:	79 b1       	[FP + 0x14] = R1;
ffa0329e:	38 a1       	R0 = [FP + 0x10];
ffa032a0:	d0 bb       	[FP -0xc] = R0;
ffa032a2:	da b9       	P2 = [FP -0xc];
ffa032a4:	d7 a9       	R7 = W[P2 + 0xe] (X);
ffa032a6:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa032aa:	ff e3 af fc 	CALL 0xffa02c08 <_htons>;
ffa032ae:	f9 42       	R1 = R7.L (Z);
ffa032b0:	c0 42       	R0 = R0.L (Z);
ffa032b2:	01 08       	CC = R1 == R0;
ffa032b4:	8b 10       	IF !CC JUMP 0xffa033ca <_icmp_rx+0x136>;
ffa032b6:	78 a1       	R0 = [FP + 0x14];
ffa032b8:	59 61       	R1 = 0x2b (X);		/*		R1=0x2b( 43) */
ffa032ba:	08 0a       	CC = R0 <= R1 (IU);
ffa032bc:	87 18       	IF CC JUMP 0xffa033ca <_icmp_rx+0x136>;
ffa032be:	00 00       	NOP;
ffa032c0:	00 00       	NOP;
ffa032c2:	da b9       	P2 = [FP -0xc];
ffa032c4:	90 e5 19 00 	R0 = B[P2 + 0x19] (X);
ffa032c8:	40 43       	R0 = R0.B (Z);
ffa032ca:	08 0c       	CC = R0 == 0x1;
ffa032cc:	7f 10       	IF !CC JUMP 0xffa033ca <_icmp_rx+0x136>;
ffa032ce:	00 00       	NOP;
ffa032d0:	00 00       	NOP;
ffa032d2:	da b9       	P2 = [FP -0xc];
ffa032d4:	11 a2       	R1 = [P2 + 0x20];
ffa032d6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc4 <_NetDataDestIP> */
ffa032da:	0a e1 c0 0c 	P2.L = 0xcc0;		/* (3264)	P2=0xff900cc0 <_NetOurIP> */
ffa032de:	10 91       	R0 = [P2];
ffa032e0:	01 08       	CC = R1 == R0;
ffa032e2:	74 10       	IF !CC JUMP 0xffa033ca <_icmp_rx+0x136>;
ffa032e4:	00 00       	NOP;
ffa032e6:	00 00       	NOP;
ffa032e8:	da b9       	P2 = [FP -0xc];
ffa032ea:	90 e5 24 00 	R0 = B[P2 + 0x24] (X);
ffa032ee:	40 43       	R0 = R0.B (Z);
ffa032f0:	18 0c       	CC = R0 == 0x3;
ffa032f2:	18 10       	IF !CC JUMP 0xffa03322 <_icmp_rx+0x8e>;
ffa032f4:	00 00       	NOP;
ffa032f6:	00 00       	NOP;
ffa032f8:	da b9       	P2 = [FP -0xc];
ffa032fa:	90 e5 25 00 	R0 = B[P2 + 0x25] (X);
ffa032fe:	40 43       	R0 = R0.B (Z);
ffa03300:	18 0c       	CC = R0 == 0x3;
ffa03302:	10 10       	IF !CC JUMP 0xffa03322 <_icmp_rx+0x8e>;
ffa03304:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900800(-7337984) */
ffa03308:	00 e1 5c 02 	R0.L = 0x25c;		/* (604)	R0=0xff90025c(-7339428) */
ffa0330c:	ff e3 c2 ea 	CALL 0xffa00890 <_printf_str>;
ffa03310:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc0 <_NetOurIP> */
ffa03314:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_streamEnabled> */
ffa03318:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0331a:	10 9b       	B[P2] = R0;
ffa0331c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0331e:	b0 bb       	[FP -0x14] = R0;
ffa03320:	57 20       	JUMP.S 0xffa033ce <_icmp_rx+0x13a>;
ffa03322:	da b9       	P2 = [FP -0xc];
ffa03324:	90 e5 24 00 	R0 = B[P2 + 0x24] (X);
ffa03328:	40 43       	R0 = R0.B (Z);
ffa0332a:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa0332c:	08 08       	CC = R0 == R1;
ffa0332e:	4e 10       	IF !CC JUMP 0xffa033ca <_icmp_rx+0x136>;
ffa03330:	00 00       	NOP;
ffa03332:	00 00       	NOP;
ffa03334:	da b9       	P2 = [FP -0xc];
ffa03336:	d1 a1       	R1 = [P2 + 0x1c];
ffa03338:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0333c:	00 e1 90 02 	R0.L = 0x290;		/* (656)	R0=0xff900290(-7339376) */
ffa03340:	ff e3 c4 ec 	CALL 0xffa00cc8 <_printf_ip>;
ffa03344:	da b9       	P2 = [FP -0xc];
ffa03346:	d0 a1       	R0 = [P2 + 0x1c];
ffa03348:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_g_streamEnabled> */
ffa0334c:	0a e1 84 0c 	P2.L = 0xc84;		/* (3204)	P2=0xff900c84 <_NetDestIP> */
ffa03350:	10 93       	[P2] = R0;
ffa03352:	da b9       	P2 = [FP -0xc];
ffa03354:	d2 a1       	R2 = [P2 + 0x1c];
ffa03356:	d0 b9       	R0 = [FP -0xc];
ffa03358:	08 30       	R1 = R0;
ffa0335a:	41 64       	R1 += 0x8;		/* (  8) */
ffa0335c:	02 30       	R0 = R2;
ffa0335e:	00 e3 d3 06 	CALL 0xffa04104 <_ARP_lut_add>;
ffa03362:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900290(-7339376) */
ffa03366:	00 e1 dc 01 	R0.L = 0x1dc;		/* (476)	R0=0xff9001dc(-7339556) */
ffa0336a:	ff e3 93 ea 	CALL 0xffa00890 <_printf_str>;
ffa0336e:	da b9       	P2 = [FP -0xc];
ffa03370:	d0 a1       	R0 = [P2 + 0x1c];
ffa03372:	e0 bb       	[FP -0x8] = R0;
ffa03374:	38 a1       	R0 = [FP + 0x10];
ffa03376:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa03378:	38 b1       	[FP + 0x10] = R0;
ffa0337a:	78 a1       	R0 = [FP + 0x14];
ffa0337c:	b0 66       	R0 += -0x2a;		/* (-42) */
ffa0337e:	78 b1       	[FP + 0x14] = R0;
ffa03380:	da b9       	P2 = [FP -0xc];
ffa03382:	50 e5 14 00 	R0 = W[P2 + 0x28] (X);
ffa03386:	c1 42       	R1 = R0.L (Z);
ffa03388:	da b9       	P2 = [FP -0xc];
ffa0338a:	50 e5 15 00 	R0 = W[P2 + 0x2a] (X);
ffa0338e:	c2 42       	R2 = R0.L (Z);
ffa03390:	7b a1       	R3 = [FP + 0x14];
ffa03392:	7f 30       	R7 = FP;
ffa03394:	9f 67       	R7 += -0xd;		/* (-13) */
ffa03396:	e6 b9       	R6 = [FP -0x8];
ffa03398:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0339a:	f0 b0       	[SP + 0xc] = R0;
ffa0339c:	31 b1       	[SP + 0x10] = R1;
ffa0339e:	72 b1       	[SP + 0x14] = R2;
ffa033a0:	03 30       	R0 = R3;
ffa033a2:	0f 30       	R1 = R7;
ffa033a4:	16 30       	R2 = R6;
ffa033a6:	ff e3 2f ff 	CALL 0xffa03204 <_icmp_packet_setup>;
ffa033aa:	f0 bb       	[FP -0x4] = R0;
ffa033ac:	b8 e5 f3 ff 	R0 = B[FP + -0xd] (X);
ffa033b0:	00 43       	R0 = R0.B (X);
ffa033b2:	00 0d       	CC = R0 <= 0x0;
ffa033b4:	0b 18       	IF CC JUMP 0xffa033ca <_icmp_rx+0x136>;
ffa033b6:	f1 b9       	R1 = [FP -0x4];
ffa033b8:	7a a1       	R2 = [FP + 0x14];
ffa033ba:	38 a1       	R0 = [FP + 0x10];
ffa033bc:	ff e3 fc ec 	CALL 0xffa00db4 <_memcpy_>;
ffa033c0:	ff e3 c4 f4 	CALL 0xffa01d48 <_bfin_EMAC_send_nocopy>;
ffa033c4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa033c6:	b0 bb       	[FP -0x14] = R0;
ffa033c8:	03 20       	JUMP.S 0xffa033ce <_icmp_rx+0x13a>;
ffa033ca:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa033cc:	b1 bb       	[FP -0x14] = R1;
ffa033ce:	b0 b9       	R0 = [FP -0x14];
ffa033d0:	01 e8 00 00 	UNLINK;
ffa033d4:	30 05       	(R7:6) = [SP++];
ffa033d6:	10 00       	RTS;

ffa033d8 <_DHCP_tx>:
ffa033d8:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa033dc:	b8 b0       	[FP + 0x8] = R0;
ffa033de:	f9 b0       	[FP + 0xc] = R1;
ffa033e0:	3a b1       	[FP + 0x10] = R2;
ffa033e2:	b9 a0       	R1 = [FP + 0x8];
ffa033e4:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa033e8:	01 50       	R0 = R1 + R0;
ffa033ea:	d0 bb       	[FP -0xc] = R0;
ffa033ec:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c84 <_NetDestIP> */
ffa033f0:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa033f4:	50 95       	R0 = W[P2] (X);
ffa033f6:	c0 42       	R0 = R0.L (Z);
ffa033f8:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900000 <_l1_data_a>(-7340032) */
ffa033fc:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa03400:	10 4f       	R0 <<= 0x2;
ffa03402:	08 50       	R0 = R0 + R1;
ffa03404:	10 32       	P2 = R0;
ffa03406:	52 91       	P2 = [P2];
ffa03408:	90 a1       	R0 = [P2 + 0x18];
ffa0340a:	c0 bb       	[FP -0x10] = R0;
ffa0340c:	d0 b9       	R0 = [FP -0xc];
ffa0340e:	ca b9       	P2 = [FP -0x10];
ffa03410:	10 97       	W[P2] = R0;
ffa03412:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03414:	e0 bb       	[FP -0x8] = R0;
ffa03416:	0b 20       	JUMP.S 0xffa0342c <_DHCP_tx+0x54>;
ffa03418:	e1 b9       	R1 = [FP -0x8];
ffa0341a:	c0 b9       	R0 = [FP -0x10];
ffa0341c:	08 50       	R0 = R0 + R1;
ffa0341e:	10 32       	P2 = R0;
ffa03420:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03422:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa03426:	e0 b9       	R0 = [FP -0x8];
ffa03428:	08 64       	R0 += 0x1;		/* (  1) */
ffa0342a:	e0 bb       	[FP -0x8] = R0;
ffa0342c:	e0 b9       	R0 = [FP -0x8];
ffa0342e:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03430:	08 09       	CC = R0 <= R1;
ffa03432:	f3 1b       	IF CC JUMP 0xffa03418 <_DHCP_tx+0x40>;
ffa03434:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03436:	e0 bb       	[FP -0x8] = R0;
ffa03438:	12 20       	JUMP.S 0xffa0345c <_DHCP_tx+0x84>;
ffa0343a:	e2 b9       	R2 = [FP -0x8];
ffa0343c:	e1 b9       	R1 = [FP -0x8];
ffa0343e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03442:	00 e1 b4 0c 	R0.L = 0xcb4;		/* (3252)	R0=0xff900cb4 <_NetOurMAC>(-7336780) */
ffa03446:	08 50       	R0 = R0 + R1;
ffa03448:	10 32       	P2 = R0;
ffa0344a:	51 99       	R1 = B[P2] (X);
ffa0344c:	c0 b9       	R0 = [FP -0x10];
ffa0344e:	02 50       	R0 = R2 + R0;
ffa03450:	10 32       	P2 = R0;
ffa03452:	42 6c       	P2 += 0x8;		/* (  8) */
ffa03454:	11 9b       	B[P2] = R1;
ffa03456:	e0 b9       	R0 = [FP -0x8];
ffa03458:	08 64       	R0 += 0x1;		/* (  1) */
ffa0345a:	e0 bb       	[FP -0x8] = R0;
ffa0345c:	e0 b9       	R0 = [FP -0x8];
ffa0345e:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03460:	08 09       	CC = R0 <= R1;
ffa03462:	ec 1b       	IF CC JUMP 0xffa0343a <_DHCP_tx+0x62>;
ffa03464:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03468:	ff e3 d0 fb 	CALL 0xffa02c08 <_htons>;
ffa0346c:	ca b9       	P2 = [FP -0x10];
ffa0346e:	d0 b5       	W[P2 + 0xe] = R0;
ffa03470:	ca b9       	P2 = [FP -0x10];
ffa03472:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa03476:	90 e6 10 00 	B[P2 + 0x10] = R0;
ffa0347a:	ca b9       	P2 = [FP -0x10];
ffa0347c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0347e:	90 e6 11 00 	B[P2 + 0x11] = R0;
ffa03482:	b8 a0       	R0 = [FP + 0x8];
ffa03484:	08 30       	R1 = R0;
ffa03486:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa0348a:	01 50       	R0 = R1 + R0;
ffa0348c:	c0 42       	R0 = R0.L (Z);
ffa0348e:	ff e3 bd fb 	CALL 0xffa02c08 <_htons>;
ffa03492:	ca b9       	P2 = [FP -0x10];
ffa03494:	50 b6       	W[P2 + 0x12] = R0;
ffa03496:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa0349a:	0a e1 8e 0c 	P2.L = 0xc8e;		/* (3214)	P2=0xff900c8e <_NetIPID> */
ffa0349e:	50 95       	R0 = W[P2] (X);
ffa034a0:	c1 42       	R1 = R0.L (Z);
ffa034a2:	08 64       	R0 += 0x1;		/* (  1) */
ffa034a4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8e <_NetIPID> */
ffa034a8:	0a e1 8e 0c 	P2.L = 0xc8e;		/* (3214)	P2=0xff900c8e <_NetIPID> */
ffa034ac:	10 97       	W[P2] = R0;
ffa034ae:	01 30       	R0 = R1;
ffa034b0:	ff e3 ac fb 	CALL 0xffa02c08 <_htons>;
ffa034b4:	ca b9       	P2 = [FP -0x10];
ffa034b6:	90 b6       	W[P2 + 0x14] = R0;
ffa034b8:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa034bc:	ff e3 a6 fb 	CALL 0xffa02c08 <_htons>;
ffa034c0:	ca b9       	P2 = [FP -0x10];
ffa034c2:	d0 b6       	W[P2 + 0x16] = R0;
ffa034c4:	ca b9       	P2 = [FP -0x10];
ffa034c6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa034c8:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa034cc:	ca b9       	P2 = [FP -0x10];
ffa034ce:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa034d0:	90 e6 19 00 	B[P2 + 0x19] = R0;
ffa034d4:	ca b9       	P2 = [FP -0x10];
ffa034d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa034d8:	50 b7       	W[P2 + 0x1a] = R0;
ffa034da:	ca b9       	P2 = [FP -0x10];
ffa034dc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa034de:	d0 b1       	[P2 + 0x1c] = R0;
ffa034e0:	ca b9       	P2 = [FP -0x10];
ffa034e2:	38 a1       	R0 = [FP + 0x10];
ffa034e4:	10 b2       	[P2 + 0x20] = R0;
ffa034e6:	c0 b9       	R0 = [FP -0x10];
ffa034e8:	80 64       	R0 += 0x10;		/* ( 16) */
ffa034ea:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa034ec:	ff e3 66 fb 	CALL 0xffa02bb8 <_NetCksum>;
ffa034f0:	c0 43       	R0 =~ R0;
ffa034f2:	ca b9       	P2 = [FP -0x10];
ffa034f4:	50 b7       	W[P2 + 0x1a] = R0;
ffa034f6:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa034fa:	ff e3 87 fb 	CALL 0xffa02c08 <_htons>;
ffa034fe:	ca b9       	P2 = [FP -0x10];
ffa03500:	50 e6 12 00 	W[P2 + 0x24] = R0;
ffa03504:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa03508:	ff e3 80 fb 	CALL 0xffa02c08 <_htons>;
ffa0350c:	ca b9       	P2 = [FP -0x10];
ffa0350e:	50 e6 13 00 	W[P2 + 0x26] = R0;
ffa03512:	b8 a0       	R0 = [FP + 0x8];
ffa03514:	08 30       	R1 = R0;
ffa03516:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa0351a:	01 50       	R0 = R1 + R0;
ffa0351c:	c0 42       	R0 = R0.L (Z);
ffa0351e:	ff e3 75 fb 	CALL 0xffa02c08 <_htons>;
ffa03522:	ca b9       	P2 = [FP -0x10];
ffa03524:	50 e6 14 00 	W[P2 + 0x28] = R0;
ffa03528:	ca b9       	P2 = [FP -0x10];
ffa0352a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0352c:	50 e6 15 00 	W[P2 + 0x2a] = R0;
ffa03530:	ca b9       	P2 = [FP -0x10];
ffa03532:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03534:	90 e6 2c 00 	B[P2 + 0x2c] = R0;
ffa03538:	ca b9       	P2 = [FP -0x10];
ffa0353a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0353c:	90 e6 2d 00 	B[P2 + 0x2d] = R0;
ffa03540:	ca b9       	P2 = [FP -0x10];
ffa03542:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03544:	90 e6 2e 00 	B[P2 + 0x2e] = R0;
ffa03548:	ca b9       	P2 = [FP -0x10];
ffa0354a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0354c:	90 e6 2f 00 	B[P2 + 0x2f] = R0;
ffa03550:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c8e(-4191090) */
ffa03554:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa03558:	10 91       	R0 = [P2];
ffa0355a:	ca b9       	P2 = [FP -0x10];
ffa0355c:	10 b3       	[P2 + 0x30] = R0;
ffa0355e:	ca b9       	P2 = [FP -0x10];
ffa03560:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03562:	50 e6 1a 00 	W[P2 + 0x34] = R0;
ffa03566:	ca b9       	P2 = [FP -0x10];
ffa03568:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0356a:	50 e6 1b 00 	W[P2 + 0x36] = R0;
ffa0356e:	ca b9       	P2 = [FP -0x10];
ffa03570:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03572:	90 b3       	[P2 + 0x38] = R0;
ffa03574:	ca b9       	P2 = [FP -0x10];
ffa03576:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03578:	d0 b3       	[P2 + 0x3c] = R0;
ffa0357a:	ca b9       	P2 = [FP -0x10];
ffa0357c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0357e:	10 e6 10 00 	[P2 + 0x40] = R0;
ffa03582:	ca b9       	P2 = [FP -0x10];
ffa03584:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03586:	10 e6 11 00 	[P2 + 0x44] = R0;
ffa0358a:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820000(1669464064) */
ffa0358e:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa03592:	ff e3 53 fb 	CALL 0xffa02c38 <_htonl>;
ffa03596:	ca b9       	P2 = [FP -0x10];
ffa03598:	10 e6 46 00 	[P2 + 0x118] = R0;
ffa0359c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0359e:	e0 bb       	[FP -0x8] = R0;
ffa035a0:	14 20       	JUMP.S 0xffa035c8 <_DHCP_tx+0x1f0>;
ffa035a2:	e3 b9       	R3 = [FP -0x8];
ffa035a4:	e1 b9       	R1 = [FP -0x8];
ffa035a6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa035aa:	00 e1 b4 0c 	R0.L = 0xcb4;		/* (3252)	R0=0xff900cb4 <_NetOurMAC>(-7336780) */
ffa035ae:	08 50       	R0 = R0 + R1;
ffa035b0:	10 32       	P2 = R0;
ffa035b2:	52 99       	R2 = B[P2] (X);
ffa035b4:	c0 b9       	R0 = [FP -0x10];
ffa035b6:	43 50       	R1 = R3 + R0;
ffa035b8:	20 e1 48 00 	R0 = 0x48 (X);		/*		R0=0x48( 72) */
ffa035bc:	41 50       	R1 = R1 + R0;
ffa035be:	11 32       	P2 = R1;
ffa035c0:	12 9b       	B[P2] = R2;
ffa035c2:	e0 b9       	R0 = [FP -0x8];
ffa035c4:	08 64       	R0 += 0x1;		/* (  1) */
ffa035c6:	e0 bb       	[FP -0x8] = R0;
ffa035c8:	e0 b9       	R0 = [FP -0x8];
ffa035ca:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa035cc:	08 09       	CC = R0 <= R1;
ffa035ce:	ea 1b       	IF CC JUMP 0xffa035a2 <_DHCP_tx+0x1ca>;
ffa035d0:	0d 20       	JUMP.S 0xffa035ea <_DHCP_tx+0x212>;
ffa035d2:	e1 b9       	R1 = [FP -0x8];
ffa035d4:	c0 b9       	R0 = [FP -0x10];
ffa035d6:	41 50       	R1 = R1 + R0;
ffa035d8:	20 e1 48 00 	R0 = 0x48 (X);		/*		R0=0x48( 72) */
ffa035dc:	41 50       	R1 = R1 + R0;
ffa035de:	11 32       	P2 = R1;
ffa035e0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa035e2:	10 9b       	B[P2] = R0;
ffa035e4:	e0 b9       	R0 = [FP -0x8];
ffa035e6:	08 64       	R0 += 0x1;		/* (  1) */
ffa035e8:	e0 bb       	[FP -0x8] = R0;
ffa035ea:	e0 b9       	R0 = [FP -0x8];
ffa035ec:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa035ee:	08 09       	CC = R0 <= R1;
ffa035f0:	f1 1b       	IF CC JUMP 0xffa035d2 <_DHCP_tx+0x1fa>;
ffa035f2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa035f4:	e0 bb       	[FP -0x8] = R0;
ffa035f6:	0e 20       	JUMP.S 0xffa03612 <_DHCP_tx+0x23a>;
ffa035f8:	e0 b9       	R0 = [FP -0x8];
ffa035fa:	c1 b9       	R1 = [FP -0x10];
ffa035fc:	10 4f       	R0 <<= 0x2;
ffa035fe:	48 50       	R1 = R0 + R1;
ffa03600:	20 e1 58 00 	R0 = 0x58 (X);		/*		R0=0x58( 88) */
ffa03604:	41 50       	R1 = R1 + R0;
ffa03606:	11 32       	P2 = R1;
ffa03608:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0360a:	10 93       	[P2] = R0;
ffa0360c:	e0 b9       	R0 = [FP -0x8];
ffa0360e:	08 64       	R0 += 0x1;		/* (  1) */
ffa03610:	e0 bb       	[FP -0x8] = R0;
ffa03612:	e0 b9       	R0 = [FP -0x8];
ffa03614:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa03616:	08 09       	CC = R0 <= R1;
ffa03618:	f0 1b       	IF CC JUMP 0xffa035f8 <_DHCP_tx+0x220>;
ffa0361a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0361c:	e0 bb       	[FP -0x8] = R0;
ffa0361e:	0e 20       	JUMP.S 0xffa0363a <_DHCP_tx+0x262>;
ffa03620:	e0 b9       	R0 = [FP -0x8];
ffa03622:	c1 b9       	R1 = [FP -0x10];
ffa03624:	10 4f       	R0 <<= 0x2;
ffa03626:	48 50       	R1 = R0 + R1;
ffa03628:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa0362c:	41 50       	R1 = R1 + R0;
ffa0362e:	11 32       	P2 = R1;
ffa03630:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03632:	10 93       	[P2] = R0;
ffa03634:	e0 b9       	R0 = [FP -0x8];
ffa03636:	08 64       	R0 += 0x1;		/* (  1) */
ffa03638:	e0 bb       	[FP -0x8] = R0;
ffa0363a:	e0 b9       	R0 = [FP -0x8];
ffa0363c:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa0363e:	08 09       	CC = R0 <= R1;
ffa03640:	f0 1b       	IF CC JUMP 0xffa03620 <_DHCP_tx+0x248>;
ffa03642:	c0 b9       	R0 = [FP -0x10];
ffa03644:	f0 bb       	[FP -0x4] = R0;
ffa03646:	f1 b9       	R1 = [FP -0x4];
ffa03648:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa0364c:	01 50       	R0 = R1 + R0;
ffa0364e:	f0 bb       	[FP -0x4] = R0;
ffa03650:	f8 a0       	R0 = [FP + 0xc];
ffa03652:	f1 b9       	R1 = [FP -0x4];
ffa03654:	ba a0       	R2 = [FP + 0x8];
ffa03656:	ff e3 af eb 	CALL 0xffa00db4 <_memcpy_>;
ffa0365a:	ff e3 77 f3 	CALL 0xffa01d48 <_bfin_EMAC_send_nocopy>;
ffa0365e:	01 e8 00 00 	UNLINK;
ffa03662:	10 00       	RTS;

ffa03664 <_DHCP_rx>:
ffa03664:	78 05       	[--SP] = (R7:7);
ffa03666:	00 e8 08 00 	LINK 0x20;		/* (32) */
ffa0366a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0366c:	f0 bb       	[FP -0x4] = R0;
ffa0366e:	90 20       	JUMP.S 0xffa0378e <_DHCP_rx+0x12a>;
ffa03670:	47 30       	R0 = FP;
ffa03672:	80 67       	R0 += -0x10;		/* (-16) */
ffa03674:	ff e3 fa f4 	CALL 0xffa02068 <_bfin_EMAC_recv_poll>;
ffa03678:	d0 bb       	[FP -0xc] = R0;
ffa0367a:	d1 b9       	R1 = [FP -0xc];
ffa0367c:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa03680:	01 50       	R0 = R1 + R0;
ffa03682:	08 30       	R1 = R0;
ffa03684:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa03688:	00 e1 ac 02 	R0.L = 0x2ac;		/* (684)	R0=0xff9002ac(-7339348) */
ffa0368c:	ff e3 0c e9 	CALL 0xffa008a4 <_printf_int>;
ffa03690:	c0 b9       	R0 = [FP -0x10];
ffa03692:	e0 bb       	[FP -0x8] = R0;
ffa03694:	d0 b9       	R0 = [FP -0xc];
ffa03696:	00 0d       	CC = R0 <= 0x0;
ffa03698:	75 18       	IF CC JUMP 0xffa03782 <_DHCP_rx+0x11e>;
ffa0369a:	d0 b9       	R0 = [FP -0xc];
ffa0369c:	21 e1 1b 01 	R1 = 0x11b (X);		/*		R1=0x11b(283) */
ffa036a0:	08 0a       	CC = R0 <= R1 (IU);
ffa036a2:	70 18       	IF CC JUMP 0xffa03782 <_DHCP_rx+0x11e>;
ffa036a4:	00 00       	NOP;
ffa036a6:	00 00       	NOP;
ffa036a8:	ea b9       	P2 = [FP -0x8];
ffa036aa:	d0 a9       	R0 = W[P2 + 0xe] (X);
ffa036ac:	c0 42       	R0 = R0.L (Z);
ffa036ae:	ff e3 ad fa 	CALL 0xffa02c08 <_htons>;
ffa036b2:	c0 42       	R0 = R0.L (Z);
ffa036b4:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa036b8:	08 08       	CC = R0 == R1;
ffa036ba:	64 10       	IF !CC JUMP 0xffa03782 <_DHCP_rx+0x11e>;
ffa036bc:	00 00       	NOP;
ffa036be:	00 00       	NOP;
ffa036c0:	ea b9       	P2 = [FP -0x8];
ffa036c2:	57 e5 12 00 	R7 = W[P2 + 0x24] (X);
ffa036c6:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa036ca:	ff e3 9f fa 	CALL 0xffa02c08 <_htons>;
ffa036ce:	f9 42       	R1 = R7.L (Z);
ffa036d0:	c0 42       	R0 = R0.L (Z);
ffa036d2:	01 08       	CC = R1 == R0;
ffa036d4:	5d 10       	IF !CC JUMP 0xffa0378e <_DHCP_rx+0x12a>;
ffa036d6:	00 00       	NOP;
ffa036d8:	00 00       	NOP;
ffa036da:	ea b9       	P2 = [FP -0x8];
ffa036dc:	57 e5 13 00 	R7 = W[P2 + 0x26] (X);
ffa036e0:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa036e4:	ff e3 92 fa 	CALL 0xffa02c08 <_htons>;
ffa036e8:	f9 42       	R1 = R7.L (Z);
ffa036ea:	c0 42       	R0 = R0.L (Z);
ffa036ec:	01 08       	CC = R1 == R0;
ffa036ee:	50 10       	IF !CC JUMP 0xffa0378e <_DHCP_rx+0x12a>;
ffa036f0:	00 00       	NOP;
ffa036f2:	00 00       	NOP;
ffa036f4:	ea b9       	P2 = [FP -0x8];
ffa036f6:	11 a3       	R1 = [P2 + 0x30];
ffa036f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03004(-4182012) */
ffa036fc:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa03700:	10 91       	R0 = [P2];
ffa03702:	01 08       	CC = R1 == R0;
ffa03704:	45 10       	IF !CC JUMP 0xffa0378e <_DHCP_rx+0x12a>;
ffa03706:	00 00       	NOP;
ffa03708:	00 00       	NOP;
ffa0370a:	ea b9       	P2 = [FP -0x8];
ffa0370c:	17 e4 46 00 	R7 = [P2 + 0x118];
ffa03710:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa03714:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa03718:	ff e3 90 fa 	CALL 0xffa02c38 <_htonl>;
ffa0371c:	07 08       	CC = R7 == R0;
ffa0371e:	38 10       	IF !CC JUMP 0xffa0378e <_DHCP_rx+0x12a>;
ffa03720:	e0 b9       	R0 = [FP -0x8];
ffa03722:	c0 bb       	[FP -0x10] = R0;
ffa03724:	c1 b9       	R1 = [FP -0x10];
ffa03726:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa0372a:	01 50       	R0 = R1 + R0;
ffa0372c:	c0 bb       	[FP -0x10] = R0;
ffa0372e:	c2 b9       	R2 = [FP -0x10];
ffa03730:	d1 b9       	R1 = [FP -0xc];
ffa03732:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa03736:	01 50       	R0 = R1 + R0;
ffa03738:	08 30       	R1 = R0;
ffa0373a:	02 30       	R0 = R2;
ffa0373c:	00 e3 cc 00 	CALL 0xffa038d4 <_DHCP_parse>;
ffa03740:	ea b9       	P2 = [FP -0x8];
ffa03742:	d0 a3       	R0 = [P2 + 0x3c];
ffa03744:	00 0c       	CC = R0 == 0x0;
ffa03746:	1b 18       	IF CC JUMP 0xffa0377c <_DHCP_rx+0x118>;
ffa03748:	00 00       	NOP;
ffa0374a:	00 00       	NOP;
ffa0374c:	ea b9       	P2 = [FP -0x8];
ffa0374e:	d0 a3       	R0 = [P2 + 0x3c];
ffa03750:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa03754:	0a e1 c0 0c 	P2.L = 0xcc0;		/* (3264)	P2=0xff900cc0 <_NetOurIP> */
ffa03758:	10 93       	[P2] = R0;
ffa0375a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc0 <_NetOurIP> */
ffa0375e:	0a e1 c0 0c 	P2.L = 0xcc0;		/* (3264)	P2=0xff900cc0 <_NetOurIP> */
ffa03762:	11 91       	R1 = [P2];
ffa03764:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa03768:	00 e1 c0 02 	R0.L = 0x2c0;		/* (704)	R0=0xff9002c0(-7339328) */
ffa0376c:	ff e3 ae ea 	CALL 0xffa00cc8 <_printf_ip>;
ffa03770:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002c0(-7339328) */
ffa03774:	00 e1 dc 01 	R0.L = 0x1dc;		/* (476)	R0=0xff9001dc(-7339556) */
ffa03778:	ff e3 8c e8 	CALL 0xffa00890 <_printf_str>;
ffa0377c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0377e:	b0 bb       	[FP -0x14] = R0;
ffa03780:	0c 20       	JUMP.S 0xffa03798 <_DHCP_rx+0x134>;
ffa03782:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03786:	00 e1 d0 02 	R0.L = 0x2d0;		/* (720)	R0=0xff9002d0(-7339312) */
ffa0378a:	ff e3 83 e8 	CALL 0xffa00890 <_printf_str>;
ffa0378e:	f0 b9       	R0 = [FP -0x4];
ffa03790:	00 0c       	CC = R0 == 0x0;
ffa03792:	6f 1b       	IF CC JUMP 0xffa03670 <_DHCP_rx+0xc>;
ffa03794:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03796:	b1 bb       	[FP -0x14] = R1;
ffa03798:	b0 b9       	R0 = [FP -0x14];
ffa0379a:	01 e8 00 00 	UNLINK;
ffa0379e:	38 05       	(R7:7) = [SP++];
ffa037a0:	10 00       	RTS;
	...

ffa037a4 <_DHCP_req>:
ffa037a4:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa037a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc0 <_NetOurIP> */
ffa037ac:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xff900c88 <_NetDHCPserv> */
ffa037b0:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa037b2:	10 93       	[P2] = R0;
ffa037b4:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa037b6:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa037ba:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa037bc:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa037c0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa037c2:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa037c6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa037c8:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa037cc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa037d0:	00 e1 ec 02 	R0.L = 0x2ec;		/* (748)	R0=0xff9002ec(-7339284) */
ffa037d4:	ff e3 5e e8 	CALL 0xffa00890 <_printf_str>;
ffa037d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c88 <_NetDHCPserv> */
ffa037dc:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xff900c88 <_NetDHCPserv> */
ffa037e0:	12 91       	R2 = [P2];
ffa037e2:	4f 30       	R1 = FP;
ffa037e4:	a1 67       	R1 += -0xc;		/* (-12) */
ffa037e6:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa037e8:	ff e3 f8 fd 	CALL 0xffa033d8 <_DHCP_tx>;
ffa037ec:	ff e3 3c ff 	CALL 0xffa03664 <_DHCP_rx>;
ffa037f0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c88 <_NetDHCPserv> */
ffa037f4:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xff900c88 <_NetDHCPserv> */
ffa037f8:	10 91       	R0 = [P2];
ffa037fa:	38 0c       	CC = R0 == -0x1;
ffa037fc:	0a 10       	IF !CC JUMP 0xffa03810 <_DHCP_req+0x6c>;
ffa037fe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa03802:	00 e1 00 03 	R0.L = 0x300;		/* (768)	R0=0xff900300(-7339264) */
ffa03806:	ff e3 45 e8 	CALL 0xffa00890 <_printf_str>;
ffa0380a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0380c:	c0 bb       	[FP -0x10] = R0;
ffa0380e:	5e 20       	JUMP.S 0xffa038ca <_DHCP_req+0x126>;
ffa03810:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa03812:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa03816:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03818:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa0381c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0381e:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa03822:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa03824:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa03828:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0382a:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa0382e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c88 <_NetDHCPserv> */
ffa03832:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xff900c88 <_NetDHCPserv> */
ffa03836:	10 91       	R0 = [P2];
ffa03838:	b8 e6 f9 ff 	B[FP + -0x7] = R0;
ffa0383c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c88 <_NetDHCPserv> */
ffa03840:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xff900c88 <_NetDHCPserv> */
ffa03844:	10 91       	R0 = [P2];
ffa03846:	40 4e       	R0 >>= 0x8;
ffa03848:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa0384c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c88 <_NetDHCPserv> */
ffa03850:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xff900c88 <_NetDHCPserv> */
ffa03854:	10 91       	R0 = [P2];
ffa03856:	80 4e       	R0 >>= 0x10;
ffa03858:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0385c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c88 <_NetDHCPserv> */
ffa03860:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xff900c88 <_NetDHCPserv> */
ffa03864:	10 91       	R0 = [P2];
ffa03866:	c0 4e       	R0 >>= 0x18;
ffa03868:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa0386c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0386e:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa03872:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c88 <_NetDHCPserv> */
ffa03876:	0a e1 c0 0c 	P2.L = 0xcc0;		/* (3264)	P2=0xff900cc0 <_NetOurIP> */
ffa0387a:	10 91       	R0 = [P2];
ffa0387c:	00 0c       	CC = R0 == 0x0;
ffa0387e:	12 18       	IF CC JUMP 0xffa038a2 <_DHCP_req+0xfe>;
ffa03880:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc0 <_NetOurIP> */
ffa03884:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xff900c88 <_NetDHCPserv> */
ffa03888:	10 91       	R0 = [P2];
ffa0388a:	38 0c       	CC = R0 == -0x1;
ffa0388c:	0b 18       	IF CC JUMP 0xffa038a2 <_DHCP_req+0xfe>;
ffa0388e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c88 <_NetDHCPserv> */
ffa03892:	0a e1 bc 0c 	P2.L = 0xcbc;		/* (3260)	P2=0xff900cbc <_NetSubnetMask> */
ffa03896:	10 91       	R0 = [P2];
ffa03898:	00 0c       	CC = R0 == 0x0;
ffa0389a:	04 18       	IF CC JUMP 0xffa038a2 <_DHCP_req+0xfe>;
ffa0389c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0389e:	c0 bb       	[FP -0x10] = R0;
ffa038a0:	15 20       	JUMP.S 0xffa038ca <_DHCP_req+0x126>;
ffa038a2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa038a6:	00 e1 1c 03 	R0.L = 0x31c;		/* (796)	R0=0xff90031c(-7339236) */
ffa038aa:	ff e3 f3 e7 	CALL 0xffa00890 <_printf_str>;
ffa038ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cbc <_NetSubnetMask> */
ffa038b2:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xff900c88 <_NetDHCPserv> */
ffa038b6:	12 91       	R2 = [P2];
ffa038b8:	4f 30       	R1 = FP;
ffa038ba:	a1 67       	R1 += -0xc;		/* (-12) */
ffa038bc:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa038be:	ff e3 8d fd 	CALL 0xffa033d8 <_DHCP_tx>;
ffa038c2:	ff e3 d1 fe 	CALL 0xffa03664 <_DHCP_rx>;
ffa038c6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa038c8:	c0 bb       	[FP -0x10] = R0;
ffa038ca:	c0 b9       	R0 = [FP -0x10];
ffa038cc:	01 e8 00 00 	UNLINK;
ffa038d0:	10 00       	RTS;
	...

ffa038d4 <_DHCP_parse>:
ffa038d4:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa038d8:	b8 b0       	[FP + 0x8] = R0;
ffa038da:	f9 b0       	[FP + 0xc] = R1;
ffa038dc:	f8 a0       	R0 = [FP + 0xc];
ffa038de:	f0 bb       	[FP -0x4] = R0;
ffa038e0:	cb 20       	JUMP.S 0xffa03a76 <_DHCP_parse+0x1a2>;
ffa038e2:	ba ac       	P2 = [FP + 0x8];
ffa038e4:	50 99       	R0 = B[P2] (X);
ffa038e6:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa038ea:	b8 a0       	R0 = [FP + 0x8];
ffa038ec:	08 64       	R0 += 0x1;		/* (  1) */
ffa038ee:	b8 b0       	[FP + 0x8] = R0;
ffa038f0:	f0 b9       	R0 = [FP -0x4];
ffa038f2:	f8 67       	R0 += -0x1;		/* ( -1) */
ffa038f4:	f0 bb       	[FP -0x4] = R0;
ffa038f6:	b8 e4 fa ff 	R0 = B[FP + -0x6] (Z);
ffa038fa:	00 0c       	CC = R0 == 0x0;
ffa038fc:	bd 18       	IF CC JUMP 0xffa03a76 <_DHCP_parse+0x1a2>;
ffa038fe:	00 00       	NOP;
ffa03900:	00 00       	NOP;
ffa03902:	ba ac       	P2 = [FP + 0x8];
ffa03904:	50 99       	R0 = B[P2] (X);
ffa03906:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0390a:	b8 a0       	R0 = [FP + 0x8];
ffa0390c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0390e:	b8 b0       	[FP + 0x8] = R0;
ffa03910:	b8 e4 fa ff 	R0 = B[FP + -0x6] (Z);
ffa03914:	21 e1 ff 00 	R1 = 0xff (X);		/*		R1=0xff(255) */
ffa03918:	08 08       	CC = R0 == R1;
ffa0391a:	b1 18       	IF CC JUMP 0xffa03a7c <_DHCP_parse+0x1a8>;
ffa0391c:	b8 e4 fa ff 	R0 = B[FP + -0x6] (Z);
ffa03920:	d0 bb       	[FP -0xc] = R0;
ffa03922:	d1 b9       	R1 = [FP -0xc];
ffa03924:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa03926:	01 0a       	CC = R1 <= R0 (IU);
ffa03928:	85 10       	IF !CC JUMP 0xffa03a32 <_DHCP_parse+0x15e>;
ffa0392a:	d1 b9       	R1 = [FP -0xc];
ffa0392c:	11 4f       	R1 <<= 0x2;
ffa0392e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa03932:	00 e1 f4 03 	R0.L = 0x3f4;		/* (1012)	R0=0xff9003f4(-7339020) */
ffa03936:	41 50       	R1 = R1 + R0;
ffa03938:	11 32       	P2 = R1;
ffa0393a:	52 91       	P2 = [P2];
ffa0393c:	52 00       	JUMP (P2);
ffa0393e:	b8 a0       	R0 = [FP + 0x8];
ffa03940:	ff e3 aa f9 	CALL 0xffa02c94 <_pack4chars>;
ffa03944:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c88 <_NetDHCPserv> */
ffa03948:	0a e1 bc 0c 	P2.L = 0xcbc;		/* (3260)	P2=0xff900cbc <_NetSubnetMask> */
ffa0394c:	10 93       	[P2] = R0;
ffa0394e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cbc <_NetSubnetMask> */
ffa03952:	0a e1 bc 0c 	P2.L = 0xcbc;		/* (3260)	P2=0xff900cbc <_NetSubnetMask> */
ffa03956:	11 91       	R1 = [P2];
ffa03958:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003f4(-7339020) */
ffa0395c:	00 e1 30 03 	R0.L = 0x330;		/* (816)	R0=0xff900330(-7339216) */
ffa03960:	ff e3 b4 e9 	CALL 0xffa00cc8 <_printf_ip>;
ffa03964:	77 20       	JUMP.S 0xffa03a52 <_DHCP_parse+0x17e>;
ffa03966:	b8 a0       	R0 = [FP + 0x8];
ffa03968:	ff e3 96 f9 	CALL 0xffa02c94 <_pack4chars>;
ffa0396c:	08 30       	R1 = R0;
ffa0396e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900330(-7339216) */
ffa03972:	00 e1 40 03 	R0.L = 0x340;		/* (832)	R0=0xff900340(-7339200) */
ffa03976:	ff e3 a9 e9 	CALL 0xffa00cc8 <_printf_ip>;
ffa0397a:	6c 20       	JUMP.S 0xffa03a52 <_DHCP_parse+0x17e>;
ffa0397c:	b8 a0       	R0 = [FP + 0x8];
ffa0397e:	ff e3 8b f9 	CALL 0xffa02c94 <_pack4chars>;
ffa03982:	08 30       	R1 = R0;
ffa03984:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900340(-7339200) */
ffa03988:	00 e1 50 03 	R0.L = 0x350;		/* (848)	R0=0xff900350(-7339184) */
ffa0398c:	ff e3 9e e9 	CALL 0xffa00cc8 <_printf_ip>;
ffa03990:	61 20       	JUMP.S 0xffa03a52 <_DHCP_parse+0x17e>;
ffa03992:	b8 a0       	R0 = [FP + 0x8];
ffa03994:	ff e3 80 f9 	CALL 0xffa02c94 <_pack4chars>;
ffa03998:	08 30       	R1 = R0;
ffa0399a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900350(-7339184) */
ffa0399e:	00 e1 60 03 	R0.L = 0x360;		/* (864)	R0=0xff900360(-7339168) */
ffa039a2:	ff e3 93 e9 	CALL 0xffa00cc8 <_printf_ip>;
ffa039a6:	56 20       	JUMP.S 0xffa03a52 <_DHCP_parse+0x17e>;
ffa039a8:	b8 a0       	R0 = [FP + 0x8];
ffa039aa:	ff e3 75 f9 	CALL 0xffa02c94 <_pack4chars>;
ffa039ae:	ff e3 45 f9 	CALL 0xffa02c38 <_htonl>;
ffa039b2:	08 30       	R1 = R0;
ffa039b4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900360(-7339168) */
ffa039b8:	00 e1 70 03 	R0.L = 0x370;		/* (880)	R0=0xff900370(-7339152) */
ffa039bc:	ff e3 74 e7 	CALL 0xffa008a4 <_printf_int>;
ffa039c0:	49 20       	JUMP.S 0xffa03a52 <_DHCP_parse+0x17e>;
ffa039c2:	ba ac       	P2 = [FP + 0x8];
ffa039c4:	50 99       	R0 = B[P2] (X);
ffa039c6:	41 43       	R1 = R0.B (Z);
ffa039c8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900370(-7339152) */
ffa039cc:	00 e1 84 03 	R0.L = 0x384;		/* (900)	R0=0xff900384(-7339132) */
ffa039d0:	ff e3 6a e7 	CALL 0xffa008a4 <_printf_int>;
ffa039d4:	3f 20       	JUMP.S 0xffa03a52 <_DHCP_parse+0x17e>;
ffa039d6:	b8 a0       	R0 = [FP + 0x8];
ffa039d8:	ff e3 5e f9 	CALL 0xffa02c94 <_pack4chars>;
ffa039dc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cbc <_NetSubnetMask> */
ffa039e0:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xff900c88 <_NetDHCPserv> */
ffa039e4:	10 93       	[P2] = R0;
ffa039e6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c88 <_NetDHCPserv> */
ffa039ea:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xff900c88 <_NetDHCPserv> */
ffa039ee:	11 91       	R1 = [P2];
ffa039f0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900384(-7339132) */
ffa039f4:	00 e1 98 03 	R0.L = 0x398;		/* (920)	R0=0xff900398(-7339112) */
ffa039f8:	ff e3 68 e9 	CALL 0xffa00cc8 <_printf_ip>;
ffa039fc:	2b 20       	JUMP.S 0xffa03a52 <_DHCP_parse+0x17e>;
ffa039fe:	b8 a0       	R0 = [FP + 0x8];
ffa03a00:	ff e3 4a f9 	CALL 0xffa02c94 <_pack4chars>;
ffa03a04:	ff e3 1a f9 	CALL 0xffa02c38 <_htonl>;
ffa03a08:	08 30       	R1 = R0;
ffa03a0a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900398(-7339112) */
ffa03a0e:	00 e1 ac 03 	R0.L = 0x3ac;		/* (940)	R0=0xff9003ac(-7339092) */
ffa03a12:	ff e3 49 e7 	CALL 0xffa008a4 <_printf_int>;
ffa03a16:	1e 20       	JUMP.S 0xffa03a52 <_DHCP_parse+0x17e>;
ffa03a18:	b8 a0       	R0 = [FP + 0x8];
ffa03a1a:	ff e3 3d f9 	CALL 0xffa02c94 <_pack4chars>;
ffa03a1e:	ff e3 0d f9 	CALL 0xffa02c38 <_htonl>;
ffa03a22:	08 30       	R1 = R0;
ffa03a24:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003ac(-7339092) */
ffa03a28:	00 e1 c0 03 	R0.L = 0x3c0;		/* (960)	R0=0xff9003c0(-7339072) */
ffa03a2c:	ff e3 3c e7 	CALL 0xffa008a4 <_printf_int>;
ffa03a30:	11 20       	JUMP.S 0xffa03a52 <_DHCP_parse+0x17e>;
ffa03a32:	b9 e4 fa ff 	R1 = B[FP + -0x6] (Z);
ffa03a36:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003c0(-7339072) */
ffa03a3a:	00 e1 d8 03 	R0.L = 0x3d8;		/* (984)	R0=0xff9003d8(-7339048) */
ffa03a3e:	ff e3 33 e7 	CALL 0xffa008a4 <_printf_int>;
ffa03a42:	b9 e4 fb ff 	R1 = B[FP + -0x5] (Z);
ffa03a46:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003d8(-7339048) */
ffa03a4a:	00 e1 ec 03 	R0.L = 0x3ec;		/* (1004)	R0=0xff9003ec(-7339028) */
ffa03a4e:	ff e3 2b e7 	CALL 0xffa008a4 <_printf_int>;
ffa03a52:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003ec(-7339028) */
ffa03a56:	00 e1 dc 01 	R0.L = 0x1dc;		/* (476)	R0=0xff9001dc(-7339556) */
ffa03a5a:	ff e3 1b e7 	CALL 0xffa00890 <_printf_str>;
ffa03a5e:	b8 e4 fb ff 	R0 = B[FP + -0x5] (Z);
ffa03a62:	08 30       	R1 = R0;
ffa03a64:	b8 a0       	R0 = [FP + 0x8];
ffa03a66:	08 50       	R0 = R0 + R1;
ffa03a68:	b8 b0       	[FP + 0x8] = R0;
ffa03a6a:	b9 e4 fb ff 	R1 = B[FP + -0x5] (Z);
ffa03a6e:	f0 b9       	R0 = [FP -0x4];
ffa03a70:	08 52       	R0 = R0 - R1;
ffa03a72:	f8 67       	R0 += -0x1;		/* ( -1) */
ffa03a74:	f0 bb       	[FP -0x4] = R0;
ffa03a76:	f0 b9       	R0 = [FP -0x4];
ffa03a78:	08 0d       	CC = R0 <= 0x1;
ffa03a7a:	34 13       	IF !CC JUMP 0xffa038e2 <_DHCP_parse+0xe>;
ffa03a7c:	01 e8 00 00 	UNLINK;
ffa03a80:	10 00       	RTS;
	...

ffa03a84 <_ARP_init>:
ffa03a84:	00 e8 02 00 	LINK 0x8;		/* (8) */
ffa03a88:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a8a:	e0 bb       	[FP -0x8] = R0;
ffa03a8c:	55 20       	JUMP.S 0xffa03b36 <_ARP_init+0xb2>;
ffa03a8e:	e1 b9       	R1 = [FP -0x8];
ffa03a90:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9010f5(-7335691) */
ffa03a94:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa03a98:	01 30       	R0 = R1;
ffa03a9a:	10 4f       	R0 <<= 0x2;
ffa03a9c:	08 50       	R0 = R0 + R1;
ffa03a9e:	10 4f       	R0 <<= 0x2;
ffa03aa0:	10 50       	R0 = R0 + R2;
ffa03aa2:	10 32       	P2 = R0;
ffa03aa4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03aa6:	10 93       	[P2] = R0;
ffa03aa8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03aaa:	f0 bb       	[FP -0x4] = R0;
ffa03aac:	14 20       	JUMP.S 0xffa03ad4 <_ARP_init+0x50>;
ffa03aae:	e1 b9       	R1 = [FP -0x8];
ffa03ab0:	f3 b9       	R3 = [FP -0x4];
ffa03ab2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa03ab6:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa03aba:	01 30       	R0 = R1;
ffa03abc:	10 4f       	R0 <<= 0x2;
ffa03abe:	08 50       	R0 = R0 + R1;
ffa03ac0:	10 4f       	R0 <<= 0x2;
ffa03ac2:	10 50       	R0 = R0 + R2;
ffa03ac4:	18 50       	R0 = R0 + R3;
ffa03ac6:	10 32       	P2 = R0;
ffa03ac8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa03aca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03acc:	10 9b       	B[P2] = R0;
ffa03ace:	f0 b9       	R0 = [FP -0x4];
ffa03ad0:	08 64       	R0 += 0x1;		/* (  1) */
ffa03ad2:	f0 bb       	[FP -0x4] = R0;
ffa03ad4:	f0 b9       	R0 = [FP -0x4];
ffa03ad6:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03ad8:	08 09       	CC = R0 <= R1;
ffa03ada:	ea 1b       	IF CC JUMP 0xffa03aae <_ARP_init+0x2a>;
ffa03adc:	e1 b9       	R1 = [FP -0x8];
ffa03ade:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa03ae2:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa03ae6:	01 30       	R0 = R1;
ffa03ae8:	10 4f       	R0 <<= 0x2;
ffa03aea:	08 50       	R0 = R0 + R1;
ffa03aec:	10 4f       	R0 <<= 0x2;
ffa03aee:	10 50       	R0 = R0 + R2;
ffa03af0:	10 32       	P2 = R0;
ffa03af2:	42 6c       	P2 += 0x8;		/* (  8) */
ffa03af4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03af6:	50 b4       	W[P2 + 0x2] = R0;
ffa03af8:	e1 b9       	R1 = [FP -0x8];
ffa03afa:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa03afe:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa03b02:	01 30       	R0 = R1;
ffa03b04:	10 4f       	R0 <<= 0x2;
ffa03b06:	08 50       	R0 = R0 + R1;
ffa03b08:	10 4f       	R0 <<= 0x2;
ffa03b0a:	10 50       	R0 = R0 + R2;
ffa03b0c:	10 32       	P2 = R0;
ffa03b0e:	62 6c       	P2 += 0xc;		/* ( 12) */
ffa03b10:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b12:	10 93       	[P2] = R0;
ffa03b14:	e1 b9       	R1 = [FP -0x8];
ffa03b16:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa03b1a:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa03b1e:	01 30       	R0 = R1;
ffa03b20:	10 4f       	R0 <<= 0x2;
ffa03b22:	08 50       	R0 = R0 + R1;
ffa03b24:	10 4f       	R0 <<= 0x2;
ffa03b26:	10 50       	R0 = R0 + R2;
ffa03b28:	10 32       	P2 = R0;
ffa03b2a:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa03b2c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b2e:	10 93       	[P2] = R0;
ffa03b30:	e0 b9       	R0 = [FP -0x8];
ffa03b32:	08 64       	R0 += 0x1;		/* (  1) */
ffa03b34:	e0 bb       	[FP -0x8] = R0;
ffa03b36:	e0 b9       	R0 = [FP -0x8];
ffa03b38:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa03b3a:	08 09       	CC = R0 <= R1;
ffa03b3c:	a9 1b       	IF CC JUMP 0xffa03a8e <_ARP_init+0xa>;
ffa03b3e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c88 <_NetDHCPserv> */
ffa03b42:	0a e1 c8 0c 	P2.L = 0xcc8;		/* (3272)	P2=0xff900cc8 <_NetArpLut_age> */
ffa03b46:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa03b4a:	10 97       	W[P2] = R0;
ffa03b4c:	01 e8 00 00 	UNLINK;
ffa03b50:	10 00       	RTS;
	...

ffa03b54 <_ARP_tx>:
ffa03b54:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa03b58:	b8 b0       	[FP + 0x8] = R0;
ffa03b5a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc8 <_NetArpLut_age> */
ffa03b5e:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa03b62:	50 95       	R0 = W[P2] (X);
ffa03b64:	c0 42       	R0 = R0.L (Z);
ffa03b66:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900009(-7340023) */
ffa03b6a:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa03b6e:	10 4f       	R0 <<= 0x2;
ffa03b70:	08 50       	R0 = R0 + R1;
ffa03b72:	10 32       	P2 = R0;
ffa03b74:	52 91       	P2 = [P2];
ffa03b76:	90 a1       	R0 = [P2 + 0x18];
ffa03b78:	f0 bb       	[FP -0x4] = R0;
ffa03b7a:	fa b9       	P2 = [FP -0x4];
ffa03b7c:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa03b7e:	10 97       	W[P2] = R0;
ffa03b80:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b82:	e0 bb       	[FP -0x8] = R0;
ffa03b84:	0b 20       	JUMP.S 0xffa03b9a <_ARP_tx+0x46>;
ffa03b86:	e1 b9       	R1 = [FP -0x8];
ffa03b88:	f0 b9       	R0 = [FP -0x4];
ffa03b8a:	08 50       	R0 = R0 + R1;
ffa03b8c:	10 32       	P2 = R0;
ffa03b8e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03b90:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa03b94:	e0 b9       	R0 = [FP -0x8];
ffa03b96:	08 64       	R0 += 0x1;		/* (  1) */
ffa03b98:	e0 bb       	[FP -0x8] = R0;
ffa03b9a:	e0 b9       	R0 = [FP -0x8];
ffa03b9c:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03b9e:	08 09       	CC = R0 <= R1;
ffa03ba0:	f3 1b       	IF CC JUMP 0xffa03b86 <_ARP_tx+0x32>;
ffa03ba2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ba4:	e0 bb       	[FP -0x8] = R0;
ffa03ba6:	12 20       	JUMP.S 0xffa03bca <_ARP_tx+0x76>;
ffa03ba8:	e2 b9       	R2 = [FP -0x8];
ffa03baa:	e1 b9       	R1 = [FP -0x8];
ffa03bac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03bb0:	00 e1 b4 0c 	R0.L = 0xcb4;		/* (3252)	R0=0xff900cb4 <_NetOurMAC>(-7336780) */
ffa03bb4:	08 50       	R0 = R0 + R1;
ffa03bb6:	10 32       	P2 = R0;
ffa03bb8:	51 99       	R1 = B[P2] (X);
ffa03bba:	f0 b9       	R0 = [FP -0x4];
ffa03bbc:	02 50       	R0 = R2 + R0;
ffa03bbe:	10 32       	P2 = R0;
ffa03bc0:	42 6c       	P2 += 0x8;		/* (  8) */
ffa03bc2:	11 9b       	B[P2] = R1;
ffa03bc4:	e0 b9       	R0 = [FP -0x8];
ffa03bc6:	08 64       	R0 += 0x1;		/* (  1) */
ffa03bc8:	e0 bb       	[FP -0x8] = R0;
ffa03bca:	e0 b9       	R0 = [FP -0x8];
ffa03bcc:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03bce:	08 09       	CC = R0 <= R1;
ffa03bd0:	ec 1b       	IF CC JUMP 0xffa03ba8 <_ARP_tx+0x54>;
ffa03bd2:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa03bd6:	ff e3 19 f8 	CALL 0xffa02c08 <_htons>;
ffa03bda:	fa b9       	P2 = [FP -0x4];
ffa03bdc:	d0 b5       	W[P2 + 0xe] = R0;
ffa03bde:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03be0:	ff e3 14 f8 	CALL 0xffa02c08 <_htons>;
ffa03be4:	fa b9       	P2 = [FP -0x4];
ffa03be6:	10 b6       	W[P2 + 0x10] = R0;
ffa03be8:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03bec:	ff e3 0e f8 	CALL 0xffa02c08 <_htons>;
ffa03bf0:	fa b9       	P2 = [FP -0x4];
ffa03bf2:	50 b6       	W[P2 + 0x12] = R0;
ffa03bf4:	fa b9       	P2 = [FP -0x4];
ffa03bf6:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03bf8:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa03bfc:	fa b9       	P2 = [FP -0x4];
ffa03bfe:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03c00:	90 e6 15 00 	B[P2 + 0x15] = R0;
ffa03c04:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03c06:	ff e3 01 f8 	CALL 0xffa02c08 <_htons>;
ffa03c0a:	fa b9       	P2 = [FP -0x4];
ffa03c0c:	d0 b6       	W[P2 + 0x16] = R0;
ffa03c0e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c10:	e0 bb       	[FP -0x8] = R0;
ffa03c12:	1a 20       	JUMP.S 0xffa03c46 <_ARP_tx+0xf2>;
ffa03c14:	e2 b9       	R2 = [FP -0x8];
ffa03c16:	e1 b9       	R1 = [FP -0x8];
ffa03c18:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03c1c:	00 e1 b4 0c 	R0.L = 0xcb4;		/* (3252)	R0=0xff900cb4 <_NetOurMAC>(-7336780) */
ffa03c20:	08 50       	R0 = R0 + R1;
ffa03c22:	10 32       	P2 = R0;
ffa03c24:	51 99       	R1 = B[P2] (X);
ffa03c26:	f0 b9       	R0 = [FP -0x4];
ffa03c28:	02 50       	R0 = R2 + R0;
ffa03c2a:	10 32       	P2 = R0;
ffa03c2c:	c2 6c       	P2 += 0x18;		/* ( 24) */
ffa03c2e:	11 9b       	B[P2] = R1;
ffa03c30:	e1 b9       	R1 = [FP -0x8];
ffa03c32:	f0 b9       	R0 = [FP -0x4];
ffa03c34:	01 50       	R0 = R1 + R0;
ffa03c36:	10 32       	P2 = R0;
ffa03c38:	02 6d       	P2 += 0x20;		/* ( 32) */
ffa03c3a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c3c:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa03c40:	e0 b9       	R0 = [FP -0x8];
ffa03c42:	08 64       	R0 += 0x1;		/* (  1) */
ffa03c44:	e0 bb       	[FP -0x8] = R0;
ffa03c46:	e0 b9       	R0 = [FP -0x8];
ffa03c48:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03c4a:	08 09       	CC = R0 <= R1;
ffa03c4c:	e4 1b       	IF CC JUMP 0xffa03c14 <_ARP_tx+0xc0>;
ffa03c4e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa03c52:	0a e1 c0 0c 	P2.L = 0xcc0;		/* (3264)	P2=0xff900cc0 <_NetOurIP> */
ffa03c56:	10 91       	R0 = [P2];
ffa03c58:	fa b9       	P2 = [FP -0x4];
ffa03c5a:	90 e6 1e 00 	B[P2 + 0x1e] = R0;
ffa03c5e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc0 <_NetOurIP> */
ffa03c62:	0a e1 c0 0c 	P2.L = 0xcc0;		/* (3264)	P2=0xff900cc0 <_NetOurIP> */
ffa03c66:	10 91       	R0 = [P2];
ffa03c68:	40 4e       	R0 >>= 0x8;
ffa03c6a:	fa b9       	P2 = [FP -0x4];
ffa03c6c:	90 e6 1f 00 	B[P2 + 0x1f] = R0;
ffa03c70:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc0 <_NetOurIP> */
ffa03c74:	0a e1 c0 0c 	P2.L = 0xcc0;		/* (3264)	P2=0xff900cc0 <_NetOurIP> */
ffa03c78:	10 91       	R0 = [P2];
ffa03c7a:	80 4e       	R0 >>= 0x10;
ffa03c7c:	fa b9       	P2 = [FP -0x4];
ffa03c7e:	90 e6 20 00 	B[P2 + 0x20] = R0;
ffa03c82:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc0 <_NetOurIP> */
ffa03c86:	0a e1 c0 0c 	P2.L = 0xcc0;		/* (3264)	P2=0xff900cc0 <_NetOurIP> */
ffa03c8a:	10 91       	R0 = [P2];
ffa03c8c:	c0 4e       	R0 >>= 0x18;
ffa03c8e:	fa b9       	P2 = [FP -0x4];
ffa03c90:	90 e6 21 00 	B[P2 + 0x21] = R0;
ffa03c94:	fa b9       	P2 = [FP -0x4];
ffa03c96:	b8 a0       	R0 = [FP + 0x8];
ffa03c98:	90 b2       	[P2 + 0x28] = R0;
ffa03c9a:	ff e3 57 f0 	CALL 0xffa01d48 <_bfin_EMAC_send_nocopy>;
ffa03c9e:	01 e8 00 00 	UNLINK;
ffa03ca2:	10 00       	RTS;

ffa03ca4 <_ARP_rx>:
ffa03ca4:	78 05       	[--SP] = (R7:7);
ffa03ca6:	00 e8 09 00 	LINK 0x24;		/* (36) */
ffa03caa:	f8 b0       	[FP + 0xc] = R0;
ffa03cac:	39 b1       	[FP + 0x10] = R1;
ffa03cae:	f8 a0       	R0 = [FP + 0xc];
ffa03cb0:	c0 bb       	[FP -0x10] = R0;
ffa03cb2:	ca b9       	P2 = [FP -0x10];
ffa03cb4:	d0 a9       	R0 = W[P2 + 0xe] (X);
ffa03cb6:	c0 42       	R0 = R0.L (Z);
ffa03cb8:	ff e3 a8 f7 	CALL 0xffa02c08 <_htons>;
ffa03cbc:	c0 42       	R0 = R0.L (Z);
ffa03cbe:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa03cc2:	08 08       	CC = R0 == R1;
ffa03cc4:	b8 11       	IF !CC JUMP 0xffa04034 <_ARP_rx+0x390>;
ffa03cc6:	38 a1       	R0 = [FP + 0x10];
ffa03cc8:	59 61       	R1 = 0x2b (X);		/*		R1=0x2b( 43) */
ffa03cca:	08 0a       	CC = R0 <= R1 (IU);
ffa03ccc:	b4 19       	IF CC JUMP 0xffa04034 <_ARP_rx+0x390>;
ffa03cce:	00 00       	NOP;
ffa03cd0:	00 00       	NOP;
ffa03cd2:	ca b9       	P2 = [FP -0x10];
ffa03cd4:	17 aa       	R7 = W[P2 + 0x10] (X);
ffa03cd6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03cd8:	ff e3 98 f7 	CALL 0xffa02c08 <_htons>;
ffa03cdc:	f9 42       	R1 = R7.L (Z);
ffa03cde:	c0 42       	R0 = R0.L (Z);
ffa03ce0:	01 08       	CC = R1 == R0;
ffa03ce2:	a9 11       	IF !CC JUMP 0xffa04034 <_ARP_rx+0x390>;
ffa03ce4:	00 00       	NOP;
ffa03ce6:	00 00       	NOP;
ffa03ce8:	ca b9       	P2 = [FP -0x10];
ffa03cea:	57 aa       	R7 = W[P2 + 0x12] (X);
ffa03cec:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03cf0:	ff e3 8c f7 	CALL 0xffa02c08 <_htons>;
ffa03cf4:	f9 42       	R1 = R7.L (Z);
ffa03cf6:	c0 42       	R0 = R0.L (Z);
ffa03cf8:	01 08       	CC = R1 == R0;
ffa03cfa:	9d 11       	IF !CC JUMP 0xffa04034 <_ARP_rx+0x390>;
ffa03cfc:	00 00       	NOP;
ffa03cfe:	00 00       	NOP;
ffa03d00:	ca b9       	P2 = [FP -0x10];
ffa03d02:	90 e5 14 00 	R0 = B[P2 + 0x14] (X);
ffa03d06:	40 43       	R0 = R0.B (Z);
ffa03d08:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa03d0a:	08 08       	CC = R0 == R1;
ffa03d0c:	94 11       	IF !CC JUMP 0xffa04034 <_ARP_rx+0x390>;
ffa03d0e:	00 00       	NOP;
ffa03d10:	00 00       	NOP;
ffa03d12:	ca b9       	P2 = [FP -0x10];
ffa03d14:	90 e5 15 00 	R0 = B[P2 + 0x15] (X);
ffa03d18:	40 43       	R0 = R0.B (Z);
ffa03d1a:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa03d1c:	08 08       	CC = R0 == R1;
ffa03d1e:	8b 11       	IF !CC JUMP 0xffa04034 <_ARP_rx+0x390>;
ffa03d20:	00 00       	NOP;
ffa03d22:	00 00       	NOP;
ffa03d24:	ca b9       	P2 = [FP -0x10];
ffa03d26:	d7 aa       	R7 = W[P2 + 0x16] (X);
ffa03d28:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03d2a:	ff e3 6f f7 	CALL 0xffa02c08 <_htons>;
ffa03d2e:	f9 42       	R1 = R7.L (Z);
ffa03d30:	c0 42       	R0 = R0.L (Z);
ffa03d32:	01 08       	CC = R1 == R0;
ffa03d34:	75 10       	IF !CC JUMP 0xffa03e1e <_ARP_rx+0x17a>;
ffa03d36:	00 00       	NOP;
ffa03d38:	00 00       	NOP;
ffa03d3a:	ca b9       	P2 = [FP -0x10];
ffa03d3c:	91 e5 22 00 	R1 = B[P2 + 0x22] (X);
ffa03d40:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc0 <_NetOurIP> */
ffa03d44:	0a e1 b4 0c 	P2.L = 0xcb4;		/* (3252)	P2=0xff900cb4 <_NetOurMAC> */
ffa03d48:	50 99       	R0 = B[P2] (X);
ffa03d4a:	49 43       	R1 = R1.B (Z);
ffa03d4c:	40 43       	R0 = R0.B (Z);
ffa03d4e:	01 08       	CC = R1 == R0;
ffa03d50:	67 10       	IF !CC JUMP 0xffa03e1e <_ARP_rx+0x17a>;
ffa03d52:	00 00       	NOP;
ffa03d54:	00 00       	NOP;
ffa03d56:	ca b9       	P2 = [FP -0x10];
ffa03d58:	91 e5 23 00 	R1 = B[P2 + 0x23] (X);
ffa03d5c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cb4 <_NetOurMAC> */
ffa03d60:	0a e1 b4 0c 	P2.L = 0xcb4;		/* (3252)	P2=0xff900cb4 <_NetOurMAC> */
ffa03d64:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa03d68:	49 43       	R1 = R1.B (Z);
ffa03d6a:	40 43       	R0 = R0.B (Z);
ffa03d6c:	01 08       	CC = R1 == R0;
ffa03d6e:	58 10       	IF !CC JUMP 0xffa03e1e <_ARP_rx+0x17a>;
ffa03d70:	00 00       	NOP;
ffa03d72:	00 00       	NOP;
ffa03d74:	ca b9       	P2 = [FP -0x10];
ffa03d76:	91 e5 24 00 	R1 = B[P2 + 0x24] (X);
ffa03d7a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cb4 <_NetOurMAC> */
ffa03d7e:	0a e1 b4 0c 	P2.L = 0xcb4;		/* (3252)	P2=0xff900cb4 <_NetOurMAC> */
ffa03d82:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa03d86:	49 43       	R1 = R1.B (Z);
ffa03d88:	40 43       	R0 = R0.B (Z);
ffa03d8a:	01 08       	CC = R1 == R0;
ffa03d8c:	49 10       	IF !CC JUMP 0xffa03e1e <_ARP_rx+0x17a>;
ffa03d8e:	00 00       	NOP;
ffa03d90:	00 00       	NOP;
ffa03d92:	ca b9       	P2 = [FP -0x10];
ffa03d94:	91 e5 25 00 	R1 = B[P2 + 0x25] (X);
ffa03d98:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cb4 <_NetOurMAC> */
ffa03d9c:	0a e1 b4 0c 	P2.L = 0xcb4;		/* (3252)	P2=0xff900cb4 <_NetOurMAC> */
ffa03da0:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa03da4:	49 43       	R1 = R1.B (Z);
ffa03da6:	40 43       	R0 = R0.B (Z);
ffa03da8:	01 08       	CC = R1 == R0;
ffa03daa:	3a 10       	IF !CC JUMP 0xffa03e1e <_ARP_rx+0x17a>;
ffa03dac:	00 00       	NOP;
ffa03dae:	00 00       	NOP;
ffa03db0:	ca b9       	P2 = [FP -0x10];
ffa03db2:	91 e5 26 00 	R1 = B[P2 + 0x26] (X);
ffa03db6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cb4 <_NetOurMAC> */
ffa03dba:	0a e1 b4 0c 	P2.L = 0xcb4;		/* (3252)	P2=0xff900cb4 <_NetOurMAC> */
ffa03dbe:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa03dc2:	49 43       	R1 = R1.B (Z);
ffa03dc4:	40 43       	R0 = R0.B (Z);
ffa03dc6:	01 08       	CC = R1 == R0;
ffa03dc8:	2b 10       	IF !CC JUMP 0xffa03e1e <_ARP_rx+0x17a>;
ffa03dca:	00 00       	NOP;
ffa03dcc:	00 00       	NOP;
ffa03dce:	ca b9       	P2 = [FP -0x10];
ffa03dd0:	91 e5 27 00 	R1 = B[P2 + 0x27] (X);
ffa03dd4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cb4 <_NetOurMAC> */
ffa03dd8:	0a e1 b4 0c 	P2.L = 0xcb4;		/* (3252)	P2=0xff900cb4 <_NetOurMAC> */
ffa03ddc:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa03de0:	49 43       	R1 = R1.B (Z);
ffa03de2:	40 43       	R0 = R0.B (Z);
ffa03de4:	01 08       	CC = R1 == R0;
ffa03de6:	1c 10       	IF !CC JUMP 0xffa03e1e <_ARP_rx+0x17a>;
ffa03de8:	c0 b9       	R0 = [FP -0x10];
ffa03dea:	f0 64       	R0 += 0x1e;		/* ( 30) */
ffa03dec:	ff e3 54 f7 	CALL 0xffa02c94 <_pack4chars>;
ffa03df0:	f0 bb       	[FP -0x4] = R0;
ffa03df2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa03df6:	00 e1 e4 04 	R0.L = 0x4e4;		/* (1252)	R0=0xff9004e4(-7338780) */
ffa03dfa:	f1 b9       	R1 = [FP -0x4];
ffa03dfc:	ff e3 66 e7 	CALL 0xffa00cc8 <_printf_ip>;
ffa03e00:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004e4(-7338780) */
ffa03e04:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa03e08:	ff e3 44 e5 	CALL 0xffa00890 <_printf_str>;
ffa03e0c:	c0 b9       	R0 = [FP -0x10];
ffa03e0e:	08 30       	R1 = R0;
ffa03e10:	c1 64       	R1 += 0x18;		/* ( 24) */
ffa03e12:	f0 b9       	R0 = [FP -0x4];
ffa03e14:	00 e3 78 01 	CALL 0xffa04104 <_ARP_lut_add>;
ffa03e18:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03e1a:	b0 bb       	[FP -0x14] = R0;
ffa03e1c:	0e 21       	JUMP.S 0xffa04038 <_ARP_rx+0x394>;
ffa03e1e:	ca b9       	P2 = [FP -0x10];
ffa03e20:	17 aa       	R7 = W[P2 + 0x10] (X);
ffa03e22:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03e24:	ff e3 f2 f6 	CALL 0xffa02c08 <_htons>;
ffa03e28:	f9 42       	R1 = R7.L (Z);
ffa03e2a:	c0 42       	R0 = R0.L (Z);
ffa03e2c:	01 08       	CC = R1 == R0;
ffa03e2e:	03 11       	IF !CC JUMP 0xffa04034 <_ARP_rx+0x390>;
ffa03e30:	00 00       	NOP;
ffa03e32:	00 00       	NOP;
ffa03e34:	ca b9       	P2 = [FP -0x10];
ffa03e36:	57 aa       	R7 = W[P2 + 0x12] (X);
ffa03e38:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03e3c:	ff e3 e6 f6 	CALL 0xffa02c08 <_htons>;
ffa03e40:	f9 42       	R1 = R7.L (Z);
ffa03e42:	c0 42       	R0 = R0.L (Z);
ffa03e44:	01 08       	CC = R1 == R0;
ffa03e46:	f7 10       	IF !CC JUMP 0xffa04034 <_ARP_rx+0x390>;
ffa03e48:	00 00       	NOP;
ffa03e4a:	00 00       	NOP;
ffa03e4c:	ca b9       	P2 = [FP -0x10];
ffa03e4e:	90 e5 14 00 	R0 = B[P2 + 0x14] (X);
ffa03e52:	40 43       	R0 = R0.B (Z);
ffa03e54:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa03e56:	08 08       	CC = R0 == R1;
ffa03e58:	ee 10       	IF !CC JUMP 0xffa04034 <_ARP_rx+0x390>;
ffa03e5a:	00 00       	NOP;
ffa03e5c:	00 00       	NOP;
ffa03e5e:	ca b9       	P2 = [FP -0x10];
ffa03e60:	90 e5 15 00 	R0 = B[P2 + 0x15] (X);
ffa03e64:	40 43       	R0 = R0.B (Z);
ffa03e66:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa03e68:	08 08       	CC = R0 == R1;
ffa03e6a:	e5 10       	IF !CC JUMP 0xffa04034 <_ARP_rx+0x390>;
ffa03e6c:	00 00       	NOP;
ffa03e6e:	00 00       	NOP;
ffa03e70:	ca b9       	P2 = [FP -0x10];
ffa03e72:	d7 aa       	R7 = W[P2 + 0x16] (X);
ffa03e74:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03e76:	ff e3 c9 f6 	CALL 0xffa02c08 <_htons>;
ffa03e7a:	f9 42       	R1 = R7.L (Z);
ffa03e7c:	c0 42       	R0 = R0.L (Z);
ffa03e7e:	01 08       	CC = R1 == R0;
ffa03e80:	da 10       	IF !CC JUMP 0xffa04034 <_ARP_rx+0x390>;
ffa03e82:	00 00       	NOP;
ffa03e84:	00 00       	NOP;
ffa03e86:	ca b9       	P2 = [FP -0x10];
ffa03e88:	91 a2       	R1 = [P2 + 0x28];
ffa03e8a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cb4 <_NetOurMAC> */
ffa03e8e:	0a e1 c0 0c 	P2.L = 0xcc0;		/* (3264)	P2=0xff900cc0 <_NetOurIP> */
ffa03e92:	10 91       	R0 = [P2];
ffa03e94:	01 08       	CC = R1 == R0;
ffa03e96:	cf 10       	IF !CC JUMP 0xffa04034 <_ARP_rx+0x390>;
ffa03e98:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03e9c:	00 e1 0c 05 	R0.L = 0x50c;		/* (1292)	R0=0xff90050c(-7338740) */
ffa03ea0:	ff e3 f8 e4 	CALL 0xffa00890 <_printf_str>;
ffa03ea4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc0 <_NetOurIP> */
ffa03ea8:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa03eac:	50 95       	R0 = W[P2] (X);
ffa03eae:	c0 42       	R0 = R0.L (Z);
ffa03eb0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900004(-7340028) */
ffa03eb4:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa03eb8:	10 4f       	R0 <<= 0x2;
ffa03eba:	08 50       	R0 = R0 + R1;
ffa03ebc:	10 32       	P2 = R0;
ffa03ebe:	52 91       	P2 = [P2];
ffa03ec0:	90 a1       	R0 = [P2 + 0x18];
ffa03ec2:	d0 bb       	[FP -0xc] = R0;
ffa03ec4:	da b9       	P2 = [FP -0xc];
ffa03ec6:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa03ec8:	10 97       	W[P2] = R0;
ffa03eca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ecc:	e0 bb       	[FP -0x8] = R0;
ffa03ece:	10 20       	JUMP.S 0xffa03eee <_ARP_rx+0x24a>;
ffa03ed0:	e2 b9       	R2 = [FP -0x8];
ffa03ed2:	e1 b9       	R1 = [FP -0x8];
ffa03ed4:	c0 b9       	R0 = [FP -0x10];
ffa03ed6:	01 50       	R0 = R1 + R0;
ffa03ed8:	10 32       	P2 = R0;
ffa03eda:	42 6c       	P2 += 0x8;		/* (  8) */
ffa03edc:	51 99       	R1 = B[P2] (X);
ffa03ede:	d0 b9       	R0 = [FP -0xc];
ffa03ee0:	10 50       	R0 = R0 + R2;
ffa03ee2:	10 32       	P2 = R0;
ffa03ee4:	91 e6 02 00 	B[P2 + 0x2] = R1;
ffa03ee8:	e0 b9       	R0 = [FP -0x8];
ffa03eea:	08 64       	R0 += 0x1;		/* (  1) */
ffa03eec:	e0 bb       	[FP -0x8] = R0;
ffa03eee:	e0 b9       	R0 = [FP -0x8];
ffa03ef0:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03ef2:	08 09       	CC = R0 <= R1;
ffa03ef4:	ee 1b       	IF CC JUMP 0xffa03ed0 <_ARP_rx+0x22c>;
ffa03ef6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ef8:	e0 bb       	[FP -0x8] = R0;
ffa03efa:	12 20       	JUMP.S 0xffa03f1e <_ARP_rx+0x27a>;
ffa03efc:	e2 b9       	R2 = [FP -0x8];
ffa03efe:	e1 b9       	R1 = [FP -0x8];
ffa03f00:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03f04:	00 e1 b4 0c 	R0.L = 0xcb4;		/* (3252)	R0=0xff900cb4 <_NetOurMAC>(-7336780) */
ffa03f08:	08 50       	R0 = R0 + R1;
ffa03f0a:	10 32       	P2 = R0;
ffa03f0c:	51 99       	R1 = B[P2] (X);
ffa03f0e:	d0 b9       	R0 = [FP -0xc];
ffa03f10:	02 50       	R0 = R2 + R0;
ffa03f12:	10 32       	P2 = R0;
ffa03f14:	42 6c       	P2 += 0x8;		/* (  8) */
ffa03f16:	11 9b       	B[P2] = R1;
ffa03f18:	e0 b9       	R0 = [FP -0x8];
ffa03f1a:	08 64       	R0 += 0x1;		/* (  1) */
ffa03f1c:	e0 bb       	[FP -0x8] = R0;
ffa03f1e:	e0 b9       	R0 = [FP -0x8];
ffa03f20:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03f22:	08 09       	CC = R0 <= R1;
ffa03f24:	ec 1b       	IF CC JUMP 0xffa03efc <_ARP_rx+0x258>;
ffa03f26:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa03f2a:	ff e3 6f f6 	CALL 0xffa02c08 <_htons>;
ffa03f2e:	da b9       	P2 = [FP -0xc];
ffa03f30:	d0 b5       	W[P2 + 0xe] = R0;
ffa03f32:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03f34:	ff e3 6a f6 	CALL 0xffa02c08 <_htons>;
ffa03f38:	da b9       	P2 = [FP -0xc];
ffa03f3a:	10 b6       	W[P2 + 0x10] = R0;
ffa03f3c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03f40:	ff e3 64 f6 	CALL 0xffa02c08 <_htons>;
ffa03f44:	da b9       	P2 = [FP -0xc];
ffa03f46:	50 b6       	W[P2 + 0x12] = R0;
ffa03f48:	da b9       	P2 = [FP -0xc];
ffa03f4a:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03f4c:	90 e6 14 00 	B[P2 + 0x14] = R0;
ffa03f50:	da b9       	P2 = [FP -0xc];
ffa03f52:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03f54:	90 e6 15 00 	B[P2 + 0x15] = R0;
ffa03f58:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03f5a:	ff e3 57 f6 	CALL 0xffa02c08 <_htons>;
ffa03f5e:	da b9       	P2 = [FP -0xc];
ffa03f60:	d0 b6       	W[P2 + 0x16] = R0;
ffa03f62:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03f64:	e0 bb       	[FP -0x8] = R0;
ffa03f66:	1f 20       	JUMP.S 0xffa03fa4 <_ARP_rx+0x300>;
ffa03f68:	e2 b9       	R2 = [FP -0x8];
ffa03f6a:	e1 b9       	R1 = [FP -0x8];
ffa03f6c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03f70:	00 e1 b4 0c 	R0.L = 0xcb4;		/* (3252)	R0=0xff900cb4 <_NetOurMAC>(-7336780) */
ffa03f74:	08 50       	R0 = R0 + R1;
ffa03f76:	10 32       	P2 = R0;
ffa03f78:	51 99       	R1 = B[P2] (X);
ffa03f7a:	d0 b9       	R0 = [FP -0xc];
ffa03f7c:	02 50       	R0 = R2 + R0;
ffa03f7e:	10 32       	P2 = R0;
ffa03f80:	c2 6c       	P2 += 0x18;		/* ( 24) */
ffa03f82:	11 9b       	B[P2] = R1;
ffa03f84:	e2 b9       	R2 = [FP -0x8];
ffa03f86:	e1 b9       	R1 = [FP -0x8];
ffa03f88:	c0 b9       	R0 = [FP -0x10];
ffa03f8a:	01 50       	R0 = R1 + R0;
ffa03f8c:	10 32       	P2 = R0;
ffa03f8e:	c2 6c       	P2 += 0x18;		/* ( 24) */
ffa03f90:	51 99       	R1 = B[P2] (X);
ffa03f92:	d0 b9       	R0 = [FP -0xc];
ffa03f94:	02 50       	R0 = R2 + R0;
ffa03f96:	10 32       	P2 = R0;
ffa03f98:	02 6d       	P2 += 0x20;		/* ( 32) */
ffa03f9a:	91 e6 02 00 	B[P2 + 0x2] = R1;
ffa03f9e:	e0 b9       	R0 = [FP -0x8];
ffa03fa0:	08 64       	R0 += 0x1;		/* (  1) */
ffa03fa2:	e0 bb       	[FP -0x8] = R0;
ffa03fa4:	e0 b9       	R0 = [FP -0x8];
ffa03fa6:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03fa8:	08 09       	CC = R0 <= R1;
ffa03faa:	df 1b       	IF CC JUMP 0xffa03f68 <_ARP_rx+0x2c4>;
ffa03fac:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa03fb0:	0a e1 c0 0c 	P2.L = 0xcc0;		/* (3264)	P2=0xff900cc0 <_NetOurIP> */
ffa03fb4:	10 91       	R0 = [P2];
ffa03fb6:	da b9       	P2 = [FP -0xc];
ffa03fb8:	90 e6 1e 00 	B[P2 + 0x1e] = R0;
ffa03fbc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc0 <_NetOurIP> */
ffa03fc0:	0a e1 c0 0c 	P2.L = 0xcc0;		/* (3264)	P2=0xff900cc0 <_NetOurIP> */
ffa03fc4:	10 91       	R0 = [P2];
ffa03fc6:	40 4e       	R0 >>= 0x8;
ffa03fc8:	da b9       	P2 = [FP -0xc];
ffa03fca:	90 e6 1f 00 	B[P2 + 0x1f] = R0;
ffa03fce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc0 <_NetOurIP> */
ffa03fd2:	0a e1 c0 0c 	P2.L = 0xcc0;		/* (3264)	P2=0xff900cc0 <_NetOurIP> */
ffa03fd6:	10 91       	R0 = [P2];
ffa03fd8:	80 4e       	R0 >>= 0x10;
ffa03fda:	da b9       	P2 = [FP -0xc];
ffa03fdc:	90 e6 20 00 	B[P2 + 0x20] = R0;
ffa03fe0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc0 <_NetOurIP> */
ffa03fe4:	0a e1 c0 0c 	P2.L = 0xcc0;		/* (3264)	P2=0xff900cc0 <_NetOurIP> */
ffa03fe8:	10 91       	R0 = [P2];
ffa03fea:	c0 4e       	R0 >>= 0x18;
ffa03fec:	da b9       	P2 = [FP -0xc];
ffa03fee:	90 e6 21 00 	B[P2 + 0x21] = R0;
ffa03ff2:	ca b9       	P2 = [FP -0x10];
ffa03ff4:	90 e5 1e 00 	R0 = B[P2 + 0x1e] (X);
ffa03ff8:	43 43       	R3 = R0.B (Z);
ffa03ffa:	ca b9       	P2 = [FP -0x10];
ffa03ffc:	90 e5 1f 00 	R0 = B[P2 + 0x1f] (X);
ffa04000:	41 43       	R1 = R0.B (Z);
ffa04002:	ca b9       	P2 = [FP -0x10];
ffa04004:	90 e5 20 00 	R0 = B[P2 + 0x20] (X);
ffa04008:	42 43       	R2 = R0.B (Z);
ffa0400a:	ca b9       	P2 = [FP -0x10];
ffa0400c:	90 e5 21 00 	R0 = B[P2 + 0x21] (X);
ffa04010:	40 43       	R0 = R0.B (Z);
ffa04012:	f0 b0       	[SP + 0xc] = R0;
ffa04014:	03 30       	R0 = R3;
ffa04016:	ff e3 e7 f0 	CALL 0xffa021e4 <_FormatIPAddress>;
ffa0401a:	da b9       	P2 = [FP -0xc];
ffa0401c:	90 b2       	[P2 + 0x28] = R0;
ffa0401e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900cb4 <_NetOurMAC>(-7336780) */
ffa04022:	00 e1 28 05 	R0.L = 0x528;		/* (1320)	R0=0xff900528(-7338712) */
ffa04026:	ff e3 35 e4 	CALL 0xffa00890 <_printf_str>;
ffa0402a:	ff e3 8f ee 	CALL 0xffa01d48 <_bfin_EMAC_send_nocopy>;
ffa0402e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04030:	b0 bb       	[FP -0x14] = R0;
ffa04032:	03 20       	JUMP.S 0xffa04038 <_ARP_rx+0x394>;
ffa04034:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa04036:	b1 bb       	[FP -0x14] = R1;
ffa04038:	b0 b9       	R0 = [FP -0x14];
ffa0403a:	01 e8 00 00 	UNLINK;
ffa0403e:	38 05       	(R7:7) = [SP++];
ffa04040:	10 00       	RTS;
	...

ffa04044 <_ARP_lut_find>:
ffa04044:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa04048:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0404a:	d0 bb       	[FP -0xc] = R0;
ffa0404c:	12 20       	JUMP.S 0xffa04070 <_ARP_lut_find+0x2c>;
ffa0404e:	d1 b9       	R1 = [FP -0xc];
ffa04050:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa04054:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa04058:	01 30       	R0 = R1;
ffa0405a:	10 4f       	R0 <<= 0x2;
ffa0405c:	08 50       	R0 = R0 + R1;
ffa0405e:	10 4f       	R0 <<= 0x2;
ffa04060:	10 50       	R0 = R0 + R2;
ffa04062:	10 32       	P2 = R0;
ffa04064:	10 91       	R0 = [P2];
ffa04066:	00 0c       	CC = R0 == 0x0;
ffa04068:	08 18       	IF CC JUMP 0xffa04078 <_ARP_lut_find+0x34>;
ffa0406a:	d0 b9       	R0 = [FP -0xc];
ffa0406c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0406e:	d0 bb       	[FP -0xc] = R0;
ffa04070:	d0 b9       	R0 = [FP -0xc];
ffa04072:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa04074:	08 09       	CC = R0 <= R1;
ffa04076:	ec 1b       	IF CC JUMP 0xffa0404e <_ARP_lut_find+0xa>;
ffa04078:	d0 b9       	R0 = [FP -0xc];
ffa0407a:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0407c:	08 08       	CC = R0 == R1;
ffa0407e:	3e 10       	IF !CC JUMP 0xffa040fa <_ARP_lut_find+0xb6>;
ffa04080:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04082:	d0 bb       	[FP -0xc] = R0;
ffa04084:	d1 b9       	R1 = [FP -0xc];
ffa04086:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa0408a:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa0408e:	01 30       	R0 = R1;
ffa04090:	10 4f       	R0 <<= 0x2;
ffa04092:	08 50       	R0 = R0 + R1;
ffa04094:	10 4f       	R0 <<= 0x2;
ffa04096:	10 50       	R0 = R0 + R2;
ffa04098:	10 32       	P2 = R0;
ffa0409a:	42 6c       	P2 += 0x8;		/* (  8) */
ffa0409c:	50 a8       	R0 = W[P2 + 0x2] (X);
ffa0409e:	c0 42       	R0 = R0.L (Z);
ffa040a0:	f0 bb       	[FP -0x4] = R0;
ffa040a2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa040a4:	e0 bb       	[FP -0x8] = R0;
ffa040a6:	26 20       	JUMP.S 0xffa040f2 <_ARP_lut_find+0xae>;
ffa040a8:	e1 b9       	R1 = [FP -0x8];
ffa040aa:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa040ae:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa040b2:	01 30       	R0 = R1;
ffa040b4:	10 4f       	R0 <<= 0x2;
ffa040b6:	08 50       	R0 = R0 + R1;
ffa040b8:	10 4f       	R0 <<= 0x2;
ffa040ba:	10 50       	R0 = R0 + R2;
ffa040bc:	10 32       	P2 = R0;
ffa040be:	42 6c       	P2 += 0x8;		/* (  8) */
ffa040c0:	50 a8       	R0 = W[P2 + 0x2] (X);
ffa040c2:	c1 42       	R1 = R0.L (Z);
ffa040c4:	f0 b9       	R0 = [FP -0x4];
ffa040c6:	81 08       	CC = R1 < R0;
ffa040c8:	12 10       	IF !CC JUMP 0xffa040ec <_ARP_lut_find+0xa8>;
ffa040ca:	e0 b9       	R0 = [FP -0x8];
ffa040cc:	d0 bb       	[FP -0xc] = R0;
ffa040ce:	e1 b9       	R1 = [FP -0x8];
ffa040d0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa040d4:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa040d8:	01 30       	R0 = R1;
ffa040da:	10 4f       	R0 <<= 0x2;
ffa040dc:	08 50       	R0 = R0 + R1;
ffa040de:	10 4f       	R0 <<= 0x2;
ffa040e0:	10 50       	R0 = R0 + R2;
ffa040e2:	10 32       	P2 = R0;
ffa040e4:	42 6c       	P2 += 0x8;		/* (  8) */
ffa040e6:	50 a8       	R0 = W[P2 + 0x2] (X);
ffa040e8:	c0 42       	R0 = R0.L (Z);
ffa040ea:	f0 bb       	[FP -0x4] = R0;
ffa040ec:	e0 b9       	R0 = [FP -0x8];
ffa040ee:	08 64       	R0 += 0x1;		/* (  1) */
ffa040f0:	e0 bb       	[FP -0x8] = R0;
ffa040f2:	e0 b9       	R0 = [FP -0x8];
ffa040f4:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa040f6:	08 09       	CC = R0 <= R1;
ffa040f8:	d8 1b       	IF CC JUMP 0xffa040a8 <_ARP_lut_find+0x64>;
ffa040fa:	d0 b9       	R0 = [FP -0xc];
ffa040fc:	01 e8 00 00 	UNLINK;
ffa04100:	10 00       	RTS;
	...

ffa04104 <_ARP_lut_add>:
ffa04104:	78 05       	[--SP] = (R7:7);
ffa04106:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0410a:	f8 b0       	[FP + 0xc] = R0;
ffa0410c:	39 b1       	[FP + 0x10] = R1;
ffa0410e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa04110:	f0 bb       	[FP -0x4] = R0;
ffa04112:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04114:	d0 bb       	[FP -0xc] = R0;
ffa04116:	15 20       	JUMP.S 0xffa04140 <_ARP_lut_add+0x3c>;
ffa04118:	d1 b9       	R1 = [FP -0xc];
ffa0411a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa0411e:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa04122:	01 30       	R0 = R1;
ffa04124:	10 4f       	R0 <<= 0x2;
ffa04126:	08 50       	R0 = R0 + R1;
ffa04128:	10 4f       	R0 <<= 0x2;
ffa0412a:	10 50       	R0 = R0 + R2;
ffa0412c:	10 32       	P2 = R0;
ffa0412e:	11 91       	R1 = [P2];
ffa04130:	f8 a0       	R0 = [FP + 0xc];
ffa04132:	01 08       	CC = R1 == R0;
ffa04134:	03 10       	IF !CC JUMP 0xffa0413a <_ARP_lut_add+0x36>;
ffa04136:	d0 b9       	R0 = [FP -0xc];
ffa04138:	f0 bb       	[FP -0x4] = R0;
ffa0413a:	d0 b9       	R0 = [FP -0xc];
ffa0413c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0413e:	d0 bb       	[FP -0xc] = R0;
ffa04140:	d0 b9       	R0 = [FP -0xc];
ffa04142:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa04144:	08 09       	CC = R0 <= R1;
ffa04146:	04 10       	IF !CC JUMP 0xffa0414e <_ARP_lut_add+0x4a>;
ffa04148:	f0 b9       	R0 = [FP -0x4];
ffa0414a:	80 0c       	CC = R0 < 0x0;
ffa0414c:	e6 1b       	IF CC JUMP 0xffa04118 <_ARP_lut_add+0x14>;
ffa0414e:	f0 b9       	R0 = [FP -0x4];
ffa04150:	80 0c       	CC = R0 < 0x0;
ffa04152:	04 10       	IF !CC JUMP 0xffa0415a <_ARP_lut_add+0x56>;
ffa04154:	ff e3 78 ff 	CALL 0xffa04044 <_ARP_lut_find>;
ffa04158:	f0 bb       	[FP -0x4] = R0;
ffa0415a:	f1 b9       	R1 = [FP -0x4];
ffa0415c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa04160:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa04164:	01 30       	R0 = R1;
ffa04166:	10 4f       	R0 <<= 0x2;
ffa04168:	08 50       	R0 = R0 + R1;
ffa0416a:	10 4f       	R0 <<= 0x2;
ffa0416c:	10 50       	R0 = R0 + R2;
ffa0416e:	10 32       	P2 = R0;
ffa04170:	f8 a0       	R0 = [FP + 0xc];
ffa04172:	10 93       	[P2] = R0;
ffa04174:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04176:	e0 bb       	[FP -0x8] = R0;
ffa04178:	19 20       	JUMP.S 0xffa041aa <_ARP_lut_add+0xa6>;
ffa0417a:	f2 b9       	R2 = [FP -0x4];
ffa0417c:	e7 b9       	R7 = [FP -0x8];
ffa0417e:	e0 b9       	R0 = [FP -0x8];
ffa04180:	08 30       	R1 = R0;
ffa04182:	38 a1       	R0 = [FP + 0x10];
ffa04184:	41 50       	R1 = R1 + R0;
ffa04186:	11 32       	P2 = R1;
ffa04188:	53 99       	R3 = B[P2] (X);
ffa0418a:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900009(-7340023) */
ffa0418e:	01 e1 cc 0c 	R1.L = 0xccc;		/* (3276)	R1=0xff900ccc <_NetArpLut>(-7336756) */
ffa04192:	02 30       	R0 = R2;
ffa04194:	10 4f       	R0 <<= 0x2;
ffa04196:	10 50       	R0 = R0 + R2;
ffa04198:	10 4f       	R0 <<= 0x2;
ffa0419a:	08 50       	R0 = R0 + R1;
ffa0419c:	38 50       	R0 = R0 + R7;
ffa0419e:	10 32       	P2 = R0;
ffa041a0:	22 6c       	P2 += 0x4;		/* (  4) */
ffa041a2:	13 9b       	B[P2] = R3;
ffa041a4:	e0 b9       	R0 = [FP -0x8];
ffa041a6:	08 64       	R0 += 0x1;		/* (  1) */
ffa041a8:	e0 bb       	[FP -0x8] = R0;
ffa041aa:	e0 b9       	R0 = [FP -0x8];
ffa041ac:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa041ae:	08 09       	CC = R0 <= R1;
ffa041b0:	e5 1b       	IF CC JUMP 0xffa0417a <_ARP_lut_add+0x76>;
ffa041b2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc0 <_NetOurIP> */
ffa041b6:	0a e1 c8 0c 	P2.L = 0xcc8;		/* (3272)	P2=0xff900cc8 <_NetArpLut_age> */
ffa041ba:	50 95       	R0 = W[P2] (X);
ffa041bc:	08 64       	R0 += 0x1;		/* (  1) */
ffa041be:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc8 <_NetArpLut_age> */
ffa041c2:	0a e1 c8 0c 	P2.L = 0xcc8;		/* (3272)	P2=0xff900cc8 <_NetArpLut_age> */
ffa041c6:	10 97       	W[P2] = R0;
ffa041c8:	f1 b9       	R1 = [FP -0x4];
ffa041ca:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc8 <_NetArpLut_age> */
ffa041ce:	0a e1 c8 0c 	P2.L = 0xcc8;		/* (3272)	P2=0xff900cc8 <_NetArpLut_age> */
ffa041d2:	53 95       	R3 = W[P2] (X);
ffa041d4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa041d8:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa041dc:	01 30       	R0 = R1;
ffa041de:	10 4f       	R0 <<= 0x2;
ffa041e0:	08 50       	R0 = R0 + R1;
ffa041e2:	10 4f       	R0 <<= 0x2;
ffa041e4:	10 50       	R0 = R0 + R2;
ffa041e6:	10 32       	P2 = R0;
ffa041e8:	42 6c       	P2 += 0x8;		/* (  8) */
ffa041ea:	53 b4       	W[P2 + 0x2] = R3;
ffa041ec:	f1 b9       	R1 = [FP -0x4];
ffa041ee:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa041f2:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa041f6:	01 30       	R0 = R1;
ffa041f8:	10 4f       	R0 <<= 0x2;
ffa041fa:	08 50       	R0 = R0 + R1;
ffa041fc:	10 4f       	R0 <<= 0x2;
ffa041fe:	10 50       	R0 = R0 + R2;
ffa04200:	10 32       	P2 = R0;
ffa04202:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa04204:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04206:	10 93       	[P2] = R0;
ffa04208:	01 e8 00 00 	UNLINK;
ffa0420c:	38 05       	(R7:7) = [SP++];
ffa0420e:	10 00       	RTS;

ffa04210 <_ARP_lu>:
ffa04210:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa04214:	b8 b0       	[FP + 0x8] = R0;
ffa04216:	f9 b0       	[FP + 0xc] = R1;
ffa04218:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0421a:	e0 bb       	[FP -0x8] = R0;
ffa0421c:	46 20       	JUMP.S 0xffa042a8 <_ARP_lu+0x98>;
ffa0421e:	e1 b9       	R1 = [FP -0x8];
ffa04220:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa04224:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa04228:	01 30       	R0 = R1;
ffa0422a:	10 4f       	R0 <<= 0x2;
ffa0422c:	08 50       	R0 = R0 + R1;
ffa0422e:	10 4f       	R0 <<= 0x2;
ffa04230:	10 50       	R0 = R0 + R2;
ffa04232:	10 32       	P2 = R0;
ffa04234:	11 91       	R1 = [P2];
ffa04236:	b8 a0       	R0 = [FP + 0x8];
ffa04238:	01 08       	CC = R1 == R0;
ffa0423a:	34 10       	IF !CC JUMP 0xffa042a2 <_ARP_lu+0x92>;
ffa0423c:	e1 b9       	R1 = [FP -0x8];
ffa0423e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa04242:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa04246:	01 30       	R0 = R1;
ffa04248:	10 4f       	R0 <<= 0x2;
ffa0424a:	08 50       	R0 = R0 + R1;
ffa0424c:	10 4f       	R0 <<= 0x2;
ffa0424e:	10 50       	R0 = R0 + R2;
ffa04250:	10 32       	P2 = R0;
ffa04252:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa04254:	10 91       	R0 = [P2];
ffa04256:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa04258:	00 02       	R0 = CC;
ffa0425a:	40 43       	R0 = R0.B (Z);
ffa0425c:	00 0c       	CC = R0 == 0x0;
ffa0425e:	22 18       	IF CC JUMP 0xffa042a2 <_ARP_lu+0x92>;
ffa04260:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04262:	f0 bb       	[FP -0x4] = R0;
ffa04264:	18 20       	JUMP.S 0xffa04294 <_ARP_lu+0x84>;
ffa04266:	e1 b9       	R1 = [FP -0x8];
ffa04268:	f3 b9       	R3 = [FP -0x4];
ffa0426a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa0426e:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa04272:	01 30       	R0 = R1;
ffa04274:	10 4f       	R0 <<= 0x2;
ffa04276:	08 50       	R0 = R0 + R1;
ffa04278:	10 4f       	R0 <<= 0x2;
ffa0427a:	10 50       	R0 = R0 + R2;
ffa0427c:	18 50       	R0 = R0 + R3;
ffa0427e:	10 32       	P2 = R0;
ffa04280:	22 6c       	P2 += 0x4;		/* (  4) */
ffa04282:	50 99       	R0 = B[P2] (X);
ffa04284:	fa ac       	P2 = [FP + 0xc];
ffa04286:	10 9b       	B[P2] = R0;
ffa04288:	f8 a0       	R0 = [FP + 0xc];
ffa0428a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0428c:	f8 b0       	[FP + 0xc] = R0;
ffa0428e:	f0 b9       	R0 = [FP -0x4];
ffa04290:	08 64       	R0 += 0x1;		/* (  1) */
ffa04292:	f0 bb       	[FP -0x4] = R0;
ffa04294:	f0 b9       	R0 = [FP -0x4];
ffa04296:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa04298:	08 09       	CC = R0 <= R1;
ffa0429a:	e6 1b       	IF CC JUMP 0xffa04266 <_ARP_lu+0x56>;
ffa0429c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0429e:	d0 bb       	[FP -0xc] = R0;
ffa042a0:	0a 20       	JUMP.S 0xffa042b4 <_ARP_lu+0xa4>;
ffa042a2:	e0 b9       	R0 = [FP -0x8];
ffa042a4:	08 64       	R0 += 0x1;		/* (  1) */
ffa042a6:	e0 bb       	[FP -0x8] = R0;
ffa042a8:	e0 b9       	R0 = [FP -0x8];
ffa042aa:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa042ac:	08 09       	CC = R0 <= R1;
ffa042ae:	b8 1b       	IF CC JUMP 0xffa0421e <_ARP_lu+0xe>;
ffa042b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa042b2:	d0 bb       	[FP -0xc] = R0;
ffa042b4:	d0 b9       	R0 = [FP -0xc];
ffa042b6:	01 e8 00 00 	UNLINK;
ffa042ba:	10 00       	RTS;

ffa042bc <_ARP_req>:
ffa042bc:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa042c0:	b8 b0       	[FP + 0x8] = R0;
ffa042c2:	f9 b0       	[FP + 0xc] = R1;
ffa042c4:	f9 a0       	R1 = [FP + 0xc];
ffa042c6:	b8 a0       	R0 = [FP + 0x8];
ffa042c8:	ff e3 a4 ff 	CALL 0xffa04210 <_ARP_lu>;
ffa042cc:	00 0c       	CC = R0 == 0x0;
ffa042ce:	04 18       	IF CC JUMP 0xffa042d6 <_ARP_req+0x1a>;
ffa042d0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa042d2:	d0 bb       	[FP -0xc] = R0;
ffa042d4:	b9 20       	JUMP.S 0xffa04446 <_ARP_req+0x18a>;
ffa042d6:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800cc8 */
ffa042da:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa042de:	10 91       	R0 = [P2];
ffa042e0:	f0 bb       	[FP -0x4] = R0;
ffa042e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa042e4:	e0 bb       	[FP -0x8] = R0;
ffa042e6:	5b 20       	JUMP.S 0xffa0439c <_ARP_req+0xe0>;
ffa042e8:	e1 b9       	R1 = [FP -0x8];
ffa042ea:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa042ee:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa042f2:	01 30       	R0 = R1;
ffa042f4:	10 4f       	R0 <<= 0x2;
ffa042f6:	08 50       	R0 = R0 + R1;
ffa042f8:	10 4f       	R0 <<= 0x2;
ffa042fa:	10 50       	R0 = R0 + R2;
ffa042fc:	10 32       	P2 = R0;
ffa042fe:	11 91       	R1 = [P2];
ffa04300:	b8 a0       	R0 = [FP + 0x8];
ffa04302:	01 08       	CC = R1 == R0;
ffa04304:	49 10       	IF !CC JUMP 0xffa04396 <_ARP_req+0xda>;
ffa04306:	e1 b9       	R1 = [FP -0x8];
ffa04308:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa0430c:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa04310:	01 30       	R0 = R1;
ffa04312:	10 4f       	R0 <<= 0x2;
ffa04314:	08 50       	R0 = R0 + R1;
ffa04316:	10 4f       	R0 <<= 0x2;
ffa04318:	10 50       	R0 = R0 + R2;
ffa0431a:	10 32       	P2 = R0;
ffa0431c:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa0431e:	11 91       	R1 = [P2];
ffa04320:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa04322:	01 54       	R0 = R1 & R0;
ffa04324:	00 0c       	CC = R0 == 0x0;
ffa04326:	38 18       	IF CC JUMP 0xffa04396 <_ARP_req+0xda>;
ffa04328:	e1 b9       	R1 = [FP -0x8];
ffa0432a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa0432e:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa04332:	01 30       	R0 = R1;
ffa04334:	10 4f       	R0 <<= 0x2;
ffa04336:	08 50       	R0 = R0 + R1;
ffa04338:	10 4f       	R0 <<= 0x2;
ffa0433a:	10 50       	R0 = R0 + R2;
ffa0433c:	10 32       	P2 = R0;
ffa0433e:	62 6c       	P2 += 0xc;		/* ( 12) */
ffa04340:	11 91       	R1 = [P2];
ffa04342:	f0 b9       	R0 = [FP -0x4];
ffa04344:	01 0a       	CC = R1 <= R0 (IU);
ffa04346:	04 18       	IF CC JUMP 0xffa0434e <_ARP_req+0x92>;
ffa04348:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0434a:	d1 bb       	[FP -0xc] = R1;
ffa0434c:	7d 20       	JUMP.S 0xffa04446 <_ARP_req+0x18a>;
ffa0434e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa04352:	00 e1 40 05 	R0.L = 0x540;		/* (1344)	R0=0xff900540(-7338688) */
ffa04356:	b9 a0       	R1 = [FP + 0x8];
ffa04358:	ff e3 b8 e4 	CALL 0xffa00cc8 <_printf_ip>;
ffa0435c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900540(-7338688) */
ffa04360:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa04364:	ff e3 96 e2 	CALL 0xffa00890 <_printf_str>;
ffa04368:	b8 a0       	R0 = [FP + 0x8];
ffa0436a:	ff e3 f5 fb 	CALL 0xffa03b54 <_ARP_tx>;
ffa0436e:	e2 b9       	R2 = [FP -0x8];
ffa04370:	f1 b9       	R1 = [FP -0x4];
ffa04372:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa04376:	c1 50       	R3 = R1 + R0;
ffa04378:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900000 <_l1_data_a>(-7340032) */
ffa0437c:	01 e1 cc 0c 	R1.L = 0xccc;		/* (3276)	R1=0xff900ccc <_NetArpLut>(-7336756) */
ffa04380:	02 30       	R0 = R2;
ffa04382:	10 4f       	R0 <<= 0x2;
ffa04384:	10 50       	R0 = R0 + R2;
ffa04386:	10 4f       	R0 <<= 0x2;
ffa04388:	08 50       	R0 = R0 + R1;
ffa0438a:	10 32       	P2 = R0;
ffa0438c:	62 6c       	P2 += 0xc;		/* ( 12) */
ffa0438e:	13 93       	[P2] = R3;
ffa04390:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04392:	d0 bb       	[FP -0xc] = R0;
ffa04394:	59 20       	JUMP.S 0xffa04446 <_ARP_req+0x18a>;
ffa04396:	e0 b9       	R0 = [FP -0x8];
ffa04398:	08 64       	R0 += 0x1;		/* (  1) */
ffa0439a:	e0 bb       	[FP -0x8] = R0;
ffa0439c:	e0 b9       	R0 = [FP -0x8];
ffa0439e:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
ffa043a0:	08 09       	CC = R0 <= R1;
ffa043a2:	a3 1b       	IF CC JUMP 0xffa042e8 <_ARP_req+0x2c>;
ffa043a4:	ff e3 50 fe 	CALL 0xffa04044 <_ARP_lut_find>;
ffa043a8:	e0 bb       	[FP -0x8] = R0;
ffa043aa:	e1 b9       	R1 = [FP -0x8];
ffa043ac:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa043b0:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa043b4:	01 30       	R0 = R1;
ffa043b6:	10 4f       	R0 <<= 0x2;
ffa043b8:	08 50       	R0 = R0 + R1;
ffa043ba:	10 4f       	R0 <<= 0x2;
ffa043bc:	10 50       	R0 = R0 + R2;
ffa043be:	10 32       	P2 = R0;
ffa043c0:	b8 a0       	R0 = [FP + 0x8];
ffa043c2:	10 93       	[P2] = R0;
ffa043c4:	e1 b9       	R1 = [FP -0x8];
ffa043c6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa043ca:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa043ce:	01 30       	R0 = R1;
ffa043d0:	10 4f       	R0 <<= 0x2;
ffa043d2:	08 50       	R0 = R0 + R1;
ffa043d4:	10 4f       	R0 <<= 0x2;
ffa043d6:	10 50       	R0 = R0 + R2;
ffa043d8:	10 32       	P2 = R0;
ffa043da:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa043dc:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa043de:	10 93       	[P2] = R0;
ffa043e0:	e2 b9       	R2 = [FP -0x8];
ffa043e2:	f1 b9       	R1 = [FP -0x4];
ffa043e4:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa043e8:	c1 50       	R3 = R1 + R0;
ffa043ea:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900009(-7340023) */
ffa043ee:	01 e1 cc 0c 	R1.L = 0xccc;		/* (3276)	R1=0xff900ccc <_NetArpLut>(-7336756) */
ffa043f2:	02 30       	R0 = R2;
ffa043f4:	10 4f       	R0 <<= 0x2;
ffa043f6:	10 50       	R0 = R0 + R2;
ffa043f8:	10 4f       	R0 <<= 0x2;
ffa043fa:	08 50       	R0 = R0 + R1;
ffa043fc:	10 32       	P2 = R0;
ffa043fe:	62 6c       	P2 += 0xc;		/* ( 12) */
ffa04400:	13 93       	[P2] = R3;
ffa04402:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900800 */
ffa04406:	0a e1 c8 0c 	P2.L = 0xcc8;		/* (3272)	P2=0xff900cc8 <_NetArpLut_age> */
ffa0440a:	50 95       	R0 = W[P2] (X);
ffa0440c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0440e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc8 <_NetArpLut_age> */
ffa04412:	0a e1 c8 0c 	P2.L = 0xcc8;		/* (3272)	P2=0xff900cc8 <_NetArpLut_age> */
ffa04416:	10 97       	W[P2] = R0;
ffa04418:	e1 b9       	R1 = [FP -0x8];
ffa0441a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc8 <_NetArpLut_age> */
ffa0441e:	0a e1 c8 0c 	P2.L = 0xcc8;		/* (3272)	P2=0xff900cc8 <_NetArpLut_age> */
ffa04422:	53 95       	R3 = W[P2] (X);
ffa04424:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa04428:	02 e1 cc 0c 	R2.L = 0xccc;		/* (3276)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa0442c:	01 30       	R0 = R1;
ffa0442e:	10 4f       	R0 <<= 0x2;
ffa04430:	08 50       	R0 = R0 + R1;
ffa04432:	10 4f       	R0 <<= 0x2;
ffa04434:	10 50       	R0 = R0 + R2;
ffa04436:	10 32       	P2 = R0;
ffa04438:	42 6c       	P2 += 0x8;		/* (  8) */
ffa0443a:	53 b4       	W[P2 + 0x2] = R3;
ffa0443c:	b8 a0       	R0 = [FP + 0x8];
ffa0443e:	ff e3 8b fb 	CALL 0xffa03b54 <_ARP_tx>;
ffa04442:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04444:	d0 bb       	[FP -0xc] = R0;
ffa04446:	d0 b9       	R0 = [FP -0xc];
ffa04448:	01 e8 00 00 	UNLINK;
ffa0444c:	10 00       	RTS;
	...

ffa04450 <_tcp_packet_setup>:
ffa04450:	00 e8 09 00 	LINK 0x24;		/* (36) */
ffa04454:	b8 b0       	[FP + 0x8] = R0;
ffa04456:	f9 b0       	[FP + 0xc] = R1;
ffa04458:	3a b1       	[FP + 0x10] = R2;
ffa0445a:	78 a1       	R0 = [FP + 0x14];
ffa0445c:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa04460:	b8 a0       	R0 = [FP + 0x8];
ffa04462:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa04464:	e0 bb       	[FP -0x8] = R0;
ffa04466:	47 30       	R0 = FP;
ffa04468:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa0446a:	f9 a0       	R1 = [FP + 0xc];
ffa0446c:	3a a1       	R2 = [FP + 0x10];
ffa0446e:	ff e3 43 f4 	CALL 0xffa02cf4 <_eth_header_setup>;
ffa04472:	f0 bb       	[FP -0x4] = R0;
ffa04474:	fa ac       	P2 = [FP + 0xc];
ffa04476:	50 99       	R0 = B[P2] (X);
ffa04478:	00 43       	R0 = R0.B (X);
ffa0447a:	80 0c       	CC = R0 < 0x0;
ffa0447c:	04 10       	IF !CC JUMP 0xffa04484 <_tcp_packet_setup+0x34>;
ffa0447e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04480:	c0 bb       	[FP -0x10] = R0;
ffa04482:	1d 20       	JUMP.S 0xffa044bc <_tcp_packet_setup+0x6c>;
ffa04484:	f1 b9       	R1 = [FP -0x4];
ffa04486:	57 30       	R2 = FP;
ffa04488:	c2 67       	R2 += -0x8;		/* ( -8) */
ffa0448a:	3b a1       	R3 = [FP + 0x10];
ffa0448c:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0448e:	f0 b0       	[SP + 0xc] = R0;
ffa04490:	01 30       	R0 = R1;
ffa04492:	0a 30       	R1 = R2;
ffa04494:	13 30       	R2 = R3;
ffa04496:	ff e3 89 f4 	CALL 0xffa02da8 <_ip_header_setup>;
ffa0449a:	f0 bb       	[FP -0x4] = R0;
ffa0449c:	ba e4 f4 ff 	R2 = B[FP + -0xc] (Z);
ffa044a0:	f1 b9       	R1 = [FP -0x4];
ffa044a2:	5f 30       	R3 = FP;
ffa044a4:	c3 67       	R3 += -0x8;		/* ( -8) */
ffa044a6:	b8 a1       	R0 = [FP + 0x18];
ffa044a8:	f0 b0       	[SP + 0xc] = R0;
ffa044aa:	f8 a1       	R0 = [FP + 0x1c];
ffa044ac:	30 b1       	[SP + 0x10] = R0;
ffa044ae:	01 30       	R0 = R1;
ffa044b0:	0b 30       	R1 = R3;
ffa044b2:	ff e3 67 f5 	CALL 0xffa02f80 <_tcp_header_setup>;
ffa044b6:	f0 bb       	[FP -0x4] = R0;
ffa044b8:	f0 b9       	R0 = [FP -0x4];
ffa044ba:	c0 bb       	[FP -0x10] = R0;
ffa044bc:	c0 b9       	R0 = [FP -0x10];
ffa044be:	01 e8 00 00 	UNLINK;
ffa044c2:	10 00       	RTS;

ffa044c4 <_tcp_checksum_calc>:
ffa044c4:	00 e8 09 00 	LINK 0x24;		/* (36) */
ffa044c8:	b8 b0       	[FP + 0x8] = R0;
ffa044ca:	f9 b0       	[FP + 0xc] = R1;
ffa044cc:	b8 a0       	R0 = [FP + 0x8];
ffa044ce:	b0 bb       	[FP -0x14] = R0;
ffa044d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa044d2:	c0 bb       	[FP -0x10] = R0;
ffa044d4:	b0 b9       	R0 = [FP -0x14];
ffa044d6:	e0 64       	R0 += 0x1c;		/* ( 28) */
ffa044d8:	e0 bb       	[FP -0x8] = R0;
ffa044da:	e0 b9       	R0 = [FP -0x8];
ffa044dc:	d0 bb       	[FP -0xc] = R0;
ffa044de:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa044e0:	a0 bb       	[FP -0x18] = R0;
ffa044e2:	0d 20       	JUMP.S 0xffa044fc <_tcp_checksum_calc+0x38>;
ffa044e4:	da b9       	P2 = [FP -0xc];
ffa044e6:	50 95       	R0 = W[P2] (X);
ffa044e8:	c1 42       	R1 = R0.L (Z);
ffa044ea:	c0 b9       	R0 = [FP -0x10];
ffa044ec:	08 50       	R0 = R0 + R1;
ffa044ee:	c0 bb       	[FP -0x10] = R0;
ffa044f0:	d0 b9       	R0 = [FP -0xc];
ffa044f2:	10 64       	R0 += 0x2;		/* (  2) */
ffa044f4:	d0 bb       	[FP -0xc] = R0;
ffa044f6:	a0 b9       	R0 = [FP -0x18];
ffa044f8:	08 64       	R0 += 0x1;		/* (  1) */
ffa044fa:	a0 bb       	[FP -0x18] = R0;
ffa044fc:	a0 b9       	R0 = [FP -0x18];
ffa044fe:	18 0d       	CC = R0 <= 0x3;
ffa04500:	f2 1b       	IF CC JUMP 0xffa044e4 <_tcp_checksum_calc+0x20>;
ffa04502:	00 00       	NOP;
ffa04504:	00 00       	NOP;
ffa04506:	ba b9       	P2 = [FP -0x14];
ffa04508:	90 e5 19 00 	R0 = B[P2 + 0x19] (X);
ffa0450c:	40 43       	R0 = R0.B (Z);
ffa0450e:	40 4f       	R0 <<= 0x8;
ffa04510:	c1 42       	R1 = R0.L (Z);
ffa04512:	c0 b9       	R0 = [FP -0x10];
ffa04514:	08 50       	R0 = R0 + R1;
ffa04516:	c0 bb       	[FP -0x10] = R0;
ffa04518:	ba b9       	P2 = [FP -0x14];
ffa0451a:	90 e5 30 00 	R0 = B[P2 + 0x30] (X);
ffa0451e:	40 43       	R0 = R0.B (Z);
ffa04520:	10 4e       	R0 >>= 0x2;
ffa04522:	41 43       	R1 = R0.B (Z);
ffa04524:	f8 a0       	R0 = [FP + 0xc];
ffa04526:	01 50       	R0 = R1 + R0;
ffa04528:	c0 42       	R0 = R0.L (Z);
ffa0452a:	ff e3 6f f3 	CALL 0xffa02c08 <_htons>;
ffa0452e:	c1 42       	R1 = R0.L (Z);
ffa04530:	c0 b9       	R0 = [FP -0x10];
ffa04532:	08 50       	R0 = R0 + R1;
ffa04534:	c0 bb       	[FP -0x10] = R0;
ffa04536:	f8 a0       	R0 = [FP + 0xc];
ffa04538:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa0453a:	00 02       	R0 = CC;
ffa0453c:	40 43       	R0 = R0.B (Z);
ffa0453e:	00 0c       	CC = R0 == 0x0;
ffa04540:	16 18       	IF CC JUMP 0xffa0456c <_tcp_checksum_calc+0xa8>;
ffa04542:	b0 b9       	R0 = [FP -0x14];
ffa04544:	20 65       	R0 += 0x24;		/* ( 36) */
ffa04546:	f0 bb       	[FP -0x4] = R0;
ffa04548:	ba b9       	P2 = [FP -0x14];
ffa0454a:	90 e5 30 00 	R0 = B[P2 + 0x30] (X);
ffa0454e:	40 43       	R0 = R0.B (Z);
ffa04550:	10 4e       	R0 >>= 0x2;
ffa04552:	41 43       	R1 = R0.B (Z);
ffa04554:	f8 a0       	R0 = [FP + 0xc];
ffa04556:	01 50       	R0 = R1 + R0;
ffa04558:	08 30       	R1 = R0;
ffa0455a:	f0 b9       	R0 = [FP -0x4];
ffa0455c:	08 50       	R0 = R0 + R1;
ffa0455e:	f0 bb       	[FP -0x4] = R0;
ffa04560:	fa b9       	P2 = [FP -0x4];
ffa04562:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04564:	10 9b       	B[P2] = R0;
ffa04566:	f8 a0       	R0 = [FP + 0xc];
ffa04568:	08 64       	R0 += 0x1;		/* (  1) */
ffa0456a:	f8 b0       	[FP + 0xc] = R0;
ffa0456c:	ba b9       	P2 = [FP -0x14];
ffa0456e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04570:	50 e6 1a 00 	W[P2 + 0x34] = R0;
ffa04574:	b0 b9       	R0 = [FP -0x14];
ffa04576:	20 65       	R0 += 0x24;		/* ( 36) */
ffa04578:	d0 bb       	[FP -0xc] = R0;
ffa0457a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0457c:	a0 bb       	[FP -0x18] = R0;
ffa0457e:	0d 20       	JUMP.S 0xffa04598 <_tcp_checksum_calc+0xd4>;
ffa04580:	da b9       	P2 = [FP -0xc];
ffa04582:	50 95       	R0 = W[P2] (X);
ffa04584:	c1 42       	R1 = R0.L (Z);
ffa04586:	c0 b9       	R0 = [FP -0x10];
ffa04588:	08 50       	R0 = R0 + R1;
ffa0458a:	c0 bb       	[FP -0x10] = R0;
ffa0458c:	d0 b9       	R0 = [FP -0xc];
ffa0458e:	10 64       	R0 += 0x2;		/* (  2) */
ffa04590:	d0 bb       	[FP -0xc] = R0;
ffa04592:	a0 b9       	R0 = [FP -0x18];
ffa04594:	08 64       	R0 += 0x1;		/* (  1) */
ffa04596:	a0 bb       	[FP -0x18] = R0;
ffa04598:	f9 a0       	R1 = [FP + 0xc];
ffa0459a:	82 c6 09 81 	R0 = R1 >> 0x1f;
ffa0459e:	08 50       	R0 = R0 + R1;
ffa045a0:	08 4d       	R0 >>>= 0x1;
ffa045a2:	08 30       	R1 = R0;
ffa045a4:	ba b9       	P2 = [FP -0x14];
ffa045a6:	90 e5 30 00 	R0 = B[P2 + 0x30] (X);
ffa045aa:	40 43       	R0 = R0.B (Z);
ffa045ac:	18 4e       	R0 >>= 0x3;
ffa045ae:	40 43       	R0 = R0.B (Z);
ffa045b0:	41 50       	R1 = R1 + R0;
ffa045b2:	a0 b9       	R0 = [FP -0x18];
ffa045b4:	01 09       	CC = R1 <= R0;
ffa045b6:	e5 13       	IF !CC JUMP 0xffa04580 <_tcp_checksum_calc+0xbc>;
ffa045b8:	c0 b9       	R0 = [FP -0x10];
ffa045ba:	c1 42       	R1 = R0.L (Z);
ffa045bc:	c0 b9       	R0 = [FP -0x10];
ffa045be:	80 4e       	R0 >>= 0x10;
ffa045c0:	01 50       	R0 = R1 + R0;
ffa045c2:	c0 bb       	[FP -0x10] = R0;
ffa045c4:	c0 b9       	R0 = [FP -0x10];
ffa045c6:	c0 43       	R0 =~ R0;
ffa045c8:	c0 42       	R0 = R0.L (Z);
ffa045ca:	01 e8 00 00 	UNLINK;
ffa045ce:	10 00       	RTS;

ffa045d0 <_tcp_checksum_set>:
ffa045d0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa045d4:	b8 b0       	[FP + 0x8] = R0;
ffa045d6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc8 <_NetArpLut_age> */
ffa045da:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa045de:	50 95       	R0 = W[P2] (X);
ffa045e0:	c0 42       	R0 = R0.L (Z);
ffa045e2:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ccc <_NetArpLut>(-7336756) */
ffa045e6:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa045ea:	10 4f       	R0 <<= 0x2;
ffa045ec:	08 50       	R0 = R0 + R1;
ffa045ee:	10 32       	P2 = R0;
ffa045f0:	52 91       	P2 = [P2];
ffa045f2:	90 a1       	R0 = [P2 + 0x18];
ffa045f4:	f0 bb       	[FP -0x4] = R0;
ffa045f6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa045fa:	0a e1 8c 0c 	P2.L = 0xc8c;		/* (3212)	P2=0xff900c8c <_txIdx> */
ffa045fe:	50 95       	R0 = W[P2] (X);
ffa04600:	c0 42       	R0 = R0.L (Z);
ffa04602:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa04606:	01 e1 90 0c 	R1.L = 0xc90;		/* (3216)	R1=0xff900c90 <_txbuf>(-7336816) */
ffa0460a:	10 4f       	R0 <<= 0x2;
ffa0460c:	08 50       	R0 = R0 + R1;
ffa0460e:	10 32       	P2 = R0;
ffa04610:	52 91       	P2 = [P2];
ffa04612:	90 a1       	R0 = [P2 + 0x18];
ffa04614:	b9 a0       	R1 = [FP + 0x8];
ffa04616:	ff e3 57 ff 	CALL 0xffa044c4 <_tcp_checksum_calc>;
ffa0461a:	fa b9       	P2 = [FP -0x4];
ffa0461c:	50 e6 1a 00 	W[P2 + 0x34] = R0;
ffa04620:	01 e8 00 00 	UNLINK;
ffa04624:	10 00       	RTS;
	...

ffa04628 <_tcp_checksum_check>:
ffa04628:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa0462c:	b8 b0       	[FP + 0x8] = R0;
ffa0462e:	f9 b0       	[FP + 0xc] = R1;
ffa04630:	b8 a0       	R0 = [FP + 0x8];
ffa04632:	d0 bb       	[FP -0xc] = R0;
ffa04634:	da b9       	P2 = [FP -0xc];
ffa04636:	50 e5 1a 00 	R0 = W[P2 + 0x34] (X);
ffa0463a:	78 e6 fc ff 	W[FP + -0x8] = R0;
ffa0463e:	f9 a0       	R1 = [FP + 0xc];
ffa04640:	b8 a0       	R0 = [FP + 0x8];
ffa04642:	ff e3 41 ff 	CALL 0xffa044c4 <_tcp_checksum_calc>;
ffa04646:	78 e6 fe ff 	W[FP + -0x4] = R0;
ffa0464a:	79 e4 fc ff 	R1 = W[FP + -0x8] (Z);
ffa0464e:	78 e4 fe ff 	R0 = W[FP + -0x4] (Z);
ffa04652:	01 08       	CC = R1 == R0;
ffa04654:	04 10       	IF !CC JUMP 0xffa0465c <_tcp_checksum_check+0x34>;
ffa04656:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04658:	c0 bb       	[FP -0x10] = R0;
ffa0465a:	19 20       	JUMP.S 0xffa0468c <_tcp_checksum_check+0x64>;
ffa0465c:	79 e4 fc ff 	R1 = W[FP + -0x8] (Z);
ffa04660:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa04664:	00 e1 60 05 	R0.L = 0x560;		/* (1376)	R0=0xff900560(-7338656) */
ffa04668:	ff e3 f4 e1 	CALL 0xffa00a50 <_printf_hex>;
ffa0466c:	79 e4 fe ff 	R1 = W[FP + -0x4] (Z);
ffa04670:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900560(-7338656) */
ffa04674:	00 e1 7c 05 	R0.L = 0x57c;		/* (1404)	R0=0xff90057c(-7338628) */
ffa04678:	ff e3 ec e1 	CALL 0xffa00a50 <_printf_hex>;
ffa0467c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90057c(-7338628) */
ffa04680:	00 e1 8c 05 	R0.L = 0x58c;		/* (1420)	R0=0xff90058c(-7338612) */
ffa04684:	ff e3 06 e1 	CALL 0xffa00890 <_printf_str>;
ffa04688:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0468a:	c0 bb       	[FP -0x10] = R0;
ffa0468c:	c0 b9       	R0 = [FP -0x10];
ffa0468e:	01 e8 00 00 	UNLINK;
ffa04692:	10 00       	RTS;

ffa04694 <_tcp_length>:
ffa04694:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa04698:	b8 b0       	[FP + 0x8] = R0;
ffa0469a:	ba ac       	P2 = [FP + 0x8];
ffa0469c:	50 aa       	R0 = W[P2 + 0x12] (X);
ffa0469e:	c0 42       	R0 = R0.L (Z);
ffa046a0:	ff e3 b4 f2 	CALL 0xffa02c08 <_htons>;
ffa046a4:	c0 42       	R0 = R0.L (Z);
ffa046a6:	f0 bb       	[FP -0x4] = R0;
ffa046a8:	ba ac       	P2 = [FP + 0x8];
ffa046aa:	90 e5 10 00 	R0 = B[P2 + 0x10] (X);
ffa046ae:	41 43       	R1 = R0.B (Z);
ffa046b0:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa046b2:	01 54       	R0 = R1 & R0;
ffa046b4:	82 c6 10 82 	R1 = R0 << 0x2;
ffa046b8:	f0 b9       	R0 = [FP -0x4];
ffa046ba:	08 52       	R0 = R0 - R1;
ffa046bc:	f0 bb       	[FP -0x4] = R0;
ffa046be:	ba ac       	P2 = [FP + 0x8];
ffa046c0:	90 e5 30 00 	R0 = B[P2 + 0x30] (X);
ffa046c4:	40 43       	R0 = R0.B (Z);
ffa046c6:	82 c6 f0 03 	R1 = R0 >>> 0x2;
ffa046ca:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
ffa046cc:	41 54       	R1 = R1 & R0;
ffa046ce:	f0 b9       	R0 = [FP -0x4];
ffa046d0:	08 52       	R0 = R0 - R1;
ffa046d2:	f0 bb       	[FP -0x4] = R0;
ffa046d4:	f0 b9       	R0 = [FP -0x4];
ffa046d6:	01 e8 00 00 	UNLINK;
ffa046da:	10 00       	RTS;

ffa046dc <_tcp_rx>:
ffa046dc:	78 05       	[--SP] = (R7:7);
ffa046de:	00 e8 0e 00 	LINK 0x38;		/* (56) */
ffa046e2:	f8 b0       	[FP + 0xc] = R0;
ffa046e4:	39 b1       	[FP + 0x10] = R1;
ffa046e6:	f8 a0       	R0 = [FP + 0xc];
ffa046e8:	b0 bb       	[FP -0x14] = R0;
ffa046ea:	ba b9       	P2 = [FP -0x14];
ffa046ec:	d7 a9       	R7 = W[P2 + 0xe] (X);
ffa046ee:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa046f2:	ff e3 8b f2 	CALL 0xffa02c08 <_htons>;
ffa046f6:	f9 42       	R1 = R7.L (Z);
ffa046f8:	c0 42       	R0 = R0.L (Z);
ffa046fa:	01 08       	CC = R1 == R0;
ffa046fc:	02 1c       	IF CC JUMP 0xffa04700 <_tcp_rx+0x24> (BP);
ffa046fe:	12 23       	JUMP.S 0xffa04d22 <_tcp_rx+0x646>;
ffa04700:	ba b9       	P2 = [FP -0x14];
ffa04702:	90 e5 19 00 	R0 = B[P2 + 0x19] (X);
ffa04706:	40 43       	R0 = R0.B (Z);
ffa04708:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa0470a:	08 08       	CC = R0 == R1;
ffa0470c:	02 1c       	IF CC JUMP 0xffa04710 <_tcp_rx+0x34> (BP);
ffa0470e:	0a 23       	JUMP.S 0xffa04d22 <_tcp_rx+0x646>;
ffa04710:	ba b9       	P2 = [FP -0x14];
ffa04712:	57 e5 13 00 	R7 = W[P2 + 0x26] (X);
ffa04716:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa0471a:	ff e3 77 f2 	CALL 0xffa02c08 <_htons>;
ffa0471e:	f9 42       	R1 = R7.L (Z);
ffa04720:	c0 42       	R0 = R0.L (Z);
ffa04722:	01 08       	CC = R1 == R0;
ffa04724:	02 1c       	IF CC JUMP 0xffa04728 <_tcp_rx+0x4c> (BP);
ffa04726:	fe 22       	JUMP.S 0xffa04d22 <_tcp_rx+0x646>;
ffa04728:	f8 a0       	R0 = [FP + 0xc];
ffa0472a:	80 64       	R0 += 0x10;		/* ( 16) */
ffa0472c:	ff e3 98 f3 	CALL 0xffa02e5c <_ip_header_checksum>;
ffa04730:	40 43       	R0 = R0.B (Z);
ffa04732:	00 0c       	CC = R0 == 0x0;
ffa04734:	02 14       	IF !CC JUMP 0xffa04738 <_tcp_rx+0x5c> (BP);
ffa04736:	f6 22       	JUMP.S 0xffa04d22 <_tcp_rx+0x646>;
ffa04738:	ba b9       	P2 = [FP -0x14];
ffa0473a:	d2 a1       	R2 = [P2 + 0x1c];
ffa0473c:	b0 b9       	R0 = [FP -0x14];
ffa0473e:	08 30       	R1 = R0;
ffa04740:	41 64       	R1 += 0x8;		/* (  8) */
ffa04742:	02 30       	R0 = R2;
ffa04744:	ff e3 e0 fc 	CALL 0xffa04104 <_ARP_lut_add>;
ffa04748:	b0 b9       	R0 = [FP -0x14];
ffa0474a:	ff e3 a5 ff 	CALL 0xffa04694 <_tcp_length>;
ffa0474e:	c0 bb       	[FP -0x10] = R0;
ffa04750:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa04754:	00 e1 90 05 	R0.L = 0x590;		/* (1424)	R0=0xff900590(-7338608) */
ffa04758:	c1 b9       	R1 = [FP -0x10];
ffa0475a:	ff e3 a5 e0 	CALL 0xffa008a4 <_printf_int>;
ffa0475e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900590(-7338608) */
ffa04762:	00 e1 8c 05 	R0.L = 0x58c;		/* (1420)	R0=0xff90058c(-7338612) */
ffa04766:	ff e3 95 e0 	CALL 0xffa00890 <_printf_str>;
ffa0476a:	c1 b9       	R1 = [FP -0x10];
ffa0476c:	f8 a0       	R0 = [FP + 0xc];
ffa0476e:	ff e3 5d ff 	CALL 0xffa04628 <_tcp_checksum_check>;
ffa04772:	40 43       	R0 = R0.B (Z);
ffa04774:	00 0c       	CC = R0 == 0x0;
ffa04776:	02 14       	IF !CC JUMP 0xffa0477a <_tcp_rx+0x9e> (BP);
ffa04778:	d5 22       	JUMP.S 0xffa04d22 <_tcp_rx+0x646>;
ffa0477a:	ba b9       	P2 = [FP -0x14];
ffa0477c:	90 e5 31 00 	R0 = B[P2 + 0x31] (X);
ffa04780:	40 43       	R0 = R0.B (Z);
ffa04782:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa04784:	08 08       	CC = R0 == R1;
ffa04786:	1f 10       	IF !CC JUMP 0xffa047c4 <_tcp_rx+0xe8>;
ffa04788:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90058c(-7338612) */
ffa0478c:	00 e1 a4 05 	R0.L = 0x5a4;		/* (1444)	R0=0xff9005a4(-7338588) */
ffa04790:	ff e3 80 e0 	CALL 0xffa00890 <_printf_str>;
ffa04794:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c8c <_txIdx> */
ffa04798:	0a e1 a4 0d 	P2.L = 0xda4;		/* (3492)	P2=0xff900da4 <_TcpState> */
ffa0479c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0479e:	10 93       	[P2] = R0;
ffa047a0:	ba b9       	P2 = [FP -0x14];
ffa047a2:	90 a2       	R0 = [P2 + 0x28];
ffa047a4:	ff e3 4a f2 	CALL 0xffa02c38 <_htonl>;
ffa047a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900da4 <_TcpState> */
ffa047ac:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa047b0:	10 93       	[P2] = R0;
ffa047b2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa047b6:	0a e1 bc 0d 	P2.L = 0xdbc;		/* (3516)	P2=0xff900dbc <_g_httpRxed> */
ffa047ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa047bc:	10 93       	[P2] = R0;
ffa047be:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa047c0:	90 bb       	[FP -0x1c] = R0;
ffa047c2:	b2 22       	JUMP.S 0xffa04d26 <_tcp_rx+0x64a>;
ffa047c4:	ba b9       	P2 = [FP -0x14];
ffa047c6:	90 e5 31 00 	R0 = B[P2 + 0x31] (X);
ffa047ca:	40 43       	R0 = R0.B (Z);
ffa047cc:	10 0c       	CC = R0 == 0x2;
ffa047ce:	77 10       	IF !CC JUMP 0xffa048bc <_tcp_rx+0x1e0>;
ffa047d0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa047d4:	00 e1 b0 05 	R0.L = 0x5b0;		/* (1456)	R0=0xff9005b0(-7338576) */
ffa047d8:	ff e3 5c e0 	CALL 0xffa00890 <_printf_str>;
ffa047dc:	ba b9       	P2 = [FP -0x14];
ffa047de:	90 a2       	R0 = [P2 + 0x28];
ffa047e0:	ff e3 2c f2 	CALL 0xffa02c38 <_htonl>;
ffa047e4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900dbc <_g_httpRxed> */
ffa047e8:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa047ec:	10 93       	[P2] = R0;
ffa047ee:	b0 b9       	R0 = [FP -0x14];
ffa047f0:	ff e3 52 ff 	CALL 0xffa04694 <_tcp_length>;
ffa047f4:	08 30       	R1 = R0;
ffa047f6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa047fa:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa047fe:	10 91       	R0 = [P2];
ffa04800:	01 50       	R0 = R1 + R0;
ffa04802:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa04806:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa0480a:	10 93       	[P2] = R0;
ffa0480c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa04810:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa04814:	10 91       	R0 = [P2];
ffa04816:	08 64       	R0 += 0x1;		/* (  1) */
ffa04818:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa0481c:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa04820:	10 93       	[P2] = R0;
ffa04822:	ba b9       	P2 = [FP -0x14];
ffa04824:	50 e5 12 00 	R0 = W[P2 + 0x24] (X);
ffa04828:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa0482c:	0a e1 b0 0d 	P2.L = 0xdb0;		/* (3504)	P2=0xff900db0 <_TcpClientPort> */
ffa04830:	10 97       	W[P2] = R0;
ffa04832:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900db0 <_TcpClientPort> */
ffa04836:	0a e1 bc 0d 	P2.L = 0xdbc;		/* (3516)	P2=0xff900dbc <_g_httpRxed> */
ffa0483a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0483c:	10 93       	[P2] = R0;
ffa0483e:	ba b9       	P2 = [FP -0x14];
ffa04840:	d0 a1       	R0 = [P2 + 0x1c];
ffa04842:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900dbc <_g_httpRxed> */
ffa04846:	0a e1 84 0c 	P2.L = 0xc84;		/* (3204)	P2=0xff900c84 <_NetDestIP> */
ffa0484a:	10 93       	[P2] = R0;
ffa0484c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c84 <_NetDestIP> */
ffa04850:	0a e1 84 0c 	P2.L = 0xc84;		/* (3204)	P2=0xff900c84 <_NetDestIP> */
ffa04854:	17 91       	R7 = [P2];
ffa04856:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c84 <_NetDestIP> */
ffa0485a:	0a e1 98 0d 	P2.L = 0xd98;		/* (3480)	P2=0xff900d98 <_TcpSeqHost> */
ffa0485e:	12 91       	R2 = [P2];
ffa04860:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d98 <_TcpSeqHost> */
ffa04864:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa04868:	11 91       	R1 = [P2];
ffa0486a:	5f 30       	R3 = FP;
ffa0486c:	5b 67       	R3 += -0x15;		/* (-21) */
ffa0486e:	90 60       	R0 = 0x12 (X);		/*		R0=0x12( 18) */
ffa04870:	f0 b0       	[SP + 0xc] = R0;
ffa04872:	32 b1       	[SP + 0x10] = R2;
ffa04874:	71 b1       	[SP + 0x14] = R1;
ffa04876:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04878:	0b 30       	R1 = R3;
ffa0487a:	17 30       	R2 = R7;
ffa0487c:	ff e3 ea fd 	CALL 0xffa04450 <_tcp_packet_setup>;
ffa04880:	b8 e5 eb ff 	R0 = B[FP + -0x15] (X);
ffa04884:	00 43       	R0 = R0.B (X);
ffa04886:	00 0d       	CC = R0 <= 0x0;
ffa04888:	1a 18       	IF CC JUMP 0xffa048bc <_tcp_rx+0x1e0>;
ffa0488a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa0488e:	0a e1 98 0d 	P2.L = 0xd98;		/* (3480)	P2=0xff900d98 <_TcpSeqHost> */
ffa04892:	10 91       	R0 = [P2];
ffa04894:	08 64       	R0 += 0x1;		/* (  1) */
ffa04896:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d98 <_TcpSeqHost> */
ffa0489a:	0a e1 98 0d 	P2.L = 0xd98;		/* (3480)	P2=0xff900d98 <_TcpSeqHost> */
ffa0489e:	10 93       	[P2] = R0;
ffa048a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d98 <_TcpSeqHost> */
ffa048a4:	0a e1 a4 0d 	P2.L = 0xda4;		/* (3492)	P2=0xff900da4 <_TcpState> */
ffa048a8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa048aa:	10 93       	[P2] = R0;
ffa048ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa048ae:	ff e3 91 fe 	CALL 0xffa045d0 <_tcp_checksum_set>;
ffa048b2:	ff e3 4b ea 	CALL 0xffa01d48 <_bfin_EMAC_send_nocopy>;
ffa048b6:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa048b8:	91 bb       	[FP -0x1c] = R1;
ffa048ba:	36 22       	JUMP.S 0xffa04d26 <_tcp_rx+0x64a>;
ffa048bc:	ba b9       	P2 = [FP -0x14];
ffa048be:	90 e5 31 00 	R0 = B[P2 + 0x31] (X);
ffa048c2:	40 43       	R0 = R0.B (Z);
ffa048c4:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa048c6:	08 08       	CC = R0 == R1;
ffa048c8:	4a 10       	IF !CC JUMP 0xffa0495c <_tcp_rx+0x280>;
ffa048ca:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900da4 <_TcpState> */
ffa048ce:	0a e1 a4 0d 	P2.L = 0xda4;		/* (3492)	P2=0xff900da4 <_TcpState> */
ffa048d2:	10 91       	R0 = [P2];
ffa048d4:	08 0c       	CC = R0 == 0x1;
ffa048d6:	43 10       	IF !CC JUMP 0xffa0495c <_tcp_rx+0x280>;
ffa048d8:	00 00       	NOP;
ffa048da:	00 00       	NOP;
ffa048dc:	ba b9       	P2 = [FP -0x14];
ffa048de:	d0 a2       	R0 = [P2 + 0x2c];
ffa048e0:	ff e3 ac f1 	CALL 0xffa02c38 <_htonl>;
ffa048e4:	08 30       	R1 = R0;
ffa048e6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900da4 <_TcpState> */
ffa048ea:	0a e1 98 0d 	P2.L = 0xd98;		/* (3480)	P2=0xff900d98 <_TcpSeqHost> */
ffa048ee:	10 91       	R0 = [P2];
ffa048f0:	01 08       	CC = R1 == R0;
ffa048f2:	1d 18       	IF CC JUMP 0xffa0492c <_tcp_rx+0x250>;
ffa048f4:	00 00       	NOP;
ffa048f6:	00 00       	NOP;
ffa048f8:	ba b9       	P2 = [FP -0x14];
ffa048fa:	d0 a2       	R0 = [P2 + 0x2c];
ffa048fc:	ff e3 9e f1 	CALL 0xffa02c38 <_htonl>;
ffa04900:	08 30       	R1 = R0;
ffa04902:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa04906:	00 e1 bc 05 	R0.L = 0x5bc;		/* (1468)	R0=0xff9005bc(-7338564) */
ffa0490a:	ff e3 df e1 	CALL 0xffa00cc8 <_printf_ip>;
ffa0490e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d98 <_TcpSeqHost> */
ffa04912:	0a e1 a4 0d 	P2.L = 0xda4;		/* (3492)	P2=0xff900da4 <_TcpState> */
ffa04916:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04918:	10 93       	[P2] = R0;
ffa0491a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0491e:	00 e1 8c 05 	R0.L = 0x58c;		/* (1420)	R0=0xff90058c(-7338612) */
ffa04922:	ff e3 b7 df 	CALL 0xffa00890 <_printf_str>;
ffa04926:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04928:	90 bb       	[FP -0x1c] = R0;
ffa0492a:	fe 21       	JUMP.S 0xffa04d26 <_tcp_rx+0x64a>;
ffa0492c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900da4 <_TcpState> */
ffa04930:	0a e1 a4 0d 	P2.L = 0xda4;		/* (3492)	P2=0xff900da4 <_TcpState> */
ffa04934:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa04936:	10 93       	[P2] = R0;
ffa04938:	ba b9       	P2 = [FP -0x14];
ffa0493a:	90 a2       	R0 = [P2 + 0x28];
ffa0493c:	ff e3 7e f1 	CALL 0xffa02c38 <_htonl>;
ffa04940:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900da4 <_TcpState> */
ffa04944:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa04948:	10 93       	[P2] = R0;
ffa0494a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa0494e:	00 e1 d8 05 	R0.L = 0x5d8;		/* (1496)	R0=0xff9005d8(-7338536) */
ffa04952:	ff e3 9f df 	CALL 0xffa00890 <_printf_str>;
ffa04956:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa04958:	91 bb       	[FP -0x1c] = R1;
ffa0495a:	e6 21       	JUMP.S 0xffa04d26 <_tcp_rx+0x64a>;
ffa0495c:	ba b9       	P2 = [FP -0x14];
ffa0495e:	90 e5 31 00 	R0 = B[P2 + 0x31] (X);
ffa04962:	40 43       	R0 = R0.B (Z);
ffa04964:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa04966:	00 02       	R0 = CC;
ffa04968:	40 43       	R0 = R0.B (Z);
ffa0496a:	00 0c       	CC = R0 == 0x0;
ffa0496c:	97 18       	IF CC JUMP 0xffa04a9a <_tcp_rx+0x3be>;
ffa0496e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005d8(-7338536) */
ffa04972:	00 e1 e8 05 	R0.L = 0x5e8;		/* (1512)	R0=0xff9005e8(-7338520) */
ffa04976:	ff e3 8d df 	CALL 0xffa00890 <_printf_str>;
ffa0497a:	ba b9       	P2 = [FP -0x14];
ffa0497c:	90 a2       	R0 = [P2 + 0x28];
ffa0497e:	ff e3 5d f1 	CALL 0xffa02c38 <_htonl>;
ffa04982:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa04986:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa0498a:	10 93       	[P2] = R0;
ffa0498c:	ba b9       	P2 = [FP -0x14];
ffa0498e:	d0 a1       	R0 = [P2 + 0x1c];
ffa04990:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa04994:	0a e1 84 0c 	P2.L = 0xc84;		/* (3204)	P2=0xff900c84 <_NetDestIP> */
ffa04998:	10 93       	[P2] = R0;
ffa0499a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c84 <_NetDestIP> */
ffa0499e:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa049a2:	10 91       	R0 = [P2];
ffa049a4:	08 64       	R0 += 0x1;		/* (  1) */
ffa049a6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa049aa:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa049ae:	10 93       	[P2] = R0;
ffa049b0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa049b4:	0a e1 a4 0d 	P2.L = 0xda4;		/* (3492)	P2=0xff900da4 <_TcpState> */
ffa049b8:	10 91       	R0 = [P2];
ffa049ba:	10 0c       	CC = R0 == 0x2;
ffa049bc:	08 18       	IF CC JUMP 0xffa049cc <_tcp_rx+0x2f0>;
ffa049be:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900da4 <_TcpState> */
ffa049c2:	0a e1 a4 0d 	P2.L = 0xda4;		/* (3492)	P2=0xff900da4 <_TcpState> */
ffa049c6:	10 91       	R0 = [P2];
ffa049c8:	00 0c       	CC = R0 == 0x0;
ffa049ca:	2e 10       	IF !CC JUMP 0xffa04a26 <_tcp_rx+0x34a>;
ffa049cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900da4 <_TcpState> */
ffa049d0:	0a e1 84 0c 	P2.L = 0xc84;		/* (3204)	P2=0xff900c84 <_NetDestIP> */
ffa049d4:	17 91       	R7 = [P2];
ffa049d6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c84 <_NetDestIP> */
ffa049da:	0a e1 98 0d 	P2.L = 0xd98;		/* (3480)	P2=0xff900d98 <_TcpSeqHost> */
ffa049de:	12 91       	R2 = [P2];
ffa049e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d98 <_TcpSeqHost> */
ffa049e4:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa049e8:	11 91       	R1 = [P2];
ffa049ea:	5f 30       	R3 = FP;
ffa049ec:	5b 67       	R3 += -0x15;		/* (-21) */
ffa049ee:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa049f0:	f0 b0       	[SP + 0xc] = R0;
ffa049f2:	32 b1       	[SP + 0x10] = R2;
ffa049f4:	71 b1       	[SP + 0x14] = R1;
ffa049f6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa049f8:	0b 30       	R1 = R3;
ffa049fa:	17 30       	R2 = R7;
ffa049fc:	ff e3 2a fd 	CALL 0xffa04450 <_tcp_packet_setup>;
ffa04a00:	b8 e5 eb ff 	R0 = B[FP + -0x15] (X);
ffa04a04:	00 43       	R0 = R0.B (X);
ffa04a06:	00 0d       	CC = R0 <= 0x0;
ffa04a08:	0f 18       	IF CC JUMP 0xffa04a26 <_tcp_rx+0x34a>;
ffa04a0a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa04a0e:	0a e1 a4 0d 	P2.L = 0xda4;		/* (3492)	P2=0xff900da4 <_TcpState> */
ffa04a12:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa04a14:	10 93       	[P2] = R0;
ffa04a16:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04a18:	ff e3 dc fd 	CALL 0xffa045d0 <_tcp_checksum_set>;
ffa04a1c:	ff e3 96 e9 	CALL 0xffa01d48 <_bfin_EMAC_send_nocopy>;
ffa04a20:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04a22:	90 bb       	[FP -0x1c] = R0;
ffa04a24:	81 21       	JUMP.S 0xffa04d26 <_tcp_rx+0x64a>;
ffa04a26:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900da4 <_TcpState> */
ffa04a2a:	0a e1 a4 0d 	P2.L = 0xda4;		/* (3492)	P2=0xff900da4 <_TcpState> */
ffa04a2e:	10 91       	R0 = [P2];
ffa04a30:	18 0c       	CC = R0 == 0x3;
ffa04a32:	34 10       	IF !CC JUMP 0xffa04a9a <_tcp_rx+0x3be>;
ffa04a34:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900da4 <_TcpState> */
ffa04a38:	0a e1 bc 0d 	P2.L = 0xdbc;		/* (3516)	P2=0xff900dbc <_g_httpRxed> */
ffa04a3c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04a3e:	10 93       	[P2] = R0;
ffa04a40:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900dbc <_g_httpRxed> */
ffa04a44:	0a e1 84 0c 	P2.L = 0xc84;		/* (3204)	P2=0xff900c84 <_NetDestIP> */
ffa04a48:	17 91       	R7 = [P2];
ffa04a4a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c84 <_NetDestIP> */
ffa04a4e:	0a e1 98 0d 	P2.L = 0xd98;		/* (3480)	P2=0xff900d98 <_TcpSeqHost> */
ffa04a52:	12 91       	R2 = [P2];
ffa04a54:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d98 <_TcpSeqHost> */
ffa04a58:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa04a5c:	11 91       	R1 = [P2];
ffa04a5e:	5f 30       	R3 = FP;
ffa04a60:	5b 67       	R3 += -0x15;		/* (-21) */
ffa04a62:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa04a64:	f0 b0       	[SP + 0xc] = R0;
ffa04a66:	32 b1       	[SP + 0x10] = R2;
ffa04a68:	71 b1       	[SP + 0x14] = R1;
ffa04a6a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04a6c:	0b 30       	R1 = R3;
ffa04a6e:	17 30       	R2 = R7;
ffa04a70:	ff e3 f0 fc 	CALL 0xffa04450 <_tcp_packet_setup>;
ffa04a74:	b8 e5 eb ff 	R0 = B[FP + -0x15] (X);
ffa04a78:	00 43       	R0 = R0.B (X);
ffa04a7a:	00 0d       	CC = R0 <= 0x0;
ffa04a7c:	0f 18       	IF CC JUMP 0xffa04a9a <_tcp_rx+0x3be>;
ffa04a7e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa04a82:	0a e1 a4 0d 	P2.L = 0xda4;		/* (3492)	P2=0xff900da4 <_TcpState> */
ffa04a86:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa04a88:	10 93       	[P2] = R0;
ffa04a8a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04a8c:	ff e3 a2 fd 	CALL 0xffa045d0 <_tcp_checksum_set>;
ffa04a90:	ff e3 5c e9 	CALL 0xffa01d48 <_bfin_EMAC_send_nocopy>;
ffa04a94:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa04a96:	91 bb       	[FP -0x1c] = R1;
ffa04a98:	47 21       	JUMP.S 0xffa04d26 <_tcp_rx+0x64a>;
ffa04a9a:	ba b9       	P2 = [FP -0x14];
ffa04a9c:	90 e5 31 00 	R0 = B[P2 + 0x31] (X);
ffa04aa0:	41 43       	R1 = R0.B (Z);
ffa04aa2:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa04aa4:	01 54       	R0 = R1 & R0;
ffa04aa6:	00 0c       	CC = R0 == 0x0;
ffa04aa8:	66 18       	IF CC JUMP 0xffa04b74 <_tcp_rx+0x498>;
ffa04aaa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900da4 <_TcpState> */
ffa04aae:	0a e1 a4 0d 	P2.L = 0xda4;		/* (3492)	P2=0xff900da4 <_TcpState> */
ffa04ab2:	10 91       	R0 = [P2];
ffa04ab4:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa04ab6:	08 08       	CC = R0 == R1;
ffa04ab8:	0a 10       	IF !CC JUMP 0xffa04acc <_tcp_rx+0x3f0>;
ffa04aba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa04abe:	00 e1 f8 05 	R0.L = 0x5f8;		/* (1528)	R0=0xff9005f8(-7338504) */
ffa04ac2:	ff e3 e7 de 	CALL 0xffa00890 <_printf_str>;
ffa04ac6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04ac8:	90 bb       	[FP -0x1c] = R0;
ffa04aca:	2e 21       	JUMP.S 0xffa04d26 <_tcp_rx+0x64a>;
ffa04acc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900da4 <_TcpState> */
ffa04ad0:	0a e1 a4 0d 	P2.L = 0xda4;		/* (3492)	P2=0xff900da4 <_TcpState> */
ffa04ad4:	10 91       	R0 = [P2];
ffa04ad6:	00 0c       	CC = R0 == 0x0;
ffa04ad8:	4e 10       	IF !CC JUMP 0xffa04b74 <_tcp_rx+0x498>;
ffa04ada:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa04ade:	00 e1 0c 06 	R0.L = 0x60c;		/* (1548)	R0=0xff90060c(-7338484) */
ffa04ae2:	ff e3 d7 de 	CALL 0xffa00890 <_printf_str>;
ffa04ae6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900da4 <_TcpState> */
ffa04aea:	0a e1 bc 0d 	P2.L = 0xdbc;		/* (3516)	P2=0xff900dbc <_g_httpRxed> */
ffa04aee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04af0:	10 93       	[P2] = R0;
ffa04af2:	ba b9       	P2 = [FP -0x14];
ffa04af4:	90 a2       	R0 = [P2 + 0x28];
ffa04af6:	ff e3 a1 f0 	CALL 0xffa02c38 <_htonl>;
ffa04afa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900dbc <_g_httpRxed> */
ffa04afe:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa04b02:	10 93       	[P2] = R0;
ffa04b04:	ba b9       	P2 = [FP -0x14];
ffa04b06:	d0 a1       	R0 = [P2 + 0x1c];
ffa04b08:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa04b0c:	0a e1 84 0c 	P2.L = 0xc84;		/* (3204)	P2=0xff900c84 <_NetDestIP> */
ffa04b10:	10 93       	[P2] = R0;
ffa04b12:	ba b9       	P2 = [FP -0x14];
ffa04b14:	50 e5 12 00 	R0 = W[P2 + 0x24] (X);
ffa04b18:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c84 <_NetDestIP> */
ffa04b1c:	0a e1 b0 0d 	P2.L = 0xdb0;		/* (3504)	P2=0xff900db0 <_TcpClientPort> */
ffa04b20:	10 97       	W[P2] = R0;
ffa04b22:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900db0 <_TcpClientPort> */
ffa04b26:	0a e1 84 0c 	P2.L = 0xc84;		/* (3204)	P2=0xff900c84 <_NetDestIP> */
ffa04b2a:	13 91       	R3 = [P2];
ffa04b2c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c84 <_NetDestIP> */
ffa04b30:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa04b34:	11 91       	R1 = [P2];
ffa04b36:	57 30       	R2 = FP;
ffa04b38:	5a 67       	R2 += -0x15;		/* (-21) */
ffa04b3a:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa04b3c:	f0 b0       	[SP + 0xc] = R0;
ffa04b3e:	31 b1       	[SP + 0x10] = R1;
ffa04b40:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04b42:	70 b1       	[SP + 0x14] = R0;
ffa04b44:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04b46:	0a 30       	R1 = R2;
ffa04b48:	13 30       	R2 = R3;
ffa04b4a:	ff e3 83 fc 	CALL 0xffa04450 <_tcp_packet_setup>;
ffa04b4e:	b8 e5 eb ff 	R0 = B[FP + -0x15] (X);
ffa04b52:	00 43       	R0 = R0.B (X);
ffa04b54:	00 0d       	CC = R0 <= 0x0;
ffa04b56:	0f 18       	IF CC JUMP 0xffa04b74 <_tcp_rx+0x498>;
ffa04b58:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa04b5c:	0a e1 a4 0d 	P2.L = 0xda4;		/* (3492)	P2=0xff900da4 <_TcpState> */
ffa04b60:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04b62:	10 93       	[P2] = R0;
ffa04b64:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04b66:	ff e3 35 fd 	CALL 0xffa045d0 <_tcp_checksum_set>;
ffa04b6a:	ff e3 ef e8 	CALL 0xffa01d48 <_bfin_EMAC_send_nocopy>;
ffa04b6e:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa04b70:	91 bb       	[FP -0x1c] = R1;
ffa04b72:	da 20       	JUMP.S 0xffa04d26 <_tcp_rx+0x64a>;
ffa04b74:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900da4 <_TcpState> */
ffa04b78:	0a e1 a4 0d 	P2.L = 0xda4;		/* (3492)	P2=0xff900da4 <_TcpState> */
ffa04b7c:	10 91       	R0 = [P2];
ffa04b7e:	10 0c       	CC = R0 == 0x2;
ffa04b80:	d1 10       	IF !CC JUMP 0xffa04d22 <_tcp_rx+0x646>;
ffa04b82:	b0 b9       	R0 = [FP -0x14];
ffa04b84:	20 65       	R0 += 0x24;		/* ( 36) */
ffa04b86:	d0 bb       	[FP -0xc] = R0;
ffa04b88:	ba b9       	P2 = [FP -0x14];
ffa04b8a:	90 e5 30 00 	R0 = B[P2 + 0x30] (X);
ffa04b8e:	41 43       	R1 = R0.B (Z);
ffa04b90:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa04b94:	01 54       	R0 = R1 & R0;
ffa04b96:	80 bb       	[FP -0x20] = R0;
ffa04b98:	80 b9       	R0 = [FP -0x20];
ffa04b9a:	80 0c       	CC = R0 < 0x0;
ffa04b9c:	04 10       	IF !CC JUMP 0xffa04ba4 <_tcp_rx+0x4c8>;
ffa04b9e:	81 b9       	R1 = [FP -0x20];
ffa04ba0:	19 64       	R1 += 0x3;		/* (  3) */
ffa04ba2:	81 bb       	[FP -0x20] = R1;
ffa04ba4:	80 b9       	R0 = [FP -0x20];
ffa04ba6:	10 4d       	R0 >>>= 0x2;
ffa04ba8:	08 30       	R1 = R0;
ffa04baa:	d0 b9       	R0 = [FP -0xc];
ffa04bac:	08 50       	R0 = R0 + R1;
ffa04bae:	d0 bb       	[FP -0xc] = R0;
ffa04bb0:	ba b9       	P2 = [FP -0x14];
ffa04bb2:	90 a2       	R0 = [P2 + 0x28];
ffa04bb4:	ff e3 42 f0 	CALL 0xffa02c38 <_htonl>;
ffa04bb8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900da4 <_TcpState> */
ffa04bbc:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa04bc0:	10 93       	[P2] = R0;
ffa04bc2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa04bc6:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa04bca:	11 91       	R1 = [P2];
ffa04bcc:	c0 b9       	R0 = [FP -0x10];
ffa04bce:	01 50       	R0 = R1 + R0;
ffa04bd0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa04bd4:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa04bd8:	10 93       	[P2] = R0;
ffa04bda:	ba b9       	P2 = [FP -0x14];
ffa04bdc:	d0 a1       	R0 = [P2 + 0x1c];
ffa04bde:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa04be2:	0a e1 84 0c 	P2.L = 0xc84;		/* (3204)	P2=0xff900c84 <_NetDestIP> */
ffa04be6:	10 93       	[P2] = R0;
ffa04be8:	ba b9       	P2 = [FP -0x14];
ffa04bea:	d0 a2       	R0 = [P2 + 0x2c];
ffa04bec:	ff e3 26 f0 	CALL 0xffa02c38 <_htonl>;
ffa04bf0:	08 30       	R1 = R0;
ffa04bf2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c84 <_NetDestIP> */
ffa04bf6:	0a e1 a0 0d 	P2.L = 0xda0;		/* (3488)	P2=0xff900da0 <_TcpSeqHttpStart> */
ffa04bfa:	10 91       	R0 = [P2];
ffa04bfc:	01 52       	R0 = R1 - R0;
ffa04bfe:	f0 bb       	[FP -0x4] = R0;
ffa04c00:	ba b9       	P2 = [FP -0x14];
ffa04c02:	90 e5 31 00 	R0 = B[P2 + 0x31] (X);
ffa04c06:	41 43       	R1 = R0.B (Z);
ffa04c08:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa04c0a:	01 54       	R0 = R1 & R0;
ffa04c0c:	00 0c       	CC = R0 == 0x0;
ffa04c0e:	33 18       	IF CC JUMP 0xffa04c74 <_tcp_rx+0x598>;
ffa04c10:	c0 b9       	R0 = [FP -0x10];
ffa04c12:	00 0c       	CC = R0 == 0x0;
ffa04c14:	30 10       	IF !CC JUMP 0xffa04c74 <_tcp_rx+0x598>;
ffa04c16:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900da0 <_TcpSeqHttpStart> */
ffa04c1a:	0a e1 b4 0d 	P2.L = 0xdb4;		/* (3508)	P2=0xff900db4 <_g_httpHeaderLen> */
ffa04c1e:	11 91       	R1 = [P2];
ffa04c20:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900db4 <_g_httpHeaderLen> */
ffa04c24:	0a e1 b8 0d 	P2.L = 0xdb8;		/* (3512)	P2=0xff900db8 <_g_httpContentLen> */
ffa04c28:	10 91       	R0 = [P2];
ffa04c2a:	41 50       	R1 = R1 + R0;
ffa04c2c:	f0 b9       	R0 = [FP -0x4];
ffa04c2e:	01 08       	CC = R1 == R0;
ffa04c30:	16 10       	IF !CC JUMP 0xffa04c5c <_tcp_rx+0x580>;
ffa04c32:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900db8 <_g_httpContentLen> */
ffa04c36:	0a e1 bc 0d 	P2.L = 0xdbc;		/* (3516)	P2=0xff900dbc <_g_httpRxed> */
ffa04c3a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04c3c:	10 93       	[P2] = R0;
ffa04c3e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900dbc <_g_httpRxed> */
ffa04c42:	0a e1 a0 0d 	P2.L = 0xda0;		/* (3488)	P2=0xff900da0 <_TcpSeqHttpStart> */
ffa04c46:	11 91       	R1 = [P2];
ffa04c48:	f0 b9       	R0 = [FP -0x4];
ffa04c4a:	01 50       	R0 = R1 + R0;
ffa04c4c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900da0 <_TcpSeqHttpStart> */
ffa04c50:	0a e1 98 0d 	P2.L = 0xd98;		/* (3480)	P2=0xff900d98 <_TcpSeqHost> */
ffa04c54:	10 93       	[P2] = R0;
ffa04c56:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04c58:	90 bb       	[FP -0x1c] = R0;
ffa04c5a:	66 20       	JUMP.S 0xffa04d26 <_tcp_rx+0x64a>;
ffa04c5c:	f1 b9       	R1 = [FP -0x4];
ffa04c5e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04c60:	00 e3 68 00 	CALL 0xffa04d30 <_tcp_burst>;
ffa04c64:	00 0c       	CC = R0 == 0x0;
ffa04c66:	04 18       	IF CC JUMP 0xffa04c6e <_tcp_rx+0x592>;
ffa04c68:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa04c6a:	91 bb       	[FP -0x1c] = R1;
ffa04c6c:	5d 20       	JUMP.S 0xffa04d26 <_tcp_rx+0x64a>;
ffa04c6e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04c70:	90 bb       	[FP -0x1c] = R0;
ffa04c72:	5a 20       	JUMP.S 0xffa04d26 <_tcp_rx+0x64a>;
ffa04c74:	d0 b9       	R0 = [FP -0xc];
ffa04c76:	c1 b9       	R1 = [FP -0x10];
ffa04c78:	00 e3 38 01 	CALL 0xffa04ee8 <_httpCollate>;
ffa04c7c:	00 0c       	CC = R0 == 0x0;
ffa04c7e:	2a 18       	IF CC JUMP 0xffa04cd2 <_tcp_rx+0x5f6>;
ffa04c80:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d98 <_TcpSeqHost> */
ffa04c84:	0a e1 98 0d 	P2.L = 0xd98;		/* (3480)	P2=0xff900d98 <_TcpSeqHost> */
ffa04c88:	10 91       	R0 = [P2];
ffa04c8a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d98 <_TcpSeqHost> */
ffa04c8e:	0a e1 a0 0d 	P2.L = 0xda0;		/* (3488)	P2=0xff900da0 <_TcpSeqHttpStart> */
ffa04c92:	10 93       	[P2] = R0;
ffa04c94:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900da0 <_TcpSeqHttpStart> */
ffa04c98:	0a e1 b4 0d 	P2.L = 0xdb4;		/* (3508)	P2=0xff900db4 <_g_httpHeaderLen> */
ffa04c9c:	11 91       	R1 = [P2];
ffa04c9e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900db4 <_g_httpHeaderLen> */
ffa04ca2:	0a e1 b8 0d 	P2.L = 0xdb8;		/* (3512)	P2=0xff900db8 <_g_httpContentLen> */
ffa04ca6:	10 91       	R0 = [P2];
ffa04ca8:	01 50       	R0 = R1 + R0;
ffa04caa:	08 30       	R1 = R0;
ffa04cac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa04cb0:	00 e1 28 06 	R0.L = 0x628;		/* (1576)	R0=0xff900628(-7338456) */
ffa04cb4:	ff e3 f8 dd 	CALL 0xffa008a4 <_printf_int>;
ffa04cb8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900628(-7338456) */
ffa04cbc:	00 e1 8c 05 	R0.L = 0x58c;		/* (1420)	R0=0xff90058c(-7338612) */
ffa04cc0:	ff e3 e8 dd 	CALL 0xffa00890 <_printf_str>;
ffa04cc4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04cc6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa04cc8:	00 e3 34 00 	CALL 0xffa04d30 <_tcp_burst>;
ffa04ccc:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa04cce:	91 bb       	[FP -0x1c] = R1;
ffa04cd0:	2b 20       	JUMP.S 0xffa04d26 <_tcp_rx+0x64a>;
ffa04cd2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900db8 <_g_httpContentLen> */
ffa04cd6:	0a e1 84 0c 	P2.L = 0xc84;		/* (3204)	P2=0xff900c84 <_NetDestIP> */
ffa04cda:	17 91       	R7 = [P2];
ffa04cdc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c84 <_NetDestIP> */
ffa04ce0:	0a e1 98 0d 	P2.L = 0xd98;		/* (3480)	P2=0xff900d98 <_TcpSeqHost> */
ffa04ce4:	12 91       	R2 = [P2];
ffa04ce6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d98 <_TcpSeqHost> */
ffa04cea:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa04cee:	11 91       	R1 = [P2];
ffa04cf0:	5f 30       	R3 = FP;
ffa04cf2:	5b 67       	R3 += -0x15;		/* (-21) */
ffa04cf4:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa04cf6:	f0 b0       	[SP + 0xc] = R0;
ffa04cf8:	32 b1       	[SP + 0x10] = R2;
ffa04cfa:	71 b1       	[SP + 0x14] = R1;
ffa04cfc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04cfe:	0b 30       	R1 = R3;
ffa04d00:	17 30       	R2 = R7;
ffa04d02:	ff e3 a7 fb 	CALL 0xffa04450 <_tcp_packet_setup>;
ffa04d06:	e0 bb       	[FP -0x8] = R0;
ffa04d08:	b8 e5 eb ff 	R0 = B[FP + -0x15] (X);
ffa04d0c:	00 43       	R0 = R0.B (X);
ffa04d0e:	00 0d       	CC = R0 <= 0x0;
ffa04d10:	09 18       	IF CC JUMP 0xffa04d22 <_tcp_rx+0x646>;
ffa04d12:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04d14:	ff e3 5e fc 	CALL 0xffa045d0 <_tcp_checksum_set>;
ffa04d18:	ff e3 18 e8 	CALL 0xffa01d48 <_bfin_EMAC_send_nocopy>;
ffa04d1c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04d1e:	90 bb       	[FP -0x1c] = R0;
ffa04d20:	03 20       	JUMP.S 0xffa04d26 <_tcp_rx+0x64a>;
ffa04d22:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa04d24:	91 bb       	[FP -0x1c] = R1;
ffa04d26:	90 b9       	R0 = [FP -0x1c];
ffa04d28:	01 e8 00 00 	UNLINK;
ffa04d2c:	38 05       	(R7:7) = [SP++];
ffa04d2e:	10 00       	RTS;

ffa04d30 <_tcp_burst>:
ffa04d30:	70 05       	[--SP] = (R7:6);
ffa04d32:	00 e8 0e 00 	LINK 0x38;		/* (56) */
ffa04d36:	38 b1       	[FP + 0x10] = R0;
ffa04d38:	79 b1       	[FP + 0x14] = R1;
ffa04d3a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04d3c:	90 bb       	[FP -0x1c] = R0;
ffa04d3e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa04d42:	0a e1 b4 0d 	P2.L = 0xdb4;		/* (3508)	P2=0xff900db4 <_g_httpHeaderLen> */
ffa04d46:	11 91       	R1 = [P2];
ffa04d48:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900db4 <_g_httpHeaderLen> */
ffa04d4c:	0a e1 b8 0d 	P2.L = 0xdb8;		/* (3512)	P2=0xff900db8 <_g_httpContentLen> */
ffa04d50:	10 91       	R0 = [P2];
ffa04d52:	01 50       	R0 = R1 + R0;
ffa04d54:	c0 bb       	[FP -0x10] = R0;
ffa04d56:	bc 20       	JUMP.S 0xffa04ece <_tcp_burst+0x19e>;
ffa04d58:	c1 b9       	R1 = [FP -0x10];
ffa04d5a:	78 a1       	R0 = [FP + 0x14];
ffa04d5c:	01 52       	R0 = R1 - R0;
ffa04d5e:	d0 bb       	[FP -0xc] = R0;
ffa04d60:	d1 b9       	R1 = [FP -0xc];
ffa04d62:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa04d66:	07 c4 08 40 	R0 = MIN (R1, R0);
ffa04d6a:	a0 bb       	[FP -0x18] = R0;
ffa04d6c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900db8 <_g_httpContentLen> */
ffa04d70:	0a e1 a0 0d 	P2.L = 0xda0;		/* (3488)	P2=0xff900da0 <_TcpSeqHttpStart> */
ffa04d74:	11 91       	R1 = [P2];
ffa04d76:	78 a1       	R0 = [FP + 0x14];
ffa04d78:	01 50       	R0 = R1 + R0;
ffa04d7a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900da0 <_TcpSeqHttpStart> */
ffa04d7e:	0a e1 98 0d 	P2.L = 0xd98;		/* (3480)	P2=0xff900d98 <_TcpSeqHost> */
ffa04d82:	10 93       	[P2] = R0;
ffa04d84:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d98 <_TcpSeqHost> */
ffa04d88:	0a e1 84 0c 	P2.L = 0xc84;		/* (3204)	P2=0xff900c84 <_NetDestIP> */
ffa04d8c:	16 91       	R6 = [P2];
ffa04d8e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c84 <_NetDestIP> */
ffa04d92:	0a e1 98 0d 	P2.L = 0xd98;		/* (3480)	P2=0xff900d98 <_TcpSeqHost> */
ffa04d96:	11 91       	R1 = [P2];
ffa04d98:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d98 <_TcpSeqHost> */
ffa04d9c:	0a e1 9c 0d 	P2.L = 0xd9c;		/* (3484)	P2=0xff900d9c <_TcpSeqClient> */
ffa04da0:	12 91       	R2 = [P2];
ffa04da2:	a3 b9       	R3 = [FP -0x18];
ffa04da4:	7f 30       	R7 = FP;
ffa04da6:	1f 67       	R7 += -0x1d;		/* (-29) */
ffa04da8:	c0 60       	R0 = 0x18 (X);		/*		R0=0x18( 24) */
ffa04daa:	f0 b0       	[SP + 0xc] = R0;
ffa04dac:	31 b1       	[SP + 0x10] = R1;
ffa04dae:	72 b1       	[SP + 0x14] = R2;
ffa04db0:	03 30       	R0 = R3;
ffa04db2:	0f 30       	R1 = R7;
ffa04db4:	16 30       	R2 = R6;
ffa04db6:	ff e3 4d fb 	CALL 0xffa04450 <_tcp_packet_setup>;
ffa04dba:	b0 bb       	[FP -0x14] = R0;
ffa04dbc:	b8 e5 e3 ff 	R0 = B[FP + -0x1d] (X);
ffa04dc0:	00 43       	R0 = R0.B (X);
ffa04dc2:	00 0d       	CC = R0 <= 0x0;
ffa04dc4:	85 18       	IF CC JUMP 0xffa04ece <_tcp_burst+0x19e>;
ffa04dc6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04dc8:	f0 bb       	[FP -0x4] = R0;
ffa04dca:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d9c <_TcpSeqClient> */
ffa04dce:	0a e1 b4 0d 	P2.L = 0xdb4;		/* (3508)	P2=0xff900db4 <_g_httpHeaderLen> */
ffa04dd2:	11 91       	R1 = [P2];
ffa04dd4:	78 a1       	R0 = [FP + 0x14];
ffa04dd6:	88 09       	CC = R0 < R1 (IU);
ffa04dd8:	22 10       	IF !CC JUMP 0xffa04e1c <_tcp_burst+0xec>;
ffa04dda:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa04dde:	e0 bb       	[FP -0x8] = R0;
ffa04de0:	79 a1       	R1 = [FP + 0x14];
ffa04de2:	e0 b9       	R0 = [FP -0x8];
ffa04de4:	08 50       	R0 = R0 + R1;
ffa04de6:	e0 bb       	[FP -0x8] = R0;
ffa04de8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900db4 <_g_httpHeaderLen> */
ffa04dec:	0a e1 b4 0d 	P2.L = 0xdb4;		/* (3508)	P2=0xff900db4 <_g_httpHeaderLen> */
ffa04df0:	11 91       	R1 = [P2];
ffa04df2:	78 a1       	R0 = [FP + 0x14];
ffa04df4:	01 52       	R0 = R1 - R0;
ffa04df6:	f0 bb       	[FP -0x4] = R0;
ffa04df8:	e0 b9       	R0 = [FP -0x8];
ffa04dfa:	b1 b9       	R1 = [FP -0x14];
ffa04dfc:	f2 b9       	R2 = [FP -0x4];
ffa04dfe:	ff e3 db df 	CALL 0xffa00db4 <_memcpy_>;
ffa04e02:	f0 b9       	R0 = [FP -0x4];
ffa04e04:	08 30       	R1 = R0;
ffa04e06:	b0 b9       	R0 = [FP -0x14];
ffa04e08:	08 50       	R0 = R0 + R1;
ffa04e0a:	b0 bb       	[FP -0x14] = R0;
ffa04e0c:	a1 b9       	R1 = [FP -0x18];
ffa04e0e:	f0 b9       	R0 = [FP -0x4];
ffa04e10:	01 52       	R0 = R1 - R0;
ffa04e12:	a0 bb       	[FP -0x18] = R0;
ffa04e14:	f1 b9       	R1 = [FP -0x4];
ffa04e16:	78 a1       	R0 = [FP + 0x14];
ffa04e18:	08 50       	R0 = R0 + R1;
ffa04e1a:	78 b1       	[FP + 0x14] = R0;
ffa04e1c:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa04e20:	e0 bb       	[FP -0x8] = R0;
ffa04e22:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900db4 <_g_httpHeaderLen> */
ffa04e26:	0a e1 b4 0d 	P2.L = 0xdb4;		/* (3508)	P2=0xff900db4 <_g_httpHeaderLen> */
ffa04e2a:	11 91       	R1 = [P2];
ffa04e2c:	78 a1       	R0 = [FP + 0x14];
ffa04e2e:	08 52       	R0 = R0 - R1;
ffa04e30:	08 30       	R1 = R0;
ffa04e32:	e0 b9       	R0 = [FP -0x8];
ffa04e34:	08 50       	R0 = R0 + R1;
ffa04e36:	e0 bb       	[FP -0x8] = R0;
ffa04e38:	e0 b9       	R0 = [FP -0x8];
ffa04e3a:	b1 b9       	R1 = [FP -0x14];
ffa04e3c:	a2 b9       	R2 = [FP -0x18];
ffa04e3e:	ff e3 bb df 	CALL 0xffa00db4 <_memcpy_>;
ffa04e42:	a1 b9       	R1 = [FP -0x18];
ffa04e44:	78 a1       	R0 = [FP + 0x14];
ffa04e46:	08 50       	R0 = R0 + R1;
ffa04e48:	78 b1       	[FP + 0x14] = R0;
ffa04e4a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900db4 <_g_httpHeaderLen> */
ffa04e4e:	0a e1 a0 0d 	P2.L = 0xda0;		/* (3488)	P2=0xff900da0 <_TcpSeqHttpStart> */
ffa04e52:	11 91       	R1 = [P2];
ffa04e54:	78 a1       	R0 = [FP + 0x14];
ffa04e56:	01 50       	R0 = R1 + R0;
ffa04e58:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900da0 <_TcpSeqHttpStart> */
ffa04e5c:	0a e1 98 0d 	P2.L = 0xd98;		/* (3480)	P2=0xff900d98 <_TcpSeqHost> */
ffa04e60:	10 93       	[P2] = R0;
ffa04e62:	a1 b9       	R1 = [FP -0x18];
ffa04e64:	f0 b9       	R0 = [FP -0x4];
ffa04e66:	01 50       	R0 = R1 + R0;
ffa04e68:	ff e3 b4 fb 	CALL 0xffa045d0 <_tcp_checksum_set>;
ffa04e6c:	ff e3 6e e7 	CALL 0xffa01d48 <_bfin_EMAC_send_nocopy>;
ffa04e70:	90 b9       	R0 = [FP -0x1c];
ffa04e72:	08 64       	R0 += 0x1;		/* (  1) */
ffa04e74:	90 bb       	[FP -0x1c] = R0;
ffa04e76:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d98 <_TcpSeqHost> */
ffa04e7a:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa04e7e:	50 95       	R0 = W[P2] (X);
ffa04e80:	c0 42       	R0 = R0.L (Z);
ffa04e82:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900000 <_l1_data_a>(-7340032) */
ffa04e86:	01 e1 a4 0c 	R1.L = 0xca4;		/* (3236)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa04e8a:	10 4f       	R0 <<= 0x2;
ffa04e8c:	08 50       	R0 = R0 + R1;
ffa04e8e:	10 32       	P2 = R0;
ffa04e90:	52 91       	P2 = [P2];
ffa04e92:	91 a2       	R1 = [P2 + 0x28];
ffa04e94:	20 e1 00 10 	R0 = 0x1000 (X);		/*		R0=0x1000(4096) */
ffa04e98:	01 54       	R0 = R1 & R0;
ffa04e9a:	00 0c       	CC = R0 == 0x0;
ffa04e9c:	19 18       	IF CC JUMP 0xffa04ece <_tcp_burst+0x19e>;
ffa04e9e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca0 <_rxIdx> */
ffa04ea2:	0a e1 a0 0c 	P2.L = 0xca0;		/* (3232)	P2=0xff900ca0 <_rxIdx> */
ffa04ea6:	50 95       	R0 = W[P2] (X);
ffa04ea8:	c0 42       	R0 = R0.L (Z);
ffa04eaa:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa04eae:	01 e1 a4 0c 	R1.L = 0xca4;		/* (3236)	R1=0xff900ca4 <_rxbuf>(-7336796) */
ffa04eb2:	10 4f       	R0 <<= 0x2;
ffa04eb4:	08 50       	R0 = R0 + R1;
ffa04eb6:	10 32       	P2 = R0;
ffa04eb8:	52 91       	P2 = [P2];
ffa04eba:	91 a2       	R1 = [P2 + 0x28];
ffa04ebc:	20 e1 00 20 	R0 = 0x2000 (X);		/*		R0=0x2000(8192) */
ffa04ec0:	01 54       	R0 = R1 & R0;
ffa04ec2:	00 0c       	CC = R0 == 0x0;
ffa04ec4:	05 18       	IF CC JUMP 0xffa04ece <_tcp_burst+0x19e>;
ffa04ec6:	90 b9       	R0 = [FP -0x1c];
ffa04ec8:	39 a1       	R1 = [FP + 0x10];
ffa04eca:	08 50       	R0 = R0 + R1;
ffa04ecc:	90 bb       	[FP -0x1c] = R0;
ffa04ece:	91 b9       	R1 = [FP -0x1c];
ffa04ed0:	38 a1       	R0 = [FP + 0x10];
ffa04ed2:	81 08       	CC = R1 < R0;
ffa04ed4:	05 10       	IF !CC JUMP 0xffa04ede <_tcp_burst+0x1ae>;
ffa04ed6:	c1 b9       	R1 = [FP -0x10];
ffa04ed8:	78 a1       	R0 = [FP + 0x14];
ffa04eda:	01 0a       	CC = R1 <= R0 (IU);
ffa04edc:	3e 13       	IF !CC JUMP 0xffa04d58 <_tcp_burst+0x28>;
ffa04ede:	90 b9       	R0 = [FP -0x1c];
ffa04ee0:	01 e8 00 00 	UNLINK;
ffa04ee4:	30 05       	(R7:6) = [SP++];
ffa04ee6:	10 00       	RTS;

ffa04ee8 <_httpCollate>:
ffa04ee8:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa04eec:	b8 b0       	[FP + 0x8] = R0;
ffa04eee:	f9 b0       	[FP + 0xc] = R1;
ffa04ef0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ca0 <_rxIdx> */
ffa04ef4:	0a e1 bc 0d 	P2.L = 0xdbc;		/* (3516)	P2=0xff900dbc <_g_httpRxed> */
ffa04ef8:	10 91       	R0 = [P2];
ffa04efa:	00 0c       	CC = R0 == 0x0;
ffa04efc:	33 18       	IF CC JUMP 0xffa04f62 <_httpCollate+0x7a>;
ffa04efe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04f00:	80 4f       	R0 <<= 0x10;
ffa04f02:	f0 bb       	[FP -0x4] = R0;
ffa04f04:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900dbc <_g_httpRxed> */
ffa04f08:	0a e1 bc 0d 	P2.L = 0xdbc;		/* (3516)	P2=0xff900dbc <_g_httpRxed> */
ffa04f0c:	10 91       	R0 = [P2];
ffa04f0e:	08 30       	R1 = R0;
ffa04f10:	f0 b9       	R0 = [FP -0x4];
ffa04f12:	08 50       	R0 = R0 + R1;
ffa04f14:	f0 bb       	[FP -0x4] = R0;
ffa04f16:	b8 a0       	R0 = [FP + 0x8];
ffa04f18:	f1 b9       	R1 = [FP -0x4];
ffa04f1a:	fa a0       	R2 = [FP + 0xc];
ffa04f1c:	ff e3 4c df 	CALL 0xffa00db4 <_memcpy_>;
ffa04f20:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900dbc <_g_httpRxed> */
ffa04f24:	0a e1 bc 0d 	P2.L = 0xdbc;		/* (3516)	P2=0xff900dbc <_g_httpRxed> */
ffa04f28:	11 91       	R1 = [P2];
ffa04f2a:	f8 a0       	R0 = [FP + 0xc];
ffa04f2c:	01 50       	R0 = R1 + R0;
ffa04f2e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900dbc <_g_httpRxed> */
ffa04f32:	0a e1 bc 0d 	P2.L = 0xdbc;		/* (3516)	P2=0xff900dbc <_g_httpRxed> */
ffa04f36:	10 93       	[P2] = R0;
ffa04f38:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900dbc <_g_httpRxed> */
ffa04f3c:	0a e1 bc 0d 	P2.L = 0xdbc;		/* (3516)	P2=0xff900dbc <_g_httpRxed> */
ffa04f40:	10 91       	R0 = [P2];
ffa04f42:	08 30       	R1 = R0;
ffa04f44:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04f46:	80 4f       	R0 <<= 0x10;
ffa04f48:	00 e3 2e 00 	CALL 0xffa04fa4 <_httpResp>;
ffa04f4c:	00 0c       	CC = R0 == 0x0;
ffa04f4e:	25 18       	IF CC JUMP 0xffa04f98 <_httpCollate+0xb0>;
ffa04f50:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900dbc <_g_httpRxed> */
ffa04f54:	0a e1 bc 0d 	P2.L = 0xdbc;		/* (3516)	P2=0xff900dbc <_g_httpRxed> */
ffa04f58:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04f5a:	10 93       	[P2] = R0;
ffa04f5c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04f5e:	e0 bb       	[FP -0x8] = R0;
ffa04f60:	1e 20       	JUMP.S 0xffa04f9c <_httpCollate+0xb4>;
ffa04f62:	f9 a0       	R1 = [FP + 0xc];
ffa04f64:	b8 a0       	R0 = [FP + 0x8];
ffa04f66:	00 e3 1f 00 	CALL 0xffa04fa4 <_httpResp>;
ffa04f6a:	00 0c       	CC = R0 == 0x0;
ffa04f6c:	0a 18       	IF CC JUMP 0xffa04f80 <_httpCollate+0x98>;
ffa04f6e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900dbc <_g_httpRxed> */
ffa04f72:	0a e1 bc 0d 	P2.L = 0xdbc;		/* (3516)	P2=0xff900dbc <_g_httpRxed> */
ffa04f76:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04f78:	10 93       	[P2] = R0;
ffa04f7a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04f7c:	e0 bb       	[FP -0x8] = R0;
ffa04f7e:	0f 20       	JUMP.S 0xffa04f9c <_httpCollate+0xb4>;
ffa04f80:	b8 a0       	R0 = [FP + 0x8];
ffa04f82:	fa a0       	R2 = [FP + 0xc];
ffa04f84:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa04f86:	81 4f       	R1 <<= 0x10;
ffa04f88:	ff e3 16 df 	CALL 0xffa00db4 <_memcpy_>;
ffa04f8c:	f8 a0       	R0 = [FP + 0xc];
ffa04f8e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900dbc <_g_httpRxed> */
ffa04f92:	0a e1 bc 0d 	P2.L = 0xdbc;		/* (3516)	P2=0xff900dbc <_g_httpRxed> */
ffa04f96:	10 93       	[P2] = R0;
ffa04f98:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04f9a:	e0 bb       	[FP -0x8] = R0;
ffa04f9c:	e0 b9       	R0 = [FP -0x8];
ffa04f9e:	01 e8 00 00 	UNLINK;
ffa04fa2:	10 00       	RTS;

ffa04fa4 <_httpResp>:
ffa04fa4:	00 e8 2f 00 	LINK 0xbc;		/* (188) */
ffa04fa8:	b8 b0       	[FP + 0x8] = R0;
ffa04faa:	f9 b0       	[FP + 0xc] = R1;
ffa04fac:	f8 a0       	R0 = [FP + 0xc];
ffa04fae:	71 60       	R1 = 0xe (X);		/*		R1=0xe( 14) */
ffa04fb0:	08 09       	CC = R0 <= R1;
ffa04fb2:	22 18       	IF CC JUMP 0xffa04ff6 <_httpResp+0x52>;
ffa04fb4:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff90000e(-7340018) */
ffa04fb8:	01 e1 44 06 	R1.L = 0x644;		/* (1604)	R1=0xff900644(-7338428) */
ffa04fbc:	b8 a0       	R0 = [FP + 0x8];
ffa04fbe:	ff e3 ad df 	CALL 0xffa00f18 <_strcmp>;
ffa04fc2:	00 0c       	CC = R0 == 0x0;
ffa04fc4:	19 18       	IF CC JUMP 0xffa04ff6 <_httpResp+0x52>;
ffa04fc6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa04fca:	00 e1 50 06 	R0.L = 0x650;		/* (1616)	R0=0xff900650(-7338416) */
ffa04fce:	fa a0       	R2 = [FP + 0xc];
ffa04fd0:	b9 a0       	R1 = [FP + 0x8];
ffa04fd2:	ff e3 db df 	CALL 0xffa00f88 <_substr>;
ffa04fd6:	00 0c       	CC = R0 == 0x0;
ffa04fd8:	02 14       	IF !CC JUMP 0xffa04fdc <_httpResp+0x38> (BP);
ffa04fda:	77 23       	JUMP.S 0xffa056c8 <_httpResp+0x724>;
ffa04fdc:	00 e3 f2 03 	CALL 0xffa057c0 <_htmlDefault>;
ffa04fe0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900dbc <_g_httpRxed> */
ffa04fe4:	0a e1 b8 0d 	P2.L = 0xdb8;		/* (3512)	P2=0xff900db8 <_g_httpContentLen> */
ffa04fe8:	10 93       	[P2] = R0;
ffa04fea:	00 e3 77 03 	CALL 0xffa056d8 <_httpHeader>;
ffa04fee:	09 68       	P1 = 0x1 (X);		/*		P1=0x1(  1) */
ffa04ff0:	39 e7 d4 ff 	[FP + -0xb0] = P1;
ffa04ff4:	6d 23       	JUMP.S 0xffa056ce <_httpResp+0x72a>;
ffa04ff6:	f8 a0       	R0 = [FP + 0xc];
ffa04ff8:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa04ffa:	08 09       	CC = R0 <= R1;
ffa04ffc:	85 18       	IF CC JUMP 0xffa05106 <_httpResp+0x162>;
ffa04ffe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900650(-7338416) */
ffa05002:	00 e1 58 06 	R0.L = 0x658;		/* (1624)	R0=0xff900658(-7338408) */
ffa05006:	fa a0       	R2 = [FP + 0xc];
ffa05008:	b9 a0       	R1 = [FP + 0x8];
ffa0500a:	ff e3 bf df 	CALL 0xffa00f88 <_substr>;
ffa0500e:	00 0c       	CC = R0 == 0x0;
ffa05010:	7b 18       	IF CC JUMP 0xffa05106 <_httpResp+0x162>;
ffa05012:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900658(-7338408) */
ffa05016:	00 e1 64 06 	R0.L = 0x664;		/* (1636)	R0=0xff900664(-7338396) */
ffa0501a:	fa a0       	R2 = [FP + 0xc];
ffa0501c:	b9 a0       	R1 = [FP + 0x8];
ffa0501e:	ff e3 b5 df 	CALL 0xffa00f88 <_substr>;
ffa05022:	70 ba       	[FP -0x64] = R0;
ffa05024:	70 b8       	R0 = [FP -0x64];
ffa05026:	00 0c       	CC = R0 == 0x0;
ffa05028:	02 14       	IF !CC JUMP 0xffa0502c <_httpResp+0x88> (BP);
ffa0502a:	4f 23       	JUMP.S 0xffa056c8 <_httpResp+0x724>;
ffa0502c:	b8 a0       	R0 = [FP + 0x8];
ffa0502e:	80 ba       	[FP -0x60] = R0;
ffa05030:	70 b8       	R0 = [FP -0x64];
ffa05032:	08 30       	R1 = R0;
ffa05034:	80 b8       	R0 = [FP -0x60];
ffa05036:	08 50       	R0 = R0 + R1;
ffa05038:	80 ba       	[FP -0x60] = R0;
ffa0503a:	80 b8       	R0 = [FP -0x60];
ffa0503c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0503e:	ff e3 45 e1 	CALL 0xffa012c8 <_atoi>;
ffa05042:	90 ba       	[FP -0x5c] = R0;
ffa05044:	90 b8       	R0 = [FP -0x5c];
ffa05046:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
ffa05048:	08 09       	CC = R0 <= R1;
ffa0504a:	41 18       	IF CC JUMP 0xffa050cc <_httpResp+0x128>;
ffa0504c:	90 b8       	R0 = [FP -0x5c];
ffa0504e:	21 e1 a0 0f 	R1 = 0xfa0 (X);		/*		R1=0xfa0(4000) */
ffa05052:	08 09       	CC = R0 <= R1;
ffa05054:	3c 10       	IF !CC JUMP 0xffa050cc <_httpResp+0x128>;
ffa05056:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff800664(-8386972) */
ffa0505a:	00 e1 04 08 	R0.L = 0x804;		/* (2052)	R0=0xff800804(-8386556) */
ffa0505e:	a0 ba       	[FP -0x58] = R0;
ffa05060:	aa b8       	P2 = [FP -0x58];
ffa05062:	11 91       	R1 = [P2];
ffa05064:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa05068:	28 4f       	R0 <<= 0x5;
ffa0506a:	41 54       	R1 = R1 & R0;
ffa0506c:	90 b8       	R0 = [FP -0x5c];
ffa0506e:	28 4f       	R0 <<= 0x5;
ffa05070:	01 52       	R0 = R1 - R0;
ffa05072:	b0 ba       	[FP -0x54] = R0;
ffa05074:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa05078:	c0 ba       	[FP -0x50] = R0;
ffa0507a:	b0 b8       	R0 = [FP -0x54];
ffa0507c:	d0 ba       	[FP -0x4c] = R0;
ffa0507e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05080:	e0 ba       	[FP -0x48] = R0;
ffa05082:	15 20       	JUMP.S 0xffa050ac <_httpResp+0x108>;
ffa05084:	d0 b8       	R0 = [FP -0x4c];
ffa05086:	08 30       	R1 = R0;
ffa05088:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0508a:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa0508e:	01 54       	R0 = R1 & R0;
ffa05090:	d0 ba       	[FP -0x4c] = R0;
ffa05092:	da b8       	P2 = [FP -0x4c];
ffa05094:	10 91       	R0 = [P2];
ffa05096:	ca b8       	P2 = [FP -0x50];
ffa05098:	10 93       	[P2] = R0;
ffa0509a:	c0 b8       	R0 = [FP -0x50];
ffa0509c:	20 64       	R0 += 0x4;		/* (  4) */
ffa0509e:	c0 ba       	[FP -0x50] = R0;
ffa050a0:	d0 b8       	R0 = [FP -0x4c];
ffa050a2:	20 64       	R0 += 0x4;		/* (  4) */
ffa050a4:	d0 ba       	[FP -0x4c] = R0;
ffa050a6:	e0 b8       	R0 = [FP -0x48];
ffa050a8:	08 64       	R0 += 0x1;		/* (  1) */
ffa050aa:	e0 ba       	[FP -0x48] = R0;
ffa050ac:	90 b8       	R0 = [FP -0x5c];
ffa050ae:	82 c6 18 82 	R1 = R0 << 0x3;
ffa050b2:	e0 b8       	R0 = [FP -0x48];
ffa050b4:	01 09       	CC = R1 <= R0;
ffa050b6:	e7 13       	IF !CC JUMP 0xffa05084 <_httpResp+0xe0>;
ffa050b8:	90 b8       	R0 = [FP -0x5c];
ffa050ba:	28 4f       	R0 <<= 0x5;
ffa050bc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900db8 <_g_httpContentLen> */
ffa050c0:	0a e1 b8 0d 	P2.L = 0xdb8;		/* (3512)	P2=0xff900db8 <_g_httpContentLen> */
ffa050c4:	10 93       	[P2] = R0;
ffa050c6:	00 e3 09 03 	CALL 0xffa056d8 <_httpHeader>;
ffa050ca:	1a 20       	JUMP.S 0xffa050fe <_httpResp+0x15a>;
ffa050cc:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa050d0:	f0 ba       	[FP -0x44] = R0;
ffa050d2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa050d4:	60 ba       	[FP -0x68] = R0;
ffa050d6:	f0 b8       	R0 = [FP -0x44];
ffa050d8:	2a e1 98 ff 	P2 = -0x68 (X);		/*		P2=0xffffff98(-104) */
ffa050dc:	97 5a       	P2 = FP + P2;
ffa050de:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ccc <_NetArpLut>(-7336756) */
ffa050e2:	02 e1 6c 06 	R2.L = 0x66c;		/* (1644)	R2=0xff90066c(-7338388) */
ffa050e6:	4a 30       	R1 = P2;
ffa050e8:	ff e3 be de 	CALL 0xffa00e64 <_strcpy_>;
ffa050ec:	f0 ba       	[FP -0x44] = R0;
ffa050ee:	60 b8       	R0 = [FP -0x68];
ffa050f0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90ff98 */
ffa050f4:	0a e1 b8 0d 	P2.L = 0xdb8;		/* (3512)	P2=0xff900db8 <_g_httpContentLen> */
ffa050f8:	10 93       	[P2] = R0;
ffa050fa:	00 e3 ef 02 	CALL 0xffa056d8 <_httpHeader>;
ffa050fe:	09 68       	P1 = 0x1 (X);		/*		P1=0x1(  1) */
ffa05100:	39 e7 d4 ff 	[FP + -0xb0] = P1;
ffa05104:	e5 22       	JUMP.S 0xffa056ce <_httpResp+0x72a>;
ffa05106:	f8 a0       	R0 = [FP + 0xc];
ffa05108:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa0510a:	08 09       	CC = R0 <= R1;
ffa0510c:	02 14       	IF !CC JUMP 0xffa05110 <_httpResp+0x16c> (BP);
ffa0510e:	c6 22       	JUMP.S 0xffa0569a <_httpResp+0x6f6>;
ffa05110:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa05114:	00 e1 98 06 	R0.L = 0x698;		/* (1688)	R0=0xff900698(-7338344) */
ffa05118:	fa a0       	R2 = [FP + 0xc];
ffa0511a:	b9 a0       	R1 = [FP + 0x8];
ffa0511c:	ff e3 36 df 	CALL 0xffa00f88 <_substr>;
ffa05120:	00 0c       	CC = R0 == 0x0;
ffa05122:	02 14       	IF !CC JUMP 0xffa05126 <_httpResp+0x182> (BP);
ffa05124:	bb 22       	JUMP.S 0xffa0569a <_httpResp+0x6f6>;
ffa05126:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05128:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa0512c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa05130:	00 e1 a0 06 	R0.L = 0x6a0;		/* (1696)	R0=0xff9006a0(-7338336) */
ffa05134:	fa a0       	R2 = [FP + 0xc];
ffa05136:	b9 a0       	R1 = [FP + 0x8];
ffa05138:	ff e3 28 df 	CALL 0xffa00f88 <_substr>;
ffa0513c:	00 0c       	CC = R0 == 0x0;
ffa0513e:	35 18       	IF CC JUMP 0xffa051a8 <_httpResp+0x204>;
ffa05140:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9006a0(-7338336) */
ffa05144:	00 e1 b0 06 	R0.L = 0x6b0;		/* (1712)	R0=0xff9006b0(-7338320) */
ffa05148:	fa a0       	R2 = [FP + 0xc];
ffa0514a:	b9 a0       	R1 = [FP + 0x8];
ffa0514c:	ff e3 1e df 	CALL 0xffa00f88 <_substr>;
ffa05150:	00 0c       	CC = R0 == 0x0;
ffa05152:	18 18       	IF CC JUMP 0xffa05182 <_httpResp+0x1de>;
ffa05154:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff8006b0(-8386896) */
ffa05158:	00 e1 04 08 	R0.L = 0x804;		/* (2052)	R0=0xff800804(-8386556) */
ffa0515c:	30 bb       	[FP -0x34] = R0;
ffa0515e:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff800804(-8386556) */
ffa05162:	00 e1 08 08 	R0.L = 0x808;		/* (2056)	R0=0xff800808(-8386552) */
ffa05166:	40 bb       	[FP -0x30] = R0;
ffa05168:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900db8 <_g_httpContentLen> */
ffa0516c:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_streamEnabled> */
ffa05170:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05172:	10 9b       	B[P2] = R0;
ffa05174:	3a b9       	P2 = [FP -0x34];
ffa05176:	10 91       	R0 = [P2];
ffa05178:	4a b9       	P2 = [FP -0x30];
ffa0517a:	10 93       	[P2] = R0;
ffa0517c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0517e:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa05182:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05186:	00 e1 b8 06 	R0.L = 0x6b8;		/* (1720)	R0=0xff9006b8(-7338312) */
ffa0518a:	fa a0       	R2 = [FP + 0xc];
ffa0518c:	b9 a0       	R1 = [FP + 0x8];
ffa0518e:	ff e3 fd de 	CALL 0xffa00f88 <_substr>;
ffa05192:	00 0c       	CC = R0 == 0x0;
ffa05194:	0a 18       	IF CC JUMP 0xffa051a8 <_httpResp+0x204>;
ffa05196:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_g_streamEnabled> */
ffa0519a:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_streamEnabled> */
ffa0519e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa051a0:	10 9b       	B[P2] = R0;
ffa051a2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa051a4:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa051a8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa051ac:	00 e1 c4 06 	R0.L = 0x6c4;		/* (1732)	R0=0xff9006c4(-7338300) */
ffa051b0:	fa a0       	R2 = [FP + 0xc];
ffa051b2:	b9 a0       	R1 = [FP + 0x8];
ffa051b4:	ff e3 ea de 	CALL 0xffa00f88 <_substr>;
ffa051b8:	00 0c       	CC = R0 == 0x0;
ffa051ba:	27 18       	IF CC JUMP 0xffa05208 <_httpResp+0x264>;
ffa051bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9006c4(-7338300) */
ffa051c0:	00 e1 b0 06 	R0.L = 0x6b0;		/* (1712)	R0=0xff9006b0(-7338320) */
ffa051c4:	fa a0       	R2 = [FP + 0xc];
ffa051c6:	b9 a0       	R1 = [FP + 0x8];
ffa051c8:	ff e3 e0 de 	CALL 0xffa00f88 <_substr>;
ffa051cc:	00 0c       	CC = R0 == 0x0;
ffa051ce:	0a 18       	IF CC JUMP 0xffa051e2 <_httpResp+0x23e>;
ffa051d0:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c38 */
ffa051d4:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa051d8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa051da:	10 9b       	B[P2] = R0;
ffa051dc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa051de:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa051e2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa051e6:	00 e1 b8 06 	R0.L = 0x6b8;		/* (1720)	R0=0xff9006b8(-7338312) */
ffa051ea:	fa a0       	R2 = [FP + 0xc];
ffa051ec:	b9 a0       	R1 = [FP + 0x8];
ffa051ee:	ff e3 cd de 	CALL 0xffa00f88 <_substr>;
ffa051f2:	00 0c       	CC = R0 == 0x0;
ffa051f4:	0a 18       	IF CC JUMP 0xffa05208 <_httpResp+0x264>;
ffa051f6:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa051fa:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa051fe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05200:	10 9b       	B[P2] = R0;
ffa05202:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05204:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa05208:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0520c:	00 e1 d0 06 	R0.L = 0x6d0;		/* (1744)	R0=0xff9006d0(-7338288) */
ffa05210:	fa a0       	R2 = [FP + 0xc];
ffa05212:	b9 a0       	R1 = [FP + 0x8];
ffa05214:	ff e3 ba de 	CALL 0xffa00f88 <_substr>;
ffa05218:	20 bb       	[FP -0x38] = R0;
ffa0521a:	20 b9       	R0 = [FP -0x38];
ffa0521c:	00 0c       	CC = R0 == 0x0;
ffa0521e:	0b 18       	IF CC JUMP 0xffa05234 <_httpResp+0x290>;
ffa05220:	b8 a0       	R0 = [FP + 0x8];
ffa05222:	10 bb       	[FP -0x3c] = R0;
ffa05224:	20 b9       	R0 = [FP -0x38];
ffa05226:	08 30       	R1 = R0;
ffa05228:	10 b9       	R0 = [FP -0x3c];
ffa0522a:	08 50       	R0 = R0 + R1;
ffa0522c:	10 bb       	[FP -0x3c] = R0;
ffa0522e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05230:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa05234:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05238:	00 e1 dc 06 	R0.L = 0x6dc;		/* (1756)	R0=0xff9006dc(-7338276) */
ffa0523c:	fa a0       	R2 = [FP + 0xc];
ffa0523e:	b9 a0       	R1 = [FP + 0x8];
ffa05240:	ff e3 a4 de 	CALL 0xffa00f88 <_substr>;
ffa05244:	20 bb       	[FP -0x38] = R0;
ffa05246:	20 b9       	R0 = [FP -0x38];
ffa05248:	00 0c       	CC = R0 == 0x0;
ffa0524a:	0b 18       	IF CC JUMP 0xffa05260 <_httpResp+0x2bc>;
ffa0524c:	b8 a0       	R0 = [FP + 0x8];
ffa0524e:	10 bb       	[FP -0x3c] = R0;
ffa05250:	20 b9       	R0 = [FP -0x38];
ffa05252:	08 30       	R1 = R0;
ffa05254:	10 b9       	R0 = [FP -0x3c];
ffa05256:	08 50       	R0 = R0 + R1;
ffa05258:	10 bb       	[FP -0x3c] = R0;
ffa0525a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0525c:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa05260:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05264:	00 e1 e8 06 	R0.L = 0x6e8;		/* (1768)	R0=0xff9006e8(-7338264) */
ffa05268:	fa a0       	R2 = [FP + 0xc];
ffa0526a:	b9 a0       	R1 = [FP + 0x8];
ffa0526c:	ff e3 8e de 	CALL 0xffa00f88 <_substr>;
ffa05270:	20 bb       	[FP -0x38] = R0;
ffa05272:	20 b9       	R0 = [FP -0x38];
ffa05274:	00 0c       	CC = R0 == 0x0;
ffa05276:	0b 18       	IF CC JUMP 0xffa0528c <_httpResp+0x2e8>;
ffa05278:	b8 a0       	R0 = [FP + 0x8];
ffa0527a:	10 bb       	[FP -0x3c] = R0;
ffa0527c:	20 b9       	R0 = [FP -0x38];
ffa0527e:	08 30       	R1 = R0;
ffa05280:	10 b9       	R0 = [FP -0x3c];
ffa05282:	08 50       	R0 = R0 + R1;
ffa05284:	10 bb       	[FP -0x3c] = R0;
ffa05286:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05288:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa0528c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05290:	00 e1 f4 06 	R0.L = 0x6f4;		/* (1780)	R0=0xff9006f4(-7338252) */
ffa05294:	fa a0       	R2 = [FP + 0xc];
ffa05296:	b9 a0       	R1 = [FP + 0x8];
ffa05298:	ff e3 78 de 	CALL 0xffa00f88 <_substr>;
ffa0529c:	20 bb       	[FP -0x38] = R0;
ffa0529e:	20 b9       	R0 = [FP -0x38];
ffa052a0:	00 0c       	CC = R0 == 0x0;
ffa052a2:	0b 18       	IF CC JUMP 0xffa052b8 <_httpResp+0x314>;
ffa052a4:	b8 a0       	R0 = [FP + 0x8];
ffa052a6:	10 bb       	[FP -0x3c] = R0;
ffa052a8:	20 b9       	R0 = [FP -0x38];
ffa052aa:	08 30       	R1 = R0;
ffa052ac:	10 b9       	R0 = [FP -0x3c];
ffa052ae:	08 50       	R0 = R0 + R1;
ffa052b0:	10 bb       	[FP -0x3c] = R0;
ffa052b2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa052b4:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa052b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa052bc:	00 e1 00 07 	R0.L = 0x700;		/* (1792)	R0=0xff900700(-7338240) */
ffa052c0:	fa a0       	R2 = [FP + 0xc];
ffa052c2:	b9 a0       	R1 = [FP + 0x8];
ffa052c4:	ff e3 62 de 	CALL 0xffa00f88 <_substr>;
ffa052c8:	20 bb       	[FP -0x38] = R0;
ffa052ca:	20 b9       	R0 = [FP -0x38];
ffa052cc:	00 0c       	CC = R0 == 0x0;
ffa052ce:	29 18       	IF CC JUMP 0xffa05320 <_httpResp+0x37c>;
ffa052d0:	b8 a0       	R0 = [FP + 0x8];
ffa052d2:	10 bb       	[FP -0x3c] = R0;
ffa052d4:	20 b9       	R0 = [FP -0x38];
ffa052d6:	08 30       	R1 = R0;
ffa052d8:	10 b9       	R0 = [FP -0x3c];
ffa052da:	08 50       	R0 = R0 + R1;
ffa052dc:	10 bb       	[FP -0x3c] = R0;
ffa052de:	10 b9       	R0 = [FP -0x3c];
ffa052e0:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa052e2:	ff e3 f3 df 	CALL 0xffa012c8 <_atoi>;
ffa052e6:	40 43       	R0 = R0.B (Z);
ffa052e8:	50 bb       	[FP -0x2c] = R0;
ffa052ea:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa052ee:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa052f2:	10 91       	R0 = [P2];
ffa052f4:	40 4d       	R0 >>>= 0x8;
ffa052f6:	40 4f       	R0 <<= 0x8;
ffa052f8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc4 <_NetDataDestIP> */
ffa052fc:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa05300:	10 93       	[P2] = R0;
ffa05302:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc4 <_NetDataDestIP> */
ffa05306:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa0530a:	11 91       	R1 = [P2];
ffa0530c:	50 b9       	R0 = [FP -0x2c];
ffa0530e:	01 50       	R0 = R1 + R0;
ffa05310:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc4 <_NetDataDestIP> */
ffa05314:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa05318:	10 93       	[P2] = R0;
ffa0531a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0531c:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa05320:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05324:	00 e1 08 07 	R0.L = 0x708;		/* (1800)	R0=0xff900708(-7338232) */
ffa05328:	fa a0       	R2 = [FP + 0xc];
ffa0532a:	b9 a0       	R1 = [FP + 0x8];
ffa0532c:	ff e3 2e de 	CALL 0xffa00f88 <_substr>;
ffa05330:	20 bb       	[FP -0x38] = R0;
ffa05332:	20 b9       	R0 = [FP -0x38];
ffa05334:	00 0c       	CC = R0 == 0x0;
ffa05336:	2d 18       	IF CC JUMP 0xffa05390 <_httpResp+0x3ec>;
ffa05338:	b8 a0       	R0 = [FP + 0x8];
ffa0533a:	10 bb       	[FP -0x3c] = R0;
ffa0533c:	20 b9       	R0 = [FP -0x38];
ffa0533e:	08 30       	R1 = R0;
ffa05340:	10 b9       	R0 = [FP -0x3c];
ffa05342:	08 50       	R0 = R0 + R1;
ffa05344:	10 bb       	[FP -0x3c] = R0;
ffa05346:	10 b9       	R0 = [FP -0x3c];
ffa05348:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0534a:	ff e3 bf df 	CALL 0xffa012c8 <_atoi>;
ffa0534e:	40 43       	R0 = R0.B (Z);
ffa05350:	60 bb       	[FP -0x28] = R0;
ffa05352:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc4 <_NetDataDestIP> */
ffa05356:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa0535a:	11 91       	R1 = [P2];
ffa0535c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0535e:	00 e1 ff 00 	R0.L = 0xff;		/* (255)	R0=0xffff00ff(-65281) */
ffa05362:	01 54       	R0 = R1 & R0;
ffa05364:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc4 <_NetDataDestIP> */
ffa05368:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa0536c:	10 93       	[P2] = R0;
ffa0536e:	60 b9       	R0 = [FP -0x28];
ffa05370:	82 c6 40 82 	R1 = R0 << 0x8;
ffa05374:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc4 <_NetDataDestIP> */
ffa05378:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa0537c:	10 91       	R0 = [P2];
ffa0537e:	01 50       	R0 = R1 + R0;
ffa05380:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc4 <_NetDataDestIP> */
ffa05384:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa05388:	10 93       	[P2] = R0;
ffa0538a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0538c:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa05390:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05394:	00 e1 10 07 	R0.L = 0x710;		/* (1808)	R0=0xff900710(-7338224) */
ffa05398:	fa a0       	R2 = [FP + 0xc];
ffa0539a:	b9 a0       	R1 = [FP + 0x8];
ffa0539c:	ff e3 f6 dd 	CALL 0xffa00f88 <_substr>;
ffa053a0:	20 bb       	[FP -0x38] = R0;
ffa053a2:	20 b9       	R0 = [FP -0x38];
ffa053a4:	00 0c       	CC = R0 == 0x0;
ffa053a6:	2d 18       	IF CC JUMP 0xffa05400 <_httpResp+0x45c>;
ffa053a8:	b8 a0       	R0 = [FP + 0x8];
ffa053aa:	10 bb       	[FP -0x3c] = R0;
ffa053ac:	20 b9       	R0 = [FP -0x38];
ffa053ae:	08 30       	R1 = R0;
ffa053b0:	10 b9       	R0 = [FP -0x3c];
ffa053b2:	08 50       	R0 = R0 + R1;
ffa053b4:	10 bb       	[FP -0x3c] = R0;
ffa053b6:	10 b9       	R0 = [FP -0x3c];
ffa053b8:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa053ba:	ff e3 87 df 	CALL 0xffa012c8 <_atoi>;
ffa053be:	40 43       	R0 = R0.B (Z);
ffa053c0:	70 bb       	[FP -0x24] = R0;
ffa053c2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc4 <_NetDataDestIP> */
ffa053c6:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa053ca:	11 91       	R1 = [P2];
ffa053cc:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa053ce:	40 e1 00 ff 	R0.H = 0xff00;		/* (-256)	R0=0xff00ffff(-16711681) */
ffa053d2:	01 54       	R0 = R1 & R0;
ffa053d4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc4 <_NetDataDestIP> */
ffa053d8:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa053dc:	10 93       	[P2] = R0;
ffa053de:	70 b9       	R0 = [FP -0x24];
ffa053e0:	82 c6 80 82 	R1 = R0 << 0x10;
ffa053e4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc4 <_NetDataDestIP> */
ffa053e8:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa053ec:	10 91       	R0 = [P2];
ffa053ee:	01 50       	R0 = R1 + R0;
ffa053f0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc4 <_NetDataDestIP> */
ffa053f4:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa053f8:	10 93       	[P2] = R0;
ffa053fa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa053fc:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa05400:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05404:	00 e1 18 07 	R0.L = 0x718;		/* (1816)	R0=0xff900718(-7338216) */
ffa05408:	fa a0       	R2 = [FP + 0xc];
ffa0540a:	b9 a0       	R1 = [FP + 0x8];
ffa0540c:	ff e3 be dd 	CALL 0xffa00f88 <_substr>;
ffa05410:	20 bb       	[FP -0x38] = R0;
ffa05412:	20 b9       	R0 = [FP -0x38];
ffa05414:	00 0c       	CC = R0 == 0x0;
ffa05416:	2d 18       	IF CC JUMP 0xffa05470 <_httpResp+0x4cc>;
ffa05418:	b8 a0       	R0 = [FP + 0x8];
ffa0541a:	10 bb       	[FP -0x3c] = R0;
ffa0541c:	20 b9       	R0 = [FP -0x38];
ffa0541e:	08 30       	R1 = R0;
ffa05420:	10 b9       	R0 = [FP -0x3c];
ffa05422:	08 50       	R0 = R0 + R1;
ffa05424:	10 bb       	[FP -0x3c] = R0;
ffa05426:	10 b9       	R0 = [FP -0x3c];
ffa05428:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0542a:	ff e3 4f df 	CALL 0xffa012c8 <_atoi>;
ffa0542e:	40 43       	R0 = R0.B (Z);
ffa05430:	80 bb       	[FP -0x20] = R0;
ffa05432:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc4 <_NetDataDestIP> */
ffa05436:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa0543a:	11 91       	R1 = [P2];
ffa0543c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0543e:	40 e1 ff 00 	R0.H = 0xff;		/* (255)	R0=0xffffff(16777215) */
ffa05442:	01 54       	R0 = R1 & R0;
ffa05444:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc4 <_NetDataDestIP> */
ffa05448:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa0544c:	10 93       	[P2] = R0;
ffa0544e:	80 b9       	R0 = [FP -0x20];
ffa05450:	82 c6 c0 82 	R1 = R0 << 0x18;
ffa05454:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc4 <_NetDataDestIP> */
ffa05458:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa0545c:	10 91       	R0 = [P2];
ffa0545e:	01 50       	R0 = R1 + R0;
ffa05460:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc4 <_NetDataDestIP> */
ffa05464:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa05468:	10 93       	[P2] = R0;
ffa0546a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0546c:	b8 e6 c3 ff 	B[FP + -0x3d] = R0;
ffa05470:	b8 e5 c3 ff 	R0 = B[FP + -0x3d] (X);
ffa05474:	00 0c       	CC = R0 == 0x0;
ffa05476:	0e 18       	IF CC JUMP 0xffa05492 <_httpResp+0x4ee>;
ffa05478:	00 e3 a4 01 	CALL 0xffa057c0 <_htmlDefault>;
ffa0547c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900cc4 <_NetDataDestIP> */
ffa05480:	0a e1 b8 0d 	P2.L = 0xdb8;		/* (3512)	P2=0xff900db8 <_g_httpContentLen> */
ffa05484:	10 93       	[P2] = R0;
ffa05486:	00 e3 29 01 	CALL 0xffa056d8 <_httpHeader>;
ffa0548a:	09 68       	P1 = 0x1 (X);		/*		P1=0x1(  1) */
ffa0548c:	39 e7 d4 ff 	[FP + -0xb0] = P1;
ffa05490:	1f 21       	JUMP.S 0xffa056ce <_httpResp+0x72a>;
ffa05492:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa05496:	00 e1 20 07 	R0.L = 0x720;		/* (1824)	R0=0xff900720(-7338208) */
ffa0549a:	fa a0       	R2 = [FP + 0xc];
ffa0549c:	b9 a0       	R1 = [FP + 0x8];
ffa0549e:	ff e3 75 dd 	CALL 0xffa00f88 <_substr>;
ffa054a2:	00 0c       	CC = R0 == 0x0;
ffa054a4:	12 19       	IF CC JUMP 0xffa056c8 <_httpResp+0x724>;
ffa054a6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa054a8:	90 bb       	[FP -0x1c] = R0;
ffa054aa:	0e 20       	JUMP.S 0xffa054c6 <_httpResp+0x522>;
ffa054ac:	90 b9       	R0 = [FP -0x1c];
ffa054ae:	08 32       	P1 = R0;
ffa054b0:	4a 44       	P2 = P1 << 0x2;
ffa054b2:	ba 5a       	P2 = P2 + FP;
ffa054b4:	20 e1 54 ff 	R0 = -0xac (X);		/*		R0=0xffffff54(-172) */
ffa054b8:	08 32       	P1 = R0;
ffa054ba:	8a 5a       	P2 = P2 + P1;
ffa054bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa054be:	10 93       	[P2] = R0;
ffa054c0:	90 b9       	R0 = [FP -0x1c];
ffa054c2:	08 64       	R0 += 0x1;		/* (  1) */
ffa054c4:	90 bb       	[FP -0x1c] = R0;
ffa054c6:	90 b9       	R0 = [FP -0x1c];
ffa054c8:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa054ca:	08 09       	CC = R0 <= R1;
ffa054cc:	f0 1b       	IF CC JUMP 0xffa054ac <_httpResp+0x508>;
ffa054ce:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff800000(-8388608) */
ffa054d2:	00 e1 04 08 	R0.L = 0x804;		/* (2052)	R0=0xff800804(-8386556) */
ffa054d6:	b0 bb       	[FP -0x14] = R0;
ffa054d8:	ba b9       	P2 = [FP -0x14];
ffa054da:	11 91       	R1 = [P2];
ffa054dc:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa054e0:	28 4f       	R0 <<= 0x5;
ffa054e2:	41 54       	R1 = R1 & R0;
ffa054e4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa054e6:	80 4f       	R0 <<= 0x10;
ffa054e8:	01 50       	R0 = R1 + R0;
ffa054ea:	c0 bb       	[FP -0x10] = R0;
ffa054ec:	c1 b9       	R1 = [FP -0x10];
ffa054ee:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa054f0:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa054f4:	01 54       	R0 = R1 & R0;
ffa054f6:	c0 bb       	[FP -0x10] = R0;
ffa054f8:	c0 b9       	R0 = [FP -0x10];
ffa054fa:	d0 bb       	[FP -0xc] = R0;
ffa054fc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa054fe:	a0 bb       	[FP -0x18] = R0;
ffa05500:	2e 20       	JUMP.S 0xffa0555c <_httpResp+0x5b8>;
ffa05502:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05504:	90 bb       	[FP -0x1c] = R0;
ffa05506:	24 20       	JUMP.S 0xffa0554e <_httpResp+0x5aa>;
ffa05508:	92 b9       	R2 = [FP -0x1c];
ffa0550a:	90 b9       	R0 = [FP -0x1c];
ffa0550c:	08 32       	P1 = R0;
ffa0550e:	4a 44       	P2 = P1 << 0x2;
ffa05510:	ba 5a       	P2 = P2 + FP;
ffa05512:	20 e1 54 ff 	R0 = -0xac (X);		/*		R0=0xffffff54(-172) */
ffa05516:	08 32       	P1 = R0;
ffa05518:	8a 5a       	P2 = P2 + P1;
ffa0551a:	11 91       	R1 = [P2];
ffa0551c:	da b9       	P2 = [FP -0xc];
ffa0551e:	50 95       	R0 = W[P2] (X);
ffa05520:	c0 42       	R0 = R0.L (Z);
ffa05522:	41 50       	R1 = R1 + R0;
ffa05524:	0a 32       	P1 = R2;
ffa05526:	4a 44       	P2 = P1 << 0x2;
ffa05528:	ba 5a       	P2 = P2 + FP;
ffa0552a:	20 e1 54 ff 	R0 = -0xac (X);		/*		R0=0xffffff54(-172) */
ffa0552e:	08 32       	P1 = R0;
ffa05530:	8a 5a       	P2 = P2 + P1;
ffa05532:	11 93       	[P2] = R1;
ffa05534:	d0 b9       	R0 = [FP -0xc];
ffa05536:	10 64       	R0 += 0x2;		/* (  2) */
ffa05538:	d0 bb       	[FP -0xc] = R0;
ffa0553a:	d0 b9       	R0 = [FP -0xc];
ffa0553c:	08 30       	R1 = R0;
ffa0553e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa05540:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa05544:	01 54       	R0 = R1 & R0;
ffa05546:	d0 bb       	[FP -0xc] = R0;
ffa05548:	90 b9       	R0 = [FP -0x1c];
ffa0554a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0554c:	90 bb       	[FP -0x1c] = R0;
ffa0554e:	90 b9       	R0 = [FP -0x1c];
ffa05550:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa05552:	08 09       	CC = R0 <= R1;
ffa05554:	da 1b       	IF CC JUMP 0xffa05508 <_httpResp+0x564>;
ffa05556:	a0 b9       	R0 = [FP -0x18];
ffa05558:	08 64       	R0 += 0x1;		/* (  1) */
ffa0555a:	a0 bb       	[FP -0x18] = R0;
ffa0555c:	a0 b9       	R0 = [FP -0x18];
ffa0555e:	21 e1 ff 07 	R1 = 0x7ff (X);		/*		R1=0x7ff(2047) */
ffa05562:	08 09       	CC = R0 <= R1;
ffa05564:	cf 1b       	IF CC JUMP 0xffa05502 <_httpResp+0x55e>;
ffa05566:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05568:	90 bb       	[FP -0x1c] = R0;
ffa0556a:	18 20       	JUMP.S 0xffa0559a <_httpResp+0x5f6>;
ffa0556c:	92 b9       	R2 = [FP -0x1c];
ffa0556e:	90 b9       	R0 = [FP -0x1c];
ffa05570:	08 32       	P1 = R0;
ffa05572:	4a 44       	P2 = P1 << 0x2;
ffa05574:	ba 5a       	P2 = P2 + FP;
ffa05576:	20 e1 54 ff 	R0 = -0xac (X);		/*		R0=0xffffff54(-172) */
ffa0557a:	08 32       	P1 = R0;
ffa0557c:	8a 5a       	P2 = P2 + P1;
ffa0557e:	10 91       	R0 = [P2];
ffa05580:	82 c6 a8 03 	R1 = R0 >>> 0xb;
ffa05584:	0a 32       	P1 = R2;
ffa05586:	4a 44       	P2 = P1 << 0x2;
ffa05588:	ba 5a       	P2 = P2 + FP;
ffa0558a:	20 e1 54 ff 	R0 = -0xac (X);		/*		R0=0xffffff54(-172) */
ffa0558e:	08 32       	P1 = R0;
ffa05590:	8a 5a       	P2 = P2 + P1;
ffa05592:	11 93       	[P2] = R1;
ffa05594:	90 b9       	R0 = [FP -0x1c];
ffa05596:	08 64       	R0 += 0x1;		/* (  1) */
ffa05598:	90 bb       	[FP -0x1c] = R0;
ffa0559a:	90 b9       	R0 = [FP -0x1c];
ffa0559c:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa0559e:	08 09       	CC = R0 <= R1;
ffa055a0:	e6 1b       	IF CC JUMP 0xffa0556c <_httpResp+0x5c8>;
ffa055a2:	00 e3 0f 01 	CALL 0xffa057c0 <_htmlDefault>;
ffa055a6:	50 ba       	[FP -0x6c] = R0;
ffa055a8:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa055ac:	e0 bb       	[FP -0x8] = R0;
ffa055ae:	50 b8       	R0 = [FP -0x6c];
ffa055b0:	68 67       	R0 += -0x13;		/* (-19) */
ffa055b2:	50 ba       	[FP -0x6c] = R0;
ffa055b4:	50 b8       	R0 = [FP -0x6c];
ffa055b6:	08 30       	R1 = R0;
ffa055b8:	e0 b9       	R0 = [FP -0x8];
ffa055ba:	08 50       	R0 = R0 + R1;
ffa055bc:	e0 bb       	[FP -0x8] = R0;
ffa055be:	e0 b9       	R0 = [FP -0x8];
ffa055c0:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa055c4:	97 5a       	P2 = FP + P2;
ffa055c6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90066c(-7338388) */
ffa055ca:	02 e1 30 07 	R2.L = 0x730;		/* (1840)	R2=0xff900730(-7338192) */
ffa055ce:	4a 30       	R1 = P2;
ffa055d0:	ff e3 4a dc 	CALL 0xffa00e64 <_strcpy_>;
ffa055d4:	e0 bb       	[FP -0x8] = R0;
ffa055d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa055d8:	90 bb       	[FP -0x1c] = R0;
ffa055da:	44 20       	JUMP.S 0xffa05662 <_httpResp+0x6be>;
ffa055dc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa055de:	f0 bb       	[FP -0x4] = R0;
ffa055e0:	e0 b9       	R0 = [FP -0x8];
ffa055e2:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa055e6:	97 5a       	P2 = FP + P2;
ffa055e8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900730(-7338192) */
ffa055ec:	02 e1 3c 07 	R2.L = 0x73c;		/* (1852)	R2=0xff90073c(-7338180) */
ffa055f0:	4a 30       	R1 = P2;
ffa055f2:	ff e3 39 dc 	CALL 0xffa00e64 <_strcpy_>;
ffa055f6:	e0 bb       	[FP -0x8] = R0;
ffa055f8:	e0 b9       	R0 = [FP -0x8];
ffa055fa:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa055fe:	97 5a       	P2 = FP + P2;
ffa05600:	92 b9       	R2 = [FP -0x1c];
ffa05602:	4a 30       	R1 = P2;
ffa05604:	ff e3 2e de 	CALL 0xffa01260 <_strprintf_int>;
ffa05608:	e0 bb       	[FP -0x8] = R0;
ffa0560a:	e0 b9       	R0 = [FP -0x8];
ffa0560c:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa05610:	97 5a       	P2 = FP + P2;
ffa05612:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90073c(-7338180) */
ffa05616:	02 e1 50 07 	R2.L = 0x750;		/* (1872)	R2=0xff900750(-7338160) */
ffa0561a:	4a 30       	R1 = P2;
ffa0561c:	ff e3 24 dc 	CALL 0xffa00e64 <_strcpy_>;
ffa05620:	e0 bb       	[FP -0x8] = R0;
ffa05622:	f0 b9       	R0 = [FP -0x4];
ffa05624:	08 32       	P1 = R0;
ffa05626:	4a 44       	P2 = P1 << 0x2;
ffa05628:	ba 5a       	P2 = P2 + FP;
ffa0562a:	20 e1 54 ff 	R0 = -0xac (X);		/*		R0=0xffffff54(-172) */
ffa0562e:	08 32       	P1 = R0;
ffa05630:	8a 5a       	P2 = P2 + P1;
ffa05632:	12 91       	R2 = [P2];
ffa05634:	e0 b9       	R0 = [FP -0x8];
ffa05636:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa0563a:	97 5a       	P2 = FP + P2;
ffa0563c:	4a 30       	R1 = P2;
ffa0563e:	ff e3 11 de 	CALL 0xffa01260 <_strprintf_int>;
ffa05642:	e0 bb       	[FP -0x8] = R0;
ffa05644:	e0 b9       	R0 = [FP -0x8];
ffa05646:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa0564a:	97 5a       	P2 = FP + P2;
ffa0564c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900750(-7338160) */
ffa05650:	02 e1 60 07 	R2.L = 0x760;		/* (1888)	R2=0xff900760(-7338144) */
ffa05654:	4a 30       	R1 = P2;
ffa05656:	ff e3 07 dc 	CALL 0xffa00e64 <_strcpy_>;
ffa0565a:	e0 bb       	[FP -0x8] = R0;
ffa0565c:	90 b9       	R0 = [FP -0x1c];
ffa0565e:	08 64       	R0 += 0x1;		/* (  1) */
ffa05660:	90 bb       	[FP -0x1c] = R0;
ffa05662:	90 b9       	R0 = [FP -0x1c];
ffa05664:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa05666:	08 09       	CC = R0 <= R1;
ffa05668:	ba 1b       	IF CC JUMP 0xffa055dc <_httpResp+0x638>;
ffa0566a:	e0 b9       	R0 = [FP -0x8];
ffa0566c:	2a e1 94 ff 	P2 = -0x6c (X);		/*		P2=0xffffff94(-108) */
ffa05670:	97 5a       	P2 = FP + P2;
ffa05672:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900760(-7338144) */
ffa05676:	02 e1 6c 07 	R2.L = 0x76c;		/* (1900)	R2=0xff90076c(-7338132) */
ffa0567a:	4a 30       	R1 = P2;
ffa0567c:	ff e3 f4 db 	CALL 0xffa00e64 <_strcpy_>;
ffa05680:	e0 bb       	[FP -0x8] = R0;
ffa05682:	50 b8       	R0 = [FP -0x6c];
ffa05684:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90ff94 */
ffa05688:	0a e1 b8 0d 	P2.L = 0xdb8;		/* (3512)	P2=0xff900db8 <_g_httpContentLen> */
ffa0568c:	10 93       	[P2] = R0;
ffa0568e:	00 e3 25 00 	CALL 0xffa056d8 <_httpHeader>;
ffa05692:	09 68       	P1 = 0x1 (X);		/*		P1=0x1(  1) */
ffa05694:	39 e7 d4 ff 	[FP + -0xb0] = P1;
ffa05698:	1b 20       	JUMP.S 0xffa056ce <_httpResp+0x72a>;
ffa0569a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ff54(-7274668) */
ffa0569e:	00 e1 50 06 	R0.L = 0x650;		/* (1616)	R0=0xff900650(-7338416) */
ffa056a2:	fa a0       	R2 = [FP + 0xc];
ffa056a4:	b9 a0       	R1 = [FP + 0x8];
ffa056a6:	ff e3 71 dc 	CALL 0xffa00f88 <_substr>;
ffa056aa:	00 0c       	CC = R0 == 0x0;
ffa056ac:	0e 18       	IF CC JUMP 0xffa056c8 <_httpResp+0x724>;
ffa056ae:	00 e3 59 00 	CALL 0xffa05760 <_html404>;
ffa056b2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900db8 <_g_httpContentLen> */
ffa056b6:	0a e1 b8 0d 	P2.L = 0xdb8;		/* (3512)	P2=0xff900db8 <_g_httpContentLen> */
ffa056ba:	10 93       	[P2] = R0;
ffa056bc:	00 e3 0e 00 	CALL 0xffa056d8 <_httpHeader>;
ffa056c0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa056c2:	38 e6 d4 ff 	[FP + -0xb0] = R0;
ffa056c6:	04 20       	JUMP.S 0xffa056ce <_httpResp+0x72a>;
ffa056c8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa056ca:	39 e6 d4 ff 	[FP + -0xb0] = R1;
ffa056ce:	38 e4 d4 ff 	R0 = [FP + -0xb0];
ffa056d2:	01 e8 00 00 	UNLINK;
ffa056d6:	10 00       	RTS;

ffa056d8 <_httpHeader>:
ffa056d8:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa056dc:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa056e0:	f0 bb       	[FP -0x4] = R0;
ffa056e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa056e4:	e0 bb       	[FP -0x8] = R0;
ffa056e6:	f0 b9       	R0 = [FP -0x4];
ffa056e8:	4f 30       	R1 = FP;
ffa056ea:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa056ec:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90076c(-7338132) */
ffa056f0:	02 e1 88 07 	R2.L = 0x788;		/* (1928)	R2=0xff900788(-7338104) */
ffa056f4:	ff e3 b8 db 	CALL 0xffa00e64 <_strcpy_>;
ffa056f8:	f0 bb       	[FP -0x4] = R0;
ffa056fa:	f0 b9       	R0 = [FP -0x4];
ffa056fc:	4f 30       	R1 = FP;
ffa056fe:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa05700:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900788(-7338104) */
ffa05704:	02 e1 9c 07 	R2.L = 0x79c;		/* (1948)	R2=0xff90079c(-7338084) */
ffa05708:	ff e3 ae db 	CALL 0xffa00e64 <_strcpy_>;
ffa0570c:	f0 bb       	[FP -0x4] = R0;
ffa0570e:	f0 b9       	R0 = [FP -0x4];
ffa05710:	4f 30       	R1 = FP;
ffa05712:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa05714:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90079c(-7338084) */
ffa05718:	02 e1 b0 07 	R2.L = 0x7b0;		/* (1968)	R2=0xff9007b0(-7338064) */
ffa0571c:	ff e3 a4 db 	CALL 0xffa00e64 <_strcpy_>;
ffa05720:	f0 bb       	[FP -0x4] = R0;
ffa05722:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900db8 <_g_httpContentLen> */
ffa05726:	0a e1 b8 0d 	P2.L = 0xdb8;		/* (3512)	P2=0xff900db8 <_g_httpContentLen> */
ffa0572a:	10 91       	R0 = [P2];
ffa0572c:	10 30       	R2 = R0;
ffa0572e:	f0 b9       	R0 = [FP -0x4];
ffa05730:	4f 30       	R1 = FP;
ffa05732:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa05734:	ff e3 96 dd 	CALL 0xffa01260 <_strprintf_int>;
ffa05738:	f0 bb       	[FP -0x4] = R0;
ffa0573a:	f0 b9       	R0 = [FP -0x4];
ffa0573c:	4f 30       	R1 = FP;
ffa0573e:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa05740:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007b0(-7338064) */
ffa05744:	02 e1 c4 07 	R2.L = 0x7c4;		/* (1988)	R2=0xff9007c4(-7338044) */
ffa05748:	ff e3 8e db 	CALL 0xffa00e64 <_strcpy_>;
ffa0574c:	f0 bb       	[FP -0x4] = R0;
ffa0574e:	e0 b9       	R0 = [FP -0x8];
ffa05750:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900db8 <_g_httpContentLen> */
ffa05754:	0a e1 b4 0d 	P2.L = 0xdb4;		/* (3508)	P2=0xff900db4 <_g_httpHeaderLen> */
ffa05758:	10 93       	[P2] = R0;
ffa0575a:	01 e8 00 00 	UNLINK;
ffa0575e:	10 00       	RTS;

ffa05760 <_html404>:
ffa05760:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa05764:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa05768:	f0 bb       	[FP -0x4] = R0;
ffa0576a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0576c:	e0 bb       	[FP -0x8] = R0;
ffa0576e:	f0 b9       	R0 = [FP -0x4];
ffa05770:	4f 30       	R1 = FP;
ffa05772:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa05774:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007c4(-7338044) */
ffa05778:	02 e1 e4 07 	R2.L = 0x7e4;		/* (2020)	R2=0xff9007e4(-7338012) */
ffa0577c:	ff e3 74 db 	CALL 0xffa00e64 <_strcpy_>;
ffa05780:	f0 bb       	[FP -0x4] = R0;
ffa05782:	e0 b9       	R0 = [FP -0x8];
ffa05784:	01 e8 00 00 	UNLINK;
ffa05788:	10 00       	RTS;
	...

ffa0578c <_htmlGeneric>:
ffa0578c:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa05790:	b8 b0       	[FP + 0x8] = R0;
ffa05792:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa05796:	f0 bb       	[FP -0x4] = R0;
ffa05798:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0579a:	e0 bb       	[FP -0x8] = R0;
ffa0579c:	f0 b9       	R0 = [FP -0x4];
ffa0579e:	4f 30       	R1 = FP;
ffa057a0:	c1 67       	R1 += -0x8;		/* ( -8) */
ffa057a2:	ba a0       	R2 = [FP + 0x8];
ffa057a4:	ff e3 60 db 	CALL 0xffa00e64 <_strcpy_>;
ffa057a8:	e0 b9       	R0 = [FP -0x8];
ffa057aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900db4 <_g_httpHeaderLen> */
ffa057ae:	0a e1 b8 0d 	P2.L = 0xdb8;		/* (3512)	P2=0xff900db8 <_g_httpContentLen> */
ffa057b2:	10 93       	[P2] = R0;
ffa057b4:	ff e3 92 ff 	CALL 0xffa056d8 <_httpHeader>;
ffa057b8:	e0 b9       	R0 = [FP -0x8];
ffa057ba:	01 e8 00 00 	UNLINK;
ffa057be:	10 00       	RTS;

ffa057c0 <_htmlDefault>:
ffa057c0:	00 e8 0b 00 	LINK 0x2c;		/* (44) */
ffa057c4:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa057c8:	b0 bb       	[FP -0x14] = R0;
ffa057ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa057cc:	a0 bb       	[FP -0x18] = R0;
ffa057ce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa057d0:	c0 bb       	[FP -0x10] = R0;
ffa057d2:	b0 b9       	R0 = [FP -0x14];
ffa057d4:	4f 30       	R1 = FP;
ffa057d6:	41 67       	R1 += -0x18;		/* (-24) */
ffa057d8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007e4(-7338012) */
ffa057dc:	02 e1 00 08 	R2.L = 0x800;		/* (2048)	R2=0xff900800(-7337984) */
ffa057e0:	ff e3 42 db 	CALL 0xffa00e64 <_strcpy_>;
ffa057e4:	b0 bb       	[FP -0x14] = R0;
ffa057e6:	b0 b9       	R0 = [FP -0x14];
ffa057e8:	4f 30       	R1 = FP;
ffa057ea:	41 67       	R1 += -0x18;		/* (-24) */
ffa057ec:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa057f0:	00 e3 20 02 	CALL 0xffa05c30 <_htmlDiv>;
ffa057f4:	b0 bb       	[FP -0x14] = R0;
ffa057f6:	b0 b9       	R0 = [FP -0x14];
ffa057f8:	4f 30       	R1 = FP;
ffa057fa:	41 67       	R1 += -0x18;		/* (-24) */
ffa057fc:	00 e3 3e 02 	CALL 0xffa05c78 <_htmlForm>;
ffa05800:	b0 bb       	[FP -0x14] = R0;
ffa05802:	b0 b9       	R0 = [FP -0x14];
ffa05804:	4f 30       	R1 = FP;
ffa05806:	41 67       	R1 += -0x18;		/* (-24) */
ffa05808:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa0580c:	02 e1 50 08 	R2.L = 0x850;		/* (2128)	R2=0xff900850(-7337904) */
ffa05810:	ff e3 2a db 	CALL 0xffa00e64 <_strcpy_>;
ffa05814:	b0 bb       	[FP -0x14] = R0;
ffa05816:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900db8 <_g_httpContentLen> */
ffa0581a:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_streamEnabled> */
ffa0581e:	50 99       	R0 = B[P2] (X);
ffa05820:	40 43       	R0 = R0.B (Z);
ffa05822:	00 0c       	CC = R0 == 0x0;
ffa05824:	0c 18       	IF CC JUMP 0xffa0583c <_htmlDefault+0x7c>;
ffa05826:	b0 b9       	R0 = [FP -0x14];
ffa05828:	4f 30       	R1 = FP;
ffa0582a:	41 67       	R1 += -0x18;		/* (-24) */
ffa0582c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900850(-7337904) */
ffa05830:	02 e1 a0 08 	R2.L = 0x8a0;		/* (2208)	R2=0xff9008a0(-7337824) */
ffa05834:	ff e3 18 db 	CALL 0xffa00e64 <_strcpy_>;
ffa05838:	b0 bb       	[FP -0x14] = R0;
ffa0583a:	0b 20       	JUMP.S 0xffa05850 <_htmlDefault+0x90>;
ffa0583c:	b0 b9       	R0 = [FP -0x14];
ffa0583e:	4f 30       	R1 = FP;
ffa05840:	41 67       	R1 += -0x18;		/* (-24) */
ffa05842:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a0(-7337824) */
ffa05846:	02 e1 ac 08 	R2.L = 0x8ac;		/* (2220)	R2=0xff9008ac(-7337812) */
ffa0584a:	ff e3 0d db 	CALL 0xffa00e64 <_strcpy_>;
ffa0584e:	b0 bb       	[FP -0x14] = R0;
ffa05850:	b0 b9       	R0 = [FP -0x14];
ffa05852:	4f 30       	R1 = FP;
ffa05854:	41 67       	R1 += -0x18;		/* (-24) */
ffa05856:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008ac(-7337812) */
ffa0585a:	02 e1 b8 08 	R2.L = 0x8b8;		/* (2232)	R2=0xff9008b8(-7337800) */
ffa0585e:	ff e3 03 db 	CALL 0xffa00e64 <_strcpy_>;
ffa05862:	b0 bb       	[FP -0x14] = R0;
ffa05864:	b0 b9       	R0 = [FP -0x14];
ffa05866:	4f 30       	R1 = FP;
ffa05868:	41 67       	R1 += -0x18;		/* (-24) */
ffa0586a:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa0586e:	00 e3 e1 01 	CALL 0xffa05c30 <_htmlDiv>;
ffa05872:	b0 bb       	[FP -0x14] = R0;
ffa05874:	b0 b9       	R0 = [FP -0x14];
ffa05876:	4f 30       	R1 = FP;
ffa05878:	41 67       	R1 += -0x18;		/* (-24) */
ffa0587a:	00 e3 ff 01 	CALL 0xffa05c78 <_htmlForm>;
ffa0587e:	b0 bb       	[FP -0x14] = R0;
ffa05880:	b0 b9       	R0 = [FP -0x14];
ffa05882:	4f 30       	R1 = FP;
ffa05884:	41 67       	R1 += -0x18;		/* (-24) */
ffa05886:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa0588a:	02 e1 cc 08 	R2.L = 0x8cc;		/* (2252)	R2=0xff9008cc(-7337780) */
ffa0588e:	ff e3 eb da 	CALL 0xffa00e64 <_strcpy_>;
ffa05892:	b0 bb       	[FP -0x14] = R0;
ffa05894:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa05896:	c0 bb       	[FP -0x10] = R0;
ffa05898:	3b 20       	JUMP.S 0xffa0590e <_htmlDefault+0x14e>;
ffa0589a:	b0 b9       	R0 = [FP -0x14];
ffa0589c:	4f 30       	R1 = FP;
ffa0589e:	41 67       	R1 += -0x18;		/* (-24) */
ffa058a0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008cc(-7337780) */
ffa058a4:	02 e1 e8 08 	R2.L = 0x8e8;		/* (2280)	R2=0xff9008e8(-7337752) */
ffa058a8:	ff e3 de da 	CALL 0xffa00e64 <_strcpy_>;
ffa058ac:	b0 bb       	[FP -0x14] = R0;
ffa058ae:	b0 b9       	R0 = [FP -0x14];
ffa058b0:	4f 30       	R1 = FP;
ffa058b2:	41 67       	R1 += -0x18;		/* (-24) */
ffa058b4:	c2 b9       	R2 = [FP -0x10];
ffa058b6:	ff e3 d5 dc 	CALL 0xffa01260 <_strprintf_int>;
ffa058ba:	b0 bb       	[FP -0x14] = R0;
ffa058bc:	b0 b9       	R0 = [FP -0x14];
ffa058be:	4f 30       	R1 = FP;
ffa058c0:	41 67       	R1 += -0x18;		/* (-24) */
ffa058c2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008e8(-7337752) */
ffa058c6:	02 e1 04 09 	R2.L = 0x904;		/* (2308)	R2=0xff900904(-7337724) */
ffa058ca:	ff e3 cd da 	CALL 0xffa00e64 <_strcpy_>;
ffa058ce:	b0 bb       	[FP -0x14] = R0;
ffa058d0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_g_streamEnabled> */
ffa058d4:	0a e1 c4 0c 	P2.L = 0xcc4;		/* (3268)	P2=0xff900cc4 <_NetDataDestIP> */
ffa058d8:	11 91       	R1 = [P2];
ffa058da:	c0 b9       	R0 = [FP -0x10];
ffa058dc:	18 4f       	R0 <<= 0x3;
ffa058de:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa058e0:	11 30       	R2 = R1;
ffa058e2:	42 40       	R2 >>= R0;
ffa058e4:	02 30       	R0 = R2;
ffa058e6:	42 43       	R2 = R0.B (Z);
ffa058e8:	b0 b9       	R0 = [FP -0x14];
ffa058ea:	4f 30       	R1 = FP;
ffa058ec:	41 67       	R1 += -0x18;		/* (-24) */
ffa058ee:	ff e3 b9 dc 	CALL 0xffa01260 <_strprintf_int>;
ffa058f2:	b0 bb       	[FP -0x14] = R0;
ffa058f4:	b0 b9       	R0 = [FP -0x14];
ffa058f6:	4f 30       	R1 = FP;
ffa058f8:	41 67       	R1 += -0x18;		/* (-24) */
ffa058fa:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900904(-7337724) */
ffa058fe:	02 e1 18 09 	R2.L = 0x918;		/* (2328)	R2=0xff900918(-7337704) */
ffa05902:	ff e3 b1 da 	CALL 0xffa00e64 <_strcpy_>;
ffa05906:	b0 bb       	[FP -0x14] = R0;
ffa05908:	c0 b9       	R0 = [FP -0x10];
ffa0590a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0590c:	c0 bb       	[FP -0x10] = R0;
ffa0590e:	c0 b9       	R0 = [FP -0x10];
ffa05910:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa05912:	08 09       	CC = R0 <= R1;
ffa05914:	c3 1b       	IF CC JUMP 0xffa0589a <_htmlDefault+0xda>;
ffa05916:	b0 b9       	R0 = [FP -0x14];
ffa05918:	4f 30       	R1 = FP;
ffa0591a:	41 67       	R1 += -0x18;		/* (-24) */
ffa0591c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900918(-7337704) */
ffa05920:	02 e1 20 09 	R2.L = 0x920;		/* (2336)	R2=0xff900920(-7337696) */
ffa05924:	ff e3 a0 da 	CALL 0xffa00e64 <_strcpy_>;
ffa05928:	b0 bb       	[FP -0x14] = R0;
ffa0592a:	b0 b9       	R0 = [FP -0x14];
ffa0592c:	4f 30       	R1 = FP;
ffa0592e:	41 67       	R1 += -0x18;		/* (-24) */
ffa05930:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900920(-7337696) */
ffa05934:	02 e1 b8 08 	R2.L = 0x8b8;		/* (2232)	R2=0xff9008b8(-7337800) */
ffa05938:	ff e3 96 da 	CALL 0xffa00e64 <_strcpy_>;
ffa0593c:	b0 bb       	[FP -0x14] = R0;
ffa0593e:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff800001(-8388607) */
ffa05942:	00 e1 0c 08 	R0.L = 0x80c;		/* (2060)	R0=0xff80080c(-8386548) */
ffa05946:	d0 bb       	[FP -0xc] = R0;
ffa05948:	b0 b9       	R0 = [FP -0x14];
ffa0594a:	4f 30       	R1 = FP;
ffa0594c:	41 67       	R1 += -0x18;		/* (-24) */
ffa0594e:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa05952:	00 e3 6f 01 	CALL 0xffa05c30 <_htmlDiv>;
ffa05956:	b0 bb       	[FP -0x14] = R0;
ffa05958:	b0 b9       	R0 = [FP -0x14];
ffa0595a:	4f 30       	R1 = FP;
ffa0595c:	41 67       	R1 += -0x18;		/* (-24) */
ffa0595e:	00 e3 8d 01 	CALL 0xffa05c78 <_htmlForm>;
ffa05962:	b0 bb       	[FP -0x14] = R0;
ffa05964:	b0 b9       	R0 = [FP -0x14];
ffa05966:	4f 30       	R1 = FP;
ffa05968:	41 67       	R1 += -0x18;		/* (-24) */
ffa0596a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa0596e:	02 e1 44 09 	R2.L = 0x944;		/* (2372)	R2=0xff900944(-7337660) */
ffa05972:	ff e3 79 da 	CALL 0xffa00e64 <_strcpy_>;
ffa05976:	b0 bb       	[FP -0x14] = R0;
ffa05978:	da b9       	P2 = [FP -0xc];
ffa0597a:	50 99       	R0 = B[P2] (X);
ffa0597c:	40 43       	R0 = R0.B (Z);
ffa0597e:	00 49       	CC = BITTST (R0, 0x0);		/* bit  0 */
ffa05980:	00 02       	R0 = CC;
ffa05982:	40 43       	R0 = R0.B (Z);
ffa05984:	00 0c       	CC = R0 == 0x0;
ffa05986:	0c 18       	IF CC JUMP 0xffa0599e <_htmlDefault+0x1de>;
ffa05988:	b0 b9       	R0 = [FP -0x14];
ffa0598a:	4f 30       	R1 = FP;
ffa0598c:	41 67       	R1 += -0x18;		/* (-24) */
ffa0598e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900944(-7337660) */
ffa05992:	02 e1 ac 08 	R2.L = 0x8ac;		/* (2220)	R2=0xff9008ac(-7337812) */
ffa05996:	ff e3 67 da 	CALL 0xffa00e64 <_strcpy_>;
ffa0599a:	b0 bb       	[FP -0x14] = R0;
ffa0599c:	0b 20       	JUMP.S 0xffa059b2 <_htmlDefault+0x1f2>;
ffa0599e:	b0 b9       	R0 = [FP -0x14];
ffa059a0:	4f 30       	R1 = FP;
ffa059a2:	41 67       	R1 += -0x18;		/* (-24) */
ffa059a4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008ac(-7337812) */
ffa059a8:	02 e1 a0 08 	R2.L = 0x8a0;		/* (2208)	R2=0xff9008a0(-7337824) */
ffa059ac:	ff e3 5c da 	CALL 0xffa00e64 <_strcpy_>;
ffa059b0:	b0 bb       	[FP -0x14] = R0;
ffa059b2:	b0 b9       	R0 = [FP -0x14];
ffa059b4:	4f 30       	R1 = FP;
ffa059b6:	41 67       	R1 += -0x18;		/* (-24) */
ffa059b8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a0(-7337824) */
ffa059bc:	02 e1 b8 08 	R2.L = 0x8b8;		/* (2232)	R2=0xff9008b8(-7337800) */
ffa059c0:	ff e3 52 da 	CALL 0xffa00e64 <_strcpy_>;
ffa059c4:	b0 bb       	[FP -0x14] = R0;
ffa059c6:	b0 b9       	R0 = [FP -0x14];
ffa059c8:	4f 30       	R1 = FP;
ffa059ca:	41 67       	R1 += -0x18;		/* (-24) */
ffa059cc:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa059d0:	00 e3 30 01 	CALL 0xffa05c30 <_htmlDiv>;
ffa059d4:	b0 bb       	[FP -0x14] = R0;
ffa059d6:	b0 b9       	R0 = [FP -0x14];
ffa059d8:	4f 30       	R1 = FP;
ffa059da:	41 67       	R1 += -0x18;		/* (-24) */
ffa059dc:	00 e3 4e 01 	CALL 0xffa05c78 <_htmlForm>;
ffa059e0:	b0 bb       	[FP -0x14] = R0;
ffa059e2:	b0 b9       	R0 = [FP -0x14];
ffa059e4:	4f 30       	R1 = FP;
ffa059e6:	41 67       	R1 += -0x18;		/* (-24) */
ffa059e8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa059ec:	02 e1 84 09 	R2.L = 0x984;		/* (2436)	R2=0xff900984(-7337596) */
ffa059f0:	ff e3 3a da 	CALL 0xffa00e64 <_strcpy_>;
ffa059f4:	b0 bb       	[FP -0x14] = R0;
ffa059f6:	b1 b9       	R1 = [FP -0x14];
ffa059f8:	57 30       	R2 = FP;
ffa059fa:	42 67       	R2 += -0x18;		/* (-24) */
ffa059fc:	43 e1 90 ff 	R3.H = 0xff90;		/* (-112)	R3=0xff900000 <_l1_data_a>(-7340032) */
ffa05a00:	03 e1 a8 09 	R3.L = 0x9a8;		/* (2472)	R3=0xff9009a8(-7337560) */
ffa05a04:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90080c(-7337972) */
ffa05a08:	00 e1 b4 09 	R0.L = 0x9b4;		/* (2484)	R0=0xff9009b4(-7337548) */
ffa05a0c:	f0 b0       	[SP + 0xc] = R0;
ffa05a0e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05a10:	30 b1       	[SP + 0x10] = R0;
ffa05a12:	01 30       	R0 = R1;
ffa05a14:	0a 30       	R1 = R2;
ffa05a16:	13 30       	R2 = R3;
ffa05a18:	00 e3 40 01 	CALL 0xffa05c98 <_htmlCursorSelect>;
ffa05a1c:	b0 bb       	[FP -0x14] = R0;
ffa05a1e:	b1 b9       	R1 = [FP -0x14];
ffa05a20:	57 30       	R2 = FP;
ffa05a22:	42 67       	R2 += -0x18;		/* (-24) */
ffa05a24:	43 e1 90 ff 	R3.H = 0xff90;		/* (-112)	R3=0xff9009a8(-7337560) */
ffa05a28:	03 e1 c0 09 	R3.L = 0x9c0;		/* (2496)	R3=0xff9009c0(-7337536) */
ffa05a2c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa05a30:	00 e1 cc 09 	R0.L = 0x9cc;		/* (2508)	R0=0xff9009cc(-7337524) */
ffa05a34:	f0 b0       	[SP + 0xc] = R0;
ffa05a36:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05a38:	30 b1       	[SP + 0x10] = R0;
ffa05a3a:	01 30       	R0 = R1;
ffa05a3c:	0a 30       	R1 = R2;
ffa05a3e:	13 30       	R2 = R3;
ffa05a40:	00 e3 2c 01 	CALL 0xffa05c98 <_htmlCursorSelect>;
ffa05a44:	b0 bb       	[FP -0x14] = R0;
ffa05a46:	b1 b9       	R1 = [FP -0x14];
ffa05a48:	57 30       	R2 = FP;
ffa05a4a:	42 67       	R2 += -0x18;		/* (-24) */
ffa05a4c:	43 e1 90 ff 	R3.H = 0xff90;		/* (-112)	R3=0xff9009c0(-7337536) */
ffa05a50:	03 e1 d8 09 	R3.L = 0x9d8;		/* (2520)	R3=0xff9009d8(-7337512) */
ffa05a54:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa05a58:	00 e1 e4 09 	R0.L = 0x9e4;		/* (2532)	R0=0xff9009e4(-7337500) */
ffa05a5c:	f0 b0       	[SP + 0xc] = R0;
ffa05a5e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05a60:	30 b1       	[SP + 0x10] = R0;
ffa05a62:	01 30       	R0 = R1;
ffa05a64:	0a 30       	R1 = R2;
ffa05a66:	13 30       	R2 = R3;
ffa05a68:	00 e3 18 01 	CALL 0xffa05c98 <_htmlCursorSelect>;
ffa05a6c:	b0 bb       	[FP -0x14] = R0;
ffa05a6e:	b1 b9       	R1 = [FP -0x14];
ffa05a70:	57 30       	R2 = FP;
ffa05a72:	42 67       	R2 += -0x18;		/* (-24) */
ffa05a74:	43 e1 90 ff 	R3.H = 0xff90;		/* (-112)	R3=0xff9009d8(-7337512) */
ffa05a78:	03 e1 f0 09 	R3.L = 0x9f0;		/* (2544)	R3=0xff9009f0(-7337488) */
ffa05a7c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa05a80:	00 e1 f8 09 	R0.L = 0x9f8;		/* (2552)	R0=0xff9009f8(-7337480) */
ffa05a84:	f0 b0       	[SP + 0xc] = R0;
ffa05a86:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05a88:	30 b1       	[SP + 0x10] = R0;
ffa05a8a:	01 30       	R0 = R1;
ffa05a8c:	0a 30       	R1 = R2;
ffa05a8e:	13 30       	R2 = R3;
ffa05a90:	00 e3 04 01 	CALL 0xffa05c98 <_htmlCursorSelect>;
ffa05a94:	b0 bb       	[FP -0x14] = R0;
ffa05a96:	b0 b9       	R0 = [FP -0x14];
ffa05a98:	4f 30       	R1 = FP;
ffa05a9a:	41 67       	R1 += -0x18;		/* (-24) */
ffa05a9c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900984(-7337596) */
ffa05aa0:	02 e1 04 0a 	R2.L = 0xa04;		/* (2564)	R2=0xff900a04(-7337468) */
ffa05aa4:	ff e3 e0 d9 	CALL 0xffa00e64 <_strcpy_>;
ffa05aa8:	b0 bb       	[FP -0x14] = R0;
ffa05aaa:	b0 b9       	R0 = [FP -0x14];
ffa05aac:	4f 30       	R1 = FP;
ffa05aae:	41 67       	R1 += -0x18;		/* (-24) */
ffa05ab0:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa05ab4:	00 e3 be 00 	CALL 0xffa05c30 <_htmlDiv>;
ffa05ab8:	b0 bb       	[FP -0x14] = R0;
ffa05aba:	b0 b9       	R0 = [FP -0x14];
ffa05abc:	4f 30       	R1 = FP;
ffa05abe:	41 67       	R1 += -0x18;		/* (-24) */
ffa05ac0:	00 e3 dc 00 	CALL 0xffa05c78 <_htmlForm>;
ffa05ac4:	b0 bb       	[FP -0x14] = R0;
ffa05ac6:	b0 b9       	R0 = [FP -0x14];
ffa05ac8:	4f 30       	R1 = FP;
ffa05aca:	41 67       	R1 += -0x18;		/* (-24) */
ffa05acc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa05ad0:	02 e1 40 0a 	R2.L = 0xa40;		/* (2624)	R2=0xff900a40(-7337408) */
ffa05ad4:	ff e3 c8 d9 	CALL 0xffa00e64 <_strcpy_>;
ffa05ad8:	b0 bb       	[FP -0x14] = R0;
ffa05ada:	b0 b9       	R0 = [FP -0x14];
ffa05adc:	4f 30       	R1 = FP;
ffa05ade:	41 67       	R1 += -0x18;		/* (-24) */
ffa05ae0:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa05ae4:	00 e3 a6 00 	CALL 0xffa05c30 <_htmlDiv>;
ffa05ae8:	b0 bb       	[FP -0x14] = R0;
ffa05aea:	b0 b9       	R0 = [FP -0x14];
ffa05aec:	4f 30       	R1 = FP;
ffa05aee:	41 67       	R1 += -0x18;		/* (-24) */
ffa05af0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa05af4:	02 e1 98 0a 	R2.L = 0xa98;		/* (2712)	R2=0xff900a98(-7337320) */
ffa05af8:	ff e3 b6 d9 	CALL 0xffa00e64 <_strcpy_>;
ffa05afc:	b0 bb       	[FP -0x14] = R0;
ffa05afe:	b0 b9       	R0 = [FP -0x14];
ffa05b00:	4f 30       	R1 = FP;
ffa05b02:	41 67       	R1 += -0x18;		/* (-24) */
ffa05b04:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a98(-7337320) */
ffa05b08:	02 e1 c0 0a 	R2.L = 0xac0;		/* (2752)	R2=0xff900ac0(-7337280) */
ffa05b0c:	ff e3 ac d9 	CALL 0xffa00e64 <_strcpy_>;
ffa05b10:	b0 bb       	[FP -0x14] = R0;
ffa05b12:	b0 b9       	R0 = [FP -0x14];
ffa05b14:	4f 30       	R1 = FP;
ffa05b16:	41 67       	R1 += -0x18;		/* (-24) */
ffa05b18:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ac0(-7337280) */
ffa05b1c:	02 e1 b8 08 	R2.L = 0x8b8;		/* (2232)	R2=0xff9008b8(-7337800) */
ffa05b20:	ff e3 a2 d9 	CALL 0xffa00e64 <_strcpy_>;
ffa05b24:	b0 bb       	[FP -0x14] = R0;
ffa05b26:	20 e1 01 f0 	R0 = -0xfff (X);		/*		R0=0xfffff001(-4095) */
ffa05b2a:	58 4f       	R0 <<= 0xb;
ffa05b2c:	c0 bb       	[FP -0x10] = R0;
ffa05b2e:	b0 b9       	R0 = [FP -0x14];
ffa05b30:	4f 30       	R1 = FP;
ffa05b32:	41 67       	R1 += -0x18;		/* (-24) */
ffa05b34:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008b8(-7337800) */
ffa05b38:	02 e1 08 0b 	R2.L = 0xb08;		/* (2824)	R2=0xff900b08(-7337208) */
ffa05b3c:	ff e3 94 d9 	CALL 0xffa00e64 <_strcpy_>;
ffa05b40:	b0 bb       	[FP -0x14] = R0;
ffa05b42:	c1 b9       	R1 = [FP -0x10];
ffa05b44:	40 e1 62 10 	R0.H = 0x1062;		/* (4194)	R0=0x1062f001(274919425) */
ffa05b48:	00 e1 d3 4d 	R0.L = 0x4dd3;		/* (19923)	R0=0x10624dd3(274877907) */
ffa05b4c:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa05b50:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa05b54:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa05b58:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa05b5c:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa05b60:	0b c4 00 00 	R0 = (A0 += A1);
ffa05b64:	82 c6 d0 05 	R2 = R0 >>> 0x6;
ffa05b68:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa05b6c:	02 52       	R0 = R2 - R0;
ffa05b6e:	e0 bb       	[FP -0x8] = R0;
ffa05b70:	e1 b9       	R1 = [FP -0x8];
ffa05b72:	40 e1 88 88 	R0.H = 0x8888;		/* (-30584)	R0=0x88884dd3(-2004333101) */
ffa05b76:	00 e1 89 88 	R0.L = 0x8889;		/* (-30583)	R0=0x88888889(-2004318071) */
ffa05b7a:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa05b7e:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa05b82:	11 c1 08 86 	A1 += R1.H * R0.L (M), A0 = R1.H * R0.H (IS);
ffa05b86:	11 c1 01 98 	A1 += R0.H * R1.L (M, IS);
ffa05b8a:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa05b8e:	0b c4 00 00 	R0 = (A0 += A1);
ffa05b92:	08 50       	R0 = R0 + R1;
ffa05b94:	82 c6 d8 05 	R2 = R0 >>> 0x5;
ffa05b98:	82 c6 09 01 	R0 = R1 >>> 0x1f;
ffa05b9c:	02 52       	R0 = R2 - R0;
ffa05b9e:	f0 bb       	[FP -0x4] = R0;
ffa05ba0:	b0 b9       	R0 = [FP -0x14];
ffa05ba2:	4f 30       	R1 = FP;
ffa05ba4:	41 67       	R1 += -0x18;		/* (-24) */
ffa05ba6:	f2 b9       	R2 = [FP -0x4];
ffa05ba8:	ff e3 5c db 	CALL 0xffa01260 <_strprintf_int>;
ffa05bac:	b0 bb       	[FP -0x14] = R0;
ffa05bae:	b0 b9       	R0 = [FP -0x14];
ffa05bb0:	4f 30       	R1 = FP;
ffa05bb2:	41 67       	R1 += -0x18;		/* (-24) */
ffa05bb4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b08(-7337208) */
ffa05bb8:	02 e1 14 0b 	R2.L = 0xb14;		/* (2836)	R2=0xff900b14(-7337196) */
ffa05bbc:	ff e3 54 d9 	CALL 0xffa00e64 <_strcpy_>;
ffa05bc0:	b0 bb       	[FP -0x14] = R0;
ffa05bc2:	f1 b9       	R1 = [FP -0x4];
ffa05bc4:	01 30       	R0 = R1;
ffa05bc6:	20 4f       	R0 <<= 0x4;
ffa05bc8:	08 52       	R0 = R0 - R1;
ffa05bca:	10 4f       	R0 <<= 0x2;
ffa05bcc:	08 30       	R1 = R0;
ffa05bce:	e0 b9       	R0 = [FP -0x8];
ffa05bd0:	88 52       	R2 = R0 - R1;
ffa05bd2:	b0 b9       	R0 = [FP -0x14];
ffa05bd4:	4f 30       	R1 = FP;
ffa05bd6:	41 67       	R1 += -0x18;		/* (-24) */
ffa05bd8:	ff e3 44 db 	CALL 0xffa01260 <_strprintf_int>;
ffa05bdc:	b0 bb       	[FP -0x14] = R0;
ffa05bde:	b0 b9       	R0 = [FP -0x14];
ffa05be0:	4f 30       	R1 = FP;
ffa05be2:	41 67       	R1 += -0x18;		/* (-24) */
ffa05be4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b14(-7337196) */
ffa05be8:	02 e1 18 0b 	R2.L = 0xb18;		/* (2840)	R2=0xff900b18(-7337192) */
ffa05bec:	ff e3 3c d9 	CALL 0xffa00e64 <_strcpy_>;
ffa05bf0:	b0 bb       	[FP -0x14] = R0;
ffa05bf2:	e1 b9       	R1 = [FP -0x8];
ffa05bf4:	01 30       	R0 = R1;
ffa05bf6:	28 4f       	R0 <<= 0x5;
ffa05bf8:	08 52       	R0 = R0 - R1;
ffa05bfa:	10 4f       	R0 <<= 0x2;
ffa05bfc:	08 50       	R0 = R0 + R1;
ffa05bfe:	18 4f       	R0 <<= 0x3;
ffa05c00:	08 30       	R1 = R0;
ffa05c02:	c0 b9       	R0 = [FP -0x10];
ffa05c04:	88 52       	R2 = R0 - R1;
ffa05c06:	b0 b9       	R0 = [FP -0x14];
ffa05c08:	4f 30       	R1 = FP;
ffa05c0a:	41 67       	R1 += -0x18;		/* (-24) */
ffa05c0c:	ff e3 2a db 	CALL 0xffa01260 <_strprintf_int>;
ffa05c10:	b0 bb       	[FP -0x14] = R0;
ffa05c12:	b0 b9       	R0 = [FP -0x14];
ffa05c14:	4f 30       	R1 = FP;
ffa05c16:	41 67       	R1 += -0x18;		/* (-24) */
ffa05c18:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b18(-7337192) */
ffa05c1c:	02 e1 1c 0b 	R2.L = 0xb1c;		/* (2844)	R2=0xff900b1c(-7337188) */
ffa05c20:	ff e3 22 d9 	CALL 0xffa00e64 <_strcpy_>;
ffa05c24:	b0 bb       	[FP -0x14] = R0;
ffa05c26:	a0 b9       	R0 = [FP -0x18];
ffa05c28:	01 e8 00 00 	UNLINK;
ffa05c2c:	10 00       	RTS;
	...

ffa05c30 <_htmlDiv>:
ffa05c30:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa05c34:	b8 b0       	[FP + 0x8] = R0;
ffa05c36:	f9 b0       	[FP + 0xc] = R1;
ffa05c38:	02 30       	R0 = R2;
ffa05c3a:	b8 e6 10 00 	B[FP + 0x10] = R0;
ffa05c3e:	b8 e5 10 00 	R0 = B[FP + 0x10] (X);
ffa05c42:	21 e1 62 00 	R1 = 0x62 (X);		/*		R1=0x62( 98) */
ffa05c46:	08 08       	CC = R0 == R1;
ffa05c48:	0b 10       	IF !CC JUMP 0xffa05c5e <_htmlDiv+0x2e>;
ffa05c4a:	f9 a0       	R1 = [FP + 0xc];
ffa05c4c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b1c(-7337188) */
ffa05c50:	02 e1 34 0b 	R2.L = 0xb34;		/* (2868)	R2=0xff900b34(-7337164) */
ffa05c54:	b8 a0       	R0 = [FP + 0x8];
ffa05c56:	ff e3 07 d9 	CALL 0xffa00e64 <_strcpy_>;
ffa05c5a:	b8 b0       	[FP + 0x8] = R0;
ffa05c5c:	0a 20       	JUMP.S 0xffa05c70 <_htmlDiv+0x40>;
ffa05c5e:	f9 a0       	R1 = [FP + 0xc];
ffa05c60:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b34(-7337164) */
ffa05c64:	02 e1 68 0b 	R2.L = 0xb68;		/* (2920)	R2=0xff900b68(-7337112) */
ffa05c68:	b8 a0       	R0 = [FP + 0x8];
ffa05c6a:	ff e3 fd d8 	CALL 0xffa00e64 <_strcpy_>;
ffa05c6e:	b8 b0       	[FP + 0x8] = R0;
ffa05c70:	b8 a0       	R0 = [FP + 0x8];
ffa05c72:	01 e8 00 00 	UNLINK;
ffa05c76:	10 00       	RTS;

ffa05c78 <_htmlForm>:
ffa05c78:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa05c7c:	b8 b0       	[FP + 0x8] = R0;
ffa05c7e:	f9 b0       	[FP + 0xc] = R1;
ffa05c80:	f9 a0       	R1 = [FP + 0xc];
ffa05c82:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b68(-7337112) */
ffa05c86:	02 e1 9c 0b 	R2.L = 0xb9c;		/* (2972)	R2=0xff900b9c(-7337060) */
ffa05c8a:	b8 a0       	R0 = [FP + 0x8];
ffa05c8c:	ff e3 ec d8 	CALL 0xffa00e64 <_strcpy_>;
ffa05c90:	01 e8 00 00 	UNLINK;
ffa05c94:	10 00       	RTS;
	...

ffa05c98 <_htmlCursorSelect>:
ffa05c98:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa05c9c:	b8 b0       	[FP + 0x8] = R0;
ffa05c9e:	f9 b0       	[FP + 0xc] = R1;
ffa05ca0:	3a b1       	[FP + 0x10] = R2;
ffa05ca2:	f9 a0       	R1 = [FP + 0xc];
ffa05ca4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b9c(-7337060) */
ffa05ca8:	02 e1 bc 0b 	R2.L = 0xbbc;		/* (3004)	R2=0xff900bbc(-7337028) */
ffa05cac:	b8 a0       	R0 = [FP + 0x8];
ffa05cae:	ff e3 db d8 	CALL 0xffa00e64 <_strcpy_>;
ffa05cb2:	b8 b0       	[FP + 0x8] = R0;
ffa05cb4:	f9 a0       	R1 = [FP + 0xc];
ffa05cb6:	3a a1       	R2 = [FP + 0x10];
ffa05cb8:	b8 a0       	R0 = [FP + 0x8];
ffa05cba:	ff e3 d5 d8 	CALL 0xffa00e64 <_strcpy_>;
ffa05cbe:	b8 b0       	[FP + 0x8] = R0;
ffa05cc0:	f9 a0       	R1 = [FP + 0xc];
ffa05cc2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bbc(-7337028) */
ffa05cc6:	02 e1 c8 0b 	R2.L = 0xbc8;		/* (3016)	R2=0xff900bc8(-7337016) */
ffa05cca:	b8 a0       	R0 = [FP + 0x8];
ffa05ccc:	ff e3 cc d8 	CALL 0xffa00e64 <_strcpy_>;
ffa05cd0:	b8 b0       	[FP + 0x8] = R0;
ffa05cd2:	f9 a0       	R1 = [FP + 0xc];
ffa05cd4:	7a a1       	R2 = [FP + 0x14];
ffa05cd6:	b8 a0       	R0 = [FP + 0x8];
ffa05cd8:	ff e3 c6 d8 	CALL 0xffa00e64 <_strcpy_>;
ffa05cdc:	b8 b0       	[FP + 0x8] = R0;
ffa05cde:	f9 a0       	R1 = [FP + 0xc];
ffa05ce0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bc8(-7337016) */
ffa05ce4:	02 e1 e4 0b 	R2.L = 0xbe4;		/* (3044)	R2=0xff900be4(-7336988) */
ffa05ce8:	b8 a0       	R0 = [FP + 0x8];
ffa05cea:	ff e3 bd d8 	CALL 0xffa00e64 <_strcpy_>;
ffa05cee:	b8 b0       	[FP + 0x8] = R0;
ffa05cf0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa05cf2:	f0 bb       	[FP -0x4] = R0;
ffa05cf4:	0c 20       	JUMP.S 0xffa05d0c <_htmlCursorSelect+0x74>;
ffa05cf6:	f9 a0       	R1 = [FP + 0xc];
ffa05cf8:	f2 b9       	R2 = [FP -0x4];
ffa05cfa:	b8 a1       	R0 = [FP + 0x18];
ffa05cfc:	f0 b0       	[SP + 0xc] = R0;
ffa05cfe:	b8 a0       	R0 = [FP + 0x8];
ffa05d00:	00 e3 18 00 	CALL 0xffa05d30 <_htmlCursorOption>;
ffa05d04:	b8 b0       	[FP + 0x8] = R0;
ffa05d06:	f0 b9       	R0 = [FP -0x4];
ffa05d08:	08 64       	R0 += 0x1;		/* (  1) */
ffa05d0a:	f0 bb       	[FP -0x4] = R0;
ffa05d0c:	f0 b9       	R0 = [FP -0x4];
ffa05d0e:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa05d10:	08 09       	CC = R0 <= R1;
ffa05d12:	f2 1b       	IF CC JUMP 0xffa05cf6 <_htmlCursorSelect+0x5e>;
ffa05d14:	f9 a0       	R1 = [FP + 0xc];
ffa05d16:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900be4(-7336988) */
ffa05d1a:	02 e1 e8 0b 	R2.L = 0xbe8;		/* (3048)	R2=0xff900be8(-7336984) */
ffa05d1e:	b8 a0       	R0 = [FP + 0x8];
ffa05d20:	ff e3 a2 d8 	CALL 0xffa00e64 <_strcpy_>;
ffa05d24:	b8 b0       	[FP + 0x8] = R0;
ffa05d26:	b8 a0       	R0 = [FP + 0x8];
ffa05d28:	01 e8 00 00 	UNLINK;
ffa05d2c:	10 00       	RTS;
	...

ffa05d30 <_htmlCursorOption>:
ffa05d30:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa05d34:	b8 b0       	[FP + 0x8] = R0;
ffa05d36:	f9 b0       	[FP + 0xc] = R1;
ffa05d38:	3a b1       	[FP + 0x10] = R2;
ffa05d3a:	f9 a0       	R1 = [FP + 0xc];
ffa05d3c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900be8(-7336984) */
ffa05d40:	02 e1 00 0c 	R2.L = 0xc00;		/* (3072)	R2=0xff900c00(-7336960) */
ffa05d44:	b8 a0       	R0 = [FP + 0x8];
ffa05d46:	ff e3 8f d8 	CALL 0xffa00e64 <_strcpy_>;
ffa05d4a:	b8 b0       	[FP + 0x8] = R0;
ffa05d4c:	f9 a0       	R1 = [FP + 0xc];
ffa05d4e:	3a a1       	R2 = [FP + 0x10];
ffa05d50:	b8 a0       	R0 = [FP + 0x8];
ffa05d52:	ff e3 87 da 	CALL 0xffa01260 <_strprintf_int>;
ffa05d56:	b8 b0       	[FP + 0x8] = R0;
ffa05d58:	39 a1       	R1 = [FP + 0x10];
ffa05d5a:	78 a1       	R0 = [FP + 0x14];
ffa05d5c:	01 08       	CC = R1 == R0;
ffa05d5e:	0a 10       	IF !CC JUMP 0xffa05d72 <_htmlCursorOption+0x42>;
ffa05d60:	f9 a0       	R1 = [FP + 0xc];
ffa05d62:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c00(-7336960) */
ffa05d66:	02 e1 10 0c 	R2.L = 0xc10;		/* (3088)	R2=0xff900c10(-7336944) */
ffa05d6a:	b8 a0       	R0 = [FP + 0x8];
ffa05d6c:	ff e3 7c d8 	CALL 0xffa00e64 <_strcpy_>;
ffa05d70:	b8 b0       	[FP + 0x8] = R0;
ffa05d72:	f9 a0       	R1 = [FP + 0xc];
ffa05d74:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c10(-7336944) */
ffa05d78:	02 e1 28 0c 	R2.L = 0xc28;		/* (3112)	R2=0xff900c28(-7336920) */
ffa05d7c:	b8 a0       	R0 = [FP + 0x8];
ffa05d7e:	ff e3 73 d8 	CALL 0xffa00e64 <_strcpy_>;
ffa05d82:	b8 b0       	[FP + 0x8] = R0;
ffa05d84:	f9 a0       	R1 = [FP + 0xc];
ffa05d86:	3a a1       	R2 = [FP + 0x10];
ffa05d88:	b8 a0       	R0 = [FP + 0x8];
ffa05d8a:	ff e3 6b da 	CALL 0xffa01260 <_strprintf_int>;
ffa05d8e:	b8 b0       	[FP + 0x8] = R0;
ffa05d90:	f9 a0       	R1 = [FP + 0xc];
ffa05d92:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900c28(-7336920) */
ffa05d96:	02 e1 2c 0c 	R2.L = 0xc2c;		/* (3116)	R2=0xff900c2c(-7336916) */
ffa05d9a:	b8 a0       	R0 = [FP + 0x8];
ffa05d9c:	ff e3 64 d8 	CALL 0xffa00e64 <_strcpy_>;
ffa05da0:	b8 b0       	[FP + 0x8] = R0;
ffa05da2:	b8 a0       	R0 = [FP + 0x8];
ffa05da4:	01 e8 00 00 	UNLINK;
ffa05da8:	10 00       	RTS;
	...

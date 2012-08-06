
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
ffa0009e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa000a0:	30 3c       	CYCLES = R0;
ffa000a2:	38 3c       	CYCLES2 = R0;
ffa000a4:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa000a6:	10 3e       	SYSCFG = R0;
ffa000a8:	24 00       	SSYNC;
ffa000aa:	08 e1 04 21 	P0.L = 0x2104;		/* (8452)	P0=0xffc02104(-4185852) */
ffa000ae:	48 e1 e0 ff 	P0.H = 0xffe0;		/* (-32)	P0=0xffe02104(-2088700) */
ffa000b2:	00 e1 8a 01 	R0.L = 0x18a;		/* (394)	R0=0x18a(394) */
ffa000b6:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa0018a <_isr_mstimer>(-6291062) */
ffa000ba:	00 e6 cb ff 	[P0 + -0xd4] = R0;
ffa000be:	00 91       	R0 = [P0];
ffa000c0:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa000c2:	00 93       	[P0] = R0;
ffa000c4:	08 e1 50 01 	P0.L = 0x150;		/* (336)	P0=0xffe00150(-2096816) */
ffa000c8:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00150(-4193968) */
ffa000cc:	40 e1 55 55 	R0.H = 0x5555;		/* (21845)	R0=0x5555018a(1431634314) */
ffa000d0:	00 e1 55 55 	R0.L = 0x5555;		/* (21845)	R0=0x55555555(1431655765) */
ffa000d4:	00 93       	[P0] = R0;
ffa000d6:	08 e1 4c 01 	P0.L = 0x14c;		/* (332)	P0=0xffc0014c(-4193972) */
ffa000da:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0014c(-4193972) */
ffa000de:	00 91       	R0 = [P0];
ffa000e0:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa000e2:	00 93       	[P0] = R0;
ffa000e4:	80 e1 9f 90 	R0 = 0x909f (Z);		/*		R0=0x909f(37023) */
ffa000e8:	40 00       	STI R0;
ffa000ea:	9f 00       	RAISE 0xf;
ffa000ec:	08 e1 02 01 	P0.L = 0x102;		/* (258)	P0=0xffc00102(-4194046) */
ffa000f0:	48 e1 a0 ff 	P0.H = 0xffa0;		/* (-96)	P0=0xffa00102 <wait> */
ffa000f4:	09 e1 3c 20 	P1.L = 0x203c;		/* (8252)	P1=0x203c */
ffa000f8:	49 e1 e0 ff 	P1.H = 0xffe0;		/* (-32)	P1=0xffe0203c(-2088900) */
ffa000fc:	48 93       	[P1] = P0;
ffa000fe:	58 3e       	RETI = P0;
ffa00100:	11 00       	RTI;

ffa00102 <wait>:
ffa00102:	7b 01       	[--SP] = RETI;
ffa00104:	00 00       	NOP;
ffa00106:	9c 00       	RAISE 0xc;
ffa00108:	08 e1 40 07 	P0.L = 0x740;		/* (1856)	P0=0xffa00740 */
ffa0010c:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00740(-4192448) */
ffa00110:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00112:	00 97       	W[P0] = R0;
ffa00114:	08 e1 30 07 	P0.L = 0x730;		/* (1840)	P0=0xffc00730(-4192464) */
ffa00118:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00730(-4192464) */
ffa0011c:	00 91       	R0 = [P0];
ffa0011e:	21 e1 ff 00 	R1 = 0xff (X);		/*		R1=0xff(255) */
ffa00122:	08 56       	R0 = R0 | R1;
ffa00124:	00 97       	W[P0] = R0;
ffa00126:	08 e1 00 32 	P0.L = 0x3200;		/* (12800)	P0=0xffc03200(-4181504) */
ffa0012a:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc03200(-4181504) */
ffa0012e:	00 91       	R0 = [P0];
ffa00130:	81 e1 00 ff 	R1 = 0xff00 (Z);		/*		R1=0xff00(65280) */
ffa00134:	08 54       	R0 = R0 & R1;
ffa00136:	00 97       	W[P0] = R0;
ffa00138:	08 e1 40 15 	P0.L = 0x1540;		/* (5440)	P0=0xffc01540(-4188864) */
ffa0013c:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc01540(-4188864) */
ffa00140:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00142:	00 97       	W[P0] = R0;
ffa00144:	08 e1 30 15 	P0.L = 0x1530;		/* (5424)	P0=0xffc01530(-4188880) */
ffa00148:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc01530(-4188880) */
ffa0014c:	00 91       	R0 = [P0];
ffa0014e:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa00150:	08 56       	R0 = R0 | R1;
ffa00152:	00 97       	W[P0] = R0;
ffa00154:	08 e1 04 32 	P0.L = 0x3204;		/* (12804)	P0=0xffc03204(-4181500) */
ffa00158:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc03204(-4181500) */
ffa0015c:	00 91       	R0 = [P0];
ffa0015e:	81 e1 fe ff 	R1 = 0xfffe (Z);		/*		R1=0xfffe(65534) */
ffa00162:	08 54       	R0 = R0 & R1;
ffa00164:	00 97       	W[P0] = R0;

ffa00166 <_test_loop>:
ffa00166:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc03204(-4181500) */
ffa0016a:	08 e1 0c 07 	P0.L = 0x70c;		/* (1804)	P0=0xffc0070c(-4192500) */
ffa0016e:	80 e1 ff 00 	R0 = 0xff (Z);		/*		R0=0xff(255) */
ffa00172:	00 8a       	W[P0] = R0.L;
ffa00174:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0070c(-4192500) */
ffa00178:	08 e1 0c 15 	P0.L = 0x150c;		/* (5388)	P0=0xffc0150c(-4188916) */
ffa0017c:	80 e1 01 00 	R0 = 0x1 (Z);		/*		R0=0x1(  1) */
ffa00180:	00 8a       	W[P0] = R0.L;
ffa00182:	24 00       	SSYNC;
ffa00184:	6c 26       	JUMP.S 0xffa00e5c <_main>;
ffa00186:	00 00       	NOP;
ffa00188:	ef 2f       	JUMP.S 0xffa00166 <_test_loop>;

ffa0018a <_isr_mstimer>:
ffa0018a:	66 01       	[--SP] = ASTAT;
ffa0018c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0018e:	0d e1 88 06 	P5.L = 0x688;		/* (1672)	P5=0x688 */
ffa00192:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00688(-4192632) */
ffa00196:	07 e1 00 00 	R7.L = 0x0;		/* (  0)	R7=0x0(  0) */
ffa0019a:	47 e1 02 00 	R7.H = 0x2;		/* (  2)	R7=0x20000(131072) */
ffa0019e:	2f 93       	[P5] = R7;
ffa001a0:	24 00       	SSYNC;
ffa001a2:	bd 05       	(R7:7, P5:5) = [SP++];
ffa001a4:	26 01       	ASTAT = [SP++];
ffa001a6:	11 00       	RTI;

ffa001a8 <_ustimer>:
ffa001a8:	86 31       	R0 = CYCLES;
ffa001aa:	8f 31       	R1 = CYCLES2;
ffa001ac:	82 c6 81 82 	R1 = R1 << 0x10;
ffa001b0:	82 c6 80 81 	R0 = R0 >> 0x10;
ffa001b4:	08 50       	R0 = R0 + R1;
ffa001b6:	10 00       	RTS;

ffa001b8 <_spi_delay>:
ffa001b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00000(-4194304) */
ffa001bc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa001c0:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa001c4:	00 00       	NOP;
ffa001c6:	50 95       	R0 = W[P2] (X);
ffa001c8:	c0 42       	R0 = R0.L (Z);
ffa001ca:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa001cc:	fc 17       	IF !CC JUMP 0xffa001c4 <_spi_delay+0xc> (BP);
ffa001ce:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa001d0:	0a 10       	IF !CC JUMP 0xffa001e4 <_spi_delay+0x2c>;
ffa001d2:	00 00       	NOP;
ffa001d4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa001d8:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa001dc:	00 00       	NOP;
ffa001de:	50 95       	R0 = W[P2] (X);
ffa001e0:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa001e2:	fd 1f       	IF CC JUMP 0xffa001dc <_spi_delay+0x24> (BP);
ffa001e4:	01 e8 00 00 	UNLINK;
ffa001e8:	10 00       	RTS;
	...

ffa001ec <_spi_write_register>:
ffa001ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa001f0:	ed 05       	[--SP] = (R7:5, P5:5);
ffa001f2:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa001f6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa001fa:	82 ce 00 ca 	R5 = ROT R0 BY 0x0 || W[P2] = R0 || NOP;
ffa001fe:	10 97 00 00 
ffa00202:	32 30       	R6 = R2;
ffa00204:	24 00       	SSYNC;
ffa00206:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00688(-4192632) */
ffa0020a:	29 4a       	BITSET (R1, 0x5);		/* bit  5 */
ffa0020c:	49 43       	R1 = R1.B (Z);
ffa0020e:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa00212:	29 97       	W[P5] = R1;
ffa00214:	ff e3 d2 ff 	CALL 0xffa001b8 <_spi_delay>;
ffa00218:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0021c:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa00220:	76 43       	R6 = R6.B (Z);
ffa00222:	57 95       	R7 = W[P2] (X);
ffa00224:	2e 97       	W[P5] = R6;
ffa00226:	ff e3 c9 ff 	CALL 0xffa001b8 <_spi_delay>;
ffa0022a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0022e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00232:	15 97       	W[P2] = R5;
ffa00234:	24 00       	SSYNC;
ffa00236:	7f 43       	R7 = R7.B (Z);
ffa00238:	01 e8 00 00 	UNLINK;
ffa0023c:	07 30       	R0 = R7;
ffa0023e:	ad 05       	(R7:5, P5:5) = [SP++];
ffa00240:	10 00       	RTS;
	...

ffa00244 <_spi_read_register>:
ffa00244:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00248:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0024a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0024e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00252:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R0 || NOP;
ffa00256:	10 97 00 00 
ffa0025a:	24 00       	SSYNC;
ffa0025c:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00000(-4194304) */
ffa00260:	49 43       	R1 = R1.B (Z);
ffa00262:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa00266:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa0026a:	21 97       	W[P4] = R1;
ffa0026c:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa00270:	ff e3 a4 ff 	CALL 0xffa001b8 <_spi_delay>;
ffa00274:	68 95       	R0 = W[P5] (X);
ffa00276:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00278:	20 97       	W[P4] = R0;
ffa0027a:	ff e3 9f ff 	CALL 0xffa001b8 <_spi_delay>;
ffa0027e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00282:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00286:	68 95       	R0 = W[P5] (X);
ffa00288:	17 97       	W[P2] = R7;
ffa0028a:	24 00       	SSYNC;
ffa0028c:	01 e8 00 00 	UNLINK;
ffa00290:	40 43       	R0 = R0.B (Z);
ffa00292:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00294:	10 00       	RTS;
	...

ffa00298 <_spi_read_register_status>:
ffa00298:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0029c:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0029e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa002a2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa002a6:	82 ce 00 cc 	R6 = ROT R0 BY 0x0 || W[P2] = R0 || NOP;
ffa002aa:	10 97 00 00 
ffa002ae:	1a 32       	P3 = R2;
ffa002b0:	24 00       	SSYNC;
ffa002b2:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc0050c(-4193012) */
ffa002b6:	49 43       	R1 = R1.B (Z);
ffa002b8:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa002bc:	21 97       	W[P4] = R1;
ffa002be:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa002c2:	ff e3 7b ff 	CALL 0xffa001b8 <_spi_delay>;
ffa002c6:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa002ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa002cc:	6f 95       	R7 = W[P5] (X);
ffa002ce:	20 97       	W[P4] = R0;
ffa002d0:	ff e3 74 ff 	CALL 0xffa001b8 <_spi_delay>;
ffa002d4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa002d8:	68 95       	R0 = W[P5] (X);
ffa002da:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa002de:	18 9b       	B[P3] = R0;
ffa002e0:	16 97       	W[P2] = R6;
ffa002e2:	24 00       	SSYNC;
ffa002e4:	7f 43       	R7 = R7.B (Z);
ffa002e6:	01 e8 00 00 	UNLINK;
ffa002ea:	07 30       	R0 = R7;
ffa002ec:	b3 05       	(R7:6, P5:3) = [SP++];
ffa002ee:	10 00       	RTS;

ffa002f0 <_spi_write_byte>:
ffa002f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa002f4:	78 05       	[--SP] = (R7:7);
ffa002f6:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa002fa:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa002fe:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R0 || NOP;
ffa00302:	10 97 00 00 
ffa00306:	24 00       	SSYNC;
ffa00308:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0030c:	49 43       	R1 = R1.B (Z);
ffa0030e:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa00312:	11 97       	W[P2] = R1;
ffa00314:	ff e3 52 ff 	CALL 0xffa001b8 <_spi_delay>;
ffa00318:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0031c:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa00320:	50 95       	R0 = W[P2] (X);
ffa00322:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa00326:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0032a:	17 97       	W[P2] = R7;
ffa0032c:	24 00       	SSYNC;
ffa0032e:	01 e8 00 00 	UNLINK;
ffa00332:	40 43       	R0 = R0.B (Z);
ffa00334:	38 05       	(R7:7) = [SP++];
ffa00336:	10 00       	RTS;

ffa00338 <_radio_set_rx>:
ffa00338:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0033c:	70 05       	[--SP] = (R7:6);
ffa0033e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00342:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00346:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || W[P2] = R1 || NOP;
ffa0034a:	11 97 00 00 
ffa0034e:	24 00       	SSYNC;
ffa00350:	c7 42       	R7 = R0.L (Z);
ffa00352:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00354:	07 30       	R0 = R7;
ffa00356:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00358:	ff e3 4a ff 	CALL 0xffa001ec <_spi_write_register>;
ffa0035c:	07 30       	R0 = R7;
ffa0035e:	21 e1 e2 00 	R1 = 0xe2 (X);		/*		R1=0xe2(226) */
ffa00362:	ff e3 c7 ff 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00366:	07 30       	R0 = R7;
ffa00368:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0036a:	fa 60       	R2 = 0x1f (X);		/*		R2=0x1f( 31) */
ffa0036c:	ff e3 40 ff 	CALL 0xffa001ec <_spi_write_register>;
ffa00370:	07 30       	R0 = R7;
ffa00372:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00374:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00378:	ff e3 3a ff 	CALL 0xffa001ec <_spi_write_register>;
ffa0037c:	24 00       	SSYNC;
ffa0037e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00382:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00386:	16 97       	W[P2] = R6;
ffa00388:	24 00       	SSYNC;
ffa0038a:	01 e8 00 00 	UNLINK;
ffa0038e:	30 05       	(R7:6) = [SP++];
ffa00390:	10 00       	RTS;
	...

ffa00394 <_radio_set_tx>:
ffa00394:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00398:	78 05       	[--SP] = (R7:7);
ffa0039a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0039e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa003a2:	11 97       	W[P2] = R1;
ffa003a4:	24 00       	SSYNC;
ffa003a6:	c7 42       	R7 = R0.L (Z);
ffa003a8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa003aa:	07 30       	R0 = R7;
ffa003ac:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa003ae:	ff e3 1f ff 	CALL 0xffa001ec <_spi_write_register>;
ffa003b2:	07 30       	R0 = R7;
ffa003b4:	21 e1 e1 00 	R1 = 0xe1 (X);		/*		R1=0xe1(225) */
ffa003b8:	ff e3 9c ff 	CALL 0xffa002f0 <_spi_write_byte>;
ffa003bc:	07 30       	R0 = R7;
ffa003be:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa003c0:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa003c4:	ff e3 14 ff 	CALL 0xffa001ec <_spi_write_register>;
ffa003c8:	01 e8 00 00 	UNLINK;
ffa003cc:	07 30       	R0 = R7;
ffa003ce:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa003d0:	f2 60       	R2 = 0x1e (X);		/*		R2=0x1e( 30) */
ffa003d2:	38 05       	(R7:7) = [SP++];
ffa003d4:	ff e2 0c ff 	JUMP.L 0xffa001ec <_spi_write_register>;

ffa003d8 <_spi_write_register_ver>:
ffa003d8:	68 05       	[--SP] = (R7:5);
ffa003da:	c7 42       	R7 = R0.L (Z);
ffa003dc:	4e 43       	R6 = R1.B (Z);
ffa003de:	55 43       	R5 = R2.B (Z);
ffa003e0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa003e4:	07 30       	R0 = R7;
ffa003e6:	0e 30       	R1 = R6;
ffa003e8:	15 30       	R2 = R5;
ffa003ea:	ff e3 01 ff 	CALL 0xffa001ec <_spi_write_register>;
ffa003ee:	07 30       	R0 = R7;
ffa003f0:	0e 30       	R1 = R6;
ffa003f2:	ff e3 29 ff 	CALL 0xffa00244 <_spi_read_register>;
ffa003f6:	47 43       	R7 = R0.B (Z);
ffa003f8:	3d 08       	CC = R5 == R7;
ffa003fa:	29 18       	IF CC JUMP 0xffa0044c <_spi_write_register_ver+0x74>;
ffa003fc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00400:	0e 30       	R1 = R6;
ffa00402:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00406:	00 e3 41 09 	CALL 0xffa01688 <_printf_int>;
ffa0040a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0040e:	00 e1 6c 05 	R0.L = 0x56c;		/* (1388)	R0=0xff90056c(-7338644) */
ffa00412:	00 e3 a9 07 	CALL 0xffa01364 <_uart_str>;
ffa00416:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90056c(-7338644) */
ffa0041a:	0d 30       	R1 = R5;
ffa0041c:	00 e1 14 00 	R0.L = 0x14;		/* ( 20)	R0=0xff900014(-7340012) */
ffa00420:	00 e3 82 08 	CALL 0xffa01524 <_printf_hex_byte>;
ffa00424:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900014(-7340012) */
ffa00428:	00 e1 6c 05 	R0.L = 0x56c;		/* (1388)	R0=0xff90056c(-7338644) */
ffa0042c:	00 e3 9c 07 	CALL 0xffa01364 <_uart_str>;
ffa00430:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90056c(-7338644) */
ffa00434:	00 e1 20 00 	R0.L = 0x20;		/* ( 32)	R0=0xff900020(-7340000) */
ffa00438:	0f 30       	R1 = R7;
ffa0043a:	00 e3 75 08 	CALL 0xffa01524 <_printf_hex_byte>;
ffa0043e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa00442:	00 e1 9c 07 	R0.L = 0x79c;		/* (1948)	R0=0xff90079c(-7338084) */
ffa00446:	2f 30       	R5 = R7;
ffa00448:	00 e3 8e 07 	CALL 0xffa01364 <_uart_str>;
ffa0044c:	01 e8 00 00 	UNLINK;
ffa00450:	05 30       	R0 = R5;
ffa00452:	28 05       	(R7:5) = [SP++];
ffa00454:	10 00       	RTS;
	...

ffa00458 <_radio_init>:
ffa00458:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0203c(-4186052) */
ffa0045c:	70 05       	[--SP] = (R7:6);
ffa0045e:	09 e1 00 05 	P1.L = 0x500;		/* (1280)	P1=0xffc00500(-4193024) */
ffa00462:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00464:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00468:	82 ce 02 cc 	R6 = ROT R2 BY 0x0 || W[P1] = R3 || NOP;
ffa0046c:	0b 97 00 00 
ffa00470:	38 30       	R7 = R0;
ffa00472:	24 00       	SSYNC;
ffa00474:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00478:	2a 60       	R2 = 0x5 (X);		/*		R2=0x5(  5) */
ffa0047a:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa0047e:	12 97       	W[P2] = R2;
ffa00480:	22 e1 2d 50 	R2 = 0x502d (X);		/*		R2=0x502d(20525) */
ffa00484:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00486:	0a 97       	W[P1] = R2;
ffa00488:	13 97       	W[P2] = R3;
ffa0048a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa0048e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00492:	10 97       	W[P2] = R0;
ffa00494:	c2 6d       	P2 += 0x38;		/* ( 56) */
ffa00496:	52 95       	R2 = W[P2] (X);
ffa00498:	91 56       	R2 = R1 | R2;
ffa0049a:	12 97       	W[P2] = R2;
ffa0049c:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0049e:	52 95       	R2 = W[P2] (X);
ffa004a0:	c9 43       	R1 =~ R1;
ffa004a2:	51 54       	R1 = R1 & R2;
ffa004a4:	11 97       	W[P2] = R1;
ffa004a6:	51 95       	R1 = W[P2] (X);
ffa004a8:	51 4a       	BITSET (R1, 0xa);		/* bit 10 */
ffa004aa:	08 56       	R0 = R0 | R1;
ffa004ac:	10 97       	W[P2] = R0;
ffa004ae:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa004b2:	70 43       	R0 = R6.B (Z);
ffa004b4:	08 0a       	CC = R0 <= R1 (IU);
ffa004b6:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa004ba:	30 06       	IF !CC R6 = R0;
ffa004bc:	76 43       	R6 = R6.B (Z);
ffa004be:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa004c2:	0e 30       	R1 = R6;
ffa004c4:	00 e1 2c 00 	R0.L = 0x2c;		/* ( 44)	R0=0xff90002c(-7339988) */
ffa004c8:	00 e3 e0 08 	CALL 0xffa01688 <_printf_int>;
ffa004cc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002c(-7339988) */
ffa004d0:	ff 42       	R7 = R7.L (Z);
ffa004d2:	00 e1 9c 07 	R0.L = 0x79c;		/* (1948)	R0=0xff90079c(-7338084) */
ffa004d6:	00 e3 47 07 	CALL 0xffa01364 <_uart_str>;
ffa004da:	07 30       	R0 = R7;
ffa004dc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa004de:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa004e0:	ff e3 86 fe 	CALL 0xffa001ec <_spi_write_register>;
ffa004e4:	07 30       	R0 = R7;
ffa004e6:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa004e8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa004ea:	ff e3 77 ff 	CALL 0xffa003d8 <_spi_write_register_ver>;
ffa004ee:	07 30       	R0 = R7;
ffa004f0:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
ffa004f2:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa004f4:	ff e3 72 ff 	CALL 0xffa003d8 <_spi_write_register_ver>;
ffa004f8:	07 30       	R0 = R7;
ffa004fa:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa004fc:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa004fe:	ff e3 6d ff 	CALL 0xffa003d8 <_spi_write_register_ver>;
ffa00502:	07 30       	R0 = R7;
ffa00504:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa00506:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00508:	ff e3 68 ff 	CALL 0xffa003d8 <_spi_write_register_ver>;
ffa0050c:	16 30       	R2 = R6;
ffa0050e:	07 30       	R0 = R7;
ffa00510:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa00512:	ff e3 63 ff 	CALL 0xffa003d8 <_spi_write_register_ver>;
ffa00516:	07 30       	R0 = R7;
ffa00518:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa0051a:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa0051c:	ff e3 5e ff 	CALL 0xffa003d8 <_spi_write_register_ver>;
ffa00520:	07 30       	R0 = R7;
ffa00522:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00524:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00528:	ff e3 58 ff 	CALL 0xffa003d8 <_spi_write_register_ver>;
ffa0052c:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa0052e:	07 30       	R0 = R7;
ffa00530:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa00532:	ff e3 53 ff 	CALL 0xffa003d8 <_spi_write_register_ver>;
ffa00536:	07 30       	R0 = R7;
ffa00538:	21 e1 e2 00 	R1 = 0xe2 (X);		/*		R1=0xe2(226) */
ffa0053c:	ff e3 da fe 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00540:	07 30       	R0 = R7;
ffa00542:	21 e1 e1 00 	R1 = 0xe1 (X);		/*		R1=0xe1(225) */
ffa00546:	ff e3 d5 fe 	CALL 0xffa002f0 <_spi_write_byte>;
ffa0054a:	01 e8 00 00 	UNLINK;
ffa0054e:	40 43       	R0 = R0.B (Z);
ffa00550:	30 05       	(R7:6) = [SP++];
ffa00552:	10 00       	RTS;

ffa00554 <_audio_out>:
ffa00554:	66 01       	[--SP] = ASTAT;
ffa00556:	71 01       	[--SP] = LT0;
ffa00558:	74 01       	[--SP] = LT1;
ffa0055a:	70 01       	[--SP] = LC0;
ffa0055c:	73 01       	[--SP] = LC1;
ffa0055e:	72 01       	[--SP] = LB0;
ffa00560:	75 01       	[--SP] = LB1;
ffa00562:	c4 05       	[--SP] = (R7:0, P5:4);
ffa00564:	48 01       	[--SP] = P0;
ffa00566:	49 01       	[--SP] = P1;
ffa00568:	4a 01       	[--SP] = P2;
ffa0056a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0056e:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00570:	0a e1 30 09 	P2.L = 0x930;		/* (2352)	P2=0xffc00930(-4191952) */
ffa00574:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90050c */
ffa00578:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0057c:	0c e1 34 0c 	P4.L = 0xc34;		/* (3124)	P4=0xff900c34 <_g_sampCh> */
ffa00580:	10 97       	W[P2] = R0;
ffa00582:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900518 */
ffa00586:	67 99       	R7 = B[P4] (X);
ffa00588:	0d e1 3c 0c 	P5.L = 0xc3c;		/* (3132)	P5=0xff900c3c <_g_sampR> */
ffa0058c:	7e 43       	R6 = R7.B (Z);
ffa0058e:	2d 91       	R5 = [P5];
ffa00590:	23 e1 ff 01 	R3 = 0x1ff (X);		/*		R3=0x1ff(511) */
ffa00594:	6e 50       	R1 = R6 + R5;
ffa00596:	19 54       	R0 = R1 & R3;
ffa00598:	00 32       	P0 = R0;
ffa0059a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900500 */
ffa0059e:	09 e1 68 0c 	P1.L = 0xc68;		/* (3176)	P1=0xff900c68 <_g_samples> */
ffa005a2:	11 64       	R1 += 0x2;		/* (  2) */
ffa005a4:	59 54       	R1 = R1 & R3;
ffa005a6:	88 5a       	P2 = P0 + P1;
ffa005a8:	52 99       	R2 = B[P2] (X);
ffa005aa:	11 32       	P2 = R1;
ffa005ac:	07 30       	R0 = R7;
ffa005ae:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa005b0:	00 32       	P0 = R0;
ffa005b2:	27 e1 80 ff 	R7 = -0x80 (X);		/*		R7=0xffffff80(-128) */
ffa005b6:	4a 5a       	P1 = P2 + P1;
ffa005b8:	49 99       	R1 = B[P1] (X);
ffa005ba:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c68 <_g_samples> */
ffa005be:	09 e1 44 0c 	P1.L = 0xc44;		/* (3140)	P1=0xff900c44 <_g_sampOff> */
ffa005c2:	0c 91       	R4 = [P1];
ffa005c4:	82 c6 64 87 	R3 = R4 >> 0x14;
ffa005c8:	ba 58       	R2 = R2 ^ R7;
ffa005ca:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa005ce:	79 58       	R1 = R1 ^ R7;
ffa005d0:	18 52       	R0 = R0 - R3;
ffa005d2:	49 43       	R1 = R1.B (Z);
ffa005d4:	52 43       	R2 = R2.B (Z);
ffa005d6:	c2 40       	R2 *= R0;
ffa005d8:	cb 40       	R3 *= R1;
ffa005da:	48 30       	R1 = P0;
ffa005dc:	48 43       	R0 = R1.B (Z);
ffa005de:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa005e0:	9a 50       	R2 = R2 + R3;
ffa005e2:	80 4f       	R0 <<= 0x10;
ffa005e4:	99 4f       	R1 <<= 0x13;
ffa005e6:	d2 42       	R2 = R2.L (Z);
ffa005e8:	08 56       	R0 = R0 | R1;
ffa005ea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00930(-4191952) */
ffa005ee:	82 56       	R2 = R2 | R0;
ffa005f0:	0a e1 10 09 	P2.L = 0x910;		/* (2320)	P2=0xffc00910(-4191984) */
ffa005f4:	0e 0c       	CC = R6 == 0x1;
ffa005f6:	12 93       	[P2] = R2;
ffa005f8:	11 18       	IF CC JUMP 0xffa0061a <_audio_out+0xc6>;
ffa005fa:	01 e8 00 00 	UNLINK;
ffa005fe:	48 30       	R1 = P0;
ffa00600:	21 9b       	B[P4] = R1;
ffa00602:	72 90       	P2 = [SP++];
ffa00604:	71 90       	P1 = [SP++];
ffa00606:	70 90       	P0 = [SP++];
ffa00608:	84 05       	(R7:0, P5:4) = [SP++];
ffa0060a:	35 01       	LB1 = [SP++];
ffa0060c:	32 01       	LB0 = [SP++];
ffa0060e:	33 01       	LC1 = [SP++];
ffa00610:	30 01       	LC0 = [SP++];
ffa00612:	34 01       	LT1 = [SP++];
ffa00614:	31 01       	LT0 = [SP++];
ffa00616:	26 01       	ASTAT = [SP++];
ffa00618:	11 00       	RTI;
ffa0061a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900910 */
ffa0061e:	0a e1 20 0c 	P2.L = 0xc20;		/* (3104)	P2=0xff900c20 <_g_sampW> */
ffa00622:	10 91       	R0 = [P2];
ffa00624:	05 0a       	CC = R5 <= R0 (IU);
ffa00626:	38 1c       	IF CC JUMP 0xffa00696 <_audio_out+0x142> (BP);
ffa00628:	28 93       	[P5] = R0;
ffa0062a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c20 <_g_sampW> */
ffa0062e:	0a e1 14 0c 	P2.L = 0xc14;		/* (3092)	P2=0xff900c14 <_g_sampMode> */
ffa00632:	10 99       	R0 = B[P2] (Z);
ffa00634:	08 0c       	CC = R0 == 0x1;
ffa00636:	57 18       	IF CC JUMP 0xffa006e4 <_audio_out+0x190>;
ffa00638:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa0063a:	08 08       	CC = R0 == R1;
ffa0063c:	51 18       	IF CC JUMP 0xffa006de <_audio_out+0x18a>;
ffa0063e:	10 99       	R0 = B[P2] (Z);
ffa00640:	10 0c       	CC = R0 == 0x2;
ffa00642:	53 18       	IF CC JUMP 0xffa006e8 <_audio_out+0x194>;
ffa00644:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c14 <_g_sampMode> */
ffa00648:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0064a:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_g_sampInc> */
ffa0064e:	e0 4f       	R0 <<= 0x1c;
ffa00650:	10 93       	[P2] = R0;
ffa00652:	10 91       	R0 = [P2];
ffa00654:	44 50       	R1 = R4 + R0;
ffa00656:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00658:	e0 4f       	R0 <<= 0x1c;
ffa0065a:	01 0a       	CC = R1 <= R0 (IU);
ffa0065c:	09 93       	[P1] = R1;
ffa0065e:	16 18       	IF CC JUMP 0xffa0068a <_audio_out+0x136>;
ffa00660:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00662:	40 e1 ff ef 	R0.H = 0xefff;		/* (-4097)	R0=0xefffffff(-268435457) */
ffa00666:	01 50       	R0 = R1 + R0;
ffa00668:	e0 4e       	R0 >>= 0x1c;
ffa0066a:	10 32       	P2 = R0;
ffa0066c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0066e:	e0 4f       	R0 <<= 0x1c;
ffa00670:	01 08       	CC = R1 == R0;
ffa00672:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa00674:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00676:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00678:	2a 91       	R2 = [P5];
ffa0067a:	e3 4f       	R3 <<= 0x1c;
ffa0067c:	90 07       	IF CC P2 = R0;
ffa0067e:	b2 e0 03 20 	LSETUP(0xffa00682 <_audio_out+0x12e>, 0xffa00684 <_audio_out+0x130>) LC1 = P2;
ffa00682:	12 64       	R2 += 0x2;		/* (  2) */
ffa00684:	59 50       	R1 = R1 + R3;
ffa00686:	09 93       	[P1] = R1;
ffa00688:	2a 93       	[P5] = R2;
ffa0068a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0068c:	40 e1 ff 0f 	R0.H = 0xfff;		/* (4095)	R0=0xfffffff(268435455) */
ffa00690:	01 54       	R0 = R1 & R0;
ffa00692:	08 93       	[P1] = R0;
ffa00694:	b3 2f       	JUMP.S 0xffa005fa <_audio_out+0xa6>;
ffa00696:	28 52       	R0 = R0 - R5;
ffa00698:	21 e1 d4 01 	R1 = 0x1d4 (X);		/*		R1=0x1d4(468) */
ffa0069c:	08 0a       	CC = R0 <= R1 (IU);
ffa0069e:	17 14       	IF !CC JUMP 0xffa006cc <_audio_out+0x178> (BP);
ffa006a0:	21 e1 63 00 	R1 = 0x63 (X);		/*		R1=0x63( 99) */
ffa006a4:	08 0a       	CC = R0 <= R1 (IU);
ffa006a6:	c2 1b       	IF CC JUMP 0xffa0062a <_audio_out+0xd6>;
ffa006a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_g_sampInc> */
ffa006ac:	0a e1 14 0c 	P2.L = 0xc14;		/* (3092)	P2=0xff900c14 <_g_sampMode> */
ffa006b0:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa006b2:	10 99       	R0 = B[P2] (Z);
ffa006b4:	08 08       	CC = R0 == R1;
ffa006b6:	c5 17       	IF !CC JUMP 0xffa00640 <_audio_out+0xec> (BP);
ffa006b8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c14 <_g_sampMode> */
ffa006bc:	40 e1 13 10 	R0.H = 0x1013;		/* (4115)	R0=0x1013ffff(269746175) */
ffa006c0:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_g_sampInc> */
ffa006c4:	00 e1 cd ab 	R0.L = 0xabcd;		/* (-21555)	R0=0x1013abcd(269724621) */
ffa006c8:	10 93       	[P2] = R0;
ffa006ca:	c4 2f       	JUMP.S 0xffa00652 <_audio_out+0xfe>;
ffa006cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_g_sampInc> */
ffa006d0:	0a e1 14 0c 	P2.L = 0xc14;		/* (3092)	P2=0xff900c14 <_g_sampMode> */
ffa006d4:	10 99       	R0 = B[P2] (Z);
ffa006d6:	08 0c       	CC = R0 == 0x1;
ffa006d8:	12 18       	IF CC JUMP 0xffa006fc <_audio_out+0x1a8>;
ffa006da:	10 0c       	CC = R0 == 0x2;
ffa006dc:	ea 17       	IF !CC JUMP 0xffa006b0 <_audio_out+0x15c> (BP);
ffa006de:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa006e0:	10 9b       	B[P2] = R0;
ffa006e2:	ae 2f       	JUMP.S 0xffa0063e <_audio_out+0xea>;
ffa006e4:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa006e6:	10 9b       	B[P2] = R0;
ffa006e8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c14 <_g_sampMode> */
ffa006ec:	40 e1 f1 0f 	R0.H = 0xff1;		/* (4081)	R0=0xff10002(267452418) */
ffa006f0:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_g_sampInc> */
ffa006f4:	00 e1 21 43 	R0.L = 0x4321;		/* (17185)	R0=0xff14321(267469601) */
ffa006f8:	10 93       	[P2] = R0;
ffa006fa:	ac 2f       	JUMP.S 0xffa00652 <_audio_out+0xfe>;
ffa006fc:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa006fe:	10 9b       	B[P2] = R0;
ffa00700:	dc 2f       	JUMP.S 0xffa006b8 <_audio_out+0x164>;
	...

ffa00704 <_oled_delay>:
ffa00704:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00708:	92 69       	P2 = 0x32 (X);		/*		P2=0x32( 50) */
ffa0070a:	b2 e0 03 20 	LSETUP(0xffa0070e <_oled_delay+0xa>, 0xffa00710 <_oled_delay+0xc>) LC1 = P2;
ffa0070e:	00 00       	NOP;
ffa00710:	00 00       	NOP;
ffa00712:	01 e8 00 00 	UNLINK;
ffa00716:	10 00       	RTS;

ffa00718 <_oled_write>:
ffa00718:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0071a:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00c3c(-4191172) */
ffa0071e:	38 30       	R7 = R0;
ffa00720:	0d e1 04 15 	P5.L = 0x1504;		/* (5380)	P5=0xffc01504(-4188924) */
ffa00724:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa00728:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0072c:	28 97       	W[P5] = R0;
ffa0072e:	fd 42       	R5 = R7.L (Z);
ffa00730:	65 32       	P4 = P5;
ffa00732:	ff e3 e9 ff 	CALL 0xffa00704 <_oled_delay>;
ffa00736:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa00738:	26 e1 00 10 	R6 = 0x1000 (X);		/*		R6=0x1000(4096) */
ffa0073c:	25 6c       	P5 += 0x4;		/* (  4) */
ffa0073e:	24 e1 00 02 	R4 = 0x200 (X);		/*		R4=0x200(512) */
ffa00742:	0a 20       	JUMP.S 0xffa00756 <_oled_write+0x3e>;
ffa00744:	2c 97       	W[P5] = R4;
ffa00746:	ff e3 df ff 	CALL 0xffa00704 <_oled_delay>;
ffa0074a:	ff 67       	R7 += -0x1;		/* ( -1) */
ffa0074c:	2e 97       	W[P5] = R6;
ffa0074e:	ff e3 db ff 	CALL 0xffa00704 <_oled_delay>;
ffa00752:	3f 0c       	CC = R7 == -0x1;
ffa00754:	11 18       	IF CC JUMP 0xffa00776 <_oled_write+0x5e>;
ffa00756:	82 ce 05 c0 	R0 = ROT R5 BY 0x0 || W[P4] = R6 || NOP;
ffa0075a:	26 97 00 00 
ffa0075e:	38 40       	R0 >>>= R7;
ffa00760:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa00762:	f1 17       	IF !CC JUMP 0xffa00744 <_oled_write+0x2c> (BP);
ffa00764:	24 97       	W[P4] = R4;
ffa00766:	ff e3 cf ff 	CALL 0xffa00704 <_oled_delay>;
ffa0076a:	ff 67       	R7 += -0x1;		/* ( -1) */
ffa0076c:	2e 97       	W[P5] = R6;
ffa0076e:	ff e3 cb ff 	CALL 0xffa00704 <_oled_delay>;
ffa00772:	3f 0c       	CC = R7 == -0x1;
ffa00774:	f1 17       	IF !CC JUMP 0xffa00756 <_oled_write+0x3e> (BP);
ffa00776:	4d 48       	CC = !BITTST (R5, 0x9);		/* bit  9 */
ffa00778:	21 e1 00 02 	R1 = 0x200 (X);		/*		R1=0x200(512) */
ffa0077c:	41 10       	IF !CC JUMP 0xffa007fe <_oled_write+0xe6>;
ffa0077e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00032(-4194254) */
ffa00782:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00786:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01504(-4188924) */
ffa0078a:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00000(-4194304) */
ffa0078e:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00790:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa00792:	62 32       	P4 = P2;
ffa00794:	25 e1 00 10 	R5 = 0x1000 (X);		/*		R5=0x1000(4096) */
ffa00798:	0d e1 08 15 	P5.L = 0x1508;		/* (5384)	P5=0xffc01508(-4188920) */
ffa0079c:	24 e1 00 01 	R4 = 0x100 (X);		/*		R4=0x100(256) */
ffa007a0:	0b e1 00 15 	P3.L = 0x1500;		/* (5376)	P3=0xffc01500(-4188928) */
ffa007a4:	11 97       	W[P2] = R1;
ffa007a6:	12 20       	JUMP.S 0xffa007ca <_oled_write+0xb2>;
ffa007a8:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa007ac:	28 97       	W[P5] = R0;
ffa007ae:	ff e3 ab ff 	CALL 0xffa00704 <_oled_delay>;
ffa007b2:	2d 97       	W[P5] = R5;
ffa007b4:	58 95       	R0 = W[P3] (X);
ffa007b6:	58 49       	CC = BITTST (R0, 0xb);		/* bit 11 */
ffa007b8:	01 02       	R1 = CC;
ffa007ba:	82 c6 0e 80 	R0 = R6 << 0x1;
ffa007be:	ff 67       	R7 += -0x1;		/* ( -1) */
ffa007c0:	81 57       	R6 = R1 | R0;
ffa007c2:	ff e3 a1 ff 	CALL 0xffa00704 <_oled_delay>;
ffa007c6:	3f 0c       	CC = R7 == -0x1;
ffa007c8:	0c 18       	IF CC JUMP 0xffa007e0 <_oled_write+0xc8>;
ffa007ca:	82 ce 04 c0 	R0 = ROT R4 BY 0x0 || W[P4] = R5 || NOP;
ffa007ce:	25 97 00 00 
ffa007d2:	38 40       	R0 >>>= R7;
ffa007d4:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa007d6:	e9 17       	IF !CC JUMP 0xffa007a8 <_oled_write+0x90> (BP);
ffa007d8:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa007dc:	20 97       	W[P4] = R0;
ffa007de:	e8 2f       	JUMP.S 0xffa007ae <_oled_write+0x96>;
ffa007e0:	77 43       	R7 = R6.B (Z);
ffa007e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa007e6:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa007ea:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa007ee:	10 97       	W[P2] = R0;
ffa007f0:	ff e3 8a ff 	CALL 0xffa00704 <_oled_delay>;
ffa007f4:	01 e8 00 00 	UNLINK;
ffa007f8:	07 30       	R0 = R7;
ffa007fa:	a3 05       	(R7:4, P5:3) = [SP++];
ffa007fc:	10 00       	RTS;
ffa007fe:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00800:	f1 2f       	JUMP.S 0xffa007e2 <_oled_write+0xca>;
	...

ffa00804 <_oled_waitbusy>:
ffa00804:	78 05       	[--SP] = (R7:7);
ffa00806:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0080a:	20 e1 01 01 	R0 = 0x101 (X);		/*		R0=0x101(257) */
ffa0080e:	ff e3 85 ff 	CALL 0xffa00718 <_oled_write>;
ffa00812:	38 49       	CC = BITTST (R0, 0x7);		/* bit  7 */
ffa00814:	0f 10       	IF !CC JUMP 0xffa00832 <_oled_waitbusy+0x2e>;
ffa00816:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00818:	07 20       	JUMP.S 0xffa00826 <_oled_waitbusy+0x22>;
ffa0081a:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0081c:	f8 42       	R0 = R7.L (Z);
ffa0081e:	21 e1 d0 07 	R1 = 0x7d0 (X);		/*		R1=0x7d0(2000) */
ffa00822:	08 08       	CC = R0 == R1;
ffa00824:	07 18       	IF CC JUMP 0xffa00832 <_oled_waitbusy+0x2e>;
ffa00826:	20 e1 00 01 	R0 = 0x100 (X);		/*		R0=0x100(256) */
ffa0082a:	ff e3 77 ff 	CALL 0xffa00718 <_oled_write>;
ffa0082e:	38 49       	CC = BITTST (R0, 0x7);		/* bit  7 */
ffa00830:	f5 1f       	IF CC JUMP 0xffa0081a <_oled_waitbusy+0x16> (BP);
ffa00832:	01 e8 00 00 	UNLINK;
ffa00836:	38 05       	(R7:7) = [SP++];
ffa00838:	10 00       	RTS;
	...

ffa0083c <_wait_flash>:
ffa0083c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0083e:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01508(-4188920) */
ffa00842:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00846:	0d e1 04 07 	P5.L = 0x704;		/* (1796)	P5=0xffc00704(-4192508) */
ffa0084a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0084c:	2f 97       	W[P5] = R7;
ffa0084e:	24 00       	SSYNC;
ffa00850:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa00852:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00854:	ff e3 4e fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00858:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0085a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0085c:	ff e3 4a fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00860:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00864:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00868:	17 97       	W[P2] = R7;
ffa0086a:	24 00       	SSYNC;
ffa0086c:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0086e:	ef 17       	IF !CC JUMP 0xffa0084c <_wait_flash+0x10> (BP);
ffa00870:	01 e8 00 00 	UNLINK;
ffa00874:	bd 05       	(R7:7, P5:5) = [SP++];
ffa00876:	10 00       	RTS;

ffa00878 <_write_enable_flash>:
ffa00878:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0087a:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00c34(-4191180) */
ffa0087e:	0c e1 04 15 	P4.L = 0x1504;		/* (5380)	P4=0xffc01504(-4188924) */
ffa00882:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa00884:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00888:	27 97       	W[P4] = R7;
ffa0088a:	24 00       	SSYNC;
ffa0088c:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00704(-4192508) */
ffa00890:	21 e1 50 00 	R1 = 0x50 (X);		/*		R1=0x50( 80) */
ffa00894:	0d e1 08 15 	P5.L = 0x1508;		/* (5384)	P5=0xffc01508(-4188920) */
ffa00898:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0089a:	ff e3 2b fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa0089e:	2f 97       	W[P5] = R7;
ffa008a0:	24 00       	SSYNC;
ffa008a2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa008a6:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa008aa:	17 97       	W[P2] = R7;
ffa008ac:	24 00       	SSYNC;
ffa008ae:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa008b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008b2:	ff e3 1f fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa008b6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa008b8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008ba:	ff e3 1b fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa008be:	2f 97       	W[P5] = R7;
ffa008c0:	24 00       	SSYNC;
ffa008c2:	27 97       	W[P4] = R7;
ffa008c4:	24 00       	SSYNC;
ffa008c6:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa008c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008ca:	ff e3 13 fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa008ce:	2f 97       	W[P5] = R7;
ffa008d0:	24 00       	SSYNC;
ffa008d2:	01 e8 00 00 	UNLINK;
ffa008d6:	bc 05       	(R7:7, P5:4) = [SP++];
ffa008d8:	10 00       	RTS;
	...

ffa008dc <_read_flash_u32>:
ffa008dc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa008e0:	70 05       	[--SP] = (R7:6);
ffa008e2:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa008e6:	16 60       	R6 = 0x2 (X);		/*		R6=0x2(  2) */
ffa008e8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa008ec:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R6 || NOP;
ffa008f0:	16 97 00 00 
ffa008f4:	24 00       	SSYNC;
ffa008f6:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa008f8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008fa:	ff e3 fb fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa008fe:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa00902:	49 43       	R1 = R1.B (Z);
ffa00904:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00906:	ff e3 f5 fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa0090a:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa0090e:	49 43       	R1 = R1.B (Z);
ffa00910:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00912:	ff e3 ef fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00916:	79 43       	R1 = R7.B (Z);
ffa00918:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0091a:	ff e3 eb fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa0091e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00920:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00922:	ff e3 e7 fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00926:	47 43       	R7 = R0.B (Z);
ffa00928:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0092a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0092c:	ff e3 e2 fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00930:	40 43       	R0 = R0.B (Z);
ffa00932:	47 4f       	R7 <<= 0x8;
ffa00934:	c7 51       	R7 = R7 + R0;
ffa00936:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00938:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0093a:	ff e3 db fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa0093e:	40 43       	R0 = R0.B (Z);
ffa00940:	47 4f       	R7 <<= 0x8;
ffa00942:	c7 51       	R7 = R7 + R0;
ffa00944:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00946:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00948:	ff e3 d4 fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa0094c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00950:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00954:	47 4f       	R7 <<= 0x8;
ffa00956:	16 97       	W[P2] = R6;
ffa00958:	24 00       	SSYNC;
ffa0095a:	40 43       	R0 = R0.B (Z);
ffa0095c:	c7 51       	R7 = R7 + R0;
ffa0095e:	01 e8 00 00 	UNLINK;
ffa00962:	07 30       	R0 = R7;
ffa00964:	30 05       	(R7:6) = [SP++];
ffa00966:	10 00       	RTS;

ffa00968 <_read_flash_u8>:
ffa00968:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0096c:	70 05       	[--SP] = (R7:6);
ffa0096e:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00972:	16 60       	R6 = 0x2 (X);		/*		R6=0x2(  2) */
ffa00974:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00978:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R6 || NOP;
ffa0097c:	16 97 00 00 
ffa00980:	24 00       	SSYNC;
ffa00982:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa00984:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00986:	ff e3 b5 fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa0098a:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa0098e:	49 43       	R1 = R1.B (Z);
ffa00990:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00992:	ff e3 af fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00996:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa0099a:	49 43       	R1 = R1.B (Z);
ffa0099c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0099e:	ff e3 a9 fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa009a2:	79 43       	R1 = R7.B (Z);
ffa009a4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009a6:	ff e3 a5 fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa009aa:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa009ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009ae:	ff e3 a1 fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa009b2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa009b6:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa009ba:	16 97       	W[P2] = R6;
ffa009bc:	24 00       	SSYNC;
ffa009be:	01 e8 00 00 	UNLINK;
ffa009c2:	40 43       	R0 = R0.B (Z);
ffa009c4:	30 05       	(R7:6) = [SP++];
ffa009c6:	10 00       	RTS;

ffa009c8 <_write_flash>:
ffa009c8:	e3 05       	[--SP] = (R7:4, P5:3);
ffa009ca:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa009ce:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01508(-4188920) */
ffa009d2:	f1 bb       	[FP -0x4] = R1;
ffa009d4:	0d e1 04 15 	P5.L = 0x1504;		/* (5380)	P5=0xffc01504(-4188924) */
ffa009d8:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa009da:	20 30       	R4 = R0;
ffa009dc:	ff e3 4e ff 	CALL 0xffa00878 <_write_enable_flash>;
ffa009e0:	2f 97       	W[P5] = R7;
ffa009e2:	24 00       	SSYNC;
ffa009e4:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa009e6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009e8:	ff e3 84 fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa009ec:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa009ee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009f0:	ff e3 80 fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa009f4:	21 e1 f0 00 	R1 = 0xf0 (X);		/*		R1=0xf0(240) */
ffa009f8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009fa:	ff e3 7b fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa009fe:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00a00:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a02:	ff e3 77 fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00a06:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00a0a:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00a0e:	17 97       	W[P2] = R7;
ffa00a10:	24 00       	SSYNC;
ffa00a12:	ff e3 15 ff 	CALL 0xffa0083c <_wait_flash>;
ffa00a16:	04 0c       	CC = R4 == 0x0;
ffa00a18:	6c 18       	IF CC JUMP 0xffa00af0 <_write_flash+0x128>;
ffa00a1a:	fc b9       	P4 = [FP -0x4];
ffa00a1c:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00a1e:	15 60       	R5 = 0x2 (X);		/*		R5=0x2(  2) */
ffa00a20:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00a24:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00a28:	15 97       	W[P2] = R5;
ffa00a2a:	24 00       	SSYNC;
ffa00a2c:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01504(-4188924) */
ffa00a30:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa00a32:	0d e1 08 15 	P5.L = 0x1508;		/* (5384)	P5=0xffc01508(-4188920) */
ffa00a36:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a38:	ff e3 5c fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00a3c:	2d 97       	W[P5] = R5;
ffa00a3e:	24 00       	SSYNC;
ffa00a40:	4b e1 07 00 	P3.H = 0x7;		/* (  7)	P3=0x71500 */
ffa00a44:	0b e1 00 f0 	P3.L = 0xf000;		/* (-4096)	P3=0x7f000 */
ffa00a48:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00a4c:	43 30       	R0 = P3;
ffa00a4e:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00a52:	04 cc 30 0e 	R7 = R6 + R0 (NS) || W[P2] = R5 || NOP;
ffa00a56:	15 97 00 00 
ffa00a5a:	24 00       	SSYNC;
ffa00a5c:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
ffa00a5e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a60:	ff e3 48 fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00a64:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa00a68:	47 4e       	R7 >>= 0x8;
ffa00a6a:	49 43       	R1 = R1.B (Z);
ffa00a6c:	7f 43       	R7 = R7.B (Z);
ffa00a6e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a70:	ff e3 40 fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00a74:	0f 30       	R1 = R7;
ffa00a76:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a78:	ff e3 3c fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00a7c:	71 43       	R1 = R6.B (Z);
ffa00a7e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a80:	ff e3 38 fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00a84:	21 98       	R1 = B[P4++] (Z);
ffa00a86:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a88:	ff e3 34 fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00a8c:	2d 97       	W[P5] = R5;
ffa00a8e:	24 00       	SSYNC;
ffa00a90:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00a92:	ff e3 d5 fe 	CALL 0xffa0083c <_wait_flash>;
ffa00a96:	26 08       	CC = R6 == R4;
ffa00a98:	c4 17       	IF !CC JUMP 0xffa00a20 <_write_flash+0x58> (BP);
ffa00a9a:	fd b9       	P5 = [FP -0x4];
ffa00a9c:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
ffa00a9e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00aa0:	73 30       	R6 = P3;
ffa00aa2:	65 32       	P4 = P5;
ffa00aa4:	02 20       	JUMP.S 0xffa00aa8 <_write_flash+0xe0>;
ffa00aa6:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa00aa8:	37 50       	R0 = R7 + R6;
ffa00aaa:	ff e3 5f ff 	CALL 0xffa00968 <_read_flash_u8>;
ffa00aae:	41 43       	R1 = R0.B (Z);
ffa00ab0:	28 99       	R0 = B[P5] (Z);
ffa00ab2:	01 08       	CC = R1 == R0;
ffa00ab4:	0f 18       	IF CC JUMP 0xffa00ad2 <_write_flash+0x10a>;
ffa00ab6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00aba:	00 e1 44 00 	R0.L = 0x44;		/* ( 68)	R0=0xff900044(-7339964) */
ffa00abe:	00 e3 33 05 	CALL 0xffa01524 <_printf_hex_byte>;
ffa00ac2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900044(-7339964) */
ffa00ac6:	21 99       	R1 = B[P4] (Z);
ffa00ac8:	00 e1 54 00 	R0.L = 0x54;		/* ( 84)	R0=0xff900054(-7339948) */
ffa00acc:	00 e3 2c 05 	CALL 0xffa01524 <_printf_hex_byte>;
ffa00ad0:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa00ad2:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00ad4:	27 08       	CC = R7 == R4;
ffa00ad6:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00ad8:	e7 17       	IF !CC JUMP 0xffa00aa6 <_write_flash+0xde> (BP);
ffa00ada:	05 48       	CC = !BITTST (R5, 0x0);		/* bit  0 */
ffa00adc:	0a 10       	IF !CC JUMP 0xffa00af0 <_write_flash+0x128>;
ffa00ade:	01 e8 00 00 	UNLINK;
ffa00ae2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900054(-7339948) */
ffa00ae6:	00 e1 60 00 	R0.L = 0x60;		/* ( 96)	R0=0xff900060(-7339936) */
ffa00aea:	a3 05       	(R7:4, P5:3) = [SP++];
ffa00aec:	00 e2 70 06 	JUMP.L 0xffa017cc <_printf_str>;
ffa00af0:	01 e8 00 00 	UNLINK;
ffa00af4:	a3 05       	(R7:4, P5:3) = [SP++];
ffa00af6:	10 00       	RTS;

ffa00af8 <_eth_listen>:
ffa00af8:	00 0c       	CC = R0 == 0x0;
ffa00afa:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa00afe:	04 18       	IF CC JUMP 0xffa00b06 <_eth_listen+0xe>;
ffa00b00:	01 e8 00 00 	UNLINK;
ffa00b04:	10 00       	RTS;
ffa00b06:	47 30       	R0 = FP;
ffa00b08:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa00b0a:	00 e3 8d 13 	CALL 0xffa03224 <_bfin_EMAC_recv>;
ffa00b0e:	00 0d       	CC = R0 <= 0x0;
ffa00b10:	f8 1b       	IF CC JUMP 0xffa00b00 <_eth_listen+0x8>;
ffa00b12:	f9 b9       	P1 = [FP -0x4];
ffa00b14:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901504 */
ffa00b18:	0a e1 f0 0e 	P2.L = 0xef0;		/* (3824)	P2=0xff900ef0 <_NetDataDestIP> */
ffa00b1c:	11 91       	R1 = [P2];
ffa00b1e:	c8 a1       	R0 = [P1 + 0x1c];
ffa00b20:	08 08       	CC = R0 == R1;
ffa00b22:	ef 17       	IF !CC JUMP 0xffa00b00 <_eth_listen+0x8> (BP);
ffa00b24:	48 e4 13 00 	R0 = W[P1 + 0x26] (Z);
ffa00b28:	00 e3 54 09 	CALL 0xffa01dd0 <_htons>;
ffa00b2c:	c0 42       	R0 = R0.L (Z);
ffa00b2e:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa00b32:	08 08       	CC = R0 == R1;
ffa00b34:	e6 17       	IF !CC JUMP 0xffa00b00 <_eth_listen+0x8> (BP);
ffa00b36:	f0 b9       	R0 = [FP -0x4];
ffa00b38:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa00b3c:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa00b3e:	01 e1 48 0c 	R1.L = 0xc48;		/* (3144)	R1=0xff900c48 <_g_outpkt>(-7336888) */
ffa00b42:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa00b44:	00 e3 8e 06 	CALL 0xffa01860 <_memcpy_>;
ffa00b48:	dc 2f       	JUMP.S 0xffa00b00 <_eth_listen+0x8>;
	...

ffa00b4c <_getRadioPacket>:
ffa00b4c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa00b4e:	00 e8 08 00 	LINK 0x20;		/* (32) */
ffa00b52:	78 e6 fa ff 	W[FP + -0xc] = R0;
ffa00b56:	79 e6 f8 ff 	W[FP + -0x10] = R1;
ffa00b5a:	b8 e5 30 00 	R0 = B[FP + 0x30] (X);
ffa00b5e:	79 e4 fa ff 	R1 = W[FP + -0xc] (Z);
ffa00b62:	b8 e6 ef ff 	B[FP + -0x11] = R0;
ffa00b66:	e1 bb       	[FP -0x8] = R1;
ffa00b68:	3a 30       	R7 = R2;
ffa00b6a:	01 30       	R0 = R1;
ffa00b6c:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00b70:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00b72:	ff e3 3d fb 	CALL 0xffa001ec <_spi_write_register>;
ffa00b76:	24 00       	SSYNC;
ffa00b78:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ef0(-4190480) */
ffa00b7c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00b80:	7b e5 fa ff 	R3 = W[FP + -0xc] (X);
ffa00b84:	13 97       	W[P2] = R3;
ffa00b86:	24 00       	SSYNC;
ffa00b88:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00b8c:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa00b90:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa00b94:	10 97       	W[P2] = R0;
ffa00b96:	7e 43       	R6 = R7.B (Z);
ffa00b98:	ff e3 10 fb 	CALL 0xffa001b8 <_spi_delay>;
ffa00b9c:	06 0c       	CC = R6 == 0x0;
ffa00b9e:	ec 10       	IF !CC JUMP 0xffa00d76 <_getRadioPacket+0x22a>;
ffa00ba0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c44 <_g_sampOff> */
ffa00ba4:	09 e1 1c 0c 	P1.L = 0xc1c;		/* (3100)	P1=0xff900c1c <_wrptr> */
ffa00ba8:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc01504(-4188924) */
ffa00bac:	4d 91       	P5 = [P1];
ffa00bae:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90f000 */
ffa00bb2:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900100(-7339776) */
ffa00bb6:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00bb8:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa00bbc:	0b e1 20 0c 	P3.L = 0xc20;		/* (3104)	P3=0xff900c20 <_g_sampW> */
ffa00bc0:	04 e1 68 0c 	R4.L = 0xc68;		/* (3176)	R4=0xff900c68 <_g_samples>(-7336856) */
ffa00bc4:	25 e1 ff 01 	R5 = 0x1ff (X);		/*		R5=0x1ff(511) */
ffa00bc8:	07 20       	JUMP.S 0xffa00bd6 <_getRadioPacket+0x8a>;
ffa00bca:	08 0c       	CC = R0 == 0x1;
ffa00bcc:	1a 18       	IF CC JUMP 0xffa00c00 <_getRadioPacket+0xb4>;
ffa00bce:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00bd0:	03 61       	R3 = 0x20 (X);		/*		R3=0x20( 32) */
ffa00bd2:	1f 08       	CC = R7 == R3;
ffa00bd4:	21 18       	IF CC JUMP 0xffa00c16 <_getRadioPacket+0xca>;
ffa00bd6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00bd8:	20 97       	W[P4] = R0;
ffa00bda:	ff e3 ef fa 	CALL 0xffa001b8 <_spi_delay>;
ffa00bde:	06 0c       	CC = R6 == 0x0;
ffa00be0:	f7 1f       	IF CC JUMP 0xffa00bce <_getRadioPacket+0x82> (BP);
ffa00be2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa00be6:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa00bea:	50 95       	R0 = W[P2] (X);
ffa00bec:	10 30       	R2 = R0;
ffa00bee:	28 9a       	B[P5++] = R0;
ffa00bf0:	b9 60       	R1 = 0x17 (X);		/*		R1=0x17( 23) */
ffa00bf2:	f8 42       	R0 = R7.L (Z);
ffa00bf4:	08 0a       	CC = R0 <= R1 (IU);
ffa00bf6:	ec 17       	IF !CC JUMP 0xffa00bce <_getRadioPacket+0x82> (BP);
ffa00bf8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa00bfa:	07 54       	R0 = R7 & R0;
ffa00bfc:	00 0c       	CC = R0 == 0x0;
ffa00bfe:	e6 17       	IF !CC JUMP 0xffa00bca <_getRadioPacket+0x7e> (BP);
ffa00c00:	18 91       	R0 = [P3];
ffa00c02:	68 54       	R1 = R0 & R5;
ffa00c04:	61 50       	R1 = R1 + R4;
ffa00c06:	11 32       	P2 = R1;
ffa00c08:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00c0a:	03 61       	R3 = 0x20 (X);		/*		R3=0x20( 32) */
ffa00c0c:	08 64       	R0 += 0x1;		/* (  1) */
ffa00c0e:	1f 08       	CC = R7 == R3;
ffa00c10:	12 9b       	B[P2] = R2;
ffa00c12:	18 93       	[P3] = R0;
ffa00c14:	e1 17       	IF !CC JUMP 0xffa00bd6 <_getRadioPacket+0x8a> (BP);
ffa00c16:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa00c1a:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00c1e:	78 e5 fa ff 	R0 = W[FP + -0xc] (X);
ffa00c22:	10 97       	W[P2] = R0;
ffa00c24:	24 00       	SSYNC;
ffa00c26:	06 0c       	CC = R6 == 0x0;
ffa00c28:	40 1c       	IF CC JUMP 0xffa00ca8 <_getRadioPacket+0x15c> (BP);
ffa00c2a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c1c <_wrptr> */
ffa00c2e:	09 e1 1c 0c 	P1.L = 0xc1c;		/* (3100)	P1=0xff900c1c <_wrptr> */
ffa00c32:	09 91       	R1 = [P1];
ffa00c34:	01 65       	R1 += 0x20;		/* ( 32) */
ffa00c36:	20 e1 ff 0f 	R0 = 0xfff (X);		/*		R0=0xfff(4095) */
ffa00c3a:	01 54       	R0 = R1 & R0;
ffa00c3c:	01 67       	R1 += -0x20;		/* (-32) */
ffa00c3e:	11 32       	P2 = R1;
ffa00c40:	08 93       	[P1] = R0;
ffa00c42:	12 60       	R2 = 0x2 (X);		/*		R2=0x2(  2) */
ffa00c44:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c1c <_wrptr> */
ffa00c48:	09 e1 10 0c 	P1.L = 0xc10;		/* (3088)	P1=0xff900c10 <_g_nextFlag> */
ffa00c4c:	91 a1       	R1 = [P2 + 0x18];
ffa00c4e:	39 49       	CC = BITTST (R1, 0x7);		/* bit  7 */
ffa00c50:	82 c6 91 81 	R0 = R1 >> 0xe;
ffa00c54:	03 02       	R3 = CC;
ffa00c56:	10 54       	R0 = R0 & R2;
ffa00c58:	c3 56       	R3 = R3 | R0;
ffa00c5a:	82 c6 59 85 	R2 = R1 >> 0x15;
ffa00c5e:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa00c60:	82 54       	R2 = R2 & R0;
ffa00c62:	e1 4e       	R1 >>= 0x1c;
ffa00c64:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa00c66:	41 54       	R1 = R1 & R0;
ffa00c68:	8a 56       	R2 = R2 | R1;
ffa00c6a:	93 56       	R2 = R3 | R2;
ffa00c6c:	08 91       	R0 = [P1];
ffa00c6e:	02 08       	CC = R2 == R0;
ffa00c70:	14 18       	IF CC JUMP 0xffa00c98 <_getRadioPacket+0x14c>;
ffa00c72:	82 09       	CC = R2 < R0 (IU);
ffa00c74:	91 14       	IF !CC JUMP 0xffa00d96 <_getRadioPacket+0x24a> (BP);
ffa00c76:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00c7a:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_dropped> */
ffa00c7e:	04 cc 10 42 	R1 = R2 - R0 (NS) || R0 = [P2] || NOP;
ffa00c82:	10 91 00 00 
ffa00c86:	80 64       	R0 += 0x10;		/* ( 16) */
ffa00c88:	41 50       	R1 = R1 + R0;
ffa00c8a:	11 93       	[P2] = R1;
ffa00c8c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c38(-4191176) */
ffa00c90:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa00c92:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00c96:	10 97       	W[P2] = R0;
ffa00c98:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00c9a:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00c9c:	02 54       	R0 = R2 & R0;
ffa00c9e:	08 93       	[P1] = R0;
ffa00ca0:	fa 67       	R2 += -0x1;		/* ( -1) */
ffa00ca2:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00ca4:	02 08       	CC = R2 == R0;
ffa00ca6:	81 18       	IF CC JUMP 0xffa00da8 <_getRadioPacket+0x25c>;
ffa00ca8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c10 <_g_nextFlag> */
ffa00cac:	09 e1 1c 0c 	P1.L = 0xc1c;		/* (3100)	P1=0xff900c1c <_wrptr> */
ffa00cb0:	21 e1 3f 02 	R1 = 0x23f (X);		/*		R1=0x23f(575) */
ffa00cb4:	08 91       	R0 = [P1];
ffa00cb6:	08 0a       	CC = R0 <= R1 (IU);
ffa00cb8:	5b 18       	IF CC JUMP 0xffa00d6e <_getRadioPacket+0x222>;
ffa00cba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00cbe:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00cc2:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa00cc6:	10 97       	W[P2] = R0;
ffa00cc8:	21 e1 e2 00 	R1 = 0xe2 (X);		/*		R1=0xe2(226) */
ffa00ccc:	e0 b9       	R0 = [FP -0x8];
ffa00cce:	ff e3 11 fb 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00cd2:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c1c <_wrptr> */
ffa00cd6:	09 e1 1c 0c 	P1.L = 0xc1c;		/* (3100)	P1=0xff900c1c <_wrptr> */
ffa00cda:	08 91       	R0 = [P1];
ffa00cdc:	4f 30       	R1 = FP;
ffa00cde:	20 64       	R0 += 0x4;		/* (  4) */
ffa00ce0:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa00ce2:	00 e3 ef 0d 	CALL 0xffa028c0 <_udp_packet_setup>;
ffa00ce6:	08 32       	P1 = R0;
ffa00ce8:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa00cec:	00 0d       	CC = R0 <= 0x0;
ffa00cee:	ae 18       	IF CC JUMP 0xffa00e4a <_getRadioPacket+0x2fe>;
ffa00cf0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00cf4:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_dropped> */
ffa00cf8:	10 91       	R0 = [P2];
ffa00cfa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_g_dropped> */
ffa00cfe:	08 93       	[P1] = R0;
ffa00d00:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_wrptr> */
ffa00d04:	10 91       	R0 = [P2];
ffa00d06:	10 4e       	R0 >>= 0x2;
ffa00d08:	00 0c       	CC = R0 == 0x0;
ffa00d0a:	9e 18       	IF CC JUMP 0xffa00e46 <_getRadioPacket+0x2fa>;
ffa00d0c:	51 32       	P2 = P1;
ffa00d0e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00d10:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00d12:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00d14:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c1c <_wrptr> */
ffa00d18:	28 90       	R0 = [P5++];
ffa00d1a:	10 92       	[P2++] = R0;
ffa00d1c:	09 e1 1c 0c 	P1.L = 0xc1c;		/* (3100)	P1=0xff900c1c <_wrptr> */
ffa00d20:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00d22:	08 91       	R0 = [P1];
ffa00d24:	d1 42       	R1 = R2.L (Z);
ffa00d26:	10 4e       	R0 >>= 0x2;
ffa00d28:	81 09       	CC = R1 < R0 (IU);
ffa00d2a:	f5 1f       	IF CC JUMP 0xffa00d14 <_getRadioPacket+0x1c8> (BP);
ffa00d2c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c1c <_wrptr> */
ffa00d30:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_trptr> */
ffa00d34:	10 91       	R0 = [P2];
ffa00d36:	08 64       	R0 += 0x1;		/* (  1) */
ffa00d38:	10 93       	[P2] = R0;
ffa00d3a:	00 e3 41 09 	CALL 0xffa01fbc <_bfin_EMAC_send_nocopy>;
ffa00d3e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00d40:	28 93       	[P5] = R0;
ffa00d42:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00d44:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00d46:	23 e1 90 00 	R3 = 0x90 (X);		/*		R3=0x90(144) */
ffa00d4a:	09 64       	R1 += 0x1;		/* (  1) */
ffa00d4c:	c8 42       	R0 = R1.L (Z);
ffa00d4e:	18 08       	CC = R0 == R3;
ffa00d50:	2a 92       	[P5++] = R2;
ffa00d52:	fc 17       	IF !CC JUMP 0xffa00d4a <_getRadioPacket+0x1fe> (BP);
ffa00d54:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c18(-4191208) */
ffa00d58:	20 e1 04 40 	R0 = 0x4004 (X);		/*		R0=0x4004(16388) */
ffa00d5c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00d60:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c1c <_wrptr> */
ffa00d64:	10 97       	W[P2] = R0;
ffa00d66:	09 e1 1c 0c 	P1.L = 0xc1c;		/* (3100)	P1=0xff900c1c <_wrptr> */
ffa00d6a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00d6c:	08 93       	[P1] = R0;
ffa00d6e:	01 e8 00 00 	UNLINK;
ffa00d72:	a3 05       	(R7:4, P5:3) = [SP++];
ffa00d74:	10 00       	RTS;
ffa00d76:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c1c <_wrptr> */
ffa00d7a:	09 e1 1c 0c 	P1.L = 0xc1c;		/* (3100)	P1=0xff900c1c <_wrptr> */
ffa00d7e:	4d 91       	P5 = [P1];
ffa00d80:	ff e3 14 fa 	CALL 0xffa001a8 <_ustimer>;
ffa00d84:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa00d88:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_wrptr> */
ffa00d8c:	28 93       	[P5] = R0;
ffa00d8e:	10 91       	R0 = [P2];
ffa00d90:	20 64       	R0 += 0x4;		/* (  4) */
ffa00d92:	10 93       	[P2] = R0;
ffa00d94:	06 2f       	JUMP.S 0xffa00ba0 <_getRadioPacket+0x54>;
ffa00d96:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c1c <_wrptr> */
ffa00d9a:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_dropped> */
ffa00d9e:	11 91       	R1 = [P2];
ffa00da0:	02 52       	R0 = R2 - R0;
ffa00da2:	08 50       	R0 = R0 + R1;
ffa00da4:	10 93       	[P2] = R0;
ffa00da6:	73 2f       	JUMP.S 0xffa00c8c <_getRadioPacket+0x140>;
ffa00da8:	b8 e4 ef ff 	R0 = B[FP + -0x11] (Z);
ffa00dac:	00 0c       	CC = R0 == 0x0;
ffa00dae:	7d 1f       	IF CC JUMP 0xffa00ca8 <_getRadioPacket+0x15c> (BP);
ffa00db0:	e0 b9       	R0 = [FP -0x8];
ffa00db2:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00db6:	ff e3 ef fa 	CALL 0xffa00394 <_radio_set_tx>;
ffa00dba:	24 00       	SSYNC;
ffa00dbc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c38(-4191176) */
ffa00dc0:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa00dc4:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90050c */
ffa00dc8:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00dcc:	79 e5 fa ff 	R1 = W[FP + -0xc] (X);
ffa00dd0:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa00dd4:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa00dd8:	0c e1 48 0c 	P4.L = 0xc48;		/* (3144)	P4=0xff900c48 <_g_outpkt> */
ffa00ddc:	11 97       	W[P2] = R1;
ffa00dde:	5c 32       	P3 = P4;
ffa00de0:	28 97       	W[P5] = R0;
ffa00de2:	ff e3 eb f9 	CALL 0xffa001b8 <_spi_delay>;
ffa00de6:	03 6d       	P3 += 0x20;		/* ( 32) */
ffa00de8:	00 00       	NOP;
ffa00dea:	20 98       	R0 = B[P4++] (Z);
ffa00dec:	28 97       	W[P5] = R0;
ffa00dee:	ff e3 e5 f9 	CALL 0xffa001b8 <_spi_delay>;
ffa00df2:	5c 08       	CC = P4 == P3;
ffa00df4:	fa 17       	IF !CC JUMP 0xffa00de8 <_getRadioPacket+0x29c> (BP);
ffa00df6:	78 e5 fa ff 	R0 = W[FP + -0xc] (X);
ffa00dfa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00dfe:	50 4a       	BITSET (R0, 0xa);		/* bit 10 */
ffa00e00:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00e04:	10 97       	W[P2] = R0;
ffa00e06:	24 00       	SSYNC;
ffa00e08:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00e0a:	50 95       	R0 = W[P2] (X);
ffa00e0c:	7b e5 f8 ff 	R3 = W[FP + -0x10] (X);
ffa00e10:	03 54       	R0 = R3 & R0;
ffa00e12:	c0 42       	R0 = R0.L (Z);
ffa00e14:	00 0c       	CC = R0 == 0x0;
ffa00e16:	0c 18       	IF CC JUMP 0xffa00e2e <_getRadioPacket+0x2e2>;
ffa00e18:	6a 32       	P5 = P2;
ffa00e1a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00e1c:	ff e3 6e fe 	CALL 0xffa00af8 <_eth_listen>;
ffa00e20:	68 95       	R0 = W[P5] (X);
ffa00e22:	79 e5 f8 ff 	R1 = W[FP + -0x10] (X);
ffa00e26:	08 54       	R0 = R0 & R1;
ffa00e28:	c0 42       	R0 = R0.L (Z);
ffa00e2a:	00 0c       	CC = R0 == 0x0;
ffa00e2c:	f7 17       	IF !CC JUMP 0xffa00e1a <_getRadioPacket+0x2ce> (BP);
ffa00e2e:	e0 b9       	R0 = [FP -0x8];
ffa00e30:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00e32:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00e36:	ff e3 db f9 	CALL 0xffa001ec <_spi_write_register>;
ffa00e3a:	e0 b9       	R0 = [FP -0x8];
ffa00e3c:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00e40:	ff e3 7c fa 	CALL 0xffa00338 <_radio_set_rx>;
ffa00e44:	3b 2f       	JUMP.S 0xffa00cba <_getRadioPacket+0x16e>;
ffa00e46:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00e48:	72 2f       	JUMP.S 0xffa00d2c <_getRadioPacket+0x1e0>;
ffa00e4a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00e4e:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_trptr> */
ffa00e52:	10 91       	R0 = [P2];
ffa00e54:	08 64       	R0 += 0x1;		/* (  1) */
ffa00e56:	10 93       	[P2] = R0;
ffa00e58:	7e 2f       	JUMP.S 0xffa00d54 <_getRadioPacket+0x208>;
	...

ffa00e5c <_main>:
ffa00e5c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa00e5e:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00c48(-4191160) */
ffa00e62:	0c e1 04 32 	P4.L = 0x3204;		/* (12804)	P4=0xffc03204(-4181500) */
ffa00e66:	20 e1 9c c1 	R0 = -0x3e64 (X);		/*		R0=0xffffc19c(-15972) */
ffa00e6a:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0150c(-4188916) */
ffa00e6e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c18(-4191208) */
ffa00e72:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa00e76:	08 e1 30 15 	P0.L = 0x1530;		/* (5424)	P0=0xffc01530(-4188880) */
ffa00e7a:	20 97       	W[P4] = R0;
ffa00e7c:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa00e7e:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00e80:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa00e84:	02 97       	W[P0] = R2;
ffa00e86:	10 97       	W[P2] = R0;
ffa00e88:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa00e8c:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa00e8e:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa00e92:	10 97       	W[P2] = R0;
ffa00e94:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa00e98:	a2 6f       	P2 += -0xc;		/* (-12) */
ffa00e9a:	10 97       	W[P2] = R0;
ffa00e9c:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa00ea0:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00ea2:	10 97       	W[P2] = R0;
ffa00ea4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00ea6:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00ea8:	11 97       	W[P2] = R1;
ffa00eaa:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa00eae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa00eb2:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c1c(-4191204) */
ffa00eb6:	09 e1 0c 04 	P1.L = 0x40c;		/* (1036)	P1=0xffc0040c(-4193268) */
ffa00eba:	0d e1 04 04 	P5.L = 0x404;		/* (1028)	P5=0xffc00404(-4193276) */
ffa00ebe:	0a e1 10 04 	P2.L = 0x410;		/* (1040)	P2=0xffc00410(-4193264) */
ffa00ec2:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa00ec6:	29 97       	W[P5] = R1;
ffa00ec8:	11 97       	W[P2] = R1;
ffa00eca:	08 97       	W[P1] = R0;
ffa00ecc:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00ece:	20 e1 88 00 	R0 = 0x88 (X);		/*		R0=0x88(136) */
ffa00ed2:	10 97       	W[P2] = R0;
ffa00ed4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00ed6:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00ed8:	29 97       	W[P5] = R1;
ffa00eda:	0a 97       	W[P1] = R2;
ffa00edc:	10 97       	W[P2] = R0;
ffa00ede:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00ee0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900410 */
ffa00ee4:	b8 4f       	R0 <<= 0x17;
ffa00ee6:	0a e1 68 0e 	P2.L = 0xe68;		/* (3688)	P2=0xff900e68 <_printf_temp> */
ffa00eea:	10 93       	[P2] = R0;
ffa00eec:	20 e1 01 e0 	R0 = -0x1fff (X);		/*		R0=0xffffe001(-8191) */
ffa00ef0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e68 <_printf_temp> */
ffa00ef4:	50 4f       	R0 <<= 0xa;
ffa00ef6:	0a e1 6c 0e 	P2.L = 0xe6c;		/* (3692)	P2=0xff900e6c <_printf_out> */
ffa00efa:	10 93       	[P2] = R0;
ffa00efc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e6c(-4190612) */
ffa00f00:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa00f04:	50 95       	R0 = W[P2] (X);
ffa00f06:	58 4c       	BITCLR (R0, 0xb);		/* bit 11 */
ffa00f08:	10 97       	W[P2] = R0;
ffa00f0a:	41 95       	R1 = W[P0] (X);
ffa00f0c:	20 e1 00 16 	R0 = 0x1600 (X);		/*		R0=0x1600(5632) */
ffa00f10:	08 56       	R0 = R0 | R1;
ffa00f12:	00 97       	W[P0] = R0;
ffa00f14:	40 95       	R0 = W[P0] (X);
ffa00f16:	58 4c       	BITCLR (R0, 0xb);		/* bit 11 */
ffa00f18:	00 97       	W[P0] = R0;
ffa00f1a:	21 e1 ff e1 	R1 = -0x1e01 (X);		/*		R1=0xffffe1ff(-7681) */
ffa00f1e:	60 95       	R0 = W[P4] (X);
ffa00f20:	08 54       	R0 = R0 & R1;
ffa00f22:	42 6e       	P2 += -0x38;		/* (-56) */
ffa00f24:	20 97       	W[P4] = R0;
ffa00f26:	20 e1 00 14 	R0 = 0x1400 (X);		/*		R0=0x1400(5120) */
ffa00f2a:	10 97       	W[P2] = R0;
ffa00f2c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00f2e:	00 e3 87 06 	CALL 0xffa01c3c <_udelay>;
ffa00f32:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa00f34:	ff e3 f2 fb 	CALL 0xffa00718 <_oled_write>;
ffa00f38:	ff e3 66 fc 	CALL 0xffa00804 <_oled_waitbusy>;
ffa00f3c:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa00f3e:	ff e3 ed fb 	CALL 0xffa00718 <_oled_write>;
ffa00f42:	ff e3 61 fc 	CALL 0xffa00804 <_oled_waitbusy>;
ffa00f46:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00f48:	ff e3 e8 fb 	CALL 0xffa00718 <_oled_write>;
ffa00f4c:	ff e3 5c fc 	CALL 0xffa00804 <_oled_waitbusy>;
ffa00f50:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa00f52:	ff e3 e3 fb 	CALL 0xffa00718 <_oled_write>;
ffa00f56:	ff e3 57 fc 	CALL 0xffa00804 <_oled_waitbusy>;
ffa00f5a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa00f5c:	ff e3 de fb 	CALL 0xffa00718 <_oled_write>;
ffa00f60:	ff e3 52 fc 	CALL 0xffa00804 <_oled_waitbusy>;
ffa00f64:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00f66:	ff e3 d9 fb 	CALL 0xffa00718 <_oled_write>;
ffa00f6a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000f(-7340017) */
ffa00f6e:	21 e1 c4 02 	R1 = 0x2c4 (X);		/*		R1=0x2c4(708) */
ffa00f72:	00 e1 7c 00 	R0.L = 0x7c;		/* (124)	R0=0xff90007c(-7339908) */
ffa00f76:	00 e3 89 03 	CALL 0xffa01688 <_printf_int>;
ffa00f7a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa00f7e:	00 e1 84 00 	R0.L = 0x84;		/* (132)	R0=0xff900084(-7339900) */
ffa00f82:	00 e3 25 04 	CALL 0xffa017cc <_printf_str>;
ffa00f86:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900084(-7339900) */
ffa00f8a:	00 e1 88 00 	R0.L = 0x88;		/* (136)	R0=0xff900088(-7339896) */
ffa00f8e:	00 e3 1f 04 	CALL 0xffa017cc <_printf_str>;
ffa00f92:	49 e1 40 00 	P1.H = 0x40;		/* ( 64)	P1=0x40040c */
ffa00f96:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa00f98:	22 e1 ca de 	R2 = -0x2136 (X);		/*		R2=0xffffdeca(-8502) */
ffa00f9c:	23 e1 ad fb 	R3 = -0x453 (X);		/*		R3=0xfffffbad(-1107) */
ffa00fa0:	20 e1 ed c0 	R0 = -0x3f13 (X);		/*		R0=0xffffc0ed(-16147) */
ffa00fa4:	21 e1 be ba 	R1 = -0x4542 (X);		/*		R1=0xffffbabe(-17730) */
ffa00fa8:	09 e1 00 00 	P1.L = 0x0;		/* (  0)	P1=0x400000 */
ffa00fac:	b2 e0 06 10 	LSETUP(0xffa00fb0 <_main+0x154>, 0xffa00fb8 <_main+0x15c>) LC1 = P1;
ffa00fb0:	12 97       	W[P2] = R2;
ffa00fb2:	53 b4       	W[P2 + 0x2] = R3;
ffa00fb4:	90 b4       	W[P2 + 0x4] = R0;
ffa00fb6:	d1 b4       	W[P2 + 0x6] = R1;
ffa00fb8:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00fba:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00fbc:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00fbe:	02 20       	JUMP.S 0xffa00fc2 <_main+0x166>;
ffa00fc0:	45 6c       	P5 += 0x8;		/* (  8) */
ffa00fc2:	2f 95       	R7 = W[P5] (Z);
ffa00fc4:	80 e1 ca de 	R0 = 0xdeca (Z);		/*		R0=0xdeca(57034) */
ffa00fc8:	07 08       	CC = R7 == R0;
ffa00fca:	15 18       	IF CC JUMP 0xffa00ff4 <_main+0x198>;
ffa00fcc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90deca(-7282998) */
ffa00fd0:	0e 30       	R1 = R6;
ffa00fd2:	00 e1 9c 00 	R0.L = 0x9c;		/* (156)	R0=0xff90009c(-7339876) */
ffa00fd6:	00 e3 fd 02 	CALL 0xffa015d0 <_printf_hex>;
ffa00fda:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90009c(-7339876) */
ffa00fde:	00 e1 a8 00 	R0.L = 0xa8;		/* (168)	R0=0xff9000a8(-7339864) */
ffa00fe2:	0f 30       	R1 = R7;
ffa00fe4:	00 e3 f6 02 	CALL 0xffa015d0 <_printf_hex>;
ffa00fe8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a8(-7339864) */
ffa00fec:	00 e1 9c 07 	R0.L = 0x79c;		/* (1948)	R0=0xff90079c(-7338084) */
ffa00ff0:	00 e3 ee 03 	CALL 0xffa017cc <_printf_str>;
ffa00ff4:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa00ff6:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa00ffa:	08 08       	CC = R0 == R1;
ffa00ffc:	08 18       	IF CC JUMP 0xffa0100c <_main+0x1b0>;
ffa00ffe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90079c(-7338084) */
ffa01002:	00 e1 9c 00 	R0.L = 0x9c;		/* (156)	R0=0xff90009c(-7339876) */
ffa01006:	0e 30       	R1 = R6;
ffa01008:	00 e3 e4 02 	CALL 0xffa015d0 <_printf_hex>;
ffa0100c:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa0100e:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa01012:	08 08       	CC = R0 == R1;
ffa01014:	08 18       	IF CC JUMP 0xffa01024 <_main+0x1c8>;
ffa01016:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90009c(-7339876) */
ffa0101a:	00 e1 9c 00 	R0.L = 0x9c;		/* (156)	R0=0xff90009c(-7339876) */
ffa0101e:	0e 30       	R1 = R6;
ffa01020:	00 e3 d8 02 	CALL 0xffa015d0 <_printf_hex>;
ffa01024:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa01026:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa0102a:	08 08       	CC = R0 == R1;
ffa0102c:	08 18       	IF CC JUMP 0xffa0103c <_main+0x1e0>;
ffa0102e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90009c(-7339876) */
ffa01032:	00 e1 9c 00 	R0.L = 0x9c;		/* (156)	R0=0xff90009c(-7339876) */
ffa01036:	0e 30       	R1 = R6;
ffa01038:	00 e3 cc 02 	CALL 0xffa015d0 <_printf_hex>;
ffa0103c:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa01040:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa01044:	55 08       	CC = P5 == P2;
ffa01046:	0e 64       	R6 += 0x1;		/* (  1) */
ffa01048:	bc 17       	IF !CC JUMP 0xffa00fc0 <_main+0x164> (BP);
ffa0104a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90009c(-7339876) */
ffa0104e:	00 e1 b0 00 	R0.L = 0xb0;		/* (176)	R0=0xff9000b0(-7339856) */
ffa01052:	00 e3 bd 03 	CALL 0xffa017cc <_printf_str>;
ffa01056:	00 e3 df 0d 	CALL 0xffa02c14 <_bfin_EMAC_init>;
ffa0105a:	00 0c       	CC = R0 == 0x0;
ffa0105c:	f0 bb       	[FP -0x4] = R0;
ffa0105e:	7f 19       	IF CC JUMP 0xffa0135c <_main+0x500>;
ffa01060:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa01064:	0d e1 ec 0e 	P5.L = 0xeec;		/* (3820)	P5=0xff900eec <_NetOurIP> */
ffa01068:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000b0(-7339856) */
ffa0106c:	29 99       	R1 = B[P5] (Z);
ffa0106e:	00 e1 c0 00 	R0.L = 0xc0;		/* (192)	R0=0xff9000c0(-7339840) */
ffa01072:	00 e3 0b 03 	CALL 0xffa01688 <_printf_int>;
ffa01076:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000c0(-7339840) */
ffa0107a:	a9 e4 01 00 	R1 = B[P5 + 0x1] (Z);
ffa0107e:	00 e1 c4 00 	R0.L = 0xc4;		/* (196)	R0=0xff9000c4(-7339836) */
ffa01082:	00 e3 03 03 	CALL 0xffa01688 <_printf_int>;
ffa01086:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000c4(-7339836) */
ffa0108a:	a9 e4 02 00 	R1 = B[P5 + 0x2] (Z);
ffa0108e:	00 e1 c4 00 	R0.L = 0xc4;		/* (196)	R0=0xff9000c4(-7339836) */
ffa01092:	00 e3 fb 02 	CALL 0xffa01688 <_printf_int>;
ffa01096:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000c4(-7339836) */
ffa0109a:	a9 e4 03 00 	R1 = B[P5 + 0x3] (Z);
ffa0109e:	00 e1 c4 00 	R0.L = 0xc4;		/* (196)	R0=0xff9000c4(-7339836) */
ffa010a2:	00 e3 f3 02 	CALL 0xffa01688 <_printf_int>;
ffa010a6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000c4(-7339836) */
ffa010aa:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa010ae:	00 e3 8f 03 	CALL 0xffa017cc <_printf_str>;
ffa010b2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0fff8(-4128776) */
ffa010b6:	20 e1 83 38 	R0 = 0x3883 (X);		/*		R0=0x3883(14467) */
ffa010ba:	0a e1 00 32 	P2.L = 0x3200;		/* (12800)	P2=0xffc03200(-4181504) */
ffa010be:	10 97       	W[P2] = R0;
ffa010c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03200(-4181504) */
ffa010c4:	20 e1 56 fe 	R0 = -0x1aa (X);		/*		R0=0xfffffe56(-426) */
ffa010c8:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa010cc:	10 97       	W[P2] = R0;
ffa010ce:	20 e1 ab 01 	R0 = 0x1ab (X);		/*		R0=0x1ab(427) */
ffa010d2:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa010d4:	10 97       	W[P2] = R0;
ffa010d6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa010da:	20 e1 40 01 	R0 = 0x140 (X);		/*		R0=0x140(320) */
ffa010de:	0a e1 10 32 	P2.L = 0x3210;		/* (12816)	P2=0xffc03210(-4181488) */
ffa010e2:	10 97       	W[P2] = R0;
ffa010e4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03210(-4181488) */
ffa010e8:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa010ec:	50 95       	R0 = W[P2] (X);
ffa010ee:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa010f0:	10 97       	W[P2] = R0;
ffa010f2:	82 6f       	P2 += -0x10;		/* (-16) */
ffa010f4:	50 95       	R0 = W[P2] (X);
ffa010f6:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa010f8:	10 97       	W[P2] = R0;
ffa010fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa010fe:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa01102:	50 95       	R0 = W[P2] (X);
ffa01104:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa01106:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00000(-4194304) */
ffa0110a:	10 97       	W[P2] = R0;
ffa0110c:	09 e1 00 09 	P1.L = 0x900;		/* (2304)	P1=0xffc00900(-4192000) */
ffa01110:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01112:	08 97       	W[P1] = R0;
ffa01114:	24 00       	SSYNC;
ffa01116:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903204 */
ffa0111a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0111c:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_g_sampR> */
ffa01120:	10 93       	[P2] = R0;
ffa01122:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_g_sampR> */
ffa01126:	0a e1 20 0c 	P2.L = 0xc20;		/* (3104)	P2=0xff900c20 <_g_sampW> */
ffa0112a:	10 93       	[P2] = R0;
ffa0112c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c20 <_g_sampW> */
ffa01130:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_g_sampOff> */
ffa01134:	10 93       	[P2] = R0;
ffa01136:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c44 <_g_sampOff> */
ffa0113a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0113c:	0a e1 14 0c 	P2.L = 0xc14;		/* (3092)	P2=0xff900c14 <_g_sampMode> */
ffa01140:	10 9b       	B[P2] = R0;
ffa01142:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01144:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c14 <_g_sampMode> */
ffa01148:	d8 4f       	R0 <<= 0x1b;
ffa0114a:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_g_sampInc> */
ffa0114e:	10 93       	[P2] = R0;
ffa01150:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_g_sampInc> */
ffa01154:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01156:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_g_sampCh> */
ffa0115a:	10 9b       	B[P2] = R0;
ffa0115c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c34(-4191180) */
ffa01160:	e8 60       	R0 = 0x1d (X);		/*		R0=0x1d( 29) */
ffa01162:	0a e1 08 09 	P2.L = 0x908;		/* (2312)	P2=0xffc00908(-4191992) */
ffa01166:	10 97       	W[P2] = R0;
ffa01168:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa0116a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0116c:	10 97       	W[P2] = R0;
ffa0116e:	b8 60       	R0 = 0x17 (X);		/*		R0=0x17( 23) */
ffa01170:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa01172:	10 97       	W[P2] = R0;
ffa01174:	20 e1 03 4e 	R0 = 0x4e03 (X);		/*		R0=0x4e03(19971) */
ffa01178:	08 97       	W[P1] = R0;
ffa0117a:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe00908(-2094840) */
ffa0117e:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa04e03(-6271485) */
ffa01182:	00 e1 54 05 	R0.L = 0x554;		/* (1364)	R0=0xffa00554 <_audio_out>(-6290092) */
ffa01186:	0a e1 1c 20 	P2.L = 0x201c;		/* (8220)	P2=0xffe0201c(-2088932) */
ffa0118a:	10 93       	[P2] = R0;
ffa0118c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0201c(-4186084) */
ffa01190:	0a e1 0c 01 	P2.L = 0x10c;		/* (268)	P2=0xffc0010c(-4194036) */
ffa01194:	10 91       	R0 = [P2];
ffa01196:	48 4a       	BITSET (R0, 0x9);		/* bit  9 */
ffa01198:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff903204 */
ffa0119c:	10 93       	[P2] = R0;
ffa0119e:	0c e1 08 0c 	P4.L = 0xc08;		/* (3080)	P4=0xff900c08 <_g_radioChan> */
ffa011a2:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa011a4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900554(-7338668) */
ffa011a8:	00 e1 cc 00 	R0.L = 0xcc;		/* (204)	R0=0xff9000cc(-7339828) */
ffa011ac:	00 e3 10 03 	CALL 0xffa017cc <_printf_str>;
ffa011b0:	00 e3 9e 0e 	CALL 0xffa02eec <_bridge_publish>;
ffa011b4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90010c */
ffa011b8:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_wrptr> */
ffa011bc:	55 93       	[P2] = P5;
ffa011be:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c1c <_wrptr> */
ffa011c2:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_trptr> */
ffa011c6:	55 93       	[P2] = P5;
ffa011c8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c18 <_trptr> */
ffa011cc:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_dropped> */
ffa011d0:	55 93       	[P2] = P5;
ffa011d2:	40 43       	R0 = R0.B (Z);
ffa011d4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_g_dropped> */
ffa011d8:	20 93       	[P4] = R0;
ffa011da:	0a e1 10 0c 	P2.L = 0xc10;		/* (3088)	P2=0xff900c10 <_g_nextFlag> */
ffa011de:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000cc(-7339828) */
ffa011e2:	55 93       	[P2] = P5;
ffa011e4:	00 e1 e0 00 	R0.L = 0xe0;		/* (224)	R0=0xff9000e0(-7339808) */
ffa011e8:	00 e3 f2 02 	CALL 0xffa017cc <_printf_str>;
ffa011ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c10(-4191216) */
ffa011f0:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa011f4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa011f8:	10 97       	W[P2] = R0;
ffa011fa:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa011fe:	22 6c       	P2 += 0x4;		/* (  4) */
ffa01200:	10 97       	W[P2] = R0;
ffa01202:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa01206:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa01208:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0120c:	10 97       	W[P2] = R0;
ffa0120e:	24 00       	SSYNC;
ffa01210:	27 e1 7f 00 	R7 = 0x7f (X);		/*		R7=0x7f(127) */
ffa01214:	22 99       	R2 = B[P4] (Z);
ffa01216:	ba 54       	R2 = R2 & R7;
ffa01218:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa0121a:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0121c:	ff e3 1e f9 	CALL 0xffa00458 <_radio_init>;
ffa01220:	22 99       	R2 = B[P4] (Z);
ffa01222:	ba 54       	R2 = R2 & R7;
ffa01224:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa01226:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa0122a:	ff e3 17 f9 	CALL 0xffa00458 <_radio_init>;
ffa0122e:	22 99       	R2 = B[P4] (Z);
ffa01230:	ba 54       	R2 = R2 & R7;
ffa01232:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa01236:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0123a:	ff e3 0f f9 	CALL 0xffa00458 <_radio_init>;
ffa0123e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901508 */
ffa01242:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_g_sampR> */
ffa01246:	55 93       	[P2] = P5;
ffa01248:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_g_sampR> */
ffa0124c:	0a e1 20 0c 	P2.L = 0xc20;		/* (3104)	P2=0xff900c20 <_g_sampW> */
ffa01250:	55 93       	[P2] = P5;
ffa01252:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa01254:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01256:	ff e3 71 f8 	CALL 0xffa00338 <_radio_set_rx>;
ffa0125a:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa0125e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01260:	ff e3 6c f8 	CALL 0xffa00338 <_radio_set_rx>;
ffa01264:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01268:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa0126c:	ff e3 66 f8 	CALL 0xffa00338 <_radio_set_rx>;
ffa01270:	20 91       	R0 = [P4];
ffa01272:	38 4e       	R0 >>= 0x7;
ffa01274:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa01276:	45 e1 0b e5 	R5.H = 0xe50b;		/* (-6901)	R5=0xe50b01ff(-452263425) */
ffa0127a:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa0127c:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa0127e:	46 43       	R6 = R0.B (Z);
ffa01280:	05 e1 81 f7 	R5.L = 0xf781;		/* (-2175)	R5=0xe50bf781(-452200575) */
ffa01284:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c20 <_g_sampW> */
ffa01288:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_g_streamEnabled> */
ffa0128c:	10 99       	R0 = B[P2] (Z);
ffa0128e:	00 0c       	CC = R0 == 0x0;
ffa01290:	8a 1f       	IF CC JUMP 0xffa011a4 <_main+0x348> (BP);
ffa01292:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00c20(-4191200) */
ffa01296:	f0 b9       	R0 = [FP -0x4];
ffa01298:	0b e1 00 07 	P3.L = 0x700;		/* (1792)	P3=0xffc00700(-4192512) */
ffa0129c:	ff e3 2e fc 	CALL 0xffa00af8 <_eth_listen>;
ffa012a0:	58 95       	R0 = W[P3] (X);
ffa012a2:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa012a4:	3d 18       	IF CC JUMP 0xffa0131e <_main+0x4c2>;
ffa012a6:	00 00       	NOP;
ffa012a8:	00 00       	NOP;
ffa012aa:	00 00       	NOP;
ffa012ac:	58 95       	R0 = W[P3] (X);
ffa012ae:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa012b0:	41 18       	IF CC JUMP 0xffa01332 <_main+0x4d6>;
ffa012b2:	00 00       	NOP;
ffa012b4:	00 00       	NOP;
ffa012b6:	00 00       	NOP;
ffa012b8:	58 95       	R0 = W[P3] (X);
ffa012ba:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa012bc:	46 18       	IF CC JUMP 0xffa01348 <_main+0x4ec>;
ffa012be:	20 e1 28 01 	R0 = 0x128 (X);		/*		R0=0x128(296) */
ffa012c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa012c6:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa012ca:	59 95       	R1 = W[P3] (X);
ffa012cc:	08 54       	R0 = R0 & R1;
ffa012ce:	21 e1 28 01 	R1 = 0x128 (X);		/*		R1=0x128(296) */
ffa012d2:	08 08       	CC = R0 == R1;
ffa012d4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa012d6:	38 07       	IF CC R7 = R0;
ffa012d8:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa012dc:	10 97       	W[P2] = R0;
ffa012de:	ff e3 65 f7 	CALL 0xffa001a8 <_ustimer>;
ffa012e2:	08 4e       	R0 >>= 0x1;
ffa012e4:	80 c0 05 18 	A1 = R0.L * R5.L (FU);
ffa012e8:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa012ec:	81 c0 05 86 	A1 += R0.H * R5.L, A0 = R0.H * R5.H (FU);
ffa012f0:	81 c0 28 98 	A1 += R5.H * R0.L (FU);
ffa012f4:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa012f8:	0b c4 00 80 	A0 += A1;
ffa012fc:	8b c0 00 38 	R0 = A0 (FU);
ffa01300:	82 c6 a8 83 	R1 = R0 >> 0xb;
ffa01304:	0c 08       	CC = R4 == R1;
ffa01306:	bf 1b       	IF CC JUMP 0xffa01284 <_main+0x428>;
ffa01308:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0130c:	20 e1 00 80 	R0 = -0x8000 (X);		/*		R0=0xffff8000(-32768) */
ffa01310:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa01314:	82 ce 01 c8 	R4 = ROT R1 BY 0x0 || W[P2] = R0 || NOP;
ffa01318:	10 97 00 00 
ffa0131c:	b4 2f       	JUMP.S 0xffa01284 <_main+0x428>;
ffa0131e:	7a 43       	R2 = R7.B (Z);
ffa01320:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa01322:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa01324:	f6 b0       	[SP + 0xc] = R6;
ffa01326:	ff e3 13 fc 	CALL 0xffa00b4c <_getRadioPacket>;
ffa0132a:	58 95       	R0 = W[P3] (X);
ffa0132c:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0132e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01330:	c3 17       	IF !CC JUMP 0xffa012b6 <_main+0x45a> (BP);
ffa01332:	7a 43       	R2 = R7.B (Z);
ffa01334:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01338:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0133a:	f6 b0       	[SP + 0xc] = R6;
ffa0133c:	ff e3 08 fc 	CALL 0xffa00b4c <_getRadioPacket>;
ffa01340:	58 95       	R0 = W[P3] (X);
ffa01342:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa01344:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01346:	bc 17       	IF !CC JUMP 0xffa012be <_main+0x462> (BP);
ffa01348:	7a 43       	R2 = R7.B (Z);
ffa0134a:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0134e:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa01352:	f6 b0       	[SP + 0xc] = R6;
ffa01354:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01356:	ff e3 fb fb 	CALL 0xffa00b4c <_getRadioPacket>;
ffa0135a:	b2 2f       	JUMP.S 0xffa012be <_main+0x462>;
ffa0135c:	00 e3 0c 0f 	CALL 0xffa03174 <_DHCP_req>;
ffa01360:	80 2e       	JUMP.S 0xffa01060 <_main+0x204>;
	...

ffa01364 <_uart_str>:
ffa01364:	f5 05       	[--SP] = (R7:6, P5:5);
ffa01366:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa0136a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0136e:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa01372:	28 32       	P5 = R0;
ffa01374:	50 95       	R0 = W[P2] (X);
ffa01376:	c0 42       	R0 = R0.L (Z);
ffa01378:	08 0c       	CC = R0 == 0x1;
ffa0137a:	4e 18       	IF CC JUMP 0xffa01416 <_uart_str+0xb2>;
ffa0137c:	00 00       	NOP;
ffa0137e:	00 00       	NOP;
ffa01380:	00 00       	NOP;
ffa01382:	6a 99       	R2 = B[P5] (X);
ffa01384:	08 61       	R0 = 0x21 (X);		/*		R0=0x21( 33) */
ffa01386:	02 08       	CC = R2 == R0;
ffa01388:	07 18       	IF CC JUMP 0xffa01396 <_uart_str+0x32>;
ffa0138a:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa0138c:	01 e8 00 00 	UNLINK;
ffa01390:	06 30       	R0 = R6;
ffa01392:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01394:	10 00       	RTS;
ffa01396:	aa e5 01 00 	R2 = B[P5 + 0x1] (X);
ffa0139a:	13 43       	R3 = R2.B (X);
ffa0139c:	03 0c       	CC = R3 == 0x0;
ffa0139e:	f6 1b       	IF CC JUMP 0xffa0138a <_uart_str+0x26>;
ffa013a0:	15 6c       	P5 += 0x2;		/* (  2) */
ffa013a2:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa013a4:	2a 20       	JUMP.S 0xffa013f8 <_uart_str+0x94>;
ffa013a6:	07 61       	R7 = 0x20 (X);		/*		R7=0x20( 32) */
ffa013a8:	20 e1 9f ff 	R0 = -0x61 (X);		/*		R0=0xffffff9f(-97) */
ffa013ac:	02 50       	R0 = R2 + R0;
ffa013ae:	40 43       	R0 = R0.B (Z);
ffa013b0:	c9 60       	R1 = 0x19 (X);		/*		R1=0x19( 25) */
ffa013b2:	08 0a       	CC = R0 <= R1 (IU);
ffa013b4:	02 30       	R0 = R2;
ffa013b6:	80 66       	R0 += -0x30;		/* (-48) */
ffa013b8:	11 43       	R1 = R2.B (X);
ffa013ba:	40 43       	R0 = R0.B (Z);
ffa013bc:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa013be:	39 07       	IF CC R7 = R1;
ffa013c0:	10 0a       	CC = R0 <= R2 (IU);
ffa013c2:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa013c4:	39 07       	IF CC R7 = R1;
ffa013c6:	03 08       	CC = R3 == R0;
ffa013c8:	85 18       	IF CC JUMP 0xffa014d2 <_uart_str+0x16e>;
ffa013ca:	09 61       	R1 = 0x21 (X);		/*		R1=0x21( 33) */
ffa013cc:	0b 08       	CC = R3 == R1;
ffa013ce:	8c 18       	IF CC JUMP 0xffa014e6 <_uart_str+0x182>;
ffa013d0:	fa 61       	R2 = 0x3f (X);		/*		R2=0x3f( 63) */
ffa013d2:	13 08       	CC = R3 == R2;
ffa013d4:	97 18       	IF CC JUMP 0xffa01502 <_uart_str+0x19e>;
ffa013d6:	d0 61       	R0 = 0x3a (X);		/*		R0=0x3a( 58) */
ffa013d8:	03 08       	CC = R3 == R0;
ffa013da:	8e 10       	IF !CC JUMP 0xffa014f6 <_uart_str+0x192>;
ffa013dc:	20 e1 3a 02 	R0 = 0x23a (X);		/*		R0=0x23a(570) */
ffa013e0:	ff e3 9c f9 	CALL 0xffa00718 <_oled_write>;
ffa013e4:	6a 99       	R2 = B[P5] (X);
ffa013e6:	13 43       	R3 = R2.B (X);
ffa013e8:	03 0c       	CC = R3 == 0x0;
ffa013ea:	0e 64       	R6 += 0x1;		/* (  1) */
ffa013ec:	d0 1b       	IF CC JUMP 0xffa0138c <_uart_str+0x28>;
ffa013ee:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa013f2:	06 08       	CC = R6 == R0;
ffa013f4:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa013f6:	cb 1b       	IF CC JUMP 0xffa0138c <_uart_str+0x28>;
ffa013f8:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa013fa:	0b 08       	CC = R3 == R1;
ffa013fc:	3e 18       	IF CC JUMP 0xffa01478 <_uart_str+0x114>;
ffa013fe:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa01400:	03 08       	CC = R3 == R0;
ffa01402:	75 18       	IF CC JUMP 0xffa014ec <_uart_str+0x188>;
ffa01404:	20 e1 bf ff 	R0 = -0x41 (X);		/*		R0=0xffffffbf(-65) */
ffa01408:	02 50       	R0 = R2 + R0;
ffa0140a:	40 43       	R0 = R0.B (Z);
ffa0140c:	c9 60       	R1 = 0x19 (X);		/*		R1=0x19( 25) */
ffa0140e:	08 0a       	CC = R0 <= R1 (IU);
ffa01410:	cb 17       	IF !CC JUMP 0xffa013a6 <_uart_str+0x42> (BP);
ffa01412:	17 43       	R7 = R2.B (X);
ffa01414:	ca 2f       	JUMP.S 0xffa013a8 <_uart_str+0x44>;
ffa01416:	6a 99       	R2 = B[P5] (X);
ffa01418:	08 61       	R0 = 0x21 (X);		/*		R0=0x21( 33) */
ffa0141a:	02 08       	CC = R2 == R0;
ffa0141c:	76 18       	IF CC JUMP 0xffa01508 <_uart_str+0x1a4>;
ffa0141e:	00 00       	NOP;
ffa01420:	00 00       	NOP;
ffa01422:	55 32       	P2 = P5;
ffa01424:	50 99       	R0 = B[P2] (X);
ffa01426:	01 43       	R1 = R0.B (X);
ffa01428:	01 0c       	CC = R1 == 0x0;
ffa0142a:	ad 1b       	IF CC JUMP 0xffa01384 <_uart_str+0x20>;
ffa0142c:	4a 32       	P1 = P2;
ffa0142e:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa01432:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01434:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa01438:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa0143c:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
ffa0143e:	b2 e0 1b 00 	LSETUP(0xffa01442 <_uart_str+0xde>, 0xffa01474 <_uart_str+0x110>) LC1 = P0;
ffa01442:	11 08       	CC = R1 == R2;
ffa01444:	28 18       	IF CC JUMP 0xffa01494 <_uart_str+0x130>;
ffa01446:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa0144a:	00 43       	R0 = R0.B (X);
ffa0144c:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa01450:	10 97       	W[P2] = R0;
ffa01452:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa01454:	50 95       	R0 = W[P2] (X);
ffa01456:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01458:	0a 10       	IF !CC JUMP 0xffa0146c <_uart_str+0x108>;
ffa0145a:	00 00       	NOP;
ffa0145c:	00 00       	NOP;
ffa0145e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa01462:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa01466:	50 95       	R0 = W[P2] (X);
ffa01468:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0146a:	f9 1f       	IF CC JUMP 0xffa0145c <_uart_str+0xf8> (BP);
ffa0146c:	48 99       	R0 = B[P1] (X);
ffa0146e:	01 43       	R1 = R0.B (X);
ffa01470:	01 0c       	CC = R1 == 0x0;
ffa01472:	88 1b       	IF CC JUMP 0xffa01382 <_uart_str+0x1e>;
ffa01474:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01476:	86 2f       	JUMP.S 0xffa01382 <_uart_str+0x1e>;
ffa01478:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900414 */
ffa0147c:	0a e1 0c 0c 	P2.L = 0xc0c;		/* (3084)	P2=0xff900c0c <__bss_start> */
ffa01480:	10 99       	R0 = B[P2] (Z);
ffa01482:	30 48       	CC = !BITTST (R0, 0x6);		/* bit  6 */
ffa01484:	2d 1c       	IF CC JUMP 0xffa014de <_uart_str+0x17a> (BP);
ffa01486:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01488:	10 9b       	B[P2] = R0;
ffa0148a:	10 99       	R0 = B[P2] (Z);
ffa0148c:	38 4a       	BITSET (R0, 0x7);		/* bit  7 */
ffa0148e:	ff e3 45 f9 	CALL 0xffa00718 <_oled_write>;
ffa01492:	a9 2f       	JUMP.S 0xffa013e4 <_uart_str+0x80>;
ffa01494:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01496:	20 9f       	W[I0] = R0.L;
ffa01498:	02 20       	JUMP.S 0xffa0149c <_uart_str+0x138>;
ffa0149a:	00 00       	NOP;
ffa0149c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c0c(-4191220) */
ffa014a0:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa014a4:	50 95       	R0 = W[P2] (X);
ffa014a6:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa014a8:	f9 1f       	IF CC JUMP 0xffa0149a <_uart_str+0x136> (BP);
ffa014aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa014ae:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa014b0:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa014b4:	10 97       	W[P2] = R0;
ffa014b6:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa014b8:	50 95       	R0 = W[P2] (X);
ffa014ba:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa014bc:	d8 13       	IF !CC JUMP 0xffa0146c <_uart_str+0x108>;
ffa014be:	00 00       	NOP;
ffa014c0:	00 00       	NOP;
ffa014c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa014c6:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa014ca:	50 95       	R0 = W[P2] (X);
ffa014cc:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa014ce:	f9 1f       	IF CC JUMP 0xffa014c0 <_uart_str+0x15c> (BP);
ffa014d0:	ce 2f       	JUMP.S 0xffa0146c <_uart_str+0x108>;
ffa014d2:	67 61       	R7 = 0x2c (X);		/*		R7=0x2c( 44) */
ffa014d4:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa014d8:	07 50       	R0 = R7 + R0;
ffa014da:	c0 42       	R0 = R0.L (Z);
ffa014dc:	82 2f       	JUMP.S 0xffa013e0 <_uart_str+0x7c>;
ffa014de:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa014e2:	10 9b       	B[P2] = R0;
ffa014e4:	d3 2f       	JUMP.S 0xffa0148a <_uart_str+0x126>;
ffa014e6:	20 e1 21 02 	R0 = 0x221 (X);		/*		R0=0x221(545) */
ffa014ea:	7b 2f       	JUMP.S 0xffa013e0 <_uart_str+0x7c>;
ffa014ec:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900414 */
ffa014f0:	0a e1 0c 0c 	P2.L = 0xc0c;		/* (3084)	P2=0xff900c0c <__bss_start> */
ffa014f4:	cb 2f       	JUMP.S 0xffa0148a <_uart_str+0x126>;
ffa014f6:	71 61       	R1 = 0x2e (X);		/*		R1=0x2e( 46) */
ffa014f8:	0b 08       	CC = R3 == R1;
ffa014fa:	ed 13       	IF !CC JUMP 0xffa014d4 <_uart_str+0x170>;
ffa014fc:	20 e1 2e 02 	R0 = 0x22e (X);		/*		R0=0x22e(558) */
ffa01500:	70 2f       	JUMP.S 0xffa013e0 <_uart_str+0x7c>;
ffa01502:	20 e1 3f 02 	R0 = 0x23f (X);		/*		R0=0x23f(575) */
ffa01506:	6d 2f       	JUMP.S 0xffa013e0 <_uart_str+0x7c>;
ffa01508:	55 32       	P2 = P5;
ffa0150a:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0150c:	8c 2f       	JUMP.S 0xffa01424 <_uart_str+0xc0>;
	...

ffa01510 <_printf_newline>:
ffa01510:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01514:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90023f(-7339457) */
ffa01518:	00 e1 9c 07 	R0.L = 0x79c;		/* (1948)	R0=0xff90079c(-7338084) */
ffa0151c:	01 e8 00 00 	UNLINK;
ffa01520:	ff e2 22 ff 	JUMP.L 0xffa01364 <_uart_str>;

ffa01524 <_printf_hex_byte>:
ffa01524:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01526:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0152a:	28 32       	P5 = R0;
ffa0152c:	39 30       	R7 = R1;
ffa0152e:	00 e3 b7 01 	CALL 0xffa0189c <_strlen_>;
ffa01532:	10 30       	R2 = R0;
ffa01534:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa01538:	02 09       	CC = R2 <= R0;
ffa0153a:	41 10       	IF !CC JUMP 0xffa015bc <_printf_hex_byte+0x98>;
ffa0153c:	02 0d       	CC = R2 <= 0x0;
ffa0153e:	44 18       	IF CC JUMP 0xffa015c6 <_printf_hex_byte+0xa2>;
ffa01540:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa01544:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01546:	08 e1 6c 0e 	P0.L = 0xe6c;		/* (3692)	P0=0xff900e6c <_printf_out> */
ffa0154a:	09 32       	P1 = R1;
ffa0154c:	42 91       	P2 = [P0];
ffa0154e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01550:	68 98       	R0 = B[P5++] (X);
ffa01552:	0a 08       	CC = R2 == R1;
ffa01554:	8a 5a       	P2 = P2 + P1;
ffa01556:	10 9b       	B[P2] = R0;
ffa01558:	f9 17       	IF !CC JUMP 0xffa0154a <_printf_hex_byte+0x26> (BP);
ffa0155a:	0a 32       	P1 = R2;
ffa0155c:	42 91       	P2 = [P0];
ffa0155e:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01560:	22 32       	P4 = R2;
ffa01562:	79 43       	R1 = R7.B (Z);
ffa01564:	8a 5a       	P2 = P2 + P1;
ffa01566:	10 9b       	B[P2] = R0;
ffa01568:	42 91       	P2 = [P0];
ffa0156a:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa0156c:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01570:	11 6c       	P1 += 0x2;		/* (  2) */
ffa01572:	a2 5a       	P2 = P2 + P4;
ffa01574:	10 9b       	B[P2] = R0;
ffa01576:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa01578:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa0157a:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa0157c:	01 30       	R0 = R1;
ffa0157e:	10 40       	R0 >>>= R2;
ffa01580:	18 54       	R0 = R0 & R3;
ffa01582:	38 09       	CC = R0 <= R7;
ffa01584:	1a 1c       	IF CC JUMP 0xffa015b8 <_printf_hex_byte+0x94> (BP);
ffa01586:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01588:	42 91       	P2 = [P0];
ffa0158a:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa0158c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa01590:	22 0c       	CC = R2 == -0x4;
ffa01592:	8a 5a       	P2 = P2 + P1;
ffa01594:	0d e1 6c 0e 	P5.L = 0xe6c;		/* (3692)	P5=0xff900e6c <_printf_out> */
ffa01598:	10 9b       	B[P2] = R0;
ffa0159a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0159c:	f0 17       	IF !CC JUMP 0xffa0157c <_printf_hex_byte+0x58> (BP);
ffa0159e:	6a 91       	P2 = [P5];
ffa015a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa015a2:	94 5a       	P2 = P4 + P2;
ffa015a4:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa015a8:	28 91       	R0 = [P5];
ffa015aa:	ff e3 dd fe 	CALL 0xffa01364 <_uart_str>;
ffa015ae:	01 e8 00 00 	UNLINK;
ffa015b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa015b4:	bc 05       	(R7:7, P5:4) = [SP++];
ffa015b6:	10 00       	RTS;
ffa015b8:	80 65       	R0 += 0x30;		/* ( 48) */
ffa015ba:	e7 2f       	JUMP.S 0xffa01588 <_printf_hex_byte+0x64>;
ffa015bc:	01 e8 00 00 	UNLINK;
ffa015c0:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa015c2:	bc 05       	(R7:7, P5:4) = [SP++];
ffa015c4:	10 00       	RTS;
ffa015c6:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e6c <_printf_out> */
ffa015ca:	08 e1 6c 0e 	P0.L = 0xe6c;		/* (3692)	P0=0xff900e6c <_printf_out> */
ffa015ce:	c6 2f       	JUMP.S 0xffa0155a <_printf_hex_byte+0x36>;

ffa015d0 <_printf_hex>:
ffa015d0:	fb 05       	[--SP] = (R7:7, P5:3);
ffa015d2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa015d6:	28 32       	P5 = R0;
ffa015d8:	39 30       	R7 = R1;
ffa015da:	00 e3 61 01 	CALL 0xffa0189c <_strlen_>;
ffa015de:	10 30       	R2 = R0;
ffa015e0:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa015e4:	02 09       	CC = R2 <= R0;
ffa015e6:	47 10       	IF !CC JUMP 0xffa01674 <_printf_hex+0xa4>;
ffa015e8:	02 0d       	CC = R2 <= 0x0;
ffa015ea:	4a 18       	IF CC JUMP 0xffa0167e <_printf_hex+0xae>;
ffa015ec:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900900 */
ffa015f0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa015f2:	09 e1 6c 0e 	P1.L = 0xe6c;		/* (3692)	P1=0xff900e6c <_printf_out> */
ffa015f6:	01 32       	P0 = R1;
ffa015f8:	4a 91       	P2 = [P1];
ffa015fa:	09 64       	R1 += 0x1;		/* (  1) */
ffa015fc:	68 98       	R0 = B[P5++] (X);
ffa015fe:	0a 08       	CC = R2 == R1;
ffa01600:	82 5a       	P2 = P2 + P0;
ffa01602:	10 9b       	B[P2] = R0;
ffa01604:	f9 17       	IF !CC JUMP 0xffa015f6 <_printf_hex+0x26> (BP);
ffa01606:	02 32       	P0 = R2;
ffa01608:	4a 91       	P2 = [P1];
ffa0160a:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0160c:	1a 32       	P3 = R2;
ffa0160e:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa01610:	82 5a       	P2 = P2 + P0;
ffa01612:	10 9b       	B[P2] = R0;
ffa01614:	4a 91       	P2 = [P1];
ffa01616:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa01618:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0161c:	10 6c       	P0 += 0x2;		/* (  2) */
ffa0161e:	9a 5a       	P2 = P2 + P3;
ffa01620:	10 9b       	B[P2] = R0;
ffa01622:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa01624:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa01626:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa01628:	b2 e0 10 50 	LSETUP(0xffa0162c <_printf_hex+0x5c>, 0xffa01648 <_printf_hex+0x78>) LC1 = P5;
ffa0162c:	07 30       	R0 = R7;
ffa0162e:	08 40       	R0 >>>= R1;
ffa01630:	10 54       	R0 = R0 & R2;
ffa01632:	18 09       	CC = R0 <= R3;
ffa01634:	1e 1c       	IF CC JUMP 0xffa01670 <_printf_hex+0xa0> (BP);
ffa01636:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01638:	4a 91       	P2 = [P1];
ffa0163a:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c08 <_g_radioChan> */
ffa0163e:	0c e1 6c 0e 	P4.L = 0xe6c;		/* (3692)	P4=0xff900e6c <_printf_out> */
ffa01642:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa01644:	82 5a       	P2 = P2 + P0;
ffa01646:	10 9b       	B[P2] = R0;
ffa01648:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0164a:	62 91       	P2 = [P4];
ffa0164c:	4b 32       	P1 = P3;
ffa0164e:	49 6c       	P1 += 0x9;		/* (  9) */
ffa01650:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01652:	8a 5a       	P2 = P2 + P1;
ffa01654:	10 9b       	B[P2] = R0;
ffa01656:	62 91       	P2 = [P4];
ffa01658:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0165a:	8a 5a       	P2 = P2 + P1;
ffa0165c:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa01660:	20 91       	R0 = [P4];
ffa01662:	ff e3 81 fe 	CALL 0xffa01364 <_uart_str>;
ffa01666:	01 e8 00 00 	UNLINK;
ffa0166a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0166c:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0166e:	10 00       	RTS;
ffa01670:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01672:	e3 2f       	JUMP.S 0xffa01638 <_printf_hex+0x68>;
ffa01674:	01 e8 00 00 	UNLINK;
ffa01678:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0167a:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0167c:	10 00       	RTS;
ffa0167e:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e6c <_printf_out> */
ffa01682:	09 e1 6c 0e 	P1.L = 0xe6c;		/* (3692)	P1=0xff900e6c <_printf_out> */
ffa01686:	c0 2f       	JUMP.S 0xffa01606 <_printf_hex+0x36>;

ffa01688 <_printf_int>:
ffa01688:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0168a:	01 0c       	CC = R1 == 0x0;
ffa0168c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01690:	28 32       	P5 = R0;
ffa01692:	39 30       	R7 = R1;
ffa01694:	41 14       	IF !CC JUMP 0xffa01716 <_printf_int+0x8e> (BP);
ffa01696:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900700 */
ffa0169a:	0b e1 68 0e 	P3.L = 0xe68;		/* (3688)	P3=0xff900e68 <_printf_temp> */
ffa0169e:	5a 91       	P2 = [P3];
ffa016a0:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa016a2:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa016a4:	10 9b       	B[P2] = R0;
ffa016a6:	45 30       	R0 = P5;
ffa016a8:	00 e3 fa 00 	CALL 0xffa0189c <_strlen_>;
ffa016ac:	c6 50       	R3 = R6 + R0;
ffa016ae:	10 30       	R2 = R0;
ffa016b0:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa016b4:	03 09       	CC = R3 <= R0;
ffa016b6:	4e 10       	IF !CC JUMP 0xffa01752 <_printf_int+0xca>;
ffa016b8:	02 0d       	CC = R2 <= 0x0;
ffa016ba:	79 18       	IF CC JUMP 0xffa017ac <_printf_int+0x124>;
ffa016bc:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e6c <_printf_out> */
ffa016c0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa016c2:	08 e1 6c 0e 	P0.L = 0xe6c;		/* (3692)	P0=0xff900e6c <_printf_out> */
ffa016c6:	09 32       	P1 = R1;
ffa016c8:	42 91       	P2 = [P0];
ffa016ca:	09 64       	R1 += 0x1;		/* (  1) */
ffa016cc:	68 98       	R0 = B[P5++] (X);
ffa016ce:	0a 08       	CC = R2 == R1;
ffa016d0:	8a 5a       	P2 = P2 + P1;
ffa016d2:	10 9b       	B[P2] = R0;
ffa016d4:	f9 17       	IF !CC JUMP 0xffa016c6 <_printf_int+0x3e> (BP);
ffa016d6:	06 0d       	CC = R6 <= 0x0;
ffa016d8:	12 18       	IF CC JUMP 0xffa016fc <_printf_int+0x74>;
ffa016da:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa016dc:	00 91       	R0 = [P0];
ffa016de:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa016e2:	5a 91 00 00 
ffa016e6:	08 50       	R0 = R0 + R1;
ffa016e8:	08 32       	P1 = R0;
ffa016ea:	0e 52       	R0 = R6 - R1;
ffa016ec:	28 32       	P5 = R0;
ffa016ee:	09 64       	R1 += 0x1;		/* (  1) */
ffa016f0:	0e 08       	CC = R6 == R1;
ffa016f2:	aa 5a       	P2 = P2 + P5;
ffa016f4:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa016f8:	08 9b       	B[P1] = R0;
ffa016fa:	f1 17       	IF !CC JUMP 0xffa016dc <_printf_int+0x54> (BP);
ffa016fc:	0b 32       	P1 = R3;
ffa016fe:	42 91       	P2 = [P0];
ffa01700:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01702:	91 5a       	P2 = P1 + P2;
ffa01704:	10 9b       	B[P2] = R0;
ffa01706:	00 91       	R0 = [P0];
ffa01708:	ff e3 2e fe 	CALL 0xffa01364 <_uart_str>;
ffa0170c:	01 e8 00 00 	UNLINK;
ffa01710:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01712:	b3 05       	(R7:6, P5:3) = [SP++];
ffa01714:	10 00       	RTS;
ffa01716:	01 0d       	CC = R1 <= 0x0;
ffa01718:	22 18       	IF CC JUMP 0xffa0175c <_printf_int+0xd4>;
ffa0171a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e68 <_printf_temp> */
ffa0171e:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01720:	0b e1 68 0e 	P3.L = 0xe68;		/* (3688)	P3=0xff900e68 <_printf_temp> */
ffa01724:	05 20       	JUMP.S 0xffa0172e <_printf_int+0xa6>;
ffa01726:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa0172a:	06 08       	CC = R6 == R0;
ffa0172c:	bd 1b       	IF CC JUMP 0xffa016a6 <_printf_int+0x1e>;
ffa0172e:	07 30       	R0 = R7;
ffa01730:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01732:	00 e3 89 00 	CALL 0xffa01844 <_mod>;
ffa01736:	0e 32       	P1 = R6;
ffa01738:	5a 91       	P2 = [P3];
ffa0173a:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0173c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0173e:	0e 64       	R6 += 0x1;		/* (  1) */
ffa01740:	8a 5a       	P2 = P2 + P1;
ffa01742:	10 9b       	B[P2] = R0;
ffa01744:	07 30       	R0 = R7;
ffa01746:	00 e3 71 00 	CALL 0xffa01828 <_div>;
ffa0174a:	00 0d       	CC = R0 <= 0x0;
ffa0174c:	38 30       	R7 = R0;
ffa0174e:	ec 17       	IF !CC JUMP 0xffa01726 <_printf_int+0x9e> (BP);
ffa01750:	ab 2f       	JUMP.S 0xffa016a6 <_printf_int+0x1e>;
ffa01752:	01 e8 00 00 	UNLINK;
ffa01756:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01758:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0175a:	10 00       	RTS;
ffa0175c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0175e:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa01760:	f8 4f       	R0 <<= 0x1f;
ffa01762:	f8 53       	R7 = R0 - R7;
ffa01764:	07 0d       	CC = R7 <= 0x0;
ffa01766:	2c 18       	IF CC JUMP 0xffa017be <_printf_int+0x136>;
ffa01768:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e68 <_printf_temp> */
ffa0176c:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa0176e:	0b e1 68 0e 	P3.L = 0xe68;		/* (3688)	P3=0xff900e68 <_printf_temp> */
ffa01772:	05 20       	JUMP.S 0xffa0177c <_printf_int+0xf4>;
ffa01774:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa01778:	4c 08       	CC = P4 == P1;
ffa0177a:	1e 18       	IF CC JUMP 0xffa017b6 <_printf_int+0x12e>;
ffa0177c:	07 30       	R0 = R7;
ffa0177e:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01780:	00 e3 62 00 	CALL 0xffa01844 <_mod>;
ffa01784:	5a 91       	P2 = [P3];
ffa01786:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01788:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0178a:	a2 5a       	P2 = P2 + P4;
ffa0178c:	10 9b       	B[P2] = R0;
ffa0178e:	07 30       	R0 = R7;
ffa01790:	00 e3 4c 00 	CALL 0xffa01828 <_div>;
ffa01794:	00 0d       	CC = R0 <= 0x0;
ffa01796:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa01798:	38 30       	R7 = R0;
ffa0179a:	ed 17       	IF !CC JUMP 0xffa01774 <_printf_int+0xec> (BP);
ffa0179c:	74 30       	R6 = P4;
ffa0179e:	4c 32       	P1 = P4;
ffa017a0:	0e 64       	R6 += 0x1;		/* (  1) */
ffa017a2:	5a 91       	P2 = [P3];
ffa017a4:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa017a6:	8a 5a       	P2 = P2 + P1;
ffa017a8:	10 9b       	B[P2] = R0;
ffa017aa:	7e 2f       	JUMP.S 0xffa016a6 <_printf_int+0x1e>;
ffa017ac:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e6c <_printf_out> */
ffa017b0:	08 e1 6c 0e 	P0.L = 0xe6c;		/* (3692)	P0=0xff900e6c <_printf_out> */
ffa017b4:	91 2f       	JUMP.S 0xffa016d6 <_printf_int+0x4e>;
ffa017b6:	4c 32       	P1 = P4;
ffa017b8:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa017bc:	f3 2f       	JUMP.S 0xffa017a2 <_printf_int+0x11a>;
ffa017be:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e68 <_printf_temp> */
ffa017c2:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa017c4:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa017c6:	0b e1 68 0e 	P3.L = 0xe68;		/* (3688)	P3=0xff900e68 <_printf_temp> */
ffa017ca:	ec 2f       	JUMP.S 0xffa017a2 <_printf_int+0x11a>;

ffa017cc <_printf_str>:
ffa017cc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa017d0:	01 e8 00 00 	UNLINK;
ffa017d4:	ff e2 c8 fd 	JUMP.L 0xffa01364 <_uart_str>;

ffa017d8 <_printf_ip>:
ffa017d8:	70 05       	[--SP] = (R7:6);
ffa017da:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa017de:	39 30       	R7 = R1;
ffa017e0:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa017e4:	49 43       	R1 = R1.B (Z);
ffa017e6:	ff e3 51 ff 	CALL 0xffa01688 <_printf_int>;
ffa017ea:	06 e1 f0 00 	R6.L = 0xf0;		/* (240)	R6=0xff9000f0(-7339792) */
ffa017ee:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa017f2:	49 43       	R1 = R1.B (Z);
ffa017f4:	06 30       	R0 = R6;
ffa017f6:	ff e3 49 ff 	CALL 0xffa01688 <_printf_int>;
ffa017fa:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa017fe:	49 43       	R1 = R1.B (Z);
ffa01800:	06 30       	R0 = R6;
ffa01802:	c7 4e       	R7 >>= 0x18;
ffa01804:	ff e3 42 ff 	CALL 0xffa01688 <_printf_int>;
ffa01808:	0f 30       	R1 = R7;
ffa0180a:	06 30       	R0 = R6;
ffa0180c:	ff e3 3e ff 	CALL 0xffa01688 <_printf_int>;
ffa01810:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa01814:	00 e1 6c 05 	R0.L = 0x56c;		/* (1388)	R0=0xff90056c(-7338644) */
ffa01818:	ff e3 da ff 	CALL 0xffa017cc <_printf_str>;
ffa0181c:	01 e8 00 00 	UNLINK;
ffa01820:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01822:	30 05       	(R7:6) = [SP++];
ffa01824:	10 00       	RTS;
	...

ffa01828 <_div>:
ffa01828:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0182c:	08 4f       	R0 <<= 0x1;
ffa0182e:	48 42       	DIVS (R0, R1);
ffa01830:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa01832:	b2 e0 03 20 	LSETUP(0xffa01836 <_div+0xe>, 0xffa01838 <_div+0x10>) LC1 = P2;
ffa01836:	08 42       	DIVQ (R0, R1);
ffa01838:	00 00       	NOP;
ffa0183a:	80 42       	R0 = R0.L (X);
ffa0183c:	01 e8 00 00 	UNLINK;
ffa01840:	10 00       	RTS;
	...

ffa01844 <_mod>:
ffa01844:	70 05       	[--SP] = (R7:6);
ffa01846:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0184a:	30 30       	R6 = R0;
ffa0184c:	39 30       	R7 = R1;
ffa0184e:	ff e3 ed ff 	CALL 0xffa01828 <_div>;
ffa01852:	c7 40       	R7 *= R0;
ffa01854:	01 e8 00 00 	UNLINK;
ffa01858:	be 53       	R6 = R6 - R7;
ffa0185a:	06 30       	R0 = R6;
ffa0185c:	30 05       	(R7:6) = [SP++];
ffa0185e:	10 00       	RTS;

ffa01860 <_memcpy_>:
ffa01860:	02 0d       	CC = R2 <= 0x0;
ffa01862:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01866:	08 32       	P1 = R0;
ffa01868:	11 32       	P2 = R1;
ffa0186a:	08 18       	IF CC JUMP 0xffa0187a <_memcpy_+0x1a>;
ffa0186c:	00 00       	NOP;
ffa0186e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01870:	09 64       	R1 += 0x1;		/* (  1) */
ffa01872:	48 98       	R0 = B[P1++] (X);
ffa01874:	0a 08       	CC = R2 == R1;
ffa01876:	10 9a       	B[P2++] = R0;
ffa01878:	fc 17       	IF !CC JUMP 0xffa01870 <_memcpy_+0x10> (BP);
ffa0187a:	01 e8 00 00 	UNLINK;
ffa0187e:	10 00       	RTS;

ffa01880 <_memset_>:
ffa01880:	02 0d       	CC = R2 <= 0x0;
ffa01882:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01886:	10 32       	P2 = R0;
ffa01888:	06 18       	IF CC JUMP 0xffa01894 <_memset_+0x14>;
ffa0188a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0188c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0188e:	02 08       	CC = R2 == R0;
ffa01890:	11 9a       	B[P2++] = R1;
ffa01892:	fd 17       	IF !CC JUMP 0xffa0188c <_memset_+0xc> (BP);
ffa01894:	01 e8 00 00 	UNLINK;
ffa01898:	10 00       	RTS;
	...

ffa0189c <_strlen_>:
ffa0189c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa018a0:	10 32       	P2 = R0;
ffa018a2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa018a4:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa018a8:	b2 e0 06 10 	LSETUP(0xffa018ac <_strlen_+0x10>, 0xffa018b4 <_strlen_+0x18>) LC1 = P1;
ffa018ac:	50 99       	R0 = B[P2] (X);
ffa018ae:	00 0c       	CC = R0 == 0x0;
ffa018b0:	04 18       	IF CC JUMP 0xffa018b8 <_strlen_+0x1c>;
ffa018b2:	09 64       	R1 += 0x1;		/* (  1) */
ffa018b4:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa018b6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa018b8:	01 30       	R0 = R1;
ffa018ba:	01 e8 00 00 	UNLINK;
ffa018be:	10 00       	RTS;

ffa018c0 <_strcpy_>:
ffa018c0:	12 32       	P2 = R2;
ffa018c2:	c5 04       	[--SP] = (P5:5);
ffa018c4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa018c8:	29 32       	P5 = R1;
ffa018ca:	00 32       	P0 = R0;
ffa018cc:	51 99       	R1 = B[P2] (X);
ffa018ce:	08 43       	R0 = R1.B (X);
ffa018d0:	00 0c       	CC = R0 == 0x0;
ffa018d2:	17 18       	IF CC JUMP 0xffa01900 <_strcpy_+0x40>;
ffa018d4:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa018d6:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa018d8:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa018dc:	b2 e0 09 10 	LSETUP(0xffa018e0 <_strcpy_+0x20>, 0xffa018ee <_strcpy_+0x2e>) LC1 = P1;
ffa018e0:	01 9a       	B[P0++] = R1;
ffa018e2:	51 99       	R1 = B[P2] (X);
ffa018e4:	08 43       	R0 = R1.B (X);
ffa018e6:	00 0c       	CC = R0 == 0x0;
ffa018e8:	0a 64       	R2 += 0x1;		/* (  1) */
ffa018ea:	03 18       	IF CC JUMP 0xffa018f0 <_strcpy_+0x30>;
ffa018ec:	00 00       	NOP;
ffa018ee:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa018f0:	01 e8 00 00 	UNLINK;
ffa018f4:	28 91       	R0 = [P5];
ffa018f6:	10 50       	R0 = R0 + R2;
ffa018f8:	28 93       	[P5] = R0;
ffa018fa:	40 30       	R0 = P0;
ffa018fc:	85 04       	(P5:5) = [SP++];
ffa018fe:	10 00       	RTS;
ffa01900:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01902:	f7 2f       	JUMP.S 0xffa018f0 <_strcpy_+0x30>;

ffa01904 <_strprepend>:
ffa01904:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01906:	21 32       	P4 = R1;
ffa01908:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0190c:	38 30       	R7 = R0;
ffa0190e:	02 30       	R0 = R2;
ffa01910:	2a 32       	P5 = R2;
ffa01912:	ff e3 c5 ff 	CALL 0xffa0189c <_strlen_>;
ffa01916:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa0191a:	20 91 00 00 
ffa0191e:	02 0d       	CC = R2 <= 0x0;
ffa01920:	0a 18       	IF CC JUMP 0xffa01934 <_strprepend+0x30>;
ffa01922:	07 52       	R0 = R7 - R0;
ffa01924:	10 32       	P2 = R0;
ffa01926:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01928:	09 64       	R1 += 0x1;		/* (  1) */
ffa0192a:	68 98       	R0 = B[P5++] (X);
ffa0192c:	0a 08       	CC = R2 == R1;
ffa0192e:	10 9a       	B[P2++] = R0;
ffa01930:	fc 17       	IF !CC JUMP 0xffa01928 <_strprepend+0x24> (BP);
ffa01932:	20 91       	R0 = [P4];
ffa01934:	01 e8 00 00 	UNLINK;
ffa01938:	07 52       	R0 = R7 - R0;
ffa0193a:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0193c:	10 00       	RTS;
	...

ffa01940 <_strcmp>:
ffa01940:	10 32       	P2 = R0;
ffa01942:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01946:	01 32       	P0 = R1;
ffa01948:	51 99       	R1 = B[P2] (X);
ffa0194a:	01 0c       	CC = R1 == 0x0;
ffa0194c:	1b 18       	IF CC JUMP 0xffa01982 <_strcmp+0x42>;
ffa0194e:	00 00       	NOP;
ffa01950:	00 00       	NOP;
ffa01952:	00 00       	NOP;
ffa01954:	40 99       	R0 = B[P0] (X);
ffa01956:	00 0c       	CC = R0 == 0x0;
ffa01958:	15 18       	IF CC JUMP 0xffa01982 <_strcmp+0x42>;
ffa0195a:	01 08       	CC = R1 == R0;
ffa0195c:	1c 10       	IF !CC JUMP 0xffa01994 <_strcmp+0x54>;
ffa0195e:	4a 32       	P1 = P2;
ffa01960:	50 32       	P2 = P0;
ffa01962:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01964:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01966:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa0196a:	49 99       	R1 = B[P1] (X);
ffa0196c:	01 0c       	CC = R1 == 0x0;
ffa0196e:	0a 18       	IF CC JUMP 0xffa01982 <_strcmp+0x42>;
ffa01970:	00 00       	NOP;
ffa01972:	00 00       	NOP;
ffa01974:	00 00       	NOP;
ffa01976:	50 99       	R0 = B[P2] (X);
ffa01978:	00 0c       	CC = R0 == 0x0;
ffa0197a:	04 18       	IF CC JUMP 0xffa01982 <_strcmp+0x42>;
ffa0197c:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa0197e:	40 0c       	CC = P0 == 0x0;
ffa01980:	05 10       	IF !CC JUMP 0xffa0198a <_strcmp+0x4a>;
ffa01982:	01 e8 00 00 	UNLINK;
ffa01986:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01988:	10 00       	RTS;
ffa0198a:	01 08       	CC = R1 == R0;
ffa0198c:	04 10       	IF !CC JUMP 0xffa01994 <_strcmp+0x54>;
ffa0198e:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01990:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01992:	ec 2f       	JUMP.S 0xffa0196a <_strcmp+0x2a>;
ffa01994:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01996:	01 e8 00 00 	UNLINK;
ffa0199a:	10 00       	RTS;

ffa0199c <_substr>:
ffa0199c:	f4 05       	[--SP] = (R7:6, P5:4);
ffa0199e:	20 32       	P4 = R0;
ffa019a0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa019a4:	11 32       	P2 = R1;
ffa019a6:	32 30       	R6 = R2;
ffa019a8:	61 99       	R1 = B[P4] (X);
ffa019aa:	01 0c       	CC = R1 == 0x0;
ffa019ac:	14 18       	IF CC JUMP 0xffa019d4 <_substr+0x38>;
ffa019ae:	00 00       	NOP;
ffa019b0:	00 00       	NOP;
ffa019b2:	00 00       	NOP;
ffa019b4:	50 99       	R0 = B[P2] (X);
ffa019b6:	00 0c       	CC = R0 == 0x0;
ffa019b8:	0e 18       	IF CC JUMP 0xffa019d4 <_substr+0x38>;
ffa019ba:	02 0d       	CC = R2 <= 0x0;
ffa019bc:	0c 18       	IF CC JUMP 0xffa019d4 <_substr+0x38>;
ffa019be:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa019c0:	01 08       	CC = R1 == R0;
ffa019c2:	0f 18       	IF CC JUMP 0xffa019e0 <_substr+0x44>;
ffa019c4:	00 00       	NOP;
ffa019c6:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa019c8:	0b 64       	R3 += 0x1;		/* (  1) */
ffa019ca:	50 99       	R0 = B[P2] (X);
ffa019cc:	00 0c       	CC = R0 == 0x0;
ffa019ce:	03 18       	IF CC JUMP 0xffa019d4 <_substr+0x38>;
ffa019d0:	1e 09       	CC = R6 <= R3;
ffa019d2:	f7 17       	IF !CC JUMP 0xffa019c0 <_substr+0x24> (BP);
ffa019d4:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa019d6:	01 e8 00 00 	UNLINK;
ffa019da:	40 30       	R0 = P0;
ffa019dc:	b4 05       	(R7:6, P5:4) = [SP++];
ffa019de:	10 00       	RTS;
ffa019e0:	52 30       	R2 = P2;
ffa019e2:	3b 30       	R7 = R3;
ffa019e4:	0a 64       	R2 += 0x1;		/* (  1) */
ffa019e6:	0f 64       	R7 += 0x1;		/* (  1) */
ffa019e8:	12 32       	P2 = R2;
ffa019ea:	07 32       	P0 = R7;
ffa019ec:	4c 32       	P1 = P4;
ffa019ee:	6c 32       	P5 = P4;
ffa019f0:	09 6c       	P1 += 0x1;		/* (  1) */
ffa019f2:	15 6c       	P5 += 0x2;		/* (  2) */
ffa019f4:	02 20       	JUMP.S 0xffa019f8 <_substr+0x5c>;
ffa019f6:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa019f8:	4b 99       	R3 = B[P1] (X);
ffa019fa:	50 99       	R0 = B[P2] (X);
ffa019fc:	03 08       	CC = R3 == R0;
ffa019fe:	0e 10       	IF !CC JUMP 0xffa01a1a <_substr+0x7e>;
ffa01a00:	03 0c       	CC = R3 == 0x0;
ffa01a02:	0c 18       	IF CC JUMP 0xffa01a1a <_substr+0x7e>;
ffa01a04:	00 00       	NOP;
ffa01a06:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01a08:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01a0a:	68 98       	R0 = B[P5++] (X);
ffa01a0c:	00 0c       	CC = R0 == 0x0;
ffa01a0e:	f4 17       	IF !CC JUMP 0xffa019f6 <_substr+0x5a> (BP);
ffa01a10:	01 e8 00 00 	UNLINK;
ffa01a14:	40 30       	R0 = P0;
ffa01a16:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01a18:	10 00       	RTS;
ffa01a1a:	12 32       	P2 = R2;
ffa01a1c:	1f 30       	R3 = R7;
ffa01a1e:	d6 2f       	JUMP.S 0xffa019ca <_substr+0x2e>;

ffa01a20 <_sprintf_int>:
ffa01a20:	fb 05       	[--SP] = (R7:7, P5:3);
ffa01a22:	01 0c       	CC = R1 == 0x0;
ffa01a24:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01a28:	00 34       	I0 = R0;
ffa01a2a:	11 30       	R2 = R1;
ffa01a2c:	1a 14       	IF !CC JUMP 0xffa01a60 <_sprintf_int+0x40> (BP);
ffa01a2e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e68 <_printf_temp> */
ffa01a32:	0b e1 68 0e 	P3.L = 0xe68;		/* (3688)	P3=0xff900e68 <_printf_temp> */
ffa01a36:	5a 91       	P2 = [P3];
ffa01a38:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01a3a:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01a3c:	10 9b       	B[P2] = R0;
ffa01a3e:	88 32       	P1 = I0;
ffa01a40:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a42:	0b 52       	R0 = R3 - R1;
ffa01a44:	00 32       	P0 = R0;
ffa01a46:	5a 91       	P2 = [P3];
ffa01a48:	09 64       	R1 += 0x1;		/* (  1) */
ffa01a4a:	99 08       	CC = R1 < R3;
ffa01a4c:	82 5a       	P2 = P2 + P0;
ffa01a4e:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa01a52:	08 9a       	B[P1++] = R0;
ffa01a54:	f7 1f       	IF CC JUMP 0xffa01a42 <_sprintf_int+0x22> (BP);
ffa01a56:	01 e8 00 00 	UNLINK;
ffa01a5a:	03 30       	R0 = R3;
ffa01a5c:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01a5e:	10 00       	RTS;
ffa01a60:	01 0d       	CC = R1 <= 0x0;
ffa01a62:	2d 18       	IF CC JUMP 0xffa01abc <_sprintf_int+0x9c>;
ffa01a64:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e68 <_printf_temp> */
ffa01a68:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa01a6c:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01a6e:	0b e1 68 0e 	P3.L = 0xe68;		/* (3688)	P3=0xff900e68 <_printf_temp> */
ffa01a72:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa01a76:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa01a78:	b2 e0 20 50 	LSETUP(0xffa01a7c <_sprintf_int+0x5c>, 0xffa01ab8 <_sprintf_int+0x98>) LC1 = P5;
ffa01a7c:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa01a80:	59 91 00 00 
ffa01a84:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01a88:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa01a8c:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa01a90:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01a94:	0b c4 00 00 	R0 = (A0 += A1);
ffa01a98:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa01a9c:	10 4d       	R0 >>>= 0x2;
ffa01a9e:	08 52       	R0 = R0 - R1;
ffa01aa0:	00 32       	P0 = R0;
ffa01aa2:	13 32       	P2 = R3;
ffa01aa4:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01aa6:	40 0d       	CC = P0 <= 0x0;
ffa01aa8:	51 5a       	P1 = P1 + P2;
ffa01aaa:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa01aac:	92 5a       	P2 = P2 << 0x1;
ffa01aae:	4a 30       	R1 = P2;
ffa01ab0:	0a 52       	R0 = R2 - R1;
ffa01ab2:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01ab4:	08 9b       	B[P1] = R0;
ffa01ab6:	39 18       	IF CC JUMP 0xffa01b28 <_sprintf_int+0x108>;
ffa01ab8:	50 30       	R2 = P0;
ffa01aba:	c2 2f       	JUMP.S 0xffa01a3e <_sprintf_int+0x1e>;
ffa01abc:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01abe:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa01ac0:	f8 4f       	R0 <<= 0x1f;
ffa01ac2:	90 52       	R2 = R0 - R2;
ffa01ac4:	02 0d       	CC = R2 <= 0x0;
ffa01ac6:	3c 18       	IF CC JUMP 0xffa01b3e <_sprintf_int+0x11e>;
ffa01ac8:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e68 <_printf_temp> */
ffa01acc:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa01ad0:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa01ad2:	0b e1 68 0e 	P3.L = 0xe68;		/* (3688)	P3=0xff900e68 <_printf_temp> */
ffa01ad6:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa01ada:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa01adc:	b2 e0 1f 50 	LSETUP(0xffa01ae0 <_sprintf_int+0xc0>, 0xffa01b1a <_sprintf_int+0xfa>) LC1 = P5;
ffa01ae0:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa01ae4:	59 91 00 00 
ffa01ae8:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01aec:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa01af0:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa01af4:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01af8:	0b c4 00 00 	R0 = (A0 += A1);
ffa01afc:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa01b00:	10 4d       	R0 >>>= 0x2;
ffa01b02:	08 52       	R0 = R0 - R1;
ffa01b04:	00 32       	P0 = R0;
ffa01b06:	61 5a       	P1 = P1 + P4;
ffa01b08:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa01b0a:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa01b0c:	92 5a       	P2 = P2 << 0x1;
ffa01b0e:	4a 30       	R1 = P2;
ffa01b10:	0a 52       	R0 = R2 - R1;
ffa01b12:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01b14:	40 0d       	CC = P0 <= 0x0;
ffa01b16:	08 9b       	B[P1] = R0;
ffa01b18:	0f 18       	IF CC JUMP 0xffa01b36 <_sprintf_int+0x116>;
ffa01b1a:	50 30       	R2 = P0;
ffa01b1c:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa01b1e:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa01b20:	5a 91       	P2 = [P3];
ffa01b22:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa01b24:	8a 5a       	P2 = P2 + P1;
ffa01b26:	10 9b       	B[P2] = R0;
ffa01b28:	03 0d       	CC = R3 <= 0x0;
ffa01b2a:	8a 17       	IF !CC JUMP 0xffa01a3e <_sprintf_int+0x1e> (BP);
ffa01b2c:	01 e8 00 00 	UNLINK;
ffa01b30:	03 30       	R0 = R3;
ffa01b32:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01b34:	10 00       	RTS;
ffa01b36:	5c 30       	R3 = P4;
ffa01b38:	4c 32       	P1 = P4;
ffa01b3a:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01b3c:	f2 2f       	JUMP.S 0xffa01b20 <_sprintf_int+0x100>;
ffa01b3e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e68 <_printf_temp> */
ffa01b42:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa01b44:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01b46:	0b e1 68 0e 	P3.L = 0xe68;		/* (3688)	P3=0xff900e68 <_printf_temp> */
ffa01b4a:	eb 2f       	JUMP.S 0xffa01b20 <_sprintf_int+0x100>;

ffa01b4c <_sprintf_hex>:
ffa01b4c:	10 32       	P2 = R0;
ffa01b4e:	78 05       	[--SP] = (R7:7);
ffa01b50:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01b52:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01b56:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa01b58:	10 9b       	B[P2] = R0;
ffa01b5a:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01b5e:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa01b62:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa01b64:	12 6c       	P2 += 0x2;		/* (  2) */
ffa01b66:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa01b68:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa01b6a:	b2 e0 09 10 	LSETUP(0xffa01b6e <_sprintf_hex+0x22>, 0xffa01b7c <_sprintf_hex+0x30>) LC1 = P1;
ffa01b6e:	01 30       	R0 = R1;
ffa01b70:	10 40       	R0 >>>= R2;
ffa01b72:	18 54       	R0 = R0 & R3;
ffa01b74:	38 09       	CC = R0 <= R7;
ffa01b76:	09 1c       	IF CC JUMP 0xffa01b88 <_sprintf_hex+0x3c> (BP);
ffa01b78:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01b7a:	10 9a       	B[P2++] = R0;
ffa01b7c:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa01b7e:	01 e8 00 00 	UNLINK;
ffa01b82:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01b84:	38 05       	(R7:7) = [SP++];
ffa01b86:	10 00       	RTS;
ffa01b88:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01b8a:	f8 2f       	JUMP.S 0xffa01b7a <_sprintf_hex+0x2e>;

ffa01b8c <_strprintf_int>:
ffa01b8c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01b8e:	29 32       	P5 = R1;
ffa01b90:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b94:	0a 30       	R1 = R2;
ffa01b96:	38 30       	R7 = R0;
ffa01b98:	ff e3 44 ff 	CALL 0xffa01a20 <_sprintf_int>;
ffa01b9c:	29 91       	R1 = [P5];
ffa01b9e:	41 50       	R1 = R1 + R0;
ffa01ba0:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa01ba4:	29 93 00 00 
ffa01ba8:	01 e8 00 00 	UNLINK;
ffa01bac:	07 30       	R0 = R7;
ffa01bae:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01bb0:	10 00       	RTS;
	...

ffa01bb4 <_strprintf_hex>:
ffa01bb4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01bb6:	29 32       	P5 = R1;
ffa01bb8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01bbc:	0a 30       	R1 = R2;
ffa01bbe:	38 30       	R7 = R0;
ffa01bc0:	ff e3 c6 ff 	CALL 0xffa01b4c <_sprintf_hex>;
ffa01bc4:	29 91       	R1 = [P5];
ffa01bc6:	41 50       	R1 = R1 + R0;
ffa01bc8:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa01bcc:	29 93 00 00 
ffa01bd0:	01 e8 00 00 	UNLINK;
ffa01bd4:	07 30       	R0 = R7;
ffa01bd6:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01bd8:	10 00       	RTS;
	...

ffa01bdc <_atoi>:
ffa01bdc:	08 32       	P1 = R0;
ffa01bde:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa01be0:	f5 05       	[--SP] = (R7:6, P5:5);
ffa01be2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01be6:	48 99       	R0 = B[P1] (X);
ffa01be8:	10 08       	CC = R0 == R2;
ffa01bea:	25 18       	IF CC JUMP 0xffa01c34 <_atoi+0x58>;
ffa01bec:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa01bee:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01bf0:	41 32       	P0 = P1;
ffa01bf2:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01bf4:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa01bf6:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa01bf8:	12 20       	JUMP.S 0xffa01c1c <_atoi+0x40>;
ffa01bfa:	8b 08       	CC = R3 < R1;
ffa01bfc:	16 10       	IF !CC JUMP 0xffa01c28 <_atoi+0x4c>;
ffa01bfe:	10 43       	R0 = R2.B (X);
ffa01c00:	28 32       	P5 = R0;
ffa01c02:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa01c04:	40 99       	R0 = B[P0] (X);
ffa01c06:	80 66       	R0 += -0x30;		/* (-48) */
ffa01c08:	40 43       	R0 = R0.B (Z);
ffa01c0a:	aa 5a       	P2 = P2 + P5;
ffa01c0c:	10 0a       	CC = R0 <= R2 (IU);
ffa01c0e:	82 6e       	P2 += -0x30;		/* (-48) */
ffa01c10:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01c12:	03 14       	IF !CC JUMP 0xffa01c18 <_atoi+0x3c> (BP);
ffa01c14:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa01c16:	92 5a       	P2 = P2 << 0x1;
ffa01c18:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01c1a:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01c1c:	4a 99       	R2 = B[P1] (X);
ffa01c1e:	02 30       	R0 = R2;
ffa01c20:	80 66       	R0 += -0x30;		/* (-48) */
ffa01c22:	40 43       	R0 = R0.B (Z);
ffa01c24:	30 0a       	CC = R0 <= R6 (IU);
ffa01c26:	ea 1f       	IF CC JUMP 0xffa01bfa <_atoi+0x1e> (BP);
ffa01c28:	42 30       	R0 = P2;
ffa01c2a:	f8 40       	R0 *= R7;
ffa01c2c:	01 e8 00 00 	UNLINK;
ffa01c30:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01c32:	10 00       	RTS;
ffa01c34:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01c36:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01c38:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01c3a:	db 2f       	JUMP.S 0xffa01bf0 <_atoi+0x14>;

ffa01c3c <_udelay>:
ffa01c3c:	00 0d       	CC = R0 <= 0x0;
ffa01c3e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01c42:	0b 18       	IF CC JUMP 0xffa01c58 <_udelay+0x1c>;
ffa01c44:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01c46:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa01c4a:	b2 e0 03 20 	LSETUP(0xffa01c4e <_udelay+0x12>, 0xffa01c50 <_udelay+0x14>) LC1 = P2;
ffa01c4e:	00 00       	NOP;
ffa01c50:	00 00       	NOP;
ffa01c52:	09 64       	R1 += 0x1;		/* (  1) */
ffa01c54:	08 08       	CC = R0 == R1;
ffa01c56:	f8 17       	IF !CC JUMP 0xffa01c46 <_udelay+0xa> (BP);
ffa01c58:	01 e8 00 00 	UNLINK;
ffa01c5c:	10 00       	RTS;
	...

ffa01c60 <_bfin_EMAC_send_check>:
ffa01c60:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa01c64:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01c68:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01c6c:	50 95       	R0 = W[P2] (X);
ffa01c6e:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa01c70:	00 02       	R0 = CC;
ffa01c72:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa01c74:	01 e8 00 00 	UNLINK;
ffa01c78:	10 00       	RTS;
	...

ffa01c7c <_FormatIPAddress>:
ffa01c7c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01c80:	18 30       	R3 = R0;
ffa01c82:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa01c86:	40 4f       	R0 <<= 0x8;
ffa01c88:	52 43       	R2 = R2.B (Z);
ffa01c8a:	10 56       	R0 = R0 | R2;
ffa01c8c:	40 4f       	R0 <<= 0x8;
ffa01c8e:	49 43       	R1 = R1.B (Z);
ffa01c90:	08 56       	R0 = R0 | R1;
ffa01c92:	40 4f       	R0 <<= 0x8;
ffa01c94:	5b 43       	R3 = R3.B (Z);
ffa01c96:	18 56       	R0 = R0 | R3;
ffa01c98:	01 e8 00 00 	UNLINK;
ffa01c9c:	10 00       	RTS;
	...

ffa01ca0 <_bfin_EMAC_halt>:
ffa01ca0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01ca4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ca6:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01caa:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01cae:	10 93       	[P2] = R0;
ffa01cb0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01cb4:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa01cb8:	10 97       	W[P2] = R0;
ffa01cba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa01cbe:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01cc2:	10 97       	W[P2] = R0;
ffa01cc4:	01 e8 00 00 	UNLINK;
ffa01cc8:	10 00       	RTS;
	...

ffa01ccc <_PollMdcDone>:
ffa01ccc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01cd0:	02 20       	JUMP.S 0xffa01cd4 <_PollMdcDone+0x8>;
ffa01cd2:	00 00       	NOP;
ffa01cd4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01cd8:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01cdc:	10 91       	R0 = [P2];
ffa01cde:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01ce0:	f9 17       	IF !CC JUMP 0xffa01cd2 <_PollMdcDone+0x6> (BP);
ffa01ce2:	01 e8 00 00 	UNLINK;
ffa01ce6:	10 00       	RTS;

ffa01ce8 <_WrPHYReg>:
ffa01ce8:	68 05       	[--SP] = (R7:5);
ffa01cea:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01cee:	28 30       	R5 = R0;
ffa01cf0:	31 30       	R6 = R1;
ffa01cf2:	3a 30       	R7 = R2;
ffa01cf4:	ff e3 ec ff 	CALL 0xffa01ccc <_PollMdcDone>;
ffa01cf8:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01cfa:	b0 55       	R6 = R0 & R6;
ffa01cfc:	28 54       	R0 = R0 & R5;
ffa01cfe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa01d02:	58 4f       	R0 <<= 0xb;
ffa01d04:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa01d06:	ff 42       	R7 = R7.L (Z);
ffa01d08:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01d0c:	36 4f       	R6 <<= 0x6;
ffa01d0e:	08 56       	R0 = R0 | R1;
ffa01d10:	17 93       	[P2] = R7;
ffa01d12:	86 57       	R6 = R6 | R0;
ffa01d14:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa01d16:	16 93       	[P2] = R6;
ffa01d18:	01 e8 00 00 	UNLINK;
ffa01d1c:	28 05       	(R7:5) = [SP++];
ffa01d1e:	10 00       	RTS;

ffa01d20 <_RdPHYReg>:
ffa01d20:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01d22:	29 32       	P5 = R1;
ffa01d24:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01d28:	38 30       	R7 = R0;
ffa01d2a:	ff e3 d1 ff 	CALL 0xffa01ccc <_PollMdcDone>;
ffa01d2e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa01d32:	45 30       	R0 = P5;
ffa01d34:	c0 42       	R0 = R0.L (Z);
ffa01d36:	28 32       	P5 = R0;
ffa01d38:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01d3a:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01d3e:	55 30       	R2 = P5;
ffa01d40:	42 54       	R1 = R2 & R0;
ffa01d42:	38 54       	R0 = R0 & R7;
ffa01d44:	58 4f       	R0 <<= 0xb;
ffa01d46:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa01d48:	31 4f       	R1 <<= 0x6;
ffa01d4a:	41 56       	R1 = R1 | R0;
ffa01d4c:	11 93       	[P2] = R1;
ffa01d4e:	ff e3 bf ff 	CALL 0xffa01ccc <_PollMdcDone>;
ffa01d52:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa01d56:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01d5a:	10 91       	R0 = [P2];
ffa01d5c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa01d60:	0a e1 70 0e 	P2.L = 0xe70;		/* (3696)	P2=0xff900e70 <_PHYregs> */
ffa01d64:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa01d66:	10 97       	W[P2] = R0;
ffa01d68:	01 e8 00 00 	UNLINK;
ffa01d6c:	c0 42       	R0 = R0.L (Z);
ffa01d6e:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01d70:	10 00       	RTS;
	...

ffa01d74 <_SoftResetPHY>:
ffa01d74:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d76:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01d78:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa01d7c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01d80:	ff e3 b4 ff 	CALL 0xffa01ce8 <_WrPHYReg>;
ffa01d84:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d86:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01d88:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01d8a:	ff e3 af ff 	CALL 0xffa01ce8 <_WrPHYReg>;
ffa01d8e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d90:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01d92:	ff e3 c7 ff 	CALL 0xffa01d20 <_RdPHYReg>;
ffa01d96:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa01d98:	fb 1f       	IF CC JUMP 0xffa01d8e <_SoftResetPHY+0x1a> (BP);
ffa01d9a:	01 e8 00 00 	UNLINK;
ffa01d9e:	10 00       	RTS;

ffa01da0 <_NetCksum>:
ffa01da0:	01 0d       	CC = R1 <= 0x0;
ffa01da2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01da6:	10 18       	IF CC JUMP 0xffa01dc6 <_NetCksum+0x26>;
ffa01da8:	10 32       	P2 = R0;
ffa01daa:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01dac:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01dae:	0a 64       	R2 += 0x1;		/* (  1) */
ffa01db0:	10 94       	R0 = W[P2++] (Z);
ffa01db2:	0a 08       	CC = R2 == R1;
ffa01db4:	c3 50       	R3 = R3 + R0;
ffa01db6:	fc 17       	IF !CC JUMP 0xffa01dae <_NetCksum+0xe> (BP);
ffa01db8:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa01dbc:	03 50       	R0 = R3 + R0;
ffa01dbe:	c0 42       	R0 = R0.L (Z);
ffa01dc0:	01 e8 00 00 	UNLINK;
ffa01dc4:	10 00       	RTS;
ffa01dc6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01dc8:	01 e8 00 00 	UNLINK;
ffa01dcc:	10 00       	RTS;
	...

ffa01dd0 <_htons>:
ffa01dd0:	08 30       	R1 = R0;
ffa01dd2:	c0 42       	R0 = R0.L (Z);
ffa01dd4:	40 4e       	R0 >>= 0x8;
ffa01dd6:	41 4f       	R1 <<= 0x8;
ffa01dd8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01ddc:	08 56       	R0 = R0 | R1;
ffa01dde:	c0 42       	R0 = R0.L (Z);
ffa01de0:	01 e8 00 00 	UNLINK;
ffa01de4:	10 00       	RTS;
	...

ffa01de8 <_htonl>:
ffa01de8:	10 30       	R2 = R0;
ffa01dea:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa01dee:	40 43       	R0 = R0.B (Z);
ffa01df0:	49 43       	R1 = R1.B (Z);
ffa01df2:	40 4f       	R0 <<= 0x8;
ffa01df4:	08 56       	R0 = R0 | R1;
ffa01df6:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa01dfa:	40 4f       	R0 <<= 0x8;
ffa01dfc:	49 43       	R1 = R1.B (Z);
ffa01dfe:	08 56       	R0 = R0 | R1;
ffa01e00:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01e04:	40 4f       	R0 <<= 0x8;
ffa01e06:	c2 4e       	R2 >>= 0x18;
ffa01e08:	10 56       	R0 = R0 | R2;
ffa01e0a:	01 e8 00 00 	UNLINK;
ffa01e0e:	10 00       	RTS;

ffa01e10 <_pack4chars>:
ffa01e10:	08 32       	P1 = R0;
ffa01e12:	10 32       	P2 = R0;
ffa01e14:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01e18:	01 e8 00 00 	UNLINK;
ffa01e1c:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa01e20:	10 98       	R0 = B[P2++] (Z);
ffa01e22:	41 4f       	R1 <<= 0x8;
ffa01e24:	08 50       	R0 = R0 + R1;
ffa01e26:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa01e2a:	81 4f       	R1 <<= 0x10;
ffa01e2c:	08 50       	R0 = R0 + R1;
ffa01e2e:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa01e32:	c1 4f       	R1 <<= 0x18;
ffa01e34:	08 50       	R0 = R0 + R1;
ffa01e36:	10 00       	RTS;

ffa01e38 <_ip_header_setup>:
ffa01e38:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01e3a:	28 32       	P5 = R0;
ffa01e3c:	21 32       	P4 = R1;
ffa01e3e:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01e42:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01e46:	32 30       	R6 = R2;
ffa01e48:	28 9b       	B[P5] = R0;
ffa01e4a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e4c:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa01e50:	27 91       	R7 = [P4];
ffa01e52:	f8 42       	R0 = R7.L (Z);
ffa01e54:	ff e3 be ff 	CALL 0xffa01dd0 <_htons>;
ffa01e58:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e70 <_PHYregs> */
ffa01e5c:	0a e1 ba 0e 	P2.L = 0xeba;		/* (3770)	P2=0xff900eba <_NetIPID> */
ffa01e60:	68 b4       	W[P5 + 0x2] = R0;
ffa01e62:	10 95       	R0 = W[P2] (Z);
ffa01e64:	08 30       	R1 = R0;
ffa01e66:	09 64       	R1 += 0x1;		/* (  1) */
ffa01e68:	67 67       	R7 += -0x14;		/* (-20) */
ffa01e6a:	11 97       	W[P2] = R1;
ffa01e6c:	27 93       	[P4] = R7;
ffa01e6e:	ff e3 b1 ff 	CALL 0xffa01dd0 <_htons>;
ffa01e72:	a8 b4       	W[P5 + 0x4] = R0;
ffa01e74:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01e78:	ff e3 ac ff 	CALL 0xffa01dd0 <_htons>;
ffa01e7c:	e8 b4       	W[P5 + 0x6] = R0;
ffa01e7e:	82 c6 46 01 	R0 = R6 >>> 0x18;
ffa01e82:	c0 4f       	R0 <<= 0x18;
ffa01e84:	00 0c       	CC = R0 == 0x0;
ffa01e86:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01e88:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01e8c:	01 07       	IF CC R0 = R1;
ffa01e8e:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01e92:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eba <_NetIPID> */
ffa01e96:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa01e9a:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01e9e:	0a e1 ec 0e 	P2.L = 0xeec;		/* (3820)	P2=0xff900eec <_NetOurIP> */
ffa01ea2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ea4:	68 b5       	W[P5 + 0xa] = R0;
ffa01ea6:	10 91       	R0 = [P2];
ffa01ea8:	e8 b0       	[P5 + 0xc] = R0;
ffa01eaa:	2e b1       	[P5 + 0x10] = R6;
ffa01eac:	45 30       	R0 = P5;
ffa01eae:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01eb0:	ff e3 78 ff 	CALL 0xffa01da0 <_NetCksum>;
ffa01eb4:	c0 43       	R0 =~ R0;
ffa01eb6:	68 b5       	W[P5 + 0xa] = R0;
ffa01eb8:	01 e8 00 00 	UNLINK;
ffa01ebc:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01ebe:	45 30       	R0 = P5;
ffa01ec0:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01ec2:	10 00       	RTS;

ffa01ec4 <_ip_header_checksum>:
ffa01ec4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01ec8:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa01eca:	ff e3 6b ff 	CALL 0xffa01da0 <_NetCksum>;
ffa01ece:	08 02       	CC = R0;
ffa01ed0:	00 02       	R0 = CC;
ffa01ed2:	01 e8 00 00 	UNLINK;
ffa01ed6:	10 00       	RTS;

ffa01ed8 <_icmp_header_setup>:
ffa01ed8:	00 32       	P0 = R0;
ffa01eda:	c5 04       	[--SP] = (P5:5);
ffa01edc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ede:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01ee2:	29 32       	P5 = R1;
ffa01ee4:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa01ee8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01eea:	40 b4       	W[P0 + 0x2] = R0;
ffa01eec:	38 ab       	R0 = W[FP + 0x18] (X);
ffa01eee:	80 b4       	W[P0 + 0x4] = R0;
ffa01ef0:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa01ef2:	02 9b       	B[P0] = R2;
ffa01ef4:	c0 b4       	W[P0 + 0x6] = R0;
ffa01ef6:	48 32       	P1 = P0;
ffa01ef8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01efa:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa01efc:	b2 e0 03 20 	LSETUP(0xffa01f00 <_icmp_header_setup+0x28>, 0xffa01f02 <_icmp_header_setup+0x2a>) LC1 = P2;
ffa01f00:	08 94       	R0 = W[P1++] (Z);
ffa01f02:	41 50       	R1 = R1 + R0;
ffa01f04:	c8 42       	R0 = R1.L (Z);
ffa01f06:	81 4e       	R1 >>= 0x10;
ffa01f08:	08 50       	R0 = R0 + R1;
ffa01f0a:	c0 43       	R0 =~ R0;
ffa01f0c:	40 b4       	W[P0 + 0x2] = R0;
ffa01f0e:	28 91       	R0 = [P5];
ffa01f10:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa01f12:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01f14:	01 e8 00 00 	UNLINK;
ffa01f18:	28 93       	[P5] = R0;
ffa01f1a:	40 30       	R0 = P0;
ffa01f1c:	85 04       	(P5:5) = [SP++];
ffa01f1e:	10 00       	RTS;

ffa01f20 <_udp_header_setup>:
ffa01f20:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01f22:	28 32       	P5 = R0;
ffa01f24:	21 32       	P4 = R1;
ffa01f26:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01f2a:	d0 42       	R0 = R2.L (Z);
ffa01f2c:	ff e3 52 ff 	CALL 0xffa01dd0 <_htons>;
ffa01f30:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa01f34:	28 97       	W[P5] = R0;
ffa01f36:	07 30       	R0 = R7;
ffa01f38:	ff e3 4c ff 	CALL 0xffa01dd0 <_htons>;
ffa01f3c:	27 91       	R7 = [P4];
ffa01f3e:	68 b4       	W[P5 + 0x2] = R0;
ffa01f40:	f8 42       	R0 = R7.L (Z);
ffa01f42:	ff e3 47 ff 	CALL 0xffa01dd0 <_htons>;
ffa01f46:	a8 b4       	W[P5 + 0x4] = R0;
ffa01f48:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01f4a:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa01f4c:	e8 b4       	W[P5 + 0x6] = R0;
ffa01f4e:	01 e8 00 00 	UNLINK;
ffa01f52:	45 6c       	P5 += 0x8;		/* (  8) */
ffa01f54:	45 30       	R0 = P5;
ffa01f56:	27 93       	[P4] = R7;
ffa01f58:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01f5a:	10 00       	RTS;

ffa01f5c <_tcp_header_setup>:
ffa01f5c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01f5e:	28 32       	P5 = R0;
ffa01f60:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01f64:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01f68:	21 32       	P4 = R1;
ffa01f6a:	3a 30       	R7 = R2;
ffa01f6c:	ff e3 32 ff 	CALL 0xffa01dd0 <_htons>;
ffa01f70:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa01f74:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_TcpClientPort> */
ffa01f78:	28 97       	W[P5] = R0;
ffa01f7a:	50 95       	R0 = W[P2] (X);
ffa01f7c:	68 b4       	W[P5 + 0x2] = R0;
ffa01f7e:	38 a2       	R0 = [FP + 0x20];
ffa01f80:	ff e3 34 ff 	CALL 0xffa01de8 <_htonl>;
ffa01f84:	68 b0       	[P5 + 0x4] = R0;
ffa01f86:	78 a2       	R0 = [FP + 0x24];
ffa01f88:	ff e3 30 ff 	CALL 0xffa01de8 <_htonl>;
ffa01f8c:	a8 b0       	[P5 + 0x8] = R0;
ffa01f8e:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01f92:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01f96:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa01f9a:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa01f9e:	ff e3 19 ff 	CALL 0xffa01dd0 <_htons>;
ffa01fa2:	e8 b5       	W[P5 + 0xe] = R0;
ffa01fa4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01fa6:	28 b6       	W[P5 + 0x10] = R0;
ffa01fa8:	68 b6       	W[P5 + 0x12] = R0;
ffa01faa:	20 91       	R0 = [P4];
ffa01fac:	60 67       	R0 += -0x14;		/* (-20) */
ffa01fae:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01fb0:	01 e8 00 00 	UNLINK;
ffa01fb4:	20 93       	[P4] = R0;
ffa01fb6:	45 30       	R0 = P5;
ffa01fb8:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01fba:	10 00       	RTS;

ffa01fbc <_bfin_EMAC_send_nocopy>:
ffa01fbc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00fdc(-4190244) */
ffa01fc0:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01fc2:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01fc6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01fca:	10 97       	W[P2] = R0;
ffa01fcc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01fd0:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01fd4:	50 95       	R0 = W[P2] (X);
ffa01fd6:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01fd8:	59 10       	IF !CC JUMP 0xffa0208a <_bfin_EMAC_send_nocopy+0xce>;
ffa01fda:	00 00       	NOP;
ffa01fdc:	00 00       	NOP;
ffa01fde:	00 00       	NOP;
ffa01fe0:	50 95       	R0 = W[P2] (X);
ffa01fe2:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01fe4:	16 18       	IF CC JUMP 0xffa02010 <_bfin_EMAC_send_nocopy+0x54>;
ffa01fe6:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0008 */
ffa01fea:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01fee:	b2 e0 09 10 	LSETUP(0xffa01ff2 <_bfin_EMAC_send_nocopy+0x36>, 0xffa02000 <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa01ff2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01ff6:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01ffa:	50 95       	R0 = W[P2] (X);
ffa01ffc:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01ffe:	09 18       	IF CC JUMP 0xffa02010 <_bfin_EMAC_send_nocopy+0x54>;
ffa02000:	00 00       	NOP;
ffa02002:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa02006:	00 e1 0c 01 	R0.L = 0x10c;		/* (268)	R0=0xff90010c(-7339764) */
ffa0200a:	ff e3 e1 fb 	CALL 0xffa017cc <_printf_str>;
ffa0200e:	30 20       	JUMP.S 0xffa0206e <_bfin_EMAC_send_nocopy+0xb2>;
ffa02010:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa02014:	08 e1 b8 0e 	P0.L = 0xeb8;		/* (3768)	P0=0xff900eb8 <_txIdx> */
ffa02018:	00 95       	R0 = W[P0] (Z);
ffa0201a:	10 32       	P2 = R0;
ffa0201c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa02020:	09 e1 bc 0e 	P1.L = 0xebc;		/* (3772)	P1=0xff900ebc <_txbuf> */
ffa02024:	42 95       	R2 = W[P0] (X);
ffa02026:	d1 42       	R1 = R2.L (Z);
ffa02028:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0202a:	52 91       	P2 = [P2];
ffa0202c:	11 0d       	CC = R1 <= 0x2;
ffa0202e:	90 a1       	R0 = [P2 + 0x18];
ffa02030:	50 b0       	[P2 + 0x4] = R0;
ffa02032:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02034:	90 b2       	[P2 + 0x28] = R0;
ffa02036:	11 32       	P2 = R1;
ffa02038:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa0203a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa0203e:	08 91       	R0 = [P1];
ffa02040:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa02044:	10 93       	[P2] = R0;
ffa02046:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa0204a:	0a e1 fe 04 	P2.L = 0x4fe;		/* (1278)	P2=0xff9004fe <_txdmacfg> */
ffa0204e:	50 95       	R0 = W[P2] (X);
ffa02050:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004fe(-4193026) */
ffa02054:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa02058:	10 97       	W[P2] = R0;
ffa0205a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa0205e:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02062:	10 91       	R0 = [P2];
ffa02064:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa02066:	10 93       	[P2] = R0;
ffa02068:	0d 1c       	IF CC JUMP 0xffa02082 <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa0206a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0206c:	00 97       	W[P0] = R0;
ffa0206e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa02072:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa02074:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa02078:	10 97       	W[P2] = R0;
ffa0207a:	01 e8 00 00 	UNLINK;
ffa0207e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02080:	10 00       	RTS;
ffa02082:	02 30       	R0 = R2;
ffa02084:	08 64       	R0 += 0x1;		/* (  1) */
ffa02086:	00 97       	W[P0] = R0;
ffa02088:	f3 2f       	JUMP.S 0xffa0206e <_bfin_EMAC_send_nocopy+0xb2>;
ffa0208a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0208e:	00 e1 f4 00 	R0.L = 0xf4;		/* (244)	R0=0xff9000f4(-7339788) */
ffa02092:	ff e3 9d fb 	CALL 0xffa017cc <_printf_str>;
ffa02096:	ec 2f       	JUMP.S 0xffa0206e <_bfin_EMAC_send_nocopy+0xb2>;

ffa02098 <_DHCP_tx>:
ffa02098:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0209a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa0209e:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa020a2:	0a e1 b8 0e 	P2.L = 0xeb8;		/* (3768)	P2=0xff900eb8 <_txIdx> */
ffa020a6:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa020aa:	10 95 00 00 
ffa020ae:	10 32       	P2 = R0;
ffa020b0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900ebc <_txbuf> */
ffa020b4:	09 e1 bc 0e 	P1.L = 0xebc;		/* (3772)	P1=0xff900ebc <_txbuf> */
ffa020b8:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa020bc:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa020be:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa020c0:	52 91       	P2 = [P2];
ffa020c2:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa020c6:	f1 bb 00 00 
ffa020ca:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90000b */
ffa020ce:	0d e1 e0 0e 	P5.L = 0xee0;		/* (3808)	P5=0xff900ee0 <_NetOurMAC> */
ffa020d2:	94 ad       	P4 = [P2 + 0x18];
ffa020d4:	1a 32       	P3 = R2;
ffa020d6:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa020d8:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa020da:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa020de:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa020e2:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa020e6:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa020ea:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa020ee:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa020f2:	20 97       	W[P4] = R0;
ffa020f4:	68 99       	R0 = B[P5] (X);
ffa020f6:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa020fa:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa020fe:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa02102:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02106:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa0210a:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa0210e:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa02112:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02116:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa0211a:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa0211e:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa02122:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02126:	ff e3 55 fe 	CALL 0xffa01dd0 <_htons>;
ffa0212a:	e0 b5       	W[P4 + 0xe] = R0;
ffa0212c:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa02130:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa02134:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa02138:	04 50       	R0 = R4 + R0;
ffa0213a:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa0213e:	c0 42       	R0 = R0.L (Z);
ffa02140:	ff e3 48 fe 	CALL 0xffa01dd0 <_htons>;
ffa02144:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb8 <_txIdx> */
ffa02148:	0a e1 ba 0e 	P2.L = 0xeba;		/* (3770)	P2=0xff900eba <_NetIPID> */
ffa0214c:	60 b6       	W[P4 + 0x12] = R0;
ffa0214e:	10 95       	R0 = W[P2] (Z);
ffa02150:	08 30       	R1 = R0;
ffa02152:	09 64       	R1 += 0x1;		/* (  1) */
ffa02154:	11 97       	W[P2] = R1;
ffa02156:	ff e3 3d fe 	CALL 0xffa01dd0 <_htons>;
ffa0215a:	a0 b6       	W[P4 + 0x14] = R0;
ffa0215c:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa02160:	ff e3 38 fe 	CALL 0xffa01dd0 <_htons>;
ffa02164:	e0 b6       	W[P4 + 0x16] = R0;
ffa02166:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa02168:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa0216c:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa02170:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa02174:	66 b7 00 00 
ffa02178:	44 30       	R0 = P4;
ffa0217a:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0217c:	e7 b1       	[P4 + 0x1c] = R7;
ffa0217e:	23 be       	[P4 + 0x20] = P3;
ffa02180:	80 64       	R0 += 0x10;		/* ( 16) */
ffa02182:	ff e3 0f fe 	CALL 0xffa01da0 <_NetCksum>;
ffa02186:	c0 43       	R0 =~ R0;
ffa02188:	60 b7       	W[P4 + 0x1a] = R0;
ffa0218a:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa0218e:	ff e3 21 fe 	CALL 0xffa01dd0 <_htons>;
ffa02192:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa02196:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa0219a:	ff e3 1b fe 	CALL 0xffa01dd0 <_htons>;
ffa0219e:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa021a2:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa021a6:	04 50       	R0 = R4 + R0;
ffa021a8:	c0 42       	R0 = R0.L (Z);
ffa021aa:	ff e3 13 fe 	CALL 0xffa01dd0 <_htons>;
ffa021ae:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa021b2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa021b4:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa021b8:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa021bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00eba(-4190534) */
ffa021c0:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa021c2:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa021c6:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa021ca:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa021ce:	10 91       	R0 = [P2];
ffa021d0:	20 b3       	[P4 + 0x30] = R0;
ffa021d2:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa021d6:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa021da:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa021de:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa021e2:	a7 b3       	[P4 + 0x38] = R7;
ffa021e4:	e7 b3       	[P4 + 0x3c] = R7;
ffa021e6:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa021ea:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa021ee:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa021f2:	ff e3 fb fd 	CALL 0xffa01de8 <_htonl>;
ffa021f6:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa021fa:	68 99       	R0 = B[P5] (X);
ffa021fc:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa02200:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02204:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa02208:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa0220c:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa02210:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02214:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa02218:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa0221c:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa02220:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02224:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa02228:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa0222c:	54 5a       	P1 = P4 + P2;
ffa0222e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02230:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02232:	b2 e0 02 20 	LSETUP(0xffa02236 <_DHCP_tx+0x19e>, 0xffa02236 <_DHCP_tx+0x19e>) LC1 = P2;
ffa02236:	08 9a       	B[P1++] = R0;
ffa02238:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa0223c:	54 5a       	P1 = P4 + P2;
ffa0223e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02240:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa02242:	b2 e0 02 20 	LSETUP(0xffa02246 <_DHCP_tx+0x1ae>, 0xffa02246 <_DHCP_tx+0x1ae>) LC1 = P2;
ffa02246:	08 92       	[P1++] = R0;
ffa02248:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa0224c:	54 5a       	P1 = P4 + P2;
ffa0224e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02250:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa02252:	b2 e0 02 20 	LSETUP(0xffa02256 <_DHCP_tx+0x1be>, 0xffa02256 <_DHCP_tx+0x1be>) LC1 = P2;
ffa02256:	08 92       	[P1++] = R0;
ffa02258:	44 30       	R0 = P4;
ffa0225a:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa0225e:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa02262:	f0 b9 00 00 
ffa02266:	14 30       	R2 = R4;
ffa02268:	ff e3 fc fa 	CALL 0xffa01860 <_memcpy_>;
ffa0226c:	01 e8 00 00 	UNLINK;
ffa02270:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02272:	ff e2 a5 fe 	JUMP.L 0xffa01fbc <_bfin_EMAC_send_nocopy>;
	...

ffa02278 <_DHCP_tx_discover>:
ffa02278:	c5 04       	[--SP] = (P5:5);
ffa0227a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ee0 <_NetOurMAC> */
ffa0227e:	0d e1 b4 0e 	P5.L = 0xeb4;		/* (3764)	P5=0xff900eb4 <_NetDHCPserv> */
ffa02282:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02284:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02288:	28 93       	[P5] = R0;
ffa0228a:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa0228c:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa02290:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02292:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa02296:	b8 e6 fe ff 	B[FP + -0x2] = R0;
ffa0229a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0229c:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa022a0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa022a4:	00 e1 24 01 	R0.L = 0x124;		/* (292)	R0=0xff900124(-7339740) */
ffa022a8:	ff e3 92 fa 	CALL 0xffa017cc <_printf_str>;
ffa022ac:	4f 30       	R1 = FP;
ffa022ae:	2a 91       	R2 = [P5];
ffa022b0:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa022b2:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa022b4:	ff e3 f2 fe 	CALL 0xffa02098 <_DHCP_tx>;
ffa022b8:	01 e8 00 00 	UNLINK;
ffa022bc:	85 04       	(P5:5) = [SP++];
ffa022be:	10 00       	RTS;

ffa022c0 <_DHCP_parse>:
ffa022c0:	f5 05       	[--SP] = (R7:6, P5:5);
ffa022c2:	09 0d       	CC = R1 <= 0x1;
ffa022c4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa022c8:	10 32       	P2 = R0;
ffa022ca:	33 18       	IF CC JUMP 0xffa02330 <_DHCP_parse+0x70>;
ffa022cc:	00 00       	NOP;
ffa022ce:	31 30       	R6 = R1;
ffa022d0:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa022d2:	11 98       	R1 = B[P2++] (Z);
ffa022d4:	01 0c       	CC = R1 == 0x0;
ffa022d6:	2b 1c       	IF CC JUMP 0xffa0232c <_DHCP_parse+0x6c> (BP);
ffa022d8:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa022dc:	01 08       	CC = R1 == R0;
ffa022de:	57 99       	R7 = B[P2] (X);
ffa022e0:	28 18       	IF CC JUMP 0xffa02330 <_DHCP_parse+0x70>;
ffa022e2:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa022e4:	6a 32       	P5 = P2;
ffa022e6:	01 0a       	CC = R1 <= R0 (IU);
ffa022e8:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa022ea:	09 14       	IF !CC JUMP 0xffa022fc <_DHCP_parse+0x3c> (BP);
ffa022ec:	09 32       	P1 = R1;
ffa022ee:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900020 */
ffa022f2:	0a e1 0c 04 	P2.L = 0x40c;		/* (1036)	P2=0xff90040c */
ffa022f6:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa022f8:	52 91       	P2 = [P2];
ffa022fa:	52 00       	JUMP (P2);
ffa022fc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa02300:	00 e1 e0 01 	R0.L = 0x1e0;		/* (480)	R0=0xff9001e0(-7339552) */
ffa02304:	ff e3 c2 f9 	CALL 0xffa01688 <_printf_int>;
ffa02308:	7f 43       	R7 = R7.B (Z);
ffa0230a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001e0(-7339552) */
ffa0230e:	00 e1 f4 01 	R0.L = 0x1f4;		/* (500)	R0=0xff9001f4(-7339532) */
ffa02312:	0f 30       	R1 = R7;
ffa02314:	ff e3 ba f9 	CALL 0xffa01688 <_printf_int>;
ffa02318:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001f4(-7339532) */
ffa0231c:	00 e1 9c 07 	R0.L = 0x79c;		/* (1948)	R0=0xff90079c(-7338084) */
ffa02320:	ff e3 56 fa 	CALL 0xffa017cc <_printf_str>;
ffa02324:	0f 32       	P1 = R7;
ffa02326:	be 53       	R6 = R6 - R7;
ffa02328:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa0232a:	8d 5a       	P2 = P5 + P1;
ffa0232c:	0e 0d       	CC = R6 <= 0x1;
ffa0232e:	d1 17       	IF !CC JUMP 0xffa022d0 <_DHCP_parse+0x10> (BP);
ffa02330:	01 e8 00 00 	UNLINK;
ffa02334:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02336:	10 00       	RTS;
ffa02338:	45 30       	R0 = P5;
ffa0233a:	ff e3 6b fd 	CALL 0xffa01e10 <_pack4chars>;
ffa0233e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90040c */
ffa02342:	0a e1 e8 0e 	P2.L = 0xee8;		/* (3816)	P2=0xff900ee8 <_NetSubnetMask> */
ffa02346:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa0234a:	10 93 00 00 
ffa0234e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90079c(-7338084) */
ffa02352:	00 e1 38 01 	R0.L = 0x138;		/* (312)	R0=0xff900138(-7339720) */
ffa02356:	ff e3 41 fa 	CALL 0xffa017d8 <_printf_ip>;
ffa0235a:	7f 43       	R7 = R7.B (Z);
ffa0235c:	de 2f       	JUMP.S 0xffa02318 <_DHCP_parse+0x58>;
ffa0235e:	45 30       	R0 = P5;
ffa02360:	ff e3 58 fd 	CALL 0xffa01e10 <_pack4chars>;
ffa02364:	08 30       	R1 = R0;
ffa02366:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900138(-7339720) */
ffa0236a:	00 e1 48 01 	R0.L = 0x148;		/* (328)	R0=0xff900148(-7339704) */
ffa0236e:	ff e3 35 fa 	CALL 0xffa017d8 <_printf_ip>;
ffa02372:	7f 43       	R7 = R7.B (Z);
ffa02374:	d2 2f       	JUMP.S 0xffa02318 <_DHCP_parse+0x58>;
ffa02376:	45 30       	R0 = P5;
ffa02378:	ff e3 4c fd 	CALL 0xffa01e10 <_pack4chars>;
ffa0237c:	08 30       	R1 = R0;
ffa0237e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900148(-7339704) */
ffa02382:	00 e1 58 01 	R0.L = 0x158;		/* (344)	R0=0xff900158(-7339688) */
ffa02386:	ff e3 29 fa 	CALL 0xffa017d8 <_printf_ip>;
ffa0238a:	7f 43       	R7 = R7.B (Z);
ffa0238c:	c6 2f       	JUMP.S 0xffa02318 <_DHCP_parse+0x58>;
ffa0238e:	45 30       	R0 = P5;
ffa02390:	ff e3 40 fd 	CALL 0xffa01e10 <_pack4chars>;
ffa02394:	08 30       	R1 = R0;
ffa02396:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900158(-7339688) */
ffa0239a:	00 e1 68 01 	R0.L = 0x168;		/* (360)	R0=0xff900168(-7339672) */
ffa0239e:	ff e3 1d fa 	CALL 0xffa017d8 <_printf_ip>;
ffa023a2:	7f 43       	R7 = R7.B (Z);
ffa023a4:	ba 2f       	JUMP.S 0xffa02318 <_DHCP_parse+0x58>;
ffa023a6:	45 30       	R0 = P5;
ffa023a8:	ff e3 34 fd 	CALL 0xffa01e10 <_pack4chars>;
ffa023ac:	ff e3 1e fd 	CALL 0xffa01de8 <_htonl>;
ffa023b0:	08 30       	R1 = R0;
ffa023b2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900168(-7339672) */
ffa023b6:	00 e1 78 01 	R0.L = 0x178;		/* (376)	R0=0xff900178(-7339656) */
ffa023ba:	ff e3 67 f9 	CALL 0xffa01688 <_printf_int>;
ffa023be:	7f 43       	R7 = R7.B (Z);
ffa023c0:	ac 2f       	JUMP.S 0xffa02318 <_DHCP_parse+0x58>;
ffa023c2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900178(-7339656) */
ffa023c6:	29 99       	R1 = B[P5] (Z);
ffa023c8:	00 e1 8c 01 	R0.L = 0x18c;		/* (396)	R0=0xff90018c(-7339636) */
ffa023cc:	ff e3 5e f9 	CALL 0xffa01688 <_printf_int>;
ffa023d0:	7f 43       	R7 = R7.B (Z);
ffa023d2:	a3 2f       	JUMP.S 0xffa02318 <_DHCP_parse+0x58>;
ffa023d4:	45 30       	R0 = P5;
ffa023d6:	ff e3 1d fd 	CALL 0xffa01e10 <_pack4chars>;
ffa023da:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee8 <_NetSubnetMask> */
ffa023de:	0a e1 b4 0e 	P2.L = 0xeb4;		/* (3764)	P2=0xff900eb4 <_NetDHCPserv> */
ffa023e2:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa023e6:	10 93 00 00 
ffa023ea:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90018c(-7339636) */
ffa023ee:	00 e1 a0 01 	R0.L = 0x1a0;		/* (416)	R0=0xff9001a0(-7339616) */
ffa023f2:	ff e3 f3 f9 	CALL 0xffa017d8 <_printf_ip>;
ffa023f6:	7f 43       	R7 = R7.B (Z);
ffa023f8:	90 2f       	JUMP.S 0xffa02318 <_DHCP_parse+0x58>;
ffa023fa:	45 30       	R0 = P5;
ffa023fc:	ff e3 0a fd 	CALL 0xffa01e10 <_pack4chars>;
ffa02400:	ff e3 f4 fc 	CALL 0xffa01de8 <_htonl>;
ffa02404:	08 30       	R1 = R0;
ffa02406:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001a0(-7339616) */
ffa0240a:	00 e1 b4 01 	R0.L = 0x1b4;		/* (436)	R0=0xff9001b4(-7339596) */
ffa0240e:	ff e3 3d f9 	CALL 0xffa01688 <_printf_int>;
ffa02412:	7f 43       	R7 = R7.B (Z);
ffa02414:	82 2f       	JUMP.S 0xffa02318 <_DHCP_parse+0x58>;
ffa02416:	45 30       	R0 = P5;
ffa02418:	ff e3 fc fc 	CALL 0xffa01e10 <_pack4chars>;
ffa0241c:	ff e3 e6 fc 	CALL 0xffa01de8 <_htonl>;
ffa02420:	08 30       	R1 = R0;
ffa02422:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001b4(-7339596) */
ffa02426:	00 e1 c8 01 	R0.L = 0x1c8;		/* (456)	R0=0xff9001c8(-7339576) */
ffa0242a:	ff e3 2f f9 	CALL 0xffa01688 <_printf_int>;
ffa0242e:	7f 43       	R7 = R7.B (Z);
ffa02430:	74 2f       	JUMP.S 0xffa02318 <_DHCP_parse+0x58>;
	...

ffa02434 <_bfin_EMAC_send>:
ffa02434:	c4 04       	[--SP] = (P5:4);
ffa02436:	01 0d       	CC = R1 <= 0x0;
ffa02438:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0243c:	18 30       	R3 = R0;
ffa0243e:	11 30       	R2 = R1;
ffa02440:	90 18       	IF CC JUMP 0xffa02560 <_bfin_EMAC_send+0x12c>;
ffa02442:	00 00       	NOP;
ffa02444:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00eb4(-4190540) */
ffa02448:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa0244c:	50 95       	R0 = W[P2] (X);
ffa0244e:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa02450:	74 10       	IF !CC JUMP 0xffa02538 <_bfin_EMAC_send+0x104>;
ffa02452:	00 00       	NOP;
ffa02454:	00 00       	NOP;
ffa02456:	00 00       	NOP;
ffa02458:	50 95       	R0 = W[P2] (X);
ffa0245a:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0245c:	17 18       	IF CC JUMP 0xffa0248a <_bfin_EMAC_send+0x56>;
ffa0245e:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0ebc */
ffa02462:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa02466:	b2 e0 09 10 	LSETUP(0xffa0246a <_bfin_EMAC_send+0x36>, 0xffa02478 <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa0246a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa0246e:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa02472:	50 95       	R0 = W[P2] (X);
ffa02474:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa02476:	0a 18       	IF CC JUMP 0xffa0248a <_bfin_EMAC_send+0x56>;
ffa02478:	00 00       	NOP;
ffa0247a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001c8(-7339576) */
ffa0247e:	00 e1 18 02 	R0.L = 0x218;		/* (536)	R0=0xff900218(-7339496) */
ffa02482:	ff e3 a5 f9 	CALL 0xffa017cc <_printf_str>;
ffa02486:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02488:	53 20       	JUMP.S 0xffa0252e <_bfin_EMAC_send+0xfa>;
ffa0248a:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900000 <_l1_data_a> */
ffa0248e:	0c e1 b8 0e 	P4.L = 0xeb8;		/* (3768)	P4=0xff900eb8 <_txIdx> */
ffa02492:	20 95       	R0 = W[P4] (Z);
ffa02494:	10 32       	P2 = R0;
ffa02496:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900eb4 <_NetDHCPserv> */
ffa0249a:	0d e1 bc 0e 	P5.L = 0xebc;		/* (3772)	P5=0xff900ebc <_txbuf> */
ffa0249e:	0b 30       	R1 = R3;
ffa024a0:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa024a2:	52 91       	P2 = [P2];
ffa024a4:	92 ad       	P2 = [P2 + 0x18];
ffa024a6:	12 96       	W[P2++] = R2;
ffa024a8:	42 30       	R0 = P2;
ffa024aa:	ff e3 db f9 	CALL 0xffa01860 <_memcpy_>;
ffa024ae:	20 95       	R0 = W[P4] (Z);
ffa024b0:	10 32       	P2 = R0;
ffa024b2:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa024b4:	51 91       	P1 = [P2];
ffa024b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa024ba:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa024be:	51 93       	[P2] = P1;
ffa024c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa024c4:	88 a1       	R0 = [P1 + 0x18];
ffa024c6:	0a e1 fe 04 	P2.L = 0x4fe;		/* (1278)	P2=0xff9004fe <_txdmacfg> */
ffa024ca:	48 b0       	[P1 + 0x4] = R0;
ffa024cc:	50 95       	R0 = W[P2] (X);
ffa024ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004fe(-4193026) */
ffa024d2:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa024d6:	10 97       	W[P2] = R0;
ffa024d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa024dc:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa024e0:	10 91       	R0 = [P2];
ffa024e2:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa024e4:	10 93       	[P2] = R0;
ffa024e6:	88 a2       	R0 = [P1 + 0x28];
ffa024e8:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa024ea:	13 10       	IF !CC JUMP 0xffa02510 <_bfin_EMAC_send+0xdc>;
ffa024ec:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa024f0:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa024f4:	b2 e0 05 20 	LSETUP(0xffa024f8 <_bfin_EMAC_send+0xc4>, 0xffa024fe <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa024f8:	88 a2       	R0 = [P1 + 0x28];
ffa024fa:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa024fc:	0a 10       	IF !CC JUMP 0xffa02510 <_bfin_EMAC_send+0xdc>;
ffa024fe:	00 00       	NOP;
ffa02500:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900218(-7339496) */
ffa02504:	00 e1 30 02 	R0.L = 0x230;		/* (560)	R0=0xff900230(-7339472) */
ffa02508:	ff e3 62 f9 	CALL 0xffa017cc <_printf_str>;
ffa0250c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0250e:	10 20       	JUMP.S 0xffa0252e <_bfin_EMAC_send+0xfa>;
ffa02510:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa02514:	61 95 00 00 
ffa02518:	8a a2       	R2 = [P1 + 0x28];
ffa0251a:	88 b2       	[P1 + 0x28] = R0;
ffa0251c:	c8 42       	R0 = R1.L (Z);
ffa0251e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa02522:	10 0d       	CC = R0 <= 0x2;
ffa02524:	0a e1 b8 0e 	P2.L = 0xeb8;		/* (3768)	P2=0xff900eb8 <_txIdx> */
ffa02528:	14 1c       	IF CC JUMP 0xffa02550 <_bfin_EMAC_send+0x11c> (BP);
ffa0252a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0252c:	10 97       	W[P2] = R0;
ffa0252e:	01 e8 00 00 	UNLINK;
ffa02532:	02 30       	R0 = R2;
ffa02534:	84 04       	(P5:4) = [SP++];
ffa02536:	10 00       	RTS;
ffa02538:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0253c:	00 e1 f4 00 	R0.L = 0xf4;		/* (244)	R0=0xff9000f4(-7339788) */
ffa02540:	ff e3 46 f9 	CALL 0xffa017cc <_printf_str>;
ffa02544:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02546:	01 e8 00 00 	UNLINK;
ffa0254a:	02 30       	R0 = R2;
ffa0254c:	84 04       	(P5:4) = [SP++];
ffa0254e:	10 00       	RTS;
ffa02550:	01 30       	R0 = R1;
ffa02552:	08 64       	R0 += 0x1;		/* (  1) */
ffa02554:	10 97       	W[P2] = R0;
ffa02556:	01 e8 00 00 	UNLINK;
ffa0255a:	02 30       	R0 = R2;
ffa0255c:	84 04       	(P5:4) = [SP++];
ffa0255e:	10 00       	RTS;
ffa02560:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f4(-7339788) */
ffa02564:	00 e1 fc 01 	R0.L = 0x1fc;		/* (508)	R0=0xff9001fc(-7339524) */
ffa02568:	ff e3 90 f8 	CALL 0xffa01688 <_printf_int>;
ffa0256c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0256e:	01 e8 00 00 	UNLINK;
ffa02572:	02 30       	R0 = R2;
ffa02574:	84 04       	(P5:4) = [SP++];
ffa02576:	10 00       	RTS;

ffa02578 <_ether_testUDP>:
ffa02578:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0257a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb8 <_txIdx> */
ffa0257e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02582:	0a e1 b8 0e 	P2.L = 0xeb8;		/* (3768)	P2=0xff900eb8 <_txIdx> */
ffa02586:	11 95       	R1 = W[P2] (Z);
ffa02588:	11 32       	P2 = R1;
ffa0258a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa0258e:	09 e1 bc 0e 	P1.L = 0xebc;		/* (3772)	P1=0xff900ebc <_txbuf> */
ffa02592:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa02596:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02598:	52 91       	P2 = [P2];
ffa0259a:	95 ad       	P5 = [P2 + 0x18];
ffa0259c:	55 32       	P2 = P5;
ffa0259e:	11 96       	W[P2++] = R1;
ffa025a0:	4a 30       	R1 = P2;
ffa025a2:	00 e3 15 09 	CALL 0xffa037cc <_ARP_req>;
ffa025a6:	00 0c       	CC = R0 == 0x0;
ffa025a8:	7f 18       	IF CC JUMP 0xffa026a6 <_ether_testUDP+0x12e>;
ffa025aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb8 <_txIdx> */
ffa025ae:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurMAC> */
ffa025b2:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa025b4:	50 99       	R0 = B[P2] (X);
ffa025b6:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa025ba:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa025be:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa025c2:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa025c6:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa025ca:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa025ce:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa025d2:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa025d6:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa025da:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa025de:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa025e2:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa025e6:	ff e3 f5 fb 	CALL 0xffa01dd0 <_htons>;
ffa025ea:	e8 b5       	W[P5 + 0xe] = R0;
ffa025ec:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa025f0:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa025f4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa025f6:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa025fa:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa025fc:	ff e3 ea fb 	CALL 0xffa01dd0 <_htons>;
ffa02600:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetOurMAC> */
ffa02604:	0a e1 ba 0e 	P2.L = 0xeba;		/* (3770)	P2=0xff900eba <_NetIPID> */
ffa02608:	68 b6       	W[P5 + 0x12] = R0;
ffa0260a:	10 95       	R0 = W[P2] (Z);
ffa0260c:	08 30       	R1 = R0;
ffa0260e:	09 64       	R1 += 0x1;		/* (  1) */
ffa02610:	11 97       	W[P2] = R1;
ffa02612:	ff e3 df fb 	CALL 0xffa01dd0 <_htons>;
ffa02616:	a8 b6       	W[P5 + 0x14] = R0;
ffa02618:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa0261c:	ff e3 da fb 	CALL 0xffa01dd0 <_htons>;
ffa02620:	e8 b6       	W[P5 + 0x16] = R0;
ffa02622:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02624:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa02628:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eba <_NetIPID> */
ffa0262c:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0262e:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa02632:	0a e1 ec 0e 	P2.L = 0xeec;		/* (3820)	P2=0xff900eec <_NetOurIP> */
ffa02636:	10 91       	R0 = [P2];
ffa02638:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eec <_NetOurIP> */
ffa0263c:	0a e1 b0 0e 	P2.L = 0xeb0;		/* (3760)	P2=0xff900eb0 <_NetDestIP> */
ffa02640:	e8 b1       	[P5 + 0x1c] = R0;
ffa02642:	10 91       	R0 = [P2];
ffa02644:	28 b2       	[P5 + 0x20] = R0;
ffa02646:	45 30       	R0 = P5;
ffa02648:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0264a:	6f b7       	W[P5 + 0x1a] = R7;
ffa0264c:	80 64       	R0 += 0x10;		/* ( 16) */
ffa0264e:	ff e3 a9 fb 	CALL 0xffa01da0 <_NetCksum>;
ffa02652:	c0 43       	R0 =~ R0;
ffa02654:	68 b7       	W[P5 + 0x1a] = R0;
ffa02656:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa0265a:	ff e3 bb fb 	CALL 0xffa01dd0 <_htons>;
ffa0265e:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa02662:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa02666:	ff e3 b5 fb 	CALL 0xffa01dd0 <_htons>;
ffa0266a:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa0266e:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa02670:	ff e3 b0 fb 	CALL 0xffa01dd0 <_htons>;
ffa02674:	55 32       	P2 = P5;
ffa02676:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa0267a:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa0267e:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa02680:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02682:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa02684:	b2 e0 03 10 	LSETUP(0xffa02688 <_ether_testUDP+0x110>, 0xffa0268a <_ether_testUDP+0x112>) LC1 = P1;
ffa02688:	11 9a       	B[P2++] = R1;
ffa0268a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0268c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa02690:	00 e1 44 02 	R0.L = 0x244;		/* (580)	R0=0xff900244(-7339452) */
ffa02694:	ff e3 9c f8 	CALL 0xffa017cc <_printf_str>;
ffa02698:	ff e3 92 fc 	CALL 0xffa01fbc <_bfin_EMAC_send_nocopy>;
ffa0269c:	01 e8 00 00 	UNLINK;
ffa026a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026a2:	bd 05       	(R7:7, P5:5) = [SP++];
ffa026a4:	10 00       	RTS;
ffa026a6:	01 e8 00 00 	UNLINK;
ffa026aa:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa026ac:	bd 05       	(R7:7, P5:5) = [SP++];
ffa026ae:	10 00       	RTS;

ffa026b0 <_eth_header_setup>:
ffa026b0:	fc 05       	[--SP] = (R7:7, P5:4);
ffa026b2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb0 <_NetDestIP> */
ffa026b6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa026ba:	0a e1 b8 0e 	P2.L = 0xeb8;		/* (3768)	P2=0xff900eb8 <_txIdx> */
ffa026be:	00 32       	P0 = R0;
ffa026c0:	10 95       	R0 = W[P2] (Z);
ffa026c2:	10 32       	P2 = R0;
ffa026c4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa026c8:	09 e1 bc 0e 	P1.L = 0xebc;		/* (3772)	P1=0xff900ebc <_txbuf> */
ffa026cc:	00 91       	R0 = [P0];
ffa026ce:	21 32       	P4 = R1;
ffa026d0:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa026d2:	52 91       	P2 = [P2];
ffa026d4:	08 30       	R1 = R0;
ffa026d6:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa026d8:	80 67       	R0 += -0x10;		/* (-16) */
ffa026da:	95 ad       	P5 = [P2 + 0x18];
ffa026dc:	00 93       	[P0] = R0;
ffa026de:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa026e2:	3a 30       	R7 = R2;
ffa026e4:	29 97       	W[P5] = R1;
ffa026e6:	ff e3 81 fb 	CALL 0xffa01de8 <_htonl>;
ffa026ea:	38 54       	R0 = R0 & R7;
ffa026ec:	00 0c       	CC = R0 == 0x0;
ffa026ee:	3c 10       	IF !CC JUMP 0xffa02766 <_eth_header_setup+0xb6>;
ffa026f0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa026f2:	a8 e6 02 00 	B[P5 + 0x2] = R0;
ffa026f6:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa026fa:	a8 e6 04 00 	B[P5 + 0x4] = R0;
ffa026fe:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa02700:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02702:	a8 e6 06 00 	B[P5 + 0x6] = R0;
ffa02706:	d8 63       	R0 = -0x5 (X);		/*		R0=0xfffffffb( -5) */
ffa02708:	a9 e6 03 00 	B[P5 + 0x3] = R1;
ffa0270c:	a9 e6 05 00 	B[P5 + 0x5] = R1;
ffa02710:	a8 e6 07 00 	B[P5 + 0x7] = R0;
ffa02714:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb8 <_txIdx> */
ffa02718:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurMAC> */
ffa0271c:	50 99       	R0 = B[P2] (X);
ffa0271e:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02722:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa02726:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0272a:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa0272e:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa02732:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02736:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa0273a:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa0273e:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa02742:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa02746:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa0274a:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa0274e:	ff e3 41 fb 	CALL 0xffa01dd0 <_htons>;
ffa02752:	e8 b5       	W[P5 + 0xe] = R0;
ffa02754:	4d 30       	R1 = P5;
ffa02756:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02758:	81 64       	R1 += 0x10;		/* ( 16) */
ffa0275a:	20 9b       	B[P4] = R0;
ffa0275c:	01 e8 00 00 	UNLINK;
ffa02760:	01 30       	R0 = R1;
ffa02762:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02764:	10 00       	RTS;
ffa02766:	4d 30       	R1 = P5;
ffa02768:	11 64       	R1 += 0x2;		/* (  2) */
ffa0276a:	07 30       	R0 = R7;
ffa0276c:	00 e3 30 08 	CALL 0xffa037cc <_ARP_req>;
ffa02770:	00 0c       	CC = R0 == 0x0;
ffa02772:	d1 17       	IF !CC JUMP 0xffa02714 <_eth_header_setup+0x64> (BP);
ffa02774:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02776:	00 cc 09 c2 	R1 = R1 -|- R1 || B[P4] = R0 || NOP;
ffa0277a:	20 9b 00 00 
ffa0277e:	ef 2f       	JUMP.S 0xffa0275c <_eth_header_setup+0xac>;

ffa02780 <_icmp_packet_setup>:
ffa02780:	e4 05       	[--SP] = (R7:4, P5:4);
ffa02782:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02786:	29 32       	P5 = R1;
ffa02788:	7f 30       	R7 = FP;
ffa0278a:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa0278c:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0278e:	f0 bb       	[FP -0x4] = R0;
ffa02790:	07 30       	R0 = R7;
ffa02792:	22 32       	P4 = R2;
ffa02794:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa02798:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa0279c:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa027a0:	ff e3 88 ff 	CALL 0xffa026b0 <_eth_header_setup>;
ffa027a4:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa027a8:	68 99 00 00 
ffa027ac:	80 0c       	CC = R0 < 0x0;
ffa027ae:	14 18       	IF CC JUMP 0xffa027d6 <_icmp_packet_setup+0x56>;
ffa027b0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa027b2:	f0 b0       	[SP + 0xc] = R0;
ffa027b4:	54 30       	R2 = P4;
ffa027b6:	01 30       	R0 = R1;
ffa027b8:	0f 30       	R1 = R7;
ffa027ba:	ff e3 3f fb 	CALL 0xffa01e38 <_ip_header_setup>;
ffa027be:	e9 42       	R1 = R5.L (Z);
ffa027c0:	f1 b0       	[SP + 0xc] = R1;
ffa027c2:	e1 42       	R1 = R4.L (Z);
ffa027c4:	31 b1       	[SP + 0x10] = R1;
ffa027c6:	72 43       	R2 = R6.B (Z);
ffa027c8:	0f 30       	R1 = R7;
ffa027ca:	ff e3 87 fb 	CALL 0xffa01ed8 <_icmp_header_setup>;
ffa027ce:	01 e8 00 00 	UNLINK;
ffa027d2:	a4 05       	(R7:4, P5:4) = [SP++];
ffa027d4:	10 00       	RTS;
ffa027d6:	01 e8 00 00 	UNLINK;
ffa027da:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027dc:	a4 05       	(R7:4, P5:4) = [SP++];
ffa027de:	10 00       	RTS;

ffa027e0 <_icmp_rx>:
ffa027e0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa027e2:	28 32       	P5 = R0;
ffa027e4:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa027e8:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa027ec:	39 30       	R7 = R1;
ffa027ee:	ff e3 f1 fa 	CALL 0xffa01dd0 <_htons>;
ffa027f2:	c0 42       	R0 = R0.L (Z);
ffa027f4:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa027f6:	01 08       	CC = R1 == R0;
ffa027f8:	06 18       	IF CC JUMP 0xffa02804 <_icmp_rx+0x24>;
ffa027fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027fc:	01 e8 00 00 	UNLINK;
ffa02800:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02802:	10 00       	RTS;
ffa02804:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02806:	07 0a       	CC = R7 <= R0 (IU);
ffa02808:	f9 1b       	IF CC JUMP 0xffa027fa <_icmp_rx+0x1a>;
ffa0280a:	00 00       	NOP;
ffa0280c:	00 00       	NOP;
ffa0280e:	00 00       	NOP;
ffa02810:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa02814:	08 0c       	CC = R0 == 0x1;
ffa02816:	f2 17       	IF !CC JUMP 0xffa027fa <_icmp_rx+0x1a> (BP);
ffa02818:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetOurMAC> */
ffa0281c:	0a e1 ec 0e 	P2.L = 0xeec;		/* (3820)	P2=0xff900eec <_NetOurIP> */
ffa02820:	28 a2       	R0 = [P5 + 0x20];
ffa02822:	11 91       	R1 = [P2];
ffa02824:	08 08       	CC = R0 == R1;
ffa02826:	ea 17       	IF !CC JUMP 0xffa027fa <_icmp_rx+0x1a> (BP);
ffa02828:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa0282c:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa02830:	08 08       	CC = R0 == R1;
ffa02832:	3e 18       	IF CC JUMP 0xffa028ae <_icmp_rx+0xce>;
ffa02834:	00 00       	NOP;
ffa02836:	00 00       	NOP;
ffa02838:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa0283a:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa0283e:	08 08       	CC = R0 == R1;
ffa02840:	dd 17       	IF !CC JUMP 0xffa027fa <_icmp_rx+0x1a> (BP);
ffa02842:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa02846:	e9 a1       	R1 = [P5 + 0x1c];
ffa02848:	00 e1 5c 02 	R0.L = 0x25c;		/* (604)	R0=0xff90025c(-7339428) */
ffa0284c:	ff e3 c6 f7 	CALL 0xffa017d8 <_printf_ip>;
ffa02850:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eec <_NetOurIP> */
ffa02854:	0a e1 b0 0e 	P2.L = 0xeb0;		/* (3760)	P2=0xff900eb0 <_NetDestIP> */
ffa02858:	e8 a1       	R0 = [P5 + 0x1c];
ffa0285a:	4d 30       	R1 = P5;
ffa0285c:	10 93       	[P2] = R0;
ffa0285e:	41 64       	R1 += 0x8;		/* (  8) */
ffa02860:	00 e3 b8 05 	CALL 0xffa033d0 <_ARP_lut_add>;
ffa02864:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90025c(-7339428) */
ffa02868:	00 e1 9c 07 	R0.L = 0x79c;		/* (1948)	R0=0xff90079c(-7338084) */
ffa0286c:	ff e3 b0 f7 	CALL 0xffa017cc <_printf_str>;
ffa02870:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa02874:	ea a1 00 00 
ffa02878:	f0 b0       	[SP + 0xc] = R0;
ffa0287a:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa0287e:	30 b1       	[SP + 0x10] = R0;
ffa02880:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa02882:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa02886:	4f 30       	R1 = FP;
ffa02888:	70 b1       	[SP + 0x14] = R0;
ffa0288a:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0288c:	07 30       	R0 = R7;
ffa0288e:	ff e3 79 ff 	CALL 0xffa02780 <_icmp_packet_setup>;
ffa02892:	08 30       	R1 = R0;
ffa02894:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa02898:	00 0d       	CC = R0 <= 0x0;
ffa0289a:	b0 1b       	IF CC JUMP 0xffa027fa <_icmp_rx+0x1a>;
ffa0289c:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa0289e:	45 30       	R0 = P5;
ffa028a0:	17 30       	R2 = R7;
ffa028a2:	ff e3 df f7 	CALL 0xffa01860 <_memcpy_>;
ffa028a6:	ff e3 8b fb 	CALL 0xffa01fbc <_bfin_EMAC_send_nocopy>;
ffa028aa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa028ac:	a8 2f       	JUMP.S 0xffa027fc <_icmp_rx+0x1c>;
ffa028ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb0 <_NetDestIP> */
ffa028b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa028b4:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_g_streamEnabled> */
ffa028b8:	10 9b       	B[P2] = R0;
ffa028ba:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa028bc:	a0 2f       	JUMP.S 0xffa027fc <_icmp_rx+0x1c>;
	...

ffa028c0 <_udp_packet_setup>:
ffa028c0:	fc 05       	[--SP] = (R7:7, P5:4);
ffa028c2:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa028c6:	29 32       	P5 = R1;
ffa028c8:	7f 30       	R7 = FP;
ffa028ca:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900eb8 <_txIdx> */
ffa028ce:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa028d0:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa028d2:	0c e1 f0 0e 	P4.L = 0xef0;		/* (3824)	P4=0xff900ef0 <_NetDataDestIP> */
ffa028d6:	f0 bb       	[FP -0x4] = R0;
ffa028d8:	22 91       	R2 = [P4];
ffa028da:	07 30       	R0 = R7;
ffa028dc:	ff e3 ea fe 	CALL 0xffa026b0 <_eth_header_setup>;
ffa028e0:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa028e4:	68 99 00 00 
ffa028e8:	80 0c       	CC = R0 < 0x0;
ffa028ea:	14 18       	IF CC JUMP 0xffa02912 <_udp_packet_setup+0x52>;
ffa028ec:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa028ee:	f0 b0       	[SP + 0xc] = R0;
ffa028f0:	01 30       	R0 = R1;
ffa028f2:	22 91       	R2 = [P4];
ffa028f4:	0f 30       	R1 = R7;
ffa028f6:	ff e3 a1 fa 	CALL 0xffa01e38 <_ip_header_setup>;
ffa028fa:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa028fe:	f1 b0       	[SP + 0xc] = R1;
ffa02900:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa02904:	0f 30       	R1 = R7;
ffa02906:	ff e3 0d fb 	CALL 0xffa01f20 <_udp_header_setup>;
ffa0290a:	01 e8 00 00 	UNLINK;
ffa0290e:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02910:	10 00       	RTS;
ffa02912:	01 e8 00 00 	UNLINK;
ffa02916:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02918:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0291a:	10 00       	RTS;

ffa0291c <_SetupTxBuffer>:
ffa0291c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0291e:	38 30       	R7 = R0;
ffa02920:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02924:	c7 40       	R7 *= R0;
ffa02926:	17 32       	P2 = R7;
ffa02928:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800ebc */
ffa0292c:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa02930:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02934:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa02938:	6a 5b       	P5 = P2 + P5;
ffa0293a:	c7 51       	R7 = R7 + R0;
ffa0293c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02940:	45 30       	R0 = P5;
ffa02942:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02944:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa02946:	ff e3 9d f7 	CALL 0xffa01880 <_memset_>;
ffa0294a:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa0294e:	af b1 00 00 
ffa02952:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa02956:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa0295a:	ff e3 93 f7 	CALL 0xffa01880 <_memset_>;
ffa0295e:	45 30       	R0 = P5;
ffa02960:	60 64       	R0 += 0xc;		/* ( 12) */
ffa02962:	28 93       	[P5] = R0;
ffa02964:	a8 a1       	R0 = [P5 + 0x18];
ffa02966:	68 b0       	[P5 + 0x4] = R0;
ffa02968:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa0296c:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0296e:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa02970:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa02972:	10 54       	R0 = R0 & R2;
ffa02974:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02976:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0297a:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa0297c:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa02980:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa02982:	18 54       	R0 = R0 & R3;
ffa02984:	08 56       	R0 = R0 | R1;
ffa02986:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0298a:	08 56       	R0 = R0 | R1;
ffa0298c:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02990:	45 30       	R0 = P5;
ffa02992:	40 65       	R0 += 0x28;		/* ( 40) */
ffa02994:	28 b1       	[P5 + 0x10] = R0;
ffa02996:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa0299a:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0299c:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0299e:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa029a2:	10 54       	R0 = R0 & R2;
ffa029a4:	08 56       	R0 = R0 | R1;
ffa029a6:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa029aa:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa029ae:	18 54       	R0 = R0 & R3;
ffa029b0:	39 64       	R1 += 0x7;		/* (  7) */
ffa029b2:	08 54       	R0 = R0 & R1;
ffa029b4:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa029b8:	ed bc       	[P5 + 0xc] = P5;
ffa029ba:	01 e8 00 00 	UNLINK;
ffa029be:	45 30       	R0 = P5;
ffa029c0:	bd 05       	(R7:7, P5:5) = [SP++];
ffa029c2:	10 00       	RTS;

ffa029c4 <_SetupRxBuffer>:
ffa029c4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa029c6:	38 30       	R7 = R0;
ffa029c8:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa029cc:	c7 40       	R7 *= R0;
ffa029ce:	17 32       	P2 = R7;
ffa029d0:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa029d4:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa029d8:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa029dc:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa029e0:	6a 5b       	P5 = P2 + P5;
ffa029e2:	c7 51       	R7 = R7 + R0;
ffa029e4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa029e8:	45 30       	R0 = P5;
ffa029ea:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa029ec:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa029ee:	ff e3 49 f7 	CALL 0xffa01880 <_memset_>;
ffa029f2:	af b1       	[P5 + 0x18] = R7;
ffa029f4:	07 30       	R0 = R7;
ffa029f6:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa029fa:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa029fe:	ff e3 41 f7 	CALL 0xffa01880 <_memset_>;
ffa02a02:	45 30       	R0 = P5;
ffa02a04:	60 64       	R0 += 0xc;		/* ( 12) */
ffa02a06:	28 93       	[P5] = R0;
ffa02a08:	a8 a1       	R0 = [P5 + 0x18];
ffa02a0a:	68 b0       	[P5 + 0x4] = R0;
ffa02a0c:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa02a10:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02a12:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa02a14:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02a16:	08 54       	R0 = R0 & R1;
ffa02a18:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02a1a:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02a1e:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa02a20:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa02a24:	38 54       	R0 = R0 & R7;
ffa02a26:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa02a28:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa02a2c:	18 56       	R0 = R0 | R3;
ffa02a2e:	10 56       	R0 = R0 | R2;
ffa02a30:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02a34:	45 30       	R0 = P5;
ffa02a36:	20 65       	R0 += 0x24;		/* ( 36) */
ffa02a38:	28 b1       	[P5 + 0x10] = R0;
ffa02a3a:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa02a3e:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02a40:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02a42:	08 54       	R0 = R0 & R1;
ffa02a44:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa02a48:	08 56       	R0 = R0 | R1;
ffa02a4a:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa02a4e:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa02a52:	38 54       	R0 = R0 & R7;
ffa02a54:	18 56       	R0 = R0 | R3;
ffa02a56:	10 56       	R0 = R0 | R2;
ffa02a58:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02a5c:	ed bc       	[P5 + 0xc] = P5;
ffa02a5e:	01 e8 00 00 	UNLINK;
ffa02a62:	45 30       	R0 = P5;
ffa02a64:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02a66:	10 00       	RTS;

ffa02a68 <_SetupSystemRegs>:
ffa02a68:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02a6a:	28 32       	P5 = R0;
ffa02a6c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa02a70:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02a74:	00 e1 78 02 	R0.L = 0x278;		/* (632)	R0=0xff900278(-7339400) */
ffa02a78:	ff e3 aa f6 	CALL 0xffa017cc <_printf_str>;
ffa02a7c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa02a80:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa02a84:	50 95       	R0 = W[P2] (X);
ffa02a86:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa02a8a:	08 54       	R0 = R0 & R1;
ffa02a8c:	10 97       	W[P2] = R0;
ffa02a8e:	50 95       	R0 = W[P2] (X);
ffa02a90:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa02a92:	10 97       	W[P2] = R0;
ffa02a94:	82 6f       	P2 += -0x10;		/* (-16) */
ffa02a96:	51 95       	R1 = W[P2] (X);
ffa02a98:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa02a9c:	08 56       	R0 = R0 | R1;
ffa02a9e:	10 97       	W[P2] = R0;
ffa02aa0:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02aa2:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02aa4:	10 97       	W[P2] = R0;
ffa02aa6:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa02aa8:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa02aaa:	10 97       	W[P2] = R0;
ffa02aac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa02ab0:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa02ab4:	50 95       	R0 = W[P2] (X);
ffa02ab6:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa02ab8:	10 97       	W[P2] = R0;
ffa02aba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa02abe:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa02ac2:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa02ac6:	10 93       	[P2] = R0;
ffa02ac8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02aca:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa02ace:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02ad0:	ff e3 0c f9 	CALL 0xffa01ce8 <_WrPHYReg>;
ffa02ad4:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02ad8:	ff e3 b2 f8 	CALL 0xffa01c3c <_udelay>;
ffa02adc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02ade:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02ae0:	ff e3 20 f9 	CALL 0xffa01d20 <_RdPHYReg>;
ffa02ae4:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02ae6:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa02ae8:	0e 20       	JUMP.S 0xffa02b04 <_SetupSystemRegs+0x9c>;
ffa02aea:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02aee:	ff e3 a7 f8 	CALL 0xffa01c3c <_udelay>;
ffa02af2:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02af4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02af6:	ff e3 15 f9 	CALL 0xffa01d20 <_RdPHYReg>;
ffa02afa:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02afc:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa02b00:	0f 08       	CC = R7 == R1;
ffa02b02:	35 18       	IF CC JUMP 0xffa02b6c <_SetupSystemRegs+0x104>;
ffa02b04:	06 54       	R0 = R6 & R0;
ffa02b06:	00 0c       	CC = R0 == 0x0;
ffa02b08:	f1 1f       	IF CC JUMP 0xffa02aea <_SetupSystemRegs+0x82> (BP);
ffa02b0a:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa02b0c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b0e:	ff e3 09 f9 	CALL 0xffa01d20 <_RdPHYReg>;
ffa02b12:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa02b16:	01 54       	R0 = R1 & R0;
ffa02b18:	00 0c       	CC = R0 == 0x0;
ffa02b1a:	27 1c       	IF CC JUMP 0xffa02b68 <_SetupSystemRegs+0x100> (BP);
ffa02b1c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02b1e:	d0 4f       	R0 <<= 0x1a;
ffa02b20:	28 93       	[P5] = R0;
ffa02b22:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa02b26:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02b28:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa02b2c:	10 93       	[P2] = R0;
ffa02b2e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa02b32:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b34:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa02b38:	10 97       	W[P2] = R0;
ffa02b3a:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa02b3c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02b3e:	11 97       	W[P2] = R1;
ffa02b40:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02b42:	10 97       	W[P2] = R0;
ffa02b44:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02b46:	10 97       	W[P2] = R0;
ffa02b48:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa02b4c:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa02b50:	10 97       	W[P2] = R0;
ffa02b52:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02b54:	11 97       	W[P2] = R1;
ffa02b56:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02b58:	10 97       	W[P2] = R0;
ffa02b5a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02b5c:	10 97       	W[P2] = R0;
ffa02b5e:	01 e8 00 00 	UNLINK;
ffa02b62:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b64:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02b66:	10 00       	RTS;
ffa02b68:	28 93       	[P5] = R0;
ffa02b6a:	dc 2f       	JUMP.S 0xffa02b22 <_SetupSystemRegs+0xba>;
ffa02b6c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02b70:	00 e1 90 02 	R0.L = 0x290;		/* (656)	R0=0xff900290(-7339376) */
ffa02b74:	ff e3 2c f6 	CALL 0xffa017cc <_printf_str>;
ffa02b78:	01 e8 00 00 	UNLINK;
ffa02b7c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02b7e:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02b80:	10 00       	RTS;
	...

ffa02b84 <_SetupMacAddr>:
ffa02b84:	10 32       	P2 = R0;
ffa02b86:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02b88:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b8a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02b8e:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa02b92:	10 9b       	B[P2] = R0;
ffa02b94:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa02b96:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa02b9a:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa02b9c:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa02ba0:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa02ba2:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa02ba6:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa02baa:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02bae:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02bb0:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02bb4:	10 99       	R0 = B[P2] (Z);
ffa02bb6:	08 56       	R0 = R0 | R1;
ffa02bb8:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa02bbc:	89 4f       	R1 <<= 0x11;
ffa02bbe:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00ebc(-4190532) */
ffa02bc2:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa02bc6:	08 56       	R0 = R0 | R1;
ffa02bc8:	08 93       	[P1] = R0;
ffa02bca:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02bce:	21 e1 00 0a 	R1 = 0xa00 (X);		/*		R1=0xa00(2560) */
ffa02bd2:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa02bd6:	08 56       	R0 = R0 | R1;
ffa02bd8:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa02bdc:	28 93       	[P5] = R0;
ffa02bde:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa02be2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000a(-7340022) */
ffa02be6:	09 91       	R1 = [P1];
ffa02be8:	07 e1 9c 07 	R7.L = 0x79c;		/* (1948)	R7=0xff90079c(-7338084) */
ffa02bec:	00 e1 c4 02 	R0.L = 0x2c4;		/* (708)	R0=0xff9002c4(-7339324) */
ffa02bf0:	ff e3 f0 f4 	CALL 0xffa015d0 <_printf_hex>;
ffa02bf4:	07 30       	R0 = R7;
ffa02bf6:	ff e3 eb f5 	CALL 0xffa017cc <_printf_str>;
ffa02bfa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002c4(-7339324) */
ffa02bfe:	29 91       	R1 = [P5];
ffa02c00:	00 e1 d0 02 	R0.L = 0x2d0;		/* (720)	R0=0xff9002d0(-7339312) */
ffa02c04:	ff e3 e6 f4 	CALL 0xffa015d0 <_printf_hex>;
ffa02c08:	01 e8 00 00 	UNLINK;
ffa02c0c:	07 30       	R0 = R7;
ffa02c0e:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02c10:	ff e2 de f5 	JUMP.L 0xffa017cc <_printf_str>;

ffa02c14 <_bfin_EMAC_init>:
ffa02c14:	f3 05       	[--SP] = (R7:6, P5:3);
ffa02c16:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002d0(-7339312) */
ffa02c1a:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02c1e:	00 e1 dc 02 	R0.L = 0x2dc;		/* (732)	R0=0xff9002dc(-7339300) */
ffa02c22:	ff e3 d5 f5 	CALL 0xffa017cc <_printf_str>;
ffa02c26:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 */
ffa02c2a:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02c2c:	0a e1 b8 0e 	P2.L = 0xeb8;		/* (3768)	P2=0xff900eb8 <_txIdx> */
ffa02c30:	16 97       	W[P2] = R6;
ffa02c32:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb8 <_txIdx> */
ffa02c36:	0a e1 cc 0e 	P2.L = 0xecc;		/* (3788)	P2=0xff900ecc <_rxIdx> */
ffa02c3a:	16 97       	W[P2] = R6;
ffa02c3c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ecc <_rxIdx> */
ffa02c40:	0a e1 ba 0e 	P2.L = 0xeba;		/* (3770)	P2=0xff900eba <_NetIPID> */
ffa02c44:	16 97       	W[P2] = R6;
ffa02c46:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eba <_NetIPID> */
ffa02c4a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02c4c:	0a e1 e8 0e 	P2.L = 0xee8;		/* (3816)	P2=0xff900ee8 <_NetSubnetMask> */
ffa02c50:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa02c52:	17 93       	[P2] = R7;
ffa02c54:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa02c58:	f0 b0       	[SP + 0xc] = R0;
ffa02c5a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02c5c:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02c60:	ff e3 0e f8 	CALL 0xffa01c7c <_FormatIPAddress>;
ffa02c64:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee8 <_NetSubnetMask> */
ffa02c68:	0a e1 ec 0e 	P2.L = 0xeec;		/* (3820)	P2=0xff900eec <_NetOurIP> */
ffa02c6c:	10 93       	[P2] = R0;
ffa02c6e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c70:	f0 b0       	[SP + 0xc] = R0;
ffa02c72:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa02c76:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02c78:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02c7c:	ff e3 00 f8 	CALL 0xffa01c7c <_FormatIPAddress>;
ffa02c80:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eec <_NetOurIP> */
ffa02c84:	0a e1 b0 0e 	P2.L = 0xeb0;		/* (3760)	P2=0xff900eb0 <_NetDestIP> */
ffa02c88:	10 93       	[P2] = R0;
ffa02c8a:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02c8c:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa02c8e:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa02c92:	f0 b0       	[SP + 0xc] = R0;
ffa02c94:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa02c98:	ff e3 f2 f7 	CALL 0xffa01c7c <_FormatIPAddress>;
ffa02c9c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb0 <_NetDestIP> */
ffa02ca0:	0a e1 f0 0e 	P2.L = 0xef0;		/* (3824)	P2=0xff900ef0 <_NetDataDestIP> */
ffa02ca4:	10 93       	[P2] = R0;
ffa02ca6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef0 <_NetDataDestIP> */
ffa02caa:	0a e1 d0 0f 	P2.L = 0xfd0;		/* (4048)	P2=0xff900fd0 <_TcpState> */
ffa02cae:	17 93       	[P2] = R7;
ffa02cb0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd0 <_TcpState> */
ffa02cb4:	0a e1 c8 0f 	P2.L = 0xfc8;		/* (4040)	P2=0xff900fc8 <_TcpSeqClient> */
ffa02cb8:	17 93       	[P2] = R7;
ffa02cba:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa02cbe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc8 <_TcpSeqClient> */
ffa02cc2:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa02cc6:	0a e1 c4 0f 	P2.L = 0xfc4;		/* (4036)	P2=0xff900fc4 <_TcpSeqHost> */
ffa02cca:	10 93       	[P2] = R0;
ffa02ccc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc4 <_TcpSeqHost> */
ffa02cd0:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_TcpClientPort> */
ffa02cd4:	16 97       	W[P2] = R6;
ffa02cd6:	00 e3 2f 03 	CALL 0xffa03334 <_ARP_init>;
ffa02cda:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00fdc(-4190244) */
ffa02cde:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02ce2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa02ce6:	17 93       	[P2] = R7;
ffa02ce8:	00 e1 e0 0e 	R0.L = 0xee0;		/* (3808)	R0=0xff900ee0 <_NetOurMAC>(-7336224) */
ffa02cec:	ff e3 4c ff 	CALL 0xffa02b84 <_SetupMacAddr>;
ffa02cf0:	47 30       	R0 = FP;
ffa02cf2:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa02cf4:	ff e3 ba fe 	CALL 0xffa02a68 <_SetupSystemRegs>;
ffa02cf8:	80 0c       	CC = R0 < 0x0;
ffa02cfa:	7a 18       	IF CC JUMP 0xffa02dee <_bfin_EMAC_init+0x1da>;
ffa02cfc:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa02d00:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02d02:	07 e1 d0 0e 	R7.L = 0xed0;		/* (3792)	R7=0xff900ed0 <_rxbuf>(-7336240) */
ffa02d06:	ff e3 5f fe 	CALL 0xffa029c4 <_SetupRxBuffer>;
ffa02d0a:	07 32       	P0 = R7;
ffa02d0c:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02d0e:	00 93       	[P0] = R0;
ffa02d10:	17 32       	P2 = R7;
ffa02d12:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa02d14:	44 30       	R0 = P4;
ffa02d16:	ff e3 57 fe 	CALL 0xffa029c4 <_SetupRxBuffer>;
ffa02d1a:	44 0c       	CC = P4 == 0x0;
ffa02d1c:	08 32       	P1 = R0;
ffa02d1e:	28 92       	[P5++] = R0;
ffa02d20:	52 18       	IF CC JUMP 0xffa02dc4 <_bfin_EMAC_init+0x1b0>;
ffa02d22:	07 32       	P0 = R7;
ffa02d24:	5c 0c       	CC = P4 == 0x3;
ffa02d26:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa02d28:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa02d2c:	d0 b0       	[P2 + 0xc] = R0;
ffa02d2e:	54 18       	IF CC JUMP 0xffa02dd6 <_bfin_EMAC_init+0x1c2>;
ffa02d30:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa02d32:	5c 0d       	CC = P4 <= 0x3;
ffa02d34:	ee 1f       	IF CC JUMP 0xffa02d10 <_bfin_EMAC_init+0xfc> (BP);
ffa02d36:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02d38:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e68 <_printf_temp> */
ffa02d3c:	ff e3 f0 fd 	CALL 0xffa0291c <_SetupTxBuffer>;
ffa02d40:	0b e1 bc 0e 	P3.L = 0xebc;		/* (3772)	P3=0xff900ebc <_txbuf> */
ffa02d44:	18 93       	[P3] = R0;
ffa02d46:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02d48:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa02d4a:	44 30       	R0 = P4;
ffa02d4c:	ff e3 e8 fd 	CALL 0xffa0291c <_SetupTxBuffer>;
ffa02d50:	44 0c       	CC = P4 == 0x0;
ffa02d52:	08 32       	P1 = R0;
ffa02d54:	28 92       	[P5++] = R0;
ffa02d56:	35 18       	IF CC JUMP 0xffa02dc0 <_bfin_EMAC_init+0x1ac>;
ffa02d58:	00 00       	NOP;
ffa02d5a:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa02d5c:	5c 0c       	CC = P4 == 0x3;
ffa02d5e:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa02d62:	d0 b0       	[P2 + 0xc] = R0;
ffa02d64:	32 18       	IF CC JUMP 0xffa02dc8 <_bfin_EMAC_init+0x1b4>;
ffa02d66:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa02d68:	5c 0d       	CC = P4 <= 0x3;
ffa02d6a:	ef 1f       	IF CC JUMP 0xffa02d48 <_bfin_EMAC_init+0x134> (BP);
ffa02d6c:	17 32       	P2 = R7;
ffa02d6e:	51 91       	P1 = [P2];
ffa02d70:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa02d74:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa02d78:	51 93       	[P2] = P1;
ffa02d7a:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa02d7c:	42 6c       	P2 += 0x8;		/* (  8) */
ffa02d7e:	10 97       	W[P2] = R0;
ffa02d80:	ff e3 a6 f7 	CALL 0xffa01ccc <_PollMdcDone>;
ffa02d84:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02d86:	f0 b9       	R0 = [FP -0x4];
ffa02d88:	d1 4f       	R1 <<= 0x1a;
ffa02d8a:	08 08       	CC = R0 == R1;
ffa02d8c:	2c 18       	IF CC JUMP 0xffa02de4 <_bfin_EMAC_init+0x1d0>;
ffa02d8e:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02d92:	01 30       	R0 = R1;
ffa02d94:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa02d98:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02d9c:	10 93       	[P2] = R0;
ffa02d9e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02da2:	00 e1 ec 02 	R0.L = 0x2ec;		/* (748)	R0=0xff9002ec(-7339284) */
ffa02da6:	ff e3 15 f4 	CALL 0xffa015d0 <_printf_hex>;
ffa02daa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002ec(-7339284) */
ffa02dae:	00 e1 9c 07 	R0.L = 0x79c;		/* (1948)	R0=0xff90079c(-7338084) */
ffa02db2:	ff e3 0d f5 	CALL 0xffa017cc <_printf_str>;
ffa02db6:	01 e8 00 00 	UNLINK;
ffa02dba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02dbc:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02dbe:	10 00       	RTS;
ffa02dc0:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02dc2:	c4 2f       	JUMP.S 0xffa02d4a <_bfin_EMAC_init+0x136>;
ffa02dc4:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02dc6:	a7 2f       	JUMP.S 0xffa02d14 <_bfin_EMAC_init+0x100>;
ffa02dc8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa02dcc:	0a e1 bc 0e 	P2.L = 0xebc;		/* (3772)	P2=0xff900ebc <_txbuf> */
ffa02dd0:	10 91       	R0 = [P2];
ffa02dd2:	c8 b0       	[P1 + 0xc] = R0;
ffa02dd4:	cc 2f       	JUMP.S 0xffa02d6c <_bfin_EMAC_init+0x158>;
ffa02dd6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ebc <_txbuf> */
ffa02dda:	0a e1 d0 0e 	P2.L = 0xed0;		/* (3792)	P2=0xff900ed0 <_rxbuf> */
ffa02dde:	10 91       	R0 = [P2];
ffa02de0:	c8 b0       	[P1 + 0xc] = R0;
ffa02de2:	aa 2f       	JUMP.S 0xffa02d36 <_bfin_EMAC_init+0x122>;
ffa02de4:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02de8:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa02dea:	01 30       	R0 = R1;
ffa02dec:	d4 2f       	JUMP.S 0xffa02d94 <_bfin_EMAC_init+0x180>;
ffa02dee:	01 e8 00 00 	UNLINK;
ffa02df2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02df4:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02df6:	10 00       	RTS;

ffa02df8 <_bfin_EMAC_recv_poll>:
ffa02df8:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02dfa:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa02dfe:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa02e02:	0d e1 d0 0e 	P5.L = 0xed0;		/* (3792)	P5=0xff900ed0 <_rxbuf> */
ffa02e06:	0c e1 cc 0e 	P4.L = 0xecc;		/* (3788)	P4=0xff900ecc <_rxIdx> */
ffa02e0a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02e0e:	28 30       	R5 = R0;
ffa02e10:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02e12:	75 30       	R6 = P5;
ffa02e14:	5c 32       	P3 = P4;
ffa02e16:	06 20       	JUMP.S 0xffa02e22 <_bfin_EMAC_recv_poll+0x2a>;
ffa02e18:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02e1a:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02e1e:	07 08       	CC = R7 == R0;
ffa02e20:	59 18       	IF CC JUMP 0xffa02ed2 <_bfin_EMAC_recv_poll+0xda>;
ffa02e22:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02e26:	ff e3 0b f7 	CALL 0xffa01c3c <_udelay>;
ffa02e2a:	20 95       	R0 = W[P4] (Z);
ffa02e2c:	10 32       	P2 = R0;
ffa02e2e:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02e30:	52 91       	P2 = [P2];
ffa02e32:	90 a2       	R0 = [P2 + 0x28];
ffa02e34:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02e36:	f1 1f       	IF CC JUMP 0xffa02e18 <_bfin_EMAC_recv_poll+0x20> (BP);
ffa02e38:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02e3c:	91 a2       	R1 = [P2 + 0x28];
ffa02e3e:	41 54       	R1 = R1 & R0;
ffa02e40:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02e42:	01 09       	CC = R1 <= R0;
ffa02e44:	07 10       	IF !CC JUMP 0xffa02e52 <_bfin_EMAC_recv_poll+0x5a>;
ffa02e46:	01 e8 00 00 	UNLINK;
ffa02e4a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02e4c:	07 30       	R0 = R7;
ffa02e4e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02e50:	10 00       	RTS;
ffa02e52:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02e54:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa02e58:	90 b2 00 00 
ffa02e5c:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02e5e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02e62:	0f 30       	R1 = R7;
ffa02e64:	00 e1 f8 02 	R0.L = 0x2f8;		/* (760)	R0=0xff9002f8(-7339272) */
ffa02e68:	ff e3 10 f4 	CALL 0xffa01688 <_printf_int>;
ffa02e6c:	18 95       	R0 = W[P3] (Z);
ffa02e6e:	10 32       	P2 = R0;
ffa02e70:	0e 32       	P1 = R6;
ffa02e72:	0f 30       	R1 = R7;
ffa02e74:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02e76:	52 91       	P2 = [P2];
ffa02e78:	90 a1       	R0 = [P2 + 0x18];
ffa02e7a:	15 32       	P2 = R5;
ffa02e7c:	10 93       	[P2] = R0;
ffa02e7e:	00 e3 0f 03 	CALL 0xffa0349c <_ARP_rx>;
ffa02e82:	00 0c       	CC = R0 == 0x0;
ffa02e84:	1f 18       	IF CC JUMP 0xffa02ec2 <_bfin_EMAC_recv_poll+0xca>;
ffa02e86:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02e88:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02e8c:	20 95       	R0 = W[P4] (Z);
ffa02e8e:	10 32       	P2 = R0;
ffa02e90:	61 95       	R1 = W[P4] (X);
ffa02e92:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02e94:	09 e1 cc 0e 	P1.L = 0xecc;		/* (3788)	P1=0xff900ecc <_rxIdx> */
ffa02e98:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02e9a:	52 91       	P2 = [P2];
ffa02e9c:	90 b2       	[P2 + 0x28] = R0;
ffa02e9e:	c8 42       	R0 = R1.L (Z);
ffa02ea0:	10 0d       	CC = R0 <= 0x2;
ffa02ea2:	09 14       	IF !CC JUMP 0xffa02eb4 <_bfin_EMAC_recv_poll+0xbc> (BP);
ffa02ea4:	01 30       	R0 = R1;
ffa02ea6:	08 64       	R0 += 0x1;		/* (  1) */
ffa02ea8:	08 97       	W[P1] = R0;
ffa02eaa:	01 e8 00 00 	UNLINK;
ffa02eae:	07 30       	R0 = R7;
ffa02eb0:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02eb2:	10 00       	RTS;
ffa02eb4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02eb6:	08 97       	W[P1] = R0;
ffa02eb8:	01 e8 00 00 	UNLINK;
ffa02ebc:	07 30       	R0 = R7;
ffa02ebe:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02ec0:	10 00       	RTS;
ffa02ec2:	0d 32       	P1 = R5;
ffa02ec4:	0f 30       	R1 = R7;
ffa02ec6:	08 91       	R0 = [P1];
ffa02ec8:	ff e3 8c fc 	CALL 0xffa027e0 <_icmp_rx>;
ffa02ecc:	00 0c       	CC = R0 == 0x0;
ffa02ece:	dd 1f       	IF CC JUMP 0xffa02e88 <_bfin_EMAC_recv_poll+0x90> (BP);
ffa02ed0:	db 2f       	JUMP.S 0xffa02e86 <_bfin_EMAC_recv_poll+0x8e>;
ffa02ed2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02ed6:	00 e1 04 03 	R0.L = 0x304;		/* (772)	R0=0xff900304(-7339260) */
ffa02eda:	ff e3 79 f4 	CALL 0xffa017cc <_printf_str>;
ffa02ede:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02ee0:	01 e8 00 00 	UNLINK;
ffa02ee4:	07 30       	R0 = R7;
ffa02ee6:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02ee8:	10 00       	RTS;
	...

ffa02eec <_bridge_publish>:
ffa02eec:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02eee:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02ef2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ef4:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa02ef8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02efa:	f0 b0       	[SP + 0xc] = R0;
ffa02efc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02efe:	20 e1 ef 00 	R0 = 0xef (X);		/*		R0=0xef(239) */
ffa02f02:	22 e1 c8 00 	R2 = 0xc8 (X);		/*		R2=0xc8(200) */
ffa02f06:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900ecc <_rxIdx> */
ffa02f0a:	6f 30       	R5 = FP;
ffa02f0c:	5f 32       	P3 = FP;
ffa02f0e:	ff e3 b7 f6 	CALL 0xffa01c7c <_FormatIPAddress>;
ffa02f12:	0c e1 f0 0e 	P4.L = 0xef0;		/* (3824)	P4=0xff900ef0 <_NetDataDestIP> */
ffa02f16:	00 cc 24 c8 	R4 = R4 -|- R4 || [P4] = R0 || NOP;
ffa02f1a:	20 93 00 00 
ffa02f1e:	c5 67       	R5 += -0x8;		/* ( -8) */
ffa02f20:	fb 6f       	P3 += -0x1;		/* ( -1) */
ffa02f22:	01 20       	JUMP.S 0xffa02f24 <_bridge_publish+0x38>;
ffa02f24:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02f26:	e0 bb       	[FP -0x8] = R0;
ffa02f28:	4b 30       	R1 = P3;
ffa02f2a:	82 ce 05 c0 	R0 = ROT R5 BY 0x0 || R2 = [P4] || NOP;
ffa02f2e:	22 91 00 00 
ffa02f32:	ff e3 bf fb 	CALL 0xffa026b0 <_eth_header_setup>;
ffa02f36:	08 30       	R1 = R0;
ffa02f38:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa02f3c:	80 0c       	CC = R0 < 0x0;
ffa02f3e:	9c 18       	IF CC JUMP 0xffa03076 <_bridge_publish+0x18a>;
ffa02f40:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed0 <_rxbuf> */
ffa02f44:	0a e1 f0 0e 	P2.L = 0xef0;		/* (3824)	P2=0xff900ef0 <_NetDataDestIP> */
ffa02f48:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa02f4a:	12 91       	R2 = [P2];
ffa02f4c:	d1 bb       	[FP -0xc] = R1;
ffa02f4e:	f0 b0       	[SP + 0xc] = R0;
ffa02f50:	01 30       	R0 = R1;
ffa02f52:	0d 30       	R1 = R5;
ffa02f54:	ff e3 72 f7 	CALL 0xffa01e38 <_ip_header_setup>;
ffa02f58:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa02f5c:	f1 b0       	[SP + 0xc] = R1;
ffa02f5e:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa02f62:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [FP -0xc] = R0 || NOP;
ffa02f66:	d0 bb 00 00 
ffa02f6a:	ff e3 db f7 	CALL 0xffa01f20 <_udp_header_setup>;
ffa02f6e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [FP -0xc] = R0 || NOP;
ffa02f72:	d0 bb 00 00 
ffa02f76:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900011(-7340015) */
ffa02f7a:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
ffa02f7c:	00 e1 14 03 	R0.L = 0x314;		/* (788)	R0=0xff900314(-7339244) */
ffa02f80:	ff e3 70 f4 	CALL 0xffa01860 <_memcpy_>;
ffa02f84:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900314(-7339244) */
ffa02f88:	00 e1 20 03 	R0.L = 0x320;		/* (800)	R0=0xff900320(-7339232) */
ffa02f8c:	77 30       	R6 = FP;
ffa02f8e:	ff e3 1f f4 	CALL 0xffa017cc <_printf_str>;
ffa02f92:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02f94:	ff e3 14 f8 	CALL 0xffa01fbc <_bfin_EMAC_send_nocopy>;
ffa02f98:	a6 67       	R6 += -0xc;		/* (-12) */
ffa02f9a:	05 20       	JUMP.S 0xffa02fa4 <_bridge_publish+0xb8>;
ffa02f9c:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02f9e:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02fa0:	07 08       	CC = R7 == R0;
ffa02fa2:	46 18       	IF CC JUMP 0xffa0302e <_bridge_publish+0x142>;
ffa02fa4:	06 30       	R0 = R6;
ffa02fa6:	ff e3 29 ff 	CALL 0xffa02df8 <_bfin_EMAC_recv_poll>;
ffa02faa:	59 61       	R1 = 0x2b (X);		/*		R1=0x2b( 43) */
ffa02fac:	08 09       	CC = R0 <= R1;
ffa02fae:	e0 bb       	[FP -0x8] = R0;
ffa02fb0:	dd b9       	P5 = [FP -0xc];
ffa02fb2:	f5 1f       	IF CC JUMP 0xffa02f9c <_bridge_publish+0xb0> (BP);
ffa02fb4:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa02fb6:	ff e3 0d f7 	CALL 0xffa01dd0 <_htons>;
ffa02fba:	c0 42       	R0 = R0.L (Z);
ffa02fbc:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa02fc0:	08 08       	CC = R0 == R1;
ffa02fc2:	ed 17       	IF !CC JUMP 0xffa02f9c <_bridge_publish+0xb0> (BP);
ffa02fc4:	20 e1 f4 10 	R0 = 0x10f4 (X);		/*		R0=0x10f4(4340) */
ffa02fc8:	ff e3 04 f7 	CALL 0xffa01dd0 <_htons>;
ffa02fcc:	c0 42       	R0 = R0.L (Z);
ffa02fce:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa02fd2:	01 08       	CC = R1 == R0;
ffa02fd4:	e4 17       	IF !CC JUMP 0xffa02f9c <_bridge_publish+0xb0> (BP);
ffa02fd6:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa02fda:	ff e3 fb f6 	CALL 0xffa01dd0 <_htons>;
ffa02fde:	c0 42       	R0 = R0.L (Z);
ffa02fe0:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa02fe4:	01 08       	CC = R1 == R0;
ffa02fe6:	db 17       	IF !CC JUMP 0xffa02f9c <_bridge_publish+0xb0> (BP);
ffa02fe8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9010f5(-7335691) */
ffa02fec:	e9 a1       	R1 = [P5 + 0x1c];
ffa02fee:	00 e1 38 03 	R0.L = 0x338;		/* (824)	R0=0xff900338(-7339208) */
ffa02ff2:	21 93       	[P4] = R1;
ffa02ff4:	ff e3 f2 f3 	CALL 0xffa017d8 <_printf_ip>;
ffa02ff8:	da b9       	P2 = [FP -0xc];
ffa02ffa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900338(-7339208) */
ffa02ffe:	00 e1 44 03 	R0.L = 0x344;		/* (836)	R0=0xff900344(-7339196) */
ffa03002:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa03004:	da bb       	[FP -0xc] = P2;
ffa03006:	a2 6e       	P2 += -0x2c;		/* (-44) */
ffa03008:	91 e4 2c 00 	R1 = B[P2 + 0x2c] (Z);
ffa0300c:	ff e3 8c f2 	CALL 0xffa01524 <_printf_hex_byte>;
ffa03010:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900344(-7339196) */
ffa03014:	00 e1 50 03 	R0.L = 0x350;		/* (848)	R0=0xff900350(-7339184) */
ffa03018:	ff e3 da f3 	CALL 0xffa017cc <_printf_str>;
ffa0301c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef0 <_NetDataDestIP> */
ffa03020:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03022:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_g_streamEnabled> */
ffa03026:	10 9b       	B[P2] = R0;
ffa03028:	da b9       	P2 = [FP -0xc];
ffa0302a:	10 99       	R0 = B[P2] (Z);
ffa0302c:	26 20       	JUMP.S 0xffa03078 <_bridge_publish+0x18c>;
ffa0302e:	ff e3 bd e8 	CALL 0xffa001a8 <_ustimer>;
ffa03032:	41 e1 0b e5 	R1.H = 0xe50b;		/* (-6901)	R1=0xe50b0800(-452261888) */
ffa03036:	08 4e       	R0 >>= 0x1;
ffa03038:	01 e1 81 f7 	R1.L = 0xf781;		/* (-2175)	R1=0xe50bf781(-452200575) */
ffa0303c:	80 c0 01 18 	A1 = R0.L * R1.L (FU);
ffa03040:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa03044:	81 c0 01 86 	A1 += R0.H * R1.L, A0 = R0.H * R1.H (FU);
ffa03048:	81 c0 08 98 	A1 += R1.H * R0.L (FU);
ffa0304c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa03050:	0b c4 00 80 	A0 += A1;
ffa03054:	8b c0 00 38 	R0 = A0 (FU);
ffa03058:	82 c6 a8 83 	R1 = R0 >> 0xb;
ffa0305c:	0c 08       	CC = R4 == R1;
ffa0305e:	63 1b       	IF CC JUMP 0xffa02f24 <_bridge_publish+0x38>;
ffa03060:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa03064:	20 e1 00 80 	R0 = -0x8000 (X);		/*		R0=0xffff8000(-32768) */
ffa03068:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa0306c:	82 ce 01 c8 	R4 = ROT R1 BY 0x0 || W[P2] = R0 || NOP;
ffa03070:	10 97 00 00 
ffa03074:	58 2f       	JUMP.S 0xffa02f24 <_bridge_publish+0x38>;
ffa03076:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03078:	01 e8 00 00 	UNLINK;
ffa0307c:	a3 05       	(R7:4, P5:3) = [SP++];
ffa0307e:	10 00       	RTS;

ffa03080 <_DHCP_rx>:
ffa03080:	e5 05       	[--SP] = (R7:4, P5:5);
ffa03082:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03086:	67 30       	R4 = FP;
ffa03088:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa0308a:	e4 67       	R4 += -0x4;		/* ( -4) */
ffa0308c:	01 20       	JUMP.S 0xffa0308e <_DHCP_rx+0xe>;
ffa0308e:	04 30       	R0 = R4;
ffa03090:	ff e3 b4 fe 	CALL 0xffa02df8 <_bfin_EMAC_recv_poll>;
ffa03094:	38 30       	R7 = R0;
ffa03096:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa0309a:	47 51       	R5 = R7 + R0;
ffa0309c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa030a0:	0d 30       	R1 = R5;
ffa030a2:	00 e1 80 03 	R0.L = 0x380;		/* (896)	R0=0xff900380(-7339136) */
ffa030a6:	ff e3 f1 f2 	CALL 0xffa01688 <_printf_int>;
ffa030aa:	21 e1 1b 01 	R1 = 0x11b (X);		/*		R1=0x11b(283) */
ffa030ae:	0f 09       	CC = R7 <= R1;
ffa030b0:	fd b9       	P5 = [FP -0x4];
ffa030b2:	0c 18       	IF CC JUMP 0xffa030ca <_DHCP_rx+0x4a>;
ffa030b4:	00 00       	NOP;
ffa030b6:	00 00       	NOP;
ffa030b8:	00 00       	NOP;
ffa030ba:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa030bc:	ff e3 8a f6 	CALL 0xffa01dd0 <_htons>;
ffa030c0:	c0 42       	R0 = R0.L (Z);
ffa030c2:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa030c6:	08 08       	CC = R0 == R1;
ffa030c8:	0f 18       	IF CC JUMP 0xffa030e6 <_DHCP_rx+0x66>;
ffa030ca:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900380(-7339136) */
ffa030ce:	00 e1 64 03 	R0.L = 0x364;		/* (868)	R0=0xff900364(-7339164) */
ffa030d2:	ff e3 7d f3 	CALL 0xffa017cc <_printf_str>;
ffa030d6:	0e 64       	R6 += 0x1;		/* (  1) */
ffa030d8:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa030da:	06 09       	CC = R6 <= R0;
ffa030dc:	d9 1f       	IF CC JUMP 0xffa0308e <_DHCP_rx+0xe> (BP);
ffa030de:	ff e3 cd f8 	CALL 0xffa02278 <_DHCP_tx_discover>;
ffa030e2:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa030e4:	d5 2f       	JUMP.S 0xffa0308e <_DHCP_rx+0xe>;
ffa030e6:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa030ea:	ff e3 73 f6 	CALL 0xffa01dd0 <_htons>;
ffa030ee:	c0 42       	R0 = R0.L (Z);
ffa030f0:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa030f4:	01 08       	CC = R1 == R0;
ffa030f6:	f1 17       	IF !CC JUMP 0xffa030d8 <_DHCP_rx+0x58> (BP);
ffa030f8:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa030fc:	ff e3 6a f6 	CALL 0xffa01dd0 <_htons>;
ffa03100:	c0 42       	R0 = R0.L (Z);
ffa03102:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa03106:	01 08       	CC = R1 == R0;
ffa03108:	e8 17       	IF !CC JUMP 0xffa030d8 <_DHCP_rx+0x58> (BP);
ffa0310a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa0310e:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa03112:	11 91       	R1 = [P2];
ffa03114:	28 a3       	R0 = [P5 + 0x30];
ffa03116:	08 08       	CC = R0 == R1;
ffa03118:	e0 17       	IF !CC JUMP 0xffa030d8 <_DHCP_rx+0x58> (BP);
ffa0311a:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa0311e:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa03122:	ff e3 63 f6 	CALL 0xffa01de8 <_htonl>;
ffa03126:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa0312a:	01 08       	CC = R1 == R0;
ffa0312c:	d6 17       	IF !CC JUMP 0xffa030d8 <_DHCP_rx+0x58> (BP);
ffa0312e:	4d 30       	R1 = P5;
ffa03130:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa03134:	01 50       	R0 = R1 + R0;
ffa03136:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa0313a:	f0 bb 00 00 
ffa0313e:	ff e3 c1 f8 	CALL 0xffa022c0 <_DHCP_parse>;
ffa03142:	e9 a3       	R1 = [P5 + 0x3c];
ffa03144:	01 0c       	CC = R1 == 0x0;
ffa03146:	12 1c       	IF CC JUMP 0xffa0316a <_DHCP_rx+0xea> (BP);
ffa03148:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa0314c:	0a e1 ec 0e 	P2.L = 0xeec;		/* (3820)	P2=0xff900eec <_NetOurIP> */
ffa03150:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa03154:	11 93       	[P2] = R1;
ffa03156:	00 e1 54 03 	R0.L = 0x354;		/* (852)	R0=0xff900354(-7339180) */
ffa0315a:	ff e3 3f f3 	CALL 0xffa017d8 <_printf_ip>;
ffa0315e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900354(-7339180) */
ffa03162:	00 e1 9c 07 	R0.L = 0x79c;		/* (1948)	R0=0xff90079c(-7338084) */
ffa03166:	ff e3 33 f3 	CALL 0xffa017cc <_printf_str>;
ffa0316a:	01 e8 00 00 	UNLINK;
ffa0316e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03170:	a5 05       	(R7:4, P5:5) = [SP++];
ffa03172:	10 00       	RTS;

ffa03174 <_DHCP_req>:
ffa03174:	c5 04       	[--SP] = (P5:5);
ffa03176:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ed0 <_rxbuf> */
ffa0317a:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0317e:	0d e1 b4 0e 	P5.L = 0xeb4;		/* (3764)	P5=0xff900eb4 <_NetDHCPserv> */
ffa03182:	ff e3 7b f8 	CALL 0xffa02278 <_DHCP_tx_discover>;
ffa03186:	ff e3 7d ff 	CALL 0xffa03080 <_DHCP_rx>;
ffa0318a:	29 91       	R1 = [P5];
ffa0318c:	39 0c       	CC = R1 == -0x1;
ffa0318e:	42 18       	IF CC JUMP 0xffa03212 <_DHCP_req+0x9e>;
ffa03190:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eec <_NetOurIP> */
ffa03194:	0a e1 ec 0e 	P2.L = 0xeec;		/* (3820)	P2=0xff900eec <_NetOurIP> */
ffa03198:	10 91       	R0 = [P2];
ffa0319a:	00 0c       	CC = R0 == 0x0;
ffa0319c:	08 18       	IF CC JUMP 0xffa031ac <_DHCP_req+0x38>;
ffa0319e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eec <_NetOurIP> */
ffa031a2:	0a e1 e8 0e 	P2.L = 0xee8;		/* (3816)	P2=0xff900ee8 <_NetSubnetMask> */
ffa031a6:	10 91       	R0 = [P2];
ffa031a8:	00 0c       	CC = R0 == 0x0;
ffa031aa:	2f 10       	IF !CC JUMP 0xffa03208 <_DHCP_req+0x94>;
ffa031ac:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa031ae:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa031b2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa031b4:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa031b8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa031ba:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa031be:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa031c0:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa031c4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa031c6:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa031ca:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa031ce:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa031d2:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa031d6:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa031da:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa031de:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa031e2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa031e4:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa031e8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa031ec:	00 e1 b0 03 	R0.L = 0x3b0;		/* (944)	R0=0xff9003b0(-7339088) */
ffa031f0:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa031f4:	ff e3 ec f2 	CALL 0xffa017cc <_printf_str>;
ffa031f8:	4f 30       	R1 = FP;
ffa031fa:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa031fc:	a1 67       	R1 += -0xc;		/* (-12) */
ffa031fe:	2a 91       	R2 = [P5];
ffa03200:	ff e3 4c f7 	CALL 0xffa02098 <_DHCP_tx>;
ffa03204:	ff e3 3e ff 	CALL 0xffa03080 <_DHCP_rx>;
ffa03208:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0320a:	01 e8 00 00 	UNLINK;
ffa0320e:	85 04       	(P5:5) = [SP++];
ffa03210:	10 00       	RTS;
ffa03212:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03216:	00 e1 94 03 	R0.L = 0x394;		/* (916)	R0=0xff900394(-7339116) */
ffa0321a:	ff e3 d9 f2 	CALL 0xffa017cc <_printf_str>;
ffa0321e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03220:	f5 2f       	JUMP.S 0xffa0320a <_DHCP_req+0x96>;
	...

ffa03224 <_bfin_EMAC_recv>:
ffa03224:	eb 05       	[--SP] = (R7:5, P5:3);
ffa03226:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900ef0 <_NetDataDestIP> */
ffa0322a:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000 <_l1_data_a>(-7340032) */
ffa0322e:	0c e1 cc 0e 	P4.L = 0xecc;		/* (3788)	P4=0xff900ecc <_rxIdx> */
ffa03232:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00ebc(-4190532) */
ffa03236:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0323a:	28 32       	P5 = R0;
ffa0323c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0323e:	05 e1 d0 0e 	R5.L = 0xed0;		/* (3792)	R5=0xff900ed0 <_rxbuf>(-7336240) */
ffa03242:	74 30       	R6 = P4;
ffa03244:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa03248:	0e 32       	P1 = R6;
ffa0324a:	08 95       	R0 = W[P1] (Z);
ffa0324c:	10 32       	P2 = R0;
ffa0324e:	0d 32       	P1 = R5;
ffa03250:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03252:	52 91       	P2 = [P2];
ffa03254:	90 a2       	R0 = [P2 + 0x28];
ffa03256:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa03258:	46 18       	IF CC JUMP 0xffa032e4 <_bfin_EMAC_recv+0xc0>;
ffa0325a:	00 00       	NOP;
ffa0325c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0325e:	a0 4f       	R0 <<= 0x14;
ffa03260:	91 a2       	R1 = [P2 + 0x28];
ffa03262:	81 54       	R2 = R1 & R0;
ffa03264:	02 0c       	CC = R2 == 0x0;
ffa03266:	45 10       	IF !CC JUMP 0xffa032f0 <_bfin_EMAC_recv+0xcc>;
ffa03268:	00 00       	NOP;
ffa0326a:	00 00       	NOP;
ffa0326c:	00 00       	NOP;
ffa0326e:	90 a2       	R0 = [P2 + 0x28];
ffa03270:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa03272:	4a 18       	IF CC JUMP 0xffa03306 <_bfin_EMAC_recv+0xe2>;
ffa03274:	00 00       	NOP;
ffa03276:	00 00       	NOP;
ffa03278:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa0327c:	91 a2       	R1 = [P2 + 0x28];
ffa0327e:	c1 55       	R7 = R1 & R0;
ffa03280:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03282:	07 09       	CC = R7 <= R0;
ffa03284:	4c 18       	IF CC JUMP 0xffa0331c <_bfin_EMAC_recv+0xf8>;
ffa03286:	00 00       	NOP;
ffa03288:	00 00       	NOP;
ffa0328a:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0328c:	90 a1       	R0 = [P2 + 0x18];
ffa0328e:	59 95       	R1 = W[P3] (X);
ffa03290:	28 93       	[P5] = R0;
ffa03292:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa03294:	08 56       	R0 = R0 | R1;
ffa03296:	18 97       	W[P3] = R0;
ffa03298:	61 95       	R1 = W[P4] (X);
ffa0329a:	c8 42       	R0 = R1.L (Z);
ffa0329c:	10 0d       	CC = R0 <= 0x2;
ffa0329e:	92 b2       	[P2 + 0x28] = R2;
ffa032a0:	1e 1c       	IF CC JUMP 0xffa032dc <_bfin_EMAC_recv+0xb8> (BP);
ffa032a2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa032a4:	20 97       	W[P4] = R0;
ffa032a6:	28 91       	R0 = [P5];
ffa032a8:	0f 30       	R1 = R7;
ffa032aa:	00 e3 f9 00 	CALL 0xffa0349c <_ARP_rx>;
ffa032ae:	00 0c       	CC = R0 == 0x0;
ffa032b0:	03 18       	IF CC JUMP 0xffa032b6 <_bfin_EMAC_recv+0x92>;
ffa032b2:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa032b4:	ca 2f       	JUMP.S 0xffa03248 <_bfin_EMAC_recv+0x24>;
ffa032b6:	28 91       	R0 = [P5];
ffa032b8:	0f 30       	R1 = R7;
ffa032ba:	ff e3 93 fa 	CALL 0xffa027e0 <_icmp_rx>;
ffa032be:	00 0c       	CC = R0 == 0x0;
ffa032c0:	f9 17       	IF !CC JUMP 0xffa032b2 <_bfin_EMAC_recv+0x8e> (BP);
ffa032c2:	28 91       	R0 = [P5];
ffa032c4:	0f 30       	R1 = R7;
ffa032c6:	00 e3 5b 04 	CALL 0xffa03b7c <_tcp_rx>;
ffa032ca:	00 0c       	CC = R0 == 0x0;
ffa032cc:	f3 17       	IF !CC JUMP 0xffa032b2 <_bfin_EMAC_recv+0x8e> (BP);
ffa032ce:	07 0d       	CC = R7 <= 0x0;
ffa032d0:	bc 1f       	IF CC JUMP 0xffa03248 <_bfin_EMAC_recv+0x24> (BP);
ffa032d2:	01 e8 00 00 	UNLINK;
ffa032d6:	07 30       	R0 = R7;
ffa032d8:	ab 05       	(R7:5, P5:3) = [SP++];
ffa032da:	10 00       	RTS;
ffa032dc:	01 30       	R0 = R1;
ffa032de:	08 64       	R0 += 0x1;		/* (  1) */
ffa032e0:	20 97       	W[P4] = R0;
ffa032e2:	e2 2f       	JUMP.S 0xffa032a6 <_bfin_EMAC_recv+0x82>;
ffa032e4:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa032e6:	01 e8 00 00 	UNLINK;
ffa032ea:	07 30       	R0 = R7;
ffa032ec:	ab 05       	(R7:5, P5:3) = [SP++];
ffa032ee:	10 00       	RTS;
ffa032f0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa032f4:	00 e1 c4 03 	R0.L = 0x3c4;		/* (964)	R0=0xff9003c4(-7339068) */
ffa032f8:	ff e3 6a f2 	CALL 0xffa017cc <_printf_str>;
ffa032fc:	01 e8 00 00 	UNLINK;
ffa03300:	07 30       	R0 = R7;
ffa03302:	ab 05       	(R7:5, P5:3) = [SP++];
ffa03304:	10 00       	RTS;
ffa03306:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003c4(-7339068) */
ffa0330a:	00 e1 e0 03 	R0.L = 0x3e0;		/* (992)	R0=0xff9003e0(-7339040) */
ffa0330e:	ff e3 5f f2 	CALL 0xffa017cc <_printf_str>;
ffa03312:	01 e8 00 00 	UNLINK;
ffa03316:	07 30       	R0 = R7;
ffa03318:	ab 05       	(R7:5, P5:3) = [SP++];
ffa0331a:	10 00       	RTS;
ffa0331c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003e0(-7339040) */
ffa03320:	00 e1 f4 03 	R0.L = 0x3f4;		/* (1012)	R0=0xff9003f4(-7339020) */
ffa03324:	ff e3 54 f2 	CALL 0xffa017cc <_printf_str>;
ffa03328:	01 e8 00 00 	UNLINK;
ffa0332c:	07 30       	R0 = R7;
ffa0332e:	ab 05       	(R7:5, P5:3) = [SP++];
ffa03330:	10 00       	RTS;
	...

ffa03334 <_ARP_init>:
ffa03334:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee8 <_NetSubnetMask> */
ffa03338:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0333c:	0a e1 f8 0e 	P2.L = 0xef8;		/* (3832)	P2=0xff900ef8 <_NetArpLut> */
ffa03340:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03342:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03344:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa03346:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa03348:	b2 e0 12 10 	LSETUP(0xffa0334c <_ARP_init+0x18>, 0xffa0336c <_ARP_init+0x38>) LC1 = P1;
ffa0334c:	11 93       	[P2] = R1;
ffa0334e:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa03352:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa03356:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa0335a:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa0335e:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa03362:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa03366:	52 b5       	W[P2 + 0xa] = R2;
ffa03368:	d1 b0       	[P2 + 0xc] = R1;
ffa0336a:	11 b1       	[P2 + 0x10] = R1;
ffa0336c:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa0336e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef8 <_NetArpLut> */
ffa03372:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa03376:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_NetArpLut_age> */
ffa0337a:	10 97       	W[P2] = R0;
ffa0337c:	01 e8 00 00 	UNLINK;
ffa03380:	10 00       	RTS;
	...

ffa03384 <_ARP_lut_find>:
ffa03384:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900eb8 <_txIdx> */
ffa03388:	08 e1 f8 0e 	P0.L = 0xef8;		/* (3832)	P0=0xff900ef8 <_NetArpLut> */
ffa0338c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03390:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa03392:	48 32       	P1 = P0;
ffa03394:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa03396:	b2 e0 06 20 	LSETUP(0xffa0339a <_ARP_lut_find+0x16>, 0xffa033a2 <_ARP_lut_find+0x1e>) LC1 = P2;
ffa0339a:	08 91       	R0 = [P1];
ffa0339c:	00 0c       	CC = R0 == 0x0;
ffa0339e:	14 18       	IF CC JUMP 0xffa033c6 <_ARP_lut_find+0x42>;
ffa033a0:	0a 64       	R2 += 0x1;		/* (  1) */
ffa033a2:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa033a4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa033a8:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa033aa:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa033ac:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa033ae:	09 e1 16 0f 	P1.L = 0xf16;		/* (3862)	P1=0xff900f16 */
ffa033b2:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa033b4:	b2 e0 08 20 	LSETUP(0xffa033b8 <_ARP_lut_find+0x34>, 0xffa033c4 <_ARP_lut_find+0x40>) LC1 = P2;
ffa033b8:	08 95       	R0 = W[P1] (Z);
ffa033ba:	03 09       	CC = R3 <= R0;
ffa033bc:	03 18       	IF CC JUMP 0xffa033c2 <_ARP_lut_find+0x3e>;
ffa033be:	11 30       	R2 = R1;
ffa033c0:	18 30       	R3 = R0;
ffa033c2:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa033c4:	09 64       	R1 += 0x1;		/* (  1) */
ffa033c6:	02 30       	R0 = R2;
ffa033c8:	01 e8 00 00 	UNLINK;
ffa033cc:	10 00       	RTS;
	...

ffa033d0 <_ARP_lut_add>:
ffa033d0:	f5 05       	[--SP] = (R7:6, P5:5);
ffa033d2:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900eb4 <_NetDHCPserv> */
ffa033d6:	0d e1 f8 0e 	P5.L = 0xef8;		/* (3832)	P5=0xff900ef8 <_NetArpLut> */
ffa033da:	31 30       	R6 = R1;
ffa033dc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa033e0:	38 30       	R7 = R0;
ffa033e2:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa033e4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa033e6:	4d 32       	P1 = P5;
ffa033e8:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa033ea:	00 00       	NOP;
ffa033ec:	08 91       	R0 = [P1];
ffa033ee:	07 08       	CC = R7 == R0;
ffa033f0:	11 07       	IF CC R2 = R1;
ffa033f2:	09 64       	R1 += 0x1;		/* (  1) */
ffa033f4:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa033f6:	42 0c       	CC = P2 == 0x0;
ffa033f8:	23 10       	IF !CC JUMP 0xffa0343e <_ARP_lut_add+0x6e>;
ffa033fa:	82 0c       	CC = R2 < 0x0;
ffa033fc:	25 18       	IF CC JUMP 0xffa03446 <_ARP_lut_add+0x76>;
ffa033fe:	82 c6 12 82 	R1 = R2 << 0x2;
ffa03402:	0a 32       	P1 = R2;
ffa03404:	11 32       	P2 = R1;
ffa03406:	06 32       	P0 = R6;
ffa03408:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa0340a:	6a 5a       	P1 = P2 + P5;
ffa0340c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0340e:	0f 93       	[P1] = R7;
ffa03410:	aa 5a       	P2 = P2 + P5;
ffa03412:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa03414:	b2 e0 03 10 	LSETUP(0xffa03418 <_ARP_lut_add+0x48>, 0xffa0341a <_ARP_lut_add+0x4a>) LC1 = P1;
ffa03418:	40 98       	R0 = B[P0++] (X);
ffa0341a:	10 9a       	B[P2++] = R0;
ffa0341c:	51 41       	R1 = (R1 + R2) << 0x2;
ffa0341e:	09 32       	P1 = R1;
ffa03420:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa03424:	0a e1 f4 0e 	P2.L = 0xef4;		/* (3828)	P2=0xff900ef4 <_NetArpLut_age> */
ffa03428:	50 95       	R0 = W[P2] (X);
ffa0342a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0342c:	10 97       	W[P2] = R0;
ffa0342e:	a9 5a       	P2 = P1 + P5;
ffa03430:	50 b5       	W[P2 + 0xa] = R0;
ffa03432:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03434:	10 b1       	[P2 + 0x10] = R0;
ffa03436:	01 e8 00 00 	UNLINK;
ffa0343a:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0343c:	10 00       	RTS;
ffa0343e:	82 0c       	CC = R2 < 0x0;
ffa03440:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa03442:	d4 1f       	IF CC JUMP 0xffa033ea <_ARP_lut_add+0x1a> (BP);
ffa03444:	dd 2f       	JUMP.S 0xffa033fe <_ARP_lut_add+0x2e>;
ffa03446:	ff e3 9f ff 	CALL 0xffa03384 <_ARP_lut_find>;
ffa0344a:	10 30       	R2 = R0;
ffa0344c:	d9 2f       	JUMP.S 0xffa033fe <_ARP_lut_add+0x2e>;
	...

ffa03450 <_ARP_lu>:
ffa03450:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa03454:	c4 04       	[--SP] = (P5:4);
ffa03456:	09 e1 f8 0e 	P1.L = 0xef8;		/* (3832)	P1=0xff900ef8 <_NetArpLut> */
ffa0345a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0345e:	10 30       	R2 = R0;
ffa03460:	29 32       	P5 = R1;
ffa03462:	61 32       	P4 = P1;
ffa03464:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa03466:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa03468:	b2 e0 06 20 	LSETUP(0xffa0346c <_ARP_lu+0x1c>, 0xffa03474 <_ARP_lu+0x24>) LC1 = P2;
ffa0346c:	08 91       	R0 = [P1];
ffa0346e:	10 08       	CC = R0 == R2;
ffa03470:	08 18       	IF CC JUMP 0xffa03480 <_ARP_lu+0x30>;
ffa03472:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa03474:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa03476:	01 e8 00 00 	UNLINK;
ffa0347a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0347c:	84 04       	(P5:4) = [SP++];
ffa0347e:	10 00       	RTS;
ffa03480:	08 a1       	R0 = [P1 + 0x10];
ffa03482:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03484:	f7 1f       	IF CC JUMP 0xffa03472 <_ARP_lu+0x22> (BP);
ffa03486:	60 5a       	P1 = P0 + P4;
ffa03488:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa0348a:	b2 e0 03 20 	LSETUP(0xffa0348e <_ARP_lu+0x3e>, 0xffa03490 <_ARP_lu+0x40>) LC1 = P2;
ffa0348e:	48 98       	R0 = B[P1++] (X);
ffa03490:	28 9a       	B[P5++] = R0;
ffa03492:	01 e8 00 00 	UNLINK;
ffa03496:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03498:	84 04       	(P5:4) = [SP++];
ffa0349a:	10 00       	RTS;

ffa0349c <_ARP_rx>:
ffa0349c:	fb 05       	[--SP] = (R7:7, P5:3);
ffa0349e:	20 32       	P4 = R0;
ffa034a0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa034a4:	39 30       	R7 = R1;
ffa034a6:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa034a8:	ff e3 94 f4 	CALL 0xffa01dd0 <_htons>;
ffa034ac:	c0 42       	R0 = R0.L (Z);
ffa034ae:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa034b2:	08 08       	CC = R0 == R1;
ffa034b4:	06 18       	IF CC JUMP 0xffa034c0 <_ARP_rx+0x24>;
ffa034b6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa034b8:	01 e8 00 00 	UNLINK;
ffa034bc:	bb 05       	(R7:7, P5:3) = [SP++];
ffa034be:	10 00       	RTS;
ffa034c0:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa034c2:	07 0a       	CC = R7 <= R0 (IU);
ffa034c4:	f9 1f       	IF CC JUMP 0xffa034b6 <_ARP_rx+0x1a> (BP);
ffa034c6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034c8:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa034ca:	ff e3 83 f4 	CALL 0xffa01dd0 <_htons>;
ffa034ce:	c0 42       	R0 = R0.L (Z);
ffa034d0:	07 08       	CC = R7 == R0;
ffa034d2:	f2 17       	IF !CC JUMP 0xffa034b6 <_ARP_rx+0x1a> (BP);
ffa034d4:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa034d8:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa034da:	ff e3 7b f4 	CALL 0xffa01dd0 <_htons>;
ffa034de:	c0 42       	R0 = R0.L (Z);
ffa034e0:	07 08       	CC = R7 == R0;
ffa034e2:	ea 17       	IF !CC JUMP 0xffa034b6 <_ARP_rx+0x1a> (BP);
ffa034e4:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa034e6:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa034ea:	08 08       	CC = R0 == R1;
ffa034ec:	e5 17       	IF !CC JUMP 0xffa034b6 <_ARP_rx+0x1a> (BP);
ffa034ee:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa034f0:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa034f2:	ff e3 6f f4 	CALL 0xffa01dd0 <_htons>;
ffa034f6:	c0 42       	R0 = R0.L (Z);
ffa034f8:	07 08       	CC = R7 == R0;
ffa034fa:	0c 14       	IF !CC JUMP 0xffa03512 <_ARP_rx+0x76> (BP);
ffa034fc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa03500:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurMAC> */
ffa03504:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa03508:	10 99       	R0 = B[P2] (Z);
ffa0350a:	01 08       	CC = R1 == R0;
ffa0350c:	ae 18       	IF CC JUMP 0xffa03668 <_ARP_rx+0x1cc>;
ffa0350e:	00 00       	NOP;
ffa03510:	00 00       	NOP;
ffa03512:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03514:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa03516:	ff e3 5d f4 	CALL 0xffa01dd0 <_htons>;
ffa0351a:	c0 42       	R0 = R0.L (Z);
ffa0351c:	07 08       	CC = R7 == R0;
ffa0351e:	cc 17       	IF !CC JUMP 0xffa034b6 <_ARP_rx+0x1a> (BP);
ffa03520:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03524:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa03526:	ff e3 55 f4 	CALL 0xffa01dd0 <_htons>;
ffa0352a:	c0 42       	R0 = R0.L (Z);
ffa0352c:	07 08       	CC = R7 == R0;
ffa0352e:	c4 17       	IF !CC JUMP 0xffa034b6 <_ARP_rx+0x1a> (BP);
ffa03530:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa03532:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa03536:	08 08       	CC = R0 == R1;
ffa03538:	bf 17       	IF !CC JUMP 0xffa034b6 <_ARP_rx+0x1a> (BP);
ffa0353a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0353c:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa0353e:	ff e3 49 f4 	CALL 0xffa01dd0 <_htons>;
ffa03542:	c0 42       	R0 = R0.L (Z);
ffa03544:	07 08       	CC = R7 == R0;
ffa03546:	b8 17       	IF !CC JUMP 0xffa034b6 <_ARP_rx+0x1a> (BP);
ffa03548:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa0354c:	07 e1 ec 0e 	R7.L = 0xeec;		/* (3820)	R7=0xff900eec <_NetOurIP>(-7336212) */
ffa03550:	17 32       	P2 = R7;
ffa03552:	a1 a2       	R1 = [P4 + 0x28];
ffa03554:	10 91       	R0 = [P2];
ffa03556:	01 08       	CC = R1 == R0;
ffa03558:	af 17       	IF !CC JUMP 0xffa034b6 <_ARP_rx+0x1a> (BP);
ffa0355a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetOurMAC> */
ffa0355e:	0a e1 b8 0e 	P2.L = 0xeb8;		/* (3768)	P2=0xff900eb8 <_txIdx> */
ffa03562:	10 95       	R0 = W[P2] (Z);
ffa03564:	10 32       	P2 = R0;
ffa03566:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900ef8 <_NetArpLut> */
ffa0356a:	09 e1 bc 0e 	P1.L = 0xebc;		/* (3772)	P1=0xff900ebc <_txbuf> */
ffa0356e:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa03570:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ef8 <_NetArpLut> */
ffa03574:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03576:	52 91       	P2 = [P2];
ffa03578:	0d e1 e0 0e 	P5.L = 0xee0;		/* (3808)	P5=0xff900ee0 <_NetOurMAC> */
ffa0357c:	93 ad       	P3 = [P2 + 0x18];
ffa0357e:	18 97       	W[P3] = R0;
ffa03580:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa03584:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa03588:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa0358c:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa03590:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa03594:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa03598:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa0359c:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa035a0:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa035a4:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa035a8:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa035ac:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa035b0:	68 99       	R0 = B[P5] (X);
ffa035b2:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa035b6:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa035ba:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa035be:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa035c2:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa035c6:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa035ca:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa035ce:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa035d2:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa035d6:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa035da:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa035de:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa035e2:	ff e3 f7 f3 	CALL 0xffa01dd0 <_htons>;
ffa035e6:	d8 b5       	W[P3 + 0xe] = R0;
ffa035e8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa035ea:	ff e3 f3 f3 	CALL 0xffa01dd0 <_htons>;
ffa035ee:	18 b6       	W[P3 + 0x10] = R0;
ffa035f0:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa035f4:	ff e3 ee f3 	CALL 0xffa01dd0 <_htons>;
ffa035f8:	58 b6       	W[P3 + 0x12] = R0;
ffa035fa:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa035fc:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa03600:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03602:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa03606:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03608:	ff e3 e4 f3 	CALL 0xffa01dd0 <_htons>;
ffa0360c:	44 32       	P0 = P4;
ffa0360e:	d8 b6       	W[P3 + 0x16] = R0;
ffa03610:	53 32       	P2 = P3;
ffa03612:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa03614:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa03616:	b2 e0 08 10 	LSETUP(0xffa0361a <_ARP_rx+0x17e>, 0xffa03626 <_ARP_rx+0x18a>) LC1 = P1;
ffa0361a:	68 98       	R0 = B[P5++] (X);
ffa0361c:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa03620:	40 98       	R0 = B[P0++] (X);
ffa03622:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa03626:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa03628:	17 32       	P2 = R7;
ffa0362a:	50 99       	R0 = B[P2] (X);
ffa0362c:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa03630:	10 91       	R0 = [P2];
ffa03632:	40 4e       	R0 >>= 0x8;
ffa03634:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa03638:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa0363c:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa03640:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa03644:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa03648:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa0364c:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa03650:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa03654:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa03658:	f3 b0       	[SP + 0xc] = R3;
ffa0365a:	ff e3 11 f3 	CALL 0xffa01c7c <_FormatIPAddress>;
ffa0365e:	98 b2       	[P3 + 0x28] = R0;
ffa03660:	ff e3 ae f4 	CALL 0xffa01fbc <_bfin_EMAC_send_nocopy>;
ffa03664:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03666:	29 2f       	JUMP.S 0xffa034b8 <_ARP_rx+0x1c>;
ffa03668:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa0366c:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa03670:	01 08       	CC = R1 == R0;
ffa03672:	50 17       	IF !CC JUMP 0xffa03512 <_ARP_rx+0x76> (BP);
ffa03674:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa03678:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa0367c:	01 08       	CC = R1 == R0;
ffa0367e:	4a 17       	IF !CC JUMP 0xffa03512 <_ARP_rx+0x76> (BP);
ffa03680:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa03684:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa03688:	01 08       	CC = R1 == R0;
ffa0368a:	44 17       	IF !CC JUMP 0xffa03512 <_ARP_rx+0x76> (BP);
ffa0368c:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa03690:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa03694:	01 08       	CC = R1 == R0;
ffa03696:	3e 17       	IF !CC JUMP 0xffa03512 <_ARP_rx+0x76> (BP);
ffa03698:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa0369c:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa036a0:	01 08       	CC = R1 == R0;
ffa036a2:	38 17       	IF !CC JUMP 0xffa03512 <_ARP_rx+0x76> (BP);
ffa036a4:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa036a6:	44 30       	R0 = P4;
ffa036a8:	ff e3 b4 f3 	CALL 0xffa01e10 <_pack4chars>;
ffa036ac:	38 30       	R7 = R0;
ffa036ae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa036b2:	0f 30       	R1 = R7;
ffa036b4:	00 e1 00 05 	R0.L = 0x500;		/* (1280)	R0=0xff900500(-7338752) */
ffa036b8:	ff e3 90 f0 	CALL 0xffa017d8 <_printf_ip>;
ffa036bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900500(-7338752) */
ffa036c0:	00 e1 9c 07 	R0.L = 0x79c;		/* (1948)	R0=0xff90079c(-7338084) */
ffa036c4:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa036c6:	ff e3 83 f0 	CALL 0xffa017cc <_printf_str>;
ffa036ca:	07 30       	R0 = R7;
ffa036cc:	4c 30       	R1 = P4;
ffa036ce:	ff e3 81 fe 	CALL 0xffa033d0 <_ARP_lut_add>;
ffa036d2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa036d4:	f2 2e       	JUMP.S 0xffa034b8 <_ARP_rx+0x1c>;
	...

ffa036d8 <_ARP_tx>:
ffa036d8:	fc 05       	[--SP] = (R7:7, P5:4);
ffa036da:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb8 <_txIdx> */
ffa036de:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa036e2:	0a e1 b8 0e 	P2.L = 0xeb8;		/* (3768)	P2=0xff900eb8 <_txIdx> */
ffa036e6:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa036ea:	10 95 00 00 
ffa036ee:	10 32       	P2 = R0;
ffa036f0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa036f4:	09 e1 bc 0e 	P1.L = 0xebc;		/* (3772)	P1=0xff900ebc <_txbuf> */
ffa036f8:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa036fa:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ee0 <_NetOurMAC> */
ffa036fe:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03700:	52 91       	P2 = [P2];
ffa03702:	0d e1 e0 0e 	P5.L = 0xee0;		/* (3808)	P5=0xff900ee0 <_NetOurMAC> */
ffa03706:	94 ad       	P4 = [P2 + 0x18];
ffa03708:	20 97       	W[P4] = R0;
ffa0370a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0370c:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa03710:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa03714:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa03718:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa0371c:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa03720:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa03724:	68 99       	R0 = B[P5] (X);
ffa03726:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa0372a:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa0372e:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa03732:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa03736:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa0373a:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa0373e:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa03742:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa03746:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa0374a:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa0374e:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa03752:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa03756:	ff e3 3d f3 	CALL 0xffa01dd0 <_htons>;
ffa0375a:	e0 b5       	W[P4 + 0xe] = R0;
ffa0375c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0375e:	ff e3 39 f3 	CALL 0xffa01dd0 <_htons>;
ffa03762:	20 b6       	W[P4 + 0x10] = R0;
ffa03764:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03768:	ff e3 34 f3 	CALL 0xffa01dd0 <_htons>;
ffa0376c:	60 b6       	W[P4 + 0x12] = R0;
ffa0376e:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03770:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa03774:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03776:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa0377a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0377c:	ff e3 2a f3 	CALL 0xffa01dd0 <_htons>;
ffa03780:	e0 b6       	W[P4 + 0x16] = R0;
ffa03782:	54 32       	P2 = P4;
ffa03784:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03786:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa03788:	b2 e0 07 10 	LSETUP(0xffa0378c <_ARP_tx+0xb4>, 0xffa03796 <_ARP_tx+0xbe>) LC1 = P1;
ffa0378c:	68 98       	R0 = B[P5++] (X);
ffa0378e:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa03792:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa03796:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa03798:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb8 <_txIdx> */
ffa0379c:	0a e1 ec 0e 	P2.L = 0xeec;		/* (3820)	P2=0xff900eec <_NetOurIP> */
ffa037a0:	50 99       	R0 = B[P2] (X);
ffa037a2:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa037a6:	10 91       	R0 = [P2];
ffa037a8:	40 4e       	R0 >>= 0x8;
ffa037aa:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa037ae:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa037b2:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa037b6:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa037ba:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa037be:	a7 b2       	[P4 + 0x28] = R7;
ffa037c0:	01 e8 00 00 	UNLINK;
ffa037c4:	bc 05       	(R7:7, P5:4) = [SP++];
ffa037c6:	ff e2 fb f3 	JUMP.L 0xffa01fbc <_bfin_EMAC_send_nocopy>;
	...

ffa037cc <_ARP_req>:
ffa037cc:	ec 05       	[--SP] = (R7:5, P5:4);
ffa037ce:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa037d2:	38 30       	R7 = R0;
ffa037d4:	ff e3 3e fe 	CALL 0xffa03450 <_ARP_lu>;
ffa037d8:	00 0c       	CC = R0 == 0x0;
ffa037da:	06 18       	IF CC JUMP 0xffa037e6 <_ARP_req+0x1a>;
ffa037dc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa037de:	01 e8 00 00 	UNLINK;
ffa037e2:	ac 05       	(R7:5, P5:4) = [SP++];
ffa037e4:	10 00       	RTS;
ffa037e6:	ff e3 e1 e4 	CALL 0xffa001a8 <_ustimer>;
ffa037ea:	41 e1 e3 38 	R1.H = 0x38e3;		/* (14563)	R1=0x38e30000(954400768) */
ffa037ee:	01 e1 39 8e 	R1.L = 0x8e39;		/* (-29127)	R1=0x38e38e39(954437177) */
ffa037f2:	80 c0 01 18 	A1 = R0.L * R1.L (FU);
ffa037f6:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa037fa:	81 c0 01 86 	A1 += R0.H * R1.L, A0 = R0.H * R1.H (FU);
ffa037fe:	81 c0 08 98 	A1 += R1.H * R0.L (FU);
ffa03802:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa03806:	0b c4 00 80 	A0 += A1;
ffa0380a:	8b c0 00 38 	R0 = A0 (FU);
ffa0380e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900ecc <_rxIdx> */
ffa03812:	82 c6 f8 8d 	R6 = R0 >> 0x1;
ffa03816:	0c e1 f8 0e 	P4.L = 0xef8;		/* (3832)	P4=0xff900ef8 <_NetArpLut> */
ffa0381a:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa0381e:	4c 32       	P1 = P4;
ffa03820:	46 51       	R5 = R6 + R0;
ffa03822:	6c 32       	P5 = P4;
ffa03824:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa03826:	b2 e0 06 20 	LSETUP(0xffa0382a <_ARP_req+0x5e>, 0xffa03832 <_ARP_req+0x66>) LC1 = P2;
ffa0382a:	08 91       	R0 = [P1];
ffa0382c:	07 08       	CC = R7 == R0;
ffa0382e:	21 18       	IF CC JUMP 0xffa03870 <_ARP_req+0xa4>;
ffa03830:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa03832:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa03834:	ff e3 a8 fd 	CALL 0xffa03384 <_ARP_lut_find>;
ffa03838:	10 32       	P2 = R0;
ffa0383a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0383c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa03840:	09 e1 f4 0e 	P1.L = 0xef4;		/* (3828)	P1=0xff900ef4 <_NetArpLut_age> */
ffa03844:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa03846:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa03848:	10 b1       	[P2 + 0x10] = R0;
ffa0384a:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa0384e:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa03852:	17 93 00 00 
ffa03856:	d0 b0       	[P2 + 0xc] = R0;
ffa03858:	48 95       	R0 = W[P1] (X);
ffa0385a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0385c:	08 97       	W[P1] = R0;
ffa0385e:	50 b5       	W[P2 + 0xa] = R0;
ffa03860:	07 30       	R0 = R7;
ffa03862:	ff e3 3b ff 	CALL 0xffa036d8 <_ARP_tx>;
ffa03866:	01 e8 00 00 	UNLINK;
ffa0386a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0386c:	ac 05       	(R7:5, P5:4) = [SP++];
ffa0386e:	10 00       	RTS;
ffa03870:	08 a1       	R0 = [P1 + 0x10];
ffa03872:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa03874:	de 1f       	IF CC JUMP 0xffa03830 <_ARP_req+0x64> (BP);
ffa03876:	e8 a0       	R0 = [P5 + 0xc];
ffa03878:	86 09       	CC = R6 < R0 (IU);
ffa0387a:	f6 1f       	IF CC JUMP 0xffa03866 <_ARP_req+0x9a> (BP);
ffa0387c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03880:	0f 30       	R1 = R7;
ffa03882:	00 e1 24 05 	R0.L = 0x524;		/* (1316)	R0=0xff900524(-7338716) */
ffa03886:	ff e3 a9 ef 	CALL 0xffa017d8 <_printf_ip>;
ffa0388a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900524(-7338716) */
ffa0388e:	00 e1 9c 07 	R0.L = 0x79c;		/* (1948)	R0=0xff90079c(-7338084) */
ffa03892:	ff e3 9d ef 	CALL 0xffa017cc <_printf_str>;
ffa03896:	07 30       	R0 = R7;
ffa03898:	ff e3 20 ff 	CALL 0xffa036d8 <_ARP_tx>;
ffa0389c:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa038a0:	ed b0 00 00 
ffa038a4:	9d 2f       	JUMP.S 0xffa037de <_ARP_req+0x12>;
	...

ffa038a8 <_tcp_length>:
ffa038a8:	c5 04       	[--SP] = (P5:5);
ffa038aa:	28 32       	P5 = R0;
ffa038ac:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa038b0:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa038b2:	ff e3 8f f2 	CALL 0xffa01dd0 <_htons>;
ffa038b6:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa038ba:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa038bc:	51 54       	R1 = R1 & R2;
ffa038be:	11 4f       	R1 <<= 0x2;
ffa038c0:	c0 42       	R0 = R0.L (Z);
ffa038c2:	08 52       	R0 = R0 - R1;
ffa038c4:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa038c8:	11 4d       	R1 >>>= 0x2;
ffa038ca:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa038cc:	51 54       	R1 = R1 & R2;
ffa038ce:	01 e8 00 00 	UNLINK;
ffa038d2:	08 52       	R0 = R0 - R1;
ffa038d4:	85 04       	(P5:5) = [SP++];
ffa038d6:	10 00       	RTS;

ffa038d8 <_tcp_checksum_calc>:
ffa038d8:	08 32       	P1 = R0;
ffa038da:	ed 05       	[--SP] = (R7:5, P5:5);
ffa038dc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa038e0:	28 32       	P5 = R0;
ffa038e2:	31 30       	R6 = R1;
ffa038e4:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa038e6:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa038e8:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa038ea:	b2 e0 03 20 	LSETUP(0xffa038ee <_tcp_checksum_calc+0x16>, 0xffa038f0 <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa038ee:	08 94       	R0 = W[P1++] (Z);
ffa038f0:	45 51       	R5 = R5 + R0;
ffa038f2:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa038f6:	10 4e       	R0 >>= 0x2;
ffa038f8:	06 50       	R0 = R6 + R0;
ffa038fa:	c0 42       	R0 = R0.L (Z);
ffa038fc:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa03900:	ff e3 68 f2 	CALL 0xffa01dd0 <_htons>;
ffa03904:	47 4f       	R7 <<= 0x8;
ffa03906:	c0 42       	R0 = R0.L (Z);
ffa03908:	c7 51       	R7 = R7 + R0;
ffa0390a:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa0390c:	ef 50       	R3 = R7 + R5;
ffa0390e:	0d 1c       	IF CC JUMP 0xffa03928 <_tcp_checksum_calc+0x50> (BP);
ffa03910:	0e 32       	P1 = R6;
ffa03912:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03916:	10 4e       	R0 >>= 0x2;
ffa03918:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa0391a:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0391c:	a9 5a       	P2 = P1 + P5;
ffa0391e:	08 32       	P1 = R0;
ffa03920:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03922:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa03924:	8a 5a       	P2 = P2 + P1;
ffa03926:	10 9b       	B[P2] = R0;
ffa03928:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa0392c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0392e:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa03932:	71 50       	R1 = R1 + R6;
ffa03934:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03938:	09 4d       	R1 >>>= 0x1;
ffa0393a:	18 4e       	R0 >>= 0x3;
ffa0393c:	41 50       	R1 = R1 + R0;
ffa0393e:	01 0d       	CC = R1 <= 0x0;
ffa03940:	09 18       	IF CC JUMP 0xffa03952 <_tcp_checksum_calc+0x7a>;
ffa03942:	55 32       	P2 = P5;
ffa03944:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa03946:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa03948:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0394a:	10 94       	R0 = W[P2++] (Z);
ffa0394c:	0a 08       	CC = R2 == R1;
ffa0394e:	c3 50       	R3 = R3 + R0;
ffa03950:	fc 17       	IF !CC JUMP 0xffa03948 <_tcp_checksum_calc+0x70> (BP);
ffa03952:	d8 42       	R0 = R3.L (Z);
ffa03954:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa03958:	08 50       	R0 = R0 + R1;
ffa0395a:	c0 43       	R0 =~ R0;
ffa0395c:	01 e8 00 00 	UNLINK;
ffa03960:	c0 42       	R0 = R0.L (Z);
ffa03962:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03964:	10 00       	RTS;
	...

ffa03968 <_tcp_checksum_set>:
ffa03968:	c5 04       	[--SP] = (P5:5);
ffa0396a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa0396e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03972:	0a e1 b8 0e 	P2.L = 0xeb8;		/* (3768)	P2=0xff900eb8 <_txIdx> */
ffa03976:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa0397a:	10 95 00 00 
ffa0397e:	10 32       	P2 = R0;
ffa03980:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900ef4 <_NetArpLut_age> */
ffa03984:	09 e1 bc 0e 	P1.L = 0xebc;		/* (3772)	P1=0xff900ebc <_txbuf> */
ffa03988:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0398a:	52 91       	P2 = [P2];
ffa0398c:	95 ad       	P5 = [P2 + 0x18];
ffa0398e:	45 30       	R0 = P5;
ffa03990:	ff e3 a4 ff 	CALL 0xffa038d8 <_tcp_checksum_calc>;
ffa03994:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa03998:	01 e8 00 00 	UNLINK;
ffa0399c:	85 04       	(P5:5) = [SP++];
ffa0399e:	10 00       	RTS;

ffa039a0 <_tcp_checksum_check>:
ffa039a0:	10 32       	P2 = R0;
ffa039a2:	78 05       	[--SP] = (R7:7);
ffa039a4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa039a8:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa039ac:	ff e3 96 ff 	CALL 0xffa038d8 <_tcp_checksum_calc>;
ffa039b0:	0f 30       	R1 = R7;
ffa039b2:	c7 42       	R7 = R0.L (Z);
ffa039b4:	39 08       	CC = R1 == R7;
ffa039b6:	19 18       	IF CC JUMP 0xffa039e8 <_tcp_checksum_check+0x48>;
ffa039b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa039bc:	00 e1 44 05 	R0.L = 0x544;		/* (1348)	R0=0xff900544(-7338684) */
ffa039c0:	ff e3 08 ee 	CALL 0xffa015d0 <_printf_hex>;
ffa039c4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900544(-7338684) */
ffa039c8:	0f 30       	R1 = R7;
ffa039ca:	00 e1 60 05 	R0.L = 0x560;		/* (1376)	R0=0xff900560(-7338656) */
ffa039ce:	ff e3 01 ee 	CALL 0xffa015d0 <_printf_hex>;
ffa039d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900560(-7338656) */
ffa039d6:	00 e1 9c 07 	R0.L = 0x79c;		/* (1948)	R0=0xff90079c(-7338084) */
ffa039da:	ff e3 f9 ee 	CALL 0xffa017cc <_printf_str>;
ffa039de:	01 e8 00 00 	UNLINK;
ffa039e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa039e4:	38 05       	(R7:7) = [SP++];
ffa039e6:	10 00       	RTS;
ffa039e8:	01 e8 00 00 	UNLINK;
ffa039ec:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa039ee:	38 05       	(R7:7) = [SP++];
ffa039f0:	10 00       	RTS;
	...

ffa039f4 <_tcp_packet_setup>:
ffa039f4:	ed 05       	[--SP] = (R7:5, P5:5);
ffa039f6:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa039fa:	29 32       	P5 = R1;
ffa039fc:	7f 30       	R7 = FP;
ffa039fe:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa03a00:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03a02:	f0 bb       	[FP -0x4] = R0;
ffa03a04:	07 30       	R0 = R7;
ffa03a06:	2a 30       	R5 = R2;
ffa03a08:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa03a0c:	ff e3 52 f6 	CALL 0xffa026b0 <_eth_header_setup>;
ffa03a10:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa03a14:	68 99 00 00 
ffa03a18:	80 0c       	CC = R0 < 0x0;
ffa03a1a:	14 18       	IF CC JUMP 0xffa03a42 <_tcp_packet_setup+0x4e>;
ffa03a1c:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03a1e:	f0 b0       	[SP + 0xc] = R0;
ffa03a20:	15 30       	R2 = R5;
ffa03a22:	01 30       	R0 = R1;
ffa03a24:	0f 30       	R1 = R7;
ffa03a26:	ff e3 09 f2 	CALL 0xffa01e38 <_ip_header_setup>;
ffa03a2a:	b9 a2       	R1 = [FP + 0x28];
ffa03a2c:	f1 b0       	[SP + 0xc] = R1;
ffa03a2e:	f9 a2       	R1 = [FP + 0x2c];
ffa03a30:	31 b1       	[SP + 0x10] = R1;
ffa03a32:	72 43       	R2 = R6.B (Z);
ffa03a34:	0f 30       	R1 = R7;
ffa03a36:	ff e3 93 f2 	CALL 0xffa01f5c <_tcp_header_setup>;
ffa03a3a:	01 e8 00 00 	UNLINK;
ffa03a3e:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03a40:	10 00       	RTS;
ffa03a42:	01 e8 00 00 	UNLINK;
ffa03a46:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a48:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03a4a:	10 00       	RTS;

ffa03a4c <_tcp_burst>:
ffa03a4c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa03a4e:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa03a52:	78 b2       	[FP + 0x24] = R0;
ffa03a54:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 <_g_samples> */
ffa03a58:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb8 <_txIdx> */
ffa03a5c:	7a a2       	R2 = [FP + 0x24];
ffa03a5e:	0b e1 e0 0f 	P3.L = 0xfe0;		/* (4064)	P3=0xff900fe0 <_g_httpHeaderLen> */
ffa03a62:	0a e1 e4 0f 	P2.L = 0xfe4;		/* (4068)	P2=0xff900fe4 <_g_httpContentLen> */
ffa03a66:	02 0d       	CC = R2 <= 0x0;
ffa03a68:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa03a6c:	10 91 00 00 
ffa03a70:	19 91       	R1 = [P3];
ffa03a72:	7e 18       	IF CC JUMP 0xffa03b6e <_tcp_burst+0x122>;
ffa03a74:	41 50       	R1 = R1 + R0;
ffa03a76:	8f 09       	CC = R7 < R1 (IU);
ffa03a78:	21 32       	P4 = R1;
ffa03a7a:	7a 10       	IF !CC JUMP 0xffa03b6e <_tcp_burst+0x122>;
ffa03a7c:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa03a7e:	38 20       	JUMP.S 0xffa03aee <_tcp_burst+0xa2>;
ffa03a80:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03a82:	18 91       	R0 = [P3];
ffa03a84:	07 52       	R0 = R7 - R0;
ffa03a86:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa03a8a:	08 50       	R0 = R0 + R1;
ffa03a8c:	16 30       	R2 = R6;
ffa03a8e:	0d 30       	R1 = R5;
ffa03a90:	ff e3 e8 ee 	CALL 0xffa01860 <_memcpy_>;
ffa03a94:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900ebc <_txbuf> */
ffa03a98:	09 e1 cc 0f 	P1.L = 0xfcc;		/* (4044)	P1=0xff900fcc <_TcpSeqHttpStart> */
ffa03a9c:	08 91       	R0 = [P1];
ffa03a9e:	f7 51       	R7 = R7 + R6;
ffa03aa0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fe4 <_g_httpContentLen> */
ffa03aa4:	0a e1 c4 0f 	P2.L = 0xfc4;		/* (4036)	P2=0xff900fc4 <_TcpSeqHost> */
ffa03aa8:	07 50       	R0 = R7 + R0;
ffa03aaa:	10 93       	[P2] = R0;
ffa03aac:	26 50       	R0 = R6 + R4;
ffa03aae:	ff e3 5d ff 	CALL 0xffa03968 <_tcp_checksum_set>;
ffa03ab2:	ff e3 85 f2 	CALL 0xffa01fbc <_bfin_EMAC_send_nocopy>;
ffa03ab6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc4 <_TcpSeqHost> */
ffa03aba:	0a e1 cc 0e 	P2.L = 0xecc;		/* (3788)	P2=0xff900ecc <_rxIdx> */
ffa03abe:	10 95       	R0 = W[P2] (Z);
ffa03ac0:	10 32       	P2 = R0;
ffa03ac2:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900fcc <_TcpSeqHttpStart> */
ffa03ac6:	09 e1 d0 0e 	P1.L = 0xed0;		/* (3792)	P1=0xff900ed0 <_rxbuf> */
ffa03aca:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa03acc:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03ace:	52 91       	P2 = [P2];
ffa03ad0:	90 a2       	R0 = [P2 + 0x28];
ffa03ad2:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa03ad4:	07 1c       	IF CC JUMP 0xffa03ae2 <_tcp_burst+0x96> (BP);
ffa03ad6:	90 a2       	R0 = [P2 + 0x28];
ffa03ad8:	4d 30       	R1 = P5;
ffa03ada:	7a a2       	R2 = [FP + 0x24];
ffa03adc:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa03ade:	11 50       	R0 = R1 + R2;
ffa03ae0:	a8 06       	IF !CC P5 = R0;
ffa03ae2:	79 ae       	P1 = [FP + 0x24];
ffa03ae4:	69 09       	CC = P1 <= P5;
ffa03ae6:	45 18       	IF CC JUMP 0xffa03b70 <_tcp_burst+0x124>;
ffa03ae8:	44 30       	R0 = P4;
ffa03aea:	87 09       	CC = R7 < R0 (IU);
ffa03aec:	42 10       	IF !CC JUMP 0xffa03b70 <_tcp_burst+0x124>;
ffa03aee:	44 30       	R0 = P4;
ffa03af0:	b8 52       	R2 = R0 - R7;
ffa03af2:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa03af6:	0a 09       	CC = R2 <= R1;
ffa03af8:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03afa:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa03afc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900ed0 <_rxbuf> */
ffa03b00:	08 06       	IF !CC R1 = R0;
ffa03b02:	09 e1 cc 0f 	P1.L = 0xfcc;		/* (4044)	P1=0xff900fcc <_TcpSeqHttpStart> */
ffa03b06:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa03b0a:	07 cc 10 4c 	R6 = MIN (R2, R0) || R0 = [P1] || NOP;
ffa03b0e:	08 91 00 00 
ffa03b12:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ecc <_rxIdx> */
ffa03b16:	07 50       	R0 = R7 + R0;
ffa03b18:	0a e1 c4 0f 	P2.L = 0xfc4;		/* (4036)	P2=0xff900fc4 <_TcpSeqHost> */
ffa03b1c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900fcc <_TcpSeqHttpStart> */
ffa03b20:	10 93       	[P2] = R0;
ffa03b22:	09 e1 c8 0f 	P1.L = 0xfc8;		/* (4040)	P1=0xff900fc8 <_TcpSeqClient> */
ffa03b26:	f1 b0       	[SP + 0xc] = R1;
ffa03b28:	30 b1       	[SP + 0x10] = R0;
ffa03b2a:	08 91       	R0 = [P1];
ffa03b2c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc4 <_TcpSeqHost> */
ffa03b30:	70 b1       	[SP + 0x14] = R0;
ffa03b32:	0a e1 b0 0e 	P2.L = 0xeb0;		/* (3760)	P2=0xff900eb0 <_NetDestIP> */
ffa03b36:	4f 30       	R1 = FP;
ffa03b38:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R2 = [P2] || NOP;
ffa03b3c:	12 91 00 00 
ffa03b40:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03b42:	ff e3 59 ff 	CALL 0xffa039f4 <_tcp_packet_setup>;
ffa03b46:	28 30       	R5 = R0;
ffa03b48:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03b4c:	00 0d       	CC = R0 <= 0x0;
ffa03b4e:	ca 1b       	IF CC JUMP 0xffa03ae2 <_tcp_burst+0x96>;
ffa03b50:	18 91       	R0 = [P3];
ffa03b52:	38 0a       	CC = R0 <= R7 (IU);
ffa03b54:	96 1f       	IF CC JUMP 0xffa03a80 <_tcp_burst+0x34> (BP);
ffa03b56:	38 53       	R4 = R0 - R7;
ffa03b58:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03b5c:	07 50       	R0 = R7 + R0;
ffa03b5e:	0d 30       	R1 = R5;
ffa03b60:	14 30       	R2 = R4;
ffa03b62:	ff e3 7f ee 	CALL 0xffa01860 <_memcpy_>;
ffa03b66:	65 51       	R5 = R5 + R4;
ffa03b68:	a6 53       	R6 = R6 - R4;
ffa03b6a:	e7 51       	R7 = R7 + R4;
ffa03b6c:	8b 2f       	JUMP.S 0xffa03a82 <_tcp_burst+0x36>;
ffa03b6e:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa03b70:	01 e8 00 00 	UNLINK;
ffa03b74:	45 30       	R0 = P5;
ffa03b76:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03b78:	10 00       	RTS;
	...

ffa03b7c <_tcp_rx>:
ffa03b7c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa03b7e:	20 32       	P4 = R0;
ffa03b80:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa03b84:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03b88:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa03b8a:	ff e3 23 f1 	CALL 0xffa01dd0 <_htons>;
ffa03b8e:	c0 42       	R0 = R0.L (Z);
ffa03b90:	07 08       	CC = R7 == R0;
ffa03b92:	06 18       	IF CC JUMP 0xffa03b9e <_tcp_rx+0x22>;
ffa03b94:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b96:	01 e8 00 00 	UNLINK;
ffa03b9a:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03b9c:	10 00       	RTS;
ffa03b9e:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa03ba2:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa03ba4:	08 08       	CC = R0 == R1;
ffa03ba6:	f7 17       	IF !CC JUMP 0xffa03b94 <_tcp_rx+0x18> (BP);
ffa03ba8:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa03bac:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa03bb0:	ff e3 10 f1 	CALL 0xffa01dd0 <_htons>;
ffa03bb4:	c0 42       	R0 = R0.L (Z);
ffa03bb6:	07 08       	CC = R7 == R0;
ffa03bb8:	ee 17       	IF !CC JUMP 0xffa03b94 <_tcp_rx+0x18> (BP);
ffa03bba:	44 30       	R0 = P4;
ffa03bbc:	80 64       	R0 += 0x10;		/* ( 16) */
ffa03bbe:	ff e3 83 f1 	CALL 0xffa01ec4 <_ip_header_checksum>;
ffa03bc2:	40 43       	R0 = R0.B (Z);
ffa03bc4:	00 0c       	CC = R0 == 0x0;
ffa03bc6:	e7 1f       	IF CC JUMP 0xffa03b94 <_tcp_rx+0x18> (BP);
ffa03bc8:	4c 30       	R1 = P4;
ffa03bca:	41 64       	R1 += 0x8;		/* (  8) */
ffa03bcc:	e0 a1       	R0 = [P4 + 0x1c];
ffa03bce:	ff e3 01 fc 	CALL 0xffa033d0 <_ARP_lut_add>;
ffa03bd2:	44 30       	R0 = P4;
ffa03bd4:	ff e3 6a fe 	CALL 0xffa038a8 <_tcp_length>;
ffa03bd8:	30 30       	R6 = R0;
ffa03bda:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa03bde:	0e 30       	R1 = R6;
ffa03be0:	00 e1 70 05 	R0.L = 0x570;		/* (1392)	R0=0xff900570(-7338640) */
ffa03be4:	ff e3 52 ed 	CALL 0xffa01688 <_printf_int>;
ffa03be8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900570(-7338640) */
ffa03bec:	00 e1 9c 07 	R0.L = 0x79c;		/* (1948)	R0=0xff90079c(-7338084) */
ffa03bf0:	ff e3 ee ed 	CALL 0xffa017cc <_printf_str>;
ffa03bf4:	44 30       	R0 = P4;
ffa03bf6:	0e 30       	R1 = R6;
ffa03bf8:	ff e3 d4 fe 	CALL 0xffa039a0 <_tcp_checksum_check>;
ffa03bfc:	40 43       	R0 = R0.B (Z);
ffa03bfe:	00 0c       	CC = R0 == 0x0;
ffa03c00:	ca 1b       	IF CC JUMP 0xffa03b94 <_tcp_rx+0x18>;
ffa03c02:	00 00       	NOP;
ffa03c04:	00 00       	NOP;
ffa03c06:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa03c08:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03c0c:	48 43       	R0 = R1.B (Z);
ffa03c0e:	10 08       	CC = R0 == R2;
ffa03c10:	f1 18       	IF CC JUMP 0xffa03df2 <_tcp_rx+0x276>;
ffa03c12:	10 0c       	CC = R0 == 0x2;
ffa03c14:	0a 19       	IF CC JUMP 0xffa03e28 <_tcp_rx+0x2ac>;
ffa03c16:	48 43       	R0 = R1.B (Z);
ffa03c18:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03c1a:	08 08       	CC = R0 == R1;
ffa03c1c:	85 18       	IF CC JUMP 0xffa03d26 <_tcp_rx+0x1aa>;
ffa03c1e:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03c20:	ab 10       	IF !CC JUMP 0xffa03d76 <_tcp_rx+0x1fa>;
ffa03c22:	00 00       	NOP;
ffa03c24:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900fe0 <_g_httpHeaderLen> */
ffa03c28:	0b e1 d0 0f 	P3.L = 0xfd0;		/* (4048)	P3=0xff900fd0 <_TcpState> */
ffa03c2c:	00 00       	NOP;
ffa03c2e:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa03c32:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa03c34:	38 10       	IF !CC JUMP 0xffa03ca4 <_tcp_rx+0x128>;
ffa03c36:	18 91       	R0 = [P3];
ffa03c38:	10 0c       	CC = R0 == 0x2;
ffa03c3a:	ad 17       	IF !CC JUMP 0xffa03b94 <_tcp_rx+0x18> (BP);
ffa03c3c:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900000 <_l1_data_a>(-7340032) */
ffa03c40:	a0 a2       	R0 = [P4 + 0x28];
ffa03c42:	04 e1 b0 0e 	R4.L = 0xeb0;		/* (3760)	R4=0xff900eb0 <_NetDestIP>(-7336272) */
ffa03c46:	a5 e5 30 00 	R5 = B[P4 + 0x30] (X);
ffa03c4a:	ff e3 cf f0 	CALL 0xffa01de8 <_htonl>;
ffa03c4e:	14 32       	P2 = R4;
ffa03c50:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa03c54:	30 50       	R0 = R0 + R6;
ffa03c56:	0d e1 c8 0f 	P5.L = 0xfc8;		/* (4040)	P5=0xff900fc8 <_TcpSeqClient> */
ffa03c5a:	28 93       	[P5] = R0;
ffa03c5c:	e0 a1       	R0 = [P4 + 0x1c];
ffa03c5e:	10 93       	[P2] = R0;
ffa03c60:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900fd0 <_TcpState> */
ffa03c64:	e0 a2       	R0 = [P4 + 0x2c];
ffa03c66:	0b e1 cc 0f 	P3.L = 0xfcc;		/* (4044)	P3=0xff900fcc <_TcpSeqHttpStart> */
ffa03c6a:	ff e3 bf f0 	CALL 0xffa01de8 <_htonl>;
ffa03c6e:	19 91       	R1 = [P3];
ffa03c70:	c8 53       	R7 = R0 - R1;
ffa03c72:	a1 e4 31 00 	R1 = B[P4 + 0x31] (Z);
ffa03c76:	21 48       	CC = !BITTST (R1, 0x4);		/* bit  4 */
ffa03c78:	1e 1d       	IF CC JUMP 0xffa03eb4 <_tcp_rx+0x338> (BP);
ffa03c7a:	06 0c       	CC = R6 == 0x0;
ffa03c7c:	1c 15       	IF !CC JUMP 0xffa03eb4 <_tcp_rx+0x338> (BP);
ffa03c7e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb0 <_NetDestIP> */
ffa03c82:	0a e1 e0 0f 	P2.L = 0xfe0;		/* (4064)	P2=0xff900fe0 <_g_httpHeaderLen> */
ffa03c86:	10 91       	R0 = [P2];
ffa03c88:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fe0 <_g_httpHeaderLen> */
ffa03c8c:	0a e1 e4 0f 	P2.L = 0xfe4;		/* (4068)	P2=0xff900fe4 <_g_httpContentLen> */
ffa03c90:	11 91       	R1 = [P2];
ffa03c92:	08 50       	R0 = R0 + R1;
ffa03c94:	07 08       	CC = R7 == R0;
ffa03c96:	46 18       	IF CC JUMP 0xffa03d22 <_tcp_rx+0x1a6>;
ffa03c98:	0f 30       	R1 = R7;
ffa03c9a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03c9c:	ff e3 d8 fe 	CALL 0xffa03a4c <_tcp_burst>;
ffa03ca0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03ca2:	7a 2f       	JUMP.S 0xffa03b96 <_tcp_rx+0x1a>;
ffa03ca4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03ca6:	1f 91       	R7 = [P3];
ffa03ca8:	07 08       	CC = R7 == R0;
ffa03caa:	85 19       	IF CC JUMP 0xffa03fb4 <_tcp_rx+0x438>;
ffa03cac:	07 0c       	CC = R7 == 0x0;
ffa03cae:	c4 17       	IF !CC JUMP 0xffa03c36 <_tcp_rx+0xba> (BP);
ffa03cb0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa03cb4:	00 e1 ec 05 	R0.L = 0x5ec;		/* (1516)	R0=0xff9005ec(-7338516) */
ffa03cb8:	ff e3 8a ed 	CALL 0xffa017cc <_printf_str>;
ffa03cbc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fe4 <_g_httpContentLen> */
ffa03cc0:	0a e1 e8 0f 	P2.L = 0xfe8;		/* (4072)	P2=0xff900fe8 <_g_httpRxed> */
ffa03cc4:	17 93       	[P2] = R7;
ffa03cc6:	a0 a2       	R0 = [P4 + 0x28];
ffa03cc8:	ff e3 90 f0 	CALL 0xffa01de8 <_htonl>;
ffa03ccc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fe8 <_g_httpRxed> */
ffa03cd0:	0a e1 c8 0f 	P2.L = 0xfc8;		/* (4040)	P2=0xff900fc8 <_TcpSeqClient> */
ffa03cd4:	10 93       	[P2] = R0;
ffa03cd6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc8 <_TcpSeqClient> */
ffa03cda:	e2 a1       	R2 = [P4 + 0x1c];
ffa03cdc:	0a e1 b0 0e 	P2.L = 0xeb0;		/* (3760)	P2=0xff900eb0 <_NetDestIP> */
ffa03ce0:	12 93       	[P2] = R2;
ffa03ce2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb0 <_NetDestIP> */
ffa03ce6:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03cea:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_TcpClientPort> */
ffa03cee:	11 97       	W[P2] = R1;
ffa03cf0:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa03cf2:	f1 b0       	[SP + 0xc] = R1;
ffa03cf4:	4f 30       	R1 = FP;
ffa03cf6:	30 b1       	[SP + 0x10] = R0;
ffa03cf8:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03cfa:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa03cfe:	77 b1 00 00 
ffa03d02:	ff e3 79 fe 	CALL 0xffa039f4 <_tcp_packet_setup>;
ffa03d06:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03d0a:	00 0d       	CC = R0 <= 0x0;
ffa03d0c:	95 1b       	IF CC JUMP 0xffa03c36 <_tcp_rx+0xba>;
ffa03d0e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fdc <_TcpClientPort> */
ffa03d12:	0a e1 d0 0f 	P2.L = 0xfd0;		/* (4048)	P2=0xff900fd0 <_TcpState> */
ffa03d16:	17 93       	[P2] = R7;
ffa03d18:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d1a:	ff e3 27 fe 	CALL 0xffa03968 <_tcp_checksum_set>;
ffa03d1e:	ff e3 4f f1 	CALL 0xffa01fbc <_bfin_EMAC_send_nocopy>;
ffa03d22:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03d24:	39 2f       	JUMP.S 0xffa03b96 <_tcp_rx+0x1a>;
ffa03d26:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900fcc <_TcpSeqHttpStart> */
ffa03d2a:	0b e1 d0 0f 	P3.L = 0xfd0;		/* (4048)	P3=0xff900fd0 <_TcpState> */
ffa03d2e:	18 91       	R0 = [P3];
ffa03d30:	08 0c       	CC = R0 == 0x1;
ffa03d32:	b9 17       	IF !CC JUMP 0xffa03ca4 <_tcp_rx+0x128> (BP);
ffa03d34:	e0 a2       	R0 = [P4 + 0x2c];
ffa03d36:	ff e3 59 f0 	CALL 0xffa01de8 <_htonl>;
ffa03d3a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd0 <_TcpState> */
ffa03d3e:	0a e1 c4 0f 	P2.L = 0xfc4;		/* (4036)	P2=0xff900fc4 <_TcpSeqHost> */
ffa03d42:	11 91       	R1 = [P2];
ffa03d44:	08 08       	CC = R0 == R1;
ffa03d46:	42 19       	IF CC JUMP 0xffa03fca <_tcp_rx+0x44e>;
ffa03d48:	00 00       	NOP;
ffa03d4a:	00 00       	NOP;
ffa03d4c:	00 00       	NOP;
ffa03d4e:	e0 a2       	R0 = [P4 + 0x2c];
ffa03d50:	ff e3 4c f0 	CALL 0xffa01de8 <_htonl>;
ffa03d54:	08 30       	R1 = R0;
ffa03d56:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03d5a:	00 e1 9c 05 	R0.L = 0x59c;		/* (1436)	R0=0xff90059c(-7338596) */
ffa03d5e:	ff e3 3d ed 	CALL 0xffa017d8 <_printf_ip>;
ffa03d62:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d64:	18 93       	[P3] = R0;
ffa03d66:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03d6a:	00 e1 9c 07 	R0.L = 0x79c;		/* (1948)	R0=0xff90079c(-7338084) */
ffa03d6e:	ff e3 2f ed 	CALL 0xffa017cc <_printf_str>;
ffa03d72:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03d74:	11 2f       	JUMP.S 0xffa03b96 <_tcp_rx+0x1a>;
ffa03d76:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03d7a:	00 e1 c8 05 	R0.L = 0x5c8;		/* (1480)	R0=0xff9005c8(-7338552) */
ffa03d7e:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900eb0 <_NetDestIP>(-7336272) */
ffa03d82:	ff e3 25 ed 	CALL 0xffa017cc <_printf_str>;
ffa03d86:	04 e1 b0 0e 	R4.L = 0xeb0;		/* (3760)	R4=0xff900eb0 <_NetDestIP>(-7336272) */
ffa03d8a:	a0 a2       	R0 = [P4 + 0x28];
ffa03d8c:	ff e3 2e f0 	CALL 0xffa01de8 <_htonl>;
ffa03d90:	14 32       	P2 = R4;
ffa03d92:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fc8 <_TcpSeqClient> */
ffa03d96:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900fd0 <_TcpState> */
ffa03d9a:	0d e1 c8 0f 	P5.L = 0xfc8;		/* (4040)	P5=0xff900fc8 <_TcpSeqClient> */
ffa03d9e:	0b e1 d0 0f 	P3.L = 0xfd0;		/* (4048)	P3=0xff900fd0 <_TcpState> */
ffa03da2:	28 93       	[P5] = R0;
ffa03da4:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa03da8:	18 91 00 00 
ffa03dac:	e2 a1       	R2 = [P4 + 0x1c];
ffa03dae:	09 64       	R1 += 0x1;		/* (  1) */
ffa03db0:	10 0c       	CC = R0 == 0x2;
ffa03db2:	12 93       	[P2] = R2;
ffa03db4:	29 93       	[P5] = R1;
ffa03db6:	03 18       	IF CC JUMP 0xffa03dbc <_tcp_rx+0x240>;
ffa03db8:	00 0c       	CC = R0 == 0x0;
ffa03dba:	c0 14       	IF !CC JUMP 0xffa03f3a <_tcp_rx+0x3be> (BP);
ffa03dbc:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa03dbe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc4 <_TcpSeqHost> */
ffa03dc2:	f0 b0       	[SP + 0xc] = R0;
ffa03dc4:	0a e1 c4 0f 	P2.L = 0xfc4;		/* (4036)	P2=0xff900fc4 <_TcpSeqHost> */
ffa03dc8:	10 91       	R0 = [P2];
ffa03dca:	71 b1       	[SP + 0x14] = R1;
ffa03dcc:	4f 30       	R1 = FP;
ffa03dce:	30 b1       	[SP + 0x10] = R0;
ffa03dd0:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03dd2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03dd4:	ff e3 10 fe 	CALL 0xffa039f4 <_tcp_packet_setup>;
ffa03dd8:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03ddc:	00 0d       	CC = R0 <= 0x0;
ffa03dde:	ae 18       	IF CC JUMP 0xffa03f3a <_tcp_rx+0x3be>;
ffa03de0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa03de2:	18 93       	[P3] = R0;
ffa03de4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03de6:	ff e3 c1 fd 	CALL 0xffa03968 <_tcp_checksum_set>;
ffa03dea:	ff e3 e9 f0 	CALL 0xffa01fbc <_bfin_EMAC_send_nocopy>;
ffa03dee:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03df0:	d3 2e       	JUMP.S 0xffa03b96 <_tcp_rx+0x1a>;
ffa03df2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03df6:	00 e1 84 05 	R0.L = 0x584;		/* (1412)	R0=0xff900584(-7338620) */
ffa03dfa:	ff e3 e9 ec 	CALL 0xffa017cc <_printf_str>;
ffa03dfe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc4 <_TcpSeqHost> */
ffa03e02:	0a e1 d0 0f 	P2.L = 0xfd0;		/* (4048)	P2=0xff900fd0 <_TcpState> */
ffa03e06:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03e08:	17 93       	[P2] = R7;
ffa03e0a:	a0 a2       	R0 = [P4 + 0x28];
ffa03e0c:	ff e3 ee ef 	CALL 0xffa01de8 <_htonl>;
ffa03e10:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd0 <_TcpState> */
ffa03e14:	0a e1 c8 0f 	P2.L = 0xfc8;		/* (4040)	P2=0xff900fc8 <_TcpSeqClient> */
ffa03e18:	10 93       	[P2] = R0;
ffa03e1a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc8 <_TcpSeqClient> */
ffa03e1e:	0a e1 e8 0f 	P2.L = 0xfe8;		/* (4072)	P2=0xff900fe8 <_g_httpRxed> */
ffa03e22:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03e24:	17 93       	[P2] = R7;
ffa03e26:	b8 2e       	JUMP.S 0xffa03b96 <_tcp_rx+0x1a>;
ffa03e28:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03e2c:	00 e1 90 05 	R0.L = 0x590;		/* (1424)	R0=0xff900590(-7338608) */
ffa03e30:	ff e3 ce ec 	CALL 0xffa017cc <_printf_str>;
ffa03e34:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fc8 <_TcpSeqClient> */
ffa03e38:	a0 a2       	R0 = [P4 + 0x28];
ffa03e3a:	ff e3 d7 ef 	CALL 0xffa01de8 <_htonl>;
ffa03e3e:	0d e1 c8 0f 	P5.L = 0xfc8;		/* (4040)	P5=0xff900fc8 <_TcpSeqClient> */
ffa03e42:	28 93       	[P5] = R0;
ffa03e44:	44 30       	R0 = P4;
ffa03e46:	ff e3 31 fd 	CALL 0xffa038a8 <_tcp_length>;
ffa03e4a:	29 91       	R1 = [P5];
ffa03e4c:	09 64       	R1 += 0x1;		/* (  1) */
ffa03e4e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fe8 <_g_httpRxed> */
ffa03e52:	08 50       	R0 = R0 + R1;
ffa03e54:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_TcpClientPort> */
ffa03e58:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03e5c:	11 97       	W[P2] = R1;
ffa03e5e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fdc <_TcpClientPort> */
ffa03e62:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa03e66:	28 93 00 00 
ffa03e6a:	0a e1 e8 0f 	P2.L = 0xfe8;		/* (4072)	P2=0xff900fe8 <_g_httpRxed> */
ffa03e6e:	11 93       	[P2] = R1;
ffa03e70:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fe8 <_g_httpRxed> */
ffa03e74:	e2 a1       	R2 = [P4 + 0x1c];
ffa03e76:	0a e1 b0 0e 	P2.L = 0xeb0;		/* (3760)	P2=0xff900eb0 <_NetDestIP> */
ffa03e7a:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa03e7c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fc8 <_TcpSeqClient> */
ffa03e80:	12 93       	[P2] = R2;
ffa03e82:	0d e1 c4 0f 	P5.L = 0xfc4;		/* (4036)	P5=0xff900fc4 <_TcpSeqHost> */
ffa03e86:	f1 b0       	[SP + 0xc] = R1;
ffa03e88:	29 91       	R1 = [P5];
ffa03e8a:	31 b1       	[SP + 0x10] = R1;
ffa03e8c:	4f 30       	R1 = FP;
ffa03e8e:	70 b1       	[SP + 0x14] = R0;
ffa03e90:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03e92:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03e94:	ff e3 b0 fd 	CALL 0xffa039f4 <_tcp_packet_setup>;
ffa03e98:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03e9c:	00 0d       	CC = R0 <= 0x0;
ffa03e9e:	93 18       	IF CC JUMP 0xffa03fc4 <_tcp_rx+0x448>;
ffa03ea0:	28 91       	R0 = [P5];
ffa03ea2:	08 64       	R0 += 0x1;		/* (  1) */
ffa03ea4:	28 93       	[P5] = R0;
ffa03ea6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03ea8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb0 <_NetDestIP> */
ffa03eac:	0a e1 d0 0f 	P2.L = 0xfd0;		/* (4048)	P2=0xff900fd0 <_TcpState> */
ffa03eb0:	10 93       	[P2] = R0;
ffa03eb2:	33 2f       	JUMP.S 0xffa03d18 <_tcp_rx+0x19c>;
ffa03eb4:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa03eb8:	28 54       	R0 = R0 & R5;
ffa03eba:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa03ebc:	10 4d       	R0 >>>= 0x2;
ffa03ebe:	54 30       	R2 = P4;
ffa03ec0:	19 48       	CC = !BITTST (R1, 0x3);		/* bit  3 */
ffa03ec2:	02 50       	R0 = R2 + R0;
ffa03ec4:	5d 1c       	IF CC JUMP 0xffa03f7e <_tcp_rx+0x402> (BP);
ffa03ec6:	0e 30       	R1 = R6;
ffa03ec8:	00 e3 60 05 	CALL 0xffa04988 <_httpCollate>;
ffa03ecc:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fc4 <_TcpSeqHost> */
ffa03ed0:	18 91       	R0 = [P3];
ffa03ed2:	07 50       	R0 = R7 + R0;
ffa03ed4:	0d e1 c4 0f 	P5.L = 0xfc4;		/* (4036)	P5=0xff900fc4 <_TcpSeqHost> */
ffa03ed8:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900ef8 <_NetArpLut> */
ffa03edc:	28 93       	[P5] = R0;
ffa03ede:	0c e1 e8 0f 	P4.L = 0xfe8;		/* (4072)	P4=0xff900fe8 <_g_httpRxed> */
ffa03ee2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03ee4:	80 4f       	R0 <<= 0x10;
ffa03ee6:	21 91       	R1 = [P4];
ffa03ee8:	00 e3 26 03 	CALL 0xffa04534 <_httpResp>;
ffa03eec:	00 0c       	CC = R0 == 0x0;
ffa03eee:	22 1c       	IF CC JUMP 0xffa03f32 <_tcp_rx+0x3b6> (BP);
ffa03ef0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd0 <_TcpState> */
ffa03ef4:	28 91       	R0 = [P5];
ffa03ef6:	0a e1 cc 0f 	P2.L = 0xfcc;		/* (4044)	P2=0xff900fcc <_TcpSeqHttpStart> */
ffa03efa:	10 93       	[P2] = R0;
ffa03efc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fcc <_TcpSeqHttpStart> */
ffa03f00:	0a e1 e0 0f 	P2.L = 0xfe0;		/* (4064)	P2=0xff900fe0 <_g_httpHeaderLen> */
ffa03f04:	11 91       	R1 = [P2];
ffa03f06:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fe0 <_g_httpHeaderLen> */
ffa03f0a:	0a e1 e4 0f 	P2.L = 0xfe4;		/* (4068)	P2=0xff900fe4 <_g_httpContentLen> */
ffa03f0e:	10 91       	R0 = [P2];
ffa03f10:	41 50       	R1 = R1 + R0;
ffa03f12:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03f16:	00 e1 08 06 	R0.L = 0x608;		/* (1544)	R0=0xff900608(-7338488) */
ffa03f1a:	ff e3 b7 eb 	CALL 0xffa01688 <_printf_int>;
ffa03f1e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900608(-7338488) */
ffa03f22:	00 e1 9c 07 	R0.L = 0x79c;		/* (1948)	R0=0xff90079c(-7338084) */
ffa03f26:	ff e3 53 ec 	CALL 0xffa017cc <_printf_str>;
ffa03f2a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03f2c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03f2e:	ff e3 8f fd 	CALL 0xffa03a4c <_tcp_burst>;
ffa03f32:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03f34:	20 93       	[P4] = R0;
ffa03f36:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03f38:	2f 2e       	JUMP.S 0xffa03b96 <_tcp_rx+0x1a>;
ffa03f3a:	18 91       	R0 = [P3];
ffa03f3c:	18 0c       	CC = R0 == 0x3;
ffa03f3e:	77 16       	IF !CC JUMP 0xffa03c2c <_tcp_rx+0xb0> (BP);
ffa03f40:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fe4 <_g_httpContentLen> */
ffa03f44:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03f46:	0a e1 e8 0f 	P2.L = 0xfe8;		/* (4072)	P2=0xff900fe8 <_g_httpRxed> */
ffa03f4a:	10 93       	[P2] = R0;
ffa03f4c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03f4e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fe8 <_g_httpRxed> */
ffa03f52:	f0 b0       	[SP + 0xc] = R0;
ffa03f54:	0a e1 c4 0f 	P2.L = 0xfc4;		/* (4036)	P2=0xff900fc4 <_TcpSeqHost> */
ffa03f58:	10 91       	R0 = [P2];
ffa03f5a:	14 32       	P2 = R4;
ffa03f5c:	30 b1       	[SP + 0x10] = R0;
ffa03f5e:	28 91       	R0 = [P5];
ffa03f60:	70 b1       	[SP + 0x14] = R0;
ffa03f62:	4f 30       	R1 = FP;
ffa03f64:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03f68:	12 91 00 00 
ffa03f6c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03f6e:	ff e3 43 fd 	CALL 0xffa039f4 <_tcp_packet_setup>;
ffa03f72:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03f76:	00 0d       	CC = R0 <= 0x0;
ffa03f78:	5a 1a       	IF CC JUMP 0xffa03c2c <_tcp_rx+0xb0>;
ffa03f7a:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03f7c:	96 2f       	JUMP.S 0xffa03ea8 <_tcp_rx+0x32c>;
ffa03f7e:	0e 30       	R1 = R6;
ffa03f80:	00 e3 04 05 	CALL 0xffa04988 <_httpCollate>;
ffa03f84:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03f86:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc4 <_TcpSeqHost> */
ffa03f8a:	f0 b0       	[SP + 0xc] = R0;
ffa03f8c:	0a e1 c4 0f 	P2.L = 0xfc4;		/* (4036)	P2=0xff900fc4 <_TcpSeqHost> */
ffa03f90:	10 91       	R0 = [P2];
ffa03f92:	14 32       	P2 = R4;
ffa03f94:	30 b1       	[SP + 0x10] = R0;
ffa03f96:	28 91       	R0 = [P5];
ffa03f98:	70 b1       	[SP + 0x14] = R0;
ffa03f9a:	4f 30       	R1 = FP;
ffa03f9c:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03fa0:	12 91 00 00 
ffa03fa4:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03fa6:	ff e3 27 fd 	CALL 0xffa039f4 <_tcp_packet_setup>;
ffa03faa:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03fae:	00 0d       	CC = R0 <= 0x0;
ffa03fb0:	b4 16       	IF !CC JUMP 0xffa03d18 <_tcp_rx+0x19c> (BP);
ffa03fb2:	f1 2d       	JUMP.S 0xffa03b94 <_tcp_rx+0x18>;
ffa03fb4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa03fb8:	00 e1 d8 05 	R0.L = 0x5d8;		/* (1496)	R0=0xff9005d8(-7338536) */
ffa03fbc:	ff e3 08 ec 	CALL 0xffa017cc <_printf_str>;
ffa03fc0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03fc2:	ea 2d       	JUMP.S 0xffa03b96 <_tcp_rx+0x1a>;
ffa03fc4:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03fc8:	27 2e       	JUMP.S 0xffa03c16 <_tcp_rx+0x9a>;
ffa03fca:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03fcc:	18 93       	[P3] = R0;
ffa03fce:	a0 a2       	R0 = [P4 + 0x28];
ffa03fd0:	ff e3 0c ef 	CALL 0xffa01de8 <_htonl>;
ffa03fd4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc4 <_TcpSeqHost> */
ffa03fd8:	0a e1 c8 0f 	P2.L = 0xfc8;		/* (4040)	P2=0xff900fc8 <_TcpSeqClient> */
ffa03fdc:	10 93       	[P2] = R0;
ffa03fde:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa03fe2:	00 e1 b8 05 	R0.L = 0x5b8;		/* (1464)	R0=0xff9005b8(-7338568) */
ffa03fe6:	ff e3 f3 eb 	CALL 0xffa017cc <_printf_str>;
ffa03fea:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03fec:	d5 2d       	JUMP.S 0xffa03b96 <_tcp_rx+0x1a>;
	...

ffa03ff0 <_htmlForm>:
ffa03ff0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03ff4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa03ff8:	02 e1 24 06 	R2.L = 0x624;		/* (1572)	R2=0xff900624(-7338460) */
ffa03ffc:	01 e8 00 00 	UNLINK;
ffa04000:	ff e2 60 ec 	JUMP.L 0xffa018c0 <_strcpy_>;

ffa04004 <_htmlDiv>:
ffa04004:	12 43       	R2 = R2.B (X);
ffa04006:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa0400a:	1a 08       	CC = R2 == R3;
ffa0400c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa04010:	09 18       	IF CC JUMP 0xffa04022 <_htmlDiv+0x1e>;
ffa04012:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900624(-7338460) */
ffa04016:	02 e1 78 06 	R2.L = 0x678;		/* (1656)	R2=0xff900678(-7338376) */
ffa0401a:	01 e8 00 00 	UNLINK;
ffa0401e:	ff e2 51 ec 	JUMP.L 0xffa018c0 <_strcpy_>;
ffa04022:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900678(-7338376) */
ffa04026:	02 e1 44 06 	R2.L = 0x644;		/* (1604)	R2=0xff900644(-7338428) */
ffa0402a:	01 e8 00 00 	UNLINK;
ffa0402e:	ff e2 49 ec 	JUMP.L 0xffa018c0 <_strcpy_>;
	...

ffa04034 <_html404>:
ffa04034:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa04038:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0403a:	4f 30       	R1 = FP;
ffa0403c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900644(-7338428) */
ffa04040:	f0 bb       	[FP -0x4] = R0;
ffa04042:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa04044:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa04048:	02 e1 ac 06 	R2.L = 0x6ac;		/* (1708)	R2=0xff9006ac(-7338324) */
ffa0404c:	ff e3 3a ec 	CALL 0xffa018c0 <_strcpy_>;
ffa04050:	f0 b9       	R0 = [FP -0x4];
ffa04052:	01 e8 00 00 	UNLINK;
ffa04056:	10 00       	RTS;

ffa04058 <_htmlCursorOption>:
ffa04058:	68 05       	[--SP] = (R7:5);
ffa0405a:	2a 30       	R5 = R2;
ffa0405c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006ac(-7338324) */
ffa04060:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa04064:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa04068:	3f a2 00 00 
ffa0406c:	02 e1 c8 06 	R2.L = 0x6c8;		/* (1736)	R2=0xff9006c8(-7338296) */
ffa04070:	ff e3 28 ec 	CALL 0xffa018c0 <_strcpy_>;
ffa04074:	0e 30       	R1 = R6;
ffa04076:	15 30       	R2 = R5;
ffa04078:	ff e3 8a ed 	CALL 0xffa01b8c <_strprintf_int>;
ffa0407c:	3d 08       	CC = R5 == R7;
ffa0407e:	16 18       	IF CC JUMP 0xffa040aa <_htmlCursorOption+0x52>;
ffa04080:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c8(-7338296) */
ffa04084:	0e 30       	R1 = R6;
ffa04086:	02 e1 f0 06 	R2.L = 0x6f0;		/* (1776)	R2=0xff9006f0(-7338256) */
ffa0408a:	ff e3 1b ec 	CALL 0xffa018c0 <_strcpy_>;
ffa0408e:	0e 30       	R1 = R6;
ffa04090:	15 30       	R2 = R5;
ffa04092:	ff e3 7d ed 	CALL 0xffa01b8c <_strprintf_int>;
ffa04096:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006f0(-7338256) */
ffa0409a:	01 e8 00 00 	UNLINK;
ffa0409e:	0e 30       	R1 = R6;
ffa040a0:	02 e1 f4 06 	R2.L = 0x6f4;		/* (1780)	R2=0xff9006f4(-7338252) */
ffa040a4:	28 05       	(R7:5) = [SP++];
ffa040a6:	ff e2 0d ec 	JUMP.L 0xffa018c0 <_strcpy_>;
ffa040aa:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006f4(-7338252) */
ffa040ae:	0e 30       	R1 = R6;
ffa040b0:	02 e1 d8 06 	R2.L = 0x6d8;		/* (1752)	R2=0xff9006d8(-7338280) */
ffa040b4:	ff e3 06 ec 	CALL 0xffa018c0 <_strcpy_>;
ffa040b8:	e4 2f       	JUMP.S 0xffa04080 <_htmlCursorOption+0x28>;
	...

ffa040bc <_htmlCursorSelect>:
ffa040bc:	60 05       	[--SP] = (R7:4);
ffa040be:	3a 30       	R7 = R2;
ffa040c0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006d8(-7338280) */
ffa040c4:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa040c8:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa040cc:	7e a2 00 00 
ffa040d0:	02 e1 00 07 	R2.L = 0x700;		/* (1792)	R2=0xff900700(-7338240) */
ffa040d4:	bc a2       	R4 = [FP + 0x28];
ffa040d6:	ff e3 f5 eb 	CALL 0xffa018c0 <_strcpy_>;
ffa040da:	17 30       	R2 = R7;
ffa040dc:	0d 30       	R1 = R5;
ffa040de:	ff e3 f1 eb 	CALL 0xffa018c0 <_strcpy_>;
ffa040e2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900700(-7338240) */
ffa040e6:	0d 30       	R1 = R5;
ffa040e8:	02 e1 0c 07 	R2.L = 0x70c;		/* (1804)	R2=0xff90070c(-7338228) */
ffa040ec:	ff e3 ea eb 	CALL 0xffa018c0 <_strcpy_>;
ffa040f0:	0d 30       	R1 = R5;
ffa040f2:	16 30       	R2 = R6;
ffa040f4:	ff e3 e6 eb 	CALL 0xffa018c0 <_strcpy_>;
ffa040f8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90070c(-7338228) */
ffa040fc:	0d 30       	R1 = R5;
ffa040fe:	02 e1 28 07 	R2.L = 0x728;		/* (1832)	R2=0xff900728(-7338200) */
ffa04102:	ff e3 df eb 	CALL 0xffa018c0 <_strcpy_>;
ffa04106:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa04108:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa0410c:	f4 b0 00 00 
ffa04110:	17 30       	R2 = R7;
ffa04112:	ff e3 a3 ff 	CALL 0xffa04058 <_htmlCursorOption>;
ffa04116:	0f 64       	R7 += 0x1;		/* (  1) */
ffa04118:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa0411a:	0f 08       	CC = R7 == R1;
ffa0411c:	f6 17       	IF !CC JUMP 0xffa04108 <_htmlCursorSelect+0x4c> (BP);
ffa0411e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900728(-7338200) */
ffa04122:	01 e8 00 00 	UNLINK;
ffa04126:	0d 30       	R1 = R5;
ffa04128:	02 e1 2c 07 	R2.L = 0x72c;		/* (1836)	R2=0xff90072c(-7338196) */
ffa0412c:	20 05       	(R7:4) = [SP++];
ffa0412e:	ff e2 c9 eb 	JUMP.L 0xffa018c0 <_strcpy_>;
	...

ffa04134 <_httpHeader>:
ffa04134:	78 05       	[--SP] = (R7:7);
ffa04136:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0413a:	7f 30       	R7 = FP;
ffa0413c:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0413e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04140:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90072c(-7338196) */
ffa04144:	f0 bb       	[FP -0x4] = R0;
ffa04146:	0f 30       	R1 = R7;
ffa04148:	02 e1 44 07 	R2.L = 0x744;		/* (1860)	R2=0xff900744(-7338172) */
ffa0414c:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa04150:	ff e3 b8 eb 	CALL 0xffa018c0 <_strcpy_>;
ffa04154:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900744(-7338172) */
ffa04158:	0f 30       	R1 = R7;
ffa0415a:	02 e1 58 07 	R2.L = 0x758;		/* (1880)	R2=0xff900758(-7338152) */
ffa0415e:	ff e3 b1 eb 	CALL 0xffa018c0 <_strcpy_>;
ffa04162:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900758(-7338152) */
ffa04166:	0f 30       	R1 = R7;
ffa04168:	02 e1 6c 07 	R2.L = 0x76c;		/* (1900)	R2=0xff90076c(-7338132) */
ffa0416c:	ff e3 aa eb 	CALL 0xffa018c0 <_strcpy_>;
ffa04170:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc8 <_TcpSeqClient> */
ffa04174:	0a e1 e4 0f 	P2.L = 0xfe4;		/* (4068)	P2=0xff900fe4 <_g_httpContentLen> */
ffa04178:	12 91       	R2 = [P2];
ffa0417a:	0f 30       	R1 = R7;
ffa0417c:	ff e3 08 ed 	CALL 0xffa01b8c <_strprintf_int>;
ffa04180:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90076c(-7338132) */
ffa04184:	0f 30       	R1 = R7;
ffa04186:	02 e1 80 07 	R2.L = 0x780;		/* (1920)	R2=0xff900780(-7338112) */
ffa0418a:	ff e3 9b eb 	CALL 0xffa018c0 <_strcpy_>;
ffa0418e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fe4 <_g_httpContentLen> */
ffa04192:	f0 b9       	R0 = [FP -0x4];
ffa04194:	0a e1 e0 0f 	P2.L = 0xfe0;		/* (4064)	P2=0xff900fe0 <_g_httpHeaderLen> */
ffa04198:	10 93       	[P2] = R0;
ffa0419a:	01 e8 00 00 	UNLINK;
ffa0419e:	38 05       	(R7:7) = [SP++];
ffa041a0:	10 00       	RTS;
	...

ffa041a4 <_htmlGeneric>:
ffa041a4:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa041a8:	10 30       	R2 = R0;
ffa041aa:	4f 30       	R1 = FP;
ffa041ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa041ae:	f0 bb       	[FP -0x4] = R0;
ffa041b0:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa041b2:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa041b6:	ff e3 85 eb 	CALL 0xffa018c0 <_strcpy_>;
ffa041ba:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fe0 <_g_httpHeaderLen> */
ffa041be:	f0 b9       	R0 = [FP -0x4];
ffa041c0:	0a e1 e4 0f 	P2.L = 0xfe4;		/* (4068)	P2=0xff900fe4 <_g_httpContentLen> */
ffa041c4:	10 93       	[P2] = R0;
ffa041c6:	ff e3 b7 ff 	CALL 0xffa04134 <_httpHeader>;
ffa041ca:	f0 b9       	R0 = [FP -0x4];
ffa041cc:	01 e8 00 00 	UNLINK;
ffa041d0:	10 00       	RTS;
	...

ffa041d4 <_htmlDefault>:
ffa041d4:	e5 05       	[--SP] = (R7:4, P5:5);
ffa041d6:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa041da:	67 30       	R4 = FP;
ffa041dc:	e4 67       	R4 += -0x4;		/* ( -4) */
ffa041de:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa041e0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900780(-7338112) */
ffa041e4:	f0 bb       	[FP -0x4] = R0;
ffa041e6:	0c 30       	R1 = R4;
ffa041e8:	02 e1 a0 07 	R2.L = 0x7a0;		/* (1952)	R2=0xff9007a0(-7338080) */
ffa041ec:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa041f0:	ff e3 68 eb 	CALL 0xffa018c0 <_strcpy_>;
ffa041f4:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa041f8:	0c 30       	R1 = R4;
ffa041fa:	ff e3 05 ff 	CALL 0xffa04004 <_htmlDiv>;
ffa041fe:	0c 30       	R1 = R4;
ffa04200:	ff e3 f8 fe 	CALL 0xffa03ff0 <_htmlForm>;
ffa04204:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa04208:	0c 30       	R1 = R4;
ffa0420a:	02 e1 f0 07 	R2.L = 0x7f0;		/* (2032)	R2=0xff9007f0(-7338000) */
ffa0420e:	ff e3 59 eb 	CALL 0xffa018c0 <_strcpy_>;
ffa04212:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fe4 <_g_httpContentLen> */
ffa04216:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_g_streamEnabled> */
ffa0421a:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa0421e:	10 99 00 00 
ffa04222:	00 0c       	CC = R0 == 0x0;
ffa04224:	76 1d       	IF CC JUMP 0xffa04510 <_htmlDefault+0x33c> (BP);
ffa04226:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007f0(-7338000) */
ffa0422a:	01 30       	R0 = R1;
ffa0422c:	02 e1 40 08 	R2.L = 0x840;		/* (2112)	R2=0xff900840(-7337920) */
ffa04230:	0c 30       	R1 = R4;
ffa04232:	ff e3 47 eb 	CALL 0xffa018c0 <_strcpy_>;
ffa04236:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900840(-7337920) */
ffa0423a:	0c 30       	R1 = R4;
ffa0423c:	02 e1 58 08 	R2.L = 0x858;		/* (2136)	R2=0xff900858(-7337896) */
ffa04240:	ff e3 40 eb 	CALL 0xffa018c0 <_strcpy_>;
ffa04244:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa04248:	0c 30       	R1 = R4;
ffa0424a:	ff e3 dd fe 	CALL 0xffa04004 <_htmlDiv>;
ffa0424e:	0c 30       	R1 = R4;
ffa04250:	ff e3 d0 fe 	CALL 0xffa03ff0 <_htmlForm>;
ffa04254:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa04258:	0c 30       	R1 = R4;
ffa0425a:	02 e1 6c 08 	R2.L = 0x86c;		/* (2156)	R2=0xff90086c(-7337876) */
ffa0425e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fc4 <_TcpSeqHost> */
ffa04262:	ff e3 2f eb 	CALL 0xffa018c0 <_strcpy_>;
ffa04266:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa04268:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa0426a:	0d e1 f0 0e 	P5.L = 0xef0;		/* (3824)	P5=0xff900ef0 <_NetDataDestIP> */
ffa0426e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90086c(-7337876) */
ffa04272:	0c 30       	R1 = R4;
ffa04274:	02 e1 88 08 	R2.L = 0x888;		/* (2184)	R2=0xff900888(-7337848) */
ffa04278:	ff e3 24 eb 	CALL 0xffa018c0 <_strcpy_>;
ffa0427c:	17 30       	R2 = R7;
ffa0427e:	0c 30       	R1 = R4;
ffa04280:	ff e3 86 ec 	CALL 0xffa01b8c <_strprintf_int>;
ffa04284:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900888(-7337848) */
ffa04288:	0c 30       	R1 = R4;
ffa0428a:	02 e1 a4 08 	R2.L = 0x8a4;		/* (2212)	R2=0xff9008a4(-7337820) */
ffa0428e:	ff e3 19 eb 	CALL 0xffa018c0 <_strcpy_>;
ffa04292:	2a 91       	R2 = [P5];
ffa04294:	72 40       	R2 >>= R6;
ffa04296:	52 43       	R2 = R2.B (Z);
ffa04298:	0c 30       	R1 = R4;
ffa0429a:	ff e3 79 ec 	CALL 0xffa01b8c <_strprintf_int>;
ffa0429e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a4(-7337820) */
ffa042a2:	0c 30       	R1 = R4;
ffa042a4:	02 e1 b8 08 	R2.L = 0x8b8;		/* (2232)	R2=0xff9008b8(-7337800) */
ffa042a8:	ff e3 0c eb 	CALL 0xffa018c0 <_strcpy_>;
ffa042ac:	0f 64       	R7 += 0x1;		/* (  1) */
ffa042ae:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa042b0:	0f 08       	CC = R7 == R1;
ffa042b2:	46 64       	R6 += 0x8;		/* (  8) */
ffa042b4:	dd 17       	IF !CC JUMP 0xffa0426e <_htmlDefault+0x9a> (BP);
ffa042b6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008b8(-7337800) */
ffa042ba:	0c 30       	R1 = R4;
ffa042bc:	02 e1 c0 08 	R2.L = 0x8c0;		/* (2240)	R2=0xff9008c0(-7337792) */
ffa042c0:	ff e3 00 eb 	CALL 0xffa018c0 <_strcpy_>;
ffa042c4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008c0(-7337792) */
ffa042c8:	0c 30       	R1 = R4;
ffa042ca:	02 e1 58 08 	R2.L = 0x858;		/* (2136)	R2=0xff900858(-7337896) */
ffa042ce:	ff e3 f9 ea 	CALL 0xffa018c0 <_strcpy_>;
ffa042d2:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa042d6:	0c 30       	R1 = R4;
ffa042d8:	ff e3 96 fe 	CALL 0xffa04004 <_htmlDiv>;
ffa042dc:	0c 30       	R1 = R4;
ffa042de:	ff e3 89 fe 	CALL 0xffa03ff0 <_htmlForm>;
ffa042e2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa042e6:	0c 30       	R1 = R4;
ffa042e8:	02 e1 e4 08 	R2.L = 0x8e4;		/* (2276)	R2=0xff9008e4(-7337756) */
ffa042ec:	ff e3 ea ea 	CALL 0xffa018c0 <_strcpy_>;
ffa042f0:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c40 */
ffa042f4:	0a e1 08 08 	P2.L = 0x808;		/* (2056)	P2=0xff800808 */
ffa042f8:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa042fc:	10 99 00 00 
ffa04300:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa04302:	10 1d       	IF CC JUMP 0xffa04522 <_htmlDefault+0x34e> (BP);
ffa04304:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008e4(-7337756) */
ffa04308:	01 30       	R0 = R1;
ffa0430a:	02 e1 4c 08 	R2.L = 0x84c;		/* (2124)	R2=0xff90084c(-7337908) */
ffa0430e:	0c 30       	R1 = R4;
ffa04310:	ff e3 d8 ea 	CALL 0xffa018c0 <_strcpy_>;
ffa04314:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90084c(-7337908) */
ffa04318:	0c 30       	R1 = R4;
ffa0431a:	02 e1 58 08 	R2.L = 0x858;		/* (2136)	R2=0xff900858(-7337896) */
ffa0431e:	ff e3 d1 ea 	CALL 0xffa018c0 <_strcpy_>;
ffa04322:	0c 30       	R1 = R4;
ffa04324:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa04328:	ff e3 6e fe 	CALL 0xffa04004 <_htmlDiv>;
ffa0432c:	0c 30       	R1 = R4;
ffa0432e:	ff e3 61 fe 	CALL 0xffa03ff0 <_htmlForm>;
ffa04332:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa04336:	0c 30       	R1 = R4;
ffa04338:	02 e1 24 09 	R2.L = 0x924;		/* (2340)	R2=0xff900924(-7337692) */
ffa0433c:	ff e3 c2 ea 	CALL 0xffa018c0 <_strcpy_>;
ffa04340:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa04344:	01 e1 54 09 	R1.L = 0x954;		/* (2388)	R1=0xff900954(-7337644) */
ffa04348:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900924(-7337692) */
ffa0434c:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa04350:	f1 b0 00 00 
ffa04354:	02 e1 48 09 	R2.L = 0x948;		/* (2376)	R2=0xff900948(-7337656) */
ffa04358:	82 ce 04 c2 	R1 = ROT R4 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa0435c:	37 b1 00 00 
ffa04360:	ff e3 ae fe 	CALL 0xffa040bc <_htmlCursorSelect>;
ffa04364:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900954(-7337644) */
ffa04368:	01 e1 6c 09 	R1.L = 0x96c;		/* (2412)	R1=0xff90096c(-7337620) */
ffa0436c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900948(-7337656) */
ffa04370:	f1 b0       	[SP + 0xc] = R1;
ffa04372:	02 e1 60 09 	R2.L = 0x960;		/* (2400)	R2=0xff900960(-7337632) */
ffa04376:	82 ce 04 c2 	R1 = ROT R4 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa0437a:	37 b1 00 00 
ffa0437e:	ff e3 9f fe 	CALL 0xffa040bc <_htmlCursorSelect>;
ffa04382:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff90096c(-7337620) */
ffa04386:	01 e1 84 09 	R1.L = 0x984;		/* (2436)	R1=0xff900984(-7337596) */
ffa0438a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900960(-7337632) */
ffa0438e:	f1 b0       	[SP + 0xc] = R1;
ffa04390:	02 e1 78 09 	R2.L = 0x978;		/* (2424)	R2=0xff900978(-7337608) */
ffa04394:	82 ce 04 c2 	R1 = ROT R4 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa04398:	37 b1 00 00 
ffa0439c:	ff e3 90 fe 	CALL 0xffa040bc <_htmlCursorSelect>;
ffa043a0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900984(-7337596) */
ffa043a4:	01 e1 98 09 	R1.L = 0x998;		/* (2456)	R1=0xff900998(-7337576) */
ffa043a8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900978(-7337608) */
ffa043ac:	f1 b0       	[SP + 0xc] = R1;
ffa043ae:	02 e1 90 09 	R2.L = 0x990;		/* (2448)	R2=0xff900990(-7337584) */
ffa043b2:	82 ce 04 c2 	R1 = ROT R4 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa043b6:	37 b1 00 00 
ffa043ba:	ff e3 81 fe 	CALL 0xffa040bc <_htmlCursorSelect>;
ffa043be:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900990(-7337584) */
ffa043c2:	0c 30       	R1 = R4;
ffa043c4:	02 e1 a4 09 	R2.L = 0x9a4;		/* (2468)	R2=0xff9009a4(-7337564) */
ffa043c8:	ff e3 7c ea 	CALL 0xffa018c0 <_strcpy_>;
ffa043cc:	0c 30       	R1 = R4;
ffa043ce:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa043d2:	ff e3 19 fe 	CALL 0xffa04004 <_htmlDiv>;
ffa043d6:	0c 30       	R1 = R4;
ffa043d8:	ff e3 0c fe 	CALL 0xffa03ff0 <_htmlForm>;
ffa043dc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa043e0:	0c 30       	R1 = R4;
ffa043e2:	02 e1 e0 09 	R2.L = 0x9e0;		/* (2528)	R2=0xff9009e0(-7337504) */
ffa043e6:	ff e3 6d ea 	CALL 0xffa018c0 <_strcpy_>;
ffa043ea:	0c 30       	R1 = R4;
ffa043ec:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa043f0:	ff e3 0a fe 	CALL 0xffa04004 <_htmlDiv>;
ffa043f4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa043f8:	0c 30       	R1 = R4;
ffa043fa:	02 e1 38 0a 	R2.L = 0xa38;		/* (2616)	R2=0xff900a38(-7337416) */
ffa043fe:	ff e3 61 ea 	CALL 0xffa018c0 <_strcpy_>;
ffa04402:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a38(-7337416) */
ffa04406:	0c 30       	R1 = R4;
ffa04408:	02 e1 60 0a 	R2.L = 0xa60;		/* (2656)	R2=0xff900a60(-7337376) */
ffa0440c:	ff e3 5a ea 	CALL 0xffa018c0 <_strcpy_>;
ffa04410:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a60(-7337376) */
ffa04414:	0c 30       	R1 = R4;
ffa04416:	02 e1 58 08 	R2.L = 0x858;		/* (2136)	R2=0xff900858(-7337896) */
ffa0441a:	ff e3 53 ea 	CALL 0xffa018c0 <_strcpy_>;
ffa0441e:	38 30       	R7 = R0;
ffa04420:	ff e3 c4 de 	CALL 0xffa001a8 <_ustimer>;
ffa04424:	41 e1 e3 38 	R1.H = 0x38e3;		/* (14563)	R1=0x38e30998(954403224) */
ffa04428:	01 e1 39 8e 	R1.L = 0x8e39;		/* (-29127)	R1=0x38e38e39(954437177) */
ffa0442c:	80 c0 01 18 	A1 = R0.L * R1.L (FU);
ffa04430:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa04434:	81 c0 01 86 	A1 += R0.H * R1.L, A0 = R0.H * R1.H (FU);
ffa04438:	81 c0 08 98 	A1 += R1.H * R0.L (FU);
ffa0443c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa04440:	0b c4 00 80 	A0 += A1;
ffa04444:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900858(-7337896) */
ffa04448:	08 c4 00 e0 	A1 = A0;
ffa0444c:	0c 30       	R1 = R4;
ffa0444e:	07 30       	R0 = R7;
ffa04450:	02 e1 a8 0a 	R2.L = 0xaa8;		/* (2728)	R2=0xff900aa8(-7337304) */
ffa04454:	8f c0 00 19 	R5 = A1 (FU);
ffa04458:	ff e3 34 ea 	CALL 0xffa018c0 <_strcpy_>;
ffa0445c:	41 e1 62 10 	R1.H = 0x1062;		/* (4194)	R1=0x10628e39(274894393) */
ffa04460:	0d 4e       	R5 >>= 0x1;
ffa04462:	01 e1 d3 4d 	R1.L = 0x4dd3;		/* (19923)	R1=0x10624dd3(274877907) */
ffa04466:	80 c0 29 18 	A1 = R5.L * R1.L (FU);
ffa0446a:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa0446e:	11 c1 29 86 	A1 += R5.H * R1.L (M), A0 = R5.H * R1.H (IS);
ffa04472:	11 c1 0d 98 	A1 += R1.H * R5.L (M, IS);
ffa04476:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa0447a:	0b c4 00 0c 	R6 = (A0 += A1);
ffa0447e:	41 e1 88 88 	R1.H = 0x8888;		/* (-30584)	R1=0x88884dd3(-2004333101) */
ffa04482:	36 4d       	R6 >>>= 0x6;
ffa04484:	01 e1 89 88 	R1.L = 0x8889;		/* (-30583)	R1=0x88888889(-2004318071) */
ffa04488:	80 c0 31 18 	A1 = R6.L * R1.L (FU);
ffa0448c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa04490:	11 c1 31 86 	A1 += R6.H * R1.L (M), A0 = R6.H * R1.H (IS);
ffa04494:	11 c1 0e 98 	A1 += R1.H * R6.L (M, IS);
ffa04498:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa0449c:	0b c4 00 0e 	R7 = (A0 += A1);
ffa044a0:	f7 51       	R7 = R7 + R6;
ffa044a2:	82 c6 0e 03 	R1 = R6 >>> 0x1f;
ffa044a6:	2f 4d       	R7 >>>= 0x5;
ffa044a8:	cf 53       	R7 = R7 - R1;
ffa044aa:	17 30       	R2 = R7;
ffa044ac:	0c 30       	R1 = R4;
ffa044ae:	ff e3 6f eb 	CALL 0xffa01b8c <_strprintf_int>;
ffa044b2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900aa8(-7337304) */
ffa044b6:	0c 30       	R1 = R4;
ffa044b8:	02 e1 ac 00 	R2.L = 0xac;		/* (172)	R2=0xff9000ac(-7339860) */
ffa044bc:	ff e3 02 ea 	CALL 0xffa018c0 <_strcpy_>;
ffa044c0:	82 c6 27 84 	R2 = R7 << 0x4;
ffa044c4:	ba 52       	R2 = R2 - R7;
ffa044c6:	12 4f       	R2 <<= 0x2;
ffa044c8:	96 52       	R2 = R6 - R2;
ffa044ca:	0c 30       	R1 = R4;
ffa044cc:	ff e3 60 eb 	CALL 0xffa01b8c <_strprintf_int>;
ffa044d0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9000ac(-7339860) */
ffa044d4:	0c 30       	R1 = R4;
ffa044d6:	02 e1 f0 00 	R2.L = 0xf0;		/* (240)	R2=0xff9000f0(-7339792) */
ffa044da:	ff e3 f3 e9 	CALL 0xffa018c0 <_strcpy_>;
ffa044de:	82 c6 2e 82 	R1 = R6 << 0x5;
ffa044e2:	71 52       	R1 = R1 - R6;
ffa044e4:	16 32       	P2 = R6;
ffa044e6:	09 32       	P1 = R1;
ffa044e8:	4a 5e       	P1 = P2 + (P1 << 0x2);
ffa044ea:	49 30       	R1 = P1;
ffa044ec:	19 4f       	R1 <<= 0x3;
ffa044ee:	4d 53       	R5 = R5 - R1;
ffa044f0:	15 30       	R2 = R5;
ffa044f2:	0c 30       	R1 = R4;
ffa044f4:	ff e3 4c eb 	CALL 0xffa01b8c <_strprintf_int>;
ffa044f8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9000f0(-7339792) */
ffa044fc:	0c 30       	R1 = R4;
ffa044fe:	02 e1 b4 0a 	R2.L = 0xab4;		/* (2740)	R2=0xff900ab4(-7337292) */
ffa04502:	ff e3 df e9 	CALL 0xffa018c0 <_strcpy_>;
ffa04506:	f0 b9       	R0 = [FP -0x4];
ffa04508:	01 e8 00 00 	UNLINK;
ffa0450c:	a5 05       	(R7:4, P5:5) = [SP++];
ffa0450e:	10 00       	RTS;
ffa04510:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ab4(-7337292) */
ffa04514:	01 30       	R0 = R1;
ffa04516:	02 e1 4c 08 	R2.L = 0x84c;		/* (2124)	R2=0xff90084c(-7337908) */
ffa0451a:	0c 30       	R1 = R4;
ffa0451c:	ff e3 d2 e9 	CALL 0xffa018c0 <_strcpy_>;
ffa04520:	8b 2e       	JUMP.S 0xffa04236 <_htmlDefault+0x62>;
ffa04522:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90084c(-7337908) */
ffa04526:	01 30       	R0 = R1;
ffa04528:	02 e1 40 08 	R2.L = 0x840;		/* (2112)	R2=0xff900840(-7337920) */
ffa0452c:	0c 30       	R1 = R4;
ffa0452e:	ff e3 c9 e9 	CALL 0xffa018c0 <_strcpy_>;
ffa04532:	f1 2e       	JUMP.S 0xffa04314 <_htmlDefault+0x140>;

ffa04534 <_httpResp>:
ffa04534:	60 05       	[--SP] = (R7:4);
ffa04536:	30 30       	R6 = R0;
ffa04538:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa0453a:	01 09       	CC = R1 <= R0;
ffa0453c:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa04540:	39 30       	R7 = R1;
ffa04542:	21 10       	IF !CC JUMP 0xffa04584 <_httpResp+0x50>;
ffa04544:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa04546:	0f 09       	CC = R7 <= R1;
ffa04548:	34 10       	IF !CC JUMP 0xffa045b0 <_httpResp+0x7c>;
ffa0454a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa0454e:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa04552:	0e 30       	R1 = R6;
ffa04554:	17 30       	R2 = R7;
ffa04556:	ff e3 23 ea 	CALL 0xffa0199c <_substr>;
ffa0455a:	00 0c       	CC = R0 == 0x0;
ffa0455c:	06 10       	IF !CC JUMP 0xffa04568 <_httpResp+0x34>;
ffa0455e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04560:	01 e8 00 00 	UNLINK;
ffa04564:	20 05       	(R7:4) = [SP++];
ffa04566:	10 00       	RTS;
ffa04568:	ff e3 66 fd 	CALL 0xffa04034 <_html404>;
ffa0456c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900808 */
ffa04570:	0a e1 e4 0f 	P2.L = 0xfe4;		/* (4068)	P2=0xff900fe4 <_g_httpContentLen> */
ffa04574:	10 93       	[P2] = R0;
ffa04576:	ff e3 df fd 	CALL 0xffa04134 <_httpHeader>;
ffa0457a:	01 e8 00 00 	UNLINK;
ffa0457e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04580:	20 05       	(R7:4) = [SP++];
ffa04582:	10 00       	RTS;
ffa04584:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa04588:	06 30       	R0 = R6;
ffa0458a:	01 e1 cc 0a 	R1.L = 0xacc;		/* (2764)	R1=0xff900acc(-7337268) */
ffa0458e:	ff e3 d9 e9 	CALL 0xffa01940 <_strcmp>;
ffa04592:	00 0c       	CC = R0 == 0x0;
ffa04594:	d8 1f       	IF CC JUMP 0xffa04544 <_httpResp+0x10> (BP);
ffa04596:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0459a:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa0459e:	0e 30       	R1 = R6;
ffa045a0:	17 30       	R2 = R7;
ffa045a2:	ff e3 fd e9 	CALL 0xffa0199c <_substr>;
ffa045a6:	00 0c       	CC = R0 == 0x0;
ffa045a8:	db 1f       	IF CC JUMP 0xffa0455e <_httpResp+0x2a> (BP);
ffa045aa:	ff e3 15 fe 	CALL 0xffa041d4 <_htmlDefault>;
ffa045ae:	df 2f       	JUMP.S 0xffa0456c <_httpResp+0x38>;
ffa045b0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ac4(-7337276) */
ffa045b4:	00 e1 d8 0a 	R0.L = 0xad8;		/* (2776)	R0=0xff900ad8(-7337256) */
ffa045b8:	0e 30       	R1 = R6;
ffa045ba:	17 30       	R2 = R7;
ffa045bc:	ff e3 f0 e9 	CALL 0xffa0199c <_substr>;
ffa045c0:	00 0c       	CC = R0 == 0x0;
ffa045c2:	3c 1c       	IF CC JUMP 0xffa0463a <_httpResp+0x106> (BP);
ffa045c4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ad8(-7337256) */
ffa045c8:	00 e1 e4 0a 	R0.L = 0xae4;		/* (2788)	R0=0xff900ae4(-7337244) */
ffa045cc:	0e 30       	R1 = R6;
ffa045ce:	17 30       	R2 = R7;
ffa045d0:	ff e3 e6 e9 	CALL 0xffa0199c <_substr>;
ffa045d4:	00 0c       	CC = R0 == 0x0;
ffa045d6:	c4 1f       	IF CC JUMP 0xffa0455e <_httpResp+0x2a> (BP);
ffa045d8:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa045da:	06 50       	R0 = R6 + R0;
ffa045dc:	ff e3 00 eb 	CALL 0xffa01bdc <_atoi>;
ffa045e0:	08 30       	R1 = R0;
ffa045e2:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa045e6:	00 67       	R0 += -0x20;		/* (-32) */
ffa045e8:	10 0a       	CC = R0 <= R2 (IU);
ffa045ea:	24 11       	IF !CC JUMP 0xffa04832 <_httpResp+0x2fe>;
ffa045ec:	82 c6 19 84 	R2 = R1 << 0x3;
ffa045f0:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800fe4 */
ffa045f4:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa045f8:	02 0d       	CC = R2 <= 0x0;
ffa045fa:	13 91       	R3 = [P2];
ffa045fc:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa04600:	14 18       	IF CC JUMP 0xffa04628 <_httpResp+0xf4>;
ffa04602:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa04606:	28 4f       	R0 <<= 0x5;
ffa04608:	03 54       	R0 = R3 & R0;
ffa0460a:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa0460c:	38 52       	R0 = R0 - R7;
ffa0460e:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa04612:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa04614:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa04618:	18 54       	R0 = R0 & R3;
ffa0461a:	10 32       	P2 = R0;
ffa0461c:	09 64       	R1 += 0x1;		/* (  1) */
ffa0461e:	0a 08       	CC = R2 == R1;
ffa04620:	10 90       	R0 = [P2++];
ffa04622:	08 92       	[P1++] = R0;
ffa04624:	42 30       	R0 = P2;
ffa04626:	f9 17       	IF !CC JUMP 0xffa04618 <_httpResp+0xe4> (BP);
ffa04628:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900800 */
ffa0462c:	0a e1 e4 0f 	P2.L = 0xfe4;		/* (4068)	P2=0xff900fe4 <_g_httpContentLen> */
ffa04630:	17 93       	[P2] = R7;
ffa04632:	ff e3 81 fd 	CALL 0xffa04134 <_httpHeader>;
ffa04636:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04638:	94 2f       	JUMP.S 0xffa04560 <_httpResp+0x2c>;
ffa0463a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0463e:	00 e1 18 0b 	R0.L = 0xb18;		/* (2840)	R0=0xff900b18(-7337192) */
ffa04642:	0e 30       	R1 = R6;
ffa04644:	17 30       	R2 = R7;
ffa04646:	ff e3 ab e9 	CALL 0xffa0199c <_substr>;
ffa0464a:	00 0c       	CC = R0 == 0x0;
ffa0464c:	7f 1f       	IF CC JUMP 0xffa0454a <_httpResp+0x16> (BP);
ffa0464e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b18(-7337192) */
ffa04652:	0e 30       	R1 = R6;
ffa04654:	17 30       	R2 = R7;
ffa04656:	00 e1 18 0b 	R0.L = 0xb18;		/* (2840)	R0=0xff900b18(-7337192) */
ffa0465a:	ff e3 a1 e9 	CALL 0xffa0199c <_substr>;
ffa0465e:	86 51       	R6 = R6 + R0;
ffa04660:	47 53       	R5 = R7 - R0;
ffa04662:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b18(-7337192) */
ffa04666:	00 e1 20 0b 	R0.L = 0xb20;		/* (2848)	R0=0xff900b20(-7337184) */
ffa0466a:	0e 30       	R1 = R6;
ffa0466c:	15 30       	R2 = R5;
ffa0466e:	ff e3 97 e9 	CALL 0xffa0199c <_substr>;
ffa04672:	00 0c       	CC = R0 == 0x0;
ffa04674:	10 11       	IF !CC JUMP 0xffa04894 <_httpResp+0x360>;
ffa04676:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa04678:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b20(-7337184) */
ffa0467c:	00 e1 44 0b 	R0.L = 0xb44;		/* (2884)	R0=0xff900b44(-7337148) */
ffa04680:	0e 30       	R1 = R6;
ffa04682:	15 30       	R2 = R5;
ffa04684:	ff e3 8c e9 	CALL 0xffa0199c <_substr>;
ffa04688:	00 0c       	CC = R0 == 0x0;
ffa0468a:	e2 10       	IF !CC JUMP 0xffa0484e <_httpResp+0x31a>;
ffa0468c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b44(-7337148) */
ffa04690:	0e 30       	R1 = R6;
ffa04692:	00 e1 50 0b 	R0.L = 0xb50;		/* (2896)	R0=0xff900b50(-7337136) */
ffa04696:	15 30       	R2 = R5;
ffa04698:	ff e3 82 e9 	CALL 0xffa0199c <_substr>;
ffa0469c:	00 0c       	CC = R0 == 0x0;
ffa0469e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b50(-7337136) */
ffa046a2:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa046a4:	0e 30       	R1 = R6;
ffa046a6:	15 30       	R2 = R5;
ffa046a8:	00 e1 5c 0b 	R0.L = 0xb5c;		/* (2908)	R0=0xff900b5c(-7337124) */
ffa046ac:	27 06       	IF !CC R4 = R7;
ffa046ae:	ff e3 77 e9 	CALL 0xffa0199c <_substr>;
ffa046b2:	00 0c       	CC = R0 == 0x0;
ffa046b4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b5c(-7337124) */
ffa046b8:	0e 30       	R1 = R6;
ffa046ba:	15 30       	R2 = R5;
ffa046bc:	00 e1 68 0b 	R0.L = 0xb68;		/* (2920)	R0=0xff900b68(-7337112) */
ffa046c0:	27 06       	IF !CC R4 = R7;
ffa046c2:	ff e3 6d e9 	CALL 0xffa0199c <_substr>;
ffa046c6:	00 0c       	CC = R0 == 0x0;
ffa046c8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b68(-7337112) */
ffa046cc:	0e 30       	R1 = R6;
ffa046ce:	15 30       	R2 = R5;
ffa046d0:	00 e1 74 0b 	R0.L = 0xb74;		/* (2932)	R0=0xff900b74(-7337100) */
ffa046d4:	27 06       	IF !CC R4 = R7;
ffa046d6:	ff e3 63 e9 	CALL 0xffa0199c <_substr>;
ffa046da:	00 0c       	CC = R0 == 0x0;
ffa046dc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b74(-7337100) */
ffa046e0:	00 e1 80 0b 	R0.L = 0xb80;		/* (2944)	R0=0xff900b80(-7337088) */
ffa046e4:	0e 30       	R1 = R6;
ffa046e6:	15 30       	R2 = R5;
ffa046e8:	27 06       	IF !CC R4 = R7;
ffa046ea:	ff e3 59 e9 	CALL 0xffa0199c <_substr>;
ffa046ee:	00 0c       	CC = R0 == 0x0;
ffa046f0:	15 11       	IF !CC JUMP 0xffa0491a <_httpResp+0x3e6>;
ffa046f2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b80(-7337088) */
ffa046f6:	00 e1 88 0b 	R0.L = 0xb88;		/* (2952)	R0=0xff900b88(-7337080) */
ffa046fa:	0e 30       	R1 = R6;
ffa046fc:	15 30       	R2 = R5;
ffa046fe:	ff e3 4f e9 	CALL 0xffa0199c <_substr>;
ffa04702:	00 0c       	CC = R0 == 0x0;
ffa04704:	f6 10       	IF !CC JUMP 0xffa048f0 <_httpResp+0x3bc>;
ffa04706:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b88(-7337080) */
ffa0470a:	00 e1 90 0b 	R0.L = 0xb90;		/* (2960)	R0=0xff900b90(-7337072) */
ffa0470e:	0e 30       	R1 = R6;
ffa04710:	15 30       	R2 = R5;
ffa04712:	ff e3 45 e9 	CALL 0xffa0199c <_substr>;
ffa04716:	00 0c       	CC = R0 == 0x0;
ffa04718:	13 11       	IF !CC JUMP 0xffa0493e <_httpResp+0x40a>;
ffa0471a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b90(-7337072) */
ffa0471e:	00 e1 98 0b 	R0.L = 0xb98;		/* (2968)	R0=0xff900b98(-7337064) */
ffa04722:	0e 30       	R1 = R6;
ffa04724:	15 30       	R2 = R5;
ffa04726:	ff e3 3b e9 	CALL 0xffa0199c <_substr>;
ffa0472a:	00 0c       	CC = R0 == 0x0;
ffa0472c:	d1 10       	IF !CC JUMP 0xffa048ce <_httpResp+0x39a>;
ffa0472e:	20 43       	R0 = R4.B (X);
ffa04730:	00 0c       	CC = R0 == 0x0;
ffa04732:	3c 17       	IF !CC JUMP 0xffa045aa <_httpResp+0x76> (BP);
ffa04734:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b98(-7337064) */
ffa04738:	00 e1 a0 0b 	R0.L = 0xba0;		/* (2976)	R0=0xff900ba0(-7337056) */
ffa0473c:	0e 30       	R1 = R6;
ffa0473e:	15 30       	R2 = R5;
ffa04740:	ff e3 2e e9 	CALL 0xffa0199c <_substr>;
ffa04744:	00 0c       	CC = R0 == 0x0;
ffa04746:	0c 1b       	IF CC JUMP 0xffa0455e <_httpResp+0x2a>;
ffa04748:	7f 30       	R7 = FP;
ffa0474a:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa0474e:	57 5a       	P1 = FP + P2;
ffa04750:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa04752:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04754:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa04756:	b2 e0 02 20 	LSETUP(0xffa0475a <_httpResp+0x226>, 0xffa0475a <_httpResp+0x226>) LC1 = P2;
ffa0475a:	08 92       	[P1++] = R0;
ffa0475c:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa04760:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa04764:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa04768:	29 4f       	R1 <<= 0x5;
ffa0476a:	10 91       	R0 = [P2];
ffa0476c:	08 54       	R0 = R0 & R1;
ffa0476e:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa04770:	81 4f       	R1 <<= 0x10;
ffa04772:	08 50       	R0 = R0 + R1;
ffa04774:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa04776:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa0477a:	88 54       	R2 = R0 & R1;
ffa0477c:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa04780:	b2 e0 12 10 	LSETUP(0xffa04784 <_httpResp+0x250>, 0xffa047a4 <_httpResp+0x270>) LC1 = P1;
ffa04784:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa04788:	97 5a       	P2 = FP + P2;
ffa0478a:	02 32       	P0 = R2;
ffa0478c:	11 91       	R1 = [P2];
ffa0478e:	12 64       	R2 += 0x2;		/* (  2) */
ffa04790:	00 94       	R0 = W[P0++] (Z);
ffa04792:	41 50       	R1 = R1 + R0;
ffa04794:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa04796:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa0479a:	11 92       	[P2++] = R1;
ffa0479c:	82 54       	R2 = R2 & R0;
ffa0479e:	42 30       	R0 = P2;
ffa047a0:	38 08       	CC = R0 == R7;
ffa047a2:	f4 17       	IF !CC JUMP 0xffa0478a <_httpResp+0x256> (BP);
ffa047a4:	00 00       	NOP;
ffa047a6:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa047aa:	97 5a       	P2 = FP + P2;
ffa047ac:	00 00       	NOP;
ffa047ae:	10 91       	R0 = [P2];
ffa047b0:	58 4d       	R0 >>>= 0xb;
ffa047b2:	10 92       	[P2++] = R0;
ffa047b4:	4a 30       	R1 = P2;
ffa047b6:	39 08       	CC = R1 == R7;
ffa047b8:	fa 17       	IF !CC JUMP 0xffa047ac <_httpResp+0x278> (BP);
ffa047ba:	ff e3 0d fd 	CALL 0xffa041d4 <_htmlDefault>;
ffa047be:	68 67       	R0 += -0x13;		/* (-19) */
ffa047c0:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa047c4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80(-7336064) */
ffa047c8:	f0 bb       	[FP -0x4] = R0;
ffa047ca:	02 e1 b0 0b 	R2.L = 0xbb0;		/* (2992)	R2=0xff900bb0(-7337040) */
ffa047ce:	08 50       	R0 = R0 + R1;
ffa047d0:	0f 30       	R1 = R7;
ffa047d2:	ff e3 77 e8 	CALL 0xffa018c0 <_strcpy_>;
ffa047d6:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa047da:	f5 b8 00 00 
ffa047de:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bb0(-7337040) */
ffa047e2:	0f 30       	R1 = R7;
ffa047e4:	02 e1 bc 0b 	R2.L = 0xbbc;		/* (3004)	R2=0xff900bbc(-7337028) */
ffa047e8:	ff e3 6c e8 	CALL 0xffa018c0 <_strcpy_>;
ffa047ec:	16 30       	R2 = R6;
ffa047ee:	0f 30       	R1 = R7;
ffa047f0:	ff e3 ce e9 	CALL 0xffa01b8c <_strprintf_int>;
ffa047f4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bbc(-7337028) */
ffa047f8:	0f 30       	R1 = R7;
ffa047fa:	02 e1 d0 0b 	R2.L = 0xbd0;		/* (3024)	R2=0xff900bd0(-7337008) */
ffa047fe:	ff e3 61 e8 	CALL 0xffa018c0 <_strcpy_>;
ffa04802:	0f 30       	R1 = R7;
ffa04804:	15 30       	R2 = R5;
ffa04806:	ff e3 c3 e9 	CALL 0xffa01b8c <_strprintf_int>;
ffa0480a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bd0(-7337008) */
ffa0480e:	02 e1 e0 0b 	R2.L = 0xbe0;		/* (3040)	R2=0xff900be0(-7336992) */
ffa04812:	0f 30       	R1 = R7;
ffa04814:	ff e3 56 e8 	CALL 0xffa018c0 <_strcpy_>;
ffa04818:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0481a:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa0481c:	16 08       	CC = R6 == R2;
ffa0481e:	e0 17       	IF !CC JUMP 0xffa047de <_httpResp+0x2aa> (BP);
ffa04820:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa04824:	0f 30       	R1 = R7;
ffa04826:	02 e1 ec 0b 	R2.L = 0xbec;		/* (3052)	R2=0xff900bec(-7336980) */
ffa0482a:	ff e3 4b e8 	CALL 0xffa018c0 <_strcpy_>;
ffa0482e:	f0 b9       	R0 = [FP -0x4];
ffa04830:	9e 2e       	JUMP.S 0xffa0456c <_httpResp+0x38>;
ffa04832:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04834:	4f 30       	R1 = FP;
ffa04836:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bec(-7336980) */
ffa0483a:	f0 bb       	[FP -0x4] = R0;
ffa0483c:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa0483e:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa04842:	02 e1 ec 0a 	R2.L = 0xaec;		/* (2796)	R2=0xff900aec(-7337236) */
ffa04846:	ff e3 3d e8 	CALL 0xffa018c0 <_strcpy_>;
ffa0484a:	f0 b9       	R0 = [FP -0x4];
ffa0484c:	90 2e       	JUMP.S 0xffa0456c <_httpResp+0x38>;
ffa0484e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa04852:	00 e1 30 0b 	R0.L = 0xb30;		/* (2864)	R0=0xff900b30(-7337168) */
ffa04856:	0e 30       	R1 = R6;
ffa04858:	15 30       	R2 = R5;
ffa0485a:	ff e3 a1 e8 	CALL 0xffa0199c <_substr>;
ffa0485e:	00 0c       	CC = R0 == 0x0;
ffa04860:	08 1c       	IF CC JUMP 0xffa04870 <_httpResp+0x33c> (BP);
ffa04862:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa04866:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04868:	0a e1 08 08 	P2.L = 0x808;		/* (2056)	P2=0xff800808 */
ffa0486c:	10 9b       	B[P2] = R0;
ffa0486e:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04870:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa04874:	00 e1 38 0b 	R0.L = 0xb38;		/* (2872)	R0=0xff900b38(-7337160) */
ffa04878:	0e 30       	R1 = R6;
ffa0487a:	15 30       	R2 = R5;
ffa0487c:	ff e3 90 e8 	CALL 0xffa0199c <_substr>;
ffa04880:	00 0c       	CC = R0 == 0x0;
ffa04882:	05 1f       	IF CC JUMP 0xffa0468c <_httpResp+0x158> (BP);
ffa04884:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800808 */
ffa04888:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0488a:	0a e1 08 08 	P2.L = 0x808;		/* (2056)	P2=0xff800808 */
ffa0488e:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04890:	10 9b       	B[P2] = R0;
ffa04892:	fd 2e       	JUMP.S 0xffa0468c <_httpResp+0x158>;
ffa04894:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa04898:	00 e1 30 0b 	R0.L = 0xb30;		/* (2864)	R0=0xff900b30(-7337168) */
ffa0489c:	0e 30       	R1 = R6;
ffa0489e:	15 30       	R2 = R5;
ffa048a0:	ff e3 7e e8 	CALL 0xffa0199c <_substr>;
ffa048a4:	00 0c       	CC = R0 == 0x0;
ffa048a6:	61 14       	IF !CC JUMP 0xffa04968 <_httpResp+0x434> (BP);
ffa048a8:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa048aa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b30(-7337168) */
ffa048ae:	00 e1 38 0b 	R0.L = 0xb38;		/* (2872)	R0=0xff900b38(-7337160) */
ffa048b2:	0e 30       	R1 = R6;
ffa048b4:	15 30       	R2 = R5;
ffa048b6:	ff e3 73 e8 	CALL 0xffa0199c <_substr>;
ffa048ba:	00 0c       	CC = R0 == 0x0;
ffa048bc:	de 1e       	IF CC JUMP 0xffa04678 <_httpResp+0x144> (BP);
ffa048be:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900808 */
ffa048c2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa048c4:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_g_streamEnabled> */
ffa048c8:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa048ca:	10 9b       	B[P2] = R0;
ffa048cc:	d6 2e       	JUMP.S 0xffa04678 <_httpResp+0x144>;
ffa048ce:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa048d0:	06 50       	R0 = R6 + R0;
ffa048d2:	ff e3 85 e9 	CALL 0xffa01bdc <_atoi>;
ffa048d6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_g_streamEnabled> */
ffa048da:	0a e1 f0 0e 	P2.L = 0xef0;		/* (3824)	P2=0xff900ef0 <_NetDataDestIP> */
ffa048de:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa048e0:	11 91       	R1 = [P2];
ffa048e2:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa048e6:	51 54       	R1 = R1 & R2;
ffa048e8:	c0 4f       	R0 <<= 0x18;
ffa048ea:	41 50       	R1 = R1 + R0;
ffa048ec:	11 93       	[P2] = R1;
ffa048ee:	5e 2e       	JUMP.S 0xffa045aa <_httpResp+0x76>;
ffa048f0:	86 51       	R6 = R6 + R0;
ffa048f2:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa048f4:	45 53       	R5 = R5 - R0;
ffa048f6:	06 30       	R0 = R6;
ffa048f8:	ff e3 72 e9 	CALL 0xffa01bdc <_atoi>;
ffa048fc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef0 <_NetDataDestIP> */
ffa04900:	0a e1 f0 0e 	P2.L = 0xef0;		/* (3824)	P2=0xff900ef0 <_NetDataDestIP> */
ffa04904:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04906:	11 91       	R1 = [P2];
ffa04908:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa0490c:	40 43       	R0 = R0.B (Z);
ffa0490e:	51 54       	R1 = R1 & R2;
ffa04910:	40 4f       	R0 <<= 0x8;
ffa04912:	41 50       	R1 = R1 + R0;
ffa04914:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04916:	11 93       	[P2] = R1;
ffa04918:	f7 2e       	JUMP.S 0xffa04706 <_httpResp+0x1d2>;
ffa0491a:	86 51       	R6 = R6 + R0;
ffa0491c:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0491e:	45 53       	R5 = R5 - R0;
ffa04920:	06 30       	R0 = R6;
ffa04922:	ff e3 5d e9 	CALL 0xffa01bdc <_atoi>;
ffa04926:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef0 <_NetDataDestIP> */
ffa0492a:	0a e1 f0 0e 	P2.L = 0xef0;		/* (3824)	P2=0xff900ef0 <_NetDataDestIP> */
ffa0492e:	11 91       	R1 = [P2];
ffa04930:	41 4d       	R1 >>>= 0x8;
ffa04932:	41 4f       	R1 <<= 0x8;
ffa04934:	40 43       	R0 = R0.B (Z);
ffa04936:	08 50       	R0 = R0 + R1;
ffa04938:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0493a:	10 93       	[P2] = R0;
ffa0493c:	db 2e       	JUMP.S 0xffa046f2 <_httpResp+0x1be>;
ffa0493e:	86 51       	R6 = R6 + R0;
ffa04940:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04942:	45 53       	R5 = R5 - R0;
ffa04944:	06 30       	R0 = R6;
ffa04946:	ff e3 4b e9 	CALL 0xffa01bdc <_atoi>;
ffa0494a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef0 <_NetDataDestIP> */
ffa0494e:	0a e1 f0 0e 	P2.L = 0xef0;		/* (3824)	P2=0xff900ef0 <_NetDataDestIP> */
ffa04952:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04954:	11 91       	R1 = [P2];
ffa04956:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa0495a:	40 43       	R0 = R0.B (Z);
ffa0495c:	51 54       	R1 = R1 & R2;
ffa0495e:	80 4f       	R0 <<= 0x10;
ffa04960:	41 50       	R1 = R1 + R0;
ffa04962:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04964:	11 93       	[P2] = R1;
ffa04966:	da 2e       	JUMP.S 0xffa0471a <_httpResp+0x1e6>;
ffa04968:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef0 <_NetDataDestIP> */
ffa0496c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0496e:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_g_streamEnabled> */
ffa04972:	10 9b       	B[P2] = R0;
ffa04974:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c40 */
ffa04978:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa0497c:	10 91       	R0 = [P2];
ffa0497e:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04980:	22 6c       	P2 += 0x4;		/* (  4) */
ffa04982:	10 93       	[P2] = R0;
ffa04984:	93 2f       	JUMP.S 0xffa048aa <_httpResp+0x376>;
	...

ffa04988 <_httpCollate>:
ffa04988:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0498a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ef0 <_NetDataDestIP> */
ffa0498e:	0d e1 e8 0f 	P5.L = 0xfe8;		/* (4072)	P5=0xff900fe8 <_g_httpRxed> */
ffa04992:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa04994:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R1 = [P5] || NOP;
ffa04998:	29 91 00 00 
ffa0499c:	82 4f       	R2 <<= 0x10;
ffa0499e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa049a2:	51 50       	R1 = R1 + R2;
ffa049a4:	17 30       	R2 = R7;
ffa049a6:	ff e3 5d e7 	CALL 0xffa01860 <_memcpy_>;
ffa049aa:	28 91       	R0 = [P5];
ffa049ac:	38 50       	R0 = R0 + R7;
ffa049ae:	01 e8 00 00 	UNLINK;
ffa049b2:	28 93       	[P5] = R0;
ffa049b4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa049b6:	bd 05       	(R7:7, P5:5) = [SP++];
ffa049b8:	10 00       	RTS;
	...

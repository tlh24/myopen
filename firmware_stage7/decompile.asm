
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
ffa00108:	08 e1 40 07 	P0.L = 0x740;		/* (1856)	P0=0xffa00740 <_write_enable_flash> */
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
ffa00184:	c6 25       	JUMP.S 0xffa00d10 <_main>;
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
ffa00406:	00 e3 6d 07 	CALL 0xffa012e0 <_printf_int>;
ffa0040a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0040e:	00 e1 68 05 	R0.L = 0x568;		/* (1384)	R0=0xff900568(-7338648) */
ffa00412:	00 e3 4b 06 	CALL 0xffa010a8 <_uart_str>;
ffa00416:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900568(-7338648) */
ffa0041a:	0d 30       	R1 = R5;
ffa0041c:	00 e1 14 00 	R0.L = 0x14;		/* ( 20)	R0=0xff900014(-7340012) */
ffa00420:	00 e3 ae 06 	CALL 0xffa0117c <_printf_hex_byte>;
ffa00424:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900014(-7340012) */
ffa00428:	00 e1 68 05 	R0.L = 0x568;		/* (1384)	R0=0xff900568(-7338648) */
ffa0042c:	00 e3 3e 06 	CALL 0xffa010a8 <_uart_str>;
ffa00430:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900568(-7338648) */
ffa00434:	00 e1 20 00 	R0.L = 0x20;		/* ( 32)	R0=0xff900020(-7340000) */
ffa00438:	0f 30       	R1 = R7;
ffa0043a:	00 e3 a1 06 	CALL 0xffa0117c <_printf_hex_byte>;
ffa0043e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa00442:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa00446:	2f 30       	R5 = R7;
ffa00448:	00 e3 30 06 	CALL 0xffa010a8 <_uart_str>;
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
ffa004c8:	00 e3 0c 07 	CALL 0xffa012e0 <_printf_int>;
ffa004cc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002c(-7339988) */
ffa004d0:	ff 42       	R7 = R7.L (Z);
ffa004d2:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa004d6:	00 e3 e9 05 	CALL 0xffa010a8 <_uart_str>;
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
ffa0057c:	0c e1 28 0c 	P4.L = 0xc28;		/* (3112)	P4=0xff900c28 <_g_sampCh> */
ffa00580:	10 97       	W[P2] = R0;
ffa00582:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900518 */
ffa00586:	67 99       	R7 = B[P4] (X);
ffa00588:	0d e1 30 0c 	P5.L = 0xc30;		/* (3120)	P5=0xff900c30 <_g_sampR> */
ffa0058c:	7e 43       	R6 = R7.B (Z);
ffa0058e:	2d 91       	R5 = [P5];
ffa00590:	23 e1 ff 01 	R3 = 0x1ff (X);		/*		R3=0x1ff(511) */
ffa00594:	6e 50       	R1 = R6 + R5;
ffa00596:	19 54       	R0 = R1 & R3;
ffa00598:	00 32       	P0 = R0;
ffa0059a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900500 */
ffa0059e:	09 e1 5c 0c 	P1.L = 0xc5c;		/* (3164)	P1=0xff900c5c <_g_samples> */
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
ffa005ba:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c5c <_g_samples> */
ffa005be:	09 e1 38 0c 	P1.L = 0xc38;		/* (3128)	P1=0xff900c38 <_g_sampOff> */
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
ffa0061e:	0a e1 14 0c 	P2.L = 0xc14;		/* (3092)	P2=0xff900c14 <_g_sampW> */
ffa00622:	10 91       	R0 = [P2];
ffa00624:	05 0a       	CC = R5 <= R0 (IU);
ffa00626:	38 1c       	IF CC JUMP 0xffa00696 <_audio_out+0x142> (BP);
ffa00628:	28 93       	[P5] = R0;
ffa0062a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c14 <_g_sampW> */
ffa0062e:	0a e1 08 0c 	P2.L = 0xc08;		/* (3080)	P2=0xff900c08 <_g_sampMode> */
ffa00632:	10 99       	R0 = B[P2] (Z);
ffa00634:	08 0c       	CC = R0 == 0x1;
ffa00636:	57 18       	IF CC JUMP 0xffa006e4 <_audio_out+0x190>;
ffa00638:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa0063a:	08 08       	CC = R0 == R1;
ffa0063c:	51 18       	IF CC JUMP 0xffa006de <_audio_out+0x18a>;
ffa0063e:	10 99       	R0 = B[P2] (Z);
ffa00640:	10 0c       	CC = R0 == 0x2;
ffa00642:	53 18       	IF CC JUMP 0xffa006e8 <_audio_out+0x194>;
ffa00644:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c08 <_g_sampMode> */
ffa00648:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0064a:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_g_sampInc> */
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
ffa006a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c18 <_g_sampInc> */
ffa006ac:	0a e1 08 0c 	P2.L = 0xc08;		/* (3080)	P2=0xff900c08 <_g_sampMode> */
ffa006b0:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa006b2:	10 99       	R0 = B[P2] (Z);
ffa006b4:	08 08       	CC = R0 == R1;
ffa006b6:	c5 17       	IF !CC JUMP 0xffa00640 <_audio_out+0xec> (BP);
ffa006b8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c08 <_g_sampMode> */
ffa006bc:	40 e1 13 10 	R0.H = 0x1013;		/* (4115)	R0=0x1013ffff(269746175) */
ffa006c0:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_g_sampInc> */
ffa006c4:	00 e1 cd ab 	R0.L = 0xabcd;		/* (-21555)	R0=0x1013abcd(269724621) */
ffa006c8:	10 93       	[P2] = R0;
ffa006ca:	c4 2f       	JUMP.S 0xffa00652 <_audio_out+0xfe>;
ffa006cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c18 <_g_sampInc> */
ffa006d0:	0a e1 08 0c 	P2.L = 0xc08;		/* (3080)	P2=0xff900c08 <_g_sampMode> */
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
ffa006e8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c08 <_g_sampMode> */
ffa006ec:	40 e1 f1 0f 	R0.H = 0xff1;		/* (4081)	R0=0xff10002(267452418) */
ffa006f0:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_g_sampInc> */
ffa006f4:	00 e1 21 43 	R0.L = 0x4321;		/* (17185)	R0=0xff14321(267469601) */
ffa006f8:	10 93       	[P2] = R0;
ffa006fa:	ac 2f       	JUMP.S 0xffa00652 <_audio_out+0xfe>;
ffa006fc:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa006fe:	10 9b       	B[P2] = R0;
ffa00700:	dc 2f       	JUMP.S 0xffa006b8 <_audio_out+0x164>;
	...

ffa00704 <_wait_flash>:
ffa00704:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00706:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00c30(-4191184) */
ffa0070a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0070e:	0d e1 04 07 	P5.L = 0x704;		/* (1796)	P5=0xffc00704(-4192508) */
ffa00712:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa00714:	2f 97       	W[P5] = R7;
ffa00716:	24 00       	SSYNC;
ffa00718:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0071a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0071c:	ff e3 ea fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00720:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00722:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00724:	ff e3 e6 fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00728:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c18(-4191208) */
ffa0072c:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00730:	17 97       	W[P2] = R7;
ffa00732:	24 00       	SSYNC;
ffa00734:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa00736:	ef 17       	IF !CC JUMP 0xffa00714 <_wait_flash+0x10> (BP);
ffa00738:	01 e8 00 00 	UNLINK;
ffa0073c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0073e:	10 00       	RTS;

ffa00740 <_write_enable_flash>:
ffa00740:	fc 05       	[--SP] = (R7:7, P5:4);
ffa00742:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00c28(-4191192) */
ffa00746:	0c e1 04 15 	P4.L = 0x1504;		/* (5380)	P4=0xffc01504(-4188924) */
ffa0074a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0074c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00750:	27 97       	W[P4] = R7;
ffa00752:	24 00       	SSYNC;
ffa00754:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00704(-4192508) */
ffa00758:	21 e1 50 00 	R1 = 0x50 (X);		/*		R1=0x50( 80) */
ffa0075c:	0d e1 08 15 	P5.L = 0x1508;		/* (5384)	P5=0xffc01508(-4188920) */
ffa00760:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00762:	ff e3 c7 fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00766:	2f 97       	W[P5] = R7;
ffa00768:	24 00       	SSYNC;
ffa0076a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0076e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00772:	17 97       	W[P2] = R7;
ffa00774:	24 00       	SSYNC;
ffa00776:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa00778:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0077a:	ff e3 bb fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa0077e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00780:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00782:	ff e3 b7 fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00786:	2f 97       	W[P5] = R7;
ffa00788:	24 00       	SSYNC;
ffa0078a:	27 97       	W[P4] = R7;
ffa0078c:	24 00       	SSYNC;
ffa0078e:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa00790:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00792:	ff e3 af fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00796:	2f 97       	W[P5] = R7;
ffa00798:	24 00       	SSYNC;
ffa0079a:	01 e8 00 00 	UNLINK;
ffa0079e:	bc 05       	(R7:7, P5:4) = [SP++];
ffa007a0:	10 00       	RTS;
	...

ffa007a4 <_read_flash_u32>:
ffa007a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa007a8:	70 05       	[--SP] = (R7:6);
ffa007aa:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa007ae:	16 60       	R6 = 0x2 (X);		/*		R6=0x2(  2) */
ffa007b0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa007b4:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R6 || NOP;
ffa007b8:	16 97 00 00 
ffa007bc:	24 00       	SSYNC;
ffa007be:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa007c0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007c2:	ff e3 97 fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa007c6:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa007ca:	49 43       	R1 = R1.B (Z);
ffa007cc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007ce:	ff e3 91 fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa007d2:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa007d6:	49 43       	R1 = R1.B (Z);
ffa007d8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007da:	ff e3 8b fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa007de:	79 43       	R1 = R7.B (Z);
ffa007e0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007e2:	ff e3 87 fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa007e6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa007e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007ea:	ff e3 83 fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa007ee:	47 43       	R7 = R0.B (Z);
ffa007f0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa007f2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007f4:	ff e3 7e fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa007f8:	40 43       	R0 = R0.B (Z);
ffa007fa:	47 4f       	R7 <<= 0x8;
ffa007fc:	c7 51       	R7 = R7 + R0;
ffa007fe:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00800:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00802:	ff e3 77 fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00806:	40 43       	R0 = R0.B (Z);
ffa00808:	47 4f       	R7 <<= 0x8;
ffa0080a:	c7 51       	R7 = R7 + R0;
ffa0080c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0080e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00810:	ff e3 70 fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00814:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00818:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0081c:	47 4f       	R7 <<= 0x8;
ffa0081e:	16 97       	W[P2] = R6;
ffa00820:	24 00       	SSYNC;
ffa00822:	40 43       	R0 = R0.B (Z);
ffa00824:	c7 51       	R7 = R7 + R0;
ffa00826:	01 e8 00 00 	UNLINK;
ffa0082a:	07 30       	R0 = R7;
ffa0082c:	30 05       	(R7:6) = [SP++];
ffa0082e:	10 00       	RTS;

ffa00830 <_read_flash_u8>:
ffa00830:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00834:	70 05       	[--SP] = (R7:6);
ffa00836:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0083a:	16 60       	R6 = 0x2 (X);		/*		R6=0x2(  2) */
ffa0083c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00840:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R6 || NOP;
ffa00844:	16 97 00 00 
ffa00848:	24 00       	SSYNC;
ffa0084a:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0084c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0084e:	ff e3 51 fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00852:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa00856:	49 43       	R1 = R1.B (Z);
ffa00858:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0085a:	ff e3 4b fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa0085e:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa00862:	49 43       	R1 = R1.B (Z);
ffa00864:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00866:	ff e3 45 fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa0086a:	79 43       	R1 = R7.B (Z);
ffa0086c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0086e:	ff e3 41 fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00872:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00874:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00876:	ff e3 3d fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa0087a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0087e:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00882:	16 97       	W[P2] = R6;
ffa00884:	24 00       	SSYNC;
ffa00886:	01 e8 00 00 	UNLINK;
ffa0088a:	40 43       	R0 = R0.B (Z);
ffa0088c:	30 05       	(R7:6) = [SP++];
ffa0088e:	10 00       	RTS;

ffa00890 <_write_flash>:
ffa00890:	e3 05       	[--SP] = (R7:4, P5:3);
ffa00892:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa00896:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01508(-4188920) */
ffa0089a:	f1 bb       	[FP -0x4] = R1;
ffa0089c:	0d e1 04 15 	P5.L = 0x1504;		/* (5380)	P5=0xffc01504(-4188924) */
ffa008a0:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa008a2:	20 30       	R4 = R0;
ffa008a4:	ff e3 4e ff 	CALL 0xffa00740 <_write_enable_flash>;
ffa008a8:	2f 97       	W[P5] = R7;
ffa008aa:	24 00       	SSYNC;
ffa008ac:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa008ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008b0:	ff e3 20 fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa008b4:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa008b6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008b8:	ff e3 1c fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa008bc:	21 e1 f0 00 	R1 = 0xf0 (X);		/*		R1=0xf0(240) */
ffa008c0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008c2:	ff e3 17 fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa008c6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa008c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008ca:	ff e3 13 fd 	CALL 0xffa002f0 <_spi_write_byte>;
ffa008ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa008d2:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa008d6:	17 97       	W[P2] = R7;
ffa008d8:	24 00       	SSYNC;
ffa008da:	ff e3 15 ff 	CALL 0xffa00704 <_wait_flash>;
ffa008de:	04 0c       	CC = R4 == 0x0;
ffa008e0:	6c 18       	IF CC JUMP 0xffa009b8 <_write_flash+0x128>;
ffa008e2:	fc b9       	P4 = [FP -0x4];
ffa008e4:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa008e6:	15 60       	R5 = 0x2 (X);		/*		R5=0x2(  2) */
ffa008e8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa008ec:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa008f0:	15 97       	W[P2] = R5;
ffa008f2:	24 00       	SSYNC;
ffa008f4:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01504(-4188924) */
ffa008f8:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa008fa:	0d e1 08 15 	P5.L = 0x1508;		/* (5384)	P5=0xffc01508(-4188920) */
ffa008fe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00900:	ff e3 f8 fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00904:	2d 97       	W[P5] = R5;
ffa00906:	24 00       	SSYNC;
ffa00908:	4b e1 07 00 	P3.H = 0x7;		/* (  7)	P3=0x70000 */
ffa0090c:	0b e1 00 f0 	P3.L = 0xf000;		/* (-4096)	P3=0x7f000 */
ffa00910:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00914:	43 30       	R0 = P3;
ffa00916:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0091a:	04 cc 30 0e 	R7 = R6 + R0 (NS) || W[P2] = R5 || NOP;
ffa0091e:	15 97 00 00 
ffa00922:	24 00       	SSYNC;
ffa00924:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
ffa00926:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00928:	ff e3 e4 fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa0092c:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa00930:	47 4e       	R7 >>= 0x8;
ffa00932:	49 43       	R1 = R1.B (Z);
ffa00934:	7f 43       	R7 = R7.B (Z);
ffa00936:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00938:	ff e3 dc fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa0093c:	0f 30       	R1 = R7;
ffa0093e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00940:	ff e3 d8 fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00944:	71 43       	R1 = R6.B (Z);
ffa00946:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00948:	ff e3 d4 fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa0094c:	21 98       	R1 = B[P4++] (Z);
ffa0094e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00950:	ff e3 d0 fc 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00954:	2d 97       	W[P5] = R5;
ffa00956:	24 00       	SSYNC;
ffa00958:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0095a:	ff e3 d5 fe 	CALL 0xffa00704 <_wait_flash>;
ffa0095e:	26 08       	CC = R6 == R4;
ffa00960:	c4 17       	IF !CC JUMP 0xffa008e8 <_write_flash+0x58> (BP);
ffa00962:	fd b9       	P5 = [FP -0x4];
ffa00964:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
ffa00966:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00968:	73 30       	R6 = P3;
ffa0096a:	65 32       	P4 = P5;
ffa0096c:	02 20       	JUMP.S 0xffa00970 <_write_flash+0xe0>;
ffa0096e:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa00970:	37 50       	R0 = R7 + R6;
ffa00972:	ff e3 5f ff 	CALL 0xffa00830 <_read_flash_u8>;
ffa00976:	41 43       	R1 = R0.B (Z);
ffa00978:	28 99       	R0 = B[P5] (Z);
ffa0097a:	01 08       	CC = R1 == R0;
ffa0097c:	0f 18       	IF CC JUMP 0xffa0099a <_write_flash+0x10a>;
ffa0097e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00982:	00 e1 44 00 	R0.L = 0x44;		/* ( 68)	R0=0xff900044(-7339964) */
ffa00986:	00 e3 fb 03 	CALL 0xffa0117c <_printf_hex_byte>;
ffa0098a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900044(-7339964) */
ffa0098e:	21 99       	R1 = B[P4] (Z);
ffa00990:	00 e1 54 00 	R0.L = 0x54;		/* ( 84)	R0=0xff900054(-7339948) */
ffa00994:	00 e3 f4 03 	CALL 0xffa0117c <_printf_hex_byte>;
ffa00998:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa0099a:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0099c:	27 08       	CC = R7 == R4;
ffa0099e:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa009a0:	e7 17       	IF !CC JUMP 0xffa0096e <_write_flash+0xde> (BP);
ffa009a2:	05 48       	CC = !BITTST (R5, 0x0);		/* bit  0 */
ffa009a4:	0a 10       	IF !CC JUMP 0xffa009b8 <_write_flash+0x128>;
ffa009a6:	01 e8 00 00 	UNLINK;
ffa009aa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900054(-7339948) */
ffa009ae:	00 e1 60 00 	R0.L = 0x60;		/* ( 96)	R0=0xff900060(-7339936) */
ffa009b2:	a3 05       	(R7:4, P5:3) = [SP++];
ffa009b4:	00 e2 d4 03 	JUMP.L 0xffa0115c <_printf_str>;
ffa009b8:	01 e8 00 00 	UNLINK;
ffa009bc:	a3 05       	(R7:4, P5:3) = [SP++];
ffa009be:	10 00       	RTS;

ffa009c0 <_eth_listen>:
ffa009c0:	00 0c       	CC = R0 == 0x0;
ffa009c2:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa009c6:	04 18       	IF CC JUMP 0xffa009ce <_eth_listen+0xe>;
ffa009c8:	01 e8 00 00 	UNLINK;
ffa009cc:	10 00       	RTS;
ffa009ce:	47 30       	R0 = FP;
ffa009d0:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa009d2:	00 e3 4d 12 	CALL 0xffa02e6c <_bfin_EMAC_recv>;
ffa009d6:	00 0d       	CC = R0 <= 0x0;
ffa009d8:	f8 1b       	IF CC JUMP 0xffa009c8 <_eth_listen+0x8>;
ffa009da:	f9 b9       	P1 = [FP -0x4];
ffa009dc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901504 */
ffa009e0:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetDataDestIP> */
ffa009e4:	11 91       	R1 = [P2];
ffa009e6:	c8 a1       	R0 = [P1 + 0x1c];
ffa009e8:	08 08       	CC = R0 == R1;
ffa009ea:	ef 17       	IF !CC JUMP 0xffa009c8 <_eth_listen+0x8> (BP);
ffa009ec:	48 e4 13 00 	R0 = W[P1 + 0x26] (Z);
ffa009f0:	00 e3 16 08 	CALL 0xffa01a1c <_htons>;
ffa009f4:	c0 42       	R0 = R0.L (Z);
ffa009f6:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa009fa:	08 08       	CC = R0 == R1;
ffa009fc:	e6 17       	IF !CC JUMP 0xffa009c8 <_eth_listen+0x8> (BP);
ffa009fe:	f0 b9       	R0 = [FP -0x4];
ffa00a00:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa00a04:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa00a06:	01 e1 3c 0c 	R1.L = 0xc3c;		/* (3132)	R1=0xff900c3c <_g_outpkt>(-7336900) */
ffa00a0a:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa00a0c:	00 e3 50 05 	CALL 0xffa014ac <_memcpy_>;
ffa00a10:	dc 2f       	JUMP.S 0xffa009c8 <_eth_listen+0x8>;
	...

ffa00a14 <_getRadioPacket>:
ffa00a14:	e3 05       	[--SP] = (R7:4, P5:3);
ffa00a16:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa00a1a:	78 e6 fa ff 	W[FP + -0xc] = R0;
ffa00a1e:	79 e6 f8 ff 	W[FP + -0x10] = R1;
ffa00a22:	3a 30       	R7 = R2;
ffa00a24:	c0 42       	R0 = R0.L (Z);
ffa00a26:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00a28:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00a2c:	e0 bb       	[FP -0x8] = R0;
ffa00a2e:	ff e3 df fb 	CALL 0xffa001ec <_spi_write_register>;
ffa00a32:	24 00       	SSYNC;
ffa00a34:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ee4(-4190492) */
ffa00a38:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00a3c:	79 e5 fa ff 	R1 = W[FP + -0xc] (X);
ffa00a40:	11 97       	W[P2] = R1;
ffa00a42:	24 00       	SSYNC;
ffa00a44:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00a48:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa00a4c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa00a50:	10 97       	W[P2] = R0;
ffa00a52:	7e 43       	R6 = R7.B (Z);
ffa00a54:	ff e3 b2 fb 	CALL 0xffa001b8 <_spi_delay>;
ffa00a58:	06 0c       	CC = R6 == 0x0;
ffa00a5a:	ec 10       	IF !CC JUMP 0xffa00c32 <_getRadioPacket+0x21e>;
ffa00a5c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c38 <_g_sampOff> */
ffa00a60:	09 e1 10 0c 	P1.L = 0xc10;		/* (3088)	P1=0xff900c10 <_wrptr> */
ffa00a64:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc01504(-4188924) */
ffa00a68:	4d 91       	P5 = [P1];
ffa00a6a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90f000 */
ffa00a6e:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000 <_l1_data_a>(-7340032) */
ffa00a72:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00a74:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa00a78:	0b e1 14 0c 	P3.L = 0xc14;		/* (3092)	P3=0xff900c14 <_g_sampW> */
ffa00a7c:	05 e1 5c 0c 	R5.L = 0xc5c;		/* (3164)	R5=0xff900c5c <_g_samples>(-7336868) */
ffa00a80:	24 e1 ff 01 	R4 = 0x1ff (X);		/*		R4=0x1ff(511) */
ffa00a84:	07 20       	JUMP.S 0xffa00a92 <_getRadioPacket+0x7e>;
ffa00a86:	08 0c       	CC = R0 == 0x1;
ffa00a88:	1a 18       	IF CC JUMP 0xffa00abc <_getRadioPacket+0xa8>;
ffa00a8a:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00a8c:	03 61       	R3 = 0x20 (X);		/*		R3=0x20( 32) */
ffa00a8e:	1f 08       	CC = R7 == R3;
ffa00a90:	21 18       	IF CC JUMP 0xffa00ad2 <_getRadioPacket+0xbe>;
ffa00a92:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a94:	20 97       	W[P4] = R0;
ffa00a96:	ff e3 91 fb 	CALL 0xffa001b8 <_spi_delay>;
ffa00a9a:	06 0c       	CC = R6 == 0x0;
ffa00a9c:	f7 1f       	IF CC JUMP 0xffa00a8a <_getRadioPacket+0x76> (BP);
ffa00a9e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa00aa2:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa00aa6:	50 95       	R0 = W[P2] (X);
ffa00aa8:	10 30       	R2 = R0;
ffa00aaa:	28 9a       	B[P5++] = R0;
ffa00aac:	b9 60       	R1 = 0x17 (X);		/*		R1=0x17( 23) */
ffa00aae:	f8 42       	R0 = R7.L (Z);
ffa00ab0:	08 0a       	CC = R0 <= R1 (IU);
ffa00ab2:	ec 17       	IF !CC JUMP 0xffa00a8a <_getRadioPacket+0x76> (BP);
ffa00ab4:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa00ab6:	07 54       	R0 = R7 & R0;
ffa00ab8:	00 0c       	CC = R0 == 0x0;
ffa00aba:	e6 17       	IF !CC JUMP 0xffa00a86 <_getRadioPacket+0x72> (BP);
ffa00abc:	18 91       	R0 = [P3];
ffa00abe:	60 54       	R1 = R0 & R4;
ffa00ac0:	69 50       	R1 = R1 + R5;
ffa00ac2:	11 32       	P2 = R1;
ffa00ac4:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00ac6:	03 61       	R3 = 0x20 (X);		/*		R3=0x20( 32) */
ffa00ac8:	08 64       	R0 += 0x1;		/* (  1) */
ffa00aca:	1f 08       	CC = R7 == R3;
ffa00acc:	12 9b       	B[P2] = R2;
ffa00ace:	18 93       	[P3] = R0;
ffa00ad0:	e1 17       	IF !CC JUMP 0xffa00a92 <_getRadioPacket+0x7e> (BP);
ffa00ad2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa00ad6:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00ada:	78 e5 fa ff 	R0 = W[FP + -0xc] (X);
ffa00ade:	10 97       	W[P2] = R0;
ffa00ae0:	24 00       	SSYNC;
ffa00ae2:	06 0c       	CC = R6 == 0x0;
ffa00ae4:	40 1c       	IF CC JUMP 0xffa00b64 <_getRadioPacket+0x150> (BP);
ffa00ae6:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c10 <_wrptr> */
ffa00aea:	09 e1 10 0c 	P1.L = 0xc10;		/* (3088)	P1=0xff900c10 <_wrptr> */
ffa00aee:	09 91       	R1 = [P1];
ffa00af0:	01 65       	R1 += 0x20;		/* ( 32) */
ffa00af2:	20 e1 ff 0f 	R0 = 0xfff (X);		/*		R0=0xfff(4095) */
ffa00af6:	01 54       	R0 = R1 & R0;
ffa00af8:	01 67       	R1 += -0x20;		/* (-32) */
ffa00afa:	11 32       	P2 = R1;
ffa00afc:	08 93       	[P1] = R0;
ffa00afe:	12 60       	R2 = 0x2 (X);		/*		R2=0x2(  2) */
ffa00b00:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c10 <_wrptr> */
ffa00b04:	09 e1 04 0c 	P1.L = 0xc04;		/* (3076)	P1=0xff900c04 <_g_nextFlag> */
ffa00b08:	91 a1       	R1 = [P2 + 0x18];
ffa00b0a:	39 49       	CC = BITTST (R1, 0x7);		/* bit  7 */
ffa00b0c:	82 c6 91 81 	R0 = R1 >> 0xe;
ffa00b10:	03 02       	R3 = CC;
ffa00b12:	10 54       	R0 = R0 & R2;
ffa00b14:	c3 56       	R3 = R3 | R0;
ffa00b16:	82 c6 59 85 	R2 = R1 >> 0x15;
ffa00b1a:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa00b1c:	82 54       	R2 = R2 & R0;
ffa00b1e:	e1 4e       	R1 >>= 0x1c;
ffa00b20:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa00b22:	41 54       	R1 = R1 & R0;
ffa00b24:	8a 56       	R2 = R2 | R1;
ffa00b26:	93 56       	R2 = R3 | R2;
ffa00b28:	08 91       	R0 = [P1];
ffa00b2a:	02 08       	CC = R2 == R0;
ffa00b2c:	14 18       	IF CC JUMP 0xffa00b54 <_getRadioPacket+0x140>;
ffa00b2e:	82 09       	CC = R2 < R0 (IU);
ffa00b30:	91 14       	IF !CC JUMP 0xffa00c52 <_getRadioPacket+0x23e> (BP);
ffa00b32:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00b36:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_g_dropped> */
ffa00b3a:	04 cc 10 42 	R1 = R2 - R0 (NS) || R0 = [P2] || NOP;
ffa00b3e:	10 91 00 00 
ffa00b42:	80 64       	R0 += 0x10;		/* ( 16) */
ffa00b44:	41 50       	R1 = R1 + R0;
ffa00b46:	11 93       	[P2] = R1;
ffa00b48:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c2c(-4191188) */
ffa00b4c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa00b4e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00b52:	10 97       	W[P2] = R0;
ffa00b54:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00b56:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00b58:	02 54       	R0 = R2 & R0;
ffa00b5a:	08 93       	[P1] = R0;
ffa00b5c:	fa 67       	R2 += -0x1;		/* ( -1) */
ffa00b5e:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00b60:	02 08       	CC = R2 == R0;
ffa00b62:	81 18       	IF CC JUMP 0xffa00c64 <_getRadioPacket+0x250>;
ffa00b64:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c04 <_g_nextFlag> */
ffa00b68:	09 e1 10 0c 	P1.L = 0xc10;		/* (3088)	P1=0xff900c10 <_wrptr> */
ffa00b6c:	21 e1 3f 02 	R1 = 0x23f (X);		/*		R1=0x23f(575) */
ffa00b70:	08 91       	R0 = [P1];
ffa00b72:	08 0a       	CC = R0 <= R1 (IU);
ffa00b74:	5b 18       	IF CC JUMP 0xffa00c2a <_getRadioPacket+0x216>;
ffa00b76:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00b7a:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00b7e:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa00b82:	10 97       	W[P2] = R0;
ffa00b84:	21 e1 e2 00 	R1 = 0xe2 (X);		/*		R1=0xe2(226) */
ffa00b88:	e0 b9       	R0 = [FP -0x8];
ffa00b8a:	ff e3 b3 fb 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00b8e:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c10 <_wrptr> */
ffa00b92:	09 e1 10 0c 	P1.L = 0xc10;		/* (3088)	P1=0xff900c10 <_wrptr> */
ffa00b96:	08 91       	R0 = [P1];
ffa00b98:	4f 30       	R1 = FP;
ffa00b9a:	20 64       	R0 += 0x4;		/* (  4) */
ffa00b9c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa00b9e:	00 e3 b7 0c 	CALL 0xffa0250c <_udp_packet_setup>;
ffa00ba2:	08 32       	P1 = R0;
ffa00ba4:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa00ba8:	00 0d       	CC = R0 <= 0x0;
ffa00baa:	aa 18       	IF CC JUMP 0xffa00cfe <_getRadioPacket+0x2ea>;
ffa00bac:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00bb0:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_g_dropped> */
ffa00bb4:	10 91       	R0 = [P2];
ffa00bb6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_g_dropped> */
ffa00bba:	08 93       	[P1] = R0;
ffa00bbc:	0a e1 10 0c 	P2.L = 0xc10;		/* (3088)	P2=0xff900c10 <_wrptr> */
ffa00bc0:	10 91       	R0 = [P2];
ffa00bc2:	10 4e       	R0 >>= 0x2;
ffa00bc4:	00 0c       	CC = R0 == 0x0;
ffa00bc6:	9a 18       	IF CC JUMP 0xffa00cfa <_getRadioPacket+0x2e6>;
ffa00bc8:	51 32       	P2 = P1;
ffa00bca:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00bcc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00bce:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00bd0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c10 <_wrptr> */
ffa00bd4:	28 90       	R0 = [P5++];
ffa00bd6:	10 92       	[P2++] = R0;
ffa00bd8:	09 e1 10 0c 	P1.L = 0xc10;		/* (3088)	P1=0xff900c10 <_wrptr> */
ffa00bdc:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00bde:	08 91       	R0 = [P1];
ffa00be0:	d1 42       	R1 = R2.L (Z);
ffa00be2:	10 4e       	R0 >>= 0x2;
ffa00be4:	81 09       	CC = R1 < R0 (IU);
ffa00be6:	f5 1f       	IF CC JUMP 0xffa00bd0 <_getRadioPacket+0x1bc> (BP);
ffa00be8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c10 <_wrptr> */
ffa00bec:	0a e1 0c 0c 	P2.L = 0xc0c;		/* (3084)	P2=0xff900c0c <_trptr> */
ffa00bf0:	10 91       	R0 = [P2];
ffa00bf2:	08 64       	R0 += 0x1;		/* (  1) */
ffa00bf4:	10 93       	[P2] = R0;
ffa00bf6:	00 e3 09 08 	CALL 0xffa01c08 <_bfin_EMAC_send_nocopy>;
ffa00bfa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00bfc:	28 93       	[P5] = R0;
ffa00bfe:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00c00:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00c02:	23 e1 90 00 	R3 = 0x90 (X);		/*		R3=0x90(144) */
ffa00c06:	09 64       	R1 += 0x1;		/* (  1) */
ffa00c08:	c8 42       	R0 = R1.L (Z);
ffa00c0a:	18 08       	CC = R0 == R3;
ffa00c0c:	2a 92       	[P5++] = R2;
ffa00c0e:	fc 17       	IF !CC JUMP 0xffa00c06 <_getRadioPacket+0x1f2> (BP);
ffa00c10:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c0c(-4191220) */
ffa00c14:	20 e1 04 40 	R0 = 0x4004 (X);		/*		R0=0x4004(16388) */
ffa00c18:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00c1c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c10 <_wrptr> */
ffa00c20:	10 97       	W[P2] = R0;
ffa00c22:	09 e1 10 0c 	P1.L = 0xc10;		/* (3088)	P1=0xff900c10 <_wrptr> */
ffa00c26:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00c28:	08 93       	[P1] = R0;
ffa00c2a:	01 e8 00 00 	UNLINK;
ffa00c2e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa00c30:	10 00       	RTS;
ffa00c32:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c10 <_wrptr> */
ffa00c36:	09 e1 10 0c 	P1.L = 0xc10;		/* (3088)	P1=0xff900c10 <_wrptr> */
ffa00c3a:	4d 91       	P5 = [P1];
ffa00c3c:	ff e3 b6 fa 	CALL 0xffa001a8 <_ustimer>;
ffa00c40:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa00c44:	0a e1 10 0c 	P2.L = 0xc10;		/* (3088)	P2=0xff900c10 <_wrptr> */
ffa00c48:	28 93       	[P5] = R0;
ffa00c4a:	10 91       	R0 = [P2];
ffa00c4c:	20 64       	R0 += 0x4;		/* (  4) */
ffa00c4e:	10 93       	[P2] = R0;
ffa00c50:	06 2f       	JUMP.S 0xffa00a5c <_getRadioPacket+0x48>;
ffa00c52:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c10 <_wrptr> */
ffa00c56:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_g_dropped> */
ffa00c5a:	11 91       	R1 = [P2];
ffa00c5c:	02 52       	R0 = R2 - R0;
ffa00c5e:	08 50       	R0 = R0 + R1;
ffa00c60:	10 93       	[P2] = R0;
ffa00c62:	73 2f       	JUMP.S 0xffa00b48 <_getRadioPacket+0x134>;
ffa00c64:	e0 b9       	R0 = [FP -0x8];
ffa00c66:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00c6a:	ff e3 95 fb 	CALL 0xffa00394 <_radio_set_tx>;
ffa00c6e:	24 00       	SSYNC;
ffa00c70:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c2c(-4191188) */
ffa00c74:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa00c78:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90050c */
ffa00c7c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00c80:	79 e5 fa ff 	R1 = W[FP + -0xc] (X);
ffa00c84:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa00c88:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa00c8c:	0c e1 3c 0c 	P4.L = 0xc3c;		/* (3132)	P4=0xff900c3c <_g_outpkt> */
ffa00c90:	11 97       	W[P2] = R1;
ffa00c92:	5c 32       	P3 = P4;
ffa00c94:	28 97       	W[P5] = R0;
ffa00c96:	ff e3 91 fa 	CALL 0xffa001b8 <_spi_delay>;
ffa00c9a:	03 6d       	P3 += 0x20;		/* ( 32) */
ffa00c9c:	00 00       	NOP;
ffa00c9e:	20 98       	R0 = B[P4++] (Z);
ffa00ca0:	28 97       	W[P5] = R0;
ffa00ca2:	ff e3 8b fa 	CALL 0xffa001b8 <_spi_delay>;
ffa00ca6:	5c 08       	CC = P4 == P3;
ffa00ca8:	fa 17       	IF !CC JUMP 0xffa00c9c <_getRadioPacket+0x288> (BP);
ffa00caa:	78 e5 fa ff 	R0 = W[FP + -0xc] (X);
ffa00cae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00cb2:	50 4a       	BITSET (R0, 0xa);		/* bit 10 */
ffa00cb4:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00cb8:	10 97       	W[P2] = R0;
ffa00cba:	24 00       	SSYNC;
ffa00cbc:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00cbe:	50 95       	R0 = W[P2] (X);
ffa00cc0:	7b e5 f8 ff 	R3 = W[FP + -0x10] (X);
ffa00cc4:	03 54       	R0 = R3 & R0;
ffa00cc6:	c0 42       	R0 = R0.L (Z);
ffa00cc8:	00 0c       	CC = R0 == 0x0;
ffa00cca:	0c 18       	IF CC JUMP 0xffa00ce2 <_getRadioPacket+0x2ce>;
ffa00ccc:	6a 32       	P5 = P2;
ffa00cce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00cd0:	ff e3 78 fe 	CALL 0xffa009c0 <_eth_listen>;
ffa00cd4:	68 95       	R0 = W[P5] (X);
ffa00cd6:	79 e5 f8 ff 	R1 = W[FP + -0x10] (X);
ffa00cda:	08 54       	R0 = R0 & R1;
ffa00cdc:	c0 42       	R0 = R0.L (Z);
ffa00cde:	00 0c       	CC = R0 == 0x0;
ffa00ce0:	f7 17       	IF !CC JUMP 0xffa00cce <_getRadioPacket+0x2ba> (BP);
ffa00ce2:	e0 b9       	R0 = [FP -0x8];
ffa00ce4:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00ce6:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00cea:	ff e3 81 fa 	CALL 0xffa001ec <_spi_write_register>;
ffa00cee:	e0 b9       	R0 = [FP -0x8];
ffa00cf0:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00cf4:	ff e3 22 fb 	CALL 0xffa00338 <_radio_set_rx>;
ffa00cf8:	3f 2f       	JUMP.S 0xffa00b76 <_getRadioPacket+0x162>;
ffa00cfa:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00cfc:	76 2f       	JUMP.S 0xffa00be8 <_getRadioPacket+0x1d4>;
ffa00cfe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00d02:	0a e1 0c 0c 	P2.L = 0xc0c;		/* (3084)	P2=0xff900c0c <_trptr> */
ffa00d06:	10 91       	R0 = [P2];
ffa00d08:	08 64       	R0 += 0x1;		/* (  1) */
ffa00d0a:	10 93       	[P2] = R0;
ffa00d0c:	82 2f       	JUMP.S 0xffa00c10 <_getRadioPacket+0x1fc>;
	...

ffa00d10 <_main>:
ffa00d10:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c0c(-4191220) */
ffa00d14:	e3 05       	[--SP] = (R7:4, P5:3);
ffa00d16:	20 e1 9c c1 	R0 = -0x3e64 (X);		/*		R0=0xffffc19c(-15972) */
ffa00d1a:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00d1e:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa00d22:	10 97       	W[P2] = R0;
ffa00d24:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa00d28:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa00d2a:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa00d2e:	12 97       	W[P2] = R2;
ffa00d30:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa00d34:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00d36:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa00d3a:	10 97       	W[P2] = R0;
ffa00d3c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa00d40:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa00d42:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa00d46:	10 97       	W[P2] = R0;
ffa00d48:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa00d4c:	a2 6f       	P2 += -0xc;		/* (-12) */
ffa00d4e:	10 97       	W[P2] = R0;
ffa00d50:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa00d54:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00d56:	10 97       	W[P2] = R0;
ffa00d58:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00d5a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00d5c:	11 97       	W[P2] = R1;
ffa00d5e:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0150c(-4188916) */
ffa00d62:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa00d66:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c10(-4191216) */
ffa00d6a:	09 e1 0c 04 	P1.L = 0x40c;		/* (1036)	P1=0xffc0040c(-4193268) */
ffa00d6e:	08 e1 04 04 	P0.L = 0x404;		/* (1028)	P0=0xffc00404(-4193276) */
ffa00d72:	0a e1 10 04 	P2.L = 0x410;		/* (1040)	P2=0xffc00410(-4193264) */
ffa00d76:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa00d7a:	01 97       	W[P0] = R1;
ffa00d7c:	11 97       	W[P2] = R1;
ffa00d7e:	08 97       	W[P1] = R0;
ffa00d80:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00d82:	20 e1 88 00 	R0 = 0x88 (X);		/*		R0=0x88(136) */
ffa00d86:	10 97       	W[P2] = R0;
ffa00d88:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00d8a:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00d8c:	01 97       	W[P0] = R1;
ffa00d8e:	0a 97       	W[P1] = R2;
ffa00d90:	10 97       	W[P2] = R0;
ffa00d92:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00d94:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900410 */
ffa00d98:	b8 4f       	R0 <<= 0x17;
ffa00d9a:	0a e1 5c 0e 	P2.L = 0xe5c;		/* (3676)	P2=0xff900e5c <_printf_temp> */
ffa00d9e:	10 93       	[P2] = R0;
ffa00da0:	20 e1 01 e0 	R0 = -0x1fff (X);		/*		R0=0xffffe001(-8191) */
ffa00da4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e5c <_printf_temp> */
ffa00da8:	0a e1 60 0e 	P2.L = 0xe60;		/* (3680)	P2=0xff900e60 <_printf_out> */
ffa00dac:	50 4f       	R0 <<= 0xa;
ffa00dae:	10 93       	[P2] = R0;
ffa00db0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90e001(-7282687) */
ffa00db4:	21 e1 46 02 	R1 = 0x246 (X);		/*		R1=0x246(582) */
ffa00db8:	00 e1 7c 00 	R0.L = 0x7c;		/* (124)	R0=0xff90007c(-7339908) */
ffa00dbc:	00 e3 92 02 	CALL 0xffa012e0 <_printf_int>;
ffa00dc0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa00dc4:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa00dc8:	00 e3 ca 01 	CALL 0xffa0115c <_printf_str>;
ffa00dcc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900798(-7338088) */
ffa00dd0:	00 e1 8c 00 	R0.L = 0x8c;		/* (140)	R0=0xff90008c(-7339892) */
ffa00dd4:	00 e3 c4 01 	CALL 0xffa0115c <_printf_str>;
ffa00dd8:	49 e1 40 00 	P1.H = 0x40;		/* ( 64)	P1=0x40040c */
ffa00ddc:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa00dde:	22 e1 ca de 	R2 = -0x2136 (X);		/*		R2=0xffffdeca(-8502) */
ffa00de2:	23 e1 ad fb 	R3 = -0x453 (X);		/*		R3=0xfffffbad(-1107) */
ffa00de6:	20 e1 ed c0 	R0 = -0x3f13 (X);		/*		R0=0xffffc0ed(-16147) */
ffa00dea:	21 e1 be ba 	R1 = -0x4542 (X);		/*		R1=0xffffbabe(-17730) */
ffa00dee:	09 e1 00 00 	P1.L = 0x0;		/* (  0)	P1=0x400000 */
ffa00df2:	b2 e0 06 10 	LSETUP(0xffa00df6 <_main+0xe6>, 0xffa00dfe <_main+0xee>) LC1 = P1;
ffa00df6:	12 97       	W[P2] = R2;
ffa00df8:	53 b4       	W[P2 + 0x2] = R3;
ffa00dfa:	90 b4       	W[P2 + 0x4] = R0;
ffa00dfc:	d1 b4       	W[P2 + 0x6] = R1;
ffa00dfe:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00e00:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00e02:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00e04:	02 20       	JUMP.S 0xffa00e08 <_main+0xf8>;
ffa00e06:	45 6c       	P5 += 0x8;		/* (  8) */
ffa00e08:	2f 95       	R7 = W[P5] (Z);
ffa00e0a:	80 e1 ca de 	R0 = 0xdeca (Z);		/*		R0=0xdeca(57034) */
ffa00e0e:	07 08       	CC = R7 == R0;
ffa00e10:	15 18       	IF CC JUMP 0xffa00e3a <_main+0x12a>;
ffa00e12:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90deca(-7282998) */
ffa00e16:	0e 30       	R1 = R6;
ffa00e18:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e1c:	00 e3 06 02 	CALL 0xffa01228 <_printf_hex>;
ffa00e20:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e24:	00 e1 ac 00 	R0.L = 0xac;		/* (172)	R0=0xff9000ac(-7339860) */
ffa00e28:	0f 30       	R1 = R7;
ffa00e2a:	00 e3 ff 01 	CALL 0xffa01228 <_printf_hex>;
ffa00e2e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000ac(-7339860) */
ffa00e32:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa00e36:	00 e3 93 01 	CALL 0xffa0115c <_printf_str>;
ffa00e3a:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa00e3c:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa00e40:	08 08       	CC = R0 == R1;
ffa00e42:	08 18       	IF CC JUMP 0xffa00e52 <_main+0x142>;
ffa00e44:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900798(-7338088) */
ffa00e48:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e4c:	0e 30       	R1 = R6;
ffa00e4e:	00 e3 ed 01 	CALL 0xffa01228 <_printf_hex>;
ffa00e52:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa00e54:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa00e58:	08 08       	CC = R0 == R1;
ffa00e5a:	08 18       	IF CC JUMP 0xffa00e6a <_main+0x15a>;
ffa00e5c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e60:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e64:	0e 30       	R1 = R6;
ffa00e66:	00 e3 e1 01 	CALL 0xffa01228 <_printf_hex>;
ffa00e6a:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa00e6c:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa00e70:	08 08       	CC = R0 == R1;
ffa00e72:	08 18       	IF CC JUMP 0xffa00e82 <_main+0x172>;
ffa00e74:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e78:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e7c:	0e 30       	R1 = R6;
ffa00e7e:	00 e3 d5 01 	CALL 0xffa01228 <_printf_hex>;
ffa00e82:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa00e86:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa00e8a:	55 08       	CC = P5 == P2;
ffa00e8c:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00e8e:	bc 17       	IF !CC JUMP 0xffa00e06 <_main+0xf6> (BP);
ffa00e90:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e94:	00 e1 b4 00 	R0.L = 0xb4;		/* (180)	R0=0xff9000b4(-7339852) */
ffa00e98:	00 e3 62 01 	CALL 0xffa0115c <_printf_str>;
ffa00e9c:	00 e3 e0 0c 	CALL 0xffa0285c <_bfin_EMAC_init>;
ffa00ea0:	00 0c       	CC = R0 == 0x0;
ffa00ea2:	f0 bb       	[FP -0x4] = R0;
ffa00ea4:	ff 18       	IF CC JUMP 0xffa010a2 <_main+0x392>;
ffa00ea6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0fff8(-4128776) */
ffa00eaa:	20 e1 83 38 	R0 = 0x3883 (X);		/*		R0=0x3883(14467) */
ffa00eae:	0a e1 00 32 	P2.L = 0x3200;		/* (12800)	P2=0xffc03200(-4181504) */
ffa00eb2:	10 97       	W[P2] = R0;
ffa00eb4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03200(-4181504) */
ffa00eb8:	20 e1 56 fe 	R0 = -0x1aa (X);		/*		R0=0xfffffe56(-426) */
ffa00ebc:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa00ec0:	10 97       	W[P2] = R0;
ffa00ec2:	20 e1 ab 01 	R0 = 0x1ab (X);		/*		R0=0x1ab(427) */
ffa00ec6:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa00ec8:	10 97       	W[P2] = R0;
ffa00eca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa00ece:	20 e1 40 01 	R0 = 0x140 (X);		/*		R0=0x140(320) */
ffa00ed2:	0a e1 10 32 	P2.L = 0x3210;		/* (12816)	P2=0xffc03210(-4181488) */
ffa00ed6:	10 97       	W[P2] = R0;
ffa00ed8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03210(-4181488) */
ffa00edc:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa00ee0:	50 95       	R0 = W[P2] (X);
ffa00ee2:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00ee4:	10 97       	W[P2] = R0;
ffa00ee6:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00ee8:	50 95       	R0 = W[P2] (X);
ffa00eea:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa00eec:	10 97       	W[P2] = R0;
ffa00eee:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa00ef2:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00ef6:	50 95       	R0 = W[P2] (X);
ffa00ef8:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00efa:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c14 <_g_sampW> */
ffa00efe:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c3c <_g_outpkt> */
ffa00f02:	10 97       	W[P2] = R0;
ffa00f04:	0b e1 14 0c 	P3.L = 0xc14;		/* (3092)	P3=0xff900c14 <_g_sampW> */
ffa00f08:	0c e1 34 0c 	P4.L = 0xc34;		/* (3124)	P4=0xff900c34 <_g_streamEnabled> */
ffa00f0c:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00f0e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900140(-7339712) */
ffa00f12:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa00f16:	00 e3 23 01 	CALL 0xffa0115c <_printf_str>;
ffa00f1a:	00 e3 0d 0e 	CALL 0xffa02b34 <_bridge_publish>;
ffa00f1e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903204 */
ffa00f22:	0a e1 10 0c 	P2.L = 0xc10;		/* (3088)	P2=0xff900c10 <_wrptr> */
ffa00f26:	16 93       	[P2] = R6;
ffa00f28:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c10 <_wrptr> */
ffa00f2c:	0a e1 0c 0c 	P2.L = 0xc0c;		/* (3084)	P2=0xff900c0c <_trptr> */
ffa00f30:	16 93       	[P2] = R6;
ffa00f32:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c0c <_trptr> */
ffa00f36:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_g_dropped> */
ffa00f3a:	16 93       	[P2] = R6;
ffa00f3c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_g_dropped> */
ffa00f40:	0a e1 04 0c 	P2.L = 0xc04;		/* (3076)	P2=0xff900c04 <_g_nextFlag> */
ffa00f44:	38 30       	R7 = R0;
ffa00f46:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000c8(-7339832) */
ffa00f4a:	16 93       	[P2] = R6;
ffa00f4c:	00 e1 e0 00 	R0.L = 0xe0;		/* (224)	R0=0xff9000e0(-7339808) */
ffa00f50:	00 e3 06 01 	CALL 0xffa0115c <_printf_str>;
ffa00f54:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c04(-4191228) */
ffa00f58:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa00f5c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00f60:	10 97       	W[P2] = R0;
ffa00f62:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa00f66:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00f68:	10 97       	W[P2] = R0;
ffa00f6a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00f6e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa00f70:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00f74:	10 97       	W[P2] = R0;
ffa00f76:	24 00       	SSYNC;
ffa00f78:	7f 43       	R7 = R7.B (Z);
ffa00f7a:	17 30       	R2 = R7;
ffa00f7c:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa00f7e:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa00f80:	ff e3 6c fa 	CALL 0xffa00458 <_radio_init>;
ffa00f84:	17 30       	R2 = R7;
ffa00f86:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa00f88:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa00f8c:	ff e3 66 fa 	CALL 0xffa00458 <_radio_init>;
ffa00f90:	17 30       	R2 = R7;
ffa00f92:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa00f96:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa00f9a:	ff e3 5f fa 	CALL 0xffa00458 <_radio_init>;
ffa00f9e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901508 */
ffa00fa2:	0a e1 30 0c 	P2.L = 0xc30;		/* (3120)	P2=0xff900c30 <_g_sampR> */
ffa00fa6:	16 93       	[P2] = R6;
ffa00fa8:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa00faa:	00 cc 09 c2 	R1 = R1 -|- R1 || [P3] = R6 || NOP;
ffa00fae:	1e 93 00 00 
ffa00fb2:	ff e3 c3 f9 	CALL 0xffa00338 <_radio_set_rx>;
ffa00fb6:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa00fba:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00fbc:	ff e3 be f9 	CALL 0xffa00338 <_radio_set_rx>;
ffa00fc0:	45 e1 0b e5 	R5.H = 0xe50b;		/* (-6901)	R5=0xe50b0c5c(-452260772) */
ffa00fc4:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa00fc8:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00fcc:	ff e3 b6 f9 	CALL 0xffa00338 <_radio_set_rx>;
ffa00fd0:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa00fd2:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa00fd4:	05 e1 81 f7 	R5.L = 0xf781;		/* (-2175)	R5=0xe50bf781(-452200575) */
ffa00fd8:	20 99       	R0 = B[P4] (Z);
ffa00fda:	00 0c       	CC = R0 == 0x0;
ffa00fdc:	99 1f       	IF CC JUMP 0xffa00f0e <_main+0x1fe> (BP);
ffa00fde:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa00fe2:	f0 b9       	R0 = [FP -0x4];
ffa00fe4:	0d e1 00 07 	P5.L = 0x700;		/* (1792)	P5=0xffc00700(-4192512) */
ffa00fe8:	ff e3 ec fc 	CALL 0xffa009c0 <_eth_listen>;
ffa00fec:	68 95       	R0 = W[P5] (X);
ffa00fee:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa00ff0:	3d 18       	IF CC JUMP 0xffa0106a <_main+0x35a>;
ffa00ff2:	00 00       	NOP;
ffa00ff4:	00 00       	NOP;
ffa00ff6:	00 00       	NOP;
ffa00ff8:	68 95       	R0 = W[P5] (X);
ffa00ffa:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00ffc:	40 18       	IF CC JUMP 0xffa0107c <_main+0x36c>;
ffa00ffe:	00 00       	NOP;
ffa01000:	00 00       	NOP;
ffa01002:	00 00       	NOP;
ffa01004:	68 95       	R0 = W[P5] (X);
ffa01006:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa01008:	44 18       	IF CC JUMP 0xffa01090 <_main+0x380>;
ffa0100a:	20 e1 28 01 	R0 = 0x128 (X);		/*		R0=0x128(296) */
ffa0100e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c30(-4191184) */
ffa01012:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01016:	69 95       	R1 = W[P5] (X);
ffa01018:	08 54       	R0 = R0 & R1;
ffa0101a:	21 e1 28 01 	R1 = 0x128 (X);		/*		R1=0x128(296) */
ffa0101e:	08 08       	CC = R0 == R1;
ffa01020:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01022:	38 07       	IF CC R7 = R0;
ffa01024:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa01028:	10 97       	W[P2] = R0;
ffa0102a:	ff e3 bf f8 	CALL 0xffa001a8 <_ustimer>;
ffa0102e:	08 4e       	R0 >>= 0x1;
ffa01030:	80 c0 05 18 	A1 = R0.L * R5.L (FU);
ffa01034:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01038:	81 c0 05 86 	A1 += R0.H * R5.L, A0 = R0.H * R5.H (FU);
ffa0103c:	81 c0 28 98 	A1 += R5.H * R0.L (FU);
ffa01040:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01044:	0b c4 00 80 	A0 += A1;
ffa01048:	8b c0 00 38 	R0 = A0 (FU);
ffa0104c:	82 c6 a8 83 	R1 = R0 >> 0xb;
ffa01050:	0c 08       	CC = R4 == R1;
ffa01052:	c3 1b       	IF CC JUMP 0xffa00fd8 <_main+0x2c8>;
ffa01054:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01058:	20 e1 00 80 	R0 = -0x8000 (X);		/*		R0=0xffff8000(-32768) */
ffa0105c:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa01060:	82 ce 01 c8 	R4 = ROT R1 BY 0x0 || W[P2] = R0 || NOP;
ffa01064:	10 97 00 00 
ffa01068:	b8 2f       	JUMP.S 0xffa00fd8 <_main+0x2c8>;
ffa0106a:	7a 43       	R2 = R7.B (Z);
ffa0106c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0106e:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa01070:	ff e3 d2 fc 	CALL 0xffa00a14 <_getRadioPacket>;
ffa01074:	68 95       	R0 = W[P5] (X);
ffa01076:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01078:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0107a:	c4 17       	IF !CC JUMP 0xffa01002 <_main+0x2f2> (BP);
ffa0107c:	7a 43       	R2 = R7.B (Z);
ffa0107e:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01082:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa01084:	ff e3 c8 fc 	CALL 0xffa00a14 <_getRadioPacket>;
ffa01088:	68 95       	R0 = W[P5] (X);
ffa0108a:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa0108c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0108e:	be 17       	IF !CC JUMP 0xffa0100a <_main+0x2fa> (BP);
ffa01090:	7a 43       	R2 = R7.B (Z);
ffa01092:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01096:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa0109a:	ff e3 bd fc 	CALL 0xffa00a14 <_getRadioPacket>;
ffa0109e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa010a0:	b5 2f       	JUMP.S 0xffa0100a <_main+0x2fa>;
ffa010a2:	00 e3 8d 0e 	CALL 0xffa02dbc <_DHCP_req>;
ffa010a6:	00 2f       	JUMP.S 0xffa00ea6 <_main+0x196>;

ffa010a8 <_uart_str>:
ffa010a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa010ac:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa010b0:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa010b4:	08 32       	P1 = R0;
ffa010b6:	50 95       	R0 = W[P2] (X);
ffa010b8:	c0 42       	R0 = R0.L (Z);
ffa010ba:	08 0c       	CC = R0 == 0x1;
ffa010bc:	06 18       	IF CC JUMP 0xffa010c8 <_uart_str+0x20>;
ffa010be:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa010c0:	02 30       	R0 = R2;
ffa010c2:	01 e8 00 00 	UNLINK;
ffa010c6:	10 00       	RTS;
ffa010c8:	48 99       	R0 = B[P1] (X);
ffa010ca:	01 43       	R1 = R0.B (X);
ffa010cc:	01 0c       	CC = R1 == 0x0;
ffa010ce:	f8 1b       	IF CC JUMP 0xffa010be <_uart_str+0x16>;
ffa010d0:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa010d4:	09 6c       	P1 += 0x1;		/* (  1) */
ffa010d6:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa010d8:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa010dc:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa010e0:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa010e2:	b2 e0 1c 00 	LSETUP(0xffa010e6 <_uart_str+0x3e>, 0xffa0111a <_uart_str+0x72>) LC1 = P0;
ffa010e6:	19 08       	CC = R1 == R3;
ffa010e8:	1b 18       	IF CC JUMP 0xffa0111e <_uart_str+0x76>;
ffa010ea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa010ee:	00 43       	R0 = R0.B (X);
ffa010f0:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa010f4:	10 97       	W[P2] = R0;
ffa010f6:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa010f8:	50 95       	R0 = W[P2] (X);
ffa010fa:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa010fc:	0a 10       	IF !CC JUMP 0xffa01110 <_uart_str+0x68>;
ffa010fe:	00 00       	NOP;
ffa01100:	00 00       	NOP;
ffa01102:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa01106:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa0110a:	50 95       	R0 = W[P2] (X);
ffa0110c:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0110e:	f9 1f       	IF CC JUMP 0xffa01100 <_uart_str+0x58> (BP);
ffa01110:	48 99       	R0 = B[P1] (X);
ffa01112:	01 43       	R1 = R0.B (X);
ffa01114:	01 0c       	CC = R1 == 0x0;
ffa01116:	0a 64       	R2 += 0x1;		/* (  1) */
ffa01118:	d4 1b       	IF CC JUMP 0xffa010c0 <_uart_str+0x18>;
ffa0111a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0111c:	d2 2f       	JUMP.S 0xffa010c0 <_uart_str+0x18>;
ffa0111e:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01120:	20 9f       	W[I0] = R0.L;
ffa01122:	02 20       	JUMP.S 0xffa01126 <_uart_str+0x7e>;
ffa01124:	00 00       	NOP;
ffa01126:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa0112a:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa0112e:	50 95       	R0 = W[P2] (X);
ffa01130:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01132:	f9 1f       	IF CC JUMP 0xffa01124 <_uart_str+0x7c> (BP);
ffa01134:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa01138:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa0113a:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa0113e:	10 97       	W[P2] = R0;
ffa01140:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa01142:	50 95       	R0 = W[P2] (X);
ffa01144:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01146:	e5 13       	IF !CC JUMP 0xffa01110 <_uart_str+0x68>;
ffa01148:	00 00       	NOP;
ffa0114a:	00 00       	NOP;
ffa0114c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa01150:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa01154:	50 95       	R0 = W[P2] (X);
ffa01156:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01158:	f9 1f       	IF CC JUMP 0xffa0114a <_uart_str+0xa2> (BP);
ffa0115a:	db 2f       	JUMP.S 0xffa01110 <_uart_str+0x68>;

ffa0115c <_printf_str>:
ffa0115c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01160:	01 e8 00 00 	UNLINK;
ffa01164:	ff e2 a2 ff 	JUMP.L 0xffa010a8 <_uart_str>;

ffa01168 <_printf_newline>:
ffa01168:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0116c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa01170:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa01174:	01 e8 00 00 	UNLINK;
ffa01178:	ff e2 98 ff 	JUMP.L 0xffa010a8 <_uart_str>;

ffa0117c <_printf_hex_byte>:
ffa0117c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0117e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01182:	28 32       	P5 = R0;
ffa01184:	39 30       	R7 = R1;
ffa01186:	00 e3 b1 01 	CALL 0xffa014e8 <_strlen_>;
ffa0118a:	10 30       	R2 = R0;
ffa0118c:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa01190:	02 09       	CC = R2 <= R0;
ffa01192:	41 10       	IF !CC JUMP 0xffa01214 <_printf_hex_byte+0x98>;
ffa01194:	02 0d       	CC = R2 <= 0x0;
ffa01196:	44 18       	IF CC JUMP 0xffa0121e <_printf_hex_byte+0xa2>;
ffa01198:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa0119c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0119e:	08 e1 60 0e 	P0.L = 0xe60;		/* (3680)	P0=0xff900e60 <_printf_out> */
ffa011a2:	09 32       	P1 = R1;
ffa011a4:	42 91       	P2 = [P0];
ffa011a6:	09 64       	R1 += 0x1;		/* (  1) */
ffa011a8:	68 98       	R0 = B[P5++] (X);
ffa011aa:	0a 08       	CC = R2 == R1;
ffa011ac:	8a 5a       	P2 = P2 + P1;
ffa011ae:	10 9b       	B[P2] = R0;
ffa011b0:	f9 17       	IF !CC JUMP 0xffa011a2 <_printf_hex_byte+0x26> (BP);
ffa011b2:	0a 32       	P1 = R2;
ffa011b4:	42 91       	P2 = [P0];
ffa011b6:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa011b8:	22 32       	P4 = R2;
ffa011ba:	79 43       	R1 = R7.B (Z);
ffa011bc:	8a 5a       	P2 = P2 + P1;
ffa011be:	10 9b       	B[P2] = R0;
ffa011c0:	42 91       	P2 = [P0];
ffa011c2:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa011c4:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa011c8:	11 6c       	P1 += 0x2;		/* (  2) */
ffa011ca:	a2 5a       	P2 = P2 + P4;
ffa011cc:	10 9b       	B[P2] = R0;
ffa011ce:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa011d0:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa011d2:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa011d4:	01 30       	R0 = R1;
ffa011d6:	10 40       	R0 >>>= R2;
ffa011d8:	18 54       	R0 = R0 & R3;
ffa011da:	38 09       	CC = R0 <= R7;
ffa011dc:	1a 1c       	IF CC JUMP 0xffa01210 <_printf_hex_byte+0x94> (BP);
ffa011de:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa011e0:	42 91       	P2 = [P0];
ffa011e2:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa011e4:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900700 */
ffa011e8:	22 0c       	CC = R2 == -0x4;
ffa011ea:	8a 5a       	P2 = P2 + P1;
ffa011ec:	0d e1 60 0e 	P5.L = 0xe60;		/* (3680)	P5=0xff900e60 <_printf_out> */
ffa011f0:	10 9b       	B[P2] = R0;
ffa011f2:	09 6c       	P1 += 0x1;		/* (  1) */
ffa011f4:	f0 17       	IF !CC JUMP 0xffa011d4 <_printf_hex_byte+0x58> (BP);
ffa011f6:	6a 91       	P2 = [P5];
ffa011f8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa011fa:	94 5a       	P2 = P4 + P2;
ffa011fc:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa01200:	28 91       	R0 = [P5];
ffa01202:	ff e3 53 ff 	CALL 0xffa010a8 <_uart_str>;
ffa01206:	01 e8 00 00 	UNLINK;
ffa0120a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0120c:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0120e:	10 00       	RTS;
ffa01210:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01212:	e7 2f       	JUMP.S 0xffa011e0 <_printf_hex_byte+0x64>;
ffa01214:	01 e8 00 00 	UNLINK;
ffa01218:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0121a:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0121c:	10 00       	RTS;
ffa0121e:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e60 <_printf_out> */
ffa01222:	08 e1 60 0e 	P0.L = 0xe60;		/* (3680)	P0=0xff900e60 <_printf_out> */
ffa01226:	c6 2f       	JUMP.S 0xffa011b2 <_printf_hex_byte+0x36>;

ffa01228 <_printf_hex>:
ffa01228:	fb 05       	[--SP] = (R7:7, P5:3);
ffa0122a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0122e:	28 32       	P5 = R0;
ffa01230:	39 30       	R7 = R1;
ffa01232:	00 e3 5b 01 	CALL 0xffa014e8 <_strlen_>;
ffa01236:	10 30       	R2 = R0;
ffa01238:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa0123c:	02 09       	CC = R2 <= R0;
ffa0123e:	47 10       	IF !CC JUMP 0xffa012cc <_printf_hex+0xa4>;
ffa01240:	02 0d       	CC = R2 <= 0x0;
ffa01242:	4a 18       	IF CC JUMP 0xffa012d6 <_printf_hex+0xae>;
ffa01244:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900000 <_l1_data_a> */
ffa01248:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0124a:	09 e1 60 0e 	P1.L = 0xe60;		/* (3680)	P1=0xff900e60 <_printf_out> */
ffa0124e:	01 32       	P0 = R1;
ffa01250:	4a 91       	P2 = [P1];
ffa01252:	09 64       	R1 += 0x1;		/* (  1) */
ffa01254:	68 98       	R0 = B[P5++] (X);
ffa01256:	0a 08       	CC = R2 == R1;
ffa01258:	82 5a       	P2 = P2 + P0;
ffa0125a:	10 9b       	B[P2] = R0;
ffa0125c:	f9 17       	IF !CC JUMP 0xffa0124e <_printf_hex+0x26> (BP);
ffa0125e:	02 32       	P0 = R2;
ffa01260:	4a 91       	P2 = [P1];
ffa01262:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01264:	1a 32       	P3 = R2;
ffa01266:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa01268:	82 5a       	P2 = P2 + P0;
ffa0126a:	10 9b       	B[P2] = R0;
ffa0126c:	4a 91       	P2 = [P1];
ffa0126e:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa01270:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01274:	10 6c       	P0 += 0x2;		/* (  2) */
ffa01276:	9a 5a       	P2 = P2 + P3;
ffa01278:	10 9b       	B[P2] = R0;
ffa0127a:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa0127c:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa0127e:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa01280:	b2 e0 10 50 	LSETUP(0xffa01284 <_printf_hex+0x5c>, 0xffa012a0 <_printf_hex+0x78>) LC1 = P5;
ffa01284:	07 30       	R0 = R7;
ffa01286:	08 40       	R0 >>>= R1;
ffa01288:	10 54       	R0 = R0 & R2;
ffa0128a:	18 09       	CC = R0 <= R3;
ffa0128c:	1e 1c       	IF CC JUMP 0xffa012c8 <_printf_hex+0xa0> (BP);
ffa0128e:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01290:	4a 91       	P2 = [P1];
ffa01292:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c34 <_g_streamEnabled> */
ffa01296:	0c e1 60 0e 	P4.L = 0xe60;		/* (3680)	P4=0xff900e60 <_printf_out> */
ffa0129a:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa0129c:	82 5a       	P2 = P2 + P0;
ffa0129e:	10 9b       	B[P2] = R0;
ffa012a0:	08 6c       	P0 += 0x1;		/* (  1) */
ffa012a2:	62 91       	P2 = [P4];
ffa012a4:	4b 32       	P1 = P3;
ffa012a6:	49 6c       	P1 += 0x9;		/* (  9) */
ffa012a8:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa012aa:	8a 5a       	P2 = P2 + P1;
ffa012ac:	10 9b       	B[P2] = R0;
ffa012ae:	62 91       	P2 = [P4];
ffa012b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa012b2:	8a 5a       	P2 = P2 + P1;
ffa012b4:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa012b8:	20 91       	R0 = [P4];
ffa012ba:	ff e3 f7 fe 	CALL 0xffa010a8 <_uart_str>;
ffa012be:	01 e8 00 00 	UNLINK;
ffa012c2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa012c4:	bb 05       	(R7:7, P5:3) = [SP++];
ffa012c6:	10 00       	RTS;
ffa012c8:	80 65       	R0 += 0x30;		/* ( 48) */
ffa012ca:	e3 2f       	JUMP.S 0xffa01290 <_printf_hex+0x68>;
ffa012cc:	01 e8 00 00 	UNLINK;
ffa012d0:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa012d2:	bb 05       	(R7:7, P5:3) = [SP++];
ffa012d4:	10 00       	RTS;
ffa012d6:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e60 <_printf_out> */
ffa012da:	09 e1 60 0e 	P1.L = 0xe60;		/* (3680)	P1=0xff900e60 <_printf_out> */
ffa012de:	c0 2f       	JUMP.S 0xffa0125e <_printf_hex+0x36>;

ffa012e0 <_printf_int>:
ffa012e0:	f3 05       	[--SP] = (R7:6, P5:3);
ffa012e2:	01 0c       	CC = R1 == 0x0;
ffa012e4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa012e8:	28 32       	P5 = R0;
ffa012ea:	39 30       	R7 = R1;
ffa012ec:	41 14       	IF !CC JUMP 0xffa0136e <_printf_int+0x8e> (BP);
ffa012ee:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c14 <_g_sampW> */
ffa012f2:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa012f6:	5a 91       	P2 = [P3];
ffa012f8:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa012fa:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa012fc:	10 9b       	B[P2] = R0;
ffa012fe:	45 30       	R0 = P5;
ffa01300:	00 e3 f4 00 	CALL 0xffa014e8 <_strlen_>;
ffa01304:	c6 50       	R3 = R6 + R0;
ffa01306:	10 30       	R2 = R0;
ffa01308:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa0130c:	03 09       	CC = R3 <= R0;
ffa0130e:	4e 10       	IF !CC JUMP 0xffa013aa <_printf_int+0xca>;
ffa01310:	02 0d       	CC = R2 <= 0x0;
ffa01312:	79 18       	IF CC JUMP 0xffa01404 <_printf_int+0x124>;
ffa01314:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e60 <_printf_out> */
ffa01318:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0131a:	08 e1 60 0e 	P0.L = 0xe60;		/* (3680)	P0=0xff900e60 <_printf_out> */
ffa0131e:	09 32       	P1 = R1;
ffa01320:	42 91       	P2 = [P0];
ffa01322:	09 64       	R1 += 0x1;		/* (  1) */
ffa01324:	68 98       	R0 = B[P5++] (X);
ffa01326:	0a 08       	CC = R2 == R1;
ffa01328:	8a 5a       	P2 = P2 + P1;
ffa0132a:	10 9b       	B[P2] = R0;
ffa0132c:	f9 17       	IF !CC JUMP 0xffa0131e <_printf_int+0x3e> (BP);
ffa0132e:	06 0d       	CC = R6 <= 0x0;
ffa01330:	12 18       	IF CC JUMP 0xffa01354 <_printf_int+0x74>;
ffa01332:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01334:	00 91       	R0 = [P0];
ffa01336:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa0133a:	5a 91 00 00 
ffa0133e:	08 50       	R0 = R0 + R1;
ffa01340:	08 32       	P1 = R0;
ffa01342:	0e 52       	R0 = R6 - R1;
ffa01344:	28 32       	P5 = R0;
ffa01346:	09 64       	R1 += 0x1;		/* (  1) */
ffa01348:	0e 08       	CC = R6 == R1;
ffa0134a:	aa 5a       	P2 = P2 + P5;
ffa0134c:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa01350:	08 9b       	B[P1] = R0;
ffa01352:	f1 17       	IF !CC JUMP 0xffa01334 <_printf_int+0x54> (BP);
ffa01354:	0b 32       	P1 = R3;
ffa01356:	42 91       	P2 = [P0];
ffa01358:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0135a:	91 5a       	P2 = P1 + P2;
ffa0135c:	10 9b       	B[P2] = R0;
ffa0135e:	00 91       	R0 = [P0];
ffa01360:	ff e3 a4 fe 	CALL 0xffa010a8 <_uart_str>;
ffa01364:	01 e8 00 00 	UNLINK;
ffa01368:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0136a:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0136c:	10 00       	RTS;
ffa0136e:	01 0d       	CC = R1 <= 0x0;
ffa01370:	22 18       	IF CC JUMP 0xffa013b4 <_printf_int+0xd4>;
ffa01372:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa01376:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01378:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa0137c:	05 20       	JUMP.S 0xffa01386 <_printf_int+0xa6>;
ffa0137e:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa01382:	06 08       	CC = R6 == R0;
ffa01384:	bd 1b       	IF CC JUMP 0xffa012fe <_printf_int+0x1e>;
ffa01386:	07 30       	R0 = R7;
ffa01388:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0138a:	00 e3 83 00 	CALL 0xffa01490 <_mod>;
ffa0138e:	0e 32       	P1 = R6;
ffa01390:	5a 91       	P2 = [P3];
ffa01392:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01394:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01396:	0e 64       	R6 += 0x1;		/* (  1) */
ffa01398:	8a 5a       	P2 = P2 + P1;
ffa0139a:	10 9b       	B[P2] = R0;
ffa0139c:	07 30       	R0 = R7;
ffa0139e:	00 e3 6b 00 	CALL 0xffa01474 <_div>;
ffa013a2:	00 0d       	CC = R0 <= 0x0;
ffa013a4:	38 30       	R7 = R0;
ffa013a6:	ec 17       	IF !CC JUMP 0xffa0137e <_printf_int+0x9e> (BP);
ffa013a8:	ab 2f       	JUMP.S 0xffa012fe <_printf_int+0x1e>;
ffa013aa:	01 e8 00 00 	UNLINK;
ffa013ae:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa013b0:	b3 05       	(R7:6, P5:3) = [SP++];
ffa013b2:	10 00       	RTS;
ffa013b4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa013b6:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa013b8:	f8 4f       	R0 <<= 0x1f;
ffa013ba:	f8 53       	R7 = R0 - R7;
ffa013bc:	07 0d       	CC = R7 <= 0x0;
ffa013be:	2c 18       	IF CC JUMP 0xffa01416 <_printf_int+0x136>;
ffa013c0:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa013c4:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa013c6:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa013ca:	05 20       	JUMP.S 0xffa013d4 <_printf_int+0xf4>;
ffa013cc:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa013d0:	4c 08       	CC = P4 == P1;
ffa013d2:	1e 18       	IF CC JUMP 0xffa0140e <_printf_int+0x12e>;
ffa013d4:	07 30       	R0 = R7;
ffa013d6:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa013d8:	00 e3 5c 00 	CALL 0xffa01490 <_mod>;
ffa013dc:	5a 91       	P2 = [P3];
ffa013de:	80 65       	R0 += 0x30;		/* ( 48) */
ffa013e0:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa013e2:	a2 5a       	P2 = P2 + P4;
ffa013e4:	10 9b       	B[P2] = R0;
ffa013e6:	07 30       	R0 = R7;
ffa013e8:	00 e3 46 00 	CALL 0xffa01474 <_div>;
ffa013ec:	00 0d       	CC = R0 <= 0x0;
ffa013ee:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa013f0:	38 30       	R7 = R0;
ffa013f2:	ed 17       	IF !CC JUMP 0xffa013cc <_printf_int+0xec> (BP);
ffa013f4:	74 30       	R6 = P4;
ffa013f6:	4c 32       	P1 = P4;
ffa013f8:	0e 64       	R6 += 0x1;		/* (  1) */
ffa013fa:	5a 91       	P2 = [P3];
ffa013fc:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa013fe:	8a 5a       	P2 = P2 + P1;
ffa01400:	10 9b       	B[P2] = R0;
ffa01402:	7e 2f       	JUMP.S 0xffa012fe <_printf_int+0x1e>;
ffa01404:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e60 <_printf_out> */
ffa01408:	08 e1 60 0e 	P0.L = 0xe60;		/* (3680)	P0=0xff900e60 <_printf_out> */
ffa0140c:	91 2f       	JUMP.S 0xffa0132e <_printf_int+0x4e>;
ffa0140e:	4c 32       	P1 = P4;
ffa01410:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa01414:	f3 2f       	JUMP.S 0xffa013fa <_printf_int+0x11a>;
ffa01416:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa0141a:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa0141c:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa0141e:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa01422:	ec 2f       	JUMP.S 0xffa013fa <_printf_int+0x11a>;

ffa01424 <_printf_ip>:
ffa01424:	70 05       	[--SP] = (R7:6);
ffa01426:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0142a:	39 30       	R7 = R1;
ffa0142c:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa01430:	49 43       	R1 = R1.B (Z);
ffa01432:	ff e3 57 ff 	CALL 0xffa012e0 <_printf_int>;
ffa01436:	06 e1 88 00 	R6.L = 0x88;		/* (136)	R6=0xff900088(-7339896) */
ffa0143a:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa0143e:	49 43       	R1 = R1.B (Z);
ffa01440:	06 30       	R0 = R6;
ffa01442:	ff e3 4f ff 	CALL 0xffa012e0 <_printf_int>;
ffa01446:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa0144a:	49 43       	R1 = R1.B (Z);
ffa0144c:	06 30       	R0 = R6;
ffa0144e:	c7 4e       	R7 >>= 0x18;
ffa01450:	ff e3 48 ff 	CALL 0xffa012e0 <_printf_int>;
ffa01454:	0f 30       	R1 = R7;
ffa01456:	06 30       	R0 = R6;
ffa01458:	ff e3 44 ff 	CALL 0xffa012e0 <_printf_int>;
ffa0145c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa01460:	00 e1 68 05 	R0.L = 0x568;		/* (1384)	R0=0xff900568(-7338648) */
ffa01464:	ff e3 7c fe 	CALL 0xffa0115c <_printf_str>;
ffa01468:	01 e8 00 00 	UNLINK;
ffa0146c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0146e:	30 05       	(R7:6) = [SP++];
ffa01470:	10 00       	RTS;
	...

ffa01474 <_div>:
ffa01474:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01478:	08 4f       	R0 <<= 0x1;
ffa0147a:	48 42       	DIVS (R0, R1);
ffa0147c:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa0147e:	b2 e0 03 20 	LSETUP(0xffa01482 <_div+0xe>, 0xffa01484 <_div+0x10>) LC1 = P2;
ffa01482:	08 42       	DIVQ (R0, R1);
ffa01484:	00 00       	NOP;
ffa01486:	80 42       	R0 = R0.L (X);
ffa01488:	01 e8 00 00 	UNLINK;
ffa0148c:	10 00       	RTS;
	...

ffa01490 <_mod>:
ffa01490:	70 05       	[--SP] = (R7:6);
ffa01492:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01496:	30 30       	R6 = R0;
ffa01498:	39 30       	R7 = R1;
ffa0149a:	ff e3 ed ff 	CALL 0xffa01474 <_div>;
ffa0149e:	c7 40       	R7 *= R0;
ffa014a0:	01 e8 00 00 	UNLINK;
ffa014a4:	be 53       	R6 = R6 - R7;
ffa014a6:	06 30       	R0 = R6;
ffa014a8:	30 05       	(R7:6) = [SP++];
ffa014aa:	10 00       	RTS;

ffa014ac <_memcpy_>:
ffa014ac:	02 0d       	CC = R2 <= 0x0;
ffa014ae:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa014b2:	08 32       	P1 = R0;
ffa014b4:	11 32       	P2 = R1;
ffa014b6:	08 18       	IF CC JUMP 0xffa014c6 <_memcpy_+0x1a>;
ffa014b8:	00 00       	NOP;
ffa014ba:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa014bc:	09 64       	R1 += 0x1;		/* (  1) */
ffa014be:	48 98       	R0 = B[P1++] (X);
ffa014c0:	0a 08       	CC = R2 == R1;
ffa014c2:	10 9a       	B[P2++] = R0;
ffa014c4:	fc 17       	IF !CC JUMP 0xffa014bc <_memcpy_+0x10> (BP);
ffa014c6:	01 e8 00 00 	UNLINK;
ffa014ca:	10 00       	RTS;

ffa014cc <_memset_>:
ffa014cc:	02 0d       	CC = R2 <= 0x0;
ffa014ce:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa014d2:	10 32       	P2 = R0;
ffa014d4:	06 18       	IF CC JUMP 0xffa014e0 <_memset_+0x14>;
ffa014d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa014d8:	08 64       	R0 += 0x1;		/* (  1) */
ffa014da:	02 08       	CC = R2 == R0;
ffa014dc:	11 9a       	B[P2++] = R1;
ffa014de:	fd 17       	IF !CC JUMP 0xffa014d8 <_memset_+0xc> (BP);
ffa014e0:	01 e8 00 00 	UNLINK;
ffa014e4:	10 00       	RTS;
	...

ffa014e8 <_strlen_>:
ffa014e8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa014ec:	10 32       	P2 = R0;
ffa014ee:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa014f0:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa014f4:	b2 e0 06 10 	LSETUP(0xffa014f8 <_strlen_+0x10>, 0xffa01500 <_strlen_+0x18>) LC1 = P1;
ffa014f8:	50 99       	R0 = B[P2] (X);
ffa014fa:	00 0c       	CC = R0 == 0x0;
ffa014fc:	04 18       	IF CC JUMP 0xffa01504 <_strlen_+0x1c>;
ffa014fe:	09 64       	R1 += 0x1;		/* (  1) */
ffa01500:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01502:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01504:	01 30       	R0 = R1;
ffa01506:	01 e8 00 00 	UNLINK;
ffa0150a:	10 00       	RTS;

ffa0150c <_strcpy_>:
ffa0150c:	12 32       	P2 = R2;
ffa0150e:	c5 04       	[--SP] = (P5:5);
ffa01510:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01514:	29 32       	P5 = R1;
ffa01516:	00 32       	P0 = R0;
ffa01518:	51 99       	R1 = B[P2] (X);
ffa0151a:	08 43       	R0 = R1.B (X);
ffa0151c:	00 0c       	CC = R0 == 0x0;
ffa0151e:	17 18       	IF CC JUMP 0xffa0154c <_strcpy_+0x40>;
ffa01520:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01522:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01524:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa01528:	b2 e0 09 10 	LSETUP(0xffa0152c <_strcpy_+0x20>, 0xffa0153a <_strcpy_+0x2e>) LC1 = P1;
ffa0152c:	01 9a       	B[P0++] = R1;
ffa0152e:	51 99       	R1 = B[P2] (X);
ffa01530:	08 43       	R0 = R1.B (X);
ffa01532:	00 0c       	CC = R0 == 0x0;
ffa01534:	0a 64       	R2 += 0x1;		/* (  1) */
ffa01536:	03 18       	IF CC JUMP 0xffa0153c <_strcpy_+0x30>;
ffa01538:	00 00       	NOP;
ffa0153a:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0153c:	01 e8 00 00 	UNLINK;
ffa01540:	28 91       	R0 = [P5];
ffa01542:	10 50       	R0 = R0 + R2;
ffa01544:	28 93       	[P5] = R0;
ffa01546:	40 30       	R0 = P0;
ffa01548:	85 04       	(P5:5) = [SP++];
ffa0154a:	10 00       	RTS;
ffa0154c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0154e:	f7 2f       	JUMP.S 0xffa0153c <_strcpy_+0x30>;

ffa01550 <_strprepend>:
ffa01550:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01552:	21 32       	P4 = R1;
ffa01554:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01558:	38 30       	R7 = R0;
ffa0155a:	02 30       	R0 = R2;
ffa0155c:	2a 32       	P5 = R2;
ffa0155e:	ff e3 c5 ff 	CALL 0xffa014e8 <_strlen_>;
ffa01562:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa01566:	20 91 00 00 
ffa0156a:	02 0d       	CC = R2 <= 0x0;
ffa0156c:	0a 18       	IF CC JUMP 0xffa01580 <_strprepend+0x30>;
ffa0156e:	07 52       	R0 = R7 - R0;
ffa01570:	10 32       	P2 = R0;
ffa01572:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01574:	09 64       	R1 += 0x1;		/* (  1) */
ffa01576:	68 98       	R0 = B[P5++] (X);
ffa01578:	0a 08       	CC = R2 == R1;
ffa0157a:	10 9a       	B[P2++] = R0;
ffa0157c:	fc 17       	IF !CC JUMP 0xffa01574 <_strprepend+0x24> (BP);
ffa0157e:	20 91       	R0 = [P4];
ffa01580:	01 e8 00 00 	UNLINK;
ffa01584:	07 52       	R0 = R7 - R0;
ffa01586:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01588:	10 00       	RTS;
	...

ffa0158c <_strcmp>:
ffa0158c:	10 32       	P2 = R0;
ffa0158e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01592:	01 32       	P0 = R1;
ffa01594:	51 99       	R1 = B[P2] (X);
ffa01596:	01 0c       	CC = R1 == 0x0;
ffa01598:	1b 18       	IF CC JUMP 0xffa015ce <_strcmp+0x42>;
ffa0159a:	00 00       	NOP;
ffa0159c:	00 00       	NOP;
ffa0159e:	00 00       	NOP;
ffa015a0:	40 99       	R0 = B[P0] (X);
ffa015a2:	00 0c       	CC = R0 == 0x0;
ffa015a4:	15 18       	IF CC JUMP 0xffa015ce <_strcmp+0x42>;
ffa015a6:	01 08       	CC = R1 == R0;
ffa015a8:	1c 10       	IF !CC JUMP 0xffa015e0 <_strcmp+0x54>;
ffa015aa:	4a 32       	P1 = P2;
ffa015ac:	50 32       	P2 = P0;
ffa015ae:	09 6c       	P1 += 0x1;		/* (  1) */
ffa015b0:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa015b2:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa015b6:	49 99       	R1 = B[P1] (X);
ffa015b8:	01 0c       	CC = R1 == 0x0;
ffa015ba:	0a 18       	IF CC JUMP 0xffa015ce <_strcmp+0x42>;
ffa015bc:	00 00       	NOP;
ffa015be:	00 00       	NOP;
ffa015c0:	00 00       	NOP;
ffa015c2:	50 99       	R0 = B[P2] (X);
ffa015c4:	00 0c       	CC = R0 == 0x0;
ffa015c6:	04 18       	IF CC JUMP 0xffa015ce <_strcmp+0x42>;
ffa015c8:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa015ca:	40 0c       	CC = P0 == 0x0;
ffa015cc:	05 10       	IF !CC JUMP 0xffa015d6 <_strcmp+0x4a>;
ffa015ce:	01 e8 00 00 	UNLINK;
ffa015d2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa015d4:	10 00       	RTS;
ffa015d6:	01 08       	CC = R1 == R0;
ffa015d8:	04 10       	IF !CC JUMP 0xffa015e0 <_strcmp+0x54>;
ffa015da:	09 6c       	P1 += 0x1;		/* (  1) */
ffa015dc:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa015de:	ec 2f       	JUMP.S 0xffa015b6 <_strcmp+0x2a>;
ffa015e0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa015e2:	01 e8 00 00 	UNLINK;
ffa015e6:	10 00       	RTS;

ffa015e8 <_substr>:
ffa015e8:	f4 05       	[--SP] = (R7:6, P5:4);
ffa015ea:	20 32       	P4 = R0;
ffa015ec:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa015f0:	11 32       	P2 = R1;
ffa015f2:	32 30       	R6 = R2;
ffa015f4:	61 99       	R1 = B[P4] (X);
ffa015f6:	01 0c       	CC = R1 == 0x0;
ffa015f8:	14 18       	IF CC JUMP 0xffa01620 <_substr+0x38>;
ffa015fa:	00 00       	NOP;
ffa015fc:	00 00       	NOP;
ffa015fe:	00 00       	NOP;
ffa01600:	50 99       	R0 = B[P2] (X);
ffa01602:	00 0c       	CC = R0 == 0x0;
ffa01604:	0e 18       	IF CC JUMP 0xffa01620 <_substr+0x38>;
ffa01606:	02 0d       	CC = R2 <= 0x0;
ffa01608:	0c 18       	IF CC JUMP 0xffa01620 <_substr+0x38>;
ffa0160a:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa0160c:	01 08       	CC = R1 == R0;
ffa0160e:	0f 18       	IF CC JUMP 0xffa0162c <_substr+0x44>;
ffa01610:	00 00       	NOP;
ffa01612:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01614:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01616:	50 99       	R0 = B[P2] (X);
ffa01618:	00 0c       	CC = R0 == 0x0;
ffa0161a:	03 18       	IF CC JUMP 0xffa01620 <_substr+0x38>;
ffa0161c:	1e 09       	CC = R6 <= R3;
ffa0161e:	f7 17       	IF !CC JUMP 0xffa0160c <_substr+0x24> (BP);
ffa01620:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa01622:	01 e8 00 00 	UNLINK;
ffa01626:	40 30       	R0 = P0;
ffa01628:	b4 05       	(R7:6, P5:4) = [SP++];
ffa0162a:	10 00       	RTS;
ffa0162c:	52 30       	R2 = P2;
ffa0162e:	3b 30       	R7 = R3;
ffa01630:	0a 64       	R2 += 0x1;		/* (  1) */
ffa01632:	0f 64       	R7 += 0x1;		/* (  1) */
ffa01634:	12 32       	P2 = R2;
ffa01636:	07 32       	P0 = R7;
ffa01638:	4c 32       	P1 = P4;
ffa0163a:	6c 32       	P5 = P4;
ffa0163c:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0163e:	15 6c       	P5 += 0x2;		/* (  2) */
ffa01640:	02 20       	JUMP.S 0xffa01644 <_substr+0x5c>;
ffa01642:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01644:	4b 99       	R3 = B[P1] (X);
ffa01646:	50 99       	R0 = B[P2] (X);
ffa01648:	03 08       	CC = R3 == R0;
ffa0164a:	0e 10       	IF !CC JUMP 0xffa01666 <_substr+0x7e>;
ffa0164c:	03 0c       	CC = R3 == 0x0;
ffa0164e:	0c 18       	IF CC JUMP 0xffa01666 <_substr+0x7e>;
ffa01650:	00 00       	NOP;
ffa01652:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01654:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01656:	68 98       	R0 = B[P5++] (X);
ffa01658:	00 0c       	CC = R0 == 0x0;
ffa0165a:	f4 17       	IF !CC JUMP 0xffa01642 <_substr+0x5a> (BP);
ffa0165c:	01 e8 00 00 	UNLINK;
ffa01660:	40 30       	R0 = P0;
ffa01662:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01664:	10 00       	RTS;
ffa01666:	12 32       	P2 = R2;
ffa01668:	1f 30       	R3 = R7;
ffa0166a:	d6 2f       	JUMP.S 0xffa01616 <_substr+0x2e>;

ffa0166c <_sprintf_int>:
ffa0166c:	fb 05       	[--SP] = (R7:7, P5:3);
ffa0166e:	01 0c       	CC = R1 == 0x0;
ffa01670:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01674:	00 34       	I0 = R0;
ffa01676:	11 30       	R2 = R1;
ffa01678:	1a 14       	IF !CC JUMP 0xffa016ac <_sprintf_int+0x40> (BP);
ffa0167a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa0167e:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa01682:	5a 91       	P2 = [P3];
ffa01684:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01686:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01688:	10 9b       	B[P2] = R0;
ffa0168a:	88 32       	P1 = I0;
ffa0168c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0168e:	0b 52       	R0 = R3 - R1;
ffa01690:	00 32       	P0 = R0;
ffa01692:	5a 91       	P2 = [P3];
ffa01694:	09 64       	R1 += 0x1;		/* (  1) */
ffa01696:	99 08       	CC = R1 < R3;
ffa01698:	82 5a       	P2 = P2 + P0;
ffa0169a:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa0169e:	08 9a       	B[P1++] = R0;
ffa016a0:	f7 1f       	IF CC JUMP 0xffa0168e <_sprintf_int+0x22> (BP);
ffa016a2:	01 e8 00 00 	UNLINK;
ffa016a6:	03 30       	R0 = R3;
ffa016a8:	bb 05       	(R7:7, P5:3) = [SP++];
ffa016aa:	10 00       	RTS;
ffa016ac:	01 0d       	CC = R1 <= 0x0;
ffa016ae:	2d 18       	IF CC JUMP 0xffa01708 <_sprintf_int+0x9c>;
ffa016b0:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa016b4:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa016b8:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa016ba:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa016be:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa016c2:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa016c4:	b2 e0 20 50 	LSETUP(0xffa016c8 <_sprintf_int+0x5c>, 0xffa01704 <_sprintf_int+0x98>) LC1 = P5;
ffa016c8:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa016cc:	59 91 00 00 
ffa016d0:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa016d4:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa016d8:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa016dc:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa016e0:	0b c4 00 00 	R0 = (A0 += A1);
ffa016e4:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa016e8:	10 4d       	R0 >>>= 0x2;
ffa016ea:	08 52       	R0 = R0 - R1;
ffa016ec:	00 32       	P0 = R0;
ffa016ee:	13 32       	P2 = R3;
ffa016f0:	0b 64       	R3 += 0x1;		/* (  1) */
ffa016f2:	40 0d       	CC = P0 <= 0x0;
ffa016f4:	51 5a       	P1 = P1 + P2;
ffa016f6:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa016f8:	92 5a       	P2 = P2 << 0x1;
ffa016fa:	4a 30       	R1 = P2;
ffa016fc:	0a 52       	R0 = R2 - R1;
ffa016fe:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01700:	08 9b       	B[P1] = R0;
ffa01702:	39 18       	IF CC JUMP 0xffa01774 <_sprintf_int+0x108>;
ffa01704:	50 30       	R2 = P0;
ffa01706:	c2 2f       	JUMP.S 0xffa0168a <_sprintf_int+0x1e>;
ffa01708:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0170a:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa0170c:	f8 4f       	R0 <<= 0x1f;
ffa0170e:	90 52       	R2 = R0 - R2;
ffa01710:	02 0d       	CC = R2 <= 0x0;
ffa01712:	3c 18       	IF CC JUMP 0xffa0178a <_sprintf_int+0x11e>;
ffa01714:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa01718:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa0171c:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa0171e:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa01722:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa01726:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa01728:	b2 e0 1f 50 	LSETUP(0xffa0172c <_sprintf_int+0xc0>, 0xffa01766 <_sprintf_int+0xfa>) LC1 = P5;
ffa0172c:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa01730:	59 91 00 00 
ffa01734:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01738:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa0173c:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa01740:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01744:	0b c4 00 00 	R0 = (A0 += A1);
ffa01748:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa0174c:	10 4d       	R0 >>>= 0x2;
ffa0174e:	08 52       	R0 = R0 - R1;
ffa01750:	00 32       	P0 = R0;
ffa01752:	61 5a       	P1 = P1 + P4;
ffa01754:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa01756:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa01758:	92 5a       	P2 = P2 << 0x1;
ffa0175a:	4a 30       	R1 = P2;
ffa0175c:	0a 52       	R0 = R2 - R1;
ffa0175e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01760:	40 0d       	CC = P0 <= 0x0;
ffa01762:	08 9b       	B[P1] = R0;
ffa01764:	0f 18       	IF CC JUMP 0xffa01782 <_sprintf_int+0x116>;
ffa01766:	50 30       	R2 = P0;
ffa01768:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa0176a:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa0176c:	5a 91       	P2 = [P3];
ffa0176e:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa01770:	8a 5a       	P2 = P2 + P1;
ffa01772:	10 9b       	B[P2] = R0;
ffa01774:	03 0d       	CC = R3 <= 0x0;
ffa01776:	8a 17       	IF !CC JUMP 0xffa0168a <_sprintf_int+0x1e> (BP);
ffa01778:	01 e8 00 00 	UNLINK;
ffa0177c:	03 30       	R0 = R3;
ffa0177e:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01780:	10 00       	RTS;
ffa01782:	5c 30       	R3 = P4;
ffa01784:	4c 32       	P1 = P4;
ffa01786:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01788:	f2 2f       	JUMP.S 0xffa0176c <_sprintf_int+0x100>;
ffa0178a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa0178e:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa01790:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01792:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa01796:	eb 2f       	JUMP.S 0xffa0176c <_sprintf_int+0x100>;

ffa01798 <_sprintf_hex>:
ffa01798:	10 32       	P2 = R0;
ffa0179a:	78 05       	[--SP] = (R7:7);
ffa0179c:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0179e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa017a2:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa017a4:	10 9b       	B[P2] = R0;
ffa017a6:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa017aa:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa017ae:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa017b0:	12 6c       	P2 += 0x2;		/* (  2) */
ffa017b2:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa017b4:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa017b6:	b2 e0 09 10 	LSETUP(0xffa017ba <_sprintf_hex+0x22>, 0xffa017c8 <_sprintf_hex+0x30>) LC1 = P1;
ffa017ba:	01 30       	R0 = R1;
ffa017bc:	10 40       	R0 >>>= R2;
ffa017be:	18 54       	R0 = R0 & R3;
ffa017c0:	38 09       	CC = R0 <= R7;
ffa017c2:	09 1c       	IF CC JUMP 0xffa017d4 <_sprintf_hex+0x3c> (BP);
ffa017c4:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa017c6:	10 9a       	B[P2++] = R0;
ffa017c8:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa017ca:	01 e8 00 00 	UNLINK;
ffa017ce:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa017d0:	38 05       	(R7:7) = [SP++];
ffa017d2:	10 00       	RTS;
ffa017d4:	80 65       	R0 += 0x30;		/* ( 48) */
ffa017d6:	f8 2f       	JUMP.S 0xffa017c6 <_sprintf_hex+0x2e>;

ffa017d8 <_strprintf_int>:
ffa017d8:	fd 05       	[--SP] = (R7:7, P5:5);
ffa017da:	29 32       	P5 = R1;
ffa017dc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa017e0:	0a 30       	R1 = R2;
ffa017e2:	38 30       	R7 = R0;
ffa017e4:	ff e3 44 ff 	CALL 0xffa0166c <_sprintf_int>;
ffa017e8:	29 91       	R1 = [P5];
ffa017ea:	41 50       	R1 = R1 + R0;
ffa017ec:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa017f0:	29 93 00 00 
ffa017f4:	01 e8 00 00 	UNLINK;
ffa017f8:	07 30       	R0 = R7;
ffa017fa:	bd 05       	(R7:7, P5:5) = [SP++];
ffa017fc:	10 00       	RTS;
	...

ffa01800 <_strprintf_hex>:
ffa01800:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01802:	29 32       	P5 = R1;
ffa01804:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01808:	0a 30       	R1 = R2;
ffa0180a:	38 30       	R7 = R0;
ffa0180c:	ff e3 c6 ff 	CALL 0xffa01798 <_sprintf_hex>;
ffa01810:	29 91       	R1 = [P5];
ffa01812:	41 50       	R1 = R1 + R0;
ffa01814:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa01818:	29 93 00 00 
ffa0181c:	01 e8 00 00 	UNLINK;
ffa01820:	07 30       	R0 = R7;
ffa01822:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01824:	10 00       	RTS;
	...

ffa01828 <_atoi>:
ffa01828:	08 32       	P1 = R0;
ffa0182a:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa0182c:	f5 05       	[--SP] = (R7:6, P5:5);
ffa0182e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01832:	48 99       	R0 = B[P1] (X);
ffa01834:	10 08       	CC = R0 == R2;
ffa01836:	25 18       	IF CC JUMP 0xffa01880 <_atoi+0x58>;
ffa01838:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa0183a:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa0183c:	41 32       	P0 = P1;
ffa0183e:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01840:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa01842:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa01844:	12 20       	JUMP.S 0xffa01868 <_atoi+0x40>;
ffa01846:	8b 08       	CC = R3 < R1;
ffa01848:	16 10       	IF !CC JUMP 0xffa01874 <_atoi+0x4c>;
ffa0184a:	10 43       	R0 = R2.B (X);
ffa0184c:	28 32       	P5 = R0;
ffa0184e:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa01850:	40 99       	R0 = B[P0] (X);
ffa01852:	80 66       	R0 += -0x30;		/* (-48) */
ffa01854:	40 43       	R0 = R0.B (Z);
ffa01856:	aa 5a       	P2 = P2 + P5;
ffa01858:	10 0a       	CC = R0 <= R2 (IU);
ffa0185a:	82 6e       	P2 += -0x30;		/* (-48) */
ffa0185c:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0185e:	03 14       	IF !CC JUMP 0xffa01864 <_atoi+0x3c> (BP);
ffa01860:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa01862:	92 5a       	P2 = P2 << 0x1;
ffa01864:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01866:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01868:	4a 99       	R2 = B[P1] (X);
ffa0186a:	02 30       	R0 = R2;
ffa0186c:	80 66       	R0 += -0x30;		/* (-48) */
ffa0186e:	40 43       	R0 = R0.B (Z);
ffa01870:	30 0a       	CC = R0 <= R6 (IU);
ffa01872:	ea 1f       	IF CC JUMP 0xffa01846 <_atoi+0x1e> (BP);
ffa01874:	42 30       	R0 = P2;
ffa01876:	f8 40       	R0 *= R7;
ffa01878:	01 e8 00 00 	UNLINK;
ffa0187c:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0187e:	10 00       	RTS;
ffa01880:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01882:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01884:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01886:	db 2f       	JUMP.S 0xffa0183c <_atoi+0x14>;

ffa01888 <_udelay>:
ffa01888:	00 0d       	CC = R0 <= 0x0;
ffa0188a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0188e:	0b 18       	IF CC JUMP 0xffa018a4 <_udelay+0x1c>;
ffa01890:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01892:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa01896:	b2 e0 03 20 	LSETUP(0xffa0189a <_udelay+0x12>, 0xffa0189c <_udelay+0x14>) LC1 = P2;
ffa0189a:	00 00       	NOP;
ffa0189c:	00 00       	NOP;
ffa0189e:	09 64       	R1 += 0x1;		/* (  1) */
ffa018a0:	08 08       	CC = R0 == R1;
ffa018a2:	f8 17       	IF !CC JUMP 0xffa01892 <_udelay+0xa> (BP);
ffa018a4:	01 e8 00 00 	UNLINK;
ffa018a8:	10 00       	RTS;
	...

ffa018ac <_bfin_EMAC_send_check>:
ffa018ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa018b0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa018b4:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa018b8:	50 95       	R0 = W[P2] (X);
ffa018ba:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa018bc:	00 02       	R0 = CC;
ffa018be:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa018c0:	01 e8 00 00 	UNLINK;
ffa018c4:	10 00       	RTS;
	...

ffa018c8 <_FormatIPAddress>:
ffa018c8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa018cc:	18 30       	R3 = R0;
ffa018ce:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa018d2:	40 4f       	R0 <<= 0x8;
ffa018d4:	52 43       	R2 = R2.B (Z);
ffa018d6:	10 56       	R0 = R0 | R2;
ffa018d8:	40 4f       	R0 <<= 0x8;
ffa018da:	49 43       	R1 = R1.B (Z);
ffa018dc:	08 56       	R0 = R0 | R1;
ffa018de:	40 4f       	R0 <<= 0x8;
ffa018e0:	5b 43       	R3 = R3.B (Z);
ffa018e2:	18 56       	R0 = R0 | R3;
ffa018e4:	01 e8 00 00 	UNLINK;
ffa018e8:	10 00       	RTS;
	...

ffa018ec <_bfin_EMAC_halt>:
ffa018ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa018f0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018f2:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa018f6:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa018fa:	10 93       	[P2] = R0;
ffa018fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01900:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa01904:	10 97       	W[P2] = R0;
ffa01906:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa0190a:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa0190e:	10 97       	W[P2] = R0;
ffa01910:	01 e8 00 00 	UNLINK;
ffa01914:	10 00       	RTS;
	...

ffa01918 <_PollMdcDone>:
ffa01918:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0191c:	02 20       	JUMP.S 0xffa01920 <_PollMdcDone+0x8>;
ffa0191e:	00 00       	NOP;
ffa01920:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01924:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01928:	10 91       	R0 = [P2];
ffa0192a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0192c:	f9 17       	IF !CC JUMP 0xffa0191e <_PollMdcDone+0x6> (BP);
ffa0192e:	01 e8 00 00 	UNLINK;
ffa01932:	10 00       	RTS;

ffa01934 <_WrPHYReg>:
ffa01934:	68 05       	[--SP] = (R7:5);
ffa01936:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0193a:	28 30       	R5 = R0;
ffa0193c:	31 30       	R6 = R1;
ffa0193e:	3a 30       	R7 = R2;
ffa01940:	ff e3 ec ff 	CALL 0xffa01918 <_PollMdcDone>;
ffa01944:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01946:	b0 55       	R6 = R0 & R6;
ffa01948:	28 54       	R0 = R0 & R5;
ffa0194a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0194e:	58 4f       	R0 <<= 0xb;
ffa01950:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa01952:	ff 42       	R7 = R7.L (Z);
ffa01954:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01958:	36 4f       	R6 <<= 0x6;
ffa0195a:	08 56       	R0 = R0 | R1;
ffa0195c:	17 93       	[P2] = R7;
ffa0195e:	86 57       	R6 = R6 | R0;
ffa01960:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa01962:	16 93       	[P2] = R6;
ffa01964:	01 e8 00 00 	UNLINK;
ffa01968:	28 05       	(R7:5) = [SP++];
ffa0196a:	10 00       	RTS;

ffa0196c <_RdPHYReg>:
ffa0196c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0196e:	29 32       	P5 = R1;
ffa01970:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01974:	38 30       	R7 = R0;
ffa01976:	ff e3 d1 ff 	CALL 0xffa01918 <_PollMdcDone>;
ffa0197a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa0197e:	45 30       	R0 = P5;
ffa01980:	c0 42       	R0 = R0.L (Z);
ffa01982:	28 32       	P5 = R0;
ffa01984:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01986:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa0198a:	55 30       	R2 = P5;
ffa0198c:	42 54       	R1 = R2 & R0;
ffa0198e:	38 54       	R0 = R0 & R7;
ffa01990:	58 4f       	R0 <<= 0xb;
ffa01992:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa01994:	31 4f       	R1 <<= 0x6;
ffa01996:	41 56       	R1 = R1 | R0;
ffa01998:	11 93       	[P2] = R1;
ffa0199a:	ff e3 bf ff 	CALL 0xffa01918 <_PollMdcDone>;
ffa0199e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa019a2:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa019a6:	10 91       	R0 = [P2];
ffa019a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa019ac:	0a e1 64 0e 	P2.L = 0xe64;		/* (3684)	P2=0xff900e64 <_PHYregs> */
ffa019b0:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa019b2:	10 97       	W[P2] = R0;
ffa019b4:	01 e8 00 00 	UNLINK;
ffa019b8:	c0 42       	R0 = R0.L (Z);
ffa019ba:	bd 05       	(R7:7, P5:5) = [SP++];
ffa019bc:	10 00       	RTS;
	...

ffa019c0 <_SoftResetPHY>:
ffa019c0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa019c2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa019c4:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa019c8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa019cc:	ff e3 b4 ff 	CALL 0xffa01934 <_WrPHYReg>;
ffa019d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa019d2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa019d4:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa019d6:	ff e3 af ff 	CALL 0xffa01934 <_WrPHYReg>;
ffa019da:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa019dc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa019de:	ff e3 c7 ff 	CALL 0xffa0196c <_RdPHYReg>;
ffa019e2:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa019e4:	fb 1f       	IF CC JUMP 0xffa019da <_SoftResetPHY+0x1a> (BP);
ffa019e6:	01 e8 00 00 	UNLINK;
ffa019ea:	10 00       	RTS;

ffa019ec <_NetCksum>:
ffa019ec:	01 0d       	CC = R1 <= 0x0;
ffa019ee:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa019f2:	10 18       	IF CC JUMP 0xffa01a12 <_NetCksum+0x26>;
ffa019f4:	10 32       	P2 = R0;
ffa019f6:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa019f8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa019fa:	0a 64       	R2 += 0x1;		/* (  1) */
ffa019fc:	10 94       	R0 = W[P2++] (Z);
ffa019fe:	0a 08       	CC = R2 == R1;
ffa01a00:	c3 50       	R3 = R3 + R0;
ffa01a02:	fc 17       	IF !CC JUMP 0xffa019fa <_NetCksum+0xe> (BP);
ffa01a04:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa01a08:	03 50       	R0 = R3 + R0;
ffa01a0a:	c0 42       	R0 = R0.L (Z);
ffa01a0c:	01 e8 00 00 	UNLINK;
ffa01a10:	10 00       	RTS;
ffa01a12:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a14:	01 e8 00 00 	UNLINK;
ffa01a18:	10 00       	RTS;
	...

ffa01a1c <_htons>:
ffa01a1c:	08 30       	R1 = R0;
ffa01a1e:	c0 42       	R0 = R0.L (Z);
ffa01a20:	40 4e       	R0 >>= 0x8;
ffa01a22:	41 4f       	R1 <<= 0x8;
ffa01a24:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01a28:	08 56       	R0 = R0 | R1;
ffa01a2a:	c0 42       	R0 = R0.L (Z);
ffa01a2c:	01 e8 00 00 	UNLINK;
ffa01a30:	10 00       	RTS;
	...

ffa01a34 <_htonl>:
ffa01a34:	10 30       	R2 = R0;
ffa01a36:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa01a3a:	40 43       	R0 = R0.B (Z);
ffa01a3c:	49 43       	R1 = R1.B (Z);
ffa01a3e:	40 4f       	R0 <<= 0x8;
ffa01a40:	08 56       	R0 = R0 | R1;
ffa01a42:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa01a46:	40 4f       	R0 <<= 0x8;
ffa01a48:	49 43       	R1 = R1.B (Z);
ffa01a4a:	08 56       	R0 = R0 | R1;
ffa01a4c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01a50:	40 4f       	R0 <<= 0x8;
ffa01a52:	c2 4e       	R2 >>= 0x18;
ffa01a54:	10 56       	R0 = R0 | R2;
ffa01a56:	01 e8 00 00 	UNLINK;
ffa01a5a:	10 00       	RTS;

ffa01a5c <_pack4chars>:
ffa01a5c:	08 32       	P1 = R0;
ffa01a5e:	10 32       	P2 = R0;
ffa01a60:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01a64:	01 e8 00 00 	UNLINK;
ffa01a68:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa01a6c:	10 98       	R0 = B[P2++] (Z);
ffa01a6e:	41 4f       	R1 <<= 0x8;
ffa01a70:	08 50       	R0 = R0 + R1;
ffa01a72:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa01a76:	81 4f       	R1 <<= 0x10;
ffa01a78:	08 50       	R0 = R0 + R1;
ffa01a7a:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa01a7e:	c1 4f       	R1 <<= 0x18;
ffa01a80:	08 50       	R0 = R0 + R1;
ffa01a82:	10 00       	RTS;

ffa01a84 <_ip_header_setup>:
ffa01a84:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01a86:	28 32       	P5 = R0;
ffa01a88:	21 32       	P4 = R1;
ffa01a8a:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01a8e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01a92:	32 30       	R6 = R2;
ffa01a94:	28 9b       	B[P5] = R0;
ffa01a96:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a98:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa01a9c:	27 91       	R7 = [P4];
ffa01a9e:	f8 42       	R0 = R7.L (Z);
ffa01aa0:	ff e3 be ff 	CALL 0xffa01a1c <_htons>;
ffa01aa4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e64 <_PHYregs> */
ffa01aa8:	0a e1 ae 0e 	P2.L = 0xeae;		/* (3758)	P2=0xff900eae <_NetIPID> */
ffa01aac:	68 b4       	W[P5 + 0x2] = R0;
ffa01aae:	10 95       	R0 = W[P2] (Z);
ffa01ab0:	08 30       	R1 = R0;
ffa01ab2:	09 64       	R1 += 0x1;		/* (  1) */
ffa01ab4:	67 67       	R7 += -0x14;		/* (-20) */
ffa01ab6:	11 97       	W[P2] = R1;
ffa01ab8:	27 93       	[P4] = R7;
ffa01aba:	ff e3 b1 ff 	CALL 0xffa01a1c <_htons>;
ffa01abe:	a8 b4       	W[P5 + 0x4] = R0;
ffa01ac0:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01ac4:	ff e3 ac ff 	CALL 0xffa01a1c <_htons>;
ffa01ac8:	e8 b4       	W[P5 + 0x6] = R0;
ffa01aca:	82 c6 46 01 	R0 = R6 >>> 0x18;
ffa01ace:	c0 4f       	R0 <<= 0x18;
ffa01ad0:	00 0c       	CC = R0 == 0x0;
ffa01ad2:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01ad4:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01ad8:	01 07       	IF CC R0 = R1;
ffa01ada:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01ade:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eae <_NetIPID> */
ffa01ae2:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa01ae6:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01aea:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa01aee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01af0:	68 b5       	W[P5 + 0xa] = R0;
ffa01af2:	10 91       	R0 = [P2];
ffa01af4:	e8 b0       	[P5 + 0xc] = R0;
ffa01af6:	2e b1       	[P5 + 0x10] = R6;
ffa01af8:	45 30       	R0 = P5;
ffa01afa:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01afc:	ff e3 78 ff 	CALL 0xffa019ec <_NetCksum>;
ffa01b00:	c0 43       	R0 =~ R0;
ffa01b02:	68 b5       	W[P5 + 0xa] = R0;
ffa01b04:	01 e8 00 00 	UNLINK;
ffa01b08:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01b0a:	45 30       	R0 = P5;
ffa01b0c:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01b0e:	10 00       	RTS;

ffa01b10 <_ip_header_checksum>:
ffa01b10:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b14:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa01b16:	ff e3 6b ff 	CALL 0xffa019ec <_NetCksum>;
ffa01b1a:	08 02       	CC = R0;
ffa01b1c:	00 02       	R0 = CC;
ffa01b1e:	01 e8 00 00 	UNLINK;
ffa01b22:	10 00       	RTS;

ffa01b24 <_icmp_header_setup>:
ffa01b24:	00 32       	P0 = R0;
ffa01b26:	c5 04       	[--SP] = (P5:5);
ffa01b28:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b2a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01b2e:	29 32       	P5 = R1;
ffa01b30:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa01b34:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b36:	40 b4       	W[P0 + 0x2] = R0;
ffa01b38:	38 ab       	R0 = W[FP + 0x18] (X);
ffa01b3a:	80 b4       	W[P0 + 0x4] = R0;
ffa01b3c:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa01b3e:	02 9b       	B[P0] = R2;
ffa01b40:	c0 b4       	W[P0 + 0x6] = R0;
ffa01b42:	48 32       	P1 = P0;
ffa01b44:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01b46:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa01b48:	b2 e0 03 20 	LSETUP(0xffa01b4c <_icmp_header_setup+0x28>, 0xffa01b4e <_icmp_header_setup+0x2a>) LC1 = P2;
ffa01b4c:	08 94       	R0 = W[P1++] (Z);
ffa01b4e:	41 50       	R1 = R1 + R0;
ffa01b50:	c8 42       	R0 = R1.L (Z);
ffa01b52:	81 4e       	R1 >>= 0x10;
ffa01b54:	08 50       	R0 = R0 + R1;
ffa01b56:	c0 43       	R0 =~ R0;
ffa01b58:	40 b4       	W[P0 + 0x2] = R0;
ffa01b5a:	28 91       	R0 = [P5];
ffa01b5c:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa01b5e:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01b60:	01 e8 00 00 	UNLINK;
ffa01b64:	28 93       	[P5] = R0;
ffa01b66:	40 30       	R0 = P0;
ffa01b68:	85 04       	(P5:5) = [SP++];
ffa01b6a:	10 00       	RTS;

ffa01b6c <_udp_header_setup>:
ffa01b6c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01b6e:	28 32       	P5 = R0;
ffa01b70:	21 32       	P4 = R1;
ffa01b72:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b76:	d0 42       	R0 = R2.L (Z);
ffa01b78:	ff e3 52 ff 	CALL 0xffa01a1c <_htons>;
ffa01b7c:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa01b80:	28 97       	W[P5] = R0;
ffa01b82:	07 30       	R0 = R7;
ffa01b84:	ff e3 4c ff 	CALL 0xffa01a1c <_htons>;
ffa01b88:	27 91       	R7 = [P4];
ffa01b8a:	68 b4       	W[P5 + 0x2] = R0;
ffa01b8c:	f8 42       	R0 = R7.L (Z);
ffa01b8e:	ff e3 47 ff 	CALL 0xffa01a1c <_htons>;
ffa01b92:	a8 b4       	W[P5 + 0x4] = R0;
ffa01b94:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b96:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa01b98:	e8 b4       	W[P5 + 0x6] = R0;
ffa01b9a:	01 e8 00 00 	UNLINK;
ffa01b9e:	45 6c       	P5 += 0x8;		/* (  8) */
ffa01ba0:	45 30       	R0 = P5;
ffa01ba2:	27 93       	[P4] = R7;
ffa01ba4:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01ba6:	10 00       	RTS;

ffa01ba8 <_tcp_header_setup>:
ffa01ba8:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01baa:	28 32       	P5 = R0;
ffa01bac:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01bb0:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01bb4:	21 32       	P4 = R1;
ffa01bb6:	3a 30       	R7 = R2;
ffa01bb8:	ff e3 32 ff 	CALL 0xffa01a1c <_htons>;
ffa01bbc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa01bc0:	0a e1 d0 0f 	P2.L = 0xfd0;		/* (4048)	P2=0xff900fd0 <_TcpClientPort> */
ffa01bc4:	28 97       	W[P5] = R0;
ffa01bc6:	50 95       	R0 = W[P2] (X);
ffa01bc8:	68 b4       	W[P5 + 0x2] = R0;
ffa01bca:	38 a2       	R0 = [FP + 0x20];
ffa01bcc:	ff e3 34 ff 	CALL 0xffa01a34 <_htonl>;
ffa01bd0:	68 b0       	[P5 + 0x4] = R0;
ffa01bd2:	78 a2       	R0 = [FP + 0x24];
ffa01bd4:	ff e3 30 ff 	CALL 0xffa01a34 <_htonl>;
ffa01bd8:	a8 b0       	[P5 + 0x8] = R0;
ffa01bda:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01bde:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01be2:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa01be6:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa01bea:	ff e3 19 ff 	CALL 0xffa01a1c <_htons>;
ffa01bee:	e8 b5       	W[P5 + 0xe] = R0;
ffa01bf0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01bf2:	28 b6       	W[P5 + 0x10] = R0;
ffa01bf4:	68 b6       	W[P5 + 0x12] = R0;
ffa01bf6:	20 91       	R0 = [P4];
ffa01bf8:	60 67       	R0 += -0x14;		/* (-20) */
ffa01bfa:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01bfc:	01 e8 00 00 	UNLINK;
ffa01c00:	20 93       	[P4] = R0;
ffa01c02:	45 30       	R0 = P5;
ffa01c04:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01c06:	10 00       	RTS;

ffa01c08 <_bfin_EMAC_send_nocopy>:
ffa01c08:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00fd0(-4190256) */
ffa01c0c:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01c0e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01c12:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01c16:	10 97       	W[P2] = R0;
ffa01c18:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01c1c:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01c20:	50 95       	R0 = W[P2] (X);
ffa01c22:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01c24:	59 10       	IF !CC JUMP 0xffa01cd6 <_bfin_EMAC_send_nocopy+0xce>;
ffa01c26:	00 00       	NOP;
ffa01c28:	00 00       	NOP;
ffa01c2a:	00 00       	NOP;
ffa01c2c:	50 95       	R0 = W[P2] (X);
ffa01c2e:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01c30:	16 18       	IF CC JUMP 0xffa01c5c <_bfin_EMAC_send_nocopy+0x54>;
ffa01c32:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0008 */
ffa01c36:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01c3a:	b2 e0 09 10 	LSETUP(0xffa01c3e <_bfin_EMAC_send_nocopy+0x36>, 0xffa01c4c <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa01c3e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01c42:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01c46:	50 95       	R0 = W[P2] (X);
ffa01c48:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01c4a:	09 18       	IF CC JUMP 0xffa01c5c <_bfin_EMAC_send_nocopy+0x54>;
ffa01c4c:	00 00       	NOP;
ffa01c4e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa01c52:	00 e1 08 01 	R0.L = 0x108;		/* (264)	R0=0xff900108(-7339768) */
ffa01c56:	ff e3 83 fa 	CALL 0xffa0115c <_printf_str>;
ffa01c5a:	30 20       	JUMP.S 0xffa01cba <_bfin_EMAC_send_nocopy+0xb2>;
ffa01c5c:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa01c60:	08 e1 ac 0e 	P0.L = 0xeac;		/* (3756)	P0=0xff900eac <_txIdx> */
ffa01c64:	00 95       	R0 = W[P0] (Z);
ffa01c66:	10 32       	P2 = R0;
ffa01c68:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01c6c:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa01c70:	42 95       	R2 = W[P0] (X);
ffa01c72:	d1 42       	R1 = R2.L (Z);
ffa01c74:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01c76:	52 91       	P2 = [P2];
ffa01c78:	11 0d       	CC = R1 <= 0x2;
ffa01c7a:	90 a1       	R0 = [P2 + 0x18];
ffa01c7c:	50 b0       	[P2 + 0x4] = R0;
ffa01c7e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c80:	90 b2       	[P2 + 0x28] = R0;
ffa01c82:	11 32       	P2 = R1;
ffa01c84:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa01c86:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01c8a:	08 91       	R0 = [P1];
ffa01c8c:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01c90:	10 93       	[P2] = R0;
ffa01c92:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01c96:	0a e1 fa 04 	P2.L = 0x4fa;		/* (1274)	P2=0xff9004fa <_txdmacfg> */
ffa01c9a:	50 95       	R0 = W[P2] (X);
ffa01c9c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004fa(-4193030) */
ffa01ca0:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01ca4:	10 97       	W[P2] = R0;
ffa01ca6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01caa:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01cae:	10 91       	R0 = [P2];
ffa01cb0:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01cb2:	10 93       	[P2] = R0;
ffa01cb4:	0d 1c       	IF CC JUMP 0xffa01cce <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa01cb6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01cb8:	00 97       	W[P0] = R0;
ffa01cba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01cbe:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01cc0:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01cc4:	10 97       	W[P2] = R0;
ffa01cc6:	01 e8 00 00 	UNLINK;
ffa01cca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ccc:	10 00       	RTS;
ffa01cce:	02 30       	R0 = R2;
ffa01cd0:	08 64       	R0 += 0x1;		/* (  1) */
ffa01cd2:	00 97       	W[P0] = R0;
ffa01cd4:	f3 2f       	JUMP.S 0xffa01cba <_bfin_EMAC_send_nocopy+0xb2>;
ffa01cd6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01cda:	00 e1 f0 00 	R0.L = 0xf0;		/* (240)	R0=0xff9000f0(-7339792) */
ffa01cde:	ff e3 3f fa 	CALL 0xffa0115c <_printf_str>;
ffa01ce2:	ec 2f       	JUMP.S 0xffa01cba <_bfin_EMAC_send_nocopy+0xb2>;

ffa01ce4 <_DHCP_tx>:
ffa01ce4:	e3 05       	[--SP] = (R7:4, P5:3);
ffa01ce6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa01cea:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01cee:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa01cf2:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa01cf6:	10 95 00 00 
ffa01cfa:	10 32       	P2 = R0;
ffa01cfc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900eb0 <_txbuf> */
ffa01d00:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa01d04:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa01d08:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01d0a:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01d0c:	52 91       	P2 = [P2];
ffa01d0e:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa01d12:	f1 bb 00 00 
ffa01d16:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90000b */
ffa01d1a:	0d e1 d4 0e 	P5.L = 0xed4;		/* (3796)	P5=0xff900ed4 <_NetOurMAC> */
ffa01d1e:	94 ad       	P4 = [P2 + 0x18];
ffa01d20:	1a 32       	P3 = R2;
ffa01d22:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01d24:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01d26:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa01d2a:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa01d2e:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa01d32:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa01d36:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa01d3a:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa01d3e:	20 97       	W[P4] = R0;
ffa01d40:	68 99       	R0 = B[P5] (X);
ffa01d42:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa01d46:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01d4a:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa01d4e:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01d52:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa01d56:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01d5a:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa01d5e:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01d62:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa01d66:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01d6a:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa01d6e:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01d72:	ff e3 55 fe 	CALL 0xffa01a1c <_htons>;
ffa01d76:	e0 b5       	W[P4 + 0xe] = R0;
ffa01d78:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01d7c:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa01d80:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa01d84:	04 50       	R0 = R4 + R0;
ffa01d86:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa01d8a:	c0 42       	R0 = R0.L (Z);
ffa01d8c:	ff e3 48 fe 	CALL 0xffa01a1c <_htons>;
ffa01d90:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa01d94:	0a e1 ae 0e 	P2.L = 0xeae;		/* (3758)	P2=0xff900eae <_NetIPID> */
ffa01d98:	60 b6       	W[P4 + 0x12] = R0;
ffa01d9a:	10 95       	R0 = W[P2] (Z);
ffa01d9c:	08 30       	R1 = R0;
ffa01d9e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01da0:	11 97       	W[P2] = R1;
ffa01da2:	ff e3 3d fe 	CALL 0xffa01a1c <_htons>;
ffa01da6:	a0 b6       	W[P4 + 0x14] = R0;
ffa01da8:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01dac:	ff e3 38 fe 	CALL 0xffa01a1c <_htons>;
ffa01db0:	e0 b6       	W[P4 + 0x16] = R0;
ffa01db2:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01db4:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa01db8:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa01dbc:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa01dc0:	66 b7 00 00 
ffa01dc4:	44 30       	R0 = P4;
ffa01dc6:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01dc8:	e7 b1       	[P4 + 0x1c] = R7;
ffa01dca:	23 be       	[P4 + 0x20] = P3;
ffa01dcc:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01dce:	ff e3 0f fe 	CALL 0xffa019ec <_NetCksum>;
ffa01dd2:	c0 43       	R0 =~ R0;
ffa01dd4:	60 b7       	W[P4 + 0x1a] = R0;
ffa01dd6:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa01dda:	ff e3 21 fe 	CALL 0xffa01a1c <_htons>;
ffa01dde:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa01de2:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa01de6:	ff e3 1b fe 	CALL 0xffa01a1c <_htons>;
ffa01dea:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa01dee:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa01df2:	04 50       	R0 = R4 + R0;
ffa01df4:	c0 42       	R0 = R0.L (Z);
ffa01df6:	ff e3 13 fe 	CALL 0xffa01a1c <_htons>;
ffa01dfa:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa01dfe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01e00:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa01e04:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa01e08:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00eae(-4190546) */
ffa01e0c:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01e0e:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa01e12:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa01e16:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa01e1a:	10 91       	R0 = [P2];
ffa01e1c:	20 b3       	[P4 + 0x30] = R0;
ffa01e1e:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa01e22:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa01e26:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa01e2a:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa01e2e:	a7 b3       	[P4 + 0x38] = R7;
ffa01e30:	e7 b3       	[P4 + 0x3c] = R7;
ffa01e32:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa01e36:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa01e3a:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa01e3e:	ff e3 fb fd 	CALL 0xffa01a34 <_htonl>;
ffa01e42:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa01e46:	68 99       	R0 = B[P5] (X);
ffa01e48:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa01e4c:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01e50:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa01e54:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01e58:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa01e5c:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01e60:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa01e64:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01e68:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa01e6c:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01e70:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa01e74:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa01e78:	54 5a       	P1 = P4 + P2;
ffa01e7a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e7c:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa01e7e:	b2 e0 02 20 	LSETUP(0xffa01e82 <_DHCP_tx+0x19e>, 0xffa01e82 <_DHCP_tx+0x19e>) LC1 = P2;
ffa01e82:	08 9a       	B[P1++] = R0;
ffa01e84:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa01e88:	54 5a       	P1 = P4 + P2;
ffa01e8a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e8c:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa01e8e:	b2 e0 02 20 	LSETUP(0xffa01e92 <_DHCP_tx+0x1ae>, 0xffa01e92 <_DHCP_tx+0x1ae>) LC1 = P2;
ffa01e92:	08 92       	[P1++] = R0;
ffa01e94:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa01e98:	54 5a       	P1 = P4 + P2;
ffa01e9a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e9c:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa01e9e:	b2 e0 02 20 	LSETUP(0xffa01ea2 <_DHCP_tx+0x1be>, 0xffa01ea2 <_DHCP_tx+0x1be>) LC1 = P2;
ffa01ea2:	08 92       	[P1++] = R0;
ffa01ea4:	44 30       	R0 = P4;
ffa01ea6:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa01eaa:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa01eae:	f0 b9 00 00 
ffa01eb2:	14 30       	R2 = R4;
ffa01eb4:	ff e3 fc fa 	CALL 0xffa014ac <_memcpy_>;
ffa01eb8:	01 e8 00 00 	UNLINK;
ffa01ebc:	a3 05       	(R7:4, P5:3) = [SP++];
ffa01ebe:	ff e2 a5 fe 	JUMP.L 0xffa01c08 <_bfin_EMAC_send_nocopy>;
	...

ffa01ec4 <_DHCP_tx_discover>:
ffa01ec4:	c5 04       	[--SP] = (P5:5);
ffa01ec6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ed4 <_NetOurMAC> */
ffa01eca:	0d e1 a8 0e 	P5.L = 0xea8;		/* (3752)	P5=0xff900ea8 <_NetDHCPserv> */
ffa01ece:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01ed0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01ed4:	28 93       	[P5] = R0;
ffa01ed6:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa01ed8:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa01edc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01ede:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa01ee2:	b8 e6 fe ff 	B[FP + -0x2] = R0;
ffa01ee6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01ee8:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa01eec:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa01ef0:	00 e1 20 01 	R0.L = 0x120;		/* (288)	R0=0xff900120(-7339744) */
ffa01ef4:	ff e3 34 f9 	CALL 0xffa0115c <_printf_str>;
ffa01ef8:	4f 30       	R1 = FP;
ffa01efa:	2a 91       	R2 = [P5];
ffa01efc:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa01efe:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa01f00:	ff e3 f2 fe 	CALL 0xffa01ce4 <_DHCP_tx>;
ffa01f04:	01 e8 00 00 	UNLINK;
ffa01f08:	85 04       	(P5:5) = [SP++];
ffa01f0a:	10 00       	RTS;

ffa01f0c <_DHCP_parse>:
ffa01f0c:	f5 05       	[--SP] = (R7:6, P5:5);
ffa01f0e:	09 0d       	CC = R1 <= 0x1;
ffa01f10:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01f14:	10 32       	P2 = R0;
ffa01f16:	33 18       	IF CC JUMP 0xffa01f7c <_DHCP_parse+0x70>;
ffa01f18:	00 00       	NOP;
ffa01f1a:	31 30       	R6 = R1;
ffa01f1c:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01f1e:	11 98       	R1 = B[P2++] (Z);
ffa01f20:	01 0c       	CC = R1 == 0x0;
ffa01f22:	2b 1c       	IF CC JUMP 0xffa01f78 <_DHCP_parse+0x6c> (BP);
ffa01f24:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa01f28:	01 08       	CC = R1 == R0;
ffa01f2a:	57 99       	R7 = B[P2] (X);
ffa01f2c:	28 18       	IF CC JUMP 0xffa01f7c <_DHCP_parse+0x70>;
ffa01f2e:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa01f30:	6a 32       	P5 = P2;
ffa01f32:	01 0a       	CC = R1 <= R0 (IU);
ffa01f34:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa01f36:	09 14       	IF !CC JUMP 0xffa01f48 <_DHCP_parse+0x3c> (BP);
ffa01f38:	09 32       	P1 = R1;
ffa01f3a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900020 */
ffa01f3e:	0a e1 08 04 	P2.L = 0x408;		/* (1032)	P2=0xff900408 */
ffa01f42:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa01f44:	52 91       	P2 = [P2];
ffa01f46:	52 00       	JUMP (P2);
ffa01f48:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa01f4c:	00 e1 dc 01 	R0.L = 0x1dc;		/* (476)	R0=0xff9001dc(-7339556) */
ffa01f50:	ff e3 c8 f9 	CALL 0xffa012e0 <_printf_int>;
ffa01f54:	7f 43       	R7 = R7.B (Z);
ffa01f56:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001dc(-7339556) */
ffa01f5a:	00 e1 f0 01 	R0.L = 0x1f0;		/* (496)	R0=0xff9001f0(-7339536) */
ffa01f5e:	0f 30       	R1 = R7;
ffa01f60:	ff e3 c0 f9 	CALL 0xffa012e0 <_printf_int>;
ffa01f64:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001f0(-7339536) */
ffa01f68:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa01f6c:	ff e3 f8 f8 	CALL 0xffa0115c <_printf_str>;
ffa01f70:	0f 32       	P1 = R7;
ffa01f72:	be 53       	R6 = R6 - R7;
ffa01f74:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01f76:	8d 5a       	P2 = P5 + P1;
ffa01f78:	0e 0d       	CC = R6 <= 0x1;
ffa01f7a:	d1 17       	IF !CC JUMP 0xffa01f1c <_DHCP_parse+0x10> (BP);
ffa01f7c:	01 e8 00 00 	UNLINK;
ffa01f80:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01f82:	10 00       	RTS;
ffa01f84:	45 30       	R0 = P5;
ffa01f86:	ff e3 6b fd 	CALL 0xffa01a5c <_pack4chars>;
ffa01f8a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900408 */
ffa01f8e:	0a e1 dc 0e 	P2.L = 0xedc;		/* (3804)	P2=0xff900edc <_NetSubnetMask> */
ffa01f92:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01f96:	10 93 00 00 
ffa01f9a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900798(-7338088) */
ffa01f9e:	00 e1 34 01 	R0.L = 0x134;		/* (308)	R0=0xff900134(-7339724) */
ffa01fa2:	ff e3 41 fa 	CALL 0xffa01424 <_printf_ip>;
ffa01fa6:	7f 43       	R7 = R7.B (Z);
ffa01fa8:	de 2f       	JUMP.S 0xffa01f64 <_DHCP_parse+0x58>;
ffa01faa:	45 30       	R0 = P5;
ffa01fac:	ff e3 58 fd 	CALL 0xffa01a5c <_pack4chars>;
ffa01fb0:	08 30       	R1 = R0;
ffa01fb2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900134(-7339724) */
ffa01fb6:	00 e1 44 01 	R0.L = 0x144;		/* (324)	R0=0xff900144(-7339708) */
ffa01fba:	ff e3 35 fa 	CALL 0xffa01424 <_printf_ip>;
ffa01fbe:	7f 43       	R7 = R7.B (Z);
ffa01fc0:	d2 2f       	JUMP.S 0xffa01f64 <_DHCP_parse+0x58>;
ffa01fc2:	45 30       	R0 = P5;
ffa01fc4:	ff e3 4c fd 	CALL 0xffa01a5c <_pack4chars>;
ffa01fc8:	08 30       	R1 = R0;
ffa01fca:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900144(-7339708) */
ffa01fce:	00 e1 54 01 	R0.L = 0x154;		/* (340)	R0=0xff900154(-7339692) */
ffa01fd2:	ff e3 29 fa 	CALL 0xffa01424 <_printf_ip>;
ffa01fd6:	7f 43       	R7 = R7.B (Z);
ffa01fd8:	c6 2f       	JUMP.S 0xffa01f64 <_DHCP_parse+0x58>;
ffa01fda:	45 30       	R0 = P5;
ffa01fdc:	ff e3 40 fd 	CALL 0xffa01a5c <_pack4chars>;
ffa01fe0:	08 30       	R1 = R0;
ffa01fe2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900154(-7339692) */
ffa01fe6:	00 e1 64 01 	R0.L = 0x164;		/* (356)	R0=0xff900164(-7339676) */
ffa01fea:	ff e3 1d fa 	CALL 0xffa01424 <_printf_ip>;
ffa01fee:	7f 43       	R7 = R7.B (Z);
ffa01ff0:	ba 2f       	JUMP.S 0xffa01f64 <_DHCP_parse+0x58>;
ffa01ff2:	45 30       	R0 = P5;
ffa01ff4:	ff e3 34 fd 	CALL 0xffa01a5c <_pack4chars>;
ffa01ff8:	ff e3 1e fd 	CALL 0xffa01a34 <_htonl>;
ffa01ffc:	08 30       	R1 = R0;
ffa01ffe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900164(-7339676) */
ffa02002:	00 e1 74 01 	R0.L = 0x174;		/* (372)	R0=0xff900174(-7339660) */
ffa02006:	ff e3 6d f9 	CALL 0xffa012e0 <_printf_int>;
ffa0200a:	7f 43       	R7 = R7.B (Z);
ffa0200c:	ac 2f       	JUMP.S 0xffa01f64 <_DHCP_parse+0x58>;
ffa0200e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900174(-7339660) */
ffa02012:	29 99       	R1 = B[P5] (Z);
ffa02014:	00 e1 88 01 	R0.L = 0x188;		/* (392)	R0=0xff900188(-7339640) */
ffa02018:	ff e3 64 f9 	CALL 0xffa012e0 <_printf_int>;
ffa0201c:	7f 43       	R7 = R7.B (Z);
ffa0201e:	a3 2f       	JUMP.S 0xffa01f64 <_DHCP_parse+0x58>;
ffa02020:	45 30       	R0 = P5;
ffa02022:	ff e3 1d fd 	CALL 0xffa01a5c <_pack4chars>;
ffa02026:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900edc <_NetSubnetMask> */
ffa0202a:	0a e1 a8 0e 	P2.L = 0xea8;		/* (3752)	P2=0xff900ea8 <_NetDHCPserv> */
ffa0202e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa02032:	10 93 00 00 
ffa02036:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900188(-7339640) */
ffa0203a:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa0203e:	ff e3 f3 f9 	CALL 0xffa01424 <_printf_ip>;
ffa02042:	7f 43       	R7 = R7.B (Z);
ffa02044:	90 2f       	JUMP.S 0xffa01f64 <_DHCP_parse+0x58>;
ffa02046:	45 30       	R0 = P5;
ffa02048:	ff e3 0a fd 	CALL 0xffa01a5c <_pack4chars>;
ffa0204c:	ff e3 f4 fc 	CALL 0xffa01a34 <_htonl>;
ffa02050:	08 30       	R1 = R0;
ffa02052:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90019c(-7339620) */
ffa02056:	00 e1 b0 01 	R0.L = 0x1b0;		/* (432)	R0=0xff9001b0(-7339600) */
ffa0205a:	ff e3 43 f9 	CALL 0xffa012e0 <_printf_int>;
ffa0205e:	7f 43       	R7 = R7.B (Z);
ffa02060:	82 2f       	JUMP.S 0xffa01f64 <_DHCP_parse+0x58>;
ffa02062:	45 30       	R0 = P5;
ffa02064:	ff e3 fc fc 	CALL 0xffa01a5c <_pack4chars>;
ffa02068:	ff e3 e6 fc 	CALL 0xffa01a34 <_htonl>;
ffa0206c:	08 30       	R1 = R0;
ffa0206e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001b0(-7339600) */
ffa02072:	00 e1 c4 01 	R0.L = 0x1c4;		/* (452)	R0=0xff9001c4(-7339580) */
ffa02076:	ff e3 35 f9 	CALL 0xffa012e0 <_printf_int>;
ffa0207a:	7f 43       	R7 = R7.B (Z);
ffa0207c:	74 2f       	JUMP.S 0xffa01f64 <_DHCP_parse+0x58>;
	...

ffa02080 <_bfin_EMAC_send>:
ffa02080:	c4 04       	[--SP] = (P5:4);
ffa02082:	01 0d       	CC = R1 <= 0x0;
ffa02084:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02088:	18 30       	R3 = R0;
ffa0208a:	11 30       	R2 = R1;
ffa0208c:	90 18       	IF CC JUMP 0xffa021ac <_bfin_EMAC_send+0x12c>;
ffa0208e:	00 00       	NOP;
ffa02090:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ea8(-4190552) */
ffa02094:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa02098:	50 95       	R0 = W[P2] (X);
ffa0209a:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa0209c:	74 10       	IF !CC JUMP 0xffa02184 <_bfin_EMAC_send+0x104>;
ffa0209e:	00 00       	NOP;
ffa020a0:	00 00       	NOP;
ffa020a2:	00 00       	NOP;
ffa020a4:	50 95       	R0 = W[P2] (X);
ffa020a6:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa020a8:	17 18       	IF CC JUMP 0xffa020d6 <_bfin_EMAC_send+0x56>;
ffa020aa:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0eb0 */
ffa020ae:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa020b2:	b2 e0 09 10 	LSETUP(0xffa020b6 <_bfin_EMAC_send+0x36>, 0xffa020c4 <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa020b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa020ba:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa020be:	50 95       	R0 = W[P2] (X);
ffa020c0:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa020c2:	0a 18       	IF CC JUMP 0xffa020d6 <_bfin_EMAC_send+0x56>;
ffa020c4:	00 00       	NOP;
ffa020c6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001c4(-7339580) */
ffa020ca:	00 e1 14 02 	R0.L = 0x214;		/* (532)	R0=0xff900214(-7339500) */
ffa020ce:	ff e3 47 f8 	CALL 0xffa0115c <_printf_str>;
ffa020d2:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa020d4:	53 20       	JUMP.S 0xffa0217a <_bfin_EMAC_send+0xfa>;
ffa020d6:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900000 <_l1_data_a> */
ffa020da:	0c e1 ac 0e 	P4.L = 0xeac;		/* (3756)	P4=0xff900eac <_txIdx> */
ffa020de:	20 95       	R0 = W[P4] (Z);
ffa020e0:	10 32       	P2 = R0;
ffa020e2:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ea8 <_NetDHCPserv> */
ffa020e6:	0d e1 b0 0e 	P5.L = 0xeb0;		/* (3760)	P5=0xff900eb0 <_txbuf> */
ffa020ea:	0b 30       	R1 = R3;
ffa020ec:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa020ee:	52 91       	P2 = [P2];
ffa020f0:	92 ad       	P2 = [P2 + 0x18];
ffa020f2:	12 96       	W[P2++] = R2;
ffa020f4:	42 30       	R0 = P2;
ffa020f6:	ff e3 db f9 	CALL 0xffa014ac <_memcpy_>;
ffa020fa:	20 95       	R0 = W[P4] (Z);
ffa020fc:	10 32       	P2 = R0;
ffa020fe:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02100:	51 91       	P1 = [P2];
ffa02102:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa02106:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa0210a:	51 93       	[P2] = P1;
ffa0210c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa02110:	88 a1       	R0 = [P1 + 0x18];
ffa02112:	0a e1 fa 04 	P2.L = 0x4fa;		/* (1274)	P2=0xff9004fa <_txdmacfg> */
ffa02116:	48 b0       	[P1 + 0x4] = R0;
ffa02118:	50 95       	R0 = W[P2] (X);
ffa0211a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004fa(-4193030) */
ffa0211e:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa02122:	10 97       	W[P2] = R0;
ffa02124:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa02128:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa0212c:	10 91       	R0 = [P2];
ffa0212e:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa02130:	10 93       	[P2] = R0;
ffa02132:	88 a2       	R0 = [P1 + 0x28];
ffa02134:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02136:	13 10       	IF !CC JUMP 0xffa0215c <_bfin_EMAC_send+0xdc>;
ffa02138:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa0213c:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa02140:	b2 e0 05 20 	LSETUP(0xffa02144 <_bfin_EMAC_send+0xc4>, 0xffa0214a <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa02144:	88 a2       	R0 = [P1 + 0x28];
ffa02146:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02148:	0a 10       	IF !CC JUMP 0xffa0215c <_bfin_EMAC_send+0xdc>;
ffa0214a:	00 00       	NOP;
ffa0214c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900214(-7339500) */
ffa02150:	00 e1 2c 02 	R0.L = 0x22c;		/* (556)	R0=0xff90022c(-7339476) */
ffa02154:	ff e3 04 f8 	CALL 0xffa0115c <_printf_str>;
ffa02158:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0215a:	10 20       	JUMP.S 0xffa0217a <_bfin_EMAC_send+0xfa>;
ffa0215c:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa02160:	61 95 00 00 
ffa02164:	8a a2       	R2 = [P1 + 0x28];
ffa02166:	88 b2       	[P1 + 0x28] = R0;
ffa02168:	c8 42       	R0 = R1.L (Z);
ffa0216a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa0216e:	10 0d       	CC = R0 <= 0x2;
ffa02170:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa02174:	14 1c       	IF CC JUMP 0xffa0219c <_bfin_EMAC_send+0x11c> (BP);
ffa02176:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02178:	10 97       	W[P2] = R0;
ffa0217a:	01 e8 00 00 	UNLINK;
ffa0217e:	02 30       	R0 = R2;
ffa02180:	84 04       	(P5:4) = [SP++];
ffa02182:	10 00       	RTS;
ffa02184:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02188:	00 e1 f0 00 	R0.L = 0xf0;		/* (240)	R0=0xff9000f0(-7339792) */
ffa0218c:	ff e3 e8 f7 	CALL 0xffa0115c <_printf_str>;
ffa02190:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02192:	01 e8 00 00 	UNLINK;
ffa02196:	02 30       	R0 = R2;
ffa02198:	84 04       	(P5:4) = [SP++];
ffa0219a:	10 00       	RTS;
ffa0219c:	01 30       	R0 = R1;
ffa0219e:	08 64       	R0 += 0x1;		/* (  1) */
ffa021a0:	10 97       	W[P2] = R0;
ffa021a2:	01 e8 00 00 	UNLINK;
ffa021a6:	02 30       	R0 = R2;
ffa021a8:	84 04       	(P5:4) = [SP++];
ffa021aa:	10 00       	RTS;
ffa021ac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f0(-7339792) */
ffa021b0:	00 e1 f8 01 	R0.L = 0x1f8;		/* (504)	R0=0xff9001f8(-7339528) */
ffa021b4:	ff e3 96 f8 	CALL 0xffa012e0 <_printf_int>;
ffa021b8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa021ba:	01 e8 00 00 	UNLINK;
ffa021be:	02 30       	R0 = R2;
ffa021c0:	84 04       	(P5:4) = [SP++];
ffa021c2:	10 00       	RTS;

ffa021c4 <_ether_testUDP>:
ffa021c4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa021c6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa021ca:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa021ce:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa021d2:	11 95       	R1 = W[P2] (Z);
ffa021d4:	11 32       	P2 = R1;
ffa021d6:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa021da:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa021de:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa021e2:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa021e4:	52 91       	P2 = [P2];
ffa021e6:	95 ad       	P5 = [P2 + 0x18];
ffa021e8:	55 32       	P2 = P5;
ffa021ea:	11 96       	W[P2++] = R1;
ffa021ec:	4a 30       	R1 = P2;
ffa021ee:	00 e3 13 09 	CALL 0xffa03414 <_ARP_req>;
ffa021f2:	00 0c       	CC = R0 == 0x0;
ffa021f4:	7f 18       	IF CC JUMP 0xffa022f2 <_ether_testUDP+0x12e>;
ffa021f6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa021fa:	0a e1 d4 0e 	P2.L = 0xed4;		/* (3796)	P2=0xff900ed4 <_NetOurMAC> */
ffa021fe:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02200:	50 99       	R0 = B[P2] (X);
ffa02202:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02206:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa0220a:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0220e:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02212:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa02216:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa0221a:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa0221e:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa02222:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa02226:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa0222a:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa0222e:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02232:	ff e3 f5 fb 	CALL 0xffa01a1c <_htons>;
ffa02236:	e8 b5       	W[P5 + 0xe] = R0;
ffa02238:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa0223c:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa02240:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02242:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa02246:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa02248:	ff e3 ea fb 	CALL 0xffa01a1c <_htons>;
ffa0224c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed4 <_NetOurMAC> */
ffa02250:	0a e1 ae 0e 	P2.L = 0xeae;		/* (3758)	P2=0xff900eae <_NetIPID> */
ffa02254:	68 b6       	W[P5 + 0x12] = R0;
ffa02256:	10 95       	R0 = W[P2] (Z);
ffa02258:	08 30       	R1 = R0;
ffa0225a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0225c:	11 97       	W[P2] = R1;
ffa0225e:	ff e3 df fb 	CALL 0xffa01a1c <_htons>;
ffa02262:	a8 b6       	W[P5 + 0x14] = R0;
ffa02264:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa02268:	ff e3 da fb 	CALL 0xffa01a1c <_htons>;
ffa0226c:	e8 b6       	W[P5 + 0x16] = R0;
ffa0226e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02270:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa02274:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eae <_NetIPID> */
ffa02278:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0227a:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa0227e:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa02282:	10 91       	R0 = [P2];
ffa02284:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetOurIP> */
ffa02288:	0a e1 a4 0e 	P2.L = 0xea4;		/* (3748)	P2=0xff900ea4 <_NetDestIP> */
ffa0228c:	e8 b1       	[P5 + 0x1c] = R0;
ffa0228e:	10 91       	R0 = [P2];
ffa02290:	28 b2       	[P5 + 0x20] = R0;
ffa02292:	45 30       	R0 = P5;
ffa02294:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa02296:	6f b7       	W[P5 + 0x1a] = R7;
ffa02298:	80 64       	R0 += 0x10;		/* ( 16) */
ffa0229a:	ff e3 a9 fb 	CALL 0xffa019ec <_NetCksum>;
ffa0229e:	c0 43       	R0 =~ R0;
ffa022a0:	68 b7       	W[P5 + 0x1a] = R0;
ffa022a2:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa022a6:	ff e3 bb fb 	CALL 0xffa01a1c <_htons>;
ffa022aa:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa022ae:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa022b2:	ff e3 b5 fb 	CALL 0xffa01a1c <_htons>;
ffa022b6:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa022ba:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa022bc:	ff e3 b0 fb 	CALL 0xffa01a1c <_htons>;
ffa022c0:	55 32       	P2 = P5;
ffa022c2:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa022c6:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa022ca:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa022cc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa022ce:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa022d0:	b2 e0 03 10 	LSETUP(0xffa022d4 <_ether_testUDP+0x110>, 0xffa022d6 <_ether_testUDP+0x112>) LC1 = P1;
ffa022d4:	11 9a       	B[P2++] = R1;
ffa022d6:	09 64       	R1 += 0x1;		/* (  1) */
ffa022d8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa022dc:	00 e1 40 02 	R0.L = 0x240;		/* (576)	R0=0xff900240(-7339456) */
ffa022e0:	ff e3 3e f7 	CALL 0xffa0115c <_printf_str>;
ffa022e4:	ff e3 92 fc 	CALL 0xffa01c08 <_bfin_EMAC_send_nocopy>;
ffa022e8:	01 e8 00 00 	UNLINK;
ffa022ec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa022ee:	bd 05       	(R7:7, P5:5) = [SP++];
ffa022f0:	10 00       	RTS;
ffa022f2:	01 e8 00 00 	UNLINK;
ffa022f6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa022f8:	bd 05       	(R7:7, P5:5) = [SP++];
ffa022fa:	10 00       	RTS;

ffa022fc <_eth_header_setup>:
ffa022fc:	fc 05       	[--SP] = (R7:7, P5:4);
ffa022fe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea4 <_NetDestIP> */
ffa02302:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02306:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa0230a:	00 32       	P0 = R0;
ffa0230c:	10 95       	R0 = W[P2] (Z);
ffa0230e:	10 32       	P2 = R0;
ffa02310:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa02314:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa02318:	00 91       	R0 = [P0];
ffa0231a:	21 32       	P4 = R1;
ffa0231c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0231e:	52 91       	P2 = [P2];
ffa02320:	08 30       	R1 = R0;
ffa02322:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa02324:	80 67       	R0 += -0x10;		/* (-16) */
ffa02326:	95 ad       	P5 = [P2 + 0x18];
ffa02328:	00 93       	[P0] = R0;
ffa0232a:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa0232e:	3a 30       	R7 = R2;
ffa02330:	29 97       	W[P5] = R1;
ffa02332:	ff e3 81 fb 	CALL 0xffa01a34 <_htonl>;
ffa02336:	38 54       	R0 = R0 & R7;
ffa02338:	00 0c       	CC = R0 == 0x0;
ffa0233a:	3c 10       	IF !CC JUMP 0xffa023b2 <_eth_header_setup+0xb6>;
ffa0233c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0233e:	a8 e6 02 00 	B[P5 + 0x2] = R0;
ffa02342:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa02346:	a8 e6 04 00 	B[P5 + 0x4] = R0;
ffa0234a:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa0234c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0234e:	a8 e6 06 00 	B[P5 + 0x6] = R0;
ffa02352:	d8 63       	R0 = -0x5 (X);		/*		R0=0xfffffffb( -5) */
ffa02354:	a9 e6 03 00 	B[P5 + 0x3] = R1;
ffa02358:	a9 e6 05 00 	B[P5 + 0x5] = R1;
ffa0235c:	a8 e6 07 00 	B[P5 + 0x7] = R0;
ffa02360:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa02364:	0a e1 d4 0e 	P2.L = 0xed4;		/* (3796)	P2=0xff900ed4 <_NetOurMAC> */
ffa02368:	50 99       	R0 = B[P2] (X);
ffa0236a:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0236e:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa02372:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02376:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa0237a:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa0237e:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02382:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa02386:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa0238a:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa0238e:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa02392:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa02396:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa0239a:	ff e3 41 fb 	CALL 0xffa01a1c <_htons>;
ffa0239e:	e8 b5       	W[P5 + 0xe] = R0;
ffa023a0:	4d 30       	R1 = P5;
ffa023a2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa023a4:	81 64       	R1 += 0x10;		/* ( 16) */
ffa023a6:	20 9b       	B[P4] = R0;
ffa023a8:	01 e8 00 00 	UNLINK;
ffa023ac:	01 30       	R0 = R1;
ffa023ae:	bc 05       	(R7:7, P5:4) = [SP++];
ffa023b0:	10 00       	RTS;
ffa023b2:	4d 30       	R1 = P5;
ffa023b4:	11 64       	R1 += 0x2;		/* (  2) */
ffa023b6:	07 30       	R0 = R7;
ffa023b8:	00 e3 2e 08 	CALL 0xffa03414 <_ARP_req>;
ffa023bc:	00 0c       	CC = R0 == 0x0;
ffa023be:	d1 17       	IF !CC JUMP 0xffa02360 <_eth_header_setup+0x64> (BP);
ffa023c0:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa023c2:	00 cc 09 c2 	R1 = R1 -|- R1 || B[P4] = R0 || NOP;
ffa023c6:	20 9b 00 00 
ffa023ca:	ef 2f       	JUMP.S 0xffa023a8 <_eth_header_setup+0xac>;

ffa023cc <_icmp_packet_setup>:
ffa023cc:	e4 05       	[--SP] = (R7:4, P5:4);
ffa023ce:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa023d2:	29 32       	P5 = R1;
ffa023d4:	7f 30       	R7 = FP;
ffa023d6:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa023d8:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa023da:	f0 bb       	[FP -0x4] = R0;
ffa023dc:	07 30       	R0 = R7;
ffa023de:	22 32       	P4 = R2;
ffa023e0:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa023e4:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa023e8:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa023ec:	ff e3 88 ff 	CALL 0xffa022fc <_eth_header_setup>;
ffa023f0:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa023f4:	68 99 00 00 
ffa023f8:	80 0c       	CC = R0 < 0x0;
ffa023fa:	14 18       	IF CC JUMP 0xffa02422 <_icmp_packet_setup+0x56>;
ffa023fc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa023fe:	f0 b0       	[SP + 0xc] = R0;
ffa02400:	54 30       	R2 = P4;
ffa02402:	01 30       	R0 = R1;
ffa02404:	0f 30       	R1 = R7;
ffa02406:	ff e3 3f fb 	CALL 0xffa01a84 <_ip_header_setup>;
ffa0240a:	e9 42       	R1 = R5.L (Z);
ffa0240c:	f1 b0       	[SP + 0xc] = R1;
ffa0240e:	e1 42       	R1 = R4.L (Z);
ffa02410:	31 b1       	[SP + 0x10] = R1;
ffa02412:	72 43       	R2 = R6.B (Z);
ffa02414:	0f 30       	R1 = R7;
ffa02416:	ff e3 87 fb 	CALL 0xffa01b24 <_icmp_header_setup>;
ffa0241a:	01 e8 00 00 	UNLINK;
ffa0241e:	a4 05       	(R7:4, P5:4) = [SP++];
ffa02420:	10 00       	RTS;
ffa02422:	01 e8 00 00 	UNLINK;
ffa02426:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02428:	a4 05       	(R7:4, P5:4) = [SP++];
ffa0242a:	10 00       	RTS;

ffa0242c <_icmp_rx>:
ffa0242c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0242e:	28 32       	P5 = R0;
ffa02430:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02434:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02438:	39 30       	R7 = R1;
ffa0243a:	ff e3 f1 fa 	CALL 0xffa01a1c <_htons>;
ffa0243e:	c0 42       	R0 = R0.L (Z);
ffa02440:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa02442:	01 08       	CC = R1 == R0;
ffa02444:	06 18       	IF CC JUMP 0xffa02450 <_icmp_rx+0x24>;
ffa02446:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02448:	01 e8 00 00 	UNLINK;
ffa0244c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0244e:	10 00       	RTS;
ffa02450:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02452:	07 0a       	CC = R7 <= R0 (IU);
ffa02454:	f9 1b       	IF CC JUMP 0xffa02446 <_icmp_rx+0x1a>;
ffa02456:	00 00       	NOP;
ffa02458:	00 00       	NOP;
ffa0245a:	00 00       	NOP;
ffa0245c:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa02460:	08 0c       	CC = R0 == 0x1;
ffa02462:	f2 17       	IF !CC JUMP 0xffa02446 <_icmp_rx+0x1a> (BP);
ffa02464:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed4 <_NetOurMAC> */
ffa02468:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa0246c:	28 a2       	R0 = [P5 + 0x20];
ffa0246e:	11 91       	R1 = [P2];
ffa02470:	08 08       	CC = R0 == R1;
ffa02472:	ea 17       	IF !CC JUMP 0xffa02446 <_icmp_rx+0x1a> (BP);
ffa02474:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa02478:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa0247c:	08 08       	CC = R0 == R1;
ffa0247e:	3e 18       	IF CC JUMP 0xffa024fa <_icmp_rx+0xce>;
ffa02480:	00 00       	NOP;
ffa02482:	00 00       	NOP;
ffa02484:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa02486:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa0248a:	08 08       	CC = R0 == R1;
ffa0248c:	dd 17       	IF !CC JUMP 0xffa02446 <_icmp_rx+0x1a> (BP);
ffa0248e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa02492:	e9 a1       	R1 = [P5 + 0x1c];
ffa02494:	00 e1 58 02 	R0.L = 0x258;		/* (600)	R0=0xff900258(-7339432) */
ffa02498:	ff e3 c6 f7 	CALL 0xffa01424 <_printf_ip>;
ffa0249c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetOurIP> */
ffa024a0:	0a e1 a4 0e 	P2.L = 0xea4;		/* (3748)	P2=0xff900ea4 <_NetDestIP> */
ffa024a4:	e8 a1       	R0 = [P5 + 0x1c];
ffa024a6:	4d 30       	R1 = P5;
ffa024a8:	10 93       	[P2] = R0;
ffa024aa:	41 64       	R1 += 0x8;		/* (  8) */
ffa024ac:	00 e3 b6 05 	CALL 0xffa03018 <_ARP_lut_add>;
ffa024b0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900258(-7339432) */
ffa024b4:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa024b8:	ff e3 52 f6 	CALL 0xffa0115c <_printf_str>;
ffa024bc:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa024c0:	ea a1 00 00 
ffa024c4:	f0 b0       	[SP + 0xc] = R0;
ffa024c6:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa024ca:	30 b1       	[SP + 0x10] = R0;
ffa024cc:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa024ce:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa024d2:	4f 30       	R1 = FP;
ffa024d4:	70 b1       	[SP + 0x14] = R0;
ffa024d6:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa024d8:	07 30       	R0 = R7;
ffa024da:	ff e3 79 ff 	CALL 0xffa023cc <_icmp_packet_setup>;
ffa024de:	08 30       	R1 = R0;
ffa024e0:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa024e4:	00 0d       	CC = R0 <= 0x0;
ffa024e6:	b0 1b       	IF CC JUMP 0xffa02446 <_icmp_rx+0x1a>;
ffa024e8:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa024ea:	45 30       	R0 = P5;
ffa024ec:	17 30       	R2 = R7;
ffa024ee:	ff e3 df f7 	CALL 0xffa014ac <_memcpy_>;
ffa024f2:	ff e3 8b fb 	CALL 0xffa01c08 <_bfin_EMAC_send_nocopy>;
ffa024f6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa024f8:	a8 2f       	JUMP.S 0xffa02448 <_icmp_rx+0x1c>;
ffa024fa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea4 <_NetDestIP> */
ffa024fe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02500:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_g_streamEnabled> */
ffa02504:	10 9b       	B[P2] = R0;
ffa02506:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02508:	a0 2f       	JUMP.S 0xffa02448 <_icmp_rx+0x1c>;
	...

ffa0250c <_udp_packet_setup>:
ffa0250c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0250e:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02512:	29 32       	P5 = R1;
ffa02514:	7f 30       	R7 = FP;
ffa02516:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900eac <_txIdx> */
ffa0251a:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa0251c:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0251e:	0c e1 e4 0e 	P4.L = 0xee4;		/* (3812)	P4=0xff900ee4 <_NetDataDestIP> */
ffa02522:	f0 bb       	[FP -0x4] = R0;
ffa02524:	22 91       	R2 = [P4];
ffa02526:	07 30       	R0 = R7;
ffa02528:	ff e3 ea fe 	CALL 0xffa022fc <_eth_header_setup>;
ffa0252c:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa02530:	68 99 00 00 
ffa02534:	80 0c       	CC = R0 < 0x0;
ffa02536:	14 18       	IF CC JUMP 0xffa0255e <_udp_packet_setup+0x52>;
ffa02538:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0253a:	f0 b0       	[SP + 0xc] = R0;
ffa0253c:	01 30       	R0 = R1;
ffa0253e:	22 91       	R2 = [P4];
ffa02540:	0f 30       	R1 = R7;
ffa02542:	ff e3 a1 fa 	CALL 0xffa01a84 <_ip_header_setup>;
ffa02546:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa0254a:	f1 b0       	[SP + 0xc] = R1;
ffa0254c:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa02550:	0f 30       	R1 = R7;
ffa02552:	ff e3 0d fb 	CALL 0xffa01b6c <_udp_header_setup>;
ffa02556:	01 e8 00 00 	UNLINK;
ffa0255a:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0255c:	10 00       	RTS;
ffa0255e:	01 e8 00 00 	UNLINK;
ffa02562:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02564:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02566:	10 00       	RTS;

ffa02568 <_SetupTxBuffer>:
ffa02568:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0256a:	38 30       	R7 = R0;
ffa0256c:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02570:	c7 40       	R7 *= R0;
ffa02572:	17 32       	P2 = R7;
ffa02574:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800eb0 */
ffa02578:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa0257c:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02580:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa02584:	6a 5b       	P5 = P2 + P5;
ffa02586:	c7 51       	R7 = R7 + R0;
ffa02588:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0258c:	45 30       	R0 = P5;
ffa0258e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02590:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa02592:	ff e3 9d f7 	CALL 0xffa014cc <_memset_>;
ffa02596:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa0259a:	af b1 00 00 
ffa0259e:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa025a2:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa025a6:	ff e3 93 f7 	CALL 0xffa014cc <_memset_>;
ffa025aa:	45 30       	R0 = P5;
ffa025ac:	60 64       	R0 += 0xc;		/* ( 12) */
ffa025ae:	28 93       	[P5] = R0;
ffa025b0:	a8 a1       	R0 = [P5 + 0x18];
ffa025b2:	68 b0       	[P5 + 0x4] = R0;
ffa025b4:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa025b8:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa025ba:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa025bc:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa025be:	10 54       	R0 = R0 & R2;
ffa025c0:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa025c2:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa025c6:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa025c8:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa025cc:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa025ce:	18 54       	R0 = R0 & R3;
ffa025d0:	08 56       	R0 = R0 | R1;
ffa025d2:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa025d6:	08 56       	R0 = R0 | R1;
ffa025d8:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa025dc:	45 30       	R0 = P5;
ffa025de:	40 65       	R0 += 0x28;		/* ( 40) */
ffa025e0:	28 b1       	[P5 + 0x10] = R0;
ffa025e2:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa025e6:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa025e8:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa025ea:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa025ee:	10 54       	R0 = R0 & R2;
ffa025f0:	08 56       	R0 = R0 | R1;
ffa025f2:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa025f6:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa025fa:	18 54       	R0 = R0 & R3;
ffa025fc:	39 64       	R1 += 0x7;		/* (  7) */
ffa025fe:	08 54       	R0 = R0 & R1;
ffa02600:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02604:	ed bc       	[P5 + 0xc] = P5;
ffa02606:	01 e8 00 00 	UNLINK;
ffa0260a:	45 30       	R0 = P5;
ffa0260c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0260e:	10 00       	RTS;

ffa02610 <_SetupRxBuffer>:
ffa02610:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02612:	38 30       	R7 = R0;
ffa02614:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02618:	c7 40       	R7 *= R0;
ffa0261a:	17 32       	P2 = R7;
ffa0261c:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa02620:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa02624:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02628:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa0262c:	6a 5b       	P5 = P2 + P5;
ffa0262e:	c7 51       	R7 = R7 + R0;
ffa02630:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02634:	45 30       	R0 = P5;
ffa02636:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02638:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa0263a:	ff e3 49 f7 	CALL 0xffa014cc <_memset_>;
ffa0263e:	af b1       	[P5 + 0x18] = R7;
ffa02640:	07 30       	R0 = R7;
ffa02642:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa02646:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa0264a:	ff e3 41 f7 	CALL 0xffa014cc <_memset_>;
ffa0264e:	45 30       	R0 = P5;
ffa02650:	60 64       	R0 += 0xc;		/* ( 12) */
ffa02652:	28 93       	[P5] = R0;
ffa02654:	a8 a1       	R0 = [P5 + 0x18];
ffa02656:	68 b0       	[P5 + 0x4] = R0;
ffa02658:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa0265c:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0265e:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa02660:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02662:	08 54       	R0 = R0 & R1;
ffa02664:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02666:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0266a:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa0266c:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa02670:	38 54       	R0 = R0 & R7;
ffa02672:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa02674:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa02678:	18 56       	R0 = R0 | R3;
ffa0267a:	10 56       	R0 = R0 | R2;
ffa0267c:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02680:	45 30       	R0 = P5;
ffa02682:	20 65       	R0 += 0x24;		/* ( 36) */
ffa02684:	28 b1       	[P5 + 0x10] = R0;
ffa02686:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa0268a:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0268c:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0268e:	08 54       	R0 = R0 & R1;
ffa02690:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa02694:	08 56       	R0 = R0 | R1;
ffa02696:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa0269a:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa0269e:	38 54       	R0 = R0 & R7;
ffa026a0:	18 56       	R0 = R0 | R3;
ffa026a2:	10 56       	R0 = R0 | R2;
ffa026a4:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa026a8:	ed bc       	[P5 + 0xc] = P5;
ffa026aa:	01 e8 00 00 	UNLINK;
ffa026ae:	45 30       	R0 = P5;
ffa026b0:	bd 05       	(R7:7, P5:5) = [SP++];
ffa026b2:	10 00       	RTS;

ffa026b4 <_SetupSystemRegs>:
ffa026b4:	f5 05       	[--SP] = (R7:6, P5:5);
ffa026b6:	28 32       	P5 = R0;
ffa026b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa026bc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa026c0:	00 e1 74 02 	R0.L = 0x274;		/* (628)	R0=0xff900274(-7339404) */
ffa026c4:	ff e3 4c f5 	CALL 0xffa0115c <_printf_str>;
ffa026c8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c34(-4191180) */
ffa026cc:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa026d0:	50 95       	R0 = W[P2] (X);
ffa026d2:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa026d6:	08 54       	R0 = R0 & R1;
ffa026d8:	10 97       	W[P2] = R0;
ffa026da:	50 95       	R0 = W[P2] (X);
ffa026dc:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa026de:	10 97       	W[P2] = R0;
ffa026e0:	82 6f       	P2 += -0x10;		/* (-16) */
ffa026e2:	51 95       	R1 = W[P2] (X);
ffa026e4:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa026e8:	08 56       	R0 = R0 | R1;
ffa026ea:	10 97       	W[P2] = R0;
ffa026ec:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa026ee:	22 6c       	P2 += 0x4;		/* (  4) */
ffa026f0:	10 97       	W[P2] = R0;
ffa026f2:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa026f4:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa026f6:	10 97       	W[P2] = R0;
ffa026f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa026fc:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa02700:	50 95       	R0 = W[P2] (X);
ffa02702:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa02704:	10 97       	W[P2] = R0;
ffa02706:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa0270a:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa0270e:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa02712:	10 93       	[P2] = R0;
ffa02714:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02716:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa0271a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0271c:	ff e3 0c f9 	CALL 0xffa01934 <_WrPHYReg>;
ffa02720:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02724:	ff e3 b2 f8 	CALL 0xffa01888 <_udelay>;
ffa02728:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0272a:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0272c:	ff e3 20 f9 	CALL 0xffa0196c <_RdPHYReg>;
ffa02730:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02732:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa02734:	0e 20       	JUMP.S 0xffa02750 <_SetupSystemRegs+0x9c>;
ffa02736:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa0273a:	ff e3 a7 f8 	CALL 0xffa01888 <_udelay>;
ffa0273e:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02740:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02742:	ff e3 15 f9 	CALL 0xffa0196c <_RdPHYReg>;
ffa02746:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02748:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa0274c:	0f 08       	CC = R7 == R1;
ffa0274e:	35 18       	IF CC JUMP 0xffa027b8 <_SetupSystemRegs+0x104>;
ffa02750:	06 54       	R0 = R6 & R0;
ffa02752:	00 0c       	CC = R0 == 0x0;
ffa02754:	f1 1f       	IF CC JUMP 0xffa02736 <_SetupSystemRegs+0x82> (BP);
ffa02756:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa02758:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0275a:	ff e3 09 f9 	CALL 0xffa0196c <_RdPHYReg>;
ffa0275e:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa02762:	01 54       	R0 = R1 & R0;
ffa02764:	00 0c       	CC = R0 == 0x0;
ffa02766:	27 1c       	IF CC JUMP 0xffa027b4 <_SetupSystemRegs+0x100> (BP);
ffa02768:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0276a:	d0 4f       	R0 <<= 0x1a;
ffa0276c:	28 93       	[P5] = R0;
ffa0276e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa02772:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02774:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa02778:	10 93       	[P2] = R0;
ffa0277a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa0277e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02780:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa02784:	10 97       	W[P2] = R0;
ffa02786:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa02788:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0278a:	11 97       	W[P2] = R1;
ffa0278c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0278e:	10 97       	W[P2] = R0;
ffa02790:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02792:	10 97       	W[P2] = R0;
ffa02794:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa02798:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa0279c:	10 97       	W[P2] = R0;
ffa0279e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027a0:	11 97       	W[P2] = R1;
ffa027a2:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027a4:	10 97       	W[P2] = R0;
ffa027a6:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027a8:	10 97       	W[P2] = R0;
ffa027aa:	01 e8 00 00 	UNLINK;
ffa027ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027b0:	b5 05       	(R7:6, P5:5) = [SP++];
ffa027b2:	10 00       	RTS;
ffa027b4:	28 93       	[P5] = R0;
ffa027b6:	dc 2f       	JUMP.S 0xffa0276e <_SetupSystemRegs+0xba>;
ffa027b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa027bc:	00 e1 8c 02 	R0.L = 0x28c;		/* (652)	R0=0xff90028c(-7339380) */
ffa027c0:	ff e3 ce f4 	CALL 0xffa0115c <_printf_str>;
ffa027c4:	01 e8 00 00 	UNLINK;
ffa027c8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa027ca:	b5 05       	(R7:6, P5:5) = [SP++];
ffa027cc:	10 00       	RTS;
	...

ffa027d0 <_SetupMacAddr>:
ffa027d0:	10 32       	P2 = R0;
ffa027d2:	fd 05       	[--SP] = (R7:7, P5:5);
ffa027d4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027d6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa027da:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa027de:	10 9b       	B[P2] = R0;
ffa027e0:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa027e2:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa027e6:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa027e8:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa027ec:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa027ee:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa027f2:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa027f6:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa027fa:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa027fc:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02800:	10 99       	R0 = B[P2] (Z);
ffa02802:	08 56       	R0 = R0 | R1;
ffa02804:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa02808:	89 4f       	R1 <<= 0x11;
ffa0280a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00eb0(-4190544) */
ffa0280e:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa02812:	08 56       	R0 = R0 | R1;
ffa02814:	08 93       	[P1] = R0;
ffa02816:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa0281a:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa0281e:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa02822:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa02824:	28 93       	[P5] = R0;
ffa02826:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa0282a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa0282e:	09 91       	R1 = [P1];
ffa02830:	07 e1 98 07 	R7.L = 0x798;		/* (1944)	R7=0xff900798(-7338088) */
ffa02834:	00 e1 c0 02 	R0.L = 0x2c0;		/* (704)	R0=0xff9002c0(-7339328) */
ffa02838:	ff e3 f8 f4 	CALL 0xffa01228 <_printf_hex>;
ffa0283c:	07 30       	R0 = R7;
ffa0283e:	ff e3 8f f4 	CALL 0xffa0115c <_printf_str>;
ffa02842:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002c0(-7339328) */
ffa02846:	29 91       	R1 = [P5];
ffa02848:	00 e1 cc 02 	R0.L = 0x2cc;		/* (716)	R0=0xff9002cc(-7339316) */
ffa0284c:	ff e3 ee f4 	CALL 0xffa01228 <_printf_hex>;
ffa02850:	01 e8 00 00 	UNLINK;
ffa02854:	07 30       	R0 = R7;
ffa02856:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02858:	ff e2 82 f4 	JUMP.L 0xffa0115c <_printf_str>;

ffa0285c <_bfin_EMAC_init>:
ffa0285c:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0285e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002cc(-7339316) */
ffa02862:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02866:	00 e1 d8 02 	R0.L = 0x2d8;		/* (728)	R0=0xff9002d8(-7339304) */
ffa0286a:	ff e3 79 f4 	CALL 0xffa0115c <_printf_str>;
ffa0286e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 */
ffa02872:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02874:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa02878:	16 97       	W[P2] = R6;
ffa0287a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa0287e:	0a e1 c0 0e 	P2.L = 0xec0;		/* (3776)	P2=0xff900ec0 <_rxIdx> */
ffa02882:	16 97       	W[P2] = R6;
ffa02884:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ec0 <_rxIdx> */
ffa02888:	0a e1 ae 0e 	P2.L = 0xeae;		/* (3758)	P2=0xff900eae <_NetIPID> */
ffa0288c:	16 97       	W[P2] = R6;
ffa0288e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eae <_NetIPID> */
ffa02892:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02894:	0a e1 dc 0e 	P2.L = 0xedc;		/* (3804)	P2=0xff900edc <_NetSubnetMask> */
ffa02898:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa0289a:	17 93       	[P2] = R7;
ffa0289c:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa028a0:	f0 b0       	[SP + 0xc] = R0;
ffa028a2:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa028a4:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa028a8:	ff e3 10 f8 	CALL 0xffa018c8 <_FormatIPAddress>;
ffa028ac:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900edc <_NetSubnetMask> */
ffa028b0:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa028b4:	10 93       	[P2] = R0;
ffa028b6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa028b8:	f0 b0       	[SP + 0xc] = R0;
ffa028ba:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa028be:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa028c0:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa028c4:	ff e3 02 f8 	CALL 0xffa018c8 <_FormatIPAddress>;
ffa028c8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetOurIP> */
ffa028cc:	0a e1 a4 0e 	P2.L = 0xea4;		/* (3748)	P2=0xff900ea4 <_NetDestIP> */
ffa028d0:	10 93       	[P2] = R0;
ffa028d2:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa028d4:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa028d6:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa028da:	f0 b0       	[SP + 0xc] = R0;
ffa028dc:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa028e0:	ff e3 f4 f7 	CALL 0xffa018c8 <_FormatIPAddress>;
ffa028e4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea4 <_NetDestIP> */
ffa028e8:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetDataDestIP> */
ffa028ec:	10 93       	[P2] = R0;
ffa028ee:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetDataDestIP> */
ffa028f2:	0a e1 c4 0f 	P2.L = 0xfc4;		/* (4036)	P2=0xff900fc4 <_TcpState> */
ffa028f6:	17 93       	[P2] = R7;
ffa028f8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc4 <_TcpState> */
ffa028fc:	0a e1 bc 0f 	P2.L = 0xfbc;		/* (4028)	P2=0xff900fbc <_TcpSeqClient> */
ffa02900:	17 93       	[P2] = R7;
ffa02902:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa02906:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fbc <_TcpSeqClient> */
ffa0290a:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa0290e:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa02912:	10 93       	[P2] = R0;
ffa02914:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa02918:	0a e1 d0 0f 	P2.L = 0xfd0;		/* (4048)	P2=0xff900fd0 <_TcpClientPort> */
ffa0291c:	16 97       	W[P2] = R6;
ffa0291e:	00 e3 2f 03 	CALL 0xffa02f7c <_ARP_init>;
ffa02922:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00fd0(-4190256) */
ffa02926:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa0292a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa0292e:	17 93       	[P2] = R7;
ffa02930:	00 e1 d4 0e 	R0.L = 0xed4;		/* (3796)	R0=0xff900ed4 <_NetOurMAC>(-7336236) */
ffa02934:	ff e3 4e ff 	CALL 0xffa027d0 <_SetupMacAddr>;
ffa02938:	47 30       	R0 = FP;
ffa0293a:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa0293c:	ff e3 bc fe 	CALL 0xffa026b4 <_SetupSystemRegs>;
ffa02940:	80 0c       	CC = R0 < 0x0;
ffa02942:	7a 18       	IF CC JUMP 0xffa02a36 <_bfin_EMAC_init+0x1da>;
ffa02944:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa02948:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0294a:	07 e1 c4 0e 	R7.L = 0xec4;		/* (3780)	R7=0xff900ec4 <_rxbuf>(-7336252) */
ffa0294e:	ff e3 61 fe 	CALL 0xffa02610 <_SetupRxBuffer>;
ffa02952:	07 32       	P0 = R7;
ffa02954:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02956:	00 93       	[P0] = R0;
ffa02958:	17 32       	P2 = R7;
ffa0295a:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa0295c:	44 30       	R0 = P4;
ffa0295e:	ff e3 59 fe 	CALL 0xffa02610 <_SetupRxBuffer>;
ffa02962:	44 0c       	CC = P4 == 0x0;
ffa02964:	08 32       	P1 = R0;
ffa02966:	28 92       	[P5++] = R0;
ffa02968:	52 18       	IF CC JUMP 0xffa02a0c <_bfin_EMAC_init+0x1b0>;
ffa0296a:	07 32       	P0 = R7;
ffa0296c:	5c 0c       	CC = P4 == 0x3;
ffa0296e:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa02970:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa02974:	d0 b0       	[P2 + 0xc] = R0;
ffa02976:	54 18       	IF CC JUMP 0xffa02a1e <_bfin_EMAC_init+0x1c2>;
ffa02978:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa0297a:	5c 0d       	CC = P4 <= 0x3;
ffa0297c:	ee 1f       	IF CC JUMP 0xffa02958 <_bfin_EMAC_init+0xfc> (BP);
ffa0297e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02980:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa02984:	ff e3 f2 fd 	CALL 0xffa02568 <_SetupTxBuffer>;
ffa02988:	0b e1 b0 0e 	P3.L = 0xeb0;		/* (3760)	P3=0xff900eb0 <_txbuf> */
ffa0298c:	18 93       	[P3] = R0;
ffa0298e:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02990:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa02992:	44 30       	R0 = P4;
ffa02994:	ff e3 ea fd 	CALL 0xffa02568 <_SetupTxBuffer>;
ffa02998:	44 0c       	CC = P4 == 0x0;
ffa0299a:	08 32       	P1 = R0;
ffa0299c:	28 92       	[P5++] = R0;
ffa0299e:	35 18       	IF CC JUMP 0xffa02a08 <_bfin_EMAC_init+0x1ac>;
ffa029a0:	00 00       	NOP;
ffa029a2:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa029a4:	5c 0c       	CC = P4 == 0x3;
ffa029a6:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa029aa:	d0 b0       	[P2 + 0xc] = R0;
ffa029ac:	32 18       	IF CC JUMP 0xffa02a10 <_bfin_EMAC_init+0x1b4>;
ffa029ae:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa029b0:	5c 0d       	CC = P4 <= 0x3;
ffa029b2:	ef 1f       	IF CC JUMP 0xffa02990 <_bfin_EMAC_init+0x134> (BP);
ffa029b4:	17 32       	P2 = R7;
ffa029b6:	51 91       	P1 = [P2];
ffa029b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa029bc:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa029c0:	51 93       	[P2] = P1;
ffa029c2:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa029c4:	42 6c       	P2 += 0x8;		/* (  8) */
ffa029c6:	10 97       	W[P2] = R0;
ffa029c8:	ff e3 a8 f7 	CALL 0xffa01918 <_PollMdcDone>;
ffa029cc:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa029ce:	f0 b9       	R0 = [FP -0x4];
ffa029d0:	d1 4f       	R1 <<= 0x1a;
ffa029d2:	08 08       	CC = R0 == R1;
ffa029d4:	2c 18       	IF CC JUMP 0xffa02a2c <_bfin_EMAC_init+0x1d0>;
ffa029d6:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa029da:	01 30       	R0 = R1;
ffa029dc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa029e0:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa029e4:	10 93       	[P2] = R0;
ffa029e6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa029ea:	00 e1 e8 02 	R0.L = 0x2e8;		/* (744)	R0=0xff9002e8(-7339288) */
ffa029ee:	ff e3 1d f4 	CALL 0xffa01228 <_printf_hex>;
ffa029f2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002e8(-7339288) */
ffa029f6:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa029fa:	ff e3 b1 f3 	CALL 0xffa0115c <_printf_str>;
ffa029fe:	01 e8 00 00 	UNLINK;
ffa02a02:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a04:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02a06:	10 00       	RTS;
ffa02a08:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02a0a:	c4 2f       	JUMP.S 0xffa02992 <_bfin_EMAC_init+0x136>;
ffa02a0c:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02a0e:	a7 2f       	JUMP.S 0xffa0295c <_bfin_EMAC_init+0x100>;
ffa02a10:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa02a14:	0a e1 b0 0e 	P2.L = 0xeb0;		/* (3760)	P2=0xff900eb0 <_txbuf> */
ffa02a18:	10 91       	R0 = [P2];
ffa02a1a:	c8 b0       	[P1 + 0xc] = R0;
ffa02a1c:	cc 2f       	JUMP.S 0xffa029b4 <_bfin_EMAC_init+0x158>;
ffa02a1e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb0 <_txbuf> */
ffa02a22:	0a e1 c4 0e 	P2.L = 0xec4;		/* (3780)	P2=0xff900ec4 <_rxbuf> */
ffa02a26:	10 91       	R0 = [P2];
ffa02a28:	c8 b0       	[P1 + 0xc] = R0;
ffa02a2a:	aa 2f       	JUMP.S 0xffa0297e <_bfin_EMAC_init+0x122>;
ffa02a2c:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02a30:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa02a32:	01 30       	R0 = R1;
ffa02a34:	d4 2f       	JUMP.S 0xffa029dc <_bfin_EMAC_init+0x180>;
ffa02a36:	01 e8 00 00 	UNLINK;
ffa02a3a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02a3c:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02a3e:	10 00       	RTS;

ffa02a40 <_bfin_EMAC_recv_poll>:
ffa02a40:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02a42:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa02a46:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa02a4a:	0d e1 c4 0e 	P5.L = 0xec4;		/* (3780)	P5=0xff900ec4 <_rxbuf> */
ffa02a4e:	0c e1 c0 0e 	P4.L = 0xec0;		/* (3776)	P4=0xff900ec0 <_rxIdx> */
ffa02a52:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02a56:	28 30       	R5 = R0;
ffa02a58:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02a5a:	75 30       	R6 = P5;
ffa02a5c:	5c 32       	P3 = P4;
ffa02a5e:	06 20       	JUMP.S 0xffa02a6a <_bfin_EMAC_recv_poll+0x2a>;
ffa02a60:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02a62:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02a66:	07 08       	CC = R7 == R0;
ffa02a68:	59 18       	IF CC JUMP 0xffa02b1a <_bfin_EMAC_recv_poll+0xda>;
ffa02a6a:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02a6e:	ff e3 0d f7 	CALL 0xffa01888 <_udelay>;
ffa02a72:	20 95       	R0 = W[P4] (Z);
ffa02a74:	10 32       	P2 = R0;
ffa02a76:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02a78:	52 91       	P2 = [P2];
ffa02a7a:	90 a2       	R0 = [P2 + 0x28];
ffa02a7c:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02a7e:	f1 1f       	IF CC JUMP 0xffa02a60 <_bfin_EMAC_recv_poll+0x20> (BP);
ffa02a80:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02a84:	91 a2       	R1 = [P2 + 0x28];
ffa02a86:	41 54       	R1 = R1 & R0;
ffa02a88:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02a8a:	01 09       	CC = R1 <= R0;
ffa02a8c:	07 10       	IF !CC JUMP 0xffa02a9a <_bfin_EMAC_recv_poll+0x5a>;
ffa02a8e:	01 e8 00 00 	UNLINK;
ffa02a92:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02a94:	07 30       	R0 = R7;
ffa02a96:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02a98:	10 00       	RTS;
ffa02a9a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a9c:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa02aa0:	90 b2 00 00 
ffa02aa4:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02aa6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02aaa:	0f 30       	R1 = R7;
ffa02aac:	00 e1 f4 02 	R0.L = 0x2f4;		/* (756)	R0=0xff9002f4(-7339276) */
ffa02ab0:	ff e3 18 f4 	CALL 0xffa012e0 <_printf_int>;
ffa02ab4:	18 95       	R0 = W[P3] (Z);
ffa02ab6:	10 32       	P2 = R0;
ffa02ab8:	0e 32       	P1 = R6;
ffa02aba:	0f 30       	R1 = R7;
ffa02abc:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02abe:	52 91       	P2 = [P2];
ffa02ac0:	90 a1       	R0 = [P2 + 0x18];
ffa02ac2:	15 32       	P2 = R5;
ffa02ac4:	10 93       	[P2] = R0;
ffa02ac6:	00 e3 0f 03 	CALL 0xffa030e4 <_ARP_rx>;
ffa02aca:	00 0c       	CC = R0 == 0x0;
ffa02acc:	1f 18       	IF CC JUMP 0xffa02b0a <_bfin_EMAC_recv_poll+0xca>;
ffa02ace:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02ad0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02ad4:	20 95       	R0 = W[P4] (Z);
ffa02ad6:	10 32       	P2 = R0;
ffa02ad8:	61 95       	R1 = W[P4] (X);
ffa02ada:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02adc:	09 e1 c0 0e 	P1.L = 0xec0;		/* (3776)	P1=0xff900ec0 <_rxIdx> */
ffa02ae0:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02ae2:	52 91       	P2 = [P2];
ffa02ae4:	90 b2       	[P2 + 0x28] = R0;
ffa02ae6:	c8 42       	R0 = R1.L (Z);
ffa02ae8:	10 0d       	CC = R0 <= 0x2;
ffa02aea:	09 14       	IF !CC JUMP 0xffa02afc <_bfin_EMAC_recv_poll+0xbc> (BP);
ffa02aec:	01 30       	R0 = R1;
ffa02aee:	08 64       	R0 += 0x1;		/* (  1) */
ffa02af0:	08 97       	W[P1] = R0;
ffa02af2:	01 e8 00 00 	UNLINK;
ffa02af6:	07 30       	R0 = R7;
ffa02af8:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02afa:	10 00       	RTS;
ffa02afc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02afe:	08 97       	W[P1] = R0;
ffa02b00:	01 e8 00 00 	UNLINK;
ffa02b04:	07 30       	R0 = R7;
ffa02b06:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b08:	10 00       	RTS;
ffa02b0a:	0d 32       	P1 = R5;
ffa02b0c:	0f 30       	R1 = R7;
ffa02b0e:	08 91       	R0 = [P1];
ffa02b10:	ff e3 8e fc 	CALL 0xffa0242c <_icmp_rx>;
ffa02b14:	00 0c       	CC = R0 == 0x0;
ffa02b16:	dd 1f       	IF CC JUMP 0xffa02ad0 <_bfin_EMAC_recv_poll+0x90> (BP);
ffa02b18:	db 2f       	JUMP.S 0xffa02ace <_bfin_EMAC_recv_poll+0x8e>;
ffa02b1a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02b1e:	00 e1 00 03 	R0.L = 0x300;		/* (768)	R0=0xff900300(-7339264) */
ffa02b22:	ff e3 1d f3 	CALL 0xffa0115c <_printf_str>;
ffa02b26:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02b28:	01 e8 00 00 	UNLINK;
ffa02b2c:	07 30       	R0 = R7;
ffa02b2e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b30:	10 00       	RTS;
	...

ffa02b34 <_bridge_publish>:
ffa02b34:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02b36:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02b3a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02b3c:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa02b40:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b42:	f0 b0       	[SP + 0xc] = R0;
ffa02b44:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02b46:	20 e1 ef 00 	R0 = 0xef (X);		/*		R0=0xef(239) */
ffa02b4a:	22 e1 c8 00 	R2 = 0xc8 (X);		/*		R2=0xc8(200) */
ffa02b4e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900ec0 <_rxIdx> */
ffa02b52:	6f 30       	R5 = FP;
ffa02b54:	5f 32       	P3 = FP;
ffa02b56:	ff e3 b9 f6 	CALL 0xffa018c8 <_FormatIPAddress>;
ffa02b5a:	0c e1 e4 0e 	P4.L = 0xee4;		/* (3812)	P4=0xff900ee4 <_NetDataDestIP> */
ffa02b5e:	00 cc 24 c8 	R4 = R4 -|- R4 || [P4] = R0 || NOP;
ffa02b62:	20 93 00 00 
ffa02b66:	c5 67       	R5 += -0x8;		/* ( -8) */
ffa02b68:	fb 6f       	P3 += -0x1;		/* ( -1) */
ffa02b6a:	01 20       	JUMP.S 0xffa02b6c <_bridge_publish+0x38>;
ffa02b6c:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02b6e:	e0 bb       	[FP -0x8] = R0;
ffa02b70:	4b 30       	R1 = P3;
ffa02b72:	82 ce 05 c0 	R0 = ROT R5 BY 0x0 || R2 = [P4] || NOP;
ffa02b76:	22 91 00 00 
ffa02b7a:	ff e3 c1 fb 	CALL 0xffa022fc <_eth_header_setup>;
ffa02b7e:	08 30       	R1 = R0;
ffa02b80:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa02b84:	80 0c       	CC = R0 < 0x0;
ffa02b86:	9c 18       	IF CC JUMP 0xffa02cbe <_bridge_publish+0x18a>;
ffa02b88:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ec4 <_rxbuf> */
ffa02b8c:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetDataDestIP> */
ffa02b90:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa02b92:	12 91       	R2 = [P2];
ffa02b94:	d1 bb       	[FP -0xc] = R1;
ffa02b96:	f0 b0       	[SP + 0xc] = R0;
ffa02b98:	01 30       	R0 = R1;
ffa02b9a:	0d 30       	R1 = R5;
ffa02b9c:	ff e3 74 f7 	CALL 0xffa01a84 <_ip_header_setup>;
ffa02ba0:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa02ba4:	f1 b0       	[SP + 0xc] = R1;
ffa02ba6:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa02baa:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [FP -0xc] = R0 || NOP;
ffa02bae:	d0 bb 00 00 
ffa02bb2:	ff e3 dd f7 	CALL 0xffa01b6c <_udp_header_setup>;
ffa02bb6:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [FP -0xc] = R0 || NOP;
ffa02bba:	d0 bb 00 00 
ffa02bbe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900011(-7340015) */
ffa02bc2:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
ffa02bc4:	00 e1 10 03 	R0.L = 0x310;		/* (784)	R0=0xff900310(-7339248) */
ffa02bc8:	ff e3 72 f4 	CALL 0xffa014ac <_memcpy_>;
ffa02bcc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900310(-7339248) */
ffa02bd0:	00 e1 1c 03 	R0.L = 0x31c;		/* (796)	R0=0xff90031c(-7339236) */
ffa02bd4:	77 30       	R6 = FP;
ffa02bd6:	ff e3 c3 f2 	CALL 0xffa0115c <_printf_str>;
ffa02bda:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02bdc:	ff e3 16 f8 	CALL 0xffa01c08 <_bfin_EMAC_send_nocopy>;
ffa02be0:	a6 67       	R6 += -0xc;		/* (-12) */
ffa02be2:	05 20       	JUMP.S 0xffa02bec <_bridge_publish+0xb8>;
ffa02be4:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02be6:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02be8:	07 08       	CC = R7 == R0;
ffa02bea:	46 18       	IF CC JUMP 0xffa02c76 <_bridge_publish+0x142>;
ffa02bec:	06 30       	R0 = R6;
ffa02bee:	ff e3 29 ff 	CALL 0xffa02a40 <_bfin_EMAC_recv_poll>;
ffa02bf2:	59 61       	R1 = 0x2b (X);		/*		R1=0x2b( 43) */
ffa02bf4:	08 09       	CC = R0 <= R1;
ffa02bf6:	e0 bb       	[FP -0x8] = R0;
ffa02bf8:	dd b9       	P5 = [FP -0xc];
ffa02bfa:	f5 1f       	IF CC JUMP 0xffa02be4 <_bridge_publish+0xb0> (BP);
ffa02bfc:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa02bfe:	ff e3 0f f7 	CALL 0xffa01a1c <_htons>;
ffa02c02:	c0 42       	R0 = R0.L (Z);
ffa02c04:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa02c08:	08 08       	CC = R0 == R1;
ffa02c0a:	ed 17       	IF !CC JUMP 0xffa02be4 <_bridge_publish+0xb0> (BP);
ffa02c0c:	20 e1 f4 10 	R0 = 0x10f4 (X);		/*		R0=0x10f4(4340) */
ffa02c10:	ff e3 06 f7 	CALL 0xffa01a1c <_htons>;
ffa02c14:	c0 42       	R0 = R0.L (Z);
ffa02c16:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa02c1a:	01 08       	CC = R1 == R0;
ffa02c1c:	e4 17       	IF !CC JUMP 0xffa02be4 <_bridge_publish+0xb0> (BP);
ffa02c1e:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa02c22:	ff e3 fd f6 	CALL 0xffa01a1c <_htons>;
ffa02c26:	c0 42       	R0 = R0.L (Z);
ffa02c28:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa02c2c:	01 08       	CC = R1 == R0;
ffa02c2e:	db 17       	IF !CC JUMP 0xffa02be4 <_bridge_publish+0xb0> (BP);
ffa02c30:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9010f5(-7335691) */
ffa02c34:	e9 a1       	R1 = [P5 + 0x1c];
ffa02c36:	00 e1 34 03 	R0.L = 0x334;		/* (820)	R0=0xff900334(-7339212) */
ffa02c3a:	21 93       	[P4] = R1;
ffa02c3c:	ff e3 f4 f3 	CALL 0xffa01424 <_printf_ip>;
ffa02c40:	da b9       	P2 = [FP -0xc];
ffa02c42:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900334(-7339212) */
ffa02c46:	00 e1 40 03 	R0.L = 0x340;		/* (832)	R0=0xff900340(-7339200) */
ffa02c4a:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa02c4c:	da bb       	[FP -0xc] = P2;
ffa02c4e:	a2 6e       	P2 += -0x2c;		/* (-44) */
ffa02c50:	91 e4 2c 00 	R1 = B[P2 + 0x2c] (Z);
ffa02c54:	ff e3 94 f2 	CALL 0xffa0117c <_printf_hex_byte>;
ffa02c58:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900340(-7339200) */
ffa02c5c:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa02c60:	ff e3 7e f2 	CALL 0xffa0115c <_printf_str>;
ffa02c64:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetDataDestIP> */
ffa02c68:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c6a:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_g_streamEnabled> */
ffa02c6e:	10 9b       	B[P2] = R0;
ffa02c70:	da b9       	P2 = [FP -0xc];
ffa02c72:	10 99       	R0 = B[P2] (Z);
ffa02c74:	26 20       	JUMP.S 0xffa02cc0 <_bridge_publish+0x18c>;
ffa02c76:	ff e3 99 ea 	CALL 0xffa001a8 <_ustimer>;
ffa02c7a:	41 e1 0b e5 	R1.H = 0xe50b;		/* (-6901)	R1=0xe50b0800(-452261888) */
ffa02c7e:	08 4e       	R0 >>= 0x1;
ffa02c80:	01 e1 81 f7 	R1.L = 0xf781;		/* (-2175)	R1=0xe50bf781(-452200575) */
ffa02c84:	80 c0 01 18 	A1 = R0.L * R1.L (FU);
ffa02c88:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa02c8c:	81 c0 01 86 	A1 += R0.H * R1.L, A0 = R0.H * R1.H (FU);
ffa02c90:	81 c0 08 98 	A1 += R1.H * R0.L (FU);
ffa02c94:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa02c98:	0b c4 00 80 	A0 += A1;
ffa02c9c:	8b c0 00 38 	R0 = A0 (FU);
ffa02ca0:	82 c6 a8 83 	R1 = R0 >> 0xb;
ffa02ca4:	0c 08       	CC = R4 == R1;
ffa02ca6:	63 1b       	IF CC JUMP 0xffa02b6c <_bridge_publish+0x38>;
ffa02ca8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c34(-4191180) */
ffa02cac:	20 e1 00 80 	R0 = -0x8000 (X);		/*		R0=0xffff8000(-32768) */
ffa02cb0:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa02cb4:	82 ce 01 c8 	R4 = ROT R1 BY 0x0 || W[P2] = R0 || NOP;
ffa02cb8:	10 97 00 00 
ffa02cbc:	58 2f       	JUMP.S 0xffa02b6c <_bridge_publish+0x38>;
ffa02cbe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02cc0:	01 e8 00 00 	UNLINK;
ffa02cc4:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02cc6:	10 00       	RTS;

ffa02cc8 <_DHCP_rx>:
ffa02cc8:	e5 05       	[--SP] = (R7:4, P5:5);
ffa02cca:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02cce:	67 30       	R4 = FP;
ffa02cd0:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02cd2:	e4 67       	R4 += -0x4;		/* ( -4) */
ffa02cd4:	01 20       	JUMP.S 0xffa02cd6 <_DHCP_rx+0xe>;
ffa02cd6:	04 30       	R0 = R4;
ffa02cd8:	ff e3 b4 fe 	CALL 0xffa02a40 <_bfin_EMAC_recv_poll>;
ffa02cdc:	38 30       	R7 = R0;
ffa02cde:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa02ce2:	47 51       	R5 = R7 + R0;
ffa02ce4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa02ce8:	0d 30       	R1 = R5;
ffa02cea:	00 e1 7c 03 	R0.L = 0x37c;		/* (892)	R0=0xff90037c(-7339140) */
ffa02cee:	ff e3 f9 f2 	CALL 0xffa012e0 <_printf_int>;
ffa02cf2:	21 e1 1b 01 	R1 = 0x11b (X);		/*		R1=0x11b(283) */
ffa02cf6:	0f 09       	CC = R7 <= R1;
ffa02cf8:	fd b9       	P5 = [FP -0x4];
ffa02cfa:	0c 18       	IF CC JUMP 0xffa02d12 <_DHCP_rx+0x4a>;
ffa02cfc:	00 00       	NOP;
ffa02cfe:	00 00       	NOP;
ffa02d00:	00 00       	NOP;
ffa02d02:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa02d04:	ff e3 8c f6 	CALL 0xffa01a1c <_htons>;
ffa02d08:	c0 42       	R0 = R0.L (Z);
ffa02d0a:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa02d0e:	08 08       	CC = R0 == R1;
ffa02d10:	0f 18       	IF CC JUMP 0xffa02d2e <_DHCP_rx+0x66>;
ffa02d12:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90037c(-7339140) */
ffa02d16:	00 e1 60 03 	R0.L = 0x360;		/* (864)	R0=0xff900360(-7339168) */
ffa02d1a:	ff e3 21 f2 	CALL 0xffa0115c <_printf_str>;
ffa02d1e:	0e 64       	R6 += 0x1;		/* (  1) */
ffa02d20:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa02d22:	06 09       	CC = R6 <= R0;
ffa02d24:	d9 1f       	IF CC JUMP 0xffa02cd6 <_DHCP_rx+0xe> (BP);
ffa02d26:	ff e3 cf f8 	CALL 0xffa01ec4 <_DHCP_tx_discover>;
ffa02d2a:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02d2c:	d5 2f       	JUMP.S 0xffa02cd6 <_DHCP_rx+0xe>;
ffa02d2e:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa02d32:	ff e3 75 f6 	CALL 0xffa01a1c <_htons>;
ffa02d36:	c0 42       	R0 = R0.L (Z);
ffa02d38:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa02d3c:	01 08       	CC = R1 == R0;
ffa02d3e:	f1 17       	IF !CC JUMP 0xffa02d20 <_DHCP_rx+0x58> (BP);
ffa02d40:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa02d44:	ff e3 6c f6 	CALL 0xffa01a1c <_htons>;
ffa02d48:	c0 42       	R0 = R0.L (Z);
ffa02d4a:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa02d4e:	01 08       	CC = R1 == R0;
ffa02d50:	e8 17       	IF !CC JUMP 0xffa02d20 <_DHCP_rx+0x58> (BP);
ffa02d52:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa02d56:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa02d5a:	11 91       	R1 = [P2];
ffa02d5c:	28 a3       	R0 = [P5 + 0x30];
ffa02d5e:	08 08       	CC = R0 == R1;
ffa02d60:	e0 17       	IF !CC JUMP 0xffa02d20 <_DHCP_rx+0x58> (BP);
ffa02d62:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa02d66:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa02d6a:	ff e3 65 f6 	CALL 0xffa01a34 <_htonl>;
ffa02d6e:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa02d72:	01 08       	CC = R1 == R0;
ffa02d74:	d6 17       	IF !CC JUMP 0xffa02d20 <_DHCP_rx+0x58> (BP);
ffa02d76:	4d 30       	R1 = P5;
ffa02d78:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa02d7c:	01 50       	R0 = R1 + R0;
ffa02d7e:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa02d82:	f0 bb 00 00 
ffa02d86:	ff e3 c3 f8 	CALL 0xffa01f0c <_DHCP_parse>;
ffa02d8a:	e9 a3       	R1 = [P5 + 0x3c];
ffa02d8c:	01 0c       	CC = R1 == 0x0;
ffa02d8e:	12 1c       	IF CC JUMP 0xffa02db2 <_DHCP_rx+0xea> (BP);
ffa02d90:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa02d94:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa02d98:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa02d9c:	11 93       	[P2] = R1;
ffa02d9e:	00 e1 50 03 	R0.L = 0x350;		/* (848)	R0=0xff900350(-7339184) */
ffa02da2:	ff e3 41 f3 	CALL 0xffa01424 <_printf_ip>;
ffa02da6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900350(-7339184) */
ffa02daa:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa02dae:	ff e3 d7 f1 	CALL 0xffa0115c <_printf_str>;
ffa02db2:	01 e8 00 00 	UNLINK;
ffa02db6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02db8:	a5 05       	(R7:4, P5:5) = [SP++];
ffa02dba:	10 00       	RTS;

ffa02dbc <_DHCP_req>:
ffa02dbc:	c5 04       	[--SP] = (P5:5);
ffa02dbe:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ec4 <_rxbuf> */
ffa02dc2:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02dc6:	0d e1 a8 0e 	P5.L = 0xea8;		/* (3752)	P5=0xff900ea8 <_NetDHCPserv> */
ffa02dca:	ff e3 7d f8 	CALL 0xffa01ec4 <_DHCP_tx_discover>;
ffa02dce:	ff e3 7d ff 	CALL 0xffa02cc8 <_DHCP_rx>;
ffa02dd2:	29 91       	R1 = [P5];
ffa02dd4:	39 0c       	CC = R1 == -0x1;
ffa02dd6:	42 18       	IF CC JUMP 0xffa02e5a <_DHCP_req+0x9e>;
ffa02dd8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetOurIP> */
ffa02ddc:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa02de0:	10 91       	R0 = [P2];
ffa02de2:	00 0c       	CC = R0 == 0x0;
ffa02de4:	08 18       	IF CC JUMP 0xffa02df4 <_DHCP_req+0x38>;
ffa02de6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetOurIP> */
ffa02dea:	0a e1 dc 0e 	P2.L = 0xedc;		/* (3804)	P2=0xff900edc <_NetSubnetMask> */
ffa02dee:	10 91       	R0 = [P2];
ffa02df0:	00 0c       	CC = R0 == 0x0;
ffa02df2:	2f 10       	IF !CC JUMP 0xffa02e50 <_DHCP_req+0x94>;
ffa02df4:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa02df6:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa02dfa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02dfc:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa02e00:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02e02:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa02e06:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02e08:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02e0c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02e0e:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa02e12:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa02e16:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa02e1a:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa02e1e:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa02e22:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa02e26:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa02e2a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02e2c:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa02e30:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa02e34:	00 e1 ac 03 	R0.L = 0x3ac;		/* (940)	R0=0xff9003ac(-7339092) */
ffa02e38:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa02e3c:	ff e3 90 f1 	CALL 0xffa0115c <_printf_str>;
ffa02e40:	4f 30       	R1 = FP;
ffa02e42:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02e44:	a1 67       	R1 += -0xc;		/* (-12) */
ffa02e46:	2a 91       	R2 = [P5];
ffa02e48:	ff e3 4e f7 	CALL 0xffa01ce4 <_DHCP_tx>;
ffa02e4c:	ff e3 3e ff 	CALL 0xffa02cc8 <_DHCP_rx>;
ffa02e50:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02e52:	01 e8 00 00 	UNLINK;
ffa02e56:	85 04       	(P5:5) = [SP++];
ffa02e58:	10 00       	RTS;
ffa02e5a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02e5e:	00 e1 90 03 	R0.L = 0x390;		/* (912)	R0=0xff900390(-7339120) */
ffa02e62:	ff e3 7d f1 	CALL 0xffa0115c <_printf_str>;
ffa02e66:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02e68:	f5 2f       	JUMP.S 0xffa02e52 <_DHCP_req+0x96>;
	...

ffa02e6c <_bfin_EMAC_recv>:
ffa02e6c:	eb 05       	[--SP] = (R7:5, P5:3);
ffa02e6e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900ee4 <_NetDataDestIP> */
ffa02e72:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000 <_l1_data_a>(-7340032) */
ffa02e76:	0c e1 c0 0e 	P4.L = 0xec0;		/* (3776)	P4=0xff900ec0 <_rxIdx> */
ffa02e7a:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00eb0(-4190544) */
ffa02e7e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02e82:	28 32       	P5 = R0;
ffa02e84:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02e86:	05 e1 c4 0e 	R5.L = 0xec4;		/* (3780)	R5=0xff900ec4 <_rxbuf>(-7336252) */
ffa02e8a:	74 30       	R6 = P4;
ffa02e8c:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa02e90:	0e 32       	P1 = R6;
ffa02e92:	08 95       	R0 = W[P1] (Z);
ffa02e94:	10 32       	P2 = R0;
ffa02e96:	0d 32       	P1 = R5;
ffa02e98:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02e9a:	52 91       	P2 = [P2];
ffa02e9c:	90 a2       	R0 = [P2 + 0x28];
ffa02e9e:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02ea0:	46 18       	IF CC JUMP 0xffa02f2c <_bfin_EMAC_recv+0xc0>;
ffa02ea2:	00 00       	NOP;
ffa02ea4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ea6:	a0 4f       	R0 <<= 0x14;
ffa02ea8:	91 a2       	R1 = [P2 + 0x28];
ffa02eaa:	81 54       	R2 = R1 & R0;
ffa02eac:	02 0c       	CC = R2 == 0x0;
ffa02eae:	45 10       	IF !CC JUMP 0xffa02f38 <_bfin_EMAC_recv+0xcc>;
ffa02eb0:	00 00       	NOP;
ffa02eb2:	00 00       	NOP;
ffa02eb4:	00 00       	NOP;
ffa02eb6:	90 a2       	R0 = [P2 + 0x28];
ffa02eb8:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa02eba:	4a 18       	IF CC JUMP 0xffa02f4e <_bfin_EMAC_recv+0xe2>;
ffa02ebc:	00 00       	NOP;
ffa02ebe:	00 00       	NOP;
ffa02ec0:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02ec4:	91 a2       	R1 = [P2 + 0x28];
ffa02ec6:	c1 55       	R7 = R1 & R0;
ffa02ec8:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02eca:	07 09       	CC = R7 <= R0;
ffa02ecc:	4c 18       	IF CC JUMP 0xffa02f64 <_bfin_EMAC_recv+0xf8>;
ffa02ece:	00 00       	NOP;
ffa02ed0:	00 00       	NOP;
ffa02ed2:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02ed4:	90 a1       	R0 = [P2 + 0x18];
ffa02ed6:	59 95       	R1 = W[P3] (X);
ffa02ed8:	28 93       	[P5] = R0;
ffa02eda:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02edc:	08 56       	R0 = R0 | R1;
ffa02ede:	18 97       	W[P3] = R0;
ffa02ee0:	61 95       	R1 = W[P4] (X);
ffa02ee2:	c8 42       	R0 = R1.L (Z);
ffa02ee4:	10 0d       	CC = R0 <= 0x2;
ffa02ee6:	92 b2       	[P2 + 0x28] = R2;
ffa02ee8:	1e 1c       	IF CC JUMP 0xffa02f24 <_bfin_EMAC_recv+0xb8> (BP);
ffa02eea:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02eec:	20 97       	W[P4] = R0;
ffa02eee:	28 91       	R0 = [P5];
ffa02ef0:	0f 30       	R1 = R7;
ffa02ef2:	00 e3 f9 00 	CALL 0xffa030e4 <_ARP_rx>;
ffa02ef6:	00 0c       	CC = R0 == 0x0;
ffa02ef8:	03 18       	IF CC JUMP 0xffa02efe <_bfin_EMAC_recv+0x92>;
ffa02efa:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02efc:	ca 2f       	JUMP.S 0xffa02e90 <_bfin_EMAC_recv+0x24>;
ffa02efe:	28 91       	R0 = [P5];
ffa02f00:	0f 30       	R1 = R7;
ffa02f02:	ff e3 95 fa 	CALL 0xffa0242c <_icmp_rx>;
ffa02f06:	00 0c       	CC = R0 == 0x0;
ffa02f08:	f9 17       	IF !CC JUMP 0xffa02efa <_bfin_EMAC_recv+0x8e> (BP);
ffa02f0a:	28 91       	R0 = [P5];
ffa02f0c:	0f 30       	R1 = R7;
ffa02f0e:	00 e3 5b 04 	CALL 0xffa037c4 <_tcp_rx>;
ffa02f12:	00 0c       	CC = R0 == 0x0;
ffa02f14:	f3 17       	IF !CC JUMP 0xffa02efa <_bfin_EMAC_recv+0x8e> (BP);
ffa02f16:	07 0d       	CC = R7 <= 0x0;
ffa02f18:	bc 1f       	IF CC JUMP 0xffa02e90 <_bfin_EMAC_recv+0x24> (BP);
ffa02f1a:	01 e8 00 00 	UNLINK;
ffa02f1e:	07 30       	R0 = R7;
ffa02f20:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02f22:	10 00       	RTS;
ffa02f24:	01 30       	R0 = R1;
ffa02f26:	08 64       	R0 += 0x1;		/* (  1) */
ffa02f28:	20 97       	W[P4] = R0;
ffa02f2a:	e2 2f       	JUMP.S 0xffa02eee <_bfin_EMAC_recv+0x82>;
ffa02f2c:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02f2e:	01 e8 00 00 	UNLINK;
ffa02f32:	07 30       	R0 = R7;
ffa02f34:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02f36:	10 00       	RTS;
ffa02f38:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02f3c:	00 e1 c0 03 	R0.L = 0x3c0;		/* (960)	R0=0xff9003c0(-7339072) */
ffa02f40:	ff e3 0e f1 	CALL 0xffa0115c <_printf_str>;
ffa02f44:	01 e8 00 00 	UNLINK;
ffa02f48:	07 30       	R0 = R7;
ffa02f4a:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02f4c:	10 00       	RTS;
ffa02f4e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003c0(-7339072) */
ffa02f52:	00 e1 dc 03 	R0.L = 0x3dc;		/* (988)	R0=0xff9003dc(-7339044) */
ffa02f56:	ff e3 03 f1 	CALL 0xffa0115c <_printf_str>;
ffa02f5a:	01 e8 00 00 	UNLINK;
ffa02f5e:	07 30       	R0 = R7;
ffa02f60:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02f62:	10 00       	RTS;
ffa02f64:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003dc(-7339044) */
ffa02f68:	00 e1 f0 03 	R0.L = 0x3f0;		/* (1008)	R0=0xff9003f0(-7339024) */
ffa02f6c:	ff e3 f8 f0 	CALL 0xffa0115c <_printf_str>;
ffa02f70:	01 e8 00 00 	UNLINK;
ffa02f74:	07 30       	R0 = R7;
ffa02f76:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02f78:	10 00       	RTS;
	...

ffa02f7c <_ARP_init>:
ffa02f7c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900edc <_NetSubnetMask> */
ffa02f80:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02f84:	0a e1 ec 0e 	P2.L = 0xeec;		/* (3820)	P2=0xff900eec <_NetArpLut> */
ffa02f88:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02f8a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f8c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02f8e:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa02f90:	b2 e0 12 10 	LSETUP(0xffa02f94 <_ARP_init+0x18>, 0xffa02fb4 <_ARP_init+0x38>) LC1 = P1;
ffa02f94:	11 93       	[P2] = R1;
ffa02f96:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02f9a:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02f9e:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa02fa2:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa02fa6:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02faa:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02fae:	52 b5       	W[P2 + 0xa] = R2;
ffa02fb0:	d1 b0       	[P2 + 0xc] = R1;
ffa02fb2:	11 b1       	[P2 + 0x10] = R1;
ffa02fb4:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa02fb6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eec <_NetArpLut> */
ffa02fba:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02fbe:	0a e1 e8 0e 	P2.L = 0xee8;		/* (3816)	P2=0xff900ee8 <_NetArpLut_age> */
ffa02fc2:	10 97       	W[P2] = R0;
ffa02fc4:	01 e8 00 00 	UNLINK;
ffa02fc8:	10 00       	RTS;
	...

ffa02fcc <_ARP_lut_find>:
ffa02fcc:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900eac <_txIdx> */
ffa02fd0:	08 e1 ec 0e 	P0.L = 0xeec;		/* (3820)	P0=0xff900eec <_NetArpLut> */
ffa02fd4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02fd8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02fda:	48 32       	P1 = P0;
ffa02fdc:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02fde:	b2 e0 06 20 	LSETUP(0xffa02fe2 <_ARP_lut_find+0x16>, 0xffa02fea <_ARP_lut_find+0x1e>) LC1 = P2;
ffa02fe2:	08 91       	R0 = [P1];
ffa02fe4:	00 0c       	CC = R0 == 0x0;
ffa02fe6:	14 18       	IF CC JUMP 0xffa0300e <_ARP_lut_find+0x42>;
ffa02fe8:	0a 64       	R2 += 0x1;		/* (  1) */
ffa02fea:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02fec:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa02ff0:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02ff2:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02ff4:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa02ff6:	09 e1 0a 0f 	P1.L = 0xf0a;		/* (3850)	P1=0xff900f0a */
ffa02ffa:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa02ffc:	b2 e0 08 20 	LSETUP(0xffa03000 <_ARP_lut_find+0x34>, 0xffa0300c <_ARP_lut_find+0x40>) LC1 = P2;
ffa03000:	08 95       	R0 = W[P1] (Z);
ffa03002:	03 09       	CC = R3 <= R0;
ffa03004:	03 18       	IF CC JUMP 0xffa0300a <_ARP_lut_find+0x3e>;
ffa03006:	11 30       	R2 = R1;
ffa03008:	18 30       	R3 = R0;
ffa0300a:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa0300c:	09 64       	R1 += 0x1;		/* (  1) */
ffa0300e:	02 30       	R0 = R2;
ffa03010:	01 e8 00 00 	UNLINK;
ffa03014:	10 00       	RTS;
	...

ffa03018 <_ARP_lut_add>:
ffa03018:	f5 05       	[--SP] = (R7:6, P5:5);
ffa0301a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ea8 <_NetDHCPserv> */
ffa0301e:	0d e1 ec 0e 	P5.L = 0xeec;		/* (3820)	P5=0xff900eec <_NetArpLut> */
ffa03022:	31 30       	R6 = R1;
ffa03024:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03028:	38 30       	R7 = R0;
ffa0302a:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0302c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0302e:	4d 32       	P1 = P5;
ffa03030:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa03032:	00 00       	NOP;
ffa03034:	08 91       	R0 = [P1];
ffa03036:	07 08       	CC = R7 == R0;
ffa03038:	11 07       	IF CC R2 = R1;
ffa0303a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0303c:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa0303e:	42 0c       	CC = P2 == 0x0;
ffa03040:	23 10       	IF !CC JUMP 0xffa03086 <_ARP_lut_add+0x6e>;
ffa03042:	82 0c       	CC = R2 < 0x0;
ffa03044:	25 18       	IF CC JUMP 0xffa0308e <_ARP_lut_add+0x76>;
ffa03046:	82 c6 12 82 	R1 = R2 << 0x2;
ffa0304a:	0a 32       	P1 = R2;
ffa0304c:	11 32       	P2 = R1;
ffa0304e:	06 32       	P0 = R6;
ffa03050:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa03052:	6a 5a       	P1 = P2 + P5;
ffa03054:	22 6c       	P2 += 0x4;		/* (  4) */
ffa03056:	0f 93       	[P1] = R7;
ffa03058:	aa 5a       	P2 = P2 + P5;
ffa0305a:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa0305c:	b2 e0 03 10 	LSETUP(0xffa03060 <_ARP_lut_add+0x48>, 0xffa03062 <_ARP_lut_add+0x4a>) LC1 = P1;
ffa03060:	40 98       	R0 = B[P0++] (X);
ffa03062:	10 9a       	B[P2++] = R0;
ffa03064:	51 41       	R1 = (R1 + R2) << 0x2;
ffa03066:	09 32       	P1 = R1;
ffa03068:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa0306c:	0a e1 e8 0e 	P2.L = 0xee8;		/* (3816)	P2=0xff900ee8 <_NetArpLut_age> */
ffa03070:	50 95       	R0 = W[P2] (X);
ffa03072:	08 64       	R0 += 0x1;		/* (  1) */
ffa03074:	10 97       	W[P2] = R0;
ffa03076:	a9 5a       	P2 = P1 + P5;
ffa03078:	50 b5       	W[P2 + 0xa] = R0;
ffa0307a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0307c:	10 b1       	[P2 + 0x10] = R0;
ffa0307e:	01 e8 00 00 	UNLINK;
ffa03082:	b5 05       	(R7:6, P5:5) = [SP++];
ffa03084:	10 00       	RTS;
ffa03086:	82 0c       	CC = R2 < 0x0;
ffa03088:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa0308a:	d4 1f       	IF CC JUMP 0xffa03032 <_ARP_lut_add+0x1a> (BP);
ffa0308c:	dd 2f       	JUMP.S 0xffa03046 <_ARP_lut_add+0x2e>;
ffa0308e:	ff e3 9f ff 	CALL 0xffa02fcc <_ARP_lut_find>;
ffa03092:	10 30       	R2 = R0;
ffa03094:	d9 2f       	JUMP.S 0xffa03046 <_ARP_lut_add+0x2e>;
	...

ffa03098 <_ARP_lu>:
ffa03098:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa0309c:	c4 04       	[--SP] = (P5:4);
ffa0309e:	09 e1 ec 0e 	P1.L = 0xeec;		/* (3820)	P1=0xff900eec <_NetArpLut> */
ffa030a2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa030a6:	10 30       	R2 = R0;
ffa030a8:	29 32       	P5 = R1;
ffa030aa:	61 32       	P4 = P1;
ffa030ac:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa030ae:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa030b0:	b2 e0 06 20 	LSETUP(0xffa030b4 <_ARP_lu+0x1c>, 0xffa030bc <_ARP_lu+0x24>) LC1 = P2;
ffa030b4:	08 91       	R0 = [P1];
ffa030b6:	10 08       	CC = R0 == R2;
ffa030b8:	08 18       	IF CC JUMP 0xffa030c8 <_ARP_lu+0x30>;
ffa030ba:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa030bc:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa030be:	01 e8 00 00 	UNLINK;
ffa030c2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa030c4:	84 04       	(P5:4) = [SP++];
ffa030c6:	10 00       	RTS;
ffa030c8:	08 a1       	R0 = [P1 + 0x10];
ffa030ca:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa030cc:	f7 1f       	IF CC JUMP 0xffa030ba <_ARP_lu+0x22> (BP);
ffa030ce:	60 5a       	P1 = P0 + P4;
ffa030d0:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa030d2:	b2 e0 03 20 	LSETUP(0xffa030d6 <_ARP_lu+0x3e>, 0xffa030d8 <_ARP_lu+0x40>) LC1 = P2;
ffa030d6:	48 98       	R0 = B[P1++] (X);
ffa030d8:	28 9a       	B[P5++] = R0;
ffa030da:	01 e8 00 00 	UNLINK;
ffa030de:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa030e0:	84 04       	(P5:4) = [SP++];
ffa030e2:	10 00       	RTS;

ffa030e4 <_ARP_rx>:
ffa030e4:	fb 05       	[--SP] = (R7:7, P5:3);
ffa030e6:	20 32       	P4 = R0;
ffa030e8:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa030ec:	39 30       	R7 = R1;
ffa030ee:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa030f0:	ff e3 96 f4 	CALL 0xffa01a1c <_htons>;
ffa030f4:	c0 42       	R0 = R0.L (Z);
ffa030f6:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa030fa:	08 08       	CC = R0 == R1;
ffa030fc:	06 18       	IF CC JUMP 0xffa03108 <_ARP_rx+0x24>;
ffa030fe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03100:	01 e8 00 00 	UNLINK;
ffa03104:	bb 05       	(R7:7, P5:3) = [SP++];
ffa03106:	10 00       	RTS;
ffa03108:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa0310a:	07 0a       	CC = R7 <= R0 (IU);
ffa0310c:	f9 1f       	IF CC JUMP 0xffa030fe <_ARP_rx+0x1a> (BP);
ffa0310e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03110:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa03112:	ff e3 85 f4 	CALL 0xffa01a1c <_htons>;
ffa03116:	c0 42       	R0 = R0.L (Z);
ffa03118:	07 08       	CC = R7 == R0;
ffa0311a:	f2 17       	IF !CC JUMP 0xffa030fe <_ARP_rx+0x1a> (BP);
ffa0311c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03120:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa03122:	ff e3 7d f4 	CALL 0xffa01a1c <_htons>;
ffa03126:	c0 42       	R0 = R0.L (Z);
ffa03128:	07 08       	CC = R7 == R0;
ffa0312a:	ea 17       	IF !CC JUMP 0xffa030fe <_ARP_rx+0x1a> (BP);
ffa0312c:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa0312e:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa03132:	08 08       	CC = R0 == R1;
ffa03134:	e5 17       	IF !CC JUMP 0xffa030fe <_ARP_rx+0x1a> (BP);
ffa03136:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03138:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa0313a:	ff e3 71 f4 	CALL 0xffa01a1c <_htons>;
ffa0313e:	c0 42       	R0 = R0.L (Z);
ffa03140:	07 08       	CC = R7 == R0;
ffa03142:	0c 14       	IF !CC JUMP 0xffa0315a <_ARP_rx+0x76> (BP);
ffa03144:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa03148:	0a e1 d4 0e 	P2.L = 0xed4;		/* (3796)	P2=0xff900ed4 <_NetOurMAC> */
ffa0314c:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa03150:	10 99       	R0 = B[P2] (Z);
ffa03152:	01 08       	CC = R1 == R0;
ffa03154:	ae 18       	IF CC JUMP 0xffa032b0 <_ARP_rx+0x1cc>;
ffa03156:	00 00       	NOP;
ffa03158:	00 00       	NOP;
ffa0315a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0315c:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa0315e:	ff e3 5f f4 	CALL 0xffa01a1c <_htons>;
ffa03162:	c0 42       	R0 = R0.L (Z);
ffa03164:	07 08       	CC = R7 == R0;
ffa03166:	cc 17       	IF !CC JUMP 0xffa030fe <_ARP_rx+0x1a> (BP);
ffa03168:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa0316c:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa0316e:	ff e3 57 f4 	CALL 0xffa01a1c <_htons>;
ffa03172:	c0 42       	R0 = R0.L (Z);
ffa03174:	07 08       	CC = R7 == R0;
ffa03176:	c4 17       	IF !CC JUMP 0xffa030fe <_ARP_rx+0x1a> (BP);
ffa03178:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa0317a:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa0317e:	08 08       	CC = R0 == R1;
ffa03180:	bf 17       	IF !CC JUMP 0xffa030fe <_ARP_rx+0x1a> (BP);
ffa03182:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03184:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa03186:	ff e3 4b f4 	CALL 0xffa01a1c <_htons>;
ffa0318a:	c0 42       	R0 = R0.L (Z);
ffa0318c:	07 08       	CC = R7 == R0;
ffa0318e:	b8 17       	IF !CC JUMP 0xffa030fe <_ARP_rx+0x1a> (BP);
ffa03190:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa03194:	07 e1 e0 0e 	R7.L = 0xee0;		/* (3808)	R7=0xff900ee0 <_NetOurIP>(-7336224) */
ffa03198:	17 32       	P2 = R7;
ffa0319a:	a1 a2       	R1 = [P4 + 0x28];
ffa0319c:	10 91       	R0 = [P2];
ffa0319e:	01 08       	CC = R1 == R0;
ffa031a0:	af 17       	IF !CC JUMP 0xffa030fe <_ARP_rx+0x1a> (BP);
ffa031a2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed4 <_NetOurMAC> */
ffa031a6:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa031aa:	10 95       	R0 = W[P2] (Z);
ffa031ac:	10 32       	P2 = R0;
ffa031ae:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900eec <_NetArpLut> */
ffa031b2:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa031b6:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa031b8:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900eec <_NetArpLut> */
ffa031bc:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa031be:	52 91       	P2 = [P2];
ffa031c0:	0d e1 d4 0e 	P5.L = 0xed4;		/* (3796)	P5=0xff900ed4 <_NetOurMAC> */
ffa031c4:	93 ad       	P3 = [P2 + 0x18];
ffa031c6:	18 97       	W[P3] = R0;
ffa031c8:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa031cc:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa031d0:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa031d4:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa031d8:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa031dc:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa031e0:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa031e4:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa031e8:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa031ec:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa031f0:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa031f4:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa031f8:	68 99       	R0 = B[P5] (X);
ffa031fa:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa031fe:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa03202:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa03206:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa0320a:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa0320e:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa03212:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa03216:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa0321a:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa0321e:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa03222:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa03226:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa0322a:	ff e3 f9 f3 	CALL 0xffa01a1c <_htons>;
ffa0322e:	d8 b5       	W[P3 + 0xe] = R0;
ffa03230:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03232:	ff e3 f5 f3 	CALL 0xffa01a1c <_htons>;
ffa03236:	18 b6       	W[P3 + 0x10] = R0;
ffa03238:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa0323c:	ff e3 f0 f3 	CALL 0xffa01a1c <_htons>;
ffa03240:	58 b6       	W[P3 + 0x12] = R0;
ffa03242:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03244:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa03248:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0324a:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa0324e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03250:	ff e3 e6 f3 	CALL 0xffa01a1c <_htons>;
ffa03254:	44 32       	P0 = P4;
ffa03256:	d8 b6       	W[P3 + 0x16] = R0;
ffa03258:	53 32       	P2 = P3;
ffa0325a:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa0325c:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa0325e:	b2 e0 08 10 	LSETUP(0xffa03262 <_ARP_rx+0x17e>, 0xffa0326e <_ARP_rx+0x18a>) LC1 = P1;
ffa03262:	68 98       	R0 = B[P5++] (X);
ffa03264:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa03268:	40 98       	R0 = B[P0++] (X);
ffa0326a:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa0326e:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa03270:	17 32       	P2 = R7;
ffa03272:	50 99       	R0 = B[P2] (X);
ffa03274:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa03278:	10 91       	R0 = [P2];
ffa0327a:	40 4e       	R0 >>= 0x8;
ffa0327c:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa03280:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa03284:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa03288:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa0328c:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa03290:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa03294:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa03298:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa0329c:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa032a0:	f3 b0       	[SP + 0xc] = R3;
ffa032a2:	ff e3 13 f3 	CALL 0xffa018c8 <_FormatIPAddress>;
ffa032a6:	98 b2       	[P3 + 0x28] = R0;
ffa032a8:	ff e3 b0 f4 	CALL 0xffa01c08 <_bfin_EMAC_send_nocopy>;
ffa032ac:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa032ae:	29 2f       	JUMP.S 0xffa03100 <_ARP_rx+0x1c>;
ffa032b0:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa032b4:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa032b8:	01 08       	CC = R1 == R0;
ffa032ba:	50 17       	IF !CC JUMP 0xffa0315a <_ARP_rx+0x76> (BP);
ffa032bc:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa032c0:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa032c4:	01 08       	CC = R1 == R0;
ffa032c6:	4a 17       	IF !CC JUMP 0xffa0315a <_ARP_rx+0x76> (BP);
ffa032c8:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa032cc:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa032d0:	01 08       	CC = R1 == R0;
ffa032d2:	44 17       	IF !CC JUMP 0xffa0315a <_ARP_rx+0x76> (BP);
ffa032d4:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa032d8:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa032dc:	01 08       	CC = R1 == R0;
ffa032de:	3e 17       	IF !CC JUMP 0xffa0315a <_ARP_rx+0x76> (BP);
ffa032e0:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa032e4:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa032e8:	01 08       	CC = R1 == R0;
ffa032ea:	38 17       	IF !CC JUMP 0xffa0315a <_ARP_rx+0x76> (BP);
ffa032ec:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa032ee:	44 30       	R0 = P4;
ffa032f0:	ff e3 b6 f3 	CALL 0xffa01a5c <_pack4chars>;
ffa032f4:	38 30       	R7 = R0;
ffa032f6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa032fa:	0f 30       	R1 = R7;
ffa032fc:	00 e1 fc 04 	R0.L = 0x4fc;		/* (1276)	R0=0xff9004fc(-7338756) */
ffa03300:	ff e3 92 f0 	CALL 0xffa01424 <_printf_ip>;
ffa03304:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004fc(-7338756) */
ffa03308:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa0330c:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa0330e:	ff e3 27 ef 	CALL 0xffa0115c <_printf_str>;
ffa03312:	07 30       	R0 = R7;
ffa03314:	4c 30       	R1 = P4;
ffa03316:	ff e3 81 fe 	CALL 0xffa03018 <_ARP_lut_add>;
ffa0331a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0331c:	f2 2e       	JUMP.S 0xffa03100 <_ARP_rx+0x1c>;
	...

ffa03320 <_ARP_tx>:
ffa03320:	fc 05       	[--SP] = (R7:7, P5:4);
ffa03322:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa03326:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0332a:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa0332e:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa03332:	10 95 00 00 
ffa03336:	10 32       	P2 = R0;
ffa03338:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa0333c:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa03340:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa03342:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ed4 <_NetOurMAC> */
ffa03346:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03348:	52 91       	P2 = [P2];
ffa0334a:	0d e1 d4 0e 	P5.L = 0xed4;		/* (3796)	P5=0xff900ed4 <_NetOurMAC> */
ffa0334e:	94 ad       	P4 = [P2 + 0x18];
ffa03350:	20 97       	W[P4] = R0;
ffa03352:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03354:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa03358:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa0335c:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa03360:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa03364:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa03368:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa0336c:	68 99       	R0 = B[P5] (X);
ffa0336e:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa03372:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa03376:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa0337a:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa0337e:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa03382:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa03386:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa0338a:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa0338e:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa03392:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa03396:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa0339a:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa0339e:	ff e3 3f f3 	CALL 0xffa01a1c <_htons>;
ffa033a2:	e0 b5       	W[P4 + 0xe] = R0;
ffa033a4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa033a6:	ff e3 3b f3 	CALL 0xffa01a1c <_htons>;
ffa033aa:	20 b6       	W[P4 + 0x10] = R0;
ffa033ac:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa033b0:	ff e3 36 f3 	CALL 0xffa01a1c <_htons>;
ffa033b4:	60 b6       	W[P4 + 0x12] = R0;
ffa033b6:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa033b8:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa033bc:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa033be:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa033c2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa033c4:	ff e3 2c f3 	CALL 0xffa01a1c <_htons>;
ffa033c8:	e0 b6       	W[P4 + 0x16] = R0;
ffa033ca:	54 32       	P2 = P4;
ffa033cc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa033ce:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa033d0:	b2 e0 07 10 	LSETUP(0xffa033d4 <_ARP_tx+0xb4>, 0xffa033de <_ARP_tx+0xbe>) LC1 = P1;
ffa033d4:	68 98       	R0 = B[P5++] (X);
ffa033d6:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa033da:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa033de:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa033e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa033e4:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa033e8:	50 99       	R0 = B[P2] (X);
ffa033ea:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa033ee:	10 91       	R0 = [P2];
ffa033f0:	40 4e       	R0 >>= 0x8;
ffa033f2:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa033f6:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa033fa:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa033fe:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa03402:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa03406:	a7 b2       	[P4 + 0x28] = R7;
ffa03408:	01 e8 00 00 	UNLINK;
ffa0340c:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0340e:	ff e2 fd f3 	JUMP.L 0xffa01c08 <_bfin_EMAC_send_nocopy>;
	...

ffa03414 <_ARP_req>:
ffa03414:	ec 05       	[--SP] = (R7:5, P5:4);
ffa03416:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0341a:	38 30       	R7 = R0;
ffa0341c:	ff e3 3e fe 	CALL 0xffa03098 <_ARP_lu>;
ffa03420:	00 0c       	CC = R0 == 0x0;
ffa03422:	06 18       	IF CC JUMP 0xffa0342e <_ARP_req+0x1a>;
ffa03424:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03426:	01 e8 00 00 	UNLINK;
ffa0342a:	ac 05       	(R7:5, P5:4) = [SP++];
ffa0342c:	10 00       	RTS;
ffa0342e:	ff e3 bd e6 	CALL 0xffa001a8 <_ustimer>;
ffa03432:	41 e1 e3 38 	R1.H = 0x38e3;		/* (14563)	R1=0x38e30000(954400768) */
ffa03436:	01 e1 39 8e 	R1.L = 0x8e39;		/* (-29127)	R1=0x38e38e39(954437177) */
ffa0343a:	80 c0 01 18 	A1 = R0.L * R1.L (FU);
ffa0343e:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa03442:	81 c0 01 86 	A1 += R0.H * R1.L, A0 = R0.H * R1.H (FU);
ffa03446:	81 c0 08 98 	A1 += R1.H * R0.L (FU);
ffa0344a:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa0344e:	0b c4 00 80 	A0 += A1;
ffa03452:	8b c0 00 38 	R0 = A0 (FU);
ffa03456:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900ec0 <_rxIdx> */
ffa0345a:	82 c6 f8 8d 	R6 = R0 >> 0x1;
ffa0345e:	0c e1 ec 0e 	P4.L = 0xeec;		/* (3820)	P4=0xff900eec <_NetArpLut> */
ffa03462:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa03466:	4c 32       	P1 = P4;
ffa03468:	46 51       	R5 = R6 + R0;
ffa0346a:	6c 32       	P5 = P4;
ffa0346c:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa0346e:	b2 e0 06 20 	LSETUP(0xffa03472 <_ARP_req+0x5e>, 0xffa0347a <_ARP_req+0x66>) LC1 = P2;
ffa03472:	08 91       	R0 = [P1];
ffa03474:	07 08       	CC = R7 == R0;
ffa03476:	21 18       	IF CC JUMP 0xffa034b8 <_ARP_req+0xa4>;
ffa03478:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa0347a:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa0347c:	ff e3 a8 fd 	CALL 0xffa02fcc <_ARP_lut_find>;
ffa03480:	10 32       	P2 = R0;
ffa03482:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03484:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa03488:	09 e1 e8 0e 	P1.L = 0xee8;		/* (3816)	P1=0xff900ee8 <_NetArpLut_age> */
ffa0348c:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa0348e:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa03490:	10 b1       	[P2 + 0x10] = R0;
ffa03492:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa03496:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa0349a:	17 93 00 00 
ffa0349e:	d0 b0       	[P2 + 0xc] = R0;
ffa034a0:	48 95       	R0 = W[P1] (X);
ffa034a2:	08 64       	R0 += 0x1;		/* (  1) */
ffa034a4:	08 97       	W[P1] = R0;
ffa034a6:	50 b5       	W[P2 + 0xa] = R0;
ffa034a8:	07 30       	R0 = R7;
ffa034aa:	ff e3 3b ff 	CALL 0xffa03320 <_ARP_tx>;
ffa034ae:	01 e8 00 00 	UNLINK;
ffa034b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa034b4:	ac 05       	(R7:5, P5:4) = [SP++];
ffa034b6:	10 00       	RTS;
ffa034b8:	08 a1       	R0 = [P1 + 0x10];
ffa034ba:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa034bc:	de 1f       	IF CC JUMP 0xffa03478 <_ARP_req+0x64> (BP);
ffa034be:	e8 a0       	R0 = [P5 + 0xc];
ffa034c0:	86 09       	CC = R6 < R0 (IU);
ffa034c2:	f6 1f       	IF CC JUMP 0xffa034ae <_ARP_req+0x9a> (BP);
ffa034c4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa034c8:	0f 30       	R1 = R7;
ffa034ca:	00 e1 20 05 	R0.L = 0x520;		/* (1312)	R0=0xff900520(-7338720) */
ffa034ce:	ff e3 ab ef 	CALL 0xffa01424 <_printf_ip>;
ffa034d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900520(-7338720) */
ffa034d6:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa034da:	ff e3 41 ee 	CALL 0xffa0115c <_printf_str>;
ffa034de:	07 30       	R0 = R7;
ffa034e0:	ff e3 20 ff 	CALL 0xffa03320 <_ARP_tx>;
ffa034e4:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa034e8:	ed b0 00 00 
ffa034ec:	9d 2f       	JUMP.S 0xffa03426 <_ARP_req+0x12>;
	...

ffa034f0 <_tcp_length>:
ffa034f0:	c5 04       	[--SP] = (P5:5);
ffa034f2:	28 32       	P5 = R0;
ffa034f4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa034f8:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa034fa:	ff e3 91 f2 	CALL 0xffa01a1c <_htons>;
ffa034fe:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa03502:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa03504:	51 54       	R1 = R1 & R2;
ffa03506:	11 4f       	R1 <<= 0x2;
ffa03508:	c0 42       	R0 = R0.L (Z);
ffa0350a:	08 52       	R0 = R0 - R1;
ffa0350c:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa03510:	11 4d       	R1 >>>= 0x2;
ffa03512:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa03514:	51 54       	R1 = R1 & R2;
ffa03516:	01 e8 00 00 	UNLINK;
ffa0351a:	08 52       	R0 = R0 - R1;
ffa0351c:	85 04       	(P5:5) = [SP++];
ffa0351e:	10 00       	RTS;

ffa03520 <_tcp_checksum_calc>:
ffa03520:	08 32       	P1 = R0;
ffa03522:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03524:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03528:	28 32       	P5 = R0;
ffa0352a:	31 30       	R6 = R1;
ffa0352c:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa0352e:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa03530:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa03532:	b2 e0 03 20 	LSETUP(0xffa03536 <_tcp_checksum_calc+0x16>, 0xffa03538 <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa03536:	08 94       	R0 = W[P1++] (Z);
ffa03538:	45 51       	R5 = R5 + R0;
ffa0353a:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa0353e:	10 4e       	R0 >>= 0x2;
ffa03540:	06 50       	R0 = R6 + R0;
ffa03542:	c0 42       	R0 = R0.L (Z);
ffa03544:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa03548:	ff e3 6a f2 	CALL 0xffa01a1c <_htons>;
ffa0354c:	47 4f       	R7 <<= 0x8;
ffa0354e:	c0 42       	R0 = R0.L (Z);
ffa03550:	c7 51       	R7 = R7 + R0;
ffa03552:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa03554:	ef 50       	R3 = R7 + R5;
ffa03556:	0d 1c       	IF CC JUMP 0xffa03570 <_tcp_checksum_calc+0x50> (BP);
ffa03558:	0e 32       	P1 = R6;
ffa0355a:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa0355e:	10 4e       	R0 >>= 0x2;
ffa03560:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa03562:	0e 64       	R6 += 0x1;		/* (  1) */
ffa03564:	a9 5a       	P2 = P1 + P5;
ffa03566:	08 32       	P1 = R0;
ffa03568:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0356a:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa0356c:	8a 5a       	P2 = P2 + P1;
ffa0356e:	10 9b       	B[P2] = R0;
ffa03570:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa03574:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03576:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa0357a:	71 50       	R1 = R1 + R6;
ffa0357c:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03580:	09 4d       	R1 >>>= 0x1;
ffa03582:	18 4e       	R0 >>= 0x3;
ffa03584:	41 50       	R1 = R1 + R0;
ffa03586:	01 0d       	CC = R1 <= 0x0;
ffa03588:	09 18       	IF CC JUMP 0xffa0359a <_tcp_checksum_calc+0x7a>;
ffa0358a:	55 32       	P2 = P5;
ffa0358c:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa0358e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa03590:	0a 64       	R2 += 0x1;		/* (  1) */
ffa03592:	10 94       	R0 = W[P2++] (Z);
ffa03594:	0a 08       	CC = R2 == R1;
ffa03596:	c3 50       	R3 = R3 + R0;
ffa03598:	fc 17       	IF !CC JUMP 0xffa03590 <_tcp_checksum_calc+0x70> (BP);
ffa0359a:	d8 42       	R0 = R3.L (Z);
ffa0359c:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa035a0:	08 50       	R0 = R0 + R1;
ffa035a2:	c0 43       	R0 =~ R0;
ffa035a4:	01 e8 00 00 	UNLINK;
ffa035a8:	c0 42       	R0 = R0.L (Z);
ffa035aa:	ad 05       	(R7:5, P5:5) = [SP++];
ffa035ac:	10 00       	RTS;
	...

ffa035b0 <_tcp_checksum_set>:
ffa035b0:	c5 04       	[--SP] = (P5:5);
ffa035b2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa035b6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa035ba:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa035be:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa035c2:	10 95 00 00 
ffa035c6:	10 32       	P2 = R0;
ffa035c8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900ee8 <_NetArpLut_age> */
ffa035cc:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa035d0:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa035d2:	52 91       	P2 = [P2];
ffa035d4:	95 ad       	P5 = [P2 + 0x18];
ffa035d6:	45 30       	R0 = P5;
ffa035d8:	ff e3 a4 ff 	CALL 0xffa03520 <_tcp_checksum_calc>;
ffa035dc:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa035e0:	01 e8 00 00 	UNLINK;
ffa035e4:	85 04       	(P5:5) = [SP++];
ffa035e6:	10 00       	RTS;

ffa035e8 <_tcp_checksum_check>:
ffa035e8:	10 32       	P2 = R0;
ffa035ea:	78 05       	[--SP] = (R7:7);
ffa035ec:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa035f0:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa035f4:	ff e3 96 ff 	CALL 0xffa03520 <_tcp_checksum_calc>;
ffa035f8:	0f 30       	R1 = R7;
ffa035fa:	c7 42       	R7 = R0.L (Z);
ffa035fc:	39 08       	CC = R1 == R7;
ffa035fe:	19 18       	IF CC JUMP 0xffa03630 <_tcp_checksum_check+0x48>;
ffa03600:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03604:	00 e1 40 05 	R0.L = 0x540;		/* (1344)	R0=0xff900540(-7338688) */
ffa03608:	ff e3 10 ee 	CALL 0xffa01228 <_printf_hex>;
ffa0360c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900540(-7338688) */
ffa03610:	0f 30       	R1 = R7;
ffa03612:	00 e1 5c 05 	R0.L = 0x55c;		/* (1372)	R0=0xff90055c(-7338660) */
ffa03616:	ff e3 09 ee 	CALL 0xffa01228 <_printf_hex>;
ffa0361a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90055c(-7338660) */
ffa0361e:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa03622:	ff e3 9d ed 	CALL 0xffa0115c <_printf_str>;
ffa03626:	01 e8 00 00 	UNLINK;
ffa0362a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0362c:	38 05       	(R7:7) = [SP++];
ffa0362e:	10 00       	RTS;
ffa03630:	01 e8 00 00 	UNLINK;
ffa03634:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03636:	38 05       	(R7:7) = [SP++];
ffa03638:	10 00       	RTS;
	...

ffa0363c <_tcp_packet_setup>:
ffa0363c:	ed 05       	[--SP] = (R7:5, P5:5);
ffa0363e:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03642:	29 32       	P5 = R1;
ffa03644:	7f 30       	R7 = FP;
ffa03646:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa03648:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0364a:	f0 bb       	[FP -0x4] = R0;
ffa0364c:	07 30       	R0 = R7;
ffa0364e:	2a 30       	R5 = R2;
ffa03650:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa03654:	ff e3 54 f6 	CALL 0xffa022fc <_eth_header_setup>;
ffa03658:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa0365c:	68 99 00 00 
ffa03660:	80 0c       	CC = R0 < 0x0;
ffa03662:	14 18       	IF CC JUMP 0xffa0368a <_tcp_packet_setup+0x4e>;
ffa03664:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03666:	f0 b0       	[SP + 0xc] = R0;
ffa03668:	15 30       	R2 = R5;
ffa0366a:	01 30       	R0 = R1;
ffa0366c:	0f 30       	R1 = R7;
ffa0366e:	ff e3 0b f2 	CALL 0xffa01a84 <_ip_header_setup>;
ffa03672:	b9 a2       	R1 = [FP + 0x28];
ffa03674:	f1 b0       	[SP + 0xc] = R1;
ffa03676:	f9 a2       	R1 = [FP + 0x2c];
ffa03678:	31 b1       	[SP + 0x10] = R1;
ffa0367a:	72 43       	R2 = R6.B (Z);
ffa0367c:	0f 30       	R1 = R7;
ffa0367e:	ff e3 95 f2 	CALL 0xffa01ba8 <_tcp_header_setup>;
ffa03682:	01 e8 00 00 	UNLINK;
ffa03686:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03688:	10 00       	RTS;
ffa0368a:	01 e8 00 00 	UNLINK;
ffa0368e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03690:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03692:	10 00       	RTS;

ffa03694 <_tcp_burst>:
ffa03694:	e3 05       	[--SP] = (R7:4, P5:3);
ffa03696:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa0369a:	78 b2       	[FP + 0x24] = R0;
ffa0369c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 */
ffa036a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa036a4:	7a a2       	R2 = [FP + 0x24];
ffa036a6:	0b e1 d4 0f 	P3.L = 0xfd4;		/* (4052)	P3=0xff900fd4 <_g_httpHeaderLen> */
ffa036aa:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa036ae:	02 0d       	CC = R2 <= 0x0;
ffa036b0:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa036b4:	10 91 00 00 
ffa036b8:	19 91       	R1 = [P3];
ffa036ba:	7e 18       	IF CC JUMP 0xffa037b6 <_tcp_burst+0x122>;
ffa036bc:	41 50       	R1 = R1 + R0;
ffa036be:	8f 09       	CC = R7 < R1 (IU);
ffa036c0:	21 32       	P4 = R1;
ffa036c2:	7a 10       	IF !CC JUMP 0xffa037b6 <_tcp_burst+0x122>;
ffa036c4:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa036c6:	38 20       	JUMP.S 0xffa03736 <_tcp_burst+0xa2>;
ffa036c8:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa036ca:	18 91       	R0 = [P3];
ffa036cc:	07 52       	R0 = R7 - R0;
ffa036ce:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa036d2:	08 50       	R0 = R0 + R1;
ffa036d4:	16 30       	R2 = R6;
ffa036d6:	0d 30       	R1 = R5;
ffa036d8:	ff e3 ea ee 	CALL 0xffa014ac <_memcpy_>;
ffa036dc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900eb0 <_txbuf> */
ffa036e0:	09 e1 c0 0f 	P1.L = 0xfc0;		/* (4032)	P1=0xff900fc0 <_TcpSeqHttpStart> */
ffa036e4:	08 91       	R0 = [P1];
ffa036e6:	f7 51       	R7 = R7 + R6;
ffa036e8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd8 <_g_httpContentLen> */
ffa036ec:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa036f0:	07 50       	R0 = R7 + R0;
ffa036f2:	10 93       	[P2] = R0;
ffa036f4:	26 50       	R0 = R6 + R4;
ffa036f6:	ff e3 5d ff 	CALL 0xffa035b0 <_tcp_checksum_set>;
ffa036fa:	ff e3 87 f2 	CALL 0xffa01c08 <_bfin_EMAC_send_nocopy>;
ffa036fe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03702:	0a e1 c0 0e 	P2.L = 0xec0;		/* (3776)	P2=0xff900ec0 <_rxIdx> */
ffa03706:	10 95       	R0 = W[P2] (Z);
ffa03708:	10 32       	P2 = R0;
ffa0370a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900fc0 <_TcpSeqHttpStart> */
ffa0370e:	09 e1 c4 0e 	P1.L = 0xec4;		/* (3780)	P1=0xff900ec4 <_rxbuf> */
ffa03712:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa03714:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03716:	52 91       	P2 = [P2];
ffa03718:	90 a2       	R0 = [P2 + 0x28];
ffa0371a:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa0371c:	07 1c       	IF CC JUMP 0xffa0372a <_tcp_burst+0x96> (BP);
ffa0371e:	90 a2       	R0 = [P2 + 0x28];
ffa03720:	4d 30       	R1 = P5;
ffa03722:	7a a2       	R2 = [FP + 0x24];
ffa03724:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa03726:	11 50       	R0 = R1 + R2;
ffa03728:	a8 06       	IF !CC P5 = R0;
ffa0372a:	79 ae       	P1 = [FP + 0x24];
ffa0372c:	69 09       	CC = P1 <= P5;
ffa0372e:	45 18       	IF CC JUMP 0xffa037b8 <_tcp_burst+0x124>;
ffa03730:	44 30       	R0 = P4;
ffa03732:	87 09       	CC = R7 < R0 (IU);
ffa03734:	42 10       	IF !CC JUMP 0xffa037b8 <_tcp_burst+0x124>;
ffa03736:	44 30       	R0 = P4;
ffa03738:	b8 52       	R2 = R0 - R7;
ffa0373a:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa0373e:	0a 09       	CC = R2 <= R1;
ffa03740:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03742:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa03744:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900ec4 <_rxbuf> */
ffa03748:	08 06       	IF !CC R1 = R0;
ffa0374a:	09 e1 c0 0f 	P1.L = 0xfc0;		/* (4032)	P1=0xff900fc0 <_TcpSeqHttpStart> */
ffa0374e:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa03752:	07 cc 10 4c 	R6 = MIN (R2, R0) || R0 = [P1] || NOP;
ffa03756:	08 91 00 00 
ffa0375a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ec0 <_rxIdx> */
ffa0375e:	07 50       	R0 = R7 + R0;
ffa03760:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03764:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900fc0 <_TcpSeqHttpStart> */
ffa03768:	10 93       	[P2] = R0;
ffa0376a:	09 e1 bc 0f 	P1.L = 0xfbc;		/* (4028)	P1=0xff900fbc <_TcpSeqClient> */
ffa0376e:	f1 b0       	[SP + 0xc] = R1;
ffa03770:	30 b1       	[SP + 0x10] = R0;
ffa03772:	08 91       	R0 = [P1];
ffa03774:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03778:	70 b1       	[SP + 0x14] = R0;
ffa0377a:	0a e1 a4 0e 	P2.L = 0xea4;		/* (3748)	P2=0xff900ea4 <_NetDestIP> */
ffa0377e:	4f 30       	R1 = FP;
ffa03780:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R2 = [P2] || NOP;
ffa03784:	12 91 00 00 
ffa03788:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0378a:	ff e3 59 ff 	CALL 0xffa0363c <_tcp_packet_setup>;
ffa0378e:	28 30       	R5 = R0;
ffa03790:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03794:	00 0d       	CC = R0 <= 0x0;
ffa03796:	ca 1b       	IF CC JUMP 0xffa0372a <_tcp_burst+0x96>;
ffa03798:	18 91       	R0 = [P3];
ffa0379a:	38 0a       	CC = R0 <= R7 (IU);
ffa0379c:	96 1f       	IF CC JUMP 0xffa036c8 <_tcp_burst+0x34> (BP);
ffa0379e:	38 53       	R4 = R0 - R7;
ffa037a0:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa037a4:	07 50       	R0 = R7 + R0;
ffa037a6:	0d 30       	R1 = R5;
ffa037a8:	14 30       	R2 = R4;
ffa037aa:	ff e3 81 ee 	CALL 0xffa014ac <_memcpy_>;
ffa037ae:	65 51       	R5 = R5 + R4;
ffa037b0:	a6 53       	R6 = R6 - R4;
ffa037b2:	e7 51       	R7 = R7 + R4;
ffa037b4:	8b 2f       	JUMP.S 0xffa036ca <_tcp_burst+0x36>;
ffa037b6:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa037b8:	01 e8 00 00 	UNLINK;
ffa037bc:	45 30       	R0 = P5;
ffa037be:	a3 05       	(R7:4, P5:3) = [SP++];
ffa037c0:	10 00       	RTS;
	...

ffa037c4 <_tcp_rx>:
ffa037c4:	e3 05       	[--SP] = (R7:4, P5:3);
ffa037c6:	20 32       	P4 = R0;
ffa037c8:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa037cc:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa037d0:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa037d2:	ff e3 25 f1 	CALL 0xffa01a1c <_htons>;
ffa037d6:	c0 42       	R0 = R0.L (Z);
ffa037d8:	07 08       	CC = R7 == R0;
ffa037da:	06 18       	IF CC JUMP 0xffa037e6 <_tcp_rx+0x22>;
ffa037dc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa037de:	01 e8 00 00 	UNLINK;
ffa037e2:	a3 05       	(R7:4, P5:3) = [SP++];
ffa037e4:	10 00       	RTS;
ffa037e6:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa037ea:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa037ec:	08 08       	CC = R0 == R1;
ffa037ee:	f7 17       	IF !CC JUMP 0xffa037dc <_tcp_rx+0x18> (BP);
ffa037f0:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa037f4:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa037f8:	ff e3 12 f1 	CALL 0xffa01a1c <_htons>;
ffa037fc:	c0 42       	R0 = R0.L (Z);
ffa037fe:	07 08       	CC = R7 == R0;
ffa03800:	ee 17       	IF !CC JUMP 0xffa037dc <_tcp_rx+0x18> (BP);
ffa03802:	44 30       	R0 = P4;
ffa03804:	80 64       	R0 += 0x10;		/* ( 16) */
ffa03806:	ff e3 85 f1 	CALL 0xffa01b10 <_ip_header_checksum>;
ffa0380a:	40 43       	R0 = R0.B (Z);
ffa0380c:	00 0c       	CC = R0 == 0x0;
ffa0380e:	e7 1f       	IF CC JUMP 0xffa037dc <_tcp_rx+0x18> (BP);
ffa03810:	4c 30       	R1 = P4;
ffa03812:	41 64       	R1 += 0x8;		/* (  8) */
ffa03814:	e0 a1       	R0 = [P4 + 0x1c];
ffa03816:	ff e3 01 fc 	CALL 0xffa03018 <_ARP_lut_add>;
ffa0381a:	44 30       	R0 = P4;
ffa0381c:	ff e3 6a fe 	CALL 0xffa034f0 <_tcp_length>;
ffa03820:	30 30       	R6 = R0;
ffa03822:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa03826:	0e 30       	R1 = R6;
ffa03828:	00 e1 6c 05 	R0.L = 0x56c;		/* (1388)	R0=0xff90056c(-7338644) */
ffa0382c:	ff e3 5a ed 	CALL 0xffa012e0 <_printf_int>;
ffa03830:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90056c(-7338644) */
ffa03834:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa03838:	ff e3 92 ec 	CALL 0xffa0115c <_printf_str>;
ffa0383c:	44 30       	R0 = P4;
ffa0383e:	0e 30       	R1 = R6;
ffa03840:	ff e3 d4 fe 	CALL 0xffa035e8 <_tcp_checksum_check>;
ffa03844:	40 43       	R0 = R0.B (Z);
ffa03846:	00 0c       	CC = R0 == 0x0;
ffa03848:	ca 1b       	IF CC JUMP 0xffa037dc <_tcp_rx+0x18>;
ffa0384a:	00 00       	NOP;
ffa0384c:	00 00       	NOP;
ffa0384e:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa03850:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03854:	48 43       	R0 = R1.B (Z);
ffa03856:	10 08       	CC = R0 == R2;
ffa03858:	f1 18       	IF CC JUMP 0xffa03a3a <_tcp_rx+0x276>;
ffa0385a:	10 0c       	CC = R0 == 0x2;
ffa0385c:	0a 19       	IF CC JUMP 0xffa03a70 <_tcp_rx+0x2ac>;
ffa0385e:	48 43       	R0 = R1.B (Z);
ffa03860:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03862:	08 08       	CC = R0 == R1;
ffa03864:	85 18       	IF CC JUMP 0xffa0396e <_tcp_rx+0x1aa>;
ffa03866:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03868:	ab 10       	IF !CC JUMP 0xffa039be <_tcp_rx+0x1fa>;
ffa0386a:	00 00       	NOP;
ffa0386c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900fd4 <_g_httpHeaderLen> */
ffa03870:	0b e1 c4 0f 	P3.L = 0xfc4;		/* (4036)	P3=0xff900fc4 <_TcpState> */
ffa03874:	00 00       	NOP;
ffa03876:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa0387a:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa0387c:	38 10       	IF !CC JUMP 0xffa038ec <_tcp_rx+0x128>;
ffa0387e:	18 91       	R0 = [P3];
ffa03880:	10 0c       	CC = R0 == 0x2;
ffa03882:	ad 17       	IF !CC JUMP 0xffa037dc <_tcp_rx+0x18> (BP);
ffa03884:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900000 <_l1_data_a>(-7340032) */
ffa03888:	a0 a2       	R0 = [P4 + 0x28];
ffa0388a:	04 e1 a4 0e 	R4.L = 0xea4;		/* (3748)	R4=0xff900ea4 <_NetDestIP>(-7336284) */
ffa0388e:	a5 e5 30 00 	R5 = B[P4 + 0x30] (X);
ffa03892:	ff e3 d1 f0 	CALL 0xffa01a34 <_htonl>;
ffa03896:	14 32       	P2 = R4;
ffa03898:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa0389c:	30 50       	R0 = R0 + R6;
ffa0389e:	0d e1 bc 0f 	P5.L = 0xfbc;		/* (4028)	P5=0xff900fbc <_TcpSeqClient> */
ffa038a2:	28 93       	[P5] = R0;
ffa038a4:	e0 a1       	R0 = [P4 + 0x1c];
ffa038a6:	10 93       	[P2] = R0;
ffa038a8:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900fc4 <_TcpState> */
ffa038ac:	e0 a2       	R0 = [P4 + 0x2c];
ffa038ae:	0b e1 c0 0f 	P3.L = 0xfc0;		/* (4032)	P3=0xff900fc0 <_TcpSeqHttpStart> */
ffa038b2:	ff e3 c1 f0 	CALL 0xffa01a34 <_htonl>;
ffa038b6:	19 91       	R1 = [P3];
ffa038b8:	c8 53       	R7 = R0 - R1;
ffa038ba:	a1 e4 31 00 	R1 = B[P4 + 0x31] (Z);
ffa038be:	21 48       	CC = !BITTST (R1, 0x4);		/* bit  4 */
ffa038c0:	1e 1d       	IF CC JUMP 0xffa03afc <_tcp_rx+0x338> (BP);
ffa038c2:	06 0c       	CC = R6 == 0x0;
ffa038c4:	1c 15       	IF !CC JUMP 0xffa03afc <_tcp_rx+0x338> (BP);
ffa038c6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea4 <_NetDestIP> */
ffa038ca:	0a e1 d4 0f 	P2.L = 0xfd4;		/* (4052)	P2=0xff900fd4 <_g_httpHeaderLen> */
ffa038ce:	10 91       	R0 = [P2];
ffa038d0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd4 <_g_httpHeaderLen> */
ffa038d4:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa038d8:	11 91       	R1 = [P2];
ffa038da:	08 50       	R0 = R0 + R1;
ffa038dc:	07 08       	CC = R7 == R0;
ffa038de:	46 18       	IF CC JUMP 0xffa0396a <_tcp_rx+0x1a6>;
ffa038e0:	0f 30       	R1 = R7;
ffa038e2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa038e4:	ff e3 d8 fe 	CALL 0xffa03694 <_tcp_burst>;
ffa038e8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa038ea:	7a 2f       	JUMP.S 0xffa037de <_tcp_rx+0x1a>;
ffa038ec:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa038ee:	1f 91       	R7 = [P3];
ffa038f0:	07 08       	CC = R7 == R0;
ffa038f2:	85 19       	IF CC JUMP 0xffa03bfc <_tcp_rx+0x438>;
ffa038f4:	07 0c       	CC = R7 == 0x0;
ffa038f6:	c4 17       	IF !CC JUMP 0xffa0387e <_tcp_rx+0xba> (BP);
ffa038f8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa038fc:	00 e1 e8 05 	R0.L = 0x5e8;		/* (1512)	R0=0xff9005e8(-7338520) */
ffa03900:	ff e3 2e ec 	CALL 0xffa0115c <_printf_str>;
ffa03904:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd8 <_g_httpContentLen> */
ffa03908:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_g_httpRxed> */
ffa0390c:	17 93       	[P2] = R7;
ffa0390e:	a0 a2       	R0 = [P4 + 0x28];
ffa03910:	ff e3 92 f0 	CALL 0xffa01a34 <_htonl>;
ffa03914:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fdc <_g_httpRxed> */
ffa03918:	0a e1 bc 0f 	P2.L = 0xfbc;		/* (4028)	P2=0xff900fbc <_TcpSeqClient> */
ffa0391c:	10 93       	[P2] = R0;
ffa0391e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fbc <_TcpSeqClient> */
ffa03922:	e2 a1       	R2 = [P4 + 0x1c];
ffa03924:	0a e1 a4 0e 	P2.L = 0xea4;		/* (3748)	P2=0xff900ea4 <_NetDestIP> */
ffa03928:	12 93       	[P2] = R2;
ffa0392a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea4 <_NetDestIP> */
ffa0392e:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03932:	0a e1 d0 0f 	P2.L = 0xfd0;		/* (4048)	P2=0xff900fd0 <_TcpClientPort> */
ffa03936:	11 97       	W[P2] = R1;
ffa03938:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa0393a:	f1 b0       	[SP + 0xc] = R1;
ffa0393c:	4f 30       	R1 = FP;
ffa0393e:	30 b1       	[SP + 0x10] = R0;
ffa03940:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03942:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa03946:	77 b1 00 00 
ffa0394a:	ff e3 79 fe 	CALL 0xffa0363c <_tcp_packet_setup>;
ffa0394e:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03952:	00 0d       	CC = R0 <= 0x0;
ffa03954:	95 1b       	IF CC JUMP 0xffa0387e <_tcp_rx+0xba>;
ffa03956:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd0 <_TcpClientPort> */
ffa0395a:	0a e1 c4 0f 	P2.L = 0xfc4;		/* (4036)	P2=0xff900fc4 <_TcpState> */
ffa0395e:	17 93       	[P2] = R7;
ffa03960:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03962:	ff e3 27 fe 	CALL 0xffa035b0 <_tcp_checksum_set>;
ffa03966:	ff e3 51 f1 	CALL 0xffa01c08 <_bfin_EMAC_send_nocopy>;
ffa0396a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0396c:	39 2f       	JUMP.S 0xffa037de <_tcp_rx+0x1a>;
ffa0396e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900fc0 <_TcpSeqHttpStart> */
ffa03972:	0b e1 c4 0f 	P3.L = 0xfc4;		/* (4036)	P3=0xff900fc4 <_TcpState> */
ffa03976:	18 91       	R0 = [P3];
ffa03978:	08 0c       	CC = R0 == 0x1;
ffa0397a:	b9 17       	IF !CC JUMP 0xffa038ec <_tcp_rx+0x128> (BP);
ffa0397c:	e0 a2       	R0 = [P4 + 0x2c];
ffa0397e:	ff e3 5b f0 	CALL 0xffa01a34 <_htonl>;
ffa03982:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc4 <_TcpState> */
ffa03986:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa0398a:	11 91       	R1 = [P2];
ffa0398c:	08 08       	CC = R0 == R1;
ffa0398e:	42 19       	IF CC JUMP 0xffa03c12 <_tcp_rx+0x44e>;
ffa03990:	00 00       	NOP;
ffa03992:	00 00       	NOP;
ffa03994:	00 00       	NOP;
ffa03996:	e0 a2       	R0 = [P4 + 0x2c];
ffa03998:	ff e3 4e f0 	CALL 0xffa01a34 <_htonl>;
ffa0399c:	08 30       	R1 = R0;
ffa0399e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa039a2:	00 e1 98 05 	R0.L = 0x598;		/* (1432)	R0=0xff900598(-7338600) */
ffa039a6:	ff e3 3f ed 	CALL 0xffa01424 <_printf_ip>;
ffa039aa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa039ac:	18 93       	[P3] = R0;
ffa039ae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa039b2:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa039b6:	ff e3 d3 eb 	CALL 0xffa0115c <_printf_str>;
ffa039ba:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa039bc:	11 2f       	JUMP.S 0xffa037de <_tcp_rx+0x1a>;
ffa039be:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa039c2:	00 e1 c4 05 	R0.L = 0x5c4;		/* (1476)	R0=0xff9005c4(-7338556) */
ffa039c6:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900ea4 <_NetDestIP>(-7336284) */
ffa039ca:	ff e3 c9 eb 	CALL 0xffa0115c <_printf_str>;
ffa039ce:	04 e1 a4 0e 	R4.L = 0xea4;		/* (3748)	R4=0xff900ea4 <_NetDestIP>(-7336284) */
ffa039d2:	a0 a2       	R0 = [P4 + 0x28];
ffa039d4:	ff e3 30 f0 	CALL 0xffa01a34 <_htonl>;
ffa039d8:	14 32       	P2 = R4;
ffa039da:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fbc <_TcpSeqClient> */
ffa039de:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900fc4 <_TcpState> */
ffa039e2:	0d e1 bc 0f 	P5.L = 0xfbc;		/* (4028)	P5=0xff900fbc <_TcpSeqClient> */
ffa039e6:	0b e1 c4 0f 	P3.L = 0xfc4;		/* (4036)	P3=0xff900fc4 <_TcpState> */
ffa039ea:	28 93       	[P5] = R0;
ffa039ec:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa039f0:	18 91 00 00 
ffa039f4:	e2 a1       	R2 = [P4 + 0x1c];
ffa039f6:	09 64       	R1 += 0x1;		/* (  1) */
ffa039f8:	10 0c       	CC = R0 == 0x2;
ffa039fa:	12 93       	[P2] = R2;
ffa039fc:	29 93       	[P5] = R1;
ffa039fe:	03 18       	IF CC JUMP 0xffa03a04 <_tcp_rx+0x240>;
ffa03a00:	00 0c       	CC = R0 == 0x0;
ffa03a02:	c0 14       	IF !CC JUMP 0xffa03b82 <_tcp_rx+0x3be> (BP);
ffa03a04:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa03a06:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03a0a:	f0 b0       	[SP + 0xc] = R0;
ffa03a0c:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03a10:	10 91       	R0 = [P2];
ffa03a12:	71 b1       	[SP + 0x14] = R1;
ffa03a14:	4f 30       	R1 = FP;
ffa03a16:	30 b1       	[SP + 0x10] = R0;
ffa03a18:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03a1a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a1c:	ff e3 10 fe 	CALL 0xffa0363c <_tcp_packet_setup>;
ffa03a20:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03a24:	00 0d       	CC = R0 <= 0x0;
ffa03a26:	ae 18       	IF CC JUMP 0xffa03b82 <_tcp_rx+0x3be>;
ffa03a28:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa03a2a:	18 93       	[P3] = R0;
ffa03a2c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a2e:	ff e3 c1 fd 	CALL 0xffa035b0 <_tcp_checksum_set>;
ffa03a32:	ff e3 eb f0 	CALL 0xffa01c08 <_bfin_EMAC_send_nocopy>;
ffa03a36:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03a38:	d3 2e       	JUMP.S 0xffa037de <_tcp_rx+0x1a>;
ffa03a3a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03a3e:	00 e1 80 05 	R0.L = 0x580;		/* (1408)	R0=0xff900580(-7338624) */
ffa03a42:	ff e3 8d eb 	CALL 0xffa0115c <_printf_str>;
ffa03a46:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03a4a:	0a e1 c4 0f 	P2.L = 0xfc4;		/* (4036)	P2=0xff900fc4 <_TcpState> */
ffa03a4e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03a50:	17 93       	[P2] = R7;
ffa03a52:	a0 a2       	R0 = [P4 + 0x28];
ffa03a54:	ff e3 f0 ef 	CALL 0xffa01a34 <_htonl>;
ffa03a58:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc4 <_TcpState> */
ffa03a5c:	0a e1 bc 0f 	P2.L = 0xfbc;		/* (4028)	P2=0xff900fbc <_TcpSeqClient> */
ffa03a60:	10 93       	[P2] = R0;
ffa03a62:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fbc <_TcpSeqClient> */
ffa03a66:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_g_httpRxed> */
ffa03a6a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03a6c:	17 93       	[P2] = R7;
ffa03a6e:	b8 2e       	JUMP.S 0xffa037de <_tcp_rx+0x1a>;
ffa03a70:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03a74:	00 e1 8c 05 	R0.L = 0x58c;		/* (1420)	R0=0xff90058c(-7338612) */
ffa03a78:	ff e3 72 eb 	CALL 0xffa0115c <_printf_str>;
ffa03a7c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fbc <_TcpSeqClient> */
ffa03a80:	a0 a2       	R0 = [P4 + 0x28];
ffa03a82:	ff e3 d9 ef 	CALL 0xffa01a34 <_htonl>;
ffa03a86:	0d e1 bc 0f 	P5.L = 0xfbc;		/* (4028)	P5=0xff900fbc <_TcpSeqClient> */
ffa03a8a:	28 93       	[P5] = R0;
ffa03a8c:	44 30       	R0 = P4;
ffa03a8e:	ff e3 31 fd 	CALL 0xffa034f0 <_tcp_length>;
ffa03a92:	29 91       	R1 = [P5];
ffa03a94:	09 64       	R1 += 0x1;		/* (  1) */
ffa03a96:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fdc <_g_httpRxed> */
ffa03a9a:	08 50       	R0 = R0 + R1;
ffa03a9c:	0a e1 d0 0f 	P2.L = 0xfd0;		/* (4048)	P2=0xff900fd0 <_TcpClientPort> */
ffa03aa0:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03aa4:	11 97       	W[P2] = R1;
ffa03aa6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd0 <_TcpClientPort> */
ffa03aaa:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa03aae:	28 93 00 00 
ffa03ab2:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_g_httpRxed> */
ffa03ab6:	11 93       	[P2] = R1;
ffa03ab8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fdc <_g_httpRxed> */
ffa03abc:	e2 a1       	R2 = [P4 + 0x1c];
ffa03abe:	0a e1 a4 0e 	P2.L = 0xea4;		/* (3748)	P2=0xff900ea4 <_NetDestIP> */
ffa03ac2:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa03ac4:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fbc <_TcpSeqClient> */
ffa03ac8:	12 93       	[P2] = R2;
ffa03aca:	0d e1 b8 0f 	P5.L = 0xfb8;		/* (4024)	P5=0xff900fb8 <_TcpSeqHost> */
ffa03ace:	f1 b0       	[SP + 0xc] = R1;
ffa03ad0:	29 91       	R1 = [P5];
ffa03ad2:	31 b1       	[SP + 0x10] = R1;
ffa03ad4:	4f 30       	R1 = FP;
ffa03ad6:	70 b1       	[SP + 0x14] = R0;
ffa03ad8:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03ada:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03adc:	ff e3 b0 fd 	CALL 0xffa0363c <_tcp_packet_setup>;
ffa03ae0:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03ae4:	00 0d       	CC = R0 <= 0x0;
ffa03ae6:	93 18       	IF CC JUMP 0xffa03c0c <_tcp_rx+0x448>;
ffa03ae8:	28 91       	R0 = [P5];
ffa03aea:	08 64       	R0 += 0x1;		/* (  1) */
ffa03aec:	28 93       	[P5] = R0;
ffa03aee:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03af0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea4 <_NetDestIP> */
ffa03af4:	0a e1 c4 0f 	P2.L = 0xfc4;		/* (4036)	P2=0xff900fc4 <_TcpState> */
ffa03af8:	10 93       	[P2] = R0;
ffa03afa:	33 2f       	JUMP.S 0xffa03960 <_tcp_rx+0x19c>;
ffa03afc:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa03b00:	28 54       	R0 = R0 & R5;
ffa03b02:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa03b04:	10 4d       	R0 >>>= 0x2;
ffa03b06:	54 30       	R2 = P4;
ffa03b08:	19 48       	CC = !BITTST (R1, 0x3);		/* bit  3 */
ffa03b0a:	02 50       	R0 = R2 + R0;
ffa03b0c:	5d 1c       	IF CC JUMP 0xffa03bc6 <_tcp_rx+0x402> (BP);
ffa03b0e:	0e 30       	R1 = R6;
ffa03b10:	00 e3 60 05 	CALL 0xffa045d0 <_httpCollate>;
ffa03b14:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fb8 <_TcpSeqHost> */
ffa03b18:	18 91       	R0 = [P3];
ffa03b1a:	07 50       	R0 = R7 + R0;
ffa03b1c:	0d e1 b8 0f 	P5.L = 0xfb8;		/* (4024)	P5=0xff900fb8 <_TcpSeqHost> */
ffa03b20:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900eec <_NetArpLut> */
ffa03b24:	28 93       	[P5] = R0;
ffa03b26:	0c e1 dc 0f 	P4.L = 0xfdc;		/* (4060)	P4=0xff900fdc <_g_httpRxed> */
ffa03b2a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03b2c:	80 4f       	R0 <<= 0x10;
ffa03b2e:	21 91       	R1 = [P4];
ffa03b30:	00 e3 26 03 	CALL 0xffa0417c <_httpResp>;
ffa03b34:	00 0c       	CC = R0 == 0x0;
ffa03b36:	22 1c       	IF CC JUMP 0xffa03b7a <_tcp_rx+0x3b6> (BP);
ffa03b38:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc4 <_TcpState> */
ffa03b3c:	28 91       	R0 = [P5];
ffa03b3e:	0a e1 c0 0f 	P2.L = 0xfc0;		/* (4032)	P2=0xff900fc0 <_TcpSeqHttpStart> */
ffa03b42:	10 93       	[P2] = R0;
ffa03b44:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc0 <_TcpSeqHttpStart> */
ffa03b48:	0a e1 d4 0f 	P2.L = 0xfd4;		/* (4052)	P2=0xff900fd4 <_g_httpHeaderLen> */
ffa03b4c:	11 91       	R1 = [P2];
ffa03b4e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd4 <_g_httpHeaderLen> */
ffa03b52:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa03b56:	10 91       	R0 = [P2];
ffa03b58:	41 50       	R1 = R1 + R0;
ffa03b5a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03b5e:	00 e1 04 06 	R0.L = 0x604;		/* (1540)	R0=0xff900604(-7338492) */
ffa03b62:	ff e3 bf eb 	CALL 0xffa012e0 <_printf_int>;
ffa03b66:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900604(-7338492) */
ffa03b6a:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa03b6e:	ff e3 f7 ea 	CALL 0xffa0115c <_printf_str>;
ffa03b72:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03b74:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03b76:	ff e3 8f fd 	CALL 0xffa03694 <_tcp_burst>;
ffa03b7a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b7c:	20 93       	[P4] = R0;
ffa03b7e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03b80:	2f 2e       	JUMP.S 0xffa037de <_tcp_rx+0x1a>;
ffa03b82:	18 91       	R0 = [P3];
ffa03b84:	18 0c       	CC = R0 == 0x3;
ffa03b86:	77 16       	IF !CC JUMP 0xffa03874 <_tcp_rx+0xb0> (BP);
ffa03b88:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd8 <_g_httpContentLen> */
ffa03b8c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b8e:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_g_httpRxed> */
ffa03b92:	10 93       	[P2] = R0;
ffa03b94:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03b96:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fdc <_g_httpRxed> */
ffa03b9a:	f0 b0       	[SP + 0xc] = R0;
ffa03b9c:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03ba0:	10 91       	R0 = [P2];
ffa03ba2:	14 32       	P2 = R4;
ffa03ba4:	30 b1       	[SP + 0x10] = R0;
ffa03ba6:	28 91       	R0 = [P5];
ffa03ba8:	70 b1       	[SP + 0x14] = R0;
ffa03baa:	4f 30       	R1 = FP;
ffa03bac:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03bb0:	12 91 00 00 
ffa03bb4:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03bb6:	ff e3 43 fd 	CALL 0xffa0363c <_tcp_packet_setup>;
ffa03bba:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03bbe:	00 0d       	CC = R0 <= 0x0;
ffa03bc0:	5a 1a       	IF CC JUMP 0xffa03874 <_tcp_rx+0xb0>;
ffa03bc2:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03bc4:	96 2f       	JUMP.S 0xffa03af0 <_tcp_rx+0x32c>;
ffa03bc6:	0e 30       	R1 = R6;
ffa03bc8:	00 e3 04 05 	CALL 0xffa045d0 <_httpCollate>;
ffa03bcc:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03bce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03bd2:	f0 b0       	[SP + 0xc] = R0;
ffa03bd4:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03bd8:	10 91       	R0 = [P2];
ffa03bda:	14 32       	P2 = R4;
ffa03bdc:	30 b1       	[SP + 0x10] = R0;
ffa03bde:	28 91       	R0 = [P5];
ffa03be0:	70 b1       	[SP + 0x14] = R0;
ffa03be2:	4f 30       	R1 = FP;
ffa03be4:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03be8:	12 91 00 00 
ffa03bec:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03bee:	ff e3 27 fd 	CALL 0xffa0363c <_tcp_packet_setup>;
ffa03bf2:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03bf6:	00 0d       	CC = R0 <= 0x0;
ffa03bf8:	b4 16       	IF !CC JUMP 0xffa03960 <_tcp_rx+0x19c> (BP);
ffa03bfa:	f1 2d       	JUMP.S 0xffa037dc <_tcp_rx+0x18>;
ffa03bfc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa03c00:	00 e1 d4 05 	R0.L = 0x5d4;		/* (1492)	R0=0xff9005d4(-7338540) */
ffa03c04:	ff e3 ac ea 	CALL 0xffa0115c <_printf_str>;
ffa03c08:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03c0a:	ea 2d       	JUMP.S 0xffa037de <_tcp_rx+0x1a>;
ffa03c0c:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03c10:	27 2e       	JUMP.S 0xffa0385e <_tcp_rx+0x9a>;
ffa03c12:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03c14:	18 93       	[P3] = R0;
ffa03c16:	a0 a2       	R0 = [P4 + 0x28];
ffa03c18:	ff e3 0e ef 	CALL 0xffa01a34 <_htonl>;
ffa03c1c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03c20:	0a e1 bc 0f 	P2.L = 0xfbc;		/* (4028)	P2=0xff900fbc <_TcpSeqClient> */
ffa03c24:	10 93       	[P2] = R0;
ffa03c26:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa03c2a:	00 e1 b4 05 	R0.L = 0x5b4;		/* (1460)	R0=0xff9005b4(-7338572) */
ffa03c2e:	ff e3 97 ea 	CALL 0xffa0115c <_printf_str>;
ffa03c32:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03c34:	d5 2d       	JUMP.S 0xffa037de <_tcp_rx+0x1a>;
	...

ffa03c38 <_htmlForm>:
ffa03c38:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03c3c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa03c40:	02 e1 20 06 	R2.L = 0x620;		/* (1568)	R2=0xff900620(-7338464) */
ffa03c44:	01 e8 00 00 	UNLINK;
ffa03c48:	ff e2 62 ec 	JUMP.L 0xffa0150c <_strcpy_>;

ffa03c4c <_htmlDiv>:
ffa03c4c:	12 43       	R2 = R2.B (X);
ffa03c4e:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa03c52:	1a 08       	CC = R2 == R3;
ffa03c54:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03c58:	09 18       	IF CC JUMP 0xffa03c6a <_htmlDiv+0x1e>;
ffa03c5a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900620(-7338464) */
ffa03c5e:	02 e1 74 06 	R2.L = 0x674;		/* (1652)	R2=0xff900674(-7338380) */
ffa03c62:	01 e8 00 00 	UNLINK;
ffa03c66:	ff e2 53 ec 	JUMP.L 0xffa0150c <_strcpy_>;
ffa03c6a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900674(-7338380) */
ffa03c6e:	02 e1 40 06 	R2.L = 0x640;		/* (1600)	R2=0xff900640(-7338432) */
ffa03c72:	01 e8 00 00 	UNLINK;
ffa03c76:	ff e2 4b ec 	JUMP.L 0xffa0150c <_strcpy_>;
	...

ffa03c7c <_html404>:
ffa03c7c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03c80:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c82:	4f 30       	R1 = FP;
ffa03c84:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900640(-7338432) */
ffa03c88:	f0 bb       	[FP -0x4] = R0;
ffa03c8a:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03c8c:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03c90:	02 e1 a8 06 	R2.L = 0x6a8;		/* (1704)	R2=0xff9006a8(-7338328) */
ffa03c94:	ff e3 3c ec 	CALL 0xffa0150c <_strcpy_>;
ffa03c98:	f0 b9       	R0 = [FP -0x4];
ffa03c9a:	01 e8 00 00 	UNLINK;
ffa03c9e:	10 00       	RTS;

ffa03ca0 <_htmlCursorOption>:
ffa03ca0:	68 05       	[--SP] = (R7:5);
ffa03ca2:	2a 30       	R5 = R2;
ffa03ca4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006a8(-7338328) */
ffa03ca8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03cac:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa03cb0:	3f a2 00 00 
ffa03cb4:	02 e1 c4 06 	R2.L = 0x6c4;		/* (1732)	R2=0xff9006c4(-7338300) */
ffa03cb8:	ff e3 2a ec 	CALL 0xffa0150c <_strcpy_>;
ffa03cbc:	0e 30       	R1 = R6;
ffa03cbe:	15 30       	R2 = R5;
ffa03cc0:	ff e3 8c ed 	CALL 0xffa017d8 <_strprintf_int>;
ffa03cc4:	3d 08       	CC = R5 == R7;
ffa03cc6:	16 18       	IF CC JUMP 0xffa03cf2 <_htmlCursorOption+0x52>;
ffa03cc8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c4(-7338300) */
ffa03ccc:	0e 30       	R1 = R6;
ffa03cce:	02 e1 ec 06 	R2.L = 0x6ec;		/* (1772)	R2=0xff9006ec(-7338260) */
ffa03cd2:	ff e3 1d ec 	CALL 0xffa0150c <_strcpy_>;
ffa03cd6:	0e 30       	R1 = R6;
ffa03cd8:	15 30       	R2 = R5;
ffa03cda:	ff e3 7f ed 	CALL 0xffa017d8 <_strprintf_int>;
ffa03cde:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006ec(-7338260) */
ffa03ce2:	01 e8 00 00 	UNLINK;
ffa03ce6:	0e 30       	R1 = R6;
ffa03ce8:	02 e1 f0 06 	R2.L = 0x6f0;		/* (1776)	R2=0xff9006f0(-7338256) */
ffa03cec:	28 05       	(R7:5) = [SP++];
ffa03cee:	ff e2 0f ec 	JUMP.L 0xffa0150c <_strcpy_>;
ffa03cf2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006f0(-7338256) */
ffa03cf6:	0e 30       	R1 = R6;
ffa03cf8:	02 e1 d4 06 	R2.L = 0x6d4;		/* (1748)	R2=0xff9006d4(-7338284) */
ffa03cfc:	ff e3 08 ec 	CALL 0xffa0150c <_strcpy_>;
ffa03d00:	e4 2f       	JUMP.S 0xffa03cc8 <_htmlCursorOption+0x28>;
	...

ffa03d04 <_htmlCursorSelect>:
ffa03d04:	60 05       	[--SP] = (R7:4);
ffa03d06:	3a 30       	R7 = R2;
ffa03d08:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006d4(-7338284) */
ffa03d0c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03d10:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa03d14:	7e a2 00 00 
ffa03d18:	02 e1 fc 06 	R2.L = 0x6fc;		/* (1788)	R2=0xff9006fc(-7338244) */
ffa03d1c:	bc a2       	R4 = [FP + 0x28];
ffa03d1e:	ff e3 f7 eb 	CALL 0xffa0150c <_strcpy_>;
ffa03d22:	17 30       	R2 = R7;
ffa03d24:	0d 30       	R1 = R5;
ffa03d26:	ff e3 f3 eb 	CALL 0xffa0150c <_strcpy_>;
ffa03d2a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006fc(-7338244) */
ffa03d2e:	0d 30       	R1 = R5;
ffa03d30:	02 e1 08 07 	R2.L = 0x708;		/* (1800)	R2=0xff900708(-7338232) */
ffa03d34:	ff e3 ec eb 	CALL 0xffa0150c <_strcpy_>;
ffa03d38:	0d 30       	R1 = R5;
ffa03d3a:	16 30       	R2 = R6;
ffa03d3c:	ff e3 e8 eb 	CALL 0xffa0150c <_strcpy_>;
ffa03d40:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900708(-7338232) */
ffa03d44:	0d 30       	R1 = R5;
ffa03d46:	02 e1 24 07 	R2.L = 0x724;		/* (1828)	R2=0xff900724(-7338204) */
ffa03d4a:	ff e3 e1 eb 	CALL 0xffa0150c <_strcpy_>;
ffa03d4e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03d50:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa03d54:	f4 b0 00 00 
ffa03d58:	17 30       	R2 = R7;
ffa03d5a:	ff e3 a3 ff 	CALL 0xffa03ca0 <_htmlCursorOption>;
ffa03d5e:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03d60:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03d62:	0f 08       	CC = R7 == R1;
ffa03d64:	f6 17       	IF !CC JUMP 0xffa03d50 <_htmlCursorSelect+0x4c> (BP);
ffa03d66:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900724(-7338204) */
ffa03d6a:	01 e8 00 00 	UNLINK;
ffa03d6e:	0d 30       	R1 = R5;
ffa03d70:	02 e1 28 07 	R2.L = 0x728;		/* (1832)	R2=0xff900728(-7338200) */
ffa03d74:	20 05       	(R7:4) = [SP++];
ffa03d76:	ff e2 cb eb 	JUMP.L 0xffa0150c <_strcpy_>;
	...

ffa03d7c <_httpHeader>:
ffa03d7c:	78 05       	[--SP] = (R7:7);
ffa03d7e:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03d82:	7f 30       	R7 = FP;
ffa03d84:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03d86:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d88:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900728(-7338200) */
ffa03d8c:	f0 bb       	[FP -0x4] = R0;
ffa03d8e:	0f 30       	R1 = R7;
ffa03d90:	02 e1 40 07 	R2.L = 0x740;		/* (1856)	R2=0xff900740(-7338176) */
ffa03d94:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03d98:	ff e3 ba eb 	CALL 0xffa0150c <_strcpy_>;
ffa03d9c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900740(-7338176) */
ffa03da0:	0f 30       	R1 = R7;
ffa03da2:	02 e1 54 07 	R2.L = 0x754;		/* (1876)	R2=0xff900754(-7338156) */
ffa03da6:	ff e3 b3 eb 	CALL 0xffa0150c <_strcpy_>;
ffa03daa:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900754(-7338156) */
ffa03dae:	0f 30       	R1 = R7;
ffa03db0:	02 e1 68 07 	R2.L = 0x768;		/* (1896)	R2=0xff900768(-7338136) */
ffa03db4:	ff e3 ac eb 	CALL 0xffa0150c <_strcpy_>;
ffa03db8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fbc <_TcpSeqClient> */
ffa03dbc:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa03dc0:	12 91       	R2 = [P2];
ffa03dc2:	0f 30       	R1 = R7;
ffa03dc4:	ff e3 0a ed 	CALL 0xffa017d8 <_strprintf_int>;
ffa03dc8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900768(-7338136) */
ffa03dcc:	0f 30       	R1 = R7;
ffa03dce:	02 e1 7c 07 	R2.L = 0x77c;		/* (1916)	R2=0xff90077c(-7338116) */
ffa03dd2:	ff e3 9d eb 	CALL 0xffa0150c <_strcpy_>;
ffa03dd6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd8 <_g_httpContentLen> */
ffa03dda:	f0 b9       	R0 = [FP -0x4];
ffa03ddc:	0a e1 d4 0f 	P2.L = 0xfd4;		/* (4052)	P2=0xff900fd4 <_g_httpHeaderLen> */
ffa03de0:	10 93       	[P2] = R0;
ffa03de2:	01 e8 00 00 	UNLINK;
ffa03de6:	38 05       	(R7:7) = [SP++];
ffa03de8:	10 00       	RTS;
	...

ffa03dec <_htmlGeneric>:
ffa03dec:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03df0:	10 30       	R2 = R0;
ffa03df2:	4f 30       	R1 = FP;
ffa03df4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03df6:	f0 bb       	[FP -0x4] = R0;
ffa03df8:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03dfa:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03dfe:	ff e3 87 eb 	CALL 0xffa0150c <_strcpy_>;
ffa03e02:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd4 <_g_httpHeaderLen> */
ffa03e06:	f0 b9       	R0 = [FP -0x4];
ffa03e08:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa03e0c:	10 93       	[P2] = R0;
ffa03e0e:	ff e3 b7 ff 	CALL 0xffa03d7c <_httpHeader>;
ffa03e12:	f0 b9       	R0 = [FP -0x4];
ffa03e14:	01 e8 00 00 	UNLINK;
ffa03e18:	10 00       	RTS;
	...

ffa03e1c <_htmlDefault>:
ffa03e1c:	e5 05       	[--SP] = (R7:4, P5:5);
ffa03e1e:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03e22:	67 30       	R4 = FP;
ffa03e24:	e4 67       	R4 += -0x4;		/* ( -4) */
ffa03e26:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03e28:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90077c(-7338116) */
ffa03e2c:	f0 bb       	[FP -0x4] = R0;
ffa03e2e:	0c 30       	R1 = R4;
ffa03e30:	02 e1 9c 07 	R2.L = 0x79c;		/* (1948)	R2=0xff90079c(-7338084) */
ffa03e34:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03e38:	ff e3 6a eb 	CALL 0xffa0150c <_strcpy_>;
ffa03e3c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03e40:	0c 30       	R1 = R4;
ffa03e42:	ff e3 05 ff 	CALL 0xffa03c4c <_htmlDiv>;
ffa03e46:	0c 30       	R1 = R4;
ffa03e48:	ff e3 f8 fe 	CALL 0xffa03c38 <_htmlForm>;
ffa03e4c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03e50:	0c 30       	R1 = R4;
ffa03e52:	02 e1 ec 07 	R2.L = 0x7ec;		/* (2028)	R2=0xff9007ec(-7338004) */
ffa03e56:	ff e3 5b eb 	CALL 0xffa0150c <_strcpy_>;
ffa03e5a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd8 <_g_httpContentLen> */
ffa03e5e:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_g_streamEnabled> */
ffa03e62:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03e66:	10 99 00 00 
ffa03e6a:	00 0c       	CC = R0 == 0x0;
ffa03e6c:	76 1d       	IF CC JUMP 0xffa04158 <_htmlDefault+0x33c> (BP);
ffa03e6e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007ec(-7338004) */
ffa03e72:	01 30       	R0 = R1;
ffa03e74:	02 e1 3c 08 	R2.L = 0x83c;		/* (2108)	R2=0xff90083c(-7337924) */
ffa03e78:	0c 30       	R1 = R4;
ffa03e7a:	ff e3 49 eb 	CALL 0xffa0150c <_strcpy_>;
ffa03e7e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90083c(-7337924) */
ffa03e82:	0c 30       	R1 = R4;
ffa03e84:	02 e1 54 08 	R2.L = 0x854;		/* (2132)	R2=0xff900854(-7337900) */
ffa03e88:	ff e3 42 eb 	CALL 0xffa0150c <_strcpy_>;
ffa03e8c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03e90:	0c 30       	R1 = R4;
ffa03e92:	ff e3 dd fe 	CALL 0xffa03c4c <_htmlDiv>;
ffa03e96:	0c 30       	R1 = R4;
ffa03e98:	ff e3 d0 fe 	CALL 0xffa03c38 <_htmlForm>;
ffa03e9c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03ea0:	0c 30       	R1 = R4;
ffa03ea2:	02 e1 68 08 	R2.L = 0x868;		/* (2152)	R2=0xff900868(-7337880) */
ffa03ea6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fb8 <_TcpSeqHost> */
ffa03eaa:	ff e3 31 eb 	CALL 0xffa0150c <_strcpy_>;
ffa03eae:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03eb0:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa03eb2:	0d e1 e4 0e 	P5.L = 0xee4;		/* (3812)	P5=0xff900ee4 <_NetDataDestIP> */
ffa03eb6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900868(-7337880) */
ffa03eba:	0c 30       	R1 = R4;
ffa03ebc:	02 e1 84 08 	R2.L = 0x884;		/* (2180)	R2=0xff900884(-7337852) */
ffa03ec0:	ff e3 26 eb 	CALL 0xffa0150c <_strcpy_>;
ffa03ec4:	17 30       	R2 = R7;
ffa03ec6:	0c 30       	R1 = R4;
ffa03ec8:	ff e3 88 ec 	CALL 0xffa017d8 <_strprintf_int>;
ffa03ecc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900884(-7337852) */
ffa03ed0:	0c 30       	R1 = R4;
ffa03ed2:	02 e1 a0 08 	R2.L = 0x8a0;		/* (2208)	R2=0xff9008a0(-7337824) */
ffa03ed6:	ff e3 1b eb 	CALL 0xffa0150c <_strcpy_>;
ffa03eda:	2a 91       	R2 = [P5];
ffa03edc:	72 40       	R2 >>= R6;
ffa03ede:	52 43       	R2 = R2.B (Z);
ffa03ee0:	0c 30       	R1 = R4;
ffa03ee2:	ff e3 7b ec 	CALL 0xffa017d8 <_strprintf_int>;
ffa03ee6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a0(-7337824) */
ffa03eea:	0c 30       	R1 = R4;
ffa03eec:	02 e1 b4 08 	R2.L = 0x8b4;		/* (2228)	R2=0xff9008b4(-7337804) */
ffa03ef0:	ff e3 0e eb 	CALL 0xffa0150c <_strcpy_>;
ffa03ef4:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03ef6:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03ef8:	0f 08       	CC = R7 == R1;
ffa03efa:	46 64       	R6 += 0x8;		/* (  8) */
ffa03efc:	dd 17       	IF !CC JUMP 0xffa03eb6 <_htmlDefault+0x9a> (BP);
ffa03efe:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008b4(-7337804) */
ffa03f02:	0c 30       	R1 = R4;
ffa03f04:	02 e1 bc 08 	R2.L = 0x8bc;		/* (2236)	R2=0xff9008bc(-7337796) */
ffa03f08:	ff e3 02 eb 	CALL 0xffa0150c <_strcpy_>;
ffa03f0c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008bc(-7337796) */
ffa03f10:	0c 30       	R1 = R4;
ffa03f12:	02 e1 54 08 	R2.L = 0x854;		/* (2132)	R2=0xff900854(-7337900) */
ffa03f16:	ff e3 fb ea 	CALL 0xffa0150c <_strcpy_>;
ffa03f1a:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03f1e:	0c 30       	R1 = R4;
ffa03f20:	ff e3 96 fe 	CALL 0xffa03c4c <_htmlDiv>;
ffa03f24:	0c 30       	R1 = R4;
ffa03f26:	ff e3 89 fe 	CALL 0xffa03c38 <_htmlForm>;
ffa03f2a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03f2e:	0c 30       	R1 = R4;
ffa03f30:	02 e1 e0 08 	R2.L = 0x8e0;		/* (2272)	R2=0xff9008e0(-7337760) */
ffa03f34:	ff e3 ec ea 	CALL 0xffa0150c <_strcpy_>;
ffa03f38:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c34 */
ffa03f3c:	0a e1 08 08 	P2.L = 0x808;		/* (2056)	P2=0xff800808 */
ffa03f40:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03f44:	10 99 00 00 
ffa03f48:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03f4a:	10 1d       	IF CC JUMP 0xffa0416a <_htmlDefault+0x34e> (BP);
ffa03f4c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008e0(-7337760) */
ffa03f50:	01 30       	R0 = R1;
ffa03f52:	02 e1 48 08 	R2.L = 0x848;		/* (2120)	R2=0xff900848(-7337912) */
ffa03f56:	0c 30       	R1 = R4;
ffa03f58:	ff e3 da ea 	CALL 0xffa0150c <_strcpy_>;
ffa03f5c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900848(-7337912) */
ffa03f60:	0c 30       	R1 = R4;
ffa03f62:	02 e1 54 08 	R2.L = 0x854;		/* (2132)	R2=0xff900854(-7337900) */
ffa03f66:	ff e3 d3 ea 	CALL 0xffa0150c <_strcpy_>;
ffa03f6a:	0c 30       	R1 = R4;
ffa03f6c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03f70:	ff e3 6e fe 	CALL 0xffa03c4c <_htmlDiv>;
ffa03f74:	0c 30       	R1 = R4;
ffa03f76:	ff e3 61 fe 	CALL 0xffa03c38 <_htmlForm>;
ffa03f7a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03f7e:	0c 30       	R1 = R4;
ffa03f80:	02 e1 20 09 	R2.L = 0x920;		/* (2336)	R2=0xff900920(-7337696) */
ffa03f84:	ff e3 c4 ea 	CALL 0xffa0150c <_strcpy_>;
ffa03f88:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa03f8c:	01 e1 50 09 	R1.L = 0x950;		/* (2384)	R1=0xff900950(-7337648) */
ffa03f90:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900920(-7337696) */
ffa03f94:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa03f98:	f1 b0 00 00 
ffa03f9c:	02 e1 44 09 	R2.L = 0x944;		/* (2372)	R2=0xff900944(-7337660) */
ffa03fa0:	82 ce 04 c2 	R1 = ROT R4 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03fa4:	37 b1 00 00 
ffa03fa8:	ff e3 ae fe 	CALL 0xffa03d04 <_htmlCursorSelect>;
ffa03fac:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900950(-7337648) */
ffa03fb0:	01 e1 68 09 	R1.L = 0x968;		/* (2408)	R1=0xff900968(-7337624) */
ffa03fb4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900944(-7337660) */
ffa03fb8:	f1 b0       	[SP + 0xc] = R1;
ffa03fba:	02 e1 5c 09 	R2.L = 0x95c;		/* (2396)	R2=0xff90095c(-7337636) */
ffa03fbe:	82 ce 04 c2 	R1 = ROT R4 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03fc2:	37 b1 00 00 
ffa03fc6:	ff e3 9f fe 	CALL 0xffa03d04 <_htmlCursorSelect>;
ffa03fca:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900968(-7337624) */
ffa03fce:	01 e1 80 09 	R1.L = 0x980;		/* (2432)	R1=0xff900980(-7337600) */
ffa03fd2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90095c(-7337636) */
ffa03fd6:	f1 b0       	[SP + 0xc] = R1;
ffa03fd8:	02 e1 74 09 	R2.L = 0x974;		/* (2420)	R2=0xff900974(-7337612) */
ffa03fdc:	82 ce 04 c2 	R1 = ROT R4 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03fe0:	37 b1 00 00 
ffa03fe4:	ff e3 90 fe 	CALL 0xffa03d04 <_htmlCursorSelect>;
ffa03fe8:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900980(-7337600) */
ffa03fec:	01 e1 94 09 	R1.L = 0x994;		/* (2452)	R1=0xff900994(-7337580) */
ffa03ff0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900974(-7337612) */
ffa03ff4:	f1 b0       	[SP + 0xc] = R1;
ffa03ff6:	02 e1 8c 09 	R2.L = 0x98c;		/* (2444)	R2=0xff90098c(-7337588) */
ffa03ffa:	82 ce 04 c2 	R1 = ROT R4 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03ffe:	37 b1 00 00 
ffa04002:	ff e3 81 fe 	CALL 0xffa03d04 <_htmlCursorSelect>;
ffa04006:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90098c(-7337588) */
ffa0400a:	0c 30       	R1 = R4;
ffa0400c:	02 e1 a0 09 	R2.L = 0x9a0;		/* (2464)	R2=0xff9009a0(-7337568) */
ffa04010:	ff e3 7e ea 	CALL 0xffa0150c <_strcpy_>;
ffa04014:	0c 30       	R1 = R4;
ffa04016:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa0401a:	ff e3 19 fe 	CALL 0xffa03c4c <_htmlDiv>;
ffa0401e:	0c 30       	R1 = R4;
ffa04020:	ff e3 0c fe 	CALL 0xffa03c38 <_htmlForm>;
ffa04024:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa04028:	0c 30       	R1 = R4;
ffa0402a:	02 e1 dc 09 	R2.L = 0x9dc;		/* (2524)	R2=0xff9009dc(-7337508) */
ffa0402e:	ff e3 6f ea 	CALL 0xffa0150c <_strcpy_>;
ffa04032:	0c 30       	R1 = R4;
ffa04034:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa04038:	ff e3 0a fe 	CALL 0xffa03c4c <_htmlDiv>;
ffa0403c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa04040:	0c 30       	R1 = R4;
ffa04042:	02 e1 34 0a 	R2.L = 0xa34;		/* (2612)	R2=0xff900a34(-7337420) */
ffa04046:	ff e3 63 ea 	CALL 0xffa0150c <_strcpy_>;
ffa0404a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a34(-7337420) */
ffa0404e:	0c 30       	R1 = R4;
ffa04050:	02 e1 5c 0a 	R2.L = 0xa5c;		/* (2652)	R2=0xff900a5c(-7337380) */
ffa04054:	ff e3 5c ea 	CALL 0xffa0150c <_strcpy_>;
ffa04058:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a5c(-7337380) */
ffa0405c:	0c 30       	R1 = R4;
ffa0405e:	02 e1 54 08 	R2.L = 0x854;		/* (2132)	R2=0xff900854(-7337900) */
ffa04062:	ff e3 55 ea 	CALL 0xffa0150c <_strcpy_>;
ffa04066:	38 30       	R7 = R0;
ffa04068:	ff e3 a0 e0 	CALL 0xffa001a8 <_ustimer>;
ffa0406c:	41 e1 e3 38 	R1.H = 0x38e3;		/* (14563)	R1=0x38e30994(954403220) */
ffa04070:	01 e1 39 8e 	R1.L = 0x8e39;		/* (-29127)	R1=0x38e38e39(954437177) */
ffa04074:	80 c0 01 18 	A1 = R0.L * R1.L (FU);
ffa04078:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa0407c:	81 c0 01 86 	A1 += R0.H * R1.L, A0 = R0.H * R1.H (FU);
ffa04080:	81 c0 08 98 	A1 += R1.H * R0.L (FU);
ffa04084:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa04088:	0b c4 00 80 	A0 += A1;
ffa0408c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900854(-7337900) */
ffa04090:	08 c4 00 e0 	A1 = A0;
ffa04094:	0c 30       	R1 = R4;
ffa04096:	07 30       	R0 = R7;
ffa04098:	02 e1 a4 0a 	R2.L = 0xaa4;		/* (2724)	R2=0xff900aa4(-7337308) */
ffa0409c:	8f c0 00 19 	R5 = A1 (FU);
ffa040a0:	ff e3 36 ea 	CALL 0xffa0150c <_strcpy_>;
ffa040a4:	41 e1 62 10 	R1.H = 0x1062;		/* (4194)	R1=0x10628e39(274894393) */
ffa040a8:	0d 4e       	R5 >>= 0x1;
ffa040aa:	01 e1 d3 4d 	R1.L = 0x4dd3;		/* (19923)	R1=0x10624dd3(274877907) */
ffa040ae:	80 c0 29 18 	A1 = R5.L * R1.L (FU);
ffa040b2:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa040b6:	11 c1 29 86 	A1 += R5.H * R1.L (M), A0 = R5.H * R1.H (IS);
ffa040ba:	11 c1 0d 98 	A1 += R1.H * R5.L (M, IS);
ffa040be:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa040c2:	0b c4 00 0c 	R6 = (A0 += A1);
ffa040c6:	41 e1 88 88 	R1.H = 0x8888;		/* (-30584)	R1=0x88884dd3(-2004333101) */
ffa040ca:	36 4d       	R6 >>>= 0x6;
ffa040cc:	01 e1 89 88 	R1.L = 0x8889;		/* (-30583)	R1=0x88888889(-2004318071) */
ffa040d0:	80 c0 31 18 	A1 = R6.L * R1.L (FU);
ffa040d4:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa040d8:	11 c1 31 86 	A1 += R6.H * R1.L (M), A0 = R6.H * R1.H (IS);
ffa040dc:	11 c1 0e 98 	A1 += R1.H * R6.L (M, IS);
ffa040e0:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa040e4:	0b c4 00 0e 	R7 = (A0 += A1);
ffa040e8:	f7 51       	R7 = R7 + R6;
ffa040ea:	82 c6 0e 03 	R1 = R6 >>> 0x1f;
ffa040ee:	2f 4d       	R7 >>>= 0x5;
ffa040f0:	cf 53       	R7 = R7 - R1;
ffa040f2:	17 30       	R2 = R7;
ffa040f4:	0c 30       	R1 = R4;
ffa040f6:	ff e3 71 eb 	CALL 0xffa017d8 <_strprintf_int>;
ffa040fa:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900aa4(-7337308) */
ffa040fe:	0c 30       	R1 = R4;
ffa04100:	02 e1 b0 00 	R2.L = 0xb0;		/* (176)	R2=0xff9000b0(-7339856) */
ffa04104:	ff e3 04 ea 	CALL 0xffa0150c <_strcpy_>;
ffa04108:	82 c6 27 84 	R2 = R7 << 0x4;
ffa0410c:	ba 52       	R2 = R2 - R7;
ffa0410e:	12 4f       	R2 <<= 0x2;
ffa04110:	96 52       	R2 = R6 - R2;
ffa04112:	0c 30       	R1 = R4;
ffa04114:	ff e3 62 eb 	CALL 0xffa017d8 <_strprintf_int>;
ffa04118:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9000b0(-7339856) */
ffa0411c:	0c 30       	R1 = R4;
ffa0411e:	02 e1 88 00 	R2.L = 0x88;		/* (136)	R2=0xff900088(-7339896) */
ffa04122:	ff e3 f5 e9 	CALL 0xffa0150c <_strcpy_>;
ffa04126:	82 c6 2e 82 	R1 = R6 << 0x5;
ffa0412a:	71 52       	R1 = R1 - R6;
ffa0412c:	16 32       	P2 = R6;
ffa0412e:	09 32       	P1 = R1;
ffa04130:	4a 5e       	P1 = P2 + (P1 << 0x2);
ffa04132:	49 30       	R1 = P1;
ffa04134:	19 4f       	R1 <<= 0x3;
ffa04136:	4d 53       	R5 = R5 - R1;
ffa04138:	15 30       	R2 = R5;
ffa0413a:	0c 30       	R1 = R4;
ffa0413c:	ff e3 4e eb 	CALL 0xffa017d8 <_strprintf_int>;
ffa04140:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900088(-7339896) */
ffa04144:	0c 30       	R1 = R4;
ffa04146:	02 e1 b0 0a 	R2.L = 0xab0;		/* (2736)	R2=0xff900ab0(-7337296) */
ffa0414a:	ff e3 e1 e9 	CALL 0xffa0150c <_strcpy_>;
ffa0414e:	f0 b9       	R0 = [FP -0x4];
ffa04150:	01 e8 00 00 	UNLINK;
ffa04154:	a5 05       	(R7:4, P5:5) = [SP++];
ffa04156:	10 00       	RTS;
ffa04158:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ab0(-7337296) */
ffa0415c:	01 30       	R0 = R1;
ffa0415e:	02 e1 48 08 	R2.L = 0x848;		/* (2120)	R2=0xff900848(-7337912) */
ffa04162:	0c 30       	R1 = R4;
ffa04164:	ff e3 d4 e9 	CALL 0xffa0150c <_strcpy_>;
ffa04168:	8b 2e       	JUMP.S 0xffa03e7e <_htmlDefault+0x62>;
ffa0416a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900848(-7337912) */
ffa0416e:	01 30       	R0 = R1;
ffa04170:	02 e1 3c 08 	R2.L = 0x83c;		/* (2108)	R2=0xff90083c(-7337924) */
ffa04174:	0c 30       	R1 = R4;
ffa04176:	ff e3 cb e9 	CALL 0xffa0150c <_strcpy_>;
ffa0417a:	f1 2e       	JUMP.S 0xffa03f5c <_htmlDefault+0x140>;

ffa0417c <_httpResp>:
ffa0417c:	60 05       	[--SP] = (R7:4);
ffa0417e:	30 30       	R6 = R0;
ffa04180:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa04182:	01 09       	CC = R1 <= R0;
ffa04184:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa04188:	39 30       	R7 = R1;
ffa0418a:	21 10       	IF !CC JUMP 0xffa041cc <_httpResp+0x50>;
ffa0418c:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa0418e:	0f 09       	CC = R7 <= R1;
ffa04190:	34 10       	IF !CC JUMP 0xffa041f8 <_httpResp+0x7c>;
ffa04192:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa04196:	00 e1 c0 0a 	R0.L = 0xac0;		/* (2752)	R0=0xff900ac0(-7337280) */
ffa0419a:	0e 30       	R1 = R6;
ffa0419c:	17 30       	R2 = R7;
ffa0419e:	ff e3 25 ea 	CALL 0xffa015e8 <_substr>;
ffa041a2:	00 0c       	CC = R0 == 0x0;
ffa041a4:	06 10       	IF !CC JUMP 0xffa041b0 <_httpResp+0x34>;
ffa041a6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa041a8:	01 e8 00 00 	UNLINK;
ffa041ac:	20 05       	(R7:4) = [SP++];
ffa041ae:	10 00       	RTS;
ffa041b0:	ff e3 66 fd 	CALL 0xffa03c7c <_html404>;
ffa041b4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900808 */
ffa041b8:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa041bc:	10 93       	[P2] = R0;
ffa041be:	ff e3 df fd 	CALL 0xffa03d7c <_httpHeader>;
ffa041c2:	01 e8 00 00 	UNLINK;
ffa041c6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa041c8:	20 05       	(R7:4) = [SP++];
ffa041ca:	10 00       	RTS;
ffa041cc:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa041d0:	06 30       	R0 = R6;
ffa041d2:	01 e1 c8 0a 	R1.L = 0xac8;		/* (2760)	R1=0xff900ac8(-7337272) */
ffa041d6:	ff e3 db e9 	CALL 0xffa0158c <_strcmp>;
ffa041da:	00 0c       	CC = R0 == 0x0;
ffa041dc:	d8 1f       	IF CC JUMP 0xffa0418c <_httpResp+0x10> (BP);
ffa041de:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa041e2:	00 e1 c0 0a 	R0.L = 0xac0;		/* (2752)	R0=0xff900ac0(-7337280) */
ffa041e6:	0e 30       	R1 = R6;
ffa041e8:	17 30       	R2 = R7;
ffa041ea:	ff e3 ff e9 	CALL 0xffa015e8 <_substr>;
ffa041ee:	00 0c       	CC = R0 == 0x0;
ffa041f0:	db 1f       	IF CC JUMP 0xffa041a6 <_httpResp+0x2a> (BP);
ffa041f2:	ff e3 15 fe 	CALL 0xffa03e1c <_htmlDefault>;
ffa041f6:	df 2f       	JUMP.S 0xffa041b4 <_httpResp+0x38>;
ffa041f8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ac0(-7337280) */
ffa041fc:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa04200:	0e 30       	R1 = R6;
ffa04202:	17 30       	R2 = R7;
ffa04204:	ff e3 f2 e9 	CALL 0xffa015e8 <_substr>;
ffa04208:	00 0c       	CC = R0 == 0x0;
ffa0420a:	3c 1c       	IF CC JUMP 0xffa04282 <_httpResp+0x106> (BP);
ffa0420c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ad4(-7337260) */
ffa04210:	00 e1 e0 0a 	R0.L = 0xae0;		/* (2784)	R0=0xff900ae0(-7337248) */
ffa04214:	0e 30       	R1 = R6;
ffa04216:	17 30       	R2 = R7;
ffa04218:	ff e3 e8 e9 	CALL 0xffa015e8 <_substr>;
ffa0421c:	00 0c       	CC = R0 == 0x0;
ffa0421e:	c4 1f       	IF CC JUMP 0xffa041a6 <_httpResp+0x2a> (BP);
ffa04220:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa04222:	06 50       	R0 = R6 + R0;
ffa04224:	ff e3 02 eb 	CALL 0xffa01828 <_atoi>;
ffa04228:	08 30       	R1 = R0;
ffa0422a:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa0422e:	00 67       	R0 += -0x20;		/* (-32) */
ffa04230:	10 0a       	CC = R0 <= R2 (IU);
ffa04232:	24 11       	IF !CC JUMP 0xffa0447a <_httpResp+0x2fe>;
ffa04234:	82 c6 19 84 	R2 = R1 << 0x3;
ffa04238:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800fd8 */
ffa0423c:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa04240:	02 0d       	CC = R2 <= 0x0;
ffa04242:	13 91       	R3 = [P2];
ffa04244:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa04248:	14 18       	IF CC JUMP 0xffa04270 <_httpResp+0xf4>;
ffa0424a:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa0424e:	28 4f       	R0 <<= 0x5;
ffa04250:	03 54       	R0 = R3 & R0;
ffa04252:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa04254:	38 52       	R0 = R0 - R7;
ffa04256:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa0425a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0425c:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa04260:	18 54       	R0 = R0 & R3;
ffa04262:	10 32       	P2 = R0;
ffa04264:	09 64       	R1 += 0x1;		/* (  1) */
ffa04266:	0a 08       	CC = R2 == R1;
ffa04268:	10 90       	R0 = [P2++];
ffa0426a:	08 92       	[P1++] = R0;
ffa0426c:	42 30       	R0 = P2;
ffa0426e:	f9 17       	IF !CC JUMP 0xffa04260 <_httpResp+0xe4> (BP);
ffa04270:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900800 */
ffa04274:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa04278:	17 93       	[P2] = R7;
ffa0427a:	ff e3 81 fd 	CALL 0xffa03d7c <_httpHeader>;
ffa0427e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04280:	94 2f       	JUMP.S 0xffa041a8 <_httpResp+0x2c>;
ffa04282:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa04286:	00 e1 14 0b 	R0.L = 0xb14;		/* (2836)	R0=0xff900b14(-7337196) */
ffa0428a:	0e 30       	R1 = R6;
ffa0428c:	17 30       	R2 = R7;
ffa0428e:	ff e3 ad e9 	CALL 0xffa015e8 <_substr>;
ffa04292:	00 0c       	CC = R0 == 0x0;
ffa04294:	7f 1f       	IF CC JUMP 0xffa04192 <_httpResp+0x16> (BP);
ffa04296:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b14(-7337196) */
ffa0429a:	0e 30       	R1 = R6;
ffa0429c:	17 30       	R2 = R7;
ffa0429e:	00 e1 14 0b 	R0.L = 0xb14;		/* (2836)	R0=0xff900b14(-7337196) */
ffa042a2:	ff e3 a3 e9 	CALL 0xffa015e8 <_substr>;
ffa042a6:	86 51       	R6 = R6 + R0;
ffa042a8:	47 53       	R5 = R7 - R0;
ffa042aa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b14(-7337196) */
ffa042ae:	00 e1 1c 0b 	R0.L = 0xb1c;		/* (2844)	R0=0xff900b1c(-7337188) */
ffa042b2:	0e 30       	R1 = R6;
ffa042b4:	15 30       	R2 = R5;
ffa042b6:	ff e3 99 e9 	CALL 0xffa015e8 <_substr>;
ffa042ba:	00 0c       	CC = R0 == 0x0;
ffa042bc:	10 11       	IF !CC JUMP 0xffa044dc <_httpResp+0x360>;
ffa042be:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa042c0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b1c(-7337188) */
ffa042c4:	00 e1 40 0b 	R0.L = 0xb40;		/* (2880)	R0=0xff900b40(-7337152) */
ffa042c8:	0e 30       	R1 = R6;
ffa042ca:	15 30       	R2 = R5;
ffa042cc:	ff e3 8e e9 	CALL 0xffa015e8 <_substr>;
ffa042d0:	00 0c       	CC = R0 == 0x0;
ffa042d2:	e2 10       	IF !CC JUMP 0xffa04496 <_httpResp+0x31a>;
ffa042d4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b40(-7337152) */
ffa042d8:	0e 30       	R1 = R6;
ffa042da:	00 e1 4c 0b 	R0.L = 0xb4c;		/* (2892)	R0=0xff900b4c(-7337140) */
ffa042de:	15 30       	R2 = R5;
ffa042e0:	ff e3 84 e9 	CALL 0xffa015e8 <_substr>;
ffa042e4:	00 0c       	CC = R0 == 0x0;
ffa042e6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b4c(-7337140) */
ffa042ea:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa042ec:	0e 30       	R1 = R6;
ffa042ee:	15 30       	R2 = R5;
ffa042f0:	00 e1 58 0b 	R0.L = 0xb58;		/* (2904)	R0=0xff900b58(-7337128) */
ffa042f4:	27 06       	IF !CC R4 = R7;
ffa042f6:	ff e3 79 e9 	CALL 0xffa015e8 <_substr>;
ffa042fa:	00 0c       	CC = R0 == 0x0;
ffa042fc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b58(-7337128) */
ffa04300:	0e 30       	R1 = R6;
ffa04302:	15 30       	R2 = R5;
ffa04304:	00 e1 64 0b 	R0.L = 0xb64;		/* (2916)	R0=0xff900b64(-7337116) */
ffa04308:	27 06       	IF !CC R4 = R7;
ffa0430a:	ff e3 6f e9 	CALL 0xffa015e8 <_substr>;
ffa0430e:	00 0c       	CC = R0 == 0x0;
ffa04310:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b64(-7337116) */
ffa04314:	0e 30       	R1 = R6;
ffa04316:	15 30       	R2 = R5;
ffa04318:	00 e1 70 0b 	R0.L = 0xb70;		/* (2928)	R0=0xff900b70(-7337104) */
ffa0431c:	27 06       	IF !CC R4 = R7;
ffa0431e:	ff e3 65 e9 	CALL 0xffa015e8 <_substr>;
ffa04322:	00 0c       	CC = R0 == 0x0;
ffa04324:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b70(-7337104) */
ffa04328:	00 e1 7c 0b 	R0.L = 0xb7c;		/* (2940)	R0=0xff900b7c(-7337092) */
ffa0432c:	0e 30       	R1 = R6;
ffa0432e:	15 30       	R2 = R5;
ffa04330:	27 06       	IF !CC R4 = R7;
ffa04332:	ff e3 5b e9 	CALL 0xffa015e8 <_substr>;
ffa04336:	00 0c       	CC = R0 == 0x0;
ffa04338:	15 11       	IF !CC JUMP 0xffa04562 <_httpResp+0x3e6>;
ffa0433a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b7c(-7337092) */
ffa0433e:	00 e1 84 0b 	R0.L = 0xb84;		/* (2948)	R0=0xff900b84(-7337084) */
ffa04342:	0e 30       	R1 = R6;
ffa04344:	15 30       	R2 = R5;
ffa04346:	ff e3 51 e9 	CALL 0xffa015e8 <_substr>;
ffa0434a:	00 0c       	CC = R0 == 0x0;
ffa0434c:	f6 10       	IF !CC JUMP 0xffa04538 <_httpResp+0x3bc>;
ffa0434e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b84(-7337084) */
ffa04352:	00 e1 8c 0b 	R0.L = 0xb8c;		/* (2956)	R0=0xff900b8c(-7337076) */
ffa04356:	0e 30       	R1 = R6;
ffa04358:	15 30       	R2 = R5;
ffa0435a:	ff e3 47 e9 	CALL 0xffa015e8 <_substr>;
ffa0435e:	00 0c       	CC = R0 == 0x0;
ffa04360:	13 11       	IF !CC JUMP 0xffa04586 <_httpResp+0x40a>;
ffa04362:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b8c(-7337076) */
ffa04366:	00 e1 94 0b 	R0.L = 0xb94;		/* (2964)	R0=0xff900b94(-7337068) */
ffa0436a:	0e 30       	R1 = R6;
ffa0436c:	15 30       	R2 = R5;
ffa0436e:	ff e3 3d e9 	CALL 0xffa015e8 <_substr>;
ffa04372:	00 0c       	CC = R0 == 0x0;
ffa04374:	d1 10       	IF !CC JUMP 0xffa04516 <_httpResp+0x39a>;
ffa04376:	20 43       	R0 = R4.B (X);
ffa04378:	00 0c       	CC = R0 == 0x0;
ffa0437a:	3c 17       	IF !CC JUMP 0xffa041f2 <_httpResp+0x76> (BP);
ffa0437c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b94(-7337068) */
ffa04380:	00 e1 9c 0b 	R0.L = 0xb9c;		/* (2972)	R0=0xff900b9c(-7337060) */
ffa04384:	0e 30       	R1 = R6;
ffa04386:	15 30       	R2 = R5;
ffa04388:	ff e3 30 e9 	CALL 0xffa015e8 <_substr>;
ffa0438c:	00 0c       	CC = R0 == 0x0;
ffa0438e:	0c 1b       	IF CC JUMP 0xffa041a6 <_httpResp+0x2a>;
ffa04390:	7f 30       	R7 = FP;
ffa04392:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa04396:	57 5a       	P1 = FP + P2;
ffa04398:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0439a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0439c:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa0439e:	b2 e0 02 20 	LSETUP(0xffa043a2 <_httpResp+0x226>, 0xffa043a2 <_httpResp+0x226>) LC1 = P2;
ffa043a2:	08 92       	[P1++] = R0;
ffa043a4:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa043a8:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa043ac:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa043b0:	29 4f       	R1 <<= 0x5;
ffa043b2:	10 91       	R0 = [P2];
ffa043b4:	08 54       	R0 = R0 & R1;
ffa043b6:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa043b8:	81 4f       	R1 <<= 0x10;
ffa043ba:	08 50       	R0 = R0 + R1;
ffa043bc:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa043be:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa043c2:	88 54       	R2 = R0 & R1;
ffa043c4:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa043c8:	b2 e0 12 10 	LSETUP(0xffa043cc <_httpResp+0x250>, 0xffa043ec <_httpResp+0x270>) LC1 = P1;
ffa043cc:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa043d0:	97 5a       	P2 = FP + P2;
ffa043d2:	02 32       	P0 = R2;
ffa043d4:	11 91       	R1 = [P2];
ffa043d6:	12 64       	R2 += 0x2;		/* (  2) */
ffa043d8:	00 94       	R0 = W[P0++] (Z);
ffa043da:	41 50       	R1 = R1 + R0;
ffa043dc:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa043de:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa043e2:	11 92       	[P2++] = R1;
ffa043e4:	82 54       	R2 = R2 & R0;
ffa043e6:	42 30       	R0 = P2;
ffa043e8:	38 08       	CC = R0 == R7;
ffa043ea:	f4 17       	IF !CC JUMP 0xffa043d2 <_httpResp+0x256> (BP);
ffa043ec:	00 00       	NOP;
ffa043ee:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa043f2:	97 5a       	P2 = FP + P2;
ffa043f4:	00 00       	NOP;
ffa043f6:	10 91       	R0 = [P2];
ffa043f8:	58 4d       	R0 >>>= 0xb;
ffa043fa:	10 92       	[P2++] = R0;
ffa043fc:	4a 30       	R1 = P2;
ffa043fe:	39 08       	CC = R1 == R7;
ffa04400:	fa 17       	IF !CC JUMP 0xffa043f4 <_httpResp+0x278> (BP);
ffa04402:	ff e3 0d fd 	CALL 0xffa03e1c <_htmlDefault>;
ffa04406:	68 67       	R0 += -0x13;		/* (-19) */
ffa04408:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa0440c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80(-7336064) */
ffa04410:	f0 bb       	[FP -0x4] = R0;
ffa04412:	02 e1 ac 0b 	R2.L = 0xbac;		/* (2988)	R2=0xff900bac(-7337044) */
ffa04416:	08 50       	R0 = R0 + R1;
ffa04418:	0f 30       	R1 = R7;
ffa0441a:	ff e3 79 e8 	CALL 0xffa0150c <_strcpy_>;
ffa0441e:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa04422:	f5 b8 00 00 
ffa04426:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bac(-7337044) */
ffa0442a:	0f 30       	R1 = R7;
ffa0442c:	02 e1 b8 0b 	R2.L = 0xbb8;		/* (3000)	R2=0xff900bb8(-7337032) */
ffa04430:	ff e3 6e e8 	CALL 0xffa0150c <_strcpy_>;
ffa04434:	16 30       	R2 = R6;
ffa04436:	0f 30       	R1 = R7;
ffa04438:	ff e3 d0 e9 	CALL 0xffa017d8 <_strprintf_int>;
ffa0443c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bb8(-7337032) */
ffa04440:	0f 30       	R1 = R7;
ffa04442:	02 e1 cc 0b 	R2.L = 0xbcc;		/* (3020)	R2=0xff900bcc(-7337012) */
ffa04446:	ff e3 63 e8 	CALL 0xffa0150c <_strcpy_>;
ffa0444a:	0f 30       	R1 = R7;
ffa0444c:	15 30       	R2 = R5;
ffa0444e:	ff e3 c5 e9 	CALL 0xffa017d8 <_strprintf_int>;
ffa04452:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bcc(-7337012) */
ffa04456:	02 e1 dc 0b 	R2.L = 0xbdc;		/* (3036)	R2=0xff900bdc(-7336996) */
ffa0445a:	0f 30       	R1 = R7;
ffa0445c:	ff e3 58 e8 	CALL 0xffa0150c <_strcpy_>;
ffa04460:	0e 64       	R6 += 0x1;		/* (  1) */
ffa04462:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa04464:	16 08       	CC = R6 == R2;
ffa04466:	e0 17       	IF !CC JUMP 0xffa04426 <_httpResp+0x2aa> (BP);
ffa04468:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa0446c:	0f 30       	R1 = R7;
ffa0446e:	02 e1 e8 0b 	R2.L = 0xbe8;		/* (3048)	R2=0xff900be8(-7336984) */
ffa04472:	ff e3 4d e8 	CALL 0xffa0150c <_strcpy_>;
ffa04476:	f0 b9       	R0 = [FP -0x4];
ffa04478:	9e 2e       	JUMP.S 0xffa041b4 <_httpResp+0x38>;
ffa0447a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0447c:	4f 30       	R1 = FP;
ffa0447e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900be8(-7336984) */
ffa04482:	f0 bb       	[FP -0x4] = R0;
ffa04484:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa04486:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa0448a:	02 e1 e8 0a 	R2.L = 0xae8;		/* (2792)	R2=0xff900ae8(-7337240) */
ffa0448e:	ff e3 3f e8 	CALL 0xffa0150c <_strcpy_>;
ffa04492:	f0 b9       	R0 = [FP -0x4];
ffa04494:	90 2e       	JUMP.S 0xffa041b4 <_httpResp+0x38>;
ffa04496:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa0449a:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa0449e:	0e 30       	R1 = R6;
ffa044a0:	15 30       	R2 = R5;
ffa044a2:	ff e3 a3 e8 	CALL 0xffa015e8 <_substr>;
ffa044a6:	00 0c       	CC = R0 == 0x0;
ffa044a8:	08 1c       	IF CC JUMP 0xffa044b8 <_httpResp+0x33c> (BP);
ffa044aa:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa044ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa044b0:	0a e1 08 08 	P2.L = 0x808;		/* (2056)	P2=0xff800808 */
ffa044b4:	10 9b       	B[P2] = R0;
ffa044b6:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa044b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa044bc:	00 e1 34 0b 	R0.L = 0xb34;		/* (2868)	R0=0xff900b34(-7337164) */
ffa044c0:	0e 30       	R1 = R6;
ffa044c2:	15 30       	R2 = R5;
ffa044c4:	ff e3 92 e8 	CALL 0xffa015e8 <_substr>;
ffa044c8:	00 0c       	CC = R0 == 0x0;
ffa044ca:	05 1f       	IF CC JUMP 0xffa042d4 <_httpResp+0x158> (BP);
ffa044cc:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800808 */
ffa044d0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa044d2:	0a e1 08 08 	P2.L = 0x808;		/* (2056)	P2=0xff800808 */
ffa044d6:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa044d8:	10 9b       	B[P2] = R0;
ffa044da:	fd 2e       	JUMP.S 0xffa042d4 <_httpResp+0x158>;
ffa044dc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa044e0:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa044e4:	0e 30       	R1 = R6;
ffa044e6:	15 30       	R2 = R5;
ffa044e8:	ff e3 80 e8 	CALL 0xffa015e8 <_substr>;
ffa044ec:	00 0c       	CC = R0 == 0x0;
ffa044ee:	61 14       	IF !CC JUMP 0xffa045b0 <_httpResp+0x434> (BP);
ffa044f0:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa044f2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b2c(-7337172) */
ffa044f6:	00 e1 34 0b 	R0.L = 0xb34;		/* (2868)	R0=0xff900b34(-7337164) */
ffa044fa:	0e 30       	R1 = R6;
ffa044fc:	15 30       	R2 = R5;
ffa044fe:	ff e3 75 e8 	CALL 0xffa015e8 <_substr>;
ffa04502:	00 0c       	CC = R0 == 0x0;
ffa04504:	de 1e       	IF CC JUMP 0xffa042c0 <_httpResp+0x144> (BP);
ffa04506:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900808 */
ffa0450a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0450c:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_g_streamEnabled> */
ffa04510:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04512:	10 9b       	B[P2] = R0;
ffa04514:	d6 2e       	JUMP.S 0xffa042c0 <_httpResp+0x144>;
ffa04516:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04518:	06 50       	R0 = R6 + R0;
ffa0451a:	ff e3 87 e9 	CALL 0xffa01828 <_atoi>;
ffa0451e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c34 <_g_streamEnabled> */
ffa04522:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetDataDestIP> */
ffa04526:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04528:	11 91       	R1 = [P2];
ffa0452a:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa0452e:	51 54       	R1 = R1 & R2;
ffa04530:	c0 4f       	R0 <<= 0x18;
ffa04532:	41 50       	R1 = R1 + R0;
ffa04534:	11 93       	[P2] = R1;
ffa04536:	5e 2e       	JUMP.S 0xffa041f2 <_httpResp+0x76>;
ffa04538:	86 51       	R6 = R6 + R0;
ffa0453a:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0453c:	45 53       	R5 = R5 - R0;
ffa0453e:	06 30       	R0 = R6;
ffa04540:	ff e3 74 e9 	CALL 0xffa01828 <_atoi>;
ffa04544:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetDataDestIP> */
ffa04548:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetDataDestIP> */
ffa0454c:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0454e:	11 91       	R1 = [P2];
ffa04550:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa04554:	40 43       	R0 = R0.B (Z);
ffa04556:	51 54       	R1 = R1 & R2;
ffa04558:	40 4f       	R0 <<= 0x8;
ffa0455a:	41 50       	R1 = R1 + R0;
ffa0455c:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0455e:	11 93       	[P2] = R1;
ffa04560:	f7 2e       	JUMP.S 0xffa0434e <_httpResp+0x1d2>;
ffa04562:	86 51       	R6 = R6 + R0;
ffa04564:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04566:	45 53       	R5 = R5 - R0;
ffa04568:	06 30       	R0 = R6;
ffa0456a:	ff e3 5f e9 	CALL 0xffa01828 <_atoi>;
ffa0456e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetDataDestIP> */
ffa04572:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetDataDestIP> */
ffa04576:	11 91       	R1 = [P2];
ffa04578:	41 4d       	R1 >>>= 0x8;
ffa0457a:	41 4f       	R1 <<= 0x8;
ffa0457c:	40 43       	R0 = R0.B (Z);
ffa0457e:	08 50       	R0 = R0 + R1;
ffa04580:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04582:	10 93       	[P2] = R0;
ffa04584:	db 2e       	JUMP.S 0xffa0433a <_httpResp+0x1be>;
ffa04586:	86 51       	R6 = R6 + R0;
ffa04588:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0458a:	45 53       	R5 = R5 - R0;
ffa0458c:	06 30       	R0 = R6;
ffa0458e:	ff e3 4d e9 	CALL 0xffa01828 <_atoi>;
ffa04592:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetDataDestIP> */
ffa04596:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetDataDestIP> */
ffa0459a:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0459c:	11 91       	R1 = [P2];
ffa0459e:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa045a2:	40 43       	R0 = R0.B (Z);
ffa045a4:	51 54       	R1 = R1 & R2;
ffa045a6:	80 4f       	R0 <<= 0x10;
ffa045a8:	41 50       	R1 = R1 + R0;
ffa045aa:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa045ac:	11 93       	[P2] = R1;
ffa045ae:	da 2e       	JUMP.S 0xffa04362 <_httpResp+0x1e6>;
ffa045b0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetDataDestIP> */
ffa045b4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa045b6:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_g_streamEnabled> */
ffa045ba:	10 9b       	B[P2] = R0;
ffa045bc:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c34 */
ffa045c0:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa045c4:	10 91       	R0 = [P2];
ffa045c6:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa045c8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa045ca:	10 93       	[P2] = R0;
ffa045cc:	93 2f       	JUMP.S 0xffa044f2 <_httpResp+0x376>;
	...

ffa045d0 <_httpCollate>:
ffa045d0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa045d2:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ee4 <_NetDataDestIP> */
ffa045d6:	0d e1 dc 0f 	P5.L = 0xfdc;		/* (4060)	P5=0xff900fdc <_g_httpRxed> */
ffa045da:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa045dc:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R1 = [P5] || NOP;
ffa045e0:	29 91 00 00 
ffa045e4:	82 4f       	R2 <<= 0x10;
ffa045e6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa045ea:	51 50       	R1 = R1 + R2;
ffa045ec:	17 30       	R2 = R7;
ffa045ee:	ff e3 5f e7 	CALL 0xffa014ac <_memcpy_>;
ffa045f2:	28 91       	R0 = [P5];
ffa045f4:	38 50       	R0 = R0 + R7;
ffa045f6:	01 e8 00 00 	UNLINK;
ffa045fa:	28 93       	[P5] = R0;
ffa045fc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa045fe:	bd 05       	(R7:7, P5:5) = [SP++];
ffa04600:	10 00       	RTS;
	...

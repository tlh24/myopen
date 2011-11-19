
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
ffa00184:	d0 25       	JUMP.S 0xffa00d24 <_main>;
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
ffa00406:	00 e3 cd 07 	CALL 0xffa013a0 <_printf_int>;
ffa0040a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0040e:	00 e1 68 05 	R0.L = 0x568;		/* (1384)	R0=0xff900568(-7338648) */
ffa00412:	00 e3 ab 06 	CALL 0xffa01168 <_uart_str>;
ffa00416:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900568(-7338648) */
ffa0041a:	0d 30       	R1 = R5;
ffa0041c:	00 e1 14 00 	R0.L = 0x14;		/* ( 20)	R0=0xff900014(-7340012) */
ffa00420:	00 e3 0e 07 	CALL 0xffa0123c <_printf_hex_byte>;
ffa00424:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900014(-7340012) */
ffa00428:	00 e1 68 05 	R0.L = 0x568;		/* (1384)	R0=0xff900568(-7338648) */
ffa0042c:	00 e3 9e 06 	CALL 0xffa01168 <_uart_str>;
ffa00430:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900568(-7338648) */
ffa00434:	00 e1 20 00 	R0.L = 0x20;		/* ( 32)	R0=0xff900020(-7340000) */
ffa00438:	0f 30       	R1 = R7;
ffa0043a:	00 e3 01 07 	CALL 0xffa0123c <_printf_hex_byte>;
ffa0043e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa00442:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa00446:	2f 30       	R5 = R7;
ffa00448:	00 e3 90 06 	CALL 0xffa01168 <_uart_str>;
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
ffa004c8:	00 e3 6c 07 	CALL 0xffa013a0 <_printf_int>;
ffa004cc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002c(-7339988) */
ffa004d0:	ff 42       	R7 = R7.L (Z);
ffa004d2:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa004d6:	00 e3 49 06 	CALL 0xffa01168 <_uart_str>;
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
ffa0057c:	0c e1 2c 0c 	P4.L = 0xc2c;		/* (3116)	P4=0xff900c2c <_g_sampCh> */
ffa00580:	10 97       	W[P2] = R0;
ffa00582:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900518 */
ffa00586:	67 99       	R7 = B[P4] (X);
ffa00588:	0d e1 34 0c 	P5.L = 0xc34;		/* (3124)	P5=0xff900c34 <_g_sampR> */
ffa0058c:	7e 43       	R6 = R7.B (Z);
ffa0058e:	2d 91       	R5 = [P5];
ffa00590:	23 e1 ff 01 	R3 = 0x1ff (X);		/*		R3=0x1ff(511) */
ffa00594:	6e 50       	R1 = R6 + R5;
ffa00596:	19 54       	R0 = R1 & R3;
ffa00598:	00 32       	P0 = R0;
ffa0059a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900500 */
ffa0059e:	09 e1 60 0c 	P1.L = 0xc60;		/* (3168)	P1=0xff900c60 <_g_samples> */
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
ffa005ba:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c60 <_g_samples> */
ffa005be:	09 e1 3c 0c 	P1.L = 0xc3c;		/* (3132)	P1=0xff900c3c <_g_sampOff> */
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
ffa0061e:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_g_sampW> */
ffa00622:	10 91       	R0 = [P2];
ffa00624:	05 0a       	CC = R5 <= R0 (IU);
ffa00626:	38 1c       	IF CC JUMP 0xffa00696 <_audio_out+0x142> (BP);
ffa00628:	28 93       	[P5] = R0;
ffa0062a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c18 <_g_sampW> */
ffa0062e:	0a e1 0c 0c 	P2.L = 0xc0c;		/* (3084)	P2=0xff900c0c <_g_sampMode> */
ffa00632:	10 99       	R0 = B[P2] (Z);
ffa00634:	08 0c       	CC = R0 == 0x1;
ffa00636:	57 18       	IF CC JUMP 0xffa006e4 <_audio_out+0x190>;
ffa00638:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa0063a:	08 08       	CC = R0 == R1;
ffa0063c:	51 18       	IF CC JUMP 0xffa006de <_audio_out+0x18a>;
ffa0063e:	10 99       	R0 = B[P2] (Z);
ffa00640:	10 0c       	CC = R0 == 0x2;
ffa00642:	53 18       	IF CC JUMP 0xffa006e8 <_audio_out+0x194>;
ffa00644:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c0c <_g_sampMode> */
ffa00648:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0064a:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_g_sampInc> */
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
ffa006a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c1c <_g_sampInc> */
ffa006ac:	0a e1 0c 0c 	P2.L = 0xc0c;		/* (3084)	P2=0xff900c0c <_g_sampMode> */
ffa006b0:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa006b2:	10 99       	R0 = B[P2] (Z);
ffa006b4:	08 08       	CC = R0 == R1;
ffa006b6:	c5 17       	IF !CC JUMP 0xffa00640 <_audio_out+0xec> (BP);
ffa006b8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c0c <_g_sampMode> */
ffa006bc:	40 e1 13 10 	R0.H = 0x1013;		/* (4115)	R0=0x1013ffff(269746175) */
ffa006c0:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_g_sampInc> */
ffa006c4:	00 e1 cd ab 	R0.L = 0xabcd;		/* (-21555)	R0=0x1013abcd(269724621) */
ffa006c8:	10 93       	[P2] = R0;
ffa006ca:	c4 2f       	JUMP.S 0xffa00652 <_audio_out+0xfe>;
ffa006cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c1c <_g_sampInc> */
ffa006d0:	0a e1 0c 0c 	P2.L = 0xc0c;		/* (3084)	P2=0xff900c0c <_g_sampMode> */
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
ffa006e8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c0c <_g_sampMode> */
ffa006ec:	40 e1 f1 0f 	R0.H = 0xff1;		/* (4081)	R0=0xff10002(267452418) */
ffa006f0:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_g_sampInc> */
ffa006f4:	00 e1 21 43 	R0.L = 0x4321;		/* (17185)	R0=0xff14321(267469601) */
ffa006f8:	10 93       	[P2] = R0;
ffa006fa:	ac 2f       	JUMP.S 0xffa00652 <_audio_out+0xfe>;
ffa006fc:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa006fe:	10 9b       	B[P2] = R0;
ffa00700:	dc 2f       	JUMP.S 0xffa006b8 <_audio_out+0x164>;
	...

ffa00704 <_wait_flash>:
ffa00704:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00706:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00c34(-4191180) */
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
ffa00728:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c1c(-4191204) */
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
ffa00742:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00c2c(-4191188) */
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
ffa00986:	00 e3 5b 04 	CALL 0xffa0123c <_printf_hex_byte>;
ffa0098a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900044(-7339964) */
ffa0098e:	21 99       	R1 = B[P4] (Z);
ffa00990:	00 e1 54 00 	R0.L = 0x54;		/* ( 84)	R0=0xff900054(-7339948) */
ffa00994:	00 e3 54 04 	CALL 0xffa0123c <_printf_hex_byte>;
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
ffa009b4:	00 e2 34 04 	JUMP.L 0xffa0121c <_printf_str>;
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
ffa009d2:	00 e3 ad 12 	CALL 0xffa02f2c <_bfin_EMAC_recv>;
ffa009d6:	00 0d       	CC = R0 <= 0x0;
ffa009d8:	f8 1b       	IF CC JUMP 0xffa009c8 <_eth_listen+0x8>;
ffa009da:	f9 b9       	P1 = [FP -0x4];
ffa009dc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901504 */
ffa009e0:	0a e1 e8 0e 	P2.L = 0xee8;		/* (3816)	P2=0xff900ee8 <_NetDataDestIP> */
ffa009e4:	11 91       	R1 = [P2];
ffa009e6:	c8 a1       	R0 = [P1 + 0x1c];
ffa009e8:	08 08       	CC = R0 == R1;
ffa009ea:	ef 17       	IF !CC JUMP 0xffa009c8 <_eth_listen+0x8> (BP);
ffa009ec:	48 e4 13 00 	R0 = W[P1 + 0x26] (Z);
ffa009f0:	00 e3 76 08 	CALL 0xffa01adc <_htons>;
ffa009f4:	c0 42       	R0 = R0.L (Z);
ffa009f6:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa009fa:	08 08       	CC = R0 == R1;
ffa009fc:	e6 17       	IF !CC JUMP 0xffa009c8 <_eth_listen+0x8> (BP);
ffa009fe:	f0 b9       	R0 = [FP -0x4];
ffa00a00:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa00a04:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa00a06:	01 e1 40 0c 	R1.L = 0xc40;		/* (3136)	R1=0xff900c40 <_g_outpkt>(-7336896) */
ffa00a0a:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa00a0c:	00 e3 b0 05 	CALL 0xffa0156c <_memcpy_>;
ffa00a10:	dc 2f       	JUMP.S 0xffa009c8 <_eth_listen+0x8>;
	...

ffa00a14 <_getRadioPacket>:
ffa00a14:	e3 05       	[--SP] = (R7:4, P5:3);
ffa00a16:	00 e8 08 00 	LINK 0x20;		/* (32) */
ffa00a1a:	78 e6 fa ff 	W[FP + -0xc] = R0;
ffa00a1e:	79 e6 f8 ff 	W[FP + -0x10] = R1;
ffa00a22:	b8 e5 30 00 	R0 = B[FP + 0x30] (X);
ffa00a26:	79 e4 fa ff 	R1 = W[FP + -0xc] (Z);
ffa00a2a:	b8 e6 ef ff 	B[FP + -0x11] = R0;
ffa00a2e:	e1 bb       	[FP -0x8] = R1;
ffa00a30:	3a 30       	R7 = R2;
ffa00a32:	01 30       	R0 = R1;
ffa00a34:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00a38:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00a3a:	ff e3 d9 fb 	CALL 0xffa001ec <_spi_write_register>;
ffa00a3e:	24 00       	SSYNC;
ffa00a40:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ee8(-4190488) */
ffa00a44:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00a48:	7b e5 fa ff 	R3 = W[FP + -0xc] (X);
ffa00a4c:	13 97       	W[P2] = R3;
ffa00a4e:	24 00       	SSYNC;
ffa00a50:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00a54:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa00a58:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa00a5c:	10 97       	W[P2] = R0;
ffa00a5e:	7e 43       	R6 = R7.B (Z);
ffa00a60:	ff e3 ac fb 	CALL 0xffa001b8 <_spi_delay>;
ffa00a64:	06 0c       	CC = R6 == 0x0;
ffa00a66:	ec 10       	IF !CC JUMP 0xffa00c3e <_getRadioPacket+0x22a>;
ffa00a68:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c3c <_g_sampOff> */
ffa00a6c:	09 e1 14 0c 	P1.L = 0xc14;		/* (3092)	P1=0xff900c14 <_wrptr> */
ffa00a70:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc01504(-4188924) */
ffa00a74:	4d 91       	P5 = [P1];
ffa00a76:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90f000 */
ffa00a7a:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900000 <_l1_data_a>(-7340032) */
ffa00a7e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00a80:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa00a84:	0b e1 18 0c 	P3.L = 0xc18;		/* (3096)	P3=0xff900c18 <_g_sampW> */
ffa00a88:	04 e1 60 0c 	R4.L = 0xc60;		/* (3168)	R4=0xff900c60 <_g_samples>(-7336864) */
ffa00a8c:	25 e1 ff 01 	R5 = 0x1ff (X);		/*		R5=0x1ff(511) */
ffa00a90:	07 20       	JUMP.S 0xffa00a9e <_getRadioPacket+0x8a>;
ffa00a92:	08 0c       	CC = R0 == 0x1;
ffa00a94:	1a 18       	IF CC JUMP 0xffa00ac8 <_getRadioPacket+0xb4>;
ffa00a96:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00a98:	03 61       	R3 = 0x20 (X);		/*		R3=0x20( 32) */
ffa00a9a:	1f 08       	CC = R7 == R3;
ffa00a9c:	21 18       	IF CC JUMP 0xffa00ade <_getRadioPacket+0xca>;
ffa00a9e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00aa0:	20 97       	W[P4] = R0;
ffa00aa2:	ff e3 8b fb 	CALL 0xffa001b8 <_spi_delay>;
ffa00aa6:	06 0c       	CC = R6 == 0x0;
ffa00aa8:	f7 1f       	IF CC JUMP 0xffa00a96 <_getRadioPacket+0x82> (BP);
ffa00aaa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa00aae:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa00ab2:	50 95       	R0 = W[P2] (X);
ffa00ab4:	10 30       	R2 = R0;
ffa00ab6:	28 9a       	B[P5++] = R0;
ffa00ab8:	b9 60       	R1 = 0x17 (X);		/*		R1=0x17( 23) */
ffa00aba:	f8 42       	R0 = R7.L (Z);
ffa00abc:	08 0a       	CC = R0 <= R1 (IU);
ffa00abe:	ec 17       	IF !CC JUMP 0xffa00a96 <_getRadioPacket+0x82> (BP);
ffa00ac0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa00ac2:	07 54       	R0 = R7 & R0;
ffa00ac4:	00 0c       	CC = R0 == 0x0;
ffa00ac6:	e6 17       	IF !CC JUMP 0xffa00a92 <_getRadioPacket+0x7e> (BP);
ffa00ac8:	18 91       	R0 = [P3];
ffa00aca:	68 54       	R1 = R0 & R5;
ffa00acc:	61 50       	R1 = R1 + R4;
ffa00ace:	11 32       	P2 = R1;
ffa00ad0:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00ad2:	03 61       	R3 = 0x20 (X);		/*		R3=0x20( 32) */
ffa00ad4:	08 64       	R0 += 0x1;		/* (  1) */
ffa00ad6:	1f 08       	CC = R7 == R3;
ffa00ad8:	12 9b       	B[P2] = R2;
ffa00ada:	18 93       	[P3] = R0;
ffa00adc:	e1 17       	IF !CC JUMP 0xffa00a9e <_getRadioPacket+0x8a> (BP);
ffa00ade:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa00ae2:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00ae6:	78 e5 fa ff 	R0 = W[FP + -0xc] (X);
ffa00aea:	10 97       	W[P2] = R0;
ffa00aec:	24 00       	SSYNC;
ffa00aee:	06 0c       	CC = R6 == 0x0;
ffa00af0:	40 1c       	IF CC JUMP 0xffa00b70 <_getRadioPacket+0x15c> (BP);
ffa00af2:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c14 <_wrptr> */
ffa00af6:	09 e1 14 0c 	P1.L = 0xc14;		/* (3092)	P1=0xff900c14 <_wrptr> */
ffa00afa:	09 91       	R1 = [P1];
ffa00afc:	01 65       	R1 += 0x20;		/* ( 32) */
ffa00afe:	20 e1 ff 0f 	R0 = 0xfff (X);		/*		R0=0xfff(4095) */
ffa00b02:	01 54       	R0 = R1 & R0;
ffa00b04:	01 67       	R1 += -0x20;		/* (-32) */
ffa00b06:	11 32       	P2 = R1;
ffa00b08:	08 93       	[P1] = R0;
ffa00b0a:	12 60       	R2 = 0x2 (X);		/*		R2=0x2(  2) */
ffa00b0c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c14 <_wrptr> */
ffa00b10:	09 e1 08 0c 	P1.L = 0xc08;		/* (3080)	P1=0xff900c08 <__bss_start> */
ffa00b14:	91 a1       	R1 = [P2 + 0x18];
ffa00b16:	39 49       	CC = BITTST (R1, 0x7);		/* bit  7 */
ffa00b18:	82 c6 91 81 	R0 = R1 >> 0xe;
ffa00b1c:	03 02       	R3 = CC;
ffa00b1e:	10 54       	R0 = R0 & R2;
ffa00b20:	c3 56       	R3 = R3 | R0;
ffa00b22:	82 c6 59 85 	R2 = R1 >> 0x15;
ffa00b26:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa00b28:	82 54       	R2 = R2 & R0;
ffa00b2a:	e1 4e       	R1 >>= 0x1c;
ffa00b2c:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa00b2e:	41 54       	R1 = R1 & R0;
ffa00b30:	8a 56       	R2 = R2 | R1;
ffa00b32:	93 56       	R2 = R3 | R2;
ffa00b34:	08 91       	R0 = [P1];
ffa00b36:	02 08       	CC = R2 == R0;
ffa00b38:	14 18       	IF CC JUMP 0xffa00b60 <_getRadioPacket+0x14c>;
ffa00b3a:	82 09       	CC = R2 < R0 (IU);
ffa00b3c:	91 14       	IF !CC JUMP 0xffa00c5e <_getRadioPacket+0x24a> (BP);
ffa00b3e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00b42:	0a e1 30 0c 	P2.L = 0xc30;		/* (3120)	P2=0xff900c30 <_g_dropped> */
ffa00b46:	04 cc 10 42 	R1 = R2 - R0 (NS) || R0 = [P2] || NOP;
ffa00b4a:	10 91 00 00 
ffa00b4e:	80 64       	R0 += 0x10;		/* ( 16) */
ffa00b50:	41 50       	R1 = R1 + R0;
ffa00b52:	11 93       	[P2] = R1;
ffa00b54:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c30(-4191184) */
ffa00b58:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa00b5a:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00b5e:	10 97       	W[P2] = R0;
ffa00b60:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00b62:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00b64:	02 54       	R0 = R2 & R0;
ffa00b66:	08 93       	[P1] = R0;
ffa00b68:	fa 67       	R2 += -0x1;		/* ( -1) */
ffa00b6a:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00b6c:	02 08       	CC = R2 == R0;
ffa00b6e:	81 18       	IF CC JUMP 0xffa00c70 <_getRadioPacket+0x25c>;
ffa00b70:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c08 <__bss_start> */
ffa00b74:	09 e1 14 0c 	P1.L = 0xc14;		/* (3092)	P1=0xff900c14 <_wrptr> */
ffa00b78:	21 e1 3f 02 	R1 = 0x23f (X);		/*		R1=0x23f(575) */
ffa00b7c:	08 91       	R0 = [P1];
ffa00b7e:	08 0a       	CC = R0 <= R1 (IU);
ffa00b80:	5b 18       	IF CC JUMP 0xffa00c36 <_getRadioPacket+0x222>;
ffa00b82:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00b86:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00b8a:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa00b8e:	10 97       	W[P2] = R0;
ffa00b90:	21 e1 e2 00 	R1 = 0xe2 (X);		/*		R1=0xe2(226) */
ffa00b94:	e0 b9       	R0 = [FP -0x8];
ffa00b96:	ff e3 ad fb 	CALL 0xffa002f0 <_spi_write_byte>;
ffa00b9a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c14 <_wrptr> */
ffa00b9e:	09 e1 14 0c 	P1.L = 0xc14;		/* (3092)	P1=0xff900c14 <_wrptr> */
ffa00ba2:	08 91       	R0 = [P1];
ffa00ba4:	4f 30       	R1 = FP;
ffa00ba6:	20 64       	R0 += 0x4;		/* (  4) */
ffa00ba8:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa00baa:	00 e3 11 0d 	CALL 0xffa025cc <_udp_packet_setup>;
ffa00bae:	08 32       	P1 = R0;
ffa00bb0:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa00bb4:	00 0d       	CC = R0 <= 0x0;
ffa00bb6:	ae 18       	IF CC JUMP 0xffa00d12 <_getRadioPacket+0x2fe>;
ffa00bb8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00bbc:	0a e1 30 0c 	P2.L = 0xc30;		/* (3120)	P2=0xff900c30 <_g_dropped> */
ffa00bc0:	10 91       	R0 = [P2];
ffa00bc2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c30 <_g_dropped> */
ffa00bc6:	08 93       	[P1] = R0;
ffa00bc8:	0a e1 14 0c 	P2.L = 0xc14;		/* (3092)	P2=0xff900c14 <_wrptr> */
ffa00bcc:	10 91       	R0 = [P2];
ffa00bce:	10 4e       	R0 >>= 0x2;
ffa00bd0:	00 0c       	CC = R0 == 0x0;
ffa00bd2:	9e 18       	IF CC JUMP 0xffa00d0e <_getRadioPacket+0x2fa>;
ffa00bd4:	51 32       	P2 = P1;
ffa00bd6:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00bd8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00bda:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00bdc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c14 <_wrptr> */
ffa00be0:	28 90       	R0 = [P5++];
ffa00be2:	10 92       	[P2++] = R0;
ffa00be4:	09 e1 14 0c 	P1.L = 0xc14;		/* (3092)	P1=0xff900c14 <_wrptr> */
ffa00be8:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00bea:	08 91       	R0 = [P1];
ffa00bec:	d1 42       	R1 = R2.L (Z);
ffa00bee:	10 4e       	R0 >>= 0x2;
ffa00bf0:	81 09       	CC = R1 < R0 (IU);
ffa00bf2:	f5 1f       	IF CC JUMP 0xffa00bdc <_getRadioPacket+0x1c8> (BP);
ffa00bf4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c14 <_wrptr> */
ffa00bf8:	0a e1 10 0c 	P2.L = 0xc10;		/* (3088)	P2=0xff900c10 <_trptr> */
ffa00bfc:	10 91       	R0 = [P2];
ffa00bfe:	08 64       	R0 += 0x1;		/* (  1) */
ffa00c00:	10 93       	[P2] = R0;
ffa00c02:	00 e3 63 08 	CALL 0xffa01cc8 <_bfin_EMAC_send_nocopy>;
ffa00c06:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00c08:	28 93       	[P5] = R0;
ffa00c0a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00c0c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00c0e:	23 e1 90 00 	R3 = 0x90 (X);		/*		R3=0x90(144) */
ffa00c12:	09 64       	R1 += 0x1;		/* (  1) */
ffa00c14:	c8 42       	R0 = R1.L (Z);
ffa00c16:	18 08       	CC = R0 == R3;
ffa00c18:	2a 92       	[P5++] = R2;
ffa00c1a:	fc 17       	IF !CC JUMP 0xffa00c12 <_getRadioPacket+0x1fe> (BP);
ffa00c1c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c10(-4191216) */
ffa00c20:	20 e1 04 40 	R0 = 0x4004 (X);		/*		R0=0x4004(16388) */
ffa00c24:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00c28:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c14 <_wrptr> */
ffa00c2c:	10 97       	W[P2] = R0;
ffa00c2e:	09 e1 14 0c 	P1.L = 0xc14;		/* (3092)	P1=0xff900c14 <_wrptr> */
ffa00c32:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00c34:	08 93       	[P1] = R0;
ffa00c36:	01 e8 00 00 	UNLINK;
ffa00c3a:	a3 05       	(R7:4, P5:3) = [SP++];
ffa00c3c:	10 00       	RTS;
ffa00c3e:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c14 <_wrptr> */
ffa00c42:	09 e1 14 0c 	P1.L = 0xc14;		/* (3092)	P1=0xff900c14 <_wrptr> */
ffa00c46:	4d 91       	P5 = [P1];
ffa00c48:	ff e3 b0 fa 	CALL 0xffa001a8 <_ustimer>;
ffa00c4c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa00c50:	0a e1 14 0c 	P2.L = 0xc14;		/* (3092)	P2=0xff900c14 <_wrptr> */
ffa00c54:	28 93       	[P5] = R0;
ffa00c56:	10 91       	R0 = [P2];
ffa00c58:	20 64       	R0 += 0x4;		/* (  4) */
ffa00c5a:	10 93       	[P2] = R0;
ffa00c5c:	06 2f       	JUMP.S 0xffa00a68 <_getRadioPacket+0x54>;
ffa00c5e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c14 <_wrptr> */
ffa00c62:	0a e1 30 0c 	P2.L = 0xc30;		/* (3120)	P2=0xff900c30 <_g_dropped> */
ffa00c66:	11 91       	R1 = [P2];
ffa00c68:	02 52       	R0 = R2 - R0;
ffa00c6a:	08 50       	R0 = R0 + R1;
ffa00c6c:	10 93       	[P2] = R0;
ffa00c6e:	73 2f       	JUMP.S 0xffa00b54 <_getRadioPacket+0x140>;
ffa00c70:	b8 e4 ef ff 	R0 = B[FP + -0x11] (Z);
ffa00c74:	00 0c       	CC = R0 == 0x0;
ffa00c76:	7d 1f       	IF CC JUMP 0xffa00b70 <_getRadioPacket+0x15c> (BP);
ffa00c78:	e0 b9       	R0 = [FP -0x8];
ffa00c7a:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00c7e:	ff e3 8b fb 	CALL 0xffa00394 <_radio_set_tx>;
ffa00c82:	24 00       	SSYNC;
ffa00c84:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c30(-4191184) */
ffa00c88:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa00c8c:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90050c */
ffa00c90:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00c94:	79 e5 fa ff 	R1 = W[FP + -0xc] (X);
ffa00c98:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa00c9c:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa00ca0:	0c e1 40 0c 	P4.L = 0xc40;		/* (3136)	P4=0xff900c40 <_g_outpkt> */
ffa00ca4:	11 97       	W[P2] = R1;
ffa00ca6:	5c 32       	P3 = P4;
ffa00ca8:	28 97       	W[P5] = R0;
ffa00caa:	ff e3 87 fa 	CALL 0xffa001b8 <_spi_delay>;
ffa00cae:	03 6d       	P3 += 0x20;		/* ( 32) */
ffa00cb0:	00 00       	NOP;
ffa00cb2:	20 98       	R0 = B[P4++] (Z);
ffa00cb4:	28 97       	W[P5] = R0;
ffa00cb6:	ff e3 81 fa 	CALL 0xffa001b8 <_spi_delay>;
ffa00cba:	5c 08       	CC = P4 == P3;
ffa00cbc:	fa 17       	IF !CC JUMP 0xffa00cb0 <_getRadioPacket+0x29c> (BP);
ffa00cbe:	78 e5 fa ff 	R0 = W[FP + -0xc] (X);
ffa00cc2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00cc6:	50 4a       	BITSET (R0, 0xa);		/* bit 10 */
ffa00cc8:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00ccc:	10 97       	W[P2] = R0;
ffa00cce:	24 00       	SSYNC;
ffa00cd0:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00cd2:	50 95       	R0 = W[P2] (X);
ffa00cd4:	7b e5 f8 ff 	R3 = W[FP + -0x10] (X);
ffa00cd8:	03 54       	R0 = R3 & R0;
ffa00cda:	c0 42       	R0 = R0.L (Z);
ffa00cdc:	00 0c       	CC = R0 == 0x0;
ffa00cde:	0c 18       	IF CC JUMP 0xffa00cf6 <_getRadioPacket+0x2e2>;
ffa00ce0:	6a 32       	P5 = P2;
ffa00ce2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00ce4:	ff e3 6e fe 	CALL 0xffa009c0 <_eth_listen>;
ffa00ce8:	68 95       	R0 = W[P5] (X);
ffa00cea:	79 e5 f8 ff 	R1 = W[FP + -0x10] (X);
ffa00cee:	08 54       	R0 = R0 & R1;
ffa00cf0:	c0 42       	R0 = R0.L (Z);
ffa00cf2:	00 0c       	CC = R0 == 0x0;
ffa00cf4:	f7 17       	IF !CC JUMP 0xffa00ce2 <_getRadioPacket+0x2ce> (BP);
ffa00cf6:	e0 b9       	R0 = [FP -0x8];
ffa00cf8:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00cfa:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00cfe:	ff e3 77 fa 	CALL 0xffa001ec <_spi_write_register>;
ffa00d02:	e0 b9       	R0 = [FP -0x8];
ffa00d04:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00d08:	ff e3 18 fb 	CALL 0xffa00338 <_radio_set_rx>;
ffa00d0c:	3b 2f       	JUMP.S 0xffa00b82 <_getRadioPacket+0x16e>;
ffa00d0e:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00d10:	72 2f       	JUMP.S 0xffa00bf4 <_getRadioPacket+0x1e0>;
ffa00d12:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00d16:	0a e1 10 0c 	P2.L = 0xc10;		/* (3088)	P2=0xff900c10 <_trptr> */
ffa00d1a:	10 91       	R0 = [P2];
ffa00d1c:	08 64       	R0 += 0x1;		/* (  1) */
ffa00d1e:	10 93       	[P2] = R0;
ffa00d20:	7e 2f       	JUMP.S 0xffa00c1c <_getRadioPacket+0x208>;
	...

ffa00d24 <_main>:
ffa00d24:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c10(-4191216) */
ffa00d28:	e3 05       	[--SP] = (R7:4, P5:3);
ffa00d2a:	20 e1 9c c1 	R0 = -0x3e64 (X);		/*		R0=0xffffc19c(-15972) */
ffa00d2e:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00d32:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa00d36:	10 97       	W[P2] = R0;
ffa00d38:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa00d3c:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa00d3e:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa00d42:	12 97       	W[P2] = R2;
ffa00d44:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa00d48:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00d4a:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa00d4e:	10 97       	W[P2] = R0;
ffa00d50:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa00d54:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa00d56:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa00d5a:	10 97       	W[P2] = R0;
ffa00d5c:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa00d60:	a2 6f       	P2 += -0xc;		/* (-12) */
ffa00d62:	10 97       	W[P2] = R0;
ffa00d64:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa00d68:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00d6a:	10 97       	W[P2] = R0;
ffa00d6c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00d6e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00d70:	11 97       	W[P2] = R1;
ffa00d72:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0150c(-4188916) */
ffa00d76:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa00d7a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c14(-4191212) */
ffa00d7e:	09 e1 0c 04 	P1.L = 0x40c;		/* (1036)	P1=0xffc0040c(-4193268) */
ffa00d82:	08 e1 04 04 	P0.L = 0x404;		/* (1028)	P0=0xffc00404(-4193276) */
ffa00d86:	0a e1 10 04 	P2.L = 0x410;		/* (1040)	P2=0xffc00410(-4193264) */
ffa00d8a:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa00d8e:	01 97       	W[P0] = R1;
ffa00d90:	11 97       	W[P2] = R1;
ffa00d92:	08 97       	W[P1] = R0;
ffa00d94:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00d96:	20 e1 88 00 	R0 = 0x88 (X);		/*		R0=0x88(136) */
ffa00d9a:	10 97       	W[P2] = R0;
ffa00d9c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00d9e:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00da0:	01 97       	W[P0] = R1;
ffa00da2:	0a 97       	W[P1] = R2;
ffa00da4:	10 97       	W[P2] = R0;
ffa00da6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00da8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900410 */
ffa00dac:	b8 4f       	R0 <<= 0x17;
ffa00dae:	0a e1 60 0e 	P2.L = 0xe60;		/* (3680)	P2=0xff900e60 <_printf_temp> */
ffa00db2:	10 93       	[P2] = R0;
ffa00db4:	20 e1 01 e0 	R0 = -0x1fff (X);		/*		R0=0xffffe001(-8191) */
ffa00db8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e60 <_printf_temp> */
ffa00dbc:	0a e1 64 0e 	P2.L = 0xe64;		/* (3684)	P2=0xff900e64 <_printf_out> */
ffa00dc0:	50 4f       	R0 <<= 0xa;
ffa00dc2:	10 93       	[P2] = R0;
ffa00dc4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90e001(-7282687) */
ffa00dc8:	21 e1 46 02 	R1 = 0x246 (X);		/*		R1=0x246(582) */
ffa00dcc:	00 e1 7c 00 	R0.L = 0x7c;		/* (124)	R0=0xff90007c(-7339908) */
ffa00dd0:	00 e3 e8 02 	CALL 0xffa013a0 <_printf_int>;
ffa00dd4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa00dd8:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa00ddc:	00 e3 20 02 	CALL 0xffa0121c <_printf_str>;
ffa00de0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900798(-7338088) */
ffa00de4:	00 e1 8c 00 	R0.L = 0x8c;		/* (140)	R0=0xff90008c(-7339892) */
ffa00de8:	00 e3 1a 02 	CALL 0xffa0121c <_printf_str>;
ffa00dec:	49 e1 40 00 	P1.H = 0x40;		/* ( 64)	P1=0x40040c */
ffa00df0:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa00df2:	22 e1 ca de 	R2 = -0x2136 (X);		/*		R2=0xffffdeca(-8502) */
ffa00df6:	23 e1 ad fb 	R3 = -0x453 (X);		/*		R3=0xfffffbad(-1107) */
ffa00dfa:	20 e1 ed c0 	R0 = -0x3f13 (X);		/*		R0=0xffffc0ed(-16147) */
ffa00dfe:	21 e1 be ba 	R1 = -0x4542 (X);		/*		R1=0xffffbabe(-17730) */
ffa00e02:	09 e1 00 00 	P1.L = 0x0;		/* (  0)	P1=0x400000 */
ffa00e06:	b2 e0 06 10 	LSETUP(0xffa00e0a <_main+0xe6>, 0xffa00e12 <_main+0xee>) LC1 = P1;
ffa00e0a:	12 97       	W[P2] = R2;
ffa00e0c:	53 b4       	W[P2 + 0x2] = R3;
ffa00e0e:	90 b4       	W[P2 + 0x4] = R0;
ffa00e10:	d1 b4       	W[P2 + 0x6] = R1;
ffa00e12:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00e14:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00e16:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00e18:	02 20       	JUMP.S 0xffa00e1c <_main+0xf8>;
ffa00e1a:	45 6c       	P5 += 0x8;		/* (  8) */
ffa00e1c:	2f 95       	R7 = W[P5] (Z);
ffa00e1e:	80 e1 ca de 	R0 = 0xdeca (Z);		/*		R0=0xdeca(57034) */
ffa00e22:	07 08       	CC = R7 == R0;
ffa00e24:	15 18       	IF CC JUMP 0xffa00e4e <_main+0x12a>;
ffa00e26:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90deca(-7282998) */
ffa00e2a:	0e 30       	R1 = R6;
ffa00e2c:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e30:	00 e3 5c 02 	CALL 0xffa012e8 <_printf_hex>;
ffa00e34:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e38:	00 e1 ac 00 	R0.L = 0xac;		/* (172)	R0=0xff9000ac(-7339860) */
ffa00e3c:	0f 30       	R1 = R7;
ffa00e3e:	00 e3 55 02 	CALL 0xffa012e8 <_printf_hex>;
ffa00e42:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000ac(-7339860) */
ffa00e46:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa00e4a:	00 e3 e9 01 	CALL 0xffa0121c <_printf_str>;
ffa00e4e:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa00e50:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa00e54:	08 08       	CC = R0 == R1;
ffa00e56:	08 18       	IF CC JUMP 0xffa00e66 <_main+0x142>;
ffa00e58:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900798(-7338088) */
ffa00e5c:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e60:	0e 30       	R1 = R6;
ffa00e62:	00 e3 43 02 	CALL 0xffa012e8 <_printf_hex>;
ffa00e66:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa00e68:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa00e6c:	08 08       	CC = R0 == R1;
ffa00e6e:	08 18       	IF CC JUMP 0xffa00e7e <_main+0x15a>;
ffa00e70:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e74:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e78:	0e 30       	R1 = R6;
ffa00e7a:	00 e3 37 02 	CALL 0xffa012e8 <_printf_hex>;
ffa00e7e:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa00e80:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa00e84:	08 08       	CC = R0 == R1;
ffa00e86:	08 18       	IF CC JUMP 0xffa00e96 <_main+0x172>;
ffa00e88:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e8c:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e90:	0e 30       	R1 = R6;
ffa00e92:	00 e3 2b 02 	CALL 0xffa012e8 <_printf_hex>;
ffa00e96:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa00e9a:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa00e9e:	55 08       	CC = P5 == P2;
ffa00ea0:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00ea2:	bc 17       	IF !CC JUMP 0xffa00e1a <_main+0xf6> (BP);
ffa00ea4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00ea8:	00 e1 b4 00 	R0.L = 0xb4;		/* (180)	R0=0xff9000b4(-7339852) */
ffa00eac:	00 e3 b8 01 	CALL 0xffa0121c <_printf_str>;
ffa00eb0:	00 e3 36 0d 	CALL 0xffa0291c <_bfin_EMAC_init>;
ffa00eb4:	00 0c       	CC = R0 == 0x0;
ffa00eb6:	f0 bb       	[FP -0x4] = R0;
ffa00eb8:	55 19       	IF CC JUMP 0xffa01162 <_main+0x43e>;
ffa00eba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0fff8(-4128776) */
ffa00ebe:	20 e1 83 38 	R0 = 0x3883 (X);		/*		R0=0x3883(14467) */
ffa00ec2:	0a e1 00 32 	P2.L = 0x3200;		/* (12800)	P2=0xffc03200(-4181504) */
ffa00ec6:	10 97       	W[P2] = R0;
ffa00ec8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03200(-4181504) */
ffa00ecc:	20 e1 56 fe 	R0 = -0x1aa (X);		/*		R0=0xfffffe56(-426) */
ffa00ed0:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa00ed4:	10 97       	W[P2] = R0;
ffa00ed6:	20 e1 ab 01 	R0 = 0x1ab (X);		/*		R0=0x1ab(427) */
ffa00eda:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa00edc:	10 97       	W[P2] = R0;
ffa00ede:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa00ee2:	20 e1 40 01 	R0 = 0x140 (X);		/*		R0=0x140(320) */
ffa00ee6:	0a e1 10 32 	P2.L = 0x3210;		/* (12816)	P2=0xffc03210(-4181488) */
ffa00eea:	10 97       	W[P2] = R0;
ffa00eec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03210(-4181488) */
ffa00ef0:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa00ef4:	50 95       	R0 = W[P2] (X);
ffa00ef6:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00ef8:	10 97       	W[P2] = R0;
ffa00efa:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00efc:	50 95       	R0 = W[P2] (X);
ffa00efe:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa00f00:	10 97       	W[P2] = R0;
ffa00f02:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa00f06:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00f0a:	50 95       	R0 = W[P2] (X);
ffa00f0c:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00f0e:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00000(-4194304) */
ffa00f12:	10 97       	W[P2] = R0;
ffa00f14:	09 e1 00 09 	P1.L = 0x900;		/* (2304)	P1=0xffc00900(-4192000) */
ffa00f18:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f1a:	08 97       	W[P1] = R0;
ffa00f1c:	24 00       	SSYNC;
ffa00f1e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903204 */
ffa00f22:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f24:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_g_sampR> */
ffa00f28:	10 93       	[P2] = R0;
ffa00f2a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c34 <_g_sampR> */
ffa00f2e:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_g_sampW> */
ffa00f32:	10 93       	[P2] = R0;
ffa00f34:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c18 <_g_sampW> */
ffa00f38:	0a e1 3c 0c 	P2.L = 0xc3c;		/* (3132)	P2=0xff900c3c <_g_sampOff> */
ffa00f3c:	10 93       	[P2] = R0;
ffa00f3e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c3c <_g_sampOff> */
ffa00f42:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00f44:	0a e1 0c 0c 	P2.L = 0xc0c;		/* (3084)	P2=0xff900c0c <_g_sampMode> */
ffa00f48:	10 9b       	B[P2] = R0;
ffa00f4a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00f4c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c0c <_g_sampMode> */
ffa00f50:	d8 4f       	R0 <<= 0x1b;
ffa00f52:	0a e1 1c 0c 	P2.L = 0xc1c;		/* (3100)	P2=0xff900c1c <_g_sampInc> */
ffa00f56:	10 93       	[P2] = R0;
ffa00f58:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c1c <_g_sampInc> */
ffa00f5c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f5e:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_g_sampCh> */
ffa00f62:	10 9b       	B[P2] = R0;
ffa00f64:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c2c(-4191188) */
ffa00f68:	e8 60       	R0 = 0x1d (X);		/*		R0=0x1d( 29) */
ffa00f6a:	0a e1 08 09 	P2.L = 0x908;		/* (2312)	P2=0xffc00908(-4191992) */
ffa00f6e:	10 97       	W[P2] = R0;
ffa00f70:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa00f72:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00f74:	10 97       	W[P2] = R0;
ffa00f76:	b8 60       	R0 = 0x17 (X);		/*		R0=0x17( 23) */
ffa00f78:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00f7a:	10 97       	W[P2] = R0;
ffa00f7c:	20 e1 03 4e 	R0 = 0x4e03 (X);		/*		R0=0x4e03(19971) */
ffa00f80:	08 97       	W[P1] = R0;
ffa00f82:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe00908(-2094840) */
ffa00f86:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa04e03(-6271485) */
ffa00f8a:	00 e1 54 05 	R0.L = 0x554;		/* (1364)	R0=0xffa00554 <_audio_out>(-6290092) */
ffa00f8e:	0a e1 1c 20 	P2.L = 0x201c;		/* (8220)	P2=0xffe0201c(-2088932) */
ffa00f92:	10 93       	[P2] = R0;
ffa00f94:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0201c(-4186084) */
ffa00f98:	0a e1 0c 01 	P2.L = 0x10c;		/* (268)	P2=0xffc0010c(-4194036) */
ffa00f9c:	10 91       	R0 = [P2];
ffa00f9e:	48 4a       	BITSET (R0, 0x9);		/* bit  9 */
ffa00fa0:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa00fa4:	10 93       	[P2] = R0;
ffa00fa6:	0d e1 04 0c 	P5.L = 0xc04;		/* (3076)	P5=0xff900c04 <_g_radioChan> */
ffa00faa:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00fac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900554(-7338668) */
ffa00fb0:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa00fb4:	00 e3 34 01 	CALL 0xffa0121c <_printf_str>;
ffa00fb8:	00 e3 1e 0e 	CALL 0xffa02bf4 <_bridge_publish>;
ffa00fbc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90010c */
ffa00fc0:	0a e1 14 0c 	P2.L = 0xc14;		/* (3092)	P2=0xff900c14 <_wrptr> */
ffa00fc4:	16 93       	[P2] = R6;
ffa00fc6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c14 <_wrptr> */
ffa00fca:	0a e1 10 0c 	P2.L = 0xc10;		/* (3088)	P2=0xff900c10 <_trptr> */
ffa00fce:	16 93       	[P2] = R6;
ffa00fd0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c10 <_trptr> */
ffa00fd4:	0a e1 30 0c 	P2.L = 0xc30;		/* (3120)	P2=0xff900c30 <_g_dropped> */
ffa00fd8:	16 93       	[P2] = R6;
ffa00fda:	40 43       	R0 = R0.B (Z);
ffa00fdc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c30 <_g_dropped> */
ffa00fe0:	28 93       	[P5] = R0;
ffa00fe2:	0a e1 08 0c 	P2.L = 0xc08;		/* (3080)	P2=0xff900c08 <__bss_start> */
ffa00fe6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000c8(-7339832) */
ffa00fea:	16 93       	[P2] = R6;
ffa00fec:	00 e1 e0 00 	R0.L = 0xe0;		/* (224)	R0=0xff9000e0(-7339808) */
ffa00ff0:	00 e3 16 01 	CALL 0xffa0121c <_printf_str>;
ffa00ff4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c08(-4191224) */
ffa00ff8:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa00ffc:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01000:	10 97       	W[P2] = R0;
ffa01002:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa01006:	22 6c       	P2 += 0x4;		/* (  4) */
ffa01008:	10 97       	W[P2] = R0;
ffa0100a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0100e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa01010:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01014:	10 97       	W[P2] = R0;
ffa01016:	24 00       	SSYNC;
ffa01018:	27 e1 7f 00 	R7 = 0x7f (X);		/*		R7=0x7f(127) */
ffa0101c:	2a 99       	R2 = B[P5] (Z);
ffa0101e:	ba 54       	R2 = R2 & R7;
ffa01020:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa01022:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa01024:	ff e3 1a fa 	CALL 0xffa00458 <_radio_init>;
ffa01028:	2a 99       	R2 = B[P5] (Z);
ffa0102a:	ba 54       	R2 = R2 & R7;
ffa0102c:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0102e:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01032:	ff e3 13 fa 	CALL 0xffa00458 <_radio_init>;
ffa01036:	2a 99       	R2 = B[P5] (Z);
ffa01038:	ba 54       	R2 = R2 & R7;
ffa0103a:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa0103e:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01042:	ff e3 0b fa 	CALL 0xffa00458 <_radio_init>;
ffa01046:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901508 */
ffa0104a:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_g_sampR> */
ffa0104e:	16 93       	[P2] = R6;
ffa01050:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c34 <_g_sampR> */
ffa01054:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_g_sampW> */
ffa01058:	16 93       	[P2] = R6;
ffa0105a:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0105c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0105e:	ff e3 6d f9 	CALL 0xffa00338 <_radio_set_rx>;
ffa01062:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01066:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01068:	ff e3 68 f9 	CALL 0xffa00338 <_radio_set_rx>;
ffa0106c:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01070:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa01074:	ff e3 62 f9 	CALL 0xffa00338 <_radio_set_rx>;
ffa01078:	28 91       	R0 = [P5];
ffa0107a:	38 4e       	R0 >>= 0x7;
ffa0107c:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa0107e:	44 e1 0b e5 	R4.H = 0xe50b;		/* (-6901)	R4=0xe50b0c60(-452260768) */
ffa01082:	03 68       	P3 = 0x0 (X);		/*		P3=0x0(  0) */
ffa01084:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa01086:	45 43       	R5 = R0.B (Z);
ffa01088:	04 e1 81 f7 	R4.L = 0xf781;		/* (-2175)	R4=0xe50bf781(-452200575) */
ffa0108c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c18 <_g_sampW> */
ffa01090:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_streamEnabled> */
ffa01094:	10 99       	R0 = B[P2] (Z);
ffa01096:	00 0c       	CC = R0 == 0x0;
ffa01098:	8a 1f       	IF CC JUMP 0xffa00fac <_main+0x288> (BP);
ffa0109a:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00c40(-4191168) */
ffa0109e:	f0 b9       	R0 = [FP -0x4];
ffa010a0:	0c e1 00 07 	P4.L = 0x700;		/* (1792)	P4=0xffc00700(-4192512) */
ffa010a4:	ff e3 8e fc 	CALL 0xffa009c0 <_eth_listen>;
ffa010a8:	60 95       	R0 = W[P4] (X);
ffa010aa:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa010ac:	3c 18       	IF CC JUMP 0xffa01124 <_main+0x400>;
ffa010ae:	00 00       	NOP;
ffa010b0:	00 00       	NOP;
ffa010b2:	00 00       	NOP;
ffa010b4:	60 95       	R0 = W[P4] (X);
ffa010b6:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa010b8:	40 18       	IF CC JUMP 0xffa01138 <_main+0x414>;
ffa010ba:	00 00       	NOP;
ffa010bc:	00 00       	NOP;
ffa010be:	00 00       	NOP;
ffa010c0:	60 95       	R0 = W[P4] (X);
ffa010c2:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa010c4:	45 18       	IF CC JUMP 0xffa0114e <_main+0x42a>;
ffa010c6:	20 e1 28 01 	R0 = 0x128 (X);		/*		R0=0x128(296) */
ffa010ca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c38(-4191176) */
ffa010ce:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa010d2:	61 95       	R1 = W[P4] (X);
ffa010d4:	08 54       	R0 = R0 & R1;
ffa010d6:	21 e1 28 01 	R1 = 0x128 (X);		/*		R1=0x128(296) */
ffa010da:	08 08       	CC = R0 == R1;
ffa010dc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa010de:	38 07       	IF CC R7 = R0;
ffa010e0:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa010e4:	10 97       	W[P2] = R0;
ffa010e6:	ff e3 61 f8 	CALL 0xffa001a8 <_ustimer>;
ffa010ea:	08 4e       	R0 >>= 0x1;
ffa010ec:	80 c0 04 18 	A1 = R0.L * R4.L (FU);
ffa010f0:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa010f4:	81 c0 04 86 	A1 += R0.H * R4.L, A0 = R0.H * R4.H (FU);
ffa010f8:	81 c0 20 98 	A1 += R4.H * R0.L (FU);
ffa010fc:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01100:	0b c4 00 80 	A0 += A1;
ffa01104:	8b c0 00 38 	R0 = A0 (FU);
ffa01108:	82 c6 a8 83 	R1 = R0 >> 0xb;
ffa0110c:	43 30       	R0 = P3;
ffa0110e:	08 08       	CC = R0 == R1;
ffa01110:	be 1b       	IF CC JUMP 0xffa0108c <_main+0x368>;
ffa01112:	19 32       	P3 = R1;
ffa01114:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01118:	20 e1 00 80 	R0 = -0x8000 (X);		/*		R0=0xffff8000(-32768) */
ffa0111c:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa01120:	10 97       	W[P2] = R0;
ffa01122:	b5 2f       	JUMP.S 0xffa0108c <_main+0x368>;
ffa01124:	7a 43       	R2 = R7.B (Z);
ffa01126:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa01128:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa0112a:	f5 b0       	[SP + 0xc] = R5;
ffa0112c:	ff e3 74 fc 	CALL 0xffa00a14 <_getRadioPacket>;
ffa01130:	60 95       	R0 = W[P4] (X);
ffa01132:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01134:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01136:	c4 17       	IF !CC JUMP 0xffa010be <_main+0x39a> (BP);
ffa01138:	7a 43       	R2 = R7.B (Z);
ffa0113a:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa0113e:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa01140:	f5 b0       	[SP + 0xc] = R5;
ffa01142:	ff e3 69 fc 	CALL 0xffa00a14 <_getRadioPacket>;
ffa01146:	60 95       	R0 = W[P4] (X);
ffa01148:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa0114a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0114c:	bd 17       	IF !CC JUMP 0xffa010c6 <_main+0x3a2> (BP);
ffa0114e:	7a 43       	R2 = R7.B (Z);
ffa01150:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01154:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa01158:	f5 b0       	[SP + 0xc] = R5;
ffa0115a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0115c:	ff e3 5c fc 	CALL 0xffa00a14 <_getRadioPacket>;
ffa01160:	b3 2f       	JUMP.S 0xffa010c6 <_main+0x3a2>;
ffa01162:	00 e3 8d 0e 	CALL 0xffa02e7c <_DHCP_req>;
ffa01166:	aa 2e       	JUMP.S 0xffa00eba <_main+0x196>;

ffa01168 <_uart_str>:
ffa01168:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa0116c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01170:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa01174:	08 32       	P1 = R0;
ffa01176:	50 95       	R0 = W[P2] (X);
ffa01178:	c0 42       	R0 = R0.L (Z);
ffa0117a:	08 0c       	CC = R0 == 0x1;
ffa0117c:	06 18       	IF CC JUMP 0xffa01188 <_uart_str+0x20>;
ffa0117e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01180:	02 30       	R0 = R2;
ffa01182:	01 e8 00 00 	UNLINK;
ffa01186:	10 00       	RTS;
ffa01188:	48 99       	R0 = B[P1] (X);
ffa0118a:	01 43       	R1 = R0.B (X);
ffa0118c:	01 0c       	CC = R1 == 0x0;
ffa0118e:	f8 1b       	IF CC JUMP 0xffa0117e <_uart_str+0x16>;
ffa01190:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa01194:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01196:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01198:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa0119c:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa011a0:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa011a2:	b2 e0 1c 00 	LSETUP(0xffa011a6 <_uart_str+0x3e>, 0xffa011da <_uart_str+0x72>) LC1 = P0;
ffa011a6:	19 08       	CC = R1 == R3;
ffa011a8:	1b 18       	IF CC JUMP 0xffa011de <_uart_str+0x76>;
ffa011aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa011ae:	00 43       	R0 = R0.B (X);
ffa011b0:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa011b4:	10 97       	W[P2] = R0;
ffa011b6:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa011b8:	50 95       	R0 = W[P2] (X);
ffa011ba:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa011bc:	0a 10       	IF !CC JUMP 0xffa011d0 <_uart_str+0x68>;
ffa011be:	00 00       	NOP;
ffa011c0:	00 00       	NOP;
ffa011c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa011c6:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa011ca:	50 95       	R0 = W[P2] (X);
ffa011cc:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa011ce:	f9 1f       	IF CC JUMP 0xffa011c0 <_uart_str+0x58> (BP);
ffa011d0:	48 99       	R0 = B[P1] (X);
ffa011d2:	01 43       	R1 = R0.B (X);
ffa011d4:	01 0c       	CC = R1 == 0x0;
ffa011d6:	0a 64       	R2 += 0x1;		/* (  1) */
ffa011d8:	d4 1b       	IF CC JUMP 0xffa01180 <_uart_str+0x18>;
ffa011da:	09 6c       	P1 += 0x1;		/* (  1) */
ffa011dc:	d2 2f       	JUMP.S 0xffa01180 <_uart_str+0x18>;
ffa011de:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa011e0:	20 9f       	W[I0] = R0.L;
ffa011e2:	02 20       	JUMP.S 0xffa011e6 <_uart_str+0x7e>;
ffa011e4:	00 00       	NOP;
ffa011e6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa011ea:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa011ee:	50 95       	R0 = W[P2] (X);
ffa011f0:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa011f2:	f9 1f       	IF CC JUMP 0xffa011e4 <_uart_str+0x7c> (BP);
ffa011f4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa011f8:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa011fa:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa011fe:	10 97       	W[P2] = R0;
ffa01200:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa01202:	50 95       	R0 = W[P2] (X);
ffa01204:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01206:	e5 13       	IF !CC JUMP 0xffa011d0 <_uart_str+0x68>;
ffa01208:	00 00       	NOP;
ffa0120a:	00 00       	NOP;
ffa0120c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa01210:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa01214:	50 95       	R0 = W[P2] (X);
ffa01216:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01218:	f9 1f       	IF CC JUMP 0xffa0120a <_uart_str+0xa2> (BP);
ffa0121a:	db 2f       	JUMP.S 0xffa011d0 <_uart_str+0x68>;

ffa0121c <_printf_str>:
ffa0121c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01220:	01 e8 00 00 	UNLINK;
ffa01224:	ff e2 a2 ff 	JUMP.L 0xffa01168 <_uart_str>;

ffa01228 <_printf_newline>:
ffa01228:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0122c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa01230:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa01234:	01 e8 00 00 	UNLINK;
ffa01238:	ff e2 98 ff 	JUMP.L 0xffa01168 <_uart_str>;

ffa0123c <_printf_hex_byte>:
ffa0123c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0123e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01242:	28 32       	P5 = R0;
ffa01244:	39 30       	R7 = R1;
ffa01246:	00 e3 b1 01 	CALL 0xffa015a8 <_strlen_>;
ffa0124a:	10 30       	R2 = R0;
ffa0124c:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa01250:	02 09       	CC = R2 <= R0;
ffa01252:	41 10       	IF !CC JUMP 0xffa012d4 <_printf_hex_byte+0x98>;
ffa01254:	02 0d       	CC = R2 <= 0x0;
ffa01256:	44 18       	IF CC JUMP 0xffa012de <_printf_hex_byte+0xa2>;
ffa01258:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa0125c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0125e:	08 e1 64 0e 	P0.L = 0xe64;		/* (3684)	P0=0xff900e64 <_printf_out> */
ffa01262:	09 32       	P1 = R1;
ffa01264:	42 91       	P2 = [P0];
ffa01266:	09 64       	R1 += 0x1;		/* (  1) */
ffa01268:	68 98       	R0 = B[P5++] (X);
ffa0126a:	0a 08       	CC = R2 == R1;
ffa0126c:	8a 5a       	P2 = P2 + P1;
ffa0126e:	10 9b       	B[P2] = R0;
ffa01270:	f9 17       	IF !CC JUMP 0xffa01262 <_printf_hex_byte+0x26> (BP);
ffa01272:	0a 32       	P1 = R2;
ffa01274:	42 91       	P2 = [P0];
ffa01276:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01278:	22 32       	P4 = R2;
ffa0127a:	79 43       	R1 = R7.B (Z);
ffa0127c:	8a 5a       	P2 = P2 + P1;
ffa0127e:	10 9b       	B[P2] = R0;
ffa01280:	42 91       	P2 = [P0];
ffa01282:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa01284:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01288:	11 6c       	P1 += 0x2;		/* (  2) */
ffa0128a:	a2 5a       	P2 = P2 + P4;
ffa0128c:	10 9b       	B[P2] = R0;
ffa0128e:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa01290:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa01292:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa01294:	01 30       	R0 = R1;
ffa01296:	10 40       	R0 >>>= R2;
ffa01298:	18 54       	R0 = R0 & R3;
ffa0129a:	38 09       	CC = R0 <= R7;
ffa0129c:	1a 1c       	IF CC JUMP 0xffa012d0 <_printf_hex_byte+0x94> (BP);
ffa0129e:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa012a0:	42 91       	P2 = [P0];
ffa012a2:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa012a4:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c04 <_g_radioChan> */
ffa012a8:	22 0c       	CC = R2 == -0x4;
ffa012aa:	8a 5a       	P2 = P2 + P1;
ffa012ac:	0d e1 64 0e 	P5.L = 0xe64;		/* (3684)	P5=0xff900e64 <_printf_out> */
ffa012b0:	10 9b       	B[P2] = R0;
ffa012b2:	09 6c       	P1 += 0x1;		/* (  1) */
ffa012b4:	f0 17       	IF !CC JUMP 0xffa01294 <_printf_hex_byte+0x58> (BP);
ffa012b6:	6a 91       	P2 = [P5];
ffa012b8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa012ba:	94 5a       	P2 = P4 + P2;
ffa012bc:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa012c0:	28 91       	R0 = [P5];
ffa012c2:	ff e3 53 ff 	CALL 0xffa01168 <_uart_str>;
ffa012c6:	01 e8 00 00 	UNLINK;
ffa012ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa012cc:	bc 05       	(R7:7, P5:4) = [SP++];
ffa012ce:	10 00       	RTS;
ffa012d0:	80 65       	R0 += 0x30;		/* ( 48) */
ffa012d2:	e7 2f       	JUMP.S 0xffa012a0 <_printf_hex_byte+0x64>;
ffa012d4:	01 e8 00 00 	UNLINK;
ffa012d8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa012da:	bc 05       	(R7:7, P5:4) = [SP++];
ffa012dc:	10 00       	RTS;
ffa012de:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e64 <_printf_out> */
ffa012e2:	08 e1 64 0e 	P0.L = 0xe64;		/* (3684)	P0=0xff900e64 <_printf_out> */
ffa012e6:	c6 2f       	JUMP.S 0xffa01272 <_printf_hex_byte+0x36>;

ffa012e8 <_printf_hex>:
ffa012e8:	fb 05       	[--SP] = (R7:7, P5:3);
ffa012ea:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa012ee:	28 32       	P5 = R0;
ffa012f0:	39 30       	R7 = R1;
ffa012f2:	00 e3 5b 01 	CALL 0xffa015a8 <_strlen_>;
ffa012f6:	10 30       	R2 = R0;
ffa012f8:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa012fc:	02 09       	CC = R2 <= R0;
ffa012fe:	47 10       	IF !CC JUMP 0xffa0138c <_printf_hex+0xa4>;
ffa01300:	02 0d       	CC = R2 <= 0x0;
ffa01302:	4a 18       	IF CC JUMP 0xffa01396 <_printf_hex+0xae>;
ffa01304:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900900 */
ffa01308:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0130a:	09 e1 64 0e 	P1.L = 0xe64;		/* (3684)	P1=0xff900e64 <_printf_out> */
ffa0130e:	01 32       	P0 = R1;
ffa01310:	4a 91       	P2 = [P1];
ffa01312:	09 64       	R1 += 0x1;		/* (  1) */
ffa01314:	68 98       	R0 = B[P5++] (X);
ffa01316:	0a 08       	CC = R2 == R1;
ffa01318:	82 5a       	P2 = P2 + P0;
ffa0131a:	10 9b       	B[P2] = R0;
ffa0131c:	f9 17       	IF !CC JUMP 0xffa0130e <_printf_hex+0x26> (BP);
ffa0131e:	02 32       	P0 = R2;
ffa01320:	4a 91       	P2 = [P1];
ffa01322:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01324:	1a 32       	P3 = R2;
ffa01326:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa01328:	82 5a       	P2 = P2 + P0;
ffa0132a:	10 9b       	B[P2] = R0;
ffa0132c:	4a 91       	P2 = [P1];
ffa0132e:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa01330:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01334:	10 6c       	P0 += 0x2;		/* (  2) */
ffa01336:	9a 5a       	P2 = P2 + P3;
ffa01338:	10 9b       	B[P2] = R0;
ffa0133a:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa0133c:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa0133e:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa01340:	b2 e0 10 50 	LSETUP(0xffa01344 <_printf_hex+0x5c>, 0xffa01360 <_printf_hex+0x78>) LC1 = P5;
ffa01344:	07 30       	R0 = R7;
ffa01346:	08 40       	R0 >>>= R1;
ffa01348:	10 54       	R0 = R0 & R2;
ffa0134a:	18 09       	CC = R0 <= R3;
ffa0134c:	1e 1c       	IF CC JUMP 0xffa01388 <_printf_hex+0xa0> (BP);
ffa0134e:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01350:	4a 91       	P2 = [P1];
ffa01352:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900700 */
ffa01356:	0c e1 64 0e 	P4.L = 0xe64;		/* (3684)	P4=0xff900e64 <_printf_out> */
ffa0135a:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa0135c:	82 5a       	P2 = P2 + P0;
ffa0135e:	10 9b       	B[P2] = R0;
ffa01360:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01362:	62 91       	P2 = [P4];
ffa01364:	4b 32       	P1 = P3;
ffa01366:	49 6c       	P1 += 0x9;		/* (  9) */
ffa01368:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0136a:	8a 5a       	P2 = P2 + P1;
ffa0136c:	10 9b       	B[P2] = R0;
ffa0136e:	62 91       	P2 = [P4];
ffa01370:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01372:	8a 5a       	P2 = P2 + P1;
ffa01374:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa01378:	20 91       	R0 = [P4];
ffa0137a:	ff e3 f7 fe 	CALL 0xffa01168 <_uart_str>;
ffa0137e:	01 e8 00 00 	UNLINK;
ffa01382:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01384:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01386:	10 00       	RTS;
ffa01388:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0138a:	e3 2f       	JUMP.S 0xffa01350 <_printf_hex+0x68>;
ffa0138c:	01 e8 00 00 	UNLINK;
ffa01390:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01392:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01394:	10 00       	RTS;
ffa01396:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e64 <_printf_out> */
ffa0139a:	09 e1 64 0e 	P1.L = 0xe64;		/* (3684)	P1=0xff900e64 <_printf_out> */
ffa0139e:	c0 2f       	JUMP.S 0xffa0131e <_printf_hex+0x36>;

ffa013a0 <_printf_int>:
ffa013a0:	f3 05       	[--SP] = (R7:6, P5:3);
ffa013a2:	01 0c       	CC = R1 == 0x0;
ffa013a4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa013a8:	28 32       	P5 = R0;
ffa013aa:	39 30       	R7 = R1;
ffa013ac:	41 14       	IF !CC JUMP 0xffa0142e <_printf_int+0x8e> (BP);
ffa013ae:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900000 <_l1_data_a> */
ffa013b2:	0b e1 60 0e 	P3.L = 0xe60;		/* (3680)	P3=0xff900e60 <_printf_temp> */
ffa013b6:	5a 91       	P2 = [P3];
ffa013b8:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa013ba:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa013bc:	10 9b       	B[P2] = R0;
ffa013be:	45 30       	R0 = P5;
ffa013c0:	00 e3 f4 00 	CALL 0xffa015a8 <_strlen_>;
ffa013c4:	c6 50       	R3 = R6 + R0;
ffa013c6:	10 30       	R2 = R0;
ffa013c8:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa013cc:	03 09       	CC = R3 <= R0;
ffa013ce:	4e 10       	IF !CC JUMP 0xffa0146a <_printf_int+0xca>;
ffa013d0:	02 0d       	CC = R2 <= 0x0;
ffa013d2:	79 18       	IF CC JUMP 0xffa014c4 <_printf_int+0x124>;
ffa013d4:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e64 <_printf_out> */
ffa013d8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa013da:	08 e1 64 0e 	P0.L = 0xe64;		/* (3684)	P0=0xff900e64 <_printf_out> */
ffa013de:	09 32       	P1 = R1;
ffa013e0:	42 91       	P2 = [P0];
ffa013e2:	09 64       	R1 += 0x1;		/* (  1) */
ffa013e4:	68 98       	R0 = B[P5++] (X);
ffa013e6:	0a 08       	CC = R2 == R1;
ffa013e8:	8a 5a       	P2 = P2 + P1;
ffa013ea:	10 9b       	B[P2] = R0;
ffa013ec:	f9 17       	IF !CC JUMP 0xffa013de <_printf_int+0x3e> (BP);
ffa013ee:	06 0d       	CC = R6 <= 0x0;
ffa013f0:	12 18       	IF CC JUMP 0xffa01414 <_printf_int+0x74>;
ffa013f2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa013f4:	00 91       	R0 = [P0];
ffa013f6:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa013fa:	5a 91 00 00 
ffa013fe:	08 50       	R0 = R0 + R1;
ffa01400:	08 32       	P1 = R0;
ffa01402:	0e 52       	R0 = R6 - R1;
ffa01404:	28 32       	P5 = R0;
ffa01406:	09 64       	R1 += 0x1;		/* (  1) */
ffa01408:	0e 08       	CC = R6 == R1;
ffa0140a:	aa 5a       	P2 = P2 + P5;
ffa0140c:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa01410:	08 9b       	B[P1] = R0;
ffa01412:	f1 17       	IF !CC JUMP 0xffa013f4 <_printf_int+0x54> (BP);
ffa01414:	0b 32       	P1 = R3;
ffa01416:	42 91       	P2 = [P0];
ffa01418:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0141a:	91 5a       	P2 = P1 + P2;
ffa0141c:	10 9b       	B[P2] = R0;
ffa0141e:	00 91       	R0 = [P0];
ffa01420:	ff e3 a4 fe 	CALL 0xffa01168 <_uart_str>;
ffa01424:	01 e8 00 00 	UNLINK;
ffa01428:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0142a:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0142c:	10 00       	RTS;
ffa0142e:	01 0d       	CC = R1 <= 0x0;
ffa01430:	22 18       	IF CC JUMP 0xffa01474 <_printf_int+0xd4>;
ffa01432:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e60 <_printf_temp> */
ffa01436:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01438:	0b e1 60 0e 	P3.L = 0xe60;		/* (3680)	P3=0xff900e60 <_printf_temp> */
ffa0143c:	05 20       	JUMP.S 0xffa01446 <_printf_int+0xa6>;
ffa0143e:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa01442:	06 08       	CC = R6 == R0;
ffa01444:	bd 1b       	IF CC JUMP 0xffa013be <_printf_int+0x1e>;
ffa01446:	07 30       	R0 = R7;
ffa01448:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0144a:	00 e3 83 00 	CALL 0xffa01550 <_mod>;
ffa0144e:	0e 32       	P1 = R6;
ffa01450:	5a 91       	P2 = [P3];
ffa01452:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01454:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01456:	0e 64       	R6 += 0x1;		/* (  1) */
ffa01458:	8a 5a       	P2 = P2 + P1;
ffa0145a:	10 9b       	B[P2] = R0;
ffa0145c:	07 30       	R0 = R7;
ffa0145e:	00 e3 6b 00 	CALL 0xffa01534 <_div>;
ffa01462:	00 0d       	CC = R0 <= 0x0;
ffa01464:	38 30       	R7 = R0;
ffa01466:	ec 17       	IF !CC JUMP 0xffa0143e <_printf_int+0x9e> (BP);
ffa01468:	ab 2f       	JUMP.S 0xffa013be <_printf_int+0x1e>;
ffa0146a:	01 e8 00 00 	UNLINK;
ffa0146e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01470:	b3 05       	(R7:6, P5:3) = [SP++];
ffa01472:	10 00       	RTS;
ffa01474:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01476:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa01478:	f8 4f       	R0 <<= 0x1f;
ffa0147a:	f8 53       	R7 = R0 - R7;
ffa0147c:	07 0d       	CC = R7 <= 0x0;
ffa0147e:	2c 18       	IF CC JUMP 0xffa014d6 <_printf_int+0x136>;
ffa01480:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e60 <_printf_temp> */
ffa01484:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa01486:	0b e1 60 0e 	P3.L = 0xe60;		/* (3680)	P3=0xff900e60 <_printf_temp> */
ffa0148a:	05 20       	JUMP.S 0xffa01494 <_printf_int+0xf4>;
ffa0148c:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa01490:	4c 08       	CC = P4 == P1;
ffa01492:	1e 18       	IF CC JUMP 0xffa014ce <_printf_int+0x12e>;
ffa01494:	07 30       	R0 = R7;
ffa01496:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01498:	00 e3 5c 00 	CALL 0xffa01550 <_mod>;
ffa0149c:	5a 91       	P2 = [P3];
ffa0149e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa014a0:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa014a2:	a2 5a       	P2 = P2 + P4;
ffa014a4:	10 9b       	B[P2] = R0;
ffa014a6:	07 30       	R0 = R7;
ffa014a8:	00 e3 46 00 	CALL 0xffa01534 <_div>;
ffa014ac:	00 0d       	CC = R0 <= 0x0;
ffa014ae:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa014b0:	38 30       	R7 = R0;
ffa014b2:	ed 17       	IF !CC JUMP 0xffa0148c <_printf_int+0xec> (BP);
ffa014b4:	74 30       	R6 = P4;
ffa014b6:	4c 32       	P1 = P4;
ffa014b8:	0e 64       	R6 += 0x1;		/* (  1) */
ffa014ba:	5a 91       	P2 = [P3];
ffa014bc:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa014be:	8a 5a       	P2 = P2 + P1;
ffa014c0:	10 9b       	B[P2] = R0;
ffa014c2:	7e 2f       	JUMP.S 0xffa013be <_printf_int+0x1e>;
ffa014c4:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e64 <_printf_out> */
ffa014c8:	08 e1 64 0e 	P0.L = 0xe64;		/* (3684)	P0=0xff900e64 <_printf_out> */
ffa014cc:	91 2f       	JUMP.S 0xffa013ee <_printf_int+0x4e>;
ffa014ce:	4c 32       	P1 = P4;
ffa014d0:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa014d4:	f3 2f       	JUMP.S 0xffa014ba <_printf_int+0x11a>;
ffa014d6:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e60 <_printf_temp> */
ffa014da:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa014dc:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa014de:	0b e1 60 0e 	P3.L = 0xe60;		/* (3680)	P3=0xff900e60 <_printf_temp> */
ffa014e2:	ec 2f       	JUMP.S 0xffa014ba <_printf_int+0x11a>;

ffa014e4 <_printf_ip>:
ffa014e4:	70 05       	[--SP] = (R7:6);
ffa014e6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa014ea:	39 30       	R7 = R1;
ffa014ec:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa014f0:	49 43       	R1 = R1.B (Z);
ffa014f2:	ff e3 57 ff 	CALL 0xffa013a0 <_printf_int>;
ffa014f6:	06 e1 88 00 	R6.L = 0x88;		/* (136)	R6=0xff900088(-7339896) */
ffa014fa:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa014fe:	49 43       	R1 = R1.B (Z);
ffa01500:	06 30       	R0 = R6;
ffa01502:	ff e3 4f ff 	CALL 0xffa013a0 <_printf_int>;
ffa01506:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa0150a:	49 43       	R1 = R1.B (Z);
ffa0150c:	06 30       	R0 = R6;
ffa0150e:	c7 4e       	R7 >>= 0x18;
ffa01510:	ff e3 48 ff 	CALL 0xffa013a0 <_printf_int>;
ffa01514:	0f 30       	R1 = R7;
ffa01516:	06 30       	R0 = R6;
ffa01518:	ff e3 44 ff 	CALL 0xffa013a0 <_printf_int>;
ffa0151c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa01520:	00 e1 68 05 	R0.L = 0x568;		/* (1384)	R0=0xff900568(-7338648) */
ffa01524:	ff e3 7c fe 	CALL 0xffa0121c <_printf_str>;
ffa01528:	01 e8 00 00 	UNLINK;
ffa0152c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0152e:	30 05       	(R7:6) = [SP++];
ffa01530:	10 00       	RTS;
	...

ffa01534 <_div>:
ffa01534:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01538:	08 4f       	R0 <<= 0x1;
ffa0153a:	48 42       	DIVS (R0, R1);
ffa0153c:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa0153e:	b2 e0 03 20 	LSETUP(0xffa01542 <_div+0xe>, 0xffa01544 <_div+0x10>) LC1 = P2;
ffa01542:	08 42       	DIVQ (R0, R1);
ffa01544:	00 00       	NOP;
ffa01546:	80 42       	R0 = R0.L (X);
ffa01548:	01 e8 00 00 	UNLINK;
ffa0154c:	10 00       	RTS;
	...

ffa01550 <_mod>:
ffa01550:	70 05       	[--SP] = (R7:6);
ffa01552:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01556:	30 30       	R6 = R0;
ffa01558:	39 30       	R7 = R1;
ffa0155a:	ff e3 ed ff 	CALL 0xffa01534 <_div>;
ffa0155e:	c7 40       	R7 *= R0;
ffa01560:	01 e8 00 00 	UNLINK;
ffa01564:	be 53       	R6 = R6 - R7;
ffa01566:	06 30       	R0 = R6;
ffa01568:	30 05       	(R7:6) = [SP++];
ffa0156a:	10 00       	RTS;

ffa0156c <_memcpy_>:
ffa0156c:	02 0d       	CC = R2 <= 0x0;
ffa0156e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01572:	08 32       	P1 = R0;
ffa01574:	11 32       	P2 = R1;
ffa01576:	08 18       	IF CC JUMP 0xffa01586 <_memcpy_+0x1a>;
ffa01578:	00 00       	NOP;
ffa0157a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0157c:	09 64       	R1 += 0x1;		/* (  1) */
ffa0157e:	48 98       	R0 = B[P1++] (X);
ffa01580:	0a 08       	CC = R2 == R1;
ffa01582:	10 9a       	B[P2++] = R0;
ffa01584:	fc 17       	IF !CC JUMP 0xffa0157c <_memcpy_+0x10> (BP);
ffa01586:	01 e8 00 00 	UNLINK;
ffa0158a:	10 00       	RTS;

ffa0158c <_memset_>:
ffa0158c:	02 0d       	CC = R2 <= 0x0;
ffa0158e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01592:	10 32       	P2 = R0;
ffa01594:	06 18       	IF CC JUMP 0xffa015a0 <_memset_+0x14>;
ffa01596:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01598:	08 64       	R0 += 0x1;		/* (  1) */
ffa0159a:	02 08       	CC = R2 == R0;
ffa0159c:	11 9a       	B[P2++] = R1;
ffa0159e:	fd 17       	IF !CC JUMP 0xffa01598 <_memset_+0xc> (BP);
ffa015a0:	01 e8 00 00 	UNLINK;
ffa015a4:	10 00       	RTS;
	...

ffa015a8 <_strlen_>:
ffa015a8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa015ac:	10 32       	P2 = R0;
ffa015ae:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa015b0:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa015b4:	b2 e0 06 10 	LSETUP(0xffa015b8 <_strlen_+0x10>, 0xffa015c0 <_strlen_+0x18>) LC1 = P1;
ffa015b8:	50 99       	R0 = B[P2] (X);
ffa015ba:	00 0c       	CC = R0 == 0x0;
ffa015bc:	04 18       	IF CC JUMP 0xffa015c4 <_strlen_+0x1c>;
ffa015be:	09 64       	R1 += 0x1;		/* (  1) */
ffa015c0:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa015c2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa015c4:	01 30       	R0 = R1;
ffa015c6:	01 e8 00 00 	UNLINK;
ffa015ca:	10 00       	RTS;

ffa015cc <_strcpy_>:
ffa015cc:	12 32       	P2 = R2;
ffa015ce:	c5 04       	[--SP] = (P5:5);
ffa015d0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa015d4:	29 32       	P5 = R1;
ffa015d6:	00 32       	P0 = R0;
ffa015d8:	51 99       	R1 = B[P2] (X);
ffa015da:	08 43       	R0 = R1.B (X);
ffa015dc:	00 0c       	CC = R0 == 0x0;
ffa015de:	17 18       	IF CC JUMP 0xffa0160c <_strcpy_+0x40>;
ffa015e0:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa015e2:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa015e4:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa015e8:	b2 e0 09 10 	LSETUP(0xffa015ec <_strcpy_+0x20>, 0xffa015fa <_strcpy_+0x2e>) LC1 = P1;
ffa015ec:	01 9a       	B[P0++] = R1;
ffa015ee:	51 99       	R1 = B[P2] (X);
ffa015f0:	08 43       	R0 = R1.B (X);
ffa015f2:	00 0c       	CC = R0 == 0x0;
ffa015f4:	0a 64       	R2 += 0x1;		/* (  1) */
ffa015f6:	03 18       	IF CC JUMP 0xffa015fc <_strcpy_+0x30>;
ffa015f8:	00 00       	NOP;
ffa015fa:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa015fc:	01 e8 00 00 	UNLINK;
ffa01600:	28 91       	R0 = [P5];
ffa01602:	10 50       	R0 = R0 + R2;
ffa01604:	28 93       	[P5] = R0;
ffa01606:	40 30       	R0 = P0;
ffa01608:	85 04       	(P5:5) = [SP++];
ffa0160a:	10 00       	RTS;
ffa0160c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0160e:	f7 2f       	JUMP.S 0xffa015fc <_strcpy_+0x30>;

ffa01610 <_strprepend>:
ffa01610:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01612:	21 32       	P4 = R1;
ffa01614:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01618:	38 30       	R7 = R0;
ffa0161a:	02 30       	R0 = R2;
ffa0161c:	2a 32       	P5 = R2;
ffa0161e:	ff e3 c5 ff 	CALL 0xffa015a8 <_strlen_>;
ffa01622:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa01626:	20 91 00 00 
ffa0162a:	02 0d       	CC = R2 <= 0x0;
ffa0162c:	0a 18       	IF CC JUMP 0xffa01640 <_strprepend+0x30>;
ffa0162e:	07 52       	R0 = R7 - R0;
ffa01630:	10 32       	P2 = R0;
ffa01632:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01634:	09 64       	R1 += 0x1;		/* (  1) */
ffa01636:	68 98       	R0 = B[P5++] (X);
ffa01638:	0a 08       	CC = R2 == R1;
ffa0163a:	10 9a       	B[P2++] = R0;
ffa0163c:	fc 17       	IF !CC JUMP 0xffa01634 <_strprepend+0x24> (BP);
ffa0163e:	20 91       	R0 = [P4];
ffa01640:	01 e8 00 00 	UNLINK;
ffa01644:	07 52       	R0 = R7 - R0;
ffa01646:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01648:	10 00       	RTS;
	...

ffa0164c <_strcmp>:
ffa0164c:	10 32       	P2 = R0;
ffa0164e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01652:	01 32       	P0 = R1;
ffa01654:	51 99       	R1 = B[P2] (X);
ffa01656:	01 0c       	CC = R1 == 0x0;
ffa01658:	1b 18       	IF CC JUMP 0xffa0168e <_strcmp+0x42>;
ffa0165a:	00 00       	NOP;
ffa0165c:	00 00       	NOP;
ffa0165e:	00 00       	NOP;
ffa01660:	40 99       	R0 = B[P0] (X);
ffa01662:	00 0c       	CC = R0 == 0x0;
ffa01664:	15 18       	IF CC JUMP 0xffa0168e <_strcmp+0x42>;
ffa01666:	01 08       	CC = R1 == R0;
ffa01668:	1c 10       	IF !CC JUMP 0xffa016a0 <_strcmp+0x54>;
ffa0166a:	4a 32       	P1 = P2;
ffa0166c:	50 32       	P2 = P0;
ffa0166e:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01670:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01672:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa01676:	49 99       	R1 = B[P1] (X);
ffa01678:	01 0c       	CC = R1 == 0x0;
ffa0167a:	0a 18       	IF CC JUMP 0xffa0168e <_strcmp+0x42>;
ffa0167c:	00 00       	NOP;
ffa0167e:	00 00       	NOP;
ffa01680:	00 00       	NOP;
ffa01682:	50 99       	R0 = B[P2] (X);
ffa01684:	00 0c       	CC = R0 == 0x0;
ffa01686:	04 18       	IF CC JUMP 0xffa0168e <_strcmp+0x42>;
ffa01688:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa0168a:	40 0c       	CC = P0 == 0x0;
ffa0168c:	05 10       	IF !CC JUMP 0xffa01696 <_strcmp+0x4a>;
ffa0168e:	01 e8 00 00 	UNLINK;
ffa01692:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01694:	10 00       	RTS;
ffa01696:	01 08       	CC = R1 == R0;
ffa01698:	04 10       	IF !CC JUMP 0xffa016a0 <_strcmp+0x54>;
ffa0169a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0169c:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0169e:	ec 2f       	JUMP.S 0xffa01676 <_strcmp+0x2a>;
ffa016a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa016a2:	01 e8 00 00 	UNLINK;
ffa016a6:	10 00       	RTS;

ffa016a8 <_substr>:
ffa016a8:	f4 05       	[--SP] = (R7:6, P5:4);
ffa016aa:	20 32       	P4 = R0;
ffa016ac:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa016b0:	11 32       	P2 = R1;
ffa016b2:	32 30       	R6 = R2;
ffa016b4:	61 99       	R1 = B[P4] (X);
ffa016b6:	01 0c       	CC = R1 == 0x0;
ffa016b8:	14 18       	IF CC JUMP 0xffa016e0 <_substr+0x38>;
ffa016ba:	00 00       	NOP;
ffa016bc:	00 00       	NOP;
ffa016be:	00 00       	NOP;
ffa016c0:	50 99       	R0 = B[P2] (X);
ffa016c2:	00 0c       	CC = R0 == 0x0;
ffa016c4:	0e 18       	IF CC JUMP 0xffa016e0 <_substr+0x38>;
ffa016c6:	02 0d       	CC = R2 <= 0x0;
ffa016c8:	0c 18       	IF CC JUMP 0xffa016e0 <_substr+0x38>;
ffa016ca:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa016cc:	01 08       	CC = R1 == R0;
ffa016ce:	0f 18       	IF CC JUMP 0xffa016ec <_substr+0x44>;
ffa016d0:	00 00       	NOP;
ffa016d2:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa016d4:	0b 64       	R3 += 0x1;		/* (  1) */
ffa016d6:	50 99       	R0 = B[P2] (X);
ffa016d8:	00 0c       	CC = R0 == 0x0;
ffa016da:	03 18       	IF CC JUMP 0xffa016e0 <_substr+0x38>;
ffa016dc:	1e 09       	CC = R6 <= R3;
ffa016de:	f7 17       	IF !CC JUMP 0xffa016cc <_substr+0x24> (BP);
ffa016e0:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa016e2:	01 e8 00 00 	UNLINK;
ffa016e6:	40 30       	R0 = P0;
ffa016e8:	b4 05       	(R7:6, P5:4) = [SP++];
ffa016ea:	10 00       	RTS;
ffa016ec:	52 30       	R2 = P2;
ffa016ee:	3b 30       	R7 = R3;
ffa016f0:	0a 64       	R2 += 0x1;		/* (  1) */
ffa016f2:	0f 64       	R7 += 0x1;		/* (  1) */
ffa016f4:	12 32       	P2 = R2;
ffa016f6:	07 32       	P0 = R7;
ffa016f8:	4c 32       	P1 = P4;
ffa016fa:	6c 32       	P5 = P4;
ffa016fc:	09 6c       	P1 += 0x1;		/* (  1) */
ffa016fe:	15 6c       	P5 += 0x2;		/* (  2) */
ffa01700:	02 20       	JUMP.S 0xffa01704 <_substr+0x5c>;
ffa01702:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01704:	4b 99       	R3 = B[P1] (X);
ffa01706:	50 99       	R0 = B[P2] (X);
ffa01708:	03 08       	CC = R3 == R0;
ffa0170a:	0e 10       	IF !CC JUMP 0xffa01726 <_substr+0x7e>;
ffa0170c:	03 0c       	CC = R3 == 0x0;
ffa0170e:	0c 18       	IF CC JUMP 0xffa01726 <_substr+0x7e>;
ffa01710:	00 00       	NOP;
ffa01712:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01714:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01716:	68 98       	R0 = B[P5++] (X);
ffa01718:	00 0c       	CC = R0 == 0x0;
ffa0171a:	f4 17       	IF !CC JUMP 0xffa01702 <_substr+0x5a> (BP);
ffa0171c:	01 e8 00 00 	UNLINK;
ffa01720:	40 30       	R0 = P0;
ffa01722:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01724:	10 00       	RTS;
ffa01726:	12 32       	P2 = R2;
ffa01728:	1f 30       	R3 = R7;
ffa0172a:	d6 2f       	JUMP.S 0xffa016d6 <_substr+0x2e>;

ffa0172c <_sprintf_int>:
ffa0172c:	fb 05       	[--SP] = (R7:7, P5:3);
ffa0172e:	01 0c       	CC = R1 == 0x0;
ffa01730:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01734:	00 34       	I0 = R0;
ffa01736:	11 30       	R2 = R1;
ffa01738:	1a 14       	IF !CC JUMP 0xffa0176c <_sprintf_int+0x40> (BP);
ffa0173a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e60 <_printf_temp> */
ffa0173e:	0b e1 60 0e 	P3.L = 0xe60;		/* (3680)	P3=0xff900e60 <_printf_temp> */
ffa01742:	5a 91       	P2 = [P3];
ffa01744:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01746:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01748:	10 9b       	B[P2] = R0;
ffa0174a:	88 32       	P1 = I0;
ffa0174c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0174e:	0b 52       	R0 = R3 - R1;
ffa01750:	00 32       	P0 = R0;
ffa01752:	5a 91       	P2 = [P3];
ffa01754:	09 64       	R1 += 0x1;		/* (  1) */
ffa01756:	99 08       	CC = R1 < R3;
ffa01758:	82 5a       	P2 = P2 + P0;
ffa0175a:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa0175e:	08 9a       	B[P1++] = R0;
ffa01760:	f7 1f       	IF CC JUMP 0xffa0174e <_sprintf_int+0x22> (BP);
ffa01762:	01 e8 00 00 	UNLINK;
ffa01766:	03 30       	R0 = R3;
ffa01768:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0176a:	10 00       	RTS;
ffa0176c:	01 0d       	CC = R1 <= 0x0;
ffa0176e:	2d 18       	IF CC JUMP 0xffa017c8 <_sprintf_int+0x9c>;
ffa01770:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e60 <_printf_temp> */
ffa01774:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa01778:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa0177a:	0b e1 60 0e 	P3.L = 0xe60;		/* (3680)	P3=0xff900e60 <_printf_temp> */
ffa0177e:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa01782:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa01784:	b2 e0 20 50 	LSETUP(0xffa01788 <_sprintf_int+0x5c>, 0xffa017c4 <_sprintf_int+0x98>) LC1 = P5;
ffa01788:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa0178c:	59 91 00 00 
ffa01790:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01794:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa01798:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa0179c:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa017a0:	0b c4 00 00 	R0 = (A0 += A1);
ffa017a4:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa017a8:	10 4d       	R0 >>>= 0x2;
ffa017aa:	08 52       	R0 = R0 - R1;
ffa017ac:	00 32       	P0 = R0;
ffa017ae:	13 32       	P2 = R3;
ffa017b0:	0b 64       	R3 += 0x1;		/* (  1) */
ffa017b2:	40 0d       	CC = P0 <= 0x0;
ffa017b4:	51 5a       	P1 = P1 + P2;
ffa017b6:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa017b8:	92 5a       	P2 = P2 << 0x1;
ffa017ba:	4a 30       	R1 = P2;
ffa017bc:	0a 52       	R0 = R2 - R1;
ffa017be:	80 65       	R0 += 0x30;		/* ( 48) */
ffa017c0:	08 9b       	B[P1] = R0;
ffa017c2:	39 18       	IF CC JUMP 0xffa01834 <_sprintf_int+0x108>;
ffa017c4:	50 30       	R2 = P0;
ffa017c6:	c2 2f       	JUMP.S 0xffa0174a <_sprintf_int+0x1e>;
ffa017c8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa017ca:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa017cc:	f8 4f       	R0 <<= 0x1f;
ffa017ce:	90 52       	R2 = R0 - R2;
ffa017d0:	02 0d       	CC = R2 <= 0x0;
ffa017d2:	3c 18       	IF CC JUMP 0xffa0184a <_sprintf_int+0x11e>;
ffa017d4:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e60 <_printf_temp> */
ffa017d8:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa017dc:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa017de:	0b e1 60 0e 	P3.L = 0xe60;		/* (3680)	P3=0xff900e60 <_printf_temp> */
ffa017e2:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa017e6:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa017e8:	b2 e0 1f 50 	LSETUP(0xffa017ec <_sprintf_int+0xc0>, 0xffa01826 <_sprintf_int+0xfa>) LC1 = P5;
ffa017ec:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa017f0:	59 91 00 00 
ffa017f4:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa017f8:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa017fc:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa01800:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01804:	0b c4 00 00 	R0 = (A0 += A1);
ffa01808:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa0180c:	10 4d       	R0 >>>= 0x2;
ffa0180e:	08 52       	R0 = R0 - R1;
ffa01810:	00 32       	P0 = R0;
ffa01812:	61 5a       	P1 = P1 + P4;
ffa01814:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa01816:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa01818:	92 5a       	P2 = P2 << 0x1;
ffa0181a:	4a 30       	R1 = P2;
ffa0181c:	0a 52       	R0 = R2 - R1;
ffa0181e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01820:	40 0d       	CC = P0 <= 0x0;
ffa01822:	08 9b       	B[P1] = R0;
ffa01824:	0f 18       	IF CC JUMP 0xffa01842 <_sprintf_int+0x116>;
ffa01826:	50 30       	R2 = P0;
ffa01828:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa0182a:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa0182c:	5a 91       	P2 = [P3];
ffa0182e:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa01830:	8a 5a       	P2 = P2 + P1;
ffa01832:	10 9b       	B[P2] = R0;
ffa01834:	03 0d       	CC = R3 <= 0x0;
ffa01836:	8a 17       	IF !CC JUMP 0xffa0174a <_sprintf_int+0x1e> (BP);
ffa01838:	01 e8 00 00 	UNLINK;
ffa0183c:	03 30       	R0 = R3;
ffa0183e:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01840:	10 00       	RTS;
ffa01842:	5c 30       	R3 = P4;
ffa01844:	4c 32       	P1 = P4;
ffa01846:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01848:	f2 2f       	JUMP.S 0xffa0182c <_sprintf_int+0x100>;
ffa0184a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e60 <_printf_temp> */
ffa0184e:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa01850:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01852:	0b e1 60 0e 	P3.L = 0xe60;		/* (3680)	P3=0xff900e60 <_printf_temp> */
ffa01856:	eb 2f       	JUMP.S 0xffa0182c <_sprintf_int+0x100>;

ffa01858 <_sprintf_hex>:
ffa01858:	10 32       	P2 = R0;
ffa0185a:	78 05       	[--SP] = (R7:7);
ffa0185c:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0185e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01862:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa01864:	10 9b       	B[P2] = R0;
ffa01866:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0186a:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa0186e:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa01870:	12 6c       	P2 += 0x2;		/* (  2) */
ffa01872:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa01874:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa01876:	b2 e0 09 10 	LSETUP(0xffa0187a <_sprintf_hex+0x22>, 0xffa01888 <_sprintf_hex+0x30>) LC1 = P1;
ffa0187a:	01 30       	R0 = R1;
ffa0187c:	10 40       	R0 >>>= R2;
ffa0187e:	18 54       	R0 = R0 & R3;
ffa01880:	38 09       	CC = R0 <= R7;
ffa01882:	09 1c       	IF CC JUMP 0xffa01894 <_sprintf_hex+0x3c> (BP);
ffa01884:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01886:	10 9a       	B[P2++] = R0;
ffa01888:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa0188a:	01 e8 00 00 	UNLINK;
ffa0188e:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01890:	38 05       	(R7:7) = [SP++];
ffa01892:	10 00       	RTS;
ffa01894:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01896:	f8 2f       	JUMP.S 0xffa01886 <_sprintf_hex+0x2e>;

ffa01898 <_strprintf_int>:
ffa01898:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0189a:	29 32       	P5 = R1;
ffa0189c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa018a0:	0a 30       	R1 = R2;
ffa018a2:	38 30       	R7 = R0;
ffa018a4:	ff e3 44 ff 	CALL 0xffa0172c <_sprintf_int>;
ffa018a8:	29 91       	R1 = [P5];
ffa018aa:	41 50       	R1 = R1 + R0;
ffa018ac:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa018b0:	29 93 00 00 
ffa018b4:	01 e8 00 00 	UNLINK;
ffa018b8:	07 30       	R0 = R7;
ffa018ba:	bd 05       	(R7:7, P5:5) = [SP++];
ffa018bc:	10 00       	RTS;
	...

ffa018c0 <_strprintf_hex>:
ffa018c0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa018c2:	29 32       	P5 = R1;
ffa018c4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa018c8:	0a 30       	R1 = R2;
ffa018ca:	38 30       	R7 = R0;
ffa018cc:	ff e3 c6 ff 	CALL 0xffa01858 <_sprintf_hex>;
ffa018d0:	29 91       	R1 = [P5];
ffa018d2:	41 50       	R1 = R1 + R0;
ffa018d4:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa018d8:	29 93 00 00 
ffa018dc:	01 e8 00 00 	UNLINK;
ffa018e0:	07 30       	R0 = R7;
ffa018e2:	bd 05       	(R7:7, P5:5) = [SP++];
ffa018e4:	10 00       	RTS;
	...

ffa018e8 <_atoi>:
ffa018e8:	08 32       	P1 = R0;
ffa018ea:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa018ec:	f5 05       	[--SP] = (R7:6, P5:5);
ffa018ee:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa018f2:	48 99       	R0 = B[P1] (X);
ffa018f4:	10 08       	CC = R0 == R2;
ffa018f6:	25 18       	IF CC JUMP 0xffa01940 <_atoi+0x58>;
ffa018f8:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa018fa:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa018fc:	41 32       	P0 = P1;
ffa018fe:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01900:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa01902:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa01904:	12 20       	JUMP.S 0xffa01928 <_atoi+0x40>;
ffa01906:	8b 08       	CC = R3 < R1;
ffa01908:	16 10       	IF !CC JUMP 0xffa01934 <_atoi+0x4c>;
ffa0190a:	10 43       	R0 = R2.B (X);
ffa0190c:	28 32       	P5 = R0;
ffa0190e:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa01910:	40 99       	R0 = B[P0] (X);
ffa01912:	80 66       	R0 += -0x30;		/* (-48) */
ffa01914:	40 43       	R0 = R0.B (Z);
ffa01916:	aa 5a       	P2 = P2 + P5;
ffa01918:	10 0a       	CC = R0 <= R2 (IU);
ffa0191a:	82 6e       	P2 += -0x30;		/* (-48) */
ffa0191c:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0191e:	03 14       	IF !CC JUMP 0xffa01924 <_atoi+0x3c> (BP);
ffa01920:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa01922:	92 5a       	P2 = P2 << 0x1;
ffa01924:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01926:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01928:	4a 99       	R2 = B[P1] (X);
ffa0192a:	02 30       	R0 = R2;
ffa0192c:	80 66       	R0 += -0x30;		/* (-48) */
ffa0192e:	40 43       	R0 = R0.B (Z);
ffa01930:	30 0a       	CC = R0 <= R6 (IU);
ffa01932:	ea 1f       	IF CC JUMP 0xffa01906 <_atoi+0x1e> (BP);
ffa01934:	42 30       	R0 = P2;
ffa01936:	f8 40       	R0 *= R7;
ffa01938:	01 e8 00 00 	UNLINK;
ffa0193c:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0193e:	10 00       	RTS;
ffa01940:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01942:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01944:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01946:	db 2f       	JUMP.S 0xffa018fc <_atoi+0x14>;

ffa01948 <_udelay>:
ffa01948:	00 0d       	CC = R0 <= 0x0;
ffa0194a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0194e:	0b 18       	IF CC JUMP 0xffa01964 <_udelay+0x1c>;
ffa01950:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01952:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa01956:	b2 e0 03 20 	LSETUP(0xffa0195a <_udelay+0x12>, 0xffa0195c <_udelay+0x14>) LC1 = P2;
ffa0195a:	00 00       	NOP;
ffa0195c:	00 00       	NOP;
ffa0195e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01960:	08 08       	CC = R0 == R1;
ffa01962:	f8 17       	IF !CC JUMP 0xffa01952 <_udelay+0xa> (BP);
ffa01964:	01 e8 00 00 	UNLINK;
ffa01968:	10 00       	RTS;
	...

ffa0196c <_bfin_EMAC_send_check>:
ffa0196c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa01970:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01974:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01978:	50 95       	R0 = W[P2] (X);
ffa0197a:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa0197c:	00 02       	R0 = CC;
ffa0197e:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa01980:	01 e8 00 00 	UNLINK;
ffa01984:	10 00       	RTS;
	...

ffa01988 <_FormatIPAddress>:
ffa01988:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0198c:	18 30       	R3 = R0;
ffa0198e:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa01992:	40 4f       	R0 <<= 0x8;
ffa01994:	52 43       	R2 = R2.B (Z);
ffa01996:	10 56       	R0 = R0 | R2;
ffa01998:	40 4f       	R0 <<= 0x8;
ffa0199a:	49 43       	R1 = R1.B (Z);
ffa0199c:	08 56       	R0 = R0 | R1;
ffa0199e:	40 4f       	R0 <<= 0x8;
ffa019a0:	5b 43       	R3 = R3.B (Z);
ffa019a2:	18 56       	R0 = R0 | R3;
ffa019a4:	01 e8 00 00 	UNLINK;
ffa019a8:	10 00       	RTS;
	...

ffa019ac <_bfin_EMAC_halt>:
ffa019ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa019b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa019b2:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa019b6:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa019ba:	10 93       	[P2] = R0;
ffa019bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa019c0:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa019c4:	10 97       	W[P2] = R0;
ffa019c6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa019ca:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa019ce:	10 97       	W[P2] = R0;
ffa019d0:	01 e8 00 00 	UNLINK;
ffa019d4:	10 00       	RTS;
	...

ffa019d8 <_PollMdcDone>:
ffa019d8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa019dc:	02 20       	JUMP.S 0xffa019e0 <_PollMdcDone+0x8>;
ffa019de:	00 00       	NOP;
ffa019e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa019e4:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa019e8:	10 91       	R0 = [P2];
ffa019ea:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa019ec:	f9 17       	IF !CC JUMP 0xffa019de <_PollMdcDone+0x6> (BP);
ffa019ee:	01 e8 00 00 	UNLINK;
ffa019f2:	10 00       	RTS;

ffa019f4 <_WrPHYReg>:
ffa019f4:	68 05       	[--SP] = (R7:5);
ffa019f6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa019fa:	28 30       	R5 = R0;
ffa019fc:	31 30       	R6 = R1;
ffa019fe:	3a 30       	R7 = R2;
ffa01a00:	ff e3 ec ff 	CALL 0xffa019d8 <_PollMdcDone>;
ffa01a04:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01a06:	b0 55       	R6 = R0 & R6;
ffa01a08:	28 54       	R0 = R0 & R5;
ffa01a0a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa01a0e:	58 4f       	R0 <<= 0xb;
ffa01a10:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa01a12:	ff 42       	R7 = R7.L (Z);
ffa01a14:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01a18:	36 4f       	R6 <<= 0x6;
ffa01a1a:	08 56       	R0 = R0 | R1;
ffa01a1c:	17 93       	[P2] = R7;
ffa01a1e:	86 57       	R6 = R6 | R0;
ffa01a20:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa01a22:	16 93       	[P2] = R6;
ffa01a24:	01 e8 00 00 	UNLINK;
ffa01a28:	28 05       	(R7:5) = [SP++];
ffa01a2a:	10 00       	RTS;

ffa01a2c <_RdPHYReg>:
ffa01a2c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01a2e:	29 32       	P5 = R1;
ffa01a30:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01a34:	38 30       	R7 = R0;
ffa01a36:	ff e3 d1 ff 	CALL 0xffa019d8 <_PollMdcDone>;
ffa01a3a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa01a3e:	45 30       	R0 = P5;
ffa01a40:	c0 42       	R0 = R0.L (Z);
ffa01a42:	28 32       	P5 = R0;
ffa01a44:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01a46:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01a4a:	55 30       	R2 = P5;
ffa01a4c:	42 54       	R1 = R2 & R0;
ffa01a4e:	38 54       	R0 = R0 & R7;
ffa01a50:	58 4f       	R0 <<= 0xb;
ffa01a52:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa01a54:	31 4f       	R1 <<= 0x6;
ffa01a56:	41 56       	R1 = R1 | R0;
ffa01a58:	11 93       	[P2] = R1;
ffa01a5a:	ff e3 bf ff 	CALL 0xffa019d8 <_PollMdcDone>;
ffa01a5e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa01a62:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01a66:	10 91       	R0 = [P2];
ffa01a68:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa01a6c:	0a e1 68 0e 	P2.L = 0xe68;		/* (3688)	P2=0xff900e68 <_PHYregs> */
ffa01a70:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa01a72:	10 97       	W[P2] = R0;
ffa01a74:	01 e8 00 00 	UNLINK;
ffa01a78:	c0 42       	R0 = R0.L (Z);
ffa01a7a:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01a7c:	10 00       	RTS;
	...

ffa01a80 <_SoftResetPHY>:
ffa01a80:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a82:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a84:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa01a88:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01a8c:	ff e3 b4 ff 	CALL 0xffa019f4 <_WrPHYReg>;
ffa01a90:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a92:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a94:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01a96:	ff e3 af ff 	CALL 0xffa019f4 <_WrPHYReg>;
ffa01a9a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a9c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a9e:	ff e3 c7 ff 	CALL 0xffa01a2c <_RdPHYReg>;
ffa01aa2:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa01aa4:	fb 1f       	IF CC JUMP 0xffa01a9a <_SoftResetPHY+0x1a> (BP);
ffa01aa6:	01 e8 00 00 	UNLINK;
ffa01aaa:	10 00       	RTS;

ffa01aac <_NetCksum>:
ffa01aac:	01 0d       	CC = R1 <= 0x0;
ffa01aae:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01ab2:	10 18       	IF CC JUMP 0xffa01ad2 <_NetCksum+0x26>;
ffa01ab4:	10 32       	P2 = R0;
ffa01ab6:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01ab8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01aba:	0a 64       	R2 += 0x1;		/* (  1) */
ffa01abc:	10 94       	R0 = W[P2++] (Z);
ffa01abe:	0a 08       	CC = R2 == R1;
ffa01ac0:	c3 50       	R3 = R3 + R0;
ffa01ac2:	fc 17       	IF !CC JUMP 0xffa01aba <_NetCksum+0xe> (BP);
ffa01ac4:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa01ac8:	03 50       	R0 = R3 + R0;
ffa01aca:	c0 42       	R0 = R0.L (Z);
ffa01acc:	01 e8 00 00 	UNLINK;
ffa01ad0:	10 00       	RTS;
ffa01ad2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ad4:	01 e8 00 00 	UNLINK;
ffa01ad8:	10 00       	RTS;
	...

ffa01adc <_htons>:
ffa01adc:	08 30       	R1 = R0;
ffa01ade:	c0 42       	R0 = R0.L (Z);
ffa01ae0:	40 4e       	R0 >>= 0x8;
ffa01ae2:	41 4f       	R1 <<= 0x8;
ffa01ae4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01ae8:	08 56       	R0 = R0 | R1;
ffa01aea:	c0 42       	R0 = R0.L (Z);
ffa01aec:	01 e8 00 00 	UNLINK;
ffa01af0:	10 00       	RTS;
	...

ffa01af4 <_htonl>:
ffa01af4:	10 30       	R2 = R0;
ffa01af6:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa01afa:	40 43       	R0 = R0.B (Z);
ffa01afc:	49 43       	R1 = R1.B (Z);
ffa01afe:	40 4f       	R0 <<= 0x8;
ffa01b00:	08 56       	R0 = R0 | R1;
ffa01b02:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa01b06:	40 4f       	R0 <<= 0x8;
ffa01b08:	49 43       	R1 = R1.B (Z);
ffa01b0a:	08 56       	R0 = R0 | R1;
ffa01b0c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01b10:	40 4f       	R0 <<= 0x8;
ffa01b12:	c2 4e       	R2 >>= 0x18;
ffa01b14:	10 56       	R0 = R0 | R2;
ffa01b16:	01 e8 00 00 	UNLINK;
ffa01b1a:	10 00       	RTS;

ffa01b1c <_pack4chars>:
ffa01b1c:	08 32       	P1 = R0;
ffa01b1e:	10 32       	P2 = R0;
ffa01b20:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01b24:	01 e8 00 00 	UNLINK;
ffa01b28:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa01b2c:	10 98       	R0 = B[P2++] (Z);
ffa01b2e:	41 4f       	R1 <<= 0x8;
ffa01b30:	08 50       	R0 = R0 + R1;
ffa01b32:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa01b36:	81 4f       	R1 <<= 0x10;
ffa01b38:	08 50       	R0 = R0 + R1;
ffa01b3a:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa01b3e:	c1 4f       	R1 <<= 0x18;
ffa01b40:	08 50       	R0 = R0 + R1;
ffa01b42:	10 00       	RTS;

ffa01b44 <_ip_header_setup>:
ffa01b44:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01b46:	28 32       	P5 = R0;
ffa01b48:	21 32       	P4 = R1;
ffa01b4a:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01b4e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b52:	32 30       	R6 = R2;
ffa01b54:	28 9b       	B[P5] = R0;
ffa01b56:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b58:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa01b5c:	27 91       	R7 = [P4];
ffa01b5e:	f8 42       	R0 = R7.L (Z);
ffa01b60:	ff e3 be ff 	CALL 0xffa01adc <_htons>;
ffa01b64:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e68 <_PHYregs> */
ffa01b68:	0a e1 b2 0e 	P2.L = 0xeb2;		/* (3762)	P2=0xff900eb2 <_NetIPID> */
ffa01b6c:	68 b4       	W[P5 + 0x2] = R0;
ffa01b6e:	10 95       	R0 = W[P2] (Z);
ffa01b70:	08 30       	R1 = R0;
ffa01b72:	09 64       	R1 += 0x1;		/* (  1) */
ffa01b74:	67 67       	R7 += -0x14;		/* (-20) */
ffa01b76:	11 97       	W[P2] = R1;
ffa01b78:	27 93       	[P4] = R7;
ffa01b7a:	ff e3 b1 ff 	CALL 0xffa01adc <_htons>;
ffa01b7e:	a8 b4       	W[P5 + 0x4] = R0;
ffa01b80:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01b84:	ff e3 ac ff 	CALL 0xffa01adc <_htons>;
ffa01b88:	e8 b4       	W[P5 + 0x6] = R0;
ffa01b8a:	82 c6 46 01 	R0 = R6 >>> 0x18;
ffa01b8e:	c0 4f       	R0 <<= 0x18;
ffa01b90:	00 0c       	CC = R0 == 0x0;
ffa01b92:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01b94:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01b98:	01 07       	IF CC R0 = R1;
ffa01b9a:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01b9e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb2 <_NetIPID> */
ffa01ba2:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa01ba6:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01baa:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetOurIP> */
ffa01bae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01bb0:	68 b5       	W[P5 + 0xa] = R0;
ffa01bb2:	10 91       	R0 = [P2];
ffa01bb4:	e8 b0       	[P5 + 0xc] = R0;
ffa01bb6:	2e b1       	[P5 + 0x10] = R6;
ffa01bb8:	45 30       	R0 = P5;
ffa01bba:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01bbc:	ff e3 78 ff 	CALL 0xffa01aac <_NetCksum>;
ffa01bc0:	c0 43       	R0 =~ R0;
ffa01bc2:	68 b5       	W[P5 + 0xa] = R0;
ffa01bc4:	01 e8 00 00 	UNLINK;
ffa01bc8:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01bca:	45 30       	R0 = P5;
ffa01bcc:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01bce:	10 00       	RTS;

ffa01bd0 <_ip_header_checksum>:
ffa01bd0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01bd4:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa01bd6:	ff e3 6b ff 	CALL 0xffa01aac <_NetCksum>;
ffa01bda:	08 02       	CC = R0;
ffa01bdc:	00 02       	R0 = CC;
ffa01bde:	01 e8 00 00 	UNLINK;
ffa01be2:	10 00       	RTS;

ffa01be4 <_icmp_header_setup>:
ffa01be4:	00 32       	P0 = R0;
ffa01be6:	c5 04       	[--SP] = (P5:5);
ffa01be8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01bea:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01bee:	29 32       	P5 = R1;
ffa01bf0:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa01bf4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01bf6:	40 b4       	W[P0 + 0x2] = R0;
ffa01bf8:	38 ab       	R0 = W[FP + 0x18] (X);
ffa01bfa:	80 b4       	W[P0 + 0x4] = R0;
ffa01bfc:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa01bfe:	02 9b       	B[P0] = R2;
ffa01c00:	c0 b4       	W[P0 + 0x6] = R0;
ffa01c02:	48 32       	P1 = P0;
ffa01c04:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01c06:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa01c08:	b2 e0 03 20 	LSETUP(0xffa01c0c <_icmp_header_setup+0x28>, 0xffa01c0e <_icmp_header_setup+0x2a>) LC1 = P2;
ffa01c0c:	08 94       	R0 = W[P1++] (Z);
ffa01c0e:	41 50       	R1 = R1 + R0;
ffa01c10:	c8 42       	R0 = R1.L (Z);
ffa01c12:	81 4e       	R1 >>= 0x10;
ffa01c14:	08 50       	R0 = R0 + R1;
ffa01c16:	c0 43       	R0 =~ R0;
ffa01c18:	40 b4       	W[P0 + 0x2] = R0;
ffa01c1a:	28 91       	R0 = [P5];
ffa01c1c:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa01c1e:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01c20:	01 e8 00 00 	UNLINK;
ffa01c24:	28 93       	[P5] = R0;
ffa01c26:	40 30       	R0 = P0;
ffa01c28:	85 04       	(P5:5) = [SP++];
ffa01c2a:	10 00       	RTS;

ffa01c2c <_udp_header_setup>:
ffa01c2c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01c2e:	28 32       	P5 = R0;
ffa01c30:	21 32       	P4 = R1;
ffa01c32:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01c36:	d0 42       	R0 = R2.L (Z);
ffa01c38:	ff e3 52 ff 	CALL 0xffa01adc <_htons>;
ffa01c3c:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa01c40:	28 97       	W[P5] = R0;
ffa01c42:	07 30       	R0 = R7;
ffa01c44:	ff e3 4c ff 	CALL 0xffa01adc <_htons>;
ffa01c48:	27 91       	R7 = [P4];
ffa01c4a:	68 b4       	W[P5 + 0x2] = R0;
ffa01c4c:	f8 42       	R0 = R7.L (Z);
ffa01c4e:	ff e3 47 ff 	CALL 0xffa01adc <_htons>;
ffa01c52:	a8 b4       	W[P5 + 0x4] = R0;
ffa01c54:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c56:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa01c58:	e8 b4       	W[P5 + 0x6] = R0;
ffa01c5a:	01 e8 00 00 	UNLINK;
ffa01c5e:	45 6c       	P5 += 0x8;		/* (  8) */
ffa01c60:	45 30       	R0 = P5;
ffa01c62:	27 93       	[P4] = R7;
ffa01c64:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01c66:	10 00       	RTS;

ffa01c68 <_tcp_header_setup>:
ffa01c68:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01c6a:	28 32       	P5 = R0;
ffa01c6c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01c70:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01c74:	21 32       	P4 = R1;
ffa01c76:	3a 30       	R7 = R2;
ffa01c78:	ff e3 32 ff 	CALL 0xffa01adc <_htons>;
ffa01c7c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa01c80:	0a e1 d4 0f 	P2.L = 0xfd4;		/* (4052)	P2=0xff900fd4 <_TcpClientPort> */
ffa01c84:	28 97       	W[P5] = R0;
ffa01c86:	50 95       	R0 = W[P2] (X);
ffa01c88:	68 b4       	W[P5 + 0x2] = R0;
ffa01c8a:	38 a2       	R0 = [FP + 0x20];
ffa01c8c:	ff e3 34 ff 	CALL 0xffa01af4 <_htonl>;
ffa01c90:	68 b0       	[P5 + 0x4] = R0;
ffa01c92:	78 a2       	R0 = [FP + 0x24];
ffa01c94:	ff e3 30 ff 	CALL 0xffa01af4 <_htonl>;
ffa01c98:	a8 b0       	[P5 + 0x8] = R0;
ffa01c9a:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01c9e:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01ca2:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa01ca6:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa01caa:	ff e3 19 ff 	CALL 0xffa01adc <_htons>;
ffa01cae:	e8 b5       	W[P5 + 0xe] = R0;
ffa01cb0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01cb2:	28 b6       	W[P5 + 0x10] = R0;
ffa01cb4:	68 b6       	W[P5 + 0x12] = R0;
ffa01cb6:	20 91       	R0 = [P4];
ffa01cb8:	60 67       	R0 += -0x14;		/* (-20) */
ffa01cba:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01cbc:	01 e8 00 00 	UNLINK;
ffa01cc0:	20 93       	[P4] = R0;
ffa01cc2:	45 30       	R0 = P5;
ffa01cc4:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01cc6:	10 00       	RTS;

ffa01cc8 <_bfin_EMAC_send_nocopy>:
ffa01cc8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00fd4(-4190252) */
ffa01ccc:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01cce:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01cd2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01cd6:	10 97       	W[P2] = R0;
ffa01cd8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01cdc:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01ce0:	50 95       	R0 = W[P2] (X);
ffa01ce2:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01ce4:	59 10       	IF !CC JUMP 0xffa01d96 <_bfin_EMAC_send_nocopy+0xce>;
ffa01ce6:	00 00       	NOP;
ffa01ce8:	00 00       	NOP;
ffa01cea:	00 00       	NOP;
ffa01cec:	50 95       	R0 = W[P2] (X);
ffa01cee:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01cf0:	16 18       	IF CC JUMP 0xffa01d1c <_bfin_EMAC_send_nocopy+0x54>;
ffa01cf2:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0008 */
ffa01cf6:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01cfa:	b2 e0 09 10 	LSETUP(0xffa01cfe <_bfin_EMAC_send_nocopy+0x36>, 0xffa01d0c <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa01cfe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01d02:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01d06:	50 95       	R0 = W[P2] (X);
ffa01d08:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01d0a:	09 18       	IF CC JUMP 0xffa01d1c <_bfin_EMAC_send_nocopy+0x54>;
ffa01d0c:	00 00       	NOP;
ffa01d0e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa01d12:	00 e1 08 01 	R0.L = 0x108;		/* (264)	R0=0xff900108(-7339768) */
ffa01d16:	ff e3 83 fa 	CALL 0xffa0121c <_printf_str>;
ffa01d1a:	30 20       	JUMP.S 0xffa01d7a <_bfin_EMAC_send_nocopy+0xb2>;
ffa01d1c:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa01d20:	08 e1 b0 0e 	P0.L = 0xeb0;		/* (3760)	P0=0xff900eb0 <_txIdx> */
ffa01d24:	00 95       	R0 = W[P0] (Z);
ffa01d26:	10 32       	P2 = R0;
ffa01d28:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01d2c:	09 e1 b4 0e 	P1.L = 0xeb4;		/* (3764)	P1=0xff900eb4 <_txbuf> */
ffa01d30:	42 95       	R2 = W[P0] (X);
ffa01d32:	d1 42       	R1 = R2.L (Z);
ffa01d34:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01d36:	52 91       	P2 = [P2];
ffa01d38:	11 0d       	CC = R1 <= 0x2;
ffa01d3a:	90 a1       	R0 = [P2 + 0x18];
ffa01d3c:	50 b0       	[P2 + 0x4] = R0;
ffa01d3e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d40:	90 b2       	[P2 + 0x28] = R0;
ffa01d42:	11 32       	P2 = R1;
ffa01d44:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa01d46:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01d4a:	08 91       	R0 = [P1];
ffa01d4c:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01d50:	10 93       	[P2] = R0;
ffa01d52:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01d56:	0a e1 fa 04 	P2.L = 0x4fa;		/* (1274)	P2=0xff9004fa <_txdmacfg> */
ffa01d5a:	50 95       	R0 = W[P2] (X);
ffa01d5c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004fa(-4193030) */
ffa01d60:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01d64:	10 97       	W[P2] = R0;
ffa01d66:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01d6a:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01d6e:	10 91       	R0 = [P2];
ffa01d70:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01d72:	10 93       	[P2] = R0;
ffa01d74:	0d 1c       	IF CC JUMP 0xffa01d8e <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa01d76:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d78:	00 97       	W[P0] = R0;
ffa01d7a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01d7e:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01d80:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01d84:	10 97       	W[P2] = R0;
ffa01d86:	01 e8 00 00 	UNLINK;
ffa01d8a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d8c:	10 00       	RTS;
ffa01d8e:	02 30       	R0 = R2;
ffa01d90:	08 64       	R0 += 0x1;		/* (  1) */
ffa01d92:	00 97       	W[P0] = R0;
ffa01d94:	f3 2f       	JUMP.S 0xffa01d7a <_bfin_EMAC_send_nocopy+0xb2>;
ffa01d96:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01d9a:	00 e1 f0 00 	R0.L = 0xf0;		/* (240)	R0=0xff9000f0(-7339792) */
ffa01d9e:	ff e3 3f fa 	CALL 0xffa0121c <_printf_str>;
ffa01da2:	ec 2f       	JUMP.S 0xffa01d7a <_bfin_EMAC_send_nocopy+0xb2>;

ffa01da4 <_DHCP_tx>:
ffa01da4:	e3 05       	[--SP] = (R7:4, P5:3);
ffa01da6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa01daa:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01dae:	0a e1 b0 0e 	P2.L = 0xeb0;		/* (3760)	P2=0xff900eb0 <_txIdx> */
ffa01db2:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa01db6:	10 95 00 00 
ffa01dba:	10 32       	P2 = R0;
ffa01dbc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900eb4 <_txbuf> */
ffa01dc0:	09 e1 b4 0e 	P1.L = 0xeb4;		/* (3764)	P1=0xff900eb4 <_txbuf> */
ffa01dc4:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa01dc8:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01dca:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01dcc:	52 91       	P2 = [P2];
ffa01dce:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa01dd2:	f1 bb 00 00 
ffa01dd6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90000b */
ffa01dda:	0d e1 d8 0e 	P5.L = 0xed8;		/* (3800)	P5=0xff900ed8 <_NetOurMAC> */
ffa01dde:	94 ad       	P4 = [P2 + 0x18];
ffa01de0:	1a 32       	P3 = R2;
ffa01de2:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01de4:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01de6:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa01dea:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa01dee:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa01df2:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa01df6:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa01dfa:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa01dfe:	20 97       	W[P4] = R0;
ffa01e00:	68 99       	R0 = B[P5] (X);
ffa01e02:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa01e06:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01e0a:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa01e0e:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01e12:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa01e16:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01e1a:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa01e1e:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01e22:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa01e26:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01e2a:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa01e2e:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01e32:	ff e3 55 fe 	CALL 0xffa01adc <_htons>;
ffa01e36:	e0 b5       	W[P4 + 0xe] = R0;
ffa01e38:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01e3c:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa01e40:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa01e44:	04 50       	R0 = R4 + R0;
ffa01e46:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa01e4a:	c0 42       	R0 = R0.L (Z);
ffa01e4c:	ff e3 48 fe 	CALL 0xffa01adc <_htons>;
ffa01e50:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb0 <_txIdx> */
ffa01e54:	0a e1 b2 0e 	P2.L = 0xeb2;		/* (3762)	P2=0xff900eb2 <_NetIPID> */
ffa01e58:	60 b6       	W[P4 + 0x12] = R0;
ffa01e5a:	10 95       	R0 = W[P2] (Z);
ffa01e5c:	08 30       	R1 = R0;
ffa01e5e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01e60:	11 97       	W[P2] = R1;
ffa01e62:	ff e3 3d fe 	CALL 0xffa01adc <_htons>;
ffa01e66:	a0 b6       	W[P4 + 0x14] = R0;
ffa01e68:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01e6c:	ff e3 38 fe 	CALL 0xffa01adc <_htons>;
ffa01e70:	e0 b6       	W[P4 + 0x16] = R0;
ffa01e72:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01e74:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa01e78:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa01e7c:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa01e80:	66 b7 00 00 
ffa01e84:	44 30       	R0 = P4;
ffa01e86:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01e88:	e7 b1       	[P4 + 0x1c] = R7;
ffa01e8a:	23 be       	[P4 + 0x20] = P3;
ffa01e8c:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01e8e:	ff e3 0f fe 	CALL 0xffa01aac <_NetCksum>;
ffa01e92:	c0 43       	R0 =~ R0;
ffa01e94:	60 b7       	W[P4 + 0x1a] = R0;
ffa01e96:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa01e9a:	ff e3 21 fe 	CALL 0xffa01adc <_htons>;
ffa01e9e:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa01ea2:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa01ea6:	ff e3 1b fe 	CALL 0xffa01adc <_htons>;
ffa01eaa:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa01eae:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa01eb2:	04 50       	R0 = R4 + R0;
ffa01eb4:	c0 42       	R0 = R0.L (Z);
ffa01eb6:	ff e3 13 fe 	CALL 0xffa01adc <_htons>;
ffa01eba:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa01ebe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01ec0:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa01ec4:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa01ec8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00eb2(-4190542) */
ffa01ecc:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01ece:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa01ed2:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa01ed6:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa01eda:	10 91       	R0 = [P2];
ffa01edc:	20 b3       	[P4 + 0x30] = R0;
ffa01ede:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa01ee2:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa01ee6:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa01eea:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa01eee:	a7 b3       	[P4 + 0x38] = R7;
ffa01ef0:	e7 b3       	[P4 + 0x3c] = R7;
ffa01ef2:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa01ef6:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa01efa:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa01efe:	ff e3 fb fd 	CALL 0xffa01af4 <_htonl>;
ffa01f02:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa01f06:	68 99       	R0 = B[P5] (X);
ffa01f08:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa01f0c:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01f10:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa01f14:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01f18:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa01f1c:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01f20:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa01f24:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01f28:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa01f2c:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01f30:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa01f34:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa01f38:	54 5a       	P1 = P4 + P2;
ffa01f3a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01f3c:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa01f3e:	b2 e0 02 20 	LSETUP(0xffa01f42 <_DHCP_tx+0x19e>, 0xffa01f42 <_DHCP_tx+0x19e>) LC1 = P2;
ffa01f42:	08 9a       	B[P1++] = R0;
ffa01f44:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa01f48:	54 5a       	P1 = P4 + P2;
ffa01f4a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01f4c:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa01f4e:	b2 e0 02 20 	LSETUP(0xffa01f52 <_DHCP_tx+0x1ae>, 0xffa01f52 <_DHCP_tx+0x1ae>) LC1 = P2;
ffa01f52:	08 92       	[P1++] = R0;
ffa01f54:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa01f58:	54 5a       	P1 = P4 + P2;
ffa01f5a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01f5c:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa01f5e:	b2 e0 02 20 	LSETUP(0xffa01f62 <_DHCP_tx+0x1be>, 0xffa01f62 <_DHCP_tx+0x1be>) LC1 = P2;
ffa01f62:	08 92       	[P1++] = R0;
ffa01f64:	44 30       	R0 = P4;
ffa01f66:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa01f6a:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa01f6e:	f0 b9 00 00 
ffa01f72:	14 30       	R2 = R4;
ffa01f74:	ff e3 fc fa 	CALL 0xffa0156c <_memcpy_>;
ffa01f78:	01 e8 00 00 	UNLINK;
ffa01f7c:	a3 05       	(R7:4, P5:3) = [SP++];
ffa01f7e:	ff e2 a5 fe 	JUMP.L 0xffa01cc8 <_bfin_EMAC_send_nocopy>;
	...

ffa01f84 <_DHCP_tx_discover>:
ffa01f84:	c5 04       	[--SP] = (P5:5);
ffa01f86:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ed8 <_NetOurMAC> */
ffa01f8a:	0d e1 ac 0e 	P5.L = 0xeac;		/* (3756)	P5=0xff900eac <_NetDHCPserv> */
ffa01f8e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01f90:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01f94:	28 93       	[P5] = R0;
ffa01f96:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa01f98:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa01f9c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01f9e:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa01fa2:	b8 e6 fe ff 	B[FP + -0x2] = R0;
ffa01fa6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01fa8:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa01fac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa01fb0:	00 e1 20 01 	R0.L = 0x120;		/* (288)	R0=0xff900120(-7339744) */
ffa01fb4:	ff e3 34 f9 	CALL 0xffa0121c <_printf_str>;
ffa01fb8:	4f 30       	R1 = FP;
ffa01fba:	2a 91       	R2 = [P5];
ffa01fbc:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa01fbe:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa01fc0:	ff e3 f2 fe 	CALL 0xffa01da4 <_DHCP_tx>;
ffa01fc4:	01 e8 00 00 	UNLINK;
ffa01fc8:	85 04       	(P5:5) = [SP++];
ffa01fca:	10 00       	RTS;

ffa01fcc <_DHCP_parse>:
ffa01fcc:	f5 05       	[--SP] = (R7:6, P5:5);
ffa01fce:	09 0d       	CC = R1 <= 0x1;
ffa01fd0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01fd4:	10 32       	P2 = R0;
ffa01fd6:	33 18       	IF CC JUMP 0xffa0203c <_DHCP_parse+0x70>;
ffa01fd8:	00 00       	NOP;
ffa01fda:	31 30       	R6 = R1;
ffa01fdc:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01fde:	11 98       	R1 = B[P2++] (Z);
ffa01fe0:	01 0c       	CC = R1 == 0x0;
ffa01fe2:	2b 1c       	IF CC JUMP 0xffa02038 <_DHCP_parse+0x6c> (BP);
ffa01fe4:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa01fe8:	01 08       	CC = R1 == R0;
ffa01fea:	57 99       	R7 = B[P2] (X);
ffa01fec:	28 18       	IF CC JUMP 0xffa0203c <_DHCP_parse+0x70>;
ffa01fee:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa01ff0:	6a 32       	P5 = P2;
ffa01ff2:	01 0a       	CC = R1 <= R0 (IU);
ffa01ff4:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa01ff6:	09 14       	IF !CC JUMP 0xffa02008 <_DHCP_parse+0x3c> (BP);
ffa01ff8:	09 32       	P1 = R1;
ffa01ffa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900020 */
ffa01ffe:	0a e1 08 04 	P2.L = 0x408;		/* (1032)	P2=0xff900408 */
ffa02002:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa02004:	52 91       	P2 = [P2];
ffa02006:	52 00       	JUMP (P2);
ffa02008:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa0200c:	00 e1 dc 01 	R0.L = 0x1dc;		/* (476)	R0=0xff9001dc(-7339556) */
ffa02010:	ff e3 c8 f9 	CALL 0xffa013a0 <_printf_int>;
ffa02014:	7f 43       	R7 = R7.B (Z);
ffa02016:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001dc(-7339556) */
ffa0201a:	00 e1 f0 01 	R0.L = 0x1f0;		/* (496)	R0=0xff9001f0(-7339536) */
ffa0201e:	0f 30       	R1 = R7;
ffa02020:	ff e3 c0 f9 	CALL 0xffa013a0 <_printf_int>;
ffa02024:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001f0(-7339536) */
ffa02028:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa0202c:	ff e3 f8 f8 	CALL 0xffa0121c <_printf_str>;
ffa02030:	0f 32       	P1 = R7;
ffa02032:	be 53       	R6 = R6 - R7;
ffa02034:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa02036:	8d 5a       	P2 = P5 + P1;
ffa02038:	0e 0d       	CC = R6 <= 0x1;
ffa0203a:	d1 17       	IF !CC JUMP 0xffa01fdc <_DHCP_parse+0x10> (BP);
ffa0203c:	01 e8 00 00 	UNLINK;
ffa02040:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02042:	10 00       	RTS;
ffa02044:	45 30       	R0 = P5;
ffa02046:	ff e3 6b fd 	CALL 0xffa01b1c <_pack4chars>;
ffa0204a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900408 */
ffa0204e:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetSubnetMask> */
ffa02052:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa02056:	10 93 00 00 
ffa0205a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900798(-7338088) */
ffa0205e:	00 e1 34 01 	R0.L = 0x134;		/* (308)	R0=0xff900134(-7339724) */
ffa02062:	ff e3 41 fa 	CALL 0xffa014e4 <_printf_ip>;
ffa02066:	7f 43       	R7 = R7.B (Z);
ffa02068:	de 2f       	JUMP.S 0xffa02024 <_DHCP_parse+0x58>;
ffa0206a:	45 30       	R0 = P5;
ffa0206c:	ff e3 58 fd 	CALL 0xffa01b1c <_pack4chars>;
ffa02070:	08 30       	R1 = R0;
ffa02072:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900134(-7339724) */
ffa02076:	00 e1 44 01 	R0.L = 0x144;		/* (324)	R0=0xff900144(-7339708) */
ffa0207a:	ff e3 35 fa 	CALL 0xffa014e4 <_printf_ip>;
ffa0207e:	7f 43       	R7 = R7.B (Z);
ffa02080:	d2 2f       	JUMP.S 0xffa02024 <_DHCP_parse+0x58>;
ffa02082:	45 30       	R0 = P5;
ffa02084:	ff e3 4c fd 	CALL 0xffa01b1c <_pack4chars>;
ffa02088:	08 30       	R1 = R0;
ffa0208a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900144(-7339708) */
ffa0208e:	00 e1 54 01 	R0.L = 0x154;		/* (340)	R0=0xff900154(-7339692) */
ffa02092:	ff e3 29 fa 	CALL 0xffa014e4 <_printf_ip>;
ffa02096:	7f 43       	R7 = R7.B (Z);
ffa02098:	c6 2f       	JUMP.S 0xffa02024 <_DHCP_parse+0x58>;
ffa0209a:	45 30       	R0 = P5;
ffa0209c:	ff e3 40 fd 	CALL 0xffa01b1c <_pack4chars>;
ffa020a0:	08 30       	R1 = R0;
ffa020a2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900154(-7339692) */
ffa020a6:	00 e1 64 01 	R0.L = 0x164;		/* (356)	R0=0xff900164(-7339676) */
ffa020aa:	ff e3 1d fa 	CALL 0xffa014e4 <_printf_ip>;
ffa020ae:	7f 43       	R7 = R7.B (Z);
ffa020b0:	ba 2f       	JUMP.S 0xffa02024 <_DHCP_parse+0x58>;
ffa020b2:	45 30       	R0 = P5;
ffa020b4:	ff e3 34 fd 	CALL 0xffa01b1c <_pack4chars>;
ffa020b8:	ff e3 1e fd 	CALL 0xffa01af4 <_htonl>;
ffa020bc:	08 30       	R1 = R0;
ffa020be:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900164(-7339676) */
ffa020c2:	00 e1 74 01 	R0.L = 0x174;		/* (372)	R0=0xff900174(-7339660) */
ffa020c6:	ff e3 6d f9 	CALL 0xffa013a0 <_printf_int>;
ffa020ca:	7f 43       	R7 = R7.B (Z);
ffa020cc:	ac 2f       	JUMP.S 0xffa02024 <_DHCP_parse+0x58>;
ffa020ce:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900174(-7339660) */
ffa020d2:	29 99       	R1 = B[P5] (Z);
ffa020d4:	00 e1 88 01 	R0.L = 0x188;		/* (392)	R0=0xff900188(-7339640) */
ffa020d8:	ff e3 64 f9 	CALL 0xffa013a0 <_printf_int>;
ffa020dc:	7f 43       	R7 = R7.B (Z);
ffa020de:	a3 2f       	JUMP.S 0xffa02024 <_DHCP_parse+0x58>;
ffa020e0:	45 30       	R0 = P5;
ffa020e2:	ff e3 1d fd 	CALL 0xffa01b1c <_pack4chars>;
ffa020e6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetSubnetMask> */
ffa020ea:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_NetDHCPserv> */
ffa020ee:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa020f2:	10 93 00 00 
ffa020f6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900188(-7339640) */
ffa020fa:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa020fe:	ff e3 f3 f9 	CALL 0xffa014e4 <_printf_ip>;
ffa02102:	7f 43       	R7 = R7.B (Z);
ffa02104:	90 2f       	JUMP.S 0xffa02024 <_DHCP_parse+0x58>;
ffa02106:	45 30       	R0 = P5;
ffa02108:	ff e3 0a fd 	CALL 0xffa01b1c <_pack4chars>;
ffa0210c:	ff e3 f4 fc 	CALL 0xffa01af4 <_htonl>;
ffa02110:	08 30       	R1 = R0;
ffa02112:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90019c(-7339620) */
ffa02116:	00 e1 b0 01 	R0.L = 0x1b0;		/* (432)	R0=0xff9001b0(-7339600) */
ffa0211a:	ff e3 43 f9 	CALL 0xffa013a0 <_printf_int>;
ffa0211e:	7f 43       	R7 = R7.B (Z);
ffa02120:	82 2f       	JUMP.S 0xffa02024 <_DHCP_parse+0x58>;
ffa02122:	45 30       	R0 = P5;
ffa02124:	ff e3 fc fc 	CALL 0xffa01b1c <_pack4chars>;
ffa02128:	ff e3 e6 fc 	CALL 0xffa01af4 <_htonl>;
ffa0212c:	08 30       	R1 = R0;
ffa0212e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001b0(-7339600) */
ffa02132:	00 e1 c4 01 	R0.L = 0x1c4;		/* (452)	R0=0xff9001c4(-7339580) */
ffa02136:	ff e3 35 f9 	CALL 0xffa013a0 <_printf_int>;
ffa0213a:	7f 43       	R7 = R7.B (Z);
ffa0213c:	74 2f       	JUMP.S 0xffa02024 <_DHCP_parse+0x58>;
	...

ffa02140 <_bfin_EMAC_send>:
ffa02140:	c4 04       	[--SP] = (P5:4);
ffa02142:	01 0d       	CC = R1 <= 0x0;
ffa02144:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02148:	18 30       	R3 = R0;
ffa0214a:	11 30       	R2 = R1;
ffa0214c:	90 18       	IF CC JUMP 0xffa0226c <_bfin_EMAC_send+0x12c>;
ffa0214e:	00 00       	NOP;
ffa02150:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00eac(-4190548) */
ffa02154:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa02158:	50 95       	R0 = W[P2] (X);
ffa0215a:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa0215c:	74 10       	IF !CC JUMP 0xffa02244 <_bfin_EMAC_send+0x104>;
ffa0215e:	00 00       	NOP;
ffa02160:	00 00       	NOP;
ffa02162:	00 00       	NOP;
ffa02164:	50 95       	R0 = W[P2] (X);
ffa02166:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa02168:	17 18       	IF CC JUMP 0xffa02196 <_bfin_EMAC_send+0x56>;
ffa0216a:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0eb4 */
ffa0216e:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa02172:	b2 e0 09 10 	LSETUP(0xffa02176 <_bfin_EMAC_send+0x36>, 0xffa02184 <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa02176:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa0217a:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa0217e:	50 95       	R0 = W[P2] (X);
ffa02180:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa02182:	0a 18       	IF CC JUMP 0xffa02196 <_bfin_EMAC_send+0x56>;
ffa02184:	00 00       	NOP;
ffa02186:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001c4(-7339580) */
ffa0218a:	00 e1 14 02 	R0.L = 0x214;		/* (532)	R0=0xff900214(-7339500) */
ffa0218e:	ff e3 47 f8 	CALL 0xffa0121c <_printf_str>;
ffa02192:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02194:	53 20       	JUMP.S 0xffa0223a <_bfin_EMAC_send+0xfa>;
ffa02196:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900000 <_l1_data_a> */
ffa0219a:	0c e1 b0 0e 	P4.L = 0xeb0;		/* (3760)	P4=0xff900eb0 <_txIdx> */
ffa0219e:	20 95       	R0 = W[P4] (Z);
ffa021a0:	10 32       	P2 = R0;
ffa021a2:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900eac <_NetDHCPserv> */
ffa021a6:	0d e1 b4 0e 	P5.L = 0xeb4;		/* (3764)	P5=0xff900eb4 <_txbuf> */
ffa021aa:	0b 30       	R1 = R3;
ffa021ac:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa021ae:	52 91       	P2 = [P2];
ffa021b0:	92 ad       	P2 = [P2 + 0x18];
ffa021b2:	12 96       	W[P2++] = R2;
ffa021b4:	42 30       	R0 = P2;
ffa021b6:	ff e3 db f9 	CALL 0xffa0156c <_memcpy_>;
ffa021ba:	20 95       	R0 = W[P4] (Z);
ffa021bc:	10 32       	P2 = R0;
ffa021be:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa021c0:	51 91       	P1 = [P2];
ffa021c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa021c6:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa021ca:	51 93       	[P2] = P1;
ffa021cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa021d0:	88 a1       	R0 = [P1 + 0x18];
ffa021d2:	0a e1 fa 04 	P2.L = 0x4fa;		/* (1274)	P2=0xff9004fa <_txdmacfg> */
ffa021d6:	48 b0       	[P1 + 0x4] = R0;
ffa021d8:	50 95       	R0 = W[P2] (X);
ffa021da:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004fa(-4193030) */
ffa021de:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa021e2:	10 97       	W[P2] = R0;
ffa021e4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa021e8:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa021ec:	10 91       	R0 = [P2];
ffa021ee:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa021f0:	10 93       	[P2] = R0;
ffa021f2:	88 a2       	R0 = [P1 + 0x28];
ffa021f4:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa021f6:	13 10       	IF !CC JUMP 0xffa0221c <_bfin_EMAC_send+0xdc>;
ffa021f8:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa021fc:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa02200:	b2 e0 05 20 	LSETUP(0xffa02204 <_bfin_EMAC_send+0xc4>, 0xffa0220a <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa02204:	88 a2       	R0 = [P1 + 0x28];
ffa02206:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02208:	0a 10       	IF !CC JUMP 0xffa0221c <_bfin_EMAC_send+0xdc>;
ffa0220a:	00 00       	NOP;
ffa0220c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900214(-7339500) */
ffa02210:	00 e1 2c 02 	R0.L = 0x22c;		/* (556)	R0=0xff90022c(-7339476) */
ffa02214:	ff e3 04 f8 	CALL 0xffa0121c <_printf_str>;
ffa02218:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0221a:	10 20       	JUMP.S 0xffa0223a <_bfin_EMAC_send+0xfa>;
ffa0221c:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa02220:	61 95 00 00 
ffa02224:	8a a2       	R2 = [P1 + 0x28];
ffa02226:	88 b2       	[P1 + 0x28] = R0;
ffa02228:	c8 42       	R0 = R1.L (Z);
ffa0222a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa0222e:	10 0d       	CC = R0 <= 0x2;
ffa02230:	0a e1 b0 0e 	P2.L = 0xeb0;		/* (3760)	P2=0xff900eb0 <_txIdx> */
ffa02234:	14 1c       	IF CC JUMP 0xffa0225c <_bfin_EMAC_send+0x11c> (BP);
ffa02236:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02238:	10 97       	W[P2] = R0;
ffa0223a:	01 e8 00 00 	UNLINK;
ffa0223e:	02 30       	R0 = R2;
ffa02240:	84 04       	(P5:4) = [SP++];
ffa02242:	10 00       	RTS;
ffa02244:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02248:	00 e1 f0 00 	R0.L = 0xf0;		/* (240)	R0=0xff9000f0(-7339792) */
ffa0224c:	ff e3 e8 f7 	CALL 0xffa0121c <_printf_str>;
ffa02250:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02252:	01 e8 00 00 	UNLINK;
ffa02256:	02 30       	R0 = R2;
ffa02258:	84 04       	(P5:4) = [SP++];
ffa0225a:	10 00       	RTS;
ffa0225c:	01 30       	R0 = R1;
ffa0225e:	08 64       	R0 += 0x1;		/* (  1) */
ffa02260:	10 97       	W[P2] = R0;
ffa02262:	01 e8 00 00 	UNLINK;
ffa02266:	02 30       	R0 = R2;
ffa02268:	84 04       	(P5:4) = [SP++];
ffa0226a:	10 00       	RTS;
ffa0226c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f0(-7339792) */
ffa02270:	00 e1 f8 01 	R0.L = 0x1f8;		/* (504)	R0=0xff9001f8(-7339528) */
ffa02274:	ff e3 96 f8 	CALL 0xffa013a0 <_printf_int>;
ffa02278:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0227a:	01 e8 00 00 	UNLINK;
ffa0227e:	02 30       	R0 = R2;
ffa02280:	84 04       	(P5:4) = [SP++];
ffa02282:	10 00       	RTS;

ffa02284 <_ether_testUDP>:
ffa02284:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02286:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb0 <_txIdx> */
ffa0228a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0228e:	0a e1 b0 0e 	P2.L = 0xeb0;		/* (3760)	P2=0xff900eb0 <_txIdx> */
ffa02292:	11 95       	R1 = W[P2] (Z);
ffa02294:	11 32       	P2 = R1;
ffa02296:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa0229a:	09 e1 b4 0e 	P1.L = 0xeb4;		/* (3764)	P1=0xff900eb4 <_txbuf> */
ffa0229e:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa022a2:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa022a4:	52 91       	P2 = [P2];
ffa022a6:	95 ad       	P5 = [P2 + 0x18];
ffa022a8:	55 32       	P2 = P5;
ffa022aa:	11 96       	W[P2++] = R1;
ffa022ac:	4a 30       	R1 = P2;
ffa022ae:	00 e3 13 09 	CALL 0xffa034d4 <_ARP_req>;
ffa022b2:	00 0c       	CC = R0 == 0x0;
ffa022b4:	7f 18       	IF CC JUMP 0xffa023b2 <_ether_testUDP+0x12e>;
ffa022b6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb0 <_txIdx> */
ffa022ba:	0a e1 d8 0e 	P2.L = 0xed8;		/* (3800)	P2=0xff900ed8 <_NetOurMAC> */
ffa022be:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa022c0:	50 99       	R0 = B[P2] (X);
ffa022c2:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa022c6:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa022ca:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa022ce:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa022d2:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa022d6:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa022da:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa022de:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa022e2:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa022e6:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa022ea:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa022ee:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa022f2:	ff e3 f5 fb 	CALL 0xffa01adc <_htons>;
ffa022f6:	e8 b5       	W[P5 + 0xe] = R0;
ffa022f8:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa022fc:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa02300:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02302:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa02306:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa02308:	ff e3 ea fb 	CALL 0xffa01adc <_htons>;
ffa0230c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed8 <_NetOurMAC> */
ffa02310:	0a e1 b2 0e 	P2.L = 0xeb2;		/* (3762)	P2=0xff900eb2 <_NetIPID> */
ffa02314:	68 b6       	W[P5 + 0x12] = R0;
ffa02316:	10 95       	R0 = W[P2] (Z);
ffa02318:	08 30       	R1 = R0;
ffa0231a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0231c:	11 97       	W[P2] = R1;
ffa0231e:	ff e3 df fb 	CALL 0xffa01adc <_htons>;
ffa02322:	a8 b6       	W[P5 + 0x14] = R0;
ffa02324:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa02328:	ff e3 da fb 	CALL 0xffa01adc <_htons>;
ffa0232c:	e8 b6       	W[P5 + 0x16] = R0;
ffa0232e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02330:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa02334:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb2 <_NetIPID> */
ffa02338:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0233a:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa0233e:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetOurIP> */
ffa02342:	10 91       	R0 = [P2];
ffa02344:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetOurIP> */
ffa02348:	0a e1 a8 0e 	P2.L = 0xea8;		/* (3752)	P2=0xff900ea8 <_NetDestIP> */
ffa0234c:	e8 b1       	[P5 + 0x1c] = R0;
ffa0234e:	10 91       	R0 = [P2];
ffa02350:	28 b2       	[P5 + 0x20] = R0;
ffa02352:	45 30       	R0 = P5;
ffa02354:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa02356:	6f b7       	W[P5 + 0x1a] = R7;
ffa02358:	80 64       	R0 += 0x10;		/* ( 16) */
ffa0235a:	ff e3 a9 fb 	CALL 0xffa01aac <_NetCksum>;
ffa0235e:	c0 43       	R0 =~ R0;
ffa02360:	68 b7       	W[P5 + 0x1a] = R0;
ffa02362:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa02366:	ff e3 bb fb 	CALL 0xffa01adc <_htons>;
ffa0236a:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa0236e:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa02372:	ff e3 b5 fb 	CALL 0xffa01adc <_htons>;
ffa02376:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa0237a:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa0237c:	ff e3 b0 fb 	CALL 0xffa01adc <_htons>;
ffa02380:	55 32       	P2 = P5;
ffa02382:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa02386:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa0238a:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa0238c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0238e:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa02390:	b2 e0 03 10 	LSETUP(0xffa02394 <_ether_testUDP+0x110>, 0xffa02396 <_ether_testUDP+0x112>) LC1 = P1;
ffa02394:	11 9a       	B[P2++] = R1;
ffa02396:	09 64       	R1 += 0x1;		/* (  1) */
ffa02398:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa0239c:	00 e1 40 02 	R0.L = 0x240;		/* (576)	R0=0xff900240(-7339456) */
ffa023a0:	ff e3 3e f7 	CALL 0xffa0121c <_printf_str>;
ffa023a4:	ff e3 92 fc 	CALL 0xffa01cc8 <_bfin_EMAC_send_nocopy>;
ffa023a8:	01 e8 00 00 	UNLINK;
ffa023ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa023ae:	bd 05       	(R7:7, P5:5) = [SP++];
ffa023b0:	10 00       	RTS;
ffa023b2:	01 e8 00 00 	UNLINK;
ffa023b6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa023b8:	bd 05       	(R7:7, P5:5) = [SP++];
ffa023ba:	10 00       	RTS;

ffa023bc <_eth_header_setup>:
ffa023bc:	fc 05       	[--SP] = (R7:7, P5:4);
ffa023be:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea8 <_NetDestIP> */
ffa023c2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa023c6:	0a e1 b0 0e 	P2.L = 0xeb0;		/* (3760)	P2=0xff900eb0 <_txIdx> */
ffa023ca:	00 32       	P0 = R0;
ffa023cc:	10 95       	R0 = W[P2] (Z);
ffa023ce:	10 32       	P2 = R0;
ffa023d0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa023d4:	09 e1 b4 0e 	P1.L = 0xeb4;		/* (3764)	P1=0xff900eb4 <_txbuf> */
ffa023d8:	00 91       	R0 = [P0];
ffa023da:	21 32       	P4 = R1;
ffa023dc:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa023de:	52 91       	P2 = [P2];
ffa023e0:	08 30       	R1 = R0;
ffa023e2:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa023e4:	80 67       	R0 += -0x10;		/* (-16) */
ffa023e6:	95 ad       	P5 = [P2 + 0x18];
ffa023e8:	00 93       	[P0] = R0;
ffa023ea:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa023ee:	3a 30       	R7 = R2;
ffa023f0:	29 97       	W[P5] = R1;
ffa023f2:	ff e3 81 fb 	CALL 0xffa01af4 <_htonl>;
ffa023f6:	38 54       	R0 = R0 & R7;
ffa023f8:	00 0c       	CC = R0 == 0x0;
ffa023fa:	3c 10       	IF !CC JUMP 0xffa02472 <_eth_header_setup+0xb6>;
ffa023fc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa023fe:	a8 e6 02 00 	B[P5 + 0x2] = R0;
ffa02402:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa02406:	a8 e6 04 00 	B[P5 + 0x4] = R0;
ffa0240a:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa0240c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0240e:	a8 e6 06 00 	B[P5 + 0x6] = R0;
ffa02412:	d8 63       	R0 = -0x5 (X);		/*		R0=0xfffffffb( -5) */
ffa02414:	a9 e6 03 00 	B[P5 + 0x3] = R1;
ffa02418:	a9 e6 05 00 	B[P5 + 0x5] = R1;
ffa0241c:	a8 e6 07 00 	B[P5 + 0x7] = R0;
ffa02420:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb0 <_txIdx> */
ffa02424:	0a e1 d8 0e 	P2.L = 0xed8;		/* (3800)	P2=0xff900ed8 <_NetOurMAC> */
ffa02428:	50 99       	R0 = B[P2] (X);
ffa0242a:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0242e:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa02432:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02436:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa0243a:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa0243e:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02442:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa02446:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa0244a:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa0244e:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa02452:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa02456:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa0245a:	ff e3 41 fb 	CALL 0xffa01adc <_htons>;
ffa0245e:	e8 b5       	W[P5 + 0xe] = R0;
ffa02460:	4d 30       	R1 = P5;
ffa02462:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02464:	81 64       	R1 += 0x10;		/* ( 16) */
ffa02466:	20 9b       	B[P4] = R0;
ffa02468:	01 e8 00 00 	UNLINK;
ffa0246c:	01 30       	R0 = R1;
ffa0246e:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02470:	10 00       	RTS;
ffa02472:	4d 30       	R1 = P5;
ffa02474:	11 64       	R1 += 0x2;		/* (  2) */
ffa02476:	07 30       	R0 = R7;
ffa02478:	00 e3 2e 08 	CALL 0xffa034d4 <_ARP_req>;
ffa0247c:	00 0c       	CC = R0 == 0x0;
ffa0247e:	d1 17       	IF !CC JUMP 0xffa02420 <_eth_header_setup+0x64> (BP);
ffa02480:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02482:	00 cc 09 c2 	R1 = R1 -|- R1 || B[P4] = R0 || NOP;
ffa02486:	20 9b 00 00 
ffa0248a:	ef 2f       	JUMP.S 0xffa02468 <_eth_header_setup+0xac>;

ffa0248c <_icmp_packet_setup>:
ffa0248c:	e4 05       	[--SP] = (R7:4, P5:4);
ffa0248e:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02492:	29 32       	P5 = R1;
ffa02494:	7f 30       	R7 = FP;
ffa02496:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02498:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0249a:	f0 bb       	[FP -0x4] = R0;
ffa0249c:	07 30       	R0 = R7;
ffa0249e:	22 32       	P4 = R2;
ffa024a0:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa024a4:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa024a8:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa024ac:	ff e3 88 ff 	CALL 0xffa023bc <_eth_header_setup>;
ffa024b0:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa024b4:	68 99 00 00 
ffa024b8:	80 0c       	CC = R0 < 0x0;
ffa024ba:	14 18       	IF CC JUMP 0xffa024e2 <_icmp_packet_setup+0x56>;
ffa024bc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa024be:	f0 b0       	[SP + 0xc] = R0;
ffa024c0:	54 30       	R2 = P4;
ffa024c2:	01 30       	R0 = R1;
ffa024c4:	0f 30       	R1 = R7;
ffa024c6:	ff e3 3f fb 	CALL 0xffa01b44 <_ip_header_setup>;
ffa024ca:	e9 42       	R1 = R5.L (Z);
ffa024cc:	f1 b0       	[SP + 0xc] = R1;
ffa024ce:	e1 42       	R1 = R4.L (Z);
ffa024d0:	31 b1       	[SP + 0x10] = R1;
ffa024d2:	72 43       	R2 = R6.B (Z);
ffa024d4:	0f 30       	R1 = R7;
ffa024d6:	ff e3 87 fb 	CALL 0xffa01be4 <_icmp_header_setup>;
ffa024da:	01 e8 00 00 	UNLINK;
ffa024de:	a4 05       	(R7:4, P5:4) = [SP++];
ffa024e0:	10 00       	RTS;
ffa024e2:	01 e8 00 00 	UNLINK;
ffa024e6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024e8:	a4 05       	(R7:4, P5:4) = [SP++];
ffa024ea:	10 00       	RTS;

ffa024ec <_icmp_rx>:
ffa024ec:	fd 05       	[--SP] = (R7:7, P5:5);
ffa024ee:	28 32       	P5 = R0;
ffa024f0:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa024f4:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa024f8:	39 30       	R7 = R1;
ffa024fa:	ff e3 f1 fa 	CALL 0xffa01adc <_htons>;
ffa024fe:	c0 42       	R0 = R0.L (Z);
ffa02500:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa02502:	01 08       	CC = R1 == R0;
ffa02504:	06 18       	IF CC JUMP 0xffa02510 <_icmp_rx+0x24>;
ffa02506:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02508:	01 e8 00 00 	UNLINK;
ffa0250c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0250e:	10 00       	RTS;
ffa02510:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02512:	07 0a       	CC = R7 <= R0 (IU);
ffa02514:	f9 1b       	IF CC JUMP 0xffa02506 <_icmp_rx+0x1a>;
ffa02516:	00 00       	NOP;
ffa02518:	00 00       	NOP;
ffa0251a:	00 00       	NOP;
ffa0251c:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa02520:	08 0c       	CC = R0 == 0x1;
ffa02522:	f2 17       	IF !CC JUMP 0xffa02506 <_icmp_rx+0x1a> (BP);
ffa02524:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed8 <_NetOurMAC> */
ffa02528:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetOurIP> */
ffa0252c:	28 a2       	R0 = [P5 + 0x20];
ffa0252e:	11 91       	R1 = [P2];
ffa02530:	08 08       	CC = R0 == R1;
ffa02532:	ea 17       	IF !CC JUMP 0xffa02506 <_icmp_rx+0x1a> (BP);
ffa02534:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa02538:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa0253c:	08 08       	CC = R0 == R1;
ffa0253e:	3e 18       	IF CC JUMP 0xffa025ba <_icmp_rx+0xce>;
ffa02540:	00 00       	NOP;
ffa02542:	00 00       	NOP;
ffa02544:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa02546:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa0254a:	08 08       	CC = R0 == R1;
ffa0254c:	dd 17       	IF !CC JUMP 0xffa02506 <_icmp_rx+0x1a> (BP);
ffa0254e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa02552:	e9 a1       	R1 = [P5 + 0x1c];
ffa02554:	00 e1 58 02 	R0.L = 0x258;		/* (600)	R0=0xff900258(-7339432) */
ffa02558:	ff e3 c6 f7 	CALL 0xffa014e4 <_printf_ip>;
ffa0255c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetOurIP> */
ffa02560:	0a e1 a8 0e 	P2.L = 0xea8;		/* (3752)	P2=0xff900ea8 <_NetDestIP> */
ffa02564:	e8 a1       	R0 = [P5 + 0x1c];
ffa02566:	4d 30       	R1 = P5;
ffa02568:	10 93       	[P2] = R0;
ffa0256a:	41 64       	R1 += 0x8;		/* (  8) */
ffa0256c:	00 e3 b6 05 	CALL 0xffa030d8 <_ARP_lut_add>;
ffa02570:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900258(-7339432) */
ffa02574:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa02578:	ff e3 52 f6 	CALL 0xffa0121c <_printf_str>;
ffa0257c:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa02580:	ea a1 00 00 
ffa02584:	f0 b0       	[SP + 0xc] = R0;
ffa02586:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa0258a:	30 b1       	[SP + 0x10] = R0;
ffa0258c:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa0258e:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa02592:	4f 30       	R1 = FP;
ffa02594:	70 b1       	[SP + 0x14] = R0;
ffa02596:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa02598:	07 30       	R0 = R7;
ffa0259a:	ff e3 79 ff 	CALL 0xffa0248c <_icmp_packet_setup>;
ffa0259e:	08 30       	R1 = R0;
ffa025a0:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa025a4:	00 0d       	CC = R0 <= 0x0;
ffa025a6:	b0 1b       	IF CC JUMP 0xffa02506 <_icmp_rx+0x1a>;
ffa025a8:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa025aa:	45 30       	R0 = P5;
ffa025ac:	17 30       	R2 = R7;
ffa025ae:	ff e3 df f7 	CALL 0xffa0156c <_memcpy_>;
ffa025b2:	ff e3 8b fb 	CALL 0xffa01cc8 <_bfin_EMAC_send_nocopy>;
ffa025b6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa025b8:	a8 2f       	JUMP.S 0xffa02508 <_icmp_rx+0x1c>;
ffa025ba:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea8 <_NetDestIP> */
ffa025be:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa025c0:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_streamEnabled> */
ffa025c4:	10 9b       	B[P2] = R0;
ffa025c6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa025c8:	a0 2f       	JUMP.S 0xffa02508 <_icmp_rx+0x1c>;
	...

ffa025cc <_udp_packet_setup>:
ffa025cc:	fc 05       	[--SP] = (R7:7, P5:4);
ffa025ce:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa025d2:	29 32       	P5 = R1;
ffa025d4:	7f 30       	R7 = FP;
ffa025d6:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900eb0 <_txIdx> */
ffa025da:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa025dc:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa025de:	0c e1 e8 0e 	P4.L = 0xee8;		/* (3816)	P4=0xff900ee8 <_NetDataDestIP> */
ffa025e2:	f0 bb       	[FP -0x4] = R0;
ffa025e4:	22 91       	R2 = [P4];
ffa025e6:	07 30       	R0 = R7;
ffa025e8:	ff e3 ea fe 	CALL 0xffa023bc <_eth_header_setup>;
ffa025ec:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa025f0:	68 99 00 00 
ffa025f4:	80 0c       	CC = R0 < 0x0;
ffa025f6:	14 18       	IF CC JUMP 0xffa0261e <_udp_packet_setup+0x52>;
ffa025f8:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa025fa:	f0 b0       	[SP + 0xc] = R0;
ffa025fc:	01 30       	R0 = R1;
ffa025fe:	22 91       	R2 = [P4];
ffa02600:	0f 30       	R1 = R7;
ffa02602:	ff e3 a1 fa 	CALL 0xffa01b44 <_ip_header_setup>;
ffa02606:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa0260a:	f1 b0       	[SP + 0xc] = R1;
ffa0260c:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa02610:	0f 30       	R1 = R7;
ffa02612:	ff e3 0d fb 	CALL 0xffa01c2c <_udp_header_setup>;
ffa02616:	01 e8 00 00 	UNLINK;
ffa0261a:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0261c:	10 00       	RTS;
ffa0261e:	01 e8 00 00 	UNLINK;
ffa02622:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02624:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02626:	10 00       	RTS;

ffa02628 <_SetupTxBuffer>:
ffa02628:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0262a:	38 30       	R7 = R0;
ffa0262c:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02630:	c7 40       	R7 *= R0;
ffa02632:	17 32       	P2 = R7;
ffa02634:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800eb4 */
ffa02638:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa0263c:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02640:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa02644:	6a 5b       	P5 = P2 + P5;
ffa02646:	c7 51       	R7 = R7 + R0;
ffa02648:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0264c:	45 30       	R0 = P5;
ffa0264e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02650:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa02652:	ff e3 9d f7 	CALL 0xffa0158c <_memset_>;
ffa02656:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa0265a:	af b1 00 00 
ffa0265e:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa02662:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02666:	ff e3 93 f7 	CALL 0xffa0158c <_memset_>;
ffa0266a:	45 30       	R0 = P5;
ffa0266c:	60 64       	R0 += 0xc;		/* ( 12) */
ffa0266e:	28 93       	[P5] = R0;
ffa02670:	a8 a1       	R0 = [P5 + 0x18];
ffa02672:	68 b0       	[P5 + 0x4] = R0;
ffa02674:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa02678:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0267a:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa0267c:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa0267e:	10 54       	R0 = R0 & R2;
ffa02680:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02682:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02686:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa02688:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa0268c:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0268e:	18 54       	R0 = R0 & R3;
ffa02690:	08 56       	R0 = R0 | R1;
ffa02692:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa02696:	08 56       	R0 = R0 | R1;
ffa02698:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0269c:	45 30       	R0 = P5;
ffa0269e:	40 65       	R0 += 0x28;		/* ( 40) */
ffa026a0:	28 b1       	[P5 + 0x10] = R0;
ffa026a2:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa026a6:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa026a8:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa026aa:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa026ae:	10 54       	R0 = R0 & R2;
ffa026b0:	08 56       	R0 = R0 | R1;
ffa026b2:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa026b6:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa026ba:	18 54       	R0 = R0 & R3;
ffa026bc:	39 64       	R1 += 0x7;		/* (  7) */
ffa026be:	08 54       	R0 = R0 & R1;
ffa026c0:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa026c4:	ed bc       	[P5 + 0xc] = P5;
ffa026c6:	01 e8 00 00 	UNLINK;
ffa026ca:	45 30       	R0 = P5;
ffa026cc:	bd 05       	(R7:7, P5:5) = [SP++];
ffa026ce:	10 00       	RTS;

ffa026d0 <_SetupRxBuffer>:
ffa026d0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa026d2:	38 30       	R7 = R0;
ffa026d4:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa026d8:	c7 40       	R7 *= R0;
ffa026da:	17 32       	P2 = R7;
ffa026dc:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa026e0:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa026e4:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa026e8:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa026ec:	6a 5b       	P5 = P2 + P5;
ffa026ee:	c7 51       	R7 = R7 + R0;
ffa026f0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa026f4:	45 30       	R0 = P5;
ffa026f6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa026f8:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa026fa:	ff e3 49 f7 	CALL 0xffa0158c <_memset_>;
ffa026fe:	af b1       	[P5 + 0x18] = R7;
ffa02700:	07 30       	R0 = R7;
ffa02702:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa02706:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa0270a:	ff e3 41 f7 	CALL 0xffa0158c <_memset_>;
ffa0270e:	45 30       	R0 = P5;
ffa02710:	60 64       	R0 += 0xc;		/* ( 12) */
ffa02712:	28 93       	[P5] = R0;
ffa02714:	a8 a1       	R0 = [P5 + 0x18];
ffa02716:	68 b0       	[P5 + 0x4] = R0;
ffa02718:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa0271c:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0271e:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa02720:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02722:	08 54       	R0 = R0 & R1;
ffa02724:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02726:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0272a:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa0272c:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa02730:	38 54       	R0 = R0 & R7;
ffa02732:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa02734:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa02738:	18 56       	R0 = R0 | R3;
ffa0273a:	10 56       	R0 = R0 | R2;
ffa0273c:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02740:	45 30       	R0 = P5;
ffa02742:	20 65       	R0 += 0x24;		/* ( 36) */
ffa02744:	28 b1       	[P5 + 0x10] = R0;
ffa02746:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa0274a:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0274c:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0274e:	08 54       	R0 = R0 & R1;
ffa02750:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa02754:	08 56       	R0 = R0 | R1;
ffa02756:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa0275a:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa0275e:	38 54       	R0 = R0 & R7;
ffa02760:	18 56       	R0 = R0 | R3;
ffa02762:	10 56       	R0 = R0 | R2;
ffa02764:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02768:	ed bc       	[P5 + 0xc] = P5;
ffa0276a:	01 e8 00 00 	UNLINK;
ffa0276e:	45 30       	R0 = P5;
ffa02770:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02772:	10 00       	RTS;

ffa02774 <_SetupSystemRegs>:
ffa02774:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02776:	28 32       	P5 = R0;
ffa02778:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa0277c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02780:	00 e1 74 02 	R0.L = 0x274;		/* (628)	R0=0xff900274(-7339404) */
ffa02784:	ff e3 4c f5 	CALL 0xffa0121c <_printf_str>;
ffa02788:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c38(-4191176) */
ffa0278c:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa02790:	50 95       	R0 = W[P2] (X);
ffa02792:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa02796:	08 54       	R0 = R0 & R1;
ffa02798:	10 97       	W[P2] = R0;
ffa0279a:	50 95       	R0 = W[P2] (X);
ffa0279c:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa0279e:	10 97       	W[P2] = R0;
ffa027a0:	82 6f       	P2 += -0x10;		/* (-16) */
ffa027a2:	51 95       	R1 = W[P2] (X);
ffa027a4:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa027a8:	08 56       	R0 = R0 | R1;
ffa027aa:	10 97       	W[P2] = R0;
ffa027ac:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa027ae:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027b0:	10 97       	W[P2] = R0;
ffa027b2:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa027b4:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa027b6:	10 97       	W[P2] = R0;
ffa027b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa027bc:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa027c0:	50 95       	R0 = W[P2] (X);
ffa027c2:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa027c4:	10 97       	W[P2] = R0;
ffa027c6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa027ca:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa027ce:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa027d2:	10 93       	[P2] = R0;
ffa027d4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa027d6:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa027da:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027dc:	ff e3 0c f9 	CALL 0xffa019f4 <_WrPHYReg>;
ffa027e0:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa027e4:	ff e3 b2 f8 	CALL 0xffa01948 <_udelay>;
ffa027e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027ea:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa027ec:	ff e3 20 f9 	CALL 0xffa01a2c <_RdPHYReg>;
ffa027f0:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa027f2:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa027f4:	0e 20       	JUMP.S 0xffa02810 <_SetupSystemRegs+0x9c>;
ffa027f6:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa027fa:	ff e3 a7 f8 	CALL 0xffa01948 <_udelay>;
ffa027fe:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02800:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02802:	ff e3 15 f9 	CALL 0xffa01a2c <_RdPHYReg>;
ffa02806:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02808:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa0280c:	0f 08       	CC = R7 == R1;
ffa0280e:	35 18       	IF CC JUMP 0xffa02878 <_SetupSystemRegs+0x104>;
ffa02810:	06 54       	R0 = R6 & R0;
ffa02812:	00 0c       	CC = R0 == 0x0;
ffa02814:	f1 1f       	IF CC JUMP 0xffa027f6 <_SetupSystemRegs+0x82> (BP);
ffa02816:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa02818:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0281a:	ff e3 09 f9 	CALL 0xffa01a2c <_RdPHYReg>;
ffa0281e:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa02822:	01 54       	R0 = R1 & R0;
ffa02824:	00 0c       	CC = R0 == 0x0;
ffa02826:	27 1c       	IF CC JUMP 0xffa02874 <_SetupSystemRegs+0x100> (BP);
ffa02828:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0282a:	d0 4f       	R0 <<= 0x1a;
ffa0282c:	28 93       	[P5] = R0;
ffa0282e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa02832:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02834:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa02838:	10 93       	[P2] = R0;
ffa0283a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa0283e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02840:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa02844:	10 97       	W[P2] = R0;
ffa02846:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa02848:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0284a:	11 97       	W[P2] = R1;
ffa0284c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0284e:	10 97       	W[P2] = R0;
ffa02850:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02852:	10 97       	W[P2] = R0;
ffa02854:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa02858:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa0285c:	10 97       	W[P2] = R0;
ffa0285e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02860:	11 97       	W[P2] = R1;
ffa02862:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02864:	10 97       	W[P2] = R0;
ffa02866:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02868:	10 97       	W[P2] = R0;
ffa0286a:	01 e8 00 00 	UNLINK;
ffa0286e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02870:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02872:	10 00       	RTS;
ffa02874:	28 93       	[P5] = R0;
ffa02876:	dc 2f       	JUMP.S 0xffa0282e <_SetupSystemRegs+0xba>;
ffa02878:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0287c:	00 e1 8c 02 	R0.L = 0x28c;		/* (652)	R0=0xff90028c(-7339380) */
ffa02880:	ff e3 ce f4 	CALL 0xffa0121c <_printf_str>;
ffa02884:	01 e8 00 00 	UNLINK;
ffa02888:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0288a:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0288c:	10 00       	RTS;
	...

ffa02890 <_SetupMacAddr>:
ffa02890:	10 32       	P2 = R0;
ffa02892:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02894:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02896:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0289a:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa0289e:	10 9b       	B[P2] = R0;
ffa028a0:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa028a2:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa028a6:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa028a8:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa028ac:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa028ae:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa028b2:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa028b6:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa028ba:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa028bc:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa028c0:	10 99       	R0 = B[P2] (Z);
ffa028c2:	08 56       	R0 = R0 | R1;
ffa028c4:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa028c8:	89 4f       	R1 <<= 0x11;
ffa028ca:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00eb4(-4190540) */
ffa028ce:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa028d2:	08 56       	R0 = R0 | R1;
ffa028d4:	08 93       	[P1] = R0;
ffa028d6:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa028da:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa028de:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa028e2:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa028e4:	28 93       	[P5] = R0;
ffa028e6:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa028ea:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa028ee:	09 91       	R1 = [P1];
ffa028f0:	07 e1 98 07 	R7.L = 0x798;		/* (1944)	R7=0xff900798(-7338088) */
ffa028f4:	00 e1 c0 02 	R0.L = 0x2c0;		/* (704)	R0=0xff9002c0(-7339328) */
ffa028f8:	ff e3 f8 f4 	CALL 0xffa012e8 <_printf_hex>;
ffa028fc:	07 30       	R0 = R7;
ffa028fe:	ff e3 8f f4 	CALL 0xffa0121c <_printf_str>;
ffa02902:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002c0(-7339328) */
ffa02906:	29 91       	R1 = [P5];
ffa02908:	00 e1 cc 02 	R0.L = 0x2cc;		/* (716)	R0=0xff9002cc(-7339316) */
ffa0290c:	ff e3 ee f4 	CALL 0xffa012e8 <_printf_hex>;
ffa02910:	01 e8 00 00 	UNLINK;
ffa02914:	07 30       	R0 = R7;
ffa02916:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02918:	ff e2 82 f4 	JUMP.L 0xffa0121c <_printf_str>;

ffa0291c <_bfin_EMAC_init>:
ffa0291c:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0291e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002cc(-7339316) */
ffa02922:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02926:	00 e1 d8 02 	R0.L = 0x2d8;		/* (728)	R0=0xff9002d8(-7339304) */
ffa0292a:	ff e3 79 f4 	CALL 0xffa0121c <_printf_str>;
ffa0292e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 */
ffa02932:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02934:	0a e1 b0 0e 	P2.L = 0xeb0;		/* (3760)	P2=0xff900eb0 <_txIdx> */
ffa02938:	16 97       	W[P2] = R6;
ffa0293a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb0 <_txIdx> */
ffa0293e:	0a e1 c4 0e 	P2.L = 0xec4;		/* (3780)	P2=0xff900ec4 <_rxIdx> */
ffa02942:	16 97       	W[P2] = R6;
ffa02944:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ec4 <_rxIdx> */
ffa02948:	0a e1 b2 0e 	P2.L = 0xeb2;		/* (3762)	P2=0xff900eb2 <_NetIPID> */
ffa0294c:	16 97       	W[P2] = R6;
ffa0294e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb2 <_NetIPID> */
ffa02952:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02954:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetSubnetMask> */
ffa02958:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa0295a:	17 93       	[P2] = R7;
ffa0295c:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa02960:	f0 b0       	[SP + 0xc] = R0;
ffa02962:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02964:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02968:	ff e3 10 f8 	CALL 0xffa01988 <_FormatIPAddress>;
ffa0296c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetSubnetMask> */
ffa02970:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetOurIP> */
ffa02974:	10 93       	[P2] = R0;
ffa02976:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02978:	f0 b0       	[SP + 0xc] = R0;
ffa0297a:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa0297e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02980:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02984:	ff e3 02 f8 	CALL 0xffa01988 <_FormatIPAddress>;
ffa02988:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetOurIP> */
ffa0298c:	0a e1 a8 0e 	P2.L = 0xea8;		/* (3752)	P2=0xff900ea8 <_NetDestIP> */
ffa02990:	10 93       	[P2] = R0;
ffa02992:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02994:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa02996:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa0299a:	f0 b0       	[SP + 0xc] = R0;
ffa0299c:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa029a0:	ff e3 f4 f7 	CALL 0xffa01988 <_FormatIPAddress>;
ffa029a4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea8 <_NetDestIP> */
ffa029a8:	0a e1 e8 0e 	P2.L = 0xee8;		/* (3816)	P2=0xff900ee8 <_NetDataDestIP> */
ffa029ac:	10 93       	[P2] = R0;
ffa029ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee8 <_NetDataDestIP> */
ffa029b2:	0a e1 c8 0f 	P2.L = 0xfc8;		/* (4040)	P2=0xff900fc8 <_TcpState> */
ffa029b6:	17 93       	[P2] = R7;
ffa029b8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc8 <_TcpState> */
ffa029bc:	0a e1 c0 0f 	P2.L = 0xfc0;		/* (4032)	P2=0xff900fc0 <_TcpSeqClient> */
ffa029c0:	17 93       	[P2] = R7;
ffa029c2:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa029c6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc0 <_TcpSeqClient> */
ffa029ca:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa029ce:	0a e1 bc 0f 	P2.L = 0xfbc;		/* (4028)	P2=0xff900fbc <_TcpSeqHost> */
ffa029d2:	10 93       	[P2] = R0;
ffa029d4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fbc <_TcpSeqHost> */
ffa029d8:	0a e1 d4 0f 	P2.L = 0xfd4;		/* (4052)	P2=0xff900fd4 <_TcpClientPort> */
ffa029dc:	16 97       	W[P2] = R6;
ffa029de:	00 e3 2f 03 	CALL 0xffa0303c <_ARP_init>;
ffa029e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00fd4(-4190252) */
ffa029e6:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa029ea:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa029ee:	17 93       	[P2] = R7;
ffa029f0:	00 e1 d8 0e 	R0.L = 0xed8;		/* (3800)	R0=0xff900ed8 <_NetOurMAC>(-7336232) */
ffa029f4:	ff e3 4e ff 	CALL 0xffa02890 <_SetupMacAddr>;
ffa029f8:	47 30       	R0 = FP;
ffa029fa:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa029fc:	ff e3 bc fe 	CALL 0xffa02774 <_SetupSystemRegs>;
ffa02a00:	80 0c       	CC = R0 < 0x0;
ffa02a02:	7a 18       	IF CC JUMP 0xffa02af6 <_bfin_EMAC_init+0x1da>;
ffa02a04:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa02a08:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a0a:	07 e1 c8 0e 	R7.L = 0xec8;		/* (3784)	R7=0xff900ec8 <_rxbuf>(-7336248) */
ffa02a0e:	ff e3 61 fe 	CALL 0xffa026d0 <_SetupRxBuffer>;
ffa02a12:	07 32       	P0 = R7;
ffa02a14:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02a16:	00 93       	[P0] = R0;
ffa02a18:	17 32       	P2 = R7;
ffa02a1a:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa02a1c:	44 30       	R0 = P4;
ffa02a1e:	ff e3 59 fe 	CALL 0xffa026d0 <_SetupRxBuffer>;
ffa02a22:	44 0c       	CC = P4 == 0x0;
ffa02a24:	08 32       	P1 = R0;
ffa02a26:	28 92       	[P5++] = R0;
ffa02a28:	52 18       	IF CC JUMP 0xffa02acc <_bfin_EMAC_init+0x1b0>;
ffa02a2a:	07 32       	P0 = R7;
ffa02a2c:	5c 0c       	CC = P4 == 0x3;
ffa02a2e:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa02a30:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa02a34:	d0 b0       	[P2 + 0xc] = R0;
ffa02a36:	54 18       	IF CC JUMP 0xffa02ade <_bfin_EMAC_init+0x1c2>;
ffa02a38:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa02a3a:	5c 0d       	CC = P4 <= 0x3;
ffa02a3c:	ee 1f       	IF CC JUMP 0xffa02a18 <_bfin_EMAC_init+0xfc> (BP);
ffa02a3e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a40:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e60 <_printf_temp> */
ffa02a44:	ff e3 f2 fd 	CALL 0xffa02628 <_SetupTxBuffer>;
ffa02a48:	0b e1 b4 0e 	P3.L = 0xeb4;		/* (3764)	P3=0xff900eb4 <_txbuf> */
ffa02a4c:	18 93       	[P3] = R0;
ffa02a4e:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02a50:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa02a52:	44 30       	R0 = P4;
ffa02a54:	ff e3 ea fd 	CALL 0xffa02628 <_SetupTxBuffer>;
ffa02a58:	44 0c       	CC = P4 == 0x0;
ffa02a5a:	08 32       	P1 = R0;
ffa02a5c:	28 92       	[P5++] = R0;
ffa02a5e:	35 18       	IF CC JUMP 0xffa02ac8 <_bfin_EMAC_init+0x1ac>;
ffa02a60:	00 00       	NOP;
ffa02a62:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa02a64:	5c 0c       	CC = P4 == 0x3;
ffa02a66:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa02a6a:	d0 b0       	[P2 + 0xc] = R0;
ffa02a6c:	32 18       	IF CC JUMP 0xffa02ad0 <_bfin_EMAC_init+0x1b4>;
ffa02a6e:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa02a70:	5c 0d       	CC = P4 <= 0x3;
ffa02a72:	ef 1f       	IF CC JUMP 0xffa02a50 <_bfin_EMAC_init+0x134> (BP);
ffa02a74:	17 32       	P2 = R7;
ffa02a76:	51 91       	P1 = [P2];
ffa02a78:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa02a7c:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa02a80:	51 93       	[P2] = P1;
ffa02a82:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa02a84:	42 6c       	P2 += 0x8;		/* (  8) */
ffa02a86:	10 97       	W[P2] = R0;
ffa02a88:	ff e3 a8 f7 	CALL 0xffa019d8 <_PollMdcDone>;
ffa02a8c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02a8e:	f0 b9       	R0 = [FP -0x4];
ffa02a90:	d1 4f       	R1 <<= 0x1a;
ffa02a92:	08 08       	CC = R0 == R1;
ffa02a94:	2c 18       	IF CC JUMP 0xffa02aec <_bfin_EMAC_init+0x1d0>;
ffa02a96:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02a9a:	01 30       	R0 = R1;
ffa02a9c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa02aa0:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02aa4:	10 93       	[P2] = R0;
ffa02aa6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02aaa:	00 e1 e8 02 	R0.L = 0x2e8;		/* (744)	R0=0xff9002e8(-7339288) */
ffa02aae:	ff e3 1d f4 	CALL 0xffa012e8 <_printf_hex>;
ffa02ab2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002e8(-7339288) */
ffa02ab6:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa02aba:	ff e3 b1 f3 	CALL 0xffa0121c <_printf_str>;
ffa02abe:	01 e8 00 00 	UNLINK;
ffa02ac2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02ac4:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02ac6:	10 00       	RTS;
ffa02ac8:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02aca:	c4 2f       	JUMP.S 0xffa02a52 <_bfin_EMAC_init+0x136>;
ffa02acc:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02ace:	a7 2f       	JUMP.S 0xffa02a1c <_bfin_EMAC_init+0x100>;
ffa02ad0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa02ad4:	0a e1 b4 0e 	P2.L = 0xeb4;		/* (3764)	P2=0xff900eb4 <_txbuf> */
ffa02ad8:	10 91       	R0 = [P2];
ffa02ada:	c8 b0       	[P1 + 0xc] = R0;
ffa02adc:	cc 2f       	JUMP.S 0xffa02a74 <_bfin_EMAC_init+0x158>;
ffa02ade:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb4 <_txbuf> */
ffa02ae2:	0a e1 c8 0e 	P2.L = 0xec8;		/* (3784)	P2=0xff900ec8 <_rxbuf> */
ffa02ae6:	10 91       	R0 = [P2];
ffa02ae8:	c8 b0       	[P1 + 0xc] = R0;
ffa02aea:	aa 2f       	JUMP.S 0xffa02a3e <_bfin_EMAC_init+0x122>;
ffa02aec:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02af0:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa02af2:	01 30       	R0 = R1;
ffa02af4:	d4 2f       	JUMP.S 0xffa02a9c <_bfin_EMAC_init+0x180>;
ffa02af6:	01 e8 00 00 	UNLINK;
ffa02afa:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02afc:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02afe:	10 00       	RTS;

ffa02b00 <_bfin_EMAC_recv_poll>:
ffa02b00:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02b02:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa02b06:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa02b0a:	0d e1 c8 0e 	P5.L = 0xec8;		/* (3784)	P5=0xff900ec8 <_rxbuf> */
ffa02b0e:	0c e1 c4 0e 	P4.L = 0xec4;		/* (3780)	P4=0xff900ec4 <_rxIdx> */
ffa02b12:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02b16:	28 30       	R5 = R0;
ffa02b18:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02b1a:	75 30       	R6 = P5;
ffa02b1c:	5c 32       	P3 = P4;
ffa02b1e:	06 20       	JUMP.S 0xffa02b2a <_bfin_EMAC_recv_poll+0x2a>;
ffa02b20:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02b22:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02b26:	07 08       	CC = R7 == R0;
ffa02b28:	59 18       	IF CC JUMP 0xffa02bda <_bfin_EMAC_recv_poll+0xda>;
ffa02b2a:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02b2e:	ff e3 0d f7 	CALL 0xffa01948 <_udelay>;
ffa02b32:	20 95       	R0 = W[P4] (Z);
ffa02b34:	10 32       	P2 = R0;
ffa02b36:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02b38:	52 91       	P2 = [P2];
ffa02b3a:	90 a2       	R0 = [P2 + 0x28];
ffa02b3c:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02b3e:	f1 1f       	IF CC JUMP 0xffa02b20 <_bfin_EMAC_recv_poll+0x20> (BP);
ffa02b40:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02b44:	91 a2       	R1 = [P2 + 0x28];
ffa02b46:	41 54       	R1 = R1 & R0;
ffa02b48:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02b4a:	01 09       	CC = R1 <= R0;
ffa02b4c:	07 10       	IF !CC JUMP 0xffa02b5a <_bfin_EMAC_recv_poll+0x5a>;
ffa02b4e:	01 e8 00 00 	UNLINK;
ffa02b52:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02b54:	07 30       	R0 = R7;
ffa02b56:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b58:	10 00       	RTS;
ffa02b5a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b5c:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa02b60:	90 b2 00 00 
ffa02b64:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02b66:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02b6a:	0f 30       	R1 = R7;
ffa02b6c:	00 e1 f4 02 	R0.L = 0x2f4;		/* (756)	R0=0xff9002f4(-7339276) */
ffa02b70:	ff e3 18 f4 	CALL 0xffa013a0 <_printf_int>;
ffa02b74:	18 95       	R0 = W[P3] (Z);
ffa02b76:	10 32       	P2 = R0;
ffa02b78:	0e 32       	P1 = R6;
ffa02b7a:	0f 30       	R1 = R7;
ffa02b7c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02b7e:	52 91       	P2 = [P2];
ffa02b80:	90 a1       	R0 = [P2 + 0x18];
ffa02b82:	15 32       	P2 = R5;
ffa02b84:	10 93       	[P2] = R0;
ffa02b86:	00 e3 0f 03 	CALL 0xffa031a4 <_ARP_rx>;
ffa02b8a:	00 0c       	CC = R0 == 0x0;
ffa02b8c:	1f 18       	IF CC JUMP 0xffa02bca <_bfin_EMAC_recv_poll+0xca>;
ffa02b8e:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02b90:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02b94:	20 95       	R0 = W[P4] (Z);
ffa02b96:	10 32       	P2 = R0;
ffa02b98:	61 95       	R1 = W[P4] (X);
ffa02b9a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b9c:	09 e1 c4 0e 	P1.L = 0xec4;		/* (3780)	P1=0xff900ec4 <_rxIdx> */
ffa02ba0:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02ba2:	52 91       	P2 = [P2];
ffa02ba4:	90 b2       	[P2 + 0x28] = R0;
ffa02ba6:	c8 42       	R0 = R1.L (Z);
ffa02ba8:	10 0d       	CC = R0 <= 0x2;
ffa02baa:	09 14       	IF !CC JUMP 0xffa02bbc <_bfin_EMAC_recv_poll+0xbc> (BP);
ffa02bac:	01 30       	R0 = R1;
ffa02bae:	08 64       	R0 += 0x1;		/* (  1) */
ffa02bb0:	08 97       	W[P1] = R0;
ffa02bb2:	01 e8 00 00 	UNLINK;
ffa02bb6:	07 30       	R0 = R7;
ffa02bb8:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02bba:	10 00       	RTS;
ffa02bbc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02bbe:	08 97       	W[P1] = R0;
ffa02bc0:	01 e8 00 00 	UNLINK;
ffa02bc4:	07 30       	R0 = R7;
ffa02bc6:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02bc8:	10 00       	RTS;
ffa02bca:	0d 32       	P1 = R5;
ffa02bcc:	0f 30       	R1 = R7;
ffa02bce:	08 91       	R0 = [P1];
ffa02bd0:	ff e3 8e fc 	CALL 0xffa024ec <_icmp_rx>;
ffa02bd4:	00 0c       	CC = R0 == 0x0;
ffa02bd6:	dd 1f       	IF CC JUMP 0xffa02b90 <_bfin_EMAC_recv_poll+0x90> (BP);
ffa02bd8:	db 2f       	JUMP.S 0xffa02b8e <_bfin_EMAC_recv_poll+0x8e>;
ffa02bda:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02bde:	00 e1 00 03 	R0.L = 0x300;		/* (768)	R0=0xff900300(-7339264) */
ffa02be2:	ff e3 1d f3 	CALL 0xffa0121c <_printf_str>;
ffa02be6:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02be8:	01 e8 00 00 	UNLINK;
ffa02bec:	07 30       	R0 = R7;
ffa02bee:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02bf0:	10 00       	RTS;
	...

ffa02bf4 <_bridge_publish>:
ffa02bf4:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02bf6:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02bfa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02bfc:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa02c00:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02c02:	f0 b0       	[SP + 0xc] = R0;
ffa02c04:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02c06:	20 e1 ef 00 	R0 = 0xef (X);		/*		R0=0xef(239) */
ffa02c0a:	22 e1 c8 00 	R2 = 0xc8 (X);		/*		R2=0xc8(200) */
ffa02c0e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900ec4 <_rxIdx> */
ffa02c12:	6f 30       	R5 = FP;
ffa02c14:	5f 32       	P3 = FP;
ffa02c16:	ff e3 b9 f6 	CALL 0xffa01988 <_FormatIPAddress>;
ffa02c1a:	0c e1 e8 0e 	P4.L = 0xee8;		/* (3816)	P4=0xff900ee8 <_NetDataDestIP> */
ffa02c1e:	00 cc 24 c8 	R4 = R4 -|- R4 || [P4] = R0 || NOP;
ffa02c22:	20 93 00 00 
ffa02c26:	c5 67       	R5 += -0x8;		/* ( -8) */
ffa02c28:	fb 6f       	P3 += -0x1;		/* ( -1) */
ffa02c2a:	01 20       	JUMP.S 0xffa02c2c <_bridge_publish+0x38>;
ffa02c2c:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02c2e:	e0 bb       	[FP -0x8] = R0;
ffa02c30:	4b 30       	R1 = P3;
ffa02c32:	82 ce 05 c0 	R0 = ROT R5 BY 0x0 || R2 = [P4] || NOP;
ffa02c36:	22 91 00 00 
ffa02c3a:	ff e3 c1 fb 	CALL 0xffa023bc <_eth_header_setup>;
ffa02c3e:	08 30       	R1 = R0;
ffa02c40:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa02c44:	80 0c       	CC = R0 < 0x0;
ffa02c46:	9c 18       	IF CC JUMP 0xffa02d7e <_bridge_publish+0x18a>;
ffa02c48:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ec8 <_rxbuf> */
ffa02c4c:	0a e1 e8 0e 	P2.L = 0xee8;		/* (3816)	P2=0xff900ee8 <_NetDataDestIP> */
ffa02c50:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa02c52:	12 91       	R2 = [P2];
ffa02c54:	d1 bb       	[FP -0xc] = R1;
ffa02c56:	f0 b0       	[SP + 0xc] = R0;
ffa02c58:	01 30       	R0 = R1;
ffa02c5a:	0d 30       	R1 = R5;
ffa02c5c:	ff e3 74 f7 	CALL 0xffa01b44 <_ip_header_setup>;
ffa02c60:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa02c64:	f1 b0       	[SP + 0xc] = R1;
ffa02c66:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa02c6a:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [FP -0xc] = R0 || NOP;
ffa02c6e:	d0 bb 00 00 
ffa02c72:	ff e3 dd f7 	CALL 0xffa01c2c <_udp_header_setup>;
ffa02c76:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [FP -0xc] = R0 || NOP;
ffa02c7a:	d0 bb 00 00 
ffa02c7e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900011(-7340015) */
ffa02c82:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
ffa02c84:	00 e1 10 03 	R0.L = 0x310;		/* (784)	R0=0xff900310(-7339248) */
ffa02c88:	ff e3 72 f4 	CALL 0xffa0156c <_memcpy_>;
ffa02c8c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900310(-7339248) */
ffa02c90:	00 e1 1c 03 	R0.L = 0x31c;		/* (796)	R0=0xff90031c(-7339236) */
ffa02c94:	77 30       	R6 = FP;
ffa02c96:	ff e3 c3 f2 	CALL 0xffa0121c <_printf_str>;
ffa02c9a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02c9c:	ff e3 16 f8 	CALL 0xffa01cc8 <_bfin_EMAC_send_nocopy>;
ffa02ca0:	a6 67       	R6 += -0xc;		/* (-12) */
ffa02ca2:	05 20       	JUMP.S 0xffa02cac <_bridge_publish+0xb8>;
ffa02ca4:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02ca6:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02ca8:	07 08       	CC = R7 == R0;
ffa02caa:	46 18       	IF CC JUMP 0xffa02d36 <_bridge_publish+0x142>;
ffa02cac:	06 30       	R0 = R6;
ffa02cae:	ff e3 29 ff 	CALL 0xffa02b00 <_bfin_EMAC_recv_poll>;
ffa02cb2:	59 61       	R1 = 0x2b (X);		/*		R1=0x2b( 43) */
ffa02cb4:	08 09       	CC = R0 <= R1;
ffa02cb6:	e0 bb       	[FP -0x8] = R0;
ffa02cb8:	dd b9       	P5 = [FP -0xc];
ffa02cba:	f5 1f       	IF CC JUMP 0xffa02ca4 <_bridge_publish+0xb0> (BP);
ffa02cbc:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa02cbe:	ff e3 0f f7 	CALL 0xffa01adc <_htons>;
ffa02cc2:	c0 42       	R0 = R0.L (Z);
ffa02cc4:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa02cc8:	08 08       	CC = R0 == R1;
ffa02cca:	ed 17       	IF !CC JUMP 0xffa02ca4 <_bridge_publish+0xb0> (BP);
ffa02ccc:	20 e1 f4 10 	R0 = 0x10f4 (X);		/*		R0=0x10f4(4340) */
ffa02cd0:	ff e3 06 f7 	CALL 0xffa01adc <_htons>;
ffa02cd4:	c0 42       	R0 = R0.L (Z);
ffa02cd6:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa02cda:	01 08       	CC = R1 == R0;
ffa02cdc:	e4 17       	IF !CC JUMP 0xffa02ca4 <_bridge_publish+0xb0> (BP);
ffa02cde:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa02ce2:	ff e3 fd f6 	CALL 0xffa01adc <_htons>;
ffa02ce6:	c0 42       	R0 = R0.L (Z);
ffa02ce8:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa02cec:	01 08       	CC = R1 == R0;
ffa02cee:	db 17       	IF !CC JUMP 0xffa02ca4 <_bridge_publish+0xb0> (BP);
ffa02cf0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9010f5(-7335691) */
ffa02cf4:	e9 a1       	R1 = [P5 + 0x1c];
ffa02cf6:	00 e1 34 03 	R0.L = 0x334;		/* (820)	R0=0xff900334(-7339212) */
ffa02cfa:	21 93       	[P4] = R1;
ffa02cfc:	ff e3 f4 f3 	CALL 0xffa014e4 <_printf_ip>;
ffa02d00:	da b9       	P2 = [FP -0xc];
ffa02d02:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900334(-7339212) */
ffa02d06:	00 e1 40 03 	R0.L = 0x340;		/* (832)	R0=0xff900340(-7339200) */
ffa02d0a:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa02d0c:	da bb       	[FP -0xc] = P2;
ffa02d0e:	a2 6e       	P2 += -0x2c;		/* (-44) */
ffa02d10:	91 e4 2c 00 	R1 = B[P2 + 0x2c] (Z);
ffa02d14:	ff e3 94 f2 	CALL 0xffa0123c <_printf_hex_byte>;
ffa02d18:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900340(-7339200) */
ffa02d1c:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa02d20:	ff e3 7e f2 	CALL 0xffa0121c <_printf_str>;
ffa02d24:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee8 <_NetDataDestIP> */
ffa02d28:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d2a:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_streamEnabled> */
ffa02d2e:	10 9b       	B[P2] = R0;
ffa02d30:	da b9       	P2 = [FP -0xc];
ffa02d32:	10 99       	R0 = B[P2] (Z);
ffa02d34:	26 20       	JUMP.S 0xffa02d80 <_bridge_publish+0x18c>;
ffa02d36:	ff e3 39 ea 	CALL 0xffa001a8 <_ustimer>;
ffa02d3a:	41 e1 0b e5 	R1.H = 0xe50b;		/* (-6901)	R1=0xe50b0800(-452261888) */
ffa02d3e:	08 4e       	R0 >>= 0x1;
ffa02d40:	01 e1 81 f7 	R1.L = 0xf781;		/* (-2175)	R1=0xe50bf781(-452200575) */
ffa02d44:	80 c0 01 18 	A1 = R0.L * R1.L (FU);
ffa02d48:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa02d4c:	81 c0 01 86 	A1 += R0.H * R1.L, A0 = R0.H * R1.H (FU);
ffa02d50:	81 c0 08 98 	A1 += R1.H * R0.L (FU);
ffa02d54:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa02d58:	0b c4 00 80 	A0 += A1;
ffa02d5c:	8b c0 00 38 	R0 = A0 (FU);
ffa02d60:	82 c6 a8 83 	R1 = R0 >> 0xb;
ffa02d64:	0c 08       	CC = R4 == R1;
ffa02d66:	63 1b       	IF CC JUMP 0xffa02c2c <_bridge_publish+0x38>;
ffa02d68:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c38(-4191176) */
ffa02d6c:	20 e1 00 80 	R0 = -0x8000 (X);		/*		R0=0xffff8000(-32768) */
ffa02d70:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa02d74:	82 ce 01 c8 	R4 = ROT R1 BY 0x0 || W[P2] = R0 || NOP;
ffa02d78:	10 97 00 00 
ffa02d7c:	58 2f       	JUMP.S 0xffa02c2c <_bridge_publish+0x38>;
ffa02d7e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02d80:	01 e8 00 00 	UNLINK;
ffa02d84:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02d86:	10 00       	RTS;

ffa02d88 <_DHCP_rx>:
ffa02d88:	e5 05       	[--SP] = (R7:4, P5:5);
ffa02d8a:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02d8e:	67 30       	R4 = FP;
ffa02d90:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02d92:	e4 67       	R4 += -0x4;		/* ( -4) */
ffa02d94:	01 20       	JUMP.S 0xffa02d96 <_DHCP_rx+0xe>;
ffa02d96:	04 30       	R0 = R4;
ffa02d98:	ff e3 b4 fe 	CALL 0xffa02b00 <_bfin_EMAC_recv_poll>;
ffa02d9c:	38 30       	R7 = R0;
ffa02d9e:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa02da2:	47 51       	R5 = R7 + R0;
ffa02da4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa02da8:	0d 30       	R1 = R5;
ffa02daa:	00 e1 7c 03 	R0.L = 0x37c;		/* (892)	R0=0xff90037c(-7339140) */
ffa02dae:	ff e3 f9 f2 	CALL 0xffa013a0 <_printf_int>;
ffa02db2:	21 e1 1b 01 	R1 = 0x11b (X);		/*		R1=0x11b(283) */
ffa02db6:	0f 09       	CC = R7 <= R1;
ffa02db8:	fd b9       	P5 = [FP -0x4];
ffa02dba:	0c 18       	IF CC JUMP 0xffa02dd2 <_DHCP_rx+0x4a>;
ffa02dbc:	00 00       	NOP;
ffa02dbe:	00 00       	NOP;
ffa02dc0:	00 00       	NOP;
ffa02dc2:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa02dc4:	ff e3 8c f6 	CALL 0xffa01adc <_htons>;
ffa02dc8:	c0 42       	R0 = R0.L (Z);
ffa02dca:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa02dce:	08 08       	CC = R0 == R1;
ffa02dd0:	0f 18       	IF CC JUMP 0xffa02dee <_DHCP_rx+0x66>;
ffa02dd2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90037c(-7339140) */
ffa02dd6:	00 e1 60 03 	R0.L = 0x360;		/* (864)	R0=0xff900360(-7339168) */
ffa02dda:	ff e3 21 f2 	CALL 0xffa0121c <_printf_str>;
ffa02dde:	0e 64       	R6 += 0x1;		/* (  1) */
ffa02de0:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa02de2:	06 09       	CC = R6 <= R0;
ffa02de4:	d9 1f       	IF CC JUMP 0xffa02d96 <_DHCP_rx+0xe> (BP);
ffa02de6:	ff e3 cf f8 	CALL 0xffa01f84 <_DHCP_tx_discover>;
ffa02dea:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02dec:	d5 2f       	JUMP.S 0xffa02d96 <_DHCP_rx+0xe>;
ffa02dee:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa02df2:	ff e3 75 f6 	CALL 0xffa01adc <_htons>;
ffa02df6:	c0 42       	R0 = R0.L (Z);
ffa02df8:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa02dfc:	01 08       	CC = R1 == R0;
ffa02dfe:	f1 17       	IF !CC JUMP 0xffa02de0 <_DHCP_rx+0x58> (BP);
ffa02e00:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa02e04:	ff e3 6c f6 	CALL 0xffa01adc <_htons>;
ffa02e08:	c0 42       	R0 = R0.L (Z);
ffa02e0a:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa02e0e:	01 08       	CC = R1 == R0;
ffa02e10:	e8 17       	IF !CC JUMP 0xffa02de0 <_DHCP_rx+0x58> (BP);
ffa02e12:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa02e16:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa02e1a:	11 91       	R1 = [P2];
ffa02e1c:	28 a3       	R0 = [P5 + 0x30];
ffa02e1e:	08 08       	CC = R0 == R1;
ffa02e20:	e0 17       	IF !CC JUMP 0xffa02de0 <_DHCP_rx+0x58> (BP);
ffa02e22:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa02e26:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa02e2a:	ff e3 65 f6 	CALL 0xffa01af4 <_htonl>;
ffa02e2e:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa02e32:	01 08       	CC = R1 == R0;
ffa02e34:	d6 17       	IF !CC JUMP 0xffa02de0 <_DHCP_rx+0x58> (BP);
ffa02e36:	4d 30       	R1 = P5;
ffa02e38:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa02e3c:	01 50       	R0 = R1 + R0;
ffa02e3e:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa02e42:	f0 bb 00 00 
ffa02e46:	ff e3 c3 f8 	CALL 0xffa01fcc <_DHCP_parse>;
ffa02e4a:	e9 a3       	R1 = [P5 + 0x3c];
ffa02e4c:	01 0c       	CC = R1 == 0x0;
ffa02e4e:	12 1c       	IF CC JUMP 0xffa02e72 <_DHCP_rx+0xea> (BP);
ffa02e50:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa02e54:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetOurIP> */
ffa02e58:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa02e5c:	11 93       	[P2] = R1;
ffa02e5e:	00 e1 50 03 	R0.L = 0x350;		/* (848)	R0=0xff900350(-7339184) */
ffa02e62:	ff e3 41 f3 	CALL 0xffa014e4 <_printf_ip>;
ffa02e66:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900350(-7339184) */
ffa02e6a:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa02e6e:	ff e3 d7 f1 	CALL 0xffa0121c <_printf_str>;
ffa02e72:	01 e8 00 00 	UNLINK;
ffa02e76:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e78:	a5 05       	(R7:4, P5:5) = [SP++];
ffa02e7a:	10 00       	RTS;

ffa02e7c <_DHCP_req>:
ffa02e7c:	c5 04       	[--SP] = (P5:5);
ffa02e7e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ec8 <_rxbuf> */
ffa02e82:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02e86:	0d e1 ac 0e 	P5.L = 0xeac;		/* (3756)	P5=0xff900eac <_NetDHCPserv> */
ffa02e8a:	ff e3 7d f8 	CALL 0xffa01f84 <_DHCP_tx_discover>;
ffa02e8e:	ff e3 7d ff 	CALL 0xffa02d88 <_DHCP_rx>;
ffa02e92:	29 91       	R1 = [P5];
ffa02e94:	39 0c       	CC = R1 == -0x1;
ffa02e96:	42 18       	IF CC JUMP 0xffa02f1a <_DHCP_req+0x9e>;
ffa02e98:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetOurIP> */
ffa02e9c:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetOurIP> */
ffa02ea0:	10 91       	R0 = [P2];
ffa02ea2:	00 0c       	CC = R0 == 0x0;
ffa02ea4:	08 18       	IF CC JUMP 0xffa02eb4 <_DHCP_req+0x38>;
ffa02ea6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetOurIP> */
ffa02eaa:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetSubnetMask> */
ffa02eae:	10 91       	R0 = [P2];
ffa02eb0:	00 0c       	CC = R0 == 0x0;
ffa02eb2:	2f 10       	IF !CC JUMP 0xffa02f10 <_DHCP_req+0x94>;
ffa02eb4:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa02eb6:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa02eba:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ebc:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa02ec0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02ec2:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa02ec6:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02ec8:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02ecc:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02ece:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa02ed2:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa02ed6:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa02eda:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa02ede:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa02ee2:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa02ee6:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa02eea:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02eec:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa02ef0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa02ef4:	00 e1 ac 03 	R0.L = 0x3ac;		/* (940)	R0=0xff9003ac(-7339092) */
ffa02ef8:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa02efc:	ff e3 90 f1 	CALL 0xffa0121c <_printf_str>;
ffa02f00:	4f 30       	R1 = FP;
ffa02f02:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02f04:	a1 67       	R1 += -0xc;		/* (-12) */
ffa02f06:	2a 91       	R2 = [P5];
ffa02f08:	ff e3 4e f7 	CALL 0xffa01da4 <_DHCP_tx>;
ffa02f0c:	ff e3 3e ff 	CALL 0xffa02d88 <_DHCP_rx>;
ffa02f10:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f12:	01 e8 00 00 	UNLINK;
ffa02f16:	85 04       	(P5:5) = [SP++];
ffa02f18:	10 00       	RTS;
ffa02f1a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02f1e:	00 e1 90 03 	R0.L = 0x390;		/* (912)	R0=0xff900390(-7339120) */
ffa02f22:	ff e3 7d f1 	CALL 0xffa0121c <_printf_str>;
ffa02f26:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02f28:	f5 2f       	JUMP.S 0xffa02f12 <_DHCP_req+0x96>;
	...

ffa02f2c <_bfin_EMAC_recv>:
ffa02f2c:	eb 05       	[--SP] = (R7:5, P5:3);
ffa02f2e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900ee8 <_NetDataDestIP> */
ffa02f32:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000 <_l1_data_a>(-7340032) */
ffa02f36:	0c e1 c4 0e 	P4.L = 0xec4;		/* (3780)	P4=0xff900ec4 <_rxIdx> */
ffa02f3a:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00eb4(-4190540) */
ffa02f3e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02f42:	28 32       	P5 = R0;
ffa02f44:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02f46:	05 e1 c8 0e 	R5.L = 0xec8;		/* (3784)	R5=0xff900ec8 <_rxbuf>(-7336248) */
ffa02f4a:	74 30       	R6 = P4;
ffa02f4c:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa02f50:	0e 32       	P1 = R6;
ffa02f52:	08 95       	R0 = W[P1] (Z);
ffa02f54:	10 32       	P2 = R0;
ffa02f56:	0d 32       	P1 = R5;
ffa02f58:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02f5a:	52 91       	P2 = [P2];
ffa02f5c:	90 a2       	R0 = [P2 + 0x28];
ffa02f5e:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02f60:	46 18       	IF CC JUMP 0xffa02fec <_bfin_EMAC_recv+0xc0>;
ffa02f62:	00 00       	NOP;
ffa02f64:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f66:	a0 4f       	R0 <<= 0x14;
ffa02f68:	91 a2       	R1 = [P2 + 0x28];
ffa02f6a:	81 54       	R2 = R1 & R0;
ffa02f6c:	02 0c       	CC = R2 == 0x0;
ffa02f6e:	45 10       	IF !CC JUMP 0xffa02ff8 <_bfin_EMAC_recv+0xcc>;
ffa02f70:	00 00       	NOP;
ffa02f72:	00 00       	NOP;
ffa02f74:	00 00       	NOP;
ffa02f76:	90 a2       	R0 = [P2 + 0x28];
ffa02f78:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa02f7a:	4a 18       	IF CC JUMP 0xffa0300e <_bfin_EMAC_recv+0xe2>;
ffa02f7c:	00 00       	NOP;
ffa02f7e:	00 00       	NOP;
ffa02f80:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02f84:	91 a2       	R1 = [P2 + 0x28];
ffa02f86:	c1 55       	R7 = R1 & R0;
ffa02f88:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02f8a:	07 09       	CC = R7 <= R0;
ffa02f8c:	4c 18       	IF CC JUMP 0xffa03024 <_bfin_EMAC_recv+0xf8>;
ffa02f8e:	00 00       	NOP;
ffa02f90:	00 00       	NOP;
ffa02f92:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02f94:	90 a1       	R0 = [P2 + 0x18];
ffa02f96:	59 95       	R1 = W[P3] (X);
ffa02f98:	28 93       	[P5] = R0;
ffa02f9a:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02f9c:	08 56       	R0 = R0 | R1;
ffa02f9e:	18 97       	W[P3] = R0;
ffa02fa0:	61 95       	R1 = W[P4] (X);
ffa02fa2:	c8 42       	R0 = R1.L (Z);
ffa02fa4:	10 0d       	CC = R0 <= 0x2;
ffa02fa6:	92 b2       	[P2 + 0x28] = R2;
ffa02fa8:	1e 1c       	IF CC JUMP 0xffa02fe4 <_bfin_EMAC_recv+0xb8> (BP);
ffa02faa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02fac:	20 97       	W[P4] = R0;
ffa02fae:	28 91       	R0 = [P5];
ffa02fb0:	0f 30       	R1 = R7;
ffa02fb2:	00 e3 f9 00 	CALL 0xffa031a4 <_ARP_rx>;
ffa02fb6:	00 0c       	CC = R0 == 0x0;
ffa02fb8:	03 18       	IF CC JUMP 0xffa02fbe <_bfin_EMAC_recv+0x92>;
ffa02fba:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02fbc:	ca 2f       	JUMP.S 0xffa02f50 <_bfin_EMAC_recv+0x24>;
ffa02fbe:	28 91       	R0 = [P5];
ffa02fc0:	0f 30       	R1 = R7;
ffa02fc2:	ff e3 95 fa 	CALL 0xffa024ec <_icmp_rx>;
ffa02fc6:	00 0c       	CC = R0 == 0x0;
ffa02fc8:	f9 17       	IF !CC JUMP 0xffa02fba <_bfin_EMAC_recv+0x8e> (BP);
ffa02fca:	28 91       	R0 = [P5];
ffa02fcc:	0f 30       	R1 = R7;
ffa02fce:	00 e3 5b 04 	CALL 0xffa03884 <_tcp_rx>;
ffa02fd2:	00 0c       	CC = R0 == 0x0;
ffa02fd4:	f3 17       	IF !CC JUMP 0xffa02fba <_bfin_EMAC_recv+0x8e> (BP);
ffa02fd6:	07 0d       	CC = R7 <= 0x0;
ffa02fd8:	bc 1f       	IF CC JUMP 0xffa02f50 <_bfin_EMAC_recv+0x24> (BP);
ffa02fda:	01 e8 00 00 	UNLINK;
ffa02fde:	07 30       	R0 = R7;
ffa02fe0:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02fe2:	10 00       	RTS;
ffa02fe4:	01 30       	R0 = R1;
ffa02fe6:	08 64       	R0 += 0x1;		/* (  1) */
ffa02fe8:	20 97       	W[P4] = R0;
ffa02fea:	e2 2f       	JUMP.S 0xffa02fae <_bfin_EMAC_recv+0x82>;
ffa02fec:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02fee:	01 e8 00 00 	UNLINK;
ffa02ff2:	07 30       	R0 = R7;
ffa02ff4:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02ff6:	10 00       	RTS;
ffa02ff8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02ffc:	00 e1 c0 03 	R0.L = 0x3c0;		/* (960)	R0=0xff9003c0(-7339072) */
ffa03000:	ff e3 0e f1 	CALL 0xffa0121c <_printf_str>;
ffa03004:	01 e8 00 00 	UNLINK;
ffa03008:	07 30       	R0 = R7;
ffa0300a:	ab 05       	(R7:5, P5:3) = [SP++];
ffa0300c:	10 00       	RTS;
ffa0300e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003c0(-7339072) */
ffa03012:	00 e1 dc 03 	R0.L = 0x3dc;		/* (988)	R0=0xff9003dc(-7339044) */
ffa03016:	ff e3 03 f1 	CALL 0xffa0121c <_printf_str>;
ffa0301a:	01 e8 00 00 	UNLINK;
ffa0301e:	07 30       	R0 = R7;
ffa03020:	ab 05       	(R7:5, P5:3) = [SP++];
ffa03022:	10 00       	RTS;
ffa03024:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003dc(-7339044) */
ffa03028:	00 e1 f0 03 	R0.L = 0x3f0;		/* (1008)	R0=0xff9003f0(-7339024) */
ffa0302c:	ff e3 f8 f0 	CALL 0xffa0121c <_printf_str>;
ffa03030:	01 e8 00 00 	UNLINK;
ffa03034:	07 30       	R0 = R7;
ffa03036:	ab 05       	(R7:5, P5:3) = [SP++];
ffa03038:	10 00       	RTS;
	...

ffa0303c <_ARP_init>:
ffa0303c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetSubnetMask> */
ffa03040:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03044:	0a e1 f0 0e 	P2.L = 0xef0;		/* (3824)	P2=0xff900ef0 <_NetArpLut> */
ffa03048:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0304a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0304c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0304e:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa03050:	b2 e0 12 10 	LSETUP(0xffa03054 <_ARP_init+0x18>, 0xffa03074 <_ARP_init+0x38>) LC1 = P1;
ffa03054:	11 93       	[P2] = R1;
ffa03056:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa0305a:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa0305e:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa03062:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa03066:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa0306a:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa0306e:	52 b5       	W[P2 + 0xa] = R2;
ffa03070:	d1 b0       	[P2 + 0xc] = R1;
ffa03072:	11 b1       	[P2 + 0x10] = R1;
ffa03074:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa03076:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ef0 <_NetArpLut> */
ffa0307a:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa0307e:	0a e1 ec 0e 	P2.L = 0xeec;		/* (3820)	P2=0xff900eec <_NetArpLut_age> */
ffa03082:	10 97       	W[P2] = R0;
ffa03084:	01 e8 00 00 	UNLINK;
ffa03088:	10 00       	RTS;
	...

ffa0308c <_ARP_lut_find>:
ffa0308c:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900eb0 <_txIdx> */
ffa03090:	08 e1 f0 0e 	P0.L = 0xef0;		/* (3824)	P0=0xff900ef0 <_NetArpLut> */
ffa03094:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03098:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0309a:	48 32       	P1 = P0;
ffa0309c:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa0309e:	b2 e0 06 20 	LSETUP(0xffa030a2 <_ARP_lut_find+0x16>, 0xffa030aa <_ARP_lut_find+0x1e>) LC1 = P2;
ffa030a2:	08 91       	R0 = [P1];
ffa030a4:	00 0c       	CC = R0 == 0x0;
ffa030a6:	14 18       	IF CC JUMP 0xffa030ce <_ARP_lut_find+0x42>;
ffa030a8:	0a 64       	R2 += 0x1;		/* (  1) */
ffa030aa:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa030ac:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa030b0:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa030b2:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa030b4:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa030b6:	09 e1 0e 0f 	P1.L = 0xf0e;		/* (3854)	P1=0xff900f0e */
ffa030ba:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa030bc:	b2 e0 08 20 	LSETUP(0xffa030c0 <_ARP_lut_find+0x34>, 0xffa030cc <_ARP_lut_find+0x40>) LC1 = P2;
ffa030c0:	08 95       	R0 = W[P1] (Z);
ffa030c2:	03 09       	CC = R3 <= R0;
ffa030c4:	03 18       	IF CC JUMP 0xffa030ca <_ARP_lut_find+0x3e>;
ffa030c6:	11 30       	R2 = R1;
ffa030c8:	18 30       	R3 = R0;
ffa030ca:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa030cc:	09 64       	R1 += 0x1;		/* (  1) */
ffa030ce:	02 30       	R0 = R2;
ffa030d0:	01 e8 00 00 	UNLINK;
ffa030d4:	10 00       	RTS;
	...

ffa030d8 <_ARP_lut_add>:
ffa030d8:	f5 05       	[--SP] = (R7:6, P5:5);
ffa030da:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900eac <_NetDHCPserv> */
ffa030de:	0d e1 f0 0e 	P5.L = 0xef0;		/* (3824)	P5=0xff900ef0 <_NetArpLut> */
ffa030e2:	31 30       	R6 = R1;
ffa030e4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa030e8:	38 30       	R7 = R0;
ffa030ea:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa030ec:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa030ee:	4d 32       	P1 = P5;
ffa030f0:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa030f2:	00 00       	NOP;
ffa030f4:	08 91       	R0 = [P1];
ffa030f6:	07 08       	CC = R7 == R0;
ffa030f8:	11 07       	IF CC R2 = R1;
ffa030fa:	09 64       	R1 += 0x1;		/* (  1) */
ffa030fc:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa030fe:	42 0c       	CC = P2 == 0x0;
ffa03100:	23 10       	IF !CC JUMP 0xffa03146 <_ARP_lut_add+0x6e>;
ffa03102:	82 0c       	CC = R2 < 0x0;
ffa03104:	25 18       	IF CC JUMP 0xffa0314e <_ARP_lut_add+0x76>;
ffa03106:	82 c6 12 82 	R1 = R2 << 0x2;
ffa0310a:	0a 32       	P1 = R2;
ffa0310c:	11 32       	P2 = R1;
ffa0310e:	06 32       	P0 = R6;
ffa03110:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa03112:	6a 5a       	P1 = P2 + P5;
ffa03114:	22 6c       	P2 += 0x4;		/* (  4) */
ffa03116:	0f 93       	[P1] = R7;
ffa03118:	aa 5a       	P2 = P2 + P5;
ffa0311a:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa0311c:	b2 e0 03 10 	LSETUP(0xffa03120 <_ARP_lut_add+0x48>, 0xffa03122 <_ARP_lut_add+0x4a>) LC1 = P1;
ffa03120:	40 98       	R0 = B[P0++] (X);
ffa03122:	10 9a       	B[P2++] = R0;
ffa03124:	51 41       	R1 = (R1 + R2) << 0x2;
ffa03126:	09 32       	P1 = R1;
ffa03128:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa0312c:	0a e1 ec 0e 	P2.L = 0xeec;		/* (3820)	P2=0xff900eec <_NetArpLut_age> */
ffa03130:	50 95       	R0 = W[P2] (X);
ffa03132:	08 64       	R0 += 0x1;		/* (  1) */
ffa03134:	10 97       	W[P2] = R0;
ffa03136:	a9 5a       	P2 = P1 + P5;
ffa03138:	50 b5       	W[P2 + 0xa] = R0;
ffa0313a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0313c:	10 b1       	[P2 + 0x10] = R0;
ffa0313e:	01 e8 00 00 	UNLINK;
ffa03142:	b5 05       	(R7:6, P5:5) = [SP++];
ffa03144:	10 00       	RTS;
ffa03146:	82 0c       	CC = R2 < 0x0;
ffa03148:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa0314a:	d4 1f       	IF CC JUMP 0xffa030f2 <_ARP_lut_add+0x1a> (BP);
ffa0314c:	dd 2f       	JUMP.S 0xffa03106 <_ARP_lut_add+0x2e>;
ffa0314e:	ff e3 9f ff 	CALL 0xffa0308c <_ARP_lut_find>;
ffa03152:	10 30       	R2 = R0;
ffa03154:	d9 2f       	JUMP.S 0xffa03106 <_ARP_lut_add+0x2e>;
	...

ffa03158 <_ARP_lu>:
ffa03158:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa0315c:	c4 04       	[--SP] = (P5:4);
ffa0315e:	09 e1 f0 0e 	P1.L = 0xef0;		/* (3824)	P1=0xff900ef0 <_NetArpLut> */
ffa03162:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03166:	10 30       	R2 = R0;
ffa03168:	29 32       	P5 = R1;
ffa0316a:	61 32       	P4 = P1;
ffa0316c:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa0316e:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa03170:	b2 e0 06 20 	LSETUP(0xffa03174 <_ARP_lu+0x1c>, 0xffa0317c <_ARP_lu+0x24>) LC1 = P2;
ffa03174:	08 91       	R0 = [P1];
ffa03176:	10 08       	CC = R0 == R2;
ffa03178:	08 18       	IF CC JUMP 0xffa03188 <_ARP_lu+0x30>;
ffa0317a:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa0317c:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa0317e:	01 e8 00 00 	UNLINK;
ffa03182:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03184:	84 04       	(P5:4) = [SP++];
ffa03186:	10 00       	RTS;
ffa03188:	08 a1       	R0 = [P1 + 0x10];
ffa0318a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0318c:	f7 1f       	IF CC JUMP 0xffa0317a <_ARP_lu+0x22> (BP);
ffa0318e:	60 5a       	P1 = P0 + P4;
ffa03190:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa03192:	b2 e0 03 20 	LSETUP(0xffa03196 <_ARP_lu+0x3e>, 0xffa03198 <_ARP_lu+0x40>) LC1 = P2;
ffa03196:	48 98       	R0 = B[P1++] (X);
ffa03198:	28 9a       	B[P5++] = R0;
ffa0319a:	01 e8 00 00 	UNLINK;
ffa0319e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa031a0:	84 04       	(P5:4) = [SP++];
ffa031a2:	10 00       	RTS;

ffa031a4 <_ARP_rx>:
ffa031a4:	fb 05       	[--SP] = (R7:7, P5:3);
ffa031a6:	20 32       	P4 = R0;
ffa031a8:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa031ac:	39 30       	R7 = R1;
ffa031ae:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa031b0:	ff e3 96 f4 	CALL 0xffa01adc <_htons>;
ffa031b4:	c0 42       	R0 = R0.L (Z);
ffa031b6:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa031ba:	08 08       	CC = R0 == R1;
ffa031bc:	06 18       	IF CC JUMP 0xffa031c8 <_ARP_rx+0x24>;
ffa031be:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa031c0:	01 e8 00 00 	UNLINK;
ffa031c4:	bb 05       	(R7:7, P5:3) = [SP++];
ffa031c6:	10 00       	RTS;
ffa031c8:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa031ca:	07 0a       	CC = R7 <= R0 (IU);
ffa031cc:	f9 1f       	IF CC JUMP 0xffa031be <_ARP_rx+0x1a> (BP);
ffa031ce:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa031d0:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa031d2:	ff e3 85 f4 	CALL 0xffa01adc <_htons>;
ffa031d6:	c0 42       	R0 = R0.L (Z);
ffa031d8:	07 08       	CC = R7 == R0;
ffa031da:	f2 17       	IF !CC JUMP 0xffa031be <_ARP_rx+0x1a> (BP);
ffa031dc:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa031e0:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa031e2:	ff e3 7d f4 	CALL 0xffa01adc <_htons>;
ffa031e6:	c0 42       	R0 = R0.L (Z);
ffa031e8:	07 08       	CC = R7 == R0;
ffa031ea:	ea 17       	IF !CC JUMP 0xffa031be <_ARP_rx+0x1a> (BP);
ffa031ec:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa031ee:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa031f2:	08 08       	CC = R0 == R1;
ffa031f4:	e5 17       	IF !CC JUMP 0xffa031be <_ARP_rx+0x1a> (BP);
ffa031f6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa031f8:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa031fa:	ff e3 71 f4 	CALL 0xffa01adc <_htons>;
ffa031fe:	c0 42       	R0 = R0.L (Z);
ffa03200:	07 08       	CC = R7 == R0;
ffa03202:	0c 14       	IF !CC JUMP 0xffa0321a <_ARP_rx+0x76> (BP);
ffa03204:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa03208:	0a e1 d8 0e 	P2.L = 0xed8;		/* (3800)	P2=0xff900ed8 <_NetOurMAC> */
ffa0320c:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa03210:	10 99       	R0 = B[P2] (Z);
ffa03212:	01 08       	CC = R1 == R0;
ffa03214:	ae 18       	IF CC JUMP 0xffa03370 <_ARP_rx+0x1cc>;
ffa03216:	00 00       	NOP;
ffa03218:	00 00       	NOP;
ffa0321a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0321c:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa0321e:	ff e3 5f f4 	CALL 0xffa01adc <_htons>;
ffa03222:	c0 42       	R0 = R0.L (Z);
ffa03224:	07 08       	CC = R7 == R0;
ffa03226:	cc 17       	IF !CC JUMP 0xffa031be <_ARP_rx+0x1a> (BP);
ffa03228:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa0322c:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa0322e:	ff e3 57 f4 	CALL 0xffa01adc <_htons>;
ffa03232:	c0 42       	R0 = R0.L (Z);
ffa03234:	07 08       	CC = R7 == R0;
ffa03236:	c4 17       	IF !CC JUMP 0xffa031be <_ARP_rx+0x1a> (BP);
ffa03238:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa0323a:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa0323e:	08 08       	CC = R0 == R1;
ffa03240:	bf 17       	IF !CC JUMP 0xffa031be <_ARP_rx+0x1a> (BP);
ffa03242:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03244:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa03246:	ff e3 4b f4 	CALL 0xffa01adc <_htons>;
ffa0324a:	c0 42       	R0 = R0.L (Z);
ffa0324c:	07 08       	CC = R7 == R0;
ffa0324e:	b8 17       	IF !CC JUMP 0xffa031be <_ARP_rx+0x1a> (BP);
ffa03250:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa03254:	07 e1 e4 0e 	R7.L = 0xee4;		/* (3812)	R7=0xff900ee4 <_NetOurIP>(-7336220) */
ffa03258:	17 32       	P2 = R7;
ffa0325a:	a1 a2       	R1 = [P4 + 0x28];
ffa0325c:	10 91       	R0 = [P2];
ffa0325e:	01 08       	CC = R1 == R0;
ffa03260:	af 17       	IF !CC JUMP 0xffa031be <_ARP_rx+0x1a> (BP);
ffa03262:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed8 <_NetOurMAC> */
ffa03266:	0a e1 b0 0e 	P2.L = 0xeb0;		/* (3760)	P2=0xff900eb0 <_txIdx> */
ffa0326a:	10 95       	R0 = W[P2] (Z);
ffa0326c:	10 32       	P2 = R0;
ffa0326e:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900ef0 <_NetArpLut> */
ffa03272:	09 e1 b4 0e 	P1.L = 0xeb4;		/* (3764)	P1=0xff900eb4 <_txbuf> */
ffa03276:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa03278:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ef0 <_NetArpLut> */
ffa0327c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0327e:	52 91       	P2 = [P2];
ffa03280:	0d e1 d8 0e 	P5.L = 0xed8;		/* (3800)	P5=0xff900ed8 <_NetOurMAC> */
ffa03284:	93 ad       	P3 = [P2 + 0x18];
ffa03286:	18 97       	W[P3] = R0;
ffa03288:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa0328c:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa03290:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa03294:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa03298:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa0329c:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa032a0:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa032a4:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa032a8:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa032ac:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa032b0:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa032b4:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa032b8:	68 99       	R0 = B[P5] (X);
ffa032ba:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa032be:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa032c2:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa032c6:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa032ca:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa032ce:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa032d2:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa032d6:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa032da:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa032de:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa032e2:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa032e6:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa032ea:	ff e3 f9 f3 	CALL 0xffa01adc <_htons>;
ffa032ee:	d8 b5       	W[P3 + 0xe] = R0;
ffa032f0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa032f2:	ff e3 f5 f3 	CALL 0xffa01adc <_htons>;
ffa032f6:	18 b6       	W[P3 + 0x10] = R0;
ffa032f8:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa032fc:	ff e3 f0 f3 	CALL 0xffa01adc <_htons>;
ffa03300:	58 b6       	W[P3 + 0x12] = R0;
ffa03302:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03304:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa03308:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0330a:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa0330e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03310:	ff e3 e6 f3 	CALL 0xffa01adc <_htons>;
ffa03314:	44 32       	P0 = P4;
ffa03316:	d8 b6       	W[P3 + 0x16] = R0;
ffa03318:	53 32       	P2 = P3;
ffa0331a:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa0331c:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa0331e:	b2 e0 08 10 	LSETUP(0xffa03322 <_ARP_rx+0x17e>, 0xffa0332e <_ARP_rx+0x18a>) LC1 = P1;
ffa03322:	68 98       	R0 = B[P5++] (X);
ffa03324:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa03328:	40 98       	R0 = B[P0++] (X);
ffa0332a:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa0332e:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa03330:	17 32       	P2 = R7;
ffa03332:	50 99       	R0 = B[P2] (X);
ffa03334:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa03338:	10 91       	R0 = [P2];
ffa0333a:	40 4e       	R0 >>= 0x8;
ffa0333c:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa03340:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa03344:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa03348:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa0334c:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa03350:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa03354:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa03358:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa0335c:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa03360:	f3 b0       	[SP + 0xc] = R3;
ffa03362:	ff e3 13 f3 	CALL 0xffa01988 <_FormatIPAddress>;
ffa03366:	98 b2       	[P3 + 0x28] = R0;
ffa03368:	ff e3 b0 f4 	CALL 0xffa01cc8 <_bfin_EMAC_send_nocopy>;
ffa0336c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0336e:	29 2f       	JUMP.S 0xffa031c0 <_ARP_rx+0x1c>;
ffa03370:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa03374:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa03378:	01 08       	CC = R1 == R0;
ffa0337a:	50 17       	IF !CC JUMP 0xffa0321a <_ARP_rx+0x76> (BP);
ffa0337c:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa03380:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa03384:	01 08       	CC = R1 == R0;
ffa03386:	4a 17       	IF !CC JUMP 0xffa0321a <_ARP_rx+0x76> (BP);
ffa03388:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa0338c:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa03390:	01 08       	CC = R1 == R0;
ffa03392:	44 17       	IF !CC JUMP 0xffa0321a <_ARP_rx+0x76> (BP);
ffa03394:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa03398:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa0339c:	01 08       	CC = R1 == R0;
ffa0339e:	3e 17       	IF !CC JUMP 0xffa0321a <_ARP_rx+0x76> (BP);
ffa033a0:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa033a4:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa033a8:	01 08       	CC = R1 == R0;
ffa033aa:	38 17       	IF !CC JUMP 0xffa0321a <_ARP_rx+0x76> (BP);
ffa033ac:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa033ae:	44 30       	R0 = P4;
ffa033b0:	ff e3 b6 f3 	CALL 0xffa01b1c <_pack4chars>;
ffa033b4:	38 30       	R7 = R0;
ffa033b6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa033ba:	0f 30       	R1 = R7;
ffa033bc:	00 e1 fc 04 	R0.L = 0x4fc;		/* (1276)	R0=0xff9004fc(-7338756) */
ffa033c0:	ff e3 92 f0 	CALL 0xffa014e4 <_printf_ip>;
ffa033c4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004fc(-7338756) */
ffa033c8:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa033cc:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa033ce:	ff e3 27 ef 	CALL 0xffa0121c <_printf_str>;
ffa033d2:	07 30       	R0 = R7;
ffa033d4:	4c 30       	R1 = P4;
ffa033d6:	ff e3 81 fe 	CALL 0xffa030d8 <_ARP_lut_add>;
ffa033da:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa033dc:	f2 2e       	JUMP.S 0xffa031c0 <_ARP_rx+0x1c>;
	...

ffa033e0 <_ARP_tx>:
ffa033e0:	fc 05       	[--SP] = (R7:7, P5:4);
ffa033e2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb0 <_txIdx> */
ffa033e6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa033ea:	0a e1 b0 0e 	P2.L = 0xeb0;		/* (3760)	P2=0xff900eb0 <_txIdx> */
ffa033ee:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa033f2:	10 95 00 00 
ffa033f6:	10 32       	P2 = R0;
ffa033f8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa033fc:	09 e1 b4 0e 	P1.L = 0xeb4;		/* (3764)	P1=0xff900eb4 <_txbuf> */
ffa03400:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa03402:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ed8 <_NetOurMAC> */
ffa03406:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03408:	52 91       	P2 = [P2];
ffa0340a:	0d e1 d8 0e 	P5.L = 0xed8;		/* (3800)	P5=0xff900ed8 <_NetOurMAC> */
ffa0340e:	94 ad       	P4 = [P2 + 0x18];
ffa03410:	20 97       	W[P4] = R0;
ffa03412:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03414:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa03418:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa0341c:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa03420:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa03424:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa03428:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa0342c:	68 99       	R0 = B[P5] (X);
ffa0342e:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa03432:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa03436:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa0343a:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa0343e:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa03442:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa03446:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa0344a:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa0344e:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa03452:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa03456:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa0345a:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa0345e:	ff e3 3f f3 	CALL 0xffa01adc <_htons>;
ffa03462:	e0 b5       	W[P4 + 0xe] = R0;
ffa03464:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03466:	ff e3 3b f3 	CALL 0xffa01adc <_htons>;
ffa0346a:	20 b6       	W[P4 + 0x10] = R0;
ffa0346c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03470:	ff e3 36 f3 	CALL 0xffa01adc <_htons>;
ffa03474:	60 b6       	W[P4 + 0x12] = R0;
ffa03476:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03478:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa0347c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0347e:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa03482:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03484:	ff e3 2c f3 	CALL 0xffa01adc <_htons>;
ffa03488:	e0 b6       	W[P4 + 0x16] = R0;
ffa0348a:	54 32       	P2 = P4;
ffa0348c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0348e:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa03490:	b2 e0 07 10 	LSETUP(0xffa03494 <_ARP_tx+0xb4>, 0xffa0349e <_ARP_tx+0xbe>) LC1 = P1;
ffa03494:	68 98       	R0 = B[P5++] (X);
ffa03496:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa0349a:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa0349e:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa034a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb0 <_txIdx> */
ffa034a4:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetOurIP> */
ffa034a8:	50 99       	R0 = B[P2] (X);
ffa034aa:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa034ae:	10 91       	R0 = [P2];
ffa034b0:	40 4e       	R0 >>= 0x8;
ffa034b2:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa034b6:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa034ba:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa034be:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa034c2:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa034c6:	a7 b2       	[P4 + 0x28] = R7;
ffa034c8:	01 e8 00 00 	UNLINK;
ffa034cc:	bc 05       	(R7:7, P5:4) = [SP++];
ffa034ce:	ff e2 fd f3 	JUMP.L 0xffa01cc8 <_bfin_EMAC_send_nocopy>;
	...

ffa034d4 <_ARP_req>:
ffa034d4:	ec 05       	[--SP] = (R7:5, P5:4);
ffa034d6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa034da:	38 30       	R7 = R0;
ffa034dc:	ff e3 3e fe 	CALL 0xffa03158 <_ARP_lu>;
ffa034e0:	00 0c       	CC = R0 == 0x0;
ffa034e2:	06 18       	IF CC JUMP 0xffa034ee <_ARP_req+0x1a>;
ffa034e4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034e6:	01 e8 00 00 	UNLINK;
ffa034ea:	ac 05       	(R7:5, P5:4) = [SP++];
ffa034ec:	10 00       	RTS;
ffa034ee:	ff e3 5d e6 	CALL 0xffa001a8 <_ustimer>;
ffa034f2:	41 e1 e3 38 	R1.H = 0x38e3;		/* (14563)	R1=0x38e30000(954400768) */
ffa034f6:	01 e1 39 8e 	R1.L = 0x8e39;		/* (-29127)	R1=0x38e38e39(954437177) */
ffa034fa:	80 c0 01 18 	A1 = R0.L * R1.L (FU);
ffa034fe:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa03502:	81 c0 01 86 	A1 += R0.H * R1.L, A0 = R0.H * R1.H (FU);
ffa03506:	81 c0 08 98 	A1 += R1.H * R0.L (FU);
ffa0350a:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa0350e:	0b c4 00 80 	A0 += A1;
ffa03512:	8b c0 00 38 	R0 = A0 (FU);
ffa03516:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900ec4 <_rxIdx> */
ffa0351a:	82 c6 f8 8d 	R6 = R0 >> 0x1;
ffa0351e:	0c e1 f0 0e 	P4.L = 0xef0;		/* (3824)	P4=0xff900ef0 <_NetArpLut> */
ffa03522:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa03526:	4c 32       	P1 = P4;
ffa03528:	46 51       	R5 = R6 + R0;
ffa0352a:	6c 32       	P5 = P4;
ffa0352c:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa0352e:	b2 e0 06 20 	LSETUP(0xffa03532 <_ARP_req+0x5e>, 0xffa0353a <_ARP_req+0x66>) LC1 = P2;
ffa03532:	08 91       	R0 = [P1];
ffa03534:	07 08       	CC = R7 == R0;
ffa03536:	21 18       	IF CC JUMP 0xffa03578 <_ARP_req+0xa4>;
ffa03538:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa0353a:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa0353c:	ff e3 a8 fd 	CALL 0xffa0308c <_ARP_lut_find>;
ffa03540:	10 32       	P2 = R0;
ffa03542:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03544:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa03548:	09 e1 ec 0e 	P1.L = 0xeec;		/* (3820)	P1=0xff900eec <_NetArpLut_age> */
ffa0354c:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa0354e:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa03550:	10 b1       	[P2 + 0x10] = R0;
ffa03552:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa03556:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa0355a:	17 93 00 00 
ffa0355e:	d0 b0       	[P2 + 0xc] = R0;
ffa03560:	48 95       	R0 = W[P1] (X);
ffa03562:	08 64       	R0 += 0x1;		/* (  1) */
ffa03564:	08 97       	W[P1] = R0;
ffa03566:	50 b5       	W[P2 + 0xa] = R0;
ffa03568:	07 30       	R0 = R7;
ffa0356a:	ff e3 3b ff 	CALL 0xffa033e0 <_ARP_tx>;
ffa0356e:	01 e8 00 00 	UNLINK;
ffa03572:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03574:	ac 05       	(R7:5, P5:4) = [SP++];
ffa03576:	10 00       	RTS;
ffa03578:	08 a1       	R0 = [P1 + 0x10];
ffa0357a:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa0357c:	de 1f       	IF CC JUMP 0xffa03538 <_ARP_req+0x64> (BP);
ffa0357e:	e8 a0       	R0 = [P5 + 0xc];
ffa03580:	86 09       	CC = R6 < R0 (IU);
ffa03582:	f6 1f       	IF CC JUMP 0xffa0356e <_ARP_req+0x9a> (BP);
ffa03584:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03588:	0f 30       	R1 = R7;
ffa0358a:	00 e1 20 05 	R0.L = 0x520;		/* (1312)	R0=0xff900520(-7338720) */
ffa0358e:	ff e3 ab ef 	CALL 0xffa014e4 <_printf_ip>;
ffa03592:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900520(-7338720) */
ffa03596:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa0359a:	ff e3 41 ee 	CALL 0xffa0121c <_printf_str>;
ffa0359e:	07 30       	R0 = R7;
ffa035a0:	ff e3 20 ff 	CALL 0xffa033e0 <_ARP_tx>;
ffa035a4:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa035a8:	ed b0 00 00 
ffa035ac:	9d 2f       	JUMP.S 0xffa034e6 <_ARP_req+0x12>;
	...

ffa035b0 <_tcp_length>:
ffa035b0:	c5 04       	[--SP] = (P5:5);
ffa035b2:	28 32       	P5 = R0;
ffa035b4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa035b8:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa035ba:	ff e3 91 f2 	CALL 0xffa01adc <_htons>;
ffa035be:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa035c2:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa035c4:	51 54       	R1 = R1 & R2;
ffa035c6:	11 4f       	R1 <<= 0x2;
ffa035c8:	c0 42       	R0 = R0.L (Z);
ffa035ca:	08 52       	R0 = R0 - R1;
ffa035cc:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa035d0:	11 4d       	R1 >>>= 0x2;
ffa035d2:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa035d4:	51 54       	R1 = R1 & R2;
ffa035d6:	01 e8 00 00 	UNLINK;
ffa035da:	08 52       	R0 = R0 - R1;
ffa035dc:	85 04       	(P5:5) = [SP++];
ffa035de:	10 00       	RTS;

ffa035e0 <_tcp_checksum_calc>:
ffa035e0:	08 32       	P1 = R0;
ffa035e2:	ed 05       	[--SP] = (R7:5, P5:5);
ffa035e4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa035e8:	28 32       	P5 = R0;
ffa035ea:	31 30       	R6 = R1;
ffa035ec:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa035ee:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa035f0:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa035f2:	b2 e0 03 20 	LSETUP(0xffa035f6 <_tcp_checksum_calc+0x16>, 0xffa035f8 <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa035f6:	08 94       	R0 = W[P1++] (Z);
ffa035f8:	45 51       	R5 = R5 + R0;
ffa035fa:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa035fe:	10 4e       	R0 >>= 0x2;
ffa03600:	06 50       	R0 = R6 + R0;
ffa03602:	c0 42       	R0 = R0.L (Z);
ffa03604:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa03608:	ff e3 6a f2 	CALL 0xffa01adc <_htons>;
ffa0360c:	47 4f       	R7 <<= 0x8;
ffa0360e:	c0 42       	R0 = R0.L (Z);
ffa03610:	c7 51       	R7 = R7 + R0;
ffa03612:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa03614:	ef 50       	R3 = R7 + R5;
ffa03616:	0d 1c       	IF CC JUMP 0xffa03630 <_tcp_checksum_calc+0x50> (BP);
ffa03618:	0e 32       	P1 = R6;
ffa0361a:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa0361e:	10 4e       	R0 >>= 0x2;
ffa03620:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa03622:	0e 64       	R6 += 0x1;		/* (  1) */
ffa03624:	a9 5a       	P2 = P1 + P5;
ffa03626:	08 32       	P1 = R0;
ffa03628:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0362a:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa0362c:	8a 5a       	P2 = P2 + P1;
ffa0362e:	10 9b       	B[P2] = R0;
ffa03630:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa03634:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03636:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa0363a:	71 50       	R1 = R1 + R6;
ffa0363c:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03640:	09 4d       	R1 >>>= 0x1;
ffa03642:	18 4e       	R0 >>= 0x3;
ffa03644:	41 50       	R1 = R1 + R0;
ffa03646:	01 0d       	CC = R1 <= 0x0;
ffa03648:	09 18       	IF CC JUMP 0xffa0365a <_tcp_checksum_calc+0x7a>;
ffa0364a:	55 32       	P2 = P5;
ffa0364c:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa0364e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa03650:	0a 64       	R2 += 0x1;		/* (  1) */
ffa03652:	10 94       	R0 = W[P2++] (Z);
ffa03654:	0a 08       	CC = R2 == R1;
ffa03656:	c3 50       	R3 = R3 + R0;
ffa03658:	fc 17       	IF !CC JUMP 0xffa03650 <_tcp_checksum_calc+0x70> (BP);
ffa0365a:	d8 42       	R0 = R3.L (Z);
ffa0365c:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa03660:	08 50       	R0 = R0 + R1;
ffa03662:	c0 43       	R0 =~ R0;
ffa03664:	01 e8 00 00 	UNLINK;
ffa03668:	c0 42       	R0 = R0.L (Z);
ffa0366a:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0366c:	10 00       	RTS;
	...

ffa03670 <_tcp_checksum_set>:
ffa03670:	c5 04       	[--SP] = (P5:5);
ffa03672:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa03676:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0367a:	0a e1 b0 0e 	P2.L = 0xeb0;		/* (3760)	P2=0xff900eb0 <_txIdx> */
ffa0367e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa03682:	10 95 00 00 
ffa03686:	10 32       	P2 = R0;
ffa03688:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900eec <_NetArpLut_age> */
ffa0368c:	09 e1 b4 0e 	P1.L = 0xeb4;		/* (3764)	P1=0xff900eb4 <_txbuf> */
ffa03690:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03692:	52 91       	P2 = [P2];
ffa03694:	95 ad       	P5 = [P2 + 0x18];
ffa03696:	45 30       	R0 = P5;
ffa03698:	ff e3 a4 ff 	CALL 0xffa035e0 <_tcp_checksum_calc>;
ffa0369c:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa036a0:	01 e8 00 00 	UNLINK;
ffa036a4:	85 04       	(P5:5) = [SP++];
ffa036a6:	10 00       	RTS;

ffa036a8 <_tcp_checksum_check>:
ffa036a8:	10 32       	P2 = R0;
ffa036aa:	78 05       	[--SP] = (R7:7);
ffa036ac:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa036b0:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa036b4:	ff e3 96 ff 	CALL 0xffa035e0 <_tcp_checksum_calc>;
ffa036b8:	0f 30       	R1 = R7;
ffa036ba:	c7 42       	R7 = R0.L (Z);
ffa036bc:	39 08       	CC = R1 == R7;
ffa036be:	19 18       	IF CC JUMP 0xffa036f0 <_tcp_checksum_check+0x48>;
ffa036c0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa036c4:	00 e1 40 05 	R0.L = 0x540;		/* (1344)	R0=0xff900540(-7338688) */
ffa036c8:	ff e3 10 ee 	CALL 0xffa012e8 <_printf_hex>;
ffa036cc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900540(-7338688) */
ffa036d0:	0f 30       	R1 = R7;
ffa036d2:	00 e1 5c 05 	R0.L = 0x55c;		/* (1372)	R0=0xff90055c(-7338660) */
ffa036d6:	ff e3 09 ee 	CALL 0xffa012e8 <_printf_hex>;
ffa036da:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90055c(-7338660) */
ffa036de:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa036e2:	ff e3 9d ed 	CALL 0xffa0121c <_printf_str>;
ffa036e6:	01 e8 00 00 	UNLINK;
ffa036ea:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa036ec:	38 05       	(R7:7) = [SP++];
ffa036ee:	10 00       	RTS;
ffa036f0:	01 e8 00 00 	UNLINK;
ffa036f4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa036f6:	38 05       	(R7:7) = [SP++];
ffa036f8:	10 00       	RTS;
	...

ffa036fc <_tcp_packet_setup>:
ffa036fc:	ed 05       	[--SP] = (R7:5, P5:5);
ffa036fe:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03702:	29 32       	P5 = R1;
ffa03704:	7f 30       	R7 = FP;
ffa03706:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa03708:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0370a:	f0 bb       	[FP -0x4] = R0;
ffa0370c:	07 30       	R0 = R7;
ffa0370e:	2a 30       	R5 = R2;
ffa03710:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa03714:	ff e3 54 f6 	CALL 0xffa023bc <_eth_header_setup>;
ffa03718:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa0371c:	68 99 00 00 
ffa03720:	80 0c       	CC = R0 < 0x0;
ffa03722:	14 18       	IF CC JUMP 0xffa0374a <_tcp_packet_setup+0x4e>;
ffa03724:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03726:	f0 b0       	[SP + 0xc] = R0;
ffa03728:	15 30       	R2 = R5;
ffa0372a:	01 30       	R0 = R1;
ffa0372c:	0f 30       	R1 = R7;
ffa0372e:	ff e3 0b f2 	CALL 0xffa01b44 <_ip_header_setup>;
ffa03732:	b9 a2       	R1 = [FP + 0x28];
ffa03734:	f1 b0       	[SP + 0xc] = R1;
ffa03736:	f9 a2       	R1 = [FP + 0x2c];
ffa03738:	31 b1       	[SP + 0x10] = R1;
ffa0373a:	72 43       	R2 = R6.B (Z);
ffa0373c:	0f 30       	R1 = R7;
ffa0373e:	ff e3 95 f2 	CALL 0xffa01c68 <_tcp_header_setup>;
ffa03742:	01 e8 00 00 	UNLINK;
ffa03746:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03748:	10 00       	RTS;
ffa0374a:	01 e8 00 00 	UNLINK;
ffa0374e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03750:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03752:	10 00       	RTS;

ffa03754 <_tcp_burst>:
ffa03754:	e3 05       	[--SP] = (R7:4, P5:3);
ffa03756:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa0375a:	78 b2       	[FP + 0x24] = R0;
ffa0375c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 */
ffa03760:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb0 <_txIdx> */
ffa03764:	7a a2       	R2 = [FP + 0x24];
ffa03766:	0b e1 d8 0f 	P3.L = 0xfd8;		/* (4056)	P3=0xff900fd8 <_g_httpHeaderLen> */
ffa0376a:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_g_httpContentLen> */
ffa0376e:	02 0d       	CC = R2 <= 0x0;
ffa03770:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa03774:	10 91 00 00 
ffa03778:	19 91       	R1 = [P3];
ffa0377a:	7e 18       	IF CC JUMP 0xffa03876 <_tcp_burst+0x122>;
ffa0377c:	41 50       	R1 = R1 + R0;
ffa0377e:	8f 09       	CC = R7 < R1 (IU);
ffa03780:	21 32       	P4 = R1;
ffa03782:	7a 10       	IF !CC JUMP 0xffa03876 <_tcp_burst+0x122>;
ffa03784:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa03786:	38 20       	JUMP.S 0xffa037f6 <_tcp_burst+0xa2>;
ffa03788:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa0378a:	18 91       	R0 = [P3];
ffa0378c:	07 52       	R0 = R7 - R0;
ffa0378e:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa03792:	08 50       	R0 = R0 + R1;
ffa03794:	16 30       	R2 = R6;
ffa03796:	0d 30       	R1 = R5;
ffa03798:	ff e3 ea ee 	CALL 0xffa0156c <_memcpy_>;
ffa0379c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900eb4 <_txbuf> */
ffa037a0:	09 e1 c4 0f 	P1.L = 0xfc4;		/* (4036)	P1=0xff900fc4 <_TcpSeqHttpStart> */
ffa037a4:	08 91       	R0 = [P1];
ffa037a6:	f7 51       	R7 = R7 + R6;
ffa037a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fdc <_g_httpContentLen> */
ffa037ac:	0a e1 bc 0f 	P2.L = 0xfbc;		/* (4028)	P2=0xff900fbc <_TcpSeqHost> */
ffa037b0:	07 50       	R0 = R7 + R0;
ffa037b2:	10 93       	[P2] = R0;
ffa037b4:	26 50       	R0 = R6 + R4;
ffa037b6:	ff e3 5d ff 	CALL 0xffa03670 <_tcp_checksum_set>;
ffa037ba:	ff e3 87 f2 	CALL 0xffa01cc8 <_bfin_EMAC_send_nocopy>;
ffa037be:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fbc <_TcpSeqHost> */
ffa037c2:	0a e1 c4 0e 	P2.L = 0xec4;		/* (3780)	P2=0xff900ec4 <_rxIdx> */
ffa037c6:	10 95       	R0 = W[P2] (Z);
ffa037c8:	10 32       	P2 = R0;
ffa037ca:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900fc4 <_TcpSeqHttpStart> */
ffa037ce:	09 e1 c8 0e 	P1.L = 0xec8;		/* (3784)	P1=0xff900ec8 <_rxbuf> */
ffa037d2:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa037d4:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa037d6:	52 91       	P2 = [P2];
ffa037d8:	90 a2       	R0 = [P2 + 0x28];
ffa037da:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa037dc:	07 1c       	IF CC JUMP 0xffa037ea <_tcp_burst+0x96> (BP);
ffa037de:	90 a2       	R0 = [P2 + 0x28];
ffa037e0:	4d 30       	R1 = P5;
ffa037e2:	7a a2       	R2 = [FP + 0x24];
ffa037e4:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa037e6:	11 50       	R0 = R1 + R2;
ffa037e8:	a8 06       	IF !CC P5 = R0;
ffa037ea:	79 ae       	P1 = [FP + 0x24];
ffa037ec:	69 09       	CC = P1 <= P5;
ffa037ee:	45 18       	IF CC JUMP 0xffa03878 <_tcp_burst+0x124>;
ffa037f0:	44 30       	R0 = P4;
ffa037f2:	87 09       	CC = R7 < R0 (IU);
ffa037f4:	42 10       	IF !CC JUMP 0xffa03878 <_tcp_burst+0x124>;
ffa037f6:	44 30       	R0 = P4;
ffa037f8:	b8 52       	R2 = R0 - R7;
ffa037fa:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa037fe:	0a 09       	CC = R2 <= R1;
ffa03800:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03802:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa03804:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900ec8 <_rxbuf> */
ffa03808:	08 06       	IF !CC R1 = R0;
ffa0380a:	09 e1 c4 0f 	P1.L = 0xfc4;		/* (4036)	P1=0xff900fc4 <_TcpSeqHttpStart> */
ffa0380e:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa03812:	07 cc 10 4c 	R6 = MIN (R2, R0) || R0 = [P1] || NOP;
ffa03816:	08 91 00 00 
ffa0381a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ec4 <_rxIdx> */
ffa0381e:	07 50       	R0 = R7 + R0;
ffa03820:	0a e1 bc 0f 	P2.L = 0xfbc;		/* (4028)	P2=0xff900fbc <_TcpSeqHost> */
ffa03824:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900fc4 <_TcpSeqHttpStart> */
ffa03828:	10 93       	[P2] = R0;
ffa0382a:	09 e1 c0 0f 	P1.L = 0xfc0;		/* (4032)	P1=0xff900fc0 <_TcpSeqClient> */
ffa0382e:	f1 b0       	[SP + 0xc] = R1;
ffa03830:	30 b1       	[SP + 0x10] = R0;
ffa03832:	08 91       	R0 = [P1];
ffa03834:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fbc <_TcpSeqHost> */
ffa03838:	70 b1       	[SP + 0x14] = R0;
ffa0383a:	0a e1 a8 0e 	P2.L = 0xea8;		/* (3752)	P2=0xff900ea8 <_NetDestIP> */
ffa0383e:	4f 30       	R1 = FP;
ffa03840:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R2 = [P2] || NOP;
ffa03844:	12 91 00 00 
ffa03848:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0384a:	ff e3 59 ff 	CALL 0xffa036fc <_tcp_packet_setup>;
ffa0384e:	28 30       	R5 = R0;
ffa03850:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03854:	00 0d       	CC = R0 <= 0x0;
ffa03856:	ca 1b       	IF CC JUMP 0xffa037ea <_tcp_burst+0x96>;
ffa03858:	18 91       	R0 = [P3];
ffa0385a:	38 0a       	CC = R0 <= R7 (IU);
ffa0385c:	96 1f       	IF CC JUMP 0xffa03788 <_tcp_burst+0x34> (BP);
ffa0385e:	38 53       	R4 = R0 - R7;
ffa03860:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03864:	07 50       	R0 = R7 + R0;
ffa03866:	0d 30       	R1 = R5;
ffa03868:	14 30       	R2 = R4;
ffa0386a:	ff e3 81 ee 	CALL 0xffa0156c <_memcpy_>;
ffa0386e:	65 51       	R5 = R5 + R4;
ffa03870:	a6 53       	R6 = R6 - R4;
ffa03872:	e7 51       	R7 = R7 + R4;
ffa03874:	8b 2f       	JUMP.S 0xffa0378a <_tcp_burst+0x36>;
ffa03876:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa03878:	01 e8 00 00 	UNLINK;
ffa0387c:	45 30       	R0 = P5;
ffa0387e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03880:	10 00       	RTS;
	...

ffa03884 <_tcp_rx>:
ffa03884:	e3 05       	[--SP] = (R7:4, P5:3);
ffa03886:	20 32       	P4 = R0;
ffa03888:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa0388c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03890:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa03892:	ff e3 25 f1 	CALL 0xffa01adc <_htons>;
ffa03896:	c0 42       	R0 = R0.L (Z);
ffa03898:	07 08       	CC = R7 == R0;
ffa0389a:	06 18       	IF CC JUMP 0xffa038a6 <_tcp_rx+0x22>;
ffa0389c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0389e:	01 e8 00 00 	UNLINK;
ffa038a2:	a3 05       	(R7:4, P5:3) = [SP++];
ffa038a4:	10 00       	RTS;
ffa038a6:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa038aa:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa038ac:	08 08       	CC = R0 == R1;
ffa038ae:	f7 17       	IF !CC JUMP 0xffa0389c <_tcp_rx+0x18> (BP);
ffa038b0:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa038b4:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa038b8:	ff e3 12 f1 	CALL 0xffa01adc <_htons>;
ffa038bc:	c0 42       	R0 = R0.L (Z);
ffa038be:	07 08       	CC = R7 == R0;
ffa038c0:	ee 17       	IF !CC JUMP 0xffa0389c <_tcp_rx+0x18> (BP);
ffa038c2:	44 30       	R0 = P4;
ffa038c4:	80 64       	R0 += 0x10;		/* ( 16) */
ffa038c6:	ff e3 85 f1 	CALL 0xffa01bd0 <_ip_header_checksum>;
ffa038ca:	40 43       	R0 = R0.B (Z);
ffa038cc:	00 0c       	CC = R0 == 0x0;
ffa038ce:	e7 1f       	IF CC JUMP 0xffa0389c <_tcp_rx+0x18> (BP);
ffa038d0:	4c 30       	R1 = P4;
ffa038d2:	41 64       	R1 += 0x8;		/* (  8) */
ffa038d4:	e0 a1       	R0 = [P4 + 0x1c];
ffa038d6:	ff e3 01 fc 	CALL 0xffa030d8 <_ARP_lut_add>;
ffa038da:	44 30       	R0 = P4;
ffa038dc:	ff e3 6a fe 	CALL 0xffa035b0 <_tcp_length>;
ffa038e0:	30 30       	R6 = R0;
ffa038e2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa038e6:	0e 30       	R1 = R6;
ffa038e8:	00 e1 6c 05 	R0.L = 0x56c;		/* (1388)	R0=0xff90056c(-7338644) */
ffa038ec:	ff e3 5a ed 	CALL 0xffa013a0 <_printf_int>;
ffa038f0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90056c(-7338644) */
ffa038f4:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa038f8:	ff e3 92 ec 	CALL 0xffa0121c <_printf_str>;
ffa038fc:	44 30       	R0 = P4;
ffa038fe:	0e 30       	R1 = R6;
ffa03900:	ff e3 d4 fe 	CALL 0xffa036a8 <_tcp_checksum_check>;
ffa03904:	40 43       	R0 = R0.B (Z);
ffa03906:	00 0c       	CC = R0 == 0x0;
ffa03908:	ca 1b       	IF CC JUMP 0xffa0389c <_tcp_rx+0x18>;
ffa0390a:	00 00       	NOP;
ffa0390c:	00 00       	NOP;
ffa0390e:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa03910:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03914:	48 43       	R0 = R1.B (Z);
ffa03916:	10 08       	CC = R0 == R2;
ffa03918:	f1 18       	IF CC JUMP 0xffa03afa <_tcp_rx+0x276>;
ffa0391a:	10 0c       	CC = R0 == 0x2;
ffa0391c:	0a 19       	IF CC JUMP 0xffa03b30 <_tcp_rx+0x2ac>;
ffa0391e:	48 43       	R0 = R1.B (Z);
ffa03920:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03922:	08 08       	CC = R0 == R1;
ffa03924:	85 18       	IF CC JUMP 0xffa03a2e <_tcp_rx+0x1aa>;
ffa03926:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03928:	ab 10       	IF !CC JUMP 0xffa03a7e <_tcp_rx+0x1fa>;
ffa0392a:	00 00       	NOP;
ffa0392c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900fd8 <_g_httpHeaderLen> */
ffa03930:	0b e1 c8 0f 	P3.L = 0xfc8;		/* (4040)	P3=0xff900fc8 <_TcpState> */
ffa03934:	00 00       	NOP;
ffa03936:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa0393a:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa0393c:	38 10       	IF !CC JUMP 0xffa039ac <_tcp_rx+0x128>;
ffa0393e:	18 91       	R0 = [P3];
ffa03940:	10 0c       	CC = R0 == 0x2;
ffa03942:	ad 17       	IF !CC JUMP 0xffa0389c <_tcp_rx+0x18> (BP);
ffa03944:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900000 <_l1_data_a>(-7340032) */
ffa03948:	a0 a2       	R0 = [P4 + 0x28];
ffa0394a:	04 e1 a8 0e 	R4.L = 0xea8;		/* (3752)	R4=0xff900ea8 <_NetDestIP>(-7336280) */
ffa0394e:	a5 e5 30 00 	R5 = B[P4 + 0x30] (X);
ffa03952:	ff e3 d1 f0 	CALL 0xffa01af4 <_htonl>;
ffa03956:	14 32       	P2 = R4;
ffa03958:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa0395c:	30 50       	R0 = R0 + R6;
ffa0395e:	0d e1 c0 0f 	P5.L = 0xfc0;		/* (4032)	P5=0xff900fc0 <_TcpSeqClient> */
ffa03962:	28 93       	[P5] = R0;
ffa03964:	e0 a1       	R0 = [P4 + 0x1c];
ffa03966:	10 93       	[P2] = R0;
ffa03968:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900fc8 <_TcpState> */
ffa0396c:	e0 a2       	R0 = [P4 + 0x2c];
ffa0396e:	0b e1 c4 0f 	P3.L = 0xfc4;		/* (4036)	P3=0xff900fc4 <_TcpSeqHttpStart> */
ffa03972:	ff e3 c1 f0 	CALL 0xffa01af4 <_htonl>;
ffa03976:	19 91       	R1 = [P3];
ffa03978:	c8 53       	R7 = R0 - R1;
ffa0397a:	a1 e4 31 00 	R1 = B[P4 + 0x31] (Z);
ffa0397e:	21 48       	CC = !BITTST (R1, 0x4);		/* bit  4 */
ffa03980:	1e 1d       	IF CC JUMP 0xffa03bbc <_tcp_rx+0x338> (BP);
ffa03982:	06 0c       	CC = R6 == 0x0;
ffa03984:	1c 15       	IF !CC JUMP 0xffa03bbc <_tcp_rx+0x338> (BP);
ffa03986:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea8 <_NetDestIP> */
ffa0398a:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpHeaderLen> */
ffa0398e:	10 91       	R0 = [P2];
ffa03990:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd8 <_g_httpHeaderLen> */
ffa03994:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_g_httpContentLen> */
ffa03998:	11 91       	R1 = [P2];
ffa0399a:	08 50       	R0 = R0 + R1;
ffa0399c:	07 08       	CC = R7 == R0;
ffa0399e:	46 18       	IF CC JUMP 0xffa03a2a <_tcp_rx+0x1a6>;
ffa039a0:	0f 30       	R1 = R7;
ffa039a2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa039a4:	ff e3 d8 fe 	CALL 0xffa03754 <_tcp_burst>;
ffa039a8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa039aa:	7a 2f       	JUMP.S 0xffa0389e <_tcp_rx+0x1a>;
ffa039ac:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa039ae:	1f 91       	R7 = [P3];
ffa039b0:	07 08       	CC = R7 == R0;
ffa039b2:	85 19       	IF CC JUMP 0xffa03cbc <_tcp_rx+0x438>;
ffa039b4:	07 0c       	CC = R7 == 0x0;
ffa039b6:	c4 17       	IF !CC JUMP 0xffa0393e <_tcp_rx+0xba> (BP);
ffa039b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa039bc:	00 e1 e8 05 	R0.L = 0x5e8;		/* (1512)	R0=0xff9005e8(-7338520) */
ffa039c0:	ff e3 2e ec 	CALL 0xffa0121c <_printf_str>;
ffa039c4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fdc <_g_httpContentLen> */
ffa039c8:	0a e1 e0 0f 	P2.L = 0xfe0;		/* (4064)	P2=0xff900fe0 <_g_httpRxed> */
ffa039cc:	17 93       	[P2] = R7;
ffa039ce:	a0 a2       	R0 = [P4 + 0x28];
ffa039d0:	ff e3 92 f0 	CALL 0xffa01af4 <_htonl>;
ffa039d4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fe0 <_g_httpRxed> */
ffa039d8:	0a e1 c0 0f 	P2.L = 0xfc0;		/* (4032)	P2=0xff900fc0 <_TcpSeqClient> */
ffa039dc:	10 93       	[P2] = R0;
ffa039de:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc0 <_TcpSeqClient> */
ffa039e2:	e2 a1       	R2 = [P4 + 0x1c];
ffa039e4:	0a e1 a8 0e 	P2.L = 0xea8;		/* (3752)	P2=0xff900ea8 <_NetDestIP> */
ffa039e8:	12 93       	[P2] = R2;
ffa039ea:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea8 <_NetDestIP> */
ffa039ee:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa039f2:	0a e1 d4 0f 	P2.L = 0xfd4;		/* (4052)	P2=0xff900fd4 <_TcpClientPort> */
ffa039f6:	11 97       	W[P2] = R1;
ffa039f8:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa039fa:	f1 b0       	[SP + 0xc] = R1;
ffa039fc:	4f 30       	R1 = FP;
ffa039fe:	30 b1       	[SP + 0x10] = R0;
ffa03a00:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03a02:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa03a06:	77 b1 00 00 
ffa03a0a:	ff e3 79 fe 	CALL 0xffa036fc <_tcp_packet_setup>;
ffa03a0e:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03a12:	00 0d       	CC = R0 <= 0x0;
ffa03a14:	95 1b       	IF CC JUMP 0xffa0393e <_tcp_rx+0xba>;
ffa03a16:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd4 <_TcpClientPort> */
ffa03a1a:	0a e1 c8 0f 	P2.L = 0xfc8;		/* (4040)	P2=0xff900fc8 <_TcpState> */
ffa03a1e:	17 93       	[P2] = R7;
ffa03a20:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a22:	ff e3 27 fe 	CALL 0xffa03670 <_tcp_checksum_set>;
ffa03a26:	ff e3 51 f1 	CALL 0xffa01cc8 <_bfin_EMAC_send_nocopy>;
ffa03a2a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03a2c:	39 2f       	JUMP.S 0xffa0389e <_tcp_rx+0x1a>;
ffa03a2e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900fc4 <_TcpSeqHttpStart> */
ffa03a32:	0b e1 c8 0f 	P3.L = 0xfc8;		/* (4040)	P3=0xff900fc8 <_TcpState> */
ffa03a36:	18 91       	R0 = [P3];
ffa03a38:	08 0c       	CC = R0 == 0x1;
ffa03a3a:	b9 17       	IF !CC JUMP 0xffa039ac <_tcp_rx+0x128> (BP);
ffa03a3c:	e0 a2       	R0 = [P4 + 0x2c];
ffa03a3e:	ff e3 5b f0 	CALL 0xffa01af4 <_htonl>;
ffa03a42:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc8 <_TcpState> */
ffa03a46:	0a e1 bc 0f 	P2.L = 0xfbc;		/* (4028)	P2=0xff900fbc <_TcpSeqHost> */
ffa03a4a:	11 91       	R1 = [P2];
ffa03a4c:	08 08       	CC = R0 == R1;
ffa03a4e:	42 19       	IF CC JUMP 0xffa03cd2 <_tcp_rx+0x44e>;
ffa03a50:	00 00       	NOP;
ffa03a52:	00 00       	NOP;
ffa03a54:	00 00       	NOP;
ffa03a56:	e0 a2       	R0 = [P4 + 0x2c];
ffa03a58:	ff e3 4e f0 	CALL 0xffa01af4 <_htonl>;
ffa03a5c:	08 30       	R1 = R0;
ffa03a5e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03a62:	00 e1 98 05 	R0.L = 0x598;		/* (1432)	R0=0xff900598(-7338600) */
ffa03a66:	ff e3 3f ed 	CALL 0xffa014e4 <_printf_ip>;
ffa03a6a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a6c:	18 93       	[P3] = R0;
ffa03a6e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03a72:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa03a76:	ff e3 d3 eb 	CALL 0xffa0121c <_printf_str>;
ffa03a7a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03a7c:	11 2f       	JUMP.S 0xffa0389e <_tcp_rx+0x1a>;
ffa03a7e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03a82:	00 e1 c4 05 	R0.L = 0x5c4;		/* (1476)	R0=0xff9005c4(-7338556) */
ffa03a86:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900ea8 <_NetDestIP>(-7336280) */
ffa03a8a:	ff e3 c9 eb 	CALL 0xffa0121c <_printf_str>;
ffa03a8e:	04 e1 a8 0e 	R4.L = 0xea8;		/* (3752)	R4=0xff900ea8 <_NetDestIP>(-7336280) */
ffa03a92:	a0 a2       	R0 = [P4 + 0x28];
ffa03a94:	ff e3 30 f0 	CALL 0xffa01af4 <_htonl>;
ffa03a98:	14 32       	P2 = R4;
ffa03a9a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fc0 <_TcpSeqClient> */
ffa03a9e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900fc8 <_TcpState> */
ffa03aa2:	0d e1 c0 0f 	P5.L = 0xfc0;		/* (4032)	P5=0xff900fc0 <_TcpSeqClient> */
ffa03aa6:	0b e1 c8 0f 	P3.L = 0xfc8;		/* (4040)	P3=0xff900fc8 <_TcpState> */
ffa03aaa:	28 93       	[P5] = R0;
ffa03aac:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa03ab0:	18 91 00 00 
ffa03ab4:	e2 a1       	R2 = [P4 + 0x1c];
ffa03ab6:	09 64       	R1 += 0x1;		/* (  1) */
ffa03ab8:	10 0c       	CC = R0 == 0x2;
ffa03aba:	12 93       	[P2] = R2;
ffa03abc:	29 93       	[P5] = R1;
ffa03abe:	03 18       	IF CC JUMP 0xffa03ac4 <_tcp_rx+0x240>;
ffa03ac0:	00 0c       	CC = R0 == 0x0;
ffa03ac2:	c0 14       	IF !CC JUMP 0xffa03c42 <_tcp_rx+0x3be> (BP);
ffa03ac4:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa03ac6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fbc <_TcpSeqHost> */
ffa03aca:	f0 b0       	[SP + 0xc] = R0;
ffa03acc:	0a e1 bc 0f 	P2.L = 0xfbc;		/* (4028)	P2=0xff900fbc <_TcpSeqHost> */
ffa03ad0:	10 91       	R0 = [P2];
ffa03ad2:	71 b1       	[SP + 0x14] = R1;
ffa03ad4:	4f 30       	R1 = FP;
ffa03ad6:	30 b1       	[SP + 0x10] = R0;
ffa03ad8:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03ada:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03adc:	ff e3 10 fe 	CALL 0xffa036fc <_tcp_packet_setup>;
ffa03ae0:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03ae4:	00 0d       	CC = R0 <= 0x0;
ffa03ae6:	ae 18       	IF CC JUMP 0xffa03c42 <_tcp_rx+0x3be>;
ffa03ae8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa03aea:	18 93       	[P3] = R0;
ffa03aec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03aee:	ff e3 c1 fd 	CALL 0xffa03670 <_tcp_checksum_set>;
ffa03af2:	ff e3 eb f0 	CALL 0xffa01cc8 <_bfin_EMAC_send_nocopy>;
ffa03af6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03af8:	d3 2e       	JUMP.S 0xffa0389e <_tcp_rx+0x1a>;
ffa03afa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03afe:	00 e1 80 05 	R0.L = 0x580;		/* (1408)	R0=0xff900580(-7338624) */
ffa03b02:	ff e3 8d eb 	CALL 0xffa0121c <_printf_str>;
ffa03b06:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fbc <_TcpSeqHost> */
ffa03b0a:	0a e1 c8 0f 	P2.L = 0xfc8;		/* (4040)	P2=0xff900fc8 <_TcpState> */
ffa03b0e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03b10:	17 93       	[P2] = R7;
ffa03b12:	a0 a2       	R0 = [P4 + 0x28];
ffa03b14:	ff e3 f0 ef 	CALL 0xffa01af4 <_htonl>;
ffa03b18:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc8 <_TcpState> */
ffa03b1c:	0a e1 c0 0f 	P2.L = 0xfc0;		/* (4032)	P2=0xff900fc0 <_TcpSeqClient> */
ffa03b20:	10 93       	[P2] = R0;
ffa03b22:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc0 <_TcpSeqClient> */
ffa03b26:	0a e1 e0 0f 	P2.L = 0xfe0;		/* (4064)	P2=0xff900fe0 <_g_httpRxed> */
ffa03b2a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03b2c:	17 93       	[P2] = R7;
ffa03b2e:	b8 2e       	JUMP.S 0xffa0389e <_tcp_rx+0x1a>;
ffa03b30:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03b34:	00 e1 8c 05 	R0.L = 0x58c;		/* (1420)	R0=0xff90058c(-7338612) */
ffa03b38:	ff e3 72 eb 	CALL 0xffa0121c <_printf_str>;
ffa03b3c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fc0 <_TcpSeqClient> */
ffa03b40:	a0 a2       	R0 = [P4 + 0x28];
ffa03b42:	ff e3 d9 ef 	CALL 0xffa01af4 <_htonl>;
ffa03b46:	0d e1 c0 0f 	P5.L = 0xfc0;		/* (4032)	P5=0xff900fc0 <_TcpSeqClient> */
ffa03b4a:	28 93       	[P5] = R0;
ffa03b4c:	44 30       	R0 = P4;
ffa03b4e:	ff e3 31 fd 	CALL 0xffa035b0 <_tcp_length>;
ffa03b52:	29 91       	R1 = [P5];
ffa03b54:	09 64       	R1 += 0x1;		/* (  1) */
ffa03b56:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fe0 <_g_httpRxed> */
ffa03b5a:	08 50       	R0 = R0 + R1;
ffa03b5c:	0a e1 d4 0f 	P2.L = 0xfd4;		/* (4052)	P2=0xff900fd4 <_TcpClientPort> */
ffa03b60:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03b64:	11 97       	W[P2] = R1;
ffa03b66:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd4 <_TcpClientPort> */
ffa03b6a:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa03b6e:	28 93 00 00 
ffa03b72:	0a e1 e0 0f 	P2.L = 0xfe0;		/* (4064)	P2=0xff900fe0 <_g_httpRxed> */
ffa03b76:	11 93       	[P2] = R1;
ffa03b78:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fe0 <_g_httpRxed> */
ffa03b7c:	e2 a1       	R2 = [P4 + 0x1c];
ffa03b7e:	0a e1 a8 0e 	P2.L = 0xea8;		/* (3752)	P2=0xff900ea8 <_NetDestIP> */
ffa03b82:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa03b84:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fc0 <_TcpSeqClient> */
ffa03b88:	12 93       	[P2] = R2;
ffa03b8a:	0d e1 bc 0f 	P5.L = 0xfbc;		/* (4028)	P5=0xff900fbc <_TcpSeqHost> */
ffa03b8e:	f1 b0       	[SP + 0xc] = R1;
ffa03b90:	29 91       	R1 = [P5];
ffa03b92:	31 b1       	[SP + 0x10] = R1;
ffa03b94:	4f 30       	R1 = FP;
ffa03b96:	70 b1       	[SP + 0x14] = R0;
ffa03b98:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03b9a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b9c:	ff e3 b0 fd 	CALL 0xffa036fc <_tcp_packet_setup>;
ffa03ba0:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03ba4:	00 0d       	CC = R0 <= 0x0;
ffa03ba6:	93 18       	IF CC JUMP 0xffa03ccc <_tcp_rx+0x448>;
ffa03ba8:	28 91       	R0 = [P5];
ffa03baa:	08 64       	R0 += 0x1;		/* (  1) */
ffa03bac:	28 93       	[P5] = R0;
ffa03bae:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03bb0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea8 <_NetDestIP> */
ffa03bb4:	0a e1 c8 0f 	P2.L = 0xfc8;		/* (4040)	P2=0xff900fc8 <_TcpState> */
ffa03bb8:	10 93       	[P2] = R0;
ffa03bba:	33 2f       	JUMP.S 0xffa03a20 <_tcp_rx+0x19c>;
ffa03bbc:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa03bc0:	28 54       	R0 = R0 & R5;
ffa03bc2:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa03bc4:	10 4d       	R0 >>>= 0x2;
ffa03bc6:	54 30       	R2 = P4;
ffa03bc8:	19 48       	CC = !BITTST (R1, 0x3);		/* bit  3 */
ffa03bca:	02 50       	R0 = R2 + R0;
ffa03bcc:	5d 1c       	IF CC JUMP 0xffa03c86 <_tcp_rx+0x402> (BP);
ffa03bce:	0e 30       	R1 = R6;
ffa03bd0:	00 e3 60 05 	CALL 0xffa04690 <_httpCollate>;
ffa03bd4:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fbc <_TcpSeqHost> */
ffa03bd8:	18 91       	R0 = [P3];
ffa03bda:	07 50       	R0 = R7 + R0;
ffa03bdc:	0d e1 bc 0f 	P5.L = 0xfbc;		/* (4028)	P5=0xff900fbc <_TcpSeqHost> */
ffa03be0:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900ef0 <_NetArpLut> */
ffa03be4:	28 93       	[P5] = R0;
ffa03be6:	0c e1 e0 0f 	P4.L = 0xfe0;		/* (4064)	P4=0xff900fe0 <_g_httpRxed> */
ffa03bea:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03bec:	80 4f       	R0 <<= 0x10;
ffa03bee:	21 91       	R1 = [P4];
ffa03bf0:	00 e3 26 03 	CALL 0xffa0423c <_httpResp>;
ffa03bf4:	00 0c       	CC = R0 == 0x0;
ffa03bf6:	22 1c       	IF CC JUMP 0xffa03c3a <_tcp_rx+0x3b6> (BP);
ffa03bf8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc8 <_TcpState> */
ffa03bfc:	28 91       	R0 = [P5];
ffa03bfe:	0a e1 c4 0f 	P2.L = 0xfc4;		/* (4036)	P2=0xff900fc4 <_TcpSeqHttpStart> */
ffa03c02:	10 93       	[P2] = R0;
ffa03c04:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc4 <_TcpSeqHttpStart> */
ffa03c08:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpHeaderLen> */
ffa03c0c:	11 91       	R1 = [P2];
ffa03c0e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd8 <_g_httpHeaderLen> */
ffa03c12:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_g_httpContentLen> */
ffa03c16:	10 91       	R0 = [P2];
ffa03c18:	41 50       	R1 = R1 + R0;
ffa03c1a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03c1e:	00 e1 04 06 	R0.L = 0x604;		/* (1540)	R0=0xff900604(-7338492) */
ffa03c22:	ff e3 bf eb 	CALL 0xffa013a0 <_printf_int>;
ffa03c26:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900604(-7338492) */
ffa03c2a:	00 e1 98 07 	R0.L = 0x798;		/* (1944)	R0=0xff900798(-7338088) */
ffa03c2e:	ff e3 f7 ea 	CALL 0xffa0121c <_printf_str>;
ffa03c32:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03c34:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03c36:	ff e3 8f fd 	CALL 0xffa03754 <_tcp_burst>;
ffa03c3a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c3c:	20 93       	[P4] = R0;
ffa03c3e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03c40:	2f 2e       	JUMP.S 0xffa0389e <_tcp_rx+0x1a>;
ffa03c42:	18 91       	R0 = [P3];
ffa03c44:	18 0c       	CC = R0 == 0x3;
ffa03c46:	77 16       	IF !CC JUMP 0xffa03934 <_tcp_rx+0xb0> (BP);
ffa03c48:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fdc <_g_httpContentLen> */
ffa03c4c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c4e:	0a e1 e0 0f 	P2.L = 0xfe0;		/* (4064)	P2=0xff900fe0 <_g_httpRxed> */
ffa03c52:	10 93       	[P2] = R0;
ffa03c54:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03c56:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fe0 <_g_httpRxed> */
ffa03c5a:	f0 b0       	[SP + 0xc] = R0;
ffa03c5c:	0a e1 bc 0f 	P2.L = 0xfbc;		/* (4028)	P2=0xff900fbc <_TcpSeqHost> */
ffa03c60:	10 91       	R0 = [P2];
ffa03c62:	14 32       	P2 = R4;
ffa03c64:	30 b1       	[SP + 0x10] = R0;
ffa03c66:	28 91       	R0 = [P5];
ffa03c68:	70 b1       	[SP + 0x14] = R0;
ffa03c6a:	4f 30       	R1 = FP;
ffa03c6c:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03c70:	12 91 00 00 
ffa03c74:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03c76:	ff e3 43 fd 	CALL 0xffa036fc <_tcp_packet_setup>;
ffa03c7a:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03c7e:	00 0d       	CC = R0 <= 0x0;
ffa03c80:	5a 1a       	IF CC JUMP 0xffa03934 <_tcp_rx+0xb0>;
ffa03c82:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03c84:	96 2f       	JUMP.S 0xffa03bb0 <_tcp_rx+0x32c>;
ffa03c86:	0e 30       	R1 = R6;
ffa03c88:	00 e3 04 05 	CALL 0xffa04690 <_httpCollate>;
ffa03c8c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03c8e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fbc <_TcpSeqHost> */
ffa03c92:	f0 b0       	[SP + 0xc] = R0;
ffa03c94:	0a e1 bc 0f 	P2.L = 0xfbc;		/* (4028)	P2=0xff900fbc <_TcpSeqHost> */
ffa03c98:	10 91       	R0 = [P2];
ffa03c9a:	14 32       	P2 = R4;
ffa03c9c:	30 b1       	[SP + 0x10] = R0;
ffa03c9e:	28 91       	R0 = [P5];
ffa03ca0:	70 b1       	[SP + 0x14] = R0;
ffa03ca2:	4f 30       	R1 = FP;
ffa03ca4:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03ca8:	12 91 00 00 
ffa03cac:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03cae:	ff e3 27 fd 	CALL 0xffa036fc <_tcp_packet_setup>;
ffa03cb2:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03cb6:	00 0d       	CC = R0 <= 0x0;
ffa03cb8:	b4 16       	IF !CC JUMP 0xffa03a20 <_tcp_rx+0x19c> (BP);
ffa03cba:	f1 2d       	JUMP.S 0xffa0389c <_tcp_rx+0x18>;
ffa03cbc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa03cc0:	00 e1 d4 05 	R0.L = 0x5d4;		/* (1492)	R0=0xff9005d4(-7338540) */
ffa03cc4:	ff e3 ac ea 	CALL 0xffa0121c <_printf_str>;
ffa03cc8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03cca:	ea 2d       	JUMP.S 0xffa0389e <_tcp_rx+0x1a>;
ffa03ccc:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03cd0:	27 2e       	JUMP.S 0xffa0391e <_tcp_rx+0x9a>;
ffa03cd2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03cd4:	18 93       	[P3] = R0;
ffa03cd6:	a0 a2       	R0 = [P4 + 0x28];
ffa03cd8:	ff e3 0e ef 	CALL 0xffa01af4 <_htonl>;
ffa03cdc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fbc <_TcpSeqHost> */
ffa03ce0:	0a e1 c0 0f 	P2.L = 0xfc0;		/* (4032)	P2=0xff900fc0 <_TcpSeqClient> */
ffa03ce4:	10 93       	[P2] = R0;
ffa03ce6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa03cea:	00 e1 b4 05 	R0.L = 0x5b4;		/* (1460)	R0=0xff9005b4(-7338572) */
ffa03cee:	ff e3 97 ea 	CALL 0xffa0121c <_printf_str>;
ffa03cf2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03cf4:	d5 2d       	JUMP.S 0xffa0389e <_tcp_rx+0x1a>;
	...

ffa03cf8 <_htmlForm>:
ffa03cf8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03cfc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa03d00:	02 e1 20 06 	R2.L = 0x620;		/* (1568)	R2=0xff900620(-7338464) */
ffa03d04:	01 e8 00 00 	UNLINK;
ffa03d08:	ff e2 62 ec 	JUMP.L 0xffa015cc <_strcpy_>;

ffa03d0c <_htmlDiv>:
ffa03d0c:	12 43       	R2 = R2.B (X);
ffa03d0e:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa03d12:	1a 08       	CC = R2 == R3;
ffa03d14:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03d18:	09 18       	IF CC JUMP 0xffa03d2a <_htmlDiv+0x1e>;
ffa03d1a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900620(-7338464) */
ffa03d1e:	02 e1 74 06 	R2.L = 0x674;		/* (1652)	R2=0xff900674(-7338380) */
ffa03d22:	01 e8 00 00 	UNLINK;
ffa03d26:	ff e2 53 ec 	JUMP.L 0xffa015cc <_strcpy_>;
ffa03d2a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900674(-7338380) */
ffa03d2e:	02 e1 40 06 	R2.L = 0x640;		/* (1600)	R2=0xff900640(-7338432) */
ffa03d32:	01 e8 00 00 	UNLINK;
ffa03d36:	ff e2 4b ec 	JUMP.L 0xffa015cc <_strcpy_>;
	...

ffa03d3c <_html404>:
ffa03d3c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03d40:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d42:	4f 30       	R1 = FP;
ffa03d44:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900640(-7338432) */
ffa03d48:	f0 bb       	[FP -0x4] = R0;
ffa03d4a:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03d4c:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03d50:	02 e1 a8 06 	R2.L = 0x6a8;		/* (1704)	R2=0xff9006a8(-7338328) */
ffa03d54:	ff e3 3c ec 	CALL 0xffa015cc <_strcpy_>;
ffa03d58:	f0 b9       	R0 = [FP -0x4];
ffa03d5a:	01 e8 00 00 	UNLINK;
ffa03d5e:	10 00       	RTS;

ffa03d60 <_htmlCursorOption>:
ffa03d60:	68 05       	[--SP] = (R7:5);
ffa03d62:	2a 30       	R5 = R2;
ffa03d64:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006a8(-7338328) */
ffa03d68:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03d6c:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa03d70:	3f a2 00 00 
ffa03d74:	02 e1 c4 06 	R2.L = 0x6c4;		/* (1732)	R2=0xff9006c4(-7338300) */
ffa03d78:	ff e3 2a ec 	CALL 0xffa015cc <_strcpy_>;
ffa03d7c:	0e 30       	R1 = R6;
ffa03d7e:	15 30       	R2 = R5;
ffa03d80:	ff e3 8c ed 	CALL 0xffa01898 <_strprintf_int>;
ffa03d84:	3d 08       	CC = R5 == R7;
ffa03d86:	16 18       	IF CC JUMP 0xffa03db2 <_htmlCursorOption+0x52>;
ffa03d88:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c4(-7338300) */
ffa03d8c:	0e 30       	R1 = R6;
ffa03d8e:	02 e1 ec 06 	R2.L = 0x6ec;		/* (1772)	R2=0xff9006ec(-7338260) */
ffa03d92:	ff e3 1d ec 	CALL 0xffa015cc <_strcpy_>;
ffa03d96:	0e 30       	R1 = R6;
ffa03d98:	15 30       	R2 = R5;
ffa03d9a:	ff e3 7f ed 	CALL 0xffa01898 <_strprintf_int>;
ffa03d9e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006ec(-7338260) */
ffa03da2:	01 e8 00 00 	UNLINK;
ffa03da6:	0e 30       	R1 = R6;
ffa03da8:	02 e1 f0 06 	R2.L = 0x6f0;		/* (1776)	R2=0xff9006f0(-7338256) */
ffa03dac:	28 05       	(R7:5) = [SP++];
ffa03dae:	ff e2 0f ec 	JUMP.L 0xffa015cc <_strcpy_>;
ffa03db2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006f0(-7338256) */
ffa03db6:	0e 30       	R1 = R6;
ffa03db8:	02 e1 d4 06 	R2.L = 0x6d4;		/* (1748)	R2=0xff9006d4(-7338284) */
ffa03dbc:	ff e3 08 ec 	CALL 0xffa015cc <_strcpy_>;
ffa03dc0:	e4 2f       	JUMP.S 0xffa03d88 <_htmlCursorOption+0x28>;
	...

ffa03dc4 <_htmlCursorSelect>:
ffa03dc4:	60 05       	[--SP] = (R7:4);
ffa03dc6:	3a 30       	R7 = R2;
ffa03dc8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006d4(-7338284) */
ffa03dcc:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03dd0:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa03dd4:	7e a2 00 00 
ffa03dd8:	02 e1 fc 06 	R2.L = 0x6fc;		/* (1788)	R2=0xff9006fc(-7338244) */
ffa03ddc:	bc a2       	R4 = [FP + 0x28];
ffa03dde:	ff e3 f7 eb 	CALL 0xffa015cc <_strcpy_>;
ffa03de2:	17 30       	R2 = R7;
ffa03de4:	0d 30       	R1 = R5;
ffa03de6:	ff e3 f3 eb 	CALL 0xffa015cc <_strcpy_>;
ffa03dea:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006fc(-7338244) */
ffa03dee:	0d 30       	R1 = R5;
ffa03df0:	02 e1 08 07 	R2.L = 0x708;		/* (1800)	R2=0xff900708(-7338232) */
ffa03df4:	ff e3 ec eb 	CALL 0xffa015cc <_strcpy_>;
ffa03df8:	0d 30       	R1 = R5;
ffa03dfa:	16 30       	R2 = R6;
ffa03dfc:	ff e3 e8 eb 	CALL 0xffa015cc <_strcpy_>;
ffa03e00:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900708(-7338232) */
ffa03e04:	0d 30       	R1 = R5;
ffa03e06:	02 e1 24 07 	R2.L = 0x724;		/* (1828)	R2=0xff900724(-7338204) */
ffa03e0a:	ff e3 e1 eb 	CALL 0xffa015cc <_strcpy_>;
ffa03e0e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03e10:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa03e14:	f4 b0 00 00 
ffa03e18:	17 30       	R2 = R7;
ffa03e1a:	ff e3 a3 ff 	CALL 0xffa03d60 <_htmlCursorOption>;
ffa03e1e:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03e20:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03e22:	0f 08       	CC = R7 == R1;
ffa03e24:	f6 17       	IF !CC JUMP 0xffa03e10 <_htmlCursorSelect+0x4c> (BP);
ffa03e26:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900724(-7338204) */
ffa03e2a:	01 e8 00 00 	UNLINK;
ffa03e2e:	0d 30       	R1 = R5;
ffa03e30:	02 e1 28 07 	R2.L = 0x728;		/* (1832)	R2=0xff900728(-7338200) */
ffa03e34:	20 05       	(R7:4) = [SP++];
ffa03e36:	ff e2 cb eb 	JUMP.L 0xffa015cc <_strcpy_>;
	...

ffa03e3c <_httpHeader>:
ffa03e3c:	78 05       	[--SP] = (R7:7);
ffa03e3e:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03e42:	7f 30       	R7 = FP;
ffa03e44:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03e46:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03e48:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900728(-7338200) */
ffa03e4c:	f0 bb       	[FP -0x4] = R0;
ffa03e4e:	0f 30       	R1 = R7;
ffa03e50:	02 e1 40 07 	R2.L = 0x740;		/* (1856)	R2=0xff900740(-7338176) */
ffa03e54:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03e58:	ff e3 ba eb 	CALL 0xffa015cc <_strcpy_>;
ffa03e5c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900740(-7338176) */
ffa03e60:	0f 30       	R1 = R7;
ffa03e62:	02 e1 54 07 	R2.L = 0x754;		/* (1876)	R2=0xff900754(-7338156) */
ffa03e66:	ff e3 b3 eb 	CALL 0xffa015cc <_strcpy_>;
ffa03e6a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900754(-7338156) */
ffa03e6e:	0f 30       	R1 = R7;
ffa03e70:	02 e1 68 07 	R2.L = 0x768;		/* (1896)	R2=0xff900768(-7338136) */
ffa03e74:	ff e3 ac eb 	CALL 0xffa015cc <_strcpy_>;
ffa03e78:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc0 <_TcpSeqClient> */
ffa03e7c:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_g_httpContentLen> */
ffa03e80:	12 91       	R2 = [P2];
ffa03e82:	0f 30       	R1 = R7;
ffa03e84:	ff e3 0a ed 	CALL 0xffa01898 <_strprintf_int>;
ffa03e88:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900768(-7338136) */
ffa03e8c:	0f 30       	R1 = R7;
ffa03e8e:	02 e1 7c 07 	R2.L = 0x77c;		/* (1916)	R2=0xff90077c(-7338116) */
ffa03e92:	ff e3 9d eb 	CALL 0xffa015cc <_strcpy_>;
ffa03e96:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fdc <_g_httpContentLen> */
ffa03e9a:	f0 b9       	R0 = [FP -0x4];
ffa03e9c:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpHeaderLen> */
ffa03ea0:	10 93       	[P2] = R0;
ffa03ea2:	01 e8 00 00 	UNLINK;
ffa03ea6:	38 05       	(R7:7) = [SP++];
ffa03ea8:	10 00       	RTS;
	...

ffa03eac <_htmlGeneric>:
ffa03eac:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03eb0:	10 30       	R2 = R0;
ffa03eb2:	4f 30       	R1 = FP;
ffa03eb4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03eb6:	f0 bb       	[FP -0x4] = R0;
ffa03eb8:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03eba:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03ebe:	ff e3 87 eb 	CALL 0xffa015cc <_strcpy_>;
ffa03ec2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd8 <_g_httpHeaderLen> */
ffa03ec6:	f0 b9       	R0 = [FP -0x4];
ffa03ec8:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_g_httpContentLen> */
ffa03ecc:	10 93       	[P2] = R0;
ffa03ece:	ff e3 b7 ff 	CALL 0xffa03e3c <_httpHeader>;
ffa03ed2:	f0 b9       	R0 = [FP -0x4];
ffa03ed4:	01 e8 00 00 	UNLINK;
ffa03ed8:	10 00       	RTS;
	...

ffa03edc <_htmlDefault>:
ffa03edc:	e5 05       	[--SP] = (R7:4, P5:5);
ffa03ede:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03ee2:	67 30       	R4 = FP;
ffa03ee4:	e4 67       	R4 += -0x4;		/* ( -4) */
ffa03ee6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ee8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90077c(-7338116) */
ffa03eec:	f0 bb       	[FP -0x4] = R0;
ffa03eee:	0c 30       	R1 = R4;
ffa03ef0:	02 e1 9c 07 	R2.L = 0x79c;		/* (1948)	R2=0xff90079c(-7338084) */
ffa03ef4:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03ef8:	ff e3 6a eb 	CALL 0xffa015cc <_strcpy_>;
ffa03efc:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03f00:	0c 30       	R1 = R4;
ffa03f02:	ff e3 05 ff 	CALL 0xffa03d0c <_htmlDiv>;
ffa03f06:	0c 30       	R1 = R4;
ffa03f08:	ff e3 f8 fe 	CALL 0xffa03cf8 <_htmlForm>;
ffa03f0c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03f10:	0c 30       	R1 = R4;
ffa03f12:	02 e1 ec 07 	R2.L = 0x7ec;		/* (2028)	R2=0xff9007ec(-7338004) */
ffa03f16:	ff e3 5b eb 	CALL 0xffa015cc <_strcpy_>;
ffa03f1a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fdc <_g_httpContentLen> */
ffa03f1e:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_streamEnabled> */
ffa03f22:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03f26:	10 99 00 00 
ffa03f2a:	00 0c       	CC = R0 == 0x0;
ffa03f2c:	76 1d       	IF CC JUMP 0xffa04218 <_htmlDefault+0x33c> (BP);
ffa03f2e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007ec(-7338004) */
ffa03f32:	01 30       	R0 = R1;
ffa03f34:	02 e1 3c 08 	R2.L = 0x83c;		/* (2108)	R2=0xff90083c(-7337924) */
ffa03f38:	0c 30       	R1 = R4;
ffa03f3a:	ff e3 49 eb 	CALL 0xffa015cc <_strcpy_>;
ffa03f3e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90083c(-7337924) */
ffa03f42:	0c 30       	R1 = R4;
ffa03f44:	02 e1 54 08 	R2.L = 0x854;		/* (2132)	R2=0xff900854(-7337900) */
ffa03f48:	ff e3 42 eb 	CALL 0xffa015cc <_strcpy_>;
ffa03f4c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03f50:	0c 30       	R1 = R4;
ffa03f52:	ff e3 dd fe 	CALL 0xffa03d0c <_htmlDiv>;
ffa03f56:	0c 30       	R1 = R4;
ffa03f58:	ff e3 d0 fe 	CALL 0xffa03cf8 <_htmlForm>;
ffa03f5c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03f60:	0c 30       	R1 = R4;
ffa03f62:	02 e1 68 08 	R2.L = 0x868;		/* (2152)	R2=0xff900868(-7337880) */
ffa03f66:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fbc <_TcpSeqHost> */
ffa03f6a:	ff e3 31 eb 	CALL 0xffa015cc <_strcpy_>;
ffa03f6e:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03f70:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa03f72:	0d e1 e8 0e 	P5.L = 0xee8;		/* (3816)	P5=0xff900ee8 <_NetDataDestIP> */
ffa03f76:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900868(-7337880) */
ffa03f7a:	0c 30       	R1 = R4;
ffa03f7c:	02 e1 84 08 	R2.L = 0x884;		/* (2180)	R2=0xff900884(-7337852) */
ffa03f80:	ff e3 26 eb 	CALL 0xffa015cc <_strcpy_>;
ffa03f84:	17 30       	R2 = R7;
ffa03f86:	0c 30       	R1 = R4;
ffa03f88:	ff e3 88 ec 	CALL 0xffa01898 <_strprintf_int>;
ffa03f8c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900884(-7337852) */
ffa03f90:	0c 30       	R1 = R4;
ffa03f92:	02 e1 a0 08 	R2.L = 0x8a0;		/* (2208)	R2=0xff9008a0(-7337824) */
ffa03f96:	ff e3 1b eb 	CALL 0xffa015cc <_strcpy_>;
ffa03f9a:	2a 91       	R2 = [P5];
ffa03f9c:	72 40       	R2 >>= R6;
ffa03f9e:	52 43       	R2 = R2.B (Z);
ffa03fa0:	0c 30       	R1 = R4;
ffa03fa2:	ff e3 7b ec 	CALL 0xffa01898 <_strprintf_int>;
ffa03fa6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a0(-7337824) */
ffa03faa:	0c 30       	R1 = R4;
ffa03fac:	02 e1 b4 08 	R2.L = 0x8b4;		/* (2228)	R2=0xff9008b4(-7337804) */
ffa03fb0:	ff e3 0e eb 	CALL 0xffa015cc <_strcpy_>;
ffa03fb4:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03fb6:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03fb8:	0f 08       	CC = R7 == R1;
ffa03fba:	46 64       	R6 += 0x8;		/* (  8) */
ffa03fbc:	dd 17       	IF !CC JUMP 0xffa03f76 <_htmlDefault+0x9a> (BP);
ffa03fbe:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008b4(-7337804) */
ffa03fc2:	0c 30       	R1 = R4;
ffa03fc4:	02 e1 bc 08 	R2.L = 0x8bc;		/* (2236)	R2=0xff9008bc(-7337796) */
ffa03fc8:	ff e3 02 eb 	CALL 0xffa015cc <_strcpy_>;
ffa03fcc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008bc(-7337796) */
ffa03fd0:	0c 30       	R1 = R4;
ffa03fd2:	02 e1 54 08 	R2.L = 0x854;		/* (2132)	R2=0xff900854(-7337900) */
ffa03fd6:	ff e3 fb ea 	CALL 0xffa015cc <_strcpy_>;
ffa03fda:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03fde:	0c 30       	R1 = R4;
ffa03fe0:	ff e3 96 fe 	CALL 0xffa03d0c <_htmlDiv>;
ffa03fe4:	0c 30       	R1 = R4;
ffa03fe6:	ff e3 89 fe 	CALL 0xffa03cf8 <_htmlForm>;
ffa03fea:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03fee:	0c 30       	R1 = R4;
ffa03ff0:	02 e1 e0 08 	R2.L = 0x8e0;		/* (2272)	R2=0xff9008e0(-7337760) */
ffa03ff4:	ff e3 ec ea 	CALL 0xffa015cc <_strcpy_>;
ffa03ff8:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c38 */
ffa03ffc:	0a e1 08 08 	P2.L = 0x808;		/* (2056)	P2=0xff800808 */
ffa04000:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa04004:	10 99 00 00 
ffa04008:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0400a:	10 1d       	IF CC JUMP 0xffa0422a <_htmlDefault+0x34e> (BP);
ffa0400c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008e0(-7337760) */
ffa04010:	01 30       	R0 = R1;
ffa04012:	02 e1 48 08 	R2.L = 0x848;		/* (2120)	R2=0xff900848(-7337912) */
ffa04016:	0c 30       	R1 = R4;
ffa04018:	ff e3 da ea 	CALL 0xffa015cc <_strcpy_>;
ffa0401c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900848(-7337912) */
ffa04020:	0c 30       	R1 = R4;
ffa04022:	02 e1 54 08 	R2.L = 0x854;		/* (2132)	R2=0xff900854(-7337900) */
ffa04026:	ff e3 d3 ea 	CALL 0xffa015cc <_strcpy_>;
ffa0402a:	0c 30       	R1 = R4;
ffa0402c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa04030:	ff e3 6e fe 	CALL 0xffa03d0c <_htmlDiv>;
ffa04034:	0c 30       	R1 = R4;
ffa04036:	ff e3 61 fe 	CALL 0xffa03cf8 <_htmlForm>;
ffa0403a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa0403e:	0c 30       	R1 = R4;
ffa04040:	02 e1 20 09 	R2.L = 0x920;		/* (2336)	R2=0xff900920(-7337696) */
ffa04044:	ff e3 c4 ea 	CALL 0xffa015cc <_strcpy_>;
ffa04048:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa0404c:	01 e1 50 09 	R1.L = 0x950;		/* (2384)	R1=0xff900950(-7337648) */
ffa04050:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900920(-7337696) */
ffa04054:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa04058:	f1 b0 00 00 
ffa0405c:	02 e1 44 09 	R2.L = 0x944;		/* (2372)	R2=0xff900944(-7337660) */
ffa04060:	82 ce 04 c2 	R1 = ROT R4 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa04064:	37 b1 00 00 
ffa04068:	ff e3 ae fe 	CALL 0xffa03dc4 <_htmlCursorSelect>;
ffa0406c:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900950(-7337648) */
ffa04070:	01 e1 68 09 	R1.L = 0x968;		/* (2408)	R1=0xff900968(-7337624) */
ffa04074:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900944(-7337660) */
ffa04078:	f1 b0       	[SP + 0xc] = R1;
ffa0407a:	02 e1 5c 09 	R2.L = 0x95c;		/* (2396)	R2=0xff90095c(-7337636) */
ffa0407e:	82 ce 04 c2 	R1 = ROT R4 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa04082:	37 b1 00 00 
ffa04086:	ff e3 9f fe 	CALL 0xffa03dc4 <_htmlCursorSelect>;
ffa0408a:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900968(-7337624) */
ffa0408e:	01 e1 80 09 	R1.L = 0x980;		/* (2432)	R1=0xff900980(-7337600) */
ffa04092:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90095c(-7337636) */
ffa04096:	f1 b0       	[SP + 0xc] = R1;
ffa04098:	02 e1 74 09 	R2.L = 0x974;		/* (2420)	R2=0xff900974(-7337612) */
ffa0409c:	82 ce 04 c2 	R1 = ROT R4 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa040a0:	37 b1 00 00 
ffa040a4:	ff e3 90 fe 	CALL 0xffa03dc4 <_htmlCursorSelect>;
ffa040a8:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900980(-7337600) */
ffa040ac:	01 e1 94 09 	R1.L = 0x994;		/* (2452)	R1=0xff900994(-7337580) */
ffa040b0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900974(-7337612) */
ffa040b4:	f1 b0       	[SP + 0xc] = R1;
ffa040b6:	02 e1 8c 09 	R2.L = 0x98c;		/* (2444)	R2=0xff90098c(-7337588) */
ffa040ba:	82 ce 04 c2 	R1 = ROT R4 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa040be:	37 b1 00 00 
ffa040c2:	ff e3 81 fe 	CALL 0xffa03dc4 <_htmlCursorSelect>;
ffa040c6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90098c(-7337588) */
ffa040ca:	0c 30       	R1 = R4;
ffa040cc:	02 e1 a0 09 	R2.L = 0x9a0;		/* (2464)	R2=0xff9009a0(-7337568) */
ffa040d0:	ff e3 7e ea 	CALL 0xffa015cc <_strcpy_>;
ffa040d4:	0c 30       	R1 = R4;
ffa040d6:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa040da:	ff e3 19 fe 	CALL 0xffa03d0c <_htmlDiv>;
ffa040de:	0c 30       	R1 = R4;
ffa040e0:	ff e3 0c fe 	CALL 0xffa03cf8 <_htmlForm>;
ffa040e4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa040e8:	0c 30       	R1 = R4;
ffa040ea:	02 e1 dc 09 	R2.L = 0x9dc;		/* (2524)	R2=0xff9009dc(-7337508) */
ffa040ee:	ff e3 6f ea 	CALL 0xffa015cc <_strcpy_>;
ffa040f2:	0c 30       	R1 = R4;
ffa040f4:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa040f8:	ff e3 0a fe 	CALL 0xffa03d0c <_htmlDiv>;
ffa040fc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa04100:	0c 30       	R1 = R4;
ffa04102:	02 e1 34 0a 	R2.L = 0xa34;		/* (2612)	R2=0xff900a34(-7337420) */
ffa04106:	ff e3 63 ea 	CALL 0xffa015cc <_strcpy_>;
ffa0410a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a34(-7337420) */
ffa0410e:	0c 30       	R1 = R4;
ffa04110:	02 e1 5c 0a 	R2.L = 0xa5c;		/* (2652)	R2=0xff900a5c(-7337380) */
ffa04114:	ff e3 5c ea 	CALL 0xffa015cc <_strcpy_>;
ffa04118:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a5c(-7337380) */
ffa0411c:	0c 30       	R1 = R4;
ffa0411e:	02 e1 54 08 	R2.L = 0x854;		/* (2132)	R2=0xff900854(-7337900) */
ffa04122:	ff e3 55 ea 	CALL 0xffa015cc <_strcpy_>;
ffa04126:	38 30       	R7 = R0;
ffa04128:	ff e3 40 e0 	CALL 0xffa001a8 <_ustimer>;
ffa0412c:	41 e1 e3 38 	R1.H = 0x38e3;		/* (14563)	R1=0x38e30994(954403220) */
ffa04130:	01 e1 39 8e 	R1.L = 0x8e39;		/* (-29127)	R1=0x38e38e39(954437177) */
ffa04134:	80 c0 01 18 	A1 = R0.L * R1.L (FU);
ffa04138:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa0413c:	81 c0 01 86 	A1 += R0.H * R1.L, A0 = R0.H * R1.H (FU);
ffa04140:	81 c0 08 98 	A1 += R1.H * R0.L (FU);
ffa04144:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa04148:	0b c4 00 80 	A0 += A1;
ffa0414c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900854(-7337900) */
ffa04150:	08 c4 00 e0 	A1 = A0;
ffa04154:	0c 30       	R1 = R4;
ffa04156:	07 30       	R0 = R7;
ffa04158:	02 e1 a4 0a 	R2.L = 0xaa4;		/* (2724)	R2=0xff900aa4(-7337308) */
ffa0415c:	8f c0 00 19 	R5 = A1 (FU);
ffa04160:	ff e3 36 ea 	CALL 0xffa015cc <_strcpy_>;
ffa04164:	41 e1 62 10 	R1.H = 0x1062;		/* (4194)	R1=0x10628e39(274894393) */
ffa04168:	0d 4e       	R5 >>= 0x1;
ffa0416a:	01 e1 d3 4d 	R1.L = 0x4dd3;		/* (19923)	R1=0x10624dd3(274877907) */
ffa0416e:	80 c0 29 18 	A1 = R5.L * R1.L (FU);
ffa04172:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa04176:	11 c1 29 86 	A1 += R5.H * R1.L (M), A0 = R5.H * R1.H (IS);
ffa0417a:	11 c1 0d 98 	A1 += R1.H * R5.L (M, IS);
ffa0417e:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa04182:	0b c4 00 0c 	R6 = (A0 += A1);
ffa04186:	41 e1 88 88 	R1.H = 0x8888;		/* (-30584)	R1=0x88884dd3(-2004333101) */
ffa0418a:	36 4d       	R6 >>>= 0x6;
ffa0418c:	01 e1 89 88 	R1.L = 0x8889;		/* (-30583)	R1=0x88888889(-2004318071) */
ffa04190:	80 c0 31 18 	A1 = R6.L * R1.L (FU);
ffa04194:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa04198:	11 c1 31 86 	A1 += R6.H * R1.L (M), A0 = R6.H * R1.H (IS);
ffa0419c:	11 c1 0e 98 	A1 += R1.H * R6.L (M, IS);
ffa041a0:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa041a4:	0b c4 00 0e 	R7 = (A0 += A1);
ffa041a8:	f7 51       	R7 = R7 + R6;
ffa041aa:	82 c6 0e 03 	R1 = R6 >>> 0x1f;
ffa041ae:	2f 4d       	R7 >>>= 0x5;
ffa041b0:	cf 53       	R7 = R7 - R1;
ffa041b2:	17 30       	R2 = R7;
ffa041b4:	0c 30       	R1 = R4;
ffa041b6:	ff e3 71 eb 	CALL 0xffa01898 <_strprintf_int>;
ffa041ba:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900aa4(-7337308) */
ffa041be:	0c 30       	R1 = R4;
ffa041c0:	02 e1 b0 00 	R2.L = 0xb0;		/* (176)	R2=0xff9000b0(-7339856) */
ffa041c4:	ff e3 04 ea 	CALL 0xffa015cc <_strcpy_>;
ffa041c8:	82 c6 27 84 	R2 = R7 << 0x4;
ffa041cc:	ba 52       	R2 = R2 - R7;
ffa041ce:	12 4f       	R2 <<= 0x2;
ffa041d0:	96 52       	R2 = R6 - R2;
ffa041d2:	0c 30       	R1 = R4;
ffa041d4:	ff e3 62 eb 	CALL 0xffa01898 <_strprintf_int>;
ffa041d8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9000b0(-7339856) */
ffa041dc:	0c 30       	R1 = R4;
ffa041de:	02 e1 88 00 	R2.L = 0x88;		/* (136)	R2=0xff900088(-7339896) */
ffa041e2:	ff e3 f5 e9 	CALL 0xffa015cc <_strcpy_>;
ffa041e6:	82 c6 2e 82 	R1 = R6 << 0x5;
ffa041ea:	71 52       	R1 = R1 - R6;
ffa041ec:	16 32       	P2 = R6;
ffa041ee:	09 32       	P1 = R1;
ffa041f0:	4a 5e       	P1 = P2 + (P1 << 0x2);
ffa041f2:	49 30       	R1 = P1;
ffa041f4:	19 4f       	R1 <<= 0x3;
ffa041f6:	4d 53       	R5 = R5 - R1;
ffa041f8:	15 30       	R2 = R5;
ffa041fa:	0c 30       	R1 = R4;
ffa041fc:	ff e3 4e eb 	CALL 0xffa01898 <_strprintf_int>;
ffa04200:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900088(-7339896) */
ffa04204:	0c 30       	R1 = R4;
ffa04206:	02 e1 b0 0a 	R2.L = 0xab0;		/* (2736)	R2=0xff900ab0(-7337296) */
ffa0420a:	ff e3 e1 e9 	CALL 0xffa015cc <_strcpy_>;
ffa0420e:	f0 b9       	R0 = [FP -0x4];
ffa04210:	01 e8 00 00 	UNLINK;
ffa04214:	a5 05       	(R7:4, P5:5) = [SP++];
ffa04216:	10 00       	RTS;
ffa04218:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900ab0(-7337296) */
ffa0421c:	01 30       	R0 = R1;
ffa0421e:	02 e1 48 08 	R2.L = 0x848;		/* (2120)	R2=0xff900848(-7337912) */
ffa04222:	0c 30       	R1 = R4;
ffa04224:	ff e3 d4 e9 	CALL 0xffa015cc <_strcpy_>;
ffa04228:	8b 2e       	JUMP.S 0xffa03f3e <_htmlDefault+0x62>;
ffa0422a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900848(-7337912) */
ffa0422e:	01 30       	R0 = R1;
ffa04230:	02 e1 3c 08 	R2.L = 0x83c;		/* (2108)	R2=0xff90083c(-7337924) */
ffa04234:	0c 30       	R1 = R4;
ffa04236:	ff e3 cb e9 	CALL 0xffa015cc <_strcpy_>;
ffa0423a:	f1 2e       	JUMP.S 0xffa0401c <_htmlDefault+0x140>;

ffa0423c <_httpResp>:
ffa0423c:	60 05       	[--SP] = (R7:4);
ffa0423e:	30 30       	R6 = R0;
ffa04240:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa04242:	01 09       	CC = R1 <= R0;
ffa04244:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa04248:	39 30       	R7 = R1;
ffa0424a:	21 10       	IF !CC JUMP 0xffa0428c <_httpResp+0x50>;
ffa0424c:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa0424e:	0f 09       	CC = R7 <= R1;
ffa04250:	34 10       	IF !CC JUMP 0xffa042b8 <_httpResp+0x7c>;
ffa04252:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa04256:	00 e1 c0 0a 	R0.L = 0xac0;		/* (2752)	R0=0xff900ac0(-7337280) */
ffa0425a:	0e 30       	R1 = R6;
ffa0425c:	17 30       	R2 = R7;
ffa0425e:	ff e3 25 ea 	CALL 0xffa016a8 <_substr>;
ffa04262:	00 0c       	CC = R0 == 0x0;
ffa04264:	06 10       	IF !CC JUMP 0xffa04270 <_httpResp+0x34>;
ffa04266:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04268:	01 e8 00 00 	UNLINK;
ffa0426c:	20 05       	(R7:4) = [SP++];
ffa0426e:	10 00       	RTS;
ffa04270:	ff e3 66 fd 	CALL 0xffa03d3c <_html404>;
ffa04274:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900808 */
ffa04278:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_g_httpContentLen> */
ffa0427c:	10 93       	[P2] = R0;
ffa0427e:	ff e3 df fd 	CALL 0xffa03e3c <_httpHeader>;
ffa04282:	01 e8 00 00 	UNLINK;
ffa04286:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04288:	20 05       	(R7:4) = [SP++];
ffa0428a:	10 00       	RTS;
ffa0428c:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa04290:	06 30       	R0 = R6;
ffa04292:	01 e1 c8 0a 	R1.L = 0xac8;		/* (2760)	R1=0xff900ac8(-7337272) */
ffa04296:	ff e3 db e9 	CALL 0xffa0164c <_strcmp>;
ffa0429a:	00 0c       	CC = R0 == 0x0;
ffa0429c:	d8 1f       	IF CC JUMP 0xffa0424c <_httpResp+0x10> (BP);
ffa0429e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa042a2:	00 e1 c0 0a 	R0.L = 0xac0;		/* (2752)	R0=0xff900ac0(-7337280) */
ffa042a6:	0e 30       	R1 = R6;
ffa042a8:	17 30       	R2 = R7;
ffa042aa:	ff e3 ff e9 	CALL 0xffa016a8 <_substr>;
ffa042ae:	00 0c       	CC = R0 == 0x0;
ffa042b0:	db 1f       	IF CC JUMP 0xffa04266 <_httpResp+0x2a> (BP);
ffa042b2:	ff e3 15 fe 	CALL 0xffa03edc <_htmlDefault>;
ffa042b6:	df 2f       	JUMP.S 0xffa04274 <_httpResp+0x38>;
ffa042b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ac0(-7337280) */
ffa042bc:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa042c0:	0e 30       	R1 = R6;
ffa042c2:	17 30       	R2 = R7;
ffa042c4:	ff e3 f2 e9 	CALL 0xffa016a8 <_substr>;
ffa042c8:	00 0c       	CC = R0 == 0x0;
ffa042ca:	3c 1c       	IF CC JUMP 0xffa04342 <_httpResp+0x106> (BP);
ffa042cc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ad4(-7337260) */
ffa042d0:	00 e1 e0 0a 	R0.L = 0xae0;		/* (2784)	R0=0xff900ae0(-7337248) */
ffa042d4:	0e 30       	R1 = R6;
ffa042d6:	17 30       	R2 = R7;
ffa042d8:	ff e3 e8 e9 	CALL 0xffa016a8 <_substr>;
ffa042dc:	00 0c       	CC = R0 == 0x0;
ffa042de:	c4 1f       	IF CC JUMP 0xffa04266 <_httpResp+0x2a> (BP);
ffa042e0:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa042e2:	06 50       	R0 = R6 + R0;
ffa042e4:	ff e3 02 eb 	CALL 0xffa018e8 <_atoi>;
ffa042e8:	08 30       	R1 = R0;
ffa042ea:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa042ee:	00 67       	R0 += -0x20;		/* (-32) */
ffa042f0:	10 0a       	CC = R0 <= R2 (IU);
ffa042f2:	24 11       	IF !CC JUMP 0xffa0453a <_httpResp+0x2fe>;
ffa042f4:	82 c6 19 84 	R2 = R1 << 0x3;
ffa042f8:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800fdc */
ffa042fc:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa04300:	02 0d       	CC = R2 <= 0x0;
ffa04302:	13 91       	R3 = [P2];
ffa04304:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa04308:	14 18       	IF CC JUMP 0xffa04330 <_httpResp+0xf4>;
ffa0430a:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa0430e:	28 4f       	R0 <<= 0x5;
ffa04310:	03 54       	R0 = R3 & R0;
ffa04312:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa04314:	38 52       	R0 = R0 - R7;
ffa04316:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa0431a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0431c:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa04320:	18 54       	R0 = R0 & R3;
ffa04322:	10 32       	P2 = R0;
ffa04324:	09 64       	R1 += 0x1;		/* (  1) */
ffa04326:	0a 08       	CC = R2 == R1;
ffa04328:	10 90       	R0 = [P2++];
ffa0432a:	08 92       	[P1++] = R0;
ffa0432c:	42 30       	R0 = P2;
ffa0432e:	f9 17       	IF !CC JUMP 0xffa04320 <_httpResp+0xe4> (BP);
ffa04330:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900800 */
ffa04334:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_g_httpContentLen> */
ffa04338:	17 93       	[P2] = R7;
ffa0433a:	ff e3 81 fd 	CALL 0xffa03e3c <_httpHeader>;
ffa0433e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04340:	94 2f       	JUMP.S 0xffa04268 <_httpResp+0x2c>;
ffa04342:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa04346:	00 e1 14 0b 	R0.L = 0xb14;		/* (2836)	R0=0xff900b14(-7337196) */
ffa0434a:	0e 30       	R1 = R6;
ffa0434c:	17 30       	R2 = R7;
ffa0434e:	ff e3 ad e9 	CALL 0xffa016a8 <_substr>;
ffa04352:	00 0c       	CC = R0 == 0x0;
ffa04354:	7f 1f       	IF CC JUMP 0xffa04252 <_httpResp+0x16> (BP);
ffa04356:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b14(-7337196) */
ffa0435a:	0e 30       	R1 = R6;
ffa0435c:	17 30       	R2 = R7;
ffa0435e:	00 e1 14 0b 	R0.L = 0xb14;		/* (2836)	R0=0xff900b14(-7337196) */
ffa04362:	ff e3 a3 e9 	CALL 0xffa016a8 <_substr>;
ffa04366:	86 51       	R6 = R6 + R0;
ffa04368:	47 53       	R5 = R7 - R0;
ffa0436a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b14(-7337196) */
ffa0436e:	00 e1 1c 0b 	R0.L = 0xb1c;		/* (2844)	R0=0xff900b1c(-7337188) */
ffa04372:	0e 30       	R1 = R6;
ffa04374:	15 30       	R2 = R5;
ffa04376:	ff e3 99 e9 	CALL 0xffa016a8 <_substr>;
ffa0437a:	00 0c       	CC = R0 == 0x0;
ffa0437c:	10 11       	IF !CC JUMP 0xffa0459c <_httpResp+0x360>;
ffa0437e:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa04380:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b1c(-7337188) */
ffa04384:	00 e1 40 0b 	R0.L = 0xb40;		/* (2880)	R0=0xff900b40(-7337152) */
ffa04388:	0e 30       	R1 = R6;
ffa0438a:	15 30       	R2 = R5;
ffa0438c:	ff e3 8e e9 	CALL 0xffa016a8 <_substr>;
ffa04390:	00 0c       	CC = R0 == 0x0;
ffa04392:	e2 10       	IF !CC JUMP 0xffa04556 <_httpResp+0x31a>;
ffa04394:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b40(-7337152) */
ffa04398:	0e 30       	R1 = R6;
ffa0439a:	00 e1 4c 0b 	R0.L = 0xb4c;		/* (2892)	R0=0xff900b4c(-7337140) */
ffa0439e:	15 30       	R2 = R5;
ffa043a0:	ff e3 84 e9 	CALL 0xffa016a8 <_substr>;
ffa043a4:	00 0c       	CC = R0 == 0x0;
ffa043a6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b4c(-7337140) */
ffa043aa:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa043ac:	0e 30       	R1 = R6;
ffa043ae:	15 30       	R2 = R5;
ffa043b0:	00 e1 58 0b 	R0.L = 0xb58;		/* (2904)	R0=0xff900b58(-7337128) */
ffa043b4:	27 06       	IF !CC R4 = R7;
ffa043b6:	ff e3 79 e9 	CALL 0xffa016a8 <_substr>;
ffa043ba:	00 0c       	CC = R0 == 0x0;
ffa043bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b58(-7337128) */
ffa043c0:	0e 30       	R1 = R6;
ffa043c2:	15 30       	R2 = R5;
ffa043c4:	00 e1 64 0b 	R0.L = 0xb64;		/* (2916)	R0=0xff900b64(-7337116) */
ffa043c8:	27 06       	IF !CC R4 = R7;
ffa043ca:	ff e3 6f e9 	CALL 0xffa016a8 <_substr>;
ffa043ce:	00 0c       	CC = R0 == 0x0;
ffa043d0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b64(-7337116) */
ffa043d4:	0e 30       	R1 = R6;
ffa043d6:	15 30       	R2 = R5;
ffa043d8:	00 e1 70 0b 	R0.L = 0xb70;		/* (2928)	R0=0xff900b70(-7337104) */
ffa043dc:	27 06       	IF !CC R4 = R7;
ffa043de:	ff e3 65 e9 	CALL 0xffa016a8 <_substr>;
ffa043e2:	00 0c       	CC = R0 == 0x0;
ffa043e4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b70(-7337104) */
ffa043e8:	00 e1 7c 0b 	R0.L = 0xb7c;		/* (2940)	R0=0xff900b7c(-7337092) */
ffa043ec:	0e 30       	R1 = R6;
ffa043ee:	15 30       	R2 = R5;
ffa043f0:	27 06       	IF !CC R4 = R7;
ffa043f2:	ff e3 5b e9 	CALL 0xffa016a8 <_substr>;
ffa043f6:	00 0c       	CC = R0 == 0x0;
ffa043f8:	15 11       	IF !CC JUMP 0xffa04622 <_httpResp+0x3e6>;
ffa043fa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b7c(-7337092) */
ffa043fe:	00 e1 84 0b 	R0.L = 0xb84;		/* (2948)	R0=0xff900b84(-7337084) */
ffa04402:	0e 30       	R1 = R6;
ffa04404:	15 30       	R2 = R5;
ffa04406:	ff e3 51 e9 	CALL 0xffa016a8 <_substr>;
ffa0440a:	00 0c       	CC = R0 == 0x0;
ffa0440c:	f6 10       	IF !CC JUMP 0xffa045f8 <_httpResp+0x3bc>;
ffa0440e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b84(-7337084) */
ffa04412:	00 e1 8c 0b 	R0.L = 0xb8c;		/* (2956)	R0=0xff900b8c(-7337076) */
ffa04416:	0e 30       	R1 = R6;
ffa04418:	15 30       	R2 = R5;
ffa0441a:	ff e3 47 e9 	CALL 0xffa016a8 <_substr>;
ffa0441e:	00 0c       	CC = R0 == 0x0;
ffa04420:	13 11       	IF !CC JUMP 0xffa04646 <_httpResp+0x40a>;
ffa04422:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b8c(-7337076) */
ffa04426:	00 e1 94 0b 	R0.L = 0xb94;		/* (2964)	R0=0xff900b94(-7337068) */
ffa0442a:	0e 30       	R1 = R6;
ffa0442c:	15 30       	R2 = R5;
ffa0442e:	ff e3 3d e9 	CALL 0xffa016a8 <_substr>;
ffa04432:	00 0c       	CC = R0 == 0x0;
ffa04434:	d1 10       	IF !CC JUMP 0xffa045d6 <_httpResp+0x39a>;
ffa04436:	20 43       	R0 = R4.B (X);
ffa04438:	00 0c       	CC = R0 == 0x0;
ffa0443a:	3c 17       	IF !CC JUMP 0xffa042b2 <_httpResp+0x76> (BP);
ffa0443c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b94(-7337068) */
ffa04440:	00 e1 9c 0b 	R0.L = 0xb9c;		/* (2972)	R0=0xff900b9c(-7337060) */
ffa04444:	0e 30       	R1 = R6;
ffa04446:	15 30       	R2 = R5;
ffa04448:	ff e3 30 e9 	CALL 0xffa016a8 <_substr>;
ffa0444c:	00 0c       	CC = R0 == 0x0;
ffa0444e:	0c 1b       	IF CC JUMP 0xffa04266 <_httpResp+0x2a>;
ffa04450:	7f 30       	R7 = FP;
ffa04452:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa04456:	57 5a       	P1 = FP + P2;
ffa04458:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0445a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0445c:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa0445e:	b2 e0 02 20 	LSETUP(0xffa04462 <_httpResp+0x226>, 0xffa04462 <_httpResp+0x226>) LC1 = P2;
ffa04462:	08 92       	[P1++] = R0;
ffa04464:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa04468:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa0446c:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa04470:	29 4f       	R1 <<= 0x5;
ffa04472:	10 91       	R0 = [P2];
ffa04474:	08 54       	R0 = R0 & R1;
ffa04476:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa04478:	81 4f       	R1 <<= 0x10;
ffa0447a:	08 50       	R0 = R0 + R1;
ffa0447c:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa0447e:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa04482:	88 54       	R2 = R0 & R1;
ffa04484:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa04488:	b2 e0 12 10 	LSETUP(0xffa0448c <_httpResp+0x250>, 0xffa044ac <_httpResp+0x270>) LC1 = P1;
ffa0448c:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa04490:	97 5a       	P2 = FP + P2;
ffa04492:	02 32       	P0 = R2;
ffa04494:	11 91       	R1 = [P2];
ffa04496:	12 64       	R2 += 0x2;		/* (  2) */
ffa04498:	00 94       	R0 = W[P0++] (Z);
ffa0449a:	41 50       	R1 = R1 + R0;
ffa0449c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0449e:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa044a2:	11 92       	[P2++] = R1;
ffa044a4:	82 54       	R2 = R2 & R0;
ffa044a6:	42 30       	R0 = P2;
ffa044a8:	38 08       	CC = R0 == R7;
ffa044aa:	f4 17       	IF !CC JUMP 0xffa04492 <_httpResp+0x256> (BP);
ffa044ac:	00 00       	NOP;
ffa044ae:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa044b2:	97 5a       	P2 = FP + P2;
ffa044b4:	00 00       	NOP;
ffa044b6:	10 91       	R0 = [P2];
ffa044b8:	58 4d       	R0 >>>= 0xb;
ffa044ba:	10 92       	[P2++] = R0;
ffa044bc:	4a 30       	R1 = P2;
ffa044be:	39 08       	CC = R1 == R7;
ffa044c0:	fa 17       	IF !CC JUMP 0xffa044b4 <_httpResp+0x278> (BP);
ffa044c2:	ff e3 0d fd 	CALL 0xffa03edc <_htmlDefault>;
ffa044c6:	68 67       	R0 += -0x13;		/* (-19) */
ffa044c8:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa044cc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80(-7336064) */
ffa044d0:	f0 bb       	[FP -0x4] = R0;
ffa044d2:	02 e1 ac 0b 	R2.L = 0xbac;		/* (2988)	R2=0xff900bac(-7337044) */
ffa044d6:	08 50       	R0 = R0 + R1;
ffa044d8:	0f 30       	R1 = R7;
ffa044da:	ff e3 79 e8 	CALL 0xffa015cc <_strcpy_>;
ffa044de:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa044e2:	f5 b8 00 00 
ffa044e6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bac(-7337044) */
ffa044ea:	0f 30       	R1 = R7;
ffa044ec:	02 e1 b8 0b 	R2.L = 0xbb8;		/* (3000)	R2=0xff900bb8(-7337032) */
ffa044f0:	ff e3 6e e8 	CALL 0xffa015cc <_strcpy_>;
ffa044f4:	16 30       	R2 = R6;
ffa044f6:	0f 30       	R1 = R7;
ffa044f8:	ff e3 d0 e9 	CALL 0xffa01898 <_strprintf_int>;
ffa044fc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bb8(-7337032) */
ffa04500:	0f 30       	R1 = R7;
ffa04502:	02 e1 cc 0b 	R2.L = 0xbcc;		/* (3020)	R2=0xff900bcc(-7337012) */
ffa04506:	ff e3 63 e8 	CALL 0xffa015cc <_strcpy_>;
ffa0450a:	0f 30       	R1 = R7;
ffa0450c:	15 30       	R2 = R5;
ffa0450e:	ff e3 c5 e9 	CALL 0xffa01898 <_strprintf_int>;
ffa04512:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bcc(-7337012) */
ffa04516:	02 e1 dc 0b 	R2.L = 0xbdc;		/* (3036)	R2=0xff900bdc(-7336996) */
ffa0451a:	0f 30       	R1 = R7;
ffa0451c:	ff e3 58 e8 	CALL 0xffa015cc <_strcpy_>;
ffa04520:	0e 64       	R6 += 0x1;		/* (  1) */
ffa04522:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa04524:	16 08       	CC = R6 == R2;
ffa04526:	e0 17       	IF !CC JUMP 0xffa044e6 <_httpResp+0x2aa> (BP);
ffa04528:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa0452c:	0f 30       	R1 = R7;
ffa0452e:	02 e1 e8 0b 	R2.L = 0xbe8;		/* (3048)	R2=0xff900be8(-7336984) */
ffa04532:	ff e3 4d e8 	CALL 0xffa015cc <_strcpy_>;
ffa04536:	f0 b9       	R0 = [FP -0x4];
ffa04538:	9e 2e       	JUMP.S 0xffa04274 <_httpResp+0x38>;
ffa0453a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0453c:	4f 30       	R1 = FP;
ffa0453e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900be8(-7336984) */
ffa04542:	f0 bb       	[FP -0x4] = R0;
ffa04544:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa04546:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa0454a:	02 e1 e8 0a 	R2.L = 0xae8;		/* (2792)	R2=0xff900ae8(-7337240) */
ffa0454e:	ff e3 3f e8 	CALL 0xffa015cc <_strcpy_>;
ffa04552:	f0 b9       	R0 = [FP -0x4];
ffa04554:	90 2e       	JUMP.S 0xffa04274 <_httpResp+0x38>;
ffa04556:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa0455a:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa0455e:	0e 30       	R1 = R6;
ffa04560:	15 30       	R2 = R5;
ffa04562:	ff e3 a3 e8 	CALL 0xffa016a8 <_substr>;
ffa04566:	00 0c       	CC = R0 == 0x0;
ffa04568:	08 1c       	IF CC JUMP 0xffa04578 <_httpResp+0x33c> (BP);
ffa0456a:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa0456e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04570:	0a e1 08 08 	P2.L = 0x808;		/* (2056)	P2=0xff800808 */
ffa04574:	10 9b       	B[P2] = R0;
ffa04576:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04578:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0457c:	00 e1 34 0b 	R0.L = 0xb34;		/* (2868)	R0=0xff900b34(-7337164) */
ffa04580:	0e 30       	R1 = R6;
ffa04582:	15 30       	R2 = R5;
ffa04584:	ff e3 92 e8 	CALL 0xffa016a8 <_substr>;
ffa04588:	00 0c       	CC = R0 == 0x0;
ffa0458a:	05 1f       	IF CC JUMP 0xffa04394 <_httpResp+0x158> (BP);
ffa0458c:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800808 */
ffa04590:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04592:	0a e1 08 08 	P2.L = 0x808;		/* (2056)	P2=0xff800808 */
ffa04596:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04598:	10 9b       	B[P2] = R0;
ffa0459a:	fd 2e       	JUMP.S 0xffa04394 <_httpResp+0x158>;
ffa0459c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa045a0:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa045a4:	0e 30       	R1 = R6;
ffa045a6:	15 30       	R2 = R5;
ffa045a8:	ff e3 80 e8 	CALL 0xffa016a8 <_substr>;
ffa045ac:	00 0c       	CC = R0 == 0x0;
ffa045ae:	61 14       	IF !CC JUMP 0xffa04670 <_httpResp+0x434> (BP);
ffa045b0:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa045b2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b2c(-7337172) */
ffa045b6:	00 e1 34 0b 	R0.L = 0xb34;		/* (2868)	R0=0xff900b34(-7337164) */
ffa045ba:	0e 30       	R1 = R6;
ffa045bc:	15 30       	R2 = R5;
ffa045be:	ff e3 75 e8 	CALL 0xffa016a8 <_substr>;
ffa045c2:	00 0c       	CC = R0 == 0x0;
ffa045c4:	de 1e       	IF CC JUMP 0xffa04380 <_httpResp+0x144> (BP);
ffa045c6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900808 */
ffa045ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa045cc:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_streamEnabled> */
ffa045d0:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa045d2:	10 9b       	B[P2] = R0;
ffa045d4:	d6 2e       	JUMP.S 0xffa04380 <_httpResp+0x144>;
ffa045d6:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa045d8:	06 50       	R0 = R6 + R0;
ffa045da:	ff e3 87 e9 	CALL 0xffa018e8 <_atoi>;
ffa045de:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_g_streamEnabled> */
ffa045e2:	0a e1 e8 0e 	P2.L = 0xee8;		/* (3816)	P2=0xff900ee8 <_NetDataDestIP> */
ffa045e6:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa045e8:	11 91       	R1 = [P2];
ffa045ea:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa045ee:	51 54       	R1 = R1 & R2;
ffa045f0:	c0 4f       	R0 <<= 0x18;
ffa045f2:	41 50       	R1 = R1 + R0;
ffa045f4:	11 93       	[P2] = R1;
ffa045f6:	5e 2e       	JUMP.S 0xffa042b2 <_httpResp+0x76>;
ffa045f8:	86 51       	R6 = R6 + R0;
ffa045fa:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa045fc:	45 53       	R5 = R5 - R0;
ffa045fe:	06 30       	R0 = R6;
ffa04600:	ff e3 74 e9 	CALL 0xffa018e8 <_atoi>;
ffa04604:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee8 <_NetDataDestIP> */
ffa04608:	0a e1 e8 0e 	P2.L = 0xee8;		/* (3816)	P2=0xff900ee8 <_NetDataDestIP> */
ffa0460c:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0460e:	11 91       	R1 = [P2];
ffa04610:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa04614:	40 43       	R0 = R0.B (Z);
ffa04616:	51 54       	R1 = R1 & R2;
ffa04618:	40 4f       	R0 <<= 0x8;
ffa0461a:	41 50       	R1 = R1 + R0;
ffa0461c:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0461e:	11 93       	[P2] = R1;
ffa04620:	f7 2e       	JUMP.S 0xffa0440e <_httpResp+0x1d2>;
ffa04622:	86 51       	R6 = R6 + R0;
ffa04624:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04626:	45 53       	R5 = R5 - R0;
ffa04628:	06 30       	R0 = R6;
ffa0462a:	ff e3 5f e9 	CALL 0xffa018e8 <_atoi>;
ffa0462e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee8 <_NetDataDestIP> */
ffa04632:	0a e1 e8 0e 	P2.L = 0xee8;		/* (3816)	P2=0xff900ee8 <_NetDataDestIP> */
ffa04636:	11 91       	R1 = [P2];
ffa04638:	41 4d       	R1 >>>= 0x8;
ffa0463a:	41 4f       	R1 <<= 0x8;
ffa0463c:	40 43       	R0 = R0.B (Z);
ffa0463e:	08 50       	R0 = R0 + R1;
ffa04640:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04642:	10 93       	[P2] = R0;
ffa04644:	db 2e       	JUMP.S 0xffa043fa <_httpResp+0x1be>;
ffa04646:	86 51       	R6 = R6 + R0;
ffa04648:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0464a:	45 53       	R5 = R5 - R0;
ffa0464c:	06 30       	R0 = R6;
ffa0464e:	ff e3 4d e9 	CALL 0xffa018e8 <_atoi>;
ffa04652:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee8 <_NetDataDestIP> */
ffa04656:	0a e1 e8 0e 	P2.L = 0xee8;		/* (3816)	P2=0xff900ee8 <_NetDataDestIP> */
ffa0465a:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0465c:	11 91       	R1 = [P2];
ffa0465e:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa04662:	40 43       	R0 = R0.B (Z);
ffa04664:	51 54       	R1 = R1 & R2;
ffa04666:	80 4f       	R0 <<= 0x10;
ffa04668:	41 50       	R1 = R1 + R0;
ffa0466a:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0466c:	11 93       	[P2] = R1;
ffa0466e:	da 2e       	JUMP.S 0xffa04422 <_httpResp+0x1e6>;
ffa04670:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee8 <_NetDataDestIP> */
ffa04674:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04676:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_streamEnabled> */
ffa0467a:	10 9b       	B[P2] = R0;
ffa0467c:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c38 */
ffa04680:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa04684:	10 91       	R0 = [P2];
ffa04686:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04688:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0468a:	10 93       	[P2] = R0;
ffa0468c:	93 2f       	JUMP.S 0xffa045b2 <_httpResp+0x376>;
	...

ffa04690 <_httpCollate>:
ffa04690:	fd 05       	[--SP] = (R7:7, P5:5);
ffa04692:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ee8 <_NetDataDestIP> */
ffa04696:	0d e1 e0 0f 	P5.L = 0xfe0;		/* (4064)	P5=0xff900fe0 <_g_httpRxed> */
ffa0469a:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa0469c:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R1 = [P5] || NOP;
ffa046a0:	29 91 00 00 
ffa046a4:	82 4f       	R2 <<= 0x10;
ffa046a6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa046aa:	51 50       	R1 = R1 + R2;
ffa046ac:	17 30       	R2 = R7;
ffa046ae:	ff e3 5f e7 	CALL 0xffa0156c <_memcpy_>;
ffa046b2:	28 91       	R0 = [P5];
ffa046b4:	38 50       	R0 = R0 + R7;
ffa046b6:	01 e8 00 00 	UNLINK;
ffa046ba:	28 93       	[P5] = R0;
ffa046bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa046be:	bd 05       	(R7:7, P5:5) = [SP++];
ffa046c0:	10 00       	RTS;
	...

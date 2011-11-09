
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
ffa00184:	ce 25       	JUMP.S 0xffa00d20 <_main>;
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
ffa001a0:	0d e1 00 08 	P5.L = 0x800;		/* (2048)	P5=0xffc00800(-4192256) */
ffa001a4:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800800 */
ffa001a8:	2f 91       	R7 = [P5];
ffa001aa:	0f 64       	R7 += 0x1;		/* (  1) */
ffa001ac:	2f 93       	[P5] = R7;
ffa001ae:	24 00       	SSYNC;
ffa001b0:	bd 05       	(R7:7, P5:5) = [SP++];
ffa001b2:	26 01       	ASTAT = [SP++];
ffa001b4:	11 00       	RTI;

ffa001b6 <_ustimer>:
ffa001b6:	86 31       	R0 = CYCLES;
ffa001b8:	8f 31       	R1 = CYCLES2;
ffa001ba:	82 c6 81 82 	R1 = R1 << 0x10;
ffa001be:	82 c6 80 81 	R0 = R0 >> 0x10;
ffa001c2:	08 50       	R0 = R0 + R1;
ffa001c4:	ca 31       	R1 = SYSCFG;
ffa001c6:	08 50       	R0 = R0 + R1;
ffa001c8:	10 00       	RTS;
	...

ffa001cc <_spi_delay>:
ffa001cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00000(-4194304) */
ffa001d0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa001d4:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa001d8:	00 00       	NOP;
ffa001da:	50 95       	R0 = W[P2] (X);
ffa001dc:	c0 42       	R0 = R0.L (Z);
ffa001de:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa001e0:	fc 17       	IF !CC JUMP 0xffa001d8 <_spi_delay+0xc> (BP);
ffa001e2:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa001e4:	0a 10       	IF !CC JUMP 0xffa001f8 <_spi_delay+0x2c>;
ffa001e6:	00 00       	NOP;
ffa001e8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa001ec:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa001f0:	00 00       	NOP;
ffa001f2:	50 95       	R0 = W[P2] (X);
ffa001f4:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa001f6:	fd 1f       	IF CC JUMP 0xffa001f0 <_spi_delay+0x24> (BP);
ffa001f8:	01 e8 00 00 	UNLINK;
ffa001fc:	10 00       	RTS;
	...

ffa00200 <_spi_write_register>:
ffa00200:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa00204:	ed 05       	[--SP] = (R7:5, P5:5);
ffa00206:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0020a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0020e:	82 ce 00 ca 	R5 = ROT R0 BY 0x0 || W[P2] = R0 || NOP;
ffa00212:	10 97 00 00 
ffa00216:	32 30       	R6 = R2;
ffa00218:	24 00       	SSYNC;
ffa0021a:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00800(-4192256) */
ffa0021e:	29 4a       	BITSET (R1, 0x5);		/* bit  5 */
ffa00220:	49 43       	R1 = R1.B (Z);
ffa00222:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa00226:	29 97       	W[P5] = R1;
ffa00228:	ff e3 d2 ff 	CALL 0xffa001cc <_spi_delay>;
ffa0022c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00230:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa00234:	76 43       	R6 = R6.B (Z);
ffa00236:	57 95       	R7 = W[P2] (X);
ffa00238:	2e 97       	W[P5] = R6;
ffa0023a:	ff e3 c9 ff 	CALL 0xffa001cc <_spi_delay>;
ffa0023e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa00242:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00246:	15 97       	W[P2] = R5;
ffa00248:	24 00       	SSYNC;
ffa0024a:	7f 43       	R7 = R7.B (Z);
ffa0024c:	01 e8 00 00 	UNLINK;
ffa00250:	07 30       	R0 = R7;
ffa00252:	ad 05       	(R7:5, P5:5) = [SP++];
ffa00254:	10 00       	RTS;
	...

ffa00258 <_spi_read_register>:
ffa00258:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0025c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0025e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00262:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00266:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R0 || NOP;
ffa0026a:	10 97 00 00 
ffa0026e:	24 00       	SSYNC;
ffa00270:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00000(-4194304) */
ffa00274:	49 43       	R1 = R1.B (Z);
ffa00276:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa0027a:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa0027e:	21 97       	W[P4] = R1;
ffa00280:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa00284:	ff e3 a4 ff 	CALL 0xffa001cc <_spi_delay>;
ffa00288:	68 95       	R0 = W[P5] (X);
ffa0028a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0028c:	20 97       	W[P4] = R0;
ffa0028e:	ff e3 9f ff 	CALL 0xffa001cc <_spi_delay>;
ffa00292:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00296:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0029a:	68 95       	R0 = W[P5] (X);
ffa0029c:	17 97       	W[P2] = R7;
ffa0029e:	24 00       	SSYNC;
ffa002a0:	01 e8 00 00 	UNLINK;
ffa002a4:	40 43       	R0 = R0.B (Z);
ffa002a6:	bc 05       	(R7:7, P5:4) = [SP++];
ffa002a8:	10 00       	RTS;
	...

ffa002ac <_spi_read_register_status>:
ffa002ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa002b0:	f3 05       	[--SP] = (R7:6, P5:3);
ffa002b2:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa002b6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa002ba:	82 ce 00 cc 	R6 = ROT R0 BY 0x0 || W[P2] = R0 || NOP;
ffa002be:	10 97 00 00 
ffa002c2:	1a 32       	P3 = R2;
ffa002c4:	24 00       	SSYNC;
ffa002c6:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc0050c(-4193012) */
ffa002ca:	49 43       	R1 = R1.B (Z);
ffa002cc:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa002d0:	21 97       	W[P4] = R1;
ffa002d2:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa002d6:	ff e3 7b ff 	CALL 0xffa001cc <_spi_delay>;
ffa002da:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa002de:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa002e0:	6f 95       	R7 = W[P5] (X);
ffa002e2:	20 97       	W[P4] = R0;
ffa002e4:	ff e3 74 ff 	CALL 0xffa001cc <_spi_delay>;
ffa002e8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa002ec:	68 95       	R0 = W[P5] (X);
ffa002ee:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa002f2:	18 9b       	B[P3] = R0;
ffa002f4:	16 97       	W[P2] = R6;
ffa002f6:	24 00       	SSYNC;
ffa002f8:	7f 43       	R7 = R7.B (Z);
ffa002fa:	01 e8 00 00 	UNLINK;
ffa002fe:	07 30       	R0 = R7;
ffa00300:	b3 05       	(R7:6, P5:3) = [SP++];
ffa00302:	10 00       	RTS;

ffa00304 <_spi_write_byte>:
ffa00304:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00308:	78 05       	[--SP] = (R7:7);
ffa0030a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0030e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00312:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R0 || NOP;
ffa00316:	10 97 00 00 
ffa0031a:	24 00       	SSYNC;
ffa0031c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00320:	49 43       	R1 = R1.B (Z);
ffa00322:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa00326:	11 97       	W[P2] = R1;
ffa00328:	ff e3 52 ff 	CALL 0xffa001cc <_spi_delay>;
ffa0032c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa00330:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa00334:	50 95       	R0 = W[P2] (X);
ffa00336:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0033a:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0033e:	17 97       	W[P2] = R7;
ffa00340:	24 00       	SSYNC;
ffa00342:	01 e8 00 00 	UNLINK;
ffa00346:	40 43       	R0 = R0.B (Z);
ffa00348:	38 05       	(R7:7) = [SP++];
ffa0034a:	10 00       	RTS;

ffa0034c <_radio_set_rx>:
ffa0034c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00350:	70 05       	[--SP] = (R7:6);
ffa00352:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00356:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0035a:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || W[P2] = R1 || NOP;
ffa0035e:	11 97 00 00 
ffa00362:	24 00       	SSYNC;
ffa00364:	c7 42       	R7 = R0.L (Z);
ffa00366:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00368:	07 30       	R0 = R7;
ffa0036a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0036c:	ff e3 4a ff 	CALL 0xffa00200 <_spi_write_register>;
ffa00370:	07 30       	R0 = R7;
ffa00372:	21 e1 e2 00 	R1 = 0xe2 (X);		/*		R1=0xe2(226) */
ffa00376:	ff e3 c7 ff 	CALL 0xffa00304 <_spi_write_byte>;
ffa0037a:	07 30       	R0 = R7;
ffa0037c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0037e:	fa 60       	R2 = 0x1f (X);		/*		R2=0x1f( 31) */
ffa00380:	ff e3 40 ff 	CALL 0xffa00200 <_spi_write_register>;
ffa00384:	07 30       	R0 = R7;
ffa00386:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00388:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa0038c:	ff e3 3a ff 	CALL 0xffa00200 <_spi_write_register>;
ffa00390:	24 00       	SSYNC;
ffa00392:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00396:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0039a:	16 97       	W[P2] = R6;
ffa0039c:	24 00       	SSYNC;
ffa0039e:	01 e8 00 00 	UNLINK;
ffa003a2:	30 05       	(R7:6) = [SP++];
ffa003a4:	10 00       	RTS;
	...

ffa003a8 <_radio_set_tx>:
ffa003a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa003ac:	78 05       	[--SP] = (R7:7);
ffa003ae:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa003b2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa003b6:	11 97       	W[P2] = R1;
ffa003b8:	24 00       	SSYNC;
ffa003ba:	c7 42       	R7 = R0.L (Z);
ffa003bc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa003be:	07 30       	R0 = R7;
ffa003c0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa003c2:	ff e3 1f ff 	CALL 0xffa00200 <_spi_write_register>;
ffa003c6:	07 30       	R0 = R7;
ffa003c8:	21 e1 e1 00 	R1 = 0xe1 (X);		/*		R1=0xe1(225) */
ffa003cc:	ff e3 9c ff 	CALL 0xffa00304 <_spi_write_byte>;
ffa003d0:	07 30       	R0 = R7;
ffa003d2:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa003d4:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa003d8:	ff e3 14 ff 	CALL 0xffa00200 <_spi_write_register>;
ffa003dc:	01 e8 00 00 	UNLINK;
ffa003e0:	07 30       	R0 = R7;
ffa003e2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa003e4:	f2 60       	R2 = 0x1e (X);		/*		R2=0x1e( 30) */
ffa003e6:	38 05       	(R7:7) = [SP++];
ffa003e8:	ff e2 0c ff 	JUMP.L 0xffa00200 <_spi_write_register>;

ffa003ec <_spi_write_register_ver>:
ffa003ec:	68 05       	[--SP] = (R7:5);
ffa003ee:	c7 42       	R7 = R0.L (Z);
ffa003f0:	4e 43       	R6 = R1.B (Z);
ffa003f2:	55 43       	R5 = R2.B (Z);
ffa003f4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa003f8:	07 30       	R0 = R7;
ffa003fa:	0e 30       	R1 = R6;
ffa003fc:	15 30       	R2 = R5;
ffa003fe:	ff e3 01 ff 	CALL 0xffa00200 <_spi_write_register>;
ffa00402:	07 30       	R0 = R7;
ffa00404:	0e 30       	R1 = R6;
ffa00406:	ff e3 29 ff 	CALL 0xffa00258 <_spi_read_register>;
ffa0040a:	47 43       	R7 = R0.B (Z);
ffa0040c:	3d 08       	CC = R5 == R7;
ffa0040e:	29 18       	IF CC JUMP 0xffa00460 <_spi_write_register_ver+0x74>;
ffa00410:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00414:	0e 30       	R1 = R6;
ffa00416:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0041a:	00 e3 5f 07 	CALL 0xffa012d8 <_printf_int>;
ffa0041e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00422:	00 e1 68 05 	R0.L = 0x568;		/* (1384)	R0=0xff900568(-7338648) */
ffa00426:	00 e3 3d 06 	CALL 0xffa010a0 <_uart_str>;
ffa0042a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900568(-7338648) */
ffa0042e:	0d 30       	R1 = R5;
ffa00430:	00 e1 14 00 	R0.L = 0x14;		/* ( 20)	R0=0xff900014(-7340012) */
ffa00434:	00 e3 a0 06 	CALL 0xffa01174 <_printf_hex_byte>;
ffa00438:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900014(-7340012) */
ffa0043c:	00 e1 68 05 	R0.L = 0x568;		/* (1384)	R0=0xff900568(-7338648) */
ffa00440:	00 e3 30 06 	CALL 0xffa010a0 <_uart_str>;
ffa00444:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900568(-7338648) */
ffa00448:	00 e1 20 00 	R0.L = 0x20;		/* ( 32)	R0=0xff900020(-7340000) */
ffa0044c:	0f 30       	R1 = R7;
ffa0044e:	00 e3 93 06 	CALL 0xffa01174 <_printf_hex_byte>;
ffa00452:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa00456:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa0045a:	2f 30       	R5 = R7;
ffa0045c:	00 e3 22 06 	CALL 0xffa010a0 <_uart_str>;
ffa00460:	01 e8 00 00 	UNLINK;
ffa00464:	05 30       	R0 = R5;
ffa00466:	28 05       	(R7:5) = [SP++];
ffa00468:	10 00       	RTS;
	...

ffa0046c <_radio_init>:
ffa0046c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0203c(-4186052) */
ffa00470:	70 05       	[--SP] = (R7:6);
ffa00472:	09 e1 00 05 	P1.L = 0x500;		/* (1280)	P1=0xffc00500(-4193024) */
ffa00476:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00478:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0047c:	82 ce 02 cc 	R6 = ROT R2 BY 0x0 || W[P1] = R3 || NOP;
ffa00480:	0b 97 00 00 
ffa00484:	38 30       	R7 = R0;
ffa00486:	24 00       	SSYNC;
ffa00488:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0048c:	2a 60       	R2 = 0x5 (X);		/*		R2=0x5(  5) */
ffa0048e:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa00492:	12 97       	W[P2] = R2;
ffa00494:	22 e1 2d 50 	R2 = 0x502d (X);		/*		R2=0x502d(20525) */
ffa00498:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0049a:	0a 97       	W[P1] = R2;
ffa0049c:	13 97       	W[P2] = R3;
ffa0049e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa004a2:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa004a6:	10 97       	W[P2] = R0;
ffa004a8:	c2 6d       	P2 += 0x38;		/* ( 56) */
ffa004aa:	52 95       	R2 = W[P2] (X);
ffa004ac:	91 56       	R2 = R1 | R2;
ffa004ae:	12 97       	W[P2] = R2;
ffa004b0:	82 6f       	P2 += -0x10;		/* (-16) */
ffa004b2:	52 95       	R2 = W[P2] (X);
ffa004b4:	c9 43       	R1 =~ R1;
ffa004b6:	51 54       	R1 = R1 & R2;
ffa004b8:	11 97       	W[P2] = R1;
ffa004ba:	51 95       	R1 = W[P2] (X);
ffa004bc:	51 4a       	BITSET (R1, 0xa);		/* bit 10 */
ffa004be:	08 56       	R0 = R0 | R1;
ffa004c0:	10 97       	W[P2] = R0;
ffa004c2:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa004c6:	70 43       	R0 = R6.B (Z);
ffa004c8:	08 0a       	CC = R0 <= R1 (IU);
ffa004ca:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa004ce:	30 06       	IF !CC R6 = R0;
ffa004d0:	76 43       	R6 = R6.B (Z);
ffa004d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa004d6:	0e 30       	R1 = R6;
ffa004d8:	00 e1 2c 00 	R0.L = 0x2c;		/* ( 44)	R0=0xff90002c(-7339988) */
ffa004dc:	00 e3 fe 06 	CALL 0xffa012d8 <_printf_int>;
ffa004e0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002c(-7339988) */
ffa004e4:	ff 42       	R7 = R7.L (Z);
ffa004e6:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa004ea:	00 e3 db 05 	CALL 0xffa010a0 <_uart_str>;
ffa004ee:	07 30       	R0 = R7;
ffa004f0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa004f2:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa004f4:	ff e3 86 fe 	CALL 0xffa00200 <_spi_write_register>;
ffa004f8:	07 30       	R0 = R7;
ffa004fa:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa004fc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa004fe:	ff e3 77 ff 	CALL 0xffa003ec <_spi_write_register_ver>;
ffa00502:	07 30       	R0 = R7;
ffa00504:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
ffa00506:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa00508:	ff e3 72 ff 	CALL 0xffa003ec <_spi_write_register_ver>;
ffa0050c:	07 30       	R0 = R7;
ffa0050e:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa00510:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa00512:	ff e3 6d ff 	CALL 0xffa003ec <_spi_write_register_ver>;
ffa00516:	07 30       	R0 = R7;
ffa00518:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa0051a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0051c:	ff e3 68 ff 	CALL 0xffa003ec <_spi_write_register_ver>;
ffa00520:	16 30       	R2 = R6;
ffa00522:	07 30       	R0 = R7;
ffa00524:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa00526:	ff e3 63 ff 	CALL 0xffa003ec <_spi_write_register_ver>;
ffa0052a:	07 30       	R0 = R7;
ffa0052c:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa0052e:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa00530:	ff e3 5e ff 	CALL 0xffa003ec <_spi_write_register_ver>;
ffa00534:	07 30       	R0 = R7;
ffa00536:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00538:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa0053c:	ff e3 58 ff 	CALL 0xffa003ec <_spi_write_register_ver>;
ffa00540:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa00542:	07 30       	R0 = R7;
ffa00544:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa00546:	ff e3 53 ff 	CALL 0xffa003ec <_spi_write_register_ver>;
ffa0054a:	07 30       	R0 = R7;
ffa0054c:	21 e1 e2 00 	R1 = 0xe2 (X);		/*		R1=0xe2(226) */
ffa00550:	ff e3 da fe 	CALL 0xffa00304 <_spi_write_byte>;
ffa00554:	07 30       	R0 = R7;
ffa00556:	21 e1 e1 00 	R1 = 0xe1 (X);		/*		R1=0xe1(225) */
ffa0055a:	ff e3 d5 fe 	CALL 0xffa00304 <_spi_write_byte>;
ffa0055e:	01 e8 00 00 	UNLINK;
ffa00562:	40 43       	R0 = R0.B (Z);
ffa00564:	30 05       	(R7:6) = [SP++];
ffa00566:	10 00       	RTS;

ffa00568 <_audio_out>:
ffa00568:	66 01       	[--SP] = ASTAT;
ffa0056a:	71 01       	[--SP] = LT0;
ffa0056c:	74 01       	[--SP] = LT1;
ffa0056e:	70 01       	[--SP] = LC0;
ffa00570:	73 01       	[--SP] = LC1;
ffa00572:	72 01       	[--SP] = LB0;
ffa00574:	75 01       	[--SP] = LB1;
ffa00576:	c4 05       	[--SP] = (R7:0, P5:4);
ffa00578:	48 01       	[--SP] = P0;
ffa0057a:	49 01       	[--SP] = P1;
ffa0057c:	4a 01       	[--SP] = P2;
ffa0057e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00582:	50 01       	[--SP] = I0;
ffa00584:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00586:	0a e1 30 09 	P2.L = 0x930;		/* (2352)	P2=0xffc00930(-4191952) */
ffa0058a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900518 */
ffa0058e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00592:	0d e1 28 0c 	P5.L = 0xc28;		/* (3112)	P5=0xff900c28 <_g_sampCh> */
ffa00596:	10 97       	W[P2] = R0;
ffa00598:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff90150c */
ffa0059c:	68 99       	R0 = B[P5] (X);
ffa0059e:	08 e1 30 0c 	P0.L = 0xc30;		/* (3120)	P0=0xff900c30 <_g_sampR> */
ffa005a2:	46 43       	R6 = R0.B (Z);
ffa005a4:	05 91       	R5 = [P0];
ffa005a6:	23 e1 ff 01 	R3 = 0x1ff (X);		/*		R3=0x1ff(511) */
ffa005aa:	6e 50       	R1 = R6 + R5;
ffa005ac:	00 34       	I0 = R0;
ffa005ae:	19 54       	R0 = R1 & R3;
ffa005b0:	20 32       	P4 = R0;
ffa005b2:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900500 */
ffa005b6:	09 e1 5c 0c 	P1.L = 0xc5c;		/* (3164)	P1=0xff900c5c <_g_samples> */
ffa005ba:	11 64       	R1 += 0x2;		/* (  2) */
ffa005bc:	59 54       	R1 = R1 & R3;
ffa005be:	8c 5a       	P2 = P4 + P1;
ffa005c0:	52 99       	R2 = B[P2] (X);
ffa005c2:	11 32       	P2 = R1;
ffa005c4:	27 e1 80 ff 	R7 = -0x80 (X);		/*		R7=0xffffff80(-128) */
ffa005c8:	ba 58       	R2 = R2 ^ R7;
ffa005ca:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa005ce:	52 43       	R2 = R2.B (Z);
ffa005d0:	4a 5a       	P1 = P2 + P1;
ffa005d2:	49 99       	R1 = B[P1] (X);
ffa005d4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c5c <_g_samples> */
ffa005d8:	09 e1 38 0c 	P1.L = 0xc38;		/* (3128)	P1=0xff900c38 <_g_sampOff> */
ffa005dc:	0c 91       	R4 = [P1];
ffa005de:	82 c6 64 87 	R3 = R4 >> 0x14;
ffa005e2:	79 58       	R1 = R1 ^ R7;
ffa005e4:	18 52       	R0 = R0 - R3;
ffa005e6:	49 43       	R1 = R1.B (Z);
ffa005e8:	c2 40       	R2 *= R0;
ffa005ea:	cb 40       	R3 *= R1;
ffa005ec:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa005ee:	9a 50       	R2 = R2 + R3;
ffa005f0:	82 c6 86 80 	R0 = R6 << 0x10;
ffa005f4:	99 4f       	R1 <<= 0x13;
ffa005f6:	d2 42       	R2 = R2.L (Z);
ffa005f8:	08 56       	R0 = R0 | R1;
ffa005fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00930(-4191952) */
ffa005fe:	82 56       	R2 = R2 | R0;
ffa00600:	0a e1 10 09 	P2.L = 0x910;		/* (2320)	P2=0xffc00910(-4191984) */
ffa00604:	0e 0c       	CC = R6 == 0x1;
ffa00606:	12 93       	[P2] = R2;
ffa00608:	13 18       	IF CC JUMP 0xffa0062e <_audio_out+0xc6>;
ffa0060a:	01 e8 00 00 	UNLINK;
ffa0060e:	80 30       	R0 = I0;
ffa00610:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa00612:	10 01       	I0 = [SP++];
ffa00614:	28 9b       	B[P5] = R0;
ffa00616:	72 90       	P2 = [SP++];
ffa00618:	71 90       	P1 = [SP++];
ffa0061a:	70 90       	P0 = [SP++];
ffa0061c:	84 05       	(R7:0, P5:4) = [SP++];
ffa0061e:	35 01       	LB1 = [SP++];
ffa00620:	32 01       	LB0 = [SP++];
ffa00622:	33 01       	LC1 = [SP++];
ffa00624:	30 01       	LC0 = [SP++];
ffa00626:	34 01       	LT1 = [SP++];
ffa00628:	31 01       	LT0 = [SP++];
ffa0062a:	26 01       	ASTAT = [SP++];
ffa0062c:	11 00       	RTI;
ffa0062e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900910 */
ffa00632:	0a e1 14 0c 	P2.L = 0xc14;		/* (3092)	P2=0xff900c14 <_g_sampW> */
ffa00636:	10 91       	R0 = [P2];
ffa00638:	05 0a       	CC = R5 <= R0 (IU);
ffa0063a:	38 1c       	IF CC JUMP 0xffa006aa <_audio_out+0x142> (BP);
ffa0063c:	00 93       	[P0] = R0;
ffa0063e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c14 <_g_sampW> */
ffa00642:	0a e1 08 0c 	P2.L = 0xc08;		/* (3080)	P2=0xff900c08 <_g_sampMode> */
ffa00646:	10 99       	R0 = B[P2] (Z);
ffa00648:	08 0c       	CC = R0 == 0x1;
ffa0064a:	57 18       	IF CC JUMP 0xffa006f8 <_audio_out+0x190>;
ffa0064c:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa0064e:	08 08       	CC = R0 == R1;
ffa00650:	51 18       	IF CC JUMP 0xffa006f2 <_audio_out+0x18a>;
ffa00652:	10 99       	R0 = B[P2] (Z);
ffa00654:	10 0c       	CC = R0 == 0x2;
ffa00656:	53 18       	IF CC JUMP 0xffa006fc <_audio_out+0x194>;
ffa00658:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c08 <_g_sampMode> */
ffa0065c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0065e:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_g_sampInc> */
ffa00662:	e0 4f       	R0 <<= 0x1c;
ffa00664:	10 93       	[P2] = R0;
ffa00666:	10 91       	R0 = [P2];
ffa00668:	44 50       	R1 = R4 + R0;
ffa0066a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0066c:	e0 4f       	R0 <<= 0x1c;
ffa0066e:	01 0a       	CC = R1 <= R0 (IU);
ffa00670:	09 93       	[P1] = R1;
ffa00672:	16 18       	IF CC JUMP 0xffa0069e <_audio_out+0x136>;
ffa00674:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00676:	40 e1 ff ef 	R0.H = 0xefff;		/* (-4097)	R0=0xefffffff(-268435457) */
ffa0067a:	01 50       	R0 = R1 + R0;
ffa0067c:	e0 4e       	R0 >>= 0x1c;
ffa0067e:	10 32       	P2 = R0;
ffa00680:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00682:	e0 4f       	R0 <<= 0x1c;
ffa00684:	01 08       	CC = R1 == R0;
ffa00686:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa00688:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0068a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0068c:	02 91       	R2 = [P0];
ffa0068e:	e3 4f       	R3 <<= 0x1c;
ffa00690:	90 07       	IF CC P2 = R0;
ffa00692:	b2 e0 03 20 	LSETUP(0xffa00696 <_audio_out+0x12e>, 0xffa00698 <_audio_out+0x130>) LC1 = P2;
ffa00696:	12 64       	R2 += 0x2;		/* (  2) */
ffa00698:	59 50       	R1 = R1 + R3;
ffa0069a:	09 93       	[P1] = R1;
ffa0069c:	02 93       	[P0] = R2;
ffa0069e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa006a0:	40 e1 ff 0f 	R0.H = 0xfff;		/* (4095)	R0=0xfffffff(268435455) */
ffa006a4:	01 54       	R0 = R1 & R0;
ffa006a6:	08 93       	[P1] = R0;
ffa006a8:	b1 2f       	JUMP.S 0xffa0060a <_audio_out+0xa2>;
ffa006aa:	28 52       	R0 = R0 - R5;
ffa006ac:	21 e1 d4 01 	R1 = 0x1d4 (X);		/*		R1=0x1d4(468) */
ffa006b0:	08 0a       	CC = R0 <= R1 (IU);
ffa006b2:	17 14       	IF !CC JUMP 0xffa006e0 <_audio_out+0x178> (BP);
ffa006b4:	21 e1 63 00 	R1 = 0x63 (X);		/*		R1=0x63( 99) */
ffa006b8:	08 0a       	CC = R0 <= R1 (IU);
ffa006ba:	c2 1b       	IF CC JUMP 0xffa0063e <_audio_out+0xd6>;
ffa006bc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c18 <_g_sampInc> */
ffa006c0:	0a e1 08 0c 	P2.L = 0xc08;		/* (3080)	P2=0xff900c08 <_g_sampMode> */
ffa006c4:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa006c6:	10 99       	R0 = B[P2] (Z);
ffa006c8:	08 08       	CC = R0 == R1;
ffa006ca:	c5 17       	IF !CC JUMP 0xffa00654 <_audio_out+0xec> (BP);
ffa006cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c08 <_g_sampMode> */
ffa006d0:	40 e1 13 10 	R0.H = 0x1013;		/* (4115)	R0=0x1013ffff(269746175) */
ffa006d4:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_g_sampInc> */
ffa006d8:	00 e1 cd ab 	R0.L = 0xabcd;		/* (-21555)	R0=0x1013abcd(269724621) */
ffa006dc:	10 93       	[P2] = R0;
ffa006de:	c4 2f       	JUMP.S 0xffa00666 <_audio_out+0xfe>;
ffa006e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c18 <_g_sampInc> */
ffa006e4:	0a e1 08 0c 	P2.L = 0xc08;		/* (3080)	P2=0xff900c08 <_g_sampMode> */
ffa006e8:	10 99       	R0 = B[P2] (Z);
ffa006ea:	08 0c       	CC = R0 == 0x1;
ffa006ec:	12 18       	IF CC JUMP 0xffa00710 <_audio_out+0x1a8>;
ffa006ee:	10 0c       	CC = R0 == 0x2;
ffa006f0:	ea 17       	IF !CC JUMP 0xffa006c4 <_audio_out+0x15c> (BP);
ffa006f2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa006f4:	10 9b       	B[P2] = R0;
ffa006f6:	ae 2f       	JUMP.S 0xffa00652 <_audio_out+0xea>;
ffa006f8:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa006fa:	10 9b       	B[P2] = R0;
ffa006fc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c08 <_g_sampMode> */
ffa00700:	40 e1 f1 0f 	R0.H = 0xff1;		/* (4081)	R0=0xff10002(267452418) */
ffa00704:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_g_sampInc> */
ffa00708:	00 e1 21 43 	R0.L = 0x4321;		/* (17185)	R0=0xff14321(267469601) */
ffa0070c:	10 93       	[P2] = R0;
ffa0070e:	ac 2f       	JUMP.S 0xffa00666 <_audio_out+0xfe>;
ffa00710:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa00712:	10 9b       	B[P2] = R0;
ffa00714:	dc 2f       	JUMP.S 0xffa006cc <_audio_out+0x164>;
	...

ffa00718 <_wait_flash>:
ffa00718:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0071a:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00c28(-4191192) */
ffa0071e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00722:	0d e1 04 07 	P5.L = 0x704;		/* (1796)	P5=0xffc00704(-4192508) */
ffa00726:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa00728:	2f 97       	W[P5] = R7;
ffa0072a:	24 00       	SSYNC;
ffa0072c:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0072e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00730:	ff e3 ea fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa00734:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00736:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00738:	ff e3 e6 fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa0073c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c18(-4191208) */
ffa00740:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00744:	17 97       	W[P2] = R7;
ffa00746:	24 00       	SSYNC;
ffa00748:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0074a:	ef 17       	IF !CC JUMP 0xffa00728 <_wait_flash+0x10> (BP);
ffa0074c:	01 e8 00 00 	UNLINK;
ffa00750:	bd 05       	(R7:7, P5:5) = [SP++];
ffa00752:	10 00       	RTS;

ffa00754 <_write_enable_flash>:
ffa00754:	fc 05       	[--SP] = (R7:7, P5:4);
ffa00756:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc0050c(-4193012) */
ffa0075a:	0c e1 04 15 	P4.L = 0x1504;		/* (5380)	P4=0xffc01504(-4188924) */
ffa0075e:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa00760:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00764:	27 97       	W[P4] = R7;
ffa00766:	24 00       	SSYNC;
ffa00768:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00704(-4192508) */
ffa0076c:	21 e1 50 00 	R1 = 0x50 (X);		/*		R1=0x50( 80) */
ffa00770:	0d e1 08 15 	P5.L = 0x1508;		/* (5384)	P5=0xffc01508(-4188920) */
ffa00774:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00776:	ff e3 c7 fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa0077a:	2f 97       	W[P5] = R7;
ffa0077c:	24 00       	SSYNC;
ffa0077e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00782:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00786:	17 97       	W[P2] = R7;
ffa00788:	24 00       	SSYNC;
ffa0078a:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0078c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0078e:	ff e3 bb fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa00792:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00794:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00796:	ff e3 b7 fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa0079a:	2f 97       	W[P5] = R7;
ffa0079c:	24 00       	SSYNC;
ffa0079e:	27 97       	W[P4] = R7;
ffa007a0:	24 00       	SSYNC;
ffa007a2:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa007a4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007a6:	ff e3 af fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa007aa:	2f 97       	W[P5] = R7;
ffa007ac:	24 00       	SSYNC;
ffa007ae:	01 e8 00 00 	UNLINK;
ffa007b2:	bc 05       	(R7:7, P5:4) = [SP++];
ffa007b4:	10 00       	RTS;
	...

ffa007b8 <_read_flash_u32>:
ffa007b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa007bc:	70 05       	[--SP] = (R7:6);
ffa007be:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa007c2:	16 60       	R6 = 0x2 (X);		/*		R6=0x2(  2) */
ffa007c4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa007c8:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R6 || NOP;
ffa007cc:	16 97 00 00 
ffa007d0:	24 00       	SSYNC;
ffa007d2:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa007d4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007d6:	ff e3 97 fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa007da:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa007de:	49 43       	R1 = R1.B (Z);
ffa007e0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007e2:	ff e3 91 fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa007e6:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa007ea:	49 43       	R1 = R1.B (Z);
ffa007ec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007ee:	ff e3 8b fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa007f2:	79 43       	R1 = R7.B (Z);
ffa007f4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007f6:	ff e3 87 fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa007fa:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa007fc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007fe:	ff e3 83 fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa00802:	47 43       	R7 = R0.B (Z);
ffa00804:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00806:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00808:	ff e3 7e fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa0080c:	40 43       	R0 = R0.B (Z);
ffa0080e:	47 4f       	R7 <<= 0x8;
ffa00810:	c7 51       	R7 = R7 + R0;
ffa00812:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00814:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00816:	ff e3 77 fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa0081a:	40 43       	R0 = R0.B (Z);
ffa0081c:	47 4f       	R7 <<= 0x8;
ffa0081e:	c7 51       	R7 = R7 + R0;
ffa00820:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00822:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00824:	ff e3 70 fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa00828:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0082c:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00830:	47 4f       	R7 <<= 0x8;
ffa00832:	16 97       	W[P2] = R6;
ffa00834:	24 00       	SSYNC;
ffa00836:	40 43       	R0 = R0.B (Z);
ffa00838:	c7 51       	R7 = R7 + R0;
ffa0083a:	01 e8 00 00 	UNLINK;
ffa0083e:	07 30       	R0 = R7;
ffa00840:	30 05       	(R7:6) = [SP++];
ffa00842:	10 00       	RTS;

ffa00844 <_read_flash_u8>:
ffa00844:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00848:	70 05       	[--SP] = (R7:6);
ffa0084a:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0084e:	16 60       	R6 = 0x2 (X);		/*		R6=0x2(  2) */
ffa00850:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00854:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R6 || NOP;
ffa00858:	16 97 00 00 
ffa0085c:	24 00       	SSYNC;
ffa0085e:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa00860:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00862:	ff e3 51 fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa00866:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa0086a:	49 43       	R1 = R1.B (Z);
ffa0086c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0086e:	ff e3 4b fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa00872:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa00876:	49 43       	R1 = R1.B (Z);
ffa00878:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0087a:	ff e3 45 fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa0087e:	79 43       	R1 = R7.B (Z);
ffa00880:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00882:	ff e3 41 fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa00886:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00888:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0088a:	ff e3 3d fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa0088e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00892:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00896:	16 97       	W[P2] = R6;
ffa00898:	24 00       	SSYNC;
ffa0089a:	01 e8 00 00 	UNLINK;
ffa0089e:	40 43       	R0 = R0.B (Z);
ffa008a0:	30 05       	(R7:6) = [SP++];
ffa008a2:	10 00       	RTS;

ffa008a4 <_write_flash>:
ffa008a4:	e3 05       	[--SP] = (R7:4, P5:3);
ffa008a6:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa008aa:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01508(-4188920) */
ffa008ae:	f1 bb       	[FP -0x4] = R1;
ffa008b0:	0d e1 04 15 	P5.L = 0x1504;		/* (5380)	P5=0xffc01504(-4188924) */
ffa008b4:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa008b6:	20 30       	R4 = R0;
ffa008b8:	ff e3 4e ff 	CALL 0xffa00754 <_write_enable_flash>;
ffa008bc:	2f 97       	W[P5] = R7;
ffa008be:	24 00       	SSYNC;
ffa008c0:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa008c2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008c4:	ff e3 20 fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa008c8:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa008ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008cc:	ff e3 1c fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa008d0:	21 e1 f0 00 	R1 = 0xf0 (X);		/*		R1=0xf0(240) */
ffa008d4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008d6:	ff e3 17 fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa008da:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa008dc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008de:	ff e3 13 fd 	CALL 0xffa00304 <_spi_write_byte>;
ffa008e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa008e6:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa008ea:	17 97       	W[P2] = R7;
ffa008ec:	24 00       	SSYNC;
ffa008ee:	ff e3 15 ff 	CALL 0xffa00718 <_wait_flash>;
ffa008f2:	04 0c       	CC = R4 == 0x0;
ffa008f4:	6c 18       	IF CC JUMP 0xffa009cc <_write_flash+0x128>;
ffa008f6:	fc b9       	P4 = [FP -0x4];
ffa008f8:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa008fa:	15 60       	R5 = 0x2 (X);		/*		R5=0x2(  2) */
ffa008fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00900:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00904:	15 97       	W[P2] = R5;
ffa00906:	24 00       	SSYNC;
ffa00908:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01504(-4188924) */
ffa0090c:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa0090e:	0d e1 08 15 	P5.L = 0x1508;		/* (5384)	P5=0xffc01508(-4188920) */
ffa00912:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00914:	ff e3 f8 fc 	CALL 0xffa00304 <_spi_write_byte>;
ffa00918:	2d 97       	W[P5] = R5;
ffa0091a:	24 00       	SSYNC;
ffa0091c:	4b e1 07 00 	P3.H = 0x7;		/* (  7)	P3=0x70000 */
ffa00920:	0b e1 00 f0 	P3.L = 0xf000;		/* (-4096)	P3=0x7f000 */
ffa00924:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00928:	43 30       	R0 = P3;
ffa0092a:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0092e:	04 cc 30 0e 	R7 = R6 + R0 (NS) || W[P2] = R5 || NOP;
ffa00932:	15 97 00 00 
ffa00936:	24 00       	SSYNC;
ffa00938:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
ffa0093a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0093c:	ff e3 e4 fc 	CALL 0xffa00304 <_spi_write_byte>;
ffa00940:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa00944:	47 4e       	R7 >>= 0x8;
ffa00946:	49 43       	R1 = R1.B (Z);
ffa00948:	7f 43       	R7 = R7.B (Z);
ffa0094a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0094c:	ff e3 dc fc 	CALL 0xffa00304 <_spi_write_byte>;
ffa00950:	0f 30       	R1 = R7;
ffa00952:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00954:	ff e3 d8 fc 	CALL 0xffa00304 <_spi_write_byte>;
ffa00958:	71 43       	R1 = R6.B (Z);
ffa0095a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0095c:	ff e3 d4 fc 	CALL 0xffa00304 <_spi_write_byte>;
ffa00960:	21 98       	R1 = B[P4++] (Z);
ffa00962:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00964:	ff e3 d0 fc 	CALL 0xffa00304 <_spi_write_byte>;
ffa00968:	2d 97       	W[P5] = R5;
ffa0096a:	24 00       	SSYNC;
ffa0096c:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0096e:	ff e3 d5 fe 	CALL 0xffa00718 <_wait_flash>;
ffa00972:	26 08       	CC = R6 == R4;
ffa00974:	c4 17       	IF !CC JUMP 0xffa008fc <_write_flash+0x58> (BP);
ffa00976:	fd b9       	P5 = [FP -0x4];
ffa00978:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
ffa0097a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0097c:	73 30       	R6 = P3;
ffa0097e:	65 32       	P4 = P5;
ffa00980:	02 20       	JUMP.S 0xffa00984 <_write_flash+0xe0>;
ffa00982:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa00984:	37 50       	R0 = R7 + R6;
ffa00986:	ff e3 5f ff 	CALL 0xffa00844 <_read_flash_u8>;
ffa0098a:	41 43       	R1 = R0.B (Z);
ffa0098c:	28 99       	R0 = B[P5] (Z);
ffa0098e:	01 08       	CC = R1 == R0;
ffa00990:	0f 18       	IF CC JUMP 0xffa009ae <_write_flash+0x10a>;
ffa00992:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00996:	00 e1 44 00 	R0.L = 0x44;		/* ( 68)	R0=0xff900044(-7339964) */
ffa0099a:	00 e3 ed 03 	CALL 0xffa01174 <_printf_hex_byte>;
ffa0099e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900044(-7339964) */
ffa009a2:	21 99       	R1 = B[P4] (Z);
ffa009a4:	00 e1 54 00 	R0.L = 0x54;		/* ( 84)	R0=0xff900054(-7339948) */
ffa009a8:	00 e3 e6 03 	CALL 0xffa01174 <_printf_hex_byte>;
ffa009ac:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa009ae:	0f 64       	R7 += 0x1;		/* (  1) */
ffa009b0:	27 08       	CC = R7 == R4;
ffa009b2:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa009b4:	e7 17       	IF !CC JUMP 0xffa00982 <_write_flash+0xde> (BP);
ffa009b6:	05 48       	CC = !BITTST (R5, 0x0);		/* bit  0 */
ffa009b8:	0a 10       	IF !CC JUMP 0xffa009cc <_write_flash+0x128>;
ffa009ba:	01 e8 00 00 	UNLINK;
ffa009be:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900054(-7339948) */
ffa009c2:	00 e1 60 00 	R0.L = 0x60;		/* ( 96)	R0=0xff900060(-7339936) */
ffa009c6:	a3 05       	(R7:4, P5:3) = [SP++];
ffa009c8:	00 e2 c6 03 	JUMP.L 0xffa01154 <_printf_str>;
ffa009cc:	01 e8 00 00 	UNLINK;
ffa009d0:	a3 05       	(R7:4, P5:3) = [SP++];
ffa009d2:	10 00       	RTS;

ffa009d4 <_eth_listen>:
ffa009d4:	00 0c       	CC = R0 == 0x0;
ffa009d6:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa009da:	04 18       	IF CC JUMP 0xffa009e2 <_eth_listen+0xe>;
ffa009dc:	01 e8 00 00 	UNLINK;
ffa009e0:	10 00       	RTS;
ffa009e2:	47 30       	R0 = FP;
ffa009e4:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa009e6:	00 e3 3f 12 	CALL 0xffa02e64 <_bfin_EMAC_recv>;
ffa009ea:	00 0d       	CC = R0 <= 0x0;
ffa009ec:	f8 1b       	IF CC JUMP 0xffa009dc <_eth_listen+0x8>;
ffa009ee:	f9 b9       	P1 = [FP -0x4];
ffa009f0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901504 */
ffa009f4:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetDataDestIP> */
ffa009f8:	11 91       	R1 = [P2];
ffa009fa:	c8 a1       	R0 = [P1 + 0x1c];
ffa009fc:	08 08       	CC = R0 == R1;
ffa009fe:	ef 17       	IF !CC JUMP 0xffa009dc <_eth_listen+0x8> (BP);
ffa00a00:	48 e4 13 00 	R0 = W[P1 + 0x26] (Z);
ffa00a04:	00 e3 08 08 	CALL 0xffa01a14 <_htons>;
ffa00a08:	c0 42       	R0 = R0.L (Z);
ffa00a0a:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa00a0e:	08 08       	CC = R0 == R1;
ffa00a10:	e6 17       	IF !CC JUMP 0xffa009dc <_eth_listen+0x8> (BP);
ffa00a12:	f0 b9       	R0 = [FP -0x4];
ffa00a14:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa00a18:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa00a1a:	01 e1 3c 0c 	R1.L = 0xc3c;		/* (3132)	R1=0xff900c3c <_g_outpkt>(-7336900) */
ffa00a1e:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa00a20:	00 e3 42 05 	CALL 0xffa014a4 <_memcpy_>;
ffa00a24:	dc 2f       	JUMP.S 0xffa009dc <_eth_listen+0x8>;
	...

ffa00a28 <_getRadioPacket>:
ffa00a28:	e3 05       	[--SP] = (R7:4, P5:3);
ffa00a2a:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa00a2e:	78 e6 fa ff 	W[FP + -0xc] = R0;
ffa00a32:	79 e6 f8 ff 	W[FP + -0x10] = R1;
ffa00a36:	3a 30       	R7 = R2;
ffa00a38:	c0 42       	R0 = R0.L (Z);
ffa00a3a:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00a3c:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00a40:	e0 bb       	[FP -0x8] = R0;
ffa00a42:	ff e3 df fb 	CALL 0xffa00200 <_spi_write_register>;
ffa00a46:	24 00       	SSYNC;
ffa00a48:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ee4(-4190492) */
ffa00a4c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00a50:	79 e5 fa ff 	R1 = W[FP + -0xc] (X);
ffa00a54:	11 97       	W[P2] = R1;
ffa00a56:	24 00       	SSYNC;
ffa00a58:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00a5c:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa00a60:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa00a64:	10 97       	W[P2] = R0;
ffa00a66:	7e 43       	R6 = R7.B (Z);
ffa00a68:	ff e3 b2 fb 	CALL 0xffa001cc <_spi_delay>;
ffa00a6c:	06 0c       	CC = R6 == 0x0;
ffa00a6e:	0f 1c       	IF CC JUMP 0xffa00a8c <_getRadioPacket+0x64> (BP);
ffa00a70:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80050c */
ffa00a74:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c38 <_g_sampOff> */
ffa00a78:	09 e1 10 0c 	P1.L = 0xc10;		/* (3088)	P1=0xff900c10 <_wrptr> */
ffa00a7c:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00a80:	10 91       	R0 = [P2];
ffa00a82:	4a 91       	P2 = [P1];
ffa00a84:	10 93       	[P2] = R0;
ffa00a86:	08 91       	R0 = [P1];
ffa00a88:	20 64       	R0 += 0x4;		/* (  4) */
ffa00a8a:	08 93       	[P1] = R0;
ffa00a8c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900800 */
ffa00a90:	0a e1 10 0c 	P2.L = 0xc10;		/* (3088)	P2=0xff900c10 <_wrptr> */
ffa00a94:	55 91       	P5 = [P2];
ffa00a96:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc01504(-4188924) */
ffa00a9a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90f000 */
ffa00a9e:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000 <_l1_data_a>(-7340032) */
ffa00aa2:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00aa4:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa00aa8:	0b e1 14 0c 	P3.L = 0xc14;		/* (3092)	P3=0xff900c14 <_g_sampW> */
ffa00aac:	05 e1 5c 0c 	R5.L = 0xc5c;		/* (3164)	R5=0xff900c5c <_g_samples>(-7336868) */
ffa00ab0:	24 e1 ff 01 	R4 = 0x1ff (X);		/*		R4=0x1ff(511) */
ffa00ab4:	07 20       	JUMP.S 0xffa00ac2 <_getRadioPacket+0x9a>;
ffa00ab6:	08 0c       	CC = R0 == 0x1;
ffa00ab8:	1a 18       	IF CC JUMP 0xffa00aec <_getRadioPacket+0xc4>;
ffa00aba:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00abc:	03 61       	R3 = 0x20 (X);		/*		R3=0x20( 32) */
ffa00abe:	1f 08       	CC = R7 == R3;
ffa00ac0:	21 18       	IF CC JUMP 0xffa00b02 <_getRadioPacket+0xda>;
ffa00ac2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00ac4:	20 97       	W[P4] = R0;
ffa00ac6:	ff e3 83 fb 	CALL 0xffa001cc <_spi_delay>;
ffa00aca:	06 0c       	CC = R6 == 0x0;
ffa00acc:	f7 1f       	IF CC JUMP 0xffa00aba <_getRadioPacket+0x92> (BP);
ffa00ace:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c10(-4191216) */
ffa00ad2:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa00ad6:	50 95       	R0 = W[P2] (X);
ffa00ad8:	10 30       	R2 = R0;
ffa00ada:	28 9a       	B[P5++] = R0;
ffa00adc:	b9 60       	R1 = 0x17 (X);		/*		R1=0x17( 23) */
ffa00ade:	f8 42       	R0 = R7.L (Z);
ffa00ae0:	08 0a       	CC = R0 <= R1 (IU);
ffa00ae2:	ec 17       	IF !CC JUMP 0xffa00aba <_getRadioPacket+0x92> (BP);
ffa00ae4:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa00ae6:	07 54       	R0 = R7 & R0;
ffa00ae8:	00 0c       	CC = R0 == 0x0;
ffa00aea:	e6 17       	IF !CC JUMP 0xffa00ab6 <_getRadioPacket+0x8e> (BP);
ffa00aec:	18 91       	R0 = [P3];
ffa00aee:	60 54       	R1 = R0 & R4;
ffa00af0:	69 50       	R1 = R1 + R5;
ffa00af2:	11 32       	P2 = R1;
ffa00af4:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00af6:	03 61       	R3 = 0x20 (X);		/*		R3=0x20( 32) */
ffa00af8:	08 64       	R0 += 0x1;		/* (  1) */
ffa00afa:	1f 08       	CC = R7 == R3;
ffa00afc:	12 9b       	B[P2] = R2;
ffa00afe:	18 93       	[P3] = R0;
ffa00b00:	e1 17       	IF !CC JUMP 0xffa00ac2 <_getRadioPacket+0x9a> (BP);
ffa00b02:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa00b06:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00b0a:	78 e5 fa ff 	R0 = W[FP + -0xc] (X);
ffa00b0e:	10 97       	W[P2] = R0;
ffa00b10:	24 00       	SSYNC;
ffa00b12:	06 0c       	CC = R6 == 0x0;
ffa00b14:	40 1c       	IF CC JUMP 0xffa00b94 <_getRadioPacket+0x16c> (BP);
ffa00b16:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c10 <_wrptr> */
ffa00b1a:	09 e1 10 0c 	P1.L = 0xc10;		/* (3088)	P1=0xff900c10 <_wrptr> */
ffa00b1e:	09 91       	R1 = [P1];
ffa00b20:	01 65       	R1 += 0x20;		/* ( 32) */
ffa00b22:	20 e1 ff 0f 	R0 = 0xfff (X);		/*		R0=0xfff(4095) */
ffa00b26:	01 54       	R0 = R1 & R0;
ffa00b28:	01 67       	R1 += -0x20;		/* (-32) */
ffa00b2a:	11 32       	P2 = R1;
ffa00b2c:	08 93       	[P1] = R0;
ffa00b2e:	12 60       	R2 = 0x2 (X);		/*		R2=0x2(  2) */
ffa00b30:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c10 <_wrptr> */
ffa00b34:	09 e1 04 0c 	P1.L = 0xc04;		/* (3076)	P1=0xff900c04 <_g_nextFlag> */
ffa00b38:	91 a1       	R1 = [P2 + 0x18];
ffa00b3a:	39 49       	CC = BITTST (R1, 0x7);		/* bit  7 */
ffa00b3c:	82 c6 91 81 	R0 = R1 >> 0xe;
ffa00b40:	03 02       	R3 = CC;
ffa00b42:	10 54       	R0 = R0 & R2;
ffa00b44:	c3 56       	R3 = R3 | R0;
ffa00b46:	82 c6 59 85 	R2 = R1 >> 0x15;
ffa00b4a:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa00b4c:	82 54       	R2 = R2 & R0;
ffa00b4e:	e1 4e       	R1 >>= 0x1c;
ffa00b50:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa00b52:	41 54       	R1 = R1 & R0;
ffa00b54:	8a 56       	R2 = R2 | R1;
ffa00b56:	93 56       	R2 = R3 | R2;
ffa00b58:	08 91       	R0 = [P1];
ffa00b5a:	02 08       	CC = R2 == R0;
ffa00b5c:	14 18       	IF CC JUMP 0xffa00b84 <_getRadioPacket+0x15c>;
ffa00b5e:	82 09       	CC = R2 < R0 (IU);
ffa00b60:	81 14       	IF !CC JUMP 0xffa00c62 <_getRadioPacket+0x23a> (BP);
ffa00b62:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00b66:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_g_dropped> */
ffa00b6a:	04 cc 10 42 	R1 = R2 - R0 (NS) || R0 = [P2] || NOP;
ffa00b6e:	10 91 00 00 
ffa00b72:	80 64       	R0 += 0x10;		/* ( 16) */
ffa00b74:	41 50       	R1 = R1 + R0;
ffa00b76:	11 93       	[P2] = R1;
ffa00b78:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c2c(-4191188) */
ffa00b7c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa00b7e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00b82:	10 97       	W[P2] = R0;
ffa00b84:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00b86:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00b88:	02 54       	R0 = R2 & R0;
ffa00b8a:	08 93       	[P1] = R0;
ffa00b8c:	fa 67       	R2 += -0x1;		/* ( -1) */
ffa00b8e:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00b90:	02 08       	CC = R2 == R0;
ffa00b92:	71 18       	IF CC JUMP 0xffa00c74 <_getRadioPacket+0x24c>;
ffa00b94:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c04 <_g_nextFlag> */
ffa00b98:	09 e1 10 0c 	P1.L = 0xc10;		/* (3088)	P1=0xff900c10 <_wrptr> */
ffa00b9c:	21 e1 3f 02 	R1 = 0x23f (X);		/*		R1=0x23f(575) */
ffa00ba0:	08 91       	R0 = [P1];
ffa00ba2:	08 0a       	CC = R0 <= R1 (IU);
ffa00ba4:	5b 18       	IF CC JUMP 0xffa00c5a <_getRadioPacket+0x232>;
ffa00ba6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00baa:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00bae:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa00bb2:	10 97       	W[P2] = R0;
ffa00bb4:	21 e1 e2 00 	R1 = 0xe2 (X);		/*		R1=0xe2(226) */
ffa00bb8:	e0 b9       	R0 = [FP -0x8];
ffa00bba:	ff e3 a5 fb 	CALL 0xffa00304 <_spi_write_byte>;
ffa00bbe:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c10 <_wrptr> */
ffa00bc2:	09 e1 10 0c 	P1.L = 0xc10;		/* (3088)	P1=0xff900c10 <_wrptr> */
ffa00bc6:	08 91       	R0 = [P1];
ffa00bc8:	4f 30       	R1 = FP;
ffa00bca:	20 64       	R0 += 0x4;		/* (  4) */
ffa00bcc:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa00bce:	00 e3 9b 0c 	CALL 0xffa02504 <_udp_packet_setup>;
ffa00bd2:	08 32       	P1 = R0;
ffa00bd4:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa00bd8:	00 0d       	CC = R0 <= 0x0;
ffa00bda:	9a 18       	IF CC JUMP 0xffa00d0e <_getRadioPacket+0x2e6>;
ffa00bdc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00be0:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_g_dropped> */
ffa00be4:	10 91       	R0 = [P2];
ffa00be6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_g_dropped> */
ffa00bea:	08 93       	[P1] = R0;
ffa00bec:	0a e1 10 0c 	P2.L = 0xc10;		/* (3088)	P2=0xff900c10 <_wrptr> */
ffa00bf0:	10 91       	R0 = [P2];
ffa00bf2:	10 4e       	R0 >>= 0x2;
ffa00bf4:	00 0c       	CC = R0 == 0x0;
ffa00bf6:	8a 18       	IF CC JUMP 0xffa00d0a <_getRadioPacket+0x2e2>;
ffa00bf8:	51 32       	P2 = P1;
ffa00bfa:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00bfc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00bfe:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00c00:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c10 <_wrptr> */
ffa00c04:	28 90       	R0 = [P5++];
ffa00c06:	10 92       	[P2++] = R0;
ffa00c08:	09 e1 10 0c 	P1.L = 0xc10;		/* (3088)	P1=0xff900c10 <_wrptr> */
ffa00c0c:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00c0e:	08 91       	R0 = [P1];
ffa00c10:	d1 42       	R1 = R2.L (Z);
ffa00c12:	10 4e       	R0 >>= 0x2;
ffa00c14:	81 09       	CC = R1 < R0 (IU);
ffa00c16:	f5 1f       	IF CC JUMP 0xffa00c00 <_getRadioPacket+0x1d8> (BP);
ffa00c18:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c10 <_wrptr> */
ffa00c1c:	0a e1 0c 0c 	P2.L = 0xc0c;		/* (3084)	P2=0xff900c0c <_trptr> */
ffa00c20:	10 91       	R0 = [P2];
ffa00c22:	08 64       	R0 += 0x1;		/* (  1) */
ffa00c24:	10 93       	[P2] = R0;
ffa00c26:	00 e3 ed 07 	CALL 0xffa01c00 <_bfin_EMAC_send_nocopy>;
ffa00c2a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00c2c:	28 93       	[P5] = R0;
ffa00c2e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00c30:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00c32:	23 e1 90 00 	R3 = 0x90 (X);		/*		R3=0x90(144) */
ffa00c36:	09 64       	R1 += 0x1;		/* (  1) */
ffa00c38:	c8 42       	R0 = R1.L (Z);
ffa00c3a:	18 08       	CC = R0 == R3;
ffa00c3c:	2a 92       	[P5++] = R2;
ffa00c3e:	fc 17       	IF !CC JUMP 0xffa00c36 <_getRadioPacket+0x20e> (BP);
ffa00c40:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c0c(-4191220) */
ffa00c44:	20 e1 04 40 	R0 = 0x4004 (X);		/*		R0=0x4004(16388) */
ffa00c48:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00c4c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c10 <_wrptr> */
ffa00c50:	10 97       	W[P2] = R0;
ffa00c52:	09 e1 10 0c 	P1.L = 0xc10;		/* (3088)	P1=0xff900c10 <_wrptr> */
ffa00c56:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00c58:	08 93       	[P1] = R0;
ffa00c5a:	01 e8 00 00 	UNLINK;
ffa00c5e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa00c60:	10 00       	RTS;
ffa00c62:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa00c66:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_g_dropped> */
ffa00c6a:	11 91       	R1 = [P2];
ffa00c6c:	02 52       	R0 = R2 - R0;
ffa00c6e:	08 50       	R0 = R0 + R1;
ffa00c70:	10 93       	[P2] = R0;
ffa00c72:	83 2f       	JUMP.S 0xffa00b78 <_getRadioPacket+0x150>;
ffa00c74:	e0 b9       	R0 = [FP -0x8];
ffa00c76:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00c7a:	ff e3 97 fb 	CALL 0xffa003a8 <_radio_set_tx>;
ffa00c7e:	24 00       	SSYNC;
ffa00c80:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c2c(-4191188) */
ffa00c84:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa00c88:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90050c */
ffa00c8c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00c90:	79 e5 fa ff 	R1 = W[FP + -0xc] (X);
ffa00c94:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa00c98:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa00c9c:	0c e1 3c 0c 	P4.L = 0xc3c;		/* (3132)	P4=0xff900c3c <_g_outpkt> */
ffa00ca0:	11 97       	W[P2] = R1;
ffa00ca2:	5c 32       	P3 = P4;
ffa00ca4:	28 97       	W[P5] = R0;
ffa00ca6:	ff e3 93 fa 	CALL 0xffa001cc <_spi_delay>;
ffa00caa:	03 6d       	P3 += 0x20;		/* ( 32) */
ffa00cac:	00 00       	NOP;
ffa00cae:	20 98       	R0 = B[P4++] (Z);
ffa00cb0:	28 97       	W[P5] = R0;
ffa00cb2:	ff e3 8d fa 	CALL 0xffa001cc <_spi_delay>;
ffa00cb6:	5c 08       	CC = P4 == P3;
ffa00cb8:	fa 17       	IF !CC JUMP 0xffa00cac <_getRadioPacket+0x284> (BP);
ffa00cba:	78 e5 fa ff 	R0 = W[FP + -0xc] (X);
ffa00cbe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00cc2:	50 4a       	BITSET (R0, 0xa);		/* bit 10 */
ffa00cc4:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00cc8:	10 97       	W[P2] = R0;
ffa00cca:	24 00       	SSYNC;
ffa00ccc:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00cce:	50 95       	R0 = W[P2] (X);
ffa00cd0:	7b e5 f8 ff 	R3 = W[FP + -0x10] (X);
ffa00cd4:	03 54       	R0 = R3 & R0;
ffa00cd6:	c0 42       	R0 = R0.L (Z);
ffa00cd8:	00 0c       	CC = R0 == 0x0;
ffa00cda:	0c 18       	IF CC JUMP 0xffa00cf2 <_getRadioPacket+0x2ca>;
ffa00cdc:	6a 32       	P5 = P2;
ffa00cde:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00ce0:	ff e3 7a fe 	CALL 0xffa009d4 <_eth_listen>;
ffa00ce4:	68 95       	R0 = W[P5] (X);
ffa00ce6:	79 e5 f8 ff 	R1 = W[FP + -0x10] (X);
ffa00cea:	08 54       	R0 = R0 & R1;
ffa00cec:	c0 42       	R0 = R0.L (Z);
ffa00cee:	00 0c       	CC = R0 == 0x0;
ffa00cf0:	f7 17       	IF !CC JUMP 0xffa00cde <_getRadioPacket+0x2b6> (BP);
ffa00cf2:	e0 b9       	R0 = [FP -0x8];
ffa00cf4:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00cf6:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00cfa:	ff e3 83 fa 	CALL 0xffa00200 <_spi_write_register>;
ffa00cfe:	e0 b9       	R0 = [FP -0x8];
ffa00d00:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00d04:	ff e3 24 fb 	CALL 0xffa0034c <_radio_set_rx>;
ffa00d08:	4f 2f       	JUMP.S 0xffa00ba6 <_getRadioPacket+0x17e>;
ffa00d0a:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00d0c:	86 2f       	JUMP.S 0xffa00c18 <_getRadioPacket+0x1f0>;
ffa00d0e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00d12:	0a e1 0c 0c 	P2.L = 0xc0c;		/* (3084)	P2=0xff900c0c <_trptr> */
ffa00d16:	10 91       	R0 = [P2];
ffa00d18:	08 64       	R0 += 0x1;		/* (  1) */
ffa00d1a:	10 93       	[P2] = R0;
ffa00d1c:	92 2f       	JUMP.S 0xffa00c40 <_getRadioPacket+0x218>;
	...

ffa00d20 <_main>:
ffa00d20:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c0c(-4191220) */
ffa00d24:	e3 05       	[--SP] = (R7:4, P5:3);
ffa00d26:	20 e1 9c c1 	R0 = -0x3e64 (X);		/*		R0=0xffffc19c(-15972) */
ffa00d2a:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00d2e:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa00d32:	10 97       	W[P2] = R0;
ffa00d34:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa00d38:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa00d3a:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa00d3e:	12 97       	W[P2] = R2;
ffa00d40:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa00d44:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00d46:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa00d4a:	10 97       	W[P2] = R0;
ffa00d4c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa00d50:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa00d52:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa00d56:	10 97       	W[P2] = R0;
ffa00d58:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa00d5c:	a2 6f       	P2 += -0xc;		/* (-12) */
ffa00d5e:	10 97       	W[P2] = R0;
ffa00d60:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa00d64:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00d66:	10 97       	W[P2] = R0;
ffa00d68:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00d6a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00d6c:	11 97       	W[P2] = R1;
ffa00d6e:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00c30(-4191184) */
ffa00d72:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa00d76:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c10(-4191216) */
ffa00d7a:	09 e1 0c 04 	P1.L = 0x40c;		/* (1036)	P1=0xffc0040c(-4193268) */
ffa00d7e:	08 e1 04 04 	P0.L = 0x404;		/* (1028)	P0=0xffc00404(-4193276) */
ffa00d82:	0a e1 10 04 	P2.L = 0x410;		/* (1040)	P2=0xffc00410(-4193264) */
ffa00d86:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa00d8a:	01 97       	W[P0] = R1;
ffa00d8c:	11 97       	W[P2] = R1;
ffa00d8e:	08 97       	W[P1] = R0;
ffa00d90:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00d92:	20 e1 88 00 	R0 = 0x88 (X);		/*		R0=0x88(136) */
ffa00d96:	10 97       	W[P2] = R0;
ffa00d98:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00d9a:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00d9c:	01 97       	W[P0] = R1;
ffa00d9e:	0a 97       	W[P1] = R2;
ffa00da0:	10 97       	W[P2] = R0;
ffa00da2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00da4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900410 */
ffa00da8:	b8 4f       	R0 <<= 0x17;
ffa00daa:	0a e1 5c 0e 	P2.L = 0xe5c;		/* (3676)	P2=0xff900e5c <_printf_temp> */
ffa00dae:	10 93       	[P2] = R0;
ffa00db0:	20 e1 01 e0 	R0 = -0x1fff (X);		/*		R0=0xffffe001(-8191) */
ffa00db4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e5c <_printf_temp> */
ffa00db8:	0a e1 60 0e 	P2.L = 0xe60;		/* (3680)	P2=0xff900e60 <_printf_out> */
ffa00dbc:	50 4f       	R0 <<= 0xa;
ffa00dbe:	10 93       	[P2] = R0;
ffa00dc0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90e001(-7282687) */
ffa00dc4:	21 e1 46 02 	R1 = 0x246 (X);		/*		R1=0x246(582) */
ffa00dc8:	00 e1 7c 00 	R0.L = 0x7c;		/* (124)	R0=0xff90007c(-7339908) */
ffa00dcc:	00 e3 86 02 	CALL 0xffa012d8 <_printf_int>;
ffa00dd0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa00dd4:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa00dd8:	00 e3 be 01 	CALL 0xffa01154 <_printf_str>;
ffa00ddc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ac4(-7337276) */
ffa00de0:	00 e1 8c 00 	R0.L = 0x8c;		/* (140)	R0=0xff90008c(-7339892) */
ffa00de4:	00 e3 b8 01 	CALL 0xffa01154 <_printf_str>;
ffa00de8:	49 e1 40 00 	P1.H = 0x40;		/* ( 64)	P1=0x40040c */
ffa00dec:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa00dee:	22 e1 ca de 	R2 = -0x2136 (X);		/*		R2=0xffffdeca(-8502) */
ffa00df2:	23 e1 ad fb 	R3 = -0x453 (X);		/*		R3=0xfffffbad(-1107) */
ffa00df6:	20 e1 ed c0 	R0 = -0x3f13 (X);		/*		R0=0xffffc0ed(-16147) */
ffa00dfa:	21 e1 be ba 	R1 = -0x4542 (X);		/*		R1=0xffffbabe(-17730) */
ffa00dfe:	09 e1 00 00 	P1.L = 0x0;		/* (  0)	P1=0x400000 */
ffa00e02:	b2 e0 06 10 	LSETUP(0xffa00e06 <_main+0xe6>, 0xffa00e0e <_main+0xee>) LC1 = P1;
ffa00e06:	12 97       	W[P2] = R2;
ffa00e08:	53 b4       	W[P2 + 0x2] = R3;
ffa00e0a:	90 b4       	W[P2 + 0x4] = R0;
ffa00e0c:	d1 b4       	W[P2 + 0x6] = R1;
ffa00e0e:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00e10:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00e12:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00e14:	02 20       	JUMP.S 0xffa00e18 <_main+0xf8>;
ffa00e16:	45 6c       	P5 += 0x8;		/* (  8) */
ffa00e18:	2f 95       	R7 = W[P5] (Z);
ffa00e1a:	80 e1 ca de 	R0 = 0xdeca (Z);		/*		R0=0xdeca(57034) */
ffa00e1e:	07 08       	CC = R7 == R0;
ffa00e20:	15 18       	IF CC JUMP 0xffa00e4a <_main+0x12a>;
ffa00e22:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90deca(-7282998) */
ffa00e26:	0e 30       	R1 = R6;
ffa00e28:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e2c:	00 e3 fa 01 	CALL 0xffa01220 <_printf_hex>;
ffa00e30:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e34:	00 e1 ac 00 	R0.L = 0xac;		/* (172)	R0=0xff9000ac(-7339860) */
ffa00e38:	0f 30       	R1 = R7;
ffa00e3a:	00 e3 f3 01 	CALL 0xffa01220 <_printf_hex>;
ffa00e3e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000ac(-7339860) */
ffa00e42:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa00e46:	00 e3 87 01 	CALL 0xffa01154 <_printf_str>;
ffa00e4a:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa00e4c:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa00e50:	08 08       	CC = R0 == R1;
ffa00e52:	08 18       	IF CC JUMP 0xffa00e62 <_main+0x142>;
ffa00e54:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ac4(-7337276) */
ffa00e58:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e5c:	0e 30       	R1 = R6;
ffa00e5e:	00 e3 e1 01 	CALL 0xffa01220 <_printf_hex>;
ffa00e62:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa00e64:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa00e68:	08 08       	CC = R0 == R1;
ffa00e6a:	08 18       	IF CC JUMP 0xffa00e7a <_main+0x15a>;
ffa00e6c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e70:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e74:	0e 30       	R1 = R6;
ffa00e76:	00 e3 d5 01 	CALL 0xffa01220 <_printf_hex>;
ffa00e7a:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa00e7c:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa00e80:	08 08       	CC = R0 == R1;
ffa00e82:	08 18       	IF CC JUMP 0xffa00e92 <_main+0x172>;
ffa00e84:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e88:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e8c:	0e 30       	R1 = R6;
ffa00e8e:	00 e3 c9 01 	CALL 0xffa01220 <_printf_hex>;
ffa00e92:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa00e96:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa00e9a:	55 08       	CC = P5 == P2;
ffa00e9c:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00e9e:	bc 17       	IF !CC JUMP 0xffa00e16 <_main+0xf6> (BP);
ffa00ea0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00ea4:	00 e1 b4 00 	R0.L = 0xb4;		/* (180)	R0=0xff9000b4(-7339852) */
ffa00ea8:	00 e3 56 01 	CALL 0xffa01154 <_printf_str>;
ffa00eac:	00 e3 d4 0c 	CALL 0xffa02854 <_bfin_EMAC_init>;
ffa00eb0:	00 0c       	CC = R0 == 0x0;
ffa00eb2:	f0 bb       	[FP -0x4] = R0;
ffa00eb4:	f3 18       	IF CC JUMP 0xffa0109a <_main+0x37a>;
ffa00eb6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0fff8(-4128776) */
ffa00eba:	20 e1 83 38 	R0 = 0x3883 (X);		/*		R0=0x3883(14467) */
ffa00ebe:	0a e1 00 32 	P2.L = 0x3200;		/* (12800)	P2=0xffc03200(-4181504) */
ffa00ec2:	10 97       	W[P2] = R0;
ffa00ec4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03200(-4181504) */
ffa00ec8:	20 e1 56 fe 	R0 = -0x1aa (X);		/*		R0=0xfffffe56(-426) */
ffa00ecc:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa00ed0:	10 97       	W[P2] = R0;
ffa00ed2:	20 e1 ab 01 	R0 = 0x1ab (X);		/*		R0=0x1ab(427) */
ffa00ed6:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa00ed8:	10 97       	W[P2] = R0;
ffa00eda:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa00ede:	20 e1 40 01 	R0 = 0x140 (X);		/*		R0=0x140(320) */
ffa00ee2:	0a e1 10 32 	P2.L = 0x3210;		/* (12816)	P2=0xffc03210(-4181488) */
ffa00ee6:	10 97       	W[P2] = R0;
ffa00ee8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03210(-4181488) */
ffa00eec:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa00ef0:	50 95       	R0 = W[P2] (X);
ffa00ef2:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00ef4:	10 97       	W[P2] = R0;
ffa00ef6:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00ef8:	50 95       	R0 = W[P2] (X);
ffa00efa:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa00efc:	10 97       	W[P2] = R0;
ffa00efe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa00f02:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00f06:	50 95       	R0 = W[P2] (X);
ffa00f08:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00f0a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c14 <_g_sampW> */
ffa00f0e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c3c <_g_outpkt> */
ffa00f12:	10 97       	W[P2] = R0;
ffa00f14:	0b e1 04 0c 	P3.L = 0xc04;		/* (3076)	P3=0xff900c04 <_g_nextFlag> */
ffa00f18:	0c e1 34 0c 	P4.L = 0xc34;		/* (3124)	P4=0xff900c34 <_g_streamEnabled> */
ffa00f1c:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00f1e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900140(-7339712) */
ffa00f22:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa00f26:	00 e3 17 01 	CALL 0xffa01154 <_printf_str>;
ffa00f2a:	00 e3 01 0e 	CALL 0xffa02b2c <_bridge_publish>;
ffa00f2e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903204 */
ffa00f32:	0a e1 10 0c 	P2.L = 0xc10;		/* (3088)	P2=0xff900c10 <_wrptr> */
ffa00f36:	16 93       	[P2] = R6;
ffa00f38:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c10 <_wrptr> */
ffa00f3c:	0a e1 0c 0c 	P2.L = 0xc0c;		/* (3084)	P2=0xff900c0c <_trptr> */
ffa00f40:	16 93       	[P2] = R6;
ffa00f42:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c0c <_trptr> */
ffa00f46:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_g_dropped> */
ffa00f4a:	38 30       	R7 = R0;
ffa00f4c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000c8(-7339832) */
ffa00f50:	16 93       	[P2] = R6;
ffa00f52:	00 e1 e0 00 	R0.L = 0xe0;		/* (224)	R0=0xff9000e0(-7339808) */
ffa00f56:	1e 93       	[P3] = R6;
ffa00f58:	00 e3 fe 00 	CALL 0xffa01154 <_printf_str>;
ffa00f5c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c2c(-4191188) */
ffa00f60:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa00f64:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00f68:	10 97       	W[P2] = R0;
ffa00f6a:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa00f6e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00f70:	10 97       	W[P2] = R0;
ffa00f72:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00f76:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa00f78:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00f7c:	10 97       	W[P2] = R0;
ffa00f7e:	24 00       	SSYNC;
ffa00f80:	7f 43       	R7 = R7.B (Z);
ffa00f82:	17 30       	R2 = R7;
ffa00f84:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa00f86:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa00f88:	ff e3 72 fa 	CALL 0xffa0046c <_radio_init>;
ffa00f8c:	17 30       	R2 = R7;
ffa00f8e:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa00f90:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa00f94:	ff e3 6c fa 	CALL 0xffa0046c <_radio_init>;
ffa00f98:	17 30       	R2 = R7;
ffa00f9a:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa00f9e:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa00fa2:	ff e3 65 fa 	CALL 0xffa0046c <_radio_init>;
ffa00fa6:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa00fa8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00faa:	ff e3 d1 f9 	CALL 0xffa0034c <_radio_set_rx>;
ffa00fae:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa00fb2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00fb4:	ff e3 cc f9 	CALL 0xffa0034c <_radio_set_rx>;
ffa00fb8:	45 e1 0b e5 	R5.H = 0xe50b;		/* (-6901)	R5=0xe50b0c5c(-452260772) */
ffa00fbc:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa00fc0:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00fc4:	ff e3 c4 f9 	CALL 0xffa0034c <_radio_set_rx>;
ffa00fc8:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa00fca:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa00fcc:	05 e1 81 f7 	R5.L = 0xf781;		/* (-2175)	R5=0xe50bf781(-452200575) */
ffa00fd0:	20 99       	R0 = B[P4] (Z);
ffa00fd2:	00 0c       	CC = R0 == 0x0;
ffa00fd4:	a5 1f       	IF CC JUMP 0xffa00f1e <_main+0x1fe> (BP);
ffa00fd6:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa00fda:	f0 b9       	R0 = [FP -0x4];
ffa00fdc:	0d e1 00 07 	P5.L = 0x700;		/* (1792)	P5=0xffc00700(-4192512) */
ffa00fe0:	ff e3 fa fc 	CALL 0xffa009d4 <_eth_listen>;
ffa00fe4:	68 95       	R0 = W[P5] (X);
ffa00fe6:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa00fe8:	3d 18       	IF CC JUMP 0xffa01062 <_main+0x342>;
ffa00fea:	00 00       	NOP;
ffa00fec:	00 00       	NOP;
ffa00fee:	00 00       	NOP;
ffa00ff0:	68 95       	R0 = W[P5] (X);
ffa00ff2:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00ff4:	40 18       	IF CC JUMP 0xffa01074 <_main+0x354>;
ffa00ff6:	00 00       	NOP;
ffa00ff8:	00 00       	NOP;
ffa00ffa:	00 00       	NOP;
ffa00ffc:	68 95       	R0 = W[P5] (X);
ffa00ffe:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa01000:	44 18       	IF CC JUMP 0xffa01088 <_main+0x368>;
ffa01002:	20 e1 28 01 	R0 = 0x128 (X);		/*		R0=0x128(296) */
ffa01006:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0100a:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0100e:	69 95       	R1 = W[P5] (X);
ffa01010:	08 54       	R0 = R0 & R1;
ffa01012:	21 e1 28 01 	R1 = 0x128 (X);		/*		R1=0x128(296) */
ffa01016:	08 08       	CC = R0 == R1;
ffa01018:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0101a:	38 07       	IF CC R7 = R0;
ffa0101c:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa01020:	10 97       	W[P2] = R0;
ffa01022:	ff e3 ca f8 	CALL 0xffa001b6 <_ustimer>;
ffa01026:	08 4e       	R0 >>= 0x1;
ffa01028:	80 c0 05 18 	A1 = R0.L * R5.L (FU);
ffa0102c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01030:	81 c0 05 86 	A1 += R0.H * R5.L, A0 = R0.H * R5.H (FU);
ffa01034:	81 c0 28 98 	A1 += R5.H * R0.L (FU);
ffa01038:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa0103c:	0b c4 00 80 	A0 += A1;
ffa01040:	8b c0 00 38 	R0 = A0 (FU);
ffa01044:	82 c6 a8 83 	R1 = R0 >> 0xb;
ffa01048:	0c 08       	CC = R4 == R1;
ffa0104a:	c3 1b       	IF CC JUMP 0xffa00fd0 <_main+0x2b0>;
ffa0104c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01050:	20 e1 00 80 	R0 = -0x8000 (X);		/*		R0=0xffff8000(-32768) */
ffa01054:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa01058:	82 ce 01 c8 	R4 = ROT R1 BY 0x0 || W[P2] = R0 || NOP;
ffa0105c:	10 97 00 00 
ffa01060:	b8 2f       	JUMP.S 0xffa00fd0 <_main+0x2b0>;
ffa01062:	7a 43       	R2 = R7.B (Z);
ffa01064:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa01066:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa01068:	ff e3 e0 fc 	CALL 0xffa00a28 <_getRadioPacket>;
ffa0106c:	68 95       	R0 = W[P5] (X);
ffa0106e:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01070:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01072:	c4 17       	IF !CC JUMP 0xffa00ffa <_main+0x2da> (BP);
ffa01074:	7a 43       	R2 = R7.B (Z);
ffa01076:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa0107a:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0107c:	ff e3 d6 fc 	CALL 0xffa00a28 <_getRadioPacket>;
ffa01080:	68 95       	R0 = W[P5] (X);
ffa01082:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa01084:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01086:	be 17       	IF !CC JUMP 0xffa01002 <_main+0x2e2> (BP);
ffa01088:	7a 43       	R2 = R7.B (Z);
ffa0108a:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0108e:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa01092:	ff e3 cb fc 	CALL 0xffa00a28 <_getRadioPacket>;
ffa01096:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01098:	b5 2f       	JUMP.S 0xffa01002 <_main+0x2e2>;
ffa0109a:	00 e3 8d 0e 	CALL 0xffa02db4 <_DHCP_req>;
ffa0109e:	0c 2f       	JUMP.S 0xffa00eb6 <_main+0x196>;

ffa010a0 <_uart_str>:
ffa010a0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa010a4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa010a8:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa010ac:	08 32       	P1 = R0;
ffa010ae:	50 95       	R0 = W[P2] (X);
ffa010b0:	c0 42       	R0 = R0.L (Z);
ffa010b2:	08 0c       	CC = R0 == 0x1;
ffa010b4:	06 18       	IF CC JUMP 0xffa010c0 <_uart_str+0x20>;
ffa010b6:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa010b8:	02 30       	R0 = R2;
ffa010ba:	01 e8 00 00 	UNLINK;
ffa010be:	10 00       	RTS;
ffa010c0:	48 99       	R0 = B[P1] (X);
ffa010c2:	01 43       	R1 = R0.B (X);
ffa010c4:	01 0c       	CC = R1 == 0x0;
ffa010c6:	f8 1b       	IF CC JUMP 0xffa010b6 <_uart_str+0x16>;
ffa010c8:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa010cc:	09 6c       	P1 += 0x1;		/* (  1) */
ffa010ce:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa010d0:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa010d4:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa010d8:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa010da:	b2 e0 1c 00 	LSETUP(0xffa010de <_uart_str+0x3e>, 0xffa01112 <_uart_str+0x72>) LC1 = P0;
ffa010de:	19 08       	CC = R1 == R3;
ffa010e0:	1b 18       	IF CC JUMP 0xffa01116 <_uart_str+0x76>;
ffa010e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa010e6:	00 43       	R0 = R0.B (X);
ffa010e8:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa010ec:	10 97       	W[P2] = R0;
ffa010ee:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa010f0:	50 95       	R0 = W[P2] (X);
ffa010f2:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa010f4:	0a 10       	IF !CC JUMP 0xffa01108 <_uart_str+0x68>;
ffa010f6:	00 00       	NOP;
ffa010f8:	00 00       	NOP;
ffa010fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa010fe:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa01102:	50 95       	R0 = W[P2] (X);
ffa01104:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01106:	f9 1f       	IF CC JUMP 0xffa010f8 <_uart_str+0x58> (BP);
ffa01108:	48 99       	R0 = B[P1] (X);
ffa0110a:	01 43       	R1 = R0.B (X);
ffa0110c:	01 0c       	CC = R1 == 0x0;
ffa0110e:	0a 64       	R2 += 0x1;		/* (  1) */
ffa01110:	d4 1b       	IF CC JUMP 0xffa010b8 <_uart_str+0x18>;
ffa01112:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01114:	d2 2f       	JUMP.S 0xffa010b8 <_uart_str+0x18>;
ffa01116:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01118:	20 9f       	W[I0] = R0.L;
ffa0111a:	02 20       	JUMP.S 0xffa0111e <_uart_str+0x7e>;
ffa0111c:	00 00       	NOP;
ffa0111e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa01122:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa01126:	50 95       	R0 = W[P2] (X);
ffa01128:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0112a:	f9 1f       	IF CC JUMP 0xffa0111c <_uart_str+0x7c> (BP);
ffa0112c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa01130:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa01132:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa01136:	10 97       	W[P2] = R0;
ffa01138:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa0113a:	50 95       	R0 = W[P2] (X);
ffa0113c:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0113e:	e5 13       	IF !CC JUMP 0xffa01108 <_uart_str+0x68>;
ffa01140:	00 00       	NOP;
ffa01142:	00 00       	NOP;
ffa01144:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa01148:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa0114c:	50 95       	R0 = W[P2] (X);
ffa0114e:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01150:	f9 1f       	IF CC JUMP 0xffa01142 <_uart_str+0xa2> (BP);
ffa01152:	db 2f       	JUMP.S 0xffa01108 <_uart_str+0x68>;

ffa01154 <_printf_str>:
ffa01154:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01158:	01 e8 00 00 	UNLINK;
ffa0115c:	ff e2 a2 ff 	JUMP.L 0xffa010a0 <_uart_str>;

ffa01160 <_printf_newline>:
ffa01160:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01164:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa01168:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa0116c:	01 e8 00 00 	UNLINK;
ffa01170:	ff e2 98 ff 	JUMP.L 0xffa010a0 <_uart_str>;

ffa01174 <_printf_hex_byte>:
ffa01174:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01176:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0117a:	28 32       	P5 = R0;
ffa0117c:	39 30       	R7 = R1;
ffa0117e:	00 e3 b1 01 	CALL 0xffa014e0 <_strlen_>;
ffa01182:	10 30       	R2 = R0;
ffa01184:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa01188:	02 09       	CC = R2 <= R0;
ffa0118a:	41 10       	IF !CC JUMP 0xffa0120c <_printf_hex_byte+0x98>;
ffa0118c:	02 0d       	CC = R2 <= 0x0;
ffa0118e:	44 18       	IF CC JUMP 0xffa01216 <_printf_hex_byte+0xa2>;
ffa01190:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa01194:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01196:	08 e1 60 0e 	P0.L = 0xe60;		/* (3680)	P0=0xff900e60 <_printf_out> */
ffa0119a:	09 32       	P1 = R1;
ffa0119c:	42 91       	P2 = [P0];
ffa0119e:	09 64       	R1 += 0x1;		/* (  1) */
ffa011a0:	68 98       	R0 = B[P5++] (X);
ffa011a2:	0a 08       	CC = R2 == R1;
ffa011a4:	8a 5a       	P2 = P2 + P1;
ffa011a6:	10 9b       	B[P2] = R0;
ffa011a8:	f9 17       	IF !CC JUMP 0xffa0119a <_printf_hex_byte+0x26> (BP);
ffa011aa:	0a 32       	P1 = R2;
ffa011ac:	42 91       	P2 = [P0];
ffa011ae:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa011b0:	22 32       	P4 = R2;
ffa011b2:	79 43       	R1 = R7.B (Z);
ffa011b4:	8a 5a       	P2 = P2 + P1;
ffa011b6:	10 9b       	B[P2] = R0;
ffa011b8:	42 91       	P2 = [P0];
ffa011ba:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa011bc:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa011c0:	11 6c       	P1 += 0x2;		/* (  2) */
ffa011c2:	a2 5a       	P2 = P2 + P4;
ffa011c4:	10 9b       	B[P2] = R0;
ffa011c6:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa011c8:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa011ca:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa011cc:	01 30       	R0 = R1;
ffa011ce:	10 40       	R0 >>>= R2;
ffa011d0:	18 54       	R0 = R0 & R3;
ffa011d2:	38 09       	CC = R0 <= R7;
ffa011d4:	1a 1c       	IF CC JUMP 0xffa01208 <_printf_hex_byte+0x94> (BP);
ffa011d6:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa011d8:	42 91       	P2 = [P0];
ffa011da:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa011dc:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900700 */
ffa011e0:	22 0c       	CC = R2 == -0x4;
ffa011e2:	8a 5a       	P2 = P2 + P1;
ffa011e4:	0d e1 60 0e 	P5.L = 0xe60;		/* (3680)	P5=0xff900e60 <_printf_out> */
ffa011e8:	10 9b       	B[P2] = R0;
ffa011ea:	09 6c       	P1 += 0x1;		/* (  1) */
ffa011ec:	f0 17       	IF !CC JUMP 0xffa011cc <_printf_hex_byte+0x58> (BP);
ffa011ee:	6a 91       	P2 = [P5];
ffa011f0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa011f2:	94 5a       	P2 = P4 + P2;
ffa011f4:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa011f8:	28 91       	R0 = [P5];
ffa011fa:	ff e3 53 ff 	CALL 0xffa010a0 <_uart_str>;
ffa011fe:	01 e8 00 00 	UNLINK;
ffa01202:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01204:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01206:	10 00       	RTS;
ffa01208:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0120a:	e7 2f       	JUMP.S 0xffa011d8 <_printf_hex_byte+0x64>;
ffa0120c:	01 e8 00 00 	UNLINK;
ffa01210:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01212:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01214:	10 00       	RTS;
ffa01216:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e60 <_printf_out> */
ffa0121a:	08 e1 60 0e 	P0.L = 0xe60;		/* (3680)	P0=0xff900e60 <_printf_out> */
ffa0121e:	c6 2f       	JUMP.S 0xffa011aa <_printf_hex_byte+0x36>;

ffa01220 <_printf_hex>:
ffa01220:	fb 05       	[--SP] = (R7:7, P5:3);
ffa01222:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01226:	28 32       	P5 = R0;
ffa01228:	39 30       	R7 = R1;
ffa0122a:	00 e3 5b 01 	CALL 0xffa014e0 <_strlen_>;
ffa0122e:	10 30       	R2 = R0;
ffa01230:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa01234:	02 09       	CC = R2 <= R0;
ffa01236:	47 10       	IF !CC JUMP 0xffa012c4 <_printf_hex+0xa4>;
ffa01238:	02 0d       	CC = R2 <= 0x0;
ffa0123a:	4a 18       	IF CC JUMP 0xffa012ce <_printf_hex+0xae>;
ffa0123c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900000 <_l1_data_a> */
ffa01240:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01242:	09 e1 60 0e 	P1.L = 0xe60;		/* (3680)	P1=0xff900e60 <_printf_out> */
ffa01246:	01 32       	P0 = R1;
ffa01248:	4a 91       	P2 = [P1];
ffa0124a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0124c:	68 98       	R0 = B[P5++] (X);
ffa0124e:	0a 08       	CC = R2 == R1;
ffa01250:	82 5a       	P2 = P2 + P0;
ffa01252:	10 9b       	B[P2] = R0;
ffa01254:	f9 17       	IF !CC JUMP 0xffa01246 <_printf_hex+0x26> (BP);
ffa01256:	02 32       	P0 = R2;
ffa01258:	4a 91       	P2 = [P1];
ffa0125a:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0125c:	1a 32       	P3 = R2;
ffa0125e:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa01260:	82 5a       	P2 = P2 + P0;
ffa01262:	10 9b       	B[P2] = R0;
ffa01264:	4a 91       	P2 = [P1];
ffa01266:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa01268:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0126c:	10 6c       	P0 += 0x2;		/* (  2) */
ffa0126e:	9a 5a       	P2 = P2 + P3;
ffa01270:	10 9b       	B[P2] = R0;
ffa01272:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa01274:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa01276:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa01278:	b2 e0 10 50 	LSETUP(0xffa0127c <_printf_hex+0x5c>, 0xffa01298 <_printf_hex+0x78>) LC1 = P5;
ffa0127c:	07 30       	R0 = R7;
ffa0127e:	08 40       	R0 >>>= R1;
ffa01280:	10 54       	R0 = R0 & R2;
ffa01282:	18 09       	CC = R0 <= R3;
ffa01284:	1e 1c       	IF CC JUMP 0xffa012c0 <_printf_hex+0xa0> (BP);
ffa01286:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01288:	4a 91       	P2 = [P1];
ffa0128a:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c34 <_g_streamEnabled> */
ffa0128e:	0c e1 60 0e 	P4.L = 0xe60;		/* (3680)	P4=0xff900e60 <_printf_out> */
ffa01292:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa01294:	82 5a       	P2 = P2 + P0;
ffa01296:	10 9b       	B[P2] = R0;
ffa01298:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0129a:	62 91       	P2 = [P4];
ffa0129c:	4b 32       	P1 = P3;
ffa0129e:	49 6c       	P1 += 0x9;		/* (  9) */
ffa012a0:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa012a2:	8a 5a       	P2 = P2 + P1;
ffa012a4:	10 9b       	B[P2] = R0;
ffa012a6:	62 91       	P2 = [P4];
ffa012a8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa012aa:	8a 5a       	P2 = P2 + P1;
ffa012ac:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa012b0:	20 91       	R0 = [P4];
ffa012b2:	ff e3 f7 fe 	CALL 0xffa010a0 <_uart_str>;
ffa012b6:	01 e8 00 00 	UNLINK;
ffa012ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa012bc:	bb 05       	(R7:7, P5:3) = [SP++];
ffa012be:	10 00       	RTS;
ffa012c0:	80 65       	R0 += 0x30;		/* ( 48) */
ffa012c2:	e3 2f       	JUMP.S 0xffa01288 <_printf_hex+0x68>;
ffa012c4:	01 e8 00 00 	UNLINK;
ffa012c8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa012ca:	bb 05       	(R7:7, P5:3) = [SP++];
ffa012cc:	10 00       	RTS;
ffa012ce:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e60 <_printf_out> */
ffa012d2:	09 e1 60 0e 	P1.L = 0xe60;		/* (3680)	P1=0xff900e60 <_printf_out> */
ffa012d6:	c0 2f       	JUMP.S 0xffa01256 <_printf_hex+0x36>;

ffa012d8 <_printf_int>:
ffa012d8:	f3 05       	[--SP] = (R7:6, P5:3);
ffa012da:	01 0c       	CC = R1 == 0x0;
ffa012dc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa012e0:	28 32       	P5 = R0;
ffa012e2:	39 30       	R7 = R1;
ffa012e4:	41 14       	IF !CC JUMP 0xffa01366 <_printf_int+0x8e> (BP);
ffa012e6:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c04 <_g_nextFlag> */
ffa012ea:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa012ee:	5a 91       	P2 = [P3];
ffa012f0:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa012f2:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa012f4:	10 9b       	B[P2] = R0;
ffa012f6:	45 30       	R0 = P5;
ffa012f8:	00 e3 f4 00 	CALL 0xffa014e0 <_strlen_>;
ffa012fc:	c6 50       	R3 = R6 + R0;
ffa012fe:	10 30       	R2 = R0;
ffa01300:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa01304:	03 09       	CC = R3 <= R0;
ffa01306:	4e 10       	IF !CC JUMP 0xffa013a2 <_printf_int+0xca>;
ffa01308:	02 0d       	CC = R2 <= 0x0;
ffa0130a:	79 18       	IF CC JUMP 0xffa013fc <_printf_int+0x124>;
ffa0130c:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e60 <_printf_out> */
ffa01310:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01312:	08 e1 60 0e 	P0.L = 0xe60;		/* (3680)	P0=0xff900e60 <_printf_out> */
ffa01316:	09 32       	P1 = R1;
ffa01318:	42 91       	P2 = [P0];
ffa0131a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0131c:	68 98       	R0 = B[P5++] (X);
ffa0131e:	0a 08       	CC = R2 == R1;
ffa01320:	8a 5a       	P2 = P2 + P1;
ffa01322:	10 9b       	B[P2] = R0;
ffa01324:	f9 17       	IF !CC JUMP 0xffa01316 <_printf_int+0x3e> (BP);
ffa01326:	06 0d       	CC = R6 <= 0x0;
ffa01328:	12 18       	IF CC JUMP 0xffa0134c <_printf_int+0x74>;
ffa0132a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0132c:	00 91       	R0 = [P0];
ffa0132e:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa01332:	5a 91 00 00 
ffa01336:	08 50       	R0 = R0 + R1;
ffa01338:	08 32       	P1 = R0;
ffa0133a:	0e 52       	R0 = R6 - R1;
ffa0133c:	28 32       	P5 = R0;
ffa0133e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01340:	0e 08       	CC = R6 == R1;
ffa01342:	aa 5a       	P2 = P2 + P5;
ffa01344:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa01348:	08 9b       	B[P1] = R0;
ffa0134a:	f1 17       	IF !CC JUMP 0xffa0132c <_printf_int+0x54> (BP);
ffa0134c:	0b 32       	P1 = R3;
ffa0134e:	42 91       	P2 = [P0];
ffa01350:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01352:	91 5a       	P2 = P1 + P2;
ffa01354:	10 9b       	B[P2] = R0;
ffa01356:	00 91       	R0 = [P0];
ffa01358:	ff e3 a4 fe 	CALL 0xffa010a0 <_uart_str>;
ffa0135c:	01 e8 00 00 	UNLINK;
ffa01360:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01362:	b3 05       	(R7:6, P5:3) = [SP++];
ffa01364:	10 00       	RTS;
ffa01366:	01 0d       	CC = R1 <= 0x0;
ffa01368:	22 18       	IF CC JUMP 0xffa013ac <_printf_int+0xd4>;
ffa0136a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa0136e:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01370:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa01374:	05 20       	JUMP.S 0xffa0137e <_printf_int+0xa6>;
ffa01376:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa0137a:	06 08       	CC = R6 == R0;
ffa0137c:	bd 1b       	IF CC JUMP 0xffa012f6 <_printf_int+0x1e>;
ffa0137e:	07 30       	R0 = R7;
ffa01380:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01382:	00 e3 83 00 	CALL 0xffa01488 <_mod>;
ffa01386:	0e 32       	P1 = R6;
ffa01388:	5a 91       	P2 = [P3];
ffa0138a:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0138c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0138e:	0e 64       	R6 += 0x1;		/* (  1) */
ffa01390:	8a 5a       	P2 = P2 + P1;
ffa01392:	10 9b       	B[P2] = R0;
ffa01394:	07 30       	R0 = R7;
ffa01396:	00 e3 6b 00 	CALL 0xffa0146c <_div>;
ffa0139a:	00 0d       	CC = R0 <= 0x0;
ffa0139c:	38 30       	R7 = R0;
ffa0139e:	ec 17       	IF !CC JUMP 0xffa01376 <_printf_int+0x9e> (BP);
ffa013a0:	ab 2f       	JUMP.S 0xffa012f6 <_printf_int+0x1e>;
ffa013a2:	01 e8 00 00 	UNLINK;
ffa013a6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa013a8:	b3 05       	(R7:6, P5:3) = [SP++];
ffa013aa:	10 00       	RTS;
ffa013ac:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa013ae:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa013b0:	f8 4f       	R0 <<= 0x1f;
ffa013b2:	f8 53       	R7 = R0 - R7;
ffa013b4:	07 0d       	CC = R7 <= 0x0;
ffa013b6:	2c 18       	IF CC JUMP 0xffa0140e <_printf_int+0x136>;
ffa013b8:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa013bc:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa013be:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa013c2:	05 20       	JUMP.S 0xffa013cc <_printf_int+0xf4>;
ffa013c4:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa013c8:	4c 08       	CC = P4 == P1;
ffa013ca:	1e 18       	IF CC JUMP 0xffa01406 <_printf_int+0x12e>;
ffa013cc:	07 30       	R0 = R7;
ffa013ce:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa013d0:	00 e3 5c 00 	CALL 0xffa01488 <_mod>;
ffa013d4:	5a 91       	P2 = [P3];
ffa013d6:	80 65       	R0 += 0x30;		/* ( 48) */
ffa013d8:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa013da:	a2 5a       	P2 = P2 + P4;
ffa013dc:	10 9b       	B[P2] = R0;
ffa013de:	07 30       	R0 = R7;
ffa013e0:	00 e3 46 00 	CALL 0xffa0146c <_div>;
ffa013e4:	00 0d       	CC = R0 <= 0x0;
ffa013e6:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa013e8:	38 30       	R7 = R0;
ffa013ea:	ed 17       	IF !CC JUMP 0xffa013c4 <_printf_int+0xec> (BP);
ffa013ec:	74 30       	R6 = P4;
ffa013ee:	4c 32       	P1 = P4;
ffa013f0:	0e 64       	R6 += 0x1;		/* (  1) */
ffa013f2:	5a 91       	P2 = [P3];
ffa013f4:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa013f6:	8a 5a       	P2 = P2 + P1;
ffa013f8:	10 9b       	B[P2] = R0;
ffa013fa:	7e 2f       	JUMP.S 0xffa012f6 <_printf_int+0x1e>;
ffa013fc:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e60 <_printf_out> */
ffa01400:	08 e1 60 0e 	P0.L = 0xe60;		/* (3680)	P0=0xff900e60 <_printf_out> */
ffa01404:	91 2f       	JUMP.S 0xffa01326 <_printf_int+0x4e>;
ffa01406:	4c 32       	P1 = P4;
ffa01408:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa0140c:	f3 2f       	JUMP.S 0xffa013f2 <_printf_int+0x11a>;
ffa0140e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa01412:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa01414:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa01416:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa0141a:	ec 2f       	JUMP.S 0xffa013f2 <_printf_int+0x11a>;

ffa0141c <_printf_ip>:
ffa0141c:	70 05       	[--SP] = (R7:6);
ffa0141e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01422:	39 30       	R7 = R1;
ffa01424:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa01428:	49 43       	R1 = R1.B (Z);
ffa0142a:	ff e3 57 ff 	CALL 0xffa012d8 <_printf_int>;
ffa0142e:	06 e1 88 00 	R6.L = 0x88;		/* (136)	R6=0xff900088(-7339896) */
ffa01432:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa01436:	49 43       	R1 = R1.B (Z);
ffa01438:	06 30       	R0 = R6;
ffa0143a:	ff e3 4f ff 	CALL 0xffa012d8 <_printf_int>;
ffa0143e:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa01442:	49 43       	R1 = R1.B (Z);
ffa01444:	06 30       	R0 = R6;
ffa01446:	c7 4e       	R7 >>= 0x18;
ffa01448:	ff e3 48 ff 	CALL 0xffa012d8 <_printf_int>;
ffa0144c:	0f 30       	R1 = R7;
ffa0144e:	06 30       	R0 = R6;
ffa01450:	ff e3 44 ff 	CALL 0xffa012d8 <_printf_int>;
ffa01454:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa01458:	00 e1 68 05 	R0.L = 0x568;		/* (1384)	R0=0xff900568(-7338648) */
ffa0145c:	ff e3 7c fe 	CALL 0xffa01154 <_printf_str>;
ffa01460:	01 e8 00 00 	UNLINK;
ffa01464:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01466:	30 05       	(R7:6) = [SP++];
ffa01468:	10 00       	RTS;
	...

ffa0146c <_div>:
ffa0146c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01470:	08 4f       	R0 <<= 0x1;
ffa01472:	48 42       	DIVS (R0, R1);
ffa01474:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa01476:	b2 e0 03 20 	LSETUP(0xffa0147a <_div+0xe>, 0xffa0147c <_div+0x10>) LC1 = P2;
ffa0147a:	08 42       	DIVQ (R0, R1);
ffa0147c:	00 00       	NOP;
ffa0147e:	80 42       	R0 = R0.L (X);
ffa01480:	01 e8 00 00 	UNLINK;
ffa01484:	10 00       	RTS;
	...

ffa01488 <_mod>:
ffa01488:	70 05       	[--SP] = (R7:6);
ffa0148a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0148e:	30 30       	R6 = R0;
ffa01490:	39 30       	R7 = R1;
ffa01492:	ff e3 ed ff 	CALL 0xffa0146c <_div>;
ffa01496:	c7 40       	R7 *= R0;
ffa01498:	01 e8 00 00 	UNLINK;
ffa0149c:	be 53       	R6 = R6 - R7;
ffa0149e:	06 30       	R0 = R6;
ffa014a0:	30 05       	(R7:6) = [SP++];
ffa014a2:	10 00       	RTS;

ffa014a4 <_memcpy_>:
ffa014a4:	02 0d       	CC = R2 <= 0x0;
ffa014a6:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa014aa:	08 32       	P1 = R0;
ffa014ac:	11 32       	P2 = R1;
ffa014ae:	08 18       	IF CC JUMP 0xffa014be <_memcpy_+0x1a>;
ffa014b0:	00 00       	NOP;
ffa014b2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa014b4:	09 64       	R1 += 0x1;		/* (  1) */
ffa014b6:	48 98       	R0 = B[P1++] (X);
ffa014b8:	0a 08       	CC = R2 == R1;
ffa014ba:	10 9a       	B[P2++] = R0;
ffa014bc:	fc 17       	IF !CC JUMP 0xffa014b4 <_memcpy_+0x10> (BP);
ffa014be:	01 e8 00 00 	UNLINK;
ffa014c2:	10 00       	RTS;

ffa014c4 <_memset_>:
ffa014c4:	02 0d       	CC = R2 <= 0x0;
ffa014c6:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa014ca:	10 32       	P2 = R0;
ffa014cc:	06 18       	IF CC JUMP 0xffa014d8 <_memset_+0x14>;
ffa014ce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa014d0:	08 64       	R0 += 0x1;		/* (  1) */
ffa014d2:	02 08       	CC = R2 == R0;
ffa014d4:	11 9a       	B[P2++] = R1;
ffa014d6:	fd 17       	IF !CC JUMP 0xffa014d0 <_memset_+0xc> (BP);
ffa014d8:	01 e8 00 00 	UNLINK;
ffa014dc:	10 00       	RTS;
	...

ffa014e0 <_strlen_>:
ffa014e0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa014e4:	10 32       	P2 = R0;
ffa014e6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa014e8:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa014ec:	b2 e0 06 10 	LSETUP(0xffa014f0 <_strlen_+0x10>, 0xffa014f8 <_strlen_+0x18>) LC1 = P1;
ffa014f0:	50 99       	R0 = B[P2] (X);
ffa014f2:	00 0c       	CC = R0 == 0x0;
ffa014f4:	04 18       	IF CC JUMP 0xffa014fc <_strlen_+0x1c>;
ffa014f6:	09 64       	R1 += 0x1;		/* (  1) */
ffa014f8:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa014fa:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa014fc:	01 30       	R0 = R1;
ffa014fe:	01 e8 00 00 	UNLINK;
ffa01502:	10 00       	RTS;

ffa01504 <_strcpy_>:
ffa01504:	12 32       	P2 = R2;
ffa01506:	c5 04       	[--SP] = (P5:5);
ffa01508:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0150c:	29 32       	P5 = R1;
ffa0150e:	00 32       	P0 = R0;
ffa01510:	51 99       	R1 = B[P2] (X);
ffa01512:	08 43       	R0 = R1.B (X);
ffa01514:	00 0c       	CC = R0 == 0x0;
ffa01516:	17 18       	IF CC JUMP 0xffa01544 <_strcpy_+0x40>;
ffa01518:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0151a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0151c:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa01520:	b2 e0 09 10 	LSETUP(0xffa01524 <_strcpy_+0x20>, 0xffa01532 <_strcpy_+0x2e>) LC1 = P1;
ffa01524:	01 9a       	B[P0++] = R1;
ffa01526:	51 99       	R1 = B[P2] (X);
ffa01528:	08 43       	R0 = R1.B (X);
ffa0152a:	00 0c       	CC = R0 == 0x0;
ffa0152c:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0152e:	03 18       	IF CC JUMP 0xffa01534 <_strcpy_+0x30>;
ffa01530:	00 00       	NOP;
ffa01532:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01534:	01 e8 00 00 	UNLINK;
ffa01538:	28 91       	R0 = [P5];
ffa0153a:	10 50       	R0 = R0 + R2;
ffa0153c:	28 93       	[P5] = R0;
ffa0153e:	40 30       	R0 = P0;
ffa01540:	85 04       	(P5:5) = [SP++];
ffa01542:	10 00       	RTS;
ffa01544:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01546:	f7 2f       	JUMP.S 0xffa01534 <_strcpy_+0x30>;

ffa01548 <_strprepend>:
ffa01548:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0154a:	21 32       	P4 = R1;
ffa0154c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01550:	38 30       	R7 = R0;
ffa01552:	02 30       	R0 = R2;
ffa01554:	2a 32       	P5 = R2;
ffa01556:	ff e3 c5 ff 	CALL 0xffa014e0 <_strlen_>;
ffa0155a:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa0155e:	20 91 00 00 
ffa01562:	02 0d       	CC = R2 <= 0x0;
ffa01564:	0a 18       	IF CC JUMP 0xffa01578 <_strprepend+0x30>;
ffa01566:	07 52       	R0 = R7 - R0;
ffa01568:	10 32       	P2 = R0;
ffa0156a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0156c:	09 64       	R1 += 0x1;		/* (  1) */
ffa0156e:	68 98       	R0 = B[P5++] (X);
ffa01570:	0a 08       	CC = R2 == R1;
ffa01572:	10 9a       	B[P2++] = R0;
ffa01574:	fc 17       	IF !CC JUMP 0xffa0156c <_strprepend+0x24> (BP);
ffa01576:	20 91       	R0 = [P4];
ffa01578:	01 e8 00 00 	UNLINK;
ffa0157c:	07 52       	R0 = R7 - R0;
ffa0157e:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01580:	10 00       	RTS;
	...

ffa01584 <_strcmp>:
ffa01584:	10 32       	P2 = R0;
ffa01586:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0158a:	01 32       	P0 = R1;
ffa0158c:	51 99       	R1 = B[P2] (X);
ffa0158e:	01 0c       	CC = R1 == 0x0;
ffa01590:	1b 18       	IF CC JUMP 0xffa015c6 <_strcmp+0x42>;
ffa01592:	00 00       	NOP;
ffa01594:	00 00       	NOP;
ffa01596:	00 00       	NOP;
ffa01598:	40 99       	R0 = B[P0] (X);
ffa0159a:	00 0c       	CC = R0 == 0x0;
ffa0159c:	15 18       	IF CC JUMP 0xffa015c6 <_strcmp+0x42>;
ffa0159e:	01 08       	CC = R1 == R0;
ffa015a0:	1c 10       	IF !CC JUMP 0xffa015d8 <_strcmp+0x54>;
ffa015a2:	4a 32       	P1 = P2;
ffa015a4:	50 32       	P2 = P0;
ffa015a6:	09 6c       	P1 += 0x1;		/* (  1) */
ffa015a8:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa015aa:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa015ae:	49 99       	R1 = B[P1] (X);
ffa015b0:	01 0c       	CC = R1 == 0x0;
ffa015b2:	0a 18       	IF CC JUMP 0xffa015c6 <_strcmp+0x42>;
ffa015b4:	00 00       	NOP;
ffa015b6:	00 00       	NOP;
ffa015b8:	00 00       	NOP;
ffa015ba:	50 99       	R0 = B[P2] (X);
ffa015bc:	00 0c       	CC = R0 == 0x0;
ffa015be:	04 18       	IF CC JUMP 0xffa015c6 <_strcmp+0x42>;
ffa015c0:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa015c2:	40 0c       	CC = P0 == 0x0;
ffa015c4:	05 10       	IF !CC JUMP 0xffa015ce <_strcmp+0x4a>;
ffa015c6:	01 e8 00 00 	UNLINK;
ffa015ca:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa015cc:	10 00       	RTS;
ffa015ce:	01 08       	CC = R1 == R0;
ffa015d0:	04 10       	IF !CC JUMP 0xffa015d8 <_strcmp+0x54>;
ffa015d2:	09 6c       	P1 += 0x1;		/* (  1) */
ffa015d4:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa015d6:	ec 2f       	JUMP.S 0xffa015ae <_strcmp+0x2a>;
ffa015d8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa015da:	01 e8 00 00 	UNLINK;
ffa015de:	10 00       	RTS;

ffa015e0 <_substr>:
ffa015e0:	f4 05       	[--SP] = (R7:6, P5:4);
ffa015e2:	20 32       	P4 = R0;
ffa015e4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa015e8:	11 32       	P2 = R1;
ffa015ea:	32 30       	R6 = R2;
ffa015ec:	61 99       	R1 = B[P4] (X);
ffa015ee:	01 0c       	CC = R1 == 0x0;
ffa015f0:	14 18       	IF CC JUMP 0xffa01618 <_substr+0x38>;
ffa015f2:	00 00       	NOP;
ffa015f4:	00 00       	NOP;
ffa015f6:	00 00       	NOP;
ffa015f8:	50 99       	R0 = B[P2] (X);
ffa015fa:	00 0c       	CC = R0 == 0x0;
ffa015fc:	0e 18       	IF CC JUMP 0xffa01618 <_substr+0x38>;
ffa015fe:	02 0d       	CC = R2 <= 0x0;
ffa01600:	0c 18       	IF CC JUMP 0xffa01618 <_substr+0x38>;
ffa01602:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01604:	01 08       	CC = R1 == R0;
ffa01606:	0f 18       	IF CC JUMP 0xffa01624 <_substr+0x44>;
ffa01608:	00 00       	NOP;
ffa0160a:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0160c:	0b 64       	R3 += 0x1;		/* (  1) */
ffa0160e:	50 99       	R0 = B[P2] (X);
ffa01610:	00 0c       	CC = R0 == 0x0;
ffa01612:	03 18       	IF CC JUMP 0xffa01618 <_substr+0x38>;
ffa01614:	1e 09       	CC = R6 <= R3;
ffa01616:	f7 17       	IF !CC JUMP 0xffa01604 <_substr+0x24> (BP);
ffa01618:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa0161a:	01 e8 00 00 	UNLINK;
ffa0161e:	40 30       	R0 = P0;
ffa01620:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01622:	10 00       	RTS;
ffa01624:	52 30       	R2 = P2;
ffa01626:	3b 30       	R7 = R3;
ffa01628:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0162a:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0162c:	12 32       	P2 = R2;
ffa0162e:	07 32       	P0 = R7;
ffa01630:	4c 32       	P1 = P4;
ffa01632:	6c 32       	P5 = P4;
ffa01634:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01636:	15 6c       	P5 += 0x2;		/* (  2) */
ffa01638:	02 20       	JUMP.S 0xffa0163c <_substr+0x5c>;
ffa0163a:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0163c:	4b 99       	R3 = B[P1] (X);
ffa0163e:	50 99       	R0 = B[P2] (X);
ffa01640:	03 08       	CC = R3 == R0;
ffa01642:	0e 10       	IF !CC JUMP 0xffa0165e <_substr+0x7e>;
ffa01644:	03 0c       	CC = R3 == 0x0;
ffa01646:	0c 18       	IF CC JUMP 0xffa0165e <_substr+0x7e>;
ffa01648:	00 00       	NOP;
ffa0164a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0164c:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0164e:	68 98       	R0 = B[P5++] (X);
ffa01650:	00 0c       	CC = R0 == 0x0;
ffa01652:	f4 17       	IF !CC JUMP 0xffa0163a <_substr+0x5a> (BP);
ffa01654:	01 e8 00 00 	UNLINK;
ffa01658:	40 30       	R0 = P0;
ffa0165a:	b4 05       	(R7:6, P5:4) = [SP++];
ffa0165c:	10 00       	RTS;
ffa0165e:	12 32       	P2 = R2;
ffa01660:	1f 30       	R3 = R7;
ffa01662:	d6 2f       	JUMP.S 0xffa0160e <_substr+0x2e>;

ffa01664 <_sprintf_int>:
ffa01664:	fb 05       	[--SP] = (R7:7, P5:3);
ffa01666:	01 0c       	CC = R1 == 0x0;
ffa01668:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0166c:	00 34       	I0 = R0;
ffa0166e:	11 30       	R2 = R1;
ffa01670:	1a 14       	IF !CC JUMP 0xffa016a4 <_sprintf_int+0x40> (BP);
ffa01672:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa01676:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa0167a:	5a 91       	P2 = [P3];
ffa0167c:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0167e:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01680:	10 9b       	B[P2] = R0;
ffa01682:	88 32       	P1 = I0;
ffa01684:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01686:	0b 52       	R0 = R3 - R1;
ffa01688:	00 32       	P0 = R0;
ffa0168a:	5a 91       	P2 = [P3];
ffa0168c:	09 64       	R1 += 0x1;		/* (  1) */
ffa0168e:	99 08       	CC = R1 < R3;
ffa01690:	82 5a       	P2 = P2 + P0;
ffa01692:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa01696:	08 9a       	B[P1++] = R0;
ffa01698:	f7 1f       	IF CC JUMP 0xffa01686 <_sprintf_int+0x22> (BP);
ffa0169a:	01 e8 00 00 	UNLINK;
ffa0169e:	03 30       	R0 = R3;
ffa016a0:	bb 05       	(R7:7, P5:3) = [SP++];
ffa016a2:	10 00       	RTS;
ffa016a4:	01 0d       	CC = R1 <= 0x0;
ffa016a6:	2d 18       	IF CC JUMP 0xffa01700 <_sprintf_int+0x9c>;
ffa016a8:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa016ac:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa016b0:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa016b2:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa016b6:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa016ba:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa016bc:	b2 e0 20 50 	LSETUP(0xffa016c0 <_sprintf_int+0x5c>, 0xffa016fc <_sprintf_int+0x98>) LC1 = P5;
ffa016c0:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa016c4:	59 91 00 00 
ffa016c8:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa016cc:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa016d0:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa016d4:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa016d8:	0b c4 00 00 	R0 = (A0 += A1);
ffa016dc:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa016e0:	10 4d       	R0 >>>= 0x2;
ffa016e2:	08 52       	R0 = R0 - R1;
ffa016e4:	00 32       	P0 = R0;
ffa016e6:	13 32       	P2 = R3;
ffa016e8:	0b 64       	R3 += 0x1;		/* (  1) */
ffa016ea:	40 0d       	CC = P0 <= 0x0;
ffa016ec:	51 5a       	P1 = P1 + P2;
ffa016ee:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa016f0:	92 5a       	P2 = P2 << 0x1;
ffa016f2:	4a 30       	R1 = P2;
ffa016f4:	0a 52       	R0 = R2 - R1;
ffa016f6:	80 65       	R0 += 0x30;		/* ( 48) */
ffa016f8:	08 9b       	B[P1] = R0;
ffa016fa:	39 18       	IF CC JUMP 0xffa0176c <_sprintf_int+0x108>;
ffa016fc:	50 30       	R2 = P0;
ffa016fe:	c2 2f       	JUMP.S 0xffa01682 <_sprintf_int+0x1e>;
ffa01700:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01702:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa01704:	f8 4f       	R0 <<= 0x1f;
ffa01706:	90 52       	R2 = R0 - R2;
ffa01708:	02 0d       	CC = R2 <= 0x0;
ffa0170a:	3c 18       	IF CC JUMP 0xffa01782 <_sprintf_int+0x11e>;
ffa0170c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa01710:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa01714:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa01716:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa0171a:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa0171e:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa01720:	b2 e0 1f 50 	LSETUP(0xffa01724 <_sprintf_int+0xc0>, 0xffa0175e <_sprintf_int+0xfa>) LC1 = P5;
ffa01724:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa01728:	59 91 00 00 
ffa0172c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01730:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa01734:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa01738:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa0173c:	0b c4 00 00 	R0 = (A0 += A1);
ffa01740:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa01744:	10 4d       	R0 >>>= 0x2;
ffa01746:	08 52       	R0 = R0 - R1;
ffa01748:	00 32       	P0 = R0;
ffa0174a:	61 5a       	P1 = P1 + P4;
ffa0174c:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa0174e:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa01750:	92 5a       	P2 = P2 << 0x1;
ffa01752:	4a 30       	R1 = P2;
ffa01754:	0a 52       	R0 = R2 - R1;
ffa01756:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01758:	40 0d       	CC = P0 <= 0x0;
ffa0175a:	08 9b       	B[P1] = R0;
ffa0175c:	0f 18       	IF CC JUMP 0xffa0177a <_sprintf_int+0x116>;
ffa0175e:	50 30       	R2 = P0;
ffa01760:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa01762:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa01764:	5a 91       	P2 = [P3];
ffa01766:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa01768:	8a 5a       	P2 = P2 + P1;
ffa0176a:	10 9b       	B[P2] = R0;
ffa0176c:	03 0d       	CC = R3 <= 0x0;
ffa0176e:	8a 17       	IF !CC JUMP 0xffa01682 <_sprintf_int+0x1e> (BP);
ffa01770:	01 e8 00 00 	UNLINK;
ffa01774:	03 30       	R0 = R3;
ffa01776:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01778:	10 00       	RTS;
ffa0177a:	5c 30       	R3 = P4;
ffa0177c:	4c 32       	P1 = P4;
ffa0177e:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01780:	f2 2f       	JUMP.S 0xffa01764 <_sprintf_int+0x100>;
ffa01782:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa01786:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa01788:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa0178a:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa0178e:	eb 2f       	JUMP.S 0xffa01764 <_sprintf_int+0x100>;

ffa01790 <_sprintf_hex>:
ffa01790:	10 32       	P2 = R0;
ffa01792:	78 05       	[--SP] = (R7:7);
ffa01794:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01796:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0179a:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa0179c:	10 9b       	B[P2] = R0;
ffa0179e:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa017a2:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa017a6:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa017a8:	12 6c       	P2 += 0x2;		/* (  2) */
ffa017aa:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa017ac:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa017ae:	b2 e0 09 10 	LSETUP(0xffa017b2 <_sprintf_hex+0x22>, 0xffa017c0 <_sprintf_hex+0x30>) LC1 = P1;
ffa017b2:	01 30       	R0 = R1;
ffa017b4:	10 40       	R0 >>>= R2;
ffa017b6:	18 54       	R0 = R0 & R3;
ffa017b8:	38 09       	CC = R0 <= R7;
ffa017ba:	09 1c       	IF CC JUMP 0xffa017cc <_sprintf_hex+0x3c> (BP);
ffa017bc:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa017be:	10 9a       	B[P2++] = R0;
ffa017c0:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa017c2:	01 e8 00 00 	UNLINK;
ffa017c6:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa017c8:	38 05       	(R7:7) = [SP++];
ffa017ca:	10 00       	RTS;
ffa017cc:	80 65       	R0 += 0x30;		/* ( 48) */
ffa017ce:	f8 2f       	JUMP.S 0xffa017be <_sprintf_hex+0x2e>;

ffa017d0 <_strprintf_int>:
ffa017d0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa017d2:	29 32       	P5 = R1;
ffa017d4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa017d8:	0a 30       	R1 = R2;
ffa017da:	38 30       	R7 = R0;
ffa017dc:	ff e3 44 ff 	CALL 0xffa01664 <_sprintf_int>;
ffa017e0:	29 91       	R1 = [P5];
ffa017e2:	41 50       	R1 = R1 + R0;
ffa017e4:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa017e8:	29 93 00 00 
ffa017ec:	01 e8 00 00 	UNLINK;
ffa017f0:	07 30       	R0 = R7;
ffa017f2:	bd 05       	(R7:7, P5:5) = [SP++];
ffa017f4:	10 00       	RTS;
	...

ffa017f8 <_strprintf_hex>:
ffa017f8:	fd 05       	[--SP] = (R7:7, P5:5);
ffa017fa:	29 32       	P5 = R1;
ffa017fc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01800:	0a 30       	R1 = R2;
ffa01802:	38 30       	R7 = R0;
ffa01804:	ff e3 c6 ff 	CALL 0xffa01790 <_sprintf_hex>;
ffa01808:	29 91       	R1 = [P5];
ffa0180a:	41 50       	R1 = R1 + R0;
ffa0180c:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa01810:	29 93 00 00 
ffa01814:	01 e8 00 00 	UNLINK;
ffa01818:	07 30       	R0 = R7;
ffa0181a:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0181c:	10 00       	RTS;
	...

ffa01820 <_atoi>:
ffa01820:	08 32       	P1 = R0;
ffa01822:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa01824:	f5 05       	[--SP] = (R7:6, P5:5);
ffa01826:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0182a:	48 99       	R0 = B[P1] (X);
ffa0182c:	10 08       	CC = R0 == R2;
ffa0182e:	25 18       	IF CC JUMP 0xffa01878 <_atoi+0x58>;
ffa01830:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa01832:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01834:	41 32       	P0 = P1;
ffa01836:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01838:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa0183a:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa0183c:	12 20       	JUMP.S 0xffa01860 <_atoi+0x40>;
ffa0183e:	8b 08       	CC = R3 < R1;
ffa01840:	16 10       	IF !CC JUMP 0xffa0186c <_atoi+0x4c>;
ffa01842:	10 43       	R0 = R2.B (X);
ffa01844:	28 32       	P5 = R0;
ffa01846:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa01848:	40 99       	R0 = B[P0] (X);
ffa0184a:	80 66       	R0 += -0x30;		/* (-48) */
ffa0184c:	40 43       	R0 = R0.B (Z);
ffa0184e:	aa 5a       	P2 = P2 + P5;
ffa01850:	10 0a       	CC = R0 <= R2 (IU);
ffa01852:	82 6e       	P2 += -0x30;		/* (-48) */
ffa01854:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01856:	03 14       	IF !CC JUMP 0xffa0185c <_atoi+0x3c> (BP);
ffa01858:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa0185a:	92 5a       	P2 = P2 << 0x1;
ffa0185c:	0b 64       	R3 += 0x1;		/* (  1) */
ffa0185e:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01860:	4a 99       	R2 = B[P1] (X);
ffa01862:	02 30       	R0 = R2;
ffa01864:	80 66       	R0 += -0x30;		/* (-48) */
ffa01866:	40 43       	R0 = R0.B (Z);
ffa01868:	30 0a       	CC = R0 <= R6 (IU);
ffa0186a:	ea 1f       	IF CC JUMP 0xffa0183e <_atoi+0x1e> (BP);
ffa0186c:	42 30       	R0 = P2;
ffa0186e:	f8 40       	R0 *= R7;
ffa01870:	01 e8 00 00 	UNLINK;
ffa01874:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01876:	10 00       	RTS;
ffa01878:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0187a:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa0187c:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa0187e:	db 2f       	JUMP.S 0xffa01834 <_atoi+0x14>;

ffa01880 <_udelay>:
ffa01880:	00 0d       	CC = R0 <= 0x0;
ffa01882:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01886:	0b 18       	IF CC JUMP 0xffa0189c <_udelay+0x1c>;
ffa01888:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0188a:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa0188e:	b2 e0 03 20 	LSETUP(0xffa01892 <_udelay+0x12>, 0xffa01894 <_udelay+0x14>) LC1 = P2;
ffa01892:	00 00       	NOP;
ffa01894:	00 00       	NOP;
ffa01896:	09 64       	R1 += 0x1;		/* (  1) */
ffa01898:	08 08       	CC = R0 == R1;
ffa0189a:	f8 17       	IF !CC JUMP 0xffa0188a <_udelay+0xa> (BP);
ffa0189c:	01 e8 00 00 	UNLINK;
ffa018a0:	10 00       	RTS;
	...

ffa018a4 <_bfin_EMAC_send_check>:
ffa018a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa018a8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa018ac:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa018b0:	50 95       	R0 = W[P2] (X);
ffa018b2:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa018b4:	00 02       	R0 = CC;
ffa018b6:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa018b8:	01 e8 00 00 	UNLINK;
ffa018bc:	10 00       	RTS;
	...

ffa018c0 <_FormatIPAddress>:
ffa018c0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa018c4:	18 30       	R3 = R0;
ffa018c6:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa018ca:	40 4f       	R0 <<= 0x8;
ffa018cc:	52 43       	R2 = R2.B (Z);
ffa018ce:	10 56       	R0 = R0 | R2;
ffa018d0:	40 4f       	R0 <<= 0x8;
ffa018d2:	49 43       	R1 = R1.B (Z);
ffa018d4:	08 56       	R0 = R0 | R1;
ffa018d6:	40 4f       	R0 <<= 0x8;
ffa018d8:	5b 43       	R3 = R3.B (Z);
ffa018da:	18 56       	R0 = R0 | R3;
ffa018dc:	01 e8 00 00 	UNLINK;
ffa018e0:	10 00       	RTS;
	...

ffa018e4 <_bfin_EMAC_halt>:
ffa018e4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa018e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018ea:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa018ee:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa018f2:	10 93       	[P2] = R0;
ffa018f4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa018f8:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa018fc:	10 97       	W[P2] = R0;
ffa018fe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa01902:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01906:	10 97       	W[P2] = R0;
ffa01908:	01 e8 00 00 	UNLINK;
ffa0190c:	10 00       	RTS;
	...

ffa01910 <_PollMdcDone>:
ffa01910:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01914:	02 20       	JUMP.S 0xffa01918 <_PollMdcDone+0x8>;
ffa01916:	00 00       	NOP;
ffa01918:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa0191c:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01920:	10 91       	R0 = [P2];
ffa01922:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01924:	f9 17       	IF !CC JUMP 0xffa01916 <_PollMdcDone+0x6> (BP);
ffa01926:	01 e8 00 00 	UNLINK;
ffa0192a:	10 00       	RTS;

ffa0192c <_WrPHYReg>:
ffa0192c:	68 05       	[--SP] = (R7:5);
ffa0192e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01932:	28 30       	R5 = R0;
ffa01934:	31 30       	R6 = R1;
ffa01936:	3a 30       	R7 = R2;
ffa01938:	ff e3 ec ff 	CALL 0xffa01910 <_PollMdcDone>;
ffa0193c:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa0193e:	b0 55       	R6 = R0 & R6;
ffa01940:	28 54       	R0 = R0 & R5;
ffa01942:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa01946:	58 4f       	R0 <<= 0xb;
ffa01948:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0194a:	ff 42       	R7 = R7.L (Z);
ffa0194c:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01950:	36 4f       	R6 <<= 0x6;
ffa01952:	08 56       	R0 = R0 | R1;
ffa01954:	17 93       	[P2] = R7;
ffa01956:	86 57       	R6 = R6 | R0;
ffa01958:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0195a:	16 93       	[P2] = R6;
ffa0195c:	01 e8 00 00 	UNLINK;
ffa01960:	28 05       	(R7:5) = [SP++];
ffa01962:	10 00       	RTS;

ffa01964 <_RdPHYReg>:
ffa01964:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01966:	29 32       	P5 = R1;
ffa01968:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0196c:	38 30       	R7 = R0;
ffa0196e:	ff e3 d1 ff 	CALL 0xffa01910 <_PollMdcDone>;
ffa01972:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa01976:	45 30       	R0 = P5;
ffa01978:	c0 42       	R0 = R0.L (Z);
ffa0197a:	28 32       	P5 = R0;
ffa0197c:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa0197e:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01982:	55 30       	R2 = P5;
ffa01984:	42 54       	R1 = R2 & R0;
ffa01986:	38 54       	R0 = R0 & R7;
ffa01988:	58 4f       	R0 <<= 0xb;
ffa0198a:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0198c:	31 4f       	R1 <<= 0x6;
ffa0198e:	41 56       	R1 = R1 | R0;
ffa01990:	11 93       	[P2] = R1;
ffa01992:	ff e3 bf ff 	CALL 0xffa01910 <_PollMdcDone>;
ffa01996:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0199a:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa0199e:	10 91       	R0 = [P2];
ffa019a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa019a4:	0a e1 64 0e 	P2.L = 0xe64;		/* (3684)	P2=0xff900e64 <_PHYregs> */
ffa019a8:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa019aa:	10 97       	W[P2] = R0;
ffa019ac:	01 e8 00 00 	UNLINK;
ffa019b0:	c0 42       	R0 = R0.L (Z);
ffa019b2:	bd 05       	(R7:7, P5:5) = [SP++];
ffa019b4:	10 00       	RTS;
	...

ffa019b8 <_SoftResetPHY>:
ffa019b8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa019ba:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa019bc:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa019c0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa019c4:	ff e3 b4 ff 	CALL 0xffa0192c <_WrPHYReg>;
ffa019c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa019ca:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa019cc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa019ce:	ff e3 af ff 	CALL 0xffa0192c <_WrPHYReg>;
ffa019d2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa019d4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa019d6:	ff e3 c7 ff 	CALL 0xffa01964 <_RdPHYReg>;
ffa019da:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa019dc:	fb 1f       	IF CC JUMP 0xffa019d2 <_SoftResetPHY+0x1a> (BP);
ffa019de:	01 e8 00 00 	UNLINK;
ffa019e2:	10 00       	RTS;

ffa019e4 <_NetCksum>:
ffa019e4:	01 0d       	CC = R1 <= 0x0;
ffa019e6:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa019ea:	10 18       	IF CC JUMP 0xffa01a0a <_NetCksum+0x26>;
ffa019ec:	10 32       	P2 = R0;
ffa019ee:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa019f0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa019f2:	0a 64       	R2 += 0x1;		/* (  1) */
ffa019f4:	10 94       	R0 = W[P2++] (Z);
ffa019f6:	0a 08       	CC = R2 == R1;
ffa019f8:	c3 50       	R3 = R3 + R0;
ffa019fa:	fc 17       	IF !CC JUMP 0xffa019f2 <_NetCksum+0xe> (BP);
ffa019fc:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa01a00:	03 50       	R0 = R3 + R0;
ffa01a02:	c0 42       	R0 = R0.L (Z);
ffa01a04:	01 e8 00 00 	UNLINK;
ffa01a08:	10 00       	RTS;
ffa01a0a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a0c:	01 e8 00 00 	UNLINK;
ffa01a10:	10 00       	RTS;
	...

ffa01a14 <_htons>:
ffa01a14:	08 30       	R1 = R0;
ffa01a16:	c0 42       	R0 = R0.L (Z);
ffa01a18:	40 4e       	R0 >>= 0x8;
ffa01a1a:	41 4f       	R1 <<= 0x8;
ffa01a1c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01a20:	08 56       	R0 = R0 | R1;
ffa01a22:	c0 42       	R0 = R0.L (Z);
ffa01a24:	01 e8 00 00 	UNLINK;
ffa01a28:	10 00       	RTS;
	...

ffa01a2c <_htonl>:
ffa01a2c:	10 30       	R2 = R0;
ffa01a2e:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa01a32:	40 43       	R0 = R0.B (Z);
ffa01a34:	49 43       	R1 = R1.B (Z);
ffa01a36:	40 4f       	R0 <<= 0x8;
ffa01a38:	08 56       	R0 = R0 | R1;
ffa01a3a:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa01a3e:	40 4f       	R0 <<= 0x8;
ffa01a40:	49 43       	R1 = R1.B (Z);
ffa01a42:	08 56       	R0 = R0 | R1;
ffa01a44:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01a48:	40 4f       	R0 <<= 0x8;
ffa01a4a:	c2 4e       	R2 >>= 0x18;
ffa01a4c:	10 56       	R0 = R0 | R2;
ffa01a4e:	01 e8 00 00 	UNLINK;
ffa01a52:	10 00       	RTS;

ffa01a54 <_pack4chars>:
ffa01a54:	08 32       	P1 = R0;
ffa01a56:	10 32       	P2 = R0;
ffa01a58:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01a5c:	01 e8 00 00 	UNLINK;
ffa01a60:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa01a64:	10 98       	R0 = B[P2++] (Z);
ffa01a66:	41 4f       	R1 <<= 0x8;
ffa01a68:	08 50       	R0 = R0 + R1;
ffa01a6a:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa01a6e:	81 4f       	R1 <<= 0x10;
ffa01a70:	08 50       	R0 = R0 + R1;
ffa01a72:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa01a76:	c1 4f       	R1 <<= 0x18;
ffa01a78:	08 50       	R0 = R0 + R1;
ffa01a7a:	10 00       	RTS;

ffa01a7c <_ip_header_setup>:
ffa01a7c:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01a7e:	28 32       	P5 = R0;
ffa01a80:	21 32       	P4 = R1;
ffa01a82:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01a86:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01a8a:	32 30       	R6 = R2;
ffa01a8c:	28 9b       	B[P5] = R0;
ffa01a8e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a90:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa01a94:	27 91       	R7 = [P4];
ffa01a96:	f8 42       	R0 = R7.L (Z);
ffa01a98:	ff e3 be ff 	CALL 0xffa01a14 <_htons>;
ffa01a9c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e64 <_PHYregs> */
ffa01aa0:	0a e1 ae 0e 	P2.L = 0xeae;		/* (3758)	P2=0xff900eae <_NetIPID> */
ffa01aa4:	68 b4       	W[P5 + 0x2] = R0;
ffa01aa6:	10 95       	R0 = W[P2] (Z);
ffa01aa8:	08 30       	R1 = R0;
ffa01aaa:	09 64       	R1 += 0x1;		/* (  1) */
ffa01aac:	67 67       	R7 += -0x14;		/* (-20) */
ffa01aae:	11 97       	W[P2] = R1;
ffa01ab0:	27 93       	[P4] = R7;
ffa01ab2:	ff e3 b1 ff 	CALL 0xffa01a14 <_htons>;
ffa01ab6:	a8 b4       	W[P5 + 0x4] = R0;
ffa01ab8:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01abc:	ff e3 ac ff 	CALL 0xffa01a14 <_htons>;
ffa01ac0:	e8 b4       	W[P5 + 0x6] = R0;
ffa01ac2:	82 c6 46 01 	R0 = R6 >>> 0x18;
ffa01ac6:	c0 4f       	R0 <<= 0x18;
ffa01ac8:	00 0c       	CC = R0 == 0x0;
ffa01aca:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01acc:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01ad0:	01 07       	IF CC R0 = R1;
ffa01ad2:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01ad6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eae <_NetIPID> */
ffa01ada:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa01ade:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01ae2:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa01ae6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ae8:	68 b5       	W[P5 + 0xa] = R0;
ffa01aea:	10 91       	R0 = [P2];
ffa01aec:	e8 b0       	[P5 + 0xc] = R0;
ffa01aee:	2e b1       	[P5 + 0x10] = R6;
ffa01af0:	45 30       	R0 = P5;
ffa01af2:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01af4:	ff e3 78 ff 	CALL 0xffa019e4 <_NetCksum>;
ffa01af8:	c0 43       	R0 =~ R0;
ffa01afa:	68 b5       	W[P5 + 0xa] = R0;
ffa01afc:	01 e8 00 00 	UNLINK;
ffa01b00:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01b02:	45 30       	R0 = P5;
ffa01b04:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01b06:	10 00       	RTS;

ffa01b08 <_ip_header_checksum>:
ffa01b08:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b0c:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa01b0e:	ff e3 6b ff 	CALL 0xffa019e4 <_NetCksum>;
ffa01b12:	08 02       	CC = R0;
ffa01b14:	00 02       	R0 = CC;
ffa01b16:	01 e8 00 00 	UNLINK;
ffa01b1a:	10 00       	RTS;

ffa01b1c <_icmp_header_setup>:
ffa01b1c:	00 32       	P0 = R0;
ffa01b1e:	c5 04       	[--SP] = (P5:5);
ffa01b20:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b22:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01b26:	29 32       	P5 = R1;
ffa01b28:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa01b2c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b2e:	40 b4       	W[P0 + 0x2] = R0;
ffa01b30:	38 ab       	R0 = W[FP + 0x18] (X);
ffa01b32:	80 b4       	W[P0 + 0x4] = R0;
ffa01b34:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa01b36:	02 9b       	B[P0] = R2;
ffa01b38:	c0 b4       	W[P0 + 0x6] = R0;
ffa01b3a:	48 32       	P1 = P0;
ffa01b3c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01b3e:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa01b40:	b2 e0 03 20 	LSETUP(0xffa01b44 <_icmp_header_setup+0x28>, 0xffa01b46 <_icmp_header_setup+0x2a>) LC1 = P2;
ffa01b44:	08 94       	R0 = W[P1++] (Z);
ffa01b46:	41 50       	R1 = R1 + R0;
ffa01b48:	c8 42       	R0 = R1.L (Z);
ffa01b4a:	81 4e       	R1 >>= 0x10;
ffa01b4c:	08 50       	R0 = R0 + R1;
ffa01b4e:	c0 43       	R0 =~ R0;
ffa01b50:	40 b4       	W[P0 + 0x2] = R0;
ffa01b52:	28 91       	R0 = [P5];
ffa01b54:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa01b56:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01b58:	01 e8 00 00 	UNLINK;
ffa01b5c:	28 93       	[P5] = R0;
ffa01b5e:	40 30       	R0 = P0;
ffa01b60:	85 04       	(P5:5) = [SP++];
ffa01b62:	10 00       	RTS;

ffa01b64 <_udp_header_setup>:
ffa01b64:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01b66:	28 32       	P5 = R0;
ffa01b68:	21 32       	P4 = R1;
ffa01b6a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b6e:	d0 42       	R0 = R2.L (Z);
ffa01b70:	ff e3 52 ff 	CALL 0xffa01a14 <_htons>;
ffa01b74:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa01b78:	28 97       	W[P5] = R0;
ffa01b7a:	07 30       	R0 = R7;
ffa01b7c:	ff e3 4c ff 	CALL 0xffa01a14 <_htons>;
ffa01b80:	27 91       	R7 = [P4];
ffa01b82:	68 b4       	W[P5 + 0x2] = R0;
ffa01b84:	f8 42       	R0 = R7.L (Z);
ffa01b86:	ff e3 47 ff 	CALL 0xffa01a14 <_htons>;
ffa01b8a:	a8 b4       	W[P5 + 0x4] = R0;
ffa01b8c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b8e:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa01b90:	e8 b4       	W[P5 + 0x6] = R0;
ffa01b92:	01 e8 00 00 	UNLINK;
ffa01b96:	45 6c       	P5 += 0x8;		/* (  8) */
ffa01b98:	45 30       	R0 = P5;
ffa01b9a:	27 93       	[P4] = R7;
ffa01b9c:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01b9e:	10 00       	RTS;

ffa01ba0 <_tcp_header_setup>:
ffa01ba0:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01ba2:	28 32       	P5 = R0;
ffa01ba4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01ba8:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01bac:	21 32       	P4 = R1;
ffa01bae:	3a 30       	R7 = R2;
ffa01bb0:	ff e3 32 ff 	CALL 0xffa01a14 <_htons>;
ffa01bb4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa01bb8:	0a e1 d0 0f 	P2.L = 0xfd0;		/* (4048)	P2=0xff900fd0 <_TcpClientPort> */
ffa01bbc:	28 97       	W[P5] = R0;
ffa01bbe:	50 95       	R0 = W[P2] (X);
ffa01bc0:	68 b4       	W[P5 + 0x2] = R0;
ffa01bc2:	38 a2       	R0 = [FP + 0x20];
ffa01bc4:	ff e3 34 ff 	CALL 0xffa01a2c <_htonl>;
ffa01bc8:	68 b0       	[P5 + 0x4] = R0;
ffa01bca:	78 a2       	R0 = [FP + 0x24];
ffa01bcc:	ff e3 30 ff 	CALL 0xffa01a2c <_htonl>;
ffa01bd0:	a8 b0       	[P5 + 0x8] = R0;
ffa01bd2:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01bd6:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01bda:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa01bde:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa01be2:	ff e3 19 ff 	CALL 0xffa01a14 <_htons>;
ffa01be6:	e8 b5       	W[P5 + 0xe] = R0;
ffa01be8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01bea:	28 b6       	W[P5 + 0x10] = R0;
ffa01bec:	68 b6       	W[P5 + 0x12] = R0;
ffa01bee:	20 91       	R0 = [P4];
ffa01bf0:	60 67       	R0 += -0x14;		/* (-20) */
ffa01bf2:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01bf4:	01 e8 00 00 	UNLINK;
ffa01bf8:	20 93       	[P4] = R0;
ffa01bfa:	45 30       	R0 = P5;
ffa01bfc:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01bfe:	10 00       	RTS;

ffa01c00 <_bfin_EMAC_send_nocopy>:
ffa01c00:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00fd0(-4190256) */
ffa01c04:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01c06:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01c0a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01c0e:	10 97       	W[P2] = R0;
ffa01c10:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01c14:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01c18:	50 95       	R0 = W[P2] (X);
ffa01c1a:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01c1c:	59 10       	IF !CC JUMP 0xffa01cce <_bfin_EMAC_send_nocopy+0xce>;
ffa01c1e:	00 00       	NOP;
ffa01c20:	00 00       	NOP;
ffa01c22:	00 00       	NOP;
ffa01c24:	50 95       	R0 = W[P2] (X);
ffa01c26:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01c28:	16 18       	IF CC JUMP 0xffa01c54 <_bfin_EMAC_send_nocopy+0x54>;
ffa01c2a:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0008 */
ffa01c2e:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01c32:	b2 e0 09 10 	LSETUP(0xffa01c36 <_bfin_EMAC_send_nocopy+0x36>, 0xffa01c44 <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa01c36:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01c3a:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01c3e:	50 95       	R0 = W[P2] (X);
ffa01c40:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01c42:	09 18       	IF CC JUMP 0xffa01c54 <_bfin_EMAC_send_nocopy+0x54>;
ffa01c44:	00 00       	NOP;
ffa01c46:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa01c4a:	00 e1 08 01 	R0.L = 0x108;		/* (264)	R0=0xff900108(-7339768) */
ffa01c4e:	ff e3 83 fa 	CALL 0xffa01154 <_printf_str>;
ffa01c52:	30 20       	JUMP.S 0xffa01cb2 <_bfin_EMAC_send_nocopy+0xb2>;
ffa01c54:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa01c58:	08 e1 ac 0e 	P0.L = 0xeac;		/* (3756)	P0=0xff900eac <_txIdx> */
ffa01c5c:	00 95       	R0 = W[P0] (Z);
ffa01c5e:	10 32       	P2 = R0;
ffa01c60:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01c64:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa01c68:	42 95       	R2 = W[P0] (X);
ffa01c6a:	d1 42       	R1 = R2.L (Z);
ffa01c6c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01c6e:	52 91       	P2 = [P2];
ffa01c70:	11 0d       	CC = R1 <= 0x2;
ffa01c72:	90 a1       	R0 = [P2 + 0x18];
ffa01c74:	50 b0       	[P2 + 0x4] = R0;
ffa01c76:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c78:	90 b2       	[P2 + 0x28] = R0;
ffa01c7a:	11 32       	P2 = R1;
ffa01c7c:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa01c7e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01c82:	08 91       	R0 = [P1];
ffa01c84:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01c88:	10 93       	[P2] = R0;
ffa01c8a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01c8e:	0a e1 fa 04 	P2.L = 0x4fa;		/* (1274)	P2=0xff9004fa <_txdmacfg> */
ffa01c92:	50 95       	R0 = W[P2] (X);
ffa01c94:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004fa(-4193030) */
ffa01c98:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01c9c:	10 97       	W[P2] = R0;
ffa01c9e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01ca2:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01ca6:	10 91       	R0 = [P2];
ffa01ca8:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01caa:	10 93       	[P2] = R0;
ffa01cac:	0d 1c       	IF CC JUMP 0xffa01cc6 <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa01cae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01cb0:	00 97       	W[P0] = R0;
ffa01cb2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01cb6:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01cb8:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01cbc:	10 97       	W[P2] = R0;
ffa01cbe:	01 e8 00 00 	UNLINK;
ffa01cc2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01cc4:	10 00       	RTS;
ffa01cc6:	02 30       	R0 = R2;
ffa01cc8:	08 64       	R0 += 0x1;		/* (  1) */
ffa01cca:	00 97       	W[P0] = R0;
ffa01ccc:	f3 2f       	JUMP.S 0xffa01cb2 <_bfin_EMAC_send_nocopy+0xb2>;
ffa01cce:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01cd2:	00 e1 f0 00 	R0.L = 0xf0;		/* (240)	R0=0xff9000f0(-7339792) */
ffa01cd6:	ff e3 3f fa 	CALL 0xffa01154 <_printf_str>;
ffa01cda:	ec 2f       	JUMP.S 0xffa01cb2 <_bfin_EMAC_send_nocopy+0xb2>;

ffa01cdc <_DHCP_tx>:
ffa01cdc:	e3 05       	[--SP] = (R7:4, P5:3);
ffa01cde:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa01ce2:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01ce6:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa01cea:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa01cee:	10 95 00 00 
ffa01cf2:	10 32       	P2 = R0;
ffa01cf4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900eb0 <_txbuf> */
ffa01cf8:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa01cfc:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa01d00:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01d02:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01d04:	52 91       	P2 = [P2];
ffa01d06:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa01d0a:	f1 bb 00 00 
ffa01d0e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90000b */
ffa01d12:	0d e1 d4 0e 	P5.L = 0xed4;		/* (3796)	P5=0xff900ed4 <_NetOurMAC> */
ffa01d16:	94 ad       	P4 = [P2 + 0x18];
ffa01d18:	1a 32       	P3 = R2;
ffa01d1a:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01d1c:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01d1e:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa01d22:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa01d26:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa01d2a:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa01d2e:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa01d32:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa01d36:	20 97       	W[P4] = R0;
ffa01d38:	68 99       	R0 = B[P5] (X);
ffa01d3a:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa01d3e:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01d42:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa01d46:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01d4a:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa01d4e:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01d52:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa01d56:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01d5a:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa01d5e:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01d62:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa01d66:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01d6a:	ff e3 55 fe 	CALL 0xffa01a14 <_htons>;
ffa01d6e:	e0 b5       	W[P4 + 0xe] = R0;
ffa01d70:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01d74:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa01d78:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa01d7c:	04 50       	R0 = R4 + R0;
ffa01d7e:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa01d82:	c0 42       	R0 = R0.L (Z);
ffa01d84:	ff e3 48 fe 	CALL 0xffa01a14 <_htons>;
ffa01d88:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa01d8c:	0a e1 ae 0e 	P2.L = 0xeae;		/* (3758)	P2=0xff900eae <_NetIPID> */
ffa01d90:	60 b6       	W[P4 + 0x12] = R0;
ffa01d92:	10 95       	R0 = W[P2] (Z);
ffa01d94:	08 30       	R1 = R0;
ffa01d96:	09 64       	R1 += 0x1;		/* (  1) */
ffa01d98:	11 97       	W[P2] = R1;
ffa01d9a:	ff e3 3d fe 	CALL 0xffa01a14 <_htons>;
ffa01d9e:	a0 b6       	W[P4 + 0x14] = R0;
ffa01da0:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01da4:	ff e3 38 fe 	CALL 0xffa01a14 <_htons>;
ffa01da8:	e0 b6       	W[P4 + 0x16] = R0;
ffa01daa:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01dac:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa01db0:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa01db4:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa01db8:	66 b7 00 00 
ffa01dbc:	44 30       	R0 = P4;
ffa01dbe:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01dc0:	e7 b1       	[P4 + 0x1c] = R7;
ffa01dc2:	23 be       	[P4 + 0x20] = P3;
ffa01dc4:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01dc6:	ff e3 0f fe 	CALL 0xffa019e4 <_NetCksum>;
ffa01dca:	c0 43       	R0 =~ R0;
ffa01dcc:	60 b7       	W[P4 + 0x1a] = R0;
ffa01dce:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa01dd2:	ff e3 21 fe 	CALL 0xffa01a14 <_htons>;
ffa01dd6:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa01dda:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa01dde:	ff e3 1b fe 	CALL 0xffa01a14 <_htons>;
ffa01de2:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa01de6:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa01dea:	04 50       	R0 = R4 + R0;
ffa01dec:	c0 42       	R0 = R0.L (Z);
ffa01dee:	ff e3 13 fe 	CALL 0xffa01a14 <_htons>;
ffa01df2:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa01df6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01df8:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa01dfc:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa01e00:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00eae(-4190546) */
ffa01e04:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01e06:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa01e0a:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa01e0e:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa01e12:	10 91       	R0 = [P2];
ffa01e14:	20 b3       	[P4 + 0x30] = R0;
ffa01e16:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa01e1a:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa01e1e:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa01e22:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa01e26:	a7 b3       	[P4 + 0x38] = R7;
ffa01e28:	e7 b3       	[P4 + 0x3c] = R7;
ffa01e2a:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa01e2e:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa01e32:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa01e36:	ff e3 fb fd 	CALL 0xffa01a2c <_htonl>;
ffa01e3a:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa01e3e:	68 99       	R0 = B[P5] (X);
ffa01e40:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa01e44:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01e48:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa01e4c:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01e50:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa01e54:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01e58:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa01e5c:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01e60:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa01e64:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01e68:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa01e6c:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa01e70:	54 5a       	P1 = P4 + P2;
ffa01e72:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e74:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa01e76:	b2 e0 02 20 	LSETUP(0xffa01e7a <_DHCP_tx+0x19e>, 0xffa01e7a <_DHCP_tx+0x19e>) LC1 = P2;
ffa01e7a:	08 9a       	B[P1++] = R0;
ffa01e7c:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa01e80:	54 5a       	P1 = P4 + P2;
ffa01e82:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e84:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa01e86:	b2 e0 02 20 	LSETUP(0xffa01e8a <_DHCP_tx+0x1ae>, 0xffa01e8a <_DHCP_tx+0x1ae>) LC1 = P2;
ffa01e8a:	08 92       	[P1++] = R0;
ffa01e8c:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa01e90:	54 5a       	P1 = P4 + P2;
ffa01e92:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e94:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa01e96:	b2 e0 02 20 	LSETUP(0xffa01e9a <_DHCP_tx+0x1be>, 0xffa01e9a <_DHCP_tx+0x1be>) LC1 = P2;
ffa01e9a:	08 92       	[P1++] = R0;
ffa01e9c:	44 30       	R0 = P4;
ffa01e9e:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa01ea2:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa01ea6:	f0 b9 00 00 
ffa01eaa:	14 30       	R2 = R4;
ffa01eac:	ff e3 fc fa 	CALL 0xffa014a4 <_memcpy_>;
ffa01eb0:	01 e8 00 00 	UNLINK;
ffa01eb4:	a3 05       	(R7:4, P5:3) = [SP++];
ffa01eb6:	ff e2 a5 fe 	JUMP.L 0xffa01c00 <_bfin_EMAC_send_nocopy>;
	...

ffa01ebc <_DHCP_tx_discover>:
ffa01ebc:	c5 04       	[--SP] = (P5:5);
ffa01ebe:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ed4 <_NetOurMAC> */
ffa01ec2:	0d e1 a8 0e 	P5.L = 0xea8;		/* (3752)	P5=0xff900ea8 <_NetDHCPserv> */
ffa01ec6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01ec8:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01ecc:	28 93       	[P5] = R0;
ffa01ece:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa01ed0:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa01ed4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01ed6:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa01eda:	b8 e6 fe ff 	B[FP + -0x2] = R0;
ffa01ede:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01ee0:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa01ee4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa01ee8:	00 e1 20 01 	R0.L = 0x120;		/* (288)	R0=0xff900120(-7339744) */
ffa01eec:	ff e3 34 f9 	CALL 0xffa01154 <_printf_str>;
ffa01ef0:	4f 30       	R1 = FP;
ffa01ef2:	2a 91       	R2 = [P5];
ffa01ef4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa01ef6:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa01ef8:	ff e3 f2 fe 	CALL 0xffa01cdc <_DHCP_tx>;
ffa01efc:	01 e8 00 00 	UNLINK;
ffa01f00:	85 04       	(P5:5) = [SP++];
ffa01f02:	10 00       	RTS;

ffa01f04 <_DHCP_parse>:
ffa01f04:	f5 05       	[--SP] = (R7:6, P5:5);
ffa01f06:	09 0d       	CC = R1 <= 0x1;
ffa01f08:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01f0c:	10 32       	P2 = R0;
ffa01f0e:	33 18       	IF CC JUMP 0xffa01f74 <_DHCP_parse+0x70>;
ffa01f10:	00 00       	NOP;
ffa01f12:	31 30       	R6 = R1;
ffa01f14:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01f16:	11 98       	R1 = B[P2++] (Z);
ffa01f18:	01 0c       	CC = R1 == 0x0;
ffa01f1a:	2b 1c       	IF CC JUMP 0xffa01f70 <_DHCP_parse+0x6c> (BP);
ffa01f1c:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa01f20:	01 08       	CC = R1 == R0;
ffa01f22:	57 99       	R7 = B[P2] (X);
ffa01f24:	28 18       	IF CC JUMP 0xffa01f74 <_DHCP_parse+0x70>;
ffa01f26:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa01f28:	6a 32       	P5 = P2;
ffa01f2a:	01 0a       	CC = R1 <= R0 (IU);
ffa01f2c:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa01f2e:	09 14       	IF !CC JUMP 0xffa01f40 <_DHCP_parse+0x3c> (BP);
ffa01f30:	09 32       	P1 = R1;
ffa01f32:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900020 */
ffa01f36:	0a e1 08 04 	P2.L = 0x408;		/* (1032)	P2=0xff900408 */
ffa01f3a:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa01f3c:	52 91       	P2 = [P2];
ffa01f3e:	52 00       	JUMP (P2);
ffa01f40:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa01f44:	00 e1 dc 01 	R0.L = 0x1dc;		/* (476)	R0=0xff9001dc(-7339556) */
ffa01f48:	ff e3 c8 f9 	CALL 0xffa012d8 <_printf_int>;
ffa01f4c:	7f 43       	R7 = R7.B (Z);
ffa01f4e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001dc(-7339556) */
ffa01f52:	00 e1 f0 01 	R0.L = 0x1f0;		/* (496)	R0=0xff9001f0(-7339536) */
ffa01f56:	0f 30       	R1 = R7;
ffa01f58:	ff e3 c0 f9 	CALL 0xffa012d8 <_printf_int>;
ffa01f5c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001f0(-7339536) */
ffa01f60:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa01f64:	ff e3 f8 f8 	CALL 0xffa01154 <_printf_str>;
ffa01f68:	0f 32       	P1 = R7;
ffa01f6a:	be 53       	R6 = R6 - R7;
ffa01f6c:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01f6e:	8d 5a       	P2 = P5 + P1;
ffa01f70:	0e 0d       	CC = R6 <= 0x1;
ffa01f72:	d1 17       	IF !CC JUMP 0xffa01f14 <_DHCP_parse+0x10> (BP);
ffa01f74:	01 e8 00 00 	UNLINK;
ffa01f78:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01f7a:	10 00       	RTS;
ffa01f7c:	45 30       	R0 = P5;
ffa01f7e:	ff e3 6b fd 	CALL 0xffa01a54 <_pack4chars>;
ffa01f82:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900408 */
ffa01f86:	0a e1 dc 0e 	P2.L = 0xedc;		/* (3804)	P2=0xff900edc <_NetSubnetMask> */
ffa01f8a:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01f8e:	10 93 00 00 
ffa01f92:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ac4(-7337276) */
ffa01f96:	00 e1 34 01 	R0.L = 0x134;		/* (308)	R0=0xff900134(-7339724) */
ffa01f9a:	ff e3 41 fa 	CALL 0xffa0141c <_printf_ip>;
ffa01f9e:	7f 43       	R7 = R7.B (Z);
ffa01fa0:	de 2f       	JUMP.S 0xffa01f5c <_DHCP_parse+0x58>;
ffa01fa2:	45 30       	R0 = P5;
ffa01fa4:	ff e3 58 fd 	CALL 0xffa01a54 <_pack4chars>;
ffa01fa8:	08 30       	R1 = R0;
ffa01faa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900134(-7339724) */
ffa01fae:	00 e1 44 01 	R0.L = 0x144;		/* (324)	R0=0xff900144(-7339708) */
ffa01fb2:	ff e3 35 fa 	CALL 0xffa0141c <_printf_ip>;
ffa01fb6:	7f 43       	R7 = R7.B (Z);
ffa01fb8:	d2 2f       	JUMP.S 0xffa01f5c <_DHCP_parse+0x58>;
ffa01fba:	45 30       	R0 = P5;
ffa01fbc:	ff e3 4c fd 	CALL 0xffa01a54 <_pack4chars>;
ffa01fc0:	08 30       	R1 = R0;
ffa01fc2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900144(-7339708) */
ffa01fc6:	00 e1 54 01 	R0.L = 0x154;		/* (340)	R0=0xff900154(-7339692) */
ffa01fca:	ff e3 29 fa 	CALL 0xffa0141c <_printf_ip>;
ffa01fce:	7f 43       	R7 = R7.B (Z);
ffa01fd0:	c6 2f       	JUMP.S 0xffa01f5c <_DHCP_parse+0x58>;
ffa01fd2:	45 30       	R0 = P5;
ffa01fd4:	ff e3 40 fd 	CALL 0xffa01a54 <_pack4chars>;
ffa01fd8:	08 30       	R1 = R0;
ffa01fda:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900154(-7339692) */
ffa01fde:	00 e1 64 01 	R0.L = 0x164;		/* (356)	R0=0xff900164(-7339676) */
ffa01fe2:	ff e3 1d fa 	CALL 0xffa0141c <_printf_ip>;
ffa01fe6:	7f 43       	R7 = R7.B (Z);
ffa01fe8:	ba 2f       	JUMP.S 0xffa01f5c <_DHCP_parse+0x58>;
ffa01fea:	45 30       	R0 = P5;
ffa01fec:	ff e3 34 fd 	CALL 0xffa01a54 <_pack4chars>;
ffa01ff0:	ff e3 1e fd 	CALL 0xffa01a2c <_htonl>;
ffa01ff4:	08 30       	R1 = R0;
ffa01ff6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900164(-7339676) */
ffa01ffa:	00 e1 74 01 	R0.L = 0x174;		/* (372)	R0=0xff900174(-7339660) */
ffa01ffe:	ff e3 6d f9 	CALL 0xffa012d8 <_printf_int>;
ffa02002:	7f 43       	R7 = R7.B (Z);
ffa02004:	ac 2f       	JUMP.S 0xffa01f5c <_DHCP_parse+0x58>;
ffa02006:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900174(-7339660) */
ffa0200a:	29 99       	R1 = B[P5] (Z);
ffa0200c:	00 e1 88 01 	R0.L = 0x188;		/* (392)	R0=0xff900188(-7339640) */
ffa02010:	ff e3 64 f9 	CALL 0xffa012d8 <_printf_int>;
ffa02014:	7f 43       	R7 = R7.B (Z);
ffa02016:	a3 2f       	JUMP.S 0xffa01f5c <_DHCP_parse+0x58>;
ffa02018:	45 30       	R0 = P5;
ffa0201a:	ff e3 1d fd 	CALL 0xffa01a54 <_pack4chars>;
ffa0201e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900edc <_NetSubnetMask> */
ffa02022:	0a e1 a8 0e 	P2.L = 0xea8;		/* (3752)	P2=0xff900ea8 <_NetDHCPserv> */
ffa02026:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa0202a:	10 93 00 00 
ffa0202e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900188(-7339640) */
ffa02032:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa02036:	ff e3 f3 f9 	CALL 0xffa0141c <_printf_ip>;
ffa0203a:	7f 43       	R7 = R7.B (Z);
ffa0203c:	90 2f       	JUMP.S 0xffa01f5c <_DHCP_parse+0x58>;
ffa0203e:	45 30       	R0 = P5;
ffa02040:	ff e3 0a fd 	CALL 0xffa01a54 <_pack4chars>;
ffa02044:	ff e3 f4 fc 	CALL 0xffa01a2c <_htonl>;
ffa02048:	08 30       	R1 = R0;
ffa0204a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90019c(-7339620) */
ffa0204e:	00 e1 b0 01 	R0.L = 0x1b0;		/* (432)	R0=0xff9001b0(-7339600) */
ffa02052:	ff e3 43 f9 	CALL 0xffa012d8 <_printf_int>;
ffa02056:	7f 43       	R7 = R7.B (Z);
ffa02058:	82 2f       	JUMP.S 0xffa01f5c <_DHCP_parse+0x58>;
ffa0205a:	45 30       	R0 = P5;
ffa0205c:	ff e3 fc fc 	CALL 0xffa01a54 <_pack4chars>;
ffa02060:	ff e3 e6 fc 	CALL 0xffa01a2c <_htonl>;
ffa02064:	08 30       	R1 = R0;
ffa02066:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001b0(-7339600) */
ffa0206a:	00 e1 c4 01 	R0.L = 0x1c4;		/* (452)	R0=0xff9001c4(-7339580) */
ffa0206e:	ff e3 35 f9 	CALL 0xffa012d8 <_printf_int>;
ffa02072:	7f 43       	R7 = R7.B (Z);
ffa02074:	74 2f       	JUMP.S 0xffa01f5c <_DHCP_parse+0x58>;
	...

ffa02078 <_bfin_EMAC_send>:
ffa02078:	c4 04       	[--SP] = (P5:4);
ffa0207a:	01 0d       	CC = R1 <= 0x0;
ffa0207c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02080:	18 30       	R3 = R0;
ffa02082:	11 30       	R2 = R1;
ffa02084:	90 18       	IF CC JUMP 0xffa021a4 <_bfin_EMAC_send+0x12c>;
ffa02086:	00 00       	NOP;
ffa02088:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ea8(-4190552) */
ffa0208c:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa02090:	50 95       	R0 = W[P2] (X);
ffa02092:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa02094:	74 10       	IF !CC JUMP 0xffa0217c <_bfin_EMAC_send+0x104>;
ffa02096:	00 00       	NOP;
ffa02098:	00 00       	NOP;
ffa0209a:	00 00       	NOP;
ffa0209c:	50 95       	R0 = W[P2] (X);
ffa0209e:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa020a0:	17 18       	IF CC JUMP 0xffa020ce <_bfin_EMAC_send+0x56>;
ffa020a2:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0eb0 */
ffa020a6:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa020aa:	b2 e0 09 10 	LSETUP(0xffa020ae <_bfin_EMAC_send+0x36>, 0xffa020bc <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa020ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa020b2:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa020b6:	50 95       	R0 = W[P2] (X);
ffa020b8:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa020ba:	0a 18       	IF CC JUMP 0xffa020ce <_bfin_EMAC_send+0x56>;
ffa020bc:	00 00       	NOP;
ffa020be:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001c4(-7339580) */
ffa020c2:	00 e1 14 02 	R0.L = 0x214;		/* (532)	R0=0xff900214(-7339500) */
ffa020c6:	ff e3 47 f8 	CALL 0xffa01154 <_printf_str>;
ffa020ca:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa020cc:	53 20       	JUMP.S 0xffa02172 <_bfin_EMAC_send+0xfa>;
ffa020ce:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900000 <_l1_data_a> */
ffa020d2:	0c e1 ac 0e 	P4.L = 0xeac;		/* (3756)	P4=0xff900eac <_txIdx> */
ffa020d6:	20 95       	R0 = W[P4] (Z);
ffa020d8:	10 32       	P2 = R0;
ffa020da:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ea8 <_NetDHCPserv> */
ffa020de:	0d e1 b0 0e 	P5.L = 0xeb0;		/* (3760)	P5=0xff900eb0 <_txbuf> */
ffa020e2:	0b 30       	R1 = R3;
ffa020e4:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa020e6:	52 91       	P2 = [P2];
ffa020e8:	92 ad       	P2 = [P2 + 0x18];
ffa020ea:	12 96       	W[P2++] = R2;
ffa020ec:	42 30       	R0 = P2;
ffa020ee:	ff e3 db f9 	CALL 0xffa014a4 <_memcpy_>;
ffa020f2:	20 95       	R0 = W[P4] (Z);
ffa020f4:	10 32       	P2 = R0;
ffa020f6:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa020f8:	51 91       	P1 = [P2];
ffa020fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa020fe:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa02102:	51 93       	[P2] = P1;
ffa02104:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa02108:	88 a1       	R0 = [P1 + 0x18];
ffa0210a:	0a e1 fa 04 	P2.L = 0x4fa;		/* (1274)	P2=0xff9004fa <_txdmacfg> */
ffa0210e:	48 b0       	[P1 + 0x4] = R0;
ffa02110:	50 95       	R0 = W[P2] (X);
ffa02112:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004fa(-4193030) */
ffa02116:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa0211a:	10 97       	W[P2] = R0;
ffa0211c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa02120:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02124:	10 91       	R0 = [P2];
ffa02126:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa02128:	10 93       	[P2] = R0;
ffa0212a:	88 a2       	R0 = [P1 + 0x28];
ffa0212c:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0212e:	13 10       	IF !CC JUMP 0xffa02154 <_bfin_EMAC_send+0xdc>;
ffa02130:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa02134:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa02138:	b2 e0 05 20 	LSETUP(0xffa0213c <_bfin_EMAC_send+0xc4>, 0xffa02142 <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa0213c:	88 a2       	R0 = [P1 + 0x28];
ffa0213e:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02140:	0a 10       	IF !CC JUMP 0xffa02154 <_bfin_EMAC_send+0xdc>;
ffa02142:	00 00       	NOP;
ffa02144:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900214(-7339500) */
ffa02148:	00 e1 2c 02 	R0.L = 0x22c;		/* (556)	R0=0xff90022c(-7339476) */
ffa0214c:	ff e3 04 f8 	CALL 0xffa01154 <_printf_str>;
ffa02150:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02152:	10 20       	JUMP.S 0xffa02172 <_bfin_EMAC_send+0xfa>;
ffa02154:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa02158:	61 95 00 00 
ffa0215c:	8a a2       	R2 = [P1 + 0x28];
ffa0215e:	88 b2       	[P1 + 0x28] = R0;
ffa02160:	c8 42       	R0 = R1.L (Z);
ffa02162:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa02166:	10 0d       	CC = R0 <= 0x2;
ffa02168:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa0216c:	14 1c       	IF CC JUMP 0xffa02194 <_bfin_EMAC_send+0x11c> (BP);
ffa0216e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02170:	10 97       	W[P2] = R0;
ffa02172:	01 e8 00 00 	UNLINK;
ffa02176:	02 30       	R0 = R2;
ffa02178:	84 04       	(P5:4) = [SP++];
ffa0217a:	10 00       	RTS;
ffa0217c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02180:	00 e1 f0 00 	R0.L = 0xf0;		/* (240)	R0=0xff9000f0(-7339792) */
ffa02184:	ff e3 e8 f7 	CALL 0xffa01154 <_printf_str>;
ffa02188:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0218a:	01 e8 00 00 	UNLINK;
ffa0218e:	02 30       	R0 = R2;
ffa02190:	84 04       	(P5:4) = [SP++];
ffa02192:	10 00       	RTS;
ffa02194:	01 30       	R0 = R1;
ffa02196:	08 64       	R0 += 0x1;		/* (  1) */
ffa02198:	10 97       	W[P2] = R0;
ffa0219a:	01 e8 00 00 	UNLINK;
ffa0219e:	02 30       	R0 = R2;
ffa021a0:	84 04       	(P5:4) = [SP++];
ffa021a2:	10 00       	RTS;
ffa021a4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f0(-7339792) */
ffa021a8:	00 e1 f8 01 	R0.L = 0x1f8;		/* (504)	R0=0xff9001f8(-7339528) */
ffa021ac:	ff e3 96 f8 	CALL 0xffa012d8 <_printf_int>;
ffa021b0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa021b2:	01 e8 00 00 	UNLINK;
ffa021b6:	02 30       	R0 = R2;
ffa021b8:	84 04       	(P5:4) = [SP++];
ffa021ba:	10 00       	RTS;

ffa021bc <_ether_testUDP>:
ffa021bc:	fd 05       	[--SP] = (R7:7, P5:5);
ffa021be:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa021c2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa021c6:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa021ca:	11 95       	R1 = W[P2] (Z);
ffa021cc:	11 32       	P2 = R1;
ffa021ce:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa021d2:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa021d6:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa021da:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa021dc:	52 91       	P2 = [P2];
ffa021de:	95 ad       	P5 = [P2 + 0x18];
ffa021e0:	55 32       	P2 = P5;
ffa021e2:	11 96       	W[P2++] = R1;
ffa021e4:	4a 30       	R1 = P2;
ffa021e6:	00 e3 13 09 	CALL 0xffa0340c <_ARP_req>;
ffa021ea:	00 0c       	CC = R0 == 0x0;
ffa021ec:	7f 18       	IF CC JUMP 0xffa022ea <_ether_testUDP+0x12e>;
ffa021ee:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa021f2:	0a e1 d4 0e 	P2.L = 0xed4;		/* (3796)	P2=0xff900ed4 <_NetOurMAC> */
ffa021f6:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa021f8:	50 99       	R0 = B[P2] (X);
ffa021fa:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa021fe:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa02202:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02206:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa0220a:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa0220e:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02212:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa02216:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa0221a:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa0221e:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa02222:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa02226:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa0222a:	ff e3 f5 fb 	CALL 0xffa01a14 <_htons>;
ffa0222e:	e8 b5       	W[P5 + 0xe] = R0;
ffa02230:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa02234:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa02238:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0223a:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa0223e:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa02240:	ff e3 ea fb 	CALL 0xffa01a14 <_htons>;
ffa02244:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed4 <_NetOurMAC> */
ffa02248:	0a e1 ae 0e 	P2.L = 0xeae;		/* (3758)	P2=0xff900eae <_NetIPID> */
ffa0224c:	68 b6       	W[P5 + 0x12] = R0;
ffa0224e:	10 95       	R0 = W[P2] (Z);
ffa02250:	08 30       	R1 = R0;
ffa02252:	09 64       	R1 += 0x1;		/* (  1) */
ffa02254:	11 97       	W[P2] = R1;
ffa02256:	ff e3 df fb 	CALL 0xffa01a14 <_htons>;
ffa0225a:	a8 b6       	W[P5 + 0x14] = R0;
ffa0225c:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa02260:	ff e3 da fb 	CALL 0xffa01a14 <_htons>;
ffa02264:	e8 b6       	W[P5 + 0x16] = R0;
ffa02266:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02268:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa0226c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eae <_NetIPID> */
ffa02270:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa02272:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa02276:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa0227a:	10 91       	R0 = [P2];
ffa0227c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetOurIP> */
ffa02280:	0a e1 a4 0e 	P2.L = 0xea4;		/* (3748)	P2=0xff900ea4 <_NetDestIP> */
ffa02284:	e8 b1       	[P5 + 0x1c] = R0;
ffa02286:	10 91       	R0 = [P2];
ffa02288:	28 b2       	[P5 + 0x20] = R0;
ffa0228a:	45 30       	R0 = P5;
ffa0228c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0228e:	6f b7       	W[P5 + 0x1a] = R7;
ffa02290:	80 64       	R0 += 0x10;		/* ( 16) */
ffa02292:	ff e3 a9 fb 	CALL 0xffa019e4 <_NetCksum>;
ffa02296:	c0 43       	R0 =~ R0;
ffa02298:	68 b7       	W[P5 + 0x1a] = R0;
ffa0229a:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa0229e:	ff e3 bb fb 	CALL 0xffa01a14 <_htons>;
ffa022a2:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa022a6:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa022aa:	ff e3 b5 fb 	CALL 0xffa01a14 <_htons>;
ffa022ae:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa022b2:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa022b4:	ff e3 b0 fb 	CALL 0xffa01a14 <_htons>;
ffa022b8:	55 32       	P2 = P5;
ffa022ba:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa022be:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa022c2:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa022c4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa022c6:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa022c8:	b2 e0 03 10 	LSETUP(0xffa022cc <_ether_testUDP+0x110>, 0xffa022ce <_ether_testUDP+0x112>) LC1 = P1;
ffa022cc:	11 9a       	B[P2++] = R1;
ffa022ce:	09 64       	R1 += 0x1;		/* (  1) */
ffa022d0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa022d4:	00 e1 40 02 	R0.L = 0x240;		/* (576)	R0=0xff900240(-7339456) */
ffa022d8:	ff e3 3e f7 	CALL 0xffa01154 <_printf_str>;
ffa022dc:	ff e3 92 fc 	CALL 0xffa01c00 <_bfin_EMAC_send_nocopy>;
ffa022e0:	01 e8 00 00 	UNLINK;
ffa022e4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa022e6:	bd 05       	(R7:7, P5:5) = [SP++];
ffa022e8:	10 00       	RTS;
ffa022ea:	01 e8 00 00 	UNLINK;
ffa022ee:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa022f0:	bd 05       	(R7:7, P5:5) = [SP++];
ffa022f2:	10 00       	RTS;

ffa022f4 <_eth_header_setup>:
ffa022f4:	fc 05       	[--SP] = (R7:7, P5:4);
ffa022f6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea4 <_NetDestIP> */
ffa022fa:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa022fe:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa02302:	00 32       	P0 = R0;
ffa02304:	10 95       	R0 = W[P2] (Z);
ffa02306:	10 32       	P2 = R0;
ffa02308:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa0230c:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa02310:	00 91       	R0 = [P0];
ffa02312:	21 32       	P4 = R1;
ffa02314:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02316:	52 91       	P2 = [P2];
ffa02318:	08 30       	R1 = R0;
ffa0231a:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa0231c:	80 67       	R0 += -0x10;		/* (-16) */
ffa0231e:	95 ad       	P5 = [P2 + 0x18];
ffa02320:	00 93       	[P0] = R0;
ffa02322:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa02326:	3a 30       	R7 = R2;
ffa02328:	29 97       	W[P5] = R1;
ffa0232a:	ff e3 81 fb 	CALL 0xffa01a2c <_htonl>;
ffa0232e:	38 54       	R0 = R0 & R7;
ffa02330:	00 0c       	CC = R0 == 0x0;
ffa02332:	3c 10       	IF !CC JUMP 0xffa023aa <_eth_header_setup+0xb6>;
ffa02334:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02336:	a8 e6 02 00 	B[P5 + 0x2] = R0;
ffa0233a:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa0233e:	a8 e6 04 00 	B[P5 + 0x4] = R0;
ffa02342:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa02344:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02346:	a8 e6 06 00 	B[P5 + 0x6] = R0;
ffa0234a:	d8 63       	R0 = -0x5 (X);		/*		R0=0xfffffffb( -5) */
ffa0234c:	a9 e6 03 00 	B[P5 + 0x3] = R1;
ffa02350:	a9 e6 05 00 	B[P5 + 0x5] = R1;
ffa02354:	a8 e6 07 00 	B[P5 + 0x7] = R0;
ffa02358:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa0235c:	0a e1 d4 0e 	P2.L = 0xed4;		/* (3796)	P2=0xff900ed4 <_NetOurMAC> */
ffa02360:	50 99       	R0 = B[P2] (X);
ffa02362:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02366:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa0236a:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0236e:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02372:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa02376:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa0237a:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa0237e:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa02382:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa02386:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa0238a:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa0238e:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02392:	ff e3 41 fb 	CALL 0xffa01a14 <_htons>;
ffa02396:	e8 b5       	W[P5 + 0xe] = R0;
ffa02398:	4d 30       	R1 = P5;
ffa0239a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0239c:	81 64       	R1 += 0x10;		/* ( 16) */
ffa0239e:	20 9b       	B[P4] = R0;
ffa023a0:	01 e8 00 00 	UNLINK;
ffa023a4:	01 30       	R0 = R1;
ffa023a6:	bc 05       	(R7:7, P5:4) = [SP++];
ffa023a8:	10 00       	RTS;
ffa023aa:	4d 30       	R1 = P5;
ffa023ac:	11 64       	R1 += 0x2;		/* (  2) */
ffa023ae:	07 30       	R0 = R7;
ffa023b0:	00 e3 2e 08 	CALL 0xffa0340c <_ARP_req>;
ffa023b4:	00 0c       	CC = R0 == 0x0;
ffa023b6:	d1 17       	IF !CC JUMP 0xffa02358 <_eth_header_setup+0x64> (BP);
ffa023b8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa023ba:	00 cc 09 c2 	R1 = R1 -|- R1 || B[P4] = R0 || NOP;
ffa023be:	20 9b 00 00 
ffa023c2:	ef 2f       	JUMP.S 0xffa023a0 <_eth_header_setup+0xac>;

ffa023c4 <_icmp_packet_setup>:
ffa023c4:	e4 05       	[--SP] = (R7:4, P5:4);
ffa023c6:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa023ca:	29 32       	P5 = R1;
ffa023cc:	7f 30       	R7 = FP;
ffa023ce:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa023d0:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa023d2:	f0 bb       	[FP -0x4] = R0;
ffa023d4:	07 30       	R0 = R7;
ffa023d6:	22 32       	P4 = R2;
ffa023d8:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa023dc:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa023e0:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa023e4:	ff e3 88 ff 	CALL 0xffa022f4 <_eth_header_setup>;
ffa023e8:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa023ec:	68 99 00 00 
ffa023f0:	80 0c       	CC = R0 < 0x0;
ffa023f2:	14 18       	IF CC JUMP 0xffa0241a <_icmp_packet_setup+0x56>;
ffa023f4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa023f6:	f0 b0       	[SP + 0xc] = R0;
ffa023f8:	54 30       	R2 = P4;
ffa023fa:	01 30       	R0 = R1;
ffa023fc:	0f 30       	R1 = R7;
ffa023fe:	ff e3 3f fb 	CALL 0xffa01a7c <_ip_header_setup>;
ffa02402:	e9 42       	R1 = R5.L (Z);
ffa02404:	f1 b0       	[SP + 0xc] = R1;
ffa02406:	e1 42       	R1 = R4.L (Z);
ffa02408:	31 b1       	[SP + 0x10] = R1;
ffa0240a:	72 43       	R2 = R6.B (Z);
ffa0240c:	0f 30       	R1 = R7;
ffa0240e:	ff e3 87 fb 	CALL 0xffa01b1c <_icmp_header_setup>;
ffa02412:	01 e8 00 00 	UNLINK;
ffa02416:	a4 05       	(R7:4, P5:4) = [SP++];
ffa02418:	10 00       	RTS;
ffa0241a:	01 e8 00 00 	UNLINK;
ffa0241e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02420:	a4 05       	(R7:4, P5:4) = [SP++];
ffa02422:	10 00       	RTS;

ffa02424 <_icmp_rx>:
ffa02424:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02426:	28 32       	P5 = R0;
ffa02428:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa0242c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02430:	39 30       	R7 = R1;
ffa02432:	ff e3 f1 fa 	CALL 0xffa01a14 <_htons>;
ffa02436:	c0 42       	R0 = R0.L (Z);
ffa02438:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa0243a:	01 08       	CC = R1 == R0;
ffa0243c:	06 18       	IF CC JUMP 0xffa02448 <_icmp_rx+0x24>;
ffa0243e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02440:	01 e8 00 00 	UNLINK;
ffa02444:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02446:	10 00       	RTS;
ffa02448:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa0244a:	07 0a       	CC = R7 <= R0 (IU);
ffa0244c:	f9 1b       	IF CC JUMP 0xffa0243e <_icmp_rx+0x1a>;
ffa0244e:	00 00       	NOP;
ffa02450:	00 00       	NOP;
ffa02452:	00 00       	NOP;
ffa02454:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa02458:	08 0c       	CC = R0 == 0x1;
ffa0245a:	f2 17       	IF !CC JUMP 0xffa0243e <_icmp_rx+0x1a> (BP);
ffa0245c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed4 <_NetOurMAC> */
ffa02460:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa02464:	28 a2       	R0 = [P5 + 0x20];
ffa02466:	11 91       	R1 = [P2];
ffa02468:	08 08       	CC = R0 == R1;
ffa0246a:	ea 17       	IF !CC JUMP 0xffa0243e <_icmp_rx+0x1a> (BP);
ffa0246c:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa02470:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa02474:	08 08       	CC = R0 == R1;
ffa02476:	3e 18       	IF CC JUMP 0xffa024f2 <_icmp_rx+0xce>;
ffa02478:	00 00       	NOP;
ffa0247a:	00 00       	NOP;
ffa0247c:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa0247e:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa02482:	08 08       	CC = R0 == R1;
ffa02484:	dd 17       	IF !CC JUMP 0xffa0243e <_icmp_rx+0x1a> (BP);
ffa02486:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa0248a:	e9 a1       	R1 = [P5 + 0x1c];
ffa0248c:	00 e1 58 02 	R0.L = 0x258;		/* (600)	R0=0xff900258(-7339432) */
ffa02490:	ff e3 c6 f7 	CALL 0xffa0141c <_printf_ip>;
ffa02494:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetOurIP> */
ffa02498:	0a e1 a4 0e 	P2.L = 0xea4;		/* (3748)	P2=0xff900ea4 <_NetDestIP> */
ffa0249c:	e8 a1       	R0 = [P5 + 0x1c];
ffa0249e:	4d 30       	R1 = P5;
ffa024a0:	10 93       	[P2] = R0;
ffa024a2:	41 64       	R1 += 0x8;		/* (  8) */
ffa024a4:	00 e3 b6 05 	CALL 0xffa03010 <_ARP_lut_add>;
ffa024a8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900258(-7339432) */
ffa024ac:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa024b0:	ff e3 52 f6 	CALL 0xffa01154 <_printf_str>;
ffa024b4:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa024b8:	ea a1 00 00 
ffa024bc:	f0 b0       	[SP + 0xc] = R0;
ffa024be:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa024c2:	30 b1       	[SP + 0x10] = R0;
ffa024c4:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa024c6:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa024ca:	4f 30       	R1 = FP;
ffa024cc:	70 b1       	[SP + 0x14] = R0;
ffa024ce:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa024d0:	07 30       	R0 = R7;
ffa024d2:	ff e3 79 ff 	CALL 0xffa023c4 <_icmp_packet_setup>;
ffa024d6:	08 30       	R1 = R0;
ffa024d8:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa024dc:	00 0d       	CC = R0 <= 0x0;
ffa024de:	b0 1b       	IF CC JUMP 0xffa0243e <_icmp_rx+0x1a>;
ffa024e0:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa024e2:	45 30       	R0 = P5;
ffa024e4:	17 30       	R2 = R7;
ffa024e6:	ff e3 df f7 	CALL 0xffa014a4 <_memcpy_>;
ffa024ea:	ff e3 8b fb 	CALL 0xffa01c00 <_bfin_EMAC_send_nocopy>;
ffa024ee:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa024f0:	a8 2f       	JUMP.S 0xffa02440 <_icmp_rx+0x1c>;
ffa024f2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea4 <_NetDestIP> */
ffa024f6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024f8:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_g_streamEnabled> */
ffa024fc:	10 9b       	B[P2] = R0;
ffa024fe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02500:	a0 2f       	JUMP.S 0xffa02440 <_icmp_rx+0x1c>;
	...

ffa02504 <_udp_packet_setup>:
ffa02504:	fc 05       	[--SP] = (R7:7, P5:4);
ffa02506:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0250a:	29 32       	P5 = R1;
ffa0250c:	7f 30       	R7 = FP;
ffa0250e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900eac <_txIdx> */
ffa02512:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02514:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02516:	0c e1 e4 0e 	P4.L = 0xee4;		/* (3812)	P4=0xff900ee4 <_NetDataDestIP> */
ffa0251a:	f0 bb       	[FP -0x4] = R0;
ffa0251c:	22 91       	R2 = [P4];
ffa0251e:	07 30       	R0 = R7;
ffa02520:	ff e3 ea fe 	CALL 0xffa022f4 <_eth_header_setup>;
ffa02524:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa02528:	68 99 00 00 
ffa0252c:	80 0c       	CC = R0 < 0x0;
ffa0252e:	14 18       	IF CC JUMP 0xffa02556 <_udp_packet_setup+0x52>;
ffa02530:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa02532:	f0 b0       	[SP + 0xc] = R0;
ffa02534:	01 30       	R0 = R1;
ffa02536:	22 91       	R2 = [P4];
ffa02538:	0f 30       	R1 = R7;
ffa0253a:	ff e3 a1 fa 	CALL 0xffa01a7c <_ip_header_setup>;
ffa0253e:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa02542:	f1 b0       	[SP + 0xc] = R1;
ffa02544:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa02548:	0f 30       	R1 = R7;
ffa0254a:	ff e3 0d fb 	CALL 0xffa01b64 <_udp_header_setup>;
ffa0254e:	01 e8 00 00 	UNLINK;
ffa02552:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02554:	10 00       	RTS;
ffa02556:	01 e8 00 00 	UNLINK;
ffa0255a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0255c:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0255e:	10 00       	RTS;

ffa02560 <_SetupTxBuffer>:
ffa02560:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02562:	38 30       	R7 = R0;
ffa02564:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02568:	c7 40       	R7 *= R0;
ffa0256a:	17 32       	P2 = R7;
ffa0256c:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800eb0 */
ffa02570:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa02574:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02578:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa0257c:	6a 5b       	P5 = P2 + P5;
ffa0257e:	c7 51       	R7 = R7 + R0;
ffa02580:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02584:	45 30       	R0 = P5;
ffa02586:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02588:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa0258a:	ff e3 9d f7 	CALL 0xffa014c4 <_memset_>;
ffa0258e:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa02592:	af b1 00 00 
ffa02596:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa0259a:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa0259e:	ff e3 93 f7 	CALL 0xffa014c4 <_memset_>;
ffa025a2:	45 30       	R0 = P5;
ffa025a4:	60 64       	R0 += 0xc;		/* ( 12) */
ffa025a6:	28 93       	[P5] = R0;
ffa025a8:	a8 a1       	R0 = [P5 + 0x18];
ffa025aa:	68 b0       	[P5 + 0x4] = R0;
ffa025ac:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa025b0:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa025b2:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa025b4:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa025b6:	10 54       	R0 = R0 & R2;
ffa025b8:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa025ba:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa025be:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa025c0:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa025c4:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa025c6:	18 54       	R0 = R0 & R3;
ffa025c8:	08 56       	R0 = R0 | R1;
ffa025ca:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa025ce:	08 56       	R0 = R0 | R1;
ffa025d0:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa025d4:	45 30       	R0 = P5;
ffa025d6:	40 65       	R0 += 0x28;		/* ( 40) */
ffa025d8:	28 b1       	[P5 + 0x10] = R0;
ffa025da:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa025de:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa025e0:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa025e2:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa025e6:	10 54       	R0 = R0 & R2;
ffa025e8:	08 56       	R0 = R0 | R1;
ffa025ea:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa025ee:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa025f2:	18 54       	R0 = R0 & R3;
ffa025f4:	39 64       	R1 += 0x7;		/* (  7) */
ffa025f6:	08 54       	R0 = R0 & R1;
ffa025f8:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa025fc:	ed bc       	[P5 + 0xc] = P5;
ffa025fe:	01 e8 00 00 	UNLINK;
ffa02602:	45 30       	R0 = P5;
ffa02604:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02606:	10 00       	RTS;

ffa02608 <_SetupRxBuffer>:
ffa02608:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0260a:	38 30       	R7 = R0;
ffa0260c:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02610:	c7 40       	R7 *= R0;
ffa02612:	17 32       	P2 = R7;
ffa02614:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa02618:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa0261c:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02620:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa02624:	6a 5b       	P5 = P2 + P5;
ffa02626:	c7 51       	R7 = R7 + R0;
ffa02628:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0262c:	45 30       	R0 = P5;
ffa0262e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02630:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa02632:	ff e3 49 f7 	CALL 0xffa014c4 <_memset_>;
ffa02636:	af b1       	[P5 + 0x18] = R7;
ffa02638:	07 30       	R0 = R7;
ffa0263a:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa0263e:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02642:	ff e3 41 f7 	CALL 0xffa014c4 <_memset_>;
ffa02646:	45 30       	R0 = P5;
ffa02648:	60 64       	R0 += 0xc;		/* ( 12) */
ffa0264a:	28 93       	[P5] = R0;
ffa0264c:	a8 a1       	R0 = [P5 + 0x18];
ffa0264e:	68 b0       	[P5 + 0x4] = R0;
ffa02650:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa02654:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02656:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa02658:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0265a:	08 54       	R0 = R0 & R1;
ffa0265c:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa0265e:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02662:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa02664:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa02668:	38 54       	R0 = R0 & R7;
ffa0266a:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa0266c:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa02670:	18 56       	R0 = R0 | R3;
ffa02672:	10 56       	R0 = R0 | R2;
ffa02674:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02678:	45 30       	R0 = P5;
ffa0267a:	20 65       	R0 += 0x24;		/* ( 36) */
ffa0267c:	28 b1       	[P5 + 0x10] = R0;
ffa0267e:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa02682:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02684:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02686:	08 54       	R0 = R0 & R1;
ffa02688:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa0268c:	08 56       	R0 = R0 | R1;
ffa0268e:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa02692:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa02696:	38 54       	R0 = R0 & R7;
ffa02698:	18 56       	R0 = R0 | R3;
ffa0269a:	10 56       	R0 = R0 | R2;
ffa0269c:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa026a0:	ed bc       	[P5 + 0xc] = P5;
ffa026a2:	01 e8 00 00 	UNLINK;
ffa026a6:	45 30       	R0 = P5;
ffa026a8:	bd 05       	(R7:7, P5:5) = [SP++];
ffa026aa:	10 00       	RTS;

ffa026ac <_SetupSystemRegs>:
ffa026ac:	f5 05       	[--SP] = (R7:6, P5:5);
ffa026ae:	28 32       	P5 = R0;
ffa026b0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa026b4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa026b8:	00 e1 74 02 	R0.L = 0x274;		/* (628)	R0=0xff900274(-7339404) */
ffa026bc:	ff e3 4c f5 	CALL 0xffa01154 <_printf_str>;
ffa026c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c34(-4191180) */
ffa026c4:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa026c8:	50 95       	R0 = W[P2] (X);
ffa026ca:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa026ce:	08 54       	R0 = R0 & R1;
ffa026d0:	10 97       	W[P2] = R0;
ffa026d2:	50 95       	R0 = W[P2] (X);
ffa026d4:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa026d6:	10 97       	W[P2] = R0;
ffa026d8:	82 6f       	P2 += -0x10;		/* (-16) */
ffa026da:	51 95       	R1 = W[P2] (X);
ffa026dc:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa026e0:	08 56       	R0 = R0 | R1;
ffa026e2:	10 97       	W[P2] = R0;
ffa026e4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa026e6:	22 6c       	P2 += 0x4;		/* (  4) */
ffa026e8:	10 97       	W[P2] = R0;
ffa026ea:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa026ec:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa026ee:	10 97       	W[P2] = R0;
ffa026f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa026f4:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa026f8:	50 95       	R0 = W[P2] (X);
ffa026fa:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa026fc:	10 97       	W[P2] = R0;
ffa026fe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa02702:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa02706:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa0270a:	10 93       	[P2] = R0;
ffa0270c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0270e:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa02712:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02714:	ff e3 0c f9 	CALL 0xffa0192c <_WrPHYReg>;
ffa02718:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa0271c:	ff e3 b2 f8 	CALL 0xffa01880 <_udelay>;
ffa02720:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02722:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02724:	ff e3 20 f9 	CALL 0xffa01964 <_RdPHYReg>;
ffa02728:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0272a:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa0272c:	0e 20       	JUMP.S 0xffa02748 <_SetupSystemRegs+0x9c>;
ffa0272e:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02732:	ff e3 a7 f8 	CALL 0xffa01880 <_udelay>;
ffa02736:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02738:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0273a:	ff e3 15 f9 	CALL 0xffa01964 <_RdPHYReg>;
ffa0273e:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02740:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa02744:	0f 08       	CC = R7 == R1;
ffa02746:	35 18       	IF CC JUMP 0xffa027b0 <_SetupSystemRegs+0x104>;
ffa02748:	06 54       	R0 = R6 & R0;
ffa0274a:	00 0c       	CC = R0 == 0x0;
ffa0274c:	f1 1f       	IF CC JUMP 0xffa0272e <_SetupSystemRegs+0x82> (BP);
ffa0274e:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa02750:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02752:	ff e3 09 f9 	CALL 0xffa01964 <_RdPHYReg>;
ffa02756:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa0275a:	01 54       	R0 = R1 & R0;
ffa0275c:	00 0c       	CC = R0 == 0x0;
ffa0275e:	27 1c       	IF CC JUMP 0xffa027ac <_SetupSystemRegs+0x100> (BP);
ffa02760:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02762:	d0 4f       	R0 <<= 0x1a;
ffa02764:	28 93       	[P5] = R0;
ffa02766:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa0276a:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0276c:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa02770:	10 93       	[P2] = R0;
ffa02772:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa02776:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02778:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa0277c:	10 97       	W[P2] = R0;
ffa0277e:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa02780:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02782:	11 97       	W[P2] = R1;
ffa02784:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02786:	10 97       	W[P2] = R0;
ffa02788:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0278a:	10 97       	W[P2] = R0;
ffa0278c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa02790:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa02794:	10 97       	W[P2] = R0;
ffa02796:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02798:	11 97       	W[P2] = R1;
ffa0279a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0279c:	10 97       	W[P2] = R0;
ffa0279e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027a0:	10 97       	W[P2] = R0;
ffa027a2:	01 e8 00 00 	UNLINK;
ffa027a6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027a8:	b5 05       	(R7:6, P5:5) = [SP++];
ffa027aa:	10 00       	RTS;
ffa027ac:	28 93       	[P5] = R0;
ffa027ae:	dc 2f       	JUMP.S 0xffa02766 <_SetupSystemRegs+0xba>;
ffa027b0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa027b4:	00 e1 8c 02 	R0.L = 0x28c;		/* (652)	R0=0xff90028c(-7339380) */
ffa027b8:	ff e3 ce f4 	CALL 0xffa01154 <_printf_str>;
ffa027bc:	01 e8 00 00 	UNLINK;
ffa027c0:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa027c2:	b5 05       	(R7:6, P5:5) = [SP++];
ffa027c4:	10 00       	RTS;
	...

ffa027c8 <_SetupMacAddr>:
ffa027c8:	10 32       	P2 = R0;
ffa027ca:	fd 05       	[--SP] = (R7:7, P5:5);
ffa027cc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027ce:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa027d2:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa027d6:	10 9b       	B[P2] = R0;
ffa027d8:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa027da:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa027de:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa027e0:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa027e4:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa027e6:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa027ea:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa027ee:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa027f2:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa027f4:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa027f8:	10 99       	R0 = B[P2] (Z);
ffa027fa:	08 56       	R0 = R0 | R1;
ffa027fc:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa02800:	89 4f       	R1 <<= 0x11;
ffa02802:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00eb0(-4190544) */
ffa02806:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa0280a:	08 56       	R0 = R0 | R1;
ffa0280c:	08 93       	[P1] = R0;
ffa0280e:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02812:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa02816:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa0281a:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa0281c:	28 93       	[P5] = R0;
ffa0281e:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa02822:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa02826:	09 91       	R1 = [P1];
ffa02828:	07 e1 c4 0a 	R7.L = 0xac4;		/* (2756)	R7=0xff900ac4(-7337276) */
ffa0282c:	00 e1 c0 02 	R0.L = 0x2c0;		/* (704)	R0=0xff9002c0(-7339328) */
ffa02830:	ff e3 f8 f4 	CALL 0xffa01220 <_printf_hex>;
ffa02834:	07 30       	R0 = R7;
ffa02836:	ff e3 8f f4 	CALL 0xffa01154 <_printf_str>;
ffa0283a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002c0(-7339328) */
ffa0283e:	29 91       	R1 = [P5];
ffa02840:	00 e1 cc 02 	R0.L = 0x2cc;		/* (716)	R0=0xff9002cc(-7339316) */
ffa02844:	ff e3 ee f4 	CALL 0xffa01220 <_printf_hex>;
ffa02848:	01 e8 00 00 	UNLINK;
ffa0284c:	07 30       	R0 = R7;
ffa0284e:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02850:	ff e2 82 f4 	JUMP.L 0xffa01154 <_printf_str>;

ffa02854 <_bfin_EMAC_init>:
ffa02854:	f3 05       	[--SP] = (R7:6, P5:3);
ffa02856:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002cc(-7339316) */
ffa0285a:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0285e:	00 e1 d8 02 	R0.L = 0x2d8;		/* (728)	R0=0xff9002d8(-7339304) */
ffa02862:	ff e3 79 f4 	CALL 0xffa01154 <_printf_str>;
ffa02866:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 */
ffa0286a:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa0286c:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa02870:	16 97       	W[P2] = R6;
ffa02872:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa02876:	0a e1 c0 0e 	P2.L = 0xec0;		/* (3776)	P2=0xff900ec0 <_rxIdx> */
ffa0287a:	16 97       	W[P2] = R6;
ffa0287c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ec0 <_rxIdx> */
ffa02880:	0a e1 ae 0e 	P2.L = 0xeae;		/* (3758)	P2=0xff900eae <_NetIPID> */
ffa02884:	16 97       	W[P2] = R6;
ffa02886:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eae <_NetIPID> */
ffa0288a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0288c:	0a e1 dc 0e 	P2.L = 0xedc;		/* (3804)	P2=0xff900edc <_NetSubnetMask> */
ffa02890:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa02892:	17 93       	[P2] = R7;
ffa02894:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa02898:	f0 b0       	[SP + 0xc] = R0;
ffa0289a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0289c:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa028a0:	ff e3 10 f8 	CALL 0xffa018c0 <_FormatIPAddress>;
ffa028a4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900edc <_NetSubnetMask> */
ffa028a8:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa028ac:	10 93       	[P2] = R0;
ffa028ae:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa028b0:	f0 b0       	[SP + 0xc] = R0;
ffa028b2:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa028b6:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa028b8:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa028bc:	ff e3 02 f8 	CALL 0xffa018c0 <_FormatIPAddress>;
ffa028c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetOurIP> */
ffa028c4:	0a e1 a4 0e 	P2.L = 0xea4;		/* (3748)	P2=0xff900ea4 <_NetDestIP> */
ffa028c8:	10 93       	[P2] = R0;
ffa028ca:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa028cc:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa028ce:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa028d2:	f0 b0       	[SP + 0xc] = R0;
ffa028d4:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa028d8:	ff e3 f4 f7 	CALL 0xffa018c0 <_FormatIPAddress>;
ffa028dc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea4 <_NetDestIP> */
ffa028e0:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetDataDestIP> */
ffa028e4:	10 93       	[P2] = R0;
ffa028e6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetDataDestIP> */
ffa028ea:	0a e1 c4 0f 	P2.L = 0xfc4;		/* (4036)	P2=0xff900fc4 <_TcpState> */
ffa028ee:	17 93       	[P2] = R7;
ffa028f0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc4 <_TcpState> */
ffa028f4:	0a e1 bc 0f 	P2.L = 0xfbc;		/* (4028)	P2=0xff900fbc <_TcpSeqClient> */
ffa028f8:	17 93       	[P2] = R7;
ffa028fa:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa028fe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fbc <_TcpSeqClient> */
ffa02902:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa02906:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa0290a:	10 93       	[P2] = R0;
ffa0290c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa02910:	0a e1 d0 0f 	P2.L = 0xfd0;		/* (4048)	P2=0xff900fd0 <_TcpClientPort> */
ffa02914:	16 97       	W[P2] = R6;
ffa02916:	00 e3 2f 03 	CALL 0xffa02f74 <_ARP_init>;
ffa0291a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00fd0(-4190256) */
ffa0291e:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02922:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa02926:	17 93       	[P2] = R7;
ffa02928:	00 e1 d4 0e 	R0.L = 0xed4;		/* (3796)	R0=0xff900ed4 <_NetOurMAC>(-7336236) */
ffa0292c:	ff e3 4e ff 	CALL 0xffa027c8 <_SetupMacAddr>;
ffa02930:	47 30       	R0 = FP;
ffa02932:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa02934:	ff e3 bc fe 	CALL 0xffa026ac <_SetupSystemRegs>;
ffa02938:	80 0c       	CC = R0 < 0x0;
ffa0293a:	7a 18       	IF CC JUMP 0xffa02a2e <_bfin_EMAC_init+0x1da>;
ffa0293c:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa02940:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02942:	07 e1 c4 0e 	R7.L = 0xec4;		/* (3780)	R7=0xff900ec4 <_rxbuf>(-7336252) */
ffa02946:	ff e3 61 fe 	CALL 0xffa02608 <_SetupRxBuffer>;
ffa0294a:	07 32       	P0 = R7;
ffa0294c:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa0294e:	00 93       	[P0] = R0;
ffa02950:	17 32       	P2 = R7;
ffa02952:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa02954:	44 30       	R0 = P4;
ffa02956:	ff e3 59 fe 	CALL 0xffa02608 <_SetupRxBuffer>;
ffa0295a:	44 0c       	CC = P4 == 0x0;
ffa0295c:	08 32       	P1 = R0;
ffa0295e:	28 92       	[P5++] = R0;
ffa02960:	52 18       	IF CC JUMP 0xffa02a04 <_bfin_EMAC_init+0x1b0>;
ffa02962:	07 32       	P0 = R7;
ffa02964:	5c 0c       	CC = P4 == 0x3;
ffa02966:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa02968:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa0296c:	d0 b0       	[P2 + 0xc] = R0;
ffa0296e:	54 18       	IF CC JUMP 0xffa02a16 <_bfin_EMAC_init+0x1c2>;
ffa02970:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa02972:	5c 0d       	CC = P4 <= 0x3;
ffa02974:	ee 1f       	IF CC JUMP 0xffa02950 <_bfin_EMAC_init+0xfc> (BP);
ffa02976:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02978:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa0297c:	ff e3 f2 fd 	CALL 0xffa02560 <_SetupTxBuffer>;
ffa02980:	0b e1 b0 0e 	P3.L = 0xeb0;		/* (3760)	P3=0xff900eb0 <_txbuf> */
ffa02984:	18 93       	[P3] = R0;
ffa02986:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02988:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa0298a:	44 30       	R0 = P4;
ffa0298c:	ff e3 ea fd 	CALL 0xffa02560 <_SetupTxBuffer>;
ffa02990:	44 0c       	CC = P4 == 0x0;
ffa02992:	08 32       	P1 = R0;
ffa02994:	28 92       	[P5++] = R0;
ffa02996:	35 18       	IF CC JUMP 0xffa02a00 <_bfin_EMAC_init+0x1ac>;
ffa02998:	00 00       	NOP;
ffa0299a:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa0299c:	5c 0c       	CC = P4 == 0x3;
ffa0299e:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa029a2:	d0 b0       	[P2 + 0xc] = R0;
ffa029a4:	32 18       	IF CC JUMP 0xffa02a08 <_bfin_EMAC_init+0x1b4>;
ffa029a6:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa029a8:	5c 0d       	CC = P4 <= 0x3;
ffa029aa:	ef 1f       	IF CC JUMP 0xffa02988 <_bfin_EMAC_init+0x134> (BP);
ffa029ac:	17 32       	P2 = R7;
ffa029ae:	51 91       	P1 = [P2];
ffa029b0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa029b4:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa029b8:	51 93       	[P2] = P1;
ffa029ba:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa029bc:	42 6c       	P2 += 0x8;		/* (  8) */
ffa029be:	10 97       	W[P2] = R0;
ffa029c0:	ff e3 a8 f7 	CALL 0xffa01910 <_PollMdcDone>;
ffa029c4:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa029c6:	f0 b9       	R0 = [FP -0x4];
ffa029c8:	d1 4f       	R1 <<= 0x1a;
ffa029ca:	08 08       	CC = R0 == R1;
ffa029cc:	2c 18       	IF CC JUMP 0xffa02a24 <_bfin_EMAC_init+0x1d0>;
ffa029ce:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa029d2:	01 30       	R0 = R1;
ffa029d4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa029d8:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa029dc:	10 93       	[P2] = R0;
ffa029de:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa029e2:	00 e1 e8 02 	R0.L = 0x2e8;		/* (744)	R0=0xff9002e8(-7339288) */
ffa029e6:	ff e3 1d f4 	CALL 0xffa01220 <_printf_hex>;
ffa029ea:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002e8(-7339288) */
ffa029ee:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa029f2:	ff e3 b1 f3 	CALL 0xffa01154 <_printf_str>;
ffa029f6:	01 e8 00 00 	UNLINK;
ffa029fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa029fc:	b3 05       	(R7:6, P5:3) = [SP++];
ffa029fe:	10 00       	RTS;
ffa02a00:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02a02:	c4 2f       	JUMP.S 0xffa0298a <_bfin_EMAC_init+0x136>;
ffa02a04:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02a06:	a7 2f       	JUMP.S 0xffa02954 <_bfin_EMAC_init+0x100>;
ffa02a08:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa02a0c:	0a e1 b0 0e 	P2.L = 0xeb0;		/* (3760)	P2=0xff900eb0 <_txbuf> */
ffa02a10:	10 91       	R0 = [P2];
ffa02a12:	c8 b0       	[P1 + 0xc] = R0;
ffa02a14:	cc 2f       	JUMP.S 0xffa029ac <_bfin_EMAC_init+0x158>;
ffa02a16:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb0 <_txbuf> */
ffa02a1a:	0a e1 c4 0e 	P2.L = 0xec4;		/* (3780)	P2=0xff900ec4 <_rxbuf> */
ffa02a1e:	10 91       	R0 = [P2];
ffa02a20:	c8 b0       	[P1 + 0xc] = R0;
ffa02a22:	aa 2f       	JUMP.S 0xffa02976 <_bfin_EMAC_init+0x122>;
ffa02a24:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02a28:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa02a2a:	01 30       	R0 = R1;
ffa02a2c:	d4 2f       	JUMP.S 0xffa029d4 <_bfin_EMAC_init+0x180>;
ffa02a2e:	01 e8 00 00 	UNLINK;
ffa02a32:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02a34:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02a36:	10 00       	RTS;

ffa02a38 <_bfin_EMAC_recv_poll>:
ffa02a38:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02a3a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa02a3e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa02a42:	0d e1 c4 0e 	P5.L = 0xec4;		/* (3780)	P5=0xff900ec4 <_rxbuf> */
ffa02a46:	0c e1 c0 0e 	P4.L = 0xec0;		/* (3776)	P4=0xff900ec0 <_rxIdx> */
ffa02a4a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02a4e:	28 30       	R5 = R0;
ffa02a50:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02a52:	75 30       	R6 = P5;
ffa02a54:	5c 32       	P3 = P4;
ffa02a56:	06 20       	JUMP.S 0xffa02a62 <_bfin_EMAC_recv_poll+0x2a>;
ffa02a58:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02a5a:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02a5e:	07 08       	CC = R7 == R0;
ffa02a60:	59 18       	IF CC JUMP 0xffa02b12 <_bfin_EMAC_recv_poll+0xda>;
ffa02a62:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02a66:	ff e3 0d f7 	CALL 0xffa01880 <_udelay>;
ffa02a6a:	20 95       	R0 = W[P4] (Z);
ffa02a6c:	10 32       	P2 = R0;
ffa02a6e:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02a70:	52 91       	P2 = [P2];
ffa02a72:	90 a2       	R0 = [P2 + 0x28];
ffa02a74:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02a76:	f1 1f       	IF CC JUMP 0xffa02a58 <_bfin_EMAC_recv_poll+0x20> (BP);
ffa02a78:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02a7c:	91 a2       	R1 = [P2 + 0x28];
ffa02a7e:	41 54       	R1 = R1 & R0;
ffa02a80:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02a82:	01 09       	CC = R1 <= R0;
ffa02a84:	07 10       	IF !CC JUMP 0xffa02a92 <_bfin_EMAC_recv_poll+0x5a>;
ffa02a86:	01 e8 00 00 	UNLINK;
ffa02a8a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02a8c:	07 30       	R0 = R7;
ffa02a8e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02a90:	10 00       	RTS;
ffa02a92:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a94:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa02a98:	90 b2 00 00 
ffa02a9c:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02a9e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02aa2:	0f 30       	R1 = R7;
ffa02aa4:	00 e1 f4 02 	R0.L = 0x2f4;		/* (756)	R0=0xff9002f4(-7339276) */
ffa02aa8:	ff e3 18 f4 	CALL 0xffa012d8 <_printf_int>;
ffa02aac:	18 95       	R0 = W[P3] (Z);
ffa02aae:	10 32       	P2 = R0;
ffa02ab0:	0e 32       	P1 = R6;
ffa02ab2:	0f 30       	R1 = R7;
ffa02ab4:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02ab6:	52 91       	P2 = [P2];
ffa02ab8:	90 a1       	R0 = [P2 + 0x18];
ffa02aba:	15 32       	P2 = R5;
ffa02abc:	10 93       	[P2] = R0;
ffa02abe:	00 e3 0f 03 	CALL 0xffa030dc <_ARP_rx>;
ffa02ac2:	00 0c       	CC = R0 == 0x0;
ffa02ac4:	1f 18       	IF CC JUMP 0xffa02b02 <_bfin_EMAC_recv_poll+0xca>;
ffa02ac6:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02ac8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02acc:	20 95       	R0 = W[P4] (Z);
ffa02ace:	10 32       	P2 = R0;
ffa02ad0:	61 95       	R1 = W[P4] (X);
ffa02ad2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02ad4:	09 e1 c0 0e 	P1.L = 0xec0;		/* (3776)	P1=0xff900ec0 <_rxIdx> */
ffa02ad8:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02ada:	52 91       	P2 = [P2];
ffa02adc:	90 b2       	[P2 + 0x28] = R0;
ffa02ade:	c8 42       	R0 = R1.L (Z);
ffa02ae0:	10 0d       	CC = R0 <= 0x2;
ffa02ae2:	09 14       	IF !CC JUMP 0xffa02af4 <_bfin_EMAC_recv_poll+0xbc> (BP);
ffa02ae4:	01 30       	R0 = R1;
ffa02ae6:	08 64       	R0 += 0x1;		/* (  1) */
ffa02ae8:	08 97       	W[P1] = R0;
ffa02aea:	01 e8 00 00 	UNLINK;
ffa02aee:	07 30       	R0 = R7;
ffa02af0:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02af2:	10 00       	RTS;
ffa02af4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02af6:	08 97       	W[P1] = R0;
ffa02af8:	01 e8 00 00 	UNLINK;
ffa02afc:	07 30       	R0 = R7;
ffa02afe:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b00:	10 00       	RTS;
ffa02b02:	0d 32       	P1 = R5;
ffa02b04:	0f 30       	R1 = R7;
ffa02b06:	08 91       	R0 = [P1];
ffa02b08:	ff e3 8e fc 	CALL 0xffa02424 <_icmp_rx>;
ffa02b0c:	00 0c       	CC = R0 == 0x0;
ffa02b0e:	dd 1f       	IF CC JUMP 0xffa02ac8 <_bfin_EMAC_recv_poll+0x90> (BP);
ffa02b10:	db 2f       	JUMP.S 0xffa02ac6 <_bfin_EMAC_recv_poll+0x8e>;
ffa02b12:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02b16:	00 e1 00 03 	R0.L = 0x300;		/* (768)	R0=0xff900300(-7339264) */
ffa02b1a:	ff e3 1d f3 	CALL 0xffa01154 <_printf_str>;
ffa02b1e:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02b20:	01 e8 00 00 	UNLINK;
ffa02b24:	07 30       	R0 = R7;
ffa02b26:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b28:	10 00       	RTS;
	...

ffa02b2c <_bridge_publish>:
ffa02b2c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02b2e:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02b32:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02b34:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa02b38:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b3a:	f0 b0       	[SP + 0xc] = R0;
ffa02b3c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02b3e:	20 e1 ef 00 	R0 = 0xef (X);		/*		R0=0xef(239) */
ffa02b42:	22 e1 c8 00 	R2 = 0xc8 (X);		/*		R2=0xc8(200) */
ffa02b46:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900ec0 <_rxIdx> */
ffa02b4a:	6f 30       	R5 = FP;
ffa02b4c:	5f 32       	P3 = FP;
ffa02b4e:	ff e3 b9 f6 	CALL 0xffa018c0 <_FormatIPAddress>;
ffa02b52:	0c e1 e4 0e 	P4.L = 0xee4;		/* (3812)	P4=0xff900ee4 <_NetDataDestIP> */
ffa02b56:	00 cc 24 c8 	R4 = R4 -|- R4 || [P4] = R0 || NOP;
ffa02b5a:	20 93 00 00 
ffa02b5e:	c5 67       	R5 += -0x8;		/* ( -8) */
ffa02b60:	fb 6f       	P3 += -0x1;		/* ( -1) */
ffa02b62:	01 20       	JUMP.S 0xffa02b64 <_bridge_publish+0x38>;
ffa02b64:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02b66:	e0 bb       	[FP -0x8] = R0;
ffa02b68:	4b 30       	R1 = P3;
ffa02b6a:	82 ce 05 c0 	R0 = ROT R5 BY 0x0 || R2 = [P4] || NOP;
ffa02b6e:	22 91 00 00 
ffa02b72:	ff e3 c1 fb 	CALL 0xffa022f4 <_eth_header_setup>;
ffa02b76:	08 30       	R1 = R0;
ffa02b78:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa02b7c:	80 0c       	CC = R0 < 0x0;
ffa02b7e:	9c 18       	IF CC JUMP 0xffa02cb6 <_bridge_publish+0x18a>;
ffa02b80:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ec4 <_rxbuf> */
ffa02b84:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetDataDestIP> */
ffa02b88:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa02b8a:	12 91       	R2 = [P2];
ffa02b8c:	d1 bb       	[FP -0xc] = R1;
ffa02b8e:	f0 b0       	[SP + 0xc] = R0;
ffa02b90:	01 30       	R0 = R1;
ffa02b92:	0d 30       	R1 = R5;
ffa02b94:	ff e3 74 f7 	CALL 0xffa01a7c <_ip_header_setup>;
ffa02b98:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa02b9c:	f1 b0       	[SP + 0xc] = R1;
ffa02b9e:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa02ba2:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [FP -0xc] = R0 || NOP;
ffa02ba6:	d0 bb 00 00 
ffa02baa:	ff e3 dd f7 	CALL 0xffa01b64 <_udp_header_setup>;
ffa02bae:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [FP -0xc] = R0 || NOP;
ffa02bb2:	d0 bb 00 00 
ffa02bb6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900011(-7340015) */
ffa02bba:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
ffa02bbc:	00 e1 10 03 	R0.L = 0x310;		/* (784)	R0=0xff900310(-7339248) */
ffa02bc0:	ff e3 72 f4 	CALL 0xffa014a4 <_memcpy_>;
ffa02bc4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900310(-7339248) */
ffa02bc8:	00 e1 1c 03 	R0.L = 0x31c;		/* (796)	R0=0xff90031c(-7339236) */
ffa02bcc:	77 30       	R6 = FP;
ffa02bce:	ff e3 c3 f2 	CALL 0xffa01154 <_printf_str>;
ffa02bd2:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02bd4:	ff e3 16 f8 	CALL 0xffa01c00 <_bfin_EMAC_send_nocopy>;
ffa02bd8:	a6 67       	R6 += -0xc;		/* (-12) */
ffa02bda:	05 20       	JUMP.S 0xffa02be4 <_bridge_publish+0xb8>;
ffa02bdc:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02bde:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02be0:	07 08       	CC = R7 == R0;
ffa02be2:	46 18       	IF CC JUMP 0xffa02c6e <_bridge_publish+0x142>;
ffa02be4:	06 30       	R0 = R6;
ffa02be6:	ff e3 29 ff 	CALL 0xffa02a38 <_bfin_EMAC_recv_poll>;
ffa02bea:	59 61       	R1 = 0x2b (X);		/*		R1=0x2b( 43) */
ffa02bec:	08 09       	CC = R0 <= R1;
ffa02bee:	e0 bb       	[FP -0x8] = R0;
ffa02bf0:	dd b9       	P5 = [FP -0xc];
ffa02bf2:	f5 1f       	IF CC JUMP 0xffa02bdc <_bridge_publish+0xb0> (BP);
ffa02bf4:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa02bf6:	ff e3 0f f7 	CALL 0xffa01a14 <_htons>;
ffa02bfa:	c0 42       	R0 = R0.L (Z);
ffa02bfc:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa02c00:	08 08       	CC = R0 == R1;
ffa02c02:	ed 17       	IF !CC JUMP 0xffa02bdc <_bridge_publish+0xb0> (BP);
ffa02c04:	20 e1 f4 10 	R0 = 0x10f4 (X);		/*		R0=0x10f4(4340) */
ffa02c08:	ff e3 06 f7 	CALL 0xffa01a14 <_htons>;
ffa02c0c:	c0 42       	R0 = R0.L (Z);
ffa02c0e:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa02c12:	01 08       	CC = R1 == R0;
ffa02c14:	e4 17       	IF !CC JUMP 0xffa02bdc <_bridge_publish+0xb0> (BP);
ffa02c16:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa02c1a:	ff e3 fd f6 	CALL 0xffa01a14 <_htons>;
ffa02c1e:	c0 42       	R0 = R0.L (Z);
ffa02c20:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa02c24:	01 08       	CC = R1 == R0;
ffa02c26:	db 17       	IF !CC JUMP 0xffa02bdc <_bridge_publish+0xb0> (BP);
ffa02c28:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9010f5(-7335691) */
ffa02c2c:	e9 a1       	R1 = [P5 + 0x1c];
ffa02c2e:	00 e1 34 03 	R0.L = 0x334;		/* (820)	R0=0xff900334(-7339212) */
ffa02c32:	21 93       	[P4] = R1;
ffa02c34:	ff e3 f4 f3 	CALL 0xffa0141c <_printf_ip>;
ffa02c38:	da b9       	P2 = [FP -0xc];
ffa02c3a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900334(-7339212) */
ffa02c3e:	00 e1 40 03 	R0.L = 0x340;		/* (832)	R0=0xff900340(-7339200) */
ffa02c42:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa02c44:	da bb       	[FP -0xc] = P2;
ffa02c46:	a2 6e       	P2 += -0x2c;		/* (-44) */
ffa02c48:	91 e4 2c 00 	R1 = B[P2 + 0x2c] (Z);
ffa02c4c:	ff e3 94 f2 	CALL 0xffa01174 <_printf_hex_byte>;
ffa02c50:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900340(-7339200) */
ffa02c54:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa02c58:	ff e3 7e f2 	CALL 0xffa01154 <_printf_str>;
ffa02c5c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetDataDestIP> */
ffa02c60:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c62:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_g_streamEnabled> */
ffa02c66:	10 9b       	B[P2] = R0;
ffa02c68:	da b9       	P2 = [FP -0xc];
ffa02c6a:	10 99       	R0 = B[P2] (Z);
ffa02c6c:	26 20       	JUMP.S 0xffa02cb8 <_bridge_publish+0x18c>;
ffa02c6e:	ff e3 a4 ea 	CALL 0xffa001b6 <_ustimer>;
ffa02c72:	41 e1 0b e5 	R1.H = 0xe50b;		/* (-6901)	R1=0xe50b0800(-452261888) */
ffa02c76:	08 4e       	R0 >>= 0x1;
ffa02c78:	01 e1 81 f7 	R1.L = 0xf781;		/* (-2175)	R1=0xe50bf781(-452200575) */
ffa02c7c:	80 c0 01 18 	A1 = R0.L * R1.L (FU);
ffa02c80:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa02c84:	81 c0 01 86 	A1 += R0.H * R1.L, A0 = R0.H * R1.H (FU);
ffa02c88:	81 c0 08 98 	A1 += R1.H * R0.L (FU);
ffa02c8c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa02c90:	0b c4 00 80 	A0 += A1;
ffa02c94:	8b c0 00 38 	R0 = A0 (FU);
ffa02c98:	82 c6 a8 83 	R1 = R0 >> 0xb;
ffa02c9c:	0c 08       	CC = R4 == R1;
ffa02c9e:	63 1b       	IF CC JUMP 0xffa02b64 <_bridge_publish+0x38>;
ffa02ca0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c34(-4191180) */
ffa02ca4:	20 e1 00 80 	R0 = -0x8000 (X);		/*		R0=0xffff8000(-32768) */
ffa02ca8:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa02cac:	82 ce 01 c8 	R4 = ROT R1 BY 0x0 || W[P2] = R0 || NOP;
ffa02cb0:	10 97 00 00 
ffa02cb4:	58 2f       	JUMP.S 0xffa02b64 <_bridge_publish+0x38>;
ffa02cb6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02cb8:	01 e8 00 00 	UNLINK;
ffa02cbc:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02cbe:	10 00       	RTS;

ffa02cc0 <_DHCP_rx>:
ffa02cc0:	e5 05       	[--SP] = (R7:4, P5:5);
ffa02cc2:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02cc6:	67 30       	R4 = FP;
ffa02cc8:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02cca:	e4 67       	R4 += -0x4;		/* ( -4) */
ffa02ccc:	01 20       	JUMP.S 0xffa02cce <_DHCP_rx+0xe>;
ffa02cce:	04 30       	R0 = R4;
ffa02cd0:	ff e3 b4 fe 	CALL 0xffa02a38 <_bfin_EMAC_recv_poll>;
ffa02cd4:	38 30       	R7 = R0;
ffa02cd6:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa02cda:	47 51       	R5 = R7 + R0;
ffa02cdc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa02ce0:	0d 30       	R1 = R5;
ffa02ce2:	00 e1 7c 03 	R0.L = 0x37c;		/* (892)	R0=0xff90037c(-7339140) */
ffa02ce6:	ff e3 f9 f2 	CALL 0xffa012d8 <_printf_int>;
ffa02cea:	21 e1 1b 01 	R1 = 0x11b (X);		/*		R1=0x11b(283) */
ffa02cee:	0f 09       	CC = R7 <= R1;
ffa02cf0:	fd b9       	P5 = [FP -0x4];
ffa02cf2:	0c 18       	IF CC JUMP 0xffa02d0a <_DHCP_rx+0x4a>;
ffa02cf4:	00 00       	NOP;
ffa02cf6:	00 00       	NOP;
ffa02cf8:	00 00       	NOP;
ffa02cfa:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa02cfc:	ff e3 8c f6 	CALL 0xffa01a14 <_htons>;
ffa02d00:	c0 42       	R0 = R0.L (Z);
ffa02d02:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa02d06:	08 08       	CC = R0 == R1;
ffa02d08:	0f 18       	IF CC JUMP 0xffa02d26 <_DHCP_rx+0x66>;
ffa02d0a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90037c(-7339140) */
ffa02d0e:	00 e1 60 03 	R0.L = 0x360;		/* (864)	R0=0xff900360(-7339168) */
ffa02d12:	ff e3 21 f2 	CALL 0xffa01154 <_printf_str>;
ffa02d16:	0e 64       	R6 += 0x1;		/* (  1) */
ffa02d18:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa02d1a:	06 09       	CC = R6 <= R0;
ffa02d1c:	d9 1f       	IF CC JUMP 0xffa02cce <_DHCP_rx+0xe> (BP);
ffa02d1e:	ff e3 cf f8 	CALL 0xffa01ebc <_DHCP_tx_discover>;
ffa02d22:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02d24:	d5 2f       	JUMP.S 0xffa02cce <_DHCP_rx+0xe>;
ffa02d26:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa02d2a:	ff e3 75 f6 	CALL 0xffa01a14 <_htons>;
ffa02d2e:	c0 42       	R0 = R0.L (Z);
ffa02d30:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa02d34:	01 08       	CC = R1 == R0;
ffa02d36:	f1 17       	IF !CC JUMP 0xffa02d18 <_DHCP_rx+0x58> (BP);
ffa02d38:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa02d3c:	ff e3 6c f6 	CALL 0xffa01a14 <_htons>;
ffa02d40:	c0 42       	R0 = R0.L (Z);
ffa02d42:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa02d46:	01 08       	CC = R1 == R0;
ffa02d48:	e8 17       	IF !CC JUMP 0xffa02d18 <_DHCP_rx+0x58> (BP);
ffa02d4a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa02d4e:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa02d52:	11 91       	R1 = [P2];
ffa02d54:	28 a3       	R0 = [P5 + 0x30];
ffa02d56:	08 08       	CC = R0 == R1;
ffa02d58:	e0 17       	IF !CC JUMP 0xffa02d18 <_DHCP_rx+0x58> (BP);
ffa02d5a:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa02d5e:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa02d62:	ff e3 65 f6 	CALL 0xffa01a2c <_htonl>;
ffa02d66:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa02d6a:	01 08       	CC = R1 == R0;
ffa02d6c:	d6 17       	IF !CC JUMP 0xffa02d18 <_DHCP_rx+0x58> (BP);
ffa02d6e:	4d 30       	R1 = P5;
ffa02d70:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa02d74:	01 50       	R0 = R1 + R0;
ffa02d76:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa02d7a:	f0 bb 00 00 
ffa02d7e:	ff e3 c3 f8 	CALL 0xffa01f04 <_DHCP_parse>;
ffa02d82:	e9 a3       	R1 = [P5 + 0x3c];
ffa02d84:	01 0c       	CC = R1 == 0x0;
ffa02d86:	12 1c       	IF CC JUMP 0xffa02daa <_DHCP_rx+0xea> (BP);
ffa02d88:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa02d8c:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa02d90:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa02d94:	11 93       	[P2] = R1;
ffa02d96:	00 e1 50 03 	R0.L = 0x350;		/* (848)	R0=0xff900350(-7339184) */
ffa02d9a:	ff e3 41 f3 	CALL 0xffa0141c <_printf_ip>;
ffa02d9e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900350(-7339184) */
ffa02da2:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa02da6:	ff e3 d7 f1 	CALL 0xffa01154 <_printf_str>;
ffa02daa:	01 e8 00 00 	UNLINK;
ffa02dae:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02db0:	a5 05       	(R7:4, P5:5) = [SP++];
ffa02db2:	10 00       	RTS;

ffa02db4 <_DHCP_req>:
ffa02db4:	c5 04       	[--SP] = (P5:5);
ffa02db6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ec4 <_rxbuf> */
ffa02dba:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02dbe:	0d e1 a8 0e 	P5.L = 0xea8;		/* (3752)	P5=0xff900ea8 <_NetDHCPserv> */
ffa02dc2:	ff e3 7d f8 	CALL 0xffa01ebc <_DHCP_tx_discover>;
ffa02dc6:	ff e3 7d ff 	CALL 0xffa02cc0 <_DHCP_rx>;
ffa02dca:	29 91       	R1 = [P5];
ffa02dcc:	39 0c       	CC = R1 == -0x1;
ffa02dce:	42 18       	IF CC JUMP 0xffa02e52 <_DHCP_req+0x9e>;
ffa02dd0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetOurIP> */
ffa02dd4:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa02dd8:	10 91       	R0 = [P2];
ffa02dda:	00 0c       	CC = R0 == 0x0;
ffa02ddc:	08 18       	IF CC JUMP 0xffa02dec <_DHCP_req+0x38>;
ffa02dde:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetOurIP> */
ffa02de2:	0a e1 dc 0e 	P2.L = 0xedc;		/* (3804)	P2=0xff900edc <_NetSubnetMask> */
ffa02de6:	10 91       	R0 = [P2];
ffa02de8:	00 0c       	CC = R0 == 0x0;
ffa02dea:	2f 10       	IF !CC JUMP 0xffa02e48 <_DHCP_req+0x94>;
ffa02dec:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa02dee:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa02df2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02df4:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa02df8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02dfa:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa02dfe:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02e00:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02e04:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02e06:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa02e0a:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa02e0e:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa02e12:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa02e16:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa02e1a:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa02e1e:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa02e22:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02e24:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa02e28:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa02e2c:	00 e1 ac 03 	R0.L = 0x3ac;		/* (940)	R0=0xff9003ac(-7339092) */
ffa02e30:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa02e34:	ff e3 90 f1 	CALL 0xffa01154 <_printf_str>;
ffa02e38:	4f 30       	R1 = FP;
ffa02e3a:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02e3c:	a1 67       	R1 += -0xc;		/* (-12) */
ffa02e3e:	2a 91       	R2 = [P5];
ffa02e40:	ff e3 4e f7 	CALL 0xffa01cdc <_DHCP_tx>;
ffa02e44:	ff e3 3e ff 	CALL 0xffa02cc0 <_DHCP_rx>;
ffa02e48:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02e4a:	01 e8 00 00 	UNLINK;
ffa02e4e:	85 04       	(P5:5) = [SP++];
ffa02e50:	10 00       	RTS;
ffa02e52:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02e56:	00 e1 90 03 	R0.L = 0x390;		/* (912)	R0=0xff900390(-7339120) */
ffa02e5a:	ff e3 7d f1 	CALL 0xffa01154 <_printf_str>;
ffa02e5e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02e60:	f5 2f       	JUMP.S 0xffa02e4a <_DHCP_req+0x96>;
	...

ffa02e64 <_bfin_EMAC_recv>:
ffa02e64:	eb 05       	[--SP] = (R7:5, P5:3);
ffa02e66:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900ee4 <_NetDataDestIP> */
ffa02e6a:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000 <_l1_data_a>(-7340032) */
ffa02e6e:	0c e1 c0 0e 	P4.L = 0xec0;		/* (3776)	P4=0xff900ec0 <_rxIdx> */
ffa02e72:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00eb0(-4190544) */
ffa02e76:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02e7a:	28 32       	P5 = R0;
ffa02e7c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02e7e:	05 e1 c4 0e 	R5.L = 0xec4;		/* (3780)	R5=0xff900ec4 <_rxbuf>(-7336252) */
ffa02e82:	74 30       	R6 = P4;
ffa02e84:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa02e88:	0e 32       	P1 = R6;
ffa02e8a:	08 95       	R0 = W[P1] (Z);
ffa02e8c:	10 32       	P2 = R0;
ffa02e8e:	0d 32       	P1 = R5;
ffa02e90:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02e92:	52 91       	P2 = [P2];
ffa02e94:	90 a2       	R0 = [P2 + 0x28];
ffa02e96:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02e98:	46 18       	IF CC JUMP 0xffa02f24 <_bfin_EMAC_recv+0xc0>;
ffa02e9a:	00 00       	NOP;
ffa02e9c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e9e:	a0 4f       	R0 <<= 0x14;
ffa02ea0:	91 a2       	R1 = [P2 + 0x28];
ffa02ea2:	81 54       	R2 = R1 & R0;
ffa02ea4:	02 0c       	CC = R2 == 0x0;
ffa02ea6:	45 10       	IF !CC JUMP 0xffa02f30 <_bfin_EMAC_recv+0xcc>;
ffa02ea8:	00 00       	NOP;
ffa02eaa:	00 00       	NOP;
ffa02eac:	00 00       	NOP;
ffa02eae:	90 a2       	R0 = [P2 + 0x28];
ffa02eb0:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa02eb2:	4a 18       	IF CC JUMP 0xffa02f46 <_bfin_EMAC_recv+0xe2>;
ffa02eb4:	00 00       	NOP;
ffa02eb6:	00 00       	NOP;
ffa02eb8:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02ebc:	91 a2       	R1 = [P2 + 0x28];
ffa02ebe:	c1 55       	R7 = R1 & R0;
ffa02ec0:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02ec2:	07 09       	CC = R7 <= R0;
ffa02ec4:	4c 18       	IF CC JUMP 0xffa02f5c <_bfin_EMAC_recv+0xf8>;
ffa02ec6:	00 00       	NOP;
ffa02ec8:	00 00       	NOP;
ffa02eca:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02ecc:	90 a1       	R0 = [P2 + 0x18];
ffa02ece:	59 95       	R1 = W[P3] (X);
ffa02ed0:	28 93       	[P5] = R0;
ffa02ed2:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02ed4:	08 56       	R0 = R0 | R1;
ffa02ed6:	18 97       	W[P3] = R0;
ffa02ed8:	61 95       	R1 = W[P4] (X);
ffa02eda:	c8 42       	R0 = R1.L (Z);
ffa02edc:	10 0d       	CC = R0 <= 0x2;
ffa02ede:	92 b2       	[P2 + 0x28] = R2;
ffa02ee0:	1e 1c       	IF CC JUMP 0xffa02f1c <_bfin_EMAC_recv+0xb8> (BP);
ffa02ee2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02ee4:	20 97       	W[P4] = R0;
ffa02ee6:	28 91       	R0 = [P5];
ffa02ee8:	0f 30       	R1 = R7;
ffa02eea:	00 e3 f9 00 	CALL 0xffa030dc <_ARP_rx>;
ffa02eee:	00 0c       	CC = R0 == 0x0;
ffa02ef0:	03 18       	IF CC JUMP 0xffa02ef6 <_bfin_EMAC_recv+0x92>;
ffa02ef2:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02ef4:	ca 2f       	JUMP.S 0xffa02e88 <_bfin_EMAC_recv+0x24>;
ffa02ef6:	28 91       	R0 = [P5];
ffa02ef8:	0f 30       	R1 = R7;
ffa02efa:	ff e3 95 fa 	CALL 0xffa02424 <_icmp_rx>;
ffa02efe:	00 0c       	CC = R0 == 0x0;
ffa02f00:	f9 17       	IF !CC JUMP 0xffa02ef2 <_bfin_EMAC_recv+0x8e> (BP);
ffa02f02:	28 91       	R0 = [P5];
ffa02f04:	0f 30       	R1 = R7;
ffa02f06:	00 e3 49 04 	CALL 0xffa03798 <_tcp_rx>;
ffa02f0a:	00 0c       	CC = R0 == 0x0;
ffa02f0c:	f3 17       	IF !CC JUMP 0xffa02ef2 <_bfin_EMAC_recv+0x8e> (BP);
ffa02f0e:	07 0d       	CC = R7 <= 0x0;
ffa02f10:	bc 1f       	IF CC JUMP 0xffa02e88 <_bfin_EMAC_recv+0x24> (BP);
ffa02f12:	01 e8 00 00 	UNLINK;
ffa02f16:	07 30       	R0 = R7;
ffa02f18:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02f1a:	10 00       	RTS;
ffa02f1c:	01 30       	R0 = R1;
ffa02f1e:	08 64       	R0 += 0x1;		/* (  1) */
ffa02f20:	20 97       	W[P4] = R0;
ffa02f22:	e2 2f       	JUMP.S 0xffa02ee6 <_bfin_EMAC_recv+0x82>;
ffa02f24:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02f26:	01 e8 00 00 	UNLINK;
ffa02f2a:	07 30       	R0 = R7;
ffa02f2c:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02f2e:	10 00       	RTS;
ffa02f30:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02f34:	00 e1 c0 03 	R0.L = 0x3c0;		/* (960)	R0=0xff9003c0(-7339072) */
ffa02f38:	ff e3 0e f1 	CALL 0xffa01154 <_printf_str>;
ffa02f3c:	01 e8 00 00 	UNLINK;
ffa02f40:	07 30       	R0 = R7;
ffa02f42:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02f44:	10 00       	RTS;
ffa02f46:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003c0(-7339072) */
ffa02f4a:	00 e1 dc 03 	R0.L = 0x3dc;		/* (988)	R0=0xff9003dc(-7339044) */
ffa02f4e:	ff e3 03 f1 	CALL 0xffa01154 <_printf_str>;
ffa02f52:	01 e8 00 00 	UNLINK;
ffa02f56:	07 30       	R0 = R7;
ffa02f58:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02f5a:	10 00       	RTS;
ffa02f5c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003dc(-7339044) */
ffa02f60:	00 e1 f0 03 	R0.L = 0x3f0;		/* (1008)	R0=0xff9003f0(-7339024) */
ffa02f64:	ff e3 f8 f0 	CALL 0xffa01154 <_printf_str>;
ffa02f68:	01 e8 00 00 	UNLINK;
ffa02f6c:	07 30       	R0 = R7;
ffa02f6e:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02f70:	10 00       	RTS;
	...

ffa02f74 <_ARP_init>:
ffa02f74:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900edc <_NetSubnetMask> */
ffa02f78:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02f7c:	0a e1 ec 0e 	P2.L = 0xeec;		/* (3820)	P2=0xff900eec <_NetArpLut> */
ffa02f80:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02f82:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f84:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02f86:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa02f88:	b2 e0 12 10 	LSETUP(0xffa02f8c <_ARP_init+0x18>, 0xffa02fac <_ARP_init+0x38>) LC1 = P1;
ffa02f8c:	11 93       	[P2] = R1;
ffa02f8e:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02f92:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02f96:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa02f9a:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa02f9e:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02fa2:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02fa6:	52 b5       	W[P2 + 0xa] = R2;
ffa02fa8:	d1 b0       	[P2 + 0xc] = R1;
ffa02faa:	11 b1       	[P2 + 0x10] = R1;
ffa02fac:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa02fae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eec <_NetArpLut> */
ffa02fb2:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02fb6:	0a e1 e8 0e 	P2.L = 0xee8;		/* (3816)	P2=0xff900ee8 <_NetArpLut_age> */
ffa02fba:	10 97       	W[P2] = R0;
ffa02fbc:	01 e8 00 00 	UNLINK;
ffa02fc0:	10 00       	RTS;
	...

ffa02fc4 <_ARP_lut_find>:
ffa02fc4:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900eac <_txIdx> */
ffa02fc8:	08 e1 ec 0e 	P0.L = 0xeec;		/* (3820)	P0=0xff900eec <_NetArpLut> */
ffa02fcc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02fd0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02fd2:	48 32       	P1 = P0;
ffa02fd4:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02fd6:	b2 e0 06 20 	LSETUP(0xffa02fda <_ARP_lut_find+0x16>, 0xffa02fe2 <_ARP_lut_find+0x1e>) LC1 = P2;
ffa02fda:	08 91       	R0 = [P1];
ffa02fdc:	00 0c       	CC = R0 == 0x0;
ffa02fde:	14 18       	IF CC JUMP 0xffa03006 <_ARP_lut_find+0x42>;
ffa02fe0:	0a 64       	R2 += 0x1;		/* (  1) */
ffa02fe2:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02fe4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa02fe8:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02fea:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02fec:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa02fee:	09 e1 0a 0f 	P1.L = 0xf0a;		/* (3850)	P1=0xff900f0a */
ffa02ff2:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa02ff4:	b2 e0 08 20 	LSETUP(0xffa02ff8 <_ARP_lut_find+0x34>, 0xffa03004 <_ARP_lut_find+0x40>) LC1 = P2;
ffa02ff8:	08 95       	R0 = W[P1] (Z);
ffa02ffa:	03 09       	CC = R3 <= R0;
ffa02ffc:	03 18       	IF CC JUMP 0xffa03002 <_ARP_lut_find+0x3e>;
ffa02ffe:	11 30       	R2 = R1;
ffa03000:	18 30       	R3 = R0;
ffa03002:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa03004:	09 64       	R1 += 0x1;		/* (  1) */
ffa03006:	02 30       	R0 = R2;
ffa03008:	01 e8 00 00 	UNLINK;
ffa0300c:	10 00       	RTS;
	...

ffa03010 <_ARP_lut_add>:
ffa03010:	f5 05       	[--SP] = (R7:6, P5:5);
ffa03012:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ea8 <_NetDHCPserv> */
ffa03016:	0d e1 ec 0e 	P5.L = 0xeec;		/* (3820)	P5=0xff900eec <_NetArpLut> */
ffa0301a:	31 30       	R6 = R1;
ffa0301c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03020:	38 30       	R7 = R0;
ffa03022:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa03024:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03026:	4d 32       	P1 = P5;
ffa03028:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa0302a:	00 00       	NOP;
ffa0302c:	08 91       	R0 = [P1];
ffa0302e:	07 08       	CC = R7 == R0;
ffa03030:	11 07       	IF CC R2 = R1;
ffa03032:	09 64       	R1 += 0x1;		/* (  1) */
ffa03034:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa03036:	42 0c       	CC = P2 == 0x0;
ffa03038:	23 10       	IF !CC JUMP 0xffa0307e <_ARP_lut_add+0x6e>;
ffa0303a:	82 0c       	CC = R2 < 0x0;
ffa0303c:	25 18       	IF CC JUMP 0xffa03086 <_ARP_lut_add+0x76>;
ffa0303e:	82 c6 12 82 	R1 = R2 << 0x2;
ffa03042:	0a 32       	P1 = R2;
ffa03044:	11 32       	P2 = R1;
ffa03046:	06 32       	P0 = R6;
ffa03048:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa0304a:	6a 5a       	P1 = P2 + P5;
ffa0304c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0304e:	0f 93       	[P1] = R7;
ffa03050:	aa 5a       	P2 = P2 + P5;
ffa03052:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa03054:	b2 e0 03 10 	LSETUP(0xffa03058 <_ARP_lut_add+0x48>, 0xffa0305a <_ARP_lut_add+0x4a>) LC1 = P1;
ffa03058:	40 98       	R0 = B[P0++] (X);
ffa0305a:	10 9a       	B[P2++] = R0;
ffa0305c:	51 41       	R1 = (R1 + R2) << 0x2;
ffa0305e:	09 32       	P1 = R1;
ffa03060:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa03064:	0a e1 e8 0e 	P2.L = 0xee8;		/* (3816)	P2=0xff900ee8 <_NetArpLut_age> */
ffa03068:	50 95       	R0 = W[P2] (X);
ffa0306a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0306c:	10 97       	W[P2] = R0;
ffa0306e:	a9 5a       	P2 = P1 + P5;
ffa03070:	50 b5       	W[P2 + 0xa] = R0;
ffa03072:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03074:	10 b1       	[P2 + 0x10] = R0;
ffa03076:	01 e8 00 00 	UNLINK;
ffa0307a:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0307c:	10 00       	RTS;
ffa0307e:	82 0c       	CC = R2 < 0x0;
ffa03080:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa03082:	d4 1f       	IF CC JUMP 0xffa0302a <_ARP_lut_add+0x1a> (BP);
ffa03084:	dd 2f       	JUMP.S 0xffa0303e <_ARP_lut_add+0x2e>;
ffa03086:	ff e3 9f ff 	CALL 0xffa02fc4 <_ARP_lut_find>;
ffa0308a:	10 30       	R2 = R0;
ffa0308c:	d9 2f       	JUMP.S 0xffa0303e <_ARP_lut_add+0x2e>;
	...

ffa03090 <_ARP_lu>:
ffa03090:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa03094:	c4 04       	[--SP] = (P5:4);
ffa03096:	09 e1 ec 0e 	P1.L = 0xeec;		/* (3820)	P1=0xff900eec <_NetArpLut> */
ffa0309a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0309e:	10 30       	R2 = R0;
ffa030a0:	29 32       	P5 = R1;
ffa030a2:	61 32       	P4 = P1;
ffa030a4:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa030a6:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa030a8:	b2 e0 06 20 	LSETUP(0xffa030ac <_ARP_lu+0x1c>, 0xffa030b4 <_ARP_lu+0x24>) LC1 = P2;
ffa030ac:	08 91       	R0 = [P1];
ffa030ae:	10 08       	CC = R0 == R2;
ffa030b0:	08 18       	IF CC JUMP 0xffa030c0 <_ARP_lu+0x30>;
ffa030b2:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa030b4:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa030b6:	01 e8 00 00 	UNLINK;
ffa030ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa030bc:	84 04       	(P5:4) = [SP++];
ffa030be:	10 00       	RTS;
ffa030c0:	08 a1       	R0 = [P1 + 0x10];
ffa030c2:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa030c4:	f7 1f       	IF CC JUMP 0xffa030b2 <_ARP_lu+0x22> (BP);
ffa030c6:	60 5a       	P1 = P0 + P4;
ffa030c8:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa030ca:	b2 e0 03 20 	LSETUP(0xffa030ce <_ARP_lu+0x3e>, 0xffa030d0 <_ARP_lu+0x40>) LC1 = P2;
ffa030ce:	48 98       	R0 = B[P1++] (X);
ffa030d0:	28 9a       	B[P5++] = R0;
ffa030d2:	01 e8 00 00 	UNLINK;
ffa030d6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa030d8:	84 04       	(P5:4) = [SP++];
ffa030da:	10 00       	RTS;

ffa030dc <_ARP_rx>:
ffa030dc:	fb 05       	[--SP] = (R7:7, P5:3);
ffa030de:	20 32       	P4 = R0;
ffa030e0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa030e4:	39 30       	R7 = R1;
ffa030e6:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa030e8:	ff e3 96 f4 	CALL 0xffa01a14 <_htons>;
ffa030ec:	c0 42       	R0 = R0.L (Z);
ffa030ee:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa030f2:	08 08       	CC = R0 == R1;
ffa030f4:	06 18       	IF CC JUMP 0xffa03100 <_ARP_rx+0x24>;
ffa030f6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa030f8:	01 e8 00 00 	UNLINK;
ffa030fc:	bb 05       	(R7:7, P5:3) = [SP++];
ffa030fe:	10 00       	RTS;
ffa03100:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa03102:	07 0a       	CC = R7 <= R0 (IU);
ffa03104:	f9 1f       	IF CC JUMP 0xffa030f6 <_ARP_rx+0x1a> (BP);
ffa03106:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03108:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa0310a:	ff e3 85 f4 	CALL 0xffa01a14 <_htons>;
ffa0310e:	c0 42       	R0 = R0.L (Z);
ffa03110:	07 08       	CC = R7 == R0;
ffa03112:	f2 17       	IF !CC JUMP 0xffa030f6 <_ARP_rx+0x1a> (BP);
ffa03114:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03118:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa0311a:	ff e3 7d f4 	CALL 0xffa01a14 <_htons>;
ffa0311e:	c0 42       	R0 = R0.L (Z);
ffa03120:	07 08       	CC = R7 == R0;
ffa03122:	ea 17       	IF !CC JUMP 0xffa030f6 <_ARP_rx+0x1a> (BP);
ffa03124:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa03126:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa0312a:	08 08       	CC = R0 == R1;
ffa0312c:	e5 17       	IF !CC JUMP 0xffa030f6 <_ARP_rx+0x1a> (BP);
ffa0312e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03130:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa03132:	ff e3 71 f4 	CALL 0xffa01a14 <_htons>;
ffa03136:	c0 42       	R0 = R0.L (Z);
ffa03138:	07 08       	CC = R7 == R0;
ffa0313a:	0c 14       	IF !CC JUMP 0xffa03152 <_ARP_rx+0x76> (BP);
ffa0313c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa03140:	0a e1 d4 0e 	P2.L = 0xed4;		/* (3796)	P2=0xff900ed4 <_NetOurMAC> */
ffa03144:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa03148:	10 99       	R0 = B[P2] (Z);
ffa0314a:	01 08       	CC = R1 == R0;
ffa0314c:	ae 18       	IF CC JUMP 0xffa032a8 <_ARP_rx+0x1cc>;
ffa0314e:	00 00       	NOP;
ffa03150:	00 00       	NOP;
ffa03152:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03154:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa03156:	ff e3 5f f4 	CALL 0xffa01a14 <_htons>;
ffa0315a:	c0 42       	R0 = R0.L (Z);
ffa0315c:	07 08       	CC = R7 == R0;
ffa0315e:	cc 17       	IF !CC JUMP 0xffa030f6 <_ARP_rx+0x1a> (BP);
ffa03160:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03164:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa03166:	ff e3 57 f4 	CALL 0xffa01a14 <_htons>;
ffa0316a:	c0 42       	R0 = R0.L (Z);
ffa0316c:	07 08       	CC = R7 == R0;
ffa0316e:	c4 17       	IF !CC JUMP 0xffa030f6 <_ARP_rx+0x1a> (BP);
ffa03170:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa03172:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa03176:	08 08       	CC = R0 == R1;
ffa03178:	bf 17       	IF !CC JUMP 0xffa030f6 <_ARP_rx+0x1a> (BP);
ffa0317a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0317c:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa0317e:	ff e3 4b f4 	CALL 0xffa01a14 <_htons>;
ffa03182:	c0 42       	R0 = R0.L (Z);
ffa03184:	07 08       	CC = R7 == R0;
ffa03186:	b8 17       	IF !CC JUMP 0xffa030f6 <_ARP_rx+0x1a> (BP);
ffa03188:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa0318c:	07 e1 e0 0e 	R7.L = 0xee0;		/* (3808)	R7=0xff900ee0 <_NetOurIP>(-7336224) */
ffa03190:	17 32       	P2 = R7;
ffa03192:	a1 a2       	R1 = [P4 + 0x28];
ffa03194:	10 91       	R0 = [P2];
ffa03196:	01 08       	CC = R1 == R0;
ffa03198:	af 17       	IF !CC JUMP 0xffa030f6 <_ARP_rx+0x1a> (BP);
ffa0319a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed4 <_NetOurMAC> */
ffa0319e:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa031a2:	10 95       	R0 = W[P2] (Z);
ffa031a4:	10 32       	P2 = R0;
ffa031a6:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900eec <_NetArpLut> */
ffa031aa:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa031ae:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa031b0:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900eec <_NetArpLut> */
ffa031b4:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa031b6:	52 91       	P2 = [P2];
ffa031b8:	0d e1 d4 0e 	P5.L = 0xed4;		/* (3796)	P5=0xff900ed4 <_NetOurMAC> */
ffa031bc:	93 ad       	P3 = [P2 + 0x18];
ffa031be:	18 97       	W[P3] = R0;
ffa031c0:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa031c4:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa031c8:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa031cc:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa031d0:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa031d4:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa031d8:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa031dc:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa031e0:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa031e4:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa031e8:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa031ec:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa031f0:	68 99       	R0 = B[P5] (X);
ffa031f2:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa031f6:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa031fa:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa031fe:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa03202:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa03206:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa0320a:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa0320e:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa03212:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa03216:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa0321a:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa0321e:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa03222:	ff e3 f9 f3 	CALL 0xffa01a14 <_htons>;
ffa03226:	d8 b5       	W[P3 + 0xe] = R0;
ffa03228:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0322a:	ff e3 f5 f3 	CALL 0xffa01a14 <_htons>;
ffa0322e:	18 b6       	W[P3 + 0x10] = R0;
ffa03230:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03234:	ff e3 f0 f3 	CALL 0xffa01a14 <_htons>;
ffa03238:	58 b6       	W[P3 + 0x12] = R0;
ffa0323a:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0323c:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa03240:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03242:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa03246:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03248:	ff e3 e6 f3 	CALL 0xffa01a14 <_htons>;
ffa0324c:	44 32       	P0 = P4;
ffa0324e:	d8 b6       	W[P3 + 0x16] = R0;
ffa03250:	53 32       	P2 = P3;
ffa03252:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa03254:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa03256:	b2 e0 08 10 	LSETUP(0xffa0325a <_ARP_rx+0x17e>, 0xffa03266 <_ARP_rx+0x18a>) LC1 = P1;
ffa0325a:	68 98       	R0 = B[P5++] (X);
ffa0325c:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa03260:	40 98       	R0 = B[P0++] (X);
ffa03262:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa03266:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa03268:	17 32       	P2 = R7;
ffa0326a:	50 99       	R0 = B[P2] (X);
ffa0326c:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa03270:	10 91       	R0 = [P2];
ffa03272:	40 4e       	R0 >>= 0x8;
ffa03274:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa03278:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa0327c:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa03280:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa03284:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa03288:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa0328c:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa03290:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa03294:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa03298:	f3 b0       	[SP + 0xc] = R3;
ffa0329a:	ff e3 13 f3 	CALL 0xffa018c0 <_FormatIPAddress>;
ffa0329e:	98 b2       	[P3 + 0x28] = R0;
ffa032a0:	ff e3 b0 f4 	CALL 0xffa01c00 <_bfin_EMAC_send_nocopy>;
ffa032a4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa032a6:	29 2f       	JUMP.S 0xffa030f8 <_ARP_rx+0x1c>;
ffa032a8:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa032ac:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa032b0:	01 08       	CC = R1 == R0;
ffa032b2:	50 17       	IF !CC JUMP 0xffa03152 <_ARP_rx+0x76> (BP);
ffa032b4:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa032b8:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa032bc:	01 08       	CC = R1 == R0;
ffa032be:	4a 17       	IF !CC JUMP 0xffa03152 <_ARP_rx+0x76> (BP);
ffa032c0:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa032c4:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa032c8:	01 08       	CC = R1 == R0;
ffa032ca:	44 17       	IF !CC JUMP 0xffa03152 <_ARP_rx+0x76> (BP);
ffa032cc:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa032d0:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa032d4:	01 08       	CC = R1 == R0;
ffa032d6:	3e 17       	IF !CC JUMP 0xffa03152 <_ARP_rx+0x76> (BP);
ffa032d8:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa032dc:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa032e0:	01 08       	CC = R1 == R0;
ffa032e2:	38 17       	IF !CC JUMP 0xffa03152 <_ARP_rx+0x76> (BP);
ffa032e4:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa032e6:	44 30       	R0 = P4;
ffa032e8:	ff e3 b6 f3 	CALL 0xffa01a54 <_pack4chars>;
ffa032ec:	38 30       	R7 = R0;
ffa032ee:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa032f2:	0f 30       	R1 = R7;
ffa032f4:	00 e1 fc 04 	R0.L = 0x4fc;		/* (1276)	R0=0xff9004fc(-7338756) */
ffa032f8:	ff e3 92 f0 	CALL 0xffa0141c <_printf_ip>;
ffa032fc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004fc(-7338756) */
ffa03300:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa03304:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa03306:	ff e3 27 ef 	CALL 0xffa01154 <_printf_str>;
ffa0330a:	07 30       	R0 = R7;
ffa0330c:	4c 30       	R1 = P4;
ffa0330e:	ff e3 81 fe 	CALL 0xffa03010 <_ARP_lut_add>;
ffa03312:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03314:	f2 2e       	JUMP.S 0xffa030f8 <_ARP_rx+0x1c>;
	...

ffa03318 <_ARP_tx>:
ffa03318:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0331a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa0331e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03322:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa03326:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa0332a:	10 95 00 00 
ffa0332e:	10 32       	P2 = R0;
ffa03330:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa03334:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa03338:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa0333a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ed4 <_NetOurMAC> */
ffa0333e:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03340:	52 91       	P2 = [P2];
ffa03342:	0d e1 d4 0e 	P5.L = 0xed4;		/* (3796)	P5=0xff900ed4 <_NetOurMAC> */
ffa03346:	94 ad       	P4 = [P2 + 0x18];
ffa03348:	20 97       	W[P4] = R0;
ffa0334a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0334c:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa03350:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa03354:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa03358:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa0335c:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa03360:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa03364:	68 99       	R0 = B[P5] (X);
ffa03366:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa0336a:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa0336e:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa03372:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa03376:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa0337a:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa0337e:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa03382:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa03386:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa0338a:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa0338e:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa03392:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa03396:	ff e3 3f f3 	CALL 0xffa01a14 <_htons>;
ffa0339a:	e0 b5       	W[P4 + 0xe] = R0;
ffa0339c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0339e:	ff e3 3b f3 	CALL 0xffa01a14 <_htons>;
ffa033a2:	20 b6       	W[P4 + 0x10] = R0;
ffa033a4:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa033a8:	ff e3 36 f3 	CALL 0xffa01a14 <_htons>;
ffa033ac:	60 b6       	W[P4 + 0x12] = R0;
ffa033ae:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa033b0:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa033b4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa033b6:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa033ba:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa033bc:	ff e3 2c f3 	CALL 0xffa01a14 <_htons>;
ffa033c0:	e0 b6       	W[P4 + 0x16] = R0;
ffa033c2:	54 32       	P2 = P4;
ffa033c4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa033c6:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa033c8:	b2 e0 07 10 	LSETUP(0xffa033cc <_ARP_tx+0xb4>, 0xffa033d6 <_ARP_tx+0xbe>) LC1 = P1;
ffa033cc:	68 98       	R0 = B[P5++] (X);
ffa033ce:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa033d2:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa033d6:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa033d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa033dc:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa033e0:	50 99       	R0 = B[P2] (X);
ffa033e2:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa033e6:	10 91       	R0 = [P2];
ffa033e8:	40 4e       	R0 >>= 0x8;
ffa033ea:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa033ee:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa033f2:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa033f6:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa033fa:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa033fe:	a7 b2       	[P4 + 0x28] = R7;
ffa03400:	01 e8 00 00 	UNLINK;
ffa03404:	bc 05       	(R7:7, P5:4) = [SP++];
ffa03406:	ff e2 fd f3 	JUMP.L 0xffa01c00 <_bfin_EMAC_send_nocopy>;
	...

ffa0340c <_ARP_req>:
ffa0340c:	ec 05       	[--SP] = (R7:5, P5:4);
ffa0340e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03412:	38 30       	R7 = R0;
ffa03414:	ff e3 3e fe 	CALL 0xffa03090 <_ARP_lu>;
ffa03418:	00 0c       	CC = R0 == 0x0;
ffa0341a:	50 10       	IF !CC JUMP 0xffa034ba <_ARP_req+0xae>;
ffa0341c:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800ee0 */
ffa03420:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa03424:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900ec0 <_rxIdx> */
ffa03428:	16 91       	R6 = [P2];
ffa0342a:	0c e1 ec 0e 	P4.L = 0xeec;		/* (3820)	P4=0xff900eec <_NetArpLut> */
ffa0342e:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa03432:	4c 32       	P1 = P4;
ffa03434:	46 51       	R5 = R6 + R0;
ffa03436:	6c 32       	P5 = P4;
ffa03438:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa0343a:	b2 e0 06 20 	LSETUP(0xffa0343e <_ARP_req+0x32>, 0xffa03446 <_ARP_req+0x3a>) LC1 = P2;
ffa0343e:	08 91       	R0 = [P1];
ffa03440:	07 08       	CC = R7 == R0;
ffa03442:	21 18       	IF CC JUMP 0xffa03484 <_ARP_req+0x78>;
ffa03444:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa03446:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa03448:	ff e3 be fd 	CALL 0xffa02fc4 <_ARP_lut_find>;
ffa0344c:	10 32       	P2 = R0;
ffa0344e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03450:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa03454:	09 e1 e8 0e 	P1.L = 0xee8;		/* (3816)	P1=0xff900ee8 <_NetArpLut_age> */
ffa03458:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa0345a:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa0345c:	10 b1       	[P2 + 0x10] = R0;
ffa0345e:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa03462:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa03466:	17 93 00 00 
ffa0346a:	d0 b0       	[P2 + 0xc] = R0;
ffa0346c:	48 95       	R0 = W[P1] (X);
ffa0346e:	08 64       	R0 += 0x1;		/* (  1) */
ffa03470:	08 97       	W[P1] = R0;
ffa03472:	50 b5       	W[P2 + 0xa] = R0;
ffa03474:	07 30       	R0 = R7;
ffa03476:	ff e3 51 ff 	CALL 0xffa03318 <_ARP_tx>;
ffa0347a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0347c:	01 e8 00 00 	UNLINK;
ffa03480:	ac 05       	(R7:5, P5:4) = [SP++];
ffa03482:	10 00       	RTS;
ffa03484:	08 a1       	R0 = [P1 + 0x10];
ffa03486:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa03488:	de 1f       	IF CC JUMP 0xffa03444 <_ARP_req+0x38> (BP);
ffa0348a:	e8 a0       	R0 = [P5 + 0xc];
ffa0348c:	86 09       	CC = R6 < R0 (IU);
ffa0348e:	f6 1f       	IF CC JUMP 0xffa0347a <_ARP_req+0x6e> (BP);
ffa03490:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03494:	0f 30       	R1 = R7;
ffa03496:	00 e1 20 05 	R0.L = 0x520;		/* (1312)	R0=0xff900520(-7338720) */
ffa0349a:	ff e3 c1 ef 	CALL 0xffa0141c <_printf_ip>;
ffa0349e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900520(-7338720) */
ffa034a2:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa034a6:	ff e3 57 ee 	CALL 0xffa01154 <_printf_str>;
ffa034aa:	07 30       	R0 = R7;
ffa034ac:	ff e3 36 ff 	CALL 0xffa03318 <_ARP_tx>;
ffa034b0:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa034b4:	ed b0 00 00 
ffa034b8:	e2 2f       	JUMP.S 0xffa0347c <_ARP_req+0x70>;
ffa034ba:	01 e8 00 00 	UNLINK;
ffa034be:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034c0:	ac 05       	(R7:5, P5:4) = [SP++];
ffa034c2:	10 00       	RTS;

ffa034c4 <_tcp_length>:
ffa034c4:	c5 04       	[--SP] = (P5:5);
ffa034c6:	28 32       	P5 = R0;
ffa034c8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa034cc:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa034ce:	ff e3 a3 f2 	CALL 0xffa01a14 <_htons>;
ffa034d2:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa034d6:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa034d8:	51 54       	R1 = R1 & R2;
ffa034da:	11 4f       	R1 <<= 0x2;
ffa034dc:	c0 42       	R0 = R0.L (Z);
ffa034de:	08 52       	R0 = R0 - R1;
ffa034e0:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa034e4:	11 4d       	R1 >>>= 0x2;
ffa034e6:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa034e8:	51 54       	R1 = R1 & R2;
ffa034ea:	01 e8 00 00 	UNLINK;
ffa034ee:	08 52       	R0 = R0 - R1;
ffa034f0:	85 04       	(P5:5) = [SP++];
ffa034f2:	10 00       	RTS;

ffa034f4 <_tcp_checksum_calc>:
ffa034f4:	08 32       	P1 = R0;
ffa034f6:	ed 05       	[--SP] = (R7:5, P5:5);
ffa034f8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa034fc:	28 32       	P5 = R0;
ffa034fe:	31 30       	R6 = R1;
ffa03500:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa03502:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa03504:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa03506:	b2 e0 03 20 	LSETUP(0xffa0350a <_tcp_checksum_calc+0x16>, 0xffa0350c <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa0350a:	08 94       	R0 = W[P1++] (Z);
ffa0350c:	45 51       	R5 = R5 + R0;
ffa0350e:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03512:	10 4e       	R0 >>= 0x2;
ffa03514:	06 50       	R0 = R6 + R0;
ffa03516:	c0 42       	R0 = R0.L (Z);
ffa03518:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa0351c:	ff e3 7c f2 	CALL 0xffa01a14 <_htons>;
ffa03520:	47 4f       	R7 <<= 0x8;
ffa03522:	c0 42       	R0 = R0.L (Z);
ffa03524:	c7 51       	R7 = R7 + R0;
ffa03526:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa03528:	ef 50       	R3 = R7 + R5;
ffa0352a:	0d 1c       	IF CC JUMP 0xffa03544 <_tcp_checksum_calc+0x50> (BP);
ffa0352c:	0e 32       	P1 = R6;
ffa0352e:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03532:	10 4e       	R0 >>= 0x2;
ffa03534:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa03536:	0e 64       	R6 += 0x1;		/* (  1) */
ffa03538:	a9 5a       	P2 = P1 + P5;
ffa0353a:	08 32       	P1 = R0;
ffa0353c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0353e:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa03540:	8a 5a       	P2 = P2 + P1;
ffa03542:	10 9b       	B[P2] = R0;
ffa03544:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa03548:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0354a:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa0354e:	71 50       	R1 = R1 + R6;
ffa03550:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03554:	09 4d       	R1 >>>= 0x1;
ffa03556:	18 4e       	R0 >>= 0x3;
ffa03558:	41 50       	R1 = R1 + R0;
ffa0355a:	01 0d       	CC = R1 <= 0x0;
ffa0355c:	09 18       	IF CC JUMP 0xffa0356e <_tcp_checksum_calc+0x7a>;
ffa0355e:	55 32       	P2 = P5;
ffa03560:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa03562:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa03564:	0a 64       	R2 += 0x1;		/* (  1) */
ffa03566:	10 94       	R0 = W[P2++] (Z);
ffa03568:	0a 08       	CC = R2 == R1;
ffa0356a:	c3 50       	R3 = R3 + R0;
ffa0356c:	fc 17       	IF !CC JUMP 0xffa03564 <_tcp_checksum_calc+0x70> (BP);
ffa0356e:	d8 42       	R0 = R3.L (Z);
ffa03570:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa03574:	08 50       	R0 = R0 + R1;
ffa03576:	c0 43       	R0 =~ R0;
ffa03578:	01 e8 00 00 	UNLINK;
ffa0357c:	c0 42       	R0 = R0.L (Z);
ffa0357e:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03580:	10 00       	RTS;
	...

ffa03584 <_tcp_checksum_set>:
ffa03584:	c5 04       	[--SP] = (P5:5);
ffa03586:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa0358a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0358e:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa03592:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa03596:	10 95 00 00 
ffa0359a:	10 32       	P2 = R0;
ffa0359c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900ee8 <_NetArpLut_age> */
ffa035a0:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa035a4:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa035a6:	52 91       	P2 = [P2];
ffa035a8:	95 ad       	P5 = [P2 + 0x18];
ffa035aa:	45 30       	R0 = P5;
ffa035ac:	ff e3 a4 ff 	CALL 0xffa034f4 <_tcp_checksum_calc>;
ffa035b0:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa035b4:	01 e8 00 00 	UNLINK;
ffa035b8:	85 04       	(P5:5) = [SP++];
ffa035ba:	10 00       	RTS;

ffa035bc <_tcp_checksum_check>:
ffa035bc:	10 32       	P2 = R0;
ffa035be:	78 05       	[--SP] = (R7:7);
ffa035c0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa035c4:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa035c8:	ff e3 96 ff 	CALL 0xffa034f4 <_tcp_checksum_calc>;
ffa035cc:	0f 30       	R1 = R7;
ffa035ce:	c7 42       	R7 = R0.L (Z);
ffa035d0:	39 08       	CC = R1 == R7;
ffa035d2:	19 18       	IF CC JUMP 0xffa03604 <_tcp_checksum_check+0x48>;
ffa035d4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa035d8:	00 e1 40 05 	R0.L = 0x540;		/* (1344)	R0=0xff900540(-7338688) */
ffa035dc:	ff e3 22 ee 	CALL 0xffa01220 <_printf_hex>;
ffa035e0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900540(-7338688) */
ffa035e4:	0f 30       	R1 = R7;
ffa035e6:	00 e1 5c 05 	R0.L = 0x55c;		/* (1372)	R0=0xff90055c(-7338660) */
ffa035ea:	ff e3 1b ee 	CALL 0xffa01220 <_printf_hex>;
ffa035ee:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90055c(-7338660) */
ffa035f2:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa035f6:	ff e3 af ed 	CALL 0xffa01154 <_printf_str>;
ffa035fa:	01 e8 00 00 	UNLINK;
ffa035fe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03600:	38 05       	(R7:7) = [SP++];
ffa03602:	10 00       	RTS;
ffa03604:	01 e8 00 00 	UNLINK;
ffa03608:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0360a:	38 05       	(R7:7) = [SP++];
ffa0360c:	10 00       	RTS;
	...

ffa03610 <_tcp_packet_setup>:
ffa03610:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03612:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03616:	29 32       	P5 = R1;
ffa03618:	7f 30       	R7 = FP;
ffa0361a:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa0361c:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0361e:	f0 bb       	[FP -0x4] = R0;
ffa03620:	07 30       	R0 = R7;
ffa03622:	2a 30       	R5 = R2;
ffa03624:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa03628:	ff e3 66 f6 	CALL 0xffa022f4 <_eth_header_setup>;
ffa0362c:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa03630:	68 99 00 00 
ffa03634:	80 0c       	CC = R0 < 0x0;
ffa03636:	14 18       	IF CC JUMP 0xffa0365e <_tcp_packet_setup+0x4e>;
ffa03638:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0363a:	f0 b0       	[SP + 0xc] = R0;
ffa0363c:	15 30       	R2 = R5;
ffa0363e:	01 30       	R0 = R1;
ffa03640:	0f 30       	R1 = R7;
ffa03642:	ff e3 1d f2 	CALL 0xffa01a7c <_ip_header_setup>;
ffa03646:	b9 a2       	R1 = [FP + 0x28];
ffa03648:	f1 b0       	[SP + 0xc] = R1;
ffa0364a:	f9 a2       	R1 = [FP + 0x2c];
ffa0364c:	31 b1       	[SP + 0x10] = R1;
ffa0364e:	72 43       	R2 = R6.B (Z);
ffa03650:	0f 30       	R1 = R7;
ffa03652:	ff e3 a7 f2 	CALL 0xffa01ba0 <_tcp_header_setup>;
ffa03656:	01 e8 00 00 	UNLINK;
ffa0365a:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0365c:	10 00       	RTS;
ffa0365e:	01 e8 00 00 	UNLINK;
ffa03662:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03664:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03666:	10 00       	RTS;

ffa03668 <_tcp_burst>:
ffa03668:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0366a:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa0366e:	78 b2       	[FP + 0x24] = R0;
ffa03670:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 */
ffa03674:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa03678:	7a a2       	R2 = [FP + 0x24];
ffa0367a:	0b e1 d4 0f 	P3.L = 0xfd4;		/* (4052)	P3=0xff900fd4 <_g_httpHeaderLen> */
ffa0367e:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa03682:	02 0d       	CC = R2 <= 0x0;
ffa03684:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa03688:	10 91 00 00 
ffa0368c:	19 91       	R1 = [P3];
ffa0368e:	7e 18       	IF CC JUMP 0xffa0378a <_tcp_burst+0x122>;
ffa03690:	41 50       	R1 = R1 + R0;
ffa03692:	8f 09       	CC = R7 < R1 (IU);
ffa03694:	21 32       	P4 = R1;
ffa03696:	7a 10       	IF !CC JUMP 0xffa0378a <_tcp_burst+0x122>;
ffa03698:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa0369a:	38 20       	JUMP.S 0xffa0370a <_tcp_burst+0xa2>;
ffa0369c:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa0369e:	18 91       	R0 = [P3];
ffa036a0:	07 52       	R0 = R7 - R0;
ffa036a2:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa036a6:	08 50       	R0 = R0 + R1;
ffa036a8:	16 30       	R2 = R6;
ffa036aa:	0d 30       	R1 = R5;
ffa036ac:	ff e3 fc ee 	CALL 0xffa014a4 <_memcpy_>;
ffa036b0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900eb0 <_txbuf> */
ffa036b4:	09 e1 c0 0f 	P1.L = 0xfc0;		/* (4032)	P1=0xff900fc0 <_TcpSeqHttpStart> */
ffa036b8:	08 91       	R0 = [P1];
ffa036ba:	f7 51       	R7 = R7 + R6;
ffa036bc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd8 <_g_httpContentLen> */
ffa036c0:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa036c4:	07 50       	R0 = R7 + R0;
ffa036c6:	10 93       	[P2] = R0;
ffa036c8:	26 50       	R0 = R6 + R4;
ffa036ca:	ff e3 5d ff 	CALL 0xffa03584 <_tcp_checksum_set>;
ffa036ce:	ff e3 99 f2 	CALL 0xffa01c00 <_bfin_EMAC_send_nocopy>;
ffa036d2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa036d6:	0a e1 c0 0e 	P2.L = 0xec0;		/* (3776)	P2=0xff900ec0 <_rxIdx> */
ffa036da:	10 95       	R0 = W[P2] (Z);
ffa036dc:	10 32       	P2 = R0;
ffa036de:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900fc0 <_TcpSeqHttpStart> */
ffa036e2:	09 e1 c4 0e 	P1.L = 0xec4;		/* (3780)	P1=0xff900ec4 <_rxbuf> */
ffa036e6:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa036e8:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa036ea:	52 91       	P2 = [P2];
ffa036ec:	90 a2       	R0 = [P2 + 0x28];
ffa036ee:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa036f0:	07 1c       	IF CC JUMP 0xffa036fe <_tcp_burst+0x96> (BP);
ffa036f2:	90 a2       	R0 = [P2 + 0x28];
ffa036f4:	4d 30       	R1 = P5;
ffa036f6:	7a a2       	R2 = [FP + 0x24];
ffa036f8:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa036fa:	11 50       	R0 = R1 + R2;
ffa036fc:	a8 06       	IF !CC P5 = R0;
ffa036fe:	79 ae       	P1 = [FP + 0x24];
ffa03700:	69 09       	CC = P1 <= P5;
ffa03702:	45 18       	IF CC JUMP 0xffa0378c <_tcp_burst+0x124>;
ffa03704:	44 30       	R0 = P4;
ffa03706:	87 09       	CC = R7 < R0 (IU);
ffa03708:	42 10       	IF !CC JUMP 0xffa0378c <_tcp_burst+0x124>;
ffa0370a:	44 30       	R0 = P4;
ffa0370c:	b8 52       	R2 = R0 - R7;
ffa0370e:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa03712:	0a 09       	CC = R2 <= R1;
ffa03714:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03716:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa03718:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900ec4 <_rxbuf> */
ffa0371c:	08 06       	IF !CC R1 = R0;
ffa0371e:	09 e1 c0 0f 	P1.L = 0xfc0;		/* (4032)	P1=0xff900fc0 <_TcpSeqHttpStart> */
ffa03722:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa03726:	07 cc 10 4c 	R6 = MIN (R2, R0) || R0 = [P1] || NOP;
ffa0372a:	08 91 00 00 
ffa0372e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ec0 <_rxIdx> */
ffa03732:	07 50       	R0 = R7 + R0;
ffa03734:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03738:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900fc0 <_TcpSeqHttpStart> */
ffa0373c:	10 93       	[P2] = R0;
ffa0373e:	09 e1 bc 0f 	P1.L = 0xfbc;		/* (4028)	P1=0xff900fbc <_TcpSeqClient> */
ffa03742:	f1 b0       	[SP + 0xc] = R1;
ffa03744:	30 b1       	[SP + 0x10] = R0;
ffa03746:	08 91       	R0 = [P1];
ffa03748:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa0374c:	70 b1       	[SP + 0x14] = R0;
ffa0374e:	0a e1 a4 0e 	P2.L = 0xea4;		/* (3748)	P2=0xff900ea4 <_NetDestIP> */
ffa03752:	4f 30       	R1 = FP;
ffa03754:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R2 = [P2] || NOP;
ffa03758:	12 91 00 00 
ffa0375c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0375e:	ff e3 59 ff 	CALL 0xffa03610 <_tcp_packet_setup>;
ffa03762:	28 30       	R5 = R0;
ffa03764:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03768:	00 0d       	CC = R0 <= 0x0;
ffa0376a:	ca 1b       	IF CC JUMP 0xffa036fe <_tcp_burst+0x96>;
ffa0376c:	18 91       	R0 = [P3];
ffa0376e:	38 0a       	CC = R0 <= R7 (IU);
ffa03770:	96 1f       	IF CC JUMP 0xffa0369c <_tcp_burst+0x34> (BP);
ffa03772:	38 53       	R4 = R0 - R7;
ffa03774:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03778:	07 50       	R0 = R7 + R0;
ffa0377a:	0d 30       	R1 = R5;
ffa0377c:	14 30       	R2 = R4;
ffa0377e:	ff e3 93 ee 	CALL 0xffa014a4 <_memcpy_>;
ffa03782:	65 51       	R5 = R5 + R4;
ffa03784:	a6 53       	R6 = R6 - R4;
ffa03786:	e7 51       	R7 = R7 + R4;
ffa03788:	8b 2f       	JUMP.S 0xffa0369e <_tcp_burst+0x36>;
ffa0378a:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa0378c:	01 e8 00 00 	UNLINK;
ffa03790:	45 30       	R0 = P5;
ffa03792:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03794:	10 00       	RTS;
	...

ffa03798 <_tcp_rx>:
ffa03798:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0379a:	20 32       	P4 = R0;
ffa0379c:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa037a0:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa037a4:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa037a6:	ff e3 37 f1 	CALL 0xffa01a14 <_htons>;
ffa037aa:	c0 42       	R0 = R0.L (Z);
ffa037ac:	07 08       	CC = R7 == R0;
ffa037ae:	06 18       	IF CC JUMP 0xffa037ba <_tcp_rx+0x22>;
ffa037b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa037b2:	01 e8 00 00 	UNLINK;
ffa037b6:	a3 05       	(R7:4, P5:3) = [SP++];
ffa037b8:	10 00       	RTS;
ffa037ba:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa037be:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa037c0:	08 08       	CC = R0 == R1;
ffa037c2:	f7 17       	IF !CC JUMP 0xffa037b0 <_tcp_rx+0x18> (BP);
ffa037c4:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa037c8:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa037cc:	ff e3 24 f1 	CALL 0xffa01a14 <_htons>;
ffa037d0:	c0 42       	R0 = R0.L (Z);
ffa037d2:	07 08       	CC = R7 == R0;
ffa037d4:	ee 17       	IF !CC JUMP 0xffa037b0 <_tcp_rx+0x18> (BP);
ffa037d6:	44 30       	R0 = P4;
ffa037d8:	80 64       	R0 += 0x10;		/* ( 16) */
ffa037da:	ff e3 97 f1 	CALL 0xffa01b08 <_ip_header_checksum>;
ffa037de:	40 43       	R0 = R0.B (Z);
ffa037e0:	00 0c       	CC = R0 == 0x0;
ffa037e2:	e7 1f       	IF CC JUMP 0xffa037b0 <_tcp_rx+0x18> (BP);
ffa037e4:	4c 30       	R1 = P4;
ffa037e6:	41 64       	R1 += 0x8;		/* (  8) */
ffa037e8:	e0 a1       	R0 = [P4 + 0x1c];
ffa037ea:	ff e3 13 fc 	CALL 0xffa03010 <_ARP_lut_add>;
ffa037ee:	44 30       	R0 = P4;
ffa037f0:	ff e3 6a fe 	CALL 0xffa034c4 <_tcp_length>;
ffa037f4:	30 30       	R6 = R0;
ffa037f6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa037fa:	0e 30       	R1 = R6;
ffa037fc:	00 e1 6c 05 	R0.L = 0x56c;		/* (1388)	R0=0xff90056c(-7338644) */
ffa03800:	ff e3 6c ed 	CALL 0xffa012d8 <_printf_int>;
ffa03804:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90056c(-7338644) */
ffa03808:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa0380c:	ff e3 a4 ec 	CALL 0xffa01154 <_printf_str>;
ffa03810:	44 30       	R0 = P4;
ffa03812:	0e 30       	R1 = R6;
ffa03814:	ff e3 d4 fe 	CALL 0xffa035bc <_tcp_checksum_check>;
ffa03818:	40 43       	R0 = R0.B (Z);
ffa0381a:	00 0c       	CC = R0 == 0x0;
ffa0381c:	ca 1b       	IF CC JUMP 0xffa037b0 <_tcp_rx+0x18>;
ffa0381e:	00 00       	NOP;
ffa03820:	00 00       	NOP;
ffa03822:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa03824:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03828:	48 43       	R0 = R1.B (Z);
ffa0382a:	10 08       	CC = R0 == R2;
ffa0382c:	f1 18       	IF CC JUMP 0xffa03a0e <_tcp_rx+0x276>;
ffa0382e:	10 0c       	CC = R0 == 0x2;
ffa03830:	0a 19       	IF CC JUMP 0xffa03a44 <_tcp_rx+0x2ac>;
ffa03832:	48 43       	R0 = R1.B (Z);
ffa03834:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03836:	08 08       	CC = R0 == R1;
ffa03838:	85 18       	IF CC JUMP 0xffa03942 <_tcp_rx+0x1aa>;
ffa0383a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0383c:	ab 10       	IF !CC JUMP 0xffa03992 <_tcp_rx+0x1fa>;
ffa0383e:	00 00       	NOP;
ffa03840:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900fd4 <_g_httpHeaderLen> */
ffa03844:	0b e1 c4 0f 	P3.L = 0xfc4;		/* (4036)	P3=0xff900fc4 <_TcpState> */
ffa03848:	00 00       	NOP;
ffa0384a:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa0384e:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa03850:	38 10       	IF !CC JUMP 0xffa038c0 <_tcp_rx+0x128>;
ffa03852:	18 91       	R0 = [P3];
ffa03854:	10 0c       	CC = R0 == 0x2;
ffa03856:	ad 17       	IF !CC JUMP 0xffa037b0 <_tcp_rx+0x18> (BP);
ffa03858:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900000 <_l1_data_a>(-7340032) */
ffa0385c:	a0 a2       	R0 = [P4 + 0x28];
ffa0385e:	04 e1 a4 0e 	R4.L = 0xea4;		/* (3748)	R4=0xff900ea4 <_NetDestIP>(-7336284) */
ffa03862:	a5 e5 30 00 	R5 = B[P4 + 0x30] (X);
ffa03866:	ff e3 e3 f0 	CALL 0xffa01a2c <_htonl>;
ffa0386a:	14 32       	P2 = R4;
ffa0386c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa03870:	30 50       	R0 = R0 + R6;
ffa03872:	0d e1 bc 0f 	P5.L = 0xfbc;		/* (4028)	P5=0xff900fbc <_TcpSeqClient> */
ffa03876:	28 93       	[P5] = R0;
ffa03878:	e0 a1       	R0 = [P4 + 0x1c];
ffa0387a:	10 93       	[P2] = R0;
ffa0387c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900fc4 <_TcpState> */
ffa03880:	e0 a2       	R0 = [P4 + 0x2c];
ffa03882:	0b e1 c0 0f 	P3.L = 0xfc0;		/* (4032)	P3=0xff900fc0 <_TcpSeqHttpStart> */
ffa03886:	ff e3 d3 f0 	CALL 0xffa01a2c <_htonl>;
ffa0388a:	19 91       	R1 = [P3];
ffa0388c:	c8 53       	R7 = R0 - R1;
ffa0388e:	a1 e4 31 00 	R1 = B[P4 + 0x31] (Z);
ffa03892:	21 48       	CC = !BITTST (R1, 0x4);		/* bit  4 */
ffa03894:	1e 1d       	IF CC JUMP 0xffa03ad0 <_tcp_rx+0x338> (BP);
ffa03896:	06 0c       	CC = R6 == 0x0;
ffa03898:	1c 15       	IF !CC JUMP 0xffa03ad0 <_tcp_rx+0x338> (BP);
ffa0389a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea4 <_NetDestIP> */
ffa0389e:	0a e1 d4 0f 	P2.L = 0xfd4;		/* (4052)	P2=0xff900fd4 <_g_httpHeaderLen> */
ffa038a2:	10 91       	R0 = [P2];
ffa038a4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd4 <_g_httpHeaderLen> */
ffa038a8:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa038ac:	11 91       	R1 = [P2];
ffa038ae:	08 50       	R0 = R0 + R1;
ffa038b0:	07 08       	CC = R7 == R0;
ffa038b2:	46 18       	IF CC JUMP 0xffa0393e <_tcp_rx+0x1a6>;
ffa038b4:	0f 30       	R1 = R7;
ffa038b6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa038b8:	ff e3 d8 fe 	CALL 0xffa03668 <_tcp_burst>;
ffa038bc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa038be:	7a 2f       	JUMP.S 0xffa037b2 <_tcp_rx+0x1a>;
ffa038c0:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa038c2:	1f 91       	R7 = [P3];
ffa038c4:	07 08       	CC = R7 == R0;
ffa038c6:	85 19       	IF CC JUMP 0xffa03bd0 <_tcp_rx+0x438>;
ffa038c8:	07 0c       	CC = R7 == 0x0;
ffa038ca:	c4 17       	IF !CC JUMP 0xffa03852 <_tcp_rx+0xba> (BP);
ffa038cc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa038d0:	00 e1 e8 05 	R0.L = 0x5e8;		/* (1512)	R0=0xff9005e8(-7338520) */
ffa038d4:	ff e3 40 ec 	CALL 0xffa01154 <_printf_str>;
ffa038d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd8 <_g_httpContentLen> */
ffa038dc:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_g_httpRxed> */
ffa038e0:	17 93       	[P2] = R7;
ffa038e2:	a0 a2       	R0 = [P4 + 0x28];
ffa038e4:	ff e3 a4 f0 	CALL 0xffa01a2c <_htonl>;
ffa038e8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fdc <_g_httpRxed> */
ffa038ec:	0a e1 bc 0f 	P2.L = 0xfbc;		/* (4028)	P2=0xff900fbc <_TcpSeqClient> */
ffa038f0:	10 93       	[P2] = R0;
ffa038f2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fbc <_TcpSeqClient> */
ffa038f6:	e2 a1       	R2 = [P4 + 0x1c];
ffa038f8:	0a e1 a4 0e 	P2.L = 0xea4;		/* (3748)	P2=0xff900ea4 <_NetDestIP> */
ffa038fc:	12 93       	[P2] = R2;
ffa038fe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea4 <_NetDestIP> */
ffa03902:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03906:	0a e1 d0 0f 	P2.L = 0xfd0;		/* (4048)	P2=0xff900fd0 <_TcpClientPort> */
ffa0390a:	11 97       	W[P2] = R1;
ffa0390c:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa0390e:	f1 b0       	[SP + 0xc] = R1;
ffa03910:	4f 30       	R1 = FP;
ffa03912:	30 b1       	[SP + 0x10] = R0;
ffa03914:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03916:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa0391a:	77 b1 00 00 
ffa0391e:	ff e3 79 fe 	CALL 0xffa03610 <_tcp_packet_setup>;
ffa03922:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03926:	00 0d       	CC = R0 <= 0x0;
ffa03928:	95 1b       	IF CC JUMP 0xffa03852 <_tcp_rx+0xba>;
ffa0392a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd0 <_TcpClientPort> */
ffa0392e:	0a e1 c4 0f 	P2.L = 0xfc4;		/* (4036)	P2=0xff900fc4 <_TcpState> */
ffa03932:	17 93       	[P2] = R7;
ffa03934:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03936:	ff e3 27 fe 	CALL 0xffa03584 <_tcp_checksum_set>;
ffa0393a:	ff e3 63 f1 	CALL 0xffa01c00 <_bfin_EMAC_send_nocopy>;
ffa0393e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03940:	39 2f       	JUMP.S 0xffa037b2 <_tcp_rx+0x1a>;
ffa03942:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900fc0 <_TcpSeqHttpStart> */
ffa03946:	0b e1 c4 0f 	P3.L = 0xfc4;		/* (4036)	P3=0xff900fc4 <_TcpState> */
ffa0394a:	18 91       	R0 = [P3];
ffa0394c:	08 0c       	CC = R0 == 0x1;
ffa0394e:	b9 17       	IF !CC JUMP 0xffa038c0 <_tcp_rx+0x128> (BP);
ffa03950:	e0 a2       	R0 = [P4 + 0x2c];
ffa03952:	ff e3 6d f0 	CALL 0xffa01a2c <_htonl>;
ffa03956:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc4 <_TcpState> */
ffa0395a:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa0395e:	11 91       	R1 = [P2];
ffa03960:	08 08       	CC = R0 == R1;
ffa03962:	42 19       	IF CC JUMP 0xffa03be6 <_tcp_rx+0x44e>;
ffa03964:	00 00       	NOP;
ffa03966:	00 00       	NOP;
ffa03968:	00 00       	NOP;
ffa0396a:	e0 a2       	R0 = [P4 + 0x2c];
ffa0396c:	ff e3 60 f0 	CALL 0xffa01a2c <_htonl>;
ffa03970:	08 30       	R1 = R0;
ffa03972:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03976:	00 e1 98 05 	R0.L = 0x598;		/* (1432)	R0=0xff900598(-7338600) */
ffa0397a:	ff e3 51 ed 	CALL 0xffa0141c <_printf_ip>;
ffa0397e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03980:	18 93       	[P3] = R0;
ffa03982:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03986:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa0398a:	ff e3 e5 eb 	CALL 0xffa01154 <_printf_str>;
ffa0398e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03990:	11 2f       	JUMP.S 0xffa037b2 <_tcp_rx+0x1a>;
ffa03992:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03996:	00 e1 c4 05 	R0.L = 0x5c4;		/* (1476)	R0=0xff9005c4(-7338556) */
ffa0399a:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900ea4 <_NetDestIP>(-7336284) */
ffa0399e:	ff e3 db eb 	CALL 0xffa01154 <_printf_str>;
ffa039a2:	04 e1 a4 0e 	R4.L = 0xea4;		/* (3748)	R4=0xff900ea4 <_NetDestIP>(-7336284) */
ffa039a6:	a0 a2       	R0 = [P4 + 0x28];
ffa039a8:	ff e3 42 f0 	CALL 0xffa01a2c <_htonl>;
ffa039ac:	14 32       	P2 = R4;
ffa039ae:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fbc <_TcpSeqClient> */
ffa039b2:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900fc4 <_TcpState> */
ffa039b6:	0d e1 bc 0f 	P5.L = 0xfbc;		/* (4028)	P5=0xff900fbc <_TcpSeqClient> */
ffa039ba:	0b e1 c4 0f 	P3.L = 0xfc4;		/* (4036)	P3=0xff900fc4 <_TcpState> */
ffa039be:	28 93       	[P5] = R0;
ffa039c0:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa039c4:	18 91 00 00 
ffa039c8:	e2 a1       	R2 = [P4 + 0x1c];
ffa039ca:	09 64       	R1 += 0x1;		/* (  1) */
ffa039cc:	10 0c       	CC = R0 == 0x2;
ffa039ce:	12 93       	[P2] = R2;
ffa039d0:	29 93       	[P5] = R1;
ffa039d2:	03 18       	IF CC JUMP 0xffa039d8 <_tcp_rx+0x240>;
ffa039d4:	00 0c       	CC = R0 == 0x0;
ffa039d6:	c0 14       	IF !CC JUMP 0xffa03b56 <_tcp_rx+0x3be> (BP);
ffa039d8:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa039da:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa039de:	f0 b0       	[SP + 0xc] = R0;
ffa039e0:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa039e4:	10 91       	R0 = [P2];
ffa039e6:	71 b1       	[SP + 0x14] = R1;
ffa039e8:	4f 30       	R1 = FP;
ffa039ea:	30 b1       	[SP + 0x10] = R0;
ffa039ec:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa039ee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa039f0:	ff e3 10 fe 	CALL 0xffa03610 <_tcp_packet_setup>;
ffa039f4:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa039f8:	00 0d       	CC = R0 <= 0x0;
ffa039fa:	ae 18       	IF CC JUMP 0xffa03b56 <_tcp_rx+0x3be>;
ffa039fc:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa039fe:	18 93       	[P3] = R0;
ffa03a00:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a02:	ff e3 c1 fd 	CALL 0xffa03584 <_tcp_checksum_set>;
ffa03a06:	ff e3 fd f0 	CALL 0xffa01c00 <_bfin_EMAC_send_nocopy>;
ffa03a0a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03a0c:	d3 2e       	JUMP.S 0xffa037b2 <_tcp_rx+0x1a>;
ffa03a0e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03a12:	00 e1 80 05 	R0.L = 0x580;		/* (1408)	R0=0xff900580(-7338624) */
ffa03a16:	ff e3 9f eb 	CALL 0xffa01154 <_printf_str>;
ffa03a1a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03a1e:	0a e1 c4 0f 	P2.L = 0xfc4;		/* (4036)	P2=0xff900fc4 <_TcpState> */
ffa03a22:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03a24:	17 93       	[P2] = R7;
ffa03a26:	a0 a2       	R0 = [P4 + 0x28];
ffa03a28:	ff e3 02 f0 	CALL 0xffa01a2c <_htonl>;
ffa03a2c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc4 <_TcpState> */
ffa03a30:	0a e1 bc 0f 	P2.L = 0xfbc;		/* (4028)	P2=0xff900fbc <_TcpSeqClient> */
ffa03a34:	10 93       	[P2] = R0;
ffa03a36:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fbc <_TcpSeqClient> */
ffa03a3a:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_g_httpRxed> */
ffa03a3e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03a40:	17 93       	[P2] = R7;
ffa03a42:	b8 2e       	JUMP.S 0xffa037b2 <_tcp_rx+0x1a>;
ffa03a44:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03a48:	00 e1 8c 05 	R0.L = 0x58c;		/* (1420)	R0=0xff90058c(-7338612) */
ffa03a4c:	ff e3 84 eb 	CALL 0xffa01154 <_printf_str>;
ffa03a50:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fbc <_TcpSeqClient> */
ffa03a54:	a0 a2       	R0 = [P4 + 0x28];
ffa03a56:	ff e3 eb ef 	CALL 0xffa01a2c <_htonl>;
ffa03a5a:	0d e1 bc 0f 	P5.L = 0xfbc;		/* (4028)	P5=0xff900fbc <_TcpSeqClient> */
ffa03a5e:	28 93       	[P5] = R0;
ffa03a60:	44 30       	R0 = P4;
ffa03a62:	ff e3 31 fd 	CALL 0xffa034c4 <_tcp_length>;
ffa03a66:	29 91       	R1 = [P5];
ffa03a68:	09 64       	R1 += 0x1;		/* (  1) */
ffa03a6a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fdc <_g_httpRxed> */
ffa03a6e:	08 50       	R0 = R0 + R1;
ffa03a70:	0a e1 d0 0f 	P2.L = 0xfd0;		/* (4048)	P2=0xff900fd0 <_TcpClientPort> */
ffa03a74:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03a78:	11 97       	W[P2] = R1;
ffa03a7a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd0 <_TcpClientPort> */
ffa03a7e:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa03a82:	28 93 00 00 
ffa03a86:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_g_httpRxed> */
ffa03a8a:	11 93       	[P2] = R1;
ffa03a8c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fdc <_g_httpRxed> */
ffa03a90:	e2 a1       	R2 = [P4 + 0x1c];
ffa03a92:	0a e1 a4 0e 	P2.L = 0xea4;		/* (3748)	P2=0xff900ea4 <_NetDestIP> */
ffa03a96:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa03a98:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fbc <_TcpSeqClient> */
ffa03a9c:	12 93       	[P2] = R2;
ffa03a9e:	0d e1 b8 0f 	P5.L = 0xfb8;		/* (4024)	P5=0xff900fb8 <_TcpSeqHost> */
ffa03aa2:	f1 b0       	[SP + 0xc] = R1;
ffa03aa4:	29 91       	R1 = [P5];
ffa03aa6:	31 b1       	[SP + 0x10] = R1;
ffa03aa8:	4f 30       	R1 = FP;
ffa03aaa:	70 b1       	[SP + 0x14] = R0;
ffa03aac:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03aae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ab0:	ff e3 b0 fd 	CALL 0xffa03610 <_tcp_packet_setup>;
ffa03ab4:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03ab8:	00 0d       	CC = R0 <= 0x0;
ffa03aba:	93 18       	IF CC JUMP 0xffa03be0 <_tcp_rx+0x448>;
ffa03abc:	28 91       	R0 = [P5];
ffa03abe:	08 64       	R0 += 0x1;		/* (  1) */
ffa03ac0:	28 93       	[P5] = R0;
ffa03ac2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03ac4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea4 <_NetDestIP> */
ffa03ac8:	0a e1 c4 0f 	P2.L = 0xfc4;		/* (4036)	P2=0xff900fc4 <_TcpState> */
ffa03acc:	10 93       	[P2] = R0;
ffa03ace:	33 2f       	JUMP.S 0xffa03934 <_tcp_rx+0x19c>;
ffa03ad0:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa03ad4:	28 54       	R0 = R0 & R5;
ffa03ad6:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa03ad8:	10 4d       	R0 >>>= 0x2;
ffa03ada:	54 30       	R2 = P4;
ffa03adc:	19 48       	CC = !BITTST (R1, 0x3);		/* bit  3 */
ffa03ade:	02 50       	R0 = R2 + R0;
ffa03ae0:	5d 1c       	IF CC JUMP 0xffa03b9a <_tcp_rx+0x402> (BP);
ffa03ae2:	0e 30       	R1 = R6;
ffa03ae4:	00 e3 16 05 	CALL 0xffa04510 <_httpCollate>;
ffa03ae8:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fb8 <_TcpSeqHost> */
ffa03aec:	18 91       	R0 = [P3];
ffa03aee:	07 50       	R0 = R7 + R0;
ffa03af0:	0d e1 b8 0f 	P5.L = 0xfb8;		/* (4024)	P5=0xff900fb8 <_TcpSeqHost> */
ffa03af4:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900eec <_NetArpLut> */
ffa03af8:	28 93       	[P5] = R0;
ffa03afa:	0c e1 dc 0f 	P4.L = 0xfdc;		/* (4060)	P4=0xff900fdc <_g_httpRxed> */
ffa03afe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03b00:	80 4f       	R0 <<= 0x10;
ffa03b02:	21 91       	R1 = [P4];
ffa03b04:	00 e3 dc 02 	CALL 0xffa040bc <_httpResp>;
ffa03b08:	00 0c       	CC = R0 == 0x0;
ffa03b0a:	22 1c       	IF CC JUMP 0xffa03b4e <_tcp_rx+0x3b6> (BP);
ffa03b0c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc4 <_TcpState> */
ffa03b10:	28 91       	R0 = [P5];
ffa03b12:	0a e1 c0 0f 	P2.L = 0xfc0;		/* (4032)	P2=0xff900fc0 <_TcpSeqHttpStart> */
ffa03b16:	10 93       	[P2] = R0;
ffa03b18:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc0 <_TcpSeqHttpStart> */
ffa03b1c:	0a e1 d4 0f 	P2.L = 0xfd4;		/* (4052)	P2=0xff900fd4 <_g_httpHeaderLen> */
ffa03b20:	11 91       	R1 = [P2];
ffa03b22:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd4 <_g_httpHeaderLen> */
ffa03b26:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa03b2a:	10 91       	R0 = [P2];
ffa03b2c:	41 50       	R1 = R1 + R0;
ffa03b2e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03b32:	00 e1 04 06 	R0.L = 0x604;		/* (1540)	R0=0xff900604(-7338492) */
ffa03b36:	ff e3 d1 eb 	CALL 0xffa012d8 <_printf_int>;
ffa03b3a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900604(-7338492) */
ffa03b3e:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa03b42:	ff e3 09 eb 	CALL 0xffa01154 <_printf_str>;
ffa03b46:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03b48:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03b4a:	ff e3 8f fd 	CALL 0xffa03668 <_tcp_burst>;
ffa03b4e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b50:	20 93       	[P4] = R0;
ffa03b52:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03b54:	2f 2e       	JUMP.S 0xffa037b2 <_tcp_rx+0x1a>;
ffa03b56:	18 91       	R0 = [P3];
ffa03b58:	18 0c       	CC = R0 == 0x3;
ffa03b5a:	77 16       	IF !CC JUMP 0xffa03848 <_tcp_rx+0xb0> (BP);
ffa03b5c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd8 <_g_httpContentLen> */
ffa03b60:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b62:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_g_httpRxed> */
ffa03b66:	10 93       	[P2] = R0;
ffa03b68:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03b6a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fdc <_g_httpRxed> */
ffa03b6e:	f0 b0       	[SP + 0xc] = R0;
ffa03b70:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03b74:	10 91       	R0 = [P2];
ffa03b76:	14 32       	P2 = R4;
ffa03b78:	30 b1       	[SP + 0x10] = R0;
ffa03b7a:	28 91       	R0 = [P5];
ffa03b7c:	70 b1       	[SP + 0x14] = R0;
ffa03b7e:	4f 30       	R1 = FP;
ffa03b80:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03b84:	12 91 00 00 
ffa03b88:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03b8a:	ff e3 43 fd 	CALL 0xffa03610 <_tcp_packet_setup>;
ffa03b8e:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03b92:	00 0d       	CC = R0 <= 0x0;
ffa03b94:	5a 1a       	IF CC JUMP 0xffa03848 <_tcp_rx+0xb0>;
ffa03b96:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03b98:	96 2f       	JUMP.S 0xffa03ac4 <_tcp_rx+0x32c>;
ffa03b9a:	0e 30       	R1 = R6;
ffa03b9c:	00 e3 ba 04 	CALL 0xffa04510 <_httpCollate>;
ffa03ba0:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03ba2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03ba6:	f0 b0       	[SP + 0xc] = R0;
ffa03ba8:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03bac:	10 91       	R0 = [P2];
ffa03bae:	14 32       	P2 = R4;
ffa03bb0:	30 b1       	[SP + 0x10] = R0;
ffa03bb2:	28 91       	R0 = [P5];
ffa03bb4:	70 b1       	[SP + 0x14] = R0;
ffa03bb6:	4f 30       	R1 = FP;
ffa03bb8:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03bbc:	12 91 00 00 
ffa03bc0:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03bc2:	ff e3 27 fd 	CALL 0xffa03610 <_tcp_packet_setup>;
ffa03bc6:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03bca:	00 0d       	CC = R0 <= 0x0;
ffa03bcc:	b4 16       	IF !CC JUMP 0xffa03934 <_tcp_rx+0x19c> (BP);
ffa03bce:	f1 2d       	JUMP.S 0xffa037b0 <_tcp_rx+0x18>;
ffa03bd0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa03bd4:	00 e1 d4 05 	R0.L = 0x5d4;		/* (1492)	R0=0xff9005d4(-7338540) */
ffa03bd8:	ff e3 be ea 	CALL 0xffa01154 <_printf_str>;
ffa03bdc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03bde:	ea 2d       	JUMP.S 0xffa037b2 <_tcp_rx+0x1a>;
ffa03be0:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03be4:	27 2e       	JUMP.S 0xffa03832 <_tcp_rx+0x9a>;
ffa03be6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03be8:	18 93       	[P3] = R0;
ffa03bea:	a0 a2       	R0 = [P4 + 0x28];
ffa03bec:	ff e3 20 ef 	CALL 0xffa01a2c <_htonl>;
ffa03bf0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03bf4:	0a e1 bc 0f 	P2.L = 0xfbc;		/* (4028)	P2=0xff900fbc <_TcpSeqClient> */
ffa03bf8:	10 93       	[P2] = R0;
ffa03bfa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa03bfe:	00 e1 b4 05 	R0.L = 0x5b4;		/* (1460)	R0=0xff9005b4(-7338572) */
ffa03c02:	ff e3 a9 ea 	CALL 0xffa01154 <_printf_str>;
ffa03c06:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03c08:	d5 2d       	JUMP.S 0xffa037b2 <_tcp_rx+0x1a>;
	...

ffa03c0c <_htmlForm>:
ffa03c0c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03c10:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa03c14:	02 e1 20 06 	R2.L = 0x620;		/* (1568)	R2=0xff900620(-7338464) */
ffa03c18:	01 e8 00 00 	UNLINK;
ffa03c1c:	ff e2 74 ec 	JUMP.L 0xffa01504 <_strcpy_>;

ffa03c20 <_htmlDiv>:
ffa03c20:	12 43       	R2 = R2.B (X);
ffa03c22:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa03c26:	1a 08       	CC = R2 == R3;
ffa03c28:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03c2c:	09 18       	IF CC JUMP 0xffa03c3e <_htmlDiv+0x1e>;
ffa03c2e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900620(-7338464) */
ffa03c32:	02 e1 74 06 	R2.L = 0x674;		/* (1652)	R2=0xff900674(-7338380) */
ffa03c36:	01 e8 00 00 	UNLINK;
ffa03c3a:	ff e2 65 ec 	JUMP.L 0xffa01504 <_strcpy_>;
ffa03c3e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900674(-7338380) */
ffa03c42:	02 e1 40 06 	R2.L = 0x640;		/* (1600)	R2=0xff900640(-7338432) */
ffa03c46:	01 e8 00 00 	UNLINK;
ffa03c4a:	ff e2 5d ec 	JUMP.L 0xffa01504 <_strcpy_>;
	...

ffa03c50 <_html404>:
ffa03c50:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03c54:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c56:	4f 30       	R1 = FP;
ffa03c58:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900640(-7338432) */
ffa03c5c:	f0 bb       	[FP -0x4] = R0;
ffa03c5e:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03c60:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03c64:	02 e1 a8 06 	R2.L = 0x6a8;		/* (1704)	R2=0xff9006a8(-7338328) */
ffa03c68:	ff e3 4e ec 	CALL 0xffa01504 <_strcpy_>;
ffa03c6c:	f0 b9       	R0 = [FP -0x4];
ffa03c6e:	01 e8 00 00 	UNLINK;
ffa03c72:	10 00       	RTS;

ffa03c74 <_htmlCursorOption>:
ffa03c74:	68 05       	[--SP] = (R7:5);
ffa03c76:	2a 30       	R5 = R2;
ffa03c78:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006a8(-7338328) */
ffa03c7c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03c80:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa03c84:	3f a2 00 00 
ffa03c88:	02 e1 c4 06 	R2.L = 0x6c4;		/* (1732)	R2=0xff9006c4(-7338300) */
ffa03c8c:	ff e3 3c ec 	CALL 0xffa01504 <_strcpy_>;
ffa03c90:	0e 30       	R1 = R6;
ffa03c92:	15 30       	R2 = R5;
ffa03c94:	ff e3 9e ed 	CALL 0xffa017d0 <_strprintf_int>;
ffa03c98:	3d 08       	CC = R5 == R7;
ffa03c9a:	16 18       	IF CC JUMP 0xffa03cc6 <_htmlCursorOption+0x52>;
ffa03c9c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c4(-7338300) */
ffa03ca0:	0e 30       	R1 = R6;
ffa03ca2:	02 e1 ec 06 	R2.L = 0x6ec;		/* (1772)	R2=0xff9006ec(-7338260) */
ffa03ca6:	ff e3 2f ec 	CALL 0xffa01504 <_strcpy_>;
ffa03caa:	0e 30       	R1 = R6;
ffa03cac:	15 30       	R2 = R5;
ffa03cae:	ff e3 91 ed 	CALL 0xffa017d0 <_strprintf_int>;
ffa03cb2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006ec(-7338260) */
ffa03cb6:	01 e8 00 00 	UNLINK;
ffa03cba:	0e 30       	R1 = R6;
ffa03cbc:	02 e1 f0 06 	R2.L = 0x6f0;		/* (1776)	R2=0xff9006f0(-7338256) */
ffa03cc0:	28 05       	(R7:5) = [SP++];
ffa03cc2:	ff e2 21 ec 	JUMP.L 0xffa01504 <_strcpy_>;
ffa03cc6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006f0(-7338256) */
ffa03cca:	0e 30       	R1 = R6;
ffa03ccc:	02 e1 d4 06 	R2.L = 0x6d4;		/* (1748)	R2=0xff9006d4(-7338284) */
ffa03cd0:	ff e3 1a ec 	CALL 0xffa01504 <_strcpy_>;
ffa03cd4:	e4 2f       	JUMP.S 0xffa03c9c <_htmlCursorOption+0x28>;
	...

ffa03cd8 <_htmlCursorSelect>:
ffa03cd8:	60 05       	[--SP] = (R7:4);
ffa03cda:	3a 30       	R7 = R2;
ffa03cdc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006d4(-7338284) */
ffa03ce0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03ce4:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa03ce8:	7e a2 00 00 
ffa03cec:	02 e1 fc 06 	R2.L = 0x6fc;		/* (1788)	R2=0xff9006fc(-7338244) */
ffa03cf0:	bc a2       	R4 = [FP + 0x28];
ffa03cf2:	ff e3 09 ec 	CALL 0xffa01504 <_strcpy_>;
ffa03cf6:	17 30       	R2 = R7;
ffa03cf8:	0d 30       	R1 = R5;
ffa03cfa:	ff e3 05 ec 	CALL 0xffa01504 <_strcpy_>;
ffa03cfe:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006fc(-7338244) */
ffa03d02:	0d 30       	R1 = R5;
ffa03d04:	02 e1 08 07 	R2.L = 0x708;		/* (1800)	R2=0xff900708(-7338232) */
ffa03d08:	ff e3 fe eb 	CALL 0xffa01504 <_strcpy_>;
ffa03d0c:	0d 30       	R1 = R5;
ffa03d0e:	16 30       	R2 = R6;
ffa03d10:	ff e3 fa eb 	CALL 0xffa01504 <_strcpy_>;
ffa03d14:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900708(-7338232) */
ffa03d18:	0d 30       	R1 = R5;
ffa03d1a:	02 e1 24 07 	R2.L = 0x724;		/* (1828)	R2=0xff900724(-7338204) */
ffa03d1e:	ff e3 f3 eb 	CALL 0xffa01504 <_strcpy_>;
ffa03d22:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03d24:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa03d28:	f4 b0 00 00 
ffa03d2c:	17 30       	R2 = R7;
ffa03d2e:	ff e3 a3 ff 	CALL 0xffa03c74 <_htmlCursorOption>;
ffa03d32:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03d34:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03d36:	0f 08       	CC = R7 == R1;
ffa03d38:	f6 17       	IF !CC JUMP 0xffa03d24 <_htmlCursorSelect+0x4c> (BP);
ffa03d3a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900724(-7338204) */
ffa03d3e:	01 e8 00 00 	UNLINK;
ffa03d42:	0d 30       	R1 = R5;
ffa03d44:	02 e1 28 07 	R2.L = 0x728;		/* (1832)	R2=0xff900728(-7338200) */
ffa03d48:	20 05       	(R7:4) = [SP++];
ffa03d4a:	ff e2 dd eb 	JUMP.L 0xffa01504 <_strcpy_>;
	...

ffa03d50 <_htmlDefault>:
ffa03d50:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03d52:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03d56:	77 30       	R6 = FP;
ffa03d58:	e6 67       	R6 += -0x4;		/* ( -4) */
ffa03d5a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d5c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900728(-7338200) */
ffa03d60:	f0 bb       	[FP -0x4] = R0;
ffa03d62:	0e 30       	R1 = R6;
ffa03d64:	02 e1 40 07 	R2.L = 0x740;		/* (1856)	R2=0xff900740(-7338176) */
ffa03d68:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03d6c:	ff e3 cc eb 	CALL 0xffa01504 <_strcpy_>;
ffa03d70:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03d74:	0e 30       	R1 = R6;
ffa03d76:	ff e3 55 ff 	CALL 0xffa03c20 <_htmlDiv>;
ffa03d7a:	0e 30       	R1 = R6;
ffa03d7c:	ff e3 48 ff 	CALL 0xffa03c0c <_htmlForm>;
ffa03d80:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03d84:	0e 30       	R1 = R6;
ffa03d86:	02 e1 90 07 	R2.L = 0x790;		/* (1936)	R2=0xff900790(-7338096) */
ffa03d8a:	ff e3 bd eb 	CALL 0xffa01504 <_strcpy_>;
ffa03d8e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fbc <_TcpSeqClient> */
ffa03d92:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_g_streamEnabled> */
ffa03d96:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03d9a:	10 99 00 00 
ffa03d9e:	00 0c       	CC = R0 == 0x0;
ffa03da0:	2c 1d       	IF CC JUMP 0xffa03ff8 <_htmlDefault+0x2a8> (BP);
ffa03da2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900790(-7338096) */
ffa03da6:	01 30       	R0 = R1;
ffa03da8:	02 e1 e0 07 	R2.L = 0x7e0;		/* (2016)	R2=0xff9007e0(-7338016) */
ffa03dac:	0e 30       	R1 = R6;
ffa03dae:	ff e3 ab eb 	CALL 0xffa01504 <_strcpy_>;
ffa03db2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007e0(-7338016) */
ffa03db6:	0e 30       	R1 = R6;
ffa03db8:	02 e1 f8 07 	R2.L = 0x7f8;		/* (2040)	R2=0xff9007f8(-7337992) */
ffa03dbc:	ff e3 a4 eb 	CALL 0xffa01504 <_strcpy_>;
ffa03dc0:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03dc4:	0e 30       	R1 = R6;
ffa03dc6:	ff e3 2d ff 	CALL 0xffa03c20 <_htmlDiv>;
ffa03dca:	0e 30       	R1 = R6;
ffa03dcc:	ff e3 20 ff 	CALL 0xffa03c0c <_htmlForm>;
ffa03dd0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03dd4:	0e 30       	R1 = R6;
ffa03dd6:	02 e1 0c 08 	R2.L = 0x80c;		/* (2060)	R2=0xff90080c(-7337972) */
ffa03dda:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fb8 <_TcpSeqHost> */
ffa03dde:	ff e3 93 eb 	CALL 0xffa01504 <_strcpy_>;
ffa03de2:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03de4:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa03de6:	0d e1 e4 0e 	P5.L = 0xee4;		/* (3812)	P5=0xff900ee4 <_NetDataDestIP> */
ffa03dea:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90080c(-7337972) */
ffa03dee:	0e 30       	R1 = R6;
ffa03df0:	02 e1 28 08 	R2.L = 0x828;		/* (2088)	R2=0xff900828(-7337944) */
ffa03df4:	ff e3 88 eb 	CALL 0xffa01504 <_strcpy_>;
ffa03df8:	17 30       	R2 = R7;
ffa03dfa:	0e 30       	R1 = R6;
ffa03dfc:	ff e3 ea ec 	CALL 0xffa017d0 <_strprintf_int>;
ffa03e00:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900828(-7337944) */
ffa03e04:	0e 30       	R1 = R6;
ffa03e06:	02 e1 44 08 	R2.L = 0x844;		/* (2116)	R2=0xff900844(-7337916) */
ffa03e0a:	ff e3 7d eb 	CALL 0xffa01504 <_strcpy_>;
ffa03e0e:	2a 91       	R2 = [P5];
ffa03e10:	6a 40       	R2 >>= R5;
ffa03e12:	52 43       	R2 = R2.B (Z);
ffa03e14:	0e 30       	R1 = R6;
ffa03e16:	ff e3 dd ec 	CALL 0xffa017d0 <_strprintf_int>;
ffa03e1a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900844(-7337916) */
ffa03e1e:	0e 30       	R1 = R6;
ffa03e20:	02 e1 58 08 	R2.L = 0x858;		/* (2136)	R2=0xff900858(-7337896) */
ffa03e24:	ff e3 70 eb 	CALL 0xffa01504 <_strcpy_>;
ffa03e28:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03e2a:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03e2c:	0f 08       	CC = R7 == R1;
ffa03e2e:	45 64       	R5 += 0x8;		/* (  8) */
ffa03e30:	dd 17       	IF !CC JUMP 0xffa03dea <_htmlDefault+0x9a> (BP);
ffa03e32:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900858(-7337896) */
ffa03e36:	0e 30       	R1 = R6;
ffa03e38:	02 e1 60 08 	R2.L = 0x860;		/* (2144)	R2=0xff900860(-7337888) */
ffa03e3c:	ff e3 64 eb 	CALL 0xffa01504 <_strcpy_>;
ffa03e40:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900860(-7337888) */
ffa03e44:	0e 30       	R1 = R6;
ffa03e46:	02 e1 f8 07 	R2.L = 0x7f8;		/* (2040)	R2=0xff9007f8(-7337992) */
ffa03e4a:	ff e3 5d eb 	CALL 0xffa01504 <_strcpy_>;
ffa03e4e:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03e52:	0e 30       	R1 = R6;
ffa03e54:	ff e3 e6 fe 	CALL 0xffa03c20 <_htmlDiv>;
ffa03e58:	0e 30       	R1 = R6;
ffa03e5a:	ff e3 d9 fe 	CALL 0xffa03c0c <_htmlForm>;
ffa03e5e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03e62:	0e 30       	R1 = R6;
ffa03e64:	02 e1 84 08 	R2.L = 0x884;		/* (2180)	R2=0xff900884(-7337852) */
ffa03e68:	ff e3 4e eb 	CALL 0xffa01504 <_strcpy_>;
ffa03e6c:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c34 */
ffa03e70:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03e74:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03e78:	10 99 00 00 
ffa03e7c:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03e7e:	c6 1c       	IF CC JUMP 0xffa0400a <_htmlDefault+0x2ba> (BP);
ffa03e80:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900884(-7337852) */
ffa03e84:	01 30       	R0 = R1;
ffa03e86:	02 e1 ec 07 	R2.L = 0x7ec;		/* (2028)	R2=0xff9007ec(-7338004) */
ffa03e8a:	0e 30       	R1 = R6;
ffa03e8c:	ff e3 3c eb 	CALL 0xffa01504 <_strcpy_>;
ffa03e90:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007ec(-7338004) */
ffa03e94:	0e 30       	R1 = R6;
ffa03e96:	02 e1 f8 07 	R2.L = 0x7f8;		/* (2040)	R2=0xff9007f8(-7337992) */
ffa03e9a:	ff e3 35 eb 	CALL 0xffa01504 <_strcpy_>;
ffa03e9e:	0e 30       	R1 = R6;
ffa03ea0:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03ea4:	ff e3 be fe 	CALL 0xffa03c20 <_htmlDiv>;
ffa03ea8:	0e 30       	R1 = R6;
ffa03eaa:	ff e3 b1 fe 	CALL 0xffa03c0c <_htmlForm>;
ffa03eae:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03eb2:	0e 30       	R1 = R6;
ffa03eb4:	02 e1 c4 08 	R2.L = 0x8c4;		/* (2244)	R2=0xff9008c4(-7337788) */
ffa03eb8:	ff e3 26 eb 	CALL 0xffa01504 <_strcpy_>;
ffa03ebc:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa03ec0:	01 e1 f4 08 	R1.L = 0x8f4;		/* (2292)	R1=0xff9008f4(-7337740) */
ffa03ec4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008c4(-7337788) */
ffa03ec8:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa03ecc:	f1 b0 00 00 
ffa03ed0:	02 e1 e8 08 	R2.L = 0x8e8;		/* (2280)	R2=0xff9008e8(-7337752) */
ffa03ed4:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03ed8:	37 b1 00 00 
ffa03edc:	ff e3 fe fe 	CALL 0xffa03cd8 <_htmlCursorSelect>;
ffa03ee0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008f4(-7337740) */
ffa03ee4:	01 e1 0c 09 	R1.L = 0x90c;		/* (2316)	R1=0xff90090c(-7337716) */
ffa03ee8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008e8(-7337752) */
ffa03eec:	f1 b0       	[SP + 0xc] = R1;
ffa03eee:	02 e1 00 09 	R2.L = 0x900;		/* (2304)	R2=0xff900900(-7337728) */
ffa03ef2:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03ef6:	37 b1 00 00 
ffa03efa:	ff e3 ef fe 	CALL 0xffa03cd8 <_htmlCursorSelect>;
ffa03efe:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff90090c(-7337716) */
ffa03f02:	01 e1 24 09 	R1.L = 0x924;		/* (2340)	R1=0xff900924(-7337692) */
ffa03f06:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900900(-7337728) */
ffa03f0a:	f1 b0       	[SP + 0xc] = R1;
ffa03f0c:	02 e1 18 09 	R2.L = 0x918;		/* (2328)	R2=0xff900918(-7337704) */
ffa03f10:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03f14:	37 b1 00 00 
ffa03f18:	ff e3 e0 fe 	CALL 0xffa03cd8 <_htmlCursorSelect>;
ffa03f1c:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900924(-7337692) */
ffa03f20:	01 e1 38 09 	R1.L = 0x938;		/* (2360)	R1=0xff900938(-7337672) */
ffa03f24:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900918(-7337704) */
ffa03f28:	f1 b0       	[SP + 0xc] = R1;
ffa03f2a:	02 e1 30 09 	R2.L = 0x930;		/* (2352)	R2=0xff900930(-7337680) */
ffa03f2e:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03f32:	37 b1 00 00 
ffa03f36:	ff e3 d1 fe 	CALL 0xffa03cd8 <_htmlCursorSelect>;
ffa03f3a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900930(-7337680) */
ffa03f3e:	0e 30       	R1 = R6;
ffa03f40:	02 e1 44 09 	R2.L = 0x944;		/* (2372)	R2=0xff900944(-7337660) */
ffa03f44:	ff e3 e0 ea 	CALL 0xffa01504 <_strcpy_>;
ffa03f48:	0e 30       	R1 = R6;
ffa03f4a:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03f4e:	ff e3 69 fe 	CALL 0xffa03c20 <_htmlDiv>;
ffa03f52:	0e 30       	R1 = R6;
ffa03f54:	ff e3 5c fe 	CALL 0xffa03c0c <_htmlForm>;
ffa03f58:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03f5c:	0e 30       	R1 = R6;
ffa03f5e:	02 e1 80 09 	R2.L = 0x980;		/* (2432)	R2=0xff900980(-7337600) */
ffa03f62:	ff e3 d1 ea 	CALL 0xffa01504 <_strcpy_>;
ffa03f66:	0e 30       	R1 = R6;
ffa03f68:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03f6c:	ff e3 5a fe 	CALL 0xffa03c20 <_htmlDiv>;
ffa03f70:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03f74:	0e 30       	R1 = R6;
ffa03f76:	02 e1 d8 09 	R2.L = 0x9d8;		/* (2520)	R2=0xff9009d8(-7337512) */
ffa03f7a:	ff e3 c5 ea 	CALL 0xffa01504 <_strcpy_>;
ffa03f7e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009d8(-7337512) */
ffa03f82:	0e 30       	R1 = R6;
ffa03f84:	02 e1 00 0a 	R2.L = 0xa00;		/* (2560)	R2=0xff900a00(-7337472) */
ffa03f88:	ff e3 be ea 	CALL 0xffa01504 <_strcpy_>;
ffa03f8c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a00(-7337472) */
ffa03f90:	0e 30       	R1 = R6;
ffa03f92:	02 e1 f8 07 	R2.L = 0x7f8;		/* (2040)	R2=0xff9007f8(-7337992) */
ffa03f96:	ff e3 b7 ea 	CALL 0xffa01504 <_strcpy_>;
ffa03f9a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007f8(-7337992) */
ffa03f9e:	0e 30       	R1 = R6;
ffa03fa0:	02 e1 48 0a 	R2.L = 0xa48;		/* (2632)	R2=0xff900a48(-7337400) */
ffa03fa4:	ff e3 b0 ea 	CALL 0xffa01504 <_strcpy_>;
ffa03fa8:	0e 30       	R1 = R6;
ffa03faa:	22 e1 75 ff 	R2 = -0x8b (X);		/*		R2=0xffffff75(-139) */
ffa03fae:	ff e3 11 ec 	CALL 0xffa017d0 <_strprintf_int>;
ffa03fb2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ff75(-7274635) */
ffa03fb6:	0e 30       	R1 = R6;
ffa03fb8:	02 e1 b0 00 	R2.L = 0xb0;		/* (176)	R2=0xff9000b0(-7339856) */
ffa03fbc:	ff e3 a4 ea 	CALL 0xffa01504 <_strcpy_>;
ffa03fc0:	0e 30       	R1 = R6;
ffa03fc2:	92 62       	R2 = -0x2e (X);		/*		R2=0xffffffd2(-46) */
ffa03fc4:	ff e3 06 ec 	CALL 0xffa017d0 <_strprintf_int>;
ffa03fc8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ffd2(-7274542) */
ffa03fcc:	0e 30       	R1 = R6;
ffa03fce:	02 e1 88 00 	R2.L = 0x88;		/* (136)	R2=0xff900088(-7339896) */
ffa03fd2:	ff e3 99 ea 	CALL 0xffa01504 <_strcpy_>;
ffa03fd6:	0e 30       	R1 = R6;
ffa03fd8:	22 e1 d0 fd 	R2 = -0x230 (X);		/*		R2=0xfffffdd0(-560) */
ffa03fdc:	ff e3 fa eb 	CALL 0xffa017d0 <_strprintf_int>;
ffa03fe0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90fdd0(-7275056) */
ffa03fe4:	0e 30       	R1 = R6;
ffa03fe6:	02 e1 54 0a 	R2.L = 0xa54;		/* (2644)	R2=0xff900a54(-7337388) */
ffa03fea:	ff e3 8d ea 	CALL 0xffa01504 <_strcpy_>;
ffa03fee:	f0 b9       	R0 = [FP -0x4];
ffa03ff0:	01 e8 00 00 	UNLINK;
ffa03ff4:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03ff6:	10 00       	RTS;
ffa03ff8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a54(-7337388) */
ffa03ffc:	01 30       	R0 = R1;
ffa03ffe:	02 e1 ec 07 	R2.L = 0x7ec;		/* (2028)	R2=0xff9007ec(-7338004) */
ffa04002:	0e 30       	R1 = R6;
ffa04004:	ff e3 80 ea 	CALL 0xffa01504 <_strcpy_>;
ffa04008:	d5 2e       	JUMP.S 0xffa03db2 <_htmlDefault+0x62>;
ffa0400a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007ec(-7338004) */
ffa0400e:	01 30       	R0 = R1;
ffa04010:	02 e1 e0 07 	R2.L = 0x7e0;		/* (2016)	R2=0xff9007e0(-7338016) */
ffa04014:	0e 30       	R1 = R6;
ffa04016:	ff e3 77 ea 	CALL 0xffa01504 <_strcpy_>;
ffa0401a:	3b 2f       	JUMP.S 0xffa03e90 <_htmlDefault+0x140>;

ffa0401c <_httpHeader>:
ffa0401c:	78 05       	[--SP] = (R7:7);
ffa0401e:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa04022:	7f 30       	R7 = FP;
ffa04024:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa04026:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04028:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007e0(-7338016) */
ffa0402c:	f0 bb       	[FP -0x4] = R0;
ffa0402e:	0f 30       	R1 = R7;
ffa04030:	02 e1 6c 0a 	R2.L = 0xa6c;		/* (2668)	R2=0xff900a6c(-7337364) */
ffa04034:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa04038:	ff e3 66 ea 	CALL 0xffa01504 <_strcpy_>;
ffa0403c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a6c(-7337364) */
ffa04040:	0f 30       	R1 = R7;
ffa04042:	02 e1 80 0a 	R2.L = 0xa80;		/* (2688)	R2=0xff900a80(-7337344) */
ffa04046:	ff e3 5f ea 	CALL 0xffa01504 <_strcpy_>;
ffa0404a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a80(-7337344) */
ffa0404e:	0f 30       	R1 = R7;
ffa04050:	02 e1 94 0a 	R2.L = 0xa94;		/* (2708)	R2=0xff900a94(-7337324) */
ffa04054:	ff e3 58 ea 	CALL 0xffa01504 <_strcpy_>;
ffa04058:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa0405c:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa04060:	12 91       	R2 = [P2];
ffa04062:	0f 30       	R1 = R7;
ffa04064:	ff e3 b6 eb 	CALL 0xffa017d0 <_strprintf_int>;
ffa04068:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a94(-7337324) */
ffa0406c:	0f 30       	R1 = R7;
ffa0406e:	02 e1 a8 0a 	R2.L = 0xaa8;		/* (2728)	R2=0xff900aa8(-7337304) */
ffa04072:	ff e3 49 ea 	CALL 0xffa01504 <_strcpy_>;
ffa04076:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd8 <_g_httpContentLen> */
ffa0407a:	f0 b9       	R0 = [FP -0x4];
ffa0407c:	0a e1 d4 0f 	P2.L = 0xfd4;		/* (4052)	P2=0xff900fd4 <_g_httpHeaderLen> */
ffa04080:	10 93       	[P2] = R0;
ffa04082:	01 e8 00 00 	UNLINK;
ffa04086:	38 05       	(R7:7) = [SP++];
ffa04088:	10 00       	RTS;
	...

ffa0408c <_htmlGeneric>:
ffa0408c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa04090:	10 30       	R2 = R0;
ffa04092:	4f 30       	R1 = FP;
ffa04094:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04096:	f0 bb       	[FP -0x4] = R0;
ffa04098:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa0409a:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa0409e:	ff e3 33 ea 	CALL 0xffa01504 <_strcpy_>;
ffa040a2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd4 <_g_httpHeaderLen> */
ffa040a6:	f0 b9       	R0 = [FP -0x4];
ffa040a8:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa040ac:	10 93       	[P2] = R0;
ffa040ae:	ff e3 b7 ff 	CALL 0xffa0401c <_httpHeader>;
ffa040b2:	f0 b9       	R0 = [FP -0x4];
ffa040b4:	01 e8 00 00 	UNLINK;
ffa040b8:	10 00       	RTS;
	...

ffa040bc <_httpResp>:
ffa040bc:	60 05       	[--SP] = (R7:4);
ffa040be:	30 30       	R6 = R0;
ffa040c0:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa040c2:	01 09       	CC = R1 <= R0;
ffa040c4:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa040c8:	39 30       	R7 = R1;
ffa040ca:	21 10       	IF !CC JUMP 0xffa0410c <_httpResp+0x50>;
ffa040cc:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa040ce:	0f 09       	CC = R7 <= R1;
ffa040d0:	34 10       	IF !CC JUMP 0xffa04138 <_httpResp+0x7c>;
ffa040d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa040d6:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa040da:	0e 30       	R1 = R6;
ffa040dc:	17 30       	R2 = R7;
ffa040de:	ff e3 81 ea 	CALL 0xffa015e0 <_substr>;
ffa040e2:	00 0c       	CC = R0 == 0x0;
ffa040e4:	06 10       	IF !CC JUMP 0xffa040f0 <_httpResp+0x34>;
ffa040e6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa040e8:	01 e8 00 00 	UNLINK;
ffa040ec:	20 05       	(R7:4) = [SP++];
ffa040ee:	10 00       	RTS;
ffa040f0:	ff e3 b0 fd 	CALL 0xffa03c50 <_html404>;
ffa040f4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd8 <_g_httpContentLen> */
ffa040f8:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa040fc:	10 93       	[P2] = R0;
ffa040fe:	ff e3 8f ff 	CALL 0xffa0401c <_httpHeader>;
ffa04102:	01 e8 00 00 	UNLINK;
ffa04106:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04108:	20 05       	(R7:4) = [SP++];
ffa0410a:	10 00       	RTS;
ffa0410c:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa04110:	06 30       	R0 = R6;
ffa04112:	01 e1 c8 0a 	R1.L = 0xac8;		/* (2760)	R1=0xff900ac8(-7337272) */
ffa04116:	ff e3 37 ea 	CALL 0xffa01584 <_strcmp>;
ffa0411a:	00 0c       	CC = R0 == 0x0;
ffa0411c:	d8 1f       	IF CC JUMP 0xffa040cc <_httpResp+0x10> (BP);
ffa0411e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa04122:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa04126:	0e 30       	R1 = R6;
ffa04128:	17 30       	R2 = R7;
ffa0412a:	ff e3 5b ea 	CALL 0xffa015e0 <_substr>;
ffa0412e:	00 0c       	CC = R0 == 0x0;
ffa04130:	db 1f       	IF CC JUMP 0xffa040e6 <_httpResp+0x2a> (BP);
ffa04132:	ff e3 0f fe 	CALL 0xffa03d50 <_htmlDefault>;
ffa04136:	df 2f       	JUMP.S 0xffa040f4 <_httpResp+0x38>;
ffa04138:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa0413c:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa04140:	0e 30       	R1 = R6;
ffa04142:	17 30       	R2 = R7;
ffa04144:	ff e3 4e ea 	CALL 0xffa015e0 <_substr>;
ffa04148:	00 0c       	CC = R0 == 0x0;
ffa0414a:	3c 1c       	IF CC JUMP 0xffa041c2 <_httpResp+0x106> (BP);
ffa0414c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ad4(-7337260) */
ffa04150:	00 e1 e0 0a 	R0.L = 0xae0;		/* (2784)	R0=0xff900ae0(-7337248) */
ffa04154:	0e 30       	R1 = R6;
ffa04156:	17 30       	R2 = R7;
ffa04158:	ff e3 44 ea 	CALL 0xffa015e0 <_substr>;
ffa0415c:	00 0c       	CC = R0 == 0x0;
ffa0415e:	c4 1f       	IF CC JUMP 0xffa040e6 <_httpResp+0x2a> (BP);
ffa04160:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa04162:	06 50       	R0 = R6 + R0;
ffa04164:	ff e3 5e eb 	CALL 0xffa01820 <_atoi>;
ffa04168:	08 30       	R1 = R0;
ffa0416a:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa0416e:	00 67       	R0 += -0x20;		/* (-32) */
ffa04170:	10 0a       	CC = R0 <= R2 (IU);
ffa04172:	24 11       	IF !CC JUMP 0xffa043ba <_httpResp+0x2fe>;
ffa04174:	82 c6 19 84 	R2 = R1 << 0x3;
ffa04178:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800fd8 */
ffa0417c:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa04180:	02 0d       	CC = R2 <= 0x0;
ffa04182:	13 91       	R3 = [P2];
ffa04184:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa04188:	14 18       	IF CC JUMP 0xffa041b0 <_httpResp+0xf4>;
ffa0418a:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa0418e:	28 4f       	R0 <<= 0x5;
ffa04190:	03 54       	R0 = R3 & R0;
ffa04192:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa04194:	38 52       	R0 = R0 - R7;
ffa04196:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa0419a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0419c:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa041a0:	18 54       	R0 = R0 & R3;
ffa041a2:	10 32       	P2 = R0;
ffa041a4:	09 64       	R1 += 0x1;		/* (  1) */
ffa041a6:	0a 08       	CC = R2 == R1;
ffa041a8:	10 90       	R0 = [P2++];
ffa041aa:	08 92       	[P1++] = R0;
ffa041ac:	42 30       	R0 = P2;
ffa041ae:	f9 17       	IF !CC JUMP 0xffa041a0 <_httpResp+0xe4> (BP);
ffa041b0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900804 */
ffa041b4:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa041b8:	17 93       	[P2] = R7;
ffa041ba:	ff e3 31 ff 	CALL 0xffa0401c <_httpHeader>;
ffa041be:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa041c0:	94 2f       	JUMP.S 0xffa040e8 <_httpResp+0x2c>;
ffa041c2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa041c6:	00 e1 14 0b 	R0.L = 0xb14;		/* (2836)	R0=0xff900b14(-7337196) */
ffa041ca:	0e 30       	R1 = R6;
ffa041cc:	17 30       	R2 = R7;
ffa041ce:	ff e3 09 ea 	CALL 0xffa015e0 <_substr>;
ffa041d2:	00 0c       	CC = R0 == 0x0;
ffa041d4:	7f 1f       	IF CC JUMP 0xffa040d2 <_httpResp+0x16> (BP);
ffa041d6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b14(-7337196) */
ffa041da:	0e 30       	R1 = R6;
ffa041dc:	17 30       	R2 = R7;
ffa041de:	00 e1 14 0b 	R0.L = 0xb14;		/* (2836)	R0=0xff900b14(-7337196) */
ffa041e2:	ff e3 ff e9 	CALL 0xffa015e0 <_substr>;
ffa041e6:	86 51       	R6 = R6 + R0;
ffa041e8:	47 53       	R5 = R7 - R0;
ffa041ea:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b14(-7337196) */
ffa041ee:	00 e1 1c 0b 	R0.L = 0xb1c;		/* (2844)	R0=0xff900b1c(-7337188) */
ffa041f2:	0e 30       	R1 = R6;
ffa041f4:	15 30       	R2 = R5;
ffa041f6:	ff e3 f5 e9 	CALL 0xffa015e0 <_substr>;
ffa041fa:	00 0c       	CC = R0 == 0x0;
ffa041fc:	10 11       	IF !CC JUMP 0xffa0441c <_httpResp+0x360>;
ffa041fe:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa04200:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b1c(-7337188) */
ffa04204:	00 e1 40 0b 	R0.L = 0xb40;		/* (2880)	R0=0xff900b40(-7337152) */
ffa04208:	0e 30       	R1 = R6;
ffa0420a:	15 30       	R2 = R5;
ffa0420c:	ff e3 ea e9 	CALL 0xffa015e0 <_substr>;
ffa04210:	00 0c       	CC = R0 == 0x0;
ffa04212:	e2 10       	IF !CC JUMP 0xffa043d6 <_httpResp+0x31a>;
ffa04214:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b40(-7337152) */
ffa04218:	0e 30       	R1 = R6;
ffa0421a:	00 e1 4c 0b 	R0.L = 0xb4c;		/* (2892)	R0=0xff900b4c(-7337140) */
ffa0421e:	15 30       	R2 = R5;
ffa04220:	ff e3 e0 e9 	CALL 0xffa015e0 <_substr>;
ffa04224:	00 0c       	CC = R0 == 0x0;
ffa04226:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b4c(-7337140) */
ffa0422a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa0422c:	0e 30       	R1 = R6;
ffa0422e:	15 30       	R2 = R5;
ffa04230:	00 e1 58 0b 	R0.L = 0xb58;		/* (2904)	R0=0xff900b58(-7337128) */
ffa04234:	27 06       	IF !CC R4 = R7;
ffa04236:	ff e3 d5 e9 	CALL 0xffa015e0 <_substr>;
ffa0423a:	00 0c       	CC = R0 == 0x0;
ffa0423c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b58(-7337128) */
ffa04240:	0e 30       	R1 = R6;
ffa04242:	15 30       	R2 = R5;
ffa04244:	00 e1 64 0b 	R0.L = 0xb64;		/* (2916)	R0=0xff900b64(-7337116) */
ffa04248:	27 06       	IF !CC R4 = R7;
ffa0424a:	ff e3 cb e9 	CALL 0xffa015e0 <_substr>;
ffa0424e:	00 0c       	CC = R0 == 0x0;
ffa04250:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b64(-7337116) */
ffa04254:	0e 30       	R1 = R6;
ffa04256:	15 30       	R2 = R5;
ffa04258:	00 e1 70 0b 	R0.L = 0xb70;		/* (2928)	R0=0xff900b70(-7337104) */
ffa0425c:	27 06       	IF !CC R4 = R7;
ffa0425e:	ff e3 c1 e9 	CALL 0xffa015e0 <_substr>;
ffa04262:	00 0c       	CC = R0 == 0x0;
ffa04264:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b70(-7337104) */
ffa04268:	00 e1 7c 0b 	R0.L = 0xb7c;		/* (2940)	R0=0xff900b7c(-7337092) */
ffa0426c:	0e 30       	R1 = R6;
ffa0426e:	15 30       	R2 = R5;
ffa04270:	27 06       	IF !CC R4 = R7;
ffa04272:	ff e3 b7 e9 	CALL 0xffa015e0 <_substr>;
ffa04276:	00 0c       	CC = R0 == 0x0;
ffa04278:	15 11       	IF !CC JUMP 0xffa044a2 <_httpResp+0x3e6>;
ffa0427a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b7c(-7337092) */
ffa0427e:	00 e1 84 0b 	R0.L = 0xb84;		/* (2948)	R0=0xff900b84(-7337084) */
ffa04282:	0e 30       	R1 = R6;
ffa04284:	15 30       	R2 = R5;
ffa04286:	ff e3 ad e9 	CALL 0xffa015e0 <_substr>;
ffa0428a:	00 0c       	CC = R0 == 0x0;
ffa0428c:	f6 10       	IF !CC JUMP 0xffa04478 <_httpResp+0x3bc>;
ffa0428e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b84(-7337084) */
ffa04292:	00 e1 8c 0b 	R0.L = 0xb8c;		/* (2956)	R0=0xff900b8c(-7337076) */
ffa04296:	0e 30       	R1 = R6;
ffa04298:	15 30       	R2 = R5;
ffa0429a:	ff e3 a3 e9 	CALL 0xffa015e0 <_substr>;
ffa0429e:	00 0c       	CC = R0 == 0x0;
ffa042a0:	13 11       	IF !CC JUMP 0xffa044c6 <_httpResp+0x40a>;
ffa042a2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b8c(-7337076) */
ffa042a6:	00 e1 94 0b 	R0.L = 0xb94;		/* (2964)	R0=0xff900b94(-7337068) */
ffa042aa:	0e 30       	R1 = R6;
ffa042ac:	15 30       	R2 = R5;
ffa042ae:	ff e3 99 e9 	CALL 0xffa015e0 <_substr>;
ffa042b2:	00 0c       	CC = R0 == 0x0;
ffa042b4:	d1 10       	IF !CC JUMP 0xffa04456 <_httpResp+0x39a>;
ffa042b6:	20 43       	R0 = R4.B (X);
ffa042b8:	00 0c       	CC = R0 == 0x0;
ffa042ba:	3c 17       	IF !CC JUMP 0xffa04132 <_httpResp+0x76> (BP);
ffa042bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b94(-7337068) */
ffa042c0:	00 e1 9c 0b 	R0.L = 0xb9c;		/* (2972)	R0=0xff900b9c(-7337060) */
ffa042c4:	0e 30       	R1 = R6;
ffa042c6:	15 30       	R2 = R5;
ffa042c8:	ff e3 8c e9 	CALL 0xffa015e0 <_substr>;
ffa042cc:	00 0c       	CC = R0 == 0x0;
ffa042ce:	0c 1b       	IF CC JUMP 0xffa040e6 <_httpResp+0x2a>;
ffa042d0:	7f 30       	R7 = FP;
ffa042d2:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa042d6:	57 5a       	P1 = FP + P2;
ffa042d8:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa042da:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa042dc:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa042de:	b2 e0 02 20 	LSETUP(0xffa042e2 <_httpResp+0x226>, 0xffa042e2 <_httpResp+0x226>) LC1 = P2;
ffa042e2:	08 92       	[P1++] = R0;
ffa042e4:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa042e8:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa042ec:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa042f0:	29 4f       	R1 <<= 0x5;
ffa042f2:	10 91       	R0 = [P2];
ffa042f4:	08 54       	R0 = R0 & R1;
ffa042f6:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa042f8:	81 4f       	R1 <<= 0x10;
ffa042fa:	08 50       	R0 = R0 + R1;
ffa042fc:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa042fe:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa04302:	88 54       	R2 = R0 & R1;
ffa04304:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa04308:	b2 e0 12 10 	LSETUP(0xffa0430c <_httpResp+0x250>, 0xffa0432c <_httpResp+0x270>) LC1 = P1;
ffa0430c:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa04310:	97 5a       	P2 = FP + P2;
ffa04312:	02 32       	P0 = R2;
ffa04314:	11 91       	R1 = [P2];
ffa04316:	12 64       	R2 += 0x2;		/* (  2) */
ffa04318:	00 94       	R0 = W[P0++] (Z);
ffa0431a:	41 50       	R1 = R1 + R0;
ffa0431c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0431e:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa04322:	11 92       	[P2++] = R1;
ffa04324:	82 54       	R2 = R2 & R0;
ffa04326:	42 30       	R0 = P2;
ffa04328:	38 08       	CC = R0 == R7;
ffa0432a:	f4 17       	IF !CC JUMP 0xffa04312 <_httpResp+0x256> (BP);
ffa0432c:	00 00       	NOP;
ffa0432e:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa04332:	97 5a       	P2 = FP + P2;
ffa04334:	00 00       	NOP;
ffa04336:	10 91       	R0 = [P2];
ffa04338:	58 4d       	R0 >>>= 0xb;
ffa0433a:	10 92       	[P2++] = R0;
ffa0433c:	4a 30       	R1 = P2;
ffa0433e:	39 08       	CC = R1 == R7;
ffa04340:	fa 17       	IF !CC JUMP 0xffa04334 <_httpResp+0x278> (BP);
ffa04342:	ff e3 07 fd 	CALL 0xffa03d50 <_htmlDefault>;
ffa04346:	68 67       	R0 += -0x13;		/* (-19) */
ffa04348:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa0434c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80(-7336064) */
ffa04350:	f0 bb       	[FP -0x4] = R0;
ffa04352:	02 e1 ac 0b 	R2.L = 0xbac;		/* (2988)	R2=0xff900bac(-7337044) */
ffa04356:	08 50       	R0 = R0 + R1;
ffa04358:	0f 30       	R1 = R7;
ffa0435a:	ff e3 d5 e8 	CALL 0xffa01504 <_strcpy_>;
ffa0435e:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa04362:	f5 b8 00 00 
ffa04366:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bac(-7337044) */
ffa0436a:	0f 30       	R1 = R7;
ffa0436c:	02 e1 b8 0b 	R2.L = 0xbb8;		/* (3000)	R2=0xff900bb8(-7337032) */
ffa04370:	ff e3 ca e8 	CALL 0xffa01504 <_strcpy_>;
ffa04374:	16 30       	R2 = R6;
ffa04376:	0f 30       	R1 = R7;
ffa04378:	ff e3 2c ea 	CALL 0xffa017d0 <_strprintf_int>;
ffa0437c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bb8(-7337032) */
ffa04380:	0f 30       	R1 = R7;
ffa04382:	02 e1 cc 0b 	R2.L = 0xbcc;		/* (3020)	R2=0xff900bcc(-7337012) */
ffa04386:	ff e3 bf e8 	CALL 0xffa01504 <_strcpy_>;
ffa0438a:	0f 30       	R1 = R7;
ffa0438c:	15 30       	R2 = R5;
ffa0438e:	ff e3 21 ea 	CALL 0xffa017d0 <_strprintf_int>;
ffa04392:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bcc(-7337012) */
ffa04396:	02 e1 dc 0b 	R2.L = 0xbdc;		/* (3036)	R2=0xff900bdc(-7336996) */
ffa0439a:	0f 30       	R1 = R7;
ffa0439c:	ff e3 b4 e8 	CALL 0xffa01504 <_strcpy_>;
ffa043a0:	0e 64       	R6 += 0x1;		/* (  1) */
ffa043a2:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa043a4:	16 08       	CC = R6 == R2;
ffa043a6:	e0 17       	IF !CC JUMP 0xffa04366 <_httpResp+0x2aa> (BP);
ffa043a8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa043ac:	0f 30       	R1 = R7;
ffa043ae:	02 e1 e8 0b 	R2.L = 0xbe8;		/* (3048)	R2=0xff900be8(-7336984) */
ffa043b2:	ff e3 a9 e8 	CALL 0xffa01504 <_strcpy_>;
ffa043b6:	f0 b9       	R0 = [FP -0x4];
ffa043b8:	9e 2e       	JUMP.S 0xffa040f4 <_httpResp+0x38>;
ffa043ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa043bc:	4f 30       	R1 = FP;
ffa043be:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900be8(-7336984) */
ffa043c2:	f0 bb       	[FP -0x4] = R0;
ffa043c4:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa043c6:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa043ca:	02 e1 e8 0a 	R2.L = 0xae8;		/* (2792)	R2=0xff900ae8(-7337240) */
ffa043ce:	ff e3 9b e8 	CALL 0xffa01504 <_strcpy_>;
ffa043d2:	f0 b9       	R0 = [FP -0x4];
ffa043d4:	90 2e       	JUMP.S 0xffa040f4 <_httpResp+0x38>;
ffa043d6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa043da:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa043de:	0e 30       	R1 = R6;
ffa043e0:	15 30       	R2 = R5;
ffa043e2:	ff e3 ff e8 	CALL 0xffa015e0 <_substr>;
ffa043e6:	00 0c       	CC = R0 == 0x0;
ffa043e8:	08 1c       	IF CC JUMP 0xffa043f8 <_httpResp+0x33c> (BP);
ffa043ea:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa043ee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa043f0:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa043f4:	10 9b       	B[P2] = R0;
ffa043f6:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa043f8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa043fc:	00 e1 34 0b 	R0.L = 0xb34;		/* (2868)	R0=0xff900b34(-7337164) */
ffa04400:	0e 30       	R1 = R6;
ffa04402:	15 30       	R2 = R5;
ffa04404:	ff e3 ee e8 	CALL 0xffa015e0 <_substr>;
ffa04408:	00 0c       	CC = R0 == 0x0;
ffa0440a:	05 1f       	IF CC JUMP 0xffa04214 <_httpResp+0x158> (BP);
ffa0440c:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa04410:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04412:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa04416:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04418:	10 9b       	B[P2] = R0;
ffa0441a:	fd 2e       	JUMP.S 0xffa04214 <_httpResp+0x158>;
ffa0441c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa04420:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa04424:	0e 30       	R1 = R6;
ffa04426:	15 30       	R2 = R5;
ffa04428:	ff e3 dc e8 	CALL 0xffa015e0 <_substr>;
ffa0442c:	00 0c       	CC = R0 == 0x0;
ffa0442e:	61 14       	IF !CC JUMP 0xffa044f0 <_httpResp+0x434> (BP);
ffa04430:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa04432:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b2c(-7337172) */
ffa04436:	00 e1 34 0b 	R0.L = 0xb34;		/* (2868)	R0=0xff900b34(-7337164) */
ffa0443a:	0e 30       	R1 = R6;
ffa0443c:	15 30       	R2 = R5;
ffa0443e:	ff e3 d1 e8 	CALL 0xffa015e0 <_substr>;
ffa04442:	00 0c       	CC = R0 == 0x0;
ffa04444:	de 1e       	IF CC JUMP 0xffa04200 <_httpResp+0x144> (BP);
ffa04446:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa0444a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0444c:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_g_streamEnabled> */
ffa04450:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04452:	10 9b       	B[P2] = R0;
ffa04454:	d6 2e       	JUMP.S 0xffa04200 <_httpResp+0x144>;
ffa04456:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04458:	06 50       	R0 = R6 + R0;
ffa0445a:	ff e3 e3 e9 	CALL 0xffa01820 <_atoi>;
ffa0445e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c34 <_g_streamEnabled> */
ffa04462:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetDataDestIP> */
ffa04466:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04468:	11 91       	R1 = [P2];
ffa0446a:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa0446e:	51 54       	R1 = R1 & R2;
ffa04470:	c0 4f       	R0 <<= 0x18;
ffa04472:	41 50       	R1 = R1 + R0;
ffa04474:	11 93       	[P2] = R1;
ffa04476:	5e 2e       	JUMP.S 0xffa04132 <_httpResp+0x76>;
ffa04478:	86 51       	R6 = R6 + R0;
ffa0447a:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0447c:	45 53       	R5 = R5 - R0;
ffa0447e:	06 30       	R0 = R6;
ffa04480:	ff e3 d0 e9 	CALL 0xffa01820 <_atoi>;
ffa04484:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetDataDestIP> */
ffa04488:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetDataDestIP> */
ffa0448c:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0448e:	11 91       	R1 = [P2];
ffa04490:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa04494:	40 43       	R0 = R0.B (Z);
ffa04496:	51 54       	R1 = R1 & R2;
ffa04498:	40 4f       	R0 <<= 0x8;
ffa0449a:	41 50       	R1 = R1 + R0;
ffa0449c:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0449e:	11 93       	[P2] = R1;
ffa044a0:	f7 2e       	JUMP.S 0xffa0428e <_httpResp+0x1d2>;
ffa044a2:	86 51       	R6 = R6 + R0;
ffa044a4:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa044a6:	45 53       	R5 = R5 - R0;
ffa044a8:	06 30       	R0 = R6;
ffa044aa:	ff e3 bb e9 	CALL 0xffa01820 <_atoi>;
ffa044ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetDataDestIP> */
ffa044b2:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetDataDestIP> */
ffa044b6:	11 91       	R1 = [P2];
ffa044b8:	41 4d       	R1 >>>= 0x8;
ffa044ba:	41 4f       	R1 <<= 0x8;
ffa044bc:	40 43       	R0 = R0.B (Z);
ffa044be:	08 50       	R0 = R0 + R1;
ffa044c0:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa044c2:	10 93       	[P2] = R0;
ffa044c4:	db 2e       	JUMP.S 0xffa0427a <_httpResp+0x1be>;
ffa044c6:	86 51       	R6 = R6 + R0;
ffa044c8:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa044ca:	45 53       	R5 = R5 - R0;
ffa044cc:	06 30       	R0 = R6;
ffa044ce:	ff e3 a9 e9 	CALL 0xffa01820 <_atoi>;
ffa044d2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetDataDestIP> */
ffa044d6:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetDataDestIP> */
ffa044da:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa044dc:	11 91       	R1 = [P2];
ffa044de:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa044e2:	40 43       	R0 = R0.B (Z);
ffa044e4:	51 54       	R1 = R1 & R2;
ffa044e6:	80 4f       	R0 <<= 0x10;
ffa044e8:	41 50       	R1 = R1 + R0;
ffa044ea:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa044ec:	11 93       	[P2] = R1;
ffa044ee:	da 2e       	JUMP.S 0xffa042a2 <_httpResp+0x1e6>;
ffa044f0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetDataDestIP> */
ffa044f4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa044f6:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_g_streamEnabled> */
ffa044fa:	10 9b       	B[P2] = R0;
ffa044fc:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c34 */
ffa04500:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa04504:	10 91       	R0 = [P2];
ffa04506:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04508:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0450a:	10 93       	[P2] = R0;
ffa0450c:	93 2f       	JUMP.S 0xffa04432 <_httpResp+0x376>;
	...

ffa04510 <_httpCollate>:
ffa04510:	fd 05       	[--SP] = (R7:7, P5:5);
ffa04512:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ee4 <_NetDataDestIP> */
ffa04516:	0d e1 dc 0f 	P5.L = 0xfdc;		/* (4060)	P5=0xff900fdc <_g_httpRxed> */
ffa0451a:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa0451c:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R1 = [P5] || NOP;
ffa04520:	29 91 00 00 
ffa04524:	82 4f       	R2 <<= 0x10;
ffa04526:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0452a:	51 50       	R1 = R1 + R2;
ffa0452c:	17 30       	R2 = R7;
ffa0452e:	ff e3 bb e7 	CALL 0xffa014a4 <_memcpy_>;
ffa04532:	28 91       	R0 = [P5];
ffa04534:	38 50       	R0 = R0 + R7;
ffa04536:	01 e8 00 00 	UNLINK;
ffa0453a:	28 93       	[P5] = R0;
ffa0453c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0453e:	bd 05       	(R7:7, P5:5) = [SP++];
ffa04540:	10 00       	RTS;
	...

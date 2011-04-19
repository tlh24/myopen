
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
ffa00178:	5e 25       	JUMP.S 0xffa00c34 <_main>;
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
ffa001a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00000(-4194304) */
ffa001ac:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa001b0:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa001b4:	00 00       	NOP;
ffa001b6:	50 95       	R0 = W[P2] (X);
ffa001b8:	c0 42       	R0 = R0.L (Z);
ffa001ba:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa001bc:	fc 17       	IF !CC JUMP 0xffa001b4 <_spi_delay+0xc> (BP);
ffa001be:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa001c0:	0a 10       	IF !CC JUMP 0xffa001d4 <_spi_delay+0x2c>;
ffa001c2:	00 00       	NOP;
ffa001c4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa001c8:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa001cc:	00 00       	NOP;
ffa001ce:	50 95       	R0 = W[P2] (X);
ffa001d0:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa001d2:	fd 1f       	IF CC JUMP 0xffa001cc <_spi_delay+0x24> (BP);
ffa001d4:	01 e8 00 00 	UNLINK;
ffa001d8:	10 00       	RTS;
	...

ffa001dc <_spi_write_register>:
ffa001dc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa001e0:	ed 05       	[--SP] = (R7:5, P5:5);
ffa001e2:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa001e6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa001ea:	82 ce 00 ca 	R5 = ROT R0 BY 0x0 || W[P2] = R0 || NOP;
ffa001ee:	10 97 00 00 
ffa001f2:	32 30       	R6 = R2;
ffa001f4:	24 00       	SSYNC;
ffa001f6:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00800(-4192256) */
ffa001fa:	29 4a       	BITSET (R1, 0x5);		/* bit  5 */
ffa001fc:	49 43       	R1 = R1.B (Z);
ffa001fe:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa00202:	29 97       	W[P5] = R1;
ffa00204:	ff e3 d2 ff 	CALL 0xffa001a8 <_spi_delay>;
ffa00208:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0020c:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa00210:	76 43       	R6 = R6.B (Z);
ffa00212:	57 95       	R7 = W[P2] (X);
ffa00214:	2e 97       	W[P5] = R6;
ffa00216:	ff e3 c9 ff 	CALL 0xffa001a8 <_spi_delay>;
ffa0021a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa0021e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00222:	15 97       	W[P2] = R5;
ffa00224:	24 00       	SSYNC;
ffa00226:	7f 43       	R7 = R7.B (Z);
ffa00228:	01 e8 00 00 	UNLINK;
ffa0022c:	07 30       	R0 = R7;
ffa0022e:	ad 05       	(R7:5, P5:5) = [SP++];
ffa00230:	10 00       	RTS;
	...

ffa00234 <_spi_read_register>:
ffa00234:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00238:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0023a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0023e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00242:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R0 || NOP;
ffa00246:	10 97 00 00 
ffa0024a:	24 00       	SSYNC;
ffa0024c:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00000(-4194304) */
ffa00250:	49 43       	R1 = R1.B (Z);
ffa00252:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa00256:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa0025a:	21 97       	W[P4] = R1;
ffa0025c:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa00260:	ff e3 a4 ff 	CALL 0xffa001a8 <_spi_delay>;
ffa00264:	68 95       	R0 = W[P5] (X);
ffa00266:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00268:	20 97       	W[P4] = R0;
ffa0026a:	ff e3 9f ff 	CALL 0xffa001a8 <_spi_delay>;
ffa0026e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00272:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00276:	68 95       	R0 = W[P5] (X);
ffa00278:	17 97       	W[P2] = R7;
ffa0027a:	24 00       	SSYNC;
ffa0027c:	01 e8 00 00 	UNLINK;
ffa00280:	40 43       	R0 = R0.B (Z);
ffa00282:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00284:	10 00       	RTS;
	...

ffa00288 <_spi_read_register_status>:
ffa00288:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0028c:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0028e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00292:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00296:	82 ce 00 cc 	R6 = ROT R0 BY 0x0 || W[P2] = R0 || NOP;
ffa0029a:	10 97 00 00 
ffa0029e:	1a 32       	P3 = R2;
ffa002a0:	24 00       	SSYNC;
ffa002a2:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc0050c(-4193012) */
ffa002a6:	49 43       	R1 = R1.B (Z);
ffa002a8:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa002ac:	21 97       	W[P4] = R1;
ffa002ae:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa002b2:	ff e3 7b ff 	CALL 0xffa001a8 <_spi_delay>;
ffa002b6:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa002ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa002bc:	6f 95       	R7 = W[P5] (X);
ffa002be:	20 97       	W[P4] = R0;
ffa002c0:	ff e3 74 ff 	CALL 0xffa001a8 <_spi_delay>;
ffa002c4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa002c8:	68 95       	R0 = W[P5] (X);
ffa002ca:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa002ce:	18 9b       	B[P3] = R0;
ffa002d0:	16 97       	W[P2] = R6;
ffa002d2:	24 00       	SSYNC;
ffa002d4:	7f 43       	R7 = R7.B (Z);
ffa002d6:	01 e8 00 00 	UNLINK;
ffa002da:	07 30       	R0 = R7;
ffa002dc:	b3 05       	(R7:6, P5:3) = [SP++];
ffa002de:	10 00       	RTS;

ffa002e0 <_spi_write_byte>:
ffa002e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa002e4:	78 05       	[--SP] = (R7:7);
ffa002e6:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa002ea:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa002ee:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R0 || NOP;
ffa002f2:	10 97 00 00 
ffa002f6:	24 00       	SSYNC;
ffa002f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa002fc:	49 43       	R1 = R1.B (Z);
ffa002fe:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa00302:	11 97       	W[P2] = R1;
ffa00304:	ff e3 52 ff 	CALL 0xffa001a8 <_spi_delay>;
ffa00308:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0030c:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa00310:	50 95       	R0 = W[P2] (X);
ffa00312:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa00316:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0031a:	17 97       	W[P2] = R7;
ffa0031c:	24 00       	SSYNC;
ffa0031e:	01 e8 00 00 	UNLINK;
ffa00322:	40 43       	R0 = R0.B (Z);
ffa00324:	38 05       	(R7:7) = [SP++];
ffa00326:	10 00       	RTS;

ffa00328 <_radio_set_rx>:
ffa00328:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0032c:	70 05       	[--SP] = (R7:6);
ffa0032e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00332:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00336:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || W[P2] = R1 || NOP;
ffa0033a:	11 97 00 00 
ffa0033e:	24 00       	SSYNC;
ffa00340:	c7 42       	R7 = R0.L (Z);
ffa00342:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00344:	07 30       	R0 = R7;
ffa00346:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00348:	ff e3 4a ff 	CALL 0xffa001dc <_spi_write_register>;
ffa0034c:	07 30       	R0 = R7;
ffa0034e:	21 e1 e2 00 	R1 = 0xe2 (X);		/*		R1=0xe2(226) */
ffa00352:	ff e3 c7 ff 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00356:	07 30       	R0 = R7;
ffa00358:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0035a:	fa 60       	R2 = 0x1f (X);		/*		R2=0x1f( 31) */
ffa0035c:	ff e3 40 ff 	CALL 0xffa001dc <_spi_write_register>;
ffa00360:	07 30       	R0 = R7;
ffa00362:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00364:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00368:	ff e3 3a ff 	CALL 0xffa001dc <_spi_write_register>;
ffa0036c:	24 00       	SSYNC;
ffa0036e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00372:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00376:	16 97       	W[P2] = R6;
ffa00378:	24 00       	SSYNC;
ffa0037a:	01 e8 00 00 	UNLINK;
ffa0037e:	30 05       	(R7:6) = [SP++];
ffa00380:	10 00       	RTS;
	...

ffa00384 <_radio_set_tx>:
ffa00384:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00388:	78 05       	[--SP] = (R7:7);
ffa0038a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0038e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00392:	11 97       	W[P2] = R1;
ffa00394:	24 00       	SSYNC;
ffa00396:	c7 42       	R7 = R0.L (Z);
ffa00398:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0039a:	07 30       	R0 = R7;
ffa0039c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0039e:	ff e3 1f ff 	CALL 0xffa001dc <_spi_write_register>;
ffa003a2:	07 30       	R0 = R7;
ffa003a4:	21 e1 e1 00 	R1 = 0xe1 (X);		/*		R1=0xe1(225) */
ffa003a8:	ff e3 9c ff 	CALL 0xffa002e0 <_spi_write_byte>;
ffa003ac:	07 30       	R0 = R7;
ffa003ae:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa003b0:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa003b4:	ff e3 14 ff 	CALL 0xffa001dc <_spi_write_register>;
ffa003b8:	01 e8 00 00 	UNLINK;
ffa003bc:	07 30       	R0 = R7;
ffa003be:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa003c0:	f2 60       	R2 = 0x1e (X);		/*		R2=0x1e( 30) */
ffa003c2:	38 05       	(R7:7) = [SP++];
ffa003c4:	ff e2 0c ff 	JUMP.L 0xffa001dc <_spi_write_register>;

ffa003c8 <_spi_write_register_ver>:
ffa003c8:	68 05       	[--SP] = (R7:5);
ffa003ca:	c7 42       	R7 = R0.L (Z);
ffa003cc:	4e 43       	R6 = R1.B (Z);
ffa003ce:	55 43       	R5 = R2.B (Z);
ffa003d0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa003d4:	07 30       	R0 = R7;
ffa003d6:	0e 30       	R1 = R6;
ffa003d8:	15 30       	R2 = R5;
ffa003da:	ff e3 01 ff 	CALL 0xffa001dc <_spi_write_register>;
ffa003de:	07 30       	R0 = R7;
ffa003e0:	0e 30       	R1 = R6;
ffa003e2:	ff e3 29 ff 	CALL 0xffa00234 <_spi_read_register>;
ffa003e6:	47 43       	R7 = R0.B (Z);
ffa003e8:	3d 08       	CC = R5 == R7;
ffa003ea:	29 18       	IF CC JUMP 0xffa0043c <_spi_write_register_ver+0x74>;
ffa003ec:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa003f0:	0e 30       	R1 = R6;
ffa003f2:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa003f6:	00 e3 4b 07 	CALL 0xffa0128c <_printf_int>;
ffa003fa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa003fe:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa00402:	00 e3 29 06 	CALL 0xffa01054 <_uart_str>;
ffa00406:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900508(-7338744) */
ffa0040a:	0d 30       	R1 = R5;
ffa0040c:	00 e1 14 00 	R0.L = 0x14;		/* ( 20)	R0=0xff900014(-7340012) */
ffa00410:	00 e3 8c 06 	CALL 0xffa01128 <_printf_hex_byte>;
ffa00414:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900014(-7340012) */
ffa00418:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa0041c:	00 e3 1c 06 	CALL 0xffa01054 <_uart_str>;
ffa00420:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900508(-7338744) */
ffa00424:	00 e1 20 00 	R0.L = 0x20;		/* ( 32)	R0=0xff900020(-7340000) */
ffa00428:	0f 30       	R1 = R7;
ffa0042a:	00 e3 7f 06 	CALL 0xffa01128 <_printf_hex_byte>;
ffa0042e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa00432:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00436:	2f 30       	R5 = R7;
ffa00438:	00 e3 0e 06 	CALL 0xffa01054 <_uart_str>;
ffa0043c:	01 e8 00 00 	UNLINK;
ffa00440:	05 30       	R0 = R5;
ffa00442:	28 05       	(R7:5) = [SP++];
ffa00444:	10 00       	RTS;
	...

ffa00448 <_radio_init>:
ffa00448:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0203c(-4186052) */
ffa0044c:	70 05       	[--SP] = (R7:6);
ffa0044e:	09 e1 00 05 	P1.L = 0x500;		/* (1280)	P1=0xffc00500(-4193024) */
ffa00452:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00454:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00458:	82 ce 02 cc 	R6 = ROT R2 BY 0x0 || W[P1] = R3 || NOP;
ffa0045c:	0b 97 00 00 
ffa00460:	38 30       	R7 = R0;
ffa00462:	24 00       	SSYNC;
ffa00464:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00468:	2a 60       	R2 = 0x5 (X);		/*		R2=0x5(  5) */
ffa0046a:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa0046e:	12 97       	W[P2] = R2;
ffa00470:	22 e1 2d 50 	R2 = 0x502d (X);		/*		R2=0x502d(20525) */
ffa00474:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00476:	0a 97       	W[P1] = R2;
ffa00478:	13 97       	W[P2] = R3;
ffa0047a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa0047e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00482:	10 97       	W[P2] = R0;
ffa00484:	c2 6d       	P2 += 0x38;		/* ( 56) */
ffa00486:	52 95       	R2 = W[P2] (X);
ffa00488:	91 56       	R2 = R1 | R2;
ffa0048a:	12 97       	W[P2] = R2;
ffa0048c:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0048e:	52 95       	R2 = W[P2] (X);
ffa00490:	c9 43       	R1 =~ R1;
ffa00492:	51 54       	R1 = R1 & R2;
ffa00494:	11 97       	W[P2] = R1;
ffa00496:	51 95       	R1 = W[P2] (X);
ffa00498:	51 4a       	BITSET (R1, 0xa);		/* bit 10 */
ffa0049a:	08 56       	R0 = R0 | R1;
ffa0049c:	10 97       	W[P2] = R0;
ffa0049e:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa004a2:	70 43       	R0 = R6.B (Z);
ffa004a4:	08 0a       	CC = R0 <= R1 (IU);
ffa004a6:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa004aa:	30 06       	IF !CC R6 = R0;
ffa004ac:	76 43       	R6 = R6.B (Z);
ffa004ae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa004b2:	0e 30       	R1 = R6;
ffa004b4:	00 e1 2c 00 	R0.L = 0x2c;		/* ( 44)	R0=0xff90002c(-7339988) */
ffa004b8:	00 e3 ea 06 	CALL 0xffa0128c <_printf_int>;
ffa004bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002c(-7339988) */
ffa004c0:	ff 42       	R7 = R7.L (Z);
ffa004c2:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa004c6:	00 e3 c7 05 	CALL 0xffa01054 <_uart_str>;
ffa004ca:	07 30       	R0 = R7;
ffa004cc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa004ce:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa004d0:	ff e3 86 fe 	CALL 0xffa001dc <_spi_write_register>;
ffa004d4:	07 30       	R0 = R7;
ffa004d6:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa004d8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa004da:	ff e3 77 ff 	CALL 0xffa003c8 <_spi_write_register_ver>;
ffa004de:	07 30       	R0 = R7;
ffa004e0:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
ffa004e2:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa004e4:	ff e3 72 ff 	CALL 0xffa003c8 <_spi_write_register_ver>;
ffa004e8:	07 30       	R0 = R7;
ffa004ea:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa004ec:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa004ee:	ff e3 6d ff 	CALL 0xffa003c8 <_spi_write_register_ver>;
ffa004f2:	07 30       	R0 = R7;
ffa004f4:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa004f6:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa004f8:	ff e3 68 ff 	CALL 0xffa003c8 <_spi_write_register_ver>;
ffa004fc:	16 30       	R2 = R6;
ffa004fe:	07 30       	R0 = R7;
ffa00500:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa00502:	ff e3 63 ff 	CALL 0xffa003c8 <_spi_write_register_ver>;
ffa00506:	07 30       	R0 = R7;
ffa00508:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa0050a:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa0050c:	ff e3 5e ff 	CALL 0xffa003c8 <_spi_write_register_ver>;
ffa00510:	07 30       	R0 = R7;
ffa00512:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00514:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00518:	ff e3 58 ff 	CALL 0xffa003c8 <_spi_write_register_ver>;
ffa0051c:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa0051e:	07 30       	R0 = R7;
ffa00520:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa00522:	ff e3 53 ff 	CALL 0xffa003c8 <_spi_write_register_ver>;
ffa00526:	07 30       	R0 = R7;
ffa00528:	21 e1 e2 00 	R1 = 0xe2 (X);		/*		R1=0xe2(226) */
ffa0052c:	ff e3 da fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00530:	07 30       	R0 = R7;
ffa00532:	21 e1 e1 00 	R1 = 0xe1 (X);		/*		R1=0xe1(225) */
ffa00536:	ff e3 d5 fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0053a:	01 e8 00 00 	UNLINK;
ffa0053e:	40 43       	R0 = R0.B (Z);
ffa00540:	30 05       	(R7:6) = [SP++];
ffa00542:	10 00       	RTS;

ffa00544 <_audio_out>:
ffa00544:	66 01       	[--SP] = ASTAT;
ffa00546:	71 01       	[--SP] = LT0;
ffa00548:	74 01       	[--SP] = LT1;
ffa0054a:	70 01       	[--SP] = LC0;
ffa0054c:	73 01       	[--SP] = LC1;
ffa0054e:	72 01       	[--SP] = LB0;
ffa00550:	75 01       	[--SP] = LB1;
ffa00552:	c4 05       	[--SP] = (R7:0, P5:4);
ffa00554:	48 01       	[--SP] = P0;
ffa00556:	49 01       	[--SP] = P1;
ffa00558:	4a 01       	[--SP] = P2;
ffa0055a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0055e:	50 01       	[--SP] = I0;
ffa00560:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00562:	0a e1 30 09 	P2.L = 0x930;		/* (2352)	P2=0xffc00930(-4191952) */
ffa00566:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900518 */
ffa0056a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0056e:	0d e1 c4 0b 	P5.L = 0xbc4;		/* (3012)	P5=0xff900bc4 <_g_sampCh> */
ffa00572:	10 97       	W[P2] = R0;
ffa00574:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff90150c */
ffa00578:	68 99       	R0 = B[P5] (X);
ffa0057a:	08 e1 c8 0b 	P0.L = 0xbc8;		/* (3016)	P0=0xff900bc8 <_g_sampR> */
ffa0057e:	46 43       	R6 = R0.B (Z);
ffa00580:	05 91       	R5 = [P0];
ffa00582:	23 e1 ff 01 	R3 = 0x1ff (X);		/*		R3=0x1ff(511) */
ffa00586:	6e 50       	R1 = R6 + R5;
ffa00588:	00 34       	I0 = R0;
ffa0058a:	19 54       	R0 = R1 & R3;
ffa0058c:	20 32       	P4 = R0;
ffa0058e:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900500 */
ffa00592:	09 e1 f4 0b 	P1.L = 0xbf4;		/* (3060)	P1=0xff900bf4 <_g_samples> */
ffa00596:	11 64       	R1 += 0x2;		/* (  2) */
ffa00598:	59 54       	R1 = R1 & R3;
ffa0059a:	8c 5a       	P2 = P4 + P1;
ffa0059c:	52 99       	R2 = B[P2] (X);
ffa0059e:	11 32       	P2 = R1;
ffa005a0:	27 e1 80 ff 	R7 = -0x80 (X);		/*		R7=0xffffff80(-128) */
ffa005a4:	ba 58       	R2 = R2 ^ R7;
ffa005a6:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa005aa:	52 43       	R2 = R2.B (Z);
ffa005ac:	4a 5a       	P1 = P2 + P1;
ffa005ae:	49 99       	R1 = B[P1] (X);
ffa005b0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bf4 <_g_samples> */
ffa005b4:	09 e1 d0 0b 	P1.L = 0xbd0;		/* (3024)	P1=0xff900bd0 <_g_sampOff> */
ffa005b8:	0c 91       	R4 = [P1];
ffa005ba:	82 c6 64 87 	R3 = R4 >> 0x14;
ffa005be:	79 58       	R1 = R1 ^ R7;
ffa005c0:	18 52       	R0 = R0 - R3;
ffa005c2:	49 43       	R1 = R1.B (Z);
ffa005c4:	c2 40       	R2 *= R0;
ffa005c6:	cb 40       	R3 *= R1;
ffa005c8:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa005ca:	9a 50       	R2 = R2 + R3;
ffa005cc:	82 c6 86 80 	R0 = R6 << 0x10;
ffa005d0:	99 4f       	R1 <<= 0x13;
ffa005d2:	d2 42       	R2 = R2.L (Z);
ffa005d4:	08 56       	R0 = R0 | R1;
ffa005d6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00930(-4191952) */
ffa005da:	82 56       	R2 = R2 | R0;
ffa005dc:	0a e1 10 09 	P2.L = 0x910;		/* (2320)	P2=0xffc00910(-4191984) */
ffa005e0:	0e 0c       	CC = R6 == 0x1;
ffa005e2:	12 93       	[P2] = R2;
ffa005e4:	13 18       	IF CC JUMP 0xffa0060a <_audio_out+0xc6>;
ffa005e6:	01 e8 00 00 	UNLINK;
ffa005ea:	80 30       	R0 = I0;
ffa005ec:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa005ee:	10 01       	I0 = [SP++];
ffa005f0:	28 9b       	B[P5] = R0;
ffa005f2:	72 90       	P2 = [SP++];
ffa005f4:	71 90       	P1 = [SP++];
ffa005f6:	70 90       	P0 = [SP++];
ffa005f8:	84 05       	(R7:0, P5:4) = [SP++];
ffa005fa:	35 01       	LB1 = [SP++];
ffa005fc:	32 01       	LB0 = [SP++];
ffa005fe:	33 01       	LC1 = [SP++];
ffa00600:	30 01       	LC0 = [SP++];
ffa00602:	34 01       	LT1 = [SP++];
ffa00604:	31 01       	LT0 = [SP++];
ffa00606:	26 01       	ASTAT = [SP++];
ffa00608:	11 00       	RTI;
ffa0060a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900910 */
ffa0060e:	0a e1 b0 0b 	P2.L = 0xbb0;		/* (2992)	P2=0xff900bb0 <_g_sampW> */
ffa00612:	10 91       	R0 = [P2];
ffa00614:	05 0a       	CC = R5 <= R0 (IU);
ffa00616:	38 1c       	IF CC JUMP 0xffa00686 <_audio_out+0x142> (BP);
ffa00618:	00 93       	[P0] = R0;
ffa0061a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb0 <_g_sampW> */
ffa0061e:	0a e1 a4 0b 	P2.L = 0xba4;		/* (2980)	P2=0xff900ba4 <_g_sampMode> */
ffa00622:	10 99       	R0 = B[P2] (Z);
ffa00624:	08 0c       	CC = R0 == 0x1;
ffa00626:	57 18       	IF CC JUMP 0xffa006d4 <_audio_out+0x190>;
ffa00628:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa0062a:	08 08       	CC = R0 == R1;
ffa0062c:	51 18       	IF CC JUMP 0xffa006ce <_audio_out+0x18a>;
ffa0062e:	10 99       	R0 = B[P2] (Z);
ffa00630:	10 0c       	CC = R0 == 0x2;
ffa00632:	53 18       	IF CC JUMP 0xffa006d8 <_audio_out+0x194>;
ffa00634:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba4 <_g_sampMode> */
ffa00638:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0063a:	0a e1 b4 0b 	P2.L = 0xbb4;		/* (2996)	P2=0xff900bb4 <_g_sampInc> */
ffa0063e:	e0 4f       	R0 <<= 0x1c;
ffa00640:	10 93       	[P2] = R0;
ffa00642:	10 91       	R0 = [P2];
ffa00644:	44 50       	R1 = R4 + R0;
ffa00646:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00648:	e0 4f       	R0 <<= 0x1c;
ffa0064a:	01 0a       	CC = R1 <= R0 (IU);
ffa0064c:	09 93       	[P1] = R1;
ffa0064e:	16 18       	IF CC JUMP 0xffa0067a <_audio_out+0x136>;
ffa00650:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00652:	40 e1 ff ef 	R0.H = 0xefff;		/* (-4097)	R0=0xefffffff(-268435457) */
ffa00656:	01 50       	R0 = R1 + R0;
ffa00658:	e0 4e       	R0 >>= 0x1c;
ffa0065a:	10 32       	P2 = R0;
ffa0065c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0065e:	e0 4f       	R0 <<= 0x1c;
ffa00660:	01 08       	CC = R1 == R0;
ffa00662:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa00664:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00666:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00668:	02 91       	R2 = [P0];
ffa0066a:	e3 4f       	R3 <<= 0x1c;
ffa0066c:	90 07       	IF CC P2 = R0;
ffa0066e:	b2 e0 03 20 	LSETUP(0xffa00672 <_audio_out+0x12e>, 0xffa00674 <_audio_out+0x130>) LC1 = P2;
ffa00672:	12 64       	R2 += 0x2;		/* (  2) */
ffa00674:	59 50       	R1 = R1 + R3;
ffa00676:	09 93       	[P1] = R1;
ffa00678:	02 93       	[P0] = R2;
ffa0067a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0067c:	40 e1 ff 0f 	R0.H = 0xfff;		/* (4095)	R0=0xfffffff(268435455) */
ffa00680:	01 54       	R0 = R1 & R0;
ffa00682:	08 93       	[P1] = R0;
ffa00684:	b1 2f       	JUMP.S 0xffa005e6 <_audio_out+0xa2>;
ffa00686:	28 52       	R0 = R0 - R5;
ffa00688:	21 e1 d4 01 	R1 = 0x1d4 (X);		/*		R1=0x1d4(468) */
ffa0068c:	08 0a       	CC = R0 <= R1 (IU);
ffa0068e:	17 14       	IF !CC JUMP 0xffa006bc <_audio_out+0x178> (BP);
ffa00690:	21 e1 63 00 	R1 = 0x63 (X);		/*		R1=0x63( 99) */
ffa00694:	08 0a       	CC = R0 <= R1 (IU);
ffa00696:	c2 1b       	IF CC JUMP 0xffa0061a <_audio_out+0xd6>;
ffa00698:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb4 <_g_sampInc> */
ffa0069c:	0a e1 a4 0b 	P2.L = 0xba4;		/* (2980)	P2=0xff900ba4 <_g_sampMode> */
ffa006a0:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa006a2:	10 99       	R0 = B[P2] (Z);
ffa006a4:	08 08       	CC = R0 == R1;
ffa006a6:	c5 17       	IF !CC JUMP 0xffa00630 <_audio_out+0xec> (BP);
ffa006a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba4 <_g_sampMode> */
ffa006ac:	40 e1 13 10 	R0.H = 0x1013;		/* (4115)	R0=0x1013ffff(269746175) */
ffa006b0:	0a e1 b4 0b 	P2.L = 0xbb4;		/* (2996)	P2=0xff900bb4 <_g_sampInc> */
ffa006b4:	00 e1 cd ab 	R0.L = 0xabcd;		/* (-21555)	R0=0x1013abcd(269724621) */
ffa006b8:	10 93       	[P2] = R0;
ffa006ba:	c4 2f       	JUMP.S 0xffa00642 <_audio_out+0xfe>;
ffa006bc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb4 <_g_sampInc> */
ffa006c0:	0a e1 a4 0b 	P2.L = 0xba4;		/* (2980)	P2=0xff900ba4 <_g_sampMode> */
ffa006c4:	10 99       	R0 = B[P2] (Z);
ffa006c6:	08 0c       	CC = R0 == 0x1;
ffa006c8:	12 18       	IF CC JUMP 0xffa006ec <_audio_out+0x1a8>;
ffa006ca:	10 0c       	CC = R0 == 0x2;
ffa006cc:	ea 17       	IF !CC JUMP 0xffa006a0 <_audio_out+0x15c> (BP);
ffa006ce:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa006d0:	10 9b       	B[P2] = R0;
ffa006d2:	ae 2f       	JUMP.S 0xffa0062e <_audio_out+0xea>;
ffa006d4:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa006d6:	10 9b       	B[P2] = R0;
ffa006d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba4 <_g_sampMode> */
ffa006dc:	40 e1 f1 0f 	R0.H = 0xff1;		/* (4081)	R0=0xff10002(267452418) */
ffa006e0:	0a e1 b4 0b 	P2.L = 0xbb4;		/* (2996)	P2=0xff900bb4 <_g_sampInc> */
ffa006e4:	00 e1 21 43 	R0.L = 0x4321;		/* (17185)	R0=0xff14321(267469601) */
ffa006e8:	10 93       	[P2] = R0;
ffa006ea:	ac 2f       	JUMP.S 0xffa00642 <_audio_out+0xfe>;
ffa006ec:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa006ee:	10 9b       	B[P2] = R0;
ffa006f0:	dc 2f       	JUMP.S 0xffa006a8 <_audio_out+0x164>;
	...

ffa006f4 <_wait_flash>:
ffa006f4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa006f6:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00bc4(-4191292) */
ffa006fa:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa006fe:	0d e1 04 07 	P5.L = 0x704;		/* (1796)	P5=0xffc00704(-4192508) */
ffa00702:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa00704:	2f 97       	W[P5] = R7;
ffa00706:	24 00       	SSYNC;
ffa00708:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0070a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0070c:	ff e3 ea fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00710:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00712:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00714:	ff e3 e6 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00718:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bb4(-4191308) */
ffa0071c:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00720:	17 97       	W[P2] = R7;
ffa00722:	24 00       	SSYNC;
ffa00724:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa00726:	ef 17       	IF !CC JUMP 0xffa00704 <_wait_flash+0x10> (BP);
ffa00728:	01 e8 00 00 	UNLINK;
ffa0072c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0072e:	10 00       	RTS;

ffa00730 <_write_enable_flash>:
ffa00730:	fc 05       	[--SP] = (R7:7, P5:4);
ffa00732:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc0050c(-4193012) */
ffa00736:	0c e1 04 15 	P4.L = 0x1504;		/* (5380)	P4=0xffc01504(-4188924) */
ffa0073a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0073c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00740:	27 97       	W[P4] = R7;
ffa00742:	24 00       	SSYNC;
ffa00744:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00704(-4192508) */
ffa00748:	21 e1 50 00 	R1 = 0x50 (X);		/*		R1=0x50( 80) */
ffa0074c:	0d e1 08 15 	P5.L = 0x1508;		/* (5384)	P5=0xffc01508(-4188920) */
ffa00750:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00752:	ff e3 c7 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00756:	2f 97       	W[P5] = R7;
ffa00758:	24 00       	SSYNC;
ffa0075a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0075e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00762:	17 97       	W[P2] = R7;
ffa00764:	24 00       	SSYNC;
ffa00766:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa00768:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0076a:	ff e3 bb fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0076e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00770:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00772:	ff e3 b7 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00776:	2f 97       	W[P5] = R7;
ffa00778:	24 00       	SSYNC;
ffa0077a:	27 97       	W[P4] = R7;
ffa0077c:	24 00       	SSYNC;
ffa0077e:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa00780:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00782:	ff e3 af fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00786:	2f 97       	W[P5] = R7;
ffa00788:	24 00       	SSYNC;
ffa0078a:	01 e8 00 00 	UNLINK;
ffa0078e:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00790:	10 00       	RTS;
	...

ffa00794 <_read_flash_u32>:
ffa00794:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00798:	70 05       	[--SP] = (R7:6);
ffa0079a:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0079e:	16 60       	R6 = 0x2 (X);		/*		R6=0x2(  2) */
ffa007a0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa007a4:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R6 || NOP;
ffa007a8:	16 97 00 00 
ffa007ac:	24 00       	SSYNC;
ffa007ae:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa007b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007b2:	ff e3 97 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa007b6:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa007ba:	49 43       	R1 = R1.B (Z);
ffa007bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007be:	ff e3 91 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa007c2:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa007c6:	49 43       	R1 = R1.B (Z);
ffa007c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007ca:	ff e3 8b fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa007ce:	79 43       	R1 = R7.B (Z);
ffa007d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007d2:	ff e3 87 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa007d6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa007d8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007da:	ff e3 83 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa007de:	47 43       	R7 = R0.B (Z);
ffa007e0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa007e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007e4:	ff e3 7e fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa007e8:	40 43       	R0 = R0.B (Z);
ffa007ea:	47 4f       	R7 <<= 0x8;
ffa007ec:	c7 51       	R7 = R7 + R0;
ffa007ee:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa007f0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007f2:	ff e3 77 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa007f6:	40 43       	R0 = R0.B (Z);
ffa007f8:	47 4f       	R7 <<= 0x8;
ffa007fa:	c7 51       	R7 = R7 + R0;
ffa007fc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa007fe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00800:	ff e3 70 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00804:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00808:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0080c:	47 4f       	R7 <<= 0x8;
ffa0080e:	16 97       	W[P2] = R6;
ffa00810:	24 00       	SSYNC;
ffa00812:	40 43       	R0 = R0.B (Z);
ffa00814:	c7 51       	R7 = R7 + R0;
ffa00816:	01 e8 00 00 	UNLINK;
ffa0081a:	07 30       	R0 = R7;
ffa0081c:	30 05       	(R7:6) = [SP++];
ffa0081e:	10 00       	RTS;

ffa00820 <_read_flash_u8>:
ffa00820:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00824:	70 05       	[--SP] = (R7:6);
ffa00826:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0082a:	16 60       	R6 = 0x2 (X);		/*		R6=0x2(  2) */
ffa0082c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00830:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R6 || NOP;
ffa00834:	16 97 00 00 
ffa00838:	24 00       	SSYNC;
ffa0083a:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0083c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0083e:	ff e3 51 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00842:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa00846:	49 43       	R1 = R1.B (Z);
ffa00848:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0084a:	ff e3 4b fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0084e:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa00852:	49 43       	R1 = R1.B (Z);
ffa00854:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00856:	ff e3 45 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0085a:	79 43       	R1 = R7.B (Z);
ffa0085c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0085e:	ff e3 41 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00862:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00864:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00866:	ff e3 3d fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0086a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0086e:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00872:	16 97       	W[P2] = R6;
ffa00874:	24 00       	SSYNC;
ffa00876:	01 e8 00 00 	UNLINK;
ffa0087a:	40 43       	R0 = R0.B (Z);
ffa0087c:	30 05       	(R7:6) = [SP++];
ffa0087e:	10 00       	RTS;

ffa00880 <_write_flash>:
ffa00880:	e3 05       	[--SP] = (R7:4, P5:3);
ffa00882:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa00886:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01508(-4188920) */
ffa0088a:	f1 bb       	[FP -0x4] = R1;
ffa0088c:	0d e1 04 15 	P5.L = 0x1504;		/* (5380)	P5=0xffc01504(-4188924) */
ffa00890:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa00892:	20 30       	R4 = R0;
ffa00894:	ff e3 4e ff 	CALL 0xffa00730 <_write_enable_flash>;
ffa00898:	2f 97       	W[P5] = R7;
ffa0089a:	24 00       	SSYNC;
ffa0089c:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0089e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008a0:	ff e3 20 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa008a4:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa008a6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008a8:	ff e3 1c fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa008ac:	21 e1 f0 00 	R1 = 0xf0 (X);		/*		R1=0xf0(240) */
ffa008b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008b2:	ff e3 17 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa008b6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa008b8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008ba:	ff e3 13 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa008be:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa008c2:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa008c6:	17 97       	W[P2] = R7;
ffa008c8:	24 00       	SSYNC;
ffa008ca:	ff e3 15 ff 	CALL 0xffa006f4 <_wait_flash>;
ffa008ce:	04 0c       	CC = R4 == 0x0;
ffa008d0:	6c 18       	IF CC JUMP 0xffa009a8 <_write_flash+0x128>;
ffa008d2:	fc b9       	P4 = [FP -0x4];
ffa008d4:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa008d6:	15 60       	R5 = 0x2 (X);		/*		R5=0x2(  2) */
ffa008d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa008dc:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa008e0:	15 97       	W[P2] = R5;
ffa008e2:	24 00       	SSYNC;
ffa008e4:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01504(-4188924) */
ffa008e8:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa008ea:	0d e1 08 15 	P5.L = 0x1508;		/* (5384)	P5=0xffc01508(-4188920) */
ffa008ee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008f0:	ff e3 f8 fc 	CALL 0xffa002e0 <_spi_write_byte>;
ffa008f4:	2d 97       	W[P5] = R5;
ffa008f6:	24 00       	SSYNC;
ffa008f8:	4b e1 07 00 	P3.H = 0x7;		/* (  7)	P3=0x70000 */
ffa008fc:	0b e1 00 f0 	P3.L = 0xf000;		/* (-4096)	P3=0x7f000 */
ffa00900:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00904:	43 30       	R0 = P3;
ffa00906:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0090a:	04 cc 30 0e 	R7 = R6 + R0 (NS) || W[P2] = R5 || NOP;
ffa0090e:	15 97 00 00 
ffa00912:	24 00       	SSYNC;
ffa00914:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
ffa00916:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00918:	ff e3 e4 fc 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0091c:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa00920:	47 4e       	R7 >>= 0x8;
ffa00922:	49 43       	R1 = R1.B (Z);
ffa00924:	7f 43       	R7 = R7.B (Z);
ffa00926:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00928:	ff e3 dc fc 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0092c:	0f 30       	R1 = R7;
ffa0092e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00930:	ff e3 d8 fc 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00934:	71 43       	R1 = R6.B (Z);
ffa00936:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00938:	ff e3 d4 fc 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0093c:	21 98       	R1 = B[P4++] (Z);
ffa0093e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00940:	ff e3 d0 fc 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00944:	2d 97       	W[P5] = R5;
ffa00946:	24 00       	SSYNC;
ffa00948:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0094a:	ff e3 d5 fe 	CALL 0xffa006f4 <_wait_flash>;
ffa0094e:	34 08       	CC = R4 == R6;
ffa00950:	c4 17       	IF !CC JUMP 0xffa008d8 <_write_flash+0x58> (BP);
ffa00952:	fd b9       	P5 = [FP -0x4];
ffa00954:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
ffa00956:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00958:	73 30       	R6 = P3;
ffa0095a:	65 32       	P4 = P5;
ffa0095c:	02 20       	JUMP.S 0xffa00960 <_write_flash+0xe0>;
ffa0095e:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa00960:	37 50       	R0 = R7 + R6;
ffa00962:	ff e3 5f ff 	CALL 0xffa00820 <_read_flash_u8>;
ffa00966:	41 43       	R1 = R0.B (Z);
ffa00968:	28 99       	R0 = B[P5] (Z);
ffa0096a:	01 08       	CC = R1 == R0;
ffa0096c:	0f 18       	IF CC JUMP 0xffa0098a <_write_flash+0x10a>;
ffa0096e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa00972:	00 e1 44 00 	R0.L = 0x44;		/* ( 68)	R0=0xff900044(-7339964) */
ffa00976:	00 e3 d9 03 	CALL 0xffa01128 <_printf_hex_byte>;
ffa0097a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900044(-7339964) */
ffa0097e:	21 99       	R1 = B[P4] (Z);
ffa00980:	00 e1 54 00 	R0.L = 0x54;		/* ( 84)	R0=0xff900054(-7339948) */
ffa00984:	00 e3 d2 03 	CALL 0xffa01128 <_printf_hex_byte>;
ffa00988:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa0098a:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0098c:	3c 08       	CC = R4 == R7;
ffa0098e:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00990:	e7 17       	IF !CC JUMP 0xffa0095e <_write_flash+0xde> (BP);
ffa00992:	05 48       	CC = !BITTST (R5, 0x0);		/* bit  0 */
ffa00994:	0a 10       	IF !CC JUMP 0xffa009a8 <_write_flash+0x128>;
ffa00996:	01 e8 00 00 	UNLINK;
ffa0099a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900054(-7339948) */
ffa0099e:	00 e1 60 00 	R0.L = 0x60;		/* ( 96)	R0=0xff900060(-7339936) */
ffa009a2:	a3 05       	(R7:4, P5:3) = [SP++];
ffa009a4:	00 e2 b2 03 	JUMP.L 0xffa01108 <_printf_str>;
ffa009a8:	01 e8 00 00 	UNLINK;
ffa009ac:	a3 05       	(R7:4, P5:3) = [SP++];
ffa009ae:	10 00       	RTS;

ffa009b0 <_eth_listen>:
ffa009b0:	00 0c       	CC = R0 == 0x0;
ffa009b2:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa009b6:	04 18       	IF CC JUMP 0xffa009be <_eth_listen+0xe>;
ffa009b8:	01 e8 00 00 	UNLINK;
ffa009bc:	10 00       	RTS;
ffa009be:	47 30       	R0 = FP;
ffa009c0:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa009c2:	00 e3 27 11 	CALL 0xffa02c10 <_bfin_EMAC_recv>;
ffa009c6:	00 0d       	CC = R0 <= 0x0;
ffa009c8:	f8 1b       	IF CC JUMP 0xffa009b8 <_eth_listen+0x8>;
ffa009ca:	f9 b9       	P1 = [FP -0x4];
ffa009cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901504 */
ffa009d0:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetDataDestIP> */
ffa009d4:	11 91       	R1 = [P2];
ffa009d6:	c8 a1       	R0 = [P1 + 0x1c];
ffa009d8:	08 08       	CC = R0 == R1;
ffa009da:	ef 17       	IF !CC JUMP 0xffa009b8 <_eth_listen+0x8> (BP);
ffa009dc:	48 e4 13 00 	R0 = W[P1 + 0x26] (Z);
ffa009e0:	00 e3 f4 07 	CALL 0xffa019c8 <_htons>;
ffa009e4:	c0 42       	R0 = R0.L (Z);
ffa009e6:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa009ea:	08 08       	CC = R0 == R1;
ffa009ec:	e6 17       	IF !CC JUMP 0xffa009b8 <_eth_listen+0x8> (BP);
ffa009ee:	f0 b9       	R0 = [FP -0x4];
ffa009f0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa009f4:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa009f6:	01 e1 d4 0b 	R1.L = 0xbd4;		/* (3028)	R1=0xff900bd4 <_g_outpkt>(-7337004) */
ffa009fa:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa009fc:	00 e3 2e 05 	CALL 0xffa01458 <_memcpy_>;
ffa00a00:	dc 2f       	JUMP.S 0xffa009b8 <_eth_listen+0x8>;
	...

ffa00a04 <_getRadioPacket>:
ffa00a04:	e3 05       	[--SP] = (R7:4, P5:3);
ffa00a06:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa00a0a:	79 e6 fa ff 	W[FP + -0xc] = R1;
ffa00a0e:	3a 30       	R7 = R2;
ffa00a10:	20 30       	R4 = R0;
ffa00a12:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00a14:	c0 42       	R0 = R0.L (Z);
ffa00a16:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00a1a:	e0 bb       	[FP -0x8] = R0;
ffa00a1c:	ff e3 e0 fb 	CALL 0xffa001dc <_spi_write_register>;
ffa00a20:	24 00       	SSYNC;
ffa00a22:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e7c(-4190596) */
ffa00a26:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00a2a:	14 97       	W[P2] = R4;
ffa00a2c:	24 00       	SSYNC;
ffa00a2e:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01508(-4188920) */
ffa00a32:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa00a36:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa00a3a:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000 <_l1_data_a>(-7340032) */
ffa00a3e:	28 97       	W[P5] = R0;
ffa00a40:	05 e1 ac 0b 	R5.L = 0xbac;		/* (2988)	R5=0xff900bac <_wrptr>(-7337044) */
ffa00a44:	ff e3 b2 fb 	CALL 0xffa001a8 <_spi_delay>;
ffa00a48:	05 32       	P0 = R5;
ffa00a4a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90f000 */
ffa00a4e:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00a50:	7f 43       	R7 = R7.B (Z);
ffa00a52:	0b e1 b0 0b 	P3.L = 0xbb0;		/* (2992)	P3=0xff900bb0 <_g_sampW> */
ffa00a56:	44 91       	P4 = [P0];
ffa00a58:	07 20       	JUMP.S 0xffa00a66 <_getRadioPacket+0x62>;
ffa00a5a:	08 0c       	CC = R0 == 0x1;
ffa00a5c:	1a 18       	IF CC JUMP 0xffa00a90 <_getRadioPacket+0x8c>;
ffa00a5e:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00a60:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00a62:	06 08       	CC = R6 == R0;
ffa00a64:	27 18       	IF CC JUMP 0xffa00ab2 <_getRadioPacket+0xae>;
ffa00a66:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a68:	28 97       	W[P5] = R0;
ffa00a6a:	ff e3 9f fb 	CALL 0xffa001a8 <_spi_delay>;
ffa00a6e:	07 0c       	CC = R7 == 0x0;
ffa00a70:	f7 1f       	IF CC JUMP 0xffa00a5e <_getRadioPacket+0x5a> (BP);
ffa00a72:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00a76:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa00a7a:	50 95       	R0 = W[P2] (X);
ffa00a7c:	10 30       	R2 = R0;
ffa00a7e:	20 9a       	B[P4++] = R0;
ffa00a80:	d9 60       	R1 = 0x1b (X);		/*		R1=0x1b( 27) */
ffa00a82:	f0 42       	R0 = R6.L (Z);
ffa00a84:	08 0a       	CC = R0 <= R1 (IU);
ffa00a86:	ec 17       	IF !CC JUMP 0xffa00a5e <_getRadioPacket+0x5a> (BP);
ffa00a88:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa00a8a:	06 54       	R0 = R6 & R0;
ffa00a8c:	00 0c       	CC = R0 == 0x0;
ffa00a8e:	e6 17       	IF !CC JUMP 0xffa00a5a <_getRadioPacket+0x56> (BP);
ffa00a90:	18 91       	R0 = [P3];
ffa00a92:	23 e1 ff 01 	R3 = 0x1ff (X);		/*		R3=0x1ff(511) */
ffa00a96:	58 54       	R1 = R0 & R3;
ffa00a98:	01 32       	P0 = R1;
ffa00a9a:	08 64       	R0 += 0x1;		/* (  1) */
ffa00a9c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bd0 <_g_sampOff> */
ffa00aa0:	09 e1 f4 0b 	P1.L = 0xbf4;		/* (3060)	P1=0xff900bf4 <_g_samples> */
ffa00aa4:	18 93       	[P3] = R0;
ffa00aa6:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00aa8:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00aaa:	88 5a       	P2 = P0 + P1;
ffa00aac:	06 08       	CC = R6 == R0;
ffa00aae:	12 9b       	B[P2] = R2;
ffa00ab0:	db 17       	IF !CC JUMP 0xffa00a66 <_getRadioPacket+0x62> (BP);
ffa00ab2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa00ab6:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00aba:	14 97       	W[P2] = R4;
ffa00abc:	24 00       	SSYNC;
ffa00abe:	07 0c       	CC = R7 == 0x0;
ffa00ac0:	10 1c       	IF CC JUMP 0xffa00ae0 <_getRadioPacket+0xdc> (BP);
ffa00ac2:	05 32       	P0 = R5;
ffa00ac4:	20 e1 ff 0f 	R0 = 0xfff (X);		/*		R0=0xfff(4095) */
ffa00ac8:	01 91       	R1 = [P0];
ffa00aca:	01 65       	R1 += 0x20;		/* ( 32) */
ffa00acc:	01 54       	R0 = R1 & R0;
ffa00ace:	01 67       	R1 += -0x20;		/* (-32) */
ffa00ad0:	09 32       	P1 = R1;
ffa00ad2:	00 93       	[P0] = R0;
ffa00ad4:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa00ad6:	88 e5 1c 00 	R0 = B[P1 + 0x1c] (X);
ffa00ada:	08 54       	R0 = R0 & R1;
ffa00adc:	08 08       	CC = R0 == R1;
ffa00ade:	58 18       	IF CC JUMP 0xffa00b8e <_getRadioPacket+0x18a>;
ffa00ae0:	05 32       	P0 = R5;
ffa00ae2:	21 e1 ff 01 	R1 = 0x1ff (X);		/*		R1=0x1ff(511) */
ffa00ae6:	00 91       	R0 = [P0];
ffa00ae8:	08 0a       	CC = R0 <= R1 (IU);
ffa00aea:	4e 18       	IF CC JUMP 0xffa00b86 <_getRadioPacket+0x182>;
ffa00aec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00af0:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00af4:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa00af8:	10 97       	W[P2] = R0;
ffa00afa:	21 e1 e2 00 	R1 = 0xe2 (X);		/*		R1=0xe2(226) */
ffa00afe:	e0 b9       	R0 = [FP -0x8];
ffa00b00:	ff e3 f0 fb 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00b04:	05 32       	P0 = R5;
ffa00b06:	4f 30       	R1 = FP;
ffa00b08:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa00b0a:	00 91       	R0 = [P0];
ffa00b0c:	20 64       	R0 += 0x4;		/* (  4) */
ffa00b0e:	00 e3 95 0c 	CALL 0xffa02438 <_udp_packet_setup>;
ffa00b12:	08 32       	P1 = R0;
ffa00b14:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa00b18:	00 0d       	CC = R0 <= 0x0;
ffa00b1a:	84 18       	IF CC JUMP 0xffa00c22 <_getRadioPacket+0x21e>;
ffa00b1c:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900bc8 <_g_sampR> */
ffa00b20:	08 e1 a8 0b 	P0.L = 0xba8;		/* (2984)	P0=0xff900ba8 <_trptr> */
ffa00b24:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00b28:	00 91       	R0 = [P0];
ffa00b2a:	08 93       	[P1] = R0;
ffa00b2c:	0a e1 ac 0b 	P2.L = 0xbac;		/* (2988)	P2=0xff900bac <_wrptr> */
ffa00b30:	10 91       	R0 = [P2];
ffa00b32:	10 4e       	R0 >>= 0x2;
ffa00b34:	00 0c       	CC = R0 == 0x0;
ffa00b36:	74 18       	IF CC JUMP 0xffa00c1e <_getRadioPacket+0x21a>;
ffa00b38:	51 32       	P2 = P1;
ffa00b3a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00b3c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00b3e:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00b40:	0d 32       	P1 = R5;
ffa00b42:	28 90       	R0 = [P5++];
ffa00b44:	10 92       	[P2++] = R0;
ffa00b46:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00b48:	d1 42       	R1 = R2.L (Z);
ffa00b4a:	08 91       	R0 = [P1];
ffa00b4c:	10 4e       	R0 >>= 0x2;
ffa00b4e:	81 09       	CC = R1 < R0 (IU);
ffa00b50:	f8 1f       	IF CC JUMP 0xffa00b40 <_getRadioPacket+0x13c> (BP);
ffa00b52:	00 91       	R0 = [P0];
ffa00b54:	08 64       	R0 += 0x1;		/* (  1) */
ffa00b56:	00 93       	[P0] = R0;
ffa00b58:	00 e3 e2 08 	CALL 0xffa01d1c <_bfin_EMAC_send_nocopy>;
ffa00b5c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b5e:	28 93       	[P5] = R0;
ffa00b60:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00b62:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00b64:	23 e1 80 00 	R3 = 0x80 (X);		/*		R3=0x80(128) */
ffa00b68:	09 64       	R1 += 0x1;		/* (  1) */
ffa00b6a:	c8 42       	R0 = R1.L (Z);
ffa00b6c:	18 08       	CC = R0 == R3;
ffa00b6e:	2a 92       	[P5++] = R2;
ffa00b70:	fc 17       	IF !CC JUMP 0xffa00b68 <_getRadioPacket+0x164> (BP);
ffa00b72:	05 32       	P0 = R5;
ffa00b74:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bac(-4191316) */
ffa00b78:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa00b7c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00b80:	10 97       	W[P2] = R0;
ffa00b82:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b84:	00 93       	[P0] = R0;
ffa00b86:	01 e8 00 00 	UNLINK;
ffa00b8a:	a3 05       	(R7:4, P5:3) = [SP++];
ffa00b8c:	10 00       	RTS;
ffa00b8e:	e0 b9       	R0 = [FP -0x8];
ffa00b90:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00b94:	ff e3 f8 fb 	CALL 0xffa00384 <_radio_set_tx>;
ffa00b98:	24 00       	SSYNC;
ffa00b9a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00b9e:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa00ba2:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff901504 */
ffa00ba6:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00baa:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa00bae:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa00bb2:	0c e1 d4 0b 	P4.L = 0xbd4;		/* (3028)	P4=0xff900bd4 <_g_outpkt> */
ffa00bb6:	14 97       	W[P2] = R4;
ffa00bb8:	5c 32       	P3 = P4;
ffa00bba:	28 97       	W[P5] = R0;
ffa00bbc:	ff e3 f6 fa 	CALL 0xffa001a8 <_spi_delay>;
ffa00bc0:	03 6d       	P3 += 0x20;		/* ( 32) */
ffa00bc2:	00 00       	NOP;
ffa00bc4:	20 98       	R0 = B[P4++] (Z);
ffa00bc6:	28 97       	W[P5] = R0;
ffa00bc8:	ff e3 f0 fa 	CALL 0xffa001a8 <_spi_delay>;
ffa00bcc:	5c 08       	CC = P4 == P3;
ffa00bce:	fa 17       	IF !CC JUMP 0xffa00bc2 <_getRadioPacket+0x1be> (BP);
ffa00bd0:	04 30       	R0 = R4;
ffa00bd2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00bd6:	50 4a       	BITSET (R0, 0xa);		/* bit 10 */
ffa00bd8:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00bdc:	10 97       	W[P2] = R0;
ffa00bde:	24 00       	SSYNC;
ffa00be0:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00be2:	50 95       	R0 = W[P2] (X);
ffa00be4:	79 e5 fa ff 	R1 = W[FP + -0xc] (X);
ffa00be8:	01 54       	R0 = R1 & R0;
ffa00bea:	c0 42       	R0 = R0.L (Z);
ffa00bec:	00 0c       	CC = R0 == 0x0;
ffa00bee:	0c 18       	IF CC JUMP 0xffa00c06 <_getRadioPacket+0x202>;
ffa00bf0:	6a 32       	P5 = P2;
ffa00bf2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00bf4:	ff e3 de fe 	CALL 0xffa009b0 <_eth_listen>;
ffa00bf8:	68 95       	R0 = W[P5] (X);
ffa00bfa:	7b e5 fa ff 	R3 = W[FP + -0xc] (X);
ffa00bfe:	18 54       	R0 = R0 & R3;
ffa00c00:	c0 42       	R0 = R0.L (Z);
ffa00c02:	00 0c       	CC = R0 == 0x0;
ffa00c04:	f7 17       	IF !CC JUMP 0xffa00bf2 <_getRadioPacket+0x1ee> (BP);
ffa00c06:	e0 b9       	R0 = [FP -0x8];
ffa00c08:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00c0a:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00c0e:	ff e3 e7 fa 	CALL 0xffa001dc <_spi_write_register>;
ffa00c12:	e0 b9       	R0 = [FP -0x8];
ffa00c14:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00c18:	ff e3 88 fb 	CALL 0xffa00328 <_radio_set_rx>;
ffa00c1c:	68 2f       	JUMP.S 0xffa00aec <_getRadioPacket+0xe8>;
ffa00c1e:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00c20:	99 2f       	JUMP.S 0xffa00b52 <_getRadioPacket+0x14e>;
ffa00c22:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00c26:	0a e1 a8 0b 	P2.L = 0xba8;		/* (2984)	P2=0xff900ba8 <_trptr> */
ffa00c2a:	10 91       	R0 = [P2];
ffa00c2c:	08 64       	R0 += 0x1;		/* (  1) */
ffa00c2e:	10 93       	[P2] = R0;
ffa00c30:	a1 2f       	JUMP.S 0xffa00b72 <_getRadioPacket+0x16e>;
	...

ffa00c34 <_main>:
ffa00c34:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ba8(-4191320) */
ffa00c38:	e5 05       	[--SP] = (R7:4, P5:5);
ffa00c3a:	20 e1 9c c1 	R0 = -0x3e64 (X);		/*		R0=0xffffc19c(-15972) */
ffa00c3e:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00c42:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00c46:	10 97       	W[P2] = R0;
ffa00c48:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa00c4c:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa00c4e:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa00c52:	12 97       	W[P2] = R2;
ffa00c54:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa00c58:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00c5a:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa00c5e:	10 97       	W[P2] = R0;
ffa00c60:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa00c64:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa00c66:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa00c6a:	10 97       	W[P2] = R0;
ffa00c6c:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa00c70:	a2 6f       	P2 += -0xc;		/* (-12) */
ffa00c72:	10 97       	W[P2] = R0;
ffa00c74:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa00c78:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00c7a:	10 97       	W[P2] = R0;
ffa00c7c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00c7e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00c80:	11 97       	W[P2] = R1;
ffa00c82:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00ba8(-4191320) */
ffa00c86:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa00c8a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00bf4(-4191244) */
ffa00c8e:	09 e1 0c 04 	P1.L = 0x40c;		/* (1036)	P1=0xffc0040c(-4193268) */
ffa00c92:	08 e1 04 04 	P0.L = 0x404;		/* (1028)	P0=0xffc00404(-4193276) */
ffa00c96:	0a e1 10 04 	P2.L = 0x410;		/* (1040)	P2=0xffc00410(-4193264) */
ffa00c9a:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa00c9e:	01 97       	W[P0] = R1;
ffa00ca0:	11 97       	W[P2] = R1;
ffa00ca2:	08 97       	W[P1] = R0;
ffa00ca4:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00ca6:	20 e1 88 00 	R0 = 0x88 (X);		/*		R0=0x88(136) */
ffa00caa:	10 97       	W[P2] = R0;
ffa00cac:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00cae:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00cb0:	01 97       	W[P0] = R1;
ffa00cb2:	0a 97       	W[P1] = R2;
ffa00cb4:	10 97       	W[P2] = R0;
ffa00cb6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00cb8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900410 */
ffa00cbc:	b8 4f       	R0 <<= 0x17;
ffa00cbe:	0a e1 f4 0d 	P2.L = 0xdf4;		/* (3572)	P2=0xff900df4 <_printf_temp> */
ffa00cc2:	10 93       	[P2] = R0;
ffa00cc4:	20 e1 01 e0 	R0 = -0x1fff (X);		/*		R0=0xffffe001(-8191) */
ffa00cc8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900df4 <_printf_temp> */
ffa00ccc:	0a e1 f8 0d 	P2.L = 0xdf8;		/* (3576)	P2=0xff900df8 <_printf_out> */
ffa00cd0:	50 4f       	R0 <<= 0xa;
ffa00cd2:	10 93       	[P2] = R0;
ffa00cd4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90e001(-7282687) */
ffa00cd8:	21 e1 80 01 	R1 = 0x180 (X);		/*		R1=0x180(384) */
ffa00cdc:	00 e1 7c 00 	R0.L = 0x7c;		/* (124)	R0=0xff90007c(-7339908) */
ffa00ce0:	00 e3 d6 02 	CALL 0xffa0128c <_printf_int>;
ffa00ce4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa00ce8:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00cec:	00 e3 0e 02 	CALL 0xffa01108 <_printf_str>;
ffa00cf0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa00cf4:	00 e1 8c 00 	R0.L = 0x8c;		/* (140)	R0=0xff90008c(-7339892) */
ffa00cf8:	00 e3 08 02 	CALL 0xffa01108 <_printf_str>;
ffa00cfc:	49 e1 40 00 	P1.H = 0x40;		/* ( 64)	P1=0x40040c */
ffa00d00:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa00d02:	22 e1 ca de 	R2 = -0x2136 (X);		/*		R2=0xffffdeca(-8502) */
ffa00d06:	23 e1 ad fb 	R3 = -0x453 (X);		/*		R3=0xfffffbad(-1107) */
ffa00d0a:	20 e1 ed c0 	R0 = -0x3f13 (X);		/*		R0=0xffffc0ed(-16147) */
ffa00d0e:	21 e1 be ba 	R1 = -0x4542 (X);		/*		R1=0xffffbabe(-17730) */
ffa00d12:	09 e1 00 00 	P1.L = 0x0;		/* (  0)	P1=0x400000 */
ffa00d16:	b2 e0 06 10 	LSETUP(0xffa00d1a <_main+0xe6>, 0xffa00d22 <_main+0xee>) LC1 = P1;
ffa00d1a:	12 97       	W[P2] = R2;
ffa00d1c:	53 b4       	W[P2 + 0x2] = R3;
ffa00d1e:	90 b4       	W[P2 + 0x4] = R0;
ffa00d20:	d1 b4       	W[P2 + 0x6] = R1;
ffa00d22:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00d24:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00d26:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00d28:	02 20       	JUMP.S 0xffa00d2c <_main+0xf8>;
ffa00d2a:	45 6c       	P5 += 0x8;		/* (  8) */
ffa00d2c:	2f 95       	R7 = W[P5] (Z);
ffa00d2e:	80 e1 ca de 	R0 = 0xdeca (Z);		/*		R0=0xdeca(57034) */
ffa00d32:	07 08       	CC = R7 == R0;
ffa00d34:	15 18       	IF CC JUMP 0xffa00d5e <_main+0x12a>;
ffa00d36:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90deca(-7282998) */
ffa00d3a:	0e 30       	R1 = R6;
ffa00d3c:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00d40:	00 e3 4a 02 	CALL 0xffa011d4 <_printf_hex>;
ffa00d44:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00d48:	00 e1 ac 00 	R0.L = 0xac;		/* (172)	R0=0xff9000ac(-7339860) */
ffa00d4c:	0f 30       	R1 = R7;
ffa00d4e:	00 e3 43 02 	CALL 0xffa011d4 <_printf_hex>;
ffa00d52:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000ac(-7339860) */
ffa00d56:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00d5a:	00 e3 d7 01 	CALL 0xffa01108 <_printf_str>;
ffa00d5e:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa00d60:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa00d64:	08 08       	CC = R0 == R1;
ffa00d66:	08 18       	IF CC JUMP 0xffa00d76 <_main+0x142>;
ffa00d68:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa00d6c:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00d70:	0e 30       	R1 = R6;
ffa00d72:	00 e3 31 02 	CALL 0xffa011d4 <_printf_hex>;
ffa00d76:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa00d78:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa00d7c:	08 08       	CC = R0 == R1;
ffa00d7e:	08 18       	IF CC JUMP 0xffa00d8e <_main+0x15a>;
ffa00d80:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00d84:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00d88:	0e 30       	R1 = R6;
ffa00d8a:	00 e3 25 02 	CALL 0xffa011d4 <_printf_hex>;
ffa00d8e:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa00d90:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa00d94:	08 08       	CC = R0 == R1;
ffa00d96:	08 18       	IF CC JUMP 0xffa00da6 <_main+0x172>;
ffa00d98:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00d9c:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00da0:	0e 30       	R1 = R6;
ffa00da2:	00 e3 19 02 	CALL 0xffa011d4 <_printf_hex>;
ffa00da6:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa00daa:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa00dae:	55 08       	CC = P5 == P2;
ffa00db0:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00db2:	bc 17       	IF !CC JUMP 0xffa00d2a <_main+0xf6> (BP);
ffa00db4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00db8:	00 e1 b4 00 	R0.L = 0xb4;		/* (180)	R0=0xff9000b4(-7339852) */
ffa00dbc:	00 e3 a6 01 	CALL 0xffa01108 <_printf_str>;
ffa00dc0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0fff8(-4128776) */
ffa00dc4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00dc6:	0a e1 84 06 	P2.L = 0x684;		/* (1668)	P2=0xffc00684(-4192636) */
ffa00dca:	10 97       	W[P2] = R0;
ffa00dcc:	24 00       	SSYNC;
ffa00dce:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800684 */
ffa00dd2:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00dd6:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00dd8:	16 93       	[P2] = R6;
ffa00dda:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa00dde:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa00de2:	0a e1 50 06 	P2.L = 0x650;		/* (1616)	P2=0xffc00650(-4192688) */
ffa00de6:	10 97       	W[P2] = R0;
ffa00de8:	20 e1 09 3d 	R0 = 0x3d09 (X);		/*		R0=0x3d09(15625) */
ffa00dec:	18 4f       	R0 <<= 0x3;
ffa00dee:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00df0:	10 93       	[P2] = R0;
ffa00df2:	80 e1 24 f4 	R0 = 0xf424 (Z);		/*		R0=0xf424(62500) */
ffa00df6:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00df8:	10 93       	[P2] = R0;
ffa00dfa:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00dfc:	50 95       	R0 = W[P2] (X);
ffa00dfe:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa00e00:	10 97       	W[P2] = R0;
ffa00e02:	00 e3 c3 0c 	CALL 0xffa02788 <_bfin_EMAC_init>;
ffa00e06:	00 0c       	CC = R0 == 0x0;
ffa00e08:	20 30       	R4 = R0;
ffa00e0a:	22 19       	IF CC JUMP 0xffa0104e <_main+0x41a>;
ffa00e0c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00650(-4192688) */
ffa00e10:	20 e1 87 38 	R0 = 0x3887 (X);		/*		R0=0x3887(14471) */
ffa00e14:	0a e1 00 32 	P2.L = 0x3200;		/* (12800)	P2=0xffc03200(-4181504) */
ffa00e18:	10 97       	W[P2] = R0;
ffa00e1a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03200(-4181504) */
ffa00e1e:	20 e1 56 fe 	R0 = -0x1aa (X);		/*		R0=0xfffffe56(-426) */
ffa00e22:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa00e26:	10 97       	W[P2] = R0;
ffa00e28:	20 e1 a9 01 	R0 = 0x1a9 (X);		/*		R0=0x1a9(425) */
ffa00e2c:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa00e2e:	10 97       	W[P2] = R0;
ffa00e30:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa00e34:	20 e1 40 01 	R0 = 0x140 (X);		/*		R0=0x140(320) */
ffa00e38:	0a e1 10 32 	P2.L = 0x3210;		/* (12816)	P2=0xffc03210(-4181488) */
ffa00e3c:	10 97       	W[P2] = R0;
ffa00e3e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03210(-4181488) */
ffa00e42:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa00e46:	50 95       	R0 = W[P2] (X);
ffa00e48:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00e4a:	10 97       	W[P2] = R0;
ffa00e4c:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00e4e:	50 95       	R0 = W[P2] (X);
ffa00e50:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa00e52:	10 97       	W[P2] = R0;
ffa00e54:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa00e58:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00e5c:	50 95       	R0 = W[P2] (X);
ffa00e5e:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00e60:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00000(-4194304) */
ffa00e64:	10 97       	W[P2] = R0;
ffa00e66:	09 e1 00 09 	P1.L = 0x900;		/* (2304)	P1=0xffc00900(-4192000) */
ffa00e6a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00e6c:	08 97       	W[P1] = R0;
ffa00e6e:	24 00       	SSYNC;
ffa00e70:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903204 */
ffa00e74:	0a e1 c8 0b 	P2.L = 0xbc8;		/* (3016)	P2=0xff900bc8 <_g_sampR> */
ffa00e78:	16 93       	[P2] = R6;
ffa00e7a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bc8 <_g_sampR> */
ffa00e7e:	0a e1 b0 0b 	P2.L = 0xbb0;		/* (2992)	P2=0xff900bb0 <_g_sampW> */
ffa00e82:	16 93       	[P2] = R6;
ffa00e84:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb0 <_g_sampW> */
ffa00e88:	0a e1 d0 0b 	P2.L = 0xbd0;		/* (3024)	P2=0xff900bd0 <_g_sampOff> */
ffa00e8c:	16 93       	[P2] = R6;
ffa00e8e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bd0 <_g_sampOff> */
ffa00e92:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00e94:	0a e1 a4 0b 	P2.L = 0xba4;		/* (2980)	P2=0xff900ba4 <_g_sampMode> */
ffa00e98:	10 9b       	B[P2] = R0;
ffa00e9a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00e9c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba4 <_g_sampMode> */
ffa00ea0:	d8 4f       	R0 <<= 0x1b;
ffa00ea2:	0a e1 b4 0b 	P2.L = 0xbb4;		/* (2996)	P2=0xff900bb4 <_g_sampInc> */
ffa00ea6:	10 93       	[P2] = R0;
ffa00ea8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb4 <_g_sampInc> */
ffa00eac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00eae:	0a e1 c4 0b 	P2.L = 0xbc4;		/* (3012)	P2=0xff900bc4 <_g_sampCh> */
ffa00eb2:	10 9b       	B[P2] = R0;
ffa00eb4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bc4(-4191292) */
ffa00eb8:	e8 60       	R0 = 0x1d (X);		/*		R0=0x1d( 29) */
ffa00eba:	0a e1 08 09 	P2.L = 0x908;		/* (2312)	P2=0xffc00908(-4191992) */
ffa00ebe:	10 97       	W[P2] = R0;
ffa00ec0:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa00ec2:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00ec4:	10 97       	W[P2] = R0;
ffa00ec6:	b8 60       	R0 = 0x17 (X);		/*		R0=0x17( 23) */
ffa00ec8:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00eca:	10 97       	W[P2] = R0;
ffa00ecc:	20 e1 03 4e 	R0 = 0x4e03 (X);		/*		R0=0x4e03(19971) */
ffa00ed0:	08 97       	W[P1] = R0;
ffa00ed2:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe00908(-2094840) */
ffa00ed6:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa04e03(-6271485) */
ffa00eda:	00 e1 44 05 	R0.L = 0x544;		/* (1348)	R0=0xffa00544 <_audio_out>(-6290108) */
ffa00ede:	0a e1 1c 20 	P2.L = 0x201c;		/* (8220)	P2=0xffe0201c(-2088932) */
ffa00ee2:	10 93       	[P2] = R0;
ffa00ee4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0201c(-4186084) */
ffa00ee8:	27 e1 00 02 	R7 = 0x200 (X);		/*		R7=0x200(512) */
ffa00eec:	0a e1 0c 01 	P2.L = 0x10c;		/* (268)	P2=0xffc0010c(-4194036) */
ffa00ef0:	17 93       	[P2] = R7;
ffa00ef2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90010c */
ffa00ef6:	0a e1 ac 0b 	P2.L = 0xbac;		/* (2988)	P2=0xff900bac <_wrptr> */
ffa00efa:	16 93       	[P2] = R6;
ffa00efc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bac <_wrptr> */
ffa00f00:	0a e1 a8 0b 	P2.L = 0xba8;		/* (2984)	P2=0xff900ba8 <_trptr> */
ffa00f04:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900544(-7338684) */
ffa00f08:	16 93       	[P2] = R6;
ffa00f0a:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa00f0e:	00 e3 fd 00 	CALL 0xffa01108 <_printf_str>;
ffa00f12:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ba8(-4191320) */
ffa00f16:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa00f1a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00f1e:	10 97       	W[P2] = R0;
ffa00f20:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa00f24:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00f26:	10 97       	W[P2] = R0;
ffa00f28:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00f2c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa00f2e:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00f32:	10 97       	W[P2] = R0;
ffa00f34:	24 00       	SSYNC;
ffa00f36:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa00f38:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00f3a:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa00f3c:	ff e3 86 fa 	CALL 0xffa00448 <_radio_init>;
ffa00f40:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa00f42:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00f44:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa00f48:	ff e3 80 fa 	CALL 0xffa00448 <_radio_init>;
ffa00f4c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00f4e:	07 30       	R0 = R7;
ffa00f50:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa00f54:	ff e3 7a fa 	CALL 0xffa00448 <_radio_init>;
ffa00f58:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa00f5a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00f5c:	ff e3 e6 f9 	CALL 0xffa00328 <_radio_set_rx>;
ffa00f60:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa00f64:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00f66:	ff e3 e1 f9 	CALL 0xffa00328 <_radio_set_rx>;
ffa00f6a:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa00f6e:	07 30       	R0 = R7;
ffa00f70:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00f74:	46 e1 62 10 	R6.H = 0x1062;		/* (4194)	R6=0x10620000(274857984) */
ffa00f78:	ff e3 d8 f9 	CALL 0xffa00328 <_radio_set_rx>;
ffa00f7c:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa00f7e:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa00f80:	0d e1 00 07 	P5.L = 0x700;		/* (1792)	P5=0xffc00700(-4192512) */
ffa00f84:	06 e1 d3 4d 	R6.L = 0x4dd3;		/* (19923)	R6=0x10624dd3(274877907) */
ffa00f88:	04 30       	R0 = R4;
ffa00f8a:	ff e3 13 fd 	CALL 0xffa009b0 <_eth_listen>;
ffa00f8e:	68 95       	R0 = W[P5] (X);
ffa00f90:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa00f92:	42 18       	IF CC JUMP 0xffa01016 <_main+0x3e2>;
ffa00f94:	00 00       	NOP;
ffa00f96:	00 00       	NOP;
ffa00f98:	00 00       	NOP;
ffa00f9a:	68 95       	R0 = W[P5] (X);
ffa00f9c:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00f9e:	45 18       	IF CC JUMP 0xffa01028 <_main+0x3f4>;
ffa00fa0:	00 00       	NOP;
ffa00fa2:	00 00       	NOP;
ffa00fa4:	00 00       	NOP;
ffa00fa6:	68 95       	R0 = W[P5] (X);
ffa00fa8:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa00faa:	49 18       	IF CC JUMP 0xffa0103c <_main+0x408>;
ffa00fac:	20 e1 28 01 	R0 = 0x128 (X);		/*		R0=0x128(296) */
ffa00fb0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00fb4:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00fb8:	69 95       	R1 = W[P5] (X);
ffa00fba:	08 54       	R0 = R0 & R1;
ffa00fbc:	21 e1 28 01 	R1 = 0x128 (X);		/*		R1=0x128(296) */
ffa00fc0:	08 08       	CC = R0 == R1;
ffa00fc2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00fc4:	38 07       	IF CC R7 = R0;
ffa00fc6:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa00fca:	10 97       	W[P2] = R0;
ffa00fcc:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800708 */
ffa00fd0:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00fd4:	10 91       	R0 = [P2];
ffa00fd6:	80 c0 06 18 	A1 = R0.L * R6.L (FU);
ffa00fda:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00fde:	81 c0 06 86 	A1 += R0.H * R6.L, A0 = R0.H * R6.H (FU);
ffa00fe2:	81 c0 30 98 	A1 += R6.H * R0.L (FU);
ffa00fe6:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00fea:	0b c4 00 80 	A0 += A1;
ffa00fee:	8b c0 00 38 	R0 = A0 (FU);
ffa00ff2:	82 c6 d0 83 	R1 = R0 >> 0x6;
ffa00ff6:	0d 08       	CC = R5 == R1;
ffa00ff8:	c8 1b       	IF CC JUMP 0xffa00f88 <_main+0x354>;
ffa00ffa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa00ffe:	20 e1 00 80 	R0 = -0x8000 (X);		/*		R0=0xffff8000(-32768) */
ffa01002:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa01006:	10 97       	W[P2] = R0;
ffa01008:	04 30       	R0 = R4;
ffa0100a:	29 30       	R5 = R1;
ffa0100c:	ff e3 d2 fc 	CALL 0xffa009b0 <_eth_listen>;
ffa01010:	68 95       	R0 = W[P5] (X);
ffa01012:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01014:	c2 17       	IF !CC JUMP 0xffa00f98 <_main+0x364> (BP);
ffa01016:	7a 43       	R2 = R7.B (Z);
ffa01018:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0101a:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa0101c:	ff e3 f4 fc 	CALL 0xffa00a04 <_getRadioPacket>;
ffa01020:	68 95       	R0 = W[P5] (X);
ffa01022:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01024:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01026:	bf 17       	IF !CC JUMP 0xffa00fa4 <_main+0x370> (BP);
ffa01028:	7a 43       	R2 = R7.B (Z);
ffa0102a:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa0102e:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa01030:	ff e3 ea fc 	CALL 0xffa00a04 <_getRadioPacket>;
ffa01034:	68 95       	R0 = W[P5] (X);
ffa01036:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa01038:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0103a:	b9 17       	IF !CC JUMP 0xffa00fac <_main+0x378> (BP);
ffa0103c:	7a 43       	R2 = R7.B (Z);
ffa0103e:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01042:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa01046:	ff e3 df fc 	CALL 0xffa00a04 <_getRadioPacket>;
ffa0104a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0104c:	b0 2f       	JUMP.S 0xffa00fac <_main+0x378>;
ffa0104e:	00 e3 6f 0d 	CALL 0xffa02b2c <_DHCP_req>;
ffa01052:	dd 2e       	JUMP.S 0xffa00e0c <_main+0x1d8>;

ffa01054 <_uart_str>:
ffa01054:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa01058:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0105c:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa01060:	08 32       	P1 = R0;
ffa01062:	50 95       	R0 = W[P2] (X);
ffa01064:	c0 42       	R0 = R0.L (Z);
ffa01066:	08 0c       	CC = R0 == 0x1;
ffa01068:	06 18       	IF CC JUMP 0xffa01074 <_uart_str+0x20>;
ffa0106a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0106c:	02 30       	R0 = R2;
ffa0106e:	01 e8 00 00 	UNLINK;
ffa01072:	10 00       	RTS;
ffa01074:	48 99       	R0 = B[P1] (X);
ffa01076:	01 43       	R1 = R0.B (X);
ffa01078:	01 0c       	CC = R1 == 0x0;
ffa0107a:	f8 1b       	IF CC JUMP 0xffa0106a <_uart_str+0x16>;
ffa0107c:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa01080:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01082:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01084:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa01088:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa0108c:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa0108e:	b2 e0 1c 00 	LSETUP(0xffa01092 <_uart_str+0x3e>, 0xffa010c6 <_uart_str+0x72>) LC1 = P0;
ffa01092:	19 08       	CC = R1 == R3;
ffa01094:	1b 18       	IF CC JUMP 0xffa010ca <_uart_str+0x76>;
ffa01096:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa0109a:	00 43       	R0 = R0.B (X);
ffa0109c:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa010a0:	10 97       	W[P2] = R0;
ffa010a2:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa010a4:	50 95       	R0 = W[P2] (X);
ffa010a6:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa010a8:	0a 10       	IF !CC JUMP 0xffa010bc <_uart_str+0x68>;
ffa010aa:	00 00       	NOP;
ffa010ac:	00 00       	NOP;
ffa010ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa010b2:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa010b6:	50 95       	R0 = W[P2] (X);
ffa010b8:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa010ba:	f9 1f       	IF CC JUMP 0xffa010ac <_uart_str+0x58> (BP);
ffa010bc:	48 99       	R0 = B[P1] (X);
ffa010be:	01 43       	R1 = R0.B (X);
ffa010c0:	01 0c       	CC = R1 == 0x0;
ffa010c2:	0a 64       	R2 += 0x1;		/* (  1) */
ffa010c4:	d4 1b       	IF CC JUMP 0xffa0106c <_uart_str+0x18>;
ffa010c6:	09 6c       	P1 += 0x1;		/* (  1) */
ffa010c8:	d2 2f       	JUMP.S 0xffa0106c <_uart_str+0x18>;
ffa010ca:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa010cc:	20 9f       	W[I0] = R0.L;
ffa010ce:	02 20       	JUMP.S 0xffa010d2 <_uart_str+0x7e>;
ffa010d0:	00 00       	NOP;
ffa010d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa010d6:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa010da:	50 95       	R0 = W[P2] (X);
ffa010dc:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa010de:	f9 1f       	IF CC JUMP 0xffa010d0 <_uart_str+0x7c> (BP);
ffa010e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa010e4:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa010e6:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa010ea:	10 97       	W[P2] = R0;
ffa010ec:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa010ee:	50 95       	R0 = W[P2] (X);
ffa010f0:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa010f2:	e5 13       	IF !CC JUMP 0xffa010bc <_uart_str+0x68>;
ffa010f4:	00 00       	NOP;
ffa010f6:	00 00       	NOP;
ffa010f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa010fc:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa01100:	50 95       	R0 = W[P2] (X);
ffa01102:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01104:	f9 1f       	IF CC JUMP 0xffa010f6 <_uart_str+0xa2> (BP);
ffa01106:	db 2f       	JUMP.S 0xffa010bc <_uart_str+0x68>;

ffa01108 <_printf_str>:
ffa01108:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0110c:	01 e8 00 00 	UNLINK;
ffa01110:	ff e2 a2 ff 	JUMP.L 0xffa01054 <_uart_str>;

ffa01114 <_printf_newline>:
ffa01114:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01118:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa0111c:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa01120:	01 e8 00 00 	UNLINK;
ffa01124:	ff e2 98 ff 	JUMP.L 0xffa01054 <_uart_str>;

ffa01128 <_printf_hex_byte>:
ffa01128:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0112a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0112e:	28 32       	P5 = R0;
ffa01130:	39 30       	R7 = R1;
ffa01132:	00 e3 b1 01 	CALL 0xffa01494 <_strlen_>;
ffa01136:	10 30       	R2 = R0;
ffa01138:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa0113c:	02 09       	CC = R2 <= R0;
ffa0113e:	41 10       	IF !CC JUMP 0xffa011c0 <_printf_hex_byte+0x98>;
ffa01140:	02 0d       	CC = R2 <= 0x0;
ffa01142:	44 18       	IF CC JUMP 0xffa011ca <_printf_hex_byte+0xa2>;
ffa01144:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa01148:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0114a:	08 e1 f8 0d 	P0.L = 0xdf8;		/* (3576)	P0=0xff900df8 <_printf_out> */
ffa0114e:	09 32       	P1 = R1;
ffa01150:	42 91       	P2 = [P0];
ffa01152:	09 64       	R1 += 0x1;		/* (  1) */
ffa01154:	68 98       	R0 = B[P5++] (X);
ffa01156:	0a 08       	CC = R2 == R1;
ffa01158:	8a 5a       	P2 = P2 + P1;
ffa0115a:	10 9b       	B[P2] = R0;
ffa0115c:	f9 17       	IF !CC JUMP 0xffa0114e <_printf_hex_byte+0x26> (BP);
ffa0115e:	0a 32       	P1 = R2;
ffa01160:	42 91       	P2 = [P0];
ffa01162:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01164:	22 32       	P4 = R2;
ffa01166:	79 43       	R1 = R7.B (Z);
ffa01168:	8a 5a       	P2 = P2 + P1;
ffa0116a:	10 9b       	B[P2] = R0;
ffa0116c:	42 91       	P2 = [P0];
ffa0116e:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa01170:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01174:	11 6c       	P1 += 0x2;		/* (  2) */
ffa01176:	a2 5a       	P2 = P2 + P4;
ffa01178:	10 9b       	B[P2] = R0;
ffa0117a:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa0117c:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa0117e:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa01180:	01 30       	R0 = R1;
ffa01182:	10 40       	R0 >>>= R2;
ffa01184:	18 54       	R0 = R0 & R3;
ffa01186:	38 09       	CC = R0 <= R7;
ffa01188:	1a 1c       	IF CC JUMP 0xffa011bc <_printf_hex_byte+0x94> (BP);
ffa0118a:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa0118c:	42 91       	P2 = [P0];
ffa0118e:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa01190:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900700 */
ffa01194:	22 0c       	CC = R2 == -0x4;
ffa01196:	8a 5a       	P2 = P2 + P1;
ffa01198:	0d e1 f8 0d 	P5.L = 0xdf8;		/* (3576)	P5=0xff900df8 <_printf_out> */
ffa0119c:	10 9b       	B[P2] = R0;
ffa0119e:	09 6c       	P1 += 0x1;		/* (  1) */
ffa011a0:	f0 17       	IF !CC JUMP 0xffa01180 <_printf_hex_byte+0x58> (BP);
ffa011a2:	6a 91       	P2 = [P5];
ffa011a4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa011a6:	94 5a       	P2 = P4 + P2;
ffa011a8:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa011ac:	28 91       	R0 = [P5];
ffa011ae:	ff e3 53 ff 	CALL 0xffa01054 <_uart_str>;
ffa011b2:	01 e8 00 00 	UNLINK;
ffa011b6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa011b8:	bc 05       	(R7:7, P5:4) = [SP++];
ffa011ba:	10 00       	RTS;
ffa011bc:	80 65       	R0 += 0x30;		/* ( 48) */
ffa011be:	e7 2f       	JUMP.S 0xffa0118c <_printf_hex_byte+0x64>;
ffa011c0:	01 e8 00 00 	UNLINK;
ffa011c4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa011c6:	bc 05       	(R7:7, P5:4) = [SP++];
ffa011c8:	10 00       	RTS;
ffa011ca:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900df8 <_printf_out> */
ffa011ce:	08 e1 f8 0d 	P0.L = 0xdf8;		/* (3576)	P0=0xff900df8 <_printf_out> */
ffa011d2:	c6 2f       	JUMP.S 0xffa0115e <_printf_hex_byte+0x36>;

ffa011d4 <_printf_hex>:
ffa011d4:	fb 05       	[--SP] = (R7:7, P5:3);
ffa011d6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa011da:	28 32       	P5 = R0;
ffa011dc:	39 30       	R7 = R1;
ffa011de:	00 e3 5b 01 	CALL 0xffa01494 <_strlen_>;
ffa011e2:	10 30       	R2 = R0;
ffa011e4:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa011e8:	02 09       	CC = R2 <= R0;
ffa011ea:	47 10       	IF !CC JUMP 0xffa01278 <_printf_hex+0xa4>;
ffa011ec:	02 0d       	CC = R2 <= 0x0;
ffa011ee:	4a 18       	IF CC JUMP 0xffa01282 <_printf_hex+0xae>;
ffa011f0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900900 */
ffa011f4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa011f6:	09 e1 f8 0d 	P1.L = 0xdf8;		/* (3576)	P1=0xff900df8 <_printf_out> */
ffa011fa:	01 32       	P0 = R1;
ffa011fc:	4a 91       	P2 = [P1];
ffa011fe:	09 64       	R1 += 0x1;		/* (  1) */
ffa01200:	68 98       	R0 = B[P5++] (X);
ffa01202:	0a 08       	CC = R2 == R1;
ffa01204:	82 5a       	P2 = P2 + P0;
ffa01206:	10 9b       	B[P2] = R0;
ffa01208:	f9 17       	IF !CC JUMP 0xffa011fa <_printf_hex+0x26> (BP);
ffa0120a:	02 32       	P0 = R2;
ffa0120c:	4a 91       	P2 = [P1];
ffa0120e:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01210:	1a 32       	P3 = R2;
ffa01212:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa01214:	82 5a       	P2 = P2 + P0;
ffa01216:	10 9b       	B[P2] = R0;
ffa01218:	4a 91       	P2 = [P1];
ffa0121a:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa0121c:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01220:	10 6c       	P0 += 0x2;		/* (  2) */
ffa01222:	9a 5a       	P2 = P2 + P3;
ffa01224:	10 9b       	B[P2] = R0;
ffa01226:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa01228:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa0122a:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa0122c:	b2 e0 10 50 	LSETUP(0xffa01230 <_printf_hex+0x5c>, 0xffa0124c <_printf_hex+0x78>) LC1 = P5;
ffa01230:	07 30       	R0 = R7;
ffa01232:	08 40       	R0 >>>= R1;
ffa01234:	10 54       	R0 = R0 & R2;
ffa01236:	18 09       	CC = R0 <= R3;
ffa01238:	1e 1c       	IF CC JUMP 0xffa01274 <_printf_hex+0xa0> (BP);
ffa0123a:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa0123c:	4a 91       	P2 = [P1];
ffa0123e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900bd4 <_g_outpkt> */
ffa01242:	0c e1 f8 0d 	P4.L = 0xdf8;		/* (3576)	P4=0xff900df8 <_printf_out> */
ffa01246:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa01248:	82 5a       	P2 = P2 + P0;
ffa0124a:	10 9b       	B[P2] = R0;
ffa0124c:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0124e:	62 91       	P2 = [P4];
ffa01250:	4b 32       	P1 = P3;
ffa01252:	49 6c       	P1 += 0x9;		/* (  9) */
ffa01254:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01256:	8a 5a       	P2 = P2 + P1;
ffa01258:	10 9b       	B[P2] = R0;
ffa0125a:	62 91       	P2 = [P4];
ffa0125c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0125e:	8a 5a       	P2 = P2 + P1;
ffa01260:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa01264:	20 91       	R0 = [P4];
ffa01266:	ff e3 f7 fe 	CALL 0xffa01054 <_uart_str>;
ffa0126a:	01 e8 00 00 	UNLINK;
ffa0126e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01270:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01272:	10 00       	RTS;
ffa01274:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01276:	e3 2f       	JUMP.S 0xffa0123c <_printf_hex+0x68>;
ffa01278:	01 e8 00 00 	UNLINK;
ffa0127c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0127e:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01280:	10 00       	RTS;
ffa01282:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900df8 <_printf_out> */
ffa01286:	09 e1 f8 0d 	P1.L = 0xdf8;		/* (3576)	P1=0xff900df8 <_printf_out> */
ffa0128a:	c0 2f       	JUMP.S 0xffa0120a <_printf_hex+0x36>;

ffa0128c <_printf_int>:
ffa0128c:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0128e:	01 0c       	CC = R1 == 0x0;
ffa01290:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01294:	28 32       	P5 = R0;
ffa01296:	39 30       	R7 = R1;
ffa01298:	41 14       	IF !CC JUMP 0xffa0131a <_printf_int+0x8e> (BP);
ffa0129a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bb0 <_g_sampW> */
ffa0129e:	0b e1 f4 0d 	P3.L = 0xdf4;		/* (3572)	P3=0xff900df4 <_printf_temp> */
ffa012a2:	5a 91       	P2 = [P3];
ffa012a4:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa012a6:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa012a8:	10 9b       	B[P2] = R0;
ffa012aa:	45 30       	R0 = P5;
ffa012ac:	00 e3 f4 00 	CALL 0xffa01494 <_strlen_>;
ffa012b0:	c6 50       	R3 = R6 + R0;
ffa012b2:	10 30       	R2 = R0;
ffa012b4:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa012b8:	03 09       	CC = R3 <= R0;
ffa012ba:	4e 10       	IF !CC JUMP 0xffa01356 <_printf_int+0xca>;
ffa012bc:	02 0d       	CC = R2 <= 0x0;
ffa012be:	79 18       	IF CC JUMP 0xffa013b0 <_printf_int+0x124>;
ffa012c0:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900df8 <_printf_out> */
ffa012c4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa012c6:	08 e1 f8 0d 	P0.L = 0xdf8;		/* (3576)	P0=0xff900df8 <_printf_out> */
ffa012ca:	09 32       	P1 = R1;
ffa012cc:	42 91       	P2 = [P0];
ffa012ce:	09 64       	R1 += 0x1;		/* (  1) */
ffa012d0:	68 98       	R0 = B[P5++] (X);
ffa012d2:	0a 08       	CC = R2 == R1;
ffa012d4:	8a 5a       	P2 = P2 + P1;
ffa012d6:	10 9b       	B[P2] = R0;
ffa012d8:	f9 17       	IF !CC JUMP 0xffa012ca <_printf_int+0x3e> (BP);
ffa012da:	06 0d       	CC = R6 <= 0x0;
ffa012dc:	12 18       	IF CC JUMP 0xffa01300 <_printf_int+0x74>;
ffa012de:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa012e0:	00 91       	R0 = [P0];
ffa012e2:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa012e6:	5a 91 00 00 
ffa012ea:	08 50       	R0 = R0 + R1;
ffa012ec:	08 32       	P1 = R0;
ffa012ee:	0e 52       	R0 = R6 - R1;
ffa012f0:	28 32       	P5 = R0;
ffa012f2:	09 64       	R1 += 0x1;		/* (  1) */
ffa012f4:	0e 08       	CC = R6 == R1;
ffa012f6:	aa 5a       	P2 = P2 + P5;
ffa012f8:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa012fc:	08 9b       	B[P1] = R0;
ffa012fe:	f1 17       	IF !CC JUMP 0xffa012e0 <_printf_int+0x54> (BP);
ffa01300:	0b 32       	P1 = R3;
ffa01302:	42 91       	P2 = [P0];
ffa01304:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01306:	91 5a       	P2 = P1 + P2;
ffa01308:	10 9b       	B[P2] = R0;
ffa0130a:	00 91       	R0 = [P0];
ffa0130c:	ff e3 a4 fe 	CALL 0xffa01054 <_uart_str>;
ffa01310:	01 e8 00 00 	UNLINK;
ffa01314:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01316:	b3 05       	(R7:6, P5:3) = [SP++];
ffa01318:	10 00       	RTS;
ffa0131a:	01 0d       	CC = R1 <= 0x0;
ffa0131c:	22 18       	IF CC JUMP 0xffa01360 <_printf_int+0xd4>;
ffa0131e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df4 <_printf_temp> */
ffa01322:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01324:	0b e1 f4 0d 	P3.L = 0xdf4;		/* (3572)	P3=0xff900df4 <_printf_temp> */
ffa01328:	05 20       	JUMP.S 0xffa01332 <_printf_int+0xa6>;
ffa0132a:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa0132e:	06 08       	CC = R6 == R0;
ffa01330:	bd 1b       	IF CC JUMP 0xffa012aa <_printf_int+0x1e>;
ffa01332:	07 30       	R0 = R7;
ffa01334:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01336:	00 e3 83 00 	CALL 0xffa0143c <_mod>;
ffa0133a:	0e 32       	P1 = R6;
ffa0133c:	5a 91       	P2 = [P3];
ffa0133e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01340:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01342:	0e 64       	R6 += 0x1;		/* (  1) */
ffa01344:	8a 5a       	P2 = P2 + P1;
ffa01346:	10 9b       	B[P2] = R0;
ffa01348:	07 30       	R0 = R7;
ffa0134a:	00 e3 6b 00 	CALL 0xffa01420 <_div>;
ffa0134e:	00 0d       	CC = R0 <= 0x0;
ffa01350:	38 30       	R7 = R0;
ffa01352:	ec 17       	IF !CC JUMP 0xffa0132a <_printf_int+0x9e> (BP);
ffa01354:	ab 2f       	JUMP.S 0xffa012aa <_printf_int+0x1e>;
ffa01356:	01 e8 00 00 	UNLINK;
ffa0135a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0135c:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0135e:	10 00       	RTS;
ffa01360:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01362:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa01364:	f8 4f       	R0 <<= 0x1f;
ffa01366:	f8 53       	R7 = R0 - R7;
ffa01368:	07 0d       	CC = R7 <= 0x0;
ffa0136a:	2c 18       	IF CC JUMP 0xffa013c2 <_printf_int+0x136>;
ffa0136c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df4 <_printf_temp> */
ffa01370:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa01372:	0b e1 f4 0d 	P3.L = 0xdf4;		/* (3572)	P3=0xff900df4 <_printf_temp> */
ffa01376:	05 20       	JUMP.S 0xffa01380 <_printf_int+0xf4>;
ffa01378:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa0137c:	4c 08       	CC = P4 == P1;
ffa0137e:	1e 18       	IF CC JUMP 0xffa013ba <_printf_int+0x12e>;
ffa01380:	07 30       	R0 = R7;
ffa01382:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01384:	00 e3 5c 00 	CALL 0xffa0143c <_mod>;
ffa01388:	5a 91       	P2 = [P3];
ffa0138a:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0138c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0138e:	a2 5a       	P2 = P2 + P4;
ffa01390:	10 9b       	B[P2] = R0;
ffa01392:	07 30       	R0 = R7;
ffa01394:	00 e3 46 00 	CALL 0xffa01420 <_div>;
ffa01398:	00 0d       	CC = R0 <= 0x0;
ffa0139a:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa0139c:	38 30       	R7 = R0;
ffa0139e:	ed 17       	IF !CC JUMP 0xffa01378 <_printf_int+0xec> (BP);
ffa013a0:	74 30       	R6 = P4;
ffa013a2:	4c 32       	P1 = P4;
ffa013a4:	0e 64       	R6 += 0x1;		/* (  1) */
ffa013a6:	5a 91       	P2 = [P3];
ffa013a8:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa013aa:	8a 5a       	P2 = P2 + P1;
ffa013ac:	10 9b       	B[P2] = R0;
ffa013ae:	7e 2f       	JUMP.S 0xffa012aa <_printf_int+0x1e>;
ffa013b0:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900df8 <_printf_out> */
ffa013b4:	08 e1 f8 0d 	P0.L = 0xdf8;		/* (3576)	P0=0xff900df8 <_printf_out> */
ffa013b8:	91 2f       	JUMP.S 0xffa012da <_printf_int+0x4e>;
ffa013ba:	4c 32       	P1 = P4;
ffa013bc:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa013c0:	f3 2f       	JUMP.S 0xffa013a6 <_printf_int+0x11a>;
ffa013c2:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df4 <_printf_temp> */
ffa013c6:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa013c8:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa013ca:	0b e1 f4 0d 	P3.L = 0xdf4;		/* (3572)	P3=0xff900df4 <_printf_temp> */
ffa013ce:	ec 2f       	JUMP.S 0xffa013a6 <_printf_int+0x11a>;

ffa013d0 <_printf_ip>:
ffa013d0:	70 05       	[--SP] = (R7:6);
ffa013d2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa013d6:	39 30       	R7 = R1;
ffa013d8:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa013dc:	49 43       	R1 = R1.B (Z);
ffa013de:	ff e3 57 ff 	CALL 0xffa0128c <_printf_int>;
ffa013e2:	06 e1 88 00 	R6.L = 0x88;		/* (136)	R6=0xff900088(-7339896) */
ffa013e6:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa013ea:	49 43       	R1 = R1.B (Z);
ffa013ec:	06 30       	R0 = R6;
ffa013ee:	ff e3 4f ff 	CALL 0xffa0128c <_printf_int>;
ffa013f2:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa013f6:	49 43       	R1 = R1.B (Z);
ffa013f8:	06 30       	R0 = R6;
ffa013fa:	c7 4e       	R7 >>= 0x18;
ffa013fc:	ff e3 48 ff 	CALL 0xffa0128c <_printf_int>;
ffa01400:	0f 30       	R1 = R7;
ffa01402:	06 30       	R0 = R6;
ffa01404:	ff e3 44 ff 	CALL 0xffa0128c <_printf_int>;
ffa01408:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa0140c:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa01410:	ff e3 7c fe 	CALL 0xffa01108 <_printf_str>;
ffa01414:	01 e8 00 00 	UNLINK;
ffa01418:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0141a:	30 05       	(R7:6) = [SP++];
ffa0141c:	10 00       	RTS;
	...

ffa01420 <_div>:
ffa01420:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01424:	08 4f       	R0 <<= 0x1;
ffa01426:	48 42       	DIVS (R0, R1);
ffa01428:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa0142a:	b2 e0 03 20 	LSETUP(0xffa0142e <_div+0xe>, 0xffa01430 <_div+0x10>) LC1 = P2;
ffa0142e:	08 42       	DIVQ (R0, R1);
ffa01430:	00 00       	NOP;
ffa01432:	80 42       	R0 = R0.L (X);
ffa01434:	01 e8 00 00 	UNLINK;
ffa01438:	10 00       	RTS;
	...

ffa0143c <_mod>:
ffa0143c:	70 05       	[--SP] = (R7:6);
ffa0143e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01442:	30 30       	R6 = R0;
ffa01444:	39 30       	R7 = R1;
ffa01446:	ff e3 ed ff 	CALL 0xffa01420 <_div>;
ffa0144a:	c7 40       	R7 *= R0;
ffa0144c:	01 e8 00 00 	UNLINK;
ffa01450:	be 53       	R6 = R6 - R7;
ffa01452:	06 30       	R0 = R6;
ffa01454:	30 05       	(R7:6) = [SP++];
ffa01456:	10 00       	RTS;

ffa01458 <_memcpy_>:
ffa01458:	02 0d       	CC = R2 <= 0x0;
ffa0145a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0145e:	08 32       	P1 = R0;
ffa01460:	11 32       	P2 = R1;
ffa01462:	08 18       	IF CC JUMP 0xffa01472 <_memcpy_+0x1a>;
ffa01464:	00 00       	NOP;
ffa01466:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01468:	09 64       	R1 += 0x1;		/* (  1) */
ffa0146a:	48 98       	R0 = B[P1++] (X);
ffa0146c:	0a 08       	CC = R2 == R1;
ffa0146e:	10 9a       	B[P2++] = R0;
ffa01470:	fc 17       	IF !CC JUMP 0xffa01468 <_memcpy_+0x10> (BP);
ffa01472:	01 e8 00 00 	UNLINK;
ffa01476:	10 00       	RTS;

ffa01478 <_memset_>:
ffa01478:	02 0d       	CC = R2 <= 0x0;
ffa0147a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0147e:	10 32       	P2 = R0;
ffa01480:	06 18       	IF CC JUMP 0xffa0148c <_memset_+0x14>;
ffa01482:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01484:	08 64       	R0 += 0x1;		/* (  1) */
ffa01486:	02 08       	CC = R2 == R0;
ffa01488:	11 9a       	B[P2++] = R1;
ffa0148a:	fd 17       	IF !CC JUMP 0xffa01484 <_memset_+0xc> (BP);
ffa0148c:	01 e8 00 00 	UNLINK;
ffa01490:	10 00       	RTS;
	...

ffa01494 <_strlen_>:
ffa01494:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01498:	10 32       	P2 = R0;
ffa0149a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0149c:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa014a0:	b2 e0 06 10 	LSETUP(0xffa014a4 <_strlen_+0x10>, 0xffa014ac <_strlen_+0x18>) LC1 = P1;
ffa014a4:	50 99       	R0 = B[P2] (X);
ffa014a6:	00 0c       	CC = R0 == 0x0;
ffa014a8:	04 18       	IF CC JUMP 0xffa014b0 <_strlen_+0x1c>;
ffa014aa:	09 64       	R1 += 0x1;		/* (  1) */
ffa014ac:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa014ae:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa014b0:	01 30       	R0 = R1;
ffa014b2:	01 e8 00 00 	UNLINK;
ffa014b6:	10 00       	RTS;

ffa014b8 <_strcpy_>:
ffa014b8:	12 32       	P2 = R2;
ffa014ba:	c5 04       	[--SP] = (P5:5);
ffa014bc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa014c0:	29 32       	P5 = R1;
ffa014c2:	00 32       	P0 = R0;
ffa014c4:	51 99       	R1 = B[P2] (X);
ffa014c6:	08 43       	R0 = R1.B (X);
ffa014c8:	00 0c       	CC = R0 == 0x0;
ffa014ca:	17 18       	IF CC JUMP 0xffa014f8 <_strcpy_+0x40>;
ffa014cc:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa014ce:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa014d0:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa014d4:	b2 e0 09 10 	LSETUP(0xffa014d8 <_strcpy_+0x20>, 0xffa014e6 <_strcpy_+0x2e>) LC1 = P1;
ffa014d8:	01 9a       	B[P0++] = R1;
ffa014da:	51 99       	R1 = B[P2] (X);
ffa014dc:	08 43       	R0 = R1.B (X);
ffa014de:	00 0c       	CC = R0 == 0x0;
ffa014e0:	0a 64       	R2 += 0x1;		/* (  1) */
ffa014e2:	03 18       	IF CC JUMP 0xffa014e8 <_strcpy_+0x30>;
ffa014e4:	00 00       	NOP;
ffa014e6:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa014e8:	01 e8 00 00 	UNLINK;
ffa014ec:	28 91       	R0 = [P5];
ffa014ee:	10 50       	R0 = R0 + R2;
ffa014f0:	28 93       	[P5] = R0;
ffa014f2:	40 30       	R0 = P0;
ffa014f4:	85 04       	(P5:5) = [SP++];
ffa014f6:	10 00       	RTS;
ffa014f8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa014fa:	f7 2f       	JUMP.S 0xffa014e8 <_strcpy_+0x30>;

ffa014fc <_strprepend>:
ffa014fc:	fc 05       	[--SP] = (R7:7, P5:4);
ffa014fe:	21 32       	P4 = R1;
ffa01500:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01504:	38 30       	R7 = R0;
ffa01506:	02 30       	R0 = R2;
ffa01508:	2a 32       	P5 = R2;
ffa0150a:	ff e3 c5 ff 	CALL 0xffa01494 <_strlen_>;
ffa0150e:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa01512:	20 91 00 00 
ffa01516:	02 0d       	CC = R2 <= 0x0;
ffa01518:	0a 18       	IF CC JUMP 0xffa0152c <_strprepend+0x30>;
ffa0151a:	07 52       	R0 = R7 - R0;
ffa0151c:	10 32       	P2 = R0;
ffa0151e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01520:	09 64       	R1 += 0x1;		/* (  1) */
ffa01522:	68 98       	R0 = B[P5++] (X);
ffa01524:	0a 08       	CC = R2 == R1;
ffa01526:	10 9a       	B[P2++] = R0;
ffa01528:	fc 17       	IF !CC JUMP 0xffa01520 <_strprepend+0x24> (BP);
ffa0152a:	20 91       	R0 = [P4];
ffa0152c:	01 e8 00 00 	UNLINK;
ffa01530:	07 52       	R0 = R7 - R0;
ffa01532:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01534:	10 00       	RTS;
	...

ffa01538 <_strcmp>:
ffa01538:	10 32       	P2 = R0;
ffa0153a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0153e:	01 32       	P0 = R1;
ffa01540:	51 99       	R1 = B[P2] (X);
ffa01542:	01 0c       	CC = R1 == 0x0;
ffa01544:	1b 18       	IF CC JUMP 0xffa0157a <_strcmp+0x42>;
ffa01546:	00 00       	NOP;
ffa01548:	00 00       	NOP;
ffa0154a:	00 00       	NOP;
ffa0154c:	40 99       	R0 = B[P0] (X);
ffa0154e:	00 0c       	CC = R0 == 0x0;
ffa01550:	15 18       	IF CC JUMP 0xffa0157a <_strcmp+0x42>;
ffa01552:	01 08       	CC = R1 == R0;
ffa01554:	1c 10       	IF !CC JUMP 0xffa0158c <_strcmp+0x54>;
ffa01556:	4a 32       	P1 = P2;
ffa01558:	50 32       	P2 = P0;
ffa0155a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0155c:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0155e:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa01562:	49 99       	R1 = B[P1] (X);
ffa01564:	01 0c       	CC = R1 == 0x0;
ffa01566:	0a 18       	IF CC JUMP 0xffa0157a <_strcmp+0x42>;
ffa01568:	00 00       	NOP;
ffa0156a:	00 00       	NOP;
ffa0156c:	00 00       	NOP;
ffa0156e:	50 99       	R0 = B[P2] (X);
ffa01570:	00 0c       	CC = R0 == 0x0;
ffa01572:	04 18       	IF CC JUMP 0xffa0157a <_strcmp+0x42>;
ffa01574:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa01576:	40 0c       	CC = P0 == 0x0;
ffa01578:	05 10       	IF !CC JUMP 0xffa01582 <_strcmp+0x4a>;
ffa0157a:	01 e8 00 00 	UNLINK;
ffa0157e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01580:	10 00       	RTS;
ffa01582:	01 08       	CC = R1 == R0;
ffa01584:	04 10       	IF !CC JUMP 0xffa0158c <_strcmp+0x54>;
ffa01586:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01588:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0158a:	ec 2f       	JUMP.S 0xffa01562 <_strcmp+0x2a>;
ffa0158c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0158e:	01 e8 00 00 	UNLINK;
ffa01592:	10 00       	RTS;

ffa01594 <_substr>:
ffa01594:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01596:	20 32       	P4 = R0;
ffa01598:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0159c:	11 32       	P2 = R1;
ffa0159e:	32 30       	R6 = R2;
ffa015a0:	61 99       	R1 = B[P4] (X);
ffa015a2:	01 0c       	CC = R1 == 0x0;
ffa015a4:	14 18       	IF CC JUMP 0xffa015cc <_substr+0x38>;
ffa015a6:	00 00       	NOP;
ffa015a8:	00 00       	NOP;
ffa015aa:	00 00       	NOP;
ffa015ac:	50 99       	R0 = B[P2] (X);
ffa015ae:	00 0c       	CC = R0 == 0x0;
ffa015b0:	0e 18       	IF CC JUMP 0xffa015cc <_substr+0x38>;
ffa015b2:	02 0d       	CC = R2 <= 0x0;
ffa015b4:	0c 18       	IF CC JUMP 0xffa015cc <_substr+0x38>;
ffa015b6:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa015b8:	01 08       	CC = R1 == R0;
ffa015ba:	0f 18       	IF CC JUMP 0xffa015d8 <_substr+0x44>;
ffa015bc:	00 00       	NOP;
ffa015be:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa015c0:	0b 64       	R3 += 0x1;		/* (  1) */
ffa015c2:	50 99       	R0 = B[P2] (X);
ffa015c4:	00 0c       	CC = R0 == 0x0;
ffa015c6:	03 18       	IF CC JUMP 0xffa015cc <_substr+0x38>;
ffa015c8:	1e 09       	CC = R6 <= R3;
ffa015ca:	f7 17       	IF !CC JUMP 0xffa015b8 <_substr+0x24> (BP);
ffa015cc:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa015ce:	01 e8 00 00 	UNLINK;
ffa015d2:	40 30       	R0 = P0;
ffa015d4:	b4 05       	(R7:6, P5:4) = [SP++];
ffa015d6:	10 00       	RTS;
ffa015d8:	52 30       	R2 = P2;
ffa015da:	3b 30       	R7 = R3;
ffa015dc:	0a 64       	R2 += 0x1;		/* (  1) */
ffa015de:	0f 64       	R7 += 0x1;		/* (  1) */
ffa015e0:	12 32       	P2 = R2;
ffa015e2:	07 32       	P0 = R7;
ffa015e4:	4c 32       	P1 = P4;
ffa015e6:	6c 32       	P5 = P4;
ffa015e8:	09 6c       	P1 += 0x1;		/* (  1) */
ffa015ea:	15 6c       	P5 += 0x2;		/* (  2) */
ffa015ec:	02 20       	JUMP.S 0xffa015f0 <_substr+0x5c>;
ffa015ee:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa015f0:	4b 99       	R3 = B[P1] (X);
ffa015f2:	50 99       	R0 = B[P2] (X);
ffa015f4:	03 08       	CC = R3 == R0;
ffa015f6:	0e 10       	IF !CC JUMP 0xffa01612 <_substr+0x7e>;
ffa015f8:	03 0c       	CC = R3 == 0x0;
ffa015fa:	0c 18       	IF CC JUMP 0xffa01612 <_substr+0x7e>;
ffa015fc:	00 00       	NOP;
ffa015fe:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01600:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01602:	68 98       	R0 = B[P5++] (X);
ffa01604:	00 0c       	CC = R0 == 0x0;
ffa01606:	f4 17       	IF !CC JUMP 0xffa015ee <_substr+0x5a> (BP);
ffa01608:	01 e8 00 00 	UNLINK;
ffa0160c:	40 30       	R0 = P0;
ffa0160e:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01610:	10 00       	RTS;
ffa01612:	12 32       	P2 = R2;
ffa01614:	1f 30       	R3 = R7;
ffa01616:	d6 2f       	JUMP.S 0xffa015c2 <_substr+0x2e>;

ffa01618 <_sprintf_int>:
ffa01618:	fb 05       	[--SP] = (R7:7, P5:3);
ffa0161a:	01 0c       	CC = R1 == 0x0;
ffa0161c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01620:	00 34       	I0 = R0;
ffa01622:	11 30       	R2 = R1;
ffa01624:	1a 14       	IF !CC JUMP 0xffa01658 <_sprintf_int+0x40> (BP);
ffa01626:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df4 <_printf_temp> */
ffa0162a:	0b e1 f4 0d 	P3.L = 0xdf4;		/* (3572)	P3=0xff900df4 <_printf_temp> */
ffa0162e:	5a 91       	P2 = [P3];
ffa01630:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01632:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01634:	10 9b       	B[P2] = R0;
ffa01636:	88 32       	P1 = I0;
ffa01638:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0163a:	0b 52       	R0 = R3 - R1;
ffa0163c:	00 32       	P0 = R0;
ffa0163e:	5a 91       	P2 = [P3];
ffa01640:	09 64       	R1 += 0x1;		/* (  1) */
ffa01642:	99 08       	CC = R1 < R3;
ffa01644:	82 5a       	P2 = P2 + P0;
ffa01646:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa0164a:	08 9a       	B[P1++] = R0;
ffa0164c:	f7 1f       	IF CC JUMP 0xffa0163a <_sprintf_int+0x22> (BP);
ffa0164e:	01 e8 00 00 	UNLINK;
ffa01652:	03 30       	R0 = R3;
ffa01654:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01656:	10 00       	RTS;
ffa01658:	01 0d       	CC = R1 <= 0x0;
ffa0165a:	2d 18       	IF CC JUMP 0xffa016b4 <_sprintf_int+0x9c>;
ffa0165c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df4 <_printf_temp> */
ffa01660:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa01664:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01666:	0b e1 f4 0d 	P3.L = 0xdf4;		/* (3572)	P3=0xff900df4 <_printf_temp> */
ffa0166a:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa0166e:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa01670:	b2 e0 20 50 	LSETUP(0xffa01674 <_sprintf_int+0x5c>, 0xffa016b0 <_sprintf_int+0x98>) LC1 = P5;
ffa01674:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa01678:	59 91 00 00 
ffa0167c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01680:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa01684:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa01688:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa0168c:	0b c4 00 00 	R0 = (A0 += A1);
ffa01690:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa01694:	10 4d       	R0 >>>= 0x2;
ffa01696:	08 52       	R0 = R0 - R1;
ffa01698:	00 32       	P0 = R0;
ffa0169a:	13 32       	P2 = R3;
ffa0169c:	0b 64       	R3 += 0x1;		/* (  1) */
ffa0169e:	40 0d       	CC = P0 <= 0x0;
ffa016a0:	51 5a       	P1 = P1 + P2;
ffa016a2:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa016a4:	92 5a       	P2 = P2 << 0x1;
ffa016a6:	4a 30       	R1 = P2;
ffa016a8:	0a 52       	R0 = R2 - R1;
ffa016aa:	80 65       	R0 += 0x30;		/* ( 48) */
ffa016ac:	08 9b       	B[P1] = R0;
ffa016ae:	39 18       	IF CC JUMP 0xffa01720 <_sprintf_int+0x108>;
ffa016b0:	50 30       	R2 = P0;
ffa016b2:	c2 2f       	JUMP.S 0xffa01636 <_sprintf_int+0x1e>;
ffa016b4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa016b6:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa016b8:	f8 4f       	R0 <<= 0x1f;
ffa016ba:	90 52       	R2 = R0 - R2;
ffa016bc:	02 0d       	CC = R2 <= 0x0;
ffa016be:	3c 18       	IF CC JUMP 0xffa01736 <_sprintf_int+0x11e>;
ffa016c0:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df4 <_printf_temp> */
ffa016c4:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa016c8:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa016ca:	0b e1 f4 0d 	P3.L = 0xdf4;		/* (3572)	P3=0xff900df4 <_printf_temp> */
ffa016ce:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa016d2:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa016d4:	b2 e0 1f 50 	LSETUP(0xffa016d8 <_sprintf_int+0xc0>, 0xffa01712 <_sprintf_int+0xfa>) LC1 = P5;
ffa016d8:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa016dc:	59 91 00 00 
ffa016e0:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa016e4:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa016e8:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa016ec:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa016f0:	0b c4 00 00 	R0 = (A0 += A1);
ffa016f4:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa016f8:	10 4d       	R0 >>>= 0x2;
ffa016fa:	08 52       	R0 = R0 - R1;
ffa016fc:	00 32       	P0 = R0;
ffa016fe:	61 5a       	P1 = P1 + P4;
ffa01700:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa01702:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa01704:	92 5a       	P2 = P2 << 0x1;
ffa01706:	4a 30       	R1 = P2;
ffa01708:	0a 52       	R0 = R2 - R1;
ffa0170a:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0170c:	40 0d       	CC = P0 <= 0x0;
ffa0170e:	08 9b       	B[P1] = R0;
ffa01710:	0f 18       	IF CC JUMP 0xffa0172e <_sprintf_int+0x116>;
ffa01712:	50 30       	R2 = P0;
ffa01714:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa01716:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa01718:	5a 91       	P2 = [P3];
ffa0171a:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa0171c:	8a 5a       	P2 = P2 + P1;
ffa0171e:	10 9b       	B[P2] = R0;
ffa01720:	03 0d       	CC = R3 <= 0x0;
ffa01722:	8a 17       	IF !CC JUMP 0xffa01636 <_sprintf_int+0x1e> (BP);
ffa01724:	01 e8 00 00 	UNLINK;
ffa01728:	03 30       	R0 = R3;
ffa0172a:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0172c:	10 00       	RTS;
ffa0172e:	5c 30       	R3 = P4;
ffa01730:	4c 32       	P1 = P4;
ffa01732:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01734:	f2 2f       	JUMP.S 0xffa01718 <_sprintf_int+0x100>;
ffa01736:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df4 <_printf_temp> */
ffa0173a:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa0173c:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa0173e:	0b e1 f4 0d 	P3.L = 0xdf4;		/* (3572)	P3=0xff900df4 <_printf_temp> */
ffa01742:	eb 2f       	JUMP.S 0xffa01718 <_sprintf_int+0x100>;

ffa01744 <_sprintf_hex>:
ffa01744:	10 32       	P2 = R0;
ffa01746:	78 05       	[--SP] = (R7:7);
ffa01748:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0174a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0174e:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa01750:	10 9b       	B[P2] = R0;
ffa01752:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01756:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa0175a:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa0175c:	12 6c       	P2 += 0x2;		/* (  2) */
ffa0175e:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa01760:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa01762:	b2 e0 09 10 	LSETUP(0xffa01766 <_sprintf_hex+0x22>, 0xffa01774 <_sprintf_hex+0x30>) LC1 = P1;
ffa01766:	01 30       	R0 = R1;
ffa01768:	10 40       	R0 >>>= R2;
ffa0176a:	18 54       	R0 = R0 & R3;
ffa0176c:	38 09       	CC = R0 <= R7;
ffa0176e:	09 1c       	IF CC JUMP 0xffa01780 <_sprintf_hex+0x3c> (BP);
ffa01770:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01772:	10 9a       	B[P2++] = R0;
ffa01774:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa01776:	01 e8 00 00 	UNLINK;
ffa0177a:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0177c:	38 05       	(R7:7) = [SP++];
ffa0177e:	10 00       	RTS;
ffa01780:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01782:	f8 2f       	JUMP.S 0xffa01772 <_sprintf_hex+0x2e>;

ffa01784 <_strprintf_int>:
ffa01784:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01786:	29 32       	P5 = R1;
ffa01788:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0178c:	0a 30       	R1 = R2;
ffa0178e:	38 30       	R7 = R0;
ffa01790:	ff e3 44 ff 	CALL 0xffa01618 <_sprintf_int>;
ffa01794:	29 91       	R1 = [P5];
ffa01796:	41 50       	R1 = R1 + R0;
ffa01798:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa0179c:	29 93 00 00 
ffa017a0:	01 e8 00 00 	UNLINK;
ffa017a4:	07 30       	R0 = R7;
ffa017a6:	bd 05       	(R7:7, P5:5) = [SP++];
ffa017a8:	10 00       	RTS;
	...

ffa017ac <_strprintf_hex>:
ffa017ac:	fd 05       	[--SP] = (R7:7, P5:5);
ffa017ae:	29 32       	P5 = R1;
ffa017b0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa017b4:	0a 30       	R1 = R2;
ffa017b6:	38 30       	R7 = R0;
ffa017b8:	ff e3 c6 ff 	CALL 0xffa01744 <_sprintf_hex>;
ffa017bc:	29 91       	R1 = [P5];
ffa017be:	41 50       	R1 = R1 + R0;
ffa017c0:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa017c4:	29 93 00 00 
ffa017c8:	01 e8 00 00 	UNLINK;
ffa017cc:	07 30       	R0 = R7;
ffa017ce:	bd 05       	(R7:7, P5:5) = [SP++];
ffa017d0:	10 00       	RTS;
	...

ffa017d4 <_atoi>:
ffa017d4:	08 32       	P1 = R0;
ffa017d6:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa017d8:	f5 05       	[--SP] = (R7:6, P5:5);
ffa017da:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa017de:	48 99       	R0 = B[P1] (X);
ffa017e0:	10 08       	CC = R0 == R2;
ffa017e2:	25 18       	IF CC JUMP 0xffa0182c <_atoi+0x58>;
ffa017e4:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa017e6:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa017e8:	41 32       	P0 = P1;
ffa017ea:	08 6c       	P0 += 0x1;		/* (  1) */
ffa017ec:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa017ee:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa017f0:	12 20       	JUMP.S 0xffa01814 <_atoi+0x40>;
ffa017f2:	8b 08       	CC = R3 < R1;
ffa017f4:	16 10       	IF !CC JUMP 0xffa01820 <_atoi+0x4c>;
ffa017f6:	10 43       	R0 = R2.B (X);
ffa017f8:	28 32       	P5 = R0;
ffa017fa:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa017fc:	40 99       	R0 = B[P0] (X);
ffa017fe:	80 66       	R0 += -0x30;		/* (-48) */
ffa01800:	40 43       	R0 = R0.B (Z);
ffa01802:	aa 5a       	P2 = P2 + P5;
ffa01804:	10 0a       	CC = R0 <= R2 (IU);
ffa01806:	82 6e       	P2 += -0x30;		/* (-48) */
ffa01808:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0180a:	03 14       	IF !CC JUMP 0xffa01810 <_atoi+0x3c> (BP);
ffa0180c:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa0180e:	92 5a       	P2 = P2 << 0x1;
ffa01810:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01812:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01814:	4a 99       	R2 = B[P1] (X);
ffa01816:	02 30       	R0 = R2;
ffa01818:	80 66       	R0 += -0x30;		/* (-48) */
ffa0181a:	40 43       	R0 = R0.B (Z);
ffa0181c:	30 0a       	CC = R0 <= R6 (IU);
ffa0181e:	ea 1f       	IF CC JUMP 0xffa017f2 <_atoi+0x1e> (BP);
ffa01820:	42 30       	R0 = P2;
ffa01822:	f8 40       	R0 *= R7;
ffa01824:	01 e8 00 00 	UNLINK;
ffa01828:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0182a:	10 00       	RTS;
ffa0182c:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0182e:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01830:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01832:	db 2f       	JUMP.S 0xffa017e8 <_atoi+0x14>;

ffa01834 <_udelay>:
ffa01834:	00 0d       	CC = R0 <= 0x0;
ffa01836:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0183a:	0b 18       	IF CC JUMP 0xffa01850 <_udelay+0x1c>;
ffa0183c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0183e:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa01842:	b2 e0 03 20 	LSETUP(0xffa01846 <_udelay+0x12>, 0xffa01848 <_udelay+0x14>) LC1 = P2;
ffa01846:	00 00       	NOP;
ffa01848:	00 00       	NOP;
ffa0184a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0184c:	08 08       	CC = R0 == R1;
ffa0184e:	f8 17       	IF !CC JUMP 0xffa0183e <_udelay+0xa> (BP);
ffa01850:	01 e8 00 00 	UNLINK;
ffa01854:	10 00       	RTS;
	...

ffa01858 <_bfin_EMAC_send_check>:
ffa01858:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa0185c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01860:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01864:	50 95       	R0 = W[P2] (X);
ffa01866:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa01868:	00 02       	R0 = CC;
ffa0186a:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa0186c:	01 e8 00 00 	UNLINK;
ffa01870:	10 00       	RTS;
	...

ffa01874 <_FormatIPAddress>:
ffa01874:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01878:	18 30       	R3 = R0;
ffa0187a:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa0187e:	40 4f       	R0 <<= 0x8;
ffa01880:	52 43       	R2 = R2.B (Z);
ffa01882:	10 56       	R0 = R0 | R2;
ffa01884:	40 4f       	R0 <<= 0x8;
ffa01886:	49 43       	R1 = R1.B (Z);
ffa01888:	08 56       	R0 = R0 | R1;
ffa0188a:	40 4f       	R0 <<= 0x8;
ffa0188c:	5b 43       	R3 = R3.B (Z);
ffa0188e:	18 56       	R0 = R0 | R3;
ffa01890:	01 e8 00 00 	UNLINK;
ffa01894:	10 00       	RTS;
	...

ffa01898 <_bfin_EMAC_halt>:
ffa01898:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa0189c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0189e:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa018a2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa018a6:	10 93       	[P2] = R0;
ffa018a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa018ac:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa018b0:	10 97       	W[P2] = R0;
ffa018b2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa018b6:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa018ba:	10 97       	W[P2] = R0;
ffa018bc:	01 e8 00 00 	UNLINK;
ffa018c0:	10 00       	RTS;
	...

ffa018c4 <_PollMdcDone>:
ffa018c4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa018c8:	02 20       	JUMP.S 0xffa018cc <_PollMdcDone+0x8>;
ffa018ca:	00 00       	NOP;
ffa018cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa018d0:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa018d4:	10 91       	R0 = [P2];
ffa018d6:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa018d8:	f9 17       	IF !CC JUMP 0xffa018ca <_PollMdcDone+0x6> (BP);
ffa018da:	01 e8 00 00 	UNLINK;
ffa018de:	10 00       	RTS;

ffa018e0 <_WrPHYReg>:
ffa018e0:	68 05       	[--SP] = (R7:5);
ffa018e2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa018e6:	28 30       	R5 = R0;
ffa018e8:	31 30       	R6 = R1;
ffa018ea:	3a 30       	R7 = R2;
ffa018ec:	ff e3 ec ff 	CALL 0xffa018c4 <_PollMdcDone>;
ffa018f0:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa018f2:	b0 55       	R6 = R0 & R6;
ffa018f4:	28 54       	R0 = R0 & R5;
ffa018f6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa018fa:	58 4f       	R0 <<= 0xb;
ffa018fc:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa018fe:	ff 42       	R7 = R7.L (Z);
ffa01900:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01904:	36 4f       	R6 <<= 0x6;
ffa01906:	08 56       	R0 = R0 | R1;
ffa01908:	17 93       	[P2] = R7;
ffa0190a:	86 57       	R6 = R6 | R0;
ffa0190c:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0190e:	16 93       	[P2] = R6;
ffa01910:	01 e8 00 00 	UNLINK;
ffa01914:	28 05       	(R7:5) = [SP++];
ffa01916:	10 00       	RTS;

ffa01918 <_RdPHYReg>:
ffa01918:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0191a:	29 32       	P5 = R1;
ffa0191c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01920:	38 30       	R7 = R0;
ffa01922:	ff e3 d1 ff 	CALL 0xffa018c4 <_PollMdcDone>;
ffa01926:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa0192a:	45 30       	R0 = P5;
ffa0192c:	c0 42       	R0 = R0.L (Z);
ffa0192e:	28 32       	P5 = R0;
ffa01930:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01932:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01936:	55 30       	R2 = P5;
ffa01938:	42 54       	R1 = R2 & R0;
ffa0193a:	38 54       	R0 = R0 & R7;
ffa0193c:	58 4f       	R0 <<= 0xb;
ffa0193e:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa01940:	31 4f       	R1 <<= 0x6;
ffa01942:	41 56       	R1 = R1 | R0;
ffa01944:	11 93       	[P2] = R1;
ffa01946:	ff e3 bf ff 	CALL 0xffa018c4 <_PollMdcDone>;
ffa0194a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0194e:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01952:	10 91       	R0 = [P2];
ffa01954:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa01958:	0a e1 fc 0d 	P2.L = 0xdfc;		/* (3580)	P2=0xff900dfc <_PHYregs> */
ffa0195c:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa0195e:	10 97       	W[P2] = R0;
ffa01960:	01 e8 00 00 	UNLINK;
ffa01964:	c0 42       	R0 = R0.L (Z);
ffa01966:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01968:	10 00       	RTS;
	...

ffa0196c <_SoftResetPHY>:
ffa0196c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0196e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01970:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa01974:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01978:	ff e3 b4 ff 	CALL 0xffa018e0 <_WrPHYReg>;
ffa0197c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0197e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01980:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01982:	ff e3 af ff 	CALL 0xffa018e0 <_WrPHYReg>;
ffa01986:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01988:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0198a:	ff e3 c7 ff 	CALL 0xffa01918 <_RdPHYReg>;
ffa0198e:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa01990:	fb 1f       	IF CC JUMP 0xffa01986 <_SoftResetPHY+0x1a> (BP);
ffa01992:	01 e8 00 00 	UNLINK;
ffa01996:	10 00       	RTS;

ffa01998 <_NetCksum>:
ffa01998:	01 0d       	CC = R1 <= 0x0;
ffa0199a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0199e:	10 18       	IF CC JUMP 0xffa019be <_NetCksum+0x26>;
ffa019a0:	10 32       	P2 = R0;
ffa019a2:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa019a4:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa019a6:	0a 64       	R2 += 0x1;		/* (  1) */
ffa019a8:	10 94       	R0 = W[P2++] (Z);
ffa019aa:	0a 08       	CC = R2 == R1;
ffa019ac:	c3 50       	R3 = R3 + R0;
ffa019ae:	fc 17       	IF !CC JUMP 0xffa019a6 <_NetCksum+0xe> (BP);
ffa019b0:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa019b4:	03 50       	R0 = R3 + R0;
ffa019b6:	c0 42       	R0 = R0.L (Z);
ffa019b8:	01 e8 00 00 	UNLINK;
ffa019bc:	10 00       	RTS;
ffa019be:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa019c0:	01 e8 00 00 	UNLINK;
ffa019c4:	10 00       	RTS;
	...

ffa019c8 <_htons>:
ffa019c8:	08 30       	R1 = R0;
ffa019ca:	c0 42       	R0 = R0.L (Z);
ffa019cc:	40 4e       	R0 >>= 0x8;
ffa019ce:	41 4f       	R1 <<= 0x8;
ffa019d0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa019d4:	08 56       	R0 = R0 | R1;
ffa019d6:	c0 42       	R0 = R0.L (Z);
ffa019d8:	01 e8 00 00 	UNLINK;
ffa019dc:	10 00       	RTS;
	...

ffa019e0 <_htonl>:
ffa019e0:	10 30       	R2 = R0;
ffa019e2:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa019e6:	40 43       	R0 = R0.B (Z);
ffa019e8:	49 43       	R1 = R1.B (Z);
ffa019ea:	40 4f       	R0 <<= 0x8;
ffa019ec:	08 56       	R0 = R0 | R1;
ffa019ee:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa019f2:	40 4f       	R0 <<= 0x8;
ffa019f4:	49 43       	R1 = R1.B (Z);
ffa019f6:	08 56       	R0 = R0 | R1;
ffa019f8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa019fc:	40 4f       	R0 <<= 0x8;
ffa019fe:	c2 4e       	R2 >>= 0x18;
ffa01a00:	10 56       	R0 = R0 | R2;
ffa01a02:	01 e8 00 00 	UNLINK;
ffa01a06:	10 00       	RTS;

ffa01a08 <_pack4chars>:
ffa01a08:	08 32       	P1 = R0;
ffa01a0a:	10 32       	P2 = R0;
ffa01a0c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01a10:	01 e8 00 00 	UNLINK;
ffa01a14:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa01a18:	10 98       	R0 = B[P2++] (Z);
ffa01a1a:	41 4f       	R1 <<= 0x8;
ffa01a1c:	08 50       	R0 = R0 + R1;
ffa01a1e:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa01a22:	81 4f       	R1 <<= 0x10;
ffa01a24:	08 50       	R0 = R0 + R1;
ffa01a26:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa01a2a:	c1 4f       	R1 <<= 0x18;
ffa01a2c:	08 50       	R0 = R0 + R1;
ffa01a2e:	10 00       	RTS;

ffa01a30 <_ip_header_setup>:
ffa01a30:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01a32:	28 32       	P5 = R0;
ffa01a34:	21 32       	P4 = R1;
ffa01a36:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01a3a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01a3e:	32 30       	R6 = R2;
ffa01a40:	28 9b       	B[P5] = R0;
ffa01a42:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a44:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa01a48:	27 91       	R7 = [P4];
ffa01a4a:	f8 42       	R0 = R7.L (Z);
ffa01a4c:	ff e3 be ff 	CALL 0xffa019c8 <_htons>;
ffa01a50:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900dfc <_PHYregs> */
ffa01a54:	0a e1 46 0e 	P2.L = 0xe46;		/* (3654)	P2=0xff900e46 <_NetIPID> */
ffa01a58:	68 b4       	W[P5 + 0x2] = R0;
ffa01a5a:	10 95       	R0 = W[P2] (Z);
ffa01a5c:	08 30       	R1 = R0;
ffa01a5e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01a60:	67 67       	R7 += -0x14;		/* (-20) */
ffa01a62:	11 97       	W[P2] = R1;
ffa01a64:	27 93       	[P4] = R7;
ffa01a66:	ff e3 b1 ff 	CALL 0xffa019c8 <_htons>;
ffa01a6a:	a8 b4       	W[P5 + 0x4] = R0;
ffa01a6c:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01a70:	ff e3 ac ff 	CALL 0xffa019c8 <_htons>;
ffa01a74:	e8 b4       	W[P5 + 0x6] = R0;
ffa01a76:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01a7a:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01a7e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e46 <_NetIPID> */
ffa01a82:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa01a86:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01a8a:	0a e1 78 0e 	P2.L = 0xe78;		/* (3704)	P2=0xff900e78 <_NetOurIP> */
ffa01a8e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a90:	68 b5       	W[P5 + 0xa] = R0;
ffa01a92:	10 91       	R0 = [P2];
ffa01a94:	e8 b0       	[P5 + 0xc] = R0;
ffa01a96:	2e b1       	[P5 + 0x10] = R6;
ffa01a98:	45 30       	R0 = P5;
ffa01a9a:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01a9c:	ff e3 7e ff 	CALL 0xffa01998 <_NetCksum>;
ffa01aa0:	c0 43       	R0 =~ R0;
ffa01aa2:	68 b5       	W[P5 + 0xa] = R0;
ffa01aa4:	01 e8 00 00 	UNLINK;
ffa01aa8:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01aaa:	45 30       	R0 = P5;
ffa01aac:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01aae:	10 00       	RTS;

ffa01ab0 <_ip_header_checksum>:
ffa01ab0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01ab4:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa01ab6:	ff e3 71 ff 	CALL 0xffa01998 <_NetCksum>;
ffa01aba:	08 02       	CC = R0;
ffa01abc:	00 02       	R0 = CC;
ffa01abe:	01 e8 00 00 	UNLINK;
ffa01ac2:	10 00       	RTS;

ffa01ac4 <_icmp_header_setup>:
ffa01ac4:	00 32       	P0 = R0;
ffa01ac6:	c5 04       	[--SP] = (P5:5);
ffa01ac8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01aca:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01ace:	29 32       	P5 = R1;
ffa01ad0:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa01ad4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ad6:	40 b4       	W[P0 + 0x2] = R0;
ffa01ad8:	38 ab       	R0 = W[FP + 0x18] (X);
ffa01ada:	80 b4       	W[P0 + 0x4] = R0;
ffa01adc:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa01ade:	02 9b       	B[P0] = R2;
ffa01ae0:	c0 b4       	W[P0 + 0x6] = R0;
ffa01ae2:	48 32       	P1 = P0;
ffa01ae4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01ae6:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa01ae8:	b2 e0 03 20 	LSETUP(0xffa01aec <_icmp_header_setup+0x28>, 0xffa01aee <_icmp_header_setup+0x2a>) LC1 = P2;
ffa01aec:	08 94       	R0 = W[P1++] (Z);
ffa01aee:	41 50       	R1 = R1 + R0;
ffa01af0:	c8 42       	R0 = R1.L (Z);
ffa01af2:	81 4e       	R1 >>= 0x10;
ffa01af4:	08 50       	R0 = R0 + R1;
ffa01af6:	c0 43       	R0 =~ R0;
ffa01af8:	40 b4       	W[P0 + 0x2] = R0;
ffa01afa:	28 91       	R0 = [P5];
ffa01afc:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa01afe:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01b00:	01 e8 00 00 	UNLINK;
ffa01b04:	28 93       	[P5] = R0;
ffa01b06:	40 30       	R0 = P0;
ffa01b08:	85 04       	(P5:5) = [SP++];
ffa01b0a:	10 00       	RTS;

ffa01b0c <_udp_header_setup>:
ffa01b0c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01b0e:	28 32       	P5 = R0;
ffa01b10:	21 32       	P4 = R1;
ffa01b12:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b16:	d0 42       	R0 = R2.L (Z);
ffa01b18:	ff e3 58 ff 	CALL 0xffa019c8 <_htons>;
ffa01b1c:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa01b20:	28 97       	W[P5] = R0;
ffa01b22:	07 30       	R0 = R7;
ffa01b24:	ff e3 52 ff 	CALL 0xffa019c8 <_htons>;
ffa01b28:	27 91       	R7 = [P4];
ffa01b2a:	68 b4       	W[P5 + 0x2] = R0;
ffa01b2c:	f8 42       	R0 = R7.L (Z);
ffa01b2e:	ff e3 4d ff 	CALL 0xffa019c8 <_htons>;
ffa01b32:	a8 b4       	W[P5 + 0x4] = R0;
ffa01b34:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b36:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa01b38:	e8 b4       	W[P5 + 0x6] = R0;
ffa01b3a:	01 e8 00 00 	UNLINK;
ffa01b3e:	45 6c       	P5 += 0x8;		/* (  8) */
ffa01b40:	45 30       	R0 = P5;
ffa01b42:	27 93       	[P4] = R7;
ffa01b44:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01b46:	10 00       	RTS;

ffa01b48 <_tcp_header_setup>:
ffa01b48:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01b4a:	28 32       	P5 = R0;
ffa01b4c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b50:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01b54:	21 32       	P4 = R1;
ffa01b56:	3a 30       	R7 = R2;
ffa01b58:	ff e3 38 ff 	CALL 0xffa019c8 <_htons>;
ffa01b5c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa01b60:	0a e1 68 0f 	P2.L = 0xf68;		/* (3944)	P2=0xff900f68 <_TcpClientPort> */
ffa01b64:	28 97       	W[P5] = R0;
ffa01b66:	50 95       	R0 = W[P2] (X);
ffa01b68:	68 b4       	W[P5 + 0x2] = R0;
ffa01b6a:	38 a2       	R0 = [FP + 0x20];
ffa01b6c:	ff e3 3a ff 	CALL 0xffa019e0 <_htonl>;
ffa01b70:	68 b0       	[P5 + 0x4] = R0;
ffa01b72:	78 a2       	R0 = [FP + 0x24];
ffa01b74:	ff e3 36 ff 	CALL 0xffa019e0 <_htonl>;
ffa01b78:	a8 b0       	[P5 + 0x8] = R0;
ffa01b7a:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01b7e:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01b82:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa01b86:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa01b8a:	ff e3 1f ff 	CALL 0xffa019c8 <_htons>;
ffa01b8e:	e8 b5       	W[P5 + 0xe] = R0;
ffa01b90:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b92:	28 b6       	W[P5 + 0x10] = R0;
ffa01b94:	68 b6       	W[P5 + 0x12] = R0;
ffa01b96:	20 91       	R0 = [P4];
ffa01b98:	60 67       	R0 += -0x14;		/* (-20) */
ffa01b9a:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01b9c:	01 e8 00 00 	UNLINK;
ffa01ba0:	20 93       	[P4] = R0;
ffa01ba2:	45 30       	R0 = P5;
ffa01ba4:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01ba6:	10 00       	RTS;

ffa01ba8 <_DHCP_parse>:
ffa01ba8:	f5 05       	[--SP] = (R7:6, P5:5);
ffa01baa:	09 0d       	CC = R1 <= 0x1;
ffa01bac:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01bb0:	10 32       	P2 = R0;
ffa01bb2:	33 18       	IF CC JUMP 0xffa01c18 <_DHCP_parse+0x70>;
ffa01bb4:	00 00       	NOP;
ffa01bb6:	31 30       	R6 = R1;
ffa01bb8:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01bba:	11 98       	R1 = B[P2++] (Z);
ffa01bbc:	01 0c       	CC = R1 == 0x0;
ffa01bbe:	2b 1c       	IF CC JUMP 0xffa01c14 <_DHCP_parse+0x6c> (BP);
ffa01bc0:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa01bc4:	01 08       	CC = R1 == R0;
ffa01bc6:	57 99       	R7 = B[P2] (X);
ffa01bc8:	28 18       	IF CC JUMP 0xffa01c18 <_DHCP_parse+0x70>;
ffa01bca:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa01bcc:	6a 32       	P5 = P2;
ffa01bce:	01 0a       	CC = R1 <= R0 (IU);
ffa01bd0:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa01bd2:	09 14       	IF !CC JUMP 0xffa01be4 <_DHCP_parse+0x3c> (BP);
ffa01bd4:	09 32       	P1 = R1;
ffa01bd6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f68 <_TcpClientPort> */
ffa01bda:	0a e1 a8 03 	P2.L = 0x3a8;		/* (936)	P2=0xff9003a8 */
ffa01bde:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa01be0:	52 91       	P2 = [P2];
ffa01be2:	52 00       	JUMP (P2);
ffa01be4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa01be8:	00 e1 80 01 	R0.L = 0x180;		/* (384)	R0=0xff900180(-7339648) */
ffa01bec:	ff e3 50 fb 	CALL 0xffa0128c <_printf_int>;
ffa01bf0:	7f 43       	R7 = R7.B (Z);
ffa01bf2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900180(-7339648) */
ffa01bf6:	00 e1 94 01 	R0.L = 0x194;		/* (404)	R0=0xff900194(-7339628) */
ffa01bfa:	0f 30       	R1 = R7;
ffa01bfc:	ff e3 48 fb 	CALL 0xffa0128c <_printf_int>;
ffa01c00:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900194(-7339628) */
ffa01c04:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa01c08:	ff e3 80 fa 	CALL 0xffa01108 <_printf_str>;
ffa01c0c:	0f 32       	P1 = R7;
ffa01c0e:	be 53       	R6 = R6 - R7;
ffa01c10:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01c12:	8d 5a       	P2 = P5 + P1;
ffa01c14:	0e 0d       	CC = R6 <= 0x1;
ffa01c16:	d1 17       	IF !CC JUMP 0xffa01bb8 <_DHCP_parse+0x10> (BP);
ffa01c18:	01 e8 00 00 	UNLINK;
ffa01c1c:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01c1e:	10 00       	RTS;
ffa01c20:	45 30       	R0 = P5;
ffa01c22:	ff e3 f3 fe 	CALL 0xffa01a08 <_pack4chars>;
ffa01c26:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff9003a8 */
ffa01c2a:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetSubnetMask> */
ffa01c2e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01c32:	10 93 00 00 
ffa01c36:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa01c3a:	00 e1 d8 00 	R0.L = 0xd8;		/* (216)	R0=0xff9000d8(-7339816) */
ffa01c3e:	ff e3 c9 fb 	CALL 0xffa013d0 <_printf_ip>;
ffa01c42:	7f 43       	R7 = R7.B (Z);
ffa01c44:	de 2f       	JUMP.S 0xffa01c00 <_DHCP_parse+0x58>;
ffa01c46:	45 30       	R0 = P5;
ffa01c48:	ff e3 e0 fe 	CALL 0xffa01a08 <_pack4chars>;
ffa01c4c:	08 30       	R1 = R0;
ffa01c4e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000d8(-7339816) */
ffa01c52:	00 e1 e8 00 	R0.L = 0xe8;		/* (232)	R0=0xff9000e8(-7339800) */
ffa01c56:	ff e3 bd fb 	CALL 0xffa013d0 <_printf_ip>;
ffa01c5a:	7f 43       	R7 = R7.B (Z);
ffa01c5c:	d2 2f       	JUMP.S 0xffa01c00 <_DHCP_parse+0x58>;
ffa01c5e:	45 30       	R0 = P5;
ffa01c60:	ff e3 d4 fe 	CALL 0xffa01a08 <_pack4chars>;
ffa01c64:	08 30       	R1 = R0;
ffa01c66:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000e8(-7339800) */
ffa01c6a:	00 e1 f8 00 	R0.L = 0xf8;		/* (248)	R0=0xff9000f8(-7339784) */
ffa01c6e:	ff e3 b1 fb 	CALL 0xffa013d0 <_printf_ip>;
ffa01c72:	7f 43       	R7 = R7.B (Z);
ffa01c74:	c6 2f       	JUMP.S 0xffa01c00 <_DHCP_parse+0x58>;
ffa01c76:	45 30       	R0 = P5;
ffa01c78:	ff e3 c8 fe 	CALL 0xffa01a08 <_pack4chars>;
ffa01c7c:	08 30       	R1 = R0;
ffa01c7e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f8(-7339784) */
ffa01c82:	00 e1 08 01 	R0.L = 0x108;		/* (264)	R0=0xff900108(-7339768) */
ffa01c86:	ff e3 a5 fb 	CALL 0xffa013d0 <_printf_ip>;
ffa01c8a:	7f 43       	R7 = R7.B (Z);
ffa01c8c:	ba 2f       	JUMP.S 0xffa01c00 <_DHCP_parse+0x58>;
ffa01c8e:	45 30       	R0 = P5;
ffa01c90:	ff e3 bc fe 	CALL 0xffa01a08 <_pack4chars>;
ffa01c94:	ff e3 a6 fe 	CALL 0xffa019e0 <_htonl>;
ffa01c98:	08 30       	R1 = R0;
ffa01c9a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900108(-7339768) */
ffa01c9e:	00 e1 18 01 	R0.L = 0x118;		/* (280)	R0=0xff900118(-7339752) */
ffa01ca2:	ff e3 f5 fa 	CALL 0xffa0128c <_printf_int>;
ffa01ca6:	7f 43       	R7 = R7.B (Z);
ffa01ca8:	ac 2f       	JUMP.S 0xffa01c00 <_DHCP_parse+0x58>;
ffa01caa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900118(-7339752) */
ffa01cae:	29 99       	R1 = B[P5] (Z);
ffa01cb0:	00 e1 2c 01 	R0.L = 0x12c;		/* (300)	R0=0xff90012c(-7339732) */
ffa01cb4:	ff e3 ec fa 	CALL 0xffa0128c <_printf_int>;
ffa01cb8:	7f 43       	R7 = R7.B (Z);
ffa01cba:	a3 2f       	JUMP.S 0xffa01c00 <_DHCP_parse+0x58>;
ffa01cbc:	45 30       	R0 = P5;
ffa01cbe:	ff e3 a5 fe 	CALL 0xffa01a08 <_pack4chars>;
ffa01cc2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e74 <_NetSubnetMask> */
ffa01cc6:	0a e1 40 0e 	P2.L = 0xe40;		/* (3648)	P2=0xff900e40 <_NetDHCPserv> */
ffa01cca:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01cce:	10 93 00 00 
ffa01cd2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90012c(-7339732) */
ffa01cd6:	00 e1 40 01 	R0.L = 0x140;		/* (320)	R0=0xff900140(-7339712) */
ffa01cda:	ff e3 7b fb 	CALL 0xffa013d0 <_printf_ip>;
ffa01cde:	7f 43       	R7 = R7.B (Z);
ffa01ce0:	90 2f       	JUMP.S 0xffa01c00 <_DHCP_parse+0x58>;
ffa01ce2:	45 30       	R0 = P5;
ffa01ce4:	ff e3 92 fe 	CALL 0xffa01a08 <_pack4chars>;
ffa01ce8:	ff e3 7c fe 	CALL 0xffa019e0 <_htonl>;
ffa01cec:	08 30       	R1 = R0;
ffa01cee:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900140(-7339712) */
ffa01cf2:	00 e1 54 01 	R0.L = 0x154;		/* (340)	R0=0xff900154(-7339692) */
ffa01cf6:	ff e3 cb fa 	CALL 0xffa0128c <_printf_int>;
ffa01cfa:	7f 43       	R7 = R7.B (Z);
ffa01cfc:	82 2f       	JUMP.S 0xffa01c00 <_DHCP_parse+0x58>;
ffa01cfe:	45 30       	R0 = P5;
ffa01d00:	ff e3 84 fe 	CALL 0xffa01a08 <_pack4chars>;
ffa01d04:	ff e3 6e fe 	CALL 0xffa019e0 <_htonl>;
ffa01d08:	08 30       	R1 = R0;
ffa01d0a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900154(-7339692) */
ffa01d0e:	00 e1 68 01 	R0.L = 0x168;		/* (360)	R0=0xff900168(-7339672) */
ffa01d12:	ff e3 bd fa 	CALL 0xffa0128c <_printf_int>;
ffa01d16:	7f 43       	R7 = R7.B (Z);
ffa01d18:	74 2f       	JUMP.S 0xffa01c00 <_DHCP_parse+0x58>;
	...

ffa01d1c <_bfin_EMAC_send_nocopy>:
ffa01d1c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e40(-4190656) */
ffa01d20:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01d22:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01d26:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01d2a:	10 97       	W[P2] = R0;
ffa01d2c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01d30:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01d34:	50 95       	R0 = W[P2] (X);
ffa01d36:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01d38:	59 10       	IF !CC JUMP 0xffa01dea <_bfin_EMAC_send_nocopy+0xce>;
ffa01d3a:	00 00       	NOP;
ffa01d3c:	00 00       	NOP;
ffa01d3e:	00 00       	NOP;
ffa01d40:	50 95       	R0 = W[P2] (X);
ffa01d42:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01d44:	16 18       	IF CC JUMP 0xffa01d70 <_bfin_EMAC_send_nocopy+0x54>;
ffa01d46:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0008 */
ffa01d4a:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01d4e:	b2 e0 09 10 	LSETUP(0xffa01d52 <_bfin_EMAC_send_nocopy+0x36>, 0xffa01d60 <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa01d52:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01d56:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01d5a:	50 95       	R0 = W[P2] (X);
ffa01d5c:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01d5e:	09 18       	IF CC JUMP 0xffa01d70 <_bfin_EMAC_send_nocopy+0x54>;
ffa01d60:	00 00       	NOP;
ffa01d62:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa01d66:	00 e1 b4 01 	R0.L = 0x1b4;		/* (436)	R0=0xff9001b4(-7339596) */
ffa01d6a:	ff e3 cf f9 	CALL 0xffa01108 <_printf_str>;
ffa01d6e:	30 20       	JUMP.S 0xffa01dce <_bfin_EMAC_send_nocopy+0xb2>;
ffa01d70:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa01d74:	08 e1 44 0e 	P0.L = 0xe44;		/* (3652)	P0=0xff900e44 <_txIdx> */
ffa01d78:	00 95       	R0 = W[P0] (Z);
ffa01d7a:	10 32       	P2 = R0;
ffa01d7c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01d80:	09 e1 48 0e 	P1.L = 0xe48;		/* (3656)	P1=0xff900e48 <_txbuf> */
ffa01d84:	42 95       	R2 = W[P0] (X);
ffa01d86:	d1 42       	R1 = R2.L (Z);
ffa01d88:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01d8a:	52 91       	P2 = [P2];
ffa01d8c:	11 0d       	CC = R1 <= 0x2;
ffa01d8e:	90 a1       	R0 = [P2 + 0x18];
ffa01d90:	50 b0       	[P2 + 0x4] = R0;
ffa01d92:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d94:	90 b2       	[P2 + 0x28] = R0;
ffa01d96:	11 32       	P2 = R1;
ffa01d98:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa01d9a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01d9e:	08 91       	R0 = [P1];
ffa01da0:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01da4:	10 93       	[P2] = R0;
ffa01da6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01daa:	0a e1 9a 04 	P2.L = 0x49a;		/* (1178)	P2=0xff90049a <_txdmacfg> */
ffa01dae:	50 95       	R0 = W[P2] (X);
ffa01db0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0049a(-4193126) */
ffa01db4:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01db8:	10 97       	W[P2] = R0;
ffa01dba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01dbe:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01dc2:	10 91       	R0 = [P2];
ffa01dc4:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01dc6:	10 93       	[P2] = R0;
ffa01dc8:	0d 1c       	IF CC JUMP 0xffa01de2 <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa01dca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01dcc:	00 97       	W[P0] = R0;
ffa01dce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01dd2:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01dd4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01dd8:	10 97       	W[P2] = R0;
ffa01dda:	01 e8 00 00 	UNLINK;
ffa01dde:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01de0:	10 00       	RTS;
ffa01de2:	02 30       	R0 = R2;
ffa01de4:	08 64       	R0 += 0x1;		/* (  1) */
ffa01de6:	00 97       	W[P0] = R0;
ffa01de8:	f3 2f       	JUMP.S 0xffa01dce <_bfin_EMAC_send_nocopy+0xb2>;
ffa01dea:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01dee:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa01df2:	ff e3 8b f9 	CALL 0xffa01108 <_printf_str>;
ffa01df6:	ec 2f       	JUMP.S 0xffa01dce <_bfin_EMAC_send_nocopy+0xb2>;

ffa01df8 <_DHCP_tx>:
ffa01df8:	e3 05       	[--SP] = (R7:4, P5:3);
ffa01dfa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa01dfe:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01e02:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_txIdx> */
ffa01e06:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa01e0a:	10 95 00 00 
ffa01e0e:	10 32       	P2 = R0;
ffa01e10:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e48 <_txbuf> */
ffa01e14:	09 e1 48 0e 	P1.L = 0xe48;		/* (3656)	P1=0xff900e48 <_txbuf> */
ffa01e18:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa01e1c:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01e1e:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01e20:	52 91       	P2 = [P2];
ffa01e22:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa01e26:	f1 bb 00 00 
ffa01e2a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90000b */
ffa01e2e:	0d e1 6c 0e 	P5.L = 0xe6c;		/* (3692)	P5=0xff900e6c <_NetOurMAC> */
ffa01e32:	94 ad       	P4 = [P2 + 0x18];
ffa01e34:	1a 32       	P3 = R2;
ffa01e36:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01e38:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01e3a:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa01e3e:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa01e42:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa01e46:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa01e4a:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa01e4e:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa01e52:	20 97       	W[P4] = R0;
ffa01e54:	68 99       	R0 = B[P5] (X);
ffa01e56:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa01e5a:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01e5e:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa01e62:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01e66:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa01e6a:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01e6e:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa01e72:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01e76:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa01e7a:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01e7e:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa01e82:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01e86:	ff e3 a1 fd 	CALL 0xffa019c8 <_htons>;
ffa01e8a:	e0 b5       	W[P4 + 0xe] = R0;
ffa01e8c:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01e90:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa01e94:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa01e98:	04 50       	R0 = R4 + R0;
ffa01e9a:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa01e9e:	c0 42       	R0 = R0.L (Z);
ffa01ea0:	ff e3 94 fd 	CALL 0xffa019c8 <_htons>;
ffa01ea4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_txIdx> */
ffa01ea8:	0a e1 46 0e 	P2.L = 0xe46;		/* (3654)	P2=0xff900e46 <_NetIPID> */
ffa01eac:	60 b6       	W[P4 + 0x12] = R0;
ffa01eae:	10 95       	R0 = W[P2] (Z);
ffa01eb0:	08 30       	R1 = R0;
ffa01eb2:	09 64       	R1 += 0x1;		/* (  1) */
ffa01eb4:	11 97       	W[P2] = R1;
ffa01eb6:	ff e3 89 fd 	CALL 0xffa019c8 <_htons>;
ffa01eba:	a0 b6       	W[P4 + 0x14] = R0;
ffa01ebc:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01ec0:	ff e3 84 fd 	CALL 0xffa019c8 <_htons>;
ffa01ec4:	e0 b6       	W[P4 + 0x16] = R0;
ffa01ec6:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01ec8:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa01ecc:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa01ed0:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa01ed4:	66 b7 00 00 
ffa01ed8:	44 30       	R0 = P4;
ffa01eda:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01edc:	e7 b1       	[P4 + 0x1c] = R7;
ffa01ede:	23 be       	[P4 + 0x20] = P3;
ffa01ee0:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01ee2:	ff e3 5b fd 	CALL 0xffa01998 <_NetCksum>;
ffa01ee6:	c0 43       	R0 =~ R0;
ffa01ee8:	60 b7       	W[P4 + 0x1a] = R0;
ffa01eea:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa01eee:	ff e3 6d fd 	CALL 0xffa019c8 <_htons>;
ffa01ef2:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa01ef6:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa01efa:	ff e3 67 fd 	CALL 0xffa019c8 <_htons>;
ffa01efe:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa01f02:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa01f06:	04 50       	R0 = R4 + R0;
ffa01f08:	c0 42       	R0 = R0.L (Z);
ffa01f0a:	ff e3 5f fd 	CALL 0xffa019c8 <_htons>;
ffa01f0e:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa01f12:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01f14:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa01f18:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa01f1c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e46(-4190650) */
ffa01f20:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01f22:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa01f26:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa01f2a:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa01f2e:	10 91       	R0 = [P2];
ffa01f30:	20 b3       	[P4 + 0x30] = R0;
ffa01f32:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa01f36:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa01f3a:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa01f3e:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa01f42:	a7 b3       	[P4 + 0x38] = R7;
ffa01f44:	e7 b3       	[P4 + 0x3c] = R7;
ffa01f46:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa01f4a:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa01f4e:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa01f52:	ff e3 47 fd 	CALL 0xffa019e0 <_htonl>;
ffa01f56:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa01f5a:	68 99       	R0 = B[P5] (X);
ffa01f5c:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa01f60:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01f64:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa01f68:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01f6c:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa01f70:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01f74:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa01f78:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01f7c:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa01f80:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01f84:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa01f88:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa01f8c:	54 5a       	P1 = P4 + P2;
ffa01f8e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01f90:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa01f92:	b2 e0 02 20 	LSETUP(0xffa01f96 <_DHCP_tx+0x19e>, 0xffa01f96 <_DHCP_tx+0x19e>) LC1 = P2;
ffa01f96:	08 9a       	B[P1++] = R0;
ffa01f98:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa01f9c:	54 5a       	P1 = P4 + P2;
ffa01f9e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01fa0:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa01fa2:	b2 e0 02 20 	LSETUP(0xffa01fa6 <_DHCP_tx+0x1ae>, 0xffa01fa6 <_DHCP_tx+0x1ae>) LC1 = P2;
ffa01fa6:	08 92       	[P1++] = R0;
ffa01fa8:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa01fac:	54 5a       	P1 = P4 + P2;
ffa01fae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01fb0:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa01fb2:	b2 e0 02 20 	LSETUP(0xffa01fb6 <_DHCP_tx+0x1be>, 0xffa01fb6 <_DHCP_tx+0x1be>) LC1 = P2;
ffa01fb6:	08 92       	[P1++] = R0;
ffa01fb8:	44 30       	R0 = P4;
ffa01fba:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa01fbe:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa01fc2:	f0 b9 00 00 
ffa01fc6:	14 30       	R2 = R4;
ffa01fc8:	ff e3 48 fa 	CALL 0xffa01458 <_memcpy_>;
ffa01fcc:	01 e8 00 00 	UNLINK;
ffa01fd0:	a3 05       	(R7:4, P5:3) = [SP++];
ffa01fd2:	ff e2 a5 fe 	JUMP.L 0xffa01d1c <_bfin_EMAC_send_nocopy>;
	...

ffa01fd8 <_bfin_EMAC_send>:
ffa01fd8:	c4 04       	[--SP] = (P5:4);
ffa01fda:	01 0d       	CC = R1 <= 0x0;
ffa01fdc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01fe0:	18 30       	R3 = R0;
ffa01fe2:	11 30       	R2 = R1;
ffa01fe4:	90 18       	IF CC JUMP 0xffa02104 <_bfin_EMAC_send+0x12c>;
ffa01fe6:	00 00       	NOP;
ffa01fe8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00020(-4194272) */
ffa01fec:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01ff0:	50 95       	R0 = W[P2] (X);
ffa01ff2:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01ff4:	74 10       	IF !CC JUMP 0xffa020dc <_bfin_EMAC_send+0x104>;
ffa01ff6:	00 00       	NOP;
ffa01ff8:	00 00       	NOP;
ffa01ffa:	00 00       	NOP;
ffa01ffc:	50 95       	R0 = W[P2] (X);
ffa01ffe:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa02000:	17 18       	IF CC JUMP 0xffa0202e <_bfin_EMAC_send+0x56>;
ffa02002:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0e48 */
ffa02006:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa0200a:	b2 e0 09 10 	LSETUP(0xffa0200e <_bfin_EMAC_send+0x36>, 0xffa0201c <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa0200e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa02012:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa02016:	50 95       	R0 = W[P2] (X);
ffa02018:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0201a:	0a 18       	IF CC JUMP 0xffa0202e <_bfin_EMAC_send+0x56>;
ffa0201c:	00 00       	NOP;
ffa0201e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02022:	00 e1 e8 01 	R0.L = 0x1e8;		/* (488)	R0=0xff9001e8(-7339544) */
ffa02026:	ff e3 71 f8 	CALL 0xffa01108 <_printf_str>;
ffa0202a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0202c:	53 20       	JUMP.S 0xffa020d2 <_bfin_EMAC_send+0xfa>;
ffa0202e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900000 <_l1_data_a> */
ffa02032:	0c e1 44 0e 	P4.L = 0xe44;		/* (3652)	P4=0xff900e44 <_txIdx> */
ffa02036:	20 95       	R0 = W[P4] (Z);
ffa02038:	10 32       	P2 = R0;
ffa0203a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e6c <_NetOurMAC> */
ffa0203e:	0d e1 48 0e 	P5.L = 0xe48;		/* (3656)	P5=0xff900e48 <_txbuf> */
ffa02042:	0b 30       	R1 = R3;
ffa02044:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02046:	52 91       	P2 = [P2];
ffa02048:	92 ad       	P2 = [P2 + 0x18];
ffa0204a:	12 96       	W[P2++] = R2;
ffa0204c:	42 30       	R0 = P2;
ffa0204e:	ff e3 05 fa 	CALL 0xffa01458 <_memcpy_>;
ffa02052:	20 95       	R0 = W[P4] (Z);
ffa02054:	10 32       	P2 = R0;
ffa02056:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02058:	51 91       	P1 = [P2];
ffa0205a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa0205e:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa02062:	51 93       	[P2] = P1;
ffa02064:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa02068:	88 a1       	R0 = [P1 + 0x18];
ffa0206a:	0a e1 9a 04 	P2.L = 0x49a;		/* (1178)	P2=0xff90049a <_txdmacfg> */
ffa0206e:	48 b0       	[P1 + 0x4] = R0;
ffa02070:	50 95       	R0 = W[P2] (X);
ffa02072:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0049a(-4193126) */
ffa02076:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa0207a:	10 97       	W[P2] = R0;
ffa0207c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa02080:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02084:	10 91       	R0 = [P2];
ffa02086:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa02088:	10 93       	[P2] = R0;
ffa0208a:	88 a2       	R0 = [P1 + 0x28];
ffa0208c:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0208e:	13 10       	IF !CC JUMP 0xffa020b4 <_bfin_EMAC_send+0xdc>;
ffa02090:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa02094:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa02098:	b2 e0 05 20 	LSETUP(0xffa0209c <_bfin_EMAC_send+0xc4>, 0xffa020a2 <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa0209c:	88 a2       	R0 = [P1 + 0x28];
ffa0209e:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa020a0:	0a 10       	IF !CC JUMP 0xffa020b4 <_bfin_EMAC_send+0xdc>;
ffa020a2:	00 00       	NOP;
ffa020a4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001e8(-7339544) */
ffa020a8:	00 e1 00 02 	R0.L = 0x200;		/* (512)	R0=0xff900200(-7339520) */
ffa020ac:	ff e3 2e f8 	CALL 0xffa01108 <_printf_str>;
ffa020b0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa020b2:	10 20       	JUMP.S 0xffa020d2 <_bfin_EMAC_send+0xfa>;
ffa020b4:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa020b8:	61 95 00 00 
ffa020bc:	8a a2       	R2 = [P1 + 0x28];
ffa020be:	88 b2       	[P1 + 0x28] = R0;
ffa020c0:	c8 42       	R0 = R1.L (Z);
ffa020c2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa020c6:	10 0d       	CC = R0 <= 0x2;
ffa020c8:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_txIdx> */
ffa020cc:	14 1c       	IF CC JUMP 0xffa020f4 <_bfin_EMAC_send+0x11c> (BP);
ffa020ce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa020d0:	10 97       	W[P2] = R0;
ffa020d2:	01 e8 00 00 	UNLINK;
ffa020d6:	02 30       	R0 = R2;
ffa020d8:	84 04       	(P5:4) = [SP++];
ffa020da:	10 00       	RTS;
ffa020dc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa020e0:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa020e4:	ff e3 12 f8 	CALL 0xffa01108 <_printf_str>;
ffa020e8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa020ea:	01 e8 00 00 	UNLINK;
ffa020ee:	02 30       	R0 = R2;
ffa020f0:	84 04       	(P5:4) = [SP++];
ffa020f2:	10 00       	RTS;
ffa020f4:	01 30       	R0 = R1;
ffa020f6:	08 64       	R0 += 0x1;		/* (  1) */
ffa020f8:	10 97       	W[P2] = R0;
ffa020fa:	01 e8 00 00 	UNLINK;
ffa020fe:	02 30       	R0 = R2;
ffa02100:	84 04       	(P5:4) = [SP++];
ffa02102:	10 00       	RTS;
ffa02104:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90019c(-7339620) */
ffa02108:	00 e1 cc 01 	R0.L = 0x1cc;		/* (460)	R0=0xff9001cc(-7339572) */
ffa0210c:	ff e3 c0 f8 	CALL 0xffa0128c <_printf_int>;
ffa02110:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02112:	01 e8 00 00 	UNLINK;
ffa02116:	02 30       	R0 = R2;
ffa02118:	84 04       	(P5:4) = [SP++];
ffa0211a:	10 00       	RTS;

ffa0211c <_ether_testUDP>:
ffa0211c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0211e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_txIdx> */
ffa02122:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02126:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_txIdx> */
ffa0212a:	11 95       	R1 = W[P2] (Z);
ffa0212c:	11 32       	P2 = R1;
ffa0212e:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa02132:	09 e1 48 0e 	P1.L = 0xe48;		/* (3656)	P1=0xff900e48 <_txbuf> */
ffa02136:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa0213a:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0213c:	52 91       	P2 = [P2];
ffa0213e:	95 ad       	P5 = [P2 + 0x18];
ffa02140:	55 32       	P2 = P5;
ffa02142:	11 96       	W[P2++] = R1;
ffa02144:	4a 30       	R1 = P2;
ffa02146:	00 e3 39 08 	CALL 0xffa031b8 <_ARP_req>;
ffa0214a:	00 0c       	CC = R0 == 0x0;
ffa0214c:	7f 18       	IF CC JUMP 0xffa0224a <_ether_testUDP+0x12e>;
ffa0214e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_txIdx> */
ffa02152:	0a e1 6c 0e 	P2.L = 0xe6c;		/* (3692)	P2=0xff900e6c <_NetOurMAC> */
ffa02156:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02158:	50 99       	R0 = B[P2] (X);
ffa0215a:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0215e:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa02162:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02166:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa0216a:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa0216e:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02172:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa02176:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa0217a:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa0217e:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa02182:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa02186:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa0218a:	ff e3 1f fc 	CALL 0xffa019c8 <_htons>;
ffa0218e:	e8 b5       	W[P5 + 0xe] = R0;
ffa02190:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa02194:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa02198:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0219a:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa0219e:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa021a0:	ff e3 14 fc 	CALL 0xffa019c8 <_htons>;
ffa021a4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e6c <_NetOurMAC> */
ffa021a8:	0a e1 46 0e 	P2.L = 0xe46;		/* (3654)	P2=0xff900e46 <_NetIPID> */
ffa021ac:	68 b6       	W[P5 + 0x12] = R0;
ffa021ae:	10 95       	R0 = W[P2] (Z);
ffa021b0:	08 30       	R1 = R0;
ffa021b2:	09 64       	R1 += 0x1;		/* (  1) */
ffa021b4:	11 97       	W[P2] = R1;
ffa021b6:	ff e3 09 fc 	CALL 0xffa019c8 <_htons>;
ffa021ba:	a8 b6       	W[P5 + 0x14] = R0;
ffa021bc:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa021c0:	ff e3 04 fc 	CALL 0xffa019c8 <_htons>;
ffa021c4:	e8 b6       	W[P5 + 0x16] = R0;
ffa021c6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa021c8:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa021cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e46 <_NetIPID> */
ffa021d0:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa021d2:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa021d6:	0a e1 78 0e 	P2.L = 0xe78;		/* (3704)	P2=0xff900e78 <_NetOurIP> */
ffa021da:	10 91       	R0 = [P2];
ffa021dc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e78 <_NetOurIP> */
ffa021e0:	0a e1 3c 0e 	P2.L = 0xe3c;		/* (3644)	P2=0xff900e3c <_NetDestIP> */
ffa021e4:	e8 b1       	[P5 + 0x1c] = R0;
ffa021e6:	10 91       	R0 = [P2];
ffa021e8:	28 b2       	[P5 + 0x20] = R0;
ffa021ea:	45 30       	R0 = P5;
ffa021ec:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa021ee:	6f b7       	W[P5 + 0x1a] = R7;
ffa021f0:	80 64       	R0 += 0x10;		/* ( 16) */
ffa021f2:	ff e3 d3 fb 	CALL 0xffa01998 <_NetCksum>;
ffa021f6:	c0 43       	R0 =~ R0;
ffa021f8:	68 b7       	W[P5 + 0x1a] = R0;
ffa021fa:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa021fe:	ff e3 e5 fb 	CALL 0xffa019c8 <_htons>;
ffa02202:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa02206:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa0220a:	ff e3 df fb 	CALL 0xffa019c8 <_htons>;
ffa0220e:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa02212:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa02214:	ff e3 da fb 	CALL 0xffa019c8 <_htons>;
ffa02218:	55 32       	P2 = P5;
ffa0221a:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa0221e:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa02222:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa02224:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02226:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa02228:	b2 e0 03 10 	LSETUP(0xffa0222c <_ether_testUDP+0x110>, 0xffa0222e <_ether_testUDP+0x112>) LC1 = P1;
ffa0222c:	11 9a       	B[P2++] = R1;
ffa0222e:	09 64       	R1 += 0x1;		/* (  1) */
ffa02230:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa02234:	00 e1 14 02 	R0.L = 0x214;		/* (532)	R0=0xff900214(-7339500) */
ffa02238:	ff e3 68 f7 	CALL 0xffa01108 <_printf_str>;
ffa0223c:	ff e3 70 fd 	CALL 0xffa01d1c <_bfin_EMAC_send_nocopy>;
ffa02240:	01 e8 00 00 	UNLINK;
ffa02244:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02246:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02248:	10 00       	RTS;
ffa0224a:	01 e8 00 00 	UNLINK;
ffa0224e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02250:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02252:	10 00       	RTS;

ffa02254 <_eth_header_setup>:
ffa02254:	c4 04       	[--SP] = (P5:4);
ffa02256:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e3c <_NetDestIP> */
ffa0225a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0225e:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_txIdx> */
ffa02262:	00 32       	P0 = R0;
ffa02264:	10 95       	R0 = W[P2] (Z);
ffa02266:	10 32       	P2 = R0;
ffa02268:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa0226c:	09 e1 48 0e 	P1.L = 0xe48;		/* (3656)	P1=0xff900e48 <_txbuf> */
ffa02270:	00 91       	R0 = [P0];
ffa02272:	21 32       	P4 = R1;
ffa02274:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02276:	52 91       	P2 = [P2];
ffa02278:	08 30       	R1 = R0;
ffa0227a:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa0227c:	80 67       	R0 += -0x10;		/* (-16) */
ffa0227e:	95 ad       	P5 = [P2 + 0x18];
ffa02280:	00 93       	[P0] = R0;
ffa02282:	02 30       	R0 = R2;
ffa02284:	55 32       	P2 = P5;
ffa02286:	11 96       	W[P2++] = R1;
ffa02288:	4a 30       	R1 = P2;
ffa0228a:	00 e3 97 07 	CALL 0xffa031b8 <_ARP_req>;
ffa0228e:	00 0c       	CC = R0 == 0x0;
ffa02290:	2b 18       	IF CC JUMP 0xffa022e6 <_eth_header_setup+0x92>;
ffa02292:	00 00       	NOP;
ffa02294:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_txIdx> */
ffa02298:	0a e1 6c 0e 	P2.L = 0xe6c;		/* (3692)	P2=0xff900e6c <_NetOurMAC> */
ffa0229c:	50 99       	R0 = B[P2] (X);
ffa0229e:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa022a2:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa022a6:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa022aa:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa022ae:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa022b2:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa022b6:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa022ba:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa022be:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa022c2:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa022c6:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa022ca:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa022ce:	ff e3 7d fb 	CALL 0xffa019c8 <_htons>;
ffa022d2:	e8 b5       	W[P5 + 0xe] = R0;
ffa022d4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa022d6:	20 9b       	B[P4] = R0;
ffa022d8:	4d 30       	R1 = P5;
ffa022da:	81 64       	R1 += 0x10;		/* ( 16) */
ffa022dc:	01 e8 00 00 	UNLINK;
ffa022e0:	01 30       	R0 = R1;
ffa022e2:	84 04       	(P5:4) = [SP++];
ffa022e4:	10 00       	RTS;
ffa022e6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa022e8:	20 9b       	B[P4] = R0;
ffa022ea:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa022ec:	01 e8 00 00 	UNLINK;
ffa022f0:	01 30       	R0 = R1;
ffa022f2:	84 04       	(P5:4) = [SP++];
ffa022f4:	10 00       	RTS;
	...

ffa022f8 <_icmp_packet_setup>:
ffa022f8:	e4 05       	[--SP] = (R7:4, P5:4);
ffa022fa:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa022fe:	29 32       	P5 = R1;
ffa02300:	7f 30       	R7 = FP;
ffa02302:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02304:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02306:	f0 bb       	[FP -0x4] = R0;
ffa02308:	07 30       	R0 = R7;
ffa0230a:	22 32       	P4 = R2;
ffa0230c:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa02310:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa02314:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa02318:	ff e3 9e ff 	CALL 0xffa02254 <_eth_header_setup>;
ffa0231c:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa02320:	68 99 00 00 
ffa02324:	80 0c       	CC = R0 < 0x0;
ffa02326:	14 18       	IF CC JUMP 0xffa0234e <_icmp_packet_setup+0x56>;
ffa02328:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0232a:	f0 b0       	[SP + 0xc] = R0;
ffa0232c:	54 30       	R2 = P4;
ffa0232e:	01 30       	R0 = R1;
ffa02330:	0f 30       	R1 = R7;
ffa02332:	ff e3 7f fb 	CALL 0xffa01a30 <_ip_header_setup>;
ffa02336:	e9 42       	R1 = R5.L (Z);
ffa02338:	f1 b0       	[SP + 0xc] = R1;
ffa0233a:	e1 42       	R1 = R4.L (Z);
ffa0233c:	31 b1       	[SP + 0x10] = R1;
ffa0233e:	72 43       	R2 = R6.B (Z);
ffa02340:	0f 30       	R1 = R7;
ffa02342:	ff e3 c1 fb 	CALL 0xffa01ac4 <_icmp_header_setup>;
ffa02346:	01 e8 00 00 	UNLINK;
ffa0234a:	a4 05       	(R7:4, P5:4) = [SP++];
ffa0234c:	10 00       	RTS;
ffa0234e:	01 e8 00 00 	UNLINK;
ffa02352:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02354:	a4 05       	(R7:4, P5:4) = [SP++];
ffa02356:	10 00       	RTS;

ffa02358 <_icmp_rx>:
ffa02358:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0235a:	28 32       	P5 = R0;
ffa0235c:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02360:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02364:	39 30       	R7 = R1;
ffa02366:	ff e3 31 fb 	CALL 0xffa019c8 <_htons>;
ffa0236a:	c0 42       	R0 = R0.L (Z);
ffa0236c:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa0236e:	01 08       	CC = R1 == R0;
ffa02370:	06 18       	IF CC JUMP 0xffa0237c <_icmp_rx+0x24>;
ffa02372:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02374:	01 e8 00 00 	UNLINK;
ffa02378:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0237a:	10 00       	RTS;
ffa0237c:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa0237e:	07 0a       	CC = R7 <= R0 (IU);
ffa02380:	f9 1b       	IF CC JUMP 0xffa02372 <_icmp_rx+0x1a>;
ffa02382:	00 00       	NOP;
ffa02384:	00 00       	NOP;
ffa02386:	00 00       	NOP;
ffa02388:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa0238c:	08 0c       	CC = R0 == 0x1;
ffa0238e:	f2 17       	IF !CC JUMP 0xffa02372 <_icmp_rx+0x1a> (BP);
ffa02390:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e6c <_NetOurMAC> */
ffa02394:	0a e1 78 0e 	P2.L = 0xe78;		/* (3704)	P2=0xff900e78 <_NetOurIP> */
ffa02398:	28 a2       	R0 = [P5 + 0x20];
ffa0239a:	11 91       	R1 = [P2];
ffa0239c:	08 08       	CC = R0 == R1;
ffa0239e:	ea 17       	IF !CC JUMP 0xffa02372 <_icmp_rx+0x1a> (BP);
ffa023a0:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa023a4:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa023a8:	08 08       	CC = R0 == R1;
ffa023aa:	3e 18       	IF CC JUMP 0xffa02426 <_icmp_rx+0xce>;
ffa023ac:	00 00       	NOP;
ffa023ae:	00 00       	NOP;
ffa023b0:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa023b2:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa023b6:	08 08       	CC = R0 == R1;
ffa023b8:	dd 17       	IF !CC JUMP 0xffa02372 <_icmp_rx+0x1a> (BP);
ffa023ba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa023be:	e9 a1       	R1 = [P5 + 0x1c];
ffa023c0:	00 e1 2c 02 	R0.L = 0x22c;		/* (556)	R0=0xff90022c(-7339476) */
ffa023c4:	ff e3 06 f8 	CALL 0xffa013d0 <_printf_ip>;
ffa023c8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e78 <_NetOurIP> */
ffa023cc:	0a e1 3c 0e 	P2.L = 0xe3c;		/* (3644)	P2=0xff900e3c <_NetDestIP> */
ffa023d0:	e8 a1       	R0 = [P5 + 0x1c];
ffa023d2:	4d 30       	R1 = P5;
ffa023d4:	10 93       	[P2] = R0;
ffa023d6:	41 64       	R1 += 0x8;		/* (  8) */
ffa023d8:	00 e3 f2 04 	CALL 0xffa02dbc <_ARP_lut_add>;
ffa023dc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90022c(-7339476) */
ffa023e0:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa023e4:	ff e3 92 f6 	CALL 0xffa01108 <_printf_str>;
ffa023e8:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa023ec:	ea a1 00 00 
ffa023f0:	f0 b0       	[SP + 0xc] = R0;
ffa023f2:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa023f6:	30 b1       	[SP + 0x10] = R0;
ffa023f8:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa023fa:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa023fe:	4f 30       	R1 = FP;
ffa02400:	70 b1       	[SP + 0x14] = R0;
ffa02402:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa02404:	07 30       	R0 = R7;
ffa02406:	ff e3 79 ff 	CALL 0xffa022f8 <_icmp_packet_setup>;
ffa0240a:	08 30       	R1 = R0;
ffa0240c:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa02410:	00 0d       	CC = R0 <= 0x0;
ffa02412:	b0 1b       	IF CC JUMP 0xffa02372 <_icmp_rx+0x1a>;
ffa02414:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa02416:	45 30       	R0 = P5;
ffa02418:	17 30       	R2 = R7;
ffa0241a:	ff e3 1f f8 	CALL 0xffa01458 <_memcpy_>;
ffa0241e:	ff e3 7f fc 	CALL 0xffa01d1c <_bfin_EMAC_send_nocopy>;
ffa02422:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02424:	a8 2f       	JUMP.S 0xffa02374 <_icmp_rx+0x1c>;
ffa02426:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e3c <_NetDestIP> */
ffa0242a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0242c:	0a e1 cc 0b 	P2.L = 0xbcc;		/* (3020)	P2=0xff900bcc <_g_streamEnabled> */
ffa02430:	10 9b       	B[P2] = R0;
ffa02432:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02434:	a0 2f       	JUMP.S 0xffa02374 <_icmp_rx+0x1c>;
	...

ffa02438 <_udp_packet_setup>:
ffa02438:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0243a:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0243e:	29 32       	P5 = R1;
ffa02440:	7f 30       	R7 = FP;
ffa02442:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e44 <_txIdx> */
ffa02446:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02448:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0244a:	0c e1 7c 0e 	P4.L = 0xe7c;		/* (3708)	P4=0xff900e7c <_NetDataDestIP> */
ffa0244e:	f0 bb       	[FP -0x4] = R0;
ffa02450:	22 91       	R2 = [P4];
ffa02452:	07 30       	R0 = R7;
ffa02454:	ff e3 00 ff 	CALL 0xffa02254 <_eth_header_setup>;
ffa02458:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa0245c:	68 99 00 00 
ffa02460:	80 0c       	CC = R0 < 0x0;
ffa02462:	14 18       	IF CC JUMP 0xffa0248a <_udp_packet_setup+0x52>;
ffa02464:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa02466:	f0 b0       	[SP + 0xc] = R0;
ffa02468:	01 30       	R0 = R1;
ffa0246a:	22 91       	R2 = [P4];
ffa0246c:	0f 30       	R1 = R7;
ffa0246e:	ff e3 e1 fa 	CALL 0xffa01a30 <_ip_header_setup>;
ffa02472:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa02476:	f1 b0       	[SP + 0xc] = R1;
ffa02478:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa0247c:	0f 30       	R1 = R7;
ffa0247e:	ff e3 47 fb 	CALL 0xffa01b0c <_udp_header_setup>;
ffa02482:	01 e8 00 00 	UNLINK;
ffa02486:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02488:	10 00       	RTS;
ffa0248a:	01 e8 00 00 	UNLINK;
ffa0248e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02490:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02492:	10 00       	RTS;

ffa02494 <_SetupTxBuffer>:
ffa02494:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02496:	38 30       	R7 = R0;
ffa02498:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa0249c:	c7 40       	R7 *= R0;
ffa0249e:	17 32       	P2 = R7;
ffa024a0:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800e48 */
ffa024a4:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa024a8:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa024ac:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa024b0:	6a 5b       	P5 = P2 + P5;
ffa024b2:	c7 51       	R7 = R7 + R0;
ffa024b4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa024b8:	45 30       	R0 = P5;
ffa024ba:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa024bc:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa024be:	ff e3 dd f7 	CALL 0xffa01478 <_memset_>;
ffa024c2:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa024c6:	af b1 00 00 
ffa024ca:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa024ce:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa024d2:	ff e3 d3 f7 	CALL 0xffa01478 <_memset_>;
ffa024d6:	45 30       	R0 = P5;
ffa024d8:	60 64       	R0 += 0xc;		/* ( 12) */
ffa024da:	28 93       	[P5] = R0;
ffa024dc:	a8 a1       	R0 = [P5 + 0x18];
ffa024de:	68 b0       	[P5 + 0x4] = R0;
ffa024e0:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa024e4:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa024e6:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa024e8:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa024ea:	10 54       	R0 = R0 & R2;
ffa024ec:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa024ee:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa024f2:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa024f4:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa024f8:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa024fa:	18 54       	R0 = R0 & R3;
ffa024fc:	08 56       	R0 = R0 | R1;
ffa024fe:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa02502:	08 56       	R0 = R0 | R1;
ffa02504:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02508:	45 30       	R0 = P5;
ffa0250a:	40 65       	R0 += 0x28;		/* ( 40) */
ffa0250c:	28 b1       	[P5 + 0x10] = R0;
ffa0250e:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa02512:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02514:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02516:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa0251a:	10 54       	R0 = R0 & R2;
ffa0251c:	08 56       	R0 = R0 | R1;
ffa0251e:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa02522:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa02526:	18 54       	R0 = R0 & R3;
ffa02528:	39 64       	R1 += 0x7;		/* (  7) */
ffa0252a:	08 54       	R0 = R0 & R1;
ffa0252c:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02530:	ed bc       	[P5 + 0xc] = P5;
ffa02532:	01 e8 00 00 	UNLINK;
ffa02536:	45 30       	R0 = P5;
ffa02538:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0253a:	10 00       	RTS;

ffa0253c <_SetupRxBuffer>:
ffa0253c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0253e:	38 30       	R7 = R0;
ffa02540:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02544:	c7 40       	R7 *= R0;
ffa02546:	17 32       	P2 = R7;
ffa02548:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa0254c:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa02550:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02554:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa02558:	6a 5b       	P5 = P2 + P5;
ffa0255a:	c7 51       	R7 = R7 + R0;
ffa0255c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02560:	45 30       	R0 = P5;
ffa02562:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02564:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa02566:	ff e3 89 f7 	CALL 0xffa01478 <_memset_>;
ffa0256a:	af b1       	[P5 + 0x18] = R7;
ffa0256c:	07 30       	R0 = R7;
ffa0256e:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa02572:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02576:	ff e3 81 f7 	CALL 0xffa01478 <_memset_>;
ffa0257a:	45 30       	R0 = P5;
ffa0257c:	60 64       	R0 += 0xc;		/* ( 12) */
ffa0257e:	28 93       	[P5] = R0;
ffa02580:	a8 a1       	R0 = [P5 + 0x18];
ffa02582:	68 b0       	[P5 + 0x4] = R0;
ffa02584:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa02588:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0258a:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa0258c:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0258e:	08 54       	R0 = R0 & R1;
ffa02590:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02592:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02596:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa02598:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa0259c:	38 54       	R0 = R0 & R7;
ffa0259e:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa025a0:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa025a4:	18 56       	R0 = R0 | R3;
ffa025a6:	10 56       	R0 = R0 | R2;
ffa025a8:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa025ac:	45 30       	R0 = P5;
ffa025ae:	20 65       	R0 += 0x24;		/* ( 36) */
ffa025b0:	28 b1       	[P5 + 0x10] = R0;
ffa025b2:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa025b6:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa025b8:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa025ba:	08 54       	R0 = R0 & R1;
ffa025bc:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa025c0:	08 56       	R0 = R0 | R1;
ffa025c2:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa025c6:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa025ca:	38 54       	R0 = R0 & R7;
ffa025cc:	18 56       	R0 = R0 | R3;
ffa025ce:	10 56       	R0 = R0 | R2;
ffa025d0:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa025d4:	ed bc       	[P5 + 0xc] = P5;
ffa025d6:	01 e8 00 00 	UNLINK;
ffa025da:	45 30       	R0 = P5;
ffa025dc:	bd 05       	(R7:7, P5:5) = [SP++];
ffa025de:	10 00       	RTS;

ffa025e0 <_SetupSystemRegs>:
ffa025e0:	f5 05       	[--SP] = (R7:6, P5:5);
ffa025e2:	28 32       	P5 = R0;
ffa025e4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa025e8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa025ec:	00 e1 48 02 	R0.L = 0x248;		/* (584)	R0=0xff900248(-7339448) */
ffa025f0:	ff e3 8c f5 	CALL 0xffa01108 <_printf_str>;
ffa025f4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bcc(-4191284) */
ffa025f8:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa025fc:	50 95       	R0 = W[P2] (X);
ffa025fe:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa02602:	08 54       	R0 = R0 & R1;
ffa02604:	10 97       	W[P2] = R0;
ffa02606:	50 95       	R0 = W[P2] (X);
ffa02608:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa0260a:	10 97       	W[P2] = R0;
ffa0260c:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0260e:	51 95       	R1 = W[P2] (X);
ffa02610:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa02614:	08 56       	R0 = R0 | R1;
ffa02616:	10 97       	W[P2] = R0;
ffa02618:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0261a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0261c:	10 97       	W[P2] = R0;
ffa0261e:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa02620:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa02622:	10 97       	W[P2] = R0;
ffa02624:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa02628:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa0262c:	50 95       	R0 = W[P2] (X);
ffa0262e:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa02630:	10 97       	W[P2] = R0;
ffa02632:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa02636:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa0263a:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa0263e:	10 93       	[P2] = R0;
ffa02640:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02642:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa02646:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02648:	ff e3 4c f9 	CALL 0xffa018e0 <_WrPHYReg>;
ffa0264c:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02650:	ff e3 f2 f8 	CALL 0xffa01834 <_udelay>;
ffa02654:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02656:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02658:	ff e3 60 f9 	CALL 0xffa01918 <_RdPHYReg>;
ffa0265c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0265e:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa02660:	0e 20       	JUMP.S 0xffa0267c <_SetupSystemRegs+0x9c>;
ffa02662:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02666:	ff e3 e7 f8 	CALL 0xffa01834 <_udelay>;
ffa0266a:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0266c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0266e:	ff e3 55 f9 	CALL 0xffa01918 <_RdPHYReg>;
ffa02672:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02674:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa02678:	0f 08       	CC = R7 == R1;
ffa0267a:	35 18       	IF CC JUMP 0xffa026e4 <_SetupSystemRegs+0x104>;
ffa0267c:	06 54       	R0 = R6 & R0;
ffa0267e:	00 0c       	CC = R0 == 0x0;
ffa02680:	f1 1f       	IF CC JUMP 0xffa02662 <_SetupSystemRegs+0x82> (BP);
ffa02682:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa02684:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02686:	ff e3 49 f9 	CALL 0xffa01918 <_RdPHYReg>;
ffa0268a:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa0268e:	01 54       	R0 = R1 & R0;
ffa02690:	00 0c       	CC = R0 == 0x0;
ffa02692:	27 1c       	IF CC JUMP 0xffa026e0 <_SetupSystemRegs+0x100> (BP);
ffa02694:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02696:	d0 4f       	R0 <<= 0x1a;
ffa02698:	28 93       	[P5] = R0;
ffa0269a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa0269e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa026a0:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa026a4:	10 93       	[P2] = R0;
ffa026a6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa026aa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026ac:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa026b0:	10 97       	W[P2] = R0;
ffa026b2:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa026b4:	22 6c       	P2 += 0x4;		/* (  4) */
ffa026b6:	11 97       	W[P2] = R1;
ffa026b8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa026ba:	10 97       	W[P2] = R0;
ffa026bc:	22 6c       	P2 += 0x4;		/* (  4) */
ffa026be:	10 97       	W[P2] = R0;
ffa026c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa026c4:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa026c8:	10 97       	W[P2] = R0;
ffa026ca:	22 6c       	P2 += 0x4;		/* (  4) */
ffa026cc:	11 97       	W[P2] = R1;
ffa026ce:	22 6c       	P2 += 0x4;		/* (  4) */
ffa026d0:	10 97       	W[P2] = R0;
ffa026d2:	22 6c       	P2 += 0x4;		/* (  4) */
ffa026d4:	10 97       	W[P2] = R0;
ffa026d6:	01 e8 00 00 	UNLINK;
ffa026da:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026dc:	b5 05       	(R7:6, P5:5) = [SP++];
ffa026de:	10 00       	RTS;
ffa026e0:	28 93       	[P5] = R0;
ffa026e2:	dc 2f       	JUMP.S 0xffa0269a <_SetupSystemRegs+0xba>;
ffa026e4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa026e8:	00 e1 60 02 	R0.L = 0x260;		/* (608)	R0=0xff900260(-7339424) */
ffa026ec:	ff e3 0e f5 	CALL 0xffa01108 <_printf_str>;
ffa026f0:	01 e8 00 00 	UNLINK;
ffa026f4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa026f6:	b5 05       	(R7:6, P5:5) = [SP++];
ffa026f8:	10 00       	RTS;
	...

ffa026fc <_SetupMacAddr>:
ffa026fc:	10 32       	P2 = R0;
ffa026fe:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02700:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02702:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02706:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa0270a:	10 9b       	B[P2] = R0;
ffa0270c:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa0270e:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa02712:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa02714:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa02718:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa0271a:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa0271e:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa02722:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02726:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa02728:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa0272c:	10 99       	R0 = B[P2] (Z);
ffa0272e:	08 56       	R0 = R0 | R1;
ffa02730:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa02734:	89 4f       	R1 <<= 0x11;
ffa02736:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00e48(-4190648) */
ffa0273a:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa0273e:	08 56       	R0 = R0 | R1;
ffa02740:	08 93       	[P1] = R0;
ffa02742:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02746:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa0274a:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa0274e:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa02750:	28 93       	[P5] = R0;
ffa02752:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa02756:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa0275a:	09 91       	R1 = [P1];
ffa0275c:	07 e1 64 0a 	R7.L = 0xa64;		/* (2660)	R7=0xff900a64(-7337372) */
ffa02760:	00 e1 94 02 	R0.L = 0x294;		/* (660)	R0=0xff900294(-7339372) */
ffa02764:	ff e3 38 f5 	CALL 0xffa011d4 <_printf_hex>;
ffa02768:	07 30       	R0 = R7;
ffa0276a:	ff e3 cf f4 	CALL 0xffa01108 <_printf_str>;
ffa0276e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900294(-7339372) */
ffa02772:	29 91       	R1 = [P5];
ffa02774:	00 e1 a0 02 	R0.L = 0x2a0;		/* (672)	R0=0xff9002a0(-7339360) */
ffa02778:	ff e3 2e f5 	CALL 0xffa011d4 <_printf_hex>;
ffa0277c:	01 e8 00 00 	UNLINK;
ffa02780:	07 30       	R0 = R7;
ffa02782:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02784:	ff e2 c2 f4 	JUMP.L 0xffa01108 <_printf_str>;

ffa02788 <_bfin_EMAC_init>:
ffa02788:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0278a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002a0(-7339360) */
ffa0278e:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02792:	00 e1 ac 02 	R0.L = 0x2ac;		/* (684)	R0=0xff9002ac(-7339348) */
ffa02796:	ff e3 b9 f4 	CALL 0xffa01108 <_printf_str>;
ffa0279a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 */
ffa0279e:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa027a0:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_txIdx> */
ffa027a4:	16 97       	W[P2] = R6;
ffa027a6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_txIdx> */
ffa027aa:	0a e1 58 0e 	P2.L = 0xe58;		/* (3672)	P2=0xff900e58 <_rxIdx> */
ffa027ae:	16 97       	W[P2] = R6;
ffa027b0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e58 <_rxIdx> */
ffa027b4:	0a e1 46 0e 	P2.L = 0xe46;		/* (3654)	P2=0xff900e46 <_NetIPID> */
ffa027b8:	16 97       	W[P2] = R6;
ffa027ba:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e46 <_NetIPID> */
ffa027be:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa027c0:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetSubnetMask> */
ffa027c4:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa027c6:	17 93       	[P2] = R7;
ffa027c8:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa027cc:	f0 b0       	[SP + 0xc] = R0;
ffa027ce:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa027d0:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa027d4:	ff e3 50 f8 	CALL 0xffa01874 <_FormatIPAddress>;
ffa027d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e74 <_NetSubnetMask> */
ffa027dc:	0a e1 78 0e 	P2.L = 0xe78;		/* (3704)	P2=0xff900e78 <_NetOurIP> */
ffa027e0:	10 93       	[P2] = R0;
ffa027e2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa027e4:	f0 b0       	[SP + 0xc] = R0;
ffa027e6:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa027ea:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa027ec:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa027f0:	ff e3 42 f8 	CALL 0xffa01874 <_FormatIPAddress>;
ffa027f4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e78 <_NetOurIP> */
ffa027f8:	0a e1 3c 0e 	P2.L = 0xe3c;		/* (3644)	P2=0xff900e3c <_NetDestIP> */
ffa027fc:	10 93       	[P2] = R0;
ffa027fe:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02800:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa02802:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa02806:	f0 b0       	[SP + 0xc] = R0;
ffa02808:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa0280c:	ff e3 34 f8 	CALL 0xffa01874 <_FormatIPAddress>;
ffa02810:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e3c <_NetDestIP> */
ffa02814:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetDataDestIP> */
ffa02818:	10 93       	[P2] = R0;
ffa0281a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e7c <_NetDataDestIP> */
ffa0281e:	0a e1 5c 0f 	P2.L = 0xf5c;		/* (3932)	P2=0xff900f5c <_TcpState> */
ffa02822:	17 93       	[P2] = R7;
ffa02824:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f5c <_TcpState> */
ffa02828:	0a e1 54 0f 	P2.L = 0xf54;		/* (3924)	P2=0xff900f54 <_TcpSeqClient> */
ffa0282c:	17 93       	[P2] = R7;
ffa0282e:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa02832:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f54 <_TcpSeqClient> */
ffa02836:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa0283a:	0a e1 50 0f 	P2.L = 0xf50;		/* (3920)	P2=0xff900f50 <_TcpSeqHost> */
ffa0283e:	10 93       	[P2] = R0;
ffa02840:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f50 <_TcpSeqHost> */
ffa02844:	0a e1 68 0f 	P2.L = 0xf68;		/* (3944)	P2=0xff900f68 <_TcpClientPort> */
ffa02848:	16 97       	W[P2] = R6;
ffa0284a:	00 e3 6b 02 	CALL 0xffa02d20 <_ARP_init>;
ffa0284e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00f68(-4190360) */
ffa02852:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02856:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa0285a:	17 93       	[P2] = R7;
ffa0285c:	00 e1 6c 0e 	R0.L = 0xe6c;		/* (3692)	R0=0xff900e6c <_NetOurMAC>(-7336340) */
ffa02860:	ff e3 4e ff 	CALL 0xffa026fc <_SetupMacAddr>;
ffa02864:	47 30       	R0 = FP;
ffa02866:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa02868:	ff e3 bc fe 	CALL 0xffa025e0 <_SetupSystemRegs>;
ffa0286c:	80 0c       	CC = R0 < 0x0;
ffa0286e:	7a 18       	IF CC JUMP 0xffa02962 <_bfin_EMAC_init+0x1da>;
ffa02870:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa02874:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02876:	07 e1 5c 0e 	R7.L = 0xe5c;		/* (3676)	R7=0xff900e5c <_rxbuf>(-7336356) */
ffa0287a:	ff e3 61 fe 	CALL 0xffa0253c <_SetupRxBuffer>;
ffa0287e:	07 32       	P0 = R7;
ffa02880:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02882:	00 93       	[P0] = R0;
ffa02884:	17 32       	P2 = R7;
ffa02886:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa02888:	44 30       	R0 = P4;
ffa0288a:	ff e3 59 fe 	CALL 0xffa0253c <_SetupRxBuffer>;
ffa0288e:	44 0c       	CC = P4 == 0x0;
ffa02890:	08 32       	P1 = R0;
ffa02892:	28 92       	[P5++] = R0;
ffa02894:	52 18       	IF CC JUMP 0xffa02938 <_bfin_EMAC_init+0x1b0>;
ffa02896:	07 32       	P0 = R7;
ffa02898:	5c 0c       	CC = P4 == 0x3;
ffa0289a:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa0289c:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa028a0:	d0 b0       	[P2 + 0xc] = R0;
ffa028a2:	54 18       	IF CC JUMP 0xffa0294a <_bfin_EMAC_init+0x1c2>;
ffa028a4:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa028a6:	5c 0d       	CC = P4 <= 0x3;
ffa028a8:	ee 1f       	IF CC JUMP 0xffa02884 <_bfin_EMAC_init+0xfc> (BP);
ffa028aa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa028ac:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df4 <_printf_temp> */
ffa028b0:	ff e3 f2 fd 	CALL 0xffa02494 <_SetupTxBuffer>;
ffa028b4:	0b e1 48 0e 	P3.L = 0xe48;		/* (3656)	P3=0xff900e48 <_txbuf> */
ffa028b8:	18 93       	[P3] = R0;
ffa028ba:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa028bc:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa028be:	44 30       	R0 = P4;
ffa028c0:	ff e3 ea fd 	CALL 0xffa02494 <_SetupTxBuffer>;
ffa028c4:	44 0c       	CC = P4 == 0x0;
ffa028c6:	08 32       	P1 = R0;
ffa028c8:	28 92       	[P5++] = R0;
ffa028ca:	35 18       	IF CC JUMP 0xffa02934 <_bfin_EMAC_init+0x1ac>;
ffa028cc:	00 00       	NOP;
ffa028ce:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa028d0:	5c 0c       	CC = P4 == 0x3;
ffa028d2:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa028d6:	d0 b0       	[P2 + 0xc] = R0;
ffa028d8:	32 18       	IF CC JUMP 0xffa0293c <_bfin_EMAC_init+0x1b4>;
ffa028da:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa028dc:	5c 0d       	CC = P4 <= 0x3;
ffa028de:	ef 1f       	IF CC JUMP 0xffa028bc <_bfin_EMAC_init+0x134> (BP);
ffa028e0:	17 32       	P2 = R7;
ffa028e2:	51 91       	P1 = [P2];
ffa028e4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa028e8:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa028ec:	51 93       	[P2] = P1;
ffa028ee:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa028f0:	42 6c       	P2 += 0x8;		/* (  8) */
ffa028f2:	10 97       	W[P2] = R0;
ffa028f4:	ff e3 e8 f7 	CALL 0xffa018c4 <_PollMdcDone>;
ffa028f8:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa028fa:	f0 b9       	R0 = [FP -0x4];
ffa028fc:	d1 4f       	R1 <<= 0x1a;
ffa028fe:	08 08       	CC = R0 == R1;
ffa02900:	2c 18       	IF CC JUMP 0xffa02958 <_bfin_EMAC_init+0x1d0>;
ffa02902:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02906:	01 30       	R0 = R1;
ffa02908:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa0290c:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02910:	10 93       	[P2] = R0;
ffa02912:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02916:	00 e1 bc 02 	R0.L = 0x2bc;		/* (700)	R0=0xff9002bc(-7339332) */
ffa0291a:	ff e3 5d f4 	CALL 0xffa011d4 <_printf_hex>;
ffa0291e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002bc(-7339332) */
ffa02922:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02926:	ff e3 f1 f3 	CALL 0xffa01108 <_printf_str>;
ffa0292a:	01 e8 00 00 	UNLINK;
ffa0292e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02930:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02932:	10 00       	RTS;
ffa02934:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02936:	c4 2f       	JUMP.S 0xffa028be <_bfin_EMAC_init+0x136>;
ffa02938:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa0293a:	a7 2f       	JUMP.S 0xffa02888 <_bfin_EMAC_init+0x100>;
ffa0293c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa02940:	0a e1 48 0e 	P2.L = 0xe48;		/* (3656)	P2=0xff900e48 <_txbuf> */
ffa02944:	10 91       	R0 = [P2];
ffa02946:	c8 b0       	[P1 + 0xc] = R0;
ffa02948:	cc 2f       	JUMP.S 0xffa028e0 <_bfin_EMAC_init+0x158>;
ffa0294a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e48 <_txbuf> */
ffa0294e:	0a e1 5c 0e 	P2.L = 0xe5c;		/* (3676)	P2=0xff900e5c <_rxbuf> */
ffa02952:	10 91       	R0 = [P2];
ffa02954:	c8 b0       	[P1 + 0xc] = R0;
ffa02956:	aa 2f       	JUMP.S 0xffa028aa <_bfin_EMAC_init+0x122>;
ffa02958:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa0295c:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa0295e:	01 30       	R0 = R1;
ffa02960:	d4 2f       	JUMP.S 0xffa02908 <_bfin_EMAC_init+0x180>;
ffa02962:	01 e8 00 00 	UNLINK;
ffa02966:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02968:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0296a:	10 00       	RTS;

ffa0296c <_bfin_EMAC_recv_poll>:
ffa0296c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0296e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa02972:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa02976:	0d e1 5c 0e 	P5.L = 0xe5c;		/* (3676)	P5=0xff900e5c <_rxbuf> */
ffa0297a:	0c e1 58 0e 	P4.L = 0xe58;		/* (3672)	P4=0xff900e58 <_rxIdx> */
ffa0297e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02982:	28 30       	R5 = R0;
ffa02984:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02986:	75 30       	R6 = P5;
ffa02988:	5c 32       	P3 = P4;
ffa0298a:	06 20       	JUMP.S 0xffa02996 <_bfin_EMAC_recv_poll+0x2a>;
ffa0298c:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0298e:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02992:	07 08       	CC = R7 == R0;
ffa02994:	0c 18       	IF CC JUMP 0xffa029ac <_bfin_EMAC_recv_poll+0x40>;
ffa02996:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa0299a:	ff e3 4d f7 	CALL 0xffa01834 <_udelay>;
ffa0299e:	20 95       	R0 = W[P4] (Z);
ffa029a0:	10 32       	P2 = R0;
ffa029a2:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa029a4:	52 91       	P2 = [P2];
ffa029a6:	90 a2       	R0 = [P2 + 0x28];
ffa029a8:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa029aa:	f1 1f       	IF CC JUMP 0xffa0298c <_bfin_EMAC_recv_poll+0x20> (BP);
ffa029ac:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa029b0:	91 a2       	R1 = [P2 + 0x28];
ffa029b2:	41 54       	R1 = R1 & R0;
ffa029b4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa029b6:	01 09       	CC = R1 <= R0;
ffa029b8:	07 10       	IF !CC JUMP 0xffa029c6 <_bfin_EMAC_recv_poll+0x5a>;
ffa029ba:	01 e8 00 00 	UNLINK;
ffa029be:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa029c0:	07 30       	R0 = R7;
ffa029c2:	a3 05       	(R7:4, P5:3) = [SP++];
ffa029c4:	10 00       	RTS;
ffa029c6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa029c8:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa029cc:	90 b2 00 00 
ffa029d0:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa029d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa029d6:	0f 30       	R1 = R7;
ffa029d8:	00 e1 c8 02 	R0.L = 0x2c8;		/* (712)	R0=0xff9002c8(-7339320) */
ffa029dc:	ff e3 58 f4 	CALL 0xffa0128c <_printf_int>;
ffa029e0:	18 95       	R0 = W[P3] (Z);
ffa029e2:	10 32       	P2 = R0;
ffa029e4:	0e 32       	P1 = R6;
ffa029e6:	0f 30       	R1 = R7;
ffa029e8:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa029ea:	52 91       	P2 = [P2];
ffa029ec:	90 a1       	R0 = [P2 + 0x18];
ffa029ee:	15 32       	P2 = R5;
ffa029f0:	10 93       	[P2] = R0;
ffa029f2:	00 e3 4b 02 	CALL 0xffa02e88 <_ARP_rx>;
ffa029f6:	00 0c       	CC = R0 == 0x0;
ffa029f8:	1f 18       	IF CC JUMP 0xffa02a36 <_bfin_EMAC_recv_poll+0xca>;
ffa029fa:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa029fc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02a00:	20 95       	R0 = W[P4] (Z);
ffa02a02:	10 32       	P2 = R0;
ffa02a04:	61 95       	R1 = W[P4] (X);
ffa02a06:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a08:	09 e1 58 0e 	P1.L = 0xe58;		/* (3672)	P1=0xff900e58 <_rxIdx> */
ffa02a0c:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02a0e:	52 91       	P2 = [P2];
ffa02a10:	90 b2       	[P2 + 0x28] = R0;
ffa02a12:	c8 42       	R0 = R1.L (Z);
ffa02a14:	10 0d       	CC = R0 <= 0x2;
ffa02a16:	08 1c       	IF CC JUMP 0xffa02a26 <_bfin_EMAC_recv_poll+0xba> (BP);
ffa02a18:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a1a:	08 97       	W[P1] = R0;
ffa02a1c:	01 e8 00 00 	UNLINK;
ffa02a20:	07 30       	R0 = R7;
ffa02a22:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02a24:	10 00       	RTS;
ffa02a26:	01 30       	R0 = R1;
ffa02a28:	08 64       	R0 += 0x1;		/* (  1) */
ffa02a2a:	08 97       	W[P1] = R0;
ffa02a2c:	01 e8 00 00 	UNLINK;
ffa02a30:	07 30       	R0 = R7;
ffa02a32:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02a34:	10 00       	RTS;
ffa02a36:	0d 32       	P1 = R5;
ffa02a38:	0f 30       	R1 = R7;
ffa02a3a:	08 91       	R0 = [P1];
ffa02a3c:	ff e3 8e fc 	CALL 0xffa02358 <_icmp_rx>;
ffa02a40:	00 0c       	CC = R0 == 0x0;
ffa02a42:	dd 1f       	IF CC JUMP 0xffa029fc <_bfin_EMAC_recv_poll+0x90> (BP);
ffa02a44:	db 2f       	JUMP.S 0xffa029fa <_bfin_EMAC_recv_poll+0x8e>;
	...

ffa02a48 <_DHCP_rx>:
ffa02a48:	ed 05       	[--SP] = (R7:5, P5:5);
ffa02a4a:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02a4e:	6f 30       	R5 = FP;
ffa02a50:	e5 67       	R5 += -0x4;		/* ( -4) */
ffa02a52:	01 20       	JUMP.S 0xffa02a54 <_DHCP_rx+0xc>;
ffa02a54:	05 30       	R0 = R5;
ffa02a56:	ff e3 8b ff 	CALL 0xffa0296c <_bfin_EMAC_recv_poll>;
ffa02a5a:	38 30       	R7 = R0;
ffa02a5c:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa02a60:	87 51       	R6 = R7 + R0;
ffa02a62:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa02a66:	00 e1 08 03 	R0.L = 0x308;		/* (776)	R0=0xff900308(-7339256) */
ffa02a6a:	0e 30       	R1 = R6;
ffa02a6c:	ff e3 10 f4 	CALL 0xffa0128c <_printf_int>;
ffa02a70:	20 e1 1b 01 	R0 = 0x11b (X);		/*		R0=0x11b(283) */
ffa02a74:	07 09       	CC = R7 <= R0;
ffa02a76:	fd b9       	P5 = [FP -0x4];
ffa02a78:	0c 18       	IF CC JUMP 0xffa02a90 <_DHCP_rx+0x48>;
ffa02a7a:	00 00       	NOP;
ffa02a7c:	00 00       	NOP;
ffa02a7e:	00 00       	NOP;
ffa02a80:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa02a82:	ff e3 a3 f7 	CALL 0xffa019c8 <_htons>;
ffa02a86:	c0 42       	R0 = R0.L (Z);
ffa02a88:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa02a8c:	08 08       	CC = R0 == R1;
ffa02a8e:	08 18       	IF CC JUMP 0xffa02a9e <_DHCP_rx+0x56>;
ffa02a90:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011b(-7339749) */
ffa02a94:	00 e1 ec 02 	R0.L = 0x2ec;		/* (748)	R0=0xff9002ec(-7339284) */
ffa02a98:	ff e3 38 f3 	CALL 0xffa01108 <_printf_str>;
ffa02a9c:	dc 2f       	JUMP.S 0xffa02a54 <_DHCP_rx+0xc>;
ffa02a9e:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa02aa2:	ff e3 93 f7 	CALL 0xffa019c8 <_htons>;
ffa02aa6:	c0 42       	R0 = R0.L (Z);
ffa02aa8:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa02aac:	01 08       	CC = R1 == R0;
ffa02aae:	d3 17       	IF !CC JUMP 0xffa02a54 <_DHCP_rx+0xc> (BP);
ffa02ab0:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa02ab4:	ff e3 8a f7 	CALL 0xffa019c8 <_htons>;
ffa02ab8:	c0 42       	R0 = R0.L (Z);
ffa02aba:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa02abe:	01 08       	CC = R1 == R0;
ffa02ac0:	ca 17       	IF !CC JUMP 0xffa02a54 <_DHCP_rx+0xc> (BP);
ffa02ac2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e5c(-4190628) */
ffa02ac6:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa02aca:	11 91       	R1 = [P2];
ffa02acc:	28 a3       	R0 = [P5 + 0x30];
ffa02ace:	08 08       	CC = R0 == R1;
ffa02ad0:	c2 17       	IF !CC JUMP 0xffa02a54 <_DHCP_rx+0xc> (BP);
ffa02ad2:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa02ad6:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa02ada:	ff e3 83 f7 	CALL 0xffa019e0 <_htonl>;
ffa02ade:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa02ae2:	01 08       	CC = R1 == R0;
ffa02ae4:	b8 17       	IF !CC JUMP 0xffa02a54 <_DHCP_rx+0xc> (BP);
ffa02ae6:	4d 30       	R1 = P5;
ffa02ae8:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa02aec:	01 50       	R0 = R1 + R0;
ffa02aee:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa02af2:	f0 bb 00 00 
ffa02af6:	ff e3 59 f8 	CALL 0xffa01ba8 <_DHCP_parse>;
ffa02afa:	e9 a3       	R1 = [P5 + 0x3c];
ffa02afc:	01 0c       	CC = R1 == 0x0;
ffa02afe:	12 1c       	IF CC JUMP 0xffa02b22 <_DHCP_rx+0xda> (BP);
ffa02b00:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa02b04:	0a e1 78 0e 	P2.L = 0xe78;		/* (3704)	P2=0xff900e78 <_NetOurIP> */
ffa02b08:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa02b0c:	11 93       	[P2] = R1;
ffa02b0e:	00 e1 dc 02 	R0.L = 0x2dc;		/* (732)	R0=0xff9002dc(-7339300) */
ffa02b12:	ff e3 5f f4 	CALL 0xffa013d0 <_printf_ip>;
ffa02b16:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002dc(-7339300) */
ffa02b1a:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02b1e:	ff e3 f5 f2 	CALL 0xffa01108 <_printf_str>;
ffa02b22:	01 e8 00 00 	UNLINK;
ffa02b26:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02b28:	ad 05       	(R7:5, P5:5) = [SP++];
ffa02b2a:	10 00       	RTS;

ffa02b2c <_DHCP_req>:
ffa02b2c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02b2e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e5c <_rxbuf> */
ffa02b32:	0d e1 40 0e 	P5.L = 0xe40;		/* (3648)	P5=0xff900e40 <_NetDHCPserv> */
ffa02b36:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02b38:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02b3c:	28 93       	[P5] = R0;
ffa02b3e:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa02b40:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa02b44:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02b46:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa02b4a:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa02b4e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02b50:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02b54:	7f 30       	R7 = FP;
ffa02b56:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa02b5a:	00 e1 1c 03 	R0.L = 0x31c;		/* (796)	R0=0xff90031c(-7339236) */
ffa02b5e:	a7 67       	R7 += -0xc;		/* (-12) */
ffa02b60:	ff e3 d4 f2 	CALL 0xffa01108 <_printf_str>;
ffa02b64:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa02b68:	2a 91 00 00 
ffa02b6c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02b6e:	ff e3 45 f9 	CALL 0xffa01df8 <_DHCP_tx>;
ffa02b72:	ff e3 6b ff 	CALL 0xffa02a48 <_DHCP_rx>;
ffa02b76:	29 91       	R1 = [P5];
ffa02b78:	39 0c       	CC = R1 == -0x1;
ffa02b7a:	43 18       	IF CC JUMP 0xffa02c00 <_DHCP_req+0xd4>;
ffa02b7c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e78 <_NetOurIP> */
ffa02b80:	0a e1 78 0e 	P2.L = 0xe78;		/* (3704)	P2=0xff900e78 <_NetOurIP> */
ffa02b84:	10 91       	R0 = [P2];
ffa02b86:	00 0c       	CC = R0 == 0x0;
ffa02b88:	08 18       	IF CC JUMP 0xffa02b98 <_DHCP_req+0x6c>;
ffa02b8a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e78 <_NetOurIP> */
ffa02b8e:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetSubnetMask> */
ffa02b92:	10 91       	R0 = [P2];
ffa02b94:	00 0c       	CC = R0 == 0x0;
ffa02b96:	30 10       	IF !CC JUMP 0xffa02bf6 <_DHCP_req+0xca>;
ffa02b98:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa02b9a:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa02b9e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ba0:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa02ba4:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02ba6:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa02baa:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02bac:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02bb0:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02bb2:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa02bb6:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa02bba:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa02bbe:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa02bc2:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa02bc6:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa02bca:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa02bce:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02bd0:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa02bd4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa02bd8:	00 e1 4c 03 	R0.L = 0x34c;		/* (844)	R0=0xff90034c(-7339188) */
ffa02bdc:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa02be0:	ff e3 94 f2 	CALL 0xffa01108 <_printf_str>;
ffa02be4:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02be6:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa02bea:	2a 91 00 00 
ffa02bee:	ff e3 05 f9 	CALL 0xffa01df8 <_DHCP_tx>;
ffa02bf2:	ff e3 2b ff 	CALL 0xffa02a48 <_DHCP_rx>;
ffa02bf6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02bf8:	01 e8 00 00 	UNLINK;
ffa02bfc:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02bfe:	10 00       	RTS;
ffa02c00:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02c04:	00 e1 30 03 	R0.L = 0x330;		/* (816)	R0=0xff900330(-7339216) */
ffa02c08:	ff e3 80 f2 	CALL 0xffa01108 <_printf_str>;
ffa02c0c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02c0e:	f5 2f       	JUMP.S 0xffa02bf8 <_DHCP_req+0xcc>;

ffa02c10 <_bfin_EMAC_recv>:
ffa02c10:	eb 05       	[--SP] = (R7:5, P5:3);
ffa02c12:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e58 <_rxIdx> */
ffa02c16:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000 <_l1_data_a>(-7340032) */
ffa02c1a:	0c e1 58 0e 	P4.L = 0xe58;		/* (3672)	P4=0xff900e58 <_rxIdx> */
ffa02c1e:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00e48(-4190648) */
ffa02c22:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02c26:	28 32       	P5 = R0;
ffa02c28:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02c2a:	05 e1 5c 0e 	R5.L = 0xe5c;		/* (3676)	R5=0xff900e5c <_rxbuf>(-7336356) */
ffa02c2e:	74 30       	R6 = P4;
ffa02c30:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa02c34:	0e 32       	P1 = R6;
ffa02c36:	08 95       	R0 = W[P1] (Z);
ffa02c38:	10 32       	P2 = R0;
ffa02c3a:	0d 32       	P1 = R5;
ffa02c3c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02c3e:	52 91       	P2 = [P2];
ffa02c40:	90 a2       	R0 = [P2 + 0x28];
ffa02c42:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02c44:	46 18       	IF CC JUMP 0xffa02cd0 <_bfin_EMAC_recv+0xc0>;
ffa02c46:	00 00       	NOP;
ffa02c48:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c4a:	a0 4f       	R0 <<= 0x14;
ffa02c4c:	91 a2       	R1 = [P2 + 0x28];
ffa02c4e:	81 54       	R2 = R1 & R0;
ffa02c50:	02 0c       	CC = R2 == 0x0;
ffa02c52:	45 10       	IF !CC JUMP 0xffa02cdc <_bfin_EMAC_recv+0xcc>;
ffa02c54:	00 00       	NOP;
ffa02c56:	00 00       	NOP;
ffa02c58:	00 00       	NOP;
ffa02c5a:	90 a2       	R0 = [P2 + 0x28];
ffa02c5c:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa02c5e:	4a 18       	IF CC JUMP 0xffa02cf2 <_bfin_EMAC_recv+0xe2>;
ffa02c60:	00 00       	NOP;
ffa02c62:	00 00       	NOP;
ffa02c64:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02c68:	91 a2       	R1 = [P2 + 0x28];
ffa02c6a:	c1 55       	R7 = R1 & R0;
ffa02c6c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02c6e:	07 09       	CC = R7 <= R0;
ffa02c70:	4c 18       	IF CC JUMP 0xffa02d08 <_bfin_EMAC_recv+0xf8>;
ffa02c72:	00 00       	NOP;
ffa02c74:	00 00       	NOP;
ffa02c76:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02c78:	90 a1       	R0 = [P2 + 0x18];
ffa02c7a:	59 95       	R1 = W[P3] (X);
ffa02c7c:	28 93       	[P5] = R0;
ffa02c7e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02c80:	08 56       	R0 = R0 | R1;
ffa02c82:	18 97       	W[P3] = R0;
ffa02c84:	61 95       	R1 = W[P4] (X);
ffa02c86:	c8 42       	R0 = R1.L (Z);
ffa02c88:	10 0d       	CC = R0 <= 0x2;
ffa02c8a:	92 b2       	[P2 + 0x28] = R2;
ffa02c8c:	1e 1c       	IF CC JUMP 0xffa02cc8 <_bfin_EMAC_recv+0xb8> (BP);
ffa02c8e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02c90:	20 97       	W[P4] = R0;
ffa02c92:	28 91       	R0 = [P5];
ffa02c94:	0f 30       	R1 = R7;
ffa02c96:	00 e3 f9 00 	CALL 0xffa02e88 <_ARP_rx>;
ffa02c9a:	00 0c       	CC = R0 == 0x0;
ffa02c9c:	03 18       	IF CC JUMP 0xffa02ca2 <_bfin_EMAC_recv+0x92>;
ffa02c9e:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02ca0:	ca 2f       	JUMP.S 0xffa02c34 <_bfin_EMAC_recv+0x24>;
ffa02ca2:	28 91       	R0 = [P5];
ffa02ca4:	0f 30       	R1 = R7;
ffa02ca6:	ff e3 59 fb 	CALL 0xffa02358 <_icmp_rx>;
ffa02caa:	00 0c       	CC = R0 == 0x0;
ffa02cac:	f9 17       	IF !CC JUMP 0xffa02c9e <_bfin_EMAC_recv+0x8e> (BP);
ffa02cae:	28 91       	R0 = [P5];
ffa02cb0:	0f 30       	R1 = R7;
ffa02cb2:	00 e3 49 04 	CALL 0xffa03544 <_tcp_rx>;
ffa02cb6:	00 0c       	CC = R0 == 0x0;
ffa02cb8:	f3 17       	IF !CC JUMP 0xffa02c9e <_bfin_EMAC_recv+0x8e> (BP);
ffa02cba:	07 0d       	CC = R7 <= 0x0;
ffa02cbc:	bc 1f       	IF CC JUMP 0xffa02c34 <_bfin_EMAC_recv+0x24> (BP);
ffa02cbe:	01 e8 00 00 	UNLINK;
ffa02cc2:	07 30       	R0 = R7;
ffa02cc4:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02cc6:	10 00       	RTS;
ffa02cc8:	01 30       	R0 = R1;
ffa02cca:	08 64       	R0 += 0x1;		/* (  1) */
ffa02ccc:	20 97       	W[P4] = R0;
ffa02cce:	e2 2f       	JUMP.S 0xffa02c92 <_bfin_EMAC_recv+0x82>;
ffa02cd0:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02cd2:	01 e8 00 00 	UNLINK;
ffa02cd6:	07 30       	R0 = R7;
ffa02cd8:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02cda:	10 00       	RTS;
ffa02cdc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02ce0:	00 e1 60 03 	R0.L = 0x360;		/* (864)	R0=0xff900360(-7339168) */
ffa02ce4:	ff e3 12 f2 	CALL 0xffa01108 <_printf_str>;
ffa02ce8:	01 e8 00 00 	UNLINK;
ffa02cec:	07 30       	R0 = R7;
ffa02cee:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02cf0:	10 00       	RTS;
ffa02cf2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900360(-7339168) */
ffa02cf6:	00 e1 7c 03 	R0.L = 0x37c;		/* (892)	R0=0xff90037c(-7339140) */
ffa02cfa:	ff e3 07 f2 	CALL 0xffa01108 <_printf_str>;
ffa02cfe:	01 e8 00 00 	UNLINK;
ffa02d02:	07 30       	R0 = R7;
ffa02d04:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02d06:	10 00       	RTS;
ffa02d08:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90037c(-7339140) */
ffa02d0c:	00 e1 90 03 	R0.L = 0x390;		/* (912)	R0=0xff900390(-7339120) */
ffa02d10:	ff e3 fc f1 	CALL 0xffa01108 <_printf_str>;
ffa02d14:	01 e8 00 00 	UNLINK;
ffa02d18:	07 30       	R0 = R7;
ffa02d1a:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02d1c:	10 00       	RTS;
	...

ffa02d20 <_ARP_init>:
ffa02d20:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e74 <_NetSubnetMask> */
ffa02d24:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02d28:	0a e1 84 0e 	P2.L = 0xe84;		/* (3716)	P2=0xff900e84 <_NetArpLut> */
ffa02d2c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02d2e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02d30:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02d32:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa02d34:	b2 e0 12 10 	LSETUP(0xffa02d38 <_ARP_init+0x18>, 0xffa02d58 <_ARP_init+0x38>) LC1 = P1;
ffa02d38:	11 93       	[P2] = R1;
ffa02d3a:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02d3e:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02d42:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa02d46:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa02d4a:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02d4e:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02d52:	52 b5       	W[P2 + 0xa] = R2;
ffa02d54:	d1 b0       	[P2 + 0xc] = R1;
ffa02d56:	11 b1       	[P2 + 0x10] = R1;
ffa02d58:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa02d5a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e84 <_NetArpLut> */
ffa02d5e:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02d62:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetArpLut_age> */
ffa02d66:	10 97       	W[P2] = R0;
ffa02d68:	01 e8 00 00 	UNLINK;
ffa02d6c:	10 00       	RTS;
	...

ffa02d70 <_ARP_lut_find>:
ffa02d70:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e44 <_txIdx> */
ffa02d74:	08 e1 84 0e 	P0.L = 0xe84;		/* (3716)	P0=0xff900e84 <_NetArpLut> */
ffa02d78:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02d7c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02d7e:	48 32       	P1 = P0;
ffa02d80:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02d82:	b2 e0 06 20 	LSETUP(0xffa02d86 <_ARP_lut_find+0x16>, 0xffa02d8e <_ARP_lut_find+0x1e>) LC1 = P2;
ffa02d86:	08 91       	R0 = [P1];
ffa02d88:	00 0c       	CC = R0 == 0x0;
ffa02d8a:	14 18       	IF CC JUMP 0xffa02db2 <_ARP_lut_find+0x42>;
ffa02d8c:	0a 64       	R2 += 0x1;		/* (  1) */
ffa02d8e:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02d90:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa02d94:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02d96:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02d98:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa02d9a:	09 e1 a2 0e 	P1.L = 0xea2;		/* (3746)	P1=0xff900ea2 */
ffa02d9e:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa02da0:	b2 e0 08 20 	LSETUP(0xffa02da4 <_ARP_lut_find+0x34>, 0xffa02db0 <_ARP_lut_find+0x40>) LC1 = P2;
ffa02da4:	08 95       	R0 = W[P1] (Z);
ffa02da6:	03 09       	CC = R3 <= R0;
ffa02da8:	03 18       	IF CC JUMP 0xffa02dae <_ARP_lut_find+0x3e>;
ffa02daa:	11 30       	R2 = R1;
ffa02dac:	18 30       	R3 = R0;
ffa02dae:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02db0:	09 64       	R1 += 0x1;		/* (  1) */
ffa02db2:	02 30       	R0 = R2;
ffa02db4:	01 e8 00 00 	UNLINK;
ffa02db8:	10 00       	RTS;
	...

ffa02dbc <_ARP_lut_add>:
ffa02dbc:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02dbe:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e40 <_NetDHCPserv> */
ffa02dc2:	0d e1 84 0e 	P5.L = 0xe84;		/* (3716)	P5=0xff900e84 <_NetArpLut> */
ffa02dc6:	31 30       	R6 = R1;
ffa02dc8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02dcc:	38 30       	R7 = R0;
ffa02dce:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02dd0:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa02dd2:	4d 32       	P1 = P5;
ffa02dd4:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02dd6:	00 00       	NOP;
ffa02dd8:	08 91       	R0 = [P1];
ffa02dda:	07 08       	CC = R7 == R0;
ffa02ddc:	11 07       	IF CC R2 = R1;
ffa02dde:	09 64       	R1 += 0x1;		/* (  1) */
ffa02de0:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa02de2:	42 0c       	CC = P2 == 0x0;
ffa02de4:	23 10       	IF !CC JUMP 0xffa02e2a <_ARP_lut_add+0x6e>;
ffa02de6:	82 0c       	CC = R2 < 0x0;
ffa02de8:	25 18       	IF CC JUMP 0xffa02e32 <_ARP_lut_add+0x76>;
ffa02dea:	82 c6 12 82 	R1 = R2 << 0x2;
ffa02dee:	0a 32       	P1 = R2;
ffa02df0:	11 32       	P2 = R1;
ffa02df2:	06 32       	P0 = R6;
ffa02df4:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa02df6:	6a 5a       	P1 = P2 + P5;
ffa02df8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02dfa:	0f 93       	[P1] = R7;
ffa02dfc:	aa 5a       	P2 = P2 + P5;
ffa02dfe:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02e00:	b2 e0 03 10 	LSETUP(0xffa02e04 <_ARP_lut_add+0x48>, 0xffa02e06 <_ARP_lut_add+0x4a>) LC1 = P1;
ffa02e04:	40 98       	R0 = B[P0++] (X);
ffa02e06:	10 9a       	B[P2++] = R0;
ffa02e08:	51 41       	R1 = (R1 + R2) << 0x2;
ffa02e0a:	09 32       	P1 = R1;
ffa02e0c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa02e10:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetArpLut_age> */
ffa02e14:	50 95       	R0 = W[P2] (X);
ffa02e16:	08 64       	R0 += 0x1;		/* (  1) */
ffa02e18:	10 97       	W[P2] = R0;
ffa02e1a:	a9 5a       	P2 = P1 + P5;
ffa02e1c:	50 b5       	W[P2 + 0xa] = R0;
ffa02e1e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e20:	10 b1       	[P2 + 0x10] = R0;
ffa02e22:	01 e8 00 00 	UNLINK;
ffa02e26:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02e28:	10 00       	RTS;
ffa02e2a:	82 0c       	CC = R2 < 0x0;
ffa02e2c:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02e2e:	d4 1f       	IF CC JUMP 0xffa02dd6 <_ARP_lut_add+0x1a> (BP);
ffa02e30:	dd 2f       	JUMP.S 0xffa02dea <_ARP_lut_add+0x2e>;
ffa02e32:	ff e3 9f ff 	CALL 0xffa02d70 <_ARP_lut_find>;
ffa02e36:	10 30       	R2 = R0;
ffa02e38:	d9 2f       	JUMP.S 0xffa02dea <_ARP_lut_add+0x2e>;
	...

ffa02e3c <_ARP_lu>:
ffa02e3c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02e40:	c4 04       	[--SP] = (P5:4);
ffa02e42:	09 e1 84 0e 	P1.L = 0xe84;		/* (3716)	P1=0xff900e84 <_NetArpLut> */
ffa02e46:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02e4a:	10 30       	R2 = R0;
ffa02e4c:	29 32       	P5 = R1;
ffa02e4e:	61 32       	P4 = P1;
ffa02e50:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa02e52:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02e54:	b2 e0 06 20 	LSETUP(0xffa02e58 <_ARP_lu+0x1c>, 0xffa02e60 <_ARP_lu+0x24>) LC1 = P2;
ffa02e58:	08 91       	R0 = [P1];
ffa02e5a:	10 08       	CC = R0 == R2;
ffa02e5c:	08 18       	IF CC JUMP 0xffa02e6c <_ARP_lu+0x30>;
ffa02e5e:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa02e60:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02e62:	01 e8 00 00 	UNLINK;
ffa02e66:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02e68:	84 04       	(P5:4) = [SP++];
ffa02e6a:	10 00       	RTS;
ffa02e6c:	08 a1       	R0 = [P1 + 0x10];
ffa02e6e:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02e70:	f7 1f       	IF CC JUMP 0xffa02e5e <_ARP_lu+0x22> (BP);
ffa02e72:	60 5a       	P1 = P0 + P4;
ffa02e74:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa02e76:	b2 e0 03 20 	LSETUP(0xffa02e7a <_ARP_lu+0x3e>, 0xffa02e7c <_ARP_lu+0x40>) LC1 = P2;
ffa02e7a:	48 98       	R0 = B[P1++] (X);
ffa02e7c:	28 9a       	B[P5++] = R0;
ffa02e7e:	01 e8 00 00 	UNLINK;
ffa02e82:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e84:	84 04       	(P5:4) = [SP++];
ffa02e86:	10 00       	RTS;

ffa02e88 <_ARP_rx>:
ffa02e88:	fb 05       	[--SP] = (R7:7, P5:3);
ffa02e8a:	20 32       	P4 = R0;
ffa02e8c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02e90:	39 30       	R7 = R1;
ffa02e92:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa02e94:	ff e3 9a f5 	CALL 0xffa019c8 <_htons>;
ffa02e98:	c0 42       	R0 = R0.L (Z);
ffa02e9a:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa02e9e:	08 08       	CC = R0 == R1;
ffa02ea0:	06 18       	IF CC JUMP 0xffa02eac <_ARP_rx+0x24>;
ffa02ea2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02ea4:	01 e8 00 00 	UNLINK;
ffa02ea8:	bb 05       	(R7:7, P5:3) = [SP++];
ffa02eaa:	10 00       	RTS;
ffa02eac:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02eae:	07 0a       	CC = R7 <= R0 (IU);
ffa02eb0:	f9 1f       	IF CC JUMP 0xffa02ea2 <_ARP_rx+0x1a> (BP);
ffa02eb2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02eb4:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02eb6:	ff e3 89 f5 	CALL 0xffa019c8 <_htons>;
ffa02eba:	c0 42       	R0 = R0.L (Z);
ffa02ebc:	07 08       	CC = R7 == R0;
ffa02ebe:	f2 17       	IF !CC JUMP 0xffa02ea2 <_ARP_rx+0x1a> (BP);
ffa02ec0:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02ec4:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02ec6:	ff e3 81 f5 	CALL 0xffa019c8 <_htons>;
ffa02eca:	c0 42       	R0 = R0.L (Z);
ffa02ecc:	07 08       	CC = R7 == R0;
ffa02ece:	ea 17       	IF !CC JUMP 0xffa02ea2 <_ARP_rx+0x1a> (BP);
ffa02ed0:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02ed2:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02ed6:	08 08       	CC = R0 == R1;
ffa02ed8:	e5 17       	IF !CC JUMP 0xffa02ea2 <_ARP_rx+0x1a> (BP);
ffa02eda:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02edc:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02ede:	ff e3 75 f5 	CALL 0xffa019c8 <_htons>;
ffa02ee2:	c0 42       	R0 = R0.L (Z);
ffa02ee4:	07 08       	CC = R7 == R0;
ffa02ee6:	0c 14       	IF !CC JUMP 0xffa02efe <_ARP_rx+0x76> (BP);
ffa02ee8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa02eec:	0a e1 6c 0e 	P2.L = 0xe6c;		/* (3692)	P2=0xff900e6c <_NetOurMAC> */
ffa02ef0:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa02ef4:	10 99       	R0 = B[P2] (Z);
ffa02ef6:	01 08       	CC = R1 == R0;
ffa02ef8:	ae 18       	IF CC JUMP 0xffa03054 <_ARP_rx+0x1cc>;
ffa02efa:	00 00       	NOP;
ffa02efc:	00 00       	NOP;
ffa02efe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f00:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02f02:	ff e3 63 f5 	CALL 0xffa019c8 <_htons>;
ffa02f06:	c0 42       	R0 = R0.L (Z);
ffa02f08:	07 08       	CC = R7 == R0;
ffa02f0a:	cc 17       	IF !CC JUMP 0xffa02ea2 <_ARP_rx+0x1a> (BP);
ffa02f0c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02f10:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02f12:	ff e3 5b f5 	CALL 0xffa019c8 <_htons>;
ffa02f16:	c0 42       	R0 = R0.L (Z);
ffa02f18:	07 08       	CC = R7 == R0;
ffa02f1a:	c4 17       	IF !CC JUMP 0xffa02ea2 <_ARP_rx+0x1a> (BP);
ffa02f1c:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02f1e:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02f22:	08 08       	CC = R0 == R1;
ffa02f24:	bf 17       	IF !CC JUMP 0xffa02ea2 <_ARP_rx+0x1a> (BP);
ffa02f26:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f28:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02f2a:	ff e3 4f f5 	CALL 0xffa019c8 <_htons>;
ffa02f2e:	c0 42       	R0 = R0.L (Z);
ffa02f30:	07 08       	CC = R7 == R0;
ffa02f32:	b8 17       	IF !CC JUMP 0xffa02ea2 <_ARP_rx+0x1a> (BP);
ffa02f34:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa02f38:	07 e1 78 0e 	R7.L = 0xe78;		/* (3704)	R7=0xff900e78 <_NetOurIP>(-7336328) */
ffa02f3c:	17 32       	P2 = R7;
ffa02f3e:	a1 a2       	R1 = [P4 + 0x28];
ffa02f40:	10 91       	R0 = [P2];
ffa02f42:	01 08       	CC = R1 == R0;
ffa02f44:	af 17       	IF !CC JUMP 0xffa02ea2 <_ARP_rx+0x1a> (BP);
ffa02f46:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e6c <_NetOurMAC> */
ffa02f4a:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_txIdx> */
ffa02f4e:	10 95       	R0 = W[P2] (Z);
ffa02f50:	10 32       	P2 = R0;
ffa02f52:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e84 <_NetArpLut> */
ffa02f56:	09 e1 48 0e 	P1.L = 0xe48;		/* (3656)	P1=0xff900e48 <_txbuf> */
ffa02f5a:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa02f5c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e84 <_NetArpLut> */
ffa02f60:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02f62:	52 91       	P2 = [P2];
ffa02f64:	0d e1 6c 0e 	P5.L = 0xe6c;		/* (3692)	P5=0xff900e6c <_NetOurMAC> */
ffa02f68:	93 ad       	P3 = [P2 + 0x18];
ffa02f6a:	18 97       	W[P3] = R0;
ffa02f6c:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa02f70:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa02f74:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa02f78:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa02f7c:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa02f80:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa02f84:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa02f88:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa02f8c:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa02f90:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa02f94:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa02f98:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa02f9c:	68 99       	R0 = B[P5] (X);
ffa02f9e:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa02fa2:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02fa6:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa02faa:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02fae:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa02fb2:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02fb6:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa02fba:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02fbe:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa02fc2:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02fc6:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa02fca:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02fce:	ff e3 fd f4 	CALL 0xffa019c8 <_htons>;
ffa02fd2:	d8 b5       	W[P3 + 0xe] = R0;
ffa02fd4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02fd6:	ff e3 f9 f4 	CALL 0xffa019c8 <_htons>;
ffa02fda:	18 b6       	W[P3 + 0x10] = R0;
ffa02fdc:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02fe0:	ff e3 f4 f4 	CALL 0xffa019c8 <_htons>;
ffa02fe4:	58 b6       	W[P3 + 0x12] = R0;
ffa02fe6:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02fe8:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa02fec:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02fee:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa02ff2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02ff4:	ff e3 ea f4 	CALL 0xffa019c8 <_htons>;
ffa02ff8:	44 32       	P0 = P4;
ffa02ffa:	d8 b6       	W[P3 + 0x16] = R0;
ffa02ffc:	53 32       	P2 = P3;
ffa02ffe:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa03000:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa03002:	b2 e0 08 10 	LSETUP(0xffa03006 <_ARP_rx+0x17e>, 0xffa03012 <_ARP_rx+0x18a>) LC1 = P1;
ffa03006:	68 98       	R0 = B[P5++] (X);
ffa03008:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa0300c:	40 98       	R0 = B[P0++] (X);
ffa0300e:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa03012:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa03014:	17 32       	P2 = R7;
ffa03016:	50 99       	R0 = B[P2] (X);
ffa03018:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa0301c:	10 91       	R0 = [P2];
ffa0301e:	40 4e       	R0 >>= 0x8;
ffa03020:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa03024:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa03028:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa0302c:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa03030:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa03034:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa03038:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa0303c:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa03040:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa03044:	f3 b0       	[SP + 0xc] = R3;
ffa03046:	ff e3 17 f4 	CALL 0xffa01874 <_FormatIPAddress>;
ffa0304a:	98 b2       	[P3 + 0x28] = R0;
ffa0304c:	ff e3 68 f6 	CALL 0xffa01d1c <_bfin_EMAC_send_nocopy>;
ffa03050:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03052:	29 2f       	JUMP.S 0xffa02ea4 <_ARP_rx+0x1c>;
ffa03054:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa03058:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa0305c:	01 08       	CC = R1 == R0;
ffa0305e:	50 17       	IF !CC JUMP 0xffa02efe <_ARP_rx+0x76> (BP);
ffa03060:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa03064:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa03068:	01 08       	CC = R1 == R0;
ffa0306a:	4a 17       	IF !CC JUMP 0xffa02efe <_ARP_rx+0x76> (BP);
ffa0306c:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa03070:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa03074:	01 08       	CC = R1 == R0;
ffa03076:	44 17       	IF !CC JUMP 0xffa02efe <_ARP_rx+0x76> (BP);
ffa03078:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa0307c:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa03080:	01 08       	CC = R1 == R0;
ffa03082:	3e 17       	IF !CC JUMP 0xffa02efe <_ARP_rx+0x76> (BP);
ffa03084:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa03088:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa0308c:	01 08       	CC = R1 == R0;
ffa0308e:	38 17       	IF !CC JUMP 0xffa02efe <_ARP_rx+0x76> (BP);
ffa03090:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa03092:	44 30       	R0 = P4;
ffa03094:	ff e3 ba f4 	CALL 0xffa01a08 <_pack4chars>;
ffa03098:	38 30       	R7 = R0;
ffa0309a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0309e:	0f 30       	R1 = R7;
ffa030a0:	00 e1 9c 04 	R0.L = 0x49c;		/* (1180)	R0=0xff90049c(-7338852) */
ffa030a4:	ff e3 96 f1 	CALL 0xffa013d0 <_printf_ip>;
ffa030a8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90049c(-7338852) */
ffa030ac:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa030b0:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa030b2:	ff e3 2b f0 	CALL 0xffa01108 <_printf_str>;
ffa030b6:	07 30       	R0 = R7;
ffa030b8:	4c 30       	R1 = P4;
ffa030ba:	ff e3 81 fe 	CALL 0xffa02dbc <_ARP_lut_add>;
ffa030be:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa030c0:	f2 2e       	JUMP.S 0xffa02ea4 <_ARP_rx+0x1c>;
	...

ffa030c4 <_ARP_tx>:
ffa030c4:	fc 05       	[--SP] = (R7:7, P5:4);
ffa030c6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_txIdx> */
ffa030ca:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa030ce:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_txIdx> */
ffa030d2:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa030d6:	10 95 00 00 
ffa030da:	10 32       	P2 = R0;
ffa030dc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa030e0:	09 e1 48 0e 	P1.L = 0xe48;		/* (3656)	P1=0xff900e48 <_txbuf> */
ffa030e4:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa030e6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e6c <_NetOurMAC> */
ffa030ea:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa030ec:	52 91       	P2 = [P2];
ffa030ee:	0d e1 6c 0e 	P5.L = 0xe6c;		/* (3692)	P5=0xff900e6c <_NetOurMAC> */
ffa030f2:	94 ad       	P4 = [P2 + 0x18];
ffa030f4:	20 97       	W[P4] = R0;
ffa030f6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa030f8:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa030fc:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa03100:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa03104:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa03108:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa0310c:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa03110:	68 99       	R0 = B[P5] (X);
ffa03112:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa03116:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa0311a:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa0311e:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa03122:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa03126:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa0312a:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa0312e:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa03132:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa03136:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa0313a:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa0313e:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa03142:	ff e3 43 f4 	CALL 0xffa019c8 <_htons>;
ffa03146:	e0 b5       	W[P4 + 0xe] = R0;
ffa03148:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0314a:	ff e3 3f f4 	CALL 0xffa019c8 <_htons>;
ffa0314e:	20 b6       	W[P4 + 0x10] = R0;
ffa03150:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03154:	ff e3 3a f4 	CALL 0xffa019c8 <_htons>;
ffa03158:	60 b6       	W[P4 + 0x12] = R0;
ffa0315a:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0315c:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa03160:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03162:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa03166:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03168:	ff e3 30 f4 	CALL 0xffa019c8 <_htons>;
ffa0316c:	e0 b6       	W[P4 + 0x16] = R0;
ffa0316e:	54 32       	P2 = P4;
ffa03170:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03172:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa03174:	b2 e0 07 10 	LSETUP(0xffa03178 <_ARP_tx+0xb4>, 0xffa03182 <_ARP_tx+0xbe>) LC1 = P1;
ffa03178:	68 98       	R0 = B[P5++] (X);
ffa0317a:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa0317e:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa03182:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa03184:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_txIdx> */
ffa03188:	0a e1 78 0e 	P2.L = 0xe78;		/* (3704)	P2=0xff900e78 <_NetOurIP> */
ffa0318c:	50 99       	R0 = B[P2] (X);
ffa0318e:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa03192:	10 91       	R0 = [P2];
ffa03194:	40 4e       	R0 >>= 0x8;
ffa03196:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa0319a:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa0319e:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa031a2:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa031a6:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa031aa:	a7 b2       	[P4 + 0x28] = R7;
ffa031ac:	01 e8 00 00 	UNLINK;
ffa031b0:	bc 05       	(R7:7, P5:4) = [SP++];
ffa031b2:	ff e2 b5 f5 	JUMP.L 0xffa01d1c <_bfin_EMAC_send_nocopy>;
	...

ffa031b8 <_ARP_req>:
ffa031b8:	ec 05       	[--SP] = (R7:5, P5:4);
ffa031ba:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa031be:	38 30       	R7 = R0;
ffa031c0:	ff e3 3e fe 	CALL 0xffa02e3c <_ARP_lu>;
ffa031c4:	00 0c       	CC = R0 == 0x0;
ffa031c6:	50 10       	IF !CC JUMP 0xffa03266 <_ARP_req+0xae>;
ffa031c8:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800e78 */
ffa031cc:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa031d0:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e58 <_rxIdx> */
ffa031d4:	16 91       	R6 = [P2];
ffa031d6:	0c e1 84 0e 	P4.L = 0xe84;		/* (3716)	P4=0xff900e84 <_NetArpLut> */
ffa031da:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa031de:	4c 32       	P1 = P4;
ffa031e0:	46 51       	R5 = R6 + R0;
ffa031e2:	6c 32       	P5 = P4;
ffa031e4:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa031e6:	b2 e0 06 20 	LSETUP(0xffa031ea <_ARP_req+0x32>, 0xffa031f2 <_ARP_req+0x3a>) LC1 = P2;
ffa031ea:	08 91       	R0 = [P1];
ffa031ec:	07 08       	CC = R7 == R0;
ffa031ee:	21 18       	IF CC JUMP 0xffa03230 <_ARP_req+0x78>;
ffa031f0:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa031f2:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa031f4:	ff e3 be fd 	CALL 0xffa02d70 <_ARP_lut_find>;
ffa031f8:	10 32       	P2 = R0;
ffa031fa:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa031fc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa03200:	09 e1 80 0e 	P1.L = 0xe80;		/* (3712)	P1=0xff900e80 <_NetArpLut_age> */
ffa03204:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa03206:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa03208:	10 b1       	[P2 + 0x10] = R0;
ffa0320a:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa0320e:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa03212:	17 93 00 00 
ffa03216:	d0 b0       	[P2 + 0xc] = R0;
ffa03218:	48 95       	R0 = W[P1] (X);
ffa0321a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0321c:	08 97       	W[P1] = R0;
ffa0321e:	50 b5       	W[P2 + 0xa] = R0;
ffa03220:	07 30       	R0 = R7;
ffa03222:	ff e3 51 ff 	CALL 0xffa030c4 <_ARP_tx>;
ffa03226:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03228:	01 e8 00 00 	UNLINK;
ffa0322c:	ac 05       	(R7:5, P5:4) = [SP++];
ffa0322e:	10 00       	RTS;
ffa03230:	08 a1       	R0 = [P1 + 0x10];
ffa03232:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa03234:	de 1f       	IF CC JUMP 0xffa031f0 <_ARP_req+0x38> (BP);
ffa03236:	e8 a0       	R0 = [P5 + 0xc];
ffa03238:	86 09       	CC = R6 < R0 (IU);
ffa0323a:	f6 1f       	IF CC JUMP 0xffa03226 <_ARP_req+0x6e> (BP);
ffa0323c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03240:	0f 30       	R1 = R7;
ffa03242:	00 e1 c0 04 	R0.L = 0x4c0;		/* (1216)	R0=0xff9004c0(-7338816) */
ffa03246:	ff e3 c5 f0 	CALL 0xffa013d0 <_printf_ip>;
ffa0324a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004c0(-7338816) */
ffa0324e:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa03252:	ff e3 5b ef 	CALL 0xffa01108 <_printf_str>;
ffa03256:	07 30       	R0 = R7;
ffa03258:	ff e3 36 ff 	CALL 0xffa030c4 <_ARP_tx>;
ffa0325c:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa03260:	ed b0 00 00 
ffa03264:	e2 2f       	JUMP.S 0xffa03228 <_ARP_req+0x70>;
ffa03266:	01 e8 00 00 	UNLINK;
ffa0326a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0326c:	ac 05       	(R7:5, P5:4) = [SP++];
ffa0326e:	10 00       	RTS;

ffa03270 <_tcp_length>:
ffa03270:	c5 04       	[--SP] = (P5:5);
ffa03272:	28 32       	P5 = R0;
ffa03274:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03278:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa0327a:	ff e3 a7 f3 	CALL 0xffa019c8 <_htons>;
ffa0327e:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa03282:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa03284:	51 54       	R1 = R1 & R2;
ffa03286:	11 4f       	R1 <<= 0x2;
ffa03288:	c0 42       	R0 = R0.L (Z);
ffa0328a:	08 52       	R0 = R0 - R1;
ffa0328c:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa03290:	11 4d       	R1 >>>= 0x2;
ffa03292:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa03294:	51 54       	R1 = R1 & R2;
ffa03296:	01 e8 00 00 	UNLINK;
ffa0329a:	08 52       	R0 = R0 - R1;
ffa0329c:	85 04       	(P5:5) = [SP++];
ffa0329e:	10 00       	RTS;

ffa032a0 <_tcp_checksum_calc>:
ffa032a0:	08 32       	P1 = R0;
ffa032a2:	ed 05       	[--SP] = (R7:5, P5:5);
ffa032a4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa032a8:	28 32       	P5 = R0;
ffa032aa:	31 30       	R6 = R1;
ffa032ac:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa032ae:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa032b0:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa032b2:	b2 e0 03 20 	LSETUP(0xffa032b6 <_tcp_checksum_calc+0x16>, 0xffa032b8 <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa032b6:	08 94       	R0 = W[P1++] (Z);
ffa032b8:	45 51       	R5 = R5 + R0;
ffa032ba:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa032be:	10 4e       	R0 >>= 0x2;
ffa032c0:	06 50       	R0 = R6 + R0;
ffa032c2:	c0 42       	R0 = R0.L (Z);
ffa032c4:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa032c8:	ff e3 80 f3 	CALL 0xffa019c8 <_htons>;
ffa032cc:	47 4f       	R7 <<= 0x8;
ffa032ce:	c0 42       	R0 = R0.L (Z);
ffa032d0:	c7 51       	R7 = R7 + R0;
ffa032d2:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa032d4:	ef 50       	R3 = R7 + R5;
ffa032d6:	0d 1c       	IF CC JUMP 0xffa032f0 <_tcp_checksum_calc+0x50> (BP);
ffa032d8:	0e 32       	P1 = R6;
ffa032da:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa032de:	10 4e       	R0 >>= 0x2;
ffa032e0:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa032e2:	0e 64       	R6 += 0x1;		/* (  1) */
ffa032e4:	a9 5a       	P2 = P1 + P5;
ffa032e6:	08 32       	P1 = R0;
ffa032e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa032ea:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa032ec:	8a 5a       	P2 = P2 + P1;
ffa032ee:	10 9b       	B[P2] = R0;
ffa032f0:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa032f4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa032f6:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa032fa:	71 50       	R1 = R1 + R6;
ffa032fc:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03300:	09 4d       	R1 >>>= 0x1;
ffa03302:	18 4e       	R0 >>= 0x3;
ffa03304:	41 50       	R1 = R1 + R0;
ffa03306:	01 0d       	CC = R1 <= 0x0;
ffa03308:	09 18       	IF CC JUMP 0xffa0331a <_tcp_checksum_calc+0x7a>;
ffa0330a:	55 32       	P2 = P5;
ffa0330c:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa0330e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa03310:	0a 64       	R2 += 0x1;		/* (  1) */
ffa03312:	10 94       	R0 = W[P2++] (Z);
ffa03314:	0a 08       	CC = R2 == R1;
ffa03316:	c3 50       	R3 = R3 + R0;
ffa03318:	fc 17       	IF !CC JUMP 0xffa03310 <_tcp_checksum_calc+0x70> (BP);
ffa0331a:	d8 42       	R0 = R3.L (Z);
ffa0331c:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa03320:	08 50       	R0 = R0 + R1;
ffa03322:	c0 43       	R0 =~ R0;
ffa03324:	01 e8 00 00 	UNLINK;
ffa03328:	c0 42       	R0 = R0.L (Z);
ffa0332a:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0332c:	10 00       	RTS;
	...

ffa03330 <_tcp_checksum_set>:
ffa03330:	c5 04       	[--SP] = (P5:5);
ffa03332:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa03336:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0333a:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_txIdx> */
ffa0333e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa03342:	10 95 00 00 
ffa03346:	10 32       	P2 = R0;
ffa03348:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e80 <_NetArpLut_age> */
ffa0334c:	09 e1 48 0e 	P1.L = 0xe48;		/* (3656)	P1=0xff900e48 <_txbuf> */
ffa03350:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03352:	52 91       	P2 = [P2];
ffa03354:	95 ad       	P5 = [P2 + 0x18];
ffa03356:	45 30       	R0 = P5;
ffa03358:	ff e3 a4 ff 	CALL 0xffa032a0 <_tcp_checksum_calc>;
ffa0335c:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa03360:	01 e8 00 00 	UNLINK;
ffa03364:	85 04       	(P5:5) = [SP++];
ffa03366:	10 00       	RTS;

ffa03368 <_tcp_checksum_check>:
ffa03368:	10 32       	P2 = R0;
ffa0336a:	78 05       	[--SP] = (R7:7);
ffa0336c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03370:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa03374:	ff e3 96 ff 	CALL 0xffa032a0 <_tcp_checksum_calc>;
ffa03378:	0f 30       	R1 = R7;
ffa0337a:	c7 42       	R7 = R0.L (Z);
ffa0337c:	39 08       	CC = R1 == R7;
ffa0337e:	19 18       	IF CC JUMP 0xffa033b0 <_tcp_checksum_check+0x48>;
ffa03380:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03384:	00 e1 e0 04 	R0.L = 0x4e0;		/* (1248)	R0=0xff9004e0(-7338784) */
ffa03388:	ff e3 26 ef 	CALL 0xffa011d4 <_printf_hex>;
ffa0338c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004e0(-7338784) */
ffa03390:	0f 30       	R1 = R7;
ffa03392:	00 e1 fc 04 	R0.L = 0x4fc;		/* (1276)	R0=0xff9004fc(-7338756) */
ffa03396:	ff e3 1f ef 	CALL 0xffa011d4 <_printf_hex>;
ffa0339a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004fc(-7338756) */
ffa0339e:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa033a2:	ff e3 b3 ee 	CALL 0xffa01108 <_printf_str>;
ffa033a6:	01 e8 00 00 	UNLINK;
ffa033aa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa033ac:	38 05       	(R7:7) = [SP++];
ffa033ae:	10 00       	RTS;
ffa033b0:	01 e8 00 00 	UNLINK;
ffa033b4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa033b6:	38 05       	(R7:7) = [SP++];
ffa033b8:	10 00       	RTS;
	...

ffa033bc <_tcp_packet_setup>:
ffa033bc:	ed 05       	[--SP] = (R7:5, P5:5);
ffa033be:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa033c2:	29 32       	P5 = R1;
ffa033c4:	7f 30       	R7 = FP;
ffa033c6:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa033c8:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa033ca:	f0 bb       	[FP -0x4] = R0;
ffa033cc:	07 30       	R0 = R7;
ffa033ce:	2a 30       	R5 = R2;
ffa033d0:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa033d4:	ff e3 40 f7 	CALL 0xffa02254 <_eth_header_setup>;
ffa033d8:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa033dc:	68 99 00 00 
ffa033e0:	80 0c       	CC = R0 < 0x0;
ffa033e2:	14 18       	IF CC JUMP 0xffa0340a <_tcp_packet_setup+0x4e>;
ffa033e4:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa033e6:	f0 b0       	[SP + 0xc] = R0;
ffa033e8:	15 30       	R2 = R5;
ffa033ea:	01 30       	R0 = R1;
ffa033ec:	0f 30       	R1 = R7;
ffa033ee:	ff e3 21 f3 	CALL 0xffa01a30 <_ip_header_setup>;
ffa033f2:	b9 a2       	R1 = [FP + 0x28];
ffa033f4:	f1 b0       	[SP + 0xc] = R1;
ffa033f6:	f9 a2       	R1 = [FP + 0x2c];
ffa033f8:	31 b1       	[SP + 0x10] = R1;
ffa033fa:	72 43       	R2 = R6.B (Z);
ffa033fc:	0f 30       	R1 = R7;
ffa033fe:	ff e3 a5 f3 	CALL 0xffa01b48 <_tcp_header_setup>;
ffa03402:	01 e8 00 00 	UNLINK;
ffa03406:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03408:	10 00       	RTS;
ffa0340a:	01 e8 00 00 	UNLINK;
ffa0340e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03410:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03412:	10 00       	RTS;

ffa03414 <_tcp_burst>:
ffa03414:	e3 05       	[--SP] = (R7:4, P5:3);
ffa03416:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa0341a:	78 b2       	[FP + 0x24] = R0;
ffa0341c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 */
ffa03420:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_txIdx> */
ffa03424:	7a a2       	R2 = [FP + 0x24];
ffa03426:	0b e1 6c 0f 	P3.L = 0xf6c;		/* (3948)	P3=0xff900f6c <_g_httpHeaderLen> */
ffa0342a:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_g_httpContentLen> */
ffa0342e:	02 0d       	CC = R2 <= 0x0;
ffa03430:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa03434:	10 91 00 00 
ffa03438:	19 91       	R1 = [P3];
ffa0343a:	7e 18       	IF CC JUMP 0xffa03536 <_tcp_burst+0x122>;
ffa0343c:	41 50       	R1 = R1 + R0;
ffa0343e:	8f 09       	CC = R7 < R1 (IU);
ffa03440:	21 32       	P4 = R1;
ffa03442:	7a 10       	IF !CC JUMP 0xffa03536 <_tcp_burst+0x122>;
ffa03444:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa03446:	38 20       	JUMP.S 0xffa034b6 <_tcp_burst+0xa2>;
ffa03448:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa0344a:	18 91       	R0 = [P3];
ffa0344c:	07 52       	R0 = R7 - R0;
ffa0344e:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa03452:	08 50       	R0 = R0 + R1;
ffa03454:	16 30       	R2 = R6;
ffa03456:	0d 30       	R1 = R5;
ffa03458:	ff e3 00 f0 	CALL 0xffa01458 <_memcpy_>;
ffa0345c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e48 <_txbuf> */
ffa03460:	09 e1 58 0f 	P1.L = 0xf58;		/* (3928)	P1=0xff900f58 <_TcpSeqHttpStart> */
ffa03464:	08 91       	R0 = [P1];
ffa03466:	f7 51       	R7 = R7 + R6;
ffa03468:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_g_httpContentLen> */
ffa0346c:	0a e1 50 0f 	P2.L = 0xf50;		/* (3920)	P2=0xff900f50 <_TcpSeqHost> */
ffa03470:	07 50       	R0 = R7 + R0;
ffa03472:	10 93       	[P2] = R0;
ffa03474:	26 50       	R0 = R6 + R4;
ffa03476:	ff e3 5d ff 	CALL 0xffa03330 <_tcp_checksum_set>;
ffa0347a:	ff e3 51 f4 	CALL 0xffa01d1c <_bfin_EMAC_send_nocopy>;
ffa0347e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f50 <_TcpSeqHost> */
ffa03482:	0a e1 58 0e 	P2.L = 0xe58;		/* (3672)	P2=0xff900e58 <_rxIdx> */
ffa03486:	10 95       	R0 = W[P2] (Z);
ffa03488:	10 32       	P2 = R0;
ffa0348a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900f58 <_TcpSeqHttpStart> */
ffa0348e:	09 e1 5c 0e 	P1.L = 0xe5c;		/* (3676)	P1=0xff900e5c <_rxbuf> */
ffa03492:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa03494:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03496:	52 91       	P2 = [P2];
ffa03498:	90 a2       	R0 = [P2 + 0x28];
ffa0349a:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa0349c:	07 1c       	IF CC JUMP 0xffa034aa <_tcp_burst+0x96> (BP);
ffa0349e:	90 a2       	R0 = [P2 + 0x28];
ffa034a0:	4d 30       	R1 = P5;
ffa034a2:	7a a2       	R2 = [FP + 0x24];
ffa034a4:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa034a6:	11 50       	R0 = R1 + R2;
ffa034a8:	a8 06       	IF !CC P5 = R0;
ffa034aa:	79 ae       	P1 = [FP + 0x24];
ffa034ac:	69 09       	CC = P1 <= P5;
ffa034ae:	45 18       	IF CC JUMP 0xffa03538 <_tcp_burst+0x124>;
ffa034b0:	44 30       	R0 = P4;
ffa034b2:	87 09       	CC = R7 < R0 (IU);
ffa034b4:	42 10       	IF !CC JUMP 0xffa03538 <_tcp_burst+0x124>;
ffa034b6:	44 30       	R0 = P4;
ffa034b8:	b8 52       	R2 = R0 - R7;
ffa034ba:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa034be:	0a 09       	CC = R2 <= R1;
ffa034c0:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa034c2:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa034c4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e5c <_rxbuf> */
ffa034c8:	08 06       	IF !CC R1 = R0;
ffa034ca:	09 e1 58 0f 	P1.L = 0xf58;		/* (3928)	P1=0xff900f58 <_TcpSeqHttpStart> */
ffa034ce:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa034d2:	07 cc 10 4c 	R6 = MIN (R2, R0) || R0 = [P1] || NOP;
ffa034d6:	08 91 00 00 
ffa034da:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e58 <_rxIdx> */
ffa034de:	07 50       	R0 = R7 + R0;
ffa034e0:	0a e1 50 0f 	P2.L = 0xf50;		/* (3920)	P2=0xff900f50 <_TcpSeqHost> */
ffa034e4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900f58 <_TcpSeqHttpStart> */
ffa034e8:	10 93       	[P2] = R0;
ffa034ea:	09 e1 54 0f 	P1.L = 0xf54;		/* (3924)	P1=0xff900f54 <_TcpSeqClient> */
ffa034ee:	f1 b0       	[SP + 0xc] = R1;
ffa034f0:	30 b1       	[SP + 0x10] = R0;
ffa034f2:	08 91       	R0 = [P1];
ffa034f4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f50 <_TcpSeqHost> */
ffa034f8:	70 b1       	[SP + 0x14] = R0;
ffa034fa:	0a e1 3c 0e 	P2.L = 0xe3c;		/* (3644)	P2=0xff900e3c <_NetDestIP> */
ffa034fe:	4f 30       	R1 = FP;
ffa03500:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R2 = [P2] || NOP;
ffa03504:	12 91 00 00 
ffa03508:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0350a:	ff e3 59 ff 	CALL 0xffa033bc <_tcp_packet_setup>;
ffa0350e:	28 30       	R5 = R0;
ffa03510:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03514:	00 0d       	CC = R0 <= 0x0;
ffa03516:	ca 1b       	IF CC JUMP 0xffa034aa <_tcp_burst+0x96>;
ffa03518:	18 91       	R0 = [P3];
ffa0351a:	38 0a       	CC = R0 <= R7 (IU);
ffa0351c:	96 1f       	IF CC JUMP 0xffa03448 <_tcp_burst+0x34> (BP);
ffa0351e:	38 53       	R4 = R0 - R7;
ffa03520:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03524:	07 50       	R0 = R7 + R0;
ffa03526:	0d 30       	R1 = R5;
ffa03528:	14 30       	R2 = R4;
ffa0352a:	ff e3 97 ef 	CALL 0xffa01458 <_memcpy_>;
ffa0352e:	65 51       	R5 = R5 + R4;
ffa03530:	a6 53       	R6 = R6 - R4;
ffa03532:	e7 51       	R7 = R7 + R4;
ffa03534:	8b 2f       	JUMP.S 0xffa0344a <_tcp_burst+0x36>;
ffa03536:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa03538:	01 e8 00 00 	UNLINK;
ffa0353c:	45 30       	R0 = P5;
ffa0353e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03540:	10 00       	RTS;
	...

ffa03544 <_tcp_rx>:
ffa03544:	e3 05       	[--SP] = (R7:4, P5:3);
ffa03546:	20 32       	P4 = R0;
ffa03548:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa0354c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03550:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa03552:	ff e3 3b f2 	CALL 0xffa019c8 <_htons>;
ffa03556:	c0 42       	R0 = R0.L (Z);
ffa03558:	07 08       	CC = R7 == R0;
ffa0355a:	06 18       	IF CC JUMP 0xffa03566 <_tcp_rx+0x22>;
ffa0355c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0355e:	01 e8 00 00 	UNLINK;
ffa03562:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03564:	10 00       	RTS;
ffa03566:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa0356a:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa0356c:	08 08       	CC = R0 == R1;
ffa0356e:	f7 17       	IF !CC JUMP 0xffa0355c <_tcp_rx+0x18> (BP);
ffa03570:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa03574:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa03578:	ff e3 28 f2 	CALL 0xffa019c8 <_htons>;
ffa0357c:	c0 42       	R0 = R0.L (Z);
ffa0357e:	07 08       	CC = R7 == R0;
ffa03580:	ee 17       	IF !CC JUMP 0xffa0355c <_tcp_rx+0x18> (BP);
ffa03582:	44 30       	R0 = P4;
ffa03584:	80 64       	R0 += 0x10;		/* ( 16) */
ffa03586:	ff e3 95 f2 	CALL 0xffa01ab0 <_ip_header_checksum>;
ffa0358a:	40 43       	R0 = R0.B (Z);
ffa0358c:	00 0c       	CC = R0 == 0x0;
ffa0358e:	e7 1f       	IF CC JUMP 0xffa0355c <_tcp_rx+0x18> (BP);
ffa03590:	4c 30       	R1 = P4;
ffa03592:	41 64       	R1 += 0x8;		/* (  8) */
ffa03594:	e0 a1       	R0 = [P4 + 0x1c];
ffa03596:	ff e3 13 fc 	CALL 0xffa02dbc <_ARP_lut_add>;
ffa0359a:	44 30       	R0 = P4;
ffa0359c:	ff e3 6a fe 	CALL 0xffa03270 <_tcp_length>;
ffa035a0:	30 30       	R6 = R0;
ffa035a2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa035a6:	0e 30       	R1 = R6;
ffa035a8:	00 e1 0c 05 	R0.L = 0x50c;		/* (1292)	R0=0xff90050c(-7338740) */
ffa035ac:	ff e3 70 ee 	CALL 0xffa0128c <_printf_int>;
ffa035b0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90050c(-7338740) */
ffa035b4:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa035b8:	ff e3 a8 ed 	CALL 0xffa01108 <_printf_str>;
ffa035bc:	44 30       	R0 = P4;
ffa035be:	0e 30       	R1 = R6;
ffa035c0:	ff e3 d4 fe 	CALL 0xffa03368 <_tcp_checksum_check>;
ffa035c4:	40 43       	R0 = R0.B (Z);
ffa035c6:	00 0c       	CC = R0 == 0x0;
ffa035c8:	ca 1b       	IF CC JUMP 0xffa0355c <_tcp_rx+0x18>;
ffa035ca:	00 00       	NOP;
ffa035cc:	00 00       	NOP;
ffa035ce:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa035d0:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa035d4:	48 43       	R0 = R1.B (Z);
ffa035d6:	10 08       	CC = R0 == R2;
ffa035d8:	f1 18       	IF CC JUMP 0xffa037ba <_tcp_rx+0x276>;
ffa035da:	10 0c       	CC = R0 == 0x2;
ffa035dc:	0a 19       	IF CC JUMP 0xffa037f0 <_tcp_rx+0x2ac>;
ffa035de:	48 43       	R0 = R1.B (Z);
ffa035e0:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa035e2:	08 08       	CC = R0 == R1;
ffa035e4:	85 18       	IF CC JUMP 0xffa036ee <_tcp_rx+0x1aa>;
ffa035e6:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa035e8:	ab 10       	IF !CC JUMP 0xffa0373e <_tcp_rx+0x1fa>;
ffa035ea:	00 00       	NOP;
ffa035ec:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f6c <_g_httpHeaderLen> */
ffa035f0:	0b e1 5c 0f 	P3.L = 0xf5c;		/* (3932)	P3=0xff900f5c <_TcpState> */
ffa035f4:	00 00       	NOP;
ffa035f6:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa035fa:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa035fc:	38 10       	IF !CC JUMP 0xffa0366c <_tcp_rx+0x128>;
ffa035fe:	18 91       	R0 = [P3];
ffa03600:	10 0c       	CC = R0 == 0x2;
ffa03602:	ad 17       	IF !CC JUMP 0xffa0355c <_tcp_rx+0x18> (BP);
ffa03604:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900000 <_l1_data_a>(-7340032) */
ffa03608:	a0 a2       	R0 = [P4 + 0x28];
ffa0360a:	04 e1 3c 0e 	R4.L = 0xe3c;		/* (3644)	R4=0xff900e3c <_NetDestIP>(-7336388) */
ffa0360e:	a5 e5 30 00 	R5 = B[P4 + 0x30] (X);
ffa03612:	ff e3 e7 f1 	CALL 0xffa019e0 <_htonl>;
ffa03616:	14 32       	P2 = R4;
ffa03618:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa0361c:	30 50       	R0 = R0 + R6;
ffa0361e:	0d e1 54 0f 	P5.L = 0xf54;		/* (3924)	P5=0xff900f54 <_TcpSeqClient> */
ffa03622:	28 93       	[P5] = R0;
ffa03624:	e0 a1       	R0 = [P4 + 0x1c];
ffa03626:	10 93       	[P2] = R0;
ffa03628:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f5c <_TcpState> */
ffa0362c:	e0 a2       	R0 = [P4 + 0x2c];
ffa0362e:	0b e1 58 0f 	P3.L = 0xf58;		/* (3928)	P3=0xff900f58 <_TcpSeqHttpStart> */
ffa03632:	ff e3 d7 f1 	CALL 0xffa019e0 <_htonl>;
ffa03636:	19 91       	R1 = [P3];
ffa03638:	c8 53       	R7 = R0 - R1;
ffa0363a:	a1 e4 31 00 	R1 = B[P4 + 0x31] (Z);
ffa0363e:	21 48       	CC = !BITTST (R1, 0x4);		/* bit  4 */
ffa03640:	1e 1d       	IF CC JUMP 0xffa0387c <_tcp_rx+0x338> (BP);
ffa03642:	06 0c       	CC = R6 == 0x0;
ffa03644:	1c 15       	IF !CC JUMP 0xffa0387c <_tcp_rx+0x338> (BP);
ffa03646:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e3c <_NetDestIP> */
ffa0364a:	0a e1 6c 0f 	P2.L = 0xf6c;		/* (3948)	P2=0xff900f6c <_g_httpHeaderLen> */
ffa0364e:	10 91       	R0 = [P2];
ffa03650:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f6c <_g_httpHeaderLen> */
ffa03654:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_g_httpContentLen> */
ffa03658:	11 91       	R1 = [P2];
ffa0365a:	08 50       	R0 = R0 + R1;
ffa0365c:	07 08       	CC = R7 == R0;
ffa0365e:	46 18       	IF CC JUMP 0xffa036ea <_tcp_rx+0x1a6>;
ffa03660:	0f 30       	R1 = R7;
ffa03662:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03664:	ff e3 d8 fe 	CALL 0xffa03414 <_tcp_burst>;
ffa03668:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0366a:	7a 2f       	JUMP.S 0xffa0355e <_tcp_rx+0x1a>;
ffa0366c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0366e:	1f 91       	R7 = [P3];
ffa03670:	07 08       	CC = R7 == R0;
ffa03672:	85 19       	IF CC JUMP 0xffa0397c <_tcp_rx+0x438>;
ffa03674:	07 0c       	CC = R7 == 0x0;
ffa03676:	c4 17       	IF !CC JUMP 0xffa035fe <_tcp_rx+0xba> (BP);
ffa03678:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa0367c:	00 e1 88 05 	R0.L = 0x588;		/* (1416)	R0=0xff900588(-7338616) */
ffa03680:	ff e3 44 ed 	CALL 0xffa01108 <_printf_str>;
ffa03684:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_g_httpContentLen> */
ffa03688:	0a e1 74 0f 	P2.L = 0xf74;		/* (3956)	P2=0xff900f74 <_g_httpRxed> */
ffa0368c:	17 93       	[P2] = R7;
ffa0368e:	a0 a2       	R0 = [P4 + 0x28];
ffa03690:	ff e3 a8 f1 	CALL 0xffa019e0 <_htonl>;
ffa03694:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f74 <_g_httpRxed> */
ffa03698:	0a e1 54 0f 	P2.L = 0xf54;		/* (3924)	P2=0xff900f54 <_TcpSeqClient> */
ffa0369c:	10 93       	[P2] = R0;
ffa0369e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f54 <_TcpSeqClient> */
ffa036a2:	e2 a1       	R2 = [P4 + 0x1c];
ffa036a4:	0a e1 3c 0e 	P2.L = 0xe3c;		/* (3644)	P2=0xff900e3c <_NetDestIP> */
ffa036a8:	12 93       	[P2] = R2;
ffa036aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e3c <_NetDestIP> */
ffa036ae:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa036b2:	0a e1 68 0f 	P2.L = 0xf68;		/* (3944)	P2=0xff900f68 <_TcpClientPort> */
ffa036b6:	11 97       	W[P2] = R1;
ffa036b8:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa036ba:	f1 b0       	[SP + 0xc] = R1;
ffa036bc:	4f 30       	R1 = FP;
ffa036be:	30 b1       	[SP + 0x10] = R0;
ffa036c0:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa036c2:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa036c6:	77 b1 00 00 
ffa036ca:	ff e3 79 fe 	CALL 0xffa033bc <_tcp_packet_setup>;
ffa036ce:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa036d2:	00 0d       	CC = R0 <= 0x0;
ffa036d4:	95 1b       	IF CC JUMP 0xffa035fe <_tcp_rx+0xba>;
ffa036d6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f68 <_TcpClientPort> */
ffa036da:	0a e1 5c 0f 	P2.L = 0xf5c;		/* (3932)	P2=0xff900f5c <_TcpState> */
ffa036de:	17 93       	[P2] = R7;
ffa036e0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa036e2:	ff e3 27 fe 	CALL 0xffa03330 <_tcp_checksum_set>;
ffa036e6:	ff e3 1b f3 	CALL 0xffa01d1c <_bfin_EMAC_send_nocopy>;
ffa036ea:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa036ec:	39 2f       	JUMP.S 0xffa0355e <_tcp_rx+0x1a>;
ffa036ee:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f58 <_TcpSeqHttpStart> */
ffa036f2:	0b e1 5c 0f 	P3.L = 0xf5c;		/* (3932)	P3=0xff900f5c <_TcpState> */
ffa036f6:	18 91       	R0 = [P3];
ffa036f8:	08 0c       	CC = R0 == 0x1;
ffa036fa:	b9 17       	IF !CC JUMP 0xffa0366c <_tcp_rx+0x128> (BP);
ffa036fc:	e0 a2       	R0 = [P4 + 0x2c];
ffa036fe:	ff e3 71 f1 	CALL 0xffa019e0 <_htonl>;
ffa03702:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f5c <_TcpState> */
ffa03706:	0a e1 50 0f 	P2.L = 0xf50;		/* (3920)	P2=0xff900f50 <_TcpSeqHost> */
ffa0370a:	11 91       	R1 = [P2];
ffa0370c:	08 08       	CC = R0 == R1;
ffa0370e:	42 19       	IF CC JUMP 0xffa03992 <_tcp_rx+0x44e>;
ffa03710:	00 00       	NOP;
ffa03712:	00 00       	NOP;
ffa03714:	00 00       	NOP;
ffa03716:	e0 a2       	R0 = [P4 + 0x2c];
ffa03718:	ff e3 64 f1 	CALL 0xffa019e0 <_htonl>;
ffa0371c:	08 30       	R1 = R0;
ffa0371e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03722:	00 e1 38 05 	R0.L = 0x538;		/* (1336)	R0=0xff900538(-7338696) */
ffa03726:	ff e3 55 ee 	CALL 0xffa013d0 <_printf_ip>;
ffa0372a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0372c:	18 93       	[P3] = R0;
ffa0372e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03732:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa03736:	ff e3 e9 ec 	CALL 0xffa01108 <_printf_str>;
ffa0373a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0373c:	11 2f       	JUMP.S 0xffa0355e <_tcp_rx+0x1a>;
ffa0373e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03742:	00 e1 64 05 	R0.L = 0x564;		/* (1380)	R0=0xff900564(-7338652) */
ffa03746:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900e3c <_NetDestIP>(-7336388) */
ffa0374a:	ff e3 df ec 	CALL 0xffa01108 <_printf_str>;
ffa0374e:	04 e1 3c 0e 	R4.L = 0xe3c;		/* (3644)	R4=0xff900e3c <_NetDestIP>(-7336388) */
ffa03752:	a0 a2       	R0 = [P4 + 0x28];
ffa03754:	ff e3 46 f1 	CALL 0xffa019e0 <_htonl>;
ffa03758:	14 32       	P2 = R4;
ffa0375a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f54 <_TcpSeqClient> */
ffa0375e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f5c <_TcpState> */
ffa03762:	0d e1 54 0f 	P5.L = 0xf54;		/* (3924)	P5=0xff900f54 <_TcpSeqClient> */
ffa03766:	0b e1 5c 0f 	P3.L = 0xf5c;		/* (3932)	P3=0xff900f5c <_TcpState> */
ffa0376a:	28 93       	[P5] = R0;
ffa0376c:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa03770:	18 91 00 00 
ffa03774:	e2 a1       	R2 = [P4 + 0x1c];
ffa03776:	09 64       	R1 += 0x1;		/* (  1) */
ffa03778:	10 0c       	CC = R0 == 0x2;
ffa0377a:	12 93       	[P2] = R2;
ffa0377c:	29 93       	[P5] = R1;
ffa0377e:	03 18       	IF CC JUMP 0xffa03784 <_tcp_rx+0x240>;
ffa03780:	00 0c       	CC = R0 == 0x0;
ffa03782:	c0 14       	IF !CC JUMP 0xffa03902 <_tcp_rx+0x3be> (BP);
ffa03784:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa03786:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f50 <_TcpSeqHost> */
ffa0378a:	f0 b0       	[SP + 0xc] = R0;
ffa0378c:	0a e1 50 0f 	P2.L = 0xf50;		/* (3920)	P2=0xff900f50 <_TcpSeqHost> */
ffa03790:	10 91       	R0 = [P2];
ffa03792:	71 b1       	[SP + 0x14] = R1;
ffa03794:	4f 30       	R1 = FP;
ffa03796:	30 b1       	[SP + 0x10] = R0;
ffa03798:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0379a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0379c:	ff e3 10 fe 	CALL 0xffa033bc <_tcp_packet_setup>;
ffa037a0:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa037a4:	00 0d       	CC = R0 <= 0x0;
ffa037a6:	ae 18       	IF CC JUMP 0xffa03902 <_tcp_rx+0x3be>;
ffa037a8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa037aa:	18 93       	[P3] = R0;
ffa037ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa037ae:	ff e3 c1 fd 	CALL 0xffa03330 <_tcp_checksum_set>;
ffa037b2:	ff e3 b5 f2 	CALL 0xffa01d1c <_bfin_EMAC_send_nocopy>;
ffa037b6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa037b8:	d3 2e       	JUMP.S 0xffa0355e <_tcp_rx+0x1a>;
ffa037ba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa037be:	00 e1 20 05 	R0.L = 0x520;		/* (1312)	R0=0xff900520(-7338720) */
ffa037c2:	ff e3 a3 ec 	CALL 0xffa01108 <_printf_str>;
ffa037c6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f50 <_TcpSeqHost> */
ffa037ca:	0a e1 5c 0f 	P2.L = 0xf5c;		/* (3932)	P2=0xff900f5c <_TcpState> */
ffa037ce:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa037d0:	17 93       	[P2] = R7;
ffa037d2:	a0 a2       	R0 = [P4 + 0x28];
ffa037d4:	ff e3 06 f1 	CALL 0xffa019e0 <_htonl>;
ffa037d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f5c <_TcpState> */
ffa037dc:	0a e1 54 0f 	P2.L = 0xf54;		/* (3924)	P2=0xff900f54 <_TcpSeqClient> */
ffa037e0:	10 93       	[P2] = R0;
ffa037e2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f54 <_TcpSeqClient> */
ffa037e6:	0a e1 74 0f 	P2.L = 0xf74;		/* (3956)	P2=0xff900f74 <_g_httpRxed> */
ffa037ea:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa037ec:	17 93       	[P2] = R7;
ffa037ee:	b8 2e       	JUMP.S 0xffa0355e <_tcp_rx+0x1a>;
ffa037f0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa037f4:	00 e1 2c 05 	R0.L = 0x52c;		/* (1324)	R0=0xff90052c(-7338708) */
ffa037f8:	ff e3 88 ec 	CALL 0xffa01108 <_printf_str>;
ffa037fc:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f54 <_TcpSeqClient> */
ffa03800:	a0 a2       	R0 = [P4 + 0x28];
ffa03802:	ff e3 ef f0 	CALL 0xffa019e0 <_htonl>;
ffa03806:	0d e1 54 0f 	P5.L = 0xf54;		/* (3924)	P5=0xff900f54 <_TcpSeqClient> */
ffa0380a:	28 93       	[P5] = R0;
ffa0380c:	44 30       	R0 = P4;
ffa0380e:	ff e3 31 fd 	CALL 0xffa03270 <_tcp_length>;
ffa03812:	29 91       	R1 = [P5];
ffa03814:	09 64       	R1 += 0x1;		/* (  1) */
ffa03816:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f74 <_g_httpRxed> */
ffa0381a:	08 50       	R0 = R0 + R1;
ffa0381c:	0a e1 68 0f 	P2.L = 0xf68;		/* (3944)	P2=0xff900f68 <_TcpClientPort> */
ffa03820:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03824:	11 97       	W[P2] = R1;
ffa03826:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f68 <_TcpClientPort> */
ffa0382a:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa0382e:	28 93 00 00 
ffa03832:	0a e1 74 0f 	P2.L = 0xf74;		/* (3956)	P2=0xff900f74 <_g_httpRxed> */
ffa03836:	11 93       	[P2] = R1;
ffa03838:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f74 <_g_httpRxed> */
ffa0383c:	e2 a1       	R2 = [P4 + 0x1c];
ffa0383e:	0a e1 3c 0e 	P2.L = 0xe3c;		/* (3644)	P2=0xff900e3c <_NetDestIP> */
ffa03842:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa03844:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f54 <_TcpSeqClient> */
ffa03848:	12 93       	[P2] = R2;
ffa0384a:	0d e1 50 0f 	P5.L = 0xf50;		/* (3920)	P5=0xff900f50 <_TcpSeqHost> */
ffa0384e:	f1 b0       	[SP + 0xc] = R1;
ffa03850:	29 91       	R1 = [P5];
ffa03852:	31 b1       	[SP + 0x10] = R1;
ffa03854:	4f 30       	R1 = FP;
ffa03856:	70 b1       	[SP + 0x14] = R0;
ffa03858:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0385a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0385c:	ff e3 b0 fd 	CALL 0xffa033bc <_tcp_packet_setup>;
ffa03860:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03864:	00 0d       	CC = R0 <= 0x0;
ffa03866:	93 18       	IF CC JUMP 0xffa0398c <_tcp_rx+0x448>;
ffa03868:	28 91       	R0 = [P5];
ffa0386a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0386c:	28 93       	[P5] = R0;
ffa0386e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03870:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e3c <_NetDestIP> */
ffa03874:	0a e1 5c 0f 	P2.L = 0xf5c;		/* (3932)	P2=0xff900f5c <_TcpState> */
ffa03878:	10 93       	[P2] = R0;
ffa0387a:	33 2f       	JUMP.S 0xffa036e0 <_tcp_rx+0x19c>;
ffa0387c:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa03880:	28 54       	R0 = R0 & R5;
ffa03882:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa03884:	10 4d       	R0 >>>= 0x2;
ffa03886:	54 30       	R2 = P4;
ffa03888:	19 48       	CC = !BITTST (R1, 0x3);		/* bit  3 */
ffa0388a:	02 50       	R0 = R2 + R0;
ffa0388c:	5d 1c       	IF CC JUMP 0xffa03946 <_tcp_rx+0x402> (BP);
ffa0388e:	0e 30       	R1 = R6;
ffa03890:	00 e3 16 05 	CALL 0xffa042bc <_httpCollate>;
ffa03894:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f50 <_TcpSeqHost> */
ffa03898:	18 91       	R0 = [P3];
ffa0389a:	07 50       	R0 = R7 + R0;
ffa0389c:	0d e1 50 0f 	P5.L = 0xf50;		/* (3920)	P5=0xff900f50 <_TcpSeqHost> */
ffa038a0:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e84 <_NetArpLut> */
ffa038a4:	28 93       	[P5] = R0;
ffa038a6:	0c e1 74 0f 	P4.L = 0xf74;		/* (3956)	P4=0xff900f74 <_g_httpRxed> */
ffa038aa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa038ac:	80 4f       	R0 <<= 0x10;
ffa038ae:	21 91       	R1 = [P4];
ffa038b0:	00 e3 dc 02 	CALL 0xffa03e68 <_httpResp>;
ffa038b4:	00 0c       	CC = R0 == 0x0;
ffa038b6:	22 1c       	IF CC JUMP 0xffa038fa <_tcp_rx+0x3b6> (BP);
ffa038b8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f5c <_TcpState> */
ffa038bc:	28 91       	R0 = [P5];
ffa038be:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHttpStart> */
ffa038c2:	10 93       	[P2] = R0;
ffa038c4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHttpStart> */
ffa038c8:	0a e1 6c 0f 	P2.L = 0xf6c;		/* (3948)	P2=0xff900f6c <_g_httpHeaderLen> */
ffa038cc:	11 91       	R1 = [P2];
ffa038ce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f6c <_g_httpHeaderLen> */
ffa038d2:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_g_httpContentLen> */
ffa038d6:	10 91       	R0 = [P2];
ffa038d8:	41 50       	R1 = R1 + R0;
ffa038da:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa038de:	00 e1 a4 05 	R0.L = 0x5a4;		/* (1444)	R0=0xff9005a4(-7338588) */
ffa038e2:	ff e3 d5 ec 	CALL 0xffa0128c <_printf_int>;
ffa038e6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005a4(-7338588) */
ffa038ea:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa038ee:	ff e3 0d ec 	CALL 0xffa01108 <_printf_str>;
ffa038f2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa038f4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa038f6:	ff e3 8f fd 	CALL 0xffa03414 <_tcp_burst>;
ffa038fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa038fc:	20 93       	[P4] = R0;
ffa038fe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03900:	2f 2e       	JUMP.S 0xffa0355e <_tcp_rx+0x1a>;
ffa03902:	18 91       	R0 = [P3];
ffa03904:	18 0c       	CC = R0 == 0x3;
ffa03906:	77 16       	IF !CC JUMP 0xffa035f4 <_tcp_rx+0xb0> (BP);
ffa03908:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_g_httpContentLen> */
ffa0390c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0390e:	0a e1 74 0f 	P2.L = 0xf74;		/* (3956)	P2=0xff900f74 <_g_httpRxed> */
ffa03912:	10 93       	[P2] = R0;
ffa03914:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03916:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f74 <_g_httpRxed> */
ffa0391a:	f0 b0       	[SP + 0xc] = R0;
ffa0391c:	0a e1 50 0f 	P2.L = 0xf50;		/* (3920)	P2=0xff900f50 <_TcpSeqHost> */
ffa03920:	10 91       	R0 = [P2];
ffa03922:	14 32       	P2 = R4;
ffa03924:	30 b1       	[SP + 0x10] = R0;
ffa03926:	28 91       	R0 = [P5];
ffa03928:	70 b1       	[SP + 0x14] = R0;
ffa0392a:	4f 30       	R1 = FP;
ffa0392c:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03930:	12 91 00 00 
ffa03934:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03936:	ff e3 43 fd 	CALL 0xffa033bc <_tcp_packet_setup>;
ffa0393a:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0393e:	00 0d       	CC = R0 <= 0x0;
ffa03940:	5a 1a       	IF CC JUMP 0xffa035f4 <_tcp_rx+0xb0>;
ffa03942:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03944:	96 2f       	JUMP.S 0xffa03870 <_tcp_rx+0x32c>;
ffa03946:	0e 30       	R1 = R6;
ffa03948:	00 e3 ba 04 	CALL 0xffa042bc <_httpCollate>;
ffa0394c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0394e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f50 <_TcpSeqHost> */
ffa03952:	f0 b0       	[SP + 0xc] = R0;
ffa03954:	0a e1 50 0f 	P2.L = 0xf50;		/* (3920)	P2=0xff900f50 <_TcpSeqHost> */
ffa03958:	10 91       	R0 = [P2];
ffa0395a:	14 32       	P2 = R4;
ffa0395c:	30 b1       	[SP + 0x10] = R0;
ffa0395e:	28 91       	R0 = [P5];
ffa03960:	70 b1       	[SP + 0x14] = R0;
ffa03962:	4f 30       	R1 = FP;
ffa03964:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03968:	12 91 00 00 
ffa0396c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0396e:	ff e3 27 fd 	CALL 0xffa033bc <_tcp_packet_setup>;
ffa03972:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03976:	00 0d       	CC = R0 <= 0x0;
ffa03978:	b4 16       	IF !CC JUMP 0xffa036e0 <_tcp_rx+0x19c> (BP);
ffa0397a:	f1 2d       	JUMP.S 0xffa0355c <_tcp_rx+0x18>;
ffa0397c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa03980:	00 e1 74 05 	R0.L = 0x574;		/* (1396)	R0=0xff900574(-7338636) */
ffa03984:	ff e3 c2 eb 	CALL 0xffa01108 <_printf_str>;
ffa03988:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0398a:	ea 2d       	JUMP.S 0xffa0355e <_tcp_rx+0x1a>;
ffa0398c:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03990:	27 2e       	JUMP.S 0xffa035de <_tcp_rx+0x9a>;
ffa03992:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03994:	18 93       	[P3] = R0;
ffa03996:	a0 a2       	R0 = [P4 + 0x28];
ffa03998:	ff e3 24 f0 	CALL 0xffa019e0 <_htonl>;
ffa0399c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f50 <_TcpSeqHost> */
ffa039a0:	0a e1 54 0f 	P2.L = 0xf54;		/* (3924)	P2=0xff900f54 <_TcpSeqClient> */
ffa039a4:	10 93       	[P2] = R0;
ffa039a6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa039aa:	00 e1 54 05 	R0.L = 0x554;		/* (1364)	R0=0xff900554(-7338668) */
ffa039ae:	ff e3 ad eb 	CALL 0xffa01108 <_printf_str>;
ffa039b2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa039b4:	d5 2d       	JUMP.S 0xffa0355e <_tcp_rx+0x1a>;
	...

ffa039b8 <_htmlForm>:
ffa039b8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa039bc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa039c0:	02 e1 c0 05 	R2.L = 0x5c0;		/* (1472)	R2=0xff9005c0(-7338560) */
ffa039c4:	01 e8 00 00 	UNLINK;
ffa039c8:	ff e2 78 ed 	JUMP.L 0xffa014b8 <_strcpy_>;

ffa039cc <_htmlDiv>:
ffa039cc:	12 43       	R2 = R2.B (X);
ffa039ce:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa039d2:	1a 08       	CC = R2 == R3;
ffa039d4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa039d8:	09 18       	IF CC JUMP 0xffa039ea <_htmlDiv+0x1e>;
ffa039da:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005c0(-7338560) */
ffa039de:	02 e1 14 06 	R2.L = 0x614;		/* (1556)	R2=0xff900614(-7338476) */
ffa039e2:	01 e8 00 00 	UNLINK;
ffa039e6:	ff e2 69 ed 	JUMP.L 0xffa014b8 <_strcpy_>;
ffa039ea:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900614(-7338476) */
ffa039ee:	02 e1 e0 05 	R2.L = 0x5e0;		/* (1504)	R2=0xff9005e0(-7338528) */
ffa039f2:	01 e8 00 00 	UNLINK;
ffa039f6:	ff e2 61 ed 	JUMP.L 0xffa014b8 <_strcpy_>;
	...

ffa039fc <_html404>:
ffa039fc:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03a00:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a02:	4f 30       	R1 = FP;
ffa03a04:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005e0(-7338528) */
ffa03a08:	f0 bb       	[FP -0x4] = R0;
ffa03a0a:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03a0c:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03a10:	02 e1 48 06 	R2.L = 0x648;		/* (1608)	R2=0xff900648(-7338424) */
ffa03a14:	ff e3 52 ed 	CALL 0xffa014b8 <_strcpy_>;
ffa03a18:	f0 b9       	R0 = [FP -0x4];
ffa03a1a:	01 e8 00 00 	UNLINK;
ffa03a1e:	10 00       	RTS;

ffa03a20 <_htmlCursorOption>:
ffa03a20:	68 05       	[--SP] = (R7:5);
ffa03a22:	2a 30       	R5 = R2;
ffa03a24:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900648(-7338424) */
ffa03a28:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03a2c:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa03a30:	3f a2 00 00 
ffa03a34:	02 e1 64 06 	R2.L = 0x664;		/* (1636)	R2=0xff900664(-7338396) */
ffa03a38:	ff e3 40 ed 	CALL 0xffa014b8 <_strcpy_>;
ffa03a3c:	0e 30       	R1 = R6;
ffa03a3e:	15 30       	R2 = R5;
ffa03a40:	ff e3 a2 ee 	CALL 0xffa01784 <_strprintf_int>;
ffa03a44:	3d 08       	CC = R5 == R7;
ffa03a46:	16 18       	IF CC JUMP 0xffa03a72 <_htmlCursorOption+0x52>;
ffa03a48:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900664(-7338396) */
ffa03a4c:	0e 30       	R1 = R6;
ffa03a4e:	02 e1 8c 06 	R2.L = 0x68c;		/* (1676)	R2=0xff90068c(-7338356) */
ffa03a52:	ff e3 33 ed 	CALL 0xffa014b8 <_strcpy_>;
ffa03a56:	0e 30       	R1 = R6;
ffa03a58:	15 30       	R2 = R5;
ffa03a5a:	ff e3 95 ee 	CALL 0xffa01784 <_strprintf_int>;
ffa03a5e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90068c(-7338356) */
ffa03a62:	01 e8 00 00 	UNLINK;
ffa03a66:	0e 30       	R1 = R6;
ffa03a68:	02 e1 90 06 	R2.L = 0x690;		/* (1680)	R2=0xff900690(-7338352) */
ffa03a6c:	28 05       	(R7:5) = [SP++];
ffa03a6e:	ff e2 25 ed 	JUMP.L 0xffa014b8 <_strcpy_>;
ffa03a72:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900690(-7338352) */
ffa03a76:	0e 30       	R1 = R6;
ffa03a78:	02 e1 74 06 	R2.L = 0x674;		/* (1652)	R2=0xff900674(-7338380) */
ffa03a7c:	ff e3 1e ed 	CALL 0xffa014b8 <_strcpy_>;
ffa03a80:	e4 2f       	JUMP.S 0xffa03a48 <_htmlCursorOption+0x28>;
	...

ffa03a84 <_htmlCursorSelect>:
ffa03a84:	60 05       	[--SP] = (R7:4);
ffa03a86:	3a 30       	R7 = R2;
ffa03a88:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900674(-7338380) */
ffa03a8c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03a90:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa03a94:	7e a2 00 00 
ffa03a98:	02 e1 9c 06 	R2.L = 0x69c;		/* (1692)	R2=0xff90069c(-7338340) */
ffa03a9c:	bc a2       	R4 = [FP + 0x28];
ffa03a9e:	ff e3 0d ed 	CALL 0xffa014b8 <_strcpy_>;
ffa03aa2:	17 30       	R2 = R7;
ffa03aa4:	0d 30       	R1 = R5;
ffa03aa6:	ff e3 09 ed 	CALL 0xffa014b8 <_strcpy_>;
ffa03aaa:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90069c(-7338340) */
ffa03aae:	0d 30       	R1 = R5;
ffa03ab0:	02 e1 a8 06 	R2.L = 0x6a8;		/* (1704)	R2=0xff9006a8(-7338328) */
ffa03ab4:	ff e3 02 ed 	CALL 0xffa014b8 <_strcpy_>;
ffa03ab8:	0d 30       	R1 = R5;
ffa03aba:	16 30       	R2 = R6;
ffa03abc:	ff e3 fe ec 	CALL 0xffa014b8 <_strcpy_>;
ffa03ac0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006a8(-7338328) */
ffa03ac4:	0d 30       	R1 = R5;
ffa03ac6:	02 e1 c4 06 	R2.L = 0x6c4;		/* (1732)	R2=0xff9006c4(-7338300) */
ffa03aca:	ff e3 f7 ec 	CALL 0xffa014b8 <_strcpy_>;
ffa03ace:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03ad0:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa03ad4:	f4 b0 00 00 
ffa03ad8:	17 30       	R2 = R7;
ffa03ada:	ff e3 a3 ff 	CALL 0xffa03a20 <_htmlCursorOption>;
ffa03ade:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03ae0:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03ae2:	0f 08       	CC = R7 == R1;
ffa03ae4:	f6 17       	IF !CC JUMP 0xffa03ad0 <_htmlCursorSelect+0x4c> (BP);
ffa03ae6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c4(-7338300) */
ffa03aea:	01 e8 00 00 	UNLINK;
ffa03aee:	0d 30       	R1 = R5;
ffa03af0:	02 e1 c8 06 	R2.L = 0x6c8;		/* (1736)	R2=0xff9006c8(-7338296) */
ffa03af4:	20 05       	(R7:4) = [SP++];
ffa03af6:	ff e2 e1 ec 	JUMP.L 0xffa014b8 <_strcpy_>;
	...

ffa03afc <_htmlDefault>:
ffa03afc:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03afe:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03b02:	77 30       	R6 = FP;
ffa03b04:	e6 67       	R6 += -0x4;		/* ( -4) */
ffa03b06:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b08:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c8(-7338296) */
ffa03b0c:	f0 bb       	[FP -0x4] = R0;
ffa03b0e:	0e 30       	R1 = R6;
ffa03b10:	02 e1 e0 06 	R2.L = 0x6e0;		/* (1760)	R2=0xff9006e0(-7338272) */
ffa03b14:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03b18:	ff e3 d0 ec 	CALL 0xffa014b8 <_strcpy_>;
ffa03b1c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03b20:	0e 30       	R1 = R6;
ffa03b22:	ff e3 55 ff 	CALL 0xffa039cc <_htmlDiv>;
ffa03b26:	0e 30       	R1 = R6;
ffa03b28:	ff e3 48 ff 	CALL 0xffa039b8 <_htmlForm>;
ffa03b2c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03b30:	0e 30       	R1 = R6;
ffa03b32:	02 e1 30 07 	R2.L = 0x730;		/* (1840)	R2=0xff900730(-7338192) */
ffa03b36:	ff e3 c1 ec 	CALL 0xffa014b8 <_strcpy_>;
ffa03b3a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f54 <_TcpSeqClient> */
ffa03b3e:	0a e1 cc 0b 	P2.L = 0xbcc;		/* (3020)	P2=0xff900bcc <_g_streamEnabled> */
ffa03b42:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03b46:	10 99 00 00 
ffa03b4a:	00 0c       	CC = R0 == 0x0;
ffa03b4c:	2c 1d       	IF CC JUMP 0xffa03da4 <_htmlDefault+0x2a8> (BP);
ffa03b4e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900730(-7338192) */
ffa03b52:	01 30       	R0 = R1;
ffa03b54:	02 e1 80 07 	R2.L = 0x780;		/* (1920)	R2=0xff900780(-7338112) */
ffa03b58:	0e 30       	R1 = R6;
ffa03b5a:	ff e3 af ec 	CALL 0xffa014b8 <_strcpy_>;
ffa03b5e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900780(-7338112) */
ffa03b62:	0e 30       	R1 = R6;
ffa03b64:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03b68:	ff e3 a8 ec 	CALL 0xffa014b8 <_strcpy_>;
ffa03b6c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03b70:	0e 30       	R1 = R6;
ffa03b72:	ff e3 2d ff 	CALL 0xffa039cc <_htmlDiv>;
ffa03b76:	0e 30       	R1 = R6;
ffa03b78:	ff e3 20 ff 	CALL 0xffa039b8 <_htmlForm>;
ffa03b7c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03b80:	0e 30       	R1 = R6;
ffa03b82:	02 e1 ac 07 	R2.L = 0x7ac;		/* (1964)	R2=0xff9007ac(-7338068) */
ffa03b86:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f50 <_TcpSeqHost> */
ffa03b8a:	ff e3 97 ec 	CALL 0xffa014b8 <_strcpy_>;
ffa03b8e:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03b90:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa03b92:	0d e1 7c 0e 	P5.L = 0xe7c;		/* (3708)	P5=0xff900e7c <_NetDataDestIP> */
ffa03b96:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007ac(-7338068) */
ffa03b9a:	0e 30       	R1 = R6;
ffa03b9c:	02 e1 c8 07 	R2.L = 0x7c8;		/* (1992)	R2=0xff9007c8(-7338040) */
ffa03ba0:	ff e3 8c ec 	CALL 0xffa014b8 <_strcpy_>;
ffa03ba4:	17 30       	R2 = R7;
ffa03ba6:	0e 30       	R1 = R6;
ffa03ba8:	ff e3 ee ed 	CALL 0xffa01784 <_strprintf_int>;
ffa03bac:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007c8(-7338040) */
ffa03bb0:	0e 30       	R1 = R6;
ffa03bb2:	02 e1 e4 07 	R2.L = 0x7e4;		/* (2020)	R2=0xff9007e4(-7338012) */
ffa03bb6:	ff e3 81 ec 	CALL 0xffa014b8 <_strcpy_>;
ffa03bba:	2a 91       	R2 = [P5];
ffa03bbc:	6a 40       	R2 >>= R5;
ffa03bbe:	52 43       	R2 = R2.B (Z);
ffa03bc0:	0e 30       	R1 = R6;
ffa03bc2:	ff e3 e1 ed 	CALL 0xffa01784 <_strprintf_int>;
ffa03bc6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007e4(-7338012) */
ffa03bca:	0e 30       	R1 = R6;
ffa03bcc:	02 e1 f8 07 	R2.L = 0x7f8;		/* (2040)	R2=0xff9007f8(-7337992) */
ffa03bd0:	ff e3 74 ec 	CALL 0xffa014b8 <_strcpy_>;
ffa03bd4:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03bd6:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03bd8:	0f 08       	CC = R7 == R1;
ffa03bda:	45 64       	R5 += 0x8;		/* (  8) */
ffa03bdc:	dd 17       	IF !CC JUMP 0xffa03b96 <_htmlDefault+0x9a> (BP);
ffa03bde:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007f8(-7337992) */
ffa03be2:	0e 30       	R1 = R6;
ffa03be4:	02 e1 00 08 	R2.L = 0x800;		/* (2048)	R2=0xff900800(-7337984) */
ffa03be8:	ff e3 68 ec 	CALL 0xffa014b8 <_strcpy_>;
ffa03bec:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900800(-7337984) */
ffa03bf0:	0e 30       	R1 = R6;
ffa03bf2:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03bf6:	ff e3 61 ec 	CALL 0xffa014b8 <_strcpy_>;
ffa03bfa:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03bfe:	0e 30       	R1 = R6;
ffa03c00:	ff e3 e6 fe 	CALL 0xffa039cc <_htmlDiv>;
ffa03c04:	0e 30       	R1 = R6;
ffa03c06:	ff e3 d9 fe 	CALL 0xffa039b8 <_htmlForm>;
ffa03c0a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03c0e:	0e 30       	R1 = R6;
ffa03c10:	02 e1 24 08 	R2.L = 0x824;		/* (2084)	R2=0xff900824(-7337948) */
ffa03c14:	ff e3 52 ec 	CALL 0xffa014b8 <_strcpy_>;
ffa03c18:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bcc */
ffa03c1c:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03c20:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03c24:	10 99 00 00 
ffa03c28:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03c2a:	c6 1c       	IF CC JUMP 0xffa03db6 <_htmlDefault+0x2ba> (BP);
ffa03c2c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900824(-7337948) */
ffa03c30:	01 30       	R0 = R1;
ffa03c32:	02 e1 8c 07 	R2.L = 0x78c;		/* (1932)	R2=0xff90078c(-7338100) */
ffa03c36:	0e 30       	R1 = R6;
ffa03c38:	ff e3 40 ec 	CALL 0xffa014b8 <_strcpy_>;
ffa03c3c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90078c(-7338100) */
ffa03c40:	0e 30       	R1 = R6;
ffa03c42:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03c46:	ff e3 39 ec 	CALL 0xffa014b8 <_strcpy_>;
ffa03c4a:	0e 30       	R1 = R6;
ffa03c4c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03c50:	ff e3 be fe 	CALL 0xffa039cc <_htmlDiv>;
ffa03c54:	0e 30       	R1 = R6;
ffa03c56:	ff e3 b1 fe 	CALL 0xffa039b8 <_htmlForm>;
ffa03c5a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03c5e:	0e 30       	R1 = R6;
ffa03c60:	02 e1 64 08 	R2.L = 0x864;		/* (2148)	R2=0xff900864(-7337884) */
ffa03c64:	ff e3 2a ec 	CALL 0xffa014b8 <_strcpy_>;
ffa03c68:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa03c6c:	01 e1 94 08 	R1.L = 0x894;		/* (2196)	R1=0xff900894(-7337836) */
ffa03c70:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900864(-7337884) */
ffa03c74:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa03c78:	f1 b0 00 00 
ffa03c7c:	02 e1 88 08 	R2.L = 0x888;		/* (2184)	R2=0xff900888(-7337848) */
ffa03c80:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03c84:	37 b1 00 00 
ffa03c88:	ff e3 fe fe 	CALL 0xffa03a84 <_htmlCursorSelect>;
ffa03c8c:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900894(-7337836) */
ffa03c90:	01 e1 ac 08 	R1.L = 0x8ac;		/* (2220)	R1=0xff9008ac(-7337812) */
ffa03c94:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900888(-7337848) */
ffa03c98:	f1 b0       	[SP + 0xc] = R1;
ffa03c9a:	02 e1 a0 08 	R2.L = 0x8a0;		/* (2208)	R2=0xff9008a0(-7337824) */
ffa03c9e:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03ca2:	37 b1 00 00 
ffa03ca6:	ff e3 ef fe 	CALL 0xffa03a84 <_htmlCursorSelect>;
ffa03caa:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008ac(-7337812) */
ffa03cae:	01 e1 c4 08 	R1.L = 0x8c4;		/* (2244)	R1=0xff9008c4(-7337788) */
ffa03cb2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a0(-7337824) */
ffa03cb6:	f1 b0       	[SP + 0xc] = R1;
ffa03cb8:	02 e1 b8 08 	R2.L = 0x8b8;		/* (2232)	R2=0xff9008b8(-7337800) */
ffa03cbc:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03cc0:	37 b1 00 00 
ffa03cc4:	ff e3 e0 fe 	CALL 0xffa03a84 <_htmlCursorSelect>;
ffa03cc8:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008c4(-7337788) */
ffa03ccc:	01 e1 d8 08 	R1.L = 0x8d8;		/* (2264)	R1=0xff9008d8(-7337768) */
ffa03cd0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008b8(-7337800) */
ffa03cd4:	f1 b0       	[SP + 0xc] = R1;
ffa03cd6:	02 e1 d0 08 	R2.L = 0x8d0;		/* (2256)	R2=0xff9008d0(-7337776) */
ffa03cda:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03cde:	37 b1 00 00 
ffa03ce2:	ff e3 d1 fe 	CALL 0xffa03a84 <_htmlCursorSelect>;
ffa03ce6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008d0(-7337776) */
ffa03cea:	0e 30       	R1 = R6;
ffa03cec:	02 e1 e4 08 	R2.L = 0x8e4;		/* (2276)	R2=0xff9008e4(-7337756) */
ffa03cf0:	ff e3 e4 eb 	CALL 0xffa014b8 <_strcpy_>;
ffa03cf4:	0e 30       	R1 = R6;
ffa03cf6:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03cfa:	ff e3 69 fe 	CALL 0xffa039cc <_htmlDiv>;
ffa03cfe:	0e 30       	R1 = R6;
ffa03d00:	ff e3 5c fe 	CALL 0xffa039b8 <_htmlForm>;
ffa03d04:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03d08:	0e 30       	R1 = R6;
ffa03d0a:	02 e1 20 09 	R2.L = 0x920;		/* (2336)	R2=0xff900920(-7337696) */
ffa03d0e:	ff e3 d5 eb 	CALL 0xffa014b8 <_strcpy_>;
ffa03d12:	0e 30       	R1 = R6;
ffa03d14:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03d18:	ff e3 5a fe 	CALL 0xffa039cc <_htmlDiv>;
ffa03d1c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03d20:	0e 30       	R1 = R6;
ffa03d22:	02 e1 78 09 	R2.L = 0x978;		/* (2424)	R2=0xff900978(-7337608) */
ffa03d26:	ff e3 c9 eb 	CALL 0xffa014b8 <_strcpy_>;
ffa03d2a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900978(-7337608) */
ffa03d2e:	0e 30       	R1 = R6;
ffa03d30:	02 e1 a0 09 	R2.L = 0x9a0;		/* (2464)	R2=0xff9009a0(-7337568) */
ffa03d34:	ff e3 c2 eb 	CALL 0xffa014b8 <_strcpy_>;
ffa03d38:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009a0(-7337568) */
ffa03d3c:	0e 30       	R1 = R6;
ffa03d3e:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03d42:	ff e3 bb eb 	CALL 0xffa014b8 <_strcpy_>;
ffa03d46:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900798(-7338088) */
ffa03d4a:	0e 30       	R1 = R6;
ffa03d4c:	02 e1 e8 09 	R2.L = 0x9e8;		/* (2536)	R2=0xff9009e8(-7337496) */
ffa03d50:	ff e3 b4 eb 	CALL 0xffa014b8 <_strcpy_>;
ffa03d54:	0e 30       	R1 = R6;
ffa03d56:	22 e1 75 ff 	R2 = -0x8b (X);		/*		R2=0xffffff75(-139) */
ffa03d5a:	ff e3 15 ed 	CALL 0xffa01784 <_strprintf_int>;
ffa03d5e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ff75(-7274635) */
ffa03d62:	0e 30       	R1 = R6;
ffa03d64:	02 e1 b0 00 	R2.L = 0xb0;		/* (176)	R2=0xff9000b0(-7339856) */
ffa03d68:	ff e3 a8 eb 	CALL 0xffa014b8 <_strcpy_>;
ffa03d6c:	0e 30       	R1 = R6;
ffa03d6e:	92 62       	R2 = -0x2e (X);		/*		R2=0xffffffd2(-46) */
ffa03d70:	ff e3 0a ed 	CALL 0xffa01784 <_strprintf_int>;
ffa03d74:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ffd2(-7274542) */
ffa03d78:	0e 30       	R1 = R6;
ffa03d7a:	02 e1 88 00 	R2.L = 0x88;		/* (136)	R2=0xff900088(-7339896) */
ffa03d7e:	ff e3 9d eb 	CALL 0xffa014b8 <_strcpy_>;
ffa03d82:	0e 30       	R1 = R6;
ffa03d84:	22 e1 d0 fd 	R2 = -0x230 (X);		/*		R2=0xfffffdd0(-560) */
ffa03d88:	ff e3 fe ec 	CALL 0xffa01784 <_strprintf_int>;
ffa03d8c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90fdd0(-7275056) */
ffa03d90:	0e 30       	R1 = R6;
ffa03d92:	02 e1 f4 09 	R2.L = 0x9f4;		/* (2548)	R2=0xff9009f4(-7337484) */
ffa03d96:	ff e3 91 eb 	CALL 0xffa014b8 <_strcpy_>;
ffa03d9a:	f0 b9       	R0 = [FP -0x4];
ffa03d9c:	01 e8 00 00 	UNLINK;
ffa03da0:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03da2:	10 00       	RTS;
ffa03da4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009f4(-7337484) */
ffa03da8:	01 30       	R0 = R1;
ffa03daa:	02 e1 8c 07 	R2.L = 0x78c;		/* (1932)	R2=0xff90078c(-7338100) */
ffa03dae:	0e 30       	R1 = R6;
ffa03db0:	ff e3 84 eb 	CALL 0xffa014b8 <_strcpy_>;
ffa03db4:	d5 2e       	JUMP.S 0xffa03b5e <_htmlDefault+0x62>;
ffa03db6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90078c(-7338100) */
ffa03dba:	01 30       	R0 = R1;
ffa03dbc:	02 e1 80 07 	R2.L = 0x780;		/* (1920)	R2=0xff900780(-7338112) */
ffa03dc0:	0e 30       	R1 = R6;
ffa03dc2:	ff e3 7b eb 	CALL 0xffa014b8 <_strcpy_>;
ffa03dc6:	3b 2f       	JUMP.S 0xffa03c3c <_htmlDefault+0x140>;

ffa03dc8 <_httpHeader>:
ffa03dc8:	78 05       	[--SP] = (R7:7);
ffa03dca:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03dce:	7f 30       	R7 = FP;
ffa03dd0:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03dd2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03dd4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900780(-7338112) */
ffa03dd8:	f0 bb       	[FP -0x4] = R0;
ffa03dda:	0f 30       	R1 = R7;
ffa03ddc:	02 e1 0c 0a 	R2.L = 0xa0c;		/* (2572)	R2=0xff900a0c(-7337460) */
ffa03de0:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03de4:	ff e3 6a eb 	CALL 0xffa014b8 <_strcpy_>;
ffa03de8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a0c(-7337460) */
ffa03dec:	0f 30       	R1 = R7;
ffa03dee:	02 e1 20 0a 	R2.L = 0xa20;		/* (2592)	R2=0xff900a20(-7337440) */
ffa03df2:	ff e3 63 eb 	CALL 0xffa014b8 <_strcpy_>;
ffa03df6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a20(-7337440) */
ffa03dfa:	0f 30       	R1 = R7;
ffa03dfc:	02 e1 34 0a 	R2.L = 0xa34;		/* (2612)	R2=0xff900a34(-7337420) */
ffa03e00:	ff e3 5c eb 	CALL 0xffa014b8 <_strcpy_>;
ffa03e04:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa03e08:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_g_httpContentLen> */
ffa03e0c:	12 91       	R2 = [P2];
ffa03e0e:	0f 30       	R1 = R7;
ffa03e10:	ff e3 ba ec 	CALL 0xffa01784 <_strprintf_int>;
ffa03e14:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a34(-7337420) */
ffa03e18:	0f 30       	R1 = R7;
ffa03e1a:	02 e1 48 0a 	R2.L = 0xa48;		/* (2632)	R2=0xff900a48(-7337400) */
ffa03e1e:	ff e3 4d eb 	CALL 0xffa014b8 <_strcpy_>;
ffa03e22:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_g_httpContentLen> */
ffa03e26:	f0 b9       	R0 = [FP -0x4];
ffa03e28:	0a e1 6c 0f 	P2.L = 0xf6c;		/* (3948)	P2=0xff900f6c <_g_httpHeaderLen> */
ffa03e2c:	10 93       	[P2] = R0;
ffa03e2e:	01 e8 00 00 	UNLINK;
ffa03e32:	38 05       	(R7:7) = [SP++];
ffa03e34:	10 00       	RTS;
	...

ffa03e38 <_htmlGeneric>:
ffa03e38:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03e3c:	10 30       	R2 = R0;
ffa03e3e:	4f 30       	R1 = FP;
ffa03e40:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03e42:	f0 bb       	[FP -0x4] = R0;
ffa03e44:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03e46:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03e4a:	ff e3 37 eb 	CALL 0xffa014b8 <_strcpy_>;
ffa03e4e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f6c <_g_httpHeaderLen> */
ffa03e52:	f0 b9       	R0 = [FP -0x4];
ffa03e54:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_g_httpContentLen> */
ffa03e58:	10 93       	[P2] = R0;
ffa03e5a:	ff e3 b7 ff 	CALL 0xffa03dc8 <_httpHeader>;
ffa03e5e:	f0 b9       	R0 = [FP -0x4];
ffa03e60:	01 e8 00 00 	UNLINK;
ffa03e64:	10 00       	RTS;
	...

ffa03e68 <_httpResp>:
ffa03e68:	60 05       	[--SP] = (R7:4);
ffa03e6a:	30 30       	R6 = R0;
ffa03e6c:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa03e6e:	01 09       	CC = R1 <= R0;
ffa03e70:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa03e74:	39 30       	R7 = R1;
ffa03e76:	21 10       	IF !CC JUMP 0xffa03eb8 <_httpResp+0x50>;
ffa03e78:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa03e7a:	0f 09       	CC = R7 <= R1;
ffa03e7c:	34 10       	IF !CC JUMP 0xffa03ee4 <_httpResp+0x7c>;
ffa03e7e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa03e82:	00 e1 04 0a 	R0.L = 0xa04;		/* (2564)	R0=0xff900a04(-7337468) */
ffa03e86:	0e 30       	R1 = R6;
ffa03e88:	17 30       	R2 = R7;
ffa03e8a:	ff e3 85 eb 	CALL 0xffa01594 <_substr>;
ffa03e8e:	00 0c       	CC = R0 == 0x0;
ffa03e90:	06 10       	IF !CC JUMP 0xffa03e9c <_httpResp+0x34>;
ffa03e92:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03e94:	01 e8 00 00 	UNLINK;
ffa03e98:	20 05       	(R7:4) = [SP++];
ffa03e9a:	10 00       	RTS;
ffa03e9c:	ff e3 b0 fd 	CALL 0xffa039fc <_html404>;
ffa03ea0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_g_httpContentLen> */
ffa03ea4:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_g_httpContentLen> */
ffa03ea8:	10 93       	[P2] = R0;
ffa03eaa:	ff e3 8f ff 	CALL 0xffa03dc8 <_httpHeader>;
ffa03eae:	01 e8 00 00 	UNLINK;
ffa03eb2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03eb4:	20 05       	(R7:4) = [SP++];
ffa03eb6:	10 00       	RTS;
ffa03eb8:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa03ebc:	06 30       	R0 = R6;
ffa03ebe:	01 e1 68 0a 	R1.L = 0xa68;		/* (2664)	R1=0xff900a68(-7337368) */
ffa03ec2:	ff e3 3b eb 	CALL 0xffa01538 <_strcmp>;
ffa03ec6:	00 0c       	CC = R0 == 0x0;
ffa03ec8:	d8 1f       	IF CC JUMP 0xffa03e78 <_httpResp+0x10> (BP);
ffa03eca:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03ece:	00 e1 04 0a 	R0.L = 0xa04;		/* (2564)	R0=0xff900a04(-7337468) */
ffa03ed2:	0e 30       	R1 = R6;
ffa03ed4:	17 30       	R2 = R7;
ffa03ed6:	ff e3 5f eb 	CALL 0xffa01594 <_substr>;
ffa03eda:	00 0c       	CC = R0 == 0x0;
ffa03edc:	db 1f       	IF CC JUMP 0xffa03e92 <_httpResp+0x2a> (BP);
ffa03ede:	ff e3 0f fe 	CALL 0xffa03afc <_htmlDefault>;
ffa03ee2:	df 2f       	JUMP.S 0xffa03ea0 <_httpResp+0x38>;
ffa03ee4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a04(-7337468) */
ffa03ee8:	00 e1 74 0a 	R0.L = 0xa74;		/* (2676)	R0=0xff900a74(-7337356) */
ffa03eec:	0e 30       	R1 = R6;
ffa03eee:	17 30       	R2 = R7;
ffa03ef0:	ff e3 52 eb 	CALL 0xffa01594 <_substr>;
ffa03ef4:	00 0c       	CC = R0 == 0x0;
ffa03ef6:	3c 1c       	IF CC JUMP 0xffa03f6e <_httpResp+0x106> (BP);
ffa03ef8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a74(-7337356) */
ffa03efc:	00 e1 80 0a 	R0.L = 0xa80;		/* (2688)	R0=0xff900a80(-7337344) */
ffa03f00:	0e 30       	R1 = R6;
ffa03f02:	17 30       	R2 = R7;
ffa03f04:	ff e3 48 eb 	CALL 0xffa01594 <_substr>;
ffa03f08:	00 0c       	CC = R0 == 0x0;
ffa03f0a:	c4 1f       	IF CC JUMP 0xffa03e92 <_httpResp+0x2a> (BP);
ffa03f0c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa03f0e:	06 50       	R0 = R6 + R0;
ffa03f10:	ff e3 62 ec 	CALL 0xffa017d4 <_atoi>;
ffa03f14:	08 30       	R1 = R0;
ffa03f16:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa03f1a:	00 67       	R0 += -0x20;		/* (-32) */
ffa03f1c:	10 0a       	CC = R0 <= R2 (IU);
ffa03f1e:	24 11       	IF !CC JUMP 0xffa04166 <_httpResp+0x2fe>;
ffa03f20:	82 c6 19 84 	R2 = R1 << 0x3;
ffa03f24:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800f70 */
ffa03f28:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03f2c:	02 0d       	CC = R2 <= 0x0;
ffa03f2e:	13 91       	R3 = [P2];
ffa03f30:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa03f34:	14 18       	IF CC JUMP 0xffa03f5c <_httpResp+0xf4>;
ffa03f36:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa03f3a:	28 4f       	R0 <<= 0x5;
ffa03f3c:	03 54       	R0 = R3 & R0;
ffa03f3e:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa03f40:	38 52       	R0 = R0 - R7;
ffa03f42:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa03f46:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03f48:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa03f4c:	18 54       	R0 = R0 & R3;
ffa03f4e:	10 32       	P2 = R0;
ffa03f50:	09 64       	R1 += 0x1;		/* (  1) */
ffa03f52:	0a 08       	CC = R2 == R1;
ffa03f54:	10 90       	R0 = [P2++];
ffa03f56:	08 92       	[P1++] = R0;
ffa03f58:	42 30       	R0 = P2;
ffa03f5a:	f9 17       	IF !CC JUMP 0xffa03f4c <_httpResp+0xe4> (BP);
ffa03f5c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900804 */
ffa03f60:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_g_httpContentLen> */
ffa03f64:	17 93       	[P2] = R7;
ffa03f66:	ff e3 31 ff 	CALL 0xffa03dc8 <_httpHeader>;
ffa03f6a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03f6c:	94 2f       	JUMP.S 0xffa03e94 <_httpResp+0x2c>;
ffa03f6e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03f72:	00 e1 b4 0a 	R0.L = 0xab4;		/* (2740)	R0=0xff900ab4(-7337292) */
ffa03f76:	0e 30       	R1 = R6;
ffa03f78:	17 30       	R2 = R7;
ffa03f7a:	ff e3 0d eb 	CALL 0xffa01594 <_substr>;
ffa03f7e:	00 0c       	CC = R0 == 0x0;
ffa03f80:	7f 1f       	IF CC JUMP 0xffa03e7e <_httpResp+0x16> (BP);
ffa03f82:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ab4(-7337292) */
ffa03f86:	0e 30       	R1 = R6;
ffa03f88:	17 30       	R2 = R7;
ffa03f8a:	00 e1 b4 0a 	R0.L = 0xab4;		/* (2740)	R0=0xff900ab4(-7337292) */
ffa03f8e:	ff e3 03 eb 	CALL 0xffa01594 <_substr>;
ffa03f92:	86 51       	R6 = R6 + R0;
ffa03f94:	47 53       	R5 = R7 - R0;
ffa03f96:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ab4(-7337292) */
ffa03f9a:	00 e1 bc 0a 	R0.L = 0xabc;		/* (2748)	R0=0xff900abc(-7337284) */
ffa03f9e:	0e 30       	R1 = R6;
ffa03fa0:	15 30       	R2 = R5;
ffa03fa2:	ff e3 f9 ea 	CALL 0xffa01594 <_substr>;
ffa03fa6:	00 0c       	CC = R0 == 0x0;
ffa03fa8:	10 11       	IF !CC JUMP 0xffa041c8 <_httpResp+0x360>;
ffa03faa:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03fac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900abc(-7337284) */
ffa03fb0:	00 e1 e0 0a 	R0.L = 0xae0;		/* (2784)	R0=0xff900ae0(-7337248) */
ffa03fb4:	0e 30       	R1 = R6;
ffa03fb6:	15 30       	R2 = R5;
ffa03fb8:	ff e3 ee ea 	CALL 0xffa01594 <_substr>;
ffa03fbc:	00 0c       	CC = R0 == 0x0;
ffa03fbe:	e2 10       	IF !CC JUMP 0xffa04182 <_httpResp+0x31a>;
ffa03fc0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ae0(-7337248) */
ffa03fc4:	0e 30       	R1 = R6;
ffa03fc6:	00 e1 ec 0a 	R0.L = 0xaec;		/* (2796)	R0=0xff900aec(-7337236) */
ffa03fca:	15 30       	R2 = R5;
ffa03fcc:	ff e3 e4 ea 	CALL 0xffa01594 <_substr>;
ffa03fd0:	00 0c       	CC = R0 == 0x0;
ffa03fd2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900aec(-7337236) */
ffa03fd6:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03fd8:	0e 30       	R1 = R6;
ffa03fda:	15 30       	R2 = R5;
ffa03fdc:	00 e1 f8 0a 	R0.L = 0xaf8;		/* (2808)	R0=0xff900af8(-7337224) */
ffa03fe0:	27 06       	IF !CC R4 = R7;
ffa03fe2:	ff e3 d9 ea 	CALL 0xffa01594 <_substr>;
ffa03fe6:	00 0c       	CC = R0 == 0x0;
ffa03fe8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900af8(-7337224) */
ffa03fec:	0e 30       	R1 = R6;
ffa03fee:	15 30       	R2 = R5;
ffa03ff0:	00 e1 04 0b 	R0.L = 0xb04;		/* (2820)	R0=0xff900b04(-7337212) */
ffa03ff4:	27 06       	IF !CC R4 = R7;
ffa03ff6:	ff e3 cf ea 	CALL 0xffa01594 <_substr>;
ffa03ffa:	00 0c       	CC = R0 == 0x0;
ffa03ffc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b04(-7337212) */
ffa04000:	0e 30       	R1 = R6;
ffa04002:	15 30       	R2 = R5;
ffa04004:	00 e1 10 0b 	R0.L = 0xb10;		/* (2832)	R0=0xff900b10(-7337200) */
ffa04008:	27 06       	IF !CC R4 = R7;
ffa0400a:	ff e3 c5 ea 	CALL 0xffa01594 <_substr>;
ffa0400e:	00 0c       	CC = R0 == 0x0;
ffa04010:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b10(-7337200) */
ffa04014:	00 e1 1c 0b 	R0.L = 0xb1c;		/* (2844)	R0=0xff900b1c(-7337188) */
ffa04018:	0e 30       	R1 = R6;
ffa0401a:	15 30       	R2 = R5;
ffa0401c:	27 06       	IF !CC R4 = R7;
ffa0401e:	ff e3 bb ea 	CALL 0xffa01594 <_substr>;
ffa04022:	00 0c       	CC = R0 == 0x0;
ffa04024:	15 11       	IF !CC JUMP 0xffa0424e <_httpResp+0x3e6>;
ffa04026:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b1c(-7337188) */
ffa0402a:	00 e1 24 0b 	R0.L = 0xb24;		/* (2852)	R0=0xff900b24(-7337180) */
ffa0402e:	0e 30       	R1 = R6;
ffa04030:	15 30       	R2 = R5;
ffa04032:	ff e3 b1 ea 	CALL 0xffa01594 <_substr>;
ffa04036:	00 0c       	CC = R0 == 0x0;
ffa04038:	f6 10       	IF !CC JUMP 0xffa04224 <_httpResp+0x3bc>;
ffa0403a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b24(-7337180) */
ffa0403e:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa04042:	0e 30       	R1 = R6;
ffa04044:	15 30       	R2 = R5;
ffa04046:	ff e3 a7 ea 	CALL 0xffa01594 <_substr>;
ffa0404a:	00 0c       	CC = R0 == 0x0;
ffa0404c:	13 11       	IF !CC JUMP 0xffa04272 <_httpResp+0x40a>;
ffa0404e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b2c(-7337172) */
ffa04052:	00 e1 34 0b 	R0.L = 0xb34;		/* (2868)	R0=0xff900b34(-7337164) */
ffa04056:	0e 30       	R1 = R6;
ffa04058:	15 30       	R2 = R5;
ffa0405a:	ff e3 9d ea 	CALL 0xffa01594 <_substr>;
ffa0405e:	00 0c       	CC = R0 == 0x0;
ffa04060:	d1 10       	IF !CC JUMP 0xffa04202 <_httpResp+0x39a>;
ffa04062:	20 43       	R0 = R4.B (X);
ffa04064:	00 0c       	CC = R0 == 0x0;
ffa04066:	3c 17       	IF !CC JUMP 0xffa03ede <_httpResp+0x76> (BP);
ffa04068:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b34(-7337164) */
ffa0406c:	00 e1 3c 0b 	R0.L = 0xb3c;		/* (2876)	R0=0xff900b3c(-7337156) */
ffa04070:	0e 30       	R1 = R6;
ffa04072:	15 30       	R2 = R5;
ffa04074:	ff e3 90 ea 	CALL 0xffa01594 <_substr>;
ffa04078:	00 0c       	CC = R0 == 0x0;
ffa0407a:	0c 1b       	IF CC JUMP 0xffa03e92 <_httpResp+0x2a>;
ffa0407c:	7f 30       	R7 = FP;
ffa0407e:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa04082:	57 5a       	P1 = FP + P2;
ffa04084:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa04086:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04088:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa0408a:	b2 e0 02 20 	LSETUP(0xffa0408e <_httpResp+0x226>, 0xffa0408e <_httpResp+0x226>) LC1 = P2;
ffa0408e:	08 92       	[P1++] = R0;
ffa04090:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa04094:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa04098:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa0409c:	29 4f       	R1 <<= 0x5;
ffa0409e:	10 91       	R0 = [P2];
ffa040a0:	08 54       	R0 = R0 & R1;
ffa040a2:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa040a4:	81 4f       	R1 <<= 0x10;
ffa040a6:	08 50       	R0 = R0 + R1;
ffa040a8:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa040aa:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa040ae:	88 54       	R2 = R0 & R1;
ffa040b0:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa040b4:	b2 e0 12 10 	LSETUP(0xffa040b8 <_httpResp+0x250>, 0xffa040d8 <_httpResp+0x270>) LC1 = P1;
ffa040b8:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa040bc:	97 5a       	P2 = FP + P2;
ffa040be:	02 32       	P0 = R2;
ffa040c0:	11 91       	R1 = [P2];
ffa040c2:	12 64       	R2 += 0x2;		/* (  2) */
ffa040c4:	00 94       	R0 = W[P0++] (Z);
ffa040c6:	41 50       	R1 = R1 + R0;
ffa040c8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa040ca:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa040ce:	11 92       	[P2++] = R1;
ffa040d0:	82 54       	R2 = R2 & R0;
ffa040d2:	42 30       	R0 = P2;
ffa040d4:	38 08       	CC = R0 == R7;
ffa040d6:	f4 17       	IF !CC JUMP 0xffa040be <_httpResp+0x256> (BP);
ffa040d8:	00 00       	NOP;
ffa040da:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa040de:	97 5a       	P2 = FP + P2;
ffa040e0:	00 00       	NOP;
ffa040e2:	10 91       	R0 = [P2];
ffa040e4:	58 4d       	R0 >>>= 0xb;
ffa040e6:	10 92       	[P2++] = R0;
ffa040e8:	4a 30       	R1 = P2;
ffa040ea:	39 08       	CC = R1 == R7;
ffa040ec:	fa 17       	IF !CC JUMP 0xffa040e0 <_httpResp+0x278> (BP);
ffa040ee:	ff e3 07 fd 	CALL 0xffa03afc <_htmlDefault>;
ffa040f2:	68 67       	R0 += -0x13;		/* (-19) */
ffa040f4:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa040f8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80 <_g_httpRemainingLen>(-7336064) */
ffa040fc:	f0 bb       	[FP -0x4] = R0;
ffa040fe:	02 e1 4c 0b 	R2.L = 0xb4c;		/* (2892)	R2=0xff900b4c(-7337140) */
ffa04102:	08 50       	R0 = R0 + R1;
ffa04104:	0f 30       	R1 = R7;
ffa04106:	ff e3 d9 e9 	CALL 0xffa014b8 <_strcpy_>;
ffa0410a:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa0410e:	f5 b8 00 00 
ffa04112:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b4c(-7337140) */
ffa04116:	0f 30       	R1 = R7;
ffa04118:	02 e1 58 0b 	R2.L = 0xb58;		/* (2904)	R2=0xff900b58(-7337128) */
ffa0411c:	ff e3 ce e9 	CALL 0xffa014b8 <_strcpy_>;
ffa04120:	16 30       	R2 = R6;
ffa04122:	0f 30       	R1 = R7;
ffa04124:	ff e3 30 eb 	CALL 0xffa01784 <_strprintf_int>;
ffa04128:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b58(-7337128) */
ffa0412c:	0f 30       	R1 = R7;
ffa0412e:	02 e1 6c 0b 	R2.L = 0xb6c;		/* (2924)	R2=0xff900b6c(-7337108) */
ffa04132:	ff e3 c3 e9 	CALL 0xffa014b8 <_strcpy_>;
ffa04136:	0f 30       	R1 = R7;
ffa04138:	15 30       	R2 = R5;
ffa0413a:	ff e3 25 eb 	CALL 0xffa01784 <_strprintf_int>;
ffa0413e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b6c(-7337108) */
ffa04142:	02 e1 7c 0b 	R2.L = 0xb7c;		/* (2940)	R2=0xff900b7c(-7337092) */
ffa04146:	0f 30       	R1 = R7;
ffa04148:	ff e3 b8 e9 	CALL 0xffa014b8 <_strcpy_>;
ffa0414c:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0414e:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa04150:	16 08       	CC = R6 == R2;
ffa04152:	e0 17       	IF !CC JUMP 0xffa04112 <_httpResp+0x2aa> (BP);
ffa04154:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa04158:	0f 30       	R1 = R7;
ffa0415a:	02 e1 88 0b 	R2.L = 0xb88;		/* (2952)	R2=0xff900b88(-7337080) */
ffa0415e:	ff e3 ad e9 	CALL 0xffa014b8 <_strcpy_>;
ffa04162:	f0 b9       	R0 = [FP -0x4];
ffa04164:	9e 2e       	JUMP.S 0xffa03ea0 <_httpResp+0x38>;
ffa04166:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04168:	4f 30       	R1 = FP;
ffa0416a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b88(-7337080) */
ffa0416e:	f0 bb       	[FP -0x4] = R0;
ffa04170:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa04172:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa04176:	02 e1 88 0a 	R2.L = 0xa88;		/* (2696)	R2=0xff900a88(-7337336) */
ffa0417a:	ff e3 9f e9 	CALL 0xffa014b8 <_strcpy_>;
ffa0417e:	f0 b9       	R0 = [FP -0x4];
ffa04180:	90 2e       	JUMP.S 0xffa03ea0 <_httpResp+0x38>;
ffa04182:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa04186:	00 e1 cc 0a 	R0.L = 0xacc;		/* (2764)	R0=0xff900acc(-7337268) */
ffa0418a:	0e 30       	R1 = R6;
ffa0418c:	15 30       	R2 = R5;
ffa0418e:	ff e3 03 ea 	CALL 0xffa01594 <_substr>;
ffa04192:	00 0c       	CC = R0 == 0x0;
ffa04194:	08 1c       	IF CC JUMP 0xffa041a4 <_httpResp+0x33c> (BP);
ffa04196:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa0419a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0419c:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa041a0:	10 9b       	B[P2] = R0;
ffa041a2:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa041a4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa041a8:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa041ac:	0e 30       	R1 = R6;
ffa041ae:	15 30       	R2 = R5;
ffa041b0:	ff e3 f2 e9 	CALL 0xffa01594 <_substr>;
ffa041b4:	00 0c       	CC = R0 == 0x0;
ffa041b6:	05 1f       	IF CC JUMP 0xffa03fc0 <_httpResp+0x158> (BP);
ffa041b8:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa041bc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa041be:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa041c2:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa041c4:	10 9b       	B[P2] = R0;
ffa041c6:	fd 2e       	JUMP.S 0xffa03fc0 <_httpResp+0x158>;
ffa041c8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa041cc:	00 e1 cc 0a 	R0.L = 0xacc;		/* (2764)	R0=0xff900acc(-7337268) */
ffa041d0:	0e 30       	R1 = R6;
ffa041d2:	15 30       	R2 = R5;
ffa041d4:	ff e3 e0 e9 	CALL 0xffa01594 <_substr>;
ffa041d8:	00 0c       	CC = R0 == 0x0;
ffa041da:	61 14       	IF !CC JUMP 0xffa0429c <_httpResp+0x434> (BP);
ffa041dc:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa041de:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900acc(-7337268) */
ffa041e2:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa041e6:	0e 30       	R1 = R6;
ffa041e8:	15 30       	R2 = R5;
ffa041ea:	ff e3 d5 e9 	CALL 0xffa01594 <_substr>;
ffa041ee:	00 0c       	CC = R0 == 0x0;
ffa041f0:	de 1e       	IF CC JUMP 0xffa03fac <_httpResp+0x144> (BP);
ffa041f2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa041f6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa041f8:	0a e1 cc 0b 	P2.L = 0xbcc;		/* (3020)	P2=0xff900bcc <_g_streamEnabled> */
ffa041fc:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa041fe:	10 9b       	B[P2] = R0;
ffa04200:	d6 2e       	JUMP.S 0xffa03fac <_httpResp+0x144>;
ffa04202:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04204:	06 50       	R0 = R6 + R0;
ffa04206:	ff e3 e7 ea 	CALL 0xffa017d4 <_atoi>;
ffa0420a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bcc <_g_streamEnabled> */
ffa0420e:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetDataDestIP> */
ffa04212:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04214:	11 91       	R1 = [P2];
ffa04216:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa0421a:	51 54       	R1 = R1 & R2;
ffa0421c:	c0 4f       	R0 <<= 0x18;
ffa0421e:	41 50       	R1 = R1 + R0;
ffa04220:	11 93       	[P2] = R1;
ffa04222:	5e 2e       	JUMP.S 0xffa03ede <_httpResp+0x76>;
ffa04224:	86 51       	R6 = R6 + R0;
ffa04226:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04228:	45 53       	R5 = R5 - R0;
ffa0422a:	06 30       	R0 = R6;
ffa0422c:	ff e3 d4 ea 	CALL 0xffa017d4 <_atoi>;
ffa04230:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e7c <_NetDataDestIP> */
ffa04234:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetDataDestIP> */
ffa04238:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0423a:	11 91       	R1 = [P2];
ffa0423c:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa04240:	40 43       	R0 = R0.B (Z);
ffa04242:	51 54       	R1 = R1 & R2;
ffa04244:	40 4f       	R0 <<= 0x8;
ffa04246:	41 50       	R1 = R1 + R0;
ffa04248:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0424a:	11 93       	[P2] = R1;
ffa0424c:	f7 2e       	JUMP.S 0xffa0403a <_httpResp+0x1d2>;
ffa0424e:	86 51       	R6 = R6 + R0;
ffa04250:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04252:	45 53       	R5 = R5 - R0;
ffa04254:	06 30       	R0 = R6;
ffa04256:	ff e3 bf ea 	CALL 0xffa017d4 <_atoi>;
ffa0425a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e7c <_NetDataDestIP> */
ffa0425e:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetDataDestIP> */
ffa04262:	11 91       	R1 = [P2];
ffa04264:	41 4d       	R1 >>>= 0x8;
ffa04266:	41 4f       	R1 <<= 0x8;
ffa04268:	40 43       	R0 = R0.B (Z);
ffa0426a:	08 50       	R0 = R0 + R1;
ffa0426c:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0426e:	10 93       	[P2] = R0;
ffa04270:	db 2e       	JUMP.S 0xffa04026 <_httpResp+0x1be>;
ffa04272:	86 51       	R6 = R6 + R0;
ffa04274:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04276:	45 53       	R5 = R5 - R0;
ffa04278:	06 30       	R0 = R6;
ffa0427a:	ff e3 ad ea 	CALL 0xffa017d4 <_atoi>;
ffa0427e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e7c <_NetDataDestIP> */
ffa04282:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetDataDestIP> */
ffa04286:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04288:	11 91       	R1 = [P2];
ffa0428a:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa0428e:	40 43       	R0 = R0.B (Z);
ffa04290:	51 54       	R1 = R1 & R2;
ffa04292:	80 4f       	R0 <<= 0x10;
ffa04294:	41 50       	R1 = R1 + R0;
ffa04296:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04298:	11 93       	[P2] = R1;
ffa0429a:	da 2e       	JUMP.S 0xffa0404e <_httpResp+0x1e6>;
ffa0429c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e7c <_NetDataDestIP> */
ffa042a0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa042a2:	0a e1 cc 0b 	P2.L = 0xbcc;		/* (3020)	P2=0xff900bcc <_g_streamEnabled> */
ffa042a6:	10 9b       	B[P2] = R0;
ffa042a8:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bcc */
ffa042ac:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa042b0:	10 91       	R0 = [P2];
ffa042b2:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa042b4:	22 6c       	P2 += 0x4;		/* (  4) */
ffa042b6:	10 93       	[P2] = R0;
ffa042b8:	93 2f       	JUMP.S 0xffa041de <_httpResp+0x376>;
	...

ffa042bc <_httpCollate>:
ffa042bc:	fd 05       	[--SP] = (R7:7, P5:5);
ffa042be:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e7c <_NetDataDestIP> */
ffa042c2:	0d e1 74 0f 	P5.L = 0xf74;		/* (3956)	P5=0xff900f74 <_g_httpRxed> */
ffa042c6:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa042c8:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R1 = [P5] || NOP;
ffa042cc:	29 91 00 00 
ffa042d0:	82 4f       	R2 <<= 0x10;
ffa042d2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa042d6:	51 50       	R1 = R1 + R2;
ffa042d8:	17 30       	R2 = R7;
ffa042da:	ff e3 bf e8 	CALL 0xffa01458 <_memcpy_>;
ffa042de:	28 91       	R0 = [P5];
ffa042e0:	38 50       	R0 = R0 + R7;
ffa042e2:	01 e8 00 00 	UNLINK;
ffa042e6:	28 93       	[P5] = R0;
ffa042e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa042ea:	bd 05       	(R7:7, P5:5) = [SP++];
ffa042ec:	10 00       	RTS;
	...

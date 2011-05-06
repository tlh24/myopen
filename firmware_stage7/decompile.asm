
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
ffa00178:	60 25       	JUMP.S 0xffa00c38 <_main>;
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
ffa003f6:	00 e3 4d 07 	CALL 0xffa01290 <_printf_int>;
ffa003fa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa003fe:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa00402:	00 e3 2b 06 	CALL 0xffa01058 <_uart_str>;
ffa00406:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900508(-7338744) */
ffa0040a:	0d 30       	R1 = R5;
ffa0040c:	00 e1 14 00 	R0.L = 0x14;		/* ( 20)	R0=0xff900014(-7340012) */
ffa00410:	00 e3 8e 06 	CALL 0xffa0112c <_printf_hex_byte>;
ffa00414:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900014(-7340012) */
ffa00418:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa0041c:	00 e3 1e 06 	CALL 0xffa01058 <_uart_str>;
ffa00420:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900508(-7338744) */
ffa00424:	00 e1 20 00 	R0.L = 0x20;		/* ( 32)	R0=0xff900020(-7340000) */
ffa00428:	0f 30       	R1 = R7;
ffa0042a:	00 e3 81 06 	CALL 0xffa0112c <_printf_hex_byte>;
ffa0042e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa00432:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00436:	2f 30       	R5 = R7;
ffa00438:	00 e3 10 06 	CALL 0xffa01058 <_uart_str>;
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
ffa004b8:	00 e3 ec 06 	CALL 0xffa01290 <_printf_int>;
ffa004bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002c(-7339988) */
ffa004c0:	ff 42       	R7 = R7.L (Z);
ffa004c2:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa004c6:	00 e3 c9 05 	CALL 0xffa01058 <_uart_str>;
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
ffa00976:	00 e3 db 03 	CALL 0xffa0112c <_printf_hex_byte>;
ffa0097a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900044(-7339964) */
ffa0097e:	21 99       	R1 = B[P4] (Z);
ffa00980:	00 e1 54 00 	R0.L = 0x54;		/* ( 84)	R0=0xff900054(-7339948) */
ffa00984:	00 e3 d4 03 	CALL 0xffa0112c <_printf_hex_byte>;
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
ffa009a4:	00 e2 b4 03 	JUMP.L 0xffa0110c <_printf_str>;
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
ffa009c2:	00 e3 29 11 	CALL 0xffa02c14 <_bfin_EMAC_recv>;
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
ffa009e0:	00 e3 f6 07 	CALL 0xffa019cc <_htons>;
ffa009e4:	c0 42       	R0 = R0.L (Z);
ffa009e6:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa009ea:	08 08       	CC = R0 == R1;
ffa009ec:	e6 17       	IF !CC JUMP 0xffa009b8 <_eth_listen+0x8> (BP);
ffa009ee:	f0 b9       	R0 = [FP -0x4];
ffa009f0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa009f4:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa009f6:	01 e1 d4 0b 	R1.L = 0xbd4;		/* (3028)	R1=0xff900bd4 <_g_outpkt>(-7337004) */
ffa009fa:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa009fc:	00 e3 30 05 	CALL 0xffa0145c <_memcpy_>;
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
ffa00a80:	b9 60       	R1 = 0x17 (X);		/*		R1=0x17( 23) */
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
ffa00ac0:	12 1c       	IF CC JUMP 0xffa00ae4 <_getRadioPacket+0xe0> (BP);
ffa00ac2:	05 32       	P0 = R5;
ffa00ac4:	20 e1 ff 0f 	R0 = 0xfff (X);		/*		R0=0xfff(4095) */
ffa00ac8:	01 91       	R1 = [P0];
ffa00aca:	01 65       	R1 += 0x20;		/* ( 32) */
ffa00acc:	01 54       	R0 = R1 & R0;
ffa00ace:	01 67       	R1 += -0x20;		/* (-32) */
ffa00ad0:	09 32       	P1 = R1;
ffa00ad2:	00 93       	[P0] = R0;
ffa00ad4:	41 e1 80 80 	R1.H = 0x8080;		/* (-32640)	R1=0x80800017(-2139095017) */
ffa00ad8:	01 e1 80 80 	R1.L = 0x8080;		/* (-32640)	R1=0x80808080(-2139062144) */
ffa00adc:	88 a1       	R0 = [P1 + 0x18];
ffa00ade:	08 54       	R0 = R0 & R1;
ffa00ae0:	08 08       	CC = R0 == R1;
ffa00ae2:	58 18       	IF CC JUMP 0xffa00b92 <_getRadioPacket+0x18e>;
ffa00ae4:	05 32       	P0 = R5;
ffa00ae6:	21 e1 ff 01 	R1 = 0x1ff (X);		/*		R1=0x1ff(511) */
ffa00aea:	00 91       	R0 = [P0];
ffa00aec:	08 0a       	CC = R0 <= R1 (IU);
ffa00aee:	4e 18       	IF CC JUMP 0xffa00b8a <_getRadioPacket+0x186>;
ffa00af0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00af4:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00af8:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa00afc:	10 97       	W[P2] = R0;
ffa00afe:	21 e1 e2 00 	R1 = 0xe2 (X);		/*		R1=0xe2(226) */
ffa00b02:	e0 b9       	R0 = [FP -0x8];
ffa00b04:	ff e3 ee fb 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00b08:	05 32       	P0 = R5;
ffa00b0a:	4f 30       	R1 = FP;
ffa00b0c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa00b0e:	00 91       	R0 = [P0];
ffa00b10:	20 64       	R0 += 0x4;		/* (  4) */
ffa00b12:	00 e3 95 0c 	CALL 0xffa0243c <_udp_packet_setup>;
ffa00b16:	08 32       	P1 = R0;
ffa00b18:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa00b1c:	00 0d       	CC = R0 <= 0x0;
ffa00b1e:	84 18       	IF CC JUMP 0xffa00c26 <_getRadioPacket+0x222>;
ffa00b20:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900bc8 <_g_sampR> */
ffa00b24:	08 e1 a8 0b 	P0.L = 0xba8;		/* (2984)	P0=0xff900ba8 <_trptr> */
ffa00b28:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00b2c:	00 91       	R0 = [P0];
ffa00b2e:	08 93       	[P1] = R0;
ffa00b30:	0a e1 ac 0b 	P2.L = 0xbac;		/* (2988)	P2=0xff900bac <_wrptr> */
ffa00b34:	10 91       	R0 = [P2];
ffa00b36:	10 4e       	R0 >>= 0x2;
ffa00b38:	00 0c       	CC = R0 == 0x0;
ffa00b3a:	74 18       	IF CC JUMP 0xffa00c22 <_getRadioPacket+0x21e>;
ffa00b3c:	51 32       	P2 = P1;
ffa00b3e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00b40:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00b42:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00b44:	0d 32       	P1 = R5;
ffa00b46:	28 90       	R0 = [P5++];
ffa00b48:	10 92       	[P2++] = R0;
ffa00b4a:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00b4c:	d1 42       	R1 = R2.L (Z);
ffa00b4e:	08 91       	R0 = [P1];
ffa00b50:	10 4e       	R0 >>= 0x2;
ffa00b52:	81 09       	CC = R1 < R0 (IU);
ffa00b54:	f8 1f       	IF CC JUMP 0xffa00b44 <_getRadioPacket+0x140> (BP);
ffa00b56:	00 91       	R0 = [P0];
ffa00b58:	08 64       	R0 += 0x1;		/* (  1) */
ffa00b5a:	00 93       	[P0] = R0;
ffa00b5c:	00 e3 e2 08 	CALL 0xffa01d20 <_bfin_EMAC_send_nocopy>;
ffa00b60:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b62:	28 93       	[P5] = R0;
ffa00b64:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00b66:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00b68:	23 e1 80 00 	R3 = 0x80 (X);		/*		R3=0x80(128) */
ffa00b6c:	09 64       	R1 += 0x1;		/* (  1) */
ffa00b6e:	c8 42       	R0 = R1.L (Z);
ffa00b70:	18 08       	CC = R0 == R3;
ffa00b72:	2a 92       	[P5++] = R2;
ffa00b74:	fc 17       	IF !CC JUMP 0xffa00b6c <_getRadioPacket+0x168> (BP);
ffa00b76:	05 32       	P0 = R5;
ffa00b78:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bac(-4191316) */
ffa00b7c:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa00b80:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00b84:	10 97       	W[P2] = R0;
ffa00b86:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b88:	00 93       	[P0] = R0;
ffa00b8a:	01 e8 00 00 	UNLINK;
ffa00b8e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa00b90:	10 00       	RTS;
ffa00b92:	e0 b9       	R0 = [FP -0x8];
ffa00b94:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00b98:	ff e3 f6 fb 	CALL 0xffa00384 <_radio_set_tx>;
ffa00b9c:	24 00       	SSYNC;
ffa00b9e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00ba2:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa00ba6:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff901504 */
ffa00baa:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00bae:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa00bb2:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa00bb6:	0c e1 d4 0b 	P4.L = 0xbd4;		/* (3028)	P4=0xff900bd4 <_g_outpkt> */
ffa00bba:	14 97       	W[P2] = R4;
ffa00bbc:	5c 32       	P3 = P4;
ffa00bbe:	28 97       	W[P5] = R0;
ffa00bc0:	ff e3 f4 fa 	CALL 0xffa001a8 <_spi_delay>;
ffa00bc4:	03 6d       	P3 += 0x20;		/* ( 32) */
ffa00bc6:	00 00       	NOP;
ffa00bc8:	20 98       	R0 = B[P4++] (Z);
ffa00bca:	28 97       	W[P5] = R0;
ffa00bcc:	ff e3 ee fa 	CALL 0xffa001a8 <_spi_delay>;
ffa00bd0:	5c 08       	CC = P4 == P3;
ffa00bd2:	fa 17       	IF !CC JUMP 0xffa00bc6 <_getRadioPacket+0x1c2> (BP);
ffa00bd4:	04 30       	R0 = R4;
ffa00bd6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00bda:	50 4a       	BITSET (R0, 0xa);		/* bit 10 */
ffa00bdc:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00be0:	10 97       	W[P2] = R0;
ffa00be2:	24 00       	SSYNC;
ffa00be4:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00be6:	50 95       	R0 = W[P2] (X);
ffa00be8:	79 e5 fa ff 	R1 = W[FP + -0xc] (X);
ffa00bec:	01 54       	R0 = R1 & R0;
ffa00bee:	c0 42       	R0 = R0.L (Z);
ffa00bf0:	00 0c       	CC = R0 == 0x0;
ffa00bf2:	0c 18       	IF CC JUMP 0xffa00c0a <_getRadioPacket+0x206>;
ffa00bf4:	6a 32       	P5 = P2;
ffa00bf6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00bf8:	ff e3 dc fe 	CALL 0xffa009b0 <_eth_listen>;
ffa00bfc:	68 95       	R0 = W[P5] (X);
ffa00bfe:	7b e5 fa ff 	R3 = W[FP + -0xc] (X);
ffa00c02:	18 54       	R0 = R0 & R3;
ffa00c04:	c0 42       	R0 = R0.L (Z);
ffa00c06:	00 0c       	CC = R0 == 0x0;
ffa00c08:	f7 17       	IF !CC JUMP 0xffa00bf6 <_getRadioPacket+0x1f2> (BP);
ffa00c0a:	e0 b9       	R0 = [FP -0x8];
ffa00c0c:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00c0e:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00c12:	ff e3 e5 fa 	CALL 0xffa001dc <_spi_write_register>;
ffa00c16:	e0 b9       	R0 = [FP -0x8];
ffa00c18:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00c1c:	ff e3 86 fb 	CALL 0xffa00328 <_radio_set_rx>;
ffa00c20:	68 2f       	JUMP.S 0xffa00af0 <_getRadioPacket+0xec>;
ffa00c22:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00c24:	99 2f       	JUMP.S 0xffa00b56 <_getRadioPacket+0x152>;
ffa00c26:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00c2a:	0a e1 a8 0b 	P2.L = 0xba8;		/* (2984)	P2=0xff900ba8 <_trptr> */
ffa00c2e:	10 91       	R0 = [P2];
ffa00c30:	08 64       	R0 += 0x1;		/* (  1) */
ffa00c32:	10 93       	[P2] = R0;
ffa00c34:	a1 2f       	JUMP.S 0xffa00b76 <_getRadioPacket+0x172>;
	...

ffa00c38 <_main>:
ffa00c38:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ba8(-4191320) */
ffa00c3c:	e5 05       	[--SP] = (R7:4, P5:5);
ffa00c3e:	20 e1 9c c1 	R0 = -0x3e64 (X);		/*		R0=0xffffc19c(-15972) */
ffa00c42:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00c46:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00c4a:	10 97       	W[P2] = R0;
ffa00c4c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa00c50:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa00c52:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa00c56:	12 97       	W[P2] = R2;
ffa00c58:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa00c5c:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00c5e:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa00c62:	10 97       	W[P2] = R0;
ffa00c64:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa00c68:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa00c6a:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa00c6e:	10 97       	W[P2] = R0;
ffa00c70:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa00c74:	a2 6f       	P2 += -0xc;		/* (-12) */
ffa00c76:	10 97       	W[P2] = R0;
ffa00c78:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa00c7c:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00c7e:	10 97       	W[P2] = R0;
ffa00c80:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00c82:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00c84:	11 97       	W[P2] = R1;
ffa00c86:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00ba8(-4191320) */
ffa00c8a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa00c8e:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00bf4(-4191244) */
ffa00c92:	09 e1 0c 04 	P1.L = 0x40c;		/* (1036)	P1=0xffc0040c(-4193268) */
ffa00c96:	08 e1 04 04 	P0.L = 0x404;		/* (1028)	P0=0xffc00404(-4193276) */
ffa00c9a:	0a e1 10 04 	P2.L = 0x410;		/* (1040)	P2=0xffc00410(-4193264) */
ffa00c9e:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa00ca2:	01 97       	W[P0] = R1;
ffa00ca4:	11 97       	W[P2] = R1;
ffa00ca6:	08 97       	W[P1] = R0;
ffa00ca8:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00caa:	20 e1 88 00 	R0 = 0x88 (X);		/*		R0=0x88(136) */
ffa00cae:	10 97       	W[P2] = R0;
ffa00cb0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00cb2:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00cb4:	01 97       	W[P0] = R1;
ffa00cb6:	0a 97       	W[P1] = R2;
ffa00cb8:	10 97       	W[P2] = R0;
ffa00cba:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00cbc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900410 */
ffa00cc0:	b8 4f       	R0 <<= 0x17;
ffa00cc2:	0a e1 f4 0d 	P2.L = 0xdf4;		/* (3572)	P2=0xff900df4 <_printf_temp> */
ffa00cc6:	10 93       	[P2] = R0;
ffa00cc8:	20 e1 01 e0 	R0 = -0x1fff (X);		/*		R0=0xffffe001(-8191) */
ffa00ccc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900df4 <_printf_temp> */
ffa00cd0:	0a e1 f8 0d 	P2.L = 0xdf8;		/* (3576)	P2=0xff900df8 <_printf_out> */
ffa00cd4:	50 4f       	R0 <<= 0xa;
ffa00cd6:	10 93       	[P2] = R0;
ffa00cd8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90e001(-7282687) */
ffa00cdc:	21 e1 80 01 	R1 = 0x180 (X);		/*		R1=0x180(384) */
ffa00ce0:	00 e1 7c 00 	R0.L = 0x7c;		/* (124)	R0=0xff90007c(-7339908) */
ffa00ce4:	00 e3 d6 02 	CALL 0xffa01290 <_printf_int>;
ffa00ce8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa00cec:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00cf0:	00 e3 0e 02 	CALL 0xffa0110c <_printf_str>;
ffa00cf4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa00cf8:	00 e1 8c 00 	R0.L = 0x8c;		/* (140)	R0=0xff90008c(-7339892) */
ffa00cfc:	00 e3 08 02 	CALL 0xffa0110c <_printf_str>;
ffa00d00:	49 e1 40 00 	P1.H = 0x40;		/* ( 64)	P1=0x40040c */
ffa00d04:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa00d06:	22 e1 ca de 	R2 = -0x2136 (X);		/*		R2=0xffffdeca(-8502) */
ffa00d0a:	23 e1 ad fb 	R3 = -0x453 (X);		/*		R3=0xfffffbad(-1107) */
ffa00d0e:	20 e1 ed c0 	R0 = -0x3f13 (X);		/*		R0=0xffffc0ed(-16147) */
ffa00d12:	21 e1 be ba 	R1 = -0x4542 (X);		/*		R1=0xffffbabe(-17730) */
ffa00d16:	09 e1 00 00 	P1.L = 0x0;		/* (  0)	P1=0x400000 */
ffa00d1a:	b2 e0 06 10 	LSETUP(0xffa00d1e <_main+0xe6>, 0xffa00d26 <_main+0xee>) LC1 = P1;
ffa00d1e:	12 97       	W[P2] = R2;
ffa00d20:	53 b4       	W[P2 + 0x2] = R3;
ffa00d22:	90 b4       	W[P2 + 0x4] = R0;
ffa00d24:	d1 b4       	W[P2 + 0x6] = R1;
ffa00d26:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00d28:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00d2a:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00d2c:	02 20       	JUMP.S 0xffa00d30 <_main+0xf8>;
ffa00d2e:	45 6c       	P5 += 0x8;		/* (  8) */
ffa00d30:	2f 95       	R7 = W[P5] (Z);
ffa00d32:	80 e1 ca de 	R0 = 0xdeca (Z);		/*		R0=0xdeca(57034) */
ffa00d36:	07 08       	CC = R7 == R0;
ffa00d38:	15 18       	IF CC JUMP 0xffa00d62 <_main+0x12a>;
ffa00d3a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90deca(-7282998) */
ffa00d3e:	0e 30       	R1 = R6;
ffa00d40:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00d44:	00 e3 4a 02 	CALL 0xffa011d8 <_printf_hex>;
ffa00d48:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00d4c:	00 e1 ac 00 	R0.L = 0xac;		/* (172)	R0=0xff9000ac(-7339860) */
ffa00d50:	0f 30       	R1 = R7;
ffa00d52:	00 e3 43 02 	CALL 0xffa011d8 <_printf_hex>;
ffa00d56:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000ac(-7339860) */
ffa00d5a:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00d5e:	00 e3 d7 01 	CALL 0xffa0110c <_printf_str>;
ffa00d62:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa00d64:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa00d68:	08 08       	CC = R0 == R1;
ffa00d6a:	08 18       	IF CC JUMP 0xffa00d7a <_main+0x142>;
ffa00d6c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa00d70:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00d74:	0e 30       	R1 = R6;
ffa00d76:	00 e3 31 02 	CALL 0xffa011d8 <_printf_hex>;
ffa00d7a:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa00d7c:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa00d80:	08 08       	CC = R0 == R1;
ffa00d82:	08 18       	IF CC JUMP 0xffa00d92 <_main+0x15a>;
ffa00d84:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00d88:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00d8c:	0e 30       	R1 = R6;
ffa00d8e:	00 e3 25 02 	CALL 0xffa011d8 <_printf_hex>;
ffa00d92:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa00d94:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa00d98:	08 08       	CC = R0 == R1;
ffa00d9a:	08 18       	IF CC JUMP 0xffa00daa <_main+0x172>;
ffa00d9c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00da0:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00da4:	0e 30       	R1 = R6;
ffa00da6:	00 e3 19 02 	CALL 0xffa011d8 <_printf_hex>;
ffa00daa:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa00dae:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa00db2:	55 08       	CC = P5 == P2;
ffa00db4:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00db6:	bc 17       	IF !CC JUMP 0xffa00d2e <_main+0xf6> (BP);
ffa00db8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00dbc:	00 e1 b4 00 	R0.L = 0xb4;		/* (180)	R0=0xff9000b4(-7339852) */
ffa00dc0:	00 e3 a6 01 	CALL 0xffa0110c <_printf_str>;
ffa00dc4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0fff8(-4128776) */
ffa00dc8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00dca:	0a e1 84 06 	P2.L = 0x684;		/* (1668)	P2=0xffc00684(-4192636) */
ffa00dce:	10 97       	W[P2] = R0;
ffa00dd0:	24 00       	SSYNC;
ffa00dd2:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800684 */
ffa00dd6:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00dda:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00ddc:	16 93       	[P2] = R6;
ffa00dde:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa00de2:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa00de6:	0a e1 50 06 	P2.L = 0x650;		/* (1616)	P2=0xffc00650(-4192688) */
ffa00dea:	10 97       	W[P2] = R0;
ffa00dec:	20 e1 09 3d 	R0 = 0x3d09 (X);		/*		R0=0x3d09(15625) */
ffa00df0:	18 4f       	R0 <<= 0x3;
ffa00df2:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00df4:	10 93       	[P2] = R0;
ffa00df6:	80 e1 24 f4 	R0 = 0xf424 (Z);		/*		R0=0xf424(62500) */
ffa00dfa:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00dfc:	10 93       	[P2] = R0;
ffa00dfe:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00e00:	50 95       	R0 = W[P2] (X);
ffa00e02:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa00e04:	10 97       	W[P2] = R0;
ffa00e06:	00 e3 c3 0c 	CALL 0xffa0278c <_bfin_EMAC_init>;
ffa00e0a:	00 0c       	CC = R0 == 0x0;
ffa00e0c:	20 30       	R4 = R0;
ffa00e0e:	22 19       	IF CC JUMP 0xffa01052 <_main+0x41a>;
ffa00e10:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00650(-4192688) */
ffa00e14:	20 e1 87 38 	R0 = 0x3887 (X);		/*		R0=0x3887(14471) */
ffa00e18:	0a e1 00 32 	P2.L = 0x3200;		/* (12800)	P2=0xffc03200(-4181504) */
ffa00e1c:	10 97       	W[P2] = R0;
ffa00e1e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03200(-4181504) */
ffa00e22:	20 e1 56 fe 	R0 = -0x1aa (X);		/*		R0=0xfffffe56(-426) */
ffa00e26:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa00e2a:	10 97       	W[P2] = R0;
ffa00e2c:	20 e1 a9 01 	R0 = 0x1a9 (X);		/*		R0=0x1a9(425) */
ffa00e30:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa00e32:	10 97       	W[P2] = R0;
ffa00e34:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa00e38:	20 e1 40 01 	R0 = 0x140 (X);		/*		R0=0x140(320) */
ffa00e3c:	0a e1 10 32 	P2.L = 0x3210;		/* (12816)	P2=0xffc03210(-4181488) */
ffa00e40:	10 97       	W[P2] = R0;
ffa00e42:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03210(-4181488) */
ffa00e46:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa00e4a:	50 95       	R0 = W[P2] (X);
ffa00e4c:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00e4e:	10 97       	W[P2] = R0;
ffa00e50:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00e52:	50 95       	R0 = W[P2] (X);
ffa00e54:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa00e56:	10 97       	W[P2] = R0;
ffa00e58:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa00e5c:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00e60:	50 95       	R0 = W[P2] (X);
ffa00e62:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00e64:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00000(-4194304) */
ffa00e68:	10 97       	W[P2] = R0;
ffa00e6a:	09 e1 00 09 	P1.L = 0x900;		/* (2304)	P1=0xffc00900(-4192000) */
ffa00e6e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00e70:	08 97       	W[P1] = R0;
ffa00e72:	24 00       	SSYNC;
ffa00e74:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903204 */
ffa00e78:	0a e1 c8 0b 	P2.L = 0xbc8;		/* (3016)	P2=0xff900bc8 <_g_sampR> */
ffa00e7c:	16 93       	[P2] = R6;
ffa00e7e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bc8 <_g_sampR> */
ffa00e82:	0a e1 b0 0b 	P2.L = 0xbb0;		/* (2992)	P2=0xff900bb0 <_g_sampW> */
ffa00e86:	16 93       	[P2] = R6;
ffa00e88:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb0 <_g_sampW> */
ffa00e8c:	0a e1 d0 0b 	P2.L = 0xbd0;		/* (3024)	P2=0xff900bd0 <_g_sampOff> */
ffa00e90:	16 93       	[P2] = R6;
ffa00e92:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bd0 <_g_sampOff> */
ffa00e96:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00e98:	0a e1 a4 0b 	P2.L = 0xba4;		/* (2980)	P2=0xff900ba4 <_g_sampMode> */
ffa00e9c:	10 9b       	B[P2] = R0;
ffa00e9e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00ea0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba4 <_g_sampMode> */
ffa00ea4:	d8 4f       	R0 <<= 0x1b;
ffa00ea6:	0a e1 b4 0b 	P2.L = 0xbb4;		/* (2996)	P2=0xff900bb4 <_g_sampInc> */
ffa00eaa:	10 93       	[P2] = R0;
ffa00eac:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb4 <_g_sampInc> */
ffa00eb0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00eb2:	0a e1 c4 0b 	P2.L = 0xbc4;		/* (3012)	P2=0xff900bc4 <_g_sampCh> */
ffa00eb6:	10 9b       	B[P2] = R0;
ffa00eb8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bc4(-4191292) */
ffa00ebc:	e8 60       	R0 = 0x1d (X);		/*		R0=0x1d( 29) */
ffa00ebe:	0a e1 08 09 	P2.L = 0x908;		/* (2312)	P2=0xffc00908(-4191992) */
ffa00ec2:	10 97       	W[P2] = R0;
ffa00ec4:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa00ec6:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00ec8:	10 97       	W[P2] = R0;
ffa00eca:	b8 60       	R0 = 0x17 (X);		/*		R0=0x17( 23) */
ffa00ecc:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00ece:	10 97       	W[P2] = R0;
ffa00ed0:	20 e1 03 4e 	R0 = 0x4e03 (X);		/*		R0=0x4e03(19971) */
ffa00ed4:	08 97       	W[P1] = R0;
ffa00ed6:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe00908(-2094840) */
ffa00eda:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa04e03(-6271485) */
ffa00ede:	00 e1 44 05 	R0.L = 0x544;		/* (1348)	R0=0xffa00544 <_audio_out>(-6290108) */
ffa00ee2:	0a e1 1c 20 	P2.L = 0x201c;		/* (8220)	P2=0xffe0201c(-2088932) */
ffa00ee6:	10 93       	[P2] = R0;
ffa00ee8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0201c(-4186084) */
ffa00eec:	27 e1 00 02 	R7 = 0x200 (X);		/*		R7=0x200(512) */
ffa00ef0:	0a e1 0c 01 	P2.L = 0x10c;		/* (268)	P2=0xffc0010c(-4194036) */
ffa00ef4:	17 93       	[P2] = R7;
ffa00ef6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90010c */
ffa00efa:	0a e1 ac 0b 	P2.L = 0xbac;		/* (2988)	P2=0xff900bac <_wrptr> */
ffa00efe:	16 93       	[P2] = R6;
ffa00f00:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bac <_wrptr> */
ffa00f04:	0a e1 a8 0b 	P2.L = 0xba8;		/* (2984)	P2=0xff900ba8 <_trptr> */
ffa00f08:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900544(-7338684) */
ffa00f0c:	16 93       	[P2] = R6;
ffa00f0e:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa00f12:	00 e3 fd 00 	CALL 0xffa0110c <_printf_str>;
ffa00f16:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ba8(-4191320) */
ffa00f1a:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa00f1e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00f22:	10 97       	W[P2] = R0;
ffa00f24:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa00f28:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00f2a:	10 97       	W[P2] = R0;
ffa00f2c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00f30:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa00f32:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00f36:	10 97       	W[P2] = R0;
ffa00f38:	24 00       	SSYNC;
ffa00f3a:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa00f3c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00f3e:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa00f40:	ff e3 84 fa 	CALL 0xffa00448 <_radio_init>;
ffa00f44:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa00f46:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00f48:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa00f4c:	ff e3 7e fa 	CALL 0xffa00448 <_radio_init>;
ffa00f50:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00f52:	07 30       	R0 = R7;
ffa00f54:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa00f58:	ff e3 78 fa 	CALL 0xffa00448 <_radio_init>;
ffa00f5c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa00f5e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00f60:	ff e3 e4 f9 	CALL 0xffa00328 <_radio_set_rx>;
ffa00f64:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa00f68:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00f6a:	ff e3 df f9 	CALL 0xffa00328 <_radio_set_rx>;
ffa00f6e:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa00f72:	07 30       	R0 = R7;
ffa00f74:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00f78:	46 e1 62 10 	R6.H = 0x1062;		/* (4194)	R6=0x10620000(274857984) */
ffa00f7c:	ff e3 d6 f9 	CALL 0xffa00328 <_radio_set_rx>;
ffa00f80:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa00f82:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa00f84:	0d e1 00 07 	P5.L = 0x700;		/* (1792)	P5=0xffc00700(-4192512) */
ffa00f88:	06 e1 d3 4d 	R6.L = 0x4dd3;		/* (19923)	R6=0x10624dd3(274877907) */
ffa00f8c:	04 30       	R0 = R4;
ffa00f8e:	ff e3 11 fd 	CALL 0xffa009b0 <_eth_listen>;
ffa00f92:	68 95       	R0 = W[P5] (X);
ffa00f94:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa00f96:	42 18       	IF CC JUMP 0xffa0101a <_main+0x3e2>;
ffa00f98:	00 00       	NOP;
ffa00f9a:	00 00       	NOP;
ffa00f9c:	00 00       	NOP;
ffa00f9e:	68 95       	R0 = W[P5] (X);
ffa00fa0:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00fa2:	45 18       	IF CC JUMP 0xffa0102c <_main+0x3f4>;
ffa00fa4:	00 00       	NOP;
ffa00fa6:	00 00       	NOP;
ffa00fa8:	00 00       	NOP;
ffa00faa:	68 95       	R0 = W[P5] (X);
ffa00fac:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa00fae:	49 18       	IF CC JUMP 0xffa01040 <_main+0x408>;
ffa00fb0:	20 e1 28 01 	R0 = 0x128 (X);		/*		R0=0x128(296) */
ffa00fb4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00fb8:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00fbc:	69 95       	R1 = W[P5] (X);
ffa00fbe:	08 54       	R0 = R0 & R1;
ffa00fc0:	21 e1 28 01 	R1 = 0x128 (X);		/*		R1=0x128(296) */
ffa00fc4:	08 08       	CC = R0 == R1;
ffa00fc6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00fc8:	38 07       	IF CC R7 = R0;
ffa00fca:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa00fce:	10 97       	W[P2] = R0;
ffa00fd0:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800708 */
ffa00fd4:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00fd8:	10 91       	R0 = [P2];
ffa00fda:	80 c0 06 18 	A1 = R0.L * R6.L (FU);
ffa00fde:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00fe2:	81 c0 06 86 	A1 += R0.H * R6.L, A0 = R0.H * R6.H (FU);
ffa00fe6:	81 c0 30 98 	A1 += R6.H * R0.L (FU);
ffa00fea:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00fee:	0b c4 00 80 	A0 += A1;
ffa00ff2:	8b c0 00 38 	R0 = A0 (FU);
ffa00ff6:	82 c6 d0 83 	R1 = R0 >> 0x6;
ffa00ffa:	0d 08       	CC = R5 == R1;
ffa00ffc:	c8 1b       	IF CC JUMP 0xffa00f8c <_main+0x354>;
ffa00ffe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa01002:	20 e1 00 80 	R0 = -0x8000 (X);		/*		R0=0xffff8000(-32768) */
ffa01006:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa0100a:	10 97       	W[P2] = R0;
ffa0100c:	04 30       	R0 = R4;
ffa0100e:	29 30       	R5 = R1;
ffa01010:	ff e3 d0 fc 	CALL 0xffa009b0 <_eth_listen>;
ffa01014:	68 95       	R0 = W[P5] (X);
ffa01016:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01018:	c2 17       	IF !CC JUMP 0xffa00f9c <_main+0x364> (BP);
ffa0101a:	7a 43       	R2 = R7.B (Z);
ffa0101c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0101e:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa01020:	ff e3 f2 fc 	CALL 0xffa00a04 <_getRadioPacket>;
ffa01024:	68 95       	R0 = W[P5] (X);
ffa01026:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01028:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0102a:	bf 17       	IF !CC JUMP 0xffa00fa8 <_main+0x370> (BP);
ffa0102c:	7a 43       	R2 = R7.B (Z);
ffa0102e:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01032:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa01034:	ff e3 e8 fc 	CALL 0xffa00a04 <_getRadioPacket>;
ffa01038:	68 95       	R0 = W[P5] (X);
ffa0103a:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa0103c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0103e:	b9 17       	IF !CC JUMP 0xffa00fb0 <_main+0x378> (BP);
ffa01040:	7a 43       	R2 = R7.B (Z);
ffa01042:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01046:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa0104a:	ff e3 dd fc 	CALL 0xffa00a04 <_getRadioPacket>;
ffa0104e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01050:	b0 2f       	JUMP.S 0xffa00fb0 <_main+0x378>;
ffa01052:	00 e3 6f 0d 	CALL 0xffa02b30 <_DHCP_req>;
ffa01056:	dd 2e       	JUMP.S 0xffa00e10 <_main+0x1d8>;

ffa01058 <_uart_str>:
ffa01058:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa0105c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01060:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa01064:	08 32       	P1 = R0;
ffa01066:	50 95       	R0 = W[P2] (X);
ffa01068:	c0 42       	R0 = R0.L (Z);
ffa0106a:	08 0c       	CC = R0 == 0x1;
ffa0106c:	06 18       	IF CC JUMP 0xffa01078 <_uart_str+0x20>;
ffa0106e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01070:	02 30       	R0 = R2;
ffa01072:	01 e8 00 00 	UNLINK;
ffa01076:	10 00       	RTS;
ffa01078:	48 99       	R0 = B[P1] (X);
ffa0107a:	01 43       	R1 = R0.B (X);
ffa0107c:	01 0c       	CC = R1 == 0x0;
ffa0107e:	f8 1b       	IF CC JUMP 0xffa0106e <_uart_str+0x16>;
ffa01080:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa01084:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01086:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01088:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa0108c:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa01090:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa01092:	b2 e0 1c 00 	LSETUP(0xffa01096 <_uart_str+0x3e>, 0xffa010ca <_uart_str+0x72>) LC1 = P0;
ffa01096:	19 08       	CC = R1 == R3;
ffa01098:	1b 18       	IF CC JUMP 0xffa010ce <_uart_str+0x76>;
ffa0109a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa0109e:	00 43       	R0 = R0.B (X);
ffa010a0:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa010a4:	10 97       	W[P2] = R0;
ffa010a6:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa010a8:	50 95       	R0 = W[P2] (X);
ffa010aa:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa010ac:	0a 10       	IF !CC JUMP 0xffa010c0 <_uart_str+0x68>;
ffa010ae:	00 00       	NOP;
ffa010b0:	00 00       	NOP;
ffa010b2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa010b6:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa010ba:	50 95       	R0 = W[P2] (X);
ffa010bc:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa010be:	f9 1f       	IF CC JUMP 0xffa010b0 <_uart_str+0x58> (BP);
ffa010c0:	48 99       	R0 = B[P1] (X);
ffa010c2:	01 43       	R1 = R0.B (X);
ffa010c4:	01 0c       	CC = R1 == 0x0;
ffa010c6:	0a 64       	R2 += 0x1;		/* (  1) */
ffa010c8:	d4 1b       	IF CC JUMP 0xffa01070 <_uart_str+0x18>;
ffa010ca:	09 6c       	P1 += 0x1;		/* (  1) */
ffa010cc:	d2 2f       	JUMP.S 0xffa01070 <_uart_str+0x18>;
ffa010ce:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa010d0:	20 9f       	W[I0] = R0.L;
ffa010d2:	02 20       	JUMP.S 0xffa010d6 <_uart_str+0x7e>;
ffa010d4:	00 00       	NOP;
ffa010d6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa010da:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa010de:	50 95       	R0 = W[P2] (X);
ffa010e0:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa010e2:	f9 1f       	IF CC JUMP 0xffa010d4 <_uart_str+0x7c> (BP);
ffa010e4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa010e8:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa010ea:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa010ee:	10 97       	W[P2] = R0;
ffa010f0:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa010f2:	50 95       	R0 = W[P2] (X);
ffa010f4:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa010f6:	e5 13       	IF !CC JUMP 0xffa010c0 <_uart_str+0x68>;
ffa010f8:	00 00       	NOP;
ffa010fa:	00 00       	NOP;
ffa010fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa01100:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa01104:	50 95       	R0 = W[P2] (X);
ffa01106:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01108:	f9 1f       	IF CC JUMP 0xffa010fa <_uart_str+0xa2> (BP);
ffa0110a:	db 2f       	JUMP.S 0xffa010c0 <_uart_str+0x68>;

ffa0110c <_printf_str>:
ffa0110c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01110:	01 e8 00 00 	UNLINK;
ffa01114:	ff e2 a2 ff 	JUMP.L 0xffa01058 <_uart_str>;

ffa01118 <_printf_newline>:
ffa01118:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0111c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa01120:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa01124:	01 e8 00 00 	UNLINK;
ffa01128:	ff e2 98 ff 	JUMP.L 0xffa01058 <_uart_str>;

ffa0112c <_printf_hex_byte>:
ffa0112c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0112e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01132:	28 32       	P5 = R0;
ffa01134:	39 30       	R7 = R1;
ffa01136:	00 e3 b1 01 	CALL 0xffa01498 <_strlen_>;
ffa0113a:	10 30       	R2 = R0;
ffa0113c:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa01140:	02 09       	CC = R2 <= R0;
ffa01142:	41 10       	IF !CC JUMP 0xffa011c4 <_printf_hex_byte+0x98>;
ffa01144:	02 0d       	CC = R2 <= 0x0;
ffa01146:	44 18       	IF CC JUMP 0xffa011ce <_printf_hex_byte+0xa2>;
ffa01148:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa0114c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0114e:	08 e1 f8 0d 	P0.L = 0xdf8;		/* (3576)	P0=0xff900df8 <_printf_out> */
ffa01152:	09 32       	P1 = R1;
ffa01154:	42 91       	P2 = [P0];
ffa01156:	09 64       	R1 += 0x1;		/* (  1) */
ffa01158:	68 98       	R0 = B[P5++] (X);
ffa0115a:	0a 08       	CC = R2 == R1;
ffa0115c:	8a 5a       	P2 = P2 + P1;
ffa0115e:	10 9b       	B[P2] = R0;
ffa01160:	f9 17       	IF !CC JUMP 0xffa01152 <_printf_hex_byte+0x26> (BP);
ffa01162:	0a 32       	P1 = R2;
ffa01164:	42 91       	P2 = [P0];
ffa01166:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01168:	22 32       	P4 = R2;
ffa0116a:	79 43       	R1 = R7.B (Z);
ffa0116c:	8a 5a       	P2 = P2 + P1;
ffa0116e:	10 9b       	B[P2] = R0;
ffa01170:	42 91       	P2 = [P0];
ffa01172:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa01174:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01178:	11 6c       	P1 += 0x2;		/* (  2) */
ffa0117a:	a2 5a       	P2 = P2 + P4;
ffa0117c:	10 9b       	B[P2] = R0;
ffa0117e:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa01180:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa01182:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa01184:	01 30       	R0 = R1;
ffa01186:	10 40       	R0 >>>= R2;
ffa01188:	18 54       	R0 = R0 & R3;
ffa0118a:	38 09       	CC = R0 <= R7;
ffa0118c:	1a 1c       	IF CC JUMP 0xffa011c0 <_printf_hex_byte+0x94> (BP);
ffa0118e:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01190:	42 91       	P2 = [P0];
ffa01192:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa01194:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900700 */
ffa01198:	22 0c       	CC = R2 == -0x4;
ffa0119a:	8a 5a       	P2 = P2 + P1;
ffa0119c:	0d e1 f8 0d 	P5.L = 0xdf8;		/* (3576)	P5=0xff900df8 <_printf_out> */
ffa011a0:	10 9b       	B[P2] = R0;
ffa011a2:	09 6c       	P1 += 0x1;		/* (  1) */
ffa011a4:	f0 17       	IF !CC JUMP 0xffa01184 <_printf_hex_byte+0x58> (BP);
ffa011a6:	6a 91       	P2 = [P5];
ffa011a8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa011aa:	94 5a       	P2 = P4 + P2;
ffa011ac:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa011b0:	28 91       	R0 = [P5];
ffa011b2:	ff e3 53 ff 	CALL 0xffa01058 <_uart_str>;
ffa011b6:	01 e8 00 00 	UNLINK;
ffa011ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa011bc:	bc 05       	(R7:7, P5:4) = [SP++];
ffa011be:	10 00       	RTS;
ffa011c0:	80 65       	R0 += 0x30;		/* ( 48) */
ffa011c2:	e7 2f       	JUMP.S 0xffa01190 <_printf_hex_byte+0x64>;
ffa011c4:	01 e8 00 00 	UNLINK;
ffa011c8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa011ca:	bc 05       	(R7:7, P5:4) = [SP++];
ffa011cc:	10 00       	RTS;
ffa011ce:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900df8 <_printf_out> */
ffa011d2:	08 e1 f8 0d 	P0.L = 0xdf8;		/* (3576)	P0=0xff900df8 <_printf_out> */
ffa011d6:	c6 2f       	JUMP.S 0xffa01162 <_printf_hex_byte+0x36>;

ffa011d8 <_printf_hex>:
ffa011d8:	fb 05       	[--SP] = (R7:7, P5:3);
ffa011da:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa011de:	28 32       	P5 = R0;
ffa011e0:	39 30       	R7 = R1;
ffa011e2:	00 e3 5b 01 	CALL 0xffa01498 <_strlen_>;
ffa011e6:	10 30       	R2 = R0;
ffa011e8:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa011ec:	02 09       	CC = R2 <= R0;
ffa011ee:	47 10       	IF !CC JUMP 0xffa0127c <_printf_hex+0xa4>;
ffa011f0:	02 0d       	CC = R2 <= 0x0;
ffa011f2:	4a 18       	IF CC JUMP 0xffa01286 <_printf_hex+0xae>;
ffa011f4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900900 */
ffa011f8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa011fa:	09 e1 f8 0d 	P1.L = 0xdf8;		/* (3576)	P1=0xff900df8 <_printf_out> */
ffa011fe:	01 32       	P0 = R1;
ffa01200:	4a 91       	P2 = [P1];
ffa01202:	09 64       	R1 += 0x1;		/* (  1) */
ffa01204:	68 98       	R0 = B[P5++] (X);
ffa01206:	0a 08       	CC = R2 == R1;
ffa01208:	82 5a       	P2 = P2 + P0;
ffa0120a:	10 9b       	B[P2] = R0;
ffa0120c:	f9 17       	IF !CC JUMP 0xffa011fe <_printf_hex+0x26> (BP);
ffa0120e:	02 32       	P0 = R2;
ffa01210:	4a 91       	P2 = [P1];
ffa01212:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01214:	1a 32       	P3 = R2;
ffa01216:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa01218:	82 5a       	P2 = P2 + P0;
ffa0121a:	10 9b       	B[P2] = R0;
ffa0121c:	4a 91       	P2 = [P1];
ffa0121e:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa01220:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01224:	10 6c       	P0 += 0x2;		/* (  2) */
ffa01226:	9a 5a       	P2 = P2 + P3;
ffa01228:	10 9b       	B[P2] = R0;
ffa0122a:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa0122c:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa0122e:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa01230:	b2 e0 10 50 	LSETUP(0xffa01234 <_printf_hex+0x5c>, 0xffa01250 <_printf_hex+0x78>) LC1 = P5;
ffa01234:	07 30       	R0 = R7;
ffa01236:	08 40       	R0 >>>= R1;
ffa01238:	10 54       	R0 = R0 & R2;
ffa0123a:	18 09       	CC = R0 <= R3;
ffa0123c:	1e 1c       	IF CC JUMP 0xffa01278 <_printf_hex+0xa0> (BP);
ffa0123e:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01240:	4a 91       	P2 = [P1];
ffa01242:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900bd4 <_g_outpkt> */
ffa01246:	0c e1 f8 0d 	P4.L = 0xdf8;		/* (3576)	P4=0xff900df8 <_printf_out> */
ffa0124a:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa0124c:	82 5a       	P2 = P2 + P0;
ffa0124e:	10 9b       	B[P2] = R0;
ffa01250:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01252:	62 91       	P2 = [P4];
ffa01254:	4b 32       	P1 = P3;
ffa01256:	49 6c       	P1 += 0x9;		/* (  9) */
ffa01258:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0125a:	8a 5a       	P2 = P2 + P1;
ffa0125c:	10 9b       	B[P2] = R0;
ffa0125e:	62 91       	P2 = [P4];
ffa01260:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01262:	8a 5a       	P2 = P2 + P1;
ffa01264:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa01268:	20 91       	R0 = [P4];
ffa0126a:	ff e3 f7 fe 	CALL 0xffa01058 <_uart_str>;
ffa0126e:	01 e8 00 00 	UNLINK;
ffa01272:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01274:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01276:	10 00       	RTS;
ffa01278:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0127a:	e3 2f       	JUMP.S 0xffa01240 <_printf_hex+0x68>;
ffa0127c:	01 e8 00 00 	UNLINK;
ffa01280:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01282:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01284:	10 00       	RTS;
ffa01286:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900df8 <_printf_out> */
ffa0128a:	09 e1 f8 0d 	P1.L = 0xdf8;		/* (3576)	P1=0xff900df8 <_printf_out> */
ffa0128e:	c0 2f       	JUMP.S 0xffa0120e <_printf_hex+0x36>;

ffa01290 <_printf_int>:
ffa01290:	f3 05       	[--SP] = (R7:6, P5:3);
ffa01292:	01 0c       	CC = R1 == 0x0;
ffa01294:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01298:	28 32       	P5 = R0;
ffa0129a:	39 30       	R7 = R1;
ffa0129c:	41 14       	IF !CC JUMP 0xffa0131e <_printf_int+0x8e> (BP);
ffa0129e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bb0 <_g_sampW> */
ffa012a2:	0b e1 f4 0d 	P3.L = 0xdf4;		/* (3572)	P3=0xff900df4 <_printf_temp> */
ffa012a6:	5a 91       	P2 = [P3];
ffa012a8:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa012aa:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa012ac:	10 9b       	B[P2] = R0;
ffa012ae:	45 30       	R0 = P5;
ffa012b0:	00 e3 f4 00 	CALL 0xffa01498 <_strlen_>;
ffa012b4:	c6 50       	R3 = R6 + R0;
ffa012b6:	10 30       	R2 = R0;
ffa012b8:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa012bc:	03 09       	CC = R3 <= R0;
ffa012be:	4e 10       	IF !CC JUMP 0xffa0135a <_printf_int+0xca>;
ffa012c0:	02 0d       	CC = R2 <= 0x0;
ffa012c2:	79 18       	IF CC JUMP 0xffa013b4 <_printf_int+0x124>;
ffa012c4:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900df8 <_printf_out> */
ffa012c8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa012ca:	08 e1 f8 0d 	P0.L = 0xdf8;		/* (3576)	P0=0xff900df8 <_printf_out> */
ffa012ce:	09 32       	P1 = R1;
ffa012d0:	42 91       	P2 = [P0];
ffa012d2:	09 64       	R1 += 0x1;		/* (  1) */
ffa012d4:	68 98       	R0 = B[P5++] (X);
ffa012d6:	0a 08       	CC = R2 == R1;
ffa012d8:	8a 5a       	P2 = P2 + P1;
ffa012da:	10 9b       	B[P2] = R0;
ffa012dc:	f9 17       	IF !CC JUMP 0xffa012ce <_printf_int+0x3e> (BP);
ffa012de:	06 0d       	CC = R6 <= 0x0;
ffa012e0:	12 18       	IF CC JUMP 0xffa01304 <_printf_int+0x74>;
ffa012e2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa012e4:	00 91       	R0 = [P0];
ffa012e6:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa012ea:	5a 91 00 00 
ffa012ee:	08 50       	R0 = R0 + R1;
ffa012f0:	08 32       	P1 = R0;
ffa012f2:	0e 52       	R0 = R6 - R1;
ffa012f4:	28 32       	P5 = R0;
ffa012f6:	09 64       	R1 += 0x1;		/* (  1) */
ffa012f8:	0e 08       	CC = R6 == R1;
ffa012fa:	aa 5a       	P2 = P2 + P5;
ffa012fc:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa01300:	08 9b       	B[P1] = R0;
ffa01302:	f1 17       	IF !CC JUMP 0xffa012e4 <_printf_int+0x54> (BP);
ffa01304:	0b 32       	P1 = R3;
ffa01306:	42 91       	P2 = [P0];
ffa01308:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0130a:	91 5a       	P2 = P1 + P2;
ffa0130c:	10 9b       	B[P2] = R0;
ffa0130e:	00 91       	R0 = [P0];
ffa01310:	ff e3 a4 fe 	CALL 0xffa01058 <_uart_str>;
ffa01314:	01 e8 00 00 	UNLINK;
ffa01318:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0131a:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0131c:	10 00       	RTS;
ffa0131e:	01 0d       	CC = R1 <= 0x0;
ffa01320:	22 18       	IF CC JUMP 0xffa01364 <_printf_int+0xd4>;
ffa01322:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df4 <_printf_temp> */
ffa01326:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01328:	0b e1 f4 0d 	P3.L = 0xdf4;		/* (3572)	P3=0xff900df4 <_printf_temp> */
ffa0132c:	05 20       	JUMP.S 0xffa01336 <_printf_int+0xa6>;
ffa0132e:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa01332:	06 08       	CC = R6 == R0;
ffa01334:	bd 1b       	IF CC JUMP 0xffa012ae <_printf_int+0x1e>;
ffa01336:	07 30       	R0 = R7;
ffa01338:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0133a:	00 e3 83 00 	CALL 0xffa01440 <_mod>;
ffa0133e:	0e 32       	P1 = R6;
ffa01340:	5a 91       	P2 = [P3];
ffa01342:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01344:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01346:	0e 64       	R6 += 0x1;		/* (  1) */
ffa01348:	8a 5a       	P2 = P2 + P1;
ffa0134a:	10 9b       	B[P2] = R0;
ffa0134c:	07 30       	R0 = R7;
ffa0134e:	00 e3 6b 00 	CALL 0xffa01424 <_div>;
ffa01352:	00 0d       	CC = R0 <= 0x0;
ffa01354:	38 30       	R7 = R0;
ffa01356:	ec 17       	IF !CC JUMP 0xffa0132e <_printf_int+0x9e> (BP);
ffa01358:	ab 2f       	JUMP.S 0xffa012ae <_printf_int+0x1e>;
ffa0135a:	01 e8 00 00 	UNLINK;
ffa0135e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01360:	b3 05       	(R7:6, P5:3) = [SP++];
ffa01362:	10 00       	RTS;
ffa01364:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01366:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa01368:	f8 4f       	R0 <<= 0x1f;
ffa0136a:	f8 53       	R7 = R0 - R7;
ffa0136c:	07 0d       	CC = R7 <= 0x0;
ffa0136e:	2c 18       	IF CC JUMP 0xffa013c6 <_printf_int+0x136>;
ffa01370:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df4 <_printf_temp> */
ffa01374:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa01376:	0b e1 f4 0d 	P3.L = 0xdf4;		/* (3572)	P3=0xff900df4 <_printf_temp> */
ffa0137a:	05 20       	JUMP.S 0xffa01384 <_printf_int+0xf4>;
ffa0137c:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa01380:	4c 08       	CC = P4 == P1;
ffa01382:	1e 18       	IF CC JUMP 0xffa013be <_printf_int+0x12e>;
ffa01384:	07 30       	R0 = R7;
ffa01386:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01388:	00 e3 5c 00 	CALL 0xffa01440 <_mod>;
ffa0138c:	5a 91       	P2 = [P3];
ffa0138e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01390:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01392:	a2 5a       	P2 = P2 + P4;
ffa01394:	10 9b       	B[P2] = R0;
ffa01396:	07 30       	R0 = R7;
ffa01398:	00 e3 46 00 	CALL 0xffa01424 <_div>;
ffa0139c:	00 0d       	CC = R0 <= 0x0;
ffa0139e:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa013a0:	38 30       	R7 = R0;
ffa013a2:	ed 17       	IF !CC JUMP 0xffa0137c <_printf_int+0xec> (BP);
ffa013a4:	74 30       	R6 = P4;
ffa013a6:	4c 32       	P1 = P4;
ffa013a8:	0e 64       	R6 += 0x1;		/* (  1) */
ffa013aa:	5a 91       	P2 = [P3];
ffa013ac:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa013ae:	8a 5a       	P2 = P2 + P1;
ffa013b0:	10 9b       	B[P2] = R0;
ffa013b2:	7e 2f       	JUMP.S 0xffa012ae <_printf_int+0x1e>;
ffa013b4:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900df8 <_printf_out> */
ffa013b8:	08 e1 f8 0d 	P0.L = 0xdf8;		/* (3576)	P0=0xff900df8 <_printf_out> */
ffa013bc:	91 2f       	JUMP.S 0xffa012de <_printf_int+0x4e>;
ffa013be:	4c 32       	P1 = P4;
ffa013c0:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa013c4:	f3 2f       	JUMP.S 0xffa013aa <_printf_int+0x11a>;
ffa013c6:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df4 <_printf_temp> */
ffa013ca:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa013cc:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa013ce:	0b e1 f4 0d 	P3.L = 0xdf4;		/* (3572)	P3=0xff900df4 <_printf_temp> */
ffa013d2:	ec 2f       	JUMP.S 0xffa013aa <_printf_int+0x11a>;

ffa013d4 <_printf_ip>:
ffa013d4:	70 05       	[--SP] = (R7:6);
ffa013d6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa013da:	39 30       	R7 = R1;
ffa013dc:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa013e0:	49 43       	R1 = R1.B (Z);
ffa013e2:	ff e3 57 ff 	CALL 0xffa01290 <_printf_int>;
ffa013e6:	06 e1 88 00 	R6.L = 0x88;		/* (136)	R6=0xff900088(-7339896) */
ffa013ea:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa013ee:	49 43       	R1 = R1.B (Z);
ffa013f0:	06 30       	R0 = R6;
ffa013f2:	ff e3 4f ff 	CALL 0xffa01290 <_printf_int>;
ffa013f6:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa013fa:	49 43       	R1 = R1.B (Z);
ffa013fc:	06 30       	R0 = R6;
ffa013fe:	c7 4e       	R7 >>= 0x18;
ffa01400:	ff e3 48 ff 	CALL 0xffa01290 <_printf_int>;
ffa01404:	0f 30       	R1 = R7;
ffa01406:	06 30       	R0 = R6;
ffa01408:	ff e3 44 ff 	CALL 0xffa01290 <_printf_int>;
ffa0140c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa01410:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa01414:	ff e3 7c fe 	CALL 0xffa0110c <_printf_str>;
ffa01418:	01 e8 00 00 	UNLINK;
ffa0141c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0141e:	30 05       	(R7:6) = [SP++];
ffa01420:	10 00       	RTS;
	...

ffa01424 <_div>:
ffa01424:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01428:	08 4f       	R0 <<= 0x1;
ffa0142a:	48 42       	DIVS (R0, R1);
ffa0142c:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa0142e:	b2 e0 03 20 	LSETUP(0xffa01432 <_div+0xe>, 0xffa01434 <_div+0x10>) LC1 = P2;
ffa01432:	08 42       	DIVQ (R0, R1);
ffa01434:	00 00       	NOP;
ffa01436:	80 42       	R0 = R0.L (X);
ffa01438:	01 e8 00 00 	UNLINK;
ffa0143c:	10 00       	RTS;
	...

ffa01440 <_mod>:
ffa01440:	70 05       	[--SP] = (R7:6);
ffa01442:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01446:	30 30       	R6 = R0;
ffa01448:	39 30       	R7 = R1;
ffa0144a:	ff e3 ed ff 	CALL 0xffa01424 <_div>;
ffa0144e:	c7 40       	R7 *= R0;
ffa01450:	01 e8 00 00 	UNLINK;
ffa01454:	be 53       	R6 = R6 - R7;
ffa01456:	06 30       	R0 = R6;
ffa01458:	30 05       	(R7:6) = [SP++];
ffa0145a:	10 00       	RTS;

ffa0145c <_memcpy_>:
ffa0145c:	02 0d       	CC = R2 <= 0x0;
ffa0145e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01462:	08 32       	P1 = R0;
ffa01464:	11 32       	P2 = R1;
ffa01466:	08 18       	IF CC JUMP 0xffa01476 <_memcpy_+0x1a>;
ffa01468:	00 00       	NOP;
ffa0146a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0146c:	09 64       	R1 += 0x1;		/* (  1) */
ffa0146e:	48 98       	R0 = B[P1++] (X);
ffa01470:	0a 08       	CC = R2 == R1;
ffa01472:	10 9a       	B[P2++] = R0;
ffa01474:	fc 17       	IF !CC JUMP 0xffa0146c <_memcpy_+0x10> (BP);
ffa01476:	01 e8 00 00 	UNLINK;
ffa0147a:	10 00       	RTS;

ffa0147c <_memset_>:
ffa0147c:	02 0d       	CC = R2 <= 0x0;
ffa0147e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01482:	10 32       	P2 = R0;
ffa01484:	06 18       	IF CC JUMP 0xffa01490 <_memset_+0x14>;
ffa01486:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01488:	08 64       	R0 += 0x1;		/* (  1) */
ffa0148a:	02 08       	CC = R2 == R0;
ffa0148c:	11 9a       	B[P2++] = R1;
ffa0148e:	fd 17       	IF !CC JUMP 0xffa01488 <_memset_+0xc> (BP);
ffa01490:	01 e8 00 00 	UNLINK;
ffa01494:	10 00       	RTS;
	...

ffa01498 <_strlen_>:
ffa01498:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0149c:	10 32       	P2 = R0;
ffa0149e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa014a0:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa014a4:	b2 e0 06 10 	LSETUP(0xffa014a8 <_strlen_+0x10>, 0xffa014b0 <_strlen_+0x18>) LC1 = P1;
ffa014a8:	50 99       	R0 = B[P2] (X);
ffa014aa:	00 0c       	CC = R0 == 0x0;
ffa014ac:	04 18       	IF CC JUMP 0xffa014b4 <_strlen_+0x1c>;
ffa014ae:	09 64       	R1 += 0x1;		/* (  1) */
ffa014b0:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa014b2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa014b4:	01 30       	R0 = R1;
ffa014b6:	01 e8 00 00 	UNLINK;
ffa014ba:	10 00       	RTS;

ffa014bc <_strcpy_>:
ffa014bc:	12 32       	P2 = R2;
ffa014be:	c5 04       	[--SP] = (P5:5);
ffa014c0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa014c4:	29 32       	P5 = R1;
ffa014c6:	00 32       	P0 = R0;
ffa014c8:	51 99       	R1 = B[P2] (X);
ffa014ca:	08 43       	R0 = R1.B (X);
ffa014cc:	00 0c       	CC = R0 == 0x0;
ffa014ce:	17 18       	IF CC JUMP 0xffa014fc <_strcpy_+0x40>;
ffa014d0:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa014d2:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa014d4:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa014d8:	b2 e0 09 10 	LSETUP(0xffa014dc <_strcpy_+0x20>, 0xffa014ea <_strcpy_+0x2e>) LC1 = P1;
ffa014dc:	01 9a       	B[P0++] = R1;
ffa014de:	51 99       	R1 = B[P2] (X);
ffa014e0:	08 43       	R0 = R1.B (X);
ffa014e2:	00 0c       	CC = R0 == 0x0;
ffa014e4:	0a 64       	R2 += 0x1;		/* (  1) */
ffa014e6:	03 18       	IF CC JUMP 0xffa014ec <_strcpy_+0x30>;
ffa014e8:	00 00       	NOP;
ffa014ea:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa014ec:	01 e8 00 00 	UNLINK;
ffa014f0:	28 91       	R0 = [P5];
ffa014f2:	10 50       	R0 = R0 + R2;
ffa014f4:	28 93       	[P5] = R0;
ffa014f6:	40 30       	R0 = P0;
ffa014f8:	85 04       	(P5:5) = [SP++];
ffa014fa:	10 00       	RTS;
ffa014fc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa014fe:	f7 2f       	JUMP.S 0xffa014ec <_strcpy_+0x30>;

ffa01500 <_strprepend>:
ffa01500:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01502:	21 32       	P4 = R1;
ffa01504:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01508:	38 30       	R7 = R0;
ffa0150a:	02 30       	R0 = R2;
ffa0150c:	2a 32       	P5 = R2;
ffa0150e:	ff e3 c5 ff 	CALL 0xffa01498 <_strlen_>;
ffa01512:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa01516:	20 91 00 00 
ffa0151a:	02 0d       	CC = R2 <= 0x0;
ffa0151c:	0a 18       	IF CC JUMP 0xffa01530 <_strprepend+0x30>;
ffa0151e:	07 52       	R0 = R7 - R0;
ffa01520:	10 32       	P2 = R0;
ffa01522:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01524:	09 64       	R1 += 0x1;		/* (  1) */
ffa01526:	68 98       	R0 = B[P5++] (X);
ffa01528:	0a 08       	CC = R2 == R1;
ffa0152a:	10 9a       	B[P2++] = R0;
ffa0152c:	fc 17       	IF !CC JUMP 0xffa01524 <_strprepend+0x24> (BP);
ffa0152e:	20 91       	R0 = [P4];
ffa01530:	01 e8 00 00 	UNLINK;
ffa01534:	07 52       	R0 = R7 - R0;
ffa01536:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01538:	10 00       	RTS;
	...

ffa0153c <_strcmp>:
ffa0153c:	10 32       	P2 = R0;
ffa0153e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01542:	01 32       	P0 = R1;
ffa01544:	51 99       	R1 = B[P2] (X);
ffa01546:	01 0c       	CC = R1 == 0x0;
ffa01548:	1b 18       	IF CC JUMP 0xffa0157e <_strcmp+0x42>;
ffa0154a:	00 00       	NOP;
ffa0154c:	00 00       	NOP;
ffa0154e:	00 00       	NOP;
ffa01550:	40 99       	R0 = B[P0] (X);
ffa01552:	00 0c       	CC = R0 == 0x0;
ffa01554:	15 18       	IF CC JUMP 0xffa0157e <_strcmp+0x42>;
ffa01556:	01 08       	CC = R1 == R0;
ffa01558:	1c 10       	IF !CC JUMP 0xffa01590 <_strcmp+0x54>;
ffa0155a:	4a 32       	P1 = P2;
ffa0155c:	50 32       	P2 = P0;
ffa0155e:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01560:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01562:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa01566:	49 99       	R1 = B[P1] (X);
ffa01568:	01 0c       	CC = R1 == 0x0;
ffa0156a:	0a 18       	IF CC JUMP 0xffa0157e <_strcmp+0x42>;
ffa0156c:	00 00       	NOP;
ffa0156e:	00 00       	NOP;
ffa01570:	00 00       	NOP;
ffa01572:	50 99       	R0 = B[P2] (X);
ffa01574:	00 0c       	CC = R0 == 0x0;
ffa01576:	04 18       	IF CC JUMP 0xffa0157e <_strcmp+0x42>;
ffa01578:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa0157a:	40 0c       	CC = P0 == 0x0;
ffa0157c:	05 10       	IF !CC JUMP 0xffa01586 <_strcmp+0x4a>;
ffa0157e:	01 e8 00 00 	UNLINK;
ffa01582:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01584:	10 00       	RTS;
ffa01586:	01 08       	CC = R1 == R0;
ffa01588:	04 10       	IF !CC JUMP 0xffa01590 <_strcmp+0x54>;
ffa0158a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0158c:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0158e:	ec 2f       	JUMP.S 0xffa01566 <_strcmp+0x2a>;
ffa01590:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01592:	01 e8 00 00 	UNLINK;
ffa01596:	10 00       	RTS;

ffa01598 <_substr>:
ffa01598:	f4 05       	[--SP] = (R7:6, P5:4);
ffa0159a:	20 32       	P4 = R0;
ffa0159c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa015a0:	11 32       	P2 = R1;
ffa015a2:	32 30       	R6 = R2;
ffa015a4:	61 99       	R1 = B[P4] (X);
ffa015a6:	01 0c       	CC = R1 == 0x0;
ffa015a8:	14 18       	IF CC JUMP 0xffa015d0 <_substr+0x38>;
ffa015aa:	00 00       	NOP;
ffa015ac:	00 00       	NOP;
ffa015ae:	00 00       	NOP;
ffa015b0:	50 99       	R0 = B[P2] (X);
ffa015b2:	00 0c       	CC = R0 == 0x0;
ffa015b4:	0e 18       	IF CC JUMP 0xffa015d0 <_substr+0x38>;
ffa015b6:	02 0d       	CC = R2 <= 0x0;
ffa015b8:	0c 18       	IF CC JUMP 0xffa015d0 <_substr+0x38>;
ffa015ba:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa015bc:	01 08       	CC = R1 == R0;
ffa015be:	0f 18       	IF CC JUMP 0xffa015dc <_substr+0x44>;
ffa015c0:	00 00       	NOP;
ffa015c2:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa015c4:	0b 64       	R3 += 0x1;		/* (  1) */
ffa015c6:	50 99       	R0 = B[P2] (X);
ffa015c8:	00 0c       	CC = R0 == 0x0;
ffa015ca:	03 18       	IF CC JUMP 0xffa015d0 <_substr+0x38>;
ffa015cc:	1e 09       	CC = R6 <= R3;
ffa015ce:	f7 17       	IF !CC JUMP 0xffa015bc <_substr+0x24> (BP);
ffa015d0:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa015d2:	01 e8 00 00 	UNLINK;
ffa015d6:	40 30       	R0 = P0;
ffa015d8:	b4 05       	(R7:6, P5:4) = [SP++];
ffa015da:	10 00       	RTS;
ffa015dc:	52 30       	R2 = P2;
ffa015de:	3b 30       	R7 = R3;
ffa015e0:	0a 64       	R2 += 0x1;		/* (  1) */
ffa015e2:	0f 64       	R7 += 0x1;		/* (  1) */
ffa015e4:	12 32       	P2 = R2;
ffa015e6:	07 32       	P0 = R7;
ffa015e8:	4c 32       	P1 = P4;
ffa015ea:	6c 32       	P5 = P4;
ffa015ec:	09 6c       	P1 += 0x1;		/* (  1) */
ffa015ee:	15 6c       	P5 += 0x2;		/* (  2) */
ffa015f0:	02 20       	JUMP.S 0xffa015f4 <_substr+0x5c>;
ffa015f2:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa015f4:	4b 99       	R3 = B[P1] (X);
ffa015f6:	50 99       	R0 = B[P2] (X);
ffa015f8:	03 08       	CC = R3 == R0;
ffa015fa:	0e 10       	IF !CC JUMP 0xffa01616 <_substr+0x7e>;
ffa015fc:	03 0c       	CC = R3 == 0x0;
ffa015fe:	0c 18       	IF CC JUMP 0xffa01616 <_substr+0x7e>;
ffa01600:	00 00       	NOP;
ffa01602:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01604:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01606:	68 98       	R0 = B[P5++] (X);
ffa01608:	00 0c       	CC = R0 == 0x0;
ffa0160a:	f4 17       	IF !CC JUMP 0xffa015f2 <_substr+0x5a> (BP);
ffa0160c:	01 e8 00 00 	UNLINK;
ffa01610:	40 30       	R0 = P0;
ffa01612:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01614:	10 00       	RTS;
ffa01616:	12 32       	P2 = R2;
ffa01618:	1f 30       	R3 = R7;
ffa0161a:	d6 2f       	JUMP.S 0xffa015c6 <_substr+0x2e>;

ffa0161c <_sprintf_int>:
ffa0161c:	fb 05       	[--SP] = (R7:7, P5:3);
ffa0161e:	01 0c       	CC = R1 == 0x0;
ffa01620:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01624:	00 34       	I0 = R0;
ffa01626:	11 30       	R2 = R1;
ffa01628:	1a 14       	IF !CC JUMP 0xffa0165c <_sprintf_int+0x40> (BP);
ffa0162a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df4 <_printf_temp> */
ffa0162e:	0b e1 f4 0d 	P3.L = 0xdf4;		/* (3572)	P3=0xff900df4 <_printf_temp> */
ffa01632:	5a 91       	P2 = [P3];
ffa01634:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01636:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01638:	10 9b       	B[P2] = R0;
ffa0163a:	88 32       	P1 = I0;
ffa0163c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0163e:	0b 52       	R0 = R3 - R1;
ffa01640:	00 32       	P0 = R0;
ffa01642:	5a 91       	P2 = [P3];
ffa01644:	09 64       	R1 += 0x1;		/* (  1) */
ffa01646:	99 08       	CC = R1 < R3;
ffa01648:	82 5a       	P2 = P2 + P0;
ffa0164a:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa0164e:	08 9a       	B[P1++] = R0;
ffa01650:	f7 1f       	IF CC JUMP 0xffa0163e <_sprintf_int+0x22> (BP);
ffa01652:	01 e8 00 00 	UNLINK;
ffa01656:	03 30       	R0 = R3;
ffa01658:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0165a:	10 00       	RTS;
ffa0165c:	01 0d       	CC = R1 <= 0x0;
ffa0165e:	2d 18       	IF CC JUMP 0xffa016b8 <_sprintf_int+0x9c>;
ffa01660:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df4 <_printf_temp> */
ffa01664:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa01668:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa0166a:	0b e1 f4 0d 	P3.L = 0xdf4;		/* (3572)	P3=0xff900df4 <_printf_temp> */
ffa0166e:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa01672:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa01674:	b2 e0 20 50 	LSETUP(0xffa01678 <_sprintf_int+0x5c>, 0xffa016b4 <_sprintf_int+0x98>) LC1 = P5;
ffa01678:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa0167c:	59 91 00 00 
ffa01680:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01684:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa01688:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa0168c:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01690:	0b c4 00 00 	R0 = (A0 += A1);
ffa01694:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa01698:	10 4d       	R0 >>>= 0x2;
ffa0169a:	08 52       	R0 = R0 - R1;
ffa0169c:	00 32       	P0 = R0;
ffa0169e:	13 32       	P2 = R3;
ffa016a0:	0b 64       	R3 += 0x1;		/* (  1) */
ffa016a2:	40 0d       	CC = P0 <= 0x0;
ffa016a4:	51 5a       	P1 = P1 + P2;
ffa016a6:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa016a8:	92 5a       	P2 = P2 << 0x1;
ffa016aa:	4a 30       	R1 = P2;
ffa016ac:	0a 52       	R0 = R2 - R1;
ffa016ae:	80 65       	R0 += 0x30;		/* ( 48) */
ffa016b0:	08 9b       	B[P1] = R0;
ffa016b2:	39 18       	IF CC JUMP 0xffa01724 <_sprintf_int+0x108>;
ffa016b4:	50 30       	R2 = P0;
ffa016b6:	c2 2f       	JUMP.S 0xffa0163a <_sprintf_int+0x1e>;
ffa016b8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa016ba:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa016bc:	f8 4f       	R0 <<= 0x1f;
ffa016be:	90 52       	R2 = R0 - R2;
ffa016c0:	02 0d       	CC = R2 <= 0x0;
ffa016c2:	3c 18       	IF CC JUMP 0xffa0173a <_sprintf_int+0x11e>;
ffa016c4:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df4 <_printf_temp> */
ffa016c8:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa016cc:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa016ce:	0b e1 f4 0d 	P3.L = 0xdf4;		/* (3572)	P3=0xff900df4 <_printf_temp> */
ffa016d2:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa016d6:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa016d8:	b2 e0 1f 50 	LSETUP(0xffa016dc <_sprintf_int+0xc0>, 0xffa01716 <_sprintf_int+0xfa>) LC1 = P5;
ffa016dc:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa016e0:	59 91 00 00 
ffa016e4:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa016e8:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa016ec:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa016f0:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa016f4:	0b c4 00 00 	R0 = (A0 += A1);
ffa016f8:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa016fc:	10 4d       	R0 >>>= 0x2;
ffa016fe:	08 52       	R0 = R0 - R1;
ffa01700:	00 32       	P0 = R0;
ffa01702:	61 5a       	P1 = P1 + P4;
ffa01704:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa01706:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa01708:	92 5a       	P2 = P2 << 0x1;
ffa0170a:	4a 30       	R1 = P2;
ffa0170c:	0a 52       	R0 = R2 - R1;
ffa0170e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01710:	40 0d       	CC = P0 <= 0x0;
ffa01712:	08 9b       	B[P1] = R0;
ffa01714:	0f 18       	IF CC JUMP 0xffa01732 <_sprintf_int+0x116>;
ffa01716:	50 30       	R2 = P0;
ffa01718:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa0171a:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa0171c:	5a 91       	P2 = [P3];
ffa0171e:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa01720:	8a 5a       	P2 = P2 + P1;
ffa01722:	10 9b       	B[P2] = R0;
ffa01724:	03 0d       	CC = R3 <= 0x0;
ffa01726:	8a 17       	IF !CC JUMP 0xffa0163a <_sprintf_int+0x1e> (BP);
ffa01728:	01 e8 00 00 	UNLINK;
ffa0172c:	03 30       	R0 = R3;
ffa0172e:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01730:	10 00       	RTS;
ffa01732:	5c 30       	R3 = P4;
ffa01734:	4c 32       	P1 = P4;
ffa01736:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01738:	f2 2f       	JUMP.S 0xffa0171c <_sprintf_int+0x100>;
ffa0173a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df4 <_printf_temp> */
ffa0173e:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa01740:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01742:	0b e1 f4 0d 	P3.L = 0xdf4;		/* (3572)	P3=0xff900df4 <_printf_temp> */
ffa01746:	eb 2f       	JUMP.S 0xffa0171c <_sprintf_int+0x100>;

ffa01748 <_sprintf_hex>:
ffa01748:	10 32       	P2 = R0;
ffa0174a:	78 05       	[--SP] = (R7:7);
ffa0174c:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0174e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01752:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa01754:	10 9b       	B[P2] = R0;
ffa01756:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0175a:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa0175e:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa01760:	12 6c       	P2 += 0x2;		/* (  2) */
ffa01762:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa01764:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa01766:	b2 e0 09 10 	LSETUP(0xffa0176a <_sprintf_hex+0x22>, 0xffa01778 <_sprintf_hex+0x30>) LC1 = P1;
ffa0176a:	01 30       	R0 = R1;
ffa0176c:	10 40       	R0 >>>= R2;
ffa0176e:	18 54       	R0 = R0 & R3;
ffa01770:	38 09       	CC = R0 <= R7;
ffa01772:	09 1c       	IF CC JUMP 0xffa01784 <_sprintf_hex+0x3c> (BP);
ffa01774:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01776:	10 9a       	B[P2++] = R0;
ffa01778:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa0177a:	01 e8 00 00 	UNLINK;
ffa0177e:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01780:	38 05       	(R7:7) = [SP++];
ffa01782:	10 00       	RTS;
ffa01784:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01786:	f8 2f       	JUMP.S 0xffa01776 <_sprintf_hex+0x2e>;

ffa01788 <_strprintf_int>:
ffa01788:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0178a:	29 32       	P5 = R1;
ffa0178c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01790:	0a 30       	R1 = R2;
ffa01792:	38 30       	R7 = R0;
ffa01794:	ff e3 44 ff 	CALL 0xffa0161c <_sprintf_int>;
ffa01798:	29 91       	R1 = [P5];
ffa0179a:	41 50       	R1 = R1 + R0;
ffa0179c:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa017a0:	29 93 00 00 
ffa017a4:	01 e8 00 00 	UNLINK;
ffa017a8:	07 30       	R0 = R7;
ffa017aa:	bd 05       	(R7:7, P5:5) = [SP++];
ffa017ac:	10 00       	RTS;
	...

ffa017b0 <_strprintf_hex>:
ffa017b0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa017b2:	29 32       	P5 = R1;
ffa017b4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa017b8:	0a 30       	R1 = R2;
ffa017ba:	38 30       	R7 = R0;
ffa017bc:	ff e3 c6 ff 	CALL 0xffa01748 <_sprintf_hex>;
ffa017c0:	29 91       	R1 = [P5];
ffa017c2:	41 50       	R1 = R1 + R0;
ffa017c4:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa017c8:	29 93 00 00 
ffa017cc:	01 e8 00 00 	UNLINK;
ffa017d0:	07 30       	R0 = R7;
ffa017d2:	bd 05       	(R7:7, P5:5) = [SP++];
ffa017d4:	10 00       	RTS;
	...

ffa017d8 <_atoi>:
ffa017d8:	08 32       	P1 = R0;
ffa017da:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa017dc:	f5 05       	[--SP] = (R7:6, P5:5);
ffa017de:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa017e2:	48 99       	R0 = B[P1] (X);
ffa017e4:	10 08       	CC = R0 == R2;
ffa017e6:	25 18       	IF CC JUMP 0xffa01830 <_atoi+0x58>;
ffa017e8:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa017ea:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa017ec:	41 32       	P0 = P1;
ffa017ee:	08 6c       	P0 += 0x1;		/* (  1) */
ffa017f0:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa017f2:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa017f4:	12 20       	JUMP.S 0xffa01818 <_atoi+0x40>;
ffa017f6:	8b 08       	CC = R3 < R1;
ffa017f8:	16 10       	IF !CC JUMP 0xffa01824 <_atoi+0x4c>;
ffa017fa:	10 43       	R0 = R2.B (X);
ffa017fc:	28 32       	P5 = R0;
ffa017fe:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa01800:	40 99       	R0 = B[P0] (X);
ffa01802:	80 66       	R0 += -0x30;		/* (-48) */
ffa01804:	40 43       	R0 = R0.B (Z);
ffa01806:	aa 5a       	P2 = P2 + P5;
ffa01808:	10 0a       	CC = R0 <= R2 (IU);
ffa0180a:	82 6e       	P2 += -0x30;		/* (-48) */
ffa0180c:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0180e:	03 14       	IF !CC JUMP 0xffa01814 <_atoi+0x3c> (BP);
ffa01810:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa01812:	92 5a       	P2 = P2 << 0x1;
ffa01814:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01816:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01818:	4a 99       	R2 = B[P1] (X);
ffa0181a:	02 30       	R0 = R2;
ffa0181c:	80 66       	R0 += -0x30;		/* (-48) */
ffa0181e:	40 43       	R0 = R0.B (Z);
ffa01820:	30 0a       	CC = R0 <= R6 (IU);
ffa01822:	ea 1f       	IF CC JUMP 0xffa017f6 <_atoi+0x1e> (BP);
ffa01824:	42 30       	R0 = P2;
ffa01826:	f8 40       	R0 *= R7;
ffa01828:	01 e8 00 00 	UNLINK;
ffa0182c:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0182e:	10 00       	RTS;
ffa01830:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01832:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01834:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01836:	db 2f       	JUMP.S 0xffa017ec <_atoi+0x14>;

ffa01838 <_udelay>:
ffa01838:	00 0d       	CC = R0 <= 0x0;
ffa0183a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0183e:	0b 18       	IF CC JUMP 0xffa01854 <_udelay+0x1c>;
ffa01840:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01842:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa01846:	b2 e0 03 20 	LSETUP(0xffa0184a <_udelay+0x12>, 0xffa0184c <_udelay+0x14>) LC1 = P2;
ffa0184a:	00 00       	NOP;
ffa0184c:	00 00       	NOP;
ffa0184e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01850:	08 08       	CC = R0 == R1;
ffa01852:	f8 17       	IF !CC JUMP 0xffa01842 <_udelay+0xa> (BP);
ffa01854:	01 e8 00 00 	UNLINK;
ffa01858:	10 00       	RTS;
	...

ffa0185c <_bfin_EMAC_send_check>:
ffa0185c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa01860:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01864:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01868:	50 95       	R0 = W[P2] (X);
ffa0186a:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa0186c:	00 02       	R0 = CC;
ffa0186e:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa01870:	01 e8 00 00 	UNLINK;
ffa01874:	10 00       	RTS;
	...

ffa01878 <_FormatIPAddress>:
ffa01878:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0187c:	18 30       	R3 = R0;
ffa0187e:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa01882:	40 4f       	R0 <<= 0x8;
ffa01884:	52 43       	R2 = R2.B (Z);
ffa01886:	10 56       	R0 = R0 | R2;
ffa01888:	40 4f       	R0 <<= 0x8;
ffa0188a:	49 43       	R1 = R1.B (Z);
ffa0188c:	08 56       	R0 = R0 | R1;
ffa0188e:	40 4f       	R0 <<= 0x8;
ffa01890:	5b 43       	R3 = R3.B (Z);
ffa01892:	18 56       	R0 = R0 | R3;
ffa01894:	01 e8 00 00 	UNLINK;
ffa01898:	10 00       	RTS;
	...

ffa0189c <_bfin_EMAC_halt>:
ffa0189c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa018a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018a2:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa018a6:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa018aa:	10 93       	[P2] = R0;
ffa018ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa018b0:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa018b4:	10 97       	W[P2] = R0;
ffa018b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa018ba:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa018be:	10 97       	W[P2] = R0;
ffa018c0:	01 e8 00 00 	UNLINK;
ffa018c4:	10 00       	RTS;
	...

ffa018c8 <_PollMdcDone>:
ffa018c8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa018cc:	02 20       	JUMP.S 0xffa018d0 <_PollMdcDone+0x8>;
ffa018ce:	00 00       	NOP;
ffa018d0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa018d4:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa018d8:	10 91       	R0 = [P2];
ffa018da:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa018dc:	f9 17       	IF !CC JUMP 0xffa018ce <_PollMdcDone+0x6> (BP);
ffa018de:	01 e8 00 00 	UNLINK;
ffa018e2:	10 00       	RTS;

ffa018e4 <_WrPHYReg>:
ffa018e4:	68 05       	[--SP] = (R7:5);
ffa018e6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa018ea:	28 30       	R5 = R0;
ffa018ec:	31 30       	R6 = R1;
ffa018ee:	3a 30       	R7 = R2;
ffa018f0:	ff e3 ec ff 	CALL 0xffa018c8 <_PollMdcDone>;
ffa018f4:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa018f6:	b0 55       	R6 = R0 & R6;
ffa018f8:	28 54       	R0 = R0 & R5;
ffa018fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa018fe:	58 4f       	R0 <<= 0xb;
ffa01900:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa01902:	ff 42       	R7 = R7.L (Z);
ffa01904:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01908:	36 4f       	R6 <<= 0x6;
ffa0190a:	08 56       	R0 = R0 | R1;
ffa0190c:	17 93       	[P2] = R7;
ffa0190e:	86 57       	R6 = R6 | R0;
ffa01910:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa01912:	16 93       	[P2] = R6;
ffa01914:	01 e8 00 00 	UNLINK;
ffa01918:	28 05       	(R7:5) = [SP++];
ffa0191a:	10 00       	RTS;

ffa0191c <_RdPHYReg>:
ffa0191c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0191e:	29 32       	P5 = R1;
ffa01920:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01924:	38 30       	R7 = R0;
ffa01926:	ff e3 d1 ff 	CALL 0xffa018c8 <_PollMdcDone>;
ffa0192a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa0192e:	45 30       	R0 = P5;
ffa01930:	c0 42       	R0 = R0.L (Z);
ffa01932:	28 32       	P5 = R0;
ffa01934:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01936:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa0193a:	55 30       	R2 = P5;
ffa0193c:	42 54       	R1 = R2 & R0;
ffa0193e:	38 54       	R0 = R0 & R7;
ffa01940:	58 4f       	R0 <<= 0xb;
ffa01942:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa01944:	31 4f       	R1 <<= 0x6;
ffa01946:	41 56       	R1 = R1 | R0;
ffa01948:	11 93       	[P2] = R1;
ffa0194a:	ff e3 bf ff 	CALL 0xffa018c8 <_PollMdcDone>;
ffa0194e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa01952:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01956:	10 91       	R0 = [P2];
ffa01958:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa0195c:	0a e1 fc 0d 	P2.L = 0xdfc;		/* (3580)	P2=0xff900dfc <_PHYregs> */
ffa01960:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa01962:	10 97       	W[P2] = R0;
ffa01964:	01 e8 00 00 	UNLINK;
ffa01968:	c0 42       	R0 = R0.L (Z);
ffa0196a:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0196c:	10 00       	RTS;
	...

ffa01970 <_SoftResetPHY>:
ffa01970:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01972:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01974:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa01978:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0197c:	ff e3 b4 ff 	CALL 0xffa018e4 <_WrPHYReg>;
ffa01980:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01982:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01984:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01986:	ff e3 af ff 	CALL 0xffa018e4 <_WrPHYReg>;
ffa0198a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0198c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0198e:	ff e3 c7 ff 	CALL 0xffa0191c <_RdPHYReg>;
ffa01992:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa01994:	fb 1f       	IF CC JUMP 0xffa0198a <_SoftResetPHY+0x1a> (BP);
ffa01996:	01 e8 00 00 	UNLINK;
ffa0199a:	10 00       	RTS;

ffa0199c <_NetCksum>:
ffa0199c:	01 0d       	CC = R1 <= 0x0;
ffa0199e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa019a2:	10 18       	IF CC JUMP 0xffa019c2 <_NetCksum+0x26>;
ffa019a4:	10 32       	P2 = R0;
ffa019a6:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa019a8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa019aa:	0a 64       	R2 += 0x1;		/* (  1) */
ffa019ac:	10 94       	R0 = W[P2++] (Z);
ffa019ae:	0a 08       	CC = R2 == R1;
ffa019b0:	c3 50       	R3 = R3 + R0;
ffa019b2:	fc 17       	IF !CC JUMP 0xffa019aa <_NetCksum+0xe> (BP);
ffa019b4:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa019b8:	03 50       	R0 = R3 + R0;
ffa019ba:	c0 42       	R0 = R0.L (Z);
ffa019bc:	01 e8 00 00 	UNLINK;
ffa019c0:	10 00       	RTS;
ffa019c2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa019c4:	01 e8 00 00 	UNLINK;
ffa019c8:	10 00       	RTS;
	...

ffa019cc <_htons>:
ffa019cc:	08 30       	R1 = R0;
ffa019ce:	c0 42       	R0 = R0.L (Z);
ffa019d0:	40 4e       	R0 >>= 0x8;
ffa019d2:	41 4f       	R1 <<= 0x8;
ffa019d4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa019d8:	08 56       	R0 = R0 | R1;
ffa019da:	c0 42       	R0 = R0.L (Z);
ffa019dc:	01 e8 00 00 	UNLINK;
ffa019e0:	10 00       	RTS;
	...

ffa019e4 <_htonl>:
ffa019e4:	10 30       	R2 = R0;
ffa019e6:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa019ea:	40 43       	R0 = R0.B (Z);
ffa019ec:	49 43       	R1 = R1.B (Z);
ffa019ee:	40 4f       	R0 <<= 0x8;
ffa019f0:	08 56       	R0 = R0 | R1;
ffa019f2:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa019f6:	40 4f       	R0 <<= 0x8;
ffa019f8:	49 43       	R1 = R1.B (Z);
ffa019fa:	08 56       	R0 = R0 | R1;
ffa019fc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01a00:	40 4f       	R0 <<= 0x8;
ffa01a02:	c2 4e       	R2 >>= 0x18;
ffa01a04:	10 56       	R0 = R0 | R2;
ffa01a06:	01 e8 00 00 	UNLINK;
ffa01a0a:	10 00       	RTS;

ffa01a0c <_pack4chars>:
ffa01a0c:	08 32       	P1 = R0;
ffa01a0e:	10 32       	P2 = R0;
ffa01a10:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01a14:	01 e8 00 00 	UNLINK;
ffa01a18:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa01a1c:	10 98       	R0 = B[P2++] (Z);
ffa01a1e:	41 4f       	R1 <<= 0x8;
ffa01a20:	08 50       	R0 = R0 + R1;
ffa01a22:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa01a26:	81 4f       	R1 <<= 0x10;
ffa01a28:	08 50       	R0 = R0 + R1;
ffa01a2a:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa01a2e:	c1 4f       	R1 <<= 0x18;
ffa01a30:	08 50       	R0 = R0 + R1;
ffa01a32:	10 00       	RTS;

ffa01a34 <_ip_header_setup>:
ffa01a34:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01a36:	28 32       	P5 = R0;
ffa01a38:	21 32       	P4 = R1;
ffa01a3a:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01a3e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01a42:	32 30       	R6 = R2;
ffa01a44:	28 9b       	B[P5] = R0;
ffa01a46:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a48:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa01a4c:	27 91       	R7 = [P4];
ffa01a4e:	f8 42       	R0 = R7.L (Z);
ffa01a50:	ff e3 be ff 	CALL 0xffa019cc <_htons>;
ffa01a54:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900dfc <_PHYregs> */
ffa01a58:	0a e1 46 0e 	P2.L = 0xe46;		/* (3654)	P2=0xff900e46 <_NetIPID> */
ffa01a5c:	68 b4       	W[P5 + 0x2] = R0;
ffa01a5e:	10 95       	R0 = W[P2] (Z);
ffa01a60:	08 30       	R1 = R0;
ffa01a62:	09 64       	R1 += 0x1;		/* (  1) */
ffa01a64:	67 67       	R7 += -0x14;		/* (-20) */
ffa01a66:	11 97       	W[P2] = R1;
ffa01a68:	27 93       	[P4] = R7;
ffa01a6a:	ff e3 b1 ff 	CALL 0xffa019cc <_htons>;
ffa01a6e:	a8 b4       	W[P5 + 0x4] = R0;
ffa01a70:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01a74:	ff e3 ac ff 	CALL 0xffa019cc <_htons>;
ffa01a78:	e8 b4       	W[P5 + 0x6] = R0;
ffa01a7a:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01a7e:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01a82:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e46 <_NetIPID> */
ffa01a86:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa01a8a:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01a8e:	0a e1 78 0e 	P2.L = 0xe78;		/* (3704)	P2=0xff900e78 <_NetOurIP> */
ffa01a92:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a94:	68 b5       	W[P5 + 0xa] = R0;
ffa01a96:	10 91       	R0 = [P2];
ffa01a98:	e8 b0       	[P5 + 0xc] = R0;
ffa01a9a:	2e b1       	[P5 + 0x10] = R6;
ffa01a9c:	45 30       	R0 = P5;
ffa01a9e:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01aa0:	ff e3 7e ff 	CALL 0xffa0199c <_NetCksum>;
ffa01aa4:	c0 43       	R0 =~ R0;
ffa01aa6:	68 b5       	W[P5 + 0xa] = R0;
ffa01aa8:	01 e8 00 00 	UNLINK;
ffa01aac:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01aae:	45 30       	R0 = P5;
ffa01ab0:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01ab2:	10 00       	RTS;

ffa01ab4 <_ip_header_checksum>:
ffa01ab4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01ab8:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa01aba:	ff e3 71 ff 	CALL 0xffa0199c <_NetCksum>;
ffa01abe:	08 02       	CC = R0;
ffa01ac0:	00 02       	R0 = CC;
ffa01ac2:	01 e8 00 00 	UNLINK;
ffa01ac6:	10 00       	RTS;

ffa01ac8 <_icmp_header_setup>:
ffa01ac8:	00 32       	P0 = R0;
ffa01aca:	c5 04       	[--SP] = (P5:5);
ffa01acc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ace:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01ad2:	29 32       	P5 = R1;
ffa01ad4:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa01ad8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ada:	40 b4       	W[P0 + 0x2] = R0;
ffa01adc:	38 ab       	R0 = W[FP + 0x18] (X);
ffa01ade:	80 b4       	W[P0 + 0x4] = R0;
ffa01ae0:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa01ae2:	02 9b       	B[P0] = R2;
ffa01ae4:	c0 b4       	W[P0 + 0x6] = R0;
ffa01ae6:	48 32       	P1 = P0;
ffa01ae8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01aea:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa01aec:	b2 e0 03 20 	LSETUP(0xffa01af0 <_icmp_header_setup+0x28>, 0xffa01af2 <_icmp_header_setup+0x2a>) LC1 = P2;
ffa01af0:	08 94       	R0 = W[P1++] (Z);
ffa01af2:	41 50       	R1 = R1 + R0;
ffa01af4:	c8 42       	R0 = R1.L (Z);
ffa01af6:	81 4e       	R1 >>= 0x10;
ffa01af8:	08 50       	R0 = R0 + R1;
ffa01afa:	c0 43       	R0 =~ R0;
ffa01afc:	40 b4       	W[P0 + 0x2] = R0;
ffa01afe:	28 91       	R0 = [P5];
ffa01b00:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa01b02:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01b04:	01 e8 00 00 	UNLINK;
ffa01b08:	28 93       	[P5] = R0;
ffa01b0a:	40 30       	R0 = P0;
ffa01b0c:	85 04       	(P5:5) = [SP++];
ffa01b0e:	10 00       	RTS;

ffa01b10 <_udp_header_setup>:
ffa01b10:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01b12:	28 32       	P5 = R0;
ffa01b14:	21 32       	P4 = R1;
ffa01b16:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b1a:	d0 42       	R0 = R2.L (Z);
ffa01b1c:	ff e3 58 ff 	CALL 0xffa019cc <_htons>;
ffa01b20:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa01b24:	28 97       	W[P5] = R0;
ffa01b26:	07 30       	R0 = R7;
ffa01b28:	ff e3 52 ff 	CALL 0xffa019cc <_htons>;
ffa01b2c:	27 91       	R7 = [P4];
ffa01b2e:	68 b4       	W[P5 + 0x2] = R0;
ffa01b30:	f8 42       	R0 = R7.L (Z);
ffa01b32:	ff e3 4d ff 	CALL 0xffa019cc <_htons>;
ffa01b36:	a8 b4       	W[P5 + 0x4] = R0;
ffa01b38:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b3a:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa01b3c:	e8 b4       	W[P5 + 0x6] = R0;
ffa01b3e:	01 e8 00 00 	UNLINK;
ffa01b42:	45 6c       	P5 += 0x8;		/* (  8) */
ffa01b44:	45 30       	R0 = P5;
ffa01b46:	27 93       	[P4] = R7;
ffa01b48:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01b4a:	10 00       	RTS;

ffa01b4c <_tcp_header_setup>:
ffa01b4c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01b4e:	28 32       	P5 = R0;
ffa01b50:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b54:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01b58:	21 32       	P4 = R1;
ffa01b5a:	3a 30       	R7 = R2;
ffa01b5c:	ff e3 38 ff 	CALL 0xffa019cc <_htons>;
ffa01b60:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa01b64:	0a e1 68 0f 	P2.L = 0xf68;		/* (3944)	P2=0xff900f68 <_TcpClientPort> */
ffa01b68:	28 97       	W[P5] = R0;
ffa01b6a:	50 95       	R0 = W[P2] (X);
ffa01b6c:	68 b4       	W[P5 + 0x2] = R0;
ffa01b6e:	38 a2       	R0 = [FP + 0x20];
ffa01b70:	ff e3 3a ff 	CALL 0xffa019e4 <_htonl>;
ffa01b74:	68 b0       	[P5 + 0x4] = R0;
ffa01b76:	78 a2       	R0 = [FP + 0x24];
ffa01b78:	ff e3 36 ff 	CALL 0xffa019e4 <_htonl>;
ffa01b7c:	a8 b0       	[P5 + 0x8] = R0;
ffa01b7e:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01b82:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01b86:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa01b8a:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa01b8e:	ff e3 1f ff 	CALL 0xffa019cc <_htons>;
ffa01b92:	e8 b5       	W[P5 + 0xe] = R0;
ffa01b94:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b96:	28 b6       	W[P5 + 0x10] = R0;
ffa01b98:	68 b6       	W[P5 + 0x12] = R0;
ffa01b9a:	20 91       	R0 = [P4];
ffa01b9c:	60 67       	R0 += -0x14;		/* (-20) */
ffa01b9e:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01ba0:	01 e8 00 00 	UNLINK;
ffa01ba4:	20 93       	[P4] = R0;
ffa01ba6:	45 30       	R0 = P5;
ffa01ba8:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01baa:	10 00       	RTS;

ffa01bac <_DHCP_parse>:
ffa01bac:	f5 05       	[--SP] = (R7:6, P5:5);
ffa01bae:	09 0d       	CC = R1 <= 0x1;
ffa01bb0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01bb4:	10 32       	P2 = R0;
ffa01bb6:	33 18       	IF CC JUMP 0xffa01c1c <_DHCP_parse+0x70>;
ffa01bb8:	00 00       	NOP;
ffa01bba:	31 30       	R6 = R1;
ffa01bbc:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01bbe:	11 98       	R1 = B[P2++] (Z);
ffa01bc0:	01 0c       	CC = R1 == 0x0;
ffa01bc2:	2b 1c       	IF CC JUMP 0xffa01c18 <_DHCP_parse+0x6c> (BP);
ffa01bc4:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa01bc8:	01 08       	CC = R1 == R0;
ffa01bca:	57 99       	R7 = B[P2] (X);
ffa01bcc:	28 18       	IF CC JUMP 0xffa01c1c <_DHCP_parse+0x70>;
ffa01bce:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa01bd0:	6a 32       	P5 = P2;
ffa01bd2:	01 0a       	CC = R1 <= R0 (IU);
ffa01bd4:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa01bd6:	09 14       	IF !CC JUMP 0xffa01be8 <_DHCP_parse+0x3c> (BP);
ffa01bd8:	09 32       	P1 = R1;
ffa01bda:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f68 <_TcpClientPort> */
ffa01bde:	0a e1 a8 03 	P2.L = 0x3a8;		/* (936)	P2=0xff9003a8 */
ffa01be2:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa01be4:	52 91       	P2 = [P2];
ffa01be6:	52 00       	JUMP (P2);
ffa01be8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa01bec:	00 e1 80 01 	R0.L = 0x180;		/* (384)	R0=0xff900180(-7339648) */
ffa01bf0:	ff e3 50 fb 	CALL 0xffa01290 <_printf_int>;
ffa01bf4:	7f 43       	R7 = R7.B (Z);
ffa01bf6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900180(-7339648) */
ffa01bfa:	00 e1 94 01 	R0.L = 0x194;		/* (404)	R0=0xff900194(-7339628) */
ffa01bfe:	0f 30       	R1 = R7;
ffa01c00:	ff e3 48 fb 	CALL 0xffa01290 <_printf_int>;
ffa01c04:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900194(-7339628) */
ffa01c08:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa01c0c:	ff e3 80 fa 	CALL 0xffa0110c <_printf_str>;
ffa01c10:	0f 32       	P1 = R7;
ffa01c12:	be 53       	R6 = R6 - R7;
ffa01c14:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01c16:	8d 5a       	P2 = P5 + P1;
ffa01c18:	0e 0d       	CC = R6 <= 0x1;
ffa01c1a:	d1 17       	IF !CC JUMP 0xffa01bbc <_DHCP_parse+0x10> (BP);
ffa01c1c:	01 e8 00 00 	UNLINK;
ffa01c20:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01c22:	10 00       	RTS;
ffa01c24:	45 30       	R0 = P5;
ffa01c26:	ff e3 f3 fe 	CALL 0xffa01a0c <_pack4chars>;
ffa01c2a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff9003a8 */
ffa01c2e:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetSubnetMask> */
ffa01c32:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01c36:	10 93 00 00 
ffa01c3a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa01c3e:	00 e1 d8 00 	R0.L = 0xd8;		/* (216)	R0=0xff9000d8(-7339816) */
ffa01c42:	ff e3 c9 fb 	CALL 0xffa013d4 <_printf_ip>;
ffa01c46:	7f 43       	R7 = R7.B (Z);
ffa01c48:	de 2f       	JUMP.S 0xffa01c04 <_DHCP_parse+0x58>;
ffa01c4a:	45 30       	R0 = P5;
ffa01c4c:	ff e3 e0 fe 	CALL 0xffa01a0c <_pack4chars>;
ffa01c50:	08 30       	R1 = R0;
ffa01c52:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000d8(-7339816) */
ffa01c56:	00 e1 e8 00 	R0.L = 0xe8;		/* (232)	R0=0xff9000e8(-7339800) */
ffa01c5a:	ff e3 bd fb 	CALL 0xffa013d4 <_printf_ip>;
ffa01c5e:	7f 43       	R7 = R7.B (Z);
ffa01c60:	d2 2f       	JUMP.S 0xffa01c04 <_DHCP_parse+0x58>;
ffa01c62:	45 30       	R0 = P5;
ffa01c64:	ff e3 d4 fe 	CALL 0xffa01a0c <_pack4chars>;
ffa01c68:	08 30       	R1 = R0;
ffa01c6a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000e8(-7339800) */
ffa01c6e:	00 e1 f8 00 	R0.L = 0xf8;		/* (248)	R0=0xff9000f8(-7339784) */
ffa01c72:	ff e3 b1 fb 	CALL 0xffa013d4 <_printf_ip>;
ffa01c76:	7f 43       	R7 = R7.B (Z);
ffa01c78:	c6 2f       	JUMP.S 0xffa01c04 <_DHCP_parse+0x58>;
ffa01c7a:	45 30       	R0 = P5;
ffa01c7c:	ff e3 c8 fe 	CALL 0xffa01a0c <_pack4chars>;
ffa01c80:	08 30       	R1 = R0;
ffa01c82:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f8(-7339784) */
ffa01c86:	00 e1 08 01 	R0.L = 0x108;		/* (264)	R0=0xff900108(-7339768) */
ffa01c8a:	ff e3 a5 fb 	CALL 0xffa013d4 <_printf_ip>;
ffa01c8e:	7f 43       	R7 = R7.B (Z);
ffa01c90:	ba 2f       	JUMP.S 0xffa01c04 <_DHCP_parse+0x58>;
ffa01c92:	45 30       	R0 = P5;
ffa01c94:	ff e3 bc fe 	CALL 0xffa01a0c <_pack4chars>;
ffa01c98:	ff e3 a6 fe 	CALL 0xffa019e4 <_htonl>;
ffa01c9c:	08 30       	R1 = R0;
ffa01c9e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900108(-7339768) */
ffa01ca2:	00 e1 18 01 	R0.L = 0x118;		/* (280)	R0=0xff900118(-7339752) */
ffa01ca6:	ff e3 f5 fa 	CALL 0xffa01290 <_printf_int>;
ffa01caa:	7f 43       	R7 = R7.B (Z);
ffa01cac:	ac 2f       	JUMP.S 0xffa01c04 <_DHCP_parse+0x58>;
ffa01cae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900118(-7339752) */
ffa01cb2:	29 99       	R1 = B[P5] (Z);
ffa01cb4:	00 e1 2c 01 	R0.L = 0x12c;		/* (300)	R0=0xff90012c(-7339732) */
ffa01cb8:	ff e3 ec fa 	CALL 0xffa01290 <_printf_int>;
ffa01cbc:	7f 43       	R7 = R7.B (Z);
ffa01cbe:	a3 2f       	JUMP.S 0xffa01c04 <_DHCP_parse+0x58>;
ffa01cc0:	45 30       	R0 = P5;
ffa01cc2:	ff e3 a5 fe 	CALL 0xffa01a0c <_pack4chars>;
ffa01cc6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e74 <_NetSubnetMask> */
ffa01cca:	0a e1 40 0e 	P2.L = 0xe40;		/* (3648)	P2=0xff900e40 <_NetDHCPserv> */
ffa01cce:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01cd2:	10 93 00 00 
ffa01cd6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90012c(-7339732) */
ffa01cda:	00 e1 40 01 	R0.L = 0x140;		/* (320)	R0=0xff900140(-7339712) */
ffa01cde:	ff e3 7b fb 	CALL 0xffa013d4 <_printf_ip>;
ffa01ce2:	7f 43       	R7 = R7.B (Z);
ffa01ce4:	90 2f       	JUMP.S 0xffa01c04 <_DHCP_parse+0x58>;
ffa01ce6:	45 30       	R0 = P5;
ffa01ce8:	ff e3 92 fe 	CALL 0xffa01a0c <_pack4chars>;
ffa01cec:	ff e3 7c fe 	CALL 0xffa019e4 <_htonl>;
ffa01cf0:	08 30       	R1 = R0;
ffa01cf2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900140(-7339712) */
ffa01cf6:	00 e1 54 01 	R0.L = 0x154;		/* (340)	R0=0xff900154(-7339692) */
ffa01cfa:	ff e3 cb fa 	CALL 0xffa01290 <_printf_int>;
ffa01cfe:	7f 43       	R7 = R7.B (Z);
ffa01d00:	82 2f       	JUMP.S 0xffa01c04 <_DHCP_parse+0x58>;
ffa01d02:	45 30       	R0 = P5;
ffa01d04:	ff e3 84 fe 	CALL 0xffa01a0c <_pack4chars>;
ffa01d08:	ff e3 6e fe 	CALL 0xffa019e4 <_htonl>;
ffa01d0c:	08 30       	R1 = R0;
ffa01d0e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900154(-7339692) */
ffa01d12:	00 e1 68 01 	R0.L = 0x168;		/* (360)	R0=0xff900168(-7339672) */
ffa01d16:	ff e3 bd fa 	CALL 0xffa01290 <_printf_int>;
ffa01d1a:	7f 43       	R7 = R7.B (Z);
ffa01d1c:	74 2f       	JUMP.S 0xffa01c04 <_DHCP_parse+0x58>;
	...

ffa01d20 <_bfin_EMAC_send_nocopy>:
ffa01d20:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e40(-4190656) */
ffa01d24:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01d26:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01d2a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01d2e:	10 97       	W[P2] = R0;
ffa01d30:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01d34:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01d38:	50 95       	R0 = W[P2] (X);
ffa01d3a:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01d3c:	59 10       	IF !CC JUMP 0xffa01dee <_bfin_EMAC_send_nocopy+0xce>;
ffa01d3e:	00 00       	NOP;
ffa01d40:	00 00       	NOP;
ffa01d42:	00 00       	NOP;
ffa01d44:	50 95       	R0 = W[P2] (X);
ffa01d46:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01d48:	16 18       	IF CC JUMP 0xffa01d74 <_bfin_EMAC_send_nocopy+0x54>;
ffa01d4a:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0008 */
ffa01d4e:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01d52:	b2 e0 09 10 	LSETUP(0xffa01d56 <_bfin_EMAC_send_nocopy+0x36>, 0xffa01d64 <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa01d56:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01d5a:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01d5e:	50 95       	R0 = W[P2] (X);
ffa01d60:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01d62:	09 18       	IF CC JUMP 0xffa01d74 <_bfin_EMAC_send_nocopy+0x54>;
ffa01d64:	00 00       	NOP;
ffa01d66:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa01d6a:	00 e1 b4 01 	R0.L = 0x1b4;		/* (436)	R0=0xff9001b4(-7339596) */
ffa01d6e:	ff e3 cf f9 	CALL 0xffa0110c <_printf_str>;
ffa01d72:	30 20       	JUMP.S 0xffa01dd2 <_bfin_EMAC_send_nocopy+0xb2>;
ffa01d74:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa01d78:	08 e1 44 0e 	P0.L = 0xe44;		/* (3652)	P0=0xff900e44 <_txIdx> */
ffa01d7c:	00 95       	R0 = W[P0] (Z);
ffa01d7e:	10 32       	P2 = R0;
ffa01d80:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01d84:	09 e1 48 0e 	P1.L = 0xe48;		/* (3656)	P1=0xff900e48 <_txbuf> */
ffa01d88:	42 95       	R2 = W[P0] (X);
ffa01d8a:	d1 42       	R1 = R2.L (Z);
ffa01d8c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01d8e:	52 91       	P2 = [P2];
ffa01d90:	11 0d       	CC = R1 <= 0x2;
ffa01d92:	90 a1       	R0 = [P2 + 0x18];
ffa01d94:	50 b0       	[P2 + 0x4] = R0;
ffa01d96:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d98:	90 b2       	[P2 + 0x28] = R0;
ffa01d9a:	11 32       	P2 = R1;
ffa01d9c:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa01d9e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01da2:	08 91       	R0 = [P1];
ffa01da4:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01da8:	10 93       	[P2] = R0;
ffa01daa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01dae:	0a e1 9a 04 	P2.L = 0x49a;		/* (1178)	P2=0xff90049a <_txdmacfg> */
ffa01db2:	50 95       	R0 = W[P2] (X);
ffa01db4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0049a(-4193126) */
ffa01db8:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01dbc:	10 97       	W[P2] = R0;
ffa01dbe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01dc2:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01dc6:	10 91       	R0 = [P2];
ffa01dc8:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01dca:	10 93       	[P2] = R0;
ffa01dcc:	0d 1c       	IF CC JUMP 0xffa01de6 <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa01dce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01dd0:	00 97       	W[P0] = R0;
ffa01dd2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01dd6:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01dd8:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01ddc:	10 97       	W[P2] = R0;
ffa01dde:	01 e8 00 00 	UNLINK;
ffa01de2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01de4:	10 00       	RTS;
ffa01de6:	02 30       	R0 = R2;
ffa01de8:	08 64       	R0 += 0x1;		/* (  1) */
ffa01dea:	00 97       	W[P0] = R0;
ffa01dec:	f3 2f       	JUMP.S 0xffa01dd2 <_bfin_EMAC_send_nocopy+0xb2>;
ffa01dee:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01df2:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa01df6:	ff e3 8b f9 	CALL 0xffa0110c <_printf_str>;
ffa01dfa:	ec 2f       	JUMP.S 0xffa01dd2 <_bfin_EMAC_send_nocopy+0xb2>;

ffa01dfc <_DHCP_tx>:
ffa01dfc:	e3 05       	[--SP] = (R7:4, P5:3);
ffa01dfe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa01e02:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01e06:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_txIdx> */
ffa01e0a:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa01e0e:	10 95 00 00 
ffa01e12:	10 32       	P2 = R0;
ffa01e14:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e48 <_txbuf> */
ffa01e18:	09 e1 48 0e 	P1.L = 0xe48;		/* (3656)	P1=0xff900e48 <_txbuf> */
ffa01e1c:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa01e20:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01e22:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01e24:	52 91       	P2 = [P2];
ffa01e26:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa01e2a:	f1 bb 00 00 
ffa01e2e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90000b */
ffa01e32:	0d e1 6c 0e 	P5.L = 0xe6c;		/* (3692)	P5=0xff900e6c <_NetOurMAC> */
ffa01e36:	94 ad       	P4 = [P2 + 0x18];
ffa01e38:	1a 32       	P3 = R2;
ffa01e3a:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01e3c:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01e3e:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa01e42:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa01e46:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa01e4a:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa01e4e:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa01e52:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa01e56:	20 97       	W[P4] = R0;
ffa01e58:	68 99       	R0 = B[P5] (X);
ffa01e5a:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa01e5e:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01e62:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa01e66:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01e6a:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa01e6e:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01e72:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa01e76:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01e7a:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa01e7e:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01e82:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa01e86:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01e8a:	ff e3 a1 fd 	CALL 0xffa019cc <_htons>;
ffa01e8e:	e0 b5       	W[P4 + 0xe] = R0;
ffa01e90:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01e94:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa01e98:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa01e9c:	04 50       	R0 = R4 + R0;
ffa01e9e:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa01ea2:	c0 42       	R0 = R0.L (Z);
ffa01ea4:	ff e3 94 fd 	CALL 0xffa019cc <_htons>;
ffa01ea8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_txIdx> */
ffa01eac:	0a e1 46 0e 	P2.L = 0xe46;		/* (3654)	P2=0xff900e46 <_NetIPID> */
ffa01eb0:	60 b6       	W[P4 + 0x12] = R0;
ffa01eb2:	10 95       	R0 = W[P2] (Z);
ffa01eb4:	08 30       	R1 = R0;
ffa01eb6:	09 64       	R1 += 0x1;		/* (  1) */
ffa01eb8:	11 97       	W[P2] = R1;
ffa01eba:	ff e3 89 fd 	CALL 0xffa019cc <_htons>;
ffa01ebe:	a0 b6       	W[P4 + 0x14] = R0;
ffa01ec0:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01ec4:	ff e3 84 fd 	CALL 0xffa019cc <_htons>;
ffa01ec8:	e0 b6       	W[P4 + 0x16] = R0;
ffa01eca:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01ecc:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa01ed0:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa01ed4:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa01ed8:	66 b7 00 00 
ffa01edc:	44 30       	R0 = P4;
ffa01ede:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01ee0:	e7 b1       	[P4 + 0x1c] = R7;
ffa01ee2:	23 be       	[P4 + 0x20] = P3;
ffa01ee4:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01ee6:	ff e3 5b fd 	CALL 0xffa0199c <_NetCksum>;
ffa01eea:	c0 43       	R0 =~ R0;
ffa01eec:	60 b7       	W[P4 + 0x1a] = R0;
ffa01eee:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa01ef2:	ff e3 6d fd 	CALL 0xffa019cc <_htons>;
ffa01ef6:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa01efa:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa01efe:	ff e3 67 fd 	CALL 0xffa019cc <_htons>;
ffa01f02:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa01f06:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa01f0a:	04 50       	R0 = R4 + R0;
ffa01f0c:	c0 42       	R0 = R0.L (Z);
ffa01f0e:	ff e3 5f fd 	CALL 0xffa019cc <_htons>;
ffa01f12:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa01f16:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01f18:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa01f1c:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa01f20:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e46(-4190650) */
ffa01f24:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01f26:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa01f2a:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa01f2e:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa01f32:	10 91       	R0 = [P2];
ffa01f34:	20 b3       	[P4 + 0x30] = R0;
ffa01f36:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa01f3a:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa01f3e:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa01f42:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa01f46:	a7 b3       	[P4 + 0x38] = R7;
ffa01f48:	e7 b3       	[P4 + 0x3c] = R7;
ffa01f4a:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa01f4e:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa01f52:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa01f56:	ff e3 47 fd 	CALL 0xffa019e4 <_htonl>;
ffa01f5a:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa01f5e:	68 99       	R0 = B[P5] (X);
ffa01f60:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa01f64:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01f68:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa01f6c:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01f70:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa01f74:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01f78:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa01f7c:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01f80:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa01f84:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01f88:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa01f8c:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa01f90:	54 5a       	P1 = P4 + P2;
ffa01f92:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01f94:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa01f96:	b2 e0 02 20 	LSETUP(0xffa01f9a <_DHCP_tx+0x19e>, 0xffa01f9a <_DHCP_tx+0x19e>) LC1 = P2;
ffa01f9a:	08 9a       	B[P1++] = R0;
ffa01f9c:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa01fa0:	54 5a       	P1 = P4 + P2;
ffa01fa2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01fa4:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa01fa6:	b2 e0 02 20 	LSETUP(0xffa01faa <_DHCP_tx+0x1ae>, 0xffa01faa <_DHCP_tx+0x1ae>) LC1 = P2;
ffa01faa:	08 92       	[P1++] = R0;
ffa01fac:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa01fb0:	54 5a       	P1 = P4 + P2;
ffa01fb2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01fb4:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa01fb6:	b2 e0 02 20 	LSETUP(0xffa01fba <_DHCP_tx+0x1be>, 0xffa01fba <_DHCP_tx+0x1be>) LC1 = P2;
ffa01fba:	08 92       	[P1++] = R0;
ffa01fbc:	44 30       	R0 = P4;
ffa01fbe:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa01fc2:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa01fc6:	f0 b9 00 00 
ffa01fca:	14 30       	R2 = R4;
ffa01fcc:	ff e3 48 fa 	CALL 0xffa0145c <_memcpy_>;
ffa01fd0:	01 e8 00 00 	UNLINK;
ffa01fd4:	a3 05       	(R7:4, P5:3) = [SP++];
ffa01fd6:	ff e2 a5 fe 	JUMP.L 0xffa01d20 <_bfin_EMAC_send_nocopy>;
	...

ffa01fdc <_bfin_EMAC_send>:
ffa01fdc:	c4 04       	[--SP] = (P5:4);
ffa01fde:	01 0d       	CC = R1 <= 0x0;
ffa01fe0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01fe4:	18 30       	R3 = R0;
ffa01fe6:	11 30       	R2 = R1;
ffa01fe8:	90 18       	IF CC JUMP 0xffa02108 <_bfin_EMAC_send+0x12c>;
ffa01fea:	00 00       	NOP;
ffa01fec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00020(-4194272) */
ffa01ff0:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01ff4:	50 95       	R0 = W[P2] (X);
ffa01ff6:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01ff8:	74 10       	IF !CC JUMP 0xffa020e0 <_bfin_EMAC_send+0x104>;
ffa01ffa:	00 00       	NOP;
ffa01ffc:	00 00       	NOP;
ffa01ffe:	00 00       	NOP;
ffa02000:	50 95       	R0 = W[P2] (X);
ffa02002:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa02004:	17 18       	IF CC JUMP 0xffa02032 <_bfin_EMAC_send+0x56>;
ffa02006:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0e48 */
ffa0200a:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa0200e:	b2 e0 09 10 	LSETUP(0xffa02012 <_bfin_EMAC_send+0x36>, 0xffa02020 <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa02012:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa02016:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa0201a:	50 95       	R0 = W[P2] (X);
ffa0201c:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0201e:	0a 18       	IF CC JUMP 0xffa02032 <_bfin_EMAC_send+0x56>;
ffa02020:	00 00       	NOP;
ffa02022:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02026:	00 e1 e8 01 	R0.L = 0x1e8;		/* (488)	R0=0xff9001e8(-7339544) */
ffa0202a:	ff e3 71 f8 	CALL 0xffa0110c <_printf_str>;
ffa0202e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02030:	53 20       	JUMP.S 0xffa020d6 <_bfin_EMAC_send+0xfa>;
ffa02032:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900000 <_l1_data_a> */
ffa02036:	0c e1 44 0e 	P4.L = 0xe44;		/* (3652)	P4=0xff900e44 <_txIdx> */
ffa0203a:	20 95       	R0 = W[P4] (Z);
ffa0203c:	10 32       	P2 = R0;
ffa0203e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e6c <_NetOurMAC> */
ffa02042:	0d e1 48 0e 	P5.L = 0xe48;		/* (3656)	P5=0xff900e48 <_txbuf> */
ffa02046:	0b 30       	R1 = R3;
ffa02048:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa0204a:	52 91       	P2 = [P2];
ffa0204c:	92 ad       	P2 = [P2 + 0x18];
ffa0204e:	12 96       	W[P2++] = R2;
ffa02050:	42 30       	R0 = P2;
ffa02052:	ff e3 05 fa 	CALL 0xffa0145c <_memcpy_>;
ffa02056:	20 95       	R0 = W[P4] (Z);
ffa02058:	10 32       	P2 = R0;
ffa0205a:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa0205c:	51 91       	P1 = [P2];
ffa0205e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa02062:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa02066:	51 93       	[P2] = P1;
ffa02068:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa0206c:	88 a1       	R0 = [P1 + 0x18];
ffa0206e:	0a e1 9a 04 	P2.L = 0x49a;		/* (1178)	P2=0xff90049a <_txdmacfg> */
ffa02072:	48 b0       	[P1 + 0x4] = R0;
ffa02074:	50 95       	R0 = W[P2] (X);
ffa02076:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0049a(-4193126) */
ffa0207a:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa0207e:	10 97       	W[P2] = R0;
ffa02080:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa02084:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02088:	10 91       	R0 = [P2];
ffa0208a:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa0208c:	10 93       	[P2] = R0;
ffa0208e:	88 a2       	R0 = [P1 + 0x28];
ffa02090:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02092:	13 10       	IF !CC JUMP 0xffa020b8 <_bfin_EMAC_send+0xdc>;
ffa02094:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa02098:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa0209c:	b2 e0 05 20 	LSETUP(0xffa020a0 <_bfin_EMAC_send+0xc4>, 0xffa020a6 <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa020a0:	88 a2       	R0 = [P1 + 0x28];
ffa020a2:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa020a4:	0a 10       	IF !CC JUMP 0xffa020b8 <_bfin_EMAC_send+0xdc>;
ffa020a6:	00 00       	NOP;
ffa020a8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001e8(-7339544) */
ffa020ac:	00 e1 00 02 	R0.L = 0x200;		/* (512)	R0=0xff900200(-7339520) */
ffa020b0:	ff e3 2e f8 	CALL 0xffa0110c <_printf_str>;
ffa020b4:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa020b6:	10 20       	JUMP.S 0xffa020d6 <_bfin_EMAC_send+0xfa>;
ffa020b8:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa020bc:	61 95 00 00 
ffa020c0:	8a a2       	R2 = [P1 + 0x28];
ffa020c2:	88 b2       	[P1 + 0x28] = R0;
ffa020c4:	c8 42       	R0 = R1.L (Z);
ffa020c6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa020ca:	10 0d       	CC = R0 <= 0x2;
ffa020cc:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_txIdx> */
ffa020d0:	14 1c       	IF CC JUMP 0xffa020f8 <_bfin_EMAC_send+0x11c> (BP);
ffa020d2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa020d4:	10 97       	W[P2] = R0;
ffa020d6:	01 e8 00 00 	UNLINK;
ffa020da:	02 30       	R0 = R2;
ffa020dc:	84 04       	(P5:4) = [SP++];
ffa020de:	10 00       	RTS;
ffa020e0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa020e4:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa020e8:	ff e3 12 f8 	CALL 0xffa0110c <_printf_str>;
ffa020ec:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa020ee:	01 e8 00 00 	UNLINK;
ffa020f2:	02 30       	R0 = R2;
ffa020f4:	84 04       	(P5:4) = [SP++];
ffa020f6:	10 00       	RTS;
ffa020f8:	01 30       	R0 = R1;
ffa020fa:	08 64       	R0 += 0x1;		/* (  1) */
ffa020fc:	10 97       	W[P2] = R0;
ffa020fe:	01 e8 00 00 	UNLINK;
ffa02102:	02 30       	R0 = R2;
ffa02104:	84 04       	(P5:4) = [SP++];
ffa02106:	10 00       	RTS;
ffa02108:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90019c(-7339620) */
ffa0210c:	00 e1 cc 01 	R0.L = 0x1cc;		/* (460)	R0=0xff9001cc(-7339572) */
ffa02110:	ff e3 c0 f8 	CALL 0xffa01290 <_printf_int>;
ffa02114:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02116:	01 e8 00 00 	UNLINK;
ffa0211a:	02 30       	R0 = R2;
ffa0211c:	84 04       	(P5:4) = [SP++];
ffa0211e:	10 00       	RTS;

ffa02120 <_ether_testUDP>:
ffa02120:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02122:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_txIdx> */
ffa02126:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0212a:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_txIdx> */
ffa0212e:	11 95       	R1 = W[P2] (Z);
ffa02130:	11 32       	P2 = R1;
ffa02132:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa02136:	09 e1 48 0e 	P1.L = 0xe48;		/* (3656)	P1=0xff900e48 <_txbuf> */
ffa0213a:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa0213e:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02140:	52 91       	P2 = [P2];
ffa02142:	95 ad       	P5 = [P2 + 0x18];
ffa02144:	55 32       	P2 = P5;
ffa02146:	11 96       	W[P2++] = R1;
ffa02148:	4a 30       	R1 = P2;
ffa0214a:	00 e3 39 08 	CALL 0xffa031bc <_ARP_req>;
ffa0214e:	00 0c       	CC = R0 == 0x0;
ffa02150:	7f 18       	IF CC JUMP 0xffa0224e <_ether_testUDP+0x12e>;
ffa02152:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_txIdx> */
ffa02156:	0a e1 6c 0e 	P2.L = 0xe6c;		/* (3692)	P2=0xff900e6c <_NetOurMAC> */
ffa0215a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0215c:	50 99       	R0 = B[P2] (X);
ffa0215e:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02162:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa02166:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0216a:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa0216e:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa02172:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02176:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa0217a:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa0217e:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa02182:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa02186:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa0218a:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa0218e:	ff e3 1f fc 	CALL 0xffa019cc <_htons>;
ffa02192:	e8 b5       	W[P5 + 0xe] = R0;
ffa02194:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa02198:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa0219c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0219e:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa021a2:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa021a4:	ff e3 14 fc 	CALL 0xffa019cc <_htons>;
ffa021a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e6c <_NetOurMAC> */
ffa021ac:	0a e1 46 0e 	P2.L = 0xe46;		/* (3654)	P2=0xff900e46 <_NetIPID> */
ffa021b0:	68 b6       	W[P5 + 0x12] = R0;
ffa021b2:	10 95       	R0 = W[P2] (Z);
ffa021b4:	08 30       	R1 = R0;
ffa021b6:	09 64       	R1 += 0x1;		/* (  1) */
ffa021b8:	11 97       	W[P2] = R1;
ffa021ba:	ff e3 09 fc 	CALL 0xffa019cc <_htons>;
ffa021be:	a8 b6       	W[P5 + 0x14] = R0;
ffa021c0:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa021c4:	ff e3 04 fc 	CALL 0xffa019cc <_htons>;
ffa021c8:	e8 b6       	W[P5 + 0x16] = R0;
ffa021ca:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa021cc:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa021d0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e46 <_NetIPID> */
ffa021d4:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa021d6:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa021da:	0a e1 78 0e 	P2.L = 0xe78;		/* (3704)	P2=0xff900e78 <_NetOurIP> */
ffa021de:	10 91       	R0 = [P2];
ffa021e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e78 <_NetOurIP> */
ffa021e4:	0a e1 3c 0e 	P2.L = 0xe3c;		/* (3644)	P2=0xff900e3c <_NetDestIP> */
ffa021e8:	e8 b1       	[P5 + 0x1c] = R0;
ffa021ea:	10 91       	R0 = [P2];
ffa021ec:	28 b2       	[P5 + 0x20] = R0;
ffa021ee:	45 30       	R0 = P5;
ffa021f0:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa021f2:	6f b7       	W[P5 + 0x1a] = R7;
ffa021f4:	80 64       	R0 += 0x10;		/* ( 16) */
ffa021f6:	ff e3 d3 fb 	CALL 0xffa0199c <_NetCksum>;
ffa021fa:	c0 43       	R0 =~ R0;
ffa021fc:	68 b7       	W[P5 + 0x1a] = R0;
ffa021fe:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa02202:	ff e3 e5 fb 	CALL 0xffa019cc <_htons>;
ffa02206:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa0220a:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa0220e:	ff e3 df fb 	CALL 0xffa019cc <_htons>;
ffa02212:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa02216:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa02218:	ff e3 da fb 	CALL 0xffa019cc <_htons>;
ffa0221c:	55 32       	P2 = P5;
ffa0221e:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa02222:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa02226:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa02228:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0222a:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa0222c:	b2 e0 03 10 	LSETUP(0xffa02230 <_ether_testUDP+0x110>, 0xffa02232 <_ether_testUDP+0x112>) LC1 = P1;
ffa02230:	11 9a       	B[P2++] = R1;
ffa02232:	09 64       	R1 += 0x1;		/* (  1) */
ffa02234:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa02238:	00 e1 14 02 	R0.L = 0x214;		/* (532)	R0=0xff900214(-7339500) */
ffa0223c:	ff e3 68 f7 	CALL 0xffa0110c <_printf_str>;
ffa02240:	ff e3 70 fd 	CALL 0xffa01d20 <_bfin_EMAC_send_nocopy>;
ffa02244:	01 e8 00 00 	UNLINK;
ffa02248:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0224a:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0224c:	10 00       	RTS;
ffa0224e:	01 e8 00 00 	UNLINK;
ffa02252:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02254:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02256:	10 00       	RTS;

ffa02258 <_eth_header_setup>:
ffa02258:	c4 04       	[--SP] = (P5:4);
ffa0225a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e3c <_NetDestIP> */
ffa0225e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02262:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_txIdx> */
ffa02266:	00 32       	P0 = R0;
ffa02268:	10 95       	R0 = W[P2] (Z);
ffa0226a:	10 32       	P2 = R0;
ffa0226c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa02270:	09 e1 48 0e 	P1.L = 0xe48;		/* (3656)	P1=0xff900e48 <_txbuf> */
ffa02274:	00 91       	R0 = [P0];
ffa02276:	21 32       	P4 = R1;
ffa02278:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0227a:	52 91       	P2 = [P2];
ffa0227c:	08 30       	R1 = R0;
ffa0227e:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa02280:	80 67       	R0 += -0x10;		/* (-16) */
ffa02282:	95 ad       	P5 = [P2 + 0x18];
ffa02284:	00 93       	[P0] = R0;
ffa02286:	02 30       	R0 = R2;
ffa02288:	55 32       	P2 = P5;
ffa0228a:	11 96       	W[P2++] = R1;
ffa0228c:	4a 30       	R1 = P2;
ffa0228e:	00 e3 97 07 	CALL 0xffa031bc <_ARP_req>;
ffa02292:	00 0c       	CC = R0 == 0x0;
ffa02294:	2b 18       	IF CC JUMP 0xffa022ea <_eth_header_setup+0x92>;
ffa02296:	00 00       	NOP;
ffa02298:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_txIdx> */
ffa0229c:	0a e1 6c 0e 	P2.L = 0xe6c;		/* (3692)	P2=0xff900e6c <_NetOurMAC> */
ffa022a0:	50 99       	R0 = B[P2] (X);
ffa022a2:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa022a6:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa022aa:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa022ae:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa022b2:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa022b6:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa022ba:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa022be:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa022c2:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa022c6:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa022ca:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa022ce:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa022d2:	ff e3 7d fb 	CALL 0xffa019cc <_htons>;
ffa022d6:	e8 b5       	W[P5 + 0xe] = R0;
ffa022d8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa022da:	20 9b       	B[P4] = R0;
ffa022dc:	4d 30       	R1 = P5;
ffa022de:	81 64       	R1 += 0x10;		/* ( 16) */
ffa022e0:	01 e8 00 00 	UNLINK;
ffa022e4:	01 30       	R0 = R1;
ffa022e6:	84 04       	(P5:4) = [SP++];
ffa022e8:	10 00       	RTS;
ffa022ea:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa022ec:	20 9b       	B[P4] = R0;
ffa022ee:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa022f0:	01 e8 00 00 	UNLINK;
ffa022f4:	01 30       	R0 = R1;
ffa022f6:	84 04       	(P5:4) = [SP++];
ffa022f8:	10 00       	RTS;
	...

ffa022fc <_icmp_packet_setup>:
ffa022fc:	e4 05       	[--SP] = (R7:4, P5:4);
ffa022fe:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02302:	29 32       	P5 = R1;
ffa02304:	7f 30       	R7 = FP;
ffa02306:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02308:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0230a:	f0 bb       	[FP -0x4] = R0;
ffa0230c:	07 30       	R0 = R7;
ffa0230e:	22 32       	P4 = R2;
ffa02310:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa02314:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa02318:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa0231c:	ff e3 9e ff 	CALL 0xffa02258 <_eth_header_setup>;
ffa02320:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa02324:	68 99 00 00 
ffa02328:	80 0c       	CC = R0 < 0x0;
ffa0232a:	14 18       	IF CC JUMP 0xffa02352 <_icmp_packet_setup+0x56>;
ffa0232c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0232e:	f0 b0       	[SP + 0xc] = R0;
ffa02330:	54 30       	R2 = P4;
ffa02332:	01 30       	R0 = R1;
ffa02334:	0f 30       	R1 = R7;
ffa02336:	ff e3 7f fb 	CALL 0xffa01a34 <_ip_header_setup>;
ffa0233a:	e9 42       	R1 = R5.L (Z);
ffa0233c:	f1 b0       	[SP + 0xc] = R1;
ffa0233e:	e1 42       	R1 = R4.L (Z);
ffa02340:	31 b1       	[SP + 0x10] = R1;
ffa02342:	72 43       	R2 = R6.B (Z);
ffa02344:	0f 30       	R1 = R7;
ffa02346:	ff e3 c1 fb 	CALL 0xffa01ac8 <_icmp_header_setup>;
ffa0234a:	01 e8 00 00 	UNLINK;
ffa0234e:	a4 05       	(R7:4, P5:4) = [SP++];
ffa02350:	10 00       	RTS;
ffa02352:	01 e8 00 00 	UNLINK;
ffa02356:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02358:	a4 05       	(R7:4, P5:4) = [SP++];
ffa0235a:	10 00       	RTS;

ffa0235c <_icmp_rx>:
ffa0235c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0235e:	28 32       	P5 = R0;
ffa02360:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02364:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02368:	39 30       	R7 = R1;
ffa0236a:	ff e3 31 fb 	CALL 0xffa019cc <_htons>;
ffa0236e:	c0 42       	R0 = R0.L (Z);
ffa02370:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa02372:	01 08       	CC = R1 == R0;
ffa02374:	06 18       	IF CC JUMP 0xffa02380 <_icmp_rx+0x24>;
ffa02376:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02378:	01 e8 00 00 	UNLINK;
ffa0237c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0237e:	10 00       	RTS;
ffa02380:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02382:	07 0a       	CC = R7 <= R0 (IU);
ffa02384:	f9 1b       	IF CC JUMP 0xffa02376 <_icmp_rx+0x1a>;
ffa02386:	00 00       	NOP;
ffa02388:	00 00       	NOP;
ffa0238a:	00 00       	NOP;
ffa0238c:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa02390:	08 0c       	CC = R0 == 0x1;
ffa02392:	f2 17       	IF !CC JUMP 0xffa02376 <_icmp_rx+0x1a> (BP);
ffa02394:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e6c <_NetOurMAC> */
ffa02398:	0a e1 78 0e 	P2.L = 0xe78;		/* (3704)	P2=0xff900e78 <_NetOurIP> */
ffa0239c:	28 a2       	R0 = [P5 + 0x20];
ffa0239e:	11 91       	R1 = [P2];
ffa023a0:	08 08       	CC = R0 == R1;
ffa023a2:	ea 17       	IF !CC JUMP 0xffa02376 <_icmp_rx+0x1a> (BP);
ffa023a4:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa023a8:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa023ac:	08 08       	CC = R0 == R1;
ffa023ae:	3e 18       	IF CC JUMP 0xffa0242a <_icmp_rx+0xce>;
ffa023b0:	00 00       	NOP;
ffa023b2:	00 00       	NOP;
ffa023b4:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa023b6:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa023ba:	08 08       	CC = R0 == R1;
ffa023bc:	dd 17       	IF !CC JUMP 0xffa02376 <_icmp_rx+0x1a> (BP);
ffa023be:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa023c2:	e9 a1       	R1 = [P5 + 0x1c];
ffa023c4:	00 e1 2c 02 	R0.L = 0x22c;		/* (556)	R0=0xff90022c(-7339476) */
ffa023c8:	ff e3 06 f8 	CALL 0xffa013d4 <_printf_ip>;
ffa023cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e78 <_NetOurIP> */
ffa023d0:	0a e1 3c 0e 	P2.L = 0xe3c;		/* (3644)	P2=0xff900e3c <_NetDestIP> */
ffa023d4:	e8 a1       	R0 = [P5 + 0x1c];
ffa023d6:	4d 30       	R1 = P5;
ffa023d8:	10 93       	[P2] = R0;
ffa023da:	41 64       	R1 += 0x8;		/* (  8) */
ffa023dc:	00 e3 f2 04 	CALL 0xffa02dc0 <_ARP_lut_add>;
ffa023e0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90022c(-7339476) */
ffa023e4:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa023e8:	ff e3 92 f6 	CALL 0xffa0110c <_printf_str>;
ffa023ec:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa023f0:	ea a1 00 00 
ffa023f4:	f0 b0       	[SP + 0xc] = R0;
ffa023f6:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa023fa:	30 b1       	[SP + 0x10] = R0;
ffa023fc:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa023fe:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa02402:	4f 30       	R1 = FP;
ffa02404:	70 b1       	[SP + 0x14] = R0;
ffa02406:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa02408:	07 30       	R0 = R7;
ffa0240a:	ff e3 79 ff 	CALL 0xffa022fc <_icmp_packet_setup>;
ffa0240e:	08 30       	R1 = R0;
ffa02410:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa02414:	00 0d       	CC = R0 <= 0x0;
ffa02416:	b0 1b       	IF CC JUMP 0xffa02376 <_icmp_rx+0x1a>;
ffa02418:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa0241a:	45 30       	R0 = P5;
ffa0241c:	17 30       	R2 = R7;
ffa0241e:	ff e3 1f f8 	CALL 0xffa0145c <_memcpy_>;
ffa02422:	ff e3 7f fc 	CALL 0xffa01d20 <_bfin_EMAC_send_nocopy>;
ffa02426:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02428:	a8 2f       	JUMP.S 0xffa02378 <_icmp_rx+0x1c>;
ffa0242a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e3c <_NetDestIP> */
ffa0242e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02430:	0a e1 cc 0b 	P2.L = 0xbcc;		/* (3020)	P2=0xff900bcc <_g_streamEnabled> */
ffa02434:	10 9b       	B[P2] = R0;
ffa02436:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02438:	a0 2f       	JUMP.S 0xffa02378 <_icmp_rx+0x1c>;
	...

ffa0243c <_udp_packet_setup>:
ffa0243c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0243e:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02442:	29 32       	P5 = R1;
ffa02444:	7f 30       	R7 = FP;
ffa02446:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e44 <_txIdx> */
ffa0244a:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa0244c:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0244e:	0c e1 7c 0e 	P4.L = 0xe7c;		/* (3708)	P4=0xff900e7c <_NetDataDestIP> */
ffa02452:	f0 bb       	[FP -0x4] = R0;
ffa02454:	22 91       	R2 = [P4];
ffa02456:	07 30       	R0 = R7;
ffa02458:	ff e3 00 ff 	CALL 0xffa02258 <_eth_header_setup>;
ffa0245c:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa02460:	68 99 00 00 
ffa02464:	80 0c       	CC = R0 < 0x0;
ffa02466:	14 18       	IF CC JUMP 0xffa0248e <_udp_packet_setup+0x52>;
ffa02468:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0246a:	f0 b0       	[SP + 0xc] = R0;
ffa0246c:	01 30       	R0 = R1;
ffa0246e:	22 91       	R2 = [P4];
ffa02470:	0f 30       	R1 = R7;
ffa02472:	ff e3 e1 fa 	CALL 0xffa01a34 <_ip_header_setup>;
ffa02476:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa0247a:	f1 b0       	[SP + 0xc] = R1;
ffa0247c:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa02480:	0f 30       	R1 = R7;
ffa02482:	ff e3 47 fb 	CALL 0xffa01b10 <_udp_header_setup>;
ffa02486:	01 e8 00 00 	UNLINK;
ffa0248a:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0248c:	10 00       	RTS;
ffa0248e:	01 e8 00 00 	UNLINK;
ffa02492:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02494:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02496:	10 00       	RTS;

ffa02498 <_SetupTxBuffer>:
ffa02498:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0249a:	38 30       	R7 = R0;
ffa0249c:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa024a0:	c7 40       	R7 *= R0;
ffa024a2:	17 32       	P2 = R7;
ffa024a4:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800e48 */
ffa024a8:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa024ac:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa024b0:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa024b4:	6a 5b       	P5 = P2 + P5;
ffa024b6:	c7 51       	R7 = R7 + R0;
ffa024b8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa024bc:	45 30       	R0 = P5;
ffa024be:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa024c0:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa024c2:	ff e3 dd f7 	CALL 0xffa0147c <_memset_>;
ffa024c6:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa024ca:	af b1 00 00 
ffa024ce:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa024d2:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa024d6:	ff e3 d3 f7 	CALL 0xffa0147c <_memset_>;
ffa024da:	45 30       	R0 = P5;
ffa024dc:	60 64       	R0 += 0xc;		/* ( 12) */
ffa024de:	28 93       	[P5] = R0;
ffa024e0:	a8 a1       	R0 = [P5 + 0x18];
ffa024e2:	68 b0       	[P5 + 0x4] = R0;
ffa024e4:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa024e8:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa024ea:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa024ec:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa024ee:	10 54       	R0 = R0 & R2;
ffa024f0:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa024f2:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa024f6:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa024f8:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa024fc:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa024fe:	18 54       	R0 = R0 & R3;
ffa02500:	08 56       	R0 = R0 | R1;
ffa02502:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa02506:	08 56       	R0 = R0 | R1;
ffa02508:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0250c:	45 30       	R0 = P5;
ffa0250e:	40 65       	R0 += 0x28;		/* ( 40) */
ffa02510:	28 b1       	[P5 + 0x10] = R0;
ffa02512:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa02516:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02518:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0251a:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa0251e:	10 54       	R0 = R0 & R2;
ffa02520:	08 56       	R0 = R0 | R1;
ffa02522:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa02526:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa0252a:	18 54       	R0 = R0 & R3;
ffa0252c:	39 64       	R1 += 0x7;		/* (  7) */
ffa0252e:	08 54       	R0 = R0 & R1;
ffa02530:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02534:	ed bc       	[P5 + 0xc] = P5;
ffa02536:	01 e8 00 00 	UNLINK;
ffa0253a:	45 30       	R0 = P5;
ffa0253c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0253e:	10 00       	RTS;

ffa02540 <_SetupRxBuffer>:
ffa02540:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02542:	38 30       	R7 = R0;
ffa02544:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02548:	c7 40       	R7 *= R0;
ffa0254a:	17 32       	P2 = R7;
ffa0254c:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa02550:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa02554:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02558:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa0255c:	6a 5b       	P5 = P2 + P5;
ffa0255e:	c7 51       	R7 = R7 + R0;
ffa02560:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02564:	45 30       	R0 = P5;
ffa02566:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02568:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa0256a:	ff e3 89 f7 	CALL 0xffa0147c <_memset_>;
ffa0256e:	af b1       	[P5 + 0x18] = R7;
ffa02570:	07 30       	R0 = R7;
ffa02572:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa02576:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa0257a:	ff e3 81 f7 	CALL 0xffa0147c <_memset_>;
ffa0257e:	45 30       	R0 = P5;
ffa02580:	60 64       	R0 += 0xc;		/* ( 12) */
ffa02582:	28 93       	[P5] = R0;
ffa02584:	a8 a1       	R0 = [P5 + 0x18];
ffa02586:	68 b0       	[P5 + 0x4] = R0;
ffa02588:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa0258c:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0258e:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa02590:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02592:	08 54       	R0 = R0 & R1;
ffa02594:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02596:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0259a:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa0259c:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa025a0:	38 54       	R0 = R0 & R7;
ffa025a2:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa025a4:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa025a8:	18 56       	R0 = R0 | R3;
ffa025aa:	10 56       	R0 = R0 | R2;
ffa025ac:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa025b0:	45 30       	R0 = P5;
ffa025b2:	20 65       	R0 += 0x24;		/* ( 36) */
ffa025b4:	28 b1       	[P5 + 0x10] = R0;
ffa025b6:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa025ba:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa025bc:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa025be:	08 54       	R0 = R0 & R1;
ffa025c0:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa025c4:	08 56       	R0 = R0 | R1;
ffa025c6:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa025ca:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa025ce:	38 54       	R0 = R0 & R7;
ffa025d0:	18 56       	R0 = R0 | R3;
ffa025d2:	10 56       	R0 = R0 | R2;
ffa025d4:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa025d8:	ed bc       	[P5 + 0xc] = P5;
ffa025da:	01 e8 00 00 	UNLINK;
ffa025de:	45 30       	R0 = P5;
ffa025e0:	bd 05       	(R7:7, P5:5) = [SP++];
ffa025e2:	10 00       	RTS;

ffa025e4 <_SetupSystemRegs>:
ffa025e4:	f5 05       	[--SP] = (R7:6, P5:5);
ffa025e6:	28 32       	P5 = R0;
ffa025e8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa025ec:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa025f0:	00 e1 48 02 	R0.L = 0x248;		/* (584)	R0=0xff900248(-7339448) */
ffa025f4:	ff e3 8c f5 	CALL 0xffa0110c <_printf_str>;
ffa025f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bcc(-4191284) */
ffa025fc:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa02600:	50 95       	R0 = W[P2] (X);
ffa02602:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa02606:	08 54       	R0 = R0 & R1;
ffa02608:	10 97       	W[P2] = R0;
ffa0260a:	50 95       	R0 = W[P2] (X);
ffa0260c:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa0260e:	10 97       	W[P2] = R0;
ffa02610:	82 6f       	P2 += -0x10;		/* (-16) */
ffa02612:	51 95       	R1 = W[P2] (X);
ffa02614:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa02618:	08 56       	R0 = R0 | R1;
ffa0261a:	10 97       	W[P2] = R0;
ffa0261c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0261e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02620:	10 97       	W[P2] = R0;
ffa02622:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa02624:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa02626:	10 97       	W[P2] = R0;
ffa02628:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa0262c:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa02630:	50 95       	R0 = W[P2] (X);
ffa02632:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa02634:	10 97       	W[P2] = R0;
ffa02636:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa0263a:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa0263e:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa02642:	10 93       	[P2] = R0;
ffa02644:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02646:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa0264a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0264c:	ff e3 4c f9 	CALL 0xffa018e4 <_WrPHYReg>;
ffa02650:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02654:	ff e3 f2 f8 	CALL 0xffa01838 <_udelay>;
ffa02658:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0265a:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0265c:	ff e3 60 f9 	CALL 0xffa0191c <_RdPHYReg>;
ffa02660:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02662:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa02664:	0e 20       	JUMP.S 0xffa02680 <_SetupSystemRegs+0x9c>;
ffa02666:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa0266a:	ff e3 e7 f8 	CALL 0xffa01838 <_udelay>;
ffa0266e:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02670:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02672:	ff e3 55 f9 	CALL 0xffa0191c <_RdPHYReg>;
ffa02676:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02678:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa0267c:	0f 08       	CC = R7 == R1;
ffa0267e:	35 18       	IF CC JUMP 0xffa026e8 <_SetupSystemRegs+0x104>;
ffa02680:	06 54       	R0 = R6 & R0;
ffa02682:	00 0c       	CC = R0 == 0x0;
ffa02684:	f1 1f       	IF CC JUMP 0xffa02666 <_SetupSystemRegs+0x82> (BP);
ffa02686:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa02688:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0268a:	ff e3 49 f9 	CALL 0xffa0191c <_RdPHYReg>;
ffa0268e:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa02692:	01 54       	R0 = R1 & R0;
ffa02694:	00 0c       	CC = R0 == 0x0;
ffa02696:	27 1c       	IF CC JUMP 0xffa026e4 <_SetupSystemRegs+0x100> (BP);
ffa02698:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0269a:	d0 4f       	R0 <<= 0x1a;
ffa0269c:	28 93       	[P5] = R0;
ffa0269e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa026a2:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa026a4:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa026a8:	10 93       	[P2] = R0;
ffa026aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa026ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026b0:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa026b4:	10 97       	W[P2] = R0;
ffa026b6:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa026b8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa026ba:	11 97       	W[P2] = R1;
ffa026bc:	22 6c       	P2 += 0x4;		/* (  4) */
ffa026be:	10 97       	W[P2] = R0;
ffa026c0:	22 6c       	P2 += 0x4;		/* (  4) */
ffa026c2:	10 97       	W[P2] = R0;
ffa026c4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa026c8:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa026cc:	10 97       	W[P2] = R0;
ffa026ce:	22 6c       	P2 += 0x4;		/* (  4) */
ffa026d0:	11 97       	W[P2] = R1;
ffa026d2:	22 6c       	P2 += 0x4;		/* (  4) */
ffa026d4:	10 97       	W[P2] = R0;
ffa026d6:	22 6c       	P2 += 0x4;		/* (  4) */
ffa026d8:	10 97       	W[P2] = R0;
ffa026da:	01 e8 00 00 	UNLINK;
ffa026de:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026e0:	b5 05       	(R7:6, P5:5) = [SP++];
ffa026e2:	10 00       	RTS;
ffa026e4:	28 93       	[P5] = R0;
ffa026e6:	dc 2f       	JUMP.S 0xffa0269e <_SetupSystemRegs+0xba>;
ffa026e8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa026ec:	00 e1 60 02 	R0.L = 0x260;		/* (608)	R0=0xff900260(-7339424) */
ffa026f0:	ff e3 0e f5 	CALL 0xffa0110c <_printf_str>;
ffa026f4:	01 e8 00 00 	UNLINK;
ffa026f8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa026fa:	b5 05       	(R7:6, P5:5) = [SP++];
ffa026fc:	10 00       	RTS;
	...

ffa02700 <_SetupMacAddr>:
ffa02700:	10 32       	P2 = R0;
ffa02702:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02704:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02706:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0270a:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa0270e:	10 9b       	B[P2] = R0;
ffa02710:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa02712:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa02716:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa02718:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa0271c:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa0271e:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa02722:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa02726:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa0272a:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0272c:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02730:	10 99       	R0 = B[P2] (Z);
ffa02732:	08 56       	R0 = R0 | R1;
ffa02734:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa02738:	89 4f       	R1 <<= 0x11;
ffa0273a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00e48(-4190648) */
ffa0273e:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa02742:	08 56       	R0 = R0 | R1;
ffa02744:	08 93       	[P1] = R0;
ffa02746:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa0274a:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa0274e:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa02752:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa02754:	28 93       	[P5] = R0;
ffa02756:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa0275a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa0275e:	09 91       	R1 = [P1];
ffa02760:	07 e1 64 0a 	R7.L = 0xa64;		/* (2660)	R7=0xff900a64(-7337372) */
ffa02764:	00 e1 94 02 	R0.L = 0x294;		/* (660)	R0=0xff900294(-7339372) */
ffa02768:	ff e3 38 f5 	CALL 0xffa011d8 <_printf_hex>;
ffa0276c:	07 30       	R0 = R7;
ffa0276e:	ff e3 cf f4 	CALL 0xffa0110c <_printf_str>;
ffa02772:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900294(-7339372) */
ffa02776:	29 91       	R1 = [P5];
ffa02778:	00 e1 a0 02 	R0.L = 0x2a0;		/* (672)	R0=0xff9002a0(-7339360) */
ffa0277c:	ff e3 2e f5 	CALL 0xffa011d8 <_printf_hex>;
ffa02780:	01 e8 00 00 	UNLINK;
ffa02784:	07 30       	R0 = R7;
ffa02786:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02788:	ff e2 c2 f4 	JUMP.L 0xffa0110c <_printf_str>;

ffa0278c <_bfin_EMAC_init>:
ffa0278c:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0278e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002a0(-7339360) */
ffa02792:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02796:	00 e1 ac 02 	R0.L = 0x2ac;		/* (684)	R0=0xff9002ac(-7339348) */
ffa0279a:	ff e3 b9 f4 	CALL 0xffa0110c <_printf_str>;
ffa0279e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 */
ffa027a2:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa027a4:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_txIdx> */
ffa027a8:	16 97       	W[P2] = R6;
ffa027aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_txIdx> */
ffa027ae:	0a e1 58 0e 	P2.L = 0xe58;		/* (3672)	P2=0xff900e58 <_rxIdx> */
ffa027b2:	16 97       	W[P2] = R6;
ffa027b4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e58 <_rxIdx> */
ffa027b8:	0a e1 46 0e 	P2.L = 0xe46;		/* (3654)	P2=0xff900e46 <_NetIPID> */
ffa027bc:	16 97       	W[P2] = R6;
ffa027be:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e46 <_NetIPID> */
ffa027c2:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa027c4:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetSubnetMask> */
ffa027c8:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa027ca:	17 93       	[P2] = R7;
ffa027cc:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa027d0:	f0 b0       	[SP + 0xc] = R0;
ffa027d2:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa027d4:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa027d8:	ff e3 50 f8 	CALL 0xffa01878 <_FormatIPAddress>;
ffa027dc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e74 <_NetSubnetMask> */
ffa027e0:	0a e1 78 0e 	P2.L = 0xe78;		/* (3704)	P2=0xff900e78 <_NetOurIP> */
ffa027e4:	10 93       	[P2] = R0;
ffa027e6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa027e8:	f0 b0       	[SP + 0xc] = R0;
ffa027ea:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa027ee:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa027f0:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa027f4:	ff e3 42 f8 	CALL 0xffa01878 <_FormatIPAddress>;
ffa027f8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e78 <_NetOurIP> */
ffa027fc:	0a e1 3c 0e 	P2.L = 0xe3c;		/* (3644)	P2=0xff900e3c <_NetDestIP> */
ffa02800:	10 93       	[P2] = R0;
ffa02802:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02804:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa02806:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa0280a:	f0 b0       	[SP + 0xc] = R0;
ffa0280c:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa02810:	ff e3 34 f8 	CALL 0xffa01878 <_FormatIPAddress>;
ffa02814:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e3c <_NetDestIP> */
ffa02818:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetDataDestIP> */
ffa0281c:	10 93       	[P2] = R0;
ffa0281e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e7c <_NetDataDestIP> */
ffa02822:	0a e1 5c 0f 	P2.L = 0xf5c;		/* (3932)	P2=0xff900f5c <_TcpState> */
ffa02826:	17 93       	[P2] = R7;
ffa02828:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f5c <_TcpState> */
ffa0282c:	0a e1 54 0f 	P2.L = 0xf54;		/* (3924)	P2=0xff900f54 <_TcpSeqClient> */
ffa02830:	17 93       	[P2] = R7;
ffa02832:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa02836:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f54 <_TcpSeqClient> */
ffa0283a:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa0283e:	0a e1 50 0f 	P2.L = 0xf50;		/* (3920)	P2=0xff900f50 <_TcpSeqHost> */
ffa02842:	10 93       	[P2] = R0;
ffa02844:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f50 <_TcpSeqHost> */
ffa02848:	0a e1 68 0f 	P2.L = 0xf68;		/* (3944)	P2=0xff900f68 <_TcpClientPort> */
ffa0284c:	16 97       	W[P2] = R6;
ffa0284e:	00 e3 6b 02 	CALL 0xffa02d24 <_ARP_init>;
ffa02852:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00f68(-4190360) */
ffa02856:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa0285a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa0285e:	17 93       	[P2] = R7;
ffa02860:	00 e1 6c 0e 	R0.L = 0xe6c;		/* (3692)	R0=0xff900e6c <_NetOurMAC>(-7336340) */
ffa02864:	ff e3 4e ff 	CALL 0xffa02700 <_SetupMacAddr>;
ffa02868:	47 30       	R0 = FP;
ffa0286a:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa0286c:	ff e3 bc fe 	CALL 0xffa025e4 <_SetupSystemRegs>;
ffa02870:	80 0c       	CC = R0 < 0x0;
ffa02872:	7a 18       	IF CC JUMP 0xffa02966 <_bfin_EMAC_init+0x1da>;
ffa02874:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa02878:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0287a:	07 e1 5c 0e 	R7.L = 0xe5c;		/* (3676)	R7=0xff900e5c <_rxbuf>(-7336356) */
ffa0287e:	ff e3 61 fe 	CALL 0xffa02540 <_SetupRxBuffer>;
ffa02882:	07 32       	P0 = R7;
ffa02884:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02886:	00 93       	[P0] = R0;
ffa02888:	17 32       	P2 = R7;
ffa0288a:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa0288c:	44 30       	R0 = P4;
ffa0288e:	ff e3 59 fe 	CALL 0xffa02540 <_SetupRxBuffer>;
ffa02892:	44 0c       	CC = P4 == 0x0;
ffa02894:	08 32       	P1 = R0;
ffa02896:	28 92       	[P5++] = R0;
ffa02898:	52 18       	IF CC JUMP 0xffa0293c <_bfin_EMAC_init+0x1b0>;
ffa0289a:	07 32       	P0 = R7;
ffa0289c:	5c 0c       	CC = P4 == 0x3;
ffa0289e:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa028a0:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa028a4:	d0 b0       	[P2 + 0xc] = R0;
ffa028a6:	54 18       	IF CC JUMP 0xffa0294e <_bfin_EMAC_init+0x1c2>;
ffa028a8:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa028aa:	5c 0d       	CC = P4 <= 0x3;
ffa028ac:	ee 1f       	IF CC JUMP 0xffa02888 <_bfin_EMAC_init+0xfc> (BP);
ffa028ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa028b0:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df4 <_printf_temp> */
ffa028b4:	ff e3 f2 fd 	CALL 0xffa02498 <_SetupTxBuffer>;
ffa028b8:	0b e1 48 0e 	P3.L = 0xe48;		/* (3656)	P3=0xff900e48 <_txbuf> */
ffa028bc:	18 93       	[P3] = R0;
ffa028be:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa028c0:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa028c2:	44 30       	R0 = P4;
ffa028c4:	ff e3 ea fd 	CALL 0xffa02498 <_SetupTxBuffer>;
ffa028c8:	44 0c       	CC = P4 == 0x0;
ffa028ca:	08 32       	P1 = R0;
ffa028cc:	28 92       	[P5++] = R0;
ffa028ce:	35 18       	IF CC JUMP 0xffa02938 <_bfin_EMAC_init+0x1ac>;
ffa028d0:	00 00       	NOP;
ffa028d2:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa028d4:	5c 0c       	CC = P4 == 0x3;
ffa028d6:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa028da:	d0 b0       	[P2 + 0xc] = R0;
ffa028dc:	32 18       	IF CC JUMP 0xffa02940 <_bfin_EMAC_init+0x1b4>;
ffa028de:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa028e0:	5c 0d       	CC = P4 <= 0x3;
ffa028e2:	ef 1f       	IF CC JUMP 0xffa028c0 <_bfin_EMAC_init+0x134> (BP);
ffa028e4:	17 32       	P2 = R7;
ffa028e6:	51 91       	P1 = [P2];
ffa028e8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa028ec:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa028f0:	51 93       	[P2] = P1;
ffa028f2:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa028f4:	42 6c       	P2 += 0x8;		/* (  8) */
ffa028f6:	10 97       	W[P2] = R0;
ffa028f8:	ff e3 e8 f7 	CALL 0xffa018c8 <_PollMdcDone>;
ffa028fc:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa028fe:	f0 b9       	R0 = [FP -0x4];
ffa02900:	d1 4f       	R1 <<= 0x1a;
ffa02902:	08 08       	CC = R0 == R1;
ffa02904:	2c 18       	IF CC JUMP 0xffa0295c <_bfin_EMAC_init+0x1d0>;
ffa02906:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa0290a:	01 30       	R0 = R1;
ffa0290c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa02910:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02914:	10 93       	[P2] = R0;
ffa02916:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0291a:	00 e1 bc 02 	R0.L = 0x2bc;		/* (700)	R0=0xff9002bc(-7339332) */
ffa0291e:	ff e3 5d f4 	CALL 0xffa011d8 <_printf_hex>;
ffa02922:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002bc(-7339332) */
ffa02926:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa0292a:	ff e3 f1 f3 	CALL 0xffa0110c <_printf_str>;
ffa0292e:	01 e8 00 00 	UNLINK;
ffa02932:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02934:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02936:	10 00       	RTS;
ffa02938:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa0293a:	c4 2f       	JUMP.S 0xffa028c2 <_bfin_EMAC_init+0x136>;
ffa0293c:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa0293e:	a7 2f       	JUMP.S 0xffa0288c <_bfin_EMAC_init+0x100>;
ffa02940:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa02944:	0a e1 48 0e 	P2.L = 0xe48;		/* (3656)	P2=0xff900e48 <_txbuf> */
ffa02948:	10 91       	R0 = [P2];
ffa0294a:	c8 b0       	[P1 + 0xc] = R0;
ffa0294c:	cc 2f       	JUMP.S 0xffa028e4 <_bfin_EMAC_init+0x158>;
ffa0294e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e48 <_txbuf> */
ffa02952:	0a e1 5c 0e 	P2.L = 0xe5c;		/* (3676)	P2=0xff900e5c <_rxbuf> */
ffa02956:	10 91       	R0 = [P2];
ffa02958:	c8 b0       	[P1 + 0xc] = R0;
ffa0295a:	aa 2f       	JUMP.S 0xffa028ae <_bfin_EMAC_init+0x122>;
ffa0295c:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02960:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa02962:	01 30       	R0 = R1;
ffa02964:	d4 2f       	JUMP.S 0xffa0290c <_bfin_EMAC_init+0x180>;
ffa02966:	01 e8 00 00 	UNLINK;
ffa0296a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0296c:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0296e:	10 00       	RTS;

ffa02970 <_bfin_EMAC_recv_poll>:
ffa02970:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02972:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa02976:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa0297a:	0d e1 5c 0e 	P5.L = 0xe5c;		/* (3676)	P5=0xff900e5c <_rxbuf> */
ffa0297e:	0c e1 58 0e 	P4.L = 0xe58;		/* (3672)	P4=0xff900e58 <_rxIdx> */
ffa02982:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02986:	28 30       	R5 = R0;
ffa02988:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0298a:	75 30       	R6 = P5;
ffa0298c:	5c 32       	P3 = P4;
ffa0298e:	06 20       	JUMP.S 0xffa0299a <_bfin_EMAC_recv_poll+0x2a>;
ffa02990:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02992:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02996:	07 08       	CC = R7 == R0;
ffa02998:	0c 18       	IF CC JUMP 0xffa029b0 <_bfin_EMAC_recv_poll+0x40>;
ffa0299a:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa0299e:	ff e3 4d f7 	CALL 0xffa01838 <_udelay>;
ffa029a2:	20 95       	R0 = W[P4] (Z);
ffa029a4:	10 32       	P2 = R0;
ffa029a6:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa029a8:	52 91       	P2 = [P2];
ffa029aa:	90 a2       	R0 = [P2 + 0x28];
ffa029ac:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa029ae:	f1 1f       	IF CC JUMP 0xffa02990 <_bfin_EMAC_recv_poll+0x20> (BP);
ffa029b0:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa029b4:	91 a2       	R1 = [P2 + 0x28];
ffa029b6:	41 54       	R1 = R1 & R0;
ffa029b8:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa029ba:	01 09       	CC = R1 <= R0;
ffa029bc:	07 10       	IF !CC JUMP 0xffa029ca <_bfin_EMAC_recv_poll+0x5a>;
ffa029be:	01 e8 00 00 	UNLINK;
ffa029c2:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa029c4:	07 30       	R0 = R7;
ffa029c6:	a3 05       	(R7:4, P5:3) = [SP++];
ffa029c8:	10 00       	RTS;
ffa029ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa029cc:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa029d0:	90 b2 00 00 
ffa029d4:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa029d6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa029da:	0f 30       	R1 = R7;
ffa029dc:	00 e1 c8 02 	R0.L = 0x2c8;		/* (712)	R0=0xff9002c8(-7339320) */
ffa029e0:	ff e3 58 f4 	CALL 0xffa01290 <_printf_int>;
ffa029e4:	18 95       	R0 = W[P3] (Z);
ffa029e6:	10 32       	P2 = R0;
ffa029e8:	0e 32       	P1 = R6;
ffa029ea:	0f 30       	R1 = R7;
ffa029ec:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa029ee:	52 91       	P2 = [P2];
ffa029f0:	90 a1       	R0 = [P2 + 0x18];
ffa029f2:	15 32       	P2 = R5;
ffa029f4:	10 93       	[P2] = R0;
ffa029f6:	00 e3 4b 02 	CALL 0xffa02e8c <_ARP_rx>;
ffa029fa:	00 0c       	CC = R0 == 0x0;
ffa029fc:	1f 18       	IF CC JUMP 0xffa02a3a <_bfin_EMAC_recv_poll+0xca>;
ffa029fe:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02a00:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02a04:	20 95       	R0 = W[P4] (Z);
ffa02a06:	10 32       	P2 = R0;
ffa02a08:	61 95       	R1 = W[P4] (X);
ffa02a0a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a0c:	09 e1 58 0e 	P1.L = 0xe58;		/* (3672)	P1=0xff900e58 <_rxIdx> */
ffa02a10:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02a12:	52 91       	P2 = [P2];
ffa02a14:	90 b2       	[P2 + 0x28] = R0;
ffa02a16:	c8 42       	R0 = R1.L (Z);
ffa02a18:	10 0d       	CC = R0 <= 0x2;
ffa02a1a:	08 1c       	IF CC JUMP 0xffa02a2a <_bfin_EMAC_recv_poll+0xba> (BP);
ffa02a1c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a1e:	08 97       	W[P1] = R0;
ffa02a20:	01 e8 00 00 	UNLINK;
ffa02a24:	07 30       	R0 = R7;
ffa02a26:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02a28:	10 00       	RTS;
ffa02a2a:	01 30       	R0 = R1;
ffa02a2c:	08 64       	R0 += 0x1;		/* (  1) */
ffa02a2e:	08 97       	W[P1] = R0;
ffa02a30:	01 e8 00 00 	UNLINK;
ffa02a34:	07 30       	R0 = R7;
ffa02a36:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02a38:	10 00       	RTS;
ffa02a3a:	0d 32       	P1 = R5;
ffa02a3c:	0f 30       	R1 = R7;
ffa02a3e:	08 91       	R0 = [P1];
ffa02a40:	ff e3 8e fc 	CALL 0xffa0235c <_icmp_rx>;
ffa02a44:	00 0c       	CC = R0 == 0x0;
ffa02a46:	dd 1f       	IF CC JUMP 0xffa02a00 <_bfin_EMAC_recv_poll+0x90> (BP);
ffa02a48:	db 2f       	JUMP.S 0xffa029fe <_bfin_EMAC_recv_poll+0x8e>;
	...

ffa02a4c <_DHCP_rx>:
ffa02a4c:	ed 05       	[--SP] = (R7:5, P5:5);
ffa02a4e:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02a52:	6f 30       	R5 = FP;
ffa02a54:	e5 67       	R5 += -0x4;		/* ( -4) */
ffa02a56:	01 20       	JUMP.S 0xffa02a58 <_DHCP_rx+0xc>;
ffa02a58:	05 30       	R0 = R5;
ffa02a5a:	ff e3 8b ff 	CALL 0xffa02970 <_bfin_EMAC_recv_poll>;
ffa02a5e:	38 30       	R7 = R0;
ffa02a60:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa02a64:	87 51       	R6 = R7 + R0;
ffa02a66:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa02a6a:	00 e1 08 03 	R0.L = 0x308;		/* (776)	R0=0xff900308(-7339256) */
ffa02a6e:	0e 30       	R1 = R6;
ffa02a70:	ff e3 10 f4 	CALL 0xffa01290 <_printf_int>;
ffa02a74:	20 e1 1b 01 	R0 = 0x11b (X);		/*		R0=0x11b(283) */
ffa02a78:	07 09       	CC = R7 <= R0;
ffa02a7a:	fd b9       	P5 = [FP -0x4];
ffa02a7c:	0c 18       	IF CC JUMP 0xffa02a94 <_DHCP_rx+0x48>;
ffa02a7e:	00 00       	NOP;
ffa02a80:	00 00       	NOP;
ffa02a82:	00 00       	NOP;
ffa02a84:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa02a86:	ff e3 a3 f7 	CALL 0xffa019cc <_htons>;
ffa02a8a:	c0 42       	R0 = R0.L (Z);
ffa02a8c:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa02a90:	08 08       	CC = R0 == R1;
ffa02a92:	08 18       	IF CC JUMP 0xffa02aa2 <_DHCP_rx+0x56>;
ffa02a94:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011b(-7339749) */
ffa02a98:	00 e1 ec 02 	R0.L = 0x2ec;		/* (748)	R0=0xff9002ec(-7339284) */
ffa02a9c:	ff e3 38 f3 	CALL 0xffa0110c <_printf_str>;
ffa02aa0:	dc 2f       	JUMP.S 0xffa02a58 <_DHCP_rx+0xc>;
ffa02aa2:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa02aa6:	ff e3 93 f7 	CALL 0xffa019cc <_htons>;
ffa02aaa:	c0 42       	R0 = R0.L (Z);
ffa02aac:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa02ab0:	01 08       	CC = R1 == R0;
ffa02ab2:	d3 17       	IF !CC JUMP 0xffa02a58 <_DHCP_rx+0xc> (BP);
ffa02ab4:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa02ab8:	ff e3 8a f7 	CALL 0xffa019cc <_htons>;
ffa02abc:	c0 42       	R0 = R0.L (Z);
ffa02abe:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa02ac2:	01 08       	CC = R1 == R0;
ffa02ac4:	ca 17       	IF !CC JUMP 0xffa02a58 <_DHCP_rx+0xc> (BP);
ffa02ac6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e5c(-4190628) */
ffa02aca:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa02ace:	11 91       	R1 = [P2];
ffa02ad0:	28 a3       	R0 = [P5 + 0x30];
ffa02ad2:	08 08       	CC = R0 == R1;
ffa02ad4:	c2 17       	IF !CC JUMP 0xffa02a58 <_DHCP_rx+0xc> (BP);
ffa02ad6:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa02ada:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa02ade:	ff e3 83 f7 	CALL 0xffa019e4 <_htonl>;
ffa02ae2:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa02ae6:	01 08       	CC = R1 == R0;
ffa02ae8:	b8 17       	IF !CC JUMP 0xffa02a58 <_DHCP_rx+0xc> (BP);
ffa02aea:	4d 30       	R1 = P5;
ffa02aec:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa02af0:	01 50       	R0 = R1 + R0;
ffa02af2:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa02af6:	f0 bb 00 00 
ffa02afa:	ff e3 59 f8 	CALL 0xffa01bac <_DHCP_parse>;
ffa02afe:	e9 a3       	R1 = [P5 + 0x3c];
ffa02b00:	01 0c       	CC = R1 == 0x0;
ffa02b02:	12 1c       	IF CC JUMP 0xffa02b26 <_DHCP_rx+0xda> (BP);
ffa02b04:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa02b08:	0a e1 78 0e 	P2.L = 0xe78;		/* (3704)	P2=0xff900e78 <_NetOurIP> */
ffa02b0c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa02b10:	11 93       	[P2] = R1;
ffa02b12:	00 e1 dc 02 	R0.L = 0x2dc;		/* (732)	R0=0xff9002dc(-7339300) */
ffa02b16:	ff e3 5f f4 	CALL 0xffa013d4 <_printf_ip>;
ffa02b1a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002dc(-7339300) */
ffa02b1e:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02b22:	ff e3 f5 f2 	CALL 0xffa0110c <_printf_str>;
ffa02b26:	01 e8 00 00 	UNLINK;
ffa02b2a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02b2c:	ad 05       	(R7:5, P5:5) = [SP++];
ffa02b2e:	10 00       	RTS;

ffa02b30 <_DHCP_req>:
ffa02b30:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02b32:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e5c <_rxbuf> */
ffa02b36:	0d e1 40 0e 	P5.L = 0xe40;		/* (3648)	P5=0xff900e40 <_NetDHCPserv> */
ffa02b3a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02b3c:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02b40:	28 93       	[P5] = R0;
ffa02b42:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa02b44:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa02b48:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02b4a:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa02b4e:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa02b52:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02b54:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02b58:	7f 30       	R7 = FP;
ffa02b5a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa02b5e:	00 e1 1c 03 	R0.L = 0x31c;		/* (796)	R0=0xff90031c(-7339236) */
ffa02b62:	a7 67       	R7 += -0xc;		/* (-12) */
ffa02b64:	ff e3 d4 f2 	CALL 0xffa0110c <_printf_str>;
ffa02b68:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa02b6c:	2a 91 00 00 
ffa02b70:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02b72:	ff e3 45 f9 	CALL 0xffa01dfc <_DHCP_tx>;
ffa02b76:	ff e3 6b ff 	CALL 0xffa02a4c <_DHCP_rx>;
ffa02b7a:	29 91       	R1 = [P5];
ffa02b7c:	39 0c       	CC = R1 == -0x1;
ffa02b7e:	43 18       	IF CC JUMP 0xffa02c04 <_DHCP_req+0xd4>;
ffa02b80:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e78 <_NetOurIP> */
ffa02b84:	0a e1 78 0e 	P2.L = 0xe78;		/* (3704)	P2=0xff900e78 <_NetOurIP> */
ffa02b88:	10 91       	R0 = [P2];
ffa02b8a:	00 0c       	CC = R0 == 0x0;
ffa02b8c:	08 18       	IF CC JUMP 0xffa02b9c <_DHCP_req+0x6c>;
ffa02b8e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e78 <_NetOurIP> */
ffa02b92:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetSubnetMask> */
ffa02b96:	10 91       	R0 = [P2];
ffa02b98:	00 0c       	CC = R0 == 0x0;
ffa02b9a:	30 10       	IF !CC JUMP 0xffa02bfa <_DHCP_req+0xca>;
ffa02b9c:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa02b9e:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa02ba2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ba4:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa02ba8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02baa:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa02bae:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02bb0:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02bb4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02bb6:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa02bba:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa02bbe:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa02bc2:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa02bc6:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa02bca:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa02bce:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa02bd2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02bd4:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa02bd8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa02bdc:	00 e1 4c 03 	R0.L = 0x34c;		/* (844)	R0=0xff90034c(-7339188) */
ffa02be0:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa02be4:	ff e3 94 f2 	CALL 0xffa0110c <_printf_str>;
ffa02be8:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02bea:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa02bee:	2a 91 00 00 
ffa02bf2:	ff e3 05 f9 	CALL 0xffa01dfc <_DHCP_tx>;
ffa02bf6:	ff e3 2b ff 	CALL 0xffa02a4c <_DHCP_rx>;
ffa02bfa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02bfc:	01 e8 00 00 	UNLINK;
ffa02c00:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02c02:	10 00       	RTS;
ffa02c04:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02c08:	00 e1 30 03 	R0.L = 0x330;		/* (816)	R0=0xff900330(-7339216) */
ffa02c0c:	ff e3 80 f2 	CALL 0xffa0110c <_printf_str>;
ffa02c10:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02c12:	f5 2f       	JUMP.S 0xffa02bfc <_DHCP_req+0xcc>;

ffa02c14 <_bfin_EMAC_recv>:
ffa02c14:	eb 05       	[--SP] = (R7:5, P5:3);
ffa02c16:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e58 <_rxIdx> */
ffa02c1a:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000 <_l1_data_a>(-7340032) */
ffa02c1e:	0c e1 58 0e 	P4.L = 0xe58;		/* (3672)	P4=0xff900e58 <_rxIdx> */
ffa02c22:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00e48(-4190648) */
ffa02c26:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02c2a:	28 32       	P5 = R0;
ffa02c2c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02c2e:	05 e1 5c 0e 	R5.L = 0xe5c;		/* (3676)	R5=0xff900e5c <_rxbuf>(-7336356) */
ffa02c32:	74 30       	R6 = P4;
ffa02c34:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa02c38:	0e 32       	P1 = R6;
ffa02c3a:	08 95       	R0 = W[P1] (Z);
ffa02c3c:	10 32       	P2 = R0;
ffa02c3e:	0d 32       	P1 = R5;
ffa02c40:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02c42:	52 91       	P2 = [P2];
ffa02c44:	90 a2       	R0 = [P2 + 0x28];
ffa02c46:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02c48:	46 18       	IF CC JUMP 0xffa02cd4 <_bfin_EMAC_recv+0xc0>;
ffa02c4a:	00 00       	NOP;
ffa02c4c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c4e:	a0 4f       	R0 <<= 0x14;
ffa02c50:	91 a2       	R1 = [P2 + 0x28];
ffa02c52:	81 54       	R2 = R1 & R0;
ffa02c54:	02 0c       	CC = R2 == 0x0;
ffa02c56:	45 10       	IF !CC JUMP 0xffa02ce0 <_bfin_EMAC_recv+0xcc>;
ffa02c58:	00 00       	NOP;
ffa02c5a:	00 00       	NOP;
ffa02c5c:	00 00       	NOP;
ffa02c5e:	90 a2       	R0 = [P2 + 0x28];
ffa02c60:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa02c62:	4a 18       	IF CC JUMP 0xffa02cf6 <_bfin_EMAC_recv+0xe2>;
ffa02c64:	00 00       	NOP;
ffa02c66:	00 00       	NOP;
ffa02c68:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02c6c:	91 a2       	R1 = [P2 + 0x28];
ffa02c6e:	c1 55       	R7 = R1 & R0;
ffa02c70:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02c72:	07 09       	CC = R7 <= R0;
ffa02c74:	4c 18       	IF CC JUMP 0xffa02d0c <_bfin_EMAC_recv+0xf8>;
ffa02c76:	00 00       	NOP;
ffa02c78:	00 00       	NOP;
ffa02c7a:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02c7c:	90 a1       	R0 = [P2 + 0x18];
ffa02c7e:	59 95       	R1 = W[P3] (X);
ffa02c80:	28 93       	[P5] = R0;
ffa02c82:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02c84:	08 56       	R0 = R0 | R1;
ffa02c86:	18 97       	W[P3] = R0;
ffa02c88:	61 95       	R1 = W[P4] (X);
ffa02c8a:	c8 42       	R0 = R1.L (Z);
ffa02c8c:	10 0d       	CC = R0 <= 0x2;
ffa02c8e:	92 b2       	[P2 + 0x28] = R2;
ffa02c90:	1e 1c       	IF CC JUMP 0xffa02ccc <_bfin_EMAC_recv+0xb8> (BP);
ffa02c92:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02c94:	20 97       	W[P4] = R0;
ffa02c96:	28 91       	R0 = [P5];
ffa02c98:	0f 30       	R1 = R7;
ffa02c9a:	00 e3 f9 00 	CALL 0xffa02e8c <_ARP_rx>;
ffa02c9e:	00 0c       	CC = R0 == 0x0;
ffa02ca0:	03 18       	IF CC JUMP 0xffa02ca6 <_bfin_EMAC_recv+0x92>;
ffa02ca2:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02ca4:	ca 2f       	JUMP.S 0xffa02c38 <_bfin_EMAC_recv+0x24>;
ffa02ca6:	28 91       	R0 = [P5];
ffa02ca8:	0f 30       	R1 = R7;
ffa02caa:	ff e3 59 fb 	CALL 0xffa0235c <_icmp_rx>;
ffa02cae:	00 0c       	CC = R0 == 0x0;
ffa02cb0:	f9 17       	IF !CC JUMP 0xffa02ca2 <_bfin_EMAC_recv+0x8e> (BP);
ffa02cb2:	28 91       	R0 = [P5];
ffa02cb4:	0f 30       	R1 = R7;
ffa02cb6:	00 e3 49 04 	CALL 0xffa03548 <_tcp_rx>;
ffa02cba:	00 0c       	CC = R0 == 0x0;
ffa02cbc:	f3 17       	IF !CC JUMP 0xffa02ca2 <_bfin_EMAC_recv+0x8e> (BP);
ffa02cbe:	07 0d       	CC = R7 <= 0x0;
ffa02cc0:	bc 1f       	IF CC JUMP 0xffa02c38 <_bfin_EMAC_recv+0x24> (BP);
ffa02cc2:	01 e8 00 00 	UNLINK;
ffa02cc6:	07 30       	R0 = R7;
ffa02cc8:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02cca:	10 00       	RTS;
ffa02ccc:	01 30       	R0 = R1;
ffa02cce:	08 64       	R0 += 0x1;		/* (  1) */
ffa02cd0:	20 97       	W[P4] = R0;
ffa02cd2:	e2 2f       	JUMP.S 0xffa02c96 <_bfin_EMAC_recv+0x82>;
ffa02cd4:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02cd6:	01 e8 00 00 	UNLINK;
ffa02cda:	07 30       	R0 = R7;
ffa02cdc:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02cde:	10 00       	RTS;
ffa02ce0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02ce4:	00 e1 60 03 	R0.L = 0x360;		/* (864)	R0=0xff900360(-7339168) */
ffa02ce8:	ff e3 12 f2 	CALL 0xffa0110c <_printf_str>;
ffa02cec:	01 e8 00 00 	UNLINK;
ffa02cf0:	07 30       	R0 = R7;
ffa02cf2:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02cf4:	10 00       	RTS;
ffa02cf6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900360(-7339168) */
ffa02cfa:	00 e1 7c 03 	R0.L = 0x37c;		/* (892)	R0=0xff90037c(-7339140) */
ffa02cfe:	ff e3 07 f2 	CALL 0xffa0110c <_printf_str>;
ffa02d02:	01 e8 00 00 	UNLINK;
ffa02d06:	07 30       	R0 = R7;
ffa02d08:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02d0a:	10 00       	RTS;
ffa02d0c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90037c(-7339140) */
ffa02d10:	00 e1 90 03 	R0.L = 0x390;		/* (912)	R0=0xff900390(-7339120) */
ffa02d14:	ff e3 fc f1 	CALL 0xffa0110c <_printf_str>;
ffa02d18:	01 e8 00 00 	UNLINK;
ffa02d1c:	07 30       	R0 = R7;
ffa02d1e:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02d20:	10 00       	RTS;
	...

ffa02d24 <_ARP_init>:
ffa02d24:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e74 <_NetSubnetMask> */
ffa02d28:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02d2c:	0a e1 84 0e 	P2.L = 0xe84;		/* (3716)	P2=0xff900e84 <_NetArpLut> */
ffa02d30:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02d32:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02d34:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02d36:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa02d38:	b2 e0 12 10 	LSETUP(0xffa02d3c <_ARP_init+0x18>, 0xffa02d5c <_ARP_init+0x38>) LC1 = P1;
ffa02d3c:	11 93       	[P2] = R1;
ffa02d3e:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02d42:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02d46:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa02d4a:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa02d4e:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02d52:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02d56:	52 b5       	W[P2 + 0xa] = R2;
ffa02d58:	d1 b0       	[P2 + 0xc] = R1;
ffa02d5a:	11 b1       	[P2 + 0x10] = R1;
ffa02d5c:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa02d5e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e84 <_NetArpLut> */
ffa02d62:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02d66:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetArpLut_age> */
ffa02d6a:	10 97       	W[P2] = R0;
ffa02d6c:	01 e8 00 00 	UNLINK;
ffa02d70:	10 00       	RTS;
	...

ffa02d74 <_ARP_lut_find>:
ffa02d74:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e44 <_txIdx> */
ffa02d78:	08 e1 84 0e 	P0.L = 0xe84;		/* (3716)	P0=0xff900e84 <_NetArpLut> */
ffa02d7c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02d80:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02d82:	48 32       	P1 = P0;
ffa02d84:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02d86:	b2 e0 06 20 	LSETUP(0xffa02d8a <_ARP_lut_find+0x16>, 0xffa02d92 <_ARP_lut_find+0x1e>) LC1 = P2;
ffa02d8a:	08 91       	R0 = [P1];
ffa02d8c:	00 0c       	CC = R0 == 0x0;
ffa02d8e:	14 18       	IF CC JUMP 0xffa02db6 <_ARP_lut_find+0x42>;
ffa02d90:	0a 64       	R2 += 0x1;		/* (  1) */
ffa02d92:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02d94:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa02d98:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02d9a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02d9c:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa02d9e:	09 e1 a2 0e 	P1.L = 0xea2;		/* (3746)	P1=0xff900ea2 */
ffa02da2:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa02da4:	b2 e0 08 20 	LSETUP(0xffa02da8 <_ARP_lut_find+0x34>, 0xffa02db4 <_ARP_lut_find+0x40>) LC1 = P2;
ffa02da8:	08 95       	R0 = W[P1] (Z);
ffa02daa:	03 09       	CC = R3 <= R0;
ffa02dac:	03 18       	IF CC JUMP 0xffa02db2 <_ARP_lut_find+0x3e>;
ffa02dae:	11 30       	R2 = R1;
ffa02db0:	18 30       	R3 = R0;
ffa02db2:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02db4:	09 64       	R1 += 0x1;		/* (  1) */
ffa02db6:	02 30       	R0 = R2;
ffa02db8:	01 e8 00 00 	UNLINK;
ffa02dbc:	10 00       	RTS;
	...

ffa02dc0 <_ARP_lut_add>:
ffa02dc0:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02dc2:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e40 <_NetDHCPserv> */
ffa02dc6:	0d e1 84 0e 	P5.L = 0xe84;		/* (3716)	P5=0xff900e84 <_NetArpLut> */
ffa02dca:	31 30       	R6 = R1;
ffa02dcc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02dd0:	38 30       	R7 = R0;
ffa02dd2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02dd4:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa02dd6:	4d 32       	P1 = P5;
ffa02dd8:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02dda:	00 00       	NOP;
ffa02ddc:	08 91       	R0 = [P1];
ffa02dde:	07 08       	CC = R7 == R0;
ffa02de0:	11 07       	IF CC R2 = R1;
ffa02de2:	09 64       	R1 += 0x1;		/* (  1) */
ffa02de4:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa02de6:	42 0c       	CC = P2 == 0x0;
ffa02de8:	23 10       	IF !CC JUMP 0xffa02e2e <_ARP_lut_add+0x6e>;
ffa02dea:	82 0c       	CC = R2 < 0x0;
ffa02dec:	25 18       	IF CC JUMP 0xffa02e36 <_ARP_lut_add+0x76>;
ffa02dee:	82 c6 12 82 	R1 = R2 << 0x2;
ffa02df2:	0a 32       	P1 = R2;
ffa02df4:	11 32       	P2 = R1;
ffa02df6:	06 32       	P0 = R6;
ffa02df8:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa02dfa:	6a 5a       	P1 = P2 + P5;
ffa02dfc:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02dfe:	0f 93       	[P1] = R7;
ffa02e00:	aa 5a       	P2 = P2 + P5;
ffa02e02:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02e04:	b2 e0 03 10 	LSETUP(0xffa02e08 <_ARP_lut_add+0x48>, 0xffa02e0a <_ARP_lut_add+0x4a>) LC1 = P1;
ffa02e08:	40 98       	R0 = B[P0++] (X);
ffa02e0a:	10 9a       	B[P2++] = R0;
ffa02e0c:	51 41       	R1 = (R1 + R2) << 0x2;
ffa02e0e:	09 32       	P1 = R1;
ffa02e10:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa02e14:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetArpLut_age> */
ffa02e18:	50 95       	R0 = W[P2] (X);
ffa02e1a:	08 64       	R0 += 0x1;		/* (  1) */
ffa02e1c:	10 97       	W[P2] = R0;
ffa02e1e:	a9 5a       	P2 = P1 + P5;
ffa02e20:	50 b5       	W[P2 + 0xa] = R0;
ffa02e22:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e24:	10 b1       	[P2 + 0x10] = R0;
ffa02e26:	01 e8 00 00 	UNLINK;
ffa02e2a:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02e2c:	10 00       	RTS;
ffa02e2e:	82 0c       	CC = R2 < 0x0;
ffa02e30:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02e32:	d4 1f       	IF CC JUMP 0xffa02dda <_ARP_lut_add+0x1a> (BP);
ffa02e34:	dd 2f       	JUMP.S 0xffa02dee <_ARP_lut_add+0x2e>;
ffa02e36:	ff e3 9f ff 	CALL 0xffa02d74 <_ARP_lut_find>;
ffa02e3a:	10 30       	R2 = R0;
ffa02e3c:	d9 2f       	JUMP.S 0xffa02dee <_ARP_lut_add+0x2e>;
	...

ffa02e40 <_ARP_lu>:
ffa02e40:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02e44:	c4 04       	[--SP] = (P5:4);
ffa02e46:	09 e1 84 0e 	P1.L = 0xe84;		/* (3716)	P1=0xff900e84 <_NetArpLut> */
ffa02e4a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02e4e:	10 30       	R2 = R0;
ffa02e50:	29 32       	P5 = R1;
ffa02e52:	61 32       	P4 = P1;
ffa02e54:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa02e56:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02e58:	b2 e0 06 20 	LSETUP(0xffa02e5c <_ARP_lu+0x1c>, 0xffa02e64 <_ARP_lu+0x24>) LC1 = P2;
ffa02e5c:	08 91       	R0 = [P1];
ffa02e5e:	10 08       	CC = R0 == R2;
ffa02e60:	08 18       	IF CC JUMP 0xffa02e70 <_ARP_lu+0x30>;
ffa02e62:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa02e64:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02e66:	01 e8 00 00 	UNLINK;
ffa02e6a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02e6c:	84 04       	(P5:4) = [SP++];
ffa02e6e:	10 00       	RTS;
ffa02e70:	08 a1       	R0 = [P1 + 0x10];
ffa02e72:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02e74:	f7 1f       	IF CC JUMP 0xffa02e62 <_ARP_lu+0x22> (BP);
ffa02e76:	60 5a       	P1 = P0 + P4;
ffa02e78:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa02e7a:	b2 e0 03 20 	LSETUP(0xffa02e7e <_ARP_lu+0x3e>, 0xffa02e80 <_ARP_lu+0x40>) LC1 = P2;
ffa02e7e:	48 98       	R0 = B[P1++] (X);
ffa02e80:	28 9a       	B[P5++] = R0;
ffa02e82:	01 e8 00 00 	UNLINK;
ffa02e86:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e88:	84 04       	(P5:4) = [SP++];
ffa02e8a:	10 00       	RTS;

ffa02e8c <_ARP_rx>:
ffa02e8c:	fb 05       	[--SP] = (R7:7, P5:3);
ffa02e8e:	20 32       	P4 = R0;
ffa02e90:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02e94:	39 30       	R7 = R1;
ffa02e96:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa02e98:	ff e3 9a f5 	CALL 0xffa019cc <_htons>;
ffa02e9c:	c0 42       	R0 = R0.L (Z);
ffa02e9e:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa02ea2:	08 08       	CC = R0 == R1;
ffa02ea4:	06 18       	IF CC JUMP 0xffa02eb0 <_ARP_rx+0x24>;
ffa02ea6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02ea8:	01 e8 00 00 	UNLINK;
ffa02eac:	bb 05       	(R7:7, P5:3) = [SP++];
ffa02eae:	10 00       	RTS;
ffa02eb0:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02eb2:	07 0a       	CC = R7 <= R0 (IU);
ffa02eb4:	f9 1f       	IF CC JUMP 0xffa02ea6 <_ARP_rx+0x1a> (BP);
ffa02eb6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02eb8:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02eba:	ff e3 89 f5 	CALL 0xffa019cc <_htons>;
ffa02ebe:	c0 42       	R0 = R0.L (Z);
ffa02ec0:	07 08       	CC = R7 == R0;
ffa02ec2:	f2 17       	IF !CC JUMP 0xffa02ea6 <_ARP_rx+0x1a> (BP);
ffa02ec4:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02ec8:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02eca:	ff e3 81 f5 	CALL 0xffa019cc <_htons>;
ffa02ece:	c0 42       	R0 = R0.L (Z);
ffa02ed0:	07 08       	CC = R7 == R0;
ffa02ed2:	ea 17       	IF !CC JUMP 0xffa02ea6 <_ARP_rx+0x1a> (BP);
ffa02ed4:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02ed6:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02eda:	08 08       	CC = R0 == R1;
ffa02edc:	e5 17       	IF !CC JUMP 0xffa02ea6 <_ARP_rx+0x1a> (BP);
ffa02ede:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02ee0:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02ee2:	ff e3 75 f5 	CALL 0xffa019cc <_htons>;
ffa02ee6:	c0 42       	R0 = R0.L (Z);
ffa02ee8:	07 08       	CC = R7 == R0;
ffa02eea:	0c 14       	IF !CC JUMP 0xffa02f02 <_ARP_rx+0x76> (BP);
ffa02eec:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa02ef0:	0a e1 6c 0e 	P2.L = 0xe6c;		/* (3692)	P2=0xff900e6c <_NetOurMAC> */
ffa02ef4:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa02ef8:	10 99       	R0 = B[P2] (Z);
ffa02efa:	01 08       	CC = R1 == R0;
ffa02efc:	ae 18       	IF CC JUMP 0xffa03058 <_ARP_rx+0x1cc>;
ffa02efe:	00 00       	NOP;
ffa02f00:	00 00       	NOP;
ffa02f02:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f04:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02f06:	ff e3 63 f5 	CALL 0xffa019cc <_htons>;
ffa02f0a:	c0 42       	R0 = R0.L (Z);
ffa02f0c:	07 08       	CC = R7 == R0;
ffa02f0e:	cc 17       	IF !CC JUMP 0xffa02ea6 <_ARP_rx+0x1a> (BP);
ffa02f10:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02f14:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02f16:	ff e3 5b f5 	CALL 0xffa019cc <_htons>;
ffa02f1a:	c0 42       	R0 = R0.L (Z);
ffa02f1c:	07 08       	CC = R7 == R0;
ffa02f1e:	c4 17       	IF !CC JUMP 0xffa02ea6 <_ARP_rx+0x1a> (BP);
ffa02f20:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02f22:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02f26:	08 08       	CC = R0 == R1;
ffa02f28:	bf 17       	IF !CC JUMP 0xffa02ea6 <_ARP_rx+0x1a> (BP);
ffa02f2a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f2c:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02f2e:	ff e3 4f f5 	CALL 0xffa019cc <_htons>;
ffa02f32:	c0 42       	R0 = R0.L (Z);
ffa02f34:	07 08       	CC = R7 == R0;
ffa02f36:	b8 17       	IF !CC JUMP 0xffa02ea6 <_ARP_rx+0x1a> (BP);
ffa02f38:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa02f3c:	07 e1 78 0e 	R7.L = 0xe78;		/* (3704)	R7=0xff900e78 <_NetOurIP>(-7336328) */
ffa02f40:	17 32       	P2 = R7;
ffa02f42:	a1 a2       	R1 = [P4 + 0x28];
ffa02f44:	10 91       	R0 = [P2];
ffa02f46:	01 08       	CC = R1 == R0;
ffa02f48:	af 17       	IF !CC JUMP 0xffa02ea6 <_ARP_rx+0x1a> (BP);
ffa02f4a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e6c <_NetOurMAC> */
ffa02f4e:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_txIdx> */
ffa02f52:	10 95       	R0 = W[P2] (Z);
ffa02f54:	10 32       	P2 = R0;
ffa02f56:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e84 <_NetArpLut> */
ffa02f5a:	09 e1 48 0e 	P1.L = 0xe48;		/* (3656)	P1=0xff900e48 <_txbuf> */
ffa02f5e:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa02f60:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e84 <_NetArpLut> */
ffa02f64:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02f66:	52 91       	P2 = [P2];
ffa02f68:	0d e1 6c 0e 	P5.L = 0xe6c;		/* (3692)	P5=0xff900e6c <_NetOurMAC> */
ffa02f6c:	93 ad       	P3 = [P2 + 0x18];
ffa02f6e:	18 97       	W[P3] = R0;
ffa02f70:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa02f74:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa02f78:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa02f7c:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa02f80:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa02f84:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa02f88:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa02f8c:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa02f90:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa02f94:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa02f98:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa02f9c:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa02fa0:	68 99       	R0 = B[P5] (X);
ffa02fa2:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa02fa6:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02faa:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa02fae:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02fb2:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa02fb6:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02fba:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa02fbe:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02fc2:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa02fc6:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02fca:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa02fce:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02fd2:	ff e3 fd f4 	CALL 0xffa019cc <_htons>;
ffa02fd6:	d8 b5       	W[P3 + 0xe] = R0;
ffa02fd8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02fda:	ff e3 f9 f4 	CALL 0xffa019cc <_htons>;
ffa02fde:	18 b6       	W[P3 + 0x10] = R0;
ffa02fe0:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02fe4:	ff e3 f4 f4 	CALL 0xffa019cc <_htons>;
ffa02fe8:	58 b6       	W[P3 + 0x12] = R0;
ffa02fea:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02fec:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa02ff0:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02ff2:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa02ff6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02ff8:	ff e3 ea f4 	CALL 0xffa019cc <_htons>;
ffa02ffc:	44 32       	P0 = P4;
ffa02ffe:	d8 b6       	W[P3 + 0x16] = R0;
ffa03000:	53 32       	P2 = P3;
ffa03002:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa03004:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa03006:	b2 e0 08 10 	LSETUP(0xffa0300a <_ARP_rx+0x17e>, 0xffa03016 <_ARP_rx+0x18a>) LC1 = P1;
ffa0300a:	68 98       	R0 = B[P5++] (X);
ffa0300c:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa03010:	40 98       	R0 = B[P0++] (X);
ffa03012:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa03016:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa03018:	17 32       	P2 = R7;
ffa0301a:	50 99       	R0 = B[P2] (X);
ffa0301c:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa03020:	10 91       	R0 = [P2];
ffa03022:	40 4e       	R0 >>= 0x8;
ffa03024:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa03028:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa0302c:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa03030:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa03034:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa03038:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa0303c:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa03040:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa03044:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa03048:	f3 b0       	[SP + 0xc] = R3;
ffa0304a:	ff e3 17 f4 	CALL 0xffa01878 <_FormatIPAddress>;
ffa0304e:	98 b2       	[P3 + 0x28] = R0;
ffa03050:	ff e3 68 f6 	CALL 0xffa01d20 <_bfin_EMAC_send_nocopy>;
ffa03054:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03056:	29 2f       	JUMP.S 0xffa02ea8 <_ARP_rx+0x1c>;
ffa03058:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa0305c:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa03060:	01 08       	CC = R1 == R0;
ffa03062:	50 17       	IF !CC JUMP 0xffa02f02 <_ARP_rx+0x76> (BP);
ffa03064:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa03068:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa0306c:	01 08       	CC = R1 == R0;
ffa0306e:	4a 17       	IF !CC JUMP 0xffa02f02 <_ARP_rx+0x76> (BP);
ffa03070:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa03074:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa03078:	01 08       	CC = R1 == R0;
ffa0307a:	44 17       	IF !CC JUMP 0xffa02f02 <_ARP_rx+0x76> (BP);
ffa0307c:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa03080:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa03084:	01 08       	CC = R1 == R0;
ffa03086:	3e 17       	IF !CC JUMP 0xffa02f02 <_ARP_rx+0x76> (BP);
ffa03088:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa0308c:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa03090:	01 08       	CC = R1 == R0;
ffa03092:	38 17       	IF !CC JUMP 0xffa02f02 <_ARP_rx+0x76> (BP);
ffa03094:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa03096:	44 30       	R0 = P4;
ffa03098:	ff e3 ba f4 	CALL 0xffa01a0c <_pack4chars>;
ffa0309c:	38 30       	R7 = R0;
ffa0309e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa030a2:	0f 30       	R1 = R7;
ffa030a4:	00 e1 9c 04 	R0.L = 0x49c;		/* (1180)	R0=0xff90049c(-7338852) */
ffa030a8:	ff e3 96 f1 	CALL 0xffa013d4 <_printf_ip>;
ffa030ac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90049c(-7338852) */
ffa030b0:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa030b4:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa030b6:	ff e3 2b f0 	CALL 0xffa0110c <_printf_str>;
ffa030ba:	07 30       	R0 = R7;
ffa030bc:	4c 30       	R1 = P4;
ffa030be:	ff e3 81 fe 	CALL 0xffa02dc0 <_ARP_lut_add>;
ffa030c2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa030c4:	f2 2e       	JUMP.S 0xffa02ea8 <_ARP_rx+0x1c>;
	...

ffa030c8 <_ARP_tx>:
ffa030c8:	fc 05       	[--SP] = (R7:7, P5:4);
ffa030ca:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_txIdx> */
ffa030ce:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa030d2:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_txIdx> */
ffa030d6:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa030da:	10 95 00 00 
ffa030de:	10 32       	P2 = R0;
ffa030e0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa030e4:	09 e1 48 0e 	P1.L = 0xe48;		/* (3656)	P1=0xff900e48 <_txbuf> */
ffa030e8:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa030ea:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e6c <_NetOurMAC> */
ffa030ee:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa030f0:	52 91       	P2 = [P2];
ffa030f2:	0d e1 6c 0e 	P5.L = 0xe6c;		/* (3692)	P5=0xff900e6c <_NetOurMAC> */
ffa030f6:	94 ad       	P4 = [P2 + 0x18];
ffa030f8:	20 97       	W[P4] = R0;
ffa030fa:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa030fc:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa03100:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa03104:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa03108:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa0310c:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa03110:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa03114:	68 99       	R0 = B[P5] (X);
ffa03116:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa0311a:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa0311e:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa03122:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa03126:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa0312a:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa0312e:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa03132:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa03136:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa0313a:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa0313e:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa03142:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa03146:	ff e3 43 f4 	CALL 0xffa019cc <_htons>;
ffa0314a:	e0 b5       	W[P4 + 0xe] = R0;
ffa0314c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0314e:	ff e3 3f f4 	CALL 0xffa019cc <_htons>;
ffa03152:	20 b6       	W[P4 + 0x10] = R0;
ffa03154:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03158:	ff e3 3a f4 	CALL 0xffa019cc <_htons>;
ffa0315c:	60 b6       	W[P4 + 0x12] = R0;
ffa0315e:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03160:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa03164:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03166:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa0316a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0316c:	ff e3 30 f4 	CALL 0xffa019cc <_htons>;
ffa03170:	e0 b6       	W[P4 + 0x16] = R0;
ffa03172:	54 32       	P2 = P4;
ffa03174:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03176:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa03178:	b2 e0 07 10 	LSETUP(0xffa0317c <_ARP_tx+0xb4>, 0xffa03186 <_ARP_tx+0xbe>) LC1 = P1;
ffa0317c:	68 98       	R0 = B[P5++] (X);
ffa0317e:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa03182:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa03186:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa03188:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_txIdx> */
ffa0318c:	0a e1 78 0e 	P2.L = 0xe78;		/* (3704)	P2=0xff900e78 <_NetOurIP> */
ffa03190:	50 99       	R0 = B[P2] (X);
ffa03192:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa03196:	10 91       	R0 = [P2];
ffa03198:	40 4e       	R0 >>= 0x8;
ffa0319a:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa0319e:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa031a2:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa031a6:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa031aa:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa031ae:	a7 b2       	[P4 + 0x28] = R7;
ffa031b0:	01 e8 00 00 	UNLINK;
ffa031b4:	bc 05       	(R7:7, P5:4) = [SP++];
ffa031b6:	ff e2 b5 f5 	JUMP.L 0xffa01d20 <_bfin_EMAC_send_nocopy>;
	...

ffa031bc <_ARP_req>:
ffa031bc:	ec 05       	[--SP] = (R7:5, P5:4);
ffa031be:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa031c2:	38 30       	R7 = R0;
ffa031c4:	ff e3 3e fe 	CALL 0xffa02e40 <_ARP_lu>;
ffa031c8:	00 0c       	CC = R0 == 0x0;
ffa031ca:	50 10       	IF !CC JUMP 0xffa0326a <_ARP_req+0xae>;
ffa031cc:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800e78 */
ffa031d0:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa031d4:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e58 <_rxIdx> */
ffa031d8:	16 91       	R6 = [P2];
ffa031da:	0c e1 84 0e 	P4.L = 0xe84;		/* (3716)	P4=0xff900e84 <_NetArpLut> */
ffa031de:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa031e2:	4c 32       	P1 = P4;
ffa031e4:	46 51       	R5 = R6 + R0;
ffa031e6:	6c 32       	P5 = P4;
ffa031e8:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa031ea:	b2 e0 06 20 	LSETUP(0xffa031ee <_ARP_req+0x32>, 0xffa031f6 <_ARP_req+0x3a>) LC1 = P2;
ffa031ee:	08 91       	R0 = [P1];
ffa031f0:	07 08       	CC = R7 == R0;
ffa031f2:	21 18       	IF CC JUMP 0xffa03234 <_ARP_req+0x78>;
ffa031f4:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa031f6:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa031f8:	ff e3 be fd 	CALL 0xffa02d74 <_ARP_lut_find>;
ffa031fc:	10 32       	P2 = R0;
ffa031fe:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03200:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa03204:	09 e1 80 0e 	P1.L = 0xe80;		/* (3712)	P1=0xff900e80 <_NetArpLut_age> */
ffa03208:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa0320a:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa0320c:	10 b1       	[P2 + 0x10] = R0;
ffa0320e:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa03212:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa03216:	17 93 00 00 
ffa0321a:	d0 b0       	[P2 + 0xc] = R0;
ffa0321c:	48 95       	R0 = W[P1] (X);
ffa0321e:	08 64       	R0 += 0x1;		/* (  1) */
ffa03220:	08 97       	W[P1] = R0;
ffa03222:	50 b5       	W[P2 + 0xa] = R0;
ffa03224:	07 30       	R0 = R7;
ffa03226:	ff e3 51 ff 	CALL 0xffa030c8 <_ARP_tx>;
ffa0322a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0322c:	01 e8 00 00 	UNLINK;
ffa03230:	ac 05       	(R7:5, P5:4) = [SP++];
ffa03232:	10 00       	RTS;
ffa03234:	08 a1       	R0 = [P1 + 0x10];
ffa03236:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa03238:	de 1f       	IF CC JUMP 0xffa031f4 <_ARP_req+0x38> (BP);
ffa0323a:	e8 a0       	R0 = [P5 + 0xc];
ffa0323c:	86 09       	CC = R6 < R0 (IU);
ffa0323e:	f6 1f       	IF CC JUMP 0xffa0322a <_ARP_req+0x6e> (BP);
ffa03240:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03244:	0f 30       	R1 = R7;
ffa03246:	00 e1 c0 04 	R0.L = 0x4c0;		/* (1216)	R0=0xff9004c0(-7338816) */
ffa0324a:	ff e3 c5 f0 	CALL 0xffa013d4 <_printf_ip>;
ffa0324e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004c0(-7338816) */
ffa03252:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa03256:	ff e3 5b ef 	CALL 0xffa0110c <_printf_str>;
ffa0325a:	07 30       	R0 = R7;
ffa0325c:	ff e3 36 ff 	CALL 0xffa030c8 <_ARP_tx>;
ffa03260:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa03264:	ed b0 00 00 
ffa03268:	e2 2f       	JUMP.S 0xffa0322c <_ARP_req+0x70>;
ffa0326a:	01 e8 00 00 	UNLINK;
ffa0326e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03270:	ac 05       	(R7:5, P5:4) = [SP++];
ffa03272:	10 00       	RTS;

ffa03274 <_tcp_length>:
ffa03274:	c5 04       	[--SP] = (P5:5);
ffa03276:	28 32       	P5 = R0;
ffa03278:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0327c:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa0327e:	ff e3 a7 f3 	CALL 0xffa019cc <_htons>;
ffa03282:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa03286:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa03288:	51 54       	R1 = R1 & R2;
ffa0328a:	11 4f       	R1 <<= 0x2;
ffa0328c:	c0 42       	R0 = R0.L (Z);
ffa0328e:	08 52       	R0 = R0 - R1;
ffa03290:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa03294:	11 4d       	R1 >>>= 0x2;
ffa03296:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa03298:	51 54       	R1 = R1 & R2;
ffa0329a:	01 e8 00 00 	UNLINK;
ffa0329e:	08 52       	R0 = R0 - R1;
ffa032a0:	85 04       	(P5:5) = [SP++];
ffa032a2:	10 00       	RTS;

ffa032a4 <_tcp_checksum_calc>:
ffa032a4:	08 32       	P1 = R0;
ffa032a6:	ed 05       	[--SP] = (R7:5, P5:5);
ffa032a8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa032ac:	28 32       	P5 = R0;
ffa032ae:	31 30       	R6 = R1;
ffa032b0:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa032b2:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa032b4:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa032b6:	b2 e0 03 20 	LSETUP(0xffa032ba <_tcp_checksum_calc+0x16>, 0xffa032bc <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa032ba:	08 94       	R0 = W[P1++] (Z);
ffa032bc:	45 51       	R5 = R5 + R0;
ffa032be:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa032c2:	10 4e       	R0 >>= 0x2;
ffa032c4:	06 50       	R0 = R6 + R0;
ffa032c6:	c0 42       	R0 = R0.L (Z);
ffa032c8:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa032cc:	ff e3 80 f3 	CALL 0xffa019cc <_htons>;
ffa032d0:	47 4f       	R7 <<= 0x8;
ffa032d2:	c0 42       	R0 = R0.L (Z);
ffa032d4:	c7 51       	R7 = R7 + R0;
ffa032d6:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa032d8:	ef 50       	R3 = R7 + R5;
ffa032da:	0d 1c       	IF CC JUMP 0xffa032f4 <_tcp_checksum_calc+0x50> (BP);
ffa032dc:	0e 32       	P1 = R6;
ffa032de:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa032e2:	10 4e       	R0 >>= 0x2;
ffa032e4:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa032e6:	0e 64       	R6 += 0x1;		/* (  1) */
ffa032e8:	a9 5a       	P2 = P1 + P5;
ffa032ea:	08 32       	P1 = R0;
ffa032ec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa032ee:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa032f0:	8a 5a       	P2 = P2 + P1;
ffa032f2:	10 9b       	B[P2] = R0;
ffa032f4:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa032f8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa032fa:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa032fe:	71 50       	R1 = R1 + R6;
ffa03300:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03304:	09 4d       	R1 >>>= 0x1;
ffa03306:	18 4e       	R0 >>= 0x3;
ffa03308:	41 50       	R1 = R1 + R0;
ffa0330a:	01 0d       	CC = R1 <= 0x0;
ffa0330c:	09 18       	IF CC JUMP 0xffa0331e <_tcp_checksum_calc+0x7a>;
ffa0330e:	55 32       	P2 = P5;
ffa03310:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa03312:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa03314:	0a 64       	R2 += 0x1;		/* (  1) */
ffa03316:	10 94       	R0 = W[P2++] (Z);
ffa03318:	0a 08       	CC = R2 == R1;
ffa0331a:	c3 50       	R3 = R3 + R0;
ffa0331c:	fc 17       	IF !CC JUMP 0xffa03314 <_tcp_checksum_calc+0x70> (BP);
ffa0331e:	d8 42       	R0 = R3.L (Z);
ffa03320:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa03324:	08 50       	R0 = R0 + R1;
ffa03326:	c0 43       	R0 =~ R0;
ffa03328:	01 e8 00 00 	UNLINK;
ffa0332c:	c0 42       	R0 = R0.L (Z);
ffa0332e:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03330:	10 00       	RTS;
	...

ffa03334 <_tcp_checksum_set>:
ffa03334:	c5 04       	[--SP] = (P5:5);
ffa03336:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa0333a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0333e:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_txIdx> */
ffa03342:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa03346:	10 95 00 00 
ffa0334a:	10 32       	P2 = R0;
ffa0334c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e80 <_NetArpLut_age> */
ffa03350:	09 e1 48 0e 	P1.L = 0xe48;		/* (3656)	P1=0xff900e48 <_txbuf> */
ffa03354:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03356:	52 91       	P2 = [P2];
ffa03358:	95 ad       	P5 = [P2 + 0x18];
ffa0335a:	45 30       	R0 = P5;
ffa0335c:	ff e3 a4 ff 	CALL 0xffa032a4 <_tcp_checksum_calc>;
ffa03360:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa03364:	01 e8 00 00 	UNLINK;
ffa03368:	85 04       	(P5:5) = [SP++];
ffa0336a:	10 00       	RTS;

ffa0336c <_tcp_checksum_check>:
ffa0336c:	10 32       	P2 = R0;
ffa0336e:	78 05       	[--SP] = (R7:7);
ffa03370:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03374:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa03378:	ff e3 96 ff 	CALL 0xffa032a4 <_tcp_checksum_calc>;
ffa0337c:	0f 30       	R1 = R7;
ffa0337e:	c7 42       	R7 = R0.L (Z);
ffa03380:	39 08       	CC = R1 == R7;
ffa03382:	19 18       	IF CC JUMP 0xffa033b4 <_tcp_checksum_check+0x48>;
ffa03384:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03388:	00 e1 e0 04 	R0.L = 0x4e0;		/* (1248)	R0=0xff9004e0(-7338784) */
ffa0338c:	ff e3 26 ef 	CALL 0xffa011d8 <_printf_hex>;
ffa03390:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004e0(-7338784) */
ffa03394:	0f 30       	R1 = R7;
ffa03396:	00 e1 fc 04 	R0.L = 0x4fc;		/* (1276)	R0=0xff9004fc(-7338756) */
ffa0339a:	ff e3 1f ef 	CALL 0xffa011d8 <_printf_hex>;
ffa0339e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004fc(-7338756) */
ffa033a2:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa033a6:	ff e3 b3 ee 	CALL 0xffa0110c <_printf_str>;
ffa033aa:	01 e8 00 00 	UNLINK;
ffa033ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa033b0:	38 05       	(R7:7) = [SP++];
ffa033b2:	10 00       	RTS;
ffa033b4:	01 e8 00 00 	UNLINK;
ffa033b8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa033ba:	38 05       	(R7:7) = [SP++];
ffa033bc:	10 00       	RTS;
	...

ffa033c0 <_tcp_packet_setup>:
ffa033c0:	ed 05       	[--SP] = (R7:5, P5:5);
ffa033c2:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa033c6:	29 32       	P5 = R1;
ffa033c8:	7f 30       	R7 = FP;
ffa033ca:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa033cc:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa033ce:	f0 bb       	[FP -0x4] = R0;
ffa033d0:	07 30       	R0 = R7;
ffa033d2:	2a 30       	R5 = R2;
ffa033d4:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa033d8:	ff e3 40 f7 	CALL 0xffa02258 <_eth_header_setup>;
ffa033dc:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa033e0:	68 99 00 00 
ffa033e4:	80 0c       	CC = R0 < 0x0;
ffa033e6:	14 18       	IF CC JUMP 0xffa0340e <_tcp_packet_setup+0x4e>;
ffa033e8:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa033ea:	f0 b0       	[SP + 0xc] = R0;
ffa033ec:	15 30       	R2 = R5;
ffa033ee:	01 30       	R0 = R1;
ffa033f0:	0f 30       	R1 = R7;
ffa033f2:	ff e3 21 f3 	CALL 0xffa01a34 <_ip_header_setup>;
ffa033f6:	b9 a2       	R1 = [FP + 0x28];
ffa033f8:	f1 b0       	[SP + 0xc] = R1;
ffa033fa:	f9 a2       	R1 = [FP + 0x2c];
ffa033fc:	31 b1       	[SP + 0x10] = R1;
ffa033fe:	72 43       	R2 = R6.B (Z);
ffa03400:	0f 30       	R1 = R7;
ffa03402:	ff e3 a5 f3 	CALL 0xffa01b4c <_tcp_header_setup>;
ffa03406:	01 e8 00 00 	UNLINK;
ffa0340a:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0340c:	10 00       	RTS;
ffa0340e:	01 e8 00 00 	UNLINK;
ffa03412:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03414:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03416:	10 00       	RTS;

ffa03418 <_tcp_burst>:
ffa03418:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0341a:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa0341e:	78 b2       	[FP + 0x24] = R0;
ffa03420:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 */
ffa03424:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_txIdx> */
ffa03428:	7a a2       	R2 = [FP + 0x24];
ffa0342a:	0b e1 6c 0f 	P3.L = 0xf6c;		/* (3948)	P3=0xff900f6c <_g_httpHeaderLen> */
ffa0342e:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_g_httpContentLen> */
ffa03432:	02 0d       	CC = R2 <= 0x0;
ffa03434:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa03438:	10 91 00 00 
ffa0343c:	19 91       	R1 = [P3];
ffa0343e:	7e 18       	IF CC JUMP 0xffa0353a <_tcp_burst+0x122>;
ffa03440:	41 50       	R1 = R1 + R0;
ffa03442:	8f 09       	CC = R7 < R1 (IU);
ffa03444:	21 32       	P4 = R1;
ffa03446:	7a 10       	IF !CC JUMP 0xffa0353a <_tcp_burst+0x122>;
ffa03448:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa0344a:	38 20       	JUMP.S 0xffa034ba <_tcp_burst+0xa2>;
ffa0344c:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa0344e:	18 91       	R0 = [P3];
ffa03450:	07 52       	R0 = R7 - R0;
ffa03452:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa03456:	08 50       	R0 = R0 + R1;
ffa03458:	16 30       	R2 = R6;
ffa0345a:	0d 30       	R1 = R5;
ffa0345c:	ff e3 00 f0 	CALL 0xffa0145c <_memcpy_>;
ffa03460:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e48 <_txbuf> */
ffa03464:	09 e1 58 0f 	P1.L = 0xf58;		/* (3928)	P1=0xff900f58 <_TcpSeqHttpStart> */
ffa03468:	08 91       	R0 = [P1];
ffa0346a:	f7 51       	R7 = R7 + R6;
ffa0346c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_g_httpContentLen> */
ffa03470:	0a e1 50 0f 	P2.L = 0xf50;		/* (3920)	P2=0xff900f50 <_TcpSeqHost> */
ffa03474:	07 50       	R0 = R7 + R0;
ffa03476:	10 93       	[P2] = R0;
ffa03478:	26 50       	R0 = R6 + R4;
ffa0347a:	ff e3 5d ff 	CALL 0xffa03334 <_tcp_checksum_set>;
ffa0347e:	ff e3 51 f4 	CALL 0xffa01d20 <_bfin_EMAC_send_nocopy>;
ffa03482:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f50 <_TcpSeqHost> */
ffa03486:	0a e1 58 0e 	P2.L = 0xe58;		/* (3672)	P2=0xff900e58 <_rxIdx> */
ffa0348a:	10 95       	R0 = W[P2] (Z);
ffa0348c:	10 32       	P2 = R0;
ffa0348e:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900f58 <_TcpSeqHttpStart> */
ffa03492:	09 e1 5c 0e 	P1.L = 0xe5c;		/* (3676)	P1=0xff900e5c <_rxbuf> */
ffa03496:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa03498:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0349a:	52 91       	P2 = [P2];
ffa0349c:	90 a2       	R0 = [P2 + 0x28];
ffa0349e:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa034a0:	07 1c       	IF CC JUMP 0xffa034ae <_tcp_burst+0x96> (BP);
ffa034a2:	90 a2       	R0 = [P2 + 0x28];
ffa034a4:	4d 30       	R1 = P5;
ffa034a6:	7a a2       	R2 = [FP + 0x24];
ffa034a8:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa034aa:	11 50       	R0 = R1 + R2;
ffa034ac:	a8 06       	IF !CC P5 = R0;
ffa034ae:	79 ae       	P1 = [FP + 0x24];
ffa034b0:	69 09       	CC = P1 <= P5;
ffa034b2:	45 18       	IF CC JUMP 0xffa0353c <_tcp_burst+0x124>;
ffa034b4:	44 30       	R0 = P4;
ffa034b6:	87 09       	CC = R7 < R0 (IU);
ffa034b8:	42 10       	IF !CC JUMP 0xffa0353c <_tcp_burst+0x124>;
ffa034ba:	44 30       	R0 = P4;
ffa034bc:	b8 52       	R2 = R0 - R7;
ffa034be:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa034c2:	0a 09       	CC = R2 <= R1;
ffa034c4:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa034c6:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa034c8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e5c <_rxbuf> */
ffa034cc:	08 06       	IF !CC R1 = R0;
ffa034ce:	09 e1 58 0f 	P1.L = 0xf58;		/* (3928)	P1=0xff900f58 <_TcpSeqHttpStart> */
ffa034d2:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa034d6:	07 cc 10 4c 	R6 = MIN (R2, R0) || R0 = [P1] || NOP;
ffa034da:	08 91 00 00 
ffa034de:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e58 <_rxIdx> */
ffa034e2:	07 50       	R0 = R7 + R0;
ffa034e4:	0a e1 50 0f 	P2.L = 0xf50;		/* (3920)	P2=0xff900f50 <_TcpSeqHost> */
ffa034e8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900f58 <_TcpSeqHttpStart> */
ffa034ec:	10 93       	[P2] = R0;
ffa034ee:	09 e1 54 0f 	P1.L = 0xf54;		/* (3924)	P1=0xff900f54 <_TcpSeqClient> */
ffa034f2:	f1 b0       	[SP + 0xc] = R1;
ffa034f4:	30 b1       	[SP + 0x10] = R0;
ffa034f6:	08 91       	R0 = [P1];
ffa034f8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f50 <_TcpSeqHost> */
ffa034fc:	70 b1       	[SP + 0x14] = R0;
ffa034fe:	0a e1 3c 0e 	P2.L = 0xe3c;		/* (3644)	P2=0xff900e3c <_NetDestIP> */
ffa03502:	4f 30       	R1 = FP;
ffa03504:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R2 = [P2] || NOP;
ffa03508:	12 91 00 00 
ffa0350c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0350e:	ff e3 59 ff 	CALL 0xffa033c0 <_tcp_packet_setup>;
ffa03512:	28 30       	R5 = R0;
ffa03514:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03518:	00 0d       	CC = R0 <= 0x0;
ffa0351a:	ca 1b       	IF CC JUMP 0xffa034ae <_tcp_burst+0x96>;
ffa0351c:	18 91       	R0 = [P3];
ffa0351e:	38 0a       	CC = R0 <= R7 (IU);
ffa03520:	96 1f       	IF CC JUMP 0xffa0344c <_tcp_burst+0x34> (BP);
ffa03522:	38 53       	R4 = R0 - R7;
ffa03524:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03528:	07 50       	R0 = R7 + R0;
ffa0352a:	0d 30       	R1 = R5;
ffa0352c:	14 30       	R2 = R4;
ffa0352e:	ff e3 97 ef 	CALL 0xffa0145c <_memcpy_>;
ffa03532:	65 51       	R5 = R5 + R4;
ffa03534:	a6 53       	R6 = R6 - R4;
ffa03536:	e7 51       	R7 = R7 + R4;
ffa03538:	8b 2f       	JUMP.S 0xffa0344e <_tcp_burst+0x36>;
ffa0353a:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa0353c:	01 e8 00 00 	UNLINK;
ffa03540:	45 30       	R0 = P5;
ffa03542:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03544:	10 00       	RTS;
	...

ffa03548 <_tcp_rx>:
ffa03548:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0354a:	20 32       	P4 = R0;
ffa0354c:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa03550:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03554:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa03556:	ff e3 3b f2 	CALL 0xffa019cc <_htons>;
ffa0355a:	c0 42       	R0 = R0.L (Z);
ffa0355c:	07 08       	CC = R7 == R0;
ffa0355e:	06 18       	IF CC JUMP 0xffa0356a <_tcp_rx+0x22>;
ffa03560:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03562:	01 e8 00 00 	UNLINK;
ffa03566:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03568:	10 00       	RTS;
ffa0356a:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa0356e:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa03570:	08 08       	CC = R0 == R1;
ffa03572:	f7 17       	IF !CC JUMP 0xffa03560 <_tcp_rx+0x18> (BP);
ffa03574:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa03578:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa0357c:	ff e3 28 f2 	CALL 0xffa019cc <_htons>;
ffa03580:	c0 42       	R0 = R0.L (Z);
ffa03582:	07 08       	CC = R7 == R0;
ffa03584:	ee 17       	IF !CC JUMP 0xffa03560 <_tcp_rx+0x18> (BP);
ffa03586:	44 30       	R0 = P4;
ffa03588:	80 64       	R0 += 0x10;		/* ( 16) */
ffa0358a:	ff e3 95 f2 	CALL 0xffa01ab4 <_ip_header_checksum>;
ffa0358e:	40 43       	R0 = R0.B (Z);
ffa03590:	00 0c       	CC = R0 == 0x0;
ffa03592:	e7 1f       	IF CC JUMP 0xffa03560 <_tcp_rx+0x18> (BP);
ffa03594:	4c 30       	R1 = P4;
ffa03596:	41 64       	R1 += 0x8;		/* (  8) */
ffa03598:	e0 a1       	R0 = [P4 + 0x1c];
ffa0359a:	ff e3 13 fc 	CALL 0xffa02dc0 <_ARP_lut_add>;
ffa0359e:	44 30       	R0 = P4;
ffa035a0:	ff e3 6a fe 	CALL 0xffa03274 <_tcp_length>;
ffa035a4:	30 30       	R6 = R0;
ffa035a6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa035aa:	0e 30       	R1 = R6;
ffa035ac:	00 e1 0c 05 	R0.L = 0x50c;		/* (1292)	R0=0xff90050c(-7338740) */
ffa035b0:	ff e3 70 ee 	CALL 0xffa01290 <_printf_int>;
ffa035b4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90050c(-7338740) */
ffa035b8:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa035bc:	ff e3 a8 ed 	CALL 0xffa0110c <_printf_str>;
ffa035c0:	44 30       	R0 = P4;
ffa035c2:	0e 30       	R1 = R6;
ffa035c4:	ff e3 d4 fe 	CALL 0xffa0336c <_tcp_checksum_check>;
ffa035c8:	40 43       	R0 = R0.B (Z);
ffa035ca:	00 0c       	CC = R0 == 0x0;
ffa035cc:	ca 1b       	IF CC JUMP 0xffa03560 <_tcp_rx+0x18>;
ffa035ce:	00 00       	NOP;
ffa035d0:	00 00       	NOP;
ffa035d2:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa035d4:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa035d8:	48 43       	R0 = R1.B (Z);
ffa035da:	10 08       	CC = R0 == R2;
ffa035dc:	f1 18       	IF CC JUMP 0xffa037be <_tcp_rx+0x276>;
ffa035de:	10 0c       	CC = R0 == 0x2;
ffa035e0:	0a 19       	IF CC JUMP 0xffa037f4 <_tcp_rx+0x2ac>;
ffa035e2:	48 43       	R0 = R1.B (Z);
ffa035e4:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa035e6:	08 08       	CC = R0 == R1;
ffa035e8:	85 18       	IF CC JUMP 0xffa036f2 <_tcp_rx+0x1aa>;
ffa035ea:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa035ec:	ab 10       	IF !CC JUMP 0xffa03742 <_tcp_rx+0x1fa>;
ffa035ee:	00 00       	NOP;
ffa035f0:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f6c <_g_httpHeaderLen> */
ffa035f4:	0b e1 5c 0f 	P3.L = 0xf5c;		/* (3932)	P3=0xff900f5c <_TcpState> */
ffa035f8:	00 00       	NOP;
ffa035fa:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa035fe:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa03600:	38 10       	IF !CC JUMP 0xffa03670 <_tcp_rx+0x128>;
ffa03602:	18 91       	R0 = [P3];
ffa03604:	10 0c       	CC = R0 == 0x2;
ffa03606:	ad 17       	IF !CC JUMP 0xffa03560 <_tcp_rx+0x18> (BP);
ffa03608:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900000 <_l1_data_a>(-7340032) */
ffa0360c:	a0 a2       	R0 = [P4 + 0x28];
ffa0360e:	04 e1 3c 0e 	R4.L = 0xe3c;		/* (3644)	R4=0xff900e3c <_NetDestIP>(-7336388) */
ffa03612:	a5 e5 30 00 	R5 = B[P4 + 0x30] (X);
ffa03616:	ff e3 e7 f1 	CALL 0xffa019e4 <_htonl>;
ffa0361a:	14 32       	P2 = R4;
ffa0361c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa03620:	30 50       	R0 = R0 + R6;
ffa03622:	0d e1 54 0f 	P5.L = 0xf54;		/* (3924)	P5=0xff900f54 <_TcpSeqClient> */
ffa03626:	28 93       	[P5] = R0;
ffa03628:	e0 a1       	R0 = [P4 + 0x1c];
ffa0362a:	10 93       	[P2] = R0;
ffa0362c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f5c <_TcpState> */
ffa03630:	e0 a2       	R0 = [P4 + 0x2c];
ffa03632:	0b e1 58 0f 	P3.L = 0xf58;		/* (3928)	P3=0xff900f58 <_TcpSeqHttpStart> */
ffa03636:	ff e3 d7 f1 	CALL 0xffa019e4 <_htonl>;
ffa0363a:	19 91       	R1 = [P3];
ffa0363c:	c8 53       	R7 = R0 - R1;
ffa0363e:	a1 e4 31 00 	R1 = B[P4 + 0x31] (Z);
ffa03642:	21 48       	CC = !BITTST (R1, 0x4);		/* bit  4 */
ffa03644:	1e 1d       	IF CC JUMP 0xffa03880 <_tcp_rx+0x338> (BP);
ffa03646:	06 0c       	CC = R6 == 0x0;
ffa03648:	1c 15       	IF !CC JUMP 0xffa03880 <_tcp_rx+0x338> (BP);
ffa0364a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e3c <_NetDestIP> */
ffa0364e:	0a e1 6c 0f 	P2.L = 0xf6c;		/* (3948)	P2=0xff900f6c <_g_httpHeaderLen> */
ffa03652:	10 91       	R0 = [P2];
ffa03654:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f6c <_g_httpHeaderLen> */
ffa03658:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_g_httpContentLen> */
ffa0365c:	11 91       	R1 = [P2];
ffa0365e:	08 50       	R0 = R0 + R1;
ffa03660:	07 08       	CC = R7 == R0;
ffa03662:	46 18       	IF CC JUMP 0xffa036ee <_tcp_rx+0x1a6>;
ffa03664:	0f 30       	R1 = R7;
ffa03666:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03668:	ff e3 d8 fe 	CALL 0xffa03418 <_tcp_burst>;
ffa0366c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0366e:	7a 2f       	JUMP.S 0xffa03562 <_tcp_rx+0x1a>;
ffa03670:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03672:	1f 91       	R7 = [P3];
ffa03674:	07 08       	CC = R7 == R0;
ffa03676:	85 19       	IF CC JUMP 0xffa03980 <_tcp_rx+0x438>;
ffa03678:	07 0c       	CC = R7 == 0x0;
ffa0367a:	c4 17       	IF !CC JUMP 0xffa03602 <_tcp_rx+0xba> (BP);
ffa0367c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa03680:	00 e1 88 05 	R0.L = 0x588;		/* (1416)	R0=0xff900588(-7338616) */
ffa03684:	ff e3 44 ed 	CALL 0xffa0110c <_printf_str>;
ffa03688:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_g_httpContentLen> */
ffa0368c:	0a e1 74 0f 	P2.L = 0xf74;		/* (3956)	P2=0xff900f74 <_g_httpRxed> */
ffa03690:	17 93       	[P2] = R7;
ffa03692:	a0 a2       	R0 = [P4 + 0x28];
ffa03694:	ff e3 a8 f1 	CALL 0xffa019e4 <_htonl>;
ffa03698:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f74 <_g_httpRxed> */
ffa0369c:	0a e1 54 0f 	P2.L = 0xf54;		/* (3924)	P2=0xff900f54 <_TcpSeqClient> */
ffa036a0:	10 93       	[P2] = R0;
ffa036a2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f54 <_TcpSeqClient> */
ffa036a6:	e2 a1       	R2 = [P4 + 0x1c];
ffa036a8:	0a e1 3c 0e 	P2.L = 0xe3c;		/* (3644)	P2=0xff900e3c <_NetDestIP> */
ffa036ac:	12 93       	[P2] = R2;
ffa036ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e3c <_NetDestIP> */
ffa036b2:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa036b6:	0a e1 68 0f 	P2.L = 0xf68;		/* (3944)	P2=0xff900f68 <_TcpClientPort> */
ffa036ba:	11 97       	W[P2] = R1;
ffa036bc:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa036be:	f1 b0       	[SP + 0xc] = R1;
ffa036c0:	4f 30       	R1 = FP;
ffa036c2:	30 b1       	[SP + 0x10] = R0;
ffa036c4:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa036c6:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa036ca:	77 b1 00 00 
ffa036ce:	ff e3 79 fe 	CALL 0xffa033c0 <_tcp_packet_setup>;
ffa036d2:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa036d6:	00 0d       	CC = R0 <= 0x0;
ffa036d8:	95 1b       	IF CC JUMP 0xffa03602 <_tcp_rx+0xba>;
ffa036da:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f68 <_TcpClientPort> */
ffa036de:	0a e1 5c 0f 	P2.L = 0xf5c;		/* (3932)	P2=0xff900f5c <_TcpState> */
ffa036e2:	17 93       	[P2] = R7;
ffa036e4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa036e6:	ff e3 27 fe 	CALL 0xffa03334 <_tcp_checksum_set>;
ffa036ea:	ff e3 1b f3 	CALL 0xffa01d20 <_bfin_EMAC_send_nocopy>;
ffa036ee:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa036f0:	39 2f       	JUMP.S 0xffa03562 <_tcp_rx+0x1a>;
ffa036f2:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f58 <_TcpSeqHttpStart> */
ffa036f6:	0b e1 5c 0f 	P3.L = 0xf5c;		/* (3932)	P3=0xff900f5c <_TcpState> */
ffa036fa:	18 91       	R0 = [P3];
ffa036fc:	08 0c       	CC = R0 == 0x1;
ffa036fe:	b9 17       	IF !CC JUMP 0xffa03670 <_tcp_rx+0x128> (BP);
ffa03700:	e0 a2       	R0 = [P4 + 0x2c];
ffa03702:	ff e3 71 f1 	CALL 0xffa019e4 <_htonl>;
ffa03706:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f5c <_TcpState> */
ffa0370a:	0a e1 50 0f 	P2.L = 0xf50;		/* (3920)	P2=0xff900f50 <_TcpSeqHost> */
ffa0370e:	11 91       	R1 = [P2];
ffa03710:	08 08       	CC = R0 == R1;
ffa03712:	42 19       	IF CC JUMP 0xffa03996 <_tcp_rx+0x44e>;
ffa03714:	00 00       	NOP;
ffa03716:	00 00       	NOP;
ffa03718:	00 00       	NOP;
ffa0371a:	e0 a2       	R0 = [P4 + 0x2c];
ffa0371c:	ff e3 64 f1 	CALL 0xffa019e4 <_htonl>;
ffa03720:	08 30       	R1 = R0;
ffa03722:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03726:	00 e1 38 05 	R0.L = 0x538;		/* (1336)	R0=0xff900538(-7338696) */
ffa0372a:	ff e3 55 ee 	CALL 0xffa013d4 <_printf_ip>;
ffa0372e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03730:	18 93       	[P3] = R0;
ffa03732:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03736:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa0373a:	ff e3 e9 ec 	CALL 0xffa0110c <_printf_str>;
ffa0373e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03740:	11 2f       	JUMP.S 0xffa03562 <_tcp_rx+0x1a>;
ffa03742:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03746:	00 e1 64 05 	R0.L = 0x564;		/* (1380)	R0=0xff900564(-7338652) */
ffa0374a:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900e3c <_NetDestIP>(-7336388) */
ffa0374e:	ff e3 df ec 	CALL 0xffa0110c <_printf_str>;
ffa03752:	04 e1 3c 0e 	R4.L = 0xe3c;		/* (3644)	R4=0xff900e3c <_NetDestIP>(-7336388) */
ffa03756:	a0 a2       	R0 = [P4 + 0x28];
ffa03758:	ff e3 46 f1 	CALL 0xffa019e4 <_htonl>;
ffa0375c:	14 32       	P2 = R4;
ffa0375e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f54 <_TcpSeqClient> */
ffa03762:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f5c <_TcpState> */
ffa03766:	0d e1 54 0f 	P5.L = 0xf54;		/* (3924)	P5=0xff900f54 <_TcpSeqClient> */
ffa0376a:	0b e1 5c 0f 	P3.L = 0xf5c;		/* (3932)	P3=0xff900f5c <_TcpState> */
ffa0376e:	28 93       	[P5] = R0;
ffa03770:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa03774:	18 91 00 00 
ffa03778:	e2 a1       	R2 = [P4 + 0x1c];
ffa0377a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0377c:	10 0c       	CC = R0 == 0x2;
ffa0377e:	12 93       	[P2] = R2;
ffa03780:	29 93       	[P5] = R1;
ffa03782:	03 18       	IF CC JUMP 0xffa03788 <_tcp_rx+0x240>;
ffa03784:	00 0c       	CC = R0 == 0x0;
ffa03786:	c0 14       	IF !CC JUMP 0xffa03906 <_tcp_rx+0x3be> (BP);
ffa03788:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0378a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f50 <_TcpSeqHost> */
ffa0378e:	f0 b0       	[SP + 0xc] = R0;
ffa03790:	0a e1 50 0f 	P2.L = 0xf50;		/* (3920)	P2=0xff900f50 <_TcpSeqHost> */
ffa03794:	10 91       	R0 = [P2];
ffa03796:	71 b1       	[SP + 0x14] = R1;
ffa03798:	4f 30       	R1 = FP;
ffa0379a:	30 b1       	[SP + 0x10] = R0;
ffa0379c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0379e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa037a0:	ff e3 10 fe 	CALL 0xffa033c0 <_tcp_packet_setup>;
ffa037a4:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa037a8:	00 0d       	CC = R0 <= 0x0;
ffa037aa:	ae 18       	IF CC JUMP 0xffa03906 <_tcp_rx+0x3be>;
ffa037ac:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa037ae:	18 93       	[P3] = R0;
ffa037b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa037b2:	ff e3 c1 fd 	CALL 0xffa03334 <_tcp_checksum_set>;
ffa037b6:	ff e3 b5 f2 	CALL 0xffa01d20 <_bfin_EMAC_send_nocopy>;
ffa037ba:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa037bc:	d3 2e       	JUMP.S 0xffa03562 <_tcp_rx+0x1a>;
ffa037be:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa037c2:	00 e1 20 05 	R0.L = 0x520;		/* (1312)	R0=0xff900520(-7338720) */
ffa037c6:	ff e3 a3 ec 	CALL 0xffa0110c <_printf_str>;
ffa037ca:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f50 <_TcpSeqHost> */
ffa037ce:	0a e1 5c 0f 	P2.L = 0xf5c;		/* (3932)	P2=0xff900f5c <_TcpState> */
ffa037d2:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa037d4:	17 93       	[P2] = R7;
ffa037d6:	a0 a2       	R0 = [P4 + 0x28];
ffa037d8:	ff e3 06 f1 	CALL 0xffa019e4 <_htonl>;
ffa037dc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f5c <_TcpState> */
ffa037e0:	0a e1 54 0f 	P2.L = 0xf54;		/* (3924)	P2=0xff900f54 <_TcpSeqClient> */
ffa037e4:	10 93       	[P2] = R0;
ffa037e6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f54 <_TcpSeqClient> */
ffa037ea:	0a e1 74 0f 	P2.L = 0xf74;		/* (3956)	P2=0xff900f74 <_g_httpRxed> */
ffa037ee:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa037f0:	17 93       	[P2] = R7;
ffa037f2:	b8 2e       	JUMP.S 0xffa03562 <_tcp_rx+0x1a>;
ffa037f4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa037f8:	00 e1 2c 05 	R0.L = 0x52c;		/* (1324)	R0=0xff90052c(-7338708) */
ffa037fc:	ff e3 88 ec 	CALL 0xffa0110c <_printf_str>;
ffa03800:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f54 <_TcpSeqClient> */
ffa03804:	a0 a2       	R0 = [P4 + 0x28];
ffa03806:	ff e3 ef f0 	CALL 0xffa019e4 <_htonl>;
ffa0380a:	0d e1 54 0f 	P5.L = 0xf54;		/* (3924)	P5=0xff900f54 <_TcpSeqClient> */
ffa0380e:	28 93       	[P5] = R0;
ffa03810:	44 30       	R0 = P4;
ffa03812:	ff e3 31 fd 	CALL 0xffa03274 <_tcp_length>;
ffa03816:	29 91       	R1 = [P5];
ffa03818:	09 64       	R1 += 0x1;		/* (  1) */
ffa0381a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f74 <_g_httpRxed> */
ffa0381e:	08 50       	R0 = R0 + R1;
ffa03820:	0a e1 68 0f 	P2.L = 0xf68;		/* (3944)	P2=0xff900f68 <_TcpClientPort> */
ffa03824:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03828:	11 97       	W[P2] = R1;
ffa0382a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f68 <_TcpClientPort> */
ffa0382e:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa03832:	28 93 00 00 
ffa03836:	0a e1 74 0f 	P2.L = 0xf74;		/* (3956)	P2=0xff900f74 <_g_httpRxed> */
ffa0383a:	11 93       	[P2] = R1;
ffa0383c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f74 <_g_httpRxed> */
ffa03840:	e2 a1       	R2 = [P4 + 0x1c];
ffa03842:	0a e1 3c 0e 	P2.L = 0xe3c;		/* (3644)	P2=0xff900e3c <_NetDestIP> */
ffa03846:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa03848:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f54 <_TcpSeqClient> */
ffa0384c:	12 93       	[P2] = R2;
ffa0384e:	0d e1 50 0f 	P5.L = 0xf50;		/* (3920)	P5=0xff900f50 <_TcpSeqHost> */
ffa03852:	f1 b0       	[SP + 0xc] = R1;
ffa03854:	29 91       	R1 = [P5];
ffa03856:	31 b1       	[SP + 0x10] = R1;
ffa03858:	4f 30       	R1 = FP;
ffa0385a:	70 b1       	[SP + 0x14] = R0;
ffa0385c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0385e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03860:	ff e3 b0 fd 	CALL 0xffa033c0 <_tcp_packet_setup>;
ffa03864:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03868:	00 0d       	CC = R0 <= 0x0;
ffa0386a:	93 18       	IF CC JUMP 0xffa03990 <_tcp_rx+0x448>;
ffa0386c:	28 91       	R0 = [P5];
ffa0386e:	08 64       	R0 += 0x1;		/* (  1) */
ffa03870:	28 93       	[P5] = R0;
ffa03872:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03874:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e3c <_NetDestIP> */
ffa03878:	0a e1 5c 0f 	P2.L = 0xf5c;		/* (3932)	P2=0xff900f5c <_TcpState> */
ffa0387c:	10 93       	[P2] = R0;
ffa0387e:	33 2f       	JUMP.S 0xffa036e4 <_tcp_rx+0x19c>;
ffa03880:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa03884:	28 54       	R0 = R0 & R5;
ffa03886:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa03888:	10 4d       	R0 >>>= 0x2;
ffa0388a:	54 30       	R2 = P4;
ffa0388c:	19 48       	CC = !BITTST (R1, 0x3);		/* bit  3 */
ffa0388e:	02 50       	R0 = R2 + R0;
ffa03890:	5d 1c       	IF CC JUMP 0xffa0394a <_tcp_rx+0x402> (BP);
ffa03892:	0e 30       	R1 = R6;
ffa03894:	00 e3 16 05 	CALL 0xffa042c0 <_httpCollate>;
ffa03898:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f50 <_TcpSeqHost> */
ffa0389c:	18 91       	R0 = [P3];
ffa0389e:	07 50       	R0 = R7 + R0;
ffa038a0:	0d e1 50 0f 	P5.L = 0xf50;		/* (3920)	P5=0xff900f50 <_TcpSeqHost> */
ffa038a4:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e84 <_NetArpLut> */
ffa038a8:	28 93       	[P5] = R0;
ffa038aa:	0c e1 74 0f 	P4.L = 0xf74;		/* (3956)	P4=0xff900f74 <_g_httpRxed> */
ffa038ae:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa038b0:	80 4f       	R0 <<= 0x10;
ffa038b2:	21 91       	R1 = [P4];
ffa038b4:	00 e3 dc 02 	CALL 0xffa03e6c <_httpResp>;
ffa038b8:	00 0c       	CC = R0 == 0x0;
ffa038ba:	22 1c       	IF CC JUMP 0xffa038fe <_tcp_rx+0x3b6> (BP);
ffa038bc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f5c <_TcpState> */
ffa038c0:	28 91       	R0 = [P5];
ffa038c2:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHttpStart> */
ffa038c6:	10 93       	[P2] = R0;
ffa038c8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHttpStart> */
ffa038cc:	0a e1 6c 0f 	P2.L = 0xf6c;		/* (3948)	P2=0xff900f6c <_g_httpHeaderLen> */
ffa038d0:	11 91       	R1 = [P2];
ffa038d2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f6c <_g_httpHeaderLen> */
ffa038d6:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_g_httpContentLen> */
ffa038da:	10 91       	R0 = [P2];
ffa038dc:	41 50       	R1 = R1 + R0;
ffa038de:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa038e2:	00 e1 a4 05 	R0.L = 0x5a4;		/* (1444)	R0=0xff9005a4(-7338588) */
ffa038e6:	ff e3 d5 ec 	CALL 0xffa01290 <_printf_int>;
ffa038ea:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005a4(-7338588) */
ffa038ee:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa038f2:	ff e3 0d ec 	CALL 0xffa0110c <_printf_str>;
ffa038f6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa038f8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa038fa:	ff e3 8f fd 	CALL 0xffa03418 <_tcp_burst>;
ffa038fe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03900:	20 93       	[P4] = R0;
ffa03902:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03904:	2f 2e       	JUMP.S 0xffa03562 <_tcp_rx+0x1a>;
ffa03906:	18 91       	R0 = [P3];
ffa03908:	18 0c       	CC = R0 == 0x3;
ffa0390a:	77 16       	IF !CC JUMP 0xffa035f8 <_tcp_rx+0xb0> (BP);
ffa0390c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_g_httpContentLen> */
ffa03910:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03912:	0a e1 74 0f 	P2.L = 0xf74;		/* (3956)	P2=0xff900f74 <_g_httpRxed> */
ffa03916:	10 93       	[P2] = R0;
ffa03918:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0391a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f74 <_g_httpRxed> */
ffa0391e:	f0 b0       	[SP + 0xc] = R0;
ffa03920:	0a e1 50 0f 	P2.L = 0xf50;		/* (3920)	P2=0xff900f50 <_TcpSeqHost> */
ffa03924:	10 91       	R0 = [P2];
ffa03926:	14 32       	P2 = R4;
ffa03928:	30 b1       	[SP + 0x10] = R0;
ffa0392a:	28 91       	R0 = [P5];
ffa0392c:	70 b1       	[SP + 0x14] = R0;
ffa0392e:	4f 30       	R1 = FP;
ffa03930:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03934:	12 91 00 00 
ffa03938:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0393a:	ff e3 43 fd 	CALL 0xffa033c0 <_tcp_packet_setup>;
ffa0393e:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03942:	00 0d       	CC = R0 <= 0x0;
ffa03944:	5a 1a       	IF CC JUMP 0xffa035f8 <_tcp_rx+0xb0>;
ffa03946:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03948:	96 2f       	JUMP.S 0xffa03874 <_tcp_rx+0x32c>;
ffa0394a:	0e 30       	R1 = R6;
ffa0394c:	00 e3 ba 04 	CALL 0xffa042c0 <_httpCollate>;
ffa03950:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03952:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f50 <_TcpSeqHost> */
ffa03956:	f0 b0       	[SP + 0xc] = R0;
ffa03958:	0a e1 50 0f 	P2.L = 0xf50;		/* (3920)	P2=0xff900f50 <_TcpSeqHost> */
ffa0395c:	10 91       	R0 = [P2];
ffa0395e:	14 32       	P2 = R4;
ffa03960:	30 b1       	[SP + 0x10] = R0;
ffa03962:	28 91       	R0 = [P5];
ffa03964:	70 b1       	[SP + 0x14] = R0;
ffa03966:	4f 30       	R1 = FP;
ffa03968:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa0396c:	12 91 00 00 
ffa03970:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03972:	ff e3 27 fd 	CALL 0xffa033c0 <_tcp_packet_setup>;
ffa03976:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0397a:	00 0d       	CC = R0 <= 0x0;
ffa0397c:	b4 16       	IF !CC JUMP 0xffa036e4 <_tcp_rx+0x19c> (BP);
ffa0397e:	f1 2d       	JUMP.S 0xffa03560 <_tcp_rx+0x18>;
ffa03980:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa03984:	00 e1 74 05 	R0.L = 0x574;		/* (1396)	R0=0xff900574(-7338636) */
ffa03988:	ff e3 c2 eb 	CALL 0xffa0110c <_printf_str>;
ffa0398c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0398e:	ea 2d       	JUMP.S 0xffa03562 <_tcp_rx+0x1a>;
ffa03990:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03994:	27 2e       	JUMP.S 0xffa035e2 <_tcp_rx+0x9a>;
ffa03996:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03998:	18 93       	[P3] = R0;
ffa0399a:	a0 a2       	R0 = [P4 + 0x28];
ffa0399c:	ff e3 24 f0 	CALL 0xffa019e4 <_htonl>;
ffa039a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f50 <_TcpSeqHost> */
ffa039a4:	0a e1 54 0f 	P2.L = 0xf54;		/* (3924)	P2=0xff900f54 <_TcpSeqClient> */
ffa039a8:	10 93       	[P2] = R0;
ffa039aa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa039ae:	00 e1 54 05 	R0.L = 0x554;		/* (1364)	R0=0xff900554(-7338668) */
ffa039b2:	ff e3 ad eb 	CALL 0xffa0110c <_printf_str>;
ffa039b6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa039b8:	d5 2d       	JUMP.S 0xffa03562 <_tcp_rx+0x1a>;
	...

ffa039bc <_htmlForm>:
ffa039bc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa039c0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa039c4:	02 e1 c0 05 	R2.L = 0x5c0;		/* (1472)	R2=0xff9005c0(-7338560) */
ffa039c8:	01 e8 00 00 	UNLINK;
ffa039cc:	ff e2 78 ed 	JUMP.L 0xffa014bc <_strcpy_>;

ffa039d0 <_htmlDiv>:
ffa039d0:	12 43       	R2 = R2.B (X);
ffa039d2:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa039d6:	1a 08       	CC = R2 == R3;
ffa039d8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa039dc:	09 18       	IF CC JUMP 0xffa039ee <_htmlDiv+0x1e>;
ffa039de:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005c0(-7338560) */
ffa039e2:	02 e1 14 06 	R2.L = 0x614;		/* (1556)	R2=0xff900614(-7338476) */
ffa039e6:	01 e8 00 00 	UNLINK;
ffa039ea:	ff e2 69 ed 	JUMP.L 0xffa014bc <_strcpy_>;
ffa039ee:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900614(-7338476) */
ffa039f2:	02 e1 e0 05 	R2.L = 0x5e0;		/* (1504)	R2=0xff9005e0(-7338528) */
ffa039f6:	01 e8 00 00 	UNLINK;
ffa039fa:	ff e2 61 ed 	JUMP.L 0xffa014bc <_strcpy_>;
	...

ffa03a00 <_html404>:
ffa03a00:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03a04:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a06:	4f 30       	R1 = FP;
ffa03a08:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005e0(-7338528) */
ffa03a0c:	f0 bb       	[FP -0x4] = R0;
ffa03a0e:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03a10:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03a14:	02 e1 48 06 	R2.L = 0x648;		/* (1608)	R2=0xff900648(-7338424) */
ffa03a18:	ff e3 52 ed 	CALL 0xffa014bc <_strcpy_>;
ffa03a1c:	f0 b9       	R0 = [FP -0x4];
ffa03a1e:	01 e8 00 00 	UNLINK;
ffa03a22:	10 00       	RTS;

ffa03a24 <_htmlCursorOption>:
ffa03a24:	68 05       	[--SP] = (R7:5);
ffa03a26:	2a 30       	R5 = R2;
ffa03a28:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900648(-7338424) */
ffa03a2c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03a30:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa03a34:	3f a2 00 00 
ffa03a38:	02 e1 64 06 	R2.L = 0x664;		/* (1636)	R2=0xff900664(-7338396) */
ffa03a3c:	ff e3 40 ed 	CALL 0xffa014bc <_strcpy_>;
ffa03a40:	0e 30       	R1 = R6;
ffa03a42:	15 30       	R2 = R5;
ffa03a44:	ff e3 a2 ee 	CALL 0xffa01788 <_strprintf_int>;
ffa03a48:	3d 08       	CC = R5 == R7;
ffa03a4a:	16 18       	IF CC JUMP 0xffa03a76 <_htmlCursorOption+0x52>;
ffa03a4c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900664(-7338396) */
ffa03a50:	0e 30       	R1 = R6;
ffa03a52:	02 e1 8c 06 	R2.L = 0x68c;		/* (1676)	R2=0xff90068c(-7338356) */
ffa03a56:	ff e3 33 ed 	CALL 0xffa014bc <_strcpy_>;
ffa03a5a:	0e 30       	R1 = R6;
ffa03a5c:	15 30       	R2 = R5;
ffa03a5e:	ff e3 95 ee 	CALL 0xffa01788 <_strprintf_int>;
ffa03a62:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90068c(-7338356) */
ffa03a66:	01 e8 00 00 	UNLINK;
ffa03a6a:	0e 30       	R1 = R6;
ffa03a6c:	02 e1 90 06 	R2.L = 0x690;		/* (1680)	R2=0xff900690(-7338352) */
ffa03a70:	28 05       	(R7:5) = [SP++];
ffa03a72:	ff e2 25 ed 	JUMP.L 0xffa014bc <_strcpy_>;
ffa03a76:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900690(-7338352) */
ffa03a7a:	0e 30       	R1 = R6;
ffa03a7c:	02 e1 74 06 	R2.L = 0x674;		/* (1652)	R2=0xff900674(-7338380) */
ffa03a80:	ff e3 1e ed 	CALL 0xffa014bc <_strcpy_>;
ffa03a84:	e4 2f       	JUMP.S 0xffa03a4c <_htmlCursorOption+0x28>;
	...

ffa03a88 <_htmlCursorSelect>:
ffa03a88:	60 05       	[--SP] = (R7:4);
ffa03a8a:	3a 30       	R7 = R2;
ffa03a8c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900674(-7338380) */
ffa03a90:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03a94:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa03a98:	7e a2 00 00 
ffa03a9c:	02 e1 9c 06 	R2.L = 0x69c;		/* (1692)	R2=0xff90069c(-7338340) */
ffa03aa0:	bc a2       	R4 = [FP + 0x28];
ffa03aa2:	ff e3 0d ed 	CALL 0xffa014bc <_strcpy_>;
ffa03aa6:	17 30       	R2 = R7;
ffa03aa8:	0d 30       	R1 = R5;
ffa03aaa:	ff e3 09 ed 	CALL 0xffa014bc <_strcpy_>;
ffa03aae:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90069c(-7338340) */
ffa03ab2:	0d 30       	R1 = R5;
ffa03ab4:	02 e1 a8 06 	R2.L = 0x6a8;		/* (1704)	R2=0xff9006a8(-7338328) */
ffa03ab8:	ff e3 02 ed 	CALL 0xffa014bc <_strcpy_>;
ffa03abc:	0d 30       	R1 = R5;
ffa03abe:	16 30       	R2 = R6;
ffa03ac0:	ff e3 fe ec 	CALL 0xffa014bc <_strcpy_>;
ffa03ac4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006a8(-7338328) */
ffa03ac8:	0d 30       	R1 = R5;
ffa03aca:	02 e1 c4 06 	R2.L = 0x6c4;		/* (1732)	R2=0xff9006c4(-7338300) */
ffa03ace:	ff e3 f7 ec 	CALL 0xffa014bc <_strcpy_>;
ffa03ad2:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03ad4:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa03ad8:	f4 b0 00 00 
ffa03adc:	17 30       	R2 = R7;
ffa03ade:	ff e3 a3 ff 	CALL 0xffa03a24 <_htmlCursorOption>;
ffa03ae2:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03ae4:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03ae6:	0f 08       	CC = R7 == R1;
ffa03ae8:	f6 17       	IF !CC JUMP 0xffa03ad4 <_htmlCursorSelect+0x4c> (BP);
ffa03aea:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c4(-7338300) */
ffa03aee:	01 e8 00 00 	UNLINK;
ffa03af2:	0d 30       	R1 = R5;
ffa03af4:	02 e1 c8 06 	R2.L = 0x6c8;		/* (1736)	R2=0xff9006c8(-7338296) */
ffa03af8:	20 05       	(R7:4) = [SP++];
ffa03afa:	ff e2 e1 ec 	JUMP.L 0xffa014bc <_strcpy_>;
	...

ffa03b00 <_htmlDefault>:
ffa03b00:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03b02:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03b06:	77 30       	R6 = FP;
ffa03b08:	e6 67       	R6 += -0x4;		/* ( -4) */
ffa03b0a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b0c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c8(-7338296) */
ffa03b10:	f0 bb       	[FP -0x4] = R0;
ffa03b12:	0e 30       	R1 = R6;
ffa03b14:	02 e1 e0 06 	R2.L = 0x6e0;		/* (1760)	R2=0xff9006e0(-7338272) */
ffa03b18:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03b1c:	ff e3 d0 ec 	CALL 0xffa014bc <_strcpy_>;
ffa03b20:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03b24:	0e 30       	R1 = R6;
ffa03b26:	ff e3 55 ff 	CALL 0xffa039d0 <_htmlDiv>;
ffa03b2a:	0e 30       	R1 = R6;
ffa03b2c:	ff e3 48 ff 	CALL 0xffa039bc <_htmlForm>;
ffa03b30:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03b34:	0e 30       	R1 = R6;
ffa03b36:	02 e1 30 07 	R2.L = 0x730;		/* (1840)	R2=0xff900730(-7338192) */
ffa03b3a:	ff e3 c1 ec 	CALL 0xffa014bc <_strcpy_>;
ffa03b3e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f54 <_TcpSeqClient> */
ffa03b42:	0a e1 cc 0b 	P2.L = 0xbcc;		/* (3020)	P2=0xff900bcc <_g_streamEnabled> */
ffa03b46:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03b4a:	10 99 00 00 
ffa03b4e:	00 0c       	CC = R0 == 0x0;
ffa03b50:	2c 1d       	IF CC JUMP 0xffa03da8 <_htmlDefault+0x2a8> (BP);
ffa03b52:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900730(-7338192) */
ffa03b56:	01 30       	R0 = R1;
ffa03b58:	02 e1 80 07 	R2.L = 0x780;		/* (1920)	R2=0xff900780(-7338112) */
ffa03b5c:	0e 30       	R1 = R6;
ffa03b5e:	ff e3 af ec 	CALL 0xffa014bc <_strcpy_>;
ffa03b62:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900780(-7338112) */
ffa03b66:	0e 30       	R1 = R6;
ffa03b68:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03b6c:	ff e3 a8 ec 	CALL 0xffa014bc <_strcpy_>;
ffa03b70:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03b74:	0e 30       	R1 = R6;
ffa03b76:	ff e3 2d ff 	CALL 0xffa039d0 <_htmlDiv>;
ffa03b7a:	0e 30       	R1 = R6;
ffa03b7c:	ff e3 20 ff 	CALL 0xffa039bc <_htmlForm>;
ffa03b80:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03b84:	0e 30       	R1 = R6;
ffa03b86:	02 e1 ac 07 	R2.L = 0x7ac;		/* (1964)	R2=0xff9007ac(-7338068) */
ffa03b8a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f50 <_TcpSeqHost> */
ffa03b8e:	ff e3 97 ec 	CALL 0xffa014bc <_strcpy_>;
ffa03b92:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03b94:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa03b96:	0d e1 7c 0e 	P5.L = 0xe7c;		/* (3708)	P5=0xff900e7c <_NetDataDestIP> */
ffa03b9a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007ac(-7338068) */
ffa03b9e:	0e 30       	R1 = R6;
ffa03ba0:	02 e1 c8 07 	R2.L = 0x7c8;		/* (1992)	R2=0xff9007c8(-7338040) */
ffa03ba4:	ff e3 8c ec 	CALL 0xffa014bc <_strcpy_>;
ffa03ba8:	17 30       	R2 = R7;
ffa03baa:	0e 30       	R1 = R6;
ffa03bac:	ff e3 ee ed 	CALL 0xffa01788 <_strprintf_int>;
ffa03bb0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007c8(-7338040) */
ffa03bb4:	0e 30       	R1 = R6;
ffa03bb6:	02 e1 e4 07 	R2.L = 0x7e4;		/* (2020)	R2=0xff9007e4(-7338012) */
ffa03bba:	ff e3 81 ec 	CALL 0xffa014bc <_strcpy_>;
ffa03bbe:	2a 91       	R2 = [P5];
ffa03bc0:	6a 40       	R2 >>= R5;
ffa03bc2:	52 43       	R2 = R2.B (Z);
ffa03bc4:	0e 30       	R1 = R6;
ffa03bc6:	ff e3 e1 ed 	CALL 0xffa01788 <_strprintf_int>;
ffa03bca:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007e4(-7338012) */
ffa03bce:	0e 30       	R1 = R6;
ffa03bd0:	02 e1 f8 07 	R2.L = 0x7f8;		/* (2040)	R2=0xff9007f8(-7337992) */
ffa03bd4:	ff e3 74 ec 	CALL 0xffa014bc <_strcpy_>;
ffa03bd8:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03bda:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03bdc:	0f 08       	CC = R7 == R1;
ffa03bde:	45 64       	R5 += 0x8;		/* (  8) */
ffa03be0:	dd 17       	IF !CC JUMP 0xffa03b9a <_htmlDefault+0x9a> (BP);
ffa03be2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007f8(-7337992) */
ffa03be6:	0e 30       	R1 = R6;
ffa03be8:	02 e1 00 08 	R2.L = 0x800;		/* (2048)	R2=0xff900800(-7337984) */
ffa03bec:	ff e3 68 ec 	CALL 0xffa014bc <_strcpy_>;
ffa03bf0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900800(-7337984) */
ffa03bf4:	0e 30       	R1 = R6;
ffa03bf6:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03bfa:	ff e3 61 ec 	CALL 0xffa014bc <_strcpy_>;
ffa03bfe:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03c02:	0e 30       	R1 = R6;
ffa03c04:	ff e3 e6 fe 	CALL 0xffa039d0 <_htmlDiv>;
ffa03c08:	0e 30       	R1 = R6;
ffa03c0a:	ff e3 d9 fe 	CALL 0xffa039bc <_htmlForm>;
ffa03c0e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03c12:	0e 30       	R1 = R6;
ffa03c14:	02 e1 24 08 	R2.L = 0x824;		/* (2084)	R2=0xff900824(-7337948) */
ffa03c18:	ff e3 52 ec 	CALL 0xffa014bc <_strcpy_>;
ffa03c1c:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bcc */
ffa03c20:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03c24:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03c28:	10 99 00 00 
ffa03c2c:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03c2e:	c6 1c       	IF CC JUMP 0xffa03dba <_htmlDefault+0x2ba> (BP);
ffa03c30:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900824(-7337948) */
ffa03c34:	01 30       	R0 = R1;
ffa03c36:	02 e1 8c 07 	R2.L = 0x78c;		/* (1932)	R2=0xff90078c(-7338100) */
ffa03c3a:	0e 30       	R1 = R6;
ffa03c3c:	ff e3 40 ec 	CALL 0xffa014bc <_strcpy_>;
ffa03c40:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90078c(-7338100) */
ffa03c44:	0e 30       	R1 = R6;
ffa03c46:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03c4a:	ff e3 39 ec 	CALL 0xffa014bc <_strcpy_>;
ffa03c4e:	0e 30       	R1 = R6;
ffa03c50:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03c54:	ff e3 be fe 	CALL 0xffa039d0 <_htmlDiv>;
ffa03c58:	0e 30       	R1 = R6;
ffa03c5a:	ff e3 b1 fe 	CALL 0xffa039bc <_htmlForm>;
ffa03c5e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03c62:	0e 30       	R1 = R6;
ffa03c64:	02 e1 64 08 	R2.L = 0x864;		/* (2148)	R2=0xff900864(-7337884) */
ffa03c68:	ff e3 2a ec 	CALL 0xffa014bc <_strcpy_>;
ffa03c6c:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa03c70:	01 e1 94 08 	R1.L = 0x894;		/* (2196)	R1=0xff900894(-7337836) */
ffa03c74:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900864(-7337884) */
ffa03c78:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa03c7c:	f1 b0 00 00 
ffa03c80:	02 e1 88 08 	R2.L = 0x888;		/* (2184)	R2=0xff900888(-7337848) */
ffa03c84:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03c88:	37 b1 00 00 
ffa03c8c:	ff e3 fe fe 	CALL 0xffa03a88 <_htmlCursorSelect>;
ffa03c90:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900894(-7337836) */
ffa03c94:	01 e1 ac 08 	R1.L = 0x8ac;		/* (2220)	R1=0xff9008ac(-7337812) */
ffa03c98:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900888(-7337848) */
ffa03c9c:	f1 b0       	[SP + 0xc] = R1;
ffa03c9e:	02 e1 a0 08 	R2.L = 0x8a0;		/* (2208)	R2=0xff9008a0(-7337824) */
ffa03ca2:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03ca6:	37 b1 00 00 
ffa03caa:	ff e3 ef fe 	CALL 0xffa03a88 <_htmlCursorSelect>;
ffa03cae:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008ac(-7337812) */
ffa03cb2:	01 e1 c4 08 	R1.L = 0x8c4;		/* (2244)	R1=0xff9008c4(-7337788) */
ffa03cb6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a0(-7337824) */
ffa03cba:	f1 b0       	[SP + 0xc] = R1;
ffa03cbc:	02 e1 b8 08 	R2.L = 0x8b8;		/* (2232)	R2=0xff9008b8(-7337800) */
ffa03cc0:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03cc4:	37 b1 00 00 
ffa03cc8:	ff e3 e0 fe 	CALL 0xffa03a88 <_htmlCursorSelect>;
ffa03ccc:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008c4(-7337788) */
ffa03cd0:	01 e1 d8 08 	R1.L = 0x8d8;		/* (2264)	R1=0xff9008d8(-7337768) */
ffa03cd4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008b8(-7337800) */
ffa03cd8:	f1 b0       	[SP + 0xc] = R1;
ffa03cda:	02 e1 d0 08 	R2.L = 0x8d0;		/* (2256)	R2=0xff9008d0(-7337776) */
ffa03cde:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03ce2:	37 b1 00 00 
ffa03ce6:	ff e3 d1 fe 	CALL 0xffa03a88 <_htmlCursorSelect>;
ffa03cea:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008d0(-7337776) */
ffa03cee:	0e 30       	R1 = R6;
ffa03cf0:	02 e1 e4 08 	R2.L = 0x8e4;		/* (2276)	R2=0xff9008e4(-7337756) */
ffa03cf4:	ff e3 e4 eb 	CALL 0xffa014bc <_strcpy_>;
ffa03cf8:	0e 30       	R1 = R6;
ffa03cfa:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03cfe:	ff e3 69 fe 	CALL 0xffa039d0 <_htmlDiv>;
ffa03d02:	0e 30       	R1 = R6;
ffa03d04:	ff e3 5c fe 	CALL 0xffa039bc <_htmlForm>;
ffa03d08:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03d0c:	0e 30       	R1 = R6;
ffa03d0e:	02 e1 20 09 	R2.L = 0x920;		/* (2336)	R2=0xff900920(-7337696) */
ffa03d12:	ff e3 d5 eb 	CALL 0xffa014bc <_strcpy_>;
ffa03d16:	0e 30       	R1 = R6;
ffa03d18:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03d1c:	ff e3 5a fe 	CALL 0xffa039d0 <_htmlDiv>;
ffa03d20:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03d24:	0e 30       	R1 = R6;
ffa03d26:	02 e1 78 09 	R2.L = 0x978;		/* (2424)	R2=0xff900978(-7337608) */
ffa03d2a:	ff e3 c9 eb 	CALL 0xffa014bc <_strcpy_>;
ffa03d2e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900978(-7337608) */
ffa03d32:	0e 30       	R1 = R6;
ffa03d34:	02 e1 a0 09 	R2.L = 0x9a0;		/* (2464)	R2=0xff9009a0(-7337568) */
ffa03d38:	ff e3 c2 eb 	CALL 0xffa014bc <_strcpy_>;
ffa03d3c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009a0(-7337568) */
ffa03d40:	0e 30       	R1 = R6;
ffa03d42:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03d46:	ff e3 bb eb 	CALL 0xffa014bc <_strcpy_>;
ffa03d4a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900798(-7338088) */
ffa03d4e:	0e 30       	R1 = R6;
ffa03d50:	02 e1 e8 09 	R2.L = 0x9e8;		/* (2536)	R2=0xff9009e8(-7337496) */
ffa03d54:	ff e3 b4 eb 	CALL 0xffa014bc <_strcpy_>;
ffa03d58:	0e 30       	R1 = R6;
ffa03d5a:	22 e1 75 ff 	R2 = -0x8b (X);		/*		R2=0xffffff75(-139) */
ffa03d5e:	ff e3 15 ed 	CALL 0xffa01788 <_strprintf_int>;
ffa03d62:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ff75(-7274635) */
ffa03d66:	0e 30       	R1 = R6;
ffa03d68:	02 e1 b0 00 	R2.L = 0xb0;		/* (176)	R2=0xff9000b0(-7339856) */
ffa03d6c:	ff e3 a8 eb 	CALL 0xffa014bc <_strcpy_>;
ffa03d70:	0e 30       	R1 = R6;
ffa03d72:	92 62       	R2 = -0x2e (X);		/*		R2=0xffffffd2(-46) */
ffa03d74:	ff e3 0a ed 	CALL 0xffa01788 <_strprintf_int>;
ffa03d78:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ffd2(-7274542) */
ffa03d7c:	0e 30       	R1 = R6;
ffa03d7e:	02 e1 88 00 	R2.L = 0x88;		/* (136)	R2=0xff900088(-7339896) */
ffa03d82:	ff e3 9d eb 	CALL 0xffa014bc <_strcpy_>;
ffa03d86:	0e 30       	R1 = R6;
ffa03d88:	22 e1 d0 fd 	R2 = -0x230 (X);		/*		R2=0xfffffdd0(-560) */
ffa03d8c:	ff e3 fe ec 	CALL 0xffa01788 <_strprintf_int>;
ffa03d90:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90fdd0(-7275056) */
ffa03d94:	0e 30       	R1 = R6;
ffa03d96:	02 e1 f4 09 	R2.L = 0x9f4;		/* (2548)	R2=0xff9009f4(-7337484) */
ffa03d9a:	ff e3 91 eb 	CALL 0xffa014bc <_strcpy_>;
ffa03d9e:	f0 b9       	R0 = [FP -0x4];
ffa03da0:	01 e8 00 00 	UNLINK;
ffa03da4:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03da6:	10 00       	RTS;
ffa03da8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009f4(-7337484) */
ffa03dac:	01 30       	R0 = R1;
ffa03dae:	02 e1 8c 07 	R2.L = 0x78c;		/* (1932)	R2=0xff90078c(-7338100) */
ffa03db2:	0e 30       	R1 = R6;
ffa03db4:	ff e3 84 eb 	CALL 0xffa014bc <_strcpy_>;
ffa03db8:	d5 2e       	JUMP.S 0xffa03b62 <_htmlDefault+0x62>;
ffa03dba:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90078c(-7338100) */
ffa03dbe:	01 30       	R0 = R1;
ffa03dc0:	02 e1 80 07 	R2.L = 0x780;		/* (1920)	R2=0xff900780(-7338112) */
ffa03dc4:	0e 30       	R1 = R6;
ffa03dc6:	ff e3 7b eb 	CALL 0xffa014bc <_strcpy_>;
ffa03dca:	3b 2f       	JUMP.S 0xffa03c40 <_htmlDefault+0x140>;

ffa03dcc <_httpHeader>:
ffa03dcc:	78 05       	[--SP] = (R7:7);
ffa03dce:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03dd2:	7f 30       	R7 = FP;
ffa03dd4:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03dd6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03dd8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900780(-7338112) */
ffa03ddc:	f0 bb       	[FP -0x4] = R0;
ffa03dde:	0f 30       	R1 = R7;
ffa03de0:	02 e1 0c 0a 	R2.L = 0xa0c;		/* (2572)	R2=0xff900a0c(-7337460) */
ffa03de4:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03de8:	ff e3 6a eb 	CALL 0xffa014bc <_strcpy_>;
ffa03dec:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a0c(-7337460) */
ffa03df0:	0f 30       	R1 = R7;
ffa03df2:	02 e1 20 0a 	R2.L = 0xa20;		/* (2592)	R2=0xff900a20(-7337440) */
ffa03df6:	ff e3 63 eb 	CALL 0xffa014bc <_strcpy_>;
ffa03dfa:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a20(-7337440) */
ffa03dfe:	0f 30       	R1 = R7;
ffa03e00:	02 e1 34 0a 	R2.L = 0xa34;		/* (2612)	R2=0xff900a34(-7337420) */
ffa03e04:	ff e3 5c eb 	CALL 0xffa014bc <_strcpy_>;
ffa03e08:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa03e0c:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_g_httpContentLen> */
ffa03e10:	12 91       	R2 = [P2];
ffa03e12:	0f 30       	R1 = R7;
ffa03e14:	ff e3 ba ec 	CALL 0xffa01788 <_strprintf_int>;
ffa03e18:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a34(-7337420) */
ffa03e1c:	0f 30       	R1 = R7;
ffa03e1e:	02 e1 48 0a 	R2.L = 0xa48;		/* (2632)	R2=0xff900a48(-7337400) */
ffa03e22:	ff e3 4d eb 	CALL 0xffa014bc <_strcpy_>;
ffa03e26:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_g_httpContentLen> */
ffa03e2a:	f0 b9       	R0 = [FP -0x4];
ffa03e2c:	0a e1 6c 0f 	P2.L = 0xf6c;		/* (3948)	P2=0xff900f6c <_g_httpHeaderLen> */
ffa03e30:	10 93       	[P2] = R0;
ffa03e32:	01 e8 00 00 	UNLINK;
ffa03e36:	38 05       	(R7:7) = [SP++];
ffa03e38:	10 00       	RTS;
	...

ffa03e3c <_htmlGeneric>:
ffa03e3c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03e40:	10 30       	R2 = R0;
ffa03e42:	4f 30       	R1 = FP;
ffa03e44:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03e46:	f0 bb       	[FP -0x4] = R0;
ffa03e48:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03e4a:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03e4e:	ff e3 37 eb 	CALL 0xffa014bc <_strcpy_>;
ffa03e52:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f6c <_g_httpHeaderLen> */
ffa03e56:	f0 b9       	R0 = [FP -0x4];
ffa03e58:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_g_httpContentLen> */
ffa03e5c:	10 93       	[P2] = R0;
ffa03e5e:	ff e3 b7 ff 	CALL 0xffa03dcc <_httpHeader>;
ffa03e62:	f0 b9       	R0 = [FP -0x4];
ffa03e64:	01 e8 00 00 	UNLINK;
ffa03e68:	10 00       	RTS;
	...

ffa03e6c <_httpResp>:
ffa03e6c:	60 05       	[--SP] = (R7:4);
ffa03e6e:	30 30       	R6 = R0;
ffa03e70:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa03e72:	01 09       	CC = R1 <= R0;
ffa03e74:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa03e78:	39 30       	R7 = R1;
ffa03e7a:	21 10       	IF !CC JUMP 0xffa03ebc <_httpResp+0x50>;
ffa03e7c:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa03e7e:	0f 09       	CC = R7 <= R1;
ffa03e80:	34 10       	IF !CC JUMP 0xffa03ee8 <_httpResp+0x7c>;
ffa03e82:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa03e86:	00 e1 04 0a 	R0.L = 0xa04;		/* (2564)	R0=0xff900a04(-7337468) */
ffa03e8a:	0e 30       	R1 = R6;
ffa03e8c:	17 30       	R2 = R7;
ffa03e8e:	ff e3 85 eb 	CALL 0xffa01598 <_substr>;
ffa03e92:	00 0c       	CC = R0 == 0x0;
ffa03e94:	06 10       	IF !CC JUMP 0xffa03ea0 <_httpResp+0x34>;
ffa03e96:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03e98:	01 e8 00 00 	UNLINK;
ffa03e9c:	20 05       	(R7:4) = [SP++];
ffa03e9e:	10 00       	RTS;
ffa03ea0:	ff e3 b0 fd 	CALL 0xffa03a00 <_html404>;
ffa03ea4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_g_httpContentLen> */
ffa03ea8:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_g_httpContentLen> */
ffa03eac:	10 93       	[P2] = R0;
ffa03eae:	ff e3 8f ff 	CALL 0xffa03dcc <_httpHeader>;
ffa03eb2:	01 e8 00 00 	UNLINK;
ffa03eb6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03eb8:	20 05       	(R7:4) = [SP++];
ffa03eba:	10 00       	RTS;
ffa03ebc:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa03ec0:	06 30       	R0 = R6;
ffa03ec2:	01 e1 68 0a 	R1.L = 0xa68;		/* (2664)	R1=0xff900a68(-7337368) */
ffa03ec6:	ff e3 3b eb 	CALL 0xffa0153c <_strcmp>;
ffa03eca:	00 0c       	CC = R0 == 0x0;
ffa03ecc:	d8 1f       	IF CC JUMP 0xffa03e7c <_httpResp+0x10> (BP);
ffa03ece:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03ed2:	00 e1 04 0a 	R0.L = 0xa04;		/* (2564)	R0=0xff900a04(-7337468) */
ffa03ed6:	0e 30       	R1 = R6;
ffa03ed8:	17 30       	R2 = R7;
ffa03eda:	ff e3 5f eb 	CALL 0xffa01598 <_substr>;
ffa03ede:	00 0c       	CC = R0 == 0x0;
ffa03ee0:	db 1f       	IF CC JUMP 0xffa03e96 <_httpResp+0x2a> (BP);
ffa03ee2:	ff e3 0f fe 	CALL 0xffa03b00 <_htmlDefault>;
ffa03ee6:	df 2f       	JUMP.S 0xffa03ea4 <_httpResp+0x38>;
ffa03ee8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a04(-7337468) */
ffa03eec:	00 e1 74 0a 	R0.L = 0xa74;		/* (2676)	R0=0xff900a74(-7337356) */
ffa03ef0:	0e 30       	R1 = R6;
ffa03ef2:	17 30       	R2 = R7;
ffa03ef4:	ff e3 52 eb 	CALL 0xffa01598 <_substr>;
ffa03ef8:	00 0c       	CC = R0 == 0x0;
ffa03efa:	3c 1c       	IF CC JUMP 0xffa03f72 <_httpResp+0x106> (BP);
ffa03efc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a74(-7337356) */
ffa03f00:	00 e1 80 0a 	R0.L = 0xa80;		/* (2688)	R0=0xff900a80(-7337344) */
ffa03f04:	0e 30       	R1 = R6;
ffa03f06:	17 30       	R2 = R7;
ffa03f08:	ff e3 48 eb 	CALL 0xffa01598 <_substr>;
ffa03f0c:	00 0c       	CC = R0 == 0x0;
ffa03f0e:	c4 1f       	IF CC JUMP 0xffa03e96 <_httpResp+0x2a> (BP);
ffa03f10:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa03f12:	06 50       	R0 = R6 + R0;
ffa03f14:	ff e3 62 ec 	CALL 0xffa017d8 <_atoi>;
ffa03f18:	08 30       	R1 = R0;
ffa03f1a:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa03f1e:	00 67       	R0 += -0x20;		/* (-32) */
ffa03f20:	10 0a       	CC = R0 <= R2 (IU);
ffa03f22:	24 11       	IF !CC JUMP 0xffa0416a <_httpResp+0x2fe>;
ffa03f24:	82 c6 19 84 	R2 = R1 << 0x3;
ffa03f28:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800f70 */
ffa03f2c:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03f30:	02 0d       	CC = R2 <= 0x0;
ffa03f32:	13 91       	R3 = [P2];
ffa03f34:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa03f38:	14 18       	IF CC JUMP 0xffa03f60 <_httpResp+0xf4>;
ffa03f3a:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa03f3e:	28 4f       	R0 <<= 0x5;
ffa03f40:	03 54       	R0 = R3 & R0;
ffa03f42:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa03f44:	38 52       	R0 = R0 - R7;
ffa03f46:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa03f4a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03f4c:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa03f50:	18 54       	R0 = R0 & R3;
ffa03f52:	10 32       	P2 = R0;
ffa03f54:	09 64       	R1 += 0x1;		/* (  1) */
ffa03f56:	0a 08       	CC = R2 == R1;
ffa03f58:	10 90       	R0 = [P2++];
ffa03f5a:	08 92       	[P1++] = R0;
ffa03f5c:	42 30       	R0 = P2;
ffa03f5e:	f9 17       	IF !CC JUMP 0xffa03f50 <_httpResp+0xe4> (BP);
ffa03f60:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900804 */
ffa03f64:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_g_httpContentLen> */
ffa03f68:	17 93       	[P2] = R7;
ffa03f6a:	ff e3 31 ff 	CALL 0xffa03dcc <_httpHeader>;
ffa03f6e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03f70:	94 2f       	JUMP.S 0xffa03e98 <_httpResp+0x2c>;
ffa03f72:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03f76:	00 e1 b4 0a 	R0.L = 0xab4;		/* (2740)	R0=0xff900ab4(-7337292) */
ffa03f7a:	0e 30       	R1 = R6;
ffa03f7c:	17 30       	R2 = R7;
ffa03f7e:	ff e3 0d eb 	CALL 0xffa01598 <_substr>;
ffa03f82:	00 0c       	CC = R0 == 0x0;
ffa03f84:	7f 1f       	IF CC JUMP 0xffa03e82 <_httpResp+0x16> (BP);
ffa03f86:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ab4(-7337292) */
ffa03f8a:	0e 30       	R1 = R6;
ffa03f8c:	17 30       	R2 = R7;
ffa03f8e:	00 e1 b4 0a 	R0.L = 0xab4;		/* (2740)	R0=0xff900ab4(-7337292) */
ffa03f92:	ff e3 03 eb 	CALL 0xffa01598 <_substr>;
ffa03f96:	86 51       	R6 = R6 + R0;
ffa03f98:	47 53       	R5 = R7 - R0;
ffa03f9a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ab4(-7337292) */
ffa03f9e:	00 e1 bc 0a 	R0.L = 0xabc;		/* (2748)	R0=0xff900abc(-7337284) */
ffa03fa2:	0e 30       	R1 = R6;
ffa03fa4:	15 30       	R2 = R5;
ffa03fa6:	ff e3 f9 ea 	CALL 0xffa01598 <_substr>;
ffa03faa:	00 0c       	CC = R0 == 0x0;
ffa03fac:	10 11       	IF !CC JUMP 0xffa041cc <_httpResp+0x360>;
ffa03fae:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03fb0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900abc(-7337284) */
ffa03fb4:	00 e1 e0 0a 	R0.L = 0xae0;		/* (2784)	R0=0xff900ae0(-7337248) */
ffa03fb8:	0e 30       	R1 = R6;
ffa03fba:	15 30       	R2 = R5;
ffa03fbc:	ff e3 ee ea 	CALL 0xffa01598 <_substr>;
ffa03fc0:	00 0c       	CC = R0 == 0x0;
ffa03fc2:	e2 10       	IF !CC JUMP 0xffa04186 <_httpResp+0x31a>;
ffa03fc4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ae0(-7337248) */
ffa03fc8:	0e 30       	R1 = R6;
ffa03fca:	00 e1 ec 0a 	R0.L = 0xaec;		/* (2796)	R0=0xff900aec(-7337236) */
ffa03fce:	15 30       	R2 = R5;
ffa03fd0:	ff e3 e4 ea 	CALL 0xffa01598 <_substr>;
ffa03fd4:	00 0c       	CC = R0 == 0x0;
ffa03fd6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900aec(-7337236) */
ffa03fda:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03fdc:	0e 30       	R1 = R6;
ffa03fde:	15 30       	R2 = R5;
ffa03fe0:	00 e1 f8 0a 	R0.L = 0xaf8;		/* (2808)	R0=0xff900af8(-7337224) */
ffa03fe4:	27 06       	IF !CC R4 = R7;
ffa03fe6:	ff e3 d9 ea 	CALL 0xffa01598 <_substr>;
ffa03fea:	00 0c       	CC = R0 == 0x0;
ffa03fec:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900af8(-7337224) */
ffa03ff0:	0e 30       	R1 = R6;
ffa03ff2:	15 30       	R2 = R5;
ffa03ff4:	00 e1 04 0b 	R0.L = 0xb04;		/* (2820)	R0=0xff900b04(-7337212) */
ffa03ff8:	27 06       	IF !CC R4 = R7;
ffa03ffa:	ff e3 cf ea 	CALL 0xffa01598 <_substr>;
ffa03ffe:	00 0c       	CC = R0 == 0x0;
ffa04000:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b04(-7337212) */
ffa04004:	0e 30       	R1 = R6;
ffa04006:	15 30       	R2 = R5;
ffa04008:	00 e1 10 0b 	R0.L = 0xb10;		/* (2832)	R0=0xff900b10(-7337200) */
ffa0400c:	27 06       	IF !CC R4 = R7;
ffa0400e:	ff e3 c5 ea 	CALL 0xffa01598 <_substr>;
ffa04012:	00 0c       	CC = R0 == 0x0;
ffa04014:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b10(-7337200) */
ffa04018:	00 e1 1c 0b 	R0.L = 0xb1c;		/* (2844)	R0=0xff900b1c(-7337188) */
ffa0401c:	0e 30       	R1 = R6;
ffa0401e:	15 30       	R2 = R5;
ffa04020:	27 06       	IF !CC R4 = R7;
ffa04022:	ff e3 bb ea 	CALL 0xffa01598 <_substr>;
ffa04026:	00 0c       	CC = R0 == 0x0;
ffa04028:	15 11       	IF !CC JUMP 0xffa04252 <_httpResp+0x3e6>;
ffa0402a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b1c(-7337188) */
ffa0402e:	00 e1 24 0b 	R0.L = 0xb24;		/* (2852)	R0=0xff900b24(-7337180) */
ffa04032:	0e 30       	R1 = R6;
ffa04034:	15 30       	R2 = R5;
ffa04036:	ff e3 b1 ea 	CALL 0xffa01598 <_substr>;
ffa0403a:	00 0c       	CC = R0 == 0x0;
ffa0403c:	f6 10       	IF !CC JUMP 0xffa04228 <_httpResp+0x3bc>;
ffa0403e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b24(-7337180) */
ffa04042:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa04046:	0e 30       	R1 = R6;
ffa04048:	15 30       	R2 = R5;
ffa0404a:	ff e3 a7 ea 	CALL 0xffa01598 <_substr>;
ffa0404e:	00 0c       	CC = R0 == 0x0;
ffa04050:	13 11       	IF !CC JUMP 0xffa04276 <_httpResp+0x40a>;
ffa04052:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b2c(-7337172) */
ffa04056:	00 e1 34 0b 	R0.L = 0xb34;		/* (2868)	R0=0xff900b34(-7337164) */
ffa0405a:	0e 30       	R1 = R6;
ffa0405c:	15 30       	R2 = R5;
ffa0405e:	ff e3 9d ea 	CALL 0xffa01598 <_substr>;
ffa04062:	00 0c       	CC = R0 == 0x0;
ffa04064:	d1 10       	IF !CC JUMP 0xffa04206 <_httpResp+0x39a>;
ffa04066:	20 43       	R0 = R4.B (X);
ffa04068:	00 0c       	CC = R0 == 0x0;
ffa0406a:	3c 17       	IF !CC JUMP 0xffa03ee2 <_httpResp+0x76> (BP);
ffa0406c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b34(-7337164) */
ffa04070:	00 e1 3c 0b 	R0.L = 0xb3c;		/* (2876)	R0=0xff900b3c(-7337156) */
ffa04074:	0e 30       	R1 = R6;
ffa04076:	15 30       	R2 = R5;
ffa04078:	ff e3 90 ea 	CALL 0xffa01598 <_substr>;
ffa0407c:	00 0c       	CC = R0 == 0x0;
ffa0407e:	0c 1b       	IF CC JUMP 0xffa03e96 <_httpResp+0x2a>;
ffa04080:	7f 30       	R7 = FP;
ffa04082:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa04086:	57 5a       	P1 = FP + P2;
ffa04088:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0408a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0408c:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa0408e:	b2 e0 02 20 	LSETUP(0xffa04092 <_httpResp+0x226>, 0xffa04092 <_httpResp+0x226>) LC1 = P2;
ffa04092:	08 92       	[P1++] = R0;
ffa04094:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa04098:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa0409c:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa040a0:	29 4f       	R1 <<= 0x5;
ffa040a2:	10 91       	R0 = [P2];
ffa040a4:	08 54       	R0 = R0 & R1;
ffa040a6:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa040a8:	81 4f       	R1 <<= 0x10;
ffa040aa:	08 50       	R0 = R0 + R1;
ffa040ac:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa040ae:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa040b2:	88 54       	R2 = R0 & R1;
ffa040b4:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa040b8:	b2 e0 12 10 	LSETUP(0xffa040bc <_httpResp+0x250>, 0xffa040dc <_httpResp+0x270>) LC1 = P1;
ffa040bc:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa040c0:	97 5a       	P2 = FP + P2;
ffa040c2:	02 32       	P0 = R2;
ffa040c4:	11 91       	R1 = [P2];
ffa040c6:	12 64       	R2 += 0x2;		/* (  2) */
ffa040c8:	00 94       	R0 = W[P0++] (Z);
ffa040ca:	41 50       	R1 = R1 + R0;
ffa040cc:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa040ce:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa040d2:	11 92       	[P2++] = R1;
ffa040d4:	82 54       	R2 = R2 & R0;
ffa040d6:	42 30       	R0 = P2;
ffa040d8:	38 08       	CC = R0 == R7;
ffa040da:	f4 17       	IF !CC JUMP 0xffa040c2 <_httpResp+0x256> (BP);
ffa040dc:	00 00       	NOP;
ffa040de:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa040e2:	97 5a       	P2 = FP + P2;
ffa040e4:	00 00       	NOP;
ffa040e6:	10 91       	R0 = [P2];
ffa040e8:	58 4d       	R0 >>>= 0xb;
ffa040ea:	10 92       	[P2++] = R0;
ffa040ec:	4a 30       	R1 = P2;
ffa040ee:	39 08       	CC = R1 == R7;
ffa040f0:	fa 17       	IF !CC JUMP 0xffa040e4 <_httpResp+0x278> (BP);
ffa040f2:	ff e3 07 fd 	CALL 0xffa03b00 <_htmlDefault>;
ffa040f6:	68 67       	R0 += -0x13;		/* (-19) */
ffa040f8:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa040fc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80 <_g_httpRemainingLen>(-7336064) */
ffa04100:	f0 bb       	[FP -0x4] = R0;
ffa04102:	02 e1 4c 0b 	R2.L = 0xb4c;		/* (2892)	R2=0xff900b4c(-7337140) */
ffa04106:	08 50       	R0 = R0 + R1;
ffa04108:	0f 30       	R1 = R7;
ffa0410a:	ff e3 d9 e9 	CALL 0xffa014bc <_strcpy_>;
ffa0410e:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa04112:	f5 b8 00 00 
ffa04116:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b4c(-7337140) */
ffa0411a:	0f 30       	R1 = R7;
ffa0411c:	02 e1 58 0b 	R2.L = 0xb58;		/* (2904)	R2=0xff900b58(-7337128) */
ffa04120:	ff e3 ce e9 	CALL 0xffa014bc <_strcpy_>;
ffa04124:	16 30       	R2 = R6;
ffa04126:	0f 30       	R1 = R7;
ffa04128:	ff e3 30 eb 	CALL 0xffa01788 <_strprintf_int>;
ffa0412c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b58(-7337128) */
ffa04130:	0f 30       	R1 = R7;
ffa04132:	02 e1 6c 0b 	R2.L = 0xb6c;		/* (2924)	R2=0xff900b6c(-7337108) */
ffa04136:	ff e3 c3 e9 	CALL 0xffa014bc <_strcpy_>;
ffa0413a:	0f 30       	R1 = R7;
ffa0413c:	15 30       	R2 = R5;
ffa0413e:	ff e3 25 eb 	CALL 0xffa01788 <_strprintf_int>;
ffa04142:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b6c(-7337108) */
ffa04146:	02 e1 7c 0b 	R2.L = 0xb7c;		/* (2940)	R2=0xff900b7c(-7337092) */
ffa0414a:	0f 30       	R1 = R7;
ffa0414c:	ff e3 b8 e9 	CALL 0xffa014bc <_strcpy_>;
ffa04150:	0e 64       	R6 += 0x1;		/* (  1) */
ffa04152:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa04154:	16 08       	CC = R6 == R2;
ffa04156:	e0 17       	IF !CC JUMP 0xffa04116 <_httpResp+0x2aa> (BP);
ffa04158:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa0415c:	0f 30       	R1 = R7;
ffa0415e:	02 e1 88 0b 	R2.L = 0xb88;		/* (2952)	R2=0xff900b88(-7337080) */
ffa04162:	ff e3 ad e9 	CALL 0xffa014bc <_strcpy_>;
ffa04166:	f0 b9       	R0 = [FP -0x4];
ffa04168:	9e 2e       	JUMP.S 0xffa03ea4 <_httpResp+0x38>;
ffa0416a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0416c:	4f 30       	R1 = FP;
ffa0416e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b88(-7337080) */
ffa04172:	f0 bb       	[FP -0x4] = R0;
ffa04174:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa04176:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa0417a:	02 e1 88 0a 	R2.L = 0xa88;		/* (2696)	R2=0xff900a88(-7337336) */
ffa0417e:	ff e3 9f e9 	CALL 0xffa014bc <_strcpy_>;
ffa04182:	f0 b9       	R0 = [FP -0x4];
ffa04184:	90 2e       	JUMP.S 0xffa03ea4 <_httpResp+0x38>;
ffa04186:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa0418a:	00 e1 cc 0a 	R0.L = 0xacc;		/* (2764)	R0=0xff900acc(-7337268) */
ffa0418e:	0e 30       	R1 = R6;
ffa04190:	15 30       	R2 = R5;
ffa04192:	ff e3 03 ea 	CALL 0xffa01598 <_substr>;
ffa04196:	00 0c       	CC = R0 == 0x0;
ffa04198:	08 1c       	IF CC JUMP 0xffa041a8 <_httpResp+0x33c> (BP);
ffa0419a:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa0419e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa041a0:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa041a4:	10 9b       	B[P2] = R0;
ffa041a6:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa041a8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa041ac:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa041b0:	0e 30       	R1 = R6;
ffa041b2:	15 30       	R2 = R5;
ffa041b4:	ff e3 f2 e9 	CALL 0xffa01598 <_substr>;
ffa041b8:	00 0c       	CC = R0 == 0x0;
ffa041ba:	05 1f       	IF CC JUMP 0xffa03fc4 <_httpResp+0x158> (BP);
ffa041bc:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa041c0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa041c2:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa041c6:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa041c8:	10 9b       	B[P2] = R0;
ffa041ca:	fd 2e       	JUMP.S 0xffa03fc4 <_httpResp+0x158>;
ffa041cc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa041d0:	00 e1 cc 0a 	R0.L = 0xacc;		/* (2764)	R0=0xff900acc(-7337268) */
ffa041d4:	0e 30       	R1 = R6;
ffa041d6:	15 30       	R2 = R5;
ffa041d8:	ff e3 e0 e9 	CALL 0xffa01598 <_substr>;
ffa041dc:	00 0c       	CC = R0 == 0x0;
ffa041de:	61 14       	IF !CC JUMP 0xffa042a0 <_httpResp+0x434> (BP);
ffa041e0:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa041e2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900acc(-7337268) */
ffa041e6:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa041ea:	0e 30       	R1 = R6;
ffa041ec:	15 30       	R2 = R5;
ffa041ee:	ff e3 d5 e9 	CALL 0xffa01598 <_substr>;
ffa041f2:	00 0c       	CC = R0 == 0x0;
ffa041f4:	de 1e       	IF CC JUMP 0xffa03fb0 <_httpResp+0x144> (BP);
ffa041f6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa041fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa041fc:	0a e1 cc 0b 	P2.L = 0xbcc;		/* (3020)	P2=0xff900bcc <_g_streamEnabled> */
ffa04200:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04202:	10 9b       	B[P2] = R0;
ffa04204:	d6 2e       	JUMP.S 0xffa03fb0 <_httpResp+0x144>;
ffa04206:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04208:	06 50       	R0 = R6 + R0;
ffa0420a:	ff e3 e7 ea 	CALL 0xffa017d8 <_atoi>;
ffa0420e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bcc <_g_streamEnabled> */
ffa04212:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetDataDestIP> */
ffa04216:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04218:	11 91       	R1 = [P2];
ffa0421a:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa0421e:	51 54       	R1 = R1 & R2;
ffa04220:	c0 4f       	R0 <<= 0x18;
ffa04222:	41 50       	R1 = R1 + R0;
ffa04224:	11 93       	[P2] = R1;
ffa04226:	5e 2e       	JUMP.S 0xffa03ee2 <_httpResp+0x76>;
ffa04228:	86 51       	R6 = R6 + R0;
ffa0422a:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0422c:	45 53       	R5 = R5 - R0;
ffa0422e:	06 30       	R0 = R6;
ffa04230:	ff e3 d4 ea 	CALL 0xffa017d8 <_atoi>;
ffa04234:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e7c <_NetDataDestIP> */
ffa04238:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetDataDestIP> */
ffa0423c:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0423e:	11 91       	R1 = [P2];
ffa04240:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa04244:	40 43       	R0 = R0.B (Z);
ffa04246:	51 54       	R1 = R1 & R2;
ffa04248:	40 4f       	R0 <<= 0x8;
ffa0424a:	41 50       	R1 = R1 + R0;
ffa0424c:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0424e:	11 93       	[P2] = R1;
ffa04250:	f7 2e       	JUMP.S 0xffa0403e <_httpResp+0x1d2>;
ffa04252:	86 51       	R6 = R6 + R0;
ffa04254:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04256:	45 53       	R5 = R5 - R0;
ffa04258:	06 30       	R0 = R6;
ffa0425a:	ff e3 bf ea 	CALL 0xffa017d8 <_atoi>;
ffa0425e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e7c <_NetDataDestIP> */
ffa04262:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetDataDestIP> */
ffa04266:	11 91       	R1 = [P2];
ffa04268:	41 4d       	R1 >>>= 0x8;
ffa0426a:	41 4f       	R1 <<= 0x8;
ffa0426c:	40 43       	R0 = R0.B (Z);
ffa0426e:	08 50       	R0 = R0 + R1;
ffa04270:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04272:	10 93       	[P2] = R0;
ffa04274:	db 2e       	JUMP.S 0xffa0402a <_httpResp+0x1be>;
ffa04276:	86 51       	R6 = R6 + R0;
ffa04278:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0427a:	45 53       	R5 = R5 - R0;
ffa0427c:	06 30       	R0 = R6;
ffa0427e:	ff e3 ad ea 	CALL 0xffa017d8 <_atoi>;
ffa04282:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e7c <_NetDataDestIP> */
ffa04286:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetDataDestIP> */
ffa0428a:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0428c:	11 91       	R1 = [P2];
ffa0428e:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa04292:	40 43       	R0 = R0.B (Z);
ffa04294:	51 54       	R1 = R1 & R2;
ffa04296:	80 4f       	R0 <<= 0x10;
ffa04298:	41 50       	R1 = R1 + R0;
ffa0429a:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0429c:	11 93       	[P2] = R1;
ffa0429e:	da 2e       	JUMP.S 0xffa04052 <_httpResp+0x1e6>;
ffa042a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e7c <_NetDataDestIP> */
ffa042a4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa042a6:	0a e1 cc 0b 	P2.L = 0xbcc;		/* (3020)	P2=0xff900bcc <_g_streamEnabled> */
ffa042aa:	10 9b       	B[P2] = R0;
ffa042ac:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bcc */
ffa042b0:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa042b4:	10 91       	R0 = [P2];
ffa042b6:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa042b8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa042ba:	10 93       	[P2] = R0;
ffa042bc:	93 2f       	JUMP.S 0xffa041e2 <_httpResp+0x376>;
	...

ffa042c0 <_httpCollate>:
ffa042c0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa042c2:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e7c <_NetDataDestIP> */
ffa042c6:	0d e1 74 0f 	P5.L = 0xf74;		/* (3956)	P5=0xff900f74 <_g_httpRxed> */
ffa042ca:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa042cc:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R1 = [P5] || NOP;
ffa042d0:	29 91 00 00 
ffa042d4:	82 4f       	R2 <<= 0x10;
ffa042d6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa042da:	51 50       	R1 = R1 + R2;
ffa042dc:	17 30       	R2 = R7;
ffa042de:	ff e3 bf e8 	CALL 0xffa0145c <_memcpy_>;
ffa042e2:	28 91       	R0 = [P5];
ffa042e4:	38 50       	R0 = R0 + R7;
ffa042e6:	01 e8 00 00 	UNLINK;
ffa042ea:	28 93       	[P5] = R0;
ffa042ec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa042ee:	bd 05       	(R7:7, P5:5) = [SP++];
ffa042f0:	10 00       	RTS;
	...

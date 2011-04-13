
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
ffa00178:	fc 24       	JUMP.S 0xffa00b70 <_main>;
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
ffa003f6:	00 e3 e3 06 	CALL 0xffa011bc <_printf_int>;
ffa003fa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa003fe:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa00402:	00 e3 c1 05 	CALL 0xffa00f84 <_uart_str>;
ffa00406:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900508(-7338744) */
ffa0040a:	0d 30       	R1 = R5;
ffa0040c:	00 e1 14 00 	R0.L = 0x14;		/* ( 20)	R0=0xff900014(-7340012) */
ffa00410:	00 e3 24 06 	CALL 0xffa01058 <_printf_hex_byte>;
ffa00414:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900014(-7340012) */
ffa00418:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa0041c:	00 e3 b4 05 	CALL 0xffa00f84 <_uart_str>;
ffa00420:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900508(-7338744) */
ffa00424:	00 e1 20 00 	R0.L = 0x20;		/* ( 32)	R0=0xff900020(-7340000) */
ffa00428:	0f 30       	R1 = R7;
ffa0042a:	00 e3 17 06 	CALL 0xffa01058 <_printf_hex_byte>;
ffa0042e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa00432:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00436:	2f 30       	R5 = R7;
ffa00438:	00 e3 a6 05 	CALL 0xffa00f84 <_uart_str>;
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
ffa004b8:	00 e3 82 06 	CALL 0xffa011bc <_printf_int>;
ffa004bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002c(-7339988) */
ffa004c0:	ff 42       	R7 = R7.L (Z);
ffa004c2:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa004c6:	00 e3 5f 05 	CALL 0xffa00f84 <_uart_str>;
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
ffa00546:	c0 05       	[--SP] = (R7:0, P5:0);
ffa00548:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0054c:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0054e:	0a e1 30 09 	P2.L = 0x930;		/* (2352)	P2=0xffc00930(-4191952) */
ffa00552:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90050c */
ffa00556:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0055a:	0c e1 c0 0b 	P4.L = 0xbc0;		/* (3008)	P4=0xff900bc0 <_g_sampCh> */
ffa0055e:	10 97       	W[P2] = R0;
ffa00560:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900518 */
ffa00564:	60 99       	R0 = B[P4] (X);
ffa00566:	0d e1 c4 0b 	P5.L = 0xbc4;		/* (3012)	P5=0xff900bc4 <_g_sampR> */
ffa0056a:	46 43       	R6 = R0.B (Z);
ffa0056c:	2d 91       	R5 = [P5];
ffa0056e:	23 e1 ff 01 	R3 = 0x1ff (X);		/*		R3=0x1ff(511) */
ffa00572:	6e 50       	R1 = R6 + R5;
ffa00574:	00 32       	P0 = R0;
ffa00576:	19 54       	R0 = R1 & R3;
ffa00578:	18 32       	P3 = R0;
ffa0057a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900500 */
ffa0057e:	09 e1 f0 0b 	P1.L = 0xbf0;		/* (3056)	P1=0xff900bf0 <_g_samples> */
ffa00582:	11 64       	R1 += 0x2;		/* (  2) */
ffa00584:	59 54       	R1 = R1 & R3;
ffa00586:	8b 5a       	P2 = P3 + P1;
ffa00588:	52 99       	R2 = B[P2] (X);
ffa0058a:	11 32       	P2 = R1;
ffa0058c:	27 e1 80 ff 	R7 = -0x80 (X);		/*		R7=0xffffff80(-128) */
ffa00590:	ba 58       	R2 = R2 ^ R7;
ffa00592:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa00596:	52 43       	R2 = R2.B (Z);
ffa00598:	4a 5a       	P1 = P2 + P1;
ffa0059a:	49 99       	R1 = B[P1] (X);
ffa0059c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bf0 <_g_samples> */
ffa005a0:	09 e1 cc 0b 	P1.L = 0xbcc;		/* (3020)	P1=0xff900bcc <_g_sampOff> */
ffa005a4:	0c 91       	R4 = [P1];
ffa005a6:	82 c6 4c 87 	R3 = R4 >> 0x17;
ffa005aa:	79 58       	R1 = R1 ^ R7;
ffa005ac:	18 52       	R0 = R0 - R3;
ffa005ae:	49 43       	R1 = R1.B (Z);
ffa005b0:	c2 40       	R2 *= R0;
ffa005b2:	cb 40       	R3 *= R1;
ffa005b4:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa005b6:	9a 50       	R2 = R2 + R3;
ffa005b8:	82 c6 86 80 	R0 = R6 << 0x10;
ffa005bc:	99 4f       	R1 <<= 0x13;
ffa005be:	d2 42       	R2 = R2.L (Z);
ffa005c0:	08 56       	R0 = R0 | R1;
ffa005c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00930(-4191952) */
ffa005c6:	82 56       	R2 = R2 | R0;
ffa005c8:	0a e1 10 09 	P2.L = 0x910;		/* (2320)	P2=0xffc00910(-4191984) */
ffa005cc:	0e 0c       	CC = R6 == 0x1;
ffa005ce:	12 93       	[P2] = R2;
ffa005d0:	09 18       	IF CC JUMP 0xffa005e2 <_audio_out+0x9e>;
ffa005d2:	40 30       	R0 = P0;
ffa005d4:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa005d6:	20 9b       	B[P4] = R0;
ffa005d8:	01 e8 00 00 	UNLINK;
ffa005dc:	80 05       	(R7:0, P5:0) = [SP++];
ffa005de:	26 01       	ASTAT = [SP++];
ffa005e0:	11 00       	RTI;
ffa005e2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900910 */
ffa005e6:	0a e1 ac 0b 	P2.L = 0xbac;		/* (2988)	P2=0xff900bac <_g_sampW> */
ffa005ea:	11 91       	R1 = [P2];
ffa005ec:	0d 0a       	CC = R5 <= R1 (IU);
ffa005ee:	1d 1c       	IF CC JUMP 0xffa00628 <_audio_out+0xe4> (BP);
ffa005f0:	29 93       	[P5] = R1;
ffa005f2:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa005f4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bac <_g_sampW> */
ffa005f8:	0a e1 b0 0b 	P2.L = 0xbb0;		/* (2992)	P2=0xff900bb0 <_g_sampInc> */
ffa005fc:	10 91       	R0 = [P2];
ffa005fe:	f8 67       	R0 += -0x1;		/* ( -1) */
ffa00600:	10 93       	[P2] = R0;
ffa00602:	20 e1 f4 01 	R0 = 0x1f4 (X);		/*		R0=0x1f4(500) */
ffa00606:	02 0a       	CC = R2 <= R0 (IU);
ffa00608:	02 1c       	IF CC JUMP 0xffa0060c <_audio_out+0xc8> (BP);
ffa0060a:	29 93       	[P5] = R1;
ffa0060c:	10 91       	R0 = [P2];
ffa0060e:	44 50       	R1 = R4 + R0;
ffa00610:	81 0c       	CC = R1 < 0x0;
ffa00612:	1c 18       	IF CC JUMP 0xffa0064a <_audio_out+0x106>;
ffa00614:	40 30       	R0 = P0;
ffa00616:	f9 4c       	BITCLR (R1, 0x1f);		/* bit 31 */
ffa00618:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa0061a:	09 93       	[P1] = R1;
ffa0061c:	20 9b       	B[P4] = R0;
ffa0061e:	01 e8 00 00 	UNLINK;
ffa00622:	80 05       	(R7:0, P5:0) = [SP++];
ffa00624:	26 01       	ASTAT = [SP++];
ffa00626:	11 00       	RTI;
ffa00628:	a9 52       	R2 = R1 - R5;
ffa0062a:	20 e1 a9 00 	R0 = 0xa9 (X);		/*		R0=0xa9(169) */
ffa0062e:	02 0a       	CC = R2 <= R0 (IU);
ffa00630:	e2 1f       	IF CC JUMP 0xffa005f4 <_audio_out+0xb0> (BP);
ffa00632:	20 e1 54 01 	R0 = 0x154 (X);		/*		R0=0x154(340) */
ffa00636:	02 0a       	CC = R2 <= R0 (IU);
ffa00638:	0d 1c       	IF CC JUMP 0xffa00652 <_audio_out+0x10e> (BP);
ffa0063a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb0 <_g_sampInc> */
ffa0063e:	0a e1 b0 0b 	P2.L = 0xbb0;		/* (2992)	P2=0xff900bb0 <_g_sampInc> */
ffa00642:	10 91       	R0 = [P2];
ffa00644:	08 64       	R0 += 0x1;		/* (  1) */
ffa00646:	10 93       	[P2] = R0;
ffa00648:	dd 2f       	JUMP.S 0xffa00602 <_audio_out+0xbe>;
ffa0064a:	28 91       	R0 = [P5];
ffa0064c:	10 64       	R0 += 0x2;		/* (  2) */
ffa0064e:	28 93       	[P5] = R0;
ffa00650:	e2 2f       	JUMP.S 0xffa00614 <_audio_out+0xd0>;
ffa00652:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb0 <_g_sampInc> */
ffa00656:	0a e1 b0 0b 	P2.L = 0xbb0;		/* (2992)	P2=0xff900bb0 <_g_sampInc> */
ffa0065a:	d4 2f       	JUMP.S 0xffa00602 <_audio_out+0xbe>;

ffa0065c <_wait_flash>:
ffa0065c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0065e:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00bc4(-4191292) */
ffa00662:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00666:	0d e1 04 07 	P5.L = 0x704;		/* (1796)	P5=0xffc00704(-4192508) */
ffa0066a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0066c:	2f 97       	W[P5] = R7;
ffa0066e:	24 00       	SSYNC;
ffa00670:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa00672:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00674:	ff e3 36 fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00678:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0067a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0067c:	ff e3 32 fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00680:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bb0(-4191312) */
ffa00684:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00688:	17 97       	W[P2] = R7;
ffa0068a:	24 00       	SSYNC;
ffa0068c:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0068e:	ef 17       	IF !CC JUMP 0xffa0066c <_wait_flash+0x10> (BP);
ffa00690:	01 e8 00 00 	UNLINK;
ffa00694:	bd 05       	(R7:7, P5:5) = [SP++];
ffa00696:	10 00       	RTS;

ffa00698 <_write_enable_flash>:
ffa00698:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0069a:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00bc0(-4191296) */
ffa0069e:	0c e1 04 15 	P4.L = 0x1504;		/* (5380)	P4=0xffc01504(-4188924) */
ffa006a2:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa006a4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa006a8:	27 97       	W[P4] = R7;
ffa006aa:	24 00       	SSYNC;
ffa006ac:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00704(-4192508) */
ffa006b0:	21 e1 50 00 	R1 = 0x50 (X);		/*		R1=0x50( 80) */
ffa006b4:	0d e1 08 15 	P5.L = 0x1508;		/* (5384)	P5=0xffc01508(-4188920) */
ffa006b8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa006ba:	ff e3 13 fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa006be:	2f 97       	W[P5] = R7;
ffa006c0:	24 00       	SSYNC;
ffa006c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa006c6:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa006ca:	17 97       	W[P2] = R7;
ffa006cc:	24 00       	SSYNC;
ffa006ce:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa006d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa006d2:	ff e3 07 fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa006d6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa006d8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa006da:	ff e3 03 fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa006de:	2f 97       	W[P5] = R7;
ffa006e0:	24 00       	SSYNC;
ffa006e2:	27 97       	W[P4] = R7;
ffa006e4:	24 00       	SSYNC;
ffa006e6:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa006e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa006ea:	ff e3 fb fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa006ee:	2f 97       	W[P5] = R7;
ffa006f0:	24 00       	SSYNC;
ffa006f2:	01 e8 00 00 	UNLINK;
ffa006f6:	bc 05       	(R7:7, P5:4) = [SP++];
ffa006f8:	10 00       	RTS;
	...

ffa006fc <_read_flash_u32>:
ffa006fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00700:	70 05       	[--SP] = (R7:6);
ffa00702:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00706:	16 60       	R6 = 0x2 (X);		/*		R6=0x2(  2) */
ffa00708:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0070c:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R6 || NOP;
ffa00710:	16 97 00 00 
ffa00714:	24 00       	SSYNC;
ffa00716:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa00718:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0071a:	ff e3 e3 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0071e:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa00722:	49 43       	R1 = R1.B (Z);
ffa00724:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00726:	ff e3 dd fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0072a:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa0072e:	49 43       	R1 = R1.B (Z);
ffa00730:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00732:	ff e3 d7 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00736:	79 43       	R1 = R7.B (Z);
ffa00738:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0073a:	ff e3 d3 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0073e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00740:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00742:	ff e3 cf fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00746:	47 43       	R7 = R0.B (Z);
ffa00748:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0074a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0074c:	ff e3 ca fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00750:	40 43       	R0 = R0.B (Z);
ffa00752:	47 4f       	R7 <<= 0x8;
ffa00754:	c7 51       	R7 = R7 + R0;
ffa00756:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00758:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0075a:	ff e3 c3 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0075e:	40 43       	R0 = R0.B (Z);
ffa00760:	47 4f       	R7 <<= 0x8;
ffa00762:	c7 51       	R7 = R7 + R0;
ffa00764:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00766:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00768:	ff e3 bc fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0076c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00770:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00774:	47 4f       	R7 <<= 0x8;
ffa00776:	16 97       	W[P2] = R6;
ffa00778:	24 00       	SSYNC;
ffa0077a:	40 43       	R0 = R0.B (Z);
ffa0077c:	c7 51       	R7 = R7 + R0;
ffa0077e:	01 e8 00 00 	UNLINK;
ffa00782:	07 30       	R0 = R7;
ffa00784:	30 05       	(R7:6) = [SP++];
ffa00786:	10 00       	RTS;

ffa00788 <_read_flash_u8>:
ffa00788:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0078c:	70 05       	[--SP] = (R7:6);
ffa0078e:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00792:	16 60       	R6 = 0x2 (X);		/*		R6=0x2(  2) */
ffa00794:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00798:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R6 || NOP;
ffa0079c:	16 97 00 00 
ffa007a0:	24 00       	SSYNC;
ffa007a2:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa007a4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007a6:	ff e3 9d fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa007aa:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa007ae:	49 43       	R1 = R1.B (Z);
ffa007b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007b2:	ff e3 97 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa007b6:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa007ba:	49 43       	R1 = R1.B (Z);
ffa007bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007be:	ff e3 91 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa007c2:	79 43       	R1 = R7.B (Z);
ffa007c4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007c6:	ff e3 8d fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa007ca:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa007cc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa007ce:	ff e3 89 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa007d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa007d6:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa007da:	16 97       	W[P2] = R6;
ffa007dc:	24 00       	SSYNC;
ffa007de:	01 e8 00 00 	UNLINK;
ffa007e2:	40 43       	R0 = R0.B (Z);
ffa007e4:	30 05       	(R7:6) = [SP++];
ffa007e6:	10 00       	RTS;

ffa007e8 <_write_flash>:
ffa007e8:	e3 05       	[--SP] = (R7:4, P5:3);
ffa007ea:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa007ee:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01508(-4188920) */
ffa007f2:	f1 bb       	[FP -0x4] = R1;
ffa007f4:	0d e1 04 15 	P5.L = 0x1504;		/* (5380)	P5=0xffc01504(-4188924) */
ffa007f8:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa007fa:	20 30       	R4 = R0;
ffa007fc:	ff e3 4e ff 	CALL 0xffa00698 <_write_enable_flash>;
ffa00800:	2f 97       	W[P5] = R7;
ffa00802:	24 00       	SSYNC;
ffa00804:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa00806:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00808:	ff e3 6c fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0080c:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa0080e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00810:	ff e3 68 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00814:	21 e1 f0 00 	R1 = 0xf0 (X);		/*		R1=0xf0(240) */
ffa00818:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0081a:	ff e3 63 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0081e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00820:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00822:	ff e3 5f fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00826:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0082a:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0082e:	17 97       	W[P2] = R7;
ffa00830:	24 00       	SSYNC;
ffa00832:	ff e3 15 ff 	CALL 0xffa0065c <_wait_flash>;
ffa00836:	04 0c       	CC = R4 == 0x0;
ffa00838:	6c 18       	IF CC JUMP 0xffa00910 <_write_flash+0x128>;
ffa0083a:	fc b9       	P4 = [FP -0x4];
ffa0083c:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa0083e:	15 60       	R5 = 0x2 (X);		/*		R5=0x2(  2) */
ffa00840:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00844:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00848:	15 97       	W[P2] = R5;
ffa0084a:	24 00       	SSYNC;
ffa0084c:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01504(-4188924) */
ffa00850:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa00852:	0d e1 08 15 	P5.L = 0x1508;		/* (5384)	P5=0xffc01508(-4188920) */
ffa00856:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00858:	ff e3 44 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0085c:	2d 97       	W[P5] = R5;
ffa0085e:	24 00       	SSYNC;
ffa00860:	4b e1 07 00 	P3.H = 0x7;		/* (  7)	P3=0x70000 */
ffa00864:	0b e1 00 f0 	P3.L = 0xf000;		/* (-4096)	P3=0x7f000 */
ffa00868:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0086c:	43 30       	R0 = P3;
ffa0086e:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00872:	04 cc 30 0e 	R7 = R6 + R0 (NS) || W[P2] = R5 || NOP;
ffa00876:	15 97 00 00 
ffa0087a:	24 00       	SSYNC;
ffa0087c:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
ffa0087e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00880:	ff e3 30 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00884:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa00888:	47 4e       	R7 >>= 0x8;
ffa0088a:	49 43       	R1 = R1.B (Z);
ffa0088c:	7f 43       	R7 = R7.B (Z);
ffa0088e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00890:	ff e3 28 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00894:	0f 30       	R1 = R7;
ffa00896:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00898:	ff e3 24 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0089c:	71 43       	R1 = R6.B (Z);
ffa0089e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008a0:	ff e3 20 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa008a4:	21 98       	R1 = B[P4++] (Z);
ffa008a6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa008a8:	ff e3 1c fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa008ac:	2d 97       	W[P5] = R5;
ffa008ae:	24 00       	SSYNC;
ffa008b0:	0e 64       	R6 += 0x1;		/* (  1) */
ffa008b2:	ff e3 d5 fe 	CALL 0xffa0065c <_wait_flash>;
ffa008b6:	34 08       	CC = R4 == R6;
ffa008b8:	c4 17       	IF !CC JUMP 0xffa00840 <_write_flash+0x58> (BP);
ffa008ba:	fd b9       	P5 = [FP -0x4];
ffa008bc:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
ffa008be:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa008c0:	73 30       	R6 = P3;
ffa008c2:	65 32       	P4 = P5;
ffa008c4:	02 20       	JUMP.S 0xffa008c8 <_write_flash+0xe0>;
ffa008c6:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa008c8:	37 50       	R0 = R7 + R6;
ffa008ca:	ff e3 5f ff 	CALL 0xffa00788 <_read_flash_u8>;
ffa008ce:	41 43       	R1 = R0.B (Z);
ffa008d0:	28 99       	R0 = B[P5] (Z);
ffa008d2:	01 08       	CC = R1 == R0;
ffa008d4:	0f 18       	IF CC JUMP 0xffa008f2 <_write_flash+0x10a>;
ffa008d6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa008da:	00 e1 44 00 	R0.L = 0x44;		/* ( 68)	R0=0xff900044(-7339964) */
ffa008de:	00 e3 bd 03 	CALL 0xffa01058 <_printf_hex_byte>;
ffa008e2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900044(-7339964) */
ffa008e6:	21 99       	R1 = B[P4] (Z);
ffa008e8:	00 e1 54 00 	R0.L = 0x54;		/* ( 84)	R0=0xff900054(-7339948) */
ffa008ec:	00 e3 b6 03 	CALL 0xffa01058 <_printf_hex_byte>;
ffa008f0:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa008f2:	0f 64       	R7 += 0x1;		/* (  1) */
ffa008f4:	3c 08       	CC = R4 == R7;
ffa008f6:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa008f8:	e7 17       	IF !CC JUMP 0xffa008c6 <_write_flash+0xde> (BP);
ffa008fa:	05 48       	CC = !BITTST (R5, 0x0);		/* bit  0 */
ffa008fc:	0a 10       	IF !CC JUMP 0xffa00910 <_write_flash+0x128>;
ffa008fe:	01 e8 00 00 	UNLINK;
ffa00902:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900054(-7339948) */
ffa00906:	00 e1 60 00 	R0.L = 0x60;		/* ( 96)	R0=0xff900060(-7339936) */
ffa0090a:	a3 05       	(R7:4, P5:3) = [SP++];
ffa0090c:	00 e2 96 03 	JUMP.L 0xffa01038 <_printf_str>;
ffa00910:	01 e8 00 00 	UNLINK;
ffa00914:	a3 05       	(R7:4, P5:3) = [SP++];
ffa00916:	10 00       	RTS;

ffa00918 <_eth_listen>:
ffa00918:	00 0c       	CC = R0 == 0x0;
ffa0091a:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0091e:	04 18       	IF CC JUMP 0xffa00926 <_eth_listen+0xe>;
ffa00920:	01 e8 00 00 	UNLINK;
ffa00924:	10 00       	RTS;
ffa00926:	47 30       	R0 = FP;
ffa00928:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa0092a:	00 e3 0b 11 	CALL 0xffa02b40 <_bfin_EMAC_recv>;
ffa0092e:	00 0d       	CC = R0 <= 0x0;
ffa00930:	f8 1b       	IF CC JUMP 0xffa00920 <_eth_listen+0x8>;
ffa00932:	f9 b9       	P1 = [FP -0x4];
ffa00934:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901504 */
ffa00938:	0a e1 78 0e 	P2.L = 0xe78;		/* (3704)	P2=0xff900e78 <_NetDataDestIP> */
ffa0093c:	11 91       	R1 = [P2];
ffa0093e:	c8 a1       	R0 = [P1 + 0x1c];
ffa00940:	08 08       	CC = R0 == R1;
ffa00942:	ef 17       	IF !CC JUMP 0xffa00920 <_eth_listen+0x8> (BP);
ffa00944:	48 e4 13 00 	R0 = W[P1 + 0x26] (Z);
ffa00948:	00 e3 d8 07 	CALL 0xffa018f8 <_htons>;
ffa0094c:	c0 42       	R0 = R0.L (Z);
ffa0094e:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa00952:	08 08       	CC = R0 == R1;
ffa00954:	e6 17       	IF !CC JUMP 0xffa00920 <_eth_listen+0x8> (BP);
ffa00956:	f0 b9       	R0 = [FP -0x4];
ffa00958:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa0095c:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa0095e:	01 e1 d0 0b 	R1.L = 0xbd0;		/* (3024)	R1=0xff900bd0 <_g_outpkt>(-7337008) */
ffa00962:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa00964:	00 e3 12 05 	CALL 0xffa01388 <_memcpy_>;
ffa00968:	dc 2f       	JUMP.S 0xffa00920 <_eth_listen+0x8>;
	...

ffa0096c <_getRadioPacket>:
ffa0096c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0096e:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa00972:	79 e6 fa ff 	W[FP + -0xc] = R1;
ffa00976:	3a 30       	R7 = R2;
ffa00978:	28 30       	R5 = R0;
ffa0097a:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa0097c:	c0 42       	R0 = R0.L (Z);
ffa0097e:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00982:	e0 bb       	[FP -0x8] = R0;
ffa00984:	ff e3 2c fc 	CALL 0xffa001dc <_spi_write_register>;
ffa00988:	24 00       	SSYNC;
ffa0098a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e78(-4190600) */
ffa0098e:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00992:	15 97       	W[P2] = R5;
ffa00994:	24 00       	SSYNC;
ffa00996:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01508(-4188920) */
ffa0099a:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0099e:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa009a2:	28 97       	W[P5] = R0;
ffa009a4:	ff e3 02 fc 	CALL 0xffa001a8 <_spi_delay>;
ffa009a8:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff90150c */
ffa009ac:	08 e1 a8 0b 	P0.L = 0xba8;		/* (2984)	P0=0xff900ba8 <_wrptr> */
ffa009b0:	44 91       	P4 = [P0];
ffa009b2:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90f000 */
ffa009b6:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa009b8:	7f 43       	R7 = R7.B (Z);
ffa009ba:	0b e1 ac 0b 	P3.L = 0xbac;		/* (2988)	P3=0xff900bac <_g_sampW> */
ffa009be:	24 e1 ff 01 	R4 = 0x1ff (X);		/*		R4=0x1ff(511) */
ffa009c2:	07 20       	JUMP.S 0xffa009d0 <_getRadioPacket+0x64>;
ffa009c4:	08 0c       	CC = R0 == 0x1;
ffa009c6:	1a 18       	IF CC JUMP 0xffa009fa <_getRadioPacket+0x8e>;
ffa009c8:	0e 64       	R6 += 0x1;		/* (  1) */
ffa009ca:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa009cc:	06 08       	CC = R6 == R0;
ffa009ce:	25 18       	IF CC JUMP 0xffa00a18 <_getRadioPacket+0xac>;
ffa009d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009d2:	28 97       	W[P5] = R0;
ffa009d4:	ff e3 ea fb 	CALL 0xffa001a8 <_spi_delay>;
ffa009d8:	07 0c       	CC = R7 == 0x0;
ffa009da:	f7 1f       	IF CC JUMP 0xffa009c8 <_getRadioPacket+0x5c> (BP);
ffa009dc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa009e0:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa009e4:	50 95       	R0 = W[P2] (X);
ffa009e6:	10 30       	R2 = R0;
ffa009e8:	20 9a       	B[P4++] = R0;
ffa009ea:	d9 60       	R1 = 0x1b (X);		/*		R1=0x1b( 27) */
ffa009ec:	f0 42       	R0 = R6.L (Z);
ffa009ee:	08 0a       	CC = R0 <= R1 (IU);
ffa009f0:	ec 17       	IF !CC JUMP 0xffa009c8 <_getRadioPacket+0x5c> (BP);
ffa009f2:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa009f4:	06 54       	R0 = R6 & R0;
ffa009f6:	00 0c       	CC = R0 == 0x0;
ffa009f8:	e6 17       	IF !CC JUMP 0xffa009c4 <_getRadioPacket+0x58> (BP);
ffa009fa:	18 91       	R0 = [P3];
ffa009fc:	60 54       	R1 = R0 & R4;
ffa009fe:	01 32       	P0 = R1;
ffa00a00:	08 64       	R0 += 0x1;		/* (  1) */
ffa00a02:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bcc <_g_sampOff> */
ffa00a06:	09 e1 f0 0b 	P1.L = 0xbf0;		/* (3056)	P1=0xff900bf0 <_g_samples> */
ffa00a0a:	18 93       	[P3] = R0;
ffa00a0c:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00a0e:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00a10:	88 5a       	P2 = P0 + P1;
ffa00a12:	06 08       	CC = R6 == R0;
ffa00a14:	12 9b       	B[P2] = R2;
ffa00a16:	dd 17       	IF !CC JUMP 0xffa009d0 <_getRadioPacket+0x64> (BP);
ffa00a18:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa00a1c:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00a20:	15 97       	W[P2] = R5;
ffa00a22:	24 00       	SSYNC;
ffa00a24:	07 0c       	CC = R7 == 0x0;
ffa00a26:	13 1c       	IF CC JUMP 0xffa00a4c <_getRadioPacket+0xe0> (BP);
ffa00a28:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900ba8 <_wrptr> */
ffa00a2c:	08 e1 a8 0b 	P0.L = 0xba8;		/* (2984)	P0=0xff900ba8 <_wrptr> */
ffa00a30:	01 91       	R1 = [P0];
ffa00a32:	01 65       	R1 += 0x20;		/* ( 32) */
ffa00a34:	20 e1 ff 0f 	R0 = 0xfff (X);		/*		R0=0xfff(4095) */
ffa00a38:	01 54       	R0 = R1 & R0;
ffa00a3a:	01 67       	R1 += -0x20;		/* (-32) */
ffa00a3c:	09 32       	P1 = R1;
ffa00a3e:	00 93       	[P0] = R0;
ffa00a40:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa00a42:	88 e5 1c 00 	R0 = B[P1 + 0x1c] (X);
ffa00a46:	08 54       	R0 = R0 & R1;
ffa00a48:	08 08       	CC = R0 == R1;
ffa00a4a:	4b 18       	IF CC JUMP 0xffa00ae0 <_getRadioPacket+0x174>;
ffa00a4c:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900ba8 <_wrptr> */
ffa00a50:	08 e1 a8 0b 	P0.L = 0xba8;		/* (2984)	P0=0xff900ba8 <_wrptr> */
ffa00a54:	21 e1 ff 01 	R1 = 0x1ff (X);		/*		R1=0x1ff(511) */
ffa00a58:	00 91       	R0 = [P0];
ffa00a5a:	08 0a       	CC = R0 <= R1 (IU);
ffa00a5c:	36 18       	IF CC JUMP 0xffa00ac8 <_getRadioPacket+0x15c>;
ffa00a5e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00a62:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00a66:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa00a6a:	10 97       	W[P2] = R0;
ffa00a6c:	21 e1 e2 00 	R1 = 0xe2 (X);		/*		R1=0xe2(226) */
ffa00a70:	e0 b9       	R0 = [FP -0x8];
ffa00a72:	ff e3 37 fc 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00a76:	4f 30       	R1 = FP;
ffa00a78:	20 e1 04 02 	R0 = 0x204 (X);		/*		R0=0x204(516) */
ffa00a7c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa00a7e:	00 e3 75 0c 	CALL 0xffa02368 <_udp_packet_setup>;
ffa00a82:	10 32       	P2 = R0;
ffa00a84:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa00a88:	00 0d       	CC = R0 <= 0x0;
ffa00a8a:	23 18       	IF CC JUMP 0xffa00ad0 <_getRadioPacket+0x164>;
ffa00a8c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90050c */
ffa00a90:	0d e1 a4 0b 	P5.L = 0xba4;		/* (2980)	P5=0xff900ba4 <_trptr> */
ffa00a94:	22 e1 00 02 	R2 = 0x200 (X);		/*		R2=0x200(512) */
ffa00a98:	28 91       	R0 = [P5];
ffa00a9a:	10 92       	[P2++] = R0;
ffa00a9c:	4a 30       	R1 = P2;
ffa00a9e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00aa0:	00 e3 74 04 	CALL 0xffa01388 <_memcpy_>;
ffa00aa4:	28 91       	R0 = [P5];
ffa00aa6:	08 64       	R0 += 0x1;		/* (  1) */
ffa00aa8:	28 93       	[P5] = R0;
ffa00aaa:	00 e3 d1 08 	CALL 0xffa01c4c <_bfin_EMAC_send_nocopy>;
ffa00aae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00ab2:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa00ab6:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00aba:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900ba8 <_wrptr> */
ffa00abe:	10 97       	W[P2] = R0;
ffa00ac0:	08 e1 a8 0b 	P0.L = 0xba8;		/* (2984)	P0=0xff900ba8 <_wrptr> */
ffa00ac4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00ac6:	00 93       	[P0] = R0;
ffa00ac8:	01 e8 00 00 	UNLINK;
ffa00acc:	a3 05       	(R7:4, P5:3) = [SP++];
ffa00ace:	10 00       	RTS;
ffa00ad0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa00ad4:	0a e1 a4 0b 	P2.L = 0xba4;		/* (2980)	P2=0xff900ba4 <_trptr> */
ffa00ad8:	10 91       	R0 = [P2];
ffa00ada:	08 64       	R0 += 0x1;		/* (  1) */
ffa00adc:	10 93       	[P2] = R0;
ffa00ade:	e8 2f       	JUMP.S 0xffa00aae <_getRadioPacket+0x142>;
ffa00ae0:	e0 b9       	R0 = [FP -0x8];
ffa00ae2:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00ae6:	ff e3 4f fc 	CALL 0xffa00384 <_radio_set_tx>;
ffa00aea:	24 00       	SSYNC;
ffa00aec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ba4(-4191324) */
ffa00af0:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00ba4(-4191324) */
ffa00af4:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff901504 */
ffa00af8:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00afc:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa00b00:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa00b04:	0c e1 d0 0b 	P4.L = 0xbd0;		/* (3024)	P4=0xff900bd0 <_g_outpkt> */
ffa00b08:	15 97       	W[P2] = R5;
ffa00b0a:	5c 32       	P3 = P4;
ffa00b0c:	28 97       	W[P5] = R0;
ffa00b0e:	ff e3 4d fb 	CALL 0xffa001a8 <_spi_delay>;
ffa00b12:	03 6d       	P3 += 0x20;		/* ( 32) */
ffa00b14:	00 00       	NOP;
ffa00b16:	20 98       	R0 = B[P4++] (Z);
ffa00b18:	28 97       	W[P5] = R0;
ffa00b1a:	ff e3 47 fb 	CALL 0xffa001a8 <_spi_delay>;
ffa00b1e:	5c 08       	CC = P4 == P3;
ffa00b20:	fa 17       	IF !CC JUMP 0xffa00b14 <_getRadioPacket+0x1a8> (BP);
ffa00b22:	05 30       	R0 = R5;
ffa00b24:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00b28:	50 4a       	BITSET (R0, 0xa);		/* bit 10 */
ffa00b2a:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00b2e:	10 97       	W[P2] = R0;
ffa00b30:	24 00       	SSYNC;
ffa00b32:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00b34:	50 95       	R0 = W[P2] (X);
ffa00b36:	79 e5 fa ff 	R1 = W[FP + -0xc] (X);
ffa00b3a:	08 54       	R0 = R0 & R1;
ffa00b3c:	c0 42       	R0 = R0.L (Z);
ffa00b3e:	00 0c       	CC = R0 == 0x0;
ffa00b40:	0c 18       	IF CC JUMP 0xffa00b58 <_getRadioPacket+0x1ec>;
ffa00b42:	6a 32       	P5 = P2;
ffa00b44:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b46:	ff e3 e9 fe 	CALL 0xffa00918 <_eth_listen>;
ffa00b4a:	68 95       	R0 = W[P5] (X);
ffa00b4c:	79 e5 fa ff 	R1 = W[FP + -0xc] (X);
ffa00b50:	08 54       	R0 = R0 & R1;
ffa00b52:	c0 42       	R0 = R0.L (Z);
ffa00b54:	00 0c       	CC = R0 == 0x0;
ffa00b56:	f7 17       	IF !CC JUMP 0xffa00b44 <_getRadioPacket+0x1d8> (BP);
ffa00b58:	e0 b9       	R0 = [FP -0x8];
ffa00b5a:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00b5c:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00b60:	ff e3 3e fb 	CALL 0xffa001dc <_spi_write_register>;
ffa00b64:	e0 b9       	R0 = [FP -0x8];
ffa00b66:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00b6a:	ff e3 df fb 	CALL 0xffa00328 <_radio_set_rx>;
ffa00b6e:	78 2f       	JUMP.S 0xffa00a5e <_getRadioPacket+0xf2>;

ffa00b70 <_main>:
ffa00b70:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00b74:	e5 05       	[--SP] = (R7:4, P5:5);
ffa00b76:	20 e1 9c c1 	R0 = -0x3e64 (X);		/*		R0=0xffffc19c(-15972) */
ffa00b7a:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00b7e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00b82:	10 97       	W[P2] = R0;
ffa00b84:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa00b88:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa00b8a:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa00b8e:	12 97       	W[P2] = R2;
ffa00b90:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa00b94:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00b96:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa00b9a:	10 97       	W[P2] = R0;
ffa00b9c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa00ba0:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa00ba2:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa00ba6:	10 97       	W[P2] = R0;
ffa00ba8:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa00bac:	a2 6f       	P2 += -0xc;		/* (-12) */
ffa00bae:	10 97       	W[P2] = R0;
ffa00bb0:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa00bb4:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00bb6:	10 97       	W[P2] = R0;
ffa00bb8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00bba:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00bbc:	11 97       	W[P2] = R1;
ffa00bbe:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00ba8(-4191320) */
ffa00bc2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa00bc6:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00bf0(-4191248) */
ffa00bca:	09 e1 0c 04 	P1.L = 0x40c;		/* (1036)	P1=0xffc0040c(-4193268) */
ffa00bce:	08 e1 04 04 	P0.L = 0x404;		/* (1028)	P0=0xffc00404(-4193276) */
ffa00bd2:	0a e1 10 04 	P2.L = 0x410;		/* (1040)	P2=0xffc00410(-4193264) */
ffa00bd6:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa00bda:	01 97       	W[P0] = R1;
ffa00bdc:	11 97       	W[P2] = R1;
ffa00bde:	08 97       	W[P1] = R0;
ffa00be0:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00be2:	20 e1 88 00 	R0 = 0x88 (X);		/*		R0=0x88(136) */
ffa00be6:	10 97       	W[P2] = R0;
ffa00be8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00bea:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00bec:	01 97       	W[P0] = R1;
ffa00bee:	0a 97       	W[P1] = R2;
ffa00bf0:	10 97       	W[P2] = R0;
ffa00bf2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00bf4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900410 */
ffa00bf8:	b8 4f       	R0 <<= 0x17;
ffa00bfa:	0a e1 f0 0d 	P2.L = 0xdf0;		/* (3568)	P2=0xff900df0 <_printf_temp> */
ffa00bfe:	10 93       	[P2] = R0;
ffa00c00:	20 e1 01 e0 	R0 = -0x1fff (X);		/*		R0=0xffffe001(-8191) */
ffa00c04:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900df0 <_printf_temp> */
ffa00c08:	0a e1 f4 0d 	P2.L = 0xdf4;		/* (3572)	P2=0xff900df4 <_printf_out> */
ffa00c0c:	50 4f       	R0 <<= 0xa;
ffa00c0e:	10 93       	[P2] = R0;
ffa00c10:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90e001(-7282687) */
ffa00c14:	21 e1 80 01 	R1 = 0x180 (X);		/*		R1=0x180(384) */
ffa00c18:	00 e1 7c 00 	R0.L = 0x7c;		/* (124)	R0=0xff90007c(-7339908) */
ffa00c1c:	00 e3 d0 02 	CALL 0xffa011bc <_printf_int>;
ffa00c20:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa00c24:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00c28:	00 e3 08 02 	CALL 0xffa01038 <_printf_str>;
ffa00c2c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa00c30:	00 e1 8c 00 	R0.L = 0x8c;		/* (140)	R0=0xff90008c(-7339892) */
ffa00c34:	00 e3 02 02 	CALL 0xffa01038 <_printf_str>;
ffa00c38:	49 e1 40 00 	P1.H = 0x40;		/* ( 64)	P1=0x40040c */
ffa00c3c:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa00c3e:	22 e1 ca de 	R2 = -0x2136 (X);		/*		R2=0xffffdeca(-8502) */
ffa00c42:	23 e1 ad fb 	R3 = -0x453 (X);		/*		R3=0xfffffbad(-1107) */
ffa00c46:	20 e1 ed c0 	R0 = -0x3f13 (X);		/*		R0=0xffffc0ed(-16147) */
ffa00c4a:	21 e1 be ba 	R1 = -0x4542 (X);		/*		R1=0xffffbabe(-17730) */
ffa00c4e:	09 e1 00 00 	P1.L = 0x0;		/* (  0)	P1=0x400000 */
ffa00c52:	b2 e0 06 10 	LSETUP(0xffa00c56 <_main+0xe6>, 0xffa00c5e <_main+0xee>) LC1 = P1;
ffa00c56:	12 97       	W[P2] = R2;
ffa00c58:	53 b4       	W[P2 + 0x2] = R3;
ffa00c5a:	90 b4       	W[P2 + 0x4] = R0;
ffa00c5c:	d1 b4       	W[P2 + 0x6] = R1;
ffa00c5e:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00c60:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00c62:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00c64:	02 20       	JUMP.S 0xffa00c68 <_main+0xf8>;
ffa00c66:	45 6c       	P5 += 0x8;		/* (  8) */
ffa00c68:	2f 95       	R7 = W[P5] (Z);
ffa00c6a:	80 e1 ca de 	R0 = 0xdeca (Z);		/*		R0=0xdeca(57034) */
ffa00c6e:	07 08       	CC = R7 == R0;
ffa00c70:	15 18       	IF CC JUMP 0xffa00c9a <_main+0x12a>;
ffa00c72:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90deca(-7282998) */
ffa00c76:	0e 30       	R1 = R6;
ffa00c78:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00c7c:	00 e3 44 02 	CALL 0xffa01104 <_printf_hex>;
ffa00c80:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00c84:	00 e1 ac 00 	R0.L = 0xac;		/* (172)	R0=0xff9000ac(-7339860) */
ffa00c88:	0f 30       	R1 = R7;
ffa00c8a:	00 e3 3d 02 	CALL 0xffa01104 <_printf_hex>;
ffa00c8e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000ac(-7339860) */
ffa00c92:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00c96:	00 e3 d1 01 	CALL 0xffa01038 <_printf_str>;
ffa00c9a:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa00c9c:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa00ca0:	08 08       	CC = R0 == R1;
ffa00ca2:	08 18       	IF CC JUMP 0xffa00cb2 <_main+0x142>;
ffa00ca4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa00ca8:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00cac:	0e 30       	R1 = R6;
ffa00cae:	00 e3 2b 02 	CALL 0xffa01104 <_printf_hex>;
ffa00cb2:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa00cb4:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa00cb8:	08 08       	CC = R0 == R1;
ffa00cba:	08 18       	IF CC JUMP 0xffa00cca <_main+0x15a>;
ffa00cbc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00cc0:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00cc4:	0e 30       	R1 = R6;
ffa00cc6:	00 e3 1f 02 	CALL 0xffa01104 <_printf_hex>;
ffa00cca:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa00ccc:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa00cd0:	08 08       	CC = R0 == R1;
ffa00cd2:	08 18       	IF CC JUMP 0xffa00ce2 <_main+0x172>;
ffa00cd4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00cd8:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00cdc:	0e 30       	R1 = R6;
ffa00cde:	00 e3 13 02 	CALL 0xffa01104 <_printf_hex>;
ffa00ce2:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa00ce6:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa00cea:	55 08       	CC = P5 == P2;
ffa00cec:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00cee:	bc 17       	IF !CC JUMP 0xffa00c66 <_main+0xf6> (BP);
ffa00cf0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00cf4:	00 e1 b4 00 	R0.L = 0xb4;		/* (180)	R0=0xff9000b4(-7339852) */
ffa00cf8:	00 e3 a0 01 	CALL 0xffa01038 <_printf_str>;
ffa00cfc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0fff8(-4128776) */
ffa00d00:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00d02:	0a e1 84 06 	P2.L = 0x684;		/* (1668)	P2=0xffc00684(-4192636) */
ffa00d06:	10 97       	W[P2] = R0;
ffa00d08:	24 00       	SSYNC;
ffa00d0a:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800684 */
ffa00d0e:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00d12:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00d14:	16 93       	[P2] = R6;
ffa00d16:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa00d1a:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa00d1e:	0a e1 50 06 	P2.L = 0x650;		/* (1616)	P2=0xffc00650(-4192688) */
ffa00d22:	10 97       	W[P2] = R0;
ffa00d24:	20 e1 09 3d 	R0 = 0x3d09 (X);		/*		R0=0x3d09(15625) */
ffa00d28:	18 4f       	R0 <<= 0x3;
ffa00d2a:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00d2c:	10 93       	[P2] = R0;
ffa00d2e:	80 e1 24 f4 	R0 = 0xf424 (Z);		/*		R0=0xf424(62500) */
ffa00d32:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00d34:	10 93       	[P2] = R0;
ffa00d36:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00d38:	50 95       	R0 = W[P2] (X);
ffa00d3a:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa00d3c:	10 97       	W[P2] = R0;
ffa00d3e:	00 e3 bd 0c 	CALL 0xffa026b8 <_bfin_EMAC_init>;
ffa00d42:	00 0c       	CC = R0 == 0x0;
ffa00d44:	20 30       	R4 = R0;
ffa00d46:	1c 19       	IF CC JUMP 0xffa00f7e <_main+0x40e>;
ffa00d48:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00650(-4192688) */
ffa00d4c:	20 e1 87 38 	R0 = 0x3887 (X);		/*		R0=0x3887(14471) */
ffa00d50:	0a e1 00 32 	P2.L = 0x3200;		/* (12800)	P2=0xffc03200(-4181504) */
ffa00d54:	10 97       	W[P2] = R0;
ffa00d56:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03200(-4181504) */
ffa00d5a:	20 e1 56 fe 	R0 = -0x1aa (X);		/*		R0=0xfffffe56(-426) */
ffa00d5e:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa00d62:	10 97       	W[P2] = R0;
ffa00d64:	20 e1 a9 01 	R0 = 0x1a9 (X);		/*		R0=0x1a9(425) */
ffa00d68:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa00d6a:	10 97       	W[P2] = R0;
ffa00d6c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa00d70:	20 e1 40 01 	R0 = 0x140 (X);		/*		R0=0x140(320) */
ffa00d74:	0a e1 10 32 	P2.L = 0x3210;		/* (12816)	P2=0xffc03210(-4181488) */
ffa00d78:	10 97       	W[P2] = R0;
ffa00d7a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03210(-4181488) */
ffa00d7e:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa00d82:	50 95       	R0 = W[P2] (X);
ffa00d84:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00d86:	10 97       	W[P2] = R0;
ffa00d88:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00d8a:	50 95       	R0 = W[P2] (X);
ffa00d8c:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa00d8e:	10 97       	W[P2] = R0;
ffa00d90:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa00d94:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00d98:	50 95       	R0 = W[P2] (X);
ffa00d9a:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00d9c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00000(-4194304) */
ffa00da0:	10 97       	W[P2] = R0;
ffa00da2:	09 e1 00 09 	P1.L = 0x900;		/* (2304)	P1=0xffc00900(-4192000) */
ffa00da6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00da8:	08 97       	W[P1] = R0;
ffa00daa:	24 00       	SSYNC;
ffa00dac:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903204 */
ffa00db0:	0a e1 c4 0b 	P2.L = 0xbc4;		/* (3012)	P2=0xff900bc4 <_g_sampR> */
ffa00db4:	16 93       	[P2] = R6;
ffa00db6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bc4 <_g_sampR> */
ffa00dba:	0a e1 ac 0b 	P2.L = 0xbac;		/* (2988)	P2=0xff900bac <_g_sampW> */
ffa00dbe:	16 93       	[P2] = R6;
ffa00dc0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bac <_g_sampW> */
ffa00dc4:	0a e1 cc 0b 	P2.L = 0xbcc;		/* (3020)	P2=0xff900bcc <_g_sampOff> */
ffa00dc8:	16 93       	[P2] = R6;
ffa00dca:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00dcc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bcc <_g_sampOff> */
ffa00dd0:	f8 4f       	R0 <<= 0x1f;
ffa00dd2:	0a e1 b0 0b 	P2.L = 0xbb0;		/* (2992)	P2=0xff900bb0 <_g_sampInc> */
ffa00dd6:	10 93       	[P2] = R0;
ffa00dd8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb0 <_g_sampInc> */
ffa00ddc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00dde:	0a e1 c0 0b 	P2.L = 0xbc0;		/* (3008)	P2=0xff900bc0 <_g_sampCh> */
ffa00de2:	10 9b       	B[P2] = R0;
ffa00de4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bc0(-4191296) */
ffa00de8:	e8 60       	R0 = 0x1d (X);		/*		R0=0x1d( 29) */
ffa00dea:	0a e1 08 09 	P2.L = 0x908;		/* (2312)	P2=0xffc00908(-4191992) */
ffa00dee:	10 97       	W[P2] = R0;
ffa00df0:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa00df2:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00df4:	10 97       	W[P2] = R0;
ffa00df6:	b8 60       	R0 = 0x17 (X);		/*		R0=0x17( 23) */
ffa00df8:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00dfa:	10 97       	W[P2] = R0;
ffa00dfc:	20 e1 03 4e 	R0 = 0x4e03 (X);		/*		R0=0x4e03(19971) */
ffa00e00:	08 97       	W[P1] = R0;
ffa00e02:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe00908(-2094840) */
ffa00e06:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa04e03(-6271485) */
ffa00e0a:	00 e1 44 05 	R0.L = 0x544;		/* (1348)	R0=0xffa00544 <_audio_out>(-6290108) */
ffa00e0e:	0a e1 1c 20 	P2.L = 0x201c;		/* (8220)	P2=0xffe0201c(-2088932) */
ffa00e12:	10 93       	[P2] = R0;
ffa00e14:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0201c(-4186084) */
ffa00e18:	27 e1 00 02 	R7 = 0x200 (X);		/*		R7=0x200(512) */
ffa00e1c:	0a e1 0c 01 	P2.L = 0x10c;		/* (268)	P2=0xffc0010c(-4194036) */
ffa00e20:	17 93       	[P2] = R7;
ffa00e22:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90010c */
ffa00e26:	0a e1 a8 0b 	P2.L = 0xba8;		/* (2984)	P2=0xff900ba8 <_wrptr> */
ffa00e2a:	16 93       	[P2] = R6;
ffa00e2c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba8 <_wrptr> */
ffa00e30:	0a e1 a4 0b 	P2.L = 0xba4;		/* (2980)	P2=0xff900ba4 <_trptr> */
ffa00e34:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900544(-7338684) */
ffa00e38:	16 93       	[P2] = R6;
ffa00e3a:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa00e3e:	00 e3 fd 00 	CALL 0xffa01038 <_printf_str>;
ffa00e42:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ba4(-4191324) */
ffa00e46:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa00e4a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00e4e:	10 97       	W[P2] = R0;
ffa00e50:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa00e54:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00e56:	10 97       	W[P2] = R0;
ffa00e58:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00e5c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa00e5e:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00e62:	10 97       	W[P2] = R0;
ffa00e64:	24 00       	SSYNC;
ffa00e66:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa00e68:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00e6a:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa00e6c:	ff e3 ee fa 	CALL 0xffa00448 <_radio_init>;
ffa00e70:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa00e72:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00e74:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa00e78:	ff e3 e8 fa 	CALL 0xffa00448 <_radio_init>;
ffa00e7c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00e7e:	07 30       	R0 = R7;
ffa00e80:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa00e84:	ff e3 e2 fa 	CALL 0xffa00448 <_radio_init>;
ffa00e88:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa00e8a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00e8c:	ff e3 4e fa 	CALL 0xffa00328 <_radio_set_rx>;
ffa00e90:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa00e94:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00e96:	ff e3 49 fa 	CALL 0xffa00328 <_radio_set_rx>;
ffa00e9a:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa00e9e:	07 30       	R0 = R7;
ffa00ea0:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00ea4:	46 e1 62 10 	R6.H = 0x1062;		/* (4194)	R6=0x10620000(274857984) */
ffa00ea8:	ff e3 40 fa 	CALL 0xffa00328 <_radio_set_rx>;
ffa00eac:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa00eae:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa00eb0:	0d e1 00 07 	P5.L = 0x700;		/* (1792)	P5=0xffc00700(-4192512) */
ffa00eb4:	06 e1 d3 4d 	R6.L = 0x4dd3;		/* (19923)	R6=0x10624dd3(274877907) */
ffa00eb8:	04 30       	R0 = R4;
ffa00eba:	ff e3 2f fd 	CALL 0xffa00918 <_eth_listen>;
ffa00ebe:	68 95       	R0 = W[P5] (X);
ffa00ec0:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa00ec2:	42 18       	IF CC JUMP 0xffa00f46 <_main+0x3d6>;
ffa00ec4:	00 00       	NOP;
ffa00ec6:	00 00       	NOP;
ffa00ec8:	00 00       	NOP;
ffa00eca:	68 95       	R0 = W[P5] (X);
ffa00ecc:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00ece:	45 18       	IF CC JUMP 0xffa00f58 <_main+0x3e8>;
ffa00ed0:	00 00       	NOP;
ffa00ed2:	00 00       	NOP;
ffa00ed4:	00 00       	NOP;
ffa00ed6:	68 95       	R0 = W[P5] (X);
ffa00ed8:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa00eda:	49 18       	IF CC JUMP 0xffa00f6c <_main+0x3fc>;
ffa00edc:	20 e1 28 01 	R0 = 0x128 (X);		/*		R0=0x128(296) */
ffa00ee0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00ee4:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00ee8:	69 95       	R1 = W[P5] (X);
ffa00eea:	08 54       	R0 = R0 & R1;
ffa00eec:	21 e1 28 01 	R1 = 0x128 (X);		/*		R1=0x128(296) */
ffa00ef0:	08 08       	CC = R0 == R1;
ffa00ef2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00ef4:	38 07       	IF CC R7 = R0;
ffa00ef6:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa00efa:	10 97       	W[P2] = R0;
ffa00efc:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800708 */
ffa00f00:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00f04:	10 91       	R0 = [P2];
ffa00f06:	80 c0 06 18 	A1 = R0.L * R6.L (FU);
ffa00f0a:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00f0e:	81 c0 06 86 	A1 += R0.H * R6.L, A0 = R0.H * R6.H (FU);
ffa00f12:	81 c0 30 98 	A1 += R6.H * R0.L (FU);
ffa00f16:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00f1a:	0b c4 00 80 	A0 += A1;
ffa00f1e:	8b c0 00 38 	R0 = A0 (FU);
ffa00f22:	82 c6 d0 83 	R1 = R0 >> 0x6;
ffa00f26:	0d 08       	CC = R5 == R1;
ffa00f28:	c8 1b       	IF CC JUMP 0xffa00eb8 <_main+0x348>;
ffa00f2a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa00f2e:	20 e1 00 80 	R0 = -0x8000 (X);		/*		R0=0xffff8000(-32768) */
ffa00f32:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa00f36:	10 97       	W[P2] = R0;
ffa00f38:	04 30       	R0 = R4;
ffa00f3a:	29 30       	R5 = R1;
ffa00f3c:	ff e3 ee fc 	CALL 0xffa00918 <_eth_listen>;
ffa00f40:	68 95       	R0 = W[P5] (X);
ffa00f42:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa00f44:	c2 17       	IF !CC JUMP 0xffa00ec8 <_main+0x358> (BP);
ffa00f46:	7a 43       	R2 = R7.B (Z);
ffa00f48:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa00f4a:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa00f4c:	ff e3 10 fd 	CALL 0xffa0096c <_getRadioPacket>;
ffa00f50:	68 95       	R0 = W[P5] (X);
ffa00f52:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00f54:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00f56:	bf 17       	IF !CC JUMP 0xffa00ed4 <_main+0x364> (BP);
ffa00f58:	7a 43       	R2 = R7.B (Z);
ffa00f5a:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa00f5e:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa00f60:	ff e3 06 fd 	CALL 0xffa0096c <_getRadioPacket>;
ffa00f64:	68 95       	R0 = W[P5] (X);
ffa00f66:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa00f68:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00f6a:	b9 17       	IF !CC JUMP 0xffa00edc <_main+0x36c> (BP);
ffa00f6c:	7a 43       	R2 = R7.B (Z);
ffa00f6e:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa00f72:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa00f76:	ff e3 fb fc 	CALL 0xffa0096c <_getRadioPacket>;
ffa00f7a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00f7c:	b0 2f       	JUMP.S 0xffa00edc <_main+0x36c>;
ffa00f7e:	00 e3 6f 0d 	CALL 0xffa02a5c <_DHCP_req>;
ffa00f82:	e3 2e       	JUMP.S 0xffa00d48 <_main+0x1d8>;

ffa00f84 <_uart_str>:
ffa00f84:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa00f88:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00f8c:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa00f90:	08 32       	P1 = R0;
ffa00f92:	50 95       	R0 = W[P2] (X);
ffa00f94:	c0 42       	R0 = R0.L (Z);
ffa00f96:	08 0c       	CC = R0 == 0x1;
ffa00f98:	06 18       	IF CC JUMP 0xffa00fa4 <_uart_str+0x20>;
ffa00f9a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00f9c:	02 30       	R0 = R2;
ffa00f9e:	01 e8 00 00 	UNLINK;
ffa00fa2:	10 00       	RTS;
ffa00fa4:	48 99       	R0 = B[P1] (X);
ffa00fa6:	01 43       	R1 = R0.B (X);
ffa00fa8:	01 0c       	CC = R1 == 0x0;
ffa00faa:	f8 1b       	IF CC JUMP 0xffa00f9a <_uart_str+0x16>;
ffa00fac:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa00fb0:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00fb2:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00fb4:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa00fb8:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa00fbc:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa00fbe:	b2 e0 1c 00 	LSETUP(0xffa00fc2 <_uart_str+0x3e>, 0xffa00ff6 <_uart_str+0x72>) LC1 = P0;
ffa00fc2:	19 08       	CC = R1 == R3;
ffa00fc4:	1b 18       	IF CC JUMP 0xffa00ffa <_uart_str+0x76>;
ffa00fc6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa00fca:	00 43       	R0 = R0.B (X);
ffa00fcc:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00fd0:	10 97       	W[P2] = R0;
ffa00fd2:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa00fd4:	50 95       	R0 = W[P2] (X);
ffa00fd6:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00fd8:	0a 10       	IF !CC JUMP 0xffa00fec <_uart_str+0x68>;
ffa00fda:	00 00       	NOP;
ffa00fdc:	00 00       	NOP;
ffa00fde:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa00fe2:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00fe6:	50 95       	R0 = W[P2] (X);
ffa00fe8:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00fea:	f9 1f       	IF CC JUMP 0xffa00fdc <_uart_str+0x58> (BP);
ffa00fec:	48 99       	R0 = B[P1] (X);
ffa00fee:	01 43       	R1 = R0.B (X);
ffa00ff0:	01 0c       	CC = R1 == 0x0;
ffa00ff2:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00ff4:	d4 1b       	IF CC JUMP 0xffa00f9c <_uart_str+0x18>;
ffa00ff6:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00ff8:	d2 2f       	JUMP.S 0xffa00f9c <_uart_str+0x18>;
ffa00ffa:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00ffc:	20 9f       	W[I0] = R0.L;
ffa00ffe:	02 20       	JUMP.S 0xffa01002 <_uart_str+0x7e>;
ffa01000:	00 00       	NOP;
ffa01002:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa01006:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa0100a:	50 95       	R0 = W[P2] (X);
ffa0100c:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0100e:	f9 1f       	IF CC JUMP 0xffa01000 <_uart_str+0x7c> (BP);
ffa01010:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa01014:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa01016:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa0101a:	10 97       	W[P2] = R0;
ffa0101c:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa0101e:	50 95       	R0 = W[P2] (X);
ffa01020:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01022:	e5 13       	IF !CC JUMP 0xffa00fec <_uart_str+0x68>;
ffa01024:	00 00       	NOP;
ffa01026:	00 00       	NOP;
ffa01028:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa0102c:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa01030:	50 95       	R0 = W[P2] (X);
ffa01032:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01034:	f9 1f       	IF CC JUMP 0xffa01026 <_uart_str+0xa2> (BP);
ffa01036:	db 2f       	JUMP.S 0xffa00fec <_uart_str+0x68>;

ffa01038 <_printf_str>:
ffa01038:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0103c:	01 e8 00 00 	UNLINK;
ffa01040:	ff e2 a2 ff 	JUMP.L 0xffa00f84 <_uart_str>;

ffa01044 <_printf_newline>:
ffa01044:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01048:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa0104c:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa01050:	01 e8 00 00 	UNLINK;
ffa01054:	ff e2 98 ff 	JUMP.L 0xffa00f84 <_uart_str>;

ffa01058 <_printf_hex_byte>:
ffa01058:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0105a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0105e:	28 32       	P5 = R0;
ffa01060:	39 30       	R7 = R1;
ffa01062:	00 e3 b1 01 	CALL 0xffa013c4 <_strlen_>;
ffa01066:	10 30       	R2 = R0;
ffa01068:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa0106c:	02 09       	CC = R2 <= R0;
ffa0106e:	41 10       	IF !CC JUMP 0xffa010f0 <_printf_hex_byte+0x98>;
ffa01070:	02 0d       	CC = R2 <= 0x0;
ffa01072:	44 18       	IF CC JUMP 0xffa010fa <_printf_hex_byte+0xa2>;
ffa01074:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa01078:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0107a:	08 e1 f4 0d 	P0.L = 0xdf4;		/* (3572)	P0=0xff900df4 <_printf_out> */
ffa0107e:	09 32       	P1 = R1;
ffa01080:	42 91       	P2 = [P0];
ffa01082:	09 64       	R1 += 0x1;		/* (  1) */
ffa01084:	68 98       	R0 = B[P5++] (X);
ffa01086:	0a 08       	CC = R2 == R1;
ffa01088:	8a 5a       	P2 = P2 + P1;
ffa0108a:	10 9b       	B[P2] = R0;
ffa0108c:	f9 17       	IF !CC JUMP 0xffa0107e <_printf_hex_byte+0x26> (BP);
ffa0108e:	0a 32       	P1 = R2;
ffa01090:	42 91       	P2 = [P0];
ffa01092:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01094:	22 32       	P4 = R2;
ffa01096:	79 43       	R1 = R7.B (Z);
ffa01098:	8a 5a       	P2 = P2 + P1;
ffa0109a:	10 9b       	B[P2] = R0;
ffa0109c:	42 91       	P2 = [P0];
ffa0109e:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa010a0:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa010a4:	11 6c       	P1 += 0x2;		/* (  2) */
ffa010a6:	a2 5a       	P2 = P2 + P4;
ffa010a8:	10 9b       	B[P2] = R0;
ffa010aa:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa010ac:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa010ae:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa010b0:	01 30       	R0 = R1;
ffa010b2:	10 40       	R0 >>>= R2;
ffa010b4:	18 54       	R0 = R0 & R3;
ffa010b6:	38 09       	CC = R0 <= R7;
ffa010b8:	1a 1c       	IF CC JUMP 0xffa010ec <_printf_hex_byte+0x94> (BP);
ffa010ba:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa010bc:	42 91       	P2 = [P0];
ffa010be:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa010c0:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900700 */
ffa010c4:	22 0c       	CC = R2 == -0x4;
ffa010c6:	8a 5a       	P2 = P2 + P1;
ffa010c8:	0d e1 f4 0d 	P5.L = 0xdf4;		/* (3572)	P5=0xff900df4 <_printf_out> */
ffa010cc:	10 9b       	B[P2] = R0;
ffa010ce:	09 6c       	P1 += 0x1;		/* (  1) */
ffa010d0:	f0 17       	IF !CC JUMP 0xffa010b0 <_printf_hex_byte+0x58> (BP);
ffa010d2:	6a 91       	P2 = [P5];
ffa010d4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa010d6:	94 5a       	P2 = P4 + P2;
ffa010d8:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa010dc:	28 91       	R0 = [P5];
ffa010de:	ff e3 53 ff 	CALL 0xffa00f84 <_uart_str>;
ffa010e2:	01 e8 00 00 	UNLINK;
ffa010e6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa010e8:	bc 05       	(R7:7, P5:4) = [SP++];
ffa010ea:	10 00       	RTS;
ffa010ec:	80 65       	R0 += 0x30;		/* ( 48) */
ffa010ee:	e7 2f       	JUMP.S 0xffa010bc <_printf_hex_byte+0x64>;
ffa010f0:	01 e8 00 00 	UNLINK;
ffa010f4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa010f6:	bc 05       	(R7:7, P5:4) = [SP++];
ffa010f8:	10 00       	RTS;
ffa010fa:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900df4 <_printf_out> */
ffa010fe:	08 e1 f4 0d 	P0.L = 0xdf4;		/* (3572)	P0=0xff900df4 <_printf_out> */
ffa01102:	c6 2f       	JUMP.S 0xffa0108e <_printf_hex_byte+0x36>;

ffa01104 <_printf_hex>:
ffa01104:	fb 05       	[--SP] = (R7:7, P5:3);
ffa01106:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0110a:	28 32       	P5 = R0;
ffa0110c:	39 30       	R7 = R1;
ffa0110e:	00 e3 5b 01 	CALL 0xffa013c4 <_strlen_>;
ffa01112:	10 30       	R2 = R0;
ffa01114:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa01118:	02 09       	CC = R2 <= R0;
ffa0111a:	47 10       	IF !CC JUMP 0xffa011a8 <_printf_hex+0xa4>;
ffa0111c:	02 0d       	CC = R2 <= 0x0;
ffa0111e:	4a 18       	IF CC JUMP 0xffa011b2 <_printf_hex+0xae>;
ffa01120:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900900 */
ffa01124:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01126:	09 e1 f4 0d 	P1.L = 0xdf4;		/* (3572)	P1=0xff900df4 <_printf_out> */
ffa0112a:	01 32       	P0 = R1;
ffa0112c:	4a 91       	P2 = [P1];
ffa0112e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01130:	68 98       	R0 = B[P5++] (X);
ffa01132:	0a 08       	CC = R2 == R1;
ffa01134:	82 5a       	P2 = P2 + P0;
ffa01136:	10 9b       	B[P2] = R0;
ffa01138:	f9 17       	IF !CC JUMP 0xffa0112a <_printf_hex+0x26> (BP);
ffa0113a:	02 32       	P0 = R2;
ffa0113c:	4a 91       	P2 = [P1];
ffa0113e:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01140:	1a 32       	P3 = R2;
ffa01142:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa01144:	82 5a       	P2 = P2 + P0;
ffa01146:	10 9b       	B[P2] = R0;
ffa01148:	4a 91       	P2 = [P1];
ffa0114a:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa0114c:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01150:	10 6c       	P0 += 0x2;		/* (  2) */
ffa01152:	9a 5a       	P2 = P2 + P3;
ffa01154:	10 9b       	B[P2] = R0;
ffa01156:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa01158:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa0115a:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa0115c:	b2 e0 10 50 	LSETUP(0xffa01160 <_printf_hex+0x5c>, 0xffa0117c <_printf_hex+0x78>) LC1 = P5;
ffa01160:	07 30       	R0 = R7;
ffa01162:	08 40       	R0 >>>= R1;
ffa01164:	10 54       	R0 = R0 & R2;
ffa01166:	18 09       	CC = R0 <= R3;
ffa01168:	1e 1c       	IF CC JUMP 0xffa011a4 <_printf_hex+0xa0> (BP);
ffa0116a:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa0116c:	4a 91       	P2 = [P1];
ffa0116e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900bd0 <_g_outpkt> */
ffa01172:	0c e1 f4 0d 	P4.L = 0xdf4;		/* (3572)	P4=0xff900df4 <_printf_out> */
ffa01176:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa01178:	82 5a       	P2 = P2 + P0;
ffa0117a:	10 9b       	B[P2] = R0;
ffa0117c:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0117e:	62 91       	P2 = [P4];
ffa01180:	4b 32       	P1 = P3;
ffa01182:	49 6c       	P1 += 0x9;		/* (  9) */
ffa01184:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01186:	8a 5a       	P2 = P2 + P1;
ffa01188:	10 9b       	B[P2] = R0;
ffa0118a:	62 91       	P2 = [P4];
ffa0118c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0118e:	8a 5a       	P2 = P2 + P1;
ffa01190:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa01194:	20 91       	R0 = [P4];
ffa01196:	ff e3 f7 fe 	CALL 0xffa00f84 <_uart_str>;
ffa0119a:	01 e8 00 00 	UNLINK;
ffa0119e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa011a0:	bb 05       	(R7:7, P5:3) = [SP++];
ffa011a2:	10 00       	RTS;
ffa011a4:	80 65       	R0 += 0x30;		/* ( 48) */
ffa011a6:	e3 2f       	JUMP.S 0xffa0116c <_printf_hex+0x68>;
ffa011a8:	01 e8 00 00 	UNLINK;
ffa011ac:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa011ae:	bb 05       	(R7:7, P5:3) = [SP++];
ffa011b0:	10 00       	RTS;
ffa011b2:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900df4 <_printf_out> */
ffa011b6:	09 e1 f4 0d 	P1.L = 0xdf4;		/* (3572)	P1=0xff900df4 <_printf_out> */
ffa011ba:	c0 2f       	JUMP.S 0xffa0113a <_printf_hex+0x36>;

ffa011bc <_printf_int>:
ffa011bc:	f3 05       	[--SP] = (R7:6, P5:3);
ffa011be:	01 0c       	CC = R1 == 0x0;
ffa011c0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa011c4:	28 32       	P5 = R0;
ffa011c6:	39 30       	R7 = R1;
ffa011c8:	41 14       	IF !CC JUMP 0xffa0124a <_printf_int+0x8e> (BP);
ffa011ca:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bac <_g_sampW> */
ffa011ce:	0b e1 f0 0d 	P3.L = 0xdf0;		/* (3568)	P3=0xff900df0 <_printf_temp> */
ffa011d2:	5a 91       	P2 = [P3];
ffa011d4:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa011d6:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa011d8:	10 9b       	B[P2] = R0;
ffa011da:	45 30       	R0 = P5;
ffa011dc:	00 e3 f4 00 	CALL 0xffa013c4 <_strlen_>;
ffa011e0:	c6 50       	R3 = R6 + R0;
ffa011e2:	10 30       	R2 = R0;
ffa011e4:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa011e8:	03 09       	CC = R3 <= R0;
ffa011ea:	4e 10       	IF !CC JUMP 0xffa01286 <_printf_int+0xca>;
ffa011ec:	02 0d       	CC = R2 <= 0x0;
ffa011ee:	79 18       	IF CC JUMP 0xffa012e0 <_printf_int+0x124>;
ffa011f0:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900df4 <_printf_out> */
ffa011f4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa011f6:	08 e1 f4 0d 	P0.L = 0xdf4;		/* (3572)	P0=0xff900df4 <_printf_out> */
ffa011fa:	09 32       	P1 = R1;
ffa011fc:	42 91       	P2 = [P0];
ffa011fe:	09 64       	R1 += 0x1;		/* (  1) */
ffa01200:	68 98       	R0 = B[P5++] (X);
ffa01202:	0a 08       	CC = R2 == R1;
ffa01204:	8a 5a       	P2 = P2 + P1;
ffa01206:	10 9b       	B[P2] = R0;
ffa01208:	f9 17       	IF !CC JUMP 0xffa011fa <_printf_int+0x3e> (BP);
ffa0120a:	06 0d       	CC = R6 <= 0x0;
ffa0120c:	12 18       	IF CC JUMP 0xffa01230 <_printf_int+0x74>;
ffa0120e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01210:	00 91       	R0 = [P0];
ffa01212:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa01216:	5a 91 00 00 
ffa0121a:	08 50       	R0 = R0 + R1;
ffa0121c:	08 32       	P1 = R0;
ffa0121e:	0e 52       	R0 = R6 - R1;
ffa01220:	28 32       	P5 = R0;
ffa01222:	09 64       	R1 += 0x1;		/* (  1) */
ffa01224:	0e 08       	CC = R6 == R1;
ffa01226:	aa 5a       	P2 = P2 + P5;
ffa01228:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa0122c:	08 9b       	B[P1] = R0;
ffa0122e:	f1 17       	IF !CC JUMP 0xffa01210 <_printf_int+0x54> (BP);
ffa01230:	0b 32       	P1 = R3;
ffa01232:	42 91       	P2 = [P0];
ffa01234:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01236:	91 5a       	P2 = P1 + P2;
ffa01238:	10 9b       	B[P2] = R0;
ffa0123a:	00 91       	R0 = [P0];
ffa0123c:	ff e3 a4 fe 	CALL 0xffa00f84 <_uart_str>;
ffa01240:	01 e8 00 00 	UNLINK;
ffa01244:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01246:	b3 05       	(R7:6, P5:3) = [SP++];
ffa01248:	10 00       	RTS;
ffa0124a:	01 0d       	CC = R1 <= 0x0;
ffa0124c:	22 18       	IF CC JUMP 0xffa01290 <_printf_int+0xd4>;
ffa0124e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df0 <_printf_temp> */
ffa01252:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01254:	0b e1 f0 0d 	P3.L = 0xdf0;		/* (3568)	P3=0xff900df0 <_printf_temp> */
ffa01258:	05 20       	JUMP.S 0xffa01262 <_printf_int+0xa6>;
ffa0125a:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa0125e:	06 08       	CC = R6 == R0;
ffa01260:	bd 1b       	IF CC JUMP 0xffa011da <_printf_int+0x1e>;
ffa01262:	07 30       	R0 = R7;
ffa01264:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01266:	00 e3 83 00 	CALL 0xffa0136c <_mod>;
ffa0126a:	0e 32       	P1 = R6;
ffa0126c:	5a 91       	P2 = [P3];
ffa0126e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01270:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01272:	0e 64       	R6 += 0x1;		/* (  1) */
ffa01274:	8a 5a       	P2 = P2 + P1;
ffa01276:	10 9b       	B[P2] = R0;
ffa01278:	07 30       	R0 = R7;
ffa0127a:	00 e3 6b 00 	CALL 0xffa01350 <_div>;
ffa0127e:	00 0d       	CC = R0 <= 0x0;
ffa01280:	38 30       	R7 = R0;
ffa01282:	ec 17       	IF !CC JUMP 0xffa0125a <_printf_int+0x9e> (BP);
ffa01284:	ab 2f       	JUMP.S 0xffa011da <_printf_int+0x1e>;
ffa01286:	01 e8 00 00 	UNLINK;
ffa0128a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0128c:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0128e:	10 00       	RTS;
ffa01290:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01292:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa01294:	f8 4f       	R0 <<= 0x1f;
ffa01296:	f8 53       	R7 = R0 - R7;
ffa01298:	07 0d       	CC = R7 <= 0x0;
ffa0129a:	2c 18       	IF CC JUMP 0xffa012f2 <_printf_int+0x136>;
ffa0129c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df0 <_printf_temp> */
ffa012a0:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa012a2:	0b e1 f0 0d 	P3.L = 0xdf0;		/* (3568)	P3=0xff900df0 <_printf_temp> */
ffa012a6:	05 20       	JUMP.S 0xffa012b0 <_printf_int+0xf4>;
ffa012a8:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa012ac:	4c 08       	CC = P4 == P1;
ffa012ae:	1e 18       	IF CC JUMP 0xffa012ea <_printf_int+0x12e>;
ffa012b0:	07 30       	R0 = R7;
ffa012b2:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa012b4:	00 e3 5c 00 	CALL 0xffa0136c <_mod>;
ffa012b8:	5a 91       	P2 = [P3];
ffa012ba:	80 65       	R0 += 0x30;		/* ( 48) */
ffa012bc:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa012be:	a2 5a       	P2 = P2 + P4;
ffa012c0:	10 9b       	B[P2] = R0;
ffa012c2:	07 30       	R0 = R7;
ffa012c4:	00 e3 46 00 	CALL 0xffa01350 <_div>;
ffa012c8:	00 0d       	CC = R0 <= 0x0;
ffa012ca:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa012cc:	38 30       	R7 = R0;
ffa012ce:	ed 17       	IF !CC JUMP 0xffa012a8 <_printf_int+0xec> (BP);
ffa012d0:	74 30       	R6 = P4;
ffa012d2:	4c 32       	P1 = P4;
ffa012d4:	0e 64       	R6 += 0x1;		/* (  1) */
ffa012d6:	5a 91       	P2 = [P3];
ffa012d8:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa012da:	8a 5a       	P2 = P2 + P1;
ffa012dc:	10 9b       	B[P2] = R0;
ffa012de:	7e 2f       	JUMP.S 0xffa011da <_printf_int+0x1e>;
ffa012e0:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900df4 <_printf_out> */
ffa012e4:	08 e1 f4 0d 	P0.L = 0xdf4;		/* (3572)	P0=0xff900df4 <_printf_out> */
ffa012e8:	91 2f       	JUMP.S 0xffa0120a <_printf_int+0x4e>;
ffa012ea:	4c 32       	P1 = P4;
ffa012ec:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa012f0:	f3 2f       	JUMP.S 0xffa012d6 <_printf_int+0x11a>;
ffa012f2:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df0 <_printf_temp> */
ffa012f6:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa012f8:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa012fa:	0b e1 f0 0d 	P3.L = 0xdf0;		/* (3568)	P3=0xff900df0 <_printf_temp> */
ffa012fe:	ec 2f       	JUMP.S 0xffa012d6 <_printf_int+0x11a>;

ffa01300 <_printf_ip>:
ffa01300:	70 05       	[--SP] = (R7:6);
ffa01302:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01306:	39 30       	R7 = R1;
ffa01308:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa0130c:	49 43       	R1 = R1.B (Z);
ffa0130e:	ff e3 57 ff 	CALL 0xffa011bc <_printf_int>;
ffa01312:	06 e1 88 00 	R6.L = 0x88;		/* (136)	R6=0xff900088(-7339896) */
ffa01316:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa0131a:	49 43       	R1 = R1.B (Z);
ffa0131c:	06 30       	R0 = R6;
ffa0131e:	ff e3 4f ff 	CALL 0xffa011bc <_printf_int>;
ffa01322:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa01326:	49 43       	R1 = R1.B (Z);
ffa01328:	06 30       	R0 = R6;
ffa0132a:	c7 4e       	R7 >>= 0x18;
ffa0132c:	ff e3 48 ff 	CALL 0xffa011bc <_printf_int>;
ffa01330:	0f 30       	R1 = R7;
ffa01332:	06 30       	R0 = R6;
ffa01334:	ff e3 44 ff 	CALL 0xffa011bc <_printf_int>;
ffa01338:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa0133c:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa01340:	ff e3 7c fe 	CALL 0xffa01038 <_printf_str>;
ffa01344:	01 e8 00 00 	UNLINK;
ffa01348:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0134a:	30 05       	(R7:6) = [SP++];
ffa0134c:	10 00       	RTS;
	...

ffa01350 <_div>:
ffa01350:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01354:	08 4f       	R0 <<= 0x1;
ffa01356:	48 42       	DIVS (R0, R1);
ffa01358:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa0135a:	b2 e0 03 20 	LSETUP(0xffa0135e <_div+0xe>, 0xffa01360 <_div+0x10>) LC1 = P2;
ffa0135e:	08 42       	DIVQ (R0, R1);
ffa01360:	00 00       	NOP;
ffa01362:	80 42       	R0 = R0.L (X);
ffa01364:	01 e8 00 00 	UNLINK;
ffa01368:	10 00       	RTS;
	...

ffa0136c <_mod>:
ffa0136c:	70 05       	[--SP] = (R7:6);
ffa0136e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01372:	30 30       	R6 = R0;
ffa01374:	39 30       	R7 = R1;
ffa01376:	ff e3 ed ff 	CALL 0xffa01350 <_div>;
ffa0137a:	c7 40       	R7 *= R0;
ffa0137c:	01 e8 00 00 	UNLINK;
ffa01380:	be 53       	R6 = R6 - R7;
ffa01382:	06 30       	R0 = R6;
ffa01384:	30 05       	(R7:6) = [SP++];
ffa01386:	10 00       	RTS;

ffa01388 <_memcpy_>:
ffa01388:	02 0d       	CC = R2 <= 0x0;
ffa0138a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0138e:	08 32       	P1 = R0;
ffa01390:	11 32       	P2 = R1;
ffa01392:	08 18       	IF CC JUMP 0xffa013a2 <_memcpy_+0x1a>;
ffa01394:	00 00       	NOP;
ffa01396:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01398:	09 64       	R1 += 0x1;		/* (  1) */
ffa0139a:	48 98       	R0 = B[P1++] (X);
ffa0139c:	0a 08       	CC = R2 == R1;
ffa0139e:	10 9a       	B[P2++] = R0;
ffa013a0:	fc 17       	IF !CC JUMP 0xffa01398 <_memcpy_+0x10> (BP);
ffa013a2:	01 e8 00 00 	UNLINK;
ffa013a6:	10 00       	RTS;

ffa013a8 <_memset_>:
ffa013a8:	02 0d       	CC = R2 <= 0x0;
ffa013aa:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa013ae:	10 32       	P2 = R0;
ffa013b0:	06 18       	IF CC JUMP 0xffa013bc <_memset_+0x14>;
ffa013b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa013b4:	08 64       	R0 += 0x1;		/* (  1) */
ffa013b6:	02 08       	CC = R2 == R0;
ffa013b8:	11 9a       	B[P2++] = R1;
ffa013ba:	fd 17       	IF !CC JUMP 0xffa013b4 <_memset_+0xc> (BP);
ffa013bc:	01 e8 00 00 	UNLINK;
ffa013c0:	10 00       	RTS;
	...

ffa013c4 <_strlen_>:
ffa013c4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa013c8:	10 32       	P2 = R0;
ffa013ca:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa013cc:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa013d0:	b2 e0 06 10 	LSETUP(0xffa013d4 <_strlen_+0x10>, 0xffa013dc <_strlen_+0x18>) LC1 = P1;
ffa013d4:	50 99       	R0 = B[P2] (X);
ffa013d6:	00 0c       	CC = R0 == 0x0;
ffa013d8:	04 18       	IF CC JUMP 0xffa013e0 <_strlen_+0x1c>;
ffa013da:	09 64       	R1 += 0x1;		/* (  1) */
ffa013dc:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa013de:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa013e0:	01 30       	R0 = R1;
ffa013e2:	01 e8 00 00 	UNLINK;
ffa013e6:	10 00       	RTS;

ffa013e8 <_strcpy_>:
ffa013e8:	12 32       	P2 = R2;
ffa013ea:	c5 04       	[--SP] = (P5:5);
ffa013ec:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa013f0:	29 32       	P5 = R1;
ffa013f2:	00 32       	P0 = R0;
ffa013f4:	51 99       	R1 = B[P2] (X);
ffa013f6:	08 43       	R0 = R1.B (X);
ffa013f8:	00 0c       	CC = R0 == 0x0;
ffa013fa:	17 18       	IF CC JUMP 0xffa01428 <_strcpy_+0x40>;
ffa013fc:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa013fe:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01400:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa01404:	b2 e0 09 10 	LSETUP(0xffa01408 <_strcpy_+0x20>, 0xffa01416 <_strcpy_+0x2e>) LC1 = P1;
ffa01408:	01 9a       	B[P0++] = R1;
ffa0140a:	51 99       	R1 = B[P2] (X);
ffa0140c:	08 43       	R0 = R1.B (X);
ffa0140e:	00 0c       	CC = R0 == 0x0;
ffa01410:	0a 64       	R2 += 0x1;		/* (  1) */
ffa01412:	03 18       	IF CC JUMP 0xffa01418 <_strcpy_+0x30>;
ffa01414:	00 00       	NOP;
ffa01416:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01418:	01 e8 00 00 	UNLINK;
ffa0141c:	28 91       	R0 = [P5];
ffa0141e:	10 50       	R0 = R0 + R2;
ffa01420:	28 93       	[P5] = R0;
ffa01422:	40 30       	R0 = P0;
ffa01424:	85 04       	(P5:5) = [SP++];
ffa01426:	10 00       	RTS;
ffa01428:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0142a:	f7 2f       	JUMP.S 0xffa01418 <_strcpy_+0x30>;

ffa0142c <_strprepend>:
ffa0142c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0142e:	21 32       	P4 = R1;
ffa01430:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01434:	38 30       	R7 = R0;
ffa01436:	02 30       	R0 = R2;
ffa01438:	2a 32       	P5 = R2;
ffa0143a:	ff e3 c5 ff 	CALL 0xffa013c4 <_strlen_>;
ffa0143e:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa01442:	20 91 00 00 
ffa01446:	02 0d       	CC = R2 <= 0x0;
ffa01448:	0a 18       	IF CC JUMP 0xffa0145c <_strprepend+0x30>;
ffa0144a:	07 52       	R0 = R7 - R0;
ffa0144c:	10 32       	P2 = R0;
ffa0144e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01450:	09 64       	R1 += 0x1;		/* (  1) */
ffa01452:	68 98       	R0 = B[P5++] (X);
ffa01454:	0a 08       	CC = R2 == R1;
ffa01456:	10 9a       	B[P2++] = R0;
ffa01458:	fc 17       	IF !CC JUMP 0xffa01450 <_strprepend+0x24> (BP);
ffa0145a:	20 91       	R0 = [P4];
ffa0145c:	01 e8 00 00 	UNLINK;
ffa01460:	07 52       	R0 = R7 - R0;
ffa01462:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01464:	10 00       	RTS;
	...

ffa01468 <_strcmp>:
ffa01468:	10 32       	P2 = R0;
ffa0146a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0146e:	01 32       	P0 = R1;
ffa01470:	51 99       	R1 = B[P2] (X);
ffa01472:	01 0c       	CC = R1 == 0x0;
ffa01474:	1b 18       	IF CC JUMP 0xffa014aa <_strcmp+0x42>;
ffa01476:	00 00       	NOP;
ffa01478:	00 00       	NOP;
ffa0147a:	00 00       	NOP;
ffa0147c:	40 99       	R0 = B[P0] (X);
ffa0147e:	00 0c       	CC = R0 == 0x0;
ffa01480:	15 18       	IF CC JUMP 0xffa014aa <_strcmp+0x42>;
ffa01482:	01 08       	CC = R1 == R0;
ffa01484:	1c 10       	IF !CC JUMP 0xffa014bc <_strcmp+0x54>;
ffa01486:	4a 32       	P1 = P2;
ffa01488:	50 32       	P2 = P0;
ffa0148a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0148c:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0148e:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa01492:	49 99       	R1 = B[P1] (X);
ffa01494:	01 0c       	CC = R1 == 0x0;
ffa01496:	0a 18       	IF CC JUMP 0xffa014aa <_strcmp+0x42>;
ffa01498:	00 00       	NOP;
ffa0149a:	00 00       	NOP;
ffa0149c:	00 00       	NOP;
ffa0149e:	50 99       	R0 = B[P2] (X);
ffa014a0:	00 0c       	CC = R0 == 0x0;
ffa014a2:	04 18       	IF CC JUMP 0xffa014aa <_strcmp+0x42>;
ffa014a4:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa014a6:	40 0c       	CC = P0 == 0x0;
ffa014a8:	05 10       	IF !CC JUMP 0xffa014b2 <_strcmp+0x4a>;
ffa014aa:	01 e8 00 00 	UNLINK;
ffa014ae:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa014b0:	10 00       	RTS;
ffa014b2:	01 08       	CC = R1 == R0;
ffa014b4:	04 10       	IF !CC JUMP 0xffa014bc <_strcmp+0x54>;
ffa014b6:	09 6c       	P1 += 0x1;		/* (  1) */
ffa014b8:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa014ba:	ec 2f       	JUMP.S 0xffa01492 <_strcmp+0x2a>;
ffa014bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa014be:	01 e8 00 00 	UNLINK;
ffa014c2:	10 00       	RTS;

ffa014c4 <_substr>:
ffa014c4:	f4 05       	[--SP] = (R7:6, P5:4);
ffa014c6:	20 32       	P4 = R0;
ffa014c8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa014cc:	11 32       	P2 = R1;
ffa014ce:	32 30       	R6 = R2;
ffa014d0:	61 99       	R1 = B[P4] (X);
ffa014d2:	01 0c       	CC = R1 == 0x0;
ffa014d4:	14 18       	IF CC JUMP 0xffa014fc <_substr+0x38>;
ffa014d6:	00 00       	NOP;
ffa014d8:	00 00       	NOP;
ffa014da:	00 00       	NOP;
ffa014dc:	50 99       	R0 = B[P2] (X);
ffa014de:	00 0c       	CC = R0 == 0x0;
ffa014e0:	0e 18       	IF CC JUMP 0xffa014fc <_substr+0x38>;
ffa014e2:	02 0d       	CC = R2 <= 0x0;
ffa014e4:	0c 18       	IF CC JUMP 0xffa014fc <_substr+0x38>;
ffa014e6:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa014e8:	01 08       	CC = R1 == R0;
ffa014ea:	0f 18       	IF CC JUMP 0xffa01508 <_substr+0x44>;
ffa014ec:	00 00       	NOP;
ffa014ee:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa014f0:	0b 64       	R3 += 0x1;		/* (  1) */
ffa014f2:	50 99       	R0 = B[P2] (X);
ffa014f4:	00 0c       	CC = R0 == 0x0;
ffa014f6:	03 18       	IF CC JUMP 0xffa014fc <_substr+0x38>;
ffa014f8:	1e 09       	CC = R6 <= R3;
ffa014fa:	f7 17       	IF !CC JUMP 0xffa014e8 <_substr+0x24> (BP);
ffa014fc:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa014fe:	01 e8 00 00 	UNLINK;
ffa01502:	40 30       	R0 = P0;
ffa01504:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01506:	10 00       	RTS;
ffa01508:	52 30       	R2 = P2;
ffa0150a:	3b 30       	R7 = R3;
ffa0150c:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0150e:	0f 64       	R7 += 0x1;		/* (  1) */
ffa01510:	12 32       	P2 = R2;
ffa01512:	07 32       	P0 = R7;
ffa01514:	4c 32       	P1 = P4;
ffa01516:	6c 32       	P5 = P4;
ffa01518:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0151a:	15 6c       	P5 += 0x2;		/* (  2) */
ffa0151c:	02 20       	JUMP.S 0xffa01520 <_substr+0x5c>;
ffa0151e:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01520:	4b 99       	R3 = B[P1] (X);
ffa01522:	50 99       	R0 = B[P2] (X);
ffa01524:	03 08       	CC = R3 == R0;
ffa01526:	0e 10       	IF !CC JUMP 0xffa01542 <_substr+0x7e>;
ffa01528:	03 0c       	CC = R3 == 0x0;
ffa0152a:	0c 18       	IF CC JUMP 0xffa01542 <_substr+0x7e>;
ffa0152c:	00 00       	NOP;
ffa0152e:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01530:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01532:	68 98       	R0 = B[P5++] (X);
ffa01534:	00 0c       	CC = R0 == 0x0;
ffa01536:	f4 17       	IF !CC JUMP 0xffa0151e <_substr+0x5a> (BP);
ffa01538:	01 e8 00 00 	UNLINK;
ffa0153c:	40 30       	R0 = P0;
ffa0153e:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01540:	10 00       	RTS;
ffa01542:	12 32       	P2 = R2;
ffa01544:	1f 30       	R3 = R7;
ffa01546:	d6 2f       	JUMP.S 0xffa014f2 <_substr+0x2e>;

ffa01548 <_sprintf_int>:
ffa01548:	fb 05       	[--SP] = (R7:7, P5:3);
ffa0154a:	01 0c       	CC = R1 == 0x0;
ffa0154c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01550:	00 34       	I0 = R0;
ffa01552:	11 30       	R2 = R1;
ffa01554:	1a 14       	IF !CC JUMP 0xffa01588 <_sprintf_int+0x40> (BP);
ffa01556:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df0 <_printf_temp> */
ffa0155a:	0b e1 f0 0d 	P3.L = 0xdf0;		/* (3568)	P3=0xff900df0 <_printf_temp> */
ffa0155e:	5a 91       	P2 = [P3];
ffa01560:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01562:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01564:	10 9b       	B[P2] = R0;
ffa01566:	88 32       	P1 = I0;
ffa01568:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0156a:	0b 52       	R0 = R3 - R1;
ffa0156c:	00 32       	P0 = R0;
ffa0156e:	5a 91       	P2 = [P3];
ffa01570:	09 64       	R1 += 0x1;		/* (  1) */
ffa01572:	99 08       	CC = R1 < R3;
ffa01574:	82 5a       	P2 = P2 + P0;
ffa01576:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa0157a:	08 9a       	B[P1++] = R0;
ffa0157c:	f7 1f       	IF CC JUMP 0xffa0156a <_sprintf_int+0x22> (BP);
ffa0157e:	01 e8 00 00 	UNLINK;
ffa01582:	03 30       	R0 = R3;
ffa01584:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01586:	10 00       	RTS;
ffa01588:	01 0d       	CC = R1 <= 0x0;
ffa0158a:	2d 18       	IF CC JUMP 0xffa015e4 <_sprintf_int+0x9c>;
ffa0158c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df0 <_printf_temp> */
ffa01590:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa01594:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01596:	0b e1 f0 0d 	P3.L = 0xdf0;		/* (3568)	P3=0xff900df0 <_printf_temp> */
ffa0159a:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa0159e:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa015a0:	b2 e0 20 50 	LSETUP(0xffa015a4 <_sprintf_int+0x5c>, 0xffa015e0 <_sprintf_int+0x98>) LC1 = P5;
ffa015a4:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa015a8:	59 91 00 00 
ffa015ac:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa015b0:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa015b4:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa015b8:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa015bc:	0b c4 00 00 	R0 = (A0 += A1);
ffa015c0:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa015c4:	10 4d       	R0 >>>= 0x2;
ffa015c6:	08 52       	R0 = R0 - R1;
ffa015c8:	00 32       	P0 = R0;
ffa015ca:	13 32       	P2 = R3;
ffa015cc:	0b 64       	R3 += 0x1;		/* (  1) */
ffa015ce:	40 0d       	CC = P0 <= 0x0;
ffa015d0:	51 5a       	P1 = P1 + P2;
ffa015d2:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa015d4:	92 5a       	P2 = P2 << 0x1;
ffa015d6:	4a 30       	R1 = P2;
ffa015d8:	0a 52       	R0 = R2 - R1;
ffa015da:	80 65       	R0 += 0x30;		/* ( 48) */
ffa015dc:	08 9b       	B[P1] = R0;
ffa015de:	39 18       	IF CC JUMP 0xffa01650 <_sprintf_int+0x108>;
ffa015e0:	50 30       	R2 = P0;
ffa015e2:	c2 2f       	JUMP.S 0xffa01566 <_sprintf_int+0x1e>;
ffa015e4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa015e6:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa015e8:	f8 4f       	R0 <<= 0x1f;
ffa015ea:	90 52       	R2 = R0 - R2;
ffa015ec:	02 0d       	CC = R2 <= 0x0;
ffa015ee:	3c 18       	IF CC JUMP 0xffa01666 <_sprintf_int+0x11e>;
ffa015f0:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df0 <_printf_temp> */
ffa015f4:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa015f8:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa015fa:	0b e1 f0 0d 	P3.L = 0xdf0;		/* (3568)	P3=0xff900df0 <_printf_temp> */
ffa015fe:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa01602:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa01604:	b2 e0 1f 50 	LSETUP(0xffa01608 <_sprintf_int+0xc0>, 0xffa01642 <_sprintf_int+0xfa>) LC1 = P5;
ffa01608:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa0160c:	59 91 00 00 
ffa01610:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01614:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa01618:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa0161c:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01620:	0b c4 00 00 	R0 = (A0 += A1);
ffa01624:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa01628:	10 4d       	R0 >>>= 0x2;
ffa0162a:	08 52       	R0 = R0 - R1;
ffa0162c:	00 32       	P0 = R0;
ffa0162e:	61 5a       	P1 = P1 + P4;
ffa01630:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa01632:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa01634:	92 5a       	P2 = P2 << 0x1;
ffa01636:	4a 30       	R1 = P2;
ffa01638:	0a 52       	R0 = R2 - R1;
ffa0163a:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0163c:	40 0d       	CC = P0 <= 0x0;
ffa0163e:	08 9b       	B[P1] = R0;
ffa01640:	0f 18       	IF CC JUMP 0xffa0165e <_sprintf_int+0x116>;
ffa01642:	50 30       	R2 = P0;
ffa01644:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa01646:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa01648:	5a 91       	P2 = [P3];
ffa0164a:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa0164c:	8a 5a       	P2 = P2 + P1;
ffa0164e:	10 9b       	B[P2] = R0;
ffa01650:	03 0d       	CC = R3 <= 0x0;
ffa01652:	8a 17       	IF !CC JUMP 0xffa01566 <_sprintf_int+0x1e> (BP);
ffa01654:	01 e8 00 00 	UNLINK;
ffa01658:	03 30       	R0 = R3;
ffa0165a:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0165c:	10 00       	RTS;
ffa0165e:	5c 30       	R3 = P4;
ffa01660:	4c 32       	P1 = P4;
ffa01662:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01664:	f2 2f       	JUMP.S 0xffa01648 <_sprintf_int+0x100>;
ffa01666:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df0 <_printf_temp> */
ffa0166a:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa0166c:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa0166e:	0b e1 f0 0d 	P3.L = 0xdf0;		/* (3568)	P3=0xff900df0 <_printf_temp> */
ffa01672:	eb 2f       	JUMP.S 0xffa01648 <_sprintf_int+0x100>;

ffa01674 <_sprintf_hex>:
ffa01674:	10 32       	P2 = R0;
ffa01676:	78 05       	[--SP] = (R7:7);
ffa01678:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0167a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0167e:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa01680:	10 9b       	B[P2] = R0;
ffa01682:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01686:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa0168a:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa0168c:	12 6c       	P2 += 0x2;		/* (  2) */
ffa0168e:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa01690:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa01692:	b2 e0 09 10 	LSETUP(0xffa01696 <_sprintf_hex+0x22>, 0xffa016a4 <_sprintf_hex+0x30>) LC1 = P1;
ffa01696:	01 30       	R0 = R1;
ffa01698:	10 40       	R0 >>>= R2;
ffa0169a:	18 54       	R0 = R0 & R3;
ffa0169c:	38 09       	CC = R0 <= R7;
ffa0169e:	09 1c       	IF CC JUMP 0xffa016b0 <_sprintf_hex+0x3c> (BP);
ffa016a0:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa016a2:	10 9a       	B[P2++] = R0;
ffa016a4:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa016a6:	01 e8 00 00 	UNLINK;
ffa016aa:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa016ac:	38 05       	(R7:7) = [SP++];
ffa016ae:	10 00       	RTS;
ffa016b0:	80 65       	R0 += 0x30;		/* ( 48) */
ffa016b2:	f8 2f       	JUMP.S 0xffa016a2 <_sprintf_hex+0x2e>;

ffa016b4 <_strprintf_int>:
ffa016b4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa016b6:	29 32       	P5 = R1;
ffa016b8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa016bc:	0a 30       	R1 = R2;
ffa016be:	38 30       	R7 = R0;
ffa016c0:	ff e3 44 ff 	CALL 0xffa01548 <_sprintf_int>;
ffa016c4:	29 91       	R1 = [P5];
ffa016c6:	41 50       	R1 = R1 + R0;
ffa016c8:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa016cc:	29 93 00 00 
ffa016d0:	01 e8 00 00 	UNLINK;
ffa016d4:	07 30       	R0 = R7;
ffa016d6:	bd 05       	(R7:7, P5:5) = [SP++];
ffa016d8:	10 00       	RTS;
	...

ffa016dc <_strprintf_hex>:
ffa016dc:	fd 05       	[--SP] = (R7:7, P5:5);
ffa016de:	29 32       	P5 = R1;
ffa016e0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa016e4:	0a 30       	R1 = R2;
ffa016e6:	38 30       	R7 = R0;
ffa016e8:	ff e3 c6 ff 	CALL 0xffa01674 <_sprintf_hex>;
ffa016ec:	29 91       	R1 = [P5];
ffa016ee:	41 50       	R1 = R1 + R0;
ffa016f0:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa016f4:	29 93 00 00 
ffa016f8:	01 e8 00 00 	UNLINK;
ffa016fc:	07 30       	R0 = R7;
ffa016fe:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01700:	10 00       	RTS;
	...

ffa01704 <_atoi>:
ffa01704:	08 32       	P1 = R0;
ffa01706:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa01708:	f5 05       	[--SP] = (R7:6, P5:5);
ffa0170a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0170e:	48 99       	R0 = B[P1] (X);
ffa01710:	10 08       	CC = R0 == R2;
ffa01712:	25 18       	IF CC JUMP 0xffa0175c <_atoi+0x58>;
ffa01714:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01716:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa01718:	41 32       	P0 = P1;
ffa0171a:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0171c:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa0171e:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa01720:	12 20       	JUMP.S 0xffa01744 <_atoi+0x40>;
ffa01722:	8b 08       	CC = R3 < R1;
ffa01724:	16 10       	IF !CC JUMP 0xffa01750 <_atoi+0x4c>;
ffa01726:	10 43       	R0 = R2.B (X);
ffa01728:	28 32       	P5 = R0;
ffa0172a:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa0172c:	40 99       	R0 = B[P0] (X);
ffa0172e:	80 66       	R0 += -0x30;		/* (-48) */
ffa01730:	40 43       	R0 = R0.B (Z);
ffa01732:	aa 5a       	P2 = P2 + P5;
ffa01734:	10 0a       	CC = R0 <= R2 (IU);
ffa01736:	82 6e       	P2 += -0x30;		/* (-48) */
ffa01738:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0173a:	03 14       	IF !CC JUMP 0xffa01740 <_atoi+0x3c> (BP);
ffa0173c:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa0173e:	92 5a       	P2 = P2 << 0x1;
ffa01740:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01742:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01744:	4a 99       	R2 = B[P1] (X);
ffa01746:	02 30       	R0 = R2;
ffa01748:	80 66       	R0 += -0x30;		/* (-48) */
ffa0174a:	40 43       	R0 = R0.B (Z);
ffa0174c:	30 0a       	CC = R0 <= R6 (IU);
ffa0174e:	ea 1f       	IF CC JUMP 0xffa01722 <_atoi+0x1e> (BP);
ffa01750:	42 30       	R0 = P2;
ffa01752:	f8 40       	R0 *= R7;
ffa01754:	01 e8 00 00 	UNLINK;
ffa01758:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0175a:	10 00       	RTS;
ffa0175c:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0175e:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01760:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01762:	db 2f       	JUMP.S 0xffa01718 <_atoi+0x14>;

ffa01764 <_udelay>:
ffa01764:	00 0d       	CC = R0 <= 0x0;
ffa01766:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0176a:	0b 18       	IF CC JUMP 0xffa01780 <_udelay+0x1c>;
ffa0176c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0176e:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa01772:	b2 e0 03 20 	LSETUP(0xffa01776 <_udelay+0x12>, 0xffa01778 <_udelay+0x14>) LC1 = P2;
ffa01776:	00 00       	NOP;
ffa01778:	00 00       	NOP;
ffa0177a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0177c:	08 08       	CC = R0 == R1;
ffa0177e:	f8 17       	IF !CC JUMP 0xffa0176e <_udelay+0xa> (BP);
ffa01780:	01 e8 00 00 	UNLINK;
ffa01784:	10 00       	RTS;
	...

ffa01788 <_bfin_EMAC_send_check>:
ffa01788:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa0178c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01790:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01794:	50 95       	R0 = W[P2] (X);
ffa01796:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa01798:	00 02       	R0 = CC;
ffa0179a:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa0179c:	01 e8 00 00 	UNLINK;
ffa017a0:	10 00       	RTS;
	...

ffa017a4 <_FormatIPAddress>:
ffa017a4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa017a8:	18 30       	R3 = R0;
ffa017aa:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa017ae:	40 4f       	R0 <<= 0x8;
ffa017b0:	52 43       	R2 = R2.B (Z);
ffa017b2:	10 56       	R0 = R0 | R2;
ffa017b4:	40 4f       	R0 <<= 0x8;
ffa017b6:	49 43       	R1 = R1.B (Z);
ffa017b8:	08 56       	R0 = R0 | R1;
ffa017ba:	40 4f       	R0 <<= 0x8;
ffa017bc:	5b 43       	R3 = R3.B (Z);
ffa017be:	18 56       	R0 = R0 | R3;
ffa017c0:	01 e8 00 00 	UNLINK;
ffa017c4:	10 00       	RTS;
	...

ffa017c8 <_bfin_EMAC_halt>:
ffa017c8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa017cc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017ce:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa017d2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa017d6:	10 93       	[P2] = R0;
ffa017d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa017dc:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa017e0:	10 97       	W[P2] = R0;
ffa017e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa017e6:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa017ea:	10 97       	W[P2] = R0;
ffa017ec:	01 e8 00 00 	UNLINK;
ffa017f0:	10 00       	RTS;
	...

ffa017f4 <_PollMdcDone>:
ffa017f4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa017f8:	02 20       	JUMP.S 0xffa017fc <_PollMdcDone+0x8>;
ffa017fa:	00 00       	NOP;
ffa017fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01800:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01804:	10 91       	R0 = [P2];
ffa01806:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01808:	f9 17       	IF !CC JUMP 0xffa017fa <_PollMdcDone+0x6> (BP);
ffa0180a:	01 e8 00 00 	UNLINK;
ffa0180e:	10 00       	RTS;

ffa01810 <_WrPHYReg>:
ffa01810:	68 05       	[--SP] = (R7:5);
ffa01812:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01816:	28 30       	R5 = R0;
ffa01818:	31 30       	R6 = R1;
ffa0181a:	3a 30       	R7 = R2;
ffa0181c:	ff e3 ec ff 	CALL 0xffa017f4 <_PollMdcDone>;
ffa01820:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01822:	b0 55       	R6 = R0 & R6;
ffa01824:	28 54       	R0 = R0 & R5;
ffa01826:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0182a:	58 4f       	R0 <<= 0xb;
ffa0182c:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0182e:	ff 42       	R7 = R7.L (Z);
ffa01830:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01834:	36 4f       	R6 <<= 0x6;
ffa01836:	08 56       	R0 = R0 | R1;
ffa01838:	17 93       	[P2] = R7;
ffa0183a:	86 57       	R6 = R6 | R0;
ffa0183c:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0183e:	16 93       	[P2] = R6;
ffa01840:	01 e8 00 00 	UNLINK;
ffa01844:	28 05       	(R7:5) = [SP++];
ffa01846:	10 00       	RTS;

ffa01848 <_RdPHYReg>:
ffa01848:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0184a:	29 32       	P5 = R1;
ffa0184c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01850:	38 30       	R7 = R0;
ffa01852:	ff e3 d1 ff 	CALL 0xffa017f4 <_PollMdcDone>;
ffa01856:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa0185a:	45 30       	R0 = P5;
ffa0185c:	c0 42       	R0 = R0.L (Z);
ffa0185e:	28 32       	P5 = R0;
ffa01860:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01862:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01866:	55 30       	R2 = P5;
ffa01868:	42 54       	R1 = R2 & R0;
ffa0186a:	38 54       	R0 = R0 & R7;
ffa0186c:	58 4f       	R0 <<= 0xb;
ffa0186e:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa01870:	31 4f       	R1 <<= 0x6;
ffa01872:	41 56       	R1 = R1 | R0;
ffa01874:	11 93       	[P2] = R1;
ffa01876:	ff e3 bf ff 	CALL 0xffa017f4 <_PollMdcDone>;
ffa0187a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0187e:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01882:	10 91       	R0 = [P2];
ffa01884:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa01888:	0a e1 f8 0d 	P2.L = 0xdf8;		/* (3576)	P2=0xff900df8 <_PHYregs> */
ffa0188c:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa0188e:	10 97       	W[P2] = R0;
ffa01890:	01 e8 00 00 	UNLINK;
ffa01894:	c0 42       	R0 = R0.L (Z);
ffa01896:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01898:	10 00       	RTS;
	...

ffa0189c <_SoftResetPHY>:
ffa0189c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0189e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa018a0:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa018a4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa018a8:	ff e3 b4 ff 	CALL 0xffa01810 <_WrPHYReg>;
ffa018ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018ae:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa018b0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa018b2:	ff e3 af ff 	CALL 0xffa01810 <_WrPHYReg>;
ffa018b6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018b8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa018ba:	ff e3 c7 ff 	CALL 0xffa01848 <_RdPHYReg>;
ffa018be:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa018c0:	fb 1f       	IF CC JUMP 0xffa018b6 <_SoftResetPHY+0x1a> (BP);
ffa018c2:	01 e8 00 00 	UNLINK;
ffa018c6:	10 00       	RTS;

ffa018c8 <_NetCksum>:
ffa018c8:	01 0d       	CC = R1 <= 0x0;
ffa018ca:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa018ce:	10 18       	IF CC JUMP 0xffa018ee <_NetCksum+0x26>;
ffa018d0:	10 32       	P2 = R0;
ffa018d2:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa018d4:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa018d6:	0a 64       	R2 += 0x1;		/* (  1) */
ffa018d8:	10 94       	R0 = W[P2++] (Z);
ffa018da:	0a 08       	CC = R2 == R1;
ffa018dc:	c3 50       	R3 = R3 + R0;
ffa018de:	fc 17       	IF !CC JUMP 0xffa018d6 <_NetCksum+0xe> (BP);
ffa018e0:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa018e4:	03 50       	R0 = R3 + R0;
ffa018e6:	c0 42       	R0 = R0.L (Z);
ffa018e8:	01 e8 00 00 	UNLINK;
ffa018ec:	10 00       	RTS;
ffa018ee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018f0:	01 e8 00 00 	UNLINK;
ffa018f4:	10 00       	RTS;
	...

ffa018f8 <_htons>:
ffa018f8:	08 30       	R1 = R0;
ffa018fa:	c0 42       	R0 = R0.L (Z);
ffa018fc:	40 4e       	R0 >>= 0x8;
ffa018fe:	41 4f       	R1 <<= 0x8;
ffa01900:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01904:	08 56       	R0 = R0 | R1;
ffa01906:	c0 42       	R0 = R0.L (Z);
ffa01908:	01 e8 00 00 	UNLINK;
ffa0190c:	10 00       	RTS;
	...

ffa01910 <_htonl>:
ffa01910:	10 30       	R2 = R0;
ffa01912:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa01916:	40 43       	R0 = R0.B (Z);
ffa01918:	49 43       	R1 = R1.B (Z);
ffa0191a:	40 4f       	R0 <<= 0x8;
ffa0191c:	08 56       	R0 = R0 | R1;
ffa0191e:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa01922:	40 4f       	R0 <<= 0x8;
ffa01924:	49 43       	R1 = R1.B (Z);
ffa01926:	08 56       	R0 = R0 | R1;
ffa01928:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0192c:	40 4f       	R0 <<= 0x8;
ffa0192e:	c2 4e       	R2 >>= 0x18;
ffa01930:	10 56       	R0 = R0 | R2;
ffa01932:	01 e8 00 00 	UNLINK;
ffa01936:	10 00       	RTS;

ffa01938 <_pack4chars>:
ffa01938:	08 32       	P1 = R0;
ffa0193a:	10 32       	P2 = R0;
ffa0193c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01940:	01 e8 00 00 	UNLINK;
ffa01944:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa01948:	10 98       	R0 = B[P2++] (Z);
ffa0194a:	41 4f       	R1 <<= 0x8;
ffa0194c:	08 50       	R0 = R0 + R1;
ffa0194e:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa01952:	81 4f       	R1 <<= 0x10;
ffa01954:	08 50       	R0 = R0 + R1;
ffa01956:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa0195a:	c1 4f       	R1 <<= 0x18;
ffa0195c:	08 50       	R0 = R0 + R1;
ffa0195e:	10 00       	RTS;

ffa01960 <_ip_header_setup>:
ffa01960:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01962:	28 32       	P5 = R0;
ffa01964:	21 32       	P4 = R1;
ffa01966:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa0196a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0196e:	32 30       	R6 = R2;
ffa01970:	28 9b       	B[P5] = R0;
ffa01972:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01974:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa01978:	27 91       	R7 = [P4];
ffa0197a:	f8 42       	R0 = R7.L (Z);
ffa0197c:	ff e3 be ff 	CALL 0xffa018f8 <_htons>;
ffa01980:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900df8 <_PHYregs> */
ffa01984:	0a e1 42 0e 	P2.L = 0xe42;		/* (3650)	P2=0xff900e42 <_NetIPID> */
ffa01988:	68 b4       	W[P5 + 0x2] = R0;
ffa0198a:	10 95       	R0 = W[P2] (Z);
ffa0198c:	08 30       	R1 = R0;
ffa0198e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01990:	67 67       	R7 += -0x14;		/* (-20) */
ffa01992:	11 97       	W[P2] = R1;
ffa01994:	27 93       	[P4] = R7;
ffa01996:	ff e3 b1 ff 	CALL 0xffa018f8 <_htons>;
ffa0199a:	a8 b4       	W[P5 + 0x4] = R0;
ffa0199c:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa019a0:	ff e3 ac ff 	CALL 0xffa018f8 <_htons>;
ffa019a4:	e8 b4       	W[P5 + 0x6] = R0;
ffa019a6:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa019aa:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa019ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e42 <_NetIPID> */
ffa019b2:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa019b6:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa019ba:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetOurIP> */
ffa019be:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa019c0:	68 b5       	W[P5 + 0xa] = R0;
ffa019c2:	10 91       	R0 = [P2];
ffa019c4:	e8 b0       	[P5 + 0xc] = R0;
ffa019c6:	2e b1       	[P5 + 0x10] = R6;
ffa019c8:	45 30       	R0 = P5;
ffa019ca:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa019cc:	ff e3 7e ff 	CALL 0xffa018c8 <_NetCksum>;
ffa019d0:	c0 43       	R0 =~ R0;
ffa019d2:	68 b5       	W[P5 + 0xa] = R0;
ffa019d4:	01 e8 00 00 	UNLINK;
ffa019d8:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa019da:	45 30       	R0 = P5;
ffa019dc:	b4 05       	(R7:6, P5:4) = [SP++];
ffa019de:	10 00       	RTS;

ffa019e0 <_ip_header_checksum>:
ffa019e0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa019e4:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa019e6:	ff e3 71 ff 	CALL 0xffa018c8 <_NetCksum>;
ffa019ea:	08 02       	CC = R0;
ffa019ec:	00 02       	R0 = CC;
ffa019ee:	01 e8 00 00 	UNLINK;
ffa019f2:	10 00       	RTS;

ffa019f4 <_icmp_header_setup>:
ffa019f4:	00 32       	P0 = R0;
ffa019f6:	c5 04       	[--SP] = (P5:5);
ffa019f8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa019fa:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa019fe:	29 32       	P5 = R1;
ffa01a00:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa01a04:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a06:	40 b4       	W[P0 + 0x2] = R0;
ffa01a08:	38 ab       	R0 = W[FP + 0x18] (X);
ffa01a0a:	80 b4       	W[P0 + 0x4] = R0;
ffa01a0c:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa01a0e:	02 9b       	B[P0] = R2;
ffa01a10:	c0 b4       	W[P0 + 0x6] = R0;
ffa01a12:	48 32       	P1 = P0;
ffa01a14:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a16:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa01a18:	b2 e0 03 20 	LSETUP(0xffa01a1c <_icmp_header_setup+0x28>, 0xffa01a1e <_icmp_header_setup+0x2a>) LC1 = P2;
ffa01a1c:	08 94       	R0 = W[P1++] (Z);
ffa01a1e:	41 50       	R1 = R1 + R0;
ffa01a20:	c8 42       	R0 = R1.L (Z);
ffa01a22:	81 4e       	R1 >>= 0x10;
ffa01a24:	08 50       	R0 = R0 + R1;
ffa01a26:	c0 43       	R0 =~ R0;
ffa01a28:	40 b4       	W[P0 + 0x2] = R0;
ffa01a2a:	28 91       	R0 = [P5];
ffa01a2c:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa01a2e:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01a30:	01 e8 00 00 	UNLINK;
ffa01a34:	28 93       	[P5] = R0;
ffa01a36:	40 30       	R0 = P0;
ffa01a38:	85 04       	(P5:5) = [SP++];
ffa01a3a:	10 00       	RTS;

ffa01a3c <_udp_header_setup>:
ffa01a3c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01a3e:	28 32       	P5 = R0;
ffa01a40:	21 32       	P4 = R1;
ffa01a42:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01a46:	d0 42       	R0 = R2.L (Z);
ffa01a48:	ff e3 58 ff 	CALL 0xffa018f8 <_htons>;
ffa01a4c:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa01a50:	28 97       	W[P5] = R0;
ffa01a52:	07 30       	R0 = R7;
ffa01a54:	ff e3 52 ff 	CALL 0xffa018f8 <_htons>;
ffa01a58:	27 91       	R7 = [P4];
ffa01a5a:	68 b4       	W[P5 + 0x2] = R0;
ffa01a5c:	f8 42       	R0 = R7.L (Z);
ffa01a5e:	ff e3 4d ff 	CALL 0xffa018f8 <_htons>;
ffa01a62:	a8 b4       	W[P5 + 0x4] = R0;
ffa01a64:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a66:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa01a68:	e8 b4       	W[P5 + 0x6] = R0;
ffa01a6a:	01 e8 00 00 	UNLINK;
ffa01a6e:	45 6c       	P5 += 0x8;		/* (  8) */
ffa01a70:	45 30       	R0 = P5;
ffa01a72:	27 93       	[P4] = R7;
ffa01a74:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01a76:	10 00       	RTS;

ffa01a78 <_tcp_header_setup>:
ffa01a78:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01a7a:	28 32       	P5 = R0;
ffa01a7c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01a80:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01a84:	21 32       	P4 = R1;
ffa01a86:	3a 30       	R7 = R2;
ffa01a88:	ff e3 38 ff 	CALL 0xffa018f8 <_htons>;
ffa01a8c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa01a90:	0a e1 64 0f 	P2.L = 0xf64;		/* (3940)	P2=0xff900f64 <_TcpClientPort> */
ffa01a94:	28 97       	W[P5] = R0;
ffa01a96:	50 95       	R0 = W[P2] (X);
ffa01a98:	68 b4       	W[P5 + 0x2] = R0;
ffa01a9a:	38 a2       	R0 = [FP + 0x20];
ffa01a9c:	ff e3 3a ff 	CALL 0xffa01910 <_htonl>;
ffa01aa0:	68 b0       	[P5 + 0x4] = R0;
ffa01aa2:	78 a2       	R0 = [FP + 0x24];
ffa01aa4:	ff e3 36 ff 	CALL 0xffa01910 <_htonl>;
ffa01aa8:	a8 b0       	[P5 + 0x8] = R0;
ffa01aaa:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01aae:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01ab2:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa01ab6:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa01aba:	ff e3 1f ff 	CALL 0xffa018f8 <_htons>;
ffa01abe:	e8 b5       	W[P5 + 0xe] = R0;
ffa01ac0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ac2:	28 b6       	W[P5 + 0x10] = R0;
ffa01ac4:	68 b6       	W[P5 + 0x12] = R0;
ffa01ac6:	20 91       	R0 = [P4];
ffa01ac8:	60 67       	R0 += -0x14;		/* (-20) */
ffa01aca:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01acc:	01 e8 00 00 	UNLINK;
ffa01ad0:	20 93       	[P4] = R0;
ffa01ad2:	45 30       	R0 = P5;
ffa01ad4:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01ad6:	10 00       	RTS;

ffa01ad8 <_DHCP_parse>:
ffa01ad8:	f5 05       	[--SP] = (R7:6, P5:5);
ffa01ada:	09 0d       	CC = R1 <= 0x1;
ffa01adc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01ae0:	10 32       	P2 = R0;
ffa01ae2:	33 18       	IF CC JUMP 0xffa01b48 <_DHCP_parse+0x70>;
ffa01ae4:	00 00       	NOP;
ffa01ae6:	31 30       	R6 = R1;
ffa01ae8:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01aea:	11 98       	R1 = B[P2++] (Z);
ffa01aec:	01 0c       	CC = R1 == 0x0;
ffa01aee:	2b 1c       	IF CC JUMP 0xffa01b44 <_DHCP_parse+0x6c> (BP);
ffa01af0:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa01af4:	01 08       	CC = R1 == R0;
ffa01af6:	57 99       	R7 = B[P2] (X);
ffa01af8:	28 18       	IF CC JUMP 0xffa01b48 <_DHCP_parse+0x70>;
ffa01afa:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa01afc:	6a 32       	P5 = P2;
ffa01afe:	01 0a       	CC = R1 <= R0 (IU);
ffa01b00:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa01b02:	09 14       	IF !CC JUMP 0xffa01b14 <_DHCP_parse+0x3c> (BP);
ffa01b04:	09 32       	P1 = R1;
ffa01b06:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f64 <_TcpClientPort> */
ffa01b0a:	0a e1 a8 03 	P2.L = 0x3a8;		/* (936)	P2=0xff9003a8 */
ffa01b0e:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa01b10:	52 91       	P2 = [P2];
ffa01b12:	52 00       	JUMP (P2);
ffa01b14:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa01b18:	00 e1 80 01 	R0.L = 0x180;		/* (384)	R0=0xff900180(-7339648) */
ffa01b1c:	ff e3 50 fb 	CALL 0xffa011bc <_printf_int>;
ffa01b20:	7f 43       	R7 = R7.B (Z);
ffa01b22:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900180(-7339648) */
ffa01b26:	00 e1 94 01 	R0.L = 0x194;		/* (404)	R0=0xff900194(-7339628) */
ffa01b2a:	0f 30       	R1 = R7;
ffa01b2c:	ff e3 48 fb 	CALL 0xffa011bc <_printf_int>;
ffa01b30:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900194(-7339628) */
ffa01b34:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa01b38:	ff e3 80 fa 	CALL 0xffa01038 <_printf_str>;
ffa01b3c:	0f 32       	P1 = R7;
ffa01b3e:	be 53       	R6 = R6 - R7;
ffa01b40:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01b42:	8d 5a       	P2 = P5 + P1;
ffa01b44:	0e 0d       	CC = R6 <= 0x1;
ffa01b46:	d1 17       	IF !CC JUMP 0xffa01ae8 <_DHCP_parse+0x10> (BP);
ffa01b48:	01 e8 00 00 	UNLINK;
ffa01b4c:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01b4e:	10 00       	RTS;
ffa01b50:	45 30       	R0 = P5;
ffa01b52:	ff e3 f3 fe 	CALL 0xffa01938 <_pack4chars>;
ffa01b56:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff9003a8 */
ffa01b5a:	0a e1 70 0e 	P2.L = 0xe70;		/* (3696)	P2=0xff900e70 <_NetSubnetMask> */
ffa01b5e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01b62:	10 93 00 00 
ffa01b66:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa01b6a:	00 e1 d8 00 	R0.L = 0xd8;		/* (216)	R0=0xff9000d8(-7339816) */
ffa01b6e:	ff e3 c9 fb 	CALL 0xffa01300 <_printf_ip>;
ffa01b72:	7f 43       	R7 = R7.B (Z);
ffa01b74:	de 2f       	JUMP.S 0xffa01b30 <_DHCP_parse+0x58>;
ffa01b76:	45 30       	R0 = P5;
ffa01b78:	ff e3 e0 fe 	CALL 0xffa01938 <_pack4chars>;
ffa01b7c:	08 30       	R1 = R0;
ffa01b7e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000d8(-7339816) */
ffa01b82:	00 e1 e8 00 	R0.L = 0xe8;		/* (232)	R0=0xff9000e8(-7339800) */
ffa01b86:	ff e3 bd fb 	CALL 0xffa01300 <_printf_ip>;
ffa01b8a:	7f 43       	R7 = R7.B (Z);
ffa01b8c:	d2 2f       	JUMP.S 0xffa01b30 <_DHCP_parse+0x58>;
ffa01b8e:	45 30       	R0 = P5;
ffa01b90:	ff e3 d4 fe 	CALL 0xffa01938 <_pack4chars>;
ffa01b94:	08 30       	R1 = R0;
ffa01b96:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000e8(-7339800) */
ffa01b9a:	00 e1 f8 00 	R0.L = 0xf8;		/* (248)	R0=0xff9000f8(-7339784) */
ffa01b9e:	ff e3 b1 fb 	CALL 0xffa01300 <_printf_ip>;
ffa01ba2:	7f 43       	R7 = R7.B (Z);
ffa01ba4:	c6 2f       	JUMP.S 0xffa01b30 <_DHCP_parse+0x58>;
ffa01ba6:	45 30       	R0 = P5;
ffa01ba8:	ff e3 c8 fe 	CALL 0xffa01938 <_pack4chars>;
ffa01bac:	08 30       	R1 = R0;
ffa01bae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f8(-7339784) */
ffa01bb2:	00 e1 08 01 	R0.L = 0x108;		/* (264)	R0=0xff900108(-7339768) */
ffa01bb6:	ff e3 a5 fb 	CALL 0xffa01300 <_printf_ip>;
ffa01bba:	7f 43       	R7 = R7.B (Z);
ffa01bbc:	ba 2f       	JUMP.S 0xffa01b30 <_DHCP_parse+0x58>;
ffa01bbe:	45 30       	R0 = P5;
ffa01bc0:	ff e3 bc fe 	CALL 0xffa01938 <_pack4chars>;
ffa01bc4:	ff e3 a6 fe 	CALL 0xffa01910 <_htonl>;
ffa01bc8:	08 30       	R1 = R0;
ffa01bca:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900108(-7339768) */
ffa01bce:	00 e1 18 01 	R0.L = 0x118;		/* (280)	R0=0xff900118(-7339752) */
ffa01bd2:	ff e3 f5 fa 	CALL 0xffa011bc <_printf_int>;
ffa01bd6:	7f 43       	R7 = R7.B (Z);
ffa01bd8:	ac 2f       	JUMP.S 0xffa01b30 <_DHCP_parse+0x58>;
ffa01bda:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900118(-7339752) */
ffa01bde:	29 99       	R1 = B[P5] (Z);
ffa01be0:	00 e1 2c 01 	R0.L = 0x12c;		/* (300)	R0=0xff90012c(-7339732) */
ffa01be4:	ff e3 ec fa 	CALL 0xffa011bc <_printf_int>;
ffa01be8:	7f 43       	R7 = R7.B (Z);
ffa01bea:	a3 2f       	JUMP.S 0xffa01b30 <_DHCP_parse+0x58>;
ffa01bec:	45 30       	R0 = P5;
ffa01bee:	ff e3 a5 fe 	CALL 0xffa01938 <_pack4chars>;
ffa01bf2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e70 <_NetSubnetMask> */
ffa01bf6:	0a e1 3c 0e 	P2.L = 0xe3c;		/* (3644)	P2=0xff900e3c <_NetDHCPserv> */
ffa01bfa:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01bfe:	10 93 00 00 
ffa01c02:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90012c(-7339732) */
ffa01c06:	00 e1 40 01 	R0.L = 0x140;		/* (320)	R0=0xff900140(-7339712) */
ffa01c0a:	ff e3 7b fb 	CALL 0xffa01300 <_printf_ip>;
ffa01c0e:	7f 43       	R7 = R7.B (Z);
ffa01c10:	90 2f       	JUMP.S 0xffa01b30 <_DHCP_parse+0x58>;
ffa01c12:	45 30       	R0 = P5;
ffa01c14:	ff e3 92 fe 	CALL 0xffa01938 <_pack4chars>;
ffa01c18:	ff e3 7c fe 	CALL 0xffa01910 <_htonl>;
ffa01c1c:	08 30       	R1 = R0;
ffa01c1e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900140(-7339712) */
ffa01c22:	00 e1 54 01 	R0.L = 0x154;		/* (340)	R0=0xff900154(-7339692) */
ffa01c26:	ff e3 cb fa 	CALL 0xffa011bc <_printf_int>;
ffa01c2a:	7f 43       	R7 = R7.B (Z);
ffa01c2c:	82 2f       	JUMP.S 0xffa01b30 <_DHCP_parse+0x58>;
ffa01c2e:	45 30       	R0 = P5;
ffa01c30:	ff e3 84 fe 	CALL 0xffa01938 <_pack4chars>;
ffa01c34:	ff e3 6e fe 	CALL 0xffa01910 <_htonl>;
ffa01c38:	08 30       	R1 = R0;
ffa01c3a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900154(-7339692) */
ffa01c3e:	00 e1 68 01 	R0.L = 0x168;		/* (360)	R0=0xff900168(-7339672) */
ffa01c42:	ff e3 bd fa 	CALL 0xffa011bc <_printf_int>;
ffa01c46:	7f 43       	R7 = R7.B (Z);
ffa01c48:	74 2f       	JUMP.S 0xffa01b30 <_DHCP_parse+0x58>;
	...

ffa01c4c <_bfin_EMAC_send_nocopy>:
ffa01c4c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e3c(-4190660) */
ffa01c50:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01c52:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01c56:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01c5a:	10 97       	W[P2] = R0;
ffa01c5c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01c60:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01c64:	50 95       	R0 = W[P2] (X);
ffa01c66:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01c68:	59 10       	IF !CC JUMP 0xffa01d1a <_bfin_EMAC_send_nocopy+0xce>;
ffa01c6a:	00 00       	NOP;
ffa01c6c:	00 00       	NOP;
ffa01c6e:	00 00       	NOP;
ffa01c70:	50 95       	R0 = W[P2] (X);
ffa01c72:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01c74:	16 18       	IF CC JUMP 0xffa01ca0 <_bfin_EMAC_send_nocopy+0x54>;
ffa01c76:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0008 */
ffa01c7a:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01c7e:	b2 e0 09 10 	LSETUP(0xffa01c82 <_bfin_EMAC_send_nocopy+0x36>, 0xffa01c90 <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa01c82:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01c86:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01c8a:	50 95       	R0 = W[P2] (X);
ffa01c8c:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01c8e:	09 18       	IF CC JUMP 0xffa01ca0 <_bfin_EMAC_send_nocopy+0x54>;
ffa01c90:	00 00       	NOP;
ffa01c92:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa01c96:	00 e1 b4 01 	R0.L = 0x1b4;		/* (436)	R0=0xff9001b4(-7339596) */
ffa01c9a:	ff e3 cf f9 	CALL 0xffa01038 <_printf_str>;
ffa01c9e:	30 20       	JUMP.S 0xffa01cfe <_bfin_EMAC_send_nocopy+0xb2>;
ffa01ca0:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa01ca4:	08 e1 40 0e 	P0.L = 0xe40;		/* (3648)	P0=0xff900e40 <_txIdx> */
ffa01ca8:	00 95       	R0 = W[P0] (Z);
ffa01caa:	10 32       	P2 = R0;
ffa01cac:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01cb0:	09 e1 44 0e 	P1.L = 0xe44;		/* (3652)	P1=0xff900e44 <_txbuf> */
ffa01cb4:	42 95       	R2 = W[P0] (X);
ffa01cb6:	d1 42       	R1 = R2.L (Z);
ffa01cb8:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01cba:	52 91       	P2 = [P2];
ffa01cbc:	11 0d       	CC = R1 <= 0x2;
ffa01cbe:	90 a1       	R0 = [P2 + 0x18];
ffa01cc0:	50 b0       	[P2 + 0x4] = R0;
ffa01cc2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01cc4:	90 b2       	[P2 + 0x28] = R0;
ffa01cc6:	11 32       	P2 = R1;
ffa01cc8:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa01cca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01cce:	08 91       	R0 = [P1];
ffa01cd0:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01cd4:	10 93       	[P2] = R0;
ffa01cd6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01cda:	0a e1 9a 04 	P2.L = 0x49a;		/* (1178)	P2=0xff90049a <_txdmacfg> */
ffa01cde:	50 95       	R0 = W[P2] (X);
ffa01ce0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0049a(-4193126) */
ffa01ce4:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01ce8:	10 97       	W[P2] = R0;
ffa01cea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01cee:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01cf2:	10 91       	R0 = [P2];
ffa01cf4:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01cf6:	10 93       	[P2] = R0;
ffa01cf8:	0d 1c       	IF CC JUMP 0xffa01d12 <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa01cfa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01cfc:	00 97       	W[P0] = R0;
ffa01cfe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01d02:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01d04:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01d08:	10 97       	W[P2] = R0;
ffa01d0a:	01 e8 00 00 	UNLINK;
ffa01d0e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d10:	10 00       	RTS;
ffa01d12:	02 30       	R0 = R2;
ffa01d14:	08 64       	R0 += 0x1;		/* (  1) */
ffa01d16:	00 97       	W[P0] = R0;
ffa01d18:	f3 2f       	JUMP.S 0xffa01cfe <_bfin_EMAC_send_nocopy+0xb2>;
ffa01d1a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01d1e:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa01d22:	ff e3 8b f9 	CALL 0xffa01038 <_printf_str>;
ffa01d26:	ec 2f       	JUMP.S 0xffa01cfe <_bfin_EMAC_send_nocopy+0xb2>;

ffa01d28 <_DHCP_tx>:
ffa01d28:	e3 05       	[--SP] = (R7:4, P5:3);
ffa01d2a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa01d2e:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01d32:	0a e1 40 0e 	P2.L = 0xe40;		/* (3648)	P2=0xff900e40 <_txIdx> */
ffa01d36:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa01d3a:	10 95 00 00 
ffa01d3e:	10 32       	P2 = R0;
ffa01d40:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e44 <_txbuf> */
ffa01d44:	09 e1 44 0e 	P1.L = 0xe44;		/* (3652)	P1=0xff900e44 <_txbuf> */
ffa01d48:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa01d4c:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01d4e:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01d50:	52 91       	P2 = [P2];
ffa01d52:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa01d56:	f1 bb 00 00 
ffa01d5a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90000b */
ffa01d5e:	0d e1 68 0e 	P5.L = 0xe68;		/* (3688)	P5=0xff900e68 <_NetOurMAC> */
ffa01d62:	94 ad       	P4 = [P2 + 0x18];
ffa01d64:	1a 32       	P3 = R2;
ffa01d66:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01d68:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01d6a:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa01d6e:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa01d72:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa01d76:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa01d7a:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa01d7e:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa01d82:	20 97       	W[P4] = R0;
ffa01d84:	68 99       	R0 = B[P5] (X);
ffa01d86:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa01d8a:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01d8e:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa01d92:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01d96:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa01d9a:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01d9e:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa01da2:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01da6:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa01daa:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01dae:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa01db2:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01db6:	ff e3 a1 fd 	CALL 0xffa018f8 <_htons>;
ffa01dba:	e0 b5       	W[P4 + 0xe] = R0;
ffa01dbc:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01dc0:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa01dc4:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa01dc8:	04 50       	R0 = R4 + R0;
ffa01dca:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa01dce:	c0 42       	R0 = R0.L (Z);
ffa01dd0:	ff e3 94 fd 	CALL 0xffa018f8 <_htons>;
ffa01dd4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e40 <_txIdx> */
ffa01dd8:	0a e1 42 0e 	P2.L = 0xe42;		/* (3650)	P2=0xff900e42 <_NetIPID> */
ffa01ddc:	60 b6       	W[P4 + 0x12] = R0;
ffa01dde:	10 95       	R0 = W[P2] (Z);
ffa01de0:	08 30       	R1 = R0;
ffa01de2:	09 64       	R1 += 0x1;		/* (  1) */
ffa01de4:	11 97       	W[P2] = R1;
ffa01de6:	ff e3 89 fd 	CALL 0xffa018f8 <_htons>;
ffa01dea:	a0 b6       	W[P4 + 0x14] = R0;
ffa01dec:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01df0:	ff e3 84 fd 	CALL 0xffa018f8 <_htons>;
ffa01df4:	e0 b6       	W[P4 + 0x16] = R0;
ffa01df6:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01df8:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa01dfc:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa01e00:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa01e04:	66 b7 00 00 
ffa01e08:	44 30       	R0 = P4;
ffa01e0a:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01e0c:	e7 b1       	[P4 + 0x1c] = R7;
ffa01e0e:	23 be       	[P4 + 0x20] = P3;
ffa01e10:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01e12:	ff e3 5b fd 	CALL 0xffa018c8 <_NetCksum>;
ffa01e16:	c0 43       	R0 =~ R0;
ffa01e18:	60 b7       	W[P4 + 0x1a] = R0;
ffa01e1a:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa01e1e:	ff e3 6d fd 	CALL 0xffa018f8 <_htons>;
ffa01e22:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa01e26:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa01e2a:	ff e3 67 fd 	CALL 0xffa018f8 <_htons>;
ffa01e2e:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa01e32:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa01e36:	04 50       	R0 = R4 + R0;
ffa01e38:	c0 42       	R0 = R0.L (Z);
ffa01e3a:	ff e3 5f fd 	CALL 0xffa018f8 <_htons>;
ffa01e3e:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa01e42:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01e44:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa01e48:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa01e4c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e42(-4190654) */
ffa01e50:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01e52:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa01e56:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa01e5a:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa01e5e:	10 91       	R0 = [P2];
ffa01e60:	20 b3       	[P4 + 0x30] = R0;
ffa01e62:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa01e66:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa01e6a:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa01e6e:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa01e72:	a7 b3       	[P4 + 0x38] = R7;
ffa01e74:	e7 b3       	[P4 + 0x3c] = R7;
ffa01e76:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa01e7a:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa01e7e:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa01e82:	ff e3 47 fd 	CALL 0xffa01910 <_htonl>;
ffa01e86:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa01e8a:	68 99       	R0 = B[P5] (X);
ffa01e8c:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa01e90:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01e94:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa01e98:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01e9c:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa01ea0:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01ea4:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa01ea8:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01eac:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa01eb0:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01eb4:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa01eb8:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa01ebc:	54 5a       	P1 = P4 + P2;
ffa01ebe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ec0:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa01ec2:	b2 e0 02 20 	LSETUP(0xffa01ec6 <_DHCP_tx+0x19e>, 0xffa01ec6 <_DHCP_tx+0x19e>) LC1 = P2;
ffa01ec6:	08 9a       	B[P1++] = R0;
ffa01ec8:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa01ecc:	54 5a       	P1 = P4 + P2;
ffa01ece:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ed0:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa01ed2:	b2 e0 02 20 	LSETUP(0xffa01ed6 <_DHCP_tx+0x1ae>, 0xffa01ed6 <_DHCP_tx+0x1ae>) LC1 = P2;
ffa01ed6:	08 92       	[P1++] = R0;
ffa01ed8:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa01edc:	54 5a       	P1 = P4 + P2;
ffa01ede:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ee0:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa01ee2:	b2 e0 02 20 	LSETUP(0xffa01ee6 <_DHCP_tx+0x1be>, 0xffa01ee6 <_DHCP_tx+0x1be>) LC1 = P2;
ffa01ee6:	08 92       	[P1++] = R0;
ffa01ee8:	44 30       	R0 = P4;
ffa01eea:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa01eee:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa01ef2:	f0 b9 00 00 
ffa01ef6:	14 30       	R2 = R4;
ffa01ef8:	ff e3 48 fa 	CALL 0xffa01388 <_memcpy_>;
ffa01efc:	01 e8 00 00 	UNLINK;
ffa01f00:	a3 05       	(R7:4, P5:3) = [SP++];
ffa01f02:	ff e2 a5 fe 	JUMP.L 0xffa01c4c <_bfin_EMAC_send_nocopy>;
	...

ffa01f08 <_bfin_EMAC_send>:
ffa01f08:	c4 04       	[--SP] = (P5:4);
ffa01f0a:	01 0d       	CC = R1 <= 0x0;
ffa01f0c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01f10:	18 30       	R3 = R0;
ffa01f12:	11 30       	R2 = R1;
ffa01f14:	90 18       	IF CC JUMP 0xffa02034 <_bfin_EMAC_send+0x12c>;
ffa01f16:	00 00       	NOP;
ffa01f18:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00020(-4194272) */
ffa01f1c:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01f20:	50 95       	R0 = W[P2] (X);
ffa01f22:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01f24:	74 10       	IF !CC JUMP 0xffa0200c <_bfin_EMAC_send+0x104>;
ffa01f26:	00 00       	NOP;
ffa01f28:	00 00       	NOP;
ffa01f2a:	00 00       	NOP;
ffa01f2c:	50 95       	R0 = W[P2] (X);
ffa01f2e:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01f30:	17 18       	IF CC JUMP 0xffa01f5e <_bfin_EMAC_send+0x56>;
ffa01f32:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0e44 */
ffa01f36:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01f3a:	b2 e0 09 10 	LSETUP(0xffa01f3e <_bfin_EMAC_send+0x36>, 0xffa01f4c <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa01f3e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01f42:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01f46:	50 95       	R0 = W[P2] (X);
ffa01f48:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01f4a:	0a 18       	IF CC JUMP 0xffa01f5e <_bfin_EMAC_send+0x56>;
ffa01f4c:	00 00       	NOP;
ffa01f4e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01f52:	00 e1 e8 01 	R0.L = 0x1e8;		/* (488)	R0=0xff9001e8(-7339544) */
ffa01f56:	ff e3 71 f8 	CALL 0xffa01038 <_printf_str>;
ffa01f5a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01f5c:	53 20       	JUMP.S 0xffa02002 <_bfin_EMAC_send+0xfa>;
ffa01f5e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900000 <_l1_data_a> */
ffa01f62:	0c e1 40 0e 	P4.L = 0xe40;		/* (3648)	P4=0xff900e40 <_txIdx> */
ffa01f66:	20 95       	R0 = W[P4] (Z);
ffa01f68:	10 32       	P2 = R0;
ffa01f6a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e68 <_NetOurMAC> */
ffa01f6e:	0d e1 44 0e 	P5.L = 0xe44;		/* (3652)	P5=0xff900e44 <_txbuf> */
ffa01f72:	0b 30       	R1 = R3;
ffa01f74:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01f76:	52 91       	P2 = [P2];
ffa01f78:	92 ad       	P2 = [P2 + 0x18];
ffa01f7a:	12 96       	W[P2++] = R2;
ffa01f7c:	42 30       	R0 = P2;
ffa01f7e:	ff e3 05 fa 	CALL 0xffa01388 <_memcpy_>;
ffa01f82:	20 95       	R0 = W[P4] (Z);
ffa01f84:	10 32       	P2 = R0;
ffa01f86:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01f88:	51 91       	P1 = [P2];
ffa01f8a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01f8e:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01f92:	51 93       	[P2] = P1;
ffa01f94:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01f98:	88 a1       	R0 = [P1 + 0x18];
ffa01f9a:	0a e1 9a 04 	P2.L = 0x49a;		/* (1178)	P2=0xff90049a <_txdmacfg> */
ffa01f9e:	48 b0       	[P1 + 0x4] = R0;
ffa01fa0:	50 95       	R0 = W[P2] (X);
ffa01fa2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0049a(-4193126) */
ffa01fa6:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01faa:	10 97       	W[P2] = R0;
ffa01fac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01fb0:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01fb4:	10 91       	R0 = [P2];
ffa01fb6:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01fb8:	10 93       	[P2] = R0;
ffa01fba:	88 a2       	R0 = [P1 + 0x28];
ffa01fbc:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01fbe:	13 10       	IF !CC JUMP 0xffa01fe4 <_bfin_EMAC_send+0xdc>;
ffa01fc0:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa01fc4:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa01fc8:	b2 e0 05 20 	LSETUP(0xffa01fcc <_bfin_EMAC_send+0xc4>, 0xffa01fd2 <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa01fcc:	88 a2       	R0 = [P1 + 0x28];
ffa01fce:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01fd0:	0a 10       	IF !CC JUMP 0xffa01fe4 <_bfin_EMAC_send+0xdc>;
ffa01fd2:	00 00       	NOP;
ffa01fd4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001e8(-7339544) */
ffa01fd8:	00 e1 00 02 	R0.L = 0x200;		/* (512)	R0=0xff900200(-7339520) */
ffa01fdc:	ff e3 2e f8 	CALL 0xffa01038 <_printf_str>;
ffa01fe0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01fe2:	10 20       	JUMP.S 0xffa02002 <_bfin_EMAC_send+0xfa>;
ffa01fe4:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa01fe8:	61 95 00 00 
ffa01fec:	8a a2       	R2 = [P1 + 0x28];
ffa01fee:	88 b2       	[P1 + 0x28] = R0;
ffa01ff0:	c8 42       	R0 = R1.L (Z);
ffa01ff2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa01ff6:	10 0d       	CC = R0 <= 0x2;
ffa01ff8:	0a e1 40 0e 	P2.L = 0xe40;		/* (3648)	P2=0xff900e40 <_txIdx> */
ffa01ffc:	14 1c       	IF CC JUMP 0xffa02024 <_bfin_EMAC_send+0x11c> (BP);
ffa01ffe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02000:	10 97       	W[P2] = R0;
ffa02002:	01 e8 00 00 	UNLINK;
ffa02006:	02 30       	R0 = R2;
ffa02008:	84 04       	(P5:4) = [SP++];
ffa0200a:	10 00       	RTS;
ffa0200c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02010:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa02014:	ff e3 12 f8 	CALL 0xffa01038 <_printf_str>;
ffa02018:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0201a:	01 e8 00 00 	UNLINK;
ffa0201e:	02 30       	R0 = R2;
ffa02020:	84 04       	(P5:4) = [SP++];
ffa02022:	10 00       	RTS;
ffa02024:	01 30       	R0 = R1;
ffa02026:	08 64       	R0 += 0x1;		/* (  1) */
ffa02028:	10 97       	W[P2] = R0;
ffa0202a:	01 e8 00 00 	UNLINK;
ffa0202e:	02 30       	R0 = R2;
ffa02030:	84 04       	(P5:4) = [SP++];
ffa02032:	10 00       	RTS;
ffa02034:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90019c(-7339620) */
ffa02038:	00 e1 cc 01 	R0.L = 0x1cc;		/* (460)	R0=0xff9001cc(-7339572) */
ffa0203c:	ff e3 c0 f8 	CALL 0xffa011bc <_printf_int>;
ffa02040:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02042:	01 e8 00 00 	UNLINK;
ffa02046:	02 30       	R0 = R2;
ffa02048:	84 04       	(P5:4) = [SP++];
ffa0204a:	10 00       	RTS;

ffa0204c <_ether_testUDP>:
ffa0204c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0204e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e40 <_txIdx> */
ffa02052:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02056:	0a e1 40 0e 	P2.L = 0xe40;		/* (3648)	P2=0xff900e40 <_txIdx> */
ffa0205a:	11 95       	R1 = W[P2] (Z);
ffa0205c:	11 32       	P2 = R1;
ffa0205e:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa02062:	09 e1 44 0e 	P1.L = 0xe44;		/* (3652)	P1=0xff900e44 <_txbuf> */
ffa02066:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa0206a:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0206c:	52 91       	P2 = [P2];
ffa0206e:	95 ad       	P5 = [P2 + 0x18];
ffa02070:	55 32       	P2 = P5;
ffa02072:	11 96       	W[P2++] = R1;
ffa02074:	4a 30       	R1 = P2;
ffa02076:	00 e3 39 08 	CALL 0xffa030e8 <_ARP_req>;
ffa0207a:	00 0c       	CC = R0 == 0x0;
ffa0207c:	7f 18       	IF CC JUMP 0xffa0217a <_ether_testUDP+0x12e>;
ffa0207e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e40 <_txIdx> */
ffa02082:	0a e1 68 0e 	P2.L = 0xe68;		/* (3688)	P2=0xff900e68 <_NetOurMAC> */
ffa02086:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02088:	50 99       	R0 = B[P2] (X);
ffa0208a:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0208e:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa02092:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02096:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa0209a:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa0209e:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa020a2:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa020a6:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa020aa:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa020ae:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa020b2:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa020b6:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa020ba:	ff e3 1f fc 	CALL 0xffa018f8 <_htons>;
ffa020be:	e8 b5       	W[P5 + 0xe] = R0;
ffa020c0:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa020c4:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa020c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa020ca:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa020ce:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa020d0:	ff e3 14 fc 	CALL 0xffa018f8 <_htons>;
ffa020d4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e68 <_NetOurMAC> */
ffa020d8:	0a e1 42 0e 	P2.L = 0xe42;		/* (3650)	P2=0xff900e42 <_NetIPID> */
ffa020dc:	68 b6       	W[P5 + 0x12] = R0;
ffa020de:	10 95       	R0 = W[P2] (Z);
ffa020e0:	08 30       	R1 = R0;
ffa020e2:	09 64       	R1 += 0x1;		/* (  1) */
ffa020e4:	11 97       	W[P2] = R1;
ffa020e6:	ff e3 09 fc 	CALL 0xffa018f8 <_htons>;
ffa020ea:	a8 b6       	W[P5 + 0x14] = R0;
ffa020ec:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa020f0:	ff e3 04 fc 	CALL 0xffa018f8 <_htons>;
ffa020f4:	e8 b6       	W[P5 + 0x16] = R0;
ffa020f6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa020f8:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa020fc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e42 <_NetIPID> */
ffa02100:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa02102:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa02106:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetOurIP> */
ffa0210a:	10 91       	R0 = [P2];
ffa0210c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e74 <_NetOurIP> */
ffa02110:	0a e1 38 0e 	P2.L = 0xe38;		/* (3640)	P2=0xff900e38 <_NetDestIP> */
ffa02114:	e8 b1       	[P5 + 0x1c] = R0;
ffa02116:	10 91       	R0 = [P2];
ffa02118:	28 b2       	[P5 + 0x20] = R0;
ffa0211a:	45 30       	R0 = P5;
ffa0211c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0211e:	6f b7       	W[P5 + 0x1a] = R7;
ffa02120:	80 64       	R0 += 0x10;		/* ( 16) */
ffa02122:	ff e3 d3 fb 	CALL 0xffa018c8 <_NetCksum>;
ffa02126:	c0 43       	R0 =~ R0;
ffa02128:	68 b7       	W[P5 + 0x1a] = R0;
ffa0212a:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa0212e:	ff e3 e5 fb 	CALL 0xffa018f8 <_htons>;
ffa02132:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa02136:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa0213a:	ff e3 df fb 	CALL 0xffa018f8 <_htons>;
ffa0213e:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa02142:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa02144:	ff e3 da fb 	CALL 0xffa018f8 <_htons>;
ffa02148:	55 32       	P2 = P5;
ffa0214a:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa0214e:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa02152:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa02154:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02156:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa02158:	b2 e0 03 10 	LSETUP(0xffa0215c <_ether_testUDP+0x110>, 0xffa0215e <_ether_testUDP+0x112>) LC1 = P1;
ffa0215c:	11 9a       	B[P2++] = R1;
ffa0215e:	09 64       	R1 += 0x1;		/* (  1) */
ffa02160:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa02164:	00 e1 14 02 	R0.L = 0x214;		/* (532)	R0=0xff900214(-7339500) */
ffa02168:	ff e3 68 f7 	CALL 0xffa01038 <_printf_str>;
ffa0216c:	ff e3 70 fd 	CALL 0xffa01c4c <_bfin_EMAC_send_nocopy>;
ffa02170:	01 e8 00 00 	UNLINK;
ffa02174:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02176:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02178:	10 00       	RTS;
ffa0217a:	01 e8 00 00 	UNLINK;
ffa0217e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02180:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02182:	10 00       	RTS;

ffa02184 <_eth_header_setup>:
ffa02184:	c4 04       	[--SP] = (P5:4);
ffa02186:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e38 <_NetDestIP> */
ffa0218a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0218e:	0a e1 40 0e 	P2.L = 0xe40;		/* (3648)	P2=0xff900e40 <_txIdx> */
ffa02192:	00 32       	P0 = R0;
ffa02194:	10 95       	R0 = W[P2] (Z);
ffa02196:	10 32       	P2 = R0;
ffa02198:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa0219c:	09 e1 44 0e 	P1.L = 0xe44;		/* (3652)	P1=0xff900e44 <_txbuf> */
ffa021a0:	00 91       	R0 = [P0];
ffa021a2:	21 32       	P4 = R1;
ffa021a4:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa021a6:	52 91       	P2 = [P2];
ffa021a8:	08 30       	R1 = R0;
ffa021aa:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa021ac:	80 67       	R0 += -0x10;		/* (-16) */
ffa021ae:	95 ad       	P5 = [P2 + 0x18];
ffa021b0:	00 93       	[P0] = R0;
ffa021b2:	02 30       	R0 = R2;
ffa021b4:	55 32       	P2 = P5;
ffa021b6:	11 96       	W[P2++] = R1;
ffa021b8:	4a 30       	R1 = P2;
ffa021ba:	00 e3 97 07 	CALL 0xffa030e8 <_ARP_req>;
ffa021be:	00 0c       	CC = R0 == 0x0;
ffa021c0:	2b 18       	IF CC JUMP 0xffa02216 <_eth_header_setup+0x92>;
ffa021c2:	00 00       	NOP;
ffa021c4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e40 <_txIdx> */
ffa021c8:	0a e1 68 0e 	P2.L = 0xe68;		/* (3688)	P2=0xff900e68 <_NetOurMAC> */
ffa021cc:	50 99       	R0 = B[P2] (X);
ffa021ce:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa021d2:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa021d6:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa021da:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa021de:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa021e2:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa021e6:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa021ea:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa021ee:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa021f2:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa021f6:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa021fa:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa021fe:	ff e3 7d fb 	CALL 0xffa018f8 <_htons>;
ffa02202:	e8 b5       	W[P5 + 0xe] = R0;
ffa02204:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02206:	20 9b       	B[P4] = R0;
ffa02208:	4d 30       	R1 = P5;
ffa0220a:	81 64       	R1 += 0x10;		/* ( 16) */
ffa0220c:	01 e8 00 00 	UNLINK;
ffa02210:	01 30       	R0 = R1;
ffa02212:	84 04       	(P5:4) = [SP++];
ffa02214:	10 00       	RTS;
ffa02216:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02218:	20 9b       	B[P4] = R0;
ffa0221a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0221c:	01 e8 00 00 	UNLINK;
ffa02220:	01 30       	R0 = R1;
ffa02222:	84 04       	(P5:4) = [SP++];
ffa02224:	10 00       	RTS;
	...

ffa02228 <_icmp_packet_setup>:
ffa02228:	e4 05       	[--SP] = (R7:4, P5:4);
ffa0222a:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0222e:	29 32       	P5 = R1;
ffa02230:	7f 30       	R7 = FP;
ffa02232:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02234:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02236:	f0 bb       	[FP -0x4] = R0;
ffa02238:	07 30       	R0 = R7;
ffa0223a:	22 32       	P4 = R2;
ffa0223c:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa02240:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa02244:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa02248:	ff e3 9e ff 	CALL 0xffa02184 <_eth_header_setup>;
ffa0224c:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa02250:	68 99 00 00 
ffa02254:	80 0c       	CC = R0 < 0x0;
ffa02256:	14 18       	IF CC JUMP 0xffa0227e <_icmp_packet_setup+0x56>;
ffa02258:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0225a:	f0 b0       	[SP + 0xc] = R0;
ffa0225c:	54 30       	R2 = P4;
ffa0225e:	01 30       	R0 = R1;
ffa02260:	0f 30       	R1 = R7;
ffa02262:	ff e3 7f fb 	CALL 0xffa01960 <_ip_header_setup>;
ffa02266:	e9 42       	R1 = R5.L (Z);
ffa02268:	f1 b0       	[SP + 0xc] = R1;
ffa0226a:	e1 42       	R1 = R4.L (Z);
ffa0226c:	31 b1       	[SP + 0x10] = R1;
ffa0226e:	72 43       	R2 = R6.B (Z);
ffa02270:	0f 30       	R1 = R7;
ffa02272:	ff e3 c1 fb 	CALL 0xffa019f4 <_icmp_header_setup>;
ffa02276:	01 e8 00 00 	UNLINK;
ffa0227a:	a4 05       	(R7:4, P5:4) = [SP++];
ffa0227c:	10 00       	RTS;
ffa0227e:	01 e8 00 00 	UNLINK;
ffa02282:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02284:	a4 05       	(R7:4, P5:4) = [SP++];
ffa02286:	10 00       	RTS;

ffa02288 <_icmp_rx>:
ffa02288:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0228a:	28 32       	P5 = R0;
ffa0228c:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02290:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02294:	39 30       	R7 = R1;
ffa02296:	ff e3 31 fb 	CALL 0xffa018f8 <_htons>;
ffa0229a:	c0 42       	R0 = R0.L (Z);
ffa0229c:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa0229e:	01 08       	CC = R1 == R0;
ffa022a0:	06 18       	IF CC JUMP 0xffa022ac <_icmp_rx+0x24>;
ffa022a2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa022a4:	01 e8 00 00 	UNLINK;
ffa022a8:	bd 05       	(R7:7, P5:5) = [SP++];
ffa022aa:	10 00       	RTS;
ffa022ac:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa022ae:	07 0a       	CC = R7 <= R0 (IU);
ffa022b0:	f9 1b       	IF CC JUMP 0xffa022a2 <_icmp_rx+0x1a>;
ffa022b2:	00 00       	NOP;
ffa022b4:	00 00       	NOP;
ffa022b6:	00 00       	NOP;
ffa022b8:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa022bc:	08 0c       	CC = R0 == 0x1;
ffa022be:	f2 17       	IF !CC JUMP 0xffa022a2 <_icmp_rx+0x1a> (BP);
ffa022c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e68 <_NetOurMAC> */
ffa022c4:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetOurIP> */
ffa022c8:	28 a2       	R0 = [P5 + 0x20];
ffa022ca:	11 91       	R1 = [P2];
ffa022cc:	08 08       	CC = R0 == R1;
ffa022ce:	ea 17       	IF !CC JUMP 0xffa022a2 <_icmp_rx+0x1a> (BP);
ffa022d0:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa022d4:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa022d8:	08 08       	CC = R0 == R1;
ffa022da:	3e 18       	IF CC JUMP 0xffa02356 <_icmp_rx+0xce>;
ffa022dc:	00 00       	NOP;
ffa022de:	00 00       	NOP;
ffa022e0:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa022e2:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa022e6:	08 08       	CC = R0 == R1;
ffa022e8:	dd 17       	IF !CC JUMP 0xffa022a2 <_icmp_rx+0x1a> (BP);
ffa022ea:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa022ee:	e9 a1       	R1 = [P5 + 0x1c];
ffa022f0:	00 e1 2c 02 	R0.L = 0x22c;		/* (556)	R0=0xff90022c(-7339476) */
ffa022f4:	ff e3 06 f8 	CALL 0xffa01300 <_printf_ip>;
ffa022f8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e74 <_NetOurIP> */
ffa022fc:	0a e1 38 0e 	P2.L = 0xe38;		/* (3640)	P2=0xff900e38 <_NetDestIP> */
ffa02300:	e8 a1       	R0 = [P5 + 0x1c];
ffa02302:	4d 30       	R1 = P5;
ffa02304:	10 93       	[P2] = R0;
ffa02306:	41 64       	R1 += 0x8;		/* (  8) */
ffa02308:	00 e3 f2 04 	CALL 0xffa02cec <_ARP_lut_add>;
ffa0230c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90022c(-7339476) */
ffa02310:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02314:	ff e3 92 f6 	CALL 0xffa01038 <_printf_str>;
ffa02318:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa0231c:	ea a1 00 00 
ffa02320:	f0 b0       	[SP + 0xc] = R0;
ffa02322:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa02326:	30 b1       	[SP + 0x10] = R0;
ffa02328:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa0232a:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa0232e:	4f 30       	R1 = FP;
ffa02330:	70 b1       	[SP + 0x14] = R0;
ffa02332:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa02334:	07 30       	R0 = R7;
ffa02336:	ff e3 79 ff 	CALL 0xffa02228 <_icmp_packet_setup>;
ffa0233a:	08 30       	R1 = R0;
ffa0233c:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa02340:	00 0d       	CC = R0 <= 0x0;
ffa02342:	b0 1b       	IF CC JUMP 0xffa022a2 <_icmp_rx+0x1a>;
ffa02344:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa02346:	45 30       	R0 = P5;
ffa02348:	17 30       	R2 = R7;
ffa0234a:	ff e3 1f f8 	CALL 0xffa01388 <_memcpy_>;
ffa0234e:	ff e3 7f fc 	CALL 0xffa01c4c <_bfin_EMAC_send_nocopy>;
ffa02352:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02354:	a8 2f       	JUMP.S 0xffa022a4 <_icmp_rx+0x1c>;
ffa02356:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e38 <_NetDestIP> */
ffa0235a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0235c:	0a e1 c8 0b 	P2.L = 0xbc8;		/* (3016)	P2=0xff900bc8 <_g_streamEnabled> */
ffa02360:	10 9b       	B[P2] = R0;
ffa02362:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02364:	a0 2f       	JUMP.S 0xffa022a4 <_icmp_rx+0x1c>;
	...

ffa02368 <_udp_packet_setup>:
ffa02368:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0236a:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0236e:	29 32       	P5 = R1;
ffa02370:	7f 30       	R7 = FP;
ffa02372:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e40 <_txIdx> */
ffa02376:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02378:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0237a:	0c e1 78 0e 	P4.L = 0xe78;		/* (3704)	P4=0xff900e78 <_NetDataDestIP> */
ffa0237e:	f0 bb       	[FP -0x4] = R0;
ffa02380:	22 91       	R2 = [P4];
ffa02382:	07 30       	R0 = R7;
ffa02384:	ff e3 00 ff 	CALL 0xffa02184 <_eth_header_setup>;
ffa02388:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa0238c:	68 99 00 00 
ffa02390:	80 0c       	CC = R0 < 0x0;
ffa02392:	14 18       	IF CC JUMP 0xffa023ba <_udp_packet_setup+0x52>;
ffa02394:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa02396:	f0 b0       	[SP + 0xc] = R0;
ffa02398:	01 30       	R0 = R1;
ffa0239a:	22 91       	R2 = [P4];
ffa0239c:	0f 30       	R1 = R7;
ffa0239e:	ff e3 e1 fa 	CALL 0xffa01960 <_ip_header_setup>;
ffa023a2:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa023a6:	f1 b0       	[SP + 0xc] = R1;
ffa023a8:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa023ac:	0f 30       	R1 = R7;
ffa023ae:	ff e3 47 fb 	CALL 0xffa01a3c <_udp_header_setup>;
ffa023b2:	01 e8 00 00 	UNLINK;
ffa023b6:	bc 05       	(R7:7, P5:4) = [SP++];
ffa023b8:	10 00       	RTS;
ffa023ba:	01 e8 00 00 	UNLINK;
ffa023be:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa023c0:	bc 05       	(R7:7, P5:4) = [SP++];
ffa023c2:	10 00       	RTS;

ffa023c4 <_SetupTxBuffer>:
ffa023c4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa023c6:	38 30       	R7 = R0;
ffa023c8:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa023cc:	c7 40       	R7 *= R0;
ffa023ce:	17 32       	P2 = R7;
ffa023d0:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800e44 */
ffa023d4:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa023d8:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa023dc:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa023e0:	6a 5b       	P5 = P2 + P5;
ffa023e2:	c7 51       	R7 = R7 + R0;
ffa023e4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa023e8:	45 30       	R0 = P5;
ffa023ea:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa023ec:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa023ee:	ff e3 dd f7 	CALL 0xffa013a8 <_memset_>;
ffa023f2:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa023f6:	af b1 00 00 
ffa023fa:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa023fe:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02402:	ff e3 d3 f7 	CALL 0xffa013a8 <_memset_>;
ffa02406:	45 30       	R0 = P5;
ffa02408:	60 64       	R0 += 0xc;		/* ( 12) */
ffa0240a:	28 93       	[P5] = R0;
ffa0240c:	a8 a1       	R0 = [P5 + 0x18];
ffa0240e:	68 b0       	[P5 + 0x4] = R0;
ffa02410:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa02414:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02416:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa02418:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa0241a:	10 54       	R0 = R0 & R2;
ffa0241c:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa0241e:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02422:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa02424:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa02428:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0242a:	18 54       	R0 = R0 & R3;
ffa0242c:	08 56       	R0 = R0 | R1;
ffa0242e:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa02432:	08 56       	R0 = R0 | R1;
ffa02434:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02438:	45 30       	R0 = P5;
ffa0243a:	40 65       	R0 += 0x28;		/* ( 40) */
ffa0243c:	28 b1       	[P5 + 0x10] = R0;
ffa0243e:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa02442:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02444:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02446:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa0244a:	10 54       	R0 = R0 & R2;
ffa0244c:	08 56       	R0 = R0 | R1;
ffa0244e:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa02452:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa02456:	18 54       	R0 = R0 & R3;
ffa02458:	39 64       	R1 += 0x7;		/* (  7) */
ffa0245a:	08 54       	R0 = R0 & R1;
ffa0245c:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02460:	ed bc       	[P5 + 0xc] = P5;
ffa02462:	01 e8 00 00 	UNLINK;
ffa02466:	45 30       	R0 = P5;
ffa02468:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0246a:	10 00       	RTS;

ffa0246c <_SetupRxBuffer>:
ffa0246c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0246e:	38 30       	R7 = R0;
ffa02470:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02474:	c7 40       	R7 *= R0;
ffa02476:	17 32       	P2 = R7;
ffa02478:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa0247c:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa02480:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02484:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa02488:	6a 5b       	P5 = P2 + P5;
ffa0248a:	c7 51       	R7 = R7 + R0;
ffa0248c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02490:	45 30       	R0 = P5;
ffa02492:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02494:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa02496:	ff e3 89 f7 	CALL 0xffa013a8 <_memset_>;
ffa0249a:	af b1       	[P5 + 0x18] = R7;
ffa0249c:	07 30       	R0 = R7;
ffa0249e:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa024a2:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa024a6:	ff e3 81 f7 	CALL 0xffa013a8 <_memset_>;
ffa024aa:	45 30       	R0 = P5;
ffa024ac:	60 64       	R0 += 0xc;		/* ( 12) */
ffa024ae:	28 93       	[P5] = R0;
ffa024b0:	a8 a1       	R0 = [P5 + 0x18];
ffa024b2:	68 b0       	[P5 + 0x4] = R0;
ffa024b4:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa024b8:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa024ba:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa024bc:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa024be:	08 54       	R0 = R0 & R1;
ffa024c0:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa024c2:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa024c6:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa024c8:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa024cc:	38 54       	R0 = R0 & R7;
ffa024ce:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa024d0:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa024d4:	18 56       	R0 = R0 | R3;
ffa024d6:	10 56       	R0 = R0 | R2;
ffa024d8:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa024dc:	45 30       	R0 = P5;
ffa024de:	20 65       	R0 += 0x24;		/* ( 36) */
ffa024e0:	28 b1       	[P5 + 0x10] = R0;
ffa024e2:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa024e6:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa024e8:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa024ea:	08 54       	R0 = R0 & R1;
ffa024ec:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa024f0:	08 56       	R0 = R0 | R1;
ffa024f2:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa024f6:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa024fa:	38 54       	R0 = R0 & R7;
ffa024fc:	18 56       	R0 = R0 | R3;
ffa024fe:	10 56       	R0 = R0 | R2;
ffa02500:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02504:	ed bc       	[P5 + 0xc] = P5;
ffa02506:	01 e8 00 00 	UNLINK;
ffa0250a:	45 30       	R0 = P5;
ffa0250c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0250e:	10 00       	RTS;

ffa02510 <_SetupSystemRegs>:
ffa02510:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02512:	28 32       	P5 = R0;
ffa02514:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa02518:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0251c:	00 e1 48 02 	R0.L = 0x248;		/* (584)	R0=0xff900248(-7339448) */
ffa02520:	ff e3 8c f5 	CALL 0xffa01038 <_printf_str>;
ffa02524:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bc8(-4191288) */
ffa02528:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa0252c:	50 95       	R0 = W[P2] (X);
ffa0252e:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa02532:	08 54       	R0 = R0 & R1;
ffa02534:	10 97       	W[P2] = R0;
ffa02536:	50 95       	R0 = W[P2] (X);
ffa02538:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa0253a:	10 97       	W[P2] = R0;
ffa0253c:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0253e:	51 95       	R1 = W[P2] (X);
ffa02540:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa02544:	08 56       	R0 = R0 | R1;
ffa02546:	10 97       	W[P2] = R0;
ffa02548:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0254a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0254c:	10 97       	W[P2] = R0;
ffa0254e:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa02550:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa02552:	10 97       	W[P2] = R0;
ffa02554:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa02558:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa0255c:	50 95       	R0 = W[P2] (X);
ffa0255e:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa02560:	10 97       	W[P2] = R0;
ffa02562:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa02566:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa0256a:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa0256e:	10 93       	[P2] = R0;
ffa02570:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02572:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa02576:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02578:	ff e3 4c f9 	CALL 0xffa01810 <_WrPHYReg>;
ffa0257c:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02580:	ff e3 f2 f8 	CALL 0xffa01764 <_udelay>;
ffa02584:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02586:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02588:	ff e3 60 f9 	CALL 0xffa01848 <_RdPHYReg>;
ffa0258c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0258e:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa02590:	0e 20       	JUMP.S 0xffa025ac <_SetupSystemRegs+0x9c>;
ffa02592:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02596:	ff e3 e7 f8 	CALL 0xffa01764 <_udelay>;
ffa0259a:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0259c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0259e:	ff e3 55 f9 	CALL 0xffa01848 <_RdPHYReg>;
ffa025a2:	0f 64       	R7 += 0x1;		/* (  1) */
ffa025a4:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa025a8:	0f 08       	CC = R7 == R1;
ffa025aa:	35 18       	IF CC JUMP 0xffa02614 <_SetupSystemRegs+0x104>;
ffa025ac:	06 54       	R0 = R6 & R0;
ffa025ae:	00 0c       	CC = R0 == 0x0;
ffa025b0:	f1 1f       	IF CC JUMP 0xffa02592 <_SetupSystemRegs+0x82> (BP);
ffa025b2:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa025b4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa025b6:	ff e3 49 f9 	CALL 0xffa01848 <_RdPHYReg>;
ffa025ba:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa025be:	01 54       	R0 = R1 & R0;
ffa025c0:	00 0c       	CC = R0 == 0x0;
ffa025c2:	27 1c       	IF CC JUMP 0xffa02610 <_SetupSystemRegs+0x100> (BP);
ffa025c4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa025c6:	d0 4f       	R0 <<= 0x1a;
ffa025c8:	28 93       	[P5] = R0;
ffa025ca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa025ce:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa025d0:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa025d4:	10 93       	[P2] = R0;
ffa025d6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa025da:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa025dc:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa025e0:	10 97       	W[P2] = R0;
ffa025e2:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa025e4:	22 6c       	P2 += 0x4;		/* (  4) */
ffa025e6:	11 97       	W[P2] = R1;
ffa025e8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa025ea:	10 97       	W[P2] = R0;
ffa025ec:	22 6c       	P2 += 0x4;		/* (  4) */
ffa025ee:	10 97       	W[P2] = R0;
ffa025f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa025f4:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa025f8:	10 97       	W[P2] = R0;
ffa025fa:	22 6c       	P2 += 0x4;		/* (  4) */
ffa025fc:	11 97       	W[P2] = R1;
ffa025fe:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02600:	10 97       	W[P2] = R0;
ffa02602:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02604:	10 97       	W[P2] = R0;
ffa02606:	01 e8 00 00 	UNLINK;
ffa0260a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0260c:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0260e:	10 00       	RTS;
ffa02610:	28 93       	[P5] = R0;
ffa02612:	dc 2f       	JUMP.S 0xffa025ca <_SetupSystemRegs+0xba>;
ffa02614:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02618:	00 e1 60 02 	R0.L = 0x260;		/* (608)	R0=0xff900260(-7339424) */
ffa0261c:	ff e3 0e f5 	CALL 0xffa01038 <_printf_str>;
ffa02620:	01 e8 00 00 	UNLINK;
ffa02624:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02626:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02628:	10 00       	RTS;
	...

ffa0262c <_SetupMacAddr>:
ffa0262c:	10 32       	P2 = R0;
ffa0262e:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02630:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02632:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02636:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa0263a:	10 9b       	B[P2] = R0;
ffa0263c:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa0263e:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa02642:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa02644:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa02648:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa0264a:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa0264e:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa02652:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02656:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa02658:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa0265c:	10 99       	R0 = B[P2] (Z);
ffa0265e:	08 56       	R0 = R0 | R1;
ffa02660:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa02664:	89 4f       	R1 <<= 0x11;
ffa02666:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00e44(-4190652) */
ffa0266a:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa0266e:	08 56       	R0 = R0 | R1;
ffa02670:	08 93       	[P1] = R0;
ffa02672:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02676:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa0267a:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa0267e:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa02680:	28 93       	[P5] = R0;
ffa02682:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa02686:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa0268a:	09 91       	R1 = [P1];
ffa0268c:	07 e1 64 0a 	R7.L = 0xa64;		/* (2660)	R7=0xff900a64(-7337372) */
ffa02690:	00 e1 94 02 	R0.L = 0x294;		/* (660)	R0=0xff900294(-7339372) */
ffa02694:	ff e3 38 f5 	CALL 0xffa01104 <_printf_hex>;
ffa02698:	07 30       	R0 = R7;
ffa0269a:	ff e3 cf f4 	CALL 0xffa01038 <_printf_str>;
ffa0269e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900294(-7339372) */
ffa026a2:	29 91       	R1 = [P5];
ffa026a4:	00 e1 a0 02 	R0.L = 0x2a0;		/* (672)	R0=0xff9002a0(-7339360) */
ffa026a8:	ff e3 2e f5 	CALL 0xffa01104 <_printf_hex>;
ffa026ac:	01 e8 00 00 	UNLINK;
ffa026b0:	07 30       	R0 = R7;
ffa026b2:	bd 05       	(R7:7, P5:5) = [SP++];
ffa026b4:	ff e2 c2 f4 	JUMP.L 0xffa01038 <_printf_str>;

ffa026b8 <_bfin_EMAC_init>:
ffa026b8:	f3 05       	[--SP] = (R7:6, P5:3);
ffa026ba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002a0(-7339360) */
ffa026be:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa026c2:	00 e1 ac 02 	R0.L = 0x2ac;		/* (684)	R0=0xff9002ac(-7339348) */
ffa026c6:	ff e3 b9 f4 	CALL 0xffa01038 <_printf_str>;
ffa026ca:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 */
ffa026ce:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa026d0:	0a e1 40 0e 	P2.L = 0xe40;		/* (3648)	P2=0xff900e40 <_txIdx> */
ffa026d4:	16 97       	W[P2] = R6;
ffa026d6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e40 <_txIdx> */
ffa026da:	0a e1 54 0e 	P2.L = 0xe54;		/* (3668)	P2=0xff900e54 <_rxIdx> */
ffa026de:	16 97       	W[P2] = R6;
ffa026e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e54 <_rxIdx> */
ffa026e4:	0a e1 42 0e 	P2.L = 0xe42;		/* (3650)	P2=0xff900e42 <_NetIPID> */
ffa026e8:	16 97       	W[P2] = R6;
ffa026ea:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e42 <_NetIPID> */
ffa026ee:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa026f0:	0a e1 70 0e 	P2.L = 0xe70;		/* (3696)	P2=0xff900e70 <_NetSubnetMask> */
ffa026f4:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa026f6:	17 93       	[P2] = R7;
ffa026f8:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa026fc:	f0 b0       	[SP + 0xc] = R0;
ffa026fe:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02700:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02704:	ff e3 50 f8 	CALL 0xffa017a4 <_FormatIPAddress>;
ffa02708:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e70 <_NetSubnetMask> */
ffa0270c:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetOurIP> */
ffa02710:	10 93       	[P2] = R0;
ffa02712:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02714:	f0 b0       	[SP + 0xc] = R0;
ffa02716:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa0271a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0271c:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02720:	ff e3 42 f8 	CALL 0xffa017a4 <_FormatIPAddress>;
ffa02724:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e74 <_NetOurIP> */
ffa02728:	0a e1 38 0e 	P2.L = 0xe38;		/* (3640)	P2=0xff900e38 <_NetDestIP> */
ffa0272c:	10 93       	[P2] = R0;
ffa0272e:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02730:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa02732:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa02736:	f0 b0       	[SP + 0xc] = R0;
ffa02738:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa0273c:	ff e3 34 f8 	CALL 0xffa017a4 <_FormatIPAddress>;
ffa02740:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e38 <_NetDestIP> */
ffa02744:	0a e1 78 0e 	P2.L = 0xe78;		/* (3704)	P2=0xff900e78 <_NetDataDestIP> */
ffa02748:	10 93       	[P2] = R0;
ffa0274a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e78 <_NetDataDestIP> */
ffa0274e:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpState> */
ffa02752:	17 93       	[P2] = R7;
ffa02754:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpState> */
ffa02758:	0a e1 50 0f 	P2.L = 0xf50;		/* (3920)	P2=0xff900f50 <_TcpSeqClient> */
ffa0275c:	17 93       	[P2] = R7;
ffa0275e:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa02762:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f50 <_TcpSeqClient> */
ffa02766:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa0276a:	0a e1 4c 0f 	P2.L = 0xf4c;		/* (3916)	P2=0xff900f4c <_TcpSeqHost> */
ffa0276e:	10 93       	[P2] = R0;
ffa02770:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f4c <_TcpSeqHost> */
ffa02774:	0a e1 64 0f 	P2.L = 0xf64;		/* (3940)	P2=0xff900f64 <_TcpClientPort> */
ffa02778:	16 97       	W[P2] = R6;
ffa0277a:	00 e3 6b 02 	CALL 0xffa02c50 <_ARP_init>;
ffa0277e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00f64(-4190364) */
ffa02782:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02786:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa0278a:	17 93       	[P2] = R7;
ffa0278c:	00 e1 68 0e 	R0.L = 0xe68;		/* (3688)	R0=0xff900e68 <_NetOurMAC>(-7336344) */
ffa02790:	ff e3 4e ff 	CALL 0xffa0262c <_SetupMacAddr>;
ffa02794:	47 30       	R0 = FP;
ffa02796:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa02798:	ff e3 bc fe 	CALL 0xffa02510 <_SetupSystemRegs>;
ffa0279c:	80 0c       	CC = R0 < 0x0;
ffa0279e:	7a 18       	IF CC JUMP 0xffa02892 <_bfin_EMAC_init+0x1da>;
ffa027a0:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa027a4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027a6:	07 e1 58 0e 	R7.L = 0xe58;		/* (3672)	R7=0xff900e58 <_rxbuf>(-7336360) */
ffa027aa:	ff e3 61 fe 	CALL 0xffa0246c <_SetupRxBuffer>;
ffa027ae:	07 32       	P0 = R7;
ffa027b0:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa027b2:	00 93       	[P0] = R0;
ffa027b4:	17 32       	P2 = R7;
ffa027b6:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa027b8:	44 30       	R0 = P4;
ffa027ba:	ff e3 59 fe 	CALL 0xffa0246c <_SetupRxBuffer>;
ffa027be:	44 0c       	CC = P4 == 0x0;
ffa027c0:	08 32       	P1 = R0;
ffa027c2:	28 92       	[P5++] = R0;
ffa027c4:	52 18       	IF CC JUMP 0xffa02868 <_bfin_EMAC_init+0x1b0>;
ffa027c6:	07 32       	P0 = R7;
ffa027c8:	5c 0c       	CC = P4 == 0x3;
ffa027ca:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa027cc:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa027d0:	d0 b0       	[P2 + 0xc] = R0;
ffa027d2:	54 18       	IF CC JUMP 0xffa0287a <_bfin_EMAC_init+0x1c2>;
ffa027d4:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa027d6:	5c 0d       	CC = P4 <= 0x3;
ffa027d8:	ee 1f       	IF CC JUMP 0xffa027b4 <_bfin_EMAC_init+0xfc> (BP);
ffa027da:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027dc:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900df0 <_printf_temp> */
ffa027e0:	ff e3 f2 fd 	CALL 0xffa023c4 <_SetupTxBuffer>;
ffa027e4:	0b e1 44 0e 	P3.L = 0xe44;		/* (3652)	P3=0xff900e44 <_txbuf> */
ffa027e8:	18 93       	[P3] = R0;
ffa027ea:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa027ec:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa027ee:	44 30       	R0 = P4;
ffa027f0:	ff e3 ea fd 	CALL 0xffa023c4 <_SetupTxBuffer>;
ffa027f4:	44 0c       	CC = P4 == 0x0;
ffa027f6:	08 32       	P1 = R0;
ffa027f8:	28 92       	[P5++] = R0;
ffa027fa:	35 18       	IF CC JUMP 0xffa02864 <_bfin_EMAC_init+0x1ac>;
ffa027fc:	00 00       	NOP;
ffa027fe:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa02800:	5c 0c       	CC = P4 == 0x3;
ffa02802:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa02806:	d0 b0       	[P2 + 0xc] = R0;
ffa02808:	32 18       	IF CC JUMP 0xffa0286c <_bfin_EMAC_init+0x1b4>;
ffa0280a:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa0280c:	5c 0d       	CC = P4 <= 0x3;
ffa0280e:	ef 1f       	IF CC JUMP 0xffa027ec <_bfin_EMAC_init+0x134> (BP);
ffa02810:	17 32       	P2 = R7;
ffa02812:	51 91       	P1 = [P2];
ffa02814:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa02818:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa0281c:	51 93       	[P2] = P1;
ffa0281e:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa02820:	42 6c       	P2 += 0x8;		/* (  8) */
ffa02822:	10 97       	W[P2] = R0;
ffa02824:	ff e3 e8 f7 	CALL 0xffa017f4 <_PollMdcDone>;
ffa02828:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0282a:	f0 b9       	R0 = [FP -0x4];
ffa0282c:	d1 4f       	R1 <<= 0x1a;
ffa0282e:	08 08       	CC = R0 == R1;
ffa02830:	2c 18       	IF CC JUMP 0xffa02888 <_bfin_EMAC_init+0x1d0>;
ffa02832:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02836:	01 30       	R0 = R1;
ffa02838:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa0283c:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02840:	10 93       	[P2] = R0;
ffa02842:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02846:	00 e1 bc 02 	R0.L = 0x2bc;		/* (700)	R0=0xff9002bc(-7339332) */
ffa0284a:	ff e3 5d f4 	CALL 0xffa01104 <_printf_hex>;
ffa0284e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002bc(-7339332) */
ffa02852:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02856:	ff e3 f1 f3 	CALL 0xffa01038 <_printf_str>;
ffa0285a:	01 e8 00 00 	UNLINK;
ffa0285e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02860:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02862:	10 00       	RTS;
ffa02864:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02866:	c4 2f       	JUMP.S 0xffa027ee <_bfin_EMAC_init+0x136>;
ffa02868:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa0286a:	a7 2f       	JUMP.S 0xffa027b8 <_bfin_EMAC_init+0x100>;
ffa0286c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa02870:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_txbuf> */
ffa02874:	10 91       	R0 = [P2];
ffa02876:	c8 b0       	[P1 + 0xc] = R0;
ffa02878:	cc 2f       	JUMP.S 0xffa02810 <_bfin_EMAC_init+0x158>;
ffa0287a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_txbuf> */
ffa0287e:	0a e1 58 0e 	P2.L = 0xe58;		/* (3672)	P2=0xff900e58 <_rxbuf> */
ffa02882:	10 91       	R0 = [P2];
ffa02884:	c8 b0       	[P1 + 0xc] = R0;
ffa02886:	aa 2f       	JUMP.S 0xffa027da <_bfin_EMAC_init+0x122>;
ffa02888:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa0288c:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa0288e:	01 30       	R0 = R1;
ffa02890:	d4 2f       	JUMP.S 0xffa02838 <_bfin_EMAC_init+0x180>;
ffa02892:	01 e8 00 00 	UNLINK;
ffa02896:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02898:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0289a:	10 00       	RTS;

ffa0289c <_bfin_EMAC_recv_poll>:
ffa0289c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0289e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa028a2:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa028a6:	0d e1 58 0e 	P5.L = 0xe58;		/* (3672)	P5=0xff900e58 <_rxbuf> */
ffa028aa:	0c e1 54 0e 	P4.L = 0xe54;		/* (3668)	P4=0xff900e54 <_rxIdx> */
ffa028ae:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa028b2:	28 30       	R5 = R0;
ffa028b4:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa028b6:	75 30       	R6 = P5;
ffa028b8:	5c 32       	P3 = P4;
ffa028ba:	06 20       	JUMP.S 0xffa028c6 <_bfin_EMAC_recv_poll+0x2a>;
ffa028bc:	0f 64       	R7 += 0x1;		/* (  1) */
ffa028be:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa028c2:	07 08       	CC = R7 == R0;
ffa028c4:	0c 18       	IF CC JUMP 0xffa028dc <_bfin_EMAC_recv_poll+0x40>;
ffa028c6:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa028ca:	ff e3 4d f7 	CALL 0xffa01764 <_udelay>;
ffa028ce:	20 95       	R0 = W[P4] (Z);
ffa028d0:	10 32       	P2 = R0;
ffa028d2:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa028d4:	52 91       	P2 = [P2];
ffa028d6:	90 a2       	R0 = [P2 + 0x28];
ffa028d8:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa028da:	f1 1f       	IF CC JUMP 0xffa028bc <_bfin_EMAC_recv_poll+0x20> (BP);
ffa028dc:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa028e0:	91 a2       	R1 = [P2 + 0x28];
ffa028e2:	41 54       	R1 = R1 & R0;
ffa028e4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa028e6:	01 09       	CC = R1 <= R0;
ffa028e8:	07 10       	IF !CC JUMP 0xffa028f6 <_bfin_EMAC_recv_poll+0x5a>;
ffa028ea:	01 e8 00 00 	UNLINK;
ffa028ee:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa028f0:	07 30       	R0 = R7;
ffa028f2:	a3 05       	(R7:4, P5:3) = [SP++];
ffa028f4:	10 00       	RTS;
ffa028f6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa028f8:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa028fc:	90 b2 00 00 
ffa02900:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02902:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02906:	0f 30       	R1 = R7;
ffa02908:	00 e1 c8 02 	R0.L = 0x2c8;		/* (712)	R0=0xff9002c8(-7339320) */
ffa0290c:	ff e3 58 f4 	CALL 0xffa011bc <_printf_int>;
ffa02910:	18 95       	R0 = W[P3] (Z);
ffa02912:	10 32       	P2 = R0;
ffa02914:	0e 32       	P1 = R6;
ffa02916:	0f 30       	R1 = R7;
ffa02918:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0291a:	52 91       	P2 = [P2];
ffa0291c:	90 a1       	R0 = [P2 + 0x18];
ffa0291e:	15 32       	P2 = R5;
ffa02920:	10 93       	[P2] = R0;
ffa02922:	00 e3 4b 02 	CALL 0xffa02db8 <_ARP_rx>;
ffa02926:	00 0c       	CC = R0 == 0x0;
ffa02928:	1f 18       	IF CC JUMP 0xffa02966 <_bfin_EMAC_recv_poll+0xca>;
ffa0292a:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa0292c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02930:	20 95       	R0 = W[P4] (Z);
ffa02932:	10 32       	P2 = R0;
ffa02934:	61 95       	R1 = W[P4] (X);
ffa02936:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02938:	09 e1 54 0e 	P1.L = 0xe54;		/* (3668)	P1=0xff900e54 <_rxIdx> */
ffa0293c:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa0293e:	52 91       	P2 = [P2];
ffa02940:	90 b2       	[P2 + 0x28] = R0;
ffa02942:	c8 42       	R0 = R1.L (Z);
ffa02944:	10 0d       	CC = R0 <= 0x2;
ffa02946:	08 1c       	IF CC JUMP 0xffa02956 <_bfin_EMAC_recv_poll+0xba> (BP);
ffa02948:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0294a:	08 97       	W[P1] = R0;
ffa0294c:	01 e8 00 00 	UNLINK;
ffa02950:	07 30       	R0 = R7;
ffa02952:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02954:	10 00       	RTS;
ffa02956:	01 30       	R0 = R1;
ffa02958:	08 64       	R0 += 0x1;		/* (  1) */
ffa0295a:	08 97       	W[P1] = R0;
ffa0295c:	01 e8 00 00 	UNLINK;
ffa02960:	07 30       	R0 = R7;
ffa02962:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02964:	10 00       	RTS;
ffa02966:	0d 32       	P1 = R5;
ffa02968:	0f 30       	R1 = R7;
ffa0296a:	08 91       	R0 = [P1];
ffa0296c:	ff e3 8e fc 	CALL 0xffa02288 <_icmp_rx>;
ffa02970:	00 0c       	CC = R0 == 0x0;
ffa02972:	dd 1f       	IF CC JUMP 0xffa0292c <_bfin_EMAC_recv_poll+0x90> (BP);
ffa02974:	db 2f       	JUMP.S 0xffa0292a <_bfin_EMAC_recv_poll+0x8e>;
	...

ffa02978 <_DHCP_rx>:
ffa02978:	ed 05       	[--SP] = (R7:5, P5:5);
ffa0297a:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0297e:	6f 30       	R5 = FP;
ffa02980:	e5 67       	R5 += -0x4;		/* ( -4) */
ffa02982:	01 20       	JUMP.S 0xffa02984 <_DHCP_rx+0xc>;
ffa02984:	05 30       	R0 = R5;
ffa02986:	ff e3 8b ff 	CALL 0xffa0289c <_bfin_EMAC_recv_poll>;
ffa0298a:	38 30       	R7 = R0;
ffa0298c:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa02990:	87 51       	R6 = R7 + R0;
ffa02992:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa02996:	00 e1 08 03 	R0.L = 0x308;		/* (776)	R0=0xff900308(-7339256) */
ffa0299a:	0e 30       	R1 = R6;
ffa0299c:	ff e3 10 f4 	CALL 0xffa011bc <_printf_int>;
ffa029a0:	20 e1 1b 01 	R0 = 0x11b (X);		/*		R0=0x11b(283) */
ffa029a4:	07 09       	CC = R7 <= R0;
ffa029a6:	fd b9       	P5 = [FP -0x4];
ffa029a8:	0c 18       	IF CC JUMP 0xffa029c0 <_DHCP_rx+0x48>;
ffa029aa:	00 00       	NOP;
ffa029ac:	00 00       	NOP;
ffa029ae:	00 00       	NOP;
ffa029b0:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa029b2:	ff e3 a3 f7 	CALL 0xffa018f8 <_htons>;
ffa029b6:	c0 42       	R0 = R0.L (Z);
ffa029b8:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa029bc:	08 08       	CC = R0 == R1;
ffa029be:	08 18       	IF CC JUMP 0xffa029ce <_DHCP_rx+0x56>;
ffa029c0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011b(-7339749) */
ffa029c4:	00 e1 ec 02 	R0.L = 0x2ec;		/* (748)	R0=0xff9002ec(-7339284) */
ffa029c8:	ff e3 38 f3 	CALL 0xffa01038 <_printf_str>;
ffa029cc:	dc 2f       	JUMP.S 0xffa02984 <_DHCP_rx+0xc>;
ffa029ce:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa029d2:	ff e3 93 f7 	CALL 0xffa018f8 <_htons>;
ffa029d6:	c0 42       	R0 = R0.L (Z);
ffa029d8:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa029dc:	01 08       	CC = R1 == R0;
ffa029de:	d3 17       	IF !CC JUMP 0xffa02984 <_DHCP_rx+0xc> (BP);
ffa029e0:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa029e4:	ff e3 8a f7 	CALL 0xffa018f8 <_htons>;
ffa029e8:	c0 42       	R0 = R0.L (Z);
ffa029ea:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa029ee:	01 08       	CC = R1 == R0;
ffa029f0:	ca 17       	IF !CC JUMP 0xffa02984 <_DHCP_rx+0xc> (BP);
ffa029f2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e58(-4190632) */
ffa029f6:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa029fa:	11 91       	R1 = [P2];
ffa029fc:	28 a3       	R0 = [P5 + 0x30];
ffa029fe:	08 08       	CC = R0 == R1;
ffa02a00:	c2 17       	IF !CC JUMP 0xffa02984 <_DHCP_rx+0xc> (BP);
ffa02a02:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa02a06:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa02a0a:	ff e3 83 f7 	CALL 0xffa01910 <_htonl>;
ffa02a0e:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa02a12:	01 08       	CC = R1 == R0;
ffa02a14:	b8 17       	IF !CC JUMP 0xffa02984 <_DHCP_rx+0xc> (BP);
ffa02a16:	4d 30       	R1 = P5;
ffa02a18:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa02a1c:	01 50       	R0 = R1 + R0;
ffa02a1e:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa02a22:	f0 bb 00 00 
ffa02a26:	ff e3 59 f8 	CALL 0xffa01ad8 <_DHCP_parse>;
ffa02a2a:	e9 a3       	R1 = [P5 + 0x3c];
ffa02a2c:	01 0c       	CC = R1 == 0x0;
ffa02a2e:	12 1c       	IF CC JUMP 0xffa02a52 <_DHCP_rx+0xda> (BP);
ffa02a30:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa02a34:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetOurIP> */
ffa02a38:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa02a3c:	11 93       	[P2] = R1;
ffa02a3e:	00 e1 dc 02 	R0.L = 0x2dc;		/* (732)	R0=0xff9002dc(-7339300) */
ffa02a42:	ff e3 5f f4 	CALL 0xffa01300 <_printf_ip>;
ffa02a46:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002dc(-7339300) */
ffa02a4a:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02a4e:	ff e3 f5 f2 	CALL 0xffa01038 <_printf_str>;
ffa02a52:	01 e8 00 00 	UNLINK;
ffa02a56:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02a58:	ad 05       	(R7:5, P5:5) = [SP++];
ffa02a5a:	10 00       	RTS;

ffa02a5c <_DHCP_req>:
ffa02a5c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02a5e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e58 <_rxbuf> */
ffa02a62:	0d e1 3c 0e 	P5.L = 0xe3c;		/* (3644)	P5=0xff900e3c <_NetDHCPserv> */
ffa02a66:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02a68:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02a6c:	28 93       	[P5] = R0;
ffa02a6e:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa02a70:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa02a74:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02a76:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa02a7a:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa02a7e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02a80:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02a84:	7f 30       	R7 = FP;
ffa02a86:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa02a8a:	00 e1 1c 03 	R0.L = 0x31c;		/* (796)	R0=0xff90031c(-7339236) */
ffa02a8e:	a7 67       	R7 += -0xc;		/* (-12) */
ffa02a90:	ff e3 d4 f2 	CALL 0xffa01038 <_printf_str>;
ffa02a94:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa02a98:	2a 91 00 00 
ffa02a9c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02a9e:	ff e3 45 f9 	CALL 0xffa01d28 <_DHCP_tx>;
ffa02aa2:	ff e3 6b ff 	CALL 0xffa02978 <_DHCP_rx>;
ffa02aa6:	29 91       	R1 = [P5];
ffa02aa8:	39 0c       	CC = R1 == -0x1;
ffa02aaa:	43 18       	IF CC JUMP 0xffa02b30 <_DHCP_req+0xd4>;
ffa02aac:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e74 <_NetOurIP> */
ffa02ab0:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetOurIP> */
ffa02ab4:	10 91       	R0 = [P2];
ffa02ab6:	00 0c       	CC = R0 == 0x0;
ffa02ab8:	08 18       	IF CC JUMP 0xffa02ac8 <_DHCP_req+0x6c>;
ffa02aba:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e74 <_NetOurIP> */
ffa02abe:	0a e1 70 0e 	P2.L = 0xe70;		/* (3696)	P2=0xff900e70 <_NetSubnetMask> */
ffa02ac2:	10 91       	R0 = [P2];
ffa02ac4:	00 0c       	CC = R0 == 0x0;
ffa02ac6:	30 10       	IF !CC JUMP 0xffa02b26 <_DHCP_req+0xca>;
ffa02ac8:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa02aca:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa02ace:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ad0:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa02ad4:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02ad6:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa02ada:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02adc:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02ae0:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02ae2:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa02ae6:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa02aea:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa02aee:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa02af2:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa02af6:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa02afa:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa02afe:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02b00:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa02b04:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa02b08:	00 e1 4c 03 	R0.L = 0x34c;		/* (844)	R0=0xff90034c(-7339188) */
ffa02b0c:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa02b10:	ff e3 94 f2 	CALL 0xffa01038 <_printf_str>;
ffa02b14:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02b16:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa02b1a:	2a 91 00 00 
ffa02b1e:	ff e3 05 f9 	CALL 0xffa01d28 <_DHCP_tx>;
ffa02b22:	ff e3 2b ff 	CALL 0xffa02978 <_DHCP_rx>;
ffa02b26:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b28:	01 e8 00 00 	UNLINK;
ffa02b2c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02b2e:	10 00       	RTS;
ffa02b30:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02b34:	00 e1 30 03 	R0.L = 0x330;		/* (816)	R0=0xff900330(-7339216) */
ffa02b38:	ff e3 80 f2 	CALL 0xffa01038 <_printf_str>;
ffa02b3c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02b3e:	f5 2f       	JUMP.S 0xffa02b28 <_DHCP_req+0xcc>;

ffa02b40 <_bfin_EMAC_recv>:
ffa02b40:	eb 05       	[--SP] = (R7:5, P5:3);
ffa02b42:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e54 <_rxIdx> */
ffa02b46:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000 <_l1_data_a>(-7340032) */
ffa02b4a:	0c e1 54 0e 	P4.L = 0xe54;		/* (3668)	P4=0xff900e54 <_rxIdx> */
ffa02b4e:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00e44(-4190652) */
ffa02b52:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02b56:	28 32       	P5 = R0;
ffa02b58:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02b5a:	05 e1 58 0e 	R5.L = 0xe58;		/* (3672)	R5=0xff900e58 <_rxbuf>(-7336360) */
ffa02b5e:	74 30       	R6 = P4;
ffa02b60:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa02b64:	0e 32       	P1 = R6;
ffa02b66:	08 95       	R0 = W[P1] (Z);
ffa02b68:	10 32       	P2 = R0;
ffa02b6a:	0d 32       	P1 = R5;
ffa02b6c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02b6e:	52 91       	P2 = [P2];
ffa02b70:	90 a2       	R0 = [P2 + 0x28];
ffa02b72:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02b74:	46 18       	IF CC JUMP 0xffa02c00 <_bfin_EMAC_recv+0xc0>;
ffa02b76:	00 00       	NOP;
ffa02b78:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02b7a:	a0 4f       	R0 <<= 0x14;
ffa02b7c:	91 a2       	R1 = [P2 + 0x28];
ffa02b7e:	81 54       	R2 = R1 & R0;
ffa02b80:	02 0c       	CC = R2 == 0x0;
ffa02b82:	45 10       	IF !CC JUMP 0xffa02c0c <_bfin_EMAC_recv+0xcc>;
ffa02b84:	00 00       	NOP;
ffa02b86:	00 00       	NOP;
ffa02b88:	00 00       	NOP;
ffa02b8a:	90 a2       	R0 = [P2 + 0x28];
ffa02b8c:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa02b8e:	4a 18       	IF CC JUMP 0xffa02c22 <_bfin_EMAC_recv+0xe2>;
ffa02b90:	00 00       	NOP;
ffa02b92:	00 00       	NOP;
ffa02b94:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02b98:	91 a2       	R1 = [P2 + 0x28];
ffa02b9a:	c1 55       	R7 = R1 & R0;
ffa02b9c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02b9e:	07 09       	CC = R7 <= R0;
ffa02ba0:	4c 18       	IF CC JUMP 0xffa02c38 <_bfin_EMAC_recv+0xf8>;
ffa02ba2:	00 00       	NOP;
ffa02ba4:	00 00       	NOP;
ffa02ba6:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02ba8:	90 a1       	R0 = [P2 + 0x18];
ffa02baa:	59 95       	R1 = W[P3] (X);
ffa02bac:	28 93       	[P5] = R0;
ffa02bae:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02bb0:	08 56       	R0 = R0 | R1;
ffa02bb2:	18 97       	W[P3] = R0;
ffa02bb4:	61 95       	R1 = W[P4] (X);
ffa02bb6:	c8 42       	R0 = R1.L (Z);
ffa02bb8:	10 0d       	CC = R0 <= 0x2;
ffa02bba:	92 b2       	[P2 + 0x28] = R2;
ffa02bbc:	1e 1c       	IF CC JUMP 0xffa02bf8 <_bfin_EMAC_recv+0xb8> (BP);
ffa02bbe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02bc0:	20 97       	W[P4] = R0;
ffa02bc2:	28 91       	R0 = [P5];
ffa02bc4:	0f 30       	R1 = R7;
ffa02bc6:	00 e3 f9 00 	CALL 0xffa02db8 <_ARP_rx>;
ffa02bca:	00 0c       	CC = R0 == 0x0;
ffa02bcc:	03 18       	IF CC JUMP 0xffa02bd2 <_bfin_EMAC_recv+0x92>;
ffa02bce:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02bd0:	ca 2f       	JUMP.S 0xffa02b64 <_bfin_EMAC_recv+0x24>;
ffa02bd2:	28 91       	R0 = [P5];
ffa02bd4:	0f 30       	R1 = R7;
ffa02bd6:	ff e3 59 fb 	CALL 0xffa02288 <_icmp_rx>;
ffa02bda:	00 0c       	CC = R0 == 0x0;
ffa02bdc:	f9 17       	IF !CC JUMP 0xffa02bce <_bfin_EMAC_recv+0x8e> (BP);
ffa02bde:	28 91       	R0 = [P5];
ffa02be0:	0f 30       	R1 = R7;
ffa02be2:	00 e3 49 04 	CALL 0xffa03474 <_tcp_rx>;
ffa02be6:	00 0c       	CC = R0 == 0x0;
ffa02be8:	f3 17       	IF !CC JUMP 0xffa02bce <_bfin_EMAC_recv+0x8e> (BP);
ffa02bea:	07 0d       	CC = R7 <= 0x0;
ffa02bec:	bc 1f       	IF CC JUMP 0xffa02b64 <_bfin_EMAC_recv+0x24> (BP);
ffa02bee:	01 e8 00 00 	UNLINK;
ffa02bf2:	07 30       	R0 = R7;
ffa02bf4:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02bf6:	10 00       	RTS;
ffa02bf8:	01 30       	R0 = R1;
ffa02bfa:	08 64       	R0 += 0x1;		/* (  1) */
ffa02bfc:	20 97       	W[P4] = R0;
ffa02bfe:	e2 2f       	JUMP.S 0xffa02bc2 <_bfin_EMAC_recv+0x82>;
ffa02c00:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02c02:	01 e8 00 00 	UNLINK;
ffa02c06:	07 30       	R0 = R7;
ffa02c08:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02c0a:	10 00       	RTS;
ffa02c0c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02c10:	00 e1 60 03 	R0.L = 0x360;		/* (864)	R0=0xff900360(-7339168) */
ffa02c14:	ff e3 12 f2 	CALL 0xffa01038 <_printf_str>;
ffa02c18:	01 e8 00 00 	UNLINK;
ffa02c1c:	07 30       	R0 = R7;
ffa02c1e:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02c20:	10 00       	RTS;
ffa02c22:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900360(-7339168) */
ffa02c26:	00 e1 7c 03 	R0.L = 0x37c;		/* (892)	R0=0xff90037c(-7339140) */
ffa02c2a:	ff e3 07 f2 	CALL 0xffa01038 <_printf_str>;
ffa02c2e:	01 e8 00 00 	UNLINK;
ffa02c32:	07 30       	R0 = R7;
ffa02c34:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02c36:	10 00       	RTS;
ffa02c38:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90037c(-7339140) */
ffa02c3c:	00 e1 90 03 	R0.L = 0x390;		/* (912)	R0=0xff900390(-7339120) */
ffa02c40:	ff e3 fc f1 	CALL 0xffa01038 <_printf_str>;
ffa02c44:	01 e8 00 00 	UNLINK;
ffa02c48:	07 30       	R0 = R7;
ffa02c4a:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02c4c:	10 00       	RTS;
	...

ffa02c50 <_ARP_init>:
ffa02c50:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e70 <_NetSubnetMask> */
ffa02c54:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02c58:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetArpLut> */
ffa02c5c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02c5e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02c60:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02c62:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa02c64:	b2 e0 12 10 	LSETUP(0xffa02c68 <_ARP_init+0x18>, 0xffa02c88 <_ARP_init+0x38>) LC1 = P1;
ffa02c68:	11 93       	[P2] = R1;
ffa02c6a:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02c6e:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02c72:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa02c76:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa02c7a:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02c7e:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02c82:	52 b5       	W[P2 + 0xa] = R2;
ffa02c84:	d1 b0       	[P2 + 0xc] = R1;
ffa02c86:	11 b1       	[P2 + 0x10] = R1;
ffa02c88:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa02c8a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e80 <_NetArpLut> */
ffa02c8e:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02c92:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetArpLut_age> */
ffa02c96:	10 97       	W[P2] = R0;
ffa02c98:	01 e8 00 00 	UNLINK;
ffa02c9c:	10 00       	RTS;
	...

ffa02ca0 <_ARP_lut_find>:
ffa02ca0:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e40 <_txIdx> */
ffa02ca4:	08 e1 80 0e 	P0.L = 0xe80;		/* (3712)	P0=0xff900e80 <_NetArpLut> */
ffa02ca8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02cac:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02cae:	48 32       	P1 = P0;
ffa02cb0:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02cb2:	b2 e0 06 20 	LSETUP(0xffa02cb6 <_ARP_lut_find+0x16>, 0xffa02cbe <_ARP_lut_find+0x1e>) LC1 = P2;
ffa02cb6:	08 91       	R0 = [P1];
ffa02cb8:	00 0c       	CC = R0 == 0x0;
ffa02cba:	14 18       	IF CC JUMP 0xffa02ce2 <_ARP_lut_find+0x42>;
ffa02cbc:	0a 64       	R2 += 0x1;		/* (  1) */
ffa02cbe:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02cc0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa02cc4:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02cc6:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02cc8:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa02cca:	09 e1 9e 0e 	P1.L = 0xe9e;		/* (3742)	P1=0xff900e9e */
ffa02cce:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa02cd0:	b2 e0 08 20 	LSETUP(0xffa02cd4 <_ARP_lut_find+0x34>, 0xffa02ce0 <_ARP_lut_find+0x40>) LC1 = P2;
ffa02cd4:	08 95       	R0 = W[P1] (Z);
ffa02cd6:	03 09       	CC = R3 <= R0;
ffa02cd8:	03 18       	IF CC JUMP 0xffa02cde <_ARP_lut_find+0x3e>;
ffa02cda:	11 30       	R2 = R1;
ffa02cdc:	18 30       	R3 = R0;
ffa02cde:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02ce0:	09 64       	R1 += 0x1;		/* (  1) */
ffa02ce2:	02 30       	R0 = R2;
ffa02ce4:	01 e8 00 00 	UNLINK;
ffa02ce8:	10 00       	RTS;
	...

ffa02cec <_ARP_lut_add>:
ffa02cec:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02cee:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e3c <_NetDHCPserv> */
ffa02cf2:	0d e1 80 0e 	P5.L = 0xe80;		/* (3712)	P5=0xff900e80 <_NetArpLut> */
ffa02cf6:	31 30       	R6 = R1;
ffa02cf8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02cfc:	38 30       	R7 = R0;
ffa02cfe:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02d00:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa02d02:	4d 32       	P1 = P5;
ffa02d04:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02d06:	00 00       	NOP;
ffa02d08:	08 91       	R0 = [P1];
ffa02d0a:	07 08       	CC = R7 == R0;
ffa02d0c:	11 07       	IF CC R2 = R1;
ffa02d0e:	09 64       	R1 += 0x1;		/* (  1) */
ffa02d10:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa02d12:	42 0c       	CC = P2 == 0x0;
ffa02d14:	23 10       	IF !CC JUMP 0xffa02d5a <_ARP_lut_add+0x6e>;
ffa02d16:	82 0c       	CC = R2 < 0x0;
ffa02d18:	25 18       	IF CC JUMP 0xffa02d62 <_ARP_lut_add+0x76>;
ffa02d1a:	82 c6 12 82 	R1 = R2 << 0x2;
ffa02d1e:	0a 32       	P1 = R2;
ffa02d20:	11 32       	P2 = R1;
ffa02d22:	06 32       	P0 = R6;
ffa02d24:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa02d26:	6a 5a       	P1 = P2 + P5;
ffa02d28:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02d2a:	0f 93       	[P1] = R7;
ffa02d2c:	aa 5a       	P2 = P2 + P5;
ffa02d2e:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02d30:	b2 e0 03 10 	LSETUP(0xffa02d34 <_ARP_lut_add+0x48>, 0xffa02d36 <_ARP_lut_add+0x4a>) LC1 = P1;
ffa02d34:	40 98       	R0 = B[P0++] (X);
ffa02d36:	10 9a       	B[P2++] = R0;
ffa02d38:	51 41       	R1 = (R1 + R2) << 0x2;
ffa02d3a:	09 32       	P1 = R1;
ffa02d3c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa02d40:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetArpLut_age> */
ffa02d44:	50 95       	R0 = W[P2] (X);
ffa02d46:	08 64       	R0 += 0x1;		/* (  1) */
ffa02d48:	10 97       	W[P2] = R0;
ffa02d4a:	a9 5a       	P2 = P1 + P5;
ffa02d4c:	50 b5       	W[P2 + 0xa] = R0;
ffa02d4e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d50:	10 b1       	[P2 + 0x10] = R0;
ffa02d52:	01 e8 00 00 	UNLINK;
ffa02d56:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02d58:	10 00       	RTS;
ffa02d5a:	82 0c       	CC = R2 < 0x0;
ffa02d5c:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02d5e:	d4 1f       	IF CC JUMP 0xffa02d06 <_ARP_lut_add+0x1a> (BP);
ffa02d60:	dd 2f       	JUMP.S 0xffa02d1a <_ARP_lut_add+0x2e>;
ffa02d62:	ff e3 9f ff 	CALL 0xffa02ca0 <_ARP_lut_find>;
ffa02d66:	10 30       	R2 = R0;
ffa02d68:	d9 2f       	JUMP.S 0xffa02d1a <_ARP_lut_add+0x2e>;
	...

ffa02d6c <_ARP_lu>:
ffa02d6c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02d70:	c4 04       	[--SP] = (P5:4);
ffa02d72:	09 e1 80 0e 	P1.L = 0xe80;		/* (3712)	P1=0xff900e80 <_NetArpLut> */
ffa02d76:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02d7a:	10 30       	R2 = R0;
ffa02d7c:	29 32       	P5 = R1;
ffa02d7e:	61 32       	P4 = P1;
ffa02d80:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa02d82:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02d84:	b2 e0 06 20 	LSETUP(0xffa02d88 <_ARP_lu+0x1c>, 0xffa02d90 <_ARP_lu+0x24>) LC1 = P2;
ffa02d88:	08 91       	R0 = [P1];
ffa02d8a:	10 08       	CC = R0 == R2;
ffa02d8c:	08 18       	IF CC JUMP 0xffa02d9c <_ARP_lu+0x30>;
ffa02d8e:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa02d90:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02d92:	01 e8 00 00 	UNLINK;
ffa02d96:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02d98:	84 04       	(P5:4) = [SP++];
ffa02d9a:	10 00       	RTS;
ffa02d9c:	08 a1       	R0 = [P1 + 0x10];
ffa02d9e:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02da0:	f7 1f       	IF CC JUMP 0xffa02d8e <_ARP_lu+0x22> (BP);
ffa02da2:	60 5a       	P1 = P0 + P4;
ffa02da4:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa02da6:	b2 e0 03 20 	LSETUP(0xffa02daa <_ARP_lu+0x3e>, 0xffa02dac <_ARP_lu+0x40>) LC1 = P2;
ffa02daa:	48 98       	R0 = B[P1++] (X);
ffa02dac:	28 9a       	B[P5++] = R0;
ffa02dae:	01 e8 00 00 	UNLINK;
ffa02db2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02db4:	84 04       	(P5:4) = [SP++];
ffa02db6:	10 00       	RTS;

ffa02db8 <_ARP_rx>:
ffa02db8:	fb 05       	[--SP] = (R7:7, P5:3);
ffa02dba:	20 32       	P4 = R0;
ffa02dbc:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02dc0:	39 30       	R7 = R1;
ffa02dc2:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa02dc4:	ff e3 9a f5 	CALL 0xffa018f8 <_htons>;
ffa02dc8:	c0 42       	R0 = R0.L (Z);
ffa02dca:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa02dce:	08 08       	CC = R0 == R1;
ffa02dd0:	06 18       	IF CC JUMP 0xffa02ddc <_ARP_rx+0x24>;
ffa02dd2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02dd4:	01 e8 00 00 	UNLINK;
ffa02dd8:	bb 05       	(R7:7, P5:3) = [SP++];
ffa02dda:	10 00       	RTS;
ffa02ddc:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02dde:	07 0a       	CC = R7 <= R0 (IU);
ffa02de0:	f9 1f       	IF CC JUMP 0xffa02dd2 <_ARP_rx+0x1a> (BP);
ffa02de2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02de4:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02de6:	ff e3 89 f5 	CALL 0xffa018f8 <_htons>;
ffa02dea:	c0 42       	R0 = R0.L (Z);
ffa02dec:	07 08       	CC = R7 == R0;
ffa02dee:	f2 17       	IF !CC JUMP 0xffa02dd2 <_ARP_rx+0x1a> (BP);
ffa02df0:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02df4:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02df6:	ff e3 81 f5 	CALL 0xffa018f8 <_htons>;
ffa02dfa:	c0 42       	R0 = R0.L (Z);
ffa02dfc:	07 08       	CC = R7 == R0;
ffa02dfe:	ea 17       	IF !CC JUMP 0xffa02dd2 <_ARP_rx+0x1a> (BP);
ffa02e00:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02e02:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02e06:	08 08       	CC = R0 == R1;
ffa02e08:	e5 17       	IF !CC JUMP 0xffa02dd2 <_ARP_rx+0x1a> (BP);
ffa02e0a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02e0c:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02e0e:	ff e3 75 f5 	CALL 0xffa018f8 <_htons>;
ffa02e12:	c0 42       	R0 = R0.L (Z);
ffa02e14:	07 08       	CC = R7 == R0;
ffa02e16:	0c 14       	IF !CC JUMP 0xffa02e2e <_ARP_rx+0x76> (BP);
ffa02e18:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa02e1c:	0a e1 68 0e 	P2.L = 0xe68;		/* (3688)	P2=0xff900e68 <_NetOurMAC> */
ffa02e20:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa02e24:	10 99       	R0 = B[P2] (Z);
ffa02e26:	01 08       	CC = R1 == R0;
ffa02e28:	ae 18       	IF CC JUMP 0xffa02f84 <_ARP_rx+0x1cc>;
ffa02e2a:	00 00       	NOP;
ffa02e2c:	00 00       	NOP;
ffa02e2e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e30:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02e32:	ff e3 63 f5 	CALL 0xffa018f8 <_htons>;
ffa02e36:	c0 42       	R0 = R0.L (Z);
ffa02e38:	07 08       	CC = R7 == R0;
ffa02e3a:	cc 17       	IF !CC JUMP 0xffa02dd2 <_ARP_rx+0x1a> (BP);
ffa02e3c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02e40:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02e42:	ff e3 5b f5 	CALL 0xffa018f8 <_htons>;
ffa02e46:	c0 42       	R0 = R0.L (Z);
ffa02e48:	07 08       	CC = R7 == R0;
ffa02e4a:	c4 17       	IF !CC JUMP 0xffa02dd2 <_ARP_rx+0x1a> (BP);
ffa02e4c:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02e4e:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02e52:	08 08       	CC = R0 == R1;
ffa02e54:	bf 17       	IF !CC JUMP 0xffa02dd2 <_ARP_rx+0x1a> (BP);
ffa02e56:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e58:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02e5a:	ff e3 4f f5 	CALL 0xffa018f8 <_htons>;
ffa02e5e:	c0 42       	R0 = R0.L (Z);
ffa02e60:	07 08       	CC = R7 == R0;
ffa02e62:	b8 17       	IF !CC JUMP 0xffa02dd2 <_ARP_rx+0x1a> (BP);
ffa02e64:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa02e68:	07 e1 74 0e 	R7.L = 0xe74;		/* (3700)	R7=0xff900e74 <_NetOurIP>(-7336332) */
ffa02e6c:	17 32       	P2 = R7;
ffa02e6e:	a1 a2       	R1 = [P4 + 0x28];
ffa02e70:	10 91       	R0 = [P2];
ffa02e72:	01 08       	CC = R1 == R0;
ffa02e74:	af 17       	IF !CC JUMP 0xffa02dd2 <_ARP_rx+0x1a> (BP);
ffa02e76:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e68 <_NetOurMAC> */
ffa02e7a:	0a e1 40 0e 	P2.L = 0xe40;		/* (3648)	P2=0xff900e40 <_txIdx> */
ffa02e7e:	10 95       	R0 = W[P2] (Z);
ffa02e80:	10 32       	P2 = R0;
ffa02e82:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e80 <_NetArpLut> */
ffa02e86:	09 e1 44 0e 	P1.L = 0xe44;		/* (3652)	P1=0xff900e44 <_txbuf> */
ffa02e8a:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa02e8c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e80 <_NetArpLut> */
ffa02e90:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02e92:	52 91       	P2 = [P2];
ffa02e94:	0d e1 68 0e 	P5.L = 0xe68;		/* (3688)	P5=0xff900e68 <_NetOurMAC> */
ffa02e98:	93 ad       	P3 = [P2 + 0x18];
ffa02e9a:	18 97       	W[P3] = R0;
ffa02e9c:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa02ea0:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa02ea4:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa02ea8:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa02eac:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa02eb0:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa02eb4:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa02eb8:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa02ebc:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa02ec0:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa02ec4:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa02ec8:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa02ecc:	68 99       	R0 = B[P5] (X);
ffa02ece:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa02ed2:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02ed6:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa02eda:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02ede:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa02ee2:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02ee6:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa02eea:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02eee:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa02ef2:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02ef6:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa02efa:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02efe:	ff e3 fd f4 	CALL 0xffa018f8 <_htons>;
ffa02f02:	d8 b5       	W[P3 + 0xe] = R0;
ffa02f04:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f06:	ff e3 f9 f4 	CALL 0xffa018f8 <_htons>;
ffa02f0a:	18 b6       	W[P3 + 0x10] = R0;
ffa02f0c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02f10:	ff e3 f4 f4 	CALL 0xffa018f8 <_htons>;
ffa02f14:	58 b6       	W[P3 + 0x12] = R0;
ffa02f16:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02f18:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa02f1c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02f1e:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa02f22:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02f24:	ff e3 ea f4 	CALL 0xffa018f8 <_htons>;
ffa02f28:	44 32       	P0 = P4;
ffa02f2a:	d8 b6       	W[P3 + 0x16] = R0;
ffa02f2c:	53 32       	P2 = P3;
ffa02f2e:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa02f30:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02f32:	b2 e0 08 10 	LSETUP(0xffa02f36 <_ARP_rx+0x17e>, 0xffa02f42 <_ARP_rx+0x18a>) LC1 = P1;
ffa02f36:	68 98       	R0 = B[P5++] (X);
ffa02f38:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa02f3c:	40 98       	R0 = B[P0++] (X);
ffa02f3e:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa02f42:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02f44:	17 32       	P2 = R7;
ffa02f46:	50 99       	R0 = B[P2] (X);
ffa02f48:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa02f4c:	10 91       	R0 = [P2];
ffa02f4e:	40 4e       	R0 >>= 0x8;
ffa02f50:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa02f54:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02f58:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa02f5c:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02f60:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa02f64:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa02f68:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa02f6c:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa02f70:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa02f74:	f3 b0       	[SP + 0xc] = R3;
ffa02f76:	ff e3 17 f4 	CALL 0xffa017a4 <_FormatIPAddress>;
ffa02f7a:	98 b2       	[P3 + 0x28] = R0;
ffa02f7c:	ff e3 68 f6 	CALL 0xffa01c4c <_bfin_EMAC_send_nocopy>;
ffa02f80:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f82:	29 2f       	JUMP.S 0xffa02dd4 <_ARP_rx+0x1c>;
ffa02f84:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa02f88:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa02f8c:	01 08       	CC = R1 == R0;
ffa02f8e:	50 17       	IF !CC JUMP 0xffa02e2e <_ARP_rx+0x76> (BP);
ffa02f90:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa02f94:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa02f98:	01 08       	CC = R1 == R0;
ffa02f9a:	4a 17       	IF !CC JUMP 0xffa02e2e <_ARP_rx+0x76> (BP);
ffa02f9c:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa02fa0:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa02fa4:	01 08       	CC = R1 == R0;
ffa02fa6:	44 17       	IF !CC JUMP 0xffa02e2e <_ARP_rx+0x76> (BP);
ffa02fa8:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa02fac:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02fb0:	01 08       	CC = R1 == R0;
ffa02fb2:	3e 17       	IF !CC JUMP 0xffa02e2e <_ARP_rx+0x76> (BP);
ffa02fb4:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa02fb8:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa02fbc:	01 08       	CC = R1 == R0;
ffa02fbe:	38 17       	IF !CC JUMP 0xffa02e2e <_ARP_rx+0x76> (BP);
ffa02fc0:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa02fc2:	44 30       	R0 = P4;
ffa02fc4:	ff e3 ba f4 	CALL 0xffa01938 <_pack4chars>;
ffa02fc8:	38 30       	R7 = R0;
ffa02fca:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa02fce:	0f 30       	R1 = R7;
ffa02fd0:	00 e1 9c 04 	R0.L = 0x49c;		/* (1180)	R0=0xff90049c(-7338852) */
ffa02fd4:	ff e3 96 f1 	CALL 0xffa01300 <_printf_ip>;
ffa02fd8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90049c(-7338852) */
ffa02fdc:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02fe0:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa02fe2:	ff e3 2b f0 	CALL 0xffa01038 <_printf_str>;
ffa02fe6:	07 30       	R0 = R7;
ffa02fe8:	4c 30       	R1 = P4;
ffa02fea:	ff e3 81 fe 	CALL 0xffa02cec <_ARP_lut_add>;
ffa02fee:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ff0:	f2 2e       	JUMP.S 0xffa02dd4 <_ARP_rx+0x1c>;
	...

ffa02ff4 <_ARP_tx>:
ffa02ff4:	fc 05       	[--SP] = (R7:7, P5:4);
ffa02ff6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e40 <_txIdx> */
ffa02ffa:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02ffe:	0a e1 40 0e 	P2.L = 0xe40;		/* (3648)	P2=0xff900e40 <_txIdx> */
ffa03002:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa03006:	10 95 00 00 
ffa0300a:	10 32       	P2 = R0;
ffa0300c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa03010:	09 e1 44 0e 	P1.L = 0xe44;		/* (3652)	P1=0xff900e44 <_txbuf> */
ffa03014:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa03016:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e68 <_NetOurMAC> */
ffa0301a:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0301c:	52 91       	P2 = [P2];
ffa0301e:	0d e1 68 0e 	P5.L = 0xe68;		/* (3688)	P5=0xff900e68 <_NetOurMAC> */
ffa03022:	94 ad       	P4 = [P2 + 0x18];
ffa03024:	20 97       	W[P4] = R0;
ffa03026:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03028:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa0302c:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa03030:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa03034:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa03038:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa0303c:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa03040:	68 99       	R0 = B[P5] (X);
ffa03042:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa03046:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa0304a:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa0304e:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa03052:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa03056:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa0305a:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa0305e:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa03062:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa03066:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa0306a:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa0306e:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa03072:	ff e3 43 f4 	CALL 0xffa018f8 <_htons>;
ffa03076:	e0 b5       	W[P4 + 0xe] = R0;
ffa03078:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0307a:	ff e3 3f f4 	CALL 0xffa018f8 <_htons>;
ffa0307e:	20 b6       	W[P4 + 0x10] = R0;
ffa03080:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03084:	ff e3 3a f4 	CALL 0xffa018f8 <_htons>;
ffa03088:	60 b6       	W[P4 + 0x12] = R0;
ffa0308a:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0308c:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa03090:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03092:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa03096:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03098:	ff e3 30 f4 	CALL 0xffa018f8 <_htons>;
ffa0309c:	e0 b6       	W[P4 + 0x16] = R0;
ffa0309e:	54 32       	P2 = P4;
ffa030a0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa030a2:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa030a4:	b2 e0 07 10 	LSETUP(0xffa030a8 <_ARP_tx+0xb4>, 0xffa030b2 <_ARP_tx+0xbe>) LC1 = P1;
ffa030a8:	68 98       	R0 = B[P5++] (X);
ffa030aa:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa030ae:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa030b2:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa030b4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e40 <_txIdx> */
ffa030b8:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetOurIP> */
ffa030bc:	50 99       	R0 = B[P2] (X);
ffa030be:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa030c2:	10 91       	R0 = [P2];
ffa030c4:	40 4e       	R0 >>= 0x8;
ffa030c6:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa030ca:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa030ce:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa030d2:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa030d6:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa030da:	a7 b2       	[P4 + 0x28] = R7;
ffa030dc:	01 e8 00 00 	UNLINK;
ffa030e0:	bc 05       	(R7:7, P5:4) = [SP++];
ffa030e2:	ff e2 b5 f5 	JUMP.L 0xffa01c4c <_bfin_EMAC_send_nocopy>;
	...

ffa030e8 <_ARP_req>:
ffa030e8:	ec 05       	[--SP] = (R7:5, P5:4);
ffa030ea:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa030ee:	38 30       	R7 = R0;
ffa030f0:	ff e3 3e fe 	CALL 0xffa02d6c <_ARP_lu>;
ffa030f4:	00 0c       	CC = R0 == 0x0;
ffa030f6:	50 10       	IF !CC JUMP 0xffa03196 <_ARP_req+0xae>;
ffa030f8:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800e74 */
ffa030fc:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa03100:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e54 <_rxIdx> */
ffa03104:	16 91       	R6 = [P2];
ffa03106:	0c e1 80 0e 	P4.L = 0xe80;		/* (3712)	P4=0xff900e80 <_NetArpLut> */
ffa0310a:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa0310e:	4c 32       	P1 = P4;
ffa03110:	46 51       	R5 = R6 + R0;
ffa03112:	6c 32       	P5 = P4;
ffa03114:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa03116:	b2 e0 06 20 	LSETUP(0xffa0311a <_ARP_req+0x32>, 0xffa03122 <_ARP_req+0x3a>) LC1 = P2;
ffa0311a:	08 91       	R0 = [P1];
ffa0311c:	07 08       	CC = R7 == R0;
ffa0311e:	21 18       	IF CC JUMP 0xffa03160 <_ARP_req+0x78>;
ffa03120:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa03122:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa03124:	ff e3 be fd 	CALL 0xffa02ca0 <_ARP_lut_find>;
ffa03128:	10 32       	P2 = R0;
ffa0312a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0312c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa03130:	09 e1 7c 0e 	P1.L = 0xe7c;		/* (3708)	P1=0xff900e7c <_NetArpLut_age> */
ffa03134:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa03136:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa03138:	10 b1       	[P2 + 0x10] = R0;
ffa0313a:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa0313e:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa03142:	17 93 00 00 
ffa03146:	d0 b0       	[P2 + 0xc] = R0;
ffa03148:	48 95       	R0 = W[P1] (X);
ffa0314a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0314c:	08 97       	W[P1] = R0;
ffa0314e:	50 b5       	W[P2 + 0xa] = R0;
ffa03150:	07 30       	R0 = R7;
ffa03152:	ff e3 51 ff 	CALL 0xffa02ff4 <_ARP_tx>;
ffa03156:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03158:	01 e8 00 00 	UNLINK;
ffa0315c:	ac 05       	(R7:5, P5:4) = [SP++];
ffa0315e:	10 00       	RTS;
ffa03160:	08 a1       	R0 = [P1 + 0x10];
ffa03162:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa03164:	de 1f       	IF CC JUMP 0xffa03120 <_ARP_req+0x38> (BP);
ffa03166:	e8 a0       	R0 = [P5 + 0xc];
ffa03168:	86 09       	CC = R6 < R0 (IU);
ffa0316a:	f6 1f       	IF CC JUMP 0xffa03156 <_ARP_req+0x6e> (BP);
ffa0316c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03170:	0f 30       	R1 = R7;
ffa03172:	00 e1 c0 04 	R0.L = 0x4c0;		/* (1216)	R0=0xff9004c0(-7338816) */
ffa03176:	ff e3 c5 f0 	CALL 0xffa01300 <_printf_ip>;
ffa0317a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004c0(-7338816) */
ffa0317e:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa03182:	ff e3 5b ef 	CALL 0xffa01038 <_printf_str>;
ffa03186:	07 30       	R0 = R7;
ffa03188:	ff e3 36 ff 	CALL 0xffa02ff4 <_ARP_tx>;
ffa0318c:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa03190:	ed b0 00 00 
ffa03194:	e2 2f       	JUMP.S 0xffa03158 <_ARP_req+0x70>;
ffa03196:	01 e8 00 00 	UNLINK;
ffa0319a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0319c:	ac 05       	(R7:5, P5:4) = [SP++];
ffa0319e:	10 00       	RTS;

ffa031a0 <_tcp_length>:
ffa031a0:	c5 04       	[--SP] = (P5:5);
ffa031a2:	28 32       	P5 = R0;
ffa031a4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa031a8:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa031aa:	ff e3 a7 f3 	CALL 0xffa018f8 <_htons>;
ffa031ae:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa031b2:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa031b4:	51 54       	R1 = R1 & R2;
ffa031b6:	11 4f       	R1 <<= 0x2;
ffa031b8:	c0 42       	R0 = R0.L (Z);
ffa031ba:	08 52       	R0 = R0 - R1;
ffa031bc:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa031c0:	11 4d       	R1 >>>= 0x2;
ffa031c2:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa031c4:	51 54       	R1 = R1 & R2;
ffa031c6:	01 e8 00 00 	UNLINK;
ffa031ca:	08 52       	R0 = R0 - R1;
ffa031cc:	85 04       	(P5:5) = [SP++];
ffa031ce:	10 00       	RTS;

ffa031d0 <_tcp_checksum_calc>:
ffa031d0:	08 32       	P1 = R0;
ffa031d2:	ed 05       	[--SP] = (R7:5, P5:5);
ffa031d4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa031d8:	28 32       	P5 = R0;
ffa031da:	31 30       	R6 = R1;
ffa031dc:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa031de:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa031e0:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa031e2:	b2 e0 03 20 	LSETUP(0xffa031e6 <_tcp_checksum_calc+0x16>, 0xffa031e8 <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa031e6:	08 94       	R0 = W[P1++] (Z);
ffa031e8:	45 51       	R5 = R5 + R0;
ffa031ea:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa031ee:	10 4e       	R0 >>= 0x2;
ffa031f0:	06 50       	R0 = R6 + R0;
ffa031f2:	c0 42       	R0 = R0.L (Z);
ffa031f4:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa031f8:	ff e3 80 f3 	CALL 0xffa018f8 <_htons>;
ffa031fc:	47 4f       	R7 <<= 0x8;
ffa031fe:	c0 42       	R0 = R0.L (Z);
ffa03200:	c7 51       	R7 = R7 + R0;
ffa03202:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa03204:	ef 50       	R3 = R7 + R5;
ffa03206:	0d 1c       	IF CC JUMP 0xffa03220 <_tcp_checksum_calc+0x50> (BP);
ffa03208:	0e 32       	P1 = R6;
ffa0320a:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa0320e:	10 4e       	R0 >>= 0x2;
ffa03210:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa03212:	0e 64       	R6 += 0x1;		/* (  1) */
ffa03214:	a9 5a       	P2 = P1 + P5;
ffa03216:	08 32       	P1 = R0;
ffa03218:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0321a:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa0321c:	8a 5a       	P2 = P2 + P1;
ffa0321e:	10 9b       	B[P2] = R0;
ffa03220:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa03224:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03226:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa0322a:	71 50       	R1 = R1 + R6;
ffa0322c:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03230:	09 4d       	R1 >>>= 0x1;
ffa03232:	18 4e       	R0 >>= 0x3;
ffa03234:	41 50       	R1 = R1 + R0;
ffa03236:	01 0d       	CC = R1 <= 0x0;
ffa03238:	09 18       	IF CC JUMP 0xffa0324a <_tcp_checksum_calc+0x7a>;
ffa0323a:	55 32       	P2 = P5;
ffa0323c:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa0323e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa03240:	0a 64       	R2 += 0x1;		/* (  1) */
ffa03242:	10 94       	R0 = W[P2++] (Z);
ffa03244:	0a 08       	CC = R2 == R1;
ffa03246:	c3 50       	R3 = R3 + R0;
ffa03248:	fc 17       	IF !CC JUMP 0xffa03240 <_tcp_checksum_calc+0x70> (BP);
ffa0324a:	d8 42       	R0 = R3.L (Z);
ffa0324c:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa03250:	08 50       	R0 = R0 + R1;
ffa03252:	c0 43       	R0 =~ R0;
ffa03254:	01 e8 00 00 	UNLINK;
ffa03258:	c0 42       	R0 = R0.L (Z);
ffa0325a:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0325c:	10 00       	RTS;
	...

ffa03260 <_tcp_checksum_set>:
ffa03260:	c5 04       	[--SP] = (P5:5);
ffa03262:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa03266:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0326a:	0a e1 40 0e 	P2.L = 0xe40;		/* (3648)	P2=0xff900e40 <_txIdx> */
ffa0326e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa03272:	10 95 00 00 
ffa03276:	10 32       	P2 = R0;
ffa03278:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e7c <_NetArpLut_age> */
ffa0327c:	09 e1 44 0e 	P1.L = 0xe44;		/* (3652)	P1=0xff900e44 <_txbuf> */
ffa03280:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03282:	52 91       	P2 = [P2];
ffa03284:	95 ad       	P5 = [P2 + 0x18];
ffa03286:	45 30       	R0 = P5;
ffa03288:	ff e3 a4 ff 	CALL 0xffa031d0 <_tcp_checksum_calc>;
ffa0328c:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa03290:	01 e8 00 00 	UNLINK;
ffa03294:	85 04       	(P5:5) = [SP++];
ffa03296:	10 00       	RTS;

ffa03298 <_tcp_checksum_check>:
ffa03298:	10 32       	P2 = R0;
ffa0329a:	78 05       	[--SP] = (R7:7);
ffa0329c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa032a0:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa032a4:	ff e3 96 ff 	CALL 0xffa031d0 <_tcp_checksum_calc>;
ffa032a8:	0f 30       	R1 = R7;
ffa032aa:	c7 42       	R7 = R0.L (Z);
ffa032ac:	39 08       	CC = R1 == R7;
ffa032ae:	19 18       	IF CC JUMP 0xffa032e0 <_tcp_checksum_check+0x48>;
ffa032b0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa032b4:	00 e1 e0 04 	R0.L = 0x4e0;		/* (1248)	R0=0xff9004e0(-7338784) */
ffa032b8:	ff e3 26 ef 	CALL 0xffa01104 <_printf_hex>;
ffa032bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004e0(-7338784) */
ffa032c0:	0f 30       	R1 = R7;
ffa032c2:	00 e1 fc 04 	R0.L = 0x4fc;		/* (1276)	R0=0xff9004fc(-7338756) */
ffa032c6:	ff e3 1f ef 	CALL 0xffa01104 <_printf_hex>;
ffa032ca:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004fc(-7338756) */
ffa032ce:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa032d2:	ff e3 b3 ee 	CALL 0xffa01038 <_printf_str>;
ffa032d6:	01 e8 00 00 	UNLINK;
ffa032da:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa032dc:	38 05       	(R7:7) = [SP++];
ffa032de:	10 00       	RTS;
ffa032e0:	01 e8 00 00 	UNLINK;
ffa032e4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa032e6:	38 05       	(R7:7) = [SP++];
ffa032e8:	10 00       	RTS;
	...

ffa032ec <_tcp_packet_setup>:
ffa032ec:	ed 05       	[--SP] = (R7:5, P5:5);
ffa032ee:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa032f2:	29 32       	P5 = R1;
ffa032f4:	7f 30       	R7 = FP;
ffa032f6:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa032f8:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa032fa:	f0 bb       	[FP -0x4] = R0;
ffa032fc:	07 30       	R0 = R7;
ffa032fe:	2a 30       	R5 = R2;
ffa03300:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa03304:	ff e3 40 f7 	CALL 0xffa02184 <_eth_header_setup>;
ffa03308:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa0330c:	68 99 00 00 
ffa03310:	80 0c       	CC = R0 < 0x0;
ffa03312:	14 18       	IF CC JUMP 0xffa0333a <_tcp_packet_setup+0x4e>;
ffa03314:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03316:	f0 b0       	[SP + 0xc] = R0;
ffa03318:	15 30       	R2 = R5;
ffa0331a:	01 30       	R0 = R1;
ffa0331c:	0f 30       	R1 = R7;
ffa0331e:	ff e3 21 f3 	CALL 0xffa01960 <_ip_header_setup>;
ffa03322:	b9 a2       	R1 = [FP + 0x28];
ffa03324:	f1 b0       	[SP + 0xc] = R1;
ffa03326:	f9 a2       	R1 = [FP + 0x2c];
ffa03328:	31 b1       	[SP + 0x10] = R1;
ffa0332a:	72 43       	R2 = R6.B (Z);
ffa0332c:	0f 30       	R1 = R7;
ffa0332e:	ff e3 a5 f3 	CALL 0xffa01a78 <_tcp_header_setup>;
ffa03332:	01 e8 00 00 	UNLINK;
ffa03336:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03338:	10 00       	RTS;
ffa0333a:	01 e8 00 00 	UNLINK;
ffa0333e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03340:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03342:	10 00       	RTS;

ffa03344 <_tcp_burst>:
ffa03344:	e3 05       	[--SP] = (R7:4, P5:3);
ffa03346:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa0334a:	78 b2       	[FP + 0x24] = R0;
ffa0334c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 */
ffa03350:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e40 <_txIdx> */
ffa03354:	7a a2       	R2 = [FP + 0x24];
ffa03356:	0b e1 68 0f 	P3.L = 0xf68;		/* (3944)	P3=0xff900f68 <_g_httpHeaderLen> */
ffa0335a:	0a e1 6c 0f 	P2.L = 0xf6c;		/* (3948)	P2=0xff900f6c <_g_httpContentLen> */
ffa0335e:	02 0d       	CC = R2 <= 0x0;
ffa03360:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa03364:	10 91 00 00 
ffa03368:	19 91       	R1 = [P3];
ffa0336a:	7e 18       	IF CC JUMP 0xffa03466 <_tcp_burst+0x122>;
ffa0336c:	41 50       	R1 = R1 + R0;
ffa0336e:	8f 09       	CC = R7 < R1 (IU);
ffa03370:	21 32       	P4 = R1;
ffa03372:	7a 10       	IF !CC JUMP 0xffa03466 <_tcp_burst+0x122>;
ffa03374:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa03376:	38 20       	JUMP.S 0xffa033e6 <_tcp_burst+0xa2>;
ffa03378:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa0337a:	18 91       	R0 = [P3];
ffa0337c:	07 52       	R0 = R7 - R0;
ffa0337e:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa03382:	08 50       	R0 = R0 + R1;
ffa03384:	16 30       	R2 = R6;
ffa03386:	0d 30       	R1 = R5;
ffa03388:	ff e3 00 f0 	CALL 0xffa01388 <_memcpy_>;
ffa0338c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e44 <_txbuf> */
ffa03390:	09 e1 54 0f 	P1.L = 0xf54;		/* (3924)	P1=0xff900f54 <_TcpSeqHttpStart> */
ffa03394:	08 91       	R0 = [P1];
ffa03396:	f7 51       	R7 = R7 + R6;
ffa03398:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f6c <_g_httpContentLen> */
ffa0339c:	0a e1 4c 0f 	P2.L = 0xf4c;		/* (3916)	P2=0xff900f4c <_TcpSeqHost> */
ffa033a0:	07 50       	R0 = R7 + R0;
ffa033a2:	10 93       	[P2] = R0;
ffa033a4:	26 50       	R0 = R6 + R4;
ffa033a6:	ff e3 5d ff 	CALL 0xffa03260 <_tcp_checksum_set>;
ffa033aa:	ff e3 51 f4 	CALL 0xffa01c4c <_bfin_EMAC_send_nocopy>;
ffa033ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f4c <_TcpSeqHost> */
ffa033b2:	0a e1 54 0e 	P2.L = 0xe54;		/* (3668)	P2=0xff900e54 <_rxIdx> */
ffa033b6:	10 95       	R0 = W[P2] (Z);
ffa033b8:	10 32       	P2 = R0;
ffa033ba:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900f54 <_TcpSeqHttpStart> */
ffa033be:	09 e1 58 0e 	P1.L = 0xe58;		/* (3672)	P1=0xff900e58 <_rxbuf> */
ffa033c2:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa033c4:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa033c6:	52 91       	P2 = [P2];
ffa033c8:	90 a2       	R0 = [P2 + 0x28];
ffa033ca:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa033cc:	07 1c       	IF CC JUMP 0xffa033da <_tcp_burst+0x96> (BP);
ffa033ce:	90 a2       	R0 = [P2 + 0x28];
ffa033d0:	4d 30       	R1 = P5;
ffa033d2:	7a a2       	R2 = [FP + 0x24];
ffa033d4:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa033d6:	11 50       	R0 = R1 + R2;
ffa033d8:	a8 06       	IF !CC P5 = R0;
ffa033da:	79 ae       	P1 = [FP + 0x24];
ffa033dc:	69 09       	CC = P1 <= P5;
ffa033de:	45 18       	IF CC JUMP 0xffa03468 <_tcp_burst+0x124>;
ffa033e0:	44 30       	R0 = P4;
ffa033e2:	87 09       	CC = R7 < R0 (IU);
ffa033e4:	42 10       	IF !CC JUMP 0xffa03468 <_tcp_burst+0x124>;
ffa033e6:	44 30       	R0 = P4;
ffa033e8:	b8 52       	R2 = R0 - R7;
ffa033ea:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa033ee:	0a 09       	CC = R2 <= R1;
ffa033f0:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa033f2:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa033f4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e58 <_rxbuf> */
ffa033f8:	08 06       	IF !CC R1 = R0;
ffa033fa:	09 e1 54 0f 	P1.L = 0xf54;		/* (3924)	P1=0xff900f54 <_TcpSeqHttpStart> */
ffa033fe:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa03402:	07 cc 10 4c 	R6 = MIN (R2, R0) || R0 = [P1] || NOP;
ffa03406:	08 91 00 00 
ffa0340a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e54 <_rxIdx> */
ffa0340e:	07 50       	R0 = R7 + R0;
ffa03410:	0a e1 4c 0f 	P2.L = 0xf4c;		/* (3916)	P2=0xff900f4c <_TcpSeqHost> */
ffa03414:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900f54 <_TcpSeqHttpStart> */
ffa03418:	10 93       	[P2] = R0;
ffa0341a:	09 e1 50 0f 	P1.L = 0xf50;		/* (3920)	P1=0xff900f50 <_TcpSeqClient> */
ffa0341e:	f1 b0       	[SP + 0xc] = R1;
ffa03420:	30 b1       	[SP + 0x10] = R0;
ffa03422:	08 91       	R0 = [P1];
ffa03424:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f4c <_TcpSeqHost> */
ffa03428:	70 b1       	[SP + 0x14] = R0;
ffa0342a:	0a e1 38 0e 	P2.L = 0xe38;		/* (3640)	P2=0xff900e38 <_NetDestIP> */
ffa0342e:	4f 30       	R1 = FP;
ffa03430:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R2 = [P2] || NOP;
ffa03434:	12 91 00 00 
ffa03438:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0343a:	ff e3 59 ff 	CALL 0xffa032ec <_tcp_packet_setup>;
ffa0343e:	28 30       	R5 = R0;
ffa03440:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03444:	00 0d       	CC = R0 <= 0x0;
ffa03446:	ca 1b       	IF CC JUMP 0xffa033da <_tcp_burst+0x96>;
ffa03448:	18 91       	R0 = [P3];
ffa0344a:	38 0a       	CC = R0 <= R7 (IU);
ffa0344c:	96 1f       	IF CC JUMP 0xffa03378 <_tcp_burst+0x34> (BP);
ffa0344e:	38 53       	R4 = R0 - R7;
ffa03450:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03454:	07 50       	R0 = R7 + R0;
ffa03456:	0d 30       	R1 = R5;
ffa03458:	14 30       	R2 = R4;
ffa0345a:	ff e3 97 ef 	CALL 0xffa01388 <_memcpy_>;
ffa0345e:	65 51       	R5 = R5 + R4;
ffa03460:	a6 53       	R6 = R6 - R4;
ffa03462:	e7 51       	R7 = R7 + R4;
ffa03464:	8b 2f       	JUMP.S 0xffa0337a <_tcp_burst+0x36>;
ffa03466:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa03468:	01 e8 00 00 	UNLINK;
ffa0346c:	45 30       	R0 = P5;
ffa0346e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03470:	10 00       	RTS;
	...

ffa03474 <_tcp_rx>:
ffa03474:	e3 05       	[--SP] = (R7:4, P5:3);
ffa03476:	20 32       	P4 = R0;
ffa03478:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa0347c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03480:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa03482:	ff e3 3b f2 	CALL 0xffa018f8 <_htons>;
ffa03486:	c0 42       	R0 = R0.L (Z);
ffa03488:	07 08       	CC = R7 == R0;
ffa0348a:	06 18       	IF CC JUMP 0xffa03496 <_tcp_rx+0x22>;
ffa0348c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0348e:	01 e8 00 00 	UNLINK;
ffa03492:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03494:	10 00       	RTS;
ffa03496:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa0349a:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa0349c:	08 08       	CC = R0 == R1;
ffa0349e:	f7 17       	IF !CC JUMP 0xffa0348c <_tcp_rx+0x18> (BP);
ffa034a0:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa034a4:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa034a8:	ff e3 28 f2 	CALL 0xffa018f8 <_htons>;
ffa034ac:	c0 42       	R0 = R0.L (Z);
ffa034ae:	07 08       	CC = R7 == R0;
ffa034b0:	ee 17       	IF !CC JUMP 0xffa0348c <_tcp_rx+0x18> (BP);
ffa034b2:	44 30       	R0 = P4;
ffa034b4:	80 64       	R0 += 0x10;		/* ( 16) */
ffa034b6:	ff e3 95 f2 	CALL 0xffa019e0 <_ip_header_checksum>;
ffa034ba:	40 43       	R0 = R0.B (Z);
ffa034bc:	00 0c       	CC = R0 == 0x0;
ffa034be:	e7 1f       	IF CC JUMP 0xffa0348c <_tcp_rx+0x18> (BP);
ffa034c0:	4c 30       	R1 = P4;
ffa034c2:	41 64       	R1 += 0x8;		/* (  8) */
ffa034c4:	e0 a1       	R0 = [P4 + 0x1c];
ffa034c6:	ff e3 13 fc 	CALL 0xffa02cec <_ARP_lut_add>;
ffa034ca:	44 30       	R0 = P4;
ffa034cc:	ff e3 6a fe 	CALL 0xffa031a0 <_tcp_length>;
ffa034d0:	30 30       	R6 = R0;
ffa034d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa034d6:	0e 30       	R1 = R6;
ffa034d8:	00 e1 0c 05 	R0.L = 0x50c;		/* (1292)	R0=0xff90050c(-7338740) */
ffa034dc:	ff e3 70 ee 	CALL 0xffa011bc <_printf_int>;
ffa034e0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90050c(-7338740) */
ffa034e4:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa034e8:	ff e3 a8 ed 	CALL 0xffa01038 <_printf_str>;
ffa034ec:	44 30       	R0 = P4;
ffa034ee:	0e 30       	R1 = R6;
ffa034f0:	ff e3 d4 fe 	CALL 0xffa03298 <_tcp_checksum_check>;
ffa034f4:	40 43       	R0 = R0.B (Z);
ffa034f6:	00 0c       	CC = R0 == 0x0;
ffa034f8:	ca 1b       	IF CC JUMP 0xffa0348c <_tcp_rx+0x18>;
ffa034fa:	00 00       	NOP;
ffa034fc:	00 00       	NOP;
ffa034fe:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa03500:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03504:	48 43       	R0 = R1.B (Z);
ffa03506:	10 08       	CC = R0 == R2;
ffa03508:	f1 18       	IF CC JUMP 0xffa036ea <_tcp_rx+0x276>;
ffa0350a:	10 0c       	CC = R0 == 0x2;
ffa0350c:	0a 19       	IF CC JUMP 0xffa03720 <_tcp_rx+0x2ac>;
ffa0350e:	48 43       	R0 = R1.B (Z);
ffa03510:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03512:	08 08       	CC = R0 == R1;
ffa03514:	85 18       	IF CC JUMP 0xffa0361e <_tcp_rx+0x1aa>;
ffa03516:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03518:	ab 10       	IF !CC JUMP 0xffa0366e <_tcp_rx+0x1fa>;
ffa0351a:	00 00       	NOP;
ffa0351c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f68 <_g_httpHeaderLen> */
ffa03520:	0b e1 58 0f 	P3.L = 0xf58;		/* (3928)	P3=0xff900f58 <_TcpState> */
ffa03524:	00 00       	NOP;
ffa03526:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa0352a:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa0352c:	38 10       	IF !CC JUMP 0xffa0359c <_tcp_rx+0x128>;
ffa0352e:	18 91       	R0 = [P3];
ffa03530:	10 0c       	CC = R0 == 0x2;
ffa03532:	ad 17       	IF !CC JUMP 0xffa0348c <_tcp_rx+0x18> (BP);
ffa03534:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900000 <_l1_data_a>(-7340032) */
ffa03538:	a0 a2       	R0 = [P4 + 0x28];
ffa0353a:	04 e1 38 0e 	R4.L = 0xe38;		/* (3640)	R4=0xff900e38 <_NetDestIP>(-7336392) */
ffa0353e:	a5 e5 30 00 	R5 = B[P4 + 0x30] (X);
ffa03542:	ff e3 e7 f1 	CALL 0xffa01910 <_htonl>;
ffa03546:	14 32       	P2 = R4;
ffa03548:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa0354c:	30 50       	R0 = R0 + R6;
ffa0354e:	0d e1 50 0f 	P5.L = 0xf50;		/* (3920)	P5=0xff900f50 <_TcpSeqClient> */
ffa03552:	28 93       	[P5] = R0;
ffa03554:	e0 a1       	R0 = [P4 + 0x1c];
ffa03556:	10 93       	[P2] = R0;
ffa03558:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f58 <_TcpState> */
ffa0355c:	e0 a2       	R0 = [P4 + 0x2c];
ffa0355e:	0b e1 54 0f 	P3.L = 0xf54;		/* (3924)	P3=0xff900f54 <_TcpSeqHttpStart> */
ffa03562:	ff e3 d7 f1 	CALL 0xffa01910 <_htonl>;
ffa03566:	19 91       	R1 = [P3];
ffa03568:	c8 53       	R7 = R0 - R1;
ffa0356a:	a1 e4 31 00 	R1 = B[P4 + 0x31] (Z);
ffa0356e:	21 48       	CC = !BITTST (R1, 0x4);		/* bit  4 */
ffa03570:	1e 1d       	IF CC JUMP 0xffa037ac <_tcp_rx+0x338> (BP);
ffa03572:	06 0c       	CC = R6 == 0x0;
ffa03574:	1c 15       	IF !CC JUMP 0xffa037ac <_tcp_rx+0x338> (BP);
ffa03576:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e38 <_NetDestIP> */
ffa0357a:	0a e1 68 0f 	P2.L = 0xf68;		/* (3944)	P2=0xff900f68 <_g_httpHeaderLen> */
ffa0357e:	10 91       	R0 = [P2];
ffa03580:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f68 <_g_httpHeaderLen> */
ffa03584:	0a e1 6c 0f 	P2.L = 0xf6c;		/* (3948)	P2=0xff900f6c <_g_httpContentLen> */
ffa03588:	11 91       	R1 = [P2];
ffa0358a:	08 50       	R0 = R0 + R1;
ffa0358c:	07 08       	CC = R7 == R0;
ffa0358e:	46 18       	IF CC JUMP 0xffa0361a <_tcp_rx+0x1a6>;
ffa03590:	0f 30       	R1 = R7;
ffa03592:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03594:	ff e3 d8 fe 	CALL 0xffa03344 <_tcp_burst>;
ffa03598:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0359a:	7a 2f       	JUMP.S 0xffa0348e <_tcp_rx+0x1a>;
ffa0359c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0359e:	1f 91       	R7 = [P3];
ffa035a0:	07 08       	CC = R7 == R0;
ffa035a2:	85 19       	IF CC JUMP 0xffa038ac <_tcp_rx+0x438>;
ffa035a4:	07 0c       	CC = R7 == 0x0;
ffa035a6:	c4 17       	IF !CC JUMP 0xffa0352e <_tcp_rx+0xba> (BP);
ffa035a8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa035ac:	00 e1 88 05 	R0.L = 0x588;		/* (1416)	R0=0xff900588(-7338616) */
ffa035b0:	ff e3 44 ed 	CALL 0xffa01038 <_printf_str>;
ffa035b4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f6c <_g_httpContentLen> */
ffa035b8:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_g_httpRxed> */
ffa035bc:	17 93       	[P2] = R7;
ffa035be:	a0 a2       	R0 = [P4 + 0x28];
ffa035c0:	ff e3 a8 f1 	CALL 0xffa01910 <_htonl>;
ffa035c4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_g_httpRxed> */
ffa035c8:	0a e1 50 0f 	P2.L = 0xf50;		/* (3920)	P2=0xff900f50 <_TcpSeqClient> */
ffa035cc:	10 93       	[P2] = R0;
ffa035ce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f50 <_TcpSeqClient> */
ffa035d2:	e2 a1       	R2 = [P4 + 0x1c];
ffa035d4:	0a e1 38 0e 	P2.L = 0xe38;		/* (3640)	P2=0xff900e38 <_NetDestIP> */
ffa035d8:	12 93       	[P2] = R2;
ffa035da:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e38 <_NetDestIP> */
ffa035de:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa035e2:	0a e1 64 0f 	P2.L = 0xf64;		/* (3940)	P2=0xff900f64 <_TcpClientPort> */
ffa035e6:	11 97       	W[P2] = R1;
ffa035e8:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa035ea:	f1 b0       	[SP + 0xc] = R1;
ffa035ec:	4f 30       	R1 = FP;
ffa035ee:	30 b1       	[SP + 0x10] = R0;
ffa035f0:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa035f2:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa035f6:	77 b1 00 00 
ffa035fa:	ff e3 79 fe 	CALL 0xffa032ec <_tcp_packet_setup>;
ffa035fe:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03602:	00 0d       	CC = R0 <= 0x0;
ffa03604:	95 1b       	IF CC JUMP 0xffa0352e <_tcp_rx+0xba>;
ffa03606:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f64 <_TcpClientPort> */
ffa0360a:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpState> */
ffa0360e:	17 93       	[P2] = R7;
ffa03610:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03612:	ff e3 27 fe 	CALL 0xffa03260 <_tcp_checksum_set>;
ffa03616:	ff e3 1b f3 	CALL 0xffa01c4c <_bfin_EMAC_send_nocopy>;
ffa0361a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0361c:	39 2f       	JUMP.S 0xffa0348e <_tcp_rx+0x1a>;
ffa0361e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f54 <_TcpSeqHttpStart> */
ffa03622:	0b e1 58 0f 	P3.L = 0xf58;		/* (3928)	P3=0xff900f58 <_TcpState> */
ffa03626:	18 91       	R0 = [P3];
ffa03628:	08 0c       	CC = R0 == 0x1;
ffa0362a:	b9 17       	IF !CC JUMP 0xffa0359c <_tcp_rx+0x128> (BP);
ffa0362c:	e0 a2       	R0 = [P4 + 0x2c];
ffa0362e:	ff e3 71 f1 	CALL 0xffa01910 <_htonl>;
ffa03632:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpState> */
ffa03636:	0a e1 4c 0f 	P2.L = 0xf4c;		/* (3916)	P2=0xff900f4c <_TcpSeqHost> */
ffa0363a:	11 91       	R1 = [P2];
ffa0363c:	08 08       	CC = R0 == R1;
ffa0363e:	42 19       	IF CC JUMP 0xffa038c2 <_tcp_rx+0x44e>;
ffa03640:	00 00       	NOP;
ffa03642:	00 00       	NOP;
ffa03644:	00 00       	NOP;
ffa03646:	e0 a2       	R0 = [P4 + 0x2c];
ffa03648:	ff e3 64 f1 	CALL 0xffa01910 <_htonl>;
ffa0364c:	08 30       	R1 = R0;
ffa0364e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03652:	00 e1 38 05 	R0.L = 0x538;		/* (1336)	R0=0xff900538(-7338696) */
ffa03656:	ff e3 55 ee 	CALL 0xffa01300 <_printf_ip>;
ffa0365a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0365c:	18 93       	[P3] = R0;
ffa0365e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03662:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa03666:	ff e3 e9 ec 	CALL 0xffa01038 <_printf_str>;
ffa0366a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0366c:	11 2f       	JUMP.S 0xffa0348e <_tcp_rx+0x1a>;
ffa0366e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03672:	00 e1 64 05 	R0.L = 0x564;		/* (1380)	R0=0xff900564(-7338652) */
ffa03676:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900e38 <_NetDestIP>(-7336392) */
ffa0367a:	ff e3 df ec 	CALL 0xffa01038 <_printf_str>;
ffa0367e:	04 e1 38 0e 	R4.L = 0xe38;		/* (3640)	R4=0xff900e38 <_NetDestIP>(-7336392) */
ffa03682:	a0 a2       	R0 = [P4 + 0x28];
ffa03684:	ff e3 46 f1 	CALL 0xffa01910 <_htonl>;
ffa03688:	14 32       	P2 = R4;
ffa0368a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f50 <_TcpSeqClient> */
ffa0368e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f58 <_TcpState> */
ffa03692:	0d e1 50 0f 	P5.L = 0xf50;		/* (3920)	P5=0xff900f50 <_TcpSeqClient> */
ffa03696:	0b e1 58 0f 	P3.L = 0xf58;		/* (3928)	P3=0xff900f58 <_TcpState> */
ffa0369a:	28 93       	[P5] = R0;
ffa0369c:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa036a0:	18 91 00 00 
ffa036a4:	e2 a1       	R2 = [P4 + 0x1c];
ffa036a6:	09 64       	R1 += 0x1;		/* (  1) */
ffa036a8:	10 0c       	CC = R0 == 0x2;
ffa036aa:	12 93       	[P2] = R2;
ffa036ac:	29 93       	[P5] = R1;
ffa036ae:	03 18       	IF CC JUMP 0xffa036b4 <_tcp_rx+0x240>;
ffa036b0:	00 0c       	CC = R0 == 0x0;
ffa036b2:	c0 14       	IF !CC JUMP 0xffa03832 <_tcp_rx+0x3be> (BP);
ffa036b4:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa036b6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f4c <_TcpSeqHost> */
ffa036ba:	f0 b0       	[SP + 0xc] = R0;
ffa036bc:	0a e1 4c 0f 	P2.L = 0xf4c;		/* (3916)	P2=0xff900f4c <_TcpSeqHost> */
ffa036c0:	10 91       	R0 = [P2];
ffa036c2:	71 b1       	[SP + 0x14] = R1;
ffa036c4:	4f 30       	R1 = FP;
ffa036c6:	30 b1       	[SP + 0x10] = R0;
ffa036c8:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa036ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa036cc:	ff e3 10 fe 	CALL 0xffa032ec <_tcp_packet_setup>;
ffa036d0:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa036d4:	00 0d       	CC = R0 <= 0x0;
ffa036d6:	ae 18       	IF CC JUMP 0xffa03832 <_tcp_rx+0x3be>;
ffa036d8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa036da:	18 93       	[P3] = R0;
ffa036dc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa036de:	ff e3 c1 fd 	CALL 0xffa03260 <_tcp_checksum_set>;
ffa036e2:	ff e3 b5 f2 	CALL 0xffa01c4c <_bfin_EMAC_send_nocopy>;
ffa036e6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa036e8:	d3 2e       	JUMP.S 0xffa0348e <_tcp_rx+0x1a>;
ffa036ea:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa036ee:	00 e1 20 05 	R0.L = 0x520;		/* (1312)	R0=0xff900520(-7338720) */
ffa036f2:	ff e3 a3 ec 	CALL 0xffa01038 <_printf_str>;
ffa036f6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f4c <_TcpSeqHost> */
ffa036fa:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpState> */
ffa036fe:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03700:	17 93       	[P2] = R7;
ffa03702:	a0 a2       	R0 = [P4 + 0x28];
ffa03704:	ff e3 06 f1 	CALL 0xffa01910 <_htonl>;
ffa03708:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpState> */
ffa0370c:	0a e1 50 0f 	P2.L = 0xf50;		/* (3920)	P2=0xff900f50 <_TcpSeqClient> */
ffa03710:	10 93       	[P2] = R0;
ffa03712:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f50 <_TcpSeqClient> */
ffa03716:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_g_httpRxed> */
ffa0371a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0371c:	17 93       	[P2] = R7;
ffa0371e:	b8 2e       	JUMP.S 0xffa0348e <_tcp_rx+0x1a>;
ffa03720:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03724:	00 e1 2c 05 	R0.L = 0x52c;		/* (1324)	R0=0xff90052c(-7338708) */
ffa03728:	ff e3 88 ec 	CALL 0xffa01038 <_printf_str>;
ffa0372c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f50 <_TcpSeqClient> */
ffa03730:	a0 a2       	R0 = [P4 + 0x28];
ffa03732:	ff e3 ef f0 	CALL 0xffa01910 <_htonl>;
ffa03736:	0d e1 50 0f 	P5.L = 0xf50;		/* (3920)	P5=0xff900f50 <_TcpSeqClient> */
ffa0373a:	28 93       	[P5] = R0;
ffa0373c:	44 30       	R0 = P4;
ffa0373e:	ff e3 31 fd 	CALL 0xffa031a0 <_tcp_length>;
ffa03742:	29 91       	R1 = [P5];
ffa03744:	09 64       	R1 += 0x1;		/* (  1) */
ffa03746:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_g_httpRxed> */
ffa0374a:	08 50       	R0 = R0 + R1;
ffa0374c:	0a e1 64 0f 	P2.L = 0xf64;		/* (3940)	P2=0xff900f64 <_TcpClientPort> */
ffa03750:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03754:	11 97       	W[P2] = R1;
ffa03756:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f64 <_TcpClientPort> */
ffa0375a:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa0375e:	28 93 00 00 
ffa03762:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_g_httpRxed> */
ffa03766:	11 93       	[P2] = R1;
ffa03768:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_g_httpRxed> */
ffa0376c:	e2 a1       	R2 = [P4 + 0x1c];
ffa0376e:	0a e1 38 0e 	P2.L = 0xe38;		/* (3640)	P2=0xff900e38 <_NetDestIP> */
ffa03772:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa03774:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f50 <_TcpSeqClient> */
ffa03778:	12 93       	[P2] = R2;
ffa0377a:	0d e1 4c 0f 	P5.L = 0xf4c;		/* (3916)	P5=0xff900f4c <_TcpSeqHost> */
ffa0377e:	f1 b0       	[SP + 0xc] = R1;
ffa03780:	29 91       	R1 = [P5];
ffa03782:	31 b1       	[SP + 0x10] = R1;
ffa03784:	4f 30       	R1 = FP;
ffa03786:	70 b1       	[SP + 0x14] = R0;
ffa03788:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0378a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0378c:	ff e3 b0 fd 	CALL 0xffa032ec <_tcp_packet_setup>;
ffa03790:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03794:	00 0d       	CC = R0 <= 0x0;
ffa03796:	93 18       	IF CC JUMP 0xffa038bc <_tcp_rx+0x448>;
ffa03798:	28 91       	R0 = [P5];
ffa0379a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0379c:	28 93       	[P5] = R0;
ffa0379e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa037a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e38 <_NetDestIP> */
ffa037a4:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpState> */
ffa037a8:	10 93       	[P2] = R0;
ffa037aa:	33 2f       	JUMP.S 0xffa03610 <_tcp_rx+0x19c>;
ffa037ac:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa037b0:	28 54       	R0 = R0 & R5;
ffa037b2:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa037b4:	10 4d       	R0 >>>= 0x2;
ffa037b6:	54 30       	R2 = P4;
ffa037b8:	19 48       	CC = !BITTST (R1, 0x3);		/* bit  3 */
ffa037ba:	02 50       	R0 = R2 + R0;
ffa037bc:	5d 1c       	IF CC JUMP 0xffa03876 <_tcp_rx+0x402> (BP);
ffa037be:	0e 30       	R1 = R6;
ffa037c0:	00 e3 16 05 	CALL 0xffa041ec <_httpCollate>;
ffa037c4:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f4c <_TcpSeqHost> */
ffa037c8:	18 91       	R0 = [P3];
ffa037ca:	07 50       	R0 = R7 + R0;
ffa037cc:	0d e1 4c 0f 	P5.L = 0xf4c;		/* (3916)	P5=0xff900f4c <_TcpSeqHost> */
ffa037d0:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e80 <_NetArpLut> */
ffa037d4:	28 93       	[P5] = R0;
ffa037d6:	0c e1 70 0f 	P4.L = 0xf70;		/* (3952)	P4=0xff900f70 <_g_httpRxed> */
ffa037da:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa037dc:	80 4f       	R0 <<= 0x10;
ffa037de:	21 91       	R1 = [P4];
ffa037e0:	00 e3 dc 02 	CALL 0xffa03d98 <_httpResp>;
ffa037e4:	00 0c       	CC = R0 == 0x0;
ffa037e6:	22 1c       	IF CC JUMP 0xffa0382a <_tcp_rx+0x3b6> (BP);
ffa037e8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpState> */
ffa037ec:	28 91       	R0 = [P5];
ffa037ee:	0a e1 54 0f 	P2.L = 0xf54;		/* (3924)	P2=0xff900f54 <_TcpSeqHttpStart> */
ffa037f2:	10 93       	[P2] = R0;
ffa037f4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f54 <_TcpSeqHttpStart> */
ffa037f8:	0a e1 68 0f 	P2.L = 0xf68;		/* (3944)	P2=0xff900f68 <_g_httpHeaderLen> */
ffa037fc:	11 91       	R1 = [P2];
ffa037fe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f68 <_g_httpHeaderLen> */
ffa03802:	0a e1 6c 0f 	P2.L = 0xf6c;		/* (3948)	P2=0xff900f6c <_g_httpContentLen> */
ffa03806:	10 91       	R0 = [P2];
ffa03808:	41 50       	R1 = R1 + R0;
ffa0380a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0380e:	00 e1 a4 05 	R0.L = 0x5a4;		/* (1444)	R0=0xff9005a4(-7338588) */
ffa03812:	ff e3 d5 ec 	CALL 0xffa011bc <_printf_int>;
ffa03816:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005a4(-7338588) */
ffa0381a:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa0381e:	ff e3 0d ec 	CALL 0xffa01038 <_printf_str>;
ffa03822:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03824:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03826:	ff e3 8f fd 	CALL 0xffa03344 <_tcp_burst>;
ffa0382a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0382c:	20 93       	[P4] = R0;
ffa0382e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03830:	2f 2e       	JUMP.S 0xffa0348e <_tcp_rx+0x1a>;
ffa03832:	18 91       	R0 = [P3];
ffa03834:	18 0c       	CC = R0 == 0x3;
ffa03836:	77 16       	IF !CC JUMP 0xffa03524 <_tcp_rx+0xb0> (BP);
ffa03838:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f6c <_g_httpContentLen> */
ffa0383c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0383e:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_g_httpRxed> */
ffa03842:	10 93       	[P2] = R0;
ffa03844:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03846:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_g_httpRxed> */
ffa0384a:	f0 b0       	[SP + 0xc] = R0;
ffa0384c:	0a e1 4c 0f 	P2.L = 0xf4c;		/* (3916)	P2=0xff900f4c <_TcpSeqHost> */
ffa03850:	10 91       	R0 = [P2];
ffa03852:	14 32       	P2 = R4;
ffa03854:	30 b1       	[SP + 0x10] = R0;
ffa03856:	28 91       	R0 = [P5];
ffa03858:	70 b1       	[SP + 0x14] = R0;
ffa0385a:	4f 30       	R1 = FP;
ffa0385c:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03860:	12 91 00 00 
ffa03864:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03866:	ff e3 43 fd 	CALL 0xffa032ec <_tcp_packet_setup>;
ffa0386a:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0386e:	00 0d       	CC = R0 <= 0x0;
ffa03870:	5a 1a       	IF CC JUMP 0xffa03524 <_tcp_rx+0xb0>;
ffa03872:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03874:	96 2f       	JUMP.S 0xffa037a0 <_tcp_rx+0x32c>;
ffa03876:	0e 30       	R1 = R6;
ffa03878:	00 e3 ba 04 	CALL 0xffa041ec <_httpCollate>;
ffa0387c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0387e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f4c <_TcpSeqHost> */
ffa03882:	f0 b0       	[SP + 0xc] = R0;
ffa03884:	0a e1 4c 0f 	P2.L = 0xf4c;		/* (3916)	P2=0xff900f4c <_TcpSeqHost> */
ffa03888:	10 91       	R0 = [P2];
ffa0388a:	14 32       	P2 = R4;
ffa0388c:	30 b1       	[SP + 0x10] = R0;
ffa0388e:	28 91       	R0 = [P5];
ffa03890:	70 b1       	[SP + 0x14] = R0;
ffa03892:	4f 30       	R1 = FP;
ffa03894:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03898:	12 91 00 00 
ffa0389c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0389e:	ff e3 27 fd 	CALL 0xffa032ec <_tcp_packet_setup>;
ffa038a2:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa038a6:	00 0d       	CC = R0 <= 0x0;
ffa038a8:	b4 16       	IF !CC JUMP 0xffa03610 <_tcp_rx+0x19c> (BP);
ffa038aa:	f1 2d       	JUMP.S 0xffa0348c <_tcp_rx+0x18>;
ffa038ac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa038b0:	00 e1 74 05 	R0.L = 0x574;		/* (1396)	R0=0xff900574(-7338636) */
ffa038b4:	ff e3 c2 eb 	CALL 0xffa01038 <_printf_str>;
ffa038b8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa038ba:	ea 2d       	JUMP.S 0xffa0348e <_tcp_rx+0x1a>;
ffa038bc:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa038c0:	27 2e       	JUMP.S 0xffa0350e <_tcp_rx+0x9a>;
ffa038c2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa038c4:	18 93       	[P3] = R0;
ffa038c6:	a0 a2       	R0 = [P4 + 0x28];
ffa038c8:	ff e3 24 f0 	CALL 0xffa01910 <_htonl>;
ffa038cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f4c <_TcpSeqHost> */
ffa038d0:	0a e1 50 0f 	P2.L = 0xf50;		/* (3920)	P2=0xff900f50 <_TcpSeqClient> */
ffa038d4:	10 93       	[P2] = R0;
ffa038d6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa038da:	00 e1 54 05 	R0.L = 0x554;		/* (1364)	R0=0xff900554(-7338668) */
ffa038de:	ff e3 ad eb 	CALL 0xffa01038 <_printf_str>;
ffa038e2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa038e4:	d5 2d       	JUMP.S 0xffa0348e <_tcp_rx+0x1a>;
	...

ffa038e8 <_htmlForm>:
ffa038e8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa038ec:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa038f0:	02 e1 c0 05 	R2.L = 0x5c0;		/* (1472)	R2=0xff9005c0(-7338560) */
ffa038f4:	01 e8 00 00 	UNLINK;
ffa038f8:	ff e2 78 ed 	JUMP.L 0xffa013e8 <_strcpy_>;

ffa038fc <_htmlDiv>:
ffa038fc:	12 43       	R2 = R2.B (X);
ffa038fe:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa03902:	1a 08       	CC = R2 == R3;
ffa03904:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03908:	09 18       	IF CC JUMP 0xffa0391a <_htmlDiv+0x1e>;
ffa0390a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005c0(-7338560) */
ffa0390e:	02 e1 14 06 	R2.L = 0x614;		/* (1556)	R2=0xff900614(-7338476) */
ffa03912:	01 e8 00 00 	UNLINK;
ffa03916:	ff e2 69 ed 	JUMP.L 0xffa013e8 <_strcpy_>;
ffa0391a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900614(-7338476) */
ffa0391e:	02 e1 e0 05 	R2.L = 0x5e0;		/* (1504)	R2=0xff9005e0(-7338528) */
ffa03922:	01 e8 00 00 	UNLINK;
ffa03926:	ff e2 61 ed 	JUMP.L 0xffa013e8 <_strcpy_>;
	...

ffa0392c <_html404>:
ffa0392c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03930:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03932:	4f 30       	R1 = FP;
ffa03934:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005e0(-7338528) */
ffa03938:	f0 bb       	[FP -0x4] = R0;
ffa0393a:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa0393c:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03940:	02 e1 48 06 	R2.L = 0x648;		/* (1608)	R2=0xff900648(-7338424) */
ffa03944:	ff e3 52 ed 	CALL 0xffa013e8 <_strcpy_>;
ffa03948:	f0 b9       	R0 = [FP -0x4];
ffa0394a:	01 e8 00 00 	UNLINK;
ffa0394e:	10 00       	RTS;

ffa03950 <_htmlCursorOption>:
ffa03950:	68 05       	[--SP] = (R7:5);
ffa03952:	2a 30       	R5 = R2;
ffa03954:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900648(-7338424) */
ffa03958:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0395c:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa03960:	3f a2 00 00 
ffa03964:	02 e1 64 06 	R2.L = 0x664;		/* (1636)	R2=0xff900664(-7338396) */
ffa03968:	ff e3 40 ed 	CALL 0xffa013e8 <_strcpy_>;
ffa0396c:	0e 30       	R1 = R6;
ffa0396e:	15 30       	R2 = R5;
ffa03970:	ff e3 a2 ee 	CALL 0xffa016b4 <_strprintf_int>;
ffa03974:	3d 08       	CC = R5 == R7;
ffa03976:	16 18       	IF CC JUMP 0xffa039a2 <_htmlCursorOption+0x52>;
ffa03978:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900664(-7338396) */
ffa0397c:	0e 30       	R1 = R6;
ffa0397e:	02 e1 8c 06 	R2.L = 0x68c;		/* (1676)	R2=0xff90068c(-7338356) */
ffa03982:	ff e3 33 ed 	CALL 0xffa013e8 <_strcpy_>;
ffa03986:	0e 30       	R1 = R6;
ffa03988:	15 30       	R2 = R5;
ffa0398a:	ff e3 95 ee 	CALL 0xffa016b4 <_strprintf_int>;
ffa0398e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90068c(-7338356) */
ffa03992:	01 e8 00 00 	UNLINK;
ffa03996:	0e 30       	R1 = R6;
ffa03998:	02 e1 90 06 	R2.L = 0x690;		/* (1680)	R2=0xff900690(-7338352) */
ffa0399c:	28 05       	(R7:5) = [SP++];
ffa0399e:	ff e2 25 ed 	JUMP.L 0xffa013e8 <_strcpy_>;
ffa039a2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900690(-7338352) */
ffa039a6:	0e 30       	R1 = R6;
ffa039a8:	02 e1 74 06 	R2.L = 0x674;		/* (1652)	R2=0xff900674(-7338380) */
ffa039ac:	ff e3 1e ed 	CALL 0xffa013e8 <_strcpy_>;
ffa039b0:	e4 2f       	JUMP.S 0xffa03978 <_htmlCursorOption+0x28>;
	...

ffa039b4 <_htmlCursorSelect>:
ffa039b4:	60 05       	[--SP] = (R7:4);
ffa039b6:	3a 30       	R7 = R2;
ffa039b8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900674(-7338380) */
ffa039bc:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa039c0:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa039c4:	7e a2 00 00 
ffa039c8:	02 e1 9c 06 	R2.L = 0x69c;		/* (1692)	R2=0xff90069c(-7338340) */
ffa039cc:	bc a2       	R4 = [FP + 0x28];
ffa039ce:	ff e3 0d ed 	CALL 0xffa013e8 <_strcpy_>;
ffa039d2:	17 30       	R2 = R7;
ffa039d4:	0d 30       	R1 = R5;
ffa039d6:	ff e3 09 ed 	CALL 0xffa013e8 <_strcpy_>;
ffa039da:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90069c(-7338340) */
ffa039de:	0d 30       	R1 = R5;
ffa039e0:	02 e1 a8 06 	R2.L = 0x6a8;		/* (1704)	R2=0xff9006a8(-7338328) */
ffa039e4:	ff e3 02 ed 	CALL 0xffa013e8 <_strcpy_>;
ffa039e8:	0d 30       	R1 = R5;
ffa039ea:	16 30       	R2 = R6;
ffa039ec:	ff e3 fe ec 	CALL 0xffa013e8 <_strcpy_>;
ffa039f0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006a8(-7338328) */
ffa039f4:	0d 30       	R1 = R5;
ffa039f6:	02 e1 c4 06 	R2.L = 0x6c4;		/* (1732)	R2=0xff9006c4(-7338300) */
ffa039fa:	ff e3 f7 ec 	CALL 0xffa013e8 <_strcpy_>;
ffa039fe:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03a00:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa03a04:	f4 b0 00 00 
ffa03a08:	17 30       	R2 = R7;
ffa03a0a:	ff e3 a3 ff 	CALL 0xffa03950 <_htmlCursorOption>;
ffa03a0e:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03a10:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03a12:	0f 08       	CC = R7 == R1;
ffa03a14:	f6 17       	IF !CC JUMP 0xffa03a00 <_htmlCursorSelect+0x4c> (BP);
ffa03a16:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c4(-7338300) */
ffa03a1a:	01 e8 00 00 	UNLINK;
ffa03a1e:	0d 30       	R1 = R5;
ffa03a20:	02 e1 c8 06 	R2.L = 0x6c8;		/* (1736)	R2=0xff9006c8(-7338296) */
ffa03a24:	20 05       	(R7:4) = [SP++];
ffa03a26:	ff e2 e1 ec 	JUMP.L 0xffa013e8 <_strcpy_>;
	...

ffa03a2c <_htmlDefault>:
ffa03a2c:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03a2e:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03a32:	77 30       	R6 = FP;
ffa03a34:	e6 67       	R6 += -0x4;		/* ( -4) */
ffa03a36:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a38:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c8(-7338296) */
ffa03a3c:	f0 bb       	[FP -0x4] = R0;
ffa03a3e:	0e 30       	R1 = R6;
ffa03a40:	02 e1 e0 06 	R2.L = 0x6e0;		/* (1760)	R2=0xff9006e0(-7338272) */
ffa03a44:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03a48:	ff e3 d0 ec 	CALL 0xffa013e8 <_strcpy_>;
ffa03a4c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03a50:	0e 30       	R1 = R6;
ffa03a52:	ff e3 55 ff 	CALL 0xffa038fc <_htmlDiv>;
ffa03a56:	0e 30       	R1 = R6;
ffa03a58:	ff e3 48 ff 	CALL 0xffa038e8 <_htmlForm>;
ffa03a5c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03a60:	0e 30       	R1 = R6;
ffa03a62:	02 e1 30 07 	R2.L = 0x730;		/* (1840)	R2=0xff900730(-7338192) */
ffa03a66:	ff e3 c1 ec 	CALL 0xffa013e8 <_strcpy_>;
ffa03a6a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f50 <_TcpSeqClient> */
ffa03a6e:	0a e1 c8 0b 	P2.L = 0xbc8;		/* (3016)	P2=0xff900bc8 <_g_streamEnabled> */
ffa03a72:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03a76:	10 99 00 00 
ffa03a7a:	00 0c       	CC = R0 == 0x0;
ffa03a7c:	2c 1d       	IF CC JUMP 0xffa03cd4 <_htmlDefault+0x2a8> (BP);
ffa03a7e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900730(-7338192) */
ffa03a82:	01 30       	R0 = R1;
ffa03a84:	02 e1 80 07 	R2.L = 0x780;		/* (1920)	R2=0xff900780(-7338112) */
ffa03a88:	0e 30       	R1 = R6;
ffa03a8a:	ff e3 af ec 	CALL 0xffa013e8 <_strcpy_>;
ffa03a8e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900780(-7338112) */
ffa03a92:	0e 30       	R1 = R6;
ffa03a94:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03a98:	ff e3 a8 ec 	CALL 0xffa013e8 <_strcpy_>;
ffa03a9c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03aa0:	0e 30       	R1 = R6;
ffa03aa2:	ff e3 2d ff 	CALL 0xffa038fc <_htmlDiv>;
ffa03aa6:	0e 30       	R1 = R6;
ffa03aa8:	ff e3 20 ff 	CALL 0xffa038e8 <_htmlForm>;
ffa03aac:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03ab0:	0e 30       	R1 = R6;
ffa03ab2:	02 e1 ac 07 	R2.L = 0x7ac;		/* (1964)	R2=0xff9007ac(-7338068) */
ffa03ab6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f4c <_TcpSeqHost> */
ffa03aba:	ff e3 97 ec 	CALL 0xffa013e8 <_strcpy_>;
ffa03abe:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03ac0:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa03ac2:	0d e1 78 0e 	P5.L = 0xe78;		/* (3704)	P5=0xff900e78 <_NetDataDestIP> */
ffa03ac6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007ac(-7338068) */
ffa03aca:	0e 30       	R1 = R6;
ffa03acc:	02 e1 c8 07 	R2.L = 0x7c8;		/* (1992)	R2=0xff9007c8(-7338040) */
ffa03ad0:	ff e3 8c ec 	CALL 0xffa013e8 <_strcpy_>;
ffa03ad4:	17 30       	R2 = R7;
ffa03ad6:	0e 30       	R1 = R6;
ffa03ad8:	ff e3 ee ed 	CALL 0xffa016b4 <_strprintf_int>;
ffa03adc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007c8(-7338040) */
ffa03ae0:	0e 30       	R1 = R6;
ffa03ae2:	02 e1 e4 07 	R2.L = 0x7e4;		/* (2020)	R2=0xff9007e4(-7338012) */
ffa03ae6:	ff e3 81 ec 	CALL 0xffa013e8 <_strcpy_>;
ffa03aea:	2a 91       	R2 = [P5];
ffa03aec:	6a 40       	R2 >>= R5;
ffa03aee:	52 43       	R2 = R2.B (Z);
ffa03af0:	0e 30       	R1 = R6;
ffa03af2:	ff e3 e1 ed 	CALL 0xffa016b4 <_strprintf_int>;
ffa03af6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007e4(-7338012) */
ffa03afa:	0e 30       	R1 = R6;
ffa03afc:	02 e1 f8 07 	R2.L = 0x7f8;		/* (2040)	R2=0xff9007f8(-7337992) */
ffa03b00:	ff e3 74 ec 	CALL 0xffa013e8 <_strcpy_>;
ffa03b04:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03b06:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03b08:	0f 08       	CC = R7 == R1;
ffa03b0a:	45 64       	R5 += 0x8;		/* (  8) */
ffa03b0c:	dd 17       	IF !CC JUMP 0xffa03ac6 <_htmlDefault+0x9a> (BP);
ffa03b0e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007f8(-7337992) */
ffa03b12:	0e 30       	R1 = R6;
ffa03b14:	02 e1 00 08 	R2.L = 0x800;		/* (2048)	R2=0xff900800(-7337984) */
ffa03b18:	ff e3 68 ec 	CALL 0xffa013e8 <_strcpy_>;
ffa03b1c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900800(-7337984) */
ffa03b20:	0e 30       	R1 = R6;
ffa03b22:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03b26:	ff e3 61 ec 	CALL 0xffa013e8 <_strcpy_>;
ffa03b2a:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03b2e:	0e 30       	R1 = R6;
ffa03b30:	ff e3 e6 fe 	CALL 0xffa038fc <_htmlDiv>;
ffa03b34:	0e 30       	R1 = R6;
ffa03b36:	ff e3 d9 fe 	CALL 0xffa038e8 <_htmlForm>;
ffa03b3a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03b3e:	0e 30       	R1 = R6;
ffa03b40:	02 e1 24 08 	R2.L = 0x824;		/* (2084)	R2=0xff900824(-7337948) */
ffa03b44:	ff e3 52 ec 	CALL 0xffa013e8 <_strcpy_>;
ffa03b48:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bc8 */
ffa03b4c:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03b50:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03b54:	10 99 00 00 
ffa03b58:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03b5a:	c6 1c       	IF CC JUMP 0xffa03ce6 <_htmlDefault+0x2ba> (BP);
ffa03b5c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900824(-7337948) */
ffa03b60:	01 30       	R0 = R1;
ffa03b62:	02 e1 8c 07 	R2.L = 0x78c;		/* (1932)	R2=0xff90078c(-7338100) */
ffa03b66:	0e 30       	R1 = R6;
ffa03b68:	ff e3 40 ec 	CALL 0xffa013e8 <_strcpy_>;
ffa03b6c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90078c(-7338100) */
ffa03b70:	0e 30       	R1 = R6;
ffa03b72:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03b76:	ff e3 39 ec 	CALL 0xffa013e8 <_strcpy_>;
ffa03b7a:	0e 30       	R1 = R6;
ffa03b7c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03b80:	ff e3 be fe 	CALL 0xffa038fc <_htmlDiv>;
ffa03b84:	0e 30       	R1 = R6;
ffa03b86:	ff e3 b1 fe 	CALL 0xffa038e8 <_htmlForm>;
ffa03b8a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03b8e:	0e 30       	R1 = R6;
ffa03b90:	02 e1 64 08 	R2.L = 0x864;		/* (2148)	R2=0xff900864(-7337884) */
ffa03b94:	ff e3 2a ec 	CALL 0xffa013e8 <_strcpy_>;
ffa03b98:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa03b9c:	01 e1 94 08 	R1.L = 0x894;		/* (2196)	R1=0xff900894(-7337836) */
ffa03ba0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900864(-7337884) */
ffa03ba4:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa03ba8:	f1 b0 00 00 
ffa03bac:	02 e1 88 08 	R2.L = 0x888;		/* (2184)	R2=0xff900888(-7337848) */
ffa03bb0:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03bb4:	37 b1 00 00 
ffa03bb8:	ff e3 fe fe 	CALL 0xffa039b4 <_htmlCursorSelect>;
ffa03bbc:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900894(-7337836) */
ffa03bc0:	01 e1 ac 08 	R1.L = 0x8ac;		/* (2220)	R1=0xff9008ac(-7337812) */
ffa03bc4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900888(-7337848) */
ffa03bc8:	f1 b0       	[SP + 0xc] = R1;
ffa03bca:	02 e1 a0 08 	R2.L = 0x8a0;		/* (2208)	R2=0xff9008a0(-7337824) */
ffa03bce:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03bd2:	37 b1 00 00 
ffa03bd6:	ff e3 ef fe 	CALL 0xffa039b4 <_htmlCursorSelect>;
ffa03bda:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008ac(-7337812) */
ffa03bde:	01 e1 c4 08 	R1.L = 0x8c4;		/* (2244)	R1=0xff9008c4(-7337788) */
ffa03be2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a0(-7337824) */
ffa03be6:	f1 b0       	[SP + 0xc] = R1;
ffa03be8:	02 e1 b8 08 	R2.L = 0x8b8;		/* (2232)	R2=0xff9008b8(-7337800) */
ffa03bec:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03bf0:	37 b1 00 00 
ffa03bf4:	ff e3 e0 fe 	CALL 0xffa039b4 <_htmlCursorSelect>;
ffa03bf8:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008c4(-7337788) */
ffa03bfc:	01 e1 d8 08 	R1.L = 0x8d8;		/* (2264)	R1=0xff9008d8(-7337768) */
ffa03c00:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008b8(-7337800) */
ffa03c04:	f1 b0       	[SP + 0xc] = R1;
ffa03c06:	02 e1 d0 08 	R2.L = 0x8d0;		/* (2256)	R2=0xff9008d0(-7337776) */
ffa03c0a:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03c0e:	37 b1 00 00 
ffa03c12:	ff e3 d1 fe 	CALL 0xffa039b4 <_htmlCursorSelect>;
ffa03c16:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008d0(-7337776) */
ffa03c1a:	0e 30       	R1 = R6;
ffa03c1c:	02 e1 e4 08 	R2.L = 0x8e4;		/* (2276)	R2=0xff9008e4(-7337756) */
ffa03c20:	ff e3 e4 eb 	CALL 0xffa013e8 <_strcpy_>;
ffa03c24:	0e 30       	R1 = R6;
ffa03c26:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03c2a:	ff e3 69 fe 	CALL 0xffa038fc <_htmlDiv>;
ffa03c2e:	0e 30       	R1 = R6;
ffa03c30:	ff e3 5c fe 	CALL 0xffa038e8 <_htmlForm>;
ffa03c34:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03c38:	0e 30       	R1 = R6;
ffa03c3a:	02 e1 20 09 	R2.L = 0x920;		/* (2336)	R2=0xff900920(-7337696) */
ffa03c3e:	ff e3 d5 eb 	CALL 0xffa013e8 <_strcpy_>;
ffa03c42:	0e 30       	R1 = R6;
ffa03c44:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03c48:	ff e3 5a fe 	CALL 0xffa038fc <_htmlDiv>;
ffa03c4c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03c50:	0e 30       	R1 = R6;
ffa03c52:	02 e1 78 09 	R2.L = 0x978;		/* (2424)	R2=0xff900978(-7337608) */
ffa03c56:	ff e3 c9 eb 	CALL 0xffa013e8 <_strcpy_>;
ffa03c5a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900978(-7337608) */
ffa03c5e:	0e 30       	R1 = R6;
ffa03c60:	02 e1 a0 09 	R2.L = 0x9a0;		/* (2464)	R2=0xff9009a0(-7337568) */
ffa03c64:	ff e3 c2 eb 	CALL 0xffa013e8 <_strcpy_>;
ffa03c68:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009a0(-7337568) */
ffa03c6c:	0e 30       	R1 = R6;
ffa03c6e:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03c72:	ff e3 bb eb 	CALL 0xffa013e8 <_strcpy_>;
ffa03c76:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900798(-7338088) */
ffa03c7a:	0e 30       	R1 = R6;
ffa03c7c:	02 e1 e8 09 	R2.L = 0x9e8;		/* (2536)	R2=0xff9009e8(-7337496) */
ffa03c80:	ff e3 b4 eb 	CALL 0xffa013e8 <_strcpy_>;
ffa03c84:	0e 30       	R1 = R6;
ffa03c86:	22 e1 75 ff 	R2 = -0x8b (X);		/*		R2=0xffffff75(-139) */
ffa03c8a:	ff e3 15 ed 	CALL 0xffa016b4 <_strprintf_int>;
ffa03c8e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ff75(-7274635) */
ffa03c92:	0e 30       	R1 = R6;
ffa03c94:	02 e1 b0 00 	R2.L = 0xb0;		/* (176)	R2=0xff9000b0(-7339856) */
ffa03c98:	ff e3 a8 eb 	CALL 0xffa013e8 <_strcpy_>;
ffa03c9c:	0e 30       	R1 = R6;
ffa03c9e:	92 62       	R2 = -0x2e (X);		/*		R2=0xffffffd2(-46) */
ffa03ca0:	ff e3 0a ed 	CALL 0xffa016b4 <_strprintf_int>;
ffa03ca4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ffd2(-7274542) */
ffa03ca8:	0e 30       	R1 = R6;
ffa03caa:	02 e1 88 00 	R2.L = 0x88;		/* (136)	R2=0xff900088(-7339896) */
ffa03cae:	ff e3 9d eb 	CALL 0xffa013e8 <_strcpy_>;
ffa03cb2:	0e 30       	R1 = R6;
ffa03cb4:	22 e1 d0 fd 	R2 = -0x230 (X);		/*		R2=0xfffffdd0(-560) */
ffa03cb8:	ff e3 fe ec 	CALL 0xffa016b4 <_strprintf_int>;
ffa03cbc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90fdd0(-7275056) */
ffa03cc0:	0e 30       	R1 = R6;
ffa03cc2:	02 e1 f4 09 	R2.L = 0x9f4;		/* (2548)	R2=0xff9009f4(-7337484) */
ffa03cc6:	ff e3 91 eb 	CALL 0xffa013e8 <_strcpy_>;
ffa03cca:	f0 b9       	R0 = [FP -0x4];
ffa03ccc:	01 e8 00 00 	UNLINK;
ffa03cd0:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03cd2:	10 00       	RTS;
ffa03cd4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009f4(-7337484) */
ffa03cd8:	01 30       	R0 = R1;
ffa03cda:	02 e1 8c 07 	R2.L = 0x78c;		/* (1932)	R2=0xff90078c(-7338100) */
ffa03cde:	0e 30       	R1 = R6;
ffa03ce0:	ff e3 84 eb 	CALL 0xffa013e8 <_strcpy_>;
ffa03ce4:	d5 2e       	JUMP.S 0xffa03a8e <_htmlDefault+0x62>;
ffa03ce6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90078c(-7338100) */
ffa03cea:	01 30       	R0 = R1;
ffa03cec:	02 e1 80 07 	R2.L = 0x780;		/* (1920)	R2=0xff900780(-7338112) */
ffa03cf0:	0e 30       	R1 = R6;
ffa03cf2:	ff e3 7b eb 	CALL 0xffa013e8 <_strcpy_>;
ffa03cf6:	3b 2f       	JUMP.S 0xffa03b6c <_htmlDefault+0x140>;

ffa03cf8 <_httpHeader>:
ffa03cf8:	78 05       	[--SP] = (R7:7);
ffa03cfa:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03cfe:	7f 30       	R7 = FP;
ffa03d00:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03d02:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d04:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900780(-7338112) */
ffa03d08:	f0 bb       	[FP -0x4] = R0;
ffa03d0a:	0f 30       	R1 = R7;
ffa03d0c:	02 e1 0c 0a 	R2.L = 0xa0c;		/* (2572)	R2=0xff900a0c(-7337460) */
ffa03d10:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03d14:	ff e3 6a eb 	CALL 0xffa013e8 <_strcpy_>;
ffa03d18:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a0c(-7337460) */
ffa03d1c:	0f 30       	R1 = R7;
ffa03d1e:	02 e1 20 0a 	R2.L = 0xa20;		/* (2592)	R2=0xff900a20(-7337440) */
ffa03d22:	ff e3 63 eb 	CALL 0xffa013e8 <_strcpy_>;
ffa03d26:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a20(-7337440) */
ffa03d2a:	0f 30       	R1 = R7;
ffa03d2c:	02 e1 34 0a 	R2.L = 0xa34;		/* (2612)	R2=0xff900a34(-7337420) */
ffa03d30:	ff e3 5c eb 	CALL 0xffa013e8 <_strcpy_>;
ffa03d34:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa03d38:	0a e1 6c 0f 	P2.L = 0xf6c;		/* (3948)	P2=0xff900f6c <_g_httpContentLen> */
ffa03d3c:	12 91       	R2 = [P2];
ffa03d3e:	0f 30       	R1 = R7;
ffa03d40:	ff e3 ba ec 	CALL 0xffa016b4 <_strprintf_int>;
ffa03d44:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a34(-7337420) */
ffa03d48:	0f 30       	R1 = R7;
ffa03d4a:	02 e1 48 0a 	R2.L = 0xa48;		/* (2632)	R2=0xff900a48(-7337400) */
ffa03d4e:	ff e3 4d eb 	CALL 0xffa013e8 <_strcpy_>;
ffa03d52:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f6c <_g_httpContentLen> */
ffa03d56:	f0 b9       	R0 = [FP -0x4];
ffa03d58:	0a e1 68 0f 	P2.L = 0xf68;		/* (3944)	P2=0xff900f68 <_g_httpHeaderLen> */
ffa03d5c:	10 93       	[P2] = R0;
ffa03d5e:	01 e8 00 00 	UNLINK;
ffa03d62:	38 05       	(R7:7) = [SP++];
ffa03d64:	10 00       	RTS;
	...

ffa03d68 <_htmlGeneric>:
ffa03d68:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03d6c:	10 30       	R2 = R0;
ffa03d6e:	4f 30       	R1 = FP;
ffa03d70:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03d72:	f0 bb       	[FP -0x4] = R0;
ffa03d74:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03d76:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03d7a:	ff e3 37 eb 	CALL 0xffa013e8 <_strcpy_>;
ffa03d7e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f68 <_g_httpHeaderLen> */
ffa03d82:	f0 b9       	R0 = [FP -0x4];
ffa03d84:	0a e1 6c 0f 	P2.L = 0xf6c;		/* (3948)	P2=0xff900f6c <_g_httpContentLen> */
ffa03d88:	10 93       	[P2] = R0;
ffa03d8a:	ff e3 b7 ff 	CALL 0xffa03cf8 <_httpHeader>;
ffa03d8e:	f0 b9       	R0 = [FP -0x4];
ffa03d90:	01 e8 00 00 	UNLINK;
ffa03d94:	10 00       	RTS;
	...

ffa03d98 <_httpResp>:
ffa03d98:	60 05       	[--SP] = (R7:4);
ffa03d9a:	30 30       	R6 = R0;
ffa03d9c:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa03d9e:	01 09       	CC = R1 <= R0;
ffa03da0:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa03da4:	39 30       	R7 = R1;
ffa03da6:	21 10       	IF !CC JUMP 0xffa03de8 <_httpResp+0x50>;
ffa03da8:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa03daa:	0f 09       	CC = R7 <= R1;
ffa03dac:	34 10       	IF !CC JUMP 0xffa03e14 <_httpResp+0x7c>;
ffa03dae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa03db2:	00 e1 04 0a 	R0.L = 0xa04;		/* (2564)	R0=0xff900a04(-7337468) */
ffa03db6:	0e 30       	R1 = R6;
ffa03db8:	17 30       	R2 = R7;
ffa03dba:	ff e3 85 eb 	CALL 0xffa014c4 <_substr>;
ffa03dbe:	00 0c       	CC = R0 == 0x0;
ffa03dc0:	06 10       	IF !CC JUMP 0xffa03dcc <_httpResp+0x34>;
ffa03dc2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03dc4:	01 e8 00 00 	UNLINK;
ffa03dc8:	20 05       	(R7:4) = [SP++];
ffa03dca:	10 00       	RTS;
ffa03dcc:	ff e3 b0 fd 	CALL 0xffa0392c <_html404>;
ffa03dd0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f6c <_g_httpContentLen> */
ffa03dd4:	0a e1 6c 0f 	P2.L = 0xf6c;		/* (3948)	P2=0xff900f6c <_g_httpContentLen> */
ffa03dd8:	10 93       	[P2] = R0;
ffa03dda:	ff e3 8f ff 	CALL 0xffa03cf8 <_httpHeader>;
ffa03dde:	01 e8 00 00 	UNLINK;
ffa03de2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03de4:	20 05       	(R7:4) = [SP++];
ffa03de6:	10 00       	RTS;
ffa03de8:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa03dec:	06 30       	R0 = R6;
ffa03dee:	01 e1 68 0a 	R1.L = 0xa68;		/* (2664)	R1=0xff900a68(-7337368) */
ffa03df2:	ff e3 3b eb 	CALL 0xffa01468 <_strcmp>;
ffa03df6:	00 0c       	CC = R0 == 0x0;
ffa03df8:	d8 1f       	IF CC JUMP 0xffa03da8 <_httpResp+0x10> (BP);
ffa03dfa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03dfe:	00 e1 04 0a 	R0.L = 0xa04;		/* (2564)	R0=0xff900a04(-7337468) */
ffa03e02:	0e 30       	R1 = R6;
ffa03e04:	17 30       	R2 = R7;
ffa03e06:	ff e3 5f eb 	CALL 0xffa014c4 <_substr>;
ffa03e0a:	00 0c       	CC = R0 == 0x0;
ffa03e0c:	db 1f       	IF CC JUMP 0xffa03dc2 <_httpResp+0x2a> (BP);
ffa03e0e:	ff e3 0f fe 	CALL 0xffa03a2c <_htmlDefault>;
ffa03e12:	df 2f       	JUMP.S 0xffa03dd0 <_httpResp+0x38>;
ffa03e14:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a04(-7337468) */
ffa03e18:	00 e1 74 0a 	R0.L = 0xa74;		/* (2676)	R0=0xff900a74(-7337356) */
ffa03e1c:	0e 30       	R1 = R6;
ffa03e1e:	17 30       	R2 = R7;
ffa03e20:	ff e3 52 eb 	CALL 0xffa014c4 <_substr>;
ffa03e24:	00 0c       	CC = R0 == 0x0;
ffa03e26:	3c 1c       	IF CC JUMP 0xffa03e9e <_httpResp+0x106> (BP);
ffa03e28:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a74(-7337356) */
ffa03e2c:	00 e1 80 0a 	R0.L = 0xa80;		/* (2688)	R0=0xff900a80(-7337344) */
ffa03e30:	0e 30       	R1 = R6;
ffa03e32:	17 30       	R2 = R7;
ffa03e34:	ff e3 48 eb 	CALL 0xffa014c4 <_substr>;
ffa03e38:	00 0c       	CC = R0 == 0x0;
ffa03e3a:	c4 1f       	IF CC JUMP 0xffa03dc2 <_httpResp+0x2a> (BP);
ffa03e3c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa03e3e:	06 50       	R0 = R6 + R0;
ffa03e40:	ff e3 62 ec 	CALL 0xffa01704 <_atoi>;
ffa03e44:	08 30       	R1 = R0;
ffa03e46:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa03e4a:	00 67       	R0 += -0x20;		/* (-32) */
ffa03e4c:	10 0a       	CC = R0 <= R2 (IU);
ffa03e4e:	24 11       	IF !CC JUMP 0xffa04096 <_httpResp+0x2fe>;
ffa03e50:	82 c6 19 84 	R2 = R1 << 0x3;
ffa03e54:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800f6c */
ffa03e58:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03e5c:	02 0d       	CC = R2 <= 0x0;
ffa03e5e:	13 91       	R3 = [P2];
ffa03e60:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa03e64:	14 18       	IF CC JUMP 0xffa03e8c <_httpResp+0xf4>;
ffa03e66:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa03e6a:	28 4f       	R0 <<= 0x5;
ffa03e6c:	03 54       	R0 = R3 & R0;
ffa03e6e:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa03e70:	38 52       	R0 = R0 - R7;
ffa03e72:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa03e76:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03e78:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa03e7c:	18 54       	R0 = R0 & R3;
ffa03e7e:	10 32       	P2 = R0;
ffa03e80:	09 64       	R1 += 0x1;		/* (  1) */
ffa03e82:	0a 08       	CC = R2 == R1;
ffa03e84:	10 90       	R0 = [P2++];
ffa03e86:	08 92       	[P1++] = R0;
ffa03e88:	42 30       	R0 = P2;
ffa03e8a:	f9 17       	IF !CC JUMP 0xffa03e7c <_httpResp+0xe4> (BP);
ffa03e8c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900804 */
ffa03e90:	0a e1 6c 0f 	P2.L = 0xf6c;		/* (3948)	P2=0xff900f6c <_g_httpContentLen> */
ffa03e94:	17 93       	[P2] = R7;
ffa03e96:	ff e3 31 ff 	CALL 0xffa03cf8 <_httpHeader>;
ffa03e9a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03e9c:	94 2f       	JUMP.S 0xffa03dc4 <_httpResp+0x2c>;
ffa03e9e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03ea2:	00 e1 b4 0a 	R0.L = 0xab4;		/* (2740)	R0=0xff900ab4(-7337292) */
ffa03ea6:	0e 30       	R1 = R6;
ffa03ea8:	17 30       	R2 = R7;
ffa03eaa:	ff e3 0d eb 	CALL 0xffa014c4 <_substr>;
ffa03eae:	00 0c       	CC = R0 == 0x0;
ffa03eb0:	7f 1f       	IF CC JUMP 0xffa03dae <_httpResp+0x16> (BP);
ffa03eb2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ab4(-7337292) */
ffa03eb6:	0e 30       	R1 = R6;
ffa03eb8:	17 30       	R2 = R7;
ffa03eba:	00 e1 b4 0a 	R0.L = 0xab4;		/* (2740)	R0=0xff900ab4(-7337292) */
ffa03ebe:	ff e3 03 eb 	CALL 0xffa014c4 <_substr>;
ffa03ec2:	86 51       	R6 = R6 + R0;
ffa03ec4:	47 53       	R5 = R7 - R0;
ffa03ec6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ab4(-7337292) */
ffa03eca:	00 e1 bc 0a 	R0.L = 0xabc;		/* (2748)	R0=0xff900abc(-7337284) */
ffa03ece:	0e 30       	R1 = R6;
ffa03ed0:	15 30       	R2 = R5;
ffa03ed2:	ff e3 f9 ea 	CALL 0xffa014c4 <_substr>;
ffa03ed6:	00 0c       	CC = R0 == 0x0;
ffa03ed8:	10 11       	IF !CC JUMP 0xffa040f8 <_httpResp+0x360>;
ffa03eda:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03edc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900abc(-7337284) */
ffa03ee0:	00 e1 e0 0a 	R0.L = 0xae0;		/* (2784)	R0=0xff900ae0(-7337248) */
ffa03ee4:	0e 30       	R1 = R6;
ffa03ee6:	15 30       	R2 = R5;
ffa03ee8:	ff e3 ee ea 	CALL 0xffa014c4 <_substr>;
ffa03eec:	00 0c       	CC = R0 == 0x0;
ffa03eee:	e2 10       	IF !CC JUMP 0xffa040b2 <_httpResp+0x31a>;
ffa03ef0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ae0(-7337248) */
ffa03ef4:	0e 30       	R1 = R6;
ffa03ef6:	00 e1 ec 0a 	R0.L = 0xaec;		/* (2796)	R0=0xff900aec(-7337236) */
ffa03efa:	15 30       	R2 = R5;
ffa03efc:	ff e3 e4 ea 	CALL 0xffa014c4 <_substr>;
ffa03f00:	00 0c       	CC = R0 == 0x0;
ffa03f02:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900aec(-7337236) */
ffa03f06:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03f08:	0e 30       	R1 = R6;
ffa03f0a:	15 30       	R2 = R5;
ffa03f0c:	00 e1 f8 0a 	R0.L = 0xaf8;		/* (2808)	R0=0xff900af8(-7337224) */
ffa03f10:	27 06       	IF !CC R4 = R7;
ffa03f12:	ff e3 d9 ea 	CALL 0xffa014c4 <_substr>;
ffa03f16:	00 0c       	CC = R0 == 0x0;
ffa03f18:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900af8(-7337224) */
ffa03f1c:	0e 30       	R1 = R6;
ffa03f1e:	15 30       	R2 = R5;
ffa03f20:	00 e1 04 0b 	R0.L = 0xb04;		/* (2820)	R0=0xff900b04(-7337212) */
ffa03f24:	27 06       	IF !CC R4 = R7;
ffa03f26:	ff e3 cf ea 	CALL 0xffa014c4 <_substr>;
ffa03f2a:	00 0c       	CC = R0 == 0x0;
ffa03f2c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b04(-7337212) */
ffa03f30:	0e 30       	R1 = R6;
ffa03f32:	15 30       	R2 = R5;
ffa03f34:	00 e1 10 0b 	R0.L = 0xb10;		/* (2832)	R0=0xff900b10(-7337200) */
ffa03f38:	27 06       	IF !CC R4 = R7;
ffa03f3a:	ff e3 c5 ea 	CALL 0xffa014c4 <_substr>;
ffa03f3e:	00 0c       	CC = R0 == 0x0;
ffa03f40:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b10(-7337200) */
ffa03f44:	00 e1 1c 0b 	R0.L = 0xb1c;		/* (2844)	R0=0xff900b1c(-7337188) */
ffa03f48:	0e 30       	R1 = R6;
ffa03f4a:	15 30       	R2 = R5;
ffa03f4c:	27 06       	IF !CC R4 = R7;
ffa03f4e:	ff e3 bb ea 	CALL 0xffa014c4 <_substr>;
ffa03f52:	00 0c       	CC = R0 == 0x0;
ffa03f54:	15 11       	IF !CC JUMP 0xffa0417e <_httpResp+0x3e6>;
ffa03f56:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b1c(-7337188) */
ffa03f5a:	00 e1 24 0b 	R0.L = 0xb24;		/* (2852)	R0=0xff900b24(-7337180) */
ffa03f5e:	0e 30       	R1 = R6;
ffa03f60:	15 30       	R2 = R5;
ffa03f62:	ff e3 b1 ea 	CALL 0xffa014c4 <_substr>;
ffa03f66:	00 0c       	CC = R0 == 0x0;
ffa03f68:	f6 10       	IF !CC JUMP 0xffa04154 <_httpResp+0x3bc>;
ffa03f6a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b24(-7337180) */
ffa03f6e:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa03f72:	0e 30       	R1 = R6;
ffa03f74:	15 30       	R2 = R5;
ffa03f76:	ff e3 a7 ea 	CALL 0xffa014c4 <_substr>;
ffa03f7a:	00 0c       	CC = R0 == 0x0;
ffa03f7c:	13 11       	IF !CC JUMP 0xffa041a2 <_httpResp+0x40a>;
ffa03f7e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b2c(-7337172) */
ffa03f82:	00 e1 34 0b 	R0.L = 0xb34;		/* (2868)	R0=0xff900b34(-7337164) */
ffa03f86:	0e 30       	R1 = R6;
ffa03f88:	15 30       	R2 = R5;
ffa03f8a:	ff e3 9d ea 	CALL 0xffa014c4 <_substr>;
ffa03f8e:	00 0c       	CC = R0 == 0x0;
ffa03f90:	d1 10       	IF !CC JUMP 0xffa04132 <_httpResp+0x39a>;
ffa03f92:	20 43       	R0 = R4.B (X);
ffa03f94:	00 0c       	CC = R0 == 0x0;
ffa03f96:	3c 17       	IF !CC JUMP 0xffa03e0e <_httpResp+0x76> (BP);
ffa03f98:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b34(-7337164) */
ffa03f9c:	00 e1 3c 0b 	R0.L = 0xb3c;		/* (2876)	R0=0xff900b3c(-7337156) */
ffa03fa0:	0e 30       	R1 = R6;
ffa03fa2:	15 30       	R2 = R5;
ffa03fa4:	ff e3 90 ea 	CALL 0xffa014c4 <_substr>;
ffa03fa8:	00 0c       	CC = R0 == 0x0;
ffa03faa:	0c 1b       	IF CC JUMP 0xffa03dc2 <_httpResp+0x2a>;
ffa03fac:	7f 30       	R7 = FP;
ffa03fae:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03fb2:	57 5a       	P1 = FP + P2;
ffa03fb4:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03fb6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03fb8:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa03fba:	b2 e0 02 20 	LSETUP(0xffa03fbe <_httpResp+0x226>, 0xffa03fbe <_httpResp+0x226>) LC1 = P2;
ffa03fbe:	08 92       	[P1++] = R0;
ffa03fc0:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa03fc4:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03fc8:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa03fcc:	29 4f       	R1 <<= 0x5;
ffa03fce:	10 91       	R0 = [P2];
ffa03fd0:	08 54       	R0 = R0 & R1;
ffa03fd2:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03fd4:	81 4f       	R1 <<= 0x10;
ffa03fd6:	08 50       	R0 = R0 + R1;
ffa03fd8:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03fda:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa03fde:	88 54       	R2 = R0 & R1;
ffa03fe0:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa03fe4:	b2 e0 12 10 	LSETUP(0xffa03fe8 <_httpResp+0x250>, 0xffa04008 <_httpResp+0x270>) LC1 = P1;
ffa03fe8:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03fec:	97 5a       	P2 = FP + P2;
ffa03fee:	02 32       	P0 = R2;
ffa03ff0:	11 91       	R1 = [P2];
ffa03ff2:	12 64       	R2 += 0x2;		/* (  2) */
ffa03ff4:	00 94       	R0 = W[P0++] (Z);
ffa03ff6:	41 50       	R1 = R1 + R0;
ffa03ff8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03ffa:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa03ffe:	11 92       	[P2++] = R1;
ffa04000:	82 54       	R2 = R2 & R0;
ffa04002:	42 30       	R0 = P2;
ffa04004:	38 08       	CC = R0 == R7;
ffa04006:	f4 17       	IF !CC JUMP 0xffa03fee <_httpResp+0x256> (BP);
ffa04008:	00 00       	NOP;
ffa0400a:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa0400e:	97 5a       	P2 = FP + P2;
ffa04010:	00 00       	NOP;
ffa04012:	10 91       	R0 = [P2];
ffa04014:	58 4d       	R0 >>>= 0xb;
ffa04016:	10 92       	[P2++] = R0;
ffa04018:	4a 30       	R1 = P2;
ffa0401a:	39 08       	CC = R1 == R7;
ffa0401c:	fa 17       	IF !CC JUMP 0xffa04010 <_httpResp+0x278> (BP);
ffa0401e:	ff e3 07 fd 	CALL 0xffa03a2c <_htmlDefault>;
ffa04022:	68 67       	R0 += -0x13;		/* (-19) */
ffa04024:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa04028:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80 <_end>(-7336064) */
ffa0402c:	f0 bb       	[FP -0x4] = R0;
ffa0402e:	02 e1 4c 0b 	R2.L = 0xb4c;		/* (2892)	R2=0xff900b4c(-7337140) */
ffa04032:	08 50       	R0 = R0 + R1;
ffa04034:	0f 30       	R1 = R7;
ffa04036:	ff e3 d9 e9 	CALL 0xffa013e8 <_strcpy_>;
ffa0403a:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa0403e:	f5 b8 00 00 
ffa04042:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b4c(-7337140) */
ffa04046:	0f 30       	R1 = R7;
ffa04048:	02 e1 58 0b 	R2.L = 0xb58;		/* (2904)	R2=0xff900b58(-7337128) */
ffa0404c:	ff e3 ce e9 	CALL 0xffa013e8 <_strcpy_>;
ffa04050:	16 30       	R2 = R6;
ffa04052:	0f 30       	R1 = R7;
ffa04054:	ff e3 30 eb 	CALL 0xffa016b4 <_strprintf_int>;
ffa04058:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b58(-7337128) */
ffa0405c:	0f 30       	R1 = R7;
ffa0405e:	02 e1 6c 0b 	R2.L = 0xb6c;		/* (2924)	R2=0xff900b6c(-7337108) */
ffa04062:	ff e3 c3 e9 	CALL 0xffa013e8 <_strcpy_>;
ffa04066:	0f 30       	R1 = R7;
ffa04068:	15 30       	R2 = R5;
ffa0406a:	ff e3 25 eb 	CALL 0xffa016b4 <_strprintf_int>;
ffa0406e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b6c(-7337108) */
ffa04072:	02 e1 7c 0b 	R2.L = 0xb7c;		/* (2940)	R2=0xff900b7c(-7337092) */
ffa04076:	0f 30       	R1 = R7;
ffa04078:	ff e3 b8 e9 	CALL 0xffa013e8 <_strcpy_>;
ffa0407c:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0407e:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa04080:	16 08       	CC = R6 == R2;
ffa04082:	e0 17       	IF !CC JUMP 0xffa04042 <_httpResp+0x2aa> (BP);
ffa04084:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa04088:	0f 30       	R1 = R7;
ffa0408a:	02 e1 88 0b 	R2.L = 0xb88;		/* (2952)	R2=0xff900b88(-7337080) */
ffa0408e:	ff e3 ad e9 	CALL 0xffa013e8 <_strcpy_>;
ffa04092:	f0 b9       	R0 = [FP -0x4];
ffa04094:	9e 2e       	JUMP.S 0xffa03dd0 <_httpResp+0x38>;
ffa04096:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04098:	4f 30       	R1 = FP;
ffa0409a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b88(-7337080) */
ffa0409e:	f0 bb       	[FP -0x4] = R0;
ffa040a0:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa040a2:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa040a6:	02 e1 88 0a 	R2.L = 0xa88;		/* (2696)	R2=0xff900a88(-7337336) */
ffa040aa:	ff e3 9f e9 	CALL 0xffa013e8 <_strcpy_>;
ffa040ae:	f0 b9       	R0 = [FP -0x4];
ffa040b0:	90 2e       	JUMP.S 0xffa03dd0 <_httpResp+0x38>;
ffa040b2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa040b6:	00 e1 cc 0a 	R0.L = 0xacc;		/* (2764)	R0=0xff900acc(-7337268) */
ffa040ba:	0e 30       	R1 = R6;
ffa040bc:	15 30       	R2 = R5;
ffa040be:	ff e3 03 ea 	CALL 0xffa014c4 <_substr>;
ffa040c2:	00 0c       	CC = R0 == 0x0;
ffa040c4:	08 1c       	IF CC JUMP 0xffa040d4 <_httpResp+0x33c> (BP);
ffa040c6:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa040ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa040cc:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa040d0:	10 9b       	B[P2] = R0;
ffa040d2:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa040d4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa040d8:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa040dc:	0e 30       	R1 = R6;
ffa040de:	15 30       	R2 = R5;
ffa040e0:	ff e3 f2 e9 	CALL 0xffa014c4 <_substr>;
ffa040e4:	00 0c       	CC = R0 == 0x0;
ffa040e6:	05 1f       	IF CC JUMP 0xffa03ef0 <_httpResp+0x158> (BP);
ffa040e8:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa040ec:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa040ee:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa040f2:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa040f4:	10 9b       	B[P2] = R0;
ffa040f6:	fd 2e       	JUMP.S 0xffa03ef0 <_httpResp+0x158>;
ffa040f8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa040fc:	00 e1 cc 0a 	R0.L = 0xacc;		/* (2764)	R0=0xff900acc(-7337268) */
ffa04100:	0e 30       	R1 = R6;
ffa04102:	15 30       	R2 = R5;
ffa04104:	ff e3 e0 e9 	CALL 0xffa014c4 <_substr>;
ffa04108:	00 0c       	CC = R0 == 0x0;
ffa0410a:	61 14       	IF !CC JUMP 0xffa041cc <_httpResp+0x434> (BP);
ffa0410c:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa0410e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900acc(-7337268) */
ffa04112:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa04116:	0e 30       	R1 = R6;
ffa04118:	15 30       	R2 = R5;
ffa0411a:	ff e3 d5 e9 	CALL 0xffa014c4 <_substr>;
ffa0411e:	00 0c       	CC = R0 == 0x0;
ffa04120:	de 1e       	IF CC JUMP 0xffa03edc <_httpResp+0x144> (BP);
ffa04122:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa04126:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04128:	0a e1 c8 0b 	P2.L = 0xbc8;		/* (3016)	P2=0xff900bc8 <_g_streamEnabled> */
ffa0412c:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0412e:	10 9b       	B[P2] = R0;
ffa04130:	d6 2e       	JUMP.S 0xffa03edc <_httpResp+0x144>;
ffa04132:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04134:	06 50       	R0 = R6 + R0;
ffa04136:	ff e3 e7 ea 	CALL 0xffa01704 <_atoi>;
ffa0413a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bc8 <_g_streamEnabled> */
ffa0413e:	0a e1 78 0e 	P2.L = 0xe78;		/* (3704)	P2=0xff900e78 <_NetDataDestIP> */
ffa04142:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04144:	11 91       	R1 = [P2];
ffa04146:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa0414a:	51 54       	R1 = R1 & R2;
ffa0414c:	c0 4f       	R0 <<= 0x18;
ffa0414e:	41 50       	R1 = R1 + R0;
ffa04150:	11 93       	[P2] = R1;
ffa04152:	5e 2e       	JUMP.S 0xffa03e0e <_httpResp+0x76>;
ffa04154:	86 51       	R6 = R6 + R0;
ffa04156:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04158:	45 53       	R5 = R5 - R0;
ffa0415a:	06 30       	R0 = R6;
ffa0415c:	ff e3 d4 ea 	CALL 0xffa01704 <_atoi>;
ffa04160:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e78 <_NetDataDestIP> */
ffa04164:	0a e1 78 0e 	P2.L = 0xe78;		/* (3704)	P2=0xff900e78 <_NetDataDestIP> */
ffa04168:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0416a:	11 91       	R1 = [P2];
ffa0416c:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa04170:	40 43       	R0 = R0.B (Z);
ffa04172:	51 54       	R1 = R1 & R2;
ffa04174:	40 4f       	R0 <<= 0x8;
ffa04176:	41 50       	R1 = R1 + R0;
ffa04178:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0417a:	11 93       	[P2] = R1;
ffa0417c:	f7 2e       	JUMP.S 0xffa03f6a <_httpResp+0x1d2>;
ffa0417e:	86 51       	R6 = R6 + R0;
ffa04180:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04182:	45 53       	R5 = R5 - R0;
ffa04184:	06 30       	R0 = R6;
ffa04186:	ff e3 bf ea 	CALL 0xffa01704 <_atoi>;
ffa0418a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e78 <_NetDataDestIP> */
ffa0418e:	0a e1 78 0e 	P2.L = 0xe78;		/* (3704)	P2=0xff900e78 <_NetDataDestIP> */
ffa04192:	11 91       	R1 = [P2];
ffa04194:	41 4d       	R1 >>>= 0x8;
ffa04196:	41 4f       	R1 <<= 0x8;
ffa04198:	40 43       	R0 = R0.B (Z);
ffa0419a:	08 50       	R0 = R0 + R1;
ffa0419c:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0419e:	10 93       	[P2] = R0;
ffa041a0:	db 2e       	JUMP.S 0xffa03f56 <_httpResp+0x1be>;
ffa041a2:	86 51       	R6 = R6 + R0;
ffa041a4:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa041a6:	45 53       	R5 = R5 - R0;
ffa041a8:	06 30       	R0 = R6;
ffa041aa:	ff e3 ad ea 	CALL 0xffa01704 <_atoi>;
ffa041ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e78 <_NetDataDestIP> */
ffa041b2:	0a e1 78 0e 	P2.L = 0xe78;		/* (3704)	P2=0xff900e78 <_NetDataDestIP> */
ffa041b6:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa041b8:	11 91       	R1 = [P2];
ffa041ba:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa041be:	40 43       	R0 = R0.B (Z);
ffa041c0:	51 54       	R1 = R1 & R2;
ffa041c2:	80 4f       	R0 <<= 0x10;
ffa041c4:	41 50       	R1 = R1 + R0;
ffa041c6:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa041c8:	11 93       	[P2] = R1;
ffa041ca:	da 2e       	JUMP.S 0xffa03f7e <_httpResp+0x1e6>;
ffa041cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e78 <_NetDataDestIP> */
ffa041d0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa041d2:	0a e1 c8 0b 	P2.L = 0xbc8;		/* (3016)	P2=0xff900bc8 <_g_streamEnabled> */
ffa041d6:	10 9b       	B[P2] = R0;
ffa041d8:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bc8 */
ffa041dc:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa041e0:	10 91       	R0 = [P2];
ffa041e2:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa041e4:	22 6c       	P2 += 0x4;		/* (  4) */
ffa041e6:	10 93       	[P2] = R0;
ffa041e8:	93 2f       	JUMP.S 0xffa0410e <_httpResp+0x376>;
	...

ffa041ec <_httpCollate>:
ffa041ec:	fd 05       	[--SP] = (R7:7, P5:5);
ffa041ee:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e78 <_NetDataDestIP> */
ffa041f2:	0d e1 70 0f 	P5.L = 0xf70;		/* (3952)	P5=0xff900f70 <_g_httpRxed> */
ffa041f6:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa041f8:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R1 = [P5] || NOP;
ffa041fc:	29 91 00 00 
ffa04200:	82 4f       	R2 <<= 0x10;
ffa04202:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa04206:	51 50       	R1 = R1 + R2;
ffa04208:	17 30       	R2 = R7;
ffa0420a:	ff e3 bf e8 	CALL 0xffa01388 <_memcpy_>;
ffa0420e:	28 91       	R0 = [P5];
ffa04210:	38 50       	R0 = R0 + R7;
ffa04212:	01 e8 00 00 	UNLINK;
ffa04216:	28 93       	[P5] = R0;
ffa04218:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0421a:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0421c:	10 00       	RTS;
	...

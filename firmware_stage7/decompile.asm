
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
ffa00178:	c2 25       	JUMP.S 0xffa00cfc <_main>;
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
ffa003f6:	00 e3 cd 07 	CALL 0xffa01390 <_printf_int>;
ffa003fa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa003fe:	00 e1 68 05 	R0.L = 0x568;		/* (1384)	R0=0xff900568(-7338648) */
ffa00402:	00 e3 ab 06 	CALL 0xffa01158 <_uart_str>;
ffa00406:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900568(-7338648) */
ffa0040a:	0d 30       	R1 = R5;
ffa0040c:	00 e1 14 00 	R0.L = 0x14;		/* ( 20)	R0=0xff900014(-7340012) */
ffa00410:	00 e3 0e 07 	CALL 0xffa0122c <_printf_hex_byte>;
ffa00414:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900014(-7340012) */
ffa00418:	00 e1 68 05 	R0.L = 0x568;		/* (1384)	R0=0xff900568(-7338648) */
ffa0041c:	00 e3 9e 06 	CALL 0xffa01158 <_uart_str>;
ffa00420:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900568(-7338648) */
ffa00424:	00 e1 20 00 	R0.L = 0x20;		/* ( 32)	R0=0xff900020(-7340000) */
ffa00428:	0f 30       	R1 = R7;
ffa0042a:	00 e3 01 07 	CALL 0xffa0122c <_printf_hex_byte>;
ffa0042e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa00432:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa00436:	2f 30       	R5 = R7;
ffa00438:	00 e3 90 06 	CALL 0xffa01158 <_uart_str>;
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
ffa004b8:	00 e3 6c 07 	CALL 0xffa01390 <_printf_int>;
ffa004bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002c(-7339988) */
ffa004c0:	ff 42       	R7 = R7.L (Z);
ffa004c2:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa004c6:	00 e3 49 06 	CALL 0xffa01158 <_uart_str>;
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
ffa0056e:	0d e1 28 0c 	P5.L = 0xc28;		/* (3112)	P5=0xff900c28 <_g_sampCh> */
ffa00572:	10 97       	W[P2] = R0;
ffa00574:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff90150c */
ffa00578:	68 99       	R0 = B[P5] (X);
ffa0057a:	08 e1 30 0c 	P0.L = 0xc30;		/* (3120)	P0=0xff900c30 <_g_sampR> */
ffa0057e:	46 43       	R6 = R0.B (Z);
ffa00580:	05 91       	R5 = [P0];
ffa00582:	23 e1 ff 01 	R3 = 0x1ff (X);		/*		R3=0x1ff(511) */
ffa00586:	6e 50       	R1 = R6 + R5;
ffa00588:	00 34       	I0 = R0;
ffa0058a:	19 54       	R0 = R1 & R3;
ffa0058c:	20 32       	P4 = R0;
ffa0058e:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900500 */
ffa00592:	09 e1 5c 0c 	P1.L = 0xc5c;		/* (3164)	P1=0xff900c5c <_g_samples> */
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
ffa005b0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c5c <_g_samples> */
ffa005b4:	09 e1 38 0c 	P1.L = 0xc38;		/* (3128)	P1=0xff900c38 <_g_sampOff> */
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
ffa0060e:	0a e1 14 0c 	P2.L = 0xc14;		/* (3092)	P2=0xff900c14 <_g_sampW> */
ffa00612:	10 91       	R0 = [P2];
ffa00614:	05 0a       	CC = R5 <= R0 (IU);
ffa00616:	38 1c       	IF CC JUMP 0xffa00686 <_audio_out+0x142> (BP);
ffa00618:	00 93       	[P0] = R0;
ffa0061a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c14 <_g_sampW> */
ffa0061e:	0a e1 08 0c 	P2.L = 0xc08;		/* (3080)	P2=0xff900c08 <_g_sampMode> */
ffa00622:	10 99       	R0 = B[P2] (Z);
ffa00624:	08 0c       	CC = R0 == 0x1;
ffa00626:	57 18       	IF CC JUMP 0xffa006d4 <_audio_out+0x190>;
ffa00628:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa0062a:	08 08       	CC = R0 == R1;
ffa0062c:	51 18       	IF CC JUMP 0xffa006ce <_audio_out+0x18a>;
ffa0062e:	10 99       	R0 = B[P2] (Z);
ffa00630:	10 0c       	CC = R0 == 0x2;
ffa00632:	53 18       	IF CC JUMP 0xffa006d8 <_audio_out+0x194>;
ffa00634:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c08 <_g_sampMode> */
ffa00638:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0063a:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_g_sampInc> */
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
ffa00698:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c18 <_g_sampInc> */
ffa0069c:	0a e1 08 0c 	P2.L = 0xc08;		/* (3080)	P2=0xff900c08 <_g_sampMode> */
ffa006a0:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa006a2:	10 99       	R0 = B[P2] (Z);
ffa006a4:	08 08       	CC = R0 == R1;
ffa006a6:	c5 17       	IF !CC JUMP 0xffa00630 <_audio_out+0xec> (BP);
ffa006a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c08 <_g_sampMode> */
ffa006ac:	40 e1 13 10 	R0.H = 0x1013;		/* (4115)	R0=0x1013ffff(269746175) */
ffa006b0:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_g_sampInc> */
ffa006b4:	00 e1 cd ab 	R0.L = 0xabcd;		/* (-21555)	R0=0x1013abcd(269724621) */
ffa006b8:	10 93       	[P2] = R0;
ffa006ba:	c4 2f       	JUMP.S 0xffa00642 <_audio_out+0xfe>;
ffa006bc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c18 <_g_sampInc> */
ffa006c0:	0a e1 08 0c 	P2.L = 0xc08;		/* (3080)	P2=0xff900c08 <_g_sampMode> */
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
ffa006d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c08 <_g_sampMode> */
ffa006dc:	40 e1 f1 0f 	R0.H = 0xff1;		/* (4081)	R0=0xff10002(267452418) */
ffa006e0:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_g_sampInc> */
ffa006e4:	00 e1 21 43 	R0.L = 0x4321;		/* (17185)	R0=0xff14321(267469601) */
ffa006e8:	10 93       	[P2] = R0;
ffa006ea:	ac 2f       	JUMP.S 0xffa00642 <_audio_out+0xfe>;
ffa006ec:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa006ee:	10 9b       	B[P2] = R0;
ffa006f0:	dc 2f       	JUMP.S 0xffa006a8 <_audio_out+0x164>;
	...

ffa006f4 <_wait_flash>:
ffa006f4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa006f6:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00c28(-4191192) */
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
ffa00718:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c18(-4191208) */
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
ffa00976:	00 e3 5b 04 	CALL 0xffa0122c <_printf_hex_byte>;
ffa0097a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900044(-7339964) */
ffa0097e:	21 99       	R1 = B[P4] (Z);
ffa00980:	00 e1 54 00 	R0.L = 0x54;		/* ( 84)	R0=0xff900054(-7339948) */
ffa00984:	00 e3 54 04 	CALL 0xffa0122c <_printf_hex_byte>;
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
ffa009a4:	00 e2 34 04 	JUMP.L 0xffa0120c <_printf_str>;
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
ffa009c2:	00 e3 8f 12 	CALL 0xffa02ee0 <_bfin_EMAC_recv>;
ffa009c6:	00 0d       	CC = R0 <= 0x0;
ffa009c8:	f8 1b       	IF CC JUMP 0xffa009b8 <_eth_listen+0x8>;
ffa009ca:	f9 b9       	P1 = [FP -0x4];
ffa009cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901504 */
ffa009d0:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetDataDestIP> */
ffa009d4:	11 91       	R1 = [P2];
ffa009d6:	c8 a1       	R0 = [P1 + 0x1c];
ffa009d8:	08 08       	CC = R0 == R1;
ffa009da:	ef 17       	IF !CC JUMP 0xffa009b8 <_eth_listen+0x8> (BP);
ffa009dc:	48 e4 13 00 	R0 = W[P1 + 0x26] (Z);
ffa009e0:	00 e3 76 08 	CALL 0xffa01acc <_htons>;
ffa009e4:	c0 42       	R0 = R0.L (Z);
ffa009e6:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa009ea:	08 08       	CC = R0 == R1;
ffa009ec:	e6 17       	IF !CC JUMP 0xffa009b8 <_eth_listen+0x8> (BP);
ffa009ee:	f0 b9       	R0 = [FP -0x4];
ffa009f0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa009f4:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa009f6:	01 e1 3c 0c 	R1.L = 0xc3c;		/* (3132)	R1=0xff900c3c <_g_outpkt>(-7336900) */
ffa009fa:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa009fc:	00 e3 b0 05 	CALL 0xffa0155c <_memcpy_>;
ffa00a00:	dc 2f       	JUMP.S 0xffa009b8 <_eth_listen+0x8>;
	...

ffa00a04 <_getRadioPacket>:
ffa00a04:	e3 05       	[--SP] = (R7:4, P5:3);
ffa00a06:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa00a0a:	78 e6 fa ff 	W[FP + -0xc] = R0;
ffa00a0e:	79 e6 f8 ff 	W[FP + -0x10] = R1;
ffa00a12:	3a 30       	R7 = R2;
ffa00a14:	c0 42       	R0 = R0.L (Z);
ffa00a16:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00a18:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00a1c:	e0 bb       	[FP -0x8] = R0;
ffa00a1e:	ff e3 df fb 	CALL 0xffa001dc <_spi_write_register>;
ffa00a22:	24 00       	SSYNC;
ffa00a24:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ee4(-4190492) */
ffa00a28:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00a2c:	79 e5 fa ff 	R1 = W[FP + -0xc] (X);
ffa00a30:	11 97       	W[P2] = R1;
ffa00a32:	24 00       	SSYNC;
ffa00a34:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00a38:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa00a3c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa00a40:	10 97       	W[P2] = R0;
ffa00a42:	7e 43       	R6 = R7.B (Z);
ffa00a44:	ff e3 b2 fb 	CALL 0xffa001a8 <_spi_delay>;
ffa00a48:	06 0c       	CC = R6 == 0x0;
ffa00a4a:	0f 1c       	IF CC JUMP 0xffa00a68 <_getRadioPacket+0x64> (BP);
ffa00a4c:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80050c */
ffa00a50:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c38 <_g_sampOff> */
ffa00a54:	09 e1 10 0c 	P1.L = 0xc10;		/* (3088)	P1=0xff900c10 <_wrptr> */
ffa00a58:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00a5c:	10 91       	R0 = [P2];
ffa00a5e:	4a 91       	P2 = [P1];
ffa00a60:	10 93       	[P2] = R0;
ffa00a62:	08 91       	R0 = [P1];
ffa00a64:	20 64       	R0 += 0x4;		/* (  4) */
ffa00a66:	08 93       	[P1] = R0;
ffa00a68:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900800 */
ffa00a6c:	0a e1 10 0c 	P2.L = 0xc10;		/* (3088)	P2=0xff900c10 <_wrptr> */
ffa00a70:	55 91       	P5 = [P2];
ffa00a72:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc01504(-4188924) */
ffa00a76:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90f000 */
ffa00a7a:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000 <_l1_data_a>(-7340032) */
ffa00a7e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00a80:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa00a84:	0b e1 14 0c 	P3.L = 0xc14;		/* (3092)	P3=0xff900c14 <_g_sampW> */
ffa00a88:	05 e1 5c 0c 	R5.L = 0xc5c;		/* (3164)	R5=0xff900c5c <_g_samples>(-7336868) */
ffa00a8c:	24 e1 ff 01 	R4 = 0x1ff (X);		/*		R4=0x1ff(511) */
ffa00a90:	07 20       	JUMP.S 0xffa00a9e <_getRadioPacket+0x9a>;
ffa00a92:	08 0c       	CC = R0 == 0x1;
ffa00a94:	1a 18       	IF CC JUMP 0xffa00ac8 <_getRadioPacket+0xc4>;
ffa00a96:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00a98:	03 61       	R3 = 0x20 (X);		/*		R3=0x20( 32) */
ffa00a9a:	1f 08       	CC = R7 == R3;
ffa00a9c:	21 18       	IF CC JUMP 0xffa00ade <_getRadioPacket+0xda>;
ffa00a9e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00aa0:	20 97       	W[P4] = R0;
ffa00aa2:	ff e3 83 fb 	CALL 0xffa001a8 <_spi_delay>;
ffa00aa6:	06 0c       	CC = R6 == 0x0;
ffa00aa8:	f7 1f       	IF CC JUMP 0xffa00a96 <_getRadioPacket+0x92> (BP);
ffa00aaa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c10(-4191216) */
ffa00aae:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa00ab2:	50 95       	R0 = W[P2] (X);
ffa00ab4:	10 30       	R2 = R0;
ffa00ab6:	28 9a       	B[P5++] = R0;
ffa00ab8:	b9 60       	R1 = 0x17 (X);		/*		R1=0x17( 23) */
ffa00aba:	f8 42       	R0 = R7.L (Z);
ffa00abc:	08 0a       	CC = R0 <= R1 (IU);
ffa00abe:	ec 17       	IF !CC JUMP 0xffa00a96 <_getRadioPacket+0x92> (BP);
ffa00ac0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa00ac2:	07 54       	R0 = R7 & R0;
ffa00ac4:	00 0c       	CC = R0 == 0x0;
ffa00ac6:	e6 17       	IF !CC JUMP 0xffa00a92 <_getRadioPacket+0x8e> (BP);
ffa00ac8:	18 91       	R0 = [P3];
ffa00aca:	60 54       	R1 = R0 & R4;
ffa00acc:	69 50       	R1 = R1 + R5;
ffa00ace:	11 32       	P2 = R1;
ffa00ad0:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00ad2:	03 61       	R3 = 0x20 (X);		/*		R3=0x20( 32) */
ffa00ad4:	08 64       	R0 += 0x1;		/* (  1) */
ffa00ad6:	1f 08       	CC = R7 == R3;
ffa00ad8:	12 9b       	B[P2] = R2;
ffa00ada:	18 93       	[P3] = R0;
ffa00adc:	e1 17       	IF !CC JUMP 0xffa00a9e <_getRadioPacket+0x9a> (BP);
ffa00ade:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa00ae2:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00ae6:	78 e5 fa ff 	R0 = W[FP + -0xc] (X);
ffa00aea:	10 97       	W[P2] = R0;
ffa00aec:	24 00       	SSYNC;
ffa00aee:	06 0c       	CC = R6 == 0x0;
ffa00af0:	40 1c       	IF CC JUMP 0xffa00b70 <_getRadioPacket+0x16c> (BP);
ffa00af2:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c10 <_wrptr> */
ffa00af6:	09 e1 10 0c 	P1.L = 0xc10;		/* (3088)	P1=0xff900c10 <_wrptr> */
ffa00afa:	09 91       	R1 = [P1];
ffa00afc:	01 65       	R1 += 0x20;		/* ( 32) */
ffa00afe:	20 e1 ff 0f 	R0 = 0xfff (X);		/*		R0=0xfff(4095) */
ffa00b02:	01 54       	R0 = R1 & R0;
ffa00b04:	01 67       	R1 += -0x20;		/* (-32) */
ffa00b06:	11 32       	P2 = R1;
ffa00b08:	08 93       	[P1] = R0;
ffa00b0a:	12 60       	R2 = 0x2 (X);		/*		R2=0x2(  2) */
ffa00b0c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c10 <_wrptr> */
ffa00b10:	09 e1 04 0c 	P1.L = 0xc04;		/* (3076)	P1=0xff900c04 <_g_nextFlag> */
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
ffa00b38:	14 18       	IF CC JUMP 0xffa00b60 <_getRadioPacket+0x15c>;
ffa00b3a:	82 09       	CC = R2 < R0 (IU);
ffa00b3c:	81 14       	IF !CC JUMP 0xffa00c3e <_getRadioPacket+0x23a> (BP);
ffa00b3e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00b42:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_g_dropped> */
ffa00b46:	04 cc 10 42 	R1 = R2 - R0 (NS) || R0 = [P2] || NOP;
ffa00b4a:	10 91 00 00 
ffa00b4e:	80 64       	R0 += 0x10;		/* ( 16) */
ffa00b50:	41 50       	R1 = R1 + R0;
ffa00b52:	11 93       	[P2] = R1;
ffa00b54:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c2c(-4191188) */
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
ffa00b6e:	71 18       	IF CC JUMP 0xffa00c50 <_getRadioPacket+0x24c>;
ffa00b70:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c04 <_g_nextFlag> */
ffa00b74:	09 e1 10 0c 	P1.L = 0xc10;		/* (3088)	P1=0xff900c10 <_wrptr> */
ffa00b78:	21 e1 3f 02 	R1 = 0x23f (X);		/*		R1=0x23f(575) */
ffa00b7c:	08 91       	R0 = [P1];
ffa00b7e:	08 0a       	CC = R0 <= R1 (IU);
ffa00b80:	5b 18       	IF CC JUMP 0xffa00c36 <_getRadioPacket+0x232>;
ffa00b82:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00b86:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00b8a:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa00b8e:	10 97       	W[P2] = R0;
ffa00b90:	21 e1 e2 00 	R1 = 0xe2 (X);		/*		R1=0xe2(226) */
ffa00b94:	e0 b9       	R0 = [FP -0x8];
ffa00b96:	ff e3 a5 fb 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00b9a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c10 <_wrptr> */
ffa00b9e:	09 e1 10 0c 	P1.L = 0xc10;		/* (3088)	P1=0xff900c10 <_wrptr> */
ffa00ba2:	08 91       	R0 = [P1];
ffa00ba4:	4f 30       	R1 = FP;
ffa00ba6:	20 64       	R0 += 0x4;		/* (  4) */
ffa00ba8:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa00baa:	00 e3 09 0d 	CALL 0xffa025bc <_udp_packet_setup>;
ffa00bae:	08 32       	P1 = R0;
ffa00bb0:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa00bb4:	00 0d       	CC = R0 <= 0x0;
ffa00bb6:	9a 18       	IF CC JUMP 0xffa00cea <_getRadioPacket+0x2e6>;
ffa00bb8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00bbc:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_g_dropped> */
ffa00bc0:	10 91       	R0 = [P2];
ffa00bc2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_g_dropped> */
ffa00bc6:	08 93       	[P1] = R0;
ffa00bc8:	0a e1 10 0c 	P2.L = 0xc10;		/* (3088)	P2=0xff900c10 <_wrptr> */
ffa00bcc:	10 91       	R0 = [P2];
ffa00bce:	10 4e       	R0 >>= 0x2;
ffa00bd0:	00 0c       	CC = R0 == 0x0;
ffa00bd2:	8a 18       	IF CC JUMP 0xffa00ce6 <_getRadioPacket+0x2e2>;
ffa00bd4:	51 32       	P2 = P1;
ffa00bd6:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00bd8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00bda:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00bdc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c10 <_wrptr> */
ffa00be0:	28 90       	R0 = [P5++];
ffa00be2:	10 92       	[P2++] = R0;
ffa00be4:	09 e1 10 0c 	P1.L = 0xc10;		/* (3088)	P1=0xff900c10 <_wrptr> */
ffa00be8:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00bea:	08 91       	R0 = [P1];
ffa00bec:	d1 42       	R1 = R2.L (Z);
ffa00bee:	10 4e       	R0 >>= 0x2;
ffa00bf0:	81 09       	CC = R1 < R0 (IU);
ffa00bf2:	f5 1f       	IF CC JUMP 0xffa00bdc <_getRadioPacket+0x1d8> (BP);
ffa00bf4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c10 <_wrptr> */
ffa00bf8:	0a e1 0c 0c 	P2.L = 0xc0c;		/* (3084)	P2=0xff900c0c <_trptr> */
ffa00bfc:	10 91       	R0 = [P2];
ffa00bfe:	08 64       	R0 += 0x1;		/* (  1) */
ffa00c00:	10 93       	[P2] = R0;
ffa00c02:	00 e3 5b 08 	CALL 0xffa01cb8 <_bfin_EMAC_send_nocopy>;
ffa00c06:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00c08:	28 93       	[P5] = R0;
ffa00c0a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00c0c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00c0e:	23 e1 90 00 	R3 = 0x90 (X);		/*		R3=0x90(144) */
ffa00c12:	09 64       	R1 += 0x1;		/* (  1) */
ffa00c14:	c8 42       	R0 = R1.L (Z);
ffa00c16:	18 08       	CC = R0 == R3;
ffa00c18:	2a 92       	[P5++] = R2;
ffa00c1a:	fc 17       	IF !CC JUMP 0xffa00c12 <_getRadioPacket+0x20e> (BP);
ffa00c1c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c0c(-4191220) */
ffa00c20:	20 e1 04 40 	R0 = 0x4004 (X);		/*		R0=0x4004(16388) */
ffa00c24:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00c28:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c10 <_wrptr> */
ffa00c2c:	10 97       	W[P2] = R0;
ffa00c2e:	09 e1 10 0c 	P1.L = 0xc10;		/* (3088)	P1=0xff900c10 <_wrptr> */
ffa00c32:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00c34:	08 93       	[P1] = R0;
ffa00c36:	01 e8 00 00 	UNLINK;
ffa00c3a:	a3 05       	(R7:4, P5:3) = [SP++];
ffa00c3c:	10 00       	RTS;
ffa00c3e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa00c42:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_g_dropped> */
ffa00c46:	11 91       	R1 = [P2];
ffa00c48:	02 52       	R0 = R2 - R0;
ffa00c4a:	08 50       	R0 = R0 + R1;
ffa00c4c:	10 93       	[P2] = R0;
ffa00c4e:	83 2f       	JUMP.S 0xffa00b54 <_getRadioPacket+0x150>;
ffa00c50:	e0 b9       	R0 = [FP -0x8];
ffa00c52:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00c56:	ff e3 97 fb 	CALL 0xffa00384 <_radio_set_tx>;
ffa00c5a:	24 00       	SSYNC;
ffa00c5c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c2c(-4191188) */
ffa00c60:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa00c64:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90050c */
ffa00c68:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00c6c:	79 e5 fa ff 	R1 = W[FP + -0xc] (X);
ffa00c70:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa00c74:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa00c78:	0c e1 3c 0c 	P4.L = 0xc3c;		/* (3132)	P4=0xff900c3c <_g_outpkt> */
ffa00c7c:	11 97       	W[P2] = R1;
ffa00c7e:	5c 32       	P3 = P4;
ffa00c80:	28 97       	W[P5] = R0;
ffa00c82:	ff e3 93 fa 	CALL 0xffa001a8 <_spi_delay>;
ffa00c86:	03 6d       	P3 += 0x20;		/* ( 32) */
ffa00c88:	00 00       	NOP;
ffa00c8a:	20 98       	R0 = B[P4++] (Z);
ffa00c8c:	28 97       	W[P5] = R0;
ffa00c8e:	ff e3 8d fa 	CALL 0xffa001a8 <_spi_delay>;
ffa00c92:	5c 08       	CC = P4 == P3;
ffa00c94:	fa 17       	IF !CC JUMP 0xffa00c88 <_getRadioPacket+0x284> (BP);
ffa00c96:	78 e5 fa ff 	R0 = W[FP + -0xc] (X);
ffa00c9a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00c9e:	50 4a       	BITSET (R0, 0xa);		/* bit 10 */
ffa00ca0:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00ca4:	10 97       	W[P2] = R0;
ffa00ca6:	24 00       	SSYNC;
ffa00ca8:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00caa:	50 95       	R0 = W[P2] (X);
ffa00cac:	7b e5 f8 ff 	R3 = W[FP + -0x10] (X);
ffa00cb0:	03 54       	R0 = R3 & R0;
ffa00cb2:	c0 42       	R0 = R0.L (Z);
ffa00cb4:	00 0c       	CC = R0 == 0x0;
ffa00cb6:	0c 18       	IF CC JUMP 0xffa00cce <_getRadioPacket+0x2ca>;
ffa00cb8:	6a 32       	P5 = P2;
ffa00cba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00cbc:	ff e3 7a fe 	CALL 0xffa009b0 <_eth_listen>;
ffa00cc0:	68 95       	R0 = W[P5] (X);
ffa00cc2:	79 e5 f8 ff 	R1 = W[FP + -0x10] (X);
ffa00cc6:	08 54       	R0 = R0 & R1;
ffa00cc8:	c0 42       	R0 = R0.L (Z);
ffa00cca:	00 0c       	CC = R0 == 0x0;
ffa00ccc:	f7 17       	IF !CC JUMP 0xffa00cba <_getRadioPacket+0x2b6> (BP);
ffa00cce:	e0 b9       	R0 = [FP -0x8];
ffa00cd0:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00cd2:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00cd6:	ff e3 83 fa 	CALL 0xffa001dc <_spi_write_register>;
ffa00cda:	e0 b9       	R0 = [FP -0x8];
ffa00cdc:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00ce0:	ff e3 24 fb 	CALL 0xffa00328 <_radio_set_rx>;
ffa00ce4:	4f 2f       	JUMP.S 0xffa00b82 <_getRadioPacket+0x17e>;
ffa00ce6:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00ce8:	86 2f       	JUMP.S 0xffa00bf4 <_getRadioPacket+0x1f0>;
ffa00cea:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00cee:	0a e1 0c 0c 	P2.L = 0xc0c;		/* (3084)	P2=0xff900c0c <_trptr> */
ffa00cf2:	10 91       	R0 = [P2];
ffa00cf4:	08 64       	R0 += 0x1;		/* (  1) */
ffa00cf6:	10 93       	[P2] = R0;
ffa00cf8:	92 2f       	JUMP.S 0xffa00c1c <_getRadioPacket+0x218>;
	...

ffa00cfc <_main>:
ffa00cfc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c0c(-4191220) */
ffa00d00:	e3 05       	[--SP] = (R7:4, P5:3);
ffa00d02:	20 e1 9c c1 	R0 = -0x3e64 (X);		/*		R0=0xffffc19c(-15972) */
ffa00d06:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00d0a:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa00d0e:	10 97       	W[P2] = R0;
ffa00d10:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa00d14:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa00d16:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa00d1a:	12 97       	W[P2] = R2;
ffa00d1c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa00d20:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00d22:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa00d26:	10 97       	W[P2] = R0;
ffa00d28:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa00d2c:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa00d2e:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa00d32:	10 97       	W[P2] = R0;
ffa00d34:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa00d38:	a2 6f       	P2 += -0xc;		/* (-12) */
ffa00d3a:	10 97       	W[P2] = R0;
ffa00d3c:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa00d40:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00d42:	10 97       	W[P2] = R0;
ffa00d44:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00d46:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00d48:	11 97       	W[P2] = R1;
ffa00d4a:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00c30(-4191184) */
ffa00d4e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa00d52:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c10(-4191216) */
ffa00d56:	09 e1 0c 04 	P1.L = 0x40c;		/* (1036)	P1=0xffc0040c(-4193268) */
ffa00d5a:	08 e1 04 04 	P0.L = 0x404;		/* (1028)	P0=0xffc00404(-4193276) */
ffa00d5e:	0a e1 10 04 	P2.L = 0x410;		/* (1040)	P2=0xffc00410(-4193264) */
ffa00d62:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa00d66:	01 97       	W[P0] = R1;
ffa00d68:	11 97       	W[P2] = R1;
ffa00d6a:	08 97       	W[P1] = R0;
ffa00d6c:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00d6e:	20 e1 88 00 	R0 = 0x88 (X);		/*		R0=0x88(136) */
ffa00d72:	10 97       	W[P2] = R0;
ffa00d74:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00d76:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00d78:	01 97       	W[P0] = R1;
ffa00d7a:	0a 97       	W[P1] = R2;
ffa00d7c:	10 97       	W[P2] = R0;
ffa00d7e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00d80:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900410 */
ffa00d84:	b8 4f       	R0 <<= 0x17;
ffa00d86:	0a e1 5c 0e 	P2.L = 0xe5c;		/* (3676)	P2=0xff900e5c <_printf_temp> */
ffa00d8a:	10 93       	[P2] = R0;
ffa00d8c:	20 e1 01 e0 	R0 = -0x1fff (X);		/*		R0=0xffffe001(-8191) */
ffa00d90:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e5c <_printf_temp> */
ffa00d94:	0a e1 60 0e 	P2.L = 0xe60;		/* (3680)	P2=0xff900e60 <_printf_out> */
ffa00d98:	50 4f       	R0 <<= 0xa;
ffa00d9a:	10 93       	[P2] = R0;
ffa00d9c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90e001(-7282687) */
ffa00da0:	21 e1 46 02 	R1 = 0x246 (X);		/*		R1=0x246(582) */
ffa00da4:	00 e1 7c 00 	R0.L = 0x7c;		/* (124)	R0=0xff90007c(-7339908) */
ffa00da8:	00 e3 f4 02 	CALL 0xffa01390 <_printf_int>;
ffa00dac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa00db0:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa00db4:	00 e3 2c 02 	CALL 0xffa0120c <_printf_str>;
ffa00db8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ac4(-7337276) */
ffa00dbc:	00 e1 8c 00 	R0.L = 0x8c;		/* (140)	R0=0xff90008c(-7339892) */
ffa00dc0:	00 e3 26 02 	CALL 0xffa0120c <_printf_str>;
ffa00dc4:	49 e1 40 00 	P1.H = 0x40;		/* ( 64)	P1=0x40040c */
ffa00dc8:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa00dca:	22 e1 ca de 	R2 = -0x2136 (X);		/*		R2=0xffffdeca(-8502) */
ffa00dce:	23 e1 ad fb 	R3 = -0x453 (X);		/*		R3=0xfffffbad(-1107) */
ffa00dd2:	20 e1 ed c0 	R0 = -0x3f13 (X);		/*		R0=0xffffc0ed(-16147) */
ffa00dd6:	21 e1 be ba 	R1 = -0x4542 (X);		/*		R1=0xffffbabe(-17730) */
ffa00dda:	09 e1 00 00 	P1.L = 0x0;		/* (  0)	P1=0x400000 */
ffa00dde:	b2 e0 06 10 	LSETUP(0xffa00de2 <_main+0xe6>, 0xffa00dea <_main+0xee>) LC1 = P1;
ffa00de2:	12 97       	W[P2] = R2;
ffa00de4:	53 b4       	W[P2 + 0x2] = R3;
ffa00de6:	90 b4       	W[P2 + 0x4] = R0;
ffa00de8:	d1 b4       	W[P2 + 0x6] = R1;
ffa00dea:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00dec:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00dee:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00df0:	02 20       	JUMP.S 0xffa00df4 <_main+0xf8>;
ffa00df2:	45 6c       	P5 += 0x8;		/* (  8) */
ffa00df4:	2f 95       	R7 = W[P5] (Z);
ffa00df6:	80 e1 ca de 	R0 = 0xdeca (Z);		/*		R0=0xdeca(57034) */
ffa00dfa:	07 08       	CC = R7 == R0;
ffa00dfc:	15 18       	IF CC JUMP 0xffa00e26 <_main+0x12a>;
ffa00dfe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90deca(-7282998) */
ffa00e02:	0e 30       	R1 = R6;
ffa00e04:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e08:	00 e3 68 02 	CALL 0xffa012d8 <_printf_hex>;
ffa00e0c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e10:	00 e1 ac 00 	R0.L = 0xac;		/* (172)	R0=0xff9000ac(-7339860) */
ffa00e14:	0f 30       	R1 = R7;
ffa00e16:	00 e3 61 02 	CALL 0xffa012d8 <_printf_hex>;
ffa00e1a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000ac(-7339860) */
ffa00e1e:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa00e22:	00 e3 f5 01 	CALL 0xffa0120c <_printf_str>;
ffa00e26:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa00e28:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa00e2c:	08 08       	CC = R0 == R1;
ffa00e2e:	08 18       	IF CC JUMP 0xffa00e3e <_main+0x142>;
ffa00e30:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ac4(-7337276) */
ffa00e34:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e38:	0e 30       	R1 = R6;
ffa00e3a:	00 e3 4f 02 	CALL 0xffa012d8 <_printf_hex>;
ffa00e3e:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa00e40:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa00e44:	08 08       	CC = R0 == R1;
ffa00e46:	08 18       	IF CC JUMP 0xffa00e56 <_main+0x15a>;
ffa00e48:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e4c:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e50:	0e 30       	R1 = R6;
ffa00e52:	00 e3 43 02 	CALL 0xffa012d8 <_printf_hex>;
ffa00e56:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa00e58:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa00e5c:	08 08       	CC = R0 == R1;
ffa00e5e:	08 18       	IF CC JUMP 0xffa00e6e <_main+0x172>;
ffa00e60:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e64:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e68:	0e 30       	R1 = R6;
ffa00e6a:	00 e3 37 02 	CALL 0xffa012d8 <_printf_hex>;
ffa00e6e:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa00e72:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa00e76:	55 08       	CC = P5 == P2;
ffa00e78:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00e7a:	bc 17       	IF !CC JUMP 0xffa00df2 <_main+0xf6> (BP);
ffa00e7c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e80:	00 e1 b4 00 	R0.L = 0xb4;		/* (180)	R0=0xff9000b4(-7339852) */
ffa00e84:	00 e3 c4 01 	CALL 0xffa0120c <_printf_str>;
ffa00e88:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0fff8(-4128776) */
ffa00e8c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00e8e:	0a e1 84 06 	P2.L = 0x684;		/* (1668)	P2=0xffc00684(-4192636) */
ffa00e92:	10 97       	W[P2] = R0;
ffa00e94:	24 00       	SSYNC;
ffa00e96:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800684 */
ffa00e9a:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00e9e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00ea0:	17 93       	[P2] = R7;
ffa00ea2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa00ea6:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa00eaa:	0a e1 50 06 	P2.L = 0x650;		/* (1616)	P2=0xffc00650(-4192688) */
ffa00eae:	10 97       	W[P2] = R0;
ffa00eb0:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x30059(196697) */
ffa00eb4:	00 e1 8a a9 	R0.L = 0xa98a;		/* (-22134)	R0=0x3a98a(240010) */
ffa00eb8:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00eba:	10 93       	[P2] = R0;
ffa00ebc:	80 e1 65 ea 	R0 = 0xea65 (Z);		/*		R0=0xea65(60005) */
ffa00ec0:	08 4f       	R0 <<= 0x1;
ffa00ec2:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00ec4:	10 93       	[P2] = R0;
ffa00ec6:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00ec8:	50 95       	R0 = W[P2] (X);
ffa00eca:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa00ecc:	10 97       	W[P2] = R0;
ffa00ece:	00 e3 1f 0d 	CALL 0xffa0290c <_bfin_EMAC_init>;
ffa00ed2:	00 0c       	CC = R0 == 0x0;
ffa00ed4:	f0 bb       	[FP -0x4] = R0;
ffa00ed6:	3d 19       	IF CC JUMP 0xffa01150 <_main+0x454>;
ffa00ed8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00650(-4192688) */
ffa00edc:	20 e1 83 38 	R0 = 0x3883 (X);		/*		R0=0x3883(14467) */
ffa00ee0:	0a e1 00 32 	P2.L = 0x3200;		/* (12800)	P2=0xffc03200(-4181504) */
ffa00ee4:	10 97       	W[P2] = R0;
ffa00ee6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03200(-4181504) */
ffa00eea:	20 e1 56 fe 	R0 = -0x1aa (X);		/*		R0=0xfffffe56(-426) */
ffa00eee:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa00ef2:	10 97       	W[P2] = R0;
ffa00ef4:	20 e1 ab 01 	R0 = 0x1ab (X);		/*		R0=0x1ab(427) */
ffa00ef8:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa00efa:	10 97       	W[P2] = R0;
ffa00efc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa00f00:	20 e1 40 01 	R0 = 0x140 (X);		/*		R0=0x140(320) */
ffa00f04:	0a e1 10 32 	P2.L = 0x3210;		/* (12816)	P2=0xffc03210(-4181488) */
ffa00f08:	10 97       	W[P2] = R0;
ffa00f0a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03210(-4181488) */
ffa00f0e:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa00f12:	50 95       	R0 = W[P2] (X);
ffa00f14:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00f16:	10 97       	W[P2] = R0;
ffa00f18:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00f1a:	50 95       	R0 = W[P2] (X);
ffa00f1c:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa00f1e:	10 97       	W[P2] = R0;
ffa00f20:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa00f24:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00f28:	50 95       	R0 = W[P2] (X);
ffa00f2a:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00f2c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00000(-4194304) */
ffa00f30:	10 97       	W[P2] = R0;
ffa00f32:	09 e1 00 09 	P1.L = 0x900;		/* (2304)	P1=0xffc00900(-4192000) */
ffa00f36:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f38:	08 97       	W[P1] = R0;
ffa00f3a:	24 00       	SSYNC;
ffa00f3c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903204 */
ffa00f40:	0a e1 30 0c 	P2.L = 0xc30;		/* (3120)	P2=0xff900c30 <_g_sampR> */
ffa00f44:	17 93       	[P2] = R7;
ffa00f46:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c30 <_g_sampR> */
ffa00f4a:	0a e1 14 0c 	P2.L = 0xc14;		/* (3092)	P2=0xff900c14 <_g_sampW> */
ffa00f4e:	17 93       	[P2] = R7;
ffa00f50:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c14 <_g_sampW> */
ffa00f54:	0a e1 38 0c 	P2.L = 0xc38;		/* (3128)	P2=0xff900c38 <_g_sampOff> */
ffa00f58:	17 93       	[P2] = R7;
ffa00f5a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c38 <_g_sampOff> */
ffa00f5e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00f60:	0a e1 08 0c 	P2.L = 0xc08;		/* (3080)	P2=0xff900c08 <_g_sampMode> */
ffa00f64:	10 9b       	B[P2] = R0;
ffa00f66:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00f68:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c08 <_g_sampMode> */
ffa00f6c:	d8 4f       	R0 <<= 0x1b;
ffa00f6e:	0a e1 18 0c 	P2.L = 0xc18;		/* (3096)	P2=0xff900c18 <_g_sampInc> */
ffa00f72:	10 93       	[P2] = R0;
ffa00f74:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c18 <_g_sampInc> */
ffa00f78:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f7a:	0a e1 28 0c 	P2.L = 0xc28;		/* (3112)	P2=0xff900c28 <_g_sampCh> */
ffa00f7e:	10 9b       	B[P2] = R0;
ffa00f80:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c28(-4191192) */
ffa00f84:	e8 60       	R0 = 0x1d (X);		/*		R0=0x1d( 29) */
ffa00f86:	0a e1 08 09 	P2.L = 0x908;		/* (2312)	P2=0xffc00908(-4191992) */
ffa00f8a:	10 97       	W[P2] = R0;
ffa00f8c:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa00f8e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00f90:	10 97       	W[P2] = R0;
ffa00f92:	b8 60       	R0 = 0x17 (X);		/*		R0=0x17( 23) */
ffa00f94:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00f96:	10 97       	W[P2] = R0;
ffa00f98:	20 e1 03 4e 	R0 = 0x4e03 (X);		/*		R0=0x4e03(19971) */
ffa00f9c:	08 97       	W[P1] = R0;
ffa00f9e:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe00908(-2094840) */
ffa00fa2:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa04e03(-6271485) */
ffa00fa6:	00 e1 44 05 	R0.L = 0x544;		/* (1348)	R0=0xffa00544 <_audio_out>(-6290108) */
ffa00faa:	0a e1 1c 20 	P2.L = 0x201c;		/* (8220)	P2=0xffe0201c(-2088932) */
ffa00fae:	10 93       	[P2] = R0;
ffa00fb0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0201c(-4186084) */
ffa00fb4:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa00fb8:	0a e1 0c 01 	P2.L = 0x10c;		/* (268)	P2=0xffc0010c(-4194036) */
ffa00fbc:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c14 <_g_sampW> */
ffa00fc0:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c3c <_g_outpkt> */
ffa00fc4:	10 93       	[P2] = R0;
ffa00fc6:	0b e1 0c 0c 	P3.L = 0xc0c;		/* (3084)	P3=0xff900c0c <_trptr> */
ffa00fca:	0c e1 34 0c 	P4.L = 0xc34;		/* (3124)	P4=0xff900c34 <_g_streamEnabled> */
ffa00fce:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00fd0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900200(-7339520) */
ffa00fd4:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa00fd8:	00 e3 1a 01 	CALL 0xffa0120c <_printf_str>;
ffa00fdc:	00 e3 04 0e 	CALL 0xffa02be4 <_bridge_publish>;
ffa00fe0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90010c */
ffa00fe4:	0a e1 10 0c 	P2.L = 0xc10;		/* (3088)	P2=0xff900c10 <_wrptr> */
ffa00fe8:	16 93       	[P2] = R6;
ffa00fea:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c10 <_wrptr> */
ffa00fee:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_g_dropped> */
ffa00ff2:	16 93       	[P2] = R6;
ffa00ff4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_g_dropped> */
ffa00ff8:	0a e1 04 0c 	P2.L = 0xc04;		/* (3076)	P2=0xff900c04 <_g_nextFlag> */
ffa00ffc:	38 30       	R7 = R0;
ffa00ffe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000c8(-7339832) */
ffa01002:	16 93       	[P2] = R6;
ffa01004:	00 e1 e0 00 	R0.L = 0xe0;		/* (224)	R0=0xff9000e0(-7339808) */
ffa01008:	1e 93       	[P3] = R6;
ffa0100a:	00 e3 01 01 	CALL 0xffa0120c <_printf_str>;
ffa0100e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c04(-4191228) */
ffa01012:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa01016:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0101a:	10 97       	W[P2] = R0;
ffa0101c:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa01020:	22 6c       	P2 += 0x4;		/* (  4) */
ffa01022:	10 97       	W[P2] = R0;
ffa01024:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa01028:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0102a:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0102e:	10 97       	W[P2] = R0;
ffa01030:	24 00       	SSYNC;
ffa01032:	7f 43       	R7 = R7.B (Z);
ffa01034:	17 30       	R2 = R7;
ffa01036:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa01038:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0103a:	ff e3 07 fa 	CALL 0xffa00448 <_radio_init>;
ffa0103e:	17 30       	R2 = R7;
ffa01040:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa01042:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01046:	ff e3 01 fa 	CALL 0xffa00448 <_radio_init>;
ffa0104a:	17 30       	R2 = R7;
ffa0104c:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa01050:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01054:	ff e3 fa f9 	CALL 0xffa00448 <_radio_init>;
ffa01058:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0105a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0105c:	ff e3 66 f9 	CALL 0xffa00328 <_radio_set_rx>;
ffa01060:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01064:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01066:	ff e3 61 f9 	CALL 0xffa00328 <_radio_set_rx>;
ffa0106a:	45 e1 62 10 	R5.H = 0x1062;		/* (4194)	R5=0x10620c5c(274861148) */
ffa0106e:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01072:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa01076:	ff e3 59 f9 	CALL 0xffa00328 <_radio_set_rx>;
ffa0107a:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa0107c:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa0107e:	05 e1 d3 4d 	R5.L = 0x4dd3;		/* (19923)	R5=0x10624dd3(274877907) */
ffa01082:	20 99       	R0 = B[P4] (Z);
ffa01084:	00 0c       	CC = R0 == 0x0;
ffa01086:	a5 1f       	IF CC JUMP 0xffa00fd0 <_main+0x2d4> (BP);
ffa01088:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa0108c:	f0 b9       	R0 = [FP -0x4];
ffa0108e:	0d e1 00 07 	P5.L = 0x700;		/* (1792)	P5=0xffc00700(-4192512) */
ffa01092:	ff e3 8f fc 	CALL 0xffa009b0 <_eth_listen>;
ffa01096:	68 95       	R0 = W[P5] (X);
ffa01098:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0109a:	3f 18       	IF CC JUMP 0xffa01118 <_main+0x41c>;
ffa0109c:	00 00       	NOP;
ffa0109e:	00 00       	NOP;
ffa010a0:	00 00       	NOP;
ffa010a2:	68 95       	R0 = W[P5] (X);
ffa010a4:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa010a6:	42 18       	IF CC JUMP 0xffa0112a <_main+0x42e>;
ffa010a8:	00 00       	NOP;
ffa010aa:	00 00       	NOP;
ffa010ac:	00 00       	NOP;
ffa010ae:	68 95       	R0 = W[P5] (X);
ffa010b0:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa010b2:	46 18       	IF CC JUMP 0xffa0113e <_main+0x442>;
ffa010b4:	20 e1 28 01 	R0 = 0x128 (X);		/*		R0=0x128(296) */
ffa010b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa010bc:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa010c0:	69 95       	R1 = W[P5] (X);
ffa010c2:	08 54       	R0 = R0 & R1;
ffa010c4:	21 e1 28 01 	R1 = 0x128 (X);		/*		R1=0x128(296) */
ffa010c8:	08 08       	CC = R0 == R1;
ffa010ca:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa010cc:	38 07       	IF CC R7 = R0;
ffa010ce:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa010d2:	10 97       	W[P2] = R0;
ffa010d4:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800708 */
ffa010d8:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa010dc:	10 91       	R0 = [P2];
ffa010de:	80 c0 05 18 	A1 = R0.L * R5.L (FU);
ffa010e2:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa010e6:	81 c0 05 86 	A1 += R0.H * R5.L, A0 = R0.H * R5.H (FU);
ffa010ea:	81 c0 28 98 	A1 += R5.H * R0.L (FU);
ffa010ee:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa010f2:	0b c4 00 80 	A0 += A1;
ffa010f6:	8b c0 00 38 	R0 = A0 (FU);
ffa010fa:	82 c6 d8 83 	R1 = R0 >> 0x5;
ffa010fe:	0c 08       	CC = R4 == R1;
ffa01100:	c1 1b       	IF CC JUMP 0xffa01082 <_main+0x386>;
ffa01102:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa01106:	20 e1 00 80 	R0 = -0x8000 (X);		/*		R0=0xffff8000(-32768) */
ffa0110a:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa0110e:	82 ce 01 c8 	R4 = ROT R1 BY 0x0 || W[P2] = R0 || NOP;
ffa01112:	10 97 00 00 
ffa01116:	b6 2f       	JUMP.S 0xffa01082 <_main+0x386>;
ffa01118:	7a 43       	R2 = R7.B (Z);
ffa0111a:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0111c:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa0111e:	ff e3 73 fc 	CALL 0xffa00a04 <_getRadioPacket>;
ffa01122:	68 95       	R0 = W[P5] (X);
ffa01124:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01126:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01128:	c2 17       	IF !CC JUMP 0xffa010ac <_main+0x3b0> (BP);
ffa0112a:	7a 43       	R2 = R7.B (Z);
ffa0112c:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01130:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa01132:	ff e3 69 fc 	CALL 0xffa00a04 <_getRadioPacket>;
ffa01136:	68 95       	R0 = W[P5] (X);
ffa01138:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa0113a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0113c:	bc 17       	IF !CC JUMP 0xffa010b4 <_main+0x3b8> (BP);
ffa0113e:	7a 43       	R2 = R7.B (Z);
ffa01140:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01144:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa01148:	ff e3 5e fc 	CALL 0xffa00a04 <_getRadioPacket>;
ffa0114c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0114e:	b3 2f       	JUMP.S 0xffa010b4 <_main+0x3b8>;
ffa01150:	00 e3 70 0e 	CALL 0xffa02e30 <_DHCP_req>;
ffa01154:	c2 2e       	JUMP.S 0xffa00ed8 <_main+0x1dc>;
	...

ffa01158 <_uart_str>:
ffa01158:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa0115c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01160:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa01164:	08 32       	P1 = R0;
ffa01166:	50 95       	R0 = W[P2] (X);
ffa01168:	c0 42       	R0 = R0.L (Z);
ffa0116a:	08 0c       	CC = R0 == 0x1;
ffa0116c:	06 18       	IF CC JUMP 0xffa01178 <_uart_str+0x20>;
ffa0116e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01170:	02 30       	R0 = R2;
ffa01172:	01 e8 00 00 	UNLINK;
ffa01176:	10 00       	RTS;
ffa01178:	48 99       	R0 = B[P1] (X);
ffa0117a:	01 43       	R1 = R0.B (X);
ffa0117c:	01 0c       	CC = R1 == 0x0;
ffa0117e:	f8 1b       	IF CC JUMP 0xffa0116e <_uart_str+0x16>;
ffa01180:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa01184:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01186:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01188:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa0118c:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa01190:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa01192:	b2 e0 1c 00 	LSETUP(0xffa01196 <_uart_str+0x3e>, 0xffa011ca <_uart_str+0x72>) LC1 = P0;
ffa01196:	19 08       	CC = R1 == R3;
ffa01198:	1b 18       	IF CC JUMP 0xffa011ce <_uart_str+0x76>;
ffa0119a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa0119e:	00 43       	R0 = R0.B (X);
ffa011a0:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa011a4:	10 97       	W[P2] = R0;
ffa011a6:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa011a8:	50 95       	R0 = W[P2] (X);
ffa011aa:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa011ac:	0a 10       	IF !CC JUMP 0xffa011c0 <_uart_str+0x68>;
ffa011ae:	00 00       	NOP;
ffa011b0:	00 00       	NOP;
ffa011b2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa011b6:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa011ba:	50 95       	R0 = W[P2] (X);
ffa011bc:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa011be:	f9 1f       	IF CC JUMP 0xffa011b0 <_uart_str+0x58> (BP);
ffa011c0:	48 99       	R0 = B[P1] (X);
ffa011c2:	01 43       	R1 = R0.B (X);
ffa011c4:	01 0c       	CC = R1 == 0x0;
ffa011c6:	0a 64       	R2 += 0x1;		/* (  1) */
ffa011c8:	d4 1b       	IF CC JUMP 0xffa01170 <_uart_str+0x18>;
ffa011ca:	09 6c       	P1 += 0x1;		/* (  1) */
ffa011cc:	d2 2f       	JUMP.S 0xffa01170 <_uart_str+0x18>;
ffa011ce:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa011d0:	20 9f       	W[I0] = R0.L;
ffa011d2:	02 20       	JUMP.S 0xffa011d6 <_uart_str+0x7e>;
ffa011d4:	00 00       	NOP;
ffa011d6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa011da:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa011de:	50 95       	R0 = W[P2] (X);
ffa011e0:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa011e2:	f9 1f       	IF CC JUMP 0xffa011d4 <_uart_str+0x7c> (BP);
ffa011e4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa011e8:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa011ea:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa011ee:	10 97       	W[P2] = R0;
ffa011f0:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa011f2:	50 95       	R0 = W[P2] (X);
ffa011f4:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa011f6:	e5 13       	IF !CC JUMP 0xffa011c0 <_uart_str+0x68>;
ffa011f8:	00 00       	NOP;
ffa011fa:	00 00       	NOP;
ffa011fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa01200:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa01204:	50 95       	R0 = W[P2] (X);
ffa01206:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01208:	f9 1f       	IF CC JUMP 0xffa011fa <_uart_str+0xa2> (BP);
ffa0120a:	db 2f       	JUMP.S 0xffa011c0 <_uart_str+0x68>;

ffa0120c <_printf_str>:
ffa0120c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01210:	01 e8 00 00 	UNLINK;
ffa01214:	ff e2 a2 ff 	JUMP.L 0xffa01158 <_uart_str>;

ffa01218 <_printf_newline>:
ffa01218:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0121c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa01220:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa01224:	01 e8 00 00 	UNLINK;
ffa01228:	ff e2 98 ff 	JUMP.L 0xffa01158 <_uart_str>;

ffa0122c <_printf_hex_byte>:
ffa0122c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0122e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01232:	28 32       	P5 = R0;
ffa01234:	39 30       	R7 = R1;
ffa01236:	00 e3 b1 01 	CALL 0xffa01598 <_strlen_>;
ffa0123a:	10 30       	R2 = R0;
ffa0123c:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa01240:	02 09       	CC = R2 <= R0;
ffa01242:	41 10       	IF !CC JUMP 0xffa012c4 <_printf_hex_byte+0x98>;
ffa01244:	02 0d       	CC = R2 <= 0x0;
ffa01246:	44 18       	IF CC JUMP 0xffa012ce <_printf_hex_byte+0xa2>;
ffa01248:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa0124c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0124e:	08 e1 60 0e 	P0.L = 0xe60;		/* (3680)	P0=0xff900e60 <_printf_out> */
ffa01252:	09 32       	P1 = R1;
ffa01254:	42 91       	P2 = [P0];
ffa01256:	09 64       	R1 += 0x1;		/* (  1) */
ffa01258:	68 98       	R0 = B[P5++] (X);
ffa0125a:	0a 08       	CC = R2 == R1;
ffa0125c:	8a 5a       	P2 = P2 + P1;
ffa0125e:	10 9b       	B[P2] = R0;
ffa01260:	f9 17       	IF !CC JUMP 0xffa01252 <_printf_hex_byte+0x26> (BP);
ffa01262:	0a 32       	P1 = R2;
ffa01264:	42 91       	P2 = [P0];
ffa01266:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01268:	22 32       	P4 = R2;
ffa0126a:	79 43       	R1 = R7.B (Z);
ffa0126c:	8a 5a       	P2 = P2 + P1;
ffa0126e:	10 9b       	B[P2] = R0;
ffa01270:	42 91       	P2 = [P0];
ffa01272:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa01274:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01278:	11 6c       	P1 += 0x2;		/* (  2) */
ffa0127a:	a2 5a       	P2 = P2 + P4;
ffa0127c:	10 9b       	B[P2] = R0;
ffa0127e:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa01280:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa01282:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa01284:	01 30       	R0 = R1;
ffa01286:	10 40       	R0 >>>= R2;
ffa01288:	18 54       	R0 = R0 & R3;
ffa0128a:	38 09       	CC = R0 <= R7;
ffa0128c:	1a 1c       	IF CC JUMP 0xffa012c0 <_printf_hex_byte+0x94> (BP);
ffa0128e:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01290:	42 91       	P2 = [P0];
ffa01292:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa01294:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900700 */
ffa01298:	22 0c       	CC = R2 == -0x4;
ffa0129a:	8a 5a       	P2 = P2 + P1;
ffa0129c:	0d e1 60 0e 	P5.L = 0xe60;		/* (3680)	P5=0xff900e60 <_printf_out> */
ffa012a0:	10 9b       	B[P2] = R0;
ffa012a2:	09 6c       	P1 += 0x1;		/* (  1) */
ffa012a4:	f0 17       	IF !CC JUMP 0xffa01284 <_printf_hex_byte+0x58> (BP);
ffa012a6:	6a 91       	P2 = [P5];
ffa012a8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa012aa:	94 5a       	P2 = P4 + P2;
ffa012ac:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa012b0:	28 91       	R0 = [P5];
ffa012b2:	ff e3 53 ff 	CALL 0xffa01158 <_uart_str>;
ffa012b6:	01 e8 00 00 	UNLINK;
ffa012ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa012bc:	bc 05       	(R7:7, P5:4) = [SP++];
ffa012be:	10 00       	RTS;
ffa012c0:	80 65       	R0 += 0x30;		/* ( 48) */
ffa012c2:	e7 2f       	JUMP.S 0xffa01290 <_printf_hex_byte+0x64>;
ffa012c4:	01 e8 00 00 	UNLINK;
ffa012c8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa012ca:	bc 05       	(R7:7, P5:4) = [SP++];
ffa012cc:	10 00       	RTS;
ffa012ce:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e60 <_printf_out> */
ffa012d2:	08 e1 60 0e 	P0.L = 0xe60;		/* (3680)	P0=0xff900e60 <_printf_out> */
ffa012d6:	c6 2f       	JUMP.S 0xffa01262 <_printf_hex_byte+0x36>;

ffa012d8 <_printf_hex>:
ffa012d8:	fb 05       	[--SP] = (R7:7, P5:3);
ffa012da:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa012de:	28 32       	P5 = R0;
ffa012e0:	39 30       	R7 = R1;
ffa012e2:	00 e3 5b 01 	CALL 0xffa01598 <_strlen_>;
ffa012e6:	10 30       	R2 = R0;
ffa012e8:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa012ec:	02 09       	CC = R2 <= R0;
ffa012ee:	47 10       	IF !CC JUMP 0xffa0137c <_printf_hex+0xa4>;
ffa012f0:	02 0d       	CC = R2 <= 0x0;
ffa012f2:	4a 18       	IF CC JUMP 0xffa01386 <_printf_hex+0xae>;
ffa012f4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900900 */
ffa012f8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa012fa:	09 e1 60 0e 	P1.L = 0xe60;		/* (3680)	P1=0xff900e60 <_printf_out> */
ffa012fe:	01 32       	P0 = R1;
ffa01300:	4a 91       	P2 = [P1];
ffa01302:	09 64       	R1 += 0x1;		/* (  1) */
ffa01304:	68 98       	R0 = B[P5++] (X);
ffa01306:	0a 08       	CC = R2 == R1;
ffa01308:	82 5a       	P2 = P2 + P0;
ffa0130a:	10 9b       	B[P2] = R0;
ffa0130c:	f9 17       	IF !CC JUMP 0xffa012fe <_printf_hex+0x26> (BP);
ffa0130e:	02 32       	P0 = R2;
ffa01310:	4a 91       	P2 = [P1];
ffa01312:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01314:	1a 32       	P3 = R2;
ffa01316:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa01318:	82 5a       	P2 = P2 + P0;
ffa0131a:	10 9b       	B[P2] = R0;
ffa0131c:	4a 91       	P2 = [P1];
ffa0131e:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa01320:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01324:	10 6c       	P0 += 0x2;		/* (  2) */
ffa01326:	9a 5a       	P2 = P2 + P3;
ffa01328:	10 9b       	B[P2] = R0;
ffa0132a:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa0132c:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa0132e:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa01330:	b2 e0 10 50 	LSETUP(0xffa01334 <_printf_hex+0x5c>, 0xffa01350 <_printf_hex+0x78>) LC1 = P5;
ffa01334:	07 30       	R0 = R7;
ffa01336:	08 40       	R0 >>>= R1;
ffa01338:	10 54       	R0 = R0 & R2;
ffa0133a:	18 09       	CC = R0 <= R3;
ffa0133c:	1e 1c       	IF CC JUMP 0xffa01378 <_printf_hex+0xa0> (BP);
ffa0133e:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01340:	4a 91       	P2 = [P1];
ffa01342:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c34 <_g_streamEnabled> */
ffa01346:	0c e1 60 0e 	P4.L = 0xe60;		/* (3680)	P4=0xff900e60 <_printf_out> */
ffa0134a:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa0134c:	82 5a       	P2 = P2 + P0;
ffa0134e:	10 9b       	B[P2] = R0;
ffa01350:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01352:	62 91       	P2 = [P4];
ffa01354:	4b 32       	P1 = P3;
ffa01356:	49 6c       	P1 += 0x9;		/* (  9) */
ffa01358:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0135a:	8a 5a       	P2 = P2 + P1;
ffa0135c:	10 9b       	B[P2] = R0;
ffa0135e:	62 91       	P2 = [P4];
ffa01360:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01362:	8a 5a       	P2 = P2 + P1;
ffa01364:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa01368:	20 91       	R0 = [P4];
ffa0136a:	ff e3 f7 fe 	CALL 0xffa01158 <_uart_str>;
ffa0136e:	01 e8 00 00 	UNLINK;
ffa01372:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01374:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01376:	10 00       	RTS;
ffa01378:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0137a:	e3 2f       	JUMP.S 0xffa01340 <_printf_hex+0x68>;
ffa0137c:	01 e8 00 00 	UNLINK;
ffa01380:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01382:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01384:	10 00       	RTS;
ffa01386:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e60 <_printf_out> */
ffa0138a:	09 e1 60 0e 	P1.L = 0xe60;		/* (3680)	P1=0xff900e60 <_printf_out> */
ffa0138e:	c0 2f       	JUMP.S 0xffa0130e <_printf_hex+0x36>;

ffa01390 <_printf_int>:
ffa01390:	f3 05       	[--SP] = (R7:6, P5:3);
ffa01392:	01 0c       	CC = R1 == 0x0;
ffa01394:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01398:	28 32       	P5 = R0;
ffa0139a:	39 30       	R7 = R1;
ffa0139c:	41 14       	IF !CC JUMP 0xffa0141e <_printf_int+0x8e> (BP);
ffa0139e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c0c <_trptr> */
ffa013a2:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa013a6:	5a 91       	P2 = [P3];
ffa013a8:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa013aa:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa013ac:	10 9b       	B[P2] = R0;
ffa013ae:	45 30       	R0 = P5;
ffa013b0:	00 e3 f4 00 	CALL 0xffa01598 <_strlen_>;
ffa013b4:	c6 50       	R3 = R6 + R0;
ffa013b6:	10 30       	R2 = R0;
ffa013b8:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa013bc:	03 09       	CC = R3 <= R0;
ffa013be:	4e 10       	IF !CC JUMP 0xffa0145a <_printf_int+0xca>;
ffa013c0:	02 0d       	CC = R2 <= 0x0;
ffa013c2:	79 18       	IF CC JUMP 0xffa014b4 <_printf_int+0x124>;
ffa013c4:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e60 <_printf_out> */
ffa013c8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa013ca:	08 e1 60 0e 	P0.L = 0xe60;		/* (3680)	P0=0xff900e60 <_printf_out> */
ffa013ce:	09 32       	P1 = R1;
ffa013d0:	42 91       	P2 = [P0];
ffa013d2:	09 64       	R1 += 0x1;		/* (  1) */
ffa013d4:	68 98       	R0 = B[P5++] (X);
ffa013d6:	0a 08       	CC = R2 == R1;
ffa013d8:	8a 5a       	P2 = P2 + P1;
ffa013da:	10 9b       	B[P2] = R0;
ffa013dc:	f9 17       	IF !CC JUMP 0xffa013ce <_printf_int+0x3e> (BP);
ffa013de:	06 0d       	CC = R6 <= 0x0;
ffa013e0:	12 18       	IF CC JUMP 0xffa01404 <_printf_int+0x74>;
ffa013e2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa013e4:	00 91       	R0 = [P0];
ffa013e6:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa013ea:	5a 91 00 00 
ffa013ee:	08 50       	R0 = R0 + R1;
ffa013f0:	08 32       	P1 = R0;
ffa013f2:	0e 52       	R0 = R6 - R1;
ffa013f4:	28 32       	P5 = R0;
ffa013f6:	09 64       	R1 += 0x1;		/* (  1) */
ffa013f8:	0e 08       	CC = R6 == R1;
ffa013fa:	aa 5a       	P2 = P2 + P5;
ffa013fc:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa01400:	08 9b       	B[P1] = R0;
ffa01402:	f1 17       	IF !CC JUMP 0xffa013e4 <_printf_int+0x54> (BP);
ffa01404:	0b 32       	P1 = R3;
ffa01406:	42 91       	P2 = [P0];
ffa01408:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0140a:	91 5a       	P2 = P1 + P2;
ffa0140c:	10 9b       	B[P2] = R0;
ffa0140e:	00 91       	R0 = [P0];
ffa01410:	ff e3 a4 fe 	CALL 0xffa01158 <_uart_str>;
ffa01414:	01 e8 00 00 	UNLINK;
ffa01418:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0141a:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0141c:	10 00       	RTS;
ffa0141e:	01 0d       	CC = R1 <= 0x0;
ffa01420:	22 18       	IF CC JUMP 0xffa01464 <_printf_int+0xd4>;
ffa01422:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa01426:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01428:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa0142c:	05 20       	JUMP.S 0xffa01436 <_printf_int+0xa6>;
ffa0142e:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa01432:	06 08       	CC = R6 == R0;
ffa01434:	bd 1b       	IF CC JUMP 0xffa013ae <_printf_int+0x1e>;
ffa01436:	07 30       	R0 = R7;
ffa01438:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0143a:	00 e3 83 00 	CALL 0xffa01540 <_mod>;
ffa0143e:	0e 32       	P1 = R6;
ffa01440:	5a 91       	P2 = [P3];
ffa01442:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01444:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01446:	0e 64       	R6 += 0x1;		/* (  1) */
ffa01448:	8a 5a       	P2 = P2 + P1;
ffa0144a:	10 9b       	B[P2] = R0;
ffa0144c:	07 30       	R0 = R7;
ffa0144e:	00 e3 6b 00 	CALL 0xffa01524 <_div>;
ffa01452:	00 0d       	CC = R0 <= 0x0;
ffa01454:	38 30       	R7 = R0;
ffa01456:	ec 17       	IF !CC JUMP 0xffa0142e <_printf_int+0x9e> (BP);
ffa01458:	ab 2f       	JUMP.S 0xffa013ae <_printf_int+0x1e>;
ffa0145a:	01 e8 00 00 	UNLINK;
ffa0145e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01460:	b3 05       	(R7:6, P5:3) = [SP++];
ffa01462:	10 00       	RTS;
ffa01464:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01466:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa01468:	f8 4f       	R0 <<= 0x1f;
ffa0146a:	f8 53       	R7 = R0 - R7;
ffa0146c:	07 0d       	CC = R7 <= 0x0;
ffa0146e:	2c 18       	IF CC JUMP 0xffa014c6 <_printf_int+0x136>;
ffa01470:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa01474:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa01476:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa0147a:	05 20       	JUMP.S 0xffa01484 <_printf_int+0xf4>;
ffa0147c:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa01480:	4c 08       	CC = P4 == P1;
ffa01482:	1e 18       	IF CC JUMP 0xffa014be <_printf_int+0x12e>;
ffa01484:	07 30       	R0 = R7;
ffa01486:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01488:	00 e3 5c 00 	CALL 0xffa01540 <_mod>;
ffa0148c:	5a 91       	P2 = [P3];
ffa0148e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01490:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01492:	a2 5a       	P2 = P2 + P4;
ffa01494:	10 9b       	B[P2] = R0;
ffa01496:	07 30       	R0 = R7;
ffa01498:	00 e3 46 00 	CALL 0xffa01524 <_div>;
ffa0149c:	00 0d       	CC = R0 <= 0x0;
ffa0149e:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa014a0:	38 30       	R7 = R0;
ffa014a2:	ed 17       	IF !CC JUMP 0xffa0147c <_printf_int+0xec> (BP);
ffa014a4:	74 30       	R6 = P4;
ffa014a6:	4c 32       	P1 = P4;
ffa014a8:	0e 64       	R6 += 0x1;		/* (  1) */
ffa014aa:	5a 91       	P2 = [P3];
ffa014ac:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa014ae:	8a 5a       	P2 = P2 + P1;
ffa014b0:	10 9b       	B[P2] = R0;
ffa014b2:	7e 2f       	JUMP.S 0xffa013ae <_printf_int+0x1e>;
ffa014b4:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e60 <_printf_out> */
ffa014b8:	08 e1 60 0e 	P0.L = 0xe60;		/* (3680)	P0=0xff900e60 <_printf_out> */
ffa014bc:	91 2f       	JUMP.S 0xffa013de <_printf_int+0x4e>;
ffa014be:	4c 32       	P1 = P4;
ffa014c0:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa014c4:	f3 2f       	JUMP.S 0xffa014aa <_printf_int+0x11a>;
ffa014c6:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa014ca:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa014cc:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa014ce:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa014d2:	ec 2f       	JUMP.S 0xffa014aa <_printf_int+0x11a>;

ffa014d4 <_printf_ip>:
ffa014d4:	70 05       	[--SP] = (R7:6);
ffa014d6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa014da:	39 30       	R7 = R1;
ffa014dc:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa014e0:	49 43       	R1 = R1.B (Z);
ffa014e2:	ff e3 57 ff 	CALL 0xffa01390 <_printf_int>;
ffa014e6:	06 e1 88 00 	R6.L = 0x88;		/* (136)	R6=0xff900088(-7339896) */
ffa014ea:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa014ee:	49 43       	R1 = R1.B (Z);
ffa014f0:	06 30       	R0 = R6;
ffa014f2:	ff e3 4f ff 	CALL 0xffa01390 <_printf_int>;
ffa014f6:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa014fa:	49 43       	R1 = R1.B (Z);
ffa014fc:	06 30       	R0 = R6;
ffa014fe:	c7 4e       	R7 >>= 0x18;
ffa01500:	ff e3 48 ff 	CALL 0xffa01390 <_printf_int>;
ffa01504:	0f 30       	R1 = R7;
ffa01506:	06 30       	R0 = R6;
ffa01508:	ff e3 44 ff 	CALL 0xffa01390 <_printf_int>;
ffa0150c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa01510:	00 e1 68 05 	R0.L = 0x568;		/* (1384)	R0=0xff900568(-7338648) */
ffa01514:	ff e3 7c fe 	CALL 0xffa0120c <_printf_str>;
ffa01518:	01 e8 00 00 	UNLINK;
ffa0151c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0151e:	30 05       	(R7:6) = [SP++];
ffa01520:	10 00       	RTS;
	...

ffa01524 <_div>:
ffa01524:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01528:	08 4f       	R0 <<= 0x1;
ffa0152a:	48 42       	DIVS (R0, R1);
ffa0152c:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa0152e:	b2 e0 03 20 	LSETUP(0xffa01532 <_div+0xe>, 0xffa01534 <_div+0x10>) LC1 = P2;
ffa01532:	08 42       	DIVQ (R0, R1);
ffa01534:	00 00       	NOP;
ffa01536:	80 42       	R0 = R0.L (X);
ffa01538:	01 e8 00 00 	UNLINK;
ffa0153c:	10 00       	RTS;
	...

ffa01540 <_mod>:
ffa01540:	70 05       	[--SP] = (R7:6);
ffa01542:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01546:	30 30       	R6 = R0;
ffa01548:	39 30       	R7 = R1;
ffa0154a:	ff e3 ed ff 	CALL 0xffa01524 <_div>;
ffa0154e:	c7 40       	R7 *= R0;
ffa01550:	01 e8 00 00 	UNLINK;
ffa01554:	be 53       	R6 = R6 - R7;
ffa01556:	06 30       	R0 = R6;
ffa01558:	30 05       	(R7:6) = [SP++];
ffa0155a:	10 00       	RTS;

ffa0155c <_memcpy_>:
ffa0155c:	02 0d       	CC = R2 <= 0x0;
ffa0155e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01562:	08 32       	P1 = R0;
ffa01564:	11 32       	P2 = R1;
ffa01566:	08 18       	IF CC JUMP 0xffa01576 <_memcpy_+0x1a>;
ffa01568:	00 00       	NOP;
ffa0156a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0156c:	09 64       	R1 += 0x1;		/* (  1) */
ffa0156e:	48 98       	R0 = B[P1++] (X);
ffa01570:	0a 08       	CC = R2 == R1;
ffa01572:	10 9a       	B[P2++] = R0;
ffa01574:	fc 17       	IF !CC JUMP 0xffa0156c <_memcpy_+0x10> (BP);
ffa01576:	01 e8 00 00 	UNLINK;
ffa0157a:	10 00       	RTS;

ffa0157c <_memset_>:
ffa0157c:	02 0d       	CC = R2 <= 0x0;
ffa0157e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01582:	10 32       	P2 = R0;
ffa01584:	06 18       	IF CC JUMP 0xffa01590 <_memset_+0x14>;
ffa01586:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01588:	08 64       	R0 += 0x1;		/* (  1) */
ffa0158a:	02 08       	CC = R2 == R0;
ffa0158c:	11 9a       	B[P2++] = R1;
ffa0158e:	fd 17       	IF !CC JUMP 0xffa01588 <_memset_+0xc> (BP);
ffa01590:	01 e8 00 00 	UNLINK;
ffa01594:	10 00       	RTS;
	...

ffa01598 <_strlen_>:
ffa01598:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0159c:	10 32       	P2 = R0;
ffa0159e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa015a0:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa015a4:	b2 e0 06 10 	LSETUP(0xffa015a8 <_strlen_+0x10>, 0xffa015b0 <_strlen_+0x18>) LC1 = P1;
ffa015a8:	50 99       	R0 = B[P2] (X);
ffa015aa:	00 0c       	CC = R0 == 0x0;
ffa015ac:	04 18       	IF CC JUMP 0xffa015b4 <_strlen_+0x1c>;
ffa015ae:	09 64       	R1 += 0x1;		/* (  1) */
ffa015b0:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa015b2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa015b4:	01 30       	R0 = R1;
ffa015b6:	01 e8 00 00 	UNLINK;
ffa015ba:	10 00       	RTS;

ffa015bc <_strcpy_>:
ffa015bc:	12 32       	P2 = R2;
ffa015be:	c5 04       	[--SP] = (P5:5);
ffa015c0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa015c4:	29 32       	P5 = R1;
ffa015c6:	00 32       	P0 = R0;
ffa015c8:	51 99       	R1 = B[P2] (X);
ffa015ca:	08 43       	R0 = R1.B (X);
ffa015cc:	00 0c       	CC = R0 == 0x0;
ffa015ce:	17 18       	IF CC JUMP 0xffa015fc <_strcpy_+0x40>;
ffa015d0:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa015d2:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa015d4:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa015d8:	b2 e0 09 10 	LSETUP(0xffa015dc <_strcpy_+0x20>, 0xffa015ea <_strcpy_+0x2e>) LC1 = P1;
ffa015dc:	01 9a       	B[P0++] = R1;
ffa015de:	51 99       	R1 = B[P2] (X);
ffa015e0:	08 43       	R0 = R1.B (X);
ffa015e2:	00 0c       	CC = R0 == 0x0;
ffa015e4:	0a 64       	R2 += 0x1;		/* (  1) */
ffa015e6:	03 18       	IF CC JUMP 0xffa015ec <_strcpy_+0x30>;
ffa015e8:	00 00       	NOP;
ffa015ea:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa015ec:	01 e8 00 00 	UNLINK;
ffa015f0:	28 91       	R0 = [P5];
ffa015f2:	10 50       	R0 = R0 + R2;
ffa015f4:	28 93       	[P5] = R0;
ffa015f6:	40 30       	R0 = P0;
ffa015f8:	85 04       	(P5:5) = [SP++];
ffa015fa:	10 00       	RTS;
ffa015fc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa015fe:	f7 2f       	JUMP.S 0xffa015ec <_strcpy_+0x30>;

ffa01600 <_strprepend>:
ffa01600:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01602:	21 32       	P4 = R1;
ffa01604:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01608:	38 30       	R7 = R0;
ffa0160a:	02 30       	R0 = R2;
ffa0160c:	2a 32       	P5 = R2;
ffa0160e:	ff e3 c5 ff 	CALL 0xffa01598 <_strlen_>;
ffa01612:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa01616:	20 91 00 00 
ffa0161a:	02 0d       	CC = R2 <= 0x0;
ffa0161c:	0a 18       	IF CC JUMP 0xffa01630 <_strprepend+0x30>;
ffa0161e:	07 52       	R0 = R7 - R0;
ffa01620:	10 32       	P2 = R0;
ffa01622:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01624:	09 64       	R1 += 0x1;		/* (  1) */
ffa01626:	68 98       	R0 = B[P5++] (X);
ffa01628:	0a 08       	CC = R2 == R1;
ffa0162a:	10 9a       	B[P2++] = R0;
ffa0162c:	fc 17       	IF !CC JUMP 0xffa01624 <_strprepend+0x24> (BP);
ffa0162e:	20 91       	R0 = [P4];
ffa01630:	01 e8 00 00 	UNLINK;
ffa01634:	07 52       	R0 = R7 - R0;
ffa01636:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01638:	10 00       	RTS;
	...

ffa0163c <_strcmp>:
ffa0163c:	10 32       	P2 = R0;
ffa0163e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01642:	01 32       	P0 = R1;
ffa01644:	51 99       	R1 = B[P2] (X);
ffa01646:	01 0c       	CC = R1 == 0x0;
ffa01648:	1b 18       	IF CC JUMP 0xffa0167e <_strcmp+0x42>;
ffa0164a:	00 00       	NOP;
ffa0164c:	00 00       	NOP;
ffa0164e:	00 00       	NOP;
ffa01650:	40 99       	R0 = B[P0] (X);
ffa01652:	00 0c       	CC = R0 == 0x0;
ffa01654:	15 18       	IF CC JUMP 0xffa0167e <_strcmp+0x42>;
ffa01656:	01 08       	CC = R1 == R0;
ffa01658:	1c 10       	IF !CC JUMP 0xffa01690 <_strcmp+0x54>;
ffa0165a:	4a 32       	P1 = P2;
ffa0165c:	50 32       	P2 = P0;
ffa0165e:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01660:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01662:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa01666:	49 99       	R1 = B[P1] (X);
ffa01668:	01 0c       	CC = R1 == 0x0;
ffa0166a:	0a 18       	IF CC JUMP 0xffa0167e <_strcmp+0x42>;
ffa0166c:	00 00       	NOP;
ffa0166e:	00 00       	NOP;
ffa01670:	00 00       	NOP;
ffa01672:	50 99       	R0 = B[P2] (X);
ffa01674:	00 0c       	CC = R0 == 0x0;
ffa01676:	04 18       	IF CC JUMP 0xffa0167e <_strcmp+0x42>;
ffa01678:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa0167a:	40 0c       	CC = P0 == 0x0;
ffa0167c:	05 10       	IF !CC JUMP 0xffa01686 <_strcmp+0x4a>;
ffa0167e:	01 e8 00 00 	UNLINK;
ffa01682:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01684:	10 00       	RTS;
ffa01686:	01 08       	CC = R1 == R0;
ffa01688:	04 10       	IF !CC JUMP 0xffa01690 <_strcmp+0x54>;
ffa0168a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0168c:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0168e:	ec 2f       	JUMP.S 0xffa01666 <_strcmp+0x2a>;
ffa01690:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01692:	01 e8 00 00 	UNLINK;
ffa01696:	10 00       	RTS;

ffa01698 <_substr>:
ffa01698:	f4 05       	[--SP] = (R7:6, P5:4);
ffa0169a:	20 32       	P4 = R0;
ffa0169c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa016a0:	11 32       	P2 = R1;
ffa016a2:	32 30       	R6 = R2;
ffa016a4:	61 99       	R1 = B[P4] (X);
ffa016a6:	01 0c       	CC = R1 == 0x0;
ffa016a8:	14 18       	IF CC JUMP 0xffa016d0 <_substr+0x38>;
ffa016aa:	00 00       	NOP;
ffa016ac:	00 00       	NOP;
ffa016ae:	00 00       	NOP;
ffa016b0:	50 99       	R0 = B[P2] (X);
ffa016b2:	00 0c       	CC = R0 == 0x0;
ffa016b4:	0e 18       	IF CC JUMP 0xffa016d0 <_substr+0x38>;
ffa016b6:	02 0d       	CC = R2 <= 0x0;
ffa016b8:	0c 18       	IF CC JUMP 0xffa016d0 <_substr+0x38>;
ffa016ba:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa016bc:	01 08       	CC = R1 == R0;
ffa016be:	0f 18       	IF CC JUMP 0xffa016dc <_substr+0x44>;
ffa016c0:	00 00       	NOP;
ffa016c2:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa016c4:	0b 64       	R3 += 0x1;		/* (  1) */
ffa016c6:	50 99       	R0 = B[P2] (X);
ffa016c8:	00 0c       	CC = R0 == 0x0;
ffa016ca:	03 18       	IF CC JUMP 0xffa016d0 <_substr+0x38>;
ffa016cc:	1e 09       	CC = R6 <= R3;
ffa016ce:	f7 17       	IF !CC JUMP 0xffa016bc <_substr+0x24> (BP);
ffa016d0:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa016d2:	01 e8 00 00 	UNLINK;
ffa016d6:	40 30       	R0 = P0;
ffa016d8:	b4 05       	(R7:6, P5:4) = [SP++];
ffa016da:	10 00       	RTS;
ffa016dc:	52 30       	R2 = P2;
ffa016de:	3b 30       	R7 = R3;
ffa016e0:	0a 64       	R2 += 0x1;		/* (  1) */
ffa016e2:	0f 64       	R7 += 0x1;		/* (  1) */
ffa016e4:	12 32       	P2 = R2;
ffa016e6:	07 32       	P0 = R7;
ffa016e8:	4c 32       	P1 = P4;
ffa016ea:	6c 32       	P5 = P4;
ffa016ec:	09 6c       	P1 += 0x1;		/* (  1) */
ffa016ee:	15 6c       	P5 += 0x2;		/* (  2) */
ffa016f0:	02 20       	JUMP.S 0xffa016f4 <_substr+0x5c>;
ffa016f2:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa016f4:	4b 99       	R3 = B[P1] (X);
ffa016f6:	50 99       	R0 = B[P2] (X);
ffa016f8:	03 08       	CC = R3 == R0;
ffa016fa:	0e 10       	IF !CC JUMP 0xffa01716 <_substr+0x7e>;
ffa016fc:	03 0c       	CC = R3 == 0x0;
ffa016fe:	0c 18       	IF CC JUMP 0xffa01716 <_substr+0x7e>;
ffa01700:	00 00       	NOP;
ffa01702:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01704:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01706:	68 98       	R0 = B[P5++] (X);
ffa01708:	00 0c       	CC = R0 == 0x0;
ffa0170a:	f4 17       	IF !CC JUMP 0xffa016f2 <_substr+0x5a> (BP);
ffa0170c:	01 e8 00 00 	UNLINK;
ffa01710:	40 30       	R0 = P0;
ffa01712:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01714:	10 00       	RTS;
ffa01716:	12 32       	P2 = R2;
ffa01718:	1f 30       	R3 = R7;
ffa0171a:	d6 2f       	JUMP.S 0xffa016c6 <_substr+0x2e>;

ffa0171c <_sprintf_int>:
ffa0171c:	fb 05       	[--SP] = (R7:7, P5:3);
ffa0171e:	01 0c       	CC = R1 == 0x0;
ffa01720:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01724:	00 34       	I0 = R0;
ffa01726:	11 30       	R2 = R1;
ffa01728:	1a 14       	IF !CC JUMP 0xffa0175c <_sprintf_int+0x40> (BP);
ffa0172a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa0172e:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa01732:	5a 91       	P2 = [P3];
ffa01734:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01736:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01738:	10 9b       	B[P2] = R0;
ffa0173a:	88 32       	P1 = I0;
ffa0173c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0173e:	0b 52       	R0 = R3 - R1;
ffa01740:	00 32       	P0 = R0;
ffa01742:	5a 91       	P2 = [P3];
ffa01744:	09 64       	R1 += 0x1;		/* (  1) */
ffa01746:	99 08       	CC = R1 < R3;
ffa01748:	82 5a       	P2 = P2 + P0;
ffa0174a:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa0174e:	08 9a       	B[P1++] = R0;
ffa01750:	f7 1f       	IF CC JUMP 0xffa0173e <_sprintf_int+0x22> (BP);
ffa01752:	01 e8 00 00 	UNLINK;
ffa01756:	03 30       	R0 = R3;
ffa01758:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0175a:	10 00       	RTS;
ffa0175c:	01 0d       	CC = R1 <= 0x0;
ffa0175e:	2d 18       	IF CC JUMP 0xffa017b8 <_sprintf_int+0x9c>;
ffa01760:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa01764:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa01768:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa0176a:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa0176e:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa01772:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa01774:	b2 e0 20 50 	LSETUP(0xffa01778 <_sprintf_int+0x5c>, 0xffa017b4 <_sprintf_int+0x98>) LC1 = P5;
ffa01778:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa0177c:	59 91 00 00 
ffa01780:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01784:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa01788:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa0178c:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01790:	0b c4 00 00 	R0 = (A0 += A1);
ffa01794:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa01798:	10 4d       	R0 >>>= 0x2;
ffa0179a:	08 52       	R0 = R0 - R1;
ffa0179c:	00 32       	P0 = R0;
ffa0179e:	13 32       	P2 = R3;
ffa017a0:	0b 64       	R3 += 0x1;		/* (  1) */
ffa017a2:	40 0d       	CC = P0 <= 0x0;
ffa017a4:	51 5a       	P1 = P1 + P2;
ffa017a6:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa017a8:	92 5a       	P2 = P2 << 0x1;
ffa017aa:	4a 30       	R1 = P2;
ffa017ac:	0a 52       	R0 = R2 - R1;
ffa017ae:	80 65       	R0 += 0x30;		/* ( 48) */
ffa017b0:	08 9b       	B[P1] = R0;
ffa017b2:	39 18       	IF CC JUMP 0xffa01824 <_sprintf_int+0x108>;
ffa017b4:	50 30       	R2 = P0;
ffa017b6:	c2 2f       	JUMP.S 0xffa0173a <_sprintf_int+0x1e>;
ffa017b8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa017ba:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa017bc:	f8 4f       	R0 <<= 0x1f;
ffa017be:	90 52       	R2 = R0 - R2;
ffa017c0:	02 0d       	CC = R2 <= 0x0;
ffa017c2:	3c 18       	IF CC JUMP 0xffa0183a <_sprintf_int+0x11e>;
ffa017c4:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa017c8:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa017cc:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa017ce:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa017d2:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa017d6:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa017d8:	b2 e0 1f 50 	LSETUP(0xffa017dc <_sprintf_int+0xc0>, 0xffa01816 <_sprintf_int+0xfa>) LC1 = P5;
ffa017dc:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa017e0:	59 91 00 00 
ffa017e4:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa017e8:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa017ec:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa017f0:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa017f4:	0b c4 00 00 	R0 = (A0 += A1);
ffa017f8:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa017fc:	10 4d       	R0 >>>= 0x2;
ffa017fe:	08 52       	R0 = R0 - R1;
ffa01800:	00 32       	P0 = R0;
ffa01802:	61 5a       	P1 = P1 + P4;
ffa01804:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa01806:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa01808:	92 5a       	P2 = P2 << 0x1;
ffa0180a:	4a 30       	R1 = P2;
ffa0180c:	0a 52       	R0 = R2 - R1;
ffa0180e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01810:	40 0d       	CC = P0 <= 0x0;
ffa01812:	08 9b       	B[P1] = R0;
ffa01814:	0f 18       	IF CC JUMP 0xffa01832 <_sprintf_int+0x116>;
ffa01816:	50 30       	R2 = P0;
ffa01818:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa0181a:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa0181c:	5a 91       	P2 = [P3];
ffa0181e:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa01820:	8a 5a       	P2 = P2 + P1;
ffa01822:	10 9b       	B[P2] = R0;
ffa01824:	03 0d       	CC = R3 <= 0x0;
ffa01826:	8a 17       	IF !CC JUMP 0xffa0173a <_sprintf_int+0x1e> (BP);
ffa01828:	01 e8 00 00 	UNLINK;
ffa0182c:	03 30       	R0 = R3;
ffa0182e:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01830:	10 00       	RTS;
ffa01832:	5c 30       	R3 = P4;
ffa01834:	4c 32       	P1 = P4;
ffa01836:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01838:	f2 2f       	JUMP.S 0xffa0181c <_sprintf_int+0x100>;
ffa0183a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa0183e:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa01840:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01842:	0b e1 5c 0e 	P3.L = 0xe5c;		/* (3676)	P3=0xff900e5c <_printf_temp> */
ffa01846:	eb 2f       	JUMP.S 0xffa0181c <_sprintf_int+0x100>;

ffa01848 <_sprintf_hex>:
ffa01848:	10 32       	P2 = R0;
ffa0184a:	78 05       	[--SP] = (R7:7);
ffa0184c:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0184e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01852:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa01854:	10 9b       	B[P2] = R0;
ffa01856:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0185a:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa0185e:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa01860:	12 6c       	P2 += 0x2;		/* (  2) */
ffa01862:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa01864:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa01866:	b2 e0 09 10 	LSETUP(0xffa0186a <_sprintf_hex+0x22>, 0xffa01878 <_sprintf_hex+0x30>) LC1 = P1;
ffa0186a:	01 30       	R0 = R1;
ffa0186c:	10 40       	R0 >>>= R2;
ffa0186e:	18 54       	R0 = R0 & R3;
ffa01870:	38 09       	CC = R0 <= R7;
ffa01872:	09 1c       	IF CC JUMP 0xffa01884 <_sprintf_hex+0x3c> (BP);
ffa01874:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01876:	10 9a       	B[P2++] = R0;
ffa01878:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa0187a:	01 e8 00 00 	UNLINK;
ffa0187e:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01880:	38 05       	(R7:7) = [SP++];
ffa01882:	10 00       	RTS;
ffa01884:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01886:	f8 2f       	JUMP.S 0xffa01876 <_sprintf_hex+0x2e>;

ffa01888 <_strprintf_int>:
ffa01888:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0188a:	29 32       	P5 = R1;
ffa0188c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01890:	0a 30       	R1 = R2;
ffa01892:	38 30       	R7 = R0;
ffa01894:	ff e3 44 ff 	CALL 0xffa0171c <_sprintf_int>;
ffa01898:	29 91       	R1 = [P5];
ffa0189a:	41 50       	R1 = R1 + R0;
ffa0189c:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa018a0:	29 93 00 00 
ffa018a4:	01 e8 00 00 	UNLINK;
ffa018a8:	07 30       	R0 = R7;
ffa018aa:	bd 05       	(R7:7, P5:5) = [SP++];
ffa018ac:	10 00       	RTS;
	...

ffa018b0 <_strprintf_hex>:
ffa018b0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa018b2:	29 32       	P5 = R1;
ffa018b4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa018b8:	0a 30       	R1 = R2;
ffa018ba:	38 30       	R7 = R0;
ffa018bc:	ff e3 c6 ff 	CALL 0xffa01848 <_sprintf_hex>;
ffa018c0:	29 91       	R1 = [P5];
ffa018c2:	41 50       	R1 = R1 + R0;
ffa018c4:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa018c8:	29 93 00 00 
ffa018cc:	01 e8 00 00 	UNLINK;
ffa018d0:	07 30       	R0 = R7;
ffa018d2:	bd 05       	(R7:7, P5:5) = [SP++];
ffa018d4:	10 00       	RTS;
	...

ffa018d8 <_atoi>:
ffa018d8:	08 32       	P1 = R0;
ffa018da:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa018dc:	f5 05       	[--SP] = (R7:6, P5:5);
ffa018de:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa018e2:	48 99       	R0 = B[P1] (X);
ffa018e4:	10 08       	CC = R0 == R2;
ffa018e6:	25 18       	IF CC JUMP 0xffa01930 <_atoi+0x58>;
ffa018e8:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa018ea:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa018ec:	41 32       	P0 = P1;
ffa018ee:	08 6c       	P0 += 0x1;		/* (  1) */
ffa018f0:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa018f2:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa018f4:	12 20       	JUMP.S 0xffa01918 <_atoi+0x40>;
ffa018f6:	8b 08       	CC = R3 < R1;
ffa018f8:	16 10       	IF !CC JUMP 0xffa01924 <_atoi+0x4c>;
ffa018fa:	10 43       	R0 = R2.B (X);
ffa018fc:	28 32       	P5 = R0;
ffa018fe:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa01900:	40 99       	R0 = B[P0] (X);
ffa01902:	80 66       	R0 += -0x30;		/* (-48) */
ffa01904:	40 43       	R0 = R0.B (Z);
ffa01906:	aa 5a       	P2 = P2 + P5;
ffa01908:	10 0a       	CC = R0 <= R2 (IU);
ffa0190a:	82 6e       	P2 += -0x30;		/* (-48) */
ffa0190c:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0190e:	03 14       	IF !CC JUMP 0xffa01914 <_atoi+0x3c> (BP);
ffa01910:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa01912:	92 5a       	P2 = P2 << 0x1;
ffa01914:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01916:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01918:	4a 99       	R2 = B[P1] (X);
ffa0191a:	02 30       	R0 = R2;
ffa0191c:	80 66       	R0 += -0x30;		/* (-48) */
ffa0191e:	40 43       	R0 = R0.B (Z);
ffa01920:	30 0a       	CC = R0 <= R6 (IU);
ffa01922:	ea 1f       	IF CC JUMP 0xffa018f6 <_atoi+0x1e> (BP);
ffa01924:	42 30       	R0 = P2;
ffa01926:	f8 40       	R0 *= R7;
ffa01928:	01 e8 00 00 	UNLINK;
ffa0192c:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0192e:	10 00       	RTS;
ffa01930:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01932:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01934:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01936:	db 2f       	JUMP.S 0xffa018ec <_atoi+0x14>;

ffa01938 <_udelay>:
ffa01938:	00 0d       	CC = R0 <= 0x0;
ffa0193a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0193e:	0b 18       	IF CC JUMP 0xffa01954 <_udelay+0x1c>;
ffa01940:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01942:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa01946:	b2 e0 03 20 	LSETUP(0xffa0194a <_udelay+0x12>, 0xffa0194c <_udelay+0x14>) LC1 = P2;
ffa0194a:	00 00       	NOP;
ffa0194c:	00 00       	NOP;
ffa0194e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01950:	08 08       	CC = R0 == R1;
ffa01952:	f8 17       	IF !CC JUMP 0xffa01942 <_udelay+0xa> (BP);
ffa01954:	01 e8 00 00 	UNLINK;
ffa01958:	10 00       	RTS;
	...

ffa0195c <_bfin_EMAC_send_check>:
ffa0195c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa01960:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01964:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01968:	50 95       	R0 = W[P2] (X);
ffa0196a:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa0196c:	00 02       	R0 = CC;
ffa0196e:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa01970:	01 e8 00 00 	UNLINK;
ffa01974:	10 00       	RTS;
	...

ffa01978 <_FormatIPAddress>:
ffa01978:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0197c:	18 30       	R3 = R0;
ffa0197e:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa01982:	40 4f       	R0 <<= 0x8;
ffa01984:	52 43       	R2 = R2.B (Z);
ffa01986:	10 56       	R0 = R0 | R2;
ffa01988:	40 4f       	R0 <<= 0x8;
ffa0198a:	49 43       	R1 = R1.B (Z);
ffa0198c:	08 56       	R0 = R0 | R1;
ffa0198e:	40 4f       	R0 <<= 0x8;
ffa01990:	5b 43       	R3 = R3.B (Z);
ffa01992:	18 56       	R0 = R0 | R3;
ffa01994:	01 e8 00 00 	UNLINK;
ffa01998:	10 00       	RTS;
	...

ffa0199c <_bfin_EMAC_halt>:
ffa0199c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa019a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa019a2:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa019a6:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa019aa:	10 93       	[P2] = R0;
ffa019ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa019b0:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa019b4:	10 97       	W[P2] = R0;
ffa019b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa019ba:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa019be:	10 97       	W[P2] = R0;
ffa019c0:	01 e8 00 00 	UNLINK;
ffa019c4:	10 00       	RTS;
	...

ffa019c8 <_PollMdcDone>:
ffa019c8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa019cc:	02 20       	JUMP.S 0xffa019d0 <_PollMdcDone+0x8>;
ffa019ce:	00 00       	NOP;
ffa019d0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa019d4:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa019d8:	10 91       	R0 = [P2];
ffa019da:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa019dc:	f9 17       	IF !CC JUMP 0xffa019ce <_PollMdcDone+0x6> (BP);
ffa019de:	01 e8 00 00 	UNLINK;
ffa019e2:	10 00       	RTS;

ffa019e4 <_WrPHYReg>:
ffa019e4:	68 05       	[--SP] = (R7:5);
ffa019e6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa019ea:	28 30       	R5 = R0;
ffa019ec:	31 30       	R6 = R1;
ffa019ee:	3a 30       	R7 = R2;
ffa019f0:	ff e3 ec ff 	CALL 0xffa019c8 <_PollMdcDone>;
ffa019f4:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa019f6:	b0 55       	R6 = R0 & R6;
ffa019f8:	28 54       	R0 = R0 & R5;
ffa019fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa019fe:	58 4f       	R0 <<= 0xb;
ffa01a00:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa01a02:	ff 42       	R7 = R7.L (Z);
ffa01a04:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01a08:	36 4f       	R6 <<= 0x6;
ffa01a0a:	08 56       	R0 = R0 | R1;
ffa01a0c:	17 93       	[P2] = R7;
ffa01a0e:	86 57       	R6 = R6 | R0;
ffa01a10:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa01a12:	16 93       	[P2] = R6;
ffa01a14:	01 e8 00 00 	UNLINK;
ffa01a18:	28 05       	(R7:5) = [SP++];
ffa01a1a:	10 00       	RTS;

ffa01a1c <_RdPHYReg>:
ffa01a1c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01a1e:	29 32       	P5 = R1;
ffa01a20:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01a24:	38 30       	R7 = R0;
ffa01a26:	ff e3 d1 ff 	CALL 0xffa019c8 <_PollMdcDone>;
ffa01a2a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa01a2e:	45 30       	R0 = P5;
ffa01a30:	c0 42       	R0 = R0.L (Z);
ffa01a32:	28 32       	P5 = R0;
ffa01a34:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01a36:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01a3a:	55 30       	R2 = P5;
ffa01a3c:	42 54       	R1 = R2 & R0;
ffa01a3e:	38 54       	R0 = R0 & R7;
ffa01a40:	58 4f       	R0 <<= 0xb;
ffa01a42:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa01a44:	31 4f       	R1 <<= 0x6;
ffa01a46:	41 56       	R1 = R1 | R0;
ffa01a48:	11 93       	[P2] = R1;
ffa01a4a:	ff e3 bf ff 	CALL 0xffa019c8 <_PollMdcDone>;
ffa01a4e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa01a52:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01a56:	10 91       	R0 = [P2];
ffa01a58:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa01a5c:	0a e1 64 0e 	P2.L = 0xe64;		/* (3684)	P2=0xff900e64 <_PHYregs> */
ffa01a60:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa01a62:	10 97       	W[P2] = R0;
ffa01a64:	01 e8 00 00 	UNLINK;
ffa01a68:	c0 42       	R0 = R0.L (Z);
ffa01a6a:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01a6c:	10 00       	RTS;
	...

ffa01a70 <_SoftResetPHY>:
ffa01a70:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a72:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a74:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa01a78:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01a7c:	ff e3 b4 ff 	CALL 0xffa019e4 <_WrPHYReg>;
ffa01a80:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a82:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a84:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01a86:	ff e3 af ff 	CALL 0xffa019e4 <_WrPHYReg>;
ffa01a8a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a8c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a8e:	ff e3 c7 ff 	CALL 0xffa01a1c <_RdPHYReg>;
ffa01a92:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa01a94:	fb 1f       	IF CC JUMP 0xffa01a8a <_SoftResetPHY+0x1a> (BP);
ffa01a96:	01 e8 00 00 	UNLINK;
ffa01a9a:	10 00       	RTS;

ffa01a9c <_NetCksum>:
ffa01a9c:	01 0d       	CC = R1 <= 0x0;
ffa01a9e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01aa2:	10 18       	IF CC JUMP 0xffa01ac2 <_NetCksum+0x26>;
ffa01aa4:	10 32       	P2 = R0;
ffa01aa6:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01aa8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01aaa:	0a 64       	R2 += 0x1;		/* (  1) */
ffa01aac:	10 94       	R0 = W[P2++] (Z);
ffa01aae:	0a 08       	CC = R2 == R1;
ffa01ab0:	c3 50       	R3 = R3 + R0;
ffa01ab2:	fc 17       	IF !CC JUMP 0xffa01aaa <_NetCksum+0xe> (BP);
ffa01ab4:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa01ab8:	03 50       	R0 = R3 + R0;
ffa01aba:	c0 42       	R0 = R0.L (Z);
ffa01abc:	01 e8 00 00 	UNLINK;
ffa01ac0:	10 00       	RTS;
ffa01ac2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ac4:	01 e8 00 00 	UNLINK;
ffa01ac8:	10 00       	RTS;
	...

ffa01acc <_htons>:
ffa01acc:	08 30       	R1 = R0;
ffa01ace:	c0 42       	R0 = R0.L (Z);
ffa01ad0:	40 4e       	R0 >>= 0x8;
ffa01ad2:	41 4f       	R1 <<= 0x8;
ffa01ad4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01ad8:	08 56       	R0 = R0 | R1;
ffa01ada:	c0 42       	R0 = R0.L (Z);
ffa01adc:	01 e8 00 00 	UNLINK;
ffa01ae0:	10 00       	RTS;
	...

ffa01ae4 <_htonl>:
ffa01ae4:	10 30       	R2 = R0;
ffa01ae6:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa01aea:	40 43       	R0 = R0.B (Z);
ffa01aec:	49 43       	R1 = R1.B (Z);
ffa01aee:	40 4f       	R0 <<= 0x8;
ffa01af0:	08 56       	R0 = R0 | R1;
ffa01af2:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa01af6:	40 4f       	R0 <<= 0x8;
ffa01af8:	49 43       	R1 = R1.B (Z);
ffa01afa:	08 56       	R0 = R0 | R1;
ffa01afc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01b00:	40 4f       	R0 <<= 0x8;
ffa01b02:	c2 4e       	R2 >>= 0x18;
ffa01b04:	10 56       	R0 = R0 | R2;
ffa01b06:	01 e8 00 00 	UNLINK;
ffa01b0a:	10 00       	RTS;

ffa01b0c <_pack4chars>:
ffa01b0c:	08 32       	P1 = R0;
ffa01b0e:	10 32       	P2 = R0;
ffa01b10:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01b14:	01 e8 00 00 	UNLINK;
ffa01b18:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa01b1c:	10 98       	R0 = B[P2++] (Z);
ffa01b1e:	41 4f       	R1 <<= 0x8;
ffa01b20:	08 50       	R0 = R0 + R1;
ffa01b22:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa01b26:	81 4f       	R1 <<= 0x10;
ffa01b28:	08 50       	R0 = R0 + R1;
ffa01b2a:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa01b2e:	c1 4f       	R1 <<= 0x18;
ffa01b30:	08 50       	R0 = R0 + R1;
ffa01b32:	10 00       	RTS;

ffa01b34 <_ip_header_setup>:
ffa01b34:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01b36:	28 32       	P5 = R0;
ffa01b38:	21 32       	P4 = R1;
ffa01b3a:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01b3e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b42:	32 30       	R6 = R2;
ffa01b44:	28 9b       	B[P5] = R0;
ffa01b46:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b48:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa01b4c:	27 91       	R7 = [P4];
ffa01b4e:	f8 42       	R0 = R7.L (Z);
ffa01b50:	ff e3 be ff 	CALL 0xffa01acc <_htons>;
ffa01b54:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e64 <_PHYregs> */
ffa01b58:	0a e1 ae 0e 	P2.L = 0xeae;		/* (3758)	P2=0xff900eae <_NetIPID> */
ffa01b5c:	68 b4       	W[P5 + 0x2] = R0;
ffa01b5e:	10 95       	R0 = W[P2] (Z);
ffa01b60:	08 30       	R1 = R0;
ffa01b62:	09 64       	R1 += 0x1;		/* (  1) */
ffa01b64:	67 67       	R7 += -0x14;		/* (-20) */
ffa01b66:	11 97       	W[P2] = R1;
ffa01b68:	27 93       	[P4] = R7;
ffa01b6a:	ff e3 b1 ff 	CALL 0xffa01acc <_htons>;
ffa01b6e:	a8 b4       	W[P5 + 0x4] = R0;
ffa01b70:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01b74:	ff e3 ac ff 	CALL 0xffa01acc <_htons>;
ffa01b78:	e8 b4       	W[P5 + 0x6] = R0;
ffa01b7a:	82 c6 46 01 	R0 = R6 >>> 0x18;
ffa01b7e:	c0 4f       	R0 <<= 0x18;
ffa01b80:	00 0c       	CC = R0 == 0x0;
ffa01b82:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01b84:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01b88:	01 07       	IF CC R0 = R1;
ffa01b8a:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01b8e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eae <_NetIPID> */
ffa01b92:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa01b96:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01b9a:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa01b9e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ba0:	68 b5       	W[P5 + 0xa] = R0;
ffa01ba2:	10 91       	R0 = [P2];
ffa01ba4:	e8 b0       	[P5 + 0xc] = R0;
ffa01ba6:	2e b1       	[P5 + 0x10] = R6;
ffa01ba8:	45 30       	R0 = P5;
ffa01baa:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01bac:	ff e3 78 ff 	CALL 0xffa01a9c <_NetCksum>;
ffa01bb0:	c0 43       	R0 =~ R0;
ffa01bb2:	68 b5       	W[P5 + 0xa] = R0;
ffa01bb4:	01 e8 00 00 	UNLINK;
ffa01bb8:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01bba:	45 30       	R0 = P5;
ffa01bbc:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01bbe:	10 00       	RTS;

ffa01bc0 <_ip_header_checksum>:
ffa01bc0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01bc4:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa01bc6:	ff e3 6b ff 	CALL 0xffa01a9c <_NetCksum>;
ffa01bca:	08 02       	CC = R0;
ffa01bcc:	00 02       	R0 = CC;
ffa01bce:	01 e8 00 00 	UNLINK;
ffa01bd2:	10 00       	RTS;

ffa01bd4 <_icmp_header_setup>:
ffa01bd4:	00 32       	P0 = R0;
ffa01bd6:	c5 04       	[--SP] = (P5:5);
ffa01bd8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01bda:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01bde:	29 32       	P5 = R1;
ffa01be0:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa01be4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01be6:	40 b4       	W[P0 + 0x2] = R0;
ffa01be8:	38 ab       	R0 = W[FP + 0x18] (X);
ffa01bea:	80 b4       	W[P0 + 0x4] = R0;
ffa01bec:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa01bee:	02 9b       	B[P0] = R2;
ffa01bf0:	c0 b4       	W[P0 + 0x6] = R0;
ffa01bf2:	48 32       	P1 = P0;
ffa01bf4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01bf6:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa01bf8:	b2 e0 03 20 	LSETUP(0xffa01bfc <_icmp_header_setup+0x28>, 0xffa01bfe <_icmp_header_setup+0x2a>) LC1 = P2;
ffa01bfc:	08 94       	R0 = W[P1++] (Z);
ffa01bfe:	41 50       	R1 = R1 + R0;
ffa01c00:	c8 42       	R0 = R1.L (Z);
ffa01c02:	81 4e       	R1 >>= 0x10;
ffa01c04:	08 50       	R0 = R0 + R1;
ffa01c06:	c0 43       	R0 =~ R0;
ffa01c08:	40 b4       	W[P0 + 0x2] = R0;
ffa01c0a:	28 91       	R0 = [P5];
ffa01c0c:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa01c0e:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01c10:	01 e8 00 00 	UNLINK;
ffa01c14:	28 93       	[P5] = R0;
ffa01c16:	40 30       	R0 = P0;
ffa01c18:	85 04       	(P5:5) = [SP++];
ffa01c1a:	10 00       	RTS;

ffa01c1c <_udp_header_setup>:
ffa01c1c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01c1e:	28 32       	P5 = R0;
ffa01c20:	21 32       	P4 = R1;
ffa01c22:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01c26:	d0 42       	R0 = R2.L (Z);
ffa01c28:	ff e3 52 ff 	CALL 0xffa01acc <_htons>;
ffa01c2c:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa01c30:	28 97       	W[P5] = R0;
ffa01c32:	07 30       	R0 = R7;
ffa01c34:	ff e3 4c ff 	CALL 0xffa01acc <_htons>;
ffa01c38:	27 91       	R7 = [P4];
ffa01c3a:	68 b4       	W[P5 + 0x2] = R0;
ffa01c3c:	f8 42       	R0 = R7.L (Z);
ffa01c3e:	ff e3 47 ff 	CALL 0xffa01acc <_htons>;
ffa01c42:	a8 b4       	W[P5 + 0x4] = R0;
ffa01c44:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c46:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa01c48:	e8 b4       	W[P5 + 0x6] = R0;
ffa01c4a:	01 e8 00 00 	UNLINK;
ffa01c4e:	45 6c       	P5 += 0x8;		/* (  8) */
ffa01c50:	45 30       	R0 = P5;
ffa01c52:	27 93       	[P4] = R7;
ffa01c54:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01c56:	10 00       	RTS;

ffa01c58 <_tcp_header_setup>:
ffa01c58:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01c5a:	28 32       	P5 = R0;
ffa01c5c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01c60:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01c64:	21 32       	P4 = R1;
ffa01c66:	3a 30       	R7 = R2;
ffa01c68:	ff e3 32 ff 	CALL 0xffa01acc <_htons>;
ffa01c6c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa01c70:	0a e1 d0 0f 	P2.L = 0xfd0;		/* (4048)	P2=0xff900fd0 <_TcpClientPort> */
ffa01c74:	28 97       	W[P5] = R0;
ffa01c76:	50 95       	R0 = W[P2] (X);
ffa01c78:	68 b4       	W[P5 + 0x2] = R0;
ffa01c7a:	38 a2       	R0 = [FP + 0x20];
ffa01c7c:	ff e3 34 ff 	CALL 0xffa01ae4 <_htonl>;
ffa01c80:	68 b0       	[P5 + 0x4] = R0;
ffa01c82:	78 a2       	R0 = [FP + 0x24];
ffa01c84:	ff e3 30 ff 	CALL 0xffa01ae4 <_htonl>;
ffa01c88:	a8 b0       	[P5 + 0x8] = R0;
ffa01c8a:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01c8e:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01c92:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa01c96:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa01c9a:	ff e3 19 ff 	CALL 0xffa01acc <_htons>;
ffa01c9e:	e8 b5       	W[P5 + 0xe] = R0;
ffa01ca0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ca2:	28 b6       	W[P5 + 0x10] = R0;
ffa01ca4:	68 b6       	W[P5 + 0x12] = R0;
ffa01ca6:	20 91       	R0 = [P4];
ffa01ca8:	60 67       	R0 += -0x14;		/* (-20) */
ffa01caa:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01cac:	01 e8 00 00 	UNLINK;
ffa01cb0:	20 93       	[P4] = R0;
ffa01cb2:	45 30       	R0 = P5;
ffa01cb4:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01cb6:	10 00       	RTS;

ffa01cb8 <_bfin_EMAC_send_nocopy>:
ffa01cb8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00fd0(-4190256) */
ffa01cbc:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01cbe:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01cc2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01cc6:	10 97       	W[P2] = R0;
ffa01cc8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01ccc:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01cd0:	50 95       	R0 = W[P2] (X);
ffa01cd2:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01cd4:	59 10       	IF !CC JUMP 0xffa01d86 <_bfin_EMAC_send_nocopy+0xce>;
ffa01cd6:	00 00       	NOP;
ffa01cd8:	00 00       	NOP;
ffa01cda:	00 00       	NOP;
ffa01cdc:	50 95       	R0 = W[P2] (X);
ffa01cde:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01ce0:	16 18       	IF CC JUMP 0xffa01d0c <_bfin_EMAC_send_nocopy+0x54>;
ffa01ce2:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0008 */
ffa01ce6:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01cea:	b2 e0 09 10 	LSETUP(0xffa01cee <_bfin_EMAC_send_nocopy+0x36>, 0xffa01cfc <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa01cee:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01cf2:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01cf6:	50 95       	R0 = W[P2] (X);
ffa01cf8:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01cfa:	09 18       	IF CC JUMP 0xffa01d0c <_bfin_EMAC_send_nocopy+0x54>;
ffa01cfc:	00 00       	NOP;
ffa01cfe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa01d02:	00 e1 08 01 	R0.L = 0x108;		/* (264)	R0=0xff900108(-7339768) */
ffa01d06:	ff e3 83 fa 	CALL 0xffa0120c <_printf_str>;
ffa01d0a:	30 20       	JUMP.S 0xffa01d6a <_bfin_EMAC_send_nocopy+0xb2>;
ffa01d0c:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa01d10:	08 e1 ac 0e 	P0.L = 0xeac;		/* (3756)	P0=0xff900eac <_txIdx> */
ffa01d14:	00 95       	R0 = W[P0] (Z);
ffa01d16:	10 32       	P2 = R0;
ffa01d18:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01d1c:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa01d20:	42 95       	R2 = W[P0] (X);
ffa01d22:	d1 42       	R1 = R2.L (Z);
ffa01d24:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01d26:	52 91       	P2 = [P2];
ffa01d28:	11 0d       	CC = R1 <= 0x2;
ffa01d2a:	90 a1       	R0 = [P2 + 0x18];
ffa01d2c:	50 b0       	[P2 + 0x4] = R0;
ffa01d2e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d30:	90 b2       	[P2 + 0x28] = R0;
ffa01d32:	11 32       	P2 = R1;
ffa01d34:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa01d36:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01d3a:	08 91       	R0 = [P1];
ffa01d3c:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01d40:	10 93       	[P2] = R0;
ffa01d42:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01d46:	0a e1 fa 04 	P2.L = 0x4fa;		/* (1274)	P2=0xff9004fa <_txdmacfg> */
ffa01d4a:	50 95       	R0 = W[P2] (X);
ffa01d4c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004fa(-4193030) */
ffa01d50:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01d54:	10 97       	W[P2] = R0;
ffa01d56:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01d5a:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01d5e:	10 91       	R0 = [P2];
ffa01d60:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01d62:	10 93       	[P2] = R0;
ffa01d64:	0d 1c       	IF CC JUMP 0xffa01d7e <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa01d66:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d68:	00 97       	W[P0] = R0;
ffa01d6a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01d6e:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01d70:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01d74:	10 97       	W[P2] = R0;
ffa01d76:	01 e8 00 00 	UNLINK;
ffa01d7a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d7c:	10 00       	RTS;
ffa01d7e:	02 30       	R0 = R2;
ffa01d80:	08 64       	R0 += 0x1;		/* (  1) */
ffa01d82:	00 97       	W[P0] = R0;
ffa01d84:	f3 2f       	JUMP.S 0xffa01d6a <_bfin_EMAC_send_nocopy+0xb2>;
ffa01d86:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01d8a:	00 e1 f0 00 	R0.L = 0xf0;		/* (240)	R0=0xff9000f0(-7339792) */
ffa01d8e:	ff e3 3f fa 	CALL 0xffa0120c <_printf_str>;
ffa01d92:	ec 2f       	JUMP.S 0xffa01d6a <_bfin_EMAC_send_nocopy+0xb2>;

ffa01d94 <_DHCP_tx>:
ffa01d94:	e3 05       	[--SP] = (R7:4, P5:3);
ffa01d96:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa01d9a:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01d9e:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa01da2:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa01da6:	10 95 00 00 
ffa01daa:	10 32       	P2 = R0;
ffa01dac:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900eb0 <_txbuf> */
ffa01db0:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa01db4:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa01db8:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01dba:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01dbc:	52 91       	P2 = [P2];
ffa01dbe:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa01dc2:	f1 bb 00 00 
ffa01dc6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90000b */
ffa01dca:	0d e1 d4 0e 	P5.L = 0xed4;		/* (3796)	P5=0xff900ed4 <_NetOurMAC> */
ffa01dce:	94 ad       	P4 = [P2 + 0x18];
ffa01dd0:	1a 32       	P3 = R2;
ffa01dd2:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01dd4:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01dd6:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa01dda:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa01dde:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa01de2:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa01de6:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa01dea:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa01dee:	20 97       	W[P4] = R0;
ffa01df0:	68 99       	R0 = B[P5] (X);
ffa01df2:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa01df6:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01dfa:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa01dfe:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01e02:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa01e06:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01e0a:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa01e0e:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01e12:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa01e16:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01e1a:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa01e1e:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01e22:	ff e3 55 fe 	CALL 0xffa01acc <_htons>;
ffa01e26:	e0 b5       	W[P4 + 0xe] = R0;
ffa01e28:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01e2c:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa01e30:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa01e34:	04 50       	R0 = R4 + R0;
ffa01e36:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa01e3a:	c0 42       	R0 = R0.L (Z);
ffa01e3c:	ff e3 48 fe 	CALL 0xffa01acc <_htons>;
ffa01e40:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa01e44:	0a e1 ae 0e 	P2.L = 0xeae;		/* (3758)	P2=0xff900eae <_NetIPID> */
ffa01e48:	60 b6       	W[P4 + 0x12] = R0;
ffa01e4a:	10 95       	R0 = W[P2] (Z);
ffa01e4c:	08 30       	R1 = R0;
ffa01e4e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01e50:	11 97       	W[P2] = R1;
ffa01e52:	ff e3 3d fe 	CALL 0xffa01acc <_htons>;
ffa01e56:	a0 b6       	W[P4 + 0x14] = R0;
ffa01e58:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01e5c:	ff e3 38 fe 	CALL 0xffa01acc <_htons>;
ffa01e60:	e0 b6       	W[P4 + 0x16] = R0;
ffa01e62:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01e64:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa01e68:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa01e6c:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa01e70:	66 b7 00 00 
ffa01e74:	44 30       	R0 = P4;
ffa01e76:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01e78:	e7 b1       	[P4 + 0x1c] = R7;
ffa01e7a:	23 be       	[P4 + 0x20] = P3;
ffa01e7c:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01e7e:	ff e3 0f fe 	CALL 0xffa01a9c <_NetCksum>;
ffa01e82:	c0 43       	R0 =~ R0;
ffa01e84:	60 b7       	W[P4 + 0x1a] = R0;
ffa01e86:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa01e8a:	ff e3 21 fe 	CALL 0xffa01acc <_htons>;
ffa01e8e:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa01e92:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa01e96:	ff e3 1b fe 	CALL 0xffa01acc <_htons>;
ffa01e9a:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa01e9e:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa01ea2:	04 50       	R0 = R4 + R0;
ffa01ea4:	c0 42       	R0 = R0.L (Z);
ffa01ea6:	ff e3 13 fe 	CALL 0xffa01acc <_htons>;
ffa01eaa:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa01eae:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01eb0:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa01eb4:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa01eb8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00eae(-4190546) */
ffa01ebc:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01ebe:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa01ec2:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa01ec6:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa01eca:	10 91       	R0 = [P2];
ffa01ecc:	20 b3       	[P4 + 0x30] = R0;
ffa01ece:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa01ed2:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa01ed6:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa01eda:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa01ede:	a7 b3       	[P4 + 0x38] = R7;
ffa01ee0:	e7 b3       	[P4 + 0x3c] = R7;
ffa01ee2:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa01ee6:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa01eea:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa01eee:	ff e3 fb fd 	CALL 0xffa01ae4 <_htonl>;
ffa01ef2:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa01ef6:	68 99       	R0 = B[P5] (X);
ffa01ef8:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa01efc:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01f00:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa01f04:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01f08:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa01f0c:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01f10:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa01f14:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01f18:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa01f1c:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01f20:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa01f24:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa01f28:	54 5a       	P1 = P4 + P2;
ffa01f2a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01f2c:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa01f2e:	b2 e0 02 20 	LSETUP(0xffa01f32 <_DHCP_tx+0x19e>, 0xffa01f32 <_DHCP_tx+0x19e>) LC1 = P2;
ffa01f32:	08 9a       	B[P1++] = R0;
ffa01f34:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa01f38:	54 5a       	P1 = P4 + P2;
ffa01f3a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01f3c:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa01f3e:	b2 e0 02 20 	LSETUP(0xffa01f42 <_DHCP_tx+0x1ae>, 0xffa01f42 <_DHCP_tx+0x1ae>) LC1 = P2;
ffa01f42:	08 92       	[P1++] = R0;
ffa01f44:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa01f48:	54 5a       	P1 = P4 + P2;
ffa01f4a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01f4c:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa01f4e:	b2 e0 02 20 	LSETUP(0xffa01f52 <_DHCP_tx+0x1be>, 0xffa01f52 <_DHCP_tx+0x1be>) LC1 = P2;
ffa01f52:	08 92       	[P1++] = R0;
ffa01f54:	44 30       	R0 = P4;
ffa01f56:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa01f5a:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa01f5e:	f0 b9 00 00 
ffa01f62:	14 30       	R2 = R4;
ffa01f64:	ff e3 fc fa 	CALL 0xffa0155c <_memcpy_>;
ffa01f68:	01 e8 00 00 	UNLINK;
ffa01f6c:	a3 05       	(R7:4, P5:3) = [SP++];
ffa01f6e:	ff e2 a5 fe 	JUMP.L 0xffa01cb8 <_bfin_EMAC_send_nocopy>;
	...

ffa01f74 <_DHCP_tx_discover>:
ffa01f74:	c5 04       	[--SP] = (P5:5);
ffa01f76:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ed4 <_NetOurMAC> */
ffa01f7a:	0d e1 a8 0e 	P5.L = 0xea8;		/* (3752)	P5=0xff900ea8 <_NetDHCPserv> */
ffa01f7e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01f80:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01f84:	28 93       	[P5] = R0;
ffa01f86:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa01f88:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa01f8c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01f8e:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa01f92:	b8 e6 fe ff 	B[FP + -0x2] = R0;
ffa01f96:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01f98:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa01f9c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa01fa0:	00 e1 20 01 	R0.L = 0x120;		/* (288)	R0=0xff900120(-7339744) */
ffa01fa4:	ff e3 34 f9 	CALL 0xffa0120c <_printf_str>;
ffa01fa8:	4f 30       	R1 = FP;
ffa01faa:	2a 91       	R2 = [P5];
ffa01fac:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa01fae:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa01fb0:	ff e3 f2 fe 	CALL 0xffa01d94 <_DHCP_tx>;
ffa01fb4:	01 e8 00 00 	UNLINK;
ffa01fb8:	85 04       	(P5:5) = [SP++];
ffa01fba:	10 00       	RTS;

ffa01fbc <_DHCP_parse>:
ffa01fbc:	f5 05       	[--SP] = (R7:6, P5:5);
ffa01fbe:	09 0d       	CC = R1 <= 0x1;
ffa01fc0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01fc4:	10 32       	P2 = R0;
ffa01fc6:	33 18       	IF CC JUMP 0xffa0202c <_DHCP_parse+0x70>;
ffa01fc8:	00 00       	NOP;
ffa01fca:	31 30       	R6 = R1;
ffa01fcc:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01fce:	11 98       	R1 = B[P2++] (Z);
ffa01fd0:	01 0c       	CC = R1 == 0x0;
ffa01fd2:	2b 1c       	IF CC JUMP 0xffa02028 <_DHCP_parse+0x6c> (BP);
ffa01fd4:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa01fd8:	01 08       	CC = R1 == R0;
ffa01fda:	57 99       	R7 = B[P2] (X);
ffa01fdc:	28 18       	IF CC JUMP 0xffa0202c <_DHCP_parse+0x70>;
ffa01fde:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa01fe0:	6a 32       	P5 = P2;
ffa01fe2:	01 0a       	CC = R1 <= R0 (IU);
ffa01fe4:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa01fe6:	09 14       	IF !CC JUMP 0xffa01ff8 <_DHCP_parse+0x3c> (BP);
ffa01fe8:	09 32       	P1 = R1;
ffa01fea:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900020 */
ffa01fee:	0a e1 08 04 	P2.L = 0x408;		/* (1032)	P2=0xff900408 */
ffa01ff2:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa01ff4:	52 91       	P2 = [P2];
ffa01ff6:	52 00       	JUMP (P2);
ffa01ff8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa01ffc:	00 e1 dc 01 	R0.L = 0x1dc;		/* (476)	R0=0xff9001dc(-7339556) */
ffa02000:	ff e3 c8 f9 	CALL 0xffa01390 <_printf_int>;
ffa02004:	7f 43       	R7 = R7.B (Z);
ffa02006:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001dc(-7339556) */
ffa0200a:	00 e1 f0 01 	R0.L = 0x1f0;		/* (496)	R0=0xff9001f0(-7339536) */
ffa0200e:	0f 30       	R1 = R7;
ffa02010:	ff e3 c0 f9 	CALL 0xffa01390 <_printf_int>;
ffa02014:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001f0(-7339536) */
ffa02018:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa0201c:	ff e3 f8 f8 	CALL 0xffa0120c <_printf_str>;
ffa02020:	0f 32       	P1 = R7;
ffa02022:	be 53       	R6 = R6 - R7;
ffa02024:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa02026:	8d 5a       	P2 = P5 + P1;
ffa02028:	0e 0d       	CC = R6 <= 0x1;
ffa0202a:	d1 17       	IF !CC JUMP 0xffa01fcc <_DHCP_parse+0x10> (BP);
ffa0202c:	01 e8 00 00 	UNLINK;
ffa02030:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02032:	10 00       	RTS;
ffa02034:	45 30       	R0 = P5;
ffa02036:	ff e3 6b fd 	CALL 0xffa01b0c <_pack4chars>;
ffa0203a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900408 */
ffa0203e:	0a e1 dc 0e 	P2.L = 0xedc;		/* (3804)	P2=0xff900edc <_NetSubnetMask> */
ffa02042:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa02046:	10 93 00 00 
ffa0204a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ac4(-7337276) */
ffa0204e:	00 e1 34 01 	R0.L = 0x134;		/* (308)	R0=0xff900134(-7339724) */
ffa02052:	ff e3 41 fa 	CALL 0xffa014d4 <_printf_ip>;
ffa02056:	7f 43       	R7 = R7.B (Z);
ffa02058:	de 2f       	JUMP.S 0xffa02014 <_DHCP_parse+0x58>;
ffa0205a:	45 30       	R0 = P5;
ffa0205c:	ff e3 58 fd 	CALL 0xffa01b0c <_pack4chars>;
ffa02060:	08 30       	R1 = R0;
ffa02062:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900134(-7339724) */
ffa02066:	00 e1 44 01 	R0.L = 0x144;		/* (324)	R0=0xff900144(-7339708) */
ffa0206a:	ff e3 35 fa 	CALL 0xffa014d4 <_printf_ip>;
ffa0206e:	7f 43       	R7 = R7.B (Z);
ffa02070:	d2 2f       	JUMP.S 0xffa02014 <_DHCP_parse+0x58>;
ffa02072:	45 30       	R0 = P5;
ffa02074:	ff e3 4c fd 	CALL 0xffa01b0c <_pack4chars>;
ffa02078:	08 30       	R1 = R0;
ffa0207a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900144(-7339708) */
ffa0207e:	00 e1 54 01 	R0.L = 0x154;		/* (340)	R0=0xff900154(-7339692) */
ffa02082:	ff e3 29 fa 	CALL 0xffa014d4 <_printf_ip>;
ffa02086:	7f 43       	R7 = R7.B (Z);
ffa02088:	c6 2f       	JUMP.S 0xffa02014 <_DHCP_parse+0x58>;
ffa0208a:	45 30       	R0 = P5;
ffa0208c:	ff e3 40 fd 	CALL 0xffa01b0c <_pack4chars>;
ffa02090:	08 30       	R1 = R0;
ffa02092:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900154(-7339692) */
ffa02096:	00 e1 64 01 	R0.L = 0x164;		/* (356)	R0=0xff900164(-7339676) */
ffa0209a:	ff e3 1d fa 	CALL 0xffa014d4 <_printf_ip>;
ffa0209e:	7f 43       	R7 = R7.B (Z);
ffa020a0:	ba 2f       	JUMP.S 0xffa02014 <_DHCP_parse+0x58>;
ffa020a2:	45 30       	R0 = P5;
ffa020a4:	ff e3 34 fd 	CALL 0xffa01b0c <_pack4chars>;
ffa020a8:	ff e3 1e fd 	CALL 0xffa01ae4 <_htonl>;
ffa020ac:	08 30       	R1 = R0;
ffa020ae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900164(-7339676) */
ffa020b2:	00 e1 74 01 	R0.L = 0x174;		/* (372)	R0=0xff900174(-7339660) */
ffa020b6:	ff e3 6d f9 	CALL 0xffa01390 <_printf_int>;
ffa020ba:	7f 43       	R7 = R7.B (Z);
ffa020bc:	ac 2f       	JUMP.S 0xffa02014 <_DHCP_parse+0x58>;
ffa020be:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900174(-7339660) */
ffa020c2:	29 99       	R1 = B[P5] (Z);
ffa020c4:	00 e1 88 01 	R0.L = 0x188;		/* (392)	R0=0xff900188(-7339640) */
ffa020c8:	ff e3 64 f9 	CALL 0xffa01390 <_printf_int>;
ffa020cc:	7f 43       	R7 = R7.B (Z);
ffa020ce:	a3 2f       	JUMP.S 0xffa02014 <_DHCP_parse+0x58>;
ffa020d0:	45 30       	R0 = P5;
ffa020d2:	ff e3 1d fd 	CALL 0xffa01b0c <_pack4chars>;
ffa020d6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900edc <_NetSubnetMask> */
ffa020da:	0a e1 a8 0e 	P2.L = 0xea8;		/* (3752)	P2=0xff900ea8 <_NetDHCPserv> */
ffa020de:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa020e2:	10 93 00 00 
ffa020e6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900188(-7339640) */
ffa020ea:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa020ee:	ff e3 f3 f9 	CALL 0xffa014d4 <_printf_ip>;
ffa020f2:	7f 43       	R7 = R7.B (Z);
ffa020f4:	90 2f       	JUMP.S 0xffa02014 <_DHCP_parse+0x58>;
ffa020f6:	45 30       	R0 = P5;
ffa020f8:	ff e3 0a fd 	CALL 0xffa01b0c <_pack4chars>;
ffa020fc:	ff e3 f4 fc 	CALL 0xffa01ae4 <_htonl>;
ffa02100:	08 30       	R1 = R0;
ffa02102:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90019c(-7339620) */
ffa02106:	00 e1 b0 01 	R0.L = 0x1b0;		/* (432)	R0=0xff9001b0(-7339600) */
ffa0210a:	ff e3 43 f9 	CALL 0xffa01390 <_printf_int>;
ffa0210e:	7f 43       	R7 = R7.B (Z);
ffa02110:	82 2f       	JUMP.S 0xffa02014 <_DHCP_parse+0x58>;
ffa02112:	45 30       	R0 = P5;
ffa02114:	ff e3 fc fc 	CALL 0xffa01b0c <_pack4chars>;
ffa02118:	ff e3 e6 fc 	CALL 0xffa01ae4 <_htonl>;
ffa0211c:	08 30       	R1 = R0;
ffa0211e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001b0(-7339600) */
ffa02122:	00 e1 c4 01 	R0.L = 0x1c4;		/* (452)	R0=0xff9001c4(-7339580) */
ffa02126:	ff e3 35 f9 	CALL 0xffa01390 <_printf_int>;
ffa0212a:	7f 43       	R7 = R7.B (Z);
ffa0212c:	74 2f       	JUMP.S 0xffa02014 <_DHCP_parse+0x58>;
	...

ffa02130 <_bfin_EMAC_send>:
ffa02130:	c4 04       	[--SP] = (P5:4);
ffa02132:	01 0d       	CC = R1 <= 0x0;
ffa02134:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02138:	18 30       	R3 = R0;
ffa0213a:	11 30       	R2 = R1;
ffa0213c:	90 18       	IF CC JUMP 0xffa0225c <_bfin_EMAC_send+0x12c>;
ffa0213e:	00 00       	NOP;
ffa02140:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ea8(-4190552) */
ffa02144:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa02148:	50 95       	R0 = W[P2] (X);
ffa0214a:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa0214c:	74 10       	IF !CC JUMP 0xffa02234 <_bfin_EMAC_send+0x104>;
ffa0214e:	00 00       	NOP;
ffa02150:	00 00       	NOP;
ffa02152:	00 00       	NOP;
ffa02154:	50 95       	R0 = W[P2] (X);
ffa02156:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa02158:	17 18       	IF CC JUMP 0xffa02186 <_bfin_EMAC_send+0x56>;
ffa0215a:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0eb0 */
ffa0215e:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa02162:	b2 e0 09 10 	LSETUP(0xffa02166 <_bfin_EMAC_send+0x36>, 0xffa02174 <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa02166:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa0216a:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa0216e:	50 95       	R0 = W[P2] (X);
ffa02170:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa02172:	0a 18       	IF CC JUMP 0xffa02186 <_bfin_EMAC_send+0x56>;
ffa02174:	00 00       	NOP;
ffa02176:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001c4(-7339580) */
ffa0217a:	00 e1 14 02 	R0.L = 0x214;		/* (532)	R0=0xff900214(-7339500) */
ffa0217e:	ff e3 47 f8 	CALL 0xffa0120c <_printf_str>;
ffa02182:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02184:	53 20       	JUMP.S 0xffa0222a <_bfin_EMAC_send+0xfa>;
ffa02186:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900000 <_l1_data_a> */
ffa0218a:	0c e1 ac 0e 	P4.L = 0xeac;		/* (3756)	P4=0xff900eac <_txIdx> */
ffa0218e:	20 95       	R0 = W[P4] (Z);
ffa02190:	10 32       	P2 = R0;
ffa02192:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ea8 <_NetDHCPserv> */
ffa02196:	0d e1 b0 0e 	P5.L = 0xeb0;		/* (3760)	P5=0xff900eb0 <_txbuf> */
ffa0219a:	0b 30       	R1 = R3;
ffa0219c:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa0219e:	52 91       	P2 = [P2];
ffa021a0:	92 ad       	P2 = [P2 + 0x18];
ffa021a2:	12 96       	W[P2++] = R2;
ffa021a4:	42 30       	R0 = P2;
ffa021a6:	ff e3 db f9 	CALL 0xffa0155c <_memcpy_>;
ffa021aa:	20 95       	R0 = W[P4] (Z);
ffa021ac:	10 32       	P2 = R0;
ffa021ae:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa021b0:	51 91       	P1 = [P2];
ffa021b2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa021b6:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa021ba:	51 93       	[P2] = P1;
ffa021bc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa021c0:	88 a1       	R0 = [P1 + 0x18];
ffa021c2:	0a e1 fa 04 	P2.L = 0x4fa;		/* (1274)	P2=0xff9004fa <_txdmacfg> */
ffa021c6:	48 b0       	[P1 + 0x4] = R0;
ffa021c8:	50 95       	R0 = W[P2] (X);
ffa021ca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004fa(-4193030) */
ffa021ce:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa021d2:	10 97       	W[P2] = R0;
ffa021d4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa021d8:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa021dc:	10 91       	R0 = [P2];
ffa021de:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa021e0:	10 93       	[P2] = R0;
ffa021e2:	88 a2       	R0 = [P1 + 0x28];
ffa021e4:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa021e6:	13 10       	IF !CC JUMP 0xffa0220c <_bfin_EMAC_send+0xdc>;
ffa021e8:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa021ec:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa021f0:	b2 e0 05 20 	LSETUP(0xffa021f4 <_bfin_EMAC_send+0xc4>, 0xffa021fa <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa021f4:	88 a2       	R0 = [P1 + 0x28];
ffa021f6:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa021f8:	0a 10       	IF !CC JUMP 0xffa0220c <_bfin_EMAC_send+0xdc>;
ffa021fa:	00 00       	NOP;
ffa021fc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900214(-7339500) */
ffa02200:	00 e1 2c 02 	R0.L = 0x22c;		/* (556)	R0=0xff90022c(-7339476) */
ffa02204:	ff e3 04 f8 	CALL 0xffa0120c <_printf_str>;
ffa02208:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0220a:	10 20       	JUMP.S 0xffa0222a <_bfin_EMAC_send+0xfa>;
ffa0220c:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa02210:	61 95 00 00 
ffa02214:	8a a2       	R2 = [P1 + 0x28];
ffa02216:	88 b2       	[P1 + 0x28] = R0;
ffa02218:	c8 42       	R0 = R1.L (Z);
ffa0221a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa0221e:	10 0d       	CC = R0 <= 0x2;
ffa02220:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa02224:	14 1c       	IF CC JUMP 0xffa0224c <_bfin_EMAC_send+0x11c> (BP);
ffa02226:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02228:	10 97       	W[P2] = R0;
ffa0222a:	01 e8 00 00 	UNLINK;
ffa0222e:	02 30       	R0 = R2;
ffa02230:	84 04       	(P5:4) = [SP++];
ffa02232:	10 00       	RTS;
ffa02234:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02238:	00 e1 f0 00 	R0.L = 0xf0;		/* (240)	R0=0xff9000f0(-7339792) */
ffa0223c:	ff e3 e8 f7 	CALL 0xffa0120c <_printf_str>;
ffa02240:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02242:	01 e8 00 00 	UNLINK;
ffa02246:	02 30       	R0 = R2;
ffa02248:	84 04       	(P5:4) = [SP++];
ffa0224a:	10 00       	RTS;
ffa0224c:	01 30       	R0 = R1;
ffa0224e:	08 64       	R0 += 0x1;		/* (  1) */
ffa02250:	10 97       	W[P2] = R0;
ffa02252:	01 e8 00 00 	UNLINK;
ffa02256:	02 30       	R0 = R2;
ffa02258:	84 04       	(P5:4) = [SP++];
ffa0225a:	10 00       	RTS;
ffa0225c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f0(-7339792) */
ffa02260:	00 e1 f8 01 	R0.L = 0x1f8;		/* (504)	R0=0xff9001f8(-7339528) */
ffa02264:	ff e3 96 f8 	CALL 0xffa01390 <_printf_int>;
ffa02268:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0226a:	01 e8 00 00 	UNLINK;
ffa0226e:	02 30       	R0 = R2;
ffa02270:	84 04       	(P5:4) = [SP++];
ffa02272:	10 00       	RTS;

ffa02274 <_ether_testUDP>:
ffa02274:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02276:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa0227a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0227e:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa02282:	11 95       	R1 = W[P2] (Z);
ffa02284:	11 32       	P2 = R1;
ffa02286:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa0228a:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa0228e:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa02292:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02294:	52 91       	P2 = [P2];
ffa02296:	95 ad       	P5 = [P2 + 0x18];
ffa02298:	55 32       	P2 = P5;
ffa0229a:	11 96       	W[P2++] = R1;
ffa0229c:	4a 30       	R1 = P2;
ffa0229e:	00 e3 f5 08 	CALL 0xffa03488 <_ARP_req>;
ffa022a2:	00 0c       	CC = R0 == 0x0;
ffa022a4:	7f 18       	IF CC JUMP 0xffa023a2 <_ether_testUDP+0x12e>;
ffa022a6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa022aa:	0a e1 d4 0e 	P2.L = 0xed4;		/* (3796)	P2=0xff900ed4 <_NetOurMAC> */
ffa022ae:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa022b0:	50 99       	R0 = B[P2] (X);
ffa022b2:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa022b6:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa022ba:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa022be:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa022c2:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa022c6:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa022ca:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa022ce:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa022d2:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa022d6:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa022da:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa022de:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa022e2:	ff e3 f5 fb 	CALL 0xffa01acc <_htons>;
ffa022e6:	e8 b5       	W[P5 + 0xe] = R0;
ffa022e8:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa022ec:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa022f0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa022f2:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa022f6:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa022f8:	ff e3 ea fb 	CALL 0xffa01acc <_htons>;
ffa022fc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed4 <_NetOurMAC> */
ffa02300:	0a e1 ae 0e 	P2.L = 0xeae;		/* (3758)	P2=0xff900eae <_NetIPID> */
ffa02304:	68 b6       	W[P5 + 0x12] = R0;
ffa02306:	10 95       	R0 = W[P2] (Z);
ffa02308:	08 30       	R1 = R0;
ffa0230a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0230c:	11 97       	W[P2] = R1;
ffa0230e:	ff e3 df fb 	CALL 0xffa01acc <_htons>;
ffa02312:	a8 b6       	W[P5 + 0x14] = R0;
ffa02314:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa02318:	ff e3 da fb 	CALL 0xffa01acc <_htons>;
ffa0231c:	e8 b6       	W[P5 + 0x16] = R0;
ffa0231e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02320:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa02324:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eae <_NetIPID> */
ffa02328:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0232a:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa0232e:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa02332:	10 91       	R0 = [P2];
ffa02334:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetOurIP> */
ffa02338:	0a e1 a4 0e 	P2.L = 0xea4;		/* (3748)	P2=0xff900ea4 <_NetDestIP> */
ffa0233c:	e8 b1       	[P5 + 0x1c] = R0;
ffa0233e:	10 91       	R0 = [P2];
ffa02340:	28 b2       	[P5 + 0x20] = R0;
ffa02342:	45 30       	R0 = P5;
ffa02344:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa02346:	6f b7       	W[P5 + 0x1a] = R7;
ffa02348:	80 64       	R0 += 0x10;		/* ( 16) */
ffa0234a:	ff e3 a9 fb 	CALL 0xffa01a9c <_NetCksum>;
ffa0234e:	c0 43       	R0 =~ R0;
ffa02350:	68 b7       	W[P5 + 0x1a] = R0;
ffa02352:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa02356:	ff e3 bb fb 	CALL 0xffa01acc <_htons>;
ffa0235a:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa0235e:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa02362:	ff e3 b5 fb 	CALL 0xffa01acc <_htons>;
ffa02366:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa0236a:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa0236c:	ff e3 b0 fb 	CALL 0xffa01acc <_htons>;
ffa02370:	55 32       	P2 = P5;
ffa02372:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa02376:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa0237a:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa0237c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0237e:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa02380:	b2 e0 03 10 	LSETUP(0xffa02384 <_ether_testUDP+0x110>, 0xffa02386 <_ether_testUDP+0x112>) LC1 = P1;
ffa02384:	11 9a       	B[P2++] = R1;
ffa02386:	09 64       	R1 += 0x1;		/* (  1) */
ffa02388:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa0238c:	00 e1 40 02 	R0.L = 0x240;		/* (576)	R0=0xff900240(-7339456) */
ffa02390:	ff e3 3e f7 	CALL 0xffa0120c <_printf_str>;
ffa02394:	ff e3 92 fc 	CALL 0xffa01cb8 <_bfin_EMAC_send_nocopy>;
ffa02398:	01 e8 00 00 	UNLINK;
ffa0239c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0239e:	bd 05       	(R7:7, P5:5) = [SP++];
ffa023a0:	10 00       	RTS;
ffa023a2:	01 e8 00 00 	UNLINK;
ffa023a6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa023a8:	bd 05       	(R7:7, P5:5) = [SP++];
ffa023aa:	10 00       	RTS;

ffa023ac <_eth_header_setup>:
ffa023ac:	fc 05       	[--SP] = (R7:7, P5:4);
ffa023ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea4 <_NetDestIP> */
ffa023b2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa023b6:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa023ba:	00 32       	P0 = R0;
ffa023bc:	10 95       	R0 = W[P2] (Z);
ffa023be:	10 32       	P2 = R0;
ffa023c0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa023c4:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa023c8:	00 91       	R0 = [P0];
ffa023ca:	21 32       	P4 = R1;
ffa023cc:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa023ce:	52 91       	P2 = [P2];
ffa023d0:	08 30       	R1 = R0;
ffa023d2:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa023d4:	80 67       	R0 += -0x10;		/* (-16) */
ffa023d6:	95 ad       	P5 = [P2 + 0x18];
ffa023d8:	00 93       	[P0] = R0;
ffa023da:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa023de:	3a 30       	R7 = R2;
ffa023e0:	29 97       	W[P5] = R1;
ffa023e2:	ff e3 81 fb 	CALL 0xffa01ae4 <_htonl>;
ffa023e6:	38 54       	R0 = R0 & R7;
ffa023e8:	00 0c       	CC = R0 == 0x0;
ffa023ea:	3c 10       	IF !CC JUMP 0xffa02462 <_eth_header_setup+0xb6>;
ffa023ec:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa023ee:	a8 e6 02 00 	B[P5 + 0x2] = R0;
ffa023f2:	20 e1 5e 00 	R0 = 0x5e (X);		/*		R0=0x5e( 94) */
ffa023f6:	a8 e6 04 00 	B[P5 + 0x4] = R0;
ffa023fa:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa023fc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa023fe:	a8 e6 06 00 	B[P5 + 0x6] = R0;
ffa02402:	d8 63       	R0 = -0x5 (X);		/*		R0=0xfffffffb( -5) */
ffa02404:	a9 e6 03 00 	B[P5 + 0x3] = R1;
ffa02408:	a9 e6 05 00 	B[P5 + 0x5] = R1;
ffa0240c:	a8 e6 07 00 	B[P5 + 0x7] = R0;
ffa02410:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa02414:	0a e1 d4 0e 	P2.L = 0xed4;		/* (3796)	P2=0xff900ed4 <_NetOurMAC> */
ffa02418:	50 99       	R0 = B[P2] (X);
ffa0241a:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0241e:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa02422:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02426:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa0242a:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa0242e:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02432:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa02436:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa0243a:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa0243e:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa02442:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa02446:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa0244a:	ff e3 41 fb 	CALL 0xffa01acc <_htons>;
ffa0244e:	e8 b5       	W[P5 + 0xe] = R0;
ffa02450:	4d 30       	R1 = P5;
ffa02452:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02454:	81 64       	R1 += 0x10;		/* ( 16) */
ffa02456:	20 9b       	B[P4] = R0;
ffa02458:	01 e8 00 00 	UNLINK;
ffa0245c:	01 30       	R0 = R1;
ffa0245e:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02460:	10 00       	RTS;
ffa02462:	4d 30       	R1 = P5;
ffa02464:	11 64       	R1 += 0x2;		/* (  2) */
ffa02466:	07 30       	R0 = R7;
ffa02468:	00 e3 10 08 	CALL 0xffa03488 <_ARP_req>;
ffa0246c:	00 0c       	CC = R0 == 0x0;
ffa0246e:	d1 17       	IF !CC JUMP 0xffa02410 <_eth_header_setup+0x64> (BP);
ffa02470:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02472:	00 cc 09 c2 	R1 = R1 -|- R1 || B[P4] = R0 || NOP;
ffa02476:	20 9b 00 00 
ffa0247a:	ef 2f       	JUMP.S 0xffa02458 <_eth_header_setup+0xac>;

ffa0247c <_icmp_packet_setup>:
ffa0247c:	e4 05       	[--SP] = (R7:4, P5:4);
ffa0247e:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02482:	29 32       	P5 = R1;
ffa02484:	7f 30       	R7 = FP;
ffa02486:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02488:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0248a:	f0 bb       	[FP -0x4] = R0;
ffa0248c:	07 30       	R0 = R7;
ffa0248e:	22 32       	P4 = R2;
ffa02490:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa02494:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa02498:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa0249c:	ff e3 88 ff 	CALL 0xffa023ac <_eth_header_setup>;
ffa024a0:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa024a4:	68 99 00 00 
ffa024a8:	80 0c       	CC = R0 < 0x0;
ffa024aa:	14 18       	IF CC JUMP 0xffa024d2 <_icmp_packet_setup+0x56>;
ffa024ac:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa024ae:	f0 b0       	[SP + 0xc] = R0;
ffa024b0:	54 30       	R2 = P4;
ffa024b2:	01 30       	R0 = R1;
ffa024b4:	0f 30       	R1 = R7;
ffa024b6:	ff e3 3f fb 	CALL 0xffa01b34 <_ip_header_setup>;
ffa024ba:	e9 42       	R1 = R5.L (Z);
ffa024bc:	f1 b0       	[SP + 0xc] = R1;
ffa024be:	e1 42       	R1 = R4.L (Z);
ffa024c0:	31 b1       	[SP + 0x10] = R1;
ffa024c2:	72 43       	R2 = R6.B (Z);
ffa024c4:	0f 30       	R1 = R7;
ffa024c6:	ff e3 87 fb 	CALL 0xffa01bd4 <_icmp_header_setup>;
ffa024ca:	01 e8 00 00 	UNLINK;
ffa024ce:	a4 05       	(R7:4, P5:4) = [SP++];
ffa024d0:	10 00       	RTS;
ffa024d2:	01 e8 00 00 	UNLINK;
ffa024d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024d8:	a4 05       	(R7:4, P5:4) = [SP++];
ffa024da:	10 00       	RTS;

ffa024dc <_icmp_rx>:
ffa024dc:	fd 05       	[--SP] = (R7:7, P5:5);
ffa024de:	28 32       	P5 = R0;
ffa024e0:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa024e4:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa024e8:	39 30       	R7 = R1;
ffa024ea:	ff e3 f1 fa 	CALL 0xffa01acc <_htons>;
ffa024ee:	c0 42       	R0 = R0.L (Z);
ffa024f0:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa024f2:	01 08       	CC = R1 == R0;
ffa024f4:	06 18       	IF CC JUMP 0xffa02500 <_icmp_rx+0x24>;
ffa024f6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024f8:	01 e8 00 00 	UNLINK;
ffa024fc:	bd 05       	(R7:7, P5:5) = [SP++];
ffa024fe:	10 00       	RTS;
ffa02500:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02502:	07 0a       	CC = R7 <= R0 (IU);
ffa02504:	f9 1b       	IF CC JUMP 0xffa024f6 <_icmp_rx+0x1a>;
ffa02506:	00 00       	NOP;
ffa02508:	00 00       	NOP;
ffa0250a:	00 00       	NOP;
ffa0250c:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa02510:	08 0c       	CC = R0 == 0x1;
ffa02512:	f2 17       	IF !CC JUMP 0xffa024f6 <_icmp_rx+0x1a> (BP);
ffa02514:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed4 <_NetOurMAC> */
ffa02518:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa0251c:	28 a2       	R0 = [P5 + 0x20];
ffa0251e:	11 91       	R1 = [P2];
ffa02520:	08 08       	CC = R0 == R1;
ffa02522:	ea 17       	IF !CC JUMP 0xffa024f6 <_icmp_rx+0x1a> (BP);
ffa02524:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa02528:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa0252c:	08 08       	CC = R0 == R1;
ffa0252e:	3e 18       	IF CC JUMP 0xffa025aa <_icmp_rx+0xce>;
ffa02530:	00 00       	NOP;
ffa02532:	00 00       	NOP;
ffa02534:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa02536:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa0253a:	08 08       	CC = R0 == R1;
ffa0253c:	dd 17       	IF !CC JUMP 0xffa024f6 <_icmp_rx+0x1a> (BP);
ffa0253e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa02542:	e9 a1       	R1 = [P5 + 0x1c];
ffa02544:	00 e1 58 02 	R0.L = 0x258;		/* (600)	R0=0xff900258(-7339432) */
ffa02548:	ff e3 c6 f7 	CALL 0xffa014d4 <_printf_ip>;
ffa0254c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetOurIP> */
ffa02550:	0a e1 a4 0e 	P2.L = 0xea4;		/* (3748)	P2=0xff900ea4 <_NetDestIP> */
ffa02554:	e8 a1       	R0 = [P5 + 0x1c];
ffa02556:	4d 30       	R1 = P5;
ffa02558:	10 93       	[P2] = R0;
ffa0255a:	41 64       	R1 += 0x8;		/* (  8) */
ffa0255c:	00 e3 98 05 	CALL 0xffa0308c <_ARP_lut_add>;
ffa02560:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900258(-7339432) */
ffa02564:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa02568:	ff e3 52 f6 	CALL 0xffa0120c <_printf_str>;
ffa0256c:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa02570:	ea a1 00 00 
ffa02574:	f0 b0       	[SP + 0xc] = R0;
ffa02576:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa0257a:	30 b1       	[SP + 0x10] = R0;
ffa0257c:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa0257e:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa02582:	4f 30       	R1 = FP;
ffa02584:	70 b1       	[SP + 0x14] = R0;
ffa02586:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa02588:	07 30       	R0 = R7;
ffa0258a:	ff e3 79 ff 	CALL 0xffa0247c <_icmp_packet_setup>;
ffa0258e:	08 30       	R1 = R0;
ffa02590:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa02594:	00 0d       	CC = R0 <= 0x0;
ffa02596:	b0 1b       	IF CC JUMP 0xffa024f6 <_icmp_rx+0x1a>;
ffa02598:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa0259a:	45 30       	R0 = P5;
ffa0259c:	17 30       	R2 = R7;
ffa0259e:	ff e3 df f7 	CALL 0xffa0155c <_memcpy_>;
ffa025a2:	ff e3 8b fb 	CALL 0xffa01cb8 <_bfin_EMAC_send_nocopy>;
ffa025a6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa025a8:	a8 2f       	JUMP.S 0xffa024f8 <_icmp_rx+0x1c>;
ffa025aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea4 <_NetDestIP> */
ffa025ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa025b0:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_g_streamEnabled> */
ffa025b4:	10 9b       	B[P2] = R0;
ffa025b6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa025b8:	a0 2f       	JUMP.S 0xffa024f8 <_icmp_rx+0x1c>;
	...

ffa025bc <_udp_packet_setup>:
ffa025bc:	fc 05       	[--SP] = (R7:7, P5:4);
ffa025be:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa025c2:	29 32       	P5 = R1;
ffa025c4:	7f 30       	R7 = FP;
ffa025c6:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900eac <_txIdx> */
ffa025ca:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa025cc:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa025ce:	0c e1 e4 0e 	P4.L = 0xee4;		/* (3812)	P4=0xff900ee4 <_NetDataDestIP> */
ffa025d2:	f0 bb       	[FP -0x4] = R0;
ffa025d4:	22 91       	R2 = [P4];
ffa025d6:	07 30       	R0 = R7;
ffa025d8:	ff e3 ea fe 	CALL 0xffa023ac <_eth_header_setup>;
ffa025dc:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa025e0:	68 99 00 00 
ffa025e4:	80 0c       	CC = R0 < 0x0;
ffa025e6:	14 18       	IF CC JUMP 0xffa0260e <_udp_packet_setup+0x52>;
ffa025e8:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa025ea:	f0 b0       	[SP + 0xc] = R0;
ffa025ec:	01 30       	R0 = R1;
ffa025ee:	22 91       	R2 = [P4];
ffa025f0:	0f 30       	R1 = R7;
ffa025f2:	ff e3 a1 fa 	CALL 0xffa01b34 <_ip_header_setup>;
ffa025f6:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa025fa:	f1 b0       	[SP + 0xc] = R1;
ffa025fc:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa02600:	0f 30       	R1 = R7;
ffa02602:	ff e3 0d fb 	CALL 0xffa01c1c <_udp_header_setup>;
ffa02606:	01 e8 00 00 	UNLINK;
ffa0260a:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0260c:	10 00       	RTS;
ffa0260e:	01 e8 00 00 	UNLINK;
ffa02612:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02614:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02616:	10 00       	RTS;

ffa02618 <_SetupTxBuffer>:
ffa02618:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0261a:	38 30       	R7 = R0;
ffa0261c:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02620:	c7 40       	R7 *= R0;
ffa02622:	17 32       	P2 = R7;
ffa02624:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800eb0 */
ffa02628:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa0262c:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02630:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa02634:	6a 5b       	P5 = P2 + P5;
ffa02636:	c7 51       	R7 = R7 + R0;
ffa02638:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0263c:	45 30       	R0 = P5;
ffa0263e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02640:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa02642:	ff e3 9d f7 	CALL 0xffa0157c <_memset_>;
ffa02646:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa0264a:	af b1 00 00 
ffa0264e:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa02652:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02656:	ff e3 93 f7 	CALL 0xffa0157c <_memset_>;
ffa0265a:	45 30       	R0 = P5;
ffa0265c:	60 64       	R0 += 0xc;		/* ( 12) */
ffa0265e:	28 93       	[P5] = R0;
ffa02660:	a8 a1       	R0 = [P5 + 0x18];
ffa02662:	68 b0       	[P5 + 0x4] = R0;
ffa02664:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa02668:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0266a:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa0266c:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa0266e:	10 54       	R0 = R0 & R2;
ffa02670:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02672:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02676:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa02678:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa0267c:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0267e:	18 54       	R0 = R0 & R3;
ffa02680:	08 56       	R0 = R0 | R1;
ffa02682:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa02686:	08 56       	R0 = R0 | R1;
ffa02688:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0268c:	45 30       	R0 = P5;
ffa0268e:	40 65       	R0 += 0x28;		/* ( 40) */
ffa02690:	28 b1       	[P5 + 0x10] = R0;
ffa02692:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa02696:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02698:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0269a:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa0269e:	10 54       	R0 = R0 & R2;
ffa026a0:	08 56       	R0 = R0 | R1;
ffa026a2:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa026a6:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa026aa:	18 54       	R0 = R0 & R3;
ffa026ac:	39 64       	R1 += 0x7;		/* (  7) */
ffa026ae:	08 54       	R0 = R0 & R1;
ffa026b0:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa026b4:	ed bc       	[P5 + 0xc] = P5;
ffa026b6:	01 e8 00 00 	UNLINK;
ffa026ba:	45 30       	R0 = P5;
ffa026bc:	bd 05       	(R7:7, P5:5) = [SP++];
ffa026be:	10 00       	RTS;

ffa026c0 <_SetupRxBuffer>:
ffa026c0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa026c2:	38 30       	R7 = R0;
ffa026c4:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa026c8:	c7 40       	R7 *= R0;
ffa026ca:	17 32       	P2 = R7;
ffa026cc:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa026d0:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa026d4:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa026d8:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa026dc:	6a 5b       	P5 = P2 + P5;
ffa026de:	c7 51       	R7 = R7 + R0;
ffa026e0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa026e4:	45 30       	R0 = P5;
ffa026e6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa026e8:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa026ea:	ff e3 49 f7 	CALL 0xffa0157c <_memset_>;
ffa026ee:	af b1       	[P5 + 0x18] = R7;
ffa026f0:	07 30       	R0 = R7;
ffa026f2:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa026f6:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa026fa:	ff e3 41 f7 	CALL 0xffa0157c <_memset_>;
ffa026fe:	45 30       	R0 = P5;
ffa02700:	60 64       	R0 += 0xc;		/* ( 12) */
ffa02702:	28 93       	[P5] = R0;
ffa02704:	a8 a1       	R0 = [P5 + 0x18];
ffa02706:	68 b0       	[P5 + 0x4] = R0;
ffa02708:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa0270c:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0270e:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa02710:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02712:	08 54       	R0 = R0 & R1;
ffa02714:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02716:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0271a:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa0271c:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa02720:	38 54       	R0 = R0 & R7;
ffa02722:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa02724:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa02728:	18 56       	R0 = R0 | R3;
ffa0272a:	10 56       	R0 = R0 | R2;
ffa0272c:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02730:	45 30       	R0 = P5;
ffa02732:	20 65       	R0 += 0x24;		/* ( 36) */
ffa02734:	28 b1       	[P5 + 0x10] = R0;
ffa02736:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa0273a:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0273c:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0273e:	08 54       	R0 = R0 & R1;
ffa02740:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa02744:	08 56       	R0 = R0 | R1;
ffa02746:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa0274a:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa0274e:	38 54       	R0 = R0 & R7;
ffa02750:	18 56       	R0 = R0 | R3;
ffa02752:	10 56       	R0 = R0 | R2;
ffa02754:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02758:	ed bc       	[P5 + 0xc] = P5;
ffa0275a:	01 e8 00 00 	UNLINK;
ffa0275e:	45 30       	R0 = P5;
ffa02760:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02762:	10 00       	RTS;

ffa02764 <_SetupSystemRegs>:
ffa02764:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02766:	28 32       	P5 = R0;
ffa02768:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa0276c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02770:	00 e1 74 02 	R0.L = 0x274;		/* (628)	R0=0xff900274(-7339404) */
ffa02774:	ff e3 4c f5 	CALL 0xffa0120c <_printf_str>;
ffa02778:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c34(-4191180) */
ffa0277c:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa02780:	50 95       	R0 = W[P2] (X);
ffa02782:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa02786:	08 54       	R0 = R0 & R1;
ffa02788:	10 97       	W[P2] = R0;
ffa0278a:	50 95       	R0 = W[P2] (X);
ffa0278c:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa0278e:	10 97       	W[P2] = R0;
ffa02790:	82 6f       	P2 += -0x10;		/* (-16) */
ffa02792:	51 95       	R1 = W[P2] (X);
ffa02794:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa02798:	08 56       	R0 = R0 | R1;
ffa0279a:	10 97       	W[P2] = R0;
ffa0279c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0279e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027a0:	10 97       	W[P2] = R0;
ffa027a2:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa027a4:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa027a6:	10 97       	W[P2] = R0;
ffa027a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa027ac:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa027b0:	50 95       	R0 = W[P2] (X);
ffa027b2:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa027b4:	10 97       	W[P2] = R0;
ffa027b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa027ba:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa027be:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa027c2:	10 93       	[P2] = R0;
ffa027c4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa027c6:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa027ca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027cc:	ff e3 0c f9 	CALL 0xffa019e4 <_WrPHYReg>;
ffa027d0:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa027d4:	ff e3 b2 f8 	CALL 0xffa01938 <_udelay>;
ffa027d8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027da:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa027dc:	ff e3 20 f9 	CALL 0xffa01a1c <_RdPHYReg>;
ffa027e0:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa027e2:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa027e4:	0e 20       	JUMP.S 0xffa02800 <_SetupSystemRegs+0x9c>;
ffa027e6:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa027ea:	ff e3 a7 f8 	CALL 0xffa01938 <_udelay>;
ffa027ee:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa027f0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027f2:	ff e3 15 f9 	CALL 0xffa01a1c <_RdPHYReg>;
ffa027f6:	0f 64       	R7 += 0x1;		/* (  1) */
ffa027f8:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa027fc:	0f 08       	CC = R7 == R1;
ffa027fe:	35 18       	IF CC JUMP 0xffa02868 <_SetupSystemRegs+0x104>;
ffa02800:	06 54       	R0 = R6 & R0;
ffa02802:	00 0c       	CC = R0 == 0x0;
ffa02804:	f1 1f       	IF CC JUMP 0xffa027e6 <_SetupSystemRegs+0x82> (BP);
ffa02806:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa02808:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0280a:	ff e3 09 f9 	CALL 0xffa01a1c <_RdPHYReg>;
ffa0280e:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa02812:	01 54       	R0 = R1 & R0;
ffa02814:	00 0c       	CC = R0 == 0x0;
ffa02816:	27 1c       	IF CC JUMP 0xffa02864 <_SetupSystemRegs+0x100> (BP);
ffa02818:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0281a:	d0 4f       	R0 <<= 0x1a;
ffa0281c:	28 93       	[P5] = R0;
ffa0281e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa02822:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02824:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa02828:	10 93       	[P2] = R0;
ffa0282a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa0282e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02830:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa02834:	10 97       	W[P2] = R0;
ffa02836:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa02838:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0283a:	11 97       	W[P2] = R1;
ffa0283c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0283e:	10 97       	W[P2] = R0;
ffa02840:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02842:	10 97       	W[P2] = R0;
ffa02844:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa02848:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa0284c:	10 97       	W[P2] = R0;
ffa0284e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02850:	11 97       	W[P2] = R1;
ffa02852:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02854:	10 97       	W[P2] = R0;
ffa02856:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02858:	10 97       	W[P2] = R0;
ffa0285a:	01 e8 00 00 	UNLINK;
ffa0285e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02860:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02862:	10 00       	RTS;
ffa02864:	28 93       	[P5] = R0;
ffa02866:	dc 2f       	JUMP.S 0xffa0281e <_SetupSystemRegs+0xba>;
ffa02868:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0286c:	00 e1 8c 02 	R0.L = 0x28c;		/* (652)	R0=0xff90028c(-7339380) */
ffa02870:	ff e3 ce f4 	CALL 0xffa0120c <_printf_str>;
ffa02874:	01 e8 00 00 	UNLINK;
ffa02878:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0287a:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0287c:	10 00       	RTS;
	...

ffa02880 <_SetupMacAddr>:
ffa02880:	10 32       	P2 = R0;
ffa02882:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02884:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02886:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0288a:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa0288e:	10 9b       	B[P2] = R0;
ffa02890:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa02892:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa02896:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa02898:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa0289c:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa0289e:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa028a2:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa028a6:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa028aa:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa028ac:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa028b0:	10 99       	R0 = B[P2] (Z);
ffa028b2:	08 56       	R0 = R0 | R1;
ffa028b4:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa028b8:	89 4f       	R1 <<= 0x11;
ffa028ba:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00eb0(-4190544) */
ffa028be:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa028c2:	08 56       	R0 = R0 | R1;
ffa028c4:	08 93       	[P1] = R0;
ffa028c6:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa028ca:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa028ce:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa028d2:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa028d4:	28 93       	[P5] = R0;
ffa028d6:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa028da:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa028de:	09 91       	R1 = [P1];
ffa028e0:	07 e1 c4 0a 	R7.L = 0xac4;		/* (2756)	R7=0xff900ac4(-7337276) */
ffa028e4:	00 e1 c0 02 	R0.L = 0x2c0;		/* (704)	R0=0xff9002c0(-7339328) */
ffa028e8:	ff e3 f8 f4 	CALL 0xffa012d8 <_printf_hex>;
ffa028ec:	07 30       	R0 = R7;
ffa028ee:	ff e3 8f f4 	CALL 0xffa0120c <_printf_str>;
ffa028f2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002c0(-7339328) */
ffa028f6:	29 91       	R1 = [P5];
ffa028f8:	00 e1 cc 02 	R0.L = 0x2cc;		/* (716)	R0=0xff9002cc(-7339316) */
ffa028fc:	ff e3 ee f4 	CALL 0xffa012d8 <_printf_hex>;
ffa02900:	01 e8 00 00 	UNLINK;
ffa02904:	07 30       	R0 = R7;
ffa02906:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02908:	ff e2 82 f4 	JUMP.L 0xffa0120c <_printf_str>;

ffa0290c <_bfin_EMAC_init>:
ffa0290c:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0290e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002cc(-7339316) */
ffa02912:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02916:	00 e1 d8 02 	R0.L = 0x2d8;		/* (728)	R0=0xff9002d8(-7339304) */
ffa0291a:	ff e3 79 f4 	CALL 0xffa0120c <_printf_str>;
ffa0291e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 */
ffa02922:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02924:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa02928:	16 97       	W[P2] = R6;
ffa0292a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa0292e:	0a e1 c0 0e 	P2.L = 0xec0;		/* (3776)	P2=0xff900ec0 <_rxIdx> */
ffa02932:	16 97       	W[P2] = R6;
ffa02934:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ec0 <_rxIdx> */
ffa02938:	0a e1 ae 0e 	P2.L = 0xeae;		/* (3758)	P2=0xff900eae <_NetIPID> */
ffa0293c:	16 97       	W[P2] = R6;
ffa0293e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eae <_NetIPID> */
ffa02942:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02944:	0a e1 dc 0e 	P2.L = 0xedc;		/* (3804)	P2=0xff900edc <_NetSubnetMask> */
ffa02948:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa0294a:	17 93       	[P2] = R7;
ffa0294c:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa02950:	f0 b0       	[SP + 0xc] = R0;
ffa02952:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02954:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02958:	ff e3 10 f8 	CALL 0xffa01978 <_FormatIPAddress>;
ffa0295c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900edc <_NetSubnetMask> */
ffa02960:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa02964:	10 93       	[P2] = R0;
ffa02966:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02968:	f0 b0       	[SP + 0xc] = R0;
ffa0296a:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa0296e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02970:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02974:	ff e3 02 f8 	CALL 0xffa01978 <_FormatIPAddress>;
ffa02978:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetOurIP> */
ffa0297c:	0a e1 a4 0e 	P2.L = 0xea4;		/* (3748)	P2=0xff900ea4 <_NetDestIP> */
ffa02980:	10 93       	[P2] = R0;
ffa02982:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02984:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa02986:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa0298a:	f0 b0       	[SP + 0xc] = R0;
ffa0298c:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa02990:	ff e3 f4 f7 	CALL 0xffa01978 <_FormatIPAddress>;
ffa02994:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea4 <_NetDestIP> */
ffa02998:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetDataDestIP> */
ffa0299c:	10 93       	[P2] = R0;
ffa0299e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetDataDestIP> */
ffa029a2:	0a e1 c4 0f 	P2.L = 0xfc4;		/* (4036)	P2=0xff900fc4 <_TcpState> */
ffa029a6:	17 93       	[P2] = R7;
ffa029a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc4 <_TcpState> */
ffa029ac:	0a e1 bc 0f 	P2.L = 0xfbc;		/* (4028)	P2=0xff900fbc <_TcpSeqClient> */
ffa029b0:	17 93       	[P2] = R7;
ffa029b2:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa029b6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fbc <_TcpSeqClient> */
ffa029ba:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa029be:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa029c2:	10 93       	[P2] = R0;
ffa029c4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa029c8:	0a e1 d0 0f 	P2.L = 0xfd0;		/* (4048)	P2=0xff900fd0 <_TcpClientPort> */
ffa029cc:	16 97       	W[P2] = R6;
ffa029ce:	00 e3 11 03 	CALL 0xffa02ff0 <_ARP_init>;
ffa029d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00fd0(-4190256) */
ffa029d6:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa029da:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa029de:	17 93       	[P2] = R7;
ffa029e0:	00 e1 d4 0e 	R0.L = 0xed4;		/* (3796)	R0=0xff900ed4 <_NetOurMAC>(-7336236) */
ffa029e4:	ff e3 4e ff 	CALL 0xffa02880 <_SetupMacAddr>;
ffa029e8:	47 30       	R0 = FP;
ffa029ea:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa029ec:	ff e3 bc fe 	CALL 0xffa02764 <_SetupSystemRegs>;
ffa029f0:	80 0c       	CC = R0 < 0x0;
ffa029f2:	7a 18       	IF CC JUMP 0xffa02ae6 <_bfin_EMAC_init+0x1da>;
ffa029f4:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa029f8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa029fa:	07 e1 c4 0e 	R7.L = 0xec4;		/* (3780)	R7=0xff900ec4 <_rxbuf>(-7336252) */
ffa029fe:	ff e3 61 fe 	CALL 0xffa026c0 <_SetupRxBuffer>;
ffa02a02:	07 32       	P0 = R7;
ffa02a04:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02a06:	00 93       	[P0] = R0;
ffa02a08:	17 32       	P2 = R7;
ffa02a0a:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa02a0c:	44 30       	R0 = P4;
ffa02a0e:	ff e3 59 fe 	CALL 0xffa026c0 <_SetupRxBuffer>;
ffa02a12:	44 0c       	CC = P4 == 0x0;
ffa02a14:	08 32       	P1 = R0;
ffa02a16:	28 92       	[P5++] = R0;
ffa02a18:	52 18       	IF CC JUMP 0xffa02abc <_bfin_EMAC_init+0x1b0>;
ffa02a1a:	07 32       	P0 = R7;
ffa02a1c:	5c 0c       	CC = P4 == 0x3;
ffa02a1e:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa02a20:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa02a24:	d0 b0       	[P2 + 0xc] = R0;
ffa02a26:	54 18       	IF CC JUMP 0xffa02ace <_bfin_EMAC_init+0x1c2>;
ffa02a28:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa02a2a:	5c 0d       	CC = P4 <= 0x3;
ffa02a2c:	ee 1f       	IF CC JUMP 0xffa02a08 <_bfin_EMAC_init+0xfc> (BP);
ffa02a2e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a30:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900e5c <_printf_temp> */
ffa02a34:	ff e3 f2 fd 	CALL 0xffa02618 <_SetupTxBuffer>;
ffa02a38:	0b e1 b0 0e 	P3.L = 0xeb0;		/* (3760)	P3=0xff900eb0 <_txbuf> */
ffa02a3c:	18 93       	[P3] = R0;
ffa02a3e:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02a40:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa02a42:	44 30       	R0 = P4;
ffa02a44:	ff e3 ea fd 	CALL 0xffa02618 <_SetupTxBuffer>;
ffa02a48:	44 0c       	CC = P4 == 0x0;
ffa02a4a:	08 32       	P1 = R0;
ffa02a4c:	28 92       	[P5++] = R0;
ffa02a4e:	35 18       	IF CC JUMP 0xffa02ab8 <_bfin_EMAC_init+0x1ac>;
ffa02a50:	00 00       	NOP;
ffa02a52:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa02a54:	5c 0c       	CC = P4 == 0x3;
ffa02a56:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa02a5a:	d0 b0       	[P2 + 0xc] = R0;
ffa02a5c:	32 18       	IF CC JUMP 0xffa02ac0 <_bfin_EMAC_init+0x1b4>;
ffa02a5e:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa02a60:	5c 0d       	CC = P4 <= 0x3;
ffa02a62:	ef 1f       	IF CC JUMP 0xffa02a40 <_bfin_EMAC_init+0x134> (BP);
ffa02a64:	17 32       	P2 = R7;
ffa02a66:	51 91       	P1 = [P2];
ffa02a68:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa02a6c:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa02a70:	51 93       	[P2] = P1;
ffa02a72:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa02a74:	42 6c       	P2 += 0x8;		/* (  8) */
ffa02a76:	10 97       	W[P2] = R0;
ffa02a78:	ff e3 a8 f7 	CALL 0xffa019c8 <_PollMdcDone>;
ffa02a7c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02a7e:	f0 b9       	R0 = [FP -0x4];
ffa02a80:	d1 4f       	R1 <<= 0x1a;
ffa02a82:	08 08       	CC = R0 == R1;
ffa02a84:	2c 18       	IF CC JUMP 0xffa02adc <_bfin_EMAC_init+0x1d0>;
ffa02a86:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02a8a:	01 30       	R0 = R1;
ffa02a8c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa02a90:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02a94:	10 93       	[P2] = R0;
ffa02a96:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02a9a:	00 e1 e8 02 	R0.L = 0x2e8;		/* (744)	R0=0xff9002e8(-7339288) */
ffa02a9e:	ff e3 1d f4 	CALL 0xffa012d8 <_printf_hex>;
ffa02aa2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002e8(-7339288) */
ffa02aa6:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa02aaa:	ff e3 b1 f3 	CALL 0xffa0120c <_printf_str>;
ffa02aae:	01 e8 00 00 	UNLINK;
ffa02ab2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02ab4:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02ab6:	10 00       	RTS;
ffa02ab8:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02aba:	c4 2f       	JUMP.S 0xffa02a42 <_bfin_EMAC_init+0x136>;
ffa02abc:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02abe:	a7 2f       	JUMP.S 0xffa02a0c <_bfin_EMAC_init+0x100>;
ffa02ac0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa02ac4:	0a e1 b0 0e 	P2.L = 0xeb0;		/* (3760)	P2=0xff900eb0 <_txbuf> */
ffa02ac8:	10 91       	R0 = [P2];
ffa02aca:	c8 b0       	[P1 + 0xc] = R0;
ffa02acc:	cc 2f       	JUMP.S 0xffa02a64 <_bfin_EMAC_init+0x158>;
ffa02ace:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eb0 <_txbuf> */
ffa02ad2:	0a e1 c4 0e 	P2.L = 0xec4;		/* (3780)	P2=0xff900ec4 <_rxbuf> */
ffa02ad6:	10 91       	R0 = [P2];
ffa02ad8:	c8 b0       	[P1 + 0xc] = R0;
ffa02ada:	aa 2f       	JUMP.S 0xffa02a2e <_bfin_EMAC_init+0x122>;
ffa02adc:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02ae0:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa02ae2:	01 30       	R0 = R1;
ffa02ae4:	d4 2f       	JUMP.S 0xffa02a8c <_bfin_EMAC_init+0x180>;
ffa02ae6:	01 e8 00 00 	UNLINK;
ffa02aea:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02aec:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02aee:	10 00       	RTS;

ffa02af0 <_bfin_EMAC_recv_poll>:
ffa02af0:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02af2:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa02af6:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa02afa:	0d e1 c4 0e 	P5.L = 0xec4;		/* (3780)	P5=0xff900ec4 <_rxbuf> */
ffa02afe:	0c e1 c0 0e 	P4.L = 0xec0;		/* (3776)	P4=0xff900ec0 <_rxIdx> */
ffa02b02:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02b06:	28 30       	R5 = R0;
ffa02b08:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02b0a:	75 30       	R6 = P5;
ffa02b0c:	5c 32       	P3 = P4;
ffa02b0e:	06 20       	JUMP.S 0xffa02b1a <_bfin_EMAC_recv_poll+0x2a>;
ffa02b10:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02b12:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02b16:	07 08       	CC = R7 == R0;
ffa02b18:	59 18       	IF CC JUMP 0xffa02bca <_bfin_EMAC_recv_poll+0xda>;
ffa02b1a:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02b1e:	ff e3 0d f7 	CALL 0xffa01938 <_udelay>;
ffa02b22:	20 95       	R0 = W[P4] (Z);
ffa02b24:	10 32       	P2 = R0;
ffa02b26:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02b28:	52 91       	P2 = [P2];
ffa02b2a:	90 a2       	R0 = [P2 + 0x28];
ffa02b2c:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02b2e:	f1 1f       	IF CC JUMP 0xffa02b10 <_bfin_EMAC_recv_poll+0x20> (BP);
ffa02b30:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02b34:	91 a2       	R1 = [P2 + 0x28];
ffa02b36:	41 54       	R1 = R1 & R0;
ffa02b38:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02b3a:	01 09       	CC = R1 <= R0;
ffa02b3c:	07 10       	IF !CC JUMP 0xffa02b4a <_bfin_EMAC_recv_poll+0x5a>;
ffa02b3e:	01 e8 00 00 	UNLINK;
ffa02b42:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02b44:	07 30       	R0 = R7;
ffa02b46:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b48:	10 00       	RTS;
ffa02b4a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b4c:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa02b50:	90 b2 00 00 
ffa02b54:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02b56:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02b5a:	0f 30       	R1 = R7;
ffa02b5c:	00 e1 f4 02 	R0.L = 0x2f4;		/* (756)	R0=0xff9002f4(-7339276) */
ffa02b60:	ff e3 18 f4 	CALL 0xffa01390 <_printf_int>;
ffa02b64:	18 95       	R0 = W[P3] (Z);
ffa02b66:	10 32       	P2 = R0;
ffa02b68:	0e 32       	P1 = R6;
ffa02b6a:	0f 30       	R1 = R7;
ffa02b6c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02b6e:	52 91       	P2 = [P2];
ffa02b70:	90 a1       	R0 = [P2 + 0x18];
ffa02b72:	15 32       	P2 = R5;
ffa02b74:	10 93       	[P2] = R0;
ffa02b76:	00 e3 f1 02 	CALL 0xffa03158 <_ARP_rx>;
ffa02b7a:	00 0c       	CC = R0 == 0x0;
ffa02b7c:	1f 18       	IF CC JUMP 0xffa02bba <_bfin_EMAC_recv_poll+0xca>;
ffa02b7e:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02b80:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02b84:	20 95       	R0 = W[P4] (Z);
ffa02b86:	10 32       	P2 = R0;
ffa02b88:	61 95       	R1 = W[P4] (X);
ffa02b8a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b8c:	09 e1 c0 0e 	P1.L = 0xec0;		/* (3776)	P1=0xff900ec0 <_rxIdx> */
ffa02b90:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02b92:	52 91       	P2 = [P2];
ffa02b94:	90 b2       	[P2 + 0x28] = R0;
ffa02b96:	c8 42       	R0 = R1.L (Z);
ffa02b98:	10 0d       	CC = R0 <= 0x2;
ffa02b9a:	09 14       	IF !CC JUMP 0xffa02bac <_bfin_EMAC_recv_poll+0xbc> (BP);
ffa02b9c:	01 30       	R0 = R1;
ffa02b9e:	08 64       	R0 += 0x1;		/* (  1) */
ffa02ba0:	08 97       	W[P1] = R0;
ffa02ba2:	01 e8 00 00 	UNLINK;
ffa02ba6:	07 30       	R0 = R7;
ffa02ba8:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02baa:	10 00       	RTS;
ffa02bac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02bae:	08 97       	W[P1] = R0;
ffa02bb0:	01 e8 00 00 	UNLINK;
ffa02bb4:	07 30       	R0 = R7;
ffa02bb6:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02bb8:	10 00       	RTS;
ffa02bba:	0d 32       	P1 = R5;
ffa02bbc:	0f 30       	R1 = R7;
ffa02bbe:	08 91       	R0 = [P1];
ffa02bc0:	ff e3 8e fc 	CALL 0xffa024dc <_icmp_rx>;
ffa02bc4:	00 0c       	CC = R0 == 0x0;
ffa02bc6:	dd 1f       	IF CC JUMP 0xffa02b80 <_bfin_EMAC_recv_poll+0x90> (BP);
ffa02bc8:	db 2f       	JUMP.S 0xffa02b7e <_bfin_EMAC_recv_poll+0x8e>;
ffa02bca:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02bce:	00 e1 00 03 	R0.L = 0x300;		/* (768)	R0=0xff900300(-7339264) */
ffa02bd2:	ff e3 1d f3 	CALL 0xffa0120c <_printf_str>;
ffa02bd6:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02bd8:	01 e8 00 00 	UNLINK;
ffa02bdc:	07 30       	R0 = R7;
ffa02bde:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02be0:	10 00       	RTS;
	...

ffa02be4 <_bridge_publish>:
ffa02be4:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02be6:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02bea:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02bec:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa02bf0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02bf2:	f0 b0       	[SP + 0xc] = R0;
ffa02bf4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02bf6:	20 e1 ef 00 	R0 = 0xef (X);		/*		R0=0xef(239) */
ffa02bfa:	22 e1 c8 00 	R2 = 0xc8 (X);		/*		R2=0xc8(200) */
ffa02bfe:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900ec0 <_rxIdx> */
ffa02c02:	0c e1 e4 0e 	P4.L = 0xee4;		/* (3812)	P4=0xff900ee4 <_NetDataDestIP> */
ffa02c06:	ff e3 b9 f6 	CALL 0xffa01978 <_FormatIPAddress>;
ffa02c0a:	6f 30       	R5 = FP;
ffa02c0c:	67 30       	R4 = FP;
ffa02c0e:	77 30       	R6 = FP;
ffa02c10:	20 93       	[P4] = R0;
ffa02c12:	c5 67       	R5 += -0x8;		/* ( -8) */
ffa02c14:	fc 67       	R4 += -0x1;		/* ( -1) */
ffa02c16:	5c 32       	P3 = P4;
ffa02c18:	a6 67       	R6 += -0xc;		/* (-12) */
ffa02c1a:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02c1c:	e0 bb       	[FP -0x8] = R0;
ffa02c1e:	82 ce 04 c2 	R1 = ROT R4 BY 0x0 || R2 = [P4] || NOP;
ffa02c22:	22 91 00 00 
ffa02c26:	05 30       	R0 = R5;
ffa02c28:	ff e3 c2 fb 	CALL 0xffa023ac <_eth_header_setup>;
ffa02c2c:	08 30       	R1 = R0;
ffa02c2e:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa02c32:	80 0c       	CC = R0 < 0x0;
ffa02c34:	7e 18       	IF CC JUMP 0xffa02d30 <_bridge_publish+0x14c>;
ffa02c36:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa02c38:	d1 bb       	[FP -0xc] = R1;
ffa02c3a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02c3c:	1a 91       	R2 = [P3];
ffa02c3e:	f0 b0       	[SP + 0xc] = R0;
ffa02c40:	01 30       	R0 = R1;
ffa02c42:	0d 30       	R1 = R5;
ffa02c44:	ff e3 78 f7 	CALL 0xffa01b34 <_ip_header_setup>;
ffa02c48:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa02c4c:	f1 b0       	[SP + 0xc] = R1;
ffa02c4e:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa02c52:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [FP -0xc] = R0 || NOP;
ffa02c56:	d0 bb 00 00 
ffa02c5a:	ff e3 e1 f7 	CALL 0xffa01c1c <_udp_header_setup>;
ffa02c5e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [FP -0xc] = R0 || NOP;
ffa02c62:	d0 bb 00 00 
ffa02c66:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900011(-7340015) */
ffa02c6a:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
ffa02c6c:	00 e1 10 03 	R0.L = 0x310;		/* (784)	R0=0xff900310(-7339248) */
ffa02c70:	ff e3 76 f4 	CALL 0xffa0155c <_memcpy_>;
ffa02c74:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900310(-7339248) */
ffa02c78:	00 e1 1c 03 	R0.L = 0x31c;		/* (796)	R0=0xff90031c(-7339236) */
ffa02c7c:	ff e3 c8 f2 	CALL 0xffa0120c <_printf_str>;
ffa02c80:	ff e3 1c f8 	CALL 0xffa01cb8 <_bfin_EMAC_send_nocopy>;
ffa02c84:	05 20       	JUMP.S 0xffa02c8e <_bridge_publish+0xaa>;
ffa02c86:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02c88:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02c8a:	07 08       	CC = R7 == R0;
ffa02c8c:	46 18       	IF CC JUMP 0xffa02d18 <_bridge_publish+0x134>;
ffa02c8e:	06 30       	R0 = R6;
ffa02c90:	ff e3 30 ff 	CALL 0xffa02af0 <_bfin_EMAC_recv_poll>;
ffa02c94:	59 61       	R1 = 0x2b (X);		/*		R1=0x2b( 43) */
ffa02c96:	08 09       	CC = R0 <= R1;
ffa02c98:	e0 bb       	[FP -0x8] = R0;
ffa02c9a:	dd b9       	P5 = [FP -0xc];
ffa02c9c:	f5 1f       	IF CC JUMP 0xffa02c86 <_bridge_publish+0xa2> (BP);
ffa02c9e:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa02ca0:	ff e3 16 f7 	CALL 0xffa01acc <_htons>;
ffa02ca4:	c0 42       	R0 = R0.L (Z);
ffa02ca6:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa02caa:	08 08       	CC = R0 == R1;
ffa02cac:	ed 17       	IF !CC JUMP 0xffa02c86 <_bridge_publish+0xa2> (BP);
ffa02cae:	20 e1 f4 10 	R0 = 0x10f4 (X);		/*		R0=0x10f4(4340) */
ffa02cb2:	ff e3 0d f7 	CALL 0xffa01acc <_htons>;
ffa02cb6:	c0 42       	R0 = R0.L (Z);
ffa02cb8:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa02cbc:	01 08       	CC = R1 == R0;
ffa02cbe:	e4 17       	IF !CC JUMP 0xffa02c86 <_bridge_publish+0xa2> (BP);
ffa02cc0:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa02cc4:	ff e3 04 f7 	CALL 0xffa01acc <_htons>;
ffa02cc8:	c0 42       	R0 = R0.L (Z);
ffa02cca:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa02cce:	01 08       	CC = R1 == R0;
ffa02cd0:	db 17       	IF !CC JUMP 0xffa02c86 <_bridge_publish+0xa2> (BP);
ffa02cd2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9010f5(-7335691) */
ffa02cd6:	e9 a1       	R1 = [P5 + 0x1c];
ffa02cd8:	00 e1 34 03 	R0.L = 0x334;		/* (820)	R0=0xff900334(-7339212) */
ffa02cdc:	21 93       	[P4] = R1;
ffa02cde:	ff e3 fb f3 	CALL 0xffa014d4 <_printf_ip>;
ffa02ce2:	da b9       	P2 = [FP -0xc];
ffa02ce4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900334(-7339212) */
ffa02ce8:	00 e1 40 03 	R0.L = 0x340;		/* (832)	R0=0xff900340(-7339200) */
ffa02cec:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa02cee:	da bb       	[FP -0xc] = P2;
ffa02cf0:	a2 6e       	P2 += -0x2c;		/* (-44) */
ffa02cf2:	91 e4 2c 00 	R1 = B[P2 + 0x2c] (Z);
ffa02cf6:	ff e3 9b f2 	CALL 0xffa0122c <_printf_hex_byte>;
ffa02cfa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900340(-7339200) */
ffa02cfe:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa02d02:	ff e3 85 f2 	CALL 0xffa0120c <_printf_str>;
ffa02d06:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ec4 <_rxbuf> */
ffa02d0a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d0c:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_g_streamEnabled> */
ffa02d10:	10 9b       	B[P2] = R0;
ffa02d12:	da b9       	P2 = [FP -0xc];
ffa02d14:	10 99       	R0 = B[P2] (Z);
ffa02d16:	0e 20       	JUMP.S 0xffa02d32 <_bridge_publish+0x14e>;
ffa02d18:	4a e1 00 02 	P2.H = 0x200;		/* (512)	P2=0x2000c34 */
ffa02d1c:	0a e1 00 00 	P2.L = 0x0;		/* (  0)	P2=0x2000000 */
ffa02d20:	b2 e0 06 20 	LSETUP(0xffa02d24 <_bridge_publish+0x140>, 0xffa02d2c <_bridge_publish+0x148>) LC1 = P2;
	...
ffa02d2c:	00 00       	NOP;
ffa02d2e:	76 2f       	JUMP.S 0xffa02c1a <_bridge_publish+0x36>;
ffa02d30:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02d32:	01 e8 00 00 	UNLINK;
ffa02d36:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02d38:	10 00       	RTS;
	...

ffa02d3c <_DHCP_rx>:
ffa02d3c:	e5 05       	[--SP] = (R7:4, P5:5);
ffa02d3e:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02d42:	67 30       	R4 = FP;
ffa02d44:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02d46:	e4 67       	R4 += -0x4;		/* ( -4) */
ffa02d48:	01 20       	JUMP.S 0xffa02d4a <_DHCP_rx+0xe>;
ffa02d4a:	04 30       	R0 = R4;
ffa02d4c:	ff e3 d2 fe 	CALL 0xffa02af0 <_bfin_EMAC_recv_poll>;
ffa02d50:	38 30       	R7 = R0;
ffa02d52:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa02d56:	47 51       	R5 = R7 + R0;
ffa02d58:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa02d5c:	0d 30       	R1 = R5;
ffa02d5e:	00 e1 7c 03 	R0.L = 0x37c;		/* (892)	R0=0xff90037c(-7339140) */
ffa02d62:	ff e3 17 f3 	CALL 0xffa01390 <_printf_int>;
ffa02d66:	21 e1 1b 01 	R1 = 0x11b (X);		/*		R1=0x11b(283) */
ffa02d6a:	0f 09       	CC = R7 <= R1;
ffa02d6c:	fd b9       	P5 = [FP -0x4];
ffa02d6e:	0c 18       	IF CC JUMP 0xffa02d86 <_DHCP_rx+0x4a>;
ffa02d70:	00 00       	NOP;
ffa02d72:	00 00       	NOP;
ffa02d74:	00 00       	NOP;
ffa02d76:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa02d78:	ff e3 aa f6 	CALL 0xffa01acc <_htons>;
ffa02d7c:	c0 42       	R0 = R0.L (Z);
ffa02d7e:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa02d82:	08 08       	CC = R0 == R1;
ffa02d84:	0f 18       	IF CC JUMP 0xffa02da2 <_DHCP_rx+0x66>;
ffa02d86:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90037c(-7339140) */
ffa02d8a:	00 e1 60 03 	R0.L = 0x360;		/* (864)	R0=0xff900360(-7339168) */
ffa02d8e:	ff e3 3f f2 	CALL 0xffa0120c <_printf_str>;
ffa02d92:	0e 64       	R6 += 0x1;		/* (  1) */
ffa02d94:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa02d96:	06 09       	CC = R6 <= R0;
ffa02d98:	d9 1f       	IF CC JUMP 0xffa02d4a <_DHCP_rx+0xe> (BP);
ffa02d9a:	ff e3 ed f8 	CALL 0xffa01f74 <_DHCP_tx_discover>;
ffa02d9e:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02da0:	d5 2f       	JUMP.S 0xffa02d4a <_DHCP_rx+0xe>;
ffa02da2:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa02da6:	ff e3 93 f6 	CALL 0xffa01acc <_htons>;
ffa02daa:	c0 42       	R0 = R0.L (Z);
ffa02dac:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa02db0:	01 08       	CC = R1 == R0;
ffa02db2:	f1 17       	IF !CC JUMP 0xffa02d94 <_DHCP_rx+0x58> (BP);
ffa02db4:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa02db8:	ff e3 8a f6 	CALL 0xffa01acc <_htons>;
ffa02dbc:	c0 42       	R0 = R0.L (Z);
ffa02dbe:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa02dc2:	01 08       	CC = R1 == R0;
ffa02dc4:	e8 17       	IF !CC JUMP 0xffa02d94 <_DHCP_rx+0x58> (BP);
ffa02dc6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00000(-4194304) */
ffa02dca:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa02dce:	11 91       	R1 = [P2];
ffa02dd0:	28 a3       	R0 = [P5 + 0x30];
ffa02dd2:	08 08       	CC = R0 == R1;
ffa02dd4:	e0 17       	IF !CC JUMP 0xffa02d94 <_DHCP_rx+0x58> (BP);
ffa02dd6:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa02dda:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa02dde:	ff e3 83 f6 	CALL 0xffa01ae4 <_htonl>;
ffa02de2:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa02de6:	01 08       	CC = R1 == R0;
ffa02de8:	d6 17       	IF !CC JUMP 0xffa02d94 <_DHCP_rx+0x58> (BP);
ffa02dea:	4d 30       	R1 = P5;
ffa02dec:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa02df0:	01 50       	R0 = R1 + R0;
ffa02df2:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa02df6:	f0 bb 00 00 
ffa02dfa:	ff e3 e1 f8 	CALL 0xffa01fbc <_DHCP_parse>;
ffa02dfe:	e9 a3       	R1 = [P5 + 0x3c];
ffa02e00:	01 0c       	CC = R1 == 0x0;
ffa02e02:	12 1c       	IF CC JUMP 0xffa02e26 <_DHCP_rx+0xea> (BP);
ffa02e04:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa02e08:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa02e0c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa02e10:	11 93       	[P2] = R1;
ffa02e12:	00 e1 50 03 	R0.L = 0x350;		/* (848)	R0=0xff900350(-7339184) */
ffa02e16:	ff e3 5f f3 	CALL 0xffa014d4 <_printf_ip>;
ffa02e1a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900350(-7339184) */
ffa02e1e:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa02e22:	ff e3 f5 f1 	CALL 0xffa0120c <_printf_str>;
ffa02e26:	01 e8 00 00 	UNLINK;
ffa02e2a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e2c:	a5 05       	(R7:4, P5:5) = [SP++];
ffa02e2e:	10 00       	RTS;

ffa02e30 <_DHCP_req>:
ffa02e30:	c5 04       	[--SP] = (P5:5);
ffa02e32:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ec4 <_rxbuf> */
ffa02e36:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02e3a:	0d e1 a8 0e 	P5.L = 0xea8;		/* (3752)	P5=0xff900ea8 <_NetDHCPserv> */
ffa02e3e:	ff e3 9b f8 	CALL 0xffa01f74 <_DHCP_tx_discover>;
ffa02e42:	ff e3 7d ff 	CALL 0xffa02d3c <_DHCP_rx>;
ffa02e46:	29 91       	R1 = [P5];
ffa02e48:	39 0c       	CC = R1 == -0x1;
ffa02e4a:	42 18       	IF CC JUMP 0xffa02ece <_DHCP_req+0x9e>;
ffa02e4c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetOurIP> */
ffa02e50:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa02e54:	10 91       	R0 = [P2];
ffa02e56:	00 0c       	CC = R0 == 0x0;
ffa02e58:	08 18       	IF CC JUMP 0xffa02e68 <_DHCP_req+0x38>;
ffa02e5a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee0 <_NetOurIP> */
ffa02e5e:	0a e1 dc 0e 	P2.L = 0xedc;		/* (3804)	P2=0xff900edc <_NetSubnetMask> */
ffa02e62:	10 91       	R0 = [P2];
ffa02e64:	00 0c       	CC = R0 == 0x0;
ffa02e66:	2f 10       	IF !CC JUMP 0xffa02ec4 <_DHCP_req+0x94>;
ffa02e68:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa02e6a:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa02e6e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e70:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa02e74:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02e76:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa02e7a:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02e7c:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02e80:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02e82:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa02e86:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa02e8a:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa02e8e:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa02e92:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa02e96:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa02e9a:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa02e9e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02ea0:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa02ea4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa02ea8:	00 e1 ac 03 	R0.L = 0x3ac;		/* (940)	R0=0xff9003ac(-7339092) */
ffa02eac:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa02eb0:	ff e3 ae f1 	CALL 0xffa0120c <_printf_str>;
ffa02eb4:	4f 30       	R1 = FP;
ffa02eb6:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02eb8:	a1 67       	R1 += -0xc;		/* (-12) */
ffa02eba:	2a 91       	R2 = [P5];
ffa02ebc:	ff e3 6c f7 	CALL 0xffa01d94 <_DHCP_tx>;
ffa02ec0:	ff e3 3e ff 	CALL 0xffa02d3c <_DHCP_rx>;
ffa02ec4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02ec6:	01 e8 00 00 	UNLINK;
ffa02eca:	85 04       	(P5:5) = [SP++];
ffa02ecc:	10 00       	RTS;
ffa02ece:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02ed2:	00 e1 90 03 	R0.L = 0x390;		/* (912)	R0=0xff900390(-7339120) */
ffa02ed6:	ff e3 9b f1 	CALL 0xffa0120c <_printf_str>;
ffa02eda:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02edc:	f5 2f       	JUMP.S 0xffa02ec6 <_DHCP_req+0x96>;
	...

ffa02ee0 <_bfin_EMAC_recv>:
ffa02ee0:	eb 05       	[--SP] = (R7:5, P5:3);
ffa02ee2:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900ee4 <_NetDataDestIP> */
ffa02ee6:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000 <_l1_data_a>(-7340032) */
ffa02eea:	0c e1 c0 0e 	P4.L = 0xec0;		/* (3776)	P4=0xff900ec0 <_rxIdx> */
ffa02eee:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00eb0(-4190544) */
ffa02ef2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02ef6:	28 32       	P5 = R0;
ffa02ef8:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02efa:	05 e1 c4 0e 	R5.L = 0xec4;		/* (3780)	R5=0xff900ec4 <_rxbuf>(-7336252) */
ffa02efe:	74 30       	R6 = P4;
ffa02f00:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa02f04:	0e 32       	P1 = R6;
ffa02f06:	08 95       	R0 = W[P1] (Z);
ffa02f08:	10 32       	P2 = R0;
ffa02f0a:	0d 32       	P1 = R5;
ffa02f0c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02f0e:	52 91       	P2 = [P2];
ffa02f10:	90 a2       	R0 = [P2 + 0x28];
ffa02f12:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02f14:	46 18       	IF CC JUMP 0xffa02fa0 <_bfin_EMAC_recv+0xc0>;
ffa02f16:	00 00       	NOP;
ffa02f18:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f1a:	a0 4f       	R0 <<= 0x14;
ffa02f1c:	91 a2       	R1 = [P2 + 0x28];
ffa02f1e:	81 54       	R2 = R1 & R0;
ffa02f20:	02 0c       	CC = R2 == 0x0;
ffa02f22:	45 10       	IF !CC JUMP 0xffa02fac <_bfin_EMAC_recv+0xcc>;
ffa02f24:	00 00       	NOP;
ffa02f26:	00 00       	NOP;
ffa02f28:	00 00       	NOP;
ffa02f2a:	90 a2       	R0 = [P2 + 0x28];
ffa02f2c:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa02f2e:	4a 18       	IF CC JUMP 0xffa02fc2 <_bfin_EMAC_recv+0xe2>;
ffa02f30:	00 00       	NOP;
ffa02f32:	00 00       	NOP;
ffa02f34:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02f38:	91 a2       	R1 = [P2 + 0x28];
ffa02f3a:	c1 55       	R7 = R1 & R0;
ffa02f3c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02f3e:	07 09       	CC = R7 <= R0;
ffa02f40:	4c 18       	IF CC JUMP 0xffa02fd8 <_bfin_EMAC_recv+0xf8>;
ffa02f42:	00 00       	NOP;
ffa02f44:	00 00       	NOP;
ffa02f46:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02f48:	90 a1       	R0 = [P2 + 0x18];
ffa02f4a:	59 95       	R1 = W[P3] (X);
ffa02f4c:	28 93       	[P5] = R0;
ffa02f4e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02f50:	08 56       	R0 = R0 | R1;
ffa02f52:	18 97       	W[P3] = R0;
ffa02f54:	61 95       	R1 = W[P4] (X);
ffa02f56:	c8 42       	R0 = R1.L (Z);
ffa02f58:	10 0d       	CC = R0 <= 0x2;
ffa02f5a:	92 b2       	[P2 + 0x28] = R2;
ffa02f5c:	1e 1c       	IF CC JUMP 0xffa02f98 <_bfin_EMAC_recv+0xb8> (BP);
ffa02f5e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f60:	20 97       	W[P4] = R0;
ffa02f62:	28 91       	R0 = [P5];
ffa02f64:	0f 30       	R1 = R7;
ffa02f66:	00 e3 f9 00 	CALL 0xffa03158 <_ARP_rx>;
ffa02f6a:	00 0c       	CC = R0 == 0x0;
ffa02f6c:	03 18       	IF CC JUMP 0xffa02f72 <_bfin_EMAC_recv+0x92>;
ffa02f6e:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02f70:	ca 2f       	JUMP.S 0xffa02f04 <_bfin_EMAC_recv+0x24>;
ffa02f72:	28 91       	R0 = [P5];
ffa02f74:	0f 30       	R1 = R7;
ffa02f76:	ff e3 b3 fa 	CALL 0xffa024dc <_icmp_rx>;
ffa02f7a:	00 0c       	CC = R0 == 0x0;
ffa02f7c:	f9 17       	IF !CC JUMP 0xffa02f6e <_bfin_EMAC_recv+0x8e> (BP);
ffa02f7e:	28 91       	R0 = [P5];
ffa02f80:	0f 30       	R1 = R7;
ffa02f82:	00 e3 49 04 	CALL 0xffa03814 <_tcp_rx>;
ffa02f86:	00 0c       	CC = R0 == 0x0;
ffa02f88:	f3 17       	IF !CC JUMP 0xffa02f6e <_bfin_EMAC_recv+0x8e> (BP);
ffa02f8a:	07 0d       	CC = R7 <= 0x0;
ffa02f8c:	bc 1f       	IF CC JUMP 0xffa02f04 <_bfin_EMAC_recv+0x24> (BP);
ffa02f8e:	01 e8 00 00 	UNLINK;
ffa02f92:	07 30       	R0 = R7;
ffa02f94:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02f96:	10 00       	RTS;
ffa02f98:	01 30       	R0 = R1;
ffa02f9a:	08 64       	R0 += 0x1;		/* (  1) */
ffa02f9c:	20 97       	W[P4] = R0;
ffa02f9e:	e2 2f       	JUMP.S 0xffa02f62 <_bfin_EMAC_recv+0x82>;
ffa02fa0:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02fa2:	01 e8 00 00 	UNLINK;
ffa02fa6:	07 30       	R0 = R7;
ffa02fa8:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02faa:	10 00       	RTS;
ffa02fac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02fb0:	00 e1 c0 03 	R0.L = 0x3c0;		/* (960)	R0=0xff9003c0(-7339072) */
ffa02fb4:	ff e3 2c f1 	CALL 0xffa0120c <_printf_str>;
ffa02fb8:	01 e8 00 00 	UNLINK;
ffa02fbc:	07 30       	R0 = R7;
ffa02fbe:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02fc0:	10 00       	RTS;
ffa02fc2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003c0(-7339072) */
ffa02fc6:	00 e1 dc 03 	R0.L = 0x3dc;		/* (988)	R0=0xff9003dc(-7339044) */
ffa02fca:	ff e3 21 f1 	CALL 0xffa0120c <_printf_str>;
ffa02fce:	01 e8 00 00 	UNLINK;
ffa02fd2:	07 30       	R0 = R7;
ffa02fd4:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02fd6:	10 00       	RTS;
ffa02fd8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9003dc(-7339044) */
ffa02fdc:	00 e1 f0 03 	R0.L = 0x3f0;		/* (1008)	R0=0xff9003f0(-7339024) */
ffa02fe0:	ff e3 16 f1 	CALL 0xffa0120c <_printf_str>;
ffa02fe4:	01 e8 00 00 	UNLINK;
ffa02fe8:	07 30       	R0 = R7;
ffa02fea:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02fec:	10 00       	RTS;
	...

ffa02ff0 <_ARP_init>:
ffa02ff0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900edc <_NetSubnetMask> */
ffa02ff4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02ff8:	0a e1 ec 0e 	P2.L = 0xeec;		/* (3820)	P2=0xff900eec <_NetArpLut> */
ffa02ffc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02ffe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03000:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa03002:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa03004:	b2 e0 12 10 	LSETUP(0xffa03008 <_ARP_init+0x18>, 0xffa03028 <_ARP_init+0x38>) LC1 = P1;
ffa03008:	11 93       	[P2] = R1;
ffa0300a:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa0300e:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa03012:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa03016:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa0301a:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa0301e:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa03022:	52 b5       	W[P2 + 0xa] = R2;
ffa03024:	d1 b0       	[P2 + 0xc] = R1;
ffa03026:	11 b1       	[P2 + 0x10] = R1;
ffa03028:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa0302a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eec <_NetArpLut> */
ffa0302e:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa03032:	0a e1 e8 0e 	P2.L = 0xee8;		/* (3816)	P2=0xff900ee8 <_NetArpLut_age> */
ffa03036:	10 97       	W[P2] = R0;
ffa03038:	01 e8 00 00 	UNLINK;
ffa0303c:	10 00       	RTS;
	...

ffa03040 <_ARP_lut_find>:
ffa03040:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900eac <_txIdx> */
ffa03044:	08 e1 ec 0e 	P0.L = 0xeec;		/* (3820)	P0=0xff900eec <_NetArpLut> */
ffa03048:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0304c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0304e:	48 32       	P1 = P0;
ffa03050:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa03052:	b2 e0 06 20 	LSETUP(0xffa03056 <_ARP_lut_find+0x16>, 0xffa0305e <_ARP_lut_find+0x1e>) LC1 = P2;
ffa03056:	08 91       	R0 = [P1];
ffa03058:	00 0c       	CC = R0 == 0x0;
ffa0305a:	14 18       	IF CC JUMP 0xffa03082 <_ARP_lut_find+0x42>;
ffa0305c:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0305e:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa03060:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa03064:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa03066:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa03068:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa0306a:	09 e1 0a 0f 	P1.L = 0xf0a;		/* (3850)	P1=0xff900f0a */
ffa0306e:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa03070:	b2 e0 08 20 	LSETUP(0xffa03074 <_ARP_lut_find+0x34>, 0xffa03080 <_ARP_lut_find+0x40>) LC1 = P2;
ffa03074:	08 95       	R0 = W[P1] (Z);
ffa03076:	03 09       	CC = R3 <= R0;
ffa03078:	03 18       	IF CC JUMP 0xffa0307e <_ARP_lut_find+0x3e>;
ffa0307a:	11 30       	R2 = R1;
ffa0307c:	18 30       	R3 = R0;
ffa0307e:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa03080:	09 64       	R1 += 0x1;		/* (  1) */
ffa03082:	02 30       	R0 = R2;
ffa03084:	01 e8 00 00 	UNLINK;
ffa03088:	10 00       	RTS;
	...

ffa0308c <_ARP_lut_add>:
ffa0308c:	f5 05       	[--SP] = (R7:6, P5:5);
ffa0308e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ea8 <_NetDHCPserv> */
ffa03092:	0d e1 ec 0e 	P5.L = 0xeec;		/* (3820)	P5=0xff900eec <_NetArpLut> */
ffa03096:	31 30       	R6 = R1;
ffa03098:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0309c:	38 30       	R7 = R0;
ffa0309e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa030a0:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa030a2:	4d 32       	P1 = P5;
ffa030a4:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa030a6:	00 00       	NOP;
ffa030a8:	08 91       	R0 = [P1];
ffa030aa:	07 08       	CC = R7 == R0;
ffa030ac:	11 07       	IF CC R2 = R1;
ffa030ae:	09 64       	R1 += 0x1;		/* (  1) */
ffa030b0:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa030b2:	42 0c       	CC = P2 == 0x0;
ffa030b4:	23 10       	IF !CC JUMP 0xffa030fa <_ARP_lut_add+0x6e>;
ffa030b6:	82 0c       	CC = R2 < 0x0;
ffa030b8:	25 18       	IF CC JUMP 0xffa03102 <_ARP_lut_add+0x76>;
ffa030ba:	82 c6 12 82 	R1 = R2 << 0x2;
ffa030be:	0a 32       	P1 = R2;
ffa030c0:	11 32       	P2 = R1;
ffa030c2:	06 32       	P0 = R6;
ffa030c4:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa030c6:	6a 5a       	P1 = P2 + P5;
ffa030c8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa030ca:	0f 93       	[P1] = R7;
ffa030cc:	aa 5a       	P2 = P2 + P5;
ffa030ce:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa030d0:	b2 e0 03 10 	LSETUP(0xffa030d4 <_ARP_lut_add+0x48>, 0xffa030d6 <_ARP_lut_add+0x4a>) LC1 = P1;
ffa030d4:	40 98       	R0 = B[P0++] (X);
ffa030d6:	10 9a       	B[P2++] = R0;
ffa030d8:	51 41       	R1 = (R1 + R2) << 0x2;
ffa030da:	09 32       	P1 = R1;
ffa030dc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa030e0:	0a e1 e8 0e 	P2.L = 0xee8;		/* (3816)	P2=0xff900ee8 <_NetArpLut_age> */
ffa030e4:	50 95       	R0 = W[P2] (X);
ffa030e6:	08 64       	R0 += 0x1;		/* (  1) */
ffa030e8:	10 97       	W[P2] = R0;
ffa030ea:	a9 5a       	P2 = P1 + P5;
ffa030ec:	50 b5       	W[P2 + 0xa] = R0;
ffa030ee:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa030f0:	10 b1       	[P2 + 0x10] = R0;
ffa030f2:	01 e8 00 00 	UNLINK;
ffa030f6:	b5 05       	(R7:6, P5:5) = [SP++];
ffa030f8:	10 00       	RTS;
ffa030fa:	82 0c       	CC = R2 < 0x0;
ffa030fc:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa030fe:	d4 1f       	IF CC JUMP 0xffa030a6 <_ARP_lut_add+0x1a> (BP);
ffa03100:	dd 2f       	JUMP.S 0xffa030ba <_ARP_lut_add+0x2e>;
ffa03102:	ff e3 9f ff 	CALL 0xffa03040 <_ARP_lut_find>;
ffa03106:	10 30       	R2 = R0;
ffa03108:	d9 2f       	JUMP.S 0xffa030ba <_ARP_lut_add+0x2e>;
	...

ffa0310c <_ARP_lu>:
ffa0310c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa03110:	c4 04       	[--SP] = (P5:4);
ffa03112:	09 e1 ec 0e 	P1.L = 0xeec;		/* (3820)	P1=0xff900eec <_NetArpLut> */
ffa03116:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0311a:	10 30       	R2 = R0;
ffa0311c:	29 32       	P5 = R1;
ffa0311e:	61 32       	P4 = P1;
ffa03120:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa03122:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa03124:	b2 e0 06 20 	LSETUP(0xffa03128 <_ARP_lu+0x1c>, 0xffa03130 <_ARP_lu+0x24>) LC1 = P2;
ffa03128:	08 91       	R0 = [P1];
ffa0312a:	10 08       	CC = R0 == R2;
ffa0312c:	08 18       	IF CC JUMP 0xffa0313c <_ARP_lu+0x30>;
ffa0312e:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa03130:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa03132:	01 e8 00 00 	UNLINK;
ffa03136:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03138:	84 04       	(P5:4) = [SP++];
ffa0313a:	10 00       	RTS;
ffa0313c:	08 a1       	R0 = [P1 + 0x10];
ffa0313e:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03140:	f7 1f       	IF CC JUMP 0xffa0312e <_ARP_lu+0x22> (BP);
ffa03142:	60 5a       	P1 = P0 + P4;
ffa03144:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa03146:	b2 e0 03 20 	LSETUP(0xffa0314a <_ARP_lu+0x3e>, 0xffa0314c <_ARP_lu+0x40>) LC1 = P2;
ffa0314a:	48 98       	R0 = B[P1++] (X);
ffa0314c:	28 9a       	B[P5++] = R0;
ffa0314e:	01 e8 00 00 	UNLINK;
ffa03152:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03154:	84 04       	(P5:4) = [SP++];
ffa03156:	10 00       	RTS;

ffa03158 <_ARP_rx>:
ffa03158:	fb 05       	[--SP] = (R7:7, P5:3);
ffa0315a:	20 32       	P4 = R0;
ffa0315c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03160:	39 30       	R7 = R1;
ffa03162:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa03164:	ff e3 b4 f4 	CALL 0xffa01acc <_htons>;
ffa03168:	c0 42       	R0 = R0.L (Z);
ffa0316a:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa0316e:	08 08       	CC = R0 == R1;
ffa03170:	06 18       	IF CC JUMP 0xffa0317c <_ARP_rx+0x24>;
ffa03172:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03174:	01 e8 00 00 	UNLINK;
ffa03178:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0317a:	10 00       	RTS;
ffa0317c:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa0317e:	07 0a       	CC = R7 <= R0 (IU);
ffa03180:	f9 1f       	IF CC JUMP 0xffa03172 <_ARP_rx+0x1a> (BP);
ffa03182:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03184:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa03186:	ff e3 a3 f4 	CALL 0xffa01acc <_htons>;
ffa0318a:	c0 42       	R0 = R0.L (Z);
ffa0318c:	07 08       	CC = R7 == R0;
ffa0318e:	f2 17       	IF !CC JUMP 0xffa03172 <_ARP_rx+0x1a> (BP);
ffa03190:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03194:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa03196:	ff e3 9b f4 	CALL 0xffa01acc <_htons>;
ffa0319a:	c0 42       	R0 = R0.L (Z);
ffa0319c:	07 08       	CC = R7 == R0;
ffa0319e:	ea 17       	IF !CC JUMP 0xffa03172 <_ARP_rx+0x1a> (BP);
ffa031a0:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa031a2:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa031a6:	08 08       	CC = R0 == R1;
ffa031a8:	e5 17       	IF !CC JUMP 0xffa03172 <_ARP_rx+0x1a> (BP);
ffa031aa:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa031ac:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa031ae:	ff e3 8f f4 	CALL 0xffa01acc <_htons>;
ffa031b2:	c0 42       	R0 = R0.L (Z);
ffa031b4:	07 08       	CC = R7 == R0;
ffa031b6:	0c 14       	IF !CC JUMP 0xffa031ce <_ARP_rx+0x76> (BP);
ffa031b8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa031bc:	0a e1 d4 0e 	P2.L = 0xed4;		/* (3796)	P2=0xff900ed4 <_NetOurMAC> */
ffa031c0:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa031c4:	10 99       	R0 = B[P2] (Z);
ffa031c6:	01 08       	CC = R1 == R0;
ffa031c8:	ae 18       	IF CC JUMP 0xffa03324 <_ARP_rx+0x1cc>;
ffa031ca:	00 00       	NOP;
ffa031cc:	00 00       	NOP;
ffa031ce:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa031d0:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa031d2:	ff e3 7d f4 	CALL 0xffa01acc <_htons>;
ffa031d6:	c0 42       	R0 = R0.L (Z);
ffa031d8:	07 08       	CC = R7 == R0;
ffa031da:	cc 17       	IF !CC JUMP 0xffa03172 <_ARP_rx+0x1a> (BP);
ffa031dc:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa031e0:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa031e2:	ff e3 75 f4 	CALL 0xffa01acc <_htons>;
ffa031e6:	c0 42       	R0 = R0.L (Z);
ffa031e8:	07 08       	CC = R7 == R0;
ffa031ea:	c4 17       	IF !CC JUMP 0xffa03172 <_ARP_rx+0x1a> (BP);
ffa031ec:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa031ee:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa031f2:	08 08       	CC = R0 == R1;
ffa031f4:	bf 17       	IF !CC JUMP 0xffa03172 <_ARP_rx+0x1a> (BP);
ffa031f6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa031f8:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa031fa:	ff e3 69 f4 	CALL 0xffa01acc <_htons>;
ffa031fe:	c0 42       	R0 = R0.L (Z);
ffa03200:	07 08       	CC = R7 == R0;
ffa03202:	b8 17       	IF !CC JUMP 0xffa03172 <_ARP_rx+0x1a> (BP);
ffa03204:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa03208:	07 e1 e0 0e 	R7.L = 0xee0;		/* (3808)	R7=0xff900ee0 <_NetOurIP>(-7336224) */
ffa0320c:	17 32       	P2 = R7;
ffa0320e:	a1 a2       	R1 = [P4 + 0x28];
ffa03210:	10 91       	R0 = [P2];
ffa03212:	01 08       	CC = R1 == R0;
ffa03214:	af 17       	IF !CC JUMP 0xffa03172 <_ARP_rx+0x1a> (BP);
ffa03216:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ed4 <_NetOurMAC> */
ffa0321a:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa0321e:	10 95       	R0 = W[P2] (Z);
ffa03220:	10 32       	P2 = R0;
ffa03222:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900eec <_NetArpLut> */
ffa03226:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa0322a:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa0322c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900eec <_NetArpLut> */
ffa03230:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03232:	52 91       	P2 = [P2];
ffa03234:	0d e1 d4 0e 	P5.L = 0xed4;		/* (3796)	P5=0xff900ed4 <_NetOurMAC> */
ffa03238:	93 ad       	P3 = [P2 + 0x18];
ffa0323a:	18 97       	W[P3] = R0;
ffa0323c:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa03240:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa03244:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa03248:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa0324c:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa03250:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa03254:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa03258:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa0325c:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa03260:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa03264:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa03268:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa0326c:	68 99       	R0 = B[P5] (X);
ffa0326e:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa03272:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa03276:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa0327a:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa0327e:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa03282:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa03286:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa0328a:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa0328e:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa03292:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa03296:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa0329a:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa0329e:	ff e3 17 f4 	CALL 0xffa01acc <_htons>;
ffa032a2:	d8 b5       	W[P3 + 0xe] = R0;
ffa032a4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa032a6:	ff e3 13 f4 	CALL 0xffa01acc <_htons>;
ffa032aa:	18 b6       	W[P3 + 0x10] = R0;
ffa032ac:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa032b0:	ff e3 0e f4 	CALL 0xffa01acc <_htons>;
ffa032b4:	58 b6       	W[P3 + 0x12] = R0;
ffa032b6:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa032b8:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa032bc:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa032be:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa032c2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa032c4:	ff e3 04 f4 	CALL 0xffa01acc <_htons>;
ffa032c8:	44 32       	P0 = P4;
ffa032ca:	d8 b6       	W[P3 + 0x16] = R0;
ffa032cc:	53 32       	P2 = P3;
ffa032ce:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa032d0:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa032d2:	b2 e0 08 10 	LSETUP(0xffa032d6 <_ARP_rx+0x17e>, 0xffa032e2 <_ARP_rx+0x18a>) LC1 = P1;
ffa032d6:	68 98       	R0 = B[P5++] (X);
ffa032d8:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa032dc:	40 98       	R0 = B[P0++] (X);
ffa032de:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa032e2:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa032e4:	17 32       	P2 = R7;
ffa032e6:	50 99       	R0 = B[P2] (X);
ffa032e8:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa032ec:	10 91       	R0 = [P2];
ffa032ee:	40 4e       	R0 >>= 0x8;
ffa032f0:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa032f4:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa032f8:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa032fc:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa03300:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa03304:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa03308:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa0330c:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa03310:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa03314:	f3 b0       	[SP + 0xc] = R3;
ffa03316:	ff e3 31 f3 	CALL 0xffa01978 <_FormatIPAddress>;
ffa0331a:	98 b2       	[P3 + 0x28] = R0;
ffa0331c:	ff e3 ce f4 	CALL 0xffa01cb8 <_bfin_EMAC_send_nocopy>;
ffa03320:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03322:	29 2f       	JUMP.S 0xffa03174 <_ARP_rx+0x1c>;
ffa03324:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa03328:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa0332c:	01 08       	CC = R1 == R0;
ffa0332e:	50 17       	IF !CC JUMP 0xffa031ce <_ARP_rx+0x76> (BP);
ffa03330:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa03334:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa03338:	01 08       	CC = R1 == R0;
ffa0333a:	4a 17       	IF !CC JUMP 0xffa031ce <_ARP_rx+0x76> (BP);
ffa0333c:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa03340:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa03344:	01 08       	CC = R1 == R0;
ffa03346:	44 17       	IF !CC JUMP 0xffa031ce <_ARP_rx+0x76> (BP);
ffa03348:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa0334c:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa03350:	01 08       	CC = R1 == R0;
ffa03352:	3e 17       	IF !CC JUMP 0xffa031ce <_ARP_rx+0x76> (BP);
ffa03354:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa03358:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa0335c:	01 08       	CC = R1 == R0;
ffa0335e:	38 17       	IF !CC JUMP 0xffa031ce <_ARP_rx+0x76> (BP);
ffa03360:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa03362:	44 30       	R0 = P4;
ffa03364:	ff e3 d4 f3 	CALL 0xffa01b0c <_pack4chars>;
ffa03368:	38 30       	R7 = R0;
ffa0336a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0336e:	0f 30       	R1 = R7;
ffa03370:	00 e1 fc 04 	R0.L = 0x4fc;		/* (1276)	R0=0xff9004fc(-7338756) */
ffa03374:	ff e3 b0 f0 	CALL 0xffa014d4 <_printf_ip>;
ffa03378:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004fc(-7338756) */
ffa0337c:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa03380:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa03382:	ff e3 45 ef 	CALL 0xffa0120c <_printf_str>;
ffa03386:	07 30       	R0 = R7;
ffa03388:	4c 30       	R1 = P4;
ffa0338a:	ff e3 81 fe 	CALL 0xffa0308c <_ARP_lut_add>;
ffa0338e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03390:	f2 2e       	JUMP.S 0xffa03174 <_ARP_rx+0x1c>;
	...

ffa03394 <_ARP_tx>:
ffa03394:	fc 05       	[--SP] = (R7:7, P5:4);
ffa03396:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa0339a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0339e:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa033a2:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa033a6:	10 95 00 00 
ffa033aa:	10 32       	P2 = R0;
ffa033ac:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa033b0:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa033b4:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa033b6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ed4 <_NetOurMAC> */
ffa033ba:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa033bc:	52 91       	P2 = [P2];
ffa033be:	0d e1 d4 0e 	P5.L = 0xed4;		/* (3796)	P5=0xff900ed4 <_NetOurMAC> */
ffa033c2:	94 ad       	P4 = [P2 + 0x18];
ffa033c4:	20 97       	W[P4] = R0;
ffa033c6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa033c8:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa033cc:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa033d0:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa033d4:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa033d8:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa033dc:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa033e0:	68 99       	R0 = B[P5] (X);
ffa033e2:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa033e6:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa033ea:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa033ee:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa033f2:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa033f6:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa033fa:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa033fe:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa03402:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa03406:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa0340a:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa0340e:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa03412:	ff e3 5d f3 	CALL 0xffa01acc <_htons>;
ffa03416:	e0 b5       	W[P4 + 0xe] = R0;
ffa03418:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0341a:	ff e3 59 f3 	CALL 0xffa01acc <_htons>;
ffa0341e:	20 b6       	W[P4 + 0x10] = R0;
ffa03420:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03424:	ff e3 54 f3 	CALL 0xffa01acc <_htons>;
ffa03428:	60 b6       	W[P4 + 0x12] = R0;
ffa0342a:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0342c:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa03430:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03432:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa03436:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03438:	ff e3 4a f3 	CALL 0xffa01acc <_htons>;
ffa0343c:	e0 b6       	W[P4 + 0x16] = R0;
ffa0343e:	54 32       	P2 = P4;
ffa03440:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03442:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa03444:	b2 e0 07 10 	LSETUP(0xffa03448 <_ARP_tx+0xb4>, 0xffa03452 <_ARP_tx+0xbe>) LC1 = P1;
ffa03448:	68 98       	R0 = B[P5++] (X);
ffa0344a:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa0344e:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa03452:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa03454:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa03458:	0a e1 e0 0e 	P2.L = 0xee0;		/* (3808)	P2=0xff900ee0 <_NetOurIP> */
ffa0345c:	50 99       	R0 = B[P2] (X);
ffa0345e:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa03462:	10 91       	R0 = [P2];
ffa03464:	40 4e       	R0 >>= 0x8;
ffa03466:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa0346a:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa0346e:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa03472:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa03476:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa0347a:	a7 b2       	[P4 + 0x28] = R7;
ffa0347c:	01 e8 00 00 	UNLINK;
ffa03480:	bc 05       	(R7:7, P5:4) = [SP++];
ffa03482:	ff e2 1b f4 	JUMP.L 0xffa01cb8 <_bfin_EMAC_send_nocopy>;
	...

ffa03488 <_ARP_req>:
ffa03488:	ec 05       	[--SP] = (R7:5, P5:4);
ffa0348a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0348e:	38 30       	R7 = R0;
ffa03490:	ff e3 3e fe 	CALL 0xffa0310c <_ARP_lu>;
ffa03494:	00 0c       	CC = R0 == 0x0;
ffa03496:	50 10       	IF !CC JUMP 0xffa03536 <_ARP_req+0xae>;
ffa03498:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800ee0 */
ffa0349c:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa034a0:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900ec0 <_rxIdx> */
ffa034a4:	16 91       	R6 = [P2];
ffa034a6:	0c e1 ec 0e 	P4.L = 0xeec;		/* (3820)	P4=0xff900eec <_NetArpLut> */
ffa034aa:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa034ae:	4c 32       	P1 = P4;
ffa034b0:	46 51       	R5 = R6 + R0;
ffa034b2:	6c 32       	P5 = P4;
ffa034b4:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa034b6:	b2 e0 06 20 	LSETUP(0xffa034ba <_ARP_req+0x32>, 0xffa034c2 <_ARP_req+0x3a>) LC1 = P2;
ffa034ba:	08 91       	R0 = [P1];
ffa034bc:	07 08       	CC = R7 == R0;
ffa034be:	21 18       	IF CC JUMP 0xffa03500 <_ARP_req+0x78>;
ffa034c0:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa034c2:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa034c4:	ff e3 be fd 	CALL 0xffa03040 <_ARP_lut_find>;
ffa034c8:	10 32       	P2 = R0;
ffa034ca:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa034cc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa034d0:	09 e1 e8 0e 	P1.L = 0xee8;		/* (3816)	P1=0xff900ee8 <_NetArpLut_age> */
ffa034d4:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa034d6:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa034d8:	10 b1       	[P2 + 0x10] = R0;
ffa034da:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa034de:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa034e2:	17 93 00 00 
ffa034e6:	d0 b0       	[P2 + 0xc] = R0;
ffa034e8:	48 95       	R0 = W[P1] (X);
ffa034ea:	08 64       	R0 += 0x1;		/* (  1) */
ffa034ec:	08 97       	W[P1] = R0;
ffa034ee:	50 b5       	W[P2 + 0xa] = R0;
ffa034f0:	07 30       	R0 = R7;
ffa034f2:	ff e3 51 ff 	CALL 0xffa03394 <_ARP_tx>;
ffa034f6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa034f8:	01 e8 00 00 	UNLINK;
ffa034fc:	ac 05       	(R7:5, P5:4) = [SP++];
ffa034fe:	10 00       	RTS;
ffa03500:	08 a1       	R0 = [P1 + 0x10];
ffa03502:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa03504:	de 1f       	IF CC JUMP 0xffa034c0 <_ARP_req+0x38> (BP);
ffa03506:	e8 a0       	R0 = [P5 + 0xc];
ffa03508:	86 09       	CC = R6 < R0 (IU);
ffa0350a:	f6 1f       	IF CC JUMP 0xffa034f6 <_ARP_req+0x6e> (BP);
ffa0350c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03510:	0f 30       	R1 = R7;
ffa03512:	00 e1 20 05 	R0.L = 0x520;		/* (1312)	R0=0xff900520(-7338720) */
ffa03516:	ff e3 df ef 	CALL 0xffa014d4 <_printf_ip>;
ffa0351a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900520(-7338720) */
ffa0351e:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa03522:	ff e3 75 ee 	CALL 0xffa0120c <_printf_str>;
ffa03526:	07 30       	R0 = R7;
ffa03528:	ff e3 36 ff 	CALL 0xffa03394 <_ARP_tx>;
ffa0352c:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa03530:	ed b0 00 00 
ffa03534:	e2 2f       	JUMP.S 0xffa034f8 <_ARP_req+0x70>;
ffa03536:	01 e8 00 00 	UNLINK;
ffa0353a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0353c:	ac 05       	(R7:5, P5:4) = [SP++];
ffa0353e:	10 00       	RTS;

ffa03540 <_tcp_length>:
ffa03540:	c5 04       	[--SP] = (P5:5);
ffa03542:	28 32       	P5 = R0;
ffa03544:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03548:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa0354a:	ff e3 c1 f2 	CALL 0xffa01acc <_htons>;
ffa0354e:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa03552:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa03554:	51 54       	R1 = R1 & R2;
ffa03556:	11 4f       	R1 <<= 0x2;
ffa03558:	c0 42       	R0 = R0.L (Z);
ffa0355a:	08 52       	R0 = R0 - R1;
ffa0355c:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa03560:	11 4d       	R1 >>>= 0x2;
ffa03562:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa03564:	51 54       	R1 = R1 & R2;
ffa03566:	01 e8 00 00 	UNLINK;
ffa0356a:	08 52       	R0 = R0 - R1;
ffa0356c:	85 04       	(P5:5) = [SP++];
ffa0356e:	10 00       	RTS;

ffa03570 <_tcp_checksum_calc>:
ffa03570:	08 32       	P1 = R0;
ffa03572:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03574:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03578:	28 32       	P5 = R0;
ffa0357a:	31 30       	R6 = R1;
ffa0357c:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa0357e:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa03580:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa03582:	b2 e0 03 20 	LSETUP(0xffa03586 <_tcp_checksum_calc+0x16>, 0xffa03588 <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa03586:	08 94       	R0 = W[P1++] (Z);
ffa03588:	45 51       	R5 = R5 + R0;
ffa0358a:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa0358e:	10 4e       	R0 >>= 0x2;
ffa03590:	06 50       	R0 = R6 + R0;
ffa03592:	c0 42       	R0 = R0.L (Z);
ffa03594:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa03598:	ff e3 9a f2 	CALL 0xffa01acc <_htons>;
ffa0359c:	47 4f       	R7 <<= 0x8;
ffa0359e:	c0 42       	R0 = R0.L (Z);
ffa035a0:	c7 51       	R7 = R7 + R0;
ffa035a2:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa035a4:	ef 50       	R3 = R7 + R5;
ffa035a6:	0d 1c       	IF CC JUMP 0xffa035c0 <_tcp_checksum_calc+0x50> (BP);
ffa035a8:	0e 32       	P1 = R6;
ffa035aa:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa035ae:	10 4e       	R0 >>= 0x2;
ffa035b0:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa035b2:	0e 64       	R6 += 0x1;		/* (  1) */
ffa035b4:	a9 5a       	P2 = P1 + P5;
ffa035b6:	08 32       	P1 = R0;
ffa035b8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa035ba:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa035bc:	8a 5a       	P2 = P2 + P1;
ffa035be:	10 9b       	B[P2] = R0;
ffa035c0:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa035c4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa035c6:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa035ca:	71 50       	R1 = R1 + R6;
ffa035cc:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa035d0:	09 4d       	R1 >>>= 0x1;
ffa035d2:	18 4e       	R0 >>= 0x3;
ffa035d4:	41 50       	R1 = R1 + R0;
ffa035d6:	01 0d       	CC = R1 <= 0x0;
ffa035d8:	09 18       	IF CC JUMP 0xffa035ea <_tcp_checksum_calc+0x7a>;
ffa035da:	55 32       	P2 = P5;
ffa035dc:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa035de:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa035e0:	0a 64       	R2 += 0x1;		/* (  1) */
ffa035e2:	10 94       	R0 = W[P2++] (Z);
ffa035e4:	0a 08       	CC = R2 == R1;
ffa035e6:	c3 50       	R3 = R3 + R0;
ffa035e8:	fc 17       	IF !CC JUMP 0xffa035e0 <_tcp_checksum_calc+0x70> (BP);
ffa035ea:	d8 42       	R0 = R3.L (Z);
ffa035ec:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa035f0:	08 50       	R0 = R0 + R1;
ffa035f2:	c0 43       	R0 =~ R0;
ffa035f4:	01 e8 00 00 	UNLINK;
ffa035f8:	c0 42       	R0 = R0.L (Z);
ffa035fa:	ad 05       	(R7:5, P5:5) = [SP++];
ffa035fc:	10 00       	RTS;
	...

ffa03600 <_tcp_checksum_set>:
ffa03600:	c5 04       	[--SP] = (P5:5);
ffa03602:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa03606:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0360a:	0a e1 ac 0e 	P2.L = 0xeac;		/* (3756)	P2=0xff900eac <_txIdx> */
ffa0360e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa03612:	10 95 00 00 
ffa03616:	10 32       	P2 = R0;
ffa03618:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900ee8 <_NetArpLut_age> */
ffa0361c:	09 e1 b0 0e 	P1.L = 0xeb0;		/* (3760)	P1=0xff900eb0 <_txbuf> */
ffa03620:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03622:	52 91       	P2 = [P2];
ffa03624:	95 ad       	P5 = [P2 + 0x18];
ffa03626:	45 30       	R0 = P5;
ffa03628:	ff e3 a4 ff 	CALL 0xffa03570 <_tcp_checksum_calc>;
ffa0362c:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa03630:	01 e8 00 00 	UNLINK;
ffa03634:	85 04       	(P5:5) = [SP++];
ffa03636:	10 00       	RTS;

ffa03638 <_tcp_checksum_check>:
ffa03638:	10 32       	P2 = R0;
ffa0363a:	78 05       	[--SP] = (R7:7);
ffa0363c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03640:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa03644:	ff e3 96 ff 	CALL 0xffa03570 <_tcp_checksum_calc>;
ffa03648:	0f 30       	R1 = R7;
ffa0364a:	c7 42       	R7 = R0.L (Z);
ffa0364c:	39 08       	CC = R1 == R7;
ffa0364e:	19 18       	IF CC JUMP 0xffa03680 <_tcp_checksum_check+0x48>;
ffa03650:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03654:	00 e1 40 05 	R0.L = 0x540;		/* (1344)	R0=0xff900540(-7338688) */
ffa03658:	ff e3 40 ee 	CALL 0xffa012d8 <_printf_hex>;
ffa0365c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900540(-7338688) */
ffa03660:	0f 30       	R1 = R7;
ffa03662:	00 e1 5c 05 	R0.L = 0x55c;		/* (1372)	R0=0xff90055c(-7338660) */
ffa03666:	ff e3 39 ee 	CALL 0xffa012d8 <_printf_hex>;
ffa0366a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90055c(-7338660) */
ffa0366e:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa03672:	ff e3 cd ed 	CALL 0xffa0120c <_printf_str>;
ffa03676:	01 e8 00 00 	UNLINK;
ffa0367a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0367c:	38 05       	(R7:7) = [SP++];
ffa0367e:	10 00       	RTS;
ffa03680:	01 e8 00 00 	UNLINK;
ffa03684:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03686:	38 05       	(R7:7) = [SP++];
ffa03688:	10 00       	RTS;
	...

ffa0368c <_tcp_packet_setup>:
ffa0368c:	ed 05       	[--SP] = (R7:5, P5:5);
ffa0368e:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03692:	29 32       	P5 = R1;
ffa03694:	7f 30       	R7 = FP;
ffa03696:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa03698:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0369a:	f0 bb       	[FP -0x4] = R0;
ffa0369c:	07 30       	R0 = R7;
ffa0369e:	2a 30       	R5 = R2;
ffa036a0:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa036a4:	ff e3 84 f6 	CALL 0xffa023ac <_eth_header_setup>;
ffa036a8:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa036ac:	68 99 00 00 
ffa036b0:	80 0c       	CC = R0 < 0x0;
ffa036b2:	14 18       	IF CC JUMP 0xffa036da <_tcp_packet_setup+0x4e>;
ffa036b4:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa036b6:	f0 b0       	[SP + 0xc] = R0;
ffa036b8:	15 30       	R2 = R5;
ffa036ba:	01 30       	R0 = R1;
ffa036bc:	0f 30       	R1 = R7;
ffa036be:	ff e3 3b f2 	CALL 0xffa01b34 <_ip_header_setup>;
ffa036c2:	b9 a2       	R1 = [FP + 0x28];
ffa036c4:	f1 b0       	[SP + 0xc] = R1;
ffa036c6:	f9 a2       	R1 = [FP + 0x2c];
ffa036c8:	31 b1       	[SP + 0x10] = R1;
ffa036ca:	72 43       	R2 = R6.B (Z);
ffa036cc:	0f 30       	R1 = R7;
ffa036ce:	ff e3 c5 f2 	CALL 0xffa01c58 <_tcp_header_setup>;
ffa036d2:	01 e8 00 00 	UNLINK;
ffa036d6:	ad 05       	(R7:5, P5:5) = [SP++];
ffa036d8:	10 00       	RTS;
ffa036da:	01 e8 00 00 	UNLINK;
ffa036de:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa036e0:	ad 05       	(R7:5, P5:5) = [SP++];
ffa036e2:	10 00       	RTS;

ffa036e4 <_tcp_burst>:
ffa036e4:	e3 05       	[--SP] = (R7:4, P5:3);
ffa036e6:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa036ea:	78 b2       	[FP + 0x24] = R0;
ffa036ec:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 */
ffa036f0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900eac <_txIdx> */
ffa036f4:	7a a2       	R2 = [FP + 0x24];
ffa036f6:	0b e1 d4 0f 	P3.L = 0xfd4;		/* (4052)	P3=0xff900fd4 <_g_httpHeaderLen> */
ffa036fa:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa036fe:	02 0d       	CC = R2 <= 0x0;
ffa03700:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa03704:	10 91 00 00 
ffa03708:	19 91       	R1 = [P3];
ffa0370a:	7e 18       	IF CC JUMP 0xffa03806 <_tcp_burst+0x122>;
ffa0370c:	41 50       	R1 = R1 + R0;
ffa0370e:	8f 09       	CC = R7 < R1 (IU);
ffa03710:	21 32       	P4 = R1;
ffa03712:	7a 10       	IF !CC JUMP 0xffa03806 <_tcp_burst+0x122>;
ffa03714:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa03716:	38 20       	JUMP.S 0xffa03786 <_tcp_burst+0xa2>;
ffa03718:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa0371a:	18 91       	R0 = [P3];
ffa0371c:	07 52       	R0 = R7 - R0;
ffa0371e:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa03722:	08 50       	R0 = R0 + R1;
ffa03724:	16 30       	R2 = R6;
ffa03726:	0d 30       	R1 = R5;
ffa03728:	ff e3 1a ef 	CALL 0xffa0155c <_memcpy_>;
ffa0372c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900eb0 <_txbuf> */
ffa03730:	09 e1 c0 0f 	P1.L = 0xfc0;		/* (4032)	P1=0xff900fc0 <_TcpSeqHttpStart> */
ffa03734:	08 91       	R0 = [P1];
ffa03736:	f7 51       	R7 = R7 + R6;
ffa03738:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd8 <_g_httpContentLen> */
ffa0373c:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03740:	07 50       	R0 = R7 + R0;
ffa03742:	10 93       	[P2] = R0;
ffa03744:	26 50       	R0 = R6 + R4;
ffa03746:	ff e3 5d ff 	CALL 0xffa03600 <_tcp_checksum_set>;
ffa0374a:	ff e3 b7 f2 	CALL 0xffa01cb8 <_bfin_EMAC_send_nocopy>;
ffa0374e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03752:	0a e1 c0 0e 	P2.L = 0xec0;		/* (3776)	P2=0xff900ec0 <_rxIdx> */
ffa03756:	10 95       	R0 = W[P2] (Z);
ffa03758:	10 32       	P2 = R0;
ffa0375a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900fc0 <_TcpSeqHttpStart> */
ffa0375e:	09 e1 c4 0e 	P1.L = 0xec4;		/* (3780)	P1=0xff900ec4 <_rxbuf> */
ffa03762:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa03764:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03766:	52 91       	P2 = [P2];
ffa03768:	90 a2       	R0 = [P2 + 0x28];
ffa0376a:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa0376c:	07 1c       	IF CC JUMP 0xffa0377a <_tcp_burst+0x96> (BP);
ffa0376e:	90 a2       	R0 = [P2 + 0x28];
ffa03770:	4d 30       	R1 = P5;
ffa03772:	7a a2       	R2 = [FP + 0x24];
ffa03774:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa03776:	11 50       	R0 = R1 + R2;
ffa03778:	a8 06       	IF !CC P5 = R0;
ffa0377a:	79 ae       	P1 = [FP + 0x24];
ffa0377c:	69 09       	CC = P1 <= P5;
ffa0377e:	45 18       	IF CC JUMP 0xffa03808 <_tcp_burst+0x124>;
ffa03780:	44 30       	R0 = P4;
ffa03782:	87 09       	CC = R7 < R0 (IU);
ffa03784:	42 10       	IF !CC JUMP 0xffa03808 <_tcp_burst+0x124>;
ffa03786:	44 30       	R0 = P4;
ffa03788:	b8 52       	R2 = R0 - R7;
ffa0378a:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa0378e:	0a 09       	CC = R2 <= R1;
ffa03790:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03792:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa03794:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900ec4 <_rxbuf> */
ffa03798:	08 06       	IF !CC R1 = R0;
ffa0379a:	09 e1 c0 0f 	P1.L = 0xfc0;		/* (4032)	P1=0xff900fc0 <_TcpSeqHttpStart> */
ffa0379e:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa037a2:	07 cc 10 4c 	R6 = MIN (R2, R0) || R0 = [P1] || NOP;
ffa037a6:	08 91 00 00 
ffa037aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ec0 <_rxIdx> */
ffa037ae:	07 50       	R0 = R7 + R0;
ffa037b0:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa037b4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900fc0 <_TcpSeqHttpStart> */
ffa037b8:	10 93       	[P2] = R0;
ffa037ba:	09 e1 bc 0f 	P1.L = 0xfbc;		/* (4028)	P1=0xff900fbc <_TcpSeqClient> */
ffa037be:	f1 b0       	[SP + 0xc] = R1;
ffa037c0:	30 b1       	[SP + 0x10] = R0;
ffa037c2:	08 91       	R0 = [P1];
ffa037c4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa037c8:	70 b1       	[SP + 0x14] = R0;
ffa037ca:	0a e1 a4 0e 	P2.L = 0xea4;		/* (3748)	P2=0xff900ea4 <_NetDestIP> */
ffa037ce:	4f 30       	R1 = FP;
ffa037d0:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R2 = [P2] || NOP;
ffa037d4:	12 91 00 00 
ffa037d8:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa037da:	ff e3 59 ff 	CALL 0xffa0368c <_tcp_packet_setup>;
ffa037de:	28 30       	R5 = R0;
ffa037e0:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa037e4:	00 0d       	CC = R0 <= 0x0;
ffa037e6:	ca 1b       	IF CC JUMP 0xffa0377a <_tcp_burst+0x96>;
ffa037e8:	18 91       	R0 = [P3];
ffa037ea:	38 0a       	CC = R0 <= R7 (IU);
ffa037ec:	96 1f       	IF CC JUMP 0xffa03718 <_tcp_burst+0x34> (BP);
ffa037ee:	38 53       	R4 = R0 - R7;
ffa037f0:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa037f4:	07 50       	R0 = R7 + R0;
ffa037f6:	0d 30       	R1 = R5;
ffa037f8:	14 30       	R2 = R4;
ffa037fa:	ff e3 b1 ee 	CALL 0xffa0155c <_memcpy_>;
ffa037fe:	65 51       	R5 = R5 + R4;
ffa03800:	a6 53       	R6 = R6 - R4;
ffa03802:	e7 51       	R7 = R7 + R4;
ffa03804:	8b 2f       	JUMP.S 0xffa0371a <_tcp_burst+0x36>;
ffa03806:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa03808:	01 e8 00 00 	UNLINK;
ffa0380c:	45 30       	R0 = P5;
ffa0380e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03810:	10 00       	RTS;
	...

ffa03814 <_tcp_rx>:
ffa03814:	e3 05       	[--SP] = (R7:4, P5:3);
ffa03816:	20 32       	P4 = R0;
ffa03818:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa0381c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03820:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa03822:	ff e3 55 f1 	CALL 0xffa01acc <_htons>;
ffa03826:	c0 42       	R0 = R0.L (Z);
ffa03828:	07 08       	CC = R7 == R0;
ffa0382a:	06 18       	IF CC JUMP 0xffa03836 <_tcp_rx+0x22>;
ffa0382c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0382e:	01 e8 00 00 	UNLINK;
ffa03832:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03834:	10 00       	RTS;
ffa03836:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa0383a:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa0383c:	08 08       	CC = R0 == R1;
ffa0383e:	f7 17       	IF !CC JUMP 0xffa0382c <_tcp_rx+0x18> (BP);
ffa03840:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa03844:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa03848:	ff e3 42 f1 	CALL 0xffa01acc <_htons>;
ffa0384c:	c0 42       	R0 = R0.L (Z);
ffa0384e:	07 08       	CC = R7 == R0;
ffa03850:	ee 17       	IF !CC JUMP 0xffa0382c <_tcp_rx+0x18> (BP);
ffa03852:	44 30       	R0 = P4;
ffa03854:	80 64       	R0 += 0x10;		/* ( 16) */
ffa03856:	ff e3 b5 f1 	CALL 0xffa01bc0 <_ip_header_checksum>;
ffa0385a:	40 43       	R0 = R0.B (Z);
ffa0385c:	00 0c       	CC = R0 == 0x0;
ffa0385e:	e7 1f       	IF CC JUMP 0xffa0382c <_tcp_rx+0x18> (BP);
ffa03860:	4c 30       	R1 = P4;
ffa03862:	41 64       	R1 += 0x8;		/* (  8) */
ffa03864:	e0 a1       	R0 = [P4 + 0x1c];
ffa03866:	ff e3 13 fc 	CALL 0xffa0308c <_ARP_lut_add>;
ffa0386a:	44 30       	R0 = P4;
ffa0386c:	ff e3 6a fe 	CALL 0xffa03540 <_tcp_length>;
ffa03870:	30 30       	R6 = R0;
ffa03872:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa03876:	0e 30       	R1 = R6;
ffa03878:	00 e1 6c 05 	R0.L = 0x56c;		/* (1388)	R0=0xff90056c(-7338644) */
ffa0387c:	ff e3 8a ed 	CALL 0xffa01390 <_printf_int>;
ffa03880:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90056c(-7338644) */
ffa03884:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa03888:	ff e3 c2 ec 	CALL 0xffa0120c <_printf_str>;
ffa0388c:	44 30       	R0 = P4;
ffa0388e:	0e 30       	R1 = R6;
ffa03890:	ff e3 d4 fe 	CALL 0xffa03638 <_tcp_checksum_check>;
ffa03894:	40 43       	R0 = R0.B (Z);
ffa03896:	00 0c       	CC = R0 == 0x0;
ffa03898:	ca 1b       	IF CC JUMP 0xffa0382c <_tcp_rx+0x18>;
ffa0389a:	00 00       	NOP;
ffa0389c:	00 00       	NOP;
ffa0389e:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa038a0:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa038a4:	48 43       	R0 = R1.B (Z);
ffa038a6:	10 08       	CC = R0 == R2;
ffa038a8:	f1 18       	IF CC JUMP 0xffa03a8a <_tcp_rx+0x276>;
ffa038aa:	10 0c       	CC = R0 == 0x2;
ffa038ac:	0a 19       	IF CC JUMP 0xffa03ac0 <_tcp_rx+0x2ac>;
ffa038ae:	48 43       	R0 = R1.B (Z);
ffa038b0:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa038b2:	08 08       	CC = R0 == R1;
ffa038b4:	85 18       	IF CC JUMP 0xffa039be <_tcp_rx+0x1aa>;
ffa038b6:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa038b8:	ab 10       	IF !CC JUMP 0xffa03a0e <_tcp_rx+0x1fa>;
ffa038ba:	00 00       	NOP;
ffa038bc:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900fd4 <_g_httpHeaderLen> */
ffa038c0:	0b e1 c4 0f 	P3.L = 0xfc4;		/* (4036)	P3=0xff900fc4 <_TcpState> */
ffa038c4:	00 00       	NOP;
ffa038c6:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa038ca:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa038cc:	38 10       	IF !CC JUMP 0xffa0393c <_tcp_rx+0x128>;
ffa038ce:	18 91       	R0 = [P3];
ffa038d0:	10 0c       	CC = R0 == 0x2;
ffa038d2:	ad 17       	IF !CC JUMP 0xffa0382c <_tcp_rx+0x18> (BP);
ffa038d4:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900000 <_l1_data_a>(-7340032) */
ffa038d8:	a0 a2       	R0 = [P4 + 0x28];
ffa038da:	04 e1 a4 0e 	R4.L = 0xea4;		/* (3748)	R4=0xff900ea4 <_NetDestIP>(-7336284) */
ffa038de:	a5 e5 30 00 	R5 = B[P4 + 0x30] (X);
ffa038e2:	ff e3 01 f1 	CALL 0xffa01ae4 <_htonl>;
ffa038e6:	14 32       	P2 = R4;
ffa038e8:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa038ec:	30 50       	R0 = R0 + R6;
ffa038ee:	0d e1 bc 0f 	P5.L = 0xfbc;		/* (4028)	P5=0xff900fbc <_TcpSeqClient> */
ffa038f2:	28 93       	[P5] = R0;
ffa038f4:	e0 a1       	R0 = [P4 + 0x1c];
ffa038f6:	10 93       	[P2] = R0;
ffa038f8:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900fc4 <_TcpState> */
ffa038fc:	e0 a2       	R0 = [P4 + 0x2c];
ffa038fe:	0b e1 c0 0f 	P3.L = 0xfc0;		/* (4032)	P3=0xff900fc0 <_TcpSeqHttpStart> */
ffa03902:	ff e3 f1 f0 	CALL 0xffa01ae4 <_htonl>;
ffa03906:	19 91       	R1 = [P3];
ffa03908:	c8 53       	R7 = R0 - R1;
ffa0390a:	a1 e4 31 00 	R1 = B[P4 + 0x31] (Z);
ffa0390e:	21 48       	CC = !BITTST (R1, 0x4);		/* bit  4 */
ffa03910:	1e 1d       	IF CC JUMP 0xffa03b4c <_tcp_rx+0x338> (BP);
ffa03912:	06 0c       	CC = R6 == 0x0;
ffa03914:	1c 15       	IF !CC JUMP 0xffa03b4c <_tcp_rx+0x338> (BP);
ffa03916:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea4 <_NetDestIP> */
ffa0391a:	0a e1 d4 0f 	P2.L = 0xfd4;		/* (4052)	P2=0xff900fd4 <_g_httpHeaderLen> */
ffa0391e:	10 91       	R0 = [P2];
ffa03920:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd4 <_g_httpHeaderLen> */
ffa03924:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa03928:	11 91       	R1 = [P2];
ffa0392a:	08 50       	R0 = R0 + R1;
ffa0392c:	07 08       	CC = R7 == R0;
ffa0392e:	46 18       	IF CC JUMP 0xffa039ba <_tcp_rx+0x1a6>;
ffa03930:	0f 30       	R1 = R7;
ffa03932:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03934:	ff e3 d8 fe 	CALL 0xffa036e4 <_tcp_burst>;
ffa03938:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0393a:	7a 2f       	JUMP.S 0xffa0382e <_tcp_rx+0x1a>;
ffa0393c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0393e:	1f 91       	R7 = [P3];
ffa03940:	07 08       	CC = R7 == R0;
ffa03942:	85 19       	IF CC JUMP 0xffa03c4c <_tcp_rx+0x438>;
ffa03944:	07 0c       	CC = R7 == 0x0;
ffa03946:	c4 17       	IF !CC JUMP 0xffa038ce <_tcp_rx+0xba> (BP);
ffa03948:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa0394c:	00 e1 e8 05 	R0.L = 0x5e8;		/* (1512)	R0=0xff9005e8(-7338520) */
ffa03950:	ff e3 5e ec 	CALL 0xffa0120c <_printf_str>;
ffa03954:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd8 <_g_httpContentLen> */
ffa03958:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_g_httpRxed> */
ffa0395c:	17 93       	[P2] = R7;
ffa0395e:	a0 a2       	R0 = [P4 + 0x28];
ffa03960:	ff e3 c2 f0 	CALL 0xffa01ae4 <_htonl>;
ffa03964:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fdc <_g_httpRxed> */
ffa03968:	0a e1 bc 0f 	P2.L = 0xfbc;		/* (4028)	P2=0xff900fbc <_TcpSeqClient> */
ffa0396c:	10 93       	[P2] = R0;
ffa0396e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fbc <_TcpSeqClient> */
ffa03972:	e2 a1       	R2 = [P4 + 0x1c];
ffa03974:	0a e1 a4 0e 	P2.L = 0xea4;		/* (3748)	P2=0xff900ea4 <_NetDestIP> */
ffa03978:	12 93       	[P2] = R2;
ffa0397a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea4 <_NetDestIP> */
ffa0397e:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03982:	0a e1 d0 0f 	P2.L = 0xfd0;		/* (4048)	P2=0xff900fd0 <_TcpClientPort> */
ffa03986:	11 97       	W[P2] = R1;
ffa03988:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa0398a:	f1 b0       	[SP + 0xc] = R1;
ffa0398c:	4f 30       	R1 = FP;
ffa0398e:	30 b1       	[SP + 0x10] = R0;
ffa03990:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03992:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa03996:	77 b1 00 00 
ffa0399a:	ff e3 79 fe 	CALL 0xffa0368c <_tcp_packet_setup>;
ffa0399e:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa039a2:	00 0d       	CC = R0 <= 0x0;
ffa039a4:	95 1b       	IF CC JUMP 0xffa038ce <_tcp_rx+0xba>;
ffa039a6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd0 <_TcpClientPort> */
ffa039aa:	0a e1 c4 0f 	P2.L = 0xfc4;		/* (4036)	P2=0xff900fc4 <_TcpState> */
ffa039ae:	17 93       	[P2] = R7;
ffa039b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa039b2:	ff e3 27 fe 	CALL 0xffa03600 <_tcp_checksum_set>;
ffa039b6:	ff e3 81 f1 	CALL 0xffa01cb8 <_bfin_EMAC_send_nocopy>;
ffa039ba:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa039bc:	39 2f       	JUMP.S 0xffa0382e <_tcp_rx+0x1a>;
ffa039be:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900fc0 <_TcpSeqHttpStart> */
ffa039c2:	0b e1 c4 0f 	P3.L = 0xfc4;		/* (4036)	P3=0xff900fc4 <_TcpState> */
ffa039c6:	18 91       	R0 = [P3];
ffa039c8:	08 0c       	CC = R0 == 0x1;
ffa039ca:	b9 17       	IF !CC JUMP 0xffa0393c <_tcp_rx+0x128> (BP);
ffa039cc:	e0 a2       	R0 = [P4 + 0x2c];
ffa039ce:	ff e3 8b f0 	CALL 0xffa01ae4 <_htonl>;
ffa039d2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc4 <_TcpState> */
ffa039d6:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa039da:	11 91       	R1 = [P2];
ffa039dc:	08 08       	CC = R0 == R1;
ffa039de:	42 19       	IF CC JUMP 0xffa03c62 <_tcp_rx+0x44e>;
ffa039e0:	00 00       	NOP;
ffa039e2:	00 00       	NOP;
ffa039e4:	00 00       	NOP;
ffa039e6:	e0 a2       	R0 = [P4 + 0x2c];
ffa039e8:	ff e3 7e f0 	CALL 0xffa01ae4 <_htonl>;
ffa039ec:	08 30       	R1 = R0;
ffa039ee:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa039f2:	00 e1 98 05 	R0.L = 0x598;		/* (1432)	R0=0xff900598(-7338600) */
ffa039f6:	ff e3 6f ed 	CALL 0xffa014d4 <_printf_ip>;
ffa039fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa039fc:	18 93       	[P3] = R0;
ffa039fe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03a02:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa03a06:	ff e3 03 ec 	CALL 0xffa0120c <_printf_str>;
ffa03a0a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03a0c:	11 2f       	JUMP.S 0xffa0382e <_tcp_rx+0x1a>;
ffa03a0e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03a12:	00 e1 c4 05 	R0.L = 0x5c4;		/* (1476)	R0=0xff9005c4(-7338556) */
ffa03a16:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900ea4 <_NetDestIP>(-7336284) */
ffa03a1a:	ff e3 f9 eb 	CALL 0xffa0120c <_printf_str>;
ffa03a1e:	04 e1 a4 0e 	R4.L = 0xea4;		/* (3748)	R4=0xff900ea4 <_NetDestIP>(-7336284) */
ffa03a22:	a0 a2       	R0 = [P4 + 0x28];
ffa03a24:	ff e3 60 f0 	CALL 0xffa01ae4 <_htonl>;
ffa03a28:	14 32       	P2 = R4;
ffa03a2a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fbc <_TcpSeqClient> */
ffa03a2e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900fc4 <_TcpState> */
ffa03a32:	0d e1 bc 0f 	P5.L = 0xfbc;		/* (4028)	P5=0xff900fbc <_TcpSeqClient> */
ffa03a36:	0b e1 c4 0f 	P3.L = 0xfc4;		/* (4036)	P3=0xff900fc4 <_TcpState> */
ffa03a3a:	28 93       	[P5] = R0;
ffa03a3c:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa03a40:	18 91 00 00 
ffa03a44:	e2 a1       	R2 = [P4 + 0x1c];
ffa03a46:	09 64       	R1 += 0x1;		/* (  1) */
ffa03a48:	10 0c       	CC = R0 == 0x2;
ffa03a4a:	12 93       	[P2] = R2;
ffa03a4c:	29 93       	[P5] = R1;
ffa03a4e:	03 18       	IF CC JUMP 0xffa03a54 <_tcp_rx+0x240>;
ffa03a50:	00 0c       	CC = R0 == 0x0;
ffa03a52:	c0 14       	IF !CC JUMP 0xffa03bd2 <_tcp_rx+0x3be> (BP);
ffa03a54:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa03a56:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03a5a:	f0 b0       	[SP + 0xc] = R0;
ffa03a5c:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03a60:	10 91       	R0 = [P2];
ffa03a62:	71 b1       	[SP + 0x14] = R1;
ffa03a64:	4f 30       	R1 = FP;
ffa03a66:	30 b1       	[SP + 0x10] = R0;
ffa03a68:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03a6a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a6c:	ff e3 10 fe 	CALL 0xffa0368c <_tcp_packet_setup>;
ffa03a70:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03a74:	00 0d       	CC = R0 <= 0x0;
ffa03a76:	ae 18       	IF CC JUMP 0xffa03bd2 <_tcp_rx+0x3be>;
ffa03a78:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa03a7a:	18 93       	[P3] = R0;
ffa03a7c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a7e:	ff e3 c1 fd 	CALL 0xffa03600 <_tcp_checksum_set>;
ffa03a82:	ff e3 1b f1 	CALL 0xffa01cb8 <_bfin_EMAC_send_nocopy>;
ffa03a86:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03a88:	d3 2e       	JUMP.S 0xffa0382e <_tcp_rx+0x1a>;
ffa03a8a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03a8e:	00 e1 80 05 	R0.L = 0x580;		/* (1408)	R0=0xff900580(-7338624) */
ffa03a92:	ff e3 bd eb 	CALL 0xffa0120c <_printf_str>;
ffa03a96:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03a9a:	0a e1 c4 0f 	P2.L = 0xfc4;		/* (4036)	P2=0xff900fc4 <_TcpState> */
ffa03a9e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03aa0:	17 93       	[P2] = R7;
ffa03aa2:	a0 a2       	R0 = [P4 + 0x28];
ffa03aa4:	ff e3 20 f0 	CALL 0xffa01ae4 <_htonl>;
ffa03aa8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc4 <_TcpState> */
ffa03aac:	0a e1 bc 0f 	P2.L = 0xfbc;		/* (4028)	P2=0xff900fbc <_TcpSeqClient> */
ffa03ab0:	10 93       	[P2] = R0;
ffa03ab2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fbc <_TcpSeqClient> */
ffa03ab6:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_g_httpRxed> */
ffa03aba:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03abc:	17 93       	[P2] = R7;
ffa03abe:	b8 2e       	JUMP.S 0xffa0382e <_tcp_rx+0x1a>;
ffa03ac0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03ac4:	00 e1 8c 05 	R0.L = 0x58c;		/* (1420)	R0=0xff90058c(-7338612) */
ffa03ac8:	ff e3 a2 eb 	CALL 0xffa0120c <_printf_str>;
ffa03acc:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fbc <_TcpSeqClient> */
ffa03ad0:	a0 a2       	R0 = [P4 + 0x28];
ffa03ad2:	ff e3 09 f0 	CALL 0xffa01ae4 <_htonl>;
ffa03ad6:	0d e1 bc 0f 	P5.L = 0xfbc;		/* (4028)	P5=0xff900fbc <_TcpSeqClient> */
ffa03ada:	28 93       	[P5] = R0;
ffa03adc:	44 30       	R0 = P4;
ffa03ade:	ff e3 31 fd 	CALL 0xffa03540 <_tcp_length>;
ffa03ae2:	29 91       	R1 = [P5];
ffa03ae4:	09 64       	R1 += 0x1;		/* (  1) */
ffa03ae6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fdc <_g_httpRxed> */
ffa03aea:	08 50       	R0 = R0 + R1;
ffa03aec:	0a e1 d0 0f 	P2.L = 0xfd0;		/* (4048)	P2=0xff900fd0 <_TcpClientPort> */
ffa03af0:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03af4:	11 97       	W[P2] = R1;
ffa03af6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd0 <_TcpClientPort> */
ffa03afa:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa03afe:	28 93 00 00 
ffa03b02:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_g_httpRxed> */
ffa03b06:	11 93       	[P2] = R1;
ffa03b08:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fdc <_g_httpRxed> */
ffa03b0c:	e2 a1       	R2 = [P4 + 0x1c];
ffa03b0e:	0a e1 a4 0e 	P2.L = 0xea4;		/* (3748)	P2=0xff900ea4 <_NetDestIP> */
ffa03b12:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa03b14:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fbc <_TcpSeqClient> */
ffa03b18:	12 93       	[P2] = R2;
ffa03b1a:	0d e1 b8 0f 	P5.L = 0xfb8;		/* (4024)	P5=0xff900fb8 <_TcpSeqHost> */
ffa03b1e:	f1 b0       	[SP + 0xc] = R1;
ffa03b20:	29 91       	R1 = [P5];
ffa03b22:	31 b1       	[SP + 0x10] = R1;
ffa03b24:	4f 30       	R1 = FP;
ffa03b26:	70 b1       	[SP + 0x14] = R0;
ffa03b28:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03b2a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b2c:	ff e3 b0 fd 	CALL 0xffa0368c <_tcp_packet_setup>;
ffa03b30:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03b34:	00 0d       	CC = R0 <= 0x0;
ffa03b36:	93 18       	IF CC JUMP 0xffa03c5c <_tcp_rx+0x448>;
ffa03b38:	28 91       	R0 = [P5];
ffa03b3a:	08 64       	R0 += 0x1;		/* (  1) */
ffa03b3c:	28 93       	[P5] = R0;
ffa03b3e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03b40:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ea4 <_NetDestIP> */
ffa03b44:	0a e1 c4 0f 	P2.L = 0xfc4;		/* (4036)	P2=0xff900fc4 <_TcpState> */
ffa03b48:	10 93       	[P2] = R0;
ffa03b4a:	33 2f       	JUMP.S 0xffa039b0 <_tcp_rx+0x19c>;
ffa03b4c:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa03b50:	28 54       	R0 = R0 & R5;
ffa03b52:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa03b54:	10 4d       	R0 >>>= 0x2;
ffa03b56:	54 30       	R2 = P4;
ffa03b58:	19 48       	CC = !BITTST (R1, 0x3);		/* bit  3 */
ffa03b5a:	02 50       	R0 = R2 + R0;
ffa03b5c:	5d 1c       	IF CC JUMP 0xffa03c16 <_tcp_rx+0x402> (BP);
ffa03b5e:	0e 30       	R1 = R6;
ffa03b60:	00 e3 16 05 	CALL 0xffa0458c <_httpCollate>;
ffa03b64:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fb8 <_TcpSeqHost> */
ffa03b68:	18 91       	R0 = [P3];
ffa03b6a:	07 50       	R0 = R7 + R0;
ffa03b6c:	0d e1 b8 0f 	P5.L = 0xfb8;		/* (4024)	P5=0xff900fb8 <_TcpSeqHost> */
ffa03b70:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900eec <_NetArpLut> */
ffa03b74:	28 93       	[P5] = R0;
ffa03b76:	0c e1 dc 0f 	P4.L = 0xfdc;		/* (4060)	P4=0xff900fdc <_g_httpRxed> */
ffa03b7a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03b7c:	80 4f       	R0 <<= 0x10;
ffa03b7e:	21 91       	R1 = [P4];
ffa03b80:	00 e3 dc 02 	CALL 0xffa04138 <_httpResp>;
ffa03b84:	00 0c       	CC = R0 == 0x0;
ffa03b86:	22 1c       	IF CC JUMP 0xffa03bca <_tcp_rx+0x3b6> (BP);
ffa03b88:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc4 <_TcpState> */
ffa03b8c:	28 91       	R0 = [P5];
ffa03b8e:	0a e1 c0 0f 	P2.L = 0xfc0;		/* (4032)	P2=0xff900fc0 <_TcpSeqHttpStart> */
ffa03b92:	10 93       	[P2] = R0;
ffa03b94:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fc0 <_TcpSeqHttpStart> */
ffa03b98:	0a e1 d4 0f 	P2.L = 0xfd4;		/* (4052)	P2=0xff900fd4 <_g_httpHeaderLen> */
ffa03b9c:	11 91       	R1 = [P2];
ffa03b9e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd4 <_g_httpHeaderLen> */
ffa03ba2:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa03ba6:	10 91       	R0 = [P2];
ffa03ba8:	41 50       	R1 = R1 + R0;
ffa03baa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03bae:	00 e1 04 06 	R0.L = 0x604;		/* (1540)	R0=0xff900604(-7338492) */
ffa03bb2:	ff e3 ef eb 	CALL 0xffa01390 <_printf_int>;
ffa03bb6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900604(-7338492) */
ffa03bba:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa03bbe:	ff e3 27 eb 	CALL 0xffa0120c <_printf_str>;
ffa03bc2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03bc4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03bc6:	ff e3 8f fd 	CALL 0xffa036e4 <_tcp_burst>;
ffa03bca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03bcc:	20 93       	[P4] = R0;
ffa03bce:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03bd0:	2f 2e       	JUMP.S 0xffa0382e <_tcp_rx+0x1a>;
ffa03bd2:	18 91       	R0 = [P3];
ffa03bd4:	18 0c       	CC = R0 == 0x3;
ffa03bd6:	77 16       	IF !CC JUMP 0xffa038c4 <_tcp_rx+0xb0> (BP);
ffa03bd8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd8 <_g_httpContentLen> */
ffa03bdc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03bde:	0a e1 dc 0f 	P2.L = 0xfdc;		/* (4060)	P2=0xff900fdc <_g_httpRxed> */
ffa03be2:	10 93       	[P2] = R0;
ffa03be4:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03be6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fdc <_g_httpRxed> */
ffa03bea:	f0 b0       	[SP + 0xc] = R0;
ffa03bec:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03bf0:	10 91       	R0 = [P2];
ffa03bf2:	14 32       	P2 = R4;
ffa03bf4:	30 b1       	[SP + 0x10] = R0;
ffa03bf6:	28 91       	R0 = [P5];
ffa03bf8:	70 b1       	[SP + 0x14] = R0;
ffa03bfa:	4f 30       	R1 = FP;
ffa03bfc:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03c00:	12 91 00 00 
ffa03c04:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03c06:	ff e3 43 fd 	CALL 0xffa0368c <_tcp_packet_setup>;
ffa03c0a:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03c0e:	00 0d       	CC = R0 <= 0x0;
ffa03c10:	5a 1a       	IF CC JUMP 0xffa038c4 <_tcp_rx+0xb0>;
ffa03c12:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03c14:	96 2f       	JUMP.S 0xffa03b40 <_tcp_rx+0x32c>;
ffa03c16:	0e 30       	R1 = R6;
ffa03c18:	00 e3 ba 04 	CALL 0xffa0458c <_httpCollate>;
ffa03c1c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03c1e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03c22:	f0 b0       	[SP + 0xc] = R0;
ffa03c24:	0a e1 b8 0f 	P2.L = 0xfb8;		/* (4024)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03c28:	10 91       	R0 = [P2];
ffa03c2a:	14 32       	P2 = R4;
ffa03c2c:	30 b1       	[SP + 0x10] = R0;
ffa03c2e:	28 91       	R0 = [P5];
ffa03c30:	70 b1       	[SP + 0x14] = R0;
ffa03c32:	4f 30       	R1 = FP;
ffa03c34:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03c38:	12 91 00 00 
ffa03c3c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03c3e:	ff e3 27 fd 	CALL 0xffa0368c <_tcp_packet_setup>;
ffa03c42:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03c46:	00 0d       	CC = R0 <= 0x0;
ffa03c48:	b4 16       	IF !CC JUMP 0xffa039b0 <_tcp_rx+0x19c> (BP);
ffa03c4a:	f1 2d       	JUMP.S 0xffa0382c <_tcp_rx+0x18>;
ffa03c4c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa03c50:	00 e1 d4 05 	R0.L = 0x5d4;		/* (1492)	R0=0xff9005d4(-7338540) */
ffa03c54:	ff e3 dc ea 	CALL 0xffa0120c <_printf_str>;
ffa03c58:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03c5a:	ea 2d       	JUMP.S 0xffa0382e <_tcp_rx+0x1a>;
ffa03c5c:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03c60:	27 2e       	JUMP.S 0xffa038ae <_tcp_rx+0x9a>;
ffa03c62:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03c64:	18 93       	[P3] = R0;
ffa03c66:	a0 a2       	R0 = [P4 + 0x28];
ffa03c68:	ff e3 3e ef 	CALL 0xffa01ae4 <_htonl>;
ffa03c6c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fb8 <_TcpSeqHost> */
ffa03c70:	0a e1 bc 0f 	P2.L = 0xfbc;		/* (4028)	P2=0xff900fbc <_TcpSeqClient> */
ffa03c74:	10 93       	[P2] = R0;
ffa03c76:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa03c7a:	00 e1 b4 05 	R0.L = 0x5b4;		/* (1460)	R0=0xff9005b4(-7338572) */
ffa03c7e:	ff e3 c7 ea 	CALL 0xffa0120c <_printf_str>;
ffa03c82:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03c84:	d5 2d       	JUMP.S 0xffa0382e <_tcp_rx+0x1a>;
	...

ffa03c88 <_htmlForm>:
ffa03c88:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03c8c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa03c90:	02 e1 20 06 	R2.L = 0x620;		/* (1568)	R2=0xff900620(-7338464) */
ffa03c94:	01 e8 00 00 	UNLINK;
ffa03c98:	ff e2 92 ec 	JUMP.L 0xffa015bc <_strcpy_>;

ffa03c9c <_htmlDiv>:
ffa03c9c:	12 43       	R2 = R2.B (X);
ffa03c9e:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa03ca2:	1a 08       	CC = R2 == R3;
ffa03ca4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03ca8:	09 18       	IF CC JUMP 0xffa03cba <_htmlDiv+0x1e>;
ffa03caa:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900620(-7338464) */
ffa03cae:	02 e1 74 06 	R2.L = 0x674;		/* (1652)	R2=0xff900674(-7338380) */
ffa03cb2:	01 e8 00 00 	UNLINK;
ffa03cb6:	ff e2 83 ec 	JUMP.L 0xffa015bc <_strcpy_>;
ffa03cba:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900674(-7338380) */
ffa03cbe:	02 e1 40 06 	R2.L = 0x640;		/* (1600)	R2=0xff900640(-7338432) */
ffa03cc2:	01 e8 00 00 	UNLINK;
ffa03cc6:	ff e2 7b ec 	JUMP.L 0xffa015bc <_strcpy_>;
	...

ffa03ccc <_html404>:
ffa03ccc:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03cd0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03cd2:	4f 30       	R1 = FP;
ffa03cd4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900640(-7338432) */
ffa03cd8:	f0 bb       	[FP -0x4] = R0;
ffa03cda:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03cdc:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03ce0:	02 e1 a8 06 	R2.L = 0x6a8;		/* (1704)	R2=0xff9006a8(-7338328) */
ffa03ce4:	ff e3 6c ec 	CALL 0xffa015bc <_strcpy_>;
ffa03ce8:	f0 b9       	R0 = [FP -0x4];
ffa03cea:	01 e8 00 00 	UNLINK;
ffa03cee:	10 00       	RTS;

ffa03cf0 <_htmlCursorOption>:
ffa03cf0:	68 05       	[--SP] = (R7:5);
ffa03cf2:	2a 30       	R5 = R2;
ffa03cf4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006a8(-7338328) */
ffa03cf8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03cfc:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa03d00:	3f a2 00 00 
ffa03d04:	02 e1 c4 06 	R2.L = 0x6c4;		/* (1732)	R2=0xff9006c4(-7338300) */
ffa03d08:	ff e3 5a ec 	CALL 0xffa015bc <_strcpy_>;
ffa03d0c:	0e 30       	R1 = R6;
ffa03d0e:	15 30       	R2 = R5;
ffa03d10:	ff e3 bc ed 	CALL 0xffa01888 <_strprintf_int>;
ffa03d14:	3d 08       	CC = R5 == R7;
ffa03d16:	16 18       	IF CC JUMP 0xffa03d42 <_htmlCursorOption+0x52>;
ffa03d18:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c4(-7338300) */
ffa03d1c:	0e 30       	R1 = R6;
ffa03d1e:	02 e1 ec 06 	R2.L = 0x6ec;		/* (1772)	R2=0xff9006ec(-7338260) */
ffa03d22:	ff e3 4d ec 	CALL 0xffa015bc <_strcpy_>;
ffa03d26:	0e 30       	R1 = R6;
ffa03d28:	15 30       	R2 = R5;
ffa03d2a:	ff e3 af ed 	CALL 0xffa01888 <_strprintf_int>;
ffa03d2e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006ec(-7338260) */
ffa03d32:	01 e8 00 00 	UNLINK;
ffa03d36:	0e 30       	R1 = R6;
ffa03d38:	02 e1 f0 06 	R2.L = 0x6f0;		/* (1776)	R2=0xff9006f0(-7338256) */
ffa03d3c:	28 05       	(R7:5) = [SP++];
ffa03d3e:	ff e2 3f ec 	JUMP.L 0xffa015bc <_strcpy_>;
ffa03d42:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006f0(-7338256) */
ffa03d46:	0e 30       	R1 = R6;
ffa03d48:	02 e1 d4 06 	R2.L = 0x6d4;		/* (1748)	R2=0xff9006d4(-7338284) */
ffa03d4c:	ff e3 38 ec 	CALL 0xffa015bc <_strcpy_>;
ffa03d50:	e4 2f       	JUMP.S 0xffa03d18 <_htmlCursorOption+0x28>;
	...

ffa03d54 <_htmlCursorSelect>:
ffa03d54:	60 05       	[--SP] = (R7:4);
ffa03d56:	3a 30       	R7 = R2;
ffa03d58:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006d4(-7338284) */
ffa03d5c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03d60:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa03d64:	7e a2 00 00 
ffa03d68:	02 e1 fc 06 	R2.L = 0x6fc;		/* (1788)	R2=0xff9006fc(-7338244) */
ffa03d6c:	bc a2       	R4 = [FP + 0x28];
ffa03d6e:	ff e3 27 ec 	CALL 0xffa015bc <_strcpy_>;
ffa03d72:	17 30       	R2 = R7;
ffa03d74:	0d 30       	R1 = R5;
ffa03d76:	ff e3 23 ec 	CALL 0xffa015bc <_strcpy_>;
ffa03d7a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006fc(-7338244) */
ffa03d7e:	0d 30       	R1 = R5;
ffa03d80:	02 e1 08 07 	R2.L = 0x708;		/* (1800)	R2=0xff900708(-7338232) */
ffa03d84:	ff e3 1c ec 	CALL 0xffa015bc <_strcpy_>;
ffa03d88:	0d 30       	R1 = R5;
ffa03d8a:	16 30       	R2 = R6;
ffa03d8c:	ff e3 18 ec 	CALL 0xffa015bc <_strcpy_>;
ffa03d90:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900708(-7338232) */
ffa03d94:	0d 30       	R1 = R5;
ffa03d96:	02 e1 24 07 	R2.L = 0x724;		/* (1828)	R2=0xff900724(-7338204) */
ffa03d9a:	ff e3 11 ec 	CALL 0xffa015bc <_strcpy_>;
ffa03d9e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03da0:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa03da4:	f4 b0 00 00 
ffa03da8:	17 30       	R2 = R7;
ffa03daa:	ff e3 a3 ff 	CALL 0xffa03cf0 <_htmlCursorOption>;
ffa03dae:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03db0:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03db2:	0f 08       	CC = R7 == R1;
ffa03db4:	f6 17       	IF !CC JUMP 0xffa03da0 <_htmlCursorSelect+0x4c> (BP);
ffa03db6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900724(-7338204) */
ffa03dba:	01 e8 00 00 	UNLINK;
ffa03dbe:	0d 30       	R1 = R5;
ffa03dc0:	02 e1 28 07 	R2.L = 0x728;		/* (1832)	R2=0xff900728(-7338200) */
ffa03dc4:	20 05       	(R7:4) = [SP++];
ffa03dc6:	ff e2 fb eb 	JUMP.L 0xffa015bc <_strcpy_>;
	...

ffa03dcc <_htmlDefault>:
ffa03dcc:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03dce:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03dd2:	77 30       	R6 = FP;
ffa03dd4:	e6 67       	R6 += -0x4;		/* ( -4) */
ffa03dd6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03dd8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900728(-7338200) */
ffa03ddc:	f0 bb       	[FP -0x4] = R0;
ffa03dde:	0e 30       	R1 = R6;
ffa03de0:	02 e1 40 07 	R2.L = 0x740;		/* (1856)	R2=0xff900740(-7338176) */
ffa03de4:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03de8:	ff e3 ea eb 	CALL 0xffa015bc <_strcpy_>;
ffa03dec:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03df0:	0e 30       	R1 = R6;
ffa03df2:	ff e3 55 ff 	CALL 0xffa03c9c <_htmlDiv>;
ffa03df6:	0e 30       	R1 = R6;
ffa03df8:	ff e3 48 ff 	CALL 0xffa03c88 <_htmlForm>;
ffa03dfc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03e00:	0e 30       	R1 = R6;
ffa03e02:	02 e1 90 07 	R2.L = 0x790;		/* (1936)	R2=0xff900790(-7338096) */
ffa03e06:	ff e3 db eb 	CALL 0xffa015bc <_strcpy_>;
ffa03e0a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fbc <_TcpSeqClient> */
ffa03e0e:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_g_streamEnabled> */
ffa03e12:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03e16:	10 99 00 00 
ffa03e1a:	00 0c       	CC = R0 == 0x0;
ffa03e1c:	2c 1d       	IF CC JUMP 0xffa04074 <_htmlDefault+0x2a8> (BP);
ffa03e1e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900790(-7338096) */
ffa03e22:	01 30       	R0 = R1;
ffa03e24:	02 e1 e0 07 	R2.L = 0x7e0;		/* (2016)	R2=0xff9007e0(-7338016) */
ffa03e28:	0e 30       	R1 = R6;
ffa03e2a:	ff e3 c9 eb 	CALL 0xffa015bc <_strcpy_>;
ffa03e2e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007e0(-7338016) */
ffa03e32:	0e 30       	R1 = R6;
ffa03e34:	02 e1 f8 07 	R2.L = 0x7f8;		/* (2040)	R2=0xff9007f8(-7337992) */
ffa03e38:	ff e3 c2 eb 	CALL 0xffa015bc <_strcpy_>;
ffa03e3c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03e40:	0e 30       	R1 = R6;
ffa03e42:	ff e3 2d ff 	CALL 0xffa03c9c <_htmlDiv>;
ffa03e46:	0e 30       	R1 = R6;
ffa03e48:	ff e3 20 ff 	CALL 0xffa03c88 <_htmlForm>;
ffa03e4c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03e50:	0e 30       	R1 = R6;
ffa03e52:	02 e1 0c 08 	R2.L = 0x80c;		/* (2060)	R2=0xff90080c(-7337972) */
ffa03e56:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900fb8 <_TcpSeqHost> */
ffa03e5a:	ff e3 b1 eb 	CALL 0xffa015bc <_strcpy_>;
ffa03e5e:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03e60:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa03e62:	0d e1 e4 0e 	P5.L = 0xee4;		/* (3812)	P5=0xff900ee4 <_NetDataDestIP> */
ffa03e66:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90080c(-7337972) */
ffa03e6a:	0e 30       	R1 = R6;
ffa03e6c:	02 e1 28 08 	R2.L = 0x828;		/* (2088)	R2=0xff900828(-7337944) */
ffa03e70:	ff e3 a6 eb 	CALL 0xffa015bc <_strcpy_>;
ffa03e74:	17 30       	R2 = R7;
ffa03e76:	0e 30       	R1 = R6;
ffa03e78:	ff e3 08 ed 	CALL 0xffa01888 <_strprintf_int>;
ffa03e7c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900828(-7337944) */
ffa03e80:	0e 30       	R1 = R6;
ffa03e82:	02 e1 44 08 	R2.L = 0x844;		/* (2116)	R2=0xff900844(-7337916) */
ffa03e86:	ff e3 9b eb 	CALL 0xffa015bc <_strcpy_>;
ffa03e8a:	2a 91       	R2 = [P5];
ffa03e8c:	6a 40       	R2 >>= R5;
ffa03e8e:	52 43       	R2 = R2.B (Z);
ffa03e90:	0e 30       	R1 = R6;
ffa03e92:	ff e3 fb ec 	CALL 0xffa01888 <_strprintf_int>;
ffa03e96:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900844(-7337916) */
ffa03e9a:	0e 30       	R1 = R6;
ffa03e9c:	02 e1 58 08 	R2.L = 0x858;		/* (2136)	R2=0xff900858(-7337896) */
ffa03ea0:	ff e3 8e eb 	CALL 0xffa015bc <_strcpy_>;
ffa03ea4:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03ea6:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03ea8:	0f 08       	CC = R7 == R1;
ffa03eaa:	45 64       	R5 += 0x8;		/* (  8) */
ffa03eac:	dd 17       	IF !CC JUMP 0xffa03e66 <_htmlDefault+0x9a> (BP);
ffa03eae:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900858(-7337896) */
ffa03eb2:	0e 30       	R1 = R6;
ffa03eb4:	02 e1 60 08 	R2.L = 0x860;		/* (2144)	R2=0xff900860(-7337888) */
ffa03eb8:	ff e3 82 eb 	CALL 0xffa015bc <_strcpy_>;
ffa03ebc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900860(-7337888) */
ffa03ec0:	0e 30       	R1 = R6;
ffa03ec2:	02 e1 f8 07 	R2.L = 0x7f8;		/* (2040)	R2=0xff9007f8(-7337992) */
ffa03ec6:	ff e3 7b eb 	CALL 0xffa015bc <_strcpy_>;
ffa03eca:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03ece:	0e 30       	R1 = R6;
ffa03ed0:	ff e3 e6 fe 	CALL 0xffa03c9c <_htmlDiv>;
ffa03ed4:	0e 30       	R1 = R6;
ffa03ed6:	ff e3 d9 fe 	CALL 0xffa03c88 <_htmlForm>;
ffa03eda:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03ede:	0e 30       	R1 = R6;
ffa03ee0:	02 e1 84 08 	R2.L = 0x884;		/* (2180)	R2=0xff900884(-7337852) */
ffa03ee4:	ff e3 6c eb 	CALL 0xffa015bc <_strcpy_>;
ffa03ee8:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c34 */
ffa03eec:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03ef0:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03ef4:	10 99 00 00 
ffa03ef8:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03efa:	c6 1c       	IF CC JUMP 0xffa04086 <_htmlDefault+0x2ba> (BP);
ffa03efc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900884(-7337852) */
ffa03f00:	01 30       	R0 = R1;
ffa03f02:	02 e1 ec 07 	R2.L = 0x7ec;		/* (2028)	R2=0xff9007ec(-7338004) */
ffa03f06:	0e 30       	R1 = R6;
ffa03f08:	ff e3 5a eb 	CALL 0xffa015bc <_strcpy_>;
ffa03f0c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007ec(-7338004) */
ffa03f10:	0e 30       	R1 = R6;
ffa03f12:	02 e1 f8 07 	R2.L = 0x7f8;		/* (2040)	R2=0xff9007f8(-7337992) */
ffa03f16:	ff e3 53 eb 	CALL 0xffa015bc <_strcpy_>;
ffa03f1a:	0e 30       	R1 = R6;
ffa03f1c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03f20:	ff e3 be fe 	CALL 0xffa03c9c <_htmlDiv>;
ffa03f24:	0e 30       	R1 = R6;
ffa03f26:	ff e3 b1 fe 	CALL 0xffa03c88 <_htmlForm>;
ffa03f2a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03f2e:	0e 30       	R1 = R6;
ffa03f30:	02 e1 c4 08 	R2.L = 0x8c4;		/* (2244)	R2=0xff9008c4(-7337788) */
ffa03f34:	ff e3 44 eb 	CALL 0xffa015bc <_strcpy_>;
ffa03f38:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa03f3c:	01 e1 f4 08 	R1.L = 0x8f4;		/* (2292)	R1=0xff9008f4(-7337740) */
ffa03f40:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008c4(-7337788) */
ffa03f44:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa03f48:	f1 b0 00 00 
ffa03f4c:	02 e1 e8 08 	R2.L = 0x8e8;		/* (2280)	R2=0xff9008e8(-7337752) */
ffa03f50:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03f54:	37 b1 00 00 
ffa03f58:	ff e3 fe fe 	CALL 0xffa03d54 <_htmlCursorSelect>;
ffa03f5c:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008f4(-7337740) */
ffa03f60:	01 e1 0c 09 	R1.L = 0x90c;		/* (2316)	R1=0xff90090c(-7337716) */
ffa03f64:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008e8(-7337752) */
ffa03f68:	f1 b0       	[SP + 0xc] = R1;
ffa03f6a:	02 e1 00 09 	R2.L = 0x900;		/* (2304)	R2=0xff900900(-7337728) */
ffa03f6e:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03f72:	37 b1 00 00 
ffa03f76:	ff e3 ef fe 	CALL 0xffa03d54 <_htmlCursorSelect>;
ffa03f7a:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff90090c(-7337716) */
ffa03f7e:	01 e1 24 09 	R1.L = 0x924;		/* (2340)	R1=0xff900924(-7337692) */
ffa03f82:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900900(-7337728) */
ffa03f86:	f1 b0       	[SP + 0xc] = R1;
ffa03f88:	02 e1 18 09 	R2.L = 0x918;		/* (2328)	R2=0xff900918(-7337704) */
ffa03f8c:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03f90:	37 b1 00 00 
ffa03f94:	ff e3 e0 fe 	CALL 0xffa03d54 <_htmlCursorSelect>;
ffa03f98:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900924(-7337692) */
ffa03f9c:	01 e1 38 09 	R1.L = 0x938;		/* (2360)	R1=0xff900938(-7337672) */
ffa03fa0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900918(-7337704) */
ffa03fa4:	f1 b0       	[SP + 0xc] = R1;
ffa03fa6:	02 e1 30 09 	R2.L = 0x930;		/* (2352)	R2=0xff900930(-7337680) */
ffa03faa:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03fae:	37 b1 00 00 
ffa03fb2:	ff e3 d1 fe 	CALL 0xffa03d54 <_htmlCursorSelect>;
ffa03fb6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900930(-7337680) */
ffa03fba:	0e 30       	R1 = R6;
ffa03fbc:	02 e1 44 09 	R2.L = 0x944;		/* (2372)	R2=0xff900944(-7337660) */
ffa03fc0:	ff e3 fe ea 	CALL 0xffa015bc <_strcpy_>;
ffa03fc4:	0e 30       	R1 = R6;
ffa03fc6:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03fca:	ff e3 69 fe 	CALL 0xffa03c9c <_htmlDiv>;
ffa03fce:	0e 30       	R1 = R6;
ffa03fd0:	ff e3 5c fe 	CALL 0xffa03c88 <_htmlForm>;
ffa03fd4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03fd8:	0e 30       	R1 = R6;
ffa03fda:	02 e1 80 09 	R2.L = 0x980;		/* (2432)	R2=0xff900980(-7337600) */
ffa03fde:	ff e3 ef ea 	CALL 0xffa015bc <_strcpy_>;
ffa03fe2:	0e 30       	R1 = R6;
ffa03fe4:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03fe8:	ff e3 5a fe 	CALL 0xffa03c9c <_htmlDiv>;
ffa03fec:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03ff0:	0e 30       	R1 = R6;
ffa03ff2:	02 e1 d8 09 	R2.L = 0x9d8;		/* (2520)	R2=0xff9009d8(-7337512) */
ffa03ff6:	ff e3 e3 ea 	CALL 0xffa015bc <_strcpy_>;
ffa03ffa:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009d8(-7337512) */
ffa03ffe:	0e 30       	R1 = R6;
ffa04000:	02 e1 00 0a 	R2.L = 0xa00;		/* (2560)	R2=0xff900a00(-7337472) */
ffa04004:	ff e3 dc ea 	CALL 0xffa015bc <_strcpy_>;
ffa04008:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a00(-7337472) */
ffa0400c:	0e 30       	R1 = R6;
ffa0400e:	02 e1 f8 07 	R2.L = 0x7f8;		/* (2040)	R2=0xff9007f8(-7337992) */
ffa04012:	ff e3 d5 ea 	CALL 0xffa015bc <_strcpy_>;
ffa04016:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007f8(-7337992) */
ffa0401a:	0e 30       	R1 = R6;
ffa0401c:	02 e1 48 0a 	R2.L = 0xa48;		/* (2632)	R2=0xff900a48(-7337400) */
ffa04020:	ff e3 ce ea 	CALL 0xffa015bc <_strcpy_>;
ffa04024:	0e 30       	R1 = R6;
ffa04026:	22 e1 75 ff 	R2 = -0x8b (X);		/*		R2=0xffffff75(-139) */
ffa0402a:	ff e3 2f ec 	CALL 0xffa01888 <_strprintf_int>;
ffa0402e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ff75(-7274635) */
ffa04032:	0e 30       	R1 = R6;
ffa04034:	02 e1 b0 00 	R2.L = 0xb0;		/* (176)	R2=0xff9000b0(-7339856) */
ffa04038:	ff e3 c2 ea 	CALL 0xffa015bc <_strcpy_>;
ffa0403c:	0e 30       	R1 = R6;
ffa0403e:	92 62       	R2 = -0x2e (X);		/*		R2=0xffffffd2(-46) */
ffa04040:	ff e3 24 ec 	CALL 0xffa01888 <_strprintf_int>;
ffa04044:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ffd2(-7274542) */
ffa04048:	0e 30       	R1 = R6;
ffa0404a:	02 e1 88 00 	R2.L = 0x88;		/* (136)	R2=0xff900088(-7339896) */
ffa0404e:	ff e3 b7 ea 	CALL 0xffa015bc <_strcpy_>;
ffa04052:	0e 30       	R1 = R6;
ffa04054:	22 e1 d0 fd 	R2 = -0x230 (X);		/*		R2=0xfffffdd0(-560) */
ffa04058:	ff e3 18 ec 	CALL 0xffa01888 <_strprintf_int>;
ffa0405c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90fdd0(-7275056) */
ffa04060:	0e 30       	R1 = R6;
ffa04062:	02 e1 54 0a 	R2.L = 0xa54;		/* (2644)	R2=0xff900a54(-7337388) */
ffa04066:	ff e3 ab ea 	CALL 0xffa015bc <_strcpy_>;
ffa0406a:	f0 b9       	R0 = [FP -0x4];
ffa0406c:	01 e8 00 00 	UNLINK;
ffa04070:	ad 05       	(R7:5, P5:5) = [SP++];
ffa04072:	10 00       	RTS;
ffa04074:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a54(-7337388) */
ffa04078:	01 30       	R0 = R1;
ffa0407a:	02 e1 ec 07 	R2.L = 0x7ec;		/* (2028)	R2=0xff9007ec(-7338004) */
ffa0407e:	0e 30       	R1 = R6;
ffa04080:	ff e3 9e ea 	CALL 0xffa015bc <_strcpy_>;
ffa04084:	d5 2e       	JUMP.S 0xffa03e2e <_htmlDefault+0x62>;
ffa04086:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007ec(-7338004) */
ffa0408a:	01 30       	R0 = R1;
ffa0408c:	02 e1 e0 07 	R2.L = 0x7e0;		/* (2016)	R2=0xff9007e0(-7338016) */
ffa04090:	0e 30       	R1 = R6;
ffa04092:	ff e3 95 ea 	CALL 0xffa015bc <_strcpy_>;
ffa04096:	3b 2f       	JUMP.S 0xffa03f0c <_htmlDefault+0x140>;

ffa04098 <_httpHeader>:
ffa04098:	78 05       	[--SP] = (R7:7);
ffa0409a:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0409e:	7f 30       	R7 = FP;
ffa040a0:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa040a2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa040a4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007e0(-7338016) */
ffa040a8:	f0 bb       	[FP -0x4] = R0;
ffa040aa:	0f 30       	R1 = R7;
ffa040ac:	02 e1 6c 0a 	R2.L = 0xa6c;		/* (2668)	R2=0xff900a6c(-7337364) */
ffa040b0:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa040b4:	ff e3 84 ea 	CALL 0xffa015bc <_strcpy_>;
ffa040b8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a6c(-7337364) */
ffa040bc:	0f 30       	R1 = R7;
ffa040be:	02 e1 80 0a 	R2.L = 0xa80;		/* (2688)	R2=0xff900a80(-7337344) */
ffa040c2:	ff e3 7d ea 	CALL 0xffa015bc <_strcpy_>;
ffa040c6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a80(-7337344) */
ffa040ca:	0f 30       	R1 = R7;
ffa040cc:	02 e1 94 0a 	R2.L = 0xa94;		/* (2708)	R2=0xff900a94(-7337324) */
ffa040d0:	ff e3 76 ea 	CALL 0xffa015bc <_strcpy_>;
ffa040d4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa040d8:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa040dc:	12 91       	R2 = [P2];
ffa040de:	0f 30       	R1 = R7;
ffa040e0:	ff e3 d4 eb 	CALL 0xffa01888 <_strprintf_int>;
ffa040e4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a94(-7337324) */
ffa040e8:	0f 30       	R1 = R7;
ffa040ea:	02 e1 a8 0a 	R2.L = 0xaa8;		/* (2728)	R2=0xff900aa8(-7337304) */
ffa040ee:	ff e3 67 ea 	CALL 0xffa015bc <_strcpy_>;
ffa040f2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd8 <_g_httpContentLen> */
ffa040f6:	f0 b9       	R0 = [FP -0x4];
ffa040f8:	0a e1 d4 0f 	P2.L = 0xfd4;		/* (4052)	P2=0xff900fd4 <_g_httpHeaderLen> */
ffa040fc:	10 93       	[P2] = R0;
ffa040fe:	01 e8 00 00 	UNLINK;
ffa04102:	38 05       	(R7:7) = [SP++];
ffa04104:	10 00       	RTS;
	...

ffa04108 <_htmlGeneric>:
ffa04108:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0410c:	10 30       	R2 = R0;
ffa0410e:	4f 30       	R1 = FP;
ffa04110:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04112:	f0 bb       	[FP -0x4] = R0;
ffa04114:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa04116:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa0411a:	ff e3 51 ea 	CALL 0xffa015bc <_strcpy_>;
ffa0411e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd4 <_g_httpHeaderLen> */
ffa04122:	f0 b9       	R0 = [FP -0x4];
ffa04124:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa04128:	10 93       	[P2] = R0;
ffa0412a:	ff e3 b7 ff 	CALL 0xffa04098 <_httpHeader>;
ffa0412e:	f0 b9       	R0 = [FP -0x4];
ffa04130:	01 e8 00 00 	UNLINK;
ffa04134:	10 00       	RTS;
	...

ffa04138 <_httpResp>:
ffa04138:	60 05       	[--SP] = (R7:4);
ffa0413a:	30 30       	R6 = R0;
ffa0413c:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa0413e:	01 09       	CC = R1 <= R0;
ffa04140:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa04144:	39 30       	R7 = R1;
ffa04146:	21 10       	IF !CC JUMP 0xffa04188 <_httpResp+0x50>;
ffa04148:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa0414a:	0f 09       	CC = R7 <= R1;
ffa0414c:	34 10       	IF !CC JUMP 0xffa041b4 <_httpResp+0x7c>;
ffa0414e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa04152:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa04156:	0e 30       	R1 = R6;
ffa04158:	17 30       	R2 = R7;
ffa0415a:	ff e3 9f ea 	CALL 0xffa01698 <_substr>;
ffa0415e:	00 0c       	CC = R0 == 0x0;
ffa04160:	06 10       	IF !CC JUMP 0xffa0416c <_httpResp+0x34>;
ffa04162:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04164:	01 e8 00 00 	UNLINK;
ffa04168:	20 05       	(R7:4) = [SP++];
ffa0416a:	10 00       	RTS;
ffa0416c:	ff e3 b0 fd 	CALL 0xffa03ccc <_html404>;
ffa04170:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900fd8 <_g_httpContentLen> */
ffa04174:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa04178:	10 93       	[P2] = R0;
ffa0417a:	ff e3 8f ff 	CALL 0xffa04098 <_httpHeader>;
ffa0417e:	01 e8 00 00 	UNLINK;
ffa04182:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04184:	20 05       	(R7:4) = [SP++];
ffa04186:	10 00       	RTS;
ffa04188:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa0418c:	06 30       	R0 = R6;
ffa0418e:	01 e1 c8 0a 	R1.L = 0xac8;		/* (2760)	R1=0xff900ac8(-7337272) */
ffa04192:	ff e3 55 ea 	CALL 0xffa0163c <_strcmp>;
ffa04196:	00 0c       	CC = R0 == 0x0;
ffa04198:	d8 1f       	IF CC JUMP 0xffa04148 <_httpResp+0x10> (BP);
ffa0419a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0419e:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa041a2:	0e 30       	R1 = R6;
ffa041a4:	17 30       	R2 = R7;
ffa041a6:	ff e3 79 ea 	CALL 0xffa01698 <_substr>;
ffa041aa:	00 0c       	CC = R0 == 0x0;
ffa041ac:	db 1f       	IF CC JUMP 0xffa04162 <_httpResp+0x2a> (BP);
ffa041ae:	ff e3 0f fe 	CALL 0xffa03dcc <_htmlDefault>;
ffa041b2:	df 2f       	JUMP.S 0xffa04170 <_httpResp+0x38>;
ffa041b4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa041b8:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa041bc:	0e 30       	R1 = R6;
ffa041be:	17 30       	R2 = R7;
ffa041c0:	ff e3 6c ea 	CALL 0xffa01698 <_substr>;
ffa041c4:	00 0c       	CC = R0 == 0x0;
ffa041c6:	3c 1c       	IF CC JUMP 0xffa0423e <_httpResp+0x106> (BP);
ffa041c8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ad4(-7337260) */
ffa041cc:	00 e1 e0 0a 	R0.L = 0xae0;		/* (2784)	R0=0xff900ae0(-7337248) */
ffa041d0:	0e 30       	R1 = R6;
ffa041d2:	17 30       	R2 = R7;
ffa041d4:	ff e3 62 ea 	CALL 0xffa01698 <_substr>;
ffa041d8:	00 0c       	CC = R0 == 0x0;
ffa041da:	c4 1f       	IF CC JUMP 0xffa04162 <_httpResp+0x2a> (BP);
ffa041dc:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa041de:	06 50       	R0 = R6 + R0;
ffa041e0:	ff e3 7c eb 	CALL 0xffa018d8 <_atoi>;
ffa041e4:	08 30       	R1 = R0;
ffa041e6:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa041ea:	00 67       	R0 += -0x20;		/* (-32) */
ffa041ec:	10 0a       	CC = R0 <= R2 (IU);
ffa041ee:	24 11       	IF !CC JUMP 0xffa04436 <_httpResp+0x2fe>;
ffa041f0:	82 c6 19 84 	R2 = R1 << 0x3;
ffa041f4:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800fd8 */
ffa041f8:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa041fc:	02 0d       	CC = R2 <= 0x0;
ffa041fe:	13 91       	R3 = [P2];
ffa04200:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa04204:	14 18       	IF CC JUMP 0xffa0422c <_httpResp+0xf4>;
ffa04206:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa0420a:	28 4f       	R0 <<= 0x5;
ffa0420c:	03 54       	R0 = R3 & R0;
ffa0420e:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa04210:	38 52       	R0 = R0 - R7;
ffa04212:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa04216:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa04218:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa0421c:	18 54       	R0 = R0 & R3;
ffa0421e:	10 32       	P2 = R0;
ffa04220:	09 64       	R1 += 0x1;		/* (  1) */
ffa04222:	0a 08       	CC = R2 == R1;
ffa04224:	10 90       	R0 = [P2++];
ffa04226:	08 92       	[P1++] = R0;
ffa04228:	42 30       	R0 = P2;
ffa0422a:	f9 17       	IF !CC JUMP 0xffa0421c <_httpResp+0xe4> (BP);
ffa0422c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900804 */
ffa04230:	0a e1 d8 0f 	P2.L = 0xfd8;		/* (4056)	P2=0xff900fd8 <_g_httpContentLen> */
ffa04234:	17 93       	[P2] = R7;
ffa04236:	ff e3 31 ff 	CALL 0xffa04098 <_httpHeader>;
ffa0423a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0423c:	94 2f       	JUMP.S 0xffa04164 <_httpResp+0x2c>;
ffa0423e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa04242:	00 e1 14 0b 	R0.L = 0xb14;		/* (2836)	R0=0xff900b14(-7337196) */
ffa04246:	0e 30       	R1 = R6;
ffa04248:	17 30       	R2 = R7;
ffa0424a:	ff e3 27 ea 	CALL 0xffa01698 <_substr>;
ffa0424e:	00 0c       	CC = R0 == 0x0;
ffa04250:	7f 1f       	IF CC JUMP 0xffa0414e <_httpResp+0x16> (BP);
ffa04252:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b14(-7337196) */
ffa04256:	0e 30       	R1 = R6;
ffa04258:	17 30       	R2 = R7;
ffa0425a:	00 e1 14 0b 	R0.L = 0xb14;		/* (2836)	R0=0xff900b14(-7337196) */
ffa0425e:	ff e3 1d ea 	CALL 0xffa01698 <_substr>;
ffa04262:	86 51       	R6 = R6 + R0;
ffa04264:	47 53       	R5 = R7 - R0;
ffa04266:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b14(-7337196) */
ffa0426a:	00 e1 1c 0b 	R0.L = 0xb1c;		/* (2844)	R0=0xff900b1c(-7337188) */
ffa0426e:	0e 30       	R1 = R6;
ffa04270:	15 30       	R2 = R5;
ffa04272:	ff e3 13 ea 	CALL 0xffa01698 <_substr>;
ffa04276:	00 0c       	CC = R0 == 0x0;
ffa04278:	10 11       	IF !CC JUMP 0xffa04498 <_httpResp+0x360>;
ffa0427a:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa0427c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b1c(-7337188) */
ffa04280:	00 e1 40 0b 	R0.L = 0xb40;		/* (2880)	R0=0xff900b40(-7337152) */
ffa04284:	0e 30       	R1 = R6;
ffa04286:	15 30       	R2 = R5;
ffa04288:	ff e3 08 ea 	CALL 0xffa01698 <_substr>;
ffa0428c:	00 0c       	CC = R0 == 0x0;
ffa0428e:	e2 10       	IF !CC JUMP 0xffa04452 <_httpResp+0x31a>;
ffa04290:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b40(-7337152) */
ffa04294:	0e 30       	R1 = R6;
ffa04296:	00 e1 4c 0b 	R0.L = 0xb4c;		/* (2892)	R0=0xff900b4c(-7337140) */
ffa0429a:	15 30       	R2 = R5;
ffa0429c:	ff e3 fe e9 	CALL 0xffa01698 <_substr>;
ffa042a0:	00 0c       	CC = R0 == 0x0;
ffa042a2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b4c(-7337140) */
ffa042a6:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa042a8:	0e 30       	R1 = R6;
ffa042aa:	15 30       	R2 = R5;
ffa042ac:	00 e1 58 0b 	R0.L = 0xb58;		/* (2904)	R0=0xff900b58(-7337128) */
ffa042b0:	27 06       	IF !CC R4 = R7;
ffa042b2:	ff e3 f3 e9 	CALL 0xffa01698 <_substr>;
ffa042b6:	00 0c       	CC = R0 == 0x0;
ffa042b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b58(-7337128) */
ffa042bc:	0e 30       	R1 = R6;
ffa042be:	15 30       	R2 = R5;
ffa042c0:	00 e1 64 0b 	R0.L = 0xb64;		/* (2916)	R0=0xff900b64(-7337116) */
ffa042c4:	27 06       	IF !CC R4 = R7;
ffa042c6:	ff e3 e9 e9 	CALL 0xffa01698 <_substr>;
ffa042ca:	00 0c       	CC = R0 == 0x0;
ffa042cc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b64(-7337116) */
ffa042d0:	0e 30       	R1 = R6;
ffa042d2:	15 30       	R2 = R5;
ffa042d4:	00 e1 70 0b 	R0.L = 0xb70;		/* (2928)	R0=0xff900b70(-7337104) */
ffa042d8:	27 06       	IF !CC R4 = R7;
ffa042da:	ff e3 df e9 	CALL 0xffa01698 <_substr>;
ffa042de:	00 0c       	CC = R0 == 0x0;
ffa042e0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b70(-7337104) */
ffa042e4:	00 e1 7c 0b 	R0.L = 0xb7c;		/* (2940)	R0=0xff900b7c(-7337092) */
ffa042e8:	0e 30       	R1 = R6;
ffa042ea:	15 30       	R2 = R5;
ffa042ec:	27 06       	IF !CC R4 = R7;
ffa042ee:	ff e3 d5 e9 	CALL 0xffa01698 <_substr>;
ffa042f2:	00 0c       	CC = R0 == 0x0;
ffa042f4:	15 11       	IF !CC JUMP 0xffa0451e <_httpResp+0x3e6>;
ffa042f6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b7c(-7337092) */
ffa042fa:	00 e1 84 0b 	R0.L = 0xb84;		/* (2948)	R0=0xff900b84(-7337084) */
ffa042fe:	0e 30       	R1 = R6;
ffa04300:	15 30       	R2 = R5;
ffa04302:	ff e3 cb e9 	CALL 0xffa01698 <_substr>;
ffa04306:	00 0c       	CC = R0 == 0x0;
ffa04308:	f6 10       	IF !CC JUMP 0xffa044f4 <_httpResp+0x3bc>;
ffa0430a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b84(-7337084) */
ffa0430e:	00 e1 8c 0b 	R0.L = 0xb8c;		/* (2956)	R0=0xff900b8c(-7337076) */
ffa04312:	0e 30       	R1 = R6;
ffa04314:	15 30       	R2 = R5;
ffa04316:	ff e3 c1 e9 	CALL 0xffa01698 <_substr>;
ffa0431a:	00 0c       	CC = R0 == 0x0;
ffa0431c:	13 11       	IF !CC JUMP 0xffa04542 <_httpResp+0x40a>;
ffa0431e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b8c(-7337076) */
ffa04322:	00 e1 94 0b 	R0.L = 0xb94;		/* (2964)	R0=0xff900b94(-7337068) */
ffa04326:	0e 30       	R1 = R6;
ffa04328:	15 30       	R2 = R5;
ffa0432a:	ff e3 b7 e9 	CALL 0xffa01698 <_substr>;
ffa0432e:	00 0c       	CC = R0 == 0x0;
ffa04330:	d1 10       	IF !CC JUMP 0xffa044d2 <_httpResp+0x39a>;
ffa04332:	20 43       	R0 = R4.B (X);
ffa04334:	00 0c       	CC = R0 == 0x0;
ffa04336:	3c 17       	IF !CC JUMP 0xffa041ae <_httpResp+0x76> (BP);
ffa04338:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b94(-7337068) */
ffa0433c:	00 e1 9c 0b 	R0.L = 0xb9c;		/* (2972)	R0=0xff900b9c(-7337060) */
ffa04340:	0e 30       	R1 = R6;
ffa04342:	15 30       	R2 = R5;
ffa04344:	ff e3 aa e9 	CALL 0xffa01698 <_substr>;
ffa04348:	00 0c       	CC = R0 == 0x0;
ffa0434a:	0c 1b       	IF CC JUMP 0xffa04162 <_httpResp+0x2a>;
ffa0434c:	7f 30       	R7 = FP;
ffa0434e:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa04352:	57 5a       	P1 = FP + P2;
ffa04354:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa04356:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04358:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa0435a:	b2 e0 02 20 	LSETUP(0xffa0435e <_httpResp+0x226>, 0xffa0435e <_httpResp+0x226>) LC1 = P2;
ffa0435e:	08 92       	[P1++] = R0;
ffa04360:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa04364:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa04368:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa0436c:	29 4f       	R1 <<= 0x5;
ffa0436e:	10 91       	R0 = [P2];
ffa04370:	08 54       	R0 = R0 & R1;
ffa04372:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa04374:	81 4f       	R1 <<= 0x10;
ffa04376:	08 50       	R0 = R0 + R1;
ffa04378:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa0437a:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa0437e:	88 54       	R2 = R0 & R1;
ffa04380:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa04384:	b2 e0 12 10 	LSETUP(0xffa04388 <_httpResp+0x250>, 0xffa043a8 <_httpResp+0x270>) LC1 = P1;
ffa04388:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa0438c:	97 5a       	P2 = FP + P2;
ffa0438e:	02 32       	P0 = R2;
ffa04390:	11 91       	R1 = [P2];
ffa04392:	12 64       	R2 += 0x2;		/* (  2) */
ffa04394:	00 94       	R0 = W[P0++] (Z);
ffa04396:	41 50       	R1 = R1 + R0;
ffa04398:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0439a:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa0439e:	11 92       	[P2++] = R1;
ffa043a0:	82 54       	R2 = R2 & R0;
ffa043a2:	42 30       	R0 = P2;
ffa043a4:	38 08       	CC = R0 == R7;
ffa043a6:	f4 17       	IF !CC JUMP 0xffa0438e <_httpResp+0x256> (BP);
ffa043a8:	00 00       	NOP;
ffa043aa:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa043ae:	97 5a       	P2 = FP + P2;
ffa043b0:	00 00       	NOP;
ffa043b2:	10 91       	R0 = [P2];
ffa043b4:	58 4d       	R0 >>>= 0xb;
ffa043b6:	10 92       	[P2++] = R0;
ffa043b8:	4a 30       	R1 = P2;
ffa043ba:	39 08       	CC = R1 == R7;
ffa043bc:	fa 17       	IF !CC JUMP 0xffa043b0 <_httpResp+0x278> (BP);
ffa043be:	ff e3 07 fd 	CALL 0xffa03dcc <_htmlDefault>;
ffa043c2:	68 67       	R0 += -0x13;		/* (-19) */
ffa043c4:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa043c8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80(-7336064) */
ffa043cc:	f0 bb       	[FP -0x4] = R0;
ffa043ce:	02 e1 ac 0b 	R2.L = 0xbac;		/* (2988)	R2=0xff900bac(-7337044) */
ffa043d2:	08 50       	R0 = R0 + R1;
ffa043d4:	0f 30       	R1 = R7;
ffa043d6:	ff e3 f3 e8 	CALL 0xffa015bc <_strcpy_>;
ffa043da:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa043de:	f5 b8 00 00 
ffa043e2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bac(-7337044) */
ffa043e6:	0f 30       	R1 = R7;
ffa043e8:	02 e1 b8 0b 	R2.L = 0xbb8;		/* (3000)	R2=0xff900bb8(-7337032) */
ffa043ec:	ff e3 e8 e8 	CALL 0xffa015bc <_strcpy_>;
ffa043f0:	16 30       	R2 = R6;
ffa043f2:	0f 30       	R1 = R7;
ffa043f4:	ff e3 4a ea 	CALL 0xffa01888 <_strprintf_int>;
ffa043f8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bb8(-7337032) */
ffa043fc:	0f 30       	R1 = R7;
ffa043fe:	02 e1 cc 0b 	R2.L = 0xbcc;		/* (3020)	R2=0xff900bcc(-7337012) */
ffa04402:	ff e3 dd e8 	CALL 0xffa015bc <_strcpy_>;
ffa04406:	0f 30       	R1 = R7;
ffa04408:	15 30       	R2 = R5;
ffa0440a:	ff e3 3f ea 	CALL 0xffa01888 <_strprintf_int>;
ffa0440e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900bcc(-7337012) */
ffa04412:	02 e1 dc 0b 	R2.L = 0xbdc;		/* (3036)	R2=0xff900bdc(-7336996) */
ffa04416:	0f 30       	R1 = R7;
ffa04418:	ff e3 d2 e8 	CALL 0xffa015bc <_strcpy_>;
ffa0441c:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0441e:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa04420:	16 08       	CC = R6 == R2;
ffa04422:	e0 17       	IF !CC JUMP 0xffa043e2 <_httpResp+0x2aa> (BP);
ffa04424:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa04428:	0f 30       	R1 = R7;
ffa0442a:	02 e1 e8 0b 	R2.L = 0xbe8;		/* (3048)	R2=0xff900be8(-7336984) */
ffa0442e:	ff e3 c7 e8 	CALL 0xffa015bc <_strcpy_>;
ffa04432:	f0 b9       	R0 = [FP -0x4];
ffa04434:	9e 2e       	JUMP.S 0xffa04170 <_httpResp+0x38>;
ffa04436:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04438:	4f 30       	R1 = FP;
ffa0443a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900be8(-7336984) */
ffa0443e:	f0 bb       	[FP -0x4] = R0;
ffa04440:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa04442:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa04446:	02 e1 e8 0a 	R2.L = 0xae8;		/* (2792)	R2=0xff900ae8(-7337240) */
ffa0444a:	ff e3 b9 e8 	CALL 0xffa015bc <_strcpy_>;
ffa0444e:	f0 b9       	R0 = [FP -0x4];
ffa04450:	90 2e       	JUMP.S 0xffa04170 <_httpResp+0x38>;
ffa04452:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa04456:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa0445a:	0e 30       	R1 = R6;
ffa0445c:	15 30       	R2 = R5;
ffa0445e:	ff e3 1d e9 	CALL 0xffa01698 <_substr>;
ffa04462:	00 0c       	CC = R0 == 0x0;
ffa04464:	08 1c       	IF CC JUMP 0xffa04474 <_httpResp+0x33c> (BP);
ffa04466:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa0446a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0446c:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa04470:	10 9b       	B[P2] = R0;
ffa04472:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04474:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa04478:	00 e1 34 0b 	R0.L = 0xb34;		/* (2868)	R0=0xff900b34(-7337164) */
ffa0447c:	0e 30       	R1 = R6;
ffa0447e:	15 30       	R2 = R5;
ffa04480:	ff e3 0c e9 	CALL 0xffa01698 <_substr>;
ffa04484:	00 0c       	CC = R0 == 0x0;
ffa04486:	05 1f       	IF CC JUMP 0xffa04290 <_httpResp+0x158> (BP);
ffa04488:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa0448c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0448e:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa04492:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04494:	10 9b       	B[P2] = R0;
ffa04496:	fd 2e       	JUMP.S 0xffa04290 <_httpResp+0x158>;
ffa04498:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0449c:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa044a0:	0e 30       	R1 = R6;
ffa044a2:	15 30       	R2 = R5;
ffa044a4:	ff e3 fa e8 	CALL 0xffa01698 <_substr>;
ffa044a8:	00 0c       	CC = R0 == 0x0;
ffa044aa:	61 14       	IF !CC JUMP 0xffa0456c <_httpResp+0x434> (BP);
ffa044ac:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa044ae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b2c(-7337172) */
ffa044b2:	00 e1 34 0b 	R0.L = 0xb34;		/* (2868)	R0=0xff900b34(-7337164) */
ffa044b6:	0e 30       	R1 = R6;
ffa044b8:	15 30       	R2 = R5;
ffa044ba:	ff e3 ef e8 	CALL 0xffa01698 <_substr>;
ffa044be:	00 0c       	CC = R0 == 0x0;
ffa044c0:	de 1e       	IF CC JUMP 0xffa0427c <_httpResp+0x144> (BP);
ffa044c2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa044c6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa044c8:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_g_streamEnabled> */
ffa044cc:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa044ce:	10 9b       	B[P2] = R0;
ffa044d0:	d6 2e       	JUMP.S 0xffa0427c <_httpResp+0x144>;
ffa044d2:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa044d4:	06 50       	R0 = R6 + R0;
ffa044d6:	ff e3 01 ea 	CALL 0xffa018d8 <_atoi>;
ffa044da:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c34 <_g_streamEnabled> */
ffa044de:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetDataDestIP> */
ffa044e2:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa044e4:	11 91       	R1 = [P2];
ffa044e6:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa044ea:	51 54       	R1 = R1 & R2;
ffa044ec:	c0 4f       	R0 <<= 0x18;
ffa044ee:	41 50       	R1 = R1 + R0;
ffa044f0:	11 93       	[P2] = R1;
ffa044f2:	5e 2e       	JUMP.S 0xffa041ae <_httpResp+0x76>;
ffa044f4:	86 51       	R6 = R6 + R0;
ffa044f6:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa044f8:	45 53       	R5 = R5 - R0;
ffa044fa:	06 30       	R0 = R6;
ffa044fc:	ff e3 ee e9 	CALL 0xffa018d8 <_atoi>;
ffa04500:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetDataDestIP> */
ffa04504:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetDataDestIP> */
ffa04508:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0450a:	11 91       	R1 = [P2];
ffa0450c:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa04510:	40 43       	R0 = R0.B (Z);
ffa04512:	51 54       	R1 = R1 & R2;
ffa04514:	40 4f       	R0 <<= 0x8;
ffa04516:	41 50       	R1 = R1 + R0;
ffa04518:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0451a:	11 93       	[P2] = R1;
ffa0451c:	f7 2e       	JUMP.S 0xffa0430a <_httpResp+0x1d2>;
ffa0451e:	86 51       	R6 = R6 + R0;
ffa04520:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04522:	45 53       	R5 = R5 - R0;
ffa04524:	06 30       	R0 = R6;
ffa04526:	ff e3 d9 e9 	CALL 0xffa018d8 <_atoi>;
ffa0452a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetDataDestIP> */
ffa0452e:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetDataDestIP> */
ffa04532:	11 91       	R1 = [P2];
ffa04534:	41 4d       	R1 >>>= 0x8;
ffa04536:	41 4f       	R1 <<= 0x8;
ffa04538:	40 43       	R0 = R0.B (Z);
ffa0453a:	08 50       	R0 = R0 + R1;
ffa0453c:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0453e:	10 93       	[P2] = R0;
ffa04540:	db 2e       	JUMP.S 0xffa042f6 <_httpResp+0x1be>;
ffa04542:	86 51       	R6 = R6 + R0;
ffa04544:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04546:	45 53       	R5 = R5 - R0;
ffa04548:	06 30       	R0 = R6;
ffa0454a:	ff e3 c7 e9 	CALL 0xffa018d8 <_atoi>;
ffa0454e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetDataDestIP> */
ffa04552:	0a e1 e4 0e 	P2.L = 0xee4;		/* (3812)	P2=0xff900ee4 <_NetDataDestIP> */
ffa04556:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04558:	11 91       	R1 = [P2];
ffa0455a:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa0455e:	40 43       	R0 = R0.B (Z);
ffa04560:	51 54       	R1 = R1 & R2;
ffa04562:	80 4f       	R0 <<= 0x10;
ffa04564:	41 50       	R1 = R1 + R0;
ffa04566:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04568:	11 93       	[P2] = R1;
ffa0456a:	da 2e       	JUMP.S 0xffa0431e <_httpResp+0x1e6>;
ffa0456c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ee4 <_NetDataDestIP> */
ffa04570:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04572:	0a e1 34 0c 	P2.L = 0xc34;		/* (3124)	P2=0xff900c34 <_g_streamEnabled> */
ffa04576:	10 9b       	B[P2] = R0;
ffa04578:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c34 */
ffa0457c:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa04580:	10 91       	R0 = [P2];
ffa04582:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04584:	22 6c       	P2 += 0x4;		/* (  4) */
ffa04586:	10 93       	[P2] = R0;
ffa04588:	93 2f       	JUMP.S 0xffa044ae <_httpResp+0x376>;
	...

ffa0458c <_httpCollate>:
ffa0458c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0458e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ee4 <_NetDataDestIP> */
ffa04592:	0d e1 dc 0f 	P5.L = 0xfdc;		/* (4060)	P5=0xff900fdc <_g_httpRxed> */
ffa04596:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa04598:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R1 = [P5] || NOP;
ffa0459c:	29 91 00 00 
ffa045a0:	82 4f       	R2 <<= 0x10;
ffa045a2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa045a6:	51 50       	R1 = R1 + R2;
ffa045a8:	17 30       	R2 = R7;
ffa045aa:	ff e3 d9 e7 	CALL 0xffa0155c <_memcpy_>;
ffa045ae:	28 91       	R0 = [P5];
ffa045b0:	38 50       	R0 = R0 + R7;
ffa045b2:	01 e8 00 00 	UNLINK;
ffa045b6:	28 93       	[P5] = R0;
ffa045b8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa045ba:	bd 05       	(R7:7, P5:5) = [SP++];
ffa045bc:	10 00       	RTS;
	...

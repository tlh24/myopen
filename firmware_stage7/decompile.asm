
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
ffa003f6:	00 e3 bf 07 	CALL 0xffa01374 <_printf_int>;
ffa003fa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa003fe:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa00402:	00 e3 9d 06 	CALL 0xffa0113c <_uart_str>;
ffa00406:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900508(-7338744) */
ffa0040a:	0d 30       	R1 = R5;
ffa0040c:	00 e1 14 00 	R0.L = 0x14;		/* ( 20)	R0=0xff900014(-7340012) */
ffa00410:	00 e3 00 07 	CALL 0xffa01210 <_printf_hex_byte>;
ffa00414:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900014(-7340012) */
ffa00418:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa0041c:	00 e3 90 06 	CALL 0xffa0113c <_uart_str>;
ffa00420:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900508(-7338744) */
ffa00424:	00 e1 20 00 	R0.L = 0x20;		/* ( 32)	R0=0xff900020(-7340000) */
ffa00428:	0f 30       	R1 = R7;
ffa0042a:	00 e3 f3 06 	CALL 0xffa01210 <_printf_hex_byte>;
ffa0042e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa00432:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00436:	2f 30       	R5 = R7;
ffa00438:	00 e3 82 06 	CALL 0xffa0113c <_uart_str>;
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
ffa004b8:	00 e3 5e 07 	CALL 0xffa01374 <_printf_int>;
ffa004bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002c(-7339988) */
ffa004c0:	ff 42       	R7 = R7.L (Z);
ffa004c2:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa004c6:	00 e3 3b 06 	CALL 0xffa0113c <_uart_str>;
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
ffa0056e:	0d e1 c8 0b 	P5.L = 0xbc8;		/* (3016)	P5=0xff900bc8 <_g_sampCh> */
ffa00572:	10 97       	W[P2] = R0;
ffa00574:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff90150c */
ffa00578:	68 99       	R0 = B[P5] (X);
ffa0057a:	08 e1 d0 0b 	P0.L = 0xbd0;		/* (3024)	P0=0xff900bd0 <_g_sampR> */
ffa0057e:	46 43       	R6 = R0.B (Z);
ffa00580:	05 91       	R5 = [P0];
ffa00582:	23 e1 ff 01 	R3 = 0x1ff (X);		/*		R3=0x1ff(511) */
ffa00586:	6e 50       	R1 = R6 + R5;
ffa00588:	00 34       	I0 = R0;
ffa0058a:	19 54       	R0 = R1 & R3;
ffa0058c:	20 32       	P4 = R0;
ffa0058e:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900500 */
ffa00592:	09 e1 fc 0b 	P1.L = 0xbfc;		/* (3068)	P1=0xff900bfc <_g_samples> */
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
ffa005b0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bfc <_g_samples> */
ffa005b4:	09 e1 d8 0b 	P1.L = 0xbd8;		/* (3032)	P1=0xff900bd8 <_g_sampOff> */
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
ffa0060e:	0a e1 b4 0b 	P2.L = 0xbb4;		/* (2996)	P2=0xff900bb4 <_g_sampW> */
ffa00612:	10 91       	R0 = [P2];
ffa00614:	05 0a       	CC = R5 <= R0 (IU);
ffa00616:	38 1c       	IF CC JUMP 0xffa00686 <_audio_out+0x142> (BP);
ffa00618:	00 93       	[P0] = R0;
ffa0061a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb4 <_g_sampW> */
ffa0061e:	0a e1 a8 0b 	P2.L = 0xba8;		/* (2984)	P2=0xff900ba8 <_g_sampMode> */
ffa00622:	10 99       	R0 = B[P2] (Z);
ffa00624:	08 0c       	CC = R0 == 0x1;
ffa00626:	57 18       	IF CC JUMP 0xffa006d4 <_audio_out+0x190>;
ffa00628:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa0062a:	08 08       	CC = R0 == R1;
ffa0062c:	51 18       	IF CC JUMP 0xffa006ce <_audio_out+0x18a>;
ffa0062e:	10 99       	R0 = B[P2] (Z);
ffa00630:	10 0c       	CC = R0 == 0x2;
ffa00632:	53 18       	IF CC JUMP 0xffa006d8 <_audio_out+0x194>;
ffa00634:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba8 <_g_sampMode> */
ffa00638:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0063a:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_sampInc> */
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
ffa00698:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb8 <_g_sampInc> */
ffa0069c:	0a e1 a8 0b 	P2.L = 0xba8;		/* (2984)	P2=0xff900ba8 <_g_sampMode> */
ffa006a0:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa006a2:	10 99       	R0 = B[P2] (Z);
ffa006a4:	08 08       	CC = R0 == R1;
ffa006a6:	c5 17       	IF !CC JUMP 0xffa00630 <_audio_out+0xec> (BP);
ffa006a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba8 <_g_sampMode> */
ffa006ac:	40 e1 13 10 	R0.H = 0x1013;		/* (4115)	R0=0x1013ffff(269746175) */
ffa006b0:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_sampInc> */
ffa006b4:	00 e1 cd ab 	R0.L = 0xabcd;		/* (-21555)	R0=0x1013abcd(269724621) */
ffa006b8:	10 93       	[P2] = R0;
ffa006ba:	c4 2f       	JUMP.S 0xffa00642 <_audio_out+0xfe>;
ffa006bc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb8 <_g_sampInc> */
ffa006c0:	0a e1 a8 0b 	P2.L = 0xba8;		/* (2984)	P2=0xff900ba8 <_g_sampMode> */
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
ffa006d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba8 <_g_sampMode> */
ffa006dc:	40 e1 f1 0f 	R0.H = 0xff1;		/* (4081)	R0=0xff10002(267452418) */
ffa006e0:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_sampInc> */
ffa006e4:	00 e1 21 43 	R0.L = 0x4321;		/* (17185)	R0=0xff14321(267469601) */
ffa006e8:	10 93       	[P2] = R0;
ffa006ea:	ac 2f       	JUMP.S 0xffa00642 <_audio_out+0xfe>;
ffa006ec:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa006ee:	10 9b       	B[P2] = R0;
ffa006f0:	dc 2f       	JUMP.S 0xffa006a8 <_audio_out+0x164>;
	...

ffa006f4 <_wait_flash>:
ffa006f4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa006f6:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00bc8(-4191288) */
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
ffa00718:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bb8(-4191304) */
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
ffa00976:	00 e3 4d 04 	CALL 0xffa01210 <_printf_hex_byte>;
ffa0097a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900044(-7339964) */
ffa0097e:	21 99       	R1 = B[P4] (Z);
ffa00980:	00 e1 54 00 	R0.L = 0x54;		/* ( 84)	R0=0xff900054(-7339948) */
ffa00984:	00 e3 46 04 	CALL 0xffa01210 <_printf_hex_byte>;
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
ffa009a4:	00 e2 26 04 	JUMP.L 0xffa011f0 <_printf_str>;
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
ffa009c2:	00 e3 ad 11 	CALL 0xffa02d1c <_bfin_EMAC_recv>;
ffa009c6:	00 0d       	CC = R0 <= 0x0;
ffa009c8:	f8 1b       	IF CC JUMP 0xffa009b8 <_eth_listen+0x8>;
ffa009ca:	f9 b9       	P1 = [FP -0x4];
ffa009cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901504 */
ffa009d0:	0a e1 84 0e 	P2.L = 0xe84;		/* (3716)	P2=0xff900e84 <_NetDataDestIP> */
ffa009d4:	11 91       	R1 = [P2];
ffa009d6:	c8 a1       	R0 = [P1 + 0x1c];
ffa009d8:	08 08       	CC = R0 == R1;
ffa009da:	ef 17       	IF !CC JUMP 0xffa009b8 <_eth_listen+0x8> (BP);
ffa009dc:	48 e4 13 00 	R0 = W[P1 + 0x26] (Z);
ffa009e0:	00 e3 68 08 	CALL 0xffa01ab0 <_htons>;
ffa009e4:	c0 42       	R0 = R0.L (Z);
ffa009e6:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa009ea:	08 08       	CC = R0 == R1;
ffa009ec:	e6 17       	IF !CC JUMP 0xffa009b8 <_eth_listen+0x8> (BP);
ffa009ee:	f0 b9       	R0 = [FP -0x4];
ffa009f0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa009f4:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa009f6:	01 e1 dc 0b 	R1.L = 0xbdc;		/* (3036)	R1=0xff900bdc <_g_outpkt>(-7336996) */
ffa009fa:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa009fc:	00 e3 a2 05 	CALL 0xffa01540 <_memcpy_>;
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
ffa00a24:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e84(-4190588) */
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
ffa00a50:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bd8 <_g_sampOff> */
ffa00a54:	09 e1 b0 0b 	P1.L = 0xbb0;		/* (2992)	P1=0xff900bb0 <_wrptr> */
ffa00a58:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00a5c:	10 91       	R0 = [P2];
ffa00a5e:	4a 91       	P2 = [P1];
ffa00a60:	10 93       	[P2] = R0;
ffa00a62:	08 91       	R0 = [P1];
ffa00a64:	20 64       	R0 += 0x4;		/* (  4) */
ffa00a66:	08 93       	[P1] = R0;
ffa00a68:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900800 */
ffa00a6c:	0a e1 b0 0b 	P2.L = 0xbb0;		/* (2992)	P2=0xff900bb0 <_wrptr> */
ffa00a70:	55 91       	P5 = [P2];
ffa00a72:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc01504(-4188924) */
ffa00a76:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90f000 */
ffa00a7a:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000 <_l1_data_a>(-7340032) */
ffa00a7e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00a80:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa00a84:	0b e1 b4 0b 	P3.L = 0xbb4;		/* (2996)	P3=0xff900bb4 <_g_sampW> */
ffa00a88:	05 e1 fc 0b 	R5.L = 0xbfc;		/* (3068)	R5=0xff900bfc <_g_samples>(-7336964) */
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
ffa00aaa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bb0(-4191312) */
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
ffa00af2:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bb0 <_wrptr> */
ffa00af6:	09 e1 b0 0b 	P1.L = 0xbb0;		/* (2992)	P1=0xff900bb0 <_wrptr> */
ffa00afa:	09 91       	R1 = [P1];
ffa00afc:	01 65       	R1 += 0x20;		/* ( 32) */
ffa00afe:	20 e1 ff 0f 	R0 = 0xfff (X);		/*		R0=0xfff(4095) */
ffa00b02:	01 54       	R0 = R1 & R0;
ffa00b04:	01 67       	R1 += -0x20;		/* (-32) */
ffa00b06:	11 32       	P2 = R1;
ffa00b08:	08 93       	[P1] = R0;
ffa00b0a:	12 60       	R2 = 0x2 (X);		/*		R2=0x2(  2) */
ffa00b0c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bb0 <_wrptr> */
ffa00b10:	09 e1 a4 0b 	P1.L = 0xba4;		/* (2980)	P1=0xff900ba4 <_g_nextFlag> */
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
ffa00b42:	0a e1 cc 0b 	P2.L = 0xbcc;		/* (3020)	P2=0xff900bcc <_g_dropped> */
ffa00b46:	04 cc 10 42 	R1 = R2 - R0 (NS) || R0 = [P2] || NOP;
ffa00b4a:	10 91 00 00 
ffa00b4e:	80 64       	R0 += 0x10;		/* ( 16) */
ffa00b50:	41 50       	R1 = R1 + R0;
ffa00b52:	11 93       	[P2] = R1;
ffa00b54:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bcc(-4191284) */
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
ffa00b70:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900ba4 <_g_nextFlag> */
ffa00b74:	09 e1 b0 0b 	P1.L = 0xbb0;		/* (2992)	P1=0xff900bb0 <_wrptr> */
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
ffa00b9a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bb0 <_wrptr> */
ffa00b9e:	09 e1 b0 0b 	P1.L = 0xbb0;		/* (2992)	P1=0xff900bb0 <_wrptr> */
ffa00ba2:	08 91       	R0 = [P1];
ffa00ba4:	4f 30       	R1 = FP;
ffa00ba6:	20 64       	R0 += 0x4;		/* (  4) */
ffa00ba8:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa00baa:	00 e3 df 0c 	CALL 0xffa02568 <_udp_packet_setup>;
ffa00bae:	08 32       	P1 = R0;
ffa00bb0:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa00bb4:	00 0d       	CC = R0 <= 0x0;
ffa00bb6:	9a 18       	IF CC JUMP 0xffa00cea <_getRadioPacket+0x2e6>;
ffa00bb8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00bbc:	0a e1 cc 0b 	P2.L = 0xbcc;		/* (3020)	P2=0xff900bcc <_g_dropped> */
ffa00bc0:	10 91       	R0 = [P2];
ffa00bc2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bcc <_g_dropped> */
ffa00bc6:	08 93       	[P1] = R0;
ffa00bc8:	0a e1 b0 0b 	P2.L = 0xbb0;		/* (2992)	P2=0xff900bb0 <_wrptr> */
ffa00bcc:	10 91       	R0 = [P2];
ffa00bce:	10 4e       	R0 >>= 0x2;
ffa00bd0:	00 0c       	CC = R0 == 0x0;
ffa00bd2:	8a 18       	IF CC JUMP 0xffa00ce6 <_getRadioPacket+0x2e2>;
ffa00bd4:	51 32       	P2 = P1;
ffa00bd6:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00bd8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00bda:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00bdc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bb0 <_wrptr> */
ffa00be0:	28 90       	R0 = [P5++];
ffa00be2:	10 92       	[P2++] = R0;
ffa00be4:	09 e1 b0 0b 	P1.L = 0xbb0;		/* (2992)	P1=0xff900bb0 <_wrptr> */
ffa00be8:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00bea:	08 91       	R0 = [P1];
ffa00bec:	d1 42       	R1 = R2.L (Z);
ffa00bee:	10 4e       	R0 >>= 0x2;
ffa00bf0:	81 09       	CC = R1 < R0 (IU);
ffa00bf2:	f5 1f       	IF CC JUMP 0xffa00bdc <_getRadioPacket+0x1d8> (BP);
ffa00bf4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb0 <_wrptr> */
ffa00bf8:	0a e1 ac 0b 	P2.L = 0xbac;		/* (2988)	P2=0xff900bac <_trptr> */
ffa00bfc:	10 91       	R0 = [P2];
ffa00bfe:	08 64       	R0 += 0x1;		/* (  1) */
ffa00c00:	10 93       	[P2] = R0;
ffa00c02:	00 e3 01 09 	CALL 0xffa01e04 <_bfin_EMAC_send_nocopy>;
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
ffa00c1c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bac(-4191316) */
ffa00c20:	20 e1 04 40 	R0 = 0x4004 (X);		/*		R0=0x4004(16388) */
ffa00c24:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00c28:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bb0 <_wrptr> */
ffa00c2c:	10 97       	W[P2] = R0;
ffa00c2e:	09 e1 b0 0b 	P1.L = 0xbb0;		/* (2992)	P1=0xff900bb0 <_wrptr> */
ffa00c32:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00c34:	08 93       	[P1] = R0;
ffa00c36:	01 e8 00 00 	UNLINK;
ffa00c3a:	a3 05       	(R7:4, P5:3) = [SP++];
ffa00c3c:	10 00       	RTS;
ffa00c3e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa00c42:	0a e1 cc 0b 	P2.L = 0xbcc;		/* (3020)	P2=0xff900bcc <_g_dropped> */
ffa00c46:	11 91       	R1 = [P2];
ffa00c48:	02 52       	R0 = R2 - R0;
ffa00c4a:	08 50       	R0 = R0 + R1;
ffa00c4c:	10 93       	[P2] = R0;
ffa00c4e:	83 2f       	JUMP.S 0xffa00b54 <_getRadioPacket+0x150>;
ffa00c50:	e0 b9       	R0 = [FP -0x8];
ffa00c52:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00c56:	ff e3 97 fb 	CALL 0xffa00384 <_radio_set_tx>;
ffa00c5a:	24 00       	SSYNC;
ffa00c5c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bcc(-4191284) */
ffa00c60:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa00c64:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90050c */
ffa00c68:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00c6c:	79 e5 fa ff 	R1 = W[FP + -0xc] (X);
ffa00c70:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa00c74:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa00c78:	0c e1 dc 0b 	P4.L = 0xbdc;		/* (3036)	P4=0xff900bdc <_g_outpkt> */
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
ffa00cee:	0a e1 ac 0b 	P2.L = 0xbac;		/* (2988)	P2=0xff900bac <_trptr> */
ffa00cf2:	10 91       	R0 = [P2];
ffa00cf4:	08 64       	R0 += 0x1;		/* (  1) */
ffa00cf6:	10 93       	[P2] = R0;
ffa00cf8:	92 2f       	JUMP.S 0xffa00c1c <_getRadioPacket+0x218>;
	...

ffa00cfc <_main>:
ffa00cfc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bac(-4191316) */
ffa00d00:	e5 05       	[--SP] = (R7:4, P5:5);
ffa00d02:	20 e1 9c c1 	R0 = -0x3e64 (X);		/*		R0=0xffffc19c(-15972) */
ffa00d06:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00d0a:	00 e8 03 00 	LINK 0xc;		/* (12) */
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
ffa00d4a:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00bd0(-4191280) */
ffa00d4e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa00d52:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00bb0(-4191312) */
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
ffa00d86:	0a e1 fc 0d 	P2.L = 0xdfc;		/* (3580)	P2=0xff900dfc <_printf_temp> */
ffa00d8a:	10 93       	[P2] = R0;
ffa00d8c:	20 e1 01 e0 	R0 = -0x1fff (X);		/*		R0=0xffffe001(-8191) */
ffa00d90:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900dfc <_printf_temp> */
ffa00d94:	0a e1 00 0e 	P2.L = 0xe00;		/* (3584)	P2=0xff900e00 <_printf_out> */
ffa00d98:	50 4f       	R0 <<= 0xa;
ffa00d9a:	10 93       	[P2] = R0;
ffa00d9c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90e001(-7282687) */
ffa00da0:	21 e1 80 01 	R1 = 0x180 (X);		/*		R1=0x180(384) */
ffa00da4:	00 e1 7c 00 	R0.L = 0x7c;		/* (124)	R0=0xff90007c(-7339908) */
ffa00da8:	00 e3 e6 02 	CALL 0xffa01374 <_printf_int>;
ffa00dac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa00db0:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00db4:	00 e3 1e 02 	CALL 0xffa011f0 <_printf_str>;
ffa00db8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa00dbc:	00 e1 8c 00 	R0.L = 0x8c;		/* (140)	R0=0xff90008c(-7339892) */
ffa00dc0:	00 e3 18 02 	CALL 0xffa011f0 <_printf_str>;
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
ffa00e08:	00 e3 5a 02 	CALL 0xffa012bc <_printf_hex>;
ffa00e0c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e10:	00 e1 ac 00 	R0.L = 0xac;		/* (172)	R0=0xff9000ac(-7339860) */
ffa00e14:	0f 30       	R1 = R7;
ffa00e16:	00 e3 53 02 	CALL 0xffa012bc <_printf_hex>;
ffa00e1a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000ac(-7339860) */
ffa00e1e:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00e22:	00 e3 e7 01 	CALL 0xffa011f0 <_printf_str>;
ffa00e26:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa00e28:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa00e2c:	08 08       	CC = R0 == R1;
ffa00e2e:	08 18       	IF CC JUMP 0xffa00e3e <_main+0x142>;
ffa00e30:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa00e34:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e38:	0e 30       	R1 = R6;
ffa00e3a:	00 e3 41 02 	CALL 0xffa012bc <_printf_hex>;
ffa00e3e:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa00e40:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa00e44:	08 08       	CC = R0 == R1;
ffa00e46:	08 18       	IF CC JUMP 0xffa00e56 <_main+0x15a>;
ffa00e48:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e4c:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e50:	0e 30       	R1 = R6;
ffa00e52:	00 e3 35 02 	CALL 0xffa012bc <_printf_hex>;
ffa00e56:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa00e58:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa00e5c:	08 08       	CC = R0 == R1;
ffa00e5e:	08 18       	IF CC JUMP 0xffa00e6e <_main+0x172>;
ffa00e60:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e64:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e68:	0e 30       	R1 = R6;
ffa00e6a:	00 e3 29 02 	CALL 0xffa012bc <_printf_hex>;
ffa00e6e:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa00e72:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa00e76:	55 08       	CC = P5 == P2;
ffa00e78:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00e7a:	bc 17       	IF !CC JUMP 0xffa00df2 <_main+0xf6> (BP);
ffa00e7c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e80:	00 e1 b4 00 	R0.L = 0xb4;		/* (180)	R0=0xff9000b4(-7339852) */
ffa00e84:	00 e3 b6 01 	CALL 0xffa011f0 <_printf_str>;
ffa00e88:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0fff8(-4128776) */
ffa00e8c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00e8e:	0a e1 84 06 	P2.L = 0x684;		/* (1668)	P2=0xffc00684(-4192636) */
ffa00e92:	10 97       	W[P2] = R0;
ffa00e94:	24 00       	SSYNC;
ffa00e96:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800684 */
ffa00e9a:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00e9e:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00ea0:	16 93       	[P2] = R6;
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
ffa00ece:	00 e3 f5 0c 	CALL 0xffa028b8 <_bfin_EMAC_init>;
ffa00ed2:	00 0c       	CC = R0 == 0x0;
ffa00ed4:	20 30       	R4 = R0;
ffa00ed6:	2f 19       	IF CC JUMP 0xffa01134 <_main+0x438>;
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
ffa00f40:	0a e1 d0 0b 	P2.L = 0xbd0;		/* (3024)	P2=0xff900bd0 <_g_sampR> */
ffa00f44:	16 93       	[P2] = R6;
ffa00f46:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bd0 <_g_sampR> */
ffa00f4a:	0a e1 b4 0b 	P2.L = 0xbb4;		/* (2996)	P2=0xff900bb4 <_g_sampW> */
ffa00f4e:	16 93       	[P2] = R6;
ffa00f50:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb4 <_g_sampW> */
ffa00f54:	0a e1 d8 0b 	P2.L = 0xbd8;		/* (3032)	P2=0xff900bd8 <_g_sampOff> */
ffa00f58:	16 93       	[P2] = R6;
ffa00f5a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bd8 <_g_sampOff> */
ffa00f5e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00f60:	0a e1 a8 0b 	P2.L = 0xba8;		/* (2984)	P2=0xff900ba8 <_g_sampMode> */
ffa00f64:	10 9b       	B[P2] = R0;
ffa00f66:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00f68:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba8 <_g_sampMode> */
ffa00f6c:	d8 4f       	R0 <<= 0x1b;
ffa00f6e:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_sampInc> */
ffa00f72:	10 93       	[P2] = R0;
ffa00f74:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb8 <_g_sampInc> */
ffa00f78:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f7a:	0a e1 c8 0b 	P2.L = 0xbc8;		/* (3016)	P2=0xff900bc8 <_g_sampCh> */
ffa00f7e:	10 9b       	B[P2] = R0;
ffa00f80:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bc8(-4191288) */
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
ffa00fb4:	27 e1 00 02 	R7 = 0x200 (X);		/*		R7=0x200(512) */
ffa00fb8:	0a e1 0c 01 	P2.L = 0x10c;		/* (268)	P2=0xffc0010c(-4194036) */
ffa00fbc:	17 93       	[P2] = R7;
ffa00fbe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90010c */
ffa00fc2:	0a e1 b0 0b 	P2.L = 0xbb0;		/* (2992)	P2=0xff900bb0 <_wrptr> */
ffa00fc6:	16 93       	[P2] = R6;
ffa00fc8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb0 <_wrptr> */
ffa00fcc:	0a e1 ac 0b 	P2.L = 0xbac;		/* (2988)	P2=0xff900bac <_trptr> */
ffa00fd0:	16 93       	[P2] = R6;
ffa00fd2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bac <_trptr> */
ffa00fd6:	0a e1 cc 0b 	P2.L = 0xbcc;		/* (3020)	P2=0xff900bcc <_g_dropped> */
ffa00fda:	16 93       	[P2] = R6;
ffa00fdc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bcc <_g_dropped> */
ffa00fe0:	0a e1 a4 0b 	P2.L = 0xba4;		/* (2980)	P2=0xff900ba4 <_g_nextFlag> */
ffa00fe4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900544(-7338684) */
ffa00fe8:	16 93       	[P2] = R6;
ffa00fea:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa00fee:	00 e3 01 01 	CALL 0xffa011f0 <_printf_str>;
ffa00ff2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ba4(-4191324) */
ffa00ff6:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa00ffa:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00ffe:	10 97       	W[P2] = R0;
ffa01000:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa01004:	22 6c       	P2 += 0x4;		/* (  4) */
ffa01006:	10 97       	W[P2] = R0;
ffa01008:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0100c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0100e:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01012:	10 97       	W[P2] = R0;
ffa01014:	24 00       	SSYNC;
ffa01016:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa01018:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa0101c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0101e:	ff e3 15 fa 	CALL 0xffa00448 <_radio_init>;
ffa01022:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa01024:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa01028:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa0102c:	ff e3 0e fa 	CALL 0xffa00448 <_radio_init>;
ffa01030:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa01034:	07 30       	R0 = R7;
ffa01036:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa0103a:	ff e3 07 fa 	CALL 0xffa00448 <_radio_init>;
ffa0103e:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa01040:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01042:	ff e3 73 f9 	CALL 0xffa00328 <_radio_set_rx>;
ffa01046:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa0104a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0104c:	ff e3 6e f9 	CALL 0xffa00328 <_radio_set_rx>;
ffa01050:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa01054:	07 30       	R0 = R7;
ffa01056:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa0105a:	46 e1 62 10 	R6.H = 0x1062;		/* (4194)	R6=0x10620000(274857984) */
ffa0105e:	ff e3 65 f9 	CALL 0xffa00328 <_radio_set_rx>;
ffa01062:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01064:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa01066:	0d e1 00 07 	P5.L = 0x700;		/* (1792)	P5=0xffc00700(-4192512) */
ffa0106a:	06 e1 d3 4d 	R6.L = 0x4dd3;		/* (19923)	R6=0x10624dd3(274877907) */
ffa0106e:	04 30       	R0 = R4;
ffa01070:	ff e3 a0 fc 	CALL 0xffa009b0 <_eth_listen>;
ffa01074:	68 95       	R0 = W[P5] (X);
ffa01076:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01078:	42 18       	IF CC JUMP 0xffa010fc <_main+0x400>;
ffa0107a:	00 00       	NOP;
ffa0107c:	00 00       	NOP;
ffa0107e:	00 00       	NOP;
ffa01080:	68 95       	R0 = W[P5] (X);
ffa01082:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01084:	45 18       	IF CC JUMP 0xffa0110e <_main+0x412>;
ffa01086:	00 00       	NOP;
ffa01088:	00 00       	NOP;
ffa0108a:	00 00       	NOP;
ffa0108c:	68 95       	R0 = W[P5] (X);
ffa0108e:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa01090:	49 18       	IF CC JUMP 0xffa01122 <_main+0x426>;
ffa01092:	20 e1 28 01 	R0 = 0x128 (X);		/*		R0=0x128(296) */
ffa01096:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0109a:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0109e:	69 95       	R1 = W[P5] (X);
ffa010a0:	08 54       	R0 = R0 & R1;
ffa010a2:	21 e1 28 01 	R1 = 0x128 (X);		/*		R1=0x128(296) */
ffa010a6:	08 08       	CC = R0 == R1;
ffa010a8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa010aa:	38 07       	IF CC R7 = R0;
ffa010ac:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa010b0:	10 97       	W[P2] = R0;
ffa010b2:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800708 */
ffa010b6:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa010ba:	10 91       	R0 = [P2];
ffa010bc:	80 c0 06 18 	A1 = R0.L * R6.L (FU);
ffa010c0:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa010c4:	81 c0 06 86 	A1 += R0.H * R6.L, A0 = R0.H * R6.H (FU);
ffa010c8:	81 c0 30 98 	A1 += R6.H * R0.L (FU);
ffa010cc:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa010d0:	0b c4 00 80 	A0 += A1;
ffa010d4:	8b c0 00 38 	R0 = A0 (FU);
ffa010d8:	82 c6 d8 83 	R1 = R0 >> 0x5;
ffa010dc:	0d 08       	CC = R5 == R1;
ffa010de:	c8 1b       	IF CC JUMP 0xffa0106e <_main+0x372>;
ffa010e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa010e4:	20 e1 00 80 	R0 = -0x8000 (X);		/*		R0=0xffff8000(-32768) */
ffa010e8:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa010ec:	10 97       	W[P2] = R0;
ffa010ee:	04 30       	R0 = R4;
ffa010f0:	29 30       	R5 = R1;
ffa010f2:	ff e3 5f fc 	CALL 0xffa009b0 <_eth_listen>;
ffa010f6:	68 95       	R0 = W[P5] (X);
ffa010f8:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa010fa:	c2 17       	IF !CC JUMP 0xffa0107e <_main+0x382> (BP);
ffa010fc:	7a 43       	R2 = R7.B (Z);
ffa010fe:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa01100:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa01102:	ff e3 81 fc 	CALL 0xffa00a04 <_getRadioPacket>;
ffa01106:	68 95       	R0 = W[P5] (X);
ffa01108:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0110a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0110c:	bf 17       	IF !CC JUMP 0xffa0108a <_main+0x38e> (BP);
ffa0110e:	7a 43       	R2 = R7.B (Z);
ffa01110:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01114:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa01116:	ff e3 77 fc 	CALL 0xffa00a04 <_getRadioPacket>;
ffa0111a:	68 95       	R0 = W[P5] (X);
ffa0111c:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa0111e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01120:	b9 17       	IF !CC JUMP 0xffa01092 <_main+0x396> (BP);
ffa01122:	7a 43       	R2 = R7.B (Z);
ffa01124:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01128:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa0112c:	ff e3 6c fc 	CALL 0xffa00a04 <_getRadioPacket>;
ffa01130:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01132:	b0 2f       	JUMP.S 0xffa01092 <_main+0x396>;
ffa01134:	00 e3 9c 0d 	CALL 0xffa02c6c <_DHCP_req>;
ffa01138:	d0 2e       	JUMP.S 0xffa00ed8 <_main+0x1dc>;
	...

ffa0113c <_uart_str>:
ffa0113c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa01140:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01144:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa01148:	08 32       	P1 = R0;
ffa0114a:	50 95       	R0 = W[P2] (X);
ffa0114c:	c0 42       	R0 = R0.L (Z);
ffa0114e:	08 0c       	CC = R0 == 0x1;
ffa01150:	06 18       	IF CC JUMP 0xffa0115c <_uart_str+0x20>;
ffa01152:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01154:	02 30       	R0 = R2;
ffa01156:	01 e8 00 00 	UNLINK;
ffa0115a:	10 00       	RTS;
ffa0115c:	48 99       	R0 = B[P1] (X);
ffa0115e:	01 43       	R1 = R0.B (X);
ffa01160:	01 0c       	CC = R1 == 0x0;
ffa01162:	f8 1b       	IF CC JUMP 0xffa01152 <_uart_str+0x16>;
ffa01164:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa01168:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0116a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0116c:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa01170:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa01174:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa01176:	b2 e0 1c 00 	LSETUP(0xffa0117a <_uart_str+0x3e>, 0xffa011ae <_uart_str+0x72>) LC1 = P0;
ffa0117a:	19 08       	CC = R1 == R3;
ffa0117c:	1b 18       	IF CC JUMP 0xffa011b2 <_uart_str+0x76>;
ffa0117e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa01182:	00 43       	R0 = R0.B (X);
ffa01184:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa01188:	10 97       	W[P2] = R0;
ffa0118a:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa0118c:	50 95       	R0 = W[P2] (X);
ffa0118e:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01190:	0a 10       	IF !CC JUMP 0xffa011a4 <_uart_str+0x68>;
ffa01192:	00 00       	NOP;
ffa01194:	00 00       	NOP;
ffa01196:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa0119a:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa0119e:	50 95       	R0 = W[P2] (X);
ffa011a0:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa011a2:	f9 1f       	IF CC JUMP 0xffa01194 <_uart_str+0x58> (BP);
ffa011a4:	48 99       	R0 = B[P1] (X);
ffa011a6:	01 43       	R1 = R0.B (X);
ffa011a8:	01 0c       	CC = R1 == 0x0;
ffa011aa:	0a 64       	R2 += 0x1;		/* (  1) */
ffa011ac:	d4 1b       	IF CC JUMP 0xffa01154 <_uart_str+0x18>;
ffa011ae:	09 6c       	P1 += 0x1;		/* (  1) */
ffa011b0:	d2 2f       	JUMP.S 0xffa01154 <_uart_str+0x18>;
ffa011b2:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa011b4:	20 9f       	W[I0] = R0.L;
ffa011b6:	02 20       	JUMP.S 0xffa011ba <_uart_str+0x7e>;
ffa011b8:	00 00       	NOP;
ffa011ba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa011be:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa011c2:	50 95       	R0 = W[P2] (X);
ffa011c4:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa011c6:	f9 1f       	IF CC JUMP 0xffa011b8 <_uart_str+0x7c> (BP);
ffa011c8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa011cc:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa011ce:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa011d2:	10 97       	W[P2] = R0;
ffa011d4:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa011d6:	50 95       	R0 = W[P2] (X);
ffa011d8:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa011da:	e5 13       	IF !CC JUMP 0xffa011a4 <_uart_str+0x68>;
ffa011dc:	00 00       	NOP;
ffa011de:	00 00       	NOP;
ffa011e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa011e4:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa011e8:	50 95       	R0 = W[P2] (X);
ffa011ea:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa011ec:	f9 1f       	IF CC JUMP 0xffa011de <_uart_str+0xa2> (BP);
ffa011ee:	db 2f       	JUMP.S 0xffa011a4 <_uart_str+0x68>;

ffa011f0 <_printf_str>:
ffa011f0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa011f4:	01 e8 00 00 	UNLINK;
ffa011f8:	ff e2 a2 ff 	JUMP.L 0xffa0113c <_uart_str>;

ffa011fc <_printf_newline>:
ffa011fc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01200:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa01204:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa01208:	01 e8 00 00 	UNLINK;
ffa0120c:	ff e2 98 ff 	JUMP.L 0xffa0113c <_uart_str>;

ffa01210 <_printf_hex_byte>:
ffa01210:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01212:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01216:	28 32       	P5 = R0;
ffa01218:	39 30       	R7 = R1;
ffa0121a:	00 e3 b1 01 	CALL 0xffa0157c <_strlen_>;
ffa0121e:	10 30       	R2 = R0;
ffa01220:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa01224:	02 09       	CC = R2 <= R0;
ffa01226:	41 10       	IF !CC JUMP 0xffa012a8 <_printf_hex_byte+0x98>;
ffa01228:	02 0d       	CC = R2 <= 0x0;
ffa0122a:	44 18       	IF CC JUMP 0xffa012b2 <_printf_hex_byte+0xa2>;
ffa0122c:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa01230:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01232:	08 e1 00 0e 	P0.L = 0xe00;		/* (3584)	P0=0xff900e00 <_printf_out> */
ffa01236:	09 32       	P1 = R1;
ffa01238:	42 91       	P2 = [P0];
ffa0123a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0123c:	68 98       	R0 = B[P5++] (X);
ffa0123e:	0a 08       	CC = R2 == R1;
ffa01240:	8a 5a       	P2 = P2 + P1;
ffa01242:	10 9b       	B[P2] = R0;
ffa01244:	f9 17       	IF !CC JUMP 0xffa01236 <_printf_hex_byte+0x26> (BP);
ffa01246:	0a 32       	P1 = R2;
ffa01248:	42 91       	P2 = [P0];
ffa0124a:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0124c:	22 32       	P4 = R2;
ffa0124e:	79 43       	R1 = R7.B (Z);
ffa01250:	8a 5a       	P2 = P2 + P1;
ffa01252:	10 9b       	B[P2] = R0;
ffa01254:	42 91       	P2 = [P0];
ffa01256:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa01258:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0125c:	11 6c       	P1 += 0x2;		/* (  2) */
ffa0125e:	a2 5a       	P2 = P2 + P4;
ffa01260:	10 9b       	B[P2] = R0;
ffa01262:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa01264:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa01266:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa01268:	01 30       	R0 = R1;
ffa0126a:	10 40       	R0 >>>= R2;
ffa0126c:	18 54       	R0 = R0 & R3;
ffa0126e:	38 09       	CC = R0 <= R7;
ffa01270:	1a 1c       	IF CC JUMP 0xffa012a4 <_printf_hex_byte+0x94> (BP);
ffa01272:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01274:	42 91       	P2 = [P0];
ffa01276:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa01278:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900700 */
ffa0127c:	22 0c       	CC = R2 == -0x4;
ffa0127e:	8a 5a       	P2 = P2 + P1;
ffa01280:	0d e1 00 0e 	P5.L = 0xe00;		/* (3584)	P5=0xff900e00 <_printf_out> */
ffa01284:	10 9b       	B[P2] = R0;
ffa01286:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01288:	f0 17       	IF !CC JUMP 0xffa01268 <_printf_hex_byte+0x58> (BP);
ffa0128a:	6a 91       	P2 = [P5];
ffa0128c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0128e:	94 5a       	P2 = P4 + P2;
ffa01290:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa01294:	28 91       	R0 = [P5];
ffa01296:	ff e3 53 ff 	CALL 0xffa0113c <_uart_str>;
ffa0129a:	01 e8 00 00 	UNLINK;
ffa0129e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa012a0:	bc 05       	(R7:7, P5:4) = [SP++];
ffa012a2:	10 00       	RTS;
ffa012a4:	80 65       	R0 += 0x30;		/* ( 48) */
ffa012a6:	e7 2f       	JUMP.S 0xffa01274 <_printf_hex_byte+0x64>;
ffa012a8:	01 e8 00 00 	UNLINK;
ffa012ac:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa012ae:	bc 05       	(R7:7, P5:4) = [SP++];
ffa012b0:	10 00       	RTS;
ffa012b2:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e00 <_printf_out> */
ffa012b6:	08 e1 00 0e 	P0.L = 0xe00;		/* (3584)	P0=0xff900e00 <_printf_out> */
ffa012ba:	c6 2f       	JUMP.S 0xffa01246 <_printf_hex_byte+0x36>;

ffa012bc <_printf_hex>:
ffa012bc:	fb 05       	[--SP] = (R7:7, P5:3);
ffa012be:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa012c2:	28 32       	P5 = R0;
ffa012c4:	39 30       	R7 = R1;
ffa012c6:	00 e3 5b 01 	CALL 0xffa0157c <_strlen_>;
ffa012ca:	10 30       	R2 = R0;
ffa012cc:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa012d0:	02 09       	CC = R2 <= R0;
ffa012d2:	47 10       	IF !CC JUMP 0xffa01360 <_printf_hex+0xa4>;
ffa012d4:	02 0d       	CC = R2 <= 0x0;
ffa012d6:	4a 18       	IF CC JUMP 0xffa0136a <_printf_hex+0xae>;
ffa012d8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900900 */
ffa012dc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa012de:	09 e1 00 0e 	P1.L = 0xe00;		/* (3584)	P1=0xff900e00 <_printf_out> */
ffa012e2:	01 32       	P0 = R1;
ffa012e4:	4a 91       	P2 = [P1];
ffa012e6:	09 64       	R1 += 0x1;		/* (  1) */
ffa012e8:	68 98       	R0 = B[P5++] (X);
ffa012ea:	0a 08       	CC = R2 == R1;
ffa012ec:	82 5a       	P2 = P2 + P0;
ffa012ee:	10 9b       	B[P2] = R0;
ffa012f0:	f9 17       	IF !CC JUMP 0xffa012e2 <_printf_hex+0x26> (BP);
ffa012f2:	02 32       	P0 = R2;
ffa012f4:	4a 91       	P2 = [P1];
ffa012f6:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa012f8:	1a 32       	P3 = R2;
ffa012fa:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa012fc:	82 5a       	P2 = P2 + P0;
ffa012fe:	10 9b       	B[P2] = R0;
ffa01300:	4a 91       	P2 = [P1];
ffa01302:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa01304:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01308:	10 6c       	P0 += 0x2;		/* (  2) */
ffa0130a:	9a 5a       	P2 = P2 + P3;
ffa0130c:	10 9b       	B[P2] = R0;
ffa0130e:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa01310:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa01312:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa01314:	b2 e0 10 50 	LSETUP(0xffa01318 <_printf_hex+0x5c>, 0xffa01334 <_printf_hex+0x78>) LC1 = P5;
ffa01318:	07 30       	R0 = R7;
ffa0131a:	08 40       	R0 >>>= R1;
ffa0131c:	10 54       	R0 = R0 & R2;
ffa0131e:	18 09       	CC = R0 <= R3;
ffa01320:	1e 1c       	IF CC JUMP 0xffa0135c <_printf_hex+0xa0> (BP);
ffa01322:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01324:	4a 91       	P2 = [P1];
ffa01326:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900bdc <_g_outpkt> */
ffa0132a:	0c e1 00 0e 	P4.L = 0xe00;		/* (3584)	P4=0xff900e00 <_printf_out> */
ffa0132e:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa01330:	82 5a       	P2 = P2 + P0;
ffa01332:	10 9b       	B[P2] = R0;
ffa01334:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01336:	62 91       	P2 = [P4];
ffa01338:	4b 32       	P1 = P3;
ffa0133a:	49 6c       	P1 += 0x9;		/* (  9) */
ffa0133c:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0133e:	8a 5a       	P2 = P2 + P1;
ffa01340:	10 9b       	B[P2] = R0;
ffa01342:	62 91       	P2 = [P4];
ffa01344:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01346:	8a 5a       	P2 = P2 + P1;
ffa01348:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa0134c:	20 91       	R0 = [P4];
ffa0134e:	ff e3 f7 fe 	CALL 0xffa0113c <_uart_str>;
ffa01352:	01 e8 00 00 	UNLINK;
ffa01356:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01358:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0135a:	10 00       	RTS;
ffa0135c:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0135e:	e3 2f       	JUMP.S 0xffa01324 <_printf_hex+0x68>;
ffa01360:	01 e8 00 00 	UNLINK;
ffa01364:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01366:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01368:	10 00       	RTS;
ffa0136a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e00 <_printf_out> */
ffa0136e:	09 e1 00 0e 	P1.L = 0xe00;		/* (3584)	P1=0xff900e00 <_printf_out> */
ffa01372:	c0 2f       	JUMP.S 0xffa012f2 <_printf_hex+0x36>;

ffa01374 <_printf_int>:
ffa01374:	f3 05       	[--SP] = (R7:6, P5:3);
ffa01376:	01 0c       	CC = R1 == 0x0;
ffa01378:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0137c:	28 32       	P5 = R0;
ffa0137e:	39 30       	R7 = R1;
ffa01380:	41 14       	IF !CC JUMP 0xffa01402 <_printf_int+0x8e> (BP);
ffa01382:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bb4 <_g_sampW> */
ffa01386:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa0138a:	5a 91       	P2 = [P3];
ffa0138c:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0138e:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa01390:	10 9b       	B[P2] = R0;
ffa01392:	45 30       	R0 = P5;
ffa01394:	00 e3 f4 00 	CALL 0xffa0157c <_strlen_>;
ffa01398:	c6 50       	R3 = R6 + R0;
ffa0139a:	10 30       	R2 = R0;
ffa0139c:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa013a0:	03 09       	CC = R3 <= R0;
ffa013a2:	4e 10       	IF !CC JUMP 0xffa0143e <_printf_int+0xca>;
ffa013a4:	02 0d       	CC = R2 <= 0x0;
ffa013a6:	79 18       	IF CC JUMP 0xffa01498 <_printf_int+0x124>;
ffa013a8:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e00 <_printf_out> */
ffa013ac:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa013ae:	08 e1 00 0e 	P0.L = 0xe00;		/* (3584)	P0=0xff900e00 <_printf_out> */
ffa013b2:	09 32       	P1 = R1;
ffa013b4:	42 91       	P2 = [P0];
ffa013b6:	09 64       	R1 += 0x1;		/* (  1) */
ffa013b8:	68 98       	R0 = B[P5++] (X);
ffa013ba:	0a 08       	CC = R2 == R1;
ffa013bc:	8a 5a       	P2 = P2 + P1;
ffa013be:	10 9b       	B[P2] = R0;
ffa013c0:	f9 17       	IF !CC JUMP 0xffa013b2 <_printf_int+0x3e> (BP);
ffa013c2:	06 0d       	CC = R6 <= 0x0;
ffa013c4:	12 18       	IF CC JUMP 0xffa013e8 <_printf_int+0x74>;
ffa013c6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa013c8:	00 91       	R0 = [P0];
ffa013ca:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa013ce:	5a 91 00 00 
ffa013d2:	08 50       	R0 = R0 + R1;
ffa013d4:	08 32       	P1 = R0;
ffa013d6:	0e 52       	R0 = R6 - R1;
ffa013d8:	28 32       	P5 = R0;
ffa013da:	09 64       	R1 += 0x1;		/* (  1) */
ffa013dc:	0e 08       	CC = R6 == R1;
ffa013de:	aa 5a       	P2 = P2 + P5;
ffa013e0:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa013e4:	08 9b       	B[P1] = R0;
ffa013e6:	f1 17       	IF !CC JUMP 0xffa013c8 <_printf_int+0x54> (BP);
ffa013e8:	0b 32       	P1 = R3;
ffa013ea:	42 91       	P2 = [P0];
ffa013ec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa013ee:	91 5a       	P2 = P1 + P2;
ffa013f0:	10 9b       	B[P2] = R0;
ffa013f2:	00 91       	R0 = [P0];
ffa013f4:	ff e3 a4 fe 	CALL 0xffa0113c <_uart_str>;
ffa013f8:	01 e8 00 00 	UNLINK;
ffa013fc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa013fe:	b3 05       	(R7:6, P5:3) = [SP++];
ffa01400:	10 00       	RTS;
ffa01402:	01 0d       	CC = R1 <= 0x0;
ffa01404:	22 18       	IF CC JUMP 0xffa01448 <_printf_int+0xd4>;
ffa01406:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa0140a:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa0140c:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa01410:	05 20       	JUMP.S 0xffa0141a <_printf_int+0xa6>;
ffa01412:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa01416:	06 08       	CC = R6 == R0;
ffa01418:	bd 1b       	IF CC JUMP 0xffa01392 <_printf_int+0x1e>;
ffa0141a:	07 30       	R0 = R7;
ffa0141c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0141e:	00 e3 83 00 	CALL 0xffa01524 <_mod>;
ffa01422:	0e 32       	P1 = R6;
ffa01424:	5a 91       	P2 = [P3];
ffa01426:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01428:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0142a:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0142c:	8a 5a       	P2 = P2 + P1;
ffa0142e:	10 9b       	B[P2] = R0;
ffa01430:	07 30       	R0 = R7;
ffa01432:	00 e3 6b 00 	CALL 0xffa01508 <_div>;
ffa01436:	00 0d       	CC = R0 <= 0x0;
ffa01438:	38 30       	R7 = R0;
ffa0143a:	ec 17       	IF !CC JUMP 0xffa01412 <_printf_int+0x9e> (BP);
ffa0143c:	ab 2f       	JUMP.S 0xffa01392 <_printf_int+0x1e>;
ffa0143e:	01 e8 00 00 	UNLINK;
ffa01442:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01444:	b3 05       	(R7:6, P5:3) = [SP++];
ffa01446:	10 00       	RTS;
ffa01448:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0144a:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa0144c:	f8 4f       	R0 <<= 0x1f;
ffa0144e:	f8 53       	R7 = R0 - R7;
ffa01450:	07 0d       	CC = R7 <= 0x0;
ffa01452:	2c 18       	IF CC JUMP 0xffa014aa <_printf_int+0x136>;
ffa01454:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa01458:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa0145a:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa0145e:	05 20       	JUMP.S 0xffa01468 <_printf_int+0xf4>;
ffa01460:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa01464:	4c 08       	CC = P4 == P1;
ffa01466:	1e 18       	IF CC JUMP 0xffa014a2 <_printf_int+0x12e>;
ffa01468:	07 30       	R0 = R7;
ffa0146a:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0146c:	00 e3 5c 00 	CALL 0xffa01524 <_mod>;
ffa01470:	5a 91       	P2 = [P3];
ffa01472:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01474:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01476:	a2 5a       	P2 = P2 + P4;
ffa01478:	10 9b       	B[P2] = R0;
ffa0147a:	07 30       	R0 = R7;
ffa0147c:	00 e3 46 00 	CALL 0xffa01508 <_div>;
ffa01480:	00 0d       	CC = R0 <= 0x0;
ffa01482:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa01484:	38 30       	R7 = R0;
ffa01486:	ed 17       	IF !CC JUMP 0xffa01460 <_printf_int+0xec> (BP);
ffa01488:	74 30       	R6 = P4;
ffa0148a:	4c 32       	P1 = P4;
ffa0148c:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0148e:	5a 91       	P2 = [P3];
ffa01490:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa01492:	8a 5a       	P2 = P2 + P1;
ffa01494:	10 9b       	B[P2] = R0;
ffa01496:	7e 2f       	JUMP.S 0xffa01392 <_printf_int+0x1e>;
ffa01498:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e00 <_printf_out> */
ffa0149c:	08 e1 00 0e 	P0.L = 0xe00;		/* (3584)	P0=0xff900e00 <_printf_out> */
ffa014a0:	91 2f       	JUMP.S 0xffa013c2 <_printf_int+0x4e>;
ffa014a2:	4c 32       	P1 = P4;
ffa014a4:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa014a8:	f3 2f       	JUMP.S 0xffa0148e <_printf_int+0x11a>;
ffa014aa:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa014ae:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa014b0:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa014b2:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa014b6:	ec 2f       	JUMP.S 0xffa0148e <_printf_int+0x11a>;

ffa014b8 <_printf_ip>:
ffa014b8:	70 05       	[--SP] = (R7:6);
ffa014ba:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa014be:	39 30       	R7 = R1;
ffa014c0:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa014c4:	49 43       	R1 = R1.B (Z);
ffa014c6:	ff e3 57 ff 	CALL 0xffa01374 <_printf_int>;
ffa014ca:	06 e1 88 00 	R6.L = 0x88;		/* (136)	R6=0xff900088(-7339896) */
ffa014ce:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa014d2:	49 43       	R1 = R1.B (Z);
ffa014d4:	06 30       	R0 = R6;
ffa014d6:	ff e3 4f ff 	CALL 0xffa01374 <_printf_int>;
ffa014da:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa014de:	49 43       	R1 = R1.B (Z);
ffa014e0:	06 30       	R0 = R6;
ffa014e2:	c7 4e       	R7 >>= 0x18;
ffa014e4:	ff e3 48 ff 	CALL 0xffa01374 <_printf_int>;
ffa014e8:	0f 30       	R1 = R7;
ffa014ea:	06 30       	R0 = R6;
ffa014ec:	ff e3 44 ff 	CALL 0xffa01374 <_printf_int>;
ffa014f0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa014f4:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa014f8:	ff e3 7c fe 	CALL 0xffa011f0 <_printf_str>;
ffa014fc:	01 e8 00 00 	UNLINK;
ffa01500:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01502:	30 05       	(R7:6) = [SP++];
ffa01504:	10 00       	RTS;
	...

ffa01508 <_div>:
ffa01508:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0150c:	08 4f       	R0 <<= 0x1;
ffa0150e:	48 42       	DIVS (R0, R1);
ffa01510:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa01512:	b2 e0 03 20 	LSETUP(0xffa01516 <_div+0xe>, 0xffa01518 <_div+0x10>) LC1 = P2;
ffa01516:	08 42       	DIVQ (R0, R1);
ffa01518:	00 00       	NOP;
ffa0151a:	80 42       	R0 = R0.L (X);
ffa0151c:	01 e8 00 00 	UNLINK;
ffa01520:	10 00       	RTS;
	...

ffa01524 <_mod>:
ffa01524:	70 05       	[--SP] = (R7:6);
ffa01526:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0152a:	30 30       	R6 = R0;
ffa0152c:	39 30       	R7 = R1;
ffa0152e:	ff e3 ed ff 	CALL 0xffa01508 <_div>;
ffa01532:	c7 40       	R7 *= R0;
ffa01534:	01 e8 00 00 	UNLINK;
ffa01538:	be 53       	R6 = R6 - R7;
ffa0153a:	06 30       	R0 = R6;
ffa0153c:	30 05       	(R7:6) = [SP++];
ffa0153e:	10 00       	RTS;

ffa01540 <_memcpy_>:
ffa01540:	02 0d       	CC = R2 <= 0x0;
ffa01542:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01546:	08 32       	P1 = R0;
ffa01548:	11 32       	P2 = R1;
ffa0154a:	08 18       	IF CC JUMP 0xffa0155a <_memcpy_+0x1a>;
ffa0154c:	00 00       	NOP;
ffa0154e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01550:	09 64       	R1 += 0x1;		/* (  1) */
ffa01552:	48 98       	R0 = B[P1++] (X);
ffa01554:	0a 08       	CC = R2 == R1;
ffa01556:	10 9a       	B[P2++] = R0;
ffa01558:	fc 17       	IF !CC JUMP 0xffa01550 <_memcpy_+0x10> (BP);
ffa0155a:	01 e8 00 00 	UNLINK;
ffa0155e:	10 00       	RTS;

ffa01560 <_memset_>:
ffa01560:	02 0d       	CC = R2 <= 0x0;
ffa01562:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01566:	10 32       	P2 = R0;
ffa01568:	06 18       	IF CC JUMP 0xffa01574 <_memset_+0x14>;
ffa0156a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0156c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0156e:	02 08       	CC = R2 == R0;
ffa01570:	11 9a       	B[P2++] = R1;
ffa01572:	fd 17       	IF !CC JUMP 0xffa0156c <_memset_+0xc> (BP);
ffa01574:	01 e8 00 00 	UNLINK;
ffa01578:	10 00       	RTS;
	...

ffa0157c <_strlen_>:
ffa0157c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01580:	10 32       	P2 = R0;
ffa01582:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01584:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa01588:	b2 e0 06 10 	LSETUP(0xffa0158c <_strlen_+0x10>, 0xffa01594 <_strlen_+0x18>) LC1 = P1;
ffa0158c:	50 99       	R0 = B[P2] (X);
ffa0158e:	00 0c       	CC = R0 == 0x0;
ffa01590:	04 18       	IF CC JUMP 0xffa01598 <_strlen_+0x1c>;
ffa01592:	09 64       	R1 += 0x1;		/* (  1) */
ffa01594:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01596:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01598:	01 30       	R0 = R1;
ffa0159a:	01 e8 00 00 	UNLINK;
ffa0159e:	10 00       	RTS;

ffa015a0 <_strcpy_>:
ffa015a0:	12 32       	P2 = R2;
ffa015a2:	c5 04       	[--SP] = (P5:5);
ffa015a4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa015a8:	29 32       	P5 = R1;
ffa015aa:	00 32       	P0 = R0;
ffa015ac:	51 99       	R1 = B[P2] (X);
ffa015ae:	08 43       	R0 = R1.B (X);
ffa015b0:	00 0c       	CC = R0 == 0x0;
ffa015b2:	17 18       	IF CC JUMP 0xffa015e0 <_strcpy_+0x40>;
ffa015b4:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa015b6:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa015b8:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa015bc:	b2 e0 09 10 	LSETUP(0xffa015c0 <_strcpy_+0x20>, 0xffa015ce <_strcpy_+0x2e>) LC1 = P1;
ffa015c0:	01 9a       	B[P0++] = R1;
ffa015c2:	51 99       	R1 = B[P2] (X);
ffa015c4:	08 43       	R0 = R1.B (X);
ffa015c6:	00 0c       	CC = R0 == 0x0;
ffa015c8:	0a 64       	R2 += 0x1;		/* (  1) */
ffa015ca:	03 18       	IF CC JUMP 0xffa015d0 <_strcpy_+0x30>;
ffa015cc:	00 00       	NOP;
ffa015ce:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa015d0:	01 e8 00 00 	UNLINK;
ffa015d4:	28 91       	R0 = [P5];
ffa015d6:	10 50       	R0 = R0 + R2;
ffa015d8:	28 93       	[P5] = R0;
ffa015da:	40 30       	R0 = P0;
ffa015dc:	85 04       	(P5:5) = [SP++];
ffa015de:	10 00       	RTS;
ffa015e0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa015e2:	f7 2f       	JUMP.S 0xffa015d0 <_strcpy_+0x30>;

ffa015e4 <_strprepend>:
ffa015e4:	fc 05       	[--SP] = (R7:7, P5:4);
ffa015e6:	21 32       	P4 = R1;
ffa015e8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa015ec:	38 30       	R7 = R0;
ffa015ee:	02 30       	R0 = R2;
ffa015f0:	2a 32       	P5 = R2;
ffa015f2:	ff e3 c5 ff 	CALL 0xffa0157c <_strlen_>;
ffa015f6:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa015fa:	20 91 00 00 
ffa015fe:	02 0d       	CC = R2 <= 0x0;
ffa01600:	0a 18       	IF CC JUMP 0xffa01614 <_strprepend+0x30>;
ffa01602:	07 52       	R0 = R7 - R0;
ffa01604:	10 32       	P2 = R0;
ffa01606:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01608:	09 64       	R1 += 0x1;		/* (  1) */
ffa0160a:	68 98       	R0 = B[P5++] (X);
ffa0160c:	0a 08       	CC = R2 == R1;
ffa0160e:	10 9a       	B[P2++] = R0;
ffa01610:	fc 17       	IF !CC JUMP 0xffa01608 <_strprepend+0x24> (BP);
ffa01612:	20 91       	R0 = [P4];
ffa01614:	01 e8 00 00 	UNLINK;
ffa01618:	07 52       	R0 = R7 - R0;
ffa0161a:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0161c:	10 00       	RTS;
	...

ffa01620 <_strcmp>:
ffa01620:	10 32       	P2 = R0;
ffa01622:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01626:	01 32       	P0 = R1;
ffa01628:	51 99       	R1 = B[P2] (X);
ffa0162a:	01 0c       	CC = R1 == 0x0;
ffa0162c:	1b 18       	IF CC JUMP 0xffa01662 <_strcmp+0x42>;
ffa0162e:	00 00       	NOP;
ffa01630:	00 00       	NOP;
ffa01632:	00 00       	NOP;
ffa01634:	40 99       	R0 = B[P0] (X);
ffa01636:	00 0c       	CC = R0 == 0x0;
ffa01638:	15 18       	IF CC JUMP 0xffa01662 <_strcmp+0x42>;
ffa0163a:	01 08       	CC = R1 == R0;
ffa0163c:	1c 10       	IF !CC JUMP 0xffa01674 <_strcmp+0x54>;
ffa0163e:	4a 32       	P1 = P2;
ffa01640:	50 32       	P2 = P0;
ffa01642:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01644:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01646:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa0164a:	49 99       	R1 = B[P1] (X);
ffa0164c:	01 0c       	CC = R1 == 0x0;
ffa0164e:	0a 18       	IF CC JUMP 0xffa01662 <_strcmp+0x42>;
ffa01650:	00 00       	NOP;
ffa01652:	00 00       	NOP;
ffa01654:	00 00       	NOP;
ffa01656:	50 99       	R0 = B[P2] (X);
ffa01658:	00 0c       	CC = R0 == 0x0;
ffa0165a:	04 18       	IF CC JUMP 0xffa01662 <_strcmp+0x42>;
ffa0165c:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa0165e:	40 0c       	CC = P0 == 0x0;
ffa01660:	05 10       	IF !CC JUMP 0xffa0166a <_strcmp+0x4a>;
ffa01662:	01 e8 00 00 	UNLINK;
ffa01666:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01668:	10 00       	RTS;
ffa0166a:	01 08       	CC = R1 == R0;
ffa0166c:	04 10       	IF !CC JUMP 0xffa01674 <_strcmp+0x54>;
ffa0166e:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01670:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01672:	ec 2f       	JUMP.S 0xffa0164a <_strcmp+0x2a>;
ffa01674:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01676:	01 e8 00 00 	UNLINK;
ffa0167a:	10 00       	RTS;

ffa0167c <_substr>:
ffa0167c:	f4 05       	[--SP] = (R7:6, P5:4);
ffa0167e:	20 32       	P4 = R0;
ffa01680:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01684:	11 32       	P2 = R1;
ffa01686:	32 30       	R6 = R2;
ffa01688:	61 99       	R1 = B[P4] (X);
ffa0168a:	01 0c       	CC = R1 == 0x0;
ffa0168c:	14 18       	IF CC JUMP 0xffa016b4 <_substr+0x38>;
ffa0168e:	00 00       	NOP;
ffa01690:	00 00       	NOP;
ffa01692:	00 00       	NOP;
ffa01694:	50 99       	R0 = B[P2] (X);
ffa01696:	00 0c       	CC = R0 == 0x0;
ffa01698:	0e 18       	IF CC JUMP 0xffa016b4 <_substr+0x38>;
ffa0169a:	02 0d       	CC = R2 <= 0x0;
ffa0169c:	0c 18       	IF CC JUMP 0xffa016b4 <_substr+0x38>;
ffa0169e:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa016a0:	01 08       	CC = R1 == R0;
ffa016a2:	0f 18       	IF CC JUMP 0xffa016c0 <_substr+0x44>;
ffa016a4:	00 00       	NOP;
ffa016a6:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa016a8:	0b 64       	R3 += 0x1;		/* (  1) */
ffa016aa:	50 99       	R0 = B[P2] (X);
ffa016ac:	00 0c       	CC = R0 == 0x0;
ffa016ae:	03 18       	IF CC JUMP 0xffa016b4 <_substr+0x38>;
ffa016b0:	1e 09       	CC = R6 <= R3;
ffa016b2:	f7 17       	IF !CC JUMP 0xffa016a0 <_substr+0x24> (BP);
ffa016b4:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa016b6:	01 e8 00 00 	UNLINK;
ffa016ba:	40 30       	R0 = P0;
ffa016bc:	b4 05       	(R7:6, P5:4) = [SP++];
ffa016be:	10 00       	RTS;
ffa016c0:	52 30       	R2 = P2;
ffa016c2:	3b 30       	R7 = R3;
ffa016c4:	0a 64       	R2 += 0x1;		/* (  1) */
ffa016c6:	0f 64       	R7 += 0x1;		/* (  1) */
ffa016c8:	12 32       	P2 = R2;
ffa016ca:	07 32       	P0 = R7;
ffa016cc:	4c 32       	P1 = P4;
ffa016ce:	6c 32       	P5 = P4;
ffa016d0:	09 6c       	P1 += 0x1;		/* (  1) */
ffa016d2:	15 6c       	P5 += 0x2;		/* (  2) */
ffa016d4:	02 20       	JUMP.S 0xffa016d8 <_substr+0x5c>;
ffa016d6:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa016d8:	4b 99       	R3 = B[P1] (X);
ffa016da:	50 99       	R0 = B[P2] (X);
ffa016dc:	03 08       	CC = R3 == R0;
ffa016de:	0e 10       	IF !CC JUMP 0xffa016fa <_substr+0x7e>;
ffa016e0:	03 0c       	CC = R3 == 0x0;
ffa016e2:	0c 18       	IF CC JUMP 0xffa016fa <_substr+0x7e>;
ffa016e4:	00 00       	NOP;
ffa016e6:	09 6c       	P1 += 0x1;		/* (  1) */
ffa016e8:	08 6c       	P0 += 0x1;		/* (  1) */
ffa016ea:	68 98       	R0 = B[P5++] (X);
ffa016ec:	00 0c       	CC = R0 == 0x0;
ffa016ee:	f4 17       	IF !CC JUMP 0xffa016d6 <_substr+0x5a> (BP);
ffa016f0:	01 e8 00 00 	UNLINK;
ffa016f4:	40 30       	R0 = P0;
ffa016f6:	b4 05       	(R7:6, P5:4) = [SP++];
ffa016f8:	10 00       	RTS;
ffa016fa:	12 32       	P2 = R2;
ffa016fc:	1f 30       	R3 = R7;
ffa016fe:	d6 2f       	JUMP.S 0xffa016aa <_substr+0x2e>;

ffa01700 <_sprintf_int>:
ffa01700:	fb 05       	[--SP] = (R7:7, P5:3);
ffa01702:	01 0c       	CC = R1 == 0x0;
ffa01704:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01708:	00 34       	I0 = R0;
ffa0170a:	11 30       	R2 = R1;
ffa0170c:	1a 14       	IF !CC JUMP 0xffa01740 <_sprintf_int+0x40> (BP);
ffa0170e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa01712:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa01716:	5a 91       	P2 = [P3];
ffa01718:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0171a:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa0171c:	10 9b       	B[P2] = R0;
ffa0171e:	88 32       	P1 = I0;
ffa01720:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01722:	0b 52       	R0 = R3 - R1;
ffa01724:	00 32       	P0 = R0;
ffa01726:	5a 91       	P2 = [P3];
ffa01728:	09 64       	R1 += 0x1;		/* (  1) */
ffa0172a:	99 08       	CC = R1 < R3;
ffa0172c:	82 5a       	P2 = P2 + P0;
ffa0172e:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa01732:	08 9a       	B[P1++] = R0;
ffa01734:	f7 1f       	IF CC JUMP 0xffa01722 <_sprintf_int+0x22> (BP);
ffa01736:	01 e8 00 00 	UNLINK;
ffa0173a:	03 30       	R0 = R3;
ffa0173c:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0173e:	10 00       	RTS;
ffa01740:	01 0d       	CC = R1 <= 0x0;
ffa01742:	2d 18       	IF CC JUMP 0xffa0179c <_sprintf_int+0x9c>;
ffa01744:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa01748:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa0174c:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa0174e:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa01752:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa01756:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa01758:	b2 e0 20 50 	LSETUP(0xffa0175c <_sprintf_int+0x5c>, 0xffa01798 <_sprintf_int+0x98>) LC1 = P5;
ffa0175c:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa01760:	59 91 00 00 
ffa01764:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01768:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa0176c:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa01770:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01774:	0b c4 00 00 	R0 = (A0 += A1);
ffa01778:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa0177c:	10 4d       	R0 >>>= 0x2;
ffa0177e:	08 52       	R0 = R0 - R1;
ffa01780:	00 32       	P0 = R0;
ffa01782:	13 32       	P2 = R3;
ffa01784:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01786:	40 0d       	CC = P0 <= 0x0;
ffa01788:	51 5a       	P1 = P1 + P2;
ffa0178a:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa0178c:	92 5a       	P2 = P2 << 0x1;
ffa0178e:	4a 30       	R1 = P2;
ffa01790:	0a 52       	R0 = R2 - R1;
ffa01792:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01794:	08 9b       	B[P1] = R0;
ffa01796:	39 18       	IF CC JUMP 0xffa01808 <_sprintf_int+0x108>;
ffa01798:	50 30       	R2 = P0;
ffa0179a:	c2 2f       	JUMP.S 0xffa0171e <_sprintf_int+0x1e>;
ffa0179c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0179e:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa017a0:	f8 4f       	R0 <<= 0x1f;
ffa017a2:	90 52       	R2 = R0 - R2;
ffa017a4:	02 0d       	CC = R2 <= 0x0;
ffa017a6:	3c 18       	IF CC JUMP 0xffa0181e <_sprintf_int+0x11e>;
ffa017a8:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa017ac:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa017b0:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa017b2:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa017b6:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa017ba:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa017bc:	b2 e0 1f 50 	LSETUP(0xffa017c0 <_sprintf_int+0xc0>, 0xffa017fa <_sprintf_int+0xfa>) LC1 = P5;
ffa017c0:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa017c4:	59 91 00 00 
ffa017c8:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa017cc:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa017d0:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa017d4:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa017d8:	0b c4 00 00 	R0 = (A0 += A1);
ffa017dc:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa017e0:	10 4d       	R0 >>>= 0x2;
ffa017e2:	08 52       	R0 = R0 - R1;
ffa017e4:	00 32       	P0 = R0;
ffa017e6:	61 5a       	P1 = P1 + P4;
ffa017e8:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa017ea:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa017ec:	92 5a       	P2 = P2 << 0x1;
ffa017ee:	4a 30       	R1 = P2;
ffa017f0:	0a 52       	R0 = R2 - R1;
ffa017f2:	80 65       	R0 += 0x30;		/* ( 48) */
ffa017f4:	40 0d       	CC = P0 <= 0x0;
ffa017f6:	08 9b       	B[P1] = R0;
ffa017f8:	0f 18       	IF CC JUMP 0xffa01816 <_sprintf_int+0x116>;
ffa017fa:	50 30       	R2 = P0;
ffa017fc:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa017fe:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa01800:	5a 91       	P2 = [P3];
ffa01802:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa01804:	8a 5a       	P2 = P2 + P1;
ffa01806:	10 9b       	B[P2] = R0;
ffa01808:	03 0d       	CC = R3 <= 0x0;
ffa0180a:	8a 17       	IF !CC JUMP 0xffa0171e <_sprintf_int+0x1e> (BP);
ffa0180c:	01 e8 00 00 	UNLINK;
ffa01810:	03 30       	R0 = R3;
ffa01812:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01814:	10 00       	RTS;
ffa01816:	5c 30       	R3 = P4;
ffa01818:	4c 32       	P1 = P4;
ffa0181a:	0b 64       	R3 += 0x1;		/* (  1) */
ffa0181c:	f2 2f       	JUMP.S 0xffa01800 <_sprintf_int+0x100>;
ffa0181e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa01822:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa01824:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01826:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa0182a:	eb 2f       	JUMP.S 0xffa01800 <_sprintf_int+0x100>;

ffa0182c <_sprintf_hex>:
ffa0182c:	10 32       	P2 = R0;
ffa0182e:	78 05       	[--SP] = (R7:7);
ffa01830:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01832:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01836:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa01838:	10 9b       	B[P2] = R0;
ffa0183a:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0183e:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa01842:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa01844:	12 6c       	P2 += 0x2;		/* (  2) */
ffa01846:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa01848:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa0184a:	b2 e0 09 10 	LSETUP(0xffa0184e <_sprintf_hex+0x22>, 0xffa0185c <_sprintf_hex+0x30>) LC1 = P1;
ffa0184e:	01 30       	R0 = R1;
ffa01850:	10 40       	R0 >>>= R2;
ffa01852:	18 54       	R0 = R0 & R3;
ffa01854:	38 09       	CC = R0 <= R7;
ffa01856:	09 1c       	IF CC JUMP 0xffa01868 <_sprintf_hex+0x3c> (BP);
ffa01858:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa0185a:	10 9a       	B[P2++] = R0;
ffa0185c:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa0185e:	01 e8 00 00 	UNLINK;
ffa01862:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01864:	38 05       	(R7:7) = [SP++];
ffa01866:	10 00       	RTS;
ffa01868:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0186a:	f8 2f       	JUMP.S 0xffa0185a <_sprintf_hex+0x2e>;

ffa0186c <_strprintf_int>:
ffa0186c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0186e:	29 32       	P5 = R1;
ffa01870:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01874:	0a 30       	R1 = R2;
ffa01876:	38 30       	R7 = R0;
ffa01878:	ff e3 44 ff 	CALL 0xffa01700 <_sprintf_int>;
ffa0187c:	29 91       	R1 = [P5];
ffa0187e:	41 50       	R1 = R1 + R0;
ffa01880:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa01884:	29 93 00 00 
ffa01888:	01 e8 00 00 	UNLINK;
ffa0188c:	07 30       	R0 = R7;
ffa0188e:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01890:	10 00       	RTS;
	...

ffa01894 <_strprintf_hex>:
ffa01894:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01896:	29 32       	P5 = R1;
ffa01898:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0189c:	0a 30       	R1 = R2;
ffa0189e:	38 30       	R7 = R0;
ffa018a0:	ff e3 c6 ff 	CALL 0xffa0182c <_sprintf_hex>;
ffa018a4:	29 91       	R1 = [P5];
ffa018a6:	41 50       	R1 = R1 + R0;
ffa018a8:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa018ac:	29 93 00 00 
ffa018b0:	01 e8 00 00 	UNLINK;
ffa018b4:	07 30       	R0 = R7;
ffa018b6:	bd 05       	(R7:7, P5:5) = [SP++];
ffa018b8:	10 00       	RTS;
	...

ffa018bc <_atoi>:
ffa018bc:	08 32       	P1 = R0;
ffa018be:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa018c0:	f5 05       	[--SP] = (R7:6, P5:5);
ffa018c2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa018c6:	48 99       	R0 = B[P1] (X);
ffa018c8:	10 08       	CC = R0 == R2;
ffa018ca:	25 18       	IF CC JUMP 0xffa01914 <_atoi+0x58>;
ffa018cc:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa018ce:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa018d0:	41 32       	P0 = P1;
ffa018d2:	08 6c       	P0 += 0x1;		/* (  1) */
ffa018d4:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa018d6:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa018d8:	12 20       	JUMP.S 0xffa018fc <_atoi+0x40>;
ffa018da:	8b 08       	CC = R3 < R1;
ffa018dc:	16 10       	IF !CC JUMP 0xffa01908 <_atoi+0x4c>;
ffa018de:	10 43       	R0 = R2.B (X);
ffa018e0:	28 32       	P5 = R0;
ffa018e2:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa018e4:	40 99       	R0 = B[P0] (X);
ffa018e6:	80 66       	R0 += -0x30;		/* (-48) */
ffa018e8:	40 43       	R0 = R0.B (Z);
ffa018ea:	aa 5a       	P2 = P2 + P5;
ffa018ec:	10 0a       	CC = R0 <= R2 (IU);
ffa018ee:	82 6e       	P2 += -0x30;		/* (-48) */
ffa018f0:	09 6c       	P1 += 0x1;		/* (  1) */
ffa018f2:	03 14       	IF !CC JUMP 0xffa018f8 <_atoi+0x3c> (BP);
ffa018f4:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa018f6:	92 5a       	P2 = P2 << 0x1;
ffa018f8:	0b 64       	R3 += 0x1;		/* (  1) */
ffa018fa:	08 6c       	P0 += 0x1;		/* (  1) */
ffa018fc:	4a 99       	R2 = B[P1] (X);
ffa018fe:	02 30       	R0 = R2;
ffa01900:	80 66       	R0 += -0x30;		/* (-48) */
ffa01902:	40 43       	R0 = R0.B (Z);
ffa01904:	30 0a       	CC = R0 <= R6 (IU);
ffa01906:	ea 1f       	IF CC JUMP 0xffa018da <_atoi+0x1e> (BP);
ffa01908:	42 30       	R0 = P2;
ffa0190a:	f8 40       	R0 *= R7;
ffa0190c:	01 e8 00 00 	UNLINK;
ffa01910:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01912:	10 00       	RTS;
ffa01914:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01916:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01918:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa0191a:	db 2f       	JUMP.S 0xffa018d0 <_atoi+0x14>;

ffa0191c <_udelay>:
ffa0191c:	00 0d       	CC = R0 <= 0x0;
ffa0191e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01922:	0b 18       	IF CC JUMP 0xffa01938 <_udelay+0x1c>;
ffa01924:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01926:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa0192a:	b2 e0 03 20 	LSETUP(0xffa0192e <_udelay+0x12>, 0xffa01930 <_udelay+0x14>) LC1 = P2;
ffa0192e:	00 00       	NOP;
ffa01930:	00 00       	NOP;
ffa01932:	09 64       	R1 += 0x1;		/* (  1) */
ffa01934:	08 08       	CC = R0 == R1;
ffa01936:	f8 17       	IF !CC JUMP 0xffa01926 <_udelay+0xa> (BP);
ffa01938:	01 e8 00 00 	UNLINK;
ffa0193c:	10 00       	RTS;
	...

ffa01940 <_bfin_EMAC_send_check>:
ffa01940:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa01944:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01948:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa0194c:	50 95       	R0 = W[P2] (X);
ffa0194e:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa01950:	00 02       	R0 = CC;
ffa01952:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa01954:	01 e8 00 00 	UNLINK;
ffa01958:	10 00       	RTS;
	...

ffa0195c <_FormatIPAddress>:
ffa0195c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01960:	18 30       	R3 = R0;
ffa01962:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa01966:	40 4f       	R0 <<= 0x8;
ffa01968:	52 43       	R2 = R2.B (Z);
ffa0196a:	10 56       	R0 = R0 | R2;
ffa0196c:	40 4f       	R0 <<= 0x8;
ffa0196e:	49 43       	R1 = R1.B (Z);
ffa01970:	08 56       	R0 = R0 | R1;
ffa01972:	40 4f       	R0 <<= 0x8;
ffa01974:	5b 43       	R3 = R3.B (Z);
ffa01976:	18 56       	R0 = R0 | R3;
ffa01978:	01 e8 00 00 	UNLINK;
ffa0197c:	10 00       	RTS;
	...

ffa01980 <_bfin_EMAC_halt>:
ffa01980:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01984:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01986:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa0198a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0198e:	10 93       	[P2] = R0;
ffa01990:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01994:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa01998:	10 97       	W[P2] = R0;
ffa0199a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa0199e:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa019a2:	10 97       	W[P2] = R0;
ffa019a4:	01 e8 00 00 	UNLINK;
ffa019a8:	10 00       	RTS;
	...

ffa019ac <_PollMdcDone>:
ffa019ac:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa019b0:	02 20       	JUMP.S 0xffa019b4 <_PollMdcDone+0x8>;
ffa019b2:	00 00       	NOP;
ffa019b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa019b8:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa019bc:	10 91       	R0 = [P2];
ffa019be:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa019c0:	f9 17       	IF !CC JUMP 0xffa019b2 <_PollMdcDone+0x6> (BP);
ffa019c2:	01 e8 00 00 	UNLINK;
ffa019c6:	10 00       	RTS;

ffa019c8 <_WrPHYReg>:
ffa019c8:	68 05       	[--SP] = (R7:5);
ffa019ca:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa019ce:	28 30       	R5 = R0;
ffa019d0:	31 30       	R6 = R1;
ffa019d2:	3a 30       	R7 = R2;
ffa019d4:	ff e3 ec ff 	CALL 0xffa019ac <_PollMdcDone>;
ffa019d8:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa019da:	b0 55       	R6 = R0 & R6;
ffa019dc:	28 54       	R0 = R0 & R5;
ffa019de:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa019e2:	58 4f       	R0 <<= 0xb;
ffa019e4:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa019e6:	ff 42       	R7 = R7.L (Z);
ffa019e8:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa019ec:	36 4f       	R6 <<= 0x6;
ffa019ee:	08 56       	R0 = R0 | R1;
ffa019f0:	17 93       	[P2] = R7;
ffa019f2:	86 57       	R6 = R6 | R0;
ffa019f4:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa019f6:	16 93       	[P2] = R6;
ffa019f8:	01 e8 00 00 	UNLINK;
ffa019fc:	28 05       	(R7:5) = [SP++];
ffa019fe:	10 00       	RTS;

ffa01a00 <_RdPHYReg>:
ffa01a00:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01a02:	29 32       	P5 = R1;
ffa01a04:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01a08:	38 30       	R7 = R0;
ffa01a0a:	ff e3 d1 ff 	CALL 0xffa019ac <_PollMdcDone>;
ffa01a0e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa01a12:	45 30       	R0 = P5;
ffa01a14:	c0 42       	R0 = R0.L (Z);
ffa01a16:	28 32       	P5 = R0;
ffa01a18:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01a1a:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01a1e:	55 30       	R2 = P5;
ffa01a20:	42 54       	R1 = R2 & R0;
ffa01a22:	38 54       	R0 = R0 & R7;
ffa01a24:	58 4f       	R0 <<= 0xb;
ffa01a26:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa01a28:	31 4f       	R1 <<= 0x6;
ffa01a2a:	41 56       	R1 = R1 | R0;
ffa01a2c:	11 93       	[P2] = R1;
ffa01a2e:	ff e3 bf ff 	CALL 0xffa019ac <_PollMdcDone>;
ffa01a32:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa01a36:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01a3a:	10 91       	R0 = [P2];
ffa01a3c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa01a40:	0a e1 04 0e 	P2.L = 0xe04;		/* (3588)	P2=0xff900e04 <_PHYregs> */
ffa01a44:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa01a46:	10 97       	W[P2] = R0;
ffa01a48:	01 e8 00 00 	UNLINK;
ffa01a4c:	c0 42       	R0 = R0.L (Z);
ffa01a4e:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01a50:	10 00       	RTS;
	...

ffa01a54 <_SoftResetPHY>:
ffa01a54:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a56:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a58:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa01a5c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01a60:	ff e3 b4 ff 	CALL 0xffa019c8 <_WrPHYReg>;
ffa01a64:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a66:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a68:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01a6a:	ff e3 af ff 	CALL 0xffa019c8 <_WrPHYReg>;
ffa01a6e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a70:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a72:	ff e3 c7 ff 	CALL 0xffa01a00 <_RdPHYReg>;
ffa01a76:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa01a78:	fb 1f       	IF CC JUMP 0xffa01a6e <_SoftResetPHY+0x1a> (BP);
ffa01a7a:	01 e8 00 00 	UNLINK;
ffa01a7e:	10 00       	RTS;

ffa01a80 <_NetCksum>:
ffa01a80:	01 0d       	CC = R1 <= 0x0;
ffa01a82:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01a86:	10 18       	IF CC JUMP 0xffa01aa6 <_NetCksum+0x26>;
ffa01a88:	10 32       	P2 = R0;
ffa01a8a:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01a8c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01a8e:	0a 64       	R2 += 0x1;		/* (  1) */
ffa01a90:	10 94       	R0 = W[P2++] (Z);
ffa01a92:	0a 08       	CC = R2 == R1;
ffa01a94:	c3 50       	R3 = R3 + R0;
ffa01a96:	fc 17       	IF !CC JUMP 0xffa01a8e <_NetCksum+0xe> (BP);
ffa01a98:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa01a9c:	03 50       	R0 = R3 + R0;
ffa01a9e:	c0 42       	R0 = R0.L (Z);
ffa01aa0:	01 e8 00 00 	UNLINK;
ffa01aa4:	10 00       	RTS;
ffa01aa6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01aa8:	01 e8 00 00 	UNLINK;
ffa01aac:	10 00       	RTS;
	...

ffa01ab0 <_htons>:
ffa01ab0:	08 30       	R1 = R0;
ffa01ab2:	c0 42       	R0 = R0.L (Z);
ffa01ab4:	40 4e       	R0 >>= 0x8;
ffa01ab6:	41 4f       	R1 <<= 0x8;
ffa01ab8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01abc:	08 56       	R0 = R0 | R1;
ffa01abe:	c0 42       	R0 = R0.L (Z);
ffa01ac0:	01 e8 00 00 	UNLINK;
ffa01ac4:	10 00       	RTS;
	...

ffa01ac8 <_htonl>:
ffa01ac8:	10 30       	R2 = R0;
ffa01aca:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa01ace:	40 43       	R0 = R0.B (Z);
ffa01ad0:	49 43       	R1 = R1.B (Z);
ffa01ad2:	40 4f       	R0 <<= 0x8;
ffa01ad4:	08 56       	R0 = R0 | R1;
ffa01ad6:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa01ada:	40 4f       	R0 <<= 0x8;
ffa01adc:	49 43       	R1 = R1.B (Z);
ffa01ade:	08 56       	R0 = R0 | R1;
ffa01ae0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01ae4:	40 4f       	R0 <<= 0x8;
ffa01ae6:	c2 4e       	R2 >>= 0x18;
ffa01ae8:	10 56       	R0 = R0 | R2;
ffa01aea:	01 e8 00 00 	UNLINK;
ffa01aee:	10 00       	RTS;

ffa01af0 <_pack4chars>:
ffa01af0:	08 32       	P1 = R0;
ffa01af2:	10 32       	P2 = R0;
ffa01af4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01af8:	01 e8 00 00 	UNLINK;
ffa01afc:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa01b00:	10 98       	R0 = B[P2++] (Z);
ffa01b02:	41 4f       	R1 <<= 0x8;
ffa01b04:	08 50       	R0 = R0 + R1;
ffa01b06:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa01b0a:	81 4f       	R1 <<= 0x10;
ffa01b0c:	08 50       	R0 = R0 + R1;
ffa01b0e:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa01b12:	c1 4f       	R1 <<= 0x18;
ffa01b14:	08 50       	R0 = R0 + R1;
ffa01b16:	10 00       	RTS;

ffa01b18 <_ip_header_setup>:
ffa01b18:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01b1a:	28 32       	P5 = R0;
ffa01b1c:	21 32       	P4 = R1;
ffa01b1e:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01b22:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b26:	32 30       	R6 = R2;
ffa01b28:	28 9b       	B[P5] = R0;
ffa01b2a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b2c:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa01b30:	27 91       	R7 = [P4];
ffa01b32:	f8 42       	R0 = R7.L (Z);
ffa01b34:	ff e3 be ff 	CALL 0xffa01ab0 <_htons>;
ffa01b38:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e04 <_PHYregs> */
ffa01b3c:	0a e1 4e 0e 	P2.L = 0xe4e;		/* (3662)	P2=0xff900e4e <_NetIPID> */
ffa01b40:	68 b4       	W[P5 + 0x2] = R0;
ffa01b42:	10 95       	R0 = W[P2] (Z);
ffa01b44:	08 30       	R1 = R0;
ffa01b46:	09 64       	R1 += 0x1;		/* (  1) */
ffa01b48:	67 67       	R7 += -0x14;		/* (-20) */
ffa01b4a:	11 97       	W[P2] = R1;
ffa01b4c:	27 93       	[P4] = R7;
ffa01b4e:	ff e3 b1 ff 	CALL 0xffa01ab0 <_htons>;
ffa01b52:	a8 b4       	W[P5 + 0x4] = R0;
ffa01b54:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01b58:	ff e3 ac ff 	CALL 0xffa01ab0 <_htons>;
ffa01b5c:	e8 b4       	W[P5 + 0x6] = R0;
ffa01b5e:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01b62:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01b66:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4e <_NetIPID> */
ffa01b6a:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa01b6e:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01b72:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa01b76:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b78:	68 b5       	W[P5 + 0xa] = R0;
ffa01b7a:	10 91       	R0 = [P2];
ffa01b7c:	e8 b0       	[P5 + 0xc] = R0;
ffa01b7e:	2e b1       	[P5 + 0x10] = R6;
ffa01b80:	45 30       	R0 = P5;
ffa01b82:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01b84:	ff e3 7e ff 	CALL 0xffa01a80 <_NetCksum>;
ffa01b88:	c0 43       	R0 =~ R0;
ffa01b8a:	68 b5       	W[P5 + 0xa] = R0;
ffa01b8c:	01 e8 00 00 	UNLINK;
ffa01b90:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01b92:	45 30       	R0 = P5;
ffa01b94:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01b96:	10 00       	RTS;

ffa01b98 <_ip_header_checksum>:
ffa01b98:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b9c:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa01b9e:	ff e3 71 ff 	CALL 0xffa01a80 <_NetCksum>;
ffa01ba2:	08 02       	CC = R0;
ffa01ba4:	00 02       	R0 = CC;
ffa01ba6:	01 e8 00 00 	UNLINK;
ffa01baa:	10 00       	RTS;

ffa01bac <_icmp_header_setup>:
ffa01bac:	00 32       	P0 = R0;
ffa01bae:	c5 04       	[--SP] = (P5:5);
ffa01bb0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01bb2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01bb6:	29 32       	P5 = R1;
ffa01bb8:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa01bbc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01bbe:	40 b4       	W[P0 + 0x2] = R0;
ffa01bc0:	38 ab       	R0 = W[FP + 0x18] (X);
ffa01bc2:	80 b4       	W[P0 + 0x4] = R0;
ffa01bc4:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa01bc6:	02 9b       	B[P0] = R2;
ffa01bc8:	c0 b4       	W[P0 + 0x6] = R0;
ffa01bca:	48 32       	P1 = P0;
ffa01bcc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01bce:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa01bd0:	b2 e0 03 20 	LSETUP(0xffa01bd4 <_icmp_header_setup+0x28>, 0xffa01bd6 <_icmp_header_setup+0x2a>) LC1 = P2;
ffa01bd4:	08 94       	R0 = W[P1++] (Z);
ffa01bd6:	41 50       	R1 = R1 + R0;
ffa01bd8:	c8 42       	R0 = R1.L (Z);
ffa01bda:	81 4e       	R1 >>= 0x10;
ffa01bdc:	08 50       	R0 = R0 + R1;
ffa01bde:	c0 43       	R0 =~ R0;
ffa01be0:	40 b4       	W[P0 + 0x2] = R0;
ffa01be2:	28 91       	R0 = [P5];
ffa01be4:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa01be6:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01be8:	01 e8 00 00 	UNLINK;
ffa01bec:	28 93       	[P5] = R0;
ffa01bee:	40 30       	R0 = P0;
ffa01bf0:	85 04       	(P5:5) = [SP++];
ffa01bf2:	10 00       	RTS;

ffa01bf4 <_udp_header_setup>:
ffa01bf4:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01bf6:	28 32       	P5 = R0;
ffa01bf8:	21 32       	P4 = R1;
ffa01bfa:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01bfe:	d0 42       	R0 = R2.L (Z);
ffa01c00:	ff e3 58 ff 	CALL 0xffa01ab0 <_htons>;
ffa01c04:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa01c08:	28 97       	W[P5] = R0;
ffa01c0a:	07 30       	R0 = R7;
ffa01c0c:	ff e3 52 ff 	CALL 0xffa01ab0 <_htons>;
ffa01c10:	27 91       	R7 = [P4];
ffa01c12:	68 b4       	W[P5 + 0x2] = R0;
ffa01c14:	f8 42       	R0 = R7.L (Z);
ffa01c16:	ff e3 4d ff 	CALL 0xffa01ab0 <_htons>;
ffa01c1a:	a8 b4       	W[P5 + 0x4] = R0;
ffa01c1c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c1e:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa01c20:	e8 b4       	W[P5 + 0x6] = R0;
ffa01c22:	01 e8 00 00 	UNLINK;
ffa01c26:	45 6c       	P5 += 0x8;		/* (  8) */
ffa01c28:	45 30       	R0 = P5;
ffa01c2a:	27 93       	[P4] = R7;
ffa01c2c:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01c2e:	10 00       	RTS;

ffa01c30 <_tcp_header_setup>:
ffa01c30:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01c32:	28 32       	P5 = R0;
ffa01c34:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01c38:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01c3c:	21 32       	P4 = R1;
ffa01c3e:	3a 30       	R7 = R2;
ffa01c40:	ff e3 38 ff 	CALL 0xffa01ab0 <_htons>;
ffa01c44:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa01c48:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_TcpClientPort> */
ffa01c4c:	28 97       	W[P5] = R0;
ffa01c4e:	50 95       	R0 = W[P2] (X);
ffa01c50:	68 b4       	W[P5 + 0x2] = R0;
ffa01c52:	38 a2       	R0 = [FP + 0x20];
ffa01c54:	ff e3 3a ff 	CALL 0xffa01ac8 <_htonl>;
ffa01c58:	68 b0       	[P5 + 0x4] = R0;
ffa01c5a:	78 a2       	R0 = [FP + 0x24];
ffa01c5c:	ff e3 36 ff 	CALL 0xffa01ac8 <_htonl>;
ffa01c60:	a8 b0       	[P5 + 0x8] = R0;
ffa01c62:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01c66:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01c6a:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa01c6e:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa01c72:	ff e3 1f ff 	CALL 0xffa01ab0 <_htons>;
ffa01c76:	e8 b5       	W[P5 + 0xe] = R0;
ffa01c78:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c7a:	28 b6       	W[P5 + 0x10] = R0;
ffa01c7c:	68 b6       	W[P5 + 0x12] = R0;
ffa01c7e:	20 91       	R0 = [P4];
ffa01c80:	60 67       	R0 += -0x14;		/* (-20) */
ffa01c82:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01c84:	01 e8 00 00 	UNLINK;
ffa01c88:	20 93       	[P4] = R0;
ffa01c8a:	45 30       	R0 = P5;
ffa01c8c:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01c8e:	10 00       	RTS;

ffa01c90 <_DHCP_parse>:
ffa01c90:	f5 05       	[--SP] = (R7:6, P5:5);
ffa01c92:	09 0d       	CC = R1 <= 0x1;
ffa01c94:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01c98:	10 32       	P2 = R0;
ffa01c9a:	33 18       	IF CC JUMP 0xffa01d00 <_DHCP_parse+0x70>;
ffa01c9c:	00 00       	NOP;
ffa01c9e:	31 30       	R6 = R1;
ffa01ca0:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01ca2:	11 98       	R1 = B[P2++] (Z);
ffa01ca4:	01 0c       	CC = R1 == 0x0;
ffa01ca6:	2b 1c       	IF CC JUMP 0xffa01cfc <_DHCP_parse+0x6c> (BP);
ffa01ca8:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa01cac:	01 08       	CC = R1 == R0;
ffa01cae:	57 99       	R7 = B[P2] (X);
ffa01cb0:	28 18       	IF CC JUMP 0xffa01d00 <_DHCP_parse+0x70>;
ffa01cb2:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa01cb4:	6a 32       	P5 = P2;
ffa01cb6:	01 0a       	CC = R1 <= R0 (IU);
ffa01cb8:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa01cba:	09 14       	IF !CC JUMP 0xffa01ccc <_DHCP_parse+0x3c> (BP);
ffa01cbc:	09 32       	P1 = R1;
ffa01cbe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_TcpClientPort> */
ffa01cc2:	0a e1 a8 03 	P2.L = 0x3a8;		/* (936)	P2=0xff9003a8 */
ffa01cc6:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa01cc8:	52 91       	P2 = [P2];
ffa01cca:	52 00       	JUMP (P2);
ffa01ccc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa01cd0:	00 e1 80 01 	R0.L = 0x180;		/* (384)	R0=0xff900180(-7339648) */
ffa01cd4:	ff e3 50 fb 	CALL 0xffa01374 <_printf_int>;
ffa01cd8:	7f 43       	R7 = R7.B (Z);
ffa01cda:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900180(-7339648) */
ffa01cde:	00 e1 94 01 	R0.L = 0x194;		/* (404)	R0=0xff900194(-7339628) */
ffa01ce2:	0f 30       	R1 = R7;
ffa01ce4:	ff e3 48 fb 	CALL 0xffa01374 <_printf_int>;
ffa01ce8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900194(-7339628) */
ffa01cec:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa01cf0:	ff e3 80 fa 	CALL 0xffa011f0 <_printf_str>;
ffa01cf4:	0f 32       	P1 = R7;
ffa01cf6:	be 53       	R6 = R6 - R7;
ffa01cf8:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01cfa:	8d 5a       	P2 = P5 + P1;
ffa01cfc:	0e 0d       	CC = R6 <= 0x1;
ffa01cfe:	d1 17       	IF !CC JUMP 0xffa01ca0 <_DHCP_parse+0x10> (BP);
ffa01d00:	01 e8 00 00 	UNLINK;
ffa01d04:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01d06:	10 00       	RTS;
ffa01d08:	45 30       	R0 = P5;
ffa01d0a:	ff e3 f3 fe 	CALL 0xffa01af0 <_pack4chars>;
ffa01d0e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff9003a8 */
ffa01d12:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetSubnetMask> */
ffa01d16:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01d1a:	10 93 00 00 
ffa01d1e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa01d22:	00 e1 d8 00 	R0.L = 0xd8;		/* (216)	R0=0xff9000d8(-7339816) */
ffa01d26:	ff e3 c9 fb 	CALL 0xffa014b8 <_printf_ip>;
ffa01d2a:	7f 43       	R7 = R7.B (Z);
ffa01d2c:	de 2f       	JUMP.S 0xffa01ce8 <_DHCP_parse+0x58>;
ffa01d2e:	45 30       	R0 = P5;
ffa01d30:	ff e3 e0 fe 	CALL 0xffa01af0 <_pack4chars>;
ffa01d34:	08 30       	R1 = R0;
ffa01d36:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000d8(-7339816) */
ffa01d3a:	00 e1 e8 00 	R0.L = 0xe8;		/* (232)	R0=0xff9000e8(-7339800) */
ffa01d3e:	ff e3 bd fb 	CALL 0xffa014b8 <_printf_ip>;
ffa01d42:	7f 43       	R7 = R7.B (Z);
ffa01d44:	d2 2f       	JUMP.S 0xffa01ce8 <_DHCP_parse+0x58>;
ffa01d46:	45 30       	R0 = P5;
ffa01d48:	ff e3 d4 fe 	CALL 0xffa01af0 <_pack4chars>;
ffa01d4c:	08 30       	R1 = R0;
ffa01d4e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000e8(-7339800) */
ffa01d52:	00 e1 f8 00 	R0.L = 0xf8;		/* (248)	R0=0xff9000f8(-7339784) */
ffa01d56:	ff e3 b1 fb 	CALL 0xffa014b8 <_printf_ip>;
ffa01d5a:	7f 43       	R7 = R7.B (Z);
ffa01d5c:	c6 2f       	JUMP.S 0xffa01ce8 <_DHCP_parse+0x58>;
ffa01d5e:	45 30       	R0 = P5;
ffa01d60:	ff e3 c8 fe 	CALL 0xffa01af0 <_pack4chars>;
ffa01d64:	08 30       	R1 = R0;
ffa01d66:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f8(-7339784) */
ffa01d6a:	00 e1 08 01 	R0.L = 0x108;		/* (264)	R0=0xff900108(-7339768) */
ffa01d6e:	ff e3 a5 fb 	CALL 0xffa014b8 <_printf_ip>;
ffa01d72:	7f 43       	R7 = R7.B (Z);
ffa01d74:	ba 2f       	JUMP.S 0xffa01ce8 <_DHCP_parse+0x58>;
ffa01d76:	45 30       	R0 = P5;
ffa01d78:	ff e3 bc fe 	CALL 0xffa01af0 <_pack4chars>;
ffa01d7c:	ff e3 a6 fe 	CALL 0xffa01ac8 <_htonl>;
ffa01d80:	08 30       	R1 = R0;
ffa01d82:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900108(-7339768) */
ffa01d86:	00 e1 18 01 	R0.L = 0x118;		/* (280)	R0=0xff900118(-7339752) */
ffa01d8a:	ff e3 f5 fa 	CALL 0xffa01374 <_printf_int>;
ffa01d8e:	7f 43       	R7 = R7.B (Z);
ffa01d90:	ac 2f       	JUMP.S 0xffa01ce8 <_DHCP_parse+0x58>;
ffa01d92:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900118(-7339752) */
ffa01d96:	29 99       	R1 = B[P5] (Z);
ffa01d98:	00 e1 2c 01 	R0.L = 0x12c;		/* (300)	R0=0xff90012c(-7339732) */
ffa01d9c:	ff e3 ec fa 	CALL 0xffa01374 <_printf_int>;
ffa01da0:	7f 43       	R7 = R7.B (Z);
ffa01da2:	a3 2f       	JUMP.S 0xffa01ce8 <_DHCP_parse+0x58>;
ffa01da4:	45 30       	R0 = P5;
ffa01da6:	ff e3 a5 fe 	CALL 0xffa01af0 <_pack4chars>;
ffa01daa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e7c <_NetSubnetMask> */
ffa01dae:	0a e1 48 0e 	P2.L = 0xe48;		/* (3656)	P2=0xff900e48 <_NetDHCPserv> */
ffa01db2:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01db6:	10 93 00 00 
ffa01dba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90012c(-7339732) */
ffa01dbe:	00 e1 40 01 	R0.L = 0x140;		/* (320)	R0=0xff900140(-7339712) */
ffa01dc2:	ff e3 7b fb 	CALL 0xffa014b8 <_printf_ip>;
ffa01dc6:	7f 43       	R7 = R7.B (Z);
ffa01dc8:	90 2f       	JUMP.S 0xffa01ce8 <_DHCP_parse+0x58>;
ffa01dca:	45 30       	R0 = P5;
ffa01dcc:	ff e3 92 fe 	CALL 0xffa01af0 <_pack4chars>;
ffa01dd0:	ff e3 7c fe 	CALL 0xffa01ac8 <_htonl>;
ffa01dd4:	08 30       	R1 = R0;
ffa01dd6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900140(-7339712) */
ffa01dda:	00 e1 54 01 	R0.L = 0x154;		/* (340)	R0=0xff900154(-7339692) */
ffa01dde:	ff e3 cb fa 	CALL 0xffa01374 <_printf_int>;
ffa01de2:	7f 43       	R7 = R7.B (Z);
ffa01de4:	82 2f       	JUMP.S 0xffa01ce8 <_DHCP_parse+0x58>;
ffa01de6:	45 30       	R0 = P5;
ffa01de8:	ff e3 84 fe 	CALL 0xffa01af0 <_pack4chars>;
ffa01dec:	ff e3 6e fe 	CALL 0xffa01ac8 <_htonl>;
ffa01df0:	08 30       	R1 = R0;
ffa01df2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900154(-7339692) */
ffa01df6:	00 e1 68 01 	R0.L = 0x168;		/* (360)	R0=0xff900168(-7339672) */
ffa01dfa:	ff e3 bd fa 	CALL 0xffa01374 <_printf_int>;
ffa01dfe:	7f 43       	R7 = R7.B (Z);
ffa01e00:	74 2f       	JUMP.S 0xffa01ce8 <_DHCP_parse+0x58>;
	...

ffa01e04 <_bfin_EMAC_send_nocopy>:
ffa01e04:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e48(-4190648) */
ffa01e08:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01e0a:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01e0e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01e12:	10 97       	W[P2] = R0;
ffa01e14:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01e18:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01e1c:	50 95       	R0 = W[P2] (X);
ffa01e1e:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01e20:	59 10       	IF !CC JUMP 0xffa01ed2 <_bfin_EMAC_send_nocopy+0xce>;
ffa01e22:	00 00       	NOP;
ffa01e24:	00 00       	NOP;
ffa01e26:	00 00       	NOP;
ffa01e28:	50 95       	R0 = W[P2] (X);
ffa01e2a:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01e2c:	16 18       	IF CC JUMP 0xffa01e58 <_bfin_EMAC_send_nocopy+0x54>;
ffa01e2e:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0008 */
ffa01e32:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01e36:	b2 e0 09 10 	LSETUP(0xffa01e3a <_bfin_EMAC_send_nocopy+0x36>, 0xffa01e48 <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa01e3a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01e3e:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01e42:	50 95       	R0 = W[P2] (X);
ffa01e44:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01e46:	09 18       	IF CC JUMP 0xffa01e58 <_bfin_EMAC_send_nocopy+0x54>;
ffa01e48:	00 00       	NOP;
ffa01e4a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa01e4e:	00 e1 b4 01 	R0.L = 0x1b4;		/* (436)	R0=0xff9001b4(-7339596) */
ffa01e52:	ff e3 cf f9 	CALL 0xffa011f0 <_printf_str>;
ffa01e56:	30 20       	JUMP.S 0xffa01eb6 <_bfin_EMAC_send_nocopy+0xb2>;
ffa01e58:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa01e5c:	08 e1 4c 0e 	P0.L = 0xe4c;		/* (3660)	P0=0xff900e4c <_txIdx> */
ffa01e60:	00 95       	R0 = W[P0] (Z);
ffa01e62:	10 32       	P2 = R0;
ffa01e64:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01e68:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa01e6c:	42 95       	R2 = W[P0] (X);
ffa01e6e:	d1 42       	R1 = R2.L (Z);
ffa01e70:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01e72:	52 91       	P2 = [P2];
ffa01e74:	11 0d       	CC = R1 <= 0x2;
ffa01e76:	90 a1       	R0 = [P2 + 0x18];
ffa01e78:	50 b0       	[P2 + 0x4] = R0;
ffa01e7a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e7c:	90 b2       	[P2 + 0x28] = R0;
ffa01e7e:	11 32       	P2 = R1;
ffa01e80:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa01e82:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01e86:	08 91       	R0 = [P1];
ffa01e88:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01e8c:	10 93       	[P2] = R0;
ffa01e8e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01e92:	0a e1 9a 04 	P2.L = 0x49a;		/* (1178)	P2=0xff90049a <_txdmacfg> */
ffa01e96:	50 95       	R0 = W[P2] (X);
ffa01e98:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0049a(-4193126) */
ffa01e9c:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01ea0:	10 97       	W[P2] = R0;
ffa01ea2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01ea6:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01eaa:	10 91       	R0 = [P2];
ffa01eac:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01eae:	10 93       	[P2] = R0;
ffa01eb0:	0d 1c       	IF CC JUMP 0xffa01eca <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa01eb2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01eb4:	00 97       	W[P0] = R0;
ffa01eb6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01eba:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01ebc:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01ec0:	10 97       	W[P2] = R0;
ffa01ec2:	01 e8 00 00 	UNLINK;
ffa01ec6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ec8:	10 00       	RTS;
ffa01eca:	02 30       	R0 = R2;
ffa01ecc:	08 64       	R0 += 0x1;		/* (  1) */
ffa01ece:	00 97       	W[P0] = R0;
ffa01ed0:	f3 2f       	JUMP.S 0xffa01eb6 <_bfin_EMAC_send_nocopy+0xb2>;
ffa01ed2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01ed6:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa01eda:	ff e3 8b f9 	CALL 0xffa011f0 <_printf_str>;
ffa01ede:	ec 2f       	JUMP.S 0xffa01eb6 <_bfin_EMAC_send_nocopy+0xb2>;

ffa01ee0 <_DHCP_tx>:
ffa01ee0:	e3 05       	[--SP] = (R7:4, P5:3);
ffa01ee2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa01ee6:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01eea:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa01eee:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa01ef2:	10 95 00 00 
ffa01ef6:	10 32       	P2 = R0;
ffa01ef8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e50 <_txbuf> */
ffa01efc:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa01f00:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa01f04:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01f06:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01f08:	52 91       	P2 = [P2];
ffa01f0a:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa01f0e:	f1 bb 00 00 
ffa01f12:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90000b */
ffa01f16:	0d e1 74 0e 	P5.L = 0xe74;		/* (3700)	P5=0xff900e74 <_NetOurMAC> */
ffa01f1a:	94 ad       	P4 = [P2 + 0x18];
ffa01f1c:	1a 32       	P3 = R2;
ffa01f1e:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01f20:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01f22:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa01f26:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa01f2a:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa01f2e:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa01f32:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa01f36:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa01f3a:	20 97       	W[P4] = R0;
ffa01f3c:	68 99       	R0 = B[P5] (X);
ffa01f3e:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa01f42:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01f46:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa01f4a:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01f4e:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa01f52:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01f56:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa01f5a:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01f5e:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa01f62:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01f66:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa01f6a:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01f6e:	ff e3 a1 fd 	CALL 0xffa01ab0 <_htons>;
ffa01f72:	e0 b5       	W[P4 + 0xe] = R0;
ffa01f74:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01f78:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa01f7c:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa01f80:	04 50       	R0 = R4 + R0;
ffa01f82:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa01f86:	c0 42       	R0 = R0.L (Z);
ffa01f88:	ff e3 94 fd 	CALL 0xffa01ab0 <_htons>;
ffa01f8c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa01f90:	0a e1 4e 0e 	P2.L = 0xe4e;		/* (3662)	P2=0xff900e4e <_NetIPID> */
ffa01f94:	60 b6       	W[P4 + 0x12] = R0;
ffa01f96:	10 95       	R0 = W[P2] (Z);
ffa01f98:	08 30       	R1 = R0;
ffa01f9a:	09 64       	R1 += 0x1;		/* (  1) */
ffa01f9c:	11 97       	W[P2] = R1;
ffa01f9e:	ff e3 89 fd 	CALL 0xffa01ab0 <_htons>;
ffa01fa2:	a0 b6       	W[P4 + 0x14] = R0;
ffa01fa4:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01fa8:	ff e3 84 fd 	CALL 0xffa01ab0 <_htons>;
ffa01fac:	e0 b6       	W[P4 + 0x16] = R0;
ffa01fae:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01fb0:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa01fb4:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa01fb8:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa01fbc:	66 b7 00 00 
ffa01fc0:	44 30       	R0 = P4;
ffa01fc2:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01fc4:	e7 b1       	[P4 + 0x1c] = R7;
ffa01fc6:	23 be       	[P4 + 0x20] = P3;
ffa01fc8:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01fca:	ff e3 5b fd 	CALL 0xffa01a80 <_NetCksum>;
ffa01fce:	c0 43       	R0 =~ R0;
ffa01fd0:	60 b7       	W[P4 + 0x1a] = R0;
ffa01fd2:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa01fd6:	ff e3 6d fd 	CALL 0xffa01ab0 <_htons>;
ffa01fda:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa01fde:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa01fe2:	ff e3 67 fd 	CALL 0xffa01ab0 <_htons>;
ffa01fe6:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa01fea:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa01fee:	04 50       	R0 = R4 + R0;
ffa01ff0:	c0 42       	R0 = R0.L (Z);
ffa01ff2:	ff e3 5f fd 	CALL 0xffa01ab0 <_htons>;
ffa01ff6:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa01ffa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01ffc:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa02000:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa02004:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e4e(-4190642) */
ffa02008:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0200a:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa0200e:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa02012:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa02016:	10 91       	R0 = [P2];
ffa02018:	20 b3       	[P4 + 0x30] = R0;
ffa0201a:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa0201e:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa02022:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa02026:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa0202a:	a7 b3       	[P4 + 0x38] = R7;
ffa0202c:	e7 b3       	[P4 + 0x3c] = R7;
ffa0202e:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa02032:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa02036:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa0203a:	ff e3 47 fd 	CALL 0xffa01ac8 <_htonl>;
ffa0203e:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa02042:	68 99       	R0 = B[P5] (X);
ffa02044:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa02048:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa0204c:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa02050:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02054:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa02058:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa0205c:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa02060:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02064:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa02068:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa0206c:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa02070:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa02074:	54 5a       	P1 = P4 + P2;
ffa02076:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02078:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa0207a:	b2 e0 02 20 	LSETUP(0xffa0207e <_DHCP_tx+0x19e>, 0xffa0207e <_DHCP_tx+0x19e>) LC1 = P2;
ffa0207e:	08 9a       	B[P1++] = R0;
ffa02080:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa02084:	54 5a       	P1 = P4 + P2;
ffa02086:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02088:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa0208a:	b2 e0 02 20 	LSETUP(0xffa0208e <_DHCP_tx+0x1ae>, 0xffa0208e <_DHCP_tx+0x1ae>) LC1 = P2;
ffa0208e:	08 92       	[P1++] = R0;
ffa02090:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa02094:	54 5a       	P1 = P4 + P2;
ffa02096:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02098:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa0209a:	b2 e0 02 20 	LSETUP(0xffa0209e <_DHCP_tx+0x1be>, 0xffa0209e <_DHCP_tx+0x1be>) LC1 = P2;
ffa0209e:	08 92       	[P1++] = R0;
ffa020a0:	44 30       	R0 = P4;
ffa020a2:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa020a6:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa020aa:	f0 b9 00 00 
ffa020ae:	14 30       	R2 = R4;
ffa020b0:	ff e3 48 fa 	CALL 0xffa01540 <_memcpy_>;
ffa020b4:	01 e8 00 00 	UNLINK;
ffa020b8:	a3 05       	(R7:4, P5:3) = [SP++];
ffa020ba:	ff e2 a5 fe 	JUMP.L 0xffa01e04 <_bfin_EMAC_send_nocopy>;
	...

ffa020c0 <_DHCP_tx_discover>:
ffa020c0:	c5 04       	[--SP] = (P5:5);
ffa020c2:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e74 <_NetOurMAC> */
ffa020c6:	0d e1 48 0e 	P5.L = 0xe48;		/* (3656)	P5=0xff900e48 <_NetDHCPserv> */
ffa020ca:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa020cc:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa020d0:	28 93       	[P5] = R0;
ffa020d2:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa020d4:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa020d8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa020da:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa020de:	b8 e6 fe ff 	B[FP + -0x2] = R0;
ffa020e2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa020e4:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa020e8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa020ec:	00 e1 cc 01 	R0.L = 0x1cc;		/* (460)	R0=0xff9001cc(-7339572) */
ffa020f0:	ff e3 80 f8 	CALL 0xffa011f0 <_printf_str>;
ffa020f4:	4f 30       	R1 = FP;
ffa020f6:	2a 91       	R2 = [P5];
ffa020f8:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa020fa:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa020fc:	ff e3 f2 fe 	CALL 0xffa01ee0 <_DHCP_tx>;
ffa02100:	01 e8 00 00 	UNLINK;
ffa02104:	85 04       	(P5:5) = [SP++];
ffa02106:	10 00       	RTS;

ffa02108 <_bfin_EMAC_send>:
ffa02108:	c4 04       	[--SP] = (P5:4);
ffa0210a:	01 0d       	CC = R1 <= 0x0;
ffa0210c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02110:	18 30       	R3 = R0;
ffa02112:	11 30       	R2 = R1;
ffa02114:	90 18       	IF CC JUMP 0xffa02234 <_bfin_EMAC_send+0x12c>;
ffa02116:	00 00       	NOP;
ffa02118:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00020(-4194272) */
ffa0211c:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa02120:	50 95       	R0 = W[P2] (X);
ffa02122:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa02124:	74 10       	IF !CC JUMP 0xffa0220c <_bfin_EMAC_send+0x104>;
ffa02126:	00 00       	NOP;
ffa02128:	00 00       	NOP;
ffa0212a:	00 00       	NOP;
ffa0212c:	50 95       	R0 = W[P2] (X);
ffa0212e:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa02130:	17 18       	IF CC JUMP 0xffa0215e <_bfin_EMAC_send+0x56>;
ffa02132:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0e50 */
ffa02136:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa0213a:	b2 e0 09 10 	LSETUP(0xffa0213e <_bfin_EMAC_send+0x36>, 0xffa0214c <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa0213e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa02142:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa02146:	50 95       	R0 = W[P2] (X);
ffa02148:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0214a:	0a 18       	IF CC JUMP 0xffa0215e <_bfin_EMAC_send+0x56>;
ffa0214c:	00 00       	NOP;
ffa0214e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa02152:	00 e1 fc 01 	R0.L = 0x1fc;		/* (508)	R0=0xff9001fc(-7339524) */
ffa02156:	ff e3 4d f8 	CALL 0xffa011f0 <_printf_str>;
ffa0215a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0215c:	53 20       	JUMP.S 0xffa02202 <_bfin_EMAC_send+0xfa>;
ffa0215e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900000 <_l1_data_a> */
ffa02162:	0c e1 4c 0e 	P4.L = 0xe4c;		/* (3660)	P4=0xff900e4c <_txIdx> */
ffa02166:	20 95       	R0 = W[P4] (Z);
ffa02168:	10 32       	P2 = R0;
ffa0216a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e48 <_NetDHCPserv> */
ffa0216e:	0d e1 50 0e 	P5.L = 0xe50;		/* (3664)	P5=0xff900e50 <_txbuf> */
ffa02172:	0b 30       	R1 = R3;
ffa02174:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02176:	52 91       	P2 = [P2];
ffa02178:	92 ad       	P2 = [P2 + 0x18];
ffa0217a:	12 96       	W[P2++] = R2;
ffa0217c:	42 30       	R0 = P2;
ffa0217e:	ff e3 e1 f9 	CALL 0xffa01540 <_memcpy_>;
ffa02182:	20 95       	R0 = W[P4] (Z);
ffa02184:	10 32       	P2 = R0;
ffa02186:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02188:	51 91       	P1 = [P2];
ffa0218a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa0218e:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa02192:	51 93       	[P2] = P1;
ffa02194:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa02198:	88 a1       	R0 = [P1 + 0x18];
ffa0219a:	0a e1 9a 04 	P2.L = 0x49a;		/* (1178)	P2=0xff90049a <_txdmacfg> */
ffa0219e:	48 b0       	[P1 + 0x4] = R0;
ffa021a0:	50 95       	R0 = W[P2] (X);
ffa021a2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0049a(-4193126) */
ffa021a6:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa021aa:	10 97       	W[P2] = R0;
ffa021ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa021b0:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa021b4:	10 91       	R0 = [P2];
ffa021b6:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa021b8:	10 93       	[P2] = R0;
ffa021ba:	88 a2       	R0 = [P1 + 0x28];
ffa021bc:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa021be:	13 10       	IF !CC JUMP 0xffa021e4 <_bfin_EMAC_send+0xdc>;
ffa021c0:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa021c4:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa021c8:	b2 e0 05 20 	LSETUP(0xffa021cc <_bfin_EMAC_send+0xc4>, 0xffa021d2 <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa021cc:	88 a2       	R0 = [P1 + 0x28];
ffa021ce:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa021d0:	0a 10       	IF !CC JUMP 0xffa021e4 <_bfin_EMAC_send+0xdc>;
ffa021d2:	00 00       	NOP;
ffa021d4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001fc(-7339524) */
ffa021d8:	00 e1 14 02 	R0.L = 0x214;		/* (532)	R0=0xff900214(-7339500) */
ffa021dc:	ff e3 0a f8 	CALL 0xffa011f0 <_printf_str>;
ffa021e0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa021e2:	10 20       	JUMP.S 0xffa02202 <_bfin_EMAC_send+0xfa>;
ffa021e4:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa021e8:	61 95 00 00 
ffa021ec:	8a a2       	R2 = [P1 + 0x28];
ffa021ee:	88 b2       	[P1 + 0x28] = R0;
ffa021f0:	c8 42       	R0 = R1.L (Z);
ffa021f2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa021f6:	10 0d       	CC = R0 <= 0x2;
ffa021f8:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa021fc:	14 1c       	IF CC JUMP 0xffa02224 <_bfin_EMAC_send+0x11c> (BP);
ffa021fe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02200:	10 97       	W[P2] = R0;
ffa02202:	01 e8 00 00 	UNLINK;
ffa02206:	02 30       	R0 = R2;
ffa02208:	84 04       	(P5:4) = [SP++];
ffa0220a:	10 00       	RTS;
ffa0220c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02210:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa02214:	ff e3 ee f7 	CALL 0xffa011f0 <_printf_str>;
ffa02218:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0221a:	01 e8 00 00 	UNLINK;
ffa0221e:	02 30       	R0 = R2;
ffa02220:	84 04       	(P5:4) = [SP++];
ffa02222:	10 00       	RTS;
ffa02224:	01 30       	R0 = R1;
ffa02226:	08 64       	R0 += 0x1;		/* (  1) */
ffa02228:	10 97       	W[P2] = R0;
ffa0222a:	01 e8 00 00 	UNLINK;
ffa0222e:	02 30       	R0 = R2;
ffa02230:	84 04       	(P5:4) = [SP++];
ffa02232:	10 00       	RTS;
ffa02234:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90019c(-7339620) */
ffa02238:	00 e1 e0 01 	R0.L = 0x1e0;		/* (480)	R0=0xff9001e0(-7339552) */
ffa0223c:	ff e3 9c f8 	CALL 0xffa01374 <_printf_int>;
ffa02240:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02242:	01 e8 00 00 	UNLINK;
ffa02246:	02 30       	R0 = R2;
ffa02248:	84 04       	(P5:4) = [SP++];
ffa0224a:	10 00       	RTS;

ffa0224c <_ether_testUDP>:
ffa0224c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0224e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa02252:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02256:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa0225a:	11 95       	R1 = W[P2] (Z);
ffa0225c:	11 32       	P2 = R1;
ffa0225e:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa02262:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa02266:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa0226a:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0226c:	52 91       	P2 = [P2];
ffa0226e:	95 ad       	P5 = [P2 + 0x18];
ffa02270:	55 32       	P2 = P5;
ffa02272:	11 96       	W[P2++] = R1;
ffa02274:	4a 30       	R1 = P2;
ffa02276:	00 e3 27 08 	CALL 0xffa032c4 <_ARP_req>;
ffa0227a:	00 0c       	CC = R0 == 0x0;
ffa0227c:	7f 18       	IF CC JUMP 0xffa0237a <_ether_testUDP+0x12e>;
ffa0227e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa02282:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetOurMAC> */
ffa02286:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02288:	50 99       	R0 = B[P2] (X);
ffa0228a:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0228e:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa02292:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02296:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa0229a:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa0229e:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa022a2:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa022a6:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa022aa:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa022ae:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa022b2:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa022b6:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa022ba:	ff e3 fb fb 	CALL 0xffa01ab0 <_htons>;
ffa022be:	e8 b5       	W[P5 + 0xe] = R0;
ffa022c0:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa022c4:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa022c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa022ca:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa022ce:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa022d0:	ff e3 f0 fb 	CALL 0xffa01ab0 <_htons>;
ffa022d4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e74 <_NetOurMAC> */
ffa022d8:	0a e1 4e 0e 	P2.L = 0xe4e;		/* (3662)	P2=0xff900e4e <_NetIPID> */
ffa022dc:	68 b6       	W[P5 + 0x12] = R0;
ffa022de:	10 95       	R0 = W[P2] (Z);
ffa022e0:	08 30       	R1 = R0;
ffa022e2:	09 64       	R1 += 0x1;		/* (  1) */
ffa022e4:	11 97       	W[P2] = R1;
ffa022e6:	ff e3 e5 fb 	CALL 0xffa01ab0 <_htons>;
ffa022ea:	a8 b6       	W[P5 + 0x14] = R0;
ffa022ec:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa022f0:	ff e3 e0 fb 	CALL 0xffa01ab0 <_htons>;
ffa022f4:	e8 b6       	W[P5 + 0x16] = R0;
ffa022f6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa022f8:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa022fc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4e <_NetIPID> */
ffa02300:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa02302:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa02306:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa0230a:	10 91       	R0 = [P2];
ffa0230c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e80 <_NetOurIP> */
ffa02310:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_NetDestIP> */
ffa02314:	e8 b1       	[P5 + 0x1c] = R0;
ffa02316:	10 91       	R0 = [P2];
ffa02318:	28 b2       	[P5 + 0x20] = R0;
ffa0231a:	45 30       	R0 = P5;
ffa0231c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0231e:	6f b7       	W[P5 + 0x1a] = R7;
ffa02320:	80 64       	R0 += 0x10;		/* ( 16) */
ffa02322:	ff e3 af fb 	CALL 0xffa01a80 <_NetCksum>;
ffa02326:	c0 43       	R0 =~ R0;
ffa02328:	68 b7       	W[P5 + 0x1a] = R0;
ffa0232a:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa0232e:	ff e3 c1 fb 	CALL 0xffa01ab0 <_htons>;
ffa02332:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa02336:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa0233a:	ff e3 bb fb 	CALL 0xffa01ab0 <_htons>;
ffa0233e:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa02342:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa02344:	ff e3 b6 fb 	CALL 0xffa01ab0 <_htons>;
ffa02348:	55 32       	P2 = P5;
ffa0234a:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa0234e:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa02352:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa02354:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02356:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa02358:	b2 e0 03 10 	LSETUP(0xffa0235c <_ether_testUDP+0x110>, 0xffa0235e <_ether_testUDP+0x112>) LC1 = P1;
ffa0235c:	11 9a       	B[P2++] = R1;
ffa0235e:	09 64       	R1 += 0x1;		/* (  1) */
ffa02360:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa02364:	00 e1 28 02 	R0.L = 0x228;		/* (552)	R0=0xff900228(-7339480) */
ffa02368:	ff e3 44 f7 	CALL 0xffa011f0 <_printf_str>;
ffa0236c:	ff e3 4c fd 	CALL 0xffa01e04 <_bfin_EMAC_send_nocopy>;
ffa02370:	01 e8 00 00 	UNLINK;
ffa02374:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02376:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02378:	10 00       	RTS;
ffa0237a:	01 e8 00 00 	UNLINK;
ffa0237e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02380:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02382:	10 00       	RTS;

ffa02384 <_eth_header_setup>:
ffa02384:	c4 04       	[--SP] = (P5:4);
ffa02386:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_NetDestIP> */
ffa0238a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0238e:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa02392:	00 32       	P0 = R0;
ffa02394:	10 95       	R0 = W[P2] (Z);
ffa02396:	10 32       	P2 = R0;
ffa02398:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa0239c:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa023a0:	00 91       	R0 = [P0];
ffa023a2:	21 32       	P4 = R1;
ffa023a4:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa023a6:	52 91       	P2 = [P2];
ffa023a8:	08 30       	R1 = R0;
ffa023aa:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa023ac:	80 67       	R0 += -0x10;		/* (-16) */
ffa023ae:	95 ad       	P5 = [P2 + 0x18];
ffa023b0:	00 93       	[P0] = R0;
ffa023b2:	02 30       	R0 = R2;
ffa023b4:	55 32       	P2 = P5;
ffa023b6:	11 96       	W[P2++] = R1;
ffa023b8:	4a 30       	R1 = P2;
ffa023ba:	00 e3 85 07 	CALL 0xffa032c4 <_ARP_req>;
ffa023be:	00 0c       	CC = R0 == 0x0;
ffa023c0:	2b 18       	IF CC JUMP 0xffa02416 <_eth_header_setup+0x92>;
ffa023c2:	00 00       	NOP;
ffa023c4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa023c8:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetOurMAC> */
ffa023cc:	50 99       	R0 = B[P2] (X);
ffa023ce:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa023d2:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa023d6:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa023da:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa023de:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa023e2:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa023e6:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa023ea:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa023ee:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa023f2:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa023f6:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa023fa:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa023fe:	ff e3 59 fb 	CALL 0xffa01ab0 <_htons>;
ffa02402:	e8 b5       	W[P5 + 0xe] = R0;
ffa02404:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02406:	20 9b       	B[P4] = R0;
ffa02408:	4d 30       	R1 = P5;
ffa0240a:	81 64       	R1 += 0x10;		/* ( 16) */
ffa0240c:	01 e8 00 00 	UNLINK;
ffa02410:	01 30       	R0 = R1;
ffa02412:	84 04       	(P5:4) = [SP++];
ffa02414:	10 00       	RTS;
ffa02416:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02418:	20 9b       	B[P4] = R0;
ffa0241a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0241c:	01 e8 00 00 	UNLINK;
ffa02420:	01 30       	R0 = R1;
ffa02422:	84 04       	(P5:4) = [SP++];
ffa02424:	10 00       	RTS;
	...

ffa02428 <_icmp_packet_setup>:
ffa02428:	e4 05       	[--SP] = (R7:4, P5:4);
ffa0242a:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0242e:	29 32       	P5 = R1;
ffa02430:	7f 30       	R7 = FP;
ffa02432:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02434:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02436:	f0 bb       	[FP -0x4] = R0;
ffa02438:	07 30       	R0 = R7;
ffa0243a:	22 32       	P4 = R2;
ffa0243c:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa02440:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa02444:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa02448:	ff e3 9e ff 	CALL 0xffa02384 <_eth_header_setup>;
ffa0244c:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa02450:	68 99 00 00 
ffa02454:	80 0c       	CC = R0 < 0x0;
ffa02456:	14 18       	IF CC JUMP 0xffa0247e <_icmp_packet_setup+0x56>;
ffa02458:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0245a:	f0 b0       	[SP + 0xc] = R0;
ffa0245c:	54 30       	R2 = P4;
ffa0245e:	01 30       	R0 = R1;
ffa02460:	0f 30       	R1 = R7;
ffa02462:	ff e3 5b fb 	CALL 0xffa01b18 <_ip_header_setup>;
ffa02466:	e9 42       	R1 = R5.L (Z);
ffa02468:	f1 b0       	[SP + 0xc] = R1;
ffa0246a:	e1 42       	R1 = R4.L (Z);
ffa0246c:	31 b1       	[SP + 0x10] = R1;
ffa0246e:	72 43       	R2 = R6.B (Z);
ffa02470:	0f 30       	R1 = R7;
ffa02472:	ff e3 9d fb 	CALL 0xffa01bac <_icmp_header_setup>;
ffa02476:	01 e8 00 00 	UNLINK;
ffa0247a:	a4 05       	(R7:4, P5:4) = [SP++];
ffa0247c:	10 00       	RTS;
ffa0247e:	01 e8 00 00 	UNLINK;
ffa02482:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02484:	a4 05       	(R7:4, P5:4) = [SP++];
ffa02486:	10 00       	RTS;

ffa02488 <_icmp_rx>:
ffa02488:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0248a:	28 32       	P5 = R0;
ffa0248c:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02490:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02494:	39 30       	R7 = R1;
ffa02496:	ff e3 0d fb 	CALL 0xffa01ab0 <_htons>;
ffa0249a:	c0 42       	R0 = R0.L (Z);
ffa0249c:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa0249e:	01 08       	CC = R1 == R0;
ffa024a0:	06 18       	IF CC JUMP 0xffa024ac <_icmp_rx+0x24>;
ffa024a2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024a4:	01 e8 00 00 	UNLINK;
ffa024a8:	bd 05       	(R7:7, P5:5) = [SP++];
ffa024aa:	10 00       	RTS;
ffa024ac:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa024ae:	07 0a       	CC = R7 <= R0 (IU);
ffa024b0:	f9 1b       	IF CC JUMP 0xffa024a2 <_icmp_rx+0x1a>;
ffa024b2:	00 00       	NOP;
ffa024b4:	00 00       	NOP;
ffa024b6:	00 00       	NOP;
ffa024b8:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa024bc:	08 0c       	CC = R0 == 0x1;
ffa024be:	f2 17       	IF !CC JUMP 0xffa024a2 <_icmp_rx+0x1a> (BP);
ffa024c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e74 <_NetOurMAC> */
ffa024c4:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa024c8:	28 a2       	R0 = [P5 + 0x20];
ffa024ca:	11 91       	R1 = [P2];
ffa024cc:	08 08       	CC = R0 == R1;
ffa024ce:	ea 17       	IF !CC JUMP 0xffa024a2 <_icmp_rx+0x1a> (BP);
ffa024d0:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa024d4:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa024d8:	08 08       	CC = R0 == R1;
ffa024da:	3e 18       	IF CC JUMP 0xffa02556 <_icmp_rx+0xce>;
ffa024dc:	00 00       	NOP;
ffa024de:	00 00       	NOP;
ffa024e0:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa024e2:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa024e6:	08 08       	CC = R0 == R1;
ffa024e8:	dd 17       	IF !CC JUMP 0xffa024a2 <_icmp_rx+0x1a> (BP);
ffa024ea:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa024ee:	e9 a1       	R1 = [P5 + 0x1c];
ffa024f0:	00 e1 40 02 	R0.L = 0x240;		/* (576)	R0=0xff900240(-7339456) */
ffa024f4:	ff e3 e2 f7 	CALL 0xffa014b8 <_printf_ip>;
ffa024f8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e80 <_NetOurIP> */
ffa024fc:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_NetDestIP> */
ffa02500:	e8 a1       	R0 = [P5 + 0x1c];
ffa02502:	4d 30       	R1 = P5;
ffa02504:	10 93       	[P2] = R0;
ffa02506:	41 64       	R1 += 0x8;		/* (  8) */
ffa02508:	00 e3 e0 04 	CALL 0xffa02ec8 <_ARP_lut_add>;
ffa0250c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900240(-7339456) */
ffa02510:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02514:	ff e3 6e f6 	CALL 0xffa011f0 <_printf_str>;
ffa02518:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa0251c:	ea a1 00 00 
ffa02520:	f0 b0       	[SP + 0xc] = R0;
ffa02522:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa02526:	30 b1       	[SP + 0x10] = R0;
ffa02528:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa0252a:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa0252e:	4f 30       	R1 = FP;
ffa02530:	70 b1       	[SP + 0x14] = R0;
ffa02532:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa02534:	07 30       	R0 = R7;
ffa02536:	ff e3 79 ff 	CALL 0xffa02428 <_icmp_packet_setup>;
ffa0253a:	08 30       	R1 = R0;
ffa0253c:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa02540:	00 0d       	CC = R0 <= 0x0;
ffa02542:	b0 1b       	IF CC JUMP 0xffa024a2 <_icmp_rx+0x1a>;
ffa02544:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa02546:	45 30       	R0 = P5;
ffa02548:	17 30       	R2 = R7;
ffa0254a:	ff e3 fb f7 	CALL 0xffa01540 <_memcpy_>;
ffa0254e:	ff e3 5b fc 	CALL 0xffa01e04 <_bfin_EMAC_send_nocopy>;
ffa02552:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02554:	a8 2f       	JUMP.S 0xffa024a4 <_icmp_rx+0x1c>;
ffa02556:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_NetDestIP> */
ffa0255a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0255c:	0a e1 d4 0b 	P2.L = 0xbd4;		/* (3028)	P2=0xff900bd4 <_g_streamEnabled> */
ffa02560:	10 9b       	B[P2] = R0;
ffa02562:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02564:	a0 2f       	JUMP.S 0xffa024a4 <_icmp_rx+0x1c>;
	...

ffa02568 <_udp_packet_setup>:
ffa02568:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0256a:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0256e:	29 32       	P5 = R1;
ffa02570:	7f 30       	R7 = FP;
ffa02572:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e4c <_txIdx> */
ffa02576:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02578:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0257a:	0c e1 84 0e 	P4.L = 0xe84;		/* (3716)	P4=0xff900e84 <_NetDataDestIP> */
ffa0257e:	f0 bb       	[FP -0x4] = R0;
ffa02580:	22 91       	R2 = [P4];
ffa02582:	07 30       	R0 = R7;
ffa02584:	ff e3 00 ff 	CALL 0xffa02384 <_eth_header_setup>;
ffa02588:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa0258c:	68 99 00 00 
ffa02590:	80 0c       	CC = R0 < 0x0;
ffa02592:	14 18       	IF CC JUMP 0xffa025ba <_udp_packet_setup+0x52>;
ffa02594:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa02596:	f0 b0       	[SP + 0xc] = R0;
ffa02598:	01 30       	R0 = R1;
ffa0259a:	22 91       	R2 = [P4];
ffa0259c:	0f 30       	R1 = R7;
ffa0259e:	ff e3 bd fa 	CALL 0xffa01b18 <_ip_header_setup>;
ffa025a2:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa025a6:	f1 b0       	[SP + 0xc] = R1;
ffa025a8:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa025ac:	0f 30       	R1 = R7;
ffa025ae:	ff e3 23 fb 	CALL 0xffa01bf4 <_udp_header_setup>;
ffa025b2:	01 e8 00 00 	UNLINK;
ffa025b6:	bc 05       	(R7:7, P5:4) = [SP++];
ffa025b8:	10 00       	RTS;
ffa025ba:	01 e8 00 00 	UNLINK;
ffa025be:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa025c0:	bc 05       	(R7:7, P5:4) = [SP++];
ffa025c2:	10 00       	RTS;

ffa025c4 <_SetupTxBuffer>:
ffa025c4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa025c6:	38 30       	R7 = R0;
ffa025c8:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa025cc:	c7 40       	R7 *= R0;
ffa025ce:	17 32       	P2 = R7;
ffa025d0:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800e50 */
ffa025d4:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa025d8:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa025dc:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa025e0:	6a 5b       	P5 = P2 + P5;
ffa025e2:	c7 51       	R7 = R7 + R0;
ffa025e4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa025e8:	45 30       	R0 = P5;
ffa025ea:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa025ec:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa025ee:	ff e3 b9 f7 	CALL 0xffa01560 <_memset_>;
ffa025f2:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa025f6:	af b1 00 00 
ffa025fa:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa025fe:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02602:	ff e3 af f7 	CALL 0xffa01560 <_memset_>;
ffa02606:	45 30       	R0 = P5;
ffa02608:	60 64       	R0 += 0xc;		/* ( 12) */
ffa0260a:	28 93       	[P5] = R0;
ffa0260c:	a8 a1       	R0 = [P5 + 0x18];
ffa0260e:	68 b0       	[P5 + 0x4] = R0;
ffa02610:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa02614:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02616:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa02618:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa0261a:	10 54       	R0 = R0 & R2;
ffa0261c:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa0261e:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02622:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa02624:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa02628:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0262a:	18 54       	R0 = R0 & R3;
ffa0262c:	08 56       	R0 = R0 | R1;
ffa0262e:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa02632:	08 56       	R0 = R0 | R1;
ffa02634:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02638:	45 30       	R0 = P5;
ffa0263a:	40 65       	R0 += 0x28;		/* ( 40) */
ffa0263c:	28 b1       	[P5 + 0x10] = R0;
ffa0263e:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa02642:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02644:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02646:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa0264a:	10 54       	R0 = R0 & R2;
ffa0264c:	08 56       	R0 = R0 | R1;
ffa0264e:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa02652:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa02656:	18 54       	R0 = R0 & R3;
ffa02658:	39 64       	R1 += 0x7;		/* (  7) */
ffa0265a:	08 54       	R0 = R0 & R1;
ffa0265c:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02660:	ed bc       	[P5 + 0xc] = P5;
ffa02662:	01 e8 00 00 	UNLINK;
ffa02666:	45 30       	R0 = P5;
ffa02668:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0266a:	10 00       	RTS;

ffa0266c <_SetupRxBuffer>:
ffa0266c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0266e:	38 30       	R7 = R0;
ffa02670:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02674:	c7 40       	R7 *= R0;
ffa02676:	17 32       	P2 = R7;
ffa02678:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa0267c:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa02680:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02684:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa02688:	6a 5b       	P5 = P2 + P5;
ffa0268a:	c7 51       	R7 = R7 + R0;
ffa0268c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02690:	45 30       	R0 = P5;
ffa02692:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02694:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa02696:	ff e3 65 f7 	CALL 0xffa01560 <_memset_>;
ffa0269a:	af b1       	[P5 + 0x18] = R7;
ffa0269c:	07 30       	R0 = R7;
ffa0269e:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa026a2:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa026a6:	ff e3 5d f7 	CALL 0xffa01560 <_memset_>;
ffa026aa:	45 30       	R0 = P5;
ffa026ac:	60 64       	R0 += 0xc;		/* ( 12) */
ffa026ae:	28 93       	[P5] = R0;
ffa026b0:	a8 a1       	R0 = [P5 + 0x18];
ffa026b2:	68 b0       	[P5 + 0x4] = R0;
ffa026b4:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa026b8:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa026ba:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa026bc:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa026be:	08 54       	R0 = R0 & R1;
ffa026c0:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa026c2:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa026c6:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa026c8:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa026cc:	38 54       	R0 = R0 & R7;
ffa026ce:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa026d0:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa026d4:	18 56       	R0 = R0 | R3;
ffa026d6:	10 56       	R0 = R0 | R2;
ffa026d8:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa026dc:	45 30       	R0 = P5;
ffa026de:	20 65       	R0 += 0x24;		/* ( 36) */
ffa026e0:	28 b1       	[P5 + 0x10] = R0;
ffa026e2:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa026e6:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa026e8:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa026ea:	08 54       	R0 = R0 & R1;
ffa026ec:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa026f0:	08 56       	R0 = R0 | R1;
ffa026f2:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa026f6:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa026fa:	38 54       	R0 = R0 & R7;
ffa026fc:	18 56       	R0 = R0 | R3;
ffa026fe:	10 56       	R0 = R0 | R2;
ffa02700:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02704:	ed bc       	[P5 + 0xc] = P5;
ffa02706:	01 e8 00 00 	UNLINK;
ffa0270a:	45 30       	R0 = P5;
ffa0270c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0270e:	10 00       	RTS;

ffa02710 <_SetupSystemRegs>:
ffa02710:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02712:	28 32       	P5 = R0;
ffa02714:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa02718:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0271c:	00 e1 5c 02 	R0.L = 0x25c;		/* (604)	R0=0xff90025c(-7339428) */
ffa02720:	ff e3 68 f5 	CALL 0xffa011f0 <_printf_str>;
ffa02724:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bd4(-4191276) */
ffa02728:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa0272c:	50 95       	R0 = W[P2] (X);
ffa0272e:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa02732:	08 54       	R0 = R0 & R1;
ffa02734:	10 97       	W[P2] = R0;
ffa02736:	50 95       	R0 = W[P2] (X);
ffa02738:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa0273a:	10 97       	W[P2] = R0;
ffa0273c:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0273e:	51 95       	R1 = W[P2] (X);
ffa02740:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa02744:	08 56       	R0 = R0 | R1;
ffa02746:	10 97       	W[P2] = R0;
ffa02748:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0274a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0274c:	10 97       	W[P2] = R0;
ffa0274e:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa02750:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa02752:	10 97       	W[P2] = R0;
ffa02754:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa02758:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa0275c:	50 95       	R0 = W[P2] (X);
ffa0275e:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa02760:	10 97       	W[P2] = R0;
ffa02762:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa02766:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa0276a:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa0276e:	10 93       	[P2] = R0;
ffa02770:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02772:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa02776:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02778:	ff e3 28 f9 	CALL 0xffa019c8 <_WrPHYReg>;
ffa0277c:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02780:	ff e3 ce f8 	CALL 0xffa0191c <_udelay>;
ffa02784:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02786:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02788:	ff e3 3c f9 	CALL 0xffa01a00 <_RdPHYReg>;
ffa0278c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0278e:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa02790:	0e 20       	JUMP.S 0xffa027ac <_SetupSystemRegs+0x9c>;
ffa02792:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02796:	ff e3 c3 f8 	CALL 0xffa0191c <_udelay>;
ffa0279a:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0279c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0279e:	ff e3 31 f9 	CALL 0xffa01a00 <_RdPHYReg>;
ffa027a2:	0f 64       	R7 += 0x1;		/* (  1) */
ffa027a4:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa027a8:	0f 08       	CC = R7 == R1;
ffa027aa:	35 18       	IF CC JUMP 0xffa02814 <_SetupSystemRegs+0x104>;
ffa027ac:	06 54       	R0 = R6 & R0;
ffa027ae:	00 0c       	CC = R0 == 0x0;
ffa027b0:	f1 1f       	IF CC JUMP 0xffa02792 <_SetupSystemRegs+0x82> (BP);
ffa027b2:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa027b4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027b6:	ff e3 25 f9 	CALL 0xffa01a00 <_RdPHYReg>;
ffa027ba:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa027be:	01 54       	R0 = R1 & R0;
ffa027c0:	00 0c       	CC = R0 == 0x0;
ffa027c2:	27 1c       	IF CC JUMP 0xffa02810 <_SetupSystemRegs+0x100> (BP);
ffa027c4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa027c6:	d0 4f       	R0 <<= 0x1a;
ffa027c8:	28 93       	[P5] = R0;
ffa027ca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa027ce:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa027d0:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa027d4:	10 93       	[P2] = R0;
ffa027d6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa027da:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027dc:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa027e0:	10 97       	W[P2] = R0;
ffa027e2:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa027e4:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027e6:	11 97       	W[P2] = R1;
ffa027e8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027ea:	10 97       	W[P2] = R0;
ffa027ec:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027ee:	10 97       	W[P2] = R0;
ffa027f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa027f4:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa027f8:	10 97       	W[P2] = R0;
ffa027fa:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027fc:	11 97       	W[P2] = R1;
ffa027fe:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02800:	10 97       	W[P2] = R0;
ffa02802:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02804:	10 97       	W[P2] = R0;
ffa02806:	01 e8 00 00 	UNLINK;
ffa0280a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0280c:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0280e:	10 00       	RTS;
ffa02810:	28 93       	[P5] = R0;
ffa02812:	dc 2f       	JUMP.S 0xffa027ca <_SetupSystemRegs+0xba>;
ffa02814:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02818:	00 e1 74 02 	R0.L = 0x274;		/* (628)	R0=0xff900274(-7339404) */
ffa0281c:	ff e3 ea f4 	CALL 0xffa011f0 <_printf_str>;
ffa02820:	01 e8 00 00 	UNLINK;
ffa02824:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02826:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02828:	10 00       	RTS;
	...

ffa0282c <_SetupMacAddr>:
ffa0282c:	10 32       	P2 = R0;
ffa0282e:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02830:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02832:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02836:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa0283a:	10 9b       	B[P2] = R0;
ffa0283c:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa0283e:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa02842:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa02844:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa02848:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa0284a:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa0284e:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa02852:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02856:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa02858:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa0285c:	10 99       	R0 = B[P2] (Z);
ffa0285e:	08 56       	R0 = R0 | R1;
ffa02860:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa02864:	89 4f       	R1 <<= 0x11;
ffa02866:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00e50(-4190640) */
ffa0286a:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa0286e:	08 56       	R0 = R0 | R1;
ffa02870:	08 93       	[P1] = R0;
ffa02872:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02876:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa0287a:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa0287e:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa02880:	28 93       	[P5] = R0;
ffa02882:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa02886:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa0288a:	09 91       	R1 = [P1];
ffa0288c:	07 e1 64 0a 	R7.L = 0xa64;		/* (2660)	R7=0xff900a64(-7337372) */
ffa02890:	00 e1 a8 02 	R0.L = 0x2a8;		/* (680)	R0=0xff9002a8(-7339352) */
ffa02894:	ff e3 14 f5 	CALL 0xffa012bc <_printf_hex>;
ffa02898:	07 30       	R0 = R7;
ffa0289a:	ff e3 ab f4 	CALL 0xffa011f0 <_printf_str>;
ffa0289e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002a8(-7339352) */
ffa028a2:	29 91       	R1 = [P5];
ffa028a4:	00 e1 b4 02 	R0.L = 0x2b4;		/* (692)	R0=0xff9002b4(-7339340) */
ffa028a8:	ff e3 0a f5 	CALL 0xffa012bc <_printf_hex>;
ffa028ac:	01 e8 00 00 	UNLINK;
ffa028b0:	07 30       	R0 = R7;
ffa028b2:	bd 05       	(R7:7, P5:5) = [SP++];
ffa028b4:	ff e2 9e f4 	JUMP.L 0xffa011f0 <_printf_str>;

ffa028b8 <_bfin_EMAC_init>:
ffa028b8:	f3 05       	[--SP] = (R7:6, P5:3);
ffa028ba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002b4(-7339340) */
ffa028be:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa028c2:	00 e1 c0 02 	R0.L = 0x2c0;		/* (704)	R0=0xff9002c0(-7339328) */
ffa028c6:	ff e3 95 f4 	CALL 0xffa011f0 <_printf_str>;
ffa028ca:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 */
ffa028ce:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa028d0:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa028d4:	16 97       	W[P2] = R6;
ffa028d6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa028da:	0a e1 60 0e 	P2.L = 0xe60;		/* (3680)	P2=0xff900e60 <_rxIdx> */
ffa028de:	16 97       	W[P2] = R6;
ffa028e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e60 <_rxIdx> */
ffa028e4:	0a e1 4e 0e 	P2.L = 0xe4e;		/* (3662)	P2=0xff900e4e <_NetIPID> */
ffa028e8:	16 97       	W[P2] = R6;
ffa028ea:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4e <_NetIPID> */
ffa028ee:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa028f0:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetSubnetMask> */
ffa028f4:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa028f6:	17 93       	[P2] = R7;
ffa028f8:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa028fc:	f0 b0       	[SP + 0xc] = R0;
ffa028fe:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02900:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02904:	ff e3 2c f8 	CALL 0xffa0195c <_FormatIPAddress>;
ffa02908:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e7c <_NetSubnetMask> */
ffa0290c:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa02910:	10 93       	[P2] = R0;
ffa02912:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02914:	f0 b0       	[SP + 0xc] = R0;
ffa02916:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa0291a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0291c:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02920:	ff e3 1e f8 	CALL 0xffa0195c <_FormatIPAddress>;
ffa02924:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e80 <_NetOurIP> */
ffa02928:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_NetDestIP> */
ffa0292c:	10 93       	[P2] = R0;
ffa0292e:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02930:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa02932:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa02936:	f0 b0       	[SP + 0xc] = R0;
ffa02938:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa0293c:	ff e3 10 f8 	CALL 0xffa0195c <_FormatIPAddress>;
ffa02940:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_NetDestIP> */
ffa02944:	0a e1 84 0e 	P2.L = 0xe84;		/* (3716)	P2=0xff900e84 <_NetDataDestIP> */
ffa02948:	10 93       	[P2] = R0;
ffa0294a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e84 <_NetDataDestIP> */
ffa0294e:	0a e1 64 0f 	P2.L = 0xf64;		/* (3940)	P2=0xff900f64 <_TcpState> */
ffa02952:	17 93       	[P2] = R7;
ffa02954:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f64 <_TcpState> */
ffa02958:	0a e1 5c 0f 	P2.L = 0xf5c;		/* (3932)	P2=0xff900f5c <_TcpSeqClient> */
ffa0295c:	17 93       	[P2] = R7;
ffa0295e:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa02962:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f5c <_TcpSeqClient> */
ffa02966:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa0296a:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa0296e:	10 93       	[P2] = R0;
ffa02970:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa02974:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_TcpClientPort> */
ffa02978:	16 97       	W[P2] = R6;
ffa0297a:	00 e3 59 02 	CALL 0xffa02e2c <_ARP_init>;
ffa0297e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00f70(-4190352) */
ffa02982:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02986:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa0298a:	17 93       	[P2] = R7;
ffa0298c:	00 e1 74 0e 	R0.L = 0xe74;		/* (3700)	R0=0xff900e74 <_NetOurMAC>(-7336332) */
ffa02990:	ff e3 4e ff 	CALL 0xffa0282c <_SetupMacAddr>;
ffa02994:	47 30       	R0 = FP;
ffa02996:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa02998:	ff e3 bc fe 	CALL 0xffa02710 <_SetupSystemRegs>;
ffa0299c:	80 0c       	CC = R0 < 0x0;
ffa0299e:	7a 18       	IF CC JUMP 0xffa02a92 <_bfin_EMAC_init+0x1da>;
ffa029a0:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa029a4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa029a6:	07 e1 64 0e 	R7.L = 0xe64;		/* (3684)	R7=0xff900e64 <_rxbuf>(-7336348) */
ffa029aa:	ff e3 61 fe 	CALL 0xffa0266c <_SetupRxBuffer>;
ffa029ae:	07 32       	P0 = R7;
ffa029b0:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa029b2:	00 93       	[P0] = R0;
ffa029b4:	17 32       	P2 = R7;
ffa029b6:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa029b8:	44 30       	R0 = P4;
ffa029ba:	ff e3 59 fe 	CALL 0xffa0266c <_SetupRxBuffer>;
ffa029be:	44 0c       	CC = P4 == 0x0;
ffa029c0:	08 32       	P1 = R0;
ffa029c2:	28 92       	[P5++] = R0;
ffa029c4:	52 18       	IF CC JUMP 0xffa02a68 <_bfin_EMAC_init+0x1b0>;
ffa029c6:	07 32       	P0 = R7;
ffa029c8:	5c 0c       	CC = P4 == 0x3;
ffa029ca:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa029cc:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa029d0:	d0 b0       	[P2 + 0xc] = R0;
ffa029d2:	54 18       	IF CC JUMP 0xffa02a7a <_bfin_EMAC_init+0x1c2>;
ffa029d4:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa029d6:	5c 0d       	CC = P4 <= 0x3;
ffa029d8:	ee 1f       	IF CC JUMP 0xffa029b4 <_bfin_EMAC_init+0xfc> (BP);
ffa029da:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa029dc:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa029e0:	ff e3 f2 fd 	CALL 0xffa025c4 <_SetupTxBuffer>;
ffa029e4:	0b e1 50 0e 	P3.L = 0xe50;		/* (3664)	P3=0xff900e50 <_txbuf> */
ffa029e8:	18 93       	[P3] = R0;
ffa029ea:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa029ec:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa029ee:	44 30       	R0 = P4;
ffa029f0:	ff e3 ea fd 	CALL 0xffa025c4 <_SetupTxBuffer>;
ffa029f4:	44 0c       	CC = P4 == 0x0;
ffa029f6:	08 32       	P1 = R0;
ffa029f8:	28 92       	[P5++] = R0;
ffa029fa:	35 18       	IF CC JUMP 0xffa02a64 <_bfin_EMAC_init+0x1ac>;
ffa029fc:	00 00       	NOP;
ffa029fe:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa02a00:	5c 0c       	CC = P4 == 0x3;
ffa02a02:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa02a06:	d0 b0       	[P2 + 0xc] = R0;
ffa02a08:	32 18       	IF CC JUMP 0xffa02a6c <_bfin_EMAC_init+0x1b4>;
ffa02a0a:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa02a0c:	5c 0d       	CC = P4 <= 0x3;
ffa02a0e:	ef 1f       	IF CC JUMP 0xffa029ec <_bfin_EMAC_init+0x134> (BP);
ffa02a10:	17 32       	P2 = R7;
ffa02a12:	51 91       	P1 = [P2];
ffa02a14:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa02a18:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa02a1c:	51 93       	[P2] = P1;
ffa02a1e:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa02a20:	42 6c       	P2 += 0x8;		/* (  8) */
ffa02a22:	10 97       	W[P2] = R0;
ffa02a24:	ff e3 c4 f7 	CALL 0xffa019ac <_PollMdcDone>;
ffa02a28:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02a2a:	f0 b9       	R0 = [FP -0x4];
ffa02a2c:	d1 4f       	R1 <<= 0x1a;
ffa02a2e:	08 08       	CC = R0 == R1;
ffa02a30:	2c 18       	IF CC JUMP 0xffa02a88 <_bfin_EMAC_init+0x1d0>;
ffa02a32:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02a36:	01 30       	R0 = R1;
ffa02a38:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa02a3c:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02a40:	10 93       	[P2] = R0;
ffa02a42:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02a46:	00 e1 d0 02 	R0.L = 0x2d0;		/* (720)	R0=0xff9002d0(-7339312) */
ffa02a4a:	ff e3 39 f4 	CALL 0xffa012bc <_printf_hex>;
ffa02a4e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002d0(-7339312) */
ffa02a52:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02a56:	ff e3 cd f3 	CALL 0xffa011f0 <_printf_str>;
ffa02a5a:	01 e8 00 00 	UNLINK;
ffa02a5e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a60:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02a62:	10 00       	RTS;
ffa02a64:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02a66:	c4 2f       	JUMP.S 0xffa029ee <_bfin_EMAC_init+0x136>;
ffa02a68:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02a6a:	a7 2f       	JUMP.S 0xffa029b8 <_bfin_EMAC_init+0x100>;
ffa02a6c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa02a70:	0a e1 50 0e 	P2.L = 0xe50;		/* (3664)	P2=0xff900e50 <_txbuf> */
ffa02a74:	10 91       	R0 = [P2];
ffa02a76:	c8 b0       	[P1 + 0xc] = R0;
ffa02a78:	cc 2f       	JUMP.S 0xffa02a10 <_bfin_EMAC_init+0x158>;
ffa02a7a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e50 <_txbuf> */
ffa02a7e:	0a e1 64 0e 	P2.L = 0xe64;		/* (3684)	P2=0xff900e64 <_rxbuf> */
ffa02a82:	10 91       	R0 = [P2];
ffa02a84:	c8 b0       	[P1 + 0xc] = R0;
ffa02a86:	aa 2f       	JUMP.S 0xffa029da <_bfin_EMAC_init+0x122>;
ffa02a88:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02a8c:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa02a8e:	01 30       	R0 = R1;
ffa02a90:	d4 2f       	JUMP.S 0xffa02a38 <_bfin_EMAC_init+0x180>;
ffa02a92:	01 e8 00 00 	UNLINK;
ffa02a96:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02a98:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02a9a:	10 00       	RTS;

ffa02a9c <_bfin_EMAC_recv_poll>:
ffa02a9c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02a9e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa02aa2:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa02aa6:	0d e1 64 0e 	P5.L = 0xe64;		/* (3684)	P5=0xff900e64 <_rxbuf> */
ffa02aaa:	0c e1 60 0e 	P4.L = 0xe60;		/* (3680)	P4=0xff900e60 <_rxIdx> */
ffa02aae:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02ab2:	28 30       	R5 = R0;
ffa02ab4:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02ab6:	75 30       	R6 = P5;
ffa02ab8:	5c 32       	P3 = P4;
ffa02aba:	06 20       	JUMP.S 0xffa02ac6 <_bfin_EMAC_recv_poll+0x2a>;
ffa02abc:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02abe:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02ac2:	07 08       	CC = R7 == R0;
ffa02ac4:	0c 18       	IF CC JUMP 0xffa02adc <_bfin_EMAC_recv_poll+0x40>;
ffa02ac6:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa02aca:	ff e3 29 f7 	CALL 0xffa0191c <_udelay>;
ffa02ace:	20 95       	R0 = W[P4] (Z);
ffa02ad0:	10 32       	P2 = R0;
ffa02ad2:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02ad4:	52 91       	P2 = [P2];
ffa02ad6:	90 a2       	R0 = [P2 + 0x28];
ffa02ad8:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02ada:	f1 1f       	IF CC JUMP 0xffa02abc <_bfin_EMAC_recv_poll+0x20> (BP);
ffa02adc:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02ae0:	91 a2       	R1 = [P2 + 0x28];
ffa02ae2:	41 54       	R1 = R1 & R0;
ffa02ae4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02ae6:	01 09       	CC = R1 <= R0;
ffa02ae8:	07 10       	IF !CC JUMP 0xffa02af6 <_bfin_EMAC_recv_poll+0x5a>;
ffa02aea:	01 e8 00 00 	UNLINK;
ffa02aee:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02af0:	07 30       	R0 = R7;
ffa02af2:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02af4:	10 00       	RTS;
ffa02af6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02af8:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa02afc:	90 b2 00 00 
ffa02b00:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02b02:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02b06:	0f 30       	R1 = R7;
ffa02b08:	00 e1 dc 02 	R0.L = 0x2dc;		/* (732)	R0=0xff9002dc(-7339300) */
ffa02b0c:	ff e3 34 f4 	CALL 0xffa01374 <_printf_int>;
ffa02b10:	18 95       	R0 = W[P3] (Z);
ffa02b12:	10 32       	P2 = R0;
ffa02b14:	0e 32       	P1 = R6;
ffa02b16:	0f 30       	R1 = R7;
ffa02b18:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02b1a:	52 91       	P2 = [P2];
ffa02b1c:	90 a1       	R0 = [P2 + 0x18];
ffa02b1e:	15 32       	P2 = R5;
ffa02b20:	10 93       	[P2] = R0;
ffa02b22:	00 e3 39 02 	CALL 0xffa02f94 <_ARP_rx>;
ffa02b26:	00 0c       	CC = R0 == 0x0;
ffa02b28:	1f 18       	IF CC JUMP 0xffa02b66 <_bfin_EMAC_recv_poll+0xca>;
ffa02b2a:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02b2c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02b30:	20 95       	R0 = W[P4] (Z);
ffa02b32:	10 32       	P2 = R0;
ffa02b34:	61 95       	R1 = W[P4] (X);
ffa02b36:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b38:	09 e1 60 0e 	P1.L = 0xe60;		/* (3680)	P1=0xff900e60 <_rxIdx> */
ffa02b3c:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02b3e:	52 91       	P2 = [P2];
ffa02b40:	90 b2       	[P2 + 0x28] = R0;
ffa02b42:	c8 42       	R0 = R1.L (Z);
ffa02b44:	10 0d       	CC = R0 <= 0x2;
ffa02b46:	08 1c       	IF CC JUMP 0xffa02b56 <_bfin_EMAC_recv_poll+0xba> (BP);
ffa02b48:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b4a:	08 97       	W[P1] = R0;
ffa02b4c:	01 e8 00 00 	UNLINK;
ffa02b50:	07 30       	R0 = R7;
ffa02b52:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b54:	10 00       	RTS;
ffa02b56:	01 30       	R0 = R1;
ffa02b58:	08 64       	R0 += 0x1;		/* (  1) */
ffa02b5a:	08 97       	W[P1] = R0;
ffa02b5c:	01 e8 00 00 	UNLINK;
ffa02b60:	07 30       	R0 = R7;
ffa02b62:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b64:	10 00       	RTS;
ffa02b66:	0d 32       	P1 = R5;
ffa02b68:	0f 30       	R1 = R7;
ffa02b6a:	08 91       	R0 = [P1];
ffa02b6c:	ff e3 8e fc 	CALL 0xffa02488 <_icmp_rx>;
ffa02b70:	00 0c       	CC = R0 == 0x0;
ffa02b72:	dd 1f       	IF CC JUMP 0xffa02b2c <_bfin_EMAC_recv_poll+0x90> (BP);
ffa02b74:	db 2f       	JUMP.S 0xffa02b2a <_bfin_EMAC_recv_poll+0x8e>;
	...

ffa02b78 <_DHCP_rx>:
ffa02b78:	e5 05       	[--SP] = (R7:4, P5:5);
ffa02b7a:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02b7e:	67 30       	R4 = FP;
ffa02b80:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02b82:	e4 67       	R4 += -0x4;		/* ( -4) */
ffa02b84:	01 20       	JUMP.S 0xffa02b86 <_DHCP_rx+0xe>;
ffa02b86:	04 30       	R0 = R4;
ffa02b88:	ff e3 8a ff 	CALL 0xffa02a9c <_bfin_EMAC_recv_poll>;
ffa02b8c:	38 30       	R7 = R0;
ffa02b8e:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa02b92:	47 51       	R5 = R7 + R0;
ffa02b94:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa02b98:	0d 30       	R1 = R5;
ffa02b9a:	00 e1 1c 03 	R0.L = 0x31c;		/* (796)	R0=0xff90031c(-7339236) */
ffa02b9e:	ff e3 eb f3 	CALL 0xffa01374 <_printf_int>;
ffa02ba2:	21 e1 1b 01 	R1 = 0x11b (X);		/*		R1=0x11b(283) */
ffa02ba6:	0f 09       	CC = R7 <= R1;
ffa02ba8:	fd b9       	P5 = [FP -0x4];
ffa02baa:	0c 18       	IF CC JUMP 0xffa02bc2 <_DHCP_rx+0x4a>;
ffa02bac:	00 00       	NOP;
ffa02bae:	00 00       	NOP;
ffa02bb0:	00 00       	NOP;
ffa02bb2:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa02bb4:	ff e3 7e f7 	CALL 0xffa01ab0 <_htons>;
ffa02bb8:	c0 42       	R0 = R0.L (Z);
ffa02bba:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa02bbe:	08 08       	CC = R0 == R1;
ffa02bc0:	0f 18       	IF CC JUMP 0xffa02bde <_DHCP_rx+0x66>;
ffa02bc2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90031c(-7339236) */
ffa02bc6:	00 e1 00 03 	R0.L = 0x300;		/* (768)	R0=0xff900300(-7339264) */
ffa02bca:	ff e3 13 f3 	CALL 0xffa011f0 <_printf_str>;
ffa02bce:	0e 64       	R6 += 0x1;		/* (  1) */
ffa02bd0:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa02bd2:	06 09       	CC = R6 <= R0;
ffa02bd4:	d9 1f       	IF CC JUMP 0xffa02b86 <_DHCP_rx+0xe> (BP);
ffa02bd6:	ff e3 75 fa 	CALL 0xffa020c0 <_DHCP_tx_discover>;
ffa02bda:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02bdc:	d5 2f       	JUMP.S 0xffa02b86 <_DHCP_rx+0xe>;
ffa02bde:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa02be2:	ff e3 67 f7 	CALL 0xffa01ab0 <_htons>;
ffa02be6:	c0 42       	R0 = R0.L (Z);
ffa02be8:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa02bec:	01 08       	CC = R1 == R0;
ffa02bee:	f1 17       	IF !CC JUMP 0xffa02bd0 <_DHCP_rx+0x58> (BP);
ffa02bf0:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa02bf4:	ff e3 5e f7 	CALL 0xffa01ab0 <_htons>;
ffa02bf8:	c0 42       	R0 = R0.L (Z);
ffa02bfa:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa02bfe:	01 08       	CC = R1 == R0;
ffa02c00:	e8 17       	IF !CC JUMP 0xffa02bd0 <_DHCP_rx+0x58> (BP);
ffa02c02:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e64(-4190620) */
ffa02c06:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa02c0a:	11 91       	R1 = [P2];
ffa02c0c:	28 a3       	R0 = [P5 + 0x30];
ffa02c0e:	08 08       	CC = R0 == R1;
ffa02c10:	e0 17       	IF !CC JUMP 0xffa02bd0 <_DHCP_rx+0x58> (BP);
ffa02c12:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa02c16:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa02c1a:	ff e3 57 f7 	CALL 0xffa01ac8 <_htonl>;
ffa02c1e:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa02c22:	01 08       	CC = R1 == R0;
ffa02c24:	d6 17       	IF !CC JUMP 0xffa02bd0 <_DHCP_rx+0x58> (BP);
ffa02c26:	4d 30       	R1 = P5;
ffa02c28:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa02c2c:	01 50       	R0 = R1 + R0;
ffa02c2e:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa02c32:	f0 bb 00 00 
ffa02c36:	ff e3 2d f8 	CALL 0xffa01c90 <_DHCP_parse>;
ffa02c3a:	e9 a3       	R1 = [P5 + 0x3c];
ffa02c3c:	01 0c       	CC = R1 == 0x0;
ffa02c3e:	12 1c       	IF CC JUMP 0xffa02c62 <_DHCP_rx+0xea> (BP);
ffa02c40:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa02c44:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa02c48:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa02c4c:	11 93       	[P2] = R1;
ffa02c4e:	00 e1 f0 02 	R0.L = 0x2f0;		/* (752)	R0=0xff9002f0(-7339280) */
ffa02c52:	ff e3 33 f4 	CALL 0xffa014b8 <_printf_ip>;
ffa02c56:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002f0(-7339280) */
ffa02c5a:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02c5e:	ff e3 c9 f2 	CALL 0xffa011f0 <_printf_str>;
ffa02c62:	01 e8 00 00 	UNLINK;
ffa02c66:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c68:	a5 05       	(R7:4, P5:5) = [SP++];
ffa02c6a:	10 00       	RTS;

ffa02c6c <_DHCP_req>:
ffa02c6c:	c5 04       	[--SP] = (P5:5);
ffa02c6e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e64 <_rxbuf> */
ffa02c72:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02c76:	0d e1 48 0e 	P5.L = 0xe48;		/* (3656)	P5=0xff900e48 <_NetDHCPserv> */
ffa02c7a:	ff e3 23 fa 	CALL 0xffa020c0 <_DHCP_tx_discover>;
ffa02c7e:	ff e3 7d ff 	CALL 0xffa02b78 <_DHCP_rx>;
ffa02c82:	29 91       	R1 = [P5];
ffa02c84:	39 0c       	CC = R1 == -0x1;
ffa02c86:	42 18       	IF CC JUMP 0xffa02d0a <_DHCP_req+0x9e>;
ffa02c88:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e80 <_NetOurIP> */
ffa02c8c:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa02c90:	10 91       	R0 = [P2];
ffa02c92:	00 0c       	CC = R0 == 0x0;
ffa02c94:	08 18       	IF CC JUMP 0xffa02ca4 <_DHCP_req+0x38>;
ffa02c96:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e80 <_NetOurIP> */
ffa02c9a:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetSubnetMask> */
ffa02c9e:	10 91       	R0 = [P2];
ffa02ca0:	00 0c       	CC = R0 == 0x0;
ffa02ca2:	2f 10       	IF !CC JUMP 0xffa02d00 <_DHCP_req+0x94>;
ffa02ca4:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa02ca6:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa02caa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02cac:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa02cb0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02cb2:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa02cb6:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02cb8:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02cbc:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02cbe:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa02cc2:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa02cc6:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa02cca:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa02cce:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa02cd2:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa02cd6:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa02cda:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02cdc:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa02ce0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa02ce4:	00 e1 4c 03 	R0.L = 0x34c;		/* (844)	R0=0xff90034c(-7339188) */
ffa02ce8:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa02cec:	ff e3 82 f2 	CALL 0xffa011f0 <_printf_str>;
ffa02cf0:	4f 30       	R1 = FP;
ffa02cf2:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02cf4:	a1 67       	R1 += -0xc;		/* (-12) */
ffa02cf6:	2a 91       	R2 = [P5];
ffa02cf8:	ff e3 f4 f8 	CALL 0xffa01ee0 <_DHCP_tx>;
ffa02cfc:	ff e3 3e ff 	CALL 0xffa02b78 <_DHCP_rx>;
ffa02d00:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02d02:	01 e8 00 00 	UNLINK;
ffa02d06:	85 04       	(P5:5) = [SP++];
ffa02d08:	10 00       	RTS;
ffa02d0a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02d0e:	00 e1 30 03 	R0.L = 0x330;		/* (816)	R0=0xff900330(-7339216) */
ffa02d12:	ff e3 6f f2 	CALL 0xffa011f0 <_printf_str>;
ffa02d16:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02d18:	f5 2f       	JUMP.S 0xffa02d02 <_DHCP_req+0x96>;
	...

ffa02d1c <_bfin_EMAC_recv>:
ffa02d1c:	eb 05       	[--SP] = (R7:5, P5:3);
ffa02d1e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e60 <_rxIdx> */
ffa02d22:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000 <_l1_data_a>(-7340032) */
ffa02d26:	0c e1 60 0e 	P4.L = 0xe60;		/* (3680)	P4=0xff900e60 <_rxIdx> */
ffa02d2a:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00e50(-4190640) */
ffa02d2e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02d32:	28 32       	P5 = R0;
ffa02d34:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02d36:	05 e1 64 0e 	R5.L = 0xe64;		/* (3684)	R5=0xff900e64 <_rxbuf>(-7336348) */
ffa02d3a:	74 30       	R6 = P4;
ffa02d3c:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa02d40:	0e 32       	P1 = R6;
ffa02d42:	08 95       	R0 = W[P1] (Z);
ffa02d44:	10 32       	P2 = R0;
ffa02d46:	0d 32       	P1 = R5;
ffa02d48:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02d4a:	52 91       	P2 = [P2];
ffa02d4c:	90 a2       	R0 = [P2 + 0x28];
ffa02d4e:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02d50:	46 18       	IF CC JUMP 0xffa02ddc <_bfin_EMAC_recv+0xc0>;
ffa02d52:	00 00       	NOP;
ffa02d54:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d56:	a0 4f       	R0 <<= 0x14;
ffa02d58:	91 a2       	R1 = [P2 + 0x28];
ffa02d5a:	81 54       	R2 = R1 & R0;
ffa02d5c:	02 0c       	CC = R2 == 0x0;
ffa02d5e:	45 10       	IF !CC JUMP 0xffa02de8 <_bfin_EMAC_recv+0xcc>;
ffa02d60:	00 00       	NOP;
ffa02d62:	00 00       	NOP;
ffa02d64:	00 00       	NOP;
ffa02d66:	90 a2       	R0 = [P2 + 0x28];
ffa02d68:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa02d6a:	4a 18       	IF CC JUMP 0xffa02dfe <_bfin_EMAC_recv+0xe2>;
ffa02d6c:	00 00       	NOP;
ffa02d6e:	00 00       	NOP;
ffa02d70:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02d74:	91 a2       	R1 = [P2 + 0x28];
ffa02d76:	c1 55       	R7 = R1 & R0;
ffa02d78:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02d7a:	07 09       	CC = R7 <= R0;
ffa02d7c:	4c 18       	IF CC JUMP 0xffa02e14 <_bfin_EMAC_recv+0xf8>;
ffa02d7e:	00 00       	NOP;
ffa02d80:	00 00       	NOP;
ffa02d82:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02d84:	90 a1       	R0 = [P2 + 0x18];
ffa02d86:	59 95       	R1 = W[P3] (X);
ffa02d88:	28 93       	[P5] = R0;
ffa02d8a:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02d8c:	08 56       	R0 = R0 | R1;
ffa02d8e:	18 97       	W[P3] = R0;
ffa02d90:	61 95       	R1 = W[P4] (X);
ffa02d92:	c8 42       	R0 = R1.L (Z);
ffa02d94:	10 0d       	CC = R0 <= 0x2;
ffa02d96:	92 b2       	[P2 + 0x28] = R2;
ffa02d98:	1e 1c       	IF CC JUMP 0xffa02dd4 <_bfin_EMAC_recv+0xb8> (BP);
ffa02d9a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02d9c:	20 97       	W[P4] = R0;
ffa02d9e:	28 91       	R0 = [P5];
ffa02da0:	0f 30       	R1 = R7;
ffa02da2:	00 e3 f9 00 	CALL 0xffa02f94 <_ARP_rx>;
ffa02da6:	00 0c       	CC = R0 == 0x0;
ffa02da8:	03 18       	IF CC JUMP 0xffa02dae <_bfin_EMAC_recv+0x92>;
ffa02daa:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02dac:	ca 2f       	JUMP.S 0xffa02d40 <_bfin_EMAC_recv+0x24>;
ffa02dae:	28 91       	R0 = [P5];
ffa02db0:	0f 30       	R1 = R7;
ffa02db2:	ff e3 6b fb 	CALL 0xffa02488 <_icmp_rx>;
ffa02db6:	00 0c       	CC = R0 == 0x0;
ffa02db8:	f9 17       	IF !CC JUMP 0xffa02daa <_bfin_EMAC_recv+0x8e> (BP);
ffa02dba:	28 91       	R0 = [P5];
ffa02dbc:	0f 30       	R1 = R7;
ffa02dbe:	00 e3 49 04 	CALL 0xffa03650 <_tcp_rx>;
ffa02dc2:	00 0c       	CC = R0 == 0x0;
ffa02dc4:	f3 17       	IF !CC JUMP 0xffa02daa <_bfin_EMAC_recv+0x8e> (BP);
ffa02dc6:	07 0d       	CC = R7 <= 0x0;
ffa02dc8:	bc 1f       	IF CC JUMP 0xffa02d40 <_bfin_EMAC_recv+0x24> (BP);
ffa02dca:	01 e8 00 00 	UNLINK;
ffa02dce:	07 30       	R0 = R7;
ffa02dd0:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02dd2:	10 00       	RTS;
ffa02dd4:	01 30       	R0 = R1;
ffa02dd6:	08 64       	R0 += 0x1;		/* (  1) */
ffa02dd8:	20 97       	W[P4] = R0;
ffa02dda:	e2 2f       	JUMP.S 0xffa02d9e <_bfin_EMAC_recv+0x82>;
ffa02ddc:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02dde:	01 e8 00 00 	UNLINK;
ffa02de2:	07 30       	R0 = R7;
ffa02de4:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02de6:	10 00       	RTS;
ffa02de8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02dec:	00 e1 60 03 	R0.L = 0x360;		/* (864)	R0=0xff900360(-7339168) */
ffa02df0:	ff e3 00 f2 	CALL 0xffa011f0 <_printf_str>;
ffa02df4:	01 e8 00 00 	UNLINK;
ffa02df8:	07 30       	R0 = R7;
ffa02dfa:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02dfc:	10 00       	RTS;
ffa02dfe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900360(-7339168) */
ffa02e02:	00 e1 7c 03 	R0.L = 0x37c;		/* (892)	R0=0xff90037c(-7339140) */
ffa02e06:	ff e3 f5 f1 	CALL 0xffa011f0 <_printf_str>;
ffa02e0a:	01 e8 00 00 	UNLINK;
ffa02e0e:	07 30       	R0 = R7;
ffa02e10:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02e12:	10 00       	RTS;
ffa02e14:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90037c(-7339140) */
ffa02e18:	00 e1 90 03 	R0.L = 0x390;		/* (912)	R0=0xff900390(-7339120) */
ffa02e1c:	ff e3 ea f1 	CALL 0xffa011f0 <_printf_str>;
ffa02e20:	01 e8 00 00 	UNLINK;
ffa02e24:	07 30       	R0 = R7;
ffa02e26:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02e28:	10 00       	RTS;
	...

ffa02e2c <_ARP_init>:
ffa02e2c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e7c <_NetSubnetMask> */
ffa02e30:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02e34:	0a e1 8c 0e 	P2.L = 0xe8c;		/* (3724)	P2=0xff900e8c <_NetArpLut> */
ffa02e38:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02e3a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02e3c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02e3e:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa02e40:	b2 e0 12 10 	LSETUP(0xffa02e44 <_ARP_init+0x18>, 0xffa02e64 <_ARP_init+0x38>) LC1 = P1;
ffa02e44:	11 93       	[P2] = R1;
ffa02e46:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02e4a:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02e4e:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa02e52:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa02e56:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02e5a:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02e5e:	52 b5       	W[P2 + 0xa] = R2;
ffa02e60:	d1 b0       	[P2 + 0xc] = R1;
ffa02e62:	11 b1       	[P2 + 0x10] = R1;
ffa02e64:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa02e66:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e8c <_NetArpLut> */
ffa02e6a:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02e6e:	0a e1 88 0e 	P2.L = 0xe88;		/* (3720)	P2=0xff900e88 <_NetArpLut_age> */
ffa02e72:	10 97       	W[P2] = R0;
ffa02e74:	01 e8 00 00 	UNLINK;
ffa02e78:	10 00       	RTS;
	...

ffa02e7c <_ARP_lut_find>:
ffa02e7c:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e4c <_txIdx> */
ffa02e80:	08 e1 8c 0e 	P0.L = 0xe8c;		/* (3724)	P0=0xff900e8c <_NetArpLut> */
ffa02e84:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02e88:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02e8a:	48 32       	P1 = P0;
ffa02e8c:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02e8e:	b2 e0 06 20 	LSETUP(0xffa02e92 <_ARP_lut_find+0x16>, 0xffa02e9a <_ARP_lut_find+0x1e>) LC1 = P2;
ffa02e92:	08 91       	R0 = [P1];
ffa02e94:	00 0c       	CC = R0 == 0x0;
ffa02e96:	14 18       	IF CC JUMP 0xffa02ebe <_ARP_lut_find+0x42>;
ffa02e98:	0a 64       	R2 += 0x1;		/* (  1) */
ffa02e9a:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02e9c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa02ea0:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02ea2:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02ea4:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa02ea6:	09 e1 aa 0e 	P1.L = 0xeaa;		/* (3754)	P1=0xff900eaa */
ffa02eaa:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa02eac:	b2 e0 08 20 	LSETUP(0xffa02eb0 <_ARP_lut_find+0x34>, 0xffa02ebc <_ARP_lut_find+0x40>) LC1 = P2;
ffa02eb0:	08 95       	R0 = W[P1] (Z);
ffa02eb2:	03 09       	CC = R3 <= R0;
ffa02eb4:	03 18       	IF CC JUMP 0xffa02eba <_ARP_lut_find+0x3e>;
ffa02eb6:	11 30       	R2 = R1;
ffa02eb8:	18 30       	R3 = R0;
ffa02eba:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02ebc:	09 64       	R1 += 0x1;		/* (  1) */
ffa02ebe:	02 30       	R0 = R2;
ffa02ec0:	01 e8 00 00 	UNLINK;
ffa02ec4:	10 00       	RTS;
	...

ffa02ec8 <_ARP_lut_add>:
ffa02ec8:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02eca:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e48 <_NetDHCPserv> */
ffa02ece:	0d e1 8c 0e 	P5.L = 0xe8c;		/* (3724)	P5=0xff900e8c <_NetArpLut> */
ffa02ed2:	31 30       	R6 = R1;
ffa02ed4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02ed8:	38 30       	R7 = R0;
ffa02eda:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02edc:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa02ede:	4d 32       	P1 = P5;
ffa02ee0:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02ee2:	00 00       	NOP;
ffa02ee4:	08 91       	R0 = [P1];
ffa02ee6:	07 08       	CC = R7 == R0;
ffa02ee8:	11 07       	IF CC R2 = R1;
ffa02eea:	09 64       	R1 += 0x1;		/* (  1) */
ffa02eec:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa02eee:	42 0c       	CC = P2 == 0x0;
ffa02ef0:	23 10       	IF !CC JUMP 0xffa02f36 <_ARP_lut_add+0x6e>;
ffa02ef2:	82 0c       	CC = R2 < 0x0;
ffa02ef4:	25 18       	IF CC JUMP 0xffa02f3e <_ARP_lut_add+0x76>;
ffa02ef6:	82 c6 12 82 	R1 = R2 << 0x2;
ffa02efa:	0a 32       	P1 = R2;
ffa02efc:	11 32       	P2 = R1;
ffa02efe:	06 32       	P0 = R6;
ffa02f00:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa02f02:	6a 5a       	P1 = P2 + P5;
ffa02f04:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02f06:	0f 93       	[P1] = R7;
ffa02f08:	aa 5a       	P2 = P2 + P5;
ffa02f0a:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02f0c:	b2 e0 03 10 	LSETUP(0xffa02f10 <_ARP_lut_add+0x48>, 0xffa02f12 <_ARP_lut_add+0x4a>) LC1 = P1;
ffa02f10:	40 98       	R0 = B[P0++] (X);
ffa02f12:	10 9a       	B[P2++] = R0;
ffa02f14:	51 41       	R1 = (R1 + R2) << 0x2;
ffa02f16:	09 32       	P1 = R1;
ffa02f18:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa02f1c:	0a e1 88 0e 	P2.L = 0xe88;		/* (3720)	P2=0xff900e88 <_NetArpLut_age> */
ffa02f20:	50 95       	R0 = W[P2] (X);
ffa02f22:	08 64       	R0 += 0x1;		/* (  1) */
ffa02f24:	10 97       	W[P2] = R0;
ffa02f26:	a9 5a       	P2 = P1 + P5;
ffa02f28:	50 b5       	W[P2 + 0xa] = R0;
ffa02f2a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f2c:	10 b1       	[P2 + 0x10] = R0;
ffa02f2e:	01 e8 00 00 	UNLINK;
ffa02f32:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02f34:	10 00       	RTS;
ffa02f36:	82 0c       	CC = R2 < 0x0;
ffa02f38:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02f3a:	d4 1f       	IF CC JUMP 0xffa02ee2 <_ARP_lut_add+0x1a> (BP);
ffa02f3c:	dd 2f       	JUMP.S 0xffa02ef6 <_ARP_lut_add+0x2e>;
ffa02f3e:	ff e3 9f ff 	CALL 0xffa02e7c <_ARP_lut_find>;
ffa02f42:	10 30       	R2 = R0;
ffa02f44:	d9 2f       	JUMP.S 0xffa02ef6 <_ARP_lut_add+0x2e>;
	...

ffa02f48 <_ARP_lu>:
ffa02f48:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02f4c:	c4 04       	[--SP] = (P5:4);
ffa02f4e:	09 e1 8c 0e 	P1.L = 0xe8c;		/* (3724)	P1=0xff900e8c <_NetArpLut> */
ffa02f52:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02f56:	10 30       	R2 = R0;
ffa02f58:	29 32       	P5 = R1;
ffa02f5a:	61 32       	P4 = P1;
ffa02f5c:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa02f5e:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02f60:	b2 e0 06 20 	LSETUP(0xffa02f64 <_ARP_lu+0x1c>, 0xffa02f6c <_ARP_lu+0x24>) LC1 = P2;
ffa02f64:	08 91       	R0 = [P1];
ffa02f66:	10 08       	CC = R0 == R2;
ffa02f68:	08 18       	IF CC JUMP 0xffa02f78 <_ARP_lu+0x30>;
ffa02f6a:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa02f6c:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02f6e:	01 e8 00 00 	UNLINK;
ffa02f72:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f74:	84 04       	(P5:4) = [SP++];
ffa02f76:	10 00       	RTS;
ffa02f78:	08 a1       	R0 = [P1 + 0x10];
ffa02f7a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02f7c:	f7 1f       	IF CC JUMP 0xffa02f6a <_ARP_lu+0x22> (BP);
ffa02f7e:	60 5a       	P1 = P0 + P4;
ffa02f80:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa02f82:	b2 e0 03 20 	LSETUP(0xffa02f86 <_ARP_lu+0x3e>, 0xffa02f88 <_ARP_lu+0x40>) LC1 = P2;
ffa02f86:	48 98       	R0 = B[P1++] (X);
ffa02f88:	28 9a       	B[P5++] = R0;
ffa02f8a:	01 e8 00 00 	UNLINK;
ffa02f8e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f90:	84 04       	(P5:4) = [SP++];
ffa02f92:	10 00       	RTS;

ffa02f94 <_ARP_rx>:
ffa02f94:	fb 05       	[--SP] = (R7:7, P5:3);
ffa02f96:	20 32       	P4 = R0;
ffa02f98:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02f9c:	39 30       	R7 = R1;
ffa02f9e:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa02fa0:	ff e3 88 f5 	CALL 0xffa01ab0 <_htons>;
ffa02fa4:	c0 42       	R0 = R0.L (Z);
ffa02fa6:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa02faa:	08 08       	CC = R0 == R1;
ffa02fac:	06 18       	IF CC JUMP 0xffa02fb8 <_ARP_rx+0x24>;
ffa02fae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02fb0:	01 e8 00 00 	UNLINK;
ffa02fb4:	bb 05       	(R7:7, P5:3) = [SP++];
ffa02fb6:	10 00       	RTS;
ffa02fb8:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02fba:	07 0a       	CC = R7 <= R0 (IU);
ffa02fbc:	f9 1f       	IF CC JUMP 0xffa02fae <_ARP_rx+0x1a> (BP);
ffa02fbe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02fc0:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02fc2:	ff e3 77 f5 	CALL 0xffa01ab0 <_htons>;
ffa02fc6:	c0 42       	R0 = R0.L (Z);
ffa02fc8:	07 08       	CC = R7 == R0;
ffa02fca:	f2 17       	IF !CC JUMP 0xffa02fae <_ARP_rx+0x1a> (BP);
ffa02fcc:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02fd0:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02fd2:	ff e3 6f f5 	CALL 0xffa01ab0 <_htons>;
ffa02fd6:	c0 42       	R0 = R0.L (Z);
ffa02fd8:	07 08       	CC = R7 == R0;
ffa02fda:	ea 17       	IF !CC JUMP 0xffa02fae <_ARP_rx+0x1a> (BP);
ffa02fdc:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02fde:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02fe2:	08 08       	CC = R0 == R1;
ffa02fe4:	e5 17       	IF !CC JUMP 0xffa02fae <_ARP_rx+0x1a> (BP);
ffa02fe6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02fe8:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02fea:	ff e3 63 f5 	CALL 0xffa01ab0 <_htons>;
ffa02fee:	c0 42       	R0 = R0.L (Z);
ffa02ff0:	07 08       	CC = R7 == R0;
ffa02ff2:	0c 14       	IF !CC JUMP 0xffa0300a <_ARP_rx+0x76> (BP);
ffa02ff4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa02ff8:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetOurMAC> */
ffa02ffc:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa03000:	10 99       	R0 = B[P2] (Z);
ffa03002:	01 08       	CC = R1 == R0;
ffa03004:	ae 18       	IF CC JUMP 0xffa03160 <_ARP_rx+0x1cc>;
ffa03006:	00 00       	NOP;
ffa03008:	00 00       	NOP;
ffa0300a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0300c:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa0300e:	ff e3 51 f5 	CALL 0xffa01ab0 <_htons>;
ffa03012:	c0 42       	R0 = R0.L (Z);
ffa03014:	07 08       	CC = R7 == R0;
ffa03016:	cc 17       	IF !CC JUMP 0xffa02fae <_ARP_rx+0x1a> (BP);
ffa03018:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa0301c:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa0301e:	ff e3 49 f5 	CALL 0xffa01ab0 <_htons>;
ffa03022:	c0 42       	R0 = R0.L (Z);
ffa03024:	07 08       	CC = R7 == R0;
ffa03026:	c4 17       	IF !CC JUMP 0xffa02fae <_ARP_rx+0x1a> (BP);
ffa03028:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa0302a:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa0302e:	08 08       	CC = R0 == R1;
ffa03030:	bf 17       	IF !CC JUMP 0xffa02fae <_ARP_rx+0x1a> (BP);
ffa03032:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03034:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa03036:	ff e3 3d f5 	CALL 0xffa01ab0 <_htons>;
ffa0303a:	c0 42       	R0 = R0.L (Z);
ffa0303c:	07 08       	CC = R7 == R0;
ffa0303e:	b8 17       	IF !CC JUMP 0xffa02fae <_ARP_rx+0x1a> (BP);
ffa03040:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa03044:	07 e1 80 0e 	R7.L = 0xe80;		/* (3712)	R7=0xff900e80 <_NetOurIP>(-7336320) */
ffa03048:	17 32       	P2 = R7;
ffa0304a:	a1 a2       	R1 = [P4 + 0x28];
ffa0304c:	10 91       	R0 = [P2];
ffa0304e:	01 08       	CC = R1 == R0;
ffa03050:	af 17       	IF !CC JUMP 0xffa02fae <_ARP_rx+0x1a> (BP);
ffa03052:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e74 <_NetOurMAC> */
ffa03056:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa0305a:	10 95       	R0 = W[P2] (Z);
ffa0305c:	10 32       	P2 = R0;
ffa0305e:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e8c <_NetArpLut> */
ffa03062:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa03066:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa03068:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e8c <_NetArpLut> */
ffa0306c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0306e:	52 91       	P2 = [P2];
ffa03070:	0d e1 74 0e 	P5.L = 0xe74;		/* (3700)	P5=0xff900e74 <_NetOurMAC> */
ffa03074:	93 ad       	P3 = [P2 + 0x18];
ffa03076:	18 97       	W[P3] = R0;
ffa03078:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa0307c:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa03080:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa03084:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa03088:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa0308c:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa03090:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa03094:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa03098:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa0309c:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa030a0:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa030a4:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa030a8:	68 99       	R0 = B[P5] (X);
ffa030aa:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa030ae:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa030b2:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa030b6:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa030ba:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa030be:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa030c2:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa030c6:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa030ca:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa030ce:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa030d2:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa030d6:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa030da:	ff e3 eb f4 	CALL 0xffa01ab0 <_htons>;
ffa030de:	d8 b5       	W[P3 + 0xe] = R0;
ffa030e0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa030e2:	ff e3 e7 f4 	CALL 0xffa01ab0 <_htons>;
ffa030e6:	18 b6       	W[P3 + 0x10] = R0;
ffa030e8:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa030ec:	ff e3 e2 f4 	CALL 0xffa01ab0 <_htons>;
ffa030f0:	58 b6       	W[P3 + 0x12] = R0;
ffa030f2:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa030f4:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa030f8:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa030fa:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa030fe:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03100:	ff e3 d8 f4 	CALL 0xffa01ab0 <_htons>;
ffa03104:	44 32       	P0 = P4;
ffa03106:	d8 b6       	W[P3 + 0x16] = R0;
ffa03108:	53 32       	P2 = P3;
ffa0310a:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa0310c:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa0310e:	b2 e0 08 10 	LSETUP(0xffa03112 <_ARP_rx+0x17e>, 0xffa0311e <_ARP_rx+0x18a>) LC1 = P1;
ffa03112:	68 98       	R0 = B[P5++] (X);
ffa03114:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa03118:	40 98       	R0 = B[P0++] (X);
ffa0311a:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa0311e:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa03120:	17 32       	P2 = R7;
ffa03122:	50 99       	R0 = B[P2] (X);
ffa03124:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa03128:	10 91       	R0 = [P2];
ffa0312a:	40 4e       	R0 >>= 0x8;
ffa0312c:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa03130:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa03134:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa03138:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa0313c:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa03140:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa03144:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa03148:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa0314c:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa03150:	f3 b0       	[SP + 0xc] = R3;
ffa03152:	ff e3 05 f4 	CALL 0xffa0195c <_FormatIPAddress>;
ffa03156:	98 b2       	[P3 + 0x28] = R0;
ffa03158:	ff e3 56 f6 	CALL 0xffa01e04 <_bfin_EMAC_send_nocopy>;
ffa0315c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0315e:	29 2f       	JUMP.S 0xffa02fb0 <_ARP_rx+0x1c>;
ffa03160:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa03164:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa03168:	01 08       	CC = R1 == R0;
ffa0316a:	50 17       	IF !CC JUMP 0xffa0300a <_ARP_rx+0x76> (BP);
ffa0316c:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa03170:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa03174:	01 08       	CC = R1 == R0;
ffa03176:	4a 17       	IF !CC JUMP 0xffa0300a <_ARP_rx+0x76> (BP);
ffa03178:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa0317c:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa03180:	01 08       	CC = R1 == R0;
ffa03182:	44 17       	IF !CC JUMP 0xffa0300a <_ARP_rx+0x76> (BP);
ffa03184:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa03188:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa0318c:	01 08       	CC = R1 == R0;
ffa0318e:	3e 17       	IF !CC JUMP 0xffa0300a <_ARP_rx+0x76> (BP);
ffa03190:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa03194:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa03198:	01 08       	CC = R1 == R0;
ffa0319a:	38 17       	IF !CC JUMP 0xffa0300a <_ARP_rx+0x76> (BP);
ffa0319c:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa0319e:	44 30       	R0 = P4;
ffa031a0:	ff e3 a8 f4 	CALL 0xffa01af0 <_pack4chars>;
ffa031a4:	38 30       	R7 = R0;
ffa031a6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa031aa:	0f 30       	R1 = R7;
ffa031ac:	00 e1 9c 04 	R0.L = 0x49c;		/* (1180)	R0=0xff90049c(-7338852) */
ffa031b0:	ff e3 84 f1 	CALL 0xffa014b8 <_printf_ip>;
ffa031b4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90049c(-7338852) */
ffa031b8:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa031bc:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa031be:	ff e3 19 f0 	CALL 0xffa011f0 <_printf_str>;
ffa031c2:	07 30       	R0 = R7;
ffa031c4:	4c 30       	R1 = P4;
ffa031c6:	ff e3 81 fe 	CALL 0xffa02ec8 <_ARP_lut_add>;
ffa031ca:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa031cc:	f2 2e       	JUMP.S 0xffa02fb0 <_ARP_rx+0x1c>;
	...

ffa031d0 <_ARP_tx>:
ffa031d0:	fc 05       	[--SP] = (R7:7, P5:4);
ffa031d2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa031d6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa031da:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa031de:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa031e2:	10 95 00 00 
ffa031e6:	10 32       	P2 = R0;
ffa031e8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa031ec:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa031f0:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa031f2:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e74 <_NetOurMAC> */
ffa031f6:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa031f8:	52 91       	P2 = [P2];
ffa031fa:	0d e1 74 0e 	P5.L = 0xe74;		/* (3700)	P5=0xff900e74 <_NetOurMAC> */
ffa031fe:	94 ad       	P4 = [P2 + 0x18];
ffa03200:	20 97       	W[P4] = R0;
ffa03202:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03204:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa03208:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa0320c:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa03210:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa03214:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa03218:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa0321c:	68 99       	R0 = B[P5] (X);
ffa0321e:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa03222:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa03226:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa0322a:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa0322e:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa03232:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa03236:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa0323a:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa0323e:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa03242:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa03246:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa0324a:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa0324e:	ff e3 31 f4 	CALL 0xffa01ab0 <_htons>;
ffa03252:	e0 b5       	W[P4 + 0xe] = R0;
ffa03254:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03256:	ff e3 2d f4 	CALL 0xffa01ab0 <_htons>;
ffa0325a:	20 b6       	W[P4 + 0x10] = R0;
ffa0325c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03260:	ff e3 28 f4 	CALL 0xffa01ab0 <_htons>;
ffa03264:	60 b6       	W[P4 + 0x12] = R0;
ffa03266:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03268:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa0326c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0326e:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa03272:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03274:	ff e3 1e f4 	CALL 0xffa01ab0 <_htons>;
ffa03278:	e0 b6       	W[P4 + 0x16] = R0;
ffa0327a:	54 32       	P2 = P4;
ffa0327c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0327e:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa03280:	b2 e0 07 10 	LSETUP(0xffa03284 <_ARP_tx+0xb4>, 0xffa0328e <_ARP_tx+0xbe>) LC1 = P1;
ffa03284:	68 98       	R0 = B[P5++] (X);
ffa03286:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa0328a:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa0328e:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa03290:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa03294:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa03298:	50 99       	R0 = B[P2] (X);
ffa0329a:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa0329e:	10 91       	R0 = [P2];
ffa032a0:	40 4e       	R0 >>= 0x8;
ffa032a2:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa032a6:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa032aa:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa032ae:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa032b2:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa032b6:	a7 b2       	[P4 + 0x28] = R7;
ffa032b8:	01 e8 00 00 	UNLINK;
ffa032bc:	bc 05       	(R7:7, P5:4) = [SP++];
ffa032be:	ff e2 a3 f5 	JUMP.L 0xffa01e04 <_bfin_EMAC_send_nocopy>;
	...

ffa032c4 <_ARP_req>:
ffa032c4:	ec 05       	[--SP] = (R7:5, P5:4);
ffa032c6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa032ca:	38 30       	R7 = R0;
ffa032cc:	ff e3 3e fe 	CALL 0xffa02f48 <_ARP_lu>;
ffa032d0:	00 0c       	CC = R0 == 0x0;
ffa032d2:	50 10       	IF !CC JUMP 0xffa03372 <_ARP_req+0xae>;
ffa032d4:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800e80 */
ffa032d8:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa032dc:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e60 <_rxIdx> */
ffa032e0:	16 91       	R6 = [P2];
ffa032e2:	0c e1 8c 0e 	P4.L = 0xe8c;		/* (3724)	P4=0xff900e8c <_NetArpLut> */
ffa032e6:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa032ea:	4c 32       	P1 = P4;
ffa032ec:	46 51       	R5 = R6 + R0;
ffa032ee:	6c 32       	P5 = P4;
ffa032f0:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa032f2:	b2 e0 06 20 	LSETUP(0xffa032f6 <_ARP_req+0x32>, 0xffa032fe <_ARP_req+0x3a>) LC1 = P2;
ffa032f6:	08 91       	R0 = [P1];
ffa032f8:	07 08       	CC = R7 == R0;
ffa032fa:	21 18       	IF CC JUMP 0xffa0333c <_ARP_req+0x78>;
ffa032fc:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa032fe:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa03300:	ff e3 be fd 	CALL 0xffa02e7c <_ARP_lut_find>;
ffa03304:	10 32       	P2 = R0;
ffa03306:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03308:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa0330c:	09 e1 88 0e 	P1.L = 0xe88;		/* (3720)	P1=0xff900e88 <_NetArpLut_age> */
ffa03310:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa03312:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa03314:	10 b1       	[P2 + 0x10] = R0;
ffa03316:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa0331a:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa0331e:	17 93 00 00 
ffa03322:	d0 b0       	[P2 + 0xc] = R0;
ffa03324:	48 95       	R0 = W[P1] (X);
ffa03326:	08 64       	R0 += 0x1;		/* (  1) */
ffa03328:	08 97       	W[P1] = R0;
ffa0332a:	50 b5       	W[P2 + 0xa] = R0;
ffa0332c:	07 30       	R0 = R7;
ffa0332e:	ff e3 51 ff 	CALL 0xffa031d0 <_ARP_tx>;
ffa03332:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03334:	01 e8 00 00 	UNLINK;
ffa03338:	ac 05       	(R7:5, P5:4) = [SP++];
ffa0333a:	10 00       	RTS;
ffa0333c:	08 a1       	R0 = [P1 + 0x10];
ffa0333e:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa03340:	de 1f       	IF CC JUMP 0xffa032fc <_ARP_req+0x38> (BP);
ffa03342:	e8 a0       	R0 = [P5 + 0xc];
ffa03344:	86 09       	CC = R6 < R0 (IU);
ffa03346:	f6 1f       	IF CC JUMP 0xffa03332 <_ARP_req+0x6e> (BP);
ffa03348:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0334c:	0f 30       	R1 = R7;
ffa0334e:	00 e1 c0 04 	R0.L = 0x4c0;		/* (1216)	R0=0xff9004c0(-7338816) */
ffa03352:	ff e3 b3 f0 	CALL 0xffa014b8 <_printf_ip>;
ffa03356:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004c0(-7338816) */
ffa0335a:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa0335e:	ff e3 49 ef 	CALL 0xffa011f0 <_printf_str>;
ffa03362:	07 30       	R0 = R7;
ffa03364:	ff e3 36 ff 	CALL 0xffa031d0 <_ARP_tx>;
ffa03368:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa0336c:	ed b0 00 00 
ffa03370:	e2 2f       	JUMP.S 0xffa03334 <_ARP_req+0x70>;
ffa03372:	01 e8 00 00 	UNLINK;
ffa03376:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03378:	ac 05       	(R7:5, P5:4) = [SP++];
ffa0337a:	10 00       	RTS;

ffa0337c <_tcp_length>:
ffa0337c:	c5 04       	[--SP] = (P5:5);
ffa0337e:	28 32       	P5 = R0;
ffa03380:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03384:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa03386:	ff e3 95 f3 	CALL 0xffa01ab0 <_htons>;
ffa0338a:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa0338e:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa03390:	51 54       	R1 = R1 & R2;
ffa03392:	11 4f       	R1 <<= 0x2;
ffa03394:	c0 42       	R0 = R0.L (Z);
ffa03396:	08 52       	R0 = R0 - R1;
ffa03398:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa0339c:	11 4d       	R1 >>>= 0x2;
ffa0339e:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa033a0:	51 54       	R1 = R1 & R2;
ffa033a2:	01 e8 00 00 	UNLINK;
ffa033a6:	08 52       	R0 = R0 - R1;
ffa033a8:	85 04       	(P5:5) = [SP++];
ffa033aa:	10 00       	RTS;

ffa033ac <_tcp_checksum_calc>:
ffa033ac:	08 32       	P1 = R0;
ffa033ae:	ed 05       	[--SP] = (R7:5, P5:5);
ffa033b0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa033b4:	28 32       	P5 = R0;
ffa033b6:	31 30       	R6 = R1;
ffa033b8:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa033ba:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa033bc:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa033be:	b2 e0 03 20 	LSETUP(0xffa033c2 <_tcp_checksum_calc+0x16>, 0xffa033c4 <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa033c2:	08 94       	R0 = W[P1++] (Z);
ffa033c4:	45 51       	R5 = R5 + R0;
ffa033c6:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa033ca:	10 4e       	R0 >>= 0x2;
ffa033cc:	06 50       	R0 = R6 + R0;
ffa033ce:	c0 42       	R0 = R0.L (Z);
ffa033d0:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa033d4:	ff e3 6e f3 	CALL 0xffa01ab0 <_htons>;
ffa033d8:	47 4f       	R7 <<= 0x8;
ffa033da:	c0 42       	R0 = R0.L (Z);
ffa033dc:	c7 51       	R7 = R7 + R0;
ffa033de:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa033e0:	ef 50       	R3 = R7 + R5;
ffa033e2:	0d 1c       	IF CC JUMP 0xffa033fc <_tcp_checksum_calc+0x50> (BP);
ffa033e4:	0e 32       	P1 = R6;
ffa033e6:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa033ea:	10 4e       	R0 >>= 0x2;
ffa033ec:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa033ee:	0e 64       	R6 += 0x1;		/* (  1) */
ffa033f0:	a9 5a       	P2 = P1 + P5;
ffa033f2:	08 32       	P1 = R0;
ffa033f4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa033f6:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa033f8:	8a 5a       	P2 = P2 + P1;
ffa033fa:	10 9b       	B[P2] = R0;
ffa033fc:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa03400:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03402:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa03406:	71 50       	R1 = R1 + R6;
ffa03408:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa0340c:	09 4d       	R1 >>>= 0x1;
ffa0340e:	18 4e       	R0 >>= 0x3;
ffa03410:	41 50       	R1 = R1 + R0;
ffa03412:	01 0d       	CC = R1 <= 0x0;
ffa03414:	09 18       	IF CC JUMP 0xffa03426 <_tcp_checksum_calc+0x7a>;
ffa03416:	55 32       	P2 = P5;
ffa03418:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa0341a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0341c:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0341e:	10 94       	R0 = W[P2++] (Z);
ffa03420:	0a 08       	CC = R2 == R1;
ffa03422:	c3 50       	R3 = R3 + R0;
ffa03424:	fc 17       	IF !CC JUMP 0xffa0341c <_tcp_checksum_calc+0x70> (BP);
ffa03426:	d8 42       	R0 = R3.L (Z);
ffa03428:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa0342c:	08 50       	R0 = R0 + R1;
ffa0342e:	c0 43       	R0 =~ R0;
ffa03430:	01 e8 00 00 	UNLINK;
ffa03434:	c0 42       	R0 = R0.L (Z);
ffa03436:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03438:	10 00       	RTS;
	...

ffa0343c <_tcp_checksum_set>:
ffa0343c:	c5 04       	[--SP] = (P5:5);
ffa0343e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa03442:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03446:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa0344a:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa0344e:	10 95 00 00 
ffa03452:	10 32       	P2 = R0;
ffa03454:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e88 <_NetArpLut_age> */
ffa03458:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa0345c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0345e:	52 91       	P2 = [P2];
ffa03460:	95 ad       	P5 = [P2 + 0x18];
ffa03462:	45 30       	R0 = P5;
ffa03464:	ff e3 a4 ff 	CALL 0xffa033ac <_tcp_checksum_calc>;
ffa03468:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa0346c:	01 e8 00 00 	UNLINK;
ffa03470:	85 04       	(P5:5) = [SP++];
ffa03472:	10 00       	RTS;

ffa03474 <_tcp_checksum_check>:
ffa03474:	10 32       	P2 = R0;
ffa03476:	78 05       	[--SP] = (R7:7);
ffa03478:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0347c:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa03480:	ff e3 96 ff 	CALL 0xffa033ac <_tcp_checksum_calc>;
ffa03484:	0f 30       	R1 = R7;
ffa03486:	c7 42       	R7 = R0.L (Z);
ffa03488:	39 08       	CC = R1 == R7;
ffa0348a:	19 18       	IF CC JUMP 0xffa034bc <_tcp_checksum_check+0x48>;
ffa0348c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03490:	00 e1 e0 04 	R0.L = 0x4e0;		/* (1248)	R0=0xff9004e0(-7338784) */
ffa03494:	ff e3 14 ef 	CALL 0xffa012bc <_printf_hex>;
ffa03498:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004e0(-7338784) */
ffa0349c:	0f 30       	R1 = R7;
ffa0349e:	00 e1 fc 04 	R0.L = 0x4fc;		/* (1276)	R0=0xff9004fc(-7338756) */
ffa034a2:	ff e3 0d ef 	CALL 0xffa012bc <_printf_hex>;
ffa034a6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004fc(-7338756) */
ffa034aa:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa034ae:	ff e3 a1 ee 	CALL 0xffa011f0 <_printf_str>;
ffa034b2:	01 e8 00 00 	UNLINK;
ffa034b6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa034b8:	38 05       	(R7:7) = [SP++];
ffa034ba:	10 00       	RTS;
ffa034bc:	01 e8 00 00 	UNLINK;
ffa034c0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034c2:	38 05       	(R7:7) = [SP++];
ffa034c4:	10 00       	RTS;
	...

ffa034c8 <_tcp_packet_setup>:
ffa034c8:	ed 05       	[--SP] = (R7:5, P5:5);
ffa034ca:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa034ce:	29 32       	P5 = R1;
ffa034d0:	7f 30       	R7 = FP;
ffa034d2:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa034d4:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa034d6:	f0 bb       	[FP -0x4] = R0;
ffa034d8:	07 30       	R0 = R7;
ffa034da:	2a 30       	R5 = R2;
ffa034dc:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa034e0:	ff e3 52 f7 	CALL 0xffa02384 <_eth_header_setup>;
ffa034e4:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa034e8:	68 99 00 00 
ffa034ec:	80 0c       	CC = R0 < 0x0;
ffa034ee:	14 18       	IF CC JUMP 0xffa03516 <_tcp_packet_setup+0x4e>;
ffa034f0:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa034f2:	f0 b0       	[SP + 0xc] = R0;
ffa034f4:	15 30       	R2 = R5;
ffa034f6:	01 30       	R0 = R1;
ffa034f8:	0f 30       	R1 = R7;
ffa034fa:	ff e3 0f f3 	CALL 0xffa01b18 <_ip_header_setup>;
ffa034fe:	b9 a2       	R1 = [FP + 0x28];
ffa03500:	f1 b0       	[SP + 0xc] = R1;
ffa03502:	f9 a2       	R1 = [FP + 0x2c];
ffa03504:	31 b1       	[SP + 0x10] = R1;
ffa03506:	72 43       	R2 = R6.B (Z);
ffa03508:	0f 30       	R1 = R7;
ffa0350a:	ff e3 93 f3 	CALL 0xffa01c30 <_tcp_header_setup>;
ffa0350e:	01 e8 00 00 	UNLINK;
ffa03512:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03514:	10 00       	RTS;
ffa03516:	01 e8 00 00 	UNLINK;
ffa0351a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0351c:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0351e:	10 00       	RTS;

ffa03520 <_tcp_burst>:
ffa03520:	e3 05       	[--SP] = (R7:4, P5:3);
ffa03522:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa03526:	78 b2       	[FP + 0x24] = R0;
ffa03528:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 */
ffa0352c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa03530:	7a a2       	R2 = [FP + 0x24];
ffa03532:	0b e1 74 0f 	P3.L = 0xf74;		/* (3956)	P3=0xff900f74 <_g_httpHeaderLen> */
ffa03536:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa0353a:	02 0d       	CC = R2 <= 0x0;
ffa0353c:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa03540:	10 91 00 00 
ffa03544:	19 91       	R1 = [P3];
ffa03546:	7e 18       	IF CC JUMP 0xffa03642 <_tcp_burst+0x122>;
ffa03548:	41 50       	R1 = R1 + R0;
ffa0354a:	8f 09       	CC = R7 < R1 (IU);
ffa0354c:	21 32       	P4 = R1;
ffa0354e:	7a 10       	IF !CC JUMP 0xffa03642 <_tcp_burst+0x122>;
ffa03550:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa03552:	38 20       	JUMP.S 0xffa035c2 <_tcp_burst+0xa2>;
ffa03554:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03556:	18 91       	R0 = [P3];
ffa03558:	07 52       	R0 = R7 - R0;
ffa0355a:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa0355e:	08 50       	R0 = R0 + R1;
ffa03560:	16 30       	R2 = R6;
ffa03562:	0d 30       	R1 = R5;
ffa03564:	ff e3 ee ef 	CALL 0xffa01540 <_memcpy_>;
ffa03568:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e50 <_txbuf> */
ffa0356c:	09 e1 60 0f 	P1.L = 0xf60;		/* (3936)	P1=0xff900f60 <_TcpSeqHttpStart> */
ffa03570:	08 91       	R0 = [P1];
ffa03572:	f7 51       	R7 = R7 + R6;
ffa03574:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f78 <_g_httpContentLen> */
ffa03578:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa0357c:	07 50       	R0 = R7 + R0;
ffa0357e:	10 93       	[P2] = R0;
ffa03580:	26 50       	R0 = R6 + R4;
ffa03582:	ff e3 5d ff 	CALL 0xffa0343c <_tcp_checksum_set>;
ffa03586:	ff e3 3f f4 	CALL 0xffa01e04 <_bfin_EMAC_send_nocopy>;
ffa0358a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa0358e:	0a e1 60 0e 	P2.L = 0xe60;		/* (3680)	P2=0xff900e60 <_rxIdx> */
ffa03592:	10 95       	R0 = W[P2] (Z);
ffa03594:	10 32       	P2 = R0;
ffa03596:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900f60 <_TcpSeqHttpStart> */
ffa0359a:	09 e1 64 0e 	P1.L = 0xe64;		/* (3684)	P1=0xff900e64 <_rxbuf> */
ffa0359e:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa035a0:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa035a2:	52 91       	P2 = [P2];
ffa035a4:	90 a2       	R0 = [P2 + 0x28];
ffa035a6:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa035a8:	07 1c       	IF CC JUMP 0xffa035b6 <_tcp_burst+0x96> (BP);
ffa035aa:	90 a2       	R0 = [P2 + 0x28];
ffa035ac:	4d 30       	R1 = P5;
ffa035ae:	7a a2       	R2 = [FP + 0x24];
ffa035b0:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa035b2:	11 50       	R0 = R1 + R2;
ffa035b4:	a8 06       	IF !CC P5 = R0;
ffa035b6:	79 ae       	P1 = [FP + 0x24];
ffa035b8:	69 09       	CC = P1 <= P5;
ffa035ba:	45 18       	IF CC JUMP 0xffa03644 <_tcp_burst+0x124>;
ffa035bc:	44 30       	R0 = P4;
ffa035be:	87 09       	CC = R7 < R0 (IU);
ffa035c0:	42 10       	IF !CC JUMP 0xffa03644 <_tcp_burst+0x124>;
ffa035c2:	44 30       	R0 = P4;
ffa035c4:	b8 52       	R2 = R0 - R7;
ffa035c6:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa035ca:	0a 09       	CC = R2 <= R1;
ffa035cc:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa035ce:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa035d0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e64 <_rxbuf> */
ffa035d4:	08 06       	IF !CC R1 = R0;
ffa035d6:	09 e1 60 0f 	P1.L = 0xf60;		/* (3936)	P1=0xff900f60 <_TcpSeqHttpStart> */
ffa035da:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa035de:	07 cc 10 4c 	R6 = MIN (R2, R0) || R0 = [P1] || NOP;
ffa035e2:	08 91 00 00 
ffa035e6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e60 <_rxIdx> */
ffa035ea:	07 50       	R0 = R7 + R0;
ffa035ec:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa035f0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900f60 <_TcpSeqHttpStart> */
ffa035f4:	10 93       	[P2] = R0;
ffa035f6:	09 e1 5c 0f 	P1.L = 0xf5c;		/* (3932)	P1=0xff900f5c <_TcpSeqClient> */
ffa035fa:	f1 b0       	[SP + 0xc] = R1;
ffa035fc:	30 b1       	[SP + 0x10] = R0;
ffa035fe:	08 91       	R0 = [P1];
ffa03600:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa03604:	70 b1       	[SP + 0x14] = R0;
ffa03606:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_NetDestIP> */
ffa0360a:	4f 30       	R1 = FP;
ffa0360c:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R2 = [P2] || NOP;
ffa03610:	12 91 00 00 
ffa03614:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03616:	ff e3 59 ff 	CALL 0xffa034c8 <_tcp_packet_setup>;
ffa0361a:	28 30       	R5 = R0;
ffa0361c:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03620:	00 0d       	CC = R0 <= 0x0;
ffa03622:	ca 1b       	IF CC JUMP 0xffa035b6 <_tcp_burst+0x96>;
ffa03624:	18 91       	R0 = [P3];
ffa03626:	38 0a       	CC = R0 <= R7 (IU);
ffa03628:	96 1f       	IF CC JUMP 0xffa03554 <_tcp_burst+0x34> (BP);
ffa0362a:	38 53       	R4 = R0 - R7;
ffa0362c:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03630:	07 50       	R0 = R7 + R0;
ffa03632:	0d 30       	R1 = R5;
ffa03634:	14 30       	R2 = R4;
ffa03636:	ff e3 85 ef 	CALL 0xffa01540 <_memcpy_>;
ffa0363a:	65 51       	R5 = R5 + R4;
ffa0363c:	a6 53       	R6 = R6 - R4;
ffa0363e:	e7 51       	R7 = R7 + R4;
ffa03640:	8b 2f       	JUMP.S 0xffa03556 <_tcp_burst+0x36>;
ffa03642:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa03644:	01 e8 00 00 	UNLINK;
ffa03648:	45 30       	R0 = P5;
ffa0364a:	a3 05       	(R7:4, P5:3) = [SP++];
ffa0364c:	10 00       	RTS;
	...

ffa03650 <_tcp_rx>:
ffa03650:	e3 05       	[--SP] = (R7:4, P5:3);
ffa03652:	20 32       	P4 = R0;
ffa03654:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa03658:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa0365c:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa0365e:	ff e3 29 f2 	CALL 0xffa01ab0 <_htons>;
ffa03662:	c0 42       	R0 = R0.L (Z);
ffa03664:	07 08       	CC = R7 == R0;
ffa03666:	06 18       	IF CC JUMP 0xffa03672 <_tcp_rx+0x22>;
ffa03668:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0366a:	01 e8 00 00 	UNLINK;
ffa0366e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03670:	10 00       	RTS;
ffa03672:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa03676:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa03678:	08 08       	CC = R0 == R1;
ffa0367a:	f7 17       	IF !CC JUMP 0xffa03668 <_tcp_rx+0x18> (BP);
ffa0367c:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa03680:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa03684:	ff e3 16 f2 	CALL 0xffa01ab0 <_htons>;
ffa03688:	c0 42       	R0 = R0.L (Z);
ffa0368a:	07 08       	CC = R7 == R0;
ffa0368c:	ee 17       	IF !CC JUMP 0xffa03668 <_tcp_rx+0x18> (BP);
ffa0368e:	44 30       	R0 = P4;
ffa03690:	80 64       	R0 += 0x10;		/* ( 16) */
ffa03692:	ff e3 83 f2 	CALL 0xffa01b98 <_ip_header_checksum>;
ffa03696:	40 43       	R0 = R0.B (Z);
ffa03698:	00 0c       	CC = R0 == 0x0;
ffa0369a:	e7 1f       	IF CC JUMP 0xffa03668 <_tcp_rx+0x18> (BP);
ffa0369c:	4c 30       	R1 = P4;
ffa0369e:	41 64       	R1 += 0x8;		/* (  8) */
ffa036a0:	e0 a1       	R0 = [P4 + 0x1c];
ffa036a2:	ff e3 13 fc 	CALL 0xffa02ec8 <_ARP_lut_add>;
ffa036a6:	44 30       	R0 = P4;
ffa036a8:	ff e3 6a fe 	CALL 0xffa0337c <_tcp_length>;
ffa036ac:	30 30       	R6 = R0;
ffa036ae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa036b2:	0e 30       	R1 = R6;
ffa036b4:	00 e1 0c 05 	R0.L = 0x50c;		/* (1292)	R0=0xff90050c(-7338740) */
ffa036b8:	ff e3 5e ee 	CALL 0xffa01374 <_printf_int>;
ffa036bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90050c(-7338740) */
ffa036c0:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa036c4:	ff e3 96 ed 	CALL 0xffa011f0 <_printf_str>;
ffa036c8:	44 30       	R0 = P4;
ffa036ca:	0e 30       	R1 = R6;
ffa036cc:	ff e3 d4 fe 	CALL 0xffa03474 <_tcp_checksum_check>;
ffa036d0:	40 43       	R0 = R0.B (Z);
ffa036d2:	00 0c       	CC = R0 == 0x0;
ffa036d4:	ca 1b       	IF CC JUMP 0xffa03668 <_tcp_rx+0x18>;
ffa036d6:	00 00       	NOP;
ffa036d8:	00 00       	NOP;
ffa036da:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa036dc:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa036e0:	48 43       	R0 = R1.B (Z);
ffa036e2:	10 08       	CC = R0 == R2;
ffa036e4:	f1 18       	IF CC JUMP 0xffa038c6 <_tcp_rx+0x276>;
ffa036e6:	10 0c       	CC = R0 == 0x2;
ffa036e8:	0a 19       	IF CC JUMP 0xffa038fc <_tcp_rx+0x2ac>;
ffa036ea:	48 43       	R0 = R1.B (Z);
ffa036ec:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa036ee:	08 08       	CC = R0 == R1;
ffa036f0:	85 18       	IF CC JUMP 0xffa037fa <_tcp_rx+0x1aa>;
ffa036f2:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa036f4:	ab 10       	IF !CC JUMP 0xffa0384a <_tcp_rx+0x1fa>;
ffa036f6:	00 00       	NOP;
ffa036f8:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f74 <_g_httpHeaderLen> */
ffa036fc:	0b e1 64 0f 	P3.L = 0xf64;		/* (3940)	P3=0xff900f64 <_TcpState> */
ffa03700:	00 00       	NOP;
ffa03702:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa03706:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa03708:	38 10       	IF !CC JUMP 0xffa03778 <_tcp_rx+0x128>;
ffa0370a:	18 91       	R0 = [P3];
ffa0370c:	10 0c       	CC = R0 == 0x2;
ffa0370e:	ad 17       	IF !CC JUMP 0xffa03668 <_tcp_rx+0x18> (BP);
ffa03710:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900000 <_l1_data_a>(-7340032) */
ffa03714:	a0 a2       	R0 = [P4 + 0x28];
ffa03716:	04 e1 44 0e 	R4.L = 0xe44;		/* (3652)	R4=0xff900e44 <_NetDestIP>(-7336380) */
ffa0371a:	a5 e5 30 00 	R5 = B[P4 + 0x30] (X);
ffa0371e:	ff e3 d5 f1 	CALL 0xffa01ac8 <_htonl>;
ffa03722:	14 32       	P2 = R4;
ffa03724:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa03728:	30 50       	R0 = R0 + R6;
ffa0372a:	0d e1 5c 0f 	P5.L = 0xf5c;		/* (3932)	P5=0xff900f5c <_TcpSeqClient> */
ffa0372e:	28 93       	[P5] = R0;
ffa03730:	e0 a1       	R0 = [P4 + 0x1c];
ffa03732:	10 93       	[P2] = R0;
ffa03734:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f64 <_TcpState> */
ffa03738:	e0 a2       	R0 = [P4 + 0x2c];
ffa0373a:	0b e1 60 0f 	P3.L = 0xf60;		/* (3936)	P3=0xff900f60 <_TcpSeqHttpStart> */
ffa0373e:	ff e3 c5 f1 	CALL 0xffa01ac8 <_htonl>;
ffa03742:	19 91       	R1 = [P3];
ffa03744:	c8 53       	R7 = R0 - R1;
ffa03746:	a1 e4 31 00 	R1 = B[P4 + 0x31] (Z);
ffa0374a:	21 48       	CC = !BITTST (R1, 0x4);		/* bit  4 */
ffa0374c:	1e 1d       	IF CC JUMP 0xffa03988 <_tcp_rx+0x338> (BP);
ffa0374e:	06 0c       	CC = R6 == 0x0;
ffa03750:	1c 15       	IF !CC JUMP 0xffa03988 <_tcp_rx+0x338> (BP);
ffa03752:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_NetDestIP> */
ffa03756:	0a e1 74 0f 	P2.L = 0xf74;		/* (3956)	P2=0xff900f74 <_g_httpHeaderLen> */
ffa0375a:	10 91       	R0 = [P2];
ffa0375c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f74 <_g_httpHeaderLen> */
ffa03760:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa03764:	11 91       	R1 = [P2];
ffa03766:	08 50       	R0 = R0 + R1;
ffa03768:	07 08       	CC = R7 == R0;
ffa0376a:	46 18       	IF CC JUMP 0xffa037f6 <_tcp_rx+0x1a6>;
ffa0376c:	0f 30       	R1 = R7;
ffa0376e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03770:	ff e3 d8 fe 	CALL 0xffa03520 <_tcp_burst>;
ffa03774:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03776:	7a 2f       	JUMP.S 0xffa0366a <_tcp_rx+0x1a>;
ffa03778:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0377a:	1f 91       	R7 = [P3];
ffa0377c:	07 08       	CC = R7 == R0;
ffa0377e:	85 19       	IF CC JUMP 0xffa03a88 <_tcp_rx+0x438>;
ffa03780:	07 0c       	CC = R7 == 0x0;
ffa03782:	c4 17       	IF !CC JUMP 0xffa0370a <_tcp_rx+0xba> (BP);
ffa03784:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa03788:	00 e1 88 05 	R0.L = 0x588;		/* (1416)	R0=0xff900588(-7338616) */
ffa0378c:	ff e3 32 ed 	CALL 0xffa011f0 <_printf_str>;
ffa03790:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f78 <_g_httpContentLen> */
ffa03794:	0a e1 7c 0f 	P2.L = 0xf7c;		/* (3964)	P2=0xff900f7c <_g_httpRxed> */
ffa03798:	17 93       	[P2] = R7;
ffa0379a:	a0 a2       	R0 = [P4 + 0x28];
ffa0379c:	ff e3 96 f1 	CALL 0xffa01ac8 <_htonl>;
ffa037a0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f7c <_g_httpRxed> */
ffa037a4:	0a e1 5c 0f 	P2.L = 0xf5c;		/* (3932)	P2=0xff900f5c <_TcpSeqClient> */
ffa037a8:	10 93       	[P2] = R0;
ffa037aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f5c <_TcpSeqClient> */
ffa037ae:	e2 a1       	R2 = [P4 + 0x1c];
ffa037b0:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_NetDestIP> */
ffa037b4:	12 93       	[P2] = R2;
ffa037b6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_NetDestIP> */
ffa037ba:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa037be:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_TcpClientPort> */
ffa037c2:	11 97       	W[P2] = R1;
ffa037c4:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa037c6:	f1 b0       	[SP + 0xc] = R1;
ffa037c8:	4f 30       	R1 = FP;
ffa037ca:	30 b1       	[SP + 0x10] = R0;
ffa037cc:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa037ce:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa037d2:	77 b1 00 00 
ffa037d6:	ff e3 79 fe 	CALL 0xffa034c8 <_tcp_packet_setup>;
ffa037da:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa037de:	00 0d       	CC = R0 <= 0x0;
ffa037e0:	95 1b       	IF CC JUMP 0xffa0370a <_tcp_rx+0xba>;
ffa037e2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_TcpClientPort> */
ffa037e6:	0a e1 64 0f 	P2.L = 0xf64;		/* (3940)	P2=0xff900f64 <_TcpState> */
ffa037ea:	17 93       	[P2] = R7;
ffa037ec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa037ee:	ff e3 27 fe 	CALL 0xffa0343c <_tcp_checksum_set>;
ffa037f2:	ff e3 09 f3 	CALL 0xffa01e04 <_bfin_EMAC_send_nocopy>;
ffa037f6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa037f8:	39 2f       	JUMP.S 0xffa0366a <_tcp_rx+0x1a>;
ffa037fa:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f60 <_TcpSeqHttpStart> */
ffa037fe:	0b e1 64 0f 	P3.L = 0xf64;		/* (3940)	P3=0xff900f64 <_TcpState> */
ffa03802:	18 91       	R0 = [P3];
ffa03804:	08 0c       	CC = R0 == 0x1;
ffa03806:	b9 17       	IF !CC JUMP 0xffa03778 <_tcp_rx+0x128> (BP);
ffa03808:	e0 a2       	R0 = [P4 + 0x2c];
ffa0380a:	ff e3 5f f1 	CALL 0xffa01ac8 <_htonl>;
ffa0380e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f64 <_TcpState> */
ffa03812:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa03816:	11 91       	R1 = [P2];
ffa03818:	08 08       	CC = R0 == R1;
ffa0381a:	42 19       	IF CC JUMP 0xffa03a9e <_tcp_rx+0x44e>;
ffa0381c:	00 00       	NOP;
ffa0381e:	00 00       	NOP;
ffa03820:	00 00       	NOP;
ffa03822:	e0 a2       	R0 = [P4 + 0x2c];
ffa03824:	ff e3 52 f1 	CALL 0xffa01ac8 <_htonl>;
ffa03828:	08 30       	R1 = R0;
ffa0382a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0382e:	00 e1 38 05 	R0.L = 0x538;		/* (1336)	R0=0xff900538(-7338696) */
ffa03832:	ff e3 43 ee 	CALL 0xffa014b8 <_printf_ip>;
ffa03836:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03838:	18 93       	[P3] = R0;
ffa0383a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0383e:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa03842:	ff e3 d7 ec 	CALL 0xffa011f0 <_printf_str>;
ffa03846:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03848:	11 2f       	JUMP.S 0xffa0366a <_tcp_rx+0x1a>;
ffa0384a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0384e:	00 e1 64 05 	R0.L = 0x564;		/* (1380)	R0=0xff900564(-7338652) */
ffa03852:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900e44 <_NetDestIP>(-7336380) */
ffa03856:	ff e3 cd ec 	CALL 0xffa011f0 <_printf_str>;
ffa0385a:	04 e1 44 0e 	R4.L = 0xe44;		/* (3652)	R4=0xff900e44 <_NetDestIP>(-7336380) */
ffa0385e:	a0 a2       	R0 = [P4 + 0x28];
ffa03860:	ff e3 34 f1 	CALL 0xffa01ac8 <_htonl>;
ffa03864:	14 32       	P2 = R4;
ffa03866:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f5c <_TcpSeqClient> */
ffa0386a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f64 <_TcpState> */
ffa0386e:	0d e1 5c 0f 	P5.L = 0xf5c;		/* (3932)	P5=0xff900f5c <_TcpSeqClient> */
ffa03872:	0b e1 64 0f 	P3.L = 0xf64;		/* (3940)	P3=0xff900f64 <_TcpState> */
ffa03876:	28 93       	[P5] = R0;
ffa03878:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa0387c:	18 91 00 00 
ffa03880:	e2 a1       	R2 = [P4 + 0x1c];
ffa03882:	09 64       	R1 += 0x1;		/* (  1) */
ffa03884:	10 0c       	CC = R0 == 0x2;
ffa03886:	12 93       	[P2] = R2;
ffa03888:	29 93       	[P5] = R1;
ffa0388a:	03 18       	IF CC JUMP 0xffa03890 <_tcp_rx+0x240>;
ffa0388c:	00 0c       	CC = R0 == 0x0;
ffa0388e:	c0 14       	IF !CC JUMP 0xffa03a0e <_tcp_rx+0x3be> (BP);
ffa03890:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa03892:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa03896:	f0 b0       	[SP + 0xc] = R0;
ffa03898:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa0389c:	10 91       	R0 = [P2];
ffa0389e:	71 b1       	[SP + 0x14] = R1;
ffa038a0:	4f 30       	R1 = FP;
ffa038a2:	30 b1       	[SP + 0x10] = R0;
ffa038a4:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa038a6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa038a8:	ff e3 10 fe 	CALL 0xffa034c8 <_tcp_packet_setup>;
ffa038ac:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa038b0:	00 0d       	CC = R0 <= 0x0;
ffa038b2:	ae 18       	IF CC JUMP 0xffa03a0e <_tcp_rx+0x3be>;
ffa038b4:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa038b6:	18 93       	[P3] = R0;
ffa038b8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa038ba:	ff e3 c1 fd 	CALL 0xffa0343c <_tcp_checksum_set>;
ffa038be:	ff e3 a3 f2 	CALL 0xffa01e04 <_bfin_EMAC_send_nocopy>;
ffa038c2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa038c4:	d3 2e       	JUMP.S 0xffa0366a <_tcp_rx+0x1a>;
ffa038c6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa038ca:	00 e1 20 05 	R0.L = 0x520;		/* (1312)	R0=0xff900520(-7338720) */
ffa038ce:	ff e3 91 ec 	CALL 0xffa011f0 <_printf_str>;
ffa038d2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa038d6:	0a e1 64 0f 	P2.L = 0xf64;		/* (3940)	P2=0xff900f64 <_TcpState> */
ffa038da:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa038dc:	17 93       	[P2] = R7;
ffa038de:	a0 a2       	R0 = [P4 + 0x28];
ffa038e0:	ff e3 f4 f0 	CALL 0xffa01ac8 <_htonl>;
ffa038e4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f64 <_TcpState> */
ffa038e8:	0a e1 5c 0f 	P2.L = 0xf5c;		/* (3932)	P2=0xff900f5c <_TcpSeqClient> */
ffa038ec:	10 93       	[P2] = R0;
ffa038ee:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f5c <_TcpSeqClient> */
ffa038f2:	0a e1 7c 0f 	P2.L = 0xf7c;		/* (3964)	P2=0xff900f7c <_g_httpRxed> */
ffa038f6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa038f8:	17 93       	[P2] = R7;
ffa038fa:	b8 2e       	JUMP.S 0xffa0366a <_tcp_rx+0x1a>;
ffa038fc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03900:	00 e1 2c 05 	R0.L = 0x52c;		/* (1324)	R0=0xff90052c(-7338708) */
ffa03904:	ff e3 76 ec 	CALL 0xffa011f0 <_printf_str>;
ffa03908:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f5c <_TcpSeqClient> */
ffa0390c:	a0 a2       	R0 = [P4 + 0x28];
ffa0390e:	ff e3 dd f0 	CALL 0xffa01ac8 <_htonl>;
ffa03912:	0d e1 5c 0f 	P5.L = 0xf5c;		/* (3932)	P5=0xff900f5c <_TcpSeqClient> */
ffa03916:	28 93       	[P5] = R0;
ffa03918:	44 30       	R0 = P4;
ffa0391a:	ff e3 31 fd 	CALL 0xffa0337c <_tcp_length>;
ffa0391e:	29 91       	R1 = [P5];
ffa03920:	09 64       	R1 += 0x1;		/* (  1) */
ffa03922:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f7c <_g_httpRxed> */
ffa03926:	08 50       	R0 = R0 + R1;
ffa03928:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_TcpClientPort> */
ffa0392c:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03930:	11 97       	W[P2] = R1;
ffa03932:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_TcpClientPort> */
ffa03936:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa0393a:	28 93 00 00 
ffa0393e:	0a e1 7c 0f 	P2.L = 0xf7c;		/* (3964)	P2=0xff900f7c <_g_httpRxed> */
ffa03942:	11 93       	[P2] = R1;
ffa03944:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f7c <_g_httpRxed> */
ffa03948:	e2 a1       	R2 = [P4 + 0x1c];
ffa0394a:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_NetDestIP> */
ffa0394e:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa03950:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f5c <_TcpSeqClient> */
ffa03954:	12 93       	[P2] = R2;
ffa03956:	0d e1 58 0f 	P5.L = 0xf58;		/* (3928)	P5=0xff900f58 <_TcpSeqHost> */
ffa0395a:	f1 b0       	[SP + 0xc] = R1;
ffa0395c:	29 91       	R1 = [P5];
ffa0395e:	31 b1       	[SP + 0x10] = R1;
ffa03960:	4f 30       	R1 = FP;
ffa03962:	70 b1       	[SP + 0x14] = R0;
ffa03964:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03966:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03968:	ff e3 b0 fd 	CALL 0xffa034c8 <_tcp_packet_setup>;
ffa0396c:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03970:	00 0d       	CC = R0 <= 0x0;
ffa03972:	93 18       	IF CC JUMP 0xffa03a98 <_tcp_rx+0x448>;
ffa03974:	28 91       	R0 = [P5];
ffa03976:	08 64       	R0 += 0x1;		/* (  1) */
ffa03978:	28 93       	[P5] = R0;
ffa0397a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0397c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_NetDestIP> */
ffa03980:	0a e1 64 0f 	P2.L = 0xf64;		/* (3940)	P2=0xff900f64 <_TcpState> */
ffa03984:	10 93       	[P2] = R0;
ffa03986:	33 2f       	JUMP.S 0xffa037ec <_tcp_rx+0x19c>;
ffa03988:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa0398c:	28 54       	R0 = R0 & R5;
ffa0398e:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa03990:	10 4d       	R0 >>>= 0x2;
ffa03992:	54 30       	R2 = P4;
ffa03994:	19 48       	CC = !BITTST (R1, 0x3);		/* bit  3 */
ffa03996:	02 50       	R0 = R2 + R0;
ffa03998:	5d 1c       	IF CC JUMP 0xffa03a52 <_tcp_rx+0x402> (BP);
ffa0399a:	0e 30       	R1 = R6;
ffa0399c:	00 e3 16 05 	CALL 0xffa043c8 <_httpCollate>;
ffa039a0:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f58 <_TcpSeqHost> */
ffa039a4:	18 91       	R0 = [P3];
ffa039a6:	07 50       	R0 = R7 + R0;
ffa039a8:	0d e1 58 0f 	P5.L = 0xf58;		/* (3928)	P5=0xff900f58 <_TcpSeqHost> */
ffa039ac:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e8c <_NetArpLut> */
ffa039b0:	28 93       	[P5] = R0;
ffa039b2:	0c e1 7c 0f 	P4.L = 0xf7c;		/* (3964)	P4=0xff900f7c <_g_httpRxed> */
ffa039b6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa039b8:	80 4f       	R0 <<= 0x10;
ffa039ba:	21 91       	R1 = [P4];
ffa039bc:	00 e3 dc 02 	CALL 0xffa03f74 <_httpResp>;
ffa039c0:	00 0c       	CC = R0 == 0x0;
ffa039c2:	22 1c       	IF CC JUMP 0xffa03a06 <_tcp_rx+0x3b6> (BP);
ffa039c4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f64 <_TcpState> */
ffa039c8:	28 91       	R0 = [P5];
ffa039ca:	0a e1 60 0f 	P2.L = 0xf60;		/* (3936)	P2=0xff900f60 <_TcpSeqHttpStart> */
ffa039ce:	10 93       	[P2] = R0;
ffa039d0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f60 <_TcpSeqHttpStart> */
ffa039d4:	0a e1 74 0f 	P2.L = 0xf74;		/* (3956)	P2=0xff900f74 <_g_httpHeaderLen> */
ffa039d8:	11 91       	R1 = [P2];
ffa039da:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f74 <_g_httpHeaderLen> */
ffa039de:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa039e2:	10 91       	R0 = [P2];
ffa039e4:	41 50       	R1 = R1 + R0;
ffa039e6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa039ea:	00 e1 a4 05 	R0.L = 0x5a4;		/* (1444)	R0=0xff9005a4(-7338588) */
ffa039ee:	ff e3 c3 ec 	CALL 0xffa01374 <_printf_int>;
ffa039f2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005a4(-7338588) */
ffa039f6:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa039fa:	ff e3 fb eb 	CALL 0xffa011f0 <_printf_str>;
ffa039fe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03a00:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03a02:	ff e3 8f fd 	CALL 0xffa03520 <_tcp_burst>;
ffa03a06:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a08:	20 93       	[P4] = R0;
ffa03a0a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03a0c:	2f 2e       	JUMP.S 0xffa0366a <_tcp_rx+0x1a>;
ffa03a0e:	18 91       	R0 = [P3];
ffa03a10:	18 0c       	CC = R0 == 0x3;
ffa03a12:	77 16       	IF !CC JUMP 0xffa03700 <_tcp_rx+0xb0> (BP);
ffa03a14:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f78 <_g_httpContentLen> */
ffa03a18:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a1a:	0a e1 7c 0f 	P2.L = 0xf7c;		/* (3964)	P2=0xff900f7c <_g_httpRxed> */
ffa03a1e:	10 93       	[P2] = R0;
ffa03a20:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03a22:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f7c <_g_httpRxed> */
ffa03a26:	f0 b0       	[SP + 0xc] = R0;
ffa03a28:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa03a2c:	10 91       	R0 = [P2];
ffa03a2e:	14 32       	P2 = R4;
ffa03a30:	30 b1       	[SP + 0x10] = R0;
ffa03a32:	28 91       	R0 = [P5];
ffa03a34:	70 b1       	[SP + 0x14] = R0;
ffa03a36:	4f 30       	R1 = FP;
ffa03a38:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03a3c:	12 91 00 00 
ffa03a40:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03a42:	ff e3 43 fd 	CALL 0xffa034c8 <_tcp_packet_setup>;
ffa03a46:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03a4a:	00 0d       	CC = R0 <= 0x0;
ffa03a4c:	5a 1a       	IF CC JUMP 0xffa03700 <_tcp_rx+0xb0>;
ffa03a4e:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03a50:	96 2f       	JUMP.S 0xffa0397c <_tcp_rx+0x32c>;
ffa03a52:	0e 30       	R1 = R6;
ffa03a54:	00 e3 ba 04 	CALL 0xffa043c8 <_httpCollate>;
ffa03a58:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03a5a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa03a5e:	f0 b0       	[SP + 0xc] = R0;
ffa03a60:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa03a64:	10 91       	R0 = [P2];
ffa03a66:	14 32       	P2 = R4;
ffa03a68:	30 b1       	[SP + 0x10] = R0;
ffa03a6a:	28 91       	R0 = [P5];
ffa03a6c:	70 b1       	[SP + 0x14] = R0;
ffa03a6e:	4f 30       	R1 = FP;
ffa03a70:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03a74:	12 91 00 00 
ffa03a78:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03a7a:	ff e3 27 fd 	CALL 0xffa034c8 <_tcp_packet_setup>;
ffa03a7e:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03a82:	00 0d       	CC = R0 <= 0x0;
ffa03a84:	b4 16       	IF !CC JUMP 0xffa037ec <_tcp_rx+0x19c> (BP);
ffa03a86:	f1 2d       	JUMP.S 0xffa03668 <_tcp_rx+0x18>;
ffa03a88:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa03a8c:	00 e1 74 05 	R0.L = 0x574;		/* (1396)	R0=0xff900574(-7338636) */
ffa03a90:	ff e3 b0 eb 	CALL 0xffa011f0 <_printf_str>;
ffa03a94:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03a96:	ea 2d       	JUMP.S 0xffa0366a <_tcp_rx+0x1a>;
ffa03a98:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03a9c:	27 2e       	JUMP.S 0xffa036ea <_tcp_rx+0x9a>;
ffa03a9e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03aa0:	18 93       	[P3] = R0;
ffa03aa2:	a0 a2       	R0 = [P4 + 0x28];
ffa03aa4:	ff e3 12 f0 	CALL 0xffa01ac8 <_htonl>;
ffa03aa8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa03aac:	0a e1 5c 0f 	P2.L = 0xf5c;		/* (3932)	P2=0xff900f5c <_TcpSeqClient> */
ffa03ab0:	10 93       	[P2] = R0;
ffa03ab2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa03ab6:	00 e1 54 05 	R0.L = 0x554;		/* (1364)	R0=0xff900554(-7338668) */
ffa03aba:	ff e3 9b eb 	CALL 0xffa011f0 <_printf_str>;
ffa03abe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03ac0:	d5 2d       	JUMP.S 0xffa0366a <_tcp_rx+0x1a>;
	...

ffa03ac4 <_htmlForm>:
ffa03ac4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03ac8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa03acc:	02 e1 c0 05 	R2.L = 0x5c0;		/* (1472)	R2=0xff9005c0(-7338560) */
ffa03ad0:	01 e8 00 00 	UNLINK;
ffa03ad4:	ff e2 66 ed 	JUMP.L 0xffa015a0 <_strcpy_>;

ffa03ad8 <_htmlDiv>:
ffa03ad8:	12 43       	R2 = R2.B (X);
ffa03ada:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa03ade:	1a 08       	CC = R2 == R3;
ffa03ae0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03ae4:	09 18       	IF CC JUMP 0xffa03af6 <_htmlDiv+0x1e>;
ffa03ae6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005c0(-7338560) */
ffa03aea:	02 e1 14 06 	R2.L = 0x614;		/* (1556)	R2=0xff900614(-7338476) */
ffa03aee:	01 e8 00 00 	UNLINK;
ffa03af2:	ff e2 57 ed 	JUMP.L 0xffa015a0 <_strcpy_>;
ffa03af6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900614(-7338476) */
ffa03afa:	02 e1 e0 05 	R2.L = 0x5e0;		/* (1504)	R2=0xff9005e0(-7338528) */
ffa03afe:	01 e8 00 00 	UNLINK;
ffa03b02:	ff e2 4f ed 	JUMP.L 0xffa015a0 <_strcpy_>;
	...

ffa03b08 <_html404>:
ffa03b08:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03b0c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b0e:	4f 30       	R1 = FP;
ffa03b10:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005e0(-7338528) */
ffa03b14:	f0 bb       	[FP -0x4] = R0;
ffa03b16:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03b18:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03b1c:	02 e1 48 06 	R2.L = 0x648;		/* (1608)	R2=0xff900648(-7338424) */
ffa03b20:	ff e3 40 ed 	CALL 0xffa015a0 <_strcpy_>;
ffa03b24:	f0 b9       	R0 = [FP -0x4];
ffa03b26:	01 e8 00 00 	UNLINK;
ffa03b2a:	10 00       	RTS;

ffa03b2c <_htmlCursorOption>:
ffa03b2c:	68 05       	[--SP] = (R7:5);
ffa03b2e:	2a 30       	R5 = R2;
ffa03b30:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900648(-7338424) */
ffa03b34:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03b38:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa03b3c:	3f a2 00 00 
ffa03b40:	02 e1 64 06 	R2.L = 0x664;		/* (1636)	R2=0xff900664(-7338396) */
ffa03b44:	ff e3 2e ed 	CALL 0xffa015a0 <_strcpy_>;
ffa03b48:	0e 30       	R1 = R6;
ffa03b4a:	15 30       	R2 = R5;
ffa03b4c:	ff e3 90 ee 	CALL 0xffa0186c <_strprintf_int>;
ffa03b50:	3d 08       	CC = R5 == R7;
ffa03b52:	16 18       	IF CC JUMP 0xffa03b7e <_htmlCursorOption+0x52>;
ffa03b54:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900664(-7338396) */
ffa03b58:	0e 30       	R1 = R6;
ffa03b5a:	02 e1 8c 06 	R2.L = 0x68c;		/* (1676)	R2=0xff90068c(-7338356) */
ffa03b5e:	ff e3 21 ed 	CALL 0xffa015a0 <_strcpy_>;
ffa03b62:	0e 30       	R1 = R6;
ffa03b64:	15 30       	R2 = R5;
ffa03b66:	ff e3 83 ee 	CALL 0xffa0186c <_strprintf_int>;
ffa03b6a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90068c(-7338356) */
ffa03b6e:	01 e8 00 00 	UNLINK;
ffa03b72:	0e 30       	R1 = R6;
ffa03b74:	02 e1 90 06 	R2.L = 0x690;		/* (1680)	R2=0xff900690(-7338352) */
ffa03b78:	28 05       	(R7:5) = [SP++];
ffa03b7a:	ff e2 13 ed 	JUMP.L 0xffa015a0 <_strcpy_>;
ffa03b7e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900690(-7338352) */
ffa03b82:	0e 30       	R1 = R6;
ffa03b84:	02 e1 74 06 	R2.L = 0x674;		/* (1652)	R2=0xff900674(-7338380) */
ffa03b88:	ff e3 0c ed 	CALL 0xffa015a0 <_strcpy_>;
ffa03b8c:	e4 2f       	JUMP.S 0xffa03b54 <_htmlCursorOption+0x28>;
	...

ffa03b90 <_htmlCursorSelect>:
ffa03b90:	60 05       	[--SP] = (R7:4);
ffa03b92:	3a 30       	R7 = R2;
ffa03b94:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900674(-7338380) */
ffa03b98:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03b9c:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa03ba0:	7e a2 00 00 
ffa03ba4:	02 e1 9c 06 	R2.L = 0x69c;		/* (1692)	R2=0xff90069c(-7338340) */
ffa03ba8:	bc a2       	R4 = [FP + 0x28];
ffa03baa:	ff e3 fb ec 	CALL 0xffa015a0 <_strcpy_>;
ffa03bae:	17 30       	R2 = R7;
ffa03bb0:	0d 30       	R1 = R5;
ffa03bb2:	ff e3 f7 ec 	CALL 0xffa015a0 <_strcpy_>;
ffa03bb6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90069c(-7338340) */
ffa03bba:	0d 30       	R1 = R5;
ffa03bbc:	02 e1 a8 06 	R2.L = 0x6a8;		/* (1704)	R2=0xff9006a8(-7338328) */
ffa03bc0:	ff e3 f0 ec 	CALL 0xffa015a0 <_strcpy_>;
ffa03bc4:	0d 30       	R1 = R5;
ffa03bc6:	16 30       	R2 = R6;
ffa03bc8:	ff e3 ec ec 	CALL 0xffa015a0 <_strcpy_>;
ffa03bcc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006a8(-7338328) */
ffa03bd0:	0d 30       	R1 = R5;
ffa03bd2:	02 e1 c4 06 	R2.L = 0x6c4;		/* (1732)	R2=0xff9006c4(-7338300) */
ffa03bd6:	ff e3 e5 ec 	CALL 0xffa015a0 <_strcpy_>;
ffa03bda:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03bdc:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa03be0:	f4 b0 00 00 
ffa03be4:	17 30       	R2 = R7;
ffa03be6:	ff e3 a3 ff 	CALL 0xffa03b2c <_htmlCursorOption>;
ffa03bea:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03bec:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03bee:	0f 08       	CC = R7 == R1;
ffa03bf0:	f6 17       	IF !CC JUMP 0xffa03bdc <_htmlCursorSelect+0x4c> (BP);
ffa03bf2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c4(-7338300) */
ffa03bf6:	01 e8 00 00 	UNLINK;
ffa03bfa:	0d 30       	R1 = R5;
ffa03bfc:	02 e1 c8 06 	R2.L = 0x6c8;		/* (1736)	R2=0xff9006c8(-7338296) */
ffa03c00:	20 05       	(R7:4) = [SP++];
ffa03c02:	ff e2 cf ec 	JUMP.L 0xffa015a0 <_strcpy_>;
	...

ffa03c08 <_htmlDefault>:
ffa03c08:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03c0a:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03c0e:	77 30       	R6 = FP;
ffa03c10:	e6 67       	R6 += -0x4;		/* ( -4) */
ffa03c12:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c14:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c8(-7338296) */
ffa03c18:	f0 bb       	[FP -0x4] = R0;
ffa03c1a:	0e 30       	R1 = R6;
ffa03c1c:	02 e1 e0 06 	R2.L = 0x6e0;		/* (1760)	R2=0xff9006e0(-7338272) */
ffa03c20:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03c24:	ff e3 be ec 	CALL 0xffa015a0 <_strcpy_>;
ffa03c28:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03c2c:	0e 30       	R1 = R6;
ffa03c2e:	ff e3 55 ff 	CALL 0xffa03ad8 <_htmlDiv>;
ffa03c32:	0e 30       	R1 = R6;
ffa03c34:	ff e3 48 ff 	CALL 0xffa03ac4 <_htmlForm>;
ffa03c38:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03c3c:	0e 30       	R1 = R6;
ffa03c3e:	02 e1 30 07 	R2.L = 0x730;		/* (1840)	R2=0xff900730(-7338192) */
ffa03c42:	ff e3 af ec 	CALL 0xffa015a0 <_strcpy_>;
ffa03c46:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f5c <_TcpSeqClient> */
ffa03c4a:	0a e1 d4 0b 	P2.L = 0xbd4;		/* (3028)	P2=0xff900bd4 <_g_streamEnabled> */
ffa03c4e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03c52:	10 99 00 00 
ffa03c56:	00 0c       	CC = R0 == 0x0;
ffa03c58:	2c 1d       	IF CC JUMP 0xffa03eb0 <_htmlDefault+0x2a8> (BP);
ffa03c5a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900730(-7338192) */
ffa03c5e:	01 30       	R0 = R1;
ffa03c60:	02 e1 80 07 	R2.L = 0x780;		/* (1920)	R2=0xff900780(-7338112) */
ffa03c64:	0e 30       	R1 = R6;
ffa03c66:	ff e3 9d ec 	CALL 0xffa015a0 <_strcpy_>;
ffa03c6a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900780(-7338112) */
ffa03c6e:	0e 30       	R1 = R6;
ffa03c70:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03c74:	ff e3 96 ec 	CALL 0xffa015a0 <_strcpy_>;
ffa03c78:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03c7c:	0e 30       	R1 = R6;
ffa03c7e:	ff e3 2d ff 	CALL 0xffa03ad8 <_htmlDiv>;
ffa03c82:	0e 30       	R1 = R6;
ffa03c84:	ff e3 20 ff 	CALL 0xffa03ac4 <_htmlForm>;
ffa03c88:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03c8c:	0e 30       	R1 = R6;
ffa03c8e:	02 e1 ac 07 	R2.L = 0x7ac;		/* (1964)	R2=0xff9007ac(-7338068) */
ffa03c92:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f58 <_TcpSeqHost> */
ffa03c96:	ff e3 85 ec 	CALL 0xffa015a0 <_strcpy_>;
ffa03c9a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03c9c:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa03c9e:	0d e1 84 0e 	P5.L = 0xe84;		/* (3716)	P5=0xff900e84 <_NetDataDestIP> */
ffa03ca2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007ac(-7338068) */
ffa03ca6:	0e 30       	R1 = R6;
ffa03ca8:	02 e1 c8 07 	R2.L = 0x7c8;		/* (1992)	R2=0xff9007c8(-7338040) */
ffa03cac:	ff e3 7a ec 	CALL 0xffa015a0 <_strcpy_>;
ffa03cb0:	17 30       	R2 = R7;
ffa03cb2:	0e 30       	R1 = R6;
ffa03cb4:	ff e3 dc ed 	CALL 0xffa0186c <_strprintf_int>;
ffa03cb8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007c8(-7338040) */
ffa03cbc:	0e 30       	R1 = R6;
ffa03cbe:	02 e1 e4 07 	R2.L = 0x7e4;		/* (2020)	R2=0xff9007e4(-7338012) */
ffa03cc2:	ff e3 6f ec 	CALL 0xffa015a0 <_strcpy_>;
ffa03cc6:	2a 91       	R2 = [P5];
ffa03cc8:	6a 40       	R2 >>= R5;
ffa03cca:	52 43       	R2 = R2.B (Z);
ffa03ccc:	0e 30       	R1 = R6;
ffa03cce:	ff e3 cf ed 	CALL 0xffa0186c <_strprintf_int>;
ffa03cd2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007e4(-7338012) */
ffa03cd6:	0e 30       	R1 = R6;
ffa03cd8:	02 e1 f8 07 	R2.L = 0x7f8;		/* (2040)	R2=0xff9007f8(-7337992) */
ffa03cdc:	ff e3 62 ec 	CALL 0xffa015a0 <_strcpy_>;
ffa03ce0:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03ce2:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03ce4:	0f 08       	CC = R7 == R1;
ffa03ce6:	45 64       	R5 += 0x8;		/* (  8) */
ffa03ce8:	dd 17       	IF !CC JUMP 0xffa03ca2 <_htmlDefault+0x9a> (BP);
ffa03cea:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007f8(-7337992) */
ffa03cee:	0e 30       	R1 = R6;
ffa03cf0:	02 e1 00 08 	R2.L = 0x800;		/* (2048)	R2=0xff900800(-7337984) */
ffa03cf4:	ff e3 56 ec 	CALL 0xffa015a0 <_strcpy_>;
ffa03cf8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900800(-7337984) */
ffa03cfc:	0e 30       	R1 = R6;
ffa03cfe:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03d02:	ff e3 4f ec 	CALL 0xffa015a0 <_strcpy_>;
ffa03d06:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03d0a:	0e 30       	R1 = R6;
ffa03d0c:	ff e3 e6 fe 	CALL 0xffa03ad8 <_htmlDiv>;
ffa03d10:	0e 30       	R1 = R6;
ffa03d12:	ff e3 d9 fe 	CALL 0xffa03ac4 <_htmlForm>;
ffa03d16:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03d1a:	0e 30       	R1 = R6;
ffa03d1c:	02 e1 24 08 	R2.L = 0x824;		/* (2084)	R2=0xff900824(-7337948) */
ffa03d20:	ff e3 40 ec 	CALL 0xffa015a0 <_strcpy_>;
ffa03d24:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bd4 */
ffa03d28:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03d2c:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03d30:	10 99 00 00 
ffa03d34:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03d36:	c6 1c       	IF CC JUMP 0xffa03ec2 <_htmlDefault+0x2ba> (BP);
ffa03d38:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900824(-7337948) */
ffa03d3c:	01 30       	R0 = R1;
ffa03d3e:	02 e1 8c 07 	R2.L = 0x78c;		/* (1932)	R2=0xff90078c(-7338100) */
ffa03d42:	0e 30       	R1 = R6;
ffa03d44:	ff e3 2e ec 	CALL 0xffa015a0 <_strcpy_>;
ffa03d48:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90078c(-7338100) */
ffa03d4c:	0e 30       	R1 = R6;
ffa03d4e:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03d52:	ff e3 27 ec 	CALL 0xffa015a0 <_strcpy_>;
ffa03d56:	0e 30       	R1 = R6;
ffa03d58:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03d5c:	ff e3 be fe 	CALL 0xffa03ad8 <_htmlDiv>;
ffa03d60:	0e 30       	R1 = R6;
ffa03d62:	ff e3 b1 fe 	CALL 0xffa03ac4 <_htmlForm>;
ffa03d66:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03d6a:	0e 30       	R1 = R6;
ffa03d6c:	02 e1 64 08 	R2.L = 0x864;		/* (2148)	R2=0xff900864(-7337884) */
ffa03d70:	ff e3 18 ec 	CALL 0xffa015a0 <_strcpy_>;
ffa03d74:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa03d78:	01 e1 94 08 	R1.L = 0x894;		/* (2196)	R1=0xff900894(-7337836) */
ffa03d7c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900864(-7337884) */
ffa03d80:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa03d84:	f1 b0 00 00 
ffa03d88:	02 e1 88 08 	R2.L = 0x888;		/* (2184)	R2=0xff900888(-7337848) */
ffa03d8c:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03d90:	37 b1 00 00 
ffa03d94:	ff e3 fe fe 	CALL 0xffa03b90 <_htmlCursorSelect>;
ffa03d98:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900894(-7337836) */
ffa03d9c:	01 e1 ac 08 	R1.L = 0x8ac;		/* (2220)	R1=0xff9008ac(-7337812) */
ffa03da0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900888(-7337848) */
ffa03da4:	f1 b0       	[SP + 0xc] = R1;
ffa03da6:	02 e1 a0 08 	R2.L = 0x8a0;		/* (2208)	R2=0xff9008a0(-7337824) */
ffa03daa:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03dae:	37 b1 00 00 
ffa03db2:	ff e3 ef fe 	CALL 0xffa03b90 <_htmlCursorSelect>;
ffa03db6:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008ac(-7337812) */
ffa03dba:	01 e1 c4 08 	R1.L = 0x8c4;		/* (2244)	R1=0xff9008c4(-7337788) */
ffa03dbe:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a0(-7337824) */
ffa03dc2:	f1 b0       	[SP + 0xc] = R1;
ffa03dc4:	02 e1 b8 08 	R2.L = 0x8b8;		/* (2232)	R2=0xff9008b8(-7337800) */
ffa03dc8:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03dcc:	37 b1 00 00 
ffa03dd0:	ff e3 e0 fe 	CALL 0xffa03b90 <_htmlCursorSelect>;
ffa03dd4:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008c4(-7337788) */
ffa03dd8:	01 e1 d8 08 	R1.L = 0x8d8;		/* (2264)	R1=0xff9008d8(-7337768) */
ffa03ddc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008b8(-7337800) */
ffa03de0:	f1 b0       	[SP + 0xc] = R1;
ffa03de2:	02 e1 d0 08 	R2.L = 0x8d0;		/* (2256)	R2=0xff9008d0(-7337776) */
ffa03de6:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03dea:	37 b1 00 00 
ffa03dee:	ff e3 d1 fe 	CALL 0xffa03b90 <_htmlCursorSelect>;
ffa03df2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008d0(-7337776) */
ffa03df6:	0e 30       	R1 = R6;
ffa03df8:	02 e1 e4 08 	R2.L = 0x8e4;		/* (2276)	R2=0xff9008e4(-7337756) */
ffa03dfc:	ff e3 d2 eb 	CALL 0xffa015a0 <_strcpy_>;
ffa03e00:	0e 30       	R1 = R6;
ffa03e02:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03e06:	ff e3 69 fe 	CALL 0xffa03ad8 <_htmlDiv>;
ffa03e0a:	0e 30       	R1 = R6;
ffa03e0c:	ff e3 5c fe 	CALL 0xffa03ac4 <_htmlForm>;
ffa03e10:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03e14:	0e 30       	R1 = R6;
ffa03e16:	02 e1 20 09 	R2.L = 0x920;		/* (2336)	R2=0xff900920(-7337696) */
ffa03e1a:	ff e3 c3 eb 	CALL 0xffa015a0 <_strcpy_>;
ffa03e1e:	0e 30       	R1 = R6;
ffa03e20:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03e24:	ff e3 5a fe 	CALL 0xffa03ad8 <_htmlDiv>;
ffa03e28:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03e2c:	0e 30       	R1 = R6;
ffa03e2e:	02 e1 78 09 	R2.L = 0x978;		/* (2424)	R2=0xff900978(-7337608) */
ffa03e32:	ff e3 b7 eb 	CALL 0xffa015a0 <_strcpy_>;
ffa03e36:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900978(-7337608) */
ffa03e3a:	0e 30       	R1 = R6;
ffa03e3c:	02 e1 a0 09 	R2.L = 0x9a0;		/* (2464)	R2=0xff9009a0(-7337568) */
ffa03e40:	ff e3 b0 eb 	CALL 0xffa015a0 <_strcpy_>;
ffa03e44:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009a0(-7337568) */
ffa03e48:	0e 30       	R1 = R6;
ffa03e4a:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03e4e:	ff e3 a9 eb 	CALL 0xffa015a0 <_strcpy_>;
ffa03e52:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900798(-7338088) */
ffa03e56:	0e 30       	R1 = R6;
ffa03e58:	02 e1 e8 09 	R2.L = 0x9e8;		/* (2536)	R2=0xff9009e8(-7337496) */
ffa03e5c:	ff e3 a2 eb 	CALL 0xffa015a0 <_strcpy_>;
ffa03e60:	0e 30       	R1 = R6;
ffa03e62:	22 e1 75 ff 	R2 = -0x8b (X);		/*		R2=0xffffff75(-139) */
ffa03e66:	ff e3 03 ed 	CALL 0xffa0186c <_strprintf_int>;
ffa03e6a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ff75(-7274635) */
ffa03e6e:	0e 30       	R1 = R6;
ffa03e70:	02 e1 b0 00 	R2.L = 0xb0;		/* (176)	R2=0xff9000b0(-7339856) */
ffa03e74:	ff e3 96 eb 	CALL 0xffa015a0 <_strcpy_>;
ffa03e78:	0e 30       	R1 = R6;
ffa03e7a:	92 62       	R2 = -0x2e (X);		/*		R2=0xffffffd2(-46) */
ffa03e7c:	ff e3 f8 ec 	CALL 0xffa0186c <_strprintf_int>;
ffa03e80:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ffd2(-7274542) */
ffa03e84:	0e 30       	R1 = R6;
ffa03e86:	02 e1 88 00 	R2.L = 0x88;		/* (136)	R2=0xff900088(-7339896) */
ffa03e8a:	ff e3 8b eb 	CALL 0xffa015a0 <_strcpy_>;
ffa03e8e:	0e 30       	R1 = R6;
ffa03e90:	22 e1 d0 fd 	R2 = -0x230 (X);		/*		R2=0xfffffdd0(-560) */
ffa03e94:	ff e3 ec ec 	CALL 0xffa0186c <_strprintf_int>;
ffa03e98:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90fdd0(-7275056) */
ffa03e9c:	0e 30       	R1 = R6;
ffa03e9e:	02 e1 f4 09 	R2.L = 0x9f4;		/* (2548)	R2=0xff9009f4(-7337484) */
ffa03ea2:	ff e3 7f eb 	CALL 0xffa015a0 <_strcpy_>;
ffa03ea6:	f0 b9       	R0 = [FP -0x4];
ffa03ea8:	01 e8 00 00 	UNLINK;
ffa03eac:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03eae:	10 00       	RTS;
ffa03eb0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009f4(-7337484) */
ffa03eb4:	01 30       	R0 = R1;
ffa03eb6:	02 e1 8c 07 	R2.L = 0x78c;		/* (1932)	R2=0xff90078c(-7338100) */
ffa03eba:	0e 30       	R1 = R6;
ffa03ebc:	ff e3 72 eb 	CALL 0xffa015a0 <_strcpy_>;
ffa03ec0:	d5 2e       	JUMP.S 0xffa03c6a <_htmlDefault+0x62>;
ffa03ec2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90078c(-7338100) */
ffa03ec6:	01 30       	R0 = R1;
ffa03ec8:	02 e1 80 07 	R2.L = 0x780;		/* (1920)	R2=0xff900780(-7338112) */
ffa03ecc:	0e 30       	R1 = R6;
ffa03ece:	ff e3 69 eb 	CALL 0xffa015a0 <_strcpy_>;
ffa03ed2:	3b 2f       	JUMP.S 0xffa03d48 <_htmlDefault+0x140>;

ffa03ed4 <_httpHeader>:
ffa03ed4:	78 05       	[--SP] = (R7:7);
ffa03ed6:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03eda:	7f 30       	R7 = FP;
ffa03edc:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03ede:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ee0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900780(-7338112) */
ffa03ee4:	f0 bb       	[FP -0x4] = R0;
ffa03ee6:	0f 30       	R1 = R7;
ffa03ee8:	02 e1 0c 0a 	R2.L = 0xa0c;		/* (2572)	R2=0xff900a0c(-7337460) */
ffa03eec:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03ef0:	ff e3 58 eb 	CALL 0xffa015a0 <_strcpy_>;
ffa03ef4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a0c(-7337460) */
ffa03ef8:	0f 30       	R1 = R7;
ffa03efa:	02 e1 20 0a 	R2.L = 0xa20;		/* (2592)	R2=0xff900a20(-7337440) */
ffa03efe:	ff e3 51 eb 	CALL 0xffa015a0 <_strcpy_>;
ffa03f02:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a20(-7337440) */
ffa03f06:	0f 30       	R1 = R7;
ffa03f08:	02 e1 34 0a 	R2.L = 0xa34;		/* (2612)	R2=0xff900a34(-7337420) */
ffa03f0c:	ff e3 4a eb 	CALL 0xffa015a0 <_strcpy_>;
ffa03f10:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa03f14:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa03f18:	12 91       	R2 = [P2];
ffa03f1a:	0f 30       	R1 = R7;
ffa03f1c:	ff e3 a8 ec 	CALL 0xffa0186c <_strprintf_int>;
ffa03f20:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a34(-7337420) */
ffa03f24:	0f 30       	R1 = R7;
ffa03f26:	02 e1 48 0a 	R2.L = 0xa48;		/* (2632)	R2=0xff900a48(-7337400) */
ffa03f2a:	ff e3 3b eb 	CALL 0xffa015a0 <_strcpy_>;
ffa03f2e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f78 <_g_httpContentLen> */
ffa03f32:	f0 b9       	R0 = [FP -0x4];
ffa03f34:	0a e1 74 0f 	P2.L = 0xf74;		/* (3956)	P2=0xff900f74 <_g_httpHeaderLen> */
ffa03f38:	10 93       	[P2] = R0;
ffa03f3a:	01 e8 00 00 	UNLINK;
ffa03f3e:	38 05       	(R7:7) = [SP++];
ffa03f40:	10 00       	RTS;
	...

ffa03f44 <_htmlGeneric>:
ffa03f44:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03f48:	10 30       	R2 = R0;
ffa03f4a:	4f 30       	R1 = FP;
ffa03f4c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03f4e:	f0 bb       	[FP -0x4] = R0;
ffa03f50:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03f52:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03f56:	ff e3 25 eb 	CALL 0xffa015a0 <_strcpy_>;
ffa03f5a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f74 <_g_httpHeaderLen> */
ffa03f5e:	f0 b9       	R0 = [FP -0x4];
ffa03f60:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa03f64:	10 93       	[P2] = R0;
ffa03f66:	ff e3 b7 ff 	CALL 0xffa03ed4 <_httpHeader>;
ffa03f6a:	f0 b9       	R0 = [FP -0x4];
ffa03f6c:	01 e8 00 00 	UNLINK;
ffa03f70:	10 00       	RTS;
	...

ffa03f74 <_httpResp>:
ffa03f74:	60 05       	[--SP] = (R7:4);
ffa03f76:	30 30       	R6 = R0;
ffa03f78:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa03f7a:	01 09       	CC = R1 <= R0;
ffa03f7c:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa03f80:	39 30       	R7 = R1;
ffa03f82:	21 10       	IF !CC JUMP 0xffa03fc4 <_httpResp+0x50>;
ffa03f84:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa03f86:	0f 09       	CC = R7 <= R1;
ffa03f88:	34 10       	IF !CC JUMP 0xffa03ff0 <_httpResp+0x7c>;
ffa03f8a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa03f8e:	00 e1 04 0a 	R0.L = 0xa04;		/* (2564)	R0=0xff900a04(-7337468) */
ffa03f92:	0e 30       	R1 = R6;
ffa03f94:	17 30       	R2 = R7;
ffa03f96:	ff e3 73 eb 	CALL 0xffa0167c <_substr>;
ffa03f9a:	00 0c       	CC = R0 == 0x0;
ffa03f9c:	06 10       	IF !CC JUMP 0xffa03fa8 <_httpResp+0x34>;
ffa03f9e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03fa0:	01 e8 00 00 	UNLINK;
ffa03fa4:	20 05       	(R7:4) = [SP++];
ffa03fa6:	10 00       	RTS;
ffa03fa8:	ff e3 b0 fd 	CALL 0xffa03b08 <_html404>;
ffa03fac:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f78 <_g_httpContentLen> */
ffa03fb0:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa03fb4:	10 93       	[P2] = R0;
ffa03fb6:	ff e3 8f ff 	CALL 0xffa03ed4 <_httpHeader>;
ffa03fba:	01 e8 00 00 	UNLINK;
ffa03fbe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03fc0:	20 05       	(R7:4) = [SP++];
ffa03fc2:	10 00       	RTS;
ffa03fc4:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa03fc8:	06 30       	R0 = R6;
ffa03fca:	01 e1 68 0a 	R1.L = 0xa68;		/* (2664)	R1=0xff900a68(-7337368) */
ffa03fce:	ff e3 29 eb 	CALL 0xffa01620 <_strcmp>;
ffa03fd2:	00 0c       	CC = R0 == 0x0;
ffa03fd4:	d8 1f       	IF CC JUMP 0xffa03f84 <_httpResp+0x10> (BP);
ffa03fd6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03fda:	00 e1 04 0a 	R0.L = 0xa04;		/* (2564)	R0=0xff900a04(-7337468) */
ffa03fde:	0e 30       	R1 = R6;
ffa03fe0:	17 30       	R2 = R7;
ffa03fe2:	ff e3 4d eb 	CALL 0xffa0167c <_substr>;
ffa03fe6:	00 0c       	CC = R0 == 0x0;
ffa03fe8:	db 1f       	IF CC JUMP 0xffa03f9e <_httpResp+0x2a> (BP);
ffa03fea:	ff e3 0f fe 	CALL 0xffa03c08 <_htmlDefault>;
ffa03fee:	df 2f       	JUMP.S 0xffa03fac <_httpResp+0x38>;
ffa03ff0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a04(-7337468) */
ffa03ff4:	00 e1 74 0a 	R0.L = 0xa74;		/* (2676)	R0=0xff900a74(-7337356) */
ffa03ff8:	0e 30       	R1 = R6;
ffa03ffa:	17 30       	R2 = R7;
ffa03ffc:	ff e3 40 eb 	CALL 0xffa0167c <_substr>;
ffa04000:	00 0c       	CC = R0 == 0x0;
ffa04002:	3c 1c       	IF CC JUMP 0xffa0407a <_httpResp+0x106> (BP);
ffa04004:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a74(-7337356) */
ffa04008:	00 e1 80 0a 	R0.L = 0xa80;		/* (2688)	R0=0xff900a80(-7337344) */
ffa0400c:	0e 30       	R1 = R6;
ffa0400e:	17 30       	R2 = R7;
ffa04010:	ff e3 36 eb 	CALL 0xffa0167c <_substr>;
ffa04014:	00 0c       	CC = R0 == 0x0;
ffa04016:	c4 1f       	IF CC JUMP 0xffa03f9e <_httpResp+0x2a> (BP);
ffa04018:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0401a:	06 50       	R0 = R6 + R0;
ffa0401c:	ff e3 50 ec 	CALL 0xffa018bc <_atoi>;
ffa04020:	08 30       	R1 = R0;
ffa04022:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa04026:	00 67       	R0 += -0x20;		/* (-32) */
ffa04028:	10 0a       	CC = R0 <= R2 (IU);
ffa0402a:	24 11       	IF !CC JUMP 0xffa04272 <_httpResp+0x2fe>;
ffa0402c:	82 c6 19 84 	R2 = R1 << 0x3;
ffa04030:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800f78 */
ffa04034:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa04038:	02 0d       	CC = R2 <= 0x0;
ffa0403a:	13 91       	R3 = [P2];
ffa0403c:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa04040:	14 18       	IF CC JUMP 0xffa04068 <_httpResp+0xf4>;
ffa04042:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa04046:	28 4f       	R0 <<= 0x5;
ffa04048:	03 54       	R0 = R3 & R0;
ffa0404a:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa0404c:	38 52       	R0 = R0 - R7;
ffa0404e:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa04052:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa04054:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa04058:	18 54       	R0 = R0 & R3;
ffa0405a:	10 32       	P2 = R0;
ffa0405c:	09 64       	R1 += 0x1;		/* (  1) */
ffa0405e:	0a 08       	CC = R2 == R1;
ffa04060:	10 90       	R0 = [P2++];
ffa04062:	08 92       	[P1++] = R0;
ffa04064:	42 30       	R0 = P2;
ffa04066:	f9 17       	IF !CC JUMP 0xffa04058 <_httpResp+0xe4> (BP);
ffa04068:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900804 */
ffa0406c:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa04070:	17 93       	[P2] = R7;
ffa04072:	ff e3 31 ff 	CALL 0xffa03ed4 <_httpHeader>;
ffa04076:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04078:	94 2f       	JUMP.S 0xffa03fa0 <_httpResp+0x2c>;
ffa0407a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0407e:	00 e1 b4 0a 	R0.L = 0xab4;		/* (2740)	R0=0xff900ab4(-7337292) */
ffa04082:	0e 30       	R1 = R6;
ffa04084:	17 30       	R2 = R7;
ffa04086:	ff e3 fb ea 	CALL 0xffa0167c <_substr>;
ffa0408a:	00 0c       	CC = R0 == 0x0;
ffa0408c:	7f 1f       	IF CC JUMP 0xffa03f8a <_httpResp+0x16> (BP);
ffa0408e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ab4(-7337292) */
ffa04092:	0e 30       	R1 = R6;
ffa04094:	17 30       	R2 = R7;
ffa04096:	00 e1 b4 0a 	R0.L = 0xab4;		/* (2740)	R0=0xff900ab4(-7337292) */
ffa0409a:	ff e3 f1 ea 	CALL 0xffa0167c <_substr>;
ffa0409e:	86 51       	R6 = R6 + R0;
ffa040a0:	47 53       	R5 = R7 - R0;
ffa040a2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ab4(-7337292) */
ffa040a6:	00 e1 bc 0a 	R0.L = 0xabc;		/* (2748)	R0=0xff900abc(-7337284) */
ffa040aa:	0e 30       	R1 = R6;
ffa040ac:	15 30       	R2 = R5;
ffa040ae:	ff e3 e7 ea 	CALL 0xffa0167c <_substr>;
ffa040b2:	00 0c       	CC = R0 == 0x0;
ffa040b4:	10 11       	IF !CC JUMP 0xffa042d4 <_httpResp+0x360>;
ffa040b6:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa040b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900abc(-7337284) */
ffa040bc:	00 e1 e0 0a 	R0.L = 0xae0;		/* (2784)	R0=0xff900ae0(-7337248) */
ffa040c0:	0e 30       	R1 = R6;
ffa040c2:	15 30       	R2 = R5;
ffa040c4:	ff e3 dc ea 	CALL 0xffa0167c <_substr>;
ffa040c8:	00 0c       	CC = R0 == 0x0;
ffa040ca:	e2 10       	IF !CC JUMP 0xffa0428e <_httpResp+0x31a>;
ffa040cc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ae0(-7337248) */
ffa040d0:	0e 30       	R1 = R6;
ffa040d2:	00 e1 ec 0a 	R0.L = 0xaec;		/* (2796)	R0=0xff900aec(-7337236) */
ffa040d6:	15 30       	R2 = R5;
ffa040d8:	ff e3 d2 ea 	CALL 0xffa0167c <_substr>;
ffa040dc:	00 0c       	CC = R0 == 0x0;
ffa040de:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900aec(-7337236) */
ffa040e2:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa040e4:	0e 30       	R1 = R6;
ffa040e6:	15 30       	R2 = R5;
ffa040e8:	00 e1 f8 0a 	R0.L = 0xaf8;		/* (2808)	R0=0xff900af8(-7337224) */
ffa040ec:	27 06       	IF !CC R4 = R7;
ffa040ee:	ff e3 c7 ea 	CALL 0xffa0167c <_substr>;
ffa040f2:	00 0c       	CC = R0 == 0x0;
ffa040f4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900af8(-7337224) */
ffa040f8:	0e 30       	R1 = R6;
ffa040fa:	15 30       	R2 = R5;
ffa040fc:	00 e1 04 0b 	R0.L = 0xb04;		/* (2820)	R0=0xff900b04(-7337212) */
ffa04100:	27 06       	IF !CC R4 = R7;
ffa04102:	ff e3 bd ea 	CALL 0xffa0167c <_substr>;
ffa04106:	00 0c       	CC = R0 == 0x0;
ffa04108:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b04(-7337212) */
ffa0410c:	0e 30       	R1 = R6;
ffa0410e:	15 30       	R2 = R5;
ffa04110:	00 e1 10 0b 	R0.L = 0xb10;		/* (2832)	R0=0xff900b10(-7337200) */
ffa04114:	27 06       	IF !CC R4 = R7;
ffa04116:	ff e3 b3 ea 	CALL 0xffa0167c <_substr>;
ffa0411a:	00 0c       	CC = R0 == 0x0;
ffa0411c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b10(-7337200) */
ffa04120:	00 e1 1c 0b 	R0.L = 0xb1c;		/* (2844)	R0=0xff900b1c(-7337188) */
ffa04124:	0e 30       	R1 = R6;
ffa04126:	15 30       	R2 = R5;
ffa04128:	27 06       	IF !CC R4 = R7;
ffa0412a:	ff e3 a9 ea 	CALL 0xffa0167c <_substr>;
ffa0412e:	00 0c       	CC = R0 == 0x0;
ffa04130:	15 11       	IF !CC JUMP 0xffa0435a <_httpResp+0x3e6>;
ffa04132:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b1c(-7337188) */
ffa04136:	00 e1 24 0b 	R0.L = 0xb24;		/* (2852)	R0=0xff900b24(-7337180) */
ffa0413a:	0e 30       	R1 = R6;
ffa0413c:	15 30       	R2 = R5;
ffa0413e:	ff e3 9f ea 	CALL 0xffa0167c <_substr>;
ffa04142:	00 0c       	CC = R0 == 0x0;
ffa04144:	f6 10       	IF !CC JUMP 0xffa04330 <_httpResp+0x3bc>;
ffa04146:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b24(-7337180) */
ffa0414a:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa0414e:	0e 30       	R1 = R6;
ffa04150:	15 30       	R2 = R5;
ffa04152:	ff e3 95 ea 	CALL 0xffa0167c <_substr>;
ffa04156:	00 0c       	CC = R0 == 0x0;
ffa04158:	13 11       	IF !CC JUMP 0xffa0437e <_httpResp+0x40a>;
ffa0415a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b2c(-7337172) */
ffa0415e:	00 e1 34 0b 	R0.L = 0xb34;		/* (2868)	R0=0xff900b34(-7337164) */
ffa04162:	0e 30       	R1 = R6;
ffa04164:	15 30       	R2 = R5;
ffa04166:	ff e3 8b ea 	CALL 0xffa0167c <_substr>;
ffa0416a:	00 0c       	CC = R0 == 0x0;
ffa0416c:	d1 10       	IF !CC JUMP 0xffa0430e <_httpResp+0x39a>;
ffa0416e:	20 43       	R0 = R4.B (X);
ffa04170:	00 0c       	CC = R0 == 0x0;
ffa04172:	3c 17       	IF !CC JUMP 0xffa03fea <_httpResp+0x76> (BP);
ffa04174:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b34(-7337164) */
ffa04178:	00 e1 3c 0b 	R0.L = 0xb3c;		/* (2876)	R0=0xff900b3c(-7337156) */
ffa0417c:	0e 30       	R1 = R6;
ffa0417e:	15 30       	R2 = R5;
ffa04180:	ff e3 7e ea 	CALL 0xffa0167c <_substr>;
ffa04184:	00 0c       	CC = R0 == 0x0;
ffa04186:	0c 1b       	IF CC JUMP 0xffa03f9e <_httpResp+0x2a>;
ffa04188:	7f 30       	R7 = FP;
ffa0418a:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa0418e:	57 5a       	P1 = FP + P2;
ffa04190:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa04192:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04194:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa04196:	b2 e0 02 20 	LSETUP(0xffa0419a <_httpResp+0x226>, 0xffa0419a <_httpResp+0x226>) LC1 = P2;
ffa0419a:	08 92       	[P1++] = R0;
ffa0419c:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa041a0:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa041a4:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa041a8:	29 4f       	R1 <<= 0x5;
ffa041aa:	10 91       	R0 = [P2];
ffa041ac:	08 54       	R0 = R0 & R1;
ffa041ae:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa041b0:	81 4f       	R1 <<= 0x10;
ffa041b2:	08 50       	R0 = R0 + R1;
ffa041b4:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa041b6:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa041ba:	88 54       	R2 = R0 & R1;
ffa041bc:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa041c0:	b2 e0 12 10 	LSETUP(0xffa041c4 <_httpResp+0x250>, 0xffa041e4 <_httpResp+0x270>) LC1 = P1;
ffa041c4:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa041c8:	97 5a       	P2 = FP + P2;
ffa041ca:	02 32       	P0 = R2;
ffa041cc:	11 91       	R1 = [P2];
ffa041ce:	12 64       	R2 += 0x2;		/* (  2) */
ffa041d0:	00 94       	R0 = W[P0++] (Z);
ffa041d2:	41 50       	R1 = R1 + R0;
ffa041d4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa041d6:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa041da:	11 92       	[P2++] = R1;
ffa041dc:	82 54       	R2 = R2 & R0;
ffa041de:	42 30       	R0 = P2;
ffa041e0:	38 08       	CC = R0 == R7;
ffa041e2:	f4 17       	IF !CC JUMP 0xffa041ca <_httpResp+0x256> (BP);
ffa041e4:	00 00       	NOP;
ffa041e6:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa041ea:	97 5a       	P2 = FP + P2;
ffa041ec:	00 00       	NOP;
ffa041ee:	10 91       	R0 = [P2];
ffa041f0:	58 4d       	R0 >>>= 0xb;
ffa041f2:	10 92       	[P2++] = R0;
ffa041f4:	4a 30       	R1 = P2;
ffa041f6:	39 08       	CC = R1 == R7;
ffa041f8:	fa 17       	IF !CC JUMP 0xffa041ec <_httpResp+0x278> (BP);
ffa041fa:	ff e3 07 fd 	CALL 0xffa03c08 <_htmlDefault>;
ffa041fe:	68 67       	R0 += -0x13;		/* (-19) */
ffa04200:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa04204:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80 <_g_enableUDP>(-7336064) */
ffa04208:	f0 bb       	[FP -0x4] = R0;
ffa0420a:	02 e1 4c 0b 	R2.L = 0xb4c;		/* (2892)	R2=0xff900b4c(-7337140) */
ffa0420e:	08 50       	R0 = R0 + R1;
ffa04210:	0f 30       	R1 = R7;
ffa04212:	ff e3 c7 e9 	CALL 0xffa015a0 <_strcpy_>;
ffa04216:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa0421a:	f5 b8 00 00 
ffa0421e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b4c(-7337140) */
ffa04222:	0f 30       	R1 = R7;
ffa04224:	02 e1 58 0b 	R2.L = 0xb58;		/* (2904)	R2=0xff900b58(-7337128) */
ffa04228:	ff e3 bc e9 	CALL 0xffa015a0 <_strcpy_>;
ffa0422c:	16 30       	R2 = R6;
ffa0422e:	0f 30       	R1 = R7;
ffa04230:	ff e3 1e eb 	CALL 0xffa0186c <_strprintf_int>;
ffa04234:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b58(-7337128) */
ffa04238:	0f 30       	R1 = R7;
ffa0423a:	02 e1 6c 0b 	R2.L = 0xb6c;		/* (2924)	R2=0xff900b6c(-7337108) */
ffa0423e:	ff e3 b1 e9 	CALL 0xffa015a0 <_strcpy_>;
ffa04242:	0f 30       	R1 = R7;
ffa04244:	15 30       	R2 = R5;
ffa04246:	ff e3 13 eb 	CALL 0xffa0186c <_strprintf_int>;
ffa0424a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b6c(-7337108) */
ffa0424e:	02 e1 7c 0b 	R2.L = 0xb7c;		/* (2940)	R2=0xff900b7c(-7337092) */
ffa04252:	0f 30       	R1 = R7;
ffa04254:	ff e3 a6 e9 	CALL 0xffa015a0 <_strcpy_>;
ffa04258:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0425a:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa0425c:	16 08       	CC = R6 == R2;
ffa0425e:	e0 17       	IF !CC JUMP 0xffa0421e <_httpResp+0x2aa> (BP);
ffa04260:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa04264:	0f 30       	R1 = R7;
ffa04266:	02 e1 88 0b 	R2.L = 0xb88;		/* (2952)	R2=0xff900b88(-7337080) */
ffa0426a:	ff e3 9b e9 	CALL 0xffa015a0 <_strcpy_>;
ffa0426e:	f0 b9       	R0 = [FP -0x4];
ffa04270:	9e 2e       	JUMP.S 0xffa03fac <_httpResp+0x38>;
ffa04272:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04274:	4f 30       	R1 = FP;
ffa04276:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b88(-7337080) */
ffa0427a:	f0 bb       	[FP -0x4] = R0;
ffa0427c:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa0427e:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa04282:	02 e1 88 0a 	R2.L = 0xa88;		/* (2696)	R2=0xff900a88(-7337336) */
ffa04286:	ff e3 8d e9 	CALL 0xffa015a0 <_strcpy_>;
ffa0428a:	f0 b9       	R0 = [FP -0x4];
ffa0428c:	90 2e       	JUMP.S 0xffa03fac <_httpResp+0x38>;
ffa0428e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa04292:	00 e1 cc 0a 	R0.L = 0xacc;		/* (2764)	R0=0xff900acc(-7337268) */
ffa04296:	0e 30       	R1 = R6;
ffa04298:	15 30       	R2 = R5;
ffa0429a:	ff e3 f1 e9 	CALL 0xffa0167c <_substr>;
ffa0429e:	00 0c       	CC = R0 == 0x0;
ffa042a0:	08 1c       	IF CC JUMP 0xffa042b0 <_httpResp+0x33c> (BP);
ffa042a2:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa042a6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa042a8:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa042ac:	10 9b       	B[P2] = R0;
ffa042ae:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa042b0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa042b4:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa042b8:	0e 30       	R1 = R6;
ffa042ba:	15 30       	R2 = R5;
ffa042bc:	ff e3 e0 e9 	CALL 0xffa0167c <_substr>;
ffa042c0:	00 0c       	CC = R0 == 0x0;
ffa042c2:	05 1f       	IF CC JUMP 0xffa040cc <_httpResp+0x158> (BP);
ffa042c4:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa042c8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa042ca:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa042ce:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa042d0:	10 9b       	B[P2] = R0;
ffa042d2:	fd 2e       	JUMP.S 0xffa040cc <_httpResp+0x158>;
ffa042d4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa042d8:	00 e1 cc 0a 	R0.L = 0xacc;		/* (2764)	R0=0xff900acc(-7337268) */
ffa042dc:	0e 30       	R1 = R6;
ffa042de:	15 30       	R2 = R5;
ffa042e0:	ff e3 ce e9 	CALL 0xffa0167c <_substr>;
ffa042e4:	00 0c       	CC = R0 == 0x0;
ffa042e6:	61 14       	IF !CC JUMP 0xffa043a8 <_httpResp+0x434> (BP);
ffa042e8:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa042ea:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900acc(-7337268) */
ffa042ee:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa042f2:	0e 30       	R1 = R6;
ffa042f4:	15 30       	R2 = R5;
ffa042f6:	ff e3 c3 e9 	CALL 0xffa0167c <_substr>;
ffa042fa:	00 0c       	CC = R0 == 0x0;
ffa042fc:	de 1e       	IF CC JUMP 0xffa040b8 <_httpResp+0x144> (BP);
ffa042fe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa04302:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04304:	0a e1 d4 0b 	P2.L = 0xbd4;		/* (3028)	P2=0xff900bd4 <_g_streamEnabled> */
ffa04308:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0430a:	10 9b       	B[P2] = R0;
ffa0430c:	d6 2e       	JUMP.S 0xffa040b8 <_httpResp+0x144>;
ffa0430e:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04310:	06 50       	R0 = R6 + R0;
ffa04312:	ff e3 d5 ea 	CALL 0xffa018bc <_atoi>;
ffa04316:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bd4 <_g_streamEnabled> */
ffa0431a:	0a e1 84 0e 	P2.L = 0xe84;		/* (3716)	P2=0xff900e84 <_NetDataDestIP> */
ffa0431e:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04320:	11 91       	R1 = [P2];
ffa04322:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa04326:	51 54       	R1 = R1 & R2;
ffa04328:	c0 4f       	R0 <<= 0x18;
ffa0432a:	41 50       	R1 = R1 + R0;
ffa0432c:	11 93       	[P2] = R1;
ffa0432e:	5e 2e       	JUMP.S 0xffa03fea <_httpResp+0x76>;
ffa04330:	86 51       	R6 = R6 + R0;
ffa04332:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04334:	45 53       	R5 = R5 - R0;
ffa04336:	06 30       	R0 = R6;
ffa04338:	ff e3 c2 ea 	CALL 0xffa018bc <_atoi>;
ffa0433c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e84 <_NetDataDestIP> */
ffa04340:	0a e1 84 0e 	P2.L = 0xe84;		/* (3716)	P2=0xff900e84 <_NetDataDestIP> */
ffa04344:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04346:	11 91       	R1 = [P2];
ffa04348:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa0434c:	40 43       	R0 = R0.B (Z);
ffa0434e:	51 54       	R1 = R1 & R2;
ffa04350:	40 4f       	R0 <<= 0x8;
ffa04352:	41 50       	R1 = R1 + R0;
ffa04354:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04356:	11 93       	[P2] = R1;
ffa04358:	f7 2e       	JUMP.S 0xffa04146 <_httpResp+0x1d2>;
ffa0435a:	86 51       	R6 = R6 + R0;
ffa0435c:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0435e:	45 53       	R5 = R5 - R0;
ffa04360:	06 30       	R0 = R6;
ffa04362:	ff e3 ad ea 	CALL 0xffa018bc <_atoi>;
ffa04366:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e84 <_NetDataDestIP> */
ffa0436a:	0a e1 84 0e 	P2.L = 0xe84;		/* (3716)	P2=0xff900e84 <_NetDataDestIP> */
ffa0436e:	11 91       	R1 = [P2];
ffa04370:	41 4d       	R1 >>>= 0x8;
ffa04372:	41 4f       	R1 <<= 0x8;
ffa04374:	40 43       	R0 = R0.B (Z);
ffa04376:	08 50       	R0 = R0 + R1;
ffa04378:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0437a:	10 93       	[P2] = R0;
ffa0437c:	db 2e       	JUMP.S 0xffa04132 <_httpResp+0x1be>;
ffa0437e:	86 51       	R6 = R6 + R0;
ffa04380:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04382:	45 53       	R5 = R5 - R0;
ffa04384:	06 30       	R0 = R6;
ffa04386:	ff e3 9b ea 	CALL 0xffa018bc <_atoi>;
ffa0438a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e84 <_NetDataDestIP> */
ffa0438e:	0a e1 84 0e 	P2.L = 0xe84;		/* (3716)	P2=0xff900e84 <_NetDataDestIP> */
ffa04392:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04394:	11 91       	R1 = [P2];
ffa04396:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa0439a:	40 43       	R0 = R0.B (Z);
ffa0439c:	51 54       	R1 = R1 & R2;
ffa0439e:	80 4f       	R0 <<= 0x10;
ffa043a0:	41 50       	R1 = R1 + R0;
ffa043a2:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa043a4:	11 93       	[P2] = R1;
ffa043a6:	da 2e       	JUMP.S 0xffa0415a <_httpResp+0x1e6>;
ffa043a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e84 <_NetDataDestIP> */
ffa043ac:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa043ae:	0a e1 d4 0b 	P2.L = 0xbd4;		/* (3028)	P2=0xff900bd4 <_g_streamEnabled> */
ffa043b2:	10 9b       	B[P2] = R0;
ffa043b4:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bd4 */
ffa043b8:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa043bc:	10 91       	R0 = [P2];
ffa043be:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa043c0:	22 6c       	P2 += 0x4;		/* (  4) */
ffa043c2:	10 93       	[P2] = R0;
ffa043c4:	93 2f       	JUMP.S 0xffa042ea <_httpResp+0x376>;
	...

ffa043c8 <_httpCollate>:
ffa043c8:	fd 05       	[--SP] = (R7:7, P5:5);
ffa043ca:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e84 <_NetDataDestIP> */
ffa043ce:	0d e1 7c 0f 	P5.L = 0xf7c;		/* (3964)	P5=0xff900f7c <_g_httpRxed> */
ffa043d2:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa043d4:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R1 = [P5] || NOP;
ffa043d8:	29 91 00 00 
ffa043dc:	82 4f       	R2 <<= 0x10;
ffa043de:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa043e2:	51 50       	R1 = R1 + R2;
ffa043e4:	17 30       	R2 = R7;
ffa043e6:	ff e3 ad e8 	CALL 0xffa01540 <_memcpy_>;
ffa043ea:	28 91       	R0 = [P5];
ffa043ec:	38 50       	R0 = R0 + R7;
ffa043ee:	01 e8 00 00 	UNLINK;
ffa043f2:	28 93       	[P5] = R0;
ffa043f4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa043f6:	bd 05       	(R7:7, P5:5) = [SP++];
ffa043f8:	10 00       	RTS;
	...

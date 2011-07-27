
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
ffa003f6:	00 e3 bd 07 	CALL 0xffa01370 <_printf_int>;
ffa003fa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa003fe:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa00402:	00 e3 9b 06 	CALL 0xffa01138 <_uart_str>;
ffa00406:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900508(-7338744) */
ffa0040a:	0d 30       	R1 = R5;
ffa0040c:	00 e1 14 00 	R0.L = 0x14;		/* ( 20)	R0=0xff900014(-7340012) */
ffa00410:	00 e3 fe 06 	CALL 0xffa0120c <_printf_hex_byte>;
ffa00414:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900014(-7340012) */
ffa00418:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa0041c:	00 e3 8e 06 	CALL 0xffa01138 <_uart_str>;
ffa00420:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900508(-7338744) */
ffa00424:	00 e1 20 00 	R0.L = 0x20;		/* ( 32)	R0=0xff900020(-7340000) */
ffa00428:	0f 30       	R1 = R7;
ffa0042a:	00 e3 f1 06 	CALL 0xffa0120c <_printf_hex_byte>;
ffa0042e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa00432:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00436:	2f 30       	R5 = R7;
ffa00438:	00 e3 80 06 	CALL 0xffa01138 <_uart_str>;
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
ffa004b8:	00 e3 5c 07 	CALL 0xffa01370 <_printf_int>;
ffa004bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002c(-7339988) */
ffa004c0:	ff 42       	R7 = R7.L (Z);
ffa004c2:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa004c6:	00 e3 39 06 	CALL 0xffa01138 <_uart_str>;
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
ffa00976:	00 e3 4b 04 	CALL 0xffa0120c <_printf_hex_byte>;
ffa0097a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900044(-7339964) */
ffa0097e:	21 99       	R1 = B[P4] (Z);
ffa00980:	00 e1 54 00 	R0.L = 0x54;		/* ( 84)	R0=0xff900054(-7339948) */
ffa00984:	00 e3 44 04 	CALL 0xffa0120c <_printf_hex_byte>;
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
ffa009a4:	00 e2 24 04 	JUMP.L 0xffa011ec <_printf_str>;
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
ffa009c2:	00 e3 ab 11 	CALL 0xffa02d18 <_bfin_EMAC_recv>;
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
ffa009e0:	00 e3 66 08 	CALL 0xffa01aac <_htons>;
ffa009e4:	c0 42       	R0 = R0.L (Z);
ffa009e6:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa009ea:	08 08       	CC = R0 == R1;
ffa009ec:	e6 17       	IF !CC JUMP 0xffa009b8 <_eth_listen+0x8> (BP);
ffa009ee:	f0 b9       	R0 = [FP -0x4];
ffa009f0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa009f4:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa009f6:	01 e1 dc 0b 	R1.L = 0xbdc;		/* (3036)	R1=0xff900bdc <_g_outpkt>(-7336996) */
ffa009fa:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa009fc:	00 e3 a0 05 	CALL 0xffa0153c <_memcpy_>;
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
ffa00baa:	00 e3 dd 0c 	CALL 0xffa02564 <_udp_packet_setup>;
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
ffa00c02:	00 e3 ff 08 	CALL 0xffa01e00 <_bfin_EMAC_send_nocopy>;
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
ffa00da8:	00 e3 e4 02 	CALL 0xffa01370 <_printf_int>;
ffa00dac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa00db0:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00db4:	00 e3 1c 02 	CALL 0xffa011ec <_printf_str>;
ffa00db8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa00dbc:	00 e1 8c 00 	R0.L = 0x8c;		/* (140)	R0=0xff90008c(-7339892) */
ffa00dc0:	00 e3 16 02 	CALL 0xffa011ec <_printf_str>;
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
ffa00e08:	00 e3 58 02 	CALL 0xffa012b8 <_printf_hex>;
ffa00e0c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e10:	00 e1 ac 00 	R0.L = 0xac;		/* (172)	R0=0xff9000ac(-7339860) */
ffa00e14:	0f 30       	R1 = R7;
ffa00e16:	00 e3 51 02 	CALL 0xffa012b8 <_printf_hex>;
ffa00e1a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000ac(-7339860) */
ffa00e1e:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00e22:	00 e3 e5 01 	CALL 0xffa011ec <_printf_str>;
ffa00e26:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa00e28:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa00e2c:	08 08       	CC = R0 == R1;
ffa00e2e:	08 18       	IF CC JUMP 0xffa00e3e <_main+0x142>;
ffa00e30:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa00e34:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e38:	0e 30       	R1 = R6;
ffa00e3a:	00 e3 3f 02 	CALL 0xffa012b8 <_printf_hex>;
ffa00e3e:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa00e40:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa00e44:	08 08       	CC = R0 == R1;
ffa00e46:	08 18       	IF CC JUMP 0xffa00e56 <_main+0x15a>;
ffa00e48:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e4c:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e50:	0e 30       	R1 = R6;
ffa00e52:	00 e3 33 02 	CALL 0xffa012b8 <_printf_hex>;
ffa00e56:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa00e58:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa00e5c:	08 08       	CC = R0 == R1;
ffa00e5e:	08 18       	IF CC JUMP 0xffa00e6e <_main+0x172>;
ffa00e60:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e64:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e68:	0e 30       	R1 = R6;
ffa00e6a:	00 e3 27 02 	CALL 0xffa012b8 <_printf_hex>;
ffa00e6e:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa00e72:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa00e76:	55 08       	CC = P5 == P2;
ffa00e78:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00e7a:	bc 17       	IF !CC JUMP 0xffa00df2 <_main+0xf6> (BP);
ffa00e7c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e80:	00 e1 b4 00 	R0.L = 0xb4;		/* (180)	R0=0xff9000b4(-7339852) */
ffa00e84:	00 e3 b4 01 	CALL 0xffa011ec <_printf_str>;
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
ffa00eb0:	20 e1 53 07 	R0 = 0x753 (X);		/*		R0=0x753(1875) */
ffa00eb4:	38 4f       	R0 <<= 0x7;
ffa00eb6:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00eb8:	10 93       	[P2] = R0;
ffa00eba:	20 e1 53 07 	R0 = 0x753 (X);		/*		R0=0x753(1875) */
ffa00ebe:	30 4f       	R0 <<= 0x6;
ffa00ec0:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00ec2:	10 93       	[P2] = R0;
ffa00ec4:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00ec6:	50 95       	R0 = W[P2] (X);
ffa00ec8:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa00eca:	10 97       	W[P2] = R0;
ffa00ecc:	00 e3 f4 0c 	CALL 0xffa028b4 <_bfin_EMAC_init>;
ffa00ed0:	00 0c       	CC = R0 == 0x0;
ffa00ed2:	20 30       	R4 = R0;
ffa00ed4:	2f 19       	IF CC JUMP 0xffa01132 <_main+0x436>;
ffa00ed6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00650(-4192688) */
ffa00eda:	20 e1 83 38 	R0 = 0x3883 (X);		/*		R0=0x3883(14467) */
ffa00ede:	0a e1 00 32 	P2.L = 0x3200;		/* (12800)	P2=0xffc03200(-4181504) */
ffa00ee2:	10 97       	W[P2] = R0;
ffa00ee4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03200(-4181504) */
ffa00ee8:	20 e1 56 fe 	R0 = -0x1aa (X);		/*		R0=0xfffffe56(-426) */
ffa00eec:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa00ef0:	10 97       	W[P2] = R0;
ffa00ef2:	20 e1 ab 01 	R0 = 0x1ab (X);		/*		R0=0x1ab(427) */
ffa00ef6:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa00ef8:	10 97       	W[P2] = R0;
ffa00efa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa00efe:	20 e1 40 01 	R0 = 0x140 (X);		/*		R0=0x140(320) */
ffa00f02:	0a e1 10 32 	P2.L = 0x3210;		/* (12816)	P2=0xffc03210(-4181488) */
ffa00f06:	10 97       	W[P2] = R0;
ffa00f08:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03210(-4181488) */
ffa00f0c:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa00f10:	50 95       	R0 = W[P2] (X);
ffa00f12:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00f14:	10 97       	W[P2] = R0;
ffa00f16:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00f18:	50 95       	R0 = W[P2] (X);
ffa00f1a:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa00f1c:	10 97       	W[P2] = R0;
ffa00f1e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa00f22:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00f26:	50 95       	R0 = W[P2] (X);
ffa00f28:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00f2a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00000(-4194304) */
ffa00f2e:	10 97       	W[P2] = R0;
ffa00f30:	09 e1 00 09 	P1.L = 0x900;		/* (2304)	P1=0xffc00900(-4192000) */
ffa00f34:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f36:	08 97       	W[P1] = R0;
ffa00f38:	24 00       	SSYNC;
ffa00f3a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903204 */
ffa00f3e:	0a e1 d0 0b 	P2.L = 0xbd0;		/* (3024)	P2=0xff900bd0 <_g_sampR> */
ffa00f42:	16 93       	[P2] = R6;
ffa00f44:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bd0 <_g_sampR> */
ffa00f48:	0a e1 b4 0b 	P2.L = 0xbb4;		/* (2996)	P2=0xff900bb4 <_g_sampW> */
ffa00f4c:	16 93       	[P2] = R6;
ffa00f4e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb4 <_g_sampW> */
ffa00f52:	0a e1 d8 0b 	P2.L = 0xbd8;		/* (3032)	P2=0xff900bd8 <_g_sampOff> */
ffa00f56:	16 93       	[P2] = R6;
ffa00f58:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bd8 <_g_sampOff> */
ffa00f5c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00f5e:	0a e1 a8 0b 	P2.L = 0xba8;		/* (2984)	P2=0xff900ba8 <_g_sampMode> */
ffa00f62:	10 9b       	B[P2] = R0;
ffa00f64:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00f66:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba8 <_g_sampMode> */
ffa00f6a:	d8 4f       	R0 <<= 0x1b;
ffa00f6c:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_sampInc> */
ffa00f70:	10 93       	[P2] = R0;
ffa00f72:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb8 <_g_sampInc> */
ffa00f76:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f78:	0a e1 c8 0b 	P2.L = 0xbc8;		/* (3016)	P2=0xff900bc8 <_g_sampCh> */
ffa00f7c:	10 9b       	B[P2] = R0;
ffa00f7e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bc8(-4191288) */
ffa00f82:	e8 60       	R0 = 0x1d (X);		/*		R0=0x1d( 29) */
ffa00f84:	0a e1 08 09 	P2.L = 0x908;		/* (2312)	P2=0xffc00908(-4191992) */
ffa00f88:	10 97       	W[P2] = R0;
ffa00f8a:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa00f8c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00f8e:	10 97       	W[P2] = R0;
ffa00f90:	b8 60       	R0 = 0x17 (X);		/*		R0=0x17( 23) */
ffa00f92:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00f94:	10 97       	W[P2] = R0;
ffa00f96:	20 e1 03 4e 	R0 = 0x4e03 (X);		/*		R0=0x4e03(19971) */
ffa00f9a:	08 97       	W[P1] = R0;
ffa00f9c:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe00908(-2094840) */
ffa00fa0:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa04e03(-6271485) */
ffa00fa4:	00 e1 44 05 	R0.L = 0x544;		/* (1348)	R0=0xffa00544 <_audio_out>(-6290108) */
ffa00fa8:	0a e1 1c 20 	P2.L = 0x201c;		/* (8220)	P2=0xffe0201c(-2088932) */
ffa00fac:	10 93       	[P2] = R0;
ffa00fae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0201c(-4186084) */
ffa00fb2:	27 e1 00 02 	R7 = 0x200 (X);		/*		R7=0x200(512) */
ffa00fb6:	0a e1 0c 01 	P2.L = 0x10c;		/* (268)	P2=0xffc0010c(-4194036) */
ffa00fba:	17 93       	[P2] = R7;
ffa00fbc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90010c */
ffa00fc0:	0a e1 b0 0b 	P2.L = 0xbb0;		/* (2992)	P2=0xff900bb0 <_wrptr> */
ffa00fc4:	16 93       	[P2] = R6;
ffa00fc6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb0 <_wrptr> */
ffa00fca:	0a e1 ac 0b 	P2.L = 0xbac;		/* (2988)	P2=0xff900bac <_trptr> */
ffa00fce:	16 93       	[P2] = R6;
ffa00fd0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bac <_trptr> */
ffa00fd4:	0a e1 cc 0b 	P2.L = 0xbcc;		/* (3020)	P2=0xff900bcc <_g_dropped> */
ffa00fd8:	16 93       	[P2] = R6;
ffa00fda:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bcc <_g_dropped> */
ffa00fde:	0a e1 a4 0b 	P2.L = 0xba4;		/* (2980)	P2=0xff900ba4 <_g_nextFlag> */
ffa00fe2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900544(-7338684) */
ffa00fe6:	16 93       	[P2] = R6;
ffa00fe8:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa00fec:	00 e3 00 01 	CALL 0xffa011ec <_printf_str>;
ffa00ff0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ba4(-4191324) */
ffa00ff4:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa00ff8:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00ffc:	10 97       	W[P2] = R0;
ffa00ffe:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa01002:	22 6c       	P2 += 0x4;		/* (  4) */
ffa01004:	10 97       	W[P2] = R0;
ffa01006:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa0100a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0100c:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01010:	10 97       	W[P2] = R0;
ffa01012:	24 00       	SSYNC;
ffa01014:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa01016:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa0101a:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0101c:	ff e3 16 fa 	CALL 0xffa00448 <_radio_init>;
ffa01020:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa01022:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa01026:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa0102a:	ff e3 0f fa 	CALL 0xffa00448 <_radio_init>;
ffa0102e:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa01032:	07 30       	R0 = R7;
ffa01034:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa01038:	ff e3 08 fa 	CALL 0xffa00448 <_radio_init>;
ffa0103c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0103e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01040:	ff e3 74 f9 	CALL 0xffa00328 <_radio_set_rx>;
ffa01044:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01048:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0104a:	ff e3 6f f9 	CALL 0xffa00328 <_radio_set_rx>;
ffa0104e:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa01052:	07 30       	R0 = R7;
ffa01054:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa01058:	46 e1 62 10 	R6.H = 0x1062;		/* (4194)	R6=0x10620000(274857984) */
ffa0105c:	ff e3 66 f9 	CALL 0xffa00328 <_radio_set_rx>;
ffa01060:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01062:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa01064:	0d e1 00 07 	P5.L = 0x700;		/* (1792)	P5=0xffc00700(-4192512) */
ffa01068:	06 e1 d3 4d 	R6.L = 0x4dd3;		/* (19923)	R6=0x10624dd3(274877907) */
ffa0106c:	04 30       	R0 = R4;
ffa0106e:	ff e3 a1 fc 	CALL 0xffa009b0 <_eth_listen>;
ffa01072:	68 95       	R0 = W[P5] (X);
ffa01074:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01076:	42 18       	IF CC JUMP 0xffa010fa <_main+0x3fe>;
ffa01078:	00 00       	NOP;
ffa0107a:	00 00       	NOP;
ffa0107c:	00 00       	NOP;
ffa0107e:	68 95       	R0 = W[P5] (X);
ffa01080:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01082:	45 18       	IF CC JUMP 0xffa0110c <_main+0x410>;
ffa01084:	00 00       	NOP;
ffa01086:	00 00       	NOP;
ffa01088:	00 00       	NOP;
ffa0108a:	68 95       	R0 = W[P5] (X);
ffa0108c:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa0108e:	49 18       	IF CC JUMP 0xffa01120 <_main+0x424>;
ffa01090:	20 e1 28 01 	R0 = 0x128 (X);		/*		R0=0x128(296) */
ffa01094:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01098:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0109c:	69 95       	R1 = W[P5] (X);
ffa0109e:	08 54       	R0 = R0 & R1;
ffa010a0:	21 e1 28 01 	R1 = 0x128 (X);		/*		R1=0x128(296) */
ffa010a4:	08 08       	CC = R0 == R1;
ffa010a6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa010a8:	38 07       	IF CC R7 = R0;
ffa010aa:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa010ae:	10 97       	W[P2] = R0;
ffa010b0:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800708 */
ffa010b4:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa010b8:	10 91       	R0 = [P2];
ffa010ba:	80 c0 06 18 	A1 = R0.L * R6.L (FU);
ffa010be:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa010c2:	81 c0 06 86 	A1 += R0.H * R6.L, A0 = R0.H * R6.H (FU);
ffa010c6:	81 c0 30 98 	A1 += R6.H * R0.L (FU);
ffa010ca:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa010ce:	0b c4 00 80 	A0 += A1;
ffa010d2:	8b c0 00 38 	R0 = A0 (FU);
ffa010d6:	82 c6 d8 83 	R1 = R0 >> 0x5;
ffa010da:	0d 08       	CC = R5 == R1;
ffa010dc:	c8 1b       	IF CC JUMP 0xffa0106c <_main+0x370>;
ffa010de:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa010e2:	20 e1 00 80 	R0 = -0x8000 (X);		/*		R0=0xffff8000(-32768) */
ffa010e6:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa010ea:	10 97       	W[P2] = R0;
ffa010ec:	04 30       	R0 = R4;
ffa010ee:	29 30       	R5 = R1;
ffa010f0:	ff e3 60 fc 	CALL 0xffa009b0 <_eth_listen>;
ffa010f4:	68 95       	R0 = W[P5] (X);
ffa010f6:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa010f8:	c2 17       	IF !CC JUMP 0xffa0107c <_main+0x380> (BP);
ffa010fa:	7a 43       	R2 = R7.B (Z);
ffa010fc:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa010fe:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa01100:	ff e3 82 fc 	CALL 0xffa00a04 <_getRadioPacket>;
ffa01104:	68 95       	R0 = W[P5] (X);
ffa01106:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01108:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0110a:	bf 17       	IF !CC JUMP 0xffa01088 <_main+0x38c> (BP);
ffa0110c:	7a 43       	R2 = R7.B (Z);
ffa0110e:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01112:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa01114:	ff e3 78 fc 	CALL 0xffa00a04 <_getRadioPacket>;
ffa01118:	68 95       	R0 = W[P5] (X);
ffa0111a:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa0111c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0111e:	b9 17       	IF !CC JUMP 0xffa01090 <_main+0x394> (BP);
ffa01120:	7a 43       	R2 = R7.B (Z);
ffa01122:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01126:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa0112a:	ff e3 6d fc 	CALL 0xffa00a04 <_getRadioPacket>;
ffa0112e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01130:	b0 2f       	JUMP.S 0xffa01090 <_main+0x394>;
ffa01132:	00 e3 9b 0d 	CALL 0xffa02c68 <_DHCP_req>;
ffa01136:	d0 2e       	JUMP.S 0xffa00ed6 <_main+0x1da>;

ffa01138 <_uart_str>:
ffa01138:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa0113c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01140:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa01144:	08 32       	P1 = R0;
ffa01146:	50 95       	R0 = W[P2] (X);
ffa01148:	c0 42       	R0 = R0.L (Z);
ffa0114a:	08 0c       	CC = R0 == 0x1;
ffa0114c:	06 18       	IF CC JUMP 0xffa01158 <_uart_str+0x20>;
ffa0114e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01150:	02 30       	R0 = R2;
ffa01152:	01 e8 00 00 	UNLINK;
ffa01156:	10 00       	RTS;
ffa01158:	48 99       	R0 = B[P1] (X);
ffa0115a:	01 43       	R1 = R0.B (X);
ffa0115c:	01 0c       	CC = R1 == 0x0;
ffa0115e:	f8 1b       	IF CC JUMP 0xffa0114e <_uart_str+0x16>;
ffa01160:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa01164:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01166:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01168:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa0116c:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa01170:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa01172:	b2 e0 1c 00 	LSETUP(0xffa01176 <_uart_str+0x3e>, 0xffa011aa <_uart_str+0x72>) LC1 = P0;
ffa01176:	19 08       	CC = R1 == R3;
ffa01178:	1b 18       	IF CC JUMP 0xffa011ae <_uart_str+0x76>;
ffa0117a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa0117e:	00 43       	R0 = R0.B (X);
ffa01180:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa01184:	10 97       	W[P2] = R0;
ffa01186:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa01188:	50 95       	R0 = W[P2] (X);
ffa0118a:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0118c:	0a 10       	IF !CC JUMP 0xffa011a0 <_uart_str+0x68>;
ffa0118e:	00 00       	NOP;
ffa01190:	00 00       	NOP;
ffa01192:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa01196:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa0119a:	50 95       	R0 = W[P2] (X);
ffa0119c:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0119e:	f9 1f       	IF CC JUMP 0xffa01190 <_uart_str+0x58> (BP);
ffa011a0:	48 99       	R0 = B[P1] (X);
ffa011a2:	01 43       	R1 = R0.B (X);
ffa011a4:	01 0c       	CC = R1 == 0x0;
ffa011a6:	0a 64       	R2 += 0x1;		/* (  1) */
ffa011a8:	d4 1b       	IF CC JUMP 0xffa01150 <_uart_str+0x18>;
ffa011aa:	09 6c       	P1 += 0x1;		/* (  1) */
ffa011ac:	d2 2f       	JUMP.S 0xffa01150 <_uart_str+0x18>;
ffa011ae:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa011b0:	20 9f       	W[I0] = R0.L;
ffa011b2:	02 20       	JUMP.S 0xffa011b6 <_uart_str+0x7e>;
ffa011b4:	00 00       	NOP;
ffa011b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa011ba:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa011be:	50 95       	R0 = W[P2] (X);
ffa011c0:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa011c2:	f9 1f       	IF CC JUMP 0xffa011b4 <_uart_str+0x7c> (BP);
ffa011c4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa011c8:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa011ca:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa011ce:	10 97       	W[P2] = R0;
ffa011d0:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa011d2:	50 95       	R0 = W[P2] (X);
ffa011d4:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa011d6:	e5 13       	IF !CC JUMP 0xffa011a0 <_uart_str+0x68>;
ffa011d8:	00 00       	NOP;
ffa011da:	00 00       	NOP;
ffa011dc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa011e0:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa011e4:	50 95       	R0 = W[P2] (X);
ffa011e6:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa011e8:	f9 1f       	IF CC JUMP 0xffa011da <_uart_str+0xa2> (BP);
ffa011ea:	db 2f       	JUMP.S 0xffa011a0 <_uart_str+0x68>;

ffa011ec <_printf_str>:
ffa011ec:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa011f0:	01 e8 00 00 	UNLINK;
ffa011f4:	ff e2 a2 ff 	JUMP.L 0xffa01138 <_uart_str>;

ffa011f8 <_printf_newline>:
ffa011f8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa011fc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa01200:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa01204:	01 e8 00 00 	UNLINK;
ffa01208:	ff e2 98 ff 	JUMP.L 0xffa01138 <_uart_str>;

ffa0120c <_printf_hex_byte>:
ffa0120c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0120e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01212:	28 32       	P5 = R0;
ffa01214:	39 30       	R7 = R1;
ffa01216:	00 e3 b1 01 	CALL 0xffa01578 <_strlen_>;
ffa0121a:	10 30       	R2 = R0;
ffa0121c:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa01220:	02 09       	CC = R2 <= R0;
ffa01222:	41 10       	IF !CC JUMP 0xffa012a4 <_printf_hex_byte+0x98>;
ffa01224:	02 0d       	CC = R2 <= 0x0;
ffa01226:	44 18       	IF CC JUMP 0xffa012ae <_printf_hex_byte+0xa2>;
ffa01228:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa0122c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0122e:	08 e1 00 0e 	P0.L = 0xe00;		/* (3584)	P0=0xff900e00 <_printf_out> */
ffa01232:	09 32       	P1 = R1;
ffa01234:	42 91       	P2 = [P0];
ffa01236:	09 64       	R1 += 0x1;		/* (  1) */
ffa01238:	68 98       	R0 = B[P5++] (X);
ffa0123a:	0a 08       	CC = R2 == R1;
ffa0123c:	8a 5a       	P2 = P2 + P1;
ffa0123e:	10 9b       	B[P2] = R0;
ffa01240:	f9 17       	IF !CC JUMP 0xffa01232 <_printf_hex_byte+0x26> (BP);
ffa01242:	0a 32       	P1 = R2;
ffa01244:	42 91       	P2 = [P0];
ffa01246:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01248:	22 32       	P4 = R2;
ffa0124a:	79 43       	R1 = R7.B (Z);
ffa0124c:	8a 5a       	P2 = P2 + P1;
ffa0124e:	10 9b       	B[P2] = R0;
ffa01250:	42 91       	P2 = [P0];
ffa01252:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa01254:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01258:	11 6c       	P1 += 0x2;		/* (  2) */
ffa0125a:	a2 5a       	P2 = P2 + P4;
ffa0125c:	10 9b       	B[P2] = R0;
ffa0125e:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa01260:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa01262:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa01264:	01 30       	R0 = R1;
ffa01266:	10 40       	R0 >>>= R2;
ffa01268:	18 54       	R0 = R0 & R3;
ffa0126a:	38 09       	CC = R0 <= R7;
ffa0126c:	1a 1c       	IF CC JUMP 0xffa012a0 <_printf_hex_byte+0x94> (BP);
ffa0126e:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01270:	42 91       	P2 = [P0];
ffa01272:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa01274:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900700 */
ffa01278:	22 0c       	CC = R2 == -0x4;
ffa0127a:	8a 5a       	P2 = P2 + P1;
ffa0127c:	0d e1 00 0e 	P5.L = 0xe00;		/* (3584)	P5=0xff900e00 <_printf_out> */
ffa01280:	10 9b       	B[P2] = R0;
ffa01282:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01284:	f0 17       	IF !CC JUMP 0xffa01264 <_printf_hex_byte+0x58> (BP);
ffa01286:	6a 91       	P2 = [P5];
ffa01288:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0128a:	94 5a       	P2 = P4 + P2;
ffa0128c:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa01290:	28 91       	R0 = [P5];
ffa01292:	ff e3 53 ff 	CALL 0xffa01138 <_uart_str>;
ffa01296:	01 e8 00 00 	UNLINK;
ffa0129a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0129c:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0129e:	10 00       	RTS;
ffa012a0:	80 65       	R0 += 0x30;		/* ( 48) */
ffa012a2:	e7 2f       	JUMP.S 0xffa01270 <_printf_hex_byte+0x64>;
ffa012a4:	01 e8 00 00 	UNLINK;
ffa012a8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa012aa:	bc 05       	(R7:7, P5:4) = [SP++];
ffa012ac:	10 00       	RTS;
ffa012ae:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e00 <_printf_out> */
ffa012b2:	08 e1 00 0e 	P0.L = 0xe00;		/* (3584)	P0=0xff900e00 <_printf_out> */
ffa012b6:	c6 2f       	JUMP.S 0xffa01242 <_printf_hex_byte+0x36>;

ffa012b8 <_printf_hex>:
ffa012b8:	fb 05       	[--SP] = (R7:7, P5:3);
ffa012ba:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa012be:	28 32       	P5 = R0;
ffa012c0:	39 30       	R7 = R1;
ffa012c2:	00 e3 5b 01 	CALL 0xffa01578 <_strlen_>;
ffa012c6:	10 30       	R2 = R0;
ffa012c8:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa012cc:	02 09       	CC = R2 <= R0;
ffa012ce:	47 10       	IF !CC JUMP 0xffa0135c <_printf_hex+0xa4>;
ffa012d0:	02 0d       	CC = R2 <= 0x0;
ffa012d2:	4a 18       	IF CC JUMP 0xffa01366 <_printf_hex+0xae>;
ffa012d4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900900 */
ffa012d8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa012da:	09 e1 00 0e 	P1.L = 0xe00;		/* (3584)	P1=0xff900e00 <_printf_out> */
ffa012de:	01 32       	P0 = R1;
ffa012e0:	4a 91       	P2 = [P1];
ffa012e2:	09 64       	R1 += 0x1;		/* (  1) */
ffa012e4:	68 98       	R0 = B[P5++] (X);
ffa012e6:	0a 08       	CC = R2 == R1;
ffa012e8:	82 5a       	P2 = P2 + P0;
ffa012ea:	10 9b       	B[P2] = R0;
ffa012ec:	f9 17       	IF !CC JUMP 0xffa012de <_printf_hex+0x26> (BP);
ffa012ee:	02 32       	P0 = R2;
ffa012f0:	4a 91       	P2 = [P1];
ffa012f2:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa012f4:	1a 32       	P3 = R2;
ffa012f6:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa012f8:	82 5a       	P2 = P2 + P0;
ffa012fa:	10 9b       	B[P2] = R0;
ffa012fc:	4a 91       	P2 = [P1];
ffa012fe:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa01300:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01304:	10 6c       	P0 += 0x2;		/* (  2) */
ffa01306:	9a 5a       	P2 = P2 + P3;
ffa01308:	10 9b       	B[P2] = R0;
ffa0130a:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa0130c:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa0130e:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa01310:	b2 e0 10 50 	LSETUP(0xffa01314 <_printf_hex+0x5c>, 0xffa01330 <_printf_hex+0x78>) LC1 = P5;
ffa01314:	07 30       	R0 = R7;
ffa01316:	08 40       	R0 >>>= R1;
ffa01318:	10 54       	R0 = R0 & R2;
ffa0131a:	18 09       	CC = R0 <= R3;
ffa0131c:	1e 1c       	IF CC JUMP 0xffa01358 <_printf_hex+0xa0> (BP);
ffa0131e:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01320:	4a 91       	P2 = [P1];
ffa01322:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900bdc <_g_outpkt> */
ffa01326:	0c e1 00 0e 	P4.L = 0xe00;		/* (3584)	P4=0xff900e00 <_printf_out> */
ffa0132a:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa0132c:	82 5a       	P2 = P2 + P0;
ffa0132e:	10 9b       	B[P2] = R0;
ffa01330:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01332:	62 91       	P2 = [P4];
ffa01334:	4b 32       	P1 = P3;
ffa01336:	49 6c       	P1 += 0x9;		/* (  9) */
ffa01338:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0133a:	8a 5a       	P2 = P2 + P1;
ffa0133c:	10 9b       	B[P2] = R0;
ffa0133e:	62 91       	P2 = [P4];
ffa01340:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01342:	8a 5a       	P2 = P2 + P1;
ffa01344:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa01348:	20 91       	R0 = [P4];
ffa0134a:	ff e3 f7 fe 	CALL 0xffa01138 <_uart_str>;
ffa0134e:	01 e8 00 00 	UNLINK;
ffa01352:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01354:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01356:	10 00       	RTS;
ffa01358:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0135a:	e3 2f       	JUMP.S 0xffa01320 <_printf_hex+0x68>;
ffa0135c:	01 e8 00 00 	UNLINK;
ffa01360:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01362:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01364:	10 00       	RTS;
ffa01366:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e00 <_printf_out> */
ffa0136a:	09 e1 00 0e 	P1.L = 0xe00;		/* (3584)	P1=0xff900e00 <_printf_out> */
ffa0136e:	c0 2f       	JUMP.S 0xffa012ee <_printf_hex+0x36>;

ffa01370 <_printf_int>:
ffa01370:	f3 05       	[--SP] = (R7:6, P5:3);
ffa01372:	01 0c       	CC = R1 == 0x0;
ffa01374:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01378:	28 32       	P5 = R0;
ffa0137a:	39 30       	R7 = R1;
ffa0137c:	41 14       	IF !CC JUMP 0xffa013fe <_printf_int+0x8e> (BP);
ffa0137e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bb4 <_g_sampW> */
ffa01382:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa01386:	5a 91       	P2 = [P3];
ffa01388:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0138a:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa0138c:	10 9b       	B[P2] = R0;
ffa0138e:	45 30       	R0 = P5;
ffa01390:	00 e3 f4 00 	CALL 0xffa01578 <_strlen_>;
ffa01394:	c6 50       	R3 = R6 + R0;
ffa01396:	10 30       	R2 = R0;
ffa01398:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa0139c:	03 09       	CC = R3 <= R0;
ffa0139e:	4e 10       	IF !CC JUMP 0xffa0143a <_printf_int+0xca>;
ffa013a0:	02 0d       	CC = R2 <= 0x0;
ffa013a2:	79 18       	IF CC JUMP 0xffa01494 <_printf_int+0x124>;
ffa013a4:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e00 <_printf_out> */
ffa013a8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa013aa:	08 e1 00 0e 	P0.L = 0xe00;		/* (3584)	P0=0xff900e00 <_printf_out> */
ffa013ae:	09 32       	P1 = R1;
ffa013b0:	42 91       	P2 = [P0];
ffa013b2:	09 64       	R1 += 0x1;		/* (  1) */
ffa013b4:	68 98       	R0 = B[P5++] (X);
ffa013b6:	0a 08       	CC = R2 == R1;
ffa013b8:	8a 5a       	P2 = P2 + P1;
ffa013ba:	10 9b       	B[P2] = R0;
ffa013bc:	f9 17       	IF !CC JUMP 0xffa013ae <_printf_int+0x3e> (BP);
ffa013be:	06 0d       	CC = R6 <= 0x0;
ffa013c0:	12 18       	IF CC JUMP 0xffa013e4 <_printf_int+0x74>;
ffa013c2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa013c4:	00 91       	R0 = [P0];
ffa013c6:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa013ca:	5a 91 00 00 
ffa013ce:	08 50       	R0 = R0 + R1;
ffa013d0:	08 32       	P1 = R0;
ffa013d2:	0e 52       	R0 = R6 - R1;
ffa013d4:	28 32       	P5 = R0;
ffa013d6:	09 64       	R1 += 0x1;		/* (  1) */
ffa013d8:	0e 08       	CC = R6 == R1;
ffa013da:	aa 5a       	P2 = P2 + P5;
ffa013dc:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa013e0:	08 9b       	B[P1] = R0;
ffa013e2:	f1 17       	IF !CC JUMP 0xffa013c4 <_printf_int+0x54> (BP);
ffa013e4:	0b 32       	P1 = R3;
ffa013e6:	42 91       	P2 = [P0];
ffa013e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa013ea:	91 5a       	P2 = P1 + P2;
ffa013ec:	10 9b       	B[P2] = R0;
ffa013ee:	00 91       	R0 = [P0];
ffa013f0:	ff e3 a4 fe 	CALL 0xffa01138 <_uart_str>;
ffa013f4:	01 e8 00 00 	UNLINK;
ffa013f8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa013fa:	b3 05       	(R7:6, P5:3) = [SP++];
ffa013fc:	10 00       	RTS;
ffa013fe:	01 0d       	CC = R1 <= 0x0;
ffa01400:	22 18       	IF CC JUMP 0xffa01444 <_printf_int+0xd4>;
ffa01402:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa01406:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01408:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa0140c:	05 20       	JUMP.S 0xffa01416 <_printf_int+0xa6>;
ffa0140e:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa01412:	06 08       	CC = R6 == R0;
ffa01414:	bd 1b       	IF CC JUMP 0xffa0138e <_printf_int+0x1e>;
ffa01416:	07 30       	R0 = R7;
ffa01418:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0141a:	00 e3 83 00 	CALL 0xffa01520 <_mod>;
ffa0141e:	0e 32       	P1 = R6;
ffa01420:	5a 91       	P2 = [P3];
ffa01422:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01424:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01426:	0e 64       	R6 += 0x1;		/* (  1) */
ffa01428:	8a 5a       	P2 = P2 + P1;
ffa0142a:	10 9b       	B[P2] = R0;
ffa0142c:	07 30       	R0 = R7;
ffa0142e:	00 e3 6b 00 	CALL 0xffa01504 <_div>;
ffa01432:	00 0d       	CC = R0 <= 0x0;
ffa01434:	38 30       	R7 = R0;
ffa01436:	ec 17       	IF !CC JUMP 0xffa0140e <_printf_int+0x9e> (BP);
ffa01438:	ab 2f       	JUMP.S 0xffa0138e <_printf_int+0x1e>;
ffa0143a:	01 e8 00 00 	UNLINK;
ffa0143e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01440:	b3 05       	(R7:6, P5:3) = [SP++];
ffa01442:	10 00       	RTS;
ffa01444:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01446:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa01448:	f8 4f       	R0 <<= 0x1f;
ffa0144a:	f8 53       	R7 = R0 - R7;
ffa0144c:	07 0d       	CC = R7 <= 0x0;
ffa0144e:	2c 18       	IF CC JUMP 0xffa014a6 <_printf_int+0x136>;
ffa01450:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa01454:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa01456:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa0145a:	05 20       	JUMP.S 0xffa01464 <_printf_int+0xf4>;
ffa0145c:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa01460:	4c 08       	CC = P4 == P1;
ffa01462:	1e 18       	IF CC JUMP 0xffa0149e <_printf_int+0x12e>;
ffa01464:	07 30       	R0 = R7;
ffa01466:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01468:	00 e3 5c 00 	CALL 0xffa01520 <_mod>;
ffa0146c:	5a 91       	P2 = [P3];
ffa0146e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01470:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01472:	a2 5a       	P2 = P2 + P4;
ffa01474:	10 9b       	B[P2] = R0;
ffa01476:	07 30       	R0 = R7;
ffa01478:	00 e3 46 00 	CALL 0xffa01504 <_div>;
ffa0147c:	00 0d       	CC = R0 <= 0x0;
ffa0147e:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa01480:	38 30       	R7 = R0;
ffa01482:	ed 17       	IF !CC JUMP 0xffa0145c <_printf_int+0xec> (BP);
ffa01484:	74 30       	R6 = P4;
ffa01486:	4c 32       	P1 = P4;
ffa01488:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0148a:	5a 91       	P2 = [P3];
ffa0148c:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa0148e:	8a 5a       	P2 = P2 + P1;
ffa01490:	10 9b       	B[P2] = R0;
ffa01492:	7e 2f       	JUMP.S 0xffa0138e <_printf_int+0x1e>;
ffa01494:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e00 <_printf_out> */
ffa01498:	08 e1 00 0e 	P0.L = 0xe00;		/* (3584)	P0=0xff900e00 <_printf_out> */
ffa0149c:	91 2f       	JUMP.S 0xffa013be <_printf_int+0x4e>;
ffa0149e:	4c 32       	P1 = P4;
ffa014a0:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa014a4:	f3 2f       	JUMP.S 0xffa0148a <_printf_int+0x11a>;
ffa014a6:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa014aa:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa014ac:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa014ae:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa014b2:	ec 2f       	JUMP.S 0xffa0148a <_printf_int+0x11a>;

ffa014b4 <_printf_ip>:
ffa014b4:	70 05       	[--SP] = (R7:6);
ffa014b6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa014ba:	39 30       	R7 = R1;
ffa014bc:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa014c0:	49 43       	R1 = R1.B (Z);
ffa014c2:	ff e3 57 ff 	CALL 0xffa01370 <_printf_int>;
ffa014c6:	06 e1 88 00 	R6.L = 0x88;		/* (136)	R6=0xff900088(-7339896) */
ffa014ca:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa014ce:	49 43       	R1 = R1.B (Z);
ffa014d0:	06 30       	R0 = R6;
ffa014d2:	ff e3 4f ff 	CALL 0xffa01370 <_printf_int>;
ffa014d6:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa014da:	49 43       	R1 = R1.B (Z);
ffa014dc:	06 30       	R0 = R6;
ffa014de:	c7 4e       	R7 >>= 0x18;
ffa014e0:	ff e3 48 ff 	CALL 0xffa01370 <_printf_int>;
ffa014e4:	0f 30       	R1 = R7;
ffa014e6:	06 30       	R0 = R6;
ffa014e8:	ff e3 44 ff 	CALL 0xffa01370 <_printf_int>;
ffa014ec:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa014f0:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa014f4:	ff e3 7c fe 	CALL 0xffa011ec <_printf_str>;
ffa014f8:	01 e8 00 00 	UNLINK;
ffa014fc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa014fe:	30 05       	(R7:6) = [SP++];
ffa01500:	10 00       	RTS;
	...

ffa01504 <_div>:
ffa01504:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01508:	08 4f       	R0 <<= 0x1;
ffa0150a:	48 42       	DIVS (R0, R1);
ffa0150c:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa0150e:	b2 e0 03 20 	LSETUP(0xffa01512 <_div+0xe>, 0xffa01514 <_div+0x10>) LC1 = P2;
ffa01512:	08 42       	DIVQ (R0, R1);
ffa01514:	00 00       	NOP;
ffa01516:	80 42       	R0 = R0.L (X);
ffa01518:	01 e8 00 00 	UNLINK;
ffa0151c:	10 00       	RTS;
	...

ffa01520 <_mod>:
ffa01520:	70 05       	[--SP] = (R7:6);
ffa01522:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01526:	30 30       	R6 = R0;
ffa01528:	39 30       	R7 = R1;
ffa0152a:	ff e3 ed ff 	CALL 0xffa01504 <_div>;
ffa0152e:	c7 40       	R7 *= R0;
ffa01530:	01 e8 00 00 	UNLINK;
ffa01534:	be 53       	R6 = R6 - R7;
ffa01536:	06 30       	R0 = R6;
ffa01538:	30 05       	(R7:6) = [SP++];
ffa0153a:	10 00       	RTS;

ffa0153c <_memcpy_>:
ffa0153c:	02 0d       	CC = R2 <= 0x0;
ffa0153e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01542:	08 32       	P1 = R0;
ffa01544:	11 32       	P2 = R1;
ffa01546:	08 18       	IF CC JUMP 0xffa01556 <_memcpy_+0x1a>;
ffa01548:	00 00       	NOP;
ffa0154a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0154c:	09 64       	R1 += 0x1;		/* (  1) */
ffa0154e:	48 98       	R0 = B[P1++] (X);
ffa01550:	0a 08       	CC = R2 == R1;
ffa01552:	10 9a       	B[P2++] = R0;
ffa01554:	fc 17       	IF !CC JUMP 0xffa0154c <_memcpy_+0x10> (BP);
ffa01556:	01 e8 00 00 	UNLINK;
ffa0155a:	10 00       	RTS;

ffa0155c <_memset_>:
ffa0155c:	02 0d       	CC = R2 <= 0x0;
ffa0155e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01562:	10 32       	P2 = R0;
ffa01564:	06 18       	IF CC JUMP 0xffa01570 <_memset_+0x14>;
ffa01566:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01568:	08 64       	R0 += 0x1;		/* (  1) */
ffa0156a:	02 08       	CC = R2 == R0;
ffa0156c:	11 9a       	B[P2++] = R1;
ffa0156e:	fd 17       	IF !CC JUMP 0xffa01568 <_memset_+0xc> (BP);
ffa01570:	01 e8 00 00 	UNLINK;
ffa01574:	10 00       	RTS;
	...

ffa01578 <_strlen_>:
ffa01578:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0157c:	10 32       	P2 = R0;
ffa0157e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01580:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa01584:	b2 e0 06 10 	LSETUP(0xffa01588 <_strlen_+0x10>, 0xffa01590 <_strlen_+0x18>) LC1 = P1;
ffa01588:	50 99       	R0 = B[P2] (X);
ffa0158a:	00 0c       	CC = R0 == 0x0;
ffa0158c:	04 18       	IF CC JUMP 0xffa01594 <_strlen_+0x1c>;
ffa0158e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01590:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01592:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01594:	01 30       	R0 = R1;
ffa01596:	01 e8 00 00 	UNLINK;
ffa0159a:	10 00       	RTS;

ffa0159c <_strcpy_>:
ffa0159c:	12 32       	P2 = R2;
ffa0159e:	c5 04       	[--SP] = (P5:5);
ffa015a0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa015a4:	29 32       	P5 = R1;
ffa015a6:	00 32       	P0 = R0;
ffa015a8:	51 99       	R1 = B[P2] (X);
ffa015aa:	08 43       	R0 = R1.B (X);
ffa015ac:	00 0c       	CC = R0 == 0x0;
ffa015ae:	17 18       	IF CC JUMP 0xffa015dc <_strcpy_+0x40>;
ffa015b0:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa015b2:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa015b4:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa015b8:	b2 e0 09 10 	LSETUP(0xffa015bc <_strcpy_+0x20>, 0xffa015ca <_strcpy_+0x2e>) LC1 = P1;
ffa015bc:	01 9a       	B[P0++] = R1;
ffa015be:	51 99       	R1 = B[P2] (X);
ffa015c0:	08 43       	R0 = R1.B (X);
ffa015c2:	00 0c       	CC = R0 == 0x0;
ffa015c4:	0a 64       	R2 += 0x1;		/* (  1) */
ffa015c6:	03 18       	IF CC JUMP 0xffa015cc <_strcpy_+0x30>;
ffa015c8:	00 00       	NOP;
ffa015ca:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa015cc:	01 e8 00 00 	UNLINK;
ffa015d0:	28 91       	R0 = [P5];
ffa015d2:	10 50       	R0 = R0 + R2;
ffa015d4:	28 93       	[P5] = R0;
ffa015d6:	40 30       	R0 = P0;
ffa015d8:	85 04       	(P5:5) = [SP++];
ffa015da:	10 00       	RTS;
ffa015dc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa015de:	f7 2f       	JUMP.S 0xffa015cc <_strcpy_+0x30>;

ffa015e0 <_strprepend>:
ffa015e0:	fc 05       	[--SP] = (R7:7, P5:4);
ffa015e2:	21 32       	P4 = R1;
ffa015e4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa015e8:	38 30       	R7 = R0;
ffa015ea:	02 30       	R0 = R2;
ffa015ec:	2a 32       	P5 = R2;
ffa015ee:	ff e3 c5 ff 	CALL 0xffa01578 <_strlen_>;
ffa015f2:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa015f6:	20 91 00 00 
ffa015fa:	02 0d       	CC = R2 <= 0x0;
ffa015fc:	0a 18       	IF CC JUMP 0xffa01610 <_strprepend+0x30>;
ffa015fe:	07 52       	R0 = R7 - R0;
ffa01600:	10 32       	P2 = R0;
ffa01602:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01604:	09 64       	R1 += 0x1;		/* (  1) */
ffa01606:	68 98       	R0 = B[P5++] (X);
ffa01608:	0a 08       	CC = R2 == R1;
ffa0160a:	10 9a       	B[P2++] = R0;
ffa0160c:	fc 17       	IF !CC JUMP 0xffa01604 <_strprepend+0x24> (BP);
ffa0160e:	20 91       	R0 = [P4];
ffa01610:	01 e8 00 00 	UNLINK;
ffa01614:	07 52       	R0 = R7 - R0;
ffa01616:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01618:	10 00       	RTS;
	...

ffa0161c <_strcmp>:
ffa0161c:	10 32       	P2 = R0;
ffa0161e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01622:	01 32       	P0 = R1;
ffa01624:	51 99       	R1 = B[P2] (X);
ffa01626:	01 0c       	CC = R1 == 0x0;
ffa01628:	1b 18       	IF CC JUMP 0xffa0165e <_strcmp+0x42>;
ffa0162a:	00 00       	NOP;
ffa0162c:	00 00       	NOP;
ffa0162e:	00 00       	NOP;
ffa01630:	40 99       	R0 = B[P0] (X);
ffa01632:	00 0c       	CC = R0 == 0x0;
ffa01634:	15 18       	IF CC JUMP 0xffa0165e <_strcmp+0x42>;
ffa01636:	01 08       	CC = R1 == R0;
ffa01638:	1c 10       	IF !CC JUMP 0xffa01670 <_strcmp+0x54>;
ffa0163a:	4a 32       	P1 = P2;
ffa0163c:	50 32       	P2 = P0;
ffa0163e:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01640:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01642:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa01646:	49 99       	R1 = B[P1] (X);
ffa01648:	01 0c       	CC = R1 == 0x0;
ffa0164a:	0a 18       	IF CC JUMP 0xffa0165e <_strcmp+0x42>;
ffa0164c:	00 00       	NOP;
ffa0164e:	00 00       	NOP;
ffa01650:	00 00       	NOP;
ffa01652:	50 99       	R0 = B[P2] (X);
ffa01654:	00 0c       	CC = R0 == 0x0;
ffa01656:	04 18       	IF CC JUMP 0xffa0165e <_strcmp+0x42>;
ffa01658:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa0165a:	40 0c       	CC = P0 == 0x0;
ffa0165c:	05 10       	IF !CC JUMP 0xffa01666 <_strcmp+0x4a>;
ffa0165e:	01 e8 00 00 	UNLINK;
ffa01662:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01664:	10 00       	RTS;
ffa01666:	01 08       	CC = R1 == R0;
ffa01668:	04 10       	IF !CC JUMP 0xffa01670 <_strcmp+0x54>;
ffa0166a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0166c:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0166e:	ec 2f       	JUMP.S 0xffa01646 <_strcmp+0x2a>;
ffa01670:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01672:	01 e8 00 00 	UNLINK;
ffa01676:	10 00       	RTS;

ffa01678 <_substr>:
ffa01678:	f4 05       	[--SP] = (R7:6, P5:4);
ffa0167a:	20 32       	P4 = R0;
ffa0167c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01680:	11 32       	P2 = R1;
ffa01682:	32 30       	R6 = R2;
ffa01684:	61 99       	R1 = B[P4] (X);
ffa01686:	01 0c       	CC = R1 == 0x0;
ffa01688:	14 18       	IF CC JUMP 0xffa016b0 <_substr+0x38>;
ffa0168a:	00 00       	NOP;
ffa0168c:	00 00       	NOP;
ffa0168e:	00 00       	NOP;
ffa01690:	50 99       	R0 = B[P2] (X);
ffa01692:	00 0c       	CC = R0 == 0x0;
ffa01694:	0e 18       	IF CC JUMP 0xffa016b0 <_substr+0x38>;
ffa01696:	02 0d       	CC = R2 <= 0x0;
ffa01698:	0c 18       	IF CC JUMP 0xffa016b0 <_substr+0x38>;
ffa0169a:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa0169c:	01 08       	CC = R1 == R0;
ffa0169e:	0f 18       	IF CC JUMP 0xffa016bc <_substr+0x44>;
ffa016a0:	00 00       	NOP;
ffa016a2:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa016a4:	0b 64       	R3 += 0x1;		/* (  1) */
ffa016a6:	50 99       	R0 = B[P2] (X);
ffa016a8:	00 0c       	CC = R0 == 0x0;
ffa016aa:	03 18       	IF CC JUMP 0xffa016b0 <_substr+0x38>;
ffa016ac:	1e 09       	CC = R6 <= R3;
ffa016ae:	f7 17       	IF !CC JUMP 0xffa0169c <_substr+0x24> (BP);
ffa016b0:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa016b2:	01 e8 00 00 	UNLINK;
ffa016b6:	40 30       	R0 = P0;
ffa016b8:	b4 05       	(R7:6, P5:4) = [SP++];
ffa016ba:	10 00       	RTS;
ffa016bc:	52 30       	R2 = P2;
ffa016be:	3b 30       	R7 = R3;
ffa016c0:	0a 64       	R2 += 0x1;		/* (  1) */
ffa016c2:	0f 64       	R7 += 0x1;		/* (  1) */
ffa016c4:	12 32       	P2 = R2;
ffa016c6:	07 32       	P0 = R7;
ffa016c8:	4c 32       	P1 = P4;
ffa016ca:	6c 32       	P5 = P4;
ffa016cc:	09 6c       	P1 += 0x1;		/* (  1) */
ffa016ce:	15 6c       	P5 += 0x2;		/* (  2) */
ffa016d0:	02 20       	JUMP.S 0xffa016d4 <_substr+0x5c>;
ffa016d2:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa016d4:	4b 99       	R3 = B[P1] (X);
ffa016d6:	50 99       	R0 = B[P2] (X);
ffa016d8:	03 08       	CC = R3 == R0;
ffa016da:	0e 10       	IF !CC JUMP 0xffa016f6 <_substr+0x7e>;
ffa016dc:	03 0c       	CC = R3 == 0x0;
ffa016de:	0c 18       	IF CC JUMP 0xffa016f6 <_substr+0x7e>;
ffa016e0:	00 00       	NOP;
ffa016e2:	09 6c       	P1 += 0x1;		/* (  1) */
ffa016e4:	08 6c       	P0 += 0x1;		/* (  1) */
ffa016e6:	68 98       	R0 = B[P5++] (X);
ffa016e8:	00 0c       	CC = R0 == 0x0;
ffa016ea:	f4 17       	IF !CC JUMP 0xffa016d2 <_substr+0x5a> (BP);
ffa016ec:	01 e8 00 00 	UNLINK;
ffa016f0:	40 30       	R0 = P0;
ffa016f2:	b4 05       	(R7:6, P5:4) = [SP++];
ffa016f4:	10 00       	RTS;
ffa016f6:	12 32       	P2 = R2;
ffa016f8:	1f 30       	R3 = R7;
ffa016fa:	d6 2f       	JUMP.S 0xffa016a6 <_substr+0x2e>;

ffa016fc <_sprintf_int>:
ffa016fc:	fb 05       	[--SP] = (R7:7, P5:3);
ffa016fe:	01 0c       	CC = R1 == 0x0;
ffa01700:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01704:	00 34       	I0 = R0;
ffa01706:	11 30       	R2 = R1;
ffa01708:	1a 14       	IF !CC JUMP 0xffa0173c <_sprintf_int+0x40> (BP);
ffa0170a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa0170e:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa01712:	5a 91       	P2 = [P3];
ffa01714:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01716:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01718:	10 9b       	B[P2] = R0;
ffa0171a:	88 32       	P1 = I0;
ffa0171c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0171e:	0b 52       	R0 = R3 - R1;
ffa01720:	00 32       	P0 = R0;
ffa01722:	5a 91       	P2 = [P3];
ffa01724:	09 64       	R1 += 0x1;		/* (  1) */
ffa01726:	99 08       	CC = R1 < R3;
ffa01728:	82 5a       	P2 = P2 + P0;
ffa0172a:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa0172e:	08 9a       	B[P1++] = R0;
ffa01730:	f7 1f       	IF CC JUMP 0xffa0171e <_sprintf_int+0x22> (BP);
ffa01732:	01 e8 00 00 	UNLINK;
ffa01736:	03 30       	R0 = R3;
ffa01738:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0173a:	10 00       	RTS;
ffa0173c:	01 0d       	CC = R1 <= 0x0;
ffa0173e:	2d 18       	IF CC JUMP 0xffa01798 <_sprintf_int+0x9c>;
ffa01740:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa01744:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa01748:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa0174a:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa0174e:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa01752:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa01754:	b2 e0 20 50 	LSETUP(0xffa01758 <_sprintf_int+0x5c>, 0xffa01794 <_sprintf_int+0x98>) LC1 = P5;
ffa01758:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa0175c:	59 91 00 00 
ffa01760:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01764:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa01768:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa0176c:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01770:	0b c4 00 00 	R0 = (A0 += A1);
ffa01774:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa01778:	10 4d       	R0 >>>= 0x2;
ffa0177a:	08 52       	R0 = R0 - R1;
ffa0177c:	00 32       	P0 = R0;
ffa0177e:	13 32       	P2 = R3;
ffa01780:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01782:	40 0d       	CC = P0 <= 0x0;
ffa01784:	51 5a       	P1 = P1 + P2;
ffa01786:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa01788:	92 5a       	P2 = P2 << 0x1;
ffa0178a:	4a 30       	R1 = P2;
ffa0178c:	0a 52       	R0 = R2 - R1;
ffa0178e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01790:	08 9b       	B[P1] = R0;
ffa01792:	39 18       	IF CC JUMP 0xffa01804 <_sprintf_int+0x108>;
ffa01794:	50 30       	R2 = P0;
ffa01796:	c2 2f       	JUMP.S 0xffa0171a <_sprintf_int+0x1e>;
ffa01798:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0179a:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa0179c:	f8 4f       	R0 <<= 0x1f;
ffa0179e:	90 52       	R2 = R0 - R2;
ffa017a0:	02 0d       	CC = R2 <= 0x0;
ffa017a2:	3c 18       	IF CC JUMP 0xffa0181a <_sprintf_int+0x11e>;
ffa017a4:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa017a8:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa017ac:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa017ae:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa017b2:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa017b6:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa017b8:	b2 e0 1f 50 	LSETUP(0xffa017bc <_sprintf_int+0xc0>, 0xffa017f6 <_sprintf_int+0xfa>) LC1 = P5;
ffa017bc:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa017c0:	59 91 00 00 
ffa017c4:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa017c8:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa017cc:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa017d0:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa017d4:	0b c4 00 00 	R0 = (A0 += A1);
ffa017d8:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa017dc:	10 4d       	R0 >>>= 0x2;
ffa017de:	08 52       	R0 = R0 - R1;
ffa017e0:	00 32       	P0 = R0;
ffa017e2:	61 5a       	P1 = P1 + P4;
ffa017e4:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa017e6:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa017e8:	92 5a       	P2 = P2 << 0x1;
ffa017ea:	4a 30       	R1 = P2;
ffa017ec:	0a 52       	R0 = R2 - R1;
ffa017ee:	80 65       	R0 += 0x30;		/* ( 48) */
ffa017f0:	40 0d       	CC = P0 <= 0x0;
ffa017f2:	08 9b       	B[P1] = R0;
ffa017f4:	0f 18       	IF CC JUMP 0xffa01812 <_sprintf_int+0x116>;
ffa017f6:	50 30       	R2 = P0;
ffa017f8:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa017fa:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa017fc:	5a 91       	P2 = [P3];
ffa017fe:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa01800:	8a 5a       	P2 = P2 + P1;
ffa01802:	10 9b       	B[P2] = R0;
ffa01804:	03 0d       	CC = R3 <= 0x0;
ffa01806:	8a 17       	IF !CC JUMP 0xffa0171a <_sprintf_int+0x1e> (BP);
ffa01808:	01 e8 00 00 	UNLINK;
ffa0180c:	03 30       	R0 = R3;
ffa0180e:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01810:	10 00       	RTS;
ffa01812:	5c 30       	R3 = P4;
ffa01814:	4c 32       	P1 = P4;
ffa01816:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01818:	f2 2f       	JUMP.S 0xffa017fc <_sprintf_int+0x100>;
ffa0181a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa0181e:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa01820:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01822:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa01826:	eb 2f       	JUMP.S 0xffa017fc <_sprintf_int+0x100>;

ffa01828 <_sprintf_hex>:
ffa01828:	10 32       	P2 = R0;
ffa0182a:	78 05       	[--SP] = (R7:7);
ffa0182c:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0182e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01832:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa01834:	10 9b       	B[P2] = R0;
ffa01836:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0183a:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa0183e:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa01840:	12 6c       	P2 += 0x2;		/* (  2) */
ffa01842:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa01844:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa01846:	b2 e0 09 10 	LSETUP(0xffa0184a <_sprintf_hex+0x22>, 0xffa01858 <_sprintf_hex+0x30>) LC1 = P1;
ffa0184a:	01 30       	R0 = R1;
ffa0184c:	10 40       	R0 >>>= R2;
ffa0184e:	18 54       	R0 = R0 & R3;
ffa01850:	38 09       	CC = R0 <= R7;
ffa01852:	09 1c       	IF CC JUMP 0xffa01864 <_sprintf_hex+0x3c> (BP);
ffa01854:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01856:	10 9a       	B[P2++] = R0;
ffa01858:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa0185a:	01 e8 00 00 	UNLINK;
ffa0185e:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01860:	38 05       	(R7:7) = [SP++];
ffa01862:	10 00       	RTS;
ffa01864:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01866:	f8 2f       	JUMP.S 0xffa01856 <_sprintf_hex+0x2e>;

ffa01868 <_strprintf_int>:
ffa01868:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0186a:	29 32       	P5 = R1;
ffa0186c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01870:	0a 30       	R1 = R2;
ffa01872:	38 30       	R7 = R0;
ffa01874:	ff e3 44 ff 	CALL 0xffa016fc <_sprintf_int>;
ffa01878:	29 91       	R1 = [P5];
ffa0187a:	41 50       	R1 = R1 + R0;
ffa0187c:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa01880:	29 93 00 00 
ffa01884:	01 e8 00 00 	UNLINK;
ffa01888:	07 30       	R0 = R7;
ffa0188a:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0188c:	10 00       	RTS;
	...

ffa01890 <_strprintf_hex>:
ffa01890:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01892:	29 32       	P5 = R1;
ffa01894:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01898:	0a 30       	R1 = R2;
ffa0189a:	38 30       	R7 = R0;
ffa0189c:	ff e3 c6 ff 	CALL 0xffa01828 <_sprintf_hex>;
ffa018a0:	29 91       	R1 = [P5];
ffa018a2:	41 50       	R1 = R1 + R0;
ffa018a4:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa018a8:	29 93 00 00 
ffa018ac:	01 e8 00 00 	UNLINK;
ffa018b0:	07 30       	R0 = R7;
ffa018b2:	bd 05       	(R7:7, P5:5) = [SP++];
ffa018b4:	10 00       	RTS;
	...

ffa018b8 <_atoi>:
ffa018b8:	08 32       	P1 = R0;
ffa018ba:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa018bc:	f5 05       	[--SP] = (R7:6, P5:5);
ffa018be:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa018c2:	48 99       	R0 = B[P1] (X);
ffa018c4:	10 08       	CC = R0 == R2;
ffa018c6:	25 18       	IF CC JUMP 0xffa01910 <_atoi+0x58>;
ffa018c8:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa018ca:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa018cc:	41 32       	P0 = P1;
ffa018ce:	08 6c       	P0 += 0x1;		/* (  1) */
ffa018d0:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa018d2:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa018d4:	12 20       	JUMP.S 0xffa018f8 <_atoi+0x40>;
ffa018d6:	8b 08       	CC = R3 < R1;
ffa018d8:	16 10       	IF !CC JUMP 0xffa01904 <_atoi+0x4c>;
ffa018da:	10 43       	R0 = R2.B (X);
ffa018dc:	28 32       	P5 = R0;
ffa018de:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa018e0:	40 99       	R0 = B[P0] (X);
ffa018e2:	80 66       	R0 += -0x30;		/* (-48) */
ffa018e4:	40 43       	R0 = R0.B (Z);
ffa018e6:	aa 5a       	P2 = P2 + P5;
ffa018e8:	10 0a       	CC = R0 <= R2 (IU);
ffa018ea:	82 6e       	P2 += -0x30;		/* (-48) */
ffa018ec:	09 6c       	P1 += 0x1;		/* (  1) */
ffa018ee:	03 14       	IF !CC JUMP 0xffa018f4 <_atoi+0x3c> (BP);
ffa018f0:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa018f2:	92 5a       	P2 = P2 << 0x1;
ffa018f4:	0b 64       	R3 += 0x1;		/* (  1) */
ffa018f6:	08 6c       	P0 += 0x1;		/* (  1) */
ffa018f8:	4a 99       	R2 = B[P1] (X);
ffa018fa:	02 30       	R0 = R2;
ffa018fc:	80 66       	R0 += -0x30;		/* (-48) */
ffa018fe:	40 43       	R0 = R0.B (Z);
ffa01900:	30 0a       	CC = R0 <= R6 (IU);
ffa01902:	ea 1f       	IF CC JUMP 0xffa018d6 <_atoi+0x1e> (BP);
ffa01904:	42 30       	R0 = P2;
ffa01906:	f8 40       	R0 *= R7;
ffa01908:	01 e8 00 00 	UNLINK;
ffa0190c:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0190e:	10 00       	RTS;
ffa01910:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01912:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01914:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01916:	db 2f       	JUMP.S 0xffa018cc <_atoi+0x14>;

ffa01918 <_udelay>:
ffa01918:	00 0d       	CC = R0 <= 0x0;
ffa0191a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0191e:	0b 18       	IF CC JUMP 0xffa01934 <_udelay+0x1c>;
ffa01920:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01922:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa01926:	b2 e0 03 20 	LSETUP(0xffa0192a <_udelay+0x12>, 0xffa0192c <_udelay+0x14>) LC1 = P2;
ffa0192a:	00 00       	NOP;
ffa0192c:	00 00       	NOP;
ffa0192e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01930:	08 08       	CC = R0 == R1;
ffa01932:	f8 17       	IF !CC JUMP 0xffa01922 <_udelay+0xa> (BP);
ffa01934:	01 e8 00 00 	UNLINK;
ffa01938:	10 00       	RTS;
	...

ffa0193c <_bfin_EMAC_send_check>:
ffa0193c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa01940:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01944:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01948:	50 95       	R0 = W[P2] (X);
ffa0194a:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa0194c:	00 02       	R0 = CC;
ffa0194e:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa01950:	01 e8 00 00 	UNLINK;
ffa01954:	10 00       	RTS;
	...

ffa01958 <_FormatIPAddress>:
ffa01958:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0195c:	18 30       	R3 = R0;
ffa0195e:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa01962:	40 4f       	R0 <<= 0x8;
ffa01964:	52 43       	R2 = R2.B (Z);
ffa01966:	10 56       	R0 = R0 | R2;
ffa01968:	40 4f       	R0 <<= 0x8;
ffa0196a:	49 43       	R1 = R1.B (Z);
ffa0196c:	08 56       	R0 = R0 | R1;
ffa0196e:	40 4f       	R0 <<= 0x8;
ffa01970:	5b 43       	R3 = R3.B (Z);
ffa01972:	18 56       	R0 = R0 | R3;
ffa01974:	01 e8 00 00 	UNLINK;
ffa01978:	10 00       	RTS;
	...

ffa0197c <_bfin_EMAC_halt>:
ffa0197c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01980:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01982:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01986:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0198a:	10 93       	[P2] = R0;
ffa0198c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01990:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa01994:	10 97       	W[P2] = R0;
ffa01996:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa0199a:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa0199e:	10 97       	W[P2] = R0;
ffa019a0:	01 e8 00 00 	UNLINK;
ffa019a4:	10 00       	RTS;
	...

ffa019a8 <_PollMdcDone>:
ffa019a8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa019ac:	02 20       	JUMP.S 0xffa019b0 <_PollMdcDone+0x8>;
ffa019ae:	00 00       	NOP;
ffa019b0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa019b4:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa019b8:	10 91       	R0 = [P2];
ffa019ba:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa019bc:	f9 17       	IF !CC JUMP 0xffa019ae <_PollMdcDone+0x6> (BP);
ffa019be:	01 e8 00 00 	UNLINK;
ffa019c2:	10 00       	RTS;

ffa019c4 <_WrPHYReg>:
ffa019c4:	68 05       	[--SP] = (R7:5);
ffa019c6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa019ca:	28 30       	R5 = R0;
ffa019cc:	31 30       	R6 = R1;
ffa019ce:	3a 30       	R7 = R2;
ffa019d0:	ff e3 ec ff 	CALL 0xffa019a8 <_PollMdcDone>;
ffa019d4:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa019d6:	b0 55       	R6 = R0 & R6;
ffa019d8:	28 54       	R0 = R0 & R5;
ffa019da:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa019de:	58 4f       	R0 <<= 0xb;
ffa019e0:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa019e2:	ff 42       	R7 = R7.L (Z);
ffa019e4:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa019e8:	36 4f       	R6 <<= 0x6;
ffa019ea:	08 56       	R0 = R0 | R1;
ffa019ec:	17 93       	[P2] = R7;
ffa019ee:	86 57       	R6 = R6 | R0;
ffa019f0:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa019f2:	16 93       	[P2] = R6;
ffa019f4:	01 e8 00 00 	UNLINK;
ffa019f8:	28 05       	(R7:5) = [SP++];
ffa019fa:	10 00       	RTS;

ffa019fc <_RdPHYReg>:
ffa019fc:	fd 05       	[--SP] = (R7:7, P5:5);
ffa019fe:	29 32       	P5 = R1;
ffa01a00:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01a04:	38 30       	R7 = R0;
ffa01a06:	ff e3 d1 ff 	CALL 0xffa019a8 <_PollMdcDone>;
ffa01a0a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa01a0e:	45 30       	R0 = P5;
ffa01a10:	c0 42       	R0 = R0.L (Z);
ffa01a12:	28 32       	P5 = R0;
ffa01a14:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01a16:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01a1a:	55 30       	R2 = P5;
ffa01a1c:	42 54       	R1 = R2 & R0;
ffa01a1e:	38 54       	R0 = R0 & R7;
ffa01a20:	58 4f       	R0 <<= 0xb;
ffa01a22:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa01a24:	31 4f       	R1 <<= 0x6;
ffa01a26:	41 56       	R1 = R1 | R0;
ffa01a28:	11 93       	[P2] = R1;
ffa01a2a:	ff e3 bf ff 	CALL 0xffa019a8 <_PollMdcDone>;
ffa01a2e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa01a32:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01a36:	10 91       	R0 = [P2];
ffa01a38:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa01a3c:	0a e1 04 0e 	P2.L = 0xe04;		/* (3588)	P2=0xff900e04 <_PHYregs> */
ffa01a40:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa01a42:	10 97       	W[P2] = R0;
ffa01a44:	01 e8 00 00 	UNLINK;
ffa01a48:	c0 42       	R0 = R0.L (Z);
ffa01a4a:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01a4c:	10 00       	RTS;
	...

ffa01a50 <_SoftResetPHY>:
ffa01a50:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a52:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a54:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa01a58:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01a5c:	ff e3 b4 ff 	CALL 0xffa019c4 <_WrPHYReg>;
ffa01a60:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a62:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a64:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01a66:	ff e3 af ff 	CALL 0xffa019c4 <_WrPHYReg>;
ffa01a6a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a6c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a6e:	ff e3 c7 ff 	CALL 0xffa019fc <_RdPHYReg>;
ffa01a72:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa01a74:	fb 1f       	IF CC JUMP 0xffa01a6a <_SoftResetPHY+0x1a> (BP);
ffa01a76:	01 e8 00 00 	UNLINK;
ffa01a7a:	10 00       	RTS;

ffa01a7c <_NetCksum>:
ffa01a7c:	01 0d       	CC = R1 <= 0x0;
ffa01a7e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01a82:	10 18       	IF CC JUMP 0xffa01aa2 <_NetCksum+0x26>;
ffa01a84:	10 32       	P2 = R0;
ffa01a86:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01a88:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01a8a:	0a 64       	R2 += 0x1;		/* (  1) */
ffa01a8c:	10 94       	R0 = W[P2++] (Z);
ffa01a8e:	0a 08       	CC = R2 == R1;
ffa01a90:	c3 50       	R3 = R3 + R0;
ffa01a92:	fc 17       	IF !CC JUMP 0xffa01a8a <_NetCksum+0xe> (BP);
ffa01a94:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa01a98:	03 50       	R0 = R3 + R0;
ffa01a9a:	c0 42       	R0 = R0.L (Z);
ffa01a9c:	01 e8 00 00 	UNLINK;
ffa01aa0:	10 00       	RTS;
ffa01aa2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01aa4:	01 e8 00 00 	UNLINK;
ffa01aa8:	10 00       	RTS;
	...

ffa01aac <_htons>:
ffa01aac:	08 30       	R1 = R0;
ffa01aae:	c0 42       	R0 = R0.L (Z);
ffa01ab0:	40 4e       	R0 >>= 0x8;
ffa01ab2:	41 4f       	R1 <<= 0x8;
ffa01ab4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01ab8:	08 56       	R0 = R0 | R1;
ffa01aba:	c0 42       	R0 = R0.L (Z);
ffa01abc:	01 e8 00 00 	UNLINK;
ffa01ac0:	10 00       	RTS;
	...

ffa01ac4 <_htonl>:
ffa01ac4:	10 30       	R2 = R0;
ffa01ac6:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa01aca:	40 43       	R0 = R0.B (Z);
ffa01acc:	49 43       	R1 = R1.B (Z);
ffa01ace:	40 4f       	R0 <<= 0x8;
ffa01ad0:	08 56       	R0 = R0 | R1;
ffa01ad2:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa01ad6:	40 4f       	R0 <<= 0x8;
ffa01ad8:	49 43       	R1 = R1.B (Z);
ffa01ada:	08 56       	R0 = R0 | R1;
ffa01adc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01ae0:	40 4f       	R0 <<= 0x8;
ffa01ae2:	c2 4e       	R2 >>= 0x18;
ffa01ae4:	10 56       	R0 = R0 | R2;
ffa01ae6:	01 e8 00 00 	UNLINK;
ffa01aea:	10 00       	RTS;

ffa01aec <_pack4chars>:
ffa01aec:	08 32       	P1 = R0;
ffa01aee:	10 32       	P2 = R0;
ffa01af0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01af4:	01 e8 00 00 	UNLINK;
ffa01af8:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa01afc:	10 98       	R0 = B[P2++] (Z);
ffa01afe:	41 4f       	R1 <<= 0x8;
ffa01b00:	08 50       	R0 = R0 + R1;
ffa01b02:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa01b06:	81 4f       	R1 <<= 0x10;
ffa01b08:	08 50       	R0 = R0 + R1;
ffa01b0a:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa01b0e:	c1 4f       	R1 <<= 0x18;
ffa01b10:	08 50       	R0 = R0 + R1;
ffa01b12:	10 00       	RTS;

ffa01b14 <_ip_header_setup>:
ffa01b14:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01b16:	28 32       	P5 = R0;
ffa01b18:	21 32       	P4 = R1;
ffa01b1a:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01b1e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b22:	32 30       	R6 = R2;
ffa01b24:	28 9b       	B[P5] = R0;
ffa01b26:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b28:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa01b2c:	27 91       	R7 = [P4];
ffa01b2e:	f8 42       	R0 = R7.L (Z);
ffa01b30:	ff e3 be ff 	CALL 0xffa01aac <_htons>;
ffa01b34:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e04 <_PHYregs> */
ffa01b38:	0a e1 4e 0e 	P2.L = 0xe4e;		/* (3662)	P2=0xff900e4e <_NetIPID> */
ffa01b3c:	68 b4       	W[P5 + 0x2] = R0;
ffa01b3e:	10 95       	R0 = W[P2] (Z);
ffa01b40:	08 30       	R1 = R0;
ffa01b42:	09 64       	R1 += 0x1;		/* (  1) */
ffa01b44:	67 67       	R7 += -0x14;		/* (-20) */
ffa01b46:	11 97       	W[P2] = R1;
ffa01b48:	27 93       	[P4] = R7;
ffa01b4a:	ff e3 b1 ff 	CALL 0xffa01aac <_htons>;
ffa01b4e:	a8 b4       	W[P5 + 0x4] = R0;
ffa01b50:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01b54:	ff e3 ac ff 	CALL 0xffa01aac <_htons>;
ffa01b58:	e8 b4       	W[P5 + 0x6] = R0;
ffa01b5a:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01b5e:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01b62:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4e <_NetIPID> */
ffa01b66:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa01b6a:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01b6e:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa01b72:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b74:	68 b5       	W[P5 + 0xa] = R0;
ffa01b76:	10 91       	R0 = [P2];
ffa01b78:	e8 b0       	[P5 + 0xc] = R0;
ffa01b7a:	2e b1       	[P5 + 0x10] = R6;
ffa01b7c:	45 30       	R0 = P5;
ffa01b7e:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01b80:	ff e3 7e ff 	CALL 0xffa01a7c <_NetCksum>;
ffa01b84:	c0 43       	R0 =~ R0;
ffa01b86:	68 b5       	W[P5 + 0xa] = R0;
ffa01b88:	01 e8 00 00 	UNLINK;
ffa01b8c:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01b8e:	45 30       	R0 = P5;
ffa01b90:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01b92:	10 00       	RTS;

ffa01b94 <_ip_header_checksum>:
ffa01b94:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b98:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa01b9a:	ff e3 71 ff 	CALL 0xffa01a7c <_NetCksum>;
ffa01b9e:	08 02       	CC = R0;
ffa01ba0:	00 02       	R0 = CC;
ffa01ba2:	01 e8 00 00 	UNLINK;
ffa01ba6:	10 00       	RTS;

ffa01ba8 <_icmp_header_setup>:
ffa01ba8:	00 32       	P0 = R0;
ffa01baa:	c5 04       	[--SP] = (P5:5);
ffa01bac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01bae:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01bb2:	29 32       	P5 = R1;
ffa01bb4:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa01bb8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01bba:	40 b4       	W[P0 + 0x2] = R0;
ffa01bbc:	38 ab       	R0 = W[FP + 0x18] (X);
ffa01bbe:	80 b4       	W[P0 + 0x4] = R0;
ffa01bc0:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa01bc2:	02 9b       	B[P0] = R2;
ffa01bc4:	c0 b4       	W[P0 + 0x6] = R0;
ffa01bc6:	48 32       	P1 = P0;
ffa01bc8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01bca:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa01bcc:	b2 e0 03 20 	LSETUP(0xffa01bd0 <_icmp_header_setup+0x28>, 0xffa01bd2 <_icmp_header_setup+0x2a>) LC1 = P2;
ffa01bd0:	08 94       	R0 = W[P1++] (Z);
ffa01bd2:	41 50       	R1 = R1 + R0;
ffa01bd4:	c8 42       	R0 = R1.L (Z);
ffa01bd6:	81 4e       	R1 >>= 0x10;
ffa01bd8:	08 50       	R0 = R0 + R1;
ffa01bda:	c0 43       	R0 =~ R0;
ffa01bdc:	40 b4       	W[P0 + 0x2] = R0;
ffa01bde:	28 91       	R0 = [P5];
ffa01be0:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa01be2:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01be4:	01 e8 00 00 	UNLINK;
ffa01be8:	28 93       	[P5] = R0;
ffa01bea:	40 30       	R0 = P0;
ffa01bec:	85 04       	(P5:5) = [SP++];
ffa01bee:	10 00       	RTS;

ffa01bf0 <_udp_header_setup>:
ffa01bf0:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01bf2:	28 32       	P5 = R0;
ffa01bf4:	21 32       	P4 = R1;
ffa01bf6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01bfa:	d0 42       	R0 = R2.L (Z);
ffa01bfc:	ff e3 58 ff 	CALL 0xffa01aac <_htons>;
ffa01c00:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa01c04:	28 97       	W[P5] = R0;
ffa01c06:	07 30       	R0 = R7;
ffa01c08:	ff e3 52 ff 	CALL 0xffa01aac <_htons>;
ffa01c0c:	27 91       	R7 = [P4];
ffa01c0e:	68 b4       	W[P5 + 0x2] = R0;
ffa01c10:	f8 42       	R0 = R7.L (Z);
ffa01c12:	ff e3 4d ff 	CALL 0xffa01aac <_htons>;
ffa01c16:	a8 b4       	W[P5 + 0x4] = R0;
ffa01c18:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c1a:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa01c1c:	e8 b4       	W[P5 + 0x6] = R0;
ffa01c1e:	01 e8 00 00 	UNLINK;
ffa01c22:	45 6c       	P5 += 0x8;		/* (  8) */
ffa01c24:	45 30       	R0 = P5;
ffa01c26:	27 93       	[P4] = R7;
ffa01c28:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01c2a:	10 00       	RTS;

ffa01c2c <_tcp_header_setup>:
ffa01c2c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01c2e:	28 32       	P5 = R0;
ffa01c30:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01c34:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01c38:	21 32       	P4 = R1;
ffa01c3a:	3a 30       	R7 = R2;
ffa01c3c:	ff e3 38 ff 	CALL 0xffa01aac <_htons>;
ffa01c40:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa01c44:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_TcpClientPort> */
ffa01c48:	28 97       	W[P5] = R0;
ffa01c4a:	50 95       	R0 = W[P2] (X);
ffa01c4c:	68 b4       	W[P5 + 0x2] = R0;
ffa01c4e:	38 a2       	R0 = [FP + 0x20];
ffa01c50:	ff e3 3a ff 	CALL 0xffa01ac4 <_htonl>;
ffa01c54:	68 b0       	[P5 + 0x4] = R0;
ffa01c56:	78 a2       	R0 = [FP + 0x24];
ffa01c58:	ff e3 36 ff 	CALL 0xffa01ac4 <_htonl>;
ffa01c5c:	a8 b0       	[P5 + 0x8] = R0;
ffa01c5e:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01c62:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01c66:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa01c6a:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa01c6e:	ff e3 1f ff 	CALL 0xffa01aac <_htons>;
ffa01c72:	e8 b5       	W[P5 + 0xe] = R0;
ffa01c74:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c76:	28 b6       	W[P5 + 0x10] = R0;
ffa01c78:	68 b6       	W[P5 + 0x12] = R0;
ffa01c7a:	20 91       	R0 = [P4];
ffa01c7c:	60 67       	R0 += -0x14;		/* (-20) */
ffa01c7e:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01c80:	01 e8 00 00 	UNLINK;
ffa01c84:	20 93       	[P4] = R0;
ffa01c86:	45 30       	R0 = P5;
ffa01c88:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01c8a:	10 00       	RTS;

ffa01c8c <_DHCP_parse>:
ffa01c8c:	f5 05       	[--SP] = (R7:6, P5:5);
ffa01c8e:	09 0d       	CC = R1 <= 0x1;
ffa01c90:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01c94:	10 32       	P2 = R0;
ffa01c96:	33 18       	IF CC JUMP 0xffa01cfc <_DHCP_parse+0x70>;
ffa01c98:	00 00       	NOP;
ffa01c9a:	31 30       	R6 = R1;
ffa01c9c:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01c9e:	11 98       	R1 = B[P2++] (Z);
ffa01ca0:	01 0c       	CC = R1 == 0x0;
ffa01ca2:	2b 1c       	IF CC JUMP 0xffa01cf8 <_DHCP_parse+0x6c> (BP);
ffa01ca4:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa01ca8:	01 08       	CC = R1 == R0;
ffa01caa:	57 99       	R7 = B[P2] (X);
ffa01cac:	28 18       	IF CC JUMP 0xffa01cfc <_DHCP_parse+0x70>;
ffa01cae:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa01cb0:	6a 32       	P5 = P2;
ffa01cb2:	01 0a       	CC = R1 <= R0 (IU);
ffa01cb4:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa01cb6:	09 14       	IF !CC JUMP 0xffa01cc8 <_DHCP_parse+0x3c> (BP);
ffa01cb8:	09 32       	P1 = R1;
ffa01cba:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_TcpClientPort> */
ffa01cbe:	0a e1 a8 03 	P2.L = 0x3a8;		/* (936)	P2=0xff9003a8 */
ffa01cc2:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa01cc4:	52 91       	P2 = [P2];
ffa01cc6:	52 00       	JUMP (P2);
ffa01cc8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa01ccc:	00 e1 80 01 	R0.L = 0x180;		/* (384)	R0=0xff900180(-7339648) */
ffa01cd0:	ff e3 50 fb 	CALL 0xffa01370 <_printf_int>;
ffa01cd4:	7f 43       	R7 = R7.B (Z);
ffa01cd6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900180(-7339648) */
ffa01cda:	00 e1 94 01 	R0.L = 0x194;		/* (404)	R0=0xff900194(-7339628) */
ffa01cde:	0f 30       	R1 = R7;
ffa01ce0:	ff e3 48 fb 	CALL 0xffa01370 <_printf_int>;
ffa01ce4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900194(-7339628) */
ffa01ce8:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa01cec:	ff e3 80 fa 	CALL 0xffa011ec <_printf_str>;
ffa01cf0:	0f 32       	P1 = R7;
ffa01cf2:	be 53       	R6 = R6 - R7;
ffa01cf4:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01cf6:	8d 5a       	P2 = P5 + P1;
ffa01cf8:	0e 0d       	CC = R6 <= 0x1;
ffa01cfa:	d1 17       	IF !CC JUMP 0xffa01c9c <_DHCP_parse+0x10> (BP);
ffa01cfc:	01 e8 00 00 	UNLINK;
ffa01d00:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01d02:	10 00       	RTS;
ffa01d04:	45 30       	R0 = P5;
ffa01d06:	ff e3 f3 fe 	CALL 0xffa01aec <_pack4chars>;
ffa01d0a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff9003a8 */
ffa01d0e:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetSubnetMask> */
ffa01d12:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01d16:	10 93 00 00 
ffa01d1a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa01d1e:	00 e1 d8 00 	R0.L = 0xd8;		/* (216)	R0=0xff9000d8(-7339816) */
ffa01d22:	ff e3 c9 fb 	CALL 0xffa014b4 <_printf_ip>;
ffa01d26:	7f 43       	R7 = R7.B (Z);
ffa01d28:	de 2f       	JUMP.S 0xffa01ce4 <_DHCP_parse+0x58>;
ffa01d2a:	45 30       	R0 = P5;
ffa01d2c:	ff e3 e0 fe 	CALL 0xffa01aec <_pack4chars>;
ffa01d30:	08 30       	R1 = R0;
ffa01d32:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000d8(-7339816) */
ffa01d36:	00 e1 e8 00 	R0.L = 0xe8;		/* (232)	R0=0xff9000e8(-7339800) */
ffa01d3a:	ff e3 bd fb 	CALL 0xffa014b4 <_printf_ip>;
ffa01d3e:	7f 43       	R7 = R7.B (Z);
ffa01d40:	d2 2f       	JUMP.S 0xffa01ce4 <_DHCP_parse+0x58>;
ffa01d42:	45 30       	R0 = P5;
ffa01d44:	ff e3 d4 fe 	CALL 0xffa01aec <_pack4chars>;
ffa01d48:	08 30       	R1 = R0;
ffa01d4a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000e8(-7339800) */
ffa01d4e:	00 e1 f8 00 	R0.L = 0xf8;		/* (248)	R0=0xff9000f8(-7339784) */
ffa01d52:	ff e3 b1 fb 	CALL 0xffa014b4 <_printf_ip>;
ffa01d56:	7f 43       	R7 = R7.B (Z);
ffa01d58:	c6 2f       	JUMP.S 0xffa01ce4 <_DHCP_parse+0x58>;
ffa01d5a:	45 30       	R0 = P5;
ffa01d5c:	ff e3 c8 fe 	CALL 0xffa01aec <_pack4chars>;
ffa01d60:	08 30       	R1 = R0;
ffa01d62:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f8(-7339784) */
ffa01d66:	00 e1 08 01 	R0.L = 0x108;		/* (264)	R0=0xff900108(-7339768) */
ffa01d6a:	ff e3 a5 fb 	CALL 0xffa014b4 <_printf_ip>;
ffa01d6e:	7f 43       	R7 = R7.B (Z);
ffa01d70:	ba 2f       	JUMP.S 0xffa01ce4 <_DHCP_parse+0x58>;
ffa01d72:	45 30       	R0 = P5;
ffa01d74:	ff e3 bc fe 	CALL 0xffa01aec <_pack4chars>;
ffa01d78:	ff e3 a6 fe 	CALL 0xffa01ac4 <_htonl>;
ffa01d7c:	08 30       	R1 = R0;
ffa01d7e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900108(-7339768) */
ffa01d82:	00 e1 18 01 	R0.L = 0x118;		/* (280)	R0=0xff900118(-7339752) */
ffa01d86:	ff e3 f5 fa 	CALL 0xffa01370 <_printf_int>;
ffa01d8a:	7f 43       	R7 = R7.B (Z);
ffa01d8c:	ac 2f       	JUMP.S 0xffa01ce4 <_DHCP_parse+0x58>;
ffa01d8e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900118(-7339752) */
ffa01d92:	29 99       	R1 = B[P5] (Z);
ffa01d94:	00 e1 2c 01 	R0.L = 0x12c;		/* (300)	R0=0xff90012c(-7339732) */
ffa01d98:	ff e3 ec fa 	CALL 0xffa01370 <_printf_int>;
ffa01d9c:	7f 43       	R7 = R7.B (Z);
ffa01d9e:	a3 2f       	JUMP.S 0xffa01ce4 <_DHCP_parse+0x58>;
ffa01da0:	45 30       	R0 = P5;
ffa01da2:	ff e3 a5 fe 	CALL 0xffa01aec <_pack4chars>;
ffa01da6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e7c <_NetSubnetMask> */
ffa01daa:	0a e1 48 0e 	P2.L = 0xe48;		/* (3656)	P2=0xff900e48 <_NetDHCPserv> */
ffa01dae:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01db2:	10 93 00 00 
ffa01db6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90012c(-7339732) */
ffa01dba:	00 e1 40 01 	R0.L = 0x140;		/* (320)	R0=0xff900140(-7339712) */
ffa01dbe:	ff e3 7b fb 	CALL 0xffa014b4 <_printf_ip>;
ffa01dc2:	7f 43       	R7 = R7.B (Z);
ffa01dc4:	90 2f       	JUMP.S 0xffa01ce4 <_DHCP_parse+0x58>;
ffa01dc6:	45 30       	R0 = P5;
ffa01dc8:	ff e3 92 fe 	CALL 0xffa01aec <_pack4chars>;
ffa01dcc:	ff e3 7c fe 	CALL 0xffa01ac4 <_htonl>;
ffa01dd0:	08 30       	R1 = R0;
ffa01dd2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900140(-7339712) */
ffa01dd6:	00 e1 54 01 	R0.L = 0x154;		/* (340)	R0=0xff900154(-7339692) */
ffa01dda:	ff e3 cb fa 	CALL 0xffa01370 <_printf_int>;
ffa01dde:	7f 43       	R7 = R7.B (Z);
ffa01de0:	82 2f       	JUMP.S 0xffa01ce4 <_DHCP_parse+0x58>;
ffa01de2:	45 30       	R0 = P5;
ffa01de4:	ff e3 84 fe 	CALL 0xffa01aec <_pack4chars>;
ffa01de8:	ff e3 6e fe 	CALL 0xffa01ac4 <_htonl>;
ffa01dec:	08 30       	R1 = R0;
ffa01dee:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900154(-7339692) */
ffa01df2:	00 e1 68 01 	R0.L = 0x168;		/* (360)	R0=0xff900168(-7339672) */
ffa01df6:	ff e3 bd fa 	CALL 0xffa01370 <_printf_int>;
ffa01dfa:	7f 43       	R7 = R7.B (Z);
ffa01dfc:	74 2f       	JUMP.S 0xffa01ce4 <_DHCP_parse+0x58>;
	...

ffa01e00 <_bfin_EMAC_send_nocopy>:
ffa01e00:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e48(-4190648) */
ffa01e04:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01e06:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01e0a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01e0e:	10 97       	W[P2] = R0;
ffa01e10:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01e14:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01e18:	50 95       	R0 = W[P2] (X);
ffa01e1a:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01e1c:	59 10       	IF !CC JUMP 0xffa01ece <_bfin_EMAC_send_nocopy+0xce>;
ffa01e1e:	00 00       	NOP;
ffa01e20:	00 00       	NOP;
ffa01e22:	00 00       	NOP;
ffa01e24:	50 95       	R0 = W[P2] (X);
ffa01e26:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01e28:	16 18       	IF CC JUMP 0xffa01e54 <_bfin_EMAC_send_nocopy+0x54>;
ffa01e2a:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0008 */
ffa01e2e:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01e32:	b2 e0 09 10 	LSETUP(0xffa01e36 <_bfin_EMAC_send_nocopy+0x36>, 0xffa01e44 <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa01e36:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01e3a:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01e3e:	50 95       	R0 = W[P2] (X);
ffa01e40:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01e42:	09 18       	IF CC JUMP 0xffa01e54 <_bfin_EMAC_send_nocopy+0x54>;
ffa01e44:	00 00       	NOP;
ffa01e46:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa01e4a:	00 e1 b4 01 	R0.L = 0x1b4;		/* (436)	R0=0xff9001b4(-7339596) */
ffa01e4e:	ff e3 cf f9 	CALL 0xffa011ec <_printf_str>;
ffa01e52:	30 20       	JUMP.S 0xffa01eb2 <_bfin_EMAC_send_nocopy+0xb2>;
ffa01e54:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa01e58:	08 e1 4c 0e 	P0.L = 0xe4c;		/* (3660)	P0=0xff900e4c <_txIdx> */
ffa01e5c:	00 95       	R0 = W[P0] (Z);
ffa01e5e:	10 32       	P2 = R0;
ffa01e60:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01e64:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa01e68:	42 95       	R2 = W[P0] (X);
ffa01e6a:	d1 42       	R1 = R2.L (Z);
ffa01e6c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01e6e:	52 91       	P2 = [P2];
ffa01e70:	11 0d       	CC = R1 <= 0x2;
ffa01e72:	90 a1       	R0 = [P2 + 0x18];
ffa01e74:	50 b0       	[P2 + 0x4] = R0;
ffa01e76:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e78:	90 b2       	[P2 + 0x28] = R0;
ffa01e7a:	11 32       	P2 = R1;
ffa01e7c:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa01e7e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01e82:	08 91       	R0 = [P1];
ffa01e84:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01e88:	10 93       	[P2] = R0;
ffa01e8a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01e8e:	0a e1 9a 04 	P2.L = 0x49a;		/* (1178)	P2=0xff90049a <_txdmacfg> */
ffa01e92:	50 95       	R0 = W[P2] (X);
ffa01e94:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0049a(-4193126) */
ffa01e98:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01e9c:	10 97       	W[P2] = R0;
ffa01e9e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01ea2:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01ea6:	10 91       	R0 = [P2];
ffa01ea8:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01eaa:	10 93       	[P2] = R0;
ffa01eac:	0d 1c       	IF CC JUMP 0xffa01ec6 <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa01eae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01eb0:	00 97       	W[P0] = R0;
ffa01eb2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01eb6:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01eb8:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01ebc:	10 97       	W[P2] = R0;
ffa01ebe:	01 e8 00 00 	UNLINK;
ffa01ec2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ec4:	10 00       	RTS;
ffa01ec6:	02 30       	R0 = R2;
ffa01ec8:	08 64       	R0 += 0x1;		/* (  1) */
ffa01eca:	00 97       	W[P0] = R0;
ffa01ecc:	f3 2f       	JUMP.S 0xffa01eb2 <_bfin_EMAC_send_nocopy+0xb2>;
ffa01ece:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01ed2:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa01ed6:	ff e3 8b f9 	CALL 0xffa011ec <_printf_str>;
ffa01eda:	ec 2f       	JUMP.S 0xffa01eb2 <_bfin_EMAC_send_nocopy+0xb2>;

ffa01edc <_DHCP_tx>:
ffa01edc:	e3 05       	[--SP] = (R7:4, P5:3);
ffa01ede:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa01ee2:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01ee6:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa01eea:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa01eee:	10 95 00 00 
ffa01ef2:	10 32       	P2 = R0;
ffa01ef4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e50 <_txbuf> */
ffa01ef8:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa01efc:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa01f00:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01f02:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01f04:	52 91       	P2 = [P2];
ffa01f06:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa01f0a:	f1 bb 00 00 
ffa01f0e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90000b */
ffa01f12:	0d e1 74 0e 	P5.L = 0xe74;		/* (3700)	P5=0xff900e74 <_NetOurMAC> */
ffa01f16:	94 ad       	P4 = [P2 + 0x18];
ffa01f18:	1a 32       	P3 = R2;
ffa01f1a:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01f1c:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01f1e:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa01f22:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa01f26:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa01f2a:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa01f2e:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa01f32:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa01f36:	20 97       	W[P4] = R0;
ffa01f38:	68 99       	R0 = B[P5] (X);
ffa01f3a:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa01f3e:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01f42:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa01f46:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01f4a:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa01f4e:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01f52:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa01f56:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01f5a:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa01f5e:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01f62:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa01f66:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01f6a:	ff e3 a1 fd 	CALL 0xffa01aac <_htons>;
ffa01f6e:	e0 b5       	W[P4 + 0xe] = R0;
ffa01f70:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01f74:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa01f78:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa01f7c:	04 50       	R0 = R4 + R0;
ffa01f7e:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa01f82:	c0 42       	R0 = R0.L (Z);
ffa01f84:	ff e3 94 fd 	CALL 0xffa01aac <_htons>;
ffa01f88:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa01f8c:	0a e1 4e 0e 	P2.L = 0xe4e;		/* (3662)	P2=0xff900e4e <_NetIPID> */
ffa01f90:	60 b6       	W[P4 + 0x12] = R0;
ffa01f92:	10 95       	R0 = W[P2] (Z);
ffa01f94:	08 30       	R1 = R0;
ffa01f96:	09 64       	R1 += 0x1;		/* (  1) */
ffa01f98:	11 97       	W[P2] = R1;
ffa01f9a:	ff e3 89 fd 	CALL 0xffa01aac <_htons>;
ffa01f9e:	a0 b6       	W[P4 + 0x14] = R0;
ffa01fa0:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01fa4:	ff e3 84 fd 	CALL 0xffa01aac <_htons>;
ffa01fa8:	e0 b6       	W[P4 + 0x16] = R0;
ffa01faa:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01fac:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa01fb0:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa01fb4:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa01fb8:	66 b7 00 00 
ffa01fbc:	44 30       	R0 = P4;
ffa01fbe:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01fc0:	e7 b1       	[P4 + 0x1c] = R7;
ffa01fc2:	23 be       	[P4 + 0x20] = P3;
ffa01fc4:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01fc6:	ff e3 5b fd 	CALL 0xffa01a7c <_NetCksum>;
ffa01fca:	c0 43       	R0 =~ R0;
ffa01fcc:	60 b7       	W[P4 + 0x1a] = R0;
ffa01fce:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa01fd2:	ff e3 6d fd 	CALL 0xffa01aac <_htons>;
ffa01fd6:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa01fda:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa01fde:	ff e3 67 fd 	CALL 0xffa01aac <_htons>;
ffa01fe2:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa01fe6:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa01fea:	04 50       	R0 = R4 + R0;
ffa01fec:	c0 42       	R0 = R0.L (Z);
ffa01fee:	ff e3 5f fd 	CALL 0xffa01aac <_htons>;
ffa01ff2:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa01ff6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01ff8:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa01ffc:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa02000:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e4e(-4190642) */
ffa02004:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02006:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa0200a:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa0200e:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa02012:	10 91       	R0 = [P2];
ffa02014:	20 b3       	[P4 + 0x30] = R0;
ffa02016:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa0201a:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa0201e:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa02022:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa02026:	a7 b3       	[P4 + 0x38] = R7;
ffa02028:	e7 b3       	[P4 + 0x3c] = R7;
ffa0202a:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa0202e:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa02032:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa02036:	ff e3 47 fd 	CALL 0xffa01ac4 <_htonl>;
ffa0203a:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa0203e:	68 99       	R0 = B[P5] (X);
ffa02040:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa02044:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02048:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa0204c:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02050:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa02054:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02058:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa0205c:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02060:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa02064:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02068:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa0206c:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa02070:	54 5a       	P1 = P4 + P2;
ffa02072:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02074:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02076:	b2 e0 02 20 	LSETUP(0xffa0207a <_DHCP_tx+0x19e>, 0xffa0207a <_DHCP_tx+0x19e>) LC1 = P2;
ffa0207a:	08 9a       	B[P1++] = R0;
ffa0207c:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa02080:	54 5a       	P1 = P4 + P2;
ffa02082:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02084:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa02086:	b2 e0 02 20 	LSETUP(0xffa0208a <_DHCP_tx+0x1ae>, 0xffa0208a <_DHCP_tx+0x1ae>) LC1 = P2;
ffa0208a:	08 92       	[P1++] = R0;
ffa0208c:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa02090:	54 5a       	P1 = P4 + P2;
ffa02092:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02094:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa02096:	b2 e0 02 20 	LSETUP(0xffa0209a <_DHCP_tx+0x1be>, 0xffa0209a <_DHCP_tx+0x1be>) LC1 = P2;
ffa0209a:	08 92       	[P1++] = R0;
ffa0209c:	44 30       	R0 = P4;
ffa0209e:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa020a2:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa020a6:	f0 b9 00 00 
ffa020aa:	14 30       	R2 = R4;
ffa020ac:	ff e3 48 fa 	CALL 0xffa0153c <_memcpy_>;
ffa020b0:	01 e8 00 00 	UNLINK;
ffa020b4:	a3 05       	(R7:4, P5:3) = [SP++];
ffa020b6:	ff e2 a5 fe 	JUMP.L 0xffa01e00 <_bfin_EMAC_send_nocopy>;
	...

ffa020bc <_DHCP_tx_discover>:
ffa020bc:	c5 04       	[--SP] = (P5:5);
ffa020be:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e74 <_NetOurMAC> */
ffa020c2:	0d e1 48 0e 	P5.L = 0xe48;		/* (3656)	P5=0xff900e48 <_NetDHCPserv> */
ffa020c6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa020c8:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa020cc:	28 93       	[P5] = R0;
ffa020ce:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa020d0:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa020d4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa020d6:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa020da:	b8 e6 fe ff 	B[FP + -0x2] = R0;
ffa020de:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa020e0:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa020e4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa020e8:	00 e1 cc 01 	R0.L = 0x1cc;		/* (460)	R0=0xff9001cc(-7339572) */
ffa020ec:	ff e3 80 f8 	CALL 0xffa011ec <_printf_str>;
ffa020f0:	4f 30       	R1 = FP;
ffa020f2:	2a 91       	R2 = [P5];
ffa020f4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa020f6:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa020f8:	ff e3 f2 fe 	CALL 0xffa01edc <_DHCP_tx>;
ffa020fc:	01 e8 00 00 	UNLINK;
ffa02100:	85 04       	(P5:5) = [SP++];
ffa02102:	10 00       	RTS;

ffa02104 <_bfin_EMAC_send>:
ffa02104:	c4 04       	[--SP] = (P5:4);
ffa02106:	01 0d       	CC = R1 <= 0x0;
ffa02108:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0210c:	18 30       	R3 = R0;
ffa0210e:	11 30       	R2 = R1;
ffa02110:	90 18       	IF CC JUMP 0xffa02230 <_bfin_EMAC_send+0x12c>;
ffa02112:	00 00       	NOP;
ffa02114:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00020(-4194272) */
ffa02118:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa0211c:	50 95       	R0 = W[P2] (X);
ffa0211e:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa02120:	74 10       	IF !CC JUMP 0xffa02208 <_bfin_EMAC_send+0x104>;
ffa02122:	00 00       	NOP;
ffa02124:	00 00       	NOP;
ffa02126:	00 00       	NOP;
ffa02128:	50 95       	R0 = W[P2] (X);
ffa0212a:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0212c:	17 18       	IF CC JUMP 0xffa0215a <_bfin_EMAC_send+0x56>;
ffa0212e:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0e50 */
ffa02132:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa02136:	b2 e0 09 10 	LSETUP(0xffa0213a <_bfin_EMAC_send+0x36>, 0xffa02148 <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa0213a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa0213e:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa02142:	50 95       	R0 = W[P2] (X);
ffa02144:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa02146:	0a 18       	IF CC JUMP 0xffa0215a <_bfin_EMAC_send+0x56>;
ffa02148:	00 00       	NOP;
ffa0214a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa0214e:	00 e1 fc 01 	R0.L = 0x1fc;		/* (508)	R0=0xff9001fc(-7339524) */
ffa02152:	ff e3 4d f8 	CALL 0xffa011ec <_printf_str>;
ffa02156:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02158:	53 20       	JUMP.S 0xffa021fe <_bfin_EMAC_send+0xfa>;
ffa0215a:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900000 <_l1_data_a> */
ffa0215e:	0c e1 4c 0e 	P4.L = 0xe4c;		/* (3660)	P4=0xff900e4c <_txIdx> */
ffa02162:	20 95       	R0 = W[P4] (Z);
ffa02164:	10 32       	P2 = R0;
ffa02166:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e48 <_NetDHCPserv> */
ffa0216a:	0d e1 50 0e 	P5.L = 0xe50;		/* (3664)	P5=0xff900e50 <_txbuf> */
ffa0216e:	0b 30       	R1 = R3;
ffa02170:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02172:	52 91       	P2 = [P2];
ffa02174:	92 ad       	P2 = [P2 + 0x18];
ffa02176:	12 96       	W[P2++] = R2;
ffa02178:	42 30       	R0 = P2;
ffa0217a:	ff e3 e1 f9 	CALL 0xffa0153c <_memcpy_>;
ffa0217e:	20 95       	R0 = W[P4] (Z);
ffa02180:	10 32       	P2 = R0;
ffa02182:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02184:	51 91       	P1 = [P2];
ffa02186:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa0218a:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa0218e:	51 93       	[P2] = P1;
ffa02190:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa02194:	88 a1       	R0 = [P1 + 0x18];
ffa02196:	0a e1 9a 04 	P2.L = 0x49a;		/* (1178)	P2=0xff90049a <_txdmacfg> */
ffa0219a:	48 b0       	[P1 + 0x4] = R0;
ffa0219c:	50 95       	R0 = W[P2] (X);
ffa0219e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0049a(-4193126) */
ffa021a2:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa021a6:	10 97       	W[P2] = R0;
ffa021a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa021ac:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa021b0:	10 91       	R0 = [P2];
ffa021b2:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa021b4:	10 93       	[P2] = R0;
ffa021b6:	88 a2       	R0 = [P1 + 0x28];
ffa021b8:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa021ba:	13 10       	IF !CC JUMP 0xffa021e0 <_bfin_EMAC_send+0xdc>;
ffa021bc:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa021c0:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa021c4:	b2 e0 05 20 	LSETUP(0xffa021c8 <_bfin_EMAC_send+0xc4>, 0xffa021ce <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa021c8:	88 a2       	R0 = [P1 + 0x28];
ffa021ca:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa021cc:	0a 10       	IF !CC JUMP 0xffa021e0 <_bfin_EMAC_send+0xdc>;
ffa021ce:	00 00       	NOP;
ffa021d0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001fc(-7339524) */
ffa021d4:	00 e1 14 02 	R0.L = 0x214;		/* (532)	R0=0xff900214(-7339500) */
ffa021d8:	ff e3 0a f8 	CALL 0xffa011ec <_printf_str>;
ffa021dc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa021de:	10 20       	JUMP.S 0xffa021fe <_bfin_EMAC_send+0xfa>;
ffa021e0:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa021e4:	61 95 00 00 
ffa021e8:	8a a2       	R2 = [P1 + 0x28];
ffa021ea:	88 b2       	[P1 + 0x28] = R0;
ffa021ec:	c8 42       	R0 = R1.L (Z);
ffa021ee:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa021f2:	10 0d       	CC = R0 <= 0x2;
ffa021f4:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa021f8:	14 1c       	IF CC JUMP 0xffa02220 <_bfin_EMAC_send+0x11c> (BP);
ffa021fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa021fc:	10 97       	W[P2] = R0;
ffa021fe:	01 e8 00 00 	UNLINK;
ffa02202:	02 30       	R0 = R2;
ffa02204:	84 04       	(P5:4) = [SP++];
ffa02206:	10 00       	RTS;
ffa02208:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0220c:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa02210:	ff e3 ee f7 	CALL 0xffa011ec <_printf_str>;
ffa02214:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02216:	01 e8 00 00 	UNLINK;
ffa0221a:	02 30       	R0 = R2;
ffa0221c:	84 04       	(P5:4) = [SP++];
ffa0221e:	10 00       	RTS;
ffa02220:	01 30       	R0 = R1;
ffa02222:	08 64       	R0 += 0x1;		/* (  1) */
ffa02224:	10 97       	W[P2] = R0;
ffa02226:	01 e8 00 00 	UNLINK;
ffa0222a:	02 30       	R0 = R2;
ffa0222c:	84 04       	(P5:4) = [SP++];
ffa0222e:	10 00       	RTS;
ffa02230:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90019c(-7339620) */
ffa02234:	00 e1 e0 01 	R0.L = 0x1e0;		/* (480)	R0=0xff9001e0(-7339552) */
ffa02238:	ff e3 9c f8 	CALL 0xffa01370 <_printf_int>;
ffa0223c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0223e:	01 e8 00 00 	UNLINK;
ffa02242:	02 30       	R0 = R2;
ffa02244:	84 04       	(P5:4) = [SP++];
ffa02246:	10 00       	RTS;

ffa02248 <_ether_testUDP>:
ffa02248:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0224a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa0224e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02252:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa02256:	11 95       	R1 = W[P2] (Z);
ffa02258:	11 32       	P2 = R1;
ffa0225a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa0225e:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa02262:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa02266:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02268:	52 91       	P2 = [P2];
ffa0226a:	95 ad       	P5 = [P2 + 0x18];
ffa0226c:	55 32       	P2 = P5;
ffa0226e:	11 96       	W[P2++] = R1;
ffa02270:	4a 30       	R1 = P2;
ffa02272:	00 e3 27 08 	CALL 0xffa032c0 <_ARP_req>;
ffa02276:	00 0c       	CC = R0 == 0x0;
ffa02278:	7f 18       	IF CC JUMP 0xffa02376 <_ether_testUDP+0x12e>;
ffa0227a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa0227e:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetOurMAC> */
ffa02282:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02284:	50 99       	R0 = B[P2] (X);
ffa02286:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0228a:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa0228e:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02292:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02296:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa0229a:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa0229e:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa022a2:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa022a6:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa022aa:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa022ae:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa022b2:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa022b6:	ff e3 fb fb 	CALL 0xffa01aac <_htons>;
ffa022ba:	e8 b5       	W[P5 + 0xe] = R0;
ffa022bc:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa022c0:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa022c4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa022c6:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa022ca:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa022cc:	ff e3 f0 fb 	CALL 0xffa01aac <_htons>;
ffa022d0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e74 <_NetOurMAC> */
ffa022d4:	0a e1 4e 0e 	P2.L = 0xe4e;		/* (3662)	P2=0xff900e4e <_NetIPID> */
ffa022d8:	68 b6       	W[P5 + 0x12] = R0;
ffa022da:	10 95       	R0 = W[P2] (Z);
ffa022dc:	08 30       	R1 = R0;
ffa022de:	09 64       	R1 += 0x1;		/* (  1) */
ffa022e0:	11 97       	W[P2] = R1;
ffa022e2:	ff e3 e5 fb 	CALL 0xffa01aac <_htons>;
ffa022e6:	a8 b6       	W[P5 + 0x14] = R0;
ffa022e8:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa022ec:	ff e3 e0 fb 	CALL 0xffa01aac <_htons>;
ffa022f0:	e8 b6       	W[P5 + 0x16] = R0;
ffa022f2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa022f4:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa022f8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4e <_NetIPID> */
ffa022fc:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa022fe:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa02302:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa02306:	10 91       	R0 = [P2];
ffa02308:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e80 <_NetOurIP> */
ffa0230c:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_NetDestIP> */
ffa02310:	e8 b1       	[P5 + 0x1c] = R0;
ffa02312:	10 91       	R0 = [P2];
ffa02314:	28 b2       	[P5 + 0x20] = R0;
ffa02316:	45 30       	R0 = P5;
ffa02318:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0231a:	6f b7       	W[P5 + 0x1a] = R7;
ffa0231c:	80 64       	R0 += 0x10;		/* ( 16) */
ffa0231e:	ff e3 af fb 	CALL 0xffa01a7c <_NetCksum>;
ffa02322:	c0 43       	R0 =~ R0;
ffa02324:	68 b7       	W[P5 + 0x1a] = R0;
ffa02326:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa0232a:	ff e3 c1 fb 	CALL 0xffa01aac <_htons>;
ffa0232e:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa02332:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa02336:	ff e3 bb fb 	CALL 0xffa01aac <_htons>;
ffa0233a:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa0233e:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa02340:	ff e3 b6 fb 	CALL 0xffa01aac <_htons>;
ffa02344:	55 32       	P2 = P5;
ffa02346:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa0234a:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa0234e:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa02350:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02352:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa02354:	b2 e0 03 10 	LSETUP(0xffa02358 <_ether_testUDP+0x110>, 0xffa0235a <_ether_testUDP+0x112>) LC1 = P1;
ffa02358:	11 9a       	B[P2++] = R1;
ffa0235a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0235c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa02360:	00 e1 28 02 	R0.L = 0x228;		/* (552)	R0=0xff900228(-7339480) */
ffa02364:	ff e3 44 f7 	CALL 0xffa011ec <_printf_str>;
ffa02368:	ff e3 4c fd 	CALL 0xffa01e00 <_bfin_EMAC_send_nocopy>;
ffa0236c:	01 e8 00 00 	UNLINK;
ffa02370:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02372:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02374:	10 00       	RTS;
ffa02376:	01 e8 00 00 	UNLINK;
ffa0237a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0237c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0237e:	10 00       	RTS;

ffa02380 <_eth_header_setup>:
ffa02380:	c4 04       	[--SP] = (P5:4);
ffa02382:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_NetDestIP> */
ffa02386:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0238a:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa0238e:	00 32       	P0 = R0;
ffa02390:	10 95       	R0 = W[P2] (Z);
ffa02392:	10 32       	P2 = R0;
ffa02394:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa02398:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa0239c:	00 91       	R0 = [P0];
ffa0239e:	21 32       	P4 = R1;
ffa023a0:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa023a2:	52 91       	P2 = [P2];
ffa023a4:	08 30       	R1 = R0;
ffa023a6:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa023a8:	80 67       	R0 += -0x10;		/* (-16) */
ffa023aa:	95 ad       	P5 = [P2 + 0x18];
ffa023ac:	00 93       	[P0] = R0;
ffa023ae:	02 30       	R0 = R2;
ffa023b0:	55 32       	P2 = P5;
ffa023b2:	11 96       	W[P2++] = R1;
ffa023b4:	4a 30       	R1 = P2;
ffa023b6:	00 e3 85 07 	CALL 0xffa032c0 <_ARP_req>;
ffa023ba:	00 0c       	CC = R0 == 0x0;
ffa023bc:	2b 18       	IF CC JUMP 0xffa02412 <_eth_header_setup+0x92>;
ffa023be:	00 00       	NOP;
ffa023c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa023c4:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetOurMAC> */
ffa023c8:	50 99       	R0 = B[P2] (X);
ffa023ca:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa023ce:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa023d2:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa023d6:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa023da:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa023de:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa023e2:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa023e6:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa023ea:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa023ee:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa023f2:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa023f6:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa023fa:	ff e3 59 fb 	CALL 0xffa01aac <_htons>;
ffa023fe:	e8 b5       	W[P5 + 0xe] = R0;
ffa02400:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02402:	20 9b       	B[P4] = R0;
ffa02404:	4d 30       	R1 = P5;
ffa02406:	81 64       	R1 += 0x10;		/* ( 16) */
ffa02408:	01 e8 00 00 	UNLINK;
ffa0240c:	01 30       	R0 = R1;
ffa0240e:	84 04       	(P5:4) = [SP++];
ffa02410:	10 00       	RTS;
ffa02412:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02414:	20 9b       	B[P4] = R0;
ffa02416:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02418:	01 e8 00 00 	UNLINK;
ffa0241c:	01 30       	R0 = R1;
ffa0241e:	84 04       	(P5:4) = [SP++];
ffa02420:	10 00       	RTS;
	...

ffa02424 <_icmp_packet_setup>:
ffa02424:	e4 05       	[--SP] = (R7:4, P5:4);
ffa02426:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0242a:	29 32       	P5 = R1;
ffa0242c:	7f 30       	R7 = FP;
ffa0242e:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02430:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02432:	f0 bb       	[FP -0x4] = R0;
ffa02434:	07 30       	R0 = R7;
ffa02436:	22 32       	P4 = R2;
ffa02438:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa0243c:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa02440:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa02444:	ff e3 9e ff 	CALL 0xffa02380 <_eth_header_setup>;
ffa02448:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa0244c:	68 99 00 00 
ffa02450:	80 0c       	CC = R0 < 0x0;
ffa02452:	14 18       	IF CC JUMP 0xffa0247a <_icmp_packet_setup+0x56>;
ffa02454:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02456:	f0 b0       	[SP + 0xc] = R0;
ffa02458:	54 30       	R2 = P4;
ffa0245a:	01 30       	R0 = R1;
ffa0245c:	0f 30       	R1 = R7;
ffa0245e:	ff e3 5b fb 	CALL 0xffa01b14 <_ip_header_setup>;
ffa02462:	e9 42       	R1 = R5.L (Z);
ffa02464:	f1 b0       	[SP + 0xc] = R1;
ffa02466:	e1 42       	R1 = R4.L (Z);
ffa02468:	31 b1       	[SP + 0x10] = R1;
ffa0246a:	72 43       	R2 = R6.B (Z);
ffa0246c:	0f 30       	R1 = R7;
ffa0246e:	ff e3 9d fb 	CALL 0xffa01ba8 <_icmp_header_setup>;
ffa02472:	01 e8 00 00 	UNLINK;
ffa02476:	a4 05       	(R7:4, P5:4) = [SP++];
ffa02478:	10 00       	RTS;
ffa0247a:	01 e8 00 00 	UNLINK;
ffa0247e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02480:	a4 05       	(R7:4, P5:4) = [SP++];
ffa02482:	10 00       	RTS;

ffa02484 <_icmp_rx>:
ffa02484:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02486:	28 32       	P5 = R0;
ffa02488:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa0248c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02490:	39 30       	R7 = R1;
ffa02492:	ff e3 0d fb 	CALL 0xffa01aac <_htons>;
ffa02496:	c0 42       	R0 = R0.L (Z);
ffa02498:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa0249a:	01 08       	CC = R1 == R0;
ffa0249c:	06 18       	IF CC JUMP 0xffa024a8 <_icmp_rx+0x24>;
ffa0249e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024a0:	01 e8 00 00 	UNLINK;
ffa024a4:	bd 05       	(R7:7, P5:5) = [SP++];
ffa024a6:	10 00       	RTS;
ffa024a8:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa024aa:	07 0a       	CC = R7 <= R0 (IU);
ffa024ac:	f9 1b       	IF CC JUMP 0xffa0249e <_icmp_rx+0x1a>;
ffa024ae:	00 00       	NOP;
ffa024b0:	00 00       	NOP;
ffa024b2:	00 00       	NOP;
ffa024b4:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa024b8:	08 0c       	CC = R0 == 0x1;
ffa024ba:	f2 17       	IF !CC JUMP 0xffa0249e <_icmp_rx+0x1a> (BP);
ffa024bc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e74 <_NetOurMAC> */
ffa024c0:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa024c4:	28 a2       	R0 = [P5 + 0x20];
ffa024c6:	11 91       	R1 = [P2];
ffa024c8:	08 08       	CC = R0 == R1;
ffa024ca:	ea 17       	IF !CC JUMP 0xffa0249e <_icmp_rx+0x1a> (BP);
ffa024cc:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa024d0:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa024d4:	08 08       	CC = R0 == R1;
ffa024d6:	3e 18       	IF CC JUMP 0xffa02552 <_icmp_rx+0xce>;
ffa024d8:	00 00       	NOP;
ffa024da:	00 00       	NOP;
ffa024dc:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa024de:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa024e2:	08 08       	CC = R0 == R1;
ffa024e4:	dd 17       	IF !CC JUMP 0xffa0249e <_icmp_rx+0x1a> (BP);
ffa024e6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa024ea:	e9 a1       	R1 = [P5 + 0x1c];
ffa024ec:	00 e1 40 02 	R0.L = 0x240;		/* (576)	R0=0xff900240(-7339456) */
ffa024f0:	ff e3 e2 f7 	CALL 0xffa014b4 <_printf_ip>;
ffa024f4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e80 <_NetOurIP> */
ffa024f8:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_NetDestIP> */
ffa024fc:	e8 a1       	R0 = [P5 + 0x1c];
ffa024fe:	4d 30       	R1 = P5;
ffa02500:	10 93       	[P2] = R0;
ffa02502:	41 64       	R1 += 0x8;		/* (  8) */
ffa02504:	00 e3 e0 04 	CALL 0xffa02ec4 <_ARP_lut_add>;
ffa02508:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900240(-7339456) */
ffa0250c:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02510:	ff e3 6e f6 	CALL 0xffa011ec <_printf_str>;
ffa02514:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa02518:	ea a1 00 00 
ffa0251c:	f0 b0       	[SP + 0xc] = R0;
ffa0251e:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa02522:	30 b1       	[SP + 0x10] = R0;
ffa02524:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa02526:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa0252a:	4f 30       	R1 = FP;
ffa0252c:	70 b1       	[SP + 0x14] = R0;
ffa0252e:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa02530:	07 30       	R0 = R7;
ffa02532:	ff e3 79 ff 	CALL 0xffa02424 <_icmp_packet_setup>;
ffa02536:	08 30       	R1 = R0;
ffa02538:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0253c:	00 0d       	CC = R0 <= 0x0;
ffa0253e:	b0 1b       	IF CC JUMP 0xffa0249e <_icmp_rx+0x1a>;
ffa02540:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa02542:	45 30       	R0 = P5;
ffa02544:	17 30       	R2 = R7;
ffa02546:	ff e3 fb f7 	CALL 0xffa0153c <_memcpy_>;
ffa0254a:	ff e3 5b fc 	CALL 0xffa01e00 <_bfin_EMAC_send_nocopy>;
ffa0254e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02550:	a8 2f       	JUMP.S 0xffa024a0 <_icmp_rx+0x1c>;
ffa02552:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_NetDestIP> */
ffa02556:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02558:	0a e1 d4 0b 	P2.L = 0xbd4;		/* (3028)	P2=0xff900bd4 <_g_streamEnabled> */
ffa0255c:	10 9b       	B[P2] = R0;
ffa0255e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02560:	a0 2f       	JUMP.S 0xffa024a0 <_icmp_rx+0x1c>;
	...

ffa02564 <_udp_packet_setup>:
ffa02564:	fc 05       	[--SP] = (R7:7, P5:4);
ffa02566:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0256a:	29 32       	P5 = R1;
ffa0256c:	7f 30       	R7 = FP;
ffa0256e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e4c <_txIdx> */
ffa02572:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02574:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02576:	0c e1 84 0e 	P4.L = 0xe84;		/* (3716)	P4=0xff900e84 <_NetDataDestIP> */
ffa0257a:	f0 bb       	[FP -0x4] = R0;
ffa0257c:	22 91       	R2 = [P4];
ffa0257e:	07 30       	R0 = R7;
ffa02580:	ff e3 00 ff 	CALL 0xffa02380 <_eth_header_setup>;
ffa02584:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa02588:	68 99 00 00 
ffa0258c:	80 0c       	CC = R0 < 0x0;
ffa0258e:	14 18       	IF CC JUMP 0xffa025b6 <_udp_packet_setup+0x52>;
ffa02590:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa02592:	f0 b0       	[SP + 0xc] = R0;
ffa02594:	01 30       	R0 = R1;
ffa02596:	22 91       	R2 = [P4];
ffa02598:	0f 30       	R1 = R7;
ffa0259a:	ff e3 bd fa 	CALL 0xffa01b14 <_ip_header_setup>;
ffa0259e:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa025a2:	f1 b0       	[SP + 0xc] = R1;
ffa025a4:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa025a8:	0f 30       	R1 = R7;
ffa025aa:	ff e3 23 fb 	CALL 0xffa01bf0 <_udp_header_setup>;
ffa025ae:	01 e8 00 00 	UNLINK;
ffa025b2:	bc 05       	(R7:7, P5:4) = [SP++];
ffa025b4:	10 00       	RTS;
ffa025b6:	01 e8 00 00 	UNLINK;
ffa025ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa025bc:	bc 05       	(R7:7, P5:4) = [SP++];
ffa025be:	10 00       	RTS;

ffa025c0 <_SetupTxBuffer>:
ffa025c0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa025c2:	38 30       	R7 = R0;
ffa025c4:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa025c8:	c7 40       	R7 *= R0;
ffa025ca:	17 32       	P2 = R7;
ffa025cc:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800e50 */
ffa025d0:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa025d4:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa025d8:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa025dc:	6a 5b       	P5 = P2 + P5;
ffa025de:	c7 51       	R7 = R7 + R0;
ffa025e0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa025e4:	45 30       	R0 = P5;
ffa025e6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa025e8:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa025ea:	ff e3 b9 f7 	CALL 0xffa0155c <_memset_>;
ffa025ee:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa025f2:	af b1 00 00 
ffa025f6:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa025fa:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa025fe:	ff e3 af f7 	CALL 0xffa0155c <_memset_>;
ffa02602:	45 30       	R0 = P5;
ffa02604:	60 64       	R0 += 0xc;		/* ( 12) */
ffa02606:	28 93       	[P5] = R0;
ffa02608:	a8 a1       	R0 = [P5 + 0x18];
ffa0260a:	68 b0       	[P5 + 0x4] = R0;
ffa0260c:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa02610:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02612:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa02614:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa02616:	10 54       	R0 = R0 & R2;
ffa02618:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa0261a:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0261e:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa02620:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa02624:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa02626:	18 54       	R0 = R0 & R3;
ffa02628:	08 56       	R0 = R0 | R1;
ffa0262a:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0262e:	08 56       	R0 = R0 | R1;
ffa02630:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02634:	45 30       	R0 = P5;
ffa02636:	40 65       	R0 += 0x28;		/* ( 40) */
ffa02638:	28 b1       	[P5 + 0x10] = R0;
ffa0263a:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa0263e:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02640:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02642:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa02646:	10 54       	R0 = R0 & R2;
ffa02648:	08 56       	R0 = R0 | R1;
ffa0264a:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa0264e:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa02652:	18 54       	R0 = R0 & R3;
ffa02654:	39 64       	R1 += 0x7;		/* (  7) */
ffa02656:	08 54       	R0 = R0 & R1;
ffa02658:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa0265c:	ed bc       	[P5 + 0xc] = P5;
ffa0265e:	01 e8 00 00 	UNLINK;
ffa02662:	45 30       	R0 = P5;
ffa02664:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02666:	10 00       	RTS;

ffa02668 <_SetupRxBuffer>:
ffa02668:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0266a:	38 30       	R7 = R0;
ffa0266c:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02670:	c7 40       	R7 *= R0;
ffa02672:	17 32       	P2 = R7;
ffa02674:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa02678:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa0267c:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02680:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa02684:	6a 5b       	P5 = P2 + P5;
ffa02686:	c7 51       	R7 = R7 + R0;
ffa02688:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0268c:	45 30       	R0 = P5;
ffa0268e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02690:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa02692:	ff e3 65 f7 	CALL 0xffa0155c <_memset_>;
ffa02696:	af b1       	[P5 + 0x18] = R7;
ffa02698:	07 30       	R0 = R7;
ffa0269a:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa0269e:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa026a2:	ff e3 5d f7 	CALL 0xffa0155c <_memset_>;
ffa026a6:	45 30       	R0 = P5;
ffa026a8:	60 64       	R0 += 0xc;		/* ( 12) */
ffa026aa:	28 93       	[P5] = R0;
ffa026ac:	a8 a1       	R0 = [P5 + 0x18];
ffa026ae:	68 b0       	[P5 + 0x4] = R0;
ffa026b0:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa026b4:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa026b6:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa026b8:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa026ba:	08 54       	R0 = R0 & R1;
ffa026bc:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa026be:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa026c2:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa026c4:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa026c8:	38 54       	R0 = R0 & R7;
ffa026ca:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa026cc:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa026d0:	18 56       	R0 = R0 | R3;
ffa026d2:	10 56       	R0 = R0 | R2;
ffa026d4:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa026d8:	45 30       	R0 = P5;
ffa026da:	20 65       	R0 += 0x24;		/* ( 36) */
ffa026dc:	28 b1       	[P5 + 0x10] = R0;
ffa026de:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa026e2:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa026e4:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa026e6:	08 54       	R0 = R0 & R1;
ffa026e8:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa026ec:	08 56       	R0 = R0 | R1;
ffa026ee:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa026f2:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa026f6:	38 54       	R0 = R0 & R7;
ffa026f8:	18 56       	R0 = R0 | R3;
ffa026fa:	10 56       	R0 = R0 | R2;
ffa026fc:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02700:	ed bc       	[P5 + 0xc] = P5;
ffa02702:	01 e8 00 00 	UNLINK;
ffa02706:	45 30       	R0 = P5;
ffa02708:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0270a:	10 00       	RTS;

ffa0270c <_SetupSystemRegs>:
ffa0270c:	f5 05       	[--SP] = (R7:6, P5:5);
ffa0270e:	28 32       	P5 = R0;
ffa02710:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa02714:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02718:	00 e1 5c 02 	R0.L = 0x25c;		/* (604)	R0=0xff90025c(-7339428) */
ffa0271c:	ff e3 68 f5 	CALL 0xffa011ec <_printf_str>;
ffa02720:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bd4(-4191276) */
ffa02724:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa02728:	50 95       	R0 = W[P2] (X);
ffa0272a:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa0272e:	08 54       	R0 = R0 & R1;
ffa02730:	10 97       	W[P2] = R0;
ffa02732:	50 95       	R0 = W[P2] (X);
ffa02734:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa02736:	10 97       	W[P2] = R0;
ffa02738:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0273a:	51 95       	R1 = W[P2] (X);
ffa0273c:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa02740:	08 56       	R0 = R0 | R1;
ffa02742:	10 97       	W[P2] = R0;
ffa02744:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02746:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02748:	10 97       	W[P2] = R0;
ffa0274a:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa0274c:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa0274e:	10 97       	W[P2] = R0;
ffa02750:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa02754:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa02758:	50 95       	R0 = W[P2] (X);
ffa0275a:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa0275c:	10 97       	W[P2] = R0;
ffa0275e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa02762:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa02766:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa0276a:	10 93       	[P2] = R0;
ffa0276c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0276e:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa02772:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02774:	ff e3 28 f9 	CALL 0xffa019c4 <_WrPHYReg>;
ffa02778:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa0277c:	ff e3 ce f8 	CALL 0xffa01918 <_udelay>;
ffa02780:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02782:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02784:	ff e3 3c f9 	CALL 0xffa019fc <_RdPHYReg>;
ffa02788:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0278a:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa0278c:	0e 20       	JUMP.S 0xffa027a8 <_SetupSystemRegs+0x9c>;
ffa0278e:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02792:	ff e3 c3 f8 	CALL 0xffa01918 <_udelay>;
ffa02796:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02798:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0279a:	ff e3 31 f9 	CALL 0xffa019fc <_RdPHYReg>;
ffa0279e:	0f 64       	R7 += 0x1;		/* (  1) */
ffa027a0:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa027a4:	0f 08       	CC = R7 == R1;
ffa027a6:	35 18       	IF CC JUMP 0xffa02810 <_SetupSystemRegs+0x104>;
ffa027a8:	06 54       	R0 = R6 & R0;
ffa027aa:	00 0c       	CC = R0 == 0x0;
ffa027ac:	f1 1f       	IF CC JUMP 0xffa0278e <_SetupSystemRegs+0x82> (BP);
ffa027ae:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa027b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027b2:	ff e3 25 f9 	CALL 0xffa019fc <_RdPHYReg>;
ffa027b6:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa027ba:	01 54       	R0 = R1 & R0;
ffa027bc:	00 0c       	CC = R0 == 0x0;
ffa027be:	27 1c       	IF CC JUMP 0xffa0280c <_SetupSystemRegs+0x100> (BP);
ffa027c0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa027c2:	d0 4f       	R0 <<= 0x1a;
ffa027c4:	28 93       	[P5] = R0;
ffa027c6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa027ca:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa027cc:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa027d0:	10 93       	[P2] = R0;
ffa027d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa027d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027d8:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa027dc:	10 97       	W[P2] = R0;
ffa027de:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa027e0:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027e2:	11 97       	W[P2] = R1;
ffa027e4:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027e6:	10 97       	W[P2] = R0;
ffa027e8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027ea:	10 97       	W[P2] = R0;
ffa027ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa027f0:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa027f4:	10 97       	W[P2] = R0;
ffa027f6:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027f8:	11 97       	W[P2] = R1;
ffa027fa:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027fc:	10 97       	W[P2] = R0;
ffa027fe:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02800:	10 97       	W[P2] = R0;
ffa02802:	01 e8 00 00 	UNLINK;
ffa02806:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02808:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0280a:	10 00       	RTS;
ffa0280c:	28 93       	[P5] = R0;
ffa0280e:	dc 2f       	JUMP.S 0xffa027c6 <_SetupSystemRegs+0xba>;
ffa02810:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02814:	00 e1 74 02 	R0.L = 0x274;		/* (628)	R0=0xff900274(-7339404) */
ffa02818:	ff e3 ea f4 	CALL 0xffa011ec <_printf_str>;
ffa0281c:	01 e8 00 00 	UNLINK;
ffa02820:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02822:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02824:	10 00       	RTS;
	...

ffa02828 <_SetupMacAddr>:
ffa02828:	10 32       	P2 = R0;
ffa0282a:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0282c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0282e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02832:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa02836:	10 9b       	B[P2] = R0;
ffa02838:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa0283a:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa0283e:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa02840:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa02844:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa02846:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa0284a:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa0284e:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02852:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa02854:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02858:	10 99       	R0 = B[P2] (Z);
ffa0285a:	08 56       	R0 = R0 | R1;
ffa0285c:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa02860:	89 4f       	R1 <<= 0x11;
ffa02862:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00e50(-4190640) */
ffa02866:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa0286a:	08 56       	R0 = R0 | R1;
ffa0286c:	08 93       	[P1] = R0;
ffa0286e:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02872:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa02876:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa0287a:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa0287c:	28 93       	[P5] = R0;
ffa0287e:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa02882:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa02886:	09 91       	R1 = [P1];
ffa02888:	07 e1 64 0a 	R7.L = 0xa64;		/* (2660)	R7=0xff900a64(-7337372) */
ffa0288c:	00 e1 a8 02 	R0.L = 0x2a8;		/* (680)	R0=0xff9002a8(-7339352) */
ffa02890:	ff e3 14 f5 	CALL 0xffa012b8 <_printf_hex>;
ffa02894:	07 30       	R0 = R7;
ffa02896:	ff e3 ab f4 	CALL 0xffa011ec <_printf_str>;
ffa0289a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002a8(-7339352) */
ffa0289e:	29 91       	R1 = [P5];
ffa028a0:	00 e1 b4 02 	R0.L = 0x2b4;		/* (692)	R0=0xff9002b4(-7339340) */
ffa028a4:	ff e3 0a f5 	CALL 0xffa012b8 <_printf_hex>;
ffa028a8:	01 e8 00 00 	UNLINK;
ffa028ac:	07 30       	R0 = R7;
ffa028ae:	bd 05       	(R7:7, P5:5) = [SP++];
ffa028b0:	ff e2 9e f4 	JUMP.L 0xffa011ec <_printf_str>;

ffa028b4 <_bfin_EMAC_init>:
ffa028b4:	f3 05       	[--SP] = (R7:6, P5:3);
ffa028b6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002b4(-7339340) */
ffa028ba:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa028be:	00 e1 c0 02 	R0.L = 0x2c0;		/* (704)	R0=0xff9002c0(-7339328) */
ffa028c2:	ff e3 95 f4 	CALL 0xffa011ec <_printf_str>;
ffa028c6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 */
ffa028ca:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa028cc:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa028d0:	16 97       	W[P2] = R6;
ffa028d2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa028d6:	0a e1 60 0e 	P2.L = 0xe60;		/* (3680)	P2=0xff900e60 <_rxIdx> */
ffa028da:	16 97       	W[P2] = R6;
ffa028dc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e60 <_rxIdx> */
ffa028e0:	0a e1 4e 0e 	P2.L = 0xe4e;		/* (3662)	P2=0xff900e4e <_NetIPID> */
ffa028e4:	16 97       	W[P2] = R6;
ffa028e6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4e <_NetIPID> */
ffa028ea:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa028ec:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetSubnetMask> */
ffa028f0:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa028f2:	17 93       	[P2] = R7;
ffa028f4:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa028f8:	f0 b0       	[SP + 0xc] = R0;
ffa028fa:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa028fc:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02900:	ff e3 2c f8 	CALL 0xffa01958 <_FormatIPAddress>;
ffa02904:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e7c <_NetSubnetMask> */
ffa02908:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa0290c:	10 93       	[P2] = R0;
ffa0290e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02910:	f0 b0       	[SP + 0xc] = R0;
ffa02912:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa02916:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02918:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa0291c:	ff e3 1e f8 	CALL 0xffa01958 <_FormatIPAddress>;
ffa02920:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e80 <_NetOurIP> */
ffa02924:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_NetDestIP> */
ffa02928:	10 93       	[P2] = R0;
ffa0292a:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa0292c:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa0292e:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa02932:	f0 b0       	[SP + 0xc] = R0;
ffa02934:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa02938:	ff e3 10 f8 	CALL 0xffa01958 <_FormatIPAddress>;
ffa0293c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_NetDestIP> */
ffa02940:	0a e1 84 0e 	P2.L = 0xe84;		/* (3716)	P2=0xff900e84 <_NetDataDestIP> */
ffa02944:	10 93       	[P2] = R0;
ffa02946:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e84 <_NetDataDestIP> */
ffa0294a:	0a e1 64 0f 	P2.L = 0xf64;		/* (3940)	P2=0xff900f64 <_TcpState> */
ffa0294e:	17 93       	[P2] = R7;
ffa02950:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f64 <_TcpState> */
ffa02954:	0a e1 5c 0f 	P2.L = 0xf5c;		/* (3932)	P2=0xff900f5c <_TcpSeqClient> */
ffa02958:	17 93       	[P2] = R7;
ffa0295a:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa0295e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f5c <_TcpSeqClient> */
ffa02962:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa02966:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa0296a:	10 93       	[P2] = R0;
ffa0296c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa02970:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_TcpClientPort> */
ffa02974:	16 97       	W[P2] = R6;
ffa02976:	00 e3 59 02 	CALL 0xffa02e28 <_ARP_init>;
ffa0297a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00f70(-4190352) */
ffa0297e:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02982:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa02986:	17 93       	[P2] = R7;
ffa02988:	00 e1 74 0e 	R0.L = 0xe74;		/* (3700)	R0=0xff900e74 <_NetOurMAC>(-7336332) */
ffa0298c:	ff e3 4e ff 	CALL 0xffa02828 <_SetupMacAddr>;
ffa02990:	47 30       	R0 = FP;
ffa02992:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa02994:	ff e3 bc fe 	CALL 0xffa0270c <_SetupSystemRegs>;
ffa02998:	80 0c       	CC = R0 < 0x0;
ffa0299a:	7a 18       	IF CC JUMP 0xffa02a8e <_bfin_EMAC_init+0x1da>;
ffa0299c:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa029a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa029a2:	07 e1 64 0e 	R7.L = 0xe64;		/* (3684)	R7=0xff900e64 <_rxbuf>(-7336348) */
ffa029a6:	ff e3 61 fe 	CALL 0xffa02668 <_SetupRxBuffer>;
ffa029aa:	07 32       	P0 = R7;
ffa029ac:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa029ae:	00 93       	[P0] = R0;
ffa029b0:	17 32       	P2 = R7;
ffa029b2:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa029b4:	44 30       	R0 = P4;
ffa029b6:	ff e3 59 fe 	CALL 0xffa02668 <_SetupRxBuffer>;
ffa029ba:	44 0c       	CC = P4 == 0x0;
ffa029bc:	08 32       	P1 = R0;
ffa029be:	28 92       	[P5++] = R0;
ffa029c0:	52 18       	IF CC JUMP 0xffa02a64 <_bfin_EMAC_init+0x1b0>;
ffa029c2:	07 32       	P0 = R7;
ffa029c4:	5c 0c       	CC = P4 == 0x3;
ffa029c6:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa029c8:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa029cc:	d0 b0       	[P2 + 0xc] = R0;
ffa029ce:	54 18       	IF CC JUMP 0xffa02a76 <_bfin_EMAC_init+0x1c2>;
ffa029d0:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa029d2:	5c 0d       	CC = P4 <= 0x3;
ffa029d4:	ee 1f       	IF CC JUMP 0xffa029b0 <_bfin_EMAC_init+0xfc> (BP);
ffa029d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa029d8:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa029dc:	ff e3 f2 fd 	CALL 0xffa025c0 <_SetupTxBuffer>;
ffa029e0:	0b e1 50 0e 	P3.L = 0xe50;		/* (3664)	P3=0xff900e50 <_txbuf> */
ffa029e4:	18 93       	[P3] = R0;
ffa029e6:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa029e8:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa029ea:	44 30       	R0 = P4;
ffa029ec:	ff e3 ea fd 	CALL 0xffa025c0 <_SetupTxBuffer>;
ffa029f0:	44 0c       	CC = P4 == 0x0;
ffa029f2:	08 32       	P1 = R0;
ffa029f4:	28 92       	[P5++] = R0;
ffa029f6:	35 18       	IF CC JUMP 0xffa02a60 <_bfin_EMAC_init+0x1ac>;
ffa029f8:	00 00       	NOP;
ffa029fa:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa029fc:	5c 0c       	CC = P4 == 0x3;
ffa029fe:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa02a02:	d0 b0       	[P2 + 0xc] = R0;
ffa02a04:	32 18       	IF CC JUMP 0xffa02a68 <_bfin_EMAC_init+0x1b4>;
ffa02a06:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa02a08:	5c 0d       	CC = P4 <= 0x3;
ffa02a0a:	ef 1f       	IF CC JUMP 0xffa029e8 <_bfin_EMAC_init+0x134> (BP);
ffa02a0c:	17 32       	P2 = R7;
ffa02a0e:	51 91       	P1 = [P2];
ffa02a10:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa02a14:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa02a18:	51 93       	[P2] = P1;
ffa02a1a:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa02a1c:	42 6c       	P2 += 0x8;		/* (  8) */
ffa02a1e:	10 97       	W[P2] = R0;
ffa02a20:	ff e3 c4 f7 	CALL 0xffa019a8 <_PollMdcDone>;
ffa02a24:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02a26:	f0 b9       	R0 = [FP -0x4];
ffa02a28:	d1 4f       	R1 <<= 0x1a;
ffa02a2a:	08 08       	CC = R0 == R1;
ffa02a2c:	2c 18       	IF CC JUMP 0xffa02a84 <_bfin_EMAC_init+0x1d0>;
ffa02a2e:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02a32:	01 30       	R0 = R1;
ffa02a34:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa02a38:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02a3c:	10 93       	[P2] = R0;
ffa02a3e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02a42:	00 e1 d0 02 	R0.L = 0x2d0;		/* (720)	R0=0xff9002d0(-7339312) */
ffa02a46:	ff e3 39 f4 	CALL 0xffa012b8 <_printf_hex>;
ffa02a4a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002d0(-7339312) */
ffa02a4e:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02a52:	ff e3 cd f3 	CALL 0xffa011ec <_printf_str>;
ffa02a56:	01 e8 00 00 	UNLINK;
ffa02a5a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a5c:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02a5e:	10 00       	RTS;
ffa02a60:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02a62:	c4 2f       	JUMP.S 0xffa029ea <_bfin_EMAC_init+0x136>;
ffa02a64:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02a66:	a7 2f       	JUMP.S 0xffa029b4 <_bfin_EMAC_init+0x100>;
ffa02a68:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa02a6c:	0a e1 50 0e 	P2.L = 0xe50;		/* (3664)	P2=0xff900e50 <_txbuf> */
ffa02a70:	10 91       	R0 = [P2];
ffa02a72:	c8 b0       	[P1 + 0xc] = R0;
ffa02a74:	cc 2f       	JUMP.S 0xffa02a0c <_bfin_EMAC_init+0x158>;
ffa02a76:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e50 <_txbuf> */
ffa02a7a:	0a e1 64 0e 	P2.L = 0xe64;		/* (3684)	P2=0xff900e64 <_rxbuf> */
ffa02a7e:	10 91       	R0 = [P2];
ffa02a80:	c8 b0       	[P1 + 0xc] = R0;
ffa02a82:	aa 2f       	JUMP.S 0xffa029d6 <_bfin_EMAC_init+0x122>;
ffa02a84:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02a88:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa02a8a:	01 30       	R0 = R1;
ffa02a8c:	d4 2f       	JUMP.S 0xffa02a34 <_bfin_EMAC_init+0x180>;
ffa02a8e:	01 e8 00 00 	UNLINK;
ffa02a92:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02a94:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02a96:	10 00       	RTS;

ffa02a98 <_bfin_EMAC_recv_poll>:
ffa02a98:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02a9a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa02a9e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa02aa2:	0d e1 64 0e 	P5.L = 0xe64;		/* (3684)	P5=0xff900e64 <_rxbuf> */
ffa02aa6:	0c e1 60 0e 	P4.L = 0xe60;		/* (3680)	P4=0xff900e60 <_rxIdx> */
ffa02aaa:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02aae:	28 30       	R5 = R0;
ffa02ab0:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02ab2:	75 30       	R6 = P5;
ffa02ab4:	5c 32       	P3 = P4;
ffa02ab6:	06 20       	JUMP.S 0xffa02ac2 <_bfin_EMAC_recv_poll+0x2a>;
ffa02ab8:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02aba:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02abe:	07 08       	CC = R7 == R0;
ffa02ac0:	0c 18       	IF CC JUMP 0xffa02ad8 <_bfin_EMAC_recv_poll+0x40>;
ffa02ac2:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa02ac6:	ff e3 29 f7 	CALL 0xffa01918 <_udelay>;
ffa02aca:	20 95       	R0 = W[P4] (Z);
ffa02acc:	10 32       	P2 = R0;
ffa02ace:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02ad0:	52 91       	P2 = [P2];
ffa02ad2:	90 a2       	R0 = [P2 + 0x28];
ffa02ad4:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02ad6:	f1 1f       	IF CC JUMP 0xffa02ab8 <_bfin_EMAC_recv_poll+0x20> (BP);
ffa02ad8:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02adc:	91 a2       	R1 = [P2 + 0x28];
ffa02ade:	41 54       	R1 = R1 & R0;
ffa02ae0:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02ae2:	01 09       	CC = R1 <= R0;
ffa02ae4:	07 10       	IF !CC JUMP 0xffa02af2 <_bfin_EMAC_recv_poll+0x5a>;
ffa02ae6:	01 e8 00 00 	UNLINK;
ffa02aea:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02aec:	07 30       	R0 = R7;
ffa02aee:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02af0:	10 00       	RTS;
ffa02af2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02af4:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa02af8:	90 b2 00 00 
ffa02afc:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02afe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02b02:	0f 30       	R1 = R7;
ffa02b04:	00 e1 dc 02 	R0.L = 0x2dc;		/* (732)	R0=0xff9002dc(-7339300) */
ffa02b08:	ff e3 34 f4 	CALL 0xffa01370 <_printf_int>;
ffa02b0c:	18 95       	R0 = W[P3] (Z);
ffa02b0e:	10 32       	P2 = R0;
ffa02b10:	0e 32       	P1 = R6;
ffa02b12:	0f 30       	R1 = R7;
ffa02b14:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02b16:	52 91       	P2 = [P2];
ffa02b18:	90 a1       	R0 = [P2 + 0x18];
ffa02b1a:	15 32       	P2 = R5;
ffa02b1c:	10 93       	[P2] = R0;
ffa02b1e:	00 e3 39 02 	CALL 0xffa02f90 <_ARP_rx>;
ffa02b22:	00 0c       	CC = R0 == 0x0;
ffa02b24:	1f 18       	IF CC JUMP 0xffa02b62 <_bfin_EMAC_recv_poll+0xca>;
ffa02b26:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02b28:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02b2c:	20 95       	R0 = W[P4] (Z);
ffa02b2e:	10 32       	P2 = R0;
ffa02b30:	61 95       	R1 = W[P4] (X);
ffa02b32:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b34:	09 e1 60 0e 	P1.L = 0xe60;		/* (3680)	P1=0xff900e60 <_rxIdx> */
ffa02b38:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02b3a:	52 91       	P2 = [P2];
ffa02b3c:	90 b2       	[P2 + 0x28] = R0;
ffa02b3e:	c8 42       	R0 = R1.L (Z);
ffa02b40:	10 0d       	CC = R0 <= 0x2;
ffa02b42:	08 1c       	IF CC JUMP 0xffa02b52 <_bfin_EMAC_recv_poll+0xba> (BP);
ffa02b44:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b46:	08 97       	W[P1] = R0;
ffa02b48:	01 e8 00 00 	UNLINK;
ffa02b4c:	07 30       	R0 = R7;
ffa02b4e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b50:	10 00       	RTS;
ffa02b52:	01 30       	R0 = R1;
ffa02b54:	08 64       	R0 += 0x1;		/* (  1) */
ffa02b56:	08 97       	W[P1] = R0;
ffa02b58:	01 e8 00 00 	UNLINK;
ffa02b5c:	07 30       	R0 = R7;
ffa02b5e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b60:	10 00       	RTS;
ffa02b62:	0d 32       	P1 = R5;
ffa02b64:	0f 30       	R1 = R7;
ffa02b66:	08 91       	R0 = [P1];
ffa02b68:	ff e3 8e fc 	CALL 0xffa02484 <_icmp_rx>;
ffa02b6c:	00 0c       	CC = R0 == 0x0;
ffa02b6e:	dd 1f       	IF CC JUMP 0xffa02b28 <_bfin_EMAC_recv_poll+0x90> (BP);
ffa02b70:	db 2f       	JUMP.S 0xffa02b26 <_bfin_EMAC_recv_poll+0x8e>;
	...

ffa02b74 <_DHCP_rx>:
ffa02b74:	e5 05       	[--SP] = (R7:4, P5:5);
ffa02b76:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02b7a:	67 30       	R4 = FP;
ffa02b7c:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02b7e:	e4 67       	R4 += -0x4;		/* ( -4) */
ffa02b80:	01 20       	JUMP.S 0xffa02b82 <_DHCP_rx+0xe>;
ffa02b82:	04 30       	R0 = R4;
ffa02b84:	ff e3 8a ff 	CALL 0xffa02a98 <_bfin_EMAC_recv_poll>;
ffa02b88:	38 30       	R7 = R0;
ffa02b8a:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa02b8e:	47 51       	R5 = R7 + R0;
ffa02b90:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa02b94:	0d 30       	R1 = R5;
ffa02b96:	00 e1 1c 03 	R0.L = 0x31c;		/* (796)	R0=0xff90031c(-7339236) */
ffa02b9a:	ff e3 eb f3 	CALL 0xffa01370 <_printf_int>;
ffa02b9e:	21 e1 1b 01 	R1 = 0x11b (X);		/*		R1=0x11b(283) */
ffa02ba2:	0f 09       	CC = R7 <= R1;
ffa02ba4:	fd b9       	P5 = [FP -0x4];
ffa02ba6:	0c 18       	IF CC JUMP 0xffa02bbe <_DHCP_rx+0x4a>;
ffa02ba8:	00 00       	NOP;
ffa02baa:	00 00       	NOP;
ffa02bac:	00 00       	NOP;
ffa02bae:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa02bb0:	ff e3 7e f7 	CALL 0xffa01aac <_htons>;
ffa02bb4:	c0 42       	R0 = R0.L (Z);
ffa02bb6:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa02bba:	08 08       	CC = R0 == R1;
ffa02bbc:	0f 18       	IF CC JUMP 0xffa02bda <_DHCP_rx+0x66>;
ffa02bbe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90031c(-7339236) */
ffa02bc2:	00 e1 00 03 	R0.L = 0x300;		/* (768)	R0=0xff900300(-7339264) */
ffa02bc6:	ff e3 13 f3 	CALL 0xffa011ec <_printf_str>;
ffa02bca:	0e 64       	R6 += 0x1;		/* (  1) */
ffa02bcc:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa02bce:	06 09       	CC = R6 <= R0;
ffa02bd0:	d9 1f       	IF CC JUMP 0xffa02b82 <_DHCP_rx+0xe> (BP);
ffa02bd2:	ff e3 75 fa 	CALL 0xffa020bc <_DHCP_tx_discover>;
ffa02bd6:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02bd8:	d5 2f       	JUMP.S 0xffa02b82 <_DHCP_rx+0xe>;
ffa02bda:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa02bde:	ff e3 67 f7 	CALL 0xffa01aac <_htons>;
ffa02be2:	c0 42       	R0 = R0.L (Z);
ffa02be4:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa02be8:	01 08       	CC = R1 == R0;
ffa02bea:	f1 17       	IF !CC JUMP 0xffa02bcc <_DHCP_rx+0x58> (BP);
ffa02bec:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa02bf0:	ff e3 5e f7 	CALL 0xffa01aac <_htons>;
ffa02bf4:	c0 42       	R0 = R0.L (Z);
ffa02bf6:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa02bfa:	01 08       	CC = R1 == R0;
ffa02bfc:	e8 17       	IF !CC JUMP 0xffa02bcc <_DHCP_rx+0x58> (BP);
ffa02bfe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e64(-4190620) */
ffa02c02:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa02c06:	11 91       	R1 = [P2];
ffa02c08:	28 a3       	R0 = [P5 + 0x30];
ffa02c0a:	08 08       	CC = R0 == R1;
ffa02c0c:	e0 17       	IF !CC JUMP 0xffa02bcc <_DHCP_rx+0x58> (BP);
ffa02c0e:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa02c12:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa02c16:	ff e3 57 f7 	CALL 0xffa01ac4 <_htonl>;
ffa02c1a:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa02c1e:	01 08       	CC = R1 == R0;
ffa02c20:	d6 17       	IF !CC JUMP 0xffa02bcc <_DHCP_rx+0x58> (BP);
ffa02c22:	4d 30       	R1 = P5;
ffa02c24:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa02c28:	01 50       	R0 = R1 + R0;
ffa02c2a:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa02c2e:	f0 bb 00 00 
ffa02c32:	ff e3 2d f8 	CALL 0xffa01c8c <_DHCP_parse>;
ffa02c36:	e9 a3       	R1 = [P5 + 0x3c];
ffa02c38:	01 0c       	CC = R1 == 0x0;
ffa02c3a:	12 1c       	IF CC JUMP 0xffa02c5e <_DHCP_rx+0xea> (BP);
ffa02c3c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa02c40:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa02c44:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa02c48:	11 93       	[P2] = R1;
ffa02c4a:	00 e1 f0 02 	R0.L = 0x2f0;		/* (752)	R0=0xff9002f0(-7339280) */
ffa02c4e:	ff e3 33 f4 	CALL 0xffa014b4 <_printf_ip>;
ffa02c52:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002f0(-7339280) */
ffa02c56:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02c5a:	ff e3 c9 f2 	CALL 0xffa011ec <_printf_str>;
ffa02c5e:	01 e8 00 00 	UNLINK;
ffa02c62:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c64:	a5 05       	(R7:4, P5:5) = [SP++];
ffa02c66:	10 00       	RTS;

ffa02c68 <_DHCP_req>:
ffa02c68:	c5 04       	[--SP] = (P5:5);
ffa02c6a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e64 <_rxbuf> */
ffa02c6e:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02c72:	0d e1 48 0e 	P5.L = 0xe48;		/* (3656)	P5=0xff900e48 <_NetDHCPserv> */
ffa02c76:	ff e3 23 fa 	CALL 0xffa020bc <_DHCP_tx_discover>;
ffa02c7a:	ff e3 7d ff 	CALL 0xffa02b74 <_DHCP_rx>;
ffa02c7e:	29 91       	R1 = [P5];
ffa02c80:	39 0c       	CC = R1 == -0x1;
ffa02c82:	42 18       	IF CC JUMP 0xffa02d06 <_DHCP_req+0x9e>;
ffa02c84:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e80 <_NetOurIP> */
ffa02c88:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa02c8c:	10 91       	R0 = [P2];
ffa02c8e:	00 0c       	CC = R0 == 0x0;
ffa02c90:	08 18       	IF CC JUMP 0xffa02ca0 <_DHCP_req+0x38>;
ffa02c92:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e80 <_NetOurIP> */
ffa02c96:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetSubnetMask> */
ffa02c9a:	10 91       	R0 = [P2];
ffa02c9c:	00 0c       	CC = R0 == 0x0;
ffa02c9e:	2f 10       	IF !CC JUMP 0xffa02cfc <_DHCP_req+0x94>;
ffa02ca0:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa02ca2:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa02ca6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ca8:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa02cac:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02cae:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa02cb2:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02cb4:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02cb8:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02cba:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa02cbe:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa02cc2:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa02cc6:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa02cca:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa02cce:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa02cd2:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa02cd6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02cd8:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa02cdc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa02ce0:	00 e1 4c 03 	R0.L = 0x34c;		/* (844)	R0=0xff90034c(-7339188) */
ffa02ce4:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa02ce8:	ff e3 82 f2 	CALL 0xffa011ec <_printf_str>;
ffa02cec:	4f 30       	R1 = FP;
ffa02cee:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02cf0:	a1 67       	R1 += -0xc;		/* (-12) */
ffa02cf2:	2a 91       	R2 = [P5];
ffa02cf4:	ff e3 f4 f8 	CALL 0xffa01edc <_DHCP_tx>;
ffa02cf8:	ff e3 3e ff 	CALL 0xffa02b74 <_DHCP_rx>;
ffa02cfc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02cfe:	01 e8 00 00 	UNLINK;
ffa02d02:	85 04       	(P5:5) = [SP++];
ffa02d04:	10 00       	RTS;
ffa02d06:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02d0a:	00 e1 30 03 	R0.L = 0x330;		/* (816)	R0=0xff900330(-7339216) */
ffa02d0e:	ff e3 6f f2 	CALL 0xffa011ec <_printf_str>;
ffa02d12:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02d14:	f5 2f       	JUMP.S 0xffa02cfe <_DHCP_req+0x96>;
	...

ffa02d18 <_bfin_EMAC_recv>:
ffa02d18:	eb 05       	[--SP] = (R7:5, P5:3);
ffa02d1a:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e60 <_rxIdx> */
ffa02d1e:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000 <_l1_data_a>(-7340032) */
ffa02d22:	0c e1 60 0e 	P4.L = 0xe60;		/* (3680)	P4=0xff900e60 <_rxIdx> */
ffa02d26:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00e50(-4190640) */
ffa02d2a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02d2e:	28 32       	P5 = R0;
ffa02d30:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02d32:	05 e1 64 0e 	R5.L = 0xe64;		/* (3684)	R5=0xff900e64 <_rxbuf>(-7336348) */
ffa02d36:	74 30       	R6 = P4;
ffa02d38:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa02d3c:	0e 32       	P1 = R6;
ffa02d3e:	08 95       	R0 = W[P1] (Z);
ffa02d40:	10 32       	P2 = R0;
ffa02d42:	0d 32       	P1 = R5;
ffa02d44:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02d46:	52 91       	P2 = [P2];
ffa02d48:	90 a2       	R0 = [P2 + 0x28];
ffa02d4a:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02d4c:	46 18       	IF CC JUMP 0xffa02dd8 <_bfin_EMAC_recv+0xc0>;
ffa02d4e:	00 00       	NOP;
ffa02d50:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d52:	a0 4f       	R0 <<= 0x14;
ffa02d54:	91 a2       	R1 = [P2 + 0x28];
ffa02d56:	81 54       	R2 = R1 & R0;
ffa02d58:	02 0c       	CC = R2 == 0x0;
ffa02d5a:	45 10       	IF !CC JUMP 0xffa02de4 <_bfin_EMAC_recv+0xcc>;
ffa02d5c:	00 00       	NOP;
ffa02d5e:	00 00       	NOP;
ffa02d60:	00 00       	NOP;
ffa02d62:	90 a2       	R0 = [P2 + 0x28];
ffa02d64:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa02d66:	4a 18       	IF CC JUMP 0xffa02dfa <_bfin_EMAC_recv+0xe2>;
ffa02d68:	00 00       	NOP;
ffa02d6a:	00 00       	NOP;
ffa02d6c:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02d70:	91 a2       	R1 = [P2 + 0x28];
ffa02d72:	c1 55       	R7 = R1 & R0;
ffa02d74:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02d76:	07 09       	CC = R7 <= R0;
ffa02d78:	4c 18       	IF CC JUMP 0xffa02e10 <_bfin_EMAC_recv+0xf8>;
ffa02d7a:	00 00       	NOP;
ffa02d7c:	00 00       	NOP;
ffa02d7e:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02d80:	90 a1       	R0 = [P2 + 0x18];
ffa02d82:	59 95       	R1 = W[P3] (X);
ffa02d84:	28 93       	[P5] = R0;
ffa02d86:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02d88:	08 56       	R0 = R0 | R1;
ffa02d8a:	18 97       	W[P3] = R0;
ffa02d8c:	61 95       	R1 = W[P4] (X);
ffa02d8e:	c8 42       	R0 = R1.L (Z);
ffa02d90:	10 0d       	CC = R0 <= 0x2;
ffa02d92:	92 b2       	[P2 + 0x28] = R2;
ffa02d94:	1e 1c       	IF CC JUMP 0xffa02dd0 <_bfin_EMAC_recv+0xb8> (BP);
ffa02d96:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02d98:	20 97       	W[P4] = R0;
ffa02d9a:	28 91       	R0 = [P5];
ffa02d9c:	0f 30       	R1 = R7;
ffa02d9e:	00 e3 f9 00 	CALL 0xffa02f90 <_ARP_rx>;
ffa02da2:	00 0c       	CC = R0 == 0x0;
ffa02da4:	03 18       	IF CC JUMP 0xffa02daa <_bfin_EMAC_recv+0x92>;
ffa02da6:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02da8:	ca 2f       	JUMP.S 0xffa02d3c <_bfin_EMAC_recv+0x24>;
ffa02daa:	28 91       	R0 = [P5];
ffa02dac:	0f 30       	R1 = R7;
ffa02dae:	ff e3 6b fb 	CALL 0xffa02484 <_icmp_rx>;
ffa02db2:	00 0c       	CC = R0 == 0x0;
ffa02db4:	f9 17       	IF !CC JUMP 0xffa02da6 <_bfin_EMAC_recv+0x8e> (BP);
ffa02db6:	28 91       	R0 = [P5];
ffa02db8:	0f 30       	R1 = R7;
ffa02dba:	00 e3 49 04 	CALL 0xffa0364c <_tcp_rx>;
ffa02dbe:	00 0c       	CC = R0 == 0x0;
ffa02dc0:	f3 17       	IF !CC JUMP 0xffa02da6 <_bfin_EMAC_recv+0x8e> (BP);
ffa02dc2:	07 0d       	CC = R7 <= 0x0;
ffa02dc4:	bc 1f       	IF CC JUMP 0xffa02d3c <_bfin_EMAC_recv+0x24> (BP);
ffa02dc6:	01 e8 00 00 	UNLINK;
ffa02dca:	07 30       	R0 = R7;
ffa02dcc:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02dce:	10 00       	RTS;
ffa02dd0:	01 30       	R0 = R1;
ffa02dd2:	08 64       	R0 += 0x1;		/* (  1) */
ffa02dd4:	20 97       	W[P4] = R0;
ffa02dd6:	e2 2f       	JUMP.S 0xffa02d9a <_bfin_EMAC_recv+0x82>;
ffa02dd8:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02dda:	01 e8 00 00 	UNLINK;
ffa02dde:	07 30       	R0 = R7;
ffa02de0:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02de2:	10 00       	RTS;
ffa02de4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02de8:	00 e1 60 03 	R0.L = 0x360;		/* (864)	R0=0xff900360(-7339168) */
ffa02dec:	ff e3 00 f2 	CALL 0xffa011ec <_printf_str>;
ffa02df0:	01 e8 00 00 	UNLINK;
ffa02df4:	07 30       	R0 = R7;
ffa02df6:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02df8:	10 00       	RTS;
ffa02dfa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900360(-7339168) */
ffa02dfe:	00 e1 7c 03 	R0.L = 0x37c;		/* (892)	R0=0xff90037c(-7339140) */
ffa02e02:	ff e3 f5 f1 	CALL 0xffa011ec <_printf_str>;
ffa02e06:	01 e8 00 00 	UNLINK;
ffa02e0a:	07 30       	R0 = R7;
ffa02e0c:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02e0e:	10 00       	RTS;
ffa02e10:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90037c(-7339140) */
ffa02e14:	00 e1 90 03 	R0.L = 0x390;		/* (912)	R0=0xff900390(-7339120) */
ffa02e18:	ff e3 ea f1 	CALL 0xffa011ec <_printf_str>;
ffa02e1c:	01 e8 00 00 	UNLINK;
ffa02e20:	07 30       	R0 = R7;
ffa02e22:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02e24:	10 00       	RTS;
	...

ffa02e28 <_ARP_init>:
ffa02e28:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e7c <_NetSubnetMask> */
ffa02e2c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02e30:	0a e1 8c 0e 	P2.L = 0xe8c;		/* (3724)	P2=0xff900e8c <_NetArpLut> */
ffa02e34:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02e36:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02e38:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02e3a:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa02e3c:	b2 e0 12 10 	LSETUP(0xffa02e40 <_ARP_init+0x18>, 0xffa02e60 <_ARP_init+0x38>) LC1 = P1;
ffa02e40:	11 93       	[P2] = R1;
ffa02e42:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02e46:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02e4a:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa02e4e:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa02e52:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02e56:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02e5a:	52 b5       	W[P2 + 0xa] = R2;
ffa02e5c:	d1 b0       	[P2 + 0xc] = R1;
ffa02e5e:	11 b1       	[P2 + 0x10] = R1;
ffa02e60:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa02e62:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e8c <_NetArpLut> */
ffa02e66:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02e6a:	0a e1 88 0e 	P2.L = 0xe88;		/* (3720)	P2=0xff900e88 <_NetArpLut_age> */
ffa02e6e:	10 97       	W[P2] = R0;
ffa02e70:	01 e8 00 00 	UNLINK;
ffa02e74:	10 00       	RTS;
	...

ffa02e78 <_ARP_lut_find>:
ffa02e78:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e4c <_txIdx> */
ffa02e7c:	08 e1 8c 0e 	P0.L = 0xe8c;		/* (3724)	P0=0xff900e8c <_NetArpLut> */
ffa02e80:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02e84:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02e86:	48 32       	P1 = P0;
ffa02e88:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02e8a:	b2 e0 06 20 	LSETUP(0xffa02e8e <_ARP_lut_find+0x16>, 0xffa02e96 <_ARP_lut_find+0x1e>) LC1 = P2;
ffa02e8e:	08 91       	R0 = [P1];
ffa02e90:	00 0c       	CC = R0 == 0x0;
ffa02e92:	14 18       	IF CC JUMP 0xffa02eba <_ARP_lut_find+0x42>;
ffa02e94:	0a 64       	R2 += 0x1;		/* (  1) */
ffa02e96:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02e98:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa02e9c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02e9e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02ea0:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa02ea2:	09 e1 aa 0e 	P1.L = 0xeaa;		/* (3754)	P1=0xff900eaa */
ffa02ea6:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa02ea8:	b2 e0 08 20 	LSETUP(0xffa02eac <_ARP_lut_find+0x34>, 0xffa02eb8 <_ARP_lut_find+0x40>) LC1 = P2;
ffa02eac:	08 95       	R0 = W[P1] (Z);
ffa02eae:	03 09       	CC = R3 <= R0;
ffa02eb0:	03 18       	IF CC JUMP 0xffa02eb6 <_ARP_lut_find+0x3e>;
ffa02eb2:	11 30       	R2 = R1;
ffa02eb4:	18 30       	R3 = R0;
ffa02eb6:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02eb8:	09 64       	R1 += 0x1;		/* (  1) */
ffa02eba:	02 30       	R0 = R2;
ffa02ebc:	01 e8 00 00 	UNLINK;
ffa02ec0:	10 00       	RTS;
	...

ffa02ec4 <_ARP_lut_add>:
ffa02ec4:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02ec6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e48 <_NetDHCPserv> */
ffa02eca:	0d e1 8c 0e 	P5.L = 0xe8c;		/* (3724)	P5=0xff900e8c <_NetArpLut> */
ffa02ece:	31 30       	R6 = R1;
ffa02ed0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02ed4:	38 30       	R7 = R0;
ffa02ed6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02ed8:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa02eda:	4d 32       	P1 = P5;
ffa02edc:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02ede:	00 00       	NOP;
ffa02ee0:	08 91       	R0 = [P1];
ffa02ee2:	07 08       	CC = R7 == R0;
ffa02ee4:	11 07       	IF CC R2 = R1;
ffa02ee6:	09 64       	R1 += 0x1;		/* (  1) */
ffa02ee8:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa02eea:	42 0c       	CC = P2 == 0x0;
ffa02eec:	23 10       	IF !CC JUMP 0xffa02f32 <_ARP_lut_add+0x6e>;
ffa02eee:	82 0c       	CC = R2 < 0x0;
ffa02ef0:	25 18       	IF CC JUMP 0xffa02f3a <_ARP_lut_add+0x76>;
ffa02ef2:	82 c6 12 82 	R1 = R2 << 0x2;
ffa02ef6:	0a 32       	P1 = R2;
ffa02ef8:	11 32       	P2 = R1;
ffa02efa:	06 32       	P0 = R6;
ffa02efc:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa02efe:	6a 5a       	P1 = P2 + P5;
ffa02f00:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02f02:	0f 93       	[P1] = R7;
ffa02f04:	aa 5a       	P2 = P2 + P5;
ffa02f06:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02f08:	b2 e0 03 10 	LSETUP(0xffa02f0c <_ARP_lut_add+0x48>, 0xffa02f0e <_ARP_lut_add+0x4a>) LC1 = P1;
ffa02f0c:	40 98       	R0 = B[P0++] (X);
ffa02f0e:	10 9a       	B[P2++] = R0;
ffa02f10:	51 41       	R1 = (R1 + R2) << 0x2;
ffa02f12:	09 32       	P1 = R1;
ffa02f14:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa02f18:	0a e1 88 0e 	P2.L = 0xe88;		/* (3720)	P2=0xff900e88 <_NetArpLut_age> */
ffa02f1c:	50 95       	R0 = W[P2] (X);
ffa02f1e:	08 64       	R0 += 0x1;		/* (  1) */
ffa02f20:	10 97       	W[P2] = R0;
ffa02f22:	a9 5a       	P2 = P1 + P5;
ffa02f24:	50 b5       	W[P2 + 0xa] = R0;
ffa02f26:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f28:	10 b1       	[P2 + 0x10] = R0;
ffa02f2a:	01 e8 00 00 	UNLINK;
ffa02f2e:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02f30:	10 00       	RTS;
ffa02f32:	82 0c       	CC = R2 < 0x0;
ffa02f34:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02f36:	d4 1f       	IF CC JUMP 0xffa02ede <_ARP_lut_add+0x1a> (BP);
ffa02f38:	dd 2f       	JUMP.S 0xffa02ef2 <_ARP_lut_add+0x2e>;
ffa02f3a:	ff e3 9f ff 	CALL 0xffa02e78 <_ARP_lut_find>;
ffa02f3e:	10 30       	R2 = R0;
ffa02f40:	d9 2f       	JUMP.S 0xffa02ef2 <_ARP_lut_add+0x2e>;
	...

ffa02f44 <_ARP_lu>:
ffa02f44:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02f48:	c4 04       	[--SP] = (P5:4);
ffa02f4a:	09 e1 8c 0e 	P1.L = 0xe8c;		/* (3724)	P1=0xff900e8c <_NetArpLut> */
ffa02f4e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02f52:	10 30       	R2 = R0;
ffa02f54:	29 32       	P5 = R1;
ffa02f56:	61 32       	P4 = P1;
ffa02f58:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa02f5a:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02f5c:	b2 e0 06 20 	LSETUP(0xffa02f60 <_ARP_lu+0x1c>, 0xffa02f68 <_ARP_lu+0x24>) LC1 = P2;
ffa02f60:	08 91       	R0 = [P1];
ffa02f62:	10 08       	CC = R0 == R2;
ffa02f64:	08 18       	IF CC JUMP 0xffa02f74 <_ARP_lu+0x30>;
ffa02f66:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa02f68:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02f6a:	01 e8 00 00 	UNLINK;
ffa02f6e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f70:	84 04       	(P5:4) = [SP++];
ffa02f72:	10 00       	RTS;
ffa02f74:	08 a1       	R0 = [P1 + 0x10];
ffa02f76:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02f78:	f7 1f       	IF CC JUMP 0xffa02f66 <_ARP_lu+0x22> (BP);
ffa02f7a:	60 5a       	P1 = P0 + P4;
ffa02f7c:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa02f7e:	b2 e0 03 20 	LSETUP(0xffa02f82 <_ARP_lu+0x3e>, 0xffa02f84 <_ARP_lu+0x40>) LC1 = P2;
ffa02f82:	48 98       	R0 = B[P1++] (X);
ffa02f84:	28 9a       	B[P5++] = R0;
ffa02f86:	01 e8 00 00 	UNLINK;
ffa02f8a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f8c:	84 04       	(P5:4) = [SP++];
ffa02f8e:	10 00       	RTS;

ffa02f90 <_ARP_rx>:
ffa02f90:	fb 05       	[--SP] = (R7:7, P5:3);
ffa02f92:	20 32       	P4 = R0;
ffa02f94:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02f98:	39 30       	R7 = R1;
ffa02f9a:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa02f9c:	ff e3 88 f5 	CALL 0xffa01aac <_htons>;
ffa02fa0:	c0 42       	R0 = R0.L (Z);
ffa02fa2:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa02fa6:	08 08       	CC = R0 == R1;
ffa02fa8:	06 18       	IF CC JUMP 0xffa02fb4 <_ARP_rx+0x24>;
ffa02faa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02fac:	01 e8 00 00 	UNLINK;
ffa02fb0:	bb 05       	(R7:7, P5:3) = [SP++];
ffa02fb2:	10 00       	RTS;
ffa02fb4:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02fb6:	07 0a       	CC = R7 <= R0 (IU);
ffa02fb8:	f9 1f       	IF CC JUMP 0xffa02faa <_ARP_rx+0x1a> (BP);
ffa02fba:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02fbc:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02fbe:	ff e3 77 f5 	CALL 0xffa01aac <_htons>;
ffa02fc2:	c0 42       	R0 = R0.L (Z);
ffa02fc4:	07 08       	CC = R7 == R0;
ffa02fc6:	f2 17       	IF !CC JUMP 0xffa02faa <_ARP_rx+0x1a> (BP);
ffa02fc8:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02fcc:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02fce:	ff e3 6f f5 	CALL 0xffa01aac <_htons>;
ffa02fd2:	c0 42       	R0 = R0.L (Z);
ffa02fd4:	07 08       	CC = R7 == R0;
ffa02fd6:	ea 17       	IF !CC JUMP 0xffa02faa <_ARP_rx+0x1a> (BP);
ffa02fd8:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02fda:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02fde:	08 08       	CC = R0 == R1;
ffa02fe0:	e5 17       	IF !CC JUMP 0xffa02faa <_ARP_rx+0x1a> (BP);
ffa02fe2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02fe4:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02fe6:	ff e3 63 f5 	CALL 0xffa01aac <_htons>;
ffa02fea:	c0 42       	R0 = R0.L (Z);
ffa02fec:	07 08       	CC = R7 == R0;
ffa02fee:	0c 14       	IF !CC JUMP 0xffa03006 <_ARP_rx+0x76> (BP);
ffa02ff0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa02ff4:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetOurMAC> */
ffa02ff8:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa02ffc:	10 99       	R0 = B[P2] (Z);
ffa02ffe:	01 08       	CC = R1 == R0;
ffa03000:	ae 18       	IF CC JUMP 0xffa0315c <_ARP_rx+0x1cc>;
ffa03002:	00 00       	NOP;
ffa03004:	00 00       	NOP;
ffa03006:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03008:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa0300a:	ff e3 51 f5 	CALL 0xffa01aac <_htons>;
ffa0300e:	c0 42       	R0 = R0.L (Z);
ffa03010:	07 08       	CC = R7 == R0;
ffa03012:	cc 17       	IF !CC JUMP 0xffa02faa <_ARP_rx+0x1a> (BP);
ffa03014:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03018:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa0301a:	ff e3 49 f5 	CALL 0xffa01aac <_htons>;
ffa0301e:	c0 42       	R0 = R0.L (Z);
ffa03020:	07 08       	CC = R7 == R0;
ffa03022:	c4 17       	IF !CC JUMP 0xffa02faa <_ARP_rx+0x1a> (BP);
ffa03024:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa03026:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa0302a:	08 08       	CC = R0 == R1;
ffa0302c:	bf 17       	IF !CC JUMP 0xffa02faa <_ARP_rx+0x1a> (BP);
ffa0302e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03030:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa03032:	ff e3 3d f5 	CALL 0xffa01aac <_htons>;
ffa03036:	c0 42       	R0 = R0.L (Z);
ffa03038:	07 08       	CC = R7 == R0;
ffa0303a:	b8 17       	IF !CC JUMP 0xffa02faa <_ARP_rx+0x1a> (BP);
ffa0303c:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa03040:	07 e1 80 0e 	R7.L = 0xe80;		/* (3712)	R7=0xff900e80 <_NetOurIP>(-7336320) */
ffa03044:	17 32       	P2 = R7;
ffa03046:	a1 a2       	R1 = [P4 + 0x28];
ffa03048:	10 91       	R0 = [P2];
ffa0304a:	01 08       	CC = R1 == R0;
ffa0304c:	af 17       	IF !CC JUMP 0xffa02faa <_ARP_rx+0x1a> (BP);
ffa0304e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e74 <_NetOurMAC> */
ffa03052:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa03056:	10 95       	R0 = W[P2] (Z);
ffa03058:	10 32       	P2 = R0;
ffa0305a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e8c <_NetArpLut> */
ffa0305e:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa03062:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa03064:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e8c <_NetArpLut> */
ffa03068:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0306a:	52 91       	P2 = [P2];
ffa0306c:	0d e1 74 0e 	P5.L = 0xe74;		/* (3700)	P5=0xff900e74 <_NetOurMAC> */
ffa03070:	93 ad       	P3 = [P2 + 0x18];
ffa03072:	18 97       	W[P3] = R0;
ffa03074:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa03078:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa0307c:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa03080:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa03084:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa03088:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa0308c:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa03090:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa03094:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa03098:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa0309c:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa030a0:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa030a4:	68 99       	R0 = B[P5] (X);
ffa030a6:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa030aa:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa030ae:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa030b2:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa030b6:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa030ba:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa030be:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa030c2:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa030c6:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa030ca:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa030ce:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa030d2:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa030d6:	ff e3 eb f4 	CALL 0xffa01aac <_htons>;
ffa030da:	d8 b5       	W[P3 + 0xe] = R0;
ffa030dc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa030de:	ff e3 e7 f4 	CALL 0xffa01aac <_htons>;
ffa030e2:	18 b6       	W[P3 + 0x10] = R0;
ffa030e4:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa030e8:	ff e3 e2 f4 	CALL 0xffa01aac <_htons>;
ffa030ec:	58 b6       	W[P3 + 0x12] = R0;
ffa030ee:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa030f0:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa030f4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa030f6:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa030fa:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa030fc:	ff e3 d8 f4 	CALL 0xffa01aac <_htons>;
ffa03100:	44 32       	P0 = P4;
ffa03102:	d8 b6       	W[P3 + 0x16] = R0;
ffa03104:	53 32       	P2 = P3;
ffa03106:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa03108:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa0310a:	b2 e0 08 10 	LSETUP(0xffa0310e <_ARP_rx+0x17e>, 0xffa0311a <_ARP_rx+0x18a>) LC1 = P1;
ffa0310e:	68 98       	R0 = B[P5++] (X);
ffa03110:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa03114:	40 98       	R0 = B[P0++] (X);
ffa03116:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa0311a:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0311c:	17 32       	P2 = R7;
ffa0311e:	50 99       	R0 = B[P2] (X);
ffa03120:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa03124:	10 91       	R0 = [P2];
ffa03126:	40 4e       	R0 >>= 0x8;
ffa03128:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa0312c:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa03130:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa03134:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa03138:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa0313c:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa03140:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa03144:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa03148:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa0314c:	f3 b0       	[SP + 0xc] = R3;
ffa0314e:	ff e3 05 f4 	CALL 0xffa01958 <_FormatIPAddress>;
ffa03152:	98 b2       	[P3 + 0x28] = R0;
ffa03154:	ff e3 56 f6 	CALL 0xffa01e00 <_bfin_EMAC_send_nocopy>;
ffa03158:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0315a:	29 2f       	JUMP.S 0xffa02fac <_ARP_rx+0x1c>;
ffa0315c:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa03160:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa03164:	01 08       	CC = R1 == R0;
ffa03166:	50 17       	IF !CC JUMP 0xffa03006 <_ARP_rx+0x76> (BP);
ffa03168:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa0316c:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa03170:	01 08       	CC = R1 == R0;
ffa03172:	4a 17       	IF !CC JUMP 0xffa03006 <_ARP_rx+0x76> (BP);
ffa03174:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa03178:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa0317c:	01 08       	CC = R1 == R0;
ffa0317e:	44 17       	IF !CC JUMP 0xffa03006 <_ARP_rx+0x76> (BP);
ffa03180:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa03184:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa03188:	01 08       	CC = R1 == R0;
ffa0318a:	3e 17       	IF !CC JUMP 0xffa03006 <_ARP_rx+0x76> (BP);
ffa0318c:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa03190:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa03194:	01 08       	CC = R1 == R0;
ffa03196:	38 17       	IF !CC JUMP 0xffa03006 <_ARP_rx+0x76> (BP);
ffa03198:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa0319a:	44 30       	R0 = P4;
ffa0319c:	ff e3 a8 f4 	CALL 0xffa01aec <_pack4chars>;
ffa031a0:	38 30       	R7 = R0;
ffa031a2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa031a6:	0f 30       	R1 = R7;
ffa031a8:	00 e1 9c 04 	R0.L = 0x49c;		/* (1180)	R0=0xff90049c(-7338852) */
ffa031ac:	ff e3 84 f1 	CALL 0xffa014b4 <_printf_ip>;
ffa031b0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90049c(-7338852) */
ffa031b4:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa031b8:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa031ba:	ff e3 19 f0 	CALL 0xffa011ec <_printf_str>;
ffa031be:	07 30       	R0 = R7;
ffa031c0:	4c 30       	R1 = P4;
ffa031c2:	ff e3 81 fe 	CALL 0xffa02ec4 <_ARP_lut_add>;
ffa031c6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa031c8:	f2 2e       	JUMP.S 0xffa02fac <_ARP_rx+0x1c>;
	...

ffa031cc <_ARP_tx>:
ffa031cc:	fc 05       	[--SP] = (R7:7, P5:4);
ffa031ce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa031d2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa031d6:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa031da:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa031de:	10 95 00 00 
ffa031e2:	10 32       	P2 = R0;
ffa031e4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa031e8:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa031ec:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa031ee:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e74 <_NetOurMAC> */
ffa031f2:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa031f4:	52 91       	P2 = [P2];
ffa031f6:	0d e1 74 0e 	P5.L = 0xe74;		/* (3700)	P5=0xff900e74 <_NetOurMAC> */
ffa031fa:	94 ad       	P4 = [P2 + 0x18];
ffa031fc:	20 97       	W[P4] = R0;
ffa031fe:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03200:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa03204:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa03208:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa0320c:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa03210:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa03214:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa03218:	68 99       	R0 = B[P5] (X);
ffa0321a:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa0321e:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa03222:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa03226:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa0322a:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa0322e:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa03232:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa03236:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa0323a:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa0323e:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa03242:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa03246:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa0324a:	ff e3 31 f4 	CALL 0xffa01aac <_htons>;
ffa0324e:	e0 b5       	W[P4 + 0xe] = R0;
ffa03250:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03252:	ff e3 2d f4 	CALL 0xffa01aac <_htons>;
ffa03256:	20 b6       	W[P4 + 0x10] = R0;
ffa03258:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa0325c:	ff e3 28 f4 	CALL 0xffa01aac <_htons>;
ffa03260:	60 b6       	W[P4 + 0x12] = R0;
ffa03262:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03264:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa03268:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0326a:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa0326e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03270:	ff e3 1e f4 	CALL 0xffa01aac <_htons>;
ffa03274:	e0 b6       	W[P4 + 0x16] = R0;
ffa03276:	54 32       	P2 = P4;
ffa03278:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0327a:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa0327c:	b2 e0 07 10 	LSETUP(0xffa03280 <_ARP_tx+0xb4>, 0xffa0328a <_ARP_tx+0xbe>) LC1 = P1;
ffa03280:	68 98       	R0 = B[P5++] (X);
ffa03282:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa03286:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa0328a:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0328c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa03290:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa03294:	50 99       	R0 = B[P2] (X);
ffa03296:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa0329a:	10 91       	R0 = [P2];
ffa0329c:	40 4e       	R0 >>= 0x8;
ffa0329e:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa032a2:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa032a6:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa032aa:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa032ae:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa032b2:	a7 b2       	[P4 + 0x28] = R7;
ffa032b4:	01 e8 00 00 	UNLINK;
ffa032b8:	bc 05       	(R7:7, P5:4) = [SP++];
ffa032ba:	ff e2 a3 f5 	JUMP.L 0xffa01e00 <_bfin_EMAC_send_nocopy>;
	...

ffa032c0 <_ARP_req>:
ffa032c0:	ec 05       	[--SP] = (R7:5, P5:4);
ffa032c2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa032c6:	38 30       	R7 = R0;
ffa032c8:	ff e3 3e fe 	CALL 0xffa02f44 <_ARP_lu>;
ffa032cc:	00 0c       	CC = R0 == 0x0;
ffa032ce:	50 10       	IF !CC JUMP 0xffa0336e <_ARP_req+0xae>;
ffa032d0:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800e80 */
ffa032d4:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa032d8:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e60 <_rxIdx> */
ffa032dc:	16 91       	R6 = [P2];
ffa032de:	0c e1 8c 0e 	P4.L = 0xe8c;		/* (3724)	P4=0xff900e8c <_NetArpLut> */
ffa032e2:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa032e6:	4c 32       	P1 = P4;
ffa032e8:	46 51       	R5 = R6 + R0;
ffa032ea:	6c 32       	P5 = P4;
ffa032ec:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa032ee:	b2 e0 06 20 	LSETUP(0xffa032f2 <_ARP_req+0x32>, 0xffa032fa <_ARP_req+0x3a>) LC1 = P2;
ffa032f2:	08 91       	R0 = [P1];
ffa032f4:	07 08       	CC = R7 == R0;
ffa032f6:	21 18       	IF CC JUMP 0xffa03338 <_ARP_req+0x78>;
ffa032f8:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa032fa:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa032fc:	ff e3 be fd 	CALL 0xffa02e78 <_ARP_lut_find>;
ffa03300:	10 32       	P2 = R0;
ffa03302:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03304:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa03308:	09 e1 88 0e 	P1.L = 0xe88;		/* (3720)	P1=0xff900e88 <_NetArpLut_age> */
ffa0330c:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa0330e:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa03310:	10 b1       	[P2 + 0x10] = R0;
ffa03312:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa03316:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa0331a:	17 93 00 00 
ffa0331e:	d0 b0       	[P2 + 0xc] = R0;
ffa03320:	48 95       	R0 = W[P1] (X);
ffa03322:	08 64       	R0 += 0x1;		/* (  1) */
ffa03324:	08 97       	W[P1] = R0;
ffa03326:	50 b5       	W[P2 + 0xa] = R0;
ffa03328:	07 30       	R0 = R7;
ffa0332a:	ff e3 51 ff 	CALL 0xffa031cc <_ARP_tx>;
ffa0332e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03330:	01 e8 00 00 	UNLINK;
ffa03334:	ac 05       	(R7:5, P5:4) = [SP++];
ffa03336:	10 00       	RTS;
ffa03338:	08 a1       	R0 = [P1 + 0x10];
ffa0333a:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa0333c:	de 1f       	IF CC JUMP 0xffa032f8 <_ARP_req+0x38> (BP);
ffa0333e:	e8 a0       	R0 = [P5 + 0xc];
ffa03340:	86 09       	CC = R6 < R0 (IU);
ffa03342:	f6 1f       	IF CC JUMP 0xffa0332e <_ARP_req+0x6e> (BP);
ffa03344:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03348:	0f 30       	R1 = R7;
ffa0334a:	00 e1 c0 04 	R0.L = 0x4c0;		/* (1216)	R0=0xff9004c0(-7338816) */
ffa0334e:	ff e3 b3 f0 	CALL 0xffa014b4 <_printf_ip>;
ffa03352:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004c0(-7338816) */
ffa03356:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa0335a:	ff e3 49 ef 	CALL 0xffa011ec <_printf_str>;
ffa0335e:	07 30       	R0 = R7;
ffa03360:	ff e3 36 ff 	CALL 0xffa031cc <_ARP_tx>;
ffa03364:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa03368:	ed b0 00 00 
ffa0336c:	e2 2f       	JUMP.S 0xffa03330 <_ARP_req+0x70>;
ffa0336e:	01 e8 00 00 	UNLINK;
ffa03372:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03374:	ac 05       	(R7:5, P5:4) = [SP++];
ffa03376:	10 00       	RTS;

ffa03378 <_tcp_length>:
ffa03378:	c5 04       	[--SP] = (P5:5);
ffa0337a:	28 32       	P5 = R0;
ffa0337c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03380:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa03382:	ff e3 95 f3 	CALL 0xffa01aac <_htons>;
ffa03386:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa0338a:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa0338c:	51 54       	R1 = R1 & R2;
ffa0338e:	11 4f       	R1 <<= 0x2;
ffa03390:	c0 42       	R0 = R0.L (Z);
ffa03392:	08 52       	R0 = R0 - R1;
ffa03394:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa03398:	11 4d       	R1 >>>= 0x2;
ffa0339a:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa0339c:	51 54       	R1 = R1 & R2;
ffa0339e:	01 e8 00 00 	UNLINK;
ffa033a2:	08 52       	R0 = R0 - R1;
ffa033a4:	85 04       	(P5:5) = [SP++];
ffa033a6:	10 00       	RTS;

ffa033a8 <_tcp_checksum_calc>:
ffa033a8:	08 32       	P1 = R0;
ffa033aa:	ed 05       	[--SP] = (R7:5, P5:5);
ffa033ac:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa033b0:	28 32       	P5 = R0;
ffa033b2:	31 30       	R6 = R1;
ffa033b4:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa033b6:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa033b8:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa033ba:	b2 e0 03 20 	LSETUP(0xffa033be <_tcp_checksum_calc+0x16>, 0xffa033c0 <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa033be:	08 94       	R0 = W[P1++] (Z);
ffa033c0:	45 51       	R5 = R5 + R0;
ffa033c2:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa033c6:	10 4e       	R0 >>= 0x2;
ffa033c8:	06 50       	R0 = R6 + R0;
ffa033ca:	c0 42       	R0 = R0.L (Z);
ffa033cc:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa033d0:	ff e3 6e f3 	CALL 0xffa01aac <_htons>;
ffa033d4:	47 4f       	R7 <<= 0x8;
ffa033d6:	c0 42       	R0 = R0.L (Z);
ffa033d8:	c7 51       	R7 = R7 + R0;
ffa033da:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa033dc:	ef 50       	R3 = R7 + R5;
ffa033de:	0d 1c       	IF CC JUMP 0xffa033f8 <_tcp_checksum_calc+0x50> (BP);
ffa033e0:	0e 32       	P1 = R6;
ffa033e2:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa033e6:	10 4e       	R0 >>= 0x2;
ffa033e8:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa033ea:	0e 64       	R6 += 0x1;		/* (  1) */
ffa033ec:	a9 5a       	P2 = P1 + P5;
ffa033ee:	08 32       	P1 = R0;
ffa033f0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa033f2:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa033f4:	8a 5a       	P2 = P2 + P1;
ffa033f6:	10 9b       	B[P2] = R0;
ffa033f8:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa033fc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa033fe:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa03402:	71 50       	R1 = R1 + R6;
ffa03404:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03408:	09 4d       	R1 >>>= 0x1;
ffa0340a:	18 4e       	R0 >>= 0x3;
ffa0340c:	41 50       	R1 = R1 + R0;
ffa0340e:	01 0d       	CC = R1 <= 0x0;
ffa03410:	09 18       	IF CC JUMP 0xffa03422 <_tcp_checksum_calc+0x7a>;
ffa03412:	55 32       	P2 = P5;
ffa03414:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa03416:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa03418:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0341a:	10 94       	R0 = W[P2++] (Z);
ffa0341c:	0a 08       	CC = R2 == R1;
ffa0341e:	c3 50       	R3 = R3 + R0;
ffa03420:	fc 17       	IF !CC JUMP 0xffa03418 <_tcp_checksum_calc+0x70> (BP);
ffa03422:	d8 42       	R0 = R3.L (Z);
ffa03424:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa03428:	08 50       	R0 = R0 + R1;
ffa0342a:	c0 43       	R0 =~ R0;
ffa0342c:	01 e8 00 00 	UNLINK;
ffa03430:	c0 42       	R0 = R0.L (Z);
ffa03432:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03434:	10 00       	RTS;
	...

ffa03438 <_tcp_checksum_set>:
ffa03438:	c5 04       	[--SP] = (P5:5);
ffa0343a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa0343e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03442:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa03446:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa0344a:	10 95 00 00 
ffa0344e:	10 32       	P2 = R0;
ffa03450:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e88 <_NetArpLut_age> */
ffa03454:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa03458:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0345a:	52 91       	P2 = [P2];
ffa0345c:	95 ad       	P5 = [P2 + 0x18];
ffa0345e:	45 30       	R0 = P5;
ffa03460:	ff e3 a4 ff 	CALL 0xffa033a8 <_tcp_checksum_calc>;
ffa03464:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa03468:	01 e8 00 00 	UNLINK;
ffa0346c:	85 04       	(P5:5) = [SP++];
ffa0346e:	10 00       	RTS;

ffa03470 <_tcp_checksum_check>:
ffa03470:	10 32       	P2 = R0;
ffa03472:	78 05       	[--SP] = (R7:7);
ffa03474:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03478:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa0347c:	ff e3 96 ff 	CALL 0xffa033a8 <_tcp_checksum_calc>;
ffa03480:	0f 30       	R1 = R7;
ffa03482:	c7 42       	R7 = R0.L (Z);
ffa03484:	39 08       	CC = R1 == R7;
ffa03486:	19 18       	IF CC JUMP 0xffa034b8 <_tcp_checksum_check+0x48>;
ffa03488:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0348c:	00 e1 e0 04 	R0.L = 0x4e0;		/* (1248)	R0=0xff9004e0(-7338784) */
ffa03490:	ff e3 14 ef 	CALL 0xffa012b8 <_printf_hex>;
ffa03494:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004e0(-7338784) */
ffa03498:	0f 30       	R1 = R7;
ffa0349a:	00 e1 fc 04 	R0.L = 0x4fc;		/* (1276)	R0=0xff9004fc(-7338756) */
ffa0349e:	ff e3 0d ef 	CALL 0xffa012b8 <_printf_hex>;
ffa034a2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004fc(-7338756) */
ffa034a6:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa034aa:	ff e3 a1 ee 	CALL 0xffa011ec <_printf_str>;
ffa034ae:	01 e8 00 00 	UNLINK;
ffa034b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa034b4:	38 05       	(R7:7) = [SP++];
ffa034b6:	10 00       	RTS;
ffa034b8:	01 e8 00 00 	UNLINK;
ffa034bc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034be:	38 05       	(R7:7) = [SP++];
ffa034c0:	10 00       	RTS;
	...

ffa034c4 <_tcp_packet_setup>:
ffa034c4:	ed 05       	[--SP] = (R7:5, P5:5);
ffa034c6:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa034ca:	29 32       	P5 = R1;
ffa034cc:	7f 30       	R7 = FP;
ffa034ce:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa034d0:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa034d2:	f0 bb       	[FP -0x4] = R0;
ffa034d4:	07 30       	R0 = R7;
ffa034d6:	2a 30       	R5 = R2;
ffa034d8:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa034dc:	ff e3 52 f7 	CALL 0xffa02380 <_eth_header_setup>;
ffa034e0:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa034e4:	68 99 00 00 
ffa034e8:	80 0c       	CC = R0 < 0x0;
ffa034ea:	14 18       	IF CC JUMP 0xffa03512 <_tcp_packet_setup+0x4e>;
ffa034ec:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa034ee:	f0 b0       	[SP + 0xc] = R0;
ffa034f0:	15 30       	R2 = R5;
ffa034f2:	01 30       	R0 = R1;
ffa034f4:	0f 30       	R1 = R7;
ffa034f6:	ff e3 0f f3 	CALL 0xffa01b14 <_ip_header_setup>;
ffa034fa:	b9 a2       	R1 = [FP + 0x28];
ffa034fc:	f1 b0       	[SP + 0xc] = R1;
ffa034fe:	f9 a2       	R1 = [FP + 0x2c];
ffa03500:	31 b1       	[SP + 0x10] = R1;
ffa03502:	72 43       	R2 = R6.B (Z);
ffa03504:	0f 30       	R1 = R7;
ffa03506:	ff e3 93 f3 	CALL 0xffa01c2c <_tcp_header_setup>;
ffa0350a:	01 e8 00 00 	UNLINK;
ffa0350e:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03510:	10 00       	RTS;
ffa03512:	01 e8 00 00 	UNLINK;
ffa03516:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03518:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0351a:	10 00       	RTS;

ffa0351c <_tcp_burst>:
ffa0351c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0351e:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa03522:	78 b2       	[FP + 0x24] = R0;
ffa03524:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 */
ffa03528:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa0352c:	7a a2       	R2 = [FP + 0x24];
ffa0352e:	0b e1 74 0f 	P3.L = 0xf74;		/* (3956)	P3=0xff900f74 <_g_httpHeaderLen> */
ffa03532:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa03536:	02 0d       	CC = R2 <= 0x0;
ffa03538:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa0353c:	10 91 00 00 
ffa03540:	19 91       	R1 = [P3];
ffa03542:	7e 18       	IF CC JUMP 0xffa0363e <_tcp_burst+0x122>;
ffa03544:	41 50       	R1 = R1 + R0;
ffa03546:	8f 09       	CC = R7 < R1 (IU);
ffa03548:	21 32       	P4 = R1;
ffa0354a:	7a 10       	IF !CC JUMP 0xffa0363e <_tcp_burst+0x122>;
ffa0354c:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa0354e:	38 20       	JUMP.S 0xffa035be <_tcp_burst+0xa2>;
ffa03550:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03552:	18 91       	R0 = [P3];
ffa03554:	07 52       	R0 = R7 - R0;
ffa03556:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa0355a:	08 50       	R0 = R0 + R1;
ffa0355c:	16 30       	R2 = R6;
ffa0355e:	0d 30       	R1 = R5;
ffa03560:	ff e3 ee ef 	CALL 0xffa0153c <_memcpy_>;
ffa03564:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e50 <_txbuf> */
ffa03568:	09 e1 60 0f 	P1.L = 0xf60;		/* (3936)	P1=0xff900f60 <_TcpSeqHttpStart> */
ffa0356c:	08 91       	R0 = [P1];
ffa0356e:	f7 51       	R7 = R7 + R6;
ffa03570:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f78 <_g_httpContentLen> */
ffa03574:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa03578:	07 50       	R0 = R7 + R0;
ffa0357a:	10 93       	[P2] = R0;
ffa0357c:	26 50       	R0 = R6 + R4;
ffa0357e:	ff e3 5d ff 	CALL 0xffa03438 <_tcp_checksum_set>;
ffa03582:	ff e3 3f f4 	CALL 0xffa01e00 <_bfin_EMAC_send_nocopy>;
ffa03586:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa0358a:	0a e1 60 0e 	P2.L = 0xe60;		/* (3680)	P2=0xff900e60 <_rxIdx> */
ffa0358e:	10 95       	R0 = W[P2] (Z);
ffa03590:	10 32       	P2 = R0;
ffa03592:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900f60 <_TcpSeqHttpStart> */
ffa03596:	09 e1 64 0e 	P1.L = 0xe64;		/* (3684)	P1=0xff900e64 <_rxbuf> */
ffa0359a:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa0359c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0359e:	52 91       	P2 = [P2];
ffa035a0:	90 a2       	R0 = [P2 + 0x28];
ffa035a2:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa035a4:	07 1c       	IF CC JUMP 0xffa035b2 <_tcp_burst+0x96> (BP);
ffa035a6:	90 a2       	R0 = [P2 + 0x28];
ffa035a8:	4d 30       	R1 = P5;
ffa035aa:	7a a2       	R2 = [FP + 0x24];
ffa035ac:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa035ae:	11 50       	R0 = R1 + R2;
ffa035b0:	a8 06       	IF !CC P5 = R0;
ffa035b2:	79 ae       	P1 = [FP + 0x24];
ffa035b4:	69 09       	CC = P1 <= P5;
ffa035b6:	45 18       	IF CC JUMP 0xffa03640 <_tcp_burst+0x124>;
ffa035b8:	44 30       	R0 = P4;
ffa035ba:	87 09       	CC = R7 < R0 (IU);
ffa035bc:	42 10       	IF !CC JUMP 0xffa03640 <_tcp_burst+0x124>;
ffa035be:	44 30       	R0 = P4;
ffa035c0:	b8 52       	R2 = R0 - R7;
ffa035c2:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa035c6:	0a 09       	CC = R2 <= R1;
ffa035c8:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa035ca:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa035cc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e64 <_rxbuf> */
ffa035d0:	08 06       	IF !CC R1 = R0;
ffa035d2:	09 e1 60 0f 	P1.L = 0xf60;		/* (3936)	P1=0xff900f60 <_TcpSeqHttpStart> */
ffa035d6:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa035da:	07 cc 10 4c 	R6 = MIN (R2, R0) || R0 = [P1] || NOP;
ffa035de:	08 91 00 00 
ffa035e2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e60 <_rxIdx> */
ffa035e6:	07 50       	R0 = R7 + R0;
ffa035e8:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa035ec:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900f60 <_TcpSeqHttpStart> */
ffa035f0:	10 93       	[P2] = R0;
ffa035f2:	09 e1 5c 0f 	P1.L = 0xf5c;		/* (3932)	P1=0xff900f5c <_TcpSeqClient> */
ffa035f6:	f1 b0       	[SP + 0xc] = R1;
ffa035f8:	30 b1       	[SP + 0x10] = R0;
ffa035fa:	08 91       	R0 = [P1];
ffa035fc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa03600:	70 b1       	[SP + 0x14] = R0;
ffa03602:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_NetDestIP> */
ffa03606:	4f 30       	R1 = FP;
ffa03608:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R2 = [P2] || NOP;
ffa0360c:	12 91 00 00 
ffa03610:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03612:	ff e3 59 ff 	CALL 0xffa034c4 <_tcp_packet_setup>;
ffa03616:	28 30       	R5 = R0;
ffa03618:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0361c:	00 0d       	CC = R0 <= 0x0;
ffa0361e:	ca 1b       	IF CC JUMP 0xffa035b2 <_tcp_burst+0x96>;
ffa03620:	18 91       	R0 = [P3];
ffa03622:	38 0a       	CC = R0 <= R7 (IU);
ffa03624:	96 1f       	IF CC JUMP 0xffa03550 <_tcp_burst+0x34> (BP);
ffa03626:	38 53       	R4 = R0 - R7;
ffa03628:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa0362c:	07 50       	R0 = R7 + R0;
ffa0362e:	0d 30       	R1 = R5;
ffa03630:	14 30       	R2 = R4;
ffa03632:	ff e3 85 ef 	CALL 0xffa0153c <_memcpy_>;
ffa03636:	65 51       	R5 = R5 + R4;
ffa03638:	a6 53       	R6 = R6 - R4;
ffa0363a:	e7 51       	R7 = R7 + R4;
ffa0363c:	8b 2f       	JUMP.S 0xffa03552 <_tcp_burst+0x36>;
ffa0363e:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa03640:	01 e8 00 00 	UNLINK;
ffa03644:	45 30       	R0 = P5;
ffa03646:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03648:	10 00       	RTS;
	...

ffa0364c <_tcp_rx>:
ffa0364c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0364e:	20 32       	P4 = R0;
ffa03650:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa03654:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03658:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa0365a:	ff e3 29 f2 	CALL 0xffa01aac <_htons>;
ffa0365e:	c0 42       	R0 = R0.L (Z);
ffa03660:	07 08       	CC = R7 == R0;
ffa03662:	06 18       	IF CC JUMP 0xffa0366e <_tcp_rx+0x22>;
ffa03664:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03666:	01 e8 00 00 	UNLINK;
ffa0366a:	a3 05       	(R7:4, P5:3) = [SP++];
ffa0366c:	10 00       	RTS;
ffa0366e:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa03672:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa03674:	08 08       	CC = R0 == R1;
ffa03676:	f7 17       	IF !CC JUMP 0xffa03664 <_tcp_rx+0x18> (BP);
ffa03678:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa0367c:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa03680:	ff e3 16 f2 	CALL 0xffa01aac <_htons>;
ffa03684:	c0 42       	R0 = R0.L (Z);
ffa03686:	07 08       	CC = R7 == R0;
ffa03688:	ee 17       	IF !CC JUMP 0xffa03664 <_tcp_rx+0x18> (BP);
ffa0368a:	44 30       	R0 = P4;
ffa0368c:	80 64       	R0 += 0x10;		/* ( 16) */
ffa0368e:	ff e3 83 f2 	CALL 0xffa01b94 <_ip_header_checksum>;
ffa03692:	40 43       	R0 = R0.B (Z);
ffa03694:	00 0c       	CC = R0 == 0x0;
ffa03696:	e7 1f       	IF CC JUMP 0xffa03664 <_tcp_rx+0x18> (BP);
ffa03698:	4c 30       	R1 = P4;
ffa0369a:	41 64       	R1 += 0x8;		/* (  8) */
ffa0369c:	e0 a1       	R0 = [P4 + 0x1c];
ffa0369e:	ff e3 13 fc 	CALL 0xffa02ec4 <_ARP_lut_add>;
ffa036a2:	44 30       	R0 = P4;
ffa036a4:	ff e3 6a fe 	CALL 0xffa03378 <_tcp_length>;
ffa036a8:	30 30       	R6 = R0;
ffa036aa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa036ae:	0e 30       	R1 = R6;
ffa036b0:	00 e1 0c 05 	R0.L = 0x50c;		/* (1292)	R0=0xff90050c(-7338740) */
ffa036b4:	ff e3 5e ee 	CALL 0xffa01370 <_printf_int>;
ffa036b8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90050c(-7338740) */
ffa036bc:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa036c0:	ff e3 96 ed 	CALL 0xffa011ec <_printf_str>;
ffa036c4:	44 30       	R0 = P4;
ffa036c6:	0e 30       	R1 = R6;
ffa036c8:	ff e3 d4 fe 	CALL 0xffa03470 <_tcp_checksum_check>;
ffa036cc:	40 43       	R0 = R0.B (Z);
ffa036ce:	00 0c       	CC = R0 == 0x0;
ffa036d0:	ca 1b       	IF CC JUMP 0xffa03664 <_tcp_rx+0x18>;
ffa036d2:	00 00       	NOP;
ffa036d4:	00 00       	NOP;
ffa036d6:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa036d8:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa036dc:	48 43       	R0 = R1.B (Z);
ffa036de:	10 08       	CC = R0 == R2;
ffa036e0:	f1 18       	IF CC JUMP 0xffa038c2 <_tcp_rx+0x276>;
ffa036e2:	10 0c       	CC = R0 == 0x2;
ffa036e4:	0a 19       	IF CC JUMP 0xffa038f8 <_tcp_rx+0x2ac>;
ffa036e6:	48 43       	R0 = R1.B (Z);
ffa036e8:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa036ea:	08 08       	CC = R0 == R1;
ffa036ec:	85 18       	IF CC JUMP 0xffa037f6 <_tcp_rx+0x1aa>;
ffa036ee:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa036f0:	ab 10       	IF !CC JUMP 0xffa03846 <_tcp_rx+0x1fa>;
ffa036f2:	00 00       	NOP;
ffa036f4:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f74 <_g_httpHeaderLen> */
ffa036f8:	0b e1 64 0f 	P3.L = 0xf64;		/* (3940)	P3=0xff900f64 <_TcpState> */
ffa036fc:	00 00       	NOP;
ffa036fe:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa03702:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa03704:	38 10       	IF !CC JUMP 0xffa03774 <_tcp_rx+0x128>;
ffa03706:	18 91       	R0 = [P3];
ffa03708:	10 0c       	CC = R0 == 0x2;
ffa0370a:	ad 17       	IF !CC JUMP 0xffa03664 <_tcp_rx+0x18> (BP);
ffa0370c:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900000 <_l1_data_a>(-7340032) */
ffa03710:	a0 a2       	R0 = [P4 + 0x28];
ffa03712:	04 e1 44 0e 	R4.L = 0xe44;		/* (3652)	R4=0xff900e44 <_NetDestIP>(-7336380) */
ffa03716:	a5 e5 30 00 	R5 = B[P4 + 0x30] (X);
ffa0371a:	ff e3 d5 f1 	CALL 0xffa01ac4 <_htonl>;
ffa0371e:	14 32       	P2 = R4;
ffa03720:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa03724:	30 50       	R0 = R0 + R6;
ffa03726:	0d e1 5c 0f 	P5.L = 0xf5c;		/* (3932)	P5=0xff900f5c <_TcpSeqClient> */
ffa0372a:	28 93       	[P5] = R0;
ffa0372c:	e0 a1       	R0 = [P4 + 0x1c];
ffa0372e:	10 93       	[P2] = R0;
ffa03730:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f64 <_TcpState> */
ffa03734:	e0 a2       	R0 = [P4 + 0x2c];
ffa03736:	0b e1 60 0f 	P3.L = 0xf60;		/* (3936)	P3=0xff900f60 <_TcpSeqHttpStart> */
ffa0373a:	ff e3 c5 f1 	CALL 0xffa01ac4 <_htonl>;
ffa0373e:	19 91       	R1 = [P3];
ffa03740:	c8 53       	R7 = R0 - R1;
ffa03742:	a1 e4 31 00 	R1 = B[P4 + 0x31] (Z);
ffa03746:	21 48       	CC = !BITTST (R1, 0x4);		/* bit  4 */
ffa03748:	1e 1d       	IF CC JUMP 0xffa03984 <_tcp_rx+0x338> (BP);
ffa0374a:	06 0c       	CC = R6 == 0x0;
ffa0374c:	1c 15       	IF !CC JUMP 0xffa03984 <_tcp_rx+0x338> (BP);
ffa0374e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_NetDestIP> */
ffa03752:	0a e1 74 0f 	P2.L = 0xf74;		/* (3956)	P2=0xff900f74 <_g_httpHeaderLen> */
ffa03756:	10 91       	R0 = [P2];
ffa03758:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f74 <_g_httpHeaderLen> */
ffa0375c:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa03760:	11 91       	R1 = [P2];
ffa03762:	08 50       	R0 = R0 + R1;
ffa03764:	07 08       	CC = R7 == R0;
ffa03766:	46 18       	IF CC JUMP 0xffa037f2 <_tcp_rx+0x1a6>;
ffa03768:	0f 30       	R1 = R7;
ffa0376a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0376c:	ff e3 d8 fe 	CALL 0xffa0351c <_tcp_burst>;
ffa03770:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03772:	7a 2f       	JUMP.S 0xffa03666 <_tcp_rx+0x1a>;
ffa03774:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03776:	1f 91       	R7 = [P3];
ffa03778:	07 08       	CC = R7 == R0;
ffa0377a:	85 19       	IF CC JUMP 0xffa03a84 <_tcp_rx+0x438>;
ffa0377c:	07 0c       	CC = R7 == 0x0;
ffa0377e:	c4 17       	IF !CC JUMP 0xffa03706 <_tcp_rx+0xba> (BP);
ffa03780:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa03784:	00 e1 88 05 	R0.L = 0x588;		/* (1416)	R0=0xff900588(-7338616) */
ffa03788:	ff e3 32 ed 	CALL 0xffa011ec <_printf_str>;
ffa0378c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f78 <_g_httpContentLen> */
ffa03790:	0a e1 7c 0f 	P2.L = 0xf7c;		/* (3964)	P2=0xff900f7c <_g_httpRxed> */
ffa03794:	17 93       	[P2] = R7;
ffa03796:	a0 a2       	R0 = [P4 + 0x28];
ffa03798:	ff e3 96 f1 	CALL 0xffa01ac4 <_htonl>;
ffa0379c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f7c <_g_httpRxed> */
ffa037a0:	0a e1 5c 0f 	P2.L = 0xf5c;		/* (3932)	P2=0xff900f5c <_TcpSeqClient> */
ffa037a4:	10 93       	[P2] = R0;
ffa037a6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f5c <_TcpSeqClient> */
ffa037aa:	e2 a1       	R2 = [P4 + 0x1c];
ffa037ac:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_NetDestIP> */
ffa037b0:	12 93       	[P2] = R2;
ffa037b2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_NetDestIP> */
ffa037b6:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa037ba:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_TcpClientPort> */
ffa037be:	11 97       	W[P2] = R1;
ffa037c0:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa037c2:	f1 b0       	[SP + 0xc] = R1;
ffa037c4:	4f 30       	R1 = FP;
ffa037c6:	30 b1       	[SP + 0x10] = R0;
ffa037c8:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa037ca:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa037ce:	77 b1 00 00 
ffa037d2:	ff e3 79 fe 	CALL 0xffa034c4 <_tcp_packet_setup>;
ffa037d6:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa037da:	00 0d       	CC = R0 <= 0x0;
ffa037dc:	95 1b       	IF CC JUMP 0xffa03706 <_tcp_rx+0xba>;
ffa037de:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_TcpClientPort> */
ffa037e2:	0a e1 64 0f 	P2.L = 0xf64;		/* (3940)	P2=0xff900f64 <_TcpState> */
ffa037e6:	17 93       	[P2] = R7;
ffa037e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa037ea:	ff e3 27 fe 	CALL 0xffa03438 <_tcp_checksum_set>;
ffa037ee:	ff e3 09 f3 	CALL 0xffa01e00 <_bfin_EMAC_send_nocopy>;
ffa037f2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa037f4:	39 2f       	JUMP.S 0xffa03666 <_tcp_rx+0x1a>;
ffa037f6:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f60 <_TcpSeqHttpStart> */
ffa037fa:	0b e1 64 0f 	P3.L = 0xf64;		/* (3940)	P3=0xff900f64 <_TcpState> */
ffa037fe:	18 91       	R0 = [P3];
ffa03800:	08 0c       	CC = R0 == 0x1;
ffa03802:	b9 17       	IF !CC JUMP 0xffa03774 <_tcp_rx+0x128> (BP);
ffa03804:	e0 a2       	R0 = [P4 + 0x2c];
ffa03806:	ff e3 5f f1 	CALL 0xffa01ac4 <_htonl>;
ffa0380a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f64 <_TcpState> */
ffa0380e:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa03812:	11 91       	R1 = [P2];
ffa03814:	08 08       	CC = R0 == R1;
ffa03816:	42 19       	IF CC JUMP 0xffa03a9a <_tcp_rx+0x44e>;
ffa03818:	00 00       	NOP;
ffa0381a:	00 00       	NOP;
ffa0381c:	00 00       	NOP;
ffa0381e:	e0 a2       	R0 = [P4 + 0x2c];
ffa03820:	ff e3 52 f1 	CALL 0xffa01ac4 <_htonl>;
ffa03824:	08 30       	R1 = R0;
ffa03826:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0382a:	00 e1 38 05 	R0.L = 0x538;		/* (1336)	R0=0xff900538(-7338696) */
ffa0382e:	ff e3 43 ee 	CALL 0xffa014b4 <_printf_ip>;
ffa03832:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03834:	18 93       	[P3] = R0;
ffa03836:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0383a:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa0383e:	ff e3 d7 ec 	CALL 0xffa011ec <_printf_str>;
ffa03842:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03844:	11 2f       	JUMP.S 0xffa03666 <_tcp_rx+0x1a>;
ffa03846:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0384a:	00 e1 64 05 	R0.L = 0x564;		/* (1380)	R0=0xff900564(-7338652) */
ffa0384e:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900e44 <_NetDestIP>(-7336380) */
ffa03852:	ff e3 cd ec 	CALL 0xffa011ec <_printf_str>;
ffa03856:	04 e1 44 0e 	R4.L = 0xe44;		/* (3652)	R4=0xff900e44 <_NetDestIP>(-7336380) */
ffa0385a:	a0 a2       	R0 = [P4 + 0x28];
ffa0385c:	ff e3 34 f1 	CALL 0xffa01ac4 <_htonl>;
ffa03860:	14 32       	P2 = R4;
ffa03862:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f5c <_TcpSeqClient> */
ffa03866:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f64 <_TcpState> */
ffa0386a:	0d e1 5c 0f 	P5.L = 0xf5c;		/* (3932)	P5=0xff900f5c <_TcpSeqClient> */
ffa0386e:	0b e1 64 0f 	P3.L = 0xf64;		/* (3940)	P3=0xff900f64 <_TcpState> */
ffa03872:	28 93       	[P5] = R0;
ffa03874:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa03878:	18 91 00 00 
ffa0387c:	e2 a1       	R2 = [P4 + 0x1c];
ffa0387e:	09 64       	R1 += 0x1;		/* (  1) */
ffa03880:	10 0c       	CC = R0 == 0x2;
ffa03882:	12 93       	[P2] = R2;
ffa03884:	29 93       	[P5] = R1;
ffa03886:	03 18       	IF CC JUMP 0xffa0388c <_tcp_rx+0x240>;
ffa03888:	00 0c       	CC = R0 == 0x0;
ffa0388a:	c0 14       	IF !CC JUMP 0xffa03a0a <_tcp_rx+0x3be> (BP);
ffa0388c:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0388e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa03892:	f0 b0       	[SP + 0xc] = R0;
ffa03894:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa03898:	10 91       	R0 = [P2];
ffa0389a:	71 b1       	[SP + 0x14] = R1;
ffa0389c:	4f 30       	R1 = FP;
ffa0389e:	30 b1       	[SP + 0x10] = R0;
ffa038a0:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa038a2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa038a4:	ff e3 10 fe 	CALL 0xffa034c4 <_tcp_packet_setup>;
ffa038a8:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa038ac:	00 0d       	CC = R0 <= 0x0;
ffa038ae:	ae 18       	IF CC JUMP 0xffa03a0a <_tcp_rx+0x3be>;
ffa038b0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa038b2:	18 93       	[P3] = R0;
ffa038b4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa038b6:	ff e3 c1 fd 	CALL 0xffa03438 <_tcp_checksum_set>;
ffa038ba:	ff e3 a3 f2 	CALL 0xffa01e00 <_bfin_EMAC_send_nocopy>;
ffa038be:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa038c0:	d3 2e       	JUMP.S 0xffa03666 <_tcp_rx+0x1a>;
ffa038c2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa038c6:	00 e1 20 05 	R0.L = 0x520;		/* (1312)	R0=0xff900520(-7338720) */
ffa038ca:	ff e3 91 ec 	CALL 0xffa011ec <_printf_str>;
ffa038ce:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa038d2:	0a e1 64 0f 	P2.L = 0xf64;		/* (3940)	P2=0xff900f64 <_TcpState> */
ffa038d6:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa038d8:	17 93       	[P2] = R7;
ffa038da:	a0 a2       	R0 = [P4 + 0x28];
ffa038dc:	ff e3 f4 f0 	CALL 0xffa01ac4 <_htonl>;
ffa038e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f64 <_TcpState> */
ffa038e4:	0a e1 5c 0f 	P2.L = 0xf5c;		/* (3932)	P2=0xff900f5c <_TcpSeqClient> */
ffa038e8:	10 93       	[P2] = R0;
ffa038ea:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f5c <_TcpSeqClient> */
ffa038ee:	0a e1 7c 0f 	P2.L = 0xf7c;		/* (3964)	P2=0xff900f7c <_g_httpRxed> */
ffa038f2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa038f4:	17 93       	[P2] = R7;
ffa038f6:	b8 2e       	JUMP.S 0xffa03666 <_tcp_rx+0x1a>;
ffa038f8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa038fc:	00 e1 2c 05 	R0.L = 0x52c;		/* (1324)	R0=0xff90052c(-7338708) */
ffa03900:	ff e3 76 ec 	CALL 0xffa011ec <_printf_str>;
ffa03904:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f5c <_TcpSeqClient> */
ffa03908:	a0 a2       	R0 = [P4 + 0x28];
ffa0390a:	ff e3 dd f0 	CALL 0xffa01ac4 <_htonl>;
ffa0390e:	0d e1 5c 0f 	P5.L = 0xf5c;		/* (3932)	P5=0xff900f5c <_TcpSeqClient> */
ffa03912:	28 93       	[P5] = R0;
ffa03914:	44 30       	R0 = P4;
ffa03916:	ff e3 31 fd 	CALL 0xffa03378 <_tcp_length>;
ffa0391a:	29 91       	R1 = [P5];
ffa0391c:	09 64       	R1 += 0x1;		/* (  1) */
ffa0391e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f7c <_g_httpRxed> */
ffa03922:	08 50       	R0 = R0 + R1;
ffa03924:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_TcpClientPort> */
ffa03928:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa0392c:	11 97       	W[P2] = R1;
ffa0392e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_TcpClientPort> */
ffa03932:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa03936:	28 93 00 00 
ffa0393a:	0a e1 7c 0f 	P2.L = 0xf7c;		/* (3964)	P2=0xff900f7c <_g_httpRxed> */
ffa0393e:	11 93       	[P2] = R1;
ffa03940:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f7c <_g_httpRxed> */
ffa03944:	e2 a1       	R2 = [P4 + 0x1c];
ffa03946:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_NetDestIP> */
ffa0394a:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa0394c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f5c <_TcpSeqClient> */
ffa03950:	12 93       	[P2] = R2;
ffa03952:	0d e1 58 0f 	P5.L = 0xf58;		/* (3928)	P5=0xff900f58 <_TcpSeqHost> */
ffa03956:	f1 b0       	[SP + 0xc] = R1;
ffa03958:	29 91       	R1 = [P5];
ffa0395a:	31 b1       	[SP + 0x10] = R1;
ffa0395c:	4f 30       	R1 = FP;
ffa0395e:	70 b1       	[SP + 0x14] = R0;
ffa03960:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03962:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03964:	ff e3 b0 fd 	CALL 0xffa034c4 <_tcp_packet_setup>;
ffa03968:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0396c:	00 0d       	CC = R0 <= 0x0;
ffa0396e:	93 18       	IF CC JUMP 0xffa03a94 <_tcp_rx+0x448>;
ffa03970:	28 91       	R0 = [P5];
ffa03972:	08 64       	R0 += 0x1;		/* (  1) */
ffa03974:	28 93       	[P5] = R0;
ffa03976:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03978:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_NetDestIP> */
ffa0397c:	0a e1 64 0f 	P2.L = 0xf64;		/* (3940)	P2=0xff900f64 <_TcpState> */
ffa03980:	10 93       	[P2] = R0;
ffa03982:	33 2f       	JUMP.S 0xffa037e8 <_tcp_rx+0x19c>;
ffa03984:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa03988:	28 54       	R0 = R0 & R5;
ffa0398a:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa0398c:	10 4d       	R0 >>>= 0x2;
ffa0398e:	54 30       	R2 = P4;
ffa03990:	19 48       	CC = !BITTST (R1, 0x3);		/* bit  3 */
ffa03992:	02 50       	R0 = R2 + R0;
ffa03994:	5d 1c       	IF CC JUMP 0xffa03a4e <_tcp_rx+0x402> (BP);
ffa03996:	0e 30       	R1 = R6;
ffa03998:	00 e3 16 05 	CALL 0xffa043c4 <_httpCollate>;
ffa0399c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f58 <_TcpSeqHost> */
ffa039a0:	18 91       	R0 = [P3];
ffa039a2:	07 50       	R0 = R7 + R0;
ffa039a4:	0d e1 58 0f 	P5.L = 0xf58;		/* (3928)	P5=0xff900f58 <_TcpSeqHost> */
ffa039a8:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e8c <_NetArpLut> */
ffa039ac:	28 93       	[P5] = R0;
ffa039ae:	0c e1 7c 0f 	P4.L = 0xf7c;		/* (3964)	P4=0xff900f7c <_g_httpRxed> */
ffa039b2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa039b4:	80 4f       	R0 <<= 0x10;
ffa039b6:	21 91       	R1 = [P4];
ffa039b8:	00 e3 dc 02 	CALL 0xffa03f70 <_httpResp>;
ffa039bc:	00 0c       	CC = R0 == 0x0;
ffa039be:	22 1c       	IF CC JUMP 0xffa03a02 <_tcp_rx+0x3b6> (BP);
ffa039c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f64 <_TcpState> */
ffa039c4:	28 91       	R0 = [P5];
ffa039c6:	0a e1 60 0f 	P2.L = 0xf60;		/* (3936)	P2=0xff900f60 <_TcpSeqHttpStart> */
ffa039ca:	10 93       	[P2] = R0;
ffa039cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f60 <_TcpSeqHttpStart> */
ffa039d0:	0a e1 74 0f 	P2.L = 0xf74;		/* (3956)	P2=0xff900f74 <_g_httpHeaderLen> */
ffa039d4:	11 91       	R1 = [P2];
ffa039d6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f74 <_g_httpHeaderLen> */
ffa039da:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa039de:	10 91       	R0 = [P2];
ffa039e0:	41 50       	R1 = R1 + R0;
ffa039e2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa039e6:	00 e1 a4 05 	R0.L = 0x5a4;		/* (1444)	R0=0xff9005a4(-7338588) */
ffa039ea:	ff e3 c3 ec 	CALL 0xffa01370 <_printf_int>;
ffa039ee:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005a4(-7338588) */
ffa039f2:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa039f6:	ff e3 fb eb 	CALL 0xffa011ec <_printf_str>;
ffa039fa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa039fc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa039fe:	ff e3 8f fd 	CALL 0xffa0351c <_tcp_burst>;
ffa03a02:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a04:	20 93       	[P4] = R0;
ffa03a06:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03a08:	2f 2e       	JUMP.S 0xffa03666 <_tcp_rx+0x1a>;
ffa03a0a:	18 91       	R0 = [P3];
ffa03a0c:	18 0c       	CC = R0 == 0x3;
ffa03a0e:	77 16       	IF !CC JUMP 0xffa036fc <_tcp_rx+0xb0> (BP);
ffa03a10:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f78 <_g_httpContentLen> */
ffa03a14:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03a16:	0a e1 7c 0f 	P2.L = 0xf7c;		/* (3964)	P2=0xff900f7c <_g_httpRxed> */
ffa03a1a:	10 93       	[P2] = R0;
ffa03a1c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03a1e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f7c <_g_httpRxed> */
ffa03a22:	f0 b0       	[SP + 0xc] = R0;
ffa03a24:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa03a28:	10 91       	R0 = [P2];
ffa03a2a:	14 32       	P2 = R4;
ffa03a2c:	30 b1       	[SP + 0x10] = R0;
ffa03a2e:	28 91       	R0 = [P5];
ffa03a30:	70 b1       	[SP + 0x14] = R0;
ffa03a32:	4f 30       	R1 = FP;
ffa03a34:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03a38:	12 91 00 00 
ffa03a3c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03a3e:	ff e3 43 fd 	CALL 0xffa034c4 <_tcp_packet_setup>;
ffa03a42:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03a46:	00 0d       	CC = R0 <= 0x0;
ffa03a48:	5a 1a       	IF CC JUMP 0xffa036fc <_tcp_rx+0xb0>;
ffa03a4a:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03a4c:	96 2f       	JUMP.S 0xffa03978 <_tcp_rx+0x32c>;
ffa03a4e:	0e 30       	R1 = R6;
ffa03a50:	00 e3 ba 04 	CALL 0xffa043c4 <_httpCollate>;
ffa03a54:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03a56:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa03a5a:	f0 b0       	[SP + 0xc] = R0;
ffa03a5c:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa03a60:	10 91       	R0 = [P2];
ffa03a62:	14 32       	P2 = R4;
ffa03a64:	30 b1       	[SP + 0x10] = R0;
ffa03a66:	28 91       	R0 = [P5];
ffa03a68:	70 b1       	[SP + 0x14] = R0;
ffa03a6a:	4f 30       	R1 = FP;
ffa03a6c:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03a70:	12 91 00 00 
ffa03a74:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03a76:	ff e3 27 fd 	CALL 0xffa034c4 <_tcp_packet_setup>;
ffa03a7a:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03a7e:	00 0d       	CC = R0 <= 0x0;
ffa03a80:	b4 16       	IF !CC JUMP 0xffa037e8 <_tcp_rx+0x19c> (BP);
ffa03a82:	f1 2d       	JUMP.S 0xffa03664 <_tcp_rx+0x18>;
ffa03a84:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa03a88:	00 e1 74 05 	R0.L = 0x574;		/* (1396)	R0=0xff900574(-7338636) */
ffa03a8c:	ff e3 b0 eb 	CALL 0xffa011ec <_printf_str>;
ffa03a90:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03a92:	ea 2d       	JUMP.S 0xffa03666 <_tcp_rx+0x1a>;
ffa03a94:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03a98:	27 2e       	JUMP.S 0xffa036e6 <_tcp_rx+0x9a>;
ffa03a9a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03a9c:	18 93       	[P3] = R0;
ffa03a9e:	a0 a2       	R0 = [P4 + 0x28];
ffa03aa0:	ff e3 12 f0 	CALL 0xffa01ac4 <_htonl>;
ffa03aa4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa03aa8:	0a e1 5c 0f 	P2.L = 0xf5c;		/* (3932)	P2=0xff900f5c <_TcpSeqClient> */
ffa03aac:	10 93       	[P2] = R0;
ffa03aae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa03ab2:	00 e1 54 05 	R0.L = 0x554;		/* (1364)	R0=0xff900554(-7338668) */
ffa03ab6:	ff e3 9b eb 	CALL 0xffa011ec <_printf_str>;
ffa03aba:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03abc:	d5 2d       	JUMP.S 0xffa03666 <_tcp_rx+0x1a>;
	...

ffa03ac0 <_htmlForm>:
ffa03ac0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03ac4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa03ac8:	02 e1 c0 05 	R2.L = 0x5c0;		/* (1472)	R2=0xff9005c0(-7338560) */
ffa03acc:	01 e8 00 00 	UNLINK;
ffa03ad0:	ff e2 66 ed 	JUMP.L 0xffa0159c <_strcpy_>;

ffa03ad4 <_htmlDiv>:
ffa03ad4:	12 43       	R2 = R2.B (X);
ffa03ad6:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa03ada:	1a 08       	CC = R2 == R3;
ffa03adc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03ae0:	09 18       	IF CC JUMP 0xffa03af2 <_htmlDiv+0x1e>;
ffa03ae2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005c0(-7338560) */
ffa03ae6:	02 e1 14 06 	R2.L = 0x614;		/* (1556)	R2=0xff900614(-7338476) */
ffa03aea:	01 e8 00 00 	UNLINK;
ffa03aee:	ff e2 57 ed 	JUMP.L 0xffa0159c <_strcpy_>;
ffa03af2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900614(-7338476) */
ffa03af6:	02 e1 e0 05 	R2.L = 0x5e0;		/* (1504)	R2=0xff9005e0(-7338528) */
ffa03afa:	01 e8 00 00 	UNLINK;
ffa03afe:	ff e2 4f ed 	JUMP.L 0xffa0159c <_strcpy_>;
	...

ffa03b04 <_html404>:
ffa03b04:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03b08:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b0a:	4f 30       	R1 = FP;
ffa03b0c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005e0(-7338528) */
ffa03b10:	f0 bb       	[FP -0x4] = R0;
ffa03b12:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03b14:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03b18:	02 e1 48 06 	R2.L = 0x648;		/* (1608)	R2=0xff900648(-7338424) */
ffa03b1c:	ff e3 40 ed 	CALL 0xffa0159c <_strcpy_>;
ffa03b20:	f0 b9       	R0 = [FP -0x4];
ffa03b22:	01 e8 00 00 	UNLINK;
ffa03b26:	10 00       	RTS;

ffa03b28 <_htmlCursorOption>:
ffa03b28:	68 05       	[--SP] = (R7:5);
ffa03b2a:	2a 30       	R5 = R2;
ffa03b2c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900648(-7338424) */
ffa03b30:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03b34:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa03b38:	3f a2 00 00 
ffa03b3c:	02 e1 64 06 	R2.L = 0x664;		/* (1636)	R2=0xff900664(-7338396) */
ffa03b40:	ff e3 2e ed 	CALL 0xffa0159c <_strcpy_>;
ffa03b44:	0e 30       	R1 = R6;
ffa03b46:	15 30       	R2 = R5;
ffa03b48:	ff e3 90 ee 	CALL 0xffa01868 <_strprintf_int>;
ffa03b4c:	3d 08       	CC = R5 == R7;
ffa03b4e:	16 18       	IF CC JUMP 0xffa03b7a <_htmlCursorOption+0x52>;
ffa03b50:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900664(-7338396) */
ffa03b54:	0e 30       	R1 = R6;
ffa03b56:	02 e1 8c 06 	R2.L = 0x68c;		/* (1676)	R2=0xff90068c(-7338356) */
ffa03b5a:	ff e3 21 ed 	CALL 0xffa0159c <_strcpy_>;
ffa03b5e:	0e 30       	R1 = R6;
ffa03b60:	15 30       	R2 = R5;
ffa03b62:	ff e3 83 ee 	CALL 0xffa01868 <_strprintf_int>;
ffa03b66:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90068c(-7338356) */
ffa03b6a:	01 e8 00 00 	UNLINK;
ffa03b6e:	0e 30       	R1 = R6;
ffa03b70:	02 e1 90 06 	R2.L = 0x690;		/* (1680)	R2=0xff900690(-7338352) */
ffa03b74:	28 05       	(R7:5) = [SP++];
ffa03b76:	ff e2 13 ed 	JUMP.L 0xffa0159c <_strcpy_>;
ffa03b7a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900690(-7338352) */
ffa03b7e:	0e 30       	R1 = R6;
ffa03b80:	02 e1 74 06 	R2.L = 0x674;		/* (1652)	R2=0xff900674(-7338380) */
ffa03b84:	ff e3 0c ed 	CALL 0xffa0159c <_strcpy_>;
ffa03b88:	e4 2f       	JUMP.S 0xffa03b50 <_htmlCursorOption+0x28>;
	...

ffa03b8c <_htmlCursorSelect>:
ffa03b8c:	60 05       	[--SP] = (R7:4);
ffa03b8e:	3a 30       	R7 = R2;
ffa03b90:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900674(-7338380) */
ffa03b94:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03b98:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa03b9c:	7e a2 00 00 
ffa03ba0:	02 e1 9c 06 	R2.L = 0x69c;		/* (1692)	R2=0xff90069c(-7338340) */
ffa03ba4:	bc a2       	R4 = [FP + 0x28];
ffa03ba6:	ff e3 fb ec 	CALL 0xffa0159c <_strcpy_>;
ffa03baa:	17 30       	R2 = R7;
ffa03bac:	0d 30       	R1 = R5;
ffa03bae:	ff e3 f7 ec 	CALL 0xffa0159c <_strcpy_>;
ffa03bb2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90069c(-7338340) */
ffa03bb6:	0d 30       	R1 = R5;
ffa03bb8:	02 e1 a8 06 	R2.L = 0x6a8;		/* (1704)	R2=0xff9006a8(-7338328) */
ffa03bbc:	ff e3 f0 ec 	CALL 0xffa0159c <_strcpy_>;
ffa03bc0:	0d 30       	R1 = R5;
ffa03bc2:	16 30       	R2 = R6;
ffa03bc4:	ff e3 ec ec 	CALL 0xffa0159c <_strcpy_>;
ffa03bc8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006a8(-7338328) */
ffa03bcc:	0d 30       	R1 = R5;
ffa03bce:	02 e1 c4 06 	R2.L = 0x6c4;		/* (1732)	R2=0xff9006c4(-7338300) */
ffa03bd2:	ff e3 e5 ec 	CALL 0xffa0159c <_strcpy_>;
ffa03bd6:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03bd8:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa03bdc:	f4 b0 00 00 
ffa03be0:	17 30       	R2 = R7;
ffa03be2:	ff e3 a3 ff 	CALL 0xffa03b28 <_htmlCursorOption>;
ffa03be6:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03be8:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03bea:	0f 08       	CC = R7 == R1;
ffa03bec:	f6 17       	IF !CC JUMP 0xffa03bd8 <_htmlCursorSelect+0x4c> (BP);
ffa03bee:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c4(-7338300) */
ffa03bf2:	01 e8 00 00 	UNLINK;
ffa03bf6:	0d 30       	R1 = R5;
ffa03bf8:	02 e1 c8 06 	R2.L = 0x6c8;		/* (1736)	R2=0xff9006c8(-7338296) */
ffa03bfc:	20 05       	(R7:4) = [SP++];
ffa03bfe:	ff e2 cf ec 	JUMP.L 0xffa0159c <_strcpy_>;
	...

ffa03c04 <_htmlDefault>:
ffa03c04:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03c06:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03c0a:	77 30       	R6 = FP;
ffa03c0c:	e6 67       	R6 += -0x4;		/* ( -4) */
ffa03c0e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c10:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c8(-7338296) */
ffa03c14:	f0 bb       	[FP -0x4] = R0;
ffa03c16:	0e 30       	R1 = R6;
ffa03c18:	02 e1 e0 06 	R2.L = 0x6e0;		/* (1760)	R2=0xff9006e0(-7338272) */
ffa03c1c:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03c20:	ff e3 be ec 	CALL 0xffa0159c <_strcpy_>;
ffa03c24:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03c28:	0e 30       	R1 = R6;
ffa03c2a:	ff e3 55 ff 	CALL 0xffa03ad4 <_htmlDiv>;
ffa03c2e:	0e 30       	R1 = R6;
ffa03c30:	ff e3 48 ff 	CALL 0xffa03ac0 <_htmlForm>;
ffa03c34:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03c38:	0e 30       	R1 = R6;
ffa03c3a:	02 e1 30 07 	R2.L = 0x730;		/* (1840)	R2=0xff900730(-7338192) */
ffa03c3e:	ff e3 af ec 	CALL 0xffa0159c <_strcpy_>;
ffa03c42:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f5c <_TcpSeqClient> */
ffa03c46:	0a e1 d4 0b 	P2.L = 0xbd4;		/* (3028)	P2=0xff900bd4 <_g_streamEnabled> */
ffa03c4a:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03c4e:	10 99 00 00 
ffa03c52:	00 0c       	CC = R0 == 0x0;
ffa03c54:	2c 1d       	IF CC JUMP 0xffa03eac <_htmlDefault+0x2a8> (BP);
ffa03c56:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900730(-7338192) */
ffa03c5a:	01 30       	R0 = R1;
ffa03c5c:	02 e1 80 07 	R2.L = 0x780;		/* (1920)	R2=0xff900780(-7338112) */
ffa03c60:	0e 30       	R1 = R6;
ffa03c62:	ff e3 9d ec 	CALL 0xffa0159c <_strcpy_>;
ffa03c66:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900780(-7338112) */
ffa03c6a:	0e 30       	R1 = R6;
ffa03c6c:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03c70:	ff e3 96 ec 	CALL 0xffa0159c <_strcpy_>;
ffa03c74:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03c78:	0e 30       	R1 = R6;
ffa03c7a:	ff e3 2d ff 	CALL 0xffa03ad4 <_htmlDiv>;
ffa03c7e:	0e 30       	R1 = R6;
ffa03c80:	ff e3 20 ff 	CALL 0xffa03ac0 <_htmlForm>;
ffa03c84:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03c88:	0e 30       	R1 = R6;
ffa03c8a:	02 e1 ac 07 	R2.L = 0x7ac;		/* (1964)	R2=0xff9007ac(-7338068) */
ffa03c8e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f58 <_TcpSeqHost> */
ffa03c92:	ff e3 85 ec 	CALL 0xffa0159c <_strcpy_>;
ffa03c96:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03c98:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa03c9a:	0d e1 84 0e 	P5.L = 0xe84;		/* (3716)	P5=0xff900e84 <_NetDataDestIP> */
ffa03c9e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007ac(-7338068) */
ffa03ca2:	0e 30       	R1 = R6;
ffa03ca4:	02 e1 c8 07 	R2.L = 0x7c8;		/* (1992)	R2=0xff9007c8(-7338040) */
ffa03ca8:	ff e3 7a ec 	CALL 0xffa0159c <_strcpy_>;
ffa03cac:	17 30       	R2 = R7;
ffa03cae:	0e 30       	R1 = R6;
ffa03cb0:	ff e3 dc ed 	CALL 0xffa01868 <_strprintf_int>;
ffa03cb4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007c8(-7338040) */
ffa03cb8:	0e 30       	R1 = R6;
ffa03cba:	02 e1 e4 07 	R2.L = 0x7e4;		/* (2020)	R2=0xff9007e4(-7338012) */
ffa03cbe:	ff e3 6f ec 	CALL 0xffa0159c <_strcpy_>;
ffa03cc2:	2a 91       	R2 = [P5];
ffa03cc4:	6a 40       	R2 >>= R5;
ffa03cc6:	52 43       	R2 = R2.B (Z);
ffa03cc8:	0e 30       	R1 = R6;
ffa03cca:	ff e3 cf ed 	CALL 0xffa01868 <_strprintf_int>;
ffa03cce:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007e4(-7338012) */
ffa03cd2:	0e 30       	R1 = R6;
ffa03cd4:	02 e1 f8 07 	R2.L = 0x7f8;		/* (2040)	R2=0xff9007f8(-7337992) */
ffa03cd8:	ff e3 62 ec 	CALL 0xffa0159c <_strcpy_>;
ffa03cdc:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03cde:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03ce0:	0f 08       	CC = R7 == R1;
ffa03ce2:	45 64       	R5 += 0x8;		/* (  8) */
ffa03ce4:	dd 17       	IF !CC JUMP 0xffa03c9e <_htmlDefault+0x9a> (BP);
ffa03ce6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007f8(-7337992) */
ffa03cea:	0e 30       	R1 = R6;
ffa03cec:	02 e1 00 08 	R2.L = 0x800;		/* (2048)	R2=0xff900800(-7337984) */
ffa03cf0:	ff e3 56 ec 	CALL 0xffa0159c <_strcpy_>;
ffa03cf4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900800(-7337984) */
ffa03cf8:	0e 30       	R1 = R6;
ffa03cfa:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03cfe:	ff e3 4f ec 	CALL 0xffa0159c <_strcpy_>;
ffa03d02:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03d06:	0e 30       	R1 = R6;
ffa03d08:	ff e3 e6 fe 	CALL 0xffa03ad4 <_htmlDiv>;
ffa03d0c:	0e 30       	R1 = R6;
ffa03d0e:	ff e3 d9 fe 	CALL 0xffa03ac0 <_htmlForm>;
ffa03d12:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03d16:	0e 30       	R1 = R6;
ffa03d18:	02 e1 24 08 	R2.L = 0x824;		/* (2084)	R2=0xff900824(-7337948) */
ffa03d1c:	ff e3 40 ec 	CALL 0xffa0159c <_strcpy_>;
ffa03d20:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bd4 */
ffa03d24:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03d28:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03d2c:	10 99 00 00 
ffa03d30:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03d32:	c6 1c       	IF CC JUMP 0xffa03ebe <_htmlDefault+0x2ba> (BP);
ffa03d34:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900824(-7337948) */
ffa03d38:	01 30       	R0 = R1;
ffa03d3a:	02 e1 8c 07 	R2.L = 0x78c;		/* (1932)	R2=0xff90078c(-7338100) */
ffa03d3e:	0e 30       	R1 = R6;
ffa03d40:	ff e3 2e ec 	CALL 0xffa0159c <_strcpy_>;
ffa03d44:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90078c(-7338100) */
ffa03d48:	0e 30       	R1 = R6;
ffa03d4a:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03d4e:	ff e3 27 ec 	CALL 0xffa0159c <_strcpy_>;
ffa03d52:	0e 30       	R1 = R6;
ffa03d54:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03d58:	ff e3 be fe 	CALL 0xffa03ad4 <_htmlDiv>;
ffa03d5c:	0e 30       	R1 = R6;
ffa03d5e:	ff e3 b1 fe 	CALL 0xffa03ac0 <_htmlForm>;
ffa03d62:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03d66:	0e 30       	R1 = R6;
ffa03d68:	02 e1 64 08 	R2.L = 0x864;		/* (2148)	R2=0xff900864(-7337884) */
ffa03d6c:	ff e3 18 ec 	CALL 0xffa0159c <_strcpy_>;
ffa03d70:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa03d74:	01 e1 94 08 	R1.L = 0x894;		/* (2196)	R1=0xff900894(-7337836) */
ffa03d78:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900864(-7337884) */
ffa03d7c:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa03d80:	f1 b0 00 00 
ffa03d84:	02 e1 88 08 	R2.L = 0x888;		/* (2184)	R2=0xff900888(-7337848) */
ffa03d88:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03d8c:	37 b1 00 00 
ffa03d90:	ff e3 fe fe 	CALL 0xffa03b8c <_htmlCursorSelect>;
ffa03d94:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900894(-7337836) */
ffa03d98:	01 e1 ac 08 	R1.L = 0x8ac;		/* (2220)	R1=0xff9008ac(-7337812) */
ffa03d9c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900888(-7337848) */
ffa03da0:	f1 b0       	[SP + 0xc] = R1;
ffa03da2:	02 e1 a0 08 	R2.L = 0x8a0;		/* (2208)	R2=0xff9008a0(-7337824) */
ffa03da6:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03daa:	37 b1 00 00 
ffa03dae:	ff e3 ef fe 	CALL 0xffa03b8c <_htmlCursorSelect>;
ffa03db2:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008ac(-7337812) */
ffa03db6:	01 e1 c4 08 	R1.L = 0x8c4;		/* (2244)	R1=0xff9008c4(-7337788) */
ffa03dba:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a0(-7337824) */
ffa03dbe:	f1 b0       	[SP + 0xc] = R1;
ffa03dc0:	02 e1 b8 08 	R2.L = 0x8b8;		/* (2232)	R2=0xff9008b8(-7337800) */
ffa03dc4:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03dc8:	37 b1 00 00 
ffa03dcc:	ff e3 e0 fe 	CALL 0xffa03b8c <_htmlCursorSelect>;
ffa03dd0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008c4(-7337788) */
ffa03dd4:	01 e1 d8 08 	R1.L = 0x8d8;		/* (2264)	R1=0xff9008d8(-7337768) */
ffa03dd8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008b8(-7337800) */
ffa03ddc:	f1 b0       	[SP + 0xc] = R1;
ffa03dde:	02 e1 d0 08 	R2.L = 0x8d0;		/* (2256)	R2=0xff9008d0(-7337776) */
ffa03de2:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03de6:	37 b1 00 00 
ffa03dea:	ff e3 d1 fe 	CALL 0xffa03b8c <_htmlCursorSelect>;
ffa03dee:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008d0(-7337776) */
ffa03df2:	0e 30       	R1 = R6;
ffa03df4:	02 e1 e4 08 	R2.L = 0x8e4;		/* (2276)	R2=0xff9008e4(-7337756) */
ffa03df8:	ff e3 d2 eb 	CALL 0xffa0159c <_strcpy_>;
ffa03dfc:	0e 30       	R1 = R6;
ffa03dfe:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03e02:	ff e3 69 fe 	CALL 0xffa03ad4 <_htmlDiv>;
ffa03e06:	0e 30       	R1 = R6;
ffa03e08:	ff e3 5c fe 	CALL 0xffa03ac0 <_htmlForm>;
ffa03e0c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03e10:	0e 30       	R1 = R6;
ffa03e12:	02 e1 20 09 	R2.L = 0x920;		/* (2336)	R2=0xff900920(-7337696) */
ffa03e16:	ff e3 c3 eb 	CALL 0xffa0159c <_strcpy_>;
ffa03e1a:	0e 30       	R1 = R6;
ffa03e1c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03e20:	ff e3 5a fe 	CALL 0xffa03ad4 <_htmlDiv>;
ffa03e24:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03e28:	0e 30       	R1 = R6;
ffa03e2a:	02 e1 78 09 	R2.L = 0x978;		/* (2424)	R2=0xff900978(-7337608) */
ffa03e2e:	ff e3 b7 eb 	CALL 0xffa0159c <_strcpy_>;
ffa03e32:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900978(-7337608) */
ffa03e36:	0e 30       	R1 = R6;
ffa03e38:	02 e1 a0 09 	R2.L = 0x9a0;		/* (2464)	R2=0xff9009a0(-7337568) */
ffa03e3c:	ff e3 b0 eb 	CALL 0xffa0159c <_strcpy_>;
ffa03e40:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009a0(-7337568) */
ffa03e44:	0e 30       	R1 = R6;
ffa03e46:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03e4a:	ff e3 a9 eb 	CALL 0xffa0159c <_strcpy_>;
ffa03e4e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900798(-7338088) */
ffa03e52:	0e 30       	R1 = R6;
ffa03e54:	02 e1 e8 09 	R2.L = 0x9e8;		/* (2536)	R2=0xff9009e8(-7337496) */
ffa03e58:	ff e3 a2 eb 	CALL 0xffa0159c <_strcpy_>;
ffa03e5c:	0e 30       	R1 = R6;
ffa03e5e:	22 e1 75 ff 	R2 = -0x8b (X);		/*		R2=0xffffff75(-139) */
ffa03e62:	ff e3 03 ed 	CALL 0xffa01868 <_strprintf_int>;
ffa03e66:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ff75(-7274635) */
ffa03e6a:	0e 30       	R1 = R6;
ffa03e6c:	02 e1 b0 00 	R2.L = 0xb0;		/* (176)	R2=0xff9000b0(-7339856) */
ffa03e70:	ff e3 96 eb 	CALL 0xffa0159c <_strcpy_>;
ffa03e74:	0e 30       	R1 = R6;
ffa03e76:	92 62       	R2 = -0x2e (X);		/*		R2=0xffffffd2(-46) */
ffa03e78:	ff e3 f8 ec 	CALL 0xffa01868 <_strprintf_int>;
ffa03e7c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ffd2(-7274542) */
ffa03e80:	0e 30       	R1 = R6;
ffa03e82:	02 e1 88 00 	R2.L = 0x88;		/* (136)	R2=0xff900088(-7339896) */
ffa03e86:	ff e3 8b eb 	CALL 0xffa0159c <_strcpy_>;
ffa03e8a:	0e 30       	R1 = R6;
ffa03e8c:	22 e1 d0 fd 	R2 = -0x230 (X);		/*		R2=0xfffffdd0(-560) */
ffa03e90:	ff e3 ec ec 	CALL 0xffa01868 <_strprintf_int>;
ffa03e94:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90fdd0(-7275056) */
ffa03e98:	0e 30       	R1 = R6;
ffa03e9a:	02 e1 f4 09 	R2.L = 0x9f4;		/* (2548)	R2=0xff9009f4(-7337484) */
ffa03e9e:	ff e3 7f eb 	CALL 0xffa0159c <_strcpy_>;
ffa03ea2:	f0 b9       	R0 = [FP -0x4];
ffa03ea4:	01 e8 00 00 	UNLINK;
ffa03ea8:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03eaa:	10 00       	RTS;
ffa03eac:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009f4(-7337484) */
ffa03eb0:	01 30       	R0 = R1;
ffa03eb2:	02 e1 8c 07 	R2.L = 0x78c;		/* (1932)	R2=0xff90078c(-7338100) */
ffa03eb6:	0e 30       	R1 = R6;
ffa03eb8:	ff e3 72 eb 	CALL 0xffa0159c <_strcpy_>;
ffa03ebc:	d5 2e       	JUMP.S 0xffa03c66 <_htmlDefault+0x62>;
ffa03ebe:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90078c(-7338100) */
ffa03ec2:	01 30       	R0 = R1;
ffa03ec4:	02 e1 80 07 	R2.L = 0x780;		/* (1920)	R2=0xff900780(-7338112) */
ffa03ec8:	0e 30       	R1 = R6;
ffa03eca:	ff e3 69 eb 	CALL 0xffa0159c <_strcpy_>;
ffa03ece:	3b 2f       	JUMP.S 0xffa03d44 <_htmlDefault+0x140>;

ffa03ed0 <_httpHeader>:
ffa03ed0:	78 05       	[--SP] = (R7:7);
ffa03ed2:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03ed6:	7f 30       	R7 = FP;
ffa03ed8:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03eda:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03edc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900780(-7338112) */
ffa03ee0:	f0 bb       	[FP -0x4] = R0;
ffa03ee2:	0f 30       	R1 = R7;
ffa03ee4:	02 e1 0c 0a 	R2.L = 0xa0c;		/* (2572)	R2=0xff900a0c(-7337460) */
ffa03ee8:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03eec:	ff e3 58 eb 	CALL 0xffa0159c <_strcpy_>;
ffa03ef0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a0c(-7337460) */
ffa03ef4:	0f 30       	R1 = R7;
ffa03ef6:	02 e1 20 0a 	R2.L = 0xa20;		/* (2592)	R2=0xff900a20(-7337440) */
ffa03efa:	ff e3 51 eb 	CALL 0xffa0159c <_strcpy_>;
ffa03efe:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a20(-7337440) */
ffa03f02:	0f 30       	R1 = R7;
ffa03f04:	02 e1 34 0a 	R2.L = 0xa34;		/* (2612)	R2=0xff900a34(-7337420) */
ffa03f08:	ff e3 4a eb 	CALL 0xffa0159c <_strcpy_>;
ffa03f0c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa03f10:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa03f14:	12 91       	R2 = [P2];
ffa03f16:	0f 30       	R1 = R7;
ffa03f18:	ff e3 a8 ec 	CALL 0xffa01868 <_strprintf_int>;
ffa03f1c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a34(-7337420) */
ffa03f20:	0f 30       	R1 = R7;
ffa03f22:	02 e1 48 0a 	R2.L = 0xa48;		/* (2632)	R2=0xff900a48(-7337400) */
ffa03f26:	ff e3 3b eb 	CALL 0xffa0159c <_strcpy_>;
ffa03f2a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f78 <_g_httpContentLen> */
ffa03f2e:	f0 b9       	R0 = [FP -0x4];
ffa03f30:	0a e1 74 0f 	P2.L = 0xf74;		/* (3956)	P2=0xff900f74 <_g_httpHeaderLen> */
ffa03f34:	10 93       	[P2] = R0;
ffa03f36:	01 e8 00 00 	UNLINK;
ffa03f3a:	38 05       	(R7:7) = [SP++];
ffa03f3c:	10 00       	RTS;
	...

ffa03f40 <_htmlGeneric>:
ffa03f40:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03f44:	10 30       	R2 = R0;
ffa03f46:	4f 30       	R1 = FP;
ffa03f48:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03f4a:	f0 bb       	[FP -0x4] = R0;
ffa03f4c:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03f4e:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03f52:	ff e3 25 eb 	CALL 0xffa0159c <_strcpy_>;
ffa03f56:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f74 <_g_httpHeaderLen> */
ffa03f5a:	f0 b9       	R0 = [FP -0x4];
ffa03f5c:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa03f60:	10 93       	[P2] = R0;
ffa03f62:	ff e3 b7 ff 	CALL 0xffa03ed0 <_httpHeader>;
ffa03f66:	f0 b9       	R0 = [FP -0x4];
ffa03f68:	01 e8 00 00 	UNLINK;
ffa03f6c:	10 00       	RTS;
	...

ffa03f70 <_httpResp>:
ffa03f70:	60 05       	[--SP] = (R7:4);
ffa03f72:	30 30       	R6 = R0;
ffa03f74:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa03f76:	01 09       	CC = R1 <= R0;
ffa03f78:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa03f7c:	39 30       	R7 = R1;
ffa03f7e:	21 10       	IF !CC JUMP 0xffa03fc0 <_httpResp+0x50>;
ffa03f80:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa03f82:	0f 09       	CC = R7 <= R1;
ffa03f84:	34 10       	IF !CC JUMP 0xffa03fec <_httpResp+0x7c>;
ffa03f86:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa03f8a:	00 e1 04 0a 	R0.L = 0xa04;		/* (2564)	R0=0xff900a04(-7337468) */
ffa03f8e:	0e 30       	R1 = R6;
ffa03f90:	17 30       	R2 = R7;
ffa03f92:	ff e3 73 eb 	CALL 0xffa01678 <_substr>;
ffa03f96:	00 0c       	CC = R0 == 0x0;
ffa03f98:	06 10       	IF !CC JUMP 0xffa03fa4 <_httpResp+0x34>;
ffa03f9a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03f9c:	01 e8 00 00 	UNLINK;
ffa03fa0:	20 05       	(R7:4) = [SP++];
ffa03fa2:	10 00       	RTS;
ffa03fa4:	ff e3 b0 fd 	CALL 0xffa03b04 <_html404>;
ffa03fa8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f78 <_g_httpContentLen> */
ffa03fac:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa03fb0:	10 93       	[P2] = R0;
ffa03fb2:	ff e3 8f ff 	CALL 0xffa03ed0 <_httpHeader>;
ffa03fb6:	01 e8 00 00 	UNLINK;
ffa03fba:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03fbc:	20 05       	(R7:4) = [SP++];
ffa03fbe:	10 00       	RTS;
ffa03fc0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa03fc4:	06 30       	R0 = R6;
ffa03fc6:	01 e1 68 0a 	R1.L = 0xa68;		/* (2664)	R1=0xff900a68(-7337368) */
ffa03fca:	ff e3 29 eb 	CALL 0xffa0161c <_strcmp>;
ffa03fce:	00 0c       	CC = R0 == 0x0;
ffa03fd0:	d8 1f       	IF CC JUMP 0xffa03f80 <_httpResp+0x10> (BP);
ffa03fd2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03fd6:	00 e1 04 0a 	R0.L = 0xa04;		/* (2564)	R0=0xff900a04(-7337468) */
ffa03fda:	0e 30       	R1 = R6;
ffa03fdc:	17 30       	R2 = R7;
ffa03fde:	ff e3 4d eb 	CALL 0xffa01678 <_substr>;
ffa03fe2:	00 0c       	CC = R0 == 0x0;
ffa03fe4:	db 1f       	IF CC JUMP 0xffa03f9a <_httpResp+0x2a> (BP);
ffa03fe6:	ff e3 0f fe 	CALL 0xffa03c04 <_htmlDefault>;
ffa03fea:	df 2f       	JUMP.S 0xffa03fa8 <_httpResp+0x38>;
ffa03fec:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a04(-7337468) */
ffa03ff0:	00 e1 74 0a 	R0.L = 0xa74;		/* (2676)	R0=0xff900a74(-7337356) */
ffa03ff4:	0e 30       	R1 = R6;
ffa03ff6:	17 30       	R2 = R7;
ffa03ff8:	ff e3 40 eb 	CALL 0xffa01678 <_substr>;
ffa03ffc:	00 0c       	CC = R0 == 0x0;
ffa03ffe:	3c 1c       	IF CC JUMP 0xffa04076 <_httpResp+0x106> (BP);
ffa04000:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a74(-7337356) */
ffa04004:	00 e1 80 0a 	R0.L = 0xa80;		/* (2688)	R0=0xff900a80(-7337344) */
ffa04008:	0e 30       	R1 = R6;
ffa0400a:	17 30       	R2 = R7;
ffa0400c:	ff e3 36 eb 	CALL 0xffa01678 <_substr>;
ffa04010:	00 0c       	CC = R0 == 0x0;
ffa04012:	c4 1f       	IF CC JUMP 0xffa03f9a <_httpResp+0x2a> (BP);
ffa04014:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa04016:	06 50       	R0 = R6 + R0;
ffa04018:	ff e3 50 ec 	CALL 0xffa018b8 <_atoi>;
ffa0401c:	08 30       	R1 = R0;
ffa0401e:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa04022:	00 67       	R0 += -0x20;		/* (-32) */
ffa04024:	10 0a       	CC = R0 <= R2 (IU);
ffa04026:	24 11       	IF !CC JUMP 0xffa0426e <_httpResp+0x2fe>;
ffa04028:	82 c6 19 84 	R2 = R1 << 0x3;
ffa0402c:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800f78 */
ffa04030:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa04034:	02 0d       	CC = R2 <= 0x0;
ffa04036:	13 91       	R3 = [P2];
ffa04038:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa0403c:	14 18       	IF CC JUMP 0xffa04064 <_httpResp+0xf4>;
ffa0403e:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa04042:	28 4f       	R0 <<= 0x5;
ffa04044:	03 54       	R0 = R3 & R0;
ffa04046:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa04048:	38 52       	R0 = R0 - R7;
ffa0404a:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa0404e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa04050:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa04054:	18 54       	R0 = R0 & R3;
ffa04056:	10 32       	P2 = R0;
ffa04058:	09 64       	R1 += 0x1;		/* (  1) */
ffa0405a:	0a 08       	CC = R2 == R1;
ffa0405c:	10 90       	R0 = [P2++];
ffa0405e:	08 92       	[P1++] = R0;
ffa04060:	42 30       	R0 = P2;
ffa04062:	f9 17       	IF !CC JUMP 0xffa04054 <_httpResp+0xe4> (BP);
ffa04064:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900804 */
ffa04068:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa0406c:	17 93       	[P2] = R7;
ffa0406e:	ff e3 31 ff 	CALL 0xffa03ed0 <_httpHeader>;
ffa04072:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04074:	94 2f       	JUMP.S 0xffa03f9c <_httpResp+0x2c>;
ffa04076:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0407a:	00 e1 b4 0a 	R0.L = 0xab4;		/* (2740)	R0=0xff900ab4(-7337292) */
ffa0407e:	0e 30       	R1 = R6;
ffa04080:	17 30       	R2 = R7;
ffa04082:	ff e3 fb ea 	CALL 0xffa01678 <_substr>;
ffa04086:	00 0c       	CC = R0 == 0x0;
ffa04088:	7f 1f       	IF CC JUMP 0xffa03f86 <_httpResp+0x16> (BP);
ffa0408a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ab4(-7337292) */
ffa0408e:	0e 30       	R1 = R6;
ffa04090:	17 30       	R2 = R7;
ffa04092:	00 e1 b4 0a 	R0.L = 0xab4;		/* (2740)	R0=0xff900ab4(-7337292) */
ffa04096:	ff e3 f1 ea 	CALL 0xffa01678 <_substr>;
ffa0409a:	86 51       	R6 = R6 + R0;
ffa0409c:	47 53       	R5 = R7 - R0;
ffa0409e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ab4(-7337292) */
ffa040a2:	00 e1 bc 0a 	R0.L = 0xabc;		/* (2748)	R0=0xff900abc(-7337284) */
ffa040a6:	0e 30       	R1 = R6;
ffa040a8:	15 30       	R2 = R5;
ffa040aa:	ff e3 e7 ea 	CALL 0xffa01678 <_substr>;
ffa040ae:	00 0c       	CC = R0 == 0x0;
ffa040b0:	10 11       	IF !CC JUMP 0xffa042d0 <_httpResp+0x360>;
ffa040b2:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa040b4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900abc(-7337284) */
ffa040b8:	00 e1 e0 0a 	R0.L = 0xae0;		/* (2784)	R0=0xff900ae0(-7337248) */
ffa040bc:	0e 30       	R1 = R6;
ffa040be:	15 30       	R2 = R5;
ffa040c0:	ff e3 dc ea 	CALL 0xffa01678 <_substr>;
ffa040c4:	00 0c       	CC = R0 == 0x0;
ffa040c6:	e2 10       	IF !CC JUMP 0xffa0428a <_httpResp+0x31a>;
ffa040c8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ae0(-7337248) */
ffa040cc:	0e 30       	R1 = R6;
ffa040ce:	00 e1 ec 0a 	R0.L = 0xaec;		/* (2796)	R0=0xff900aec(-7337236) */
ffa040d2:	15 30       	R2 = R5;
ffa040d4:	ff e3 d2 ea 	CALL 0xffa01678 <_substr>;
ffa040d8:	00 0c       	CC = R0 == 0x0;
ffa040da:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900aec(-7337236) */
ffa040de:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa040e0:	0e 30       	R1 = R6;
ffa040e2:	15 30       	R2 = R5;
ffa040e4:	00 e1 f8 0a 	R0.L = 0xaf8;		/* (2808)	R0=0xff900af8(-7337224) */
ffa040e8:	27 06       	IF !CC R4 = R7;
ffa040ea:	ff e3 c7 ea 	CALL 0xffa01678 <_substr>;
ffa040ee:	00 0c       	CC = R0 == 0x0;
ffa040f0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900af8(-7337224) */
ffa040f4:	0e 30       	R1 = R6;
ffa040f6:	15 30       	R2 = R5;
ffa040f8:	00 e1 04 0b 	R0.L = 0xb04;		/* (2820)	R0=0xff900b04(-7337212) */
ffa040fc:	27 06       	IF !CC R4 = R7;
ffa040fe:	ff e3 bd ea 	CALL 0xffa01678 <_substr>;
ffa04102:	00 0c       	CC = R0 == 0x0;
ffa04104:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b04(-7337212) */
ffa04108:	0e 30       	R1 = R6;
ffa0410a:	15 30       	R2 = R5;
ffa0410c:	00 e1 10 0b 	R0.L = 0xb10;		/* (2832)	R0=0xff900b10(-7337200) */
ffa04110:	27 06       	IF !CC R4 = R7;
ffa04112:	ff e3 b3 ea 	CALL 0xffa01678 <_substr>;
ffa04116:	00 0c       	CC = R0 == 0x0;
ffa04118:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b10(-7337200) */
ffa0411c:	00 e1 1c 0b 	R0.L = 0xb1c;		/* (2844)	R0=0xff900b1c(-7337188) */
ffa04120:	0e 30       	R1 = R6;
ffa04122:	15 30       	R2 = R5;
ffa04124:	27 06       	IF !CC R4 = R7;
ffa04126:	ff e3 a9 ea 	CALL 0xffa01678 <_substr>;
ffa0412a:	00 0c       	CC = R0 == 0x0;
ffa0412c:	15 11       	IF !CC JUMP 0xffa04356 <_httpResp+0x3e6>;
ffa0412e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b1c(-7337188) */
ffa04132:	00 e1 24 0b 	R0.L = 0xb24;		/* (2852)	R0=0xff900b24(-7337180) */
ffa04136:	0e 30       	R1 = R6;
ffa04138:	15 30       	R2 = R5;
ffa0413a:	ff e3 9f ea 	CALL 0xffa01678 <_substr>;
ffa0413e:	00 0c       	CC = R0 == 0x0;
ffa04140:	f6 10       	IF !CC JUMP 0xffa0432c <_httpResp+0x3bc>;
ffa04142:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b24(-7337180) */
ffa04146:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa0414a:	0e 30       	R1 = R6;
ffa0414c:	15 30       	R2 = R5;
ffa0414e:	ff e3 95 ea 	CALL 0xffa01678 <_substr>;
ffa04152:	00 0c       	CC = R0 == 0x0;
ffa04154:	13 11       	IF !CC JUMP 0xffa0437a <_httpResp+0x40a>;
ffa04156:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b2c(-7337172) */
ffa0415a:	00 e1 34 0b 	R0.L = 0xb34;		/* (2868)	R0=0xff900b34(-7337164) */
ffa0415e:	0e 30       	R1 = R6;
ffa04160:	15 30       	R2 = R5;
ffa04162:	ff e3 8b ea 	CALL 0xffa01678 <_substr>;
ffa04166:	00 0c       	CC = R0 == 0x0;
ffa04168:	d1 10       	IF !CC JUMP 0xffa0430a <_httpResp+0x39a>;
ffa0416a:	20 43       	R0 = R4.B (X);
ffa0416c:	00 0c       	CC = R0 == 0x0;
ffa0416e:	3c 17       	IF !CC JUMP 0xffa03fe6 <_httpResp+0x76> (BP);
ffa04170:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b34(-7337164) */
ffa04174:	00 e1 3c 0b 	R0.L = 0xb3c;		/* (2876)	R0=0xff900b3c(-7337156) */
ffa04178:	0e 30       	R1 = R6;
ffa0417a:	15 30       	R2 = R5;
ffa0417c:	ff e3 7e ea 	CALL 0xffa01678 <_substr>;
ffa04180:	00 0c       	CC = R0 == 0x0;
ffa04182:	0c 1b       	IF CC JUMP 0xffa03f9a <_httpResp+0x2a>;
ffa04184:	7f 30       	R7 = FP;
ffa04186:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa0418a:	57 5a       	P1 = FP + P2;
ffa0418c:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0418e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04190:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa04192:	b2 e0 02 20 	LSETUP(0xffa04196 <_httpResp+0x226>, 0xffa04196 <_httpResp+0x226>) LC1 = P2;
ffa04196:	08 92       	[P1++] = R0;
ffa04198:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa0419c:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa041a0:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa041a4:	29 4f       	R1 <<= 0x5;
ffa041a6:	10 91       	R0 = [P2];
ffa041a8:	08 54       	R0 = R0 & R1;
ffa041aa:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa041ac:	81 4f       	R1 <<= 0x10;
ffa041ae:	08 50       	R0 = R0 + R1;
ffa041b0:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa041b2:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa041b6:	88 54       	R2 = R0 & R1;
ffa041b8:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa041bc:	b2 e0 12 10 	LSETUP(0xffa041c0 <_httpResp+0x250>, 0xffa041e0 <_httpResp+0x270>) LC1 = P1;
ffa041c0:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa041c4:	97 5a       	P2 = FP + P2;
ffa041c6:	02 32       	P0 = R2;
ffa041c8:	11 91       	R1 = [P2];
ffa041ca:	12 64       	R2 += 0x2;		/* (  2) */
ffa041cc:	00 94       	R0 = W[P0++] (Z);
ffa041ce:	41 50       	R1 = R1 + R0;
ffa041d0:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa041d2:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa041d6:	11 92       	[P2++] = R1;
ffa041d8:	82 54       	R2 = R2 & R0;
ffa041da:	42 30       	R0 = P2;
ffa041dc:	38 08       	CC = R0 == R7;
ffa041de:	f4 17       	IF !CC JUMP 0xffa041c6 <_httpResp+0x256> (BP);
ffa041e0:	00 00       	NOP;
ffa041e2:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa041e6:	97 5a       	P2 = FP + P2;
ffa041e8:	00 00       	NOP;
ffa041ea:	10 91       	R0 = [P2];
ffa041ec:	58 4d       	R0 >>>= 0xb;
ffa041ee:	10 92       	[P2++] = R0;
ffa041f0:	4a 30       	R1 = P2;
ffa041f2:	39 08       	CC = R1 == R7;
ffa041f4:	fa 17       	IF !CC JUMP 0xffa041e8 <_httpResp+0x278> (BP);
ffa041f6:	ff e3 07 fd 	CALL 0xffa03c04 <_htmlDefault>;
ffa041fa:	68 67       	R0 += -0x13;		/* (-19) */
ffa041fc:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa04200:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80 <_g_enableUDP>(-7336064) */
ffa04204:	f0 bb       	[FP -0x4] = R0;
ffa04206:	02 e1 4c 0b 	R2.L = 0xb4c;		/* (2892)	R2=0xff900b4c(-7337140) */
ffa0420a:	08 50       	R0 = R0 + R1;
ffa0420c:	0f 30       	R1 = R7;
ffa0420e:	ff e3 c7 e9 	CALL 0xffa0159c <_strcpy_>;
ffa04212:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa04216:	f5 b8 00 00 
ffa0421a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b4c(-7337140) */
ffa0421e:	0f 30       	R1 = R7;
ffa04220:	02 e1 58 0b 	R2.L = 0xb58;		/* (2904)	R2=0xff900b58(-7337128) */
ffa04224:	ff e3 bc e9 	CALL 0xffa0159c <_strcpy_>;
ffa04228:	16 30       	R2 = R6;
ffa0422a:	0f 30       	R1 = R7;
ffa0422c:	ff e3 1e eb 	CALL 0xffa01868 <_strprintf_int>;
ffa04230:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b58(-7337128) */
ffa04234:	0f 30       	R1 = R7;
ffa04236:	02 e1 6c 0b 	R2.L = 0xb6c;		/* (2924)	R2=0xff900b6c(-7337108) */
ffa0423a:	ff e3 b1 e9 	CALL 0xffa0159c <_strcpy_>;
ffa0423e:	0f 30       	R1 = R7;
ffa04240:	15 30       	R2 = R5;
ffa04242:	ff e3 13 eb 	CALL 0xffa01868 <_strprintf_int>;
ffa04246:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b6c(-7337108) */
ffa0424a:	02 e1 7c 0b 	R2.L = 0xb7c;		/* (2940)	R2=0xff900b7c(-7337092) */
ffa0424e:	0f 30       	R1 = R7;
ffa04250:	ff e3 a6 e9 	CALL 0xffa0159c <_strcpy_>;
ffa04254:	0e 64       	R6 += 0x1;		/* (  1) */
ffa04256:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa04258:	16 08       	CC = R6 == R2;
ffa0425a:	e0 17       	IF !CC JUMP 0xffa0421a <_httpResp+0x2aa> (BP);
ffa0425c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa04260:	0f 30       	R1 = R7;
ffa04262:	02 e1 88 0b 	R2.L = 0xb88;		/* (2952)	R2=0xff900b88(-7337080) */
ffa04266:	ff e3 9b e9 	CALL 0xffa0159c <_strcpy_>;
ffa0426a:	f0 b9       	R0 = [FP -0x4];
ffa0426c:	9e 2e       	JUMP.S 0xffa03fa8 <_httpResp+0x38>;
ffa0426e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04270:	4f 30       	R1 = FP;
ffa04272:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b88(-7337080) */
ffa04276:	f0 bb       	[FP -0x4] = R0;
ffa04278:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa0427a:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa0427e:	02 e1 88 0a 	R2.L = 0xa88;		/* (2696)	R2=0xff900a88(-7337336) */
ffa04282:	ff e3 8d e9 	CALL 0xffa0159c <_strcpy_>;
ffa04286:	f0 b9       	R0 = [FP -0x4];
ffa04288:	90 2e       	JUMP.S 0xffa03fa8 <_httpResp+0x38>;
ffa0428a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa0428e:	00 e1 cc 0a 	R0.L = 0xacc;		/* (2764)	R0=0xff900acc(-7337268) */
ffa04292:	0e 30       	R1 = R6;
ffa04294:	15 30       	R2 = R5;
ffa04296:	ff e3 f1 e9 	CALL 0xffa01678 <_substr>;
ffa0429a:	00 0c       	CC = R0 == 0x0;
ffa0429c:	08 1c       	IF CC JUMP 0xffa042ac <_httpResp+0x33c> (BP);
ffa0429e:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa042a2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa042a4:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa042a8:	10 9b       	B[P2] = R0;
ffa042aa:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa042ac:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa042b0:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa042b4:	0e 30       	R1 = R6;
ffa042b6:	15 30       	R2 = R5;
ffa042b8:	ff e3 e0 e9 	CALL 0xffa01678 <_substr>;
ffa042bc:	00 0c       	CC = R0 == 0x0;
ffa042be:	05 1f       	IF CC JUMP 0xffa040c8 <_httpResp+0x158> (BP);
ffa042c0:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa042c4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa042c6:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa042ca:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa042cc:	10 9b       	B[P2] = R0;
ffa042ce:	fd 2e       	JUMP.S 0xffa040c8 <_httpResp+0x158>;
ffa042d0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa042d4:	00 e1 cc 0a 	R0.L = 0xacc;		/* (2764)	R0=0xff900acc(-7337268) */
ffa042d8:	0e 30       	R1 = R6;
ffa042da:	15 30       	R2 = R5;
ffa042dc:	ff e3 ce e9 	CALL 0xffa01678 <_substr>;
ffa042e0:	00 0c       	CC = R0 == 0x0;
ffa042e2:	61 14       	IF !CC JUMP 0xffa043a4 <_httpResp+0x434> (BP);
ffa042e4:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa042e6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900acc(-7337268) */
ffa042ea:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa042ee:	0e 30       	R1 = R6;
ffa042f0:	15 30       	R2 = R5;
ffa042f2:	ff e3 c3 e9 	CALL 0xffa01678 <_substr>;
ffa042f6:	00 0c       	CC = R0 == 0x0;
ffa042f8:	de 1e       	IF CC JUMP 0xffa040b4 <_httpResp+0x144> (BP);
ffa042fa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa042fe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04300:	0a e1 d4 0b 	P2.L = 0xbd4;		/* (3028)	P2=0xff900bd4 <_g_streamEnabled> */
ffa04304:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04306:	10 9b       	B[P2] = R0;
ffa04308:	d6 2e       	JUMP.S 0xffa040b4 <_httpResp+0x144>;
ffa0430a:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0430c:	06 50       	R0 = R6 + R0;
ffa0430e:	ff e3 d5 ea 	CALL 0xffa018b8 <_atoi>;
ffa04312:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bd4 <_g_streamEnabled> */
ffa04316:	0a e1 84 0e 	P2.L = 0xe84;		/* (3716)	P2=0xff900e84 <_NetDataDestIP> */
ffa0431a:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0431c:	11 91       	R1 = [P2];
ffa0431e:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa04322:	51 54       	R1 = R1 & R2;
ffa04324:	c0 4f       	R0 <<= 0x18;
ffa04326:	41 50       	R1 = R1 + R0;
ffa04328:	11 93       	[P2] = R1;
ffa0432a:	5e 2e       	JUMP.S 0xffa03fe6 <_httpResp+0x76>;
ffa0432c:	86 51       	R6 = R6 + R0;
ffa0432e:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04330:	45 53       	R5 = R5 - R0;
ffa04332:	06 30       	R0 = R6;
ffa04334:	ff e3 c2 ea 	CALL 0xffa018b8 <_atoi>;
ffa04338:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e84 <_NetDataDestIP> */
ffa0433c:	0a e1 84 0e 	P2.L = 0xe84;		/* (3716)	P2=0xff900e84 <_NetDataDestIP> */
ffa04340:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04342:	11 91       	R1 = [P2];
ffa04344:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa04348:	40 43       	R0 = R0.B (Z);
ffa0434a:	51 54       	R1 = R1 & R2;
ffa0434c:	40 4f       	R0 <<= 0x8;
ffa0434e:	41 50       	R1 = R1 + R0;
ffa04350:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04352:	11 93       	[P2] = R1;
ffa04354:	f7 2e       	JUMP.S 0xffa04142 <_httpResp+0x1d2>;
ffa04356:	86 51       	R6 = R6 + R0;
ffa04358:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0435a:	45 53       	R5 = R5 - R0;
ffa0435c:	06 30       	R0 = R6;
ffa0435e:	ff e3 ad ea 	CALL 0xffa018b8 <_atoi>;
ffa04362:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e84 <_NetDataDestIP> */
ffa04366:	0a e1 84 0e 	P2.L = 0xe84;		/* (3716)	P2=0xff900e84 <_NetDataDestIP> */
ffa0436a:	11 91       	R1 = [P2];
ffa0436c:	41 4d       	R1 >>>= 0x8;
ffa0436e:	41 4f       	R1 <<= 0x8;
ffa04370:	40 43       	R0 = R0.B (Z);
ffa04372:	08 50       	R0 = R0 + R1;
ffa04374:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04376:	10 93       	[P2] = R0;
ffa04378:	db 2e       	JUMP.S 0xffa0412e <_httpResp+0x1be>;
ffa0437a:	86 51       	R6 = R6 + R0;
ffa0437c:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0437e:	45 53       	R5 = R5 - R0;
ffa04380:	06 30       	R0 = R6;
ffa04382:	ff e3 9b ea 	CALL 0xffa018b8 <_atoi>;
ffa04386:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e84 <_NetDataDestIP> */
ffa0438a:	0a e1 84 0e 	P2.L = 0xe84;		/* (3716)	P2=0xff900e84 <_NetDataDestIP> */
ffa0438e:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04390:	11 91       	R1 = [P2];
ffa04392:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa04396:	40 43       	R0 = R0.B (Z);
ffa04398:	51 54       	R1 = R1 & R2;
ffa0439a:	80 4f       	R0 <<= 0x10;
ffa0439c:	41 50       	R1 = R1 + R0;
ffa0439e:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa043a0:	11 93       	[P2] = R1;
ffa043a2:	da 2e       	JUMP.S 0xffa04156 <_httpResp+0x1e6>;
ffa043a4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e84 <_NetDataDestIP> */
ffa043a8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa043aa:	0a e1 d4 0b 	P2.L = 0xbd4;		/* (3028)	P2=0xff900bd4 <_g_streamEnabled> */
ffa043ae:	10 9b       	B[P2] = R0;
ffa043b0:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bd4 */
ffa043b4:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa043b8:	10 91       	R0 = [P2];
ffa043ba:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa043bc:	22 6c       	P2 += 0x4;		/* (  4) */
ffa043be:	10 93       	[P2] = R0;
ffa043c0:	93 2f       	JUMP.S 0xffa042e6 <_httpResp+0x376>;
	...

ffa043c4 <_httpCollate>:
ffa043c4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa043c6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e84 <_NetDataDestIP> */
ffa043ca:	0d e1 7c 0f 	P5.L = 0xf7c;		/* (3964)	P5=0xff900f7c <_g_httpRxed> */
ffa043ce:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa043d0:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R1 = [P5] || NOP;
ffa043d4:	29 91 00 00 
ffa043d8:	82 4f       	R2 <<= 0x10;
ffa043da:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa043de:	51 50       	R1 = R1 + R2;
ffa043e0:	17 30       	R2 = R7;
ffa043e2:	ff e3 ad e8 	CALL 0xffa0153c <_memcpy_>;
ffa043e6:	28 91       	R0 = [P5];
ffa043e8:	38 50       	R0 = R0 + R7;
ffa043ea:	01 e8 00 00 	UNLINK;
ffa043ee:	28 93       	[P5] = R0;
ffa043f0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa043f2:	bd 05       	(R7:7, P5:5) = [SP++];
ffa043f4:	10 00       	RTS;
	...

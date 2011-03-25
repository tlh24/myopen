
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
ffa000d8:	80 e1 1f 90 	R0 = 0x901f (Z);		/*		R0=0x901f(36895) */
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
ffa00178:	4e 24       	JUMP.S 0xffa00a14 <_main>;
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
ffa003f6:	00 e3 f5 05 	CALL 0xffa00fe0 <_printf_int>;
ffa003fa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa003fe:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa00402:	00 e3 d3 04 	CALL 0xffa00da8 <_uart_str>;
ffa00406:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900508(-7338744) */
ffa0040a:	0d 30       	R1 = R5;
ffa0040c:	00 e1 14 00 	R0.L = 0x14;		/* ( 20)	R0=0xff900014(-7340012) */
ffa00410:	00 e3 36 05 	CALL 0xffa00e7c <_printf_hex_byte>;
ffa00414:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900014(-7340012) */
ffa00418:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa0041c:	00 e3 c6 04 	CALL 0xffa00da8 <_uart_str>;
ffa00420:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900508(-7338744) */
ffa00424:	00 e1 20 00 	R0.L = 0x20;		/* ( 32)	R0=0xff900020(-7340000) */
ffa00428:	0f 30       	R1 = R7;
ffa0042a:	00 e3 29 05 	CALL 0xffa00e7c <_printf_hex_byte>;
ffa0042e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa00432:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00436:	2f 30       	R5 = R7;
ffa00438:	00 e3 b8 04 	CALL 0xffa00da8 <_uart_str>;
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
ffa004b8:	00 e3 94 05 	CALL 0xffa00fe0 <_printf_int>;
ffa004bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002c(-7339988) */
ffa004c0:	ff 42       	R7 = R7.L (Z);
ffa004c2:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa004c6:	00 e3 71 04 	CALL 0xffa00da8 <_uart_str>;
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

ffa00544 <_wait_flash>:
ffa00544:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00546:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa0054a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0054e:	0d e1 04 07 	P5.L = 0x704;		/* (1796)	P5=0xffc00704(-4192508) */
ffa00552:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa00554:	2f 97       	W[P5] = R7;
ffa00556:	24 00       	SSYNC;
ffa00558:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0055a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0055c:	ff e3 c2 fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00560:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00562:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00564:	ff e3 be fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00568:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa0056c:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00570:	17 97       	W[P2] = R7;
ffa00572:	24 00       	SSYNC;
ffa00574:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa00576:	ef 17       	IF !CC JUMP 0xffa00554 <_wait_flash+0x10> (BP);
ffa00578:	01 e8 00 00 	UNLINK;
ffa0057c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0057e:	10 00       	RTS;

ffa00580 <_write_enable_flash>:
ffa00580:	fc 05       	[--SP] = (R7:7, P5:4);
ffa00582:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc0050c(-4193012) */
ffa00586:	0c e1 04 15 	P4.L = 0x1504;		/* (5380)	P4=0xffc01504(-4188924) */
ffa0058a:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0058c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00590:	27 97       	W[P4] = R7;
ffa00592:	24 00       	SSYNC;
ffa00594:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00704(-4192508) */
ffa00598:	21 e1 50 00 	R1 = 0x50 (X);		/*		R1=0x50( 80) */
ffa0059c:	0d e1 08 15 	P5.L = 0x1508;		/* (5384)	P5=0xffc01508(-4188920) */
ffa005a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa005a2:	ff e3 9f fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa005a6:	2f 97       	W[P5] = R7;
ffa005a8:	24 00       	SSYNC;
ffa005aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa005ae:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa005b2:	17 97       	W[P2] = R7;
ffa005b4:	24 00       	SSYNC;
ffa005b6:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa005b8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa005ba:	ff e3 93 fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa005be:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa005c0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa005c2:	ff e3 8f fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa005c6:	2f 97       	W[P5] = R7;
ffa005c8:	24 00       	SSYNC;
ffa005ca:	27 97       	W[P4] = R7;
ffa005cc:	24 00       	SSYNC;
ffa005ce:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa005d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa005d2:	ff e3 87 fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa005d6:	2f 97       	W[P5] = R7;
ffa005d8:	24 00       	SSYNC;
ffa005da:	01 e8 00 00 	UNLINK;
ffa005de:	bc 05       	(R7:7, P5:4) = [SP++];
ffa005e0:	10 00       	RTS;
	...

ffa005e4 <_read_flash_u32>:
ffa005e4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa005e8:	70 05       	[--SP] = (R7:6);
ffa005ea:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa005ee:	16 60       	R6 = 0x2 (X);		/*		R6=0x2(  2) */
ffa005f0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa005f4:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R6 || NOP;
ffa005f8:	16 97 00 00 
ffa005fc:	24 00       	SSYNC;
ffa005fe:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa00600:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00602:	ff e3 6f fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00606:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa0060a:	49 43       	R1 = R1.B (Z);
ffa0060c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0060e:	ff e3 69 fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00612:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa00616:	49 43       	R1 = R1.B (Z);
ffa00618:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0061a:	ff e3 63 fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0061e:	79 43       	R1 = R7.B (Z);
ffa00620:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00622:	ff e3 5f fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00626:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00628:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0062a:	ff e3 5b fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0062e:	47 43       	R7 = R0.B (Z);
ffa00630:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00632:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00634:	ff e3 56 fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00638:	40 43       	R0 = R0.B (Z);
ffa0063a:	47 4f       	R7 <<= 0x8;
ffa0063c:	c7 51       	R7 = R7 + R0;
ffa0063e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00640:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00642:	ff e3 4f fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00646:	40 43       	R0 = R0.B (Z);
ffa00648:	47 4f       	R7 <<= 0x8;
ffa0064a:	c7 51       	R7 = R7 + R0;
ffa0064c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0064e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00650:	ff e3 48 fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00654:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00658:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0065c:	47 4f       	R7 <<= 0x8;
ffa0065e:	16 97       	W[P2] = R6;
ffa00660:	24 00       	SSYNC;
ffa00662:	40 43       	R0 = R0.B (Z);
ffa00664:	c7 51       	R7 = R7 + R0;
ffa00666:	01 e8 00 00 	UNLINK;
ffa0066a:	07 30       	R0 = R7;
ffa0066c:	30 05       	(R7:6) = [SP++];
ffa0066e:	10 00       	RTS;

ffa00670 <_read_flash_u8>:
ffa00670:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00674:	70 05       	[--SP] = (R7:6);
ffa00676:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0067a:	16 60       	R6 = 0x2 (X);		/*		R6=0x2(  2) */
ffa0067c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00680:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R6 || NOP;
ffa00684:	16 97 00 00 
ffa00688:	24 00       	SSYNC;
ffa0068a:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0068c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0068e:	ff e3 29 fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00692:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa00696:	49 43       	R1 = R1.B (Z);
ffa00698:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0069a:	ff e3 23 fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0069e:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa006a2:	49 43       	R1 = R1.B (Z);
ffa006a4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa006a6:	ff e3 1d fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa006aa:	79 43       	R1 = R7.B (Z);
ffa006ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa006ae:	ff e3 19 fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa006b2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa006b4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa006b6:	ff e3 15 fe 	CALL 0xffa002e0 <_spi_write_byte>;
ffa006ba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa006be:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa006c2:	16 97       	W[P2] = R6;
ffa006c4:	24 00       	SSYNC;
ffa006c6:	01 e8 00 00 	UNLINK;
ffa006ca:	40 43       	R0 = R0.B (Z);
ffa006cc:	30 05       	(R7:6) = [SP++];
ffa006ce:	10 00       	RTS;

ffa006d0 <_write_flash>:
ffa006d0:	e3 05       	[--SP] = (R7:4, P5:3);
ffa006d2:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa006d6:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01508(-4188920) */
ffa006da:	f1 bb       	[FP -0x4] = R1;
ffa006dc:	0d e1 04 15 	P5.L = 0x1504;		/* (5380)	P5=0xffc01504(-4188924) */
ffa006e0:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa006e2:	20 30       	R4 = R0;
ffa006e4:	ff e3 4e ff 	CALL 0xffa00580 <_write_enable_flash>;
ffa006e8:	2f 97       	W[P5] = R7;
ffa006ea:	24 00       	SSYNC;
ffa006ec:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa006ee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa006f0:	ff e3 f8 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa006f4:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa006f6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa006f8:	ff e3 f4 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa006fc:	21 e1 f0 00 	R1 = 0xf0 (X);		/*		R1=0xf0(240) */
ffa00700:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00702:	ff e3 ef fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00706:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00708:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0070a:	ff e3 eb fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0070e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00712:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00716:	17 97       	W[P2] = R7;
ffa00718:	24 00       	SSYNC;
ffa0071a:	ff e3 15 ff 	CALL 0xffa00544 <_wait_flash>;
ffa0071e:	04 0c       	CC = R4 == 0x0;
ffa00720:	6c 18       	IF CC JUMP 0xffa007f8 <_write_flash+0x128>;
ffa00722:	fc b9       	P4 = [FP -0x4];
ffa00724:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00726:	15 60       	R5 = 0x2 (X);		/*		R5=0x2(  2) */
ffa00728:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0072c:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00730:	15 97       	W[P2] = R5;
ffa00732:	24 00       	SSYNC;
ffa00734:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01504(-4188924) */
ffa00738:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa0073a:	0d e1 08 15 	P5.L = 0x1508;		/* (5384)	P5=0xffc01508(-4188920) */
ffa0073e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00740:	ff e3 d0 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00744:	2d 97       	W[P5] = R5;
ffa00746:	24 00       	SSYNC;
ffa00748:	4b e1 07 00 	P3.H = 0x7;		/* (  7)	P3=0x70000 */
ffa0074c:	0b e1 00 f0 	P3.L = 0xf000;		/* (-4096)	P3=0x7f000 */
ffa00750:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00754:	43 30       	R0 = P3;
ffa00756:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0075a:	04 cc 30 0e 	R7 = R6 + R0 (NS) || W[P2] = R5 || NOP;
ffa0075e:	15 97 00 00 
ffa00762:	24 00       	SSYNC;
ffa00764:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
ffa00766:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00768:	ff e3 bc fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0076c:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa00770:	47 4e       	R7 >>= 0x8;
ffa00772:	49 43       	R1 = R1.B (Z);
ffa00774:	7f 43       	R7 = R7.B (Z);
ffa00776:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00778:	ff e3 b4 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0077c:	0f 30       	R1 = R7;
ffa0077e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00780:	ff e3 b0 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00784:	71 43       	R1 = R6.B (Z);
ffa00786:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00788:	ff e3 ac fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0078c:	21 98       	R1 = B[P4++] (Z);
ffa0078e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00790:	ff e3 a8 fd 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00794:	2d 97       	W[P5] = R5;
ffa00796:	24 00       	SSYNC;
ffa00798:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0079a:	ff e3 d5 fe 	CALL 0xffa00544 <_wait_flash>;
ffa0079e:	34 08       	CC = R4 == R6;
ffa007a0:	c4 17       	IF !CC JUMP 0xffa00728 <_write_flash+0x58> (BP);
ffa007a2:	fd b9       	P5 = [FP -0x4];
ffa007a4:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
ffa007a6:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa007a8:	73 30       	R6 = P3;
ffa007aa:	65 32       	P4 = P5;
ffa007ac:	02 20       	JUMP.S 0xffa007b0 <_write_flash+0xe0>;
ffa007ae:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa007b0:	37 50       	R0 = R7 + R6;
ffa007b2:	ff e3 5f ff 	CALL 0xffa00670 <_read_flash_u8>;
ffa007b6:	41 43       	R1 = R0.B (Z);
ffa007b8:	28 99       	R0 = B[P5] (Z);
ffa007ba:	01 08       	CC = R1 == R0;
ffa007bc:	0f 18       	IF CC JUMP 0xffa007da <_write_flash+0x10a>;
ffa007be:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa007c2:	00 e1 44 00 	R0.L = 0x44;		/* ( 68)	R0=0xff900044(-7339964) */
ffa007c6:	00 e3 5b 03 	CALL 0xffa00e7c <_printf_hex_byte>;
ffa007ca:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900044(-7339964) */
ffa007ce:	21 99       	R1 = B[P4] (Z);
ffa007d0:	00 e1 54 00 	R0.L = 0x54;		/* ( 84)	R0=0xff900054(-7339948) */
ffa007d4:	00 e3 54 03 	CALL 0xffa00e7c <_printf_hex_byte>;
ffa007d8:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa007da:	0f 64       	R7 += 0x1;		/* (  1) */
ffa007dc:	3c 08       	CC = R4 == R7;
ffa007de:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa007e0:	e7 17       	IF !CC JUMP 0xffa007ae <_write_flash+0xde> (BP);
ffa007e2:	05 48       	CC = !BITTST (R5, 0x0);		/* bit  0 */
ffa007e4:	0a 10       	IF !CC JUMP 0xffa007f8 <_write_flash+0x128>;
ffa007e6:	01 e8 00 00 	UNLINK;
ffa007ea:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900054(-7339948) */
ffa007ee:	00 e1 60 00 	R0.L = 0x60;		/* ( 96)	R0=0xff900060(-7339936) */
ffa007f2:	a3 05       	(R7:4, P5:3) = [SP++];
ffa007f4:	00 e2 34 03 	JUMP.L 0xffa00e5c <_printf_str>;
ffa007f8:	01 e8 00 00 	UNLINK;
ffa007fc:	a3 05       	(R7:4, P5:3) = [SP++];
ffa007fe:	10 00       	RTS;

ffa00800 <_eth_listen>:
ffa00800:	00 0c       	CC = R0 == 0x0;
ffa00802:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa00806:	04 18       	IF CC JUMP 0xffa0080e <_eth_listen+0xe>;
ffa00808:	01 e8 00 00 	UNLINK;
ffa0080c:	10 00       	RTS;
ffa0080e:	47 30       	R0 = FP;
ffa00810:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa00812:	00 e3 a9 10 	CALL 0xffa02964 <_bfin_EMAC_recv>;
ffa00816:	00 0d       	CC = R0 <= 0x0;
ffa00818:	f8 1b       	IF CC JUMP 0xffa00808 <_eth_listen+0x8>;
ffa0081a:	f9 b9       	P1 = [FP -0x4];
ffa0081c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901504 */
ffa00820:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa00824:	11 91       	R1 = [P2];
ffa00826:	c8 a1       	R0 = [P1 + 0x1c];
ffa00828:	08 08       	CC = R0 == R1;
ffa0082a:	ef 17       	IF !CC JUMP 0xffa00808 <_eth_listen+0x8> (BP);
ffa0082c:	48 e4 13 00 	R0 = W[P1 + 0x26] (Z);
ffa00830:	00 e3 76 07 	CALL 0xffa0171c <_htons>;
ffa00834:	c0 42       	R0 = R0.L (Z);
ffa00836:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa0083a:	08 08       	CC = R0 == R1;
ffa0083c:	e6 17       	IF !CC JUMP 0xffa00808 <_eth_listen+0x8> (BP);
ffa0083e:	f0 b9       	R0 = [FP -0x4];
ffa00840:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa00844:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa00846:	01 e1 b9 0b 	R1.L = 0xbb9;		/* (3001)	R1=0xff900bb9 <_g_outpkt>(-7337031) */
ffa0084a:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa0084c:	00 e3 b0 04 	CALL 0xffa011ac <_memcpy_>;
ffa00850:	dc 2f       	JUMP.S 0xffa00808 <_eth_listen+0x8>;
	...

ffa00854 <_getRadioPacket>:
ffa00854:	e3 05       	[--SP] = (R7:4, P5:3);
ffa00856:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0085a:	79 e6 fa ff 	W[FP + -0xc] = R1;
ffa0085e:	3a 30       	R7 = R2;
ffa00860:	20 30       	R4 = R0;
ffa00862:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00864:	c0 42       	R0 = R0.L (Z);
ffa00866:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa0086a:	e0 bb       	[FP -0x8] = R0;
ffa0086c:	ff e3 b8 fc 	CALL 0xffa001dc <_spi_write_register>;
ffa00870:	24 00       	SSYNC;
ffa00872:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c64(-4191132) */
ffa00876:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0087a:	14 97       	W[P2] = R4;
ffa0087c:	24 00       	SSYNC;
ffa0087e:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01508(-4188920) */
ffa00882:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa00886:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0088a:	28 97       	W[P5] = R0;
ffa0088c:	ff e3 8e fc 	CALL 0xffa001a8 <_spi_delay>;
ffa00890:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa00894:	0a e1 a8 0b 	P2.L = 0xba8;		/* (2984)	P2=0xff900ba8 <_wrptr> */
ffa00898:	5d 32       	P3 = P5;
ffa0089a:	54 91       	P4 = [P2];
ffa0089c:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa0089e:	7f 43       	R7 = R7.B (Z);
ffa008a0:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa008a2:	65 6c       	P5 += 0xc;		/* ( 12) */
ffa008a4:	1d 97       	W[P3] = R5;
ffa008a6:	ff e3 81 fc 	CALL 0xffa001a8 <_spi_delay>;
ffa008aa:	07 0c       	CC = R7 == 0x0;
ffa008ac:	03 1c       	IF CC JUMP 0xffa008b2 <_getRadioPacket+0x5e> (BP);
ffa008ae:	68 95       	R0 = W[P5] (X);
ffa008b0:	20 9a       	B[P4++] = R0;
ffa008b2:	0e 64       	R6 += 0x1;		/* (  1) */
ffa008b4:	f0 42       	R0 = R6.L (Z);
ffa008b6:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa008b8:	08 08       	CC = R0 == R1;
ffa008ba:	f5 17       	IF !CC JUMP 0xffa008a4 <_getRadioPacket+0x50> (BP);
ffa008bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ba8(-4191320) */
ffa008c0:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa008c4:	14 97       	W[P2] = R4;
ffa008c6:	24 00       	SSYNC;
ffa008c8:	07 0c       	CC = R7 == 0x0;
ffa008ca:	13 1c       	IF CC JUMP 0xffa008f0 <_getRadioPacket+0x9c> (BP);
ffa008cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa008d0:	0a e1 a8 0b 	P2.L = 0xba8;		/* (2984)	P2=0xff900ba8 <_wrptr> */
ffa008d4:	11 91       	R1 = [P2];
ffa008d6:	01 65       	R1 += 0x20;		/* ( 32) */
ffa008d8:	20 e1 ff 0f 	R0 = 0xfff (X);		/*		R0=0xfff(4095) */
ffa008dc:	01 54       	R0 = R1 & R0;
ffa008de:	01 67       	R1 += -0x20;		/* (-32) */
ffa008e0:	10 93       	[P2] = R0;
ffa008e2:	11 32       	P2 = R1;
ffa008e4:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa008e6:	90 e5 1c 00 	R0 = B[P2 + 0x1c] (X);
ffa008ea:	08 54       	R0 = R0 & R1;
ffa008ec:	08 08       	CC = R0 == R1;
ffa008ee:	4b 18       	IF CC JUMP 0xffa00984 <_getRadioPacket+0x130>;
ffa008f0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba8 <_wrptr> */
ffa008f4:	0a e1 a8 0b 	P2.L = 0xba8;		/* (2984)	P2=0xff900ba8 <_wrptr> */
ffa008f8:	21 e1 ff 01 	R1 = 0x1ff (X);		/*		R1=0x1ff(511) */
ffa008fc:	10 91       	R0 = [P2];
ffa008fe:	08 0a       	CC = R0 <= R1 (IU);
ffa00900:	36 18       	IF CC JUMP 0xffa0096c <_getRadioPacket+0x118>;
ffa00902:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ba8(-4191320) */
ffa00906:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa0090a:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa0090e:	10 97       	W[P2] = R0;
ffa00910:	21 e1 e2 00 	R1 = 0xe2 (X);		/*		R1=0xe2(226) */
ffa00914:	e0 b9       	R0 = [FP -0x8];
ffa00916:	ff e3 e5 fc 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0091a:	4f 30       	R1 = FP;
ffa0091c:	20 e1 04 02 	R0 = 0x204 (X);		/*		R0=0x204(516) */
ffa00920:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa00922:	00 e3 35 0c 	CALL 0xffa0218c <_udp_packet_setup>;
ffa00926:	10 32       	P2 = R0;
ffa00928:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0092c:	00 0d       	CC = R0 <= 0x0;
ffa0092e:	23 18       	IF CC JUMP 0xffa00974 <_getRadioPacket+0x120>;
ffa00930:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90050c */
ffa00934:	0d e1 a4 0b 	P5.L = 0xba4;		/* (2980)	P5=0xff900ba4 <_trptr> */
ffa00938:	22 e1 00 02 	R2 = 0x200 (X);		/*		R2=0x200(512) */
ffa0093c:	28 91       	R0 = [P5];
ffa0093e:	10 92       	[P2++] = R0;
ffa00940:	4a 30       	R1 = P2;
ffa00942:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00944:	00 e3 34 04 	CALL 0xffa011ac <_memcpy_>;
ffa00948:	28 91       	R0 = [P5];
ffa0094a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0094c:	28 93       	[P5] = R0;
ffa0094e:	00 e3 91 08 	CALL 0xffa01a70 <_bfin_EMAC_send_nocopy>;
ffa00952:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00956:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa0095a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0095e:	10 97       	W[P2] = R0;
ffa00960:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa00964:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00966:	0a e1 a8 0b 	P2.L = 0xba8;		/* (2984)	P2=0xff900ba8 <_wrptr> */
ffa0096a:	10 93       	[P2] = R0;
ffa0096c:	01 e8 00 00 	UNLINK;
ffa00970:	a3 05       	(R7:4, P5:3) = [SP++];
ffa00972:	10 00       	RTS;
ffa00974:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba8 <_wrptr> */
ffa00978:	0a e1 a4 0b 	P2.L = 0xba4;		/* (2980)	P2=0xff900ba4 <_trptr> */
ffa0097c:	10 91       	R0 = [P2];
ffa0097e:	08 64       	R0 += 0x1;		/* (  1) */
ffa00980:	10 93       	[P2] = R0;
ffa00982:	e8 2f       	JUMP.S 0xffa00952 <_getRadioPacket+0xfe>;
ffa00984:	e0 b9       	R0 = [FP -0x8];
ffa00986:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa0098a:	ff e3 fd fc 	CALL 0xffa00384 <_radio_set_tx>;
ffa0098e:	24 00       	SSYNC;
ffa00990:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ba4(-4191324) */
ffa00994:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ba4 <_trptr> */
ffa00998:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa0099c:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa009a0:	0d e1 b9 0b 	P5.L = 0xbb9;		/* (3001)	P5=0xff900bb9 <_g_outpkt> */
ffa009a4:	14 97       	W[P2] = R4;
ffa009a6:	65 32       	P4 = P5;
ffa009a8:	18 97       	W[P3] = R0;
ffa009aa:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc0f000(-4132864) */
ffa009ae:	ff e3 fd fb 	CALL 0xffa001a8 <_spi_delay>;
ffa009b2:	0b e1 0c 05 	P3.L = 0x50c;		/* (1292)	P3=0xffc0050c(-4193012) */
ffa009b6:	04 6d       	P4 += 0x20;		/* ( 32) */
ffa009b8:	00 00       	NOP;
ffa009ba:	28 98       	R0 = B[P5++] (Z);
ffa009bc:	18 97       	W[P3] = R0;
ffa009be:	ff e3 f5 fb 	CALL 0xffa001a8 <_spi_delay>;
ffa009c2:	65 08       	CC = P5 == P4;
ffa009c4:	fa 17       	IF !CC JUMP 0xffa009b8 <_getRadioPacket+0x164> (BP);
ffa009c6:	04 30       	R0 = R4;
ffa009c8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa009cc:	50 4a       	BITSET (R0, 0xa);		/* bit 10 */
ffa009ce:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa009d2:	10 97       	W[P2] = R0;
ffa009d4:	24 00       	SSYNC;
ffa009d6:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa009d8:	50 95       	R0 = W[P2] (X);
ffa009da:	79 e5 fa ff 	R1 = W[FP + -0xc] (X);
ffa009de:	08 54       	R0 = R0 & R1;
ffa009e0:	c0 42       	R0 = R0.L (Z);
ffa009e2:	00 0c       	CC = R0 == 0x0;
ffa009e4:	0c 18       	IF CC JUMP 0xffa009fc <_getRadioPacket+0x1a8>;
ffa009e6:	6a 32       	P5 = P2;
ffa009e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009ea:	ff e3 0b ff 	CALL 0xffa00800 <_eth_listen>;
ffa009ee:	68 95       	R0 = W[P5] (X);
ffa009f0:	79 e5 fa ff 	R1 = W[FP + -0xc] (X);
ffa009f4:	08 54       	R0 = R0 & R1;
ffa009f6:	c0 42       	R0 = R0.L (Z);
ffa009f8:	00 0c       	CC = R0 == 0x0;
ffa009fa:	f7 17       	IF !CC JUMP 0xffa009e8 <_getRadioPacket+0x194> (BP);
ffa009fc:	e0 b9       	R0 = [FP -0x8];
ffa009fe:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00a00:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00a04:	ff e3 ec fb 	CALL 0xffa001dc <_spi_write_register>;
ffa00a08:	e0 b9       	R0 = [FP -0x8];
ffa00a0a:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00a0e:	ff e3 8d fc 	CALL 0xffa00328 <_radio_set_rx>;
ffa00a12:	78 2f       	JUMP.S 0xffa00902 <_getRadioPacket+0xae>;

ffa00a14 <_main>:
ffa00a14:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00a18:	e5 05       	[--SP] = (R7:4, P5:5);
ffa00a1a:	20 e1 9c c1 	R0 = -0x3e64 (X);		/*		R0=0xffffc19c(-15972) */
ffa00a1e:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00a22:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00a26:	10 97       	W[P2] = R0;
ffa00a28:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa00a2c:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa00a2e:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa00a32:	12 97       	W[P2] = R2;
ffa00a34:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa00a38:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00a3a:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa00a3e:	10 97       	W[P2] = R0;
ffa00a40:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa00a44:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa00a46:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa00a4a:	10 97       	W[P2] = R0;
ffa00a4c:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa00a50:	a2 6f       	P2 += -0xc;		/* (-12) */
ffa00a52:	10 97       	W[P2] = R0;
ffa00a54:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa00a58:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00a5a:	10 97       	W[P2] = R0;
ffa00a5c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00a5e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00a60:	11 97       	W[P2] = R1;
ffa00a62:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0150c(-4188916) */
ffa00a66:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa00a6a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00500(-4193024) */
ffa00a6e:	09 e1 0c 04 	P1.L = 0x40c;		/* (1036)	P1=0xffc0040c(-4193268) */
ffa00a72:	08 e1 04 04 	P0.L = 0x404;		/* (1028)	P0=0xffc00404(-4193276) */
ffa00a76:	0a e1 10 04 	P2.L = 0x410;		/* (1040)	P2=0xffc00410(-4193264) */
ffa00a7a:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa00a7e:	01 97       	W[P0] = R1;
ffa00a80:	11 97       	W[P2] = R1;
ffa00a82:	08 97       	W[P1] = R0;
ffa00a84:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00a86:	20 e1 88 00 	R0 = 0x88 (X);		/*		R0=0x88(136) */
ffa00a8a:	10 97       	W[P2] = R0;
ffa00a8c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00a8e:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00a90:	01 97       	W[P0] = R1;
ffa00a92:	0a 97       	W[P1] = R2;
ffa00a94:	10 97       	W[P2] = R0;
ffa00a96:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00a98:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900410 */
ffa00a9c:	b8 4f       	R0 <<= 0x17;
ffa00a9e:	0a e1 dc 0b 	P2.L = 0xbdc;		/* (3036)	P2=0xff900bdc <_printf_temp> */
ffa00aa2:	10 93       	[P2] = R0;
ffa00aa4:	20 e1 01 e0 	R0 = -0x1fff (X);		/*		R0=0xffffe001(-8191) */
ffa00aa8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bdc <_printf_temp> */
ffa00aac:	0a e1 e0 0b 	P2.L = 0xbe0;		/* (3040)	P2=0xff900be0 <_printf_out> */
ffa00ab0:	50 4f       	R0 <<= 0xa;
ffa00ab2:	10 93       	[P2] = R0;
ffa00ab4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90e001(-7282687) */
ffa00ab8:	21 e1 80 01 	R1 = 0x180 (X);		/*		R1=0x180(384) */
ffa00abc:	00 e1 7c 00 	R0.L = 0x7c;		/* (124)	R0=0xff90007c(-7339908) */
ffa00ac0:	00 e3 90 02 	CALL 0xffa00fe0 <_printf_int>;
ffa00ac4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa00ac8:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00acc:	00 e3 c8 01 	CALL 0xffa00e5c <_printf_str>;
ffa00ad0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa00ad4:	00 e1 8c 00 	R0.L = 0x8c;		/* (140)	R0=0xff90008c(-7339892) */
ffa00ad8:	00 e3 c2 01 	CALL 0xffa00e5c <_printf_str>;
ffa00adc:	49 e1 40 00 	P1.H = 0x40;		/* ( 64)	P1=0x40040c */
ffa00ae0:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa00ae2:	22 e1 ca de 	R2 = -0x2136 (X);		/*		R2=0xffffdeca(-8502) */
ffa00ae6:	23 e1 ad fb 	R3 = -0x453 (X);		/*		R3=0xfffffbad(-1107) */
ffa00aea:	20 e1 ed c0 	R0 = -0x3f13 (X);		/*		R0=0xffffc0ed(-16147) */
ffa00aee:	21 e1 be ba 	R1 = -0x4542 (X);		/*		R1=0xffffbabe(-17730) */
ffa00af2:	09 e1 00 00 	P1.L = 0x0;		/* (  0)	P1=0x400000 */
ffa00af6:	b2 e0 06 10 	LSETUP(0xffa00afa <_main+0xe6>, 0xffa00b02 <_main+0xee>) LC1 = P1;
ffa00afa:	12 97       	W[P2] = R2;
ffa00afc:	53 b4       	W[P2 + 0x2] = R3;
ffa00afe:	90 b4       	W[P2 + 0x4] = R0;
ffa00b00:	d1 b4       	W[P2 + 0x6] = R1;
ffa00b02:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00b04:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00b06:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00b08:	02 20       	JUMP.S 0xffa00b0c <_main+0xf8>;
ffa00b0a:	45 6c       	P5 += 0x8;		/* (  8) */
ffa00b0c:	2f 95       	R7 = W[P5] (Z);
ffa00b0e:	80 e1 ca de 	R0 = 0xdeca (Z);		/*		R0=0xdeca(57034) */
ffa00b12:	07 08       	CC = R7 == R0;
ffa00b14:	15 18       	IF CC JUMP 0xffa00b3e <_main+0x12a>;
ffa00b16:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90deca(-7282998) */
ffa00b1a:	0e 30       	R1 = R6;
ffa00b1c:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00b20:	00 e3 04 02 	CALL 0xffa00f28 <_printf_hex>;
ffa00b24:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00b28:	00 e1 ac 00 	R0.L = 0xac;		/* (172)	R0=0xff9000ac(-7339860) */
ffa00b2c:	0f 30       	R1 = R7;
ffa00b2e:	00 e3 fd 01 	CALL 0xffa00f28 <_printf_hex>;
ffa00b32:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000ac(-7339860) */
ffa00b36:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00b3a:	00 e3 91 01 	CALL 0xffa00e5c <_printf_str>;
ffa00b3e:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa00b40:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa00b44:	08 08       	CC = R0 == R1;
ffa00b46:	08 18       	IF CC JUMP 0xffa00b56 <_main+0x142>;
ffa00b48:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa00b4c:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00b50:	0e 30       	R1 = R6;
ffa00b52:	00 e3 eb 01 	CALL 0xffa00f28 <_printf_hex>;
ffa00b56:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa00b58:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa00b5c:	08 08       	CC = R0 == R1;
ffa00b5e:	08 18       	IF CC JUMP 0xffa00b6e <_main+0x15a>;
ffa00b60:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00b64:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00b68:	0e 30       	R1 = R6;
ffa00b6a:	00 e3 df 01 	CALL 0xffa00f28 <_printf_hex>;
ffa00b6e:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa00b70:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa00b74:	08 08       	CC = R0 == R1;
ffa00b76:	08 18       	IF CC JUMP 0xffa00b86 <_main+0x172>;
ffa00b78:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00b7c:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00b80:	0e 30       	R1 = R6;
ffa00b82:	00 e3 d3 01 	CALL 0xffa00f28 <_printf_hex>;
ffa00b86:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa00b8a:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa00b8e:	55 08       	CC = P5 == P2;
ffa00b90:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00b92:	bc 17       	IF !CC JUMP 0xffa00b0a <_main+0xf6> (BP);
ffa00b94:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00b98:	00 e1 b4 00 	R0.L = 0xb4;		/* (180)	R0=0xff9000b4(-7339852) */
ffa00b9c:	00 e3 60 01 	CALL 0xffa00e5c <_printf_str>;
ffa00ba0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0fff8(-4128776) */
ffa00ba4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00ba6:	0a e1 84 06 	P2.L = 0x684;		/* (1668)	P2=0xffc00684(-4192636) */
ffa00baa:	10 97       	W[P2] = R0;
ffa00bac:	24 00       	SSYNC;
ffa00bae:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800684 */
ffa00bb2:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00bb6:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00bb8:	17 93       	[P2] = R7;
ffa00bba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa00bbe:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa00bc2:	0a e1 50 06 	P2.L = 0x650;		/* (1616)	P2=0xffc00650(-4192688) */
ffa00bc6:	10 97       	W[P2] = R0;
ffa00bc8:	20 e1 09 3d 	R0 = 0x3d09 (X);		/*		R0=0x3d09(15625) */
ffa00bcc:	18 4f       	R0 <<= 0x3;
ffa00bce:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00bd0:	10 93       	[P2] = R0;
ffa00bd2:	80 e1 24 f4 	R0 = 0xf424 (Z);		/*		R0=0xf424(62500) */
ffa00bd6:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00bd8:	10 93       	[P2] = R0;
ffa00bda:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00bdc:	50 95       	R0 = W[P2] (X);
ffa00bde:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa00be0:	10 97       	W[P2] = R0;
ffa00be2:	00 e3 7d 0c 	CALL 0xffa024dc <_bfin_EMAC_init>;
ffa00be6:	00 0c       	CC = R0 == 0x0;
ffa00be8:	20 30       	R4 = R0;
ffa00bea:	dc 18       	IF CC JUMP 0xffa00da2 <_main+0x38e>;
ffa00bec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00650(-4192688) */
ffa00bf0:	20 e1 87 38 	R0 = 0x3887 (X);		/*		R0=0x3887(14471) */
ffa00bf4:	0a e1 00 32 	P2.L = 0x3200;		/* (12800)	P2=0xffc03200(-4181504) */
ffa00bf8:	10 97       	W[P2] = R0;
ffa00bfa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03200(-4181504) */
ffa00bfe:	20 e1 56 fe 	R0 = -0x1aa (X);		/*		R0=0xfffffe56(-426) */
ffa00c02:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa00c06:	10 97       	W[P2] = R0;
ffa00c08:	20 e1 a9 01 	R0 = 0x1a9 (X);		/*		R0=0x1a9(425) */
ffa00c0c:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa00c0e:	10 97       	W[P2] = R0;
ffa00c10:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa00c14:	20 e1 80 02 	R0 = 0x280 (X);		/*		R0=0x280(640) */
ffa00c18:	0a e1 10 32 	P2.L = 0x3210;		/* (12816)	P2=0xffc03210(-4181488) */
ffa00c1c:	10 97       	W[P2] = R0;
ffa00c1e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03210(-4181488) */
ffa00c22:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa00c26:	50 95       	R0 = W[P2] (X);
ffa00c28:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00c2a:	10 97       	W[P2] = R0;
ffa00c2c:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00c2e:	50 95       	R0 = W[P2] (X);
ffa00c30:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa00c32:	10 97       	W[P2] = R0;
ffa00c34:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa00c38:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00c3c:	50 95       	R0 = W[P2] (X);
ffa00c3e:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00c40:	10 97       	W[P2] = R0;
ffa00c42:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903204 */
ffa00c46:	0a e1 a8 0b 	P2.L = 0xba8;		/* (2984)	P2=0xff900ba8 <_wrptr> */
ffa00c4a:	17 93       	[P2] = R7;
ffa00c4c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba8 <_wrptr> */
ffa00c50:	0a e1 a4 0b 	P2.L = 0xba4;		/* (2980)	P2=0xff900ba4 <_trptr> */
ffa00c54:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900280(-7339392) */
ffa00c58:	17 93       	[P2] = R7;
ffa00c5a:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa00c5e:	00 e3 ff 00 	CALL 0xffa00e5c <_printf_str>;
ffa00c62:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ba4(-4191324) */
ffa00c66:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa00c6a:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00c6e:	10 97       	W[P2] = R0;
ffa00c70:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa00c74:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00c76:	10 97       	W[P2] = R0;
ffa00c78:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00c7c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa00c7e:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00c82:	10 97       	W[P2] = R0;
ffa00c84:	24 00       	SSYNC;
ffa00c86:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa00c88:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00c8a:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa00c8c:	ff e3 de fb 	CALL 0xffa00448 <_radio_init>;
ffa00c90:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa00c92:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00c94:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa00c98:	ff e3 d8 fb 	CALL 0xffa00448 <_radio_init>;
ffa00c9c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00c9e:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa00ca2:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa00ca6:	ff e3 d1 fb 	CALL 0xffa00448 <_radio_init>;
ffa00caa:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa00cac:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00cae:	ff e3 3d fb 	CALL 0xffa00328 <_radio_set_rx>;
ffa00cb2:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa00cb6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00cb8:	ff e3 38 fb 	CALL 0xffa00328 <_radio_set_rx>;
ffa00cbc:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa00cc0:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa00cc4:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00cc8:	46 e1 62 10 	R6.H = 0x1062;		/* (4194)	R6=0x10620000(274857984) */
ffa00ccc:	ff e3 2e fb 	CALL 0xffa00328 <_radio_set_rx>;
ffa00cd0:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa00cd2:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa00cd4:	0d e1 00 07 	P5.L = 0x700;		/* (1792)	P5=0xffc00700(-4192512) */
ffa00cd8:	06 e1 d3 4d 	R6.L = 0x4dd3;		/* (19923)	R6=0x10624dd3(274877907) */
ffa00cdc:	04 30       	R0 = R4;
ffa00cde:	ff e3 91 fd 	CALL 0xffa00800 <_eth_listen>;
ffa00ce2:	68 95       	R0 = W[P5] (X);
ffa00ce4:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa00ce6:	42 18       	IF CC JUMP 0xffa00d6a <_main+0x356>;
ffa00ce8:	00 00       	NOP;
ffa00cea:	00 00       	NOP;
ffa00cec:	00 00       	NOP;
ffa00cee:	68 95       	R0 = W[P5] (X);
ffa00cf0:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00cf2:	45 18       	IF CC JUMP 0xffa00d7c <_main+0x368>;
ffa00cf4:	00 00       	NOP;
ffa00cf6:	00 00       	NOP;
ffa00cf8:	00 00       	NOP;
ffa00cfa:	68 95       	R0 = W[P5] (X);
ffa00cfc:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa00cfe:	49 18       	IF CC JUMP 0xffa00d90 <_main+0x37c>;
ffa00d00:	20 e1 28 01 	R0 = 0x128 (X);		/*		R0=0x128(296) */
ffa00d04:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00d08:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00d0c:	69 95       	R1 = W[P5] (X);
ffa00d0e:	08 54       	R0 = R0 & R1;
ffa00d10:	21 e1 28 01 	R1 = 0x128 (X);		/*		R1=0x128(296) */
ffa00d14:	08 08       	CC = R0 == R1;
ffa00d16:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00d18:	38 07       	IF CC R7 = R0;
ffa00d1a:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa00d1e:	10 97       	W[P2] = R0;
ffa00d20:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800708 */
ffa00d24:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00d28:	10 91       	R0 = [P2];
ffa00d2a:	80 c0 06 18 	A1 = R0.L * R6.L (FU);
ffa00d2e:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00d32:	81 c0 06 86 	A1 += R0.H * R6.L, A0 = R0.H * R6.H (FU);
ffa00d36:	81 c0 30 98 	A1 += R6.H * R0.L (FU);
ffa00d3a:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00d3e:	0b c4 00 80 	A0 += A1;
ffa00d42:	8b c0 00 38 	R0 = A0 (FU);
ffa00d46:	82 c6 d0 83 	R1 = R0 >> 0x6;
ffa00d4a:	0d 08       	CC = R5 == R1;
ffa00d4c:	c8 1b       	IF CC JUMP 0xffa00cdc <_main+0x2c8>;
ffa00d4e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa00d52:	20 e1 00 80 	R0 = -0x8000 (X);		/*		R0=0xffff8000(-32768) */
ffa00d56:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa00d5a:	10 97       	W[P2] = R0;
ffa00d5c:	04 30       	R0 = R4;
ffa00d5e:	29 30       	R5 = R1;
ffa00d60:	ff e3 50 fd 	CALL 0xffa00800 <_eth_listen>;
ffa00d64:	68 95       	R0 = W[P5] (X);
ffa00d66:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa00d68:	c2 17       	IF !CC JUMP 0xffa00cec <_main+0x2d8> (BP);
ffa00d6a:	7a 43       	R2 = R7.B (Z);
ffa00d6c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa00d6e:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa00d70:	ff e3 72 fd 	CALL 0xffa00854 <_getRadioPacket>;
ffa00d74:	68 95       	R0 = W[P5] (X);
ffa00d76:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00d78:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00d7a:	bf 17       	IF !CC JUMP 0xffa00cf8 <_main+0x2e4> (BP);
ffa00d7c:	7a 43       	R2 = R7.B (Z);
ffa00d7e:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa00d82:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa00d84:	ff e3 68 fd 	CALL 0xffa00854 <_getRadioPacket>;
ffa00d88:	68 95       	R0 = W[P5] (X);
ffa00d8a:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa00d8c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00d8e:	b9 17       	IF !CC JUMP 0xffa00d00 <_main+0x2ec> (BP);
ffa00d90:	7a 43       	R2 = R7.B (Z);
ffa00d92:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa00d96:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa00d9a:	ff e3 5d fd 	CALL 0xffa00854 <_getRadioPacket>;
ffa00d9e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00da0:	b0 2f       	JUMP.S 0xffa00d00 <_main+0x2ec>;
ffa00da2:	00 e3 6f 0d 	CALL 0xffa02880 <_DHCP_req>;
ffa00da6:	23 2f       	JUMP.S 0xffa00bec <_main+0x1d8>;

ffa00da8 <_uart_str>:
ffa00da8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa00dac:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00db0:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa00db4:	08 32       	P1 = R0;
ffa00db6:	50 95       	R0 = W[P2] (X);
ffa00db8:	c0 42       	R0 = R0.L (Z);
ffa00dba:	08 0c       	CC = R0 == 0x1;
ffa00dbc:	06 18       	IF CC JUMP 0xffa00dc8 <_uart_str+0x20>;
ffa00dbe:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00dc0:	02 30       	R0 = R2;
ffa00dc2:	01 e8 00 00 	UNLINK;
ffa00dc6:	10 00       	RTS;
ffa00dc8:	48 99       	R0 = B[P1] (X);
ffa00dca:	01 43       	R1 = R0.B (X);
ffa00dcc:	01 0c       	CC = R1 == 0x0;
ffa00dce:	f8 1b       	IF CC JUMP 0xffa00dbe <_uart_str+0x16>;
ffa00dd0:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa00dd4:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00dd6:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00dd8:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa00ddc:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa00de0:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa00de2:	b2 e0 1c 00 	LSETUP(0xffa00de6 <_uart_str+0x3e>, 0xffa00e1a <_uart_str+0x72>) LC1 = P0;
ffa00de6:	19 08       	CC = R1 == R3;
ffa00de8:	1b 18       	IF CC JUMP 0xffa00e1e <_uart_str+0x76>;
ffa00dea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa00dee:	00 43       	R0 = R0.B (X);
ffa00df0:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00df4:	10 97       	W[P2] = R0;
ffa00df6:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa00df8:	50 95       	R0 = W[P2] (X);
ffa00dfa:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00dfc:	0a 10       	IF !CC JUMP 0xffa00e10 <_uart_str+0x68>;
ffa00dfe:	00 00       	NOP;
ffa00e00:	00 00       	NOP;
ffa00e02:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa00e06:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00e0a:	50 95       	R0 = W[P2] (X);
ffa00e0c:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00e0e:	f9 1f       	IF CC JUMP 0xffa00e00 <_uart_str+0x58> (BP);
ffa00e10:	48 99       	R0 = B[P1] (X);
ffa00e12:	01 43       	R1 = R0.B (X);
ffa00e14:	01 0c       	CC = R1 == 0x0;
ffa00e16:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00e18:	d4 1b       	IF CC JUMP 0xffa00dc0 <_uart_str+0x18>;
ffa00e1a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00e1c:	d2 2f       	JUMP.S 0xffa00dc0 <_uart_str+0x18>;
ffa00e1e:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00e20:	20 9f       	W[I0] = R0.L;
ffa00e22:	02 20       	JUMP.S 0xffa00e26 <_uart_str+0x7e>;
ffa00e24:	00 00       	NOP;
ffa00e26:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa00e2a:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00e2e:	50 95       	R0 = W[P2] (X);
ffa00e30:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00e32:	f9 1f       	IF CC JUMP 0xffa00e24 <_uart_str+0x7c> (BP);
ffa00e34:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa00e38:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa00e3a:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00e3e:	10 97       	W[P2] = R0;
ffa00e40:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa00e42:	50 95       	R0 = W[P2] (X);
ffa00e44:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00e46:	e5 13       	IF !CC JUMP 0xffa00e10 <_uart_str+0x68>;
ffa00e48:	00 00       	NOP;
ffa00e4a:	00 00       	NOP;
ffa00e4c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa00e50:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00e54:	50 95       	R0 = W[P2] (X);
ffa00e56:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00e58:	f9 1f       	IF CC JUMP 0xffa00e4a <_uart_str+0xa2> (BP);
ffa00e5a:	db 2f       	JUMP.S 0xffa00e10 <_uart_str+0x68>;

ffa00e5c <_printf_str>:
ffa00e5c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00e60:	01 e8 00 00 	UNLINK;
ffa00e64:	ff e2 a2 ff 	JUMP.L 0xffa00da8 <_uart_str>;

ffa00e68 <_printf_newline>:
ffa00e68:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00e6c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa00e70:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00e74:	01 e8 00 00 	UNLINK;
ffa00e78:	ff e2 98 ff 	JUMP.L 0xffa00da8 <_uart_str>;

ffa00e7c <_printf_hex_byte>:
ffa00e7c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa00e7e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00e82:	28 32       	P5 = R0;
ffa00e84:	39 30       	R7 = R1;
ffa00e86:	00 e3 b1 01 	CALL 0xffa011e8 <_strlen_>;
ffa00e8a:	10 30       	R2 = R0;
ffa00e8c:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa00e90:	02 09       	CC = R2 <= R0;
ffa00e92:	41 10       	IF !CC JUMP 0xffa00f14 <_printf_hex_byte+0x98>;
ffa00e94:	02 0d       	CC = R2 <= 0x0;
ffa00e96:	44 18       	IF CC JUMP 0xffa00f1e <_printf_hex_byte+0xa2>;
ffa00e98:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa00e9c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00e9e:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa00ea2:	09 32       	P1 = R1;
ffa00ea4:	42 91       	P2 = [P0];
ffa00ea6:	09 64       	R1 += 0x1;		/* (  1) */
ffa00ea8:	68 98       	R0 = B[P5++] (X);
ffa00eaa:	0a 08       	CC = R2 == R1;
ffa00eac:	8a 5a       	P2 = P2 + P1;
ffa00eae:	10 9b       	B[P2] = R0;
ffa00eb0:	f9 17       	IF !CC JUMP 0xffa00ea2 <_printf_hex_byte+0x26> (BP);
ffa00eb2:	0a 32       	P1 = R2;
ffa00eb4:	42 91       	P2 = [P0];
ffa00eb6:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00eb8:	22 32       	P4 = R2;
ffa00eba:	79 43       	R1 = R7.B (Z);
ffa00ebc:	8a 5a       	P2 = P2 + P1;
ffa00ebe:	10 9b       	B[P2] = R0;
ffa00ec0:	42 91       	P2 = [P0];
ffa00ec2:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00ec4:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00ec8:	11 6c       	P1 += 0x2;		/* (  2) */
ffa00eca:	a2 5a       	P2 = P2 + P4;
ffa00ecc:	10 9b       	B[P2] = R0;
ffa00ece:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa00ed0:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa00ed2:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa00ed4:	01 30       	R0 = R1;
ffa00ed6:	10 40       	R0 >>>= R2;
ffa00ed8:	18 54       	R0 = R0 & R3;
ffa00eda:	38 09       	CC = R0 <= R7;
ffa00edc:	1a 1c       	IF CC JUMP 0xffa00f10 <_printf_hex_byte+0x94> (BP);
ffa00ede:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00ee0:	42 91       	P2 = [P0];
ffa00ee2:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa00ee4:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900700 */
ffa00ee8:	22 0c       	CC = R2 == -0x4;
ffa00eea:	8a 5a       	P2 = P2 + P1;
ffa00eec:	0d e1 e0 0b 	P5.L = 0xbe0;		/* (3040)	P5=0xff900be0 <_printf_out> */
ffa00ef0:	10 9b       	B[P2] = R0;
ffa00ef2:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00ef4:	f0 17       	IF !CC JUMP 0xffa00ed4 <_printf_hex_byte+0x58> (BP);
ffa00ef6:	6a 91       	P2 = [P5];
ffa00ef8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00efa:	94 5a       	P2 = P4 + P2;
ffa00efc:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa00f00:	28 91       	R0 = [P5];
ffa00f02:	ff e3 53 ff 	CALL 0xffa00da8 <_uart_str>;
ffa00f06:	01 e8 00 00 	UNLINK;
ffa00f0a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f0c:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00f0e:	10 00       	RTS;
ffa00f10:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00f12:	e7 2f       	JUMP.S 0xffa00ee0 <_printf_hex_byte+0x64>;
ffa00f14:	01 e8 00 00 	UNLINK;
ffa00f18:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00f1a:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00f1c:	10 00       	RTS;
ffa00f1e:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900be0 <_printf_out> */
ffa00f22:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa00f26:	c6 2f       	JUMP.S 0xffa00eb2 <_printf_hex_byte+0x36>;

ffa00f28 <_printf_hex>:
ffa00f28:	fb 05       	[--SP] = (R7:7, P5:3);
ffa00f2a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00f2e:	28 32       	P5 = R0;
ffa00f30:	39 30       	R7 = R1;
ffa00f32:	00 e3 5b 01 	CALL 0xffa011e8 <_strlen_>;
ffa00f36:	10 30       	R2 = R0;
ffa00f38:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa00f3c:	02 09       	CC = R2 <= R0;
ffa00f3e:	47 10       	IF !CC JUMP 0xffa00fcc <_printf_hex+0xa4>;
ffa00f40:	02 0d       	CC = R2 <= 0x0;
ffa00f42:	4a 18       	IF CC JUMP 0xffa00fd6 <_printf_hex+0xae>;
ffa00f44:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900000 <_l1_data_a> */
ffa00f48:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00f4a:	09 e1 e0 0b 	P1.L = 0xbe0;		/* (3040)	P1=0xff900be0 <_printf_out> */
ffa00f4e:	01 32       	P0 = R1;
ffa00f50:	4a 91       	P2 = [P1];
ffa00f52:	09 64       	R1 += 0x1;		/* (  1) */
ffa00f54:	68 98       	R0 = B[P5++] (X);
ffa00f56:	0a 08       	CC = R2 == R1;
ffa00f58:	82 5a       	P2 = P2 + P0;
ffa00f5a:	10 9b       	B[P2] = R0;
ffa00f5c:	f9 17       	IF !CC JUMP 0xffa00f4e <_printf_hex+0x26> (BP);
ffa00f5e:	02 32       	P0 = R2;
ffa00f60:	4a 91       	P2 = [P1];
ffa00f62:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00f64:	1a 32       	P3 = R2;
ffa00f66:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa00f68:	82 5a       	P2 = P2 + P0;
ffa00f6a:	10 9b       	B[P2] = R0;
ffa00f6c:	4a 91       	P2 = [P1];
ffa00f6e:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa00f70:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00f74:	10 6c       	P0 += 0x2;		/* (  2) */
ffa00f76:	9a 5a       	P2 = P2 + P3;
ffa00f78:	10 9b       	B[P2] = R0;
ffa00f7a:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa00f7c:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa00f7e:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa00f80:	b2 e0 10 50 	LSETUP(0xffa00f84 <_printf_hex+0x5c>, 0xffa00fa0 <_printf_hex+0x78>) LC1 = P5;
ffa00f84:	07 30       	R0 = R7;
ffa00f86:	08 40       	R0 >>>= R1;
ffa00f88:	10 54       	R0 = R0 & R2;
ffa00f8a:	18 09       	CC = R0 <= R3;
ffa00f8c:	1e 1c       	IF CC JUMP 0xffa00fc8 <_printf_hex+0xa0> (BP);
ffa00f8e:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00f90:	4a 91       	P2 = [P1];
ffa00f92:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff901504 */
ffa00f96:	0c e1 e0 0b 	P4.L = 0xbe0;		/* (3040)	P4=0xff900be0 <_printf_out> */
ffa00f9a:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa00f9c:	82 5a       	P2 = P2 + P0;
ffa00f9e:	10 9b       	B[P2] = R0;
ffa00fa0:	08 6c       	P0 += 0x1;		/* (  1) */
ffa00fa2:	62 91       	P2 = [P4];
ffa00fa4:	4b 32       	P1 = P3;
ffa00fa6:	49 6c       	P1 += 0x9;		/* (  9) */
ffa00fa8:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00faa:	8a 5a       	P2 = P2 + P1;
ffa00fac:	10 9b       	B[P2] = R0;
ffa00fae:	62 91       	P2 = [P4];
ffa00fb0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00fb2:	8a 5a       	P2 = P2 + P1;
ffa00fb4:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa00fb8:	20 91       	R0 = [P4];
ffa00fba:	ff e3 f7 fe 	CALL 0xffa00da8 <_uart_str>;
ffa00fbe:	01 e8 00 00 	UNLINK;
ffa00fc2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00fc4:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00fc6:	10 00       	RTS;
ffa00fc8:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00fca:	e3 2f       	JUMP.S 0xffa00f90 <_printf_hex+0x68>;
ffa00fcc:	01 e8 00 00 	UNLINK;
ffa00fd0:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00fd2:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00fd4:	10 00       	RTS;
ffa00fd6:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900be0 <_printf_out> */
ffa00fda:	09 e1 e0 0b 	P1.L = 0xbe0;		/* (3040)	P1=0xff900be0 <_printf_out> */
ffa00fde:	c0 2f       	JUMP.S 0xffa00f5e <_printf_hex+0x36>;

ffa00fe0 <_printf_int>:
ffa00fe0:	f3 05       	[--SP] = (R7:6, P5:3);
ffa00fe2:	01 0c       	CC = R1 == 0x0;
ffa00fe4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00fe8:	28 32       	P5 = R0;
ffa00fea:	39 30       	R7 = R1;
ffa00fec:	41 14       	IF !CC JUMP 0xffa0106e <_printf_int+0x8e> (BP);
ffa00fee:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90050c */
ffa00ff2:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00ff6:	5a 91       	P2 = [P3];
ffa00ff8:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00ffa:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa00ffc:	10 9b       	B[P2] = R0;
ffa00ffe:	45 30       	R0 = P5;
ffa01000:	00 e3 f4 00 	CALL 0xffa011e8 <_strlen_>;
ffa01004:	c6 50       	R3 = R6 + R0;
ffa01006:	10 30       	R2 = R0;
ffa01008:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa0100c:	03 09       	CC = R3 <= R0;
ffa0100e:	4e 10       	IF !CC JUMP 0xffa010aa <_printf_int+0xca>;
ffa01010:	02 0d       	CC = R2 <= 0x0;
ffa01012:	79 18       	IF CC JUMP 0xffa01104 <_printf_int+0x124>;
ffa01014:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900be0 <_printf_out> */
ffa01018:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0101a:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa0101e:	09 32       	P1 = R1;
ffa01020:	42 91       	P2 = [P0];
ffa01022:	09 64       	R1 += 0x1;		/* (  1) */
ffa01024:	68 98       	R0 = B[P5++] (X);
ffa01026:	0a 08       	CC = R2 == R1;
ffa01028:	8a 5a       	P2 = P2 + P1;
ffa0102a:	10 9b       	B[P2] = R0;
ffa0102c:	f9 17       	IF !CC JUMP 0xffa0101e <_printf_int+0x3e> (BP);
ffa0102e:	06 0d       	CC = R6 <= 0x0;
ffa01030:	12 18       	IF CC JUMP 0xffa01054 <_printf_int+0x74>;
ffa01032:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01034:	00 91       	R0 = [P0];
ffa01036:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa0103a:	5a 91 00 00 
ffa0103e:	08 50       	R0 = R0 + R1;
ffa01040:	08 32       	P1 = R0;
ffa01042:	0e 52       	R0 = R6 - R1;
ffa01044:	28 32       	P5 = R0;
ffa01046:	09 64       	R1 += 0x1;		/* (  1) */
ffa01048:	0e 08       	CC = R6 == R1;
ffa0104a:	aa 5a       	P2 = P2 + P5;
ffa0104c:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa01050:	08 9b       	B[P1] = R0;
ffa01052:	f1 17       	IF !CC JUMP 0xffa01034 <_printf_int+0x54> (BP);
ffa01054:	0b 32       	P1 = R3;
ffa01056:	42 91       	P2 = [P0];
ffa01058:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0105a:	91 5a       	P2 = P1 + P2;
ffa0105c:	10 9b       	B[P2] = R0;
ffa0105e:	00 91       	R0 = [P0];
ffa01060:	ff e3 a4 fe 	CALL 0xffa00da8 <_uart_str>;
ffa01064:	01 e8 00 00 	UNLINK;
ffa01068:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0106a:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0106c:	10 00       	RTS;
ffa0106e:	01 0d       	CC = R1 <= 0x0;
ffa01070:	22 18       	IF CC JUMP 0xffa010b4 <_printf_int+0xd4>;
ffa01072:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa01076:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01078:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa0107c:	05 20       	JUMP.S 0xffa01086 <_printf_int+0xa6>;
ffa0107e:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa01082:	06 08       	CC = R6 == R0;
ffa01084:	bd 1b       	IF CC JUMP 0xffa00ffe <_printf_int+0x1e>;
ffa01086:	07 30       	R0 = R7;
ffa01088:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0108a:	00 e3 83 00 	CALL 0xffa01190 <_mod>;
ffa0108e:	0e 32       	P1 = R6;
ffa01090:	5a 91       	P2 = [P3];
ffa01092:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01094:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01096:	0e 64       	R6 += 0x1;		/* (  1) */
ffa01098:	8a 5a       	P2 = P2 + P1;
ffa0109a:	10 9b       	B[P2] = R0;
ffa0109c:	07 30       	R0 = R7;
ffa0109e:	00 e3 6b 00 	CALL 0xffa01174 <_div>;
ffa010a2:	00 0d       	CC = R0 <= 0x0;
ffa010a4:	38 30       	R7 = R0;
ffa010a6:	ec 17       	IF !CC JUMP 0xffa0107e <_printf_int+0x9e> (BP);
ffa010a8:	ab 2f       	JUMP.S 0xffa00ffe <_printf_int+0x1e>;
ffa010aa:	01 e8 00 00 	UNLINK;
ffa010ae:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa010b0:	b3 05       	(R7:6, P5:3) = [SP++];
ffa010b2:	10 00       	RTS;
ffa010b4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa010b6:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa010b8:	f8 4f       	R0 <<= 0x1f;
ffa010ba:	f8 53       	R7 = R0 - R7;
ffa010bc:	07 0d       	CC = R7 <= 0x0;
ffa010be:	2c 18       	IF CC JUMP 0xffa01116 <_printf_int+0x136>;
ffa010c0:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa010c4:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa010c6:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa010ca:	05 20       	JUMP.S 0xffa010d4 <_printf_int+0xf4>;
ffa010cc:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa010d0:	4c 08       	CC = P4 == P1;
ffa010d2:	1e 18       	IF CC JUMP 0xffa0110e <_printf_int+0x12e>;
ffa010d4:	07 30       	R0 = R7;
ffa010d6:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa010d8:	00 e3 5c 00 	CALL 0xffa01190 <_mod>;
ffa010dc:	5a 91       	P2 = [P3];
ffa010de:	80 65       	R0 += 0x30;		/* ( 48) */
ffa010e0:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa010e2:	a2 5a       	P2 = P2 + P4;
ffa010e4:	10 9b       	B[P2] = R0;
ffa010e6:	07 30       	R0 = R7;
ffa010e8:	00 e3 46 00 	CALL 0xffa01174 <_div>;
ffa010ec:	00 0d       	CC = R0 <= 0x0;
ffa010ee:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa010f0:	38 30       	R7 = R0;
ffa010f2:	ed 17       	IF !CC JUMP 0xffa010cc <_printf_int+0xec> (BP);
ffa010f4:	74 30       	R6 = P4;
ffa010f6:	4c 32       	P1 = P4;
ffa010f8:	0e 64       	R6 += 0x1;		/* (  1) */
ffa010fa:	5a 91       	P2 = [P3];
ffa010fc:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa010fe:	8a 5a       	P2 = P2 + P1;
ffa01100:	10 9b       	B[P2] = R0;
ffa01102:	7e 2f       	JUMP.S 0xffa00ffe <_printf_int+0x1e>;
ffa01104:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900be0 <_printf_out> */
ffa01108:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa0110c:	91 2f       	JUMP.S 0xffa0102e <_printf_int+0x4e>;
ffa0110e:	4c 32       	P1 = P4;
ffa01110:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa01114:	f3 2f       	JUMP.S 0xffa010fa <_printf_int+0x11a>;
ffa01116:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa0111a:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa0111c:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa0111e:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa01122:	ec 2f       	JUMP.S 0xffa010fa <_printf_int+0x11a>;

ffa01124 <_printf_ip>:
ffa01124:	70 05       	[--SP] = (R7:6);
ffa01126:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0112a:	39 30       	R7 = R1;
ffa0112c:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa01130:	49 43       	R1 = R1.B (Z);
ffa01132:	ff e3 57 ff 	CALL 0xffa00fe0 <_printf_int>;
ffa01136:	06 e1 88 00 	R6.L = 0x88;		/* (136)	R6=0xff900088(-7339896) */
ffa0113a:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa0113e:	49 43       	R1 = R1.B (Z);
ffa01140:	06 30       	R0 = R6;
ffa01142:	ff e3 4f ff 	CALL 0xffa00fe0 <_printf_int>;
ffa01146:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa0114a:	49 43       	R1 = R1.B (Z);
ffa0114c:	06 30       	R0 = R6;
ffa0114e:	c7 4e       	R7 >>= 0x18;
ffa01150:	ff e3 48 ff 	CALL 0xffa00fe0 <_printf_int>;
ffa01154:	0f 30       	R1 = R7;
ffa01156:	06 30       	R0 = R6;
ffa01158:	ff e3 44 ff 	CALL 0xffa00fe0 <_printf_int>;
ffa0115c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa01160:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa01164:	ff e3 7c fe 	CALL 0xffa00e5c <_printf_str>;
ffa01168:	01 e8 00 00 	UNLINK;
ffa0116c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0116e:	30 05       	(R7:6) = [SP++];
ffa01170:	10 00       	RTS;
	...

ffa01174 <_div>:
ffa01174:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01178:	08 4f       	R0 <<= 0x1;
ffa0117a:	48 42       	DIVS (R0, R1);
ffa0117c:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa0117e:	b2 e0 03 20 	LSETUP(0xffa01182 <_div+0xe>, 0xffa01184 <_div+0x10>) LC1 = P2;
ffa01182:	08 42       	DIVQ (R0, R1);
ffa01184:	00 00       	NOP;
ffa01186:	80 42       	R0 = R0.L (X);
ffa01188:	01 e8 00 00 	UNLINK;
ffa0118c:	10 00       	RTS;
	...

ffa01190 <_mod>:
ffa01190:	70 05       	[--SP] = (R7:6);
ffa01192:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01196:	30 30       	R6 = R0;
ffa01198:	39 30       	R7 = R1;
ffa0119a:	ff e3 ed ff 	CALL 0xffa01174 <_div>;
ffa0119e:	c7 40       	R7 *= R0;
ffa011a0:	01 e8 00 00 	UNLINK;
ffa011a4:	be 53       	R6 = R6 - R7;
ffa011a6:	06 30       	R0 = R6;
ffa011a8:	30 05       	(R7:6) = [SP++];
ffa011aa:	10 00       	RTS;

ffa011ac <_memcpy_>:
ffa011ac:	02 0d       	CC = R2 <= 0x0;
ffa011ae:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa011b2:	08 32       	P1 = R0;
ffa011b4:	11 32       	P2 = R1;
ffa011b6:	08 18       	IF CC JUMP 0xffa011c6 <_memcpy_+0x1a>;
ffa011b8:	00 00       	NOP;
ffa011ba:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa011bc:	09 64       	R1 += 0x1;		/* (  1) */
ffa011be:	48 98       	R0 = B[P1++] (X);
ffa011c0:	0a 08       	CC = R2 == R1;
ffa011c2:	10 9a       	B[P2++] = R0;
ffa011c4:	fc 17       	IF !CC JUMP 0xffa011bc <_memcpy_+0x10> (BP);
ffa011c6:	01 e8 00 00 	UNLINK;
ffa011ca:	10 00       	RTS;

ffa011cc <_memset_>:
ffa011cc:	02 0d       	CC = R2 <= 0x0;
ffa011ce:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa011d2:	10 32       	P2 = R0;
ffa011d4:	06 18       	IF CC JUMP 0xffa011e0 <_memset_+0x14>;
ffa011d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa011d8:	08 64       	R0 += 0x1;		/* (  1) */
ffa011da:	02 08       	CC = R2 == R0;
ffa011dc:	11 9a       	B[P2++] = R1;
ffa011de:	fd 17       	IF !CC JUMP 0xffa011d8 <_memset_+0xc> (BP);
ffa011e0:	01 e8 00 00 	UNLINK;
ffa011e4:	10 00       	RTS;
	...

ffa011e8 <_strlen_>:
ffa011e8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa011ec:	10 32       	P2 = R0;
ffa011ee:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa011f0:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa011f4:	b2 e0 06 10 	LSETUP(0xffa011f8 <_strlen_+0x10>, 0xffa01200 <_strlen_+0x18>) LC1 = P1;
ffa011f8:	50 99       	R0 = B[P2] (X);
ffa011fa:	00 0c       	CC = R0 == 0x0;
ffa011fc:	04 18       	IF CC JUMP 0xffa01204 <_strlen_+0x1c>;
ffa011fe:	09 64       	R1 += 0x1;		/* (  1) */
ffa01200:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01202:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01204:	01 30       	R0 = R1;
ffa01206:	01 e8 00 00 	UNLINK;
ffa0120a:	10 00       	RTS;

ffa0120c <_strcpy_>:
ffa0120c:	12 32       	P2 = R2;
ffa0120e:	c5 04       	[--SP] = (P5:5);
ffa01210:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01214:	29 32       	P5 = R1;
ffa01216:	00 32       	P0 = R0;
ffa01218:	51 99       	R1 = B[P2] (X);
ffa0121a:	08 43       	R0 = R1.B (X);
ffa0121c:	00 0c       	CC = R0 == 0x0;
ffa0121e:	17 18       	IF CC JUMP 0xffa0124c <_strcpy_+0x40>;
ffa01220:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01222:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01224:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa01228:	b2 e0 09 10 	LSETUP(0xffa0122c <_strcpy_+0x20>, 0xffa0123a <_strcpy_+0x2e>) LC1 = P1;
ffa0122c:	01 9a       	B[P0++] = R1;
ffa0122e:	51 99       	R1 = B[P2] (X);
ffa01230:	08 43       	R0 = R1.B (X);
ffa01232:	00 0c       	CC = R0 == 0x0;
ffa01234:	0a 64       	R2 += 0x1;		/* (  1) */
ffa01236:	03 18       	IF CC JUMP 0xffa0123c <_strcpy_+0x30>;
ffa01238:	00 00       	NOP;
ffa0123a:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0123c:	01 e8 00 00 	UNLINK;
ffa01240:	28 91       	R0 = [P5];
ffa01242:	10 50       	R0 = R0 + R2;
ffa01244:	28 93       	[P5] = R0;
ffa01246:	40 30       	R0 = P0;
ffa01248:	85 04       	(P5:5) = [SP++];
ffa0124a:	10 00       	RTS;
ffa0124c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0124e:	f7 2f       	JUMP.S 0xffa0123c <_strcpy_+0x30>;

ffa01250 <_strprepend>:
ffa01250:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01252:	21 32       	P4 = R1;
ffa01254:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01258:	38 30       	R7 = R0;
ffa0125a:	02 30       	R0 = R2;
ffa0125c:	2a 32       	P5 = R2;
ffa0125e:	ff e3 c5 ff 	CALL 0xffa011e8 <_strlen_>;
ffa01262:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa01266:	20 91 00 00 
ffa0126a:	02 0d       	CC = R2 <= 0x0;
ffa0126c:	0a 18       	IF CC JUMP 0xffa01280 <_strprepend+0x30>;
ffa0126e:	07 52       	R0 = R7 - R0;
ffa01270:	10 32       	P2 = R0;
ffa01272:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01274:	09 64       	R1 += 0x1;		/* (  1) */
ffa01276:	68 98       	R0 = B[P5++] (X);
ffa01278:	0a 08       	CC = R2 == R1;
ffa0127a:	10 9a       	B[P2++] = R0;
ffa0127c:	fc 17       	IF !CC JUMP 0xffa01274 <_strprepend+0x24> (BP);
ffa0127e:	20 91       	R0 = [P4];
ffa01280:	01 e8 00 00 	UNLINK;
ffa01284:	07 52       	R0 = R7 - R0;
ffa01286:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01288:	10 00       	RTS;
	...

ffa0128c <_strcmp>:
ffa0128c:	10 32       	P2 = R0;
ffa0128e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01292:	01 32       	P0 = R1;
ffa01294:	51 99       	R1 = B[P2] (X);
ffa01296:	01 0c       	CC = R1 == 0x0;
ffa01298:	1b 18       	IF CC JUMP 0xffa012ce <_strcmp+0x42>;
ffa0129a:	00 00       	NOP;
ffa0129c:	00 00       	NOP;
ffa0129e:	00 00       	NOP;
ffa012a0:	40 99       	R0 = B[P0] (X);
ffa012a2:	00 0c       	CC = R0 == 0x0;
ffa012a4:	15 18       	IF CC JUMP 0xffa012ce <_strcmp+0x42>;
ffa012a6:	01 08       	CC = R1 == R0;
ffa012a8:	1c 10       	IF !CC JUMP 0xffa012e0 <_strcmp+0x54>;
ffa012aa:	4a 32       	P1 = P2;
ffa012ac:	50 32       	P2 = P0;
ffa012ae:	09 6c       	P1 += 0x1;		/* (  1) */
ffa012b0:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa012b2:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa012b6:	49 99       	R1 = B[P1] (X);
ffa012b8:	01 0c       	CC = R1 == 0x0;
ffa012ba:	0a 18       	IF CC JUMP 0xffa012ce <_strcmp+0x42>;
ffa012bc:	00 00       	NOP;
ffa012be:	00 00       	NOP;
ffa012c0:	00 00       	NOP;
ffa012c2:	50 99       	R0 = B[P2] (X);
ffa012c4:	00 0c       	CC = R0 == 0x0;
ffa012c6:	04 18       	IF CC JUMP 0xffa012ce <_strcmp+0x42>;
ffa012c8:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa012ca:	40 0c       	CC = P0 == 0x0;
ffa012cc:	05 10       	IF !CC JUMP 0xffa012d6 <_strcmp+0x4a>;
ffa012ce:	01 e8 00 00 	UNLINK;
ffa012d2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa012d4:	10 00       	RTS;
ffa012d6:	01 08       	CC = R1 == R0;
ffa012d8:	04 10       	IF !CC JUMP 0xffa012e0 <_strcmp+0x54>;
ffa012da:	09 6c       	P1 += 0x1;		/* (  1) */
ffa012dc:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa012de:	ec 2f       	JUMP.S 0xffa012b6 <_strcmp+0x2a>;
ffa012e0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa012e2:	01 e8 00 00 	UNLINK;
ffa012e6:	10 00       	RTS;

ffa012e8 <_substr>:
ffa012e8:	f4 05       	[--SP] = (R7:6, P5:4);
ffa012ea:	20 32       	P4 = R0;
ffa012ec:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa012f0:	11 32       	P2 = R1;
ffa012f2:	32 30       	R6 = R2;
ffa012f4:	61 99       	R1 = B[P4] (X);
ffa012f6:	01 0c       	CC = R1 == 0x0;
ffa012f8:	14 18       	IF CC JUMP 0xffa01320 <_substr+0x38>;
ffa012fa:	00 00       	NOP;
ffa012fc:	00 00       	NOP;
ffa012fe:	00 00       	NOP;
ffa01300:	50 99       	R0 = B[P2] (X);
ffa01302:	00 0c       	CC = R0 == 0x0;
ffa01304:	0e 18       	IF CC JUMP 0xffa01320 <_substr+0x38>;
ffa01306:	02 0d       	CC = R2 <= 0x0;
ffa01308:	0c 18       	IF CC JUMP 0xffa01320 <_substr+0x38>;
ffa0130a:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa0130c:	01 08       	CC = R1 == R0;
ffa0130e:	0f 18       	IF CC JUMP 0xffa0132c <_substr+0x44>;
ffa01310:	00 00       	NOP;
ffa01312:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01314:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01316:	50 99       	R0 = B[P2] (X);
ffa01318:	00 0c       	CC = R0 == 0x0;
ffa0131a:	03 18       	IF CC JUMP 0xffa01320 <_substr+0x38>;
ffa0131c:	1e 09       	CC = R6 <= R3;
ffa0131e:	f7 17       	IF !CC JUMP 0xffa0130c <_substr+0x24> (BP);
ffa01320:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa01322:	01 e8 00 00 	UNLINK;
ffa01326:	40 30       	R0 = P0;
ffa01328:	b4 05       	(R7:6, P5:4) = [SP++];
ffa0132a:	10 00       	RTS;
ffa0132c:	52 30       	R2 = P2;
ffa0132e:	3b 30       	R7 = R3;
ffa01330:	0a 64       	R2 += 0x1;		/* (  1) */
ffa01332:	0f 64       	R7 += 0x1;		/* (  1) */
ffa01334:	12 32       	P2 = R2;
ffa01336:	07 32       	P0 = R7;
ffa01338:	4c 32       	P1 = P4;
ffa0133a:	6c 32       	P5 = P4;
ffa0133c:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0133e:	15 6c       	P5 += 0x2;		/* (  2) */
ffa01340:	02 20       	JUMP.S 0xffa01344 <_substr+0x5c>;
ffa01342:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01344:	4b 99       	R3 = B[P1] (X);
ffa01346:	50 99       	R0 = B[P2] (X);
ffa01348:	03 08       	CC = R3 == R0;
ffa0134a:	0e 10       	IF !CC JUMP 0xffa01366 <_substr+0x7e>;
ffa0134c:	03 0c       	CC = R3 == 0x0;
ffa0134e:	0c 18       	IF CC JUMP 0xffa01366 <_substr+0x7e>;
ffa01350:	00 00       	NOP;
ffa01352:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01354:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01356:	68 98       	R0 = B[P5++] (X);
ffa01358:	00 0c       	CC = R0 == 0x0;
ffa0135a:	f4 17       	IF !CC JUMP 0xffa01342 <_substr+0x5a> (BP);
ffa0135c:	01 e8 00 00 	UNLINK;
ffa01360:	40 30       	R0 = P0;
ffa01362:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01364:	10 00       	RTS;
ffa01366:	12 32       	P2 = R2;
ffa01368:	1f 30       	R3 = R7;
ffa0136a:	d6 2f       	JUMP.S 0xffa01316 <_substr+0x2e>;

ffa0136c <_sprintf_int>:
ffa0136c:	fb 05       	[--SP] = (R7:7, P5:3);
ffa0136e:	01 0c       	CC = R1 == 0x0;
ffa01370:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01374:	00 34       	I0 = R0;
ffa01376:	11 30       	R2 = R1;
ffa01378:	1a 14       	IF !CC JUMP 0xffa013ac <_sprintf_int+0x40> (BP);
ffa0137a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa0137e:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa01382:	5a 91       	P2 = [P3];
ffa01384:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01386:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01388:	10 9b       	B[P2] = R0;
ffa0138a:	88 32       	P1 = I0;
ffa0138c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0138e:	0b 52       	R0 = R3 - R1;
ffa01390:	00 32       	P0 = R0;
ffa01392:	5a 91       	P2 = [P3];
ffa01394:	09 64       	R1 += 0x1;		/* (  1) */
ffa01396:	99 08       	CC = R1 < R3;
ffa01398:	82 5a       	P2 = P2 + P0;
ffa0139a:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa0139e:	08 9a       	B[P1++] = R0;
ffa013a0:	f7 1f       	IF CC JUMP 0xffa0138e <_sprintf_int+0x22> (BP);
ffa013a2:	01 e8 00 00 	UNLINK;
ffa013a6:	03 30       	R0 = R3;
ffa013a8:	bb 05       	(R7:7, P5:3) = [SP++];
ffa013aa:	10 00       	RTS;
ffa013ac:	01 0d       	CC = R1 <= 0x0;
ffa013ae:	2d 18       	IF CC JUMP 0xffa01408 <_sprintf_int+0x9c>;
ffa013b0:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa013b4:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa013b8:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa013ba:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa013be:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa013c2:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa013c4:	b2 e0 20 50 	LSETUP(0xffa013c8 <_sprintf_int+0x5c>, 0xffa01404 <_sprintf_int+0x98>) LC1 = P5;
ffa013c8:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa013cc:	59 91 00 00 
ffa013d0:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa013d4:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa013d8:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa013dc:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa013e0:	0b c4 00 00 	R0 = (A0 += A1);
ffa013e4:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa013e8:	10 4d       	R0 >>>= 0x2;
ffa013ea:	08 52       	R0 = R0 - R1;
ffa013ec:	00 32       	P0 = R0;
ffa013ee:	13 32       	P2 = R3;
ffa013f0:	0b 64       	R3 += 0x1;		/* (  1) */
ffa013f2:	40 0d       	CC = P0 <= 0x0;
ffa013f4:	51 5a       	P1 = P1 + P2;
ffa013f6:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa013f8:	92 5a       	P2 = P2 << 0x1;
ffa013fa:	4a 30       	R1 = P2;
ffa013fc:	0a 52       	R0 = R2 - R1;
ffa013fe:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01400:	08 9b       	B[P1] = R0;
ffa01402:	39 18       	IF CC JUMP 0xffa01474 <_sprintf_int+0x108>;
ffa01404:	50 30       	R2 = P0;
ffa01406:	c2 2f       	JUMP.S 0xffa0138a <_sprintf_int+0x1e>;
ffa01408:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0140a:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa0140c:	f8 4f       	R0 <<= 0x1f;
ffa0140e:	90 52       	R2 = R0 - R2;
ffa01410:	02 0d       	CC = R2 <= 0x0;
ffa01412:	3c 18       	IF CC JUMP 0xffa0148a <_sprintf_int+0x11e>;
ffa01414:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa01418:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa0141c:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa0141e:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa01422:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa01426:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa01428:	b2 e0 1f 50 	LSETUP(0xffa0142c <_sprintf_int+0xc0>, 0xffa01466 <_sprintf_int+0xfa>) LC1 = P5;
ffa0142c:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa01430:	59 91 00 00 
ffa01434:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01438:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa0143c:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa01440:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01444:	0b c4 00 00 	R0 = (A0 += A1);
ffa01448:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa0144c:	10 4d       	R0 >>>= 0x2;
ffa0144e:	08 52       	R0 = R0 - R1;
ffa01450:	00 32       	P0 = R0;
ffa01452:	61 5a       	P1 = P1 + P4;
ffa01454:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa01456:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa01458:	92 5a       	P2 = P2 << 0x1;
ffa0145a:	4a 30       	R1 = P2;
ffa0145c:	0a 52       	R0 = R2 - R1;
ffa0145e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01460:	40 0d       	CC = P0 <= 0x0;
ffa01462:	08 9b       	B[P1] = R0;
ffa01464:	0f 18       	IF CC JUMP 0xffa01482 <_sprintf_int+0x116>;
ffa01466:	50 30       	R2 = P0;
ffa01468:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa0146a:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa0146c:	5a 91       	P2 = [P3];
ffa0146e:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa01470:	8a 5a       	P2 = P2 + P1;
ffa01472:	10 9b       	B[P2] = R0;
ffa01474:	03 0d       	CC = R3 <= 0x0;
ffa01476:	8a 17       	IF !CC JUMP 0xffa0138a <_sprintf_int+0x1e> (BP);
ffa01478:	01 e8 00 00 	UNLINK;
ffa0147c:	03 30       	R0 = R3;
ffa0147e:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01480:	10 00       	RTS;
ffa01482:	5c 30       	R3 = P4;
ffa01484:	4c 32       	P1 = P4;
ffa01486:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01488:	f2 2f       	JUMP.S 0xffa0146c <_sprintf_int+0x100>;
ffa0148a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa0148e:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa01490:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01492:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa01496:	eb 2f       	JUMP.S 0xffa0146c <_sprintf_int+0x100>;

ffa01498 <_sprintf_hex>:
ffa01498:	10 32       	P2 = R0;
ffa0149a:	78 05       	[--SP] = (R7:7);
ffa0149c:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0149e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa014a2:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa014a4:	10 9b       	B[P2] = R0;
ffa014a6:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa014aa:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa014ae:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa014b0:	12 6c       	P2 += 0x2;		/* (  2) */
ffa014b2:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa014b4:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa014b6:	b2 e0 09 10 	LSETUP(0xffa014ba <_sprintf_hex+0x22>, 0xffa014c8 <_sprintf_hex+0x30>) LC1 = P1;
ffa014ba:	01 30       	R0 = R1;
ffa014bc:	10 40       	R0 >>>= R2;
ffa014be:	18 54       	R0 = R0 & R3;
ffa014c0:	38 09       	CC = R0 <= R7;
ffa014c2:	09 1c       	IF CC JUMP 0xffa014d4 <_sprintf_hex+0x3c> (BP);
ffa014c4:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa014c6:	10 9a       	B[P2++] = R0;
ffa014c8:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa014ca:	01 e8 00 00 	UNLINK;
ffa014ce:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa014d0:	38 05       	(R7:7) = [SP++];
ffa014d2:	10 00       	RTS;
ffa014d4:	80 65       	R0 += 0x30;		/* ( 48) */
ffa014d6:	f8 2f       	JUMP.S 0xffa014c6 <_sprintf_hex+0x2e>;

ffa014d8 <_strprintf_int>:
ffa014d8:	fd 05       	[--SP] = (R7:7, P5:5);
ffa014da:	29 32       	P5 = R1;
ffa014dc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa014e0:	0a 30       	R1 = R2;
ffa014e2:	38 30       	R7 = R0;
ffa014e4:	ff e3 44 ff 	CALL 0xffa0136c <_sprintf_int>;
ffa014e8:	29 91       	R1 = [P5];
ffa014ea:	41 50       	R1 = R1 + R0;
ffa014ec:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa014f0:	29 93 00 00 
ffa014f4:	01 e8 00 00 	UNLINK;
ffa014f8:	07 30       	R0 = R7;
ffa014fa:	bd 05       	(R7:7, P5:5) = [SP++];
ffa014fc:	10 00       	RTS;
	...

ffa01500 <_strprintf_hex>:
ffa01500:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01502:	29 32       	P5 = R1;
ffa01504:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01508:	0a 30       	R1 = R2;
ffa0150a:	38 30       	R7 = R0;
ffa0150c:	ff e3 c6 ff 	CALL 0xffa01498 <_sprintf_hex>;
ffa01510:	29 91       	R1 = [P5];
ffa01512:	41 50       	R1 = R1 + R0;
ffa01514:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa01518:	29 93 00 00 
ffa0151c:	01 e8 00 00 	UNLINK;
ffa01520:	07 30       	R0 = R7;
ffa01522:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01524:	10 00       	RTS;
	...

ffa01528 <_atoi>:
ffa01528:	08 32       	P1 = R0;
ffa0152a:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa0152c:	f5 05       	[--SP] = (R7:6, P5:5);
ffa0152e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01532:	48 99       	R0 = B[P1] (X);
ffa01534:	10 08       	CC = R0 == R2;
ffa01536:	25 18       	IF CC JUMP 0xffa01580 <_atoi+0x58>;
ffa01538:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa0153a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa0153c:	41 32       	P0 = P1;
ffa0153e:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01540:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa01542:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa01544:	12 20       	JUMP.S 0xffa01568 <_atoi+0x40>;
ffa01546:	8b 08       	CC = R3 < R1;
ffa01548:	16 10       	IF !CC JUMP 0xffa01574 <_atoi+0x4c>;
ffa0154a:	10 43       	R0 = R2.B (X);
ffa0154c:	28 32       	P5 = R0;
ffa0154e:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa01550:	40 99       	R0 = B[P0] (X);
ffa01552:	80 66       	R0 += -0x30;		/* (-48) */
ffa01554:	40 43       	R0 = R0.B (Z);
ffa01556:	aa 5a       	P2 = P2 + P5;
ffa01558:	10 0a       	CC = R0 <= R2 (IU);
ffa0155a:	82 6e       	P2 += -0x30;		/* (-48) */
ffa0155c:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0155e:	03 14       	IF !CC JUMP 0xffa01564 <_atoi+0x3c> (BP);
ffa01560:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa01562:	92 5a       	P2 = P2 << 0x1;
ffa01564:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01566:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01568:	4a 99       	R2 = B[P1] (X);
ffa0156a:	02 30       	R0 = R2;
ffa0156c:	80 66       	R0 += -0x30;		/* (-48) */
ffa0156e:	40 43       	R0 = R0.B (Z);
ffa01570:	30 0a       	CC = R0 <= R6 (IU);
ffa01572:	ea 1f       	IF CC JUMP 0xffa01546 <_atoi+0x1e> (BP);
ffa01574:	42 30       	R0 = P2;
ffa01576:	f8 40       	R0 *= R7;
ffa01578:	01 e8 00 00 	UNLINK;
ffa0157c:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0157e:	10 00       	RTS;
ffa01580:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01582:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01584:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01586:	db 2f       	JUMP.S 0xffa0153c <_atoi+0x14>;

ffa01588 <_udelay>:
ffa01588:	00 0d       	CC = R0 <= 0x0;
ffa0158a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0158e:	0b 18       	IF CC JUMP 0xffa015a4 <_udelay+0x1c>;
ffa01590:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01592:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa01596:	b2 e0 03 20 	LSETUP(0xffa0159a <_udelay+0x12>, 0xffa0159c <_udelay+0x14>) LC1 = P2;
ffa0159a:	00 00       	NOP;
ffa0159c:	00 00       	NOP;
ffa0159e:	09 64       	R1 += 0x1;		/* (  1) */
ffa015a0:	08 08       	CC = R0 == R1;
ffa015a2:	f8 17       	IF !CC JUMP 0xffa01592 <_udelay+0xa> (BP);
ffa015a4:	01 e8 00 00 	UNLINK;
ffa015a8:	10 00       	RTS;
	...

ffa015ac <_bfin_EMAC_send_check>:
ffa015ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa015b0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa015b4:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa015b8:	50 95       	R0 = W[P2] (X);
ffa015ba:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa015bc:	00 02       	R0 = CC;
ffa015be:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa015c0:	01 e8 00 00 	UNLINK;
ffa015c4:	10 00       	RTS;
	...

ffa015c8 <_FormatIPAddress>:
ffa015c8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa015cc:	18 30       	R3 = R0;
ffa015ce:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa015d2:	40 4f       	R0 <<= 0x8;
ffa015d4:	52 43       	R2 = R2.B (Z);
ffa015d6:	10 56       	R0 = R0 | R2;
ffa015d8:	40 4f       	R0 <<= 0x8;
ffa015da:	49 43       	R1 = R1.B (Z);
ffa015dc:	08 56       	R0 = R0 | R1;
ffa015de:	40 4f       	R0 <<= 0x8;
ffa015e0:	5b 43       	R3 = R3.B (Z);
ffa015e2:	18 56       	R0 = R0 | R3;
ffa015e4:	01 e8 00 00 	UNLINK;
ffa015e8:	10 00       	RTS;
	...

ffa015ec <_bfin_EMAC_halt>:
ffa015ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa015f0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa015f2:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa015f6:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa015fa:	10 93       	[P2] = R0;
ffa015fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01600:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa01604:	10 97       	W[P2] = R0;
ffa01606:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa0160a:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa0160e:	10 97       	W[P2] = R0;
ffa01610:	01 e8 00 00 	UNLINK;
ffa01614:	10 00       	RTS;
	...

ffa01618 <_PollMdcDone>:
ffa01618:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0161c:	02 20       	JUMP.S 0xffa01620 <_PollMdcDone+0x8>;
ffa0161e:	00 00       	NOP;
ffa01620:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01624:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01628:	10 91       	R0 = [P2];
ffa0162a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0162c:	f9 17       	IF !CC JUMP 0xffa0161e <_PollMdcDone+0x6> (BP);
ffa0162e:	01 e8 00 00 	UNLINK;
ffa01632:	10 00       	RTS;

ffa01634 <_WrPHYReg>:
ffa01634:	68 05       	[--SP] = (R7:5);
ffa01636:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0163a:	28 30       	R5 = R0;
ffa0163c:	31 30       	R6 = R1;
ffa0163e:	3a 30       	R7 = R2;
ffa01640:	ff e3 ec ff 	CALL 0xffa01618 <_PollMdcDone>;
ffa01644:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01646:	b0 55       	R6 = R0 & R6;
ffa01648:	28 54       	R0 = R0 & R5;
ffa0164a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0164e:	58 4f       	R0 <<= 0xb;
ffa01650:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa01652:	ff 42       	R7 = R7.L (Z);
ffa01654:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01658:	36 4f       	R6 <<= 0x6;
ffa0165a:	08 56       	R0 = R0 | R1;
ffa0165c:	17 93       	[P2] = R7;
ffa0165e:	86 57       	R6 = R6 | R0;
ffa01660:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa01662:	16 93       	[P2] = R6;
ffa01664:	01 e8 00 00 	UNLINK;
ffa01668:	28 05       	(R7:5) = [SP++];
ffa0166a:	10 00       	RTS;

ffa0166c <_RdPHYReg>:
ffa0166c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0166e:	29 32       	P5 = R1;
ffa01670:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01674:	38 30       	R7 = R0;
ffa01676:	ff e3 d1 ff 	CALL 0xffa01618 <_PollMdcDone>;
ffa0167a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa0167e:	45 30       	R0 = P5;
ffa01680:	c0 42       	R0 = R0.L (Z);
ffa01682:	28 32       	P5 = R0;
ffa01684:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01686:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa0168a:	55 30       	R2 = P5;
ffa0168c:	42 54       	R1 = R2 & R0;
ffa0168e:	38 54       	R0 = R0 & R7;
ffa01690:	58 4f       	R0 <<= 0xb;
ffa01692:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa01694:	31 4f       	R1 <<= 0x6;
ffa01696:	41 56       	R1 = R1 | R0;
ffa01698:	11 93       	[P2] = R1;
ffa0169a:	ff e3 bf ff 	CALL 0xffa01618 <_PollMdcDone>;
ffa0169e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa016a2:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa016a6:	10 91       	R0 = [P2];
ffa016a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa016ac:	0a e1 e4 0b 	P2.L = 0xbe4;		/* (3044)	P2=0xff900be4 <_PHYregs> */
ffa016b0:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa016b2:	10 97       	W[P2] = R0;
ffa016b4:	01 e8 00 00 	UNLINK;
ffa016b8:	c0 42       	R0 = R0.L (Z);
ffa016ba:	bd 05       	(R7:7, P5:5) = [SP++];
ffa016bc:	10 00       	RTS;
	...

ffa016c0 <_SoftResetPHY>:
ffa016c0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa016c2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa016c4:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa016c8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa016cc:	ff e3 b4 ff 	CALL 0xffa01634 <_WrPHYReg>;
ffa016d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa016d2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa016d4:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa016d6:	ff e3 af ff 	CALL 0xffa01634 <_WrPHYReg>;
ffa016da:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa016dc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa016de:	ff e3 c7 ff 	CALL 0xffa0166c <_RdPHYReg>;
ffa016e2:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa016e4:	fb 1f       	IF CC JUMP 0xffa016da <_SoftResetPHY+0x1a> (BP);
ffa016e6:	01 e8 00 00 	UNLINK;
ffa016ea:	10 00       	RTS;

ffa016ec <_NetCksum>:
ffa016ec:	01 0d       	CC = R1 <= 0x0;
ffa016ee:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa016f2:	10 18       	IF CC JUMP 0xffa01712 <_NetCksum+0x26>;
ffa016f4:	10 32       	P2 = R0;
ffa016f6:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa016f8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa016fa:	0a 64       	R2 += 0x1;		/* (  1) */
ffa016fc:	10 94       	R0 = W[P2++] (Z);
ffa016fe:	0a 08       	CC = R2 == R1;
ffa01700:	c3 50       	R3 = R3 + R0;
ffa01702:	fc 17       	IF !CC JUMP 0xffa016fa <_NetCksum+0xe> (BP);
ffa01704:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa01708:	03 50       	R0 = R3 + R0;
ffa0170a:	c0 42       	R0 = R0.L (Z);
ffa0170c:	01 e8 00 00 	UNLINK;
ffa01710:	10 00       	RTS;
ffa01712:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01714:	01 e8 00 00 	UNLINK;
ffa01718:	10 00       	RTS;
	...

ffa0171c <_htons>:
ffa0171c:	08 30       	R1 = R0;
ffa0171e:	c0 42       	R0 = R0.L (Z);
ffa01720:	40 4e       	R0 >>= 0x8;
ffa01722:	41 4f       	R1 <<= 0x8;
ffa01724:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01728:	08 56       	R0 = R0 | R1;
ffa0172a:	c0 42       	R0 = R0.L (Z);
ffa0172c:	01 e8 00 00 	UNLINK;
ffa01730:	10 00       	RTS;
	...

ffa01734 <_htonl>:
ffa01734:	10 30       	R2 = R0;
ffa01736:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa0173a:	40 43       	R0 = R0.B (Z);
ffa0173c:	49 43       	R1 = R1.B (Z);
ffa0173e:	40 4f       	R0 <<= 0x8;
ffa01740:	08 56       	R0 = R0 | R1;
ffa01742:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa01746:	40 4f       	R0 <<= 0x8;
ffa01748:	49 43       	R1 = R1.B (Z);
ffa0174a:	08 56       	R0 = R0 | R1;
ffa0174c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01750:	40 4f       	R0 <<= 0x8;
ffa01752:	c2 4e       	R2 >>= 0x18;
ffa01754:	10 56       	R0 = R0 | R2;
ffa01756:	01 e8 00 00 	UNLINK;
ffa0175a:	10 00       	RTS;

ffa0175c <_pack4chars>:
ffa0175c:	08 32       	P1 = R0;
ffa0175e:	10 32       	P2 = R0;
ffa01760:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01764:	01 e8 00 00 	UNLINK;
ffa01768:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa0176c:	10 98       	R0 = B[P2++] (Z);
ffa0176e:	41 4f       	R1 <<= 0x8;
ffa01770:	08 50       	R0 = R0 + R1;
ffa01772:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa01776:	81 4f       	R1 <<= 0x10;
ffa01778:	08 50       	R0 = R0 + R1;
ffa0177a:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa0177e:	c1 4f       	R1 <<= 0x18;
ffa01780:	08 50       	R0 = R0 + R1;
ffa01782:	10 00       	RTS;

ffa01784 <_ip_header_setup>:
ffa01784:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01786:	28 32       	P5 = R0;
ffa01788:	21 32       	P4 = R1;
ffa0178a:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa0178e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01792:	32 30       	R6 = R2;
ffa01794:	28 9b       	B[P5] = R0;
ffa01796:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01798:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa0179c:	27 91       	R7 = [P4];
ffa0179e:	f8 42       	R0 = R7.L (Z);
ffa017a0:	ff e3 be ff 	CALL 0xffa0171c <_htons>;
ffa017a4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be4 <_PHYregs> */
ffa017a8:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa017ac:	68 b4       	W[P5 + 0x2] = R0;
ffa017ae:	10 95       	R0 = W[P2] (Z);
ffa017b0:	08 30       	R1 = R0;
ffa017b2:	09 64       	R1 += 0x1;		/* (  1) */
ffa017b4:	67 67       	R7 += -0x14;		/* (-20) */
ffa017b6:	11 97       	W[P2] = R1;
ffa017b8:	27 93       	[P4] = R7;
ffa017ba:	ff e3 b1 ff 	CALL 0xffa0171c <_htons>;
ffa017be:	a8 b4       	W[P5 + 0x4] = R0;
ffa017c0:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa017c4:	ff e3 ac ff 	CALL 0xffa0171c <_htons>;
ffa017c8:	e8 b4       	W[P5 + 0x6] = R0;
ffa017ca:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa017ce:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa017d2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2e <_NetIPID> */
ffa017d6:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa017da:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa017de:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa017e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017e4:	68 b5       	W[P5 + 0xa] = R0;
ffa017e6:	10 91       	R0 = [P2];
ffa017e8:	e8 b0       	[P5 + 0xc] = R0;
ffa017ea:	2e b1       	[P5 + 0x10] = R6;
ffa017ec:	45 30       	R0 = P5;
ffa017ee:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa017f0:	ff e3 7e ff 	CALL 0xffa016ec <_NetCksum>;
ffa017f4:	c0 43       	R0 =~ R0;
ffa017f6:	68 b5       	W[P5 + 0xa] = R0;
ffa017f8:	01 e8 00 00 	UNLINK;
ffa017fc:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa017fe:	45 30       	R0 = P5;
ffa01800:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01802:	10 00       	RTS;

ffa01804 <_ip_header_checksum>:
ffa01804:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01808:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa0180a:	ff e3 71 ff 	CALL 0xffa016ec <_NetCksum>;
ffa0180e:	08 02       	CC = R0;
ffa01810:	00 02       	R0 = CC;
ffa01812:	01 e8 00 00 	UNLINK;
ffa01816:	10 00       	RTS;

ffa01818 <_icmp_header_setup>:
ffa01818:	00 32       	P0 = R0;
ffa0181a:	c5 04       	[--SP] = (P5:5);
ffa0181c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0181e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01822:	29 32       	P5 = R1;
ffa01824:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa01828:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0182a:	40 b4       	W[P0 + 0x2] = R0;
ffa0182c:	38 ab       	R0 = W[FP + 0x18] (X);
ffa0182e:	80 b4       	W[P0 + 0x4] = R0;
ffa01830:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa01832:	02 9b       	B[P0] = R2;
ffa01834:	c0 b4       	W[P0 + 0x6] = R0;
ffa01836:	48 32       	P1 = P0;
ffa01838:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0183a:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa0183c:	b2 e0 03 20 	LSETUP(0xffa01840 <_icmp_header_setup+0x28>, 0xffa01842 <_icmp_header_setup+0x2a>) LC1 = P2;
ffa01840:	08 94       	R0 = W[P1++] (Z);
ffa01842:	41 50       	R1 = R1 + R0;
ffa01844:	c8 42       	R0 = R1.L (Z);
ffa01846:	81 4e       	R1 >>= 0x10;
ffa01848:	08 50       	R0 = R0 + R1;
ffa0184a:	c0 43       	R0 =~ R0;
ffa0184c:	40 b4       	W[P0 + 0x2] = R0;
ffa0184e:	28 91       	R0 = [P5];
ffa01850:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa01852:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01854:	01 e8 00 00 	UNLINK;
ffa01858:	28 93       	[P5] = R0;
ffa0185a:	40 30       	R0 = P0;
ffa0185c:	85 04       	(P5:5) = [SP++];
ffa0185e:	10 00       	RTS;

ffa01860 <_udp_header_setup>:
ffa01860:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01862:	28 32       	P5 = R0;
ffa01864:	21 32       	P4 = R1;
ffa01866:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0186a:	d0 42       	R0 = R2.L (Z);
ffa0186c:	ff e3 58 ff 	CALL 0xffa0171c <_htons>;
ffa01870:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa01874:	28 97       	W[P5] = R0;
ffa01876:	07 30       	R0 = R7;
ffa01878:	ff e3 52 ff 	CALL 0xffa0171c <_htons>;
ffa0187c:	27 91       	R7 = [P4];
ffa0187e:	68 b4       	W[P5 + 0x2] = R0;
ffa01880:	f8 42       	R0 = R7.L (Z);
ffa01882:	ff e3 4d ff 	CALL 0xffa0171c <_htons>;
ffa01886:	a8 b4       	W[P5 + 0x4] = R0;
ffa01888:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0188a:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa0188c:	e8 b4       	W[P5 + 0x6] = R0;
ffa0188e:	01 e8 00 00 	UNLINK;
ffa01892:	45 6c       	P5 += 0x8;		/* (  8) */
ffa01894:	45 30       	R0 = P5;
ffa01896:	27 93       	[P4] = R7;
ffa01898:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0189a:	10 00       	RTS;

ffa0189c <_tcp_header_setup>:
ffa0189c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0189e:	28 32       	P5 = R0;
ffa018a0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa018a4:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa018a8:	21 32       	P4 = R1;
ffa018aa:	3a 30       	R7 = R2;
ffa018ac:	ff e3 38 ff 	CALL 0xffa0171c <_htons>;
ffa018b0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa018b4:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa018b8:	28 97       	W[P5] = R0;
ffa018ba:	50 95       	R0 = W[P2] (X);
ffa018bc:	68 b4       	W[P5 + 0x2] = R0;
ffa018be:	38 a2       	R0 = [FP + 0x20];
ffa018c0:	ff e3 3a ff 	CALL 0xffa01734 <_htonl>;
ffa018c4:	68 b0       	[P5 + 0x4] = R0;
ffa018c6:	78 a2       	R0 = [FP + 0x24];
ffa018c8:	ff e3 36 ff 	CALL 0xffa01734 <_htonl>;
ffa018cc:	a8 b0       	[P5 + 0x8] = R0;
ffa018ce:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa018d2:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa018d6:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa018da:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa018de:	ff e3 1f ff 	CALL 0xffa0171c <_htons>;
ffa018e2:	e8 b5       	W[P5 + 0xe] = R0;
ffa018e4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018e6:	28 b6       	W[P5 + 0x10] = R0;
ffa018e8:	68 b6       	W[P5 + 0x12] = R0;
ffa018ea:	20 91       	R0 = [P4];
ffa018ec:	60 67       	R0 += -0x14;		/* (-20) */
ffa018ee:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa018f0:	01 e8 00 00 	UNLINK;
ffa018f4:	20 93       	[P4] = R0;
ffa018f6:	45 30       	R0 = P5;
ffa018f8:	bc 05       	(R7:7, P5:4) = [SP++];
ffa018fa:	10 00       	RTS;

ffa018fc <_DHCP_parse>:
ffa018fc:	f5 05       	[--SP] = (R7:6, P5:5);
ffa018fe:	09 0d       	CC = R1 <= 0x1;
ffa01900:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01904:	10 32       	P2 = R0;
ffa01906:	33 18       	IF CC JUMP 0xffa0196c <_DHCP_parse+0x70>;
ffa01908:	00 00       	NOP;
ffa0190a:	31 30       	R6 = R1;
ffa0190c:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa0190e:	11 98       	R1 = B[P2++] (Z);
ffa01910:	01 0c       	CC = R1 == 0x0;
ffa01912:	2b 1c       	IF CC JUMP 0xffa01968 <_DHCP_parse+0x6c> (BP);
ffa01914:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa01918:	01 08       	CC = R1 == R0;
ffa0191a:	57 99       	R7 = B[P2] (X);
ffa0191c:	28 18       	IF CC JUMP 0xffa0196c <_DHCP_parse+0x70>;
ffa0191e:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa01920:	6a 32       	P5 = P2;
ffa01922:	01 0a       	CC = R1 <= R0 (IU);
ffa01924:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa01926:	09 14       	IF !CC JUMP 0xffa01938 <_DHCP_parse+0x3c> (BP);
ffa01928:	09 32       	P1 = R1;
ffa0192a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpClientPort> */
ffa0192e:	0a e1 a8 03 	P2.L = 0x3a8;		/* (936)	P2=0xff9003a8 */
ffa01932:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa01934:	52 91       	P2 = [P2];
ffa01936:	52 00       	JUMP (P2);
ffa01938:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa0193c:	00 e1 80 01 	R0.L = 0x180;		/* (384)	R0=0xff900180(-7339648) */
ffa01940:	ff e3 50 fb 	CALL 0xffa00fe0 <_printf_int>;
ffa01944:	7f 43       	R7 = R7.B (Z);
ffa01946:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900180(-7339648) */
ffa0194a:	00 e1 94 01 	R0.L = 0x194;		/* (404)	R0=0xff900194(-7339628) */
ffa0194e:	0f 30       	R1 = R7;
ffa01950:	ff e3 48 fb 	CALL 0xffa00fe0 <_printf_int>;
ffa01954:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900194(-7339628) */
ffa01958:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa0195c:	ff e3 80 fa 	CALL 0xffa00e5c <_printf_str>;
ffa01960:	0f 32       	P1 = R7;
ffa01962:	be 53       	R6 = R6 - R7;
ffa01964:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01966:	8d 5a       	P2 = P5 + P1;
ffa01968:	0e 0d       	CC = R6 <= 0x1;
ffa0196a:	d1 17       	IF !CC JUMP 0xffa0190c <_DHCP_parse+0x10> (BP);
ffa0196c:	01 e8 00 00 	UNLINK;
ffa01970:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01972:	10 00       	RTS;
ffa01974:	45 30       	R0 = P5;
ffa01976:	ff e3 f3 fe 	CALL 0xffa0175c <_pack4chars>;
ffa0197a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff9003a8 */
ffa0197e:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetSubnetMask> */
ffa01982:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01986:	10 93 00 00 
ffa0198a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa0198e:	00 e1 d8 00 	R0.L = 0xd8;		/* (216)	R0=0xff9000d8(-7339816) */
ffa01992:	ff e3 c9 fb 	CALL 0xffa01124 <_printf_ip>;
ffa01996:	7f 43       	R7 = R7.B (Z);
ffa01998:	de 2f       	JUMP.S 0xffa01954 <_DHCP_parse+0x58>;
ffa0199a:	45 30       	R0 = P5;
ffa0199c:	ff e3 e0 fe 	CALL 0xffa0175c <_pack4chars>;
ffa019a0:	08 30       	R1 = R0;
ffa019a2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000d8(-7339816) */
ffa019a6:	00 e1 e8 00 	R0.L = 0xe8;		/* (232)	R0=0xff9000e8(-7339800) */
ffa019aa:	ff e3 bd fb 	CALL 0xffa01124 <_printf_ip>;
ffa019ae:	7f 43       	R7 = R7.B (Z);
ffa019b0:	d2 2f       	JUMP.S 0xffa01954 <_DHCP_parse+0x58>;
ffa019b2:	45 30       	R0 = P5;
ffa019b4:	ff e3 d4 fe 	CALL 0xffa0175c <_pack4chars>;
ffa019b8:	08 30       	R1 = R0;
ffa019ba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000e8(-7339800) */
ffa019be:	00 e1 f8 00 	R0.L = 0xf8;		/* (248)	R0=0xff9000f8(-7339784) */
ffa019c2:	ff e3 b1 fb 	CALL 0xffa01124 <_printf_ip>;
ffa019c6:	7f 43       	R7 = R7.B (Z);
ffa019c8:	c6 2f       	JUMP.S 0xffa01954 <_DHCP_parse+0x58>;
ffa019ca:	45 30       	R0 = P5;
ffa019cc:	ff e3 c8 fe 	CALL 0xffa0175c <_pack4chars>;
ffa019d0:	08 30       	R1 = R0;
ffa019d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f8(-7339784) */
ffa019d6:	00 e1 08 01 	R0.L = 0x108;		/* (264)	R0=0xff900108(-7339768) */
ffa019da:	ff e3 a5 fb 	CALL 0xffa01124 <_printf_ip>;
ffa019de:	7f 43       	R7 = R7.B (Z);
ffa019e0:	ba 2f       	JUMP.S 0xffa01954 <_DHCP_parse+0x58>;
ffa019e2:	45 30       	R0 = P5;
ffa019e4:	ff e3 bc fe 	CALL 0xffa0175c <_pack4chars>;
ffa019e8:	ff e3 a6 fe 	CALL 0xffa01734 <_htonl>;
ffa019ec:	08 30       	R1 = R0;
ffa019ee:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900108(-7339768) */
ffa019f2:	00 e1 18 01 	R0.L = 0x118;		/* (280)	R0=0xff900118(-7339752) */
ffa019f6:	ff e3 f5 fa 	CALL 0xffa00fe0 <_printf_int>;
ffa019fa:	7f 43       	R7 = R7.B (Z);
ffa019fc:	ac 2f       	JUMP.S 0xffa01954 <_DHCP_parse+0x58>;
ffa019fe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900118(-7339752) */
ffa01a02:	29 99       	R1 = B[P5] (Z);
ffa01a04:	00 e1 2c 01 	R0.L = 0x12c;		/* (300)	R0=0xff90012c(-7339732) */
ffa01a08:	ff e3 ec fa 	CALL 0xffa00fe0 <_printf_int>;
ffa01a0c:	7f 43       	R7 = R7.B (Z);
ffa01a0e:	a3 2f       	JUMP.S 0xffa01954 <_DHCP_parse+0x58>;
ffa01a10:	45 30       	R0 = P5;
ffa01a12:	ff e3 a5 fe 	CALL 0xffa0175c <_pack4chars>;
ffa01a16:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_NetSubnetMask> */
ffa01a1a:	0a e1 28 0c 	P2.L = 0xc28;		/* (3112)	P2=0xff900c28 <_NetDHCPserv> */
ffa01a1e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01a22:	10 93 00 00 
ffa01a26:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90012c(-7339732) */
ffa01a2a:	00 e1 40 01 	R0.L = 0x140;		/* (320)	R0=0xff900140(-7339712) */
ffa01a2e:	ff e3 7b fb 	CALL 0xffa01124 <_printf_ip>;
ffa01a32:	7f 43       	R7 = R7.B (Z);
ffa01a34:	90 2f       	JUMP.S 0xffa01954 <_DHCP_parse+0x58>;
ffa01a36:	45 30       	R0 = P5;
ffa01a38:	ff e3 92 fe 	CALL 0xffa0175c <_pack4chars>;
ffa01a3c:	ff e3 7c fe 	CALL 0xffa01734 <_htonl>;
ffa01a40:	08 30       	R1 = R0;
ffa01a42:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900140(-7339712) */
ffa01a46:	00 e1 54 01 	R0.L = 0x154;		/* (340)	R0=0xff900154(-7339692) */
ffa01a4a:	ff e3 cb fa 	CALL 0xffa00fe0 <_printf_int>;
ffa01a4e:	7f 43       	R7 = R7.B (Z);
ffa01a50:	82 2f       	JUMP.S 0xffa01954 <_DHCP_parse+0x58>;
ffa01a52:	45 30       	R0 = P5;
ffa01a54:	ff e3 84 fe 	CALL 0xffa0175c <_pack4chars>;
ffa01a58:	ff e3 6e fe 	CALL 0xffa01734 <_htonl>;
ffa01a5c:	08 30       	R1 = R0;
ffa01a5e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900154(-7339692) */
ffa01a62:	00 e1 68 01 	R0.L = 0x168;		/* (360)	R0=0xff900168(-7339672) */
ffa01a66:	ff e3 bd fa 	CALL 0xffa00fe0 <_printf_int>;
ffa01a6a:	7f 43       	R7 = R7.B (Z);
ffa01a6c:	74 2f       	JUMP.S 0xffa01954 <_DHCP_parse+0x58>;
	...

ffa01a70 <_bfin_EMAC_send_nocopy>:
ffa01a70:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c28(-4191192) */
ffa01a74:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01a76:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01a7a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01a7e:	10 97       	W[P2] = R0;
ffa01a80:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01a84:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01a88:	50 95       	R0 = W[P2] (X);
ffa01a8a:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01a8c:	59 10       	IF !CC JUMP 0xffa01b3e <_bfin_EMAC_send_nocopy+0xce>;
ffa01a8e:	00 00       	NOP;
ffa01a90:	00 00       	NOP;
ffa01a92:	00 00       	NOP;
ffa01a94:	50 95       	R0 = W[P2] (X);
ffa01a96:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01a98:	16 18       	IF CC JUMP 0xffa01ac4 <_bfin_EMAC_send_nocopy+0x54>;
ffa01a9a:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0008 */
ffa01a9e:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01aa2:	b2 e0 09 10 	LSETUP(0xffa01aa6 <_bfin_EMAC_send_nocopy+0x36>, 0xffa01ab4 <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa01aa6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01aaa:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01aae:	50 95       	R0 = W[P2] (X);
ffa01ab0:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01ab2:	09 18       	IF CC JUMP 0xffa01ac4 <_bfin_EMAC_send_nocopy+0x54>;
ffa01ab4:	00 00       	NOP;
ffa01ab6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa01aba:	00 e1 b4 01 	R0.L = 0x1b4;		/* (436)	R0=0xff9001b4(-7339596) */
ffa01abe:	ff e3 cf f9 	CALL 0xffa00e5c <_printf_str>;
ffa01ac2:	30 20       	JUMP.S 0xffa01b22 <_bfin_EMAC_send_nocopy+0xb2>;
ffa01ac4:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa01ac8:	08 e1 2c 0c 	P0.L = 0xc2c;		/* (3116)	P0=0xff900c2c <_txIdx> */
ffa01acc:	00 95       	R0 = W[P0] (Z);
ffa01ace:	10 32       	P2 = R0;
ffa01ad0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01ad4:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa01ad8:	42 95       	R2 = W[P0] (X);
ffa01ada:	d1 42       	R1 = R2.L (Z);
ffa01adc:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01ade:	52 91       	P2 = [P2];
ffa01ae0:	11 0d       	CC = R1 <= 0x2;
ffa01ae2:	90 a1       	R0 = [P2 + 0x18];
ffa01ae4:	50 b0       	[P2 + 0x4] = R0;
ffa01ae6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ae8:	90 b2       	[P2 + 0x28] = R0;
ffa01aea:	11 32       	P2 = R1;
ffa01aec:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa01aee:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01af2:	08 91       	R0 = [P1];
ffa01af4:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01af8:	10 93       	[P2] = R0;
ffa01afa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01afe:	0a e1 9a 04 	P2.L = 0x49a;		/* (1178)	P2=0xff90049a <_txdmacfg> */
ffa01b02:	50 95       	R0 = W[P2] (X);
ffa01b04:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0049a(-4193126) */
ffa01b08:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01b0c:	10 97       	W[P2] = R0;
ffa01b0e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01b12:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01b16:	10 91       	R0 = [P2];
ffa01b18:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01b1a:	10 93       	[P2] = R0;
ffa01b1c:	0d 1c       	IF CC JUMP 0xffa01b36 <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa01b1e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b20:	00 97       	W[P0] = R0;
ffa01b22:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01b26:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01b28:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01b2c:	10 97       	W[P2] = R0;
ffa01b2e:	01 e8 00 00 	UNLINK;
ffa01b32:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b34:	10 00       	RTS;
ffa01b36:	02 30       	R0 = R2;
ffa01b38:	08 64       	R0 += 0x1;		/* (  1) */
ffa01b3a:	00 97       	W[P0] = R0;
ffa01b3c:	f3 2f       	JUMP.S 0xffa01b22 <_bfin_EMAC_send_nocopy+0xb2>;
ffa01b3e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01b42:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa01b46:	ff e3 8b f9 	CALL 0xffa00e5c <_printf_str>;
ffa01b4a:	ec 2f       	JUMP.S 0xffa01b22 <_bfin_EMAC_send_nocopy+0xb2>;

ffa01b4c <_DHCP_tx>:
ffa01b4c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa01b4e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa01b52:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01b56:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa01b5a:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa01b5e:	10 95 00 00 
ffa01b62:	10 32       	P2 = R0;
ffa01b64:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c30 <_txbuf> */
ffa01b68:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa01b6c:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa01b70:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01b72:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01b74:	52 91       	P2 = [P2];
ffa01b76:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa01b7a:	f1 bb 00 00 
ffa01b7e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90000b */
ffa01b82:	0d e1 54 0c 	P5.L = 0xc54;		/* (3156)	P5=0xff900c54 <_NetOurMAC> */
ffa01b86:	94 ad       	P4 = [P2 + 0x18];
ffa01b88:	1a 32       	P3 = R2;
ffa01b8a:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01b8c:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01b8e:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa01b92:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa01b96:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa01b9a:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa01b9e:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa01ba2:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa01ba6:	20 97       	W[P4] = R0;
ffa01ba8:	68 99       	R0 = B[P5] (X);
ffa01baa:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa01bae:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01bb2:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa01bb6:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01bba:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa01bbe:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01bc2:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa01bc6:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01bca:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa01bce:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01bd2:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa01bd6:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01bda:	ff e3 a1 fd 	CALL 0xffa0171c <_htons>;
ffa01bde:	e0 b5       	W[P4 + 0xe] = R0;
ffa01be0:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01be4:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa01be8:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa01bec:	04 50       	R0 = R4 + R0;
ffa01bee:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa01bf2:	c0 42       	R0 = R0.L (Z);
ffa01bf4:	ff e3 94 fd 	CALL 0xffa0171c <_htons>;
ffa01bf8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa01bfc:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa01c00:	60 b6       	W[P4 + 0x12] = R0;
ffa01c02:	10 95       	R0 = W[P2] (Z);
ffa01c04:	08 30       	R1 = R0;
ffa01c06:	09 64       	R1 += 0x1;		/* (  1) */
ffa01c08:	11 97       	W[P2] = R1;
ffa01c0a:	ff e3 89 fd 	CALL 0xffa0171c <_htons>;
ffa01c0e:	a0 b6       	W[P4 + 0x14] = R0;
ffa01c10:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01c14:	ff e3 84 fd 	CALL 0xffa0171c <_htons>;
ffa01c18:	e0 b6       	W[P4 + 0x16] = R0;
ffa01c1a:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01c1c:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa01c20:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa01c24:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa01c28:	66 b7 00 00 
ffa01c2c:	44 30       	R0 = P4;
ffa01c2e:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01c30:	e7 b1       	[P4 + 0x1c] = R7;
ffa01c32:	23 be       	[P4 + 0x20] = P3;
ffa01c34:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01c36:	ff e3 5b fd 	CALL 0xffa016ec <_NetCksum>;
ffa01c3a:	c0 43       	R0 =~ R0;
ffa01c3c:	60 b7       	W[P4 + 0x1a] = R0;
ffa01c3e:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa01c42:	ff e3 6d fd 	CALL 0xffa0171c <_htons>;
ffa01c46:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa01c4a:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa01c4e:	ff e3 67 fd 	CALL 0xffa0171c <_htons>;
ffa01c52:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa01c56:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa01c5a:	04 50       	R0 = R4 + R0;
ffa01c5c:	c0 42       	R0 = R0.L (Z);
ffa01c5e:	ff e3 5f fd 	CALL 0xffa0171c <_htons>;
ffa01c62:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa01c66:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01c68:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa01c6c:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa01c70:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c2e(-4191186) */
ffa01c74:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01c76:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa01c7a:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa01c7e:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa01c82:	10 91       	R0 = [P2];
ffa01c84:	20 b3       	[P4 + 0x30] = R0;
ffa01c86:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa01c8a:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa01c8e:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa01c92:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa01c96:	a7 b3       	[P4 + 0x38] = R7;
ffa01c98:	e7 b3       	[P4 + 0x3c] = R7;
ffa01c9a:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa01c9e:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa01ca2:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa01ca6:	ff e3 47 fd 	CALL 0xffa01734 <_htonl>;
ffa01caa:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa01cae:	68 99       	R0 = B[P5] (X);
ffa01cb0:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa01cb4:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01cb8:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa01cbc:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01cc0:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa01cc4:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01cc8:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa01ccc:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01cd0:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa01cd4:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01cd8:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa01cdc:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa01ce0:	54 5a       	P1 = P4 + P2;
ffa01ce2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ce4:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa01ce6:	b2 e0 02 20 	LSETUP(0xffa01cea <_DHCP_tx+0x19e>, 0xffa01cea <_DHCP_tx+0x19e>) LC1 = P2;
ffa01cea:	08 9a       	B[P1++] = R0;
ffa01cec:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa01cf0:	54 5a       	P1 = P4 + P2;
ffa01cf2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01cf4:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa01cf6:	b2 e0 02 20 	LSETUP(0xffa01cfa <_DHCP_tx+0x1ae>, 0xffa01cfa <_DHCP_tx+0x1ae>) LC1 = P2;
ffa01cfa:	08 92       	[P1++] = R0;
ffa01cfc:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa01d00:	54 5a       	P1 = P4 + P2;
ffa01d02:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01d04:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa01d06:	b2 e0 02 20 	LSETUP(0xffa01d0a <_DHCP_tx+0x1be>, 0xffa01d0a <_DHCP_tx+0x1be>) LC1 = P2;
ffa01d0a:	08 92       	[P1++] = R0;
ffa01d0c:	44 30       	R0 = P4;
ffa01d0e:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa01d12:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa01d16:	f0 b9 00 00 
ffa01d1a:	14 30       	R2 = R4;
ffa01d1c:	ff e3 48 fa 	CALL 0xffa011ac <_memcpy_>;
ffa01d20:	01 e8 00 00 	UNLINK;
ffa01d24:	a3 05       	(R7:4, P5:3) = [SP++];
ffa01d26:	ff e2 a5 fe 	JUMP.L 0xffa01a70 <_bfin_EMAC_send_nocopy>;
	...

ffa01d2c <_bfin_EMAC_send>:
ffa01d2c:	c4 04       	[--SP] = (P5:4);
ffa01d2e:	01 0d       	CC = R1 <= 0x0;
ffa01d30:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01d34:	18 30       	R3 = R0;
ffa01d36:	11 30       	R2 = R1;
ffa01d38:	90 18       	IF CC JUMP 0xffa01e58 <_bfin_EMAC_send+0x12c>;
ffa01d3a:	00 00       	NOP;
ffa01d3c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00020(-4194272) */
ffa01d40:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01d44:	50 95       	R0 = W[P2] (X);
ffa01d46:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01d48:	74 10       	IF !CC JUMP 0xffa01e30 <_bfin_EMAC_send+0x104>;
ffa01d4a:	00 00       	NOP;
ffa01d4c:	00 00       	NOP;
ffa01d4e:	00 00       	NOP;
ffa01d50:	50 95       	R0 = W[P2] (X);
ffa01d52:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01d54:	17 18       	IF CC JUMP 0xffa01d82 <_bfin_EMAC_send+0x56>;
ffa01d56:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0c30 */
ffa01d5a:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01d5e:	b2 e0 09 10 	LSETUP(0xffa01d62 <_bfin_EMAC_send+0x36>, 0xffa01d70 <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa01d62:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01d66:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01d6a:	50 95       	R0 = W[P2] (X);
ffa01d6c:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01d6e:	0a 18       	IF CC JUMP 0xffa01d82 <_bfin_EMAC_send+0x56>;
ffa01d70:	00 00       	NOP;
ffa01d72:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01d76:	00 e1 e8 01 	R0.L = 0x1e8;		/* (488)	R0=0xff9001e8(-7339544) */
ffa01d7a:	ff e3 71 f8 	CALL 0xffa00e5c <_printf_str>;
ffa01d7e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01d80:	53 20       	JUMP.S 0xffa01e26 <_bfin_EMAC_send+0xfa>;
ffa01d82:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900000 <_l1_data_a> */
ffa01d86:	0c e1 2c 0c 	P4.L = 0xc2c;		/* (3116)	P4=0xff900c2c <_txIdx> */
ffa01d8a:	20 95       	R0 = W[P4] (Z);
ffa01d8c:	10 32       	P2 = R0;
ffa01d8e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c54 <_NetOurMAC> */
ffa01d92:	0d e1 30 0c 	P5.L = 0xc30;		/* (3120)	P5=0xff900c30 <_txbuf> */
ffa01d96:	0b 30       	R1 = R3;
ffa01d98:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01d9a:	52 91       	P2 = [P2];
ffa01d9c:	92 ad       	P2 = [P2 + 0x18];
ffa01d9e:	12 96       	W[P2++] = R2;
ffa01da0:	42 30       	R0 = P2;
ffa01da2:	ff e3 05 fa 	CALL 0xffa011ac <_memcpy_>;
ffa01da6:	20 95       	R0 = W[P4] (Z);
ffa01da8:	10 32       	P2 = R0;
ffa01daa:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01dac:	51 91       	P1 = [P2];
ffa01dae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01db2:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01db6:	51 93       	[P2] = P1;
ffa01db8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01dbc:	88 a1       	R0 = [P1 + 0x18];
ffa01dbe:	0a e1 9a 04 	P2.L = 0x49a;		/* (1178)	P2=0xff90049a <_txdmacfg> */
ffa01dc2:	48 b0       	[P1 + 0x4] = R0;
ffa01dc4:	50 95       	R0 = W[P2] (X);
ffa01dc6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0049a(-4193126) */
ffa01dca:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01dce:	10 97       	W[P2] = R0;
ffa01dd0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01dd4:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01dd8:	10 91       	R0 = [P2];
ffa01dda:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01ddc:	10 93       	[P2] = R0;
ffa01dde:	88 a2       	R0 = [P1 + 0x28];
ffa01de0:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01de2:	13 10       	IF !CC JUMP 0xffa01e08 <_bfin_EMAC_send+0xdc>;
ffa01de4:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa01de8:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa01dec:	b2 e0 05 20 	LSETUP(0xffa01df0 <_bfin_EMAC_send+0xc4>, 0xffa01df6 <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa01df0:	88 a2       	R0 = [P1 + 0x28];
ffa01df2:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01df4:	0a 10       	IF !CC JUMP 0xffa01e08 <_bfin_EMAC_send+0xdc>;
ffa01df6:	00 00       	NOP;
ffa01df8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001e8(-7339544) */
ffa01dfc:	00 e1 00 02 	R0.L = 0x200;		/* (512)	R0=0xff900200(-7339520) */
ffa01e00:	ff e3 2e f8 	CALL 0xffa00e5c <_printf_str>;
ffa01e04:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01e06:	10 20       	JUMP.S 0xffa01e26 <_bfin_EMAC_send+0xfa>;
ffa01e08:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa01e0c:	61 95 00 00 
ffa01e10:	8a a2       	R2 = [P1 + 0x28];
ffa01e12:	88 b2       	[P1 + 0x28] = R0;
ffa01e14:	c8 42       	R0 = R1.L (Z);
ffa01e16:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa01e1a:	10 0d       	CC = R0 <= 0x2;
ffa01e1c:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa01e20:	14 1c       	IF CC JUMP 0xffa01e48 <_bfin_EMAC_send+0x11c> (BP);
ffa01e22:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e24:	10 97       	W[P2] = R0;
ffa01e26:	01 e8 00 00 	UNLINK;
ffa01e2a:	02 30       	R0 = R2;
ffa01e2c:	84 04       	(P5:4) = [SP++];
ffa01e2e:	10 00       	RTS;
ffa01e30:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01e34:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa01e38:	ff e3 12 f8 	CALL 0xffa00e5c <_printf_str>;
ffa01e3c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01e3e:	01 e8 00 00 	UNLINK;
ffa01e42:	02 30       	R0 = R2;
ffa01e44:	84 04       	(P5:4) = [SP++];
ffa01e46:	10 00       	RTS;
ffa01e48:	01 30       	R0 = R1;
ffa01e4a:	08 64       	R0 += 0x1;		/* (  1) */
ffa01e4c:	10 97       	W[P2] = R0;
ffa01e4e:	01 e8 00 00 	UNLINK;
ffa01e52:	02 30       	R0 = R2;
ffa01e54:	84 04       	(P5:4) = [SP++];
ffa01e56:	10 00       	RTS;
ffa01e58:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90019c(-7339620) */
ffa01e5c:	00 e1 cc 01 	R0.L = 0x1cc;		/* (460)	R0=0xff9001cc(-7339572) */
ffa01e60:	ff e3 c0 f8 	CALL 0xffa00fe0 <_printf_int>;
ffa01e64:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01e66:	01 e8 00 00 	UNLINK;
ffa01e6a:	02 30       	R0 = R2;
ffa01e6c:	84 04       	(P5:4) = [SP++];
ffa01e6e:	10 00       	RTS;

ffa01e70 <_ether_testUDP>:
ffa01e70:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01e72:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa01e76:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01e7a:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa01e7e:	11 95       	R1 = W[P2] (Z);
ffa01e80:	11 32       	P2 = R1;
ffa01e82:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01e86:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa01e8a:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa01e8e:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01e90:	52 91       	P2 = [P2];
ffa01e92:	95 ad       	P5 = [P2 + 0x18];
ffa01e94:	55 32       	P2 = P5;
ffa01e96:	11 96       	W[P2++] = R1;
ffa01e98:	4a 30       	R1 = P2;
ffa01e9a:	00 e3 39 08 	CALL 0xffa02f0c <_ARP_req>;
ffa01e9e:	00 0c       	CC = R0 == 0x0;
ffa01ea0:	7f 18       	IF CC JUMP 0xffa01f9e <_ether_testUDP+0x12e>;
ffa01ea2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa01ea6:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_NetOurMAC> */
ffa01eaa:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01eac:	50 99       	R0 = B[P2] (X);
ffa01eae:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01eb2:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa01eb6:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01eba:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa01ebe:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa01ec2:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa01ec6:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa01eca:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa01ece:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01ed2:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa01ed6:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa01eda:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01ede:	ff e3 1f fc 	CALL 0xffa0171c <_htons>;
ffa01ee2:	e8 b5       	W[P5 + 0xe] = R0;
ffa01ee4:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01ee8:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa01eec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01eee:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa01ef2:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa01ef4:	ff e3 14 fc 	CALL 0xffa0171c <_htons>;
ffa01ef8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_NetOurMAC> */
ffa01efc:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa01f00:	68 b6       	W[P5 + 0x12] = R0;
ffa01f02:	10 95       	R0 = W[P2] (Z);
ffa01f04:	08 30       	R1 = R0;
ffa01f06:	09 64       	R1 += 0x1;		/* (  1) */
ffa01f08:	11 97       	W[P2] = R1;
ffa01f0a:	ff e3 09 fc 	CALL 0xffa0171c <_htons>;
ffa01f0e:	a8 b6       	W[P5 + 0x14] = R0;
ffa01f10:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01f14:	ff e3 04 fc 	CALL 0xffa0171c <_htons>;
ffa01f18:	e8 b6       	W[P5 + 0x16] = R0;
ffa01f1a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01f1c:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa01f20:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2e <_NetIPID> */
ffa01f24:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01f26:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa01f2a:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa01f2e:	10 91       	R0 = [P2];
ffa01f30:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa01f34:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa01f38:	e8 b1       	[P5 + 0x1c] = R0;
ffa01f3a:	10 91       	R0 = [P2];
ffa01f3c:	28 b2       	[P5 + 0x20] = R0;
ffa01f3e:	45 30       	R0 = P5;
ffa01f40:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01f42:	6f b7       	W[P5 + 0x1a] = R7;
ffa01f44:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01f46:	ff e3 d3 fb 	CALL 0xffa016ec <_NetCksum>;
ffa01f4a:	c0 43       	R0 =~ R0;
ffa01f4c:	68 b7       	W[P5 + 0x1a] = R0;
ffa01f4e:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa01f52:	ff e3 e5 fb 	CALL 0xffa0171c <_htons>;
ffa01f56:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa01f5a:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa01f5e:	ff e3 df fb 	CALL 0xffa0171c <_htons>;
ffa01f62:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa01f66:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa01f68:	ff e3 da fb 	CALL 0xffa0171c <_htons>;
ffa01f6c:	55 32       	P2 = P5;
ffa01f6e:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa01f72:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa01f76:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa01f78:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01f7a:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa01f7c:	b2 e0 03 10 	LSETUP(0xffa01f80 <_ether_testUDP+0x110>, 0xffa01f82 <_ether_testUDP+0x112>) LC1 = P1;
ffa01f80:	11 9a       	B[P2++] = R1;
ffa01f82:	09 64       	R1 += 0x1;		/* (  1) */
ffa01f84:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa01f88:	00 e1 14 02 	R0.L = 0x214;		/* (532)	R0=0xff900214(-7339500) */
ffa01f8c:	ff e3 68 f7 	CALL 0xffa00e5c <_printf_str>;
ffa01f90:	ff e3 70 fd 	CALL 0xffa01a70 <_bfin_EMAC_send_nocopy>;
ffa01f94:	01 e8 00 00 	UNLINK;
ffa01f98:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01f9a:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01f9c:	10 00       	RTS;
ffa01f9e:	01 e8 00 00 	UNLINK;
ffa01fa2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01fa4:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01fa6:	10 00       	RTS;

ffa01fa8 <_eth_header_setup>:
ffa01fa8:	c4 04       	[--SP] = (P5:4);
ffa01faa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa01fae:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01fb2:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa01fb6:	00 32       	P0 = R0;
ffa01fb8:	10 95       	R0 = W[P2] (Z);
ffa01fba:	10 32       	P2 = R0;
ffa01fbc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa01fc0:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa01fc4:	00 91       	R0 = [P0];
ffa01fc6:	21 32       	P4 = R1;
ffa01fc8:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01fca:	52 91       	P2 = [P2];
ffa01fcc:	08 30       	R1 = R0;
ffa01fce:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa01fd0:	80 67       	R0 += -0x10;		/* (-16) */
ffa01fd2:	95 ad       	P5 = [P2 + 0x18];
ffa01fd4:	00 93       	[P0] = R0;
ffa01fd6:	02 30       	R0 = R2;
ffa01fd8:	55 32       	P2 = P5;
ffa01fda:	11 96       	W[P2++] = R1;
ffa01fdc:	4a 30       	R1 = P2;
ffa01fde:	00 e3 97 07 	CALL 0xffa02f0c <_ARP_req>;
ffa01fe2:	00 0c       	CC = R0 == 0x0;
ffa01fe4:	2b 18       	IF CC JUMP 0xffa0203a <_eth_header_setup+0x92>;
ffa01fe6:	00 00       	NOP;
ffa01fe8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa01fec:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_NetOurMAC> */
ffa01ff0:	50 99       	R0 = B[P2] (X);
ffa01ff2:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01ff6:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa01ffa:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01ffe:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02002:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa02006:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa0200a:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa0200e:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa02012:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa02016:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa0201a:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa0201e:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02022:	ff e3 7d fb 	CALL 0xffa0171c <_htons>;
ffa02026:	e8 b5       	W[P5 + 0xe] = R0;
ffa02028:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0202a:	20 9b       	B[P4] = R0;
ffa0202c:	4d 30       	R1 = P5;
ffa0202e:	81 64       	R1 += 0x10;		/* ( 16) */
ffa02030:	01 e8 00 00 	UNLINK;
ffa02034:	01 30       	R0 = R1;
ffa02036:	84 04       	(P5:4) = [SP++];
ffa02038:	10 00       	RTS;
ffa0203a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0203c:	20 9b       	B[P4] = R0;
ffa0203e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02040:	01 e8 00 00 	UNLINK;
ffa02044:	01 30       	R0 = R1;
ffa02046:	84 04       	(P5:4) = [SP++];
ffa02048:	10 00       	RTS;
	...

ffa0204c <_icmp_packet_setup>:
ffa0204c:	e4 05       	[--SP] = (R7:4, P5:4);
ffa0204e:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02052:	29 32       	P5 = R1;
ffa02054:	7f 30       	R7 = FP;
ffa02056:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02058:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0205a:	f0 bb       	[FP -0x4] = R0;
ffa0205c:	07 30       	R0 = R7;
ffa0205e:	22 32       	P4 = R2;
ffa02060:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa02064:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa02068:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa0206c:	ff e3 9e ff 	CALL 0xffa01fa8 <_eth_header_setup>;
ffa02070:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa02074:	68 99 00 00 
ffa02078:	80 0c       	CC = R0 < 0x0;
ffa0207a:	14 18       	IF CC JUMP 0xffa020a2 <_icmp_packet_setup+0x56>;
ffa0207c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0207e:	f0 b0       	[SP + 0xc] = R0;
ffa02080:	54 30       	R2 = P4;
ffa02082:	01 30       	R0 = R1;
ffa02084:	0f 30       	R1 = R7;
ffa02086:	ff e3 7f fb 	CALL 0xffa01784 <_ip_header_setup>;
ffa0208a:	e9 42       	R1 = R5.L (Z);
ffa0208c:	f1 b0       	[SP + 0xc] = R1;
ffa0208e:	e1 42       	R1 = R4.L (Z);
ffa02090:	31 b1       	[SP + 0x10] = R1;
ffa02092:	72 43       	R2 = R6.B (Z);
ffa02094:	0f 30       	R1 = R7;
ffa02096:	ff e3 c1 fb 	CALL 0xffa01818 <_icmp_header_setup>;
ffa0209a:	01 e8 00 00 	UNLINK;
ffa0209e:	a4 05       	(R7:4, P5:4) = [SP++];
ffa020a0:	10 00       	RTS;
ffa020a2:	01 e8 00 00 	UNLINK;
ffa020a6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa020a8:	a4 05       	(R7:4, P5:4) = [SP++];
ffa020aa:	10 00       	RTS;

ffa020ac <_icmp_rx>:
ffa020ac:	fd 05       	[--SP] = (R7:7, P5:5);
ffa020ae:	28 32       	P5 = R0;
ffa020b0:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa020b4:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa020b8:	39 30       	R7 = R1;
ffa020ba:	ff e3 31 fb 	CALL 0xffa0171c <_htons>;
ffa020be:	c0 42       	R0 = R0.L (Z);
ffa020c0:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa020c2:	01 08       	CC = R1 == R0;
ffa020c4:	06 18       	IF CC JUMP 0xffa020d0 <_icmp_rx+0x24>;
ffa020c6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa020c8:	01 e8 00 00 	UNLINK;
ffa020cc:	bd 05       	(R7:7, P5:5) = [SP++];
ffa020ce:	10 00       	RTS;
ffa020d0:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa020d2:	07 0a       	CC = R7 <= R0 (IU);
ffa020d4:	f9 1b       	IF CC JUMP 0xffa020c6 <_icmp_rx+0x1a>;
ffa020d6:	00 00       	NOP;
ffa020d8:	00 00       	NOP;
ffa020da:	00 00       	NOP;
ffa020dc:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa020e0:	08 0c       	CC = R0 == 0x1;
ffa020e2:	f2 17       	IF !CC JUMP 0xffa020c6 <_icmp_rx+0x1a> (BP);
ffa020e4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_NetOurMAC> */
ffa020e8:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa020ec:	28 a2       	R0 = [P5 + 0x20];
ffa020ee:	11 91       	R1 = [P2];
ffa020f0:	08 08       	CC = R0 == R1;
ffa020f2:	ea 17       	IF !CC JUMP 0xffa020c6 <_icmp_rx+0x1a> (BP);
ffa020f4:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa020f8:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa020fc:	08 08       	CC = R0 == R1;
ffa020fe:	3e 18       	IF CC JUMP 0xffa0217a <_icmp_rx+0xce>;
ffa02100:	00 00       	NOP;
ffa02102:	00 00       	NOP;
ffa02104:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa02106:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa0210a:	08 08       	CC = R0 == R1;
ffa0210c:	dd 17       	IF !CC JUMP 0xffa020c6 <_icmp_rx+0x1a> (BP);
ffa0210e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa02112:	e9 a1       	R1 = [P5 + 0x1c];
ffa02114:	00 e1 2c 02 	R0.L = 0x22c;		/* (556)	R0=0xff90022c(-7339476) */
ffa02118:	ff e3 06 f8 	CALL 0xffa01124 <_printf_ip>;
ffa0211c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa02120:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa02124:	e8 a1       	R0 = [P5 + 0x1c];
ffa02126:	4d 30       	R1 = P5;
ffa02128:	10 93       	[P2] = R0;
ffa0212a:	41 64       	R1 += 0x8;		/* (  8) */
ffa0212c:	00 e3 f2 04 	CALL 0xffa02b10 <_ARP_lut_add>;
ffa02130:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90022c(-7339476) */
ffa02134:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02138:	ff e3 92 f6 	CALL 0xffa00e5c <_printf_str>;
ffa0213c:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa02140:	ea a1 00 00 
ffa02144:	f0 b0       	[SP + 0xc] = R0;
ffa02146:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa0214a:	30 b1       	[SP + 0x10] = R0;
ffa0214c:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa0214e:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa02152:	4f 30       	R1 = FP;
ffa02154:	70 b1       	[SP + 0x14] = R0;
ffa02156:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa02158:	07 30       	R0 = R7;
ffa0215a:	ff e3 79 ff 	CALL 0xffa0204c <_icmp_packet_setup>;
ffa0215e:	08 30       	R1 = R0;
ffa02160:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa02164:	00 0d       	CC = R0 <= 0x0;
ffa02166:	b0 1b       	IF CC JUMP 0xffa020c6 <_icmp_rx+0x1a>;
ffa02168:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa0216a:	45 30       	R0 = P5;
ffa0216c:	17 30       	R2 = R7;
ffa0216e:	ff e3 1f f8 	CALL 0xffa011ac <_memcpy_>;
ffa02172:	ff e3 7f fc 	CALL 0xffa01a70 <_bfin_EMAC_send_nocopy>;
ffa02176:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02178:	a8 2f       	JUMP.S 0xffa020c8 <_icmp_rx+0x1c>;
ffa0217a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa0217e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02180:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa02184:	10 9b       	B[P2] = R0;
ffa02186:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02188:	a0 2f       	JUMP.S 0xffa020c8 <_icmp_rx+0x1c>;
	...

ffa0218c <_udp_packet_setup>:
ffa0218c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0218e:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02192:	29 32       	P5 = R1;
ffa02194:	7f 30       	R7 = FP;
ffa02196:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c2c <_txIdx> */
ffa0219a:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa0219c:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0219e:	0c e1 64 0c 	P4.L = 0xc64;		/* (3172)	P4=0xff900c64 <_NetDataDestIP> */
ffa021a2:	f0 bb       	[FP -0x4] = R0;
ffa021a4:	22 91       	R2 = [P4];
ffa021a6:	07 30       	R0 = R7;
ffa021a8:	ff e3 00 ff 	CALL 0xffa01fa8 <_eth_header_setup>;
ffa021ac:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa021b0:	68 99 00 00 
ffa021b4:	80 0c       	CC = R0 < 0x0;
ffa021b6:	14 18       	IF CC JUMP 0xffa021de <_udp_packet_setup+0x52>;
ffa021b8:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa021ba:	f0 b0       	[SP + 0xc] = R0;
ffa021bc:	01 30       	R0 = R1;
ffa021be:	22 91       	R2 = [P4];
ffa021c0:	0f 30       	R1 = R7;
ffa021c2:	ff e3 e1 fa 	CALL 0xffa01784 <_ip_header_setup>;
ffa021c6:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa021ca:	f1 b0       	[SP + 0xc] = R1;
ffa021cc:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa021d0:	0f 30       	R1 = R7;
ffa021d2:	ff e3 47 fb 	CALL 0xffa01860 <_udp_header_setup>;
ffa021d6:	01 e8 00 00 	UNLINK;
ffa021da:	bc 05       	(R7:7, P5:4) = [SP++];
ffa021dc:	10 00       	RTS;
ffa021de:	01 e8 00 00 	UNLINK;
ffa021e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa021e4:	bc 05       	(R7:7, P5:4) = [SP++];
ffa021e6:	10 00       	RTS;

ffa021e8 <_SetupTxBuffer>:
ffa021e8:	fd 05       	[--SP] = (R7:7, P5:5);
ffa021ea:	38 30       	R7 = R0;
ffa021ec:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa021f0:	c7 40       	R7 *= R0;
ffa021f2:	17 32       	P2 = R7;
ffa021f4:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800c30 */
ffa021f8:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa021fc:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02200:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa02204:	6a 5b       	P5 = P2 + P5;
ffa02206:	c7 51       	R7 = R7 + R0;
ffa02208:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0220c:	45 30       	R0 = P5;
ffa0220e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02210:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa02212:	ff e3 dd f7 	CALL 0xffa011cc <_memset_>;
ffa02216:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa0221a:	af b1 00 00 
ffa0221e:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa02222:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02226:	ff e3 d3 f7 	CALL 0xffa011cc <_memset_>;
ffa0222a:	45 30       	R0 = P5;
ffa0222c:	60 64       	R0 += 0xc;		/* ( 12) */
ffa0222e:	28 93       	[P5] = R0;
ffa02230:	a8 a1       	R0 = [P5 + 0x18];
ffa02232:	68 b0       	[P5 + 0x4] = R0;
ffa02234:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa02238:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0223a:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa0223c:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa0223e:	10 54       	R0 = R0 & R2;
ffa02240:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02242:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02246:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa02248:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa0224c:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0224e:	18 54       	R0 = R0 & R3;
ffa02250:	08 56       	R0 = R0 | R1;
ffa02252:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa02256:	08 56       	R0 = R0 | R1;
ffa02258:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0225c:	45 30       	R0 = P5;
ffa0225e:	40 65       	R0 += 0x28;		/* ( 40) */
ffa02260:	28 b1       	[P5 + 0x10] = R0;
ffa02262:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa02266:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02268:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0226a:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa0226e:	10 54       	R0 = R0 & R2;
ffa02270:	08 56       	R0 = R0 | R1;
ffa02272:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa02276:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa0227a:	18 54       	R0 = R0 & R3;
ffa0227c:	39 64       	R1 += 0x7;		/* (  7) */
ffa0227e:	08 54       	R0 = R0 & R1;
ffa02280:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02284:	ed bc       	[P5 + 0xc] = P5;
ffa02286:	01 e8 00 00 	UNLINK;
ffa0228a:	45 30       	R0 = P5;
ffa0228c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0228e:	10 00       	RTS;

ffa02290 <_SetupRxBuffer>:
ffa02290:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02292:	38 30       	R7 = R0;
ffa02294:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02298:	c7 40       	R7 *= R0;
ffa0229a:	17 32       	P2 = R7;
ffa0229c:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa022a0:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa022a4:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa022a8:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa022ac:	6a 5b       	P5 = P2 + P5;
ffa022ae:	c7 51       	R7 = R7 + R0;
ffa022b0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa022b4:	45 30       	R0 = P5;
ffa022b6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa022b8:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa022ba:	ff e3 89 f7 	CALL 0xffa011cc <_memset_>;
ffa022be:	af b1       	[P5 + 0x18] = R7;
ffa022c0:	07 30       	R0 = R7;
ffa022c2:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa022c6:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa022ca:	ff e3 81 f7 	CALL 0xffa011cc <_memset_>;
ffa022ce:	45 30       	R0 = P5;
ffa022d0:	60 64       	R0 += 0xc;		/* ( 12) */
ffa022d2:	28 93       	[P5] = R0;
ffa022d4:	a8 a1       	R0 = [P5 + 0x18];
ffa022d6:	68 b0       	[P5 + 0x4] = R0;
ffa022d8:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa022dc:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa022de:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa022e0:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa022e2:	08 54       	R0 = R0 & R1;
ffa022e4:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa022e6:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa022ea:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa022ec:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa022f0:	38 54       	R0 = R0 & R7;
ffa022f2:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa022f4:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa022f8:	18 56       	R0 = R0 | R3;
ffa022fa:	10 56       	R0 = R0 | R2;
ffa022fc:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02300:	45 30       	R0 = P5;
ffa02302:	20 65       	R0 += 0x24;		/* ( 36) */
ffa02304:	28 b1       	[P5 + 0x10] = R0;
ffa02306:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa0230a:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0230c:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0230e:	08 54       	R0 = R0 & R1;
ffa02310:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa02314:	08 56       	R0 = R0 | R1;
ffa02316:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa0231a:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa0231e:	38 54       	R0 = R0 & R7;
ffa02320:	18 56       	R0 = R0 | R3;
ffa02322:	10 56       	R0 = R0 | R2;
ffa02324:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02328:	ed bc       	[P5 + 0xc] = P5;
ffa0232a:	01 e8 00 00 	UNLINK;
ffa0232e:	45 30       	R0 = P5;
ffa02330:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02332:	10 00       	RTS;

ffa02334 <_SetupSystemRegs>:
ffa02334:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02336:	28 32       	P5 = R0;
ffa02338:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa0233c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02340:	00 e1 48 02 	R0.L = 0x248;		/* (584)	R0=0xff900248(-7339448) */
ffa02344:	ff e3 8c f5 	CALL 0xffa00e5c <_printf_str>;
ffa02348:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bb8(-4191304) */
ffa0234c:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa02350:	50 95       	R0 = W[P2] (X);
ffa02352:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa02356:	08 54       	R0 = R0 & R1;
ffa02358:	10 97       	W[P2] = R0;
ffa0235a:	50 95       	R0 = W[P2] (X);
ffa0235c:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa0235e:	10 97       	W[P2] = R0;
ffa02360:	82 6f       	P2 += -0x10;		/* (-16) */
ffa02362:	51 95       	R1 = W[P2] (X);
ffa02364:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa02368:	08 56       	R0 = R0 | R1;
ffa0236a:	10 97       	W[P2] = R0;
ffa0236c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0236e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02370:	10 97       	W[P2] = R0;
ffa02372:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa02374:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa02376:	10 97       	W[P2] = R0;
ffa02378:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa0237c:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa02380:	50 95       	R0 = W[P2] (X);
ffa02382:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa02384:	10 97       	W[P2] = R0;
ffa02386:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa0238a:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa0238e:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa02392:	10 93       	[P2] = R0;
ffa02394:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02396:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa0239a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0239c:	ff e3 4c f9 	CALL 0xffa01634 <_WrPHYReg>;
ffa023a0:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa023a4:	ff e3 f2 f8 	CALL 0xffa01588 <_udelay>;
ffa023a8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa023aa:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa023ac:	ff e3 60 f9 	CALL 0xffa0166c <_RdPHYReg>;
ffa023b0:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa023b2:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa023b4:	0e 20       	JUMP.S 0xffa023d0 <_SetupSystemRegs+0x9c>;
ffa023b6:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa023ba:	ff e3 e7 f8 	CALL 0xffa01588 <_udelay>;
ffa023be:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa023c0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa023c2:	ff e3 55 f9 	CALL 0xffa0166c <_RdPHYReg>;
ffa023c6:	0f 64       	R7 += 0x1;		/* (  1) */
ffa023c8:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa023cc:	0f 08       	CC = R7 == R1;
ffa023ce:	35 18       	IF CC JUMP 0xffa02438 <_SetupSystemRegs+0x104>;
ffa023d0:	06 54       	R0 = R6 & R0;
ffa023d2:	00 0c       	CC = R0 == 0x0;
ffa023d4:	f1 1f       	IF CC JUMP 0xffa023b6 <_SetupSystemRegs+0x82> (BP);
ffa023d6:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa023d8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa023da:	ff e3 49 f9 	CALL 0xffa0166c <_RdPHYReg>;
ffa023de:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa023e2:	01 54       	R0 = R1 & R0;
ffa023e4:	00 0c       	CC = R0 == 0x0;
ffa023e6:	27 1c       	IF CC JUMP 0xffa02434 <_SetupSystemRegs+0x100> (BP);
ffa023e8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa023ea:	d0 4f       	R0 <<= 0x1a;
ffa023ec:	28 93       	[P5] = R0;
ffa023ee:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa023f2:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa023f4:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa023f8:	10 93       	[P2] = R0;
ffa023fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa023fe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02400:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa02404:	10 97       	W[P2] = R0;
ffa02406:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa02408:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0240a:	11 97       	W[P2] = R1;
ffa0240c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0240e:	10 97       	W[P2] = R0;
ffa02410:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02412:	10 97       	W[P2] = R0;
ffa02414:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa02418:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa0241c:	10 97       	W[P2] = R0;
ffa0241e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02420:	11 97       	W[P2] = R1;
ffa02422:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02424:	10 97       	W[P2] = R0;
ffa02426:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02428:	10 97       	W[P2] = R0;
ffa0242a:	01 e8 00 00 	UNLINK;
ffa0242e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02430:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02432:	10 00       	RTS;
ffa02434:	28 93       	[P5] = R0;
ffa02436:	dc 2f       	JUMP.S 0xffa023ee <_SetupSystemRegs+0xba>;
ffa02438:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0243c:	00 e1 60 02 	R0.L = 0x260;		/* (608)	R0=0xff900260(-7339424) */
ffa02440:	ff e3 0e f5 	CALL 0xffa00e5c <_printf_str>;
ffa02444:	01 e8 00 00 	UNLINK;
ffa02448:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0244a:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0244c:	10 00       	RTS;
	...

ffa02450 <_SetupMacAddr>:
ffa02450:	10 32       	P2 = R0;
ffa02452:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02454:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02456:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0245a:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa0245e:	10 9b       	B[P2] = R0;
ffa02460:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa02462:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa02466:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa02468:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa0246c:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa0246e:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa02472:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa02476:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa0247a:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0247c:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02480:	10 99       	R0 = B[P2] (Z);
ffa02482:	08 56       	R0 = R0 | R1;
ffa02484:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa02488:	89 4f       	R1 <<= 0x11;
ffa0248a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c30(-4191184) */
ffa0248e:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa02492:	08 56       	R0 = R0 | R1;
ffa02494:	08 93       	[P1] = R0;
ffa02496:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa0249a:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa0249e:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa024a2:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa024a4:	28 93       	[P5] = R0;
ffa024a6:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa024aa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa024ae:	09 91       	R1 = [P1];
ffa024b0:	07 e1 64 0a 	R7.L = 0xa64;		/* (2660)	R7=0xff900a64(-7337372) */
ffa024b4:	00 e1 94 02 	R0.L = 0x294;		/* (660)	R0=0xff900294(-7339372) */
ffa024b8:	ff e3 38 f5 	CALL 0xffa00f28 <_printf_hex>;
ffa024bc:	07 30       	R0 = R7;
ffa024be:	ff e3 cf f4 	CALL 0xffa00e5c <_printf_str>;
ffa024c2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900294(-7339372) */
ffa024c6:	29 91       	R1 = [P5];
ffa024c8:	00 e1 a0 02 	R0.L = 0x2a0;		/* (672)	R0=0xff9002a0(-7339360) */
ffa024cc:	ff e3 2e f5 	CALL 0xffa00f28 <_printf_hex>;
ffa024d0:	01 e8 00 00 	UNLINK;
ffa024d4:	07 30       	R0 = R7;
ffa024d6:	bd 05       	(R7:7, P5:5) = [SP++];
ffa024d8:	ff e2 c2 f4 	JUMP.L 0xffa00e5c <_printf_str>;

ffa024dc <_bfin_EMAC_init>:
ffa024dc:	f3 05       	[--SP] = (R7:6, P5:3);
ffa024de:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002a0(-7339360) */
ffa024e2:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa024e6:	00 e1 ac 02 	R0.L = 0x2ac;		/* (684)	R0=0xff9002ac(-7339348) */
ffa024ea:	ff e3 b9 f4 	CALL 0xffa00e5c <_printf_str>;
ffa024ee:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 */
ffa024f2:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa024f4:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa024f8:	16 97       	W[P2] = R6;
ffa024fa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa024fe:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_rxIdx> */
ffa02502:	16 97       	W[P2] = R6;
ffa02504:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_rxIdx> */
ffa02508:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa0250c:	16 97       	W[P2] = R6;
ffa0250e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2e <_NetIPID> */
ffa02512:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02514:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetSubnetMask> */
ffa02518:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa0251a:	17 93       	[P2] = R7;
ffa0251c:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa02520:	f0 b0       	[SP + 0xc] = R0;
ffa02522:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02524:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02528:	ff e3 50 f8 	CALL 0xffa015c8 <_FormatIPAddress>;
ffa0252c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_NetSubnetMask> */
ffa02530:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa02534:	10 93       	[P2] = R0;
ffa02536:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02538:	f0 b0       	[SP + 0xc] = R0;
ffa0253a:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa0253e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02540:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02544:	ff e3 42 f8 	CALL 0xffa015c8 <_FormatIPAddress>;
ffa02548:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa0254c:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa02550:	10 93       	[P2] = R0;
ffa02552:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02554:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa02556:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa0255a:	f0 b0       	[SP + 0xc] = R0;
ffa0255c:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa02560:	ff e3 34 f8 	CALL 0xffa015c8 <_FormatIPAddress>;
ffa02564:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa02568:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa0256c:	10 93       	[P2] = R0;
ffa0256e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa02572:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa02576:	17 93       	[P2] = R7;
ffa02578:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa0257c:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa02580:	17 93       	[P2] = R7;
ffa02582:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa02586:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa0258a:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa0258e:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa02592:	10 93       	[P2] = R0;
ffa02594:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa02598:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa0259c:	16 97       	W[P2] = R6;
ffa0259e:	00 e3 6b 02 	CALL 0xffa02a74 <_ARP_init>;
ffa025a2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa025a6:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa025aa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa025ae:	17 93       	[P2] = R7;
ffa025b0:	00 e1 54 0c 	R0.L = 0xc54;		/* (3156)	R0=0xff900c54 <_NetOurMAC>(-7336876) */
ffa025b4:	ff e3 4e ff 	CALL 0xffa02450 <_SetupMacAddr>;
ffa025b8:	47 30       	R0 = FP;
ffa025ba:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa025bc:	ff e3 bc fe 	CALL 0xffa02334 <_SetupSystemRegs>;
ffa025c0:	80 0c       	CC = R0 < 0x0;
ffa025c2:	7a 18       	IF CC JUMP 0xffa026b6 <_bfin_EMAC_init+0x1da>;
ffa025c4:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa025c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa025ca:	07 e1 44 0c 	R7.L = 0xc44;		/* (3140)	R7=0xff900c44 <_rxbuf>(-7336892) */
ffa025ce:	ff e3 61 fe 	CALL 0xffa02290 <_SetupRxBuffer>;
ffa025d2:	07 32       	P0 = R7;
ffa025d4:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa025d6:	00 93       	[P0] = R0;
ffa025d8:	17 32       	P2 = R7;
ffa025da:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa025dc:	44 30       	R0 = P4;
ffa025de:	ff e3 59 fe 	CALL 0xffa02290 <_SetupRxBuffer>;
ffa025e2:	44 0c       	CC = P4 == 0x0;
ffa025e4:	08 32       	P1 = R0;
ffa025e6:	28 92       	[P5++] = R0;
ffa025e8:	52 18       	IF CC JUMP 0xffa0268c <_bfin_EMAC_init+0x1b0>;
ffa025ea:	07 32       	P0 = R7;
ffa025ec:	5c 0c       	CC = P4 == 0x3;
ffa025ee:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa025f0:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa025f4:	d0 b0       	[P2 + 0xc] = R0;
ffa025f6:	54 18       	IF CC JUMP 0xffa0269e <_bfin_EMAC_init+0x1c2>;
ffa025f8:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa025fa:	5c 0d       	CC = P4 <= 0x3;
ffa025fc:	ee 1f       	IF CC JUMP 0xffa025d8 <_bfin_EMAC_init+0xfc> (BP);
ffa025fe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02600:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa02604:	ff e3 f2 fd 	CALL 0xffa021e8 <_SetupTxBuffer>;
ffa02608:	0b e1 30 0c 	P3.L = 0xc30;		/* (3120)	P3=0xff900c30 <_txbuf> */
ffa0260c:	18 93       	[P3] = R0;
ffa0260e:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02610:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa02612:	44 30       	R0 = P4;
ffa02614:	ff e3 ea fd 	CALL 0xffa021e8 <_SetupTxBuffer>;
ffa02618:	44 0c       	CC = P4 == 0x0;
ffa0261a:	08 32       	P1 = R0;
ffa0261c:	28 92       	[P5++] = R0;
ffa0261e:	35 18       	IF CC JUMP 0xffa02688 <_bfin_EMAC_init+0x1ac>;
ffa02620:	00 00       	NOP;
ffa02622:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa02624:	5c 0c       	CC = P4 == 0x3;
ffa02626:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa0262a:	d0 b0       	[P2 + 0xc] = R0;
ffa0262c:	32 18       	IF CC JUMP 0xffa02690 <_bfin_EMAC_init+0x1b4>;
ffa0262e:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa02630:	5c 0d       	CC = P4 <= 0x3;
ffa02632:	ef 1f       	IF CC JUMP 0xffa02610 <_bfin_EMAC_init+0x134> (BP);
ffa02634:	17 32       	P2 = R7;
ffa02636:	51 91       	P1 = [P2];
ffa02638:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa0263c:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa02640:	51 93       	[P2] = P1;
ffa02642:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa02644:	42 6c       	P2 += 0x8;		/* (  8) */
ffa02646:	10 97       	W[P2] = R0;
ffa02648:	ff e3 e8 f7 	CALL 0xffa01618 <_PollMdcDone>;
ffa0264c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0264e:	f0 b9       	R0 = [FP -0x4];
ffa02650:	d1 4f       	R1 <<= 0x1a;
ffa02652:	08 08       	CC = R0 == R1;
ffa02654:	2c 18       	IF CC JUMP 0xffa026ac <_bfin_EMAC_init+0x1d0>;
ffa02656:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa0265a:	01 30       	R0 = R1;
ffa0265c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa02660:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02664:	10 93       	[P2] = R0;
ffa02666:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0266a:	00 e1 bc 02 	R0.L = 0x2bc;		/* (700)	R0=0xff9002bc(-7339332) */
ffa0266e:	ff e3 5d f4 	CALL 0xffa00f28 <_printf_hex>;
ffa02672:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002bc(-7339332) */
ffa02676:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa0267a:	ff e3 f1 f3 	CALL 0xffa00e5c <_printf_str>;
ffa0267e:	01 e8 00 00 	UNLINK;
ffa02682:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02684:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02686:	10 00       	RTS;
ffa02688:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa0268a:	c4 2f       	JUMP.S 0xffa02612 <_bfin_EMAC_init+0x136>;
ffa0268c:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa0268e:	a7 2f       	JUMP.S 0xffa025dc <_bfin_EMAC_init+0x100>;
ffa02690:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa02694:	0a e1 30 0c 	P2.L = 0xc30;		/* (3120)	P2=0xff900c30 <_txbuf> */
ffa02698:	10 91       	R0 = [P2];
ffa0269a:	c8 b0       	[P1 + 0xc] = R0;
ffa0269c:	cc 2f       	JUMP.S 0xffa02634 <_bfin_EMAC_init+0x158>;
ffa0269e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c30 <_txbuf> */
ffa026a2:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_rxbuf> */
ffa026a6:	10 91       	R0 = [P2];
ffa026a8:	c8 b0       	[P1 + 0xc] = R0;
ffa026aa:	aa 2f       	JUMP.S 0xffa025fe <_bfin_EMAC_init+0x122>;
ffa026ac:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa026b0:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa026b2:	01 30       	R0 = R1;
ffa026b4:	d4 2f       	JUMP.S 0xffa0265c <_bfin_EMAC_init+0x180>;
ffa026b6:	01 e8 00 00 	UNLINK;
ffa026ba:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa026bc:	b3 05       	(R7:6, P5:3) = [SP++];
ffa026be:	10 00       	RTS;

ffa026c0 <_bfin_EMAC_recv_poll>:
ffa026c0:	e3 05       	[--SP] = (R7:4, P5:3);
ffa026c2:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa026c6:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa026ca:	0d e1 44 0c 	P5.L = 0xc44;		/* (3140)	P5=0xff900c44 <_rxbuf> */
ffa026ce:	0c e1 40 0c 	P4.L = 0xc40;		/* (3136)	P4=0xff900c40 <_rxIdx> */
ffa026d2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa026d6:	28 30       	R5 = R0;
ffa026d8:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa026da:	75 30       	R6 = P5;
ffa026dc:	5c 32       	P3 = P4;
ffa026de:	06 20       	JUMP.S 0xffa026ea <_bfin_EMAC_recv_poll+0x2a>;
ffa026e0:	0f 64       	R7 += 0x1;		/* (  1) */
ffa026e2:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa026e6:	07 08       	CC = R7 == R0;
ffa026e8:	0c 18       	IF CC JUMP 0xffa02700 <_bfin_EMAC_recv_poll+0x40>;
ffa026ea:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa026ee:	ff e3 4d f7 	CALL 0xffa01588 <_udelay>;
ffa026f2:	20 95       	R0 = W[P4] (Z);
ffa026f4:	10 32       	P2 = R0;
ffa026f6:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa026f8:	52 91       	P2 = [P2];
ffa026fa:	90 a2       	R0 = [P2 + 0x28];
ffa026fc:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa026fe:	f1 1f       	IF CC JUMP 0xffa026e0 <_bfin_EMAC_recv_poll+0x20> (BP);
ffa02700:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02704:	91 a2       	R1 = [P2 + 0x28];
ffa02706:	41 54       	R1 = R1 & R0;
ffa02708:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0270a:	01 09       	CC = R1 <= R0;
ffa0270c:	07 10       	IF !CC JUMP 0xffa0271a <_bfin_EMAC_recv_poll+0x5a>;
ffa0270e:	01 e8 00 00 	UNLINK;
ffa02712:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02714:	07 30       	R0 = R7;
ffa02716:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02718:	10 00       	RTS;
ffa0271a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0271c:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa02720:	90 b2 00 00 
ffa02724:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02726:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0272a:	0f 30       	R1 = R7;
ffa0272c:	00 e1 c8 02 	R0.L = 0x2c8;		/* (712)	R0=0xff9002c8(-7339320) */
ffa02730:	ff e3 58 f4 	CALL 0xffa00fe0 <_printf_int>;
ffa02734:	18 95       	R0 = W[P3] (Z);
ffa02736:	10 32       	P2 = R0;
ffa02738:	0e 32       	P1 = R6;
ffa0273a:	0f 30       	R1 = R7;
ffa0273c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0273e:	52 91       	P2 = [P2];
ffa02740:	90 a1       	R0 = [P2 + 0x18];
ffa02742:	15 32       	P2 = R5;
ffa02744:	10 93       	[P2] = R0;
ffa02746:	00 e3 4b 02 	CALL 0xffa02bdc <_ARP_rx>;
ffa0274a:	00 0c       	CC = R0 == 0x0;
ffa0274c:	1f 18       	IF CC JUMP 0xffa0278a <_bfin_EMAC_recv_poll+0xca>;
ffa0274e:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02750:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02754:	20 95       	R0 = W[P4] (Z);
ffa02756:	10 32       	P2 = R0;
ffa02758:	61 95       	R1 = W[P4] (X);
ffa0275a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0275c:	09 e1 40 0c 	P1.L = 0xc40;		/* (3136)	P1=0xff900c40 <_rxIdx> */
ffa02760:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02762:	52 91       	P2 = [P2];
ffa02764:	90 b2       	[P2 + 0x28] = R0;
ffa02766:	c8 42       	R0 = R1.L (Z);
ffa02768:	10 0d       	CC = R0 <= 0x2;
ffa0276a:	08 1c       	IF CC JUMP 0xffa0277a <_bfin_EMAC_recv_poll+0xba> (BP);
ffa0276c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0276e:	08 97       	W[P1] = R0;
ffa02770:	01 e8 00 00 	UNLINK;
ffa02774:	07 30       	R0 = R7;
ffa02776:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02778:	10 00       	RTS;
ffa0277a:	01 30       	R0 = R1;
ffa0277c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0277e:	08 97       	W[P1] = R0;
ffa02780:	01 e8 00 00 	UNLINK;
ffa02784:	07 30       	R0 = R7;
ffa02786:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02788:	10 00       	RTS;
ffa0278a:	0d 32       	P1 = R5;
ffa0278c:	0f 30       	R1 = R7;
ffa0278e:	08 91       	R0 = [P1];
ffa02790:	ff e3 8e fc 	CALL 0xffa020ac <_icmp_rx>;
ffa02794:	00 0c       	CC = R0 == 0x0;
ffa02796:	dd 1f       	IF CC JUMP 0xffa02750 <_bfin_EMAC_recv_poll+0x90> (BP);
ffa02798:	db 2f       	JUMP.S 0xffa0274e <_bfin_EMAC_recv_poll+0x8e>;
	...

ffa0279c <_DHCP_rx>:
ffa0279c:	ed 05       	[--SP] = (R7:5, P5:5);
ffa0279e:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa027a2:	6f 30       	R5 = FP;
ffa027a4:	e5 67       	R5 += -0x4;		/* ( -4) */
ffa027a6:	01 20       	JUMP.S 0xffa027a8 <_DHCP_rx+0xc>;
ffa027a8:	05 30       	R0 = R5;
ffa027aa:	ff e3 8b ff 	CALL 0xffa026c0 <_bfin_EMAC_recv_poll>;
ffa027ae:	38 30       	R7 = R0;
ffa027b0:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa027b4:	87 51       	R6 = R7 + R0;
ffa027b6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa027ba:	00 e1 08 03 	R0.L = 0x308;		/* (776)	R0=0xff900308(-7339256) */
ffa027be:	0e 30       	R1 = R6;
ffa027c0:	ff e3 10 f4 	CALL 0xffa00fe0 <_printf_int>;
ffa027c4:	20 e1 1b 01 	R0 = 0x11b (X);		/*		R0=0x11b(283) */
ffa027c8:	07 09       	CC = R7 <= R0;
ffa027ca:	fd b9       	P5 = [FP -0x4];
ffa027cc:	0c 18       	IF CC JUMP 0xffa027e4 <_DHCP_rx+0x48>;
ffa027ce:	00 00       	NOP;
ffa027d0:	00 00       	NOP;
ffa027d2:	00 00       	NOP;
ffa027d4:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa027d6:	ff e3 a3 f7 	CALL 0xffa0171c <_htons>;
ffa027da:	c0 42       	R0 = R0.L (Z);
ffa027dc:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa027e0:	08 08       	CC = R0 == R1;
ffa027e2:	08 18       	IF CC JUMP 0xffa027f2 <_DHCP_rx+0x56>;
ffa027e4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011b(-7339749) */
ffa027e8:	00 e1 ec 02 	R0.L = 0x2ec;		/* (748)	R0=0xff9002ec(-7339284) */
ffa027ec:	ff e3 38 f3 	CALL 0xffa00e5c <_printf_str>;
ffa027f0:	dc 2f       	JUMP.S 0xffa027a8 <_DHCP_rx+0xc>;
ffa027f2:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa027f6:	ff e3 93 f7 	CALL 0xffa0171c <_htons>;
ffa027fa:	c0 42       	R0 = R0.L (Z);
ffa027fc:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa02800:	01 08       	CC = R1 == R0;
ffa02802:	d3 17       	IF !CC JUMP 0xffa027a8 <_DHCP_rx+0xc> (BP);
ffa02804:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa02808:	ff e3 8a f7 	CALL 0xffa0171c <_htons>;
ffa0280c:	c0 42       	R0 = R0.L (Z);
ffa0280e:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa02812:	01 08       	CC = R1 == R0;
ffa02814:	ca 17       	IF !CC JUMP 0xffa027a8 <_DHCP_rx+0xc> (BP);
ffa02816:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c44(-4191164) */
ffa0281a:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa0281e:	11 91       	R1 = [P2];
ffa02820:	28 a3       	R0 = [P5 + 0x30];
ffa02822:	08 08       	CC = R0 == R1;
ffa02824:	c2 17       	IF !CC JUMP 0xffa027a8 <_DHCP_rx+0xc> (BP);
ffa02826:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa0282a:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa0282e:	ff e3 83 f7 	CALL 0xffa01734 <_htonl>;
ffa02832:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa02836:	01 08       	CC = R1 == R0;
ffa02838:	b8 17       	IF !CC JUMP 0xffa027a8 <_DHCP_rx+0xc> (BP);
ffa0283a:	4d 30       	R1 = P5;
ffa0283c:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa02840:	01 50       	R0 = R1 + R0;
ffa02842:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa02846:	f0 bb 00 00 
ffa0284a:	ff e3 59 f8 	CALL 0xffa018fc <_DHCP_parse>;
ffa0284e:	e9 a3       	R1 = [P5 + 0x3c];
ffa02850:	01 0c       	CC = R1 == 0x0;
ffa02852:	12 1c       	IF CC JUMP 0xffa02876 <_DHCP_rx+0xda> (BP);
ffa02854:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa02858:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa0285c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa02860:	11 93       	[P2] = R1;
ffa02862:	00 e1 dc 02 	R0.L = 0x2dc;		/* (732)	R0=0xff9002dc(-7339300) */
ffa02866:	ff e3 5f f4 	CALL 0xffa01124 <_printf_ip>;
ffa0286a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002dc(-7339300) */
ffa0286e:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02872:	ff e3 f5 f2 	CALL 0xffa00e5c <_printf_str>;
ffa02876:	01 e8 00 00 	UNLINK;
ffa0287a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0287c:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0287e:	10 00       	RTS;

ffa02880 <_DHCP_req>:
ffa02880:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02882:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c44 <_rxbuf> */
ffa02886:	0d e1 28 0c 	P5.L = 0xc28;		/* (3112)	P5=0xff900c28 <_NetDHCPserv> */
ffa0288a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0288c:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02890:	28 93       	[P5] = R0;
ffa02892:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa02894:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa02898:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0289a:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa0289e:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa028a2:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa028a4:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa028a8:	7f 30       	R7 = FP;
ffa028aa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa028ae:	00 e1 1c 03 	R0.L = 0x31c;		/* (796)	R0=0xff90031c(-7339236) */
ffa028b2:	a7 67       	R7 += -0xc;		/* (-12) */
ffa028b4:	ff e3 d4 f2 	CALL 0xffa00e5c <_printf_str>;
ffa028b8:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa028bc:	2a 91 00 00 
ffa028c0:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa028c2:	ff e3 45 f9 	CALL 0xffa01b4c <_DHCP_tx>;
ffa028c6:	ff e3 6b ff 	CALL 0xffa0279c <_DHCP_rx>;
ffa028ca:	29 91       	R1 = [P5];
ffa028cc:	39 0c       	CC = R1 == -0x1;
ffa028ce:	43 18       	IF CC JUMP 0xffa02954 <_DHCP_req+0xd4>;
ffa028d0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa028d4:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa028d8:	10 91       	R0 = [P2];
ffa028da:	00 0c       	CC = R0 == 0x0;
ffa028dc:	08 18       	IF CC JUMP 0xffa028ec <_DHCP_req+0x6c>;
ffa028de:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa028e2:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetSubnetMask> */
ffa028e6:	10 91       	R0 = [P2];
ffa028e8:	00 0c       	CC = R0 == 0x0;
ffa028ea:	30 10       	IF !CC JUMP 0xffa0294a <_DHCP_req+0xca>;
ffa028ec:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa028ee:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa028f2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa028f4:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa028f8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa028fa:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa028fe:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02900:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02904:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02906:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa0290a:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa0290e:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa02912:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa02916:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa0291a:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa0291e:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa02922:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02924:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa02928:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa0292c:	00 e1 4c 03 	R0.L = 0x34c;		/* (844)	R0=0xff90034c(-7339188) */
ffa02930:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa02934:	ff e3 94 f2 	CALL 0xffa00e5c <_printf_str>;
ffa02938:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0293a:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa0293e:	2a 91 00 00 
ffa02942:	ff e3 05 f9 	CALL 0xffa01b4c <_DHCP_tx>;
ffa02946:	ff e3 2b ff 	CALL 0xffa0279c <_DHCP_rx>;
ffa0294a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0294c:	01 e8 00 00 	UNLINK;
ffa02950:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02952:	10 00       	RTS;
ffa02954:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02958:	00 e1 30 03 	R0.L = 0x330;		/* (816)	R0=0xff900330(-7339216) */
ffa0295c:	ff e3 80 f2 	CALL 0xffa00e5c <_printf_str>;
ffa02960:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02962:	f5 2f       	JUMP.S 0xffa0294c <_DHCP_req+0xcc>;

ffa02964 <_bfin_EMAC_recv>:
ffa02964:	eb 05       	[--SP] = (R7:5, P5:3);
ffa02966:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c40 <_rxIdx> */
ffa0296a:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000 <_l1_data_a>(-7340032) */
ffa0296e:	0c e1 40 0c 	P4.L = 0xc40;		/* (3136)	P4=0xff900c40 <_rxIdx> */
ffa02972:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00c30(-4191184) */
ffa02976:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0297a:	28 32       	P5 = R0;
ffa0297c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0297e:	05 e1 44 0c 	R5.L = 0xc44;		/* (3140)	R5=0xff900c44 <_rxbuf>(-7336892) */
ffa02982:	74 30       	R6 = P4;
ffa02984:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa02988:	0e 32       	P1 = R6;
ffa0298a:	08 95       	R0 = W[P1] (Z);
ffa0298c:	10 32       	P2 = R0;
ffa0298e:	0d 32       	P1 = R5;
ffa02990:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02992:	52 91       	P2 = [P2];
ffa02994:	90 a2       	R0 = [P2 + 0x28];
ffa02996:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02998:	46 18       	IF CC JUMP 0xffa02a24 <_bfin_EMAC_recv+0xc0>;
ffa0299a:	00 00       	NOP;
ffa0299c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0299e:	a0 4f       	R0 <<= 0x14;
ffa029a0:	91 a2       	R1 = [P2 + 0x28];
ffa029a2:	81 54       	R2 = R1 & R0;
ffa029a4:	02 0c       	CC = R2 == 0x0;
ffa029a6:	45 10       	IF !CC JUMP 0xffa02a30 <_bfin_EMAC_recv+0xcc>;
ffa029a8:	00 00       	NOP;
ffa029aa:	00 00       	NOP;
ffa029ac:	00 00       	NOP;
ffa029ae:	90 a2       	R0 = [P2 + 0x28];
ffa029b0:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa029b2:	4a 18       	IF CC JUMP 0xffa02a46 <_bfin_EMAC_recv+0xe2>;
ffa029b4:	00 00       	NOP;
ffa029b6:	00 00       	NOP;
ffa029b8:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa029bc:	91 a2       	R1 = [P2 + 0x28];
ffa029be:	c1 55       	R7 = R1 & R0;
ffa029c0:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa029c2:	07 09       	CC = R7 <= R0;
ffa029c4:	4c 18       	IF CC JUMP 0xffa02a5c <_bfin_EMAC_recv+0xf8>;
ffa029c6:	00 00       	NOP;
ffa029c8:	00 00       	NOP;
ffa029ca:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa029cc:	90 a1       	R0 = [P2 + 0x18];
ffa029ce:	59 95       	R1 = W[P3] (X);
ffa029d0:	28 93       	[P5] = R0;
ffa029d2:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa029d4:	08 56       	R0 = R0 | R1;
ffa029d6:	18 97       	W[P3] = R0;
ffa029d8:	61 95       	R1 = W[P4] (X);
ffa029da:	c8 42       	R0 = R1.L (Z);
ffa029dc:	10 0d       	CC = R0 <= 0x2;
ffa029de:	92 b2       	[P2 + 0x28] = R2;
ffa029e0:	1e 1c       	IF CC JUMP 0xffa02a1c <_bfin_EMAC_recv+0xb8> (BP);
ffa029e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa029e4:	20 97       	W[P4] = R0;
ffa029e6:	28 91       	R0 = [P5];
ffa029e8:	0f 30       	R1 = R7;
ffa029ea:	00 e3 f9 00 	CALL 0xffa02bdc <_ARP_rx>;
ffa029ee:	00 0c       	CC = R0 == 0x0;
ffa029f0:	03 18       	IF CC JUMP 0xffa029f6 <_bfin_EMAC_recv+0x92>;
ffa029f2:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa029f4:	ca 2f       	JUMP.S 0xffa02988 <_bfin_EMAC_recv+0x24>;
ffa029f6:	28 91       	R0 = [P5];
ffa029f8:	0f 30       	R1 = R7;
ffa029fa:	ff e3 59 fb 	CALL 0xffa020ac <_icmp_rx>;
ffa029fe:	00 0c       	CC = R0 == 0x0;
ffa02a00:	f9 17       	IF !CC JUMP 0xffa029f2 <_bfin_EMAC_recv+0x8e> (BP);
ffa02a02:	28 91       	R0 = [P5];
ffa02a04:	0f 30       	R1 = R7;
ffa02a06:	00 e3 49 04 	CALL 0xffa03298 <_tcp_rx>;
ffa02a0a:	00 0c       	CC = R0 == 0x0;
ffa02a0c:	f3 17       	IF !CC JUMP 0xffa029f2 <_bfin_EMAC_recv+0x8e> (BP);
ffa02a0e:	07 0d       	CC = R7 <= 0x0;
ffa02a10:	bc 1f       	IF CC JUMP 0xffa02988 <_bfin_EMAC_recv+0x24> (BP);
ffa02a12:	01 e8 00 00 	UNLINK;
ffa02a16:	07 30       	R0 = R7;
ffa02a18:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02a1a:	10 00       	RTS;
ffa02a1c:	01 30       	R0 = R1;
ffa02a1e:	08 64       	R0 += 0x1;		/* (  1) */
ffa02a20:	20 97       	W[P4] = R0;
ffa02a22:	e2 2f       	JUMP.S 0xffa029e6 <_bfin_EMAC_recv+0x82>;
ffa02a24:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02a26:	01 e8 00 00 	UNLINK;
ffa02a2a:	07 30       	R0 = R7;
ffa02a2c:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02a2e:	10 00       	RTS;
ffa02a30:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02a34:	00 e1 60 03 	R0.L = 0x360;		/* (864)	R0=0xff900360(-7339168) */
ffa02a38:	ff e3 12 f2 	CALL 0xffa00e5c <_printf_str>;
ffa02a3c:	01 e8 00 00 	UNLINK;
ffa02a40:	07 30       	R0 = R7;
ffa02a42:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02a44:	10 00       	RTS;
ffa02a46:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900360(-7339168) */
ffa02a4a:	00 e1 7c 03 	R0.L = 0x37c;		/* (892)	R0=0xff90037c(-7339140) */
ffa02a4e:	ff e3 07 f2 	CALL 0xffa00e5c <_printf_str>;
ffa02a52:	01 e8 00 00 	UNLINK;
ffa02a56:	07 30       	R0 = R7;
ffa02a58:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02a5a:	10 00       	RTS;
ffa02a5c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90037c(-7339140) */
ffa02a60:	00 e1 90 03 	R0.L = 0x390;		/* (912)	R0=0xff900390(-7339120) */
ffa02a64:	ff e3 fc f1 	CALL 0xffa00e5c <_printf_str>;
ffa02a68:	01 e8 00 00 	UNLINK;
ffa02a6c:	07 30       	R0 = R7;
ffa02a6e:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02a70:	10 00       	RTS;
	...

ffa02a74 <_ARP_init>:
ffa02a74:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_NetSubnetMask> */
ffa02a78:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02a7c:	0a e1 6c 0c 	P2.L = 0xc6c;		/* (3180)	P2=0xff900c6c <_NetArpLut> */
ffa02a80:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02a82:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a84:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02a86:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa02a88:	b2 e0 12 10 	LSETUP(0xffa02a8c <_ARP_init+0x18>, 0xffa02aac <_ARP_init+0x38>) LC1 = P1;
ffa02a8c:	11 93       	[P2] = R1;
ffa02a8e:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02a92:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02a96:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa02a9a:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa02a9e:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02aa2:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02aa6:	52 b5       	W[P2 + 0xa] = R2;
ffa02aa8:	d1 b0       	[P2 + 0xc] = R1;
ffa02aaa:	11 b1       	[P2 + 0x10] = R1;
ffa02aac:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa02aae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c6c <_NetArpLut> */
ffa02ab2:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02ab6:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xff900c68 <_NetArpLut_age> */
ffa02aba:	10 97       	W[P2] = R0;
ffa02abc:	01 e8 00 00 	UNLINK;
ffa02ac0:	10 00       	RTS;
	...

ffa02ac4 <_ARP_lut_find>:
ffa02ac4:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900c2c <_txIdx> */
ffa02ac8:	08 e1 6c 0c 	P0.L = 0xc6c;		/* (3180)	P0=0xff900c6c <_NetArpLut> */
ffa02acc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02ad0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02ad2:	48 32       	P1 = P0;
ffa02ad4:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02ad6:	b2 e0 06 20 	LSETUP(0xffa02ada <_ARP_lut_find+0x16>, 0xffa02ae2 <_ARP_lut_find+0x1e>) LC1 = P2;
ffa02ada:	08 91       	R0 = [P1];
ffa02adc:	00 0c       	CC = R0 == 0x0;
ffa02ade:	14 18       	IF CC JUMP 0xffa02b06 <_ARP_lut_find+0x42>;
ffa02ae0:	0a 64       	R2 += 0x1;		/* (  1) */
ffa02ae2:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02ae4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa02ae8:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02aea:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02aec:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa02aee:	09 e1 8a 0c 	P1.L = 0xc8a;		/* (3210)	P1=0xff900c8a */
ffa02af2:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa02af4:	b2 e0 08 20 	LSETUP(0xffa02af8 <_ARP_lut_find+0x34>, 0xffa02b04 <_ARP_lut_find+0x40>) LC1 = P2;
ffa02af8:	08 95       	R0 = W[P1] (Z);
ffa02afa:	03 09       	CC = R3 <= R0;
ffa02afc:	03 18       	IF CC JUMP 0xffa02b02 <_ARP_lut_find+0x3e>;
ffa02afe:	11 30       	R2 = R1;
ffa02b00:	18 30       	R3 = R0;
ffa02b02:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02b04:	09 64       	R1 += 0x1;		/* (  1) */
ffa02b06:	02 30       	R0 = R2;
ffa02b08:	01 e8 00 00 	UNLINK;
ffa02b0c:	10 00       	RTS;
	...

ffa02b10 <_ARP_lut_add>:
ffa02b10:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02b12:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c28 <_NetDHCPserv> */
ffa02b16:	0d e1 6c 0c 	P5.L = 0xc6c;		/* (3180)	P5=0xff900c6c <_NetArpLut> */
ffa02b1a:	31 30       	R6 = R1;
ffa02b1c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02b20:	38 30       	R7 = R0;
ffa02b22:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02b24:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa02b26:	4d 32       	P1 = P5;
ffa02b28:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02b2a:	00 00       	NOP;
ffa02b2c:	08 91       	R0 = [P1];
ffa02b2e:	07 08       	CC = R7 == R0;
ffa02b30:	11 07       	IF CC R2 = R1;
ffa02b32:	09 64       	R1 += 0x1;		/* (  1) */
ffa02b34:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa02b36:	42 0c       	CC = P2 == 0x0;
ffa02b38:	23 10       	IF !CC JUMP 0xffa02b7e <_ARP_lut_add+0x6e>;
ffa02b3a:	82 0c       	CC = R2 < 0x0;
ffa02b3c:	25 18       	IF CC JUMP 0xffa02b86 <_ARP_lut_add+0x76>;
ffa02b3e:	82 c6 12 82 	R1 = R2 << 0x2;
ffa02b42:	0a 32       	P1 = R2;
ffa02b44:	11 32       	P2 = R1;
ffa02b46:	06 32       	P0 = R6;
ffa02b48:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa02b4a:	6a 5a       	P1 = P2 + P5;
ffa02b4c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02b4e:	0f 93       	[P1] = R7;
ffa02b50:	aa 5a       	P2 = P2 + P5;
ffa02b52:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02b54:	b2 e0 03 10 	LSETUP(0xffa02b58 <_ARP_lut_add+0x48>, 0xffa02b5a <_ARP_lut_add+0x4a>) LC1 = P1;
ffa02b58:	40 98       	R0 = B[P0++] (X);
ffa02b5a:	10 9a       	B[P2++] = R0;
ffa02b5c:	51 41       	R1 = (R1 + R2) << 0x2;
ffa02b5e:	09 32       	P1 = R1;
ffa02b60:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa02b64:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xff900c68 <_NetArpLut_age> */
ffa02b68:	50 95       	R0 = W[P2] (X);
ffa02b6a:	08 64       	R0 += 0x1;		/* (  1) */
ffa02b6c:	10 97       	W[P2] = R0;
ffa02b6e:	a9 5a       	P2 = P1 + P5;
ffa02b70:	50 b5       	W[P2 + 0xa] = R0;
ffa02b72:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02b74:	10 b1       	[P2 + 0x10] = R0;
ffa02b76:	01 e8 00 00 	UNLINK;
ffa02b7a:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02b7c:	10 00       	RTS;
ffa02b7e:	82 0c       	CC = R2 < 0x0;
ffa02b80:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02b82:	d4 1f       	IF CC JUMP 0xffa02b2a <_ARP_lut_add+0x1a> (BP);
ffa02b84:	dd 2f       	JUMP.S 0xffa02b3e <_ARP_lut_add+0x2e>;
ffa02b86:	ff e3 9f ff 	CALL 0xffa02ac4 <_ARP_lut_find>;
ffa02b8a:	10 30       	R2 = R0;
ffa02b8c:	d9 2f       	JUMP.S 0xffa02b3e <_ARP_lut_add+0x2e>;
	...

ffa02b90 <_ARP_lu>:
ffa02b90:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02b94:	c4 04       	[--SP] = (P5:4);
ffa02b96:	09 e1 6c 0c 	P1.L = 0xc6c;		/* (3180)	P1=0xff900c6c <_NetArpLut> */
ffa02b9a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02b9e:	10 30       	R2 = R0;
ffa02ba0:	29 32       	P5 = R1;
ffa02ba2:	61 32       	P4 = P1;
ffa02ba4:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa02ba6:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02ba8:	b2 e0 06 20 	LSETUP(0xffa02bac <_ARP_lu+0x1c>, 0xffa02bb4 <_ARP_lu+0x24>) LC1 = P2;
ffa02bac:	08 91       	R0 = [P1];
ffa02bae:	10 08       	CC = R0 == R2;
ffa02bb0:	08 18       	IF CC JUMP 0xffa02bc0 <_ARP_lu+0x30>;
ffa02bb2:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa02bb4:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02bb6:	01 e8 00 00 	UNLINK;
ffa02bba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02bbc:	84 04       	(P5:4) = [SP++];
ffa02bbe:	10 00       	RTS;
ffa02bc0:	08 a1       	R0 = [P1 + 0x10];
ffa02bc2:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02bc4:	f7 1f       	IF CC JUMP 0xffa02bb2 <_ARP_lu+0x22> (BP);
ffa02bc6:	60 5a       	P1 = P0 + P4;
ffa02bc8:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa02bca:	b2 e0 03 20 	LSETUP(0xffa02bce <_ARP_lu+0x3e>, 0xffa02bd0 <_ARP_lu+0x40>) LC1 = P2;
ffa02bce:	48 98       	R0 = B[P1++] (X);
ffa02bd0:	28 9a       	B[P5++] = R0;
ffa02bd2:	01 e8 00 00 	UNLINK;
ffa02bd6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02bd8:	84 04       	(P5:4) = [SP++];
ffa02bda:	10 00       	RTS;

ffa02bdc <_ARP_rx>:
ffa02bdc:	fb 05       	[--SP] = (R7:7, P5:3);
ffa02bde:	20 32       	P4 = R0;
ffa02be0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02be4:	39 30       	R7 = R1;
ffa02be6:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa02be8:	ff e3 9a f5 	CALL 0xffa0171c <_htons>;
ffa02bec:	c0 42       	R0 = R0.L (Z);
ffa02bee:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa02bf2:	08 08       	CC = R0 == R1;
ffa02bf4:	06 18       	IF CC JUMP 0xffa02c00 <_ARP_rx+0x24>;
ffa02bf6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02bf8:	01 e8 00 00 	UNLINK;
ffa02bfc:	bb 05       	(R7:7, P5:3) = [SP++];
ffa02bfe:	10 00       	RTS;
ffa02c00:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02c02:	07 0a       	CC = R7 <= R0 (IU);
ffa02c04:	f9 1f       	IF CC JUMP 0xffa02bf6 <_ARP_rx+0x1a> (BP);
ffa02c06:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c08:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02c0a:	ff e3 89 f5 	CALL 0xffa0171c <_htons>;
ffa02c0e:	c0 42       	R0 = R0.L (Z);
ffa02c10:	07 08       	CC = R7 == R0;
ffa02c12:	f2 17       	IF !CC JUMP 0xffa02bf6 <_ARP_rx+0x1a> (BP);
ffa02c14:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02c18:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02c1a:	ff e3 81 f5 	CALL 0xffa0171c <_htons>;
ffa02c1e:	c0 42       	R0 = R0.L (Z);
ffa02c20:	07 08       	CC = R7 == R0;
ffa02c22:	ea 17       	IF !CC JUMP 0xffa02bf6 <_ARP_rx+0x1a> (BP);
ffa02c24:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02c26:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02c2a:	08 08       	CC = R0 == R1;
ffa02c2c:	e5 17       	IF !CC JUMP 0xffa02bf6 <_ARP_rx+0x1a> (BP);
ffa02c2e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02c30:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02c32:	ff e3 75 f5 	CALL 0xffa0171c <_htons>;
ffa02c36:	c0 42       	R0 = R0.L (Z);
ffa02c38:	07 08       	CC = R7 == R0;
ffa02c3a:	0c 14       	IF !CC JUMP 0xffa02c52 <_ARP_rx+0x76> (BP);
ffa02c3c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa02c40:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_NetOurMAC> */
ffa02c44:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa02c48:	10 99       	R0 = B[P2] (Z);
ffa02c4a:	01 08       	CC = R1 == R0;
ffa02c4c:	ae 18       	IF CC JUMP 0xffa02da8 <_ARP_rx+0x1cc>;
ffa02c4e:	00 00       	NOP;
ffa02c50:	00 00       	NOP;
ffa02c52:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c54:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02c56:	ff e3 63 f5 	CALL 0xffa0171c <_htons>;
ffa02c5a:	c0 42       	R0 = R0.L (Z);
ffa02c5c:	07 08       	CC = R7 == R0;
ffa02c5e:	cc 17       	IF !CC JUMP 0xffa02bf6 <_ARP_rx+0x1a> (BP);
ffa02c60:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02c64:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02c66:	ff e3 5b f5 	CALL 0xffa0171c <_htons>;
ffa02c6a:	c0 42       	R0 = R0.L (Z);
ffa02c6c:	07 08       	CC = R7 == R0;
ffa02c6e:	c4 17       	IF !CC JUMP 0xffa02bf6 <_ARP_rx+0x1a> (BP);
ffa02c70:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02c72:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02c76:	08 08       	CC = R0 == R1;
ffa02c78:	bf 17       	IF !CC JUMP 0xffa02bf6 <_ARP_rx+0x1a> (BP);
ffa02c7a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c7c:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02c7e:	ff e3 4f f5 	CALL 0xffa0171c <_htons>;
ffa02c82:	c0 42       	R0 = R0.L (Z);
ffa02c84:	07 08       	CC = R7 == R0;
ffa02c86:	b8 17       	IF !CC JUMP 0xffa02bf6 <_ARP_rx+0x1a> (BP);
ffa02c88:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa02c8c:	07 e1 60 0c 	R7.L = 0xc60;		/* (3168)	R7=0xff900c60 <_NetOurIP>(-7336864) */
ffa02c90:	17 32       	P2 = R7;
ffa02c92:	a1 a2       	R1 = [P4 + 0x28];
ffa02c94:	10 91       	R0 = [P2];
ffa02c96:	01 08       	CC = R1 == R0;
ffa02c98:	af 17       	IF !CC JUMP 0xffa02bf6 <_ARP_rx+0x1a> (BP);
ffa02c9a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_NetOurMAC> */
ffa02c9e:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa02ca2:	10 95       	R0 = W[P2] (Z);
ffa02ca4:	10 32       	P2 = R0;
ffa02ca6:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c6c <_NetArpLut> */
ffa02caa:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa02cae:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa02cb0:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c6c <_NetArpLut> */
ffa02cb4:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02cb6:	52 91       	P2 = [P2];
ffa02cb8:	0d e1 54 0c 	P5.L = 0xc54;		/* (3156)	P5=0xff900c54 <_NetOurMAC> */
ffa02cbc:	93 ad       	P3 = [P2 + 0x18];
ffa02cbe:	18 97       	W[P3] = R0;
ffa02cc0:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa02cc4:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa02cc8:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa02ccc:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa02cd0:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa02cd4:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa02cd8:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa02cdc:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa02ce0:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa02ce4:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa02ce8:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa02cec:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa02cf0:	68 99       	R0 = B[P5] (X);
ffa02cf2:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa02cf6:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02cfa:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa02cfe:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02d02:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa02d06:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02d0a:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa02d0e:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02d12:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa02d16:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02d1a:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa02d1e:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02d22:	ff e3 fd f4 	CALL 0xffa0171c <_htons>;
ffa02d26:	d8 b5       	W[P3 + 0xe] = R0;
ffa02d28:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d2a:	ff e3 f9 f4 	CALL 0xffa0171c <_htons>;
ffa02d2e:	18 b6       	W[P3 + 0x10] = R0;
ffa02d30:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02d34:	ff e3 f4 f4 	CALL 0xffa0171c <_htons>;
ffa02d38:	58 b6       	W[P3 + 0x12] = R0;
ffa02d3a:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02d3c:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa02d40:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02d42:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa02d46:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02d48:	ff e3 ea f4 	CALL 0xffa0171c <_htons>;
ffa02d4c:	44 32       	P0 = P4;
ffa02d4e:	d8 b6       	W[P3 + 0x16] = R0;
ffa02d50:	53 32       	P2 = P3;
ffa02d52:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa02d54:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02d56:	b2 e0 08 10 	LSETUP(0xffa02d5a <_ARP_rx+0x17e>, 0xffa02d66 <_ARP_rx+0x18a>) LC1 = P1;
ffa02d5a:	68 98       	R0 = B[P5++] (X);
ffa02d5c:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa02d60:	40 98       	R0 = B[P0++] (X);
ffa02d62:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa02d66:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02d68:	17 32       	P2 = R7;
ffa02d6a:	50 99       	R0 = B[P2] (X);
ffa02d6c:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa02d70:	10 91       	R0 = [P2];
ffa02d72:	40 4e       	R0 >>= 0x8;
ffa02d74:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa02d78:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02d7c:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa02d80:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02d84:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa02d88:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa02d8c:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa02d90:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa02d94:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa02d98:	f3 b0       	[SP + 0xc] = R3;
ffa02d9a:	ff e3 17 f4 	CALL 0xffa015c8 <_FormatIPAddress>;
ffa02d9e:	98 b2       	[P3 + 0x28] = R0;
ffa02da0:	ff e3 68 f6 	CALL 0xffa01a70 <_bfin_EMAC_send_nocopy>;
ffa02da4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02da6:	29 2f       	JUMP.S 0xffa02bf8 <_ARP_rx+0x1c>;
ffa02da8:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa02dac:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa02db0:	01 08       	CC = R1 == R0;
ffa02db2:	50 17       	IF !CC JUMP 0xffa02c52 <_ARP_rx+0x76> (BP);
ffa02db4:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa02db8:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa02dbc:	01 08       	CC = R1 == R0;
ffa02dbe:	4a 17       	IF !CC JUMP 0xffa02c52 <_ARP_rx+0x76> (BP);
ffa02dc0:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa02dc4:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa02dc8:	01 08       	CC = R1 == R0;
ffa02dca:	44 17       	IF !CC JUMP 0xffa02c52 <_ARP_rx+0x76> (BP);
ffa02dcc:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa02dd0:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02dd4:	01 08       	CC = R1 == R0;
ffa02dd6:	3e 17       	IF !CC JUMP 0xffa02c52 <_ARP_rx+0x76> (BP);
ffa02dd8:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa02ddc:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa02de0:	01 08       	CC = R1 == R0;
ffa02de2:	38 17       	IF !CC JUMP 0xffa02c52 <_ARP_rx+0x76> (BP);
ffa02de4:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa02de6:	44 30       	R0 = P4;
ffa02de8:	ff e3 ba f4 	CALL 0xffa0175c <_pack4chars>;
ffa02dec:	38 30       	R7 = R0;
ffa02dee:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa02df2:	0f 30       	R1 = R7;
ffa02df4:	00 e1 9c 04 	R0.L = 0x49c;		/* (1180)	R0=0xff90049c(-7338852) */
ffa02df8:	ff e3 96 f1 	CALL 0xffa01124 <_printf_ip>;
ffa02dfc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90049c(-7338852) */
ffa02e00:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02e04:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa02e06:	ff e3 2b f0 	CALL 0xffa00e5c <_printf_str>;
ffa02e0a:	07 30       	R0 = R7;
ffa02e0c:	4c 30       	R1 = P4;
ffa02e0e:	ff e3 81 fe 	CALL 0xffa02b10 <_ARP_lut_add>;
ffa02e12:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e14:	f2 2e       	JUMP.S 0xffa02bf8 <_ARP_rx+0x1c>;
	...

ffa02e18 <_ARP_tx>:
ffa02e18:	fc 05       	[--SP] = (R7:7, P5:4);
ffa02e1a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa02e1e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02e22:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa02e26:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa02e2a:	10 95 00 00 
ffa02e2e:	10 32       	P2 = R0;
ffa02e30:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02e34:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa02e38:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa02e3a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c54 <_NetOurMAC> */
ffa02e3e:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02e40:	52 91       	P2 = [P2];
ffa02e42:	0d e1 54 0c 	P5.L = 0xc54;		/* (3156)	P5=0xff900c54 <_NetOurMAC> */
ffa02e46:	94 ad       	P4 = [P2 + 0x18];
ffa02e48:	20 97       	W[P4] = R0;
ffa02e4a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02e4c:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa02e50:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa02e54:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa02e58:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa02e5c:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa02e60:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa02e64:	68 99       	R0 = B[P5] (X);
ffa02e66:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa02e6a:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02e6e:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa02e72:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02e76:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa02e7a:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02e7e:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa02e82:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02e86:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa02e8a:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02e8e:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa02e92:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02e96:	ff e3 43 f4 	CALL 0xffa0171c <_htons>;
ffa02e9a:	e0 b5       	W[P4 + 0xe] = R0;
ffa02e9c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e9e:	ff e3 3f f4 	CALL 0xffa0171c <_htons>;
ffa02ea2:	20 b6       	W[P4 + 0x10] = R0;
ffa02ea4:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02ea8:	ff e3 3a f4 	CALL 0xffa0171c <_htons>;
ffa02eac:	60 b6       	W[P4 + 0x12] = R0;
ffa02eae:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02eb0:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa02eb4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02eb6:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa02eba:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ebc:	ff e3 30 f4 	CALL 0xffa0171c <_htons>;
ffa02ec0:	e0 b6       	W[P4 + 0x16] = R0;
ffa02ec2:	54 32       	P2 = P4;
ffa02ec4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02ec6:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02ec8:	b2 e0 07 10 	LSETUP(0xffa02ecc <_ARP_tx+0xb4>, 0xffa02ed6 <_ARP_tx+0xbe>) LC1 = P1;
ffa02ecc:	68 98       	R0 = B[P5++] (X);
ffa02ece:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa02ed2:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa02ed6:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02ed8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa02edc:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa02ee0:	50 99       	R0 = B[P2] (X);
ffa02ee2:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa02ee6:	10 91       	R0 = [P2];
ffa02ee8:	40 4e       	R0 >>= 0x8;
ffa02eea:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa02eee:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02ef2:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa02ef6:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02efa:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa02efe:	a7 b2       	[P4 + 0x28] = R7;
ffa02f00:	01 e8 00 00 	UNLINK;
ffa02f04:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02f06:	ff e2 b5 f5 	JUMP.L 0xffa01a70 <_bfin_EMAC_send_nocopy>;
	...

ffa02f0c <_ARP_req>:
ffa02f0c:	ec 05       	[--SP] = (R7:5, P5:4);
ffa02f0e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02f12:	38 30       	R7 = R0;
ffa02f14:	ff e3 3e fe 	CALL 0xffa02b90 <_ARP_lu>;
ffa02f18:	00 0c       	CC = R0 == 0x0;
ffa02f1a:	50 10       	IF !CC JUMP 0xffa02fba <_ARP_req+0xae>;
ffa02f1c:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c60 */
ffa02f20:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa02f24:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c40 <_rxIdx> */
ffa02f28:	16 91       	R6 = [P2];
ffa02f2a:	0c e1 6c 0c 	P4.L = 0xc6c;		/* (3180)	P4=0xff900c6c <_NetArpLut> */
ffa02f2e:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02f32:	4c 32       	P1 = P4;
ffa02f34:	46 51       	R5 = R6 + R0;
ffa02f36:	6c 32       	P5 = P4;
ffa02f38:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02f3a:	b2 e0 06 20 	LSETUP(0xffa02f3e <_ARP_req+0x32>, 0xffa02f46 <_ARP_req+0x3a>) LC1 = P2;
ffa02f3e:	08 91       	R0 = [P1];
ffa02f40:	07 08       	CC = R7 == R0;
ffa02f42:	21 18       	IF CC JUMP 0xffa02f84 <_ARP_req+0x78>;
ffa02f44:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa02f46:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02f48:	ff e3 be fd 	CALL 0xffa02ac4 <_ARP_lut_find>;
ffa02f4c:	10 32       	P2 = R0;
ffa02f4e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02f50:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02f54:	09 e1 68 0c 	P1.L = 0xc68;		/* (3176)	P1=0xff900c68 <_NetArpLut_age> */
ffa02f58:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa02f5a:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa02f5c:	10 b1       	[P2 + 0x10] = R0;
ffa02f5e:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02f62:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa02f66:	17 93 00 00 
ffa02f6a:	d0 b0       	[P2 + 0xc] = R0;
ffa02f6c:	48 95       	R0 = W[P1] (X);
ffa02f6e:	08 64       	R0 += 0x1;		/* (  1) */
ffa02f70:	08 97       	W[P1] = R0;
ffa02f72:	50 b5       	W[P2 + 0xa] = R0;
ffa02f74:	07 30       	R0 = R7;
ffa02f76:	ff e3 51 ff 	CALL 0xffa02e18 <_ARP_tx>;
ffa02f7a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f7c:	01 e8 00 00 	UNLINK;
ffa02f80:	ac 05       	(R7:5, P5:4) = [SP++];
ffa02f82:	10 00       	RTS;
ffa02f84:	08 a1       	R0 = [P1 + 0x10];
ffa02f86:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa02f88:	de 1f       	IF CC JUMP 0xffa02f44 <_ARP_req+0x38> (BP);
ffa02f8a:	e8 a0       	R0 = [P5 + 0xc];
ffa02f8c:	86 09       	CC = R6 < R0 (IU);
ffa02f8e:	f6 1f       	IF CC JUMP 0xffa02f7a <_ARP_req+0x6e> (BP);
ffa02f90:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02f94:	0f 30       	R1 = R7;
ffa02f96:	00 e1 c0 04 	R0.L = 0x4c0;		/* (1216)	R0=0xff9004c0(-7338816) */
ffa02f9a:	ff e3 c5 f0 	CALL 0xffa01124 <_printf_ip>;
ffa02f9e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004c0(-7338816) */
ffa02fa2:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02fa6:	ff e3 5b ef 	CALL 0xffa00e5c <_printf_str>;
ffa02faa:	07 30       	R0 = R7;
ffa02fac:	ff e3 36 ff 	CALL 0xffa02e18 <_ARP_tx>;
ffa02fb0:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa02fb4:	ed b0 00 00 
ffa02fb8:	e2 2f       	JUMP.S 0xffa02f7c <_ARP_req+0x70>;
ffa02fba:	01 e8 00 00 	UNLINK;
ffa02fbe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02fc0:	ac 05       	(R7:5, P5:4) = [SP++];
ffa02fc2:	10 00       	RTS;

ffa02fc4 <_tcp_length>:
ffa02fc4:	c5 04       	[--SP] = (P5:5);
ffa02fc6:	28 32       	P5 = R0;
ffa02fc8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02fcc:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa02fce:	ff e3 a7 f3 	CALL 0xffa0171c <_htons>;
ffa02fd2:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa02fd6:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa02fd8:	51 54       	R1 = R1 & R2;
ffa02fda:	11 4f       	R1 <<= 0x2;
ffa02fdc:	c0 42       	R0 = R0.L (Z);
ffa02fde:	08 52       	R0 = R0 - R1;
ffa02fe0:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa02fe4:	11 4d       	R1 >>>= 0x2;
ffa02fe6:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa02fe8:	51 54       	R1 = R1 & R2;
ffa02fea:	01 e8 00 00 	UNLINK;
ffa02fee:	08 52       	R0 = R0 - R1;
ffa02ff0:	85 04       	(P5:5) = [SP++];
ffa02ff2:	10 00       	RTS;

ffa02ff4 <_tcp_checksum_calc>:
ffa02ff4:	08 32       	P1 = R0;
ffa02ff6:	ed 05       	[--SP] = (R7:5, P5:5);
ffa02ff8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02ffc:	28 32       	P5 = R0;
ffa02ffe:	31 30       	R6 = R1;
ffa03000:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa03002:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa03004:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa03006:	b2 e0 03 20 	LSETUP(0xffa0300a <_tcp_checksum_calc+0x16>, 0xffa0300c <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa0300a:	08 94       	R0 = W[P1++] (Z);
ffa0300c:	45 51       	R5 = R5 + R0;
ffa0300e:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03012:	10 4e       	R0 >>= 0x2;
ffa03014:	06 50       	R0 = R6 + R0;
ffa03016:	c0 42       	R0 = R0.L (Z);
ffa03018:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa0301c:	ff e3 80 f3 	CALL 0xffa0171c <_htons>;
ffa03020:	47 4f       	R7 <<= 0x8;
ffa03022:	c0 42       	R0 = R0.L (Z);
ffa03024:	c7 51       	R7 = R7 + R0;
ffa03026:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa03028:	ef 50       	R3 = R7 + R5;
ffa0302a:	0d 1c       	IF CC JUMP 0xffa03044 <_tcp_checksum_calc+0x50> (BP);
ffa0302c:	0e 32       	P1 = R6;
ffa0302e:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03032:	10 4e       	R0 >>= 0x2;
ffa03034:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa03036:	0e 64       	R6 += 0x1;		/* (  1) */
ffa03038:	a9 5a       	P2 = P1 + P5;
ffa0303a:	08 32       	P1 = R0;
ffa0303c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0303e:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa03040:	8a 5a       	P2 = P2 + P1;
ffa03042:	10 9b       	B[P2] = R0;
ffa03044:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa03048:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0304a:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa0304e:	71 50       	R1 = R1 + R6;
ffa03050:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03054:	09 4d       	R1 >>>= 0x1;
ffa03056:	18 4e       	R0 >>= 0x3;
ffa03058:	41 50       	R1 = R1 + R0;
ffa0305a:	01 0d       	CC = R1 <= 0x0;
ffa0305c:	09 18       	IF CC JUMP 0xffa0306e <_tcp_checksum_calc+0x7a>;
ffa0305e:	55 32       	P2 = P5;
ffa03060:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa03062:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa03064:	0a 64       	R2 += 0x1;		/* (  1) */
ffa03066:	10 94       	R0 = W[P2++] (Z);
ffa03068:	0a 08       	CC = R2 == R1;
ffa0306a:	c3 50       	R3 = R3 + R0;
ffa0306c:	fc 17       	IF !CC JUMP 0xffa03064 <_tcp_checksum_calc+0x70> (BP);
ffa0306e:	d8 42       	R0 = R3.L (Z);
ffa03070:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa03074:	08 50       	R0 = R0 + R1;
ffa03076:	c0 43       	R0 =~ R0;
ffa03078:	01 e8 00 00 	UNLINK;
ffa0307c:	c0 42       	R0 = R0.L (Z);
ffa0307e:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03080:	10 00       	RTS;
	...

ffa03084 <_tcp_checksum_set>:
ffa03084:	c5 04       	[--SP] = (P5:5);
ffa03086:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa0308a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0308e:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa03092:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa03096:	10 95 00 00 
ffa0309a:	10 32       	P2 = R0;
ffa0309c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c68 <_NetArpLut_age> */
ffa030a0:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa030a4:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa030a6:	52 91       	P2 = [P2];
ffa030a8:	95 ad       	P5 = [P2 + 0x18];
ffa030aa:	45 30       	R0 = P5;
ffa030ac:	ff e3 a4 ff 	CALL 0xffa02ff4 <_tcp_checksum_calc>;
ffa030b0:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa030b4:	01 e8 00 00 	UNLINK;
ffa030b8:	85 04       	(P5:5) = [SP++];
ffa030ba:	10 00       	RTS;

ffa030bc <_tcp_checksum_check>:
ffa030bc:	10 32       	P2 = R0;
ffa030be:	78 05       	[--SP] = (R7:7);
ffa030c0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa030c4:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa030c8:	ff e3 96 ff 	CALL 0xffa02ff4 <_tcp_checksum_calc>;
ffa030cc:	0f 30       	R1 = R7;
ffa030ce:	c7 42       	R7 = R0.L (Z);
ffa030d0:	39 08       	CC = R1 == R7;
ffa030d2:	19 18       	IF CC JUMP 0xffa03104 <_tcp_checksum_check+0x48>;
ffa030d4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa030d8:	00 e1 e0 04 	R0.L = 0x4e0;		/* (1248)	R0=0xff9004e0(-7338784) */
ffa030dc:	ff e3 26 ef 	CALL 0xffa00f28 <_printf_hex>;
ffa030e0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004e0(-7338784) */
ffa030e4:	0f 30       	R1 = R7;
ffa030e6:	00 e1 fc 04 	R0.L = 0x4fc;		/* (1276)	R0=0xff9004fc(-7338756) */
ffa030ea:	ff e3 1f ef 	CALL 0xffa00f28 <_printf_hex>;
ffa030ee:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004fc(-7338756) */
ffa030f2:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa030f6:	ff e3 b3 ee 	CALL 0xffa00e5c <_printf_str>;
ffa030fa:	01 e8 00 00 	UNLINK;
ffa030fe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03100:	38 05       	(R7:7) = [SP++];
ffa03102:	10 00       	RTS;
ffa03104:	01 e8 00 00 	UNLINK;
ffa03108:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0310a:	38 05       	(R7:7) = [SP++];
ffa0310c:	10 00       	RTS;
	...

ffa03110 <_tcp_packet_setup>:
ffa03110:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03112:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03116:	29 32       	P5 = R1;
ffa03118:	7f 30       	R7 = FP;
ffa0311a:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa0311c:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0311e:	f0 bb       	[FP -0x4] = R0;
ffa03120:	07 30       	R0 = R7;
ffa03122:	2a 30       	R5 = R2;
ffa03124:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa03128:	ff e3 40 f7 	CALL 0xffa01fa8 <_eth_header_setup>;
ffa0312c:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa03130:	68 99 00 00 
ffa03134:	80 0c       	CC = R0 < 0x0;
ffa03136:	14 18       	IF CC JUMP 0xffa0315e <_tcp_packet_setup+0x4e>;
ffa03138:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0313a:	f0 b0       	[SP + 0xc] = R0;
ffa0313c:	15 30       	R2 = R5;
ffa0313e:	01 30       	R0 = R1;
ffa03140:	0f 30       	R1 = R7;
ffa03142:	ff e3 21 f3 	CALL 0xffa01784 <_ip_header_setup>;
ffa03146:	b9 a2       	R1 = [FP + 0x28];
ffa03148:	f1 b0       	[SP + 0xc] = R1;
ffa0314a:	f9 a2       	R1 = [FP + 0x2c];
ffa0314c:	31 b1       	[SP + 0x10] = R1;
ffa0314e:	72 43       	R2 = R6.B (Z);
ffa03150:	0f 30       	R1 = R7;
ffa03152:	ff e3 a5 f3 	CALL 0xffa0189c <_tcp_header_setup>;
ffa03156:	01 e8 00 00 	UNLINK;
ffa0315a:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0315c:	10 00       	RTS;
ffa0315e:	01 e8 00 00 	UNLINK;
ffa03162:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03164:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03166:	10 00       	RTS;

ffa03168 <_tcp_burst>:
ffa03168:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0316a:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa0316e:	78 b2       	[FP + 0x24] = R0;
ffa03170:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 <_NetArpLut_age> */
ffa03174:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa03178:	7a a2       	R2 = [FP + 0x24];
ffa0317a:	0b e1 54 0d 	P3.L = 0xd54;		/* (3412)	P3=0xff900d54 <_g_httpHeaderLen> */
ffa0317e:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03182:	02 0d       	CC = R2 <= 0x0;
ffa03184:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa03188:	10 91 00 00 
ffa0318c:	19 91       	R1 = [P3];
ffa0318e:	7e 18       	IF CC JUMP 0xffa0328a <_tcp_burst+0x122>;
ffa03190:	41 50       	R1 = R1 + R0;
ffa03192:	8f 09       	CC = R7 < R1 (IU);
ffa03194:	21 32       	P4 = R1;
ffa03196:	7a 10       	IF !CC JUMP 0xffa0328a <_tcp_burst+0x122>;
ffa03198:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa0319a:	38 20       	JUMP.S 0xffa0320a <_tcp_burst+0xa2>;
ffa0319c:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa0319e:	18 91       	R0 = [P3];
ffa031a0:	07 52       	R0 = R7 - R0;
ffa031a2:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa031a6:	08 50       	R0 = R0 + R1;
ffa031a8:	16 30       	R2 = R6;
ffa031aa:	0d 30       	R1 = R5;
ffa031ac:	ff e3 00 f0 	CALL 0xffa011ac <_memcpy_>;
ffa031b0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c30 <_txbuf> */
ffa031b4:	09 e1 40 0d 	P1.L = 0xd40;		/* (3392)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa031b8:	08 91       	R0 = [P1];
ffa031ba:	f7 51       	R7 = R7 + R6;
ffa031bc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa031c0:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa031c4:	07 50       	R0 = R7 + R0;
ffa031c6:	10 93       	[P2] = R0;
ffa031c8:	26 50       	R0 = R6 + R4;
ffa031ca:	ff e3 5d ff 	CALL 0xffa03084 <_tcp_checksum_set>;
ffa031ce:	ff e3 51 f4 	CALL 0xffa01a70 <_bfin_EMAC_send_nocopy>;
ffa031d2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa031d6:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_rxIdx> */
ffa031da:	10 95       	R0 = W[P2] (Z);
ffa031dc:	10 32       	P2 = R0;
ffa031de:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa031e2:	09 e1 44 0c 	P1.L = 0xc44;		/* (3140)	P1=0xff900c44 <_rxbuf> */
ffa031e6:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa031e8:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa031ea:	52 91       	P2 = [P2];
ffa031ec:	90 a2       	R0 = [P2 + 0x28];
ffa031ee:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa031f0:	07 1c       	IF CC JUMP 0xffa031fe <_tcp_burst+0x96> (BP);
ffa031f2:	90 a2       	R0 = [P2 + 0x28];
ffa031f4:	4d 30       	R1 = P5;
ffa031f6:	7a a2       	R2 = [FP + 0x24];
ffa031f8:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa031fa:	11 50       	R0 = R1 + R2;
ffa031fc:	a8 06       	IF !CC P5 = R0;
ffa031fe:	79 ae       	P1 = [FP + 0x24];
ffa03200:	69 09       	CC = P1 <= P5;
ffa03202:	45 18       	IF CC JUMP 0xffa0328c <_tcp_burst+0x124>;
ffa03204:	44 30       	R0 = P4;
ffa03206:	87 09       	CC = R7 < R0 (IU);
ffa03208:	42 10       	IF !CC JUMP 0xffa0328c <_tcp_burst+0x124>;
ffa0320a:	44 30       	R0 = P4;
ffa0320c:	b8 52       	R2 = R0 - R7;
ffa0320e:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa03212:	0a 09       	CC = R2 <= R1;
ffa03214:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03216:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa03218:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c44 <_rxbuf> */
ffa0321c:	08 06       	IF !CC R1 = R0;
ffa0321e:	09 e1 40 0d 	P1.L = 0xd40;		/* (3392)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa03222:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa03226:	07 cc 10 4c 	R6 = MIN (R2, R0) || R0 = [P1] || NOP;
ffa0322a:	08 91 00 00 
ffa0322e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_rxIdx> */
ffa03232:	07 50       	R0 = R7 + R0;
ffa03234:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa03238:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa0323c:	10 93       	[P2] = R0;
ffa0323e:	09 e1 3c 0d 	P1.L = 0xd3c;		/* (3388)	P1=0xff900d3c <_TcpSeqClient> */
ffa03242:	f1 b0       	[SP + 0xc] = R1;
ffa03244:	30 b1       	[SP + 0x10] = R0;
ffa03246:	08 91       	R0 = [P1];
ffa03248:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa0324c:	70 b1       	[SP + 0x14] = R0;
ffa0324e:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa03252:	4f 30       	R1 = FP;
ffa03254:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R2 = [P2] || NOP;
ffa03258:	12 91 00 00 
ffa0325c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0325e:	ff e3 59 ff 	CALL 0xffa03110 <_tcp_packet_setup>;
ffa03262:	28 30       	R5 = R0;
ffa03264:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03268:	00 0d       	CC = R0 <= 0x0;
ffa0326a:	ca 1b       	IF CC JUMP 0xffa031fe <_tcp_burst+0x96>;
ffa0326c:	18 91       	R0 = [P3];
ffa0326e:	38 0a       	CC = R0 <= R7 (IU);
ffa03270:	96 1f       	IF CC JUMP 0xffa0319c <_tcp_burst+0x34> (BP);
ffa03272:	38 53       	R4 = R0 - R7;
ffa03274:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03278:	07 50       	R0 = R7 + R0;
ffa0327a:	0d 30       	R1 = R5;
ffa0327c:	14 30       	R2 = R4;
ffa0327e:	ff e3 97 ef 	CALL 0xffa011ac <_memcpy_>;
ffa03282:	65 51       	R5 = R5 + R4;
ffa03284:	a6 53       	R6 = R6 - R4;
ffa03286:	e7 51       	R7 = R7 + R4;
ffa03288:	8b 2f       	JUMP.S 0xffa0319e <_tcp_burst+0x36>;
ffa0328a:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa0328c:	01 e8 00 00 	UNLINK;
ffa03290:	45 30       	R0 = P5;
ffa03292:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03294:	10 00       	RTS;
	...

ffa03298 <_tcp_rx>:
ffa03298:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0329a:	20 32       	P4 = R0;
ffa0329c:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa032a0:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa032a4:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa032a6:	ff e3 3b f2 	CALL 0xffa0171c <_htons>;
ffa032aa:	c0 42       	R0 = R0.L (Z);
ffa032ac:	07 08       	CC = R7 == R0;
ffa032ae:	06 18       	IF CC JUMP 0xffa032ba <_tcp_rx+0x22>;
ffa032b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa032b2:	01 e8 00 00 	UNLINK;
ffa032b6:	a3 05       	(R7:4, P5:3) = [SP++];
ffa032b8:	10 00       	RTS;
ffa032ba:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa032be:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa032c0:	08 08       	CC = R0 == R1;
ffa032c2:	f7 17       	IF !CC JUMP 0xffa032b0 <_tcp_rx+0x18> (BP);
ffa032c4:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa032c8:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa032cc:	ff e3 28 f2 	CALL 0xffa0171c <_htons>;
ffa032d0:	c0 42       	R0 = R0.L (Z);
ffa032d2:	07 08       	CC = R7 == R0;
ffa032d4:	ee 17       	IF !CC JUMP 0xffa032b0 <_tcp_rx+0x18> (BP);
ffa032d6:	44 30       	R0 = P4;
ffa032d8:	80 64       	R0 += 0x10;		/* ( 16) */
ffa032da:	ff e3 95 f2 	CALL 0xffa01804 <_ip_header_checksum>;
ffa032de:	40 43       	R0 = R0.B (Z);
ffa032e0:	00 0c       	CC = R0 == 0x0;
ffa032e2:	e7 1f       	IF CC JUMP 0xffa032b0 <_tcp_rx+0x18> (BP);
ffa032e4:	4c 30       	R1 = P4;
ffa032e6:	41 64       	R1 += 0x8;		/* (  8) */
ffa032e8:	e0 a1       	R0 = [P4 + 0x1c];
ffa032ea:	ff e3 13 fc 	CALL 0xffa02b10 <_ARP_lut_add>;
ffa032ee:	44 30       	R0 = P4;
ffa032f0:	ff e3 6a fe 	CALL 0xffa02fc4 <_tcp_length>;
ffa032f4:	30 30       	R6 = R0;
ffa032f6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa032fa:	0e 30       	R1 = R6;
ffa032fc:	00 e1 0c 05 	R0.L = 0x50c;		/* (1292)	R0=0xff90050c(-7338740) */
ffa03300:	ff e3 70 ee 	CALL 0xffa00fe0 <_printf_int>;
ffa03304:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90050c(-7338740) */
ffa03308:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa0330c:	ff e3 a8 ed 	CALL 0xffa00e5c <_printf_str>;
ffa03310:	44 30       	R0 = P4;
ffa03312:	0e 30       	R1 = R6;
ffa03314:	ff e3 d4 fe 	CALL 0xffa030bc <_tcp_checksum_check>;
ffa03318:	40 43       	R0 = R0.B (Z);
ffa0331a:	00 0c       	CC = R0 == 0x0;
ffa0331c:	ca 1b       	IF CC JUMP 0xffa032b0 <_tcp_rx+0x18>;
ffa0331e:	00 00       	NOP;
ffa03320:	00 00       	NOP;
ffa03322:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa03324:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03328:	48 43       	R0 = R1.B (Z);
ffa0332a:	10 08       	CC = R0 == R2;
ffa0332c:	f1 18       	IF CC JUMP 0xffa0350e <_tcp_rx+0x276>;
ffa0332e:	10 0c       	CC = R0 == 0x2;
ffa03330:	0a 19       	IF CC JUMP 0xffa03544 <_tcp_rx+0x2ac>;
ffa03332:	48 43       	R0 = R1.B (Z);
ffa03334:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03336:	08 08       	CC = R0 == R1;
ffa03338:	85 18       	IF CC JUMP 0xffa03442 <_tcp_rx+0x1aa>;
ffa0333a:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0333c:	ab 10       	IF !CC JUMP 0xffa03492 <_tcp_rx+0x1fa>;
ffa0333e:	00 00       	NOP;
ffa03340:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d54 <_g_httpHeaderLen> */
ffa03344:	0b e1 44 0d 	P3.L = 0xd44;		/* (3396)	P3=0xff900d44 <_TcpState> */
ffa03348:	00 00       	NOP;
ffa0334a:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa0334e:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa03350:	38 10       	IF !CC JUMP 0xffa033c0 <_tcp_rx+0x128>;
ffa03352:	18 91       	R0 = [P3];
ffa03354:	10 0c       	CC = R0 == 0x2;
ffa03356:	ad 17       	IF !CC JUMP 0xffa032b0 <_tcp_rx+0x18> (BP);
ffa03358:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900000 <_l1_data_a>(-7340032) */
ffa0335c:	a0 a2       	R0 = [P4 + 0x28];
ffa0335e:	04 e1 24 0c 	R4.L = 0xc24;		/* (3108)	R4=0xff900c24 <_NetDestIP>(-7336924) */
ffa03362:	a5 e5 30 00 	R5 = B[P4 + 0x30] (X);
ffa03366:	ff e3 e7 f1 	CALL 0xffa01734 <_htonl>;
ffa0336a:	14 32       	P2 = R4;
ffa0336c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa03370:	30 50       	R0 = R0 + R6;
ffa03372:	0d e1 3c 0d 	P5.L = 0xd3c;		/* (3388)	P5=0xff900d3c <_TcpSeqClient> */
ffa03376:	28 93       	[P5] = R0;
ffa03378:	e0 a1       	R0 = [P4 + 0x1c];
ffa0337a:	10 93       	[P2] = R0;
ffa0337c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d44 <_TcpState> */
ffa03380:	e0 a2       	R0 = [P4 + 0x2c];
ffa03382:	0b e1 40 0d 	P3.L = 0xd40;		/* (3392)	P3=0xff900d40 <_TcpSeqHttpStart> */
ffa03386:	ff e3 d7 f1 	CALL 0xffa01734 <_htonl>;
ffa0338a:	19 91       	R1 = [P3];
ffa0338c:	c8 53       	R7 = R0 - R1;
ffa0338e:	a1 e4 31 00 	R1 = B[P4 + 0x31] (Z);
ffa03392:	21 48       	CC = !BITTST (R1, 0x4);		/* bit  4 */
ffa03394:	1e 1d       	IF CC JUMP 0xffa035d0 <_tcp_rx+0x338> (BP);
ffa03396:	06 0c       	CC = R6 == 0x0;
ffa03398:	1c 15       	IF !CC JUMP 0xffa035d0 <_tcp_rx+0x338> (BP);
ffa0339a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa0339e:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa033a2:	10 91       	R0 = [P2];
ffa033a4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa033a8:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa033ac:	11 91       	R1 = [P2];
ffa033ae:	08 50       	R0 = R0 + R1;
ffa033b0:	07 08       	CC = R7 == R0;
ffa033b2:	46 18       	IF CC JUMP 0xffa0343e <_tcp_rx+0x1a6>;
ffa033b4:	0f 30       	R1 = R7;
ffa033b6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa033b8:	ff e3 d8 fe 	CALL 0xffa03168 <_tcp_burst>;
ffa033bc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa033be:	7a 2f       	JUMP.S 0xffa032b2 <_tcp_rx+0x1a>;
ffa033c0:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa033c2:	1f 91       	R7 = [P3];
ffa033c4:	07 08       	CC = R7 == R0;
ffa033c6:	85 19       	IF CC JUMP 0xffa036d0 <_tcp_rx+0x438>;
ffa033c8:	07 0c       	CC = R7 == 0x0;
ffa033ca:	c4 17       	IF !CC JUMP 0xffa03352 <_tcp_rx+0xba> (BP);
ffa033cc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa033d0:	00 e1 88 05 	R0.L = 0x588;		/* (1416)	R0=0xff900588(-7338616) */
ffa033d4:	ff e3 44 ed 	CALL 0xffa00e5c <_printf_str>;
ffa033d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa033dc:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa033e0:	17 93       	[P2] = R7;
ffa033e2:	a0 a2       	R0 = [P4 + 0x28];
ffa033e4:	ff e3 a8 f1 	CALL 0xffa01734 <_htonl>;
ffa033e8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa033ec:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa033f0:	10 93       	[P2] = R0;
ffa033f2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa033f6:	e2 a1       	R2 = [P4 + 0x1c];
ffa033f8:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa033fc:	12 93       	[P2] = R2;
ffa033fe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa03402:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03406:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa0340a:	11 97       	W[P2] = R1;
ffa0340c:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa0340e:	f1 b0       	[SP + 0xc] = R1;
ffa03410:	4f 30       	R1 = FP;
ffa03412:	30 b1       	[SP + 0x10] = R0;
ffa03414:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03416:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa0341a:	77 b1 00 00 
ffa0341e:	ff e3 79 fe 	CALL 0xffa03110 <_tcp_packet_setup>;
ffa03422:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03426:	00 0d       	CC = R0 <= 0x0;
ffa03428:	95 1b       	IF CC JUMP 0xffa03352 <_tcp_rx+0xba>;
ffa0342a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpClientPort> */
ffa0342e:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa03432:	17 93       	[P2] = R7;
ffa03434:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03436:	ff e3 27 fe 	CALL 0xffa03084 <_tcp_checksum_set>;
ffa0343a:	ff e3 1b f3 	CALL 0xffa01a70 <_bfin_EMAC_send_nocopy>;
ffa0343e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03440:	39 2f       	JUMP.S 0xffa032b2 <_tcp_rx+0x1a>;
ffa03442:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d40 <_TcpSeqHttpStart> */
ffa03446:	0b e1 44 0d 	P3.L = 0xd44;		/* (3396)	P3=0xff900d44 <_TcpState> */
ffa0344a:	18 91       	R0 = [P3];
ffa0344c:	08 0c       	CC = R0 == 0x1;
ffa0344e:	b9 17       	IF !CC JUMP 0xffa033c0 <_tcp_rx+0x128> (BP);
ffa03450:	e0 a2       	R0 = [P4 + 0x2c];
ffa03452:	ff e3 71 f1 	CALL 0xffa01734 <_htonl>;
ffa03456:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa0345a:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa0345e:	11 91       	R1 = [P2];
ffa03460:	08 08       	CC = R0 == R1;
ffa03462:	42 19       	IF CC JUMP 0xffa036e6 <_tcp_rx+0x44e>;
ffa03464:	00 00       	NOP;
ffa03466:	00 00       	NOP;
ffa03468:	00 00       	NOP;
ffa0346a:	e0 a2       	R0 = [P4 + 0x2c];
ffa0346c:	ff e3 64 f1 	CALL 0xffa01734 <_htonl>;
ffa03470:	08 30       	R1 = R0;
ffa03472:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03476:	00 e1 38 05 	R0.L = 0x538;		/* (1336)	R0=0xff900538(-7338696) */
ffa0347a:	ff e3 55 ee 	CALL 0xffa01124 <_printf_ip>;
ffa0347e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03480:	18 93       	[P3] = R0;
ffa03482:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03486:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa0348a:	ff e3 e9 ec 	CALL 0xffa00e5c <_printf_str>;
ffa0348e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03490:	11 2f       	JUMP.S 0xffa032b2 <_tcp_rx+0x1a>;
ffa03492:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03496:	00 e1 64 05 	R0.L = 0x564;		/* (1380)	R0=0xff900564(-7338652) */
ffa0349a:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900c24 <_NetDestIP>(-7336924) */
ffa0349e:	ff e3 df ec 	CALL 0xffa00e5c <_printf_str>;
ffa034a2:	04 e1 24 0c 	R4.L = 0xc24;		/* (3108)	R4=0xff900c24 <_NetDestIP>(-7336924) */
ffa034a6:	a0 a2       	R0 = [P4 + 0x28];
ffa034a8:	ff e3 46 f1 	CALL 0xffa01734 <_htonl>;
ffa034ac:	14 32       	P2 = R4;
ffa034ae:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d3c <_TcpSeqClient> */
ffa034b2:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d44 <_TcpState> */
ffa034b6:	0d e1 3c 0d 	P5.L = 0xd3c;		/* (3388)	P5=0xff900d3c <_TcpSeqClient> */
ffa034ba:	0b e1 44 0d 	P3.L = 0xd44;		/* (3396)	P3=0xff900d44 <_TcpState> */
ffa034be:	28 93       	[P5] = R0;
ffa034c0:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa034c4:	18 91 00 00 
ffa034c8:	e2 a1       	R2 = [P4 + 0x1c];
ffa034ca:	09 64       	R1 += 0x1;		/* (  1) */
ffa034cc:	10 0c       	CC = R0 == 0x2;
ffa034ce:	12 93       	[P2] = R2;
ffa034d0:	29 93       	[P5] = R1;
ffa034d2:	03 18       	IF CC JUMP 0xffa034d8 <_tcp_rx+0x240>;
ffa034d4:	00 0c       	CC = R0 == 0x0;
ffa034d6:	c0 14       	IF !CC JUMP 0xffa03656 <_tcp_rx+0x3be> (BP);
ffa034d8:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa034da:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa034de:	f0 b0       	[SP + 0xc] = R0;
ffa034e0:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa034e4:	10 91       	R0 = [P2];
ffa034e6:	71 b1       	[SP + 0x14] = R1;
ffa034e8:	4f 30       	R1 = FP;
ffa034ea:	30 b1       	[SP + 0x10] = R0;
ffa034ec:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa034ee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa034f0:	ff e3 10 fe 	CALL 0xffa03110 <_tcp_packet_setup>;
ffa034f4:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa034f8:	00 0d       	CC = R0 <= 0x0;
ffa034fa:	ae 18       	IF CC JUMP 0xffa03656 <_tcp_rx+0x3be>;
ffa034fc:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa034fe:	18 93       	[P3] = R0;
ffa03500:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03502:	ff e3 c1 fd 	CALL 0xffa03084 <_tcp_checksum_set>;
ffa03506:	ff e3 b5 f2 	CALL 0xffa01a70 <_bfin_EMAC_send_nocopy>;
ffa0350a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0350c:	d3 2e       	JUMP.S 0xffa032b2 <_tcp_rx+0x1a>;
ffa0350e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03512:	00 e1 20 05 	R0.L = 0x520;		/* (1312)	R0=0xff900520(-7338720) */
ffa03516:	ff e3 a3 ec 	CALL 0xffa00e5c <_printf_str>;
ffa0351a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa0351e:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa03522:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03524:	17 93       	[P2] = R7;
ffa03526:	a0 a2       	R0 = [P4 + 0x28];
ffa03528:	ff e3 06 f1 	CALL 0xffa01734 <_htonl>;
ffa0352c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa03530:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa03534:	10 93       	[P2] = R0;
ffa03536:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa0353a:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa0353e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03540:	17 93       	[P2] = R7;
ffa03542:	b8 2e       	JUMP.S 0xffa032b2 <_tcp_rx+0x1a>;
ffa03544:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03548:	00 e1 2c 05 	R0.L = 0x52c;		/* (1324)	R0=0xff90052c(-7338708) */
ffa0354c:	ff e3 88 ec 	CALL 0xffa00e5c <_printf_str>;
ffa03550:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d3c <_TcpSeqClient> */
ffa03554:	a0 a2       	R0 = [P4 + 0x28];
ffa03556:	ff e3 ef f0 	CALL 0xffa01734 <_htonl>;
ffa0355a:	0d e1 3c 0d 	P5.L = 0xd3c;		/* (3388)	P5=0xff900d3c <_TcpSeqClient> */
ffa0355e:	28 93       	[P5] = R0;
ffa03560:	44 30       	R0 = P4;
ffa03562:	ff e3 31 fd 	CALL 0xffa02fc4 <_tcp_length>;
ffa03566:	29 91       	R1 = [P5];
ffa03568:	09 64       	R1 += 0x1;		/* (  1) */
ffa0356a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa0356e:	08 50       	R0 = R0 + R1;
ffa03570:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa03574:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03578:	11 97       	W[P2] = R1;
ffa0357a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpClientPort> */
ffa0357e:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa03582:	28 93 00 00 
ffa03586:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa0358a:	11 93       	[P2] = R1;
ffa0358c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa03590:	e2 a1       	R2 = [P4 + 0x1c];
ffa03592:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa03596:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa03598:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d3c <_TcpSeqClient> */
ffa0359c:	12 93       	[P2] = R2;
ffa0359e:	0d e1 38 0d 	P5.L = 0xd38;		/* (3384)	P5=0xff900d38 <_TcpSeqHost> */
ffa035a2:	f1 b0       	[SP + 0xc] = R1;
ffa035a4:	29 91       	R1 = [P5];
ffa035a6:	31 b1       	[SP + 0x10] = R1;
ffa035a8:	4f 30       	R1 = FP;
ffa035aa:	70 b1       	[SP + 0x14] = R0;
ffa035ac:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa035ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa035b0:	ff e3 b0 fd 	CALL 0xffa03110 <_tcp_packet_setup>;
ffa035b4:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa035b8:	00 0d       	CC = R0 <= 0x0;
ffa035ba:	93 18       	IF CC JUMP 0xffa036e0 <_tcp_rx+0x448>;
ffa035bc:	28 91       	R0 = [P5];
ffa035be:	08 64       	R0 += 0x1;		/* (  1) */
ffa035c0:	28 93       	[P5] = R0;
ffa035c2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa035c4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa035c8:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa035cc:	10 93       	[P2] = R0;
ffa035ce:	33 2f       	JUMP.S 0xffa03434 <_tcp_rx+0x19c>;
ffa035d0:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa035d4:	28 54       	R0 = R0 & R5;
ffa035d6:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa035d8:	10 4d       	R0 >>>= 0x2;
ffa035da:	54 30       	R2 = P4;
ffa035dc:	19 48       	CC = !BITTST (R1, 0x3);		/* bit  3 */
ffa035de:	02 50       	R0 = R2 + R0;
ffa035e0:	5d 1c       	IF CC JUMP 0xffa0369a <_tcp_rx+0x402> (BP);
ffa035e2:	0e 30       	R1 = R6;
ffa035e4:	00 e3 16 05 	CALL 0xffa04010 <_httpCollate>;
ffa035e8:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d38 <_TcpSeqHost> */
ffa035ec:	18 91       	R0 = [P3];
ffa035ee:	07 50       	R0 = R7 + R0;
ffa035f0:	0d e1 38 0d 	P5.L = 0xd38;		/* (3384)	P5=0xff900d38 <_TcpSeqHost> */
ffa035f4:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c6c <_NetArpLut> */
ffa035f8:	28 93       	[P5] = R0;
ffa035fa:	0c e1 5c 0d 	P4.L = 0xd5c;		/* (3420)	P4=0xff900d5c <_g_httpRxed> */
ffa035fe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03600:	80 4f       	R0 <<= 0x10;
ffa03602:	21 91       	R1 = [P4];
ffa03604:	00 e3 dc 02 	CALL 0xffa03bbc <_httpResp>;
ffa03608:	00 0c       	CC = R0 == 0x0;
ffa0360a:	22 1c       	IF CC JUMP 0xffa0364e <_tcp_rx+0x3b6> (BP);
ffa0360c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa03610:	28 91       	R0 = [P5];
ffa03612:	0a e1 40 0d 	P2.L = 0xd40;		/* (3392)	P2=0xff900d40 <_TcpSeqHttpStart> */
ffa03616:	10 93       	[P2] = R0;
ffa03618:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d40 <_TcpSeqHttpStart> */
ffa0361c:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa03620:	11 91       	R1 = [P2];
ffa03622:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa03626:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa0362a:	10 91       	R0 = [P2];
ffa0362c:	41 50       	R1 = R1 + R0;
ffa0362e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03632:	00 e1 a4 05 	R0.L = 0x5a4;		/* (1444)	R0=0xff9005a4(-7338588) */
ffa03636:	ff e3 d5 ec 	CALL 0xffa00fe0 <_printf_int>;
ffa0363a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005a4(-7338588) */
ffa0363e:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa03642:	ff e3 0d ec 	CALL 0xffa00e5c <_printf_str>;
ffa03646:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03648:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0364a:	ff e3 8f fd 	CALL 0xffa03168 <_tcp_burst>;
ffa0364e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03650:	20 93       	[P4] = R0;
ffa03652:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03654:	2f 2e       	JUMP.S 0xffa032b2 <_tcp_rx+0x1a>;
ffa03656:	18 91       	R0 = [P3];
ffa03658:	18 0c       	CC = R0 == 0x3;
ffa0365a:	77 16       	IF !CC JUMP 0xffa03348 <_tcp_rx+0xb0> (BP);
ffa0365c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa03660:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03662:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa03666:	10 93       	[P2] = R0;
ffa03668:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0366a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa0366e:	f0 b0       	[SP + 0xc] = R0;
ffa03670:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa03674:	10 91       	R0 = [P2];
ffa03676:	14 32       	P2 = R4;
ffa03678:	30 b1       	[SP + 0x10] = R0;
ffa0367a:	28 91       	R0 = [P5];
ffa0367c:	70 b1       	[SP + 0x14] = R0;
ffa0367e:	4f 30       	R1 = FP;
ffa03680:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03684:	12 91 00 00 
ffa03688:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0368a:	ff e3 43 fd 	CALL 0xffa03110 <_tcp_packet_setup>;
ffa0368e:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03692:	00 0d       	CC = R0 <= 0x0;
ffa03694:	5a 1a       	IF CC JUMP 0xffa03348 <_tcp_rx+0xb0>;
ffa03696:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03698:	96 2f       	JUMP.S 0xffa035c4 <_tcp_rx+0x32c>;
ffa0369a:	0e 30       	R1 = R6;
ffa0369c:	00 e3 ba 04 	CALL 0xffa04010 <_httpCollate>;
ffa036a0:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa036a2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa036a6:	f0 b0       	[SP + 0xc] = R0;
ffa036a8:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa036ac:	10 91       	R0 = [P2];
ffa036ae:	14 32       	P2 = R4;
ffa036b0:	30 b1       	[SP + 0x10] = R0;
ffa036b2:	28 91       	R0 = [P5];
ffa036b4:	70 b1       	[SP + 0x14] = R0;
ffa036b6:	4f 30       	R1 = FP;
ffa036b8:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa036bc:	12 91 00 00 
ffa036c0:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa036c2:	ff e3 27 fd 	CALL 0xffa03110 <_tcp_packet_setup>;
ffa036c6:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa036ca:	00 0d       	CC = R0 <= 0x0;
ffa036cc:	b4 16       	IF !CC JUMP 0xffa03434 <_tcp_rx+0x19c> (BP);
ffa036ce:	f1 2d       	JUMP.S 0xffa032b0 <_tcp_rx+0x18>;
ffa036d0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa036d4:	00 e1 74 05 	R0.L = 0x574;		/* (1396)	R0=0xff900574(-7338636) */
ffa036d8:	ff e3 c2 eb 	CALL 0xffa00e5c <_printf_str>;
ffa036dc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa036de:	ea 2d       	JUMP.S 0xffa032b2 <_tcp_rx+0x1a>;
ffa036e0:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa036e4:	27 2e       	JUMP.S 0xffa03332 <_tcp_rx+0x9a>;
ffa036e6:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa036e8:	18 93       	[P3] = R0;
ffa036ea:	a0 a2       	R0 = [P4 + 0x28];
ffa036ec:	ff e3 24 f0 	CALL 0xffa01734 <_htonl>;
ffa036f0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa036f4:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa036f8:	10 93       	[P2] = R0;
ffa036fa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa036fe:	00 e1 54 05 	R0.L = 0x554;		/* (1364)	R0=0xff900554(-7338668) */
ffa03702:	ff e3 ad eb 	CALL 0xffa00e5c <_printf_str>;
ffa03706:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03708:	d5 2d       	JUMP.S 0xffa032b2 <_tcp_rx+0x1a>;
	...

ffa0370c <_htmlForm>:
ffa0370c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03710:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa03714:	02 e1 c0 05 	R2.L = 0x5c0;		/* (1472)	R2=0xff9005c0(-7338560) */
ffa03718:	01 e8 00 00 	UNLINK;
ffa0371c:	ff e2 78 ed 	JUMP.L 0xffa0120c <_strcpy_>;

ffa03720 <_htmlDiv>:
ffa03720:	12 43       	R2 = R2.B (X);
ffa03722:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa03726:	1a 08       	CC = R2 == R3;
ffa03728:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0372c:	09 18       	IF CC JUMP 0xffa0373e <_htmlDiv+0x1e>;
ffa0372e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005c0(-7338560) */
ffa03732:	02 e1 14 06 	R2.L = 0x614;		/* (1556)	R2=0xff900614(-7338476) */
ffa03736:	01 e8 00 00 	UNLINK;
ffa0373a:	ff e2 69 ed 	JUMP.L 0xffa0120c <_strcpy_>;
ffa0373e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900614(-7338476) */
ffa03742:	02 e1 e0 05 	R2.L = 0x5e0;		/* (1504)	R2=0xff9005e0(-7338528) */
ffa03746:	01 e8 00 00 	UNLINK;
ffa0374a:	ff e2 61 ed 	JUMP.L 0xffa0120c <_strcpy_>;
	...

ffa03750 <_html404>:
ffa03750:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03754:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03756:	4f 30       	R1 = FP;
ffa03758:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005e0(-7338528) */
ffa0375c:	f0 bb       	[FP -0x4] = R0;
ffa0375e:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03760:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03764:	02 e1 48 06 	R2.L = 0x648;		/* (1608)	R2=0xff900648(-7338424) */
ffa03768:	ff e3 52 ed 	CALL 0xffa0120c <_strcpy_>;
ffa0376c:	f0 b9       	R0 = [FP -0x4];
ffa0376e:	01 e8 00 00 	UNLINK;
ffa03772:	10 00       	RTS;

ffa03774 <_htmlCursorOption>:
ffa03774:	68 05       	[--SP] = (R7:5);
ffa03776:	2a 30       	R5 = R2;
ffa03778:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900648(-7338424) */
ffa0377c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03780:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa03784:	3f a2 00 00 
ffa03788:	02 e1 64 06 	R2.L = 0x664;		/* (1636)	R2=0xff900664(-7338396) */
ffa0378c:	ff e3 40 ed 	CALL 0xffa0120c <_strcpy_>;
ffa03790:	0e 30       	R1 = R6;
ffa03792:	15 30       	R2 = R5;
ffa03794:	ff e3 a2 ee 	CALL 0xffa014d8 <_strprintf_int>;
ffa03798:	3d 08       	CC = R5 == R7;
ffa0379a:	16 18       	IF CC JUMP 0xffa037c6 <_htmlCursorOption+0x52>;
ffa0379c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900664(-7338396) */
ffa037a0:	0e 30       	R1 = R6;
ffa037a2:	02 e1 8c 06 	R2.L = 0x68c;		/* (1676)	R2=0xff90068c(-7338356) */
ffa037a6:	ff e3 33 ed 	CALL 0xffa0120c <_strcpy_>;
ffa037aa:	0e 30       	R1 = R6;
ffa037ac:	15 30       	R2 = R5;
ffa037ae:	ff e3 95 ee 	CALL 0xffa014d8 <_strprintf_int>;
ffa037b2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90068c(-7338356) */
ffa037b6:	01 e8 00 00 	UNLINK;
ffa037ba:	0e 30       	R1 = R6;
ffa037bc:	02 e1 90 06 	R2.L = 0x690;		/* (1680)	R2=0xff900690(-7338352) */
ffa037c0:	28 05       	(R7:5) = [SP++];
ffa037c2:	ff e2 25 ed 	JUMP.L 0xffa0120c <_strcpy_>;
ffa037c6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900690(-7338352) */
ffa037ca:	0e 30       	R1 = R6;
ffa037cc:	02 e1 74 06 	R2.L = 0x674;		/* (1652)	R2=0xff900674(-7338380) */
ffa037d0:	ff e3 1e ed 	CALL 0xffa0120c <_strcpy_>;
ffa037d4:	e4 2f       	JUMP.S 0xffa0379c <_htmlCursorOption+0x28>;
	...

ffa037d8 <_htmlCursorSelect>:
ffa037d8:	60 05       	[--SP] = (R7:4);
ffa037da:	3a 30       	R7 = R2;
ffa037dc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900674(-7338380) */
ffa037e0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa037e4:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa037e8:	7e a2 00 00 
ffa037ec:	02 e1 9c 06 	R2.L = 0x69c;		/* (1692)	R2=0xff90069c(-7338340) */
ffa037f0:	bc a2       	R4 = [FP + 0x28];
ffa037f2:	ff e3 0d ed 	CALL 0xffa0120c <_strcpy_>;
ffa037f6:	17 30       	R2 = R7;
ffa037f8:	0d 30       	R1 = R5;
ffa037fa:	ff e3 09 ed 	CALL 0xffa0120c <_strcpy_>;
ffa037fe:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90069c(-7338340) */
ffa03802:	0d 30       	R1 = R5;
ffa03804:	02 e1 a8 06 	R2.L = 0x6a8;		/* (1704)	R2=0xff9006a8(-7338328) */
ffa03808:	ff e3 02 ed 	CALL 0xffa0120c <_strcpy_>;
ffa0380c:	0d 30       	R1 = R5;
ffa0380e:	16 30       	R2 = R6;
ffa03810:	ff e3 fe ec 	CALL 0xffa0120c <_strcpy_>;
ffa03814:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006a8(-7338328) */
ffa03818:	0d 30       	R1 = R5;
ffa0381a:	02 e1 c4 06 	R2.L = 0x6c4;		/* (1732)	R2=0xff9006c4(-7338300) */
ffa0381e:	ff e3 f7 ec 	CALL 0xffa0120c <_strcpy_>;
ffa03822:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03824:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa03828:	f4 b0 00 00 
ffa0382c:	17 30       	R2 = R7;
ffa0382e:	ff e3 a3 ff 	CALL 0xffa03774 <_htmlCursorOption>;
ffa03832:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03834:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03836:	0f 08       	CC = R7 == R1;
ffa03838:	f6 17       	IF !CC JUMP 0xffa03824 <_htmlCursorSelect+0x4c> (BP);
ffa0383a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c4(-7338300) */
ffa0383e:	01 e8 00 00 	UNLINK;
ffa03842:	0d 30       	R1 = R5;
ffa03844:	02 e1 c8 06 	R2.L = 0x6c8;		/* (1736)	R2=0xff9006c8(-7338296) */
ffa03848:	20 05       	(R7:4) = [SP++];
ffa0384a:	ff e2 e1 ec 	JUMP.L 0xffa0120c <_strcpy_>;
	...

ffa03850 <_htmlDefault>:
ffa03850:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03852:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03856:	77 30       	R6 = FP;
ffa03858:	e6 67       	R6 += -0x4;		/* ( -4) */
ffa0385a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0385c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c8(-7338296) */
ffa03860:	f0 bb       	[FP -0x4] = R0;
ffa03862:	0e 30       	R1 = R6;
ffa03864:	02 e1 e0 06 	R2.L = 0x6e0;		/* (1760)	R2=0xff9006e0(-7338272) */
ffa03868:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa0386c:	ff e3 d0 ec 	CALL 0xffa0120c <_strcpy_>;
ffa03870:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03874:	0e 30       	R1 = R6;
ffa03876:	ff e3 55 ff 	CALL 0xffa03720 <_htmlDiv>;
ffa0387a:	0e 30       	R1 = R6;
ffa0387c:	ff e3 48 ff 	CALL 0xffa0370c <_htmlForm>;
ffa03880:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03884:	0e 30       	R1 = R6;
ffa03886:	02 e1 30 07 	R2.L = 0x730;		/* (1840)	R2=0xff900730(-7338192) */
ffa0388a:	ff e3 c1 ec 	CALL 0xffa0120c <_strcpy_>;
ffa0388e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa03892:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa03896:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa0389a:	10 99 00 00 
ffa0389e:	00 0c       	CC = R0 == 0x0;
ffa038a0:	2c 1d       	IF CC JUMP 0xffa03af8 <_htmlDefault+0x2a8> (BP);
ffa038a2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900730(-7338192) */
ffa038a6:	01 30       	R0 = R1;
ffa038a8:	02 e1 80 07 	R2.L = 0x780;		/* (1920)	R2=0xff900780(-7338112) */
ffa038ac:	0e 30       	R1 = R6;
ffa038ae:	ff e3 af ec 	CALL 0xffa0120c <_strcpy_>;
ffa038b2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900780(-7338112) */
ffa038b6:	0e 30       	R1 = R6;
ffa038b8:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa038bc:	ff e3 a8 ec 	CALL 0xffa0120c <_strcpy_>;
ffa038c0:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa038c4:	0e 30       	R1 = R6;
ffa038c6:	ff e3 2d ff 	CALL 0xffa03720 <_htmlDiv>;
ffa038ca:	0e 30       	R1 = R6;
ffa038cc:	ff e3 20 ff 	CALL 0xffa0370c <_htmlForm>;
ffa038d0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa038d4:	0e 30       	R1 = R6;
ffa038d6:	02 e1 ac 07 	R2.L = 0x7ac;		/* (1964)	R2=0xff9007ac(-7338068) */
ffa038da:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d38 <_TcpSeqHost> */
ffa038de:	ff e3 97 ec 	CALL 0xffa0120c <_strcpy_>;
ffa038e2:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa038e4:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa038e6:	0d e1 64 0c 	P5.L = 0xc64;		/* (3172)	P5=0xff900c64 <_NetDataDestIP> */
ffa038ea:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007ac(-7338068) */
ffa038ee:	0e 30       	R1 = R6;
ffa038f0:	02 e1 c8 07 	R2.L = 0x7c8;		/* (1992)	R2=0xff9007c8(-7338040) */
ffa038f4:	ff e3 8c ec 	CALL 0xffa0120c <_strcpy_>;
ffa038f8:	17 30       	R2 = R7;
ffa038fa:	0e 30       	R1 = R6;
ffa038fc:	ff e3 ee ed 	CALL 0xffa014d8 <_strprintf_int>;
ffa03900:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007c8(-7338040) */
ffa03904:	0e 30       	R1 = R6;
ffa03906:	02 e1 e4 07 	R2.L = 0x7e4;		/* (2020)	R2=0xff9007e4(-7338012) */
ffa0390a:	ff e3 81 ec 	CALL 0xffa0120c <_strcpy_>;
ffa0390e:	2a 91       	R2 = [P5];
ffa03910:	6a 40       	R2 >>= R5;
ffa03912:	52 43       	R2 = R2.B (Z);
ffa03914:	0e 30       	R1 = R6;
ffa03916:	ff e3 e1 ed 	CALL 0xffa014d8 <_strprintf_int>;
ffa0391a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007e4(-7338012) */
ffa0391e:	0e 30       	R1 = R6;
ffa03920:	02 e1 f8 07 	R2.L = 0x7f8;		/* (2040)	R2=0xff9007f8(-7337992) */
ffa03924:	ff e3 74 ec 	CALL 0xffa0120c <_strcpy_>;
ffa03928:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0392a:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0392c:	0f 08       	CC = R7 == R1;
ffa0392e:	45 64       	R5 += 0x8;		/* (  8) */
ffa03930:	dd 17       	IF !CC JUMP 0xffa038ea <_htmlDefault+0x9a> (BP);
ffa03932:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007f8(-7337992) */
ffa03936:	0e 30       	R1 = R6;
ffa03938:	02 e1 00 08 	R2.L = 0x800;		/* (2048)	R2=0xff900800(-7337984) */
ffa0393c:	ff e3 68 ec 	CALL 0xffa0120c <_strcpy_>;
ffa03940:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900800(-7337984) */
ffa03944:	0e 30       	R1 = R6;
ffa03946:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa0394a:	ff e3 61 ec 	CALL 0xffa0120c <_strcpy_>;
ffa0394e:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03952:	0e 30       	R1 = R6;
ffa03954:	ff e3 e6 fe 	CALL 0xffa03720 <_htmlDiv>;
ffa03958:	0e 30       	R1 = R6;
ffa0395a:	ff e3 d9 fe 	CALL 0xffa0370c <_htmlForm>;
ffa0395e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03962:	0e 30       	R1 = R6;
ffa03964:	02 e1 24 08 	R2.L = 0x824;		/* (2084)	R2=0xff900824(-7337948) */
ffa03968:	ff e3 52 ec 	CALL 0xffa0120c <_strcpy_>;
ffa0396c:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bb8 */
ffa03970:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03974:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03978:	10 99 00 00 
ffa0397c:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0397e:	c6 1c       	IF CC JUMP 0xffa03b0a <_htmlDefault+0x2ba> (BP);
ffa03980:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900824(-7337948) */
ffa03984:	01 30       	R0 = R1;
ffa03986:	02 e1 8c 07 	R2.L = 0x78c;		/* (1932)	R2=0xff90078c(-7338100) */
ffa0398a:	0e 30       	R1 = R6;
ffa0398c:	ff e3 40 ec 	CALL 0xffa0120c <_strcpy_>;
ffa03990:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90078c(-7338100) */
ffa03994:	0e 30       	R1 = R6;
ffa03996:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa0399a:	ff e3 39 ec 	CALL 0xffa0120c <_strcpy_>;
ffa0399e:	0e 30       	R1 = R6;
ffa039a0:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa039a4:	ff e3 be fe 	CALL 0xffa03720 <_htmlDiv>;
ffa039a8:	0e 30       	R1 = R6;
ffa039aa:	ff e3 b1 fe 	CALL 0xffa0370c <_htmlForm>;
ffa039ae:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa039b2:	0e 30       	R1 = R6;
ffa039b4:	02 e1 64 08 	R2.L = 0x864;		/* (2148)	R2=0xff900864(-7337884) */
ffa039b8:	ff e3 2a ec 	CALL 0xffa0120c <_strcpy_>;
ffa039bc:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa039c0:	01 e1 94 08 	R1.L = 0x894;		/* (2196)	R1=0xff900894(-7337836) */
ffa039c4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900864(-7337884) */
ffa039c8:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa039cc:	f1 b0 00 00 
ffa039d0:	02 e1 88 08 	R2.L = 0x888;		/* (2184)	R2=0xff900888(-7337848) */
ffa039d4:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa039d8:	37 b1 00 00 
ffa039dc:	ff e3 fe fe 	CALL 0xffa037d8 <_htmlCursorSelect>;
ffa039e0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900894(-7337836) */
ffa039e4:	01 e1 ac 08 	R1.L = 0x8ac;		/* (2220)	R1=0xff9008ac(-7337812) */
ffa039e8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900888(-7337848) */
ffa039ec:	f1 b0       	[SP + 0xc] = R1;
ffa039ee:	02 e1 a0 08 	R2.L = 0x8a0;		/* (2208)	R2=0xff9008a0(-7337824) */
ffa039f2:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa039f6:	37 b1 00 00 
ffa039fa:	ff e3 ef fe 	CALL 0xffa037d8 <_htmlCursorSelect>;
ffa039fe:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008ac(-7337812) */
ffa03a02:	01 e1 c4 08 	R1.L = 0x8c4;		/* (2244)	R1=0xff9008c4(-7337788) */
ffa03a06:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a0(-7337824) */
ffa03a0a:	f1 b0       	[SP + 0xc] = R1;
ffa03a0c:	02 e1 b8 08 	R2.L = 0x8b8;		/* (2232)	R2=0xff9008b8(-7337800) */
ffa03a10:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03a14:	37 b1 00 00 
ffa03a18:	ff e3 e0 fe 	CALL 0xffa037d8 <_htmlCursorSelect>;
ffa03a1c:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008c4(-7337788) */
ffa03a20:	01 e1 d8 08 	R1.L = 0x8d8;		/* (2264)	R1=0xff9008d8(-7337768) */
ffa03a24:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008b8(-7337800) */
ffa03a28:	f1 b0       	[SP + 0xc] = R1;
ffa03a2a:	02 e1 d0 08 	R2.L = 0x8d0;		/* (2256)	R2=0xff9008d0(-7337776) */
ffa03a2e:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03a32:	37 b1 00 00 
ffa03a36:	ff e3 d1 fe 	CALL 0xffa037d8 <_htmlCursorSelect>;
ffa03a3a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008d0(-7337776) */
ffa03a3e:	0e 30       	R1 = R6;
ffa03a40:	02 e1 e4 08 	R2.L = 0x8e4;		/* (2276)	R2=0xff9008e4(-7337756) */
ffa03a44:	ff e3 e4 eb 	CALL 0xffa0120c <_strcpy_>;
ffa03a48:	0e 30       	R1 = R6;
ffa03a4a:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03a4e:	ff e3 69 fe 	CALL 0xffa03720 <_htmlDiv>;
ffa03a52:	0e 30       	R1 = R6;
ffa03a54:	ff e3 5c fe 	CALL 0xffa0370c <_htmlForm>;
ffa03a58:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03a5c:	0e 30       	R1 = R6;
ffa03a5e:	02 e1 20 09 	R2.L = 0x920;		/* (2336)	R2=0xff900920(-7337696) */
ffa03a62:	ff e3 d5 eb 	CALL 0xffa0120c <_strcpy_>;
ffa03a66:	0e 30       	R1 = R6;
ffa03a68:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03a6c:	ff e3 5a fe 	CALL 0xffa03720 <_htmlDiv>;
ffa03a70:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03a74:	0e 30       	R1 = R6;
ffa03a76:	02 e1 78 09 	R2.L = 0x978;		/* (2424)	R2=0xff900978(-7337608) */
ffa03a7a:	ff e3 c9 eb 	CALL 0xffa0120c <_strcpy_>;
ffa03a7e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900978(-7337608) */
ffa03a82:	0e 30       	R1 = R6;
ffa03a84:	02 e1 a0 09 	R2.L = 0x9a0;		/* (2464)	R2=0xff9009a0(-7337568) */
ffa03a88:	ff e3 c2 eb 	CALL 0xffa0120c <_strcpy_>;
ffa03a8c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009a0(-7337568) */
ffa03a90:	0e 30       	R1 = R6;
ffa03a92:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03a96:	ff e3 bb eb 	CALL 0xffa0120c <_strcpy_>;
ffa03a9a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900798(-7338088) */
ffa03a9e:	0e 30       	R1 = R6;
ffa03aa0:	02 e1 e8 09 	R2.L = 0x9e8;		/* (2536)	R2=0xff9009e8(-7337496) */
ffa03aa4:	ff e3 b4 eb 	CALL 0xffa0120c <_strcpy_>;
ffa03aa8:	0e 30       	R1 = R6;
ffa03aaa:	22 e1 75 ff 	R2 = -0x8b (X);		/*		R2=0xffffff75(-139) */
ffa03aae:	ff e3 15 ed 	CALL 0xffa014d8 <_strprintf_int>;
ffa03ab2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ff75(-7274635) */
ffa03ab6:	0e 30       	R1 = R6;
ffa03ab8:	02 e1 b0 00 	R2.L = 0xb0;		/* (176)	R2=0xff9000b0(-7339856) */
ffa03abc:	ff e3 a8 eb 	CALL 0xffa0120c <_strcpy_>;
ffa03ac0:	0e 30       	R1 = R6;
ffa03ac2:	92 62       	R2 = -0x2e (X);		/*		R2=0xffffffd2(-46) */
ffa03ac4:	ff e3 0a ed 	CALL 0xffa014d8 <_strprintf_int>;
ffa03ac8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ffd2(-7274542) */
ffa03acc:	0e 30       	R1 = R6;
ffa03ace:	02 e1 88 00 	R2.L = 0x88;		/* (136)	R2=0xff900088(-7339896) */
ffa03ad2:	ff e3 9d eb 	CALL 0xffa0120c <_strcpy_>;
ffa03ad6:	0e 30       	R1 = R6;
ffa03ad8:	22 e1 d0 fd 	R2 = -0x230 (X);		/*		R2=0xfffffdd0(-560) */
ffa03adc:	ff e3 fe ec 	CALL 0xffa014d8 <_strprintf_int>;
ffa03ae0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90fdd0(-7275056) */
ffa03ae4:	0e 30       	R1 = R6;
ffa03ae6:	02 e1 f4 09 	R2.L = 0x9f4;		/* (2548)	R2=0xff9009f4(-7337484) */
ffa03aea:	ff e3 91 eb 	CALL 0xffa0120c <_strcpy_>;
ffa03aee:	f0 b9       	R0 = [FP -0x4];
ffa03af0:	01 e8 00 00 	UNLINK;
ffa03af4:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03af6:	10 00       	RTS;
ffa03af8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009f4(-7337484) */
ffa03afc:	01 30       	R0 = R1;
ffa03afe:	02 e1 8c 07 	R2.L = 0x78c;		/* (1932)	R2=0xff90078c(-7338100) */
ffa03b02:	0e 30       	R1 = R6;
ffa03b04:	ff e3 84 eb 	CALL 0xffa0120c <_strcpy_>;
ffa03b08:	d5 2e       	JUMP.S 0xffa038b2 <_htmlDefault+0x62>;
ffa03b0a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90078c(-7338100) */
ffa03b0e:	01 30       	R0 = R1;
ffa03b10:	02 e1 80 07 	R2.L = 0x780;		/* (1920)	R2=0xff900780(-7338112) */
ffa03b14:	0e 30       	R1 = R6;
ffa03b16:	ff e3 7b eb 	CALL 0xffa0120c <_strcpy_>;
ffa03b1a:	3b 2f       	JUMP.S 0xffa03990 <_htmlDefault+0x140>;

ffa03b1c <_httpHeader>:
ffa03b1c:	78 05       	[--SP] = (R7:7);
ffa03b1e:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03b22:	7f 30       	R7 = FP;
ffa03b24:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03b26:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b28:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900780(-7338112) */
ffa03b2c:	f0 bb       	[FP -0x4] = R0;
ffa03b2e:	0f 30       	R1 = R7;
ffa03b30:	02 e1 0c 0a 	R2.L = 0xa0c;		/* (2572)	R2=0xff900a0c(-7337460) */
ffa03b34:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03b38:	ff e3 6a eb 	CALL 0xffa0120c <_strcpy_>;
ffa03b3c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a0c(-7337460) */
ffa03b40:	0f 30       	R1 = R7;
ffa03b42:	02 e1 20 0a 	R2.L = 0xa20;		/* (2592)	R2=0xff900a20(-7337440) */
ffa03b46:	ff e3 63 eb 	CALL 0xffa0120c <_strcpy_>;
ffa03b4a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a20(-7337440) */
ffa03b4e:	0f 30       	R1 = R7;
ffa03b50:	02 e1 34 0a 	R2.L = 0xa34;		/* (2612)	R2=0xff900a34(-7337420) */
ffa03b54:	ff e3 5c eb 	CALL 0xffa0120c <_strcpy_>;
ffa03b58:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa03b5c:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03b60:	12 91       	R2 = [P2];
ffa03b62:	0f 30       	R1 = R7;
ffa03b64:	ff e3 ba ec 	CALL 0xffa014d8 <_strprintf_int>;
ffa03b68:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a34(-7337420) */
ffa03b6c:	0f 30       	R1 = R7;
ffa03b6e:	02 e1 48 0a 	R2.L = 0xa48;		/* (2632)	R2=0xff900a48(-7337400) */
ffa03b72:	ff e3 4d eb 	CALL 0xffa0120c <_strcpy_>;
ffa03b76:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa03b7a:	f0 b9       	R0 = [FP -0x4];
ffa03b7c:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa03b80:	10 93       	[P2] = R0;
ffa03b82:	01 e8 00 00 	UNLINK;
ffa03b86:	38 05       	(R7:7) = [SP++];
ffa03b88:	10 00       	RTS;
	...

ffa03b8c <_htmlGeneric>:
ffa03b8c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03b90:	10 30       	R2 = R0;
ffa03b92:	4f 30       	R1 = FP;
ffa03b94:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b96:	f0 bb       	[FP -0x4] = R0;
ffa03b98:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03b9a:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03b9e:	ff e3 37 eb 	CALL 0xffa0120c <_strcpy_>;
ffa03ba2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa03ba6:	f0 b9       	R0 = [FP -0x4];
ffa03ba8:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03bac:	10 93       	[P2] = R0;
ffa03bae:	ff e3 b7 ff 	CALL 0xffa03b1c <_httpHeader>;
ffa03bb2:	f0 b9       	R0 = [FP -0x4];
ffa03bb4:	01 e8 00 00 	UNLINK;
ffa03bb8:	10 00       	RTS;
	...

ffa03bbc <_httpResp>:
ffa03bbc:	60 05       	[--SP] = (R7:4);
ffa03bbe:	30 30       	R6 = R0;
ffa03bc0:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa03bc2:	01 09       	CC = R1 <= R0;
ffa03bc4:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa03bc8:	39 30       	R7 = R1;
ffa03bca:	21 10       	IF !CC JUMP 0xffa03c0c <_httpResp+0x50>;
ffa03bcc:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa03bce:	0f 09       	CC = R7 <= R1;
ffa03bd0:	34 10       	IF !CC JUMP 0xffa03c38 <_httpResp+0x7c>;
ffa03bd2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa03bd6:	00 e1 04 0a 	R0.L = 0xa04;		/* (2564)	R0=0xff900a04(-7337468) */
ffa03bda:	0e 30       	R1 = R6;
ffa03bdc:	17 30       	R2 = R7;
ffa03bde:	ff e3 85 eb 	CALL 0xffa012e8 <_substr>;
ffa03be2:	00 0c       	CC = R0 == 0x0;
ffa03be4:	06 10       	IF !CC JUMP 0xffa03bf0 <_httpResp+0x34>;
ffa03be6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03be8:	01 e8 00 00 	UNLINK;
ffa03bec:	20 05       	(R7:4) = [SP++];
ffa03bee:	10 00       	RTS;
ffa03bf0:	ff e3 b0 fd 	CALL 0xffa03750 <_html404>;
ffa03bf4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa03bf8:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03bfc:	10 93       	[P2] = R0;
ffa03bfe:	ff e3 8f ff 	CALL 0xffa03b1c <_httpHeader>;
ffa03c02:	01 e8 00 00 	UNLINK;
ffa03c06:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03c08:	20 05       	(R7:4) = [SP++];
ffa03c0a:	10 00       	RTS;
ffa03c0c:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa03c10:	06 30       	R0 = R6;
ffa03c12:	01 e1 68 0a 	R1.L = 0xa68;		/* (2664)	R1=0xff900a68(-7337368) */
ffa03c16:	ff e3 3b eb 	CALL 0xffa0128c <_strcmp>;
ffa03c1a:	00 0c       	CC = R0 == 0x0;
ffa03c1c:	d8 1f       	IF CC JUMP 0xffa03bcc <_httpResp+0x10> (BP);
ffa03c1e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03c22:	00 e1 04 0a 	R0.L = 0xa04;		/* (2564)	R0=0xff900a04(-7337468) */
ffa03c26:	0e 30       	R1 = R6;
ffa03c28:	17 30       	R2 = R7;
ffa03c2a:	ff e3 5f eb 	CALL 0xffa012e8 <_substr>;
ffa03c2e:	00 0c       	CC = R0 == 0x0;
ffa03c30:	db 1f       	IF CC JUMP 0xffa03be6 <_httpResp+0x2a> (BP);
ffa03c32:	ff e3 0f fe 	CALL 0xffa03850 <_htmlDefault>;
ffa03c36:	df 2f       	JUMP.S 0xffa03bf4 <_httpResp+0x38>;
ffa03c38:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a04(-7337468) */
ffa03c3c:	00 e1 74 0a 	R0.L = 0xa74;		/* (2676)	R0=0xff900a74(-7337356) */
ffa03c40:	0e 30       	R1 = R6;
ffa03c42:	17 30       	R2 = R7;
ffa03c44:	ff e3 52 eb 	CALL 0xffa012e8 <_substr>;
ffa03c48:	00 0c       	CC = R0 == 0x0;
ffa03c4a:	3c 1c       	IF CC JUMP 0xffa03cc2 <_httpResp+0x106> (BP);
ffa03c4c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a74(-7337356) */
ffa03c50:	00 e1 80 0a 	R0.L = 0xa80;		/* (2688)	R0=0xff900a80(-7337344) */
ffa03c54:	0e 30       	R1 = R6;
ffa03c56:	17 30       	R2 = R7;
ffa03c58:	ff e3 48 eb 	CALL 0xffa012e8 <_substr>;
ffa03c5c:	00 0c       	CC = R0 == 0x0;
ffa03c5e:	c4 1f       	IF CC JUMP 0xffa03be6 <_httpResp+0x2a> (BP);
ffa03c60:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa03c62:	06 50       	R0 = R6 + R0;
ffa03c64:	ff e3 62 ec 	CALL 0xffa01528 <_atoi>;
ffa03c68:	08 30       	R1 = R0;
ffa03c6a:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa03c6e:	00 67       	R0 += -0x20;		/* (-32) */
ffa03c70:	10 0a       	CC = R0 <= R2 (IU);
ffa03c72:	24 11       	IF !CC JUMP 0xffa03eba <_httpResp+0x2fe>;
ffa03c74:	82 c6 19 84 	R2 = R1 << 0x3;
ffa03c78:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800d58 */
ffa03c7c:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03c80:	02 0d       	CC = R2 <= 0x0;
ffa03c82:	13 91       	R3 = [P2];
ffa03c84:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa03c88:	14 18       	IF CC JUMP 0xffa03cb0 <_httpResp+0xf4>;
ffa03c8a:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa03c8e:	28 4f       	R0 <<= 0x5;
ffa03c90:	03 54       	R0 = R3 & R0;
ffa03c92:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa03c94:	38 52       	R0 = R0 - R7;
ffa03c96:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa03c9a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03c9c:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa03ca0:	18 54       	R0 = R0 & R3;
ffa03ca2:	10 32       	P2 = R0;
ffa03ca4:	09 64       	R1 += 0x1;		/* (  1) */
ffa03ca6:	0a 08       	CC = R2 == R1;
ffa03ca8:	10 90       	R0 = [P2++];
ffa03caa:	08 92       	[P1++] = R0;
ffa03cac:	42 30       	R0 = P2;
ffa03cae:	f9 17       	IF !CC JUMP 0xffa03ca0 <_httpResp+0xe4> (BP);
ffa03cb0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900804 */
ffa03cb4:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03cb8:	17 93       	[P2] = R7;
ffa03cba:	ff e3 31 ff 	CALL 0xffa03b1c <_httpHeader>;
ffa03cbe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03cc0:	94 2f       	JUMP.S 0xffa03be8 <_httpResp+0x2c>;
ffa03cc2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03cc6:	00 e1 b4 0a 	R0.L = 0xab4;		/* (2740)	R0=0xff900ab4(-7337292) */
ffa03cca:	0e 30       	R1 = R6;
ffa03ccc:	17 30       	R2 = R7;
ffa03cce:	ff e3 0d eb 	CALL 0xffa012e8 <_substr>;
ffa03cd2:	00 0c       	CC = R0 == 0x0;
ffa03cd4:	7f 1f       	IF CC JUMP 0xffa03bd2 <_httpResp+0x16> (BP);
ffa03cd6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ab4(-7337292) */
ffa03cda:	0e 30       	R1 = R6;
ffa03cdc:	17 30       	R2 = R7;
ffa03cde:	00 e1 b4 0a 	R0.L = 0xab4;		/* (2740)	R0=0xff900ab4(-7337292) */
ffa03ce2:	ff e3 03 eb 	CALL 0xffa012e8 <_substr>;
ffa03ce6:	86 51       	R6 = R6 + R0;
ffa03ce8:	47 53       	R5 = R7 - R0;
ffa03cea:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ab4(-7337292) */
ffa03cee:	00 e1 bc 0a 	R0.L = 0xabc;		/* (2748)	R0=0xff900abc(-7337284) */
ffa03cf2:	0e 30       	R1 = R6;
ffa03cf4:	15 30       	R2 = R5;
ffa03cf6:	ff e3 f9 ea 	CALL 0xffa012e8 <_substr>;
ffa03cfa:	00 0c       	CC = R0 == 0x0;
ffa03cfc:	10 11       	IF !CC JUMP 0xffa03f1c <_httpResp+0x360>;
ffa03cfe:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03d00:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900abc(-7337284) */
ffa03d04:	00 e1 e0 0a 	R0.L = 0xae0;		/* (2784)	R0=0xff900ae0(-7337248) */
ffa03d08:	0e 30       	R1 = R6;
ffa03d0a:	15 30       	R2 = R5;
ffa03d0c:	ff e3 ee ea 	CALL 0xffa012e8 <_substr>;
ffa03d10:	00 0c       	CC = R0 == 0x0;
ffa03d12:	e2 10       	IF !CC JUMP 0xffa03ed6 <_httpResp+0x31a>;
ffa03d14:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ae0(-7337248) */
ffa03d18:	0e 30       	R1 = R6;
ffa03d1a:	00 e1 ec 0a 	R0.L = 0xaec;		/* (2796)	R0=0xff900aec(-7337236) */
ffa03d1e:	15 30       	R2 = R5;
ffa03d20:	ff e3 e4 ea 	CALL 0xffa012e8 <_substr>;
ffa03d24:	00 0c       	CC = R0 == 0x0;
ffa03d26:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900aec(-7337236) */
ffa03d2a:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03d2c:	0e 30       	R1 = R6;
ffa03d2e:	15 30       	R2 = R5;
ffa03d30:	00 e1 f8 0a 	R0.L = 0xaf8;		/* (2808)	R0=0xff900af8(-7337224) */
ffa03d34:	27 06       	IF !CC R4 = R7;
ffa03d36:	ff e3 d9 ea 	CALL 0xffa012e8 <_substr>;
ffa03d3a:	00 0c       	CC = R0 == 0x0;
ffa03d3c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900af8(-7337224) */
ffa03d40:	0e 30       	R1 = R6;
ffa03d42:	15 30       	R2 = R5;
ffa03d44:	00 e1 04 0b 	R0.L = 0xb04;		/* (2820)	R0=0xff900b04(-7337212) */
ffa03d48:	27 06       	IF !CC R4 = R7;
ffa03d4a:	ff e3 cf ea 	CALL 0xffa012e8 <_substr>;
ffa03d4e:	00 0c       	CC = R0 == 0x0;
ffa03d50:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b04(-7337212) */
ffa03d54:	0e 30       	R1 = R6;
ffa03d56:	15 30       	R2 = R5;
ffa03d58:	00 e1 10 0b 	R0.L = 0xb10;		/* (2832)	R0=0xff900b10(-7337200) */
ffa03d5c:	27 06       	IF !CC R4 = R7;
ffa03d5e:	ff e3 c5 ea 	CALL 0xffa012e8 <_substr>;
ffa03d62:	00 0c       	CC = R0 == 0x0;
ffa03d64:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b10(-7337200) */
ffa03d68:	00 e1 1c 0b 	R0.L = 0xb1c;		/* (2844)	R0=0xff900b1c(-7337188) */
ffa03d6c:	0e 30       	R1 = R6;
ffa03d6e:	15 30       	R2 = R5;
ffa03d70:	27 06       	IF !CC R4 = R7;
ffa03d72:	ff e3 bb ea 	CALL 0xffa012e8 <_substr>;
ffa03d76:	00 0c       	CC = R0 == 0x0;
ffa03d78:	15 11       	IF !CC JUMP 0xffa03fa2 <_httpResp+0x3e6>;
ffa03d7a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b1c(-7337188) */
ffa03d7e:	00 e1 24 0b 	R0.L = 0xb24;		/* (2852)	R0=0xff900b24(-7337180) */
ffa03d82:	0e 30       	R1 = R6;
ffa03d84:	15 30       	R2 = R5;
ffa03d86:	ff e3 b1 ea 	CALL 0xffa012e8 <_substr>;
ffa03d8a:	00 0c       	CC = R0 == 0x0;
ffa03d8c:	f6 10       	IF !CC JUMP 0xffa03f78 <_httpResp+0x3bc>;
ffa03d8e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b24(-7337180) */
ffa03d92:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa03d96:	0e 30       	R1 = R6;
ffa03d98:	15 30       	R2 = R5;
ffa03d9a:	ff e3 a7 ea 	CALL 0xffa012e8 <_substr>;
ffa03d9e:	00 0c       	CC = R0 == 0x0;
ffa03da0:	13 11       	IF !CC JUMP 0xffa03fc6 <_httpResp+0x40a>;
ffa03da2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b2c(-7337172) */
ffa03da6:	00 e1 34 0b 	R0.L = 0xb34;		/* (2868)	R0=0xff900b34(-7337164) */
ffa03daa:	0e 30       	R1 = R6;
ffa03dac:	15 30       	R2 = R5;
ffa03dae:	ff e3 9d ea 	CALL 0xffa012e8 <_substr>;
ffa03db2:	00 0c       	CC = R0 == 0x0;
ffa03db4:	d1 10       	IF !CC JUMP 0xffa03f56 <_httpResp+0x39a>;
ffa03db6:	20 43       	R0 = R4.B (X);
ffa03db8:	00 0c       	CC = R0 == 0x0;
ffa03dba:	3c 17       	IF !CC JUMP 0xffa03c32 <_httpResp+0x76> (BP);
ffa03dbc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b34(-7337164) */
ffa03dc0:	00 e1 3c 0b 	R0.L = 0xb3c;		/* (2876)	R0=0xff900b3c(-7337156) */
ffa03dc4:	0e 30       	R1 = R6;
ffa03dc6:	15 30       	R2 = R5;
ffa03dc8:	ff e3 90 ea 	CALL 0xffa012e8 <_substr>;
ffa03dcc:	00 0c       	CC = R0 == 0x0;
ffa03dce:	0c 1b       	IF CC JUMP 0xffa03be6 <_httpResp+0x2a>;
ffa03dd0:	7f 30       	R7 = FP;
ffa03dd2:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03dd6:	57 5a       	P1 = FP + P2;
ffa03dd8:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03dda:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ddc:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa03dde:	b2 e0 02 20 	LSETUP(0xffa03de2 <_httpResp+0x226>, 0xffa03de2 <_httpResp+0x226>) LC1 = P2;
ffa03de2:	08 92       	[P1++] = R0;
ffa03de4:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa03de8:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03dec:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa03df0:	29 4f       	R1 <<= 0x5;
ffa03df2:	10 91       	R0 = [P2];
ffa03df4:	08 54       	R0 = R0 & R1;
ffa03df6:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03df8:	81 4f       	R1 <<= 0x10;
ffa03dfa:	08 50       	R0 = R0 + R1;
ffa03dfc:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03dfe:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa03e02:	88 54       	R2 = R0 & R1;
ffa03e04:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa03e08:	b2 e0 12 10 	LSETUP(0xffa03e0c <_httpResp+0x250>, 0xffa03e2c <_httpResp+0x270>) LC1 = P1;
ffa03e0c:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03e10:	97 5a       	P2 = FP + P2;
ffa03e12:	02 32       	P0 = R2;
ffa03e14:	11 91       	R1 = [P2];
ffa03e16:	12 64       	R2 += 0x2;		/* (  2) */
ffa03e18:	00 94       	R0 = W[P0++] (Z);
ffa03e1a:	41 50       	R1 = R1 + R0;
ffa03e1c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03e1e:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa03e22:	11 92       	[P2++] = R1;
ffa03e24:	82 54       	R2 = R2 & R0;
ffa03e26:	42 30       	R0 = P2;
ffa03e28:	38 08       	CC = R0 == R7;
ffa03e2a:	f4 17       	IF !CC JUMP 0xffa03e12 <_httpResp+0x256> (BP);
ffa03e2c:	00 00       	NOP;
ffa03e2e:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03e32:	97 5a       	P2 = FP + P2;
ffa03e34:	00 00       	NOP;
ffa03e36:	10 91       	R0 = [P2];
ffa03e38:	58 4d       	R0 >>>= 0xb;
ffa03e3a:	10 92       	[P2++] = R0;
ffa03e3c:	4a 30       	R1 = P2;
ffa03e3e:	39 08       	CC = R1 == R7;
ffa03e40:	fa 17       	IF !CC JUMP 0xffa03e34 <_httpResp+0x278> (BP);
ffa03e42:	ff e3 07 fd 	CALL 0xffa03850 <_htmlDefault>;
ffa03e46:	68 67       	R0 += -0x13;		/* (-19) */
ffa03e48:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa03e4c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80(-7336064) */
ffa03e50:	f0 bb       	[FP -0x4] = R0;
ffa03e52:	02 e1 4c 0b 	R2.L = 0xb4c;		/* (2892)	R2=0xff900b4c(-7337140) */
ffa03e56:	08 50       	R0 = R0 + R1;
ffa03e58:	0f 30       	R1 = R7;
ffa03e5a:	ff e3 d9 e9 	CALL 0xffa0120c <_strcpy_>;
ffa03e5e:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa03e62:	f5 b8 00 00 
ffa03e66:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b4c(-7337140) */
ffa03e6a:	0f 30       	R1 = R7;
ffa03e6c:	02 e1 58 0b 	R2.L = 0xb58;		/* (2904)	R2=0xff900b58(-7337128) */
ffa03e70:	ff e3 ce e9 	CALL 0xffa0120c <_strcpy_>;
ffa03e74:	16 30       	R2 = R6;
ffa03e76:	0f 30       	R1 = R7;
ffa03e78:	ff e3 30 eb 	CALL 0xffa014d8 <_strprintf_int>;
ffa03e7c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b58(-7337128) */
ffa03e80:	0f 30       	R1 = R7;
ffa03e82:	02 e1 6c 0b 	R2.L = 0xb6c;		/* (2924)	R2=0xff900b6c(-7337108) */
ffa03e86:	ff e3 c3 e9 	CALL 0xffa0120c <_strcpy_>;
ffa03e8a:	0f 30       	R1 = R7;
ffa03e8c:	15 30       	R2 = R5;
ffa03e8e:	ff e3 25 eb 	CALL 0xffa014d8 <_strprintf_int>;
ffa03e92:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b6c(-7337108) */
ffa03e96:	02 e1 7c 0b 	R2.L = 0xb7c;		/* (2940)	R2=0xff900b7c(-7337092) */
ffa03e9a:	0f 30       	R1 = R7;
ffa03e9c:	ff e3 b8 e9 	CALL 0xffa0120c <_strcpy_>;
ffa03ea0:	0e 64       	R6 += 0x1;		/* (  1) */
ffa03ea2:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa03ea4:	16 08       	CC = R6 == R2;
ffa03ea6:	e0 17       	IF !CC JUMP 0xffa03e66 <_httpResp+0x2aa> (BP);
ffa03ea8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa03eac:	0f 30       	R1 = R7;
ffa03eae:	02 e1 88 0b 	R2.L = 0xb88;		/* (2952)	R2=0xff900b88(-7337080) */
ffa03eb2:	ff e3 ad e9 	CALL 0xffa0120c <_strcpy_>;
ffa03eb6:	f0 b9       	R0 = [FP -0x4];
ffa03eb8:	9e 2e       	JUMP.S 0xffa03bf4 <_httpResp+0x38>;
ffa03eba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ebc:	4f 30       	R1 = FP;
ffa03ebe:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b88(-7337080) */
ffa03ec2:	f0 bb       	[FP -0x4] = R0;
ffa03ec4:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03ec6:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03eca:	02 e1 88 0a 	R2.L = 0xa88;		/* (2696)	R2=0xff900a88(-7337336) */
ffa03ece:	ff e3 9f e9 	CALL 0xffa0120c <_strcpy_>;
ffa03ed2:	f0 b9       	R0 = [FP -0x4];
ffa03ed4:	90 2e       	JUMP.S 0xffa03bf4 <_httpResp+0x38>;
ffa03ed6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa03eda:	00 e1 cc 0a 	R0.L = 0xacc;		/* (2764)	R0=0xff900acc(-7337268) */
ffa03ede:	0e 30       	R1 = R6;
ffa03ee0:	15 30       	R2 = R5;
ffa03ee2:	ff e3 03 ea 	CALL 0xffa012e8 <_substr>;
ffa03ee6:	00 0c       	CC = R0 == 0x0;
ffa03ee8:	08 1c       	IF CC JUMP 0xffa03ef8 <_httpResp+0x33c> (BP);
ffa03eea:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa03eee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ef0:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03ef4:	10 9b       	B[P2] = R0;
ffa03ef6:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03ef8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03efc:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa03f00:	0e 30       	R1 = R6;
ffa03f02:	15 30       	R2 = R5;
ffa03f04:	ff e3 f2 e9 	CALL 0xffa012e8 <_substr>;
ffa03f08:	00 0c       	CC = R0 == 0x0;
ffa03f0a:	05 1f       	IF CC JUMP 0xffa03d14 <_httpResp+0x158> (BP);
ffa03f0c:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa03f10:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03f12:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03f16:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03f18:	10 9b       	B[P2] = R0;
ffa03f1a:	fd 2e       	JUMP.S 0xffa03d14 <_httpResp+0x158>;
ffa03f1c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03f20:	00 e1 cc 0a 	R0.L = 0xacc;		/* (2764)	R0=0xff900acc(-7337268) */
ffa03f24:	0e 30       	R1 = R6;
ffa03f26:	15 30       	R2 = R5;
ffa03f28:	ff e3 e0 e9 	CALL 0xffa012e8 <_substr>;
ffa03f2c:	00 0c       	CC = R0 == 0x0;
ffa03f2e:	61 14       	IF !CC JUMP 0xffa03ff0 <_httpResp+0x434> (BP);
ffa03f30:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03f32:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900acc(-7337268) */
ffa03f36:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa03f3a:	0e 30       	R1 = R6;
ffa03f3c:	15 30       	R2 = R5;
ffa03f3e:	ff e3 d5 e9 	CALL 0xffa012e8 <_substr>;
ffa03f42:	00 0c       	CC = R0 == 0x0;
ffa03f44:	de 1e       	IF CC JUMP 0xffa03d00 <_httpResp+0x144> (BP);
ffa03f46:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa03f4a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03f4c:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa03f50:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03f52:	10 9b       	B[P2] = R0;
ffa03f54:	d6 2e       	JUMP.S 0xffa03d00 <_httpResp+0x144>;
ffa03f56:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa03f58:	06 50       	R0 = R6 + R0;
ffa03f5a:	ff e3 e7 ea 	CALL 0xffa01528 <_atoi>;
ffa03f5e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb8 <_g_streamEnabled> */
ffa03f62:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa03f66:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa03f68:	11 91       	R1 = [P2];
ffa03f6a:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa03f6e:	51 54       	R1 = R1 & R2;
ffa03f70:	c0 4f       	R0 <<= 0x18;
ffa03f72:	41 50       	R1 = R1 + R0;
ffa03f74:	11 93       	[P2] = R1;
ffa03f76:	5e 2e       	JUMP.S 0xffa03c32 <_httpResp+0x76>;
ffa03f78:	86 51       	R6 = R6 + R0;
ffa03f7a:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa03f7c:	45 53       	R5 = R5 - R0;
ffa03f7e:	06 30       	R0 = R6;
ffa03f80:	ff e3 d4 ea 	CALL 0xffa01528 <_atoi>;
ffa03f84:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa03f88:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa03f8c:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa03f8e:	11 91       	R1 = [P2];
ffa03f90:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa03f94:	40 43       	R0 = R0.B (Z);
ffa03f96:	51 54       	R1 = R1 & R2;
ffa03f98:	40 4f       	R0 <<= 0x8;
ffa03f9a:	41 50       	R1 = R1 + R0;
ffa03f9c:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03f9e:	11 93       	[P2] = R1;
ffa03fa0:	f7 2e       	JUMP.S 0xffa03d8e <_httpResp+0x1d2>;
ffa03fa2:	86 51       	R6 = R6 + R0;
ffa03fa4:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa03fa6:	45 53       	R5 = R5 - R0;
ffa03fa8:	06 30       	R0 = R6;
ffa03faa:	ff e3 bf ea 	CALL 0xffa01528 <_atoi>;
ffa03fae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa03fb2:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa03fb6:	11 91       	R1 = [P2];
ffa03fb8:	41 4d       	R1 >>>= 0x8;
ffa03fba:	41 4f       	R1 <<= 0x8;
ffa03fbc:	40 43       	R0 = R0.B (Z);
ffa03fbe:	08 50       	R0 = R0 + R1;
ffa03fc0:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03fc2:	10 93       	[P2] = R0;
ffa03fc4:	db 2e       	JUMP.S 0xffa03d7a <_httpResp+0x1be>;
ffa03fc6:	86 51       	R6 = R6 + R0;
ffa03fc8:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa03fca:	45 53       	R5 = R5 - R0;
ffa03fcc:	06 30       	R0 = R6;
ffa03fce:	ff e3 ad ea 	CALL 0xffa01528 <_atoi>;
ffa03fd2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa03fd6:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa03fda:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa03fdc:	11 91       	R1 = [P2];
ffa03fde:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa03fe2:	40 43       	R0 = R0.B (Z);
ffa03fe4:	51 54       	R1 = R1 & R2;
ffa03fe6:	80 4f       	R0 <<= 0x10;
ffa03fe8:	41 50       	R1 = R1 + R0;
ffa03fea:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03fec:	11 93       	[P2] = R1;
ffa03fee:	da 2e       	JUMP.S 0xffa03da2 <_httpResp+0x1e6>;
ffa03ff0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa03ff4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03ff6:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa03ffa:	10 9b       	B[P2] = R0;
ffa03ffc:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bb8 */
ffa04000:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa04004:	10 91       	R0 = [P2];
ffa04006:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04008:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0400a:	10 93       	[P2] = R0;
ffa0400c:	93 2f       	JUMP.S 0xffa03f32 <_httpResp+0x376>;
	...

ffa04010 <_httpCollate>:
ffa04010:	fd 05       	[--SP] = (R7:7, P5:5);
ffa04012:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c64 <_NetDataDestIP> */
ffa04016:	0d e1 5c 0d 	P5.L = 0xd5c;		/* (3420)	P5=0xff900d5c <_g_httpRxed> */
ffa0401a:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa0401c:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R1 = [P5] || NOP;
ffa04020:	29 91 00 00 
ffa04024:	82 4f       	R2 <<= 0x10;
ffa04026:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0402a:	51 50       	R1 = R1 + R2;
ffa0402c:	17 30       	R2 = R7;
ffa0402e:	ff e3 bf e8 	CALL 0xffa011ac <_memcpy_>;
ffa04032:	28 91       	R0 = [P5];
ffa04034:	38 50       	R0 = R0 + R7;
ffa04036:	01 e8 00 00 	UNLINK;
ffa0403a:	28 93       	[P5] = R0;
ffa0403c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0403e:	bd 05       	(R7:7, P5:5) = [SP++];
ffa04040:	10 00       	RTS;
	...

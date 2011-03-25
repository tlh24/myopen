
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
ffa00178:	3a 24       	JUMP.S 0xffa009ec <_main>;
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
ffa003f6:	00 e3 cb 05 	CALL 0xffa00f8c <_printf_int>;
ffa003fa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa003fe:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa00402:	00 e3 a9 04 	CALL 0xffa00d54 <_uart_str>;
ffa00406:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900508(-7338744) */
ffa0040a:	0d 30       	R1 = R5;
ffa0040c:	00 e1 14 00 	R0.L = 0x14;		/* ( 20)	R0=0xff900014(-7340012) */
ffa00410:	00 e3 0c 05 	CALL 0xffa00e28 <_printf_hex_byte>;
ffa00414:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900014(-7340012) */
ffa00418:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa0041c:	00 e3 9c 04 	CALL 0xffa00d54 <_uart_str>;
ffa00420:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900508(-7338744) */
ffa00424:	00 e1 20 00 	R0.L = 0x20;		/* ( 32)	R0=0xff900020(-7340000) */
ffa00428:	0f 30       	R1 = R7;
ffa0042a:	00 e3 ff 04 	CALL 0xffa00e28 <_printf_hex_byte>;
ffa0042e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa00432:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00436:	2f 30       	R5 = R7;
ffa00438:	00 e3 8e 04 	CALL 0xffa00d54 <_uart_str>;
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
ffa004b8:	00 e3 6a 05 	CALL 0xffa00f8c <_printf_int>;
ffa004bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002c(-7339988) */
ffa004c0:	ff 42       	R7 = R7.L (Z);
ffa004c2:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa004c6:	00 e3 47 04 	CALL 0xffa00d54 <_uart_str>;
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
ffa007c6:	00 e3 31 03 	CALL 0xffa00e28 <_printf_hex_byte>;
ffa007ca:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900044(-7339964) */
ffa007ce:	21 99       	R1 = B[P4] (Z);
ffa007d0:	00 e1 54 00 	R0.L = 0x54;		/* ( 84)	R0=0xff900054(-7339948) */
ffa007d4:	00 e3 2a 03 	CALL 0xffa00e28 <_printf_hex_byte>;
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
ffa007f4:	00 e2 0a 03 	JUMP.L 0xffa00e08 <_printf_str>;
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
ffa00812:	00 e3 7f 10 	CALL 0xffa02910 <_bfin_EMAC_recv>;
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
ffa00830:	00 e3 4c 07 	CALL 0xffa016c8 <_htons>;
ffa00834:	c0 42       	R0 = R0.L (Z);
ffa00836:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa0083a:	08 08       	CC = R0 == R1;
ffa0083c:	e6 17       	IF !CC JUMP 0xffa00808 <_eth_listen+0x8> (BP);
ffa0083e:	f0 b9       	R0 = [FP -0x4];
ffa00840:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa00844:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa00846:	01 e1 b9 0b 	R1.L = 0xbb9;		/* (3001)	R1=0xff900bb9 <_g_outpkt>(-7337031) */
ffa0084a:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa0084c:	00 e3 86 04 	CALL 0xffa01158 <_memcpy_>;
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
ffa00876:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0087a:	14 97       	W[P2] = R4;
ffa0087c:	24 00       	SSYNC;
ffa0087e:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01508(-4188920) */
ffa00882:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa00886:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0088a:	28 97       	W[P5] = R0;
ffa0088c:	ff e3 8e fc 	CALL 0xffa001a8 <_spi_delay>;
ffa00890:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901504 */
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
ffa008c0:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa008c4:	14 97       	W[P2] = R4;
ffa008c6:	24 00       	SSYNC;
ffa008c8:	07 0c       	CC = R7 == 0x0;
ffa008ca:	13 1c       	IF CC JUMP 0xffa008f0 <_getRadioPacket+0x9c> (BP);
ffa008cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901508 */
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
ffa008ee:	3d 18       	IF CC JUMP 0xffa00968 <_getRadioPacket+0x114>;
ffa008f0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba8 <_wrptr> */
ffa008f4:	0a e1 a8 0b 	P2.L = 0xba8;		/* (2984)	P2=0xff900ba8 <_wrptr> */
ffa008f8:	21 e1 ff 01 	R1 = 0x1ff (X);		/*		R1=0x1ff(511) */
ffa008fc:	10 91       	R0 = [P2];
ffa008fe:	08 0a       	CC = R0 <= R1 (IU);
ffa00900:	28 18       	IF CC JUMP 0xffa00950 <_getRadioPacket+0xfc>;
ffa00902:	e0 b9       	R0 = [FP -0x8];
ffa00904:	21 e1 e2 00 	R1 = 0xe2 (X);		/*		R1=0xe2(226) */
ffa00908:	ff e3 ec fc 	CALL 0xffa002e0 <_spi_write_byte>;
ffa0090c:	4f 30       	R1 = FP;
ffa0090e:	20 e1 04 02 	R0 = 0x204 (X);		/*		R0=0x204(516) */
ffa00912:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa00914:	00 e3 12 0c 	CALL 0xffa02138 <_udp_packet_setup>;
ffa00918:	10 32       	P2 = R0;
ffa0091a:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0091e:	00 0d       	CC = R0 <= 0x0;
ffa00920:	1c 18       	IF CC JUMP 0xffa00958 <_getRadioPacket+0x104>;
ffa00922:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90050c */
ffa00926:	0d e1 a4 0b 	P5.L = 0xba4;		/* (2980)	P5=0xff900ba4 <_trptr> */
ffa0092a:	22 e1 00 02 	R2 = 0x200 (X);		/*		R2=0x200(512) */
ffa0092e:	28 91       	R0 = [P5];
ffa00930:	10 92       	[P2++] = R0;
ffa00932:	4a 30       	R1 = P2;
ffa00934:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00936:	00 e3 11 04 	CALL 0xffa01158 <_memcpy_>;
ffa0093a:	28 91       	R0 = [P5];
ffa0093c:	08 64       	R0 += 0x1;		/* (  1) */
ffa0093e:	28 93       	[P5] = R0;
ffa00940:	00 e3 6e 08 	CALL 0xffa01a1c <_bfin_EMAC_send_nocopy>;
ffa00944:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba8 <_wrptr> */
ffa00948:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0094a:	0a e1 a8 0b 	P2.L = 0xba8;		/* (2984)	P2=0xff900ba8 <_wrptr> */
ffa0094e:	10 93       	[P2] = R0;
ffa00950:	01 e8 00 00 	UNLINK;
ffa00954:	a3 05       	(R7:4, P5:3) = [SP++];
ffa00956:	10 00       	RTS;
ffa00958:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba8 <_wrptr> */
ffa0095c:	0a e1 a4 0b 	P2.L = 0xba4;		/* (2980)	P2=0xff900ba4 <_trptr> */
ffa00960:	10 91       	R0 = [P2];
ffa00962:	08 64       	R0 += 0x1;		/* (  1) */
ffa00964:	10 93       	[P2] = R0;
ffa00966:	ef 2f       	JUMP.S 0xffa00944 <_getRadioPacket+0xf0>;
ffa00968:	e0 b9       	R0 = [FP -0x8];
ffa0096a:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa0096e:	ff e3 0b fd 	CALL 0xffa00384 <_radio_set_tx>;
ffa00972:	24 00       	SSYNC;
ffa00974:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900ba4 <_trptr> */
ffa00978:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0097c:	0d e1 b9 0b 	P5.L = 0xbb9;		/* (3001)	P5=0xff900bb9 <_g_outpkt> */
ffa00980:	18 97       	W[P3] = R0;
ffa00982:	65 32       	P4 = P5;
ffa00984:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc0f000(-4132864) */
ffa00988:	ff e3 10 fc 	CALL 0xffa001a8 <_spi_delay>;
ffa0098c:	0b e1 0c 05 	P3.L = 0x50c;		/* (1292)	P3=0xffc0050c(-4193012) */
ffa00990:	04 6d       	P4 += 0x20;		/* ( 32) */
ffa00992:	00 00       	NOP;
ffa00994:	28 98       	R0 = B[P5++] (Z);
ffa00996:	18 97       	W[P3] = R0;
ffa00998:	ff e3 08 fc 	CALL 0xffa001a8 <_spi_delay>;
ffa0099c:	65 08       	CC = P5 == P4;
ffa0099e:	fa 17       	IF !CC JUMP 0xffa00992 <_getRadioPacket+0x13e> (BP);
ffa009a0:	04 30       	R0 = R4;
ffa009a2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ba4(-4191324) */
ffa009a6:	50 4a       	BITSET (R0, 0xa);		/* bit 10 */
ffa009a8:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa009ac:	10 97       	W[P2] = R0;
ffa009ae:	24 00       	SSYNC;
ffa009b0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009b2:	ff e3 27 ff 	CALL 0xffa00800 <_eth_listen>;
ffa009b6:	03 20       	JUMP.S 0xffa009bc <_getRadioPacket+0x168>;
ffa009b8:	00 00       	NOP;
ffa009ba:	00 00       	NOP;
ffa009bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa009c0:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa009c4:	50 95       	R0 = W[P2] (X);
ffa009c6:	79 e5 fa ff 	R1 = W[FP + -0xc] (X);
ffa009ca:	01 54       	R0 = R1 & R0;
ffa009cc:	c0 42       	R0 = R0.L (Z);
ffa009ce:	00 0c       	CC = R0 == 0x0;
ffa009d0:	f4 17       	IF !CC JUMP 0xffa009b8 <_getRadioPacket+0x164> (BP);
ffa009d2:	e0 b9       	R0 = [FP -0x8];
ffa009d4:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa009d6:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa009da:	ff e3 01 fc 	CALL 0xffa001dc <_spi_write_register>;
ffa009de:	e0 b9       	R0 = [FP -0x8];
ffa009e0:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa009e4:	ff e3 a2 fc 	CALL 0xffa00328 <_radio_set_rx>;
ffa009e8:	8d 2f       	JUMP.S 0xffa00902 <_getRadioPacket+0xae>;
	...

ffa009ec <_main>:
ffa009ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa009f0:	ec 05       	[--SP] = (R7:5, P5:4);
ffa009f2:	20 e1 9c c1 	R0 = -0x3e64 (X);		/*		R0=0xffffc19c(-15972) */
ffa009f6:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa009fa:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa009fe:	10 97       	W[P2] = R0;
ffa00a00:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa00a04:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa00a06:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa00a0a:	12 97       	W[P2] = R2;
ffa00a0c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa00a10:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00a12:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa00a16:	10 97       	W[P2] = R0;
ffa00a18:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa00a1c:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa00a1e:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa00a22:	10 97       	W[P2] = R0;
ffa00a24:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa00a28:	a2 6f       	P2 += -0xc;		/* (-12) */
ffa00a2a:	10 97       	W[P2] = R0;
ffa00a2c:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa00a30:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00a32:	10 97       	W[P2] = R0;
ffa00a34:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00a36:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00a38:	11 97       	W[P2] = R1;
ffa00a3a:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0150c(-4188916) */
ffa00a3e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa00a42:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00500(-4193024) */
ffa00a46:	09 e1 0c 04 	P1.L = 0x40c;		/* (1036)	P1=0xffc0040c(-4193268) */
ffa00a4a:	08 e1 04 04 	P0.L = 0x404;		/* (1028)	P0=0xffc00404(-4193276) */
ffa00a4e:	0a e1 10 04 	P2.L = 0x410;		/* (1040)	P2=0xffc00410(-4193264) */
ffa00a52:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa00a56:	01 97       	W[P0] = R1;
ffa00a58:	11 97       	W[P2] = R1;
ffa00a5a:	08 97       	W[P1] = R0;
ffa00a5c:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00a5e:	20 e1 88 00 	R0 = 0x88 (X);		/*		R0=0x88(136) */
ffa00a62:	10 97       	W[P2] = R0;
ffa00a64:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00a66:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00a68:	01 97       	W[P0] = R1;
ffa00a6a:	0a 97       	W[P1] = R2;
ffa00a6c:	10 97       	W[P2] = R0;
ffa00a6e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00a70:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900410 */
ffa00a74:	b8 4f       	R0 <<= 0x17;
ffa00a76:	0a e1 dc 0b 	P2.L = 0xbdc;		/* (3036)	P2=0xff900bdc <_printf_temp> */
ffa00a7a:	10 93       	[P2] = R0;
ffa00a7c:	20 e1 01 e0 	R0 = -0x1fff (X);		/*		R0=0xffffe001(-8191) */
ffa00a80:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bdc <_printf_temp> */
ffa00a84:	0a e1 e0 0b 	P2.L = 0xbe0;		/* (3040)	P2=0xff900be0 <_printf_out> */
ffa00a88:	50 4f       	R0 <<= 0xa;
ffa00a8a:	10 93       	[P2] = R0;
ffa00a8c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90e001(-7282687) */
ffa00a90:	21 e1 80 01 	R1 = 0x180 (X);		/*		R1=0x180(384) */
ffa00a94:	00 e1 7c 00 	R0.L = 0x7c;		/* (124)	R0=0xff90007c(-7339908) */
ffa00a98:	00 e3 7a 02 	CALL 0xffa00f8c <_printf_int>;
ffa00a9c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa00aa0:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00aa4:	00 e3 b2 01 	CALL 0xffa00e08 <_printf_str>;
ffa00aa8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa00aac:	00 e1 8c 00 	R0.L = 0x8c;		/* (140)	R0=0xff90008c(-7339892) */
ffa00ab0:	00 e3 ac 01 	CALL 0xffa00e08 <_printf_str>;
ffa00ab4:	49 e1 40 00 	P1.H = 0x40;		/* ( 64)	P1=0x40040c */
ffa00ab8:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa00aba:	22 e1 ca de 	R2 = -0x2136 (X);		/*		R2=0xffffdeca(-8502) */
ffa00abe:	23 e1 ad fb 	R3 = -0x453 (X);		/*		R3=0xfffffbad(-1107) */
ffa00ac2:	20 e1 ed c0 	R0 = -0x3f13 (X);		/*		R0=0xffffc0ed(-16147) */
ffa00ac6:	21 e1 be ba 	R1 = -0x4542 (X);		/*		R1=0xffffbabe(-17730) */
ffa00aca:	09 e1 00 00 	P1.L = 0x0;		/* (  0)	P1=0x400000 */
ffa00ace:	b2 e0 06 10 	LSETUP(0xffa00ad2 <_main+0xe6>, 0xffa00ada <_main+0xee>) LC1 = P1;
ffa00ad2:	12 97       	W[P2] = R2;
ffa00ad4:	53 b4       	W[P2 + 0x2] = R3;
ffa00ad6:	90 b4       	W[P2 + 0x4] = R0;
ffa00ad8:	d1 b4       	W[P2 + 0x6] = R1;
ffa00ada:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00adc:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00ade:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00ae0:	02 20       	JUMP.S 0xffa00ae4 <_main+0xf8>;
ffa00ae2:	45 6c       	P5 += 0x8;		/* (  8) */
ffa00ae4:	2f 95       	R7 = W[P5] (Z);
ffa00ae6:	80 e1 ca de 	R0 = 0xdeca (Z);		/*		R0=0xdeca(57034) */
ffa00aea:	07 08       	CC = R7 == R0;
ffa00aec:	15 18       	IF CC JUMP 0xffa00b16 <_main+0x12a>;
ffa00aee:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90deca(-7282998) */
ffa00af2:	0e 30       	R1 = R6;
ffa00af4:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00af8:	00 e3 ee 01 	CALL 0xffa00ed4 <_printf_hex>;
ffa00afc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00b00:	00 e1 ac 00 	R0.L = 0xac;		/* (172)	R0=0xff9000ac(-7339860) */
ffa00b04:	0f 30       	R1 = R7;
ffa00b06:	00 e3 e7 01 	CALL 0xffa00ed4 <_printf_hex>;
ffa00b0a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000ac(-7339860) */
ffa00b0e:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00b12:	00 e3 7b 01 	CALL 0xffa00e08 <_printf_str>;
ffa00b16:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa00b18:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa00b1c:	08 08       	CC = R0 == R1;
ffa00b1e:	08 18       	IF CC JUMP 0xffa00b2e <_main+0x142>;
ffa00b20:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa00b24:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00b28:	0e 30       	R1 = R6;
ffa00b2a:	00 e3 d5 01 	CALL 0xffa00ed4 <_printf_hex>;
ffa00b2e:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa00b30:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa00b34:	08 08       	CC = R0 == R1;
ffa00b36:	08 18       	IF CC JUMP 0xffa00b46 <_main+0x15a>;
ffa00b38:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00b3c:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00b40:	0e 30       	R1 = R6;
ffa00b42:	00 e3 c9 01 	CALL 0xffa00ed4 <_printf_hex>;
ffa00b46:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa00b48:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa00b4c:	08 08       	CC = R0 == R1;
ffa00b4e:	08 18       	IF CC JUMP 0xffa00b5e <_main+0x172>;
ffa00b50:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00b54:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00b58:	0e 30       	R1 = R6;
ffa00b5a:	00 e3 bd 01 	CALL 0xffa00ed4 <_printf_hex>;
ffa00b5e:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa00b62:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa00b66:	55 08       	CC = P5 == P2;
ffa00b68:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00b6a:	bc 17       	IF !CC JUMP 0xffa00ae2 <_main+0xf6> (BP);
ffa00b6c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00b70:	00 e1 b4 00 	R0.L = 0xb4;		/* (180)	R0=0xff9000b4(-7339852) */
ffa00b74:	00 e3 4a 01 	CALL 0xffa00e08 <_printf_str>;
ffa00b78:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0fff8(-4128776) */
ffa00b7c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00b7e:	0a e1 84 06 	P2.L = 0x684;		/* (1668)	P2=0xffc00684(-4192636) */
ffa00b82:	10 97       	W[P2] = R0;
ffa00b84:	24 00       	SSYNC;
ffa00b86:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800684 */
ffa00b8a:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00b8e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa00b90:	17 93       	[P2] = R7;
ffa00b92:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa00b96:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa00b9a:	0a e1 50 06 	P2.L = 0x650;		/* (1616)	P2=0xffc00650(-4192688) */
ffa00b9e:	10 97       	W[P2] = R0;
ffa00ba0:	20 e1 09 3d 	R0 = 0x3d09 (X);		/*		R0=0x3d09(15625) */
ffa00ba4:	18 4f       	R0 <<= 0x3;
ffa00ba6:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00ba8:	10 93       	[P2] = R0;
ffa00baa:	80 e1 24 f4 	R0 = 0xf424 (Z);		/*		R0=0xf424(62500) */
ffa00bae:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00bb0:	10 93       	[P2] = R0;
ffa00bb2:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00bb4:	50 95       	R0 = W[P2] (X);
ffa00bb6:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa00bb8:	10 97       	W[P2] = R0;
ffa00bba:	00 e3 67 0c 	CALL 0xffa02488 <_bfin_EMAC_init>;
ffa00bbe:	00 0c       	CC = R0 == 0x0;
ffa00bc0:	28 30       	R5 = R0;
ffa00bc2:	c5 18       	IF CC JUMP 0xffa00d4c <_main+0x360>;
ffa00bc4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00650(-4192688) */
ffa00bc8:	20 e1 87 38 	R0 = 0x3887 (X);		/*		R0=0x3887(14471) */
ffa00bcc:	0a e1 00 32 	P2.L = 0x3200;		/* (12800)	P2=0xffc03200(-4181504) */
ffa00bd0:	10 97       	W[P2] = R0;
ffa00bd2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03200(-4181504) */
ffa00bd6:	20 e1 56 fe 	R0 = -0x1aa (X);		/*		R0=0xfffffe56(-426) */
ffa00bda:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa00bde:	10 97       	W[P2] = R0;
ffa00be0:	20 e1 a9 01 	R0 = 0x1a9 (X);		/*		R0=0x1a9(425) */
ffa00be4:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa00be6:	10 97       	W[P2] = R0;
ffa00be8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa00bec:	20 e1 80 02 	R0 = 0x280 (X);		/*		R0=0x280(640) */
ffa00bf0:	0a e1 10 32 	P2.L = 0x3210;		/* (12816)	P2=0xffc03210(-4181488) */
ffa00bf4:	10 97       	W[P2] = R0;
ffa00bf6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03210(-4181488) */
ffa00bfa:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa00bfe:	50 95       	R0 = W[P2] (X);
ffa00c00:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00c02:	10 97       	W[P2] = R0;
ffa00c04:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00c06:	50 95       	R0 = W[P2] (X);
ffa00c08:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa00c0a:	10 97       	W[P2] = R0;
ffa00c0c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa00c10:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00c14:	50 95       	R0 = W[P2] (X);
ffa00c16:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00c18:	10 97       	W[P2] = R0;
ffa00c1a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903204 */
ffa00c1e:	0a e1 a8 0b 	P2.L = 0xba8;		/* (2984)	P2=0xff900ba8 <_wrptr> */
ffa00c22:	17 93       	[P2] = R7;
ffa00c24:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba8 <_wrptr> */
ffa00c28:	0a e1 a4 0b 	P2.L = 0xba4;		/* (2980)	P2=0xff900ba4 <_trptr> */
ffa00c2c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900280(-7339392) */
ffa00c30:	17 93       	[P2] = R7;
ffa00c32:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa00c36:	00 e3 e9 00 	CALL 0xffa00e08 <_printf_str>;
ffa00c3a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ba4(-4191324) */
ffa00c3e:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa00c42:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00c46:	10 97       	W[P2] = R0;
ffa00c48:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa00c4c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00c4e:	10 97       	W[P2] = R0;
ffa00c50:	24 00       	SSYNC;
ffa00c52:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa00c54:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00c56:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa00c58:	ff e3 f8 fb 	CALL 0xffa00448 <_radio_init>;
ffa00c5c:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa00c5e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00c60:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa00c64:	ff e3 f2 fb 	CALL 0xffa00448 <_radio_init>;
ffa00c68:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00c6a:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa00c6e:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa00c72:	ff e3 eb fb 	CALL 0xffa00448 <_radio_init>;
ffa00c76:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa00c78:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00c7a:	ff e3 57 fb 	CALL 0xffa00328 <_radio_set_rx>;
ffa00c7e:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa00c82:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00c84:	ff e3 52 fb 	CALL 0xffa00328 <_radio_set_rx>;
ffa00c88:	47 e1 62 10 	R7.H = 0x1062;		/* (4194)	R7=0x10620000(274857984) */
ffa00c8c:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa00c90:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00c94:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc01504(-4188924) */
ffa00c98:	ff e3 48 fb 	CALL 0xffa00328 <_radio_set_rx>;
ffa00c9c:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00c9e:	07 e1 d3 4d 	R7.L = 0x4dd3;		/* (19923)	R7=0x10624dd3(274877907) */
ffa00ca2:	0c e1 0c 07 	P4.L = 0x70c;		/* (1804)	P4=0xffc0070c(-4192500) */
ffa00ca6:	05 30       	R0 = R5;
ffa00ca8:	ff e3 ac fd 	CALL 0xffa00800 <_eth_listen>;
ffa00cac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00cb0:	0a e1 00 07 	P2.L = 0x700;		/* (1792)	P2=0xffc00700(-4192512) */
ffa00cb4:	50 95       	R0 = W[P2] (X);
ffa00cb6:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa00cb8:	2b 18       	IF CC JUMP 0xffa00d0e <_main+0x322>;
ffa00cba:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa00cbe:	0d e1 00 07 	P5.L = 0x700;		/* (1792)	P5=0xffc00700(-4192512) */
ffa00cc2:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa00cc4:	68 95       	R0 = W[P5] (X);
ffa00cc6:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00cc8:	30 18       	IF CC JUMP 0xffa00d28 <_main+0x33c>;
ffa00cca:	00 00       	NOP;
ffa00ccc:	00 00       	NOP;
ffa00cce:	00 00       	NOP;
ffa00cd0:	68 95       	R0 = W[P5] (X);
ffa00cd2:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa00cd4:	34 18       	IF CC JUMP 0xffa00d3c <_main+0x350>;
ffa00cd6:	00 00       	NOP;
ffa00cd8:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800700 */
ffa00cdc:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00ce0:	10 91       	R0 = [P2];
ffa00ce2:	80 c0 07 18 	A1 = R0.L * R7.L (FU);
ffa00ce6:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00cea:	81 c0 07 86 	A1 += R0.H * R7.L, A0 = R0.H * R7.H (FU);
ffa00cee:	81 c0 38 98 	A1 += R7.H * R0.L (FU);
ffa00cf2:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00cf6:	0b c4 00 80 	A0 += A1;
ffa00cfa:	8b c0 00 38 	R0 = A0 (FU);
ffa00cfe:	82 c6 d0 83 	R1 = R0 >> 0x6;
ffa00d02:	0e 08       	CC = R6 == R1;
ffa00d04:	d1 1b       	IF CC JUMP 0xffa00ca6 <_main+0x2ba>;
ffa00d06:	31 30       	R6 = R1;
ffa00d08:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa00d0a:	20 97       	W[P4] = R0;
ffa00d0c:	cd 2f       	JUMP.S 0xffa00ca6 <_main+0x2ba>;
ffa00d0e:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00700(-4192512) */
ffa00d12:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa00d14:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa00d16:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa00d18:	0d e1 00 07 	P5.L = 0x700;		/* (1792)	P5=0xffc00700(-4192512) */
ffa00d1c:	ff e3 9c fd 	CALL 0xffa00854 <_getRadioPacket>;
ffa00d20:	68 95       	R0 = W[P5] (X);
ffa00d22:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00d24:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00d26:	d4 17       	IF !CC JUMP 0xffa00cce <_main+0x2e2> (BP);
ffa00d28:	4a 43       	R2 = R1.B (Z);
ffa00d2a:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa00d2e:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa00d30:	ff e3 92 fd 	CALL 0xffa00854 <_getRadioPacket>;
ffa00d34:	68 95       	R0 = W[P5] (X);
ffa00d36:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa00d38:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00d3a:	cf 17       	IF !CC JUMP 0xffa00cd8 <_main+0x2ec> (BP);
ffa00d3c:	4a 43       	R2 = R1.B (Z);
ffa00d3e:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa00d42:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa00d46:	ff e3 87 fd 	CALL 0xffa00854 <_getRadioPacket>;
ffa00d4a:	c7 2f       	JUMP.S 0xffa00cd8 <_main+0x2ec>;
ffa00d4c:	00 e3 70 0d 	CALL 0xffa0282c <_DHCP_req>;
ffa00d50:	3a 2f       	JUMP.S 0xffa00bc4 <_main+0x1d8>;
	...

ffa00d54 <_uart_str>:
ffa00d54:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa00d58:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00d5c:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa00d60:	08 32       	P1 = R0;
ffa00d62:	50 95       	R0 = W[P2] (X);
ffa00d64:	c0 42       	R0 = R0.L (Z);
ffa00d66:	08 0c       	CC = R0 == 0x1;
ffa00d68:	06 18       	IF CC JUMP 0xffa00d74 <_uart_str+0x20>;
ffa00d6a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00d6c:	02 30       	R0 = R2;
ffa00d6e:	01 e8 00 00 	UNLINK;
ffa00d72:	10 00       	RTS;
ffa00d74:	48 99       	R0 = B[P1] (X);
ffa00d76:	01 43       	R1 = R0.B (X);
ffa00d78:	01 0c       	CC = R1 == 0x0;
ffa00d7a:	f8 1b       	IF CC JUMP 0xffa00d6a <_uart_str+0x16>;
ffa00d7c:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa00d80:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00d82:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00d84:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa00d88:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa00d8c:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa00d8e:	b2 e0 1c 00 	LSETUP(0xffa00d92 <_uart_str+0x3e>, 0xffa00dc6 <_uart_str+0x72>) LC1 = P0;
ffa00d92:	19 08       	CC = R1 == R3;
ffa00d94:	1b 18       	IF CC JUMP 0xffa00dca <_uart_str+0x76>;
ffa00d96:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa00d9a:	00 43       	R0 = R0.B (X);
ffa00d9c:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00da0:	10 97       	W[P2] = R0;
ffa00da2:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa00da4:	50 95       	R0 = W[P2] (X);
ffa00da6:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00da8:	0a 10       	IF !CC JUMP 0xffa00dbc <_uart_str+0x68>;
ffa00daa:	00 00       	NOP;
ffa00dac:	00 00       	NOP;
ffa00dae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa00db2:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00db6:	50 95       	R0 = W[P2] (X);
ffa00db8:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00dba:	f9 1f       	IF CC JUMP 0xffa00dac <_uart_str+0x58> (BP);
ffa00dbc:	48 99       	R0 = B[P1] (X);
ffa00dbe:	01 43       	R1 = R0.B (X);
ffa00dc0:	01 0c       	CC = R1 == 0x0;
ffa00dc2:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00dc4:	d4 1b       	IF CC JUMP 0xffa00d6c <_uart_str+0x18>;
ffa00dc6:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00dc8:	d2 2f       	JUMP.S 0xffa00d6c <_uart_str+0x18>;
ffa00dca:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00dcc:	20 9f       	W[I0] = R0.L;
ffa00dce:	02 20       	JUMP.S 0xffa00dd2 <_uart_str+0x7e>;
ffa00dd0:	00 00       	NOP;
ffa00dd2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa00dd6:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00dda:	50 95       	R0 = W[P2] (X);
ffa00ddc:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00dde:	f9 1f       	IF CC JUMP 0xffa00dd0 <_uart_str+0x7c> (BP);
ffa00de0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa00de4:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa00de6:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00dea:	10 97       	W[P2] = R0;
ffa00dec:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa00dee:	50 95       	R0 = W[P2] (X);
ffa00df0:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00df2:	e5 13       	IF !CC JUMP 0xffa00dbc <_uart_str+0x68>;
ffa00df4:	00 00       	NOP;
ffa00df6:	00 00       	NOP;
ffa00df8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa00dfc:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00e00:	50 95       	R0 = W[P2] (X);
ffa00e02:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00e04:	f9 1f       	IF CC JUMP 0xffa00df6 <_uart_str+0xa2> (BP);
ffa00e06:	db 2f       	JUMP.S 0xffa00dbc <_uart_str+0x68>;

ffa00e08 <_printf_str>:
ffa00e08:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00e0c:	01 e8 00 00 	UNLINK;
ffa00e10:	ff e2 a2 ff 	JUMP.L 0xffa00d54 <_uart_str>;

ffa00e14 <_printf_newline>:
ffa00e14:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00e18:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa00e1c:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00e20:	01 e8 00 00 	UNLINK;
ffa00e24:	ff e2 98 ff 	JUMP.L 0xffa00d54 <_uart_str>;

ffa00e28 <_printf_hex_byte>:
ffa00e28:	fc 05       	[--SP] = (R7:7, P5:4);
ffa00e2a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00e2e:	28 32       	P5 = R0;
ffa00e30:	39 30       	R7 = R1;
ffa00e32:	00 e3 b1 01 	CALL 0xffa01194 <_strlen_>;
ffa00e36:	10 30       	R2 = R0;
ffa00e38:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa00e3c:	02 09       	CC = R2 <= R0;
ffa00e3e:	41 10       	IF !CC JUMP 0xffa00ec0 <_printf_hex_byte+0x98>;
ffa00e40:	02 0d       	CC = R2 <= 0x0;
ffa00e42:	44 18       	IF CC JUMP 0xffa00eca <_printf_hex_byte+0xa2>;
ffa00e44:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa00e48:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00e4a:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa00e4e:	09 32       	P1 = R1;
ffa00e50:	42 91       	P2 = [P0];
ffa00e52:	09 64       	R1 += 0x1;		/* (  1) */
ffa00e54:	68 98       	R0 = B[P5++] (X);
ffa00e56:	0a 08       	CC = R2 == R1;
ffa00e58:	8a 5a       	P2 = P2 + P1;
ffa00e5a:	10 9b       	B[P2] = R0;
ffa00e5c:	f9 17       	IF !CC JUMP 0xffa00e4e <_printf_hex_byte+0x26> (BP);
ffa00e5e:	0a 32       	P1 = R2;
ffa00e60:	42 91       	P2 = [P0];
ffa00e62:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00e64:	22 32       	P4 = R2;
ffa00e66:	79 43       	R1 = R7.B (Z);
ffa00e68:	8a 5a       	P2 = P2 + P1;
ffa00e6a:	10 9b       	B[P2] = R0;
ffa00e6c:	42 91       	P2 = [P0];
ffa00e6e:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00e70:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00e74:	11 6c       	P1 += 0x2;		/* (  2) */
ffa00e76:	a2 5a       	P2 = P2 + P4;
ffa00e78:	10 9b       	B[P2] = R0;
ffa00e7a:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa00e7c:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa00e7e:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa00e80:	01 30       	R0 = R1;
ffa00e82:	10 40       	R0 >>>= R2;
ffa00e84:	18 54       	R0 = R0 & R3;
ffa00e86:	38 09       	CC = R0 <= R7;
ffa00e88:	1a 1c       	IF CC JUMP 0xffa00ebc <_printf_hex_byte+0x94> (BP);
ffa00e8a:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00e8c:	42 91       	P2 = [P0];
ffa00e8e:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa00e90:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900700 */
ffa00e94:	22 0c       	CC = R2 == -0x4;
ffa00e96:	8a 5a       	P2 = P2 + P1;
ffa00e98:	0d e1 e0 0b 	P5.L = 0xbe0;		/* (3040)	P5=0xff900be0 <_printf_out> */
ffa00e9c:	10 9b       	B[P2] = R0;
ffa00e9e:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00ea0:	f0 17       	IF !CC JUMP 0xffa00e80 <_printf_hex_byte+0x58> (BP);
ffa00ea2:	6a 91       	P2 = [P5];
ffa00ea4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00ea6:	94 5a       	P2 = P4 + P2;
ffa00ea8:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa00eac:	28 91       	R0 = [P5];
ffa00eae:	ff e3 53 ff 	CALL 0xffa00d54 <_uart_str>;
ffa00eb2:	01 e8 00 00 	UNLINK;
ffa00eb6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00eb8:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00eba:	10 00       	RTS;
ffa00ebc:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00ebe:	e7 2f       	JUMP.S 0xffa00e8c <_printf_hex_byte+0x64>;
ffa00ec0:	01 e8 00 00 	UNLINK;
ffa00ec4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00ec6:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00ec8:	10 00       	RTS;
ffa00eca:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900be0 <_printf_out> */
ffa00ece:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa00ed2:	c6 2f       	JUMP.S 0xffa00e5e <_printf_hex_byte+0x36>;

ffa00ed4 <_printf_hex>:
ffa00ed4:	fb 05       	[--SP] = (R7:7, P5:3);
ffa00ed6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00eda:	28 32       	P5 = R0;
ffa00edc:	39 30       	R7 = R1;
ffa00ede:	00 e3 5b 01 	CALL 0xffa01194 <_strlen_>;
ffa00ee2:	10 30       	R2 = R0;
ffa00ee4:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa00ee8:	02 09       	CC = R2 <= R0;
ffa00eea:	47 10       	IF !CC JUMP 0xffa00f78 <_printf_hex+0xa4>;
ffa00eec:	02 0d       	CC = R2 <= 0x0;
ffa00eee:	4a 18       	IF CC JUMP 0xffa00f82 <_printf_hex+0xae>;
ffa00ef0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900000 <_l1_data_a> */
ffa00ef4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00ef6:	09 e1 e0 0b 	P1.L = 0xbe0;		/* (3040)	P1=0xff900be0 <_printf_out> */
ffa00efa:	01 32       	P0 = R1;
ffa00efc:	4a 91       	P2 = [P1];
ffa00efe:	09 64       	R1 += 0x1;		/* (  1) */
ffa00f00:	68 98       	R0 = B[P5++] (X);
ffa00f02:	0a 08       	CC = R2 == R1;
ffa00f04:	82 5a       	P2 = P2 + P0;
ffa00f06:	10 9b       	B[P2] = R0;
ffa00f08:	f9 17       	IF !CC JUMP 0xffa00efa <_printf_hex+0x26> (BP);
ffa00f0a:	02 32       	P0 = R2;
ffa00f0c:	4a 91       	P2 = [P1];
ffa00f0e:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00f10:	1a 32       	P3 = R2;
ffa00f12:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa00f14:	82 5a       	P2 = P2 + P0;
ffa00f16:	10 9b       	B[P2] = R0;
ffa00f18:	4a 91       	P2 = [P1];
ffa00f1a:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa00f1c:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00f20:	10 6c       	P0 += 0x2;		/* (  2) */
ffa00f22:	9a 5a       	P2 = P2 + P3;
ffa00f24:	10 9b       	B[P2] = R0;
ffa00f26:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa00f28:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa00f2a:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa00f2c:	b2 e0 10 50 	LSETUP(0xffa00f30 <_printf_hex+0x5c>, 0xffa00f4c <_printf_hex+0x78>) LC1 = P5;
ffa00f30:	07 30       	R0 = R7;
ffa00f32:	08 40       	R0 >>>= R1;
ffa00f34:	10 54       	R0 = R0 & R2;
ffa00f36:	18 09       	CC = R0 <= R3;
ffa00f38:	1e 1c       	IF CC JUMP 0xffa00f74 <_printf_hex+0xa0> (BP);
ffa00f3a:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00f3c:	4a 91       	P2 = [P1];
ffa00f3e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90070c */
ffa00f42:	0c e1 e0 0b 	P4.L = 0xbe0;		/* (3040)	P4=0xff900be0 <_printf_out> */
ffa00f46:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa00f48:	82 5a       	P2 = P2 + P0;
ffa00f4a:	10 9b       	B[P2] = R0;
ffa00f4c:	08 6c       	P0 += 0x1;		/* (  1) */
ffa00f4e:	62 91       	P2 = [P4];
ffa00f50:	4b 32       	P1 = P3;
ffa00f52:	49 6c       	P1 += 0x9;		/* (  9) */
ffa00f54:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00f56:	8a 5a       	P2 = P2 + P1;
ffa00f58:	10 9b       	B[P2] = R0;
ffa00f5a:	62 91       	P2 = [P4];
ffa00f5c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f5e:	8a 5a       	P2 = P2 + P1;
ffa00f60:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa00f64:	20 91       	R0 = [P4];
ffa00f66:	ff e3 f7 fe 	CALL 0xffa00d54 <_uart_str>;
ffa00f6a:	01 e8 00 00 	UNLINK;
ffa00f6e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f70:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00f72:	10 00       	RTS;
ffa00f74:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00f76:	e3 2f       	JUMP.S 0xffa00f3c <_printf_hex+0x68>;
ffa00f78:	01 e8 00 00 	UNLINK;
ffa00f7c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00f7e:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00f80:	10 00       	RTS;
ffa00f82:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900be0 <_printf_out> */
ffa00f86:	09 e1 e0 0b 	P1.L = 0xbe0;		/* (3040)	P1=0xff900be0 <_printf_out> */
ffa00f8a:	c0 2f       	JUMP.S 0xffa00f0a <_printf_hex+0x36>;

ffa00f8c <_printf_int>:
ffa00f8c:	f3 05       	[--SP] = (R7:6, P5:3);
ffa00f8e:	01 0c       	CC = R1 == 0x0;
ffa00f90:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00f94:	28 32       	P5 = R0;
ffa00f96:	39 30       	R7 = R1;
ffa00f98:	41 14       	IF !CC JUMP 0xffa0101a <_printf_int+0x8e> (BP);
ffa00f9a:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90050c */
ffa00f9e:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00fa2:	5a 91       	P2 = [P3];
ffa00fa4:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00fa6:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa00fa8:	10 9b       	B[P2] = R0;
ffa00faa:	45 30       	R0 = P5;
ffa00fac:	00 e3 f4 00 	CALL 0xffa01194 <_strlen_>;
ffa00fb0:	c6 50       	R3 = R6 + R0;
ffa00fb2:	10 30       	R2 = R0;
ffa00fb4:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa00fb8:	03 09       	CC = R3 <= R0;
ffa00fba:	4e 10       	IF !CC JUMP 0xffa01056 <_printf_int+0xca>;
ffa00fbc:	02 0d       	CC = R2 <= 0x0;
ffa00fbe:	79 18       	IF CC JUMP 0xffa010b0 <_printf_int+0x124>;
ffa00fc0:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900be0 <_printf_out> */
ffa00fc4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00fc6:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa00fca:	09 32       	P1 = R1;
ffa00fcc:	42 91       	P2 = [P0];
ffa00fce:	09 64       	R1 += 0x1;		/* (  1) */
ffa00fd0:	68 98       	R0 = B[P5++] (X);
ffa00fd2:	0a 08       	CC = R2 == R1;
ffa00fd4:	8a 5a       	P2 = P2 + P1;
ffa00fd6:	10 9b       	B[P2] = R0;
ffa00fd8:	f9 17       	IF !CC JUMP 0xffa00fca <_printf_int+0x3e> (BP);
ffa00fda:	06 0d       	CC = R6 <= 0x0;
ffa00fdc:	12 18       	IF CC JUMP 0xffa01000 <_printf_int+0x74>;
ffa00fde:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00fe0:	00 91       	R0 = [P0];
ffa00fe2:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa00fe6:	5a 91 00 00 
ffa00fea:	08 50       	R0 = R0 + R1;
ffa00fec:	08 32       	P1 = R0;
ffa00fee:	0e 52       	R0 = R6 - R1;
ffa00ff0:	28 32       	P5 = R0;
ffa00ff2:	09 64       	R1 += 0x1;		/* (  1) */
ffa00ff4:	0e 08       	CC = R6 == R1;
ffa00ff6:	aa 5a       	P2 = P2 + P5;
ffa00ff8:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa00ffc:	08 9b       	B[P1] = R0;
ffa00ffe:	f1 17       	IF !CC JUMP 0xffa00fe0 <_printf_int+0x54> (BP);
ffa01000:	0b 32       	P1 = R3;
ffa01002:	42 91       	P2 = [P0];
ffa01004:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01006:	91 5a       	P2 = P1 + P2;
ffa01008:	10 9b       	B[P2] = R0;
ffa0100a:	00 91       	R0 = [P0];
ffa0100c:	ff e3 a4 fe 	CALL 0xffa00d54 <_uart_str>;
ffa01010:	01 e8 00 00 	UNLINK;
ffa01014:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01016:	b3 05       	(R7:6, P5:3) = [SP++];
ffa01018:	10 00       	RTS;
ffa0101a:	01 0d       	CC = R1 <= 0x0;
ffa0101c:	22 18       	IF CC JUMP 0xffa01060 <_printf_int+0xd4>;
ffa0101e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa01022:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01024:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa01028:	05 20       	JUMP.S 0xffa01032 <_printf_int+0xa6>;
ffa0102a:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa0102e:	06 08       	CC = R6 == R0;
ffa01030:	bd 1b       	IF CC JUMP 0xffa00faa <_printf_int+0x1e>;
ffa01032:	07 30       	R0 = R7;
ffa01034:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01036:	00 e3 83 00 	CALL 0xffa0113c <_mod>;
ffa0103a:	0e 32       	P1 = R6;
ffa0103c:	5a 91       	P2 = [P3];
ffa0103e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01040:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01042:	0e 64       	R6 += 0x1;		/* (  1) */
ffa01044:	8a 5a       	P2 = P2 + P1;
ffa01046:	10 9b       	B[P2] = R0;
ffa01048:	07 30       	R0 = R7;
ffa0104a:	00 e3 6b 00 	CALL 0xffa01120 <_div>;
ffa0104e:	00 0d       	CC = R0 <= 0x0;
ffa01050:	38 30       	R7 = R0;
ffa01052:	ec 17       	IF !CC JUMP 0xffa0102a <_printf_int+0x9e> (BP);
ffa01054:	ab 2f       	JUMP.S 0xffa00faa <_printf_int+0x1e>;
ffa01056:	01 e8 00 00 	UNLINK;
ffa0105a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0105c:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0105e:	10 00       	RTS;
ffa01060:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01062:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa01064:	f8 4f       	R0 <<= 0x1f;
ffa01066:	f8 53       	R7 = R0 - R7;
ffa01068:	07 0d       	CC = R7 <= 0x0;
ffa0106a:	2c 18       	IF CC JUMP 0xffa010c2 <_printf_int+0x136>;
ffa0106c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa01070:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa01072:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa01076:	05 20       	JUMP.S 0xffa01080 <_printf_int+0xf4>;
ffa01078:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa0107c:	4c 08       	CC = P4 == P1;
ffa0107e:	1e 18       	IF CC JUMP 0xffa010ba <_printf_int+0x12e>;
ffa01080:	07 30       	R0 = R7;
ffa01082:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01084:	00 e3 5c 00 	CALL 0xffa0113c <_mod>;
ffa01088:	5a 91       	P2 = [P3];
ffa0108a:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0108c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0108e:	a2 5a       	P2 = P2 + P4;
ffa01090:	10 9b       	B[P2] = R0;
ffa01092:	07 30       	R0 = R7;
ffa01094:	00 e3 46 00 	CALL 0xffa01120 <_div>;
ffa01098:	00 0d       	CC = R0 <= 0x0;
ffa0109a:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa0109c:	38 30       	R7 = R0;
ffa0109e:	ed 17       	IF !CC JUMP 0xffa01078 <_printf_int+0xec> (BP);
ffa010a0:	74 30       	R6 = P4;
ffa010a2:	4c 32       	P1 = P4;
ffa010a4:	0e 64       	R6 += 0x1;		/* (  1) */
ffa010a6:	5a 91       	P2 = [P3];
ffa010a8:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa010aa:	8a 5a       	P2 = P2 + P1;
ffa010ac:	10 9b       	B[P2] = R0;
ffa010ae:	7e 2f       	JUMP.S 0xffa00faa <_printf_int+0x1e>;
ffa010b0:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900be0 <_printf_out> */
ffa010b4:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa010b8:	91 2f       	JUMP.S 0xffa00fda <_printf_int+0x4e>;
ffa010ba:	4c 32       	P1 = P4;
ffa010bc:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa010c0:	f3 2f       	JUMP.S 0xffa010a6 <_printf_int+0x11a>;
ffa010c2:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa010c6:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa010c8:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa010ca:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa010ce:	ec 2f       	JUMP.S 0xffa010a6 <_printf_int+0x11a>;

ffa010d0 <_printf_ip>:
ffa010d0:	70 05       	[--SP] = (R7:6);
ffa010d2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa010d6:	39 30       	R7 = R1;
ffa010d8:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa010dc:	49 43       	R1 = R1.B (Z);
ffa010de:	ff e3 57 ff 	CALL 0xffa00f8c <_printf_int>;
ffa010e2:	06 e1 88 00 	R6.L = 0x88;		/* (136)	R6=0xff900088(-7339896) */
ffa010e6:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa010ea:	49 43       	R1 = R1.B (Z);
ffa010ec:	06 30       	R0 = R6;
ffa010ee:	ff e3 4f ff 	CALL 0xffa00f8c <_printf_int>;
ffa010f2:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa010f6:	49 43       	R1 = R1.B (Z);
ffa010f8:	06 30       	R0 = R6;
ffa010fa:	c7 4e       	R7 >>= 0x18;
ffa010fc:	ff e3 48 ff 	CALL 0xffa00f8c <_printf_int>;
ffa01100:	0f 30       	R1 = R7;
ffa01102:	06 30       	R0 = R6;
ffa01104:	ff e3 44 ff 	CALL 0xffa00f8c <_printf_int>;
ffa01108:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa0110c:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa01110:	ff e3 7c fe 	CALL 0xffa00e08 <_printf_str>;
ffa01114:	01 e8 00 00 	UNLINK;
ffa01118:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0111a:	30 05       	(R7:6) = [SP++];
ffa0111c:	10 00       	RTS;
	...

ffa01120 <_div>:
ffa01120:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01124:	08 4f       	R0 <<= 0x1;
ffa01126:	48 42       	DIVS (R0, R1);
ffa01128:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa0112a:	b2 e0 03 20 	LSETUP(0xffa0112e <_div+0xe>, 0xffa01130 <_div+0x10>) LC1 = P2;
ffa0112e:	08 42       	DIVQ (R0, R1);
ffa01130:	00 00       	NOP;
ffa01132:	80 42       	R0 = R0.L (X);
ffa01134:	01 e8 00 00 	UNLINK;
ffa01138:	10 00       	RTS;
	...

ffa0113c <_mod>:
ffa0113c:	70 05       	[--SP] = (R7:6);
ffa0113e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01142:	30 30       	R6 = R0;
ffa01144:	39 30       	R7 = R1;
ffa01146:	ff e3 ed ff 	CALL 0xffa01120 <_div>;
ffa0114a:	c7 40       	R7 *= R0;
ffa0114c:	01 e8 00 00 	UNLINK;
ffa01150:	be 53       	R6 = R6 - R7;
ffa01152:	06 30       	R0 = R6;
ffa01154:	30 05       	(R7:6) = [SP++];
ffa01156:	10 00       	RTS;

ffa01158 <_memcpy_>:
ffa01158:	02 0d       	CC = R2 <= 0x0;
ffa0115a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0115e:	08 32       	P1 = R0;
ffa01160:	11 32       	P2 = R1;
ffa01162:	08 18       	IF CC JUMP 0xffa01172 <_memcpy_+0x1a>;
ffa01164:	00 00       	NOP;
ffa01166:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01168:	09 64       	R1 += 0x1;		/* (  1) */
ffa0116a:	48 98       	R0 = B[P1++] (X);
ffa0116c:	0a 08       	CC = R2 == R1;
ffa0116e:	10 9a       	B[P2++] = R0;
ffa01170:	fc 17       	IF !CC JUMP 0xffa01168 <_memcpy_+0x10> (BP);
ffa01172:	01 e8 00 00 	UNLINK;
ffa01176:	10 00       	RTS;

ffa01178 <_memset_>:
ffa01178:	02 0d       	CC = R2 <= 0x0;
ffa0117a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0117e:	10 32       	P2 = R0;
ffa01180:	06 18       	IF CC JUMP 0xffa0118c <_memset_+0x14>;
ffa01182:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01184:	08 64       	R0 += 0x1;		/* (  1) */
ffa01186:	02 08       	CC = R2 == R0;
ffa01188:	11 9a       	B[P2++] = R1;
ffa0118a:	fd 17       	IF !CC JUMP 0xffa01184 <_memset_+0xc> (BP);
ffa0118c:	01 e8 00 00 	UNLINK;
ffa01190:	10 00       	RTS;
	...

ffa01194 <_strlen_>:
ffa01194:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01198:	10 32       	P2 = R0;
ffa0119a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0119c:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa011a0:	b2 e0 06 10 	LSETUP(0xffa011a4 <_strlen_+0x10>, 0xffa011ac <_strlen_+0x18>) LC1 = P1;
ffa011a4:	50 99       	R0 = B[P2] (X);
ffa011a6:	00 0c       	CC = R0 == 0x0;
ffa011a8:	04 18       	IF CC JUMP 0xffa011b0 <_strlen_+0x1c>;
ffa011aa:	09 64       	R1 += 0x1;		/* (  1) */
ffa011ac:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa011ae:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa011b0:	01 30       	R0 = R1;
ffa011b2:	01 e8 00 00 	UNLINK;
ffa011b6:	10 00       	RTS;

ffa011b8 <_strcpy_>:
ffa011b8:	12 32       	P2 = R2;
ffa011ba:	c5 04       	[--SP] = (P5:5);
ffa011bc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa011c0:	29 32       	P5 = R1;
ffa011c2:	00 32       	P0 = R0;
ffa011c4:	51 99       	R1 = B[P2] (X);
ffa011c6:	08 43       	R0 = R1.B (X);
ffa011c8:	00 0c       	CC = R0 == 0x0;
ffa011ca:	17 18       	IF CC JUMP 0xffa011f8 <_strcpy_+0x40>;
ffa011cc:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa011ce:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa011d0:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa011d4:	b2 e0 09 10 	LSETUP(0xffa011d8 <_strcpy_+0x20>, 0xffa011e6 <_strcpy_+0x2e>) LC1 = P1;
ffa011d8:	01 9a       	B[P0++] = R1;
ffa011da:	51 99       	R1 = B[P2] (X);
ffa011dc:	08 43       	R0 = R1.B (X);
ffa011de:	00 0c       	CC = R0 == 0x0;
ffa011e0:	0a 64       	R2 += 0x1;		/* (  1) */
ffa011e2:	03 18       	IF CC JUMP 0xffa011e8 <_strcpy_+0x30>;
ffa011e4:	00 00       	NOP;
ffa011e6:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa011e8:	01 e8 00 00 	UNLINK;
ffa011ec:	28 91       	R0 = [P5];
ffa011ee:	10 50       	R0 = R0 + R2;
ffa011f0:	28 93       	[P5] = R0;
ffa011f2:	40 30       	R0 = P0;
ffa011f4:	85 04       	(P5:5) = [SP++];
ffa011f6:	10 00       	RTS;
ffa011f8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa011fa:	f7 2f       	JUMP.S 0xffa011e8 <_strcpy_+0x30>;

ffa011fc <_strprepend>:
ffa011fc:	fc 05       	[--SP] = (R7:7, P5:4);
ffa011fe:	21 32       	P4 = R1;
ffa01200:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01204:	38 30       	R7 = R0;
ffa01206:	02 30       	R0 = R2;
ffa01208:	2a 32       	P5 = R2;
ffa0120a:	ff e3 c5 ff 	CALL 0xffa01194 <_strlen_>;
ffa0120e:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa01212:	20 91 00 00 
ffa01216:	02 0d       	CC = R2 <= 0x0;
ffa01218:	0a 18       	IF CC JUMP 0xffa0122c <_strprepend+0x30>;
ffa0121a:	07 52       	R0 = R7 - R0;
ffa0121c:	10 32       	P2 = R0;
ffa0121e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01220:	09 64       	R1 += 0x1;		/* (  1) */
ffa01222:	68 98       	R0 = B[P5++] (X);
ffa01224:	0a 08       	CC = R2 == R1;
ffa01226:	10 9a       	B[P2++] = R0;
ffa01228:	fc 17       	IF !CC JUMP 0xffa01220 <_strprepend+0x24> (BP);
ffa0122a:	20 91       	R0 = [P4];
ffa0122c:	01 e8 00 00 	UNLINK;
ffa01230:	07 52       	R0 = R7 - R0;
ffa01232:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01234:	10 00       	RTS;
	...

ffa01238 <_strcmp>:
ffa01238:	10 32       	P2 = R0;
ffa0123a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0123e:	01 32       	P0 = R1;
ffa01240:	51 99       	R1 = B[P2] (X);
ffa01242:	01 0c       	CC = R1 == 0x0;
ffa01244:	1b 18       	IF CC JUMP 0xffa0127a <_strcmp+0x42>;
ffa01246:	00 00       	NOP;
ffa01248:	00 00       	NOP;
ffa0124a:	00 00       	NOP;
ffa0124c:	40 99       	R0 = B[P0] (X);
ffa0124e:	00 0c       	CC = R0 == 0x0;
ffa01250:	15 18       	IF CC JUMP 0xffa0127a <_strcmp+0x42>;
ffa01252:	01 08       	CC = R1 == R0;
ffa01254:	1c 10       	IF !CC JUMP 0xffa0128c <_strcmp+0x54>;
ffa01256:	4a 32       	P1 = P2;
ffa01258:	50 32       	P2 = P0;
ffa0125a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0125c:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0125e:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa01262:	49 99       	R1 = B[P1] (X);
ffa01264:	01 0c       	CC = R1 == 0x0;
ffa01266:	0a 18       	IF CC JUMP 0xffa0127a <_strcmp+0x42>;
ffa01268:	00 00       	NOP;
ffa0126a:	00 00       	NOP;
ffa0126c:	00 00       	NOP;
ffa0126e:	50 99       	R0 = B[P2] (X);
ffa01270:	00 0c       	CC = R0 == 0x0;
ffa01272:	04 18       	IF CC JUMP 0xffa0127a <_strcmp+0x42>;
ffa01274:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa01276:	40 0c       	CC = P0 == 0x0;
ffa01278:	05 10       	IF !CC JUMP 0xffa01282 <_strcmp+0x4a>;
ffa0127a:	01 e8 00 00 	UNLINK;
ffa0127e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01280:	10 00       	RTS;
ffa01282:	01 08       	CC = R1 == R0;
ffa01284:	04 10       	IF !CC JUMP 0xffa0128c <_strcmp+0x54>;
ffa01286:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01288:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0128a:	ec 2f       	JUMP.S 0xffa01262 <_strcmp+0x2a>;
ffa0128c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0128e:	01 e8 00 00 	UNLINK;
ffa01292:	10 00       	RTS;

ffa01294 <_substr>:
ffa01294:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01296:	20 32       	P4 = R0;
ffa01298:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0129c:	11 32       	P2 = R1;
ffa0129e:	32 30       	R6 = R2;
ffa012a0:	61 99       	R1 = B[P4] (X);
ffa012a2:	01 0c       	CC = R1 == 0x0;
ffa012a4:	14 18       	IF CC JUMP 0xffa012cc <_substr+0x38>;
ffa012a6:	00 00       	NOP;
ffa012a8:	00 00       	NOP;
ffa012aa:	00 00       	NOP;
ffa012ac:	50 99       	R0 = B[P2] (X);
ffa012ae:	00 0c       	CC = R0 == 0x0;
ffa012b0:	0e 18       	IF CC JUMP 0xffa012cc <_substr+0x38>;
ffa012b2:	02 0d       	CC = R2 <= 0x0;
ffa012b4:	0c 18       	IF CC JUMP 0xffa012cc <_substr+0x38>;
ffa012b6:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa012b8:	01 08       	CC = R1 == R0;
ffa012ba:	0f 18       	IF CC JUMP 0xffa012d8 <_substr+0x44>;
ffa012bc:	00 00       	NOP;
ffa012be:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa012c0:	0b 64       	R3 += 0x1;		/* (  1) */
ffa012c2:	50 99       	R0 = B[P2] (X);
ffa012c4:	00 0c       	CC = R0 == 0x0;
ffa012c6:	03 18       	IF CC JUMP 0xffa012cc <_substr+0x38>;
ffa012c8:	1e 09       	CC = R6 <= R3;
ffa012ca:	f7 17       	IF !CC JUMP 0xffa012b8 <_substr+0x24> (BP);
ffa012cc:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa012ce:	01 e8 00 00 	UNLINK;
ffa012d2:	40 30       	R0 = P0;
ffa012d4:	b4 05       	(R7:6, P5:4) = [SP++];
ffa012d6:	10 00       	RTS;
ffa012d8:	52 30       	R2 = P2;
ffa012da:	3b 30       	R7 = R3;
ffa012dc:	0a 64       	R2 += 0x1;		/* (  1) */
ffa012de:	0f 64       	R7 += 0x1;		/* (  1) */
ffa012e0:	12 32       	P2 = R2;
ffa012e2:	07 32       	P0 = R7;
ffa012e4:	4c 32       	P1 = P4;
ffa012e6:	6c 32       	P5 = P4;
ffa012e8:	09 6c       	P1 += 0x1;		/* (  1) */
ffa012ea:	15 6c       	P5 += 0x2;		/* (  2) */
ffa012ec:	02 20       	JUMP.S 0xffa012f0 <_substr+0x5c>;
ffa012ee:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa012f0:	4b 99       	R3 = B[P1] (X);
ffa012f2:	50 99       	R0 = B[P2] (X);
ffa012f4:	03 08       	CC = R3 == R0;
ffa012f6:	0e 10       	IF !CC JUMP 0xffa01312 <_substr+0x7e>;
ffa012f8:	03 0c       	CC = R3 == 0x0;
ffa012fa:	0c 18       	IF CC JUMP 0xffa01312 <_substr+0x7e>;
ffa012fc:	00 00       	NOP;
ffa012fe:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01300:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01302:	68 98       	R0 = B[P5++] (X);
ffa01304:	00 0c       	CC = R0 == 0x0;
ffa01306:	f4 17       	IF !CC JUMP 0xffa012ee <_substr+0x5a> (BP);
ffa01308:	01 e8 00 00 	UNLINK;
ffa0130c:	40 30       	R0 = P0;
ffa0130e:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01310:	10 00       	RTS;
ffa01312:	12 32       	P2 = R2;
ffa01314:	1f 30       	R3 = R7;
ffa01316:	d6 2f       	JUMP.S 0xffa012c2 <_substr+0x2e>;

ffa01318 <_sprintf_int>:
ffa01318:	fb 05       	[--SP] = (R7:7, P5:3);
ffa0131a:	01 0c       	CC = R1 == 0x0;
ffa0131c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01320:	00 34       	I0 = R0;
ffa01322:	11 30       	R2 = R1;
ffa01324:	1a 14       	IF !CC JUMP 0xffa01358 <_sprintf_int+0x40> (BP);
ffa01326:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa0132a:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa0132e:	5a 91       	P2 = [P3];
ffa01330:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01332:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01334:	10 9b       	B[P2] = R0;
ffa01336:	88 32       	P1 = I0;
ffa01338:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0133a:	0b 52       	R0 = R3 - R1;
ffa0133c:	00 32       	P0 = R0;
ffa0133e:	5a 91       	P2 = [P3];
ffa01340:	09 64       	R1 += 0x1;		/* (  1) */
ffa01342:	99 08       	CC = R1 < R3;
ffa01344:	82 5a       	P2 = P2 + P0;
ffa01346:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa0134a:	08 9a       	B[P1++] = R0;
ffa0134c:	f7 1f       	IF CC JUMP 0xffa0133a <_sprintf_int+0x22> (BP);
ffa0134e:	01 e8 00 00 	UNLINK;
ffa01352:	03 30       	R0 = R3;
ffa01354:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01356:	10 00       	RTS;
ffa01358:	01 0d       	CC = R1 <= 0x0;
ffa0135a:	2d 18       	IF CC JUMP 0xffa013b4 <_sprintf_int+0x9c>;
ffa0135c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa01360:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa01364:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01366:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa0136a:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa0136e:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa01370:	b2 e0 20 50 	LSETUP(0xffa01374 <_sprintf_int+0x5c>, 0xffa013b0 <_sprintf_int+0x98>) LC1 = P5;
ffa01374:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa01378:	59 91 00 00 
ffa0137c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01380:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa01384:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa01388:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa0138c:	0b c4 00 00 	R0 = (A0 += A1);
ffa01390:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa01394:	10 4d       	R0 >>>= 0x2;
ffa01396:	08 52       	R0 = R0 - R1;
ffa01398:	00 32       	P0 = R0;
ffa0139a:	13 32       	P2 = R3;
ffa0139c:	0b 64       	R3 += 0x1;		/* (  1) */
ffa0139e:	40 0d       	CC = P0 <= 0x0;
ffa013a0:	51 5a       	P1 = P1 + P2;
ffa013a2:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa013a4:	92 5a       	P2 = P2 << 0x1;
ffa013a6:	4a 30       	R1 = P2;
ffa013a8:	0a 52       	R0 = R2 - R1;
ffa013aa:	80 65       	R0 += 0x30;		/* ( 48) */
ffa013ac:	08 9b       	B[P1] = R0;
ffa013ae:	39 18       	IF CC JUMP 0xffa01420 <_sprintf_int+0x108>;
ffa013b0:	50 30       	R2 = P0;
ffa013b2:	c2 2f       	JUMP.S 0xffa01336 <_sprintf_int+0x1e>;
ffa013b4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa013b6:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa013b8:	f8 4f       	R0 <<= 0x1f;
ffa013ba:	90 52       	R2 = R0 - R2;
ffa013bc:	02 0d       	CC = R2 <= 0x0;
ffa013be:	3c 18       	IF CC JUMP 0xffa01436 <_sprintf_int+0x11e>;
ffa013c0:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa013c4:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa013c8:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa013ca:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa013ce:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa013d2:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa013d4:	b2 e0 1f 50 	LSETUP(0xffa013d8 <_sprintf_int+0xc0>, 0xffa01412 <_sprintf_int+0xfa>) LC1 = P5;
ffa013d8:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa013dc:	59 91 00 00 
ffa013e0:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa013e4:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa013e8:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa013ec:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa013f0:	0b c4 00 00 	R0 = (A0 += A1);
ffa013f4:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa013f8:	10 4d       	R0 >>>= 0x2;
ffa013fa:	08 52       	R0 = R0 - R1;
ffa013fc:	00 32       	P0 = R0;
ffa013fe:	61 5a       	P1 = P1 + P4;
ffa01400:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa01402:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa01404:	92 5a       	P2 = P2 << 0x1;
ffa01406:	4a 30       	R1 = P2;
ffa01408:	0a 52       	R0 = R2 - R1;
ffa0140a:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0140c:	40 0d       	CC = P0 <= 0x0;
ffa0140e:	08 9b       	B[P1] = R0;
ffa01410:	0f 18       	IF CC JUMP 0xffa0142e <_sprintf_int+0x116>;
ffa01412:	50 30       	R2 = P0;
ffa01414:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa01416:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa01418:	5a 91       	P2 = [P3];
ffa0141a:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa0141c:	8a 5a       	P2 = P2 + P1;
ffa0141e:	10 9b       	B[P2] = R0;
ffa01420:	03 0d       	CC = R3 <= 0x0;
ffa01422:	8a 17       	IF !CC JUMP 0xffa01336 <_sprintf_int+0x1e> (BP);
ffa01424:	01 e8 00 00 	UNLINK;
ffa01428:	03 30       	R0 = R3;
ffa0142a:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0142c:	10 00       	RTS;
ffa0142e:	5c 30       	R3 = P4;
ffa01430:	4c 32       	P1 = P4;
ffa01432:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01434:	f2 2f       	JUMP.S 0xffa01418 <_sprintf_int+0x100>;
ffa01436:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa0143a:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa0143c:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa0143e:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa01442:	eb 2f       	JUMP.S 0xffa01418 <_sprintf_int+0x100>;

ffa01444 <_sprintf_hex>:
ffa01444:	10 32       	P2 = R0;
ffa01446:	78 05       	[--SP] = (R7:7);
ffa01448:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0144a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0144e:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa01450:	10 9b       	B[P2] = R0;
ffa01452:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01456:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa0145a:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa0145c:	12 6c       	P2 += 0x2;		/* (  2) */
ffa0145e:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa01460:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa01462:	b2 e0 09 10 	LSETUP(0xffa01466 <_sprintf_hex+0x22>, 0xffa01474 <_sprintf_hex+0x30>) LC1 = P1;
ffa01466:	01 30       	R0 = R1;
ffa01468:	10 40       	R0 >>>= R2;
ffa0146a:	18 54       	R0 = R0 & R3;
ffa0146c:	38 09       	CC = R0 <= R7;
ffa0146e:	09 1c       	IF CC JUMP 0xffa01480 <_sprintf_hex+0x3c> (BP);
ffa01470:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01472:	10 9a       	B[P2++] = R0;
ffa01474:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa01476:	01 e8 00 00 	UNLINK;
ffa0147a:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa0147c:	38 05       	(R7:7) = [SP++];
ffa0147e:	10 00       	RTS;
ffa01480:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01482:	f8 2f       	JUMP.S 0xffa01472 <_sprintf_hex+0x2e>;

ffa01484 <_strprintf_int>:
ffa01484:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01486:	29 32       	P5 = R1;
ffa01488:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0148c:	0a 30       	R1 = R2;
ffa0148e:	38 30       	R7 = R0;
ffa01490:	ff e3 44 ff 	CALL 0xffa01318 <_sprintf_int>;
ffa01494:	29 91       	R1 = [P5];
ffa01496:	41 50       	R1 = R1 + R0;
ffa01498:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa0149c:	29 93 00 00 
ffa014a0:	01 e8 00 00 	UNLINK;
ffa014a4:	07 30       	R0 = R7;
ffa014a6:	bd 05       	(R7:7, P5:5) = [SP++];
ffa014a8:	10 00       	RTS;
	...

ffa014ac <_strprintf_hex>:
ffa014ac:	fd 05       	[--SP] = (R7:7, P5:5);
ffa014ae:	29 32       	P5 = R1;
ffa014b0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa014b4:	0a 30       	R1 = R2;
ffa014b6:	38 30       	R7 = R0;
ffa014b8:	ff e3 c6 ff 	CALL 0xffa01444 <_sprintf_hex>;
ffa014bc:	29 91       	R1 = [P5];
ffa014be:	41 50       	R1 = R1 + R0;
ffa014c0:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa014c4:	29 93 00 00 
ffa014c8:	01 e8 00 00 	UNLINK;
ffa014cc:	07 30       	R0 = R7;
ffa014ce:	bd 05       	(R7:7, P5:5) = [SP++];
ffa014d0:	10 00       	RTS;
	...

ffa014d4 <_atoi>:
ffa014d4:	08 32       	P1 = R0;
ffa014d6:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa014d8:	f5 05       	[--SP] = (R7:6, P5:5);
ffa014da:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa014de:	48 99       	R0 = B[P1] (X);
ffa014e0:	10 08       	CC = R0 == R2;
ffa014e2:	25 18       	IF CC JUMP 0xffa0152c <_atoi+0x58>;
ffa014e4:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa014e6:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa014e8:	41 32       	P0 = P1;
ffa014ea:	08 6c       	P0 += 0x1;		/* (  1) */
ffa014ec:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa014ee:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa014f0:	12 20       	JUMP.S 0xffa01514 <_atoi+0x40>;
ffa014f2:	8b 08       	CC = R3 < R1;
ffa014f4:	16 10       	IF !CC JUMP 0xffa01520 <_atoi+0x4c>;
ffa014f6:	10 43       	R0 = R2.B (X);
ffa014f8:	28 32       	P5 = R0;
ffa014fa:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa014fc:	40 99       	R0 = B[P0] (X);
ffa014fe:	80 66       	R0 += -0x30;		/* (-48) */
ffa01500:	40 43       	R0 = R0.B (Z);
ffa01502:	aa 5a       	P2 = P2 + P5;
ffa01504:	10 0a       	CC = R0 <= R2 (IU);
ffa01506:	82 6e       	P2 += -0x30;		/* (-48) */
ffa01508:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0150a:	03 14       	IF !CC JUMP 0xffa01510 <_atoi+0x3c> (BP);
ffa0150c:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa0150e:	92 5a       	P2 = P2 << 0x1;
ffa01510:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01512:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01514:	4a 99       	R2 = B[P1] (X);
ffa01516:	02 30       	R0 = R2;
ffa01518:	80 66       	R0 += -0x30;		/* (-48) */
ffa0151a:	40 43       	R0 = R0.B (Z);
ffa0151c:	30 0a       	CC = R0 <= R6 (IU);
ffa0151e:	ea 1f       	IF CC JUMP 0xffa014f2 <_atoi+0x1e> (BP);
ffa01520:	42 30       	R0 = P2;
ffa01522:	f8 40       	R0 *= R7;
ffa01524:	01 e8 00 00 	UNLINK;
ffa01528:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0152a:	10 00       	RTS;
ffa0152c:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0152e:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01530:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01532:	db 2f       	JUMP.S 0xffa014e8 <_atoi+0x14>;

ffa01534 <_udelay>:
ffa01534:	00 0d       	CC = R0 <= 0x0;
ffa01536:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0153a:	0b 18       	IF CC JUMP 0xffa01550 <_udelay+0x1c>;
ffa0153c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0153e:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa01542:	b2 e0 03 20 	LSETUP(0xffa01546 <_udelay+0x12>, 0xffa01548 <_udelay+0x14>) LC1 = P2;
ffa01546:	00 00       	NOP;
ffa01548:	00 00       	NOP;
ffa0154a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0154c:	08 08       	CC = R0 == R1;
ffa0154e:	f8 17       	IF !CC JUMP 0xffa0153e <_udelay+0xa> (BP);
ffa01550:	01 e8 00 00 	UNLINK;
ffa01554:	10 00       	RTS;
	...

ffa01558 <_bfin_EMAC_send_check>:
ffa01558:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa0155c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01560:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01564:	50 95       	R0 = W[P2] (X);
ffa01566:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa01568:	00 02       	R0 = CC;
ffa0156a:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa0156c:	01 e8 00 00 	UNLINK;
ffa01570:	10 00       	RTS;
	...

ffa01574 <_FormatIPAddress>:
ffa01574:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01578:	18 30       	R3 = R0;
ffa0157a:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa0157e:	40 4f       	R0 <<= 0x8;
ffa01580:	52 43       	R2 = R2.B (Z);
ffa01582:	10 56       	R0 = R0 | R2;
ffa01584:	40 4f       	R0 <<= 0x8;
ffa01586:	49 43       	R1 = R1.B (Z);
ffa01588:	08 56       	R0 = R0 | R1;
ffa0158a:	40 4f       	R0 <<= 0x8;
ffa0158c:	5b 43       	R3 = R3.B (Z);
ffa0158e:	18 56       	R0 = R0 | R3;
ffa01590:	01 e8 00 00 	UNLINK;
ffa01594:	10 00       	RTS;
	...

ffa01598 <_bfin_EMAC_halt>:
ffa01598:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa0159c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0159e:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa015a2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa015a6:	10 93       	[P2] = R0;
ffa015a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa015ac:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa015b0:	10 97       	W[P2] = R0;
ffa015b2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa015b6:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa015ba:	10 97       	W[P2] = R0;
ffa015bc:	01 e8 00 00 	UNLINK;
ffa015c0:	10 00       	RTS;
	...

ffa015c4 <_PollMdcDone>:
ffa015c4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa015c8:	02 20       	JUMP.S 0xffa015cc <_PollMdcDone+0x8>;
ffa015ca:	00 00       	NOP;
ffa015cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa015d0:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa015d4:	10 91       	R0 = [P2];
ffa015d6:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa015d8:	f9 17       	IF !CC JUMP 0xffa015ca <_PollMdcDone+0x6> (BP);
ffa015da:	01 e8 00 00 	UNLINK;
ffa015de:	10 00       	RTS;

ffa015e0 <_WrPHYReg>:
ffa015e0:	68 05       	[--SP] = (R7:5);
ffa015e2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa015e6:	28 30       	R5 = R0;
ffa015e8:	31 30       	R6 = R1;
ffa015ea:	3a 30       	R7 = R2;
ffa015ec:	ff e3 ec ff 	CALL 0xffa015c4 <_PollMdcDone>;
ffa015f0:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa015f2:	b0 55       	R6 = R0 & R6;
ffa015f4:	28 54       	R0 = R0 & R5;
ffa015f6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa015fa:	58 4f       	R0 <<= 0xb;
ffa015fc:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa015fe:	ff 42       	R7 = R7.L (Z);
ffa01600:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01604:	36 4f       	R6 <<= 0x6;
ffa01606:	08 56       	R0 = R0 | R1;
ffa01608:	17 93       	[P2] = R7;
ffa0160a:	86 57       	R6 = R6 | R0;
ffa0160c:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0160e:	16 93       	[P2] = R6;
ffa01610:	01 e8 00 00 	UNLINK;
ffa01614:	28 05       	(R7:5) = [SP++];
ffa01616:	10 00       	RTS;

ffa01618 <_RdPHYReg>:
ffa01618:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0161a:	29 32       	P5 = R1;
ffa0161c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01620:	38 30       	R7 = R0;
ffa01622:	ff e3 d1 ff 	CALL 0xffa015c4 <_PollMdcDone>;
ffa01626:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa0162a:	45 30       	R0 = P5;
ffa0162c:	c0 42       	R0 = R0.L (Z);
ffa0162e:	28 32       	P5 = R0;
ffa01630:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01632:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01636:	55 30       	R2 = P5;
ffa01638:	42 54       	R1 = R2 & R0;
ffa0163a:	38 54       	R0 = R0 & R7;
ffa0163c:	58 4f       	R0 <<= 0xb;
ffa0163e:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa01640:	31 4f       	R1 <<= 0x6;
ffa01642:	41 56       	R1 = R1 | R0;
ffa01644:	11 93       	[P2] = R1;
ffa01646:	ff e3 bf ff 	CALL 0xffa015c4 <_PollMdcDone>;
ffa0164a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0164e:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01652:	10 91       	R0 = [P2];
ffa01654:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa01658:	0a e1 e4 0b 	P2.L = 0xbe4;		/* (3044)	P2=0xff900be4 <_PHYregs> */
ffa0165c:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa0165e:	10 97       	W[P2] = R0;
ffa01660:	01 e8 00 00 	UNLINK;
ffa01664:	c0 42       	R0 = R0.L (Z);
ffa01666:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01668:	10 00       	RTS;
	...

ffa0166c <_SoftResetPHY>:
ffa0166c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0166e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01670:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa01674:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01678:	ff e3 b4 ff 	CALL 0xffa015e0 <_WrPHYReg>;
ffa0167c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0167e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01680:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01682:	ff e3 af ff 	CALL 0xffa015e0 <_WrPHYReg>;
ffa01686:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01688:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0168a:	ff e3 c7 ff 	CALL 0xffa01618 <_RdPHYReg>;
ffa0168e:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa01690:	fb 1f       	IF CC JUMP 0xffa01686 <_SoftResetPHY+0x1a> (BP);
ffa01692:	01 e8 00 00 	UNLINK;
ffa01696:	10 00       	RTS;

ffa01698 <_NetCksum>:
ffa01698:	01 0d       	CC = R1 <= 0x0;
ffa0169a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0169e:	10 18       	IF CC JUMP 0xffa016be <_NetCksum+0x26>;
ffa016a0:	10 32       	P2 = R0;
ffa016a2:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa016a4:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa016a6:	0a 64       	R2 += 0x1;		/* (  1) */
ffa016a8:	10 94       	R0 = W[P2++] (Z);
ffa016aa:	0a 08       	CC = R2 == R1;
ffa016ac:	c3 50       	R3 = R3 + R0;
ffa016ae:	fc 17       	IF !CC JUMP 0xffa016a6 <_NetCksum+0xe> (BP);
ffa016b0:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa016b4:	03 50       	R0 = R3 + R0;
ffa016b6:	c0 42       	R0 = R0.L (Z);
ffa016b8:	01 e8 00 00 	UNLINK;
ffa016bc:	10 00       	RTS;
ffa016be:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa016c0:	01 e8 00 00 	UNLINK;
ffa016c4:	10 00       	RTS;
	...

ffa016c8 <_htons>:
ffa016c8:	08 30       	R1 = R0;
ffa016ca:	c0 42       	R0 = R0.L (Z);
ffa016cc:	40 4e       	R0 >>= 0x8;
ffa016ce:	41 4f       	R1 <<= 0x8;
ffa016d0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa016d4:	08 56       	R0 = R0 | R1;
ffa016d6:	c0 42       	R0 = R0.L (Z);
ffa016d8:	01 e8 00 00 	UNLINK;
ffa016dc:	10 00       	RTS;
	...

ffa016e0 <_htonl>:
ffa016e0:	10 30       	R2 = R0;
ffa016e2:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa016e6:	40 43       	R0 = R0.B (Z);
ffa016e8:	49 43       	R1 = R1.B (Z);
ffa016ea:	40 4f       	R0 <<= 0x8;
ffa016ec:	08 56       	R0 = R0 | R1;
ffa016ee:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa016f2:	40 4f       	R0 <<= 0x8;
ffa016f4:	49 43       	R1 = R1.B (Z);
ffa016f6:	08 56       	R0 = R0 | R1;
ffa016f8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa016fc:	40 4f       	R0 <<= 0x8;
ffa016fe:	c2 4e       	R2 >>= 0x18;
ffa01700:	10 56       	R0 = R0 | R2;
ffa01702:	01 e8 00 00 	UNLINK;
ffa01706:	10 00       	RTS;

ffa01708 <_pack4chars>:
ffa01708:	08 32       	P1 = R0;
ffa0170a:	10 32       	P2 = R0;
ffa0170c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01710:	01 e8 00 00 	UNLINK;
ffa01714:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa01718:	10 98       	R0 = B[P2++] (Z);
ffa0171a:	41 4f       	R1 <<= 0x8;
ffa0171c:	08 50       	R0 = R0 + R1;
ffa0171e:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa01722:	81 4f       	R1 <<= 0x10;
ffa01724:	08 50       	R0 = R0 + R1;
ffa01726:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa0172a:	c1 4f       	R1 <<= 0x18;
ffa0172c:	08 50       	R0 = R0 + R1;
ffa0172e:	10 00       	RTS;

ffa01730 <_ip_header_setup>:
ffa01730:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01732:	28 32       	P5 = R0;
ffa01734:	21 32       	P4 = R1;
ffa01736:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa0173a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0173e:	32 30       	R6 = R2;
ffa01740:	28 9b       	B[P5] = R0;
ffa01742:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01744:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa01748:	27 91       	R7 = [P4];
ffa0174a:	f8 42       	R0 = R7.L (Z);
ffa0174c:	ff e3 be ff 	CALL 0xffa016c8 <_htons>;
ffa01750:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be4 <_PHYregs> */
ffa01754:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa01758:	68 b4       	W[P5 + 0x2] = R0;
ffa0175a:	10 95       	R0 = W[P2] (Z);
ffa0175c:	08 30       	R1 = R0;
ffa0175e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01760:	67 67       	R7 += -0x14;		/* (-20) */
ffa01762:	11 97       	W[P2] = R1;
ffa01764:	27 93       	[P4] = R7;
ffa01766:	ff e3 b1 ff 	CALL 0xffa016c8 <_htons>;
ffa0176a:	a8 b4       	W[P5 + 0x4] = R0;
ffa0176c:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01770:	ff e3 ac ff 	CALL 0xffa016c8 <_htons>;
ffa01774:	e8 b4       	W[P5 + 0x6] = R0;
ffa01776:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa0177a:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0177e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2e <_NetIPID> */
ffa01782:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa01786:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0178a:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa0178e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01790:	68 b5       	W[P5 + 0xa] = R0;
ffa01792:	10 91       	R0 = [P2];
ffa01794:	e8 b0       	[P5 + 0xc] = R0;
ffa01796:	2e b1       	[P5 + 0x10] = R6;
ffa01798:	45 30       	R0 = P5;
ffa0179a:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0179c:	ff e3 7e ff 	CALL 0xffa01698 <_NetCksum>;
ffa017a0:	c0 43       	R0 =~ R0;
ffa017a2:	68 b5       	W[P5 + 0xa] = R0;
ffa017a4:	01 e8 00 00 	UNLINK;
ffa017a8:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa017aa:	45 30       	R0 = P5;
ffa017ac:	b4 05       	(R7:6, P5:4) = [SP++];
ffa017ae:	10 00       	RTS;

ffa017b0 <_ip_header_checksum>:
ffa017b0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa017b4:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa017b6:	ff e3 71 ff 	CALL 0xffa01698 <_NetCksum>;
ffa017ba:	08 02       	CC = R0;
ffa017bc:	00 02       	R0 = CC;
ffa017be:	01 e8 00 00 	UNLINK;
ffa017c2:	10 00       	RTS;

ffa017c4 <_icmp_header_setup>:
ffa017c4:	00 32       	P0 = R0;
ffa017c6:	c5 04       	[--SP] = (P5:5);
ffa017c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017ca:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa017ce:	29 32       	P5 = R1;
ffa017d0:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa017d4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017d6:	40 b4       	W[P0 + 0x2] = R0;
ffa017d8:	38 ab       	R0 = W[FP + 0x18] (X);
ffa017da:	80 b4       	W[P0 + 0x4] = R0;
ffa017dc:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa017de:	02 9b       	B[P0] = R2;
ffa017e0:	c0 b4       	W[P0 + 0x6] = R0;
ffa017e2:	48 32       	P1 = P0;
ffa017e4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa017e6:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa017e8:	b2 e0 03 20 	LSETUP(0xffa017ec <_icmp_header_setup+0x28>, 0xffa017ee <_icmp_header_setup+0x2a>) LC1 = P2;
ffa017ec:	08 94       	R0 = W[P1++] (Z);
ffa017ee:	41 50       	R1 = R1 + R0;
ffa017f0:	c8 42       	R0 = R1.L (Z);
ffa017f2:	81 4e       	R1 >>= 0x10;
ffa017f4:	08 50       	R0 = R0 + R1;
ffa017f6:	c0 43       	R0 =~ R0;
ffa017f8:	40 b4       	W[P0 + 0x2] = R0;
ffa017fa:	28 91       	R0 = [P5];
ffa017fc:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa017fe:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01800:	01 e8 00 00 	UNLINK;
ffa01804:	28 93       	[P5] = R0;
ffa01806:	40 30       	R0 = P0;
ffa01808:	85 04       	(P5:5) = [SP++];
ffa0180a:	10 00       	RTS;

ffa0180c <_udp_header_setup>:
ffa0180c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0180e:	28 32       	P5 = R0;
ffa01810:	21 32       	P4 = R1;
ffa01812:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01816:	d0 42       	R0 = R2.L (Z);
ffa01818:	ff e3 58 ff 	CALL 0xffa016c8 <_htons>;
ffa0181c:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa01820:	28 97       	W[P5] = R0;
ffa01822:	07 30       	R0 = R7;
ffa01824:	ff e3 52 ff 	CALL 0xffa016c8 <_htons>;
ffa01828:	27 91       	R7 = [P4];
ffa0182a:	68 b4       	W[P5 + 0x2] = R0;
ffa0182c:	f8 42       	R0 = R7.L (Z);
ffa0182e:	ff e3 4d ff 	CALL 0xffa016c8 <_htons>;
ffa01832:	a8 b4       	W[P5 + 0x4] = R0;
ffa01834:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01836:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa01838:	e8 b4       	W[P5 + 0x6] = R0;
ffa0183a:	01 e8 00 00 	UNLINK;
ffa0183e:	45 6c       	P5 += 0x8;		/* (  8) */
ffa01840:	45 30       	R0 = P5;
ffa01842:	27 93       	[P4] = R7;
ffa01844:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01846:	10 00       	RTS;

ffa01848 <_tcp_header_setup>:
ffa01848:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0184a:	28 32       	P5 = R0;
ffa0184c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01850:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01854:	21 32       	P4 = R1;
ffa01856:	3a 30       	R7 = R2;
ffa01858:	ff e3 38 ff 	CALL 0xffa016c8 <_htons>;
ffa0185c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa01860:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa01864:	28 97       	W[P5] = R0;
ffa01866:	50 95       	R0 = W[P2] (X);
ffa01868:	68 b4       	W[P5 + 0x2] = R0;
ffa0186a:	38 a2       	R0 = [FP + 0x20];
ffa0186c:	ff e3 3a ff 	CALL 0xffa016e0 <_htonl>;
ffa01870:	68 b0       	[P5 + 0x4] = R0;
ffa01872:	78 a2       	R0 = [FP + 0x24];
ffa01874:	ff e3 36 ff 	CALL 0xffa016e0 <_htonl>;
ffa01878:	a8 b0       	[P5 + 0x8] = R0;
ffa0187a:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa0187e:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01882:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa01886:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa0188a:	ff e3 1f ff 	CALL 0xffa016c8 <_htons>;
ffa0188e:	e8 b5       	W[P5 + 0xe] = R0;
ffa01890:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01892:	28 b6       	W[P5 + 0x10] = R0;
ffa01894:	68 b6       	W[P5 + 0x12] = R0;
ffa01896:	20 91       	R0 = [P4];
ffa01898:	60 67       	R0 += -0x14;		/* (-20) */
ffa0189a:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa0189c:	01 e8 00 00 	UNLINK;
ffa018a0:	20 93       	[P4] = R0;
ffa018a2:	45 30       	R0 = P5;
ffa018a4:	bc 05       	(R7:7, P5:4) = [SP++];
ffa018a6:	10 00       	RTS;

ffa018a8 <_DHCP_parse>:
ffa018a8:	f5 05       	[--SP] = (R7:6, P5:5);
ffa018aa:	09 0d       	CC = R1 <= 0x1;
ffa018ac:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa018b0:	10 32       	P2 = R0;
ffa018b2:	33 18       	IF CC JUMP 0xffa01918 <_DHCP_parse+0x70>;
ffa018b4:	00 00       	NOP;
ffa018b6:	31 30       	R6 = R1;
ffa018b8:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa018ba:	11 98       	R1 = B[P2++] (Z);
ffa018bc:	01 0c       	CC = R1 == 0x0;
ffa018be:	2b 1c       	IF CC JUMP 0xffa01914 <_DHCP_parse+0x6c> (BP);
ffa018c0:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa018c4:	01 08       	CC = R1 == R0;
ffa018c6:	57 99       	R7 = B[P2] (X);
ffa018c8:	28 18       	IF CC JUMP 0xffa01918 <_DHCP_parse+0x70>;
ffa018ca:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa018cc:	6a 32       	P5 = P2;
ffa018ce:	01 0a       	CC = R1 <= R0 (IU);
ffa018d0:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa018d2:	09 14       	IF !CC JUMP 0xffa018e4 <_DHCP_parse+0x3c> (BP);
ffa018d4:	09 32       	P1 = R1;
ffa018d6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpClientPort> */
ffa018da:	0a e1 a8 03 	P2.L = 0x3a8;		/* (936)	P2=0xff9003a8 */
ffa018de:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa018e0:	52 91       	P2 = [P2];
ffa018e2:	52 00       	JUMP (P2);
ffa018e4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa018e8:	00 e1 80 01 	R0.L = 0x180;		/* (384)	R0=0xff900180(-7339648) */
ffa018ec:	ff e3 50 fb 	CALL 0xffa00f8c <_printf_int>;
ffa018f0:	7f 43       	R7 = R7.B (Z);
ffa018f2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900180(-7339648) */
ffa018f6:	00 e1 94 01 	R0.L = 0x194;		/* (404)	R0=0xff900194(-7339628) */
ffa018fa:	0f 30       	R1 = R7;
ffa018fc:	ff e3 48 fb 	CALL 0xffa00f8c <_printf_int>;
ffa01900:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900194(-7339628) */
ffa01904:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa01908:	ff e3 80 fa 	CALL 0xffa00e08 <_printf_str>;
ffa0190c:	0f 32       	P1 = R7;
ffa0190e:	be 53       	R6 = R6 - R7;
ffa01910:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01912:	8d 5a       	P2 = P5 + P1;
ffa01914:	0e 0d       	CC = R6 <= 0x1;
ffa01916:	d1 17       	IF !CC JUMP 0xffa018b8 <_DHCP_parse+0x10> (BP);
ffa01918:	01 e8 00 00 	UNLINK;
ffa0191c:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0191e:	10 00       	RTS;
ffa01920:	45 30       	R0 = P5;
ffa01922:	ff e3 f3 fe 	CALL 0xffa01708 <_pack4chars>;
ffa01926:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff9003a8 */
ffa0192a:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetSubnetMask> */
ffa0192e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01932:	10 93 00 00 
ffa01936:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa0193a:	00 e1 d8 00 	R0.L = 0xd8;		/* (216)	R0=0xff9000d8(-7339816) */
ffa0193e:	ff e3 c9 fb 	CALL 0xffa010d0 <_printf_ip>;
ffa01942:	7f 43       	R7 = R7.B (Z);
ffa01944:	de 2f       	JUMP.S 0xffa01900 <_DHCP_parse+0x58>;
ffa01946:	45 30       	R0 = P5;
ffa01948:	ff e3 e0 fe 	CALL 0xffa01708 <_pack4chars>;
ffa0194c:	08 30       	R1 = R0;
ffa0194e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000d8(-7339816) */
ffa01952:	00 e1 e8 00 	R0.L = 0xe8;		/* (232)	R0=0xff9000e8(-7339800) */
ffa01956:	ff e3 bd fb 	CALL 0xffa010d0 <_printf_ip>;
ffa0195a:	7f 43       	R7 = R7.B (Z);
ffa0195c:	d2 2f       	JUMP.S 0xffa01900 <_DHCP_parse+0x58>;
ffa0195e:	45 30       	R0 = P5;
ffa01960:	ff e3 d4 fe 	CALL 0xffa01708 <_pack4chars>;
ffa01964:	08 30       	R1 = R0;
ffa01966:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000e8(-7339800) */
ffa0196a:	00 e1 f8 00 	R0.L = 0xf8;		/* (248)	R0=0xff9000f8(-7339784) */
ffa0196e:	ff e3 b1 fb 	CALL 0xffa010d0 <_printf_ip>;
ffa01972:	7f 43       	R7 = R7.B (Z);
ffa01974:	c6 2f       	JUMP.S 0xffa01900 <_DHCP_parse+0x58>;
ffa01976:	45 30       	R0 = P5;
ffa01978:	ff e3 c8 fe 	CALL 0xffa01708 <_pack4chars>;
ffa0197c:	08 30       	R1 = R0;
ffa0197e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f8(-7339784) */
ffa01982:	00 e1 08 01 	R0.L = 0x108;		/* (264)	R0=0xff900108(-7339768) */
ffa01986:	ff e3 a5 fb 	CALL 0xffa010d0 <_printf_ip>;
ffa0198a:	7f 43       	R7 = R7.B (Z);
ffa0198c:	ba 2f       	JUMP.S 0xffa01900 <_DHCP_parse+0x58>;
ffa0198e:	45 30       	R0 = P5;
ffa01990:	ff e3 bc fe 	CALL 0xffa01708 <_pack4chars>;
ffa01994:	ff e3 a6 fe 	CALL 0xffa016e0 <_htonl>;
ffa01998:	08 30       	R1 = R0;
ffa0199a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900108(-7339768) */
ffa0199e:	00 e1 18 01 	R0.L = 0x118;		/* (280)	R0=0xff900118(-7339752) */
ffa019a2:	ff e3 f5 fa 	CALL 0xffa00f8c <_printf_int>;
ffa019a6:	7f 43       	R7 = R7.B (Z);
ffa019a8:	ac 2f       	JUMP.S 0xffa01900 <_DHCP_parse+0x58>;
ffa019aa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900118(-7339752) */
ffa019ae:	29 99       	R1 = B[P5] (Z);
ffa019b0:	00 e1 2c 01 	R0.L = 0x12c;		/* (300)	R0=0xff90012c(-7339732) */
ffa019b4:	ff e3 ec fa 	CALL 0xffa00f8c <_printf_int>;
ffa019b8:	7f 43       	R7 = R7.B (Z);
ffa019ba:	a3 2f       	JUMP.S 0xffa01900 <_DHCP_parse+0x58>;
ffa019bc:	45 30       	R0 = P5;
ffa019be:	ff e3 a5 fe 	CALL 0xffa01708 <_pack4chars>;
ffa019c2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_NetSubnetMask> */
ffa019c6:	0a e1 28 0c 	P2.L = 0xc28;		/* (3112)	P2=0xff900c28 <_NetDHCPserv> */
ffa019ca:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa019ce:	10 93 00 00 
ffa019d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90012c(-7339732) */
ffa019d6:	00 e1 40 01 	R0.L = 0x140;		/* (320)	R0=0xff900140(-7339712) */
ffa019da:	ff e3 7b fb 	CALL 0xffa010d0 <_printf_ip>;
ffa019de:	7f 43       	R7 = R7.B (Z);
ffa019e0:	90 2f       	JUMP.S 0xffa01900 <_DHCP_parse+0x58>;
ffa019e2:	45 30       	R0 = P5;
ffa019e4:	ff e3 92 fe 	CALL 0xffa01708 <_pack4chars>;
ffa019e8:	ff e3 7c fe 	CALL 0xffa016e0 <_htonl>;
ffa019ec:	08 30       	R1 = R0;
ffa019ee:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900140(-7339712) */
ffa019f2:	00 e1 54 01 	R0.L = 0x154;		/* (340)	R0=0xff900154(-7339692) */
ffa019f6:	ff e3 cb fa 	CALL 0xffa00f8c <_printf_int>;
ffa019fa:	7f 43       	R7 = R7.B (Z);
ffa019fc:	82 2f       	JUMP.S 0xffa01900 <_DHCP_parse+0x58>;
ffa019fe:	45 30       	R0 = P5;
ffa01a00:	ff e3 84 fe 	CALL 0xffa01708 <_pack4chars>;
ffa01a04:	ff e3 6e fe 	CALL 0xffa016e0 <_htonl>;
ffa01a08:	08 30       	R1 = R0;
ffa01a0a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900154(-7339692) */
ffa01a0e:	00 e1 68 01 	R0.L = 0x168;		/* (360)	R0=0xff900168(-7339672) */
ffa01a12:	ff e3 bd fa 	CALL 0xffa00f8c <_printf_int>;
ffa01a16:	7f 43       	R7 = R7.B (Z);
ffa01a18:	74 2f       	JUMP.S 0xffa01900 <_DHCP_parse+0x58>;
	...

ffa01a1c <_bfin_EMAC_send_nocopy>:
ffa01a1c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c28(-4191192) */
ffa01a20:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01a22:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01a26:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01a2a:	10 97       	W[P2] = R0;
ffa01a2c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01a30:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01a34:	50 95       	R0 = W[P2] (X);
ffa01a36:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01a38:	59 10       	IF !CC JUMP 0xffa01aea <_bfin_EMAC_send_nocopy+0xce>;
ffa01a3a:	00 00       	NOP;
ffa01a3c:	00 00       	NOP;
ffa01a3e:	00 00       	NOP;
ffa01a40:	50 95       	R0 = W[P2] (X);
ffa01a42:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01a44:	16 18       	IF CC JUMP 0xffa01a70 <_bfin_EMAC_send_nocopy+0x54>;
ffa01a46:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0008 */
ffa01a4a:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01a4e:	b2 e0 09 10 	LSETUP(0xffa01a52 <_bfin_EMAC_send_nocopy+0x36>, 0xffa01a60 <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa01a52:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01a56:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01a5a:	50 95       	R0 = W[P2] (X);
ffa01a5c:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01a5e:	09 18       	IF CC JUMP 0xffa01a70 <_bfin_EMAC_send_nocopy+0x54>;
ffa01a60:	00 00       	NOP;
ffa01a62:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa01a66:	00 e1 b4 01 	R0.L = 0x1b4;		/* (436)	R0=0xff9001b4(-7339596) */
ffa01a6a:	ff e3 cf f9 	CALL 0xffa00e08 <_printf_str>;
ffa01a6e:	30 20       	JUMP.S 0xffa01ace <_bfin_EMAC_send_nocopy+0xb2>;
ffa01a70:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa01a74:	08 e1 2c 0c 	P0.L = 0xc2c;		/* (3116)	P0=0xff900c2c <_txIdx> */
ffa01a78:	00 95       	R0 = W[P0] (Z);
ffa01a7a:	10 32       	P2 = R0;
ffa01a7c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01a80:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa01a84:	42 95       	R2 = W[P0] (X);
ffa01a86:	d1 42       	R1 = R2.L (Z);
ffa01a88:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01a8a:	52 91       	P2 = [P2];
ffa01a8c:	11 0d       	CC = R1 <= 0x2;
ffa01a8e:	90 a1       	R0 = [P2 + 0x18];
ffa01a90:	50 b0       	[P2 + 0x4] = R0;
ffa01a92:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a94:	90 b2       	[P2 + 0x28] = R0;
ffa01a96:	11 32       	P2 = R1;
ffa01a98:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa01a9a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01a9e:	08 91       	R0 = [P1];
ffa01aa0:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01aa4:	10 93       	[P2] = R0;
ffa01aa6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01aaa:	0a e1 9a 04 	P2.L = 0x49a;		/* (1178)	P2=0xff90049a <_txdmacfg> */
ffa01aae:	50 95       	R0 = W[P2] (X);
ffa01ab0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0049a(-4193126) */
ffa01ab4:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01ab8:	10 97       	W[P2] = R0;
ffa01aba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01abe:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01ac2:	10 91       	R0 = [P2];
ffa01ac4:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01ac6:	10 93       	[P2] = R0;
ffa01ac8:	0d 1c       	IF CC JUMP 0xffa01ae2 <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa01aca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01acc:	00 97       	W[P0] = R0;
ffa01ace:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01ad2:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01ad4:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01ad8:	10 97       	W[P2] = R0;
ffa01ada:	01 e8 00 00 	UNLINK;
ffa01ade:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ae0:	10 00       	RTS;
ffa01ae2:	02 30       	R0 = R2;
ffa01ae4:	08 64       	R0 += 0x1;		/* (  1) */
ffa01ae6:	00 97       	W[P0] = R0;
ffa01ae8:	f3 2f       	JUMP.S 0xffa01ace <_bfin_EMAC_send_nocopy+0xb2>;
ffa01aea:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01aee:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa01af2:	ff e3 8b f9 	CALL 0xffa00e08 <_printf_str>;
ffa01af6:	ec 2f       	JUMP.S 0xffa01ace <_bfin_EMAC_send_nocopy+0xb2>;

ffa01af8 <_DHCP_tx>:
ffa01af8:	e3 05       	[--SP] = (R7:4, P5:3);
ffa01afa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa01afe:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01b02:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa01b06:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa01b0a:	10 95 00 00 
ffa01b0e:	10 32       	P2 = R0;
ffa01b10:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c30 <_txbuf> */
ffa01b14:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa01b18:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa01b1c:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01b1e:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01b20:	52 91       	P2 = [P2];
ffa01b22:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa01b26:	f1 bb 00 00 
ffa01b2a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90000b */
ffa01b2e:	0d e1 54 0c 	P5.L = 0xc54;		/* (3156)	P5=0xff900c54 <_NetOurMAC> */
ffa01b32:	94 ad       	P4 = [P2 + 0x18];
ffa01b34:	1a 32       	P3 = R2;
ffa01b36:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01b38:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01b3a:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa01b3e:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa01b42:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa01b46:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa01b4a:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa01b4e:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa01b52:	20 97       	W[P4] = R0;
ffa01b54:	68 99       	R0 = B[P5] (X);
ffa01b56:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa01b5a:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01b5e:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa01b62:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01b66:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa01b6a:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01b6e:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa01b72:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01b76:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa01b7a:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01b7e:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa01b82:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01b86:	ff e3 a1 fd 	CALL 0xffa016c8 <_htons>;
ffa01b8a:	e0 b5       	W[P4 + 0xe] = R0;
ffa01b8c:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01b90:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa01b94:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa01b98:	04 50       	R0 = R4 + R0;
ffa01b9a:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa01b9e:	c0 42       	R0 = R0.L (Z);
ffa01ba0:	ff e3 94 fd 	CALL 0xffa016c8 <_htons>;
ffa01ba4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa01ba8:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa01bac:	60 b6       	W[P4 + 0x12] = R0;
ffa01bae:	10 95       	R0 = W[P2] (Z);
ffa01bb0:	08 30       	R1 = R0;
ffa01bb2:	09 64       	R1 += 0x1;		/* (  1) */
ffa01bb4:	11 97       	W[P2] = R1;
ffa01bb6:	ff e3 89 fd 	CALL 0xffa016c8 <_htons>;
ffa01bba:	a0 b6       	W[P4 + 0x14] = R0;
ffa01bbc:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01bc0:	ff e3 84 fd 	CALL 0xffa016c8 <_htons>;
ffa01bc4:	e0 b6       	W[P4 + 0x16] = R0;
ffa01bc6:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01bc8:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa01bcc:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa01bd0:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa01bd4:	66 b7 00 00 
ffa01bd8:	44 30       	R0 = P4;
ffa01bda:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01bdc:	e7 b1       	[P4 + 0x1c] = R7;
ffa01bde:	23 be       	[P4 + 0x20] = P3;
ffa01be0:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01be2:	ff e3 5b fd 	CALL 0xffa01698 <_NetCksum>;
ffa01be6:	c0 43       	R0 =~ R0;
ffa01be8:	60 b7       	W[P4 + 0x1a] = R0;
ffa01bea:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa01bee:	ff e3 6d fd 	CALL 0xffa016c8 <_htons>;
ffa01bf2:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa01bf6:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa01bfa:	ff e3 67 fd 	CALL 0xffa016c8 <_htons>;
ffa01bfe:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa01c02:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa01c06:	04 50       	R0 = R4 + R0;
ffa01c08:	c0 42       	R0 = R0.L (Z);
ffa01c0a:	ff e3 5f fd 	CALL 0xffa016c8 <_htons>;
ffa01c0e:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa01c12:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01c14:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa01c18:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa01c1c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c2e(-4191186) */
ffa01c20:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01c22:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa01c26:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa01c2a:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa01c2e:	10 91       	R0 = [P2];
ffa01c30:	20 b3       	[P4 + 0x30] = R0;
ffa01c32:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa01c36:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa01c3a:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa01c3e:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa01c42:	a7 b3       	[P4 + 0x38] = R7;
ffa01c44:	e7 b3       	[P4 + 0x3c] = R7;
ffa01c46:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa01c4a:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa01c4e:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa01c52:	ff e3 47 fd 	CALL 0xffa016e0 <_htonl>;
ffa01c56:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa01c5a:	68 99       	R0 = B[P5] (X);
ffa01c5c:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa01c60:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01c64:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa01c68:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01c6c:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa01c70:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01c74:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa01c78:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01c7c:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa01c80:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01c84:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa01c88:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa01c8c:	54 5a       	P1 = P4 + P2;
ffa01c8e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c90:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa01c92:	b2 e0 02 20 	LSETUP(0xffa01c96 <_DHCP_tx+0x19e>, 0xffa01c96 <_DHCP_tx+0x19e>) LC1 = P2;
ffa01c96:	08 9a       	B[P1++] = R0;
ffa01c98:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa01c9c:	54 5a       	P1 = P4 + P2;
ffa01c9e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01ca0:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa01ca2:	b2 e0 02 20 	LSETUP(0xffa01ca6 <_DHCP_tx+0x1ae>, 0xffa01ca6 <_DHCP_tx+0x1ae>) LC1 = P2;
ffa01ca6:	08 92       	[P1++] = R0;
ffa01ca8:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa01cac:	54 5a       	P1 = P4 + P2;
ffa01cae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01cb0:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa01cb2:	b2 e0 02 20 	LSETUP(0xffa01cb6 <_DHCP_tx+0x1be>, 0xffa01cb6 <_DHCP_tx+0x1be>) LC1 = P2;
ffa01cb6:	08 92       	[P1++] = R0;
ffa01cb8:	44 30       	R0 = P4;
ffa01cba:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa01cbe:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa01cc2:	f0 b9 00 00 
ffa01cc6:	14 30       	R2 = R4;
ffa01cc8:	ff e3 48 fa 	CALL 0xffa01158 <_memcpy_>;
ffa01ccc:	01 e8 00 00 	UNLINK;
ffa01cd0:	a3 05       	(R7:4, P5:3) = [SP++];
ffa01cd2:	ff e2 a5 fe 	JUMP.L 0xffa01a1c <_bfin_EMAC_send_nocopy>;
	...

ffa01cd8 <_bfin_EMAC_send>:
ffa01cd8:	c4 04       	[--SP] = (P5:4);
ffa01cda:	01 0d       	CC = R1 <= 0x0;
ffa01cdc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01ce0:	18 30       	R3 = R0;
ffa01ce2:	11 30       	R2 = R1;
ffa01ce4:	90 18       	IF CC JUMP 0xffa01e04 <_bfin_EMAC_send+0x12c>;
ffa01ce6:	00 00       	NOP;
ffa01ce8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00020(-4194272) */
ffa01cec:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01cf0:	50 95       	R0 = W[P2] (X);
ffa01cf2:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01cf4:	74 10       	IF !CC JUMP 0xffa01ddc <_bfin_EMAC_send+0x104>;
ffa01cf6:	00 00       	NOP;
ffa01cf8:	00 00       	NOP;
ffa01cfa:	00 00       	NOP;
ffa01cfc:	50 95       	R0 = W[P2] (X);
ffa01cfe:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01d00:	17 18       	IF CC JUMP 0xffa01d2e <_bfin_EMAC_send+0x56>;
ffa01d02:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0c30 */
ffa01d06:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01d0a:	b2 e0 09 10 	LSETUP(0xffa01d0e <_bfin_EMAC_send+0x36>, 0xffa01d1c <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa01d0e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01d12:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01d16:	50 95       	R0 = W[P2] (X);
ffa01d18:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01d1a:	0a 18       	IF CC JUMP 0xffa01d2e <_bfin_EMAC_send+0x56>;
ffa01d1c:	00 00       	NOP;
ffa01d1e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01d22:	00 e1 e8 01 	R0.L = 0x1e8;		/* (488)	R0=0xff9001e8(-7339544) */
ffa01d26:	ff e3 71 f8 	CALL 0xffa00e08 <_printf_str>;
ffa01d2a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01d2c:	53 20       	JUMP.S 0xffa01dd2 <_bfin_EMAC_send+0xfa>;
ffa01d2e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900000 <_l1_data_a> */
ffa01d32:	0c e1 2c 0c 	P4.L = 0xc2c;		/* (3116)	P4=0xff900c2c <_txIdx> */
ffa01d36:	20 95       	R0 = W[P4] (Z);
ffa01d38:	10 32       	P2 = R0;
ffa01d3a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c54 <_NetOurMAC> */
ffa01d3e:	0d e1 30 0c 	P5.L = 0xc30;		/* (3120)	P5=0xff900c30 <_txbuf> */
ffa01d42:	0b 30       	R1 = R3;
ffa01d44:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01d46:	52 91       	P2 = [P2];
ffa01d48:	92 ad       	P2 = [P2 + 0x18];
ffa01d4a:	12 96       	W[P2++] = R2;
ffa01d4c:	42 30       	R0 = P2;
ffa01d4e:	ff e3 05 fa 	CALL 0xffa01158 <_memcpy_>;
ffa01d52:	20 95       	R0 = W[P4] (Z);
ffa01d54:	10 32       	P2 = R0;
ffa01d56:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01d58:	51 91       	P1 = [P2];
ffa01d5a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01d5e:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01d62:	51 93       	[P2] = P1;
ffa01d64:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01d68:	88 a1       	R0 = [P1 + 0x18];
ffa01d6a:	0a e1 9a 04 	P2.L = 0x49a;		/* (1178)	P2=0xff90049a <_txdmacfg> */
ffa01d6e:	48 b0       	[P1 + 0x4] = R0;
ffa01d70:	50 95       	R0 = W[P2] (X);
ffa01d72:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0049a(-4193126) */
ffa01d76:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01d7a:	10 97       	W[P2] = R0;
ffa01d7c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01d80:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01d84:	10 91       	R0 = [P2];
ffa01d86:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01d88:	10 93       	[P2] = R0;
ffa01d8a:	88 a2       	R0 = [P1 + 0x28];
ffa01d8c:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01d8e:	13 10       	IF !CC JUMP 0xffa01db4 <_bfin_EMAC_send+0xdc>;
ffa01d90:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa01d94:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa01d98:	b2 e0 05 20 	LSETUP(0xffa01d9c <_bfin_EMAC_send+0xc4>, 0xffa01da2 <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa01d9c:	88 a2       	R0 = [P1 + 0x28];
ffa01d9e:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01da0:	0a 10       	IF !CC JUMP 0xffa01db4 <_bfin_EMAC_send+0xdc>;
ffa01da2:	00 00       	NOP;
ffa01da4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001e8(-7339544) */
ffa01da8:	00 e1 00 02 	R0.L = 0x200;		/* (512)	R0=0xff900200(-7339520) */
ffa01dac:	ff e3 2e f8 	CALL 0xffa00e08 <_printf_str>;
ffa01db0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01db2:	10 20       	JUMP.S 0xffa01dd2 <_bfin_EMAC_send+0xfa>;
ffa01db4:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa01db8:	61 95 00 00 
ffa01dbc:	8a a2       	R2 = [P1 + 0x28];
ffa01dbe:	88 b2       	[P1 + 0x28] = R0;
ffa01dc0:	c8 42       	R0 = R1.L (Z);
ffa01dc2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa01dc6:	10 0d       	CC = R0 <= 0x2;
ffa01dc8:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa01dcc:	14 1c       	IF CC JUMP 0xffa01df4 <_bfin_EMAC_send+0x11c> (BP);
ffa01dce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01dd0:	10 97       	W[P2] = R0;
ffa01dd2:	01 e8 00 00 	UNLINK;
ffa01dd6:	02 30       	R0 = R2;
ffa01dd8:	84 04       	(P5:4) = [SP++];
ffa01dda:	10 00       	RTS;
ffa01ddc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01de0:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa01de4:	ff e3 12 f8 	CALL 0xffa00e08 <_printf_str>;
ffa01de8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01dea:	01 e8 00 00 	UNLINK;
ffa01dee:	02 30       	R0 = R2;
ffa01df0:	84 04       	(P5:4) = [SP++];
ffa01df2:	10 00       	RTS;
ffa01df4:	01 30       	R0 = R1;
ffa01df6:	08 64       	R0 += 0x1;		/* (  1) */
ffa01df8:	10 97       	W[P2] = R0;
ffa01dfa:	01 e8 00 00 	UNLINK;
ffa01dfe:	02 30       	R0 = R2;
ffa01e00:	84 04       	(P5:4) = [SP++];
ffa01e02:	10 00       	RTS;
ffa01e04:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90019c(-7339620) */
ffa01e08:	00 e1 cc 01 	R0.L = 0x1cc;		/* (460)	R0=0xff9001cc(-7339572) */
ffa01e0c:	ff e3 c0 f8 	CALL 0xffa00f8c <_printf_int>;
ffa01e10:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01e12:	01 e8 00 00 	UNLINK;
ffa01e16:	02 30       	R0 = R2;
ffa01e18:	84 04       	(P5:4) = [SP++];
ffa01e1a:	10 00       	RTS;

ffa01e1c <_ether_testUDP>:
ffa01e1c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01e1e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa01e22:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01e26:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa01e2a:	11 95       	R1 = W[P2] (Z);
ffa01e2c:	11 32       	P2 = R1;
ffa01e2e:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01e32:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa01e36:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa01e3a:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01e3c:	52 91       	P2 = [P2];
ffa01e3e:	95 ad       	P5 = [P2 + 0x18];
ffa01e40:	55 32       	P2 = P5;
ffa01e42:	11 96       	W[P2++] = R1;
ffa01e44:	4a 30       	R1 = P2;
ffa01e46:	00 e3 4d 08 	CALL 0xffa02ee0 <_ARP_req>;
ffa01e4a:	00 0c       	CC = R0 == 0x0;
ffa01e4c:	7f 18       	IF CC JUMP 0xffa01f4a <_ether_testUDP+0x12e>;
ffa01e4e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa01e52:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_NetOurMAC> */
ffa01e56:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01e58:	50 99       	R0 = B[P2] (X);
ffa01e5a:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01e5e:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa01e62:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01e66:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa01e6a:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa01e6e:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa01e72:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa01e76:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa01e7a:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01e7e:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa01e82:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa01e86:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01e8a:	ff e3 1f fc 	CALL 0xffa016c8 <_htons>;
ffa01e8e:	e8 b5       	W[P5 + 0xe] = R0;
ffa01e90:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01e94:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa01e98:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e9a:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa01e9e:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa01ea0:	ff e3 14 fc 	CALL 0xffa016c8 <_htons>;
ffa01ea4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_NetOurMAC> */
ffa01ea8:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa01eac:	68 b6       	W[P5 + 0x12] = R0;
ffa01eae:	10 95       	R0 = W[P2] (Z);
ffa01eb0:	08 30       	R1 = R0;
ffa01eb2:	09 64       	R1 += 0x1;		/* (  1) */
ffa01eb4:	11 97       	W[P2] = R1;
ffa01eb6:	ff e3 09 fc 	CALL 0xffa016c8 <_htons>;
ffa01eba:	a8 b6       	W[P5 + 0x14] = R0;
ffa01ebc:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01ec0:	ff e3 04 fc 	CALL 0xffa016c8 <_htons>;
ffa01ec4:	e8 b6       	W[P5 + 0x16] = R0;
ffa01ec6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01ec8:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa01ecc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2e <_NetIPID> */
ffa01ed0:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01ed2:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa01ed6:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa01eda:	10 91       	R0 = [P2];
ffa01edc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa01ee0:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa01ee4:	e8 b1       	[P5 + 0x1c] = R0;
ffa01ee6:	10 91       	R0 = [P2];
ffa01ee8:	28 b2       	[P5 + 0x20] = R0;
ffa01eea:	45 30       	R0 = P5;
ffa01eec:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01eee:	6f b7       	W[P5 + 0x1a] = R7;
ffa01ef0:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01ef2:	ff e3 d3 fb 	CALL 0xffa01698 <_NetCksum>;
ffa01ef6:	c0 43       	R0 =~ R0;
ffa01ef8:	68 b7       	W[P5 + 0x1a] = R0;
ffa01efa:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa01efe:	ff e3 e5 fb 	CALL 0xffa016c8 <_htons>;
ffa01f02:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa01f06:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa01f0a:	ff e3 df fb 	CALL 0xffa016c8 <_htons>;
ffa01f0e:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa01f12:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa01f14:	ff e3 da fb 	CALL 0xffa016c8 <_htons>;
ffa01f18:	55 32       	P2 = P5;
ffa01f1a:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa01f1e:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa01f22:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa01f24:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01f26:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa01f28:	b2 e0 03 10 	LSETUP(0xffa01f2c <_ether_testUDP+0x110>, 0xffa01f2e <_ether_testUDP+0x112>) LC1 = P1;
ffa01f2c:	11 9a       	B[P2++] = R1;
ffa01f2e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01f30:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa01f34:	00 e1 14 02 	R0.L = 0x214;		/* (532)	R0=0xff900214(-7339500) */
ffa01f38:	ff e3 68 f7 	CALL 0xffa00e08 <_printf_str>;
ffa01f3c:	ff e3 70 fd 	CALL 0xffa01a1c <_bfin_EMAC_send_nocopy>;
ffa01f40:	01 e8 00 00 	UNLINK;
ffa01f44:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01f46:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01f48:	10 00       	RTS;
ffa01f4a:	01 e8 00 00 	UNLINK;
ffa01f4e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01f50:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01f52:	10 00       	RTS;

ffa01f54 <_eth_header_setup>:
ffa01f54:	c4 04       	[--SP] = (P5:4);
ffa01f56:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa01f5a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01f5e:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa01f62:	00 32       	P0 = R0;
ffa01f64:	10 95       	R0 = W[P2] (Z);
ffa01f66:	10 32       	P2 = R0;
ffa01f68:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa01f6c:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa01f70:	00 91       	R0 = [P0];
ffa01f72:	21 32       	P4 = R1;
ffa01f74:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01f76:	52 91       	P2 = [P2];
ffa01f78:	08 30       	R1 = R0;
ffa01f7a:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa01f7c:	80 67       	R0 += -0x10;		/* (-16) */
ffa01f7e:	95 ad       	P5 = [P2 + 0x18];
ffa01f80:	00 93       	[P0] = R0;
ffa01f82:	02 30       	R0 = R2;
ffa01f84:	55 32       	P2 = P5;
ffa01f86:	11 96       	W[P2++] = R1;
ffa01f88:	4a 30       	R1 = P2;
ffa01f8a:	00 e3 ab 07 	CALL 0xffa02ee0 <_ARP_req>;
ffa01f8e:	00 0c       	CC = R0 == 0x0;
ffa01f90:	2b 18       	IF CC JUMP 0xffa01fe6 <_eth_header_setup+0x92>;
ffa01f92:	00 00       	NOP;
ffa01f94:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa01f98:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_NetOurMAC> */
ffa01f9c:	50 99       	R0 = B[P2] (X);
ffa01f9e:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01fa2:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa01fa6:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01faa:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa01fae:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa01fb2:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa01fb6:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa01fba:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa01fbe:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01fc2:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa01fc6:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa01fca:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01fce:	ff e3 7d fb 	CALL 0xffa016c8 <_htons>;
ffa01fd2:	e8 b5       	W[P5 + 0xe] = R0;
ffa01fd4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01fd6:	20 9b       	B[P4] = R0;
ffa01fd8:	4d 30       	R1 = P5;
ffa01fda:	81 64       	R1 += 0x10;		/* ( 16) */
ffa01fdc:	01 e8 00 00 	UNLINK;
ffa01fe0:	01 30       	R0 = R1;
ffa01fe2:	84 04       	(P5:4) = [SP++];
ffa01fe4:	10 00       	RTS;
ffa01fe6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01fe8:	20 9b       	B[P4] = R0;
ffa01fea:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01fec:	01 e8 00 00 	UNLINK;
ffa01ff0:	01 30       	R0 = R1;
ffa01ff2:	84 04       	(P5:4) = [SP++];
ffa01ff4:	10 00       	RTS;
	...

ffa01ff8 <_icmp_packet_setup>:
ffa01ff8:	e4 05       	[--SP] = (R7:4, P5:4);
ffa01ffa:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa01ffe:	29 32       	P5 = R1;
ffa02000:	7f 30       	R7 = FP;
ffa02002:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02004:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02006:	f0 bb       	[FP -0x4] = R0;
ffa02008:	07 30       	R0 = R7;
ffa0200a:	22 32       	P4 = R2;
ffa0200c:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa02010:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa02014:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa02018:	ff e3 9e ff 	CALL 0xffa01f54 <_eth_header_setup>;
ffa0201c:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa02020:	68 99 00 00 
ffa02024:	80 0c       	CC = R0 < 0x0;
ffa02026:	14 18       	IF CC JUMP 0xffa0204e <_icmp_packet_setup+0x56>;
ffa02028:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0202a:	f0 b0       	[SP + 0xc] = R0;
ffa0202c:	54 30       	R2 = P4;
ffa0202e:	01 30       	R0 = R1;
ffa02030:	0f 30       	R1 = R7;
ffa02032:	ff e3 7f fb 	CALL 0xffa01730 <_ip_header_setup>;
ffa02036:	e9 42       	R1 = R5.L (Z);
ffa02038:	f1 b0       	[SP + 0xc] = R1;
ffa0203a:	e1 42       	R1 = R4.L (Z);
ffa0203c:	31 b1       	[SP + 0x10] = R1;
ffa0203e:	72 43       	R2 = R6.B (Z);
ffa02040:	0f 30       	R1 = R7;
ffa02042:	ff e3 c1 fb 	CALL 0xffa017c4 <_icmp_header_setup>;
ffa02046:	01 e8 00 00 	UNLINK;
ffa0204a:	a4 05       	(R7:4, P5:4) = [SP++];
ffa0204c:	10 00       	RTS;
ffa0204e:	01 e8 00 00 	UNLINK;
ffa02052:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02054:	a4 05       	(R7:4, P5:4) = [SP++];
ffa02056:	10 00       	RTS;

ffa02058 <_icmp_rx>:
ffa02058:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0205a:	28 32       	P5 = R0;
ffa0205c:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02060:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02064:	39 30       	R7 = R1;
ffa02066:	ff e3 31 fb 	CALL 0xffa016c8 <_htons>;
ffa0206a:	c0 42       	R0 = R0.L (Z);
ffa0206c:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa0206e:	01 08       	CC = R1 == R0;
ffa02070:	06 18       	IF CC JUMP 0xffa0207c <_icmp_rx+0x24>;
ffa02072:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02074:	01 e8 00 00 	UNLINK;
ffa02078:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0207a:	10 00       	RTS;
ffa0207c:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa0207e:	07 0a       	CC = R7 <= R0 (IU);
ffa02080:	f9 1b       	IF CC JUMP 0xffa02072 <_icmp_rx+0x1a>;
ffa02082:	00 00       	NOP;
ffa02084:	00 00       	NOP;
ffa02086:	00 00       	NOP;
ffa02088:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa0208c:	08 0c       	CC = R0 == 0x1;
ffa0208e:	f2 17       	IF !CC JUMP 0xffa02072 <_icmp_rx+0x1a> (BP);
ffa02090:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_NetOurMAC> */
ffa02094:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa02098:	28 a2       	R0 = [P5 + 0x20];
ffa0209a:	11 91       	R1 = [P2];
ffa0209c:	08 08       	CC = R0 == R1;
ffa0209e:	ea 17       	IF !CC JUMP 0xffa02072 <_icmp_rx+0x1a> (BP);
ffa020a0:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa020a4:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa020a8:	08 08       	CC = R0 == R1;
ffa020aa:	3e 18       	IF CC JUMP 0xffa02126 <_icmp_rx+0xce>;
ffa020ac:	00 00       	NOP;
ffa020ae:	00 00       	NOP;
ffa020b0:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa020b2:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa020b6:	08 08       	CC = R0 == R1;
ffa020b8:	dd 17       	IF !CC JUMP 0xffa02072 <_icmp_rx+0x1a> (BP);
ffa020ba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa020be:	e9 a1       	R1 = [P5 + 0x1c];
ffa020c0:	00 e1 2c 02 	R0.L = 0x22c;		/* (556)	R0=0xff90022c(-7339476) */
ffa020c4:	ff e3 06 f8 	CALL 0xffa010d0 <_printf_ip>;
ffa020c8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa020cc:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa020d0:	e8 a1       	R0 = [P5 + 0x1c];
ffa020d2:	4d 30       	R1 = P5;
ffa020d4:	10 93       	[P2] = R0;
ffa020d6:	41 64       	R1 += 0x8;		/* (  8) */
ffa020d8:	00 e3 06 05 	CALL 0xffa02ae4 <_ARP_lut_add>;
ffa020dc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90022c(-7339476) */
ffa020e0:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa020e4:	ff e3 92 f6 	CALL 0xffa00e08 <_printf_str>;
ffa020e8:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa020ec:	ea a1 00 00 
ffa020f0:	f0 b0       	[SP + 0xc] = R0;
ffa020f2:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa020f6:	30 b1       	[SP + 0x10] = R0;
ffa020f8:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa020fa:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa020fe:	4f 30       	R1 = FP;
ffa02100:	70 b1       	[SP + 0x14] = R0;
ffa02102:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa02104:	07 30       	R0 = R7;
ffa02106:	ff e3 79 ff 	CALL 0xffa01ff8 <_icmp_packet_setup>;
ffa0210a:	08 30       	R1 = R0;
ffa0210c:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa02110:	00 0d       	CC = R0 <= 0x0;
ffa02112:	b0 1b       	IF CC JUMP 0xffa02072 <_icmp_rx+0x1a>;
ffa02114:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa02116:	45 30       	R0 = P5;
ffa02118:	17 30       	R2 = R7;
ffa0211a:	ff e3 1f f8 	CALL 0xffa01158 <_memcpy_>;
ffa0211e:	ff e3 7f fc 	CALL 0xffa01a1c <_bfin_EMAC_send_nocopy>;
ffa02122:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02124:	a8 2f       	JUMP.S 0xffa02074 <_icmp_rx+0x1c>;
ffa02126:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa0212a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0212c:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa02130:	10 9b       	B[P2] = R0;
ffa02132:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02134:	a0 2f       	JUMP.S 0xffa02074 <_icmp_rx+0x1c>;
	...

ffa02138 <_udp_packet_setup>:
ffa02138:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0213a:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0213e:	29 32       	P5 = R1;
ffa02140:	7f 30       	R7 = FP;
ffa02142:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c2c <_txIdx> */
ffa02146:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02148:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0214a:	0c e1 64 0c 	P4.L = 0xc64;		/* (3172)	P4=0xff900c64 <_NetDataDestIP> */
ffa0214e:	f0 bb       	[FP -0x4] = R0;
ffa02150:	22 91       	R2 = [P4];
ffa02152:	07 30       	R0 = R7;
ffa02154:	ff e3 00 ff 	CALL 0xffa01f54 <_eth_header_setup>;
ffa02158:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa0215c:	68 99 00 00 
ffa02160:	80 0c       	CC = R0 < 0x0;
ffa02162:	14 18       	IF CC JUMP 0xffa0218a <_udp_packet_setup+0x52>;
ffa02164:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa02166:	f0 b0       	[SP + 0xc] = R0;
ffa02168:	01 30       	R0 = R1;
ffa0216a:	22 91       	R2 = [P4];
ffa0216c:	0f 30       	R1 = R7;
ffa0216e:	ff e3 e1 fa 	CALL 0xffa01730 <_ip_header_setup>;
ffa02172:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa02176:	f1 b0       	[SP + 0xc] = R1;
ffa02178:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa0217c:	0f 30       	R1 = R7;
ffa0217e:	ff e3 47 fb 	CALL 0xffa0180c <_udp_header_setup>;
ffa02182:	01 e8 00 00 	UNLINK;
ffa02186:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02188:	10 00       	RTS;
ffa0218a:	01 e8 00 00 	UNLINK;
ffa0218e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02190:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02192:	10 00       	RTS;

ffa02194 <_SetupTxBuffer>:
ffa02194:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02196:	38 30       	R7 = R0;
ffa02198:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa0219c:	c7 40       	R7 *= R0;
ffa0219e:	17 32       	P2 = R7;
ffa021a0:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800c30 */
ffa021a4:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa021a8:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa021ac:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa021b0:	6a 5b       	P5 = P2 + P5;
ffa021b2:	c7 51       	R7 = R7 + R0;
ffa021b4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa021b8:	45 30       	R0 = P5;
ffa021ba:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa021bc:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa021be:	ff e3 dd f7 	CALL 0xffa01178 <_memset_>;
ffa021c2:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa021c6:	af b1 00 00 
ffa021ca:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa021ce:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa021d2:	ff e3 d3 f7 	CALL 0xffa01178 <_memset_>;
ffa021d6:	45 30       	R0 = P5;
ffa021d8:	60 64       	R0 += 0xc;		/* ( 12) */
ffa021da:	28 93       	[P5] = R0;
ffa021dc:	a8 a1       	R0 = [P5 + 0x18];
ffa021de:	68 b0       	[P5 + 0x4] = R0;
ffa021e0:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa021e4:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa021e6:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa021e8:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa021ea:	10 54       	R0 = R0 & R2;
ffa021ec:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa021ee:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa021f2:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa021f4:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa021f8:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa021fa:	18 54       	R0 = R0 & R3;
ffa021fc:	08 56       	R0 = R0 | R1;
ffa021fe:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa02202:	08 56       	R0 = R0 | R1;
ffa02204:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02208:	45 30       	R0 = P5;
ffa0220a:	40 65       	R0 += 0x28;		/* ( 40) */
ffa0220c:	28 b1       	[P5 + 0x10] = R0;
ffa0220e:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa02212:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02214:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02216:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa0221a:	10 54       	R0 = R0 & R2;
ffa0221c:	08 56       	R0 = R0 | R1;
ffa0221e:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa02222:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa02226:	18 54       	R0 = R0 & R3;
ffa02228:	39 64       	R1 += 0x7;		/* (  7) */
ffa0222a:	08 54       	R0 = R0 & R1;
ffa0222c:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02230:	ed bc       	[P5 + 0xc] = P5;
ffa02232:	01 e8 00 00 	UNLINK;
ffa02236:	45 30       	R0 = P5;
ffa02238:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0223a:	10 00       	RTS;

ffa0223c <_SetupRxBuffer>:
ffa0223c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0223e:	38 30       	R7 = R0;
ffa02240:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02244:	c7 40       	R7 *= R0;
ffa02246:	17 32       	P2 = R7;
ffa02248:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa0224c:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa02250:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02254:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa02258:	6a 5b       	P5 = P2 + P5;
ffa0225a:	c7 51       	R7 = R7 + R0;
ffa0225c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02260:	45 30       	R0 = P5;
ffa02262:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02264:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa02266:	ff e3 89 f7 	CALL 0xffa01178 <_memset_>;
ffa0226a:	af b1       	[P5 + 0x18] = R7;
ffa0226c:	07 30       	R0 = R7;
ffa0226e:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa02272:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02276:	ff e3 81 f7 	CALL 0xffa01178 <_memset_>;
ffa0227a:	45 30       	R0 = P5;
ffa0227c:	60 64       	R0 += 0xc;		/* ( 12) */
ffa0227e:	28 93       	[P5] = R0;
ffa02280:	a8 a1       	R0 = [P5 + 0x18];
ffa02282:	68 b0       	[P5 + 0x4] = R0;
ffa02284:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa02288:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0228a:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa0228c:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0228e:	08 54       	R0 = R0 & R1;
ffa02290:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02292:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02296:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa02298:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa0229c:	38 54       	R0 = R0 & R7;
ffa0229e:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa022a0:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa022a4:	18 56       	R0 = R0 | R3;
ffa022a6:	10 56       	R0 = R0 | R2;
ffa022a8:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa022ac:	45 30       	R0 = P5;
ffa022ae:	20 65       	R0 += 0x24;		/* ( 36) */
ffa022b0:	28 b1       	[P5 + 0x10] = R0;
ffa022b2:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa022b6:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa022b8:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa022ba:	08 54       	R0 = R0 & R1;
ffa022bc:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa022c0:	08 56       	R0 = R0 | R1;
ffa022c2:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa022c6:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa022ca:	38 54       	R0 = R0 & R7;
ffa022cc:	18 56       	R0 = R0 | R3;
ffa022ce:	10 56       	R0 = R0 | R2;
ffa022d0:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa022d4:	ed bc       	[P5 + 0xc] = P5;
ffa022d6:	01 e8 00 00 	UNLINK;
ffa022da:	45 30       	R0 = P5;
ffa022dc:	bd 05       	(R7:7, P5:5) = [SP++];
ffa022de:	10 00       	RTS;

ffa022e0 <_SetupSystemRegs>:
ffa022e0:	f5 05       	[--SP] = (R7:6, P5:5);
ffa022e2:	28 32       	P5 = R0;
ffa022e4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa022e8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa022ec:	00 e1 48 02 	R0.L = 0x248;		/* (584)	R0=0xff900248(-7339448) */
ffa022f0:	ff e3 8c f5 	CALL 0xffa00e08 <_printf_str>;
ffa022f4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bb8(-4191304) */
ffa022f8:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa022fc:	50 95       	R0 = W[P2] (X);
ffa022fe:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa02302:	08 54       	R0 = R0 & R1;
ffa02304:	10 97       	W[P2] = R0;
ffa02306:	50 95       	R0 = W[P2] (X);
ffa02308:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa0230a:	10 97       	W[P2] = R0;
ffa0230c:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0230e:	51 95       	R1 = W[P2] (X);
ffa02310:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa02314:	08 56       	R0 = R0 | R1;
ffa02316:	10 97       	W[P2] = R0;
ffa02318:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0231a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0231c:	10 97       	W[P2] = R0;
ffa0231e:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa02320:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa02322:	10 97       	W[P2] = R0;
ffa02324:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa02328:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa0232c:	50 95       	R0 = W[P2] (X);
ffa0232e:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa02330:	10 97       	W[P2] = R0;
ffa02332:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa02336:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa0233a:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa0233e:	10 93       	[P2] = R0;
ffa02340:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02342:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa02346:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02348:	ff e3 4c f9 	CALL 0xffa015e0 <_WrPHYReg>;
ffa0234c:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02350:	ff e3 f2 f8 	CALL 0xffa01534 <_udelay>;
ffa02354:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02356:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02358:	ff e3 60 f9 	CALL 0xffa01618 <_RdPHYReg>;
ffa0235c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0235e:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa02360:	0e 20       	JUMP.S 0xffa0237c <_SetupSystemRegs+0x9c>;
ffa02362:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02366:	ff e3 e7 f8 	CALL 0xffa01534 <_udelay>;
ffa0236a:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0236c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0236e:	ff e3 55 f9 	CALL 0xffa01618 <_RdPHYReg>;
ffa02372:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02374:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa02378:	0f 08       	CC = R7 == R1;
ffa0237a:	35 18       	IF CC JUMP 0xffa023e4 <_SetupSystemRegs+0x104>;
ffa0237c:	06 54       	R0 = R6 & R0;
ffa0237e:	00 0c       	CC = R0 == 0x0;
ffa02380:	f1 1f       	IF CC JUMP 0xffa02362 <_SetupSystemRegs+0x82> (BP);
ffa02382:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa02384:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02386:	ff e3 49 f9 	CALL 0xffa01618 <_RdPHYReg>;
ffa0238a:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa0238e:	01 54       	R0 = R1 & R0;
ffa02390:	00 0c       	CC = R0 == 0x0;
ffa02392:	27 1c       	IF CC JUMP 0xffa023e0 <_SetupSystemRegs+0x100> (BP);
ffa02394:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02396:	d0 4f       	R0 <<= 0x1a;
ffa02398:	28 93       	[P5] = R0;
ffa0239a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa0239e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa023a0:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa023a4:	10 93       	[P2] = R0;
ffa023a6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa023aa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa023ac:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa023b0:	10 97       	W[P2] = R0;
ffa023b2:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa023b4:	22 6c       	P2 += 0x4;		/* (  4) */
ffa023b6:	11 97       	W[P2] = R1;
ffa023b8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa023ba:	10 97       	W[P2] = R0;
ffa023bc:	22 6c       	P2 += 0x4;		/* (  4) */
ffa023be:	10 97       	W[P2] = R0;
ffa023c0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa023c4:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa023c8:	10 97       	W[P2] = R0;
ffa023ca:	22 6c       	P2 += 0x4;		/* (  4) */
ffa023cc:	11 97       	W[P2] = R1;
ffa023ce:	22 6c       	P2 += 0x4;		/* (  4) */
ffa023d0:	10 97       	W[P2] = R0;
ffa023d2:	22 6c       	P2 += 0x4;		/* (  4) */
ffa023d4:	10 97       	W[P2] = R0;
ffa023d6:	01 e8 00 00 	UNLINK;
ffa023da:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa023dc:	b5 05       	(R7:6, P5:5) = [SP++];
ffa023de:	10 00       	RTS;
ffa023e0:	28 93       	[P5] = R0;
ffa023e2:	dc 2f       	JUMP.S 0xffa0239a <_SetupSystemRegs+0xba>;
ffa023e4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa023e8:	00 e1 60 02 	R0.L = 0x260;		/* (608)	R0=0xff900260(-7339424) */
ffa023ec:	ff e3 0e f5 	CALL 0xffa00e08 <_printf_str>;
ffa023f0:	01 e8 00 00 	UNLINK;
ffa023f4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa023f6:	b5 05       	(R7:6, P5:5) = [SP++];
ffa023f8:	10 00       	RTS;
	...

ffa023fc <_SetupMacAddr>:
ffa023fc:	10 32       	P2 = R0;
ffa023fe:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02400:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02402:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02406:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa0240a:	10 9b       	B[P2] = R0;
ffa0240c:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa0240e:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa02412:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa02414:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa02418:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa0241a:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa0241e:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa02422:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02426:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa02428:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa0242c:	10 99       	R0 = B[P2] (Z);
ffa0242e:	08 56       	R0 = R0 | R1;
ffa02430:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa02434:	89 4f       	R1 <<= 0x11;
ffa02436:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c30(-4191184) */
ffa0243a:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa0243e:	08 56       	R0 = R0 | R1;
ffa02440:	08 93       	[P1] = R0;
ffa02442:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02446:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa0244a:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa0244e:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa02450:	28 93       	[P5] = R0;
ffa02452:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa02456:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa0245a:	09 91       	R1 = [P1];
ffa0245c:	07 e1 64 0a 	R7.L = 0xa64;		/* (2660)	R7=0xff900a64(-7337372) */
ffa02460:	00 e1 94 02 	R0.L = 0x294;		/* (660)	R0=0xff900294(-7339372) */
ffa02464:	ff e3 38 f5 	CALL 0xffa00ed4 <_printf_hex>;
ffa02468:	07 30       	R0 = R7;
ffa0246a:	ff e3 cf f4 	CALL 0xffa00e08 <_printf_str>;
ffa0246e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900294(-7339372) */
ffa02472:	29 91       	R1 = [P5];
ffa02474:	00 e1 a0 02 	R0.L = 0x2a0;		/* (672)	R0=0xff9002a0(-7339360) */
ffa02478:	ff e3 2e f5 	CALL 0xffa00ed4 <_printf_hex>;
ffa0247c:	01 e8 00 00 	UNLINK;
ffa02480:	07 30       	R0 = R7;
ffa02482:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02484:	ff e2 c2 f4 	JUMP.L 0xffa00e08 <_printf_str>;

ffa02488 <_bfin_EMAC_init>:
ffa02488:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0248a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002a0(-7339360) */
ffa0248e:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02492:	00 e1 ac 02 	R0.L = 0x2ac;		/* (684)	R0=0xff9002ac(-7339348) */
ffa02496:	ff e3 b9 f4 	CALL 0xffa00e08 <_printf_str>;
ffa0249a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 */
ffa0249e:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa024a0:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa024a4:	16 97       	W[P2] = R6;
ffa024a6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa024aa:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_rxIdx> */
ffa024ae:	16 97       	W[P2] = R6;
ffa024b0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_rxIdx> */
ffa024b4:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa024b8:	16 97       	W[P2] = R6;
ffa024ba:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2e <_NetIPID> */
ffa024be:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa024c0:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetSubnetMask> */
ffa024c4:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa024c6:	17 93       	[P2] = R7;
ffa024c8:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa024cc:	f0 b0       	[SP + 0xc] = R0;
ffa024ce:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa024d0:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa024d4:	ff e3 50 f8 	CALL 0xffa01574 <_FormatIPAddress>;
ffa024d8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_NetSubnetMask> */
ffa024dc:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa024e0:	10 93       	[P2] = R0;
ffa024e2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa024e4:	f0 b0       	[SP + 0xc] = R0;
ffa024e6:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa024ea:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa024ec:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa024f0:	ff e3 42 f8 	CALL 0xffa01574 <_FormatIPAddress>;
ffa024f4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa024f8:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa024fc:	10 93       	[P2] = R0;
ffa024fe:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02500:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa02502:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa02506:	f0 b0       	[SP + 0xc] = R0;
ffa02508:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa0250c:	ff e3 34 f8 	CALL 0xffa01574 <_FormatIPAddress>;
ffa02510:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa02514:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa02518:	10 93       	[P2] = R0;
ffa0251a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa0251e:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa02522:	17 93       	[P2] = R7;
ffa02524:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa02528:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa0252c:	17 93       	[P2] = R7;
ffa0252e:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa02532:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa02536:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa0253a:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa0253e:	10 93       	[P2] = R0;
ffa02540:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa02544:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa02548:	16 97       	W[P2] = R6;
ffa0254a:	00 e3 7f 02 	CALL 0xffa02a48 <_ARP_init>;
ffa0254e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa02552:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02556:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa0255a:	17 93       	[P2] = R7;
ffa0255c:	00 e1 54 0c 	R0.L = 0xc54;		/* (3156)	R0=0xff900c54 <_NetOurMAC>(-7336876) */
ffa02560:	ff e3 4e ff 	CALL 0xffa023fc <_SetupMacAddr>;
ffa02564:	47 30       	R0 = FP;
ffa02566:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa02568:	ff e3 bc fe 	CALL 0xffa022e0 <_SetupSystemRegs>;
ffa0256c:	80 0c       	CC = R0 < 0x0;
ffa0256e:	7a 18       	IF CC JUMP 0xffa02662 <_bfin_EMAC_init+0x1da>;
ffa02570:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa02574:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02576:	07 e1 44 0c 	R7.L = 0xc44;		/* (3140)	R7=0xff900c44 <_rxbuf>(-7336892) */
ffa0257a:	ff e3 61 fe 	CALL 0xffa0223c <_SetupRxBuffer>;
ffa0257e:	07 32       	P0 = R7;
ffa02580:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02582:	00 93       	[P0] = R0;
ffa02584:	17 32       	P2 = R7;
ffa02586:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa02588:	44 30       	R0 = P4;
ffa0258a:	ff e3 59 fe 	CALL 0xffa0223c <_SetupRxBuffer>;
ffa0258e:	44 0c       	CC = P4 == 0x0;
ffa02590:	08 32       	P1 = R0;
ffa02592:	28 92       	[P5++] = R0;
ffa02594:	52 18       	IF CC JUMP 0xffa02638 <_bfin_EMAC_init+0x1b0>;
ffa02596:	07 32       	P0 = R7;
ffa02598:	5c 0c       	CC = P4 == 0x3;
ffa0259a:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa0259c:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa025a0:	d0 b0       	[P2 + 0xc] = R0;
ffa025a2:	54 18       	IF CC JUMP 0xffa0264a <_bfin_EMAC_init+0x1c2>;
ffa025a4:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa025a6:	5c 0d       	CC = P4 <= 0x3;
ffa025a8:	ee 1f       	IF CC JUMP 0xffa02584 <_bfin_EMAC_init+0xfc> (BP);
ffa025aa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa025ac:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa025b0:	ff e3 f2 fd 	CALL 0xffa02194 <_SetupTxBuffer>;
ffa025b4:	0b e1 30 0c 	P3.L = 0xc30;		/* (3120)	P3=0xff900c30 <_txbuf> */
ffa025b8:	18 93       	[P3] = R0;
ffa025ba:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa025bc:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa025be:	44 30       	R0 = P4;
ffa025c0:	ff e3 ea fd 	CALL 0xffa02194 <_SetupTxBuffer>;
ffa025c4:	44 0c       	CC = P4 == 0x0;
ffa025c6:	08 32       	P1 = R0;
ffa025c8:	28 92       	[P5++] = R0;
ffa025ca:	35 18       	IF CC JUMP 0xffa02634 <_bfin_EMAC_init+0x1ac>;
ffa025cc:	00 00       	NOP;
ffa025ce:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa025d0:	5c 0c       	CC = P4 == 0x3;
ffa025d2:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa025d6:	d0 b0       	[P2 + 0xc] = R0;
ffa025d8:	32 18       	IF CC JUMP 0xffa0263c <_bfin_EMAC_init+0x1b4>;
ffa025da:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa025dc:	5c 0d       	CC = P4 <= 0x3;
ffa025de:	ef 1f       	IF CC JUMP 0xffa025bc <_bfin_EMAC_init+0x134> (BP);
ffa025e0:	17 32       	P2 = R7;
ffa025e2:	51 91       	P1 = [P2];
ffa025e4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa025e8:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa025ec:	51 93       	[P2] = P1;
ffa025ee:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa025f0:	42 6c       	P2 += 0x8;		/* (  8) */
ffa025f2:	10 97       	W[P2] = R0;
ffa025f4:	ff e3 e8 f7 	CALL 0xffa015c4 <_PollMdcDone>;
ffa025f8:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa025fa:	f0 b9       	R0 = [FP -0x4];
ffa025fc:	d1 4f       	R1 <<= 0x1a;
ffa025fe:	08 08       	CC = R0 == R1;
ffa02600:	2c 18       	IF CC JUMP 0xffa02658 <_bfin_EMAC_init+0x1d0>;
ffa02602:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02606:	01 30       	R0 = R1;
ffa02608:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa0260c:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02610:	10 93       	[P2] = R0;
ffa02612:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02616:	00 e1 bc 02 	R0.L = 0x2bc;		/* (700)	R0=0xff9002bc(-7339332) */
ffa0261a:	ff e3 5d f4 	CALL 0xffa00ed4 <_printf_hex>;
ffa0261e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002bc(-7339332) */
ffa02622:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02626:	ff e3 f1 f3 	CALL 0xffa00e08 <_printf_str>;
ffa0262a:	01 e8 00 00 	UNLINK;
ffa0262e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02630:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02632:	10 00       	RTS;
ffa02634:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02636:	c4 2f       	JUMP.S 0xffa025be <_bfin_EMAC_init+0x136>;
ffa02638:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa0263a:	a7 2f       	JUMP.S 0xffa02588 <_bfin_EMAC_init+0x100>;
ffa0263c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa02640:	0a e1 30 0c 	P2.L = 0xc30;		/* (3120)	P2=0xff900c30 <_txbuf> */
ffa02644:	10 91       	R0 = [P2];
ffa02646:	c8 b0       	[P1 + 0xc] = R0;
ffa02648:	cc 2f       	JUMP.S 0xffa025e0 <_bfin_EMAC_init+0x158>;
ffa0264a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c30 <_txbuf> */
ffa0264e:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_rxbuf> */
ffa02652:	10 91       	R0 = [P2];
ffa02654:	c8 b0       	[P1 + 0xc] = R0;
ffa02656:	aa 2f       	JUMP.S 0xffa025aa <_bfin_EMAC_init+0x122>;
ffa02658:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa0265c:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa0265e:	01 30       	R0 = R1;
ffa02660:	d4 2f       	JUMP.S 0xffa02608 <_bfin_EMAC_init+0x180>;
ffa02662:	01 e8 00 00 	UNLINK;
ffa02666:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02668:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0266a:	10 00       	RTS;

ffa0266c <_bfin_EMAC_recv_poll>:
ffa0266c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0266e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa02672:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa02676:	0d e1 44 0c 	P5.L = 0xc44;		/* (3140)	P5=0xff900c44 <_rxbuf> */
ffa0267a:	0c e1 40 0c 	P4.L = 0xc40;		/* (3136)	P4=0xff900c40 <_rxIdx> */
ffa0267e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02682:	28 30       	R5 = R0;
ffa02684:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02686:	75 30       	R6 = P5;
ffa02688:	5c 32       	P3 = P4;
ffa0268a:	06 20       	JUMP.S 0xffa02696 <_bfin_EMAC_recv_poll+0x2a>;
ffa0268c:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0268e:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02692:	07 08       	CC = R7 == R0;
ffa02694:	0c 18       	IF CC JUMP 0xffa026ac <_bfin_EMAC_recv_poll+0x40>;
ffa02696:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa0269a:	ff e3 4d f7 	CALL 0xffa01534 <_udelay>;
ffa0269e:	20 95       	R0 = W[P4] (Z);
ffa026a0:	10 32       	P2 = R0;
ffa026a2:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa026a4:	52 91       	P2 = [P2];
ffa026a6:	90 a2       	R0 = [P2 + 0x28];
ffa026a8:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa026aa:	f1 1f       	IF CC JUMP 0xffa0268c <_bfin_EMAC_recv_poll+0x20> (BP);
ffa026ac:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa026b0:	91 a2       	R1 = [P2 + 0x28];
ffa026b2:	41 54       	R1 = R1 & R0;
ffa026b4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa026b6:	01 09       	CC = R1 <= R0;
ffa026b8:	07 10       	IF !CC JUMP 0xffa026c6 <_bfin_EMAC_recv_poll+0x5a>;
ffa026ba:	01 e8 00 00 	UNLINK;
ffa026be:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa026c0:	07 30       	R0 = R7;
ffa026c2:	a3 05       	(R7:4, P5:3) = [SP++];
ffa026c4:	10 00       	RTS;
ffa026c6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026c8:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa026cc:	90 b2 00 00 
ffa026d0:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa026d2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa026d6:	0f 30       	R1 = R7;
ffa026d8:	00 e1 c8 02 	R0.L = 0x2c8;		/* (712)	R0=0xff9002c8(-7339320) */
ffa026dc:	ff e3 58 f4 	CALL 0xffa00f8c <_printf_int>;
ffa026e0:	18 95       	R0 = W[P3] (Z);
ffa026e2:	10 32       	P2 = R0;
ffa026e4:	0e 32       	P1 = R6;
ffa026e6:	0f 30       	R1 = R7;
ffa026e8:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa026ea:	52 91       	P2 = [P2];
ffa026ec:	90 a1       	R0 = [P2 + 0x18];
ffa026ee:	15 32       	P2 = R5;
ffa026f0:	10 93       	[P2] = R0;
ffa026f2:	00 e3 5f 02 	CALL 0xffa02bb0 <_ARP_rx>;
ffa026f6:	00 0c       	CC = R0 == 0x0;
ffa026f8:	1f 18       	IF CC JUMP 0xffa02736 <_bfin_EMAC_recv_poll+0xca>;
ffa026fa:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa026fc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02700:	20 95       	R0 = W[P4] (Z);
ffa02702:	10 32       	P2 = R0;
ffa02704:	61 95       	R1 = W[P4] (X);
ffa02706:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02708:	09 e1 40 0c 	P1.L = 0xc40;		/* (3136)	P1=0xff900c40 <_rxIdx> */
ffa0270c:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa0270e:	52 91       	P2 = [P2];
ffa02710:	90 b2       	[P2 + 0x28] = R0;
ffa02712:	c8 42       	R0 = R1.L (Z);
ffa02714:	10 0d       	CC = R0 <= 0x2;
ffa02716:	08 1c       	IF CC JUMP 0xffa02726 <_bfin_EMAC_recv_poll+0xba> (BP);
ffa02718:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0271a:	08 97       	W[P1] = R0;
ffa0271c:	01 e8 00 00 	UNLINK;
ffa02720:	07 30       	R0 = R7;
ffa02722:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02724:	10 00       	RTS;
ffa02726:	01 30       	R0 = R1;
ffa02728:	08 64       	R0 += 0x1;		/* (  1) */
ffa0272a:	08 97       	W[P1] = R0;
ffa0272c:	01 e8 00 00 	UNLINK;
ffa02730:	07 30       	R0 = R7;
ffa02732:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02734:	10 00       	RTS;
ffa02736:	0d 32       	P1 = R5;
ffa02738:	0f 30       	R1 = R7;
ffa0273a:	08 91       	R0 = [P1];
ffa0273c:	ff e3 8e fc 	CALL 0xffa02058 <_icmp_rx>;
ffa02740:	00 0c       	CC = R0 == 0x0;
ffa02742:	dd 1f       	IF CC JUMP 0xffa026fc <_bfin_EMAC_recv_poll+0x90> (BP);
ffa02744:	db 2f       	JUMP.S 0xffa026fa <_bfin_EMAC_recv_poll+0x8e>;
	...

ffa02748 <_DHCP_rx>:
ffa02748:	ed 05       	[--SP] = (R7:5, P5:5);
ffa0274a:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0274e:	6f 30       	R5 = FP;
ffa02750:	e5 67       	R5 += -0x4;		/* ( -4) */
ffa02752:	01 20       	JUMP.S 0xffa02754 <_DHCP_rx+0xc>;
ffa02754:	05 30       	R0 = R5;
ffa02756:	ff e3 8b ff 	CALL 0xffa0266c <_bfin_EMAC_recv_poll>;
ffa0275a:	38 30       	R7 = R0;
ffa0275c:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa02760:	87 51       	R6 = R7 + R0;
ffa02762:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa02766:	00 e1 08 03 	R0.L = 0x308;		/* (776)	R0=0xff900308(-7339256) */
ffa0276a:	0e 30       	R1 = R6;
ffa0276c:	ff e3 10 f4 	CALL 0xffa00f8c <_printf_int>;
ffa02770:	20 e1 1b 01 	R0 = 0x11b (X);		/*		R0=0x11b(283) */
ffa02774:	07 09       	CC = R7 <= R0;
ffa02776:	fd b9       	P5 = [FP -0x4];
ffa02778:	0c 18       	IF CC JUMP 0xffa02790 <_DHCP_rx+0x48>;
ffa0277a:	00 00       	NOP;
ffa0277c:	00 00       	NOP;
ffa0277e:	00 00       	NOP;
ffa02780:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa02782:	ff e3 a3 f7 	CALL 0xffa016c8 <_htons>;
ffa02786:	c0 42       	R0 = R0.L (Z);
ffa02788:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa0278c:	08 08       	CC = R0 == R1;
ffa0278e:	08 18       	IF CC JUMP 0xffa0279e <_DHCP_rx+0x56>;
ffa02790:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011b(-7339749) */
ffa02794:	00 e1 ec 02 	R0.L = 0x2ec;		/* (748)	R0=0xff9002ec(-7339284) */
ffa02798:	ff e3 38 f3 	CALL 0xffa00e08 <_printf_str>;
ffa0279c:	dc 2f       	JUMP.S 0xffa02754 <_DHCP_rx+0xc>;
ffa0279e:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa027a2:	ff e3 93 f7 	CALL 0xffa016c8 <_htons>;
ffa027a6:	c0 42       	R0 = R0.L (Z);
ffa027a8:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa027ac:	01 08       	CC = R1 == R0;
ffa027ae:	d3 17       	IF !CC JUMP 0xffa02754 <_DHCP_rx+0xc> (BP);
ffa027b0:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa027b4:	ff e3 8a f7 	CALL 0xffa016c8 <_htons>;
ffa027b8:	c0 42       	R0 = R0.L (Z);
ffa027ba:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa027be:	01 08       	CC = R1 == R0;
ffa027c0:	ca 17       	IF !CC JUMP 0xffa02754 <_DHCP_rx+0xc> (BP);
ffa027c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c44(-4191164) */
ffa027c6:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa027ca:	11 91       	R1 = [P2];
ffa027cc:	28 a3       	R0 = [P5 + 0x30];
ffa027ce:	08 08       	CC = R0 == R1;
ffa027d0:	c2 17       	IF !CC JUMP 0xffa02754 <_DHCP_rx+0xc> (BP);
ffa027d2:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa027d6:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa027da:	ff e3 83 f7 	CALL 0xffa016e0 <_htonl>;
ffa027de:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa027e2:	01 08       	CC = R1 == R0;
ffa027e4:	b8 17       	IF !CC JUMP 0xffa02754 <_DHCP_rx+0xc> (BP);
ffa027e6:	4d 30       	R1 = P5;
ffa027e8:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa027ec:	01 50       	R0 = R1 + R0;
ffa027ee:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa027f2:	f0 bb 00 00 
ffa027f6:	ff e3 59 f8 	CALL 0xffa018a8 <_DHCP_parse>;
ffa027fa:	e9 a3       	R1 = [P5 + 0x3c];
ffa027fc:	01 0c       	CC = R1 == 0x0;
ffa027fe:	12 1c       	IF CC JUMP 0xffa02822 <_DHCP_rx+0xda> (BP);
ffa02800:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa02804:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa02808:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa0280c:	11 93       	[P2] = R1;
ffa0280e:	00 e1 dc 02 	R0.L = 0x2dc;		/* (732)	R0=0xff9002dc(-7339300) */
ffa02812:	ff e3 5f f4 	CALL 0xffa010d0 <_printf_ip>;
ffa02816:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002dc(-7339300) */
ffa0281a:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa0281e:	ff e3 f5 f2 	CALL 0xffa00e08 <_printf_str>;
ffa02822:	01 e8 00 00 	UNLINK;
ffa02826:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02828:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0282a:	10 00       	RTS;

ffa0282c <_DHCP_req>:
ffa0282c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0282e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c44 <_rxbuf> */
ffa02832:	0d e1 28 0c 	P5.L = 0xc28;		/* (3112)	P5=0xff900c28 <_NetDHCPserv> */
ffa02836:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02838:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0283c:	28 93       	[P5] = R0;
ffa0283e:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa02840:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa02844:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02846:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa0284a:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa0284e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02850:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02854:	7f 30       	R7 = FP;
ffa02856:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa0285a:	00 e1 1c 03 	R0.L = 0x31c;		/* (796)	R0=0xff90031c(-7339236) */
ffa0285e:	a7 67       	R7 += -0xc;		/* (-12) */
ffa02860:	ff e3 d4 f2 	CALL 0xffa00e08 <_printf_str>;
ffa02864:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa02868:	2a 91 00 00 
ffa0286c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0286e:	ff e3 45 f9 	CALL 0xffa01af8 <_DHCP_tx>;
ffa02872:	ff e3 6b ff 	CALL 0xffa02748 <_DHCP_rx>;
ffa02876:	29 91       	R1 = [P5];
ffa02878:	39 0c       	CC = R1 == -0x1;
ffa0287a:	43 18       	IF CC JUMP 0xffa02900 <_DHCP_req+0xd4>;
ffa0287c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa02880:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa02884:	10 91       	R0 = [P2];
ffa02886:	00 0c       	CC = R0 == 0x0;
ffa02888:	08 18       	IF CC JUMP 0xffa02898 <_DHCP_req+0x6c>;
ffa0288a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa0288e:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetSubnetMask> */
ffa02892:	10 91       	R0 = [P2];
ffa02894:	00 0c       	CC = R0 == 0x0;
ffa02896:	30 10       	IF !CC JUMP 0xffa028f6 <_DHCP_req+0xca>;
ffa02898:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa0289a:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa0289e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa028a0:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa028a4:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa028a6:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa028aa:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa028ac:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa028b0:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa028b2:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa028b6:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa028ba:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa028be:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa028c2:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa028c6:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa028ca:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa028ce:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa028d0:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa028d4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa028d8:	00 e1 4c 03 	R0.L = 0x34c;		/* (844)	R0=0xff90034c(-7339188) */
ffa028dc:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa028e0:	ff e3 94 f2 	CALL 0xffa00e08 <_printf_str>;
ffa028e4:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa028e6:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa028ea:	2a 91 00 00 
ffa028ee:	ff e3 05 f9 	CALL 0xffa01af8 <_DHCP_tx>;
ffa028f2:	ff e3 2b ff 	CALL 0xffa02748 <_DHCP_rx>;
ffa028f6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa028f8:	01 e8 00 00 	UNLINK;
ffa028fc:	bd 05       	(R7:7, P5:5) = [SP++];
ffa028fe:	10 00       	RTS;
ffa02900:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02904:	00 e1 30 03 	R0.L = 0x330;		/* (816)	R0=0xff900330(-7339216) */
ffa02908:	ff e3 80 f2 	CALL 0xffa00e08 <_printf_str>;
ffa0290c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0290e:	f5 2f       	JUMP.S 0xffa028f8 <_DHCP_req+0xcc>;

ffa02910 <_bfin_EMAC_recv>:
ffa02910:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02912:	28 32       	P5 = R0;
ffa02914:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c40 <_rxIdx> */
ffa02918:	0c e1 40 0c 	P4.L = 0xc40;		/* (3136)	P4=0xff900c40 <_rxIdx> */
ffa0291c:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00c30(-4191184) */
ffa02920:	44 e1 c0 ff 	R4.H = 0xffc0;		/* (-64)	R4=0xffc00000(-4194304) */
ffa02924:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02928:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0292a:	6c 30       	R5 = P4;
ffa0292c:	86 60       	R6 = 0x10 (X);		/*		R6=0x10( 16) */
ffa0292e:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa02932:	04 e1 04 07 	R4.L = 0x704;		/* (1796)	R4=0xffc00704(-4192508) */
ffa02936:	0f 20       	JUMP.S 0xffa02954 <_bfin_EMAC_recv+0x44>;
ffa02938:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0293a:	20 97       	W[P4] = R0;
ffa0293c:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R0 = [P5] || NOP;
ffa02940:	28 91 00 00 
ffa02944:	00 e3 36 01 	CALL 0xffa02bb0 <_ARP_rx>;
ffa02948:	00 0c       	CC = R0 == 0x0;
ffa0294a:	43 18       	IF CC JUMP 0xffa029d0 <_bfin_EMAC_recv+0xc0>;
ffa0294c:	14 32       	P2 = R4;
ffa0294e:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02950:	16 97       	W[P2] = R6;
ffa02952:	01 20       	JUMP.S 0xffa02954 <_bfin_EMAC_recv+0x44>;
ffa02954:	0d 32       	P1 = R5;
ffa02956:	08 95       	R0 = W[P1] (Z);
ffa02958:	10 32       	P2 = R0;
ffa0295a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c40 <_rxIdx> */
ffa0295e:	09 e1 44 0c 	P1.L = 0xc44;		/* (3140)	P1=0xff900c44 <_rxbuf> */
ffa02962:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02964:	51 91       	P1 = [P2];
ffa02966:	88 a2       	R0 = [P1 + 0x28];
ffa02968:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa0296a:	48 18       	IF CC JUMP 0xffa029fa <_bfin_EMAC_recv+0xea>;
ffa0296c:	00 00       	NOP;
ffa0296e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02970:	a0 4f       	R0 <<= 0x14;
ffa02972:	89 a2       	R1 = [P1 + 0x28];
ffa02974:	81 54       	R2 = R1 & R0;
ffa02976:	02 0c       	CC = R2 == 0x0;
ffa02978:	47 10       	IF !CC JUMP 0xffa02a06 <_bfin_EMAC_recv+0xf6>;
ffa0297a:	00 00       	NOP;
ffa0297c:	00 00       	NOP;
ffa0297e:	00 00       	NOP;
ffa02980:	88 a2       	R0 = [P1 + 0x28];
ffa02982:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa02984:	4c 18       	IF CC JUMP 0xffa02a1c <_bfin_EMAC_recv+0x10c>;
ffa02986:	00 00       	NOP;
ffa02988:	00 00       	NOP;
ffa0298a:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa0298e:	89 a2       	R1 = [P1 + 0x28];
ffa02990:	c1 55       	R7 = R1 & R0;
ffa02992:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02994:	07 09       	CC = R7 <= R0;
ffa02996:	4e 18       	IF CC JUMP 0xffa02a32 <_bfin_EMAC_recv+0x122>;
ffa02998:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c5c(-4191140) */
ffa0299c:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa029a0:	16 97       	W[P2] = R6;
ffa029a2:	88 a1       	R0 = [P1 + 0x18];
ffa029a4:	59 95       	R1 = W[P3] (X);
ffa029a6:	28 93       	[P5] = R0;
ffa029a8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa029aa:	08 56       	R0 = R0 | R1;
ffa029ac:	18 97       	W[P3] = R0;
ffa029ae:	61 95       	R1 = W[P4] (X);
ffa029b0:	c8 42       	R0 = R1.L (Z);
ffa029b2:	10 0d       	CC = R0 <= 0x2;
ffa029b4:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa029b6:	8a b2       	[P1 + 0x28] = R2;
ffa029b8:	c0 17       	IF !CC JUMP 0xffa02938 <_bfin_EMAC_recv+0x28> (BP);
ffa029ba:	01 30       	R0 = R1;
ffa029bc:	08 64       	R0 += 0x1;		/* (  1) */
ffa029be:	20 97       	W[P4] = R0;
ffa029c0:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R0 = [P5] || NOP;
ffa029c4:	28 91 00 00 
ffa029c8:	00 e3 f4 00 	CALL 0xffa02bb0 <_ARP_rx>;
ffa029cc:	00 0c       	CC = R0 == 0x0;
ffa029ce:	bf 17       	IF !CC JUMP 0xffa0294c <_bfin_EMAC_recv+0x3c> (BP);
ffa029d0:	28 91       	R0 = [P5];
ffa029d2:	0f 30       	R1 = R7;
ffa029d4:	ff e3 42 fb 	CALL 0xffa02058 <_icmp_rx>;
ffa029d8:	00 0c       	CC = R0 == 0x0;
ffa029da:	b9 17       	IF !CC JUMP 0xffa0294c <_bfin_EMAC_recv+0x3c> (BP);
ffa029dc:	28 91       	R0 = [P5];
ffa029de:	0f 30       	R1 = R7;
ffa029e0:	00 e3 46 04 	CALL 0xffa0326c <_tcp_rx>;
ffa029e4:	00 0c       	CC = R0 == 0x0;
ffa029e6:	b3 17       	IF !CC JUMP 0xffa0294c <_bfin_EMAC_recv+0x3c> (BP);
ffa029e8:	0c 32       	P1 = R4;
ffa029ea:	07 0d       	CC = R7 <= 0x0;
ffa029ec:	0e 97       	W[P1] = R6;
ffa029ee:	b3 1f       	IF CC JUMP 0xffa02954 <_bfin_EMAC_recv+0x44> (BP);
ffa029f0:	01 e8 00 00 	UNLINK;
ffa029f4:	07 30       	R0 = R7;
ffa029f6:	a3 05       	(R7:4, P5:3) = [SP++];
ffa029f8:	10 00       	RTS;
ffa029fa:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa029fc:	01 e8 00 00 	UNLINK;
ffa02a00:	07 30       	R0 = R7;
ffa02a02:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02a04:	10 00       	RTS;
ffa02a06:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900003(-7340029) */
ffa02a0a:	00 e1 60 03 	R0.L = 0x360;		/* (864)	R0=0xff900360(-7339168) */
ffa02a0e:	ff e3 fd f1 	CALL 0xffa00e08 <_printf_str>;
ffa02a12:	01 e8 00 00 	UNLINK;
ffa02a16:	07 30       	R0 = R7;
ffa02a18:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02a1a:	10 00       	RTS;
ffa02a1c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900360(-7339168) */
ffa02a20:	00 e1 7c 03 	R0.L = 0x37c;		/* (892)	R0=0xff90037c(-7339140) */
ffa02a24:	ff e3 f2 f1 	CALL 0xffa00e08 <_printf_str>;
ffa02a28:	01 e8 00 00 	UNLINK;
ffa02a2c:	07 30       	R0 = R7;
ffa02a2e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02a30:	10 00       	RTS;
ffa02a32:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90037c(-7339140) */
ffa02a36:	00 e1 90 03 	R0.L = 0x390;		/* (912)	R0=0xff900390(-7339120) */
ffa02a3a:	ff e3 e7 f1 	CALL 0xffa00e08 <_printf_str>;
ffa02a3e:	01 e8 00 00 	UNLINK;
ffa02a42:	07 30       	R0 = R7;
ffa02a44:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02a46:	10 00       	RTS;

ffa02a48 <_ARP_init>:
ffa02a48:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa02a4c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02a50:	0a e1 6c 0c 	P2.L = 0xc6c;		/* (3180)	P2=0xff900c6c <_NetArpLut> */
ffa02a54:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02a56:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a58:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02a5a:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa02a5c:	b2 e0 12 10 	LSETUP(0xffa02a60 <_ARP_init+0x18>, 0xffa02a80 <_ARP_init+0x38>) LC1 = P1;
ffa02a60:	11 93       	[P2] = R1;
ffa02a62:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02a66:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02a6a:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa02a6e:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa02a72:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02a76:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02a7a:	52 b5       	W[P2 + 0xa] = R2;
ffa02a7c:	d1 b0       	[P2 + 0xc] = R1;
ffa02a7e:	11 b1       	[P2 + 0x10] = R1;
ffa02a80:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa02a82:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c6c <_NetArpLut> */
ffa02a86:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02a8a:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xff900c68 <_NetArpLut_age> */
ffa02a8e:	10 97       	W[P2] = R0;
ffa02a90:	01 e8 00 00 	UNLINK;
ffa02a94:	10 00       	RTS;
	...

ffa02a98 <_ARP_lut_find>:
ffa02a98:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900c2c <_txIdx> */
ffa02a9c:	08 e1 6c 0c 	P0.L = 0xc6c;		/* (3180)	P0=0xff900c6c <_NetArpLut> */
ffa02aa0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02aa4:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02aa6:	48 32       	P1 = P0;
ffa02aa8:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02aaa:	b2 e0 06 20 	LSETUP(0xffa02aae <_ARP_lut_find+0x16>, 0xffa02ab6 <_ARP_lut_find+0x1e>) LC1 = P2;
ffa02aae:	08 91       	R0 = [P1];
ffa02ab0:	00 0c       	CC = R0 == 0x0;
ffa02ab2:	14 18       	IF CC JUMP 0xffa02ada <_ARP_lut_find+0x42>;
ffa02ab4:	0a 64       	R2 += 0x1;		/* (  1) */
ffa02ab6:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02ab8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa02abc:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02abe:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02ac0:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa02ac2:	09 e1 8a 0c 	P1.L = 0xc8a;		/* (3210)	P1=0xff900c8a */
ffa02ac6:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa02ac8:	b2 e0 08 20 	LSETUP(0xffa02acc <_ARP_lut_find+0x34>, 0xffa02ad8 <_ARP_lut_find+0x40>) LC1 = P2;
ffa02acc:	08 95       	R0 = W[P1] (Z);
ffa02ace:	03 09       	CC = R3 <= R0;
ffa02ad0:	03 18       	IF CC JUMP 0xffa02ad6 <_ARP_lut_find+0x3e>;
ffa02ad2:	11 30       	R2 = R1;
ffa02ad4:	18 30       	R3 = R0;
ffa02ad6:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02ad8:	09 64       	R1 += 0x1;		/* (  1) */
ffa02ada:	02 30       	R0 = R2;
ffa02adc:	01 e8 00 00 	UNLINK;
ffa02ae0:	10 00       	RTS;
	...

ffa02ae4 <_ARP_lut_add>:
ffa02ae4:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02ae6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c28 <_NetDHCPserv> */
ffa02aea:	0d e1 6c 0c 	P5.L = 0xc6c;		/* (3180)	P5=0xff900c6c <_NetArpLut> */
ffa02aee:	31 30       	R6 = R1;
ffa02af0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02af4:	38 30       	R7 = R0;
ffa02af6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02af8:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa02afa:	4d 32       	P1 = P5;
ffa02afc:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02afe:	00 00       	NOP;
ffa02b00:	08 91       	R0 = [P1];
ffa02b02:	07 08       	CC = R7 == R0;
ffa02b04:	11 07       	IF CC R2 = R1;
ffa02b06:	09 64       	R1 += 0x1;		/* (  1) */
ffa02b08:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa02b0a:	42 0c       	CC = P2 == 0x0;
ffa02b0c:	23 10       	IF !CC JUMP 0xffa02b52 <_ARP_lut_add+0x6e>;
ffa02b0e:	82 0c       	CC = R2 < 0x0;
ffa02b10:	25 18       	IF CC JUMP 0xffa02b5a <_ARP_lut_add+0x76>;
ffa02b12:	82 c6 12 82 	R1 = R2 << 0x2;
ffa02b16:	0a 32       	P1 = R2;
ffa02b18:	11 32       	P2 = R1;
ffa02b1a:	06 32       	P0 = R6;
ffa02b1c:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa02b1e:	6a 5a       	P1 = P2 + P5;
ffa02b20:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02b22:	0f 93       	[P1] = R7;
ffa02b24:	aa 5a       	P2 = P2 + P5;
ffa02b26:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02b28:	b2 e0 03 10 	LSETUP(0xffa02b2c <_ARP_lut_add+0x48>, 0xffa02b2e <_ARP_lut_add+0x4a>) LC1 = P1;
ffa02b2c:	40 98       	R0 = B[P0++] (X);
ffa02b2e:	10 9a       	B[P2++] = R0;
ffa02b30:	51 41       	R1 = (R1 + R2) << 0x2;
ffa02b32:	09 32       	P1 = R1;
ffa02b34:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa02b38:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xff900c68 <_NetArpLut_age> */
ffa02b3c:	50 95       	R0 = W[P2] (X);
ffa02b3e:	08 64       	R0 += 0x1;		/* (  1) */
ffa02b40:	10 97       	W[P2] = R0;
ffa02b42:	a9 5a       	P2 = P1 + P5;
ffa02b44:	50 b5       	W[P2 + 0xa] = R0;
ffa02b46:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02b48:	10 b1       	[P2 + 0x10] = R0;
ffa02b4a:	01 e8 00 00 	UNLINK;
ffa02b4e:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02b50:	10 00       	RTS;
ffa02b52:	82 0c       	CC = R2 < 0x0;
ffa02b54:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02b56:	d4 1f       	IF CC JUMP 0xffa02afe <_ARP_lut_add+0x1a> (BP);
ffa02b58:	dd 2f       	JUMP.S 0xffa02b12 <_ARP_lut_add+0x2e>;
ffa02b5a:	ff e3 9f ff 	CALL 0xffa02a98 <_ARP_lut_find>;
ffa02b5e:	10 30       	R2 = R0;
ffa02b60:	d9 2f       	JUMP.S 0xffa02b12 <_ARP_lut_add+0x2e>;
	...

ffa02b64 <_ARP_lu>:
ffa02b64:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02b68:	c4 04       	[--SP] = (P5:4);
ffa02b6a:	09 e1 6c 0c 	P1.L = 0xc6c;		/* (3180)	P1=0xff900c6c <_NetArpLut> */
ffa02b6e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02b72:	10 30       	R2 = R0;
ffa02b74:	29 32       	P5 = R1;
ffa02b76:	61 32       	P4 = P1;
ffa02b78:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa02b7a:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02b7c:	b2 e0 06 20 	LSETUP(0xffa02b80 <_ARP_lu+0x1c>, 0xffa02b88 <_ARP_lu+0x24>) LC1 = P2;
ffa02b80:	08 91       	R0 = [P1];
ffa02b82:	10 08       	CC = R0 == R2;
ffa02b84:	08 18       	IF CC JUMP 0xffa02b94 <_ARP_lu+0x30>;
ffa02b86:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa02b88:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02b8a:	01 e8 00 00 	UNLINK;
ffa02b8e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b90:	84 04       	(P5:4) = [SP++];
ffa02b92:	10 00       	RTS;
ffa02b94:	08 a1       	R0 = [P1 + 0x10];
ffa02b96:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02b98:	f7 1f       	IF CC JUMP 0xffa02b86 <_ARP_lu+0x22> (BP);
ffa02b9a:	60 5a       	P1 = P0 + P4;
ffa02b9c:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa02b9e:	b2 e0 03 20 	LSETUP(0xffa02ba2 <_ARP_lu+0x3e>, 0xffa02ba4 <_ARP_lu+0x40>) LC1 = P2;
ffa02ba2:	48 98       	R0 = B[P1++] (X);
ffa02ba4:	28 9a       	B[P5++] = R0;
ffa02ba6:	01 e8 00 00 	UNLINK;
ffa02baa:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02bac:	84 04       	(P5:4) = [SP++];
ffa02bae:	10 00       	RTS;

ffa02bb0 <_ARP_rx>:
ffa02bb0:	fb 05       	[--SP] = (R7:7, P5:3);
ffa02bb2:	20 32       	P4 = R0;
ffa02bb4:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02bb8:	39 30       	R7 = R1;
ffa02bba:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa02bbc:	ff e3 86 f5 	CALL 0xffa016c8 <_htons>;
ffa02bc0:	c0 42       	R0 = R0.L (Z);
ffa02bc2:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa02bc6:	08 08       	CC = R0 == R1;
ffa02bc8:	06 18       	IF CC JUMP 0xffa02bd4 <_ARP_rx+0x24>;
ffa02bca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02bcc:	01 e8 00 00 	UNLINK;
ffa02bd0:	bb 05       	(R7:7, P5:3) = [SP++];
ffa02bd2:	10 00       	RTS;
ffa02bd4:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02bd6:	07 0a       	CC = R7 <= R0 (IU);
ffa02bd8:	f9 1f       	IF CC JUMP 0xffa02bca <_ARP_rx+0x1a> (BP);
ffa02bda:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02bdc:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02bde:	ff e3 75 f5 	CALL 0xffa016c8 <_htons>;
ffa02be2:	c0 42       	R0 = R0.L (Z);
ffa02be4:	07 08       	CC = R7 == R0;
ffa02be6:	f2 17       	IF !CC JUMP 0xffa02bca <_ARP_rx+0x1a> (BP);
ffa02be8:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02bec:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02bee:	ff e3 6d f5 	CALL 0xffa016c8 <_htons>;
ffa02bf2:	c0 42       	R0 = R0.L (Z);
ffa02bf4:	07 08       	CC = R7 == R0;
ffa02bf6:	ea 17       	IF !CC JUMP 0xffa02bca <_ARP_rx+0x1a> (BP);
ffa02bf8:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02bfa:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02bfe:	08 08       	CC = R0 == R1;
ffa02c00:	e5 17       	IF !CC JUMP 0xffa02bca <_ARP_rx+0x1a> (BP);
ffa02c02:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02c04:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02c06:	ff e3 61 f5 	CALL 0xffa016c8 <_htons>;
ffa02c0a:	c0 42       	R0 = R0.L (Z);
ffa02c0c:	07 08       	CC = R7 == R0;
ffa02c0e:	0c 14       	IF !CC JUMP 0xffa02c26 <_ARP_rx+0x76> (BP);
ffa02c10:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa02c14:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_NetOurMAC> */
ffa02c18:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa02c1c:	10 99       	R0 = B[P2] (Z);
ffa02c1e:	01 08       	CC = R1 == R0;
ffa02c20:	ae 18       	IF CC JUMP 0xffa02d7c <_ARP_rx+0x1cc>;
ffa02c22:	00 00       	NOP;
ffa02c24:	00 00       	NOP;
ffa02c26:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c28:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02c2a:	ff e3 4f f5 	CALL 0xffa016c8 <_htons>;
ffa02c2e:	c0 42       	R0 = R0.L (Z);
ffa02c30:	07 08       	CC = R7 == R0;
ffa02c32:	cc 17       	IF !CC JUMP 0xffa02bca <_ARP_rx+0x1a> (BP);
ffa02c34:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02c38:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02c3a:	ff e3 47 f5 	CALL 0xffa016c8 <_htons>;
ffa02c3e:	c0 42       	R0 = R0.L (Z);
ffa02c40:	07 08       	CC = R7 == R0;
ffa02c42:	c4 17       	IF !CC JUMP 0xffa02bca <_ARP_rx+0x1a> (BP);
ffa02c44:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02c46:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02c4a:	08 08       	CC = R0 == R1;
ffa02c4c:	bf 17       	IF !CC JUMP 0xffa02bca <_ARP_rx+0x1a> (BP);
ffa02c4e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c50:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02c52:	ff e3 3b f5 	CALL 0xffa016c8 <_htons>;
ffa02c56:	c0 42       	R0 = R0.L (Z);
ffa02c58:	07 08       	CC = R7 == R0;
ffa02c5a:	b8 17       	IF !CC JUMP 0xffa02bca <_ARP_rx+0x1a> (BP);
ffa02c5c:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa02c60:	07 e1 60 0c 	R7.L = 0xc60;		/* (3168)	R7=0xff900c60 <_NetOurIP>(-7336864) */
ffa02c64:	17 32       	P2 = R7;
ffa02c66:	a1 a2       	R1 = [P4 + 0x28];
ffa02c68:	10 91       	R0 = [P2];
ffa02c6a:	01 08       	CC = R1 == R0;
ffa02c6c:	af 17       	IF !CC JUMP 0xffa02bca <_ARP_rx+0x1a> (BP);
ffa02c6e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_NetOurMAC> */
ffa02c72:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa02c76:	10 95       	R0 = W[P2] (Z);
ffa02c78:	10 32       	P2 = R0;
ffa02c7a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c6c <_NetArpLut> */
ffa02c7e:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa02c82:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa02c84:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c6c <_NetArpLut> */
ffa02c88:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02c8a:	52 91       	P2 = [P2];
ffa02c8c:	0d e1 54 0c 	P5.L = 0xc54;		/* (3156)	P5=0xff900c54 <_NetOurMAC> */
ffa02c90:	93 ad       	P3 = [P2 + 0x18];
ffa02c92:	18 97       	W[P3] = R0;
ffa02c94:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa02c98:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa02c9c:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa02ca0:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa02ca4:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa02ca8:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa02cac:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa02cb0:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa02cb4:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa02cb8:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa02cbc:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa02cc0:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa02cc4:	68 99       	R0 = B[P5] (X);
ffa02cc6:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa02cca:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02cce:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa02cd2:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02cd6:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa02cda:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02cde:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa02ce2:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02ce6:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa02cea:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02cee:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa02cf2:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02cf6:	ff e3 e9 f4 	CALL 0xffa016c8 <_htons>;
ffa02cfa:	d8 b5       	W[P3 + 0xe] = R0;
ffa02cfc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02cfe:	ff e3 e5 f4 	CALL 0xffa016c8 <_htons>;
ffa02d02:	18 b6       	W[P3 + 0x10] = R0;
ffa02d04:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02d08:	ff e3 e0 f4 	CALL 0xffa016c8 <_htons>;
ffa02d0c:	58 b6       	W[P3 + 0x12] = R0;
ffa02d0e:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02d10:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa02d14:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02d16:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa02d1a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02d1c:	ff e3 d6 f4 	CALL 0xffa016c8 <_htons>;
ffa02d20:	44 32       	P0 = P4;
ffa02d22:	d8 b6       	W[P3 + 0x16] = R0;
ffa02d24:	53 32       	P2 = P3;
ffa02d26:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa02d28:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02d2a:	b2 e0 08 10 	LSETUP(0xffa02d2e <_ARP_rx+0x17e>, 0xffa02d3a <_ARP_rx+0x18a>) LC1 = P1;
ffa02d2e:	68 98       	R0 = B[P5++] (X);
ffa02d30:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa02d34:	40 98       	R0 = B[P0++] (X);
ffa02d36:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa02d3a:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02d3c:	17 32       	P2 = R7;
ffa02d3e:	50 99       	R0 = B[P2] (X);
ffa02d40:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa02d44:	10 91       	R0 = [P2];
ffa02d46:	40 4e       	R0 >>= 0x8;
ffa02d48:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa02d4c:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02d50:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa02d54:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02d58:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa02d5c:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa02d60:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa02d64:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa02d68:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa02d6c:	f3 b0       	[SP + 0xc] = R3;
ffa02d6e:	ff e3 03 f4 	CALL 0xffa01574 <_FormatIPAddress>;
ffa02d72:	98 b2       	[P3 + 0x28] = R0;
ffa02d74:	ff e3 54 f6 	CALL 0xffa01a1c <_bfin_EMAC_send_nocopy>;
ffa02d78:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d7a:	29 2f       	JUMP.S 0xffa02bcc <_ARP_rx+0x1c>;
ffa02d7c:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa02d80:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa02d84:	01 08       	CC = R1 == R0;
ffa02d86:	50 17       	IF !CC JUMP 0xffa02c26 <_ARP_rx+0x76> (BP);
ffa02d88:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa02d8c:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa02d90:	01 08       	CC = R1 == R0;
ffa02d92:	4a 17       	IF !CC JUMP 0xffa02c26 <_ARP_rx+0x76> (BP);
ffa02d94:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa02d98:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa02d9c:	01 08       	CC = R1 == R0;
ffa02d9e:	44 17       	IF !CC JUMP 0xffa02c26 <_ARP_rx+0x76> (BP);
ffa02da0:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa02da4:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02da8:	01 08       	CC = R1 == R0;
ffa02daa:	3e 17       	IF !CC JUMP 0xffa02c26 <_ARP_rx+0x76> (BP);
ffa02dac:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa02db0:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa02db4:	01 08       	CC = R1 == R0;
ffa02db6:	38 17       	IF !CC JUMP 0xffa02c26 <_ARP_rx+0x76> (BP);
ffa02db8:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa02dba:	44 30       	R0 = P4;
ffa02dbc:	ff e3 a6 f4 	CALL 0xffa01708 <_pack4chars>;
ffa02dc0:	38 30       	R7 = R0;
ffa02dc2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa02dc6:	0f 30       	R1 = R7;
ffa02dc8:	00 e1 9c 04 	R0.L = 0x49c;		/* (1180)	R0=0xff90049c(-7338852) */
ffa02dcc:	ff e3 82 f1 	CALL 0xffa010d0 <_printf_ip>;
ffa02dd0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90049c(-7338852) */
ffa02dd4:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02dd8:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa02dda:	ff e3 17 f0 	CALL 0xffa00e08 <_printf_str>;
ffa02dde:	07 30       	R0 = R7;
ffa02de0:	4c 30       	R1 = P4;
ffa02de2:	ff e3 81 fe 	CALL 0xffa02ae4 <_ARP_lut_add>;
ffa02de6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02de8:	f2 2e       	JUMP.S 0xffa02bcc <_ARP_rx+0x1c>;
	...

ffa02dec <_ARP_tx>:
ffa02dec:	fc 05       	[--SP] = (R7:7, P5:4);
ffa02dee:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa02df2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02df6:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa02dfa:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa02dfe:	10 95 00 00 
ffa02e02:	10 32       	P2 = R0;
ffa02e04:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02e08:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa02e0c:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa02e0e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c54 <_NetOurMAC> */
ffa02e12:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02e14:	52 91       	P2 = [P2];
ffa02e16:	0d e1 54 0c 	P5.L = 0xc54;		/* (3156)	P5=0xff900c54 <_NetOurMAC> */
ffa02e1a:	94 ad       	P4 = [P2 + 0x18];
ffa02e1c:	20 97       	W[P4] = R0;
ffa02e1e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02e20:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa02e24:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa02e28:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa02e2c:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa02e30:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa02e34:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa02e38:	68 99       	R0 = B[P5] (X);
ffa02e3a:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa02e3e:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02e42:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa02e46:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02e4a:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa02e4e:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02e52:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa02e56:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02e5a:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa02e5e:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02e62:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa02e66:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02e6a:	ff e3 2f f4 	CALL 0xffa016c8 <_htons>;
ffa02e6e:	e0 b5       	W[P4 + 0xe] = R0;
ffa02e70:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e72:	ff e3 2b f4 	CALL 0xffa016c8 <_htons>;
ffa02e76:	20 b6       	W[P4 + 0x10] = R0;
ffa02e78:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02e7c:	ff e3 26 f4 	CALL 0xffa016c8 <_htons>;
ffa02e80:	60 b6       	W[P4 + 0x12] = R0;
ffa02e82:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02e84:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa02e88:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02e8a:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa02e8e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e90:	ff e3 1c f4 	CALL 0xffa016c8 <_htons>;
ffa02e94:	e0 b6       	W[P4 + 0x16] = R0;
ffa02e96:	54 32       	P2 = P4;
ffa02e98:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02e9a:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02e9c:	b2 e0 07 10 	LSETUP(0xffa02ea0 <_ARP_tx+0xb4>, 0xffa02eaa <_ARP_tx+0xbe>) LC1 = P1;
ffa02ea0:	68 98       	R0 = B[P5++] (X);
ffa02ea2:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa02ea6:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa02eaa:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02eac:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa02eb0:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa02eb4:	50 99       	R0 = B[P2] (X);
ffa02eb6:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa02eba:	10 91       	R0 = [P2];
ffa02ebc:	40 4e       	R0 >>= 0x8;
ffa02ebe:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa02ec2:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02ec6:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa02eca:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02ece:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa02ed2:	a7 b2       	[P4 + 0x28] = R7;
ffa02ed4:	01 e8 00 00 	UNLINK;
ffa02ed8:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02eda:	ff e2 a1 f5 	JUMP.L 0xffa01a1c <_bfin_EMAC_send_nocopy>;
	...

ffa02ee0 <_ARP_req>:
ffa02ee0:	ec 05       	[--SP] = (R7:5, P5:4);
ffa02ee2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02ee6:	38 30       	R7 = R0;
ffa02ee8:	ff e3 3e fe 	CALL 0xffa02b64 <_ARP_lu>;
ffa02eec:	00 0c       	CC = R0 == 0x0;
ffa02eee:	50 10       	IF !CC JUMP 0xffa02f8e <_ARP_req+0xae>;
ffa02ef0:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c60 */
ffa02ef4:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa02ef8:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c40 <_rxIdx> */
ffa02efc:	16 91       	R6 = [P2];
ffa02efe:	0c e1 6c 0c 	P4.L = 0xc6c;		/* (3180)	P4=0xff900c6c <_NetArpLut> */
ffa02f02:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02f06:	4c 32       	P1 = P4;
ffa02f08:	46 51       	R5 = R6 + R0;
ffa02f0a:	6c 32       	P5 = P4;
ffa02f0c:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02f0e:	b2 e0 06 20 	LSETUP(0xffa02f12 <_ARP_req+0x32>, 0xffa02f1a <_ARP_req+0x3a>) LC1 = P2;
ffa02f12:	08 91       	R0 = [P1];
ffa02f14:	07 08       	CC = R7 == R0;
ffa02f16:	21 18       	IF CC JUMP 0xffa02f58 <_ARP_req+0x78>;
ffa02f18:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa02f1a:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02f1c:	ff e3 be fd 	CALL 0xffa02a98 <_ARP_lut_find>;
ffa02f20:	10 32       	P2 = R0;
ffa02f22:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02f24:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02f28:	09 e1 68 0c 	P1.L = 0xc68;		/* (3176)	P1=0xff900c68 <_NetArpLut_age> */
ffa02f2c:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa02f2e:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa02f30:	10 b1       	[P2 + 0x10] = R0;
ffa02f32:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02f36:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa02f3a:	17 93 00 00 
ffa02f3e:	d0 b0       	[P2 + 0xc] = R0;
ffa02f40:	48 95       	R0 = W[P1] (X);
ffa02f42:	08 64       	R0 += 0x1;		/* (  1) */
ffa02f44:	08 97       	W[P1] = R0;
ffa02f46:	50 b5       	W[P2 + 0xa] = R0;
ffa02f48:	07 30       	R0 = R7;
ffa02f4a:	ff e3 51 ff 	CALL 0xffa02dec <_ARP_tx>;
ffa02f4e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f50:	01 e8 00 00 	UNLINK;
ffa02f54:	ac 05       	(R7:5, P5:4) = [SP++];
ffa02f56:	10 00       	RTS;
ffa02f58:	08 a1       	R0 = [P1 + 0x10];
ffa02f5a:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa02f5c:	de 1f       	IF CC JUMP 0xffa02f18 <_ARP_req+0x38> (BP);
ffa02f5e:	e8 a0       	R0 = [P5 + 0xc];
ffa02f60:	86 09       	CC = R6 < R0 (IU);
ffa02f62:	f6 1f       	IF CC JUMP 0xffa02f4e <_ARP_req+0x6e> (BP);
ffa02f64:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02f68:	0f 30       	R1 = R7;
ffa02f6a:	00 e1 c0 04 	R0.L = 0x4c0;		/* (1216)	R0=0xff9004c0(-7338816) */
ffa02f6e:	ff e3 b1 f0 	CALL 0xffa010d0 <_printf_ip>;
ffa02f72:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004c0(-7338816) */
ffa02f76:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02f7a:	ff e3 47 ef 	CALL 0xffa00e08 <_printf_str>;
ffa02f7e:	07 30       	R0 = R7;
ffa02f80:	ff e3 36 ff 	CALL 0xffa02dec <_ARP_tx>;
ffa02f84:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa02f88:	ed b0 00 00 
ffa02f8c:	e2 2f       	JUMP.S 0xffa02f50 <_ARP_req+0x70>;
ffa02f8e:	01 e8 00 00 	UNLINK;
ffa02f92:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f94:	ac 05       	(R7:5, P5:4) = [SP++];
ffa02f96:	10 00       	RTS;

ffa02f98 <_tcp_length>:
ffa02f98:	c5 04       	[--SP] = (P5:5);
ffa02f9a:	28 32       	P5 = R0;
ffa02f9c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02fa0:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa02fa2:	ff e3 93 f3 	CALL 0xffa016c8 <_htons>;
ffa02fa6:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa02faa:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa02fac:	51 54       	R1 = R1 & R2;
ffa02fae:	11 4f       	R1 <<= 0x2;
ffa02fb0:	c0 42       	R0 = R0.L (Z);
ffa02fb2:	08 52       	R0 = R0 - R1;
ffa02fb4:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa02fb8:	11 4d       	R1 >>>= 0x2;
ffa02fba:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa02fbc:	51 54       	R1 = R1 & R2;
ffa02fbe:	01 e8 00 00 	UNLINK;
ffa02fc2:	08 52       	R0 = R0 - R1;
ffa02fc4:	85 04       	(P5:5) = [SP++];
ffa02fc6:	10 00       	RTS;

ffa02fc8 <_tcp_checksum_calc>:
ffa02fc8:	08 32       	P1 = R0;
ffa02fca:	ed 05       	[--SP] = (R7:5, P5:5);
ffa02fcc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02fd0:	28 32       	P5 = R0;
ffa02fd2:	31 30       	R6 = R1;
ffa02fd4:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa02fd6:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa02fd8:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa02fda:	b2 e0 03 20 	LSETUP(0xffa02fde <_tcp_checksum_calc+0x16>, 0xffa02fe0 <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa02fde:	08 94       	R0 = W[P1++] (Z);
ffa02fe0:	45 51       	R5 = R5 + R0;
ffa02fe2:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa02fe6:	10 4e       	R0 >>= 0x2;
ffa02fe8:	06 50       	R0 = R6 + R0;
ffa02fea:	c0 42       	R0 = R0.L (Z);
ffa02fec:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa02ff0:	ff e3 6c f3 	CALL 0xffa016c8 <_htons>;
ffa02ff4:	47 4f       	R7 <<= 0x8;
ffa02ff6:	c0 42       	R0 = R0.L (Z);
ffa02ff8:	c7 51       	R7 = R7 + R0;
ffa02ffa:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa02ffc:	ef 50       	R3 = R7 + R5;
ffa02ffe:	0d 1c       	IF CC JUMP 0xffa03018 <_tcp_checksum_calc+0x50> (BP);
ffa03000:	0e 32       	P1 = R6;
ffa03002:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03006:	10 4e       	R0 >>= 0x2;
ffa03008:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa0300a:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0300c:	a9 5a       	P2 = P1 + P5;
ffa0300e:	08 32       	P1 = R0;
ffa03010:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03012:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa03014:	8a 5a       	P2 = P2 + P1;
ffa03016:	10 9b       	B[P2] = R0;
ffa03018:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa0301c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0301e:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa03022:	71 50       	R1 = R1 + R6;
ffa03024:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03028:	09 4d       	R1 >>>= 0x1;
ffa0302a:	18 4e       	R0 >>= 0x3;
ffa0302c:	41 50       	R1 = R1 + R0;
ffa0302e:	01 0d       	CC = R1 <= 0x0;
ffa03030:	09 18       	IF CC JUMP 0xffa03042 <_tcp_checksum_calc+0x7a>;
ffa03032:	55 32       	P2 = P5;
ffa03034:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa03036:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa03038:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0303a:	10 94       	R0 = W[P2++] (Z);
ffa0303c:	0a 08       	CC = R2 == R1;
ffa0303e:	c3 50       	R3 = R3 + R0;
ffa03040:	fc 17       	IF !CC JUMP 0xffa03038 <_tcp_checksum_calc+0x70> (BP);
ffa03042:	d8 42       	R0 = R3.L (Z);
ffa03044:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa03048:	08 50       	R0 = R0 + R1;
ffa0304a:	c0 43       	R0 =~ R0;
ffa0304c:	01 e8 00 00 	UNLINK;
ffa03050:	c0 42       	R0 = R0.L (Z);
ffa03052:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03054:	10 00       	RTS;
	...

ffa03058 <_tcp_checksum_set>:
ffa03058:	c5 04       	[--SP] = (P5:5);
ffa0305a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa0305e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03062:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa03066:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa0306a:	10 95 00 00 
ffa0306e:	10 32       	P2 = R0;
ffa03070:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c68 <_NetArpLut_age> */
ffa03074:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa03078:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0307a:	52 91       	P2 = [P2];
ffa0307c:	95 ad       	P5 = [P2 + 0x18];
ffa0307e:	45 30       	R0 = P5;
ffa03080:	ff e3 a4 ff 	CALL 0xffa02fc8 <_tcp_checksum_calc>;
ffa03084:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa03088:	01 e8 00 00 	UNLINK;
ffa0308c:	85 04       	(P5:5) = [SP++];
ffa0308e:	10 00       	RTS;

ffa03090 <_tcp_checksum_check>:
ffa03090:	10 32       	P2 = R0;
ffa03092:	78 05       	[--SP] = (R7:7);
ffa03094:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03098:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa0309c:	ff e3 96 ff 	CALL 0xffa02fc8 <_tcp_checksum_calc>;
ffa030a0:	0f 30       	R1 = R7;
ffa030a2:	c7 42       	R7 = R0.L (Z);
ffa030a4:	39 08       	CC = R1 == R7;
ffa030a6:	19 18       	IF CC JUMP 0xffa030d8 <_tcp_checksum_check+0x48>;
ffa030a8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa030ac:	00 e1 e0 04 	R0.L = 0x4e0;		/* (1248)	R0=0xff9004e0(-7338784) */
ffa030b0:	ff e3 12 ef 	CALL 0xffa00ed4 <_printf_hex>;
ffa030b4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004e0(-7338784) */
ffa030b8:	0f 30       	R1 = R7;
ffa030ba:	00 e1 fc 04 	R0.L = 0x4fc;		/* (1276)	R0=0xff9004fc(-7338756) */
ffa030be:	ff e3 0b ef 	CALL 0xffa00ed4 <_printf_hex>;
ffa030c2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004fc(-7338756) */
ffa030c6:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa030ca:	ff e3 9f ee 	CALL 0xffa00e08 <_printf_str>;
ffa030ce:	01 e8 00 00 	UNLINK;
ffa030d2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa030d4:	38 05       	(R7:7) = [SP++];
ffa030d6:	10 00       	RTS;
ffa030d8:	01 e8 00 00 	UNLINK;
ffa030dc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa030de:	38 05       	(R7:7) = [SP++];
ffa030e0:	10 00       	RTS;
	...

ffa030e4 <_tcp_packet_setup>:
ffa030e4:	ed 05       	[--SP] = (R7:5, P5:5);
ffa030e6:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa030ea:	29 32       	P5 = R1;
ffa030ec:	7f 30       	R7 = FP;
ffa030ee:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa030f0:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa030f2:	f0 bb       	[FP -0x4] = R0;
ffa030f4:	07 30       	R0 = R7;
ffa030f6:	2a 30       	R5 = R2;
ffa030f8:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa030fc:	ff e3 2c f7 	CALL 0xffa01f54 <_eth_header_setup>;
ffa03100:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa03104:	68 99 00 00 
ffa03108:	80 0c       	CC = R0 < 0x0;
ffa0310a:	14 18       	IF CC JUMP 0xffa03132 <_tcp_packet_setup+0x4e>;
ffa0310c:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0310e:	f0 b0       	[SP + 0xc] = R0;
ffa03110:	15 30       	R2 = R5;
ffa03112:	01 30       	R0 = R1;
ffa03114:	0f 30       	R1 = R7;
ffa03116:	ff e3 0d f3 	CALL 0xffa01730 <_ip_header_setup>;
ffa0311a:	b9 a2       	R1 = [FP + 0x28];
ffa0311c:	f1 b0       	[SP + 0xc] = R1;
ffa0311e:	f9 a2       	R1 = [FP + 0x2c];
ffa03120:	31 b1       	[SP + 0x10] = R1;
ffa03122:	72 43       	R2 = R6.B (Z);
ffa03124:	0f 30       	R1 = R7;
ffa03126:	ff e3 91 f3 	CALL 0xffa01848 <_tcp_header_setup>;
ffa0312a:	01 e8 00 00 	UNLINK;
ffa0312e:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03130:	10 00       	RTS;
ffa03132:	01 e8 00 00 	UNLINK;
ffa03136:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03138:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0313a:	10 00       	RTS;

ffa0313c <_tcp_burst>:
ffa0313c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0313e:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa03142:	78 b2       	[FP + 0x24] = R0;
ffa03144:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 <_NetArpLut_age> */
ffa03148:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa0314c:	7a a2       	R2 = [FP + 0x24];
ffa0314e:	0b e1 54 0d 	P3.L = 0xd54;		/* (3412)	P3=0xff900d54 <_g_httpHeaderLen> */
ffa03152:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03156:	02 0d       	CC = R2 <= 0x0;
ffa03158:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa0315c:	10 91 00 00 
ffa03160:	19 91       	R1 = [P3];
ffa03162:	7e 18       	IF CC JUMP 0xffa0325e <_tcp_burst+0x122>;
ffa03164:	41 50       	R1 = R1 + R0;
ffa03166:	8f 09       	CC = R7 < R1 (IU);
ffa03168:	21 32       	P4 = R1;
ffa0316a:	7a 10       	IF !CC JUMP 0xffa0325e <_tcp_burst+0x122>;
ffa0316c:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa0316e:	38 20       	JUMP.S 0xffa031de <_tcp_burst+0xa2>;
ffa03170:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03172:	18 91       	R0 = [P3];
ffa03174:	07 52       	R0 = R7 - R0;
ffa03176:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa0317a:	08 50       	R0 = R0 + R1;
ffa0317c:	16 30       	R2 = R6;
ffa0317e:	0d 30       	R1 = R5;
ffa03180:	ff e3 ec ef 	CALL 0xffa01158 <_memcpy_>;
ffa03184:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c30 <_txbuf> */
ffa03188:	09 e1 40 0d 	P1.L = 0xd40;		/* (3392)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa0318c:	08 91       	R0 = [P1];
ffa0318e:	f7 51       	R7 = R7 + R6;
ffa03190:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa03194:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa03198:	07 50       	R0 = R7 + R0;
ffa0319a:	10 93       	[P2] = R0;
ffa0319c:	26 50       	R0 = R6 + R4;
ffa0319e:	ff e3 5d ff 	CALL 0xffa03058 <_tcp_checksum_set>;
ffa031a2:	ff e3 3d f4 	CALL 0xffa01a1c <_bfin_EMAC_send_nocopy>;
ffa031a6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa031aa:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_rxIdx> */
ffa031ae:	10 95       	R0 = W[P2] (Z);
ffa031b0:	10 32       	P2 = R0;
ffa031b2:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa031b6:	09 e1 44 0c 	P1.L = 0xc44;		/* (3140)	P1=0xff900c44 <_rxbuf> */
ffa031ba:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa031bc:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa031be:	52 91       	P2 = [P2];
ffa031c0:	90 a2       	R0 = [P2 + 0x28];
ffa031c2:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa031c4:	07 1c       	IF CC JUMP 0xffa031d2 <_tcp_burst+0x96> (BP);
ffa031c6:	90 a2       	R0 = [P2 + 0x28];
ffa031c8:	4d 30       	R1 = P5;
ffa031ca:	7a a2       	R2 = [FP + 0x24];
ffa031cc:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa031ce:	11 50       	R0 = R1 + R2;
ffa031d0:	a8 06       	IF !CC P5 = R0;
ffa031d2:	79 ae       	P1 = [FP + 0x24];
ffa031d4:	69 09       	CC = P1 <= P5;
ffa031d6:	45 18       	IF CC JUMP 0xffa03260 <_tcp_burst+0x124>;
ffa031d8:	44 30       	R0 = P4;
ffa031da:	87 09       	CC = R7 < R0 (IU);
ffa031dc:	42 10       	IF !CC JUMP 0xffa03260 <_tcp_burst+0x124>;
ffa031de:	44 30       	R0 = P4;
ffa031e0:	b8 52       	R2 = R0 - R7;
ffa031e2:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa031e6:	0a 09       	CC = R2 <= R1;
ffa031e8:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa031ea:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa031ec:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c44 <_rxbuf> */
ffa031f0:	08 06       	IF !CC R1 = R0;
ffa031f2:	09 e1 40 0d 	P1.L = 0xd40;		/* (3392)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa031f6:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa031fa:	07 cc 10 4c 	R6 = MIN (R2, R0) || R0 = [P1] || NOP;
ffa031fe:	08 91 00 00 
ffa03202:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_rxIdx> */
ffa03206:	07 50       	R0 = R7 + R0;
ffa03208:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa0320c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa03210:	10 93       	[P2] = R0;
ffa03212:	09 e1 3c 0d 	P1.L = 0xd3c;		/* (3388)	P1=0xff900d3c <_TcpSeqClient> */
ffa03216:	f1 b0       	[SP + 0xc] = R1;
ffa03218:	30 b1       	[SP + 0x10] = R0;
ffa0321a:	08 91       	R0 = [P1];
ffa0321c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa03220:	70 b1       	[SP + 0x14] = R0;
ffa03222:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa03226:	4f 30       	R1 = FP;
ffa03228:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R2 = [P2] || NOP;
ffa0322c:	12 91 00 00 
ffa03230:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03232:	ff e3 59 ff 	CALL 0xffa030e4 <_tcp_packet_setup>;
ffa03236:	28 30       	R5 = R0;
ffa03238:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0323c:	00 0d       	CC = R0 <= 0x0;
ffa0323e:	ca 1b       	IF CC JUMP 0xffa031d2 <_tcp_burst+0x96>;
ffa03240:	18 91       	R0 = [P3];
ffa03242:	38 0a       	CC = R0 <= R7 (IU);
ffa03244:	96 1f       	IF CC JUMP 0xffa03170 <_tcp_burst+0x34> (BP);
ffa03246:	38 53       	R4 = R0 - R7;
ffa03248:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa0324c:	07 50       	R0 = R7 + R0;
ffa0324e:	0d 30       	R1 = R5;
ffa03250:	14 30       	R2 = R4;
ffa03252:	ff e3 83 ef 	CALL 0xffa01158 <_memcpy_>;
ffa03256:	65 51       	R5 = R5 + R4;
ffa03258:	a6 53       	R6 = R6 - R4;
ffa0325a:	e7 51       	R7 = R7 + R4;
ffa0325c:	8b 2f       	JUMP.S 0xffa03172 <_tcp_burst+0x36>;
ffa0325e:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa03260:	01 e8 00 00 	UNLINK;
ffa03264:	45 30       	R0 = P5;
ffa03266:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03268:	10 00       	RTS;
	...

ffa0326c <_tcp_rx>:
ffa0326c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0326e:	20 32       	P4 = R0;
ffa03270:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa03274:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03278:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa0327a:	ff e3 27 f2 	CALL 0xffa016c8 <_htons>;
ffa0327e:	c0 42       	R0 = R0.L (Z);
ffa03280:	07 08       	CC = R7 == R0;
ffa03282:	06 18       	IF CC JUMP 0xffa0328e <_tcp_rx+0x22>;
ffa03284:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03286:	01 e8 00 00 	UNLINK;
ffa0328a:	a3 05       	(R7:4, P5:3) = [SP++];
ffa0328c:	10 00       	RTS;
ffa0328e:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa03292:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa03294:	08 08       	CC = R0 == R1;
ffa03296:	f7 17       	IF !CC JUMP 0xffa03284 <_tcp_rx+0x18> (BP);
ffa03298:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa0329c:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa032a0:	ff e3 14 f2 	CALL 0xffa016c8 <_htons>;
ffa032a4:	c0 42       	R0 = R0.L (Z);
ffa032a6:	07 08       	CC = R7 == R0;
ffa032a8:	ee 17       	IF !CC JUMP 0xffa03284 <_tcp_rx+0x18> (BP);
ffa032aa:	44 30       	R0 = P4;
ffa032ac:	80 64       	R0 += 0x10;		/* ( 16) */
ffa032ae:	ff e3 81 f2 	CALL 0xffa017b0 <_ip_header_checksum>;
ffa032b2:	40 43       	R0 = R0.B (Z);
ffa032b4:	00 0c       	CC = R0 == 0x0;
ffa032b6:	e7 1f       	IF CC JUMP 0xffa03284 <_tcp_rx+0x18> (BP);
ffa032b8:	4c 30       	R1 = P4;
ffa032ba:	41 64       	R1 += 0x8;		/* (  8) */
ffa032bc:	e0 a1       	R0 = [P4 + 0x1c];
ffa032be:	ff e3 13 fc 	CALL 0xffa02ae4 <_ARP_lut_add>;
ffa032c2:	44 30       	R0 = P4;
ffa032c4:	ff e3 6a fe 	CALL 0xffa02f98 <_tcp_length>;
ffa032c8:	30 30       	R6 = R0;
ffa032ca:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa032ce:	0e 30       	R1 = R6;
ffa032d0:	00 e1 0c 05 	R0.L = 0x50c;		/* (1292)	R0=0xff90050c(-7338740) */
ffa032d4:	ff e3 5c ee 	CALL 0xffa00f8c <_printf_int>;
ffa032d8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90050c(-7338740) */
ffa032dc:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa032e0:	ff e3 94 ed 	CALL 0xffa00e08 <_printf_str>;
ffa032e4:	44 30       	R0 = P4;
ffa032e6:	0e 30       	R1 = R6;
ffa032e8:	ff e3 d4 fe 	CALL 0xffa03090 <_tcp_checksum_check>;
ffa032ec:	40 43       	R0 = R0.B (Z);
ffa032ee:	00 0c       	CC = R0 == 0x0;
ffa032f0:	ca 1b       	IF CC JUMP 0xffa03284 <_tcp_rx+0x18>;
ffa032f2:	00 00       	NOP;
ffa032f4:	00 00       	NOP;
ffa032f6:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa032f8:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa032fc:	48 43       	R0 = R1.B (Z);
ffa032fe:	10 08       	CC = R0 == R2;
ffa03300:	f1 18       	IF CC JUMP 0xffa034e2 <_tcp_rx+0x276>;
ffa03302:	10 0c       	CC = R0 == 0x2;
ffa03304:	0a 19       	IF CC JUMP 0xffa03518 <_tcp_rx+0x2ac>;
ffa03306:	48 43       	R0 = R1.B (Z);
ffa03308:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa0330a:	08 08       	CC = R0 == R1;
ffa0330c:	85 18       	IF CC JUMP 0xffa03416 <_tcp_rx+0x1aa>;
ffa0330e:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03310:	ab 10       	IF !CC JUMP 0xffa03466 <_tcp_rx+0x1fa>;
ffa03312:	00 00       	NOP;
ffa03314:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d54 <_g_httpHeaderLen> */
ffa03318:	0b e1 44 0d 	P3.L = 0xd44;		/* (3396)	P3=0xff900d44 <_TcpState> */
ffa0331c:	00 00       	NOP;
ffa0331e:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa03322:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa03324:	38 10       	IF !CC JUMP 0xffa03394 <_tcp_rx+0x128>;
ffa03326:	18 91       	R0 = [P3];
ffa03328:	10 0c       	CC = R0 == 0x2;
ffa0332a:	ad 17       	IF !CC JUMP 0xffa03284 <_tcp_rx+0x18> (BP);
ffa0332c:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900000 <_l1_data_a>(-7340032) */
ffa03330:	a0 a2       	R0 = [P4 + 0x28];
ffa03332:	04 e1 24 0c 	R4.L = 0xc24;		/* (3108)	R4=0xff900c24 <_NetDestIP>(-7336924) */
ffa03336:	a5 e5 30 00 	R5 = B[P4 + 0x30] (X);
ffa0333a:	ff e3 d3 f1 	CALL 0xffa016e0 <_htonl>;
ffa0333e:	14 32       	P2 = R4;
ffa03340:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa03344:	30 50       	R0 = R0 + R6;
ffa03346:	0d e1 3c 0d 	P5.L = 0xd3c;		/* (3388)	P5=0xff900d3c <_TcpSeqClient> */
ffa0334a:	28 93       	[P5] = R0;
ffa0334c:	e0 a1       	R0 = [P4 + 0x1c];
ffa0334e:	10 93       	[P2] = R0;
ffa03350:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d44 <_TcpState> */
ffa03354:	e0 a2       	R0 = [P4 + 0x2c];
ffa03356:	0b e1 40 0d 	P3.L = 0xd40;		/* (3392)	P3=0xff900d40 <_TcpSeqHttpStart> */
ffa0335a:	ff e3 c3 f1 	CALL 0xffa016e0 <_htonl>;
ffa0335e:	19 91       	R1 = [P3];
ffa03360:	c8 53       	R7 = R0 - R1;
ffa03362:	a1 e4 31 00 	R1 = B[P4 + 0x31] (Z);
ffa03366:	21 48       	CC = !BITTST (R1, 0x4);		/* bit  4 */
ffa03368:	1e 1d       	IF CC JUMP 0xffa035a4 <_tcp_rx+0x338> (BP);
ffa0336a:	06 0c       	CC = R6 == 0x0;
ffa0336c:	1c 15       	IF !CC JUMP 0xffa035a4 <_tcp_rx+0x338> (BP);
ffa0336e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa03372:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa03376:	10 91       	R0 = [P2];
ffa03378:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa0337c:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03380:	11 91       	R1 = [P2];
ffa03382:	08 50       	R0 = R0 + R1;
ffa03384:	07 08       	CC = R7 == R0;
ffa03386:	46 18       	IF CC JUMP 0xffa03412 <_tcp_rx+0x1a6>;
ffa03388:	0f 30       	R1 = R7;
ffa0338a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0338c:	ff e3 d8 fe 	CALL 0xffa0313c <_tcp_burst>;
ffa03390:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03392:	7a 2f       	JUMP.S 0xffa03286 <_tcp_rx+0x1a>;
ffa03394:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03396:	1f 91       	R7 = [P3];
ffa03398:	07 08       	CC = R7 == R0;
ffa0339a:	85 19       	IF CC JUMP 0xffa036a4 <_tcp_rx+0x438>;
ffa0339c:	07 0c       	CC = R7 == 0x0;
ffa0339e:	c4 17       	IF !CC JUMP 0xffa03326 <_tcp_rx+0xba> (BP);
ffa033a0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa033a4:	00 e1 88 05 	R0.L = 0x588;		/* (1416)	R0=0xff900588(-7338616) */
ffa033a8:	ff e3 30 ed 	CALL 0xffa00e08 <_printf_str>;
ffa033ac:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa033b0:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa033b4:	17 93       	[P2] = R7;
ffa033b6:	a0 a2       	R0 = [P4 + 0x28];
ffa033b8:	ff e3 94 f1 	CALL 0xffa016e0 <_htonl>;
ffa033bc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa033c0:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa033c4:	10 93       	[P2] = R0;
ffa033c6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa033ca:	e2 a1       	R2 = [P4 + 0x1c];
ffa033cc:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa033d0:	12 93       	[P2] = R2;
ffa033d2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa033d6:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa033da:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa033de:	11 97       	W[P2] = R1;
ffa033e0:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa033e2:	f1 b0       	[SP + 0xc] = R1;
ffa033e4:	4f 30       	R1 = FP;
ffa033e6:	30 b1       	[SP + 0x10] = R0;
ffa033e8:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa033ea:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa033ee:	77 b1 00 00 
ffa033f2:	ff e3 79 fe 	CALL 0xffa030e4 <_tcp_packet_setup>;
ffa033f6:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa033fa:	00 0d       	CC = R0 <= 0x0;
ffa033fc:	95 1b       	IF CC JUMP 0xffa03326 <_tcp_rx+0xba>;
ffa033fe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpClientPort> */
ffa03402:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa03406:	17 93       	[P2] = R7;
ffa03408:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0340a:	ff e3 27 fe 	CALL 0xffa03058 <_tcp_checksum_set>;
ffa0340e:	ff e3 07 f3 	CALL 0xffa01a1c <_bfin_EMAC_send_nocopy>;
ffa03412:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03414:	39 2f       	JUMP.S 0xffa03286 <_tcp_rx+0x1a>;
ffa03416:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d40 <_TcpSeqHttpStart> */
ffa0341a:	0b e1 44 0d 	P3.L = 0xd44;		/* (3396)	P3=0xff900d44 <_TcpState> */
ffa0341e:	18 91       	R0 = [P3];
ffa03420:	08 0c       	CC = R0 == 0x1;
ffa03422:	b9 17       	IF !CC JUMP 0xffa03394 <_tcp_rx+0x128> (BP);
ffa03424:	e0 a2       	R0 = [P4 + 0x2c];
ffa03426:	ff e3 5d f1 	CALL 0xffa016e0 <_htonl>;
ffa0342a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa0342e:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa03432:	11 91       	R1 = [P2];
ffa03434:	08 08       	CC = R0 == R1;
ffa03436:	42 19       	IF CC JUMP 0xffa036ba <_tcp_rx+0x44e>;
ffa03438:	00 00       	NOP;
ffa0343a:	00 00       	NOP;
ffa0343c:	00 00       	NOP;
ffa0343e:	e0 a2       	R0 = [P4 + 0x2c];
ffa03440:	ff e3 50 f1 	CALL 0xffa016e0 <_htonl>;
ffa03444:	08 30       	R1 = R0;
ffa03446:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0344a:	00 e1 38 05 	R0.L = 0x538;		/* (1336)	R0=0xff900538(-7338696) */
ffa0344e:	ff e3 41 ee 	CALL 0xffa010d0 <_printf_ip>;
ffa03452:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03454:	18 93       	[P3] = R0;
ffa03456:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0345a:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa0345e:	ff e3 d5 ec 	CALL 0xffa00e08 <_printf_str>;
ffa03462:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03464:	11 2f       	JUMP.S 0xffa03286 <_tcp_rx+0x1a>;
ffa03466:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0346a:	00 e1 64 05 	R0.L = 0x564;		/* (1380)	R0=0xff900564(-7338652) */
ffa0346e:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900c24 <_NetDestIP>(-7336924) */
ffa03472:	ff e3 cb ec 	CALL 0xffa00e08 <_printf_str>;
ffa03476:	04 e1 24 0c 	R4.L = 0xc24;		/* (3108)	R4=0xff900c24 <_NetDestIP>(-7336924) */
ffa0347a:	a0 a2       	R0 = [P4 + 0x28];
ffa0347c:	ff e3 32 f1 	CALL 0xffa016e0 <_htonl>;
ffa03480:	14 32       	P2 = R4;
ffa03482:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d3c <_TcpSeqClient> */
ffa03486:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d44 <_TcpState> */
ffa0348a:	0d e1 3c 0d 	P5.L = 0xd3c;		/* (3388)	P5=0xff900d3c <_TcpSeqClient> */
ffa0348e:	0b e1 44 0d 	P3.L = 0xd44;		/* (3396)	P3=0xff900d44 <_TcpState> */
ffa03492:	28 93       	[P5] = R0;
ffa03494:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa03498:	18 91 00 00 
ffa0349c:	e2 a1       	R2 = [P4 + 0x1c];
ffa0349e:	09 64       	R1 += 0x1;		/* (  1) */
ffa034a0:	10 0c       	CC = R0 == 0x2;
ffa034a2:	12 93       	[P2] = R2;
ffa034a4:	29 93       	[P5] = R1;
ffa034a6:	03 18       	IF CC JUMP 0xffa034ac <_tcp_rx+0x240>;
ffa034a8:	00 0c       	CC = R0 == 0x0;
ffa034aa:	c0 14       	IF !CC JUMP 0xffa0362a <_tcp_rx+0x3be> (BP);
ffa034ac:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa034ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa034b2:	f0 b0       	[SP + 0xc] = R0;
ffa034b4:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa034b8:	10 91       	R0 = [P2];
ffa034ba:	71 b1       	[SP + 0x14] = R1;
ffa034bc:	4f 30       	R1 = FP;
ffa034be:	30 b1       	[SP + 0x10] = R0;
ffa034c0:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa034c2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa034c4:	ff e3 10 fe 	CALL 0xffa030e4 <_tcp_packet_setup>;
ffa034c8:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa034cc:	00 0d       	CC = R0 <= 0x0;
ffa034ce:	ae 18       	IF CC JUMP 0xffa0362a <_tcp_rx+0x3be>;
ffa034d0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa034d2:	18 93       	[P3] = R0;
ffa034d4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa034d6:	ff e3 c1 fd 	CALL 0xffa03058 <_tcp_checksum_set>;
ffa034da:	ff e3 a1 f2 	CALL 0xffa01a1c <_bfin_EMAC_send_nocopy>;
ffa034de:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034e0:	d3 2e       	JUMP.S 0xffa03286 <_tcp_rx+0x1a>;
ffa034e2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa034e6:	00 e1 20 05 	R0.L = 0x520;		/* (1312)	R0=0xff900520(-7338720) */
ffa034ea:	ff e3 8f ec 	CALL 0xffa00e08 <_printf_str>;
ffa034ee:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa034f2:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa034f6:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa034f8:	17 93       	[P2] = R7;
ffa034fa:	a0 a2       	R0 = [P4 + 0x28];
ffa034fc:	ff e3 f2 f0 	CALL 0xffa016e0 <_htonl>;
ffa03500:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa03504:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa03508:	10 93       	[P2] = R0;
ffa0350a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa0350e:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa03512:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03514:	17 93       	[P2] = R7;
ffa03516:	b8 2e       	JUMP.S 0xffa03286 <_tcp_rx+0x1a>;
ffa03518:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0351c:	00 e1 2c 05 	R0.L = 0x52c;		/* (1324)	R0=0xff90052c(-7338708) */
ffa03520:	ff e3 74 ec 	CALL 0xffa00e08 <_printf_str>;
ffa03524:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d3c <_TcpSeqClient> */
ffa03528:	a0 a2       	R0 = [P4 + 0x28];
ffa0352a:	ff e3 db f0 	CALL 0xffa016e0 <_htonl>;
ffa0352e:	0d e1 3c 0d 	P5.L = 0xd3c;		/* (3388)	P5=0xff900d3c <_TcpSeqClient> */
ffa03532:	28 93       	[P5] = R0;
ffa03534:	44 30       	R0 = P4;
ffa03536:	ff e3 31 fd 	CALL 0xffa02f98 <_tcp_length>;
ffa0353a:	29 91       	R1 = [P5];
ffa0353c:	09 64       	R1 += 0x1;		/* (  1) */
ffa0353e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa03542:	08 50       	R0 = R0 + R1;
ffa03544:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa03548:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa0354c:	11 97       	W[P2] = R1;
ffa0354e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpClientPort> */
ffa03552:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa03556:	28 93 00 00 
ffa0355a:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa0355e:	11 93       	[P2] = R1;
ffa03560:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa03564:	e2 a1       	R2 = [P4 + 0x1c];
ffa03566:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa0356a:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa0356c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d3c <_TcpSeqClient> */
ffa03570:	12 93       	[P2] = R2;
ffa03572:	0d e1 38 0d 	P5.L = 0xd38;		/* (3384)	P5=0xff900d38 <_TcpSeqHost> */
ffa03576:	f1 b0       	[SP + 0xc] = R1;
ffa03578:	29 91       	R1 = [P5];
ffa0357a:	31 b1       	[SP + 0x10] = R1;
ffa0357c:	4f 30       	R1 = FP;
ffa0357e:	70 b1       	[SP + 0x14] = R0;
ffa03580:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03582:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03584:	ff e3 b0 fd 	CALL 0xffa030e4 <_tcp_packet_setup>;
ffa03588:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0358c:	00 0d       	CC = R0 <= 0x0;
ffa0358e:	93 18       	IF CC JUMP 0xffa036b4 <_tcp_rx+0x448>;
ffa03590:	28 91       	R0 = [P5];
ffa03592:	08 64       	R0 += 0x1;		/* (  1) */
ffa03594:	28 93       	[P5] = R0;
ffa03596:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03598:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa0359c:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa035a0:	10 93       	[P2] = R0;
ffa035a2:	33 2f       	JUMP.S 0xffa03408 <_tcp_rx+0x19c>;
ffa035a4:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa035a8:	28 54       	R0 = R0 & R5;
ffa035aa:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa035ac:	10 4d       	R0 >>>= 0x2;
ffa035ae:	54 30       	R2 = P4;
ffa035b0:	19 48       	CC = !BITTST (R1, 0x3);		/* bit  3 */
ffa035b2:	02 50       	R0 = R2 + R0;
ffa035b4:	5d 1c       	IF CC JUMP 0xffa0366e <_tcp_rx+0x402> (BP);
ffa035b6:	0e 30       	R1 = R6;
ffa035b8:	00 e3 16 05 	CALL 0xffa03fe4 <_httpCollate>;
ffa035bc:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d38 <_TcpSeqHost> */
ffa035c0:	18 91       	R0 = [P3];
ffa035c2:	07 50       	R0 = R7 + R0;
ffa035c4:	0d e1 38 0d 	P5.L = 0xd38;		/* (3384)	P5=0xff900d38 <_TcpSeqHost> */
ffa035c8:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c6c <_NetArpLut> */
ffa035cc:	28 93       	[P5] = R0;
ffa035ce:	0c e1 5c 0d 	P4.L = 0xd5c;		/* (3420)	P4=0xff900d5c <_g_httpRxed> */
ffa035d2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa035d4:	80 4f       	R0 <<= 0x10;
ffa035d6:	21 91       	R1 = [P4];
ffa035d8:	00 e3 dc 02 	CALL 0xffa03b90 <_httpResp>;
ffa035dc:	00 0c       	CC = R0 == 0x0;
ffa035de:	22 1c       	IF CC JUMP 0xffa03622 <_tcp_rx+0x3b6> (BP);
ffa035e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa035e4:	28 91       	R0 = [P5];
ffa035e6:	0a e1 40 0d 	P2.L = 0xd40;		/* (3392)	P2=0xff900d40 <_TcpSeqHttpStart> */
ffa035ea:	10 93       	[P2] = R0;
ffa035ec:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d40 <_TcpSeqHttpStart> */
ffa035f0:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa035f4:	11 91       	R1 = [P2];
ffa035f6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa035fa:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa035fe:	10 91       	R0 = [P2];
ffa03600:	41 50       	R1 = R1 + R0;
ffa03602:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03606:	00 e1 a4 05 	R0.L = 0x5a4;		/* (1444)	R0=0xff9005a4(-7338588) */
ffa0360a:	ff e3 c1 ec 	CALL 0xffa00f8c <_printf_int>;
ffa0360e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005a4(-7338588) */
ffa03612:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa03616:	ff e3 f9 eb 	CALL 0xffa00e08 <_printf_str>;
ffa0361a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0361c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0361e:	ff e3 8f fd 	CALL 0xffa0313c <_tcp_burst>;
ffa03622:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03624:	20 93       	[P4] = R0;
ffa03626:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03628:	2f 2e       	JUMP.S 0xffa03286 <_tcp_rx+0x1a>;
ffa0362a:	18 91       	R0 = [P3];
ffa0362c:	18 0c       	CC = R0 == 0x3;
ffa0362e:	77 16       	IF !CC JUMP 0xffa0331c <_tcp_rx+0xb0> (BP);
ffa03630:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa03634:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03636:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa0363a:	10 93       	[P2] = R0;
ffa0363c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0363e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa03642:	f0 b0       	[SP + 0xc] = R0;
ffa03644:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa03648:	10 91       	R0 = [P2];
ffa0364a:	14 32       	P2 = R4;
ffa0364c:	30 b1       	[SP + 0x10] = R0;
ffa0364e:	28 91       	R0 = [P5];
ffa03650:	70 b1       	[SP + 0x14] = R0;
ffa03652:	4f 30       	R1 = FP;
ffa03654:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03658:	12 91 00 00 
ffa0365c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0365e:	ff e3 43 fd 	CALL 0xffa030e4 <_tcp_packet_setup>;
ffa03662:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03666:	00 0d       	CC = R0 <= 0x0;
ffa03668:	5a 1a       	IF CC JUMP 0xffa0331c <_tcp_rx+0xb0>;
ffa0366a:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0366c:	96 2f       	JUMP.S 0xffa03598 <_tcp_rx+0x32c>;
ffa0366e:	0e 30       	R1 = R6;
ffa03670:	00 e3 ba 04 	CALL 0xffa03fe4 <_httpCollate>;
ffa03674:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03676:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa0367a:	f0 b0       	[SP + 0xc] = R0;
ffa0367c:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa03680:	10 91       	R0 = [P2];
ffa03682:	14 32       	P2 = R4;
ffa03684:	30 b1       	[SP + 0x10] = R0;
ffa03686:	28 91       	R0 = [P5];
ffa03688:	70 b1       	[SP + 0x14] = R0;
ffa0368a:	4f 30       	R1 = FP;
ffa0368c:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03690:	12 91 00 00 
ffa03694:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03696:	ff e3 27 fd 	CALL 0xffa030e4 <_tcp_packet_setup>;
ffa0369a:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0369e:	00 0d       	CC = R0 <= 0x0;
ffa036a0:	b4 16       	IF !CC JUMP 0xffa03408 <_tcp_rx+0x19c> (BP);
ffa036a2:	f1 2d       	JUMP.S 0xffa03284 <_tcp_rx+0x18>;
ffa036a4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa036a8:	00 e1 74 05 	R0.L = 0x574;		/* (1396)	R0=0xff900574(-7338636) */
ffa036ac:	ff e3 ae eb 	CALL 0xffa00e08 <_printf_str>;
ffa036b0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa036b2:	ea 2d       	JUMP.S 0xffa03286 <_tcp_rx+0x1a>;
ffa036b4:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa036b8:	27 2e       	JUMP.S 0xffa03306 <_tcp_rx+0x9a>;
ffa036ba:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa036bc:	18 93       	[P3] = R0;
ffa036be:	a0 a2       	R0 = [P4 + 0x28];
ffa036c0:	ff e3 10 f0 	CALL 0xffa016e0 <_htonl>;
ffa036c4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa036c8:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa036cc:	10 93       	[P2] = R0;
ffa036ce:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa036d2:	00 e1 54 05 	R0.L = 0x554;		/* (1364)	R0=0xff900554(-7338668) */
ffa036d6:	ff e3 99 eb 	CALL 0xffa00e08 <_printf_str>;
ffa036da:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa036dc:	d5 2d       	JUMP.S 0xffa03286 <_tcp_rx+0x1a>;
	...

ffa036e0 <_htmlForm>:
ffa036e0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa036e4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa036e8:	02 e1 c0 05 	R2.L = 0x5c0;		/* (1472)	R2=0xff9005c0(-7338560) */
ffa036ec:	01 e8 00 00 	UNLINK;
ffa036f0:	ff e2 64 ed 	JUMP.L 0xffa011b8 <_strcpy_>;

ffa036f4 <_htmlDiv>:
ffa036f4:	12 43       	R2 = R2.B (X);
ffa036f6:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa036fa:	1a 08       	CC = R2 == R3;
ffa036fc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03700:	09 18       	IF CC JUMP 0xffa03712 <_htmlDiv+0x1e>;
ffa03702:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005c0(-7338560) */
ffa03706:	02 e1 14 06 	R2.L = 0x614;		/* (1556)	R2=0xff900614(-7338476) */
ffa0370a:	01 e8 00 00 	UNLINK;
ffa0370e:	ff e2 55 ed 	JUMP.L 0xffa011b8 <_strcpy_>;
ffa03712:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900614(-7338476) */
ffa03716:	02 e1 e0 05 	R2.L = 0x5e0;		/* (1504)	R2=0xff9005e0(-7338528) */
ffa0371a:	01 e8 00 00 	UNLINK;
ffa0371e:	ff e2 4d ed 	JUMP.L 0xffa011b8 <_strcpy_>;
	...

ffa03724 <_html404>:
ffa03724:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03728:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0372a:	4f 30       	R1 = FP;
ffa0372c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005e0(-7338528) */
ffa03730:	f0 bb       	[FP -0x4] = R0;
ffa03732:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03734:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03738:	02 e1 48 06 	R2.L = 0x648;		/* (1608)	R2=0xff900648(-7338424) */
ffa0373c:	ff e3 3e ed 	CALL 0xffa011b8 <_strcpy_>;
ffa03740:	f0 b9       	R0 = [FP -0x4];
ffa03742:	01 e8 00 00 	UNLINK;
ffa03746:	10 00       	RTS;

ffa03748 <_htmlCursorOption>:
ffa03748:	68 05       	[--SP] = (R7:5);
ffa0374a:	2a 30       	R5 = R2;
ffa0374c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900648(-7338424) */
ffa03750:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03754:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa03758:	3f a2 00 00 
ffa0375c:	02 e1 64 06 	R2.L = 0x664;		/* (1636)	R2=0xff900664(-7338396) */
ffa03760:	ff e3 2c ed 	CALL 0xffa011b8 <_strcpy_>;
ffa03764:	0e 30       	R1 = R6;
ffa03766:	15 30       	R2 = R5;
ffa03768:	ff e3 8e ee 	CALL 0xffa01484 <_strprintf_int>;
ffa0376c:	3d 08       	CC = R5 == R7;
ffa0376e:	16 18       	IF CC JUMP 0xffa0379a <_htmlCursorOption+0x52>;
ffa03770:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900664(-7338396) */
ffa03774:	0e 30       	R1 = R6;
ffa03776:	02 e1 8c 06 	R2.L = 0x68c;		/* (1676)	R2=0xff90068c(-7338356) */
ffa0377a:	ff e3 1f ed 	CALL 0xffa011b8 <_strcpy_>;
ffa0377e:	0e 30       	R1 = R6;
ffa03780:	15 30       	R2 = R5;
ffa03782:	ff e3 81 ee 	CALL 0xffa01484 <_strprintf_int>;
ffa03786:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90068c(-7338356) */
ffa0378a:	01 e8 00 00 	UNLINK;
ffa0378e:	0e 30       	R1 = R6;
ffa03790:	02 e1 90 06 	R2.L = 0x690;		/* (1680)	R2=0xff900690(-7338352) */
ffa03794:	28 05       	(R7:5) = [SP++];
ffa03796:	ff e2 11 ed 	JUMP.L 0xffa011b8 <_strcpy_>;
ffa0379a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900690(-7338352) */
ffa0379e:	0e 30       	R1 = R6;
ffa037a0:	02 e1 74 06 	R2.L = 0x674;		/* (1652)	R2=0xff900674(-7338380) */
ffa037a4:	ff e3 0a ed 	CALL 0xffa011b8 <_strcpy_>;
ffa037a8:	e4 2f       	JUMP.S 0xffa03770 <_htmlCursorOption+0x28>;
	...

ffa037ac <_htmlCursorSelect>:
ffa037ac:	60 05       	[--SP] = (R7:4);
ffa037ae:	3a 30       	R7 = R2;
ffa037b0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900674(-7338380) */
ffa037b4:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa037b8:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa037bc:	7e a2 00 00 
ffa037c0:	02 e1 9c 06 	R2.L = 0x69c;		/* (1692)	R2=0xff90069c(-7338340) */
ffa037c4:	bc a2       	R4 = [FP + 0x28];
ffa037c6:	ff e3 f9 ec 	CALL 0xffa011b8 <_strcpy_>;
ffa037ca:	17 30       	R2 = R7;
ffa037cc:	0d 30       	R1 = R5;
ffa037ce:	ff e3 f5 ec 	CALL 0xffa011b8 <_strcpy_>;
ffa037d2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90069c(-7338340) */
ffa037d6:	0d 30       	R1 = R5;
ffa037d8:	02 e1 a8 06 	R2.L = 0x6a8;		/* (1704)	R2=0xff9006a8(-7338328) */
ffa037dc:	ff e3 ee ec 	CALL 0xffa011b8 <_strcpy_>;
ffa037e0:	0d 30       	R1 = R5;
ffa037e2:	16 30       	R2 = R6;
ffa037e4:	ff e3 ea ec 	CALL 0xffa011b8 <_strcpy_>;
ffa037e8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006a8(-7338328) */
ffa037ec:	0d 30       	R1 = R5;
ffa037ee:	02 e1 c4 06 	R2.L = 0x6c4;		/* (1732)	R2=0xff9006c4(-7338300) */
ffa037f2:	ff e3 e3 ec 	CALL 0xffa011b8 <_strcpy_>;
ffa037f6:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa037f8:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa037fc:	f4 b0 00 00 
ffa03800:	17 30       	R2 = R7;
ffa03802:	ff e3 a3 ff 	CALL 0xffa03748 <_htmlCursorOption>;
ffa03806:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03808:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa0380a:	0f 08       	CC = R7 == R1;
ffa0380c:	f6 17       	IF !CC JUMP 0xffa037f8 <_htmlCursorSelect+0x4c> (BP);
ffa0380e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c4(-7338300) */
ffa03812:	01 e8 00 00 	UNLINK;
ffa03816:	0d 30       	R1 = R5;
ffa03818:	02 e1 c8 06 	R2.L = 0x6c8;		/* (1736)	R2=0xff9006c8(-7338296) */
ffa0381c:	20 05       	(R7:4) = [SP++];
ffa0381e:	ff e2 cd ec 	JUMP.L 0xffa011b8 <_strcpy_>;
	...

ffa03824 <_htmlDefault>:
ffa03824:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03826:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0382a:	77 30       	R6 = FP;
ffa0382c:	e6 67       	R6 += -0x4;		/* ( -4) */
ffa0382e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03830:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c8(-7338296) */
ffa03834:	f0 bb       	[FP -0x4] = R0;
ffa03836:	0e 30       	R1 = R6;
ffa03838:	02 e1 e0 06 	R2.L = 0x6e0;		/* (1760)	R2=0xff9006e0(-7338272) */
ffa0383c:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03840:	ff e3 bc ec 	CALL 0xffa011b8 <_strcpy_>;
ffa03844:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03848:	0e 30       	R1 = R6;
ffa0384a:	ff e3 55 ff 	CALL 0xffa036f4 <_htmlDiv>;
ffa0384e:	0e 30       	R1 = R6;
ffa03850:	ff e3 48 ff 	CALL 0xffa036e0 <_htmlForm>;
ffa03854:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03858:	0e 30       	R1 = R6;
ffa0385a:	02 e1 30 07 	R2.L = 0x730;		/* (1840)	R2=0xff900730(-7338192) */
ffa0385e:	ff e3 ad ec 	CALL 0xffa011b8 <_strcpy_>;
ffa03862:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa03866:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa0386a:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa0386e:	10 99 00 00 
ffa03872:	00 0c       	CC = R0 == 0x0;
ffa03874:	2c 1d       	IF CC JUMP 0xffa03acc <_htmlDefault+0x2a8> (BP);
ffa03876:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900730(-7338192) */
ffa0387a:	01 30       	R0 = R1;
ffa0387c:	02 e1 80 07 	R2.L = 0x780;		/* (1920)	R2=0xff900780(-7338112) */
ffa03880:	0e 30       	R1 = R6;
ffa03882:	ff e3 9b ec 	CALL 0xffa011b8 <_strcpy_>;
ffa03886:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900780(-7338112) */
ffa0388a:	0e 30       	R1 = R6;
ffa0388c:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03890:	ff e3 94 ec 	CALL 0xffa011b8 <_strcpy_>;
ffa03894:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03898:	0e 30       	R1 = R6;
ffa0389a:	ff e3 2d ff 	CALL 0xffa036f4 <_htmlDiv>;
ffa0389e:	0e 30       	R1 = R6;
ffa038a0:	ff e3 20 ff 	CALL 0xffa036e0 <_htmlForm>;
ffa038a4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa038a8:	0e 30       	R1 = R6;
ffa038aa:	02 e1 ac 07 	R2.L = 0x7ac;		/* (1964)	R2=0xff9007ac(-7338068) */
ffa038ae:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d38 <_TcpSeqHost> */
ffa038b2:	ff e3 83 ec 	CALL 0xffa011b8 <_strcpy_>;
ffa038b6:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa038b8:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa038ba:	0d e1 64 0c 	P5.L = 0xc64;		/* (3172)	P5=0xff900c64 <_NetDataDestIP> */
ffa038be:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007ac(-7338068) */
ffa038c2:	0e 30       	R1 = R6;
ffa038c4:	02 e1 c8 07 	R2.L = 0x7c8;		/* (1992)	R2=0xff9007c8(-7338040) */
ffa038c8:	ff e3 78 ec 	CALL 0xffa011b8 <_strcpy_>;
ffa038cc:	17 30       	R2 = R7;
ffa038ce:	0e 30       	R1 = R6;
ffa038d0:	ff e3 da ed 	CALL 0xffa01484 <_strprintf_int>;
ffa038d4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007c8(-7338040) */
ffa038d8:	0e 30       	R1 = R6;
ffa038da:	02 e1 e4 07 	R2.L = 0x7e4;		/* (2020)	R2=0xff9007e4(-7338012) */
ffa038de:	ff e3 6d ec 	CALL 0xffa011b8 <_strcpy_>;
ffa038e2:	2a 91       	R2 = [P5];
ffa038e4:	6a 40       	R2 >>= R5;
ffa038e6:	52 43       	R2 = R2.B (Z);
ffa038e8:	0e 30       	R1 = R6;
ffa038ea:	ff e3 cd ed 	CALL 0xffa01484 <_strprintf_int>;
ffa038ee:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007e4(-7338012) */
ffa038f2:	0e 30       	R1 = R6;
ffa038f4:	02 e1 f8 07 	R2.L = 0x7f8;		/* (2040)	R2=0xff9007f8(-7337992) */
ffa038f8:	ff e3 60 ec 	CALL 0xffa011b8 <_strcpy_>;
ffa038fc:	0f 64       	R7 += 0x1;		/* (  1) */
ffa038fe:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03900:	0f 08       	CC = R7 == R1;
ffa03902:	45 64       	R5 += 0x8;		/* (  8) */
ffa03904:	dd 17       	IF !CC JUMP 0xffa038be <_htmlDefault+0x9a> (BP);
ffa03906:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007f8(-7337992) */
ffa0390a:	0e 30       	R1 = R6;
ffa0390c:	02 e1 00 08 	R2.L = 0x800;		/* (2048)	R2=0xff900800(-7337984) */
ffa03910:	ff e3 54 ec 	CALL 0xffa011b8 <_strcpy_>;
ffa03914:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900800(-7337984) */
ffa03918:	0e 30       	R1 = R6;
ffa0391a:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa0391e:	ff e3 4d ec 	CALL 0xffa011b8 <_strcpy_>;
ffa03922:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03926:	0e 30       	R1 = R6;
ffa03928:	ff e3 e6 fe 	CALL 0xffa036f4 <_htmlDiv>;
ffa0392c:	0e 30       	R1 = R6;
ffa0392e:	ff e3 d9 fe 	CALL 0xffa036e0 <_htmlForm>;
ffa03932:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03936:	0e 30       	R1 = R6;
ffa03938:	02 e1 24 08 	R2.L = 0x824;		/* (2084)	R2=0xff900824(-7337948) */
ffa0393c:	ff e3 3e ec 	CALL 0xffa011b8 <_strcpy_>;
ffa03940:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bb8 */
ffa03944:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03948:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa0394c:	10 99 00 00 
ffa03950:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03952:	c6 1c       	IF CC JUMP 0xffa03ade <_htmlDefault+0x2ba> (BP);
ffa03954:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900824(-7337948) */
ffa03958:	01 30       	R0 = R1;
ffa0395a:	02 e1 8c 07 	R2.L = 0x78c;		/* (1932)	R2=0xff90078c(-7338100) */
ffa0395e:	0e 30       	R1 = R6;
ffa03960:	ff e3 2c ec 	CALL 0xffa011b8 <_strcpy_>;
ffa03964:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90078c(-7338100) */
ffa03968:	0e 30       	R1 = R6;
ffa0396a:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa0396e:	ff e3 25 ec 	CALL 0xffa011b8 <_strcpy_>;
ffa03972:	0e 30       	R1 = R6;
ffa03974:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03978:	ff e3 be fe 	CALL 0xffa036f4 <_htmlDiv>;
ffa0397c:	0e 30       	R1 = R6;
ffa0397e:	ff e3 b1 fe 	CALL 0xffa036e0 <_htmlForm>;
ffa03982:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03986:	0e 30       	R1 = R6;
ffa03988:	02 e1 64 08 	R2.L = 0x864;		/* (2148)	R2=0xff900864(-7337884) */
ffa0398c:	ff e3 16 ec 	CALL 0xffa011b8 <_strcpy_>;
ffa03990:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa03994:	01 e1 94 08 	R1.L = 0x894;		/* (2196)	R1=0xff900894(-7337836) */
ffa03998:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900864(-7337884) */
ffa0399c:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa039a0:	f1 b0 00 00 
ffa039a4:	02 e1 88 08 	R2.L = 0x888;		/* (2184)	R2=0xff900888(-7337848) */
ffa039a8:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa039ac:	37 b1 00 00 
ffa039b0:	ff e3 fe fe 	CALL 0xffa037ac <_htmlCursorSelect>;
ffa039b4:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900894(-7337836) */
ffa039b8:	01 e1 ac 08 	R1.L = 0x8ac;		/* (2220)	R1=0xff9008ac(-7337812) */
ffa039bc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900888(-7337848) */
ffa039c0:	f1 b0       	[SP + 0xc] = R1;
ffa039c2:	02 e1 a0 08 	R2.L = 0x8a0;		/* (2208)	R2=0xff9008a0(-7337824) */
ffa039c6:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa039ca:	37 b1 00 00 
ffa039ce:	ff e3 ef fe 	CALL 0xffa037ac <_htmlCursorSelect>;
ffa039d2:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008ac(-7337812) */
ffa039d6:	01 e1 c4 08 	R1.L = 0x8c4;		/* (2244)	R1=0xff9008c4(-7337788) */
ffa039da:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a0(-7337824) */
ffa039de:	f1 b0       	[SP + 0xc] = R1;
ffa039e0:	02 e1 b8 08 	R2.L = 0x8b8;		/* (2232)	R2=0xff9008b8(-7337800) */
ffa039e4:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa039e8:	37 b1 00 00 
ffa039ec:	ff e3 e0 fe 	CALL 0xffa037ac <_htmlCursorSelect>;
ffa039f0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008c4(-7337788) */
ffa039f4:	01 e1 d8 08 	R1.L = 0x8d8;		/* (2264)	R1=0xff9008d8(-7337768) */
ffa039f8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008b8(-7337800) */
ffa039fc:	f1 b0       	[SP + 0xc] = R1;
ffa039fe:	02 e1 d0 08 	R2.L = 0x8d0;		/* (2256)	R2=0xff9008d0(-7337776) */
ffa03a02:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03a06:	37 b1 00 00 
ffa03a0a:	ff e3 d1 fe 	CALL 0xffa037ac <_htmlCursorSelect>;
ffa03a0e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008d0(-7337776) */
ffa03a12:	0e 30       	R1 = R6;
ffa03a14:	02 e1 e4 08 	R2.L = 0x8e4;		/* (2276)	R2=0xff9008e4(-7337756) */
ffa03a18:	ff e3 d0 eb 	CALL 0xffa011b8 <_strcpy_>;
ffa03a1c:	0e 30       	R1 = R6;
ffa03a1e:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03a22:	ff e3 69 fe 	CALL 0xffa036f4 <_htmlDiv>;
ffa03a26:	0e 30       	R1 = R6;
ffa03a28:	ff e3 5c fe 	CALL 0xffa036e0 <_htmlForm>;
ffa03a2c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03a30:	0e 30       	R1 = R6;
ffa03a32:	02 e1 20 09 	R2.L = 0x920;		/* (2336)	R2=0xff900920(-7337696) */
ffa03a36:	ff e3 c1 eb 	CALL 0xffa011b8 <_strcpy_>;
ffa03a3a:	0e 30       	R1 = R6;
ffa03a3c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03a40:	ff e3 5a fe 	CALL 0xffa036f4 <_htmlDiv>;
ffa03a44:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03a48:	0e 30       	R1 = R6;
ffa03a4a:	02 e1 78 09 	R2.L = 0x978;		/* (2424)	R2=0xff900978(-7337608) */
ffa03a4e:	ff e3 b5 eb 	CALL 0xffa011b8 <_strcpy_>;
ffa03a52:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900978(-7337608) */
ffa03a56:	0e 30       	R1 = R6;
ffa03a58:	02 e1 a0 09 	R2.L = 0x9a0;		/* (2464)	R2=0xff9009a0(-7337568) */
ffa03a5c:	ff e3 ae eb 	CALL 0xffa011b8 <_strcpy_>;
ffa03a60:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009a0(-7337568) */
ffa03a64:	0e 30       	R1 = R6;
ffa03a66:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03a6a:	ff e3 a7 eb 	CALL 0xffa011b8 <_strcpy_>;
ffa03a6e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900798(-7338088) */
ffa03a72:	0e 30       	R1 = R6;
ffa03a74:	02 e1 e8 09 	R2.L = 0x9e8;		/* (2536)	R2=0xff9009e8(-7337496) */
ffa03a78:	ff e3 a0 eb 	CALL 0xffa011b8 <_strcpy_>;
ffa03a7c:	0e 30       	R1 = R6;
ffa03a7e:	22 e1 75 ff 	R2 = -0x8b (X);		/*		R2=0xffffff75(-139) */
ffa03a82:	ff e3 01 ed 	CALL 0xffa01484 <_strprintf_int>;
ffa03a86:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ff75(-7274635) */
ffa03a8a:	0e 30       	R1 = R6;
ffa03a8c:	02 e1 b0 00 	R2.L = 0xb0;		/* (176)	R2=0xff9000b0(-7339856) */
ffa03a90:	ff e3 94 eb 	CALL 0xffa011b8 <_strcpy_>;
ffa03a94:	0e 30       	R1 = R6;
ffa03a96:	92 62       	R2 = -0x2e (X);		/*		R2=0xffffffd2(-46) */
ffa03a98:	ff e3 f6 ec 	CALL 0xffa01484 <_strprintf_int>;
ffa03a9c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ffd2(-7274542) */
ffa03aa0:	0e 30       	R1 = R6;
ffa03aa2:	02 e1 88 00 	R2.L = 0x88;		/* (136)	R2=0xff900088(-7339896) */
ffa03aa6:	ff e3 89 eb 	CALL 0xffa011b8 <_strcpy_>;
ffa03aaa:	0e 30       	R1 = R6;
ffa03aac:	22 e1 d0 fd 	R2 = -0x230 (X);		/*		R2=0xfffffdd0(-560) */
ffa03ab0:	ff e3 ea ec 	CALL 0xffa01484 <_strprintf_int>;
ffa03ab4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90fdd0(-7275056) */
ffa03ab8:	0e 30       	R1 = R6;
ffa03aba:	02 e1 f4 09 	R2.L = 0x9f4;		/* (2548)	R2=0xff9009f4(-7337484) */
ffa03abe:	ff e3 7d eb 	CALL 0xffa011b8 <_strcpy_>;
ffa03ac2:	f0 b9       	R0 = [FP -0x4];
ffa03ac4:	01 e8 00 00 	UNLINK;
ffa03ac8:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03aca:	10 00       	RTS;
ffa03acc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009f4(-7337484) */
ffa03ad0:	01 30       	R0 = R1;
ffa03ad2:	02 e1 8c 07 	R2.L = 0x78c;		/* (1932)	R2=0xff90078c(-7338100) */
ffa03ad6:	0e 30       	R1 = R6;
ffa03ad8:	ff e3 70 eb 	CALL 0xffa011b8 <_strcpy_>;
ffa03adc:	d5 2e       	JUMP.S 0xffa03886 <_htmlDefault+0x62>;
ffa03ade:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90078c(-7338100) */
ffa03ae2:	01 30       	R0 = R1;
ffa03ae4:	02 e1 80 07 	R2.L = 0x780;		/* (1920)	R2=0xff900780(-7338112) */
ffa03ae8:	0e 30       	R1 = R6;
ffa03aea:	ff e3 67 eb 	CALL 0xffa011b8 <_strcpy_>;
ffa03aee:	3b 2f       	JUMP.S 0xffa03964 <_htmlDefault+0x140>;

ffa03af0 <_httpHeader>:
ffa03af0:	78 05       	[--SP] = (R7:7);
ffa03af2:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03af6:	7f 30       	R7 = FP;
ffa03af8:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03afa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03afc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900780(-7338112) */
ffa03b00:	f0 bb       	[FP -0x4] = R0;
ffa03b02:	0f 30       	R1 = R7;
ffa03b04:	02 e1 0c 0a 	R2.L = 0xa0c;		/* (2572)	R2=0xff900a0c(-7337460) */
ffa03b08:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03b0c:	ff e3 56 eb 	CALL 0xffa011b8 <_strcpy_>;
ffa03b10:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a0c(-7337460) */
ffa03b14:	0f 30       	R1 = R7;
ffa03b16:	02 e1 20 0a 	R2.L = 0xa20;		/* (2592)	R2=0xff900a20(-7337440) */
ffa03b1a:	ff e3 4f eb 	CALL 0xffa011b8 <_strcpy_>;
ffa03b1e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a20(-7337440) */
ffa03b22:	0f 30       	R1 = R7;
ffa03b24:	02 e1 34 0a 	R2.L = 0xa34;		/* (2612)	R2=0xff900a34(-7337420) */
ffa03b28:	ff e3 48 eb 	CALL 0xffa011b8 <_strcpy_>;
ffa03b2c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa03b30:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03b34:	12 91       	R2 = [P2];
ffa03b36:	0f 30       	R1 = R7;
ffa03b38:	ff e3 a6 ec 	CALL 0xffa01484 <_strprintf_int>;
ffa03b3c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a34(-7337420) */
ffa03b40:	0f 30       	R1 = R7;
ffa03b42:	02 e1 48 0a 	R2.L = 0xa48;		/* (2632)	R2=0xff900a48(-7337400) */
ffa03b46:	ff e3 39 eb 	CALL 0xffa011b8 <_strcpy_>;
ffa03b4a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa03b4e:	f0 b9       	R0 = [FP -0x4];
ffa03b50:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa03b54:	10 93       	[P2] = R0;
ffa03b56:	01 e8 00 00 	UNLINK;
ffa03b5a:	38 05       	(R7:7) = [SP++];
ffa03b5c:	10 00       	RTS;
	...

ffa03b60 <_htmlGeneric>:
ffa03b60:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03b64:	10 30       	R2 = R0;
ffa03b66:	4f 30       	R1 = FP;
ffa03b68:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03b6a:	f0 bb       	[FP -0x4] = R0;
ffa03b6c:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03b6e:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03b72:	ff e3 23 eb 	CALL 0xffa011b8 <_strcpy_>;
ffa03b76:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa03b7a:	f0 b9       	R0 = [FP -0x4];
ffa03b7c:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03b80:	10 93       	[P2] = R0;
ffa03b82:	ff e3 b7 ff 	CALL 0xffa03af0 <_httpHeader>;
ffa03b86:	f0 b9       	R0 = [FP -0x4];
ffa03b88:	01 e8 00 00 	UNLINK;
ffa03b8c:	10 00       	RTS;
	...

ffa03b90 <_httpResp>:
ffa03b90:	60 05       	[--SP] = (R7:4);
ffa03b92:	30 30       	R6 = R0;
ffa03b94:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa03b96:	01 09       	CC = R1 <= R0;
ffa03b98:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa03b9c:	39 30       	R7 = R1;
ffa03b9e:	21 10       	IF !CC JUMP 0xffa03be0 <_httpResp+0x50>;
ffa03ba0:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa03ba2:	0f 09       	CC = R7 <= R1;
ffa03ba4:	34 10       	IF !CC JUMP 0xffa03c0c <_httpResp+0x7c>;
ffa03ba6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa03baa:	00 e1 04 0a 	R0.L = 0xa04;		/* (2564)	R0=0xff900a04(-7337468) */
ffa03bae:	0e 30       	R1 = R6;
ffa03bb0:	17 30       	R2 = R7;
ffa03bb2:	ff e3 71 eb 	CALL 0xffa01294 <_substr>;
ffa03bb6:	00 0c       	CC = R0 == 0x0;
ffa03bb8:	06 10       	IF !CC JUMP 0xffa03bc4 <_httpResp+0x34>;
ffa03bba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03bbc:	01 e8 00 00 	UNLINK;
ffa03bc0:	20 05       	(R7:4) = [SP++];
ffa03bc2:	10 00       	RTS;
ffa03bc4:	ff e3 b0 fd 	CALL 0xffa03724 <_html404>;
ffa03bc8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa03bcc:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03bd0:	10 93       	[P2] = R0;
ffa03bd2:	ff e3 8f ff 	CALL 0xffa03af0 <_httpHeader>;
ffa03bd6:	01 e8 00 00 	UNLINK;
ffa03bda:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03bdc:	20 05       	(R7:4) = [SP++];
ffa03bde:	10 00       	RTS;
ffa03be0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa03be4:	06 30       	R0 = R6;
ffa03be6:	01 e1 68 0a 	R1.L = 0xa68;		/* (2664)	R1=0xff900a68(-7337368) */
ffa03bea:	ff e3 27 eb 	CALL 0xffa01238 <_strcmp>;
ffa03bee:	00 0c       	CC = R0 == 0x0;
ffa03bf0:	d8 1f       	IF CC JUMP 0xffa03ba0 <_httpResp+0x10> (BP);
ffa03bf2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03bf6:	00 e1 04 0a 	R0.L = 0xa04;		/* (2564)	R0=0xff900a04(-7337468) */
ffa03bfa:	0e 30       	R1 = R6;
ffa03bfc:	17 30       	R2 = R7;
ffa03bfe:	ff e3 4b eb 	CALL 0xffa01294 <_substr>;
ffa03c02:	00 0c       	CC = R0 == 0x0;
ffa03c04:	db 1f       	IF CC JUMP 0xffa03bba <_httpResp+0x2a> (BP);
ffa03c06:	ff e3 0f fe 	CALL 0xffa03824 <_htmlDefault>;
ffa03c0a:	df 2f       	JUMP.S 0xffa03bc8 <_httpResp+0x38>;
ffa03c0c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a04(-7337468) */
ffa03c10:	00 e1 74 0a 	R0.L = 0xa74;		/* (2676)	R0=0xff900a74(-7337356) */
ffa03c14:	0e 30       	R1 = R6;
ffa03c16:	17 30       	R2 = R7;
ffa03c18:	ff e3 3e eb 	CALL 0xffa01294 <_substr>;
ffa03c1c:	00 0c       	CC = R0 == 0x0;
ffa03c1e:	3c 1c       	IF CC JUMP 0xffa03c96 <_httpResp+0x106> (BP);
ffa03c20:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a74(-7337356) */
ffa03c24:	00 e1 80 0a 	R0.L = 0xa80;		/* (2688)	R0=0xff900a80(-7337344) */
ffa03c28:	0e 30       	R1 = R6;
ffa03c2a:	17 30       	R2 = R7;
ffa03c2c:	ff e3 34 eb 	CALL 0xffa01294 <_substr>;
ffa03c30:	00 0c       	CC = R0 == 0x0;
ffa03c32:	c4 1f       	IF CC JUMP 0xffa03bba <_httpResp+0x2a> (BP);
ffa03c34:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa03c36:	06 50       	R0 = R6 + R0;
ffa03c38:	ff e3 4e ec 	CALL 0xffa014d4 <_atoi>;
ffa03c3c:	08 30       	R1 = R0;
ffa03c3e:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa03c42:	00 67       	R0 += -0x20;		/* (-32) */
ffa03c44:	10 0a       	CC = R0 <= R2 (IU);
ffa03c46:	24 11       	IF !CC JUMP 0xffa03e8e <_httpResp+0x2fe>;
ffa03c48:	82 c6 19 84 	R2 = R1 << 0x3;
ffa03c4c:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800d58 */
ffa03c50:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03c54:	02 0d       	CC = R2 <= 0x0;
ffa03c56:	13 91       	R3 = [P2];
ffa03c58:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa03c5c:	14 18       	IF CC JUMP 0xffa03c84 <_httpResp+0xf4>;
ffa03c5e:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa03c62:	28 4f       	R0 <<= 0x5;
ffa03c64:	03 54       	R0 = R3 & R0;
ffa03c66:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa03c68:	38 52       	R0 = R0 - R7;
ffa03c6a:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa03c6e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03c70:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa03c74:	18 54       	R0 = R0 & R3;
ffa03c76:	10 32       	P2 = R0;
ffa03c78:	09 64       	R1 += 0x1;		/* (  1) */
ffa03c7a:	0a 08       	CC = R2 == R1;
ffa03c7c:	10 90       	R0 = [P2++];
ffa03c7e:	08 92       	[P1++] = R0;
ffa03c80:	42 30       	R0 = P2;
ffa03c82:	f9 17       	IF !CC JUMP 0xffa03c74 <_httpResp+0xe4> (BP);
ffa03c84:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900804 */
ffa03c88:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03c8c:	17 93       	[P2] = R7;
ffa03c8e:	ff e3 31 ff 	CALL 0xffa03af0 <_httpHeader>;
ffa03c92:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03c94:	94 2f       	JUMP.S 0xffa03bbc <_httpResp+0x2c>;
ffa03c96:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03c9a:	00 e1 b4 0a 	R0.L = 0xab4;		/* (2740)	R0=0xff900ab4(-7337292) */
ffa03c9e:	0e 30       	R1 = R6;
ffa03ca0:	17 30       	R2 = R7;
ffa03ca2:	ff e3 f9 ea 	CALL 0xffa01294 <_substr>;
ffa03ca6:	00 0c       	CC = R0 == 0x0;
ffa03ca8:	7f 1f       	IF CC JUMP 0xffa03ba6 <_httpResp+0x16> (BP);
ffa03caa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ab4(-7337292) */
ffa03cae:	0e 30       	R1 = R6;
ffa03cb0:	17 30       	R2 = R7;
ffa03cb2:	00 e1 b4 0a 	R0.L = 0xab4;		/* (2740)	R0=0xff900ab4(-7337292) */
ffa03cb6:	ff e3 ef ea 	CALL 0xffa01294 <_substr>;
ffa03cba:	86 51       	R6 = R6 + R0;
ffa03cbc:	47 53       	R5 = R7 - R0;
ffa03cbe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ab4(-7337292) */
ffa03cc2:	00 e1 bc 0a 	R0.L = 0xabc;		/* (2748)	R0=0xff900abc(-7337284) */
ffa03cc6:	0e 30       	R1 = R6;
ffa03cc8:	15 30       	R2 = R5;
ffa03cca:	ff e3 e5 ea 	CALL 0xffa01294 <_substr>;
ffa03cce:	00 0c       	CC = R0 == 0x0;
ffa03cd0:	10 11       	IF !CC JUMP 0xffa03ef0 <_httpResp+0x360>;
ffa03cd2:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03cd4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900abc(-7337284) */
ffa03cd8:	00 e1 e0 0a 	R0.L = 0xae0;		/* (2784)	R0=0xff900ae0(-7337248) */
ffa03cdc:	0e 30       	R1 = R6;
ffa03cde:	15 30       	R2 = R5;
ffa03ce0:	ff e3 da ea 	CALL 0xffa01294 <_substr>;
ffa03ce4:	00 0c       	CC = R0 == 0x0;
ffa03ce6:	e2 10       	IF !CC JUMP 0xffa03eaa <_httpResp+0x31a>;
ffa03ce8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ae0(-7337248) */
ffa03cec:	0e 30       	R1 = R6;
ffa03cee:	00 e1 ec 0a 	R0.L = 0xaec;		/* (2796)	R0=0xff900aec(-7337236) */
ffa03cf2:	15 30       	R2 = R5;
ffa03cf4:	ff e3 d0 ea 	CALL 0xffa01294 <_substr>;
ffa03cf8:	00 0c       	CC = R0 == 0x0;
ffa03cfa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900aec(-7337236) */
ffa03cfe:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03d00:	0e 30       	R1 = R6;
ffa03d02:	15 30       	R2 = R5;
ffa03d04:	00 e1 f8 0a 	R0.L = 0xaf8;		/* (2808)	R0=0xff900af8(-7337224) */
ffa03d08:	27 06       	IF !CC R4 = R7;
ffa03d0a:	ff e3 c5 ea 	CALL 0xffa01294 <_substr>;
ffa03d0e:	00 0c       	CC = R0 == 0x0;
ffa03d10:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900af8(-7337224) */
ffa03d14:	0e 30       	R1 = R6;
ffa03d16:	15 30       	R2 = R5;
ffa03d18:	00 e1 04 0b 	R0.L = 0xb04;		/* (2820)	R0=0xff900b04(-7337212) */
ffa03d1c:	27 06       	IF !CC R4 = R7;
ffa03d1e:	ff e3 bb ea 	CALL 0xffa01294 <_substr>;
ffa03d22:	00 0c       	CC = R0 == 0x0;
ffa03d24:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b04(-7337212) */
ffa03d28:	0e 30       	R1 = R6;
ffa03d2a:	15 30       	R2 = R5;
ffa03d2c:	00 e1 10 0b 	R0.L = 0xb10;		/* (2832)	R0=0xff900b10(-7337200) */
ffa03d30:	27 06       	IF !CC R4 = R7;
ffa03d32:	ff e3 b1 ea 	CALL 0xffa01294 <_substr>;
ffa03d36:	00 0c       	CC = R0 == 0x0;
ffa03d38:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b10(-7337200) */
ffa03d3c:	00 e1 1c 0b 	R0.L = 0xb1c;		/* (2844)	R0=0xff900b1c(-7337188) */
ffa03d40:	0e 30       	R1 = R6;
ffa03d42:	15 30       	R2 = R5;
ffa03d44:	27 06       	IF !CC R4 = R7;
ffa03d46:	ff e3 a7 ea 	CALL 0xffa01294 <_substr>;
ffa03d4a:	00 0c       	CC = R0 == 0x0;
ffa03d4c:	15 11       	IF !CC JUMP 0xffa03f76 <_httpResp+0x3e6>;
ffa03d4e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b1c(-7337188) */
ffa03d52:	00 e1 24 0b 	R0.L = 0xb24;		/* (2852)	R0=0xff900b24(-7337180) */
ffa03d56:	0e 30       	R1 = R6;
ffa03d58:	15 30       	R2 = R5;
ffa03d5a:	ff e3 9d ea 	CALL 0xffa01294 <_substr>;
ffa03d5e:	00 0c       	CC = R0 == 0x0;
ffa03d60:	f6 10       	IF !CC JUMP 0xffa03f4c <_httpResp+0x3bc>;
ffa03d62:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b24(-7337180) */
ffa03d66:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa03d6a:	0e 30       	R1 = R6;
ffa03d6c:	15 30       	R2 = R5;
ffa03d6e:	ff e3 93 ea 	CALL 0xffa01294 <_substr>;
ffa03d72:	00 0c       	CC = R0 == 0x0;
ffa03d74:	13 11       	IF !CC JUMP 0xffa03f9a <_httpResp+0x40a>;
ffa03d76:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b2c(-7337172) */
ffa03d7a:	00 e1 34 0b 	R0.L = 0xb34;		/* (2868)	R0=0xff900b34(-7337164) */
ffa03d7e:	0e 30       	R1 = R6;
ffa03d80:	15 30       	R2 = R5;
ffa03d82:	ff e3 89 ea 	CALL 0xffa01294 <_substr>;
ffa03d86:	00 0c       	CC = R0 == 0x0;
ffa03d88:	d1 10       	IF !CC JUMP 0xffa03f2a <_httpResp+0x39a>;
ffa03d8a:	20 43       	R0 = R4.B (X);
ffa03d8c:	00 0c       	CC = R0 == 0x0;
ffa03d8e:	3c 17       	IF !CC JUMP 0xffa03c06 <_httpResp+0x76> (BP);
ffa03d90:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b34(-7337164) */
ffa03d94:	00 e1 3c 0b 	R0.L = 0xb3c;		/* (2876)	R0=0xff900b3c(-7337156) */
ffa03d98:	0e 30       	R1 = R6;
ffa03d9a:	15 30       	R2 = R5;
ffa03d9c:	ff e3 7c ea 	CALL 0xffa01294 <_substr>;
ffa03da0:	00 0c       	CC = R0 == 0x0;
ffa03da2:	0c 1b       	IF CC JUMP 0xffa03bba <_httpResp+0x2a>;
ffa03da4:	7f 30       	R7 = FP;
ffa03da6:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03daa:	57 5a       	P1 = FP + P2;
ffa03dac:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03dae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03db0:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa03db2:	b2 e0 02 20 	LSETUP(0xffa03db6 <_httpResp+0x226>, 0xffa03db6 <_httpResp+0x226>) LC1 = P2;
ffa03db6:	08 92       	[P1++] = R0;
ffa03db8:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa03dbc:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03dc0:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa03dc4:	29 4f       	R1 <<= 0x5;
ffa03dc6:	10 91       	R0 = [P2];
ffa03dc8:	08 54       	R0 = R0 & R1;
ffa03dca:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03dcc:	81 4f       	R1 <<= 0x10;
ffa03dce:	08 50       	R0 = R0 + R1;
ffa03dd0:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03dd2:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa03dd6:	88 54       	R2 = R0 & R1;
ffa03dd8:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa03ddc:	b2 e0 12 10 	LSETUP(0xffa03de0 <_httpResp+0x250>, 0xffa03e00 <_httpResp+0x270>) LC1 = P1;
ffa03de0:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03de4:	97 5a       	P2 = FP + P2;
ffa03de6:	02 32       	P0 = R2;
ffa03de8:	11 91       	R1 = [P2];
ffa03dea:	12 64       	R2 += 0x2;		/* (  2) */
ffa03dec:	00 94       	R0 = W[P0++] (Z);
ffa03dee:	41 50       	R1 = R1 + R0;
ffa03df0:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03df2:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa03df6:	11 92       	[P2++] = R1;
ffa03df8:	82 54       	R2 = R2 & R0;
ffa03dfa:	42 30       	R0 = P2;
ffa03dfc:	38 08       	CC = R0 == R7;
ffa03dfe:	f4 17       	IF !CC JUMP 0xffa03de6 <_httpResp+0x256> (BP);
ffa03e00:	00 00       	NOP;
ffa03e02:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03e06:	97 5a       	P2 = FP + P2;
ffa03e08:	00 00       	NOP;
ffa03e0a:	10 91       	R0 = [P2];
ffa03e0c:	58 4d       	R0 >>>= 0xb;
ffa03e0e:	10 92       	[P2++] = R0;
ffa03e10:	4a 30       	R1 = P2;
ffa03e12:	39 08       	CC = R1 == R7;
ffa03e14:	fa 17       	IF !CC JUMP 0xffa03e08 <_httpResp+0x278> (BP);
ffa03e16:	ff e3 07 fd 	CALL 0xffa03824 <_htmlDefault>;
ffa03e1a:	68 67       	R0 += -0x13;		/* (-19) */
ffa03e1c:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa03e20:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80(-7336064) */
ffa03e24:	f0 bb       	[FP -0x4] = R0;
ffa03e26:	02 e1 4c 0b 	R2.L = 0xb4c;		/* (2892)	R2=0xff900b4c(-7337140) */
ffa03e2a:	08 50       	R0 = R0 + R1;
ffa03e2c:	0f 30       	R1 = R7;
ffa03e2e:	ff e3 c5 e9 	CALL 0xffa011b8 <_strcpy_>;
ffa03e32:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa03e36:	f5 b8 00 00 
ffa03e3a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b4c(-7337140) */
ffa03e3e:	0f 30       	R1 = R7;
ffa03e40:	02 e1 58 0b 	R2.L = 0xb58;		/* (2904)	R2=0xff900b58(-7337128) */
ffa03e44:	ff e3 ba e9 	CALL 0xffa011b8 <_strcpy_>;
ffa03e48:	16 30       	R2 = R6;
ffa03e4a:	0f 30       	R1 = R7;
ffa03e4c:	ff e3 1c eb 	CALL 0xffa01484 <_strprintf_int>;
ffa03e50:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b58(-7337128) */
ffa03e54:	0f 30       	R1 = R7;
ffa03e56:	02 e1 6c 0b 	R2.L = 0xb6c;		/* (2924)	R2=0xff900b6c(-7337108) */
ffa03e5a:	ff e3 af e9 	CALL 0xffa011b8 <_strcpy_>;
ffa03e5e:	0f 30       	R1 = R7;
ffa03e60:	15 30       	R2 = R5;
ffa03e62:	ff e3 11 eb 	CALL 0xffa01484 <_strprintf_int>;
ffa03e66:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b6c(-7337108) */
ffa03e6a:	02 e1 7c 0b 	R2.L = 0xb7c;		/* (2940)	R2=0xff900b7c(-7337092) */
ffa03e6e:	0f 30       	R1 = R7;
ffa03e70:	ff e3 a4 e9 	CALL 0xffa011b8 <_strcpy_>;
ffa03e74:	0e 64       	R6 += 0x1;		/* (  1) */
ffa03e76:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa03e78:	16 08       	CC = R6 == R2;
ffa03e7a:	e0 17       	IF !CC JUMP 0xffa03e3a <_httpResp+0x2aa> (BP);
ffa03e7c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa03e80:	0f 30       	R1 = R7;
ffa03e82:	02 e1 88 0b 	R2.L = 0xb88;		/* (2952)	R2=0xff900b88(-7337080) */
ffa03e86:	ff e3 99 e9 	CALL 0xffa011b8 <_strcpy_>;
ffa03e8a:	f0 b9       	R0 = [FP -0x4];
ffa03e8c:	9e 2e       	JUMP.S 0xffa03bc8 <_httpResp+0x38>;
ffa03e8e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03e90:	4f 30       	R1 = FP;
ffa03e92:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b88(-7337080) */
ffa03e96:	f0 bb       	[FP -0x4] = R0;
ffa03e98:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03e9a:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03e9e:	02 e1 88 0a 	R2.L = 0xa88;		/* (2696)	R2=0xff900a88(-7337336) */
ffa03ea2:	ff e3 8b e9 	CALL 0xffa011b8 <_strcpy_>;
ffa03ea6:	f0 b9       	R0 = [FP -0x4];
ffa03ea8:	90 2e       	JUMP.S 0xffa03bc8 <_httpResp+0x38>;
ffa03eaa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa03eae:	00 e1 cc 0a 	R0.L = 0xacc;		/* (2764)	R0=0xff900acc(-7337268) */
ffa03eb2:	0e 30       	R1 = R6;
ffa03eb4:	15 30       	R2 = R5;
ffa03eb6:	ff e3 ef e9 	CALL 0xffa01294 <_substr>;
ffa03eba:	00 0c       	CC = R0 == 0x0;
ffa03ebc:	08 1c       	IF CC JUMP 0xffa03ecc <_httpResp+0x33c> (BP);
ffa03ebe:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa03ec2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ec4:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03ec8:	10 9b       	B[P2] = R0;
ffa03eca:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03ecc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03ed0:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa03ed4:	0e 30       	R1 = R6;
ffa03ed6:	15 30       	R2 = R5;
ffa03ed8:	ff e3 de e9 	CALL 0xffa01294 <_substr>;
ffa03edc:	00 0c       	CC = R0 == 0x0;
ffa03ede:	05 1f       	IF CC JUMP 0xffa03ce8 <_httpResp+0x158> (BP);
ffa03ee0:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa03ee4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03ee6:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03eea:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03eec:	10 9b       	B[P2] = R0;
ffa03eee:	fd 2e       	JUMP.S 0xffa03ce8 <_httpResp+0x158>;
ffa03ef0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03ef4:	00 e1 cc 0a 	R0.L = 0xacc;		/* (2764)	R0=0xff900acc(-7337268) */
ffa03ef8:	0e 30       	R1 = R6;
ffa03efa:	15 30       	R2 = R5;
ffa03efc:	ff e3 cc e9 	CALL 0xffa01294 <_substr>;
ffa03f00:	00 0c       	CC = R0 == 0x0;
ffa03f02:	61 14       	IF !CC JUMP 0xffa03fc4 <_httpResp+0x434> (BP);
ffa03f04:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03f06:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900acc(-7337268) */
ffa03f0a:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa03f0e:	0e 30       	R1 = R6;
ffa03f10:	15 30       	R2 = R5;
ffa03f12:	ff e3 c1 e9 	CALL 0xffa01294 <_substr>;
ffa03f16:	00 0c       	CC = R0 == 0x0;
ffa03f18:	de 1e       	IF CC JUMP 0xffa03cd4 <_httpResp+0x144> (BP);
ffa03f1a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa03f1e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03f20:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa03f24:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03f26:	10 9b       	B[P2] = R0;
ffa03f28:	d6 2e       	JUMP.S 0xffa03cd4 <_httpResp+0x144>;
ffa03f2a:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa03f2c:	06 50       	R0 = R6 + R0;
ffa03f2e:	ff e3 d3 ea 	CALL 0xffa014d4 <_atoi>;
ffa03f32:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb8 <_g_streamEnabled> */
ffa03f36:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa03f3a:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa03f3c:	11 91       	R1 = [P2];
ffa03f3e:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa03f42:	51 54       	R1 = R1 & R2;
ffa03f44:	c0 4f       	R0 <<= 0x18;
ffa03f46:	41 50       	R1 = R1 + R0;
ffa03f48:	11 93       	[P2] = R1;
ffa03f4a:	5e 2e       	JUMP.S 0xffa03c06 <_httpResp+0x76>;
ffa03f4c:	86 51       	R6 = R6 + R0;
ffa03f4e:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa03f50:	45 53       	R5 = R5 - R0;
ffa03f52:	06 30       	R0 = R6;
ffa03f54:	ff e3 c0 ea 	CALL 0xffa014d4 <_atoi>;
ffa03f58:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa03f5c:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa03f60:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa03f62:	11 91       	R1 = [P2];
ffa03f64:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa03f68:	40 43       	R0 = R0.B (Z);
ffa03f6a:	51 54       	R1 = R1 & R2;
ffa03f6c:	40 4f       	R0 <<= 0x8;
ffa03f6e:	41 50       	R1 = R1 + R0;
ffa03f70:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03f72:	11 93       	[P2] = R1;
ffa03f74:	f7 2e       	JUMP.S 0xffa03d62 <_httpResp+0x1d2>;
ffa03f76:	86 51       	R6 = R6 + R0;
ffa03f78:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa03f7a:	45 53       	R5 = R5 - R0;
ffa03f7c:	06 30       	R0 = R6;
ffa03f7e:	ff e3 ab ea 	CALL 0xffa014d4 <_atoi>;
ffa03f82:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa03f86:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa03f8a:	11 91       	R1 = [P2];
ffa03f8c:	41 4d       	R1 >>>= 0x8;
ffa03f8e:	41 4f       	R1 <<= 0x8;
ffa03f90:	40 43       	R0 = R0.B (Z);
ffa03f92:	08 50       	R0 = R0 + R1;
ffa03f94:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03f96:	10 93       	[P2] = R0;
ffa03f98:	db 2e       	JUMP.S 0xffa03d4e <_httpResp+0x1be>;
ffa03f9a:	86 51       	R6 = R6 + R0;
ffa03f9c:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa03f9e:	45 53       	R5 = R5 - R0;
ffa03fa0:	06 30       	R0 = R6;
ffa03fa2:	ff e3 99 ea 	CALL 0xffa014d4 <_atoi>;
ffa03fa6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa03faa:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa03fae:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa03fb0:	11 91       	R1 = [P2];
ffa03fb2:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa03fb6:	40 43       	R0 = R0.B (Z);
ffa03fb8:	51 54       	R1 = R1 & R2;
ffa03fba:	80 4f       	R0 <<= 0x10;
ffa03fbc:	41 50       	R1 = R1 + R0;
ffa03fbe:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03fc0:	11 93       	[P2] = R1;
ffa03fc2:	da 2e       	JUMP.S 0xffa03d76 <_httpResp+0x1e6>;
ffa03fc4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa03fc8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03fca:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa03fce:	10 9b       	B[P2] = R0;
ffa03fd0:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bb8 */
ffa03fd4:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03fd8:	10 91       	R0 = [P2];
ffa03fda:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03fdc:	22 6c       	P2 += 0x4;		/* (  4) */
ffa03fde:	10 93       	[P2] = R0;
ffa03fe0:	93 2f       	JUMP.S 0xffa03f06 <_httpResp+0x376>;
	...

ffa03fe4 <_httpCollate>:
ffa03fe4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa03fe6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c64 <_NetDataDestIP> */
ffa03fea:	0d e1 5c 0d 	P5.L = 0xd5c;		/* (3420)	P5=0xff900d5c <_g_httpRxed> */
ffa03fee:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa03ff0:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R1 = [P5] || NOP;
ffa03ff4:	29 91 00 00 
ffa03ff8:	82 4f       	R2 <<= 0x10;
ffa03ffa:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03ffe:	51 50       	R1 = R1 + R2;
ffa04000:	17 30       	R2 = R7;
ffa04002:	ff e3 ab e8 	CALL 0xffa01158 <_memcpy_>;
ffa04006:	28 91       	R0 = [P5];
ffa04008:	38 50       	R0 = R0 + R7;
ffa0400a:	01 e8 00 00 	UNLINK;
ffa0400e:	28 93       	[P5] = R0;
ffa04010:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04012:	bd 05       	(R7:7, P5:5) = [SP++];
ffa04014:	10 00       	RTS;
	...

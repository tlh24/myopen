
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
ffa00178:	ae 25       	JUMP.S 0xffa00cd4 <_main>;
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
ffa003f6:	00 e3 a9 07 	CALL 0xffa01348 <_printf_int>;
ffa003fa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa003fe:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa00402:	00 e3 87 06 	CALL 0xffa01110 <_uart_str>;
ffa00406:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900508(-7338744) */
ffa0040a:	0d 30       	R1 = R5;
ffa0040c:	00 e1 14 00 	R0.L = 0x14;		/* ( 20)	R0=0xff900014(-7340012) */
ffa00410:	00 e3 ea 06 	CALL 0xffa011e4 <_printf_hex_byte>;
ffa00414:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900014(-7340012) */
ffa00418:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa0041c:	00 e3 7a 06 	CALL 0xffa01110 <_uart_str>;
ffa00420:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900508(-7338744) */
ffa00424:	00 e1 20 00 	R0.L = 0x20;		/* ( 32)	R0=0xff900020(-7340000) */
ffa00428:	0f 30       	R1 = R7;
ffa0042a:	00 e3 dd 06 	CALL 0xffa011e4 <_printf_hex_byte>;
ffa0042e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa00432:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00436:	2f 30       	R5 = R7;
ffa00438:	00 e3 6c 06 	CALL 0xffa01110 <_uart_str>;
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
ffa004b8:	00 e3 48 07 	CALL 0xffa01348 <_printf_int>;
ffa004bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002c(-7339988) */
ffa004c0:	ff 42       	R7 = R7.L (Z);
ffa004c2:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa004c6:	00 e3 25 06 	CALL 0xffa01110 <_uart_str>;
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
ffa00976:	00 e3 37 04 	CALL 0xffa011e4 <_printf_hex_byte>;
ffa0097a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900044(-7339964) */
ffa0097e:	21 99       	R1 = B[P4] (Z);
ffa00980:	00 e1 54 00 	R0.L = 0x54;		/* ( 84)	R0=0xff900054(-7339948) */
ffa00984:	00 e3 30 04 	CALL 0xffa011e4 <_printf_hex_byte>;
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
ffa009a4:	00 e2 10 04 	JUMP.L 0xffa011c4 <_printf_str>;
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
ffa009c2:	00 e3 97 11 	CALL 0xffa02cf0 <_bfin_EMAC_recv>;
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
ffa009e0:	00 e3 52 08 	CALL 0xffa01a84 <_htons>;
ffa009e4:	c0 42       	R0 = R0.L (Z);
ffa009e6:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa009ea:	08 08       	CC = R0 == R1;
ffa009ec:	e6 17       	IF !CC JUMP 0xffa009b8 <_eth_listen+0x8> (BP);
ffa009ee:	f0 b9       	R0 = [FP -0x4];
ffa009f0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa009f4:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa009f6:	01 e1 dc 0b 	R1.L = 0xbdc;		/* (3036)	R1=0xff900bdc <_g_outpkt>(-7336996) */
ffa009fa:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa009fc:	00 e3 8c 05 	CALL 0xffa01514 <_memcpy_>;
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
ffa00a34:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01508(-4188920) */
ffa00a38:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa00a3c:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa00a40:	28 97       	W[P5] = R0;
ffa00a42:	ff e3 b3 fb 	CALL 0xffa001a8 <_spi_delay>;
ffa00a46:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bd8 <_g_sampOff> */
ffa00a4a:	09 e1 b0 0b 	P1.L = 0xbb0;		/* (2992)	P1=0xff900bb0 <_wrptr> */
ffa00a4e:	4c 91       	P4 = [P1];
ffa00a50:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90f000 */
ffa00a54:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000 <_l1_data_a>(-7340032) */
ffa00a58:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00a5a:	7f 43       	R7 = R7.B (Z);
ffa00a5c:	0b e1 b4 0b 	P3.L = 0xbb4;		/* (2996)	P3=0xff900bb4 <_g_sampW> */
ffa00a60:	05 e1 fc 0b 	R5.L = 0xbfc;		/* (3068)	R5=0xff900bfc <_g_samples>(-7336964) */
ffa00a64:	24 e1 ff 01 	R4 = 0x1ff (X);		/*		R4=0x1ff(511) */
ffa00a68:	07 20       	JUMP.S 0xffa00a76 <_getRadioPacket+0x72>;
ffa00a6a:	08 0c       	CC = R0 == 0x1;
ffa00a6c:	1a 18       	IF CC JUMP 0xffa00aa0 <_getRadioPacket+0x9c>;
ffa00a6e:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00a70:	03 61       	R3 = 0x20 (X);		/*		R3=0x20( 32) */
ffa00a72:	1e 08       	CC = R6 == R3;
ffa00a74:	21 18       	IF CC JUMP 0xffa00ab6 <_getRadioPacket+0xb2>;
ffa00a76:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a78:	28 97       	W[P5] = R0;
ffa00a7a:	ff e3 97 fb 	CALL 0xffa001a8 <_spi_delay>;
ffa00a7e:	07 0c       	CC = R7 == 0x0;
ffa00a80:	f7 1f       	IF CC JUMP 0xffa00a6e <_getRadioPacket+0x6a> (BP);
ffa00a82:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00a86:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa00a8a:	50 95       	R0 = W[P2] (X);
ffa00a8c:	10 30       	R2 = R0;
ffa00a8e:	20 9a       	B[P4++] = R0;
ffa00a90:	b9 60       	R1 = 0x17 (X);		/*		R1=0x17( 23) */
ffa00a92:	f0 42       	R0 = R6.L (Z);
ffa00a94:	08 0a       	CC = R0 <= R1 (IU);
ffa00a96:	ec 17       	IF !CC JUMP 0xffa00a6e <_getRadioPacket+0x6a> (BP);
ffa00a98:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa00a9a:	06 54       	R0 = R6 & R0;
ffa00a9c:	00 0c       	CC = R0 == 0x0;
ffa00a9e:	e6 17       	IF !CC JUMP 0xffa00a6a <_getRadioPacket+0x66> (BP);
ffa00aa0:	18 91       	R0 = [P3];
ffa00aa2:	60 54       	R1 = R0 & R4;
ffa00aa4:	69 50       	R1 = R1 + R5;
ffa00aa6:	11 32       	P2 = R1;
ffa00aa8:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00aaa:	03 61       	R3 = 0x20 (X);		/*		R3=0x20( 32) */
ffa00aac:	08 64       	R0 += 0x1;		/* (  1) */
ffa00aae:	1e 08       	CC = R6 == R3;
ffa00ab0:	12 9b       	B[P2] = R2;
ffa00ab2:	18 93       	[P3] = R0;
ffa00ab4:	e1 17       	IF !CC JUMP 0xffa00a76 <_getRadioPacket+0x72> (BP);
ffa00ab6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa00aba:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00abe:	78 e5 fa ff 	R0 = W[FP + -0xc] (X);
ffa00ac2:	10 97       	W[P2] = R0;
ffa00ac4:	24 00       	SSYNC;
ffa00ac6:	07 0c       	CC = R7 == 0x0;
ffa00ac8:	40 1c       	IF CC JUMP 0xffa00b48 <_getRadioPacket+0x144> (BP);
ffa00aca:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bb0 <_wrptr> */
ffa00ace:	09 e1 b0 0b 	P1.L = 0xbb0;		/* (2992)	P1=0xff900bb0 <_wrptr> */
ffa00ad2:	09 91       	R1 = [P1];
ffa00ad4:	01 65       	R1 += 0x20;		/* ( 32) */
ffa00ad6:	20 e1 ff 0f 	R0 = 0xfff (X);		/*		R0=0xfff(4095) */
ffa00ada:	01 54       	R0 = R1 & R0;
ffa00adc:	01 67       	R1 += -0x20;		/* (-32) */
ffa00ade:	11 32       	P2 = R1;
ffa00ae0:	08 93       	[P1] = R0;
ffa00ae2:	12 60       	R2 = 0x2 (X);		/*		R2=0x2(  2) */
ffa00ae4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bb0 <_wrptr> */
ffa00ae8:	09 e1 a4 0b 	P1.L = 0xba4;		/* (2980)	P1=0xff900ba4 <_g_nextFlag> */
ffa00aec:	91 a1       	R1 = [P2 + 0x18];
ffa00aee:	39 49       	CC = BITTST (R1, 0x7);		/* bit  7 */
ffa00af0:	82 c6 91 81 	R0 = R1 >> 0xe;
ffa00af4:	03 02       	R3 = CC;
ffa00af6:	10 54       	R0 = R0 & R2;
ffa00af8:	c3 56       	R3 = R3 | R0;
ffa00afa:	82 c6 59 85 	R2 = R1 >> 0x15;
ffa00afe:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa00b00:	82 54       	R2 = R2 & R0;
ffa00b02:	e1 4e       	R1 >>= 0x1c;
ffa00b04:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa00b06:	41 54       	R1 = R1 & R0;
ffa00b08:	8a 56       	R2 = R2 | R1;
ffa00b0a:	93 56       	R2 = R3 | R2;
ffa00b0c:	08 91       	R0 = [P1];
ffa00b0e:	02 08       	CC = R2 == R0;
ffa00b10:	14 18       	IF CC JUMP 0xffa00b38 <_getRadioPacket+0x134>;
ffa00b12:	82 09       	CC = R2 < R0 (IU);
ffa00b14:	81 14       	IF !CC JUMP 0xffa00c16 <_getRadioPacket+0x212> (BP);
ffa00b16:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00b1a:	0a e1 cc 0b 	P2.L = 0xbcc;		/* (3020)	P2=0xff900bcc <_g_dropped> */
ffa00b1e:	04 cc 10 42 	R1 = R2 - R0 (NS) || R0 = [P2] || NOP;
ffa00b22:	10 91 00 00 
ffa00b26:	80 64       	R0 += 0x10;		/* ( 16) */
ffa00b28:	41 50       	R1 = R1 + R0;
ffa00b2a:	11 93       	[P2] = R1;
ffa00b2c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bcc(-4191284) */
ffa00b30:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa00b32:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00b36:	10 97       	W[P2] = R0;
ffa00b38:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00b3a:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00b3c:	02 54       	R0 = R2 & R0;
ffa00b3e:	08 93       	[P1] = R0;
ffa00b40:	fa 67       	R2 += -0x1;		/* ( -1) */
ffa00b42:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
ffa00b44:	02 08       	CC = R2 == R0;
ffa00b46:	71 18       	IF CC JUMP 0xffa00c28 <_getRadioPacket+0x224>;
ffa00b48:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900ba4 <_g_nextFlag> */
ffa00b4c:	09 e1 b0 0b 	P1.L = 0xbb0;		/* (2992)	P1=0xff900bb0 <_wrptr> */
ffa00b50:	21 e1 ff 01 	R1 = 0x1ff (X);		/*		R1=0x1ff(511) */
ffa00b54:	08 91       	R0 = [P1];
ffa00b56:	08 0a       	CC = R0 <= R1 (IU);
ffa00b58:	5b 18       	IF CC JUMP 0xffa00c0e <_getRadioPacket+0x20a>;
ffa00b5a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa00b5e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00b62:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa00b66:	10 97       	W[P2] = R0;
ffa00b68:	21 e1 e2 00 	R1 = 0xe2 (X);		/*		R1=0xe2(226) */
ffa00b6c:	e0 b9       	R0 = [FP -0x8];
ffa00b6e:	ff e3 b9 fb 	CALL 0xffa002e0 <_spi_write_byte>;
ffa00b72:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bb0 <_wrptr> */
ffa00b76:	09 e1 b0 0b 	P1.L = 0xbb0;		/* (2992)	P1=0xff900bb0 <_wrptr> */
ffa00b7a:	08 91       	R0 = [P1];
ffa00b7c:	4f 30       	R1 = FP;
ffa00b7e:	20 64       	R0 += 0x4;		/* (  4) */
ffa00b80:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa00b82:	00 e3 dd 0c 	CALL 0xffa0253c <_udp_packet_setup>;
ffa00b86:	08 32       	P1 = R0;
ffa00b88:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa00b8c:	00 0d       	CC = R0 <= 0x0;
ffa00b8e:	9a 18       	IF CC JUMP 0xffa00cc2 <_getRadioPacket+0x2be>;
ffa00b90:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00b94:	0a e1 cc 0b 	P2.L = 0xbcc;		/* (3020)	P2=0xff900bcc <_g_dropped> */
ffa00b98:	10 91       	R0 = [P2];
ffa00b9a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bcc <_g_dropped> */
ffa00b9e:	08 93       	[P1] = R0;
ffa00ba0:	0a e1 b0 0b 	P2.L = 0xbb0;		/* (2992)	P2=0xff900bb0 <_wrptr> */
ffa00ba4:	10 91       	R0 = [P2];
ffa00ba6:	10 4e       	R0 >>= 0x2;
ffa00ba8:	00 0c       	CC = R0 == 0x0;
ffa00baa:	8a 18       	IF CC JUMP 0xffa00cbe <_getRadioPacket+0x2ba>;
ffa00bac:	51 32       	P2 = P1;
ffa00bae:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00bb0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00bb2:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00bb4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bb0 <_wrptr> */
ffa00bb8:	28 90       	R0 = [P5++];
ffa00bba:	10 92       	[P2++] = R0;
ffa00bbc:	09 e1 b0 0b 	P1.L = 0xbb0;		/* (2992)	P1=0xff900bb0 <_wrptr> */
ffa00bc0:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00bc2:	08 91       	R0 = [P1];
ffa00bc4:	d1 42       	R1 = R2.L (Z);
ffa00bc6:	10 4e       	R0 >>= 0x2;
ffa00bc8:	81 09       	CC = R1 < R0 (IU);
ffa00bca:	f5 1f       	IF CC JUMP 0xffa00bb4 <_getRadioPacket+0x1b0> (BP);
ffa00bcc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb0 <_wrptr> */
ffa00bd0:	0a e1 ac 0b 	P2.L = 0xbac;		/* (2988)	P2=0xff900bac <_trptr> */
ffa00bd4:	10 91       	R0 = [P2];
ffa00bd6:	08 64       	R0 += 0x1;		/* (  1) */
ffa00bd8:	10 93       	[P2] = R0;
ffa00bda:	00 e3 ff 08 	CALL 0xffa01dd8 <_bfin_EMAC_send_nocopy>;
ffa00bde:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00be0:	28 93       	[P5] = R0;
ffa00be2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00be4:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00be6:	23 e1 80 00 	R3 = 0x80 (X);		/*		R3=0x80(128) */
ffa00bea:	09 64       	R1 += 0x1;		/* (  1) */
ffa00bec:	c8 42       	R0 = R1.L (Z);
ffa00bee:	18 08       	CC = R0 == R3;
ffa00bf0:	2a 92       	[P5++] = R2;
ffa00bf2:	fc 17       	IF !CC JUMP 0xffa00bea <_getRadioPacket+0x1e6> (BP);
ffa00bf4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bac(-4191316) */
ffa00bf8:	20 e1 04 40 	R0 = 0x4004 (X);		/*		R0=0x4004(16388) */
ffa00bfc:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00c00:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900bb0 <_wrptr> */
ffa00c04:	10 97       	W[P2] = R0;
ffa00c06:	09 e1 b0 0b 	P1.L = 0xbb0;		/* (2992)	P1=0xff900bb0 <_wrptr> */
ffa00c0a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00c0c:	08 93       	[P1] = R0;
ffa00c0e:	01 e8 00 00 	UNLINK;
ffa00c12:	a3 05       	(R7:4, P5:3) = [SP++];
ffa00c14:	10 00       	RTS;
ffa00c16:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa00c1a:	0a e1 cc 0b 	P2.L = 0xbcc;		/* (3020)	P2=0xff900bcc <_g_dropped> */
ffa00c1e:	11 91       	R1 = [P2];
ffa00c20:	02 52       	R0 = R2 - R0;
ffa00c22:	08 50       	R0 = R0 + R1;
ffa00c24:	10 93       	[P2] = R0;
ffa00c26:	83 2f       	JUMP.S 0xffa00b2c <_getRadioPacket+0x128>;
ffa00c28:	e0 b9       	R0 = [FP -0x8];
ffa00c2a:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00c2e:	ff e3 ab fb 	CALL 0xffa00384 <_radio_set_tx>;
ffa00c32:	24 00       	SSYNC;
ffa00c34:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bcc(-4191284) */
ffa00c38:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa00c3c:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff901504 */
ffa00c40:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00c44:	79 e5 fa ff 	R1 = W[FP + -0xc] (X);
ffa00c48:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa00c4c:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa00c50:	0c e1 dc 0b 	P4.L = 0xbdc;		/* (3036)	P4=0xff900bdc <_g_outpkt> */
ffa00c54:	11 97       	W[P2] = R1;
ffa00c56:	5c 32       	P3 = P4;
ffa00c58:	28 97       	W[P5] = R0;
ffa00c5a:	ff e3 a7 fa 	CALL 0xffa001a8 <_spi_delay>;
ffa00c5e:	03 6d       	P3 += 0x20;		/* ( 32) */
ffa00c60:	00 00       	NOP;
ffa00c62:	20 98       	R0 = B[P4++] (Z);
ffa00c64:	28 97       	W[P5] = R0;
ffa00c66:	ff e3 a1 fa 	CALL 0xffa001a8 <_spi_delay>;
ffa00c6a:	5c 08       	CC = P4 == P3;
ffa00c6c:	fa 17       	IF !CC JUMP 0xffa00c60 <_getRadioPacket+0x25c> (BP);
ffa00c6e:	78 e5 fa ff 	R0 = W[FP + -0xc] (X);
ffa00c72:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00c76:	50 4a       	BITSET (R0, 0xa);		/* bit 10 */
ffa00c78:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa00c7c:	10 97       	W[P2] = R0;
ffa00c7e:	24 00       	SSYNC;
ffa00c80:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00c82:	50 95       	R0 = W[P2] (X);
ffa00c84:	7b e5 f8 ff 	R3 = W[FP + -0x10] (X);
ffa00c88:	03 54       	R0 = R3 & R0;
ffa00c8a:	c0 42       	R0 = R0.L (Z);
ffa00c8c:	00 0c       	CC = R0 == 0x0;
ffa00c8e:	0c 18       	IF CC JUMP 0xffa00ca6 <_getRadioPacket+0x2a2>;
ffa00c90:	6a 32       	P5 = P2;
ffa00c92:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00c94:	ff e3 8e fe 	CALL 0xffa009b0 <_eth_listen>;
ffa00c98:	68 95       	R0 = W[P5] (X);
ffa00c9a:	79 e5 f8 ff 	R1 = W[FP + -0x10] (X);
ffa00c9e:	08 54       	R0 = R0 & R1;
ffa00ca0:	c0 42       	R0 = R0.L (Z);
ffa00ca2:	00 0c       	CC = R0 == 0x0;
ffa00ca4:	f7 17       	IF !CC JUMP 0xffa00c92 <_getRadioPacket+0x28e> (BP);
ffa00ca6:	e0 b9       	R0 = [FP -0x8];
ffa00ca8:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa00caa:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa00cae:	ff e3 97 fa 	CALL 0xffa001dc <_spi_write_register>;
ffa00cb2:	e0 b9       	R0 = [FP -0x8];
ffa00cb4:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa00cb8:	ff e3 38 fb 	CALL 0xffa00328 <_radio_set_rx>;
ffa00cbc:	4f 2f       	JUMP.S 0xffa00b5a <_getRadioPacket+0x156>;
ffa00cbe:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00cc0:	86 2f       	JUMP.S 0xffa00bcc <_getRadioPacket+0x1c8>;
ffa00cc2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa00cc6:	0a e1 ac 0b 	P2.L = 0xbac;		/* (2988)	P2=0xff900bac <_trptr> */
ffa00cca:	10 91       	R0 = [P2];
ffa00ccc:	08 64       	R0 += 0x1;		/* (  1) */
ffa00cce:	10 93       	[P2] = R0;
ffa00cd0:	92 2f       	JUMP.S 0xffa00bf4 <_getRadioPacket+0x1f0>;
	...

ffa00cd4 <_main>:
ffa00cd4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bac(-4191316) */
ffa00cd8:	e5 05       	[--SP] = (R7:4, P5:5);
ffa00cda:	20 e1 9c c1 	R0 = -0x3e64 (X);		/*		R0=0xffffc19c(-15972) */
ffa00cde:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00ce2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00ce6:	10 97       	W[P2] = R0;
ffa00ce8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa00cec:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa00cee:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa00cf2:	12 97       	W[P2] = R2;
ffa00cf4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa00cf8:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa00cfa:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa00cfe:	10 97       	W[P2] = R0;
ffa00d00:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa00d04:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa00d06:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa00d0a:	10 97       	W[P2] = R0;
ffa00d0c:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa00d10:	a2 6f       	P2 += -0xc;		/* (-12) */
ffa00d12:	10 97       	W[P2] = R0;
ffa00d14:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa00d18:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00d1a:	10 97       	W[P2] = R0;
ffa00d1c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00d1e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00d20:	11 97       	W[P2] = R1;
ffa00d22:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc00bd0(-4191280) */
ffa00d26:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa00d2a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00bb0(-4191312) */
ffa00d2e:	09 e1 0c 04 	P1.L = 0x40c;		/* (1036)	P1=0xffc0040c(-4193268) */
ffa00d32:	08 e1 04 04 	P0.L = 0x404;		/* (1028)	P0=0xffc00404(-4193276) */
ffa00d36:	0a e1 10 04 	P2.L = 0x410;		/* (1040)	P2=0xffc00410(-4193264) */
ffa00d3a:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa00d3e:	01 97       	W[P0] = R1;
ffa00d40:	11 97       	W[P2] = R1;
ffa00d42:	08 97       	W[P1] = R0;
ffa00d44:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00d46:	20 e1 88 00 	R0 = 0x88 (X);		/*		R0=0x88(136) */
ffa00d4a:	10 97       	W[P2] = R0;
ffa00d4c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00d4e:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00d50:	01 97       	W[P0] = R1;
ffa00d52:	0a 97       	W[P1] = R2;
ffa00d54:	10 97       	W[P2] = R0;
ffa00d56:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00d58:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900410 */
ffa00d5c:	b8 4f       	R0 <<= 0x17;
ffa00d5e:	0a e1 fc 0d 	P2.L = 0xdfc;		/* (3580)	P2=0xff900dfc <_printf_temp> */
ffa00d62:	10 93       	[P2] = R0;
ffa00d64:	20 e1 01 e0 	R0 = -0x1fff (X);		/*		R0=0xffffe001(-8191) */
ffa00d68:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900dfc <_printf_temp> */
ffa00d6c:	0a e1 00 0e 	P2.L = 0xe00;		/* (3584)	P2=0xff900e00 <_printf_out> */
ffa00d70:	50 4f       	R0 <<= 0xa;
ffa00d72:	10 93       	[P2] = R0;
ffa00d74:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90e001(-7282687) */
ffa00d78:	21 e1 80 01 	R1 = 0x180 (X);		/*		R1=0x180(384) */
ffa00d7c:	00 e1 7c 00 	R0.L = 0x7c;		/* (124)	R0=0xff90007c(-7339908) */
ffa00d80:	00 e3 e4 02 	CALL 0xffa01348 <_printf_int>;
ffa00d84:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa00d88:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00d8c:	00 e3 1c 02 	CALL 0xffa011c4 <_printf_str>;
ffa00d90:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa00d94:	00 e1 8c 00 	R0.L = 0x8c;		/* (140)	R0=0xff90008c(-7339892) */
ffa00d98:	00 e3 16 02 	CALL 0xffa011c4 <_printf_str>;
ffa00d9c:	49 e1 40 00 	P1.H = 0x40;		/* ( 64)	P1=0x40040c */
ffa00da0:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa00da2:	22 e1 ca de 	R2 = -0x2136 (X);		/*		R2=0xffffdeca(-8502) */
ffa00da6:	23 e1 ad fb 	R3 = -0x453 (X);		/*		R3=0xfffffbad(-1107) */
ffa00daa:	20 e1 ed c0 	R0 = -0x3f13 (X);		/*		R0=0xffffc0ed(-16147) */
ffa00dae:	21 e1 be ba 	R1 = -0x4542 (X);		/*		R1=0xffffbabe(-17730) */
ffa00db2:	09 e1 00 00 	P1.L = 0x0;		/* (  0)	P1=0x400000 */
ffa00db6:	b2 e0 06 10 	LSETUP(0xffa00dba <_main+0xe6>, 0xffa00dc2 <_main+0xee>) LC1 = P1;
ffa00dba:	12 97       	W[P2] = R2;
ffa00dbc:	53 b4       	W[P2 + 0x2] = R3;
ffa00dbe:	90 b4       	W[P2 + 0x4] = R0;
ffa00dc0:	d1 b4       	W[P2 + 0x6] = R1;
ffa00dc2:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00dc4:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00dc6:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa00dc8:	02 20       	JUMP.S 0xffa00dcc <_main+0xf8>;
ffa00dca:	45 6c       	P5 += 0x8;		/* (  8) */
ffa00dcc:	2f 95       	R7 = W[P5] (Z);
ffa00dce:	80 e1 ca de 	R0 = 0xdeca (Z);		/*		R0=0xdeca(57034) */
ffa00dd2:	07 08       	CC = R7 == R0;
ffa00dd4:	15 18       	IF CC JUMP 0xffa00dfe <_main+0x12a>;
ffa00dd6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90deca(-7282998) */
ffa00dda:	0e 30       	R1 = R6;
ffa00ddc:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00de0:	00 e3 58 02 	CALL 0xffa01290 <_printf_hex>;
ffa00de4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00de8:	00 e1 ac 00 	R0.L = 0xac;		/* (172)	R0=0xff9000ac(-7339860) */
ffa00dec:	0f 30       	R1 = R7;
ffa00dee:	00 e3 51 02 	CALL 0xffa01290 <_printf_hex>;
ffa00df2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000ac(-7339860) */
ffa00df6:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa00dfa:	00 e3 e5 01 	CALL 0xffa011c4 <_printf_str>;
ffa00dfe:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa00e00:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa00e04:	08 08       	CC = R0 == R1;
ffa00e06:	08 18       	IF CC JUMP 0xffa00e16 <_main+0x142>;
ffa00e08:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa00e0c:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e10:	0e 30       	R1 = R6;
ffa00e12:	00 e3 3f 02 	CALL 0xffa01290 <_printf_hex>;
ffa00e16:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa00e18:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa00e1c:	08 08       	CC = R0 == R1;
ffa00e1e:	08 18       	IF CC JUMP 0xffa00e2e <_main+0x15a>;
ffa00e20:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e24:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e28:	0e 30       	R1 = R6;
ffa00e2a:	00 e3 33 02 	CALL 0xffa01290 <_printf_hex>;
ffa00e2e:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa00e30:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa00e34:	08 08       	CC = R0 == R1;
ffa00e36:	08 18       	IF CC JUMP 0xffa00e46 <_main+0x172>;
ffa00e38:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e3c:	00 e1 a0 00 	R0.L = 0xa0;		/* (160)	R0=0xff9000a0(-7339872) */
ffa00e40:	0e 30       	R1 = R6;
ffa00e42:	00 e3 27 02 	CALL 0xffa01290 <_printf_hex>;
ffa00e46:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa00e4a:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa00e4e:	55 08       	CC = P5 == P2;
ffa00e50:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00e52:	bc 17       	IF !CC JUMP 0xffa00dca <_main+0xf6> (BP);
ffa00e54:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000a0(-7339872) */
ffa00e58:	00 e1 b4 00 	R0.L = 0xb4;		/* (180)	R0=0xff9000b4(-7339852) */
ffa00e5c:	00 e3 b4 01 	CALL 0xffa011c4 <_printf_str>;
ffa00e60:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0fff8(-4128776) */
ffa00e64:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00e66:	0a e1 84 06 	P2.L = 0x684;		/* (1668)	P2=0xffc00684(-4192636) */
ffa00e6a:	10 97       	W[P2] = R0;
ffa00e6c:	24 00       	SSYNC;
ffa00e6e:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800684 */
ffa00e72:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00e76:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00e78:	16 93       	[P2] = R6;
ffa00e7a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa00e7e:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa00e82:	0a e1 50 06 	P2.L = 0x650;		/* (1616)	P2=0xffc00650(-4192688) */
ffa00e86:	10 97       	W[P2] = R0;
ffa00e88:	20 e1 09 3d 	R0 = 0x3d09 (X);		/*		R0=0x3d09(15625) */
ffa00e8c:	18 4f       	R0 <<= 0x3;
ffa00e8e:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00e90:	10 93       	[P2] = R0;
ffa00e92:	80 e1 24 f4 	R0 = 0xf424 (Z);		/*		R0=0xf424(62500) */
ffa00e96:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00e98:	10 93       	[P2] = R0;
ffa00e9a:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00e9c:	50 95       	R0 = W[P2] (X);
ffa00e9e:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa00ea0:	10 97       	W[P2] = R0;
ffa00ea2:	00 e3 f5 0c 	CALL 0xffa0288c <_bfin_EMAC_init>;
ffa00ea6:	00 0c       	CC = R0 == 0x0;
ffa00ea8:	20 30       	R4 = R0;
ffa00eaa:	2f 19       	IF CC JUMP 0xffa01108 <_main+0x434>;
ffa00eac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00650(-4192688) */
ffa00eb0:	20 e1 83 38 	R0 = 0x3883 (X);		/*		R0=0x3883(14467) */
ffa00eb4:	0a e1 00 32 	P2.L = 0x3200;		/* (12800)	P2=0xffc03200(-4181504) */
ffa00eb8:	10 97       	W[P2] = R0;
ffa00eba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03200(-4181504) */
ffa00ebe:	20 e1 56 fe 	R0 = -0x1aa (X);		/*		R0=0xfffffe56(-426) */
ffa00ec2:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa00ec6:	10 97       	W[P2] = R0;
ffa00ec8:	20 e1 ab 01 	R0 = 0x1ab (X);		/*		R0=0x1ab(427) */
ffa00ecc:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa00ece:	10 97       	W[P2] = R0;
ffa00ed0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa00ed4:	20 e1 40 01 	R0 = 0x140 (X);		/*		R0=0x140(320) */
ffa00ed8:	0a e1 10 32 	P2.L = 0x3210;		/* (12816)	P2=0xffc03210(-4181488) */
ffa00edc:	10 97       	W[P2] = R0;
ffa00ede:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03210(-4181488) */
ffa00ee2:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa00ee6:	50 95       	R0 = W[P2] (X);
ffa00ee8:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00eea:	10 97       	W[P2] = R0;
ffa00eec:	82 6f       	P2 += -0x10;		/* (-16) */
ffa00eee:	50 95       	R0 = W[P2] (X);
ffa00ef0:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa00ef2:	10 97       	W[P2] = R0;
ffa00ef4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa00ef8:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa00efc:	50 95       	R0 = W[P2] (X);
ffa00efe:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa00f00:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00000(-4194304) */
ffa00f04:	10 97       	W[P2] = R0;
ffa00f06:	09 e1 00 09 	P1.L = 0x900;		/* (2304)	P1=0xffc00900(-4192000) */
ffa00f0a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f0c:	08 97       	W[P1] = R0;
ffa00f0e:	24 00       	SSYNC;
ffa00f10:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903204 */
ffa00f14:	0a e1 d0 0b 	P2.L = 0xbd0;		/* (3024)	P2=0xff900bd0 <_g_sampR> */
ffa00f18:	16 93       	[P2] = R6;
ffa00f1a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bd0 <_g_sampR> */
ffa00f1e:	0a e1 b4 0b 	P2.L = 0xbb4;		/* (2996)	P2=0xff900bb4 <_g_sampW> */
ffa00f22:	16 93       	[P2] = R6;
ffa00f24:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb4 <_g_sampW> */
ffa00f28:	0a e1 d8 0b 	P2.L = 0xbd8;		/* (3032)	P2=0xff900bd8 <_g_sampOff> */
ffa00f2c:	16 93       	[P2] = R6;
ffa00f2e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bd8 <_g_sampOff> */
ffa00f32:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00f34:	0a e1 a8 0b 	P2.L = 0xba8;		/* (2984)	P2=0xff900ba8 <_g_sampMode> */
ffa00f38:	10 9b       	B[P2] = R0;
ffa00f3a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00f3c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900ba8 <_g_sampMode> */
ffa00f40:	d8 4f       	R0 <<= 0x1b;
ffa00f42:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_sampInc> */
ffa00f46:	10 93       	[P2] = R0;
ffa00f48:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb8 <_g_sampInc> */
ffa00f4c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00f4e:	0a e1 c8 0b 	P2.L = 0xbc8;		/* (3016)	P2=0xff900bc8 <_g_sampCh> */
ffa00f52:	10 9b       	B[P2] = R0;
ffa00f54:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bc8(-4191288) */
ffa00f58:	e8 60       	R0 = 0x1d (X);		/*		R0=0x1d( 29) */
ffa00f5a:	0a e1 08 09 	P2.L = 0x908;		/* (2312)	P2=0xffc00908(-4191992) */
ffa00f5e:	10 97       	W[P2] = R0;
ffa00f60:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa00f62:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00f64:	10 97       	W[P2] = R0;
ffa00f66:	b8 60       	R0 = 0x17 (X);		/*		R0=0x17( 23) */
ffa00f68:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa00f6a:	10 97       	W[P2] = R0;
ffa00f6c:	20 e1 03 4e 	R0 = 0x4e03 (X);		/*		R0=0x4e03(19971) */
ffa00f70:	08 97       	W[P1] = R0;
ffa00f72:	4a e1 e0 ff 	P2.H = 0xffe0;		/* (-32)	P2=0xffe00908(-2094840) */
ffa00f76:	40 e1 a0 ff 	R0.H = 0xffa0;		/* (-96)	R0=0xffa04e03(-6271485) */
ffa00f7a:	00 e1 44 05 	R0.L = 0x544;		/* (1348)	R0=0xffa00544 <_audio_out>(-6290108) */
ffa00f7e:	0a e1 1c 20 	P2.L = 0x201c;		/* (8220)	P2=0xffe0201c(-2088932) */
ffa00f82:	10 93       	[P2] = R0;
ffa00f84:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0201c(-4186084) */
ffa00f88:	27 e1 00 02 	R7 = 0x200 (X);		/*		R7=0x200(512) */
ffa00f8c:	0a e1 0c 01 	P2.L = 0x10c;		/* (268)	P2=0xffc0010c(-4194036) */
ffa00f90:	17 93       	[P2] = R7;
ffa00f92:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90010c */
ffa00f96:	0a e1 b0 0b 	P2.L = 0xbb0;		/* (2992)	P2=0xff900bb0 <_wrptr> */
ffa00f9a:	16 93       	[P2] = R6;
ffa00f9c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb0 <_wrptr> */
ffa00fa0:	0a e1 ac 0b 	P2.L = 0xbac;		/* (2988)	P2=0xff900bac <_trptr> */
ffa00fa4:	16 93       	[P2] = R6;
ffa00fa6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bac <_trptr> */
ffa00faa:	0a e1 cc 0b 	P2.L = 0xbcc;		/* (3020)	P2=0xff900bcc <_g_dropped> */
ffa00fae:	16 93       	[P2] = R6;
ffa00fb0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bcc <_g_dropped> */
ffa00fb4:	0a e1 a4 0b 	P2.L = 0xba4;		/* (2980)	P2=0xff900ba4 <_g_nextFlag> */
ffa00fb8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900544(-7338684) */
ffa00fbc:	16 93       	[P2] = R6;
ffa00fbe:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa00fc2:	00 e3 01 01 	CALL 0xffa011c4 <_printf_str>;
ffa00fc6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ba4(-4191324) */
ffa00fca:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa00fce:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa00fd2:	10 97       	W[P2] = R0;
ffa00fd4:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa00fd8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00fda:	10 97       	W[P2] = R0;
ffa00fdc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00704(-4192508) */
ffa00fe0:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa00fe2:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00fe6:	10 97       	W[P2] = R0;
ffa00fe8:	24 00       	SSYNC;
ffa00fea:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa00fec:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa00ff0:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa00ff2:	ff e3 2b fa 	CALL 0xffa00448 <_radio_init>;
ffa00ff6:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa00ff8:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa00ffc:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01000:	ff e3 24 fa 	CALL 0xffa00448 <_radio_init>;
ffa01004:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa01008:	07 30       	R0 = R7;
ffa0100a:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa0100e:	ff e3 1d fa 	CALL 0xffa00448 <_radio_init>;
ffa01012:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa01014:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01016:	ff e3 89 f9 	CALL 0xffa00328 <_radio_set_rx>;
ffa0101a:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa0101e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01020:	ff e3 84 f9 	CALL 0xffa00328 <_radio_set_rx>;
ffa01024:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa01028:	07 30       	R0 = R7;
ffa0102a:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa0102e:	46 e1 62 10 	R6.H = 0x1062;		/* (4194)	R6=0x10620000(274857984) */
ffa01032:	ff e3 7b f9 	CALL 0xffa00328 <_radio_set_rx>;
ffa01036:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01038:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa0103a:	0d e1 00 07 	P5.L = 0x700;		/* (1792)	P5=0xffc00700(-4192512) */
ffa0103e:	06 e1 d3 4d 	R6.L = 0x4dd3;		/* (19923)	R6=0x10624dd3(274877907) */
ffa01042:	04 30       	R0 = R4;
ffa01044:	ff e3 b6 fc 	CALL 0xffa009b0 <_eth_listen>;
ffa01048:	68 95       	R0 = W[P5] (X);
ffa0104a:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0104c:	42 18       	IF CC JUMP 0xffa010d0 <_main+0x3fc>;
ffa0104e:	00 00       	NOP;
ffa01050:	00 00       	NOP;
ffa01052:	00 00       	NOP;
ffa01054:	68 95       	R0 = W[P5] (X);
ffa01056:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01058:	45 18       	IF CC JUMP 0xffa010e2 <_main+0x40e>;
ffa0105a:	00 00       	NOP;
ffa0105c:	00 00       	NOP;
ffa0105e:	00 00       	NOP;
ffa01060:	68 95       	R0 = W[P5] (X);
ffa01062:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa01064:	49 18       	IF CC JUMP 0xffa010f6 <_main+0x422>;
ffa01066:	20 e1 28 01 	R0 = 0x128 (X);		/*		R0=0x128(296) */
ffa0106a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0106e:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01072:	69 95       	R1 = W[P5] (X);
ffa01074:	08 54       	R0 = R0 & R1;
ffa01076:	21 e1 28 01 	R1 = 0x128 (X);		/*		R1=0x128(296) */
ffa0107a:	08 08       	CC = R0 == R1;
ffa0107c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0107e:	38 07       	IF CC R7 = R0;
ffa01080:	20 e1 50 02 	R0 = 0x250 (X);		/*		R0=0x250(592) */
ffa01084:	10 97       	W[P2] = R0;
ffa01086:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800708 */
ffa0108a:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa0108e:	10 91       	R0 = [P2];
ffa01090:	80 c0 06 18 	A1 = R0.L * R6.L (FU);
ffa01094:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa01098:	81 c0 06 86 	A1 += R0.H * R6.L, A0 = R0.H * R6.H (FU);
ffa0109c:	81 c0 30 98 	A1 += R6.H * R0.L (FU);
ffa010a0:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa010a4:	0b c4 00 80 	A0 += A1;
ffa010a8:	8b c0 00 38 	R0 = A0 (FU);
ffa010ac:	82 c6 d0 83 	R1 = R0 >> 0x6;
ffa010b0:	0d 08       	CC = R5 == R1;
ffa010b2:	c8 1b       	IF CC JUMP 0xffa01042 <_main+0x36e>;
ffa010b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa010b8:	20 e1 00 80 	R0 = -0x8000 (X);		/*		R0=0xffff8000(-32768) */
ffa010bc:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa010c0:	10 97       	W[P2] = R0;
ffa010c2:	04 30       	R0 = R4;
ffa010c4:	29 30       	R5 = R1;
ffa010c6:	ff e3 75 fc 	CALL 0xffa009b0 <_eth_listen>;
ffa010ca:	68 95       	R0 = W[P5] (X);
ffa010cc:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa010ce:	c2 17       	IF !CC JUMP 0xffa01052 <_main+0x37e> (BP);
ffa010d0:	7a 43       	R2 = R7.B (Z);
ffa010d2:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa010d4:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa010d6:	ff e3 97 fc 	CALL 0xffa00a04 <_getRadioPacket>;
ffa010da:	68 95       	R0 = W[P5] (X);
ffa010dc:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa010de:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa010e0:	bf 17       	IF !CC JUMP 0xffa0105e <_main+0x38a> (BP);
ffa010e2:	7a 43       	R2 = R7.B (Z);
ffa010e4:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa010e8:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa010ea:	ff e3 8d fc 	CALL 0xffa00a04 <_getRadioPacket>;
ffa010ee:	68 95       	R0 = W[P5] (X);
ffa010f0:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
ffa010f2:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa010f4:	b9 17       	IF !CC JUMP 0xffa01066 <_main+0x392> (BP);
ffa010f6:	7a 43       	R2 = R7.B (Z);
ffa010f8:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa010fc:	21 e1 00 01 	R1 = 0x100 (X);		/*		R1=0x100(256) */
ffa01100:	ff e3 82 fc 	CALL 0xffa00a04 <_getRadioPacket>;
ffa01104:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01106:	b0 2f       	JUMP.S 0xffa01066 <_main+0x392>;
ffa01108:	00 e3 9c 0d 	CALL 0xffa02c40 <_DHCP_req>;
ffa0110c:	d0 2e       	JUMP.S 0xffa00eac <_main+0x1d8>;
	...

ffa01110 <_uart_str>:
ffa01110:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa01114:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01118:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa0111c:	08 32       	P1 = R0;
ffa0111e:	50 95       	R0 = W[P2] (X);
ffa01120:	c0 42       	R0 = R0.L (Z);
ffa01122:	08 0c       	CC = R0 == 0x1;
ffa01124:	06 18       	IF CC JUMP 0xffa01130 <_uart_str+0x20>;
ffa01126:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01128:	02 30       	R0 = R2;
ffa0112a:	01 e8 00 00 	UNLINK;
ffa0112e:	10 00       	RTS;
ffa01130:	48 99       	R0 = B[P1] (X);
ffa01132:	01 43       	R1 = R0.B (X);
ffa01134:	01 0c       	CC = R1 == 0x0;
ffa01136:	f8 1b       	IF CC JUMP 0xffa01126 <_uart_str+0x16>;
ffa01138:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa0113c:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0113e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01140:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa01144:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa01148:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa0114a:	b2 e0 1c 00 	LSETUP(0xffa0114e <_uart_str+0x3e>, 0xffa01182 <_uart_str+0x72>) LC1 = P0;
ffa0114e:	19 08       	CC = R1 == R3;
ffa01150:	1b 18       	IF CC JUMP 0xffa01186 <_uart_str+0x76>;
ffa01152:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa01156:	00 43       	R0 = R0.B (X);
ffa01158:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa0115c:	10 97       	W[P2] = R0;
ffa0115e:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa01160:	50 95       	R0 = W[P2] (X);
ffa01162:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01164:	0a 10       	IF !CC JUMP 0xffa01178 <_uart_str+0x68>;
ffa01166:	00 00       	NOP;
ffa01168:	00 00       	NOP;
ffa0116a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa0116e:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa01172:	50 95       	R0 = W[P2] (X);
ffa01174:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa01176:	f9 1f       	IF CC JUMP 0xffa01168 <_uart_str+0x58> (BP);
ffa01178:	48 99       	R0 = B[P1] (X);
ffa0117a:	01 43       	R1 = R0.B (X);
ffa0117c:	01 0c       	CC = R1 == 0x0;
ffa0117e:	0a 64       	R2 += 0x1;		/* (  1) */
ffa01180:	d4 1b       	IF CC JUMP 0xffa01128 <_uart_str+0x18>;
ffa01182:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01184:	d2 2f       	JUMP.S 0xffa01128 <_uart_str+0x18>;
ffa01186:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01188:	20 9f       	W[I0] = R0.L;
ffa0118a:	02 20       	JUMP.S 0xffa0118e <_uart_str+0x7e>;
ffa0118c:	00 00       	NOP;
ffa0118e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa01192:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa01196:	50 95       	R0 = W[P2] (X);
ffa01198:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0119a:	f9 1f       	IF CC JUMP 0xffa0118c <_uart_str+0x7c> (BP);
ffa0119c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa011a0:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa011a2:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa011a6:	10 97       	W[P2] = R0;
ffa011a8:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa011aa:	50 95       	R0 = W[P2] (X);
ffa011ac:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa011ae:	e5 13       	IF !CC JUMP 0xffa01178 <_uart_str+0x68>;
ffa011b0:	00 00       	NOP;
ffa011b2:	00 00       	NOP;
ffa011b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa011b8:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa011bc:	50 95       	R0 = W[P2] (X);
ffa011be:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa011c0:	f9 1f       	IF CC JUMP 0xffa011b2 <_uart_str+0xa2> (BP);
ffa011c2:	db 2f       	JUMP.S 0xffa01178 <_uart_str+0x68>;

ffa011c4 <_printf_str>:
ffa011c4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa011c8:	01 e8 00 00 	UNLINK;
ffa011cc:	ff e2 a2 ff 	JUMP.L 0xffa01110 <_uart_str>;

ffa011d0 <_printf_newline>:
ffa011d0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa011d4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa011d8:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa011dc:	01 e8 00 00 	UNLINK;
ffa011e0:	ff e2 98 ff 	JUMP.L 0xffa01110 <_uart_str>;

ffa011e4 <_printf_hex_byte>:
ffa011e4:	fc 05       	[--SP] = (R7:7, P5:4);
ffa011e6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa011ea:	28 32       	P5 = R0;
ffa011ec:	39 30       	R7 = R1;
ffa011ee:	00 e3 b1 01 	CALL 0xffa01550 <_strlen_>;
ffa011f2:	10 30       	R2 = R0;
ffa011f4:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa011f8:	02 09       	CC = R2 <= R0;
ffa011fa:	41 10       	IF !CC JUMP 0xffa0127c <_printf_hex_byte+0x98>;
ffa011fc:	02 0d       	CC = R2 <= 0x0;
ffa011fe:	44 18       	IF CC JUMP 0xffa01286 <_printf_hex_byte+0xa2>;
ffa01200:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa01204:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01206:	08 e1 00 0e 	P0.L = 0xe00;		/* (3584)	P0=0xff900e00 <_printf_out> */
ffa0120a:	09 32       	P1 = R1;
ffa0120c:	42 91       	P2 = [P0];
ffa0120e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01210:	68 98       	R0 = B[P5++] (X);
ffa01212:	0a 08       	CC = R2 == R1;
ffa01214:	8a 5a       	P2 = P2 + P1;
ffa01216:	10 9b       	B[P2] = R0;
ffa01218:	f9 17       	IF !CC JUMP 0xffa0120a <_printf_hex_byte+0x26> (BP);
ffa0121a:	0a 32       	P1 = R2;
ffa0121c:	42 91       	P2 = [P0];
ffa0121e:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01220:	22 32       	P4 = R2;
ffa01222:	79 43       	R1 = R7.B (Z);
ffa01224:	8a 5a       	P2 = P2 + P1;
ffa01226:	10 9b       	B[P2] = R0;
ffa01228:	42 91       	P2 = [P0];
ffa0122a:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa0122c:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01230:	11 6c       	P1 += 0x2;		/* (  2) */
ffa01232:	a2 5a       	P2 = P2 + P4;
ffa01234:	10 9b       	B[P2] = R0;
ffa01236:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa01238:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa0123a:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa0123c:	01 30       	R0 = R1;
ffa0123e:	10 40       	R0 >>>= R2;
ffa01240:	18 54       	R0 = R0 & R3;
ffa01242:	38 09       	CC = R0 <= R7;
ffa01244:	1a 1c       	IF CC JUMP 0xffa01278 <_printf_hex_byte+0x94> (BP);
ffa01246:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa01248:	42 91       	P2 = [P0];
ffa0124a:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa0124c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900700 */
ffa01250:	22 0c       	CC = R2 == -0x4;
ffa01252:	8a 5a       	P2 = P2 + P1;
ffa01254:	0d e1 00 0e 	P5.L = 0xe00;		/* (3584)	P5=0xff900e00 <_printf_out> */
ffa01258:	10 9b       	B[P2] = R0;
ffa0125a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0125c:	f0 17       	IF !CC JUMP 0xffa0123c <_printf_hex_byte+0x58> (BP);
ffa0125e:	6a 91       	P2 = [P5];
ffa01260:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01262:	94 5a       	P2 = P4 + P2;
ffa01264:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa01268:	28 91       	R0 = [P5];
ffa0126a:	ff e3 53 ff 	CALL 0xffa01110 <_uart_str>;
ffa0126e:	01 e8 00 00 	UNLINK;
ffa01272:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01274:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01276:	10 00       	RTS;
ffa01278:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0127a:	e7 2f       	JUMP.S 0xffa01248 <_printf_hex_byte+0x64>;
ffa0127c:	01 e8 00 00 	UNLINK;
ffa01280:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01282:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01284:	10 00       	RTS;
ffa01286:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e00 <_printf_out> */
ffa0128a:	08 e1 00 0e 	P0.L = 0xe00;		/* (3584)	P0=0xff900e00 <_printf_out> */
ffa0128e:	c6 2f       	JUMP.S 0xffa0121a <_printf_hex_byte+0x36>;

ffa01290 <_printf_hex>:
ffa01290:	fb 05       	[--SP] = (R7:7, P5:3);
ffa01292:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01296:	28 32       	P5 = R0;
ffa01298:	39 30       	R7 = R1;
ffa0129a:	00 e3 5b 01 	CALL 0xffa01550 <_strlen_>;
ffa0129e:	10 30       	R2 = R0;
ffa012a0:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa012a4:	02 09       	CC = R2 <= R0;
ffa012a6:	47 10       	IF !CC JUMP 0xffa01334 <_printf_hex+0xa4>;
ffa012a8:	02 0d       	CC = R2 <= 0x0;
ffa012aa:	4a 18       	IF CC JUMP 0xffa0133e <_printf_hex+0xae>;
ffa012ac:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900900 */
ffa012b0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa012b2:	09 e1 00 0e 	P1.L = 0xe00;		/* (3584)	P1=0xff900e00 <_printf_out> */
ffa012b6:	01 32       	P0 = R1;
ffa012b8:	4a 91       	P2 = [P1];
ffa012ba:	09 64       	R1 += 0x1;		/* (  1) */
ffa012bc:	68 98       	R0 = B[P5++] (X);
ffa012be:	0a 08       	CC = R2 == R1;
ffa012c0:	82 5a       	P2 = P2 + P0;
ffa012c2:	10 9b       	B[P2] = R0;
ffa012c4:	f9 17       	IF !CC JUMP 0xffa012b6 <_printf_hex+0x26> (BP);
ffa012c6:	02 32       	P0 = R2;
ffa012c8:	4a 91       	P2 = [P1];
ffa012ca:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa012cc:	1a 32       	P3 = R2;
ffa012ce:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa012d0:	82 5a       	P2 = P2 + P0;
ffa012d2:	10 9b       	B[P2] = R0;
ffa012d4:	4a 91       	P2 = [P1];
ffa012d6:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa012d8:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa012dc:	10 6c       	P0 += 0x2;		/* (  2) */
ffa012de:	9a 5a       	P2 = P2 + P3;
ffa012e0:	10 9b       	B[P2] = R0;
ffa012e2:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa012e4:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa012e6:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa012e8:	b2 e0 10 50 	LSETUP(0xffa012ec <_printf_hex+0x5c>, 0xffa01308 <_printf_hex+0x78>) LC1 = P5;
ffa012ec:	07 30       	R0 = R7;
ffa012ee:	08 40       	R0 >>>= R1;
ffa012f0:	10 54       	R0 = R0 & R2;
ffa012f2:	18 09       	CC = R0 <= R3;
ffa012f4:	1e 1c       	IF CC JUMP 0xffa01330 <_printf_hex+0xa0> (BP);
ffa012f6:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa012f8:	4a 91       	P2 = [P1];
ffa012fa:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900bdc <_g_outpkt> */
ffa012fe:	0c e1 00 0e 	P4.L = 0xe00;		/* (3584)	P4=0xff900e00 <_printf_out> */
ffa01302:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa01304:	82 5a       	P2 = P2 + P0;
ffa01306:	10 9b       	B[P2] = R0;
ffa01308:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0130a:	62 91       	P2 = [P4];
ffa0130c:	4b 32       	P1 = P3;
ffa0130e:	49 6c       	P1 += 0x9;		/* (  9) */
ffa01310:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01312:	8a 5a       	P2 = P2 + P1;
ffa01314:	10 9b       	B[P2] = R0;
ffa01316:	62 91       	P2 = [P4];
ffa01318:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0131a:	8a 5a       	P2 = P2 + P1;
ffa0131c:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa01320:	20 91       	R0 = [P4];
ffa01322:	ff e3 f7 fe 	CALL 0xffa01110 <_uart_str>;
ffa01326:	01 e8 00 00 	UNLINK;
ffa0132a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0132c:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0132e:	10 00       	RTS;
ffa01330:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01332:	e3 2f       	JUMP.S 0xffa012f8 <_printf_hex+0x68>;
ffa01334:	01 e8 00 00 	UNLINK;
ffa01338:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0133a:	bb 05       	(R7:7, P5:3) = [SP++];
ffa0133c:	10 00       	RTS;
ffa0133e:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e00 <_printf_out> */
ffa01342:	09 e1 00 0e 	P1.L = 0xe00;		/* (3584)	P1=0xff900e00 <_printf_out> */
ffa01346:	c0 2f       	JUMP.S 0xffa012c6 <_printf_hex+0x36>;

ffa01348 <_printf_int>:
ffa01348:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0134a:	01 0c       	CC = R1 == 0x0;
ffa0134c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01350:	28 32       	P5 = R0;
ffa01352:	39 30       	R7 = R1;
ffa01354:	41 14       	IF !CC JUMP 0xffa013d6 <_printf_int+0x8e> (BP);
ffa01356:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bb4 <_g_sampW> */
ffa0135a:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa0135e:	5a 91       	P2 = [P3];
ffa01360:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01362:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa01364:	10 9b       	B[P2] = R0;
ffa01366:	45 30       	R0 = P5;
ffa01368:	00 e3 f4 00 	CALL 0xffa01550 <_strlen_>;
ffa0136c:	c6 50       	R3 = R6 + R0;
ffa0136e:	10 30       	R2 = R0;
ffa01370:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa01374:	03 09       	CC = R3 <= R0;
ffa01376:	4e 10       	IF !CC JUMP 0xffa01412 <_printf_int+0xca>;
ffa01378:	02 0d       	CC = R2 <= 0x0;
ffa0137a:	79 18       	IF CC JUMP 0xffa0146c <_printf_int+0x124>;
ffa0137c:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e00 <_printf_out> */
ffa01380:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01382:	08 e1 00 0e 	P0.L = 0xe00;		/* (3584)	P0=0xff900e00 <_printf_out> */
ffa01386:	09 32       	P1 = R1;
ffa01388:	42 91       	P2 = [P0];
ffa0138a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0138c:	68 98       	R0 = B[P5++] (X);
ffa0138e:	0a 08       	CC = R2 == R1;
ffa01390:	8a 5a       	P2 = P2 + P1;
ffa01392:	10 9b       	B[P2] = R0;
ffa01394:	f9 17       	IF !CC JUMP 0xffa01386 <_printf_int+0x3e> (BP);
ffa01396:	06 0d       	CC = R6 <= 0x0;
ffa01398:	12 18       	IF CC JUMP 0xffa013bc <_printf_int+0x74>;
ffa0139a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0139c:	00 91       	R0 = [P0];
ffa0139e:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa013a2:	5a 91 00 00 
ffa013a6:	08 50       	R0 = R0 + R1;
ffa013a8:	08 32       	P1 = R0;
ffa013aa:	0e 52       	R0 = R6 - R1;
ffa013ac:	28 32       	P5 = R0;
ffa013ae:	09 64       	R1 += 0x1;		/* (  1) */
ffa013b0:	0e 08       	CC = R6 == R1;
ffa013b2:	aa 5a       	P2 = P2 + P5;
ffa013b4:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa013b8:	08 9b       	B[P1] = R0;
ffa013ba:	f1 17       	IF !CC JUMP 0xffa0139c <_printf_int+0x54> (BP);
ffa013bc:	0b 32       	P1 = R3;
ffa013be:	42 91       	P2 = [P0];
ffa013c0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa013c2:	91 5a       	P2 = P1 + P2;
ffa013c4:	10 9b       	B[P2] = R0;
ffa013c6:	00 91       	R0 = [P0];
ffa013c8:	ff e3 a4 fe 	CALL 0xffa01110 <_uart_str>;
ffa013cc:	01 e8 00 00 	UNLINK;
ffa013d0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa013d2:	b3 05       	(R7:6, P5:3) = [SP++];
ffa013d4:	10 00       	RTS;
ffa013d6:	01 0d       	CC = R1 <= 0x0;
ffa013d8:	22 18       	IF CC JUMP 0xffa0141c <_printf_int+0xd4>;
ffa013da:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa013de:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa013e0:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa013e4:	05 20       	JUMP.S 0xffa013ee <_printf_int+0xa6>;
ffa013e6:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa013ea:	06 08       	CC = R6 == R0;
ffa013ec:	bd 1b       	IF CC JUMP 0xffa01366 <_printf_int+0x1e>;
ffa013ee:	07 30       	R0 = R7;
ffa013f0:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa013f2:	00 e3 83 00 	CALL 0xffa014f8 <_mod>;
ffa013f6:	0e 32       	P1 = R6;
ffa013f8:	5a 91       	P2 = [P3];
ffa013fa:	80 65       	R0 += 0x30;		/* ( 48) */
ffa013fc:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa013fe:	0e 64       	R6 += 0x1;		/* (  1) */
ffa01400:	8a 5a       	P2 = P2 + P1;
ffa01402:	10 9b       	B[P2] = R0;
ffa01404:	07 30       	R0 = R7;
ffa01406:	00 e3 6b 00 	CALL 0xffa014dc <_div>;
ffa0140a:	00 0d       	CC = R0 <= 0x0;
ffa0140c:	38 30       	R7 = R0;
ffa0140e:	ec 17       	IF !CC JUMP 0xffa013e6 <_printf_int+0x9e> (BP);
ffa01410:	ab 2f       	JUMP.S 0xffa01366 <_printf_int+0x1e>;
ffa01412:	01 e8 00 00 	UNLINK;
ffa01416:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01418:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0141a:	10 00       	RTS;
ffa0141c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0141e:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa01420:	f8 4f       	R0 <<= 0x1f;
ffa01422:	f8 53       	R7 = R0 - R7;
ffa01424:	07 0d       	CC = R7 <= 0x0;
ffa01426:	2c 18       	IF CC JUMP 0xffa0147e <_printf_int+0x136>;
ffa01428:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa0142c:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa0142e:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa01432:	05 20       	JUMP.S 0xffa0143c <_printf_int+0xf4>;
ffa01434:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa01438:	4c 08       	CC = P4 == P1;
ffa0143a:	1e 18       	IF CC JUMP 0xffa01476 <_printf_int+0x12e>;
ffa0143c:	07 30       	R0 = R7;
ffa0143e:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01440:	00 e3 5c 00 	CALL 0xffa014f8 <_mod>;
ffa01444:	5a 91       	P2 = [P3];
ffa01446:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01448:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0144a:	a2 5a       	P2 = P2 + P4;
ffa0144c:	10 9b       	B[P2] = R0;
ffa0144e:	07 30       	R0 = R7;
ffa01450:	00 e3 46 00 	CALL 0xffa014dc <_div>;
ffa01454:	00 0d       	CC = R0 <= 0x0;
ffa01456:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa01458:	38 30       	R7 = R0;
ffa0145a:	ed 17       	IF !CC JUMP 0xffa01434 <_printf_int+0xec> (BP);
ffa0145c:	74 30       	R6 = P4;
ffa0145e:	4c 32       	P1 = P4;
ffa01460:	0e 64       	R6 += 0x1;		/* (  1) */
ffa01462:	5a 91       	P2 = [P3];
ffa01464:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa01466:	8a 5a       	P2 = P2 + P1;
ffa01468:	10 9b       	B[P2] = R0;
ffa0146a:	7e 2f       	JUMP.S 0xffa01366 <_printf_int+0x1e>;
ffa0146c:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e00 <_printf_out> */
ffa01470:	08 e1 00 0e 	P0.L = 0xe00;		/* (3584)	P0=0xff900e00 <_printf_out> */
ffa01474:	91 2f       	JUMP.S 0xffa01396 <_printf_int+0x4e>;
ffa01476:	4c 32       	P1 = P4;
ffa01478:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa0147c:	f3 2f       	JUMP.S 0xffa01462 <_printf_int+0x11a>;
ffa0147e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa01482:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa01484:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa01486:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa0148a:	ec 2f       	JUMP.S 0xffa01462 <_printf_int+0x11a>;

ffa0148c <_printf_ip>:
ffa0148c:	70 05       	[--SP] = (R7:6);
ffa0148e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01492:	39 30       	R7 = R1;
ffa01494:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa01498:	49 43       	R1 = R1.B (Z);
ffa0149a:	ff e3 57 ff 	CALL 0xffa01348 <_printf_int>;
ffa0149e:	06 e1 88 00 	R6.L = 0x88;		/* (136)	R6=0xff900088(-7339896) */
ffa014a2:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa014a6:	49 43       	R1 = R1.B (Z);
ffa014a8:	06 30       	R0 = R6;
ffa014aa:	ff e3 4f ff 	CALL 0xffa01348 <_printf_int>;
ffa014ae:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa014b2:	49 43       	R1 = R1.B (Z);
ffa014b4:	06 30       	R0 = R6;
ffa014b6:	c7 4e       	R7 >>= 0x18;
ffa014b8:	ff e3 48 ff 	CALL 0xffa01348 <_printf_int>;
ffa014bc:	0f 30       	R1 = R7;
ffa014be:	06 30       	R0 = R6;
ffa014c0:	ff e3 44 ff 	CALL 0xffa01348 <_printf_int>;
ffa014c4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa014c8:	00 e1 08 05 	R0.L = 0x508;		/* (1288)	R0=0xff900508(-7338744) */
ffa014cc:	ff e3 7c fe 	CALL 0xffa011c4 <_printf_str>;
ffa014d0:	01 e8 00 00 	UNLINK;
ffa014d4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa014d6:	30 05       	(R7:6) = [SP++];
ffa014d8:	10 00       	RTS;
	...

ffa014dc <_div>:
ffa014dc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa014e0:	08 4f       	R0 <<= 0x1;
ffa014e2:	48 42       	DIVS (R0, R1);
ffa014e4:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa014e6:	b2 e0 03 20 	LSETUP(0xffa014ea <_div+0xe>, 0xffa014ec <_div+0x10>) LC1 = P2;
ffa014ea:	08 42       	DIVQ (R0, R1);
ffa014ec:	00 00       	NOP;
ffa014ee:	80 42       	R0 = R0.L (X);
ffa014f0:	01 e8 00 00 	UNLINK;
ffa014f4:	10 00       	RTS;
	...

ffa014f8 <_mod>:
ffa014f8:	70 05       	[--SP] = (R7:6);
ffa014fa:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa014fe:	30 30       	R6 = R0;
ffa01500:	39 30       	R7 = R1;
ffa01502:	ff e3 ed ff 	CALL 0xffa014dc <_div>;
ffa01506:	c7 40       	R7 *= R0;
ffa01508:	01 e8 00 00 	UNLINK;
ffa0150c:	be 53       	R6 = R6 - R7;
ffa0150e:	06 30       	R0 = R6;
ffa01510:	30 05       	(R7:6) = [SP++];
ffa01512:	10 00       	RTS;

ffa01514 <_memcpy_>:
ffa01514:	02 0d       	CC = R2 <= 0x0;
ffa01516:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0151a:	08 32       	P1 = R0;
ffa0151c:	11 32       	P2 = R1;
ffa0151e:	08 18       	IF CC JUMP 0xffa0152e <_memcpy_+0x1a>;
ffa01520:	00 00       	NOP;
ffa01522:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01524:	09 64       	R1 += 0x1;		/* (  1) */
ffa01526:	48 98       	R0 = B[P1++] (X);
ffa01528:	0a 08       	CC = R2 == R1;
ffa0152a:	10 9a       	B[P2++] = R0;
ffa0152c:	fc 17       	IF !CC JUMP 0xffa01524 <_memcpy_+0x10> (BP);
ffa0152e:	01 e8 00 00 	UNLINK;
ffa01532:	10 00       	RTS;

ffa01534 <_memset_>:
ffa01534:	02 0d       	CC = R2 <= 0x0;
ffa01536:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0153a:	10 32       	P2 = R0;
ffa0153c:	06 18       	IF CC JUMP 0xffa01548 <_memset_+0x14>;
ffa0153e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01540:	08 64       	R0 += 0x1;		/* (  1) */
ffa01542:	02 08       	CC = R2 == R0;
ffa01544:	11 9a       	B[P2++] = R1;
ffa01546:	fd 17       	IF !CC JUMP 0xffa01540 <_memset_+0xc> (BP);
ffa01548:	01 e8 00 00 	UNLINK;
ffa0154c:	10 00       	RTS;
	...

ffa01550 <_strlen_>:
ffa01550:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01554:	10 32       	P2 = R0;
ffa01556:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01558:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa0155c:	b2 e0 06 10 	LSETUP(0xffa01560 <_strlen_+0x10>, 0xffa01568 <_strlen_+0x18>) LC1 = P1;
ffa01560:	50 99       	R0 = B[P2] (X);
ffa01562:	00 0c       	CC = R0 == 0x0;
ffa01564:	04 18       	IF CC JUMP 0xffa0156c <_strlen_+0x1c>;
ffa01566:	09 64       	R1 += 0x1;		/* (  1) */
ffa01568:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0156a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0156c:	01 30       	R0 = R1;
ffa0156e:	01 e8 00 00 	UNLINK;
ffa01572:	10 00       	RTS;

ffa01574 <_strcpy_>:
ffa01574:	12 32       	P2 = R2;
ffa01576:	c5 04       	[--SP] = (P5:5);
ffa01578:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0157c:	29 32       	P5 = R1;
ffa0157e:	00 32       	P0 = R0;
ffa01580:	51 99       	R1 = B[P2] (X);
ffa01582:	08 43       	R0 = R1.B (X);
ffa01584:	00 0c       	CC = R0 == 0x0;
ffa01586:	17 18       	IF CC JUMP 0xffa015b4 <_strcpy_+0x40>;
ffa01588:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0158a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0158c:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa01590:	b2 e0 09 10 	LSETUP(0xffa01594 <_strcpy_+0x20>, 0xffa015a2 <_strcpy_+0x2e>) LC1 = P1;
ffa01594:	01 9a       	B[P0++] = R1;
ffa01596:	51 99       	R1 = B[P2] (X);
ffa01598:	08 43       	R0 = R1.B (X);
ffa0159a:	00 0c       	CC = R0 == 0x0;
ffa0159c:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0159e:	03 18       	IF CC JUMP 0xffa015a4 <_strcpy_+0x30>;
ffa015a0:	00 00       	NOP;
ffa015a2:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa015a4:	01 e8 00 00 	UNLINK;
ffa015a8:	28 91       	R0 = [P5];
ffa015aa:	10 50       	R0 = R0 + R2;
ffa015ac:	28 93       	[P5] = R0;
ffa015ae:	40 30       	R0 = P0;
ffa015b0:	85 04       	(P5:5) = [SP++];
ffa015b2:	10 00       	RTS;
ffa015b4:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa015b6:	f7 2f       	JUMP.S 0xffa015a4 <_strcpy_+0x30>;

ffa015b8 <_strprepend>:
ffa015b8:	fc 05       	[--SP] = (R7:7, P5:4);
ffa015ba:	21 32       	P4 = R1;
ffa015bc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa015c0:	38 30       	R7 = R0;
ffa015c2:	02 30       	R0 = R2;
ffa015c4:	2a 32       	P5 = R2;
ffa015c6:	ff e3 c5 ff 	CALL 0xffa01550 <_strlen_>;
ffa015ca:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa015ce:	20 91 00 00 
ffa015d2:	02 0d       	CC = R2 <= 0x0;
ffa015d4:	0a 18       	IF CC JUMP 0xffa015e8 <_strprepend+0x30>;
ffa015d6:	07 52       	R0 = R7 - R0;
ffa015d8:	10 32       	P2 = R0;
ffa015da:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa015dc:	09 64       	R1 += 0x1;		/* (  1) */
ffa015de:	68 98       	R0 = B[P5++] (X);
ffa015e0:	0a 08       	CC = R2 == R1;
ffa015e2:	10 9a       	B[P2++] = R0;
ffa015e4:	fc 17       	IF !CC JUMP 0xffa015dc <_strprepend+0x24> (BP);
ffa015e6:	20 91       	R0 = [P4];
ffa015e8:	01 e8 00 00 	UNLINK;
ffa015ec:	07 52       	R0 = R7 - R0;
ffa015ee:	bc 05       	(R7:7, P5:4) = [SP++];
ffa015f0:	10 00       	RTS;
	...

ffa015f4 <_strcmp>:
ffa015f4:	10 32       	P2 = R0;
ffa015f6:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa015fa:	01 32       	P0 = R1;
ffa015fc:	51 99       	R1 = B[P2] (X);
ffa015fe:	01 0c       	CC = R1 == 0x0;
ffa01600:	1b 18       	IF CC JUMP 0xffa01636 <_strcmp+0x42>;
ffa01602:	00 00       	NOP;
ffa01604:	00 00       	NOP;
ffa01606:	00 00       	NOP;
ffa01608:	40 99       	R0 = B[P0] (X);
ffa0160a:	00 0c       	CC = R0 == 0x0;
ffa0160c:	15 18       	IF CC JUMP 0xffa01636 <_strcmp+0x42>;
ffa0160e:	01 08       	CC = R1 == R0;
ffa01610:	1c 10       	IF !CC JUMP 0xffa01648 <_strcmp+0x54>;
ffa01612:	4a 32       	P1 = P2;
ffa01614:	50 32       	P2 = P0;
ffa01616:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01618:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0161a:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa0161e:	49 99       	R1 = B[P1] (X);
ffa01620:	01 0c       	CC = R1 == 0x0;
ffa01622:	0a 18       	IF CC JUMP 0xffa01636 <_strcmp+0x42>;
ffa01624:	00 00       	NOP;
ffa01626:	00 00       	NOP;
ffa01628:	00 00       	NOP;
ffa0162a:	50 99       	R0 = B[P2] (X);
ffa0162c:	00 0c       	CC = R0 == 0x0;
ffa0162e:	04 18       	IF CC JUMP 0xffa01636 <_strcmp+0x42>;
ffa01630:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa01632:	40 0c       	CC = P0 == 0x0;
ffa01634:	05 10       	IF !CC JUMP 0xffa0163e <_strcmp+0x4a>;
ffa01636:	01 e8 00 00 	UNLINK;
ffa0163a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0163c:	10 00       	RTS;
ffa0163e:	01 08       	CC = R1 == R0;
ffa01640:	04 10       	IF !CC JUMP 0xffa01648 <_strcmp+0x54>;
ffa01642:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01644:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa01646:	ec 2f       	JUMP.S 0xffa0161e <_strcmp+0x2a>;
ffa01648:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0164a:	01 e8 00 00 	UNLINK;
ffa0164e:	10 00       	RTS;

ffa01650 <_substr>:
ffa01650:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01652:	20 32       	P4 = R0;
ffa01654:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01658:	11 32       	P2 = R1;
ffa0165a:	32 30       	R6 = R2;
ffa0165c:	61 99       	R1 = B[P4] (X);
ffa0165e:	01 0c       	CC = R1 == 0x0;
ffa01660:	14 18       	IF CC JUMP 0xffa01688 <_substr+0x38>;
ffa01662:	00 00       	NOP;
ffa01664:	00 00       	NOP;
ffa01666:	00 00       	NOP;
ffa01668:	50 99       	R0 = B[P2] (X);
ffa0166a:	00 0c       	CC = R0 == 0x0;
ffa0166c:	0e 18       	IF CC JUMP 0xffa01688 <_substr+0x38>;
ffa0166e:	02 0d       	CC = R2 <= 0x0;
ffa01670:	0c 18       	IF CC JUMP 0xffa01688 <_substr+0x38>;
ffa01672:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01674:	01 08       	CC = R1 == R0;
ffa01676:	0f 18       	IF CC JUMP 0xffa01694 <_substr+0x44>;
ffa01678:	00 00       	NOP;
ffa0167a:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0167c:	0b 64       	R3 += 0x1;		/* (  1) */
ffa0167e:	50 99       	R0 = B[P2] (X);
ffa01680:	00 0c       	CC = R0 == 0x0;
ffa01682:	03 18       	IF CC JUMP 0xffa01688 <_substr+0x38>;
ffa01684:	1e 09       	CC = R6 <= R3;
ffa01686:	f7 17       	IF !CC JUMP 0xffa01674 <_substr+0x24> (BP);
ffa01688:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa0168a:	01 e8 00 00 	UNLINK;
ffa0168e:	40 30       	R0 = P0;
ffa01690:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01692:	10 00       	RTS;
ffa01694:	52 30       	R2 = P2;
ffa01696:	3b 30       	R7 = R3;
ffa01698:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0169a:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0169c:	12 32       	P2 = R2;
ffa0169e:	07 32       	P0 = R7;
ffa016a0:	4c 32       	P1 = P4;
ffa016a2:	6c 32       	P5 = P4;
ffa016a4:	09 6c       	P1 += 0x1;		/* (  1) */
ffa016a6:	15 6c       	P5 += 0x2;		/* (  2) */
ffa016a8:	02 20       	JUMP.S 0xffa016ac <_substr+0x5c>;
ffa016aa:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa016ac:	4b 99       	R3 = B[P1] (X);
ffa016ae:	50 99       	R0 = B[P2] (X);
ffa016b0:	03 08       	CC = R3 == R0;
ffa016b2:	0e 10       	IF !CC JUMP 0xffa016ce <_substr+0x7e>;
ffa016b4:	03 0c       	CC = R3 == 0x0;
ffa016b6:	0c 18       	IF CC JUMP 0xffa016ce <_substr+0x7e>;
ffa016b8:	00 00       	NOP;
ffa016ba:	09 6c       	P1 += 0x1;		/* (  1) */
ffa016bc:	08 6c       	P0 += 0x1;		/* (  1) */
ffa016be:	68 98       	R0 = B[P5++] (X);
ffa016c0:	00 0c       	CC = R0 == 0x0;
ffa016c2:	f4 17       	IF !CC JUMP 0xffa016aa <_substr+0x5a> (BP);
ffa016c4:	01 e8 00 00 	UNLINK;
ffa016c8:	40 30       	R0 = P0;
ffa016ca:	b4 05       	(R7:6, P5:4) = [SP++];
ffa016cc:	10 00       	RTS;
ffa016ce:	12 32       	P2 = R2;
ffa016d0:	1f 30       	R3 = R7;
ffa016d2:	d6 2f       	JUMP.S 0xffa0167e <_substr+0x2e>;

ffa016d4 <_sprintf_int>:
ffa016d4:	fb 05       	[--SP] = (R7:7, P5:3);
ffa016d6:	01 0c       	CC = R1 == 0x0;
ffa016d8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa016dc:	00 34       	I0 = R0;
ffa016de:	11 30       	R2 = R1;
ffa016e0:	1a 14       	IF !CC JUMP 0xffa01714 <_sprintf_int+0x40> (BP);
ffa016e2:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa016e6:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa016ea:	5a 91       	P2 = [P3];
ffa016ec:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa016ee:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa016f0:	10 9b       	B[P2] = R0;
ffa016f2:	88 32       	P1 = I0;
ffa016f4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa016f6:	0b 52       	R0 = R3 - R1;
ffa016f8:	00 32       	P0 = R0;
ffa016fa:	5a 91       	P2 = [P3];
ffa016fc:	09 64       	R1 += 0x1;		/* (  1) */
ffa016fe:	99 08       	CC = R1 < R3;
ffa01700:	82 5a       	P2 = P2 + P0;
ffa01702:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa01706:	08 9a       	B[P1++] = R0;
ffa01708:	f7 1f       	IF CC JUMP 0xffa016f6 <_sprintf_int+0x22> (BP);
ffa0170a:	01 e8 00 00 	UNLINK;
ffa0170e:	03 30       	R0 = R3;
ffa01710:	bb 05       	(R7:7, P5:3) = [SP++];
ffa01712:	10 00       	RTS;
ffa01714:	01 0d       	CC = R1 <= 0x0;
ffa01716:	2d 18       	IF CC JUMP 0xffa01770 <_sprintf_int+0x9c>;
ffa01718:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa0171c:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa01720:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01722:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa01726:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa0172a:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa0172c:	b2 e0 20 50 	LSETUP(0xffa01730 <_sprintf_int+0x5c>, 0xffa0176c <_sprintf_int+0x98>) LC1 = P5;
ffa01730:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa01734:	59 91 00 00 
ffa01738:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa0173c:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa01740:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa01744:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa01748:	0b c4 00 00 	R0 = (A0 += A1);
ffa0174c:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa01750:	10 4d       	R0 >>>= 0x2;
ffa01752:	08 52       	R0 = R0 - R1;
ffa01754:	00 32       	P0 = R0;
ffa01756:	13 32       	P2 = R3;
ffa01758:	0b 64       	R3 += 0x1;		/* (  1) */
ffa0175a:	40 0d       	CC = P0 <= 0x0;
ffa0175c:	51 5a       	P1 = P1 + P2;
ffa0175e:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa01760:	92 5a       	P2 = P2 << 0x1;
ffa01762:	4a 30       	R1 = P2;
ffa01764:	0a 52       	R0 = R2 - R1;
ffa01766:	80 65       	R0 += 0x30;		/* ( 48) */
ffa01768:	08 9b       	B[P1] = R0;
ffa0176a:	39 18       	IF CC JUMP 0xffa017dc <_sprintf_int+0x108>;
ffa0176c:	50 30       	R2 = P0;
ffa0176e:	c2 2f       	JUMP.S 0xffa016f2 <_sprintf_int+0x1e>;
ffa01770:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01772:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa01774:	f8 4f       	R0 <<= 0x1f;
ffa01776:	90 52       	R2 = R0 - R2;
ffa01778:	02 0d       	CC = R2 <= 0x0;
ffa0177a:	3c 18       	IF CC JUMP 0xffa017f2 <_sprintf_int+0x11e>;
ffa0177c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa01780:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa01784:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa01786:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa0178a:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa0178e:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa01790:	b2 e0 1f 50 	LSETUP(0xffa01794 <_sprintf_int+0xc0>, 0xffa017ce <_sprintf_int+0xfa>) LC1 = P5;
ffa01794:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa01798:	59 91 00 00 
ffa0179c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa017a0:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa017a4:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa017a8:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa017ac:	0b c4 00 00 	R0 = (A0 += A1);
ffa017b0:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa017b4:	10 4d       	R0 >>>= 0x2;
ffa017b6:	08 52       	R0 = R0 - R1;
ffa017b8:	00 32       	P0 = R0;
ffa017ba:	61 5a       	P1 = P1 + P4;
ffa017bc:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa017be:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa017c0:	92 5a       	P2 = P2 << 0x1;
ffa017c2:	4a 30       	R1 = P2;
ffa017c4:	0a 52       	R0 = R2 - R1;
ffa017c6:	80 65       	R0 += 0x30;		/* ( 48) */
ffa017c8:	40 0d       	CC = P0 <= 0x0;
ffa017ca:	08 9b       	B[P1] = R0;
ffa017cc:	0f 18       	IF CC JUMP 0xffa017ea <_sprintf_int+0x116>;
ffa017ce:	50 30       	R2 = P0;
ffa017d0:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa017d2:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa017d4:	5a 91       	P2 = [P3];
ffa017d6:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa017d8:	8a 5a       	P2 = P2 + P1;
ffa017da:	10 9b       	B[P2] = R0;
ffa017dc:	03 0d       	CC = R3 <= 0x0;
ffa017de:	8a 17       	IF !CC JUMP 0xffa016f2 <_sprintf_int+0x1e> (BP);
ffa017e0:	01 e8 00 00 	UNLINK;
ffa017e4:	03 30       	R0 = R3;
ffa017e6:	bb 05       	(R7:7, P5:3) = [SP++];
ffa017e8:	10 00       	RTS;
ffa017ea:	5c 30       	R3 = P4;
ffa017ec:	4c 32       	P1 = P4;
ffa017ee:	0b 64       	R3 += 0x1;		/* (  1) */
ffa017f0:	f2 2f       	JUMP.S 0xffa017d4 <_sprintf_int+0x100>;
ffa017f2:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa017f6:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa017f8:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa017fa:	0b e1 fc 0d 	P3.L = 0xdfc;		/* (3580)	P3=0xff900dfc <_printf_temp> */
ffa017fe:	eb 2f       	JUMP.S 0xffa017d4 <_sprintf_int+0x100>;

ffa01800 <_sprintf_hex>:
ffa01800:	10 32       	P2 = R0;
ffa01802:	78 05       	[--SP] = (R7:7);
ffa01804:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa01806:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0180a:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa0180c:	10 9b       	B[P2] = R0;
ffa0180e:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa01812:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa01816:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa01818:	12 6c       	P2 += 0x2;		/* (  2) */
ffa0181a:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa0181c:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa0181e:	b2 e0 09 10 	LSETUP(0xffa01822 <_sprintf_hex+0x22>, 0xffa01830 <_sprintf_hex+0x30>) LC1 = P1;
ffa01822:	01 30       	R0 = R1;
ffa01824:	10 40       	R0 >>>= R2;
ffa01826:	18 54       	R0 = R0 & R3;
ffa01828:	38 09       	CC = R0 <= R7;
ffa0182a:	09 1c       	IF CC JUMP 0xffa0183c <_sprintf_hex+0x3c> (BP);
ffa0182c:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa0182e:	10 9a       	B[P2++] = R0;
ffa01830:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa01832:	01 e8 00 00 	UNLINK;
ffa01836:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa01838:	38 05       	(R7:7) = [SP++];
ffa0183a:	10 00       	RTS;
ffa0183c:	80 65       	R0 += 0x30;		/* ( 48) */
ffa0183e:	f8 2f       	JUMP.S 0xffa0182e <_sprintf_hex+0x2e>;

ffa01840 <_strprintf_int>:
ffa01840:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01842:	29 32       	P5 = R1;
ffa01844:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01848:	0a 30       	R1 = R2;
ffa0184a:	38 30       	R7 = R0;
ffa0184c:	ff e3 44 ff 	CALL 0xffa016d4 <_sprintf_int>;
ffa01850:	29 91       	R1 = [P5];
ffa01852:	41 50       	R1 = R1 + R0;
ffa01854:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa01858:	29 93 00 00 
ffa0185c:	01 e8 00 00 	UNLINK;
ffa01860:	07 30       	R0 = R7;
ffa01862:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01864:	10 00       	RTS;
	...

ffa01868 <_strprintf_hex>:
ffa01868:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0186a:	29 32       	P5 = R1;
ffa0186c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01870:	0a 30       	R1 = R2;
ffa01872:	38 30       	R7 = R0;
ffa01874:	ff e3 c6 ff 	CALL 0xffa01800 <_sprintf_hex>;
ffa01878:	29 91       	R1 = [P5];
ffa0187a:	41 50       	R1 = R1 + R0;
ffa0187c:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa01880:	29 93 00 00 
ffa01884:	01 e8 00 00 	UNLINK;
ffa01888:	07 30       	R0 = R7;
ffa0188a:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0188c:	10 00       	RTS;
	...

ffa01890 <_atoi>:
ffa01890:	08 32       	P1 = R0;
ffa01892:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa01894:	f5 05       	[--SP] = (R7:6, P5:5);
ffa01896:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0189a:	48 99       	R0 = B[P1] (X);
ffa0189c:	10 08       	CC = R0 == R2;
ffa0189e:	25 18       	IF CC JUMP 0xffa018e8 <_atoi+0x58>;
ffa018a0:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa018a2:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa018a4:	41 32       	P0 = P1;
ffa018a6:	08 6c       	P0 += 0x1;		/* (  1) */
ffa018a8:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa018aa:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa018ac:	12 20       	JUMP.S 0xffa018d0 <_atoi+0x40>;
ffa018ae:	8b 08       	CC = R3 < R1;
ffa018b0:	16 10       	IF !CC JUMP 0xffa018dc <_atoi+0x4c>;
ffa018b2:	10 43       	R0 = R2.B (X);
ffa018b4:	28 32       	P5 = R0;
ffa018b6:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa018b8:	40 99       	R0 = B[P0] (X);
ffa018ba:	80 66       	R0 += -0x30;		/* (-48) */
ffa018bc:	40 43       	R0 = R0.B (Z);
ffa018be:	aa 5a       	P2 = P2 + P5;
ffa018c0:	10 0a       	CC = R0 <= R2 (IU);
ffa018c2:	82 6e       	P2 += -0x30;		/* (-48) */
ffa018c4:	09 6c       	P1 += 0x1;		/* (  1) */
ffa018c6:	03 14       	IF !CC JUMP 0xffa018cc <_atoi+0x3c> (BP);
ffa018c8:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa018ca:	92 5a       	P2 = P2 << 0x1;
ffa018cc:	0b 64       	R3 += 0x1;		/* (  1) */
ffa018ce:	08 6c       	P0 += 0x1;		/* (  1) */
ffa018d0:	4a 99       	R2 = B[P1] (X);
ffa018d2:	02 30       	R0 = R2;
ffa018d4:	80 66       	R0 += -0x30;		/* (-48) */
ffa018d6:	40 43       	R0 = R0.B (Z);
ffa018d8:	30 0a       	CC = R0 <= R6 (IU);
ffa018da:	ea 1f       	IF CC JUMP 0xffa018ae <_atoi+0x1e> (BP);
ffa018dc:	42 30       	R0 = P2;
ffa018de:	f8 40       	R0 *= R7;
ffa018e0:	01 e8 00 00 	UNLINK;
ffa018e4:	b5 05       	(R7:6, P5:5) = [SP++];
ffa018e6:	10 00       	RTS;
ffa018e8:	09 6c       	P1 += 0x1;		/* (  1) */
ffa018ea:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa018ec:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa018ee:	db 2f       	JUMP.S 0xffa018a4 <_atoi+0x14>;

ffa018f0 <_udelay>:
ffa018f0:	00 0d       	CC = R0 <= 0x0;
ffa018f2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa018f6:	0b 18       	IF CC JUMP 0xffa0190c <_udelay+0x1c>;
ffa018f8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa018fa:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa018fe:	b2 e0 03 20 	LSETUP(0xffa01902 <_udelay+0x12>, 0xffa01904 <_udelay+0x14>) LC1 = P2;
ffa01902:	00 00       	NOP;
ffa01904:	00 00       	NOP;
ffa01906:	09 64       	R1 += 0x1;		/* (  1) */
ffa01908:	08 08       	CC = R0 == R1;
ffa0190a:	f8 17       	IF !CC JUMP 0xffa018fa <_udelay+0xa> (BP);
ffa0190c:	01 e8 00 00 	UNLINK;
ffa01910:	10 00       	RTS;
	...

ffa01914 <_bfin_EMAC_send_check>:
ffa01914:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa01918:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0191c:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01920:	50 95       	R0 = W[P2] (X);
ffa01922:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa01924:	00 02       	R0 = CC;
ffa01926:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa01928:	01 e8 00 00 	UNLINK;
ffa0192c:	10 00       	RTS;
	...

ffa01930 <_FormatIPAddress>:
ffa01930:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01934:	18 30       	R3 = R0;
ffa01936:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa0193a:	40 4f       	R0 <<= 0x8;
ffa0193c:	52 43       	R2 = R2.B (Z);
ffa0193e:	10 56       	R0 = R0 | R2;
ffa01940:	40 4f       	R0 <<= 0x8;
ffa01942:	49 43       	R1 = R1.B (Z);
ffa01944:	08 56       	R0 = R0 | R1;
ffa01946:	40 4f       	R0 <<= 0x8;
ffa01948:	5b 43       	R3 = R3.B (Z);
ffa0194a:	18 56       	R0 = R0 | R3;
ffa0194c:	01 e8 00 00 	UNLINK;
ffa01950:	10 00       	RTS;
	...

ffa01954 <_bfin_EMAC_halt>:
ffa01954:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01958:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0195a:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa0195e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01962:	10 93       	[P2] = R0;
ffa01964:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01968:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa0196c:	10 97       	W[P2] = R0;
ffa0196e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa01972:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01976:	10 97       	W[P2] = R0;
ffa01978:	01 e8 00 00 	UNLINK;
ffa0197c:	10 00       	RTS;
	...

ffa01980 <_PollMdcDone>:
ffa01980:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01984:	02 20       	JUMP.S 0xffa01988 <_PollMdcDone+0x8>;
ffa01986:	00 00       	NOP;
ffa01988:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa0198c:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01990:	10 91       	R0 = [P2];
ffa01992:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01994:	f9 17       	IF !CC JUMP 0xffa01986 <_PollMdcDone+0x6> (BP);
ffa01996:	01 e8 00 00 	UNLINK;
ffa0199a:	10 00       	RTS;

ffa0199c <_WrPHYReg>:
ffa0199c:	68 05       	[--SP] = (R7:5);
ffa0199e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa019a2:	28 30       	R5 = R0;
ffa019a4:	31 30       	R6 = R1;
ffa019a6:	3a 30       	R7 = R2;
ffa019a8:	ff e3 ec ff 	CALL 0xffa01980 <_PollMdcDone>;
ffa019ac:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa019ae:	b0 55       	R6 = R0 & R6;
ffa019b0:	28 54       	R0 = R0 & R5;
ffa019b2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa019b6:	58 4f       	R0 <<= 0xb;
ffa019b8:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa019ba:	ff 42       	R7 = R7.L (Z);
ffa019bc:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa019c0:	36 4f       	R6 <<= 0x6;
ffa019c2:	08 56       	R0 = R0 | R1;
ffa019c4:	17 93       	[P2] = R7;
ffa019c6:	86 57       	R6 = R6 | R0;
ffa019c8:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa019ca:	16 93       	[P2] = R6;
ffa019cc:	01 e8 00 00 	UNLINK;
ffa019d0:	28 05       	(R7:5) = [SP++];
ffa019d2:	10 00       	RTS;

ffa019d4 <_RdPHYReg>:
ffa019d4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa019d6:	29 32       	P5 = R1;
ffa019d8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa019dc:	38 30       	R7 = R0;
ffa019de:	ff e3 d1 ff 	CALL 0xffa01980 <_PollMdcDone>;
ffa019e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa019e6:	45 30       	R0 = P5;
ffa019e8:	c0 42       	R0 = R0.L (Z);
ffa019ea:	28 32       	P5 = R0;
ffa019ec:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa019ee:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa019f2:	55 30       	R2 = P5;
ffa019f4:	42 54       	R1 = R2 & R0;
ffa019f6:	38 54       	R0 = R0 & R7;
ffa019f8:	58 4f       	R0 <<= 0xb;
ffa019fa:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa019fc:	31 4f       	R1 <<= 0x6;
ffa019fe:	41 56       	R1 = R1 | R0;
ffa01a00:	11 93       	[P2] = R1;
ffa01a02:	ff e3 bf ff 	CALL 0xffa01980 <_PollMdcDone>;
ffa01a06:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa01a0a:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01a0e:	10 91       	R0 = [P2];
ffa01a10:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa01a14:	0a e1 04 0e 	P2.L = 0xe04;		/* (3588)	P2=0xff900e04 <_PHYregs> */
ffa01a18:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa01a1a:	10 97       	W[P2] = R0;
ffa01a1c:	01 e8 00 00 	UNLINK;
ffa01a20:	c0 42       	R0 = R0.L (Z);
ffa01a22:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01a24:	10 00       	RTS;
	...

ffa01a28 <_SoftResetPHY>:
ffa01a28:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a2a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a2c:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa01a30:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01a34:	ff e3 b4 ff 	CALL 0xffa0199c <_WrPHYReg>;
ffa01a38:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a3a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a3c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01a3e:	ff e3 af ff 	CALL 0xffa0199c <_WrPHYReg>;
ffa01a42:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a44:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01a46:	ff e3 c7 ff 	CALL 0xffa019d4 <_RdPHYReg>;
ffa01a4a:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa01a4c:	fb 1f       	IF CC JUMP 0xffa01a42 <_SoftResetPHY+0x1a> (BP);
ffa01a4e:	01 e8 00 00 	UNLINK;
ffa01a52:	10 00       	RTS;

ffa01a54 <_NetCksum>:
ffa01a54:	01 0d       	CC = R1 <= 0x0;
ffa01a56:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01a5a:	10 18       	IF CC JUMP 0xffa01a7a <_NetCksum+0x26>;
ffa01a5c:	10 32       	P2 = R0;
ffa01a5e:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01a60:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01a62:	0a 64       	R2 += 0x1;		/* (  1) */
ffa01a64:	10 94       	R0 = W[P2++] (Z);
ffa01a66:	0a 08       	CC = R2 == R1;
ffa01a68:	c3 50       	R3 = R3 + R0;
ffa01a6a:	fc 17       	IF !CC JUMP 0xffa01a62 <_NetCksum+0xe> (BP);
ffa01a6c:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa01a70:	03 50       	R0 = R3 + R0;
ffa01a72:	c0 42       	R0 = R0.L (Z);
ffa01a74:	01 e8 00 00 	UNLINK;
ffa01a78:	10 00       	RTS;
ffa01a7a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01a7c:	01 e8 00 00 	UNLINK;
ffa01a80:	10 00       	RTS;
	...

ffa01a84 <_htons>:
ffa01a84:	08 30       	R1 = R0;
ffa01a86:	c0 42       	R0 = R0.L (Z);
ffa01a88:	40 4e       	R0 >>= 0x8;
ffa01a8a:	41 4f       	R1 <<= 0x8;
ffa01a8c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01a90:	08 56       	R0 = R0 | R1;
ffa01a92:	c0 42       	R0 = R0.L (Z);
ffa01a94:	01 e8 00 00 	UNLINK;
ffa01a98:	10 00       	RTS;
	...

ffa01a9c <_htonl>:
ffa01a9c:	10 30       	R2 = R0;
ffa01a9e:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa01aa2:	40 43       	R0 = R0.B (Z);
ffa01aa4:	49 43       	R1 = R1.B (Z);
ffa01aa6:	40 4f       	R0 <<= 0x8;
ffa01aa8:	08 56       	R0 = R0 | R1;
ffa01aaa:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa01aae:	40 4f       	R0 <<= 0x8;
ffa01ab0:	49 43       	R1 = R1.B (Z);
ffa01ab2:	08 56       	R0 = R0 | R1;
ffa01ab4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01ab8:	40 4f       	R0 <<= 0x8;
ffa01aba:	c2 4e       	R2 >>= 0x18;
ffa01abc:	10 56       	R0 = R0 | R2;
ffa01abe:	01 e8 00 00 	UNLINK;
ffa01ac2:	10 00       	RTS;

ffa01ac4 <_pack4chars>:
ffa01ac4:	08 32       	P1 = R0;
ffa01ac6:	10 32       	P2 = R0;
ffa01ac8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01acc:	01 e8 00 00 	UNLINK;
ffa01ad0:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa01ad4:	10 98       	R0 = B[P2++] (Z);
ffa01ad6:	41 4f       	R1 <<= 0x8;
ffa01ad8:	08 50       	R0 = R0 + R1;
ffa01ada:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa01ade:	81 4f       	R1 <<= 0x10;
ffa01ae0:	08 50       	R0 = R0 + R1;
ffa01ae2:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa01ae6:	c1 4f       	R1 <<= 0x18;
ffa01ae8:	08 50       	R0 = R0 + R1;
ffa01aea:	10 00       	RTS;

ffa01aec <_ip_header_setup>:
ffa01aec:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01aee:	28 32       	P5 = R0;
ffa01af0:	21 32       	P4 = R1;
ffa01af2:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01af6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01afa:	32 30       	R6 = R2;
ffa01afc:	28 9b       	B[P5] = R0;
ffa01afe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b00:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa01b04:	27 91       	R7 = [P4];
ffa01b06:	f8 42       	R0 = R7.L (Z);
ffa01b08:	ff e3 be ff 	CALL 0xffa01a84 <_htons>;
ffa01b0c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e04 <_PHYregs> */
ffa01b10:	0a e1 4e 0e 	P2.L = 0xe4e;		/* (3662)	P2=0xff900e4e <_NetIPID> */
ffa01b14:	68 b4       	W[P5 + 0x2] = R0;
ffa01b16:	10 95       	R0 = W[P2] (Z);
ffa01b18:	08 30       	R1 = R0;
ffa01b1a:	09 64       	R1 += 0x1;		/* (  1) */
ffa01b1c:	67 67       	R7 += -0x14;		/* (-20) */
ffa01b1e:	11 97       	W[P2] = R1;
ffa01b20:	27 93       	[P4] = R7;
ffa01b22:	ff e3 b1 ff 	CALL 0xffa01a84 <_htons>;
ffa01b26:	a8 b4       	W[P5 + 0x4] = R0;
ffa01b28:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01b2c:	ff e3 ac ff 	CALL 0xffa01a84 <_htons>;
ffa01b30:	e8 b4       	W[P5 + 0x6] = R0;
ffa01b32:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa01b36:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01b3a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4e <_NetIPID> */
ffa01b3e:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa01b42:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01b46:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa01b4a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b4c:	68 b5       	W[P5 + 0xa] = R0;
ffa01b4e:	10 91       	R0 = [P2];
ffa01b50:	e8 b0       	[P5 + 0xc] = R0;
ffa01b52:	2e b1       	[P5 + 0x10] = R6;
ffa01b54:	45 30       	R0 = P5;
ffa01b56:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01b58:	ff e3 7e ff 	CALL 0xffa01a54 <_NetCksum>;
ffa01b5c:	c0 43       	R0 =~ R0;
ffa01b5e:	68 b5       	W[P5 + 0xa] = R0;
ffa01b60:	01 e8 00 00 	UNLINK;
ffa01b64:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01b66:	45 30       	R0 = P5;
ffa01b68:	b4 05       	(R7:6, P5:4) = [SP++];
ffa01b6a:	10 00       	RTS;

ffa01b6c <_ip_header_checksum>:
ffa01b6c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b70:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa01b72:	ff e3 71 ff 	CALL 0xffa01a54 <_NetCksum>;
ffa01b76:	08 02       	CC = R0;
ffa01b78:	00 02       	R0 = CC;
ffa01b7a:	01 e8 00 00 	UNLINK;
ffa01b7e:	10 00       	RTS;

ffa01b80 <_icmp_header_setup>:
ffa01b80:	00 32       	P0 = R0;
ffa01b82:	c5 04       	[--SP] = (P5:5);
ffa01b84:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b86:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01b8a:	29 32       	P5 = R1;
ffa01b8c:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa01b90:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01b92:	40 b4       	W[P0 + 0x2] = R0;
ffa01b94:	38 ab       	R0 = W[FP + 0x18] (X);
ffa01b96:	80 b4       	W[P0 + 0x4] = R0;
ffa01b98:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa01b9a:	02 9b       	B[P0] = R2;
ffa01b9c:	c0 b4       	W[P0 + 0x6] = R0;
ffa01b9e:	48 32       	P1 = P0;
ffa01ba0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01ba2:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa01ba4:	b2 e0 03 20 	LSETUP(0xffa01ba8 <_icmp_header_setup+0x28>, 0xffa01baa <_icmp_header_setup+0x2a>) LC1 = P2;
ffa01ba8:	08 94       	R0 = W[P1++] (Z);
ffa01baa:	41 50       	R1 = R1 + R0;
ffa01bac:	c8 42       	R0 = R1.L (Z);
ffa01bae:	81 4e       	R1 >>= 0x10;
ffa01bb0:	08 50       	R0 = R0 + R1;
ffa01bb2:	c0 43       	R0 =~ R0;
ffa01bb4:	40 b4       	W[P0 + 0x2] = R0;
ffa01bb6:	28 91       	R0 = [P5];
ffa01bb8:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa01bba:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01bbc:	01 e8 00 00 	UNLINK;
ffa01bc0:	28 93       	[P5] = R0;
ffa01bc2:	40 30       	R0 = P0;
ffa01bc4:	85 04       	(P5:5) = [SP++];
ffa01bc6:	10 00       	RTS;

ffa01bc8 <_udp_header_setup>:
ffa01bc8:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01bca:	28 32       	P5 = R0;
ffa01bcc:	21 32       	P4 = R1;
ffa01bce:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01bd2:	d0 42       	R0 = R2.L (Z);
ffa01bd4:	ff e3 58 ff 	CALL 0xffa01a84 <_htons>;
ffa01bd8:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa01bdc:	28 97       	W[P5] = R0;
ffa01bde:	07 30       	R0 = R7;
ffa01be0:	ff e3 52 ff 	CALL 0xffa01a84 <_htons>;
ffa01be4:	27 91       	R7 = [P4];
ffa01be6:	68 b4       	W[P5 + 0x2] = R0;
ffa01be8:	f8 42       	R0 = R7.L (Z);
ffa01bea:	ff e3 4d ff 	CALL 0xffa01a84 <_htons>;
ffa01bee:	a8 b4       	W[P5 + 0x4] = R0;
ffa01bf0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01bf2:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa01bf4:	e8 b4       	W[P5 + 0x6] = R0;
ffa01bf6:	01 e8 00 00 	UNLINK;
ffa01bfa:	45 6c       	P5 += 0x8;		/* (  8) */
ffa01bfc:	45 30       	R0 = P5;
ffa01bfe:	27 93       	[P4] = R7;
ffa01c00:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01c02:	10 00       	RTS;

ffa01c04 <_tcp_header_setup>:
ffa01c04:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01c06:	28 32       	P5 = R0;
ffa01c08:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01c0c:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01c10:	21 32       	P4 = R1;
ffa01c12:	3a 30       	R7 = R2;
ffa01c14:	ff e3 38 ff 	CALL 0xffa01a84 <_htons>;
ffa01c18:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa01c1c:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_TcpClientPort> */
ffa01c20:	28 97       	W[P5] = R0;
ffa01c22:	50 95       	R0 = W[P2] (X);
ffa01c24:	68 b4       	W[P5 + 0x2] = R0;
ffa01c26:	38 a2       	R0 = [FP + 0x20];
ffa01c28:	ff e3 3a ff 	CALL 0xffa01a9c <_htonl>;
ffa01c2c:	68 b0       	[P5 + 0x4] = R0;
ffa01c2e:	78 a2       	R0 = [FP + 0x24];
ffa01c30:	ff e3 36 ff 	CALL 0xffa01a9c <_htonl>;
ffa01c34:	a8 b0       	[P5 + 0x8] = R0;
ffa01c36:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01c3a:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01c3e:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa01c42:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa01c46:	ff e3 1f ff 	CALL 0xffa01a84 <_htons>;
ffa01c4a:	e8 b5       	W[P5 + 0xe] = R0;
ffa01c4c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c4e:	28 b6       	W[P5 + 0x10] = R0;
ffa01c50:	68 b6       	W[P5 + 0x12] = R0;
ffa01c52:	20 91       	R0 = [P4];
ffa01c54:	60 67       	R0 += -0x14;		/* (-20) */
ffa01c56:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa01c58:	01 e8 00 00 	UNLINK;
ffa01c5c:	20 93       	[P4] = R0;
ffa01c5e:	45 30       	R0 = P5;
ffa01c60:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01c62:	10 00       	RTS;

ffa01c64 <_DHCP_parse>:
ffa01c64:	f5 05       	[--SP] = (R7:6, P5:5);
ffa01c66:	09 0d       	CC = R1 <= 0x1;
ffa01c68:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01c6c:	10 32       	P2 = R0;
ffa01c6e:	33 18       	IF CC JUMP 0xffa01cd4 <_DHCP_parse+0x70>;
ffa01c70:	00 00       	NOP;
ffa01c72:	31 30       	R6 = R1;
ffa01c74:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01c76:	11 98       	R1 = B[P2++] (Z);
ffa01c78:	01 0c       	CC = R1 == 0x0;
ffa01c7a:	2b 1c       	IF CC JUMP 0xffa01cd0 <_DHCP_parse+0x6c> (BP);
ffa01c7c:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa01c80:	01 08       	CC = R1 == R0;
ffa01c82:	57 99       	R7 = B[P2] (X);
ffa01c84:	28 18       	IF CC JUMP 0xffa01cd4 <_DHCP_parse+0x70>;
ffa01c86:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa01c88:	6a 32       	P5 = P2;
ffa01c8a:	01 0a       	CC = R1 <= R0 (IU);
ffa01c8c:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa01c8e:	09 14       	IF !CC JUMP 0xffa01ca0 <_DHCP_parse+0x3c> (BP);
ffa01c90:	09 32       	P1 = R1;
ffa01c92:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_TcpClientPort> */
ffa01c96:	0a e1 a8 03 	P2.L = 0x3a8;		/* (936)	P2=0xff9003a8 */
ffa01c9a:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa01c9c:	52 91       	P2 = [P2];
ffa01c9e:	52 00       	JUMP (P2);
ffa01ca0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa01ca4:	00 e1 80 01 	R0.L = 0x180;		/* (384)	R0=0xff900180(-7339648) */
ffa01ca8:	ff e3 50 fb 	CALL 0xffa01348 <_printf_int>;
ffa01cac:	7f 43       	R7 = R7.B (Z);
ffa01cae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900180(-7339648) */
ffa01cb2:	00 e1 94 01 	R0.L = 0x194;		/* (404)	R0=0xff900194(-7339628) */
ffa01cb6:	0f 30       	R1 = R7;
ffa01cb8:	ff e3 48 fb 	CALL 0xffa01348 <_printf_int>;
ffa01cbc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900194(-7339628) */
ffa01cc0:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa01cc4:	ff e3 80 fa 	CALL 0xffa011c4 <_printf_str>;
ffa01cc8:	0f 32       	P1 = R7;
ffa01cca:	be 53       	R6 = R6 - R7;
ffa01ccc:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01cce:	8d 5a       	P2 = P5 + P1;
ffa01cd0:	0e 0d       	CC = R6 <= 0x1;
ffa01cd2:	d1 17       	IF !CC JUMP 0xffa01c74 <_DHCP_parse+0x10> (BP);
ffa01cd4:	01 e8 00 00 	UNLINK;
ffa01cd8:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01cda:	10 00       	RTS;
ffa01cdc:	45 30       	R0 = P5;
ffa01cde:	ff e3 f3 fe 	CALL 0xffa01ac4 <_pack4chars>;
ffa01ce2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff9003a8 */
ffa01ce6:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetSubnetMask> */
ffa01cea:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01cee:	10 93 00 00 
ffa01cf2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a64(-7337372) */
ffa01cf6:	00 e1 d8 00 	R0.L = 0xd8;		/* (216)	R0=0xff9000d8(-7339816) */
ffa01cfa:	ff e3 c9 fb 	CALL 0xffa0148c <_printf_ip>;
ffa01cfe:	7f 43       	R7 = R7.B (Z);
ffa01d00:	de 2f       	JUMP.S 0xffa01cbc <_DHCP_parse+0x58>;
ffa01d02:	45 30       	R0 = P5;
ffa01d04:	ff e3 e0 fe 	CALL 0xffa01ac4 <_pack4chars>;
ffa01d08:	08 30       	R1 = R0;
ffa01d0a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000d8(-7339816) */
ffa01d0e:	00 e1 e8 00 	R0.L = 0xe8;		/* (232)	R0=0xff9000e8(-7339800) */
ffa01d12:	ff e3 bd fb 	CALL 0xffa0148c <_printf_ip>;
ffa01d16:	7f 43       	R7 = R7.B (Z);
ffa01d18:	d2 2f       	JUMP.S 0xffa01cbc <_DHCP_parse+0x58>;
ffa01d1a:	45 30       	R0 = P5;
ffa01d1c:	ff e3 d4 fe 	CALL 0xffa01ac4 <_pack4chars>;
ffa01d20:	08 30       	R1 = R0;
ffa01d22:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000e8(-7339800) */
ffa01d26:	00 e1 f8 00 	R0.L = 0xf8;		/* (248)	R0=0xff9000f8(-7339784) */
ffa01d2a:	ff e3 b1 fb 	CALL 0xffa0148c <_printf_ip>;
ffa01d2e:	7f 43       	R7 = R7.B (Z);
ffa01d30:	c6 2f       	JUMP.S 0xffa01cbc <_DHCP_parse+0x58>;
ffa01d32:	45 30       	R0 = P5;
ffa01d34:	ff e3 c8 fe 	CALL 0xffa01ac4 <_pack4chars>;
ffa01d38:	08 30       	R1 = R0;
ffa01d3a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f8(-7339784) */
ffa01d3e:	00 e1 08 01 	R0.L = 0x108;		/* (264)	R0=0xff900108(-7339768) */
ffa01d42:	ff e3 a5 fb 	CALL 0xffa0148c <_printf_ip>;
ffa01d46:	7f 43       	R7 = R7.B (Z);
ffa01d48:	ba 2f       	JUMP.S 0xffa01cbc <_DHCP_parse+0x58>;
ffa01d4a:	45 30       	R0 = P5;
ffa01d4c:	ff e3 bc fe 	CALL 0xffa01ac4 <_pack4chars>;
ffa01d50:	ff e3 a6 fe 	CALL 0xffa01a9c <_htonl>;
ffa01d54:	08 30       	R1 = R0;
ffa01d56:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900108(-7339768) */
ffa01d5a:	00 e1 18 01 	R0.L = 0x118;		/* (280)	R0=0xff900118(-7339752) */
ffa01d5e:	ff e3 f5 fa 	CALL 0xffa01348 <_printf_int>;
ffa01d62:	7f 43       	R7 = R7.B (Z);
ffa01d64:	ac 2f       	JUMP.S 0xffa01cbc <_DHCP_parse+0x58>;
ffa01d66:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900118(-7339752) */
ffa01d6a:	29 99       	R1 = B[P5] (Z);
ffa01d6c:	00 e1 2c 01 	R0.L = 0x12c;		/* (300)	R0=0xff90012c(-7339732) */
ffa01d70:	ff e3 ec fa 	CALL 0xffa01348 <_printf_int>;
ffa01d74:	7f 43       	R7 = R7.B (Z);
ffa01d76:	a3 2f       	JUMP.S 0xffa01cbc <_DHCP_parse+0x58>;
ffa01d78:	45 30       	R0 = P5;
ffa01d7a:	ff e3 a5 fe 	CALL 0xffa01ac4 <_pack4chars>;
ffa01d7e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e7c <_NetSubnetMask> */
ffa01d82:	0a e1 48 0e 	P2.L = 0xe48;		/* (3656)	P2=0xff900e48 <_NetDHCPserv> */
ffa01d86:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01d8a:	10 93 00 00 
ffa01d8e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90012c(-7339732) */
ffa01d92:	00 e1 40 01 	R0.L = 0x140;		/* (320)	R0=0xff900140(-7339712) */
ffa01d96:	ff e3 7b fb 	CALL 0xffa0148c <_printf_ip>;
ffa01d9a:	7f 43       	R7 = R7.B (Z);
ffa01d9c:	90 2f       	JUMP.S 0xffa01cbc <_DHCP_parse+0x58>;
ffa01d9e:	45 30       	R0 = P5;
ffa01da0:	ff e3 92 fe 	CALL 0xffa01ac4 <_pack4chars>;
ffa01da4:	ff e3 7c fe 	CALL 0xffa01a9c <_htonl>;
ffa01da8:	08 30       	R1 = R0;
ffa01daa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900140(-7339712) */
ffa01dae:	00 e1 54 01 	R0.L = 0x154;		/* (340)	R0=0xff900154(-7339692) */
ffa01db2:	ff e3 cb fa 	CALL 0xffa01348 <_printf_int>;
ffa01db6:	7f 43       	R7 = R7.B (Z);
ffa01db8:	82 2f       	JUMP.S 0xffa01cbc <_DHCP_parse+0x58>;
ffa01dba:	45 30       	R0 = P5;
ffa01dbc:	ff e3 84 fe 	CALL 0xffa01ac4 <_pack4chars>;
ffa01dc0:	ff e3 6e fe 	CALL 0xffa01a9c <_htonl>;
ffa01dc4:	08 30       	R1 = R0;
ffa01dc6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900154(-7339692) */
ffa01dca:	00 e1 68 01 	R0.L = 0x168;		/* (360)	R0=0xff900168(-7339672) */
ffa01dce:	ff e3 bd fa 	CALL 0xffa01348 <_printf_int>;
ffa01dd2:	7f 43       	R7 = R7.B (Z);
ffa01dd4:	74 2f       	JUMP.S 0xffa01cbc <_DHCP_parse+0x58>;
	...

ffa01dd8 <_bfin_EMAC_send_nocopy>:
ffa01dd8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e48(-4190648) */
ffa01ddc:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01dde:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01de2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01de6:	10 97       	W[P2] = R0;
ffa01de8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01dec:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01df0:	50 95       	R0 = W[P2] (X);
ffa01df2:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01df4:	59 10       	IF !CC JUMP 0xffa01ea6 <_bfin_EMAC_send_nocopy+0xce>;
ffa01df6:	00 00       	NOP;
ffa01df8:	00 00       	NOP;
ffa01dfa:	00 00       	NOP;
ffa01dfc:	50 95       	R0 = W[P2] (X);
ffa01dfe:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01e00:	16 18       	IF CC JUMP 0xffa01e2c <_bfin_EMAC_send_nocopy+0x54>;
ffa01e02:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0008 */
ffa01e06:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01e0a:	b2 e0 09 10 	LSETUP(0xffa01e0e <_bfin_EMAC_send_nocopy+0x36>, 0xffa01e1c <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa01e0e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01e12:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01e16:	50 95       	R0 = W[P2] (X);
ffa01e18:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01e1a:	09 18       	IF CC JUMP 0xffa01e2c <_bfin_EMAC_send_nocopy+0x54>;
ffa01e1c:	00 00       	NOP;
ffa01e1e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa01e22:	00 e1 b4 01 	R0.L = 0x1b4;		/* (436)	R0=0xff9001b4(-7339596) */
ffa01e26:	ff e3 cf f9 	CALL 0xffa011c4 <_printf_str>;
ffa01e2a:	30 20       	JUMP.S 0xffa01e8a <_bfin_EMAC_send_nocopy+0xb2>;
ffa01e2c:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa01e30:	08 e1 4c 0e 	P0.L = 0xe4c;		/* (3660)	P0=0xff900e4c <_txIdx> */
ffa01e34:	00 95       	R0 = W[P0] (Z);
ffa01e36:	10 32       	P2 = R0;
ffa01e38:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01e3c:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa01e40:	42 95       	R2 = W[P0] (X);
ffa01e42:	d1 42       	R1 = R2.L (Z);
ffa01e44:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01e46:	52 91       	P2 = [P2];
ffa01e48:	11 0d       	CC = R1 <= 0x2;
ffa01e4a:	90 a1       	R0 = [P2 + 0x18];
ffa01e4c:	50 b0       	[P2 + 0x4] = R0;
ffa01e4e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e50:	90 b2       	[P2 + 0x28] = R0;
ffa01e52:	11 32       	P2 = R1;
ffa01e54:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa01e56:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01e5a:	08 91       	R0 = [P1];
ffa01e5c:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01e60:	10 93       	[P2] = R0;
ffa01e62:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01e66:	0a e1 9a 04 	P2.L = 0x49a;		/* (1178)	P2=0xff90049a <_txdmacfg> */
ffa01e6a:	50 95       	R0 = W[P2] (X);
ffa01e6c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0049a(-4193126) */
ffa01e70:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01e74:	10 97       	W[P2] = R0;
ffa01e76:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01e7a:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01e7e:	10 91       	R0 = [P2];
ffa01e80:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01e82:	10 93       	[P2] = R0;
ffa01e84:	0d 1c       	IF CC JUMP 0xffa01e9e <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa01e86:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e88:	00 97       	W[P0] = R0;
ffa01e8a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01e8e:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01e90:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01e94:	10 97       	W[P2] = R0;
ffa01e96:	01 e8 00 00 	UNLINK;
ffa01e9a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01e9c:	10 00       	RTS;
ffa01e9e:	02 30       	R0 = R2;
ffa01ea0:	08 64       	R0 += 0x1;		/* (  1) */
ffa01ea2:	00 97       	W[P0] = R0;
ffa01ea4:	f3 2f       	JUMP.S 0xffa01e8a <_bfin_EMAC_send_nocopy+0xb2>;
ffa01ea6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01eaa:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa01eae:	ff e3 8b f9 	CALL 0xffa011c4 <_printf_str>;
ffa01eb2:	ec 2f       	JUMP.S 0xffa01e8a <_bfin_EMAC_send_nocopy+0xb2>;

ffa01eb4 <_DHCP_tx>:
ffa01eb4:	e3 05       	[--SP] = (R7:4, P5:3);
ffa01eb6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa01eba:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01ebe:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa01ec2:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa01ec6:	10 95 00 00 
ffa01eca:	10 32       	P2 = R0;
ffa01ecc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e50 <_txbuf> */
ffa01ed0:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa01ed4:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa01ed8:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01eda:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01edc:	52 91       	P2 = [P2];
ffa01ede:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa01ee2:	f1 bb 00 00 
ffa01ee6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90000b */
ffa01eea:	0d e1 74 0e 	P5.L = 0xe74;		/* (3700)	P5=0xff900e74 <_NetOurMAC> */
ffa01eee:	94 ad       	P4 = [P2 + 0x18];
ffa01ef0:	1a 32       	P3 = R2;
ffa01ef2:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01ef4:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01ef6:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa01efa:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa01efe:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa01f02:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa01f06:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa01f0a:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa01f0e:	20 97       	W[P4] = R0;
ffa01f10:	68 99       	R0 = B[P5] (X);
ffa01f12:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa01f16:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01f1a:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa01f1e:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01f22:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa01f26:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01f2a:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa01f2e:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01f32:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa01f36:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01f3a:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa01f3e:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01f42:	ff e3 a1 fd 	CALL 0xffa01a84 <_htons>;
ffa01f46:	e0 b5       	W[P4 + 0xe] = R0;
ffa01f48:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01f4c:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa01f50:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa01f54:	04 50       	R0 = R4 + R0;
ffa01f56:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa01f5a:	c0 42       	R0 = R0.L (Z);
ffa01f5c:	ff e3 94 fd 	CALL 0xffa01a84 <_htons>;
ffa01f60:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa01f64:	0a e1 4e 0e 	P2.L = 0xe4e;		/* (3662)	P2=0xff900e4e <_NetIPID> */
ffa01f68:	60 b6       	W[P4 + 0x12] = R0;
ffa01f6a:	10 95       	R0 = W[P2] (Z);
ffa01f6c:	08 30       	R1 = R0;
ffa01f6e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01f70:	11 97       	W[P2] = R1;
ffa01f72:	ff e3 89 fd 	CALL 0xffa01a84 <_htons>;
ffa01f76:	a0 b6       	W[P4 + 0x14] = R0;
ffa01f78:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01f7c:	ff e3 84 fd 	CALL 0xffa01a84 <_htons>;
ffa01f80:	e0 b6       	W[P4 + 0x16] = R0;
ffa01f82:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01f84:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa01f88:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa01f8c:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa01f90:	66 b7 00 00 
ffa01f94:	44 30       	R0 = P4;
ffa01f96:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01f98:	e7 b1       	[P4 + 0x1c] = R7;
ffa01f9a:	23 be       	[P4 + 0x20] = P3;
ffa01f9c:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01f9e:	ff e3 5b fd 	CALL 0xffa01a54 <_NetCksum>;
ffa01fa2:	c0 43       	R0 =~ R0;
ffa01fa4:	60 b7       	W[P4 + 0x1a] = R0;
ffa01fa6:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa01faa:	ff e3 6d fd 	CALL 0xffa01a84 <_htons>;
ffa01fae:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa01fb2:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa01fb6:	ff e3 67 fd 	CALL 0xffa01a84 <_htons>;
ffa01fba:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa01fbe:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa01fc2:	04 50       	R0 = R4 + R0;
ffa01fc4:	c0 42       	R0 = R0.L (Z);
ffa01fc6:	ff e3 5f fd 	CALL 0xffa01a84 <_htons>;
ffa01fca:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa01fce:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01fd0:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa01fd4:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa01fd8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e4e(-4190642) */
ffa01fdc:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01fde:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa01fe2:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa01fe6:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa01fea:	10 91       	R0 = [P2];
ffa01fec:	20 b3       	[P4 + 0x30] = R0;
ffa01fee:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa01ff2:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa01ff6:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa01ffa:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa01ffe:	a7 b3       	[P4 + 0x38] = R7;
ffa02000:	e7 b3       	[P4 + 0x3c] = R7;
ffa02002:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa02006:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa0200a:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa0200e:	ff e3 47 fd 	CALL 0xffa01a9c <_htonl>;
ffa02012:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa02016:	68 99       	R0 = B[P5] (X);
ffa02018:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa0201c:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02020:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa02024:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02028:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa0202c:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02030:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa02034:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02038:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa0203c:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02040:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa02044:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa02048:	54 5a       	P1 = P4 + P2;
ffa0204a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0204c:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa0204e:	b2 e0 02 20 	LSETUP(0xffa02052 <_DHCP_tx+0x19e>, 0xffa02052 <_DHCP_tx+0x19e>) LC1 = P2;
ffa02052:	08 9a       	B[P1++] = R0;
ffa02054:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa02058:	54 5a       	P1 = P4 + P2;
ffa0205a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0205c:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa0205e:	b2 e0 02 20 	LSETUP(0xffa02062 <_DHCP_tx+0x1ae>, 0xffa02062 <_DHCP_tx+0x1ae>) LC1 = P2;
ffa02062:	08 92       	[P1++] = R0;
ffa02064:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa02068:	54 5a       	P1 = P4 + P2;
ffa0206a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0206c:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa0206e:	b2 e0 02 20 	LSETUP(0xffa02072 <_DHCP_tx+0x1be>, 0xffa02072 <_DHCP_tx+0x1be>) LC1 = P2;
ffa02072:	08 92       	[P1++] = R0;
ffa02074:	44 30       	R0 = P4;
ffa02076:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa0207a:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa0207e:	f0 b9 00 00 
ffa02082:	14 30       	R2 = R4;
ffa02084:	ff e3 48 fa 	CALL 0xffa01514 <_memcpy_>;
ffa02088:	01 e8 00 00 	UNLINK;
ffa0208c:	a3 05       	(R7:4, P5:3) = [SP++];
ffa0208e:	ff e2 a5 fe 	JUMP.L 0xffa01dd8 <_bfin_EMAC_send_nocopy>;
	...

ffa02094 <_DHCP_tx_discover>:
ffa02094:	c5 04       	[--SP] = (P5:5);
ffa02096:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e74 <_NetOurMAC> */
ffa0209a:	0d e1 48 0e 	P5.L = 0xe48;		/* (3656)	P5=0xff900e48 <_NetDHCPserv> */
ffa0209e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa020a0:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa020a4:	28 93       	[P5] = R0;
ffa020a6:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa020a8:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa020ac:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa020ae:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa020b2:	b8 e6 fe ff 	B[FP + -0x2] = R0;
ffa020b6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa020b8:	b8 e6 ff ff 	B[FP + -0x1] = R0;
ffa020bc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa020c0:	00 e1 cc 01 	R0.L = 0x1cc;		/* (460)	R0=0xff9001cc(-7339572) */
ffa020c4:	ff e3 80 f8 	CALL 0xffa011c4 <_printf_str>;
ffa020c8:	4f 30       	R1 = FP;
ffa020ca:	2a 91       	R2 = [P5];
ffa020cc:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa020ce:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa020d0:	ff e3 f2 fe 	CALL 0xffa01eb4 <_DHCP_tx>;
ffa020d4:	01 e8 00 00 	UNLINK;
ffa020d8:	85 04       	(P5:5) = [SP++];
ffa020da:	10 00       	RTS;

ffa020dc <_bfin_EMAC_send>:
ffa020dc:	c4 04       	[--SP] = (P5:4);
ffa020de:	01 0d       	CC = R1 <= 0x0;
ffa020e0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa020e4:	18 30       	R3 = R0;
ffa020e6:	11 30       	R2 = R1;
ffa020e8:	90 18       	IF CC JUMP 0xffa02208 <_bfin_EMAC_send+0x12c>;
ffa020ea:	00 00       	NOP;
ffa020ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00020(-4194272) */
ffa020f0:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa020f4:	50 95       	R0 = W[P2] (X);
ffa020f6:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa020f8:	74 10       	IF !CC JUMP 0xffa021e0 <_bfin_EMAC_send+0x104>;
ffa020fa:	00 00       	NOP;
ffa020fc:	00 00       	NOP;
ffa020fe:	00 00       	NOP;
ffa02100:	50 95       	R0 = W[P2] (X);
ffa02102:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa02104:	17 18       	IF CC JUMP 0xffa02132 <_bfin_EMAC_send+0x56>;
ffa02106:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0e50 */
ffa0210a:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa0210e:	b2 e0 09 10 	LSETUP(0xffa02112 <_bfin_EMAC_send+0x36>, 0xffa02120 <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa02112:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa02116:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa0211a:	50 95       	R0 = W[P2] (X);
ffa0211c:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0211e:	0a 18       	IF CC JUMP 0xffa02132 <_bfin_EMAC_send+0x56>;
ffa02120:	00 00       	NOP;
ffa02122:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa02126:	00 e1 fc 01 	R0.L = 0x1fc;		/* (508)	R0=0xff9001fc(-7339524) */
ffa0212a:	ff e3 4d f8 	CALL 0xffa011c4 <_printf_str>;
ffa0212e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02130:	53 20       	JUMP.S 0xffa021d6 <_bfin_EMAC_send+0xfa>;
ffa02132:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900000 <_l1_data_a> */
ffa02136:	0c e1 4c 0e 	P4.L = 0xe4c;		/* (3660)	P4=0xff900e4c <_txIdx> */
ffa0213a:	20 95       	R0 = W[P4] (Z);
ffa0213c:	10 32       	P2 = R0;
ffa0213e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e48 <_NetDHCPserv> */
ffa02142:	0d e1 50 0e 	P5.L = 0xe50;		/* (3664)	P5=0xff900e50 <_txbuf> */
ffa02146:	0b 30       	R1 = R3;
ffa02148:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa0214a:	52 91       	P2 = [P2];
ffa0214c:	92 ad       	P2 = [P2 + 0x18];
ffa0214e:	12 96       	W[P2++] = R2;
ffa02150:	42 30       	R0 = P2;
ffa02152:	ff e3 e1 f9 	CALL 0xffa01514 <_memcpy_>;
ffa02156:	20 95       	R0 = W[P4] (Z);
ffa02158:	10 32       	P2 = R0;
ffa0215a:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa0215c:	51 91       	P1 = [P2];
ffa0215e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa02162:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa02166:	51 93       	[P2] = P1;
ffa02168:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa0216c:	88 a1       	R0 = [P1 + 0x18];
ffa0216e:	0a e1 9a 04 	P2.L = 0x49a;		/* (1178)	P2=0xff90049a <_txdmacfg> */
ffa02172:	48 b0       	[P1 + 0x4] = R0;
ffa02174:	50 95       	R0 = W[P2] (X);
ffa02176:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0049a(-4193126) */
ffa0217a:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa0217e:	10 97       	W[P2] = R0;
ffa02180:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa02184:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02188:	10 91       	R0 = [P2];
ffa0218a:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa0218c:	10 93       	[P2] = R0;
ffa0218e:	88 a2       	R0 = [P1 + 0x28];
ffa02190:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02192:	13 10       	IF !CC JUMP 0xffa021b8 <_bfin_EMAC_send+0xdc>;
ffa02194:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa02198:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa0219c:	b2 e0 05 20 	LSETUP(0xffa021a0 <_bfin_EMAC_send+0xc4>, 0xffa021a6 <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa021a0:	88 a2       	R0 = [P1 + 0x28];
ffa021a2:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa021a4:	0a 10       	IF !CC JUMP 0xffa021b8 <_bfin_EMAC_send+0xdc>;
ffa021a6:	00 00       	NOP;
ffa021a8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001fc(-7339524) */
ffa021ac:	00 e1 14 02 	R0.L = 0x214;		/* (532)	R0=0xff900214(-7339500) */
ffa021b0:	ff e3 0a f8 	CALL 0xffa011c4 <_printf_str>;
ffa021b4:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa021b6:	10 20       	JUMP.S 0xffa021d6 <_bfin_EMAC_send+0xfa>;
ffa021b8:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa021bc:	61 95 00 00 
ffa021c0:	8a a2       	R2 = [P1 + 0x28];
ffa021c2:	88 b2       	[P1 + 0x28] = R0;
ffa021c4:	c8 42       	R0 = R1.L (Z);
ffa021c6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa021ca:	10 0d       	CC = R0 <= 0x2;
ffa021cc:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa021d0:	14 1c       	IF CC JUMP 0xffa021f8 <_bfin_EMAC_send+0x11c> (BP);
ffa021d2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa021d4:	10 97       	W[P2] = R0;
ffa021d6:	01 e8 00 00 	UNLINK;
ffa021da:	02 30       	R0 = R2;
ffa021dc:	84 04       	(P5:4) = [SP++];
ffa021de:	10 00       	RTS;
ffa021e0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa021e4:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa021e8:	ff e3 ee f7 	CALL 0xffa011c4 <_printf_str>;
ffa021ec:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa021ee:	01 e8 00 00 	UNLINK;
ffa021f2:	02 30       	R0 = R2;
ffa021f4:	84 04       	(P5:4) = [SP++];
ffa021f6:	10 00       	RTS;
ffa021f8:	01 30       	R0 = R1;
ffa021fa:	08 64       	R0 += 0x1;		/* (  1) */
ffa021fc:	10 97       	W[P2] = R0;
ffa021fe:	01 e8 00 00 	UNLINK;
ffa02202:	02 30       	R0 = R2;
ffa02204:	84 04       	(P5:4) = [SP++];
ffa02206:	10 00       	RTS;
ffa02208:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90019c(-7339620) */
ffa0220c:	00 e1 e0 01 	R0.L = 0x1e0;		/* (480)	R0=0xff9001e0(-7339552) */
ffa02210:	ff e3 9c f8 	CALL 0xffa01348 <_printf_int>;
ffa02214:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02216:	01 e8 00 00 	UNLINK;
ffa0221a:	02 30       	R0 = R2;
ffa0221c:	84 04       	(P5:4) = [SP++];
ffa0221e:	10 00       	RTS;

ffa02220 <_ether_testUDP>:
ffa02220:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02222:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa02226:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0222a:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa0222e:	11 95       	R1 = W[P2] (Z);
ffa02230:	11 32       	P2 = R1;
ffa02232:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa02236:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa0223a:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa0223e:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02240:	52 91       	P2 = [P2];
ffa02242:	95 ad       	P5 = [P2 + 0x18];
ffa02244:	55 32       	P2 = P5;
ffa02246:	11 96       	W[P2++] = R1;
ffa02248:	4a 30       	R1 = P2;
ffa0224a:	00 e3 27 08 	CALL 0xffa03298 <_ARP_req>;
ffa0224e:	00 0c       	CC = R0 == 0x0;
ffa02250:	7f 18       	IF CC JUMP 0xffa0234e <_ether_testUDP+0x12e>;
ffa02252:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa02256:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetOurMAC> */
ffa0225a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0225c:	50 99       	R0 = B[P2] (X);
ffa0225e:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02262:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa02266:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0226a:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa0226e:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa02272:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02276:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa0227a:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa0227e:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa02282:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa02286:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa0228a:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa0228e:	ff e3 fb fb 	CALL 0xffa01a84 <_htons>;
ffa02292:	e8 b5       	W[P5 + 0xe] = R0;
ffa02294:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa02298:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa0229c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0229e:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa022a2:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa022a4:	ff e3 f0 fb 	CALL 0xffa01a84 <_htons>;
ffa022a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e74 <_NetOurMAC> */
ffa022ac:	0a e1 4e 0e 	P2.L = 0xe4e;		/* (3662)	P2=0xff900e4e <_NetIPID> */
ffa022b0:	68 b6       	W[P5 + 0x12] = R0;
ffa022b2:	10 95       	R0 = W[P2] (Z);
ffa022b4:	08 30       	R1 = R0;
ffa022b6:	09 64       	R1 += 0x1;		/* (  1) */
ffa022b8:	11 97       	W[P2] = R1;
ffa022ba:	ff e3 e5 fb 	CALL 0xffa01a84 <_htons>;
ffa022be:	a8 b6       	W[P5 + 0x14] = R0;
ffa022c0:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa022c4:	ff e3 e0 fb 	CALL 0xffa01a84 <_htons>;
ffa022c8:	e8 b6       	W[P5 + 0x16] = R0;
ffa022ca:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa022cc:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa022d0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4e <_NetIPID> */
ffa022d4:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa022d6:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa022da:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa022de:	10 91       	R0 = [P2];
ffa022e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e80 <_NetOurIP> */
ffa022e4:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_NetDestIP> */
ffa022e8:	e8 b1       	[P5 + 0x1c] = R0;
ffa022ea:	10 91       	R0 = [P2];
ffa022ec:	28 b2       	[P5 + 0x20] = R0;
ffa022ee:	45 30       	R0 = P5;
ffa022f0:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa022f2:	6f b7       	W[P5 + 0x1a] = R7;
ffa022f4:	80 64       	R0 += 0x10;		/* ( 16) */
ffa022f6:	ff e3 af fb 	CALL 0xffa01a54 <_NetCksum>;
ffa022fa:	c0 43       	R0 =~ R0;
ffa022fc:	68 b7       	W[P5 + 0x1a] = R0;
ffa022fe:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa02302:	ff e3 c1 fb 	CALL 0xffa01a84 <_htons>;
ffa02306:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa0230a:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa0230e:	ff e3 bb fb 	CALL 0xffa01a84 <_htons>;
ffa02312:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa02316:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa02318:	ff e3 b6 fb 	CALL 0xffa01a84 <_htons>;
ffa0231c:	55 32       	P2 = P5;
ffa0231e:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa02322:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa02326:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa02328:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0232a:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa0232c:	b2 e0 03 10 	LSETUP(0xffa02330 <_ether_testUDP+0x110>, 0xffa02332 <_ether_testUDP+0x112>) LC1 = P1;
ffa02330:	11 9a       	B[P2++] = R1;
ffa02332:	09 64       	R1 += 0x1;		/* (  1) */
ffa02334:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa02338:	00 e1 28 02 	R0.L = 0x228;		/* (552)	R0=0xff900228(-7339480) */
ffa0233c:	ff e3 44 f7 	CALL 0xffa011c4 <_printf_str>;
ffa02340:	ff e3 4c fd 	CALL 0xffa01dd8 <_bfin_EMAC_send_nocopy>;
ffa02344:	01 e8 00 00 	UNLINK;
ffa02348:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0234a:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0234c:	10 00       	RTS;
ffa0234e:	01 e8 00 00 	UNLINK;
ffa02352:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02354:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02356:	10 00       	RTS;

ffa02358 <_eth_header_setup>:
ffa02358:	c4 04       	[--SP] = (P5:4);
ffa0235a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_NetDestIP> */
ffa0235e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02362:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa02366:	00 32       	P0 = R0;
ffa02368:	10 95       	R0 = W[P2] (Z);
ffa0236a:	10 32       	P2 = R0;
ffa0236c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa02370:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa02374:	00 91       	R0 = [P0];
ffa02376:	21 32       	P4 = R1;
ffa02378:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0237a:	52 91       	P2 = [P2];
ffa0237c:	08 30       	R1 = R0;
ffa0237e:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa02380:	80 67       	R0 += -0x10;		/* (-16) */
ffa02382:	95 ad       	P5 = [P2 + 0x18];
ffa02384:	00 93       	[P0] = R0;
ffa02386:	02 30       	R0 = R2;
ffa02388:	55 32       	P2 = P5;
ffa0238a:	11 96       	W[P2++] = R1;
ffa0238c:	4a 30       	R1 = P2;
ffa0238e:	00 e3 85 07 	CALL 0xffa03298 <_ARP_req>;
ffa02392:	00 0c       	CC = R0 == 0x0;
ffa02394:	2b 18       	IF CC JUMP 0xffa023ea <_eth_header_setup+0x92>;
ffa02396:	00 00       	NOP;
ffa02398:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa0239c:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetOurMAC> */
ffa023a0:	50 99       	R0 = B[P2] (X);
ffa023a2:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa023a6:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa023aa:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa023ae:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa023b2:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa023b6:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa023ba:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa023be:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa023c2:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa023c6:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa023ca:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa023ce:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa023d2:	ff e3 59 fb 	CALL 0xffa01a84 <_htons>;
ffa023d6:	e8 b5       	W[P5 + 0xe] = R0;
ffa023d8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa023da:	20 9b       	B[P4] = R0;
ffa023dc:	4d 30       	R1 = P5;
ffa023de:	81 64       	R1 += 0x10;		/* ( 16) */
ffa023e0:	01 e8 00 00 	UNLINK;
ffa023e4:	01 30       	R0 = R1;
ffa023e6:	84 04       	(P5:4) = [SP++];
ffa023e8:	10 00       	RTS;
ffa023ea:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa023ec:	20 9b       	B[P4] = R0;
ffa023ee:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa023f0:	01 e8 00 00 	UNLINK;
ffa023f4:	01 30       	R0 = R1;
ffa023f6:	84 04       	(P5:4) = [SP++];
ffa023f8:	10 00       	RTS;
	...

ffa023fc <_icmp_packet_setup>:
ffa023fc:	e4 05       	[--SP] = (R7:4, P5:4);
ffa023fe:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02402:	29 32       	P5 = R1;
ffa02404:	7f 30       	R7 = FP;
ffa02406:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02408:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0240a:	f0 bb       	[FP -0x4] = R0;
ffa0240c:	07 30       	R0 = R7;
ffa0240e:	22 32       	P4 = R2;
ffa02410:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa02414:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa02418:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa0241c:	ff e3 9e ff 	CALL 0xffa02358 <_eth_header_setup>;
ffa02420:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa02424:	68 99 00 00 
ffa02428:	80 0c       	CC = R0 < 0x0;
ffa0242a:	14 18       	IF CC JUMP 0xffa02452 <_icmp_packet_setup+0x56>;
ffa0242c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0242e:	f0 b0       	[SP + 0xc] = R0;
ffa02430:	54 30       	R2 = P4;
ffa02432:	01 30       	R0 = R1;
ffa02434:	0f 30       	R1 = R7;
ffa02436:	ff e3 5b fb 	CALL 0xffa01aec <_ip_header_setup>;
ffa0243a:	e9 42       	R1 = R5.L (Z);
ffa0243c:	f1 b0       	[SP + 0xc] = R1;
ffa0243e:	e1 42       	R1 = R4.L (Z);
ffa02440:	31 b1       	[SP + 0x10] = R1;
ffa02442:	72 43       	R2 = R6.B (Z);
ffa02444:	0f 30       	R1 = R7;
ffa02446:	ff e3 9d fb 	CALL 0xffa01b80 <_icmp_header_setup>;
ffa0244a:	01 e8 00 00 	UNLINK;
ffa0244e:	a4 05       	(R7:4, P5:4) = [SP++];
ffa02450:	10 00       	RTS;
ffa02452:	01 e8 00 00 	UNLINK;
ffa02456:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02458:	a4 05       	(R7:4, P5:4) = [SP++];
ffa0245a:	10 00       	RTS;

ffa0245c <_icmp_rx>:
ffa0245c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0245e:	28 32       	P5 = R0;
ffa02460:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02464:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02468:	39 30       	R7 = R1;
ffa0246a:	ff e3 0d fb 	CALL 0xffa01a84 <_htons>;
ffa0246e:	c0 42       	R0 = R0.L (Z);
ffa02470:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa02472:	01 08       	CC = R1 == R0;
ffa02474:	06 18       	IF CC JUMP 0xffa02480 <_icmp_rx+0x24>;
ffa02476:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02478:	01 e8 00 00 	UNLINK;
ffa0247c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0247e:	10 00       	RTS;
ffa02480:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02482:	07 0a       	CC = R7 <= R0 (IU);
ffa02484:	f9 1b       	IF CC JUMP 0xffa02476 <_icmp_rx+0x1a>;
ffa02486:	00 00       	NOP;
ffa02488:	00 00       	NOP;
ffa0248a:	00 00       	NOP;
ffa0248c:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa02490:	08 0c       	CC = R0 == 0x1;
ffa02492:	f2 17       	IF !CC JUMP 0xffa02476 <_icmp_rx+0x1a> (BP);
ffa02494:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e74 <_NetOurMAC> */
ffa02498:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa0249c:	28 a2       	R0 = [P5 + 0x20];
ffa0249e:	11 91       	R1 = [P2];
ffa024a0:	08 08       	CC = R0 == R1;
ffa024a2:	ea 17       	IF !CC JUMP 0xffa02476 <_icmp_rx+0x1a> (BP);
ffa024a4:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa024a8:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa024ac:	08 08       	CC = R0 == R1;
ffa024ae:	3e 18       	IF CC JUMP 0xffa0252a <_icmp_rx+0xce>;
ffa024b0:	00 00       	NOP;
ffa024b2:	00 00       	NOP;
ffa024b4:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa024b6:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa024ba:	08 08       	CC = R0 == R1;
ffa024bc:	dd 17       	IF !CC JUMP 0xffa02476 <_icmp_rx+0x1a> (BP);
ffa024be:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa024c2:	e9 a1       	R1 = [P5 + 0x1c];
ffa024c4:	00 e1 40 02 	R0.L = 0x240;		/* (576)	R0=0xff900240(-7339456) */
ffa024c8:	ff e3 e2 f7 	CALL 0xffa0148c <_printf_ip>;
ffa024cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e80 <_NetOurIP> */
ffa024d0:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_NetDestIP> */
ffa024d4:	e8 a1       	R0 = [P5 + 0x1c];
ffa024d6:	4d 30       	R1 = P5;
ffa024d8:	10 93       	[P2] = R0;
ffa024da:	41 64       	R1 += 0x8;		/* (  8) */
ffa024dc:	00 e3 e0 04 	CALL 0xffa02e9c <_ARP_lut_add>;
ffa024e0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900240(-7339456) */
ffa024e4:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa024e8:	ff e3 6e f6 	CALL 0xffa011c4 <_printf_str>;
ffa024ec:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa024f0:	ea a1 00 00 
ffa024f4:	f0 b0       	[SP + 0xc] = R0;
ffa024f6:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa024fa:	30 b1       	[SP + 0x10] = R0;
ffa024fc:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa024fe:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa02502:	4f 30       	R1 = FP;
ffa02504:	70 b1       	[SP + 0x14] = R0;
ffa02506:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa02508:	07 30       	R0 = R7;
ffa0250a:	ff e3 79 ff 	CALL 0xffa023fc <_icmp_packet_setup>;
ffa0250e:	08 30       	R1 = R0;
ffa02510:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa02514:	00 0d       	CC = R0 <= 0x0;
ffa02516:	b0 1b       	IF CC JUMP 0xffa02476 <_icmp_rx+0x1a>;
ffa02518:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa0251a:	45 30       	R0 = P5;
ffa0251c:	17 30       	R2 = R7;
ffa0251e:	ff e3 fb f7 	CALL 0xffa01514 <_memcpy_>;
ffa02522:	ff e3 5b fc 	CALL 0xffa01dd8 <_bfin_EMAC_send_nocopy>;
ffa02526:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02528:	a8 2f       	JUMP.S 0xffa02478 <_icmp_rx+0x1c>;
ffa0252a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_NetDestIP> */
ffa0252e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02530:	0a e1 d4 0b 	P2.L = 0xbd4;		/* (3028)	P2=0xff900bd4 <_g_streamEnabled> */
ffa02534:	10 9b       	B[P2] = R0;
ffa02536:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02538:	a0 2f       	JUMP.S 0xffa02478 <_icmp_rx+0x1c>;
	...

ffa0253c <_udp_packet_setup>:
ffa0253c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0253e:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02542:	29 32       	P5 = R1;
ffa02544:	7f 30       	R7 = FP;
ffa02546:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e4c <_txIdx> */
ffa0254a:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa0254c:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0254e:	0c e1 84 0e 	P4.L = 0xe84;		/* (3716)	P4=0xff900e84 <_NetDataDestIP> */
ffa02552:	f0 bb       	[FP -0x4] = R0;
ffa02554:	22 91       	R2 = [P4];
ffa02556:	07 30       	R0 = R7;
ffa02558:	ff e3 00 ff 	CALL 0xffa02358 <_eth_header_setup>;
ffa0255c:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa02560:	68 99 00 00 
ffa02564:	80 0c       	CC = R0 < 0x0;
ffa02566:	14 18       	IF CC JUMP 0xffa0258e <_udp_packet_setup+0x52>;
ffa02568:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0256a:	f0 b0       	[SP + 0xc] = R0;
ffa0256c:	01 30       	R0 = R1;
ffa0256e:	22 91       	R2 = [P4];
ffa02570:	0f 30       	R1 = R7;
ffa02572:	ff e3 bd fa 	CALL 0xffa01aec <_ip_header_setup>;
ffa02576:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa0257a:	f1 b0       	[SP + 0xc] = R1;
ffa0257c:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa02580:	0f 30       	R1 = R7;
ffa02582:	ff e3 23 fb 	CALL 0xffa01bc8 <_udp_header_setup>;
ffa02586:	01 e8 00 00 	UNLINK;
ffa0258a:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0258c:	10 00       	RTS;
ffa0258e:	01 e8 00 00 	UNLINK;
ffa02592:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02594:	bc 05       	(R7:7, P5:4) = [SP++];
ffa02596:	10 00       	RTS;

ffa02598 <_SetupTxBuffer>:
ffa02598:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0259a:	38 30       	R7 = R0;
ffa0259c:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa025a0:	c7 40       	R7 *= R0;
ffa025a2:	17 32       	P2 = R7;
ffa025a4:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800e50 */
ffa025a8:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa025ac:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa025b0:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa025b4:	6a 5b       	P5 = P2 + P5;
ffa025b6:	c7 51       	R7 = R7 + R0;
ffa025b8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa025bc:	45 30       	R0 = P5;
ffa025be:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa025c0:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa025c2:	ff e3 b9 f7 	CALL 0xffa01534 <_memset_>;
ffa025c6:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa025ca:	af b1 00 00 
ffa025ce:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa025d2:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa025d6:	ff e3 af f7 	CALL 0xffa01534 <_memset_>;
ffa025da:	45 30       	R0 = P5;
ffa025dc:	60 64       	R0 += 0xc;		/* ( 12) */
ffa025de:	28 93       	[P5] = R0;
ffa025e0:	a8 a1       	R0 = [P5 + 0x18];
ffa025e2:	68 b0       	[P5 + 0x4] = R0;
ffa025e4:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa025e8:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa025ea:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa025ec:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa025ee:	10 54       	R0 = R0 & R2;
ffa025f0:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa025f2:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa025f6:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa025f8:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa025fc:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa025fe:	18 54       	R0 = R0 & R3;
ffa02600:	08 56       	R0 = R0 | R1;
ffa02602:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa02606:	08 56       	R0 = R0 | R1;
ffa02608:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa0260c:	45 30       	R0 = P5;
ffa0260e:	40 65       	R0 += 0x28;		/* ( 40) */
ffa02610:	28 b1       	[P5 + 0x10] = R0;
ffa02612:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa02616:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02618:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0261a:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa0261e:	10 54       	R0 = R0 & R2;
ffa02620:	08 56       	R0 = R0 | R1;
ffa02622:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa02626:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa0262a:	18 54       	R0 = R0 & R3;
ffa0262c:	39 64       	R1 += 0x7;		/* (  7) */
ffa0262e:	08 54       	R0 = R0 & R1;
ffa02630:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02634:	ed bc       	[P5 + 0xc] = P5;
ffa02636:	01 e8 00 00 	UNLINK;
ffa0263a:	45 30       	R0 = P5;
ffa0263c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0263e:	10 00       	RTS;

ffa02640 <_SetupRxBuffer>:
ffa02640:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02642:	38 30       	R7 = R0;
ffa02644:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02648:	c7 40       	R7 *= R0;
ffa0264a:	17 32       	P2 = R7;
ffa0264c:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa02650:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa02654:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02658:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa0265c:	6a 5b       	P5 = P2 + P5;
ffa0265e:	c7 51       	R7 = R7 + R0;
ffa02660:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02664:	45 30       	R0 = P5;
ffa02666:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02668:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa0266a:	ff e3 65 f7 	CALL 0xffa01534 <_memset_>;
ffa0266e:	af b1       	[P5 + 0x18] = R7;
ffa02670:	07 30       	R0 = R7;
ffa02672:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa02676:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa0267a:	ff e3 5d f7 	CALL 0xffa01534 <_memset_>;
ffa0267e:	45 30       	R0 = P5;
ffa02680:	60 64       	R0 += 0xc;		/* ( 12) */
ffa02682:	28 93       	[P5] = R0;
ffa02684:	a8 a1       	R0 = [P5 + 0x18];
ffa02686:	68 b0       	[P5 + 0x4] = R0;
ffa02688:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa0268c:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0268e:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa02690:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02692:	08 54       	R0 = R0 & R1;
ffa02694:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02696:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0269a:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa0269c:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa026a0:	38 54       	R0 = R0 & R7;
ffa026a2:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa026a4:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa026a8:	18 56       	R0 = R0 | R3;
ffa026aa:	10 56       	R0 = R0 | R2;
ffa026ac:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa026b0:	45 30       	R0 = P5;
ffa026b2:	20 65       	R0 += 0x24;		/* ( 36) */
ffa026b4:	28 b1       	[P5 + 0x10] = R0;
ffa026b6:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa026ba:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa026bc:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa026be:	08 54       	R0 = R0 & R1;
ffa026c0:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa026c4:	08 56       	R0 = R0 | R1;
ffa026c6:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa026ca:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa026ce:	38 54       	R0 = R0 & R7;
ffa026d0:	18 56       	R0 = R0 | R3;
ffa026d2:	10 56       	R0 = R0 | R2;
ffa026d4:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa026d8:	ed bc       	[P5 + 0xc] = P5;
ffa026da:	01 e8 00 00 	UNLINK;
ffa026de:	45 30       	R0 = P5;
ffa026e0:	bd 05       	(R7:7, P5:5) = [SP++];
ffa026e2:	10 00       	RTS;

ffa026e4 <_SetupSystemRegs>:
ffa026e4:	f5 05       	[--SP] = (R7:6, P5:5);
ffa026e6:	28 32       	P5 = R0;
ffa026e8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa026ec:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa026f0:	00 e1 5c 02 	R0.L = 0x25c;		/* (604)	R0=0xff90025c(-7339428) */
ffa026f4:	ff e3 68 f5 	CALL 0xffa011c4 <_printf_str>;
ffa026f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bd4(-4191276) */
ffa026fc:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa02700:	50 95       	R0 = W[P2] (X);
ffa02702:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa02706:	08 54       	R0 = R0 & R1;
ffa02708:	10 97       	W[P2] = R0;
ffa0270a:	50 95       	R0 = W[P2] (X);
ffa0270c:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa0270e:	10 97       	W[P2] = R0;
ffa02710:	82 6f       	P2 += -0x10;		/* (-16) */
ffa02712:	51 95       	R1 = W[P2] (X);
ffa02714:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa02718:	08 56       	R0 = R0 | R1;
ffa0271a:	10 97       	W[P2] = R0;
ffa0271c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0271e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02720:	10 97       	W[P2] = R0;
ffa02722:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa02724:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa02726:	10 97       	W[P2] = R0;
ffa02728:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa0272c:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa02730:	50 95       	R0 = W[P2] (X);
ffa02732:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa02734:	10 97       	W[P2] = R0;
ffa02736:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa0273a:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa0273e:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa02742:	10 93       	[P2] = R0;
ffa02744:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02746:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa0274a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0274c:	ff e3 28 f9 	CALL 0xffa0199c <_WrPHYReg>;
ffa02750:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02754:	ff e3 ce f8 	CALL 0xffa018f0 <_udelay>;
ffa02758:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0275a:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0275c:	ff e3 3c f9 	CALL 0xffa019d4 <_RdPHYReg>;
ffa02760:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02762:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa02764:	0e 20       	JUMP.S 0xffa02780 <_SetupSystemRegs+0x9c>;
ffa02766:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa0276a:	ff e3 c3 f8 	CALL 0xffa018f0 <_udelay>;
ffa0276e:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02770:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02772:	ff e3 31 f9 	CALL 0xffa019d4 <_RdPHYReg>;
ffa02776:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02778:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa0277c:	0f 08       	CC = R7 == R1;
ffa0277e:	35 18       	IF CC JUMP 0xffa027e8 <_SetupSystemRegs+0x104>;
ffa02780:	06 54       	R0 = R6 & R0;
ffa02782:	00 0c       	CC = R0 == 0x0;
ffa02784:	f1 1f       	IF CC JUMP 0xffa02766 <_SetupSystemRegs+0x82> (BP);
ffa02786:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa02788:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0278a:	ff e3 25 f9 	CALL 0xffa019d4 <_RdPHYReg>;
ffa0278e:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa02792:	01 54       	R0 = R1 & R0;
ffa02794:	00 0c       	CC = R0 == 0x0;
ffa02796:	27 1c       	IF CC JUMP 0xffa027e4 <_SetupSystemRegs+0x100> (BP);
ffa02798:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0279a:	d0 4f       	R0 <<= 0x1a;
ffa0279c:	28 93       	[P5] = R0;
ffa0279e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa027a2:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa027a4:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa027a8:	10 93       	[P2] = R0;
ffa027aa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa027ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027b0:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa027b4:	10 97       	W[P2] = R0;
ffa027b6:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa027b8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027ba:	11 97       	W[P2] = R1;
ffa027bc:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027be:	10 97       	W[P2] = R0;
ffa027c0:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027c2:	10 97       	W[P2] = R0;
ffa027c4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa027c8:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa027cc:	10 97       	W[P2] = R0;
ffa027ce:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027d0:	11 97       	W[P2] = R1;
ffa027d2:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027d4:	10 97       	W[P2] = R0;
ffa027d6:	22 6c       	P2 += 0x4;		/* (  4) */
ffa027d8:	10 97       	W[P2] = R0;
ffa027da:	01 e8 00 00 	UNLINK;
ffa027de:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027e0:	b5 05       	(R7:6, P5:5) = [SP++];
ffa027e2:	10 00       	RTS;
ffa027e4:	28 93       	[P5] = R0;
ffa027e6:	dc 2f       	JUMP.S 0xffa0279e <_SetupSystemRegs+0xba>;
ffa027e8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa027ec:	00 e1 74 02 	R0.L = 0x274;		/* (628)	R0=0xff900274(-7339404) */
ffa027f0:	ff e3 ea f4 	CALL 0xffa011c4 <_printf_str>;
ffa027f4:	01 e8 00 00 	UNLINK;
ffa027f8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa027fa:	b5 05       	(R7:6, P5:5) = [SP++];
ffa027fc:	10 00       	RTS;
	...

ffa02800 <_SetupMacAddr>:
ffa02800:	10 32       	P2 = R0;
ffa02802:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02804:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02806:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0280a:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa0280e:	10 9b       	B[P2] = R0;
ffa02810:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa02812:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa02816:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa02818:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa0281c:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa0281e:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa02822:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa02826:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa0282a:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0282c:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02830:	10 99       	R0 = B[P2] (Z);
ffa02832:	08 56       	R0 = R0 | R1;
ffa02834:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa02838:	89 4f       	R1 <<= 0x11;
ffa0283a:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00e50(-4190640) */
ffa0283e:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa02842:	08 56       	R0 = R0 | R1;
ffa02844:	08 93       	[P1] = R0;
ffa02846:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa0284a:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa0284e:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa02852:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa02854:	28 93       	[P5] = R0;
ffa02856:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa0285a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa0285e:	09 91       	R1 = [P1];
ffa02860:	07 e1 64 0a 	R7.L = 0xa64;		/* (2660)	R7=0xff900a64(-7337372) */
ffa02864:	00 e1 a8 02 	R0.L = 0x2a8;		/* (680)	R0=0xff9002a8(-7339352) */
ffa02868:	ff e3 14 f5 	CALL 0xffa01290 <_printf_hex>;
ffa0286c:	07 30       	R0 = R7;
ffa0286e:	ff e3 ab f4 	CALL 0xffa011c4 <_printf_str>;
ffa02872:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002a8(-7339352) */
ffa02876:	29 91       	R1 = [P5];
ffa02878:	00 e1 b4 02 	R0.L = 0x2b4;		/* (692)	R0=0xff9002b4(-7339340) */
ffa0287c:	ff e3 0a f5 	CALL 0xffa01290 <_printf_hex>;
ffa02880:	01 e8 00 00 	UNLINK;
ffa02884:	07 30       	R0 = R7;
ffa02886:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02888:	ff e2 9e f4 	JUMP.L 0xffa011c4 <_printf_str>;

ffa0288c <_bfin_EMAC_init>:
ffa0288c:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0288e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002b4(-7339340) */
ffa02892:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02896:	00 e1 c0 02 	R0.L = 0x2c0;		/* (704)	R0=0xff9002c0(-7339328) */
ffa0289a:	ff e3 95 f4 	CALL 0xffa011c4 <_printf_str>;
ffa0289e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 */
ffa028a2:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa028a4:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa028a8:	16 97       	W[P2] = R6;
ffa028aa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa028ae:	0a e1 60 0e 	P2.L = 0xe60;		/* (3680)	P2=0xff900e60 <_rxIdx> */
ffa028b2:	16 97       	W[P2] = R6;
ffa028b4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e60 <_rxIdx> */
ffa028b8:	0a e1 4e 0e 	P2.L = 0xe4e;		/* (3662)	P2=0xff900e4e <_NetIPID> */
ffa028bc:	16 97       	W[P2] = R6;
ffa028be:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4e <_NetIPID> */
ffa028c2:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa028c4:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetSubnetMask> */
ffa028c8:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa028ca:	17 93       	[P2] = R7;
ffa028cc:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa028d0:	f0 b0       	[SP + 0xc] = R0;
ffa028d2:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa028d4:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa028d8:	ff e3 2c f8 	CALL 0xffa01930 <_FormatIPAddress>;
ffa028dc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e7c <_NetSubnetMask> */
ffa028e0:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa028e4:	10 93       	[P2] = R0;
ffa028e6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa028e8:	f0 b0       	[SP + 0xc] = R0;
ffa028ea:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa028ee:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa028f0:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa028f4:	ff e3 1e f8 	CALL 0xffa01930 <_FormatIPAddress>;
ffa028f8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e80 <_NetOurIP> */
ffa028fc:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_NetDestIP> */
ffa02900:	10 93       	[P2] = R0;
ffa02902:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02904:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa02906:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa0290a:	f0 b0       	[SP + 0xc] = R0;
ffa0290c:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa02910:	ff e3 10 f8 	CALL 0xffa01930 <_FormatIPAddress>;
ffa02914:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_NetDestIP> */
ffa02918:	0a e1 84 0e 	P2.L = 0xe84;		/* (3716)	P2=0xff900e84 <_NetDataDestIP> */
ffa0291c:	10 93       	[P2] = R0;
ffa0291e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e84 <_NetDataDestIP> */
ffa02922:	0a e1 64 0f 	P2.L = 0xf64;		/* (3940)	P2=0xff900f64 <_TcpState> */
ffa02926:	17 93       	[P2] = R7;
ffa02928:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f64 <_TcpState> */
ffa0292c:	0a e1 5c 0f 	P2.L = 0xf5c;		/* (3932)	P2=0xff900f5c <_TcpSeqClient> */
ffa02930:	17 93       	[P2] = R7;
ffa02932:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa02936:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f5c <_TcpSeqClient> */
ffa0293a:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa0293e:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa02942:	10 93       	[P2] = R0;
ffa02944:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa02948:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_TcpClientPort> */
ffa0294c:	16 97       	W[P2] = R6;
ffa0294e:	00 e3 59 02 	CALL 0xffa02e00 <_ARP_init>;
ffa02952:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00f70(-4190352) */
ffa02956:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa0295a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa0295e:	17 93       	[P2] = R7;
ffa02960:	00 e1 74 0e 	R0.L = 0xe74;		/* (3700)	R0=0xff900e74 <_NetOurMAC>(-7336332) */
ffa02964:	ff e3 4e ff 	CALL 0xffa02800 <_SetupMacAddr>;
ffa02968:	47 30       	R0 = FP;
ffa0296a:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa0296c:	ff e3 bc fe 	CALL 0xffa026e4 <_SetupSystemRegs>;
ffa02970:	80 0c       	CC = R0 < 0x0;
ffa02972:	7a 18       	IF CC JUMP 0xffa02a66 <_bfin_EMAC_init+0x1da>;
ffa02974:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa02978:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0297a:	07 e1 64 0e 	R7.L = 0xe64;		/* (3684)	R7=0xff900e64 <_rxbuf>(-7336348) */
ffa0297e:	ff e3 61 fe 	CALL 0xffa02640 <_SetupRxBuffer>;
ffa02982:	07 32       	P0 = R7;
ffa02984:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02986:	00 93       	[P0] = R0;
ffa02988:	17 32       	P2 = R7;
ffa0298a:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa0298c:	44 30       	R0 = P4;
ffa0298e:	ff e3 59 fe 	CALL 0xffa02640 <_SetupRxBuffer>;
ffa02992:	44 0c       	CC = P4 == 0x0;
ffa02994:	08 32       	P1 = R0;
ffa02996:	28 92       	[P5++] = R0;
ffa02998:	52 18       	IF CC JUMP 0xffa02a3c <_bfin_EMAC_init+0x1b0>;
ffa0299a:	07 32       	P0 = R7;
ffa0299c:	5c 0c       	CC = P4 == 0x3;
ffa0299e:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa029a0:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa029a4:	d0 b0       	[P2 + 0xc] = R0;
ffa029a6:	54 18       	IF CC JUMP 0xffa02a4e <_bfin_EMAC_init+0x1c2>;
ffa029a8:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa029aa:	5c 0d       	CC = P4 <= 0x3;
ffa029ac:	ee 1f       	IF CC JUMP 0xffa02988 <_bfin_EMAC_init+0xfc> (BP);
ffa029ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa029b0:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900dfc <_printf_temp> */
ffa029b4:	ff e3 f2 fd 	CALL 0xffa02598 <_SetupTxBuffer>;
ffa029b8:	0b e1 50 0e 	P3.L = 0xe50;		/* (3664)	P3=0xff900e50 <_txbuf> */
ffa029bc:	18 93       	[P3] = R0;
ffa029be:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa029c0:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa029c2:	44 30       	R0 = P4;
ffa029c4:	ff e3 ea fd 	CALL 0xffa02598 <_SetupTxBuffer>;
ffa029c8:	44 0c       	CC = P4 == 0x0;
ffa029ca:	08 32       	P1 = R0;
ffa029cc:	28 92       	[P5++] = R0;
ffa029ce:	35 18       	IF CC JUMP 0xffa02a38 <_bfin_EMAC_init+0x1ac>;
ffa029d0:	00 00       	NOP;
ffa029d2:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa029d4:	5c 0c       	CC = P4 == 0x3;
ffa029d6:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa029da:	d0 b0       	[P2 + 0xc] = R0;
ffa029dc:	32 18       	IF CC JUMP 0xffa02a40 <_bfin_EMAC_init+0x1b4>;
ffa029de:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa029e0:	5c 0d       	CC = P4 <= 0x3;
ffa029e2:	ef 1f       	IF CC JUMP 0xffa029c0 <_bfin_EMAC_init+0x134> (BP);
ffa029e4:	17 32       	P2 = R7;
ffa029e6:	51 91       	P1 = [P2];
ffa029e8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa029ec:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa029f0:	51 93       	[P2] = P1;
ffa029f2:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa029f4:	42 6c       	P2 += 0x8;		/* (  8) */
ffa029f6:	10 97       	W[P2] = R0;
ffa029f8:	ff e3 c4 f7 	CALL 0xffa01980 <_PollMdcDone>;
ffa029fc:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa029fe:	f0 b9       	R0 = [FP -0x4];
ffa02a00:	d1 4f       	R1 <<= 0x1a;
ffa02a02:	08 08       	CC = R0 == R1;
ffa02a04:	2c 18       	IF CC JUMP 0xffa02a5c <_bfin_EMAC_init+0x1d0>;
ffa02a06:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02a0a:	01 30       	R0 = R1;
ffa02a0c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa02a10:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02a14:	10 93       	[P2] = R0;
ffa02a16:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02a1a:	00 e1 d0 02 	R0.L = 0x2d0;		/* (720)	R0=0xff9002d0(-7339312) */
ffa02a1e:	ff e3 39 f4 	CALL 0xffa01290 <_printf_hex>;
ffa02a22:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002d0(-7339312) */
ffa02a26:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02a2a:	ff e3 cd f3 	CALL 0xffa011c4 <_printf_str>;
ffa02a2e:	01 e8 00 00 	UNLINK;
ffa02a32:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a34:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02a36:	10 00       	RTS;
ffa02a38:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02a3a:	c4 2f       	JUMP.S 0xffa029c2 <_bfin_EMAC_init+0x136>;
ffa02a3c:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02a3e:	a7 2f       	JUMP.S 0xffa0298c <_bfin_EMAC_init+0x100>;
ffa02a40:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa02a44:	0a e1 50 0e 	P2.L = 0xe50;		/* (3664)	P2=0xff900e50 <_txbuf> */
ffa02a48:	10 91       	R0 = [P2];
ffa02a4a:	c8 b0       	[P1 + 0xc] = R0;
ffa02a4c:	cc 2f       	JUMP.S 0xffa029e4 <_bfin_EMAC_init+0x158>;
ffa02a4e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e50 <_txbuf> */
ffa02a52:	0a e1 64 0e 	P2.L = 0xe64;		/* (3684)	P2=0xff900e64 <_rxbuf> */
ffa02a56:	10 91       	R0 = [P2];
ffa02a58:	c8 b0       	[P1 + 0xc] = R0;
ffa02a5a:	aa 2f       	JUMP.S 0xffa029ae <_bfin_EMAC_init+0x122>;
ffa02a5c:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02a60:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa02a62:	01 30       	R0 = R1;
ffa02a64:	d4 2f       	JUMP.S 0xffa02a0c <_bfin_EMAC_init+0x180>;
ffa02a66:	01 e8 00 00 	UNLINK;
ffa02a6a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02a6c:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02a6e:	10 00       	RTS;

ffa02a70 <_bfin_EMAC_recv_poll>:
ffa02a70:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02a72:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa02a76:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa02a7a:	0d e1 64 0e 	P5.L = 0xe64;		/* (3684)	P5=0xff900e64 <_rxbuf> */
ffa02a7e:	0c e1 60 0e 	P4.L = 0xe60;		/* (3680)	P4=0xff900e60 <_rxIdx> */
ffa02a82:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02a86:	28 30       	R5 = R0;
ffa02a88:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02a8a:	75 30       	R6 = P5;
ffa02a8c:	5c 32       	P3 = P4;
ffa02a8e:	06 20       	JUMP.S 0xffa02a9a <_bfin_EMAC_recv_poll+0x2a>;
ffa02a90:	0f 64       	R7 += 0x1;		/* (  1) */
ffa02a92:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02a96:	07 08       	CC = R7 == R0;
ffa02a98:	0c 18       	IF CC JUMP 0xffa02ab0 <_bfin_EMAC_recv_poll+0x40>;
ffa02a9a:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa02a9e:	ff e3 29 f7 	CALL 0xffa018f0 <_udelay>;
ffa02aa2:	20 95       	R0 = W[P4] (Z);
ffa02aa4:	10 32       	P2 = R0;
ffa02aa6:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02aa8:	52 91       	P2 = [P2];
ffa02aaa:	90 a2       	R0 = [P2 + 0x28];
ffa02aac:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02aae:	f1 1f       	IF CC JUMP 0xffa02a90 <_bfin_EMAC_recv_poll+0x20> (BP);
ffa02ab0:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02ab4:	91 a2       	R1 = [P2 + 0x28];
ffa02ab6:	41 54       	R1 = R1 & R0;
ffa02ab8:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02aba:	01 09       	CC = R1 <= R0;
ffa02abc:	07 10       	IF !CC JUMP 0xffa02aca <_bfin_EMAC_recv_poll+0x5a>;
ffa02abe:	01 e8 00 00 	UNLINK;
ffa02ac2:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02ac4:	07 30       	R0 = R7;
ffa02ac6:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02ac8:	10 00       	RTS;
ffa02aca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02acc:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa02ad0:	90 b2 00 00 
ffa02ad4:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02ad6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02ada:	0f 30       	R1 = R7;
ffa02adc:	00 e1 dc 02 	R0.L = 0x2dc;		/* (732)	R0=0xff9002dc(-7339300) */
ffa02ae0:	ff e3 34 f4 	CALL 0xffa01348 <_printf_int>;
ffa02ae4:	18 95       	R0 = W[P3] (Z);
ffa02ae6:	10 32       	P2 = R0;
ffa02ae8:	0e 32       	P1 = R6;
ffa02aea:	0f 30       	R1 = R7;
ffa02aec:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02aee:	52 91       	P2 = [P2];
ffa02af0:	90 a1       	R0 = [P2 + 0x18];
ffa02af2:	15 32       	P2 = R5;
ffa02af4:	10 93       	[P2] = R0;
ffa02af6:	00 e3 39 02 	CALL 0xffa02f68 <_ARP_rx>;
ffa02afa:	00 0c       	CC = R0 == 0x0;
ffa02afc:	1f 18       	IF CC JUMP 0xffa02b3a <_bfin_EMAC_recv_poll+0xca>;
ffa02afe:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02b00:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02b04:	20 95       	R0 = W[P4] (Z);
ffa02b06:	10 32       	P2 = R0;
ffa02b08:	61 95       	R1 = W[P4] (X);
ffa02b0a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b0c:	09 e1 60 0e 	P1.L = 0xe60;		/* (3680)	P1=0xff900e60 <_rxIdx> */
ffa02b10:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02b12:	52 91       	P2 = [P2];
ffa02b14:	90 b2       	[P2 + 0x28] = R0;
ffa02b16:	c8 42       	R0 = R1.L (Z);
ffa02b18:	10 0d       	CC = R0 <= 0x2;
ffa02b1a:	08 1c       	IF CC JUMP 0xffa02b2a <_bfin_EMAC_recv_poll+0xba> (BP);
ffa02b1c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b1e:	08 97       	W[P1] = R0;
ffa02b20:	01 e8 00 00 	UNLINK;
ffa02b24:	07 30       	R0 = R7;
ffa02b26:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b28:	10 00       	RTS;
ffa02b2a:	01 30       	R0 = R1;
ffa02b2c:	08 64       	R0 += 0x1;		/* (  1) */
ffa02b2e:	08 97       	W[P1] = R0;
ffa02b30:	01 e8 00 00 	UNLINK;
ffa02b34:	07 30       	R0 = R7;
ffa02b36:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b38:	10 00       	RTS;
ffa02b3a:	0d 32       	P1 = R5;
ffa02b3c:	0f 30       	R1 = R7;
ffa02b3e:	08 91       	R0 = [P1];
ffa02b40:	ff e3 8e fc 	CALL 0xffa0245c <_icmp_rx>;
ffa02b44:	00 0c       	CC = R0 == 0x0;
ffa02b46:	dd 1f       	IF CC JUMP 0xffa02b00 <_bfin_EMAC_recv_poll+0x90> (BP);
ffa02b48:	db 2f       	JUMP.S 0xffa02afe <_bfin_EMAC_recv_poll+0x8e>;
	...

ffa02b4c <_DHCP_rx>:
ffa02b4c:	e5 05       	[--SP] = (R7:4, P5:5);
ffa02b4e:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02b52:	67 30       	R4 = FP;
ffa02b54:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02b56:	e4 67       	R4 += -0x4;		/* ( -4) */
ffa02b58:	01 20       	JUMP.S 0xffa02b5a <_DHCP_rx+0xe>;
ffa02b5a:	04 30       	R0 = R4;
ffa02b5c:	ff e3 8a ff 	CALL 0xffa02a70 <_bfin_EMAC_recv_poll>;
ffa02b60:	38 30       	R7 = R0;
ffa02b62:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa02b66:	47 51       	R5 = R7 + R0;
ffa02b68:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa02b6c:	0d 30       	R1 = R5;
ffa02b6e:	00 e1 1c 03 	R0.L = 0x31c;		/* (796)	R0=0xff90031c(-7339236) */
ffa02b72:	ff e3 eb f3 	CALL 0xffa01348 <_printf_int>;
ffa02b76:	21 e1 1b 01 	R1 = 0x11b (X);		/*		R1=0x11b(283) */
ffa02b7a:	0f 09       	CC = R7 <= R1;
ffa02b7c:	fd b9       	P5 = [FP -0x4];
ffa02b7e:	0c 18       	IF CC JUMP 0xffa02b96 <_DHCP_rx+0x4a>;
ffa02b80:	00 00       	NOP;
ffa02b82:	00 00       	NOP;
ffa02b84:	00 00       	NOP;
ffa02b86:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa02b88:	ff e3 7e f7 	CALL 0xffa01a84 <_htons>;
ffa02b8c:	c0 42       	R0 = R0.L (Z);
ffa02b8e:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa02b92:	08 08       	CC = R0 == R1;
ffa02b94:	0f 18       	IF CC JUMP 0xffa02bb2 <_DHCP_rx+0x66>;
ffa02b96:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90031c(-7339236) */
ffa02b9a:	00 e1 00 03 	R0.L = 0x300;		/* (768)	R0=0xff900300(-7339264) */
ffa02b9e:	ff e3 13 f3 	CALL 0xffa011c4 <_printf_str>;
ffa02ba2:	0e 64       	R6 += 0x1;		/* (  1) */
ffa02ba4:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
ffa02ba6:	06 09       	CC = R6 <= R0;
ffa02ba8:	d9 1f       	IF CC JUMP 0xffa02b5a <_DHCP_rx+0xe> (BP);
ffa02baa:	ff e3 75 fa 	CALL 0xffa02094 <_DHCP_tx_discover>;
ffa02bae:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa02bb0:	d5 2f       	JUMP.S 0xffa02b5a <_DHCP_rx+0xe>;
ffa02bb2:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa02bb6:	ff e3 67 f7 	CALL 0xffa01a84 <_htons>;
ffa02bba:	c0 42       	R0 = R0.L (Z);
ffa02bbc:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa02bc0:	01 08       	CC = R1 == R0;
ffa02bc2:	f1 17       	IF !CC JUMP 0xffa02ba4 <_DHCP_rx+0x58> (BP);
ffa02bc4:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa02bc8:	ff e3 5e f7 	CALL 0xffa01a84 <_htons>;
ffa02bcc:	c0 42       	R0 = R0.L (Z);
ffa02bce:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa02bd2:	01 08       	CC = R1 == R0;
ffa02bd4:	e8 17       	IF !CC JUMP 0xffa02ba4 <_DHCP_rx+0x58> (BP);
ffa02bd6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00e64(-4190620) */
ffa02bda:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa02bde:	11 91       	R1 = [P2];
ffa02be0:	28 a3       	R0 = [P5 + 0x30];
ffa02be2:	08 08       	CC = R0 == R1;
ffa02be4:	e0 17       	IF !CC JUMP 0xffa02ba4 <_DHCP_rx+0x58> (BP);
ffa02be6:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa02bea:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa02bee:	ff e3 57 f7 	CALL 0xffa01a9c <_htonl>;
ffa02bf2:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa02bf6:	01 08       	CC = R1 == R0;
ffa02bf8:	d6 17       	IF !CC JUMP 0xffa02ba4 <_DHCP_rx+0x58> (BP);
ffa02bfa:	4d 30       	R1 = P5;
ffa02bfc:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa02c00:	01 50       	R0 = R1 + R0;
ffa02c02:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa02c06:	f0 bb 00 00 
ffa02c0a:	ff e3 2d f8 	CALL 0xffa01c64 <_DHCP_parse>;
ffa02c0e:	e9 a3       	R1 = [P5 + 0x3c];
ffa02c10:	01 0c       	CC = R1 == 0x0;
ffa02c12:	12 1c       	IF CC JUMP 0xffa02c36 <_DHCP_rx+0xea> (BP);
ffa02c14:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa02c18:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa02c1c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa02c20:	11 93       	[P2] = R1;
ffa02c22:	00 e1 f0 02 	R0.L = 0x2f0;		/* (752)	R0=0xff9002f0(-7339280) */
ffa02c26:	ff e3 33 f4 	CALL 0xffa0148c <_printf_ip>;
ffa02c2a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002f0(-7339280) */
ffa02c2e:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa02c32:	ff e3 c9 f2 	CALL 0xffa011c4 <_printf_str>;
ffa02c36:	01 e8 00 00 	UNLINK;
ffa02c3a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c3c:	a5 05       	(R7:4, P5:5) = [SP++];
ffa02c3e:	10 00       	RTS;

ffa02c40 <_DHCP_req>:
ffa02c40:	c5 04       	[--SP] = (P5:5);
ffa02c42:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e64 <_rxbuf> */
ffa02c46:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02c4a:	0d e1 48 0e 	P5.L = 0xe48;		/* (3656)	P5=0xff900e48 <_NetDHCPserv> */
ffa02c4e:	ff e3 23 fa 	CALL 0xffa02094 <_DHCP_tx_discover>;
ffa02c52:	ff e3 7d ff 	CALL 0xffa02b4c <_DHCP_rx>;
ffa02c56:	29 91       	R1 = [P5];
ffa02c58:	39 0c       	CC = R1 == -0x1;
ffa02c5a:	42 18       	IF CC JUMP 0xffa02cde <_DHCP_req+0x9e>;
ffa02c5c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e80 <_NetOurIP> */
ffa02c60:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa02c64:	10 91       	R0 = [P2];
ffa02c66:	00 0c       	CC = R0 == 0x0;
ffa02c68:	08 18       	IF CC JUMP 0xffa02c78 <_DHCP_req+0x38>;
ffa02c6a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e80 <_NetOurIP> */
ffa02c6e:	0a e1 7c 0e 	P2.L = 0xe7c;		/* (3708)	P2=0xff900e7c <_NetSubnetMask> */
ffa02c72:	10 91       	R0 = [P2];
ffa02c74:	00 0c       	CC = R0 == 0x0;
ffa02c76:	2f 10       	IF !CC JUMP 0xffa02cd4 <_DHCP_req+0x94>;
ffa02c78:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa02c7a:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa02c7e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c80:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa02c84:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02c86:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa02c8a:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa02c8c:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02c90:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02c92:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa02c96:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa02c9a:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa02c9e:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa02ca2:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa02ca6:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa02caa:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa02cae:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02cb0:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa02cb4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa02cb8:	00 e1 4c 03 	R0.L = 0x34c;		/* (844)	R0=0xff90034c(-7339188) */
ffa02cbc:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa02cc0:	ff e3 82 f2 	CALL 0xffa011c4 <_printf_str>;
ffa02cc4:	4f 30       	R1 = FP;
ffa02cc6:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02cc8:	a1 67       	R1 += -0xc;		/* (-12) */
ffa02cca:	2a 91       	R2 = [P5];
ffa02ccc:	ff e3 f4 f8 	CALL 0xffa01eb4 <_DHCP_tx>;
ffa02cd0:	ff e3 3e ff 	CALL 0xffa02b4c <_DHCP_rx>;
ffa02cd4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02cd6:	01 e8 00 00 	UNLINK;
ffa02cda:	85 04       	(P5:5) = [SP++];
ffa02cdc:	10 00       	RTS;
ffa02cde:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02ce2:	00 e1 30 03 	R0.L = 0x330;		/* (816)	R0=0xff900330(-7339216) */
ffa02ce6:	ff e3 6f f2 	CALL 0xffa011c4 <_printf_str>;
ffa02cea:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02cec:	f5 2f       	JUMP.S 0xffa02cd6 <_DHCP_req+0x96>;
	...

ffa02cf0 <_bfin_EMAC_recv>:
ffa02cf0:	eb 05       	[--SP] = (R7:5, P5:3);
ffa02cf2:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e60 <_rxIdx> */
ffa02cf6:	45 e1 90 ff 	R5.H = 0xff90;		/* (-112)	R5=0xff900000 <_l1_data_a>(-7340032) */
ffa02cfa:	0c e1 60 0e 	P4.L = 0xe60;		/* (3680)	P4=0xff900e60 <_rxIdx> */
ffa02cfe:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00e50(-4190640) */
ffa02d02:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02d06:	28 32       	P5 = R0;
ffa02d08:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02d0a:	05 e1 64 0e 	R5.L = 0xe64;		/* (3684)	R5=0xff900e64 <_rxbuf>(-7336348) */
ffa02d0e:	74 30       	R6 = P4;
ffa02d10:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa02d14:	0e 32       	P1 = R6;
ffa02d16:	08 95       	R0 = W[P1] (Z);
ffa02d18:	10 32       	P2 = R0;
ffa02d1a:	0d 32       	P1 = R5;
ffa02d1c:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02d1e:	52 91       	P2 = [P2];
ffa02d20:	90 a2       	R0 = [P2 + 0x28];
ffa02d22:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02d24:	46 18       	IF CC JUMP 0xffa02db0 <_bfin_EMAC_recv+0xc0>;
ffa02d26:	00 00       	NOP;
ffa02d28:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d2a:	a0 4f       	R0 <<= 0x14;
ffa02d2c:	91 a2       	R1 = [P2 + 0x28];
ffa02d2e:	81 54       	R2 = R1 & R0;
ffa02d30:	02 0c       	CC = R2 == 0x0;
ffa02d32:	45 10       	IF !CC JUMP 0xffa02dbc <_bfin_EMAC_recv+0xcc>;
ffa02d34:	00 00       	NOP;
ffa02d36:	00 00       	NOP;
ffa02d38:	00 00       	NOP;
ffa02d3a:	90 a2       	R0 = [P2 + 0x28];
ffa02d3c:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa02d3e:	4a 18       	IF CC JUMP 0xffa02dd2 <_bfin_EMAC_recv+0xe2>;
ffa02d40:	00 00       	NOP;
ffa02d42:	00 00       	NOP;
ffa02d44:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02d48:	91 a2       	R1 = [P2 + 0x28];
ffa02d4a:	c1 55       	R7 = R1 & R0;
ffa02d4c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02d4e:	07 09       	CC = R7 <= R0;
ffa02d50:	4c 18       	IF CC JUMP 0xffa02de8 <_bfin_EMAC_recv+0xf8>;
ffa02d52:	00 00       	NOP;
ffa02d54:	00 00       	NOP;
ffa02d56:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02d58:	90 a1       	R0 = [P2 + 0x18];
ffa02d5a:	59 95       	R1 = W[P3] (X);
ffa02d5c:	28 93       	[P5] = R0;
ffa02d5e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02d60:	08 56       	R0 = R0 | R1;
ffa02d62:	18 97       	W[P3] = R0;
ffa02d64:	61 95       	R1 = W[P4] (X);
ffa02d66:	c8 42       	R0 = R1.L (Z);
ffa02d68:	10 0d       	CC = R0 <= 0x2;
ffa02d6a:	92 b2       	[P2 + 0x28] = R2;
ffa02d6c:	1e 1c       	IF CC JUMP 0xffa02da8 <_bfin_EMAC_recv+0xb8> (BP);
ffa02d6e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02d70:	20 97       	W[P4] = R0;
ffa02d72:	28 91       	R0 = [P5];
ffa02d74:	0f 30       	R1 = R7;
ffa02d76:	00 e3 f9 00 	CALL 0xffa02f68 <_ARP_rx>;
ffa02d7a:	00 0c       	CC = R0 == 0x0;
ffa02d7c:	03 18       	IF CC JUMP 0xffa02d82 <_bfin_EMAC_recv+0x92>;
ffa02d7e:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02d80:	ca 2f       	JUMP.S 0xffa02d14 <_bfin_EMAC_recv+0x24>;
ffa02d82:	28 91       	R0 = [P5];
ffa02d84:	0f 30       	R1 = R7;
ffa02d86:	ff e3 6b fb 	CALL 0xffa0245c <_icmp_rx>;
ffa02d8a:	00 0c       	CC = R0 == 0x0;
ffa02d8c:	f9 17       	IF !CC JUMP 0xffa02d7e <_bfin_EMAC_recv+0x8e> (BP);
ffa02d8e:	28 91       	R0 = [P5];
ffa02d90:	0f 30       	R1 = R7;
ffa02d92:	00 e3 49 04 	CALL 0xffa03624 <_tcp_rx>;
ffa02d96:	00 0c       	CC = R0 == 0x0;
ffa02d98:	f3 17       	IF !CC JUMP 0xffa02d7e <_bfin_EMAC_recv+0x8e> (BP);
ffa02d9a:	07 0d       	CC = R7 <= 0x0;
ffa02d9c:	bc 1f       	IF CC JUMP 0xffa02d14 <_bfin_EMAC_recv+0x24> (BP);
ffa02d9e:	01 e8 00 00 	UNLINK;
ffa02da2:	07 30       	R0 = R7;
ffa02da4:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02da6:	10 00       	RTS;
ffa02da8:	01 30       	R0 = R1;
ffa02daa:	08 64       	R0 += 0x1;		/* (  1) */
ffa02dac:	20 97       	W[P4] = R0;
ffa02dae:	e2 2f       	JUMP.S 0xffa02d72 <_bfin_EMAC_recv+0x82>;
ffa02db0:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02db2:	01 e8 00 00 	UNLINK;
ffa02db6:	07 30       	R0 = R7;
ffa02db8:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02dba:	10 00       	RTS;
ffa02dbc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02dc0:	00 e1 60 03 	R0.L = 0x360;		/* (864)	R0=0xff900360(-7339168) */
ffa02dc4:	ff e3 00 f2 	CALL 0xffa011c4 <_printf_str>;
ffa02dc8:	01 e8 00 00 	UNLINK;
ffa02dcc:	07 30       	R0 = R7;
ffa02dce:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02dd0:	10 00       	RTS;
ffa02dd2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900360(-7339168) */
ffa02dd6:	00 e1 7c 03 	R0.L = 0x37c;		/* (892)	R0=0xff90037c(-7339140) */
ffa02dda:	ff e3 f5 f1 	CALL 0xffa011c4 <_printf_str>;
ffa02dde:	01 e8 00 00 	UNLINK;
ffa02de2:	07 30       	R0 = R7;
ffa02de4:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02de6:	10 00       	RTS;
ffa02de8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90037c(-7339140) */
ffa02dec:	00 e1 90 03 	R0.L = 0x390;		/* (912)	R0=0xff900390(-7339120) */
ffa02df0:	ff e3 ea f1 	CALL 0xffa011c4 <_printf_str>;
ffa02df4:	01 e8 00 00 	UNLINK;
ffa02df8:	07 30       	R0 = R7;
ffa02dfa:	ab 05       	(R7:5, P5:3) = [SP++];
ffa02dfc:	10 00       	RTS;
	...

ffa02e00 <_ARP_init>:
ffa02e00:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e7c <_NetSubnetMask> */
ffa02e04:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02e08:	0a e1 8c 0e 	P2.L = 0xe8c;		/* (3724)	P2=0xff900e8c <_NetArpLut> */
ffa02e0c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02e0e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02e10:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02e12:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa02e14:	b2 e0 12 10 	LSETUP(0xffa02e18 <_ARP_init+0x18>, 0xffa02e38 <_ARP_init+0x38>) LC1 = P1;
ffa02e18:	11 93       	[P2] = R1;
ffa02e1a:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02e1e:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02e22:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa02e26:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa02e2a:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02e2e:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02e32:	52 b5       	W[P2 + 0xa] = R2;
ffa02e34:	d1 b0       	[P2 + 0xc] = R1;
ffa02e36:	11 b1       	[P2 + 0x10] = R1;
ffa02e38:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa02e3a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e8c <_NetArpLut> */
ffa02e3e:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02e42:	0a e1 88 0e 	P2.L = 0xe88;		/* (3720)	P2=0xff900e88 <_NetArpLut_age> */
ffa02e46:	10 97       	W[P2] = R0;
ffa02e48:	01 e8 00 00 	UNLINK;
ffa02e4c:	10 00       	RTS;
	...

ffa02e50 <_ARP_lut_find>:
ffa02e50:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900e4c <_txIdx> */
ffa02e54:	08 e1 8c 0e 	P0.L = 0xe8c;		/* (3724)	P0=0xff900e8c <_NetArpLut> */
ffa02e58:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02e5c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02e5e:	48 32       	P1 = P0;
ffa02e60:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02e62:	b2 e0 06 20 	LSETUP(0xffa02e66 <_ARP_lut_find+0x16>, 0xffa02e6e <_ARP_lut_find+0x1e>) LC1 = P2;
ffa02e66:	08 91       	R0 = [P1];
ffa02e68:	00 0c       	CC = R0 == 0x0;
ffa02e6a:	14 18       	IF CC JUMP 0xffa02e92 <_ARP_lut_find+0x42>;
ffa02e6c:	0a 64       	R2 += 0x1;		/* (  1) */
ffa02e6e:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02e70:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa02e74:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02e76:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02e78:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa02e7a:	09 e1 aa 0e 	P1.L = 0xeaa;		/* (3754)	P1=0xff900eaa */
ffa02e7e:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa02e80:	b2 e0 08 20 	LSETUP(0xffa02e84 <_ARP_lut_find+0x34>, 0xffa02e90 <_ARP_lut_find+0x40>) LC1 = P2;
ffa02e84:	08 95       	R0 = W[P1] (Z);
ffa02e86:	03 09       	CC = R3 <= R0;
ffa02e88:	03 18       	IF CC JUMP 0xffa02e8e <_ARP_lut_find+0x3e>;
ffa02e8a:	11 30       	R2 = R1;
ffa02e8c:	18 30       	R3 = R0;
ffa02e8e:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02e90:	09 64       	R1 += 0x1;		/* (  1) */
ffa02e92:	02 30       	R0 = R2;
ffa02e94:	01 e8 00 00 	UNLINK;
ffa02e98:	10 00       	RTS;
	...

ffa02e9c <_ARP_lut_add>:
ffa02e9c:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02e9e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e48 <_NetDHCPserv> */
ffa02ea2:	0d e1 8c 0e 	P5.L = 0xe8c;		/* (3724)	P5=0xff900e8c <_NetArpLut> */
ffa02ea6:	31 30       	R6 = R1;
ffa02ea8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02eac:	38 30       	R7 = R0;
ffa02eae:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02eb0:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa02eb2:	4d 32       	P1 = P5;
ffa02eb4:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02eb6:	00 00       	NOP;
ffa02eb8:	08 91       	R0 = [P1];
ffa02eba:	07 08       	CC = R7 == R0;
ffa02ebc:	11 07       	IF CC R2 = R1;
ffa02ebe:	09 64       	R1 += 0x1;		/* (  1) */
ffa02ec0:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa02ec2:	42 0c       	CC = P2 == 0x0;
ffa02ec4:	23 10       	IF !CC JUMP 0xffa02f0a <_ARP_lut_add+0x6e>;
ffa02ec6:	82 0c       	CC = R2 < 0x0;
ffa02ec8:	25 18       	IF CC JUMP 0xffa02f12 <_ARP_lut_add+0x76>;
ffa02eca:	82 c6 12 82 	R1 = R2 << 0x2;
ffa02ece:	0a 32       	P1 = R2;
ffa02ed0:	11 32       	P2 = R1;
ffa02ed2:	06 32       	P0 = R6;
ffa02ed4:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa02ed6:	6a 5a       	P1 = P2 + P5;
ffa02ed8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02eda:	0f 93       	[P1] = R7;
ffa02edc:	aa 5a       	P2 = P2 + P5;
ffa02ede:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02ee0:	b2 e0 03 10 	LSETUP(0xffa02ee4 <_ARP_lut_add+0x48>, 0xffa02ee6 <_ARP_lut_add+0x4a>) LC1 = P1;
ffa02ee4:	40 98       	R0 = B[P0++] (X);
ffa02ee6:	10 9a       	B[P2++] = R0;
ffa02ee8:	51 41       	R1 = (R1 + R2) << 0x2;
ffa02eea:	09 32       	P1 = R1;
ffa02eec:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa02ef0:	0a e1 88 0e 	P2.L = 0xe88;		/* (3720)	P2=0xff900e88 <_NetArpLut_age> */
ffa02ef4:	50 95       	R0 = W[P2] (X);
ffa02ef6:	08 64       	R0 += 0x1;		/* (  1) */
ffa02ef8:	10 97       	W[P2] = R0;
ffa02efa:	a9 5a       	P2 = P1 + P5;
ffa02efc:	50 b5       	W[P2 + 0xa] = R0;
ffa02efe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f00:	10 b1       	[P2 + 0x10] = R0;
ffa02f02:	01 e8 00 00 	UNLINK;
ffa02f06:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02f08:	10 00       	RTS;
ffa02f0a:	82 0c       	CC = R2 < 0x0;
ffa02f0c:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02f0e:	d4 1f       	IF CC JUMP 0xffa02eb6 <_ARP_lut_add+0x1a> (BP);
ffa02f10:	dd 2f       	JUMP.S 0xffa02eca <_ARP_lut_add+0x2e>;
ffa02f12:	ff e3 9f ff 	CALL 0xffa02e50 <_ARP_lut_find>;
ffa02f16:	10 30       	R2 = R0;
ffa02f18:	d9 2f       	JUMP.S 0xffa02eca <_ARP_lut_add+0x2e>;
	...

ffa02f1c <_ARP_lu>:
ffa02f1c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02f20:	c4 04       	[--SP] = (P5:4);
ffa02f22:	09 e1 8c 0e 	P1.L = 0xe8c;		/* (3724)	P1=0xff900e8c <_NetArpLut> */
ffa02f26:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02f2a:	10 30       	R2 = R0;
ffa02f2c:	29 32       	P5 = R1;
ffa02f2e:	61 32       	P4 = P1;
ffa02f30:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa02f32:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02f34:	b2 e0 06 20 	LSETUP(0xffa02f38 <_ARP_lu+0x1c>, 0xffa02f40 <_ARP_lu+0x24>) LC1 = P2;
ffa02f38:	08 91       	R0 = [P1];
ffa02f3a:	10 08       	CC = R0 == R2;
ffa02f3c:	08 18       	IF CC JUMP 0xffa02f4c <_ARP_lu+0x30>;
ffa02f3e:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa02f40:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02f42:	01 e8 00 00 	UNLINK;
ffa02f46:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f48:	84 04       	(P5:4) = [SP++];
ffa02f4a:	10 00       	RTS;
ffa02f4c:	08 a1       	R0 = [P1 + 0x10];
ffa02f4e:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02f50:	f7 1f       	IF CC JUMP 0xffa02f3e <_ARP_lu+0x22> (BP);
ffa02f52:	60 5a       	P1 = P0 + P4;
ffa02f54:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa02f56:	b2 e0 03 20 	LSETUP(0xffa02f5a <_ARP_lu+0x3e>, 0xffa02f5c <_ARP_lu+0x40>) LC1 = P2;
ffa02f5a:	48 98       	R0 = B[P1++] (X);
ffa02f5c:	28 9a       	B[P5++] = R0;
ffa02f5e:	01 e8 00 00 	UNLINK;
ffa02f62:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f64:	84 04       	(P5:4) = [SP++];
ffa02f66:	10 00       	RTS;

ffa02f68 <_ARP_rx>:
ffa02f68:	fb 05       	[--SP] = (R7:7, P5:3);
ffa02f6a:	20 32       	P4 = R0;
ffa02f6c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02f70:	39 30       	R7 = R1;
ffa02f72:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa02f74:	ff e3 88 f5 	CALL 0xffa01a84 <_htons>;
ffa02f78:	c0 42       	R0 = R0.L (Z);
ffa02f7a:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa02f7e:	08 08       	CC = R0 == R1;
ffa02f80:	06 18       	IF CC JUMP 0xffa02f8c <_ARP_rx+0x24>;
ffa02f82:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02f84:	01 e8 00 00 	UNLINK;
ffa02f88:	bb 05       	(R7:7, P5:3) = [SP++];
ffa02f8a:	10 00       	RTS;
ffa02f8c:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02f8e:	07 0a       	CC = R7 <= R0 (IU);
ffa02f90:	f9 1f       	IF CC JUMP 0xffa02f82 <_ARP_rx+0x1a> (BP);
ffa02f92:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f94:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02f96:	ff e3 77 f5 	CALL 0xffa01a84 <_htons>;
ffa02f9a:	c0 42       	R0 = R0.L (Z);
ffa02f9c:	07 08       	CC = R7 == R0;
ffa02f9e:	f2 17       	IF !CC JUMP 0xffa02f82 <_ARP_rx+0x1a> (BP);
ffa02fa0:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02fa4:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02fa6:	ff e3 6f f5 	CALL 0xffa01a84 <_htons>;
ffa02faa:	c0 42       	R0 = R0.L (Z);
ffa02fac:	07 08       	CC = R7 == R0;
ffa02fae:	ea 17       	IF !CC JUMP 0xffa02f82 <_ARP_rx+0x1a> (BP);
ffa02fb0:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02fb2:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02fb6:	08 08       	CC = R0 == R1;
ffa02fb8:	e5 17       	IF !CC JUMP 0xffa02f82 <_ARP_rx+0x1a> (BP);
ffa02fba:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02fbc:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02fbe:	ff e3 63 f5 	CALL 0xffa01a84 <_htons>;
ffa02fc2:	c0 42       	R0 = R0.L (Z);
ffa02fc4:	07 08       	CC = R7 == R0;
ffa02fc6:	0c 14       	IF !CC JUMP 0xffa02fde <_ARP_rx+0x76> (BP);
ffa02fc8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa02fcc:	0a e1 74 0e 	P2.L = 0xe74;		/* (3700)	P2=0xff900e74 <_NetOurMAC> */
ffa02fd0:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa02fd4:	10 99       	R0 = B[P2] (Z);
ffa02fd6:	01 08       	CC = R1 == R0;
ffa02fd8:	ae 18       	IF CC JUMP 0xffa03134 <_ARP_rx+0x1cc>;
ffa02fda:	00 00       	NOP;
ffa02fdc:	00 00       	NOP;
ffa02fde:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02fe0:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02fe2:	ff e3 51 f5 	CALL 0xffa01a84 <_htons>;
ffa02fe6:	c0 42       	R0 = R0.L (Z);
ffa02fe8:	07 08       	CC = R7 == R0;
ffa02fea:	cc 17       	IF !CC JUMP 0xffa02f82 <_ARP_rx+0x1a> (BP);
ffa02fec:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02ff0:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02ff2:	ff e3 49 f5 	CALL 0xffa01a84 <_htons>;
ffa02ff6:	c0 42       	R0 = R0.L (Z);
ffa02ff8:	07 08       	CC = R7 == R0;
ffa02ffa:	c4 17       	IF !CC JUMP 0xffa02f82 <_ARP_rx+0x1a> (BP);
ffa02ffc:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02ffe:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa03002:	08 08       	CC = R0 == R1;
ffa03004:	bf 17       	IF !CC JUMP 0xffa02f82 <_ARP_rx+0x1a> (BP);
ffa03006:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03008:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa0300a:	ff e3 3d f5 	CALL 0xffa01a84 <_htons>;
ffa0300e:	c0 42       	R0 = R0.L (Z);
ffa03010:	07 08       	CC = R7 == R0;
ffa03012:	b8 17       	IF !CC JUMP 0xffa02f82 <_ARP_rx+0x1a> (BP);
ffa03014:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa03018:	07 e1 80 0e 	R7.L = 0xe80;		/* (3712)	R7=0xff900e80 <_NetOurIP>(-7336320) */
ffa0301c:	17 32       	P2 = R7;
ffa0301e:	a1 a2       	R1 = [P4 + 0x28];
ffa03020:	10 91       	R0 = [P2];
ffa03022:	01 08       	CC = R1 == R0;
ffa03024:	af 17       	IF !CC JUMP 0xffa02f82 <_ARP_rx+0x1a> (BP);
ffa03026:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e74 <_NetOurMAC> */
ffa0302a:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa0302e:	10 95       	R0 = W[P2] (Z);
ffa03030:	10 32       	P2 = R0;
ffa03032:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e8c <_NetArpLut> */
ffa03036:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa0303a:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa0303c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e8c <_NetArpLut> */
ffa03040:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03042:	52 91       	P2 = [P2];
ffa03044:	0d e1 74 0e 	P5.L = 0xe74;		/* (3700)	P5=0xff900e74 <_NetOurMAC> */
ffa03048:	93 ad       	P3 = [P2 + 0x18];
ffa0304a:	18 97       	W[P3] = R0;
ffa0304c:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa03050:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa03054:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa03058:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa0305c:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa03060:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa03064:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa03068:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa0306c:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa03070:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa03074:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa03078:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa0307c:	68 99       	R0 = B[P5] (X);
ffa0307e:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa03082:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa03086:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa0308a:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa0308e:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa03092:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa03096:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa0309a:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa0309e:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa030a2:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa030a6:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa030aa:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa030ae:	ff e3 eb f4 	CALL 0xffa01a84 <_htons>;
ffa030b2:	d8 b5       	W[P3 + 0xe] = R0;
ffa030b4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa030b6:	ff e3 e7 f4 	CALL 0xffa01a84 <_htons>;
ffa030ba:	18 b6       	W[P3 + 0x10] = R0;
ffa030bc:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa030c0:	ff e3 e2 f4 	CALL 0xffa01a84 <_htons>;
ffa030c4:	58 b6       	W[P3 + 0x12] = R0;
ffa030c6:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa030c8:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa030cc:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa030ce:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa030d2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa030d4:	ff e3 d8 f4 	CALL 0xffa01a84 <_htons>;
ffa030d8:	44 32       	P0 = P4;
ffa030da:	d8 b6       	W[P3 + 0x16] = R0;
ffa030dc:	53 32       	P2 = P3;
ffa030de:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa030e0:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa030e2:	b2 e0 08 10 	LSETUP(0xffa030e6 <_ARP_rx+0x17e>, 0xffa030f2 <_ARP_rx+0x18a>) LC1 = P1;
ffa030e6:	68 98       	R0 = B[P5++] (X);
ffa030e8:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa030ec:	40 98       	R0 = B[P0++] (X);
ffa030ee:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa030f2:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa030f4:	17 32       	P2 = R7;
ffa030f6:	50 99       	R0 = B[P2] (X);
ffa030f8:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa030fc:	10 91       	R0 = [P2];
ffa030fe:	40 4e       	R0 >>= 0x8;
ffa03100:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa03104:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa03108:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa0310c:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa03110:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa03114:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa03118:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa0311c:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa03120:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa03124:	f3 b0       	[SP + 0xc] = R3;
ffa03126:	ff e3 05 f4 	CALL 0xffa01930 <_FormatIPAddress>;
ffa0312a:	98 b2       	[P3 + 0x28] = R0;
ffa0312c:	ff e3 56 f6 	CALL 0xffa01dd8 <_bfin_EMAC_send_nocopy>;
ffa03130:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03132:	29 2f       	JUMP.S 0xffa02f84 <_ARP_rx+0x1c>;
ffa03134:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa03138:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa0313c:	01 08       	CC = R1 == R0;
ffa0313e:	50 17       	IF !CC JUMP 0xffa02fde <_ARP_rx+0x76> (BP);
ffa03140:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa03144:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa03148:	01 08       	CC = R1 == R0;
ffa0314a:	4a 17       	IF !CC JUMP 0xffa02fde <_ARP_rx+0x76> (BP);
ffa0314c:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa03150:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa03154:	01 08       	CC = R1 == R0;
ffa03156:	44 17       	IF !CC JUMP 0xffa02fde <_ARP_rx+0x76> (BP);
ffa03158:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa0315c:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa03160:	01 08       	CC = R1 == R0;
ffa03162:	3e 17       	IF !CC JUMP 0xffa02fde <_ARP_rx+0x76> (BP);
ffa03164:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa03168:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa0316c:	01 08       	CC = R1 == R0;
ffa0316e:	38 17       	IF !CC JUMP 0xffa02fde <_ARP_rx+0x76> (BP);
ffa03170:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa03172:	44 30       	R0 = P4;
ffa03174:	ff e3 a8 f4 	CALL 0xffa01ac4 <_pack4chars>;
ffa03178:	38 30       	R7 = R0;
ffa0317a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0317e:	0f 30       	R1 = R7;
ffa03180:	00 e1 9c 04 	R0.L = 0x49c;		/* (1180)	R0=0xff90049c(-7338852) */
ffa03184:	ff e3 84 f1 	CALL 0xffa0148c <_printf_ip>;
ffa03188:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90049c(-7338852) */
ffa0318c:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa03190:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa03192:	ff e3 19 f0 	CALL 0xffa011c4 <_printf_str>;
ffa03196:	07 30       	R0 = R7;
ffa03198:	4c 30       	R1 = P4;
ffa0319a:	ff e3 81 fe 	CALL 0xffa02e9c <_ARP_lut_add>;
ffa0319e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa031a0:	f2 2e       	JUMP.S 0xffa02f84 <_ARP_rx+0x1c>;
	...

ffa031a4 <_ARP_tx>:
ffa031a4:	fc 05       	[--SP] = (R7:7, P5:4);
ffa031a6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa031aa:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa031ae:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa031b2:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa031b6:	10 95 00 00 
ffa031ba:	10 32       	P2 = R0;
ffa031bc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa031c0:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa031c4:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa031c6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e74 <_NetOurMAC> */
ffa031ca:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa031cc:	52 91       	P2 = [P2];
ffa031ce:	0d e1 74 0e 	P5.L = 0xe74;		/* (3700)	P5=0xff900e74 <_NetOurMAC> */
ffa031d2:	94 ad       	P4 = [P2 + 0x18];
ffa031d4:	20 97       	W[P4] = R0;
ffa031d6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa031d8:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa031dc:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa031e0:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa031e4:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa031e8:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa031ec:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa031f0:	68 99       	R0 = B[P5] (X);
ffa031f2:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa031f6:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa031fa:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa031fe:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa03202:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa03206:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa0320a:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa0320e:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa03212:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa03216:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa0321a:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa0321e:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa03222:	ff e3 31 f4 	CALL 0xffa01a84 <_htons>;
ffa03226:	e0 b5       	W[P4 + 0xe] = R0;
ffa03228:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0322a:	ff e3 2d f4 	CALL 0xffa01a84 <_htons>;
ffa0322e:	20 b6       	W[P4 + 0x10] = R0;
ffa03230:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03234:	ff e3 28 f4 	CALL 0xffa01a84 <_htons>;
ffa03238:	60 b6       	W[P4 + 0x12] = R0;
ffa0323a:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0323c:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa03240:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03242:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa03246:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03248:	ff e3 1e f4 	CALL 0xffa01a84 <_htons>;
ffa0324c:	e0 b6       	W[P4 + 0x16] = R0;
ffa0324e:	54 32       	P2 = P4;
ffa03250:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03252:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa03254:	b2 e0 07 10 	LSETUP(0xffa03258 <_ARP_tx+0xb4>, 0xffa03262 <_ARP_tx+0xbe>) LC1 = P1;
ffa03258:	68 98       	R0 = B[P5++] (X);
ffa0325a:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa0325e:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa03262:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa03264:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa03268:	0a e1 80 0e 	P2.L = 0xe80;		/* (3712)	P2=0xff900e80 <_NetOurIP> */
ffa0326c:	50 99       	R0 = B[P2] (X);
ffa0326e:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa03272:	10 91       	R0 = [P2];
ffa03274:	40 4e       	R0 >>= 0x8;
ffa03276:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa0327a:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa0327e:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa03282:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa03286:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa0328a:	a7 b2       	[P4 + 0x28] = R7;
ffa0328c:	01 e8 00 00 	UNLINK;
ffa03290:	bc 05       	(R7:7, P5:4) = [SP++];
ffa03292:	ff e2 a3 f5 	JUMP.L 0xffa01dd8 <_bfin_EMAC_send_nocopy>;
	...

ffa03298 <_ARP_req>:
ffa03298:	ec 05       	[--SP] = (R7:5, P5:4);
ffa0329a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0329e:	38 30       	R7 = R0;
ffa032a0:	ff e3 3e fe 	CALL 0xffa02f1c <_ARP_lu>;
ffa032a4:	00 0c       	CC = R0 == 0x0;
ffa032a6:	50 10       	IF !CC JUMP 0xffa03346 <_ARP_req+0xae>;
ffa032a8:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800e80 */
ffa032ac:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa032b0:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e60 <_rxIdx> */
ffa032b4:	16 91       	R6 = [P2];
ffa032b6:	0c e1 8c 0e 	P4.L = 0xe8c;		/* (3724)	P4=0xff900e8c <_NetArpLut> */
ffa032ba:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa032be:	4c 32       	P1 = P4;
ffa032c0:	46 51       	R5 = R6 + R0;
ffa032c2:	6c 32       	P5 = P4;
ffa032c4:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa032c6:	b2 e0 06 20 	LSETUP(0xffa032ca <_ARP_req+0x32>, 0xffa032d2 <_ARP_req+0x3a>) LC1 = P2;
ffa032ca:	08 91       	R0 = [P1];
ffa032cc:	07 08       	CC = R7 == R0;
ffa032ce:	21 18       	IF CC JUMP 0xffa03310 <_ARP_req+0x78>;
ffa032d0:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa032d2:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa032d4:	ff e3 be fd 	CALL 0xffa02e50 <_ARP_lut_find>;
ffa032d8:	10 32       	P2 = R0;
ffa032da:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa032dc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa032e0:	09 e1 88 0e 	P1.L = 0xe88;		/* (3720)	P1=0xff900e88 <_NetArpLut_age> */
ffa032e4:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa032e6:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa032e8:	10 b1       	[P2 + 0x10] = R0;
ffa032ea:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa032ee:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa032f2:	17 93 00 00 
ffa032f6:	d0 b0       	[P2 + 0xc] = R0;
ffa032f8:	48 95       	R0 = W[P1] (X);
ffa032fa:	08 64       	R0 += 0x1;		/* (  1) */
ffa032fc:	08 97       	W[P1] = R0;
ffa032fe:	50 b5       	W[P2 + 0xa] = R0;
ffa03300:	07 30       	R0 = R7;
ffa03302:	ff e3 51 ff 	CALL 0xffa031a4 <_ARP_tx>;
ffa03306:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03308:	01 e8 00 00 	UNLINK;
ffa0330c:	ac 05       	(R7:5, P5:4) = [SP++];
ffa0330e:	10 00       	RTS;
ffa03310:	08 a1       	R0 = [P1 + 0x10];
ffa03312:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa03314:	de 1f       	IF CC JUMP 0xffa032d0 <_ARP_req+0x38> (BP);
ffa03316:	e8 a0       	R0 = [P5 + 0xc];
ffa03318:	86 09       	CC = R6 < R0 (IU);
ffa0331a:	f6 1f       	IF CC JUMP 0xffa03306 <_ARP_req+0x6e> (BP);
ffa0331c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03320:	0f 30       	R1 = R7;
ffa03322:	00 e1 c0 04 	R0.L = 0x4c0;		/* (1216)	R0=0xff9004c0(-7338816) */
ffa03326:	ff e3 b3 f0 	CALL 0xffa0148c <_printf_ip>;
ffa0332a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004c0(-7338816) */
ffa0332e:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa03332:	ff e3 49 ef 	CALL 0xffa011c4 <_printf_str>;
ffa03336:	07 30       	R0 = R7;
ffa03338:	ff e3 36 ff 	CALL 0xffa031a4 <_ARP_tx>;
ffa0333c:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa03340:	ed b0 00 00 
ffa03344:	e2 2f       	JUMP.S 0xffa03308 <_ARP_req+0x70>;
ffa03346:	01 e8 00 00 	UNLINK;
ffa0334a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0334c:	ac 05       	(R7:5, P5:4) = [SP++];
ffa0334e:	10 00       	RTS;

ffa03350 <_tcp_length>:
ffa03350:	c5 04       	[--SP] = (P5:5);
ffa03352:	28 32       	P5 = R0;
ffa03354:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03358:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa0335a:	ff e3 95 f3 	CALL 0xffa01a84 <_htons>;
ffa0335e:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa03362:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa03364:	51 54       	R1 = R1 & R2;
ffa03366:	11 4f       	R1 <<= 0x2;
ffa03368:	c0 42       	R0 = R0.L (Z);
ffa0336a:	08 52       	R0 = R0 - R1;
ffa0336c:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa03370:	11 4d       	R1 >>>= 0x2;
ffa03372:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa03374:	51 54       	R1 = R1 & R2;
ffa03376:	01 e8 00 00 	UNLINK;
ffa0337a:	08 52       	R0 = R0 - R1;
ffa0337c:	85 04       	(P5:5) = [SP++];
ffa0337e:	10 00       	RTS;

ffa03380 <_tcp_checksum_calc>:
ffa03380:	08 32       	P1 = R0;
ffa03382:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03384:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03388:	28 32       	P5 = R0;
ffa0338a:	31 30       	R6 = R1;
ffa0338c:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa0338e:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa03390:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa03392:	b2 e0 03 20 	LSETUP(0xffa03396 <_tcp_checksum_calc+0x16>, 0xffa03398 <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa03396:	08 94       	R0 = W[P1++] (Z);
ffa03398:	45 51       	R5 = R5 + R0;
ffa0339a:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa0339e:	10 4e       	R0 >>= 0x2;
ffa033a0:	06 50       	R0 = R6 + R0;
ffa033a2:	c0 42       	R0 = R0.L (Z);
ffa033a4:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa033a8:	ff e3 6e f3 	CALL 0xffa01a84 <_htons>;
ffa033ac:	47 4f       	R7 <<= 0x8;
ffa033ae:	c0 42       	R0 = R0.L (Z);
ffa033b0:	c7 51       	R7 = R7 + R0;
ffa033b2:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa033b4:	ef 50       	R3 = R7 + R5;
ffa033b6:	0d 1c       	IF CC JUMP 0xffa033d0 <_tcp_checksum_calc+0x50> (BP);
ffa033b8:	0e 32       	P1 = R6;
ffa033ba:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa033be:	10 4e       	R0 >>= 0x2;
ffa033c0:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa033c2:	0e 64       	R6 += 0x1;		/* (  1) */
ffa033c4:	a9 5a       	P2 = P1 + P5;
ffa033c6:	08 32       	P1 = R0;
ffa033c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa033ca:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa033cc:	8a 5a       	P2 = P2 + P1;
ffa033ce:	10 9b       	B[P2] = R0;
ffa033d0:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa033d4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa033d6:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa033da:	71 50       	R1 = R1 + R6;
ffa033dc:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa033e0:	09 4d       	R1 >>>= 0x1;
ffa033e2:	18 4e       	R0 >>= 0x3;
ffa033e4:	41 50       	R1 = R1 + R0;
ffa033e6:	01 0d       	CC = R1 <= 0x0;
ffa033e8:	09 18       	IF CC JUMP 0xffa033fa <_tcp_checksum_calc+0x7a>;
ffa033ea:	55 32       	P2 = P5;
ffa033ec:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa033ee:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa033f0:	0a 64       	R2 += 0x1;		/* (  1) */
ffa033f2:	10 94       	R0 = W[P2++] (Z);
ffa033f4:	0a 08       	CC = R2 == R1;
ffa033f6:	c3 50       	R3 = R3 + R0;
ffa033f8:	fc 17       	IF !CC JUMP 0xffa033f0 <_tcp_checksum_calc+0x70> (BP);
ffa033fa:	d8 42       	R0 = R3.L (Z);
ffa033fc:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa03400:	08 50       	R0 = R0 + R1;
ffa03402:	c0 43       	R0 =~ R0;
ffa03404:	01 e8 00 00 	UNLINK;
ffa03408:	c0 42       	R0 = R0.L (Z);
ffa0340a:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0340c:	10 00       	RTS;
	...

ffa03410 <_tcp_checksum_set>:
ffa03410:	c5 04       	[--SP] = (P5:5);
ffa03412:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa03416:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0341a:	0a e1 4c 0e 	P2.L = 0xe4c;		/* (3660)	P2=0xff900e4c <_txIdx> */
ffa0341e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa03422:	10 95 00 00 
ffa03426:	10 32       	P2 = R0;
ffa03428:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e88 <_NetArpLut_age> */
ffa0342c:	09 e1 50 0e 	P1.L = 0xe50;		/* (3664)	P1=0xff900e50 <_txbuf> */
ffa03430:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03432:	52 91       	P2 = [P2];
ffa03434:	95 ad       	P5 = [P2 + 0x18];
ffa03436:	45 30       	R0 = P5;
ffa03438:	ff e3 a4 ff 	CALL 0xffa03380 <_tcp_checksum_calc>;
ffa0343c:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa03440:	01 e8 00 00 	UNLINK;
ffa03444:	85 04       	(P5:5) = [SP++];
ffa03446:	10 00       	RTS;

ffa03448 <_tcp_checksum_check>:
ffa03448:	10 32       	P2 = R0;
ffa0344a:	78 05       	[--SP] = (R7:7);
ffa0344c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03450:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa03454:	ff e3 96 ff 	CALL 0xffa03380 <_tcp_checksum_calc>;
ffa03458:	0f 30       	R1 = R7;
ffa0345a:	c7 42       	R7 = R0.L (Z);
ffa0345c:	39 08       	CC = R1 == R7;
ffa0345e:	19 18       	IF CC JUMP 0xffa03490 <_tcp_checksum_check+0x48>;
ffa03460:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03464:	00 e1 e0 04 	R0.L = 0x4e0;		/* (1248)	R0=0xff9004e0(-7338784) */
ffa03468:	ff e3 14 ef 	CALL 0xffa01290 <_printf_hex>;
ffa0346c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004e0(-7338784) */
ffa03470:	0f 30       	R1 = R7;
ffa03472:	00 e1 fc 04 	R0.L = 0x4fc;		/* (1276)	R0=0xff9004fc(-7338756) */
ffa03476:	ff e3 0d ef 	CALL 0xffa01290 <_printf_hex>;
ffa0347a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004fc(-7338756) */
ffa0347e:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa03482:	ff e3 a1 ee 	CALL 0xffa011c4 <_printf_str>;
ffa03486:	01 e8 00 00 	UNLINK;
ffa0348a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0348c:	38 05       	(R7:7) = [SP++];
ffa0348e:	10 00       	RTS;
ffa03490:	01 e8 00 00 	UNLINK;
ffa03494:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03496:	38 05       	(R7:7) = [SP++];
ffa03498:	10 00       	RTS;
	...

ffa0349c <_tcp_packet_setup>:
ffa0349c:	ed 05       	[--SP] = (R7:5, P5:5);
ffa0349e:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa034a2:	29 32       	P5 = R1;
ffa034a4:	7f 30       	R7 = FP;
ffa034a6:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa034a8:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa034aa:	f0 bb       	[FP -0x4] = R0;
ffa034ac:	07 30       	R0 = R7;
ffa034ae:	2a 30       	R5 = R2;
ffa034b0:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa034b4:	ff e3 52 f7 	CALL 0xffa02358 <_eth_header_setup>;
ffa034b8:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa034bc:	68 99 00 00 
ffa034c0:	80 0c       	CC = R0 < 0x0;
ffa034c2:	14 18       	IF CC JUMP 0xffa034ea <_tcp_packet_setup+0x4e>;
ffa034c4:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa034c6:	f0 b0       	[SP + 0xc] = R0;
ffa034c8:	15 30       	R2 = R5;
ffa034ca:	01 30       	R0 = R1;
ffa034cc:	0f 30       	R1 = R7;
ffa034ce:	ff e3 0f f3 	CALL 0xffa01aec <_ip_header_setup>;
ffa034d2:	b9 a2       	R1 = [FP + 0x28];
ffa034d4:	f1 b0       	[SP + 0xc] = R1;
ffa034d6:	f9 a2       	R1 = [FP + 0x2c];
ffa034d8:	31 b1       	[SP + 0x10] = R1;
ffa034da:	72 43       	R2 = R6.B (Z);
ffa034dc:	0f 30       	R1 = R7;
ffa034de:	ff e3 93 f3 	CALL 0xffa01c04 <_tcp_header_setup>;
ffa034e2:	01 e8 00 00 	UNLINK;
ffa034e6:	ad 05       	(R7:5, P5:5) = [SP++];
ffa034e8:	10 00       	RTS;
ffa034ea:	01 e8 00 00 	UNLINK;
ffa034ee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa034f0:	ad 05       	(R7:5, P5:5) = [SP++];
ffa034f2:	10 00       	RTS;

ffa034f4 <_tcp_burst>:
ffa034f4:	e3 05       	[--SP] = (R7:4, P5:3);
ffa034f6:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa034fa:	78 b2       	[FP + 0x24] = R0;
ffa034fc:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 */
ffa03500:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e4c <_txIdx> */
ffa03504:	7a a2       	R2 = [FP + 0x24];
ffa03506:	0b e1 74 0f 	P3.L = 0xf74;		/* (3956)	P3=0xff900f74 <_g_httpHeaderLen> */
ffa0350a:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa0350e:	02 0d       	CC = R2 <= 0x0;
ffa03510:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa03514:	10 91 00 00 
ffa03518:	19 91       	R1 = [P3];
ffa0351a:	7e 18       	IF CC JUMP 0xffa03616 <_tcp_burst+0x122>;
ffa0351c:	41 50       	R1 = R1 + R0;
ffa0351e:	8f 09       	CC = R7 < R1 (IU);
ffa03520:	21 32       	P4 = R1;
ffa03522:	7a 10       	IF !CC JUMP 0xffa03616 <_tcp_burst+0x122>;
ffa03524:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa03526:	38 20       	JUMP.S 0xffa03596 <_tcp_burst+0xa2>;
ffa03528:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa0352a:	18 91       	R0 = [P3];
ffa0352c:	07 52       	R0 = R7 - R0;
ffa0352e:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa03532:	08 50       	R0 = R0 + R1;
ffa03534:	16 30       	R2 = R6;
ffa03536:	0d 30       	R1 = R5;
ffa03538:	ff e3 ee ef 	CALL 0xffa01514 <_memcpy_>;
ffa0353c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e50 <_txbuf> */
ffa03540:	09 e1 60 0f 	P1.L = 0xf60;		/* (3936)	P1=0xff900f60 <_TcpSeqHttpStart> */
ffa03544:	08 91       	R0 = [P1];
ffa03546:	f7 51       	R7 = R7 + R6;
ffa03548:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f78 <_g_httpContentLen> */
ffa0354c:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa03550:	07 50       	R0 = R7 + R0;
ffa03552:	10 93       	[P2] = R0;
ffa03554:	26 50       	R0 = R6 + R4;
ffa03556:	ff e3 5d ff 	CALL 0xffa03410 <_tcp_checksum_set>;
ffa0355a:	ff e3 3f f4 	CALL 0xffa01dd8 <_bfin_EMAC_send_nocopy>;
ffa0355e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa03562:	0a e1 60 0e 	P2.L = 0xe60;		/* (3680)	P2=0xff900e60 <_rxIdx> */
ffa03566:	10 95       	R0 = W[P2] (Z);
ffa03568:	10 32       	P2 = R0;
ffa0356a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900f60 <_TcpSeqHttpStart> */
ffa0356e:	09 e1 64 0e 	P1.L = 0xe64;		/* (3684)	P1=0xff900e64 <_rxbuf> */
ffa03572:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa03574:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa03576:	52 91       	P2 = [P2];
ffa03578:	90 a2       	R0 = [P2 + 0x28];
ffa0357a:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa0357c:	07 1c       	IF CC JUMP 0xffa0358a <_tcp_burst+0x96> (BP);
ffa0357e:	90 a2       	R0 = [P2 + 0x28];
ffa03580:	4d 30       	R1 = P5;
ffa03582:	7a a2       	R2 = [FP + 0x24];
ffa03584:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa03586:	11 50       	R0 = R1 + R2;
ffa03588:	a8 06       	IF !CC P5 = R0;
ffa0358a:	79 ae       	P1 = [FP + 0x24];
ffa0358c:	69 09       	CC = P1 <= P5;
ffa0358e:	45 18       	IF CC JUMP 0xffa03618 <_tcp_burst+0x124>;
ffa03590:	44 30       	R0 = P4;
ffa03592:	87 09       	CC = R7 < R0 (IU);
ffa03594:	42 10       	IF !CC JUMP 0xffa03618 <_tcp_burst+0x124>;
ffa03596:	44 30       	R0 = P4;
ffa03598:	b8 52       	R2 = R0 - R7;
ffa0359a:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa0359e:	0a 09       	CC = R2 <= R1;
ffa035a0:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa035a2:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa035a4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900e64 <_rxbuf> */
ffa035a8:	08 06       	IF !CC R1 = R0;
ffa035aa:	09 e1 60 0f 	P1.L = 0xf60;		/* (3936)	P1=0xff900f60 <_TcpSeqHttpStart> */
ffa035ae:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa035b2:	07 cc 10 4c 	R6 = MIN (R2, R0) || R0 = [P1] || NOP;
ffa035b6:	08 91 00 00 
ffa035ba:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e60 <_rxIdx> */
ffa035be:	07 50       	R0 = R7 + R0;
ffa035c0:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa035c4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900f60 <_TcpSeqHttpStart> */
ffa035c8:	10 93       	[P2] = R0;
ffa035ca:	09 e1 5c 0f 	P1.L = 0xf5c;		/* (3932)	P1=0xff900f5c <_TcpSeqClient> */
ffa035ce:	f1 b0       	[SP + 0xc] = R1;
ffa035d0:	30 b1       	[SP + 0x10] = R0;
ffa035d2:	08 91       	R0 = [P1];
ffa035d4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa035d8:	70 b1       	[SP + 0x14] = R0;
ffa035da:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_NetDestIP> */
ffa035de:	4f 30       	R1 = FP;
ffa035e0:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R2 = [P2] || NOP;
ffa035e4:	12 91 00 00 
ffa035e8:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa035ea:	ff e3 59 ff 	CALL 0xffa0349c <_tcp_packet_setup>;
ffa035ee:	28 30       	R5 = R0;
ffa035f0:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa035f4:	00 0d       	CC = R0 <= 0x0;
ffa035f6:	ca 1b       	IF CC JUMP 0xffa0358a <_tcp_burst+0x96>;
ffa035f8:	18 91       	R0 = [P3];
ffa035fa:	38 0a       	CC = R0 <= R7 (IU);
ffa035fc:	96 1f       	IF CC JUMP 0xffa03528 <_tcp_burst+0x34> (BP);
ffa035fe:	38 53       	R4 = R0 - R7;
ffa03600:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03604:	07 50       	R0 = R7 + R0;
ffa03606:	0d 30       	R1 = R5;
ffa03608:	14 30       	R2 = R4;
ffa0360a:	ff e3 85 ef 	CALL 0xffa01514 <_memcpy_>;
ffa0360e:	65 51       	R5 = R5 + R4;
ffa03610:	a6 53       	R6 = R6 - R4;
ffa03612:	e7 51       	R7 = R7 + R4;
ffa03614:	8b 2f       	JUMP.S 0xffa0352a <_tcp_burst+0x36>;
ffa03616:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa03618:	01 e8 00 00 	UNLINK;
ffa0361c:	45 30       	R0 = P5;
ffa0361e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03620:	10 00       	RTS;
	...

ffa03624 <_tcp_rx>:
ffa03624:	e3 05       	[--SP] = (R7:4, P5:3);
ffa03626:	20 32       	P4 = R0;
ffa03628:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa0362c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa03630:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa03632:	ff e3 29 f2 	CALL 0xffa01a84 <_htons>;
ffa03636:	c0 42       	R0 = R0.L (Z);
ffa03638:	07 08       	CC = R7 == R0;
ffa0363a:	06 18       	IF CC JUMP 0xffa03646 <_tcp_rx+0x22>;
ffa0363c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0363e:	01 e8 00 00 	UNLINK;
ffa03642:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03644:	10 00       	RTS;
ffa03646:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa0364a:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa0364c:	08 08       	CC = R0 == R1;
ffa0364e:	f7 17       	IF !CC JUMP 0xffa0363c <_tcp_rx+0x18> (BP);
ffa03650:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa03654:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa03658:	ff e3 16 f2 	CALL 0xffa01a84 <_htons>;
ffa0365c:	c0 42       	R0 = R0.L (Z);
ffa0365e:	07 08       	CC = R7 == R0;
ffa03660:	ee 17       	IF !CC JUMP 0xffa0363c <_tcp_rx+0x18> (BP);
ffa03662:	44 30       	R0 = P4;
ffa03664:	80 64       	R0 += 0x10;		/* ( 16) */
ffa03666:	ff e3 83 f2 	CALL 0xffa01b6c <_ip_header_checksum>;
ffa0366a:	40 43       	R0 = R0.B (Z);
ffa0366c:	00 0c       	CC = R0 == 0x0;
ffa0366e:	e7 1f       	IF CC JUMP 0xffa0363c <_tcp_rx+0x18> (BP);
ffa03670:	4c 30       	R1 = P4;
ffa03672:	41 64       	R1 += 0x8;		/* (  8) */
ffa03674:	e0 a1       	R0 = [P4 + 0x1c];
ffa03676:	ff e3 13 fc 	CALL 0xffa02e9c <_ARP_lut_add>;
ffa0367a:	44 30       	R0 = P4;
ffa0367c:	ff e3 6a fe 	CALL 0xffa03350 <_tcp_length>;
ffa03680:	30 30       	R6 = R0;
ffa03682:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa03686:	0e 30       	R1 = R6;
ffa03688:	00 e1 0c 05 	R0.L = 0x50c;		/* (1292)	R0=0xff90050c(-7338740) */
ffa0368c:	ff e3 5e ee 	CALL 0xffa01348 <_printf_int>;
ffa03690:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90050c(-7338740) */
ffa03694:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa03698:	ff e3 96 ed 	CALL 0xffa011c4 <_printf_str>;
ffa0369c:	44 30       	R0 = P4;
ffa0369e:	0e 30       	R1 = R6;
ffa036a0:	ff e3 d4 fe 	CALL 0xffa03448 <_tcp_checksum_check>;
ffa036a4:	40 43       	R0 = R0.B (Z);
ffa036a6:	00 0c       	CC = R0 == 0x0;
ffa036a8:	ca 1b       	IF CC JUMP 0xffa0363c <_tcp_rx+0x18>;
ffa036aa:	00 00       	NOP;
ffa036ac:	00 00       	NOP;
ffa036ae:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa036b0:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa036b4:	48 43       	R0 = R1.B (Z);
ffa036b6:	10 08       	CC = R0 == R2;
ffa036b8:	f1 18       	IF CC JUMP 0xffa0389a <_tcp_rx+0x276>;
ffa036ba:	10 0c       	CC = R0 == 0x2;
ffa036bc:	0a 19       	IF CC JUMP 0xffa038d0 <_tcp_rx+0x2ac>;
ffa036be:	48 43       	R0 = R1.B (Z);
ffa036c0:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa036c2:	08 08       	CC = R0 == R1;
ffa036c4:	85 18       	IF CC JUMP 0xffa037ce <_tcp_rx+0x1aa>;
ffa036c6:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa036c8:	ab 10       	IF !CC JUMP 0xffa0381e <_tcp_rx+0x1fa>;
ffa036ca:	00 00       	NOP;
ffa036cc:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f74 <_g_httpHeaderLen> */
ffa036d0:	0b e1 64 0f 	P3.L = 0xf64;		/* (3940)	P3=0xff900f64 <_TcpState> */
ffa036d4:	00 00       	NOP;
ffa036d6:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa036da:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa036dc:	38 10       	IF !CC JUMP 0xffa0374c <_tcp_rx+0x128>;
ffa036de:	18 91       	R0 = [P3];
ffa036e0:	10 0c       	CC = R0 == 0x2;
ffa036e2:	ad 17       	IF !CC JUMP 0xffa0363c <_tcp_rx+0x18> (BP);
ffa036e4:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900000 <_l1_data_a>(-7340032) */
ffa036e8:	a0 a2       	R0 = [P4 + 0x28];
ffa036ea:	04 e1 44 0e 	R4.L = 0xe44;		/* (3652)	R4=0xff900e44 <_NetDestIP>(-7336380) */
ffa036ee:	a5 e5 30 00 	R5 = B[P4 + 0x30] (X);
ffa036f2:	ff e3 d5 f1 	CALL 0xffa01a9c <_htonl>;
ffa036f6:	14 32       	P2 = R4;
ffa036f8:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa036fc:	30 50       	R0 = R0 + R6;
ffa036fe:	0d e1 5c 0f 	P5.L = 0xf5c;		/* (3932)	P5=0xff900f5c <_TcpSeqClient> */
ffa03702:	28 93       	[P5] = R0;
ffa03704:	e0 a1       	R0 = [P4 + 0x1c];
ffa03706:	10 93       	[P2] = R0;
ffa03708:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f64 <_TcpState> */
ffa0370c:	e0 a2       	R0 = [P4 + 0x2c];
ffa0370e:	0b e1 60 0f 	P3.L = 0xf60;		/* (3936)	P3=0xff900f60 <_TcpSeqHttpStart> */
ffa03712:	ff e3 c5 f1 	CALL 0xffa01a9c <_htonl>;
ffa03716:	19 91       	R1 = [P3];
ffa03718:	c8 53       	R7 = R0 - R1;
ffa0371a:	a1 e4 31 00 	R1 = B[P4 + 0x31] (Z);
ffa0371e:	21 48       	CC = !BITTST (R1, 0x4);		/* bit  4 */
ffa03720:	1e 1d       	IF CC JUMP 0xffa0395c <_tcp_rx+0x338> (BP);
ffa03722:	06 0c       	CC = R6 == 0x0;
ffa03724:	1c 15       	IF !CC JUMP 0xffa0395c <_tcp_rx+0x338> (BP);
ffa03726:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_NetDestIP> */
ffa0372a:	0a e1 74 0f 	P2.L = 0xf74;		/* (3956)	P2=0xff900f74 <_g_httpHeaderLen> */
ffa0372e:	10 91       	R0 = [P2];
ffa03730:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f74 <_g_httpHeaderLen> */
ffa03734:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa03738:	11 91       	R1 = [P2];
ffa0373a:	08 50       	R0 = R0 + R1;
ffa0373c:	07 08       	CC = R7 == R0;
ffa0373e:	46 18       	IF CC JUMP 0xffa037ca <_tcp_rx+0x1a6>;
ffa03740:	0f 30       	R1 = R7;
ffa03742:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03744:	ff e3 d8 fe 	CALL 0xffa034f4 <_tcp_burst>;
ffa03748:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0374a:	7a 2f       	JUMP.S 0xffa0363e <_tcp_rx+0x1a>;
ffa0374c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0374e:	1f 91       	R7 = [P3];
ffa03750:	07 08       	CC = R7 == R0;
ffa03752:	85 19       	IF CC JUMP 0xffa03a5c <_tcp_rx+0x438>;
ffa03754:	07 0c       	CC = R7 == 0x0;
ffa03756:	c4 17       	IF !CC JUMP 0xffa036de <_tcp_rx+0xba> (BP);
ffa03758:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa0375c:	00 e1 88 05 	R0.L = 0x588;		/* (1416)	R0=0xff900588(-7338616) */
ffa03760:	ff e3 32 ed 	CALL 0xffa011c4 <_printf_str>;
ffa03764:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f78 <_g_httpContentLen> */
ffa03768:	0a e1 7c 0f 	P2.L = 0xf7c;		/* (3964)	P2=0xff900f7c <_g_httpRxed> */
ffa0376c:	17 93       	[P2] = R7;
ffa0376e:	a0 a2       	R0 = [P4 + 0x28];
ffa03770:	ff e3 96 f1 	CALL 0xffa01a9c <_htonl>;
ffa03774:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f7c <_g_httpRxed> */
ffa03778:	0a e1 5c 0f 	P2.L = 0xf5c;		/* (3932)	P2=0xff900f5c <_TcpSeqClient> */
ffa0377c:	10 93       	[P2] = R0;
ffa0377e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f5c <_TcpSeqClient> */
ffa03782:	e2 a1       	R2 = [P4 + 0x1c];
ffa03784:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_NetDestIP> */
ffa03788:	12 93       	[P2] = R2;
ffa0378a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_NetDestIP> */
ffa0378e:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03792:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_TcpClientPort> */
ffa03796:	11 97       	W[P2] = R1;
ffa03798:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa0379a:	f1 b0       	[SP + 0xc] = R1;
ffa0379c:	4f 30       	R1 = FP;
ffa0379e:	30 b1       	[SP + 0x10] = R0;
ffa037a0:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa037a2:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa037a6:	77 b1 00 00 
ffa037aa:	ff e3 79 fe 	CALL 0xffa0349c <_tcp_packet_setup>;
ffa037ae:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa037b2:	00 0d       	CC = R0 <= 0x0;
ffa037b4:	95 1b       	IF CC JUMP 0xffa036de <_tcp_rx+0xba>;
ffa037b6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_TcpClientPort> */
ffa037ba:	0a e1 64 0f 	P2.L = 0xf64;		/* (3940)	P2=0xff900f64 <_TcpState> */
ffa037be:	17 93       	[P2] = R7;
ffa037c0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa037c2:	ff e3 27 fe 	CALL 0xffa03410 <_tcp_checksum_set>;
ffa037c6:	ff e3 09 f3 	CALL 0xffa01dd8 <_bfin_EMAC_send_nocopy>;
ffa037ca:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa037cc:	39 2f       	JUMP.S 0xffa0363e <_tcp_rx+0x1a>;
ffa037ce:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f60 <_TcpSeqHttpStart> */
ffa037d2:	0b e1 64 0f 	P3.L = 0xf64;		/* (3940)	P3=0xff900f64 <_TcpState> */
ffa037d6:	18 91       	R0 = [P3];
ffa037d8:	08 0c       	CC = R0 == 0x1;
ffa037da:	b9 17       	IF !CC JUMP 0xffa0374c <_tcp_rx+0x128> (BP);
ffa037dc:	e0 a2       	R0 = [P4 + 0x2c];
ffa037de:	ff e3 5f f1 	CALL 0xffa01a9c <_htonl>;
ffa037e2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f64 <_TcpState> */
ffa037e6:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa037ea:	11 91       	R1 = [P2];
ffa037ec:	08 08       	CC = R0 == R1;
ffa037ee:	42 19       	IF CC JUMP 0xffa03a72 <_tcp_rx+0x44e>;
ffa037f0:	00 00       	NOP;
ffa037f2:	00 00       	NOP;
ffa037f4:	00 00       	NOP;
ffa037f6:	e0 a2       	R0 = [P4 + 0x2c];
ffa037f8:	ff e3 52 f1 	CALL 0xffa01a9c <_htonl>;
ffa037fc:	08 30       	R1 = R0;
ffa037fe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03802:	00 e1 38 05 	R0.L = 0x538;		/* (1336)	R0=0xff900538(-7338696) */
ffa03806:	ff e3 43 ee 	CALL 0xffa0148c <_printf_ip>;
ffa0380a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0380c:	18 93       	[P3] = R0;
ffa0380e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03812:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa03816:	ff e3 d7 ec 	CALL 0xffa011c4 <_printf_str>;
ffa0381a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0381c:	11 2f       	JUMP.S 0xffa0363e <_tcp_rx+0x1a>;
ffa0381e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03822:	00 e1 64 05 	R0.L = 0x564;		/* (1380)	R0=0xff900564(-7338652) */
ffa03826:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900e44 <_NetDestIP>(-7336380) */
ffa0382a:	ff e3 cd ec 	CALL 0xffa011c4 <_printf_str>;
ffa0382e:	04 e1 44 0e 	R4.L = 0xe44;		/* (3652)	R4=0xff900e44 <_NetDestIP>(-7336380) */
ffa03832:	a0 a2       	R0 = [P4 + 0x28];
ffa03834:	ff e3 34 f1 	CALL 0xffa01a9c <_htonl>;
ffa03838:	14 32       	P2 = R4;
ffa0383a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f5c <_TcpSeqClient> */
ffa0383e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900f64 <_TcpState> */
ffa03842:	0d e1 5c 0f 	P5.L = 0xf5c;		/* (3932)	P5=0xff900f5c <_TcpSeqClient> */
ffa03846:	0b e1 64 0f 	P3.L = 0xf64;		/* (3940)	P3=0xff900f64 <_TcpState> */
ffa0384a:	28 93       	[P5] = R0;
ffa0384c:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa03850:	18 91 00 00 
ffa03854:	e2 a1       	R2 = [P4 + 0x1c];
ffa03856:	09 64       	R1 += 0x1;		/* (  1) */
ffa03858:	10 0c       	CC = R0 == 0x2;
ffa0385a:	12 93       	[P2] = R2;
ffa0385c:	29 93       	[P5] = R1;
ffa0385e:	03 18       	IF CC JUMP 0xffa03864 <_tcp_rx+0x240>;
ffa03860:	00 0c       	CC = R0 == 0x0;
ffa03862:	c0 14       	IF !CC JUMP 0xffa039e2 <_tcp_rx+0x3be> (BP);
ffa03864:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa03866:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa0386a:	f0 b0       	[SP + 0xc] = R0;
ffa0386c:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa03870:	10 91       	R0 = [P2];
ffa03872:	71 b1       	[SP + 0x14] = R1;
ffa03874:	4f 30       	R1 = FP;
ffa03876:	30 b1       	[SP + 0x10] = R0;
ffa03878:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0387a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0387c:	ff e3 10 fe 	CALL 0xffa0349c <_tcp_packet_setup>;
ffa03880:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03884:	00 0d       	CC = R0 <= 0x0;
ffa03886:	ae 18       	IF CC JUMP 0xffa039e2 <_tcp_rx+0x3be>;
ffa03888:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0388a:	18 93       	[P3] = R0;
ffa0388c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0388e:	ff e3 c1 fd 	CALL 0xffa03410 <_tcp_checksum_set>;
ffa03892:	ff e3 a3 f2 	CALL 0xffa01dd8 <_bfin_EMAC_send_nocopy>;
ffa03896:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03898:	d3 2e       	JUMP.S 0xffa0363e <_tcp_rx+0x1a>;
ffa0389a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0389e:	00 e1 20 05 	R0.L = 0x520;		/* (1312)	R0=0xff900520(-7338720) */
ffa038a2:	ff e3 91 ec 	CALL 0xffa011c4 <_printf_str>;
ffa038a6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa038aa:	0a e1 64 0f 	P2.L = 0xf64;		/* (3940)	P2=0xff900f64 <_TcpState> */
ffa038ae:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa038b0:	17 93       	[P2] = R7;
ffa038b2:	a0 a2       	R0 = [P4 + 0x28];
ffa038b4:	ff e3 f4 f0 	CALL 0xffa01a9c <_htonl>;
ffa038b8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f64 <_TcpState> */
ffa038bc:	0a e1 5c 0f 	P2.L = 0xf5c;		/* (3932)	P2=0xff900f5c <_TcpSeqClient> */
ffa038c0:	10 93       	[P2] = R0;
ffa038c2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f5c <_TcpSeqClient> */
ffa038c6:	0a e1 7c 0f 	P2.L = 0xf7c;		/* (3964)	P2=0xff900f7c <_g_httpRxed> */
ffa038ca:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa038cc:	17 93       	[P2] = R7;
ffa038ce:	b8 2e       	JUMP.S 0xffa0363e <_tcp_rx+0x1a>;
ffa038d0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa038d4:	00 e1 2c 05 	R0.L = 0x52c;		/* (1324)	R0=0xff90052c(-7338708) */
ffa038d8:	ff e3 76 ec 	CALL 0xffa011c4 <_printf_str>;
ffa038dc:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f5c <_TcpSeqClient> */
ffa038e0:	a0 a2       	R0 = [P4 + 0x28];
ffa038e2:	ff e3 dd f0 	CALL 0xffa01a9c <_htonl>;
ffa038e6:	0d e1 5c 0f 	P5.L = 0xf5c;		/* (3932)	P5=0xff900f5c <_TcpSeqClient> */
ffa038ea:	28 93       	[P5] = R0;
ffa038ec:	44 30       	R0 = P4;
ffa038ee:	ff e3 31 fd 	CALL 0xffa03350 <_tcp_length>;
ffa038f2:	29 91       	R1 = [P5];
ffa038f4:	09 64       	R1 += 0x1;		/* (  1) */
ffa038f6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f7c <_g_httpRxed> */
ffa038fa:	08 50       	R0 = R0 + R1;
ffa038fc:	0a e1 70 0f 	P2.L = 0xf70;		/* (3952)	P2=0xff900f70 <_TcpClientPort> */
ffa03900:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03904:	11 97       	W[P2] = R1;
ffa03906:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f70 <_TcpClientPort> */
ffa0390a:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa0390e:	28 93 00 00 
ffa03912:	0a e1 7c 0f 	P2.L = 0xf7c;		/* (3964)	P2=0xff900f7c <_g_httpRxed> */
ffa03916:	11 93       	[P2] = R1;
ffa03918:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f7c <_g_httpRxed> */
ffa0391c:	e2 a1       	R2 = [P4 + 0x1c];
ffa0391e:	0a e1 44 0e 	P2.L = 0xe44;		/* (3652)	P2=0xff900e44 <_NetDestIP> */
ffa03922:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa03924:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f5c <_TcpSeqClient> */
ffa03928:	12 93       	[P2] = R2;
ffa0392a:	0d e1 58 0f 	P5.L = 0xf58;		/* (3928)	P5=0xff900f58 <_TcpSeqHost> */
ffa0392e:	f1 b0       	[SP + 0xc] = R1;
ffa03930:	29 91       	R1 = [P5];
ffa03932:	31 b1       	[SP + 0x10] = R1;
ffa03934:	4f 30       	R1 = FP;
ffa03936:	70 b1       	[SP + 0x14] = R0;
ffa03938:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0393a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0393c:	ff e3 b0 fd 	CALL 0xffa0349c <_tcp_packet_setup>;
ffa03940:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03944:	00 0d       	CC = R0 <= 0x0;
ffa03946:	93 18       	IF CC JUMP 0xffa03a6c <_tcp_rx+0x448>;
ffa03948:	28 91       	R0 = [P5];
ffa0394a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0394c:	28 93       	[P5] = R0;
ffa0394e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03950:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e44 <_NetDestIP> */
ffa03954:	0a e1 64 0f 	P2.L = 0xf64;		/* (3940)	P2=0xff900f64 <_TcpState> */
ffa03958:	10 93       	[P2] = R0;
ffa0395a:	33 2f       	JUMP.S 0xffa037c0 <_tcp_rx+0x19c>;
ffa0395c:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa03960:	28 54       	R0 = R0 & R5;
ffa03962:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa03964:	10 4d       	R0 >>>= 0x2;
ffa03966:	54 30       	R2 = P4;
ffa03968:	19 48       	CC = !BITTST (R1, 0x3);		/* bit  3 */
ffa0396a:	02 50       	R0 = R2 + R0;
ffa0396c:	5d 1c       	IF CC JUMP 0xffa03a26 <_tcp_rx+0x402> (BP);
ffa0396e:	0e 30       	R1 = R6;
ffa03970:	00 e3 16 05 	CALL 0xffa0439c <_httpCollate>;
ffa03974:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f58 <_TcpSeqHost> */
ffa03978:	18 91       	R0 = [P3];
ffa0397a:	07 50       	R0 = R7 + R0;
ffa0397c:	0d e1 58 0f 	P5.L = 0xf58;		/* (3928)	P5=0xff900f58 <_TcpSeqHost> */
ffa03980:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900e8c <_NetArpLut> */
ffa03984:	28 93       	[P5] = R0;
ffa03986:	0c e1 7c 0f 	P4.L = 0xf7c;		/* (3964)	P4=0xff900f7c <_g_httpRxed> */
ffa0398a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0398c:	80 4f       	R0 <<= 0x10;
ffa0398e:	21 91       	R1 = [P4];
ffa03990:	00 e3 dc 02 	CALL 0xffa03f48 <_httpResp>;
ffa03994:	00 0c       	CC = R0 == 0x0;
ffa03996:	22 1c       	IF CC JUMP 0xffa039da <_tcp_rx+0x3b6> (BP);
ffa03998:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f64 <_TcpState> */
ffa0399c:	28 91       	R0 = [P5];
ffa0399e:	0a e1 60 0f 	P2.L = 0xf60;		/* (3936)	P2=0xff900f60 <_TcpSeqHttpStart> */
ffa039a2:	10 93       	[P2] = R0;
ffa039a4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f60 <_TcpSeqHttpStart> */
ffa039a8:	0a e1 74 0f 	P2.L = 0xf74;		/* (3956)	P2=0xff900f74 <_g_httpHeaderLen> */
ffa039ac:	11 91       	R1 = [P2];
ffa039ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f74 <_g_httpHeaderLen> */
ffa039b2:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa039b6:	10 91       	R0 = [P2];
ffa039b8:	41 50       	R1 = R1 + R0;
ffa039ba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa039be:	00 e1 a4 05 	R0.L = 0x5a4;		/* (1444)	R0=0xff9005a4(-7338588) */
ffa039c2:	ff e3 c3 ec 	CALL 0xffa01348 <_printf_int>;
ffa039c6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005a4(-7338588) */
ffa039ca:	00 e1 64 0a 	R0.L = 0xa64;		/* (2660)	R0=0xff900a64(-7337372) */
ffa039ce:	ff e3 fb eb 	CALL 0xffa011c4 <_printf_str>;
ffa039d2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa039d4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa039d6:	ff e3 8f fd 	CALL 0xffa034f4 <_tcp_burst>;
ffa039da:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa039dc:	20 93       	[P4] = R0;
ffa039de:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa039e0:	2f 2e       	JUMP.S 0xffa0363e <_tcp_rx+0x1a>;
ffa039e2:	18 91       	R0 = [P3];
ffa039e4:	18 0c       	CC = R0 == 0x3;
ffa039e6:	77 16       	IF !CC JUMP 0xffa036d4 <_tcp_rx+0xb0> (BP);
ffa039e8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f78 <_g_httpContentLen> */
ffa039ec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa039ee:	0a e1 7c 0f 	P2.L = 0xf7c;		/* (3964)	P2=0xff900f7c <_g_httpRxed> */
ffa039f2:	10 93       	[P2] = R0;
ffa039f4:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa039f6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f7c <_g_httpRxed> */
ffa039fa:	f0 b0       	[SP + 0xc] = R0;
ffa039fc:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa03a00:	10 91       	R0 = [P2];
ffa03a02:	14 32       	P2 = R4;
ffa03a04:	30 b1       	[SP + 0x10] = R0;
ffa03a06:	28 91       	R0 = [P5];
ffa03a08:	70 b1       	[SP + 0x14] = R0;
ffa03a0a:	4f 30       	R1 = FP;
ffa03a0c:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03a10:	12 91 00 00 
ffa03a14:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03a16:	ff e3 43 fd 	CALL 0xffa0349c <_tcp_packet_setup>;
ffa03a1a:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03a1e:	00 0d       	CC = R0 <= 0x0;
ffa03a20:	5a 1a       	IF CC JUMP 0xffa036d4 <_tcp_rx+0xb0>;
ffa03a22:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa03a24:	96 2f       	JUMP.S 0xffa03950 <_tcp_rx+0x32c>;
ffa03a26:	0e 30       	R1 = R6;
ffa03a28:	00 e3 ba 04 	CALL 0xffa0439c <_httpCollate>;
ffa03a2c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03a2e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa03a32:	f0 b0       	[SP + 0xc] = R0;
ffa03a34:	0a e1 58 0f 	P2.L = 0xf58;		/* (3928)	P2=0xff900f58 <_TcpSeqHost> */
ffa03a38:	10 91       	R0 = [P2];
ffa03a3a:	14 32       	P2 = R4;
ffa03a3c:	30 b1       	[SP + 0x10] = R0;
ffa03a3e:	28 91       	R0 = [P5];
ffa03a40:	70 b1       	[SP + 0x14] = R0;
ffa03a42:	4f 30       	R1 = FP;
ffa03a44:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03a48:	12 91 00 00 
ffa03a4c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03a4e:	ff e3 27 fd 	CALL 0xffa0349c <_tcp_packet_setup>;
ffa03a52:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03a56:	00 0d       	CC = R0 <= 0x0;
ffa03a58:	b4 16       	IF !CC JUMP 0xffa037c0 <_tcp_rx+0x19c> (BP);
ffa03a5a:	f1 2d       	JUMP.S 0xffa0363c <_tcp_rx+0x18>;
ffa03a5c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa03a60:	00 e1 74 05 	R0.L = 0x574;		/* (1396)	R0=0xff900574(-7338636) */
ffa03a64:	ff e3 b0 eb 	CALL 0xffa011c4 <_printf_str>;
ffa03a68:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03a6a:	ea 2d       	JUMP.S 0xffa0363e <_tcp_rx+0x1a>;
ffa03a6c:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03a70:	27 2e       	JUMP.S 0xffa036be <_tcp_rx+0x9a>;
ffa03a72:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03a74:	18 93       	[P3] = R0;
ffa03a76:	a0 a2       	R0 = [P4 + 0x28];
ffa03a78:	ff e3 12 f0 	CALL 0xffa01a9c <_htonl>;
ffa03a7c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f58 <_TcpSeqHost> */
ffa03a80:	0a e1 5c 0f 	P2.L = 0xf5c;		/* (3932)	P2=0xff900f5c <_TcpSeqClient> */
ffa03a84:	10 93       	[P2] = R0;
ffa03a86:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa03a8a:	00 e1 54 05 	R0.L = 0x554;		/* (1364)	R0=0xff900554(-7338668) */
ffa03a8e:	ff e3 9b eb 	CALL 0xffa011c4 <_printf_str>;
ffa03a92:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03a94:	d5 2d       	JUMP.S 0xffa0363e <_tcp_rx+0x1a>;
	...

ffa03a98 <_htmlForm>:
ffa03a98:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03a9c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa03aa0:	02 e1 c0 05 	R2.L = 0x5c0;		/* (1472)	R2=0xff9005c0(-7338560) */
ffa03aa4:	01 e8 00 00 	UNLINK;
ffa03aa8:	ff e2 66 ed 	JUMP.L 0xffa01574 <_strcpy_>;

ffa03aac <_htmlDiv>:
ffa03aac:	12 43       	R2 = R2.B (X);
ffa03aae:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa03ab2:	1a 08       	CC = R2 == R3;
ffa03ab4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03ab8:	09 18       	IF CC JUMP 0xffa03aca <_htmlDiv+0x1e>;
ffa03aba:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005c0(-7338560) */
ffa03abe:	02 e1 14 06 	R2.L = 0x614;		/* (1556)	R2=0xff900614(-7338476) */
ffa03ac2:	01 e8 00 00 	UNLINK;
ffa03ac6:	ff e2 57 ed 	JUMP.L 0xffa01574 <_strcpy_>;
ffa03aca:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900614(-7338476) */
ffa03ace:	02 e1 e0 05 	R2.L = 0x5e0;		/* (1504)	R2=0xff9005e0(-7338528) */
ffa03ad2:	01 e8 00 00 	UNLINK;
ffa03ad6:	ff e2 4f ed 	JUMP.L 0xffa01574 <_strcpy_>;
	...

ffa03adc <_html404>:
ffa03adc:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03ae0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ae2:	4f 30       	R1 = FP;
ffa03ae4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005e0(-7338528) */
ffa03ae8:	f0 bb       	[FP -0x4] = R0;
ffa03aea:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03aec:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03af0:	02 e1 48 06 	R2.L = 0x648;		/* (1608)	R2=0xff900648(-7338424) */
ffa03af4:	ff e3 40 ed 	CALL 0xffa01574 <_strcpy_>;
ffa03af8:	f0 b9       	R0 = [FP -0x4];
ffa03afa:	01 e8 00 00 	UNLINK;
ffa03afe:	10 00       	RTS;

ffa03b00 <_htmlCursorOption>:
ffa03b00:	68 05       	[--SP] = (R7:5);
ffa03b02:	2a 30       	R5 = R2;
ffa03b04:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900648(-7338424) */
ffa03b08:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03b0c:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa03b10:	3f a2 00 00 
ffa03b14:	02 e1 64 06 	R2.L = 0x664;		/* (1636)	R2=0xff900664(-7338396) */
ffa03b18:	ff e3 2e ed 	CALL 0xffa01574 <_strcpy_>;
ffa03b1c:	0e 30       	R1 = R6;
ffa03b1e:	15 30       	R2 = R5;
ffa03b20:	ff e3 90 ee 	CALL 0xffa01840 <_strprintf_int>;
ffa03b24:	3d 08       	CC = R5 == R7;
ffa03b26:	16 18       	IF CC JUMP 0xffa03b52 <_htmlCursorOption+0x52>;
ffa03b28:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900664(-7338396) */
ffa03b2c:	0e 30       	R1 = R6;
ffa03b2e:	02 e1 8c 06 	R2.L = 0x68c;		/* (1676)	R2=0xff90068c(-7338356) */
ffa03b32:	ff e3 21 ed 	CALL 0xffa01574 <_strcpy_>;
ffa03b36:	0e 30       	R1 = R6;
ffa03b38:	15 30       	R2 = R5;
ffa03b3a:	ff e3 83 ee 	CALL 0xffa01840 <_strprintf_int>;
ffa03b3e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90068c(-7338356) */
ffa03b42:	01 e8 00 00 	UNLINK;
ffa03b46:	0e 30       	R1 = R6;
ffa03b48:	02 e1 90 06 	R2.L = 0x690;		/* (1680)	R2=0xff900690(-7338352) */
ffa03b4c:	28 05       	(R7:5) = [SP++];
ffa03b4e:	ff e2 13 ed 	JUMP.L 0xffa01574 <_strcpy_>;
ffa03b52:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900690(-7338352) */
ffa03b56:	0e 30       	R1 = R6;
ffa03b58:	02 e1 74 06 	R2.L = 0x674;		/* (1652)	R2=0xff900674(-7338380) */
ffa03b5c:	ff e3 0c ed 	CALL 0xffa01574 <_strcpy_>;
ffa03b60:	e4 2f       	JUMP.S 0xffa03b28 <_htmlCursorOption+0x28>;
	...

ffa03b64 <_htmlCursorSelect>:
ffa03b64:	60 05       	[--SP] = (R7:4);
ffa03b66:	3a 30       	R7 = R2;
ffa03b68:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900674(-7338380) */
ffa03b6c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03b70:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa03b74:	7e a2 00 00 
ffa03b78:	02 e1 9c 06 	R2.L = 0x69c;		/* (1692)	R2=0xff90069c(-7338340) */
ffa03b7c:	bc a2       	R4 = [FP + 0x28];
ffa03b7e:	ff e3 fb ec 	CALL 0xffa01574 <_strcpy_>;
ffa03b82:	17 30       	R2 = R7;
ffa03b84:	0d 30       	R1 = R5;
ffa03b86:	ff e3 f7 ec 	CALL 0xffa01574 <_strcpy_>;
ffa03b8a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90069c(-7338340) */
ffa03b8e:	0d 30       	R1 = R5;
ffa03b90:	02 e1 a8 06 	R2.L = 0x6a8;		/* (1704)	R2=0xff9006a8(-7338328) */
ffa03b94:	ff e3 f0 ec 	CALL 0xffa01574 <_strcpy_>;
ffa03b98:	0d 30       	R1 = R5;
ffa03b9a:	16 30       	R2 = R6;
ffa03b9c:	ff e3 ec ec 	CALL 0xffa01574 <_strcpy_>;
ffa03ba0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006a8(-7338328) */
ffa03ba4:	0d 30       	R1 = R5;
ffa03ba6:	02 e1 c4 06 	R2.L = 0x6c4;		/* (1732)	R2=0xff9006c4(-7338300) */
ffa03baa:	ff e3 e5 ec 	CALL 0xffa01574 <_strcpy_>;
ffa03bae:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03bb0:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa03bb4:	f4 b0 00 00 
ffa03bb8:	17 30       	R2 = R7;
ffa03bba:	ff e3 a3 ff 	CALL 0xffa03b00 <_htmlCursorOption>;
ffa03bbe:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03bc0:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03bc2:	0f 08       	CC = R7 == R1;
ffa03bc4:	f6 17       	IF !CC JUMP 0xffa03bb0 <_htmlCursorSelect+0x4c> (BP);
ffa03bc6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c4(-7338300) */
ffa03bca:	01 e8 00 00 	UNLINK;
ffa03bce:	0d 30       	R1 = R5;
ffa03bd0:	02 e1 c8 06 	R2.L = 0x6c8;		/* (1736)	R2=0xff9006c8(-7338296) */
ffa03bd4:	20 05       	(R7:4) = [SP++];
ffa03bd6:	ff e2 cf ec 	JUMP.L 0xffa01574 <_strcpy_>;
	...

ffa03bdc <_htmlDefault>:
ffa03bdc:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03bde:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03be2:	77 30       	R6 = FP;
ffa03be4:	e6 67       	R6 += -0x4;		/* ( -4) */
ffa03be6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03be8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006c8(-7338296) */
ffa03bec:	f0 bb       	[FP -0x4] = R0;
ffa03bee:	0e 30       	R1 = R6;
ffa03bf0:	02 e1 e0 06 	R2.L = 0x6e0;		/* (1760)	R2=0xff9006e0(-7338272) */
ffa03bf4:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03bf8:	ff e3 be ec 	CALL 0xffa01574 <_strcpy_>;
ffa03bfc:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03c00:	0e 30       	R1 = R6;
ffa03c02:	ff e3 55 ff 	CALL 0xffa03aac <_htmlDiv>;
ffa03c06:	0e 30       	R1 = R6;
ffa03c08:	ff e3 48 ff 	CALL 0xffa03a98 <_htmlForm>;
ffa03c0c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03c10:	0e 30       	R1 = R6;
ffa03c12:	02 e1 30 07 	R2.L = 0x730;		/* (1840)	R2=0xff900730(-7338192) */
ffa03c16:	ff e3 af ec 	CALL 0xffa01574 <_strcpy_>;
ffa03c1a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f5c <_TcpSeqClient> */
ffa03c1e:	0a e1 d4 0b 	P2.L = 0xbd4;		/* (3028)	P2=0xff900bd4 <_g_streamEnabled> */
ffa03c22:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03c26:	10 99 00 00 
ffa03c2a:	00 0c       	CC = R0 == 0x0;
ffa03c2c:	2c 1d       	IF CC JUMP 0xffa03e84 <_htmlDefault+0x2a8> (BP);
ffa03c2e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900730(-7338192) */
ffa03c32:	01 30       	R0 = R1;
ffa03c34:	02 e1 80 07 	R2.L = 0x780;		/* (1920)	R2=0xff900780(-7338112) */
ffa03c38:	0e 30       	R1 = R6;
ffa03c3a:	ff e3 9d ec 	CALL 0xffa01574 <_strcpy_>;
ffa03c3e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900780(-7338112) */
ffa03c42:	0e 30       	R1 = R6;
ffa03c44:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03c48:	ff e3 96 ec 	CALL 0xffa01574 <_strcpy_>;
ffa03c4c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03c50:	0e 30       	R1 = R6;
ffa03c52:	ff e3 2d ff 	CALL 0xffa03aac <_htmlDiv>;
ffa03c56:	0e 30       	R1 = R6;
ffa03c58:	ff e3 20 ff 	CALL 0xffa03a98 <_htmlForm>;
ffa03c5c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03c60:	0e 30       	R1 = R6;
ffa03c62:	02 e1 ac 07 	R2.L = 0x7ac;		/* (1964)	R2=0xff9007ac(-7338068) */
ffa03c66:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900f58 <_TcpSeqHost> */
ffa03c6a:	ff e3 85 ec 	CALL 0xffa01574 <_strcpy_>;
ffa03c6e:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03c70:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa03c72:	0d e1 84 0e 	P5.L = 0xe84;		/* (3716)	P5=0xff900e84 <_NetDataDestIP> */
ffa03c76:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007ac(-7338068) */
ffa03c7a:	0e 30       	R1 = R6;
ffa03c7c:	02 e1 c8 07 	R2.L = 0x7c8;		/* (1992)	R2=0xff9007c8(-7338040) */
ffa03c80:	ff e3 7a ec 	CALL 0xffa01574 <_strcpy_>;
ffa03c84:	17 30       	R2 = R7;
ffa03c86:	0e 30       	R1 = R6;
ffa03c88:	ff e3 dc ed 	CALL 0xffa01840 <_strprintf_int>;
ffa03c8c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007c8(-7338040) */
ffa03c90:	0e 30       	R1 = R6;
ffa03c92:	02 e1 e4 07 	R2.L = 0x7e4;		/* (2020)	R2=0xff9007e4(-7338012) */
ffa03c96:	ff e3 6f ec 	CALL 0xffa01574 <_strcpy_>;
ffa03c9a:	2a 91       	R2 = [P5];
ffa03c9c:	6a 40       	R2 >>= R5;
ffa03c9e:	52 43       	R2 = R2.B (Z);
ffa03ca0:	0e 30       	R1 = R6;
ffa03ca2:	ff e3 cf ed 	CALL 0xffa01840 <_strprintf_int>;
ffa03ca6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007e4(-7338012) */
ffa03caa:	0e 30       	R1 = R6;
ffa03cac:	02 e1 f8 07 	R2.L = 0x7f8;		/* (2040)	R2=0xff9007f8(-7337992) */
ffa03cb0:	ff e3 62 ec 	CALL 0xffa01574 <_strcpy_>;
ffa03cb4:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03cb6:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03cb8:	0f 08       	CC = R7 == R1;
ffa03cba:	45 64       	R5 += 0x8;		/* (  8) */
ffa03cbc:	dd 17       	IF !CC JUMP 0xffa03c76 <_htmlDefault+0x9a> (BP);
ffa03cbe:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007f8(-7337992) */
ffa03cc2:	0e 30       	R1 = R6;
ffa03cc4:	02 e1 00 08 	R2.L = 0x800;		/* (2048)	R2=0xff900800(-7337984) */
ffa03cc8:	ff e3 56 ec 	CALL 0xffa01574 <_strcpy_>;
ffa03ccc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900800(-7337984) */
ffa03cd0:	0e 30       	R1 = R6;
ffa03cd2:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03cd6:	ff e3 4f ec 	CALL 0xffa01574 <_strcpy_>;
ffa03cda:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03cde:	0e 30       	R1 = R6;
ffa03ce0:	ff e3 e6 fe 	CALL 0xffa03aac <_htmlDiv>;
ffa03ce4:	0e 30       	R1 = R6;
ffa03ce6:	ff e3 d9 fe 	CALL 0xffa03a98 <_htmlForm>;
ffa03cea:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03cee:	0e 30       	R1 = R6;
ffa03cf0:	02 e1 24 08 	R2.L = 0x824;		/* (2084)	R2=0xff900824(-7337948) */
ffa03cf4:	ff e3 40 ec 	CALL 0xffa01574 <_strcpy_>;
ffa03cf8:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bd4 */
ffa03cfc:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03d00:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03d04:	10 99 00 00 
ffa03d08:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03d0a:	c6 1c       	IF CC JUMP 0xffa03e96 <_htmlDefault+0x2ba> (BP);
ffa03d0c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900824(-7337948) */
ffa03d10:	01 30       	R0 = R1;
ffa03d12:	02 e1 8c 07 	R2.L = 0x78c;		/* (1932)	R2=0xff90078c(-7338100) */
ffa03d16:	0e 30       	R1 = R6;
ffa03d18:	ff e3 2e ec 	CALL 0xffa01574 <_strcpy_>;
ffa03d1c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90078c(-7338100) */
ffa03d20:	0e 30       	R1 = R6;
ffa03d22:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03d26:	ff e3 27 ec 	CALL 0xffa01574 <_strcpy_>;
ffa03d2a:	0e 30       	R1 = R6;
ffa03d2c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03d30:	ff e3 be fe 	CALL 0xffa03aac <_htmlDiv>;
ffa03d34:	0e 30       	R1 = R6;
ffa03d36:	ff e3 b1 fe 	CALL 0xffa03a98 <_htmlForm>;
ffa03d3a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03d3e:	0e 30       	R1 = R6;
ffa03d40:	02 e1 64 08 	R2.L = 0x864;		/* (2148)	R2=0xff900864(-7337884) */
ffa03d44:	ff e3 18 ec 	CALL 0xffa01574 <_strcpy_>;
ffa03d48:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa03d4c:	01 e1 94 08 	R1.L = 0x894;		/* (2196)	R1=0xff900894(-7337836) */
ffa03d50:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900864(-7337884) */
ffa03d54:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa03d58:	f1 b0 00 00 
ffa03d5c:	02 e1 88 08 	R2.L = 0x888;		/* (2184)	R2=0xff900888(-7337848) */
ffa03d60:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03d64:	37 b1 00 00 
ffa03d68:	ff e3 fe fe 	CALL 0xffa03b64 <_htmlCursorSelect>;
ffa03d6c:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900894(-7337836) */
ffa03d70:	01 e1 ac 08 	R1.L = 0x8ac;		/* (2220)	R1=0xff9008ac(-7337812) */
ffa03d74:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900888(-7337848) */
ffa03d78:	f1 b0       	[SP + 0xc] = R1;
ffa03d7a:	02 e1 a0 08 	R2.L = 0x8a0;		/* (2208)	R2=0xff9008a0(-7337824) */
ffa03d7e:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03d82:	37 b1 00 00 
ffa03d86:	ff e3 ef fe 	CALL 0xffa03b64 <_htmlCursorSelect>;
ffa03d8a:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008ac(-7337812) */
ffa03d8e:	01 e1 c4 08 	R1.L = 0x8c4;		/* (2244)	R1=0xff9008c4(-7337788) */
ffa03d92:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a0(-7337824) */
ffa03d96:	f1 b0       	[SP + 0xc] = R1;
ffa03d98:	02 e1 b8 08 	R2.L = 0x8b8;		/* (2232)	R2=0xff9008b8(-7337800) */
ffa03d9c:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03da0:	37 b1 00 00 
ffa03da4:	ff e3 e0 fe 	CALL 0xffa03b64 <_htmlCursorSelect>;
ffa03da8:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008c4(-7337788) */
ffa03dac:	01 e1 d8 08 	R1.L = 0x8d8;		/* (2264)	R1=0xff9008d8(-7337768) */
ffa03db0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008b8(-7337800) */
ffa03db4:	f1 b0       	[SP + 0xc] = R1;
ffa03db6:	02 e1 d0 08 	R2.L = 0x8d0;		/* (2256)	R2=0xff9008d0(-7337776) */
ffa03dba:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03dbe:	37 b1 00 00 
ffa03dc2:	ff e3 d1 fe 	CALL 0xffa03b64 <_htmlCursorSelect>;
ffa03dc6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008d0(-7337776) */
ffa03dca:	0e 30       	R1 = R6;
ffa03dcc:	02 e1 e4 08 	R2.L = 0x8e4;		/* (2276)	R2=0xff9008e4(-7337756) */
ffa03dd0:	ff e3 d2 eb 	CALL 0xffa01574 <_strcpy_>;
ffa03dd4:	0e 30       	R1 = R6;
ffa03dd6:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03dda:	ff e3 69 fe 	CALL 0xffa03aac <_htmlDiv>;
ffa03dde:	0e 30       	R1 = R6;
ffa03de0:	ff e3 5c fe 	CALL 0xffa03a98 <_htmlForm>;
ffa03de4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03de8:	0e 30       	R1 = R6;
ffa03dea:	02 e1 20 09 	R2.L = 0x920;		/* (2336)	R2=0xff900920(-7337696) */
ffa03dee:	ff e3 c3 eb 	CALL 0xffa01574 <_strcpy_>;
ffa03df2:	0e 30       	R1 = R6;
ffa03df4:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03df8:	ff e3 5a fe 	CALL 0xffa03aac <_htmlDiv>;
ffa03dfc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03e00:	0e 30       	R1 = R6;
ffa03e02:	02 e1 78 09 	R2.L = 0x978;		/* (2424)	R2=0xff900978(-7337608) */
ffa03e06:	ff e3 b7 eb 	CALL 0xffa01574 <_strcpy_>;
ffa03e0a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900978(-7337608) */
ffa03e0e:	0e 30       	R1 = R6;
ffa03e10:	02 e1 a0 09 	R2.L = 0x9a0;		/* (2464)	R2=0xff9009a0(-7337568) */
ffa03e14:	ff e3 b0 eb 	CALL 0xffa01574 <_strcpy_>;
ffa03e18:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009a0(-7337568) */
ffa03e1c:	0e 30       	R1 = R6;
ffa03e1e:	02 e1 98 07 	R2.L = 0x798;		/* (1944)	R2=0xff900798(-7338088) */
ffa03e22:	ff e3 a9 eb 	CALL 0xffa01574 <_strcpy_>;
ffa03e26:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900798(-7338088) */
ffa03e2a:	0e 30       	R1 = R6;
ffa03e2c:	02 e1 e8 09 	R2.L = 0x9e8;		/* (2536)	R2=0xff9009e8(-7337496) */
ffa03e30:	ff e3 a2 eb 	CALL 0xffa01574 <_strcpy_>;
ffa03e34:	0e 30       	R1 = R6;
ffa03e36:	22 e1 75 ff 	R2 = -0x8b (X);		/*		R2=0xffffff75(-139) */
ffa03e3a:	ff e3 03 ed 	CALL 0xffa01840 <_strprintf_int>;
ffa03e3e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ff75(-7274635) */
ffa03e42:	0e 30       	R1 = R6;
ffa03e44:	02 e1 b0 00 	R2.L = 0xb0;		/* (176)	R2=0xff9000b0(-7339856) */
ffa03e48:	ff e3 96 eb 	CALL 0xffa01574 <_strcpy_>;
ffa03e4c:	0e 30       	R1 = R6;
ffa03e4e:	92 62       	R2 = -0x2e (X);		/*		R2=0xffffffd2(-46) */
ffa03e50:	ff e3 f8 ec 	CALL 0xffa01840 <_strprintf_int>;
ffa03e54:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ffd2(-7274542) */
ffa03e58:	0e 30       	R1 = R6;
ffa03e5a:	02 e1 88 00 	R2.L = 0x88;		/* (136)	R2=0xff900088(-7339896) */
ffa03e5e:	ff e3 8b eb 	CALL 0xffa01574 <_strcpy_>;
ffa03e62:	0e 30       	R1 = R6;
ffa03e64:	22 e1 d0 fd 	R2 = -0x230 (X);		/*		R2=0xfffffdd0(-560) */
ffa03e68:	ff e3 ec ec 	CALL 0xffa01840 <_strprintf_int>;
ffa03e6c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90fdd0(-7275056) */
ffa03e70:	0e 30       	R1 = R6;
ffa03e72:	02 e1 f4 09 	R2.L = 0x9f4;		/* (2548)	R2=0xff9009f4(-7337484) */
ffa03e76:	ff e3 7f eb 	CALL 0xffa01574 <_strcpy_>;
ffa03e7a:	f0 b9       	R0 = [FP -0x4];
ffa03e7c:	01 e8 00 00 	UNLINK;
ffa03e80:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03e82:	10 00       	RTS;
ffa03e84:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009f4(-7337484) */
ffa03e88:	01 30       	R0 = R1;
ffa03e8a:	02 e1 8c 07 	R2.L = 0x78c;		/* (1932)	R2=0xff90078c(-7338100) */
ffa03e8e:	0e 30       	R1 = R6;
ffa03e90:	ff e3 72 eb 	CALL 0xffa01574 <_strcpy_>;
ffa03e94:	d5 2e       	JUMP.S 0xffa03c3e <_htmlDefault+0x62>;
ffa03e96:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90078c(-7338100) */
ffa03e9a:	01 30       	R0 = R1;
ffa03e9c:	02 e1 80 07 	R2.L = 0x780;		/* (1920)	R2=0xff900780(-7338112) */
ffa03ea0:	0e 30       	R1 = R6;
ffa03ea2:	ff e3 69 eb 	CALL 0xffa01574 <_strcpy_>;
ffa03ea6:	3b 2f       	JUMP.S 0xffa03d1c <_htmlDefault+0x140>;

ffa03ea8 <_httpHeader>:
ffa03ea8:	78 05       	[--SP] = (R7:7);
ffa03eaa:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03eae:	7f 30       	R7 = FP;
ffa03eb0:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03eb2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03eb4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900780(-7338112) */
ffa03eb8:	f0 bb       	[FP -0x4] = R0;
ffa03eba:	0f 30       	R1 = R7;
ffa03ebc:	02 e1 0c 0a 	R2.L = 0xa0c;		/* (2572)	R2=0xff900a0c(-7337460) */
ffa03ec0:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03ec4:	ff e3 58 eb 	CALL 0xffa01574 <_strcpy_>;
ffa03ec8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a0c(-7337460) */
ffa03ecc:	0f 30       	R1 = R7;
ffa03ece:	02 e1 20 0a 	R2.L = 0xa20;		/* (2592)	R2=0xff900a20(-7337440) */
ffa03ed2:	ff e3 51 eb 	CALL 0xffa01574 <_strcpy_>;
ffa03ed6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a20(-7337440) */
ffa03eda:	0f 30       	R1 = R7;
ffa03edc:	02 e1 34 0a 	R2.L = 0xa34;		/* (2612)	R2=0xff900a34(-7337420) */
ffa03ee0:	ff e3 4a eb 	CALL 0xffa01574 <_strcpy_>;
ffa03ee4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa03ee8:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa03eec:	12 91       	R2 = [P2];
ffa03eee:	0f 30       	R1 = R7;
ffa03ef0:	ff e3 a8 ec 	CALL 0xffa01840 <_strprintf_int>;
ffa03ef4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a34(-7337420) */
ffa03ef8:	0f 30       	R1 = R7;
ffa03efa:	02 e1 48 0a 	R2.L = 0xa48;		/* (2632)	R2=0xff900a48(-7337400) */
ffa03efe:	ff e3 3b eb 	CALL 0xffa01574 <_strcpy_>;
ffa03f02:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f78 <_g_httpContentLen> */
ffa03f06:	f0 b9       	R0 = [FP -0x4];
ffa03f08:	0a e1 74 0f 	P2.L = 0xf74;		/* (3956)	P2=0xff900f74 <_g_httpHeaderLen> */
ffa03f0c:	10 93       	[P2] = R0;
ffa03f0e:	01 e8 00 00 	UNLINK;
ffa03f12:	38 05       	(R7:7) = [SP++];
ffa03f14:	10 00       	RTS;
	...

ffa03f18 <_htmlGeneric>:
ffa03f18:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03f1c:	10 30       	R2 = R0;
ffa03f1e:	4f 30       	R1 = FP;
ffa03f20:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03f22:	f0 bb       	[FP -0x4] = R0;
ffa03f24:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03f26:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03f2a:	ff e3 25 eb 	CALL 0xffa01574 <_strcpy_>;
ffa03f2e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f74 <_g_httpHeaderLen> */
ffa03f32:	f0 b9       	R0 = [FP -0x4];
ffa03f34:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa03f38:	10 93       	[P2] = R0;
ffa03f3a:	ff e3 b7 ff 	CALL 0xffa03ea8 <_httpHeader>;
ffa03f3e:	f0 b9       	R0 = [FP -0x4];
ffa03f40:	01 e8 00 00 	UNLINK;
ffa03f44:	10 00       	RTS;
	...

ffa03f48 <_httpResp>:
ffa03f48:	60 05       	[--SP] = (R7:4);
ffa03f4a:	30 30       	R6 = R0;
ffa03f4c:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa03f4e:	01 09       	CC = R1 <= R0;
ffa03f50:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa03f54:	39 30       	R7 = R1;
ffa03f56:	21 10       	IF !CC JUMP 0xffa03f98 <_httpResp+0x50>;
ffa03f58:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa03f5a:	0f 09       	CC = R7 <= R1;
ffa03f5c:	34 10       	IF !CC JUMP 0xffa03fc4 <_httpResp+0x7c>;
ffa03f5e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa03f62:	00 e1 04 0a 	R0.L = 0xa04;		/* (2564)	R0=0xff900a04(-7337468) */
ffa03f66:	0e 30       	R1 = R6;
ffa03f68:	17 30       	R2 = R7;
ffa03f6a:	ff e3 73 eb 	CALL 0xffa01650 <_substr>;
ffa03f6e:	00 0c       	CC = R0 == 0x0;
ffa03f70:	06 10       	IF !CC JUMP 0xffa03f7c <_httpResp+0x34>;
ffa03f72:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03f74:	01 e8 00 00 	UNLINK;
ffa03f78:	20 05       	(R7:4) = [SP++];
ffa03f7a:	10 00       	RTS;
ffa03f7c:	ff e3 b0 fd 	CALL 0xffa03adc <_html404>;
ffa03f80:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900f78 <_g_httpContentLen> */
ffa03f84:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa03f88:	10 93       	[P2] = R0;
ffa03f8a:	ff e3 8f ff 	CALL 0xffa03ea8 <_httpHeader>;
ffa03f8e:	01 e8 00 00 	UNLINK;
ffa03f92:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03f94:	20 05       	(R7:4) = [SP++];
ffa03f96:	10 00       	RTS;
ffa03f98:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa03f9c:	06 30       	R0 = R6;
ffa03f9e:	01 e1 68 0a 	R1.L = 0xa68;		/* (2664)	R1=0xff900a68(-7337368) */
ffa03fa2:	ff e3 29 eb 	CALL 0xffa015f4 <_strcmp>;
ffa03fa6:	00 0c       	CC = R0 == 0x0;
ffa03fa8:	d8 1f       	IF CC JUMP 0xffa03f58 <_httpResp+0x10> (BP);
ffa03faa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03fae:	00 e1 04 0a 	R0.L = 0xa04;		/* (2564)	R0=0xff900a04(-7337468) */
ffa03fb2:	0e 30       	R1 = R6;
ffa03fb4:	17 30       	R2 = R7;
ffa03fb6:	ff e3 4d eb 	CALL 0xffa01650 <_substr>;
ffa03fba:	00 0c       	CC = R0 == 0x0;
ffa03fbc:	db 1f       	IF CC JUMP 0xffa03f72 <_httpResp+0x2a> (BP);
ffa03fbe:	ff e3 0f fe 	CALL 0xffa03bdc <_htmlDefault>;
ffa03fc2:	df 2f       	JUMP.S 0xffa03f80 <_httpResp+0x38>;
ffa03fc4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a04(-7337468) */
ffa03fc8:	00 e1 74 0a 	R0.L = 0xa74;		/* (2676)	R0=0xff900a74(-7337356) */
ffa03fcc:	0e 30       	R1 = R6;
ffa03fce:	17 30       	R2 = R7;
ffa03fd0:	ff e3 40 eb 	CALL 0xffa01650 <_substr>;
ffa03fd4:	00 0c       	CC = R0 == 0x0;
ffa03fd6:	3c 1c       	IF CC JUMP 0xffa0404e <_httpResp+0x106> (BP);
ffa03fd8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a74(-7337356) */
ffa03fdc:	00 e1 80 0a 	R0.L = 0xa80;		/* (2688)	R0=0xff900a80(-7337344) */
ffa03fe0:	0e 30       	R1 = R6;
ffa03fe2:	17 30       	R2 = R7;
ffa03fe4:	ff e3 36 eb 	CALL 0xffa01650 <_substr>;
ffa03fe8:	00 0c       	CC = R0 == 0x0;
ffa03fea:	c4 1f       	IF CC JUMP 0xffa03f72 <_httpResp+0x2a> (BP);
ffa03fec:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa03fee:	06 50       	R0 = R6 + R0;
ffa03ff0:	ff e3 50 ec 	CALL 0xffa01890 <_atoi>;
ffa03ff4:	08 30       	R1 = R0;
ffa03ff6:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa03ffa:	00 67       	R0 += -0x20;		/* (-32) */
ffa03ffc:	10 0a       	CC = R0 <= R2 (IU);
ffa03ffe:	24 11       	IF !CC JUMP 0xffa04246 <_httpResp+0x2fe>;
ffa04000:	82 c6 19 84 	R2 = R1 << 0x3;
ffa04004:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800f78 */
ffa04008:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa0400c:	02 0d       	CC = R2 <= 0x0;
ffa0400e:	13 91       	R3 = [P2];
ffa04010:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa04014:	14 18       	IF CC JUMP 0xffa0403c <_httpResp+0xf4>;
ffa04016:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa0401a:	28 4f       	R0 <<= 0x5;
ffa0401c:	03 54       	R0 = R3 & R0;
ffa0401e:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa04020:	38 52       	R0 = R0 - R7;
ffa04022:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa04026:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa04028:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa0402c:	18 54       	R0 = R0 & R3;
ffa0402e:	10 32       	P2 = R0;
ffa04030:	09 64       	R1 += 0x1;		/* (  1) */
ffa04032:	0a 08       	CC = R2 == R1;
ffa04034:	10 90       	R0 = [P2++];
ffa04036:	08 92       	[P1++] = R0;
ffa04038:	42 30       	R0 = P2;
ffa0403a:	f9 17       	IF !CC JUMP 0xffa0402c <_httpResp+0xe4> (BP);
ffa0403c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900804 */
ffa04040:	0a e1 78 0f 	P2.L = 0xf78;		/* (3960)	P2=0xff900f78 <_g_httpContentLen> */
ffa04044:	17 93       	[P2] = R7;
ffa04046:	ff e3 31 ff 	CALL 0xffa03ea8 <_httpHeader>;
ffa0404a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0404c:	94 2f       	JUMP.S 0xffa03f74 <_httpResp+0x2c>;
ffa0404e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa04052:	00 e1 b4 0a 	R0.L = 0xab4;		/* (2740)	R0=0xff900ab4(-7337292) */
ffa04056:	0e 30       	R1 = R6;
ffa04058:	17 30       	R2 = R7;
ffa0405a:	ff e3 fb ea 	CALL 0xffa01650 <_substr>;
ffa0405e:	00 0c       	CC = R0 == 0x0;
ffa04060:	7f 1f       	IF CC JUMP 0xffa03f5e <_httpResp+0x16> (BP);
ffa04062:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ab4(-7337292) */
ffa04066:	0e 30       	R1 = R6;
ffa04068:	17 30       	R2 = R7;
ffa0406a:	00 e1 b4 0a 	R0.L = 0xab4;		/* (2740)	R0=0xff900ab4(-7337292) */
ffa0406e:	ff e3 f1 ea 	CALL 0xffa01650 <_substr>;
ffa04072:	86 51       	R6 = R6 + R0;
ffa04074:	47 53       	R5 = R7 - R0;
ffa04076:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ab4(-7337292) */
ffa0407a:	00 e1 bc 0a 	R0.L = 0xabc;		/* (2748)	R0=0xff900abc(-7337284) */
ffa0407e:	0e 30       	R1 = R6;
ffa04080:	15 30       	R2 = R5;
ffa04082:	ff e3 e7 ea 	CALL 0xffa01650 <_substr>;
ffa04086:	00 0c       	CC = R0 == 0x0;
ffa04088:	10 11       	IF !CC JUMP 0xffa042a8 <_httpResp+0x360>;
ffa0408a:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa0408c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900abc(-7337284) */
ffa04090:	00 e1 e0 0a 	R0.L = 0xae0;		/* (2784)	R0=0xff900ae0(-7337248) */
ffa04094:	0e 30       	R1 = R6;
ffa04096:	15 30       	R2 = R5;
ffa04098:	ff e3 dc ea 	CALL 0xffa01650 <_substr>;
ffa0409c:	00 0c       	CC = R0 == 0x0;
ffa0409e:	e2 10       	IF !CC JUMP 0xffa04262 <_httpResp+0x31a>;
ffa040a0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ae0(-7337248) */
ffa040a4:	0e 30       	R1 = R6;
ffa040a6:	00 e1 ec 0a 	R0.L = 0xaec;		/* (2796)	R0=0xff900aec(-7337236) */
ffa040aa:	15 30       	R2 = R5;
ffa040ac:	ff e3 d2 ea 	CALL 0xffa01650 <_substr>;
ffa040b0:	00 0c       	CC = R0 == 0x0;
ffa040b2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900aec(-7337236) */
ffa040b6:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa040b8:	0e 30       	R1 = R6;
ffa040ba:	15 30       	R2 = R5;
ffa040bc:	00 e1 f8 0a 	R0.L = 0xaf8;		/* (2808)	R0=0xff900af8(-7337224) */
ffa040c0:	27 06       	IF !CC R4 = R7;
ffa040c2:	ff e3 c7 ea 	CALL 0xffa01650 <_substr>;
ffa040c6:	00 0c       	CC = R0 == 0x0;
ffa040c8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900af8(-7337224) */
ffa040cc:	0e 30       	R1 = R6;
ffa040ce:	15 30       	R2 = R5;
ffa040d0:	00 e1 04 0b 	R0.L = 0xb04;		/* (2820)	R0=0xff900b04(-7337212) */
ffa040d4:	27 06       	IF !CC R4 = R7;
ffa040d6:	ff e3 bd ea 	CALL 0xffa01650 <_substr>;
ffa040da:	00 0c       	CC = R0 == 0x0;
ffa040dc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b04(-7337212) */
ffa040e0:	0e 30       	R1 = R6;
ffa040e2:	15 30       	R2 = R5;
ffa040e4:	00 e1 10 0b 	R0.L = 0xb10;		/* (2832)	R0=0xff900b10(-7337200) */
ffa040e8:	27 06       	IF !CC R4 = R7;
ffa040ea:	ff e3 b3 ea 	CALL 0xffa01650 <_substr>;
ffa040ee:	00 0c       	CC = R0 == 0x0;
ffa040f0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b10(-7337200) */
ffa040f4:	00 e1 1c 0b 	R0.L = 0xb1c;		/* (2844)	R0=0xff900b1c(-7337188) */
ffa040f8:	0e 30       	R1 = R6;
ffa040fa:	15 30       	R2 = R5;
ffa040fc:	27 06       	IF !CC R4 = R7;
ffa040fe:	ff e3 a9 ea 	CALL 0xffa01650 <_substr>;
ffa04102:	00 0c       	CC = R0 == 0x0;
ffa04104:	15 11       	IF !CC JUMP 0xffa0432e <_httpResp+0x3e6>;
ffa04106:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b1c(-7337188) */
ffa0410a:	00 e1 24 0b 	R0.L = 0xb24;		/* (2852)	R0=0xff900b24(-7337180) */
ffa0410e:	0e 30       	R1 = R6;
ffa04110:	15 30       	R2 = R5;
ffa04112:	ff e3 9f ea 	CALL 0xffa01650 <_substr>;
ffa04116:	00 0c       	CC = R0 == 0x0;
ffa04118:	f6 10       	IF !CC JUMP 0xffa04304 <_httpResp+0x3bc>;
ffa0411a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b24(-7337180) */
ffa0411e:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa04122:	0e 30       	R1 = R6;
ffa04124:	15 30       	R2 = R5;
ffa04126:	ff e3 95 ea 	CALL 0xffa01650 <_substr>;
ffa0412a:	00 0c       	CC = R0 == 0x0;
ffa0412c:	13 11       	IF !CC JUMP 0xffa04352 <_httpResp+0x40a>;
ffa0412e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b2c(-7337172) */
ffa04132:	00 e1 34 0b 	R0.L = 0xb34;		/* (2868)	R0=0xff900b34(-7337164) */
ffa04136:	0e 30       	R1 = R6;
ffa04138:	15 30       	R2 = R5;
ffa0413a:	ff e3 8b ea 	CALL 0xffa01650 <_substr>;
ffa0413e:	00 0c       	CC = R0 == 0x0;
ffa04140:	d1 10       	IF !CC JUMP 0xffa042e2 <_httpResp+0x39a>;
ffa04142:	20 43       	R0 = R4.B (X);
ffa04144:	00 0c       	CC = R0 == 0x0;
ffa04146:	3c 17       	IF !CC JUMP 0xffa03fbe <_httpResp+0x76> (BP);
ffa04148:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b34(-7337164) */
ffa0414c:	00 e1 3c 0b 	R0.L = 0xb3c;		/* (2876)	R0=0xff900b3c(-7337156) */
ffa04150:	0e 30       	R1 = R6;
ffa04152:	15 30       	R2 = R5;
ffa04154:	ff e3 7e ea 	CALL 0xffa01650 <_substr>;
ffa04158:	00 0c       	CC = R0 == 0x0;
ffa0415a:	0c 1b       	IF CC JUMP 0xffa03f72 <_httpResp+0x2a>;
ffa0415c:	7f 30       	R7 = FP;
ffa0415e:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa04162:	57 5a       	P1 = FP + P2;
ffa04164:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa04166:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04168:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa0416a:	b2 e0 02 20 	LSETUP(0xffa0416e <_httpResp+0x226>, 0xffa0416e <_httpResp+0x226>) LC1 = P2;
ffa0416e:	08 92       	[P1++] = R0;
ffa04170:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa04174:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa04178:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa0417c:	29 4f       	R1 <<= 0x5;
ffa0417e:	10 91       	R0 = [P2];
ffa04180:	08 54       	R0 = R0 & R1;
ffa04182:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa04184:	81 4f       	R1 <<= 0x10;
ffa04186:	08 50       	R0 = R0 + R1;
ffa04188:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa0418a:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa0418e:	88 54       	R2 = R0 & R1;
ffa04190:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa04194:	b2 e0 12 10 	LSETUP(0xffa04198 <_httpResp+0x250>, 0xffa041b8 <_httpResp+0x270>) LC1 = P1;
ffa04198:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa0419c:	97 5a       	P2 = FP + P2;
ffa0419e:	02 32       	P0 = R2;
ffa041a0:	11 91       	R1 = [P2];
ffa041a2:	12 64       	R2 += 0x2;		/* (  2) */
ffa041a4:	00 94       	R0 = W[P0++] (Z);
ffa041a6:	41 50       	R1 = R1 + R0;
ffa041a8:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa041aa:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa041ae:	11 92       	[P2++] = R1;
ffa041b0:	82 54       	R2 = R2 & R0;
ffa041b2:	42 30       	R0 = P2;
ffa041b4:	38 08       	CC = R0 == R7;
ffa041b6:	f4 17       	IF !CC JUMP 0xffa0419e <_httpResp+0x256> (BP);
ffa041b8:	00 00       	NOP;
ffa041ba:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa041be:	97 5a       	P2 = FP + P2;
ffa041c0:	00 00       	NOP;
ffa041c2:	10 91       	R0 = [P2];
ffa041c4:	58 4d       	R0 >>>= 0xb;
ffa041c6:	10 92       	[P2++] = R0;
ffa041c8:	4a 30       	R1 = P2;
ffa041ca:	39 08       	CC = R1 == R7;
ffa041cc:	fa 17       	IF !CC JUMP 0xffa041c0 <_httpResp+0x278> (BP);
ffa041ce:	ff e3 07 fd 	CALL 0xffa03bdc <_htmlDefault>;
ffa041d2:	68 67       	R0 += -0x13;		/* (-19) */
ffa041d4:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa041d8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80 <_g_enableUDP>(-7336064) */
ffa041dc:	f0 bb       	[FP -0x4] = R0;
ffa041de:	02 e1 4c 0b 	R2.L = 0xb4c;		/* (2892)	R2=0xff900b4c(-7337140) */
ffa041e2:	08 50       	R0 = R0 + R1;
ffa041e4:	0f 30       	R1 = R7;
ffa041e6:	ff e3 c7 e9 	CALL 0xffa01574 <_strcpy_>;
ffa041ea:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa041ee:	f5 b8 00 00 
ffa041f2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b4c(-7337140) */
ffa041f6:	0f 30       	R1 = R7;
ffa041f8:	02 e1 58 0b 	R2.L = 0xb58;		/* (2904)	R2=0xff900b58(-7337128) */
ffa041fc:	ff e3 bc e9 	CALL 0xffa01574 <_strcpy_>;
ffa04200:	16 30       	R2 = R6;
ffa04202:	0f 30       	R1 = R7;
ffa04204:	ff e3 1e eb 	CALL 0xffa01840 <_strprintf_int>;
ffa04208:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b58(-7337128) */
ffa0420c:	0f 30       	R1 = R7;
ffa0420e:	02 e1 6c 0b 	R2.L = 0xb6c;		/* (2924)	R2=0xff900b6c(-7337108) */
ffa04212:	ff e3 b1 e9 	CALL 0xffa01574 <_strcpy_>;
ffa04216:	0f 30       	R1 = R7;
ffa04218:	15 30       	R2 = R5;
ffa0421a:	ff e3 13 eb 	CALL 0xffa01840 <_strprintf_int>;
ffa0421e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b6c(-7337108) */
ffa04222:	02 e1 7c 0b 	R2.L = 0xb7c;		/* (2940)	R2=0xff900b7c(-7337092) */
ffa04226:	0f 30       	R1 = R7;
ffa04228:	ff e3 a6 e9 	CALL 0xffa01574 <_strcpy_>;
ffa0422c:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0422e:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa04230:	16 08       	CC = R6 == R2;
ffa04232:	e0 17       	IF !CC JUMP 0xffa041f2 <_httpResp+0x2aa> (BP);
ffa04234:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa04238:	0f 30       	R1 = R7;
ffa0423a:	02 e1 88 0b 	R2.L = 0xb88;		/* (2952)	R2=0xff900b88(-7337080) */
ffa0423e:	ff e3 9b e9 	CALL 0xffa01574 <_strcpy_>;
ffa04242:	f0 b9       	R0 = [FP -0x4];
ffa04244:	9e 2e       	JUMP.S 0xffa03f80 <_httpResp+0x38>;
ffa04246:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04248:	4f 30       	R1 = FP;
ffa0424a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b88(-7337080) */
ffa0424e:	f0 bb       	[FP -0x4] = R0;
ffa04250:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa04252:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa04256:	02 e1 88 0a 	R2.L = 0xa88;		/* (2696)	R2=0xff900a88(-7337336) */
ffa0425a:	ff e3 8d e9 	CALL 0xffa01574 <_strcpy_>;
ffa0425e:	f0 b9       	R0 = [FP -0x4];
ffa04260:	90 2e       	JUMP.S 0xffa03f80 <_httpResp+0x38>;
ffa04262:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa04266:	00 e1 cc 0a 	R0.L = 0xacc;		/* (2764)	R0=0xff900acc(-7337268) */
ffa0426a:	0e 30       	R1 = R6;
ffa0426c:	15 30       	R2 = R5;
ffa0426e:	ff e3 f1 e9 	CALL 0xffa01650 <_substr>;
ffa04272:	00 0c       	CC = R0 == 0x0;
ffa04274:	08 1c       	IF CC JUMP 0xffa04284 <_httpResp+0x33c> (BP);
ffa04276:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa0427a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0427c:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa04280:	10 9b       	B[P2] = R0;
ffa04282:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04284:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa04288:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa0428c:	0e 30       	R1 = R6;
ffa0428e:	15 30       	R2 = R5;
ffa04290:	ff e3 e0 e9 	CALL 0xffa01650 <_substr>;
ffa04294:	00 0c       	CC = R0 == 0x0;
ffa04296:	05 1f       	IF CC JUMP 0xffa040a0 <_httpResp+0x158> (BP);
ffa04298:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa0429c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0429e:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa042a2:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa042a4:	10 9b       	B[P2] = R0;
ffa042a6:	fd 2e       	JUMP.S 0xffa040a0 <_httpResp+0x158>;
ffa042a8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa042ac:	00 e1 cc 0a 	R0.L = 0xacc;		/* (2764)	R0=0xff900acc(-7337268) */
ffa042b0:	0e 30       	R1 = R6;
ffa042b2:	15 30       	R2 = R5;
ffa042b4:	ff e3 ce e9 	CALL 0xffa01650 <_substr>;
ffa042b8:	00 0c       	CC = R0 == 0x0;
ffa042ba:	61 14       	IF !CC JUMP 0xffa0437c <_httpResp+0x434> (BP);
ffa042bc:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa042be:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900acc(-7337268) */
ffa042c2:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa042c6:	0e 30       	R1 = R6;
ffa042c8:	15 30       	R2 = R5;
ffa042ca:	ff e3 c3 e9 	CALL 0xffa01650 <_substr>;
ffa042ce:	00 0c       	CC = R0 == 0x0;
ffa042d0:	de 1e       	IF CC JUMP 0xffa0408c <_httpResp+0x144> (BP);
ffa042d2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa042d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa042d8:	0a e1 d4 0b 	P2.L = 0xbd4;		/* (3028)	P2=0xff900bd4 <_g_streamEnabled> */
ffa042dc:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa042de:	10 9b       	B[P2] = R0;
ffa042e0:	d6 2e       	JUMP.S 0xffa0408c <_httpResp+0x144>;
ffa042e2:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa042e4:	06 50       	R0 = R6 + R0;
ffa042e6:	ff e3 d5 ea 	CALL 0xffa01890 <_atoi>;
ffa042ea:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bd4 <_g_streamEnabled> */
ffa042ee:	0a e1 84 0e 	P2.L = 0xe84;		/* (3716)	P2=0xff900e84 <_NetDataDestIP> */
ffa042f2:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa042f4:	11 91       	R1 = [P2];
ffa042f6:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa042fa:	51 54       	R1 = R1 & R2;
ffa042fc:	c0 4f       	R0 <<= 0x18;
ffa042fe:	41 50       	R1 = R1 + R0;
ffa04300:	11 93       	[P2] = R1;
ffa04302:	5e 2e       	JUMP.S 0xffa03fbe <_httpResp+0x76>;
ffa04304:	86 51       	R6 = R6 + R0;
ffa04306:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04308:	45 53       	R5 = R5 - R0;
ffa0430a:	06 30       	R0 = R6;
ffa0430c:	ff e3 c2 ea 	CALL 0xffa01890 <_atoi>;
ffa04310:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e84 <_NetDataDestIP> */
ffa04314:	0a e1 84 0e 	P2.L = 0xe84;		/* (3716)	P2=0xff900e84 <_NetDataDestIP> */
ffa04318:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0431a:	11 91       	R1 = [P2];
ffa0431c:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa04320:	40 43       	R0 = R0.B (Z);
ffa04322:	51 54       	R1 = R1 & R2;
ffa04324:	40 4f       	R0 <<= 0x8;
ffa04326:	41 50       	R1 = R1 + R0;
ffa04328:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0432a:	11 93       	[P2] = R1;
ffa0432c:	f7 2e       	JUMP.S 0xffa0411a <_httpResp+0x1d2>;
ffa0432e:	86 51       	R6 = R6 + R0;
ffa04330:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04332:	45 53       	R5 = R5 - R0;
ffa04334:	06 30       	R0 = R6;
ffa04336:	ff e3 ad ea 	CALL 0xffa01890 <_atoi>;
ffa0433a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e84 <_NetDataDestIP> */
ffa0433e:	0a e1 84 0e 	P2.L = 0xe84;		/* (3716)	P2=0xff900e84 <_NetDataDestIP> */
ffa04342:	11 91       	R1 = [P2];
ffa04344:	41 4d       	R1 >>>= 0x8;
ffa04346:	41 4f       	R1 <<= 0x8;
ffa04348:	40 43       	R0 = R0.B (Z);
ffa0434a:	08 50       	R0 = R0 + R1;
ffa0434c:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0434e:	10 93       	[P2] = R0;
ffa04350:	db 2e       	JUMP.S 0xffa04106 <_httpResp+0x1be>;
ffa04352:	86 51       	R6 = R6 + R0;
ffa04354:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04356:	45 53       	R5 = R5 - R0;
ffa04358:	06 30       	R0 = R6;
ffa0435a:	ff e3 9b ea 	CALL 0xffa01890 <_atoi>;
ffa0435e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e84 <_NetDataDestIP> */
ffa04362:	0a e1 84 0e 	P2.L = 0xe84;		/* (3716)	P2=0xff900e84 <_NetDataDestIP> */
ffa04366:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04368:	11 91       	R1 = [P2];
ffa0436a:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa0436e:	40 43       	R0 = R0.B (Z);
ffa04370:	51 54       	R1 = R1 & R2;
ffa04372:	80 4f       	R0 <<= 0x10;
ffa04374:	41 50       	R1 = R1 + R0;
ffa04376:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04378:	11 93       	[P2] = R1;
ffa0437a:	da 2e       	JUMP.S 0xffa0412e <_httpResp+0x1e6>;
ffa0437c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900e84 <_NetDataDestIP> */
ffa04380:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04382:	0a e1 d4 0b 	P2.L = 0xbd4;		/* (3028)	P2=0xff900bd4 <_g_streamEnabled> */
ffa04386:	10 9b       	B[P2] = R0;
ffa04388:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bd4 */
ffa0438c:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa04390:	10 91       	R0 = [P2];
ffa04392:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04394:	22 6c       	P2 += 0x4;		/* (  4) */
ffa04396:	10 93       	[P2] = R0;
ffa04398:	93 2f       	JUMP.S 0xffa042be <_httpResp+0x376>;
	...

ffa0439c <_httpCollate>:
ffa0439c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0439e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900e84 <_NetDataDestIP> */
ffa043a2:	0d e1 7c 0f 	P5.L = 0xf7c;		/* (3964)	P5=0xff900f7c <_g_httpRxed> */
ffa043a6:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa043a8:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R1 = [P5] || NOP;
ffa043ac:	29 91 00 00 
ffa043b0:	82 4f       	R2 <<= 0x10;
ffa043b2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa043b6:	51 50       	R1 = R1 + R2;
ffa043b8:	17 30       	R2 = R7;
ffa043ba:	ff e3 ad e8 	CALL 0xffa01514 <_memcpy_>;
ffa043be:	28 91       	R0 = [P5];
ffa043c0:	38 50       	R0 = R0 + R7;
ffa043c2:	01 e8 00 00 	UNLINK;
ffa043c6:	28 93       	[P5] = R0;
ffa043c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa043ca:	bd 05       	(R7:7, P5:5) = [SP++];
ffa043cc:	10 00       	RTS;
	...

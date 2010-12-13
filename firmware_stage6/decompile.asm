
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
ffa00178:	82 21       	JUMP.S 0xffa0047c <_main>;
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

ffa001a8 <_wait_flash>:
ffa001a8:	fd 05       	[--SP] = (R7:7, P5:5);
ffa001aa:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00800(-4192256) */
ffa001ae:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa001b2:	0d e1 04 15 	P5.L = 0x1504;		/* (5380)	P5=0xffc01504(-4188924) */
ffa001b6:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa001b8:	2f 97       	W[P5] = R7;
ffa001ba:	24 00       	SSYNC;
ffa001bc:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa001be:	00 e3 f3 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa001c2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa001c4:	00 e3 f0 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa001c8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00000(-4194304) */
ffa001cc:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa001d0:	17 97       	W[P2] = R7;
ffa001d2:	24 00       	SSYNC;
ffa001d4:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa001d6:	f1 17       	IF !CC JUMP 0xffa001b8 <_wait_flash+0x10> (BP);
ffa001d8:	01 e8 00 00 	UNLINK;
ffa001dc:	bd 05       	(R7:7, P5:5) = [SP++];
ffa001de:	10 00       	RTS;

ffa001e0 <_write_enable_flash>:
ffa001e0:	fc 05       	[--SP] = (R7:7, P5:4);
ffa001e2:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01504(-4188924) */
ffa001e6:	0d e1 04 15 	P5.L = 0x1504;		/* (5380)	P5=0xffc01504(-4188924) */
ffa001ea:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa001ec:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa001f0:	2f 97       	W[P5] = R7;
ffa001f2:	24 00       	SSYNC;
ffa001f4:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00000(-4194304) */
ffa001f8:	0c e1 08 15 	P4.L = 0x1508;		/* (5384)	P4=0xffc01508(-4188920) */
ffa001fc:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa00200:	00 e3 d2 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa00204:	27 97       	W[P4] = R7;
ffa00206:	24 00       	SSYNC;
ffa00208:	2f 97       	W[P5] = R7;
ffa0020a:	24 00       	SSYNC;
ffa0020c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0020e:	00 e3 cb 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa00212:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00214:	00 e3 c8 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa00218:	27 97       	W[P4] = R7;
ffa0021a:	24 00       	SSYNC;
ffa0021c:	2f 97       	W[P5] = R7;
ffa0021e:	24 00       	SSYNC;
ffa00220:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa00222:	00 e3 c1 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa00226:	27 97       	W[P4] = R7;
ffa00228:	24 00       	SSYNC;
ffa0022a:	01 e8 00 00 	UNLINK;
ffa0022e:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00230:	10 00       	RTS;
	...

ffa00234 <_read_flash_u32>:
ffa00234:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00238:	70 05       	[--SP] = (R7:6);
ffa0023a:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0023e:	16 60       	R6 = 0x2 (X);		/*		R6=0x2(  2) */
ffa00240:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00244:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R6 || NOP;
ffa00248:	16 97 00 00 
ffa0024c:	24 00       	SSYNC;
ffa0024e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa00250:	00 e3 aa 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa00254:	82 c6 87 81 	R0 = R7 >> 0x10;
ffa00258:	40 43       	R0 = R0.B (Z);
ffa0025a:	00 e3 a5 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa0025e:	82 c6 c7 81 	R0 = R7 >> 0x8;
ffa00262:	40 43       	R0 = R0.B (Z);
ffa00264:	7f 43       	R7 = R7.B (Z);
ffa00266:	00 e3 9f 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa0026a:	07 30       	R0 = R7;
ffa0026c:	00 e3 9c 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa00270:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00272:	00 e3 99 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa00276:	47 43       	R7 = R0.B (Z);
ffa00278:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0027a:	00 e3 95 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa0027e:	40 43       	R0 = R0.B (Z);
ffa00280:	47 4f       	R7 <<= 0x8;
ffa00282:	c7 51       	R7 = R7 + R0;
ffa00284:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00286:	00 e3 8f 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa0028a:	40 43       	R0 = R0.B (Z);
ffa0028c:	47 4f       	R7 <<= 0x8;
ffa0028e:	c7 51       	R7 = R7 + R0;
ffa00290:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00292:	00 e3 89 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa00296:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0029a:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0029e:	47 4f       	R7 <<= 0x8;
ffa002a0:	16 97       	W[P2] = R6;
ffa002a2:	24 00       	SSYNC;
ffa002a4:	40 43       	R0 = R0.B (Z);
ffa002a6:	c7 51       	R7 = R7 + R0;
ffa002a8:	01 e8 00 00 	UNLINK;
ffa002ac:	07 30       	R0 = R7;
ffa002ae:	30 05       	(R7:6) = [SP++];
ffa002b0:	10 00       	RTS;
	...

ffa002b4 <_read_flash_u8>:
ffa002b4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa002b8:	70 05       	[--SP] = (R7:6);
ffa002ba:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa002be:	16 60       	R6 = 0x2 (X);		/*		R6=0x2(  2) */
ffa002c0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa002c4:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || W[P2] = R6 || NOP;
ffa002c8:	16 97 00 00 
ffa002cc:	24 00       	SSYNC;
ffa002ce:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa002d0:	00 e3 6a 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa002d4:	82 c6 87 81 	R0 = R7 >> 0x10;
ffa002d8:	40 43       	R0 = R0.B (Z);
ffa002da:	00 e3 65 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa002de:	82 c6 c7 81 	R0 = R7 >> 0x8;
ffa002e2:	40 43       	R0 = R0.B (Z);
ffa002e4:	7f 43       	R7 = R7.B (Z);
ffa002e6:	00 e3 5f 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa002ea:	07 30       	R0 = R7;
ffa002ec:	00 e3 5c 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa002f0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa002f2:	00 e3 59 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa002f6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa002fa:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa002fe:	16 97       	W[P2] = R6;
ffa00300:	24 00       	SSYNC;
ffa00302:	01 e8 00 00 	UNLINK;
ffa00306:	40 43       	R0 = R0.B (Z);
ffa00308:	30 05       	(R7:6) = [SP++];
ffa0030a:	10 00       	RTS;

ffa0030c <_write_flash>:
ffa0030c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0030e:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa00312:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01504(-4188924) */
ffa00316:	f1 bb       	[FP -0x4] = R1;
ffa00318:	0d e1 04 15 	P5.L = 0x1504;		/* (5380)	P5=0xffc01504(-4188924) */
ffa0031c:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
ffa0031e:	20 30       	R4 = R0;
ffa00320:	ff e3 60 ff 	CALL 0xffa001e0 <_write_enable_flash>;
ffa00324:	2f 97       	W[P5] = R7;
ffa00326:	24 00       	SSYNC;
ffa00328:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0032a:	00 e3 3d 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa0032e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa00330:	00 e3 3a 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa00334:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa00338:	00 e3 36 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa0033c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0033e:	00 e3 33 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa00342:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00346:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0034a:	17 97       	W[P2] = R7;
ffa0034c:	24 00       	SSYNC;
ffa0034e:	ff e3 2d ff 	CALL 0xffa001a8 <_wait_flash>;
ffa00352:	04 0c       	CC = R4 == 0x0;
ffa00354:	66 18       	IF CC JUMP 0xffa00420 <_write_flash+0x114>;
ffa00356:	fc b9       	P4 = [FP -0x4];
ffa00358:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa0035a:	15 60       	R5 = 0x2 (X);		/*		R5=0x2(  2) */
ffa0035c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00360:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00364:	15 97       	W[P2] = R5;
ffa00366:	24 00       	SSYNC;
ffa00368:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01504(-4188924) */
ffa0036c:	0d e1 08 15 	P5.L = 0x1508;		/* (5384)	P5=0xffc01508(-4188920) */
ffa00370:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa00372:	00 e3 19 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa00376:	2d 97       	W[P5] = R5;
ffa00378:	24 00       	SSYNC;
ffa0037a:	4b e1 07 00 	P3.H = 0x7;		/* (  7)	P3=0x70000 */
ffa0037e:	0b e1 00 f0 	P3.L = 0xf000;		/* (-4096)	P3=0x7f000 */
ffa00382:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00386:	43 30       	R0 = P3;
ffa00388:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0038c:	04 cc 30 0e 	R7 = R6 + R0 (NS) || W[P2] = R5 || NOP;
ffa00390:	15 97 00 00 
ffa00394:	24 00       	SSYNC;
ffa00396:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa00398:	00 e3 06 07 	CALL 0xffa011a4 <_spi_write_byte>;
ffa0039c:	82 c6 87 81 	R0 = R7 >> 0x10;
ffa003a0:	47 4e       	R7 >>= 0x8;
ffa003a2:	7f 43       	R7 = R7.B (Z);
ffa003a4:	40 43       	R0 = R0.B (Z);
ffa003a6:	00 e3 ff 06 	CALL 0xffa011a4 <_spi_write_byte>;
ffa003aa:	07 30       	R0 = R7;
ffa003ac:	00 e3 fc 06 	CALL 0xffa011a4 <_spi_write_byte>;
ffa003b0:	70 43       	R0 = R6.B (Z);
ffa003b2:	00 e3 f9 06 	CALL 0xffa011a4 <_spi_write_byte>;
ffa003b6:	20 98       	R0 = B[P4++] (Z);
ffa003b8:	00 e3 f6 06 	CALL 0xffa011a4 <_spi_write_byte>;
ffa003bc:	2d 97       	W[P5] = R5;
ffa003be:	24 00       	SSYNC;
ffa003c0:	0e 64       	R6 += 0x1;		/* (  1) */
ffa003c2:	ff e3 f3 fe 	CALL 0xffa001a8 <_wait_flash>;
ffa003c6:	34 08       	CC = R4 == R6;
ffa003c8:	ca 17       	IF !CC JUMP 0xffa0035c <_write_flash+0x50> (BP);
ffa003ca:	fd b9       	P5 = [FP -0x4];
ffa003cc:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa003ce:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
ffa003d0:	73 30       	R6 = P3;
ffa003d2:	65 32       	P4 = P5;
ffa003d4:	02 20       	JUMP.S 0xffa003d8 <_write_flash+0xcc>;
ffa003d6:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa003d8:	37 50       	R0 = R7 + R6;
ffa003da:	ff e3 6d ff 	CALL 0xffa002b4 <_read_flash_u8>;
ffa003de:	41 43       	R1 = R0.B (Z);
ffa003e0:	28 99       	R0 = B[P5] (Z);
ffa003e2:	01 08       	CC = R1 == R0;
ffa003e4:	0f 18       	IF CC JUMP 0xffa00402 <_write_flash+0xf6>;
ffa003e6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa003ea:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa003ee:	00 e3 a9 02 	CALL 0xffa00940 <_printf_hex_byte>;
ffa003f2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa003f6:	21 99       	R1 = B[P4] (Z);
ffa003f8:	00 e1 10 00 	R0.L = 0x10;		/* ( 16)	R0=0xff900010(-7340016) */
ffa003fc:	00 e3 a2 02 	CALL 0xffa00940 <_printf_hex_byte>;
ffa00400:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa00402:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00404:	3c 08       	CC = R4 == R7;
ffa00406:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00408:	e7 17       	IF !CC JUMP 0xffa003d6 <_write_flash+0xca> (BP);
ffa0040a:	05 48       	CC = !BITTST (R5, 0x0);		/* bit  0 */
ffa0040c:	0a 10       	IF !CC JUMP 0xffa00420 <_write_flash+0x114>;
ffa0040e:	01 e8 00 00 	UNLINK;
ffa00412:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa00416:	00 e1 1c 00 	R0.L = 0x1c;		/* ( 28)	R0=0xff90001c(-7340004) */
ffa0041a:	a3 05       	(R7:4, P5:3) = [SP++];
ffa0041c:	00 e2 82 02 	JUMP.L 0xffa00920 <_printf_str>;
ffa00420:	01 e8 00 00 	UNLINK;
ffa00424:	a3 05       	(R7:4, P5:3) = [SP++];
ffa00426:	10 00       	RTS;

ffa00428 <_eth_listen>:
ffa00428:	00 0c       	CC = R0 == 0x0;
ffa0042a:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0042e:	04 18       	IF CC JUMP 0xffa00436 <_eth_listen+0xe>;
ffa00430:	01 e8 00 00 	UNLINK;
ffa00434:	10 00       	RTS;
ffa00436:	47 30       	R0 = FP;
ffa00438:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa0043a:	00 e3 03 13 	CALL 0xffa02a40 <_bfin_EMAC_recv>;
ffa0043e:	00 0d       	CC = R0 <= 0x0;
ffa00440:	f8 1b       	IF CC JUMP 0xffa00430 <_eth_listen+0x8>;
ffa00442:	f9 b9       	P1 = [FP -0x4];
ffa00444:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff901504 */
ffa00448:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa0044c:	11 91       	R1 = [P2];
ffa0044e:	c8 a1       	R0 = [P1 + 0x1c];
ffa00450:	08 08       	CC = R0 == R1;
ffa00452:	ef 17       	IF !CC JUMP 0xffa00430 <_eth_listen+0x8> (BP);
ffa00454:	48 e4 13 00 	R0 = W[P1 + 0x26] (Z);
ffa00458:	00 e3 d0 09 	CALL 0xffa017f8 <_htons>;
ffa0045c:	c0 42       	R0 = R0.L (Z);
ffa0045e:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa00462:	08 08       	CC = R0 == R1;
ffa00464:	e6 17       	IF !CC JUMP 0xffa00430 <_eth_listen+0x8> (BP);
ffa00466:	f0 b9       	R0 = [FP -0x4];
ffa00468:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa0046c:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa0046e:	01 e1 b9 0b 	R1.L = 0xbb9;		/* (3001)	R1=0xff900bb9 <_g_outpkt>(-7337031) */
ffa00472:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa00474:	00 e3 fe 03 	CALL 0xffa00c70 <_memcpy_>;
ffa00478:	dc 2f       	JUMP.S 0xffa00430 <_eth_listen+0x8>;
	...

ffa0047c <_main>:
ffa0047c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c64(-4191132) */
ffa00480:	e3 05       	[--SP] = (R7:4, P5:3);
ffa00482:	20 e1 9c c1 	R0 = -0x3e64 (X);		/*		R0=0xffffc19c(-15972) */
ffa00486:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa0048a:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0048e:	10 97       	W[P2] = R0;
ffa00490:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa00494:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
ffa00496:	0a e1 30 15 	P2.L = 0x1530;		/* (5424)	P2=0xffc01530(-4188880) */
ffa0049a:	12 97       	W[P2] = R2;
ffa0049c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01530(-4188880) */
ffa004a0:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa004a2:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa004a6:	10 97       	W[P2] = R0;
ffa004a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa004ac:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa004ae:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa004b2:	10 97       	W[P2] = R0;
ffa004b4:	20 e1 56 00 	R0 = 0x56 (X);		/*		R0=0x56( 86) */
ffa004b8:	a2 6f       	P2 += -0xc;		/* (-12) */
ffa004ba:	10 97       	W[P2] = R0;
ffa004bc:	20 e1 2d 50 	R0 = 0x502d (X);		/*		R0=0x502d(20525) */
ffa004c0:	c2 6f       	P2 += -0x8;		/* ( -8) */
ffa004c2:	10 97       	W[P2] = R0;
ffa004c4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa004c6:	22 6c       	P2 += 0x4;		/* (  4) */
ffa004c8:	11 97       	W[P2] = R1;
ffa004ca:	48 e1 c0 ff 	P0.H = 0xffc0;		/* (-64)	P0=0xffc0150c(-4188916) */
ffa004ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa004d2:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc0203c(-4186052) */
ffa004d6:	09 e1 0c 04 	P1.L = 0x40c;		/* (1036)	P1=0xffc0040c(-4193268) */
ffa004da:	08 e1 04 04 	P0.L = 0x404;		/* (1028)	P0=0xffc00404(-4193276) */
ffa004de:	0a e1 10 04 	P2.L = 0x410;		/* (1040)	P2=0xffc00410(-4193264) */
ffa004e2:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa004e6:	01 97       	W[P0] = R1;
ffa004e8:	11 97       	W[P2] = R1;
ffa004ea:	08 97       	W[P1] = R0;
ffa004ec:	82 6f       	P2 += -0x10;		/* (-16) */
ffa004ee:	20 e1 88 00 	R0 = 0x88 (X);		/*		R0=0x88(136) */
ffa004f2:	10 97       	W[P2] = R0;
ffa004f4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa004f6:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa004f8:	01 97       	W[P0] = R1;
ffa004fa:	0a 97       	W[P1] = R2;
ffa004fc:	10 97       	W[P2] = R0;
ffa004fe:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00500:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900410 */
ffa00504:	b8 4f       	R0 <<= 0x17;
ffa00506:	0a e1 dc 0b 	P2.L = 0xbdc;		/* (3036)	P2=0xff900bdc <_printf_temp> */
ffa0050a:	10 93       	[P2] = R0;
ffa0050c:	20 e1 01 e0 	R0 = -0x1fff (X);		/*		R0=0xffffe001(-8191) */
ffa00510:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bdc <_printf_temp> */
ffa00514:	0a e1 e0 0b 	P2.L = 0xbe0;		/* (3040)	P2=0xff900be0 <_printf_out> */
ffa00518:	50 4f       	R0 <<= 0xa;
ffa0051a:	10 93       	[P2] = R0;
ffa0051c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90e001(-7282687) */
ffa00520:	21 e1 80 01 	R1 = 0x180 (X);		/*		R1=0x180(384) */
ffa00524:	00 e1 38 00 	R0.L = 0x38;		/* ( 56)	R0=0xff900038(-7339976) */
ffa00528:	00 e3 be 02 	CALL 0xffa00aa4 <_printf_int>;
ffa0052c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900038(-7339976) */
ffa00530:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa00534:	00 e3 f6 01 	CALL 0xffa00920 <_printf_str>;
ffa00538:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a6c(-7337364) */
ffa0053c:	00 e1 48 00 	R0.L = 0x48;		/* ( 72)	R0=0xff900048(-7339960) */
ffa00540:	00 e3 f0 01 	CALL 0xffa00920 <_printf_str>;
ffa00544:	49 e1 40 00 	P1.H = 0x40;		/* ( 64)	P1=0x40040c */
ffa00548:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa0054a:	23 e1 ca de 	R3 = -0x2136 (X);		/*		R3=0xffffdeca(-8502) */
ffa0054e:	20 e1 ad fb 	R0 = -0x453 (X);		/*		R0=0xfffffbad(-1107) */
ffa00552:	21 e1 ed c0 	R1 = -0x3f13 (X);		/*		R1=0xffffc0ed(-16147) */
ffa00556:	22 e1 be ba 	R2 = -0x4542 (X);		/*		R2=0xffffbabe(-17730) */
ffa0055a:	09 e1 00 00 	P1.L = 0x0;		/* (  0)	P1=0x400000 */
ffa0055e:	b2 e0 06 10 	LSETUP(0xffa00562 <_main+0xe6>, 0xffa0056a <_main+0xee>) LC1 = P1;
ffa00562:	13 97       	W[P2] = R3;
ffa00564:	50 b4       	W[P2 + 0x2] = R0;
ffa00566:	91 b4       	W[P2 + 0x4] = R1;
ffa00568:	d2 b4       	W[P2 + 0x6] = R2;
ffa0056a:	42 6c       	P2 += 0x8;		/* (  8) */
ffa0056c:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa0056e:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00570:	02 20       	JUMP.S 0xffa00574 <_main+0xf8>;
ffa00572:	45 6c       	P5 += 0x8;		/* (  8) */
ffa00574:	2f 95       	R7 = W[P5] (Z);
ffa00576:	80 e1 ca de 	R0 = 0xdeca (Z);		/*		R0=0xdeca(57034) */
ffa0057a:	07 08       	CC = R7 == R0;
ffa0057c:	15 18       	IF CC JUMP 0xffa005a6 <_main+0x12a>;
ffa0057e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90deca(-7282998) */
ffa00582:	0e 30       	R1 = R6;
ffa00584:	00 e1 5c 00 	R0.L = 0x5c;		/* ( 92)	R0=0xff90005c(-7339940) */
ffa00588:	00 e3 32 02 	CALL 0xffa009ec <_printf_hex>;
ffa0058c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90005c(-7339940) */
ffa00590:	00 e1 68 00 	R0.L = 0x68;		/* (104)	R0=0xff900068(-7339928) */
ffa00594:	0f 30       	R1 = R7;
ffa00596:	00 e3 2b 02 	CALL 0xffa009ec <_printf_hex>;
ffa0059a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900068(-7339928) */
ffa0059e:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa005a2:	00 e3 bf 01 	CALL 0xffa00920 <_printf_str>;
ffa005a6:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa005a8:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa005ac:	08 08       	CC = R0 == R1;
ffa005ae:	08 18       	IF CC JUMP 0xffa005be <_main+0x142>;
ffa005b0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a6c(-7337364) */
ffa005b4:	00 e1 5c 00 	R0.L = 0x5c;		/* ( 92)	R0=0xff90005c(-7339940) */
ffa005b8:	0e 30       	R1 = R6;
ffa005ba:	00 e3 19 02 	CALL 0xffa009ec <_printf_hex>;
ffa005be:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa005c0:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa005c4:	08 08       	CC = R0 == R1;
ffa005c6:	08 18       	IF CC JUMP 0xffa005d6 <_main+0x15a>;
ffa005c8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90005c(-7339940) */
ffa005cc:	00 e1 5c 00 	R0.L = 0x5c;		/* ( 92)	R0=0xff90005c(-7339940) */
ffa005d0:	0e 30       	R1 = R6;
ffa005d2:	00 e3 0d 02 	CALL 0xffa009ec <_printf_hex>;
ffa005d6:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa005d8:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa005dc:	08 08       	CC = R0 == R1;
ffa005de:	08 18       	IF CC JUMP 0xffa005ee <_main+0x172>;
ffa005e0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90005c(-7339940) */
ffa005e4:	00 e1 5c 00 	R0.L = 0x5c;		/* ( 92)	R0=0xff90005c(-7339940) */
ffa005e8:	0e 30       	R1 = R6;
ffa005ea:	00 e3 01 02 	CALL 0xffa009ec <_printf_hex>;
ffa005ee:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa005f2:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa005f6:	55 08       	CC = P5 == P2;
ffa005f8:	0e 64       	R6 += 0x1;		/* (  1) */
ffa005fa:	bc 17       	IF !CC JUMP 0xffa00572 <_main+0xf6> (BP);
ffa005fc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90005c(-7339940) */
ffa00600:	00 e1 70 00 	R0.L = 0x70;		/* (112)	R0=0xff900070(-7339920) */
ffa00604:	00 e3 8e 01 	CALL 0xffa00920 <_printf_str>;
ffa00608:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0fff8(-4128776) */
ffa0060c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0060e:	0a e1 84 06 	P2.L = 0x684;		/* (1668)	P2=0xffc00684(-4192636) */
ffa00612:	10 97       	W[P2] = R0;
ffa00614:	24 00       	SSYNC;
ffa00616:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800684 */
ffa0061a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0061c:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00620:	10 93       	[P2] = R0;
ffa00622:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa00626:	20 e1 59 00 	R0 = 0x59 (X);		/*		R0=0x59( 89) */
ffa0062a:	0a e1 50 06 	P2.L = 0x650;		/* (1616)	P2=0xffc00650(-4192688) */
ffa0062e:	10 97       	W[P2] = R0;
ffa00630:	20 e1 09 3d 	R0 = 0x3d09 (X);		/*		R0=0x3d09(15625) */
ffa00634:	18 4f       	R0 <<= 0x3;
ffa00636:	42 6c       	P2 += 0x8;		/* (  8) */
ffa00638:	10 93       	[P2] = R0;
ffa0063a:	80 e1 24 f4 	R0 = 0xf424 (Z);		/*		R0=0xf424(62500) */
ffa0063e:	22 6c       	P2 += 0x4;		/* (  4) */
ffa00640:	10 93       	[P2] = R0;
ffa00642:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa00644:	50 95       	R0 = W[P2] (X);
ffa00646:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa00648:	10 97       	W[P2] = R0;
ffa0064a:	00 e3 b7 0f 	CALL 0xffa025b8 <_bfin_EMAC_init>;
ffa0064e:	00 0c       	CC = R0 == 0x0;
ffa00650:	20 30       	R4 = R0;
ffa00652:	03 14       	IF !CC JUMP 0xffa00658 <_main+0x1dc> (BP);
ffa00654:	00 e3 84 11 	CALL 0xffa0295c <_DHCP_req>;
ffa00658:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00650(-4192688) */
ffa0065c:	0a e1 00 32 	P2.L = 0x3200;		/* (12800)	P2=0xffc03200(-4181504) */
ffa00660:	50 95       	R0 = W[P2] (X);
ffa00662:	3a 62       	R2 = -0x39 (X);		/*		R2=0xffffffc7(-57) */
ffa00664:	10 54       	R0 = R0 & R2;
ffa00666:	10 97       	W[P2] = R0;
ffa00668:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03200(-4181504) */
ffa0066c:	0a e1 30 07 	P2.L = 0x730;		/* (1840)	P2=0xffc00730(-4192464) */
ffa00670:	51 95       	R1 = W[P2] (X);
ffa00672:	c0 61       	R0 = 0x38 (X);		/*		R0=0x38( 56) */
ffa00674:	08 56       	R0 = R0 | R1;
ffa00676:	10 97       	W[P2] = R0;
ffa00678:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa0067a:	50 95       	R0 = W[P2] (X);
ffa0067c:	10 54       	R0 = R0 & R2;
ffa0067e:	10 97       	W[P2] = R0;
ffa00680:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00730(-4192464) */
ffa00684:	0a e1 40 15 	P2.L = 0x1540;		/* (5440)	P2=0xffc01540(-4188864) */
ffa00688:	50 95       	R0 = W[P2] (X);
ffa0068a:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa0068c:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00000(-4194304) */
ffa00690:	10 97       	W[P2] = R0;
ffa00692:	09 e1 30 15 	P1.L = 0x1530;		/* (5424)	P1=0xffc01530(-4188880) */
ffa00696:	48 95       	R0 = W[P1] (X);
ffa00698:	58 4c       	BITCLR (R0, 0xb);		/* bit 11 */
ffa0069a:	08 97       	W[P1] = R0;
ffa0069c:	50 95       	R0 = W[P2] (X);
ffa0069e:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa006a0:	10 97       	W[P2] = R0;
ffa006a2:	48 95       	R0 = W[P1] (X);
ffa006a4:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa006a6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01540(-4188864) */
ffa006aa:	08 97       	W[P1] = R0;
ffa006ac:	0a e1 04 32 	P2.L = 0x3204;		/* (12804)	P2=0xffc03204(-4181500) */
ffa006b0:	50 95       	R0 = W[P2] (X);
ffa006b2:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa006b4:	10 97       	W[P2] = R0;
ffa006b6:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
ffa006ba:	00 e3 75 07 	CALL 0xffa015a4 <_radio_init>;
ffa006be:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa006c2:	00 e1 84 00 	R0.L = 0x84;		/* (132)	R0=0xff900084(-7339900) */
ffa006c6:	00 e3 2d 01 	CALL 0xffa00920 <_printf_str>;
ffa006ca:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa006cc:	00 e3 a8 06 	CALL 0xffa0141c <_radio_set_rx>;
ffa006d0:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa006d2:	00 cc 00 c0 	R0 = R0 -|- R0 || [FP -0x8] = R5 || NOP;
ffa006d6:	e5 bb 00 00 
ffa006da:	d0 bb       	[FP -0xc] = R0;
ffa006dc:	04 30       	R0 = R4;
ffa006de:	ff e3 a5 fe 	CALL 0xffa00428 <_eth_listen>;
ffa006e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03204(-4181500) */
ffa006e6:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa006ea:	50 95       	R0 = W[P2] (X);
ffa006ec:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa006ee:	43 18       	IF CC JUMP 0xffa00774 <_main+0x2f8>;
ffa006f0:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa006f4:	05 0a       	CC = R5 <= R0 (IU);
ffa006f6:	1a 1c       	IF CC JUMP 0xffa0072a <_main+0x2ae> (BP);
ffa006f8:	4f 30       	R1 = FP;
ffa006fa:	20 e1 04 01 	R0 = 0x104 (X);		/*		R0=0x104(260) */
ffa006fe:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa00700:	00 e3 b4 0d 	CALL 0xffa02268 <_udp_packet_setup>;
ffa00704:	10 32       	P2 = R0;
ffa00706:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0070a:	00 0d       	CC = R0 <= 0x0;
ffa0070c:	6d 18       	IF CC JUMP 0xffa007e6 <_main+0x36a>;
ffa0070e:	e1 b9       	R1 = [FP -0x8];
ffa00710:	11 92       	[P2++] = R1;
ffa00712:	4a 30       	R1 = P2;
ffa00714:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00716:	22 e1 00 01 	R2 = 0x100 (X);		/*		R2=0x100(256) */
ffa0071a:	00 e3 ab 02 	CALL 0xffa00c70 <_memcpy_>;
ffa0071e:	ea b9       	P2 = [FP -0x8];
ffa00720:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa00722:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00724:	ea bb       	[FP -0x8] = P2;
ffa00726:	00 e3 13 0a 	CALL 0xffa01b4c <_bfin_EMAC_send_nocopy>;
ffa0072a:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff801500 */
ffa0072e:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa00732:	40 e1 62 10 	R0.H = 0x1062;		/* (4194)	R0=0x10620000(274857984) */
ffa00736:	11 91       	R1 = [P2];
ffa00738:	00 e1 d3 4d 	R0.L = 0x4dd3;		/* (19923)	R0=0x10624dd3(274877907) */
ffa0073c:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa00740:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00744:	81 c0 08 86 	A1 += R1.H * R0.L, A0 = R1.H * R0.H (FU);
ffa00748:	81 c0 01 98 	A1 += R0.H * R1.L (FU);
ffa0074c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00750:	0b c4 00 80 	A0 += A1;
ffa00754:	8b c0 00 38 	R0 = A0 (FU);
ffa00758:	82 ce d0 83 	R1 = R0 >> 0x6 || R0 = [FP -0xc] || NOP;
ffa0075c:	d0 b9 00 00 
ffa00760:	08 08       	CC = R0 == R1;
ffa00762:	bd 1b       	IF CC JUMP 0xffa006dc <_main+0x260>;
ffa00764:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa00768:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0076a:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa0076e:	10 97       	W[P2] = R0;
ffa00770:	d1 bb       	[FP -0xc] = R1;
ffa00772:	b5 2f       	JUMP.S 0xffa006dc <_main+0x260>;
ffa00774:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa00778:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0077a:	00 e3 95 04 	CALL 0xffa010a4 <_spi_write_register>;
ffa0077e:	24 00       	SSYNC;
ffa00780:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa00784:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa00788:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0078c:	10 97       	W[P2] = R0;
ffa0078e:	24 00       	SSYNC;
ffa00790:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa00794:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa00798:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0079c:	28 97       	W[P5] = R0;
ffa0079e:	5d 32       	P3 = P5;
ffa007a0:	00 e3 68 04 	CALL 0xffa01070 <_spi_delay>;
ffa007a4:	25 32       	P4 = R5;
ffa007a6:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa007a8:	65 6c       	P5 += 0xc;		/* ( 12) */
ffa007aa:	1e 97       	W[P3] = R6;
ffa007ac:	00 e3 62 04 	CALL 0xffa01070 <_spi_delay>;
ffa007b0:	0f 64       	R7 += 0x1;		/* (  1) */
ffa007b2:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa007b4:	68 95       	R0 = W[P5] (X);
ffa007b6:	0f 08       	CC = R7 == R1;
ffa007b8:	20 9a       	B[P4++] = R0;
ffa007ba:	f8 17       	IF !CC JUMP 0xffa007aa <_main+0x32e> (BP);
ffa007bc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa007c0:	27 e1 00 06 	R7 = 0x600 (X);		/*		R7=0x600(1536) */
ffa007c4:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa007c8:	17 97       	W[P2] = R7;
ffa007ca:	24 00       	SSYNC;
ffa007cc:	15 32       	P2 = R5;
ffa007ce:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa007d0:	90 e5 1b 00 	R0 = B[P2 + 0x1b] (X);
ffa007d4:	08 54       	R0 = R0 & R1;
ffa007d6:	08 08       	CC = R0 == R1;
ffa007d8:	0e 18       	IF CC JUMP 0xffa007f4 <_main+0x378>;
ffa007da:	0d 30       	R1 = R5;
ffa007dc:	01 65       	R1 += 0x20;		/* ( 32) */
ffa007de:	20 e1 ff 0f 	R0 = 0xfff (X);		/*		R0=0xfff(4095) */
ffa007e2:	41 55       	R5 = R1 & R0;
ffa007e4:	86 2f       	JUMP.S 0xffa006f0 <_main+0x274>;
ffa007e6:	e0 b9       	R0 = [FP -0x8];
ffa007e8:	08 64       	R0 += 0x1;		/* (  1) */
ffa007ea:	00 cc 2d ca 	R5 = R5 -|- R5 || [FP -0x8] = R0 || NOP;
ffa007ee:	e0 bb 00 00 
ffa007f2:	9c 2f       	JUMP.S 0xffa0072a <_main+0x2ae>;
ffa007f4:	00 e3 42 06 	CALL 0xffa01478 <_radio_set_tx>;
ffa007f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa007fc:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00800:	17 97       	W[P2] = R7;
ffa00802:	24 00       	SSYNC;
ffa00804:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90050c */
ffa00808:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0080c:	0d e1 b9 0b 	P5.L = 0xbb9;		/* (3001)	P5=0xff900bb9 <_g_outpkt> */
ffa00810:	18 97       	W[P3] = R0;
ffa00812:	65 32       	P4 = P5;
ffa00814:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc0f000(-4132864) */
ffa00818:	00 e3 2c 04 	CALL 0xffa01070 <_spi_delay>;
ffa0081c:	0b e1 0c 05 	P3.L = 0x50c;		/* (1292)	P3=0xffc0050c(-4193012) */
ffa00820:	04 6d       	P4 += 0x20;		/* ( 32) */
ffa00822:	00 00       	NOP;
ffa00824:	28 98       	R0 = B[P5++] (Z);
ffa00826:	18 97       	W[P3] = R0;
ffa00828:	00 e3 24 04 	CALL 0xffa01070 <_spi_delay>;
ffa0082c:	65 08       	CC = P5 == P4;
ffa0082e:	fa 17       	IF !CC JUMP 0xffa00822 <_main+0x3a6> (BP);
ffa00830:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa00834:	20 e1 00 06 	R0 = 0x600 (X);		/*		R0=0x600(1536) */
ffa00838:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0083c:	10 97       	W[P2] = R0;
ffa0083e:	24 00       	SSYNC;
ffa00840:	04 30       	R0 = R4;
ffa00842:	ff e3 f3 fd 	CALL 0xffa00428 <_eth_listen>;
ffa00846:	03 20       	JUMP.S 0xffa0084c <_main+0x3d0>;
ffa00848:	00 00       	NOP;
ffa0084a:	00 00       	NOP;
ffa0084c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00850:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa00854:	50 95       	R0 = W[P2] (X);
ffa00856:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa00858:	f8 17       	IF !CC JUMP 0xffa00848 <_main+0x3cc> (BP);
ffa0085a:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0085e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa00860:	00 e3 22 04 	CALL 0xffa010a4 <_spi_write_register>;
ffa00864:	00 e3 dc 05 	CALL 0xffa0141c <_radio_set_rx>;
ffa00868:	48 2f       	JUMP.S 0xffa006f8 <_main+0x27c>;
	...

ffa0086c <_uart_str>:
ffa0086c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa00870:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00874:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa00878:	08 32       	P1 = R0;
ffa0087a:	50 95       	R0 = W[P2] (X);
ffa0087c:	c0 42       	R0 = R0.L (Z);
ffa0087e:	08 0c       	CC = R0 == 0x1;
ffa00880:	06 18       	IF CC JUMP 0xffa0088c <_uart_str+0x20>;
ffa00882:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00884:	02 30       	R0 = R2;
ffa00886:	01 e8 00 00 	UNLINK;
ffa0088a:	10 00       	RTS;
ffa0088c:	48 99       	R0 = B[P1] (X);
ffa0088e:	01 43       	R1 = R0.B (X);
ffa00890:	01 0c       	CC = R1 == 0x0;
ffa00892:	f8 1b       	IF CC JUMP 0xffa00882 <_uart_str+0x16>;
ffa00894:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa00898:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0089a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0089c:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa008a0:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa008a4:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa008a6:	b2 e0 1c 00 	LSETUP(0xffa008aa <_uart_str+0x3e>, 0xffa008de <_uart_str+0x72>) LC1 = P0;
ffa008aa:	19 08       	CC = R1 == R3;
ffa008ac:	1b 18       	IF CC JUMP 0xffa008e2 <_uart_str+0x76>;
ffa008ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa008b2:	00 43       	R0 = R0.B (X);
ffa008b4:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa008b8:	10 97       	W[P2] = R0;
ffa008ba:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa008bc:	50 95       	R0 = W[P2] (X);
ffa008be:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa008c0:	0a 10       	IF !CC JUMP 0xffa008d4 <_uart_str+0x68>;
ffa008c2:	00 00       	NOP;
ffa008c4:	00 00       	NOP;
ffa008c6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa008ca:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa008ce:	50 95       	R0 = W[P2] (X);
ffa008d0:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa008d2:	f9 1f       	IF CC JUMP 0xffa008c4 <_uart_str+0x58> (BP);
ffa008d4:	48 99       	R0 = B[P1] (X);
ffa008d6:	01 43       	R1 = R0.B (X);
ffa008d8:	01 0c       	CC = R1 == 0x0;
ffa008da:	0a 64       	R2 += 0x1;		/* (  1) */
ffa008dc:	d4 1b       	IF CC JUMP 0xffa00884 <_uart_str+0x18>;
ffa008de:	09 6c       	P1 += 0x1;		/* (  1) */
ffa008e0:	d2 2f       	JUMP.S 0xffa00884 <_uart_str+0x18>;
ffa008e2:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa008e4:	20 9f       	W[I0] = R0.L;
ffa008e6:	02 20       	JUMP.S 0xffa008ea <_uart_str+0x7e>;
ffa008e8:	00 00       	NOP;
ffa008ea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa008ee:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa008f2:	50 95       	R0 = W[P2] (X);
ffa008f4:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa008f6:	f9 1f       	IF CC JUMP 0xffa008e8 <_uart_str+0x7c> (BP);
ffa008f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa008fc:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa008fe:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa00902:	10 97       	W[P2] = R0;
ffa00904:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa00906:	50 95       	R0 = W[P2] (X);
ffa00908:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0090a:	e5 13       	IF !CC JUMP 0xffa008d4 <_uart_str+0x68>;
ffa0090c:	00 00       	NOP;
ffa0090e:	00 00       	NOP;
ffa00910:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa00914:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00918:	50 95       	R0 = W[P2] (X);
ffa0091a:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa0091c:	f9 1f       	IF CC JUMP 0xffa0090e <_uart_str+0xa2> (BP);
ffa0091e:	db 2f       	JUMP.S 0xffa008d4 <_uart_str+0x68>;

ffa00920 <_printf_str>:
ffa00920:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00924:	01 e8 00 00 	UNLINK;
ffa00928:	ff e2 a2 ff 	JUMP.L 0xffa0086c <_uart_str>;

ffa0092c <_printf_newline>:
ffa0092c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00930:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa00934:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa00938:	01 e8 00 00 	UNLINK;
ffa0093c:	ff e2 98 ff 	JUMP.L 0xffa0086c <_uart_str>;

ffa00940 <_printf_hex_byte>:
ffa00940:	fc 05       	[--SP] = (R7:7, P5:4);
ffa00942:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00946:	28 32       	P5 = R0;
ffa00948:	39 30       	R7 = R1;
ffa0094a:	00 e3 b1 01 	CALL 0xffa00cac <_strlen_>;
ffa0094e:	10 30       	R2 = R0;
ffa00950:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa00954:	02 09       	CC = R2 <= R0;
ffa00956:	41 10       	IF !CC JUMP 0xffa009d8 <_printf_hex_byte+0x98>;
ffa00958:	02 0d       	CC = R2 <= 0x0;
ffa0095a:	44 18       	IF CC JUMP 0xffa009e2 <_printf_hex_byte+0xa2>;
ffa0095c:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa00960:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00962:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa00966:	09 32       	P1 = R1;
ffa00968:	42 91       	P2 = [P0];
ffa0096a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0096c:	68 98       	R0 = B[P5++] (X);
ffa0096e:	0a 08       	CC = R2 == R1;
ffa00970:	8a 5a       	P2 = P2 + P1;
ffa00972:	10 9b       	B[P2] = R0;
ffa00974:	f9 17       	IF !CC JUMP 0xffa00966 <_printf_hex_byte+0x26> (BP);
ffa00976:	0a 32       	P1 = R2;
ffa00978:	42 91       	P2 = [P0];
ffa0097a:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa0097c:	22 32       	P4 = R2;
ffa0097e:	79 43       	R1 = R7.B (Z);
ffa00980:	8a 5a       	P2 = P2 + P1;
ffa00982:	10 9b       	B[P2] = R0;
ffa00984:	42 91       	P2 = [P0];
ffa00986:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00988:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa0098c:	11 6c       	P1 += 0x2;		/* (  2) */
ffa0098e:	a2 5a       	P2 = P2 + P4;
ffa00990:	10 9b       	B[P2] = R0;
ffa00992:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa00994:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa00996:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa00998:	01 30       	R0 = R1;
ffa0099a:	10 40       	R0 >>>= R2;
ffa0099c:	18 54       	R0 = R0 & R3;
ffa0099e:	38 09       	CC = R0 <= R7;
ffa009a0:	1a 1c       	IF CC JUMP 0xffa009d4 <_printf_hex_byte+0x94> (BP);
ffa009a2:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa009a4:	42 91       	P2 = [P0];
ffa009a6:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa009a8:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900bb9 <_g_outpkt> */
ffa009ac:	22 0c       	CC = R2 == -0x4;
ffa009ae:	8a 5a       	P2 = P2 + P1;
ffa009b0:	0d e1 e0 0b 	P5.L = 0xbe0;		/* (3040)	P5=0xff900be0 <_printf_out> */
ffa009b4:	10 9b       	B[P2] = R0;
ffa009b6:	09 6c       	P1 += 0x1;		/* (  1) */
ffa009b8:	f0 17       	IF !CC JUMP 0xffa00998 <_printf_hex_byte+0x58> (BP);
ffa009ba:	6a 91       	P2 = [P5];
ffa009bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009be:	94 5a       	P2 = P4 + P2;
ffa009c0:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa009c4:	28 91       	R0 = [P5];
ffa009c6:	ff e3 53 ff 	CALL 0xffa0086c <_uart_str>;
ffa009ca:	01 e8 00 00 	UNLINK;
ffa009ce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009d0:	bc 05       	(R7:7, P5:4) = [SP++];
ffa009d2:	10 00       	RTS;
ffa009d4:	80 65       	R0 += 0x30;		/* ( 48) */
ffa009d6:	e7 2f       	JUMP.S 0xffa009a4 <_printf_hex_byte+0x64>;
ffa009d8:	01 e8 00 00 	UNLINK;
ffa009dc:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa009de:	bc 05       	(R7:7, P5:4) = [SP++];
ffa009e0:	10 00       	RTS;
ffa009e2:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900be0 <_printf_out> */
ffa009e6:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa009ea:	c6 2f       	JUMP.S 0xffa00976 <_printf_hex_byte+0x36>;

ffa009ec <_printf_hex>:
ffa009ec:	fb 05       	[--SP] = (R7:7, P5:3);
ffa009ee:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa009f2:	28 32       	P5 = R0;
ffa009f4:	39 30       	R7 = R1;
ffa009f6:	00 e3 5b 01 	CALL 0xffa00cac <_strlen_>;
ffa009fa:	10 30       	R2 = R0;
ffa009fc:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa00a00:	02 09       	CC = R2 <= R0;
ffa00a02:	47 10       	IF !CC JUMP 0xffa00a90 <_printf_hex+0xa4>;
ffa00a04:	02 0d       	CC = R2 <= 0x0;
ffa00a06:	4a 18       	IF CC JUMP 0xffa00a9a <_printf_hex+0xae>;
ffa00a08:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff901530 */
ffa00a0c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00a0e:	09 e1 e0 0b 	P1.L = 0xbe0;		/* (3040)	P1=0xff900be0 <_printf_out> */
ffa00a12:	01 32       	P0 = R1;
ffa00a14:	4a 91       	P2 = [P1];
ffa00a16:	09 64       	R1 += 0x1;		/* (  1) */
ffa00a18:	68 98       	R0 = B[P5++] (X);
ffa00a1a:	0a 08       	CC = R2 == R1;
ffa00a1c:	82 5a       	P2 = P2 + P0;
ffa00a1e:	10 9b       	B[P2] = R0;
ffa00a20:	f9 17       	IF !CC JUMP 0xffa00a12 <_printf_hex+0x26> (BP);
ffa00a22:	02 32       	P0 = R2;
ffa00a24:	4a 91       	P2 = [P1];
ffa00a26:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00a28:	1a 32       	P3 = R2;
ffa00a2a:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa00a2c:	82 5a       	P2 = P2 + P0;
ffa00a2e:	10 9b       	B[P2] = R0;
ffa00a30:	4a 91       	P2 = [P1];
ffa00a32:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa00a34:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00a38:	10 6c       	P0 += 0x2;		/* (  2) */
ffa00a3a:	9a 5a       	P2 = P2 + P3;
ffa00a3c:	10 9b       	B[P2] = R0;
ffa00a3e:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa00a40:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa00a42:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa00a44:	b2 e0 10 50 	LSETUP(0xffa00a48 <_printf_hex+0x5c>, 0xffa00a64 <_printf_hex+0x78>) LC1 = P5;
ffa00a48:	07 30       	R0 = R7;
ffa00a4a:	08 40       	R0 >>>= R1;
ffa00a4c:	10 54       	R0 = R0 & R2;
ffa00a4e:	18 09       	CC = R0 <= R3;
ffa00a50:	1e 1c       	IF CC JUMP 0xffa00a8c <_printf_hex+0xa0> (BP);
ffa00a52:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00a54:	4a 91       	P2 = [P1];
ffa00a56:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff901508 */
ffa00a5a:	0c e1 e0 0b 	P4.L = 0xbe0;		/* (3040)	P4=0xff900be0 <_printf_out> */
ffa00a5e:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa00a60:	82 5a       	P2 = P2 + P0;
ffa00a62:	10 9b       	B[P2] = R0;
ffa00a64:	08 6c       	P0 += 0x1;		/* (  1) */
ffa00a66:	62 91       	P2 = [P4];
ffa00a68:	4b 32       	P1 = P3;
ffa00a6a:	49 6c       	P1 += 0x9;		/* (  9) */
ffa00a6c:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00a6e:	8a 5a       	P2 = P2 + P1;
ffa00a70:	10 9b       	B[P2] = R0;
ffa00a72:	62 91       	P2 = [P4];
ffa00a74:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a76:	8a 5a       	P2 = P2 + P1;
ffa00a78:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa00a7c:	20 91       	R0 = [P4];
ffa00a7e:	ff e3 f7 fe 	CALL 0xffa0086c <_uart_str>;
ffa00a82:	01 e8 00 00 	UNLINK;
ffa00a86:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a88:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00a8a:	10 00       	RTS;
ffa00a8c:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00a8e:	e3 2f       	JUMP.S 0xffa00a54 <_printf_hex+0x68>;
ffa00a90:	01 e8 00 00 	UNLINK;
ffa00a94:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00a96:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00a98:	10 00       	RTS;
ffa00a9a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900be0 <_printf_out> */
ffa00a9e:	09 e1 e0 0b 	P1.L = 0xbe0;		/* (3040)	P1=0xff900be0 <_printf_out> */
ffa00aa2:	c0 2f       	JUMP.S 0xffa00a22 <_printf_hex+0x36>;

ffa00aa4 <_printf_int>:
ffa00aa4:	f3 05       	[--SP] = (R7:6, P5:3);
ffa00aa6:	01 0c       	CC = R1 == 0x0;
ffa00aa8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00aac:	28 32       	P5 = R0;
ffa00aae:	39 30       	R7 = R1;
ffa00ab0:	41 14       	IF !CC JUMP 0xffa00b32 <_printf_int+0x8e> (BP);
ffa00ab2:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90050c */
ffa00ab6:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00aba:	5a 91       	P2 = [P3];
ffa00abc:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00abe:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa00ac0:	10 9b       	B[P2] = R0;
ffa00ac2:	45 30       	R0 = P5;
ffa00ac4:	00 e3 f4 00 	CALL 0xffa00cac <_strlen_>;
ffa00ac8:	c6 50       	R3 = R6 + R0;
ffa00aca:	10 30       	R2 = R0;
ffa00acc:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa00ad0:	03 09       	CC = R3 <= R0;
ffa00ad2:	4e 10       	IF !CC JUMP 0xffa00b6e <_printf_int+0xca>;
ffa00ad4:	02 0d       	CC = R2 <= 0x0;
ffa00ad6:	79 18       	IF CC JUMP 0xffa00bc8 <_printf_int+0x124>;
ffa00ad8:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900be0 <_printf_out> */
ffa00adc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00ade:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa00ae2:	09 32       	P1 = R1;
ffa00ae4:	42 91       	P2 = [P0];
ffa00ae6:	09 64       	R1 += 0x1;		/* (  1) */
ffa00ae8:	68 98       	R0 = B[P5++] (X);
ffa00aea:	0a 08       	CC = R2 == R1;
ffa00aec:	8a 5a       	P2 = P2 + P1;
ffa00aee:	10 9b       	B[P2] = R0;
ffa00af0:	f9 17       	IF !CC JUMP 0xffa00ae2 <_printf_int+0x3e> (BP);
ffa00af2:	06 0d       	CC = R6 <= 0x0;
ffa00af4:	12 18       	IF CC JUMP 0xffa00b18 <_printf_int+0x74>;
ffa00af6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00af8:	00 91       	R0 = [P0];
ffa00afa:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa00afe:	5a 91 00 00 
ffa00b02:	08 50       	R0 = R0 + R1;
ffa00b04:	08 32       	P1 = R0;
ffa00b06:	0e 52       	R0 = R6 - R1;
ffa00b08:	28 32       	P5 = R0;
ffa00b0a:	09 64       	R1 += 0x1;		/* (  1) */
ffa00b0c:	0e 08       	CC = R6 == R1;
ffa00b0e:	aa 5a       	P2 = P2 + P5;
ffa00b10:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa00b14:	08 9b       	B[P1] = R0;
ffa00b16:	f1 17       	IF !CC JUMP 0xffa00af8 <_printf_int+0x54> (BP);
ffa00b18:	0b 32       	P1 = R3;
ffa00b1a:	42 91       	P2 = [P0];
ffa00b1c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b1e:	91 5a       	P2 = P1 + P2;
ffa00b20:	10 9b       	B[P2] = R0;
ffa00b22:	00 91       	R0 = [P0];
ffa00b24:	ff e3 a4 fe 	CALL 0xffa0086c <_uart_str>;
ffa00b28:	01 e8 00 00 	UNLINK;
ffa00b2c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b2e:	b3 05       	(R7:6, P5:3) = [SP++];
ffa00b30:	10 00       	RTS;
ffa00b32:	01 0d       	CC = R1 <= 0x0;
ffa00b34:	22 18       	IF CC JUMP 0xffa00b78 <_printf_int+0xd4>;
ffa00b36:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00b3a:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00b3c:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00b40:	05 20       	JUMP.S 0xffa00b4a <_printf_int+0xa6>;
ffa00b42:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa00b46:	06 08       	CC = R6 == R0;
ffa00b48:	bd 1b       	IF CC JUMP 0xffa00ac2 <_printf_int+0x1e>;
ffa00b4a:	07 30       	R0 = R7;
ffa00b4c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00b4e:	00 e3 83 00 	CALL 0xffa00c54 <_mod>;
ffa00b52:	0e 32       	P1 = R6;
ffa00b54:	5a 91       	P2 = [P3];
ffa00b56:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00b58:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00b5a:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00b5c:	8a 5a       	P2 = P2 + P1;
ffa00b5e:	10 9b       	B[P2] = R0;
ffa00b60:	07 30       	R0 = R7;
ffa00b62:	00 e3 6b 00 	CALL 0xffa00c38 <_div>;
ffa00b66:	00 0d       	CC = R0 <= 0x0;
ffa00b68:	38 30       	R7 = R0;
ffa00b6a:	ec 17       	IF !CC JUMP 0xffa00b42 <_printf_int+0x9e> (BP);
ffa00b6c:	ab 2f       	JUMP.S 0xffa00ac2 <_printf_int+0x1e>;
ffa00b6e:	01 e8 00 00 	UNLINK;
ffa00b72:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00b74:	b3 05       	(R7:6, P5:3) = [SP++];
ffa00b76:	10 00       	RTS;
ffa00b78:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00b7a:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa00b7c:	f8 4f       	R0 <<= 0x1f;
ffa00b7e:	f8 53       	R7 = R0 - R7;
ffa00b80:	07 0d       	CC = R7 <= 0x0;
ffa00b82:	2c 18       	IF CC JUMP 0xffa00bda <_printf_int+0x136>;
ffa00b84:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00b88:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa00b8a:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00b8e:	05 20       	JUMP.S 0xffa00b98 <_printf_int+0xf4>;
ffa00b90:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa00b94:	4c 08       	CC = P4 == P1;
ffa00b96:	1e 18       	IF CC JUMP 0xffa00bd2 <_printf_int+0x12e>;
ffa00b98:	07 30       	R0 = R7;
ffa00b9a:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00b9c:	00 e3 5c 00 	CALL 0xffa00c54 <_mod>;
ffa00ba0:	5a 91       	P2 = [P3];
ffa00ba2:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00ba4:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00ba6:	a2 5a       	P2 = P2 + P4;
ffa00ba8:	10 9b       	B[P2] = R0;
ffa00baa:	07 30       	R0 = R7;
ffa00bac:	00 e3 46 00 	CALL 0xffa00c38 <_div>;
ffa00bb0:	00 0d       	CC = R0 <= 0x0;
ffa00bb2:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00bb4:	38 30       	R7 = R0;
ffa00bb6:	ed 17       	IF !CC JUMP 0xffa00b90 <_printf_int+0xec> (BP);
ffa00bb8:	74 30       	R6 = P4;
ffa00bba:	4c 32       	P1 = P4;
ffa00bbc:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00bbe:	5a 91       	P2 = [P3];
ffa00bc0:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa00bc2:	8a 5a       	P2 = P2 + P1;
ffa00bc4:	10 9b       	B[P2] = R0;
ffa00bc6:	7e 2f       	JUMP.S 0xffa00ac2 <_printf_int+0x1e>;
ffa00bc8:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900be0 <_printf_out> */
ffa00bcc:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa00bd0:	91 2f       	JUMP.S 0xffa00af2 <_printf_int+0x4e>;
ffa00bd2:	4c 32       	P1 = P4;
ffa00bd4:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa00bd8:	f3 2f       	JUMP.S 0xffa00bbe <_printf_int+0x11a>;
ffa00bda:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00bde:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa00be0:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa00be2:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00be6:	ec 2f       	JUMP.S 0xffa00bbe <_printf_int+0x11a>;

ffa00be8 <_printf_ip>:
ffa00be8:	70 05       	[--SP] = (R7:6);
ffa00bea:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00bee:	39 30       	R7 = R1;
ffa00bf0:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa00bf4:	49 43       	R1 = R1.B (Z);
ffa00bf6:	ff e3 57 ff 	CALL 0xffa00aa4 <_printf_int>;
ffa00bfa:	06 e1 44 00 	R6.L = 0x44;		/* ( 68)	R6=0xff900044(-7339964) */
ffa00bfe:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa00c02:	49 43       	R1 = R1.B (Z);
ffa00c04:	06 30       	R0 = R6;
ffa00c06:	ff e3 4f ff 	CALL 0xffa00aa4 <_printf_int>;
ffa00c0a:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa00c0e:	49 43       	R1 = R1.B (Z);
ffa00c10:	06 30       	R0 = R6;
ffa00c12:	c7 4e       	R7 >>= 0x18;
ffa00c14:	ff e3 48 ff 	CALL 0xffa00aa4 <_printf_int>;
ffa00c18:	0f 30       	R1 = R7;
ffa00c1a:	06 30       	R0 = R6;
ffa00c1c:	ff e3 44 ff 	CALL 0xffa00aa4 <_printf_int>;
ffa00c20:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa00c24:	00 e1 10 05 	R0.L = 0x510;		/* (1296)	R0=0xff900510(-7338736) */
ffa00c28:	ff e3 7c fe 	CALL 0xffa00920 <_printf_str>;
ffa00c2c:	01 e8 00 00 	UNLINK;
ffa00c30:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00c32:	30 05       	(R7:6) = [SP++];
ffa00c34:	10 00       	RTS;
	...

ffa00c38 <_div>:
ffa00c38:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00c3c:	08 4f       	R0 <<= 0x1;
ffa00c3e:	48 42       	DIVS (R0, R1);
ffa00c40:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa00c42:	b2 e0 03 20 	LSETUP(0xffa00c46 <_div+0xe>, 0xffa00c48 <_div+0x10>) LC1 = P2;
ffa00c46:	08 42       	DIVQ (R0, R1);
ffa00c48:	00 00       	NOP;
ffa00c4a:	80 42       	R0 = R0.L (X);
ffa00c4c:	01 e8 00 00 	UNLINK;
ffa00c50:	10 00       	RTS;
	...

ffa00c54 <_mod>:
ffa00c54:	70 05       	[--SP] = (R7:6);
ffa00c56:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00c5a:	30 30       	R6 = R0;
ffa00c5c:	39 30       	R7 = R1;
ffa00c5e:	ff e3 ed ff 	CALL 0xffa00c38 <_div>;
ffa00c62:	c7 40       	R7 *= R0;
ffa00c64:	01 e8 00 00 	UNLINK;
ffa00c68:	be 53       	R6 = R6 - R7;
ffa00c6a:	06 30       	R0 = R6;
ffa00c6c:	30 05       	(R7:6) = [SP++];
ffa00c6e:	10 00       	RTS;

ffa00c70 <_memcpy_>:
ffa00c70:	02 0d       	CC = R2 <= 0x0;
ffa00c72:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00c76:	08 32       	P1 = R0;
ffa00c78:	11 32       	P2 = R1;
ffa00c7a:	08 18       	IF CC JUMP 0xffa00c8a <_memcpy_+0x1a>;
ffa00c7c:	00 00       	NOP;
ffa00c7e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00c80:	09 64       	R1 += 0x1;		/* (  1) */
ffa00c82:	48 98       	R0 = B[P1++] (X);
ffa00c84:	0a 08       	CC = R2 == R1;
ffa00c86:	10 9a       	B[P2++] = R0;
ffa00c88:	fc 17       	IF !CC JUMP 0xffa00c80 <_memcpy_+0x10> (BP);
ffa00c8a:	01 e8 00 00 	UNLINK;
ffa00c8e:	10 00       	RTS;

ffa00c90 <_memset_>:
ffa00c90:	02 0d       	CC = R2 <= 0x0;
ffa00c92:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00c96:	10 32       	P2 = R0;
ffa00c98:	06 18       	IF CC JUMP 0xffa00ca4 <_memset_+0x14>;
ffa00c9a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00c9c:	08 64       	R0 += 0x1;		/* (  1) */
ffa00c9e:	02 08       	CC = R2 == R0;
ffa00ca0:	11 9a       	B[P2++] = R1;
ffa00ca2:	fd 17       	IF !CC JUMP 0xffa00c9c <_memset_+0xc> (BP);
ffa00ca4:	01 e8 00 00 	UNLINK;
ffa00ca8:	10 00       	RTS;
	...

ffa00cac <_strlen_>:
ffa00cac:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00cb0:	10 32       	P2 = R0;
ffa00cb2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00cb4:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa00cb8:	b2 e0 06 10 	LSETUP(0xffa00cbc <_strlen_+0x10>, 0xffa00cc4 <_strlen_+0x18>) LC1 = P1;
ffa00cbc:	50 99       	R0 = B[P2] (X);
ffa00cbe:	00 0c       	CC = R0 == 0x0;
ffa00cc0:	04 18       	IF CC JUMP 0xffa00cc8 <_strlen_+0x1c>;
ffa00cc2:	09 64       	R1 += 0x1;		/* (  1) */
ffa00cc4:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00cc6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00cc8:	01 30       	R0 = R1;
ffa00cca:	01 e8 00 00 	UNLINK;
ffa00cce:	10 00       	RTS;

ffa00cd0 <_strcpy_>:
ffa00cd0:	12 32       	P2 = R2;
ffa00cd2:	c5 04       	[--SP] = (P5:5);
ffa00cd4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00cd8:	29 32       	P5 = R1;
ffa00cda:	00 32       	P0 = R0;
ffa00cdc:	51 99       	R1 = B[P2] (X);
ffa00cde:	08 43       	R0 = R1.B (X);
ffa00ce0:	00 0c       	CC = R0 == 0x0;
ffa00ce2:	17 18       	IF CC JUMP 0xffa00d10 <_strcpy_+0x40>;
ffa00ce4:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00ce6:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00ce8:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa00cec:	b2 e0 09 10 	LSETUP(0xffa00cf0 <_strcpy_+0x20>, 0xffa00cfe <_strcpy_+0x2e>) LC1 = P1;
ffa00cf0:	01 9a       	B[P0++] = R1;
ffa00cf2:	51 99       	R1 = B[P2] (X);
ffa00cf4:	08 43       	R0 = R1.B (X);
ffa00cf6:	00 0c       	CC = R0 == 0x0;
ffa00cf8:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00cfa:	03 18       	IF CC JUMP 0xffa00d00 <_strcpy_+0x30>;
ffa00cfc:	00 00       	NOP;
ffa00cfe:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00d00:	01 e8 00 00 	UNLINK;
ffa00d04:	28 91       	R0 = [P5];
ffa00d06:	10 50       	R0 = R0 + R2;
ffa00d08:	28 93       	[P5] = R0;
ffa00d0a:	40 30       	R0 = P0;
ffa00d0c:	85 04       	(P5:5) = [SP++];
ffa00d0e:	10 00       	RTS;
ffa00d10:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00d12:	f7 2f       	JUMP.S 0xffa00d00 <_strcpy_+0x30>;

ffa00d14 <_strprepend>:
ffa00d14:	fc 05       	[--SP] = (R7:7, P5:4);
ffa00d16:	21 32       	P4 = R1;
ffa00d18:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00d1c:	38 30       	R7 = R0;
ffa00d1e:	02 30       	R0 = R2;
ffa00d20:	2a 32       	P5 = R2;
ffa00d22:	ff e3 c5 ff 	CALL 0xffa00cac <_strlen_>;
ffa00d26:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa00d2a:	20 91 00 00 
ffa00d2e:	02 0d       	CC = R2 <= 0x0;
ffa00d30:	0a 18       	IF CC JUMP 0xffa00d44 <_strprepend+0x30>;
ffa00d32:	07 52       	R0 = R7 - R0;
ffa00d34:	10 32       	P2 = R0;
ffa00d36:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00d38:	09 64       	R1 += 0x1;		/* (  1) */
ffa00d3a:	68 98       	R0 = B[P5++] (X);
ffa00d3c:	0a 08       	CC = R2 == R1;
ffa00d3e:	10 9a       	B[P2++] = R0;
ffa00d40:	fc 17       	IF !CC JUMP 0xffa00d38 <_strprepend+0x24> (BP);
ffa00d42:	20 91       	R0 = [P4];
ffa00d44:	01 e8 00 00 	UNLINK;
ffa00d48:	07 52       	R0 = R7 - R0;
ffa00d4a:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00d4c:	10 00       	RTS;
	...

ffa00d50 <_strcmp>:
ffa00d50:	10 32       	P2 = R0;
ffa00d52:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00d56:	01 32       	P0 = R1;
ffa00d58:	51 99       	R1 = B[P2] (X);
ffa00d5a:	01 0c       	CC = R1 == 0x0;
ffa00d5c:	1b 18       	IF CC JUMP 0xffa00d92 <_strcmp+0x42>;
ffa00d5e:	00 00       	NOP;
ffa00d60:	00 00       	NOP;
ffa00d62:	00 00       	NOP;
ffa00d64:	40 99       	R0 = B[P0] (X);
ffa00d66:	00 0c       	CC = R0 == 0x0;
ffa00d68:	15 18       	IF CC JUMP 0xffa00d92 <_strcmp+0x42>;
ffa00d6a:	01 08       	CC = R1 == R0;
ffa00d6c:	1c 10       	IF !CC JUMP 0xffa00da4 <_strcmp+0x54>;
ffa00d6e:	4a 32       	P1 = P2;
ffa00d70:	50 32       	P2 = P0;
ffa00d72:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00d74:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00d76:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa00d7a:	49 99       	R1 = B[P1] (X);
ffa00d7c:	01 0c       	CC = R1 == 0x0;
ffa00d7e:	0a 18       	IF CC JUMP 0xffa00d92 <_strcmp+0x42>;
ffa00d80:	00 00       	NOP;
ffa00d82:	00 00       	NOP;
ffa00d84:	00 00       	NOP;
ffa00d86:	50 99       	R0 = B[P2] (X);
ffa00d88:	00 0c       	CC = R0 == 0x0;
ffa00d8a:	04 18       	IF CC JUMP 0xffa00d92 <_strcmp+0x42>;
ffa00d8c:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa00d8e:	40 0c       	CC = P0 == 0x0;
ffa00d90:	05 10       	IF !CC JUMP 0xffa00d9a <_strcmp+0x4a>;
ffa00d92:	01 e8 00 00 	UNLINK;
ffa00d96:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00d98:	10 00       	RTS;
ffa00d9a:	01 08       	CC = R1 == R0;
ffa00d9c:	04 10       	IF !CC JUMP 0xffa00da4 <_strcmp+0x54>;
ffa00d9e:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00da0:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00da2:	ec 2f       	JUMP.S 0xffa00d7a <_strcmp+0x2a>;
ffa00da4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00da6:	01 e8 00 00 	UNLINK;
ffa00daa:	10 00       	RTS;

ffa00dac <_substr>:
ffa00dac:	f4 05       	[--SP] = (R7:6, P5:4);
ffa00dae:	20 32       	P4 = R0;
ffa00db0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00db4:	11 32       	P2 = R1;
ffa00db6:	32 30       	R6 = R2;
ffa00db8:	61 99       	R1 = B[P4] (X);
ffa00dba:	01 0c       	CC = R1 == 0x0;
ffa00dbc:	14 18       	IF CC JUMP 0xffa00de4 <_substr+0x38>;
ffa00dbe:	00 00       	NOP;
ffa00dc0:	00 00       	NOP;
ffa00dc2:	00 00       	NOP;
ffa00dc4:	50 99       	R0 = B[P2] (X);
ffa00dc6:	00 0c       	CC = R0 == 0x0;
ffa00dc8:	0e 18       	IF CC JUMP 0xffa00de4 <_substr+0x38>;
ffa00dca:	02 0d       	CC = R2 <= 0x0;
ffa00dcc:	0c 18       	IF CC JUMP 0xffa00de4 <_substr+0x38>;
ffa00dce:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00dd0:	01 08       	CC = R1 == R0;
ffa00dd2:	0f 18       	IF CC JUMP 0xffa00df0 <_substr+0x44>;
ffa00dd4:	00 00       	NOP;
ffa00dd6:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00dd8:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00dda:	50 99       	R0 = B[P2] (X);
ffa00ddc:	00 0c       	CC = R0 == 0x0;
ffa00dde:	03 18       	IF CC JUMP 0xffa00de4 <_substr+0x38>;
ffa00de0:	1e 09       	CC = R6 <= R3;
ffa00de2:	f7 17       	IF !CC JUMP 0xffa00dd0 <_substr+0x24> (BP);
ffa00de4:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa00de6:	01 e8 00 00 	UNLINK;
ffa00dea:	40 30       	R0 = P0;
ffa00dec:	b4 05       	(R7:6, P5:4) = [SP++];
ffa00dee:	10 00       	RTS;
ffa00df0:	52 30       	R2 = P2;
ffa00df2:	3b 30       	R7 = R3;
ffa00df4:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00df6:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00df8:	12 32       	P2 = R2;
ffa00dfa:	07 32       	P0 = R7;
ffa00dfc:	4c 32       	P1 = P4;
ffa00dfe:	6c 32       	P5 = P4;
ffa00e00:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00e02:	15 6c       	P5 += 0x2;		/* (  2) */
ffa00e04:	02 20       	JUMP.S 0xffa00e08 <_substr+0x5c>;
ffa00e06:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00e08:	4b 99       	R3 = B[P1] (X);
ffa00e0a:	50 99       	R0 = B[P2] (X);
ffa00e0c:	03 08       	CC = R3 == R0;
ffa00e0e:	0e 10       	IF !CC JUMP 0xffa00e2a <_substr+0x7e>;
ffa00e10:	03 0c       	CC = R3 == 0x0;
ffa00e12:	0c 18       	IF CC JUMP 0xffa00e2a <_substr+0x7e>;
ffa00e14:	00 00       	NOP;
ffa00e16:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00e18:	08 6c       	P0 += 0x1;		/* (  1) */
ffa00e1a:	68 98       	R0 = B[P5++] (X);
ffa00e1c:	00 0c       	CC = R0 == 0x0;
ffa00e1e:	f4 17       	IF !CC JUMP 0xffa00e06 <_substr+0x5a> (BP);
ffa00e20:	01 e8 00 00 	UNLINK;
ffa00e24:	40 30       	R0 = P0;
ffa00e26:	b4 05       	(R7:6, P5:4) = [SP++];
ffa00e28:	10 00       	RTS;
ffa00e2a:	12 32       	P2 = R2;
ffa00e2c:	1f 30       	R3 = R7;
ffa00e2e:	d6 2f       	JUMP.S 0xffa00dda <_substr+0x2e>;

ffa00e30 <_sprintf_int>:
ffa00e30:	fb 05       	[--SP] = (R7:7, P5:3);
ffa00e32:	01 0c       	CC = R1 == 0x0;
ffa00e34:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00e38:	00 34       	I0 = R0;
ffa00e3a:	11 30       	R2 = R1;
ffa00e3c:	1a 14       	IF !CC JUMP 0xffa00e70 <_sprintf_int+0x40> (BP);
ffa00e3e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00e42:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00e46:	5a 91       	P2 = [P3];
ffa00e48:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00e4a:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa00e4c:	10 9b       	B[P2] = R0;
ffa00e4e:	88 32       	P1 = I0;
ffa00e50:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00e52:	0b 52       	R0 = R3 - R1;
ffa00e54:	00 32       	P0 = R0;
ffa00e56:	5a 91       	P2 = [P3];
ffa00e58:	09 64       	R1 += 0x1;		/* (  1) */
ffa00e5a:	99 08       	CC = R1 < R3;
ffa00e5c:	82 5a       	P2 = P2 + P0;
ffa00e5e:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa00e62:	08 9a       	B[P1++] = R0;
ffa00e64:	f7 1f       	IF CC JUMP 0xffa00e52 <_sprintf_int+0x22> (BP);
ffa00e66:	01 e8 00 00 	UNLINK;
ffa00e6a:	03 30       	R0 = R3;
ffa00e6c:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00e6e:	10 00       	RTS;
ffa00e70:	01 0d       	CC = R1 <= 0x0;
ffa00e72:	2d 18       	IF CC JUMP 0xffa00ecc <_sprintf_int+0x9c>;
ffa00e74:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00e78:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa00e7c:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00e7e:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00e82:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa00e86:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa00e88:	b2 e0 20 50 	LSETUP(0xffa00e8c <_sprintf_int+0x5c>, 0xffa00ec8 <_sprintf_int+0x98>) LC1 = P5;
ffa00e8c:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa00e90:	59 91 00 00 
ffa00e94:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00e98:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa00e9c:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa00ea0:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa00ea4:	0b c4 00 00 	R0 = (A0 += A1);
ffa00ea8:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa00eac:	10 4d       	R0 >>>= 0x2;
ffa00eae:	08 52       	R0 = R0 - R1;
ffa00eb0:	00 32       	P0 = R0;
ffa00eb2:	13 32       	P2 = R3;
ffa00eb4:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00eb6:	40 0d       	CC = P0 <= 0x0;
ffa00eb8:	51 5a       	P1 = P1 + P2;
ffa00eba:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa00ebc:	92 5a       	P2 = P2 << 0x1;
ffa00ebe:	4a 30       	R1 = P2;
ffa00ec0:	0a 52       	R0 = R2 - R1;
ffa00ec2:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00ec4:	08 9b       	B[P1] = R0;
ffa00ec6:	39 18       	IF CC JUMP 0xffa00f38 <_sprintf_int+0x108>;
ffa00ec8:	50 30       	R2 = P0;
ffa00eca:	c2 2f       	JUMP.S 0xffa00e4e <_sprintf_int+0x1e>;
ffa00ecc:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00ece:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa00ed0:	f8 4f       	R0 <<= 0x1f;
ffa00ed2:	90 52       	R2 = R0 - R2;
ffa00ed4:	02 0d       	CC = R2 <= 0x0;
ffa00ed6:	3c 18       	IF CC JUMP 0xffa00f4e <_sprintf_int+0x11e>;
ffa00ed8:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00edc:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa00ee0:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa00ee2:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00ee6:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa00eea:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa00eec:	b2 e0 1f 50 	LSETUP(0xffa00ef0 <_sprintf_int+0xc0>, 0xffa00f2a <_sprintf_int+0xfa>) LC1 = P5;
ffa00ef0:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa00ef4:	59 91 00 00 
ffa00ef8:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00efc:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa00f00:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa00f04:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa00f08:	0b c4 00 00 	R0 = (A0 += A1);
ffa00f0c:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa00f10:	10 4d       	R0 >>>= 0x2;
ffa00f12:	08 52       	R0 = R0 - R1;
ffa00f14:	00 32       	P0 = R0;
ffa00f16:	61 5a       	P1 = P1 + P4;
ffa00f18:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00f1a:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa00f1c:	92 5a       	P2 = P2 << 0x1;
ffa00f1e:	4a 30       	R1 = P2;
ffa00f20:	0a 52       	R0 = R2 - R1;
ffa00f22:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00f24:	40 0d       	CC = P0 <= 0x0;
ffa00f26:	08 9b       	B[P1] = R0;
ffa00f28:	0f 18       	IF CC JUMP 0xffa00f46 <_sprintf_int+0x116>;
ffa00f2a:	50 30       	R2 = P0;
ffa00f2c:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa00f2e:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa00f30:	5a 91       	P2 = [P3];
ffa00f32:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa00f34:	8a 5a       	P2 = P2 + P1;
ffa00f36:	10 9b       	B[P2] = R0;
ffa00f38:	03 0d       	CC = R3 <= 0x0;
ffa00f3a:	8a 17       	IF !CC JUMP 0xffa00e4e <_sprintf_int+0x1e> (BP);
ffa00f3c:	01 e8 00 00 	UNLINK;
ffa00f40:	03 30       	R0 = R3;
ffa00f42:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00f44:	10 00       	RTS;
ffa00f46:	5c 30       	R3 = P4;
ffa00f48:	4c 32       	P1 = P4;
ffa00f4a:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00f4c:	f2 2f       	JUMP.S 0xffa00f30 <_sprintf_int+0x100>;
ffa00f4e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00f52:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa00f54:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa00f56:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00f5a:	eb 2f       	JUMP.S 0xffa00f30 <_sprintf_int+0x100>;

ffa00f5c <_sprintf_hex>:
ffa00f5c:	10 32       	P2 = R0;
ffa00f5e:	78 05       	[--SP] = (R7:7);
ffa00f60:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00f62:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00f66:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa00f68:	10 9b       	B[P2] = R0;
ffa00f6a:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00f6e:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa00f72:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa00f74:	12 6c       	P2 += 0x2;		/* (  2) */
ffa00f76:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa00f78:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa00f7a:	b2 e0 09 10 	LSETUP(0xffa00f7e <_sprintf_hex+0x22>, 0xffa00f8c <_sprintf_hex+0x30>) LC1 = P1;
ffa00f7e:	01 30       	R0 = R1;
ffa00f80:	10 40       	R0 >>>= R2;
ffa00f82:	18 54       	R0 = R0 & R3;
ffa00f84:	38 09       	CC = R0 <= R7;
ffa00f86:	09 1c       	IF CC JUMP 0xffa00f98 <_sprintf_hex+0x3c> (BP);
ffa00f88:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00f8a:	10 9a       	B[P2++] = R0;
ffa00f8c:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa00f8e:	01 e8 00 00 	UNLINK;
ffa00f92:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00f94:	38 05       	(R7:7) = [SP++];
ffa00f96:	10 00       	RTS;
ffa00f98:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00f9a:	f8 2f       	JUMP.S 0xffa00f8a <_sprintf_hex+0x2e>;

ffa00f9c <_strprintf_int>:
ffa00f9c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00f9e:	29 32       	P5 = R1;
ffa00fa0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00fa4:	0a 30       	R1 = R2;
ffa00fa6:	38 30       	R7 = R0;
ffa00fa8:	ff e3 44 ff 	CALL 0xffa00e30 <_sprintf_int>;
ffa00fac:	29 91       	R1 = [P5];
ffa00fae:	41 50       	R1 = R1 + R0;
ffa00fb0:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa00fb4:	29 93 00 00 
ffa00fb8:	01 e8 00 00 	UNLINK;
ffa00fbc:	07 30       	R0 = R7;
ffa00fbe:	bd 05       	(R7:7, P5:5) = [SP++];
ffa00fc0:	10 00       	RTS;
	...

ffa00fc4 <_strprintf_hex>:
ffa00fc4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00fc6:	29 32       	P5 = R1;
ffa00fc8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00fcc:	0a 30       	R1 = R2;
ffa00fce:	38 30       	R7 = R0;
ffa00fd0:	ff e3 c6 ff 	CALL 0xffa00f5c <_sprintf_hex>;
ffa00fd4:	29 91       	R1 = [P5];
ffa00fd6:	41 50       	R1 = R1 + R0;
ffa00fd8:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa00fdc:	29 93 00 00 
ffa00fe0:	01 e8 00 00 	UNLINK;
ffa00fe4:	07 30       	R0 = R7;
ffa00fe6:	bd 05       	(R7:7, P5:5) = [SP++];
ffa00fe8:	10 00       	RTS;
	...

ffa00fec <_atoi>:
ffa00fec:	08 32       	P1 = R0;
ffa00fee:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa00ff0:	f5 05       	[--SP] = (R7:6, P5:5);
ffa00ff2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00ff6:	48 99       	R0 = B[P1] (X);
ffa00ff8:	10 08       	CC = R0 == R2;
ffa00ffa:	25 18       	IF CC JUMP 0xffa01044 <_atoi+0x58>;
ffa00ffc:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00ffe:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa01000:	41 32       	P0 = P1;
ffa01002:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01004:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa01006:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa01008:	12 20       	JUMP.S 0xffa0102c <_atoi+0x40>;
ffa0100a:	8b 08       	CC = R3 < R1;
ffa0100c:	16 10       	IF !CC JUMP 0xffa01038 <_atoi+0x4c>;
ffa0100e:	10 43       	R0 = R2.B (X);
ffa01010:	28 32       	P5 = R0;
ffa01012:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa01014:	40 99       	R0 = B[P0] (X);
ffa01016:	80 66       	R0 += -0x30;		/* (-48) */
ffa01018:	40 43       	R0 = R0.B (Z);
ffa0101a:	aa 5a       	P2 = P2 + P5;
ffa0101c:	10 0a       	CC = R0 <= R2 (IU);
ffa0101e:	82 6e       	P2 += -0x30;		/* (-48) */
ffa01020:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01022:	03 14       	IF !CC JUMP 0xffa01028 <_atoi+0x3c> (BP);
ffa01024:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa01026:	92 5a       	P2 = P2 << 0x1;
ffa01028:	0b 64       	R3 += 0x1;		/* (  1) */
ffa0102a:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0102c:	4a 99       	R2 = B[P1] (X);
ffa0102e:	02 30       	R0 = R2;
ffa01030:	80 66       	R0 += -0x30;		/* (-48) */
ffa01032:	40 43       	R0 = R0.B (Z);
ffa01034:	30 0a       	CC = R0 <= R6 (IU);
ffa01036:	ea 1f       	IF CC JUMP 0xffa0100a <_atoi+0x1e> (BP);
ffa01038:	42 30       	R0 = P2;
ffa0103a:	f8 40       	R0 *= R7;
ffa0103c:	01 e8 00 00 	UNLINK;
ffa01040:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01042:	10 00       	RTS;
ffa01044:	09 6c       	P1 += 0x1;		/* (  1) */
ffa01046:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01048:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa0104a:	db 2f       	JUMP.S 0xffa01000 <_atoi+0x14>;

ffa0104c <_udelay>:
ffa0104c:	00 0d       	CC = R0 <= 0x0;
ffa0104e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01052:	0b 18       	IF CC JUMP 0xffa01068 <_udelay+0x1c>;
ffa01054:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01056:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa0105a:	b2 e0 03 20 	LSETUP(0xffa0105e <_udelay+0x12>, 0xffa01060 <_udelay+0x14>) LC1 = P2;
ffa0105e:	00 00       	NOP;
ffa01060:	00 00       	NOP;
ffa01062:	09 64       	R1 += 0x1;		/* (  1) */
ffa01064:	08 08       	CC = R0 == R1;
ffa01066:	f8 17       	IF !CC JUMP 0xffa01056 <_udelay+0xa> (BP);
ffa01068:	01 e8 00 00 	UNLINK;
ffa0106c:	10 00       	RTS;
	...

ffa01070 <_spi_delay>:
ffa01070:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa01074:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01078:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0107c:	00 00       	NOP;
ffa0107e:	50 95       	R0 = W[P2] (X);
ffa01080:	c0 42       	R0 = R0.L (Z);
ffa01082:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01084:	fc 17       	IF !CC JUMP 0xffa0107c <_spi_delay+0xc> (BP);
ffa01086:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01088:	0a 10       	IF !CC JUMP 0xffa0109c <_spi_delay+0x2c>;
ffa0108a:	00 00       	NOP;
ffa0108c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa01090:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa01094:	00 00       	NOP;
ffa01096:	50 95       	R0 = W[P2] (X);
ffa01098:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0109a:	fd 1f       	IF CC JUMP 0xffa01094 <_spi_delay+0x24> (BP);
ffa0109c:	01 e8 00 00 	UNLINK;
ffa010a0:	10 00       	RTS;
	...

ffa010a4 <_spi_write_register>:
ffa010a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa010a8:	ed 05       	[--SP] = (R7:5, P5:5);
ffa010aa:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa010ae:	25 e1 00 02 	R5 = 0x200 (X);		/*		R5=0x200(512) */
ffa010b2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa010b6:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || W[P2] = R5 || NOP;
ffa010ba:	15 97 00 00 
ffa010be:	24 00       	SSYNC;
ffa010c0:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0000b(-4194293) */
ffa010c4:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa010c6:	40 43       	R0 = R0.B (Z);
ffa010c8:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa010cc:	28 97       	W[P5] = R0;
ffa010ce:	ff e3 d1 ff 	CALL 0xffa01070 <_spi_delay>;
ffa010d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa010d6:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa010da:	76 43       	R6 = R6.B (Z);
ffa010dc:	57 95       	R7 = W[P2] (X);
ffa010de:	2e 97       	W[P5] = R6;
ffa010e0:	ff e3 c8 ff 	CALL 0xffa01070 <_spi_delay>;
ffa010e4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa010e8:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa010ec:	15 97       	W[P2] = R5;
ffa010ee:	24 00       	SSYNC;
ffa010f0:	7f 43       	R7 = R7.B (Z);
ffa010f2:	01 e8 00 00 	UNLINK;
ffa010f6:	07 30       	R0 = R7;
ffa010f8:	ad 05       	(R7:5, P5:5) = [SP++];
ffa010fa:	10 00       	RTS;

ffa010fc <_spi_read_register>:
ffa010fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01100:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01102:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01106:	27 e1 00 02 	R7 = 0x200 (X);		/*		R7=0x200(512) */
ffa0110a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0110e:	17 97       	W[P2] = R7;
ffa01110:	24 00       	SSYNC;
ffa01112:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00000(-4194304) */
ffa01116:	40 43       	R0 = R0.B (Z);
ffa01118:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa0111c:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa01120:	20 97       	W[P4] = R0;
ffa01122:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa01126:	ff e3 a5 ff 	CALL 0xffa01070 <_spi_delay>;
ffa0112a:	68 95       	R0 = W[P5] (X);
ffa0112c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0112e:	20 97       	W[P4] = R0;
ffa01130:	ff e3 a0 ff 	CALL 0xffa01070 <_spi_delay>;
ffa01134:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01138:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0113c:	68 95       	R0 = W[P5] (X);
ffa0113e:	17 97       	W[P2] = R7;
ffa01140:	24 00       	SSYNC;
ffa01142:	01 e8 00 00 	UNLINK;
ffa01146:	40 43       	R0 = R0.B (Z);
ffa01148:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0114a:	10 00       	RTS;

ffa0114c <_spi_read_register_status>:
ffa0114c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01150:	f3 05       	[--SP] = (R7:6, P5:3);
ffa01152:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01156:	26 e1 00 02 	R6 = 0x200 (X);		/*		R6=0x200(512) */
ffa0115a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0115e:	19 32       	P3 = R1;
ffa01160:	16 97       	W[P2] = R6;
ffa01162:	24 00       	SSYNC;
ffa01164:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc0050c(-4193012) */
ffa01168:	40 43       	R0 = R0.B (Z);
ffa0116a:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa0116e:	20 97       	W[P4] = R0;
ffa01170:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa01174:	ff e3 7e ff 	CALL 0xffa01070 <_spi_delay>;
ffa01178:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa0117c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0117e:	6f 95       	R7 = W[P5] (X);
ffa01180:	20 97       	W[P4] = R0;
ffa01182:	ff e3 77 ff 	CALL 0xffa01070 <_spi_delay>;
ffa01186:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0118a:	68 95       	R0 = W[P5] (X);
ffa0118c:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01190:	18 9b       	B[P3] = R0;
ffa01192:	16 97       	W[P2] = R6;
ffa01194:	24 00       	SSYNC;
ffa01196:	7f 43       	R7 = R7.B (Z);
ffa01198:	01 e8 00 00 	UNLINK;
ffa0119c:	07 30       	R0 = R7;
ffa0119e:	b3 05       	(R7:6, P5:3) = [SP++];
ffa011a0:	10 00       	RTS;
	...

ffa011a4 <_spi_write_byte>:
ffa011a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa011a8:	78 05       	[--SP] = (R7:7);
ffa011aa:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa011ae:	27 e1 00 02 	R7 = 0x200 (X);		/*		R7=0x200(512) */
ffa011b2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa011b6:	17 97       	W[P2] = R7;
ffa011b8:	24 00       	SSYNC;
ffa011ba:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa011be:	40 43       	R0 = R0.B (Z);
ffa011c0:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa011c4:	10 97       	W[P2] = R0;
ffa011c6:	ff e3 55 ff 	CALL 0xffa01070 <_spi_delay>;
ffa011ca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa011ce:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa011d2:	50 95       	R0 = W[P2] (X);
ffa011d4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa011d8:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa011dc:	17 97       	W[P2] = R7;
ffa011de:	24 00       	SSYNC;
ffa011e0:	01 e8 00 00 	UNLINK;
ffa011e4:	40 43       	R0 = R0.B (Z);
ffa011e6:	38 05       	(R7:7) = [SP++];
ffa011e8:	10 00       	RTS;
	...

ffa011ec <_spi_write_packet>:
ffa011ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa011f0:	fd 05       	[--SP] = (R7:7, P5:5);
ffa011f2:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa011f6:	38 30       	R7 = R0;
ffa011f8:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa011fc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01200:	10 97       	W[P2] = R0;
ffa01202:	24 00       	SSYNC;
ffa01204:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01208:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa0120c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa01210:	10 97       	W[P2] = R0;
ffa01212:	ff e3 2f ff 	CALL 0xffa01070 <_spi_delay>;
ffa01216:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa0121a:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa0121e:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa01222:	10 97       	W[P2] = R0;
ffa01224:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa01228:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa0122a:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa0122e:	10 97       	W[P2] = R0;
ffa01230:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01232:	22 6c       	P2 += 0x4;		/* (  4) */
ffa01234:	10 97       	W[P2] = R0;
ffa01236:	82 6f       	P2 += -0x10;		/* (-16) */
ffa01238:	17 93       	[P2] = R7;
ffa0123a:	24 00       	SSYNC;
ffa0123c:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa01240:	22 6c       	P2 += 0x4;		/* (  4) */
ffa01242:	10 97       	W[P2] = R0;
ffa01244:	01 20       	JUMP.S 0xffa01246 <_spi_write_packet+0x5a>;
	...
ffa0124e:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa01252:	0d e1 68 0d 	P5.L = 0xd68;		/* (3432)	P5=0xffc00d68(-4190872) */
ffa01256:	68 95       	R0 = W[P5] (X);
ffa01258:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa0125a:	f6 1f       	IF CC JUMP 0xffa01246 <_spi_write_packet+0x5a> (BP);
ffa0125c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa01260:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa01264:	50 95       	R0 = W[P2] (X);
ffa01266:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01268:	ef 17       	IF !CC JUMP 0xffa01246 <_spi_write_packet+0x5a> (BP);
ffa0126a:	69 95       	R1 = W[P5] (X);
ffa0126c:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa0126e:	08 54       	R0 = R0 & R1;
ffa01270:	00 0c       	CC = R0 == 0x0;
ffa01272:	ea 17       	IF !CC JUMP 0xffa01246 <_spi_write_packet+0x5a> (BP);
ffa01274:	ff e3 fe fe 	CALL 0xffa01070 <_spi_delay>;
ffa01278:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0127a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa0127e:	28 97       	W[P5] = R0;
ffa01280:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa01284:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa01288:	10 97       	W[P2] = R0;
ffa0128a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0128e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01290:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa01294:	10 97       	W[P2] = R0;
ffa01296:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa0129a:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0129e:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa012a2:	10 97       	W[P2] = R0;
ffa012a4:	24 00       	SSYNC;
ffa012a6:	01 e8 00 00 	UNLINK;
ffa012aa:	bd 05       	(R7:7, P5:5) = [SP++];
ffa012ac:	10 00       	RTS;
	...

ffa012b0 <_spi_write_packet_noDMA>:
ffa012b0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa012b4:	fc 05       	[--SP] = (R7:7, P5:4);
ffa012b6:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa012ba:	38 30       	R7 = R0;
ffa012bc:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa012c0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa012c4:	10 97       	W[P2] = R0;
ffa012c6:	24 00       	SSYNC;
ffa012c8:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00d68(-4190872) */
ffa012cc:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa012d0:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa012d4:	28 97       	W[P5] = R0;
ffa012d6:	27 32       	P4 = R7;
ffa012d8:	ff e3 cc fe 	CALL 0xffa01070 <_spi_delay>;
ffa012dc:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa012de:	0f 64       	R7 += 0x1;		/* (  1) */
ffa012e0:	60 98       	R0 = B[P4++] (X);
ffa012e2:	28 97       	W[P5] = R0;
ffa012e4:	ff e3 c6 fe 	CALL 0xffa01070 <_spi_delay>;
ffa012e8:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa012ea:	07 08       	CC = R7 == R0;
ffa012ec:	f9 17       	IF !CC JUMP 0xffa012de <_spi_write_packet_noDMA+0x2e> (BP);
ffa012ee:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa012f2:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa012f6:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa012fa:	10 97       	W[P2] = R0;
ffa012fc:	24 00       	SSYNC;
ffa012fe:	01 e8 00 00 	UNLINK;
ffa01302:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01304:	10 00       	RTS;
	...

ffa01308 <_spi_read_packet>:
ffa01308:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0130a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0130e:	20 32       	P4 = R0;
ffa01310:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01314:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01316:	ff e3 c7 fe 	CALL 0xffa010a4 <_spi_write_register>;
ffa0131a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0131e:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01322:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01326:	10 97       	W[P2] = R0;
ffa01328:	24 00       	SSYNC;
ffa0132a:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa0132e:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa01332:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa01336:	28 97       	W[P5] = R0;
ffa01338:	5d 32       	P3 = P5;
ffa0133a:	ff e3 9b fe 	CALL 0xffa01070 <_spi_delay>;
ffa0133e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01340:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01342:	65 6c       	P5 += 0xc;		/* ( 12) */
ffa01344:	1e 97       	W[P3] = R6;
ffa01346:	ff e3 95 fe 	CALL 0xffa01070 <_spi_delay>;
ffa0134a:	0f 64       	R7 += 0x1;		/* (  1) */
ffa0134c:	68 95       	R0 = W[P5] (X);
ffa0134e:	20 9a       	B[P4++] = R0;
ffa01350:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa01352:	78 43       	R0 = R7.B (Z);
ffa01354:	08 08       	CC = R0 == R1;
ffa01356:	f7 17       	IF !CC JUMP 0xffa01344 <_spi_read_packet+0x3c> (BP);
ffa01358:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0135c:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01360:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01364:	10 97       	W[P2] = R0;
ffa01366:	24 00       	SSYNC;
ffa01368:	01 e8 00 00 	UNLINK;
ffa0136c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0136e:	b3 05       	(R7:6, P5:3) = [SP++];
ffa01370:	10 00       	RTS;
	...

ffa01374 <_spi_read_packet_nocheck>:
ffa01374:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01378:	78 05       	[--SP] = (R7:7);
ffa0137a:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0137e:	38 30       	R7 = R0;
ffa01380:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01384:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01388:	10 97       	W[P2] = R0;
ffa0138a:	24 00       	SSYNC;
ffa0138c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01390:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa01394:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa01398:	10 97       	W[P2] = R0;
ffa0139a:	ff e3 6b fe 	CALL 0xffa01070 <_spi_delay>;
ffa0139e:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00008(-4194296) */
ffa013a2:	09 e1 00 05 	P1.L = 0x500;		/* (1280)	P1=0xffc00500(-4193024) */
ffa013a6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa013a8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa013ac:	08 97       	W[P1] = R0;
ffa013ae:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa013b2:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa013b4:	10 97       	W[P2] = R0;
ffa013b6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa013b8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa013ba:	10 97       	W[P2] = R0;
ffa013bc:	82 6f       	P2 += -0x10;		/* (-16) */
ffa013be:	17 93       	[P2] = R7;
ffa013c0:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa013c4:	22 6c       	P2 += 0x4;		/* (  4) */
ffa013c6:	10 97       	W[P2] = R0;
ffa013c8:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa013cc:	08 97       	W[P1] = R0;
	...
ffa013d6:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00500(-4193024) */
ffa013da:	09 e1 68 0d 	P1.L = 0xd68;		/* (3432)	P1=0xffc00d68(-4190872) */
ffa013de:	48 95       	R0 = W[P1] (X);
ffa013e0:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa013e2:	f6 1f       	IF CC JUMP 0xffa013ce <_spi_read_packet_nocheck+0x5a> (BP);
ffa013e4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa013e8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa013ea:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa013ee:	10 97       	W[P2] = R0;
ffa013f0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa013f2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa013f6:	08 97       	W[P1] = R0;
ffa013f8:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa013fc:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa01400:	10 97       	W[P2] = R0;
ffa01402:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa01406:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0140a:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0140e:	10 97       	W[P2] = R0;
ffa01410:	24 00       	SSYNC;
ffa01412:	01 e8 00 00 	UNLINK;
ffa01416:	38 05       	(R7:7) = [SP++];
ffa01418:	10 00       	RTS;
	...

ffa0141c <_radio_set_rx>:
ffa0141c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01420:	78 05       	[--SP] = (R7:7);
ffa01422:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01426:	27 e1 00 04 	R7 = 0x400 (X);		/*		R7=0x400(1024) */
ffa0142a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0142e:	17 97       	W[P2] = R7;
ffa01430:	24 00       	SSYNC;
ffa01432:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01434:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01436:	ff e3 37 fe 	CALL 0xffa010a4 <_spi_write_register>;
ffa0143a:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa0143e:	ff e3 b3 fe 	CALL 0xffa011a4 <_spi_write_byte>;
ffa01442:	99 60       	R1 = 0x13 (X);		/*		R1=0x13( 19) */
ffa01444:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01446:	ff e3 2f fe 	CALL 0xffa010a4 <_spi_write_register>;
ffa0144a:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0144e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01450:	ff e3 2a fe 	CALL 0xffa010a4 <_spi_write_register>;
ffa01454:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01458:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0145a:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa0145e:	10 97       	W[P2] = R0;
ffa01460:	24 00       	SSYNC;
ffa01462:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa01466:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0146a:	17 97       	W[P2] = R7;
ffa0146c:	24 00       	SSYNC;
ffa0146e:	01 e8 00 00 	UNLINK;
ffa01472:	38 05       	(R7:7) = [SP++];
ffa01474:	10 00       	RTS;
	...

ffa01478 <_radio_set_tx>:
ffa01478:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0147c:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa01480:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01484:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01488:	10 97       	W[P2] = R0;
ffa0148a:	24 00       	SSYNC;
ffa0148c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0148e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01490:	ff e3 0a fe 	CALL 0xffa010a4 <_spi_write_register>;
ffa01494:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa01498:	ff e3 86 fe 	CALL 0xffa011a4 <_spi_write_byte>;
ffa0149c:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa014a0:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa014a2:	ff e3 01 fe 	CALL 0xffa010a4 <_spi_write_register>;
ffa014a6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa014a8:	f1 60       	R1 = 0x1e (X);		/*		R1=0x1e( 30) */
ffa014aa:	ff e3 fd fd 	CALL 0xffa010a4 <_spi_write_register>;
ffa014ae:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa014b2:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa014b4:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa014b8:	10 97       	W[P2] = R0;
ffa014ba:	01 e8 00 00 	UNLINK;
ffa014be:	10 00       	RTS;

ffa014c0 <_radio_wait_irq>:
ffa014c0:	78 05       	[--SP] = (R7:7);
ffa014c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa014c6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa014ca:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa014ce:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (X) || NOP;
ffa014d2:	50 95 00 00 
ffa014d6:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa014d8:	25 18       	IF CC JUMP 0xffa01522 <_radio_wait_irq+0x62>;
ffa014da:	01 0d       	CC = R1 <= 0x0;
ffa014dc:	25 18       	IF CC JUMP 0xffa01526 <_radio_wait_irq+0x66>;
ffa014de:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa014e0:	04 20       	JUMP.S 0xffa014e8 <_radio_wait_irq+0x28>;
ffa014e2:	39 08       	CC = R1 == R7;
ffa014e4:	10 18       	IF CC JUMP 0xffa01504 <_radio_wait_irq+0x44>;
	...
ffa014ee:	00 00       	NOP;
ffa014f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa014f4:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa014f8:	50 95       	R0 = W[P2] (X);
ffa014fa:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa014fc:	0f 64       	R7 += 0x1;		/* (  1) */
ffa014fe:	f2 17       	IF !CC JUMP 0xffa014e2 <_radio_wait_irq+0x22> (BP);
ffa01500:	39 09       	CC = R1 <= R7;
ffa01502:	06 10       	IF !CC JUMP 0xffa0150e <_radio_wait_irq+0x4e>;
ffa01504:	01 e8 00 00 	UNLINK;
ffa01508:	07 30       	R0 = R7;
ffa0150a:	38 05       	(R7:7) = [SP++];
ffa0150c:	10 00       	RTS;
ffa0150e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01510:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01514:	ff e3 c8 fd 	CALL 0xffa010a4 <_spi_write_register>;
ffa01518:	01 e8 00 00 	UNLINK;
ffa0151c:	07 30       	R0 = R7;
ffa0151e:	38 05       	(R7:7) = [SP++];
ffa01520:	10 00       	RTS;
ffa01522:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01524:	ee 2f       	JUMP.S 0xffa01500 <_radio_wait_irq+0x40>;
ffa01526:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01528:	ee 2f       	JUMP.S 0xffa01504 <_radio_wait_irq+0x44>;
	...

ffa0152c <_spi_write_register_ver>:
ffa0152c:	68 05       	[--SP] = (R7:5);
ffa0152e:	47 43       	R7 = R0.B (Z);
ffa01530:	4e 43       	R6 = R1.B (Z);
ffa01532:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01536:	0e 30       	R1 = R6;
ffa01538:	07 30       	R0 = R7;
ffa0153a:	ff e3 b5 fd 	CALL 0xffa010a4 <_spi_write_register>;
ffa0153e:	07 30       	R0 = R7;
ffa01540:	ff e3 de fd 	CALL 0xffa010fc <_spi_read_register>;
ffa01544:	45 43       	R5 = R0.B (Z);
ffa01546:	2e 08       	CC = R6 == R5;
ffa01548:	29 18       	IF CC JUMP 0xffa0159a <_spi_write_register_ver+0x6e>;
ffa0154a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900007(-7340025) */
ffa0154e:	0f 30       	R1 = R7;
ffa01550:	00 e1 9c 00 	R0.L = 0x9c;		/* (156)	R0=0xff90009c(-7339876) */
ffa01554:	ff e3 a8 fa 	CALL 0xffa00aa4 <_printf_int>;
ffa01558:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90009c(-7339876) */
ffa0155c:	00 e1 10 05 	R0.L = 0x510;		/* (1296)	R0=0xff900510(-7338736) */
ffa01560:	ff e3 86 f9 	CALL 0xffa0086c <_uart_str>;
ffa01564:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900510(-7338736) */
ffa01568:	0e 30       	R1 = R6;
ffa0156a:	00 e1 b0 00 	R0.L = 0xb0;		/* (176)	R0=0xff9000b0(-7339856) */
ffa0156e:	ff e3 e9 f9 	CALL 0xffa00940 <_printf_hex_byte>;
ffa01572:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000b0(-7339856) */
ffa01576:	00 e1 10 05 	R0.L = 0x510;		/* (1296)	R0=0xff900510(-7338736) */
ffa0157a:	ff e3 79 f9 	CALL 0xffa0086c <_uart_str>;
ffa0157e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900510(-7338736) */
ffa01582:	00 e1 bc 00 	R0.L = 0xbc;		/* (188)	R0=0xff9000bc(-7339844) */
ffa01586:	0d 30       	R1 = R5;
ffa01588:	ff e3 dc f9 	CALL 0xffa00940 <_printf_hex_byte>;
ffa0158c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000bc(-7339844) */
ffa01590:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa01594:	35 30       	R6 = R5;
ffa01596:	ff e3 6b f9 	CALL 0xffa0086c <_uart_str>;
ffa0159a:	01 e8 00 00 	UNLINK;
ffa0159e:	06 30       	R0 = R6;
ffa015a0:	28 05       	(R7:5) = [SP++];
ffa015a2:	10 00       	RTS;

ffa015a4 <_radio_init>:
ffa015a4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa015a8:	78 05       	[--SP] = (R7:7);
ffa015aa:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa015ac:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa015b0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa015b4:	11 97       	W[P2] = R1;
ffa015b6:	21 e1 2d 50 	R1 = 0x502d (X);		/*		R1=0x502d(20525) */
ffa015ba:	62 6f       	P2 += -0x14;		/* (-20) */
ffa015bc:	11 97       	W[P2] = R1;
ffa015be:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa015c0:	22 6c       	P2 += 0x4;		/* (  4) */
ffa015c2:	11 97       	W[P2] = R1;
ffa015c4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa015c8:	21 e1 00 02 	R1 = 0x200 (X);		/*		R1=0x200(512) */
ffa015cc:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa015d0:	11 97       	W[P2] = R1;
ffa015d2:	c2 6d       	P2 += 0x38;		/* ( 56) */
ffa015d4:	51 95       	R1 = W[P2] (X);
ffa015d6:	59 4a       	BITSET (R1, 0xb);		/* bit 11 */
ffa015d8:	11 97       	W[P2] = R1;
ffa015da:	82 6f       	P2 += -0x10;		/* (-16) */
ffa015dc:	51 95       	R1 = W[P2] (X);
ffa015de:	59 4c       	BITCLR (R1, 0xb);		/* bit 11 */
ffa015e0:	11 97       	W[P2] = R1;
ffa015e2:	52 95       	R2 = W[P2] (X);
ffa015e4:	21 e1 00 06 	R1 = 0x600 (X);		/*		R1=0x600(1536) */
ffa015e8:	51 56       	R1 = R1 | R2;
ffa015ea:	11 97       	W[P2] = R1;
ffa015ec:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa015f0:	41 43       	R1 = R0.B (Z);
ffa015f2:	11 0a       	CC = R1 <= R2 (IU);
ffa015f4:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa015f8:	01 06       	IF !CC R0 = R1;
ffa015fa:	47 43       	R7 = R0.B (Z);
ffa015fc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a6c(-7337364) */
ffa01600:	0f 30       	R1 = R7;
ffa01602:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa01606:	ff e3 4f fa 	CALL 0xffa00aa4 <_printf_int>;
ffa0160a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000c8(-7339832) */
ffa0160e:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa01612:	ff e3 2d f9 	CALL 0xffa0086c <_uart_str>;
ffa01616:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01618:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0161a:	ff e3 45 fd 	CALL 0xffa010a4 <_spi_write_register>;
ffa0161e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01620:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01622:	ff e3 85 ff 	CALL 0xffa0152c <_spi_write_register_ver>;
ffa01626:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01628:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0162a:	ff e3 81 ff 	CALL 0xffa0152c <_spi_write_register_ver>;
ffa0162e:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01630:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01632:	ff e3 7d ff 	CALL 0xffa0152c <_spi_write_register_ver>;
ffa01636:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01638:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0163a:	ff e3 79 ff 	CALL 0xffa0152c <_spi_write_register_ver>;
ffa0163e:	0f 30       	R1 = R7;
ffa01640:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa01642:	ff e3 75 ff 	CALL 0xffa0152c <_spi_write_register_ver>;
ffa01646:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa01648:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0164a:	ff e3 71 ff 	CALL 0xffa0152c <_spi_write_register_ver>;
ffa0164e:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01652:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01654:	ff e3 6c ff 	CALL 0xffa0152c <_spi_write_register_ver>;
ffa01658:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0165a:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0165c:	ff e3 68 ff 	CALL 0xffa0152c <_spi_write_register_ver>;
ffa01660:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01664:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa01668:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0166a:	10 97       	W[P2] = R0;
ffa0166c:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa01670:	ff e3 9a fd 	CALL 0xffa011a4 <_spi_write_byte>;
ffa01674:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa01678:	ff e3 96 fd 	CALL 0xffa011a4 <_spi_write_byte>;
ffa0167c:	01 e8 00 00 	UNLINK;
ffa01680:	40 43       	R0 = R0.B (Z);
ffa01682:	38 05       	(R7:7) = [SP++];
ffa01684:	10 00       	RTS;
	...

ffa01688 <_bfin_EMAC_send_check>:
ffa01688:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0168c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01690:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01694:	50 95       	R0 = W[P2] (X);
ffa01696:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa01698:	00 02       	R0 = CC;
ffa0169a:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa0169c:	01 e8 00 00 	UNLINK;
ffa016a0:	10 00       	RTS;
	...

ffa016a4 <_FormatIPAddress>:
ffa016a4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa016a8:	18 30       	R3 = R0;
ffa016aa:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa016ae:	40 4f       	R0 <<= 0x8;
ffa016b0:	52 43       	R2 = R2.B (Z);
ffa016b2:	10 56       	R0 = R0 | R2;
ffa016b4:	40 4f       	R0 <<= 0x8;
ffa016b6:	49 43       	R1 = R1.B (Z);
ffa016b8:	08 56       	R0 = R0 | R1;
ffa016ba:	40 4f       	R0 <<= 0x8;
ffa016bc:	5b 43       	R3 = R3.B (Z);
ffa016be:	18 56       	R0 = R0 | R3;
ffa016c0:	01 e8 00 00 	UNLINK;
ffa016c4:	10 00       	RTS;
	...

ffa016c8 <_bfin_EMAC_halt>:
ffa016c8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa016cc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa016ce:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa016d2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa016d6:	10 93       	[P2] = R0;
ffa016d8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa016dc:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa016e0:	10 97       	W[P2] = R0;
ffa016e2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa016e6:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa016ea:	10 97       	W[P2] = R0;
ffa016ec:	01 e8 00 00 	UNLINK;
ffa016f0:	10 00       	RTS;
	...

ffa016f4 <_PollMdcDone>:
ffa016f4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa016f8:	02 20       	JUMP.S 0xffa016fc <_PollMdcDone+0x8>;
ffa016fa:	00 00       	NOP;
ffa016fc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01700:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01704:	10 91       	R0 = [P2];
ffa01706:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01708:	f9 17       	IF !CC JUMP 0xffa016fa <_PollMdcDone+0x6> (BP);
ffa0170a:	01 e8 00 00 	UNLINK;
ffa0170e:	10 00       	RTS;

ffa01710 <_WrPHYReg>:
ffa01710:	68 05       	[--SP] = (R7:5);
ffa01712:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01716:	28 30       	R5 = R0;
ffa01718:	31 30       	R6 = R1;
ffa0171a:	3a 30       	R7 = R2;
ffa0171c:	ff e3 ec ff 	CALL 0xffa016f4 <_PollMdcDone>;
ffa01720:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01722:	b0 55       	R6 = R0 & R6;
ffa01724:	28 54       	R0 = R0 & R5;
ffa01726:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0172a:	58 4f       	R0 <<= 0xb;
ffa0172c:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0172e:	ff 42       	R7 = R7.L (Z);
ffa01730:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01734:	36 4f       	R6 <<= 0x6;
ffa01736:	08 56       	R0 = R0 | R1;
ffa01738:	17 93       	[P2] = R7;
ffa0173a:	86 57       	R6 = R6 | R0;
ffa0173c:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa0173e:	16 93       	[P2] = R6;
ffa01740:	01 e8 00 00 	UNLINK;
ffa01744:	28 05       	(R7:5) = [SP++];
ffa01746:	10 00       	RTS;

ffa01748 <_RdPHYReg>:
ffa01748:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0174a:	29 32       	P5 = R1;
ffa0174c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01750:	38 30       	R7 = R0;
ffa01752:	ff e3 d1 ff 	CALL 0xffa016f4 <_PollMdcDone>;
ffa01756:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa0175a:	45 30       	R0 = P5;
ffa0175c:	c0 42       	R0 = R0.L (Z);
ffa0175e:	28 32       	P5 = R0;
ffa01760:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa01762:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa01766:	55 30       	R2 = P5;
ffa01768:	42 54       	R1 = R2 & R0;
ffa0176a:	38 54       	R0 = R0 & R7;
ffa0176c:	58 4f       	R0 <<= 0xb;
ffa0176e:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa01770:	31 4f       	R1 <<= 0x6;
ffa01772:	41 56       	R1 = R1 | R0;
ffa01774:	11 93       	[P2] = R1;
ffa01776:	ff e3 bf ff 	CALL 0xffa016f4 <_PollMdcDone>;
ffa0177a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa0177e:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa01782:	10 91       	R0 = [P2];
ffa01784:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa01788:	0a e1 e4 0b 	P2.L = 0xbe4;		/* (3044)	P2=0xff900be4 <_PHYregs> */
ffa0178c:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa0178e:	10 97       	W[P2] = R0;
ffa01790:	01 e8 00 00 	UNLINK;
ffa01794:	c0 42       	R0 = R0.L (Z);
ffa01796:	bd 05       	(R7:7, P5:5) = [SP++];
ffa01798:	10 00       	RTS;
	...

ffa0179c <_SoftResetPHY>:
ffa0179c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0179e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa017a0:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa017a4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa017a8:	ff e3 b4 ff 	CALL 0xffa01710 <_WrPHYReg>;
ffa017ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017ae:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa017b0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa017b2:	ff e3 af ff 	CALL 0xffa01710 <_WrPHYReg>;
ffa017b6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017b8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa017ba:	ff e3 c7 ff 	CALL 0xffa01748 <_RdPHYReg>;
ffa017be:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa017c0:	fb 1f       	IF CC JUMP 0xffa017b6 <_SoftResetPHY+0x1a> (BP);
ffa017c2:	01 e8 00 00 	UNLINK;
ffa017c6:	10 00       	RTS;

ffa017c8 <_NetCksum>:
ffa017c8:	01 0d       	CC = R1 <= 0x0;
ffa017ca:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa017ce:	10 18       	IF CC JUMP 0xffa017ee <_NetCksum+0x26>;
ffa017d0:	10 32       	P2 = R0;
ffa017d2:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa017d4:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa017d6:	0a 64       	R2 += 0x1;		/* (  1) */
ffa017d8:	10 94       	R0 = W[P2++] (Z);
ffa017da:	0a 08       	CC = R2 == R1;
ffa017dc:	c3 50       	R3 = R3 + R0;
ffa017de:	fc 17       	IF !CC JUMP 0xffa017d6 <_NetCksum+0xe> (BP);
ffa017e0:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa017e4:	03 50       	R0 = R3 + R0;
ffa017e6:	c0 42       	R0 = R0.L (Z);
ffa017e8:	01 e8 00 00 	UNLINK;
ffa017ec:	10 00       	RTS;
ffa017ee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017f0:	01 e8 00 00 	UNLINK;
ffa017f4:	10 00       	RTS;
	...

ffa017f8 <_htons>:
ffa017f8:	08 30       	R1 = R0;
ffa017fa:	c0 42       	R0 = R0.L (Z);
ffa017fc:	40 4e       	R0 >>= 0x8;
ffa017fe:	41 4f       	R1 <<= 0x8;
ffa01800:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01804:	08 56       	R0 = R0 | R1;
ffa01806:	c0 42       	R0 = R0.L (Z);
ffa01808:	01 e8 00 00 	UNLINK;
ffa0180c:	10 00       	RTS;
	...

ffa01810 <_htonl>:
ffa01810:	10 30       	R2 = R0;
ffa01812:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa01816:	40 43       	R0 = R0.B (Z);
ffa01818:	49 43       	R1 = R1.B (Z);
ffa0181a:	40 4f       	R0 <<= 0x8;
ffa0181c:	08 56       	R0 = R0 | R1;
ffa0181e:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa01822:	40 4f       	R0 <<= 0x8;
ffa01824:	49 43       	R1 = R1.B (Z);
ffa01826:	08 56       	R0 = R0 | R1;
ffa01828:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0182c:	40 4f       	R0 <<= 0x8;
ffa0182e:	c2 4e       	R2 >>= 0x18;
ffa01830:	10 56       	R0 = R0 | R2;
ffa01832:	01 e8 00 00 	UNLINK;
ffa01836:	10 00       	RTS;

ffa01838 <_pack4chars>:
ffa01838:	08 32       	P1 = R0;
ffa0183a:	10 32       	P2 = R0;
ffa0183c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01840:	01 e8 00 00 	UNLINK;
ffa01844:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa01848:	10 98       	R0 = B[P2++] (Z);
ffa0184a:	41 4f       	R1 <<= 0x8;
ffa0184c:	08 50       	R0 = R0 + R1;
ffa0184e:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa01852:	81 4f       	R1 <<= 0x10;
ffa01854:	08 50       	R0 = R0 + R1;
ffa01856:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa0185a:	c1 4f       	R1 <<= 0x18;
ffa0185c:	08 50       	R0 = R0 + R1;
ffa0185e:	10 00       	RTS;

ffa01860 <_ip_header_setup>:
ffa01860:	f4 05       	[--SP] = (R7:6, P5:4);
ffa01862:	28 32       	P5 = R0;
ffa01864:	21 32       	P4 = R1;
ffa01866:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa0186a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0186e:	32 30       	R6 = R2;
ffa01870:	28 9b       	B[P5] = R0;
ffa01872:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01874:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa01878:	27 91       	R7 = [P4];
ffa0187a:	f8 42       	R0 = R7.L (Z);
ffa0187c:	ff e3 be ff 	CALL 0xffa017f8 <_htons>;
ffa01880:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be4 <_PHYregs> */
ffa01884:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa01888:	68 b4       	W[P5 + 0x2] = R0;
ffa0188a:	10 95       	R0 = W[P2] (Z);
ffa0188c:	08 30       	R1 = R0;
ffa0188e:	09 64       	R1 += 0x1;		/* (  1) */
ffa01890:	67 67       	R7 += -0x14;		/* (-20) */
ffa01892:	11 97       	W[P2] = R1;
ffa01894:	27 93       	[P4] = R7;
ffa01896:	ff e3 b1 ff 	CALL 0xffa017f8 <_htons>;
ffa0189a:	a8 b4       	W[P5 + 0x4] = R0;
ffa0189c:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa018a0:	ff e3 ac ff 	CALL 0xffa017f8 <_htons>;
ffa018a4:	e8 b4       	W[P5 + 0x6] = R0;
ffa018a6:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa018aa:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa018ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2e <_NetIPID> */
ffa018b2:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa018b6:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa018ba:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa018be:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018c0:	68 b5       	W[P5 + 0xa] = R0;
ffa018c2:	10 91       	R0 = [P2];
ffa018c4:	e8 b0       	[P5 + 0xc] = R0;
ffa018c6:	2e b1       	[P5 + 0x10] = R6;
ffa018c8:	45 30       	R0 = P5;
ffa018ca:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa018cc:	ff e3 7e ff 	CALL 0xffa017c8 <_NetCksum>;
ffa018d0:	c0 43       	R0 =~ R0;
ffa018d2:	68 b5       	W[P5 + 0xa] = R0;
ffa018d4:	01 e8 00 00 	UNLINK;
ffa018d8:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa018da:	45 30       	R0 = P5;
ffa018dc:	b4 05       	(R7:6, P5:4) = [SP++];
ffa018de:	10 00       	RTS;

ffa018e0 <_ip_header_checksum>:
ffa018e0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa018e4:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa018e6:	ff e3 71 ff 	CALL 0xffa017c8 <_NetCksum>;
ffa018ea:	08 02       	CC = R0;
ffa018ec:	00 02       	R0 = CC;
ffa018ee:	01 e8 00 00 	UNLINK;
ffa018f2:	10 00       	RTS;

ffa018f4 <_icmp_header_setup>:
ffa018f4:	00 32       	P0 = R0;
ffa018f6:	c5 04       	[--SP] = (P5:5);
ffa018f8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018fa:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa018fe:	29 32       	P5 = R1;
ffa01900:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa01904:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01906:	40 b4       	W[P0 + 0x2] = R0;
ffa01908:	38 ab       	R0 = W[FP + 0x18] (X);
ffa0190a:	80 b4       	W[P0 + 0x4] = R0;
ffa0190c:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa0190e:	02 9b       	B[P0] = R2;
ffa01910:	c0 b4       	W[P0 + 0x6] = R0;
ffa01912:	48 32       	P1 = P0;
ffa01914:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01916:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa01918:	b2 e0 03 20 	LSETUP(0xffa0191c <_icmp_header_setup+0x28>, 0xffa0191e <_icmp_header_setup+0x2a>) LC1 = P2;
ffa0191c:	08 94       	R0 = W[P1++] (Z);
ffa0191e:	41 50       	R1 = R1 + R0;
ffa01920:	c8 42       	R0 = R1.L (Z);
ffa01922:	81 4e       	R1 >>= 0x10;
ffa01924:	08 50       	R0 = R0 + R1;
ffa01926:	c0 43       	R0 =~ R0;
ffa01928:	40 b4       	W[P0 + 0x2] = R0;
ffa0192a:	28 91       	R0 = [P5];
ffa0192c:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa0192e:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01930:	01 e8 00 00 	UNLINK;
ffa01934:	28 93       	[P5] = R0;
ffa01936:	40 30       	R0 = P0;
ffa01938:	85 04       	(P5:5) = [SP++];
ffa0193a:	10 00       	RTS;

ffa0193c <_udp_header_setup>:
ffa0193c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0193e:	28 32       	P5 = R0;
ffa01940:	21 32       	P4 = R1;
ffa01942:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01946:	d0 42       	R0 = R2.L (Z);
ffa01948:	ff e3 58 ff 	CALL 0xffa017f8 <_htons>;
ffa0194c:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa01950:	28 97       	W[P5] = R0;
ffa01952:	07 30       	R0 = R7;
ffa01954:	ff e3 52 ff 	CALL 0xffa017f8 <_htons>;
ffa01958:	27 91       	R7 = [P4];
ffa0195a:	68 b4       	W[P5 + 0x2] = R0;
ffa0195c:	f8 42       	R0 = R7.L (Z);
ffa0195e:	ff e3 4d ff 	CALL 0xffa017f8 <_htons>;
ffa01962:	a8 b4       	W[P5 + 0x4] = R0;
ffa01964:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01966:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa01968:	e8 b4       	W[P5 + 0x6] = R0;
ffa0196a:	01 e8 00 00 	UNLINK;
ffa0196e:	45 6c       	P5 += 0x8;		/* (  8) */
ffa01970:	45 30       	R0 = P5;
ffa01972:	27 93       	[P4] = R7;
ffa01974:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01976:	10 00       	RTS;

ffa01978 <_tcp_header_setup>:
ffa01978:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0197a:	28 32       	P5 = R0;
ffa0197c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01980:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa01984:	21 32       	P4 = R1;
ffa01986:	3a 30       	R7 = R2;
ffa01988:	ff e3 38 ff 	CALL 0xffa017f8 <_htons>;
ffa0198c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa01990:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa01994:	28 97       	W[P5] = R0;
ffa01996:	50 95       	R0 = W[P2] (X);
ffa01998:	68 b4       	W[P5 + 0x2] = R0;
ffa0199a:	38 a2       	R0 = [FP + 0x20];
ffa0199c:	ff e3 3a ff 	CALL 0xffa01810 <_htonl>;
ffa019a0:	68 b0       	[P5 + 0x4] = R0;
ffa019a2:	78 a2       	R0 = [FP + 0x24];
ffa019a4:	ff e3 36 ff 	CALL 0xffa01810 <_htonl>;
ffa019a8:	a8 b0       	[P5 + 0x8] = R0;
ffa019aa:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa019ae:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa019b2:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa019b6:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa019ba:	ff e3 1f ff 	CALL 0xffa017f8 <_htons>;
ffa019be:	e8 b5       	W[P5 + 0xe] = R0;
ffa019c0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa019c2:	28 b6       	W[P5 + 0x10] = R0;
ffa019c4:	68 b6       	W[P5 + 0x12] = R0;
ffa019c6:	20 91       	R0 = [P4];
ffa019c8:	60 67       	R0 += -0x14;		/* (-20) */
ffa019ca:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa019cc:	01 e8 00 00 	UNLINK;
ffa019d0:	20 93       	[P4] = R0;
ffa019d2:	45 30       	R0 = P5;
ffa019d4:	bc 05       	(R7:7, P5:4) = [SP++];
ffa019d6:	10 00       	RTS;

ffa019d8 <_DHCP_parse>:
ffa019d8:	f5 05       	[--SP] = (R7:6, P5:5);
ffa019da:	09 0d       	CC = R1 <= 0x1;
ffa019dc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa019e0:	10 32       	P2 = R0;
ffa019e2:	33 18       	IF CC JUMP 0xffa01a48 <_DHCP_parse+0x70>;
ffa019e4:	00 00       	NOP;
ffa019e6:	31 30       	R6 = R1;
ffa019e8:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa019ea:	11 98       	R1 = B[P2++] (Z);
ffa019ec:	01 0c       	CC = R1 == 0x0;
ffa019ee:	2b 1c       	IF CC JUMP 0xffa01a44 <_DHCP_parse+0x6c> (BP);
ffa019f0:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa019f4:	01 08       	CC = R1 == R0;
ffa019f6:	57 99       	R7 = B[P2] (X);
ffa019f8:	28 18       	IF CC JUMP 0xffa01a48 <_DHCP_parse+0x70>;
ffa019fa:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa019fc:	6a 32       	P5 = P2;
ffa019fe:	01 0a       	CC = R1 <= R0 (IU);
ffa01a00:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa01a02:	09 14       	IF !CC JUMP 0xffa01a14 <_DHCP_parse+0x3c> (BP);
ffa01a04:	09 32       	P1 = R1;
ffa01a06:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpClientPort> */
ffa01a0a:	0a e1 b0 03 	P2.L = 0x3b0;		/* (944)	P2=0xff9003b0 */
ffa01a0e:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa01a10:	52 91       	P2 = [P2];
ffa01a12:	52 00       	JUMP (P2);
ffa01a14:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa01a18:	00 e1 88 01 	R0.L = 0x188;		/* (392)	R0=0xff900188(-7339640) */
ffa01a1c:	ff e3 44 f8 	CALL 0xffa00aa4 <_printf_int>;
ffa01a20:	7f 43       	R7 = R7.B (Z);
ffa01a22:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900188(-7339640) */
ffa01a26:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa01a2a:	0f 30       	R1 = R7;
ffa01a2c:	ff e3 3c f8 	CALL 0xffa00aa4 <_printf_int>;
ffa01a30:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90019c(-7339620) */
ffa01a34:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa01a38:	ff e3 74 f7 	CALL 0xffa00920 <_printf_str>;
ffa01a3c:	0f 32       	P1 = R7;
ffa01a3e:	be 53       	R6 = R6 - R7;
ffa01a40:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01a42:	8d 5a       	P2 = P5 + P1;
ffa01a44:	0e 0d       	CC = R6 <= 0x1;
ffa01a46:	d1 17       	IF !CC JUMP 0xffa019e8 <_DHCP_parse+0x10> (BP);
ffa01a48:	01 e8 00 00 	UNLINK;
ffa01a4c:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01a4e:	10 00       	RTS;
ffa01a50:	45 30       	R0 = P5;
ffa01a52:	ff e3 f3 fe 	CALL 0xffa01838 <_pack4chars>;
ffa01a56:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff9003b0 */
ffa01a5a:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetSubnetMask> */
ffa01a5e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01a62:	10 93 00 00 
ffa01a66:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a6c(-7337364) */
ffa01a6a:	00 e1 e0 00 	R0.L = 0xe0;		/* (224)	R0=0xff9000e0(-7339808) */
ffa01a6e:	ff e3 bd f8 	CALL 0xffa00be8 <_printf_ip>;
ffa01a72:	7f 43       	R7 = R7.B (Z);
ffa01a74:	de 2f       	JUMP.S 0xffa01a30 <_DHCP_parse+0x58>;
ffa01a76:	45 30       	R0 = P5;
ffa01a78:	ff e3 e0 fe 	CALL 0xffa01838 <_pack4chars>;
ffa01a7c:	08 30       	R1 = R0;
ffa01a7e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000e0(-7339808) */
ffa01a82:	00 e1 f0 00 	R0.L = 0xf0;		/* (240)	R0=0xff9000f0(-7339792) */
ffa01a86:	ff e3 b1 f8 	CALL 0xffa00be8 <_printf_ip>;
ffa01a8a:	7f 43       	R7 = R7.B (Z);
ffa01a8c:	d2 2f       	JUMP.S 0xffa01a30 <_DHCP_parse+0x58>;
ffa01a8e:	45 30       	R0 = P5;
ffa01a90:	ff e3 d4 fe 	CALL 0xffa01838 <_pack4chars>;
ffa01a94:	08 30       	R1 = R0;
ffa01a96:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f0(-7339792) */
ffa01a9a:	00 e1 00 01 	R0.L = 0x100;		/* (256)	R0=0xff900100(-7339776) */
ffa01a9e:	ff e3 a5 f8 	CALL 0xffa00be8 <_printf_ip>;
ffa01aa2:	7f 43       	R7 = R7.B (Z);
ffa01aa4:	c6 2f       	JUMP.S 0xffa01a30 <_DHCP_parse+0x58>;
ffa01aa6:	45 30       	R0 = P5;
ffa01aa8:	ff e3 c8 fe 	CALL 0xffa01838 <_pack4chars>;
ffa01aac:	08 30       	R1 = R0;
ffa01aae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900100(-7339776) */
ffa01ab2:	00 e1 10 01 	R0.L = 0x110;		/* (272)	R0=0xff900110(-7339760) */
ffa01ab6:	ff e3 99 f8 	CALL 0xffa00be8 <_printf_ip>;
ffa01aba:	7f 43       	R7 = R7.B (Z);
ffa01abc:	ba 2f       	JUMP.S 0xffa01a30 <_DHCP_parse+0x58>;
ffa01abe:	45 30       	R0 = P5;
ffa01ac0:	ff e3 bc fe 	CALL 0xffa01838 <_pack4chars>;
ffa01ac4:	ff e3 a6 fe 	CALL 0xffa01810 <_htonl>;
ffa01ac8:	08 30       	R1 = R0;
ffa01aca:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900110(-7339760) */
ffa01ace:	00 e1 20 01 	R0.L = 0x120;		/* (288)	R0=0xff900120(-7339744) */
ffa01ad2:	ff e3 e9 f7 	CALL 0xffa00aa4 <_printf_int>;
ffa01ad6:	7f 43       	R7 = R7.B (Z);
ffa01ad8:	ac 2f       	JUMP.S 0xffa01a30 <_DHCP_parse+0x58>;
ffa01ada:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900120(-7339744) */
ffa01ade:	29 99       	R1 = B[P5] (Z);
ffa01ae0:	00 e1 34 01 	R0.L = 0x134;		/* (308)	R0=0xff900134(-7339724) */
ffa01ae4:	ff e3 e0 f7 	CALL 0xffa00aa4 <_printf_int>;
ffa01ae8:	7f 43       	R7 = R7.B (Z);
ffa01aea:	a3 2f       	JUMP.S 0xffa01a30 <_DHCP_parse+0x58>;
ffa01aec:	45 30       	R0 = P5;
ffa01aee:	ff e3 a5 fe 	CALL 0xffa01838 <_pack4chars>;
ffa01af2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_NetSubnetMask> */
ffa01af6:	0a e1 28 0c 	P2.L = 0xc28;		/* (3112)	P2=0xff900c28 <_NetDHCPserv> */
ffa01afa:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01afe:	10 93 00 00 
ffa01b02:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900134(-7339724) */
ffa01b06:	00 e1 48 01 	R0.L = 0x148;		/* (328)	R0=0xff900148(-7339704) */
ffa01b0a:	ff e3 6f f8 	CALL 0xffa00be8 <_printf_ip>;
ffa01b0e:	7f 43       	R7 = R7.B (Z);
ffa01b10:	90 2f       	JUMP.S 0xffa01a30 <_DHCP_parse+0x58>;
ffa01b12:	45 30       	R0 = P5;
ffa01b14:	ff e3 92 fe 	CALL 0xffa01838 <_pack4chars>;
ffa01b18:	ff e3 7c fe 	CALL 0xffa01810 <_htonl>;
ffa01b1c:	08 30       	R1 = R0;
ffa01b1e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900148(-7339704) */
ffa01b22:	00 e1 5c 01 	R0.L = 0x15c;		/* (348)	R0=0xff90015c(-7339684) */
ffa01b26:	ff e3 bf f7 	CALL 0xffa00aa4 <_printf_int>;
ffa01b2a:	7f 43       	R7 = R7.B (Z);
ffa01b2c:	82 2f       	JUMP.S 0xffa01a30 <_DHCP_parse+0x58>;
ffa01b2e:	45 30       	R0 = P5;
ffa01b30:	ff e3 84 fe 	CALL 0xffa01838 <_pack4chars>;
ffa01b34:	ff e3 6e fe 	CALL 0xffa01810 <_htonl>;
ffa01b38:	08 30       	R1 = R0;
ffa01b3a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90015c(-7339684) */
ffa01b3e:	00 e1 70 01 	R0.L = 0x170;		/* (368)	R0=0xff900170(-7339664) */
ffa01b42:	ff e3 b1 f7 	CALL 0xffa00aa4 <_printf_int>;
ffa01b46:	7f 43       	R7 = R7.B (Z);
ffa01b48:	74 2f       	JUMP.S 0xffa01a30 <_DHCP_parse+0x58>;
	...

ffa01b4c <_bfin_EMAC_send_nocopy>:
ffa01b4c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c28(-4191192) */
ffa01b50:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01b52:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01b56:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b5a:	10 97       	W[P2] = R0;
ffa01b5c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01b60:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01b64:	50 95       	R0 = W[P2] (X);
ffa01b66:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01b68:	59 10       	IF !CC JUMP 0xffa01c1a <_bfin_EMAC_send_nocopy+0xce>;
ffa01b6a:	00 00       	NOP;
ffa01b6c:	00 00       	NOP;
ffa01b6e:	00 00       	NOP;
ffa01b70:	50 95       	R0 = W[P2] (X);
ffa01b72:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01b74:	16 18       	IF CC JUMP 0xffa01ba0 <_bfin_EMAC_send_nocopy+0x54>;
ffa01b76:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0d68 */
ffa01b7a:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01b7e:	b2 e0 09 10 	LSETUP(0xffa01b82 <_bfin_EMAC_send_nocopy+0x36>, 0xffa01b90 <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa01b82:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01b86:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01b8a:	50 95       	R0 = W[P2] (X);
ffa01b8c:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01b8e:	09 18       	IF CC JUMP 0xffa01ba0 <_bfin_EMAC_send_nocopy+0x54>;
ffa01b90:	00 00       	NOP;
ffa01b92:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa01b96:	00 e1 bc 01 	R0.L = 0x1bc;		/* (444)	R0=0xff9001bc(-7339588) */
ffa01b9a:	ff e3 c3 f6 	CALL 0xffa00920 <_printf_str>;
ffa01b9e:	30 20       	JUMP.S 0xffa01bfe <_bfin_EMAC_send_nocopy+0xb2>;
ffa01ba0:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa01ba4:	08 e1 2c 0c 	P0.L = 0xc2c;		/* (3116)	P0=0xff900c2c <_txIdx> */
ffa01ba8:	00 95       	R0 = W[P0] (Z);
ffa01baa:	10 32       	P2 = R0;
ffa01bac:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01bb0:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa01bb4:	42 95       	R2 = W[P0] (X);
ffa01bb6:	d1 42       	R1 = R2.L (Z);
ffa01bb8:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01bba:	52 91       	P2 = [P2];
ffa01bbc:	11 0d       	CC = R1 <= 0x2;
ffa01bbe:	90 a1       	R0 = [P2 + 0x18];
ffa01bc0:	50 b0       	[P2 + 0x4] = R0;
ffa01bc2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01bc4:	90 b2       	[P2 + 0x28] = R0;
ffa01bc6:	11 32       	P2 = R1;
ffa01bc8:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa01bca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01bce:	08 91       	R0 = [P1];
ffa01bd0:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01bd4:	10 93       	[P2] = R0;
ffa01bd6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01bda:	0a e1 a2 04 	P2.L = 0x4a2;		/* (1186)	P2=0xff9004a2 <_txdmacfg> */
ffa01bde:	50 95       	R0 = W[P2] (X);
ffa01be0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004a2(-4193118) */
ffa01be4:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01be8:	10 97       	W[P2] = R0;
ffa01bea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01bee:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01bf2:	10 91       	R0 = [P2];
ffa01bf4:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01bf6:	10 93       	[P2] = R0;
ffa01bf8:	0d 1c       	IF CC JUMP 0xffa01c12 <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa01bfa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01bfc:	00 97       	W[P0] = R0;
ffa01bfe:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01c02:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01c04:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01c08:	10 97       	W[P2] = R0;
ffa01c0a:	01 e8 00 00 	UNLINK;
ffa01c0e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c10:	10 00       	RTS;
ffa01c12:	02 30       	R0 = R2;
ffa01c14:	08 64       	R0 += 0x1;		/* (  1) */
ffa01c16:	00 97       	W[P0] = R0;
ffa01c18:	f3 2f       	JUMP.S 0xffa01bfe <_bfin_EMAC_send_nocopy+0xb2>;
ffa01c1a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01c1e:	00 e1 a4 01 	R0.L = 0x1a4;		/* (420)	R0=0xff9001a4(-7339612) */
ffa01c22:	ff e3 7f f6 	CALL 0xffa00920 <_printf_str>;
ffa01c26:	ec 2f       	JUMP.S 0xffa01bfe <_bfin_EMAC_send_nocopy+0xb2>;

ffa01c28 <_DHCP_tx>:
ffa01c28:	e3 05       	[--SP] = (R7:4, P5:3);
ffa01c2a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa01c2e:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01c32:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa01c36:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa01c3a:	10 95 00 00 
ffa01c3e:	10 32       	P2 = R0;
ffa01c40:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c30 <_txbuf> */
ffa01c44:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa01c48:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa01c4c:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01c4e:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01c50:	52 91       	P2 = [P2];
ffa01c52:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa01c56:	f1 bb 00 00 
ffa01c5a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90050c */
ffa01c5e:	0d e1 54 0c 	P5.L = 0xc54;		/* (3156)	P5=0xff900c54 <_NetOurMAC> */
ffa01c62:	94 ad       	P4 = [P2 + 0x18];
ffa01c64:	1a 32       	P3 = R2;
ffa01c66:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01c68:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01c6a:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa01c6e:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa01c72:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa01c76:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa01c7a:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa01c7e:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa01c82:	20 97       	W[P4] = R0;
ffa01c84:	68 99       	R0 = B[P5] (X);
ffa01c86:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa01c8a:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01c8e:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa01c92:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01c96:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa01c9a:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01c9e:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa01ca2:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01ca6:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa01caa:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01cae:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa01cb2:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01cb6:	ff e3 a1 fd 	CALL 0xffa017f8 <_htons>;
ffa01cba:	e0 b5       	W[P4 + 0xe] = R0;
ffa01cbc:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01cc0:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa01cc4:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa01cc8:	04 50       	R0 = R4 + R0;
ffa01cca:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa01cce:	c0 42       	R0 = R0.L (Z);
ffa01cd0:	ff e3 94 fd 	CALL 0xffa017f8 <_htons>;
ffa01cd4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa01cd8:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa01cdc:	60 b6       	W[P4 + 0x12] = R0;
ffa01cde:	10 95       	R0 = W[P2] (Z);
ffa01ce0:	08 30       	R1 = R0;
ffa01ce2:	09 64       	R1 += 0x1;		/* (  1) */
ffa01ce4:	11 97       	W[P2] = R1;
ffa01ce6:	ff e3 89 fd 	CALL 0xffa017f8 <_htons>;
ffa01cea:	a0 b6       	W[P4 + 0x14] = R0;
ffa01cec:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01cf0:	ff e3 84 fd 	CALL 0xffa017f8 <_htons>;
ffa01cf4:	e0 b6       	W[P4 + 0x16] = R0;
ffa01cf6:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01cf8:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa01cfc:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa01d00:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa01d04:	66 b7 00 00 
ffa01d08:	44 30       	R0 = P4;
ffa01d0a:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01d0c:	e7 b1       	[P4 + 0x1c] = R7;
ffa01d0e:	23 be       	[P4 + 0x20] = P3;
ffa01d10:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01d12:	ff e3 5b fd 	CALL 0xffa017c8 <_NetCksum>;
ffa01d16:	c0 43       	R0 =~ R0;
ffa01d18:	60 b7       	W[P4 + 0x1a] = R0;
ffa01d1a:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa01d1e:	ff e3 6d fd 	CALL 0xffa017f8 <_htons>;
ffa01d22:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa01d26:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa01d2a:	ff e3 67 fd 	CALL 0xffa017f8 <_htons>;
ffa01d2e:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa01d32:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa01d36:	04 50       	R0 = R4 + R0;
ffa01d38:	c0 42       	R0 = R0.L (Z);
ffa01d3a:	ff e3 5f fd 	CALL 0xffa017f8 <_htons>;
ffa01d3e:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa01d42:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01d44:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa01d48:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa01d4c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c2e(-4191186) */
ffa01d50:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01d52:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa01d56:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa01d5a:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa01d5e:	10 91       	R0 = [P2];
ffa01d60:	20 b3       	[P4 + 0x30] = R0;
ffa01d62:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa01d66:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa01d6a:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa01d6e:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa01d72:	a7 b3       	[P4 + 0x38] = R7;
ffa01d74:	e7 b3       	[P4 + 0x3c] = R7;
ffa01d76:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa01d7a:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa01d7e:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa01d82:	ff e3 47 fd 	CALL 0xffa01810 <_htonl>;
ffa01d86:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa01d8a:	68 99       	R0 = B[P5] (X);
ffa01d8c:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa01d90:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01d94:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa01d98:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01d9c:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa01da0:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01da4:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa01da8:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01dac:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa01db0:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01db4:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa01db8:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa01dbc:	54 5a       	P1 = P4 + P2;
ffa01dbe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01dc0:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa01dc2:	b2 e0 02 20 	LSETUP(0xffa01dc6 <_DHCP_tx+0x19e>, 0xffa01dc6 <_DHCP_tx+0x19e>) LC1 = P2;
ffa01dc6:	08 9a       	B[P1++] = R0;
ffa01dc8:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa01dcc:	54 5a       	P1 = P4 + P2;
ffa01dce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01dd0:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa01dd2:	b2 e0 02 20 	LSETUP(0xffa01dd6 <_DHCP_tx+0x1ae>, 0xffa01dd6 <_DHCP_tx+0x1ae>) LC1 = P2;
ffa01dd6:	08 92       	[P1++] = R0;
ffa01dd8:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa01ddc:	54 5a       	P1 = P4 + P2;
ffa01dde:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01de0:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa01de2:	b2 e0 02 20 	LSETUP(0xffa01de6 <_DHCP_tx+0x1be>, 0xffa01de6 <_DHCP_tx+0x1be>) LC1 = P2;
ffa01de6:	08 92       	[P1++] = R0;
ffa01de8:	44 30       	R0 = P4;
ffa01dea:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa01dee:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa01df2:	f0 b9 00 00 
ffa01df6:	14 30       	R2 = R4;
ffa01df8:	ff e3 3c f7 	CALL 0xffa00c70 <_memcpy_>;
ffa01dfc:	01 e8 00 00 	UNLINK;
ffa01e00:	a3 05       	(R7:4, P5:3) = [SP++];
ffa01e02:	ff e2 a5 fe 	JUMP.L 0xffa01b4c <_bfin_EMAC_send_nocopy>;
	...

ffa01e08 <_bfin_EMAC_send>:
ffa01e08:	c4 04       	[--SP] = (P5:4);
ffa01e0a:	01 0d       	CC = R1 <= 0x0;
ffa01e0c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01e10:	18 30       	R3 = R0;
ffa01e12:	11 30       	R2 = R1;
ffa01e14:	90 18       	IF CC JUMP 0xffa01f34 <_bfin_EMAC_send+0x12c>;
ffa01e16:	00 00       	NOP;
ffa01e18:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00020(-4194272) */
ffa01e1c:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01e20:	50 95       	R0 = W[P2] (X);
ffa01e22:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01e24:	74 10       	IF !CC JUMP 0xffa01f0c <_bfin_EMAC_send+0x104>;
ffa01e26:	00 00       	NOP;
ffa01e28:	00 00       	NOP;
ffa01e2a:	00 00       	NOP;
ffa01e2c:	50 95       	R0 = W[P2] (X);
ffa01e2e:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01e30:	17 18       	IF CC JUMP 0xffa01e5e <_bfin_EMAC_send+0x56>;
ffa01e32:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0c30 */
ffa01e36:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01e3a:	b2 e0 09 10 	LSETUP(0xffa01e3e <_bfin_EMAC_send+0x36>, 0xffa01e4c <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa01e3e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01e42:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01e46:	50 95       	R0 = W[P2] (X);
ffa01e48:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01e4a:	0a 18       	IF CC JUMP 0xffa01e5e <_bfin_EMAC_send+0x56>;
ffa01e4c:	00 00       	NOP;
ffa01e4e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01e52:	00 e1 f0 01 	R0.L = 0x1f0;		/* (496)	R0=0xff9001f0(-7339536) */
ffa01e56:	ff e3 65 f5 	CALL 0xffa00920 <_printf_str>;
ffa01e5a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01e5c:	53 20       	JUMP.S 0xffa01f02 <_bfin_EMAC_send+0xfa>;
ffa01e5e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90050c */
ffa01e62:	0c e1 2c 0c 	P4.L = 0xc2c;		/* (3116)	P4=0xff900c2c <_txIdx> */
ffa01e66:	20 95       	R0 = W[P4] (Z);
ffa01e68:	10 32       	P2 = R0;
ffa01e6a:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c54 <_NetOurMAC> */
ffa01e6e:	0d e1 30 0c 	P5.L = 0xc30;		/* (3120)	P5=0xff900c30 <_txbuf> */
ffa01e72:	0b 30       	R1 = R3;
ffa01e74:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01e76:	52 91       	P2 = [P2];
ffa01e78:	92 ad       	P2 = [P2 + 0x18];
ffa01e7a:	12 96       	W[P2++] = R2;
ffa01e7c:	42 30       	R0 = P2;
ffa01e7e:	ff e3 f9 f6 	CALL 0xffa00c70 <_memcpy_>;
ffa01e82:	20 95       	R0 = W[P4] (Z);
ffa01e84:	10 32       	P2 = R0;
ffa01e86:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01e88:	51 91       	P1 = [P2];
ffa01e8a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01e8e:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01e92:	51 93       	[P2] = P1;
ffa01e94:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01e98:	88 a1       	R0 = [P1 + 0x18];
ffa01e9a:	0a e1 a2 04 	P2.L = 0x4a2;		/* (1186)	P2=0xff9004a2 <_txdmacfg> */
ffa01e9e:	48 b0       	[P1 + 0x4] = R0;
ffa01ea0:	50 95       	R0 = W[P2] (X);
ffa01ea2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004a2(-4193118) */
ffa01ea6:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01eaa:	10 97       	W[P2] = R0;
ffa01eac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01eb0:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01eb4:	10 91       	R0 = [P2];
ffa01eb6:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01eb8:	10 93       	[P2] = R0;
ffa01eba:	88 a2       	R0 = [P1 + 0x28];
ffa01ebc:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01ebe:	13 10       	IF !CC JUMP 0xffa01ee4 <_bfin_EMAC_send+0xdc>;
ffa01ec0:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa01ec4:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa01ec8:	b2 e0 05 20 	LSETUP(0xffa01ecc <_bfin_EMAC_send+0xc4>, 0xffa01ed2 <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa01ecc:	88 a2       	R0 = [P1 + 0x28];
ffa01ece:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01ed0:	0a 10       	IF !CC JUMP 0xffa01ee4 <_bfin_EMAC_send+0xdc>;
ffa01ed2:	00 00       	NOP;
ffa01ed4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001f0(-7339536) */
ffa01ed8:	00 e1 08 02 	R0.L = 0x208;		/* (520)	R0=0xff900208(-7339512) */
ffa01edc:	ff e3 22 f5 	CALL 0xffa00920 <_printf_str>;
ffa01ee0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01ee2:	10 20       	JUMP.S 0xffa01f02 <_bfin_EMAC_send+0xfa>;
ffa01ee4:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa01ee8:	61 95 00 00 
ffa01eec:	8a a2       	R2 = [P1 + 0x28];
ffa01eee:	88 b2       	[P1 + 0x28] = R0;
ffa01ef0:	c8 42       	R0 = R1.L (Z);
ffa01ef2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa01ef6:	10 0d       	CC = R0 <= 0x2;
ffa01ef8:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa01efc:	14 1c       	IF CC JUMP 0xffa01f24 <_bfin_EMAC_send+0x11c> (BP);
ffa01efe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01f00:	10 97       	W[P2] = R0;
ffa01f02:	01 e8 00 00 	UNLINK;
ffa01f06:	02 30       	R0 = R2;
ffa01f08:	84 04       	(P5:4) = [SP++];
ffa01f0a:	10 00       	RTS;
ffa01f0c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01f10:	00 e1 a4 01 	R0.L = 0x1a4;		/* (420)	R0=0xff9001a4(-7339612) */
ffa01f14:	ff e3 06 f5 	CALL 0xffa00920 <_printf_str>;
ffa01f18:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01f1a:	01 e8 00 00 	UNLINK;
ffa01f1e:	02 30       	R0 = R2;
ffa01f20:	84 04       	(P5:4) = [SP++];
ffa01f22:	10 00       	RTS;
ffa01f24:	01 30       	R0 = R1;
ffa01f26:	08 64       	R0 += 0x1;		/* (  1) */
ffa01f28:	10 97       	W[P2] = R0;
ffa01f2a:	01 e8 00 00 	UNLINK;
ffa01f2e:	02 30       	R0 = R2;
ffa01f30:	84 04       	(P5:4) = [SP++];
ffa01f32:	10 00       	RTS;
ffa01f34:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001a4(-7339612) */
ffa01f38:	00 e1 d4 01 	R0.L = 0x1d4;		/* (468)	R0=0xff9001d4(-7339564) */
ffa01f3c:	ff e3 b4 f5 	CALL 0xffa00aa4 <_printf_int>;
ffa01f40:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01f42:	01 e8 00 00 	UNLINK;
ffa01f46:	02 30       	R0 = R2;
ffa01f48:	84 04       	(P5:4) = [SP++];
ffa01f4a:	10 00       	RTS;

ffa01f4c <_ether_testUDP>:
ffa01f4c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01f4e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa01f52:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01f56:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa01f5a:	11 95       	R1 = W[P2] (Z);
ffa01f5c:	11 32       	P2 = R1;
ffa01f5e:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01f62:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa01f66:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa01f6a:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01f6c:	52 91       	P2 = [P2];
ffa01f6e:	95 ad       	P5 = [P2 + 0x18];
ffa01f70:	55 32       	P2 = P5;
ffa01f72:	11 96       	W[P2++] = R1;
ffa01f74:	4a 30       	R1 = P2;
ffa01f76:	00 e3 4d 08 	CALL 0xffa03010 <_ARP_req>;
ffa01f7a:	00 0c       	CC = R0 == 0x0;
ffa01f7c:	7f 18       	IF CC JUMP 0xffa0207a <_ether_testUDP+0x12e>;
ffa01f7e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa01f82:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_NetOurMAC> */
ffa01f86:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01f88:	50 99       	R0 = B[P2] (X);
ffa01f8a:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01f8e:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa01f92:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01f96:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa01f9a:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa01f9e:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa01fa2:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa01fa6:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa01faa:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01fae:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa01fb2:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa01fb6:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01fba:	ff e3 1f fc 	CALL 0xffa017f8 <_htons>;
ffa01fbe:	e8 b5       	W[P5 + 0xe] = R0;
ffa01fc0:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01fc4:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa01fc8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01fca:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa01fce:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa01fd0:	ff e3 14 fc 	CALL 0xffa017f8 <_htons>;
ffa01fd4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_NetOurMAC> */
ffa01fd8:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa01fdc:	68 b6       	W[P5 + 0x12] = R0;
ffa01fde:	10 95       	R0 = W[P2] (Z);
ffa01fe0:	08 30       	R1 = R0;
ffa01fe2:	09 64       	R1 += 0x1;		/* (  1) */
ffa01fe4:	11 97       	W[P2] = R1;
ffa01fe6:	ff e3 09 fc 	CALL 0xffa017f8 <_htons>;
ffa01fea:	a8 b6       	W[P5 + 0x14] = R0;
ffa01fec:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01ff0:	ff e3 04 fc 	CALL 0xffa017f8 <_htons>;
ffa01ff4:	e8 b6       	W[P5 + 0x16] = R0;
ffa01ff6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa01ff8:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa01ffc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2e <_NetIPID> */
ffa02000:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa02002:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa02006:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa0200a:	10 91       	R0 = [P2];
ffa0200c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa02010:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa02014:	e8 b1       	[P5 + 0x1c] = R0;
ffa02016:	10 91       	R0 = [P2];
ffa02018:	28 b2       	[P5 + 0x20] = R0;
ffa0201a:	45 30       	R0 = P5;
ffa0201c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa0201e:	6f b7       	W[P5 + 0x1a] = R7;
ffa02020:	80 64       	R0 += 0x10;		/* ( 16) */
ffa02022:	ff e3 d3 fb 	CALL 0xffa017c8 <_NetCksum>;
ffa02026:	c0 43       	R0 =~ R0;
ffa02028:	68 b7       	W[P5 + 0x1a] = R0;
ffa0202a:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa0202e:	ff e3 e5 fb 	CALL 0xffa017f8 <_htons>;
ffa02032:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa02036:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa0203a:	ff e3 df fb 	CALL 0xffa017f8 <_htons>;
ffa0203e:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa02042:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa02044:	ff e3 da fb 	CALL 0xffa017f8 <_htons>;
ffa02048:	55 32       	P2 = P5;
ffa0204a:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa0204e:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa02052:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa02054:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02056:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa02058:	b2 e0 03 10 	LSETUP(0xffa0205c <_ether_testUDP+0x110>, 0xffa0205e <_ether_testUDP+0x112>) LC1 = P1;
ffa0205c:	11 9a       	B[P2++] = R1;
ffa0205e:	09 64       	R1 += 0x1;		/* (  1) */
ffa02060:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa02064:	00 e1 1c 02 	R0.L = 0x21c;		/* (540)	R0=0xff90021c(-7339492) */
ffa02068:	ff e3 5c f4 	CALL 0xffa00920 <_printf_str>;
ffa0206c:	ff e3 70 fd 	CALL 0xffa01b4c <_bfin_EMAC_send_nocopy>;
ffa02070:	01 e8 00 00 	UNLINK;
ffa02074:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02076:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02078:	10 00       	RTS;
ffa0207a:	01 e8 00 00 	UNLINK;
ffa0207e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02080:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02082:	10 00       	RTS;

ffa02084 <_eth_header_setup>:
ffa02084:	c4 04       	[--SP] = (P5:4);
ffa02086:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa0208a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0208e:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa02092:	00 32       	P0 = R0;
ffa02094:	10 95       	R0 = W[P2] (Z);
ffa02096:	10 32       	P2 = R0;
ffa02098:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa0209c:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa020a0:	00 91       	R0 = [P0];
ffa020a2:	21 32       	P4 = R1;
ffa020a4:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa020a6:	52 91       	P2 = [P2];
ffa020a8:	08 30       	R1 = R0;
ffa020aa:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa020ac:	80 67       	R0 += -0x10;		/* (-16) */
ffa020ae:	95 ad       	P5 = [P2 + 0x18];
ffa020b0:	00 93       	[P0] = R0;
ffa020b2:	02 30       	R0 = R2;
ffa020b4:	55 32       	P2 = P5;
ffa020b6:	11 96       	W[P2++] = R1;
ffa020b8:	4a 30       	R1 = P2;
ffa020ba:	00 e3 ab 07 	CALL 0xffa03010 <_ARP_req>;
ffa020be:	00 0c       	CC = R0 == 0x0;
ffa020c0:	2b 18       	IF CC JUMP 0xffa02116 <_eth_header_setup+0x92>;
ffa020c2:	00 00       	NOP;
ffa020c4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa020c8:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_NetOurMAC> */
ffa020cc:	50 99       	R0 = B[P2] (X);
ffa020ce:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa020d2:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa020d6:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa020da:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa020de:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa020e2:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa020e6:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa020ea:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa020ee:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa020f2:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa020f6:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa020fa:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa020fe:	ff e3 7d fb 	CALL 0xffa017f8 <_htons>;
ffa02102:	e8 b5       	W[P5 + 0xe] = R0;
ffa02104:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02106:	20 9b       	B[P4] = R0;
ffa02108:	4d 30       	R1 = P5;
ffa0210a:	81 64       	R1 += 0x10;		/* ( 16) */
ffa0210c:	01 e8 00 00 	UNLINK;
ffa02110:	01 30       	R0 = R1;
ffa02112:	84 04       	(P5:4) = [SP++];
ffa02114:	10 00       	RTS;
ffa02116:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02118:	20 9b       	B[P4] = R0;
ffa0211a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0211c:	01 e8 00 00 	UNLINK;
ffa02120:	01 30       	R0 = R1;
ffa02122:	84 04       	(P5:4) = [SP++];
ffa02124:	10 00       	RTS;
	...

ffa02128 <_icmp_packet_setup>:
ffa02128:	e4 05       	[--SP] = (R7:4, P5:4);
ffa0212a:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0212e:	29 32       	P5 = R1;
ffa02130:	7f 30       	R7 = FP;
ffa02132:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02134:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02136:	f0 bb       	[FP -0x4] = R0;
ffa02138:	07 30       	R0 = R7;
ffa0213a:	22 32       	P4 = R2;
ffa0213c:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa02140:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa02144:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa02148:	ff e3 9e ff 	CALL 0xffa02084 <_eth_header_setup>;
ffa0214c:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa02150:	68 99 00 00 
ffa02154:	80 0c       	CC = R0 < 0x0;
ffa02156:	14 18       	IF CC JUMP 0xffa0217e <_icmp_packet_setup+0x56>;
ffa02158:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0215a:	f0 b0       	[SP + 0xc] = R0;
ffa0215c:	54 30       	R2 = P4;
ffa0215e:	01 30       	R0 = R1;
ffa02160:	0f 30       	R1 = R7;
ffa02162:	ff e3 7f fb 	CALL 0xffa01860 <_ip_header_setup>;
ffa02166:	e9 42       	R1 = R5.L (Z);
ffa02168:	f1 b0       	[SP + 0xc] = R1;
ffa0216a:	e1 42       	R1 = R4.L (Z);
ffa0216c:	31 b1       	[SP + 0x10] = R1;
ffa0216e:	72 43       	R2 = R6.B (Z);
ffa02170:	0f 30       	R1 = R7;
ffa02172:	ff e3 c1 fb 	CALL 0xffa018f4 <_icmp_header_setup>;
ffa02176:	01 e8 00 00 	UNLINK;
ffa0217a:	a4 05       	(R7:4, P5:4) = [SP++];
ffa0217c:	10 00       	RTS;
ffa0217e:	01 e8 00 00 	UNLINK;
ffa02182:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02184:	a4 05       	(R7:4, P5:4) = [SP++];
ffa02186:	10 00       	RTS;

ffa02188 <_icmp_rx>:
ffa02188:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0218a:	28 32       	P5 = R0;
ffa0218c:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02190:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02194:	39 30       	R7 = R1;
ffa02196:	ff e3 31 fb 	CALL 0xffa017f8 <_htons>;
ffa0219a:	c0 42       	R0 = R0.L (Z);
ffa0219c:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa0219e:	01 08       	CC = R1 == R0;
ffa021a0:	06 18       	IF CC JUMP 0xffa021ac <_icmp_rx+0x24>;
ffa021a2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa021a4:	01 e8 00 00 	UNLINK;
ffa021a8:	bd 05       	(R7:7, P5:5) = [SP++];
ffa021aa:	10 00       	RTS;
ffa021ac:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa021ae:	07 0a       	CC = R7 <= R0 (IU);
ffa021b0:	f9 1b       	IF CC JUMP 0xffa021a2 <_icmp_rx+0x1a>;
ffa021b2:	00 00       	NOP;
ffa021b4:	00 00       	NOP;
ffa021b6:	00 00       	NOP;
ffa021b8:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa021bc:	08 0c       	CC = R0 == 0x1;
ffa021be:	f2 17       	IF !CC JUMP 0xffa021a2 <_icmp_rx+0x1a> (BP);
ffa021c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_NetOurMAC> */
ffa021c4:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa021c8:	28 a2       	R0 = [P5 + 0x20];
ffa021ca:	11 91       	R1 = [P2];
ffa021cc:	08 08       	CC = R0 == R1;
ffa021ce:	ea 17       	IF !CC JUMP 0xffa021a2 <_icmp_rx+0x1a> (BP);
ffa021d0:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa021d4:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa021d8:	08 08       	CC = R0 == R1;
ffa021da:	3e 18       	IF CC JUMP 0xffa02256 <_icmp_rx+0xce>;
ffa021dc:	00 00       	NOP;
ffa021de:	00 00       	NOP;
ffa021e0:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa021e2:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa021e6:	08 08       	CC = R0 == R1;
ffa021e8:	dd 17       	IF !CC JUMP 0xffa021a2 <_icmp_rx+0x1a> (BP);
ffa021ea:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa021ee:	e9 a1       	R1 = [P5 + 0x1c];
ffa021f0:	00 e1 34 02 	R0.L = 0x234;		/* (564)	R0=0xff900234(-7339468) */
ffa021f4:	ff e3 fa f4 	CALL 0xffa00be8 <_printf_ip>;
ffa021f8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa021fc:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa02200:	e8 a1       	R0 = [P5 + 0x1c];
ffa02202:	4d 30       	R1 = P5;
ffa02204:	10 93       	[P2] = R0;
ffa02206:	41 64       	R1 += 0x8;		/* (  8) */
ffa02208:	00 e3 06 05 	CALL 0xffa02c14 <_ARP_lut_add>;
ffa0220c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900234(-7339468) */
ffa02210:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa02214:	ff e3 86 f3 	CALL 0xffa00920 <_printf_str>;
ffa02218:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa0221c:	ea a1 00 00 
ffa02220:	f0 b0       	[SP + 0xc] = R0;
ffa02222:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa02226:	30 b1       	[SP + 0x10] = R0;
ffa02228:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa0222a:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa0222e:	4f 30       	R1 = FP;
ffa02230:	70 b1       	[SP + 0x14] = R0;
ffa02232:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa02234:	07 30       	R0 = R7;
ffa02236:	ff e3 79 ff 	CALL 0xffa02128 <_icmp_packet_setup>;
ffa0223a:	08 30       	R1 = R0;
ffa0223c:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa02240:	00 0d       	CC = R0 <= 0x0;
ffa02242:	b0 1b       	IF CC JUMP 0xffa021a2 <_icmp_rx+0x1a>;
ffa02244:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa02246:	45 30       	R0 = P5;
ffa02248:	17 30       	R2 = R7;
ffa0224a:	ff e3 13 f5 	CALL 0xffa00c70 <_memcpy_>;
ffa0224e:	ff e3 7f fc 	CALL 0xffa01b4c <_bfin_EMAC_send_nocopy>;
ffa02252:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02254:	a8 2f       	JUMP.S 0xffa021a4 <_icmp_rx+0x1c>;
ffa02256:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa0225a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0225c:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa02260:	10 9b       	B[P2] = R0;
ffa02262:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02264:	a0 2f       	JUMP.S 0xffa021a4 <_icmp_rx+0x1c>;
	...

ffa02268 <_udp_packet_setup>:
ffa02268:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0226a:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa0226e:	29 32       	P5 = R1;
ffa02270:	7f 30       	R7 = FP;
ffa02272:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c2c <_txIdx> */
ffa02276:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02278:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0227a:	0c e1 64 0c 	P4.L = 0xc64;		/* (3172)	P4=0xff900c64 <_NetDataDestIP> */
ffa0227e:	f0 bb       	[FP -0x4] = R0;
ffa02280:	22 91       	R2 = [P4];
ffa02282:	07 30       	R0 = R7;
ffa02284:	ff e3 00 ff 	CALL 0xffa02084 <_eth_header_setup>;
ffa02288:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa0228c:	68 99 00 00 
ffa02290:	80 0c       	CC = R0 < 0x0;
ffa02292:	14 18       	IF CC JUMP 0xffa022ba <_udp_packet_setup+0x52>;
ffa02294:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa02296:	f0 b0       	[SP + 0xc] = R0;
ffa02298:	01 30       	R0 = R1;
ffa0229a:	22 91       	R2 = [P4];
ffa0229c:	0f 30       	R1 = R7;
ffa0229e:	ff e3 e1 fa 	CALL 0xffa01860 <_ip_header_setup>;
ffa022a2:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa022a6:	f1 b0       	[SP + 0xc] = R1;
ffa022a8:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa022ac:	0f 30       	R1 = R7;
ffa022ae:	ff e3 47 fb 	CALL 0xffa0193c <_udp_header_setup>;
ffa022b2:	01 e8 00 00 	UNLINK;
ffa022b6:	bc 05       	(R7:7, P5:4) = [SP++];
ffa022b8:	10 00       	RTS;
ffa022ba:	01 e8 00 00 	UNLINK;
ffa022be:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa022c0:	bc 05       	(R7:7, P5:4) = [SP++];
ffa022c2:	10 00       	RTS;

ffa022c4 <_SetupTxBuffer>:
ffa022c4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa022c6:	38 30       	R7 = R0;
ffa022c8:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa022cc:	c7 40       	R7 *= R0;
ffa022ce:	17 32       	P2 = R7;
ffa022d0:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800c30 */
ffa022d4:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa022d8:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa022dc:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa022e0:	6a 5b       	P5 = P2 + P5;
ffa022e2:	c7 51       	R7 = R7 + R0;
ffa022e4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa022e8:	45 30       	R0 = P5;
ffa022ea:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa022ec:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa022ee:	ff e3 d1 f4 	CALL 0xffa00c90 <_memset_>;
ffa022f2:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa022f6:	af b1 00 00 
ffa022fa:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa022fe:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa02302:	ff e3 c7 f4 	CALL 0xffa00c90 <_memset_>;
ffa02306:	45 30       	R0 = P5;
ffa02308:	60 64       	R0 += 0xc;		/* ( 12) */
ffa0230a:	28 93       	[P5] = R0;
ffa0230c:	a8 a1       	R0 = [P5 + 0x18];
ffa0230e:	68 b0       	[P5 + 0x4] = R0;
ffa02310:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa02314:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02316:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa02318:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa0231a:	10 54       	R0 = R0 & R2;
ffa0231c:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa0231e:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa02322:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa02324:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa02328:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa0232a:	18 54       	R0 = R0 & R3;
ffa0232c:	08 56       	R0 = R0 | R1;
ffa0232e:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa02332:	08 56       	R0 = R0 | R1;
ffa02334:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02338:	45 30       	R0 = P5;
ffa0233a:	40 65       	R0 += 0x28;		/* ( 40) */
ffa0233c:	28 b1       	[P5 + 0x10] = R0;
ffa0233e:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa02342:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa02344:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa02346:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa0234a:	10 54       	R0 = R0 & R2;
ffa0234c:	08 56       	R0 = R0 | R1;
ffa0234e:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa02352:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa02356:	18 54       	R0 = R0 & R3;
ffa02358:	39 64       	R1 += 0x7;		/* (  7) */
ffa0235a:	08 54       	R0 = R0 & R1;
ffa0235c:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02360:	ed bc       	[P5 + 0xc] = P5;
ffa02362:	01 e8 00 00 	UNLINK;
ffa02366:	45 30       	R0 = P5;
ffa02368:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0236a:	10 00       	RTS;

ffa0236c <_SetupRxBuffer>:
ffa0236c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0236e:	38 30       	R7 = R0;
ffa02370:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa02374:	c7 40       	R7 *= R0;
ffa02376:	17 32       	P2 = R7;
ffa02378:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa0237c:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa02380:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa02384:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa02388:	6a 5b       	P5 = P2 + P5;
ffa0238a:	c7 51       	R7 = R7 + R0;
ffa0238c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02390:	45 30       	R0 = P5;
ffa02392:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02394:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa02396:	ff e3 7d f4 	CALL 0xffa00c90 <_memset_>;
ffa0239a:	af b1       	[P5 + 0x18] = R7;
ffa0239c:	07 30       	R0 = R7;
ffa0239e:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa023a2:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa023a6:	ff e3 75 f4 	CALL 0xffa00c90 <_memset_>;
ffa023aa:	45 30       	R0 = P5;
ffa023ac:	60 64       	R0 += 0xc;		/* ( 12) */
ffa023ae:	28 93       	[P5] = R0;
ffa023b0:	a8 a1       	R0 = [P5 + 0x18];
ffa023b2:	68 b0       	[P5 + 0x4] = R0;
ffa023b4:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa023b8:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa023ba:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa023bc:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa023be:	08 54       	R0 = R0 & R1;
ffa023c0:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa023c2:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa023c6:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa023c8:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa023cc:	38 54       	R0 = R0 & R7;
ffa023ce:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa023d0:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa023d4:	18 56       	R0 = R0 | R3;
ffa023d6:	10 56       	R0 = R0 | R2;
ffa023d8:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa023dc:	45 30       	R0 = P5;
ffa023de:	20 65       	R0 += 0x24;		/* ( 36) */
ffa023e0:	28 b1       	[P5 + 0x10] = R0;
ffa023e2:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa023e6:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa023e8:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa023ea:	08 54       	R0 = R0 & R1;
ffa023ec:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa023f0:	08 56       	R0 = R0 | R1;
ffa023f2:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa023f6:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa023fa:	38 54       	R0 = R0 & R7;
ffa023fc:	18 56       	R0 = R0 | R3;
ffa023fe:	10 56       	R0 = R0 | R2;
ffa02400:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02404:	ed bc       	[P5 + 0xc] = P5;
ffa02406:	01 e8 00 00 	UNLINK;
ffa0240a:	45 30       	R0 = P5;
ffa0240c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0240e:	10 00       	RTS;

ffa02410 <_SetupSystemRegs>:
ffa02410:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02412:	28 32       	P5 = R0;
ffa02414:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa02418:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0241c:	00 e1 50 02 	R0.L = 0x250;		/* (592)	R0=0xff900250(-7339440) */
ffa02420:	ff e3 80 f2 	CALL 0xffa00920 <_printf_str>;
ffa02424:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bb8(-4191304) */
ffa02428:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa0242c:	50 95       	R0 = W[P2] (X);
ffa0242e:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa02432:	08 54       	R0 = R0 & R1;
ffa02434:	10 97       	W[P2] = R0;
ffa02436:	50 95       	R0 = W[P2] (X);
ffa02438:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa0243a:	10 97       	W[P2] = R0;
ffa0243c:	82 6f       	P2 += -0x10;		/* (-16) */
ffa0243e:	51 95       	R1 = W[P2] (X);
ffa02440:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa02444:	08 56       	R0 = R0 | R1;
ffa02446:	10 97       	W[P2] = R0;
ffa02448:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0244a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0244c:	10 97       	W[P2] = R0;
ffa0244e:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa02450:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa02452:	10 97       	W[P2] = R0;
ffa02454:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa02458:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa0245c:	50 95       	R0 = W[P2] (X);
ffa0245e:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa02460:	10 97       	W[P2] = R0;
ffa02462:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa02466:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa0246a:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa0246e:	10 93       	[P2] = R0;
ffa02470:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02472:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa02476:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02478:	ff e3 4c f9 	CALL 0xffa01710 <_WrPHYReg>;
ffa0247c:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02480:	ff e3 e6 f5 	CALL 0xffa0104c <_udelay>;
ffa02484:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02486:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02488:	ff e3 60 f9 	CALL 0xffa01748 <_RdPHYReg>;
ffa0248c:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0248e:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa02490:	0e 20       	JUMP.S 0xffa024ac <_SetupSystemRegs+0x9c>;
ffa02492:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02496:	ff e3 db f5 	CALL 0xffa0104c <_udelay>;
ffa0249a:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0249c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0249e:	ff e3 55 f9 	CALL 0xffa01748 <_RdPHYReg>;
ffa024a2:	0f 64       	R7 += 0x1;		/* (  1) */
ffa024a4:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa024a8:	0f 08       	CC = R7 == R1;
ffa024aa:	35 18       	IF CC JUMP 0xffa02514 <_SetupSystemRegs+0x104>;
ffa024ac:	06 54       	R0 = R6 & R0;
ffa024ae:	00 0c       	CC = R0 == 0x0;
ffa024b0:	f1 1f       	IF CC JUMP 0xffa02492 <_SetupSystemRegs+0x82> (BP);
ffa024b2:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa024b4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024b6:	ff e3 49 f9 	CALL 0xffa01748 <_RdPHYReg>;
ffa024ba:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa024be:	01 54       	R0 = R1 & R0;
ffa024c0:	00 0c       	CC = R0 == 0x0;
ffa024c2:	27 1c       	IF CC JUMP 0xffa02510 <_SetupSystemRegs+0x100> (BP);
ffa024c4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa024c6:	d0 4f       	R0 <<= 0x1a;
ffa024c8:	28 93       	[P5] = R0;
ffa024ca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa024ce:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa024d0:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa024d4:	10 93       	[P2] = R0;
ffa024d6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa024da:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024dc:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa024e0:	10 97       	W[P2] = R0;
ffa024e2:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa024e4:	22 6c       	P2 += 0x4;		/* (  4) */
ffa024e6:	11 97       	W[P2] = R1;
ffa024e8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa024ea:	10 97       	W[P2] = R0;
ffa024ec:	22 6c       	P2 += 0x4;		/* (  4) */
ffa024ee:	10 97       	W[P2] = R0;
ffa024f0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa024f4:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa024f8:	10 97       	W[P2] = R0;
ffa024fa:	22 6c       	P2 += 0x4;		/* (  4) */
ffa024fc:	11 97       	W[P2] = R1;
ffa024fe:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02500:	10 97       	W[P2] = R0;
ffa02502:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02504:	10 97       	W[P2] = R0;
ffa02506:	01 e8 00 00 	UNLINK;
ffa0250a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0250c:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0250e:	10 00       	RTS;
ffa02510:	28 93       	[P5] = R0;
ffa02512:	dc 2f       	JUMP.S 0xffa024ca <_SetupSystemRegs+0xba>;
ffa02514:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02518:	00 e1 68 02 	R0.L = 0x268;		/* (616)	R0=0xff900268(-7339416) */
ffa0251c:	ff e3 02 f2 	CALL 0xffa00920 <_printf_str>;
ffa02520:	01 e8 00 00 	UNLINK;
ffa02524:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02526:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02528:	10 00       	RTS;
	...

ffa0252c <_SetupMacAddr>:
ffa0252c:	10 32       	P2 = R0;
ffa0252e:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02530:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02532:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02536:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa0253a:	10 9b       	B[P2] = R0;
ffa0253c:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa0253e:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa02542:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa02544:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa02548:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa0254a:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa0254e:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa02552:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02556:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa02558:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa0255c:	10 99       	R0 = B[P2] (Z);
ffa0255e:	08 56       	R0 = R0 | R1;
ffa02560:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa02564:	89 4f       	R1 <<= 0x11;
ffa02566:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c30(-4191184) */
ffa0256a:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa0256e:	08 56       	R0 = R0 | R1;
ffa02570:	08 93       	[P1] = R0;
ffa02572:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02576:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa0257a:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa0257e:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa02580:	28 93       	[P5] = R0;
ffa02582:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa02586:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa0258a:	09 91       	R1 = [P1];
ffa0258c:	07 e1 6c 0a 	R7.L = 0xa6c;		/* (2668)	R7=0xff900a6c(-7337364) */
ffa02590:	00 e1 9c 02 	R0.L = 0x29c;		/* (668)	R0=0xff90029c(-7339364) */
ffa02594:	ff e3 2c f2 	CALL 0xffa009ec <_printf_hex>;
ffa02598:	07 30       	R0 = R7;
ffa0259a:	ff e3 c3 f1 	CALL 0xffa00920 <_printf_str>;
ffa0259e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90029c(-7339364) */
ffa025a2:	29 91       	R1 = [P5];
ffa025a4:	00 e1 a8 02 	R0.L = 0x2a8;		/* (680)	R0=0xff9002a8(-7339352) */
ffa025a8:	ff e3 22 f2 	CALL 0xffa009ec <_printf_hex>;
ffa025ac:	01 e8 00 00 	UNLINK;
ffa025b0:	07 30       	R0 = R7;
ffa025b2:	bd 05       	(R7:7, P5:5) = [SP++];
ffa025b4:	ff e2 b6 f1 	JUMP.L 0xffa00920 <_printf_str>;

ffa025b8 <_bfin_EMAC_init>:
ffa025b8:	f3 05       	[--SP] = (R7:6, P5:3);
ffa025ba:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002a8(-7339352) */
ffa025be:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa025c2:	00 e1 b4 02 	R0.L = 0x2b4;		/* (692)	R0=0xff9002b4(-7339340) */
ffa025c6:	ff e3 ad f1 	CALL 0xffa00920 <_printf_str>;
ffa025ca:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 */
ffa025ce:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa025d0:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa025d4:	16 97       	W[P2] = R6;
ffa025d6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa025da:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_rxIdx> */
ffa025de:	16 97       	W[P2] = R6;
ffa025e0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_rxIdx> */
ffa025e4:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa025e8:	16 97       	W[P2] = R6;
ffa025ea:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2e <_NetIPID> */
ffa025ee:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa025f0:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetSubnetMask> */
ffa025f4:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa025f6:	17 93       	[P2] = R7;
ffa025f8:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa025fc:	f0 b0       	[SP + 0xc] = R0;
ffa025fe:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02600:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02604:	ff e3 50 f8 	CALL 0xffa016a4 <_FormatIPAddress>;
ffa02608:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_NetSubnetMask> */
ffa0260c:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa02610:	10 93       	[P2] = R0;
ffa02612:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02614:	f0 b0       	[SP + 0xc] = R0;
ffa02616:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa0261a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0261c:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02620:	ff e3 42 f8 	CALL 0xffa016a4 <_FormatIPAddress>;
ffa02624:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa02628:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa0262c:	10 93       	[P2] = R0;
ffa0262e:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa02630:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa02632:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa02636:	f0 b0       	[SP + 0xc] = R0;
ffa02638:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa0263c:	ff e3 34 f8 	CALL 0xffa016a4 <_FormatIPAddress>;
ffa02640:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa02644:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa02648:	10 93       	[P2] = R0;
ffa0264a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa0264e:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa02652:	17 93       	[P2] = R7;
ffa02654:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa02658:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa0265c:	17 93       	[P2] = R7;
ffa0265e:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa02662:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa02666:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa0266a:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa0266e:	10 93       	[P2] = R0;
ffa02670:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa02674:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa02678:	16 97       	W[P2] = R6;
ffa0267a:	00 e3 7f 02 	CALL 0xffa02b78 <_ARP_init>;
ffa0267e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa02682:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02686:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa0268a:	17 93       	[P2] = R7;
ffa0268c:	00 e1 54 0c 	R0.L = 0xc54;		/* (3156)	R0=0xff900c54 <_NetOurMAC>(-7336876) */
ffa02690:	ff e3 4e ff 	CALL 0xffa0252c <_SetupMacAddr>;
ffa02694:	47 30       	R0 = FP;
ffa02696:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa02698:	ff e3 bc fe 	CALL 0xffa02410 <_SetupSystemRegs>;
ffa0269c:	80 0c       	CC = R0 < 0x0;
ffa0269e:	7a 18       	IF CC JUMP 0xffa02792 <_bfin_EMAC_init+0x1da>;
ffa026a0:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa026a4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026a6:	07 e1 44 0c 	R7.L = 0xc44;		/* (3140)	R7=0xff900c44 <_rxbuf>(-7336892) */
ffa026aa:	ff e3 61 fe 	CALL 0xffa0236c <_SetupRxBuffer>;
ffa026ae:	07 32       	P0 = R7;
ffa026b0:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa026b2:	00 93       	[P0] = R0;
ffa026b4:	17 32       	P2 = R7;
ffa026b6:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa026b8:	44 30       	R0 = P4;
ffa026ba:	ff e3 59 fe 	CALL 0xffa0236c <_SetupRxBuffer>;
ffa026be:	44 0c       	CC = P4 == 0x0;
ffa026c0:	08 32       	P1 = R0;
ffa026c2:	28 92       	[P5++] = R0;
ffa026c4:	52 18       	IF CC JUMP 0xffa02768 <_bfin_EMAC_init+0x1b0>;
ffa026c6:	07 32       	P0 = R7;
ffa026c8:	5c 0c       	CC = P4 == 0x3;
ffa026ca:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa026cc:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa026d0:	d0 b0       	[P2 + 0xc] = R0;
ffa026d2:	54 18       	IF CC JUMP 0xffa0277a <_bfin_EMAC_init+0x1c2>;
ffa026d4:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa026d6:	5c 0d       	CC = P4 <= 0x3;
ffa026d8:	ee 1f       	IF CC JUMP 0xffa026b4 <_bfin_EMAC_init+0xfc> (BP);
ffa026da:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026dc:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa026e0:	ff e3 f2 fd 	CALL 0xffa022c4 <_SetupTxBuffer>;
ffa026e4:	0b e1 30 0c 	P3.L = 0xc30;		/* (3120)	P3=0xff900c30 <_txbuf> */
ffa026e8:	18 93       	[P3] = R0;
ffa026ea:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa026ec:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa026ee:	44 30       	R0 = P4;
ffa026f0:	ff e3 ea fd 	CALL 0xffa022c4 <_SetupTxBuffer>;
ffa026f4:	44 0c       	CC = P4 == 0x0;
ffa026f6:	08 32       	P1 = R0;
ffa026f8:	28 92       	[P5++] = R0;
ffa026fa:	35 18       	IF CC JUMP 0xffa02764 <_bfin_EMAC_init+0x1ac>;
ffa026fc:	00 00       	NOP;
ffa026fe:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa02700:	5c 0c       	CC = P4 == 0x3;
ffa02702:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa02706:	d0 b0       	[P2 + 0xc] = R0;
ffa02708:	32 18       	IF CC JUMP 0xffa0276c <_bfin_EMAC_init+0x1b4>;
ffa0270a:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa0270c:	5c 0d       	CC = P4 <= 0x3;
ffa0270e:	ef 1f       	IF CC JUMP 0xffa026ec <_bfin_EMAC_init+0x134> (BP);
ffa02710:	17 32       	P2 = R7;
ffa02712:	51 91       	P1 = [P2];
ffa02714:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa02718:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa0271c:	51 93       	[P2] = P1;
ffa0271e:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa02720:	42 6c       	P2 += 0x8;		/* (  8) */
ffa02722:	10 97       	W[P2] = R0;
ffa02724:	ff e3 e8 f7 	CALL 0xffa016f4 <_PollMdcDone>;
ffa02728:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa0272a:	f0 b9       	R0 = [FP -0x4];
ffa0272c:	d1 4f       	R1 <<= 0x1a;
ffa0272e:	08 08       	CC = R0 == R1;
ffa02730:	2c 18       	IF CC JUMP 0xffa02788 <_bfin_EMAC_init+0x1d0>;
ffa02732:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02736:	01 30       	R0 = R1;
ffa02738:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa0273c:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02740:	10 93       	[P2] = R0;
ffa02742:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02746:	00 e1 c4 02 	R0.L = 0x2c4;		/* (708)	R0=0xff9002c4(-7339324) */
ffa0274a:	ff e3 51 f1 	CALL 0xffa009ec <_printf_hex>;
ffa0274e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002c4(-7339324) */
ffa02752:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa02756:	ff e3 e5 f0 	CALL 0xffa00920 <_printf_str>;
ffa0275a:	01 e8 00 00 	UNLINK;
ffa0275e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02760:	b3 05       	(R7:6, P5:3) = [SP++];
ffa02762:	10 00       	RTS;
ffa02764:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02766:	c4 2f       	JUMP.S 0xffa026ee <_bfin_EMAC_init+0x136>;
ffa02768:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa0276a:	a7 2f       	JUMP.S 0xffa026b8 <_bfin_EMAC_init+0x100>;
ffa0276c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa02770:	0a e1 30 0c 	P2.L = 0xc30;		/* (3120)	P2=0xff900c30 <_txbuf> */
ffa02774:	10 91       	R0 = [P2];
ffa02776:	c8 b0       	[P1 + 0xc] = R0;
ffa02778:	cc 2f       	JUMP.S 0xffa02710 <_bfin_EMAC_init+0x158>;
ffa0277a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c30 <_txbuf> */
ffa0277e:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_rxbuf> */
ffa02782:	10 91       	R0 = [P2];
ffa02784:	c8 b0       	[P1 + 0xc] = R0;
ffa02786:	aa 2f       	JUMP.S 0xffa026da <_bfin_EMAC_init+0x122>;
ffa02788:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa0278c:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa0278e:	01 30       	R0 = R1;
ffa02790:	d4 2f       	JUMP.S 0xffa02738 <_bfin_EMAC_init+0x180>;
ffa02792:	01 e8 00 00 	UNLINK;
ffa02796:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02798:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0279a:	10 00       	RTS;

ffa0279c <_bfin_EMAC_recv_poll>:
ffa0279c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0279e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa027a2:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa027a6:	0d e1 44 0c 	P5.L = 0xc44;		/* (3140)	P5=0xff900c44 <_rxbuf> */
ffa027aa:	0c e1 40 0c 	P4.L = 0xc40;		/* (3136)	P4=0xff900c40 <_rxIdx> */
ffa027ae:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa027b2:	28 30       	R5 = R0;
ffa027b4:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa027b6:	75 30       	R6 = P5;
ffa027b8:	5c 32       	P3 = P4;
ffa027ba:	06 20       	JUMP.S 0xffa027c6 <_bfin_EMAC_recv_poll+0x2a>;
ffa027bc:	0f 64       	R7 += 0x1;		/* (  1) */
ffa027be:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa027c2:	07 08       	CC = R7 == R0;
ffa027c4:	0c 18       	IF CC JUMP 0xffa027dc <_bfin_EMAC_recv_poll+0x40>;
ffa027c6:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa027ca:	ff e3 41 f4 	CALL 0xffa0104c <_udelay>;
ffa027ce:	20 95       	R0 = W[P4] (Z);
ffa027d0:	10 32       	P2 = R0;
ffa027d2:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa027d4:	52 91       	P2 = [P2];
ffa027d6:	90 a2       	R0 = [P2 + 0x28];
ffa027d8:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa027da:	f1 1f       	IF CC JUMP 0xffa027bc <_bfin_EMAC_recv_poll+0x20> (BP);
ffa027dc:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa027e0:	91 a2       	R1 = [P2 + 0x28];
ffa027e2:	41 54       	R1 = R1 & R0;
ffa027e4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa027e6:	01 09       	CC = R1 <= R0;
ffa027e8:	07 10       	IF !CC JUMP 0xffa027f6 <_bfin_EMAC_recv_poll+0x5a>;
ffa027ea:	01 e8 00 00 	UNLINK;
ffa027ee:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa027f0:	07 30       	R0 = R7;
ffa027f2:	a3 05       	(R7:4, P5:3) = [SP++];
ffa027f4:	10 00       	RTS;
ffa027f6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa027f8:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa027fc:	90 b2 00 00 
ffa02800:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02802:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02806:	0f 30       	R1 = R7;
ffa02808:	00 e1 d0 02 	R0.L = 0x2d0;		/* (720)	R0=0xff9002d0(-7339312) */
ffa0280c:	ff e3 4c f1 	CALL 0xffa00aa4 <_printf_int>;
ffa02810:	18 95       	R0 = W[P3] (Z);
ffa02812:	10 32       	P2 = R0;
ffa02814:	0e 32       	P1 = R6;
ffa02816:	0f 30       	R1 = R7;
ffa02818:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa0281a:	52 91       	P2 = [P2];
ffa0281c:	90 a1       	R0 = [P2 + 0x18];
ffa0281e:	15 32       	P2 = R5;
ffa02820:	10 93       	[P2] = R0;
ffa02822:	00 e3 5f 02 	CALL 0xffa02ce0 <_ARP_rx>;
ffa02826:	00 0c       	CC = R0 == 0x0;
ffa02828:	1f 18       	IF CC JUMP 0xffa02866 <_bfin_EMAC_recv_poll+0xca>;
ffa0282a:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa0282c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02830:	20 95       	R0 = W[P4] (Z);
ffa02832:	10 32       	P2 = R0;
ffa02834:	61 95       	R1 = W[P4] (X);
ffa02836:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02838:	09 e1 40 0c 	P1.L = 0xc40;		/* (3136)	P1=0xff900c40 <_rxIdx> */
ffa0283c:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa0283e:	52 91       	P2 = [P2];
ffa02840:	90 b2       	[P2 + 0x28] = R0;
ffa02842:	c8 42       	R0 = R1.L (Z);
ffa02844:	10 0d       	CC = R0 <= 0x2;
ffa02846:	08 1c       	IF CC JUMP 0xffa02856 <_bfin_EMAC_recv_poll+0xba> (BP);
ffa02848:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0284a:	08 97       	W[P1] = R0;
ffa0284c:	01 e8 00 00 	UNLINK;
ffa02850:	07 30       	R0 = R7;
ffa02852:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02854:	10 00       	RTS;
ffa02856:	01 30       	R0 = R1;
ffa02858:	08 64       	R0 += 0x1;		/* (  1) */
ffa0285a:	08 97       	W[P1] = R0;
ffa0285c:	01 e8 00 00 	UNLINK;
ffa02860:	07 30       	R0 = R7;
ffa02862:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02864:	10 00       	RTS;
ffa02866:	0d 32       	P1 = R5;
ffa02868:	0f 30       	R1 = R7;
ffa0286a:	08 91       	R0 = [P1];
ffa0286c:	ff e3 8e fc 	CALL 0xffa02188 <_icmp_rx>;
ffa02870:	00 0c       	CC = R0 == 0x0;
ffa02872:	dd 1f       	IF CC JUMP 0xffa0282c <_bfin_EMAC_recv_poll+0x90> (BP);
ffa02874:	db 2f       	JUMP.S 0xffa0282a <_bfin_EMAC_recv_poll+0x8e>;
	...

ffa02878 <_DHCP_rx>:
ffa02878:	ed 05       	[--SP] = (R7:5, P5:5);
ffa0287a:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa0287e:	6f 30       	R5 = FP;
ffa02880:	e5 67       	R5 += -0x4;		/* ( -4) */
ffa02882:	01 20       	JUMP.S 0xffa02884 <_DHCP_rx+0xc>;
ffa02884:	05 30       	R0 = R5;
ffa02886:	ff e3 8b ff 	CALL 0xffa0279c <_bfin_EMAC_recv_poll>;
ffa0288a:	38 30       	R7 = R0;
ffa0288c:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa02890:	87 51       	R6 = R7 + R0;
ffa02892:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa02896:	00 e1 10 03 	R0.L = 0x310;		/* (784)	R0=0xff900310(-7339248) */
ffa0289a:	0e 30       	R1 = R6;
ffa0289c:	ff e3 04 f1 	CALL 0xffa00aa4 <_printf_int>;
ffa028a0:	20 e1 1b 01 	R0 = 0x11b (X);		/*		R0=0x11b(283) */
ffa028a4:	07 09       	CC = R7 <= R0;
ffa028a6:	fd b9       	P5 = [FP -0x4];
ffa028a8:	0c 18       	IF CC JUMP 0xffa028c0 <_DHCP_rx+0x48>;
ffa028aa:	00 00       	NOP;
ffa028ac:	00 00       	NOP;
ffa028ae:	00 00       	NOP;
ffa028b0:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa028b2:	ff e3 a3 f7 	CALL 0xffa017f8 <_htons>;
ffa028b6:	c0 42       	R0 = R0.L (Z);
ffa028b8:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa028bc:	08 08       	CC = R0 == R1;
ffa028be:	08 18       	IF CC JUMP 0xffa028ce <_DHCP_rx+0x56>;
ffa028c0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011b(-7339749) */
ffa028c4:	00 e1 f4 02 	R0.L = 0x2f4;		/* (756)	R0=0xff9002f4(-7339276) */
ffa028c8:	ff e3 2c f0 	CALL 0xffa00920 <_printf_str>;
ffa028cc:	dc 2f       	JUMP.S 0xffa02884 <_DHCP_rx+0xc>;
ffa028ce:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa028d2:	ff e3 93 f7 	CALL 0xffa017f8 <_htons>;
ffa028d6:	c0 42       	R0 = R0.L (Z);
ffa028d8:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa028dc:	01 08       	CC = R1 == R0;
ffa028de:	d3 17       	IF !CC JUMP 0xffa02884 <_DHCP_rx+0xc> (BP);
ffa028e0:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa028e4:	ff e3 8a f7 	CALL 0xffa017f8 <_htons>;
ffa028e8:	c0 42       	R0 = R0.L (Z);
ffa028ea:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa028ee:	01 08       	CC = R1 == R0;
ffa028f0:	ca 17       	IF !CC JUMP 0xffa02884 <_DHCP_rx+0xc> (BP);
ffa028f2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c44(-4191164) */
ffa028f6:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa028fa:	11 91       	R1 = [P2];
ffa028fc:	28 a3       	R0 = [P5 + 0x30];
ffa028fe:	08 08       	CC = R0 == R1;
ffa02900:	c2 17       	IF !CC JUMP 0xffa02884 <_DHCP_rx+0xc> (BP);
ffa02902:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa02906:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa0290a:	ff e3 83 f7 	CALL 0xffa01810 <_htonl>;
ffa0290e:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa02912:	01 08       	CC = R1 == R0;
ffa02914:	b8 17       	IF !CC JUMP 0xffa02884 <_DHCP_rx+0xc> (BP);
ffa02916:	4d 30       	R1 = P5;
ffa02918:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa0291c:	01 50       	R0 = R1 + R0;
ffa0291e:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa02922:	f0 bb 00 00 
ffa02926:	ff e3 59 f8 	CALL 0xffa019d8 <_DHCP_parse>;
ffa0292a:	e9 a3       	R1 = [P5 + 0x3c];
ffa0292c:	01 0c       	CC = R1 == 0x0;
ffa0292e:	12 1c       	IF CC JUMP 0xffa02952 <_DHCP_rx+0xda> (BP);
ffa02930:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa02934:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa02938:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa0293c:	11 93       	[P2] = R1;
ffa0293e:	00 e1 e4 02 	R0.L = 0x2e4;		/* (740)	R0=0xff9002e4(-7339292) */
ffa02942:	ff e3 53 f1 	CALL 0xffa00be8 <_printf_ip>;
ffa02946:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002e4(-7339292) */
ffa0294a:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa0294e:	ff e3 e9 ef 	CALL 0xffa00920 <_printf_str>;
ffa02952:	01 e8 00 00 	UNLINK;
ffa02956:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02958:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0295a:	10 00       	RTS;

ffa0295c <_DHCP_req>:
ffa0295c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0295e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c44 <_rxbuf> */
ffa02962:	0d e1 28 0c 	P5.L = 0xc28;		/* (3112)	P5=0xff900c28 <_NetDHCPserv> */
ffa02966:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02968:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0296c:	28 93       	[P5] = R0;
ffa0296e:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa02970:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa02974:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02976:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa0297a:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa0297e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02980:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa02984:	7f 30       	R7 = FP;
ffa02986:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa0298a:	00 e1 24 03 	R0.L = 0x324;		/* (804)	R0=0xff900324(-7339228) */
ffa0298e:	a7 67       	R7 += -0xc;		/* (-12) */
ffa02990:	ff e3 c8 ef 	CALL 0xffa00920 <_printf_str>;
ffa02994:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa02998:	2a 91 00 00 
ffa0299c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0299e:	ff e3 45 f9 	CALL 0xffa01c28 <_DHCP_tx>;
ffa029a2:	ff e3 6b ff 	CALL 0xffa02878 <_DHCP_rx>;
ffa029a6:	29 91       	R1 = [P5];
ffa029a8:	39 0c       	CC = R1 == -0x1;
ffa029aa:	43 18       	IF CC JUMP 0xffa02a30 <_DHCP_req+0xd4>;
ffa029ac:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa029b0:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa029b4:	10 91       	R0 = [P2];
ffa029b6:	00 0c       	CC = R0 == 0x0;
ffa029b8:	08 18       	IF CC JUMP 0xffa029c8 <_DHCP_req+0x6c>;
ffa029ba:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa029be:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetSubnetMask> */
ffa029c2:	10 91       	R0 = [P2];
ffa029c4:	00 0c       	CC = R0 == 0x0;
ffa029c6:	30 10       	IF !CC JUMP 0xffa02a26 <_DHCP_req+0xca>;
ffa029c8:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa029ca:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa029ce:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa029d0:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa029d4:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa029d6:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa029da:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa029dc:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa029e0:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa029e2:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa029e6:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa029ea:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa029ee:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa029f2:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa029f6:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa029fa:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa029fe:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02a00:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa02a04:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa02a08:	00 e1 54 03 	R0.L = 0x354;		/* (852)	R0=0xff900354(-7339180) */
ffa02a0c:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa02a10:	ff e3 88 ef 	CALL 0xffa00920 <_printf_str>;
ffa02a14:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02a16:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa02a1a:	2a 91 00 00 
ffa02a1e:	ff e3 05 f9 	CALL 0xffa01c28 <_DHCP_tx>;
ffa02a22:	ff e3 2b ff 	CALL 0xffa02878 <_DHCP_rx>;
ffa02a26:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a28:	01 e8 00 00 	UNLINK;
ffa02a2c:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02a2e:	10 00       	RTS;
ffa02a30:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02a34:	00 e1 38 03 	R0.L = 0x338;		/* (824)	R0=0xff900338(-7339208) */
ffa02a38:	ff e3 74 ef 	CALL 0xffa00920 <_printf_str>;
ffa02a3c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02a3e:	f5 2f       	JUMP.S 0xffa02a28 <_DHCP_req+0xcc>;

ffa02a40 <_bfin_EMAC_recv>:
ffa02a40:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02a42:	28 32       	P5 = R0;
ffa02a44:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c40 <_rxIdx> */
ffa02a48:	0c e1 40 0c 	P4.L = 0xc40;		/* (3136)	P4=0xff900c40 <_rxIdx> */
ffa02a4c:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00c30(-4191184) */
ffa02a50:	44 e1 c0 ff 	R4.H = 0xffc0;		/* (-64)	R4=0xffc00000(-4194304) */
ffa02a54:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02a58:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02a5a:	6c 30       	R5 = P4;
ffa02a5c:	86 60       	R6 = 0x10 (X);		/*		R6=0x10( 16) */
ffa02a5e:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa02a62:	04 e1 04 07 	R4.L = 0x704;		/* (1796)	R4=0xffc00704(-4192508) */
ffa02a66:	0f 20       	JUMP.S 0xffa02a84 <_bfin_EMAC_recv+0x44>;
ffa02a68:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a6a:	20 97       	W[P4] = R0;
ffa02a6c:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R0 = [P5] || NOP;
ffa02a70:	28 91 00 00 
ffa02a74:	00 e3 36 01 	CALL 0xffa02ce0 <_ARP_rx>;
ffa02a78:	00 0c       	CC = R0 == 0x0;
ffa02a7a:	43 18       	IF CC JUMP 0xffa02b00 <_bfin_EMAC_recv+0xc0>;
ffa02a7c:	14 32       	P2 = R4;
ffa02a7e:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02a80:	16 97       	W[P2] = R6;
ffa02a82:	01 20       	JUMP.S 0xffa02a84 <_bfin_EMAC_recv+0x44>;
ffa02a84:	0d 32       	P1 = R5;
ffa02a86:	08 95       	R0 = W[P1] (Z);
ffa02a88:	10 32       	P2 = R0;
ffa02a8a:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c40 <_rxIdx> */
ffa02a8e:	09 e1 44 0c 	P1.L = 0xc44;		/* (3140)	P1=0xff900c44 <_rxbuf> */
ffa02a92:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02a94:	51 91       	P1 = [P2];
ffa02a96:	88 a2       	R0 = [P1 + 0x28];
ffa02a98:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02a9a:	48 18       	IF CC JUMP 0xffa02b2a <_bfin_EMAC_recv+0xea>;
ffa02a9c:	00 00       	NOP;
ffa02a9e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02aa0:	a0 4f       	R0 <<= 0x14;
ffa02aa2:	89 a2       	R1 = [P1 + 0x28];
ffa02aa4:	81 54       	R2 = R1 & R0;
ffa02aa6:	02 0c       	CC = R2 == 0x0;
ffa02aa8:	47 10       	IF !CC JUMP 0xffa02b36 <_bfin_EMAC_recv+0xf6>;
ffa02aaa:	00 00       	NOP;
ffa02aac:	00 00       	NOP;
ffa02aae:	00 00       	NOP;
ffa02ab0:	88 a2       	R0 = [P1 + 0x28];
ffa02ab2:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa02ab4:	4c 18       	IF CC JUMP 0xffa02b4c <_bfin_EMAC_recv+0x10c>;
ffa02ab6:	00 00       	NOP;
ffa02ab8:	00 00       	NOP;
ffa02aba:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02abe:	89 a2       	R1 = [P1 + 0x28];
ffa02ac0:	c1 55       	R7 = R1 & R0;
ffa02ac2:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02ac4:	07 09       	CC = R7 <= R0;
ffa02ac6:	4e 18       	IF CC JUMP 0xffa02b62 <_bfin_EMAC_recv+0x122>;
ffa02ac8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c5c(-4191140) */
ffa02acc:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa02ad0:	16 97       	W[P2] = R6;
ffa02ad2:	88 a1       	R0 = [P1 + 0x18];
ffa02ad4:	59 95       	R1 = W[P3] (X);
ffa02ad6:	28 93       	[P5] = R0;
ffa02ad8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02ada:	08 56       	R0 = R0 | R1;
ffa02adc:	18 97       	W[P3] = R0;
ffa02ade:	61 95       	R1 = W[P4] (X);
ffa02ae0:	c8 42       	R0 = R1.L (Z);
ffa02ae2:	10 0d       	CC = R0 <= 0x2;
ffa02ae4:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02ae6:	8a b2       	[P1 + 0x28] = R2;
ffa02ae8:	c0 17       	IF !CC JUMP 0xffa02a68 <_bfin_EMAC_recv+0x28> (BP);
ffa02aea:	01 30       	R0 = R1;
ffa02aec:	08 64       	R0 += 0x1;		/* (  1) */
ffa02aee:	20 97       	W[P4] = R0;
ffa02af0:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R0 = [P5] || NOP;
ffa02af4:	28 91 00 00 
ffa02af8:	00 e3 f4 00 	CALL 0xffa02ce0 <_ARP_rx>;
ffa02afc:	00 0c       	CC = R0 == 0x0;
ffa02afe:	bf 17       	IF !CC JUMP 0xffa02a7c <_bfin_EMAC_recv+0x3c> (BP);
ffa02b00:	28 91       	R0 = [P5];
ffa02b02:	0f 30       	R1 = R7;
ffa02b04:	ff e3 42 fb 	CALL 0xffa02188 <_icmp_rx>;
ffa02b08:	00 0c       	CC = R0 == 0x0;
ffa02b0a:	b9 17       	IF !CC JUMP 0xffa02a7c <_bfin_EMAC_recv+0x3c> (BP);
ffa02b0c:	28 91       	R0 = [P5];
ffa02b0e:	0f 30       	R1 = R7;
ffa02b10:	00 e3 46 04 	CALL 0xffa0339c <_tcp_rx>;
ffa02b14:	00 0c       	CC = R0 == 0x0;
ffa02b16:	b3 17       	IF !CC JUMP 0xffa02a7c <_bfin_EMAC_recv+0x3c> (BP);
ffa02b18:	0c 32       	P1 = R4;
ffa02b1a:	07 0d       	CC = R7 <= 0x0;
ffa02b1c:	0e 97       	W[P1] = R6;
ffa02b1e:	b3 1f       	IF CC JUMP 0xffa02a84 <_bfin_EMAC_recv+0x44> (BP);
ffa02b20:	01 e8 00 00 	UNLINK;
ffa02b24:	07 30       	R0 = R7;
ffa02b26:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b28:	10 00       	RTS;
ffa02b2a:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02b2c:	01 e8 00 00 	UNLINK;
ffa02b30:	07 30       	R0 = R7;
ffa02b32:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b34:	10 00       	RTS;
ffa02b36:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900003(-7340029) */
ffa02b3a:	00 e1 68 03 	R0.L = 0x368;		/* (872)	R0=0xff900368(-7339160) */
ffa02b3e:	ff e3 f1 ee 	CALL 0xffa00920 <_printf_str>;
ffa02b42:	01 e8 00 00 	UNLINK;
ffa02b46:	07 30       	R0 = R7;
ffa02b48:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b4a:	10 00       	RTS;
ffa02b4c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900368(-7339160) */
ffa02b50:	00 e1 84 03 	R0.L = 0x384;		/* (900)	R0=0xff900384(-7339132) */
ffa02b54:	ff e3 e6 ee 	CALL 0xffa00920 <_printf_str>;
ffa02b58:	01 e8 00 00 	UNLINK;
ffa02b5c:	07 30       	R0 = R7;
ffa02b5e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b60:	10 00       	RTS;
ffa02b62:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900384(-7339132) */
ffa02b66:	00 e1 98 03 	R0.L = 0x398;		/* (920)	R0=0xff900398(-7339112) */
ffa02b6a:	ff e3 db ee 	CALL 0xffa00920 <_printf_str>;
ffa02b6e:	01 e8 00 00 	UNLINK;
ffa02b72:	07 30       	R0 = R7;
ffa02b74:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b76:	10 00       	RTS;

ffa02b78 <_ARP_init>:
ffa02b78:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa02b7c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02b80:	0a e1 6c 0c 	P2.L = 0xc6c;		/* (3180)	P2=0xff900c6c <_NetArpLut> */
ffa02b84:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02b86:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b88:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02b8a:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa02b8c:	b2 e0 12 10 	LSETUP(0xffa02b90 <_ARP_init+0x18>, 0xffa02bb0 <_ARP_init+0x38>) LC1 = P1;
ffa02b90:	11 93       	[P2] = R1;
ffa02b92:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02b96:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02b9a:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa02b9e:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa02ba2:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02ba6:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02baa:	52 b5       	W[P2 + 0xa] = R2;
ffa02bac:	d1 b0       	[P2 + 0xc] = R1;
ffa02bae:	11 b1       	[P2 + 0x10] = R1;
ffa02bb0:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa02bb2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c6c <_NetArpLut> */
ffa02bb6:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02bba:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xff900c68 <_NetArpLut_age> */
ffa02bbe:	10 97       	W[P2] = R0;
ffa02bc0:	01 e8 00 00 	UNLINK;
ffa02bc4:	10 00       	RTS;
	...

ffa02bc8 <_ARP_lut_find>:
ffa02bc8:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900c2c <_txIdx> */
ffa02bcc:	08 e1 6c 0c 	P0.L = 0xc6c;		/* (3180)	P0=0xff900c6c <_NetArpLut> */
ffa02bd0:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02bd4:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02bd6:	48 32       	P1 = P0;
ffa02bd8:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02bda:	b2 e0 06 20 	LSETUP(0xffa02bde <_ARP_lut_find+0x16>, 0xffa02be6 <_ARP_lut_find+0x1e>) LC1 = P2;
ffa02bde:	08 91       	R0 = [P1];
ffa02be0:	00 0c       	CC = R0 == 0x0;
ffa02be2:	14 18       	IF CC JUMP 0xffa02c0a <_ARP_lut_find+0x42>;
ffa02be4:	0a 64       	R2 += 0x1;		/* (  1) */
ffa02be6:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02be8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa02bec:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02bee:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02bf0:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa02bf2:	09 e1 8a 0c 	P1.L = 0xc8a;		/* (3210)	P1=0xff900c8a */
ffa02bf6:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa02bf8:	b2 e0 08 20 	LSETUP(0xffa02bfc <_ARP_lut_find+0x34>, 0xffa02c08 <_ARP_lut_find+0x40>) LC1 = P2;
ffa02bfc:	08 95       	R0 = W[P1] (Z);
ffa02bfe:	03 09       	CC = R3 <= R0;
ffa02c00:	03 18       	IF CC JUMP 0xffa02c06 <_ARP_lut_find+0x3e>;
ffa02c02:	11 30       	R2 = R1;
ffa02c04:	18 30       	R3 = R0;
ffa02c06:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02c08:	09 64       	R1 += 0x1;		/* (  1) */
ffa02c0a:	02 30       	R0 = R2;
ffa02c0c:	01 e8 00 00 	UNLINK;
ffa02c10:	10 00       	RTS;
	...

ffa02c14 <_ARP_lut_add>:
ffa02c14:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02c16:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c28 <_NetDHCPserv> */
ffa02c1a:	0d e1 6c 0c 	P5.L = 0xc6c;		/* (3180)	P5=0xff900c6c <_NetArpLut> */
ffa02c1e:	31 30       	R6 = R1;
ffa02c20:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02c24:	38 30       	R7 = R0;
ffa02c26:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02c28:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa02c2a:	4d 32       	P1 = P5;
ffa02c2c:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02c2e:	00 00       	NOP;
ffa02c30:	08 91       	R0 = [P1];
ffa02c32:	07 08       	CC = R7 == R0;
ffa02c34:	11 07       	IF CC R2 = R1;
ffa02c36:	09 64       	R1 += 0x1;		/* (  1) */
ffa02c38:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa02c3a:	42 0c       	CC = P2 == 0x0;
ffa02c3c:	23 10       	IF !CC JUMP 0xffa02c82 <_ARP_lut_add+0x6e>;
ffa02c3e:	82 0c       	CC = R2 < 0x0;
ffa02c40:	25 18       	IF CC JUMP 0xffa02c8a <_ARP_lut_add+0x76>;
ffa02c42:	82 c6 12 82 	R1 = R2 << 0x2;
ffa02c46:	0a 32       	P1 = R2;
ffa02c48:	11 32       	P2 = R1;
ffa02c4a:	06 32       	P0 = R6;
ffa02c4c:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa02c4e:	6a 5a       	P1 = P2 + P5;
ffa02c50:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02c52:	0f 93       	[P1] = R7;
ffa02c54:	aa 5a       	P2 = P2 + P5;
ffa02c56:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02c58:	b2 e0 03 10 	LSETUP(0xffa02c5c <_ARP_lut_add+0x48>, 0xffa02c5e <_ARP_lut_add+0x4a>) LC1 = P1;
ffa02c5c:	40 98       	R0 = B[P0++] (X);
ffa02c5e:	10 9a       	B[P2++] = R0;
ffa02c60:	51 41       	R1 = (R1 + R2) << 0x2;
ffa02c62:	09 32       	P1 = R1;
ffa02c64:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa02c68:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xff900c68 <_NetArpLut_age> */
ffa02c6c:	50 95       	R0 = W[P2] (X);
ffa02c6e:	08 64       	R0 += 0x1;		/* (  1) */
ffa02c70:	10 97       	W[P2] = R0;
ffa02c72:	a9 5a       	P2 = P1 + P5;
ffa02c74:	50 b5       	W[P2 + 0xa] = R0;
ffa02c76:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c78:	10 b1       	[P2 + 0x10] = R0;
ffa02c7a:	01 e8 00 00 	UNLINK;
ffa02c7e:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02c80:	10 00       	RTS;
ffa02c82:	82 0c       	CC = R2 < 0x0;
ffa02c84:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02c86:	d4 1f       	IF CC JUMP 0xffa02c2e <_ARP_lut_add+0x1a> (BP);
ffa02c88:	dd 2f       	JUMP.S 0xffa02c42 <_ARP_lut_add+0x2e>;
ffa02c8a:	ff e3 9f ff 	CALL 0xffa02bc8 <_ARP_lut_find>;
ffa02c8e:	10 30       	R2 = R0;
ffa02c90:	d9 2f       	JUMP.S 0xffa02c42 <_ARP_lut_add+0x2e>;
	...

ffa02c94 <_ARP_lu>:
ffa02c94:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02c98:	c4 04       	[--SP] = (P5:4);
ffa02c9a:	09 e1 6c 0c 	P1.L = 0xc6c;		/* (3180)	P1=0xff900c6c <_NetArpLut> */
ffa02c9e:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02ca2:	10 30       	R2 = R0;
ffa02ca4:	29 32       	P5 = R1;
ffa02ca6:	61 32       	P4 = P1;
ffa02ca8:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa02caa:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02cac:	b2 e0 06 20 	LSETUP(0xffa02cb0 <_ARP_lu+0x1c>, 0xffa02cb8 <_ARP_lu+0x24>) LC1 = P2;
ffa02cb0:	08 91       	R0 = [P1];
ffa02cb2:	10 08       	CC = R0 == R2;
ffa02cb4:	08 18       	IF CC JUMP 0xffa02cc4 <_ARP_lu+0x30>;
ffa02cb6:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa02cb8:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02cba:	01 e8 00 00 	UNLINK;
ffa02cbe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02cc0:	84 04       	(P5:4) = [SP++];
ffa02cc2:	10 00       	RTS;
ffa02cc4:	08 a1       	R0 = [P1 + 0x10];
ffa02cc6:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02cc8:	f7 1f       	IF CC JUMP 0xffa02cb6 <_ARP_lu+0x22> (BP);
ffa02cca:	60 5a       	P1 = P0 + P4;
ffa02ccc:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa02cce:	b2 e0 03 20 	LSETUP(0xffa02cd2 <_ARP_lu+0x3e>, 0xffa02cd4 <_ARP_lu+0x40>) LC1 = P2;
ffa02cd2:	48 98       	R0 = B[P1++] (X);
ffa02cd4:	28 9a       	B[P5++] = R0;
ffa02cd6:	01 e8 00 00 	UNLINK;
ffa02cda:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02cdc:	84 04       	(P5:4) = [SP++];
ffa02cde:	10 00       	RTS;

ffa02ce0 <_ARP_rx>:
ffa02ce0:	fb 05       	[--SP] = (R7:7, P5:3);
ffa02ce2:	20 32       	P4 = R0;
ffa02ce4:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02ce8:	39 30       	R7 = R1;
ffa02cea:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa02cec:	ff e3 86 f5 	CALL 0xffa017f8 <_htons>;
ffa02cf0:	c0 42       	R0 = R0.L (Z);
ffa02cf2:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa02cf6:	08 08       	CC = R0 == R1;
ffa02cf8:	06 18       	IF CC JUMP 0xffa02d04 <_ARP_rx+0x24>;
ffa02cfa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02cfc:	01 e8 00 00 	UNLINK;
ffa02d00:	bb 05       	(R7:7, P5:3) = [SP++];
ffa02d02:	10 00       	RTS;
ffa02d04:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02d06:	07 0a       	CC = R7 <= R0 (IU);
ffa02d08:	f9 1f       	IF CC JUMP 0xffa02cfa <_ARP_rx+0x1a> (BP);
ffa02d0a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d0c:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02d0e:	ff e3 75 f5 	CALL 0xffa017f8 <_htons>;
ffa02d12:	c0 42       	R0 = R0.L (Z);
ffa02d14:	07 08       	CC = R7 == R0;
ffa02d16:	f2 17       	IF !CC JUMP 0xffa02cfa <_ARP_rx+0x1a> (BP);
ffa02d18:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02d1c:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02d1e:	ff e3 6d f5 	CALL 0xffa017f8 <_htons>;
ffa02d22:	c0 42       	R0 = R0.L (Z);
ffa02d24:	07 08       	CC = R7 == R0;
ffa02d26:	ea 17       	IF !CC JUMP 0xffa02cfa <_ARP_rx+0x1a> (BP);
ffa02d28:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02d2a:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02d2e:	08 08       	CC = R0 == R1;
ffa02d30:	e5 17       	IF !CC JUMP 0xffa02cfa <_ARP_rx+0x1a> (BP);
ffa02d32:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02d34:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02d36:	ff e3 61 f5 	CALL 0xffa017f8 <_htons>;
ffa02d3a:	c0 42       	R0 = R0.L (Z);
ffa02d3c:	07 08       	CC = R7 == R0;
ffa02d3e:	0c 14       	IF !CC JUMP 0xffa02d56 <_ARP_rx+0x76> (BP);
ffa02d40:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa02d44:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_NetOurMAC> */
ffa02d48:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa02d4c:	10 99       	R0 = B[P2] (Z);
ffa02d4e:	01 08       	CC = R1 == R0;
ffa02d50:	ae 18       	IF CC JUMP 0xffa02eac <_ARP_rx+0x1cc>;
ffa02d52:	00 00       	NOP;
ffa02d54:	00 00       	NOP;
ffa02d56:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d58:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02d5a:	ff e3 4f f5 	CALL 0xffa017f8 <_htons>;
ffa02d5e:	c0 42       	R0 = R0.L (Z);
ffa02d60:	07 08       	CC = R7 == R0;
ffa02d62:	cc 17       	IF !CC JUMP 0xffa02cfa <_ARP_rx+0x1a> (BP);
ffa02d64:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02d68:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02d6a:	ff e3 47 f5 	CALL 0xffa017f8 <_htons>;
ffa02d6e:	c0 42       	R0 = R0.L (Z);
ffa02d70:	07 08       	CC = R7 == R0;
ffa02d72:	c4 17       	IF !CC JUMP 0xffa02cfa <_ARP_rx+0x1a> (BP);
ffa02d74:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02d76:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02d7a:	08 08       	CC = R0 == R1;
ffa02d7c:	bf 17       	IF !CC JUMP 0xffa02cfa <_ARP_rx+0x1a> (BP);
ffa02d7e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d80:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02d82:	ff e3 3b f5 	CALL 0xffa017f8 <_htons>;
ffa02d86:	c0 42       	R0 = R0.L (Z);
ffa02d88:	07 08       	CC = R7 == R0;
ffa02d8a:	b8 17       	IF !CC JUMP 0xffa02cfa <_ARP_rx+0x1a> (BP);
ffa02d8c:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa02d90:	07 e1 60 0c 	R7.L = 0xc60;		/* (3168)	R7=0xff900c60 <_NetOurIP>(-7336864) */
ffa02d94:	17 32       	P2 = R7;
ffa02d96:	a1 a2       	R1 = [P4 + 0x28];
ffa02d98:	10 91       	R0 = [P2];
ffa02d9a:	01 08       	CC = R1 == R0;
ffa02d9c:	af 17       	IF !CC JUMP 0xffa02cfa <_ARP_rx+0x1a> (BP);
ffa02d9e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_NetOurMAC> */
ffa02da2:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa02da6:	10 95       	R0 = W[P2] (Z);
ffa02da8:	10 32       	P2 = R0;
ffa02daa:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c6c <_NetArpLut> */
ffa02dae:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa02db2:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa02db4:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c6c <_NetArpLut> */
ffa02db8:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02dba:	52 91       	P2 = [P2];
ffa02dbc:	0d e1 54 0c 	P5.L = 0xc54;		/* (3156)	P5=0xff900c54 <_NetOurMAC> */
ffa02dc0:	93 ad       	P3 = [P2 + 0x18];
ffa02dc2:	18 97       	W[P3] = R0;
ffa02dc4:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa02dc8:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa02dcc:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa02dd0:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa02dd4:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa02dd8:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa02ddc:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa02de0:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa02de4:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa02de8:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa02dec:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa02df0:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa02df4:	68 99       	R0 = B[P5] (X);
ffa02df6:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa02dfa:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02dfe:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa02e02:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02e06:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa02e0a:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02e0e:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa02e12:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02e16:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa02e1a:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02e1e:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa02e22:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02e26:	ff e3 e9 f4 	CALL 0xffa017f8 <_htons>;
ffa02e2a:	d8 b5       	W[P3 + 0xe] = R0;
ffa02e2c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e2e:	ff e3 e5 f4 	CALL 0xffa017f8 <_htons>;
ffa02e32:	18 b6       	W[P3 + 0x10] = R0;
ffa02e34:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02e38:	ff e3 e0 f4 	CALL 0xffa017f8 <_htons>;
ffa02e3c:	58 b6       	W[P3 + 0x12] = R0;
ffa02e3e:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02e40:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa02e44:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02e46:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa02e4a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02e4c:	ff e3 d6 f4 	CALL 0xffa017f8 <_htons>;
ffa02e50:	44 32       	P0 = P4;
ffa02e52:	d8 b6       	W[P3 + 0x16] = R0;
ffa02e54:	53 32       	P2 = P3;
ffa02e56:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa02e58:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02e5a:	b2 e0 08 10 	LSETUP(0xffa02e5e <_ARP_rx+0x17e>, 0xffa02e6a <_ARP_rx+0x18a>) LC1 = P1;
ffa02e5e:	68 98       	R0 = B[P5++] (X);
ffa02e60:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa02e64:	40 98       	R0 = B[P0++] (X);
ffa02e66:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa02e6a:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02e6c:	17 32       	P2 = R7;
ffa02e6e:	50 99       	R0 = B[P2] (X);
ffa02e70:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa02e74:	10 91       	R0 = [P2];
ffa02e76:	40 4e       	R0 >>= 0x8;
ffa02e78:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa02e7c:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02e80:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa02e84:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02e88:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa02e8c:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa02e90:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa02e94:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa02e98:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa02e9c:	f3 b0       	[SP + 0xc] = R3;
ffa02e9e:	ff e3 03 f4 	CALL 0xffa016a4 <_FormatIPAddress>;
ffa02ea2:	98 b2       	[P3 + 0x28] = R0;
ffa02ea4:	ff e3 54 f6 	CALL 0xffa01b4c <_bfin_EMAC_send_nocopy>;
ffa02ea8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02eaa:	29 2f       	JUMP.S 0xffa02cfc <_ARP_rx+0x1c>;
ffa02eac:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa02eb0:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa02eb4:	01 08       	CC = R1 == R0;
ffa02eb6:	50 17       	IF !CC JUMP 0xffa02d56 <_ARP_rx+0x76> (BP);
ffa02eb8:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa02ebc:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa02ec0:	01 08       	CC = R1 == R0;
ffa02ec2:	4a 17       	IF !CC JUMP 0xffa02d56 <_ARP_rx+0x76> (BP);
ffa02ec4:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa02ec8:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa02ecc:	01 08       	CC = R1 == R0;
ffa02ece:	44 17       	IF !CC JUMP 0xffa02d56 <_ARP_rx+0x76> (BP);
ffa02ed0:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa02ed4:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02ed8:	01 08       	CC = R1 == R0;
ffa02eda:	3e 17       	IF !CC JUMP 0xffa02d56 <_ARP_rx+0x76> (BP);
ffa02edc:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa02ee0:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa02ee4:	01 08       	CC = R1 == R0;
ffa02ee6:	38 17       	IF !CC JUMP 0xffa02d56 <_ARP_rx+0x76> (BP);
ffa02ee8:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa02eea:	44 30       	R0 = P4;
ffa02eec:	ff e3 a6 f4 	CALL 0xffa01838 <_pack4chars>;
ffa02ef0:	38 30       	R7 = R0;
ffa02ef2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa02ef6:	0f 30       	R1 = R7;
ffa02ef8:	00 e1 a4 04 	R0.L = 0x4a4;		/* (1188)	R0=0xff9004a4(-7338844) */
ffa02efc:	ff e3 76 ee 	CALL 0xffa00be8 <_printf_ip>;
ffa02f00:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004a4(-7338844) */
ffa02f04:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa02f08:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa02f0a:	ff e3 0b ed 	CALL 0xffa00920 <_printf_str>;
ffa02f0e:	07 30       	R0 = R7;
ffa02f10:	4c 30       	R1 = P4;
ffa02f12:	ff e3 81 fe 	CALL 0xffa02c14 <_ARP_lut_add>;
ffa02f16:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f18:	f2 2e       	JUMP.S 0xffa02cfc <_ARP_rx+0x1c>;
	...

ffa02f1c <_ARP_tx>:
ffa02f1c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa02f1e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa02f22:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02f26:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa02f2a:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa02f2e:	10 95 00 00 
ffa02f32:	10 32       	P2 = R0;
ffa02f34:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02f38:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa02f3c:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa02f3e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c54 <_NetOurMAC> */
ffa02f42:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02f44:	52 91       	P2 = [P2];
ffa02f46:	0d e1 54 0c 	P5.L = 0xc54;		/* (3156)	P5=0xff900c54 <_NetOurMAC> */
ffa02f4a:	94 ad       	P4 = [P2 + 0x18];
ffa02f4c:	20 97       	W[P4] = R0;
ffa02f4e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02f50:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa02f54:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa02f58:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa02f5c:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa02f60:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa02f64:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa02f68:	68 99       	R0 = B[P5] (X);
ffa02f6a:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa02f6e:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02f72:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa02f76:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02f7a:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa02f7e:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02f82:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa02f86:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02f8a:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa02f8e:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02f92:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa02f96:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02f9a:	ff e3 2f f4 	CALL 0xffa017f8 <_htons>;
ffa02f9e:	e0 b5       	W[P4 + 0xe] = R0;
ffa02fa0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02fa2:	ff e3 2b f4 	CALL 0xffa017f8 <_htons>;
ffa02fa6:	20 b6       	W[P4 + 0x10] = R0;
ffa02fa8:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02fac:	ff e3 26 f4 	CALL 0xffa017f8 <_htons>;
ffa02fb0:	60 b6       	W[P4 + 0x12] = R0;
ffa02fb2:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02fb4:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa02fb8:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02fba:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa02fbe:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02fc0:	ff e3 1c f4 	CALL 0xffa017f8 <_htons>;
ffa02fc4:	e0 b6       	W[P4 + 0x16] = R0;
ffa02fc6:	54 32       	P2 = P4;
ffa02fc8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02fca:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02fcc:	b2 e0 07 10 	LSETUP(0xffa02fd0 <_ARP_tx+0xb4>, 0xffa02fda <_ARP_tx+0xbe>) LC1 = P1;
ffa02fd0:	68 98       	R0 = B[P5++] (X);
ffa02fd2:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa02fd6:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa02fda:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02fdc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa02fe0:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa02fe4:	50 99       	R0 = B[P2] (X);
ffa02fe6:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa02fea:	10 91       	R0 = [P2];
ffa02fec:	40 4e       	R0 >>= 0x8;
ffa02fee:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa02ff2:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02ff6:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa02ffa:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02ffe:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa03002:	a7 b2       	[P4 + 0x28] = R7;
ffa03004:	01 e8 00 00 	UNLINK;
ffa03008:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0300a:	ff e2 a1 f5 	JUMP.L 0xffa01b4c <_bfin_EMAC_send_nocopy>;
	...

ffa03010 <_ARP_req>:
ffa03010:	ec 05       	[--SP] = (R7:5, P5:4);
ffa03012:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03016:	38 30       	R7 = R0;
ffa03018:	ff e3 3e fe 	CALL 0xffa02c94 <_ARP_lu>;
ffa0301c:	00 0c       	CC = R0 == 0x0;
ffa0301e:	50 10       	IF !CC JUMP 0xffa030be <_ARP_req+0xae>;
ffa03020:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c60 */
ffa03024:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa03028:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c40 <_rxIdx> */
ffa0302c:	16 91       	R6 = [P2];
ffa0302e:	0c e1 6c 0c 	P4.L = 0xc6c;		/* (3180)	P4=0xff900c6c <_NetArpLut> */
ffa03032:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa03036:	4c 32       	P1 = P4;
ffa03038:	46 51       	R5 = R6 + R0;
ffa0303a:	6c 32       	P5 = P4;
ffa0303c:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa0303e:	b2 e0 06 20 	LSETUP(0xffa03042 <_ARP_req+0x32>, 0xffa0304a <_ARP_req+0x3a>) LC1 = P2;
ffa03042:	08 91       	R0 = [P1];
ffa03044:	07 08       	CC = R7 == R0;
ffa03046:	21 18       	IF CC JUMP 0xffa03088 <_ARP_req+0x78>;
ffa03048:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa0304a:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa0304c:	ff e3 be fd 	CALL 0xffa02bc8 <_ARP_lut_find>;
ffa03050:	10 32       	P2 = R0;
ffa03052:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa03054:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa03058:	09 e1 68 0c 	P1.L = 0xc68;		/* (3176)	P1=0xff900c68 <_NetArpLut_age> */
ffa0305c:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa0305e:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa03060:	10 b1       	[P2 + 0x10] = R0;
ffa03062:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa03066:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa0306a:	17 93 00 00 
ffa0306e:	d0 b0       	[P2 + 0xc] = R0;
ffa03070:	48 95       	R0 = W[P1] (X);
ffa03072:	08 64       	R0 += 0x1;		/* (  1) */
ffa03074:	08 97       	W[P1] = R0;
ffa03076:	50 b5       	W[P2 + 0xa] = R0;
ffa03078:	07 30       	R0 = R7;
ffa0307a:	ff e3 51 ff 	CALL 0xffa02f1c <_ARP_tx>;
ffa0307e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03080:	01 e8 00 00 	UNLINK;
ffa03084:	ac 05       	(R7:5, P5:4) = [SP++];
ffa03086:	10 00       	RTS;
ffa03088:	08 a1       	R0 = [P1 + 0x10];
ffa0308a:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa0308c:	de 1f       	IF CC JUMP 0xffa03048 <_ARP_req+0x38> (BP);
ffa0308e:	e8 a0       	R0 = [P5 + 0xc];
ffa03090:	86 09       	CC = R6 < R0 (IU);
ffa03092:	f6 1f       	IF CC JUMP 0xffa0307e <_ARP_req+0x6e> (BP);
ffa03094:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03098:	0f 30       	R1 = R7;
ffa0309a:	00 e1 c8 04 	R0.L = 0x4c8;		/* (1224)	R0=0xff9004c8(-7338808) */
ffa0309e:	ff e3 a5 ed 	CALL 0xffa00be8 <_printf_ip>;
ffa030a2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004c8(-7338808) */
ffa030a6:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa030aa:	ff e3 3b ec 	CALL 0xffa00920 <_printf_str>;
ffa030ae:	07 30       	R0 = R7;
ffa030b0:	ff e3 36 ff 	CALL 0xffa02f1c <_ARP_tx>;
ffa030b4:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa030b8:	ed b0 00 00 
ffa030bc:	e2 2f       	JUMP.S 0xffa03080 <_ARP_req+0x70>;
ffa030be:	01 e8 00 00 	UNLINK;
ffa030c2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa030c4:	ac 05       	(R7:5, P5:4) = [SP++];
ffa030c6:	10 00       	RTS;

ffa030c8 <_tcp_length>:
ffa030c8:	c5 04       	[--SP] = (P5:5);
ffa030ca:	28 32       	P5 = R0;
ffa030cc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa030d0:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa030d2:	ff e3 93 f3 	CALL 0xffa017f8 <_htons>;
ffa030d6:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa030da:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa030dc:	51 54       	R1 = R1 & R2;
ffa030de:	11 4f       	R1 <<= 0x2;
ffa030e0:	c0 42       	R0 = R0.L (Z);
ffa030e2:	08 52       	R0 = R0 - R1;
ffa030e4:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa030e8:	11 4d       	R1 >>>= 0x2;
ffa030ea:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa030ec:	51 54       	R1 = R1 & R2;
ffa030ee:	01 e8 00 00 	UNLINK;
ffa030f2:	08 52       	R0 = R0 - R1;
ffa030f4:	85 04       	(P5:5) = [SP++];
ffa030f6:	10 00       	RTS;

ffa030f8 <_tcp_checksum_calc>:
ffa030f8:	08 32       	P1 = R0;
ffa030fa:	ed 05       	[--SP] = (R7:5, P5:5);
ffa030fc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03100:	28 32       	P5 = R0;
ffa03102:	31 30       	R6 = R1;
ffa03104:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa03106:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa03108:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa0310a:	b2 e0 03 20 	LSETUP(0xffa0310e <_tcp_checksum_calc+0x16>, 0xffa03110 <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa0310e:	08 94       	R0 = W[P1++] (Z);
ffa03110:	45 51       	R5 = R5 + R0;
ffa03112:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03116:	10 4e       	R0 >>= 0x2;
ffa03118:	06 50       	R0 = R6 + R0;
ffa0311a:	c0 42       	R0 = R0.L (Z);
ffa0311c:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa03120:	ff e3 6c f3 	CALL 0xffa017f8 <_htons>;
ffa03124:	47 4f       	R7 <<= 0x8;
ffa03126:	c0 42       	R0 = R0.L (Z);
ffa03128:	c7 51       	R7 = R7 + R0;
ffa0312a:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa0312c:	ef 50       	R3 = R7 + R5;
ffa0312e:	0d 1c       	IF CC JUMP 0xffa03148 <_tcp_checksum_calc+0x50> (BP);
ffa03130:	0e 32       	P1 = R6;
ffa03132:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03136:	10 4e       	R0 >>= 0x2;
ffa03138:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa0313a:	0e 64       	R6 += 0x1;		/* (  1) */
ffa0313c:	a9 5a       	P2 = P1 + P5;
ffa0313e:	08 32       	P1 = R0;
ffa03140:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03142:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa03144:	8a 5a       	P2 = P2 + P1;
ffa03146:	10 9b       	B[P2] = R0;
ffa03148:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa0314c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0314e:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa03152:	71 50       	R1 = R1 + R6;
ffa03154:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03158:	09 4d       	R1 >>>= 0x1;
ffa0315a:	18 4e       	R0 >>= 0x3;
ffa0315c:	41 50       	R1 = R1 + R0;
ffa0315e:	01 0d       	CC = R1 <= 0x0;
ffa03160:	09 18       	IF CC JUMP 0xffa03172 <_tcp_checksum_calc+0x7a>;
ffa03162:	55 32       	P2 = P5;
ffa03164:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa03166:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa03168:	0a 64       	R2 += 0x1;		/* (  1) */
ffa0316a:	10 94       	R0 = W[P2++] (Z);
ffa0316c:	0a 08       	CC = R2 == R1;
ffa0316e:	c3 50       	R3 = R3 + R0;
ffa03170:	fc 17       	IF !CC JUMP 0xffa03168 <_tcp_checksum_calc+0x70> (BP);
ffa03172:	d8 42       	R0 = R3.L (Z);
ffa03174:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa03178:	08 50       	R0 = R0 + R1;
ffa0317a:	c0 43       	R0 =~ R0;
ffa0317c:	01 e8 00 00 	UNLINK;
ffa03180:	c0 42       	R0 = R0.L (Z);
ffa03182:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03184:	10 00       	RTS;
	...

ffa03188 <_tcp_checksum_set>:
ffa03188:	c5 04       	[--SP] = (P5:5);
ffa0318a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa0318e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03192:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa03196:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa0319a:	10 95 00 00 
ffa0319e:	10 32       	P2 = R0;
ffa031a0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c68 <_NetArpLut_age> */
ffa031a4:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa031a8:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa031aa:	52 91       	P2 = [P2];
ffa031ac:	95 ad       	P5 = [P2 + 0x18];
ffa031ae:	45 30       	R0 = P5;
ffa031b0:	ff e3 a4 ff 	CALL 0xffa030f8 <_tcp_checksum_calc>;
ffa031b4:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa031b8:	01 e8 00 00 	UNLINK;
ffa031bc:	85 04       	(P5:5) = [SP++];
ffa031be:	10 00       	RTS;

ffa031c0 <_tcp_checksum_check>:
ffa031c0:	10 32       	P2 = R0;
ffa031c2:	78 05       	[--SP] = (R7:7);
ffa031c4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa031c8:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa031cc:	ff e3 96 ff 	CALL 0xffa030f8 <_tcp_checksum_calc>;
ffa031d0:	0f 30       	R1 = R7;
ffa031d2:	c7 42       	R7 = R0.L (Z);
ffa031d4:	39 08       	CC = R1 == R7;
ffa031d6:	19 18       	IF CC JUMP 0xffa03208 <_tcp_checksum_check+0x48>;
ffa031d8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa031dc:	00 e1 e8 04 	R0.L = 0x4e8;		/* (1256)	R0=0xff9004e8(-7338776) */
ffa031e0:	ff e3 06 ec 	CALL 0xffa009ec <_printf_hex>;
ffa031e4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004e8(-7338776) */
ffa031e8:	0f 30       	R1 = R7;
ffa031ea:	00 e1 04 05 	R0.L = 0x504;		/* (1284)	R0=0xff900504(-7338748) */
ffa031ee:	ff e3 ff eb 	CALL 0xffa009ec <_printf_hex>;
ffa031f2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900504(-7338748) */
ffa031f6:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa031fa:	ff e3 93 eb 	CALL 0xffa00920 <_printf_str>;
ffa031fe:	01 e8 00 00 	UNLINK;
ffa03202:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03204:	38 05       	(R7:7) = [SP++];
ffa03206:	10 00       	RTS;
ffa03208:	01 e8 00 00 	UNLINK;
ffa0320c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0320e:	38 05       	(R7:7) = [SP++];
ffa03210:	10 00       	RTS;
	...

ffa03214 <_tcp_packet_setup>:
ffa03214:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03216:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0321a:	29 32       	P5 = R1;
ffa0321c:	7f 30       	R7 = FP;
ffa0321e:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa03220:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03222:	f0 bb       	[FP -0x4] = R0;
ffa03224:	07 30       	R0 = R7;
ffa03226:	2a 30       	R5 = R2;
ffa03228:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa0322c:	ff e3 2c f7 	CALL 0xffa02084 <_eth_header_setup>;
ffa03230:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa03234:	68 99 00 00 
ffa03238:	80 0c       	CC = R0 < 0x0;
ffa0323a:	14 18       	IF CC JUMP 0xffa03262 <_tcp_packet_setup+0x4e>;
ffa0323c:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa0323e:	f0 b0       	[SP + 0xc] = R0;
ffa03240:	15 30       	R2 = R5;
ffa03242:	01 30       	R0 = R1;
ffa03244:	0f 30       	R1 = R7;
ffa03246:	ff e3 0d f3 	CALL 0xffa01860 <_ip_header_setup>;
ffa0324a:	b9 a2       	R1 = [FP + 0x28];
ffa0324c:	f1 b0       	[SP + 0xc] = R1;
ffa0324e:	f9 a2       	R1 = [FP + 0x2c];
ffa03250:	31 b1       	[SP + 0x10] = R1;
ffa03252:	72 43       	R2 = R6.B (Z);
ffa03254:	0f 30       	R1 = R7;
ffa03256:	ff e3 91 f3 	CALL 0xffa01978 <_tcp_header_setup>;
ffa0325a:	01 e8 00 00 	UNLINK;
ffa0325e:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03260:	10 00       	RTS;
ffa03262:	01 e8 00 00 	UNLINK;
ffa03266:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03268:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0326a:	10 00       	RTS;

ffa0326c <_tcp_burst>:
ffa0326c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0326e:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa03272:	78 b2       	[FP + 0x24] = R0;
ffa03274:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 <_NetArpLut_age> */
ffa03278:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa0327c:	7a a2       	R2 = [FP + 0x24];
ffa0327e:	0b e1 54 0d 	P3.L = 0xd54;		/* (3412)	P3=0xff900d54 <_g_httpHeaderLen> */
ffa03282:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03286:	02 0d       	CC = R2 <= 0x0;
ffa03288:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa0328c:	10 91 00 00 
ffa03290:	19 91       	R1 = [P3];
ffa03292:	7e 18       	IF CC JUMP 0xffa0338e <_tcp_burst+0x122>;
ffa03294:	41 50       	R1 = R1 + R0;
ffa03296:	8f 09       	CC = R7 < R1 (IU);
ffa03298:	21 32       	P4 = R1;
ffa0329a:	7a 10       	IF !CC JUMP 0xffa0338e <_tcp_burst+0x122>;
ffa0329c:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa0329e:	38 20       	JUMP.S 0xffa0330e <_tcp_burst+0xa2>;
ffa032a0:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa032a2:	18 91       	R0 = [P3];
ffa032a4:	07 52       	R0 = R7 - R0;
ffa032a6:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa032aa:	08 50       	R0 = R0 + R1;
ffa032ac:	16 30       	R2 = R6;
ffa032ae:	0d 30       	R1 = R5;
ffa032b0:	ff e3 e0 ec 	CALL 0xffa00c70 <_memcpy_>;
ffa032b4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c30 <_txbuf> */
ffa032b8:	09 e1 40 0d 	P1.L = 0xd40;		/* (3392)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa032bc:	08 91       	R0 = [P1];
ffa032be:	f7 51       	R7 = R7 + R6;
ffa032c0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa032c4:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa032c8:	07 50       	R0 = R7 + R0;
ffa032ca:	10 93       	[P2] = R0;
ffa032cc:	26 50       	R0 = R6 + R4;
ffa032ce:	ff e3 5d ff 	CALL 0xffa03188 <_tcp_checksum_set>;
ffa032d2:	ff e3 3d f4 	CALL 0xffa01b4c <_bfin_EMAC_send_nocopy>;
ffa032d6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa032da:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_rxIdx> */
ffa032de:	10 95       	R0 = W[P2] (Z);
ffa032e0:	10 32       	P2 = R0;
ffa032e2:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa032e6:	09 e1 44 0c 	P1.L = 0xc44;		/* (3140)	P1=0xff900c44 <_rxbuf> */
ffa032ea:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa032ec:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa032ee:	52 91       	P2 = [P2];
ffa032f0:	90 a2       	R0 = [P2 + 0x28];
ffa032f2:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa032f4:	07 1c       	IF CC JUMP 0xffa03302 <_tcp_burst+0x96> (BP);
ffa032f6:	90 a2       	R0 = [P2 + 0x28];
ffa032f8:	4d 30       	R1 = P5;
ffa032fa:	7a a2       	R2 = [FP + 0x24];
ffa032fc:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa032fe:	11 50       	R0 = R1 + R2;
ffa03300:	a8 06       	IF !CC P5 = R0;
ffa03302:	79 ae       	P1 = [FP + 0x24];
ffa03304:	69 09       	CC = P1 <= P5;
ffa03306:	45 18       	IF CC JUMP 0xffa03390 <_tcp_burst+0x124>;
ffa03308:	44 30       	R0 = P4;
ffa0330a:	87 09       	CC = R7 < R0 (IU);
ffa0330c:	42 10       	IF !CC JUMP 0xffa03390 <_tcp_burst+0x124>;
ffa0330e:	44 30       	R0 = P4;
ffa03310:	b8 52       	R2 = R0 - R7;
ffa03312:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa03316:	0a 09       	CC = R2 <= R1;
ffa03318:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0331a:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa0331c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c44 <_rxbuf> */
ffa03320:	08 06       	IF !CC R1 = R0;
ffa03322:	09 e1 40 0d 	P1.L = 0xd40;		/* (3392)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa03326:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa0332a:	07 cc 10 4c 	R6 = MIN (R2, R0) || R0 = [P1] || NOP;
ffa0332e:	08 91 00 00 
ffa03332:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_rxIdx> */
ffa03336:	07 50       	R0 = R7 + R0;
ffa03338:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa0333c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa03340:	10 93       	[P2] = R0;
ffa03342:	09 e1 3c 0d 	P1.L = 0xd3c;		/* (3388)	P1=0xff900d3c <_TcpSeqClient> */
ffa03346:	f1 b0       	[SP + 0xc] = R1;
ffa03348:	30 b1       	[SP + 0x10] = R0;
ffa0334a:	08 91       	R0 = [P1];
ffa0334c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa03350:	70 b1       	[SP + 0x14] = R0;
ffa03352:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa03356:	4f 30       	R1 = FP;
ffa03358:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R2 = [P2] || NOP;
ffa0335c:	12 91 00 00 
ffa03360:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03362:	ff e3 59 ff 	CALL 0xffa03214 <_tcp_packet_setup>;
ffa03366:	28 30       	R5 = R0;
ffa03368:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0336c:	00 0d       	CC = R0 <= 0x0;
ffa0336e:	ca 1b       	IF CC JUMP 0xffa03302 <_tcp_burst+0x96>;
ffa03370:	18 91       	R0 = [P3];
ffa03372:	38 0a       	CC = R0 <= R7 (IU);
ffa03374:	96 1f       	IF CC JUMP 0xffa032a0 <_tcp_burst+0x34> (BP);
ffa03376:	38 53       	R4 = R0 - R7;
ffa03378:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa0337c:	07 50       	R0 = R7 + R0;
ffa0337e:	0d 30       	R1 = R5;
ffa03380:	14 30       	R2 = R4;
ffa03382:	ff e3 77 ec 	CALL 0xffa00c70 <_memcpy_>;
ffa03386:	65 51       	R5 = R5 + R4;
ffa03388:	a6 53       	R6 = R6 - R4;
ffa0338a:	e7 51       	R7 = R7 + R4;
ffa0338c:	8b 2f       	JUMP.S 0xffa032a2 <_tcp_burst+0x36>;
ffa0338e:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa03390:	01 e8 00 00 	UNLINK;
ffa03394:	45 30       	R0 = P5;
ffa03396:	a3 05       	(R7:4, P5:3) = [SP++];
ffa03398:	10 00       	RTS;
	...

ffa0339c <_tcp_rx>:
ffa0339c:	e3 05       	[--SP] = (R7:4, P5:3);
ffa0339e:	20 32       	P4 = R0;
ffa033a0:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa033a4:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa033a8:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa033aa:	ff e3 27 f2 	CALL 0xffa017f8 <_htons>;
ffa033ae:	c0 42       	R0 = R0.L (Z);
ffa033b0:	07 08       	CC = R7 == R0;
ffa033b2:	06 18       	IF CC JUMP 0xffa033be <_tcp_rx+0x22>;
ffa033b4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa033b6:	01 e8 00 00 	UNLINK;
ffa033ba:	a3 05       	(R7:4, P5:3) = [SP++];
ffa033bc:	10 00       	RTS;
ffa033be:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa033c2:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa033c4:	08 08       	CC = R0 == R1;
ffa033c6:	f7 17       	IF !CC JUMP 0xffa033b4 <_tcp_rx+0x18> (BP);
ffa033c8:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa033cc:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa033d0:	ff e3 14 f2 	CALL 0xffa017f8 <_htons>;
ffa033d4:	c0 42       	R0 = R0.L (Z);
ffa033d6:	07 08       	CC = R7 == R0;
ffa033d8:	ee 17       	IF !CC JUMP 0xffa033b4 <_tcp_rx+0x18> (BP);
ffa033da:	44 30       	R0 = P4;
ffa033dc:	80 64       	R0 += 0x10;		/* ( 16) */
ffa033de:	ff e3 81 f2 	CALL 0xffa018e0 <_ip_header_checksum>;
ffa033e2:	40 43       	R0 = R0.B (Z);
ffa033e4:	00 0c       	CC = R0 == 0x0;
ffa033e6:	e7 1f       	IF CC JUMP 0xffa033b4 <_tcp_rx+0x18> (BP);
ffa033e8:	4c 30       	R1 = P4;
ffa033ea:	41 64       	R1 += 0x8;		/* (  8) */
ffa033ec:	e0 a1       	R0 = [P4 + 0x1c];
ffa033ee:	ff e3 13 fc 	CALL 0xffa02c14 <_ARP_lut_add>;
ffa033f2:	44 30       	R0 = P4;
ffa033f4:	ff e3 6a fe 	CALL 0xffa030c8 <_tcp_length>;
ffa033f8:	30 30       	R6 = R0;
ffa033fa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa033fe:	0e 30       	R1 = R6;
ffa03400:	00 e1 14 05 	R0.L = 0x514;		/* (1300)	R0=0xff900514(-7338732) */
ffa03404:	ff e3 50 eb 	CALL 0xffa00aa4 <_printf_int>;
ffa03408:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900514(-7338732) */
ffa0340c:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa03410:	ff e3 88 ea 	CALL 0xffa00920 <_printf_str>;
ffa03414:	44 30       	R0 = P4;
ffa03416:	0e 30       	R1 = R6;
ffa03418:	ff e3 d4 fe 	CALL 0xffa031c0 <_tcp_checksum_check>;
ffa0341c:	40 43       	R0 = R0.B (Z);
ffa0341e:	00 0c       	CC = R0 == 0x0;
ffa03420:	ca 1b       	IF CC JUMP 0xffa033b4 <_tcp_rx+0x18>;
ffa03422:	00 00       	NOP;
ffa03424:	00 00       	NOP;
ffa03426:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa03428:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa0342c:	48 43       	R0 = R1.B (Z);
ffa0342e:	10 08       	CC = R0 == R2;
ffa03430:	f1 18       	IF CC JUMP 0xffa03612 <_tcp_rx+0x276>;
ffa03432:	10 0c       	CC = R0 == 0x2;
ffa03434:	0a 19       	IF CC JUMP 0xffa03648 <_tcp_rx+0x2ac>;
ffa03436:	48 43       	R0 = R1.B (Z);
ffa03438:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa0343a:	08 08       	CC = R0 == R1;
ffa0343c:	85 18       	IF CC JUMP 0xffa03546 <_tcp_rx+0x1aa>;
ffa0343e:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03440:	ab 10       	IF !CC JUMP 0xffa03596 <_tcp_rx+0x1fa>;
ffa03442:	00 00       	NOP;
ffa03444:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d54 <_g_httpHeaderLen> */
ffa03448:	0b e1 44 0d 	P3.L = 0xd44;		/* (3396)	P3=0xff900d44 <_TcpState> */
ffa0344c:	00 00       	NOP;
ffa0344e:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa03452:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa03454:	38 10       	IF !CC JUMP 0xffa034c4 <_tcp_rx+0x128>;
ffa03456:	18 91       	R0 = [P3];
ffa03458:	10 0c       	CC = R0 == 0x2;
ffa0345a:	ad 17       	IF !CC JUMP 0xffa033b4 <_tcp_rx+0x18> (BP);
ffa0345c:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900000 <_l1_data_a>(-7340032) */
ffa03460:	a0 a2       	R0 = [P4 + 0x28];
ffa03462:	04 e1 24 0c 	R4.L = 0xc24;		/* (3108)	R4=0xff900c24 <_NetDestIP>(-7336924) */
ffa03466:	a5 e5 30 00 	R5 = B[P4 + 0x30] (X);
ffa0346a:	ff e3 d3 f1 	CALL 0xffa01810 <_htonl>;
ffa0346e:	14 32       	P2 = R4;
ffa03470:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa03474:	30 50       	R0 = R0 + R6;
ffa03476:	0d e1 3c 0d 	P5.L = 0xd3c;		/* (3388)	P5=0xff900d3c <_TcpSeqClient> */
ffa0347a:	28 93       	[P5] = R0;
ffa0347c:	e0 a1       	R0 = [P4 + 0x1c];
ffa0347e:	10 93       	[P2] = R0;
ffa03480:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d44 <_TcpState> */
ffa03484:	e0 a2       	R0 = [P4 + 0x2c];
ffa03486:	0b e1 40 0d 	P3.L = 0xd40;		/* (3392)	P3=0xff900d40 <_TcpSeqHttpStart> */
ffa0348a:	ff e3 c3 f1 	CALL 0xffa01810 <_htonl>;
ffa0348e:	19 91       	R1 = [P3];
ffa03490:	c8 53       	R7 = R0 - R1;
ffa03492:	a1 e4 31 00 	R1 = B[P4 + 0x31] (Z);
ffa03496:	21 48       	CC = !BITTST (R1, 0x4);		/* bit  4 */
ffa03498:	1e 1d       	IF CC JUMP 0xffa036d4 <_tcp_rx+0x338> (BP);
ffa0349a:	06 0c       	CC = R6 == 0x0;
ffa0349c:	1c 15       	IF !CC JUMP 0xffa036d4 <_tcp_rx+0x338> (BP);
ffa0349e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa034a2:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa034a6:	10 91       	R0 = [P2];
ffa034a8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa034ac:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa034b0:	11 91       	R1 = [P2];
ffa034b2:	08 50       	R0 = R0 + R1;
ffa034b4:	07 08       	CC = R7 == R0;
ffa034b6:	46 18       	IF CC JUMP 0xffa03542 <_tcp_rx+0x1a6>;
ffa034b8:	0f 30       	R1 = R7;
ffa034ba:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034bc:	ff e3 d8 fe 	CALL 0xffa0326c <_tcp_burst>;
ffa034c0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034c2:	7a 2f       	JUMP.S 0xffa033b6 <_tcp_rx+0x1a>;
ffa034c4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa034c6:	1f 91       	R7 = [P3];
ffa034c8:	07 08       	CC = R7 == R0;
ffa034ca:	85 19       	IF CC JUMP 0xffa037d4 <_tcp_rx+0x438>;
ffa034cc:	07 0c       	CC = R7 == 0x0;
ffa034ce:	c4 17       	IF !CC JUMP 0xffa03456 <_tcp_rx+0xba> (BP);
ffa034d0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa034d4:	00 e1 90 05 	R0.L = 0x590;		/* (1424)	R0=0xff900590(-7338608) */
ffa034d8:	ff e3 24 ea 	CALL 0xffa00920 <_printf_str>;
ffa034dc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa034e0:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa034e4:	17 93       	[P2] = R7;
ffa034e6:	a0 a2       	R0 = [P4 + 0x28];
ffa034e8:	ff e3 94 f1 	CALL 0xffa01810 <_htonl>;
ffa034ec:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa034f0:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa034f4:	10 93       	[P2] = R0;
ffa034f6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa034fa:	e2 a1       	R2 = [P4 + 0x1c];
ffa034fc:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa03500:	12 93       	[P2] = R2;
ffa03502:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa03506:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa0350a:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa0350e:	11 97       	W[P2] = R1;
ffa03510:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa03512:	f1 b0       	[SP + 0xc] = R1;
ffa03514:	4f 30       	R1 = FP;
ffa03516:	30 b1       	[SP + 0x10] = R0;
ffa03518:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0351a:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa0351e:	77 b1 00 00 
ffa03522:	ff e3 79 fe 	CALL 0xffa03214 <_tcp_packet_setup>;
ffa03526:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0352a:	00 0d       	CC = R0 <= 0x0;
ffa0352c:	95 1b       	IF CC JUMP 0xffa03456 <_tcp_rx+0xba>;
ffa0352e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpClientPort> */
ffa03532:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa03536:	17 93       	[P2] = R7;
ffa03538:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0353a:	ff e3 27 fe 	CALL 0xffa03188 <_tcp_checksum_set>;
ffa0353e:	ff e3 07 f3 	CALL 0xffa01b4c <_bfin_EMAC_send_nocopy>;
ffa03542:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03544:	39 2f       	JUMP.S 0xffa033b6 <_tcp_rx+0x1a>;
ffa03546:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d40 <_TcpSeqHttpStart> */
ffa0354a:	0b e1 44 0d 	P3.L = 0xd44;		/* (3396)	P3=0xff900d44 <_TcpState> */
ffa0354e:	18 91       	R0 = [P3];
ffa03550:	08 0c       	CC = R0 == 0x1;
ffa03552:	b9 17       	IF !CC JUMP 0xffa034c4 <_tcp_rx+0x128> (BP);
ffa03554:	e0 a2       	R0 = [P4 + 0x2c];
ffa03556:	ff e3 5d f1 	CALL 0xffa01810 <_htonl>;
ffa0355a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa0355e:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa03562:	11 91       	R1 = [P2];
ffa03564:	08 08       	CC = R0 == R1;
ffa03566:	42 19       	IF CC JUMP 0xffa037ea <_tcp_rx+0x44e>;
ffa03568:	00 00       	NOP;
ffa0356a:	00 00       	NOP;
ffa0356c:	00 00       	NOP;
ffa0356e:	e0 a2       	R0 = [P4 + 0x2c];
ffa03570:	ff e3 50 f1 	CALL 0xffa01810 <_htonl>;
ffa03574:	08 30       	R1 = R0;
ffa03576:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0357a:	00 e1 40 05 	R0.L = 0x540;		/* (1344)	R0=0xff900540(-7338688) */
ffa0357e:	ff e3 35 eb 	CALL 0xffa00be8 <_printf_ip>;
ffa03582:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03584:	18 93       	[P3] = R0;
ffa03586:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0358a:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa0358e:	ff e3 c9 e9 	CALL 0xffa00920 <_printf_str>;
ffa03592:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03594:	11 2f       	JUMP.S 0xffa033b6 <_tcp_rx+0x1a>;
ffa03596:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0359a:	00 e1 6c 05 	R0.L = 0x56c;		/* (1388)	R0=0xff90056c(-7338644) */
ffa0359e:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900c24 <_NetDestIP>(-7336924) */
ffa035a2:	ff e3 bf e9 	CALL 0xffa00920 <_printf_str>;
ffa035a6:	04 e1 24 0c 	R4.L = 0xc24;		/* (3108)	R4=0xff900c24 <_NetDestIP>(-7336924) */
ffa035aa:	a0 a2       	R0 = [P4 + 0x28];
ffa035ac:	ff e3 32 f1 	CALL 0xffa01810 <_htonl>;
ffa035b0:	14 32       	P2 = R4;
ffa035b2:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d3c <_TcpSeqClient> */
ffa035b6:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d44 <_TcpState> */
ffa035ba:	0d e1 3c 0d 	P5.L = 0xd3c;		/* (3388)	P5=0xff900d3c <_TcpSeqClient> */
ffa035be:	0b e1 44 0d 	P3.L = 0xd44;		/* (3396)	P3=0xff900d44 <_TcpState> */
ffa035c2:	28 93       	[P5] = R0;
ffa035c4:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa035c8:	18 91 00 00 
ffa035cc:	e2 a1       	R2 = [P4 + 0x1c];
ffa035ce:	09 64       	R1 += 0x1;		/* (  1) */
ffa035d0:	10 0c       	CC = R0 == 0x2;
ffa035d2:	12 93       	[P2] = R2;
ffa035d4:	29 93       	[P5] = R1;
ffa035d6:	03 18       	IF CC JUMP 0xffa035dc <_tcp_rx+0x240>;
ffa035d8:	00 0c       	CC = R0 == 0x0;
ffa035da:	c0 14       	IF !CC JUMP 0xffa0375a <_tcp_rx+0x3be> (BP);
ffa035dc:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa035de:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa035e2:	f0 b0       	[SP + 0xc] = R0;
ffa035e4:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa035e8:	10 91       	R0 = [P2];
ffa035ea:	71 b1       	[SP + 0x14] = R1;
ffa035ec:	4f 30       	R1 = FP;
ffa035ee:	30 b1       	[SP + 0x10] = R0;
ffa035f0:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa035f2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa035f4:	ff e3 10 fe 	CALL 0xffa03214 <_tcp_packet_setup>;
ffa035f8:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa035fc:	00 0d       	CC = R0 <= 0x0;
ffa035fe:	ae 18       	IF CC JUMP 0xffa0375a <_tcp_rx+0x3be>;
ffa03600:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa03602:	18 93       	[P3] = R0;
ffa03604:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03606:	ff e3 c1 fd 	CALL 0xffa03188 <_tcp_checksum_set>;
ffa0360a:	ff e3 a1 f2 	CALL 0xffa01b4c <_bfin_EMAC_send_nocopy>;
ffa0360e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03610:	d3 2e       	JUMP.S 0xffa033b6 <_tcp_rx+0x1a>;
ffa03612:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03616:	00 e1 28 05 	R0.L = 0x528;		/* (1320)	R0=0xff900528(-7338712) */
ffa0361a:	ff e3 83 e9 	CALL 0xffa00920 <_printf_str>;
ffa0361e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa03622:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa03626:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03628:	17 93       	[P2] = R7;
ffa0362a:	a0 a2       	R0 = [P4 + 0x28];
ffa0362c:	ff e3 f2 f0 	CALL 0xffa01810 <_htonl>;
ffa03630:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa03634:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa03638:	10 93       	[P2] = R0;
ffa0363a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa0363e:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa03642:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03644:	17 93       	[P2] = R7;
ffa03646:	b8 2e       	JUMP.S 0xffa033b6 <_tcp_rx+0x1a>;
ffa03648:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0364c:	00 e1 34 05 	R0.L = 0x534;		/* (1332)	R0=0xff900534(-7338700) */
ffa03650:	ff e3 68 e9 	CALL 0xffa00920 <_printf_str>;
ffa03654:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d3c <_TcpSeqClient> */
ffa03658:	a0 a2       	R0 = [P4 + 0x28];
ffa0365a:	ff e3 db f0 	CALL 0xffa01810 <_htonl>;
ffa0365e:	0d e1 3c 0d 	P5.L = 0xd3c;		/* (3388)	P5=0xff900d3c <_TcpSeqClient> */
ffa03662:	28 93       	[P5] = R0;
ffa03664:	44 30       	R0 = P4;
ffa03666:	ff e3 31 fd 	CALL 0xffa030c8 <_tcp_length>;
ffa0366a:	29 91       	R1 = [P5];
ffa0366c:	09 64       	R1 += 0x1;		/* (  1) */
ffa0366e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa03672:	08 50       	R0 = R0 + R1;
ffa03674:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa03678:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa0367c:	11 97       	W[P2] = R1;
ffa0367e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpClientPort> */
ffa03682:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa03686:	28 93 00 00 
ffa0368a:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa0368e:	11 93       	[P2] = R1;
ffa03690:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa03694:	e2 a1       	R2 = [P4 + 0x1c];
ffa03696:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa0369a:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa0369c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d3c <_TcpSeqClient> */
ffa036a0:	12 93       	[P2] = R2;
ffa036a2:	0d e1 38 0d 	P5.L = 0xd38;		/* (3384)	P5=0xff900d38 <_TcpSeqHost> */
ffa036a6:	f1 b0       	[SP + 0xc] = R1;
ffa036a8:	29 91       	R1 = [P5];
ffa036aa:	31 b1       	[SP + 0x10] = R1;
ffa036ac:	4f 30       	R1 = FP;
ffa036ae:	70 b1       	[SP + 0x14] = R0;
ffa036b0:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa036b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa036b4:	ff e3 b0 fd 	CALL 0xffa03214 <_tcp_packet_setup>;
ffa036b8:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa036bc:	00 0d       	CC = R0 <= 0x0;
ffa036be:	93 18       	IF CC JUMP 0xffa037e4 <_tcp_rx+0x448>;
ffa036c0:	28 91       	R0 = [P5];
ffa036c2:	08 64       	R0 += 0x1;		/* (  1) */
ffa036c4:	28 93       	[P5] = R0;
ffa036c6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa036c8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa036cc:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa036d0:	10 93       	[P2] = R0;
ffa036d2:	33 2f       	JUMP.S 0xffa03538 <_tcp_rx+0x19c>;
ffa036d4:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa036d8:	28 54       	R0 = R0 & R5;
ffa036da:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa036dc:	10 4d       	R0 >>>= 0x2;
ffa036de:	54 30       	R2 = P4;
ffa036e0:	19 48       	CC = !BITTST (R1, 0x3);		/* bit  3 */
ffa036e2:	02 50       	R0 = R2 + R0;
ffa036e4:	5d 1c       	IF CC JUMP 0xffa0379e <_tcp_rx+0x402> (BP);
ffa036e6:	0e 30       	R1 = R6;
ffa036e8:	00 e3 16 05 	CALL 0xffa04114 <_httpCollate>;
ffa036ec:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d38 <_TcpSeqHost> */
ffa036f0:	18 91       	R0 = [P3];
ffa036f2:	07 50       	R0 = R7 + R0;
ffa036f4:	0d e1 38 0d 	P5.L = 0xd38;		/* (3384)	P5=0xff900d38 <_TcpSeqHost> */
ffa036f8:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c6c <_NetArpLut> */
ffa036fc:	28 93       	[P5] = R0;
ffa036fe:	0c e1 5c 0d 	P4.L = 0xd5c;		/* (3420)	P4=0xff900d5c <_g_httpRxed> */
ffa03702:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03704:	80 4f       	R0 <<= 0x10;
ffa03706:	21 91       	R1 = [P4];
ffa03708:	00 e3 dc 02 	CALL 0xffa03cc0 <_httpResp>;
ffa0370c:	00 0c       	CC = R0 == 0x0;
ffa0370e:	22 1c       	IF CC JUMP 0xffa03752 <_tcp_rx+0x3b6> (BP);
ffa03710:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa03714:	28 91       	R0 = [P5];
ffa03716:	0a e1 40 0d 	P2.L = 0xd40;		/* (3392)	P2=0xff900d40 <_TcpSeqHttpStart> */
ffa0371a:	10 93       	[P2] = R0;
ffa0371c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d40 <_TcpSeqHttpStart> */
ffa03720:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa03724:	11 91       	R1 = [P2];
ffa03726:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa0372a:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa0372e:	10 91       	R0 = [P2];
ffa03730:	41 50       	R1 = R1 + R0;
ffa03732:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03736:	00 e1 ac 05 	R0.L = 0x5ac;		/* (1452)	R0=0xff9005ac(-7338580) */
ffa0373a:	ff e3 b5 e9 	CALL 0xffa00aa4 <_printf_int>;
ffa0373e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005ac(-7338580) */
ffa03742:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa03746:	ff e3 ed e8 	CALL 0xffa00920 <_printf_str>;
ffa0374a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0374c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0374e:	ff e3 8f fd 	CALL 0xffa0326c <_tcp_burst>;
ffa03752:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03754:	20 93       	[P4] = R0;
ffa03756:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03758:	2f 2e       	JUMP.S 0xffa033b6 <_tcp_rx+0x1a>;
ffa0375a:	18 91       	R0 = [P3];
ffa0375c:	18 0c       	CC = R0 == 0x3;
ffa0375e:	77 16       	IF !CC JUMP 0xffa0344c <_tcp_rx+0xb0> (BP);
ffa03760:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa03764:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03766:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa0376a:	10 93       	[P2] = R0;
ffa0376c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa0376e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa03772:	f0 b0       	[SP + 0xc] = R0;
ffa03774:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa03778:	10 91       	R0 = [P2];
ffa0377a:	14 32       	P2 = R4;
ffa0377c:	30 b1       	[SP + 0x10] = R0;
ffa0377e:	28 91       	R0 = [P5];
ffa03780:	70 b1       	[SP + 0x14] = R0;
ffa03782:	4f 30       	R1 = FP;
ffa03784:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03788:	12 91 00 00 
ffa0378c:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0378e:	ff e3 43 fd 	CALL 0xffa03214 <_tcp_packet_setup>;
ffa03792:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03796:	00 0d       	CC = R0 <= 0x0;
ffa03798:	5a 1a       	IF CC JUMP 0xffa0344c <_tcp_rx+0xb0>;
ffa0379a:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa0379c:	96 2f       	JUMP.S 0xffa036c8 <_tcp_rx+0x32c>;
ffa0379e:	0e 30       	R1 = R6;
ffa037a0:	00 e3 ba 04 	CALL 0xffa04114 <_httpCollate>;
ffa037a4:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa037a6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa037aa:	f0 b0       	[SP + 0xc] = R0;
ffa037ac:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa037b0:	10 91       	R0 = [P2];
ffa037b2:	14 32       	P2 = R4;
ffa037b4:	30 b1       	[SP + 0x10] = R0;
ffa037b6:	28 91       	R0 = [P5];
ffa037b8:	70 b1       	[SP + 0x14] = R0;
ffa037ba:	4f 30       	R1 = FP;
ffa037bc:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa037c0:	12 91 00 00 
ffa037c4:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa037c6:	ff e3 27 fd 	CALL 0xffa03214 <_tcp_packet_setup>;
ffa037ca:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa037ce:	00 0d       	CC = R0 <= 0x0;
ffa037d0:	b4 16       	IF !CC JUMP 0xffa03538 <_tcp_rx+0x19c> (BP);
ffa037d2:	f1 2d       	JUMP.S 0xffa033b4 <_tcp_rx+0x18>;
ffa037d4:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa037d8:	00 e1 7c 05 	R0.L = 0x57c;		/* (1404)	R0=0xff90057c(-7338628) */
ffa037dc:	ff e3 a2 e8 	CALL 0xffa00920 <_printf_str>;
ffa037e0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa037e2:	ea 2d       	JUMP.S 0xffa033b6 <_tcp_rx+0x1a>;
ffa037e4:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa037e8:	27 2e       	JUMP.S 0xffa03436 <_tcp_rx+0x9a>;
ffa037ea:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa037ec:	18 93       	[P3] = R0;
ffa037ee:	a0 a2       	R0 = [P4 + 0x28];
ffa037f0:	ff e3 10 f0 	CALL 0xffa01810 <_htonl>;
ffa037f4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa037f8:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa037fc:	10 93       	[P2] = R0;
ffa037fe:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa03802:	00 e1 5c 05 	R0.L = 0x55c;		/* (1372)	R0=0xff90055c(-7338660) */
ffa03806:	ff e3 8d e8 	CALL 0xffa00920 <_printf_str>;
ffa0380a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0380c:	d5 2d       	JUMP.S 0xffa033b6 <_tcp_rx+0x1a>;
	...

ffa03810 <_htmlForm>:
ffa03810:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03814:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa03818:	02 e1 c8 05 	R2.L = 0x5c8;		/* (1480)	R2=0xff9005c8(-7338552) */
ffa0381c:	01 e8 00 00 	UNLINK;
ffa03820:	ff e2 58 ea 	JUMP.L 0xffa00cd0 <_strcpy_>;

ffa03824 <_htmlDiv>:
ffa03824:	12 43       	R2 = R2.B (X);
ffa03826:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa0382a:	1a 08       	CC = R2 == R3;
ffa0382c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03830:	09 18       	IF CC JUMP 0xffa03842 <_htmlDiv+0x1e>;
ffa03832:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005c8(-7338552) */
ffa03836:	02 e1 1c 06 	R2.L = 0x61c;		/* (1564)	R2=0xff90061c(-7338468) */
ffa0383a:	01 e8 00 00 	UNLINK;
ffa0383e:	ff e2 49 ea 	JUMP.L 0xffa00cd0 <_strcpy_>;
ffa03842:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90061c(-7338468) */
ffa03846:	02 e1 e8 05 	R2.L = 0x5e8;		/* (1512)	R2=0xff9005e8(-7338520) */
ffa0384a:	01 e8 00 00 	UNLINK;
ffa0384e:	ff e2 41 ea 	JUMP.L 0xffa00cd0 <_strcpy_>;
	...

ffa03854 <_html404>:
ffa03854:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03858:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0385a:	4f 30       	R1 = FP;
ffa0385c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005e8(-7338520) */
ffa03860:	f0 bb       	[FP -0x4] = R0;
ffa03862:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03864:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03868:	02 e1 50 06 	R2.L = 0x650;		/* (1616)	R2=0xff900650(-7338416) */
ffa0386c:	ff e3 32 ea 	CALL 0xffa00cd0 <_strcpy_>;
ffa03870:	f0 b9       	R0 = [FP -0x4];
ffa03872:	01 e8 00 00 	UNLINK;
ffa03876:	10 00       	RTS;

ffa03878 <_htmlCursorOption>:
ffa03878:	68 05       	[--SP] = (R7:5);
ffa0387a:	2a 30       	R5 = R2;
ffa0387c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900650(-7338416) */
ffa03880:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03884:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa03888:	3f a2 00 00 
ffa0388c:	02 e1 6c 06 	R2.L = 0x66c;		/* (1644)	R2=0xff90066c(-7338388) */
ffa03890:	ff e3 20 ea 	CALL 0xffa00cd0 <_strcpy_>;
ffa03894:	0e 30       	R1 = R6;
ffa03896:	15 30       	R2 = R5;
ffa03898:	ff e3 82 eb 	CALL 0xffa00f9c <_strprintf_int>;
ffa0389c:	3d 08       	CC = R5 == R7;
ffa0389e:	16 18       	IF CC JUMP 0xffa038ca <_htmlCursorOption+0x52>;
ffa038a0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90066c(-7338388) */
ffa038a4:	0e 30       	R1 = R6;
ffa038a6:	02 e1 94 06 	R2.L = 0x694;		/* (1684)	R2=0xff900694(-7338348) */
ffa038aa:	ff e3 13 ea 	CALL 0xffa00cd0 <_strcpy_>;
ffa038ae:	0e 30       	R1 = R6;
ffa038b0:	15 30       	R2 = R5;
ffa038b2:	ff e3 75 eb 	CALL 0xffa00f9c <_strprintf_int>;
ffa038b6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900694(-7338348) */
ffa038ba:	01 e8 00 00 	UNLINK;
ffa038be:	0e 30       	R1 = R6;
ffa038c0:	02 e1 98 06 	R2.L = 0x698;		/* (1688)	R2=0xff900698(-7338344) */
ffa038c4:	28 05       	(R7:5) = [SP++];
ffa038c6:	ff e2 05 ea 	JUMP.L 0xffa00cd0 <_strcpy_>;
ffa038ca:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900698(-7338344) */
ffa038ce:	0e 30       	R1 = R6;
ffa038d0:	02 e1 7c 06 	R2.L = 0x67c;		/* (1660)	R2=0xff90067c(-7338372) */
ffa038d4:	ff e3 fe e9 	CALL 0xffa00cd0 <_strcpy_>;
ffa038d8:	e4 2f       	JUMP.S 0xffa038a0 <_htmlCursorOption+0x28>;
	...

ffa038dc <_htmlCursorSelect>:
ffa038dc:	60 05       	[--SP] = (R7:4);
ffa038de:	3a 30       	R7 = R2;
ffa038e0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90067c(-7338372) */
ffa038e4:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa038e8:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa038ec:	7e a2 00 00 
ffa038f0:	02 e1 a4 06 	R2.L = 0x6a4;		/* (1700)	R2=0xff9006a4(-7338332) */
ffa038f4:	bc a2       	R4 = [FP + 0x28];
ffa038f6:	ff e3 ed e9 	CALL 0xffa00cd0 <_strcpy_>;
ffa038fa:	17 30       	R2 = R7;
ffa038fc:	0d 30       	R1 = R5;
ffa038fe:	ff e3 e9 e9 	CALL 0xffa00cd0 <_strcpy_>;
ffa03902:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006a4(-7338332) */
ffa03906:	0d 30       	R1 = R5;
ffa03908:	02 e1 b0 06 	R2.L = 0x6b0;		/* (1712)	R2=0xff9006b0(-7338320) */
ffa0390c:	ff e3 e2 e9 	CALL 0xffa00cd0 <_strcpy_>;
ffa03910:	0d 30       	R1 = R5;
ffa03912:	16 30       	R2 = R6;
ffa03914:	ff e3 de e9 	CALL 0xffa00cd0 <_strcpy_>;
ffa03918:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006b0(-7338320) */
ffa0391c:	0d 30       	R1 = R5;
ffa0391e:	02 e1 cc 06 	R2.L = 0x6cc;		/* (1740)	R2=0xff9006cc(-7338292) */
ffa03922:	ff e3 d7 e9 	CALL 0xffa00cd0 <_strcpy_>;
ffa03926:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03928:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa0392c:	f4 b0 00 00 
ffa03930:	17 30       	R2 = R7;
ffa03932:	ff e3 a3 ff 	CALL 0xffa03878 <_htmlCursorOption>;
ffa03936:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03938:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa0393a:	0f 08       	CC = R7 == R1;
ffa0393c:	f6 17       	IF !CC JUMP 0xffa03928 <_htmlCursorSelect+0x4c> (BP);
ffa0393e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006cc(-7338292) */
ffa03942:	01 e8 00 00 	UNLINK;
ffa03946:	0d 30       	R1 = R5;
ffa03948:	02 e1 d0 06 	R2.L = 0x6d0;		/* (1744)	R2=0xff9006d0(-7338288) */
ffa0394c:	20 05       	(R7:4) = [SP++];
ffa0394e:	ff e2 c1 e9 	JUMP.L 0xffa00cd0 <_strcpy_>;
	...

ffa03954 <_htmlDefault>:
ffa03954:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03956:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa0395a:	77 30       	R6 = FP;
ffa0395c:	e6 67       	R6 += -0x4;		/* ( -4) */
ffa0395e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03960:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006d0(-7338288) */
ffa03964:	f0 bb       	[FP -0x4] = R0;
ffa03966:	0e 30       	R1 = R6;
ffa03968:	02 e1 e8 06 	R2.L = 0x6e8;		/* (1768)	R2=0xff9006e8(-7338264) */
ffa0396c:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03970:	ff e3 b0 e9 	CALL 0xffa00cd0 <_strcpy_>;
ffa03974:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03978:	0e 30       	R1 = R6;
ffa0397a:	ff e3 55 ff 	CALL 0xffa03824 <_htmlDiv>;
ffa0397e:	0e 30       	R1 = R6;
ffa03980:	ff e3 48 ff 	CALL 0xffa03810 <_htmlForm>;
ffa03984:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03988:	0e 30       	R1 = R6;
ffa0398a:	02 e1 38 07 	R2.L = 0x738;		/* (1848)	R2=0xff900738(-7338184) */
ffa0398e:	ff e3 a1 e9 	CALL 0xffa00cd0 <_strcpy_>;
ffa03992:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa03996:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa0399a:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa0399e:	10 99 00 00 
ffa039a2:	00 0c       	CC = R0 == 0x0;
ffa039a4:	2c 1d       	IF CC JUMP 0xffa03bfc <_htmlDefault+0x2a8> (BP);
ffa039a6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900738(-7338184) */
ffa039aa:	01 30       	R0 = R1;
ffa039ac:	02 e1 88 07 	R2.L = 0x788;		/* (1928)	R2=0xff900788(-7338104) */
ffa039b0:	0e 30       	R1 = R6;
ffa039b2:	ff e3 8f e9 	CALL 0xffa00cd0 <_strcpy_>;
ffa039b6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900788(-7338104) */
ffa039ba:	0e 30       	R1 = R6;
ffa039bc:	02 e1 a0 07 	R2.L = 0x7a0;		/* (1952)	R2=0xff9007a0(-7338080) */
ffa039c0:	ff e3 88 e9 	CALL 0xffa00cd0 <_strcpy_>;
ffa039c4:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa039c8:	0e 30       	R1 = R6;
ffa039ca:	ff e3 2d ff 	CALL 0xffa03824 <_htmlDiv>;
ffa039ce:	0e 30       	R1 = R6;
ffa039d0:	ff e3 20 ff 	CALL 0xffa03810 <_htmlForm>;
ffa039d4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa039d8:	0e 30       	R1 = R6;
ffa039da:	02 e1 b4 07 	R2.L = 0x7b4;		/* (1972)	R2=0xff9007b4(-7338060) */
ffa039de:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d38 <_TcpSeqHost> */
ffa039e2:	ff e3 77 e9 	CALL 0xffa00cd0 <_strcpy_>;
ffa039e6:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa039e8:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa039ea:	0d e1 64 0c 	P5.L = 0xc64;		/* (3172)	P5=0xff900c64 <_NetDataDestIP> */
ffa039ee:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007b4(-7338060) */
ffa039f2:	0e 30       	R1 = R6;
ffa039f4:	02 e1 d0 07 	R2.L = 0x7d0;		/* (2000)	R2=0xff9007d0(-7338032) */
ffa039f8:	ff e3 6c e9 	CALL 0xffa00cd0 <_strcpy_>;
ffa039fc:	17 30       	R2 = R7;
ffa039fe:	0e 30       	R1 = R6;
ffa03a00:	ff e3 ce ea 	CALL 0xffa00f9c <_strprintf_int>;
ffa03a04:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007d0(-7338032) */
ffa03a08:	0e 30       	R1 = R6;
ffa03a0a:	02 e1 ec 07 	R2.L = 0x7ec;		/* (2028)	R2=0xff9007ec(-7338004) */
ffa03a0e:	ff e3 61 e9 	CALL 0xffa00cd0 <_strcpy_>;
ffa03a12:	2a 91       	R2 = [P5];
ffa03a14:	6a 40       	R2 >>= R5;
ffa03a16:	52 43       	R2 = R2.B (Z);
ffa03a18:	0e 30       	R1 = R6;
ffa03a1a:	ff e3 c1 ea 	CALL 0xffa00f9c <_strprintf_int>;
ffa03a1e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007ec(-7338004) */
ffa03a22:	0e 30       	R1 = R6;
ffa03a24:	02 e1 00 08 	R2.L = 0x800;		/* (2048)	R2=0xff900800(-7337984) */
ffa03a28:	ff e3 54 e9 	CALL 0xffa00cd0 <_strcpy_>;
ffa03a2c:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03a2e:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03a30:	0f 08       	CC = R7 == R1;
ffa03a32:	45 64       	R5 += 0x8;		/* (  8) */
ffa03a34:	dd 17       	IF !CC JUMP 0xffa039ee <_htmlDefault+0x9a> (BP);
ffa03a36:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900800(-7337984) */
ffa03a3a:	0e 30       	R1 = R6;
ffa03a3c:	02 e1 08 08 	R2.L = 0x808;		/* (2056)	R2=0xff900808(-7337976) */
ffa03a40:	ff e3 48 e9 	CALL 0xffa00cd0 <_strcpy_>;
ffa03a44:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900808(-7337976) */
ffa03a48:	0e 30       	R1 = R6;
ffa03a4a:	02 e1 a0 07 	R2.L = 0x7a0;		/* (1952)	R2=0xff9007a0(-7338080) */
ffa03a4e:	ff e3 41 e9 	CALL 0xffa00cd0 <_strcpy_>;
ffa03a52:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03a56:	0e 30       	R1 = R6;
ffa03a58:	ff e3 e6 fe 	CALL 0xffa03824 <_htmlDiv>;
ffa03a5c:	0e 30       	R1 = R6;
ffa03a5e:	ff e3 d9 fe 	CALL 0xffa03810 <_htmlForm>;
ffa03a62:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03a66:	0e 30       	R1 = R6;
ffa03a68:	02 e1 2c 08 	R2.L = 0x82c;		/* (2092)	R2=0xff90082c(-7337940) */
ffa03a6c:	ff e3 32 e9 	CALL 0xffa00cd0 <_strcpy_>;
ffa03a70:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bb8 */
ffa03a74:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03a78:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03a7c:	10 99 00 00 
ffa03a80:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03a82:	c6 1c       	IF CC JUMP 0xffa03c0e <_htmlDefault+0x2ba> (BP);
ffa03a84:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90082c(-7337940) */
ffa03a88:	01 30       	R0 = R1;
ffa03a8a:	02 e1 94 07 	R2.L = 0x794;		/* (1940)	R2=0xff900794(-7338092) */
ffa03a8e:	0e 30       	R1 = R6;
ffa03a90:	ff e3 20 e9 	CALL 0xffa00cd0 <_strcpy_>;
ffa03a94:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900794(-7338092) */
ffa03a98:	0e 30       	R1 = R6;
ffa03a9a:	02 e1 a0 07 	R2.L = 0x7a0;		/* (1952)	R2=0xff9007a0(-7338080) */
ffa03a9e:	ff e3 19 e9 	CALL 0xffa00cd0 <_strcpy_>;
ffa03aa2:	0e 30       	R1 = R6;
ffa03aa4:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03aa8:	ff e3 be fe 	CALL 0xffa03824 <_htmlDiv>;
ffa03aac:	0e 30       	R1 = R6;
ffa03aae:	ff e3 b1 fe 	CALL 0xffa03810 <_htmlForm>;
ffa03ab2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03ab6:	0e 30       	R1 = R6;
ffa03ab8:	02 e1 6c 08 	R2.L = 0x86c;		/* (2156)	R2=0xff90086c(-7337876) */
ffa03abc:	ff e3 0a e9 	CALL 0xffa00cd0 <_strcpy_>;
ffa03ac0:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa03ac4:	01 e1 9c 08 	R1.L = 0x89c;		/* (2204)	R1=0xff90089c(-7337828) */
ffa03ac8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90086c(-7337876) */
ffa03acc:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa03ad0:	f1 b0 00 00 
ffa03ad4:	02 e1 90 08 	R2.L = 0x890;		/* (2192)	R2=0xff900890(-7337840) */
ffa03ad8:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03adc:	37 b1 00 00 
ffa03ae0:	ff e3 fe fe 	CALL 0xffa038dc <_htmlCursorSelect>;
ffa03ae4:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff90089c(-7337828) */
ffa03ae8:	01 e1 b4 08 	R1.L = 0x8b4;		/* (2228)	R1=0xff9008b4(-7337804) */
ffa03aec:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900890(-7337840) */
ffa03af0:	f1 b0       	[SP + 0xc] = R1;
ffa03af2:	02 e1 a8 08 	R2.L = 0x8a8;		/* (2216)	R2=0xff9008a8(-7337816) */
ffa03af6:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03afa:	37 b1 00 00 
ffa03afe:	ff e3 ef fe 	CALL 0xffa038dc <_htmlCursorSelect>;
ffa03b02:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008b4(-7337804) */
ffa03b06:	01 e1 cc 08 	R1.L = 0x8cc;		/* (2252)	R1=0xff9008cc(-7337780) */
ffa03b0a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a8(-7337816) */
ffa03b0e:	f1 b0       	[SP + 0xc] = R1;
ffa03b10:	02 e1 c0 08 	R2.L = 0x8c0;		/* (2240)	R2=0xff9008c0(-7337792) */
ffa03b14:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03b18:	37 b1 00 00 
ffa03b1c:	ff e3 e0 fe 	CALL 0xffa038dc <_htmlCursorSelect>;
ffa03b20:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008cc(-7337780) */
ffa03b24:	01 e1 e0 08 	R1.L = 0x8e0;		/* (2272)	R1=0xff9008e0(-7337760) */
ffa03b28:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008c0(-7337792) */
ffa03b2c:	f1 b0       	[SP + 0xc] = R1;
ffa03b2e:	02 e1 d8 08 	R2.L = 0x8d8;		/* (2264)	R2=0xff9008d8(-7337768) */
ffa03b32:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03b36:	37 b1 00 00 
ffa03b3a:	ff e3 d1 fe 	CALL 0xffa038dc <_htmlCursorSelect>;
ffa03b3e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008d8(-7337768) */
ffa03b42:	0e 30       	R1 = R6;
ffa03b44:	02 e1 ec 08 	R2.L = 0x8ec;		/* (2284)	R2=0xff9008ec(-7337748) */
ffa03b48:	ff e3 c4 e8 	CALL 0xffa00cd0 <_strcpy_>;
ffa03b4c:	0e 30       	R1 = R6;
ffa03b4e:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03b52:	ff e3 69 fe 	CALL 0xffa03824 <_htmlDiv>;
ffa03b56:	0e 30       	R1 = R6;
ffa03b58:	ff e3 5c fe 	CALL 0xffa03810 <_htmlForm>;
ffa03b5c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03b60:	0e 30       	R1 = R6;
ffa03b62:	02 e1 28 09 	R2.L = 0x928;		/* (2344)	R2=0xff900928(-7337688) */
ffa03b66:	ff e3 b5 e8 	CALL 0xffa00cd0 <_strcpy_>;
ffa03b6a:	0e 30       	R1 = R6;
ffa03b6c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03b70:	ff e3 5a fe 	CALL 0xffa03824 <_htmlDiv>;
ffa03b74:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03b78:	0e 30       	R1 = R6;
ffa03b7a:	02 e1 80 09 	R2.L = 0x980;		/* (2432)	R2=0xff900980(-7337600) */
ffa03b7e:	ff e3 a9 e8 	CALL 0xffa00cd0 <_strcpy_>;
ffa03b82:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900980(-7337600) */
ffa03b86:	0e 30       	R1 = R6;
ffa03b88:	02 e1 a8 09 	R2.L = 0x9a8;		/* (2472)	R2=0xff9009a8(-7337560) */
ffa03b8c:	ff e3 a2 e8 	CALL 0xffa00cd0 <_strcpy_>;
ffa03b90:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009a8(-7337560) */
ffa03b94:	0e 30       	R1 = R6;
ffa03b96:	02 e1 a0 07 	R2.L = 0x7a0;		/* (1952)	R2=0xff9007a0(-7338080) */
ffa03b9a:	ff e3 9b e8 	CALL 0xffa00cd0 <_strcpy_>;
ffa03b9e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007a0(-7338080) */
ffa03ba2:	0e 30       	R1 = R6;
ffa03ba4:	02 e1 f0 09 	R2.L = 0x9f0;		/* (2544)	R2=0xff9009f0(-7337488) */
ffa03ba8:	ff e3 94 e8 	CALL 0xffa00cd0 <_strcpy_>;
ffa03bac:	0e 30       	R1 = R6;
ffa03bae:	22 e1 75 ff 	R2 = -0x8b (X);		/*		R2=0xffffff75(-139) */
ffa03bb2:	ff e3 f5 e9 	CALL 0xffa00f9c <_strprintf_int>;
ffa03bb6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ff75(-7274635) */
ffa03bba:	0e 30       	R1 = R6;
ffa03bbc:	02 e1 6c 00 	R2.L = 0x6c;		/* (108)	R2=0xff90006c(-7339924) */
ffa03bc0:	ff e3 88 e8 	CALL 0xffa00cd0 <_strcpy_>;
ffa03bc4:	0e 30       	R1 = R6;
ffa03bc6:	92 62       	R2 = -0x2e (X);		/*		R2=0xffffffd2(-46) */
ffa03bc8:	ff e3 ea e9 	CALL 0xffa00f9c <_strprintf_int>;
ffa03bcc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ffd2(-7274542) */
ffa03bd0:	0e 30       	R1 = R6;
ffa03bd2:	02 e1 44 00 	R2.L = 0x44;		/* ( 68)	R2=0xff900044(-7339964) */
ffa03bd6:	ff e3 7d e8 	CALL 0xffa00cd0 <_strcpy_>;
ffa03bda:	0e 30       	R1 = R6;
ffa03bdc:	22 e1 d0 fd 	R2 = -0x230 (X);		/*		R2=0xfffffdd0(-560) */
ffa03be0:	ff e3 de e9 	CALL 0xffa00f9c <_strprintf_int>;
ffa03be4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90fdd0(-7275056) */
ffa03be8:	0e 30       	R1 = R6;
ffa03bea:	02 e1 fc 09 	R2.L = 0x9fc;		/* (2556)	R2=0xff9009fc(-7337476) */
ffa03bee:	ff e3 71 e8 	CALL 0xffa00cd0 <_strcpy_>;
ffa03bf2:	f0 b9       	R0 = [FP -0x4];
ffa03bf4:	01 e8 00 00 	UNLINK;
ffa03bf8:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03bfa:	10 00       	RTS;
ffa03bfc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009fc(-7337476) */
ffa03c00:	01 30       	R0 = R1;
ffa03c02:	02 e1 94 07 	R2.L = 0x794;		/* (1940)	R2=0xff900794(-7338092) */
ffa03c06:	0e 30       	R1 = R6;
ffa03c08:	ff e3 64 e8 	CALL 0xffa00cd0 <_strcpy_>;
ffa03c0c:	d5 2e       	JUMP.S 0xffa039b6 <_htmlDefault+0x62>;
ffa03c0e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900794(-7338092) */
ffa03c12:	01 30       	R0 = R1;
ffa03c14:	02 e1 88 07 	R2.L = 0x788;		/* (1928)	R2=0xff900788(-7338104) */
ffa03c18:	0e 30       	R1 = R6;
ffa03c1a:	ff e3 5b e8 	CALL 0xffa00cd0 <_strcpy_>;
ffa03c1e:	3b 2f       	JUMP.S 0xffa03a94 <_htmlDefault+0x140>;

ffa03c20 <_httpHeader>:
ffa03c20:	78 05       	[--SP] = (R7:7);
ffa03c22:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03c26:	7f 30       	R7 = FP;
ffa03c28:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03c2a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c2c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900788(-7338104) */
ffa03c30:	f0 bb       	[FP -0x4] = R0;
ffa03c32:	0f 30       	R1 = R7;
ffa03c34:	02 e1 14 0a 	R2.L = 0xa14;		/* (2580)	R2=0xff900a14(-7337452) */
ffa03c38:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03c3c:	ff e3 4a e8 	CALL 0xffa00cd0 <_strcpy_>;
ffa03c40:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a14(-7337452) */
ffa03c44:	0f 30       	R1 = R7;
ffa03c46:	02 e1 28 0a 	R2.L = 0xa28;		/* (2600)	R2=0xff900a28(-7337432) */
ffa03c4a:	ff e3 43 e8 	CALL 0xffa00cd0 <_strcpy_>;
ffa03c4e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a28(-7337432) */
ffa03c52:	0f 30       	R1 = R7;
ffa03c54:	02 e1 3c 0a 	R2.L = 0xa3c;		/* (2620)	R2=0xff900a3c(-7337412) */
ffa03c58:	ff e3 3c e8 	CALL 0xffa00cd0 <_strcpy_>;
ffa03c5c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa03c60:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03c64:	12 91       	R2 = [P2];
ffa03c66:	0f 30       	R1 = R7;
ffa03c68:	ff e3 9a e9 	CALL 0xffa00f9c <_strprintf_int>;
ffa03c6c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a3c(-7337412) */
ffa03c70:	0f 30       	R1 = R7;
ffa03c72:	02 e1 50 0a 	R2.L = 0xa50;		/* (2640)	R2=0xff900a50(-7337392) */
ffa03c76:	ff e3 2d e8 	CALL 0xffa00cd0 <_strcpy_>;
ffa03c7a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa03c7e:	f0 b9       	R0 = [FP -0x4];
ffa03c80:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa03c84:	10 93       	[P2] = R0;
ffa03c86:	01 e8 00 00 	UNLINK;
ffa03c8a:	38 05       	(R7:7) = [SP++];
ffa03c8c:	10 00       	RTS;
	...

ffa03c90 <_htmlGeneric>:
ffa03c90:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03c94:	10 30       	R2 = R0;
ffa03c96:	4f 30       	R1 = FP;
ffa03c98:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c9a:	f0 bb       	[FP -0x4] = R0;
ffa03c9c:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03c9e:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03ca2:	ff e3 17 e8 	CALL 0xffa00cd0 <_strcpy_>;
ffa03ca6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa03caa:	f0 b9       	R0 = [FP -0x4];
ffa03cac:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03cb0:	10 93       	[P2] = R0;
ffa03cb2:	ff e3 b7 ff 	CALL 0xffa03c20 <_httpHeader>;
ffa03cb6:	f0 b9       	R0 = [FP -0x4];
ffa03cb8:	01 e8 00 00 	UNLINK;
ffa03cbc:	10 00       	RTS;
	...

ffa03cc0 <_httpResp>:
ffa03cc0:	60 05       	[--SP] = (R7:4);
ffa03cc2:	30 30       	R6 = R0;
ffa03cc4:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa03cc6:	01 09       	CC = R1 <= R0;
ffa03cc8:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa03ccc:	39 30       	R7 = R1;
ffa03cce:	21 10       	IF !CC JUMP 0xffa03d10 <_httpResp+0x50>;
ffa03cd0:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa03cd2:	0f 09       	CC = R7 <= R1;
ffa03cd4:	34 10       	IF !CC JUMP 0xffa03d3c <_httpResp+0x7c>;
ffa03cd6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa03cda:	00 e1 0c 0a 	R0.L = 0xa0c;		/* (2572)	R0=0xff900a0c(-7337460) */
ffa03cde:	0e 30       	R1 = R6;
ffa03ce0:	17 30       	R2 = R7;
ffa03ce2:	ff e3 65 e8 	CALL 0xffa00dac <_substr>;
ffa03ce6:	00 0c       	CC = R0 == 0x0;
ffa03ce8:	06 10       	IF !CC JUMP 0xffa03cf4 <_httpResp+0x34>;
ffa03cea:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03cec:	01 e8 00 00 	UNLINK;
ffa03cf0:	20 05       	(R7:4) = [SP++];
ffa03cf2:	10 00       	RTS;
ffa03cf4:	ff e3 b0 fd 	CALL 0xffa03854 <_html404>;
ffa03cf8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa03cfc:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03d00:	10 93       	[P2] = R0;
ffa03d02:	ff e3 8f ff 	CALL 0xffa03c20 <_httpHeader>;
ffa03d06:	01 e8 00 00 	UNLINK;
ffa03d0a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03d0c:	20 05       	(R7:4) = [SP++];
ffa03d0e:	10 00       	RTS;
ffa03d10:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa03d14:	06 30       	R0 = R6;
ffa03d16:	01 e1 70 0a 	R1.L = 0xa70;		/* (2672)	R1=0xff900a70(-7337360) */
ffa03d1a:	ff e3 1b e8 	CALL 0xffa00d50 <_strcmp>;
ffa03d1e:	00 0c       	CC = R0 == 0x0;
ffa03d20:	d8 1f       	IF CC JUMP 0xffa03cd0 <_httpResp+0x10> (BP);
ffa03d22:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03d26:	00 e1 0c 0a 	R0.L = 0xa0c;		/* (2572)	R0=0xff900a0c(-7337460) */
ffa03d2a:	0e 30       	R1 = R6;
ffa03d2c:	17 30       	R2 = R7;
ffa03d2e:	ff e3 3f e8 	CALL 0xffa00dac <_substr>;
ffa03d32:	00 0c       	CC = R0 == 0x0;
ffa03d34:	db 1f       	IF CC JUMP 0xffa03cea <_httpResp+0x2a> (BP);
ffa03d36:	ff e3 0f fe 	CALL 0xffa03954 <_htmlDefault>;
ffa03d3a:	df 2f       	JUMP.S 0xffa03cf8 <_httpResp+0x38>;
ffa03d3c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a0c(-7337460) */
ffa03d40:	00 e1 7c 0a 	R0.L = 0xa7c;		/* (2684)	R0=0xff900a7c(-7337348) */
ffa03d44:	0e 30       	R1 = R6;
ffa03d46:	17 30       	R2 = R7;
ffa03d48:	ff e3 32 e8 	CALL 0xffa00dac <_substr>;
ffa03d4c:	00 0c       	CC = R0 == 0x0;
ffa03d4e:	3c 1c       	IF CC JUMP 0xffa03dc6 <_httpResp+0x106> (BP);
ffa03d50:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a7c(-7337348) */
ffa03d54:	00 e1 88 0a 	R0.L = 0xa88;		/* (2696)	R0=0xff900a88(-7337336) */
ffa03d58:	0e 30       	R1 = R6;
ffa03d5a:	17 30       	R2 = R7;
ffa03d5c:	ff e3 28 e8 	CALL 0xffa00dac <_substr>;
ffa03d60:	00 0c       	CC = R0 == 0x0;
ffa03d62:	c4 1f       	IF CC JUMP 0xffa03cea <_httpResp+0x2a> (BP);
ffa03d64:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa03d66:	06 50       	R0 = R6 + R0;
ffa03d68:	ff e3 42 e9 	CALL 0xffa00fec <_atoi>;
ffa03d6c:	08 30       	R1 = R0;
ffa03d6e:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa03d72:	00 67       	R0 += -0x20;		/* (-32) */
ffa03d74:	10 0a       	CC = R0 <= R2 (IU);
ffa03d76:	24 11       	IF !CC JUMP 0xffa03fbe <_httpResp+0x2fe>;
ffa03d78:	82 c6 19 84 	R2 = R1 << 0x3;
ffa03d7c:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800d58 */
ffa03d80:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03d84:	02 0d       	CC = R2 <= 0x0;
ffa03d86:	13 91       	R3 = [P2];
ffa03d88:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa03d8c:	14 18       	IF CC JUMP 0xffa03db4 <_httpResp+0xf4>;
ffa03d8e:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa03d92:	28 4f       	R0 <<= 0x5;
ffa03d94:	03 54       	R0 = R3 & R0;
ffa03d96:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa03d98:	38 52       	R0 = R0 - R7;
ffa03d9a:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa03d9e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03da0:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa03da4:	18 54       	R0 = R0 & R3;
ffa03da6:	10 32       	P2 = R0;
ffa03da8:	09 64       	R1 += 0x1;		/* (  1) */
ffa03daa:	0a 08       	CC = R2 == R1;
ffa03dac:	10 90       	R0 = [P2++];
ffa03dae:	08 92       	[P1++] = R0;
ffa03db0:	42 30       	R0 = P2;
ffa03db2:	f9 17       	IF !CC JUMP 0xffa03da4 <_httpResp+0xe4> (BP);
ffa03db4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900804 */
ffa03db8:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03dbc:	17 93       	[P2] = R7;
ffa03dbe:	ff e3 31 ff 	CALL 0xffa03c20 <_httpHeader>;
ffa03dc2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03dc4:	94 2f       	JUMP.S 0xffa03cec <_httpResp+0x2c>;
ffa03dc6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03dca:	00 e1 bc 0a 	R0.L = 0xabc;		/* (2748)	R0=0xff900abc(-7337284) */
ffa03dce:	0e 30       	R1 = R6;
ffa03dd0:	17 30       	R2 = R7;
ffa03dd2:	ff e3 ed e7 	CALL 0xffa00dac <_substr>;
ffa03dd6:	00 0c       	CC = R0 == 0x0;
ffa03dd8:	7f 1f       	IF CC JUMP 0xffa03cd6 <_httpResp+0x16> (BP);
ffa03dda:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900abc(-7337284) */
ffa03dde:	0e 30       	R1 = R6;
ffa03de0:	17 30       	R2 = R7;
ffa03de2:	00 e1 bc 0a 	R0.L = 0xabc;		/* (2748)	R0=0xff900abc(-7337284) */
ffa03de6:	ff e3 e3 e7 	CALL 0xffa00dac <_substr>;
ffa03dea:	86 51       	R6 = R6 + R0;
ffa03dec:	47 53       	R5 = R7 - R0;
ffa03dee:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900abc(-7337284) */
ffa03df2:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa03df6:	0e 30       	R1 = R6;
ffa03df8:	15 30       	R2 = R5;
ffa03dfa:	ff e3 d9 e7 	CALL 0xffa00dac <_substr>;
ffa03dfe:	00 0c       	CC = R0 == 0x0;
ffa03e00:	10 11       	IF !CC JUMP 0xffa04020 <_httpResp+0x360>;
ffa03e02:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03e04:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ac4(-7337276) */
ffa03e08:	00 e1 e8 0a 	R0.L = 0xae8;		/* (2792)	R0=0xff900ae8(-7337240) */
ffa03e0c:	0e 30       	R1 = R6;
ffa03e0e:	15 30       	R2 = R5;
ffa03e10:	ff e3 ce e7 	CALL 0xffa00dac <_substr>;
ffa03e14:	00 0c       	CC = R0 == 0x0;
ffa03e16:	e2 10       	IF !CC JUMP 0xffa03fda <_httpResp+0x31a>;
ffa03e18:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ae8(-7337240) */
ffa03e1c:	0e 30       	R1 = R6;
ffa03e1e:	00 e1 f4 0a 	R0.L = 0xaf4;		/* (2804)	R0=0xff900af4(-7337228) */
ffa03e22:	15 30       	R2 = R5;
ffa03e24:	ff e3 c4 e7 	CALL 0xffa00dac <_substr>;
ffa03e28:	00 0c       	CC = R0 == 0x0;
ffa03e2a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900af4(-7337228) */
ffa03e2e:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03e30:	0e 30       	R1 = R6;
ffa03e32:	15 30       	R2 = R5;
ffa03e34:	00 e1 00 0b 	R0.L = 0xb00;		/* (2816)	R0=0xff900b00(-7337216) */
ffa03e38:	27 06       	IF !CC R4 = R7;
ffa03e3a:	ff e3 b9 e7 	CALL 0xffa00dac <_substr>;
ffa03e3e:	00 0c       	CC = R0 == 0x0;
ffa03e40:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b00(-7337216) */
ffa03e44:	0e 30       	R1 = R6;
ffa03e46:	15 30       	R2 = R5;
ffa03e48:	00 e1 0c 0b 	R0.L = 0xb0c;		/* (2828)	R0=0xff900b0c(-7337204) */
ffa03e4c:	27 06       	IF !CC R4 = R7;
ffa03e4e:	ff e3 af e7 	CALL 0xffa00dac <_substr>;
ffa03e52:	00 0c       	CC = R0 == 0x0;
ffa03e54:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b0c(-7337204) */
ffa03e58:	0e 30       	R1 = R6;
ffa03e5a:	15 30       	R2 = R5;
ffa03e5c:	00 e1 18 0b 	R0.L = 0xb18;		/* (2840)	R0=0xff900b18(-7337192) */
ffa03e60:	27 06       	IF !CC R4 = R7;
ffa03e62:	ff e3 a5 e7 	CALL 0xffa00dac <_substr>;
ffa03e66:	00 0c       	CC = R0 == 0x0;
ffa03e68:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b18(-7337192) */
ffa03e6c:	00 e1 24 0b 	R0.L = 0xb24;		/* (2852)	R0=0xff900b24(-7337180) */
ffa03e70:	0e 30       	R1 = R6;
ffa03e72:	15 30       	R2 = R5;
ffa03e74:	27 06       	IF !CC R4 = R7;
ffa03e76:	ff e3 9b e7 	CALL 0xffa00dac <_substr>;
ffa03e7a:	00 0c       	CC = R0 == 0x0;
ffa03e7c:	15 11       	IF !CC JUMP 0xffa040a6 <_httpResp+0x3e6>;
ffa03e7e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b24(-7337180) */
ffa03e82:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa03e86:	0e 30       	R1 = R6;
ffa03e88:	15 30       	R2 = R5;
ffa03e8a:	ff e3 91 e7 	CALL 0xffa00dac <_substr>;
ffa03e8e:	00 0c       	CC = R0 == 0x0;
ffa03e90:	f6 10       	IF !CC JUMP 0xffa0407c <_httpResp+0x3bc>;
ffa03e92:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b2c(-7337172) */
ffa03e96:	00 e1 34 0b 	R0.L = 0xb34;		/* (2868)	R0=0xff900b34(-7337164) */
ffa03e9a:	0e 30       	R1 = R6;
ffa03e9c:	15 30       	R2 = R5;
ffa03e9e:	ff e3 87 e7 	CALL 0xffa00dac <_substr>;
ffa03ea2:	00 0c       	CC = R0 == 0x0;
ffa03ea4:	13 11       	IF !CC JUMP 0xffa040ca <_httpResp+0x40a>;
ffa03ea6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b34(-7337164) */
ffa03eaa:	00 e1 3c 0b 	R0.L = 0xb3c;		/* (2876)	R0=0xff900b3c(-7337156) */
ffa03eae:	0e 30       	R1 = R6;
ffa03eb0:	15 30       	R2 = R5;
ffa03eb2:	ff e3 7d e7 	CALL 0xffa00dac <_substr>;
ffa03eb6:	00 0c       	CC = R0 == 0x0;
ffa03eb8:	d1 10       	IF !CC JUMP 0xffa0405a <_httpResp+0x39a>;
ffa03eba:	20 43       	R0 = R4.B (X);
ffa03ebc:	00 0c       	CC = R0 == 0x0;
ffa03ebe:	3c 17       	IF !CC JUMP 0xffa03d36 <_httpResp+0x76> (BP);
ffa03ec0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b3c(-7337156) */
ffa03ec4:	00 e1 44 0b 	R0.L = 0xb44;		/* (2884)	R0=0xff900b44(-7337148) */
ffa03ec8:	0e 30       	R1 = R6;
ffa03eca:	15 30       	R2 = R5;
ffa03ecc:	ff e3 70 e7 	CALL 0xffa00dac <_substr>;
ffa03ed0:	00 0c       	CC = R0 == 0x0;
ffa03ed2:	0c 1b       	IF CC JUMP 0xffa03cea <_httpResp+0x2a>;
ffa03ed4:	7f 30       	R7 = FP;
ffa03ed6:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03eda:	57 5a       	P1 = FP + P2;
ffa03edc:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03ede:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ee0:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa03ee2:	b2 e0 02 20 	LSETUP(0xffa03ee6 <_httpResp+0x226>, 0xffa03ee6 <_httpResp+0x226>) LC1 = P2;
ffa03ee6:	08 92       	[P1++] = R0;
ffa03ee8:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa03eec:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03ef0:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa03ef4:	29 4f       	R1 <<= 0x5;
ffa03ef6:	10 91       	R0 = [P2];
ffa03ef8:	08 54       	R0 = R0 & R1;
ffa03efa:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03efc:	81 4f       	R1 <<= 0x10;
ffa03efe:	08 50       	R0 = R0 + R1;
ffa03f00:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03f02:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa03f06:	88 54       	R2 = R0 & R1;
ffa03f08:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa03f0c:	b2 e0 12 10 	LSETUP(0xffa03f10 <_httpResp+0x250>, 0xffa03f30 <_httpResp+0x270>) LC1 = P1;
ffa03f10:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03f14:	97 5a       	P2 = FP + P2;
ffa03f16:	02 32       	P0 = R2;
ffa03f18:	11 91       	R1 = [P2];
ffa03f1a:	12 64       	R2 += 0x2;		/* (  2) */
ffa03f1c:	00 94       	R0 = W[P0++] (Z);
ffa03f1e:	41 50       	R1 = R1 + R0;
ffa03f20:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03f22:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa03f26:	11 92       	[P2++] = R1;
ffa03f28:	82 54       	R2 = R2 & R0;
ffa03f2a:	42 30       	R0 = P2;
ffa03f2c:	38 08       	CC = R0 == R7;
ffa03f2e:	f4 17       	IF !CC JUMP 0xffa03f16 <_httpResp+0x256> (BP);
ffa03f30:	00 00       	NOP;
ffa03f32:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03f36:	97 5a       	P2 = FP + P2;
ffa03f38:	00 00       	NOP;
ffa03f3a:	10 91       	R0 = [P2];
ffa03f3c:	58 4d       	R0 >>>= 0xb;
ffa03f3e:	10 92       	[P2++] = R0;
ffa03f40:	4a 30       	R1 = P2;
ffa03f42:	39 08       	CC = R1 == R7;
ffa03f44:	fa 17       	IF !CC JUMP 0xffa03f38 <_httpResp+0x278> (BP);
ffa03f46:	ff e3 07 fd 	CALL 0xffa03954 <_htmlDefault>;
ffa03f4a:	68 67       	R0 += -0x13;		/* (-19) */
ffa03f4c:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa03f50:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80(-7336064) */
ffa03f54:	f0 bb       	[FP -0x4] = R0;
ffa03f56:	02 e1 54 0b 	R2.L = 0xb54;		/* (2900)	R2=0xff900b54(-7337132) */
ffa03f5a:	08 50       	R0 = R0 + R1;
ffa03f5c:	0f 30       	R1 = R7;
ffa03f5e:	ff e3 b9 e6 	CALL 0xffa00cd0 <_strcpy_>;
ffa03f62:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa03f66:	f5 b8 00 00 
ffa03f6a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b54(-7337132) */
ffa03f6e:	0f 30       	R1 = R7;
ffa03f70:	02 e1 60 0b 	R2.L = 0xb60;		/* (2912)	R2=0xff900b60(-7337120) */
ffa03f74:	ff e3 ae e6 	CALL 0xffa00cd0 <_strcpy_>;
ffa03f78:	16 30       	R2 = R6;
ffa03f7a:	0f 30       	R1 = R7;
ffa03f7c:	ff e3 10 e8 	CALL 0xffa00f9c <_strprintf_int>;
ffa03f80:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b60(-7337120) */
ffa03f84:	0f 30       	R1 = R7;
ffa03f86:	02 e1 74 0b 	R2.L = 0xb74;		/* (2932)	R2=0xff900b74(-7337100) */
ffa03f8a:	ff e3 a3 e6 	CALL 0xffa00cd0 <_strcpy_>;
ffa03f8e:	0f 30       	R1 = R7;
ffa03f90:	15 30       	R2 = R5;
ffa03f92:	ff e3 05 e8 	CALL 0xffa00f9c <_strprintf_int>;
ffa03f96:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b74(-7337100) */
ffa03f9a:	02 e1 84 0b 	R2.L = 0xb84;		/* (2948)	R2=0xff900b84(-7337084) */
ffa03f9e:	0f 30       	R1 = R7;
ffa03fa0:	ff e3 98 e6 	CALL 0xffa00cd0 <_strcpy_>;
ffa03fa4:	0e 64       	R6 += 0x1;		/* (  1) */
ffa03fa6:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa03fa8:	16 08       	CC = R6 == R2;
ffa03faa:	e0 17       	IF !CC JUMP 0xffa03f6a <_httpResp+0x2aa> (BP);
ffa03fac:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa03fb0:	0f 30       	R1 = R7;
ffa03fb2:	02 e1 90 0b 	R2.L = 0xb90;		/* (2960)	R2=0xff900b90(-7337072) */
ffa03fb6:	ff e3 8d e6 	CALL 0xffa00cd0 <_strcpy_>;
ffa03fba:	f0 b9       	R0 = [FP -0x4];
ffa03fbc:	9e 2e       	JUMP.S 0xffa03cf8 <_httpResp+0x38>;
ffa03fbe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03fc0:	4f 30       	R1 = FP;
ffa03fc2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b90(-7337072) */
ffa03fc6:	f0 bb       	[FP -0x4] = R0;
ffa03fc8:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03fca:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03fce:	02 e1 90 0a 	R2.L = 0xa90;		/* (2704)	R2=0xff900a90(-7337328) */
ffa03fd2:	ff e3 7f e6 	CALL 0xffa00cd0 <_strcpy_>;
ffa03fd6:	f0 b9       	R0 = [FP -0x4];
ffa03fd8:	90 2e       	JUMP.S 0xffa03cf8 <_httpResp+0x38>;
ffa03fda:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa03fde:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa03fe2:	0e 30       	R1 = R6;
ffa03fe4:	15 30       	R2 = R5;
ffa03fe6:	ff e3 e3 e6 	CALL 0xffa00dac <_substr>;
ffa03fea:	00 0c       	CC = R0 == 0x0;
ffa03fec:	08 1c       	IF CC JUMP 0xffa03ffc <_httpResp+0x33c> (BP);
ffa03fee:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa03ff2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ff4:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03ff8:	10 9b       	B[P2] = R0;
ffa03ffa:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa03ffc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa04000:	00 e1 dc 0a 	R0.L = 0xadc;		/* (2780)	R0=0xff900adc(-7337252) */
ffa04004:	0e 30       	R1 = R6;
ffa04006:	15 30       	R2 = R5;
ffa04008:	ff e3 d2 e6 	CALL 0xffa00dac <_substr>;
ffa0400c:	00 0c       	CC = R0 == 0x0;
ffa0400e:	05 1f       	IF CC JUMP 0xffa03e18 <_httpResp+0x158> (BP);
ffa04010:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa04014:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04016:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa0401a:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0401c:	10 9b       	B[P2] = R0;
ffa0401e:	fd 2e       	JUMP.S 0xffa03e18 <_httpResp+0x158>;
ffa04020:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa04024:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa04028:	0e 30       	R1 = R6;
ffa0402a:	15 30       	R2 = R5;
ffa0402c:	ff e3 c0 e6 	CALL 0xffa00dac <_substr>;
ffa04030:	00 0c       	CC = R0 == 0x0;
ffa04032:	61 14       	IF !CC JUMP 0xffa040f4 <_httpResp+0x434> (BP);
ffa04034:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa04036:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ad4(-7337260) */
ffa0403a:	00 e1 dc 0a 	R0.L = 0xadc;		/* (2780)	R0=0xff900adc(-7337252) */
ffa0403e:	0e 30       	R1 = R6;
ffa04040:	15 30       	R2 = R5;
ffa04042:	ff e3 b5 e6 	CALL 0xffa00dac <_substr>;
ffa04046:	00 0c       	CC = R0 == 0x0;
ffa04048:	de 1e       	IF CC JUMP 0xffa03e04 <_httpResp+0x144> (BP);
ffa0404a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa0404e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04050:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa04054:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04056:	10 9b       	B[P2] = R0;
ffa04058:	d6 2e       	JUMP.S 0xffa03e04 <_httpResp+0x144>;
ffa0405a:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa0405c:	06 50       	R0 = R6 + R0;
ffa0405e:	ff e3 c7 e7 	CALL 0xffa00fec <_atoi>;
ffa04062:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb8 <_g_streamEnabled> */
ffa04066:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa0406a:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0406c:	11 91       	R1 = [P2];
ffa0406e:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa04072:	51 54       	R1 = R1 & R2;
ffa04074:	c0 4f       	R0 <<= 0x18;
ffa04076:	41 50       	R1 = R1 + R0;
ffa04078:	11 93       	[P2] = R1;
ffa0407a:	5e 2e       	JUMP.S 0xffa03d36 <_httpResp+0x76>;
ffa0407c:	86 51       	R6 = R6 + R0;
ffa0407e:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04080:	45 53       	R5 = R5 - R0;
ffa04082:	06 30       	R0 = R6;
ffa04084:	ff e3 b4 e7 	CALL 0xffa00fec <_atoi>;
ffa04088:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa0408c:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa04090:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04092:	11 91       	R1 = [P2];
ffa04094:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa04098:	40 43       	R0 = R0.B (Z);
ffa0409a:	51 54       	R1 = R1 & R2;
ffa0409c:	40 4f       	R0 <<= 0x8;
ffa0409e:	41 50       	R1 = R1 + R0;
ffa040a0:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa040a2:	11 93       	[P2] = R1;
ffa040a4:	f7 2e       	JUMP.S 0xffa03e92 <_httpResp+0x1d2>;
ffa040a6:	86 51       	R6 = R6 + R0;
ffa040a8:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa040aa:	45 53       	R5 = R5 - R0;
ffa040ac:	06 30       	R0 = R6;
ffa040ae:	ff e3 9f e7 	CALL 0xffa00fec <_atoi>;
ffa040b2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa040b6:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa040ba:	11 91       	R1 = [P2];
ffa040bc:	41 4d       	R1 >>>= 0x8;
ffa040be:	41 4f       	R1 <<= 0x8;
ffa040c0:	40 43       	R0 = R0.B (Z);
ffa040c2:	08 50       	R0 = R0 + R1;
ffa040c4:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa040c6:	10 93       	[P2] = R0;
ffa040c8:	db 2e       	JUMP.S 0xffa03e7e <_httpResp+0x1be>;
ffa040ca:	86 51       	R6 = R6 + R0;
ffa040cc:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa040ce:	45 53       	R5 = R5 - R0;
ffa040d0:	06 30       	R0 = R6;
ffa040d2:	ff e3 8d e7 	CALL 0xffa00fec <_atoi>;
ffa040d6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa040da:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa040de:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa040e0:	11 91       	R1 = [P2];
ffa040e2:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa040e6:	40 43       	R0 = R0.B (Z);
ffa040e8:	51 54       	R1 = R1 & R2;
ffa040ea:	80 4f       	R0 <<= 0x10;
ffa040ec:	41 50       	R1 = R1 + R0;
ffa040ee:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa040f0:	11 93       	[P2] = R1;
ffa040f2:	da 2e       	JUMP.S 0xffa03ea6 <_httpResp+0x1e6>;
ffa040f4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa040f8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa040fa:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa040fe:	10 9b       	B[P2] = R0;
ffa04100:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bb8 */
ffa04104:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa04108:	10 91       	R0 = [P2];
ffa0410a:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0410c:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0410e:	10 93       	[P2] = R0;
ffa04110:	93 2f       	JUMP.S 0xffa04036 <_httpResp+0x376>;
	...

ffa04114 <_httpCollate>:
ffa04114:	fd 05       	[--SP] = (R7:7, P5:5);
ffa04116:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c64 <_NetDataDestIP> */
ffa0411a:	0d e1 5c 0d 	P5.L = 0xd5c;		/* (3420)	P5=0xff900d5c <_g_httpRxed> */
ffa0411e:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa04120:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R1 = [P5] || NOP;
ffa04124:	29 91 00 00 
ffa04128:	82 4f       	R2 <<= 0x10;
ffa0412a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0412e:	51 50       	R1 = R1 + R2;
ffa04130:	17 30       	R2 = R7;
ffa04132:	ff e3 9f e5 	CALL 0xffa00c70 <_memcpy_>;
ffa04136:	28 91       	R0 = [P5];
ffa04138:	38 50       	R0 = R0 + R7;
ffa0413a:	01 e8 00 00 	UNLINK;
ffa0413e:	28 93       	[P5] = R0;
ffa04140:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04142:	bd 05       	(R7:7, P5:5) = [SP++];
ffa04144:	10 00       	RTS;
	...

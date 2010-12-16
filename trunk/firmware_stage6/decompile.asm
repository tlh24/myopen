
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
ffa001be:	00 e3 f7 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa001c2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa001c4:	00 e3 f4 07 	CALL 0xffa011ac <_spi_write_byte>;
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
ffa00200:	00 e3 d6 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa00204:	27 97       	W[P4] = R7;
ffa00206:	24 00       	SSYNC;
ffa00208:	2f 97       	W[P5] = R7;
ffa0020a:	24 00       	SSYNC;
ffa0020c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0020e:	00 e3 cf 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa00212:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00214:	00 e3 cc 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa00218:	27 97       	W[P4] = R7;
ffa0021a:	24 00       	SSYNC;
ffa0021c:	2f 97       	W[P5] = R7;
ffa0021e:	24 00       	SSYNC;
ffa00220:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa00222:	00 e3 c5 07 	CALL 0xffa011ac <_spi_write_byte>;
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
ffa00250:	00 e3 ae 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa00254:	82 c6 87 81 	R0 = R7 >> 0x10;
ffa00258:	40 43       	R0 = R0.B (Z);
ffa0025a:	00 e3 a9 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa0025e:	82 c6 c7 81 	R0 = R7 >> 0x8;
ffa00262:	40 43       	R0 = R0.B (Z);
ffa00264:	7f 43       	R7 = R7.B (Z);
ffa00266:	00 e3 a3 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa0026a:	07 30       	R0 = R7;
ffa0026c:	00 e3 a0 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa00270:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00272:	00 e3 9d 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa00276:	47 43       	R7 = R0.B (Z);
ffa00278:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0027a:	00 e3 99 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa0027e:	40 43       	R0 = R0.B (Z);
ffa00280:	47 4f       	R7 <<= 0x8;
ffa00282:	c7 51       	R7 = R7 + R0;
ffa00284:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00286:	00 e3 93 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa0028a:	40 43       	R0 = R0.B (Z);
ffa0028c:	47 4f       	R7 <<= 0x8;
ffa0028e:	c7 51       	R7 = R7 + R0;
ffa00290:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00292:	00 e3 8d 07 	CALL 0xffa011ac <_spi_write_byte>;
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
ffa002d0:	00 e3 6e 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa002d4:	82 c6 87 81 	R0 = R7 >> 0x10;
ffa002d8:	40 43       	R0 = R0.B (Z);
ffa002da:	00 e3 69 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa002de:	82 c6 c7 81 	R0 = R7 >> 0x8;
ffa002e2:	40 43       	R0 = R0.B (Z);
ffa002e4:	7f 43       	R7 = R7.B (Z);
ffa002e6:	00 e3 63 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa002ea:	07 30       	R0 = R7;
ffa002ec:	00 e3 60 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa002f0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa002f2:	00 e3 5d 07 	CALL 0xffa011ac <_spi_write_byte>;
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
ffa0032a:	00 e3 41 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa0032e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa00330:	00 e3 3e 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa00334:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa00338:	00 e3 3a 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa0033c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0033e:	00 e3 37 07 	CALL 0xffa011ac <_spi_write_byte>;
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
ffa00372:	00 e3 1d 07 	CALL 0xffa011ac <_spi_write_byte>;
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
ffa00398:	00 e3 0a 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa0039c:	82 c6 87 81 	R0 = R7 >> 0x10;
ffa003a0:	47 4e       	R7 >>= 0x8;
ffa003a2:	7f 43       	R7 = R7.B (Z);
ffa003a4:	40 43       	R0 = R0.B (Z);
ffa003a6:	00 e3 03 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa003aa:	07 30       	R0 = R7;
ffa003ac:	00 e3 00 07 	CALL 0xffa011ac <_spi_write_byte>;
ffa003b0:	70 43       	R0 = R6.B (Z);
ffa003b2:	00 e3 fd 06 	CALL 0xffa011ac <_spi_write_byte>;
ffa003b6:	20 98       	R0 = B[P4++] (Z);
ffa003b8:	00 e3 fa 06 	CALL 0xffa011ac <_spi_write_byte>;
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
ffa003ee:	00 e3 ad 02 	CALL 0xffa00948 <_printf_hex_byte>;
ffa003f2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa003f6:	21 99       	R1 = B[P4] (Z);
ffa003f8:	00 e1 10 00 	R0.L = 0x10;		/* ( 16)	R0=0xff900010(-7340016) */
ffa003fc:	00 e3 a6 02 	CALL 0xffa00948 <_printf_hex_byte>;
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
ffa0041c:	00 e2 86 02 	JUMP.L 0xffa00928 <_printf_str>;
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
ffa0043a:	00 e3 07 13 	CALL 0xffa02a48 <_bfin_EMAC_recv>;
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
ffa00458:	00 e3 d4 09 	CALL 0xffa01800 <_htons>;
ffa0045c:	c0 42       	R0 = R0.L (Z);
ffa0045e:	21 e1 f6 10 	R1 = 0x10f6 (X);		/*		R1=0x10f6(4342) */
ffa00462:	08 08       	CC = R0 == R1;
ffa00464:	e6 17       	IF !CC JUMP 0xffa00430 <_eth_listen+0x8> (BP);
ffa00466:	f0 b9       	R0 = [FP -0x4];
ffa00468:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9010f6(-7335690) */
ffa0046c:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa0046e:	01 e1 b9 0b 	R1.L = 0xbb9;		/* (3001)	R1=0xff900bb9 <_g_outpkt>(-7337031) */
ffa00472:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
ffa00474:	00 e3 02 04 	CALL 0xffa00c78 <_memcpy_>;
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
ffa00528:	00 e3 c2 02 	CALL 0xffa00aac <_printf_int>;
ffa0052c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900038(-7339976) */
ffa00530:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa00534:	00 e3 fa 01 	CALL 0xffa00928 <_printf_str>;
ffa00538:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a6c(-7337364) */
ffa0053c:	00 e1 48 00 	R0.L = 0x48;		/* ( 72)	R0=0xff900048(-7339960) */
ffa00540:	00 e3 f4 01 	CALL 0xffa00928 <_printf_str>;
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
ffa00588:	00 e3 36 02 	CALL 0xffa009f4 <_printf_hex>;
ffa0058c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90005c(-7339940) */
ffa00590:	00 e1 68 00 	R0.L = 0x68;		/* (104)	R0=0xff900068(-7339928) */
ffa00594:	0f 30       	R1 = R7;
ffa00596:	00 e3 2f 02 	CALL 0xffa009f4 <_printf_hex>;
ffa0059a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900068(-7339928) */
ffa0059e:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa005a2:	00 e3 c3 01 	CALL 0xffa00928 <_printf_str>;
ffa005a6:	68 a4       	R0 = W[P5 + 0x2] (Z);
ffa005a8:	81 e1 ad fb 	R1 = 0xfbad (Z);		/*		R1=0xfbad(64429) */
ffa005ac:	08 08       	CC = R0 == R1;
ffa005ae:	08 18       	IF CC JUMP 0xffa005be <_main+0x142>;
ffa005b0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a6c(-7337364) */
ffa005b4:	00 e1 5c 00 	R0.L = 0x5c;		/* ( 92)	R0=0xff90005c(-7339940) */
ffa005b8:	0e 30       	R1 = R6;
ffa005ba:	00 e3 1d 02 	CALL 0xffa009f4 <_printf_hex>;
ffa005be:	a8 a4       	R0 = W[P5 + 0x4] (Z);
ffa005c0:	81 e1 ed c0 	R1 = 0xc0ed (Z);		/*		R1=0xc0ed(49389) */
ffa005c4:	08 08       	CC = R0 == R1;
ffa005c6:	08 18       	IF CC JUMP 0xffa005d6 <_main+0x15a>;
ffa005c8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90005c(-7339940) */
ffa005cc:	00 e1 5c 00 	R0.L = 0x5c;		/* ( 92)	R0=0xff90005c(-7339940) */
ffa005d0:	0e 30       	R1 = R6;
ffa005d2:	00 e3 11 02 	CALL 0xffa009f4 <_printf_hex>;
ffa005d6:	e8 a4       	R0 = W[P5 + 0x6] (Z);
ffa005d8:	81 e1 be ba 	R1 = 0xbabe (Z);		/*		R1=0xbabe(47806) */
ffa005dc:	08 08       	CC = R0 == R1;
ffa005de:	08 18       	IF CC JUMP 0xffa005ee <_main+0x172>;
ffa005e0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90005c(-7339940) */
ffa005e4:	00 e1 5c 00 	R0.L = 0x5c;		/* ( 92)	R0=0xff90005c(-7339940) */
ffa005e8:	0e 30       	R1 = R6;
ffa005ea:	00 e3 05 02 	CALL 0xffa009f4 <_printf_hex>;
ffa005ee:	4a e1 ff 01 	P2.H = 0x1ff;		/* (511)	P2=0x1ff0000 */
ffa005f2:	0a e1 f8 ff 	P2.L = 0xfff8;		/* ( -8)	P2=0x1fffff8 */
ffa005f6:	55 08       	CC = P5 == P2;
ffa005f8:	0e 64       	R6 += 0x1;		/* (  1) */
ffa005fa:	bc 17       	IF !CC JUMP 0xffa00572 <_main+0xf6> (BP);
ffa005fc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90005c(-7339940) */
ffa00600:	00 e1 70 00 	R0.L = 0x70;		/* (112)	R0=0xff900070(-7339920) */
ffa00604:	00 e3 92 01 	CALL 0xffa00928 <_printf_str>;
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
ffa0064a:	00 e3 bb 0f 	CALL 0xffa025c0 <_bfin_EMAC_init>;
ffa0064e:	00 0c       	CC = R0 == 0x0;
ffa00650:	20 30       	R4 = R0;
ffa00652:	03 14       	IF !CC JUMP 0xffa00658 <_main+0x1dc> (BP);
ffa00654:	00 e3 88 11 	CALL 0xffa02964 <_DHCP_req>;
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
ffa006ba:	00 e3 79 07 	CALL 0xffa015ac <_radio_init>;
ffa006be:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90007c(-7339908) */
ffa006c2:	00 e1 84 00 	R0.L = 0x84;		/* (132)	R0=0xff900084(-7339900) */
ffa006c6:	00 e3 31 01 	CALL 0xffa00928 <_printf_str>;
ffa006ca:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa006cc:	00 e3 ac 06 	CALL 0xffa01424 <_radio_set_rx>;
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
ffa006ee:	47 18       	IF CC JUMP 0xffa0077c <_main+0x300>;
ffa006f0:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa006f4:	05 0a       	CC = R5 <= R0 (IU);
ffa006f6:	1e 1c       	IF CC JUMP 0xffa00732 <_main+0x2b6> (BP);
ffa006f8:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa006fc:	00 e3 58 05 	CALL 0xffa011ac <_spi_write_byte>;
ffa00700:	4f 30       	R1 = FP;
ffa00702:	20 e1 04 01 	R0 = 0x104 (X);		/*		R0=0x104(260) */
ffa00706:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa00708:	00 e3 b4 0d 	CALL 0xffa02270 <_udp_packet_setup>;
ffa0070c:	10 32       	P2 = R0;
ffa0070e:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa00712:	00 0d       	CC = R0 <= 0x0;
ffa00714:	6d 18       	IF CC JUMP 0xffa007ee <_main+0x372>;
ffa00716:	e1 b9       	R1 = [FP -0x8];
ffa00718:	11 92       	[P2++] = R1;
ffa0071a:	4a 30       	R1 = P2;
ffa0071c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0071e:	22 e1 00 01 	R2 = 0x100 (X);		/*		R2=0x100(256) */
ffa00722:	00 e3 ab 02 	CALL 0xffa00c78 <_memcpy_>;
ffa00726:	ea b9       	P2 = [FP -0x8];
ffa00728:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa0072a:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa0072c:	ea bb       	[FP -0x8] = P2;
ffa0072e:	00 e3 13 0a 	CALL 0xffa01b54 <_bfin_EMAC_send_nocopy>;
ffa00732:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff801500 */
ffa00736:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa0073a:	40 e1 62 10 	R0.H = 0x1062;		/* (4194)	R0=0x10620000(274857984) */
ffa0073e:	11 91       	R1 = [P2];
ffa00740:	00 e1 d3 4d 	R0.L = 0x4dd3;		/* (19923)	R0=0x10624dd3(274877907) */
ffa00744:	80 c0 08 18 	A1 = R1.L * R0.L (FU);
ffa00748:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa0074c:	81 c0 08 86 	A1 += R1.H * R0.L, A0 = R1.H * R0.H (FU);
ffa00750:	81 c0 01 98 	A1 += R0.H * R1.L (FU);
ffa00754:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00758:	0b c4 00 80 	A0 += A1;
ffa0075c:	8b c0 00 38 	R0 = A0 (FU);
ffa00760:	82 ce d0 83 	R1 = R0 >> 0x6 || R0 = [FP -0xc] || NOP;
ffa00764:	d0 b9 00 00 
ffa00768:	08 08       	CC = R0 == R1;
ffa0076a:	b9 1b       	IF CC JUMP 0xffa006dc <_main+0x260>;
ffa0076c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00800(-4192256) */
ffa00770:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa00772:	0a e1 0c 07 	P2.L = 0x70c;		/* (1804)	P2=0xffc0070c(-4192500) */
ffa00776:	10 97       	W[P2] = R0;
ffa00778:	d1 bb       	[FP -0xc] = R1;
ffa0077a:	b1 2f       	JUMP.S 0xffa006dc <_main+0x260>;
ffa0077c:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa00780:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa00782:	00 e3 95 04 	CALL 0xffa010ac <_spi_write_register>;
ffa00786:	24 00       	SSYNC;
ffa00788:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0070c(-4192500) */
ffa0078c:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa00790:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00794:	10 97       	W[P2] = R0;
ffa00796:	24 00       	SSYNC;
ffa00798:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00000(-4194304) */
ffa0079c:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa007a0:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa007a4:	28 97       	W[P5] = R0;
ffa007a6:	5d 32       	P3 = P5;
ffa007a8:	00 e3 68 04 	CALL 0xffa01078 <_spi_delay>;
ffa007ac:	25 32       	P4 = R5;
ffa007ae:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa007b0:	65 6c       	P5 += 0xc;		/* ( 12) */
ffa007b2:	1e 97       	W[P3] = R6;
ffa007b4:	00 e3 62 04 	CALL 0xffa01078 <_spi_delay>;
ffa007b8:	0f 64       	R7 += 0x1;		/* (  1) */
ffa007ba:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa007bc:	68 95       	R0 = W[P5] (X);
ffa007be:	0f 08       	CC = R7 == R1;
ffa007c0:	20 9a       	B[P4++] = R0;
ffa007c2:	f8 17       	IF !CC JUMP 0xffa007b2 <_main+0x336> (BP);
ffa007c4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa007c8:	27 e1 00 06 	R7 = 0x600 (X);		/*		R7=0x600(1536) */
ffa007cc:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa007d0:	17 97       	W[P2] = R7;
ffa007d2:	24 00       	SSYNC;
ffa007d4:	15 32       	P2 = R5;
ffa007d6:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
ffa007d8:	90 e5 1b 00 	R0 = B[P2 + 0x1b] (X);
ffa007dc:	08 54       	R0 = R0 & R1;
ffa007de:	08 08       	CC = R0 == R1;
ffa007e0:	0e 18       	IF CC JUMP 0xffa007fc <_main+0x380>;
ffa007e2:	0d 30       	R1 = R5;
ffa007e4:	01 65       	R1 += 0x20;		/* ( 32) */
ffa007e6:	20 e1 ff 0f 	R0 = 0xfff (X);		/*		R0=0xfff(4095) */
ffa007ea:	41 55       	R5 = R1 & R0;
ffa007ec:	82 2f       	JUMP.S 0xffa006f0 <_main+0x274>;
ffa007ee:	e0 b9       	R0 = [FP -0x8];
ffa007f0:	08 64       	R0 += 0x1;		/* (  1) */
ffa007f2:	00 cc 2d ca 	R5 = R5 -|- R5 || [FP -0x8] = R0 || NOP;
ffa007f6:	e0 bb 00 00 
ffa007fa:	9c 2f       	JUMP.S 0xffa00732 <_main+0x2b6>;
ffa007fc:	00 e3 42 06 	CALL 0xffa01480 <_radio_set_tx>;
ffa00800:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00804:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa00808:	17 97       	W[P2] = R7;
ffa0080a:	24 00       	SSYNC;
ffa0080c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90050c */
ffa00810:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa00814:	0d e1 b9 0b 	P5.L = 0xbb9;		/* (3001)	P5=0xff900bb9 <_g_outpkt> */
ffa00818:	18 97       	W[P3] = R0;
ffa0081a:	65 32       	P4 = P5;
ffa0081c:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc0f000(-4132864) */
ffa00820:	00 e3 2c 04 	CALL 0xffa01078 <_spi_delay>;
ffa00824:	0b e1 0c 05 	P3.L = 0x50c;		/* (1292)	P3=0xffc0050c(-4193012) */
ffa00828:	04 6d       	P4 += 0x20;		/* ( 32) */
ffa0082a:	00 00       	NOP;
ffa0082c:	28 98       	R0 = B[P5++] (Z);
ffa0082e:	18 97       	W[P3] = R0;
ffa00830:	00 e3 24 04 	CALL 0xffa01078 <_spi_delay>;
ffa00834:	65 08       	CC = P5 == P4;
ffa00836:	fa 17       	IF !CC JUMP 0xffa0082a <_main+0x3ae> (BP);
ffa00838:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa0083c:	20 e1 00 06 	R0 = 0x600 (X);		/*		R0=0x600(1536) */
ffa00840:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa00844:	10 97       	W[P2] = R0;
ffa00846:	24 00       	SSYNC;
ffa00848:	04 30       	R0 = R4;
ffa0084a:	ff e3 ef fd 	CALL 0xffa00428 <_eth_listen>;
ffa0084e:	03 20       	JUMP.S 0xffa00854 <_main+0x3d8>;
ffa00850:	00 00       	NOP;
ffa00852:	00 00       	NOP;
ffa00854:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa00858:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa0085c:	50 95       	R0 = W[P2] (X);
ffa0085e:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa00860:	f8 17       	IF !CC JUMP 0xffa00850 <_main+0x3d4> (BP);
ffa00862:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa00866:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa00868:	00 e3 22 04 	CALL 0xffa010ac <_spi_write_register>;
ffa0086c:	00 e3 dc 05 	CALL 0xffa01424 <_radio_set_rx>;
ffa00870:	44 2f       	JUMP.S 0xffa006f8 <_main+0x27c>;
	...

ffa00874 <_uart_str>:
ffa00874:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa00878:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0087c:	0a e1 24 04 	P2.L = 0x424;		/* (1060)	P2=0xffc00424(-4193244) */
ffa00880:	08 32       	P1 = R0;
ffa00882:	50 95       	R0 = W[P2] (X);
ffa00884:	c0 42       	R0 = R0.L (Z);
ffa00886:	08 0c       	CC = R0 == 0x1;
ffa00888:	06 18       	IF CC JUMP 0xffa00894 <_uart_str+0x20>;
ffa0088a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa0088c:	02 30       	R0 = R2;
ffa0088e:	01 e8 00 00 	UNLINK;
ffa00892:	10 00       	RTS;
ffa00894:	48 99       	R0 = B[P1] (X);
ffa00896:	01 43       	R1 = R0.B (X);
ffa00898:	01 0c       	CC = R1 == 0x0;
ffa0089a:	f8 1b       	IF CC JUMP 0xffa0088a <_uart_str+0x16>;
ffa0089c:	50 e1 c0 ff 	I0.H = 0xffc0;		/* (-64)	I0=0xffc00000(-4194304) */
ffa008a0:	09 6c       	P1 += 0x1;		/* (  1) */
ffa008a2:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa008a4:	10 e1 00 04 	I0.L = 0x400;		/* (1024)	I0=0xffc00400(-4193280) */
ffa008a8:	28 e1 00 04 	P0 = 0x400 (X);		/*		P0=0x400(1024) */
ffa008ac:	53 60       	R3 = 0xa (X);		/*		R3=0xa( 10) */
ffa008ae:	b2 e0 1c 00 	LSETUP(0xffa008b2 <_uart_str+0x3e>, 0xffa008e6 <_uart_str+0x72>) LC1 = P0;
ffa008b2:	19 08       	CC = R1 == R3;
ffa008b4:	1b 18       	IF CC JUMP 0xffa008ea <_uart_str+0x76>;
ffa008b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00424(-4193244) */
ffa008ba:	00 43       	R0 = R0.B (X);
ffa008bc:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa008c0:	10 97       	W[P2] = R0;
ffa008c2:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa008c4:	50 95       	R0 = W[P2] (X);
ffa008c6:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa008c8:	0a 10       	IF !CC JUMP 0xffa008dc <_uart_str+0x68>;
ffa008ca:	00 00       	NOP;
ffa008cc:	00 00       	NOP;
ffa008ce:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa008d2:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa008d6:	50 95       	R0 = W[P2] (X);
ffa008d8:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa008da:	f9 1f       	IF CC JUMP 0xffa008cc <_uart_str+0x58> (BP);
ffa008dc:	48 99       	R0 = B[P1] (X);
ffa008de:	01 43       	R1 = R0.B (X);
ffa008e0:	01 0c       	CC = R1 == 0x0;
ffa008e2:	0a 64       	R2 += 0x1;		/* (  1) */
ffa008e4:	d4 1b       	IF CC JUMP 0xffa0088c <_uart_str+0x18>;
ffa008e6:	09 6c       	P1 += 0x1;		/* (  1) */
ffa008e8:	d2 2f       	JUMP.S 0xffa0088c <_uart_str+0x18>;
ffa008ea:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa008ec:	20 9f       	W[I0] = R0.L;
ffa008ee:	02 20       	JUMP.S 0xffa008f2 <_uart_str+0x7e>;
ffa008f0:	00 00       	NOP;
ffa008f2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa008f6:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa008fa:	50 95       	R0 = W[P2] (X);
ffa008fc:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa008fe:	f9 1f       	IF CC JUMP 0xffa008f0 <_uart_str+0x7c> (BP);
ffa00900:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00414(-4193260) */
ffa00904:	68 60       	R0 = 0xd (X);		/*		R0=0xd( 13) */
ffa00906:	0a e1 00 04 	P2.L = 0x400;		/* (1024)	P2=0xffc00400(-4193280) */
ffa0090a:	10 97       	W[P2] = R0;
ffa0090c:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa0090e:	50 95       	R0 = W[P2] (X);
ffa00910:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00912:	e5 13       	IF !CC JUMP 0xffa008dc <_uart_str+0x68>;
ffa00914:	00 00       	NOP;
ffa00916:	00 00       	NOP;
ffa00918:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00400(-4193280) */
ffa0091c:	0a e1 14 04 	P2.L = 0x414;		/* (1044)	P2=0xffc00414(-4193260) */
ffa00920:	50 95       	R0 = W[P2] (X);
ffa00922:	28 48       	CC = !BITTST (R0, 0x5);		/* bit  5 */
ffa00924:	f9 1f       	IF CC JUMP 0xffa00916 <_uart_str+0xa2> (BP);
ffa00926:	db 2f       	JUMP.S 0xffa008dc <_uart_str+0x68>;

ffa00928 <_printf_str>:
ffa00928:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0092c:	01 e8 00 00 	UNLINK;
ffa00930:	ff e2 a2 ff 	JUMP.L 0xffa00874 <_uart_str>;

ffa00934 <_printf_newline>:
ffa00934:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00938:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000d(-7340019) */
ffa0093c:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa00940:	01 e8 00 00 	UNLINK;
ffa00944:	ff e2 98 ff 	JUMP.L 0xffa00874 <_uart_str>;

ffa00948 <_printf_hex_byte>:
ffa00948:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0094a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0094e:	28 32       	P5 = R0;
ffa00950:	39 30       	R7 = R1;
ffa00952:	00 e3 b1 01 	CALL 0xffa00cb4 <_strlen_>;
ffa00956:	10 30       	R2 = R0;
ffa00958:	20 e1 fb 03 	R0 = 0x3fb (X);		/*		R0=0x3fb(1019) */
ffa0095c:	02 09       	CC = R2 <= R0;
ffa0095e:	41 10       	IF !CC JUMP 0xffa009e0 <_printf_hex_byte+0x98>;
ffa00960:	02 0d       	CC = R2 <= 0x0;
ffa00962:	44 18       	IF CC JUMP 0xffa009ea <_printf_hex_byte+0xa2>;
ffa00964:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900400 */
ffa00968:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0096a:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa0096e:	09 32       	P1 = R1;
ffa00970:	42 91       	P2 = [P0];
ffa00972:	09 64       	R1 += 0x1;		/* (  1) */
ffa00974:	68 98       	R0 = B[P5++] (X);
ffa00976:	0a 08       	CC = R2 == R1;
ffa00978:	8a 5a       	P2 = P2 + P1;
ffa0097a:	10 9b       	B[P2] = R0;
ffa0097c:	f9 17       	IF !CC JUMP 0xffa0096e <_printf_hex_byte+0x26> (BP);
ffa0097e:	0a 32       	P1 = R2;
ffa00980:	42 91       	P2 = [P0];
ffa00982:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00984:	22 32       	P4 = R2;
ffa00986:	79 43       	R1 = R7.B (Z);
ffa00988:	8a 5a       	P2 = P2 + P1;
ffa0098a:	10 9b       	B[P2] = R0;
ffa0098c:	42 91       	P2 = [P0];
ffa0098e:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00990:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00994:	11 6c       	P1 += 0x2;		/* (  2) */
ffa00996:	a2 5a       	P2 = P2 + P4;
ffa00998:	10 9b       	B[P2] = R0;
ffa0099a:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa0099c:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa0099e:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa009a0:	01 30       	R0 = R1;
ffa009a2:	10 40       	R0 >>>= R2;
ffa009a4:	18 54       	R0 = R0 & R3;
ffa009a6:	38 09       	CC = R0 <= R7;
ffa009a8:	1a 1c       	IF CC JUMP 0xffa009dc <_printf_hex_byte+0x94> (BP);
ffa009aa:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa009ac:	42 91       	P2 = [P0];
ffa009ae:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa009b0:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900bb9 <_g_outpkt> */
ffa009b4:	22 0c       	CC = R2 == -0x4;
ffa009b6:	8a 5a       	P2 = P2 + P1;
ffa009b8:	0d e1 e0 0b 	P5.L = 0xbe0;		/* (3040)	P5=0xff900be0 <_printf_out> */
ffa009bc:	10 9b       	B[P2] = R0;
ffa009be:	09 6c       	P1 += 0x1;		/* (  1) */
ffa009c0:	f0 17       	IF !CC JUMP 0xffa009a0 <_printf_hex_byte+0x58> (BP);
ffa009c2:	6a 91       	P2 = [P5];
ffa009c4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009c6:	94 5a       	P2 = P4 + P2;
ffa009c8:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa009cc:	28 91       	R0 = [P5];
ffa009ce:	ff e3 53 ff 	CALL 0xffa00874 <_uart_str>;
ffa009d2:	01 e8 00 00 	UNLINK;
ffa009d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa009d8:	bc 05       	(R7:7, P5:4) = [SP++];
ffa009da:	10 00       	RTS;
ffa009dc:	80 65       	R0 += 0x30;		/* ( 48) */
ffa009de:	e7 2f       	JUMP.S 0xffa009ac <_printf_hex_byte+0x64>;
ffa009e0:	01 e8 00 00 	UNLINK;
ffa009e4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa009e6:	bc 05       	(R7:7, P5:4) = [SP++];
ffa009e8:	10 00       	RTS;
ffa009ea:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900be0 <_printf_out> */
ffa009ee:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa009f2:	c6 2f       	JUMP.S 0xffa0097e <_printf_hex_byte+0x36>;

ffa009f4 <_printf_hex>:
ffa009f4:	fb 05       	[--SP] = (R7:7, P5:3);
ffa009f6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa009fa:	28 32       	P5 = R0;
ffa009fc:	39 30       	R7 = R1;
ffa009fe:	00 e3 5b 01 	CALL 0xffa00cb4 <_strlen_>;
ffa00a02:	10 30       	R2 = R0;
ffa00a04:	20 e1 f5 03 	R0 = 0x3f5 (X);		/*		R0=0x3f5(1013) */
ffa00a08:	02 09       	CC = R2 <= R0;
ffa00a0a:	47 10       	IF !CC JUMP 0xffa00a98 <_printf_hex+0xa4>;
ffa00a0c:	02 0d       	CC = R2 <= 0x0;
ffa00a0e:	4a 18       	IF CC JUMP 0xffa00aa2 <_printf_hex+0xae>;
ffa00a10:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff901530 */
ffa00a14:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00a16:	09 e1 e0 0b 	P1.L = 0xbe0;		/* (3040)	P1=0xff900be0 <_printf_out> */
ffa00a1a:	01 32       	P0 = R1;
ffa00a1c:	4a 91       	P2 = [P1];
ffa00a1e:	09 64       	R1 += 0x1;		/* (  1) */
ffa00a20:	68 98       	R0 = B[P5++] (X);
ffa00a22:	0a 08       	CC = R2 == R1;
ffa00a24:	82 5a       	P2 = P2 + P0;
ffa00a26:	10 9b       	B[P2] = R0;
ffa00a28:	f9 17       	IF !CC JUMP 0xffa00a1a <_printf_hex+0x26> (BP);
ffa00a2a:	02 32       	P0 = R2;
ffa00a2c:	4a 91       	P2 = [P1];
ffa00a2e:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00a30:	1a 32       	P3 = R2;
ffa00a32:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
ffa00a34:	82 5a       	P2 = P2 + P0;
ffa00a36:	10 9b       	B[P2] = R0;
ffa00a38:	4a 91       	P2 = [P1];
ffa00a3a:	0b 6c       	P3 += 0x1;		/* (  1) */
ffa00a3c:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00a40:	10 6c       	P0 += 0x2;		/* (  2) */
ffa00a42:	9a 5a       	P2 = P2 + P3;
ffa00a44:	10 9b       	B[P2] = R0;
ffa00a46:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa00a48:	45 68       	P5 = 0x8 (X);		/*		P5=0x8(  8) */
ffa00a4a:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
ffa00a4c:	b2 e0 10 50 	LSETUP(0xffa00a50 <_printf_hex+0x5c>, 0xffa00a6c <_printf_hex+0x78>) LC1 = P5;
ffa00a50:	07 30       	R0 = R7;
ffa00a52:	08 40       	R0 >>>= R1;
ffa00a54:	10 54       	R0 = R0 & R2;
ffa00a56:	18 09       	CC = R0 <= R3;
ffa00a58:	1e 1c       	IF CC JUMP 0xffa00a94 <_printf_hex+0xa0> (BP);
ffa00a5a:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00a5c:	4a 91       	P2 = [P1];
ffa00a5e:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff901508 */
ffa00a62:	0c e1 e0 0b 	P4.L = 0xbe0;		/* (3040)	P4=0xff900be0 <_printf_out> */
ffa00a66:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa00a68:	82 5a       	P2 = P2 + P0;
ffa00a6a:	10 9b       	B[P2] = R0;
ffa00a6c:	08 6c       	P0 += 0x1;		/* (  1) */
ffa00a6e:	62 91       	P2 = [P4];
ffa00a70:	4b 32       	P1 = P3;
ffa00a72:	49 6c       	P1 += 0x9;		/* (  9) */
ffa00a74:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00a76:	8a 5a       	P2 = P2 + P1;
ffa00a78:	10 9b       	B[P2] = R0;
ffa00a7a:	62 91       	P2 = [P4];
ffa00a7c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a7e:	8a 5a       	P2 = P2 + P1;
ffa00a80:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa00a84:	20 91       	R0 = [P4];
ffa00a86:	ff e3 f7 fe 	CALL 0xffa00874 <_uart_str>;
ffa00a8a:	01 e8 00 00 	UNLINK;
ffa00a8e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00a90:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00a92:	10 00       	RTS;
ffa00a94:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00a96:	e3 2f       	JUMP.S 0xffa00a5c <_printf_hex+0x68>;
ffa00a98:	01 e8 00 00 	UNLINK;
ffa00a9c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00a9e:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00aa0:	10 00       	RTS;
ffa00aa2:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900be0 <_printf_out> */
ffa00aa6:	09 e1 e0 0b 	P1.L = 0xbe0;		/* (3040)	P1=0xff900be0 <_printf_out> */
ffa00aaa:	c0 2f       	JUMP.S 0xffa00a2a <_printf_hex+0x36>;

ffa00aac <_printf_int>:
ffa00aac:	f3 05       	[--SP] = (R7:6, P5:3);
ffa00aae:	01 0c       	CC = R1 == 0x0;
ffa00ab0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00ab4:	28 32       	P5 = R0;
ffa00ab6:	39 30       	R7 = R1;
ffa00ab8:	41 14       	IF !CC JUMP 0xffa00b3a <_printf_int+0x8e> (BP);
ffa00aba:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff90050c */
ffa00abe:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00ac2:	5a 91       	P2 = [P3];
ffa00ac4:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00ac6:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa00ac8:	10 9b       	B[P2] = R0;
ffa00aca:	45 30       	R0 = P5;
ffa00acc:	00 e3 f4 00 	CALL 0xffa00cb4 <_strlen_>;
ffa00ad0:	c6 50       	R3 = R6 + R0;
ffa00ad2:	10 30       	R2 = R0;
ffa00ad4:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
ffa00ad8:	03 09       	CC = R3 <= R0;
ffa00ada:	4e 10       	IF !CC JUMP 0xffa00b76 <_printf_int+0xca>;
ffa00adc:	02 0d       	CC = R2 <= 0x0;
ffa00ade:	79 18       	IF CC JUMP 0xffa00bd0 <_printf_int+0x124>;
ffa00ae0:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900be0 <_printf_out> */
ffa00ae4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00ae6:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa00aea:	09 32       	P1 = R1;
ffa00aec:	42 91       	P2 = [P0];
ffa00aee:	09 64       	R1 += 0x1;		/* (  1) */
ffa00af0:	68 98       	R0 = B[P5++] (X);
ffa00af2:	0a 08       	CC = R2 == R1;
ffa00af4:	8a 5a       	P2 = P2 + P1;
ffa00af6:	10 9b       	B[P2] = R0;
ffa00af8:	f9 17       	IF !CC JUMP 0xffa00aea <_printf_int+0x3e> (BP);
ffa00afa:	06 0d       	CC = R6 <= 0x0;
ffa00afc:	12 18       	IF CC JUMP 0xffa00b20 <_printf_int+0x74>;
ffa00afe:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00b00:	00 91       	R0 = [P0];
ffa00b02:	04 cc 10 00 	R0 = R2 + R0 (NS) || P2 = [P3] || NOP;
ffa00b06:	5a 91 00 00 
ffa00b0a:	08 50       	R0 = R0 + R1;
ffa00b0c:	08 32       	P1 = R0;
ffa00b0e:	0e 52       	R0 = R6 - R1;
ffa00b10:	28 32       	P5 = R0;
ffa00b12:	09 64       	R1 += 0x1;		/* (  1) */
ffa00b14:	0e 08       	CC = R6 == R1;
ffa00b16:	aa 5a       	P2 = P2 + P5;
ffa00b18:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa00b1c:	08 9b       	B[P1] = R0;
ffa00b1e:	f1 17       	IF !CC JUMP 0xffa00b00 <_printf_int+0x54> (BP);
ffa00b20:	0b 32       	P1 = R3;
ffa00b22:	42 91       	P2 = [P0];
ffa00b24:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b26:	91 5a       	P2 = P1 + P2;
ffa00b28:	10 9b       	B[P2] = R0;
ffa00b2a:	00 91       	R0 = [P0];
ffa00b2c:	ff e3 a4 fe 	CALL 0xffa00874 <_uart_str>;
ffa00b30:	01 e8 00 00 	UNLINK;
ffa00b34:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00b36:	b3 05       	(R7:6, P5:3) = [SP++];
ffa00b38:	10 00       	RTS;
ffa00b3a:	01 0d       	CC = R1 <= 0x0;
ffa00b3c:	22 18       	IF CC JUMP 0xffa00b80 <_printf_int+0xd4>;
ffa00b3e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00b42:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa00b44:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00b48:	05 20       	JUMP.S 0xffa00b52 <_printf_int+0xa6>;
ffa00b4a:	20 e1 80 00 	R0 = 0x80 (X);		/*		R0=0x80(128) */
ffa00b4e:	06 08       	CC = R6 == R0;
ffa00b50:	bd 1b       	IF CC JUMP 0xffa00aca <_printf_int+0x1e>;
ffa00b52:	07 30       	R0 = R7;
ffa00b54:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00b56:	00 e3 83 00 	CALL 0xffa00c5c <_mod>;
ffa00b5a:	0e 32       	P1 = R6;
ffa00b5c:	5a 91       	P2 = [P3];
ffa00b5e:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00b60:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00b62:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00b64:	8a 5a       	P2 = P2 + P1;
ffa00b66:	10 9b       	B[P2] = R0;
ffa00b68:	07 30       	R0 = R7;
ffa00b6a:	00 e3 6b 00 	CALL 0xffa00c40 <_div>;
ffa00b6e:	00 0d       	CC = R0 <= 0x0;
ffa00b70:	38 30       	R7 = R0;
ffa00b72:	ec 17       	IF !CC JUMP 0xffa00b4a <_printf_int+0x9e> (BP);
ffa00b74:	ab 2f       	JUMP.S 0xffa00aca <_printf_int+0x1e>;
ffa00b76:	01 e8 00 00 	UNLINK;
ffa00b7a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00b7c:	b3 05       	(R7:6, P5:3) = [SP++];
ffa00b7e:	10 00       	RTS;
ffa00b80:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00b82:	ff 4c       	BITCLR (R7, 0x1f);		/* bit 31 */
ffa00b84:	f8 4f       	R0 <<= 0x1f;
ffa00b86:	f8 53       	R7 = R0 - R7;
ffa00b88:	07 0d       	CC = R7 <= 0x0;
ffa00b8a:	2c 18       	IF CC JUMP 0xffa00be2 <_printf_int+0x136>;
ffa00b8c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00b90:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa00b92:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00b96:	05 20       	JUMP.S 0xffa00ba0 <_printf_int+0xf4>;
ffa00b98:	29 e1 80 00 	P1 = 0x80 (X);		/*		P1=0x80(128) */
ffa00b9c:	4c 08       	CC = P4 == P1;
ffa00b9e:	1e 18       	IF CC JUMP 0xffa00bda <_printf_int+0x12e>;
ffa00ba0:	07 30       	R0 = R7;
ffa00ba2:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00ba4:	00 e3 5c 00 	CALL 0xffa00c5c <_mod>;
ffa00ba8:	5a 91       	P2 = [P3];
ffa00baa:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00bac:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa00bae:	a2 5a       	P2 = P2 + P4;
ffa00bb0:	10 9b       	B[P2] = R0;
ffa00bb2:	07 30       	R0 = R7;
ffa00bb4:	00 e3 46 00 	CALL 0xffa00c40 <_div>;
ffa00bb8:	00 0d       	CC = R0 <= 0x0;
ffa00bba:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00bbc:	38 30       	R7 = R0;
ffa00bbe:	ed 17       	IF !CC JUMP 0xffa00b98 <_printf_int+0xec> (BP);
ffa00bc0:	74 30       	R6 = P4;
ffa00bc2:	4c 32       	P1 = P4;
ffa00bc4:	0e 64       	R6 += 0x1;		/* (  1) */
ffa00bc6:	5a 91       	P2 = [P3];
ffa00bc8:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa00bca:	8a 5a       	P2 = P2 + P1;
ffa00bcc:	10 9b       	B[P2] = R0;
ffa00bce:	7e 2f       	JUMP.S 0xffa00aca <_printf_int+0x1e>;
ffa00bd0:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900be0 <_printf_out> */
ffa00bd4:	08 e1 e0 0b 	P0.L = 0xbe0;		/* (3040)	P0=0xff900be0 <_printf_out> */
ffa00bd8:	91 2f       	JUMP.S 0xffa00afa <_printf_int+0x4e>;
ffa00bda:	4c 32       	P1 = P4;
ffa00bdc:	26 e1 81 00 	R6 = 0x81 (X);		/*		R6=0x81(129) */
ffa00be0:	f3 2f       	JUMP.S 0xffa00bc6 <_printf_int+0x11a>;
ffa00be2:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00be6:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa00be8:	0e 60       	R6 = 0x1 (X);		/*		R6=0x1(  1) */
ffa00bea:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00bee:	ec 2f       	JUMP.S 0xffa00bc6 <_printf_int+0x11a>;

ffa00bf0 <_printf_ip>:
ffa00bf0:	70 05       	[--SP] = (R7:6);
ffa00bf2:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00bf6:	39 30       	R7 = R1;
ffa00bf8:	46 e1 90 ff 	R6.H = 0xff90;		/* (-112)	R6=0xff900001(-7340031) */
ffa00bfc:	49 43       	R1 = R1.B (Z);
ffa00bfe:	ff e3 57 ff 	CALL 0xffa00aac <_printf_int>;
ffa00c02:	06 e1 44 00 	R6.L = 0x44;		/* ( 68)	R6=0xff900044(-7339964) */
ffa00c06:	82 c6 c7 83 	R1 = R7 >> 0x8;
ffa00c0a:	49 43       	R1 = R1.B (Z);
ffa00c0c:	06 30       	R0 = R6;
ffa00c0e:	ff e3 4f ff 	CALL 0xffa00aac <_printf_int>;
ffa00c12:	82 c6 87 83 	R1 = R7 >> 0x10;
ffa00c16:	49 43       	R1 = R1.B (Z);
ffa00c18:	06 30       	R0 = R6;
ffa00c1a:	c7 4e       	R7 >>= 0x18;
ffa00c1c:	ff e3 48 ff 	CALL 0xffa00aac <_printf_int>;
ffa00c20:	0f 30       	R1 = R7;
ffa00c22:	06 30       	R0 = R6;
ffa00c24:	ff e3 44 ff 	CALL 0xffa00aac <_printf_int>;
ffa00c28:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002d(-7339987) */
ffa00c2c:	00 e1 10 05 	R0.L = 0x510;		/* (1296)	R0=0xff900510(-7338736) */
ffa00c30:	ff e3 7c fe 	CALL 0xffa00928 <_printf_str>;
ffa00c34:	01 e8 00 00 	UNLINK;
ffa00c38:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00c3a:	30 05       	(R7:6) = [SP++];
ffa00c3c:	10 00       	RTS;
	...

ffa00c40 <_div>:
ffa00c40:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00c44:	08 4f       	R0 <<= 0x1;
ffa00c46:	48 42       	DIVS (R0, R1);
ffa00c48:	7a 68       	P2 = 0xf (X);		/*		P2=0xf( 15) */
ffa00c4a:	b2 e0 03 20 	LSETUP(0xffa00c4e <_div+0xe>, 0xffa00c50 <_div+0x10>) LC1 = P2;
ffa00c4e:	08 42       	DIVQ (R0, R1);
ffa00c50:	00 00       	NOP;
ffa00c52:	80 42       	R0 = R0.L (X);
ffa00c54:	01 e8 00 00 	UNLINK;
ffa00c58:	10 00       	RTS;
	...

ffa00c5c <_mod>:
ffa00c5c:	70 05       	[--SP] = (R7:6);
ffa00c5e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00c62:	30 30       	R6 = R0;
ffa00c64:	39 30       	R7 = R1;
ffa00c66:	ff e3 ed ff 	CALL 0xffa00c40 <_div>;
ffa00c6a:	c7 40       	R7 *= R0;
ffa00c6c:	01 e8 00 00 	UNLINK;
ffa00c70:	be 53       	R6 = R6 - R7;
ffa00c72:	06 30       	R0 = R6;
ffa00c74:	30 05       	(R7:6) = [SP++];
ffa00c76:	10 00       	RTS;

ffa00c78 <_memcpy_>:
ffa00c78:	02 0d       	CC = R2 <= 0x0;
ffa00c7a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00c7e:	08 32       	P1 = R0;
ffa00c80:	11 32       	P2 = R1;
ffa00c82:	08 18       	IF CC JUMP 0xffa00c92 <_memcpy_+0x1a>;
ffa00c84:	00 00       	NOP;
ffa00c86:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00c88:	09 64       	R1 += 0x1;		/* (  1) */
ffa00c8a:	48 98       	R0 = B[P1++] (X);
ffa00c8c:	0a 08       	CC = R2 == R1;
ffa00c8e:	10 9a       	B[P2++] = R0;
ffa00c90:	fc 17       	IF !CC JUMP 0xffa00c88 <_memcpy_+0x10> (BP);
ffa00c92:	01 e8 00 00 	UNLINK;
ffa00c96:	10 00       	RTS;

ffa00c98 <_memset_>:
ffa00c98:	02 0d       	CC = R2 <= 0x0;
ffa00c9a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00c9e:	10 32       	P2 = R0;
ffa00ca0:	06 18       	IF CC JUMP 0xffa00cac <_memset_+0x14>;
ffa00ca2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00ca4:	08 64       	R0 += 0x1;		/* (  1) */
ffa00ca6:	02 08       	CC = R2 == R0;
ffa00ca8:	11 9a       	B[P2++] = R1;
ffa00caa:	fd 17       	IF !CC JUMP 0xffa00ca4 <_memset_+0xc> (BP);
ffa00cac:	01 e8 00 00 	UNLINK;
ffa00cb0:	10 00       	RTS;
	...

ffa00cb4 <_strlen_>:
ffa00cb4:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00cb8:	10 32       	P2 = R0;
ffa00cba:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00cbc:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa00cc0:	b2 e0 06 10 	LSETUP(0xffa00cc4 <_strlen_+0x10>, 0xffa00ccc <_strlen_+0x18>) LC1 = P1;
ffa00cc4:	50 99       	R0 = B[P2] (X);
ffa00cc6:	00 0c       	CC = R0 == 0x0;
ffa00cc8:	04 18       	IF CC JUMP 0xffa00cd0 <_strlen_+0x1c>;
ffa00cca:	09 64       	R1 += 0x1;		/* (  1) */
ffa00ccc:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00cce:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00cd0:	01 30       	R0 = R1;
ffa00cd2:	01 e8 00 00 	UNLINK;
ffa00cd6:	10 00       	RTS;

ffa00cd8 <_strcpy_>:
ffa00cd8:	12 32       	P2 = R2;
ffa00cda:	c5 04       	[--SP] = (P5:5);
ffa00cdc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00ce0:	29 32       	P5 = R1;
ffa00ce2:	00 32       	P0 = R0;
ffa00ce4:	51 99       	R1 = B[P2] (X);
ffa00ce6:	08 43       	R0 = R1.B (X);
ffa00ce8:	00 0c       	CC = R0 == 0x0;
ffa00cea:	17 18       	IF CC JUMP 0xffa00d18 <_strcpy_+0x40>;
ffa00cec:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00cee:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00cf0:	29 e1 00 05 	P1 = 0x500 (X);		/*		P1=0x500(1280) */
ffa00cf4:	b2 e0 09 10 	LSETUP(0xffa00cf8 <_strcpy_+0x20>, 0xffa00d06 <_strcpy_+0x2e>) LC1 = P1;
ffa00cf8:	01 9a       	B[P0++] = R1;
ffa00cfa:	51 99       	R1 = B[P2] (X);
ffa00cfc:	08 43       	R0 = R1.B (X);
ffa00cfe:	00 0c       	CC = R0 == 0x0;
ffa00d00:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00d02:	03 18       	IF CC JUMP 0xffa00d08 <_strcpy_+0x30>;
ffa00d04:	00 00       	NOP;
ffa00d06:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00d08:	01 e8 00 00 	UNLINK;
ffa00d0c:	28 91       	R0 = [P5];
ffa00d0e:	10 50       	R0 = R0 + R2;
ffa00d10:	28 93       	[P5] = R0;
ffa00d12:	40 30       	R0 = P0;
ffa00d14:	85 04       	(P5:5) = [SP++];
ffa00d16:	10 00       	RTS;
ffa00d18:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa00d1a:	f7 2f       	JUMP.S 0xffa00d08 <_strcpy_+0x30>;

ffa00d1c <_strprepend>:
ffa00d1c:	fc 05       	[--SP] = (R7:7, P5:4);
ffa00d1e:	21 32       	P4 = R1;
ffa00d20:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00d24:	38 30       	R7 = R0;
ffa00d26:	02 30       	R0 = R2;
ffa00d28:	2a 32       	P5 = R2;
ffa00d2a:	ff e3 c5 ff 	CALL 0xffa00cb4 <_strlen_>;
ffa00d2e:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [P4] || NOP;
ffa00d32:	20 91 00 00 
ffa00d36:	02 0d       	CC = R2 <= 0x0;
ffa00d38:	0a 18       	IF CC JUMP 0xffa00d4c <_strprepend+0x30>;
ffa00d3a:	07 52       	R0 = R7 - R0;
ffa00d3c:	10 32       	P2 = R0;
ffa00d3e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00d40:	09 64       	R1 += 0x1;		/* (  1) */
ffa00d42:	68 98       	R0 = B[P5++] (X);
ffa00d44:	0a 08       	CC = R2 == R1;
ffa00d46:	10 9a       	B[P2++] = R0;
ffa00d48:	fc 17       	IF !CC JUMP 0xffa00d40 <_strprepend+0x24> (BP);
ffa00d4a:	20 91       	R0 = [P4];
ffa00d4c:	01 e8 00 00 	UNLINK;
ffa00d50:	07 52       	R0 = R7 - R0;
ffa00d52:	bc 05       	(R7:7, P5:4) = [SP++];
ffa00d54:	10 00       	RTS;
	...

ffa00d58 <_strcmp>:
ffa00d58:	10 32       	P2 = R0;
ffa00d5a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00d5e:	01 32       	P0 = R1;
ffa00d60:	51 99       	R1 = B[P2] (X);
ffa00d62:	01 0c       	CC = R1 == 0x0;
ffa00d64:	1b 18       	IF CC JUMP 0xffa00d9a <_strcmp+0x42>;
ffa00d66:	00 00       	NOP;
ffa00d68:	00 00       	NOP;
ffa00d6a:	00 00       	NOP;
ffa00d6c:	40 99       	R0 = B[P0] (X);
ffa00d6e:	00 0c       	CC = R0 == 0x0;
ffa00d70:	15 18       	IF CC JUMP 0xffa00d9a <_strcmp+0x42>;
ffa00d72:	01 08       	CC = R1 == R0;
ffa00d74:	1c 10       	IF !CC JUMP 0xffa00dac <_strcmp+0x54>;
ffa00d76:	4a 32       	P1 = P2;
ffa00d78:	50 32       	P2 = P0;
ffa00d7a:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00d7c:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00d7e:	28 e1 00 05 	P0 = 0x500 (X);		/*		P0=0x500(1280) */
ffa00d82:	49 99       	R1 = B[P1] (X);
ffa00d84:	01 0c       	CC = R1 == 0x0;
ffa00d86:	0a 18       	IF CC JUMP 0xffa00d9a <_strcmp+0x42>;
ffa00d88:	00 00       	NOP;
ffa00d8a:	00 00       	NOP;
ffa00d8c:	00 00       	NOP;
ffa00d8e:	50 99       	R0 = B[P2] (X);
ffa00d90:	00 0c       	CC = R0 == 0x0;
ffa00d92:	04 18       	IF CC JUMP 0xffa00d9a <_strcmp+0x42>;
ffa00d94:	f8 6f       	P0 += -0x1;		/* ( -1) */
ffa00d96:	40 0c       	CC = P0 == 0x0;
ffa00d98:	05 10       	IF !CC JUMP 0xffa00da2 <_strcmp+0x4a>;
ffa00d9a:	01 e8 00 00 	UNLINK;
ffa00d9e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa00da0:	10 00       	RTS;
ffa00da2:	01 08       	CC = R1 == R0;
ffa00da4:	04 10       	IF !CC JUMP 0xffa00dac <_strcmp+0x54>;
ffa00da6:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00da8:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00daa:	ec 2f       	JUMP.S 0xffa00d82 <_strcmp+0x2a>;
ffa00dac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa00dae:	01 e8 00 00 	UNLINK;
ffa00db2:	10 00       	RTS;

ffa00db4 <_substr>:
ffa00db4:	f4 05       	[--SP] = (R7:6, P5:4);
ffa00db6:	20 32       	P4 = R0;
ffa00db8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00dbc:	11 32       	P2 = R1;
ffa00dbe:	32 30       	R6 = R2;
ffa00dc0:	61 99       	R1 = B[P4] (X);
ffa00dc2:	01 0c       	CC = R1 == 0x0;
ffa00dc4:	14 18       	IF CC JUMP 0xffa00dec <_substr+0x38>;
ffa00dc6:	00 00       	NOP;
ffa00dc8:	00 00       	NOP;
ffa00dca:	00 00       	NOP;
ffa00dcc:	50 99       	R0 = B[P2] (X);
ffa00dce:	00 0c       	CC = R0 == 0x0;
ffa00dd0:	0e 18       	IF CC JUMP 0xffa00dec <_substr+0x38>;
ffa00dd2:	02 0d       	CC = R2 <= 0x0;
ffa00dd4:	0c 18       	IF CC JUMP 0xffa00dec <_substr+0x38>;
ffa00dd6:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00dd8:	01 08       	CC = R1 == R0;
ffa00dda:	0f 18       	IF CC JUMP 0xffa00df8 <_substr+0x44>;
ffa00ddc:	00 00       	NOP;
ffa00dde:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00de0:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00de2:	50 99       	R0 = B[P2] (X);
ffa00de4:	00 0c       	CC = R0 == 0x0;
ffa00de6:	03 18       	IF CC JUMP 0xffa00dec <_substr+0x38>;
ffa00de8:	1e 09       	CC = R6 <= R3;
ffa00dea:	f7 17       	IF !CC JUMP 0xffa00dd8 <_substr+0x24> (BP);
ffa00dec:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
ffa00dee:	01 e8 00 00 	UNLINK;
ffa00df2:	40 30       	R0 = P0;
ffa00df4:	b4 05       	(R7:6, P5:4) = [SP++];
ffa00df6:	10 00       	RTS;
ffa00df8:	52 30       	R2 = P2;
ffa00dfa:	3b 30       	R7 = R3;
ffa00dfc:	0a 64       	R2 += 0x1;		/* (  1) */
ffa00dfe:	0f 64       	R7 += 0x1;		/* (  1) */
ffa00e00:	12 32       	P2 = R2;
ffa00e02:	07 32       	P0 = R7;
ffa00e04:	4c 32       	P1 = P4;
ffa00e06:	6c 32       	P5 = P4;
ffa00e08:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00e0a:	15 6c       	P5 += 0x2;		/* (  2) */
ffa00e0c:	02 20       	JUMP.S 0xffa00e10 <_substr+0x5c>;
ffa00e0e:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa00e10:	4b 99       	R3 = B[P1] (X);
ffa00e12:	50 99       	R0 = B[P2] (X);
ffa00e14:	03 08       	CC = R3 == R0;
ffa00e16:	0e 10       	IF !CC JUMP 0xffa00e32 <_substr+0x7e>;
ffa00e18:	03 0c       	CC = R3 == 0x0;
ffa00e1a:	0c 18       	IF CC JUMP 0xffa00e32 <_substr+0x7e>;
ffa00e1c:	00 00       	NOP;
ffa00e1e:	09 6c       	P1 += 0x1;		/* (  1) */
ffa00e20:	08 6c       	P0 += 0x1;		/* (  1) */
ffa00e22:	68 98       	R0 = B[P5++] (X);
ffa00e24:	00 0c       	CC = R0 == 0x0;
ffa00e26:	f4 17       	IF !CC JUMP 0xffa00e0e <_substr+0x5a> (BP);
ffa00e28:	01 e8 00 00 	UNLINK;
ffa00e2c:	40 30       	R0 = P0;
ffa00e2e:	b4 05       	(R7:6, P5:4) = [SP++];
ffa00e30:	10 00       	RTS;
ffa00e32:	12 32       	P2 = R2;
ffa00e34:	1f 30       	R3 = R7;
ffa00e36:	d6 2f       	JUMP.S 0xffa00de2 <_substr+0x2e>;

ffa00e38 <_sprintf_int>:
ffa00e38:	fb 05       	[--SP] = (R7:7, P5:3);
ffa00e3a:	01 0c       	CC = R1 == 0x0;
ffa00e3c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00e40:	00 34       	I0 = R0;
ffa00e42:	11 30       	R2 = R1;
ffa00e44:	1a 14       	IF !CC JUMP 0xffa00e78 <_sprintf_int+0x40> (BP);
ffa00e46:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00e4a:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00e4e:	5a 91       	P2 = [P3];
ffa00e50:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00e52:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa00e54:	10 9b       	B[P2] = R0;
ffa00e56:	88 32       	P1 = I0;
ffa00e58:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa00e5a:	0b 52       	R0 = R3 - R1;
ffa00e5c:	00 32       	P0 = R0;
ffa00e5e:	5a 91       	P2 = [P3];
ffa00e60:	09 64       	R1 += 0x1;		/* (  1) */
ffa00e62:	99 08       	CC = R1 < R3;
ffa00e64:	82 5a       	P2 = P2 + P0;
ffa00e66:	90 e5 ff ff 	R0 = B[P2 + -0x1] (X);
ffa00e6a:	08 9a       	B[P1++] = R0;
ffa00e6c:	f7 1f       	IF CC JUMP 0xffa00e5a <_sprintf_int+0x22> (BP);
ffa00e6e:	01 e8 00 00 	UNLINK;
ffa00e72:	03 30       	R0 = R3;
ffa00e74:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00e76:	10 00       	RTS;
ffa00e78:	01 0d       	CC = R1 <= 0x0;
ffa00e7a:	2d 18       	IF CC JUMP 0xffa00ed4 <_sprintf_int+0x9c>;
ffa00e7c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00e80:	47 e1 66 66 	R7.H = 0x6666;		/* (26214)	R7=0x66660009(1717960713) */
ffa00e84:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa00e86:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00e8a:	07 e1 67 66 	R7.L = 0x6667;		/* (26215)	R7=0x66666667(1717986919) */
ffa00e8e:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa00e90:	b2 e0 20 50 	LSETUP(0xffa00e94 <_sprintf_int+0x5c>, 0xffa00ed0 <_sprintf_int+0x98>) LC1 = P5;
ffa00e94:	80 c8 17 18 	A1 = R2.L * R7.L (FU) || P1 = [P3] || NOP;
ffa00e98:	59 91 00 00 
ffa00e9c:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00ea0:	11 c1 17 86 	A1 += R2.H * R7.L (M), A0 = R2.H * R7.H (IS);
ffa00ea4:	11 c1 3a 98 	A1 += R7.H * R2.L (M, IS);
ffa00ea8:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa00eac:	0b c4 00 00 	R0 = (A0 += A1);
ffa00eb0:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa00eb4:	10 4d       	R0 >>>= 0x2;
ffa00eb6:	08 52       	R0 = R0 - R1;
ffa00eb8:	00 32       	P0 = R0;
ffa00eba:	13 32       	P2 = R3;
ffa00ebc:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00ebe:	40 0d       	CC = P0 <= 0x0;
ffa00ec0:	51 5a       	P1 = P1 + P2;
ffa00ec2:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa00ec4:	92 5a       	P2 = P2 << 0x1;
ffa00ec6:	4a 30       	R1 = P2;
ffa00ec8:	0a 52       	R0 = R2 - R1;
ffa00eca:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00ecc:	08 9b       	B[P1] = R0;
ffa00ece:	39 18       	IF CC JUMP 0xffa00f40 <_sprintf_int+0x108>;
ffa00ed0:	50 30       	R2 = P0;
ffa00ed2:	c2 2f       	JUMP.S 0xffa00e56 <_sprintf_int+0x1e>;
ffa00ed4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa00ed6:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
ffa00ed8:	f8 4f       	R0 <<= 0x1f;
ffa00eda:	90 52       	R2 = R0 - R2;
ffa00edc:	02 0d       	CC = R2 <= 0x0;
ffa00ede:	3c 18       	IF CC JUMP 0xffa00f56 <_sprintf_int+0x11e>;
ffa00ee0:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00ee4:	43 e1 66 66 	R3.H = 0x6666;		/* (26214)	R3=0x66660000(1717960704) */
ffa00ee8:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
ffa00eea:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00eee:	03 e1 67 66 	R3.L = 0x6667;		/* (26215)	R3=0x66666667(1717986919) */
ffa00ef2:	5d 68       	P5 = 0xb (X);		/*		P5=0xb( 11) */
ffa00ef4:	b2 e0 1f 50 	LSETUP(0xffa00ef8 <_sprintf_int+0xc0>, 0xffa00f32 <_sprintf_int+0xfa>) LC1 = P5;
ffa00ef8:	80 c8 13 18 	A1 = R2.L * R3.L (FU) || P1 = [P3] || NOP;
ffa00efc:	59 91 00 00 
ffa00f00:	83 c6 80 51 	A1 = A1 >> 0x10;
ffa00f04:	11 c1 13 86 	A1 += R2.H * R3.L (M), A0 = R2.H * R3.H (IS);
ffa00f08:	11 c1 1a 98 	A1 += R3.H * R2.L (M, IS);
ffa00f0c:	83 c6 80 11 	A1 = A1 >>> 0x10;
ffa00f10:	0b c4 00 00 	R0 = (A0 += A1);
ffa00f14:	82 c6 0a 03 	R1 = R2 >>> 0x1f;
ffa00f18:	10 4d       	R0 >>>= 0x2;
ffa00f1a:	08 52       	R0 = R0 - R1;
ffa00f1c:	00 32       	P0 = R0;
ffa00f1e:	61 5a       	P1 = P1 + P4;
ffa00f20:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa00f22:	80 5e       	P2 = P0 + (P0 << 0x2);
ffa00f24:	92 5a       	P2 = P2 << 0x1;
ffa00f26:	4a 30       	R1 = P2;
ffa00f28:	0a 52       	R0 = R2 - R1;
ffa00f2a:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00f2c:	40 0d       	CC = P0 <= 0x0;
ffa00f2e:	08 9b       	B[P1] = R0;
ffa00f30:	0f 18       	IF CC JUMP 0xffa00f4e <_sprintf_int+0x116>;
ffa00f32:	50 30       	R2 = P0;
ffa00f34:	59 68       	P1 = 0xb (X);		/*		P1=0xb( 11) */
ffa00f36:	63 60       	R3 = 0xc (X);		/*		R3=0xc( 12) */
ffa00f38:	5a 91       	P2 = [P3];
ffa00f3a:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
ffa00f3c:	8a 5a       	P2 = P2 + P1;
ffa00f3e:	10 9b       	B[P2] = R0;
ffa00f40:	03 0d       	CC = R3 <= 0x0;
ffa00f42:	8a 17       	IF !CC JUMP 0xffa00e56 <_sprintf_int+0x1e> (BP);
ffa00f44:	01 e8 00 00 	UNLINK;
ffa00f48:	03 30       	R0 = R3;
ffa00f4a:	bb 05       	(R7:7, P5:3) = [SP++];
ffa00f4c:	10 00       	RTS;
ffa00f4e:	5c 30       	R3 = P4;
ffa00f50:	4c 32       	P1 = P4;
ffa00f52:	0b 64       	R3 += 0x1;		/* (  1) */
ffa00f54:	f2 2f       	JUMP.S 0xffa00f38 <_sprintf_int+0x100>;
ffa00f56:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa00f5a:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
ffa00f5c:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa00f5e:	0b e1 dc 0b 	P3.L = 0xbdc;		/* (3036)	P3=0xff900bdc <_printf_temp> */
ffa00f62:	eb 2f       	JUMP.S 0xffa00f38 <_sprintf_int+0x100>;

ffa00f64 <_sprintf_hex>:
ffa00f64:	10 32       	P2 = R0;
ffa00f66:	78 05       	[--SP] = (R7:7);
ffa00f68:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
ffa00f6a:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00f6e:	e2 60       	R2 = 0x1c (X);		/*		R2=0x1c( 28) */
ffa00f70:	10 9b       	B[P2] = R0;
ffa00f72:	20 e1 78 00 	R0 = 0x78 (X);		/*		R0=0x78(120) */
ffa00f76:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa00f7a:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
ffa00f7c:	12 6c       	P2 += 0x2;		/* (  2) */
ffa00f7e:	41 68       	P1 = 0x8 (X);		/*		P1=0x8(  8) */
ffa00f80:	4f 60       	R7 = 0x9 (X);		/*		R7=0x9(  9) */
ffa00f82:	b2 e0 09 10 	LSETUP(0xffa00f86 <_sprintf_hex+0x22>, 0xffa00f94 <_sprintf_hex+0x30>) LC1 = P1;
ffa00f86:	01 30       	R0 = R1;
ffa00f88:	10 40       	R0 >>>= R2;
ffa00f8a:	18 54       	R0 = R0 & R3;
ffa00f8c:	38 09       	CC = R0 <= R7;
ffa00f8e:	09 1c       	IF CC JUMP 0xffa00fa0 <_sprintf_hex+0x3c> (BP);
ffa00f90:	b8 65       	R0 += 0x37;		/* ( 55) */
ffa00f92:	10 9a       	B[P2++] = R0;
ffa00f94:	e2 67       	R2 += -0x4;		/* ( -4) */
ffa00f96:	01 e8 00 00 	UNLINK;
ffa00f9a:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa00f9c:	38 05       	(R7:7) = [SP++];
ffa00f9e:	10 00       	RTS;
ffa00fa0:	80 65       	R0 += 0x30;		/* ( 48) */
ffa00fa2:	f8 2f       	JUMP.S 0xffa00f92 <_sprintf_hex+0x2e>;

ffa00fa4 <_strprintf_int>:
ffa00fa4:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00fa6:	29 32       	P5 = R1;
ffa00fa8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00fac:	0a 30       	R1 = R2;
ffa00fae:	38 30       	R7 = R0;
ffa00fb0:	ff e3 44 ff 	CALL 0xffa00e38 <_sprintf_int>;
ffa00fb4:	29 91       	R1 = [P5];
ffa00fb6:	41 50       	R1 = R1 + R0;
ffa00fb8:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa00fbc:	29 93 00 00 
ffa00fc0:	01 e8 00 00 	UNLINK;
ffa00fc4:	07 30       	R0 = R7;
ffa00fc6:	bd 05       	(R7:7, P5:5) = [SP++];
ffa00fc8:	10 00       	RTS;
	...

ffa00fcc <_strprintf_hex>:
ffa00fcc:	fd 05       	[--SP] = (R7:7, P5:5);
ffa00fce:	29 32       	P5 = R1;
ffa00fd0:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa00fd4:	0a 30       	R1 = R2;
ffa00fd6:	38 30       	R7 = R0;
ffa00fd8:	ff e3 c6 ff 	CALL 0xffa00f64 <_sprintf_hex>;
ffa00fdc:	29 91       	R1 = [P5];
ffa00fde:	41 50       	R1 = R1 + R0;
ffa00fe0:	04 cc 38 0e 	R7 = R7 + R0 (NS) || [P5] = R1 || NOP;
ffa00fe4:	29 93 00 00 
ffa00fe8:	01 e8 00 00 	UNLINK;
ffa00fec:	07 30       	R0 = R7;
ffa00fee:	bd 05       	(R7:7, P5:5) = [SP++];
ffa00ff0:	10 00       	RTS;
	...

ffa00ff4 <_atoi>:
ffa00ff4:	08 32       	P1 = R0;
ffa00ff6:	6a 61       	R2 = 0x2d (X);		/*		R2=0x2d( 45) */
ffa00ff8:	f5 05       	[--SP] = (R7:6, P5:5);
ffa00ffa:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa00ffe:	48 99       	R0 = B[P1] (X);
ffa01000:	10 08       	CC = R0 == R2;
ffa01002:	25 18       	IF CC JUMP 0xffa0104c <_atoi+0x58>;
ffa01004:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa01006:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa01008:	41 32       	P0 = P1;
ffa0100a:	08 6c       	P0 += 0x1;		/* (  1) */
ffa0100c:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
ffa0100e:	4e 60       	R6 = 0x9 (X);		/*		R6=0x9(  9) */
ffa01010:	12 20       	JUMP.S 0xffa01034 <_atoi+0x40>;
ffa01012:	8b 08       	CC = R3 < R1;
ffa01014:	16 10       	IF !CC JUMP 0xffa01040 <_atoi+0x4c>;
ffa01016:	10 43       	R0 = R2.B (X);
ffa01018:	28 32       	P5 = R0;
ffa0101a:	4a 60       	R2 = 0x9 (X);		/*		R2=0x9(  9) */
ffa0101c:	40 99       	R0 = B[P0] (X);
ffa0101e:	80 66       	R0 += -0x30;		/* (-48) */
ffa01020:	40 43       	R0 = R0.B (Z);
ffa01022:	aa 5a       	P2 = P2 + P5;
ffa01024:	10 0a       	CC = R0 <= R2 (IU);
ffa01026:	82 6e       	P2 += -0x30;		/* (-48) */
ffa01028:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0102a:	03 14       	IF !CC JUMP 0xffa01030 <_atoi+0x3c> (BP);
ffa0102c:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa0102e:	92 5a       	P2 = P2 << 0x1;
ffa01030:	0b 64       	R3 += 0x1;		/* (  1) */
ffa01032:	08 6c       	P0 += 0x1;		/* (  1) */
ffa01034:	4a 99       	R2 = B[P1] (X);
ffa01036:	02 30       	R0 = R2;
ffa01038:	80 66       	R0 += -0x30;		/* (-48) */
ffa0103a:	40 43       	R0 = R0.B (Z);
ffa0103c:	30 0a       	CC = R0 <= R6 (IU);
ffa0103e:	ea 1f       	IF CC JUMP 0xffa01012 <_atoi+0x1e> (BP);
ffa01040:	42 30       	R0 = P2;
ffa01042:	f8 40       	R0 *= R7;
ffa01044:	01 e8 00 00 	UNLINK;
ffa01048:	b5 05       	(R7:6, P5:5) = [SP++];
ffa0104a:	10 00       	RTS;
ffa0104c:	09 6c       	P1 += 0x1;		/* (  1) */
ffa0104e:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
ffa01050:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01052:	db 2f       	JUMP.S 0xffa01008 <_atoi+0x14>;

ffa01054 <_udelay>:
ffa01054:	00 0d       	CC = R0 <= 0x0;
ffa01056:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0105a:	0b 18       	IF CC JUMP 0xffa01070 <_udelay+0x1c>;
ffa0105c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0105e:	2a e1 a0 00 	P2 = 0xa0 (X);		/*		P2=0xa0(160) */
ffa01062:	b2 e0 03 20 	LSETUP(0xffa01066 <_udelay+0x12>, 0xffa01068 <_udelay+0x14>) LC1 = P2;
ffa01066:	00 00       	NOP;
ffa01068:	00 00       	NOP;
ffa0106a:	09 64       	R1 += 0x1;		/* (  1) */
ffa0106c:	08 08       	CC = R0 == R1;
ffa0106e:	f8 17       	IF !CC JUMP 0xffa0105e <_udelay+0xa> (BP);
ffa01070:	01 e8 00 00 	UNLINK;
ffa01074:	10 00       	RTS;
	...

ffa01078 <_spi_delay>:
ffa01078:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc000a0(-4194144) */
ffa0107c:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01080:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa01084:	00 00       	NOP;
ffa01086:	50 95       	R0 = W[P2] (X);
ffa01088:	c0 42       	R0 = R0.L (Z);
ffa0108a:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa0108c:	fc 17       	IF !CC JUMP 0xffa01084 <_spi_delay+0xc> (BP);
ffa0108e:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01090:	0a 10       	IF !CC JUMP 0xffa010a4 <_spi_delay+0x2c>;
ffa01092:	00 00       	NOP;
ffa01094:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa01098:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0109c:	00 00       	NOP;
ffa0109e:	50 95       	R0 = W[P2] (X);
ffa010a0:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa010a2:	fd 1f       	IF CC JUMP 0xffa0109c <_spi_delay+0x24> (BP);
ffa010a4:	01 e8 00 00 	UNLINK;
ffa010a8:	10 00       	RTS;
	...

ffa010ac <_spi_write_register>:
ffa010ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa010b0:	ed 05       	[--SP] = (R7:5, P5:5);
ffa010b2:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa010b6:	25 e1 00 02 	R5 = 0x200 (X);		/*		R5=0x200(512) */
ffa010ba:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa010be:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || W[P2] = R5 || NOP;
ffa010c2:	15 97 00 00 
ffa010c6:	24 00       	SSYNC;
ffa010c8:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0000b(-4194293) */
ffa010cc:	28 4a       	BITSET (R0, 0x5);		/* bit  5 */
ffa010ce:	40 43       	R0 = R0.B (Z);
ffa010d0:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa010d4:	28 97       	W[P5] = R0;
ffa010d6:	ff e3 d1 ff 	CALL 0xffa01078 <_spi_delay>;
ffa010da:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa010de:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa010e2:	76 43       	R6 = R6.B (Z);
ffa010e4:	57 95       	R7 = W[P2] (X);
ffa010e6:	2e 97       	W[P5] = R6;
ffa010e8:	ff e3 c8 ff 	CALL 0xffa01078 <_spi_delay>;
ffa010ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa010f0:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa010f4:	15 97       	W[P2] = R5;
ffa010f6:	24 00       	SSYNC;
ffa010f8:	7f 43       	R7 = R7.B (Z);
ffa010fa:	01 e8 00 00 	UNLINK;
ffa010fe:	07 30       	R0 = R7;
ffa01100:	ad 05       	(R7:5, P5:5) = [SP++];
ffa01102:	10 00       	RTS;

ffa01104 <_spi_read_register>:
ffa01104:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01108:	fc 05       	[--SP] = (R7:7, P5:4);
ffa0110a:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0110e:	27 e1 00 02 	R7 = 0x200 (X);		/*		R7=0x200(512) */
ffa01112:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01116:	17 97       	W[P2] = R7;
ffa01118:	24 00       	SSYNC;
ffa0111a:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc00000(-4194304) */
ffa0111e:	40 43       	R0 = R0.B (Z);
ffa01120:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa01124:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa01128:	20 97       	W[P4] = R0;
ffa0112a:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa0112e:	ff e3 a5 ff 	CALL 0xffa01078 <_spi_delay>;
ffa01132:	68 95       	R0 = W[P5] (X);
ffa01134:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01136:	20 97       	W[P4] = R0;
ffa01138:	ff e3 a0 ff 	CALL 0xffa01078 <_spi_delay>;
ffa0113c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01140:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01144:	68 95       	R0 = W[P5] (X);
ffa01146:	17 97       	W[P2] = R7;
ffa01148:	24 00       	SSYNC;
ffa0114a:	01 e8 00 00 	UNLINK;
ffa0114e:	40 43       	R0 = R0.B (Z);
ffa01150:	bc 05       	(R7:7, P5:4) = [SP++];
ffa01152:	10 00       	RTS;

ffa01154 <_spi_read_register_status>:
ffa01154:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01158:	f3 05       	[--SP] = (R7:6, P5:3);
ffa0115a:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0115e:	26 e1 00 02 	R6 = 0x200 (X);		/*		R6=0x200(512) */
ffa01162:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01166:	19 32       	P3 = R1;
ffa01168:	16 97       	W[P2] = R6;
ffa0116a:	24 00       	SSYNC;
ffa0116c:	4c e1 c0 ff 	P4.H = 0xffc0;		/* (-64)	P4=0xffc0050c(-4193012) */
ffa01170:	40 43       	R0 = R0.B (Z);
ffa01172:	0c e1 0c 05 	P4.L = 0x50c;		/* (1292)	P4=0xffc0050c(-4193012) */
ffa01176:	20 97       	W[P4] = R0;
ffa01178:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa0117c:	ff e3 7e ff 	CALL 0xffa01078 <_spi_delay>;
ffa01180:	0d e1 18 05 	P5.L = 0x518;		/* (1304)	P5=0xffc00518(-4193000) */
ffa01184:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01186:	6f 95       	R7 = W[P5] (X);
ffa01188:	20 97       	W[P4] = R0;
ffa0118a:	ff e3 77 ff 	CALL 0xffa01078 <_spi_delay>;
ffa0118e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01192:	68 95       	R0 = W[P5] (X);
ffa01194:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01198:	18 9b       	B[P3] = R0;
ffa0119a:	16 97       	W[P2] = R6;
ffa0119c:	24 00       	SSYNC;
ffa0119e:	7f 43       	R7 = R7.B (Z);
ffa011a0:	01 e8 00 00 	UNLINK;
ffa011a4:	07 30       	R0 = R7;
ffa011a6:	b3 05       	(R7:6, P5:3) = [SP++];
ffa011a8:	10 00       	RTS;
	...

ffa011ac <_spi_write_byte>:
ffa011ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa011b0:	78 05       	[--SP] = (R7:7);
ffa011b2:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa011b6:	27 e1 00 02 	R7 = 0x200 (X);		/*		R7=0x200(512) */
ffa011ba:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa011be:	17 97       	W[P2] = R7;
ffa011c0:	24 00       	SSYNC;
ffa011c2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa011c6:	40 43       	R0 = R0.B (Z);
ffa011c8:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa011cc:	10 97       	W[P2] = R0;
ffa011ce:	ff e3 55 ff 	CALL 0xffa01078 <_spi_delay>;
ffa011d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa011d6:	0a e1 18 05 	P2.L = 0x518;		/* (1304)	P2=0xffc00518(-4193000) */
ffa011da:	50 95       	R0 = W[P2] (X);
ffa011dc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00518(-4193000) */
ffa011e0:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa011e4:	17 97       	W[P2] = R7;
ffa011e6:	24 00       	SSYNC;
ffa011e8:	01 e8 00 00 	UNLINK;
ffa011ec:	40 43       	R0 = R0.B (Z);
ffa011ee:	38 05       	(R7:7) = [SP++];
ffa011f0:	10 00       	RTS;
	...

ffa011f4 <_spi_write_packet>:
ffa011f4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa011f8:	fd 05       	[--SP] = (R7:7, P5:5);
ffa011fa:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa011fe:	38 30       	R7 = R0;
ffa01200:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01204:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01208:	10 97       	W[P2] = R0;
ffa0120a:	24 00       	SSYNC;
ffa0120c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01210:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa01214:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa01218:	10 97       	W[P2] = R0;
ffa0121a:	ff e3 2f ff 	CALL 0xffa01078 <_spi_delay>;
ffa0121e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa01222:	20 e1 07 50 	R0 = 0x5007 (X);		/*		R0=0x5007(20487) */
ffa01226:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0122a:	10 97       	W[P2] = R0;
ffa0122c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa01230:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01232:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa01236:	10 97       	W[P2] = R0;
ffa01238:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0123a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0123c:	10 97       	W[P2] = R0;
ffa0123e:	82 6f       	P2 += -0x10;		/* (-16) */
ffa01240:	17 93       	[P2] = R7;
ffa01242:	24 00       	SSYNC;
ffa01244:	20 e1 81 00 	R0 = 0x81 (X);		/*		R0=0x81(129) */
ffa01248:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0124a:	10 97       	W[P2] = R0;
ffa0124c:	01 20       	JUMP.S 0xffa0124e <_spi_write_packet+0x5a>;
	...
ffa01256:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00518(-4193000) */
ffa0125a:	0d e1 68 0d 	P5.L = 0xd68;		/* (3432)	P5=0xffc00d68(-4190872) */
ffa0125e:	68 95       	R0 = W[P5] (X);
ffa01260:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01262:	f6 1f       	IF CC JUMP 0xffa0124e <_spi_write_packet+0x5a> (BP);
ffa01264:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa01268:	0a e1 08 05 	P2.L = 0x508;		/* (1288)	P2=0xffc00508(-4193016) */
ffa0126c:	50 95       	R0 = W[P2] (X);
ffa0126e:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01270:	ef 17       	IF !CC JUMP 0xffa0124e <_spi_write_packet+0x5a> (BP);
ffa01272:	69 95       	R1 = W[P5] (X);
ffa01274:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa01276:	08 54       	R0 = R0 & R1;
ffa01278:	00 0c       	CC = R0 == 0x0;
ffa0127a:	ea 17       	IF !CC JUMP 0xffa0124e <_spi_write_packet+0x5a> (BP);
ffa0127c:	ff e3 fe fe 	CALL 0xffa01078 <_spi_delay>;
ffa01280:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01282:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00508(-4193016) */
ffa01286:	28 97       	W[P5] = R0;
ffa01288:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa0128c:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa01290:	10 97       	W[P2] = R0;
ffa01292:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa01296:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01298:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa0129c:	10 97       	W[P2] = R0;
ffa0129e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa012a2:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa012a6:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa012aa:	10 97       	W[P2] = R0;
ffa012ac:	24 00       	SSYNC;
ffa012ae:	01 e8 00 00 	UNLINK;
ffa012b2:	bd 05       	(R7:7, P5:5) = [SP++];
ffa012b4:	10 00       	RTS;
	...

ffa012b8 <_spi_write_packet_noDMA>:
ffa012b8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa012bc:	fc 05       	[--SP] = (R7:7, P5:4);
ffa012be:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa012c2:	38 30       	R7 = R0;
ffa012c4:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa012c8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa012cc:	10 97       	W[P2] = R0;
ffa012ce:	24 00       	SSYNC;
ffa012d0:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc00d68(-4190872) */
ffa012d4:	20 e1 a0 00 	R0 = 0xa0 (X);		/*		R0=0xa0(160) */
ffa012d8:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa012dc:	28 97       	W[P5] = R0;
ffa012de:	27 32       	P4 = R7;
ffa012e0:	ff e3 cc fe 	CALL 0xffa01078 <_spi_delay>;
ffa012e4:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa012e6:	0f 64       	R7 += 0x1;		/* (  1) */
ffa012e8:	60 98       	R0 = B[P4++] (X);
ffa012ea:	28 97       	W[P5] = R0;
ffa012ec:	ff e3 c6 fe 	CALL 0xffa01078 <_spi_delay>;
ffa012f0:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa012f2:	07 08       	CC = R7 == R0;
ffa012f4:	f9 17       	IF !CC JUMP 0xffa012e6 <_spi_write_packet_noDMA+0x2e> (BP);
ffa012f6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa012fa:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa012fe:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01302:	10 97       	W[P2] = R0;
ffa01304:	24 00       	SSYNC;
ffa01306:	01 e8 00 00 	UNLINK;
ffa0130a:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0130c:	10 00       	RTS;
	...

ffa01310 <_spi_read_packet>:
ffa01310:	f3 05       	[--SP] = (R7:6, P5:3);
ffa01312:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01316:	20 32       	P4 = R0;
ffa01318:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0131c:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0131e:	ff e3 c7 fe 	CALL 0xffa010ac <_spi_write_register>;
ffa01322:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01326:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0132a:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0132e:	10 97       	W[P2] = R0;
ffa01330:	24 00       	SSYNC;
ffa01332:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc0050c(-4193012) */
ffa01336:	0d e1 0c 05 	P5.L = 0x50c;		/* (1292)	P5=0xffc0050c(-4193012) */
ffa0133a:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0133e:	28 97       	W[P5] = R0;
ffa01340:	5d 32       	P3 = P5;
ffa01342:	ff e3 9b fe 	CALL 0xffa01078 <_spi_delay>;
ffa01346:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01348:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa0134a:	65 6c       	P5 += 0xc;		/* ( 12) */
ffa0134c:	1e 97       	W[P3] = R6;
ffa0134e:	ff e3 95 fe 	CALL 0xffa01078 <_spi_delay>;
ffa01352:	0f 64       	R7 += 0x1;		/* (  1) */
ffa01354:	68 95       	R0 = W[P5] (X);
ffa01356:	20 9a       	B[P4++] = R0;
ffa01358:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa0135a:	78 43       	R0 = R7.B (Z);
ffa0135c:	08 08       	CC = R0 == R1;
ffa0135e:	f7 17       	IF !CC JUMP 0xffa0134c <_spi_read_packet+0x3c> (BP);
ffa01360:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01364:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01368:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa0136c:	10 97       	W[P2] = R0;
ffa0136e:	24 00       	SSYNC;
ffa01370:	01 e8 00 00 	UNLINK;
ffa01374:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01376:	b3 05       	(R7:6, P5:3) = [SP++];
ffa01378:	10 00       	RTS;
	...

ffa0137c <_spi_read_packet_nocheck>:
ffa0137c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01380:	78 05       	[--SP] = (R7:7);
ffa01382:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa01386:	38 30       	R7 = R0;
ffa01388:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa0138c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01390:	10 97       	W[P2] = R0;
ffa01392:	24 00       	SSYNC;
ffa01394:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01398:	20 e1 61 00 	R0 = 0x61 (X);		/*		R0=0x61( 97) */
ffa0139c:	0a e1 0c 05 	P2.L = 0x50c;		/* (1292)	P2=0xffc0050c(-4193012) */
ffa013a0:	10 97       	W[P2] = R0;
ffa013a2:	ff e3 6b fe 	CALL 0xffa01078 <_spi_delay>;
ffa013a6:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00008(-4194296) */
ffa013aa:	09 e1 00 05 	P1.L = 0x500;		/* (1280)	P1=0xffc00500(-4193024) */
ffa013ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa013b0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc0050c(-4193012) */
ffa013b4:	08 97       	W[P1] = R0;
ffa013b6:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xffc00d50(-4190896) */
ffa013ba:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa013bc:	10 97       	W[P2] = R0;
ffa013be:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa013c0:	22 6c       	P2 += 0x4;		/* (  4) */
ffa013c2:	10 97       	W[P2] = R0;
ffa013c4:	82 6f       	P2 += -0x10;		/* (-16) */
ffa013c6:	17 93       	[P2] = R7;
ffa013c8:	20 e1 83 00 	R0 = 0x83 (X);		/*		R0=0x83(131) */
ffa013cc:	22 6c       	P2 += 0x4;		/* (  4) */
ffa013ce:	10 97       	W[P2] = R0;
ffa013d0:	20 e1 06 50 	R0 = 0x5006 (X);		/*		R0=0x5006(20486) */
ffa013d4:	08 97       	W[P1] = R0;
	...
ffa013de:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00500(-4193024) */
ffa013e2:	09 e1 68 0d 	P1.L = 0xd68;		/* (3432)	P1=0xffc00d68(-4190872) */
ffa013e6:	48 95       	R0 = W[P1] (X);
ffa013e8:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa013ea:	f6 1f       	IF CC JUMP 0xffa013d6 <_spi_read_packet_nocheck+0x5a> (BP);
ffa013ec:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa013f0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa013f2:	0a e1 48 0d 	P2.L = 0xd48;		/* (3400)	P2=0xffc00d48(-4190904) */
ffa013f6:	10 97       	W[P2] = R0;
ffa013f8:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa013fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d48(-4190904) */
ffa013fe:	08 97       	W[P1] = R0;
ffa01400:	0a e1 00 05 	P2.L = 0x500;		/* (1280)	P2=0xffc00500(-4193024) */
ffa01404:	20 e1 0d 50 	R0 = 0x500d (X);		/*		R0=0x500d(20493) */
ffa01408:	10 97       	W[P2] = R0;
ffa0140a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00500(-4193024) */
ffa0140e:	20 e1 00 02 	R0 = 0x200 (X);		/*		R0=0x200(512) */
ffa01412:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01416:	10 97       	W[P2] = R0;
ffa01418:	24 00       	SSYNC;
ffa0141a:	01 e8 00 00 	UNLINK;
ffa0141e:	38 05       	(R7:7) = [SP++];
ffa01420:	10 00       	RTS;
	...

ffa01424 <_radio_set_rx>:
ffa01424:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01428:	78 05       	[--SP] = (R7:7);
ffa0142a:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0142e:	27 e1 00 04 	R7 = 0x400 (X);		/*		R7=0x400(1024) */
ffa01432:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01436:	17 97       	W[P2] = R7;
ffa01438:	24 00       	SSYNC;
ffa0143a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0143c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0143e:	ff e3 37 fe 	CALL 0xffa010ac <_spi_write_register>;
ffa01442:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa01446:	ff e3 b3 fe 	CALL 0xffa011ac <_spi_write_byte>;
ffa0144a:	99 60       	R1 = 0x13 (X);		/*		R1=0x13( 19) */
ffa0144c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0144e:	ff e3 2f fe 	CALL 0xffa010ac <_spi_write_register>;
ffa01452:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa01456:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01458:	ff e3 2a fe 	CALL 0xffa010ac <_spi_write_register>;
ffa0145c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa01460:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01462:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa01466:	10 97       	W[P2] = R0;
ffa01468:	24 00       	SSYNC;
ffa0146a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa0146e:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa01472:	17 97       	W[P2] = R7;
ffa01474:	24 00       	SSYNC;
ffa01476:	01 e8 00 00 	UNLINK;
ffa0147a:	38 05       	(R7:7) = [SP++];
ffa0147c:	10 00       	RTS;
	...

ffa01480 <_radio_set_tx>:
ffa01480:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa01484:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa01488:	0a e1 04 15 	P2.L = 0x1504;		/* (5380)	P2=0xffc01504(-4188924) */
ffa0148c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01490:	10 97       	W[P2] = R0;
ffa01492:	24 00       	SSYNC;
ffa01494:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01496:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01498:	ff e3 0a fe 	CALL 0xffa010ac <_spi_write_register>;
ffa0149c:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa014a0:	ff e3 86 fe 	CALL 0xffa011ac <_spi_write_byte>;
ffa014a4:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa014a8:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa014aa:	ff e3 01 fe 	CALL 0xffa010ac <_spi_write_register>;
ffa014ae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa014b0:	f1 60       	R1 = 0x1e (X);		/*		R1=0x1e( 30) */
ffa014b2:	ff e3 fd fd 	CALL 0xffa010ac <_spi_write_register>;
ffa014b6:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01504(-4188924) */
ffa014ba:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa014bc:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa014c0:	10 97       	W[P2] = R0;
ffa014c2:	01 e8 00 00 	UNLINK;
ffa014c6:	10 00       	RTS;

ffa014c8 <_radio_wait_irq>:
ffa014c8:	78 05       	[--SP] = (R7:7);
ffa014ca:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa014ce:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa014d2:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa014d6:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (X) || NOP;
ffa014da:	50 95 00 00 
ffa014de:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa014e0:	25 18       	IF CC JUMP 0xffa0152a <_radio_wait_irq+0x62>;
ffa014e2:	01 0d       	CC = R1 <= 0x0;
ffa014e4:	25 18       	IF CC JUMP 0xffa0152e <_radio_wait_irq+0x66>;
ffa014e6:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa014e8:	04 20       	JUMP.S 0xffa014f0 <_radio_wait_irq+0x28>;
ffa014ea:	39 08       	CC = R1 == R7;
ffa014ec:	10 18       	IF CC JUMP 0xffa0150c <_radio_wait_irq+0x44>;
	...
ffa014f6:	00 00       	NOP;
ffa014f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa014fc:	0a e1 00 15 	P2.L = 0x1500;		/* (5376)	P2=0xffc01500(-4188928) */
ffa01500:	50 95       	R0 = W[P2] (X);
ffa01502:	58 48       	CC = !BITTST (R0, 0xb);		/* bit 11 */
ffa01504:	0f 64       	R7 += 0x1;		/* (  1) */
ffa01506:	f2 17       	IF !CC JUMP 0xffa014ea <_radio_wait_irq+0x22> (BP);
ffa01508:	39 09       	CC = R1 <= R7;
ffa0150a:	06 10       	IF !CC JUMP 0xffa01516 <_radio_wait_irq+0x4e>;
ffa0150c:	01 e8 00 00 	UNLINK;
ffa01510:	07 30       	R0 = R7;
ffa01512:	38 05       	(R7:7) = [SP++];
ffa01514:	10 00       	RTS;
ffa01516:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa01518:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0151c:	ff e3 c8 fd 	CALL 0xffa010ac <_spi_write_register>;
ffa01520:	01 e8 00 00 	UNLINK;
ffa01524:	07 30       	R0 = R7;
ffa01526:	38 05       	(R7:7) = [SP++];
ffa01528:	10 00       	RTS;
ffa0152a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa0152c:	ee 2f       	JUMP.S 0xffa01508 <_radio_wait_irq+0x40>;
ffa0152e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01530:	ee 2f       	JUMP.S 0xffa0150c <_radio_wait_irq+0x44>;
	...

ffa01534 <_spi_write_register_ver>:
ffa01534:	68 05       	[--SP] = (R7:5);
ffa01536:	47 43       	R7 = R0.B (Z);
ffa01538:	4e 43       	R6 = R1.B (Z);
ffa0153a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0153e:	0e 30       	R1 = R6;
ffa01540:	07 30       	R0 = R7;
ffa01542:	ff e3 b5 fd 	CALL 0xffa010ac <_spi_write_register>;
ffa01546:	07 30       	R0 = R7;
ffa01548:	ff e3 de fd 	CALL 0xffa01104 <_spi_read_register>;
ffa0154c:	45 43       	R5 = R0.B (Z);
ffa0154e:	2e 08       	CC = R6 == R5;
ffa01550:	29 18       	IF CC JUMP 0xffa015a2 <_spi_write_register_ver+0x6e>;
ffa01552:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900007(-7340025) */
ffa01556:	0f 30       	R1 = R7;
ffa01558:	00 e1 9c 00 	R0.L = 0x9c;		/* (156)	R0=0xff90009c(-7339876) */
ffa0155c:	ff e3 a8 fa 	CALL 0xffa00aac <_printf_int>;
ffa01560:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90009c(-7339876) */
ffa01564:	00 e1 10 05 	R0.L = 0x510;		/* (1296)	R0=0xff900510(-7338736) */
ffa01568:	ff e3 86 f9 	CALL 0xffa00874 <_uart_str>;
ffa0156c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900510(-7338736) */
ffa01570:	0e 30       	R1 = R6;
ffa01572:	00 e1 b0 00 	R0.L = 0xb0;		/* (176)	R0=0xff9000b0(-7339856) */
ffa01576:	ff e3 e9 f9 	CALL 0xffa00948 <_printf_hex_byte>;
ffa0157a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000b0(-7339856) */
ffa0157e:	00 e1 10 05 	R0.L = 0x510;		/* (1296)	R0=0xff900510(-7338736) */
ffa01582:	ff e3 79 f9 	CALL 0xffa00874 <_uart_str>;
ffa01586:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900510(-7338736) */
ffa0158a:	00 e1 bc 00 	R0.L = 0xbc;		/* (188)	R0=0xff9000bc(-7339844) */
ffa0158e:	0d 30       	R1 = R5;
ffa01590:	ff e3 dc f9 	CALL 0xffa00948 <_printf_hex_byte>;
ffa01594:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000bc(-7339844) */
ffa01598:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa0159c:	35 30       	R6 = R5;
ffa0159e:	ff e3 6b f9 	CALL 0xffa00874 <_uart_str>;
ffa015a2:	01 e8 00 00 	UNLINK;
ffa015a6:	06 30       	R0 = R6;
ffa015a8:	28 05       	(R7:5) = [SP++];
ffa015aa:	10 00       	RTS;

ffa015ac <_radio_init>:
ffa015ac:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01500(-4188928) */
ffa015b0:	78 05       	[--SP] = (R7:7);
ffa015b2:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa015b4:	0a e1 14 05 	P2.L = 0x514;		/* (1300)	P2=0xffc00514(-4193004) */
ffa015b8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa015bc:	11 97       	W[P2] = R1;
ffa015be:	21 e1 2d 50 	R1 = 0x502d (X);		/*		R1=0x502d(20525) */
ffa015c2:	62 6f       	P2 += -0x14;		/* (-20) */
ffa015c4:	11 97       	W[P2] = R1;
ffa015c6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa015c8:	22 6c       	P2 += 0x4;		/* (  4) */
ffa015ca:	11 97       	W[P2] = R1;
ffa015cc:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00514(-4193004) */
ffa015d0:	21 e1 00 02 	R1 = 0x200 (X);		/*		R1=0x200(512) */
ffa015d4:	0a e1 08 15 	P2.L = 0x1508;		/* (5384)	P2=0xffc01508(-4188920) */
ffa015d8:	11 97       	W[P2] = R1;
ffa015da:	c2 6d       	P2 += 0x38;		/* ( 56) */
ffa015dc:	51 95       	R1 = W[P2] (X);
ffa015de:	59 4a       	BITSET (R1, 0xb);		/* bit 11 */
ffa015e0:	11 97       	W[P2] = R1;
ffa015e2:	82 6f       	P2 += -0x10;		/* (-16) */
ffa015e4:	51 95       	R1 = W[P2] (X);
ffa015e6:	59 4c       	BITCLR (R1, 0xb);		/* bit 11 */
ffa015e8:	11 97       	W[P2] = R1;
ffa015ea:	52 95       	R2 = W[P2] (X);
ffa015ec:	21 e1 00 06 	R1 = 0x600 (X);		/*		R1=0x600(1536) */
ffa015f0:	51 56       	R1 = R1 | R2;
ffa015f2:	11 97       	W[P2] = R1;
ffa015f4:	22 e1 7c 00 	R2 = 0x7c (X);		/*		R2=0x7c(124) */
ffa015f8:	41 43       	R1 = R0.B (Z);
ffa015fa:	11 0a       	CC = R1 <= R2 (IU);
ffa015fc:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
ffa01600:	01 06       	IF !CC R0 = R1;
ffa01602:	47 43       	R7 = R0.B (Z);
ffa01604:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a6c(-7337364) */
ffa01608:	0f 30       	R1 = R7;
ffa0160a:	00 e1 c8 00 	R0.L = 0xc8;		/* (200)	R0=0xff9000c8(-7339832) */
ffa0160e:	ff e3 4f fa 	CALL 0xffa00aac <_printf_int>;
ffa01612:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000c8(-7339832) */
ffa01616:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa0161a:	ff e3 2d f9 	CALL 0xffa00874 <_uart_str>;
ffa0161e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01620:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01622:	ff e3 45 fd 	CALL 0xffa010ac <_spi_write_register>;
ffa01626:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01628:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0162a:	ff e3 85 ff 	CALL 0xffa01534 <_spi_write_register_ver>;
ffa0162e:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01630:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa01632:	ff e3 81 ff 	CALL 0xffa01534 <_spi_write_register_ver>;
ffa01636:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa01638:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0163a:	ff e3 7d ff 	CALL 0xffa01534 <_spi_write_register_ver>;
ffa0163e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa01640:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa01642:	ff e3 79 ff 	CALL 0xffa01534 <_spi_write_register_ver>;
ffa01646:	0f 30       	R1 = R7;
ffa01648:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
ffa0164a:	ff e3 75 ff 	CALL 0xffa01534 <_spi_write_register_ver>;
ffa0164e:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
ffa01650:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01652:	ff e3 71 ff 	CALL 0xffa01534 <_spi_write_register_ver>;
ffa01656:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0165a:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
ffa0165c:	ff e3 6c ff 	CALL 0xffa01534 <_spi_write_register_ver>;
ffa01660:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
ffa01662:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01664:	ff e3 68 ff 	CALL 0xffa01534 <_spi_write_register_ver>;
ffa01668:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc01508(-4188920) */
ffa0166c:	0a e1 68 0d 	P2.L = 0xd68;		/* (3432)	P2=0xffc00d68(-4190872) */
ffa01670:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa01672:	10 97       	W[P2] = R0;
ffa01674:	20 e1 e2 00 	R0 = 0xe2 (X);		/*		R0=0xe2(226) */
ffa01678:	ff e3 9a fd 	CALL 0xffa011ac <_spi_write_byte>;
ffa0167c:	20 e1 e1 00 	R0 = 0xe1 (X);		/*		R0=0xe1(225) */
ffa01680:	ff e3 96 fd 	CALL 0xffa011ac <_spi_write_byte>;
ffa01684:	01 e8 00 00 	UNLINK;
ffa01688:	40 43       	R0 = R0.B (Z);
ffa0168a:	38 05       	(R7:7) = [SP++];
ffa0168c:	10 00       	RTS;
	...

ffa01690 <_bfin_EMAC_send_check>:
ffa01690:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d68(-4190872) */
ffa01694:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01698:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa0169c:	50 95       	R0 = W[P2] (X);
ffa0169e:	18 49       	CC = BITTST (R0, 0x3);		/* bit  3 */
ffa016a0:	00 02       	R0 = CC;
ffa016a2:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
ffa016a4:	01 e8 00 00 	UNLINK;
ffa016a8:	10 00       	RTS;
	...

ffa016ac <_FormatIPAddress>:
ffa016ac:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa016b0:	18 30       	R3 = R0;
ffa016b2:	b8 e4 14 00 	R0 = B[FP + 0x14] (Z);
ffa016b6:	40 4f       	R0 <<= 0x8;
ffa016b8:	52 43       	R2 = R2.B (Z);
ffa016ba:	10 56       	R0 = R0 | R2;
ffa016bc:	40 4f       	R0 <<= 0x8;
ffa016be:	49 43       	R1 = R1.B (Z);
ffa016c0:	08 56       	R0 = R0 | R1;
ffa016c2:	40 4f       	R0 <<= 0x8;
ffa016c4:	5b 43       	R3 = R3.B (Z);
ffa016c6:	18 56       	R0 = R0 | R3;
ffa016c8:	01 e8 00 00 	UNLINK;
ffa016cc:	10 00       	RTS;
	...

ffa016d0 <_bfin_EMAC_halt>:
ffa016d0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa016d4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa016d6:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa016da:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa016de:	10 93       	[P2] = R0;
ffa016e0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa016e4:	0a e1 48 0c 	P2.L = 0xc48;		/* (3144)	P2=0xffc00c48(-4191160) */
ffa016e8:	10 97       	W[P2] = R0;
ffa016ea:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c48(-4191160) */
ffa016ee:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa016f2:	10 97       	W[P2] = R0;
ffa016f4:	01 e8 00 00 	UNLINK;
ffa016f8:	10 00       	RTS;
	...

ffa016fc <_PollMdcDone>:
ffa016fc:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01700:	02 20       	JUMP.S 0xffa01704 <_PollMdcDone+0x8>;
ffa01702:	00 00       	NOP;
ffa01704:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01708:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa0170c:	10 91       	R0 = [P2];
ffa0170e:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01710:	f9 17       	IF !CC JUMP 0xffa01702 <_PollMdcDone+0x6> (BP);
ffa01712:	01 e8 00 00 	UNLINK;
ffa01716:	10 00       	RTS;

ffa01718 <_WrPHYReg>:
ffa01718:	68 05       	[--SP] = (R7:5);
ffa0171a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0171e:	28 30       	R5 = R0;
ffa01720:	31 30       	R6 = R1;
ffa01722:	3a 30       	R7 = R2;
ffa01724:	ff e3 ec ff 	CALL 0xffa016fc <_PollMdcDone>;
ffa01728:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa0172a:	b0 55       	R6 = R0 & R6;
ffa0172c:	28 54       	R0 = R0 & R5;
ffa0172e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa01732:	58 4f       	R0 <<= 0xb;
ffa01734:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa01736:	ff 42       	R7 = R7.L (Z);
ffa01738:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa0173c:	36 4f       	R6 <<= 0x6;
ffa0173e:	08 56       	R0 = R0 | R1;
ffa01740:	17 93       	[P2] = R7;
ffa01742:	86 57       	R6 = R6 | R0;
ffa01744:	e2 6f       	P2 += -0x4;		/* ( -4) */
ffa01746:	16 93       	[P2] = R6;
ffa01748:	01 e8 00 00 	UNLINK;
ffa0174c:	28 05       	(R7:5) = [SP++];
ffa0174e:	10 00       	RTS;

ffa01750 <_RdPHYReg>:
ffa01750:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01752:	29 32       	P5 = R1;
ffa01754:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01758:	38 30       	R7 = R0;
ffa0175a:	ff e3 d1 ff 	CALL 0xffa016fc <_PollMdcDone>;
ffa0175e:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03018(-4181992) */
ffa01762:	45 30       	R0 = P5;
ffa01764:	c0 42       	R0 = R0.L (Z);
ffa01766:	28 32       	P5 = R0;
ffa01768:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
ffa0176a:	0a e1 14 30 	P2.L = 0x3014;		/* (12308)	P2=0xffc03014(-4181996) */
ffa0176e:	55 30       	R2 = P5;
ffa01770:	42 54       	R1 = R2 & R0;
ffa01772:	38 54       	R0 = R0 & R7;
ffa01774:	58 4f       	R0 <<= 0xb;
ffa01776:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa01778:	31 4f       	R1 <<= 0x6;
ffa0177a:	41 56       	R1 = R1 | R0;
ffa0177c:	11 93       	[P2] = R1;
ffa0177e:	ff e3 bf ff 	CALL 0xffa016fc <_PollMdcDone>;
ffa01782:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03014(-4181996) */
ffa01786:	0a e1 18 30 	P2.L = 0x3018;		/* (12312)	P2=0xffc03018(-4181992) */
ffa0178a:	10 91       	R0 = [P2];
ffa0178c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903018 */
ffa01790:	0a e1 e4 0b 	P2.L = 0xbe4;		/* (3044)	P2=0xff900be4 <_PHYregs> */
ffa01794:	aa 5c       	P2 = P2 + (P5 << 0x1);
ffa01796:	10 97       	W[P2] = R0;
ffa01798:	01 e8 00 00 	UNLINK;
ffa0179c:	c0 42       	R0 = R0.L (Z);
ffa0179e:	bd 05       	(R7:7, P5:5) = [SP++];
ffa017a0:	10 00       	RTS;
	...

ffa017a4 <_SoftResetPHY>:
ffa017a4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017a6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa017a8:	82 e1 00 80 	R2 = 0x8000 (Z);		/*		R2=0x8000(32768) */
ffa017ac:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa017b0:	ff e3 b4 ff 	CALL 0xffa01718 <_WrPHYReg>;
ffa017b4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017b6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa017b8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa017ba:	ff e3 af ff 	CALL 0xffa01718 <_WrPHYReg>;
ffa017be:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017c0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa017c2:	ff e3 c7 ff 	CALL 0xffa01750 <_RdPHYReg>;
ffa017c6:	78 49       	CC = BITTST (R0, 0xf);		/* bit 15 */
ffa017c8:	fb 1f       	IF CC JUMP 0xffa017be <_SoftResetPHY+0x1a> (BP);
ffa017ca:	01 e8 00 00 	UNLINK;
ffa017ce:	10 00       	RTS;

ffa017d0 <_NetCksum>:
ffa017d0:	01 0d       	CC = R1 <= 0x0;
ffa017d2:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa017d6:	10 18       	IF CC JUMP 0xffa017f6 <_NetCksum+0x26>;
ffa017d8:	10 32       	P2 = R0;
ffa017da:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
ffa017dc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa017de:	0a 64       	R2 += 0x1;		/* (  1) */
ffa017e0:	10 94       	R0 = W[P2++] (Z);
ffa017e2:	0a 08       	CC = R2 == R1;
ffa017e4:	c3 50       	R3 = R3 + R0;
ffa017e6:	fc 17       	IF !CC JUMP 0xffa017de <_NetCksum+0xe> (BP);
ffa017e8:	82 c6 83 81 	R0 = R3 >> 0x10;
ffa017ec:	03 50       	R0 = R3 + R0;
ffa017ee:	c0 42       	R0 = R0.L (Z);
ffa017f0:	01 e8 00 00 	UNLINK;
ffa017f4:	10 00       	RTS;
ffa017f6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa017f8:	01 e8 00 00 	UNLINK;
ffa017fc:	10 00       	RTS;
	...

ffa01800 <_htons>:
ffa01800:	08 30       	R1 = R0;
ffa01802:	c0 42       	R0 = R0.L (Z);
ffa01804:	40 4e       	R0 >>= 0x8;
ffa01806:	41 4f       	R1 <<= 0x8;
ffa01808:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0180c:	08 56       	R0 = R0 | R1;
ffa0180e:	c0 42       	R0 = R0.L (Z);
ffa01810:	01 e8 00 00 	UNLINK;
ffa01814:	10 00       	RTS;
	...

ffa01818 <_htonl>:
ffa01818:	10 30       	R2 = R0;
ffa0181a:	82 c6 c2 83 	R1 = R2 >> 0x8;
ffa0181e:	40 43       	R0 = R0.B (Z);
ffa01820:	49 43       	R1 = R1.B (Z);
ffa01822:	40 4f       	R0 <<= 0x8;
ffa01824:	08 56       	R0 = R0 | R1;
ffa01826:	82 c6 82 83 	R1 = R2 >> 0x10;
ffa0182a:	40 4f       	R0 <<= 0x8;
ffa0182c:	49 43       	R1 = R1.B (Z);
ffa0182e:	08 56       	R0 = R0 | R1;
ffa01830:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01834:	40 4f       	R0 <<= 0x8;
ffa01836:	c2 4e       	R2 >>= 0x18;
ffa01838:	10 56       	R0 = R0 | R2;
ffa0183a:	01 e8 00 00 	UNLINK;
ffa0183e:	10 00       	RTS;

ffa01840 <_pack4chars>:
ffa01840:	08 32       	P1 = R0;
ffa01842:	10 32       	P2 = R0;
ffa01844:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01848:	01 e8 00 00 	UNLINK;
ffa0184c:	89 e4 01 00 	R1 = B[P1 + 0x1] (Z);
ffa01850:	10 98       	R0 = B[P2++] (Z);
ffa01852:	41 4f       	R1 <<= 0x8;
ffa01854:	08 50       	R0 = R0 + R1;
ffa01856:	91 e4 01 00 	R1 = B[P2 + 0x1] (Z);
ffa0185a:	81 4f       	R1 <<= 0x10;
ffa0185c:	08 50       	R0 = R0 + R1;
ffa0185e:	91 e4 02 00 	R1 = B[P2 + 0x2] (Z);
ffa01862:	c1 4f       	R1 <<= 0x18;
ffa01864:	08 50       	R0 = R0 + R1;
ffa01866:	10 00       	RTS;

ffa01868 <_ip_header_setup>:
ffa01868:	f4 05       	[--SP] = (R7:6, P5:4);
ffa0186a:	28 32       	P5 = R0;
ffa0186c:	21 32       	P4 = R1;
ffa0186e:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01872:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01876:	32 30       	R6 = R2;
ffa01878:	28 9b       	B[P5] = R0;
ffa0187a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0187c:	a8 e6 01 00 	B[P5 + 0x1] = R0;
ffa01880:	27 91       	R7 = [P4];
ffa01882:	f8 42       	R0 = R7.L (Z);
ffa01884:	ff e3 be ff 	CALL 0xffa01800 <_htons>;
ffa01888:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900be4 <_PHYregs> */
ffa0188c:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa01890:	68 b4       	W[P5 + 0x2] = R0;
ffa01892:	10 95       	R0 = W[P2] (Z);
ffa01894:	08 30       	R1 = R0;
ffa01896:	09 64       	R1 += 0x1;		/* (  1) */
ffa01898:	67 67       	R7 += -0x14;		/* (-20) */
ffa0189a:	11 97       	W[P2] = R1;
ffa0189c:	27 93       	[P4] = R7;
ffa0189e:	ff e3 b1 ff 	CALL 0xffa01800 <_htons>;
ffa018a2:	a8 b4       	W[P5 + 0x4] = R0;
ffa018a4:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa018a8:	ff e3 ac ff 	CALL 0xffa01800 <_htons>;
ffa018ac:	e8 b4       	W[P5 + 0x6] = R0;
ffa018ae:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40( 64) */
ffa018b2:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa018b6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2e <_NetIPID> */
ffa018ba:	b8 e5 24 00 	R0 = B[FP + 0x24] (X);
ffa018be:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa018c2:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa018c6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa018c8:	68 b5       	W[P5 + 0xa] = R0;
ffa018ca:	10 91       	R0 = [P2];
ffa018cc:	e8 b0       	[P5 + 0xc] = R0;
ffa018ce:	2e b1       	[P5 + 0x10] = R6;
ffa018d0:	45 30       	R0 = P5;
ffa018d2:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa018d4:	ff e3 7e ff 	CALL 0xffa017d0 <_NetCksum>;
ffa018d8:	c0 43       	R0 =~ R0;
ffa018da:	68 b5       	W[P5 + 0xa] = R0;
ffa018dc:	01 e8 00 00 	UNLINK;
ffa018e0:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa018e2:	45 30       	R0 = P5;
ffa018e4:	b4 05       	(R7:6, P5:4) = [SP++];
ffa018e6:	10 00       	RTS;

ffa018e8 <_ip_header_checksum>:
ffa018e8:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa018ec:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
ffa018ee:	ff e3 71 ff 	CALL 0xffa017d0 <_NetCksum>;
ffa018f2:	08 02       	CC = R0;
ffa018f4:	00 02       	R0 = CC;
ffa018f6:	01 e8 00 00 	UNLINK;
ffa018fa:	10 00       	RTS;

ffa018fc <_icmp_header_setup>:
ffa018fc:	00 32       	P0 = R0;
ffa018fe:	c5 04       	[--SP] = (P5:5);
ffa01900:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01902:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa01906:	29 32       	P5 = R1;
ffa01908:	80 e6 01 00 	B[P0 + 0x1] = R0;
ffa0190c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0190e:	40 b4       	W[P0 + 0x2] = R0;
ffa01910:	38 ab       	R0 = W[FP + 0x18] (X);
ffa01912:	80 b4       	W[P0 + 0x4] = R0;
ffa01914:	b8 ab       	R0 = W[FP + 0x1c] (X);
ffa01916:	02 9b       	B[P0] = R2;
ffa01918:	c0 b4       	W[P0 + 0x6] = R0;
ffa0191a:	48 32       	P1 = P0;
ffa0191c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0191e:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa01920:	b2 e0 03 20 	LSETUP(0xffa01924 <_icmp_header_setup+0x28>, 0xffa01926 <_icmp_header_setup+0x2a>) LC1 = P2;
ffa01924:	08 94       	R0 = W[P1++] (Z);
ffa01926:	41 50       	R1 = R1 + R0;
ffa01928:	c8 42       	R0 = R1.L (Z);
ffa0192a:	81 4e       	R1 >>= 0x10;
ffa0192c:	08 50       	R0 = R0 + R1;
ffa0192e:	c0 43       	R0 =~ R0;
ffa01930:	40 b4       	W[P0 + 0x2] = R0;
ffa01932:	28 91       	R0 = [P5];
ffa01934:	c0 67       	R0 += -0x8;		/* ( -8) */
ffa01936:	40 6c       	P0 += 0x8;		/* (  8) */
ffa01938:	01 e8 00 00 	UNLINK;
ffa0193c:	28 93       	[P5] = R0;
ffa0193e:	40 30       	R0 = P0;
ffa01940:	85 04       	(P5:5) = [SP++];
ffa01942:	10 00       	RTS;

ffa01944 <_udp_header_setup>:
ffa01944:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01946:	28 32       	P5 = R0;
ffa01948:	21 32       	P4 = R1;
ffa0194a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0194e:	d0 42       	R0 = R2.L (Z);
ffa01950:	ff e3 58 ff 	CALL 0xffa01800 <_htons>;
ffa01954:	7f e4 10 00 	R7 = W[FP + 0x20] (Z);
ffa01958:	28 97       	W[P5] = R0;
ffa0195a:	07 30       	R0 = R7;
ffa0195c:	ff e3 52 ff 	CALL 0xffa01800 <_htons>;
ffa01960:	27 91       	R7 = [P4];
ffa01962:	68 b4       	W[P5 + 0x2] = R0;
ffa01964:	f8 42       	R0 = R7.L (Z);
ffa01966:	ff e3 4d ff 	CALL 0xffa01800 <_htons>;
ffa0196a:	a8 b4       	W[P5 + 0x4] = R0;
ffa0196c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0196e:	c7 67       	R7 += -0x8;		/* ( -8) */
ffa01970:	e8 b4       	W[P5 + 0x6] = R0;
ffa01972:	01 e8 00 00 	UNLINK;
ffa01976:	45 6c       	P5 += 0x8;		/* (  8) */
ffa01978:	45 30       	R0 = P5;
ffa0197a:	27 93       	[P4] = R7;
ffa0197c:	bc 05       	(R7:7, P5:4) = [SP++];
ffa0197e:	10 00       	RTS;

ffa01980 <_tcp_header_setup>:
ffa01980:	fc 05       	[--SP] = (R7:7, P5:4);
ffa01982:	28 32       	P5 = R0;
ffa01984:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01988:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa0198c:	21 32       	P4 = R1;
ffa0198e:	3a 30       	R7 = R2;
ffa01990:	ff e3 38 ff 	CALL 0xffa01800 <_htons>;
ffa01994:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa01998:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa0199c:	28 97       	W[P5] = R0;
ffa0199e:	50 95       	R0 = W[P2] (X);
ffa019a0:	68 b4       	W[P5 + 0x2] = R0;
ffa019a2:	38 a2       	R0 = [FP + 0x20];
ffa019a4:	ff e3 3a ff 	CALL 0xffa01818 <_htonl>;
ffa019a8:	68 b0       	[P5 + 0x4] = R0;
ffa019aa:	78 a2       	R0 = [FP + 0x24];
ffa019ac:	ff e3 36 ff 	CALL 0xffa01818 <_htonl>;
ffa019b0:	a8 b0       	[P5 + 0x8] = R0;
ffa019b2:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa019b6:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa019ba:	af e6 0d 00 	B[P5 + 0xd] = R7;
ffa019be:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa019c2:	ff e3 1f ff 	CALL 0xffa01800 <_htons>;
ffa019c6:	e8 b5       	W[P5 + 0xe] = R0;
ffa019c8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa019ca:	28 b6       	W[P5 + 0x10] = R0;
ffa019cc:	68 b6       	W[P5 + 0x12] = R0;
ffa019ce:	20 91       	R0 = [P4];
ffa019d0:	60 67       	R0 += -0x14;		/* (-20) */
ffa019d2:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa019d4:	01 e8 00 00 	UNLINK;
ffa019d8:	20 93       	[P4] = R0;
ffa019da:	45 30       	R0 = P5;
ffa019dc:	bc 05       	(R7:7, P5:4) = [SP++];
ffa019de:	10 00       	RTS;

ffa019e0 <_DHCP_parse>:
ffa019e0:	f5 05       	[--SP] = (R7:6, P5:5);
ffa019e2:	09 0d       	CC = R1 <= 0x1;
ffa019e4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa019e8:	10 32       	P2 = R0;
ffa019ea:	33 18       	IF CC JUMP 0xffa01a50 <_DHCP_parse+0x70>;
ffa019ec:	00 00       	NOP;
ffa019ee:	31 30       	R6 = R1;
ffa019f0:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa019f2:	11 98       	R1 = B[P2++] (Z);
ffa019f4:	01 0c       	CC = R1 == 0x0;
ffa019f6:	2b 1c       	IF CC JUMP 0xffa01a4c <_DHCP_parse+0x6c> (BP);
ffa019f8:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
ffa019fc:	01 08       	CC = R1 == R0;
ffa019fe:	57 99       	R7 = B[P2] (X);
ffa01a00:	28 18       	IF CC JUMP 0xffa01a50 <_DHCP_parse+0x70>;
ffa01a02:	d8 61       	R0 = 0x3b (X);		/*		R0=0x3b( 59) */
ffa01a04:	6a 32       	P5 = P2;
ffa01a06:	01 0a       	CC = R1 <= R0 (IU);
ffa01a08:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa01a0a:	09 14       	IF !CC JUMP 0xffa01a1c <_DHCP_parse+0x3c> (BP);
ffa01a0c:	09 32       	P1 = R1;
ffa01a0e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpClientPort> */
ffa01a12:	0a e1 b0 03 	P2.L = 0x3b0;		/* (944)	P2=0xff9003b0 */
ffa01a16:	8a 5e       	P2 = P2 + (P1 << 0x2);
ffa01a18:	52 91       	P2 = [P2];
ffa01a1a:	52 00       	JUMP (P2);
ffa01a1c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90003b(-7339973) */
ffa01a20:	00 e1 88 01 	R0.L = 0x188;		/* (392)	R0=0xff900188(-7339640) */
ffa01a24:	ff e3 44 f8 	CALL 0xffa00aac <_printf_int>;
ffa01a28:	7f 43       	R7 = R7.B (Z);
ffa01a2a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900188(-7339640) */
ffa01a2e:	00 e1 9c 01 	R0.L = 0x19c;		/* (412)	R0=0xff90019c(-7339620) */
ffa01a32:	0f 30       	R1 = R7;
ffa01a34:	ff e3 3c f8 	CALL 0xffa00aac <_printf_int>;
ffa01a38:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90019c(-7339620) */
ffa01a3c:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa01a40:	ff e3 74 f7 	CALL 0xffa00928 <_printf_str>;
ffa01a44:	0f 32       	P1 = R7;
ffa01a46:	be 53       	R6 = R6 - R7;
ffa01a48:	fe 67       	R6 += -0x1;		/* ( -1) */
ffa01a4a:	8d 5a       	P2 = P5 + P1;
ffa01a4c:	0e 0d       	CC = R6 <= 0x1;
ffa01a4e:	d1 17       	IF !CC JUMP 0xffa019f0 <_DHCP_parse+0x10> (BP);
ffa01a50:	01 e8 00 00 	UNLINK;
ffa01a54:	b5 05       	(R7:6, P5:5) = [SP++];
ffa01a56:	10 00       	RTS;
ffa01a58:	45 30       	R0 = P5;
ffa01a5a:	ff e3 f3 fe 	CALL 0xffa01840 <_pack4chars>;
ffa01a5e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff9003b0 */
ffa01a62:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetSubnetMask> */
ffa01a66:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01a6a:	10 93 00 00 
ffa01a6e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a6c(-7337364) */
ffa01a72:	00 e1 e0 00 	R0.L = 0xe0;		/* (224)	R0=0xff9000e0(-7339808) */
ffa01a76:	ff e3 bd f8 	CALL 0xffa00bf0 <_printf_ip>;
ffa01a7a:	7f 43       	R7 = R7.B (Z);
ffa01a7c:	de 2f       	JUMP.S 0xffa01a38 <_DHCP_parse+0x58>;
ffa01a7e:	45 30       	R0 = P5;
ffa01a80:	ff e3 e0 fe 	CALL 0xffa01840 <_pack4chars>;
ffa01a84:	08 30       	R1 = R0;
ffa01a86:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000e0(-7339808) */
ffa01a8a:	00 e1 f0 00 	R0.L = 0xf0;		/* (240)	R0=0xff9000f0(-7339792) */
ffa01a8e:	ff e3 b1 f8 	CALL 0xffa00bf0 <_printf_ip>;
ffa01a92:	7f 43       	R7 = R7.B (Z);
ffa01a94:	d2 2f       	JUMP.S 0xffa01a38 <_DHCP_parse+0x58>;
ffa01a96:	45 30       	R0 = P5;
ffa01a98:	ff e3 d4 fe 	CALL 0xffa01840 <_pack4chars>;
ffa01a9c:	08 30       	R1 = R0;
ffa01a9e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9000f0(-7339792) */
ffa01aa2:	00 e1 00 01 	R0.L = 0x100;		/* (256)	R0=0xff900100(-7339776) */
ffa01aa6:	ff e3 a5 f8 	CALL 0xffa00bf0 <_printf_ip>;
ffa01aaa:	7f 43       	R7 = R7.B (Z);
ffa01aac:	c6 2f       	JUMP.S 0xffa01a38 <_DHCP_parse+0x58>;
ffa01aae:	45 30       	R0 = P5;
ffa01ab0:	ff e3 c8 fe 	CALL 0xffa01840 <_pack4chars>;
ffa01ab4:	08 30       	R1 = R0;
ffa01ab6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900100(-7339776) */
ffa01aba:	00 e1 10 01 	R0.L = 0x110;		/* (272)	R0=0xff900110(-7339760) */
ffa01abe:	ff e3 99 f8 	CALL 0xffa00bf0 <_printf_ip>;
ffa01ac2:	7f 43       	R7 = R7.B (Z);
ffa01ac4:	ba 2f       	JUMP.S 0xffa01a38 <_DHCP_parse+0x58>;
ffa01ac6:	45 30       	R0 = P5;
ffa01ac8:	ff e3 bc fe 	CALL 0xffa01840 <_pack4chars>;
ffa01acc:	ff e3 a6 fe 	CALL 0xffa01818 <_htonl>;
ffa01ad0:	08 30       	R1 = R0;
ffa01ad2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900110(-7339760) */
ffa01ad6:	00 e1 20 01 	R0.L = 0x120;		/* (288)	R0=0xff900120(-7339744) */
ffa01ada:	ff e3 e9 f7 	CALL 0xffa00aac <_printf_int>;
ffa01ade:	7f 43       	R7 = R7.B (Z);
ffa01ae0:	ac 2f       	JUMP.S 0xffa01a38 <_DHCP_parse+0x58>;
ffa01ae2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900120(-7339744) */
ffa01ae6:	29 99       	R1 = B[P5] (Z);
ffa01ae8:	00 e1 34 01 	R0.L = 0x134;		/* (308)	R0=0xff900134(-7339724) */
ffa01aec:	ff e3 e0 f7 	CALL 0xffa00aac <_printf_int>;
ffa01af0:	7f 43       	R7 = R7.B (Z);
ffa01af2:	a3 2f       	JUMP.S 0xffa01a38 <_DHCP_parse+0x58>;
ffa01af4:	45 30       	R0 = P5;
ffa01af6:	ff e3 a5 fe 	CALL 0xffa01840 <_pack4chars>;
ffa01afa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_NetSubnetMask> */
ffa01afe:	0a e1 28 0c 	P2.L = 0xc28;		/* (3112)	P2=0xff900c28 <_NetDHCPserv> */
ffa01b02:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || [P2] = R0 || NOP;
ffa01b06:	10 93 00 00 
ffa01b0a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900134(-7339724) */
ffa01b0e:	00 e1 48 01 	R0.L = 0x148;		/* (328)	R0=0xff900148(-7339704) */
ffa01b12:	ff e3 6f f8 	CALL 0xffa00bf0 <_printf_ip>;
ffa01b16:	7f 43       	R7 = R7.B (Z);
ffa01b18:	90 2f       	JUMP.S 0xffa01a38 <_DHCP_parse+0x58>;
ffa01b1a:	45 30       	R0 = P5;
ffa01b1c:	ff e3 92 fe 	CALL 0xffa01840 <_pack4chars>;
ffa01b20:	ff e3 7c fe 	CALL 0xffa01818 <_htonl>;
ffa01b24:	08 30       	R1 = R0;
ffa01b26:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900148(-7339704) */
ffa01b2a:	00 e1 5c 01 	R0.L = 0x15c;		/* (348)	R0=0xff90015c(-7339684) */
ffa01b2e:	ff e3 bf f7 	CALL 0xffa00aac <_printf_int>;
ffa01b32:	7f 43       	R7 = R7.B (Z);
ffa01b34:	82 2f       	JUMP.S 0xffa01a38 <_DHCP_parse+0x58>;
ffa01b36:	45 30       	R0 = P5;
ffa01b38:	ff e3 84 fe 	CALL 0xffa01840 <_pack4chars>;
ffa01b3c:	ff e3 6e fe 	CALL 0xffa01818 <_htonl>;
ffa01b40:	08 30       	R1 = R0;
ffa01b42:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90015c(-7339684) */
ffa01b46:	00 e1 70 01 	R0.L = 0x170;		/* (368)	R0=0xff900170(-7339664) */
ffa01b4a:	ff e3 b1 f7 	CALL 0xffa00aac <_printf_int>;
ffa01b4e:	7f 43       	R7 = R7.B (Z);
ffa01b50:	74 2f       	JUMP.S 0xffa01a38 <_DHCP_parse+0x58>;
	...

ffa01b54 <_bfin_EMAC_send_nocopy>:
ffa01b54:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c28(-4191192) */
ffa01b58:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01b5a:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa01b5e:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01b62:	10 97       	W[P2] = R0;
ffa01b64:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00708(-4192504) */
ffa01b68:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01b6c:	50 95       	R0 = W[P2] (X);
ffa01b6e:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01b70:	59 10       	IF !CC JUMP 0xffa01c22 <_bfin_EMAC_send_nocopy+0xce>;
ffa01b72:	00 00       	NOP;
ffa01b74:	00 00       	NOP;
ffa01b76:	00 00       	NOP;
ffa01b78:	50 95       	R0 = W[P2] (X);
ffa01b7a:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01b7c:	16 18       	IF CC JUMP 0xffa01ba8 <_bfin_EMAC_send_nocopy+0x54>;
ffa01b7e:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0d68 */
ffa01b82:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01b86:	b2 e0 09 10 	LSETUP(0xffa01b8a <_bfin_EMAC_send_nocopy+0x36>, 0xffa01b98 <_bfin_EMAC_send_nocopy+0x44>) LC1 = P1;
ffa01b8a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01b8e:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01b92:	50 95       	R0 = W[P2] (X);
ffa01b94:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01b96:	09 18       	IF CC JUMP 0xffa01ba8 <_bfin_EMAC_send_nocopy+0x54>;
ffa01b98:	00 00       	NOP;
ffa01b9a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900020(-7340000) */
ffa01b9e:	00 e1 bc 01 	R0.L = 0x1bc;		/* (444)	R0=0xff9001bc(-7339588) */
ffa01ba2:	ff e3 c3 f6 	CALL 0xffa00928 <_printf_str>;
ffa01ba6:	30 20       	JUMP.S 0xffa01c06 <_bfin_EMAC_send_nocopy+0xb2>;
ffa01ba8:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900000 <_l1_data_a> */
ffa01bac:	08 e1 2c 0c 	P0.L = 0xc2c;		/* (3116)	P0=0xff900c2c <_txIdx> */
ffa01bb0:	00 95       	R0 = W[P0] (Z);
ffa01bb2:	10 32       	P2 = R0;
ffa01bb4:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01bb8:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa01bbc:	42 95       	R2 = W[P0] (X);
ffa01bbe:	d1 42       	R1 = R2.L (Z);
ffa01bc0:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01bc2:	52 91       	P2 = [P2];
ffa01bc4:	11 0d       	CC = R1 <= 0x2;
ffa01bc6:	90 a1       	R0 = [P2 + 0x18];
ffa01bc8:	50 b0       	[P2 + 0x4] = R0;
ffa01bca:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01bcc:	90 b2       	[P2 + 0x28] = R0;
ffa01bce:	11 32       	P2 = R1;
ffa01bd0:	51 5e       	P1 = P1 + (P2 << 0x2);
ffa01bd2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01bd6:	08 91       	R0 = [P1];
ffa01bd8:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01bdc:	10 93       	[P2] = R0;
ffa01bde:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01be2:	0a e1 a2 04 	P2.L = 0x4a2;		/* (1186)	P2=0xff9004a2 <_txdmacfg> */
ffa01be6:	50 95       	R0 = W[P2] (X);
ffa01be8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004a2(-4193118) */
ffa01bec:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01bf0:	10 97       	W[P2] = R0;
ffa01bf2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01bf6:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01bfa:	10 91       	R0 = [P2];
ffa01bfc:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01bfe:	10 93       	[P2] = R0;
ffa01c00:	0d 1c       	IF CC JUMP 0xffa01c1a <_bfin_EMAC_send_nocopy+0xc6> (BP);
ffa01c02:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c04:	00 97       	W[P0] = R0;
ffa01c06:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa01c0a:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
ffa01c0c:	0a e1 04 07 	P2.L = 0x704;		/* (1796)	P2=0xffc00704(-4192508) */
ffa01c10:	10 97       	W[P2] = R0;
ffa01c12:	01 e8 00 00 	UNLINK;
ffa01c16:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01c18:	10 00       	RTS;
ffa01c1a:	02 30       	R0 = R2;
ffa01c1c:	08 64       	R0 += 0x1;		/* (  1) */
ffa01c1e:	00 97       	W[P0] = R0;
ffa01c20:	f3 2f       	JUMP.S 0xffa01c06 <_bfin_EMAC_send_nocopy+0xb2>;
ffa01c22:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01c26:	00 e1 a4 01 	R0.L = 0x1a4;		/* (420)	R0=0xff9001a4(-7339612) */
ffa01c2a:	ff e3 7f f6 	CALL 0xffa00928 <_printf_str>;
ffa01c2e:	ec 2f       	JUMP.S 0xffa01c06 <_bfin_EMAC_send_nocopy+0xb2>;

ffa01c30 <_DHCP_tx>:
ffa01c30:	e3 05       	[--SP] = (R7:4, P5:3);
ffa01c32:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900704 */
ffa01c36:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa01c3a:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa01c3e:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa01c42:	10 95 00 00 
ffa01c46:	10 32       	P2 = R0;
ffa01c48:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c30 <_txbuf> */
ffa01c4c:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa01c50:	20 e1 1a 01 	R0 = 0x11a (X);		/*		R0=0x11a(282) */
ffa01c54:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa01c56:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01c58:	52 91       	P2 = [P2];
ffa01c5a:	04 cc 20 00 	R0 = R4 + R0 (NS) || [FP -0x4] = R1 || NOP;
ffa01c5e:	f1 bb 00 00 
ffa01c62:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff90050c */
ffa01c66:	0d e1 54 0c 	P5.L = 0xc54;		/* (3156)	P5=0xff900c54 <_NetOurMAC> */
ffa01c6a:	94 ad       	P4 = [P2 + 0x18];
ffa01c6c:	1a 32       	P3 = R2;
ffa01c6e:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa01c70:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa01c72:	a7 e6 02 00 	B[P4 + 0x2] = R7;
ffa01c76:	a7 e6 03 00 	B[P4 + 0x3] = R7;
ffa01c7a:	a7 e6 04 00 	B[P4 + 0x4] = R7;
ffa01c7e:	a7 e6 05 00 	B[P4 + 0x5] = R7;
ffa01c82:	a7 e6 06 00 	B[P4 + 0x6] = R7;
ffa01c86:	a7 e6 07 00 	B[P4 + 0x7] = R7;
ffa01c8a:	20 97       	W[P4] = R0;
ffa01c8c:	68 99       	R0 = B[P5] (X);
ffa01c8e:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa01c92:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01c96:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa01c9a:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01c9e:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa01ca2:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01ca6:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa01caa:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01cae:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa01cb2:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01cb6:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa01cba:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01cbe:	ff e3 a1 fd 	CALL 0xffa01800 <_htons>;
ffa01cc2:	e0 b5       	W[P4 + 0xe] = R0;
ffa01cc4:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01cc8:	a0 e6 10 00 	B[P4 + 0x10] = R0;
ffa01ccc:	20 e1 0c 01 	R0 = 0x10c (X);		/*		R0=0x10c(268) */
ffa01cd0:	04 50       	R0 = R4 + R0;
ffa01cd2:	a5 e6 11 00 	B[P4 + 0x11] = R5;
ffa01cd6:	c0 42       	R0 = R0.L (Z);
ffa01cd8:	ff e3 94 fd 	CALL 0xffa01800 <_htons>;
ffa01cdc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa01ce0:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa01ce4:	60 b6       	W[P4 + 0x12] = R0;
ffa01ce6:	10 95       	R0 = W[P2] (Z);
ffa01ce8:	08 30       	R1 = R0;
ffa01cea:	09 64       	R1 += 0x1;		/* (  1) */
ffa01cec:	11 97       	W[P2] = R1;
ffa01cee:	ff e3 89 fd 	CALL 0xffa01800 <_htons>;
ffa01cf2:	a0 b6       	W[P4 + 0x14] = R0;
ffa01cf4:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01cf8:	ff e3 84 fd 	CALL 0xffa01800 <_htons>;
ffa01cfc:	e0 b6       	W[P4 + 0x16] = R0;
ffa01cfe:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa01d00:	a7 e6 18 00 	B[P4 + 0x18] = R7;
ffa01d04:	a0 e6 19 00 	B[P4 + 0x19] = R0;
ffa01d08:	00 cc 3f ce 	R7 = R7 -|- R7 || W[P4 + 0x1a] = R6 || NOP;
ffa01d0c:	66 b7 00 00 
ffa01d10:	44 30       	R0 = P4;
ffa01d12:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa01d14:	e7 b1       	[P4 + 0x1c] = R7;
ffa01d16:	23 be       	[P4 + 0x20] = P3;
ffa01d18:	80 64       	R0 += 0x10;		/* ( 16) */
ffa01d1a:	ff e3 5b fd 	CALL 0xffa017d0 <_NetCksum>;
ffa01d1e:	c0 43       	R0 =~ R0;
ffa01d20:	60 b7       	W[P4 + 0x1a] = R0;
ffa01d22:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa01d26:	ff e3 6d fd 	CALL 0xffa01800 <_htons>;
ffa01d2a:	60 e6 12 00 	W[P4 + 0x24] = R0;
ffa01d2e:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa01d32:	ff e3 67 fd 	CALL 0xffa01800 <_htons>;
ffa01d36:	60 e6 13 00 	W[P4 + 0x26] = R0;
ffa01d3a:	20 e1 f8 00 	R0 = 0xf8 (X);		/*		R0=0xf8(248) */
ffa01d3e:	04 50       	R0 = R4 + R0;
ffa01d40:	c0 42       	R0 = R0.L (Z);
ffa01d42:	ff e3 5f fd 	CALL 0xffa01800 <_htons>;
ffa01d46:	60 e6 14 00 	W[P4 + 0x28] = R0;
ffa01d4a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa01d4c:	a0 e6 2c 00 	B[P4 + 0x2c] = R0;
ffa01d50:	a0 e6 2d 00 	B[P4 + 0x2d] = R0;
ffa01d54:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c2e(-4191186) */
ffa01d58:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa01d5a:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa01d5e:	a0 e6 2e 00 	B[P4 + 0x2e] = R0;
ffa01d62:	a5 e6 2f 00 	B[P4 + 0x2f] = R5;
ffa01d66:	10 91       	R0 = [P2];
ffa01d68:	20 b3       	[P4 + 0x30] = R0;
ffa01d6a:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820006(1669464070) */
ffa01d6e:	66 e6 15 00 	W[P4 + 0x2a] = R6;
ffa01d72:	66 e6 1a 00 	W[P4 + 0x34] = R6;
ffa01d76:	66 e6 1b 00 	W[P4 + 0x36] = R6;
ffa01d7a:	a7 b3       	[P4 + 0x38] = R7;
ffa01d7c:	e7 b3       	[P4 + 0x3c] = R7;
ffa01d7e:	27 e6 10 00 	[P4 + 0x40] = R7;
ffa01d82:	27 e6 11 00 	[P4 + 0x44] = R7;
ffa01d86:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa01d8a:	ff e3 47 fd 	CALL 0xffa01818 <_htonl>;
ffa01d8e:	20 e6 46 00 	[P4 + 0x118] = R0;
ffa01d92:	68 99       	R0 = B[P5] (X);
ffa01d94:	a0 e6 48 00 	B[P4 + 0x48] = R0;
ffa01d98:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa01d9c:	a0 e6 49 00 	B[P4 + 0x49] = R0;
ffa01da0:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa01da4:	a0 e6 4a 00 	B[P4 + 0x4a] = R0;
ffa01da8:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa01dac:	a0 e6 4b 00 	B[P4 + 0x4b] = R0;
ffa01db0:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa01db4:	a0 e6 4c 00 	B[P4 + 0x4c] = R0;
ffa01db8:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa01dbc:	2a e1 4e 00 	P2 = 0x4e (X);		/*		P2=0x4e( 78) */
ffa01dc0:	a0 e6 4d 00 	B[P4 + 0x4d] = R0;
ffa01dc4:	54 5a       	P1 = P4 + P2;
ffa01dc6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01dc8:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa01dca:	b2 e0 02 20 	LSETUP(0xffa01dce <_DHCP_tx+0x19e>, 0xffa01dce <_DHCP_tx+0x19e>) LC1 = P2;
ffa01dce:	08 9a       	B[P1++] = R0;
ffa01dd0:	2a e1 58 00 	P2 = 0x58 (X);		/*		P2=0x58( 88) */
ffa01dd4:	54 5a       	P1 = P4 + P2;
ffa01dd6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01dd8:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa01dda:	b2 e0 02 20 	LSETUP(0xffa01dde <_DHCP_tx+0x1ae>, 0xffa01dde <_DHCP_tx+0x1ae>) LC1 = P2;
ffa01dde:	08 92       	[P1++] = R0;
ffa01de0:	2a e1 98 00 	P2 = 0x98 (X);		/*		P2=0x98(152) */
ffa01de4:	54 5a       	P1 = P4 + P2;
ffa01de6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01de8:	02 69       	P2 = 0x20 (X);		/*		P2=0x20( 32) */
ffa01dea:	b2 e0 02 20 	LSETUP(0xffa01dee <_DHCP_tx+0x1be>, 0xffa01dee <_DHCP_tx+0x1be>) LC1 = P2;
ffa01dee:	08 92       	[P1++] = R0;
ffa01df0:	44 30       	R0 = P4;
ffa01df2:	21 e1 1c 01 	R1 = 0x11c (X);		/*		R1=0x11c(284) */
ffa01df6:	04 cc 01 02 	R1 = R0 + R1 (NS) || R0 = [FP -0x4] || NOP;
ffa01dfa:	f0 b9 00 00 
ffa01dfe:	14 30       	R2 = R4;
ffa01e00:	ff e3 3c f7 	CALL 0xffa00c78 <_memcpy_>;
ffa01e04:	01 e8 00 00 	UNLINK;
ffa01e08:	a3 05       	(R7:4, P5:3) = [SP++];
ffa01e0a:	ff e2 a5 fe 	JUMP.L 0xffa01b54 <_bfin_EMAC_send_nocopy>;
	...

ffa01e10 <_bfin_EMAC_send>:
ffa01e10:	c4 04       	[--SP] = (P5:4);
ffa01e12:	01 0d       	CC = R1 <= 0x0;
ffa01e14:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01e18:	18 30       	R3 = R0;
ffa01e1a:	11 30       	R2 = R1;
ffa01e1c:	90 18       	IF CC JUMP 0xffa01f3c <_bfin_EMAC_send+0x12c>;
ffa01e1e:	00 00       	NOP;
ffa01e20:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00020(-4194272) */
ffa01e24:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01e28:	50 95       	R0 = W[P2] (X);
ffa01e2a:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa01e2c:	74 10       	IF !CC JUMP 0xffa01f14 <_bfin_EMAC_send+0x104>;
ffa01e2e:	00 00       	NOP;
ffa01e30:	00 00       	NOP;
ffa01e32:	00 00       	NOP;
ffa01e34:	50 95       	R0 = W[P2] (X);
ffa01e36:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01e38:	17 18       	IF CC JUMP 0xffa01e66 <_bfin_EMAC_send+0x56>;
ffa01e3a:	49 e1 0f 00 	P1.H = 0xf;		/* ( 15)	P1=0xf0c30 */
ffa01e3e:	09 e1 41 42 	P1.L = 0x4241;		/* (16961)	P1=0xf4241 */
ffa01e42:	b2 e0 09 10 	LSETUP(0xffa01e46 <_bfin_EMAC_send+0x36>, 0xffa01e54 <_bfin_EMAC_send+0x44>) LC1 = P1;
ffa01e46:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01e4a:	0a e1 a8 0c 	P2.L = 0xca8;		/* (3240)	P2=0xffc00ca8(-4191064) */
ffa01e4e:	50 95       	R0 = W[P2] (X);
ffa01e50:	18 48       	CC = !BITTST (R0, 0x3);		/* bit  3 */
ffa01e52:	0a 18       	IF CC JUMP 0xffa01e66 <_bfin_EMAC_send+0x56>;
ffa01e54:	00 00       	NOP;
ffa01e56:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01e5a:	00 e1 f0 01 	R0.L = 0x1f0;		/* (496)	R0=0xff9001f0(-7339536) */
ffa01e5e:	ff e3 65 f5 	CALL 0xffa00928 <_printf_str>;
ffa01e62:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01e64:	53 20       	JUMP.S 0xffa01f0a <_bfin_EMAC_send+0xfa>;
ffa01e66:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff90050c */
ffa01e6a:	0c e1 2c 0c 	P4.L = 0xc2c;		/* (3116)	P4=0xff900c2c <_txIdx> */
ffa01e6e:	20 95       	R0 = W[P4] (Z);
ffa01e70:	10 32       	P2 = R0;
ffa01e72:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c54 <_NetOurMAC> */
ffa01e76:	0d e1 30 0c 	P5.L = 0xc30;		/* (3120)	P5=0xff900c30 <_txbuf> */
ffa01e7a:	0b 30       	R1 = R3;
ffa01e7c:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01e7e:	52 91       	P2 = [P2];
ffa01e80:	92 ad       	P2 = [P2 + 0x18];
ffa01e82:	12 96       	W[P2++] = R2;
ffa01e84:	42 30       	R0 = P2;
ffa01e86:	ff e3 f9 f6 	CALL 0xffa00c78 <_memcpy_>;
ffa01e8a:	20 95       	R0 = W[P4] (Z);
ffa01e8c:	10 32       	P2 = R0;
ffa01e8e:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa01e90:	51 91       	P1 = [P2];
ffa01e92:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00ca8(-4191064) */
ffa01e96:	0a e1 80 0c 	P2.L = 0xc80;		/* (3200)	P2=0xffc00c80(-4191104) */
ffa01e9a:	51 93       	[P2] = P1;
ffa01e9c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c80 */
ffa01ea0:	88 a1       	R0 = [P1 + 0x18];
ffa01ea2:	0a e1 a2 04 	P2.L = 0x4a2;		/* (1186)	P2=0xff9004a2 <_txdmacfg> */
ffa01ea6:	48 b0       	[P1 + 0x4] = R0;
ffa01ea8:	50 95       	R0 = W[P2] (X);
ffa01eaa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc004a2(-4193118) */
ffa01eae:	0a e1 88 0c 	P2.L = 0xc88;		/* (3208)	P2=0xffc00c88(-4191096) */
ffa01eb2:	10 97       	W[P2] = R0;
ffa01eb4:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c88(-4191096) */
ffa01eb8:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa01ebc:	10 91       	R0 = [P2];
ffa01ebe:	80 4a       	BITSET (R0, 0x10);		/* bit 16 */
ffa01ec0:	10 93       	[P2] = R0;
ffa01ec2:	88 a2       	R0 = [P1 + 0x28];
ffa01ec4:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01ec6:	13 10       	IF !CC JUMP 0xffa01eec <_bfin_EMAC_send+0xdc>;
ffa01ec8:	4a e1 0f 00 	P2.H = 0xf;		/* ( 15)	P2=0xf3000 */
ffa01ecc:	0a e1 41 42 	P2.L = 0x4241;		/* (16961)	P2=0xf4241 */
ffa01ed0:	b2 e0 05 20 	LSETUP(0xffa01ed4 <_bfin_EMAC_send+0xc4>, 0xffa01eda <_bfin_EMAC_send+0xca>) LC1 = P2;
ffa01ed4:	88 a2       	R0 = [P1 + 0x28];
ffa01ed6:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa01ed8:	0a 10       	IF !CC JUMP 0xffa01eec <_bfin_EMAC_send+0xdc>;
ffa01eda:	00 00       	NOP;
ffa01edc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001f0(-7339536) */
ffa01ee0:	00 e1 08 02 	R0.L = 0x208;		/* (520)	R0=0xff900208(-7339512) */
ffa01ee4:	ff e3 22 f5 	CALL 0xffa00928 <_printf_str>;
ffa01ee8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01eea:	10 20       	JUMP.S 0xffa01f0a <_bfin_EMAC_send+0xfa>;
ffa01eec:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = W[P4] (X) || NOP;
ffa01ef0:	61 95 00 00 
ffa01ef4:	8a a2       	R2 = [P1 + 0x28];
ffa01ef6:	88 b2       	[P1 + 0x28] = R0;
ffa01ef8:	c8 42       	R0 = R1.L (Z);
ffa01efa:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff904241 */
ffa01efe:	10 0d       	CC = R0 <= 0x2;
ffa01f00:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa01f04:	14 1c       	IF CC JUMP 0xffa01f2c <_bfin_EMAC_send+0x11c> (BP);
ffa01f06:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01f08:	10 97       	W[P2] = R0;
ffa01f0a:	01 e8 00 00 	UNLINK;
ffa01f0e:	02 30       	R0 = R2;
ffa01f10:	84 04       	(P5:4) = [SP++];
ffa01f12:	10 00       	RTS;
ffa01f14:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa01f18:	00 e1 a4 01 	R0.L = 0x1a4;		/* (420)	R0=0xff9001a4(-7339612) */
ffa01f1c:	ff e3 06 f5 	CALL 0xffa00928 <_printf_str>;
ffa01f20:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01f22:	01 e8 00 00 	UNLINK;
ffa01f26:	02 30       	R0 = R2;
ffa01f28:	84 04       	(P5:4) = [SP++];
ffa01f2a:	10 00       	RTS;
ffa01f2c:	01 30       	R0 = R1;
ffa01f2e:	08 64       	R0 += 0x1;		/* (  1) */
ffa01f30:	10 97       	W[P2] = R0;
ffa01f32:	01 e8 00 00 	UNLINK;
ffa01f36:	02 30       	R0 = R2;
ffa01f38:	84 04       	(P5:4) = [SP++];
ffa01f3a:	10 00       	RTS;
ffa01f3c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9001a4(-7339612) */
ffa01f40:	00 e1 d4 01 	R0.L = 0x1d4;		/* (468)	R0=0xff9001d4(-7339564) */
ffa01f44:	ff e3 b4 f5 	CALL 0xffa00aac <_printf_int>;
ffa01f48:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa01f4a:	01 e8 00 00 	UNLINK;
ffa01f4e:	02 30       	R0 = R2;
ffa01f50:	84 04       	(P5:4) = [SP++];
ffa01f52:	10 00       	RTS;

ffa01f54 <_ether_testUDP>:
ffa01f54:	fd 05       	[--SP] = (R7:7, P5:5);
ffa01f56:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa01f5a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa01f5e:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa01f62:	11 95       	R1 = W[P2] (Z);
ffa01f64:	11 32       	P2 = R1;
ffa01f66:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff904241 */
ffa01f6a:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa01f6e:	21 e1 42 00 	R1 = 0x42 (X);		/*		R1=0x42( 66) */
ffa01f72:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa01f74:	52 91       	P2 = [P2];
ffa01f76:	95 ad       	P5 = [P2 + 0x18];
ffa01f78:	55 32       	P2 = P5;
ffa01f7a:	11 96       	W[P2++] = R1;
ffa01f7c:	4a 30       	R1 = P2;
ffa01f7e:	00 e3 4d 08 	CALL 0xffa03018 <_ARP_req>;
ffa01f82:	00 0c       	CC = R0 == 0x0;
ffa01f84:	7f 18       	IF CC JUMP 0xffa02082 <_ether_testUDP+0x12e>;
ffa01f86:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa01f8a:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_NetOurMAC> */
ffa01f8e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa01f90:	50 99       	R0 = B[P2] (X);
ffa01f92:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa01f96:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa01f9a:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa01f9e:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa01fa2:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa01fa6:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa01faa:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa01fae:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa01fb2:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa01fb6:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa01fba:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa01fbe:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa01fc2:	ff e3 1f fc 	CALL 0xffa01800 <_htons>;
ffa01fc6:	e8 b5       	W[P5 + 0xe] = R0;
ffa01fc8:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
ffa01fcc:	a8 e6 10 00 	B[P5 + 0x10] = R0;
ffa01fd0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa01fd2:	a8 e6 11 00 	B[P5 + 0x11] = R0;
ffa01fd6:	90 61       	R0 = 0x32 (X);		/*		R0=0x32( 50) */
ffa01fd8:	ff e3 14 fc 	CALL 0xffa01800 <_htons>;
ffa01fdc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_NetOurMAC> */
ffa01fe0:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa01fe4:	68 b6       	W[P5 + 0x12] = R0;
ffa01fe6:	10 95       	R0 = W[P2] (Z);
ffa01fe8:	08 30       	R1 = R0;
ffa01fea:	09 64       	R1 += 0x1;		/* (  1) */
ffa01fec:	11 97       	W[P2] = R1;
ffa01fee:	ff e3 09 fc 	CALL 0xffa01800 <_htons>;
ffa01ff2:	a8 b6       	W[P5 + 0x14] = R0;
ffa01ff4:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa01ff8:	ff e3 04 fc 	CALL 0xffa01800 <_htons>;
ffa01ffc:	e8 b6       	W[P5 + 0x16] = R0;
ffa01ffe:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02000:	a8 e6 18 00 	B[P5 + 0x18] = R0;
ffa02004:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2e <_NetIPID> */
ffa02008:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0200a:	a8 e6 19 00 	B[P5 + 0x19] = R0;
ffa0200e:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa02012:	10 91       	R0 = [P2];
ffa02014:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa02018:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa0201c:	e8 b1       	[P5 + 0x1c] = R0;
ffa0201e:	10 91       	R0 = [P2];
ffa02020:	28 b2       	[P5 + 0x20] = R0;
ffa02022:	45 30       	R0 = P5;
ffa02024:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa02026:	6f b7       	W[P5 + 0x1a] = R7;
ffa02028:	80 64       	R0 += 0x10;		/* ( 16) */
ffa0202a:	ff e3 d3 fb 	CALL 0xffa017d0 <_NetCksum>;
ffa0202e:	c0 43       	R0 =~ R0;
ffa02030:	68 b7       	W[P5 + 0x1a] = R0;
ffa02032:	20 e1 f5 10 	R0 = 0x10f5 (X);		/*		R0=0x10f5(4341) */
ffa02036:	ff e3 e5 fb 	CALL 0xffa01800 <_htons>;
ffa0203a:	68 e6 12 00 	W[P5 + 0x24] = R0;
ffa0203e:	20 e1 64 09 	R0 = 0x964 (X);		/*		R0=0x964(2404) */
ffa02042:	ff e3 df fb 	CALL 0xffa01800 <_htons>;
ffa02046:	68 e6 13 00 	W[P5 + 0x26] = R0;
ffa0204a:	f0 60       	R0 = 0x1e (X);		/*		R0=0x1e( 30) */
ffa0204c:	ff e3 da fb 	CALL 0xffa01800 <_htons>;
ffa02050:	55 32       	P2 = P5;
ffa02052:	68 e6 14 00 	W[P5 + 0x28] = R0;
ffa02056:	6f e6 15 00 	W[P5 + 0x2a] = R7;
ffa0205a:	62 6d       	P2 += 0x2c;		/* ( 44) */
ffa0205c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0205e:	b1 68       	P1 = 0x16 (X);		/*		P1=0x16( 22) */
ffa02060:	b2 e0 03 10 	LSETUP(0xffa02064 <_ether_testUDP+0x110>, 0xffa02066 <_ether_testUDP+0x112>) LC1 = P1;
ffa02064:	11 9a       	B[P2++] = R1;
ffa02066:	09 64       	R1 += 0x1;		/* (  1) */
ffa02068:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90001e(-7340002) */
ffa0206c:	00 e1 1c 02 	R0.L = 0x21c;		/* (540)	R0=0xff90021c(-7339492) */
ffa02070:	ff e3 5c f4 	CALL 0xffa00928 <_printf_str>;
ffa02074:	ff e3 70 fd 	CALL 0xffa01b54 <_bfin_EMAC_send_nocopy>;
ffa02078:	01 e8 00 00 	UNLINK;
ffa0207c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0207e:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02080:	10 00       	RTS;
ffa02082:	01 e8 00 00 	UNLINK;
ffa02086:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02088:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0208a:	10 00       	RTS;

ffa0208c <_eth_header_setup>:
ffa0208c:	c4 04       	[--SP] = (P5:4);
ffa0208e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa02092:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02096:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa0209a:	00 32       	P0 = R0;
ffa0209c:	10 95       	R0 = W[P2] (Z);
ffa0209e:	10 32       	P2 = R0;
ffa020a0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900016 */
ffa020a4:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa020a8:	00 91       	R0 = [P0];
ffa020aa:	21 32       	P4 = R1;
ffa020ac:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa020ae:	52 91       	P2 = [P2];
ffa020b0:	08 30       	R1 = R0;
ffa020b2:	f1 67       	R1 += -0x2;		/* ( -2) */
ffa020b4:	80 67       	R0 += -0x10;		/* (-16) */
ffa020b6:	95 ad       	P5 = [P2 + 0x18];
ffa020b8:	00 93       	[P0] = R0;
ffa020ba:	02 30       	R0 = R2;
ffa020bc:	55 32       	P2 = P5;
ffa020be:	11 96       	W[P2++] = R1;
ffa020c0:	4a 30       	R1 = P2;
ffa020c2:	00 e3 ab 07 	CALL 0xffa03018 <_ARP_req>;
ffa020c6:	00 0c       	CC = R0 == 0x0;
ffa020c8:	2b 18       	IF CC JUMP 0xffa0211e <_eth_header_setup+0x92>;
ffa020ca:	00 00       	NOP;
ffa020cc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa020d0:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_NetOurMAC> */
ffa020d4:	50 99       	R0 = B[P2] (X);
ffa020d6:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa020da:	90 e5 01 00 	R0 = B[P2 + 0x1] (X);
ffa020de:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa020e2:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa020e6:	a8 e6 0a 00 	B[P5 + 0xa] = R0;
ffa020ea:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa020ee:	a8 e6 0b 00 	B[P5 + 0xb] = R0;
ffa020f2:	90 e5 04 00 	R0 = B[P2 + 0x4] (X);
ffa020f6:	a8 e6 0c 00 	B[P5 + 0xc] = R0;
ffa020fa:	90 e5 05 00 	R0 = B[P2 + 0x5] (X);
ffa020fe:	a8 e6 0d 00 	B[P5 + 0xd] = R0;
ffa02102:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02106:	ff e3 7d fb 	CALL 0xffa01800 <_htons>;
ffa0210a:	e8 b5       	W[P5 + 0xe] = R0;
ffa0210c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0210e:	20 9b       	B[P4] = R0;
ffa02110:	4d 30       	R1 = P5;
ffa02112:	81 64       	R1 += 0x10;		/* ( 16) */
ffa02114:	01 e8 00 00 	UNLINK;
ffa02118:	01 30       	R0 = R1;
ffa0211a:	84 04       	(P5:4) = [SP++];
ffa0211c:	10 00       	RTS;
ffa0211e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02120:	20 9b       	B[P4] = R0;
ffa02122:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02124:	01 e8 00 00 	UNLINK;
ffa02128:	01 30       	R0 = R1;
ffa0212a:	84 04       	(P5:4) = [SP++];
ffa0212c:	10 00       	RTS;
	...

ffa02130 <_icmp_packet_setup>:
ffa02130:	e4 05       	[--SP] = (R7:4, P5:4);
ffa02132:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02136:	29 32       	P5 = R1;
ffa02138:	7f 30       	R7 = FP;
ffa0213a:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa0213c:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0213e:	f0 bb       	[FP -0x4] = R0;
ffa02140:	07 30       	R0 = R7;
ffa02142:	22 32       	P4 = R2;
ffa02144:	be e5 2c 00 	R6 = B[FP + 0x2c] (X);
ffa02148:	7d e5 18 00 	R5 = W[FP + 0x30] (X);
ffa0214c:	7c e5 1a 00 	R4 = W[FP + 0x34] (X);
ffa02150:	ff e3 9e ff 	CALL 0xffa0208c <_eth_header_setup>;
ffa02154:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa02158:	68 99 00 00 
ffa0215c:	80 0c       	CC = R0 < 0x0;
ffa0215e:	14 18       	IF CC JUMP 0xffa02186 <_icmp_packet_setup+0x56>;
ffa02160:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02162:	f0 b0       	[SP + 0xc] = R0;
ffa02164:	54 30       	R2 = P4;
ffa02166:	01 30       	R0 = R1;
ffa02168:	0f 30       	R1 = R7;
ffa0216a:	ff e3 7f fb 	CALL 0xffa01868 <_ip_header_setup>;
ffa0216e:	e9 42       	R1 = R5.L (Z);
ffa02170:	f1 b0       	[SP + 0xc] = R1;
ffa02172:	e1 42       	R1 = R4.L (Z);
ffa02174:	31 b1       	[SP + 0x10] = R1;
ffa02176:	72 43       	R2 = R6.B (Z);
ffa02178:	0f 30       	R1 = R7;
ffa0217a:	ff e3 c1 fb 	CALL 0xffa018fc <_icmp_header_setup>;
ffa0217e:	01 e8 00 00 	UNLINK;
ffa02182:	a4 05       	(R7:4, P5:4) = [SP++];
ffa02184:	10 00       	RTS;
ffa02186:	01 e8 00 00 	UNLINK;
ffa0218a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0218c:	a4 05       	(R7:4, P5:4) = [SP++];
ffa0218e:	10 00       	RTS;

ffa02190 <_icmp_rx>:
ffa02190:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02192:	28 32       	P5 = R0;
ffa02194:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa02198:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa0219c:	39 30       	R7 = R1;
ffa0219e:	ff e3 31 fb 	CALL 0xffa01800 <_htons>;
ffa021a2:	c0 42       	R0 = R0.L (Z);
ffa021a4:	e9 a5       	R1 = W[P5 + 0xe] (Z);
ffa021a6:	01 08       	CC = R1 == R0;
ffa021a8:	06 18       	IF CC JUMP 0xffa021b4 <_icmp_rx+0x24>;
ffa021aa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa021ac:	01 e8 00 00 	UNLINK;
ffa021b0:	bd 05       	(R7:7, P5:5) = [SP++];
ffa021b2:	10 00       	RTS;
ffa021b4:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa021b6:	07 0a       	CC = R7 <= R0 (IU);
ffa021b8:	f9 1b       	IF CC JUMP 0xffa021aa <_icmp_rx+0x1a>;
ffa021ba:	00 00       	NOP;
ffa021bc:	00 00       	NOP;
ffa021be:	00 00       	NOP;
ffa021c0:	a8 e4 19 00 	R0 = B[P5 + 0x19] (Z);
ffa021c4:	08 0c       	CC = R0 == 0x1;
ffa021c6:	f2 17       	IF !CC JUMP 0xffa021aa <_icmp_rx+0x1a> (BP);
ffa021c8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_NetOurMAC> */
ffa021cc:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa021d0:	28 a2       	R0 = [P5 + 0x20];
ffa021d2:	11 91       	R1 = [P2];
ffa021d4:	08 08       	CC = R0 == R1;
ffa021d6:	ea 17       	IF !CC JUMP 0xffa021aa <_icmp_rx+0x1a> (BP);
ffa021d8:	68 e4 12 00 	R0 = W[P5 + 0x24] (Z);
ffa021dc:	21 e1 03 03 	R1 = 0x303 (X);		/*		R1=0x303(771) */
ffa021e0:	08 08       	CC = R0 == R1;
ffa021e2:	3e 18       	IF CC JUMP 0xffa0225e <_icmp_rx+0xce>;
ffa021e4:	00 00       	NOP;
ffa021e6:	00 00       	NOP;
ffa021e8:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
ffa021ea:	a8 e4 24 00 	R0 = B[P5 + 0x24] (Z);
ffa021ee:	08 08       	CC = R0 == R1;
ffa021f0:	dd 17       	IF !CC JUMP 0xffa021aa <_icmp_rx+0x1a> (BP);
ffa021f2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90002b(-7339989) */
ffa021f6:	e9 a1       	R1 = [P5 + 0x1c];
ffa021f8:	00 e1 34 02 	R0.L = 0x234;		/* (564)	R0=0xff900234(-7339468) */
ffa021fc:	ff e3 fa f4 	CALL 0xffa00bf0 <_printf_ip>;
ffa02200:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa02204:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa02208:	e8 a1       	R0 = [P5 + 0x1c];
ffa0220a:	4d 30       	R1 = P5;
ffa0220c:	10 93       	[P2] = R0;
ffa0220e:	41 64       	R1 += 0x8;		/* (  8) */
ffa02210:	00 e3 06 05 	CALL 0xffa02c1c <_ARP_lut_add>;
ffa02214:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900234(-7339468) */
ffa02218:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa0221c:	ff e3 86 f3 	CALL 0xffa00928 <_printf_str>;
ffa02220:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P5 + 0x1c] || NOP;
ffa02224:	ea a1 00 00 
ffa02228:	f0 b0       	[SP + 0xc] = R0;
ffa0222a:	68 e4 14 00 	R0 = W[P5 + 0x28] (Z);
ffa0222e:	30 b1       	[SP + 0x10] = R0;
ffa02230:	b7 66       	R7 += -0x2a;		/* (-42) */
ffa02232:	68 e4 15 00 	R0 = W[P5 + 0x2a] (Z);
ffa02236:	4f 30       	R1 = FP;
ffa02238:	70 b1       	[SP + 0x14] = R0;
ffa0223a:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0223c:	07 30       	R0 = R7;
ffa0223e:	ff e3 79 ff 	CALL 0xffa02130 <_icmp_packet_setup>;
ffa02242:	08 30       	R1 = R0;
ffa02244:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa02248:	00 0d       	CC = R0 <= 0x0;
ffa0224a:	b0 1b       	IF CC JUMP 0xffa021aa <_icmp_rx+0x1a>;
ffa0224c:	65 6d       	P5 += 0x2c;		/* ( 44) */
ffa0224e:	45 30       	R0 = P5;
ffa02250:	17 30       	R2 = R7;
ffa02252:	ff e3 13 f5 	CALL 0xffa00c78 <_memcpy_>;
ffa02256:	ff e3 7f fc 	CALL 0xffa01b54 <_bfin_EMAC_send_nocopy>;
ffa0225a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0225c:	a8 2f       	JUMP.S 0xffa021ac <_icmp_rx+0x1c>;
ffa0225e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa02262:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02264:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa02268:	10 9b       	B[P2] = R0;
ffa0226a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0226c:	a0 2f       	JUMP.S 0xffa021ac <_icmp_rx+0x1c>;
	...

ffa02270 <_udp_packet_setup>:
ffa02270:	fc 05       	[--SP] = (R7:7, P5:4);
ffa02272:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa02276:	29 32       	P5 = R1;
ffa02278:	7f 30       	R7 = FP;
ffa0227a:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c2c <_txIdx> */
ffa0227e:	60 65       	R0 += 0x2c;		/* ( 44) */
ffa02280:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02282:	0c e1 64 0c 	P4.L = 0xc64;		/* (3172)	P4=0xff900c64 <_NetDataDestIP> */
ffa02286:	f0 bb       	[FP -0x4] = R0;
ffa02288:	22 91       	R2 = [P4];
ffa0228a:	07 30       	R0 = R7;
ffa0228c:	ff e3 00 ff 	CALL 0xffa0208c <_eth_header_setup>;
ffa02290:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa02294:	68 99 00 00 
ffa02298:	80 0c       	CC = R0 < 0x0;
ffa0229a:	14 18       	IF CC JUMP 0xffa022c2 <_udp_packet_setup+0x52>;
ffa0229c:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa0229e:	f0 b0       	[SP + 0xc] = R0;
ffa022a0:	01 30       	R0 = R1;
ffa022a2:	22 91       	R2 = [P4];
ffa022a4:	0f 30       	R1 = R7;
ffa022a6:	ff e3 e1 fa 	CALL 0xffa01868 <_ip_header_setup>;
ffa022aa:	21 e1 f4 10 	R1 = 0x10f4 (X);		/*		R1=0x10f4(4340) */
ffa022ae:	f1 b0       	[SP + 0xc] = R1;
ffa022b0:	22 e1 f5 10 	R2 = 0x10f5 (X);		/*		R2=0x10f5(4341) */
ffa022b4:	0f 30       	R1 = R7;
ffa022b6:	ff e3 47 fb 	CALL 0xffa01944 <_udp_header_setup>;
ffa022ba:	01 e8 00 00 	UNLINK;
ffa022be:	bc 05       	(R7:7, P5:4) = [SP++];
ffa022c0:	10 00       	RTS;
ffa022c2:	01 e8 00 00 	UNLINK;
ffa022c6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa022c8:	bc 05       	(R7:7, P5:4) = [SP++];
ffa022ca:	10 00       	RTS;

ffa022cc <_SetupTxBuffer>:
ffa022cc:	fd 05       	[--SP] = (R7:7, P5:5);
ffa022ce:	38 30       	R7 = R0;
ffa022d0:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa022d4:	c7 40       	R7 *= R0;
ffa022d6:	17 32       	P2 = R7;
ffa022d8:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff800c30 */
ffa022dc:	0d e1 00 30 	P5.L = 0x3000;		/* (12288)	P5=0xff803000 */
ffa022e0:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa022e4:	00 e1 2c 30 	R0.L = 0x302c;		/* (12332)	R0=0xff80302c(-8376276) */
ffa022e8:	6a 5b       	P5 = P2 + P5;
ffa022ea:	c7 51       	R7 = R7 + R0;
ffa022ec:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa022f0:	45 30       	R0 = P5;
ffa022f2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa022f4:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa022f6:	ff e3 d1 f4 	CALL 0xffa00c98 <_memset_>;
ffa022fa:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P5 + 0x18] = R7 || NOP;
ffa022fe:	af b1 00 00 
ffa02302:	21 e1 aa 00 	R1 = 0xaa (X);		/*		R1=0xaa(170) */
ffa02306:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa0230a:	ff e3 c7 f4 	CALL 0xffa00c98 <_memset_>;
ffa0230e:	45 30       	R0 = P5;
ffa02310:	60 64       	R0 += 0xc;		/* ( 12) */
ffa02312:	28 93       	[P5] = R0;
ffa02314:	a8 a1       	R0 = [P5 + 0x18];
ffa02316:	68 b0       	[P5 + 0x4] = R0;
ffa02318:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa0231c:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0231e:	9a 63       	R2 = -0xd (X);		/*		R2=0xfffffff3(-13) */
ffa02320:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
ffa02322:	10 54       	R0 = R0 & R2;
ffa02324:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa02326:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa0232a:	83 63       	R3 = -0x10 (X);		/*		R3=0xfffffff0(-16) */
ffa0232c:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa02330:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa02332:	18 54       	R0 = R0 & R3;
ffa02334:	08 56       	R0 = R0 | R1;
ffa02336:	21 e1 70 00 	R1 = 0x70 (X);		/*		R1=0x70(112) */
ffa0233a:	08 56       	R0 = R0 | R1;
ffa0233c:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa02340:	45 30       	R0 = P5;
ffa02342:	40 65       	R0 += 0x28;		/* ( 40) */
ffa02344:	28 b1       	[P5 + 0x10] = R0;
ffa02346:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa0234a:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa0234c:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa0234e:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa02352:	10 54       	R0 = R0 & R2;
ffa02354:	08 56       	R0 = R0 | R1;
ffa02356:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa0235a:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa0235e:	18 54       	R0 = R0 & R3;
ffa02360:	39 64       	R1 += 0x7;		/* (  7) */
ffa02362:	08 54       	R0 = R0 & R1;
ffa02364:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa02368:	ed bc       	[P5 + 0xc] = P5;
ffa0236a:	01 e8 00 00 	UNLINK;
ffa0236e:	45 30       	R0 = P5;
ffa02370:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02372:	10 00       	RTS;

ffa02374 <_SetupRxBuffer>:
ffa02374:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02376:	38 30       	R7 = R0;
ffa02378:	20 e1 3c 06 	R0 = 0x63c (X);		/*		R0=0x63c(1596) */
ffa0237c:	c7 40       	R7 *= R0;
ffa0237e:	17 32       	P2 = R7;
ffa02380:	4d e1 80 ff 	P5.H = 0xff80;		/* (-128)	P5=0xff803000 */
ffa02384:	0d e1 00 10 	P5.L = 0x1000;		/* (4096)	P5=0xff801000 */
ffa02388:	40 e1 80 ff 	R0.H = 0xff80;		/* (-128)	R0=0xff80063c(-8387012) */
ffa0238c:	00 e1 2c 10 	R0.L = 0x102c;		/* (4140)	R0=0xff80102c(-8384468) */
ffa02390:	6a 5b       	P5 = P2 + P5;
ffa02392:	c7 51       	R7 = R7 + R0;
ffa02394:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02398:	45 30       	R0 = P5;
ffa0239a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0239c:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
ffa0239e:	ff e3 7d f4 	CALL 0xffa00c98 <_memset_>;
ffa023a2:	af b1       	[P5 + 0x18] = R7;
ffa023a4:	07 30       	R0 = R7;
ffa023a6:	21 e1 fe 00 	R1 = 0xfe (X);		/*		R1=0xfe(254) */
ffa023aa:	22 e1 10 06 	R2 = 0x610 (X);		/*		R2=0x610(1552) */
ffa023ae:	ff e3 75 f4 	CALL 0xffa00c98 <_memset_>;
ffa023b2:	45 30       	R0 = P5;
ffa023b4:	60 64       	R0 += 0xc;		/* ( 12) */
ffa023b6:	28 93       	[P5] = R0;
ffa023b8:	a8 a1       	R0 = [P5 + 0x18];
ffa023ba:	68 b0       	[P5 + 0x4] = R0;
ffa023bc:	a8 e5 08 00 	R0 = B[P5 + 0x8] (X);
ffa023c0:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa023c2:	99 63       	R1 = -0xd (X);		/*		R1=0xfffffff3(-13) */
ffa023c4:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa023c6:	08 54       	R0 = R0 & R1;
ffa023c8:	18 4a       	BITSET (R0, 0x3);		/* bit  3 */
ffa023ca:	a8 e6 08 00 	B[P5 + 0x8] = R0;
ffa023ce:	87 63       	R7 = -0x10 (X);		/*		R7=0xfffffff0(-16) */
ffa023d0:	a8 e5 09 00 	R0 = B[P5 + 0x9] (X);
ffa023d4:	38 54       	R0 = R0 & R7;
ffa023d6:	2b 60       	R3 = 0x5 (X);		/*		R3=0x5(  5) */
ffa023d8:	22 e1 70 00 	R2 = 0x70 (X);		/*		R2=0x70(112) */
ffa023dc:	18 56       	R0 = R0 | R3;
ffa023de:	10 56       	R0 = R0 | R2;
ffa023e0:	a8 e6 09 00 	B[P5 + 0x9] = R0;
ffa023e4:	45 30       	R0 = P5;
ffa023e6:	20 65       	R0 += 0x24;		/* ( 36) */
ffa023e8:	28 b1       	[P5 + 0x10] = R0;
ffa023ea:	a8 e5 14 00 	R0 = B[P5 + 0x14] (X);
ffa023ee:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
ffa023f0:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
ffa023f2:	08 54       	R0 = R0 & R1;
ffa023f4:	21 e1 88 ff 	R1 = -0x78 (X);		/*		R1=0xffffff88(-120) */
ffa023f8:	08 56       	R0 = R0 | R1;
ffa023fa:	a8 e6 14 00 	B[P5 + 0x14] = R0;
ffa023fe:	a8 e5 15 00 	R0 = B[P5 + 0x15] (X);
ffa02402:	38 54       	R0 = R0 & R7;
ffa02404:	18 56       	R0 = R0 | R3;
ffa02406:	10 56       	R0 = R0 | R2;
ffa02408:	a8 e6 15 00 	B[P5 + 0x15] = R0;
ffa0240c:	ed bc       	[P5 + 0xc] = P5;
ffa0240e:	01 e8 00 00 	UNLINK;
ffa02412:	45 30       	R0 = P5;
ffa02414:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02416:	10 00       	RTS;

ffa02418 <_SetupSystemRegs>:
ffa02418:	f5 05       	[--SP] = (R7:6, P5:5);
ffa0241a:	28 32       	P5 = R0;
ffa0241c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90102c(-7335892) */
ffa02420:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02424:	00 e1 50 02 	R0.L = 0x250;		/* (592)	R0=0xff900250(-7339440) */
ffa02428:	ff e3 80 f2 	CALL 0xffa00928 <_printf_str>;
ffa0242c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00bb8(-4191304) */
ffa02430:	0a e1 14 32 	P2.L = 0x3214;		/* (12820)	P2=0xffc03214(-4181484) */
ffa02434:	50 95       	R0 = W[P2] (X);
ffa02436:	21 e1 ff cf 	R1 = -0x3001 (X);		/*		R1=0xffffcfff(-12289) */
ffa0243a:	08 54       	R0 = R0 & R1;
ffa0243c:	10 97       	W[P2] = R0;
ffa0243e:	50 95       	R0 = W[P2] (X);
ffa02440:	60 4a       	BITSET (R0, 0xc);		/* bit 12 */
ffa02442:	10 97       	W[P2] = R0;
ffa02444:	82 6f       	P2 += -0x10;		/* (-16) */
ffa02446:	51 95       	R1 = W[P2] (X);
ffa02448:	20 e1 00 c0 	R0 = -0x4000 (X);		/*		R0=0xffffc000(-16384) */
ffa0244c:	08 56       	R0 = R0 | R1;
ffa0244e:	10 97       	W[P2] = R0;
ffa02450:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02452:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02454:	10 97       	W[P2] = R0;
ffa02456:	a8 60       	R0 = 0x15 (X);		/*		R0=0x15( 21) */
ffa02458:	82 6c       	P2 += 0x10;		/* ( 16) */
ffa0245a:	10 97       	W[P2] = R0;
ffa0245c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03214(-4181484) */
ffa02460:	0a e1 08 00 	P2.L = 0x8;		/* (  8)	P2=0xffc00008(-4194296) */
ffa02464:	50 95       	R0 = W[P2] (X);
ffa02466:	70 4a       	BITSET (R0, 0xe);		/* bit 14 */
ffa02468:	10 97       	W[P2] = R0;
ffa0246a:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00008(-4194296) */
ffa0246e:	0a e1 60 30 	P2.L = 0x3060;		/* (12384)	P2=0xffc03060(-4181920) */
ffa02472:	20 e1 06 18 	R0 = 0x1806 (X);		/*		R0=0x1806(6150) */
ffa02476:	10 93       	[P2] = R0;
ffa02478:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa0247a:	22 e1 00 31 	R2 = 0x3100 (X);		/*		R2=0x3100(12544) */
ffa0247e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02480:	ff e3 4c f9 	CALL 0xffa01718 <_WrPHYReg>;
ffa02484:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa02488:	ff e3 e6 f5 	CALL 0xffa01054 <_udelay>;
ffa0248c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0248e:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02490:	ff e3 60 f9 	CALL 0xffa01750 <_RdPHYReg>;
ffa02494:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02496:	26 60       	R6 = 0x4 (X);		/*		R6=0x4(  4) */
ffa02498:	0e 20       	JUMP.S 0xffa024b4 <_SetupSystemRegs+0x9c>;
ffa0249a:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa0249e:	ff e3 db f5 	CALL 0xffa01054 <_udelay>;
ffa024a2:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa024a4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024a6:	ff e3 55 f9 	CALL 0xffa01750 <_RdPHYReg>;
ffa024aa:	0f 64       	R7 += 0x1;		/* (  1) */
ffa024ac:	21 e1 b9 0b 	R1 = 0xbb9 (X);		/*		R1=0xbb9(3001) */
ffa024b0:	0f 08       	CC = R7 == R1;
ffa024b2:	35 18       	IF CC JUMP 0xffa0251c <_SetupSystemRegs+0x104>;
ffa024b4:	06 54       	R0 = R6 & R0;
ffa024b6:	00 0c       	CC = R0 == 0x0;
ffa024b8:	f1 1f       	IF CC JUMP 0xffa0249a <_SetupSystemRegs+0x82> (BP);
ffa024ba:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa024bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024be:	ff e3 49 f9 	CALL 0xffa01750 <_RdPHYReg>;
ffa024c2:	21 e1 40 01 	R1 = 0x140 (X);		/*		R1=0x140(320) */
ffa024c6:	01 54       	R0 = R1 & R0;
ffa024c8:	00 0c       	CC = R0 == 0x0;
ffa024ca:	27 1c       	IF CC JUMP 0xffa02518 <_SetupSystemRegs+0x100> (BP);
ffa024cc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa024ce:	d0 4f       	R0 <<= 0x1a;
ffa024d0:	28 93       	[P5] = R0;
ffa024d2:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03060(-4181920) */
ffa024d6:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa024d8:	0a e1 80 30 	P2.L = 0x3080;		/* (12416)	P2=0xffc03080(-4181888) */
ffa024dc:	10 93       	[P2] = R0;
ffa024de:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03080(-4181888) */
ffa024e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa024e4:	0a e1 90 0c 	P2.L = 0xc90;		/* (3216)	P2=0xffc00c90(-4191088) */
ffa024e8:	10 97       	W[P2] = R0;
ffa024ea:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa024ec:	22 6c       	P2 += 0x4;		/* (  4) */
ffa024ee:	11 97       	W[P2] = R1;
ffa024f0:	22 6c       	P2 += 0x4;		/* (  4) */
ffa024f2:	10 97       	W[P2] = R0;
ffa024f4:	22 6c       	P2 += 0x4;		/* (  4) */
ffa024f6:	10 97       	W[P2] = R0;
ffa024f8:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c90(-4191088) */
ffa024fc:	0a e1 50 0c 	P2.L = 0xc50;		/* (3152)	P2=0xffc00c50(-4191152) */
ffa02500:	10 97       	W[P2] = R0;
ffa02502:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02504:	11 97       	W[P2] = R1;
ffa02506:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02508:	10 97       	W[P2] = R0;
ffa0250a:	22 6c       	P2 += 0x4;		/* (  4) */
ffa0250c:	10 97       	W[P2] = R0;
ffa0250e:	01 e8 00 00 	UNLINK;
ffa02512:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02514:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02516:	10 00       	RTS;
ffa02518:	28 93       	[P5] = R0;
ffa0251a:	dc 2f       	JUMP.S 0xffa024d2 <_SetupSystemRegs+0xba>;
ffa0251c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02520:	00 e1 68 02 	R0.L = 0x268;		/* (616)	R0=0xff900268(-7339416) */
ffa02524:	ff e3 02 f2 	CALL 0xffa00928 <_printf_str>;
ffa02528:	01 e8 00 00 	UNLINK;
ffa0252c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa0252e:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02530:	10 00       	RTS;
	...

ffa02534 <_SetupMacAddr>:
ffa02534:	10 32       	P2 = R0;
ffa02536:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02538:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0253a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0253e:	81 e1 00 e0 	R1 = 0xe000 (Z);		/*		R1=0xe000(57344) */
ffa02542:	10 9b       	B[P2] = R0;
ffa02544:	00 63       	R0 = -0x20 (X);		/*		R0=0xffffffe0(-32) */
ffa02546:	90 e6 01 00 	B[P2 + 0x1] = R0;
ffa0254a:	10 61       	R0 = 0x22 (X);		/*		R0=0x22( 34) */
ffa0254c:	90 e6 02 00 	B[P2 + 0x2] = R0;
ffa02550:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
ffa02552:	90 e6 03 00 	B[P2 + 0x3] = R0;
ffa02556:	20 e1 51 00 	R0 = 0x51 (X);		/*		R0=0x51( 81) */
ffa0255a:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa0255e:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
ffa02560:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02564:	10 99       	R0 = B[P2] (Z);
ffa02566:	08 56       	R0 = R0 | R1;
ffa02568:	21 e1 11 ff 	R1 = -0xef (X);		/*		R1=0xffffff11(-239) */
ffa0256c:	89 4f       	R1 <<= 0x11;
ffa0256e:	49 e1 c0 ff 	P1.H = 0xffc0;		/* (-64)	P1=0xffc00c30(-4191184) */
ffa02572:	09 e1 04 30 	P1.L = 0x3004;		/* (12292)	P1=0xffc03004(-4182012) */
ffa02576:	08 56       	R0 = R0 | R1;
ffa02578:	08 93       	[P1] = R0;
ffa0257a:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa0257e:	4d e1 c0 ff 	P5.H = 0xffc0;		/* (-64)	P5=0xffc01000(-4190208) */
ffa02582:	0d e1 08 30 	P5.L = 0x3008;		/* (12296)	P5=0xffc03008(-4182008) */
ffa02586:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
ffa02588:	28 93       	[P5] = R0;
ffa0258a:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa0258e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900008(-7340024) */
ffa02592:	09 91       	R1 = [P1];
ffa02594:	07 e1 6c 0a 	R7.L = 0xa6c;		/* (2668)	R7=0xff900a6c(-7337364) */
ffa02598:	00 e1 9c 02 	R0.L = 0x29c;		/* (668)	R0=0xff90029c(-7339364) */
ffa0259c:	ff e3 2c f2 	CALL 0xffa009f4 <_printf_hex>;
ffa025a0:	07 30       	R0 = R7;
ffa025a2:	ff e3 c3 f1 	CALL 0xffa00928 <_printf_str>;
ffa025a6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90029c(-7339364) */
ffa025aa:	29 91       	R1 = [P5];
ffa025ac:	00 e1 a8 02 	R0.L = 0x2a8;		/* (680)	R0=0xff9002a8(-7339352) */
ffa025b0:	ff e3 22 f2 	CALL 0xffa009f4 <_printf_hex>;
ffa025b4:	01 e8 00 00 	UNLINK;
ffa025b8:	07 30       	R0 = R7;
ffa025ba:	bd 05       	(R7:7, P5:5) = [SP++];
ffa025bc:	ff e2 b6 f1 	JUMP.L 0xffa00928 <_printf_str>;

ffa025c0 <_bfin_EMAC_init>:
ffa025c0:	f3 05       	[--SP] = (R7:6, P5:3);
ffa025c2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002a8(-7339352) */
ffa025c6:	00 e8 05 00 	LINK 0x14;		/* (20) */
ffa025ca:	00 e1 b4 02 	R0.L = 0x2b4;		/* (692)	R0=0xff9002b4(-7339340) */
ffa025ce:	ff e3 ad f1 	CALL 0xffa00928 <_printf_str>;
ffa025d2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c50 */
ffa025d6:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
ffa025d8:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa025dc:	16 97       	W[P2] = R6;
ffa025de:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa025e2:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_rxIdx> */
ffa025e6:	16 97       	W[P2] = R6;
ffa025e8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_rxIdx> */
ffa025ec:	0a e1 2e 0c 	P2.L = 0xc2e;		/* (3118)	P2=0xff900c2e <_NetIPID> */
ffa025f0:	16 97       	W[P2] = R6;
ffa025f2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2e <_NetIPID> */
ffa025f6:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa025f8:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetSubnetMask> */
ffa025fc:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
ffa025fe:	17 93       	[P2] = R7;
ffa02600:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa02604:	f0 b0       	[SP + 0xc] = R0;
ffa02606:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02608:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa0260c:	ff e3 50 f8 	CALL 0xffa016ac <_FormatIPAddress>;
ffa02610:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c5c <_NetSubnetMask> */
ffa02614:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa02618:	10 93       	[P2] = R0;
ffa0261a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0261c:	f0 b0       	[SP + 0xc] = R0;
ffa0261e:	21 e1 a8 00 	R1 = 0xa8 (X);		/*		R1=0xa8(168) */
ffa02622:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02624:	20 e1 c0 00 	R0 = 0xc0 (X);		/*		R0=0xc0(192) */
ffa02628:	ff e3 42 f8 	CALL 0xffa016ac <_FormatIPAddress>;
ffa0262c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa02630:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa02634:	10 93       	[P2] = R0;
ffa02636:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
ffa02638:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa0263a:	22 e1 e5 00 	R2 = 0xe5 (X);		/*		R2=0xe5(229) */
ffa0263e:	f0 b0       	[SP + 0xc] = R0;
ffa02640:	20 e1 98 00 	R0 = 0x98 (X);		/*		R0=0x98(152) */
ffa02644:	ff e3 34 f8 	CALL 0xffa016ac <_FormatIPAddress>;
ffa02648:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa0264c:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa02650:	10 93       	[P2] = R0;
ffa02652:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa02656:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa0265a:	17 93       	[P2] = R7;
ffa0265c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa02660:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa02664:	17 93       	[P2] = R7;
ffa02666:	40 e1 da 09 	R0.H = 0x9da;		/* (2522)	R0=0x9da0098(165281944) */
ffa0266a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa0266e:	00 e1 b5 24 	R0.L = 0x24b5;		/* (9397)	R0=0x9da24b5(165291189) */
ffa02672:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa02676:	10 93       	[P2] = R0;
ffa02678:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa0267c:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa02680:	16 97       	W[P2] = R6;
ffa02682:	00 e3 7f 02 	CALL 0xffa02b80 <_ARP_init>;
ffa02686:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00d50(-4190896) */
ffa0268a:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa0268e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9024b5(-7330635) */
ffa02692:	17 93       	[P2] = R7;
ffa02694:	00 e1 54 0c 	R0.L = 0xc54;		/* (3156)	R0=0xff900c54 <_NetOurMAC>(-7336876) */
ffa02698:	ff e3 4e ff 	CALL 0xffa02534 <_SetupMacAddr>;
ffa0269c:	47 30       	R0 = FP;
ffa0269e:	e0 67       	R0 += -0x4;		/* ( -4) */
ffa026a0:	ff e3 bc fe 	CALL 0xffa02418 <_SetupSystemRegs>;
ffa026a4:	80 0c       	CC = R0 < 0x0;
ffa026a6:	7a 18       	IF CC JUMP 0xffa0279a <_bfin_EMAC_init+0x1da>;
ffa026a8:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff900000 <_l1_data_a>(-7340032) */
ffa026ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026ae:	07 e1 44 0c 	R7.L = 0xc44;		/* (3140)	R7=0xff900c44 <_rxbuf>(-7336892) */
ffa026b2:	ff e3 61 fe 	CALL 0xffa02374 <_SetupRxBuffer>;
ffa026b6:	07 32       	P0 = R7;
ffa026b8:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa026ba:	00 93       	[P0] = R0;
ffa026bc:	17 32       	P2 = R7;
ffa026be:	62 5f       	P5 = P2 + (P4 << 0x2);
ffa026c0:	44 30       	R0 = P4;
ffa026c2:	ff e3 59 fe 	CALL 0xffa02374 <_SetupRxBuffer>;
ffa026c6:	44 0c       	CC = P4 == 0x0;
ffa026c8:	08 32       	P1 = R0;
ffa026ca:	28 92       	[P5++] = R0;
ffa026cc:	52 18       	IF CC JUMP 0xffa02770 <_bfin_EMAC_init+0x1b0>;
ffa026ce:	07 32       	P0 = R7;
ffa026d0:	5c 0c       	CC = P4 == 0x3;
ffa026d2:	a0 5e       	P2 = P0 + (P4 << 0x2);
ffa026d4:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa026d8:	d0 b0       	[P2 + 0xc] = R0;
ffa026da:	54 18       	IF CC JUMP 0xffa02782 <_bfin_EMAC_init+0x1c2>;
ffa026dc:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa026de:	5c 0d       	CC = P4 <= 0x3;
ffa026e0:	ee 1f       	IF CC JUMP 0xffa026bc <_bfin_EMAC_init+0xfc> (BP);
ffa026e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa026e4:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900bdc <_printf_temp> */
ffa026e8:	ff e3 f2 fd 	CALL 0xffa022cc <_SetupTxBuffer>;
ffa026ec:	0b e1 30 0c 	P3.L = 0xc30;		/* (3120)	P3=0xff900c30 <_txbuf> */
ffa026f0:	18 93       	[P3] = R0;
ffa026f2:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa026f4:	63 5f       	P5 = P3 + (P4 << 0x2);
ffa026f6:	44 30       	R0 = P4;
ffa026f8:	ff e3 ea fd 	CALL 0xffa022cc <_SetupTxBuffer>;
ffa026fc:	44 0c       	CC = P4 == 0x0;
ffa026fe:	08 32       	P1 = R0;
ffa02700:	28 92       	[P5++] = R0;
ffa02702:	35 18       	IF CC JUMP 0xffa0276c <_bfin_EMAC_init+0x1ac>;
ffa02704:	00 00       	NOP;
ffa02706:	a3 5e       	P2 = P3 + (P4 << 0x2);
ffa02708:	5c 0c       	CC = P4 == 0x3;
ffa0270a:	12 e5 ff ff 	P2 = [P2 + -0x4];
ffa0270e:	d0 b0       	[P2 + 0xc] = R0;
ffa02710:	32 18       	IF CC JUMP 0xffa02774 <_bfin_EMAC_init+0x1b4>;
ffa02712:	0c 6c       	P4 += 0x1;		/* (  1) */
ffa02714:	5c 0d       	CC = P4 <= 0x3;
ffa02716:	ef 1f       	IF CC JUMP 0xffa026f4 <_bfin_EMAC_init+0x134> (BP);
ffa02718:	17 32       	P2 = R7;
ffa0271a:	51 91       	P1 = [P2];
ffa0271c:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc03000(-4182016) */
ffa02720:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xffc00c40(-4191168) */
ffa02724:	51 93       	[P2] = P1;
ffa02726:	08 a9       	R0 = W[P1 + 0x8] (X);
ffa02728:	42 6c       	P2 += 0x8;		/* (  8) */
ffa0272a:	10 97       	W[P2] = R0;
ffa0272c:	ff e3 e8 f7 	CALL 0xffa016fc <_PollMdcDone>;
ffa02730:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02732:	f0 b9       	R0 = [FP -0x4];
ffa02734:	d1 4f       	R1 <<= 0x1a;
ffa02736:	08 08       	CC = R0 == R1;
ffa02738:	2c 18       	IF CC JUMP 0xffa02790 <_bfin_EMAC_init+0x1d0>;
ffa0273a:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa0273e:	01 30       	R0 = R1;
ffa02740:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c40(-4191168) */
ffa02744:	0a e1 00 30 	P2.L = 0x3000;		/* (12288)	P2=0xffc03000(-4182016) */
ffa02748:	10 93       	[P2] = R0;
ffa0274a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0274e:	00 e1 c4 02 	R0.L = 0x2c4;		/* (708)	R0=0xff9002c4(-7339324) */
ffa02752:	ff e3 51 f1 	CALL 0xffa009f4 <_printf_hex>;
ffa02756:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002c4(-7339324) */
ffa0275a:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa0275e:	ff e3 e5 f0 	CALL 0xffa00928 <_printf_str>;
ffa02762:	01 e8 00 00 	UNLINK;
ffa02766:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02768:	b3 05       	(R7:6, P5:3) = [SP++];
ffa0276a:	10 00       	RTS;
ffa0276c:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa0276e:	c4 2f       	JUMP.S 0xffa026f6 <_bfin_EMAC_init+0x136>;
ffa02770:	0c 68       	P4 = 0x1 (X);		/*		P4=0x1(  1) */
ffa02772:	a7 2f       	JUMP.S 0xffa026c0 <_bfin_EMAC_init+0x100>;
ffa02774:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903000 */
ffa02778:	0a e1 30 0c 	P2.L = 0xc30;		/* (3120)	P2=0xff900c30 <_txbuf> */
ffa0277c:	10 91       	R0 = [P2];
ffa0277e:	c8 b0       	[P1 + 0xc] = R0;
ffa02780:	cc 2f       	JUMP.S 0xffa02718 <_bfin_EMAC_init+0x158>;
ffa02782:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c30 <_txbuf> */
ffa02786:	0a e1 44 0c 	P2.L = 0xc44;		/* (3140)	P2=0xff900c44 <_rxbuf> */
ffa0278a:	10 91       	R0 = [P2];
ffa0278c:	c8 b0       	[P1 + 0xc] = R0;
ffa0278e:	aa 2f       	JUMP.S 0xffa026e2 <_bfin_EMAC_init+0x122>;
ffa02790:	21 e1 03 08 	R1 = 0x803 (X);		/*		R1=0x803(2051) */
ffa02794:	d1 4a       	BITSET (R1, 0x1a);		/* bit 26 */
ffa02796:	01 30       	R0 = R1;
ffa02798:	d4 2f       	JUMP.S 0xffa02740 <_bfin_EMAC_init+0x180>;
ffa0279a:	01 e8 00 00 	UNLINK;
ffa0279e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa027a0:	b3 05       	(R7:6, P5:3) = [SP++];
ffa027a2:	10 00       	RTS;

ffa027a4 <_bfin_EMAC_recv_poll>:
ffa027a4:	e3 05       	[--SP] = (R7:4, P5:3);
ffa027a6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff903008 */
ffa027aa:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900001 */
ffa027ae:	0d e1 44 0c 	P5.L = 0xc44;		/* (3140)	P5=0xff900c44 <_rxbuf> */
ffa027b2:	0c e1 40 0c 	P4.L = 0xc40;		/* (3136)	P4=0xff900c40 <_rxIdx> */
ffa027b6:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa027ba:	28 30       	R5 = R0;
ffa027bc:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa027be:	75 30       	R6 = P5;
ffa027c0:	5c 32       	P3 = P4;
ffa027c2:	06 20       	JUMP.S 0xffa027ce <_bfin_EMAC_recv_poll+0x2a>;
ffa027c4:	0f 64       	R7 += 0x1;		/* (  1) */
ffa027c6:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa027ca:	07 08       	CC = R7 == R0;
ffa027cc:	0c 18       	IF CC JUMP 0xffa027e4 <_bfin_EMAC_recv_poll+0x40>;
ffa027ce:	20 e1 10 27 	R0 = 0x2710 (X);		/*		R0=0x2710(10000) */
ffa027d2:	ff e3 41 f4 	CALL 0xffa01054 <_udelay>;
ffa027d6:	20 95       	R0 = W[P4] (Z);
ffa027d8:	10 32       	P2 = R0;
ffa027da:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa027dc:	52 91       	P2 = [P2];
ffa027de:	90 a2       	R0 = [P2 + 0x28];
ffa027e0:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa027e2:	f1 1f       	IF CC JUMP 0xffa027c4 <_bfin_EMAC_recv_poll+0x20> (BP);
ffa027e4:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa027e8:	91 a2       	R1 = [P2 + 0x28];
ffa027ea:	41 54       	R1 = R1 & R0;
ffa027ec:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa027ee:	01 09       	CC = R1 <= R0;
ffa027f0:	07 10       	IF !CC JUMP 0xffa027fe <_bfin_EMAC_recv_poll+0x5a>;
ffa027f2:	01 e8 00 00 	UNLINK;
ffa027f6:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa027f8:	07 30       	R0 = R7;
ffa027fa:	a3 05       	(R7:4, P5:3) = [SP++];
ffa027fc:	10 00       	RTS;
ffa027fe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02800:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || [P2 + 0x28] = R0 || NOP;
ffa02804:	90 b2 00 00 
ffa02808:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0280a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa0280e:	0f 30       	R1 = R7;
ffa02810:	00 e1 d0 02 	R0.L = 0x2d0;		/* (720)	R0=0xff9002d0(-7339312) */
ffa02814:	ff e3 4c f1 	CALL 0xffa00aac <_printf_int>;
ffa02818:	18 95       	R0 = W[P3] (Z);
ffa0281a:	10 32       	P2 = R0;
ffa0281c:	0e 32       	P1 = R6;
ffa0281e:	0f 30       	R1 = R7;
ffa02820:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02822:	52 91       	P2 = [P2];
ffa02824:	90 a1       	R0 = [P2 + 0x18];
ffa02826:	15 32       	P2 = R5;
ffa02828:	10 93       	[P2] = R0;
ffa0282a:	00 e3 5f 02 	CALL 0xffa02ce8 <_ARP_rx>;
ffa0282e:	00 0c       	CC = R0 == 0x0;
ffa02830:	1f 18       	IF CC JUMP 0xffa0286e <_bfin_EMAC_recv_poll+0xca>;
ffa02832:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02834:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff903004 */
ffa02838:	20 95       	R0 = W[P4] (Z);
ffa0283a:	10 32       	P2 = R0;
ffa0283c:	61 95       	R1 = W[P4] (X);
ffa0283e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02840:	09 e1 40 0c 	P1.L = 0xc40;		/* (3136)	P1=0xff900c40 <_rxIdx> */
ffa02844:	95 5e       	P2 = P5 + (P2 << 0x2);
ffa02846:	52 91       	P2 = [P2];
ffa02848:	90 b2       	[P2 + 0x28] = R0;
ffa0284a:	c8 42       	R0 = R1.L (Z);
ffa0284c:	10 0d       	CC = R0 <= 0x2;
ffa0284e:	08 1c       	IF CC JUMP 0xffa0285e <_bfin_EMAC_recv_poll+0xba> (BP);
ffa02850:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02852:	08 97       	W[P1] = R0;
ffa02854:	01 e8 00 00 	UNLINK;
ffa02858:	07 30       	R0 = R7;
ffa0285a:	a3 05       	(R7:4, P5:3) = [SP++];
ffa0285c:	10 00       	RTS;
ffa0285e:	01 30       	R0 = R1;
ffa02860:	08 64       	R0 += 0x1;		/* (  1) */
ffa02862:	08 97       	W[P1] = R0;
ffa02864:	01 e8 00 00 	UNLINK;
ffa02868:	07 30       	R0 = R7;
ffa0286a:	a3 05       	(R7:4, P5:3) = [SP++];
ffa0286c:	10 00       	RTS;
ffa0286e:	0d 32       	P1 = R5;
ffa02870:	0f 30       	R1 = R7;
ffa02872:	08 91       	R0 = [P1];
ffa02874:	ff e3 8e fc 	CALL 0xffa02190 <_icmp_rx>;
ffa02878:	00 0c       	CC = R0 == 0x0;
ffa0287a:	dd 1f       	IF CC JUMP 0xffa02834 <_bfin_EMAC_recv_poll+0x90> (BP);
ffa0287c:	db 2f       	JUMP.S 0xffa02832 <_bfin_EMAC_recv_poll+0x8e>;
	...

ffa02880 <_DHCP_rx>:
ffa02880:	ed 05       	[--SP] = (R7:5, P5:5);
ffa02882:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02886:	6f 30       	R5 = FP;
ffa02888:	e5 67       	R5 += -0x4;		/* ( -4) */
ffa0288a:	01 20       	JUMP.S 0xffa0288c <_DHCP_rx+0xc>;
ffa0288c:	05 30       	R0 = R5;
ffa0288e:	ff e3 8b ff 	CALL 0xffa027a4 <_bfin_EMAC_recv_poll>;
ffa02892:	38 30       	R7 = R0;
ffa02894:	20 e1 e4 fe 	R0 = -0x11c (X);		/*		R0=0xfffffee4(-284) */
ffa02898:	87 51       	R6 = R7 + R0;
ffa0289a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90fee4(-7274780) */
ffa0289e:	00 e1 10 03 	R0.L = 0x310;		/* (784)	R0=0xff900310(-7339248) */
ffa028a2:	0e 30       	R1 = R6;
ffa028a4:	ff e3 04 f1 	CALL 0xffa00aac <_printf_int>;
ffa028a8:	20 e1 1b 01 	R0 = 0x11b (X);		/*		R0=0x11b(283) */
ffa028ac:	07 09       	CC = R7 <= R0;
ffa028ae:	fd b9       	P5 = [FP -0x4];
ffa028b0:	0c 18       	IF CC JUMP 0xffa028c8 <_DHCP_rx+0x48>;
ffa028b2:	00 00       	NOP;
ffa028b4:	00 00       	NOP;
ffa028b6:	00 00       	NOP;
ffa028b8:	e8 a5       	R0 = W[P5 + 0xe] (Z);
ffa028ba:	ff e3 a3 f7 	CALL 0xffa01800 <_htons>;
ffa028be:	c0 42       	R0 = R0.L (Z);
ffa028c0:	21 e1 00 08 	R1 = 0x800 (X);		/*		R1=0x800(2048) */
ffa028c4:	08 08       	CC = R0 == R1;
ffa028c6:	08 18       	IF CC JUMP 0xffa028d6 <_DHCP_rx+0x56>;
ffa028c8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011b(-7339749) */
ffa028cc:	00 e1 f4 02 	R0.L = 0x2f4;		/* (756)	R0=0xff9002f4(-7339276) */
ffa028d0:	ff e3 2c f0 	CALL 0xffa00928 <_printf_str>;
ffa028d4:	dc 2f       	JUMP.S 0xffa0288c <_DHCP_rx+0xc>;
ffa028d6:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
ffa028da:	ff e3 93 f7 	CALL 0xffa01800 <_htons>;
ffa028de:	c0 42       	R0 = R0.L (Z);
ffa028e0:	69 e4 12 00 	R1 = W[P5 + 0x24] (Z);
ffa028e4:	01 08       	CC = R1 == R0;
ffa028e6:	d3 17       	IF !CC JUMP 0xffa0288c <_DHCP_rx+0xc> (BP);
ffa028e8:	20 e1 44 00 	R0 = 0x44 (X);		/*		R0=0x44( 68) */
ffa028ec:	ff e3 8a f7 	CALL 0xffa01800 <_htons>;
ffa028f0:	c0 42       	R0 = R0.L (Z);
ffa028f2:	69 e4 13 00 	R1 = W[P5 + 0x26] (Z);
ffa028f6:	01 08       	CC = R1 == R0;
ffa028f8:	ca 17       	IF !CC JUMP 0xffa0288c <_DHCP_rx+0xc> (BP);
ffa028fa:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c44(-4191164) */
ffa028fe:	0a e1 04 30 	P2.L = 0x3004;		/* (12292)	P2=0xffc03004(-4182012) */
ffa02902:	11 91       	R1 = [P2];
ffa02904:	28 a3       	R0 = [P5 + 0x30];
ffa02906:	08 08       	CC = R0 == R1;
ffa02908:	c2 17       	IF !CC JUMP 0xffa0288c <_DHCP_rx+0xc> (BP);
ffa0290a:	40 e1 82 63 	R0.H = 0x6382;		/* (25474)	R0=0x63820044(1669464132) */
ffa0290e:	00 e1 63 53 	R0.L = 0x5363;		/* (21347)	R0=0x63825363(1669485411) */
ffa02912:	ff e3 83 f7 	CALL 0xffa01818 <_htonl>;
ffa02916:	29 e4 46 00 	R1 = [P5 + 0x118];
ffa0291a:	01 08       	CC = R1 == R0;
ffa0291c:	b8 17       	IF !CC JUMP 0xffa0288c <_DHCP_rx+0xc> (BP);
ffa0291e:	4d 30       	R1 = P5;
ffa02920:	20 e1 1c 01 	R0 = 0x11c (X);		/*		R0=0x11c(284) */
ffa02924:	01 50       	R0 = R1 + R0;
ffa02926:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [FP -0x4] = R0 || NOP;
ffa0292a:	f0 bb 00 00 
ffa0292e:	ff e3 59 f8 	CALL 0xffa019e0 <_DHCP_parse>;
ffa02932:	e9 a3       	R1 = [P5 + 0x3c];
ffa02934:	01 0c       	CC = R1 == 0x0;
ffa02936:	12 1c       	IF CC JUMP 0xffa0295a <_DHCP_rx+0xda> (BP);
ffa02938:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff903004 */
ffa0293c:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa02940:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90011c(-7339748) */
ffa02944:	11 93       	[P2] = R1;
ffa02946:	00 e1 e4 02 	R0.L = 0x2e4;		/* (740)	R0=0xff9002e4(-7339292) */
ffa0294a:	ff e3 53 f1 	CALL 0xffa00bf0 <_printf_ip>;
ffa0294e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9002e4(-7339292) */
ffa02952:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa02956:	ff e3 e9 ef 	CALL 0xffa00928 <_printf_str>;
ffa0295a:	01 e8 00 00 	UNLINK;
ffa0295e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02960:	ad 05       	(R7:5, P5:5) = [SP++];
ffa02962:	10 00       	RTS;

ffa02964 <_DHCP_req>:
ffa02964:	fd 05       	[--SP] = (R7:7, P5:5);
ffa02966:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c44 <_rxbuf> */
ffa0296a:	0d e1 28 0c 	P5.L = 0xc28;		/* (3112)	P5=0xff900c28 <_NetDHCPserv> */
ffa0296e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02970:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa02974:	28 93       	[P5] = R0;
ffa02976:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa02978:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa0297c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0297e:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa02982:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa02986:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02988:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa0298c:	7f 30       	R7 = FP;
ffa0298e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa02992:	00 e1 24 03 	R0.L = 0x324;		/* (804)	R0=0xff900324(-7339228) */
ffa02996:	a7 67       	R7 += -0xc;		/* (-12) */
ffa02998:	ff e3 c8 ef 	CALL 0xffa00928 <_printf_str>;
ffa0299c:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa029a0:	2a 91 00 00 
ffa029a4:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa029a6:	ff e3 45 f9 	CALL 0xffa01c30 <_DHCP_tx>;
ffa029aa:	ff e3 6b ff 	CALL 0xffa02880 <_DHCP_rx>;
ffa029ae:	29 91       	R1 = [P5];
ffa029b0:	39 0c       	CC = R1 == -0x1;
ffa029b2:	43 18       	IF CC JUMP 0xffa02a38 <_DHCP_req+0xd4>;
ffa029b4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa029b8:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa029bc:	10 91       	R0 = [P2];
ffa029be:	00 0c       	CC = R0 == 0x0;
ffa029c0:	08 18       	IF CC JUMP 0xffa029d0 <_DHCP_req+0x6c>;
ffa029c2:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c60 <_NetOurIP> */
ffa029c6:	0a e1 5c 0c 	P2.L = 0xc5c;		/* (3164)	P2=0xff900c5c <_NetSubnetMask> */
ffa029ca:	10 91       	R0 = [P2];
ffa029cc:	00 0c       	CC = R0 == 0x0;
ffa029ce:	30 10       	IF !CC JUMP 0xffa02a2e <_DHCP_req+0xca>;
ffa029d0:	a8 61       	R0 = 0x35 (X);		/*		R0=0x35( 53) */
ffa029d2:	b8 e6 f4 ff 	B[FP + -0xc] = R0;
ffa029d6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa029d8:	b8 e6 f5 ff 	B[FP + -0xb] = R0;
ffa029dc:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa029de:	b8 e6 f6 ff 	B[FP + -0xa] = R0;
ffa029e2:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
ffa029e4:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
ffa029e8:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa029ea:	b8 e6 f8 ff 	B[FP + -0x8] = R0;
ffa029ee:	82 c6 c1 81 	R0 = R1 >> 0x8;
ffa029f2:	b8 e6 fa ff 	B[FP + -0x6] = R0;
ffa029f6:	82 c6 81 81 	R0 = R1 >> 0x10;
ffa029fa:	b8 e6 fb ff 	B[FP + -0x5] = R0;
ffa029fe:	82 c6 41 81 	R0 = R1 >> 0x18;
ffa02a02:	b8 e6 fc ff 	B[FP + -0x4] = R0;
ffa02a06:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02a08:	b8 e6 fd ff 	B[FP + -0x3] = R0;
ffa02a0c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90ffff(-7274497) */
ffa02a10:	00 e1 54 03 	R0.L = 0x354;		/* (852)	R0=0xff900354(-7339180) */
ffa02a14:	b9 e6 f9 ff 	B[FP + -0x7] = R1;
ffa02a18:	ff e3 88 ef 	CALL 0xffa00928 <_printf_str>;
ffa02a1c:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
ffa02a1e:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P5] || NOP;
ffa02a22:	2a 91 00 00 
ffa02a26:	ff e3 05 f9 	CALL 0xffa01c30 <_DHCP_tx>;
ffa02a2a:	ff e3 2b ff 	CALL 0xffa02880 <_DHCP_rx>;
ffa02a2e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a30:	01 e8 00 00 	UNLINK;
ffa02a34:	bd 05       	(R7:7, P5:5) = [SP++];
ffa02a36:	10 00       	RTS;
ffa02a38:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa02a3c:	00 e1 38 03 	R0.L = 0x338;		/* (824)	R0=0xff900338(-7339208) */
ffa02a40:	ff e3 74 ef 	CALL 0xffa00928 <_printf_str>;
ffa02a44:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02a46:	f5 2f       	JUMP.S 0xffa02a30 <_DHCP_req+0xcc>;

ffa02a48 <_bfin_EMAC_recv>:
ffa02a48:	e3 05       	[--SP] = (R7:4, P5:3);
ffa02a4a:	28 32       	P5 = R0;
ffa02a4c:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c40 <_rxIdx> */
ffa02a50:	0c e1 40 0c 	P4.L = 0xc40;		/* (3136)	P4=0xff900c40 <_rxIdx> */
ffa02a54:	4b e1 c0 ff 	P3.H = 0xffc0;		/* (-64)	P3=0xffc00c30(-4191184) */
ffa02a58:	44 e1 c0 ff 	R4.H = 0xffc0;		/* (-64)	R4=0xffc00000(-4194304) */
ffa02a5c:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02a60:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa02a62:	6c 30       	R5 = P4;
ffa02a64:	86 60       	R6 = 0x10 (X);		/*		R6=0x10( 16) */
ffa02a66:	0b e1 68 0c 	P3.L = 0xc68;		/* (3176)	P3=0xffc00c68(-4191128) */
ffa02a6a:	04 e1 04 07 	R4.L = 0x704;		/* (1796)	R4=0xffc00704(-4192508) */
ffa02a6e:	0f 20       	JUMP.S 0xffa02a8c <_bfin_EMAC_recv+0x44>;
ffa02a70:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02a72:	20 97       	W[P4] = R0;
ffa02a74:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R0 = [P5] || NOP;
ffa02a78:	28 91 00 00 
ffa02a7c:	00 e3 36 01 	CALL 0xffa02ce8 <_ARP_rx>;
ffa02a80:	00 0c       	CC = R0 == 0x0;
ffa02a82:	43 18       	IF CC JUMP 0xffa02b08 <_bfin_EMAC_recv+0xc0>;
ffa02a84:	14 32       	P2 = R4;
ffa02a86:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02a88:	16 97       	W[P2] = R6;
ffa02a8a:	01 20       	JUMP.S 0xffa02a8c <_bfin_EMAC_recv+0x44>;
ffa02a8c:	0d 32       	P1 = R5;
ffa02a8e:	08 95       	R0 = W[P1] (Z);
ffa02a90:	10 32       	P2 = R0;
ffa02a92:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c40 <_rxIdx> */
ffa02a96:	09 e1 44 0c 	P1.L = 0xc44;		/* (3140)	P1=0xff900c44 <_rxbuf> */
ffa02a9a:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02a9c:	51 91       	P1 = [P2];
ffa02a9e:	88 a2       	R0 = [P1 + 0x28];
ffa02aa0:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa02aa2:	48 18       	IF CC JUMP 0xffa02b32 <_bfin_EMAC_recv+0xea>;
ffa02aa4:	00 00       	NOP;
ffa02aa6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02aa8:	a0 4f       	R0 <<= 0x14;
ffa02aaa:	89 a2       	R1 = [P1 + 0x28];
ffa02aac:	81 54       	R2 = R1 & R0;
ffa02aae:	02 0c       	CC = R2 == 0x0;
ffa02ab0:	47 10       	IF !CC JUMP 0xffa02b3e <_bfin_EMAC_recv+0xf6>;
ffa02ab2:	00 00       	NOP;
ffa02ab4:	00 00       	NOP;
ffa02ab6:	00 00       	NOP;
ffa02ab8:	88 a2       	R0 = [P1 + 0x28];
ffa02aba:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa02abc:	4c 18       	IF CC JUMP 0xffa02b54 <_bfin_EMAC_recv+0x10c>;
ffa02abe:	00 00       	NOP;
ffa02ac0:	00 00       	NOP;
ffa02ac2:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
ffa02ac6:	89 a2       	R1 = [P1 + 0x28];
ffa02ac8:	c1 55       	R7 = R1 & R0;
ffa02aca:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02acc:	07 09       	CC = R7 <= R0;
ffa02ace:	4e 18       	IF CC JUMP 0xffa02b6a <_bfin_EMAC_recv+0x122>;
ffa02ad0:	4a e1 c0 ff 	P2.H = 0xffc0;		/* (-64)	P2=0xffc00c5c(-4191140) */
ffa02ad4:	0a e1 08 07 	P2.L = 0x708;		/* (1800)	P2=0xffc00708(-4192504) */
ffa02ad8:	16 97       	W[P2] = R6;
ffa02ada:	88 a1       	R0 = [P1 + 0x18];
ffa02adc:	59 95       	R1 = W[P3] (X);
ffa02ade:	28 93       	[P5] = R0;
ffa02ae0:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa02ae2:	08 56       	R0 = R0 | R1;
ffa02ae4:	18 97       	W[P3] = R0;
ffa02ae6:	61 95       	R1 = W[P4] (X);
ffa02ae8:	c8 42       	R0 = R1.L (Z);
ffa02aea:	10 0d       	CC = R0 <= 0x2;
ffa02aec:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa02aee:	8a b2       	[P1 + 0x28] = R2;
ffa02af0:	c0 17       	IF !CC JUMP 0xffa02a70 <_bfin_EMAC_recv+0x28> (BP);
ffa02af2:	01 30       	R0 = R1;
ffa02af4:	08 64       	R0 += 0x1;		/* (  1) */
ffa02af6:	20 97       	W[P4] = R0;
ffa02af8:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R0 = [P5] || NOP;
ffa02afc:	28 91 00 00 
ffa02b00:	00 e3 f4 00 	CALL 0xffa02ce8 <_ARP_rx>;
ffa02b04:	00 0c       	CC = R0 == 0x0;
ffa02b06:	bf 17       	IF !CC JUMP 0xffa02a84 <_bfin_EMAC_recv+0x3c> (BP);
ffa02b08:	28 91       	R0 = [P5];
ffa02b0a:	0f 30       	R1 = R7;
ffa02b0c:	ff e3 42 fb 	CALL 0xffa02190 <_icmp_rx>;
ffa02b10:	00 0c       	CC = R0 == 0x0;
ffa02b12:	b9 17       	IF !CC JUMP 0xffa02a84 <_bfin_EMAC_recv+0x3c> (BP);
ffa02b14:	28 91       	R0 = [P5];
ffa02b16:	0f 30       	R1 = R7;
ffa02b18:	00 e3 46 04 	CALL 0xffa033a4 <_tcp_rx>;
ffa02b1c:	00 0c       	CC = R0 == 0x0;
ffa02b1e:	b3 17       	IF !CC JUMP 0xffa02a84 <_bfin_EMAC_recv+0x3c> (BP);
ffa02b20:	0c 32       	P1 = R4;
ffa02b22:	07 0d       	CC = R7 <= 0x0;
ffa02b24:	0e 97       	W[P1] = R6;
ffa02b26:	b3 1f       	IF CC JUMP 0xffa02a8c <_bfin_EMAC_recv+0x44> (BP);
ffa02b28:	01 e8 00 00 	UNLINK;
ffa02b2c:	07 30       	R0 = R7;
ffa02b2e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b30:	10 00       	RTS;
ffa02b32:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
ffa02b34:	01 e8 00 00 	UNLINK;
ffa02b38:	07 30       	R0 = R7;
ffa02b3a:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b3c:	10 00       	RTS;
ffa02b3e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900003(-7340029) */
ffa02b42:	00 e1 68 03 	R0.L = 0x368;		/* (872)	R0=0xff900368(-7339160) */
ffa02b46:	ff e3 f1 ee 	CALL 0xffa00928 <_printf_str>;
ffa02b4a:	01 e8 00 00 	UNLINK;
ffa02b4e:	07 30       	R0 = R7;
ffa02b50:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b52:	10 00       	RTS;
ffa02b54:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900368(-7339160) */
ffa02b58:	00 e1 84 03 	R0.L = 0x384;		/* (900)	R0=0xff900384(-7339132) */
ffa02b5c:	ff e3 e6 ee 	CALL 0xffa00928 <_printf_str>;
ffa02b60:	01 e8 00 00 	UNLINK;
ffa02b64:	07 30       	R0 = R7;
ffa02b66:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b68:	10 00       	RTS;
ffa02b6a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900384(-7339132) */
ffa02b6e:	00 e1 98 03 	R0.L = 0x398;		/* (920)	R0=0xff900398(-7339112) */
ffa02b72:	ff e3 db ee 	CALL 0xffa00928 <_printf_str>;
ffa02b76:	01 e8 00 00 	UNLINK;
ffa02b7a:	07 30       	R0 = R7;
ffa02b7c:	a3 05       	(R7:4, P5:3) = [SP++];
ffa02b7e:	10 00       	RTS;

ffa02b80 <_ARP_init>:
ffa02b80:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900708 */
ffa02b84:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02b88:	0a e1 6c 0c 	P2.L = 0xc6c;		/* (3180)	P2=0xff900c6c <_NetArpLut> */
ffa02b8c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02b8e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02b90:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02b92:	51 68       	P1 = 0xa (X);		/*		P1=0xa( 10) */
ffa02b94:	b2 e0 12 10 	LSETUP(0xffa02b98 <_ARP_init+0x18>, 0xffa02bb8 <_ARP_init+0x38>) LC1 = P1;
ffa02b98:	11 93       	[P2] = R1;
ffa02b9a:	90 e6 04 00 	B[P2 + 0x4] = R0;
ffa02b9e:	90 e6 05 00 	B[P2 + 0x5] = R0;
ffa02ba2:	90 e6 06 00 	B[P2 + 0x6] = R0;
ffa02ba6:	90 e6 07 00 	B[P2 + 0x7] = R0;
ffa02baa:	90 e6 08 00 	B[P2 + 0x8] = R0;
ffa02bae:	90 e6 09 00 	B[P2 + 0x9] = R0;
ffa02bb2:	52 b5       	W[P2 + 0xa] = R2;
ffa02bb4:	d1 b0       	[P2 + 0xc] = R1;
ffa02bb6:	11 b1       	[P2 + 0x10] = R1;
ffa02bb8:	a2 6c       	P2 += 0x14;		/* ( 20) */
ffa02bba:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c6c <_NetArpLut> */
ffa02bbe:	20 e1 64 00 	R0 = 0x64 (X);		/*		R0=0x64(100) */
ffa02bc2:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xff900c68 <_NetArpLut_age> */
ffa02bc6:	10 97       	W[P2] = R0;
ffa02bc8:	01 e8 00 00 	UNLINK;
ffa02bcc:	10 00       	RTS;
	...

ffa02bd0 <_ARP_lut_find>:
ffa02bd0:	48 e1 90 ff 	P0.H = 0xff90;		/* (-112)	P0=0xff900c2c <_txIdx> */
ffa02bd4:	08 e1 6c 0c 	P0.L = 0xc6c;		/* (3180)	P0=0xff900c6c <_NetArpLut> */
ffa02bd8:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02bdc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02bde:	48 32       	P1 = P0;
ffa02be0:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02be2:	b2 e0 06 20 	LSETUP(0xffa02be6 <_ARP_lut_find+0x16>, 0xffa02bee <_ARP_lut_find+0x1e>) LC1 = P2;
ffa02be6:	08 91       	R0 = [P1];
ffa02be8:	00 0c       	CC = R0 == 0x0;
ffa02bea:	14 18       	IF CC JUMP 0xffa02c12 <_ARP_lut_find+0x42>;
ffa02bec:	0a 64       	R2 += 0x1;		/* (  1) */
ffa02bee:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02bf0:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff90000a */
ffa02bf4:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
ffa02bf6:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa02bf8:	43 a5       	R3 = W[P0 + 0xa] (Z);
ffa02bfa:	09 e1 8a 0c 	P1.L = 0xc8a;		/* (3210)	P1=0xff900c8a */
ffa02bfe:	4a 68       	P2 = 0x9 (X);		/*		P2=0x9(  9) */
ffa02c00:	b2 e0 08 20 	LSETUP(0xffa02c04 <_ARP_lut_find+0x34>, 0xffa02c10 <_ARP_lut_find+0x40>) LC1 = P2;
ffa02c04:	08 95       	R0 = W[P1] (Z);
ffa02c06:	03 09       	CC = R3 <= R0;
ffa02c08:	03 18       	IF CC JUMP 0xffa02c0e <_ARP_lut_find+0x3e>;
ffa02c0a:	11 30       	R2 = R1;
ffa02c0c:	18 30       	R3 = R0;
ffa02c0e:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02c10:	09 64       	R1 += 0x1;		/* (  1) */
ffa02c12:	02 30       	R0 = R2;
ffa02c14:	01 e8 00 00 	UNLINK;
ffa02c18:	10 00       	RTS;
	...

ffa02c1c <_ARP_lut_add>:
ffa02c1c:	f5 05       	[--SP] = (R7:6, P5:5);
ffa02c1e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c28 <_NetDHCPserv> */
ffa02c22:	0d e1 6c 0c 	P5.L = 0xc6c;		/* (3180)	P5=0xff900c6c <_NetArpLut> */
ffa02c26:	31 30       	R6 = R1;
ffa02c28:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02c2c:	38 30       	R7 = R0;
ffa02c2e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02c30:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa02c32:	4d 32       	P1 = P5;
ffa02c34:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02c36:	00 00       	NOP;
ffa02c38:	08 91       	R0 = [P1];
ffa02c3a:	07 08       	CC = R7 == R0;
ffa02c3c:	11 07       	IF CC R2 = R1;
ffa02c3e:	09 64       	R1 += 0x1;		/* (  1) */
ffa02c40:	fa 6f       	P2 += -0x1;		/* ( -1) */
ffa02c42:	42 0c       	CC = P2 == 0x0;
ffa02c44:	23 10       	IF !CC JUMP 0xffa02c8a <_ARP_lut_add+0x6e>;
ffa02c46:	82 0c       	CC = R2 < 0x0;
ffa02c48:	25 18       	IF CC JUMP 0xffa02c92 <_ARP_lut_add+0x76>;
ffa02c4a:	82 c6 12 82 	R1 = R2 << 0x2;
ffa02c4e:	0a 32       	P1 = R2;
ffa02c50:	11 32       	P2 = R1;
ffa02c52:	06 32       	P0 = R6;
ffa02c54:	ca 45       	P2 = (P2 + P1) << 0x2;
ffa02c56:	6a 5a       	P1 = P2 + P5;
ffa02c58:	22 6c       	P2 += 0x4;		/* (  4) */
ffa02c5a:	0f 93       	[P1] = R7;
ffa02c5c:	aa 5a       	P2 = P2 + P5;
ffa02c5e:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02c60:	b2 e0 03 10 	LSETUP(0xffa02c64 <_ARP_lut_add+0x48>, 0xffa02c66 <_ARP_lut_add+0x4a>) LC1 = P1;
ffa02c64:	40 98       	R0 = B[P0++] (X);
ffa02c66:	10 9a       	B[P2++] = R0;
ffa02c68:	51 41       	R1 = (R1 + R2) << 0x2;
ffa02c6a:	09 32       	P1 = R1;
ffa02c6c:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90000a */
ffa02c70:	0a e1 68 0c 	P2.L = 0xc68;		/* (3176)	P2=0xff900c68 <_NetArpLut_age> */
ffa02c74:	50 95       	R0 = W[P2] (X);
ffa02c76:	08 64       	R0 += 0x1;		/* (  1) */
ffa02c78:	10 97       	W[P2] = R0;
ffa02c7a:	a9 5a       	P2 = P1 + P5;
ffa02c7c:	50 b5       	W[P2 + 0xa] = R0;
ffa02c7e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02c80:	10 b1       	[P2 + 0x10] = R0;
ffa02c82:	01 e8 00 00 	UNLINK;
ffa02c86:	b5 05       	(R7:6, P5:5) = [SP++];
ffa02c88:	10 00       	RTS;
ffa02c8a:	82 0c       	CC = R2 < 0x0;
ffa02c8c:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02c8e:	d4 1f       	IF CC JUMP 0xffa02c36 <_ARP_lut_add+0x1a> (BP);
ffa02c90:	dd 2f       	JUMP.S 0xffa02c4a <_ARP_lut_add+0x2e>;
ffa02c92:	ff e3 9f ff 	CALL 0xffa02bd0 <_ARP_lut_find>;
ffa02c96:	10 30       	R2 = R0;
ffa02c98:	d9 2f       	JUMP.S 0xffa02c4a <_ARP_lut_add+0x2e>;
	...

ffa02c9c <_ARP_lu>:
ffa02c9c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02ca0:	c4 04       	[--SP] = (P5:4);
ffa02ca2:	09 e1 6c 0c 	P1.L = 0xc6c;		/* (3180)	P1=0xff900c6c <_NetArpLut> */
ffa02ca6:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa02caa:	10 30       	R2 = R0;
ffa02cac:	29 32       	P5 = R1;
ffa02cae:	61 32       	P4 = P1;
ffa02cb0:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
ffa02cb2:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa02cb4:	b2 e0 06 20 	LSETUP(0xffa02cb8 <_ARP_lu+0x1c>, 0xffa02cc0 <_ARP_lu+0x24>) LC1 = P2;
ffa02cb8:	08 91       	R0 = [P1];
ffa02cba:	10 08       	CC = R0 == R2;
ffa02cbc:	08 18       	IF CC JUMP 0xffa02ccc <_ARP_lu+0x30>;
ffa02cbe:	a0 6c       	P0 += 0x14;		/* ( 20) */
ffa02cc0:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa02cc2:	01 e8 00 00 	UNLINK;
ffa02cc6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02cc8:	84 04       	(P5:4) = [SP++];
ffa02cca:	10 00       	RTS;
ffa02ccc:	08 a1       	R0 = [P1 + 0x10];
ffa02cce:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa02cd0:	f7 1f       	IF CC JUMP 0xffa02cbe <_ARP_lu+0x22> (BP);
ffa02cd2:	60 5a       	P1 = P0 + P4;
ffa02cd4:	32 68       	P2 = 0x6 (X);		/*		P2=0x6(  6) */
ffa02cd6:	b2 e0 03 20 	LSETUP(0xffa02cda <_ARP_lu+0x3e>, 0xffa02cdc <_ARP_lu+0x40>) LC1 = P2;
ffa02cda:	48 98       	R0 = B[P1++] (X);
ffa02cdc:	28 9a       	B[P5++] = R0;
ffa02cde:	01 e8 00 00 	UNLINK;
ffa02ce2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02ce4:	84 04       	(P5:4) = [SP++];
ffa02ce6:	10 00       	RTS;

ffa02ce8 <_ARP_rx>:
ffa02ce8:	fb 05       	[--SP] = (R7:7, P5:3);
ffa02cea:	20 32       	P4 = R0;
ffa02cec:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa02cf0:	39 30       	R7 = R1;
ffa02cf2:	e0 a5       	R0 = W[P4 + 0xe] (Z);
ffa02cf4:	ff e3 86 f5 	CALL 0xffa01800 <_htons>;
ffa02cf8:	c0 42       	R0 = R0.L (Z);
ffa02cfa:	21 e1 06 08 	R1 = 0x806 (X);		/*		R1=0x806(2054) */
ffa02cfe:	08 08       	CC = R0 == R1;
ffa02d00:	06 18       	IF CC JUMP 0xffa02d0c <_ARP_rx+0x24>;
ffa02d02:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa02d04:	01 e8 00 00 	UNLINK;
ffa02d08:	bb 05       	(R7:7, P5:3) = [SP++];
ffa02d0a:	10 00       	RTS;
ffa02d0c:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
ffa02d0e:	07 0a       	CC = R7 <= R0 (IU);
ffa02d10:	f9 1f       	IF CC JUMP 0xffa02d02 <_ARP_rx+0x1a> (BP);
ffa02d12:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d14:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02d16:	ff e3 75 f5 	CALL 0xffa01800 <_htons>;
ffa02d1a:	c0 42       	R0 = R0.L (Z);
ffa02d1c:	07 08       	CC = R7 == R0;
ffa02d1e:	f2 17       	IF !CC JUMP 0xffa02d02 <_ARP_rx+0x1a> (BP);
ffa02d20:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02d24:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02d26:	ff e3 6d f5 	CALL 0xffa01800 <_htons>;
ffa02d2a:	c0 42       	R0 = R0.L (Z);
ffa02d2c:	07 08       	CC = R7 == R0;
ffa02d2e:	ea 17       	IF !CC JUMP 0xffa02d02 <_ARP_rx+0x1a> (BP);
ffa02d30:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02d32:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02d36:	08 08       	CC = R0 == R1;
ffa02d38:	e5 17       	IF !CC JUMP 0xffa02d02 <_ARP_rx+0x1a> (BP);
ffa02d3a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02d3c:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02d3e:	ff e3 61 f5 	CALL 0xffa01800 <_htons>;
ffa02d42:	c0 42       	R0 = R0.L (Z);
ffa02d44:	07 08       	CC = R7 == R0;
ffa02d46:	0c 14       	IF !CC JUMP 0xffa02d5e <_ARP_rx+0x76> (BP);
ffa02d48:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900006 */
ffa02d4c:	0a e1 54 0c 	P2.L = 0xc54;		/* (3156)	P2=0xff900c54 <_NetOurMAC> */
ffa02d50:	a1 e4 22 00 	R1 = B[P4 + 0x22] (Z);
ffa02d54:	10 99       	R0 = B[P2] (Z);
ffa02d56:	01 08       	CC = R1 == R0;
ffa02d58:	ae 18       	IF CC JUMP 0xffa02eb4 <_ARP_rx+0x1cc>;
ffa02d5a:	00 00       	NOP;
ffa02d5c:	00 00       	NOP;
ffa02d5e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d60:	27 a6       	R7 = W[P4 + 0x10] (Z);
ffa02d62:	ff e3 4f f5 	CALL 0xffa01800 <_htons>;
ffa02d66:	c0 42       	R0 = R0.L (Z);
ffa02d68:	07 08       	CC = R7 == R0;
ffa02d6a:	cc 17       	IF !CC JUMP 0xffa02d02 <_ARP_rx+0x1a> (BP);
ffa02d6c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02d70:	67 a6       	R7 = W[P4 + 0x12] (Z);
ffa02d72:	ff e3 47 f5 	CALL 0xffa01800 <_htons>;
ffa02d76:	c0 42       	R0 = R0.L (Z);
ffa02d78:	07 08       	CC = R7 == R0;
ffa02d7a:	c4 17       	IF !CC JUMP 0xffa02d02 <_ARP_rx+0x1a> (BP);
ffa02d7c:	a0 a6       	R0 = W[P4 + 0x14] (Z);
ffa02d7e:	21 e1 06 04 	R1 = 0x406 (X);		/*		R1=0x406(1030) */
ffa02d82:	08 08       	CC = R0 == R1;
ffa02d84:	bf 17       	IF !CC JUMP 0xffa02d02 <_ARP_rx+0x1a> (BP);
ffa02d86:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02d88:	e7 a6       	R7 = W[P4 + 0x16] (Z);
ffa02d8a:	ff e3 3b f5 	CALL 0xffa01800 <_htons>;
ffa02d8e:	c0 42       	R0 = R0.L (Z);
ffa02d90:	07 08       	CC = R7 == R0;
ffa02d92:	b8 17       	IF !CC JUMP 0xffa02d02 <_ARP_rx+0x1a> (BP);
ffa02d94:	47 e1 90 ff 	R7.H = 0xff90;		/* (-112)	R7=0xff90ffff(-7274497) */
ffa02d98:	07 e1 60 0c 	R7.L = 0xc60;		/* (3168)	R7=0xff900c60 <_NetOurIP>(-7336864) */
ffa02d9c:	17 32       	P2 = R7;
ffa02d9e:	a1 a2       	R1 = [P4 + 0x28];
ffa02da0:	10 91       	R0 = [P2];
ffa02da2:	01 08       	CC = R1 == R0;
ffa02da4:	af 17       	IF !CC JUMP 0xffa02d02 <_ARP_rx+0x1a> (BP);
ffa02da6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c54 <_NetOurMAC> */
ffa02daa:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa02dae:	10 95       	R0 = W[P2] (Z);
ffa02db0:	10 32       	P2 = R0;
ffa02db2:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c6c <_NetArpLut> */
ffa02db6:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa02dba:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
ffa02dbc:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c6c <_NetArpLut> */
ffa02dc0:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02dc2:	52 91       	P2 = [P2];
ffa02dc4:	0d e1 54 0c 	P5.L = 0xc54;		/* (3156)	P5=0xff900c54 <_NetOurMAC> */
ffa02dc8:	93 ad       	P3 = [P2 + 0x18];
ffa02dca:	18 97       	W[P3] = R0;
ffa02dcc:	a0 e5 08 00 	R0 = B[P4 + 0x8] (X);
ffa02dd0:	98 e6 02 00 	B[P3 + 0x2] = R0;
ffa02dd4:	a0 e5 09 00 	R0 = B[P4 + 0x9] (X);
ffa02dd8:	98 e6 03 00 	B[P3 + 0x3] = R0;
ffa02ddc:	a0 e5 0a 00 	R0 = B[P4 + 0xa] (X);
ffa02de0:	98 e6 04 00 	B[P3 + 0x4] = R0;
ffa02de4:	a0 e5 0b 00 	R0 = B[P4 + 0xb] (X);
ffa02de8:	98 e6 05 00 	B[P3 + 0x5] = R0;
ffa02dec:	a0 e5 0c 00 	R0 = B[P4 + 0xc] (X);
ffa02df0:	98 e6 06 00 	B[P3 + 0x6] = R0;
ffa02df4:	a0 e5 0d 00 	R0 = B[P4 + 0xd] (X);
ffa02df8:	98 e6 07 00 	B[P3 + 0x7] = R0;
ffa02dfc:	68 99       	R0 = B[P5] (X);
ffa02dfe:	98 e6 08 00 	B[P3 + 0x8] = R0;
ffa02e02:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02e06:	98 e6 09 00 	B[P3 + 0x9] = R0;
ffa02e0a:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02e0e:	98 e6 0a 00 	B[P3 + 0xa] = R0;
ffa02e12:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02e16:	98 e6 0b 00 	B[P3 + 0xb] = R0;
ffa02e1a:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02e1e:	98 e6 0c 00 	B[P3 + 0xc] = R0;
ffa02e22:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02e26:	98 e6 0d 00 	B[P3 + 0xd] = R0;
ffa02e2a:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02e2e:	ff e3 e9 f4 	CALL 0xffa01800 <_htons>;
ffa02e32:	d8 b5       	W[P3 + 0xe] = R0;
ffa02e34:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02e36:	ff e3 e5 f4 	CALL 0xffa01800 <_htons>;
ffa02e3a:	18 b6       	W[P3 + 0x10] = R0;
ffa02e3c:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02e40:	ff e3 e0 f4 	CALL 0xffa01800 <_htons>;
ffa02e44:	58 b6       	W[P3 + 0x12] = R0;
ffa02e46:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02e48:	98 e6 14 00 	B[P3 + 0x14] = R0;
ffa02e4c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02e4e:	98 e6 15 00 	B[P3 + 0x15] = R0;
ffa02e52:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa02e54:	ff e3 d6 f4 	CALL 0xffa01800 <_htons>;
ffa02e58:	44 32       	P0 = P4;
ffa02e5a:	d8 b6       	W[P3 + 0x16] = R0;
ffa02e5c:	53 32       	P2 = P3;
ffa02e5e:	c0 6c       	P0 += 0x18;		/* ( 24) */
ffa02e60:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02e62:	b2 e0 08 10 	LSETUP(0xffa02e66 <_ARP_rx+0x17e>, 0xffa02e72 <_ARP_rx+0x18a>) LC1 = P1;
ffa02e66:	68 98       	R0 = B[P5++] (X);
ffa02e68:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa02e6c:	40 98       	R0 = B[P0++] (X);
ffa02e6e:	90 e6 22 00 	B[P2 + 0x22] = R0;
ffa02e72:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02e74:	17 32       	P2 = R7;
ffa02e76:	50 99       	R0 = B[P2] (X);
ffa02e78:	98 e6 1e 00 	B[P3 + 0x1e] = R0;
ffa02e7c:	10 91       	R0 = [P2];
ffa02e7e:	40 4e       	R0 >>= 0x8;
ffa02e80:	98 e6 1f 00 	B[P3 + 0x1f] = R0;
ffa02e84:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02e88:	98 e6 20 00 	B[P3 + 0x20] = R0;
ffa02e8c:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa02e90:	98 e6 21 00 	B[P3 + 0x21] = R0;
ffa02e94:	a3 e4 21 00 	R3 = B[P4 + 0x21] (Z);
ffa02e98:	a1 e4 1f 00 	R1 = B[P4 + 0x1f] (Z);
ffa02e9c:	a2 e4 20 00 	R2 = B[P4 + 0x20] (Z);
ffa02ea0:	a0 e4 1e 00 	R0 = B[P4 + 0x1e] (Z);
ffa02ea4:	f3 b0       	[SP + 0xc] = R3;
ffa02ea6:	ff e3 03 f4 	CALL 0xffa016ac <_FormatIPAddress>;
ffa02eaa:	98 b2       	[P3 + 0x28] = R0;
ffa02eac:	ff e3 54 f6 	CALL 0xffa01b54 <_bfin_EMAC_send_nocopy>;
ffa02eb0:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02eb2:	29 2f       	JUMP.S 0xffa02d04 <_ARP_rx+0x1c>;
ffa02eb4:	a1 e4 23 00 	R1 = B[P4 + 0x23] (Z);
ffa02eb8:	90 e4 01 00 	R0 = B[P2 + 0x1] (Z);
ffa02ebc:	01 08       	CC = R1 == R0;
ffa02ebe:	50 17       	IF !CC JUMP 0xffa02d5e <_ARP_rx+0x76> (BP);
ffa02ec0:	a1 e4 24 00 	R1 = B[P4 + 0x24] (Z);
ffa02ec4:	90 e4 02 00 	R0 = B[P2 + 0x2] (Z);
ffa02ec8:	01 08       	CC = R1 == R0;
ffa02eca:	4a 17       	IF !CC JUMP 0xffa02d5e <_ARP_rx+0x76> (BP);
ffa02ecc:	a1 e4 25 00 	R1 = B[P4 + 0x25] (Z);
ffa02ed0:	90 e4 03 00 	R0 = B[P2 + 0x3] (Z);
ffa02ed4:	01 08       	CC = R1 == R0;
ffa02ed6:	44 17       	IF !CC JUMP 0xffa02d5e <_ARP_rx+0x76> (BP);
ffa02ed8:	a1 e4 26 00 	R1 = B[P4 + 0x26] (Z);
ffa02edc:	90 e4 04 00 	R0 = B[P2 + 0x4] (Z);
ffa02ee0:	01 08       	CC = R1 == R0;
ffa02ee2:	3e 17       	IF !CC JUMP 0xffa02d5e <_ARP_rx+0x76> (BP);
ffa02ee4:	a1 e4 27 00 	R1 = B[P4 + 0x27] (Z);
ffa02ee8:	90 e4 05 00 	R0 = B[P2 + 0x5] (Z);
ffa02eec:	01 08       	CC = R1 == R0;
ffa02eee:	38 17       	IF !CC JUMP 0xffa02d5e <_ARP_rx+0x76> (BP);
ffa02ef0:	f4 6c       	P4 += 0x1e;		/* ( 30) */
ffa02ef2:	44 30       	R0 = P4;
ffa02ef4:	ff e3 a6 f4 	CALL 0xffa01840 <_pack4chars>;
ffa02ef8:	38 30       	R7 = R0;
ffa02efa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa02efe:	0f 30       	R1 = R7;
ffa02f00:	00 e1 a4 04 	R0.L = 0x4a4;		/* (1188)	R0=0xff9004a4(-7338844) */
ffa02f04:	ff e3 76 ee 	CALL 0xffa00bf0 <_printf_ip>;
ffa02f08:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004a4(-7338844) */
ffa02f0c:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa02f10:	d4 6f       	P4 += -0x6;		/* ( -6) */
ffa02f12:	ff e3 0b ed 	CALL 0xffa00928 <_printf_str>;
ffa02f16:	07 30       	R0 = R7;
ffa02f18:	4c 30       	R1 = P4;
ffa02f1a:	ff e3 81 fe 	CALL 0xffa02c1c <_ARP_lut_add>;
ffa02f1e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02f20:	f2 2e       	JUMP.S 0xffa02d04 <_ARP_rx+0x1c>;
	...

ffa02f24 <_ARP_tx>:
ffa02f24:	fc 05       	[--SP] = (R7:7, P5:4);
ffa02f26:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa02f2a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa02f2e:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa02f32:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa02f36:	10 95 00 00 
ffa02f3a:	10 32       	P2 = R0;
ffa02f3c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa02f40:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa02f44:	60 61       	R0 = 0x2c (X);		/*		R0=0x2c( 44) */
ffa02f46:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c54 <_NetOurMAC> */
ffa02f4a:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa02f4c:	52 91       	P2 = [P2];
ffa02f4e:	0d e1 54 0c 	P5.L = 0xc54;		/* (3156)	P5=0xff900c54 <_NetOurMAC> */
ffa02f52:	94 ad       	P4 = [P2 + 0x18];
ffa02f54:	20 97       	W[P4] = R0;
ffa02f56:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa02f58:	a0 e6 02 00 	B[P4 + 0x2] = R0;
ffa02f5c:	a0 e6 03 00 	B[P4 + 0x3] = R0;
ffa02f60:	a0 e6 04 00 	B[P4 + 0x4] = R0;
ffa02f64:	a0 e6 05 00 	B[P4 + 0x5] = R0;
ffa02f68:	a0 e6 06 00 	B[P4 + 0x6] = R0;
ffa02f6c:	a0 e6 07 00 	B[P4 + 0x7] = R0;
ffa02f70:	68 99       	R0 = B[P5] (X);
ffa02f72:	a0 e6 08 00 	B[P4 + 0x8] = R0;
ffa02f76:	a8 e5 01 00 	R0 = B[P5 + 0x1] (X);
ffa02f7a:	a0 e6 09 00 	B[P4 + 0x9] = R0;
ffa02f7e:	a8 e5 02 00 	R0 = B[P5 + 0x2] (X);
ffa02f82:	a0 e6 0a 00 	B[P4 + 0xa] = R0;
ffa02f86:	a8 e5 03 00 	R0 = B[P5 + 0x3] (X);
ffa02f8a:	a0 e6 0b 00 	B[P4 + 0xb] = R0;
ffa02f8e:	a8 e5 04 00 	R0 = B[P5 + 0x4] (X);
ffa02f92:	a0 e6 0c 00 	B[P4 + 0xc] = R0;
ffa02f96:	a8 e5 05 00 	R0 = B[P5 + 0x5] (X);
ffa02f9a:	a0 e6 0d 00 	B[P4 + 0xd] = R0;
ffa02f9e:	20 e1 06 08 	R0 = 0x806 (X);		/*		R0=0x806(2054) */
ffa02fa2:	ff e3 2f f4 	CALL 0xffa01800 <_htons>;
ffa02fa6:	e0 b5       	W[P4 + 0xe] = R0;
ffa02fa8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02faa:	ff e3 2b f4 	CALL 0xffa01800 <_htons>;
ffa02fae:	20 b6       	W[P4 + 0x10] = R0;
ffa02fb0:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa02fb4:	ff e3 26 f4 	CALL 0xffa01800 <_htons>;
ffa02fb8:	60 b6       	W[P4 + 0x12] = R0;
ffa02fba:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa02fbc:	a0 e6 14 00 	B[P4 + 0x14] = R0;
ffa02fc0:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa02fc2:	a0 e6 15 00 	B[P4 + 0x15] = R0;
ffa02fc6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa02fc8:	ff e3 1c f4 	CALL 0xffa01800 <_htons>;
ffa02fcc:	e0 b6       	W[P4 + 0x16] = R0;
ffa02fce:	54 32       	P2 = P4;
ffa02fd0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa02fd2:	31 68       	P1 = 0x6 (X);		/*		P1=0x6(  6) */
ffa02fd4:	b2 e0 07 10 	LSETUP(0xffa02fd8 <_ARP_tx+0xb4>, 0xffa02fe2 <_ARP_tx+0xbe>) LC1 = P1;
ffa02fd8:	68 98       	R0 = B[P5++] (X);
ffa02fda:	90 e6 18 00 	B[P2 + 0x18] = R0;
ffa02fde:	91 e6 22 00 	B[P2 + 0x22] = R1;
ffa02fe2:	0a 6c       	P2 += 0x1;		/* (  1) */
ffa02fe4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa02fe8:	0a e1 60 0c 	P2.L = 0xc60;		/* (3168)	P2=0xff900c60 <_NetOurIP> */
ffa02fec:	50 99       	R0 = B[P2] (X);
ffa02fee:	a0 e6 1e 00 	B[P4 + 0x1e] = R0;
ffa02ff2:	10 91       	R0 = [P2];
ffa02ff4:	40 4e       	R0 >>= 0x8;
ffa02ff6:	a0 e6 1f 00 	B[P4 + 0x1f] = R0;
ffa02ffa:	90 e5 02 00 	R0 = B[P2 + 0x2] (X);
ffa02ffe:	a0 e6 20 00 	B[P4 + 0x20] = R0;
ffa03002:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
ffa03006:	a0 e6 21 00 	B[P4 + 0x21] = R0;
ffa0300a:	a7 b2       	[P4 + 0x28] = R7;
ffa0300c:	01 e8 00 00 	UNLINK;
ffa03010:	bc 05       	(R7:7, P5:4) = [SP++];
ffa03012:	ff e2 a1 f5 	JUMP.L 0xffa01b54 <_bfin_EMAC_send_nocopy>;
	...

ffa03018 <_ARP_req>:
ffa03018:	ec 05       	[--SP] = (R7:5, P5:4);
ffa0301a:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0301e:	38 30       	R7 = R0;
ffa03020:	ff e3 3e fe 	CALL 0xffa02c9c <_ARP_lu>;
ffa03024:	00 0c       	CC = R0 == 0x0;
ffa03026:	50 10       	IF !CC JUMP 0xffa030c6 <_ARP_req+0xae>;
ffa03028:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800c60 */
ffa0302c:	0a e1 00 08 	P2.L = 0x800;		/* (2048)	P2=0xff800800 */
ffa03030:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c40 <_rxIdx> */
ffa03034:	16 91       	R6 = [P2];
ffa03036:	0c e1 6c 0c 	P4.L = 0xc6c;		/* (3180)	P4=0xff900c6c <_NetArpLut> */
ffa0303a:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa0303e:	4c 32       	P1 = P4;
ffa03040:	46 51       	R5 = R6 + R0;
ffa03042:	6c 32       	P5 = P4;
ffa03044:	52 68       	P2 = 0xa (X);		/*		P2=0xa( 10) */
ffa03046:	b2 e0 06 20 	LSETUP(0xffa0304a <_ARP_req+0x32>, 0xffa03052 <_ARP_req+0x3a>) LC1 = P2;
ffa0304a:	08 91       	R0 = [P1];
ffa0304c:	07 08       	CC = R7 == R0;
ffa0304e:	21 18       	IF CC JUMP 0xffa03090 <_ARP_req+0x78>;
ffa03050:	a5 6c       	P5 += 0x14;		/* ( 20) */
ffa03052:	a1 6c       	P1 += 0x14;		/* ( 20) */
ffa03054:	ff e3 be fd 	CALL 0xffa02bd0 <_ARP_lut_find>;
ffa03058:	10 32       	P2 = R0;
ffa0305a:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa0305c:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900006 */
ffa03060:	09 e1 68 0c 	P1.L = 0xc68;		/* (3176)	P1=0xff900c68 <_NetArpLut_age> */
ffa03064:	92 5e       	P2 = P2 + (P2 << 0x2);
ffa03066:	94 5e       	P2 = P4 + (P2 << 0x2);
ffa03068:	10 b1       	[P2 + 0x10] = R0;
ffa0306a:	20 e1 e8 03 	R0 = 0x3e8 (X);		/*		R0=0x3e8(1000) */
ffa0306e:	04 cc 30 00 	R0 = R6 + R0 (NS) || [P2] = R7 || NOP;
ffa03072:	17 93 00 00 
ffa03076:	d0 b0       	[P2 + 0xc] = R0;
ffa03078:	48 95       	R0 = W[P1] (X);
ffa0307a:	08 64       	R0 += 0x1;		/* (  1) */
ffa0307c:	08 97       	W[P1] = R0;
ffa0307e:	50 b5       	W[P2 + 0xa] = R0;
ffa03080:	07 30       	R0 = R7;
ffa03082:	ff e3 51 ff 	CALL 0xffa02f24 <_ARP_tx>;
ffa03086:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03088:	01 e8 00 00 	UNLINK;
ffa0308c:	ac 05       	(R7:5, P5:4) = [SP++];
ffa0308e:	10 00       	RTS;
ffa03090:	08 a1       	R0 = [P1 + 0x10];
ffa03092:	08 48       	CC = !BITTST (R0, 0x1);		/* bit  1 */
ffa03094:	de 1f       	IF CC JUMP 0xffa03050 <_ARP_req+0x38> (BP);
ffa03096:	e8 a0       	R0 = [P5 + 0xc];
ffa03098:	86 09       	CC = R6 < R0 (IU);
ffa0309a:	f6 1f       	IF CC JUMP 0xffa03086 <_ARP_req+0x6e> (BP);
ffa0309c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa030a0:	0f 30       	R1 = R7;
ffa030a2:	00 e1 c8 04 	R0.L = 0x4c8;		/* (1224)	R0=0xff9004c8(-7338808) */
ffa030a6:	ff e3 a5 ed 	CALL 0xffa00bf0 <_printf_ip>;
ffa030aa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004c8(-7338808) */
ffa030ae:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa030b2:	ff e3 3b ec 	CALL 0xffa00928 <_printf_str>;
ffa030b6:	07 30       	R0 = R7;
ffa030b8:	ff e3 36 ff 	CALL 0xffa02f24 <_ARP_tx>;
ffa030bc:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5 + 0xc] = R5 || NOP;
ffa030c0:	ed b0 00 00 
ffa030c4:	e2 2f       	JUMP.S 0xffa03088 <_ARP_req+0x70>;
ffa030c6:	01 e8 00 00 	UNLINK;
ffa030ca:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa030cc:	ac 05       	(R7:5, P5:4) = [SP++];
ffa030ce:	10 00       	RTS;

ffa030d0 <_tcp_length>:
ffa030d0:	c5 04       	[--SP] = (P5:5);
ffa030d2:	28 32       	P5 = R0;
ffa030d4:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa030d8:	68 a6       	R0 = W[P5 + 0x12] (Z);
ffa030da:	ff e3 93 f3 	CALL 0xffa01800 <_htons>;
ffa030de:	a9 e4 10 00 	R1 = B[P5 + 0x10] (Z);
ffa030e2:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
ffa030e4:	51 54       	R1 = R1 & R2;
ffa030e6:	11 4f       	R1 <<= 0x2;
ffa030e8:	c0 42       	R0 = R0.L (Z);
ffa030ea:	08 52       	R0 = R0 - R1;
ffa030ec:	a9 e4 30 00 	R1 = B[P5 + 0x30] (Z);
ffa030f0:	11 4d       	R1 >>>= 0x2;
ffa030f2:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
ffa030f4:	51 54       	R1 = R1 & R2;
ffa030f6:	01 e8 00 00 	UNLINK;
ffa030fa:	08 52       	R0 = R0 - R1;
ffa030fc:	85 04       	(P5:5) = [SP++];
ffa030fe:	10 00       	RTS;

ffa03100 <_tcp_checksum_calc>:
ffa03100:	08 32       	P1 = R0;
ffa03102:	ed 05       	[--SP] = (R7:5, P5:5);
ffa03104:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa03108:	28 32       	P5 = R0;
ffa0310a:	31 30       	R6 = R1;
ffa0310c:	e1 6c       	P1 += 0x1c;		/* ( 28) */
ffa0310e:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa03110:	22 68       	P2 = 0x4 (X);		/*		P2=0x4(  4) */
ffa03112:	b2 e0 03 20 	LSETUP(0xffa03116 <_tcp_checksum_calc+0x16>, 0xffa03118 <_tcp_checksum_calc+0x18>) LC1 = P2;
ffa03116:	08 94       	R0 = W[P1++] (Z);
ffa03118:	45 51       	R5 = R5 + R0;
ffa0311a:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa0311e:	10 4e       	R0 >>= 0x2;
ffa03120:	06 50       	R0 = R6 + R0;
ffa03122:	c0 42       	R0 = R0.L (Z);
ffa03124:	af e4 19 00 	R7 = B[P5 + 0x19] (Z);
ffa03128:	ff e3 6c f3 	CALL 0xffa01800 <_htons>;
ffa0312c:	47 4f       	R7 <<= 0x8;
ffa0312e:	c0 42       	R0 = R0.L (Z);
ffa03130:	c7 51       	R7 = R7 + R0;
ffa03132:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
ffa03134:	ef 50       	R3 = R7 + R5;
ffa03136:	0d 1c       	IF CC JUMP 0xffa03150 <_tcp_checksum_calc+0x50> (BP);
ffa03138:	0e 32       	P1 = R6;
ffa0313a:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa0313e:	10 4e       	R0 >>= 0x2;
ffa03140:	25 6d       	P5 += 0x24;		/* ( 36) */
ffa03142:	0e 64       	R6 += 0x1;		/* (  1) */
ffa03144:	a9 5a       	P2 = P1 + P5;
ffa03146:	08 32       	P1 = R0;
ffa03148:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0314a:	e5 6e       	P5 += -0x24;		/* (-36) */
ffa0314c:	8a 5a       	P2 = P2 + P1;
ffa0314e:	10 9b       	B[P2] = R0;
ffa03150:	82 c6 0e 83 	R1 = R6 >> 0x1f;
ffa03154:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03156:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa0315a:	71 50       	R1 = R1 + R6;
ffa0315c:	a8 e4 30 00 	R0 = B[P5 + 0x30] (Z);
ffa03160:	09 4d       	R1 >>>= 0x1;
ffa03162:	18 4e       	R0 >>= 0x3;
ffa03164:	41 50       	R1 = R1 + R0;
ffa03166:	01 0d       	CC = R1 <= 0x0;
ffa03168:	09 18       	IF CC JUMP 0xffa0317a <_tcp_checksum_calc+0x7a>;
ffa0316a:	55 32       	P2 = P5;
ffa0316c:	22 6d       	P2 += 0x24;		/* ( 36) */
ffa0316e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
ffa03170:	0a 64       	R2 += 0x1;		/* (  1) */
ffa03172:	10 94       	R0 = W[P2++] (Z);
ffa03174:	0a 08       	CC = R2 == R1;
ffa03176:	c3 50       	R3 = R3 + R0;
ffa03178:	fc 17       	IF !CC JUMP 0xffa03170 <_tcp_checksum_calc+0x70> (BP);
ffa0317a:	d8 42       	R0 = R3.L (Z);
ffa0317c:	82 c6 83 83 	R1 = R3 >> 0x10;
ffa03180:	08 50       	R0 = R0 + R1;
ffa03182:	c0 43       	R0 =~ R0;
ffa03184:	01 e8 00 00 	UNLINK;
ffa03188:	c0 42       	R0 = R0.L (Z);
ffa0318a:	ad 05       	(R7:5, P5:5) = [SP++];
ffa0318c:	10 00       	RTS;
	...

ffa03190 <_tcp_checksum_set>:
ffa03190:	c5 04       	[--SP] = (P5:5);
ffa03192:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900004 */
ffa03196:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0319a:	0a e1 2c 0c 	P2.L = 0xc2c;		/* (3116)	P2=0xff900c2c <_txIdx> */
ffa0319e:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = W[P2] (Z) || NOP;
ffa031a2:	10 95 00 00 
ffa031a6:	10 32       	P2 = R0;
ffa031a8:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c68 <_NetArpLut_age> */
ffa031ac:	09 e1 30 0c 	P1.L = 0xc30;		/* (3120)	P1=0xff900c30 <_txbuf> */
ffa031b0:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa031b2:	52 91       	P2 = [P2];
ffa031b4:	95 ad       	P5 = [P2 + 0x18];
ffa031b6:	45 30       	R0 = P5;
ffa031b8:	ff e3 a4 ff 	CALL 0xffa03100 <_tcp_checksum_calc>;
ffa031bc:	68 e6 1a 00 	W[P5 + 0x34] = R0;
ffa031c0:	01 e8 00 00 	UNLINK;
ffa031c4:	85 04       	(P5:5) = [SP++];
ffa031c6:	10 00       	RTS;

ffa031c8 <_tcp_checksum_check>:
ffa031c8:	10 32       	P2 = R0;
ffa031ca:	78 05       	[--SP] = (R7:7);
ffa031cc:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa031d0:	57 e4 1a 00 	R7 = W[P2 + 0x34] (Z);
ffa031d4:	ff e3 96 ff 	CALL 0xffa03100 <_tcp_checksum_calc>;
ffa031d8:	0f 30       	R1 = R7;
ffa031da:	c7 42       	R7 = R0.L (Z);
ffa031dc:	39 08       	CC = R1 == R7;
ffa031de:	19 18       	IF CC JUMP 0xffa03210 <_tcp_checksum_check+0x48>;
ffa031e0:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa031e4:	00 e1 e8 04 	R0.L = 0x4e8;		/* (1256)	R0=0xff9004e8(-7338776) */
ffa031e8:	ff e3 06 ec 	CALL 0xffa009f4 <_printf_hex>;
ffa031ec:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9004e8(-7338776) */
ffa031f0:	0f 30       	R1 = R7;
ffa031f2:	00 e1 04 05 	R0.L = 0x504;		/* (1284)	R0=0xff900504(-7338748) */
ffa031f6:	ff e3 ff eb 	CALL 0xffa009f4 <_printf_hex>;
ffa031fa:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900504(-7338748) */
ffa031fe:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa03202:	ff e3 93 eb 	CALL 0xffa00928 <_printf_str>;
ffa03206:	01 e8 00 00 	UNLINK;
ffa0320a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0320c:	38 05       	(R7:7) = [SP++];
ffa0320e:	10 00       	RTS;
ffa03210:	01 e8 00 00 	UNLINK;
ffa03214:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03216:	38 05       	(R7:7) = [SP++];
ffa03218:	10 00       	RTS;
	...

ffa0321c <_tcp_packet_setup>:
ffa0321c:	ed 05       	[--SP] = (R7:5, P5:5);
ffa0321e:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03222:	29 32       	P5 = R1;
ffa03224:	7f 30       	R7 = FP;
ffa03226:	c0 65       	R0 += 0x38;		/* ( 56) */
ffa03228:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa0322a:	f0 bb       	[FP -0x4] = R0;
ffa0322c:	07 30       	R0 = R7;
ffa0322e:	2a 30       	R5 = R2;
ffa03230:	be e5 24 00 	R6 = B[FP + 0x24] (X);
ffa03234:	ff e3 2c f7 	CALL 0xffa0208c <_eth_header_setup>;
ffa03238:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P5] (X) || NOP;
ffa0323c:	68 99 00 00 
ffa03240:	80 0c       	CC = R0 < 0x0;
ffa03242:	14 18       	IF CC JUMP 0xffa0326a <_tcp_packet_setup+0x4e>;
ffa03244:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
ffa03246:	f0 b0       	[SP + 0xc] = R0;
ffa03248:	15 30       	R2 = R5;
ffa0324a:	01 30       	R0 = R1;
ffa0324c:	0f 30       	R1 = R7;
ffa0324e:	ff e3 0d f3 	CALL 0xffa01868 <_ip_header_setup>;
ffa03252:	b9 a2       	R1 = [FP + 0x28];
ffa03254:	f1 b0       	[SP + 0xc] = R1;
ffa03256:	f9 a2       	R1 = [FP + 0x2c];
ffa03258:	31 b1       	[SP + 0x10] = R1;
ffa0325a:	72 43       	R2 = R6.B (Z);
ffa0325c:	0f 30       	R1 = R7;
ffa0325e:	ff e3 91 f3 	CALL 0xffa01980 <_tcp_header_setup>;
ffa03262:	01 e8 00 00 	UNLINK;
ffa03266:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03268:	10 00       	RTS;
ffa0326a:	01 e8 00 00 	UNLINK;
ffa0326e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03270:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03272:	10 00       	RTS;

ffa03274 <_tcp_burst>:
ffa03274:	e3 05       	[--SP] = (R7:4, P5:3);
ffa03276:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa0327a:	78 b2       	[FP + 0x24] = R0;
ffa0327c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900c68 <_NetArpLut_age> */
ffa03280:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c2c <_txIdx> */
ffa03284:	7a a2       	R2 = [FP + 0x24];
ffa03286:	0b e1 54 0d 	P3.L = 0xd54;		/* (3412)	P3=0xff900d54 <_g_httpHeaderLen> */
ffa0328a:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa0328e:	02 0d       	CC = R2 <= 0x0;
ffa03290:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
ffa03294:	10 91 00 00 
ffa03298:	19 91       	R1 = [P3];
ffa0329a:	7e 18       	IF CC JUMP 0xffa03396 <_tcp_burst+0x122>;
ffa0329c:	41 50       	R1 = R1 + R0;
ffa0329e:	8f 09       	CC = R7 < R1 (IU);
ffa032a0:	21 32       	P4 = R1;
ffa032a2:	7a 10       	IF !CC JUMP 0xffa03396 <_tcp_burst+0x122>;
ffa032a4:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa032a6:	38 20       	JUMP.S 0xffa03316 <_tcp_burst+0xa2>;
ffa032a8:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa032aa:	18 91       	R0 = [P3];
ffa032ac:	07 52       	R0 = R7 - R0;
ffa032ae:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa032b2:	08 50       	R0 = R0 + R1;
ffa032b4:	16 30       	R2 = R6;
ffa032b6:	0d 30       	R1 = R5;
ffa032b8:	ff e3 e0 ec 	CALL 0xffa00c78 <_memcpy_>;
ffa032bc:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c30 <_txbuf> */
ffa032c0:	09 e1 40 0d 	P1.L = 0xd40;		/* (3392)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa032c4:	08 91       	R0 = [P1];
ffa032c6:	f7 51       	R7 = R7 + R6;
ffa032c8:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa032cc:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa032d0:	07 50       	R0 = R7 + R0;
ffa032d2:	10 93       	[P2] = R0;
ffa032d4:	26 50       	R0 = R6 + R4;
ffa032d6:	ff e3 5d ff 	CALL 0xffa03190 <_tcp_checksum_set>;
ffa032da:	ff e3 3d f4 	CALL 0xffa01b54 <_bfin_EMAC_send_nocopy>;
ffa032de:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa032e2:	0a e1 40 0c 	P2.L = 0xc40;		/* (3136)	P2=0xff900c40 <_rxIdx> */
ffa032e6:	10 95       	R0 = W[P2] (Z);
ffa032e8:	10 32       	P2 = R0;
ffa032ea:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa032ee:	09 e1 44 0c 	P1.L = 0xc44;		/* (3140)	P1=0xff900c44 <_rxbuf> */
ffa032f2:	0d 6c       	P5 += 0x1;		/* (  1) */
ffa032f4:	91 5e       	P2 = P1 + (P2 << 0x2);
ffa032f6:	52 91       	P2 = [P2];
ffa032f8:	90 a2       	R0 = [P2 + 0x28];
ffa032fa:	60 48       	CC = !BITTST (R0, 0xc);		/* bit 12 */
ffa032fc:	07 1c       	IF CC JUMP 0xffa0330a <_tcp_burst+0x96> (BP);
ffa032fe:	90 a2       	R0 = [P2 + 0x28];
ffa03300:	4d 30       	R1 = P5;
ffa03302:	7a a2       	R2 = [FP + 0x24];
ffa03304:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
ffa03306:	11 50       	R0 = R1 + R2;
ffa03308:	a8 06       	IF !CC P5 = R0;
ffa0330a:	79 ae       	P1 = [FP + 0x24];
ffa0330c:	69 09       	CC = P1 <= P5;
ffa0330e:	45 18       	IF CC JUMP 0xffa03398 <_tcp_burst+0x124>;
ffa03310:	44 30       	R0 = P4;
ffa03312:	87 09       	CC = R7 < R0 (IU);
ffa03314:	42 10       	IF !CC JUMP 0xffa03398 <_tcp_burst+0x124>;
ffa03316:	44 30       	R0 = P4;
ffa03318:	b8 52       	R2 = R0 - R7;
ffa0331a:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
ffa0331e:	0a 09       	CC = R2 <= R1;
ffa03320:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03322:	c1 60       	R1 = 0x18 (X);		/*		R1=0x18( 24) */
ffa03324:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900c44 <_rxbuf> */
ffa03328:	08 06       	IF !CC R1 = R0;
ffa0332a:	09 e1 40 0d 	P1.L = 0xd40;		/* (3392)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa0332e:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
ffa03332:	07 cc 10 4c 	R6 = MIN (R2, R0) || R0 = [P1] || NOP;
ffa03336:	08 91 00 00 
ffa0333a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c40 <_rxIdx> */
ffa0333e:	07 50       	R0 = R7 + R0;
ffa03340:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa03344:	49 e1 90 ff 	P1.H = 0xff90;		/* (-112)	P1=0xff900d40 <_TcpSeqHttpStart> */
ffa03348:	10 93       	[P2] = R0;
ffa0334a:	09 e1 3c 0d 	P1.L = 0xd3c;		/* (3388)	P1=0xff900d3c <_TcpSeqClient> */
ffa0334e:	f1 b0       	[SP + 0xc] = R1;
ffa03350:	30 b1       	[SP + 0x10] = R0;
ffa03352:	08 91       	R0 = [P1];
ffa03354:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa03358:	70 b1       	[SP + 0x14] = R0;
ffa0335a:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa0335e:	4f 30       	R1 = FP;
ffa03360:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R2 = [P2] || NOP;
ffa03364:	12 91 00 00 
ffa03368:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa0336a:	ff e3 59 ff 	CALL 0xffa0321c <_tcp_packet_setup>;
ffa0336e:	28 30       	R5 = R0;
ffa03370:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03374:	00 0d       	CC = R0 <= 0x0;
ffa03376:	ca 1b       	IF CC JUMP 0xffa0330a <_tcp_burst+0x96>;
ffa03378:	18 91       	R0 = [P3];
ffa0337a:	38 0a       	CC = R0 <= R7 (IU);
ffa0337c:	96 1f       	IF CC JUMP 0xffa032a8 <_tcp_burst+0x34> (BP);
ffa0337e:	38 53       	R4 = R0 - R7;
ffa03380:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03384:	07 50       	R0 = R7 + R0;
ffa03386:	0d 30       	R1 = R5;
ffa03388:	14 30       	R2 = R4;
ffa0338a:	ff e3 77 ec 	CALL 0xffa00c78 <_memcpy_>;
ffa0338e:	65 51       	R5 = R5 + R4;
ffa03390:	a6 53       	R6 = R6 - R4;
ffa03392:	e7 51       	R7 = R7 + R4;
ffa03394:	8b 2f       	JUMP.S 0xffa032aa <_tcp_burst+0x36>;
ffa03396:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
ffa03398:	01 e8 00 00 	UNLINK;
ffa0339c:	45 30       	R0 = P5;
ffa0339e:	a3 05       	(R7:4, P5:3) = [SP++];
ffa033a0:	10 00       	RTS;
	...

ffa033a4 <_tcp_rx>:
ffa033a4:	e3 05       	[--SP] = (R7:4, P5:3);
ffa033a6:	20 32       	P4 = R0;
ffa033a8:	00 e8 07 00 	LINK 0x1c;		/* (28) */
ffa033ac:	20 e1 00 08 	R0 = 0x800 (X);		/*		R0=0x800(2048) */
ffa033b0:	e7 a5       	R7 = W[P4 + 0xe] (Z);
ffa033b2:	ff e3 27 f2 	CALL 0xffa01800 <_htons>;
ffa033b6:	c0 42       	R0 = R0.L (Z);
ffa033b8:	07 08       	CC = R7 == R0;
ffa033ba:	06 18       	IF CC JUMP 0xffa033c6 <_tcp_rx+0x22>;
ffa033bc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa033be:	01 e8 00 00 	UNLINK;
ffa033c2:	a3 05       	(R7:4, P5:3) = [SP++];
ffa033c4:	10 00       	RTS;
ffa033c6:	a0 e4 19 00 	R0 = B[P4 + 0x19] (Z);
ffa033ca:	31 60       	R1 = 0x6 (X);		/*		R1=0x6(  6) */
ffa033cc:	08 08       	CC = R0 == R1;
ffa033ce:	f7 17       	IF !CC JUMP 0xffa033bc <_tcp_rx+0x18> (BP);
ffa033d0:	20 e1 50 00 	R0 = 0x50 (X);		/*		R0=0x50( 80) */
ffa033d4:	67 e4 13 00 	R7 = W[P4 + 0x26] (Z);
ffa033d8:	ff e3 14 f2 	CALL 0xffa01800 <_htons>;
ffa033dc:	c0 42       	R0 = R0.L (Z);
ffa033de:	07 08       	CC = R7 == R0;
ffa033e0:	ee 17       	IF !CC JUMP 0xffa033bc <_tcp_rx+0x18> (BP);
ffa033e2:	44 30       	R0 = P4;
ffa033e4:	80 64       	R0 += 0x10;		/* ( 16) */
ffa033e6:	ff e3 81 f2 	CALL 0xffa018e8 <_ip_header_checksum>;
ffa033ea:	40 43       	R0 = R0.B (Z);
ffa033ec:	00 0c       	CC = R0 == 0x0;
ffa033ee:	e7 1f       	IF CC JUMP 0xffa033bc <_tcp_rx+0x18> (BP);
ffa033f0:	4c 30       	R1 = P4;
ffa033f2:	41 64       	R1 += 0x8;		/* (  8) */
ffa033f4:	e0 a1       	R0 = [P4 + 0x1c];
ffa033f6:	ff e3 13 fc 	CALL 0xffa02c1c <_ARP_lut_add>;
ffa033fa:	44 30       	R0 = P4;
ffa033fc:	ff e3 6a fe 	CALL 0xffa030d0 <_tcp_length>;
ffa03400:	30 30       	R6 = R0;
ffa03402:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900050(-7339952) */
ffa03406:	0e 30       	R1 = R6;
ffa03408:	00 e1 14 05 	R0.L = 0x514;		/* (1300)	R0=0xff900514(-7338732) */
ffa0340c:	ff e3 50 eb 	CALL 0xffa00aac <_printf_int>;
ffa03410:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900514(-7338732) */
ffa03414:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa03418:	ff e3 88 ea 	CALL 0xffa00928 <_printf_str>;
ffa0341c:	44 30       	R0 = P4;
ffa0341e:	0e 30       	R1 = R6;
ffa03420:	ff e3 d4 fe 	CALL 0xffa031c8 <_tcp_checksum_check>;
ffa03424:	40 43       	R0 = R0.B (Z);
ffa03426:	00 0c       	CC = R0 == 0x0;
ffa03428:	ca 1b       	IF CC JUMP 0xffa033bc <_tcp_rx+0x18>;
ffa0342a:	00 00       	NOP;
ffa0342c:	00 00       	NOP;
ffa0342e:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
ffa03430:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa03434:	48 43       	R0 = R1.B (Z);
ffa03436:	10 08       	CC = R0 == R2;
ffa03438:	f1 18       	IF CC JUMP 0xffa0361a <_tcp_rx+0x276>;
ffa0343a:	10 0c       	CC = R0 == 0x2;
ffa0343c:	0a 19       	IF CC JUMP 0xffa03650 <_tcp_rx+0x2ac>;
ffa0343e:	48 43       	R0 = R1.B (Z);
ffa03440:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03442:	08 08       	CC = R0 == R1;
ffa03444:	85 18       	IF CC JUMP 0xffa0354e <_tcp_rx+0x1aa>;
ffa03446:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03448:	ab 10       	IF !CC JUMP 0xffa0359e <_tcp_rx+0x1fa>;
ffa0344a:	00 00       	NOP;
ffa0344c:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d54 <_g_httpHeaderLen> */
ffa03450:	0b e1 44 0d 	P3.L = 0xd44;		/* (3396)	P3=0xff900d44 <_TcpState> */
ffa03454:	00 00       	NOP;
ffa03456:	a0 e4 31 00 	R0 = B[P4 + 0x31] (Z);
ffa0345a:	20 48       	CC = !BITTST (R0, 0x4);		/* bit  4 */
ffa0345c:	38 10       	IF !CC JUMP 0xffa034cc <_tcp_rx+0x128>;
ffa0345e:	18 91       	R0 = [P3];
ffa03460:	10 0c       	CC = R0 == 0x2;
ffa03462:	ad 17       	IF !CC JUMP 0xffa033bc <_tcp_rx+0x18> (BP);
ffa03464:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900000 <_l1_data_a>(-7340032) */
ffa03468:	a0 a2       	R0 = [P4 + 0x28];
ffa0346a:	04 e1 24 0c 	R4.L = 0xc24;		/* (3108)	R4=0xff900c24 <_NetDestIP>(-7336924) */
ffa0346e:	a5 e5 30 00 	R5 = B[P4 + 0x30] (X);
ffa03472:	ff e3 d3 f1 	CALL 0xffa01818 <_htonl>;
ffa03476:	14 32       	P2 = R4;
ffa03478:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900000 <_l1_data_a> */
ffa0347c:	30 50       	R0 = R0 + R6;
ffa0347e:	0d e1 3c 0d 	P5.L = 0xd3c;		/* (3388)	P5=0xff900d3c <_TcpSeqClient> */
ffa03482:	28 93       	[P5] = R0;
ffa03484:	e0 a1       	R0 = [P4 + 0x1c];
ffa03486:	10 93       	[P2] = R0;
ffa03488:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d44 <_TcpState> */
ffa0348c:	e0 a2       	R0 = [P4 + 0x2c];
ffa0348e:	0b e1 40 0d 	P3.L = 0xd40;		/* (3392)	P3=0xff900d40 <_TcpSeqHttpStart> */
ffa03492:	ff e3 c3 f1 	CALL 0xffa01818 <_htonl>;
ffa03496:	19 91       	R1 = [P3];
ffa03498:	c8 53       	R7 = R0 - R1;
ffa0349a:	a1 e4 31 00 	R1 = B[P4 + 0x31] (Z);
ffa0349e:	21 48       	CC = !BITTST (R1, 0x4);		/* bit  4 */
ffa034a0:	1e 1d       	IF CC JUMP 0xffa036dc <_tcp_rx+0x338> (BP);
ffa034a2:	06 0c       	CC = R6 == 0x0;
ffa034a4:	1c 15       	IF !CC JUMP 0xffa036dc <_tcp_rx+0x338> (BP);
ffa034a6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa034aa:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa034ae:	10 91       	R0 = [P2];
ffa034b0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa034b4:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa034b8:	11 91       	R1 = [P2];
ffa034ba:	08 50       	R0 = R0 + R1;
ffa034bc:	07 08       	CC = R7 == R0;
ffa034be:	46 18       	IF CC JUMP 0xffa0354a <_tcp_rx+0x1a6>;
ffa034c0:	0f 30       	R1 = R7;
ffa034c2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034c4:	ff e3 d8 fe 	CALL 0xffa03274 <_tcp_burst>;
ffa034c8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa034ca:	7a 2f       	JUMP.S 0xffa033be <_tcp_rx+0x1a>;
ffa034cc:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa034ce:	1f 91       	R7 = [P3];
ffa034d0:	07 08       	CC = R7 == R0;
ffa034d2:	85 19       	IF CC JUMP 0xffa037dc <_tcp_rx+0x438>;
ffa034d4:	07 0c       	CC = R7 == 0x0;
ffa034d6:	c4 17       	IF !CC JUMP 0xffa0345e <_tcp_rx+0xba> (BP);
ffa034d8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900004(-7340028) */
ffa034dc:	00 e1 90 05 	R0.L = 0x590;		/* (1424)	R0=0xff900590(-7338608) */
ffa034e0:	ff e3 24 ea 	CALL 0xffa00928 <_printf_str>;
ffa034e4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa034e8:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa034ec:	17 93       	[P2] = R7;
ffa034ee:	a0 a2       	R0 = [P4 + 0x28];
ffa034f0:	ff e3 94 f1 	CALL 0xffa01818 <_htonl>;
ffa034f4:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa034f8:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa034fc:	10 93       	[P2] = R0;
ffa034fe:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa03502:	e2 a1       	R2 = [P4 + 0x1c];
ffa03504:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa03508:	12 93       	[P2] = R2;
ffa0350a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa0350e:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03512:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa03516:	11 97       	W[P2] = R1;
ffa03518:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
ffa0351a:	f1 b0       	[SP + 0xc] = R1;
ffa0351c:	4f 30       	R1 = FP;
ffa0351e:	30 b1       	[SP + 0x10] = R0;
ffa03520:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03522:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0x14] = R7 || NOP;
ffa03526:	77 b1 00 00 
ffa0352a:	ff e3 79 fe 	CALL 0xffa0321c <_tcp_packet_setup>;
ffa0352e:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03532:	00 0d       	CC = R0 <= 0x0;
ffa03534:	95 1b       	IF CC JUMP 0xffa0345e <_tcp_rx+0xba>;
ffa03536:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpClientPort> */
ffa0353a:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa0353e:	17 93       	[P2] = R7;
ffa03540:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03542:	ff e3 27 fe 	CALL 0xffa03190 <_tcp_checksum_set>;
ffa03546:	ff e3 07 f3 	CALL 0xffa01b54 <_bfin_EMAC_send_nocopy>;
ffa0354a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0354c:	39 2f       	JUMP.S 0xffa033be <_tcp_rx+0x1a>;
ffa0354e:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d40 <_TcpSeqHttpStart> */
ffa03552:	0b e1 44 0d 	P3.L = 0xd44;		/* (3396)	P3=0xff900d44 <_TcpState> */
ffa03556:	18 91       	R0 = [P3];
ffa03558:	08 0c       	CC = R0 == 0x1;
ffa0355a:	b9 17       	IF !CC JUMP 0xffa034cc <_tcp_rx+0x128> (BP);
ffa0355c:	e0 a2       	R0 = [P4 + 0x2c];
ffa0355e:	ff e3 5d f1 	CALL 0xffa01818 <_htonl>;
ffa03562:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa03566:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa0356a:	11 91       	R1 = [P2];
ffa0356c:	08 08       	CC = R0 == R1;
ffa0356e:	42 19       	IF CC JUMP 0xffa037f2 <_tcp_rx+0x44e>;
ffa03570:	00 00       	NOP;
ffa03572:	00 00       	NOP;
ffa03574:	00 00       	NOP;
ffa03576:	e0 a2       	R0 = [P4 + 0x2c];
ffa03578:	ff e3 50 f1 	CALL 0xffa01818 <_htonl>;
ffa0357c:	08 30       	R1 = R0;
ffa0357e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03582:	00 e1 40 05 	R0.L = 0x540;		/* (1344)	R0=0xff900540(-7338688) */
ffa03586:	ff e3 35 eb 	CALL 0xffa00bf0 <_printf_ip>;
ffa0358a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0358c:	18 93       	[P3] = R0;
ffa0358e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa03592:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa03596:	ff e3 c9 e9 	CALL 0xffa00928 <_printf_str>;
ffa0359a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0359c:	11 2f       	JUMP.S 0xffa033be <_tcp_rx+0x1a>;
ffa0359e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa035a2:	00 e1 6c 05 	R0.L = 0x56c;		/* (1388)	R0=0xff90056c(-7338644) */
ffa035a6:	44 e1 90 ff 	R4.H = 0xff90;		/* (-112)	R4=0xff900c24 <_NetDestIP>(-7336924) */
ffa035aa:	ff e3 bf e9 	CALL 0xffa00928 <_printf_str>;
ffa035ae:	04 e1 24 0c 	R4.L = 0xc24;		/* (3108)	R4=0xff900c24 <_NetDestIP>(-7336924) */
ffa035b2:	a0 a2       	R0 = [P4 + 0x28];
ffa035b4:	ff e3 32 f1 	CALL 0xffa01818 <_htonl>;
ffa035b8:	14 32       	P2 = R4;
ffa035ba:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d3c <_TcpSeqClient> */
ffa035be:	4b e1 90 ff 	P3.H = 0xff90;		/* (-112)	P3=0xff900d44 <_TcpState> */
ffa035c2:	0d e1 3c 0d 	P5.L = 0xd3c;		/* (3388)	P5=0xff900d3c <_TcpSeqClient> */
ffa035c6:	0b e1 44 0d 	P3.L = 0xd44;		/* (3396)	P3=0xff900d44 <_TcpState> */
ffa035ca:	28 93       	[P5] = R0;
ffa035cc:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P3] || NOP;
ffa035d0:	18 91 00 00 
ffa035d4:	e2 a1       	R2 = [P4 + 0x1c];
ffa035d6:	09 64       	R1 += 0x1;		/* (  1) */
ffa035d8:	10 0c       	CC = R0 == 0x2;
ffa035da:	12 93       	[P2] = R2;
ffa035dc:	29 93       	[P5] = R1;
ffa035de:	03 18       	IF CC JUMP 0xffa035e4 <_tcp_rx+0x240>;
ffa035e0:	00 0c       	CC = R0 == 0x0;
ffa035e2:	c0 14       	IF !CC JUMP 0xffa03762 <_tcp_rx+0x3be> (BP);
ffa035e4:	88 60       	R0 = 0x11 (X);		/*		R0=0x11( 17) */
ffa035e6:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa035ea:	f0 b0       	[SP + 0xc] = R0;
ffa035ec:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa035f0:	10 91       	R0 = [P2];
ffa035f2:	71 b1       	[SP + 0x14] = R1;
ffa035f4:	4f 30       	R1 = FP;
ffa035f6:	30 b1       	[SP + 0x10] = R0;
ffa035f8:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa035fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa035fc:	ff e3 10 fe 	CALL 0xffa0321c <_tcp_packet_setup>;
ffa03600:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa03604:	00 0d       	CC = R0 <= 0x0;
ffa03606:	ae 18       	IF CC JUMP 0xffa03762 <_tcp_rx+0x3be>;
ffa03608:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
ffa0360a:	18 93       	[P3] = R0;
ffa0360c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0360e:	ff e3 c1 fd 	CALL 0xffa03190 <_tcp_checksum_set>;
ffa03612:	ff e3 a1 f2 	CALL 0xffa01b54 <_bfin_EMAC_send_nocopy>;
ffa03616:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03618:	d3 2e       	JUMP.S 0xffa033be <_tcp_rx+0x1a>;
ffa0361a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0361e:	00 e1 28 05 	R0.L = 0x528;		/* (1320)	R0=0xff900528(-7338712) */
ffa03622:	ff e3 83 e9 	CALL 0xffa00928 <_printf_str>;
ffa03626:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa0362a:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa0362e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03630:	17 93       	[P2] = R7;
ffa03632:	a0 a2       	R0 = [P4 + 0x28];
ffa03634:	ff e3 f2 f0 	CALL 0xffa01818 <_htonl>;
ffa03638:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa0363c:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa03640:	10 93       	[P2] = R0;
ffa03642:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa03646:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa0364a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0364c:	17 93       	[P2] = R7;
ffa0364e:	b8 2e       	JUMP.S 0xffa033be <_tcp_rx+0x1a>;
ffa03650:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03654:	00 e1 34 05 	R0.L = 0x534;		/* (1332)	R0=0xff900534(-7338700) */
ffa03658:	ff e3 68 e9 	CALL 0xffa00928 <_printf_str>;
ffa0365c:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d3c <_TcpSeqClient> */
ffa03660:	a0 a2       	R0 = [P4 + 0x28];
ffa03662:	ff e3 db f0 	CALL 0xffa01818 <_htonl>;
ffa03666:	0d e1 3c 0d 	P5.L = 0xd3c;		/* (3388)	P5=0xff900d3c <_TcpSeqClient> */
ffa0366a:	28 93       	[P5] = R0;
ffa0366c:	44 30       	R0 = P4;
ffa0366e:	ff e3 31 fd 	CALL 0xffa030d0 <_tcp_length>;
ffa03672:	29 91       	R1 = [P5];
ffa03674:	09 64       	R1 += 0x1;		/* (  1) */
ffa03676:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa0367a:	08 50       	R0 = R0 + R1;
ffa0367c:	0a e1 50 0d 	P2.L = 0xd50;		/* (3408)	P2=0xff900d50 <_TcpClientPort> */
ffa03680:	61 e5 12 00 	R1 = W[P4 + 0x24] (X);
ffa03684:	11 97       	W[P2] = R1;
ffa03686:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d50 <_TcpClientPort> */
ffa0368a:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5] = R0 || NOP;
ffa0368e:	28 93 00 00 
ffa03692:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa03696:	11 93       	[P2] = R1;
ffa03698:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa0369c:	e2 a1       	R2 = [P4 + 0x1c];
ffa0369e:	0a e1 24 0c 	P2.L = 0xc24;		/* (3108)	P2=0xff900c24 <_NetDestIP> */
ffa036a2:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
ffa036a4:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d3c <_TcpSeqClient> */
ffa036a8:	12 93       	[P2] = R2;
ffa036aa:	0d e1 38 0d 	P5.L = 0xd38;		/* (3384)	P5=0xff900d38 <_TcpSeqHost> */
ffa036ae:	f1 b0       	[SP + 0xc] = R1;
ffa036b0:	29 91       	R1 = [P5];
ffa036b2:	31 b1       	[SP + 0x10] = R1;
ffa036b4:	4f 30       	R1 = FP;
ffa036b6:	70 b1       	[SP + 0x14] = R0;
ffa036b8:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa036ba:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa036bc:	ff e3 b0 fd 	CALL 0xffa0321c <_tcp_packet_setup>;
ffa036c0:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa036c4:	00 0d       	CC = R0 <= 0x0;
ffa036c6:	93 18       	IF CC JUMP 0xffa037ec <_tcp_rx+0x448>;
ffa036c8:	28 91       	R0 = [P5];
ffa036ca:	08 64       	R0 += 0x1;		/* (  1) */
ffa036cc:	28 93       	[P5] = R0;
ffa036ce:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa036d0:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c24 <_NetDestIP> */
ffa036d4:	0a e1 44 0d 	P2.L = 0xd44;		/* (3396)	P2=0xff900d44 <_TcpState> */
ffa036d8:	10 93       	[P2] = R0;
ffa036da:	33 2f       	JUMP.S 0xffa03540 <_tcp_rx+0x19c>;
ffa036dc:	20 e1 f0 00 	R0 = 0xf0 (X);		/*		R0=0xf0(240) */
ffa036e0:	28 54       	R0 = R0 & R5;
ffa036e2:	24 6d       	P4 += 0x24;		/* ( 36) */
ffa036e4:	10 4d       	R0 >>>= 0x2;
ffa036e6:	54 30       	R2 = P4;
ffa036e8:	19 48       	CC = !BITTST (R1, 0x3);		/* bit  3 */
ffa036ea:	02 50       	R0 = R2 + R0;
ffa036ec:	5d 1c       	IF CC JUMP 0xffa037a6 <_tcp_rx+0x402> (BP);
ffa036ee:	0e 30       	R1 = R6;
ffa036f0:	00 e3 16 05 	CALL 0xffa0411c <_httpCollate>;
ffa036f4:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d38 <_TcpSeqHost> */
ffa036f8:	18 91       	R0 = [P3];
ffa036fa:	07 50       	R0 = R7 + R0;
ffa036fc:	0d e1 38 0d 	P5.L = 0xd38;		/* (3384)	P5=0xff900d38 <_TcpSeqHost> */
ffa03700:	4c e1 90 ff 	P4.H = 0xff90;		/* (-112)	P4=0xff900c6c <_NetArpLut> */
ffa03704:	28 93       	[P5] = R0;
ffa03706:	0c e1 5c 0d 	P4.L = 0xd5c;		/* (3420)	P4=0xff900d5c <_g_httpRxed> */
ffa0370a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0370c:	80 4f       	R0 <<= 0x10;
ffa0370e:	21 91       	R1 = [P4];
ffa03710:	00 e3 dc 02 	CALL 0xffa03cc8 <_httpResp>;
ffa03714:	00 0c       	CC = R0 == 0x0;
ffa03716:	22 1c       	IF CC JUMP 0xffa0375a <_tcp_rx+0x3b6> (BP);
ffa03718:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d44 <_TcpState> */
ffa0371c:	28 91       	R0 = [P5];
ffa0371e:	0a e1 40 0d 	P2.L = 0xd40;		/* (3392)	P2=0xff900d40 <_TcpSeqHttpStart> */
ffa03722:	10 93       	[P2] = R0;
ffa03724:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d40 <_TcpSeqHttpStart> */
ffa03728:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa0372c:	11 91       	R1 = [P2];
ffa0372e:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa03732:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03736:	10 91       	R0 = [P2];
ffa03738:	41 50       	R1 = R1 + R0;
ffa0373a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0373e:	00 e1 ac 05 	R0.L = 0x5ac;		/* (1452)	R0=0xff9005ac(-7338580) */
ffa03742:	ff e3 b5 e9 	CALL 0xffa00aac <_printf_int>;
ffa03746:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff9005ac(-7338580) */
ffa0374a:	00 e1 6c 0a 	R0.L = 0xa6c;		/* (2668)	R0=0xff900a6c(-7337364) */
ffa0374e:	ff e3 ed e8 	CALL 0xffa00928 <_printf_str>;
ffa03752:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03754:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03756:	ff e3 8f fd 	CALL 0xffa03274 <_tcp_burst>;
ffa0375a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0375c:	20 93       	[P4] = R0;
ffa0375e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03760:	2f 2e       	JUMP.S 0xffa033be <_tcp_rx+0x1a>;
ffa03762:	18 91       	R0 = [P3];
ffa03764:	18 0c       	CC = R0 == 0x3;
ffa03766:	77 16       	IF !CC JUMP 0xffa03454 <_tcp_rx+0xb0> (BP);
ffa03768:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa0376c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0376e:	0a e1 5c 0d 	P2.L = 0xd5c;		/* (3420)	P2=0xff900d5c <_g_httpRxed> */
ffa03772:	10 93       	[P2] = R0;
ffa03774:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa03776:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d5c <_g_httpRxed> */
ffa0377a:	f0 b0       	[SP + 0xc] = R0;
ffa0377c:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa03780:	10 91       	R0 = [P2];
ffa03782:	14 32       	P2 = R4;
ffa03784:	30 b1       	[SP + 0x10] = R0;
ffa03786:	28 91       	R0 = [P5];
ffa03788:	70 b1       	[SP + 0x14] = R0;
ffa0378a:	4f 30       	R1 = FP;
ffa0378c:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa03790:	12 91 00 00 
ffa03794:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa03796:	ff e3 43 fd 	CALL 0xffa0321c <_tcp_packet_setup>;
ffa0379a:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa0379e:	00 0d       	CC = R0 <= 0x0;
ffa037a0:	5a 1a       	IF CC JUMP 0xffa03454 <_tcp_rx+0xb0>;
ffa037a2:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
ffa037a4:	96 2f       	JUMP.S 0xffa036d0 <_tcp_rx+0x32c>;
ffa037a6:	0e 30       	R1 = R6;
ffa037a8:	00 e3 ba 04 	CALL 0xffa0411c <_httpCollate>;
ffa037ac:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
ffa037ae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa037b2:	f0 b0       	[SP + 0xc] = R0;
ffa037b4:	0a e1 38 0d 	P2.L = 0xd38;		/* (3384)	P2=0xff900d38 <_TcpSeqHost> */
ffa037b8:	10 91       	R0 = [P2];
ffa037ba:	14 32       	P2 = R4;
ffa037bc:	30 b1       	[SP + 0x10] = R0;
ffa037be:	28 91       	R0 = [P5];
ffa037c0:	70 b1       	[SP + 0x14] = R0;
ffa037c2:	4f 30       	R1 = FP;
ffa037c4:	00 cc 00 c0 	R0 = R0 -|- R0 || R2 = [P2] || NOP;
ffa037c8:	12 91 00 00 
ffa037cc:	f9 67       	R1 += -0x1;		/* ( -1) */
ffa037ce:	ff e3 27 fd 	CALL 0xffa0321c <_tcp_packet_setup>;
ffa037d2:	b8 e5 ff ff 	R0 = B[FP + -0x1] (X);
ffa037d6:	00 0d       	CC = R0 <= 0x0;
ffa037d8:	b4 16       	IF !CC JUMP 0xffa03540 <_tcp_rx+0x19c> (BP);
ffa037da:	f1 2d       	JUMP.S 0xffa033bc <_tcp_rx+0x18>;
ffa037dc:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900010(-7340016) */
ffa037e0:	00 e1 7c 05 	R0.L = 0x57c;		/* (1404)	R0=0xff90057c(-7338628) */
ffa037e4:	ff e3 a2 e8 	CALL 0xffa00928 <_printf_str>;
ffa037e8:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa037ea:	ea 2d       	JUMP.S 0xffa033be <_tcp_rx+0x1a>;
ffa037ec:	a1 e5 31 00 	R1 = B[P4 + 0x31] (X);
ffa037f0:	27 2e       	JUMP.S 0xffa0343e <_tcp_rx+0x9a>;
ffa037f2:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
ffa037f4:	18 93       	[P3] = R0;
ffa037f6:	a0 a2       	R0 = [P4 + 0x28];
ffa037f8:	ff e3 10 f0 	CALL 0xffa01818 <_htonl>;
ffa037fc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d38 <_TcpSeqHost> */
ffa03800:	0a e1 3c 0d 	P2.L = 0xd3c;		/* (3388)	P2=0xff900d3c <_TcpSeqClient> */
ffa03804:	10 93       	[P2] = R0;
ffa03806:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900002(-7340030) */
ffa0380a:	00 e1 5c 05 	R0.L = 0x55c;		/* (1372)	R0=0xff90055c(-7338660) */
ffa0380e:	ff e3 8d e8 	CALL 0xffa00928 <_printf_str>;
ffa03812:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03814:	d5 2d       	JUMP.S 0xffa033be <_tcp_rx+0x1a>;
	...

ffa03818 <_htmlForm>:
ffa03818:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa0381c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900004(-7340028) */
ffa03820:	02 e1 c8 05 	R2.L = 0x5c8;		/* (1480)	R2=0xff9005c8(-7338552) */
ffa03824:	01 e8 00 00 	UNLINK;
ffa03828:	ff e2 58 ea 	JUMP.L 0xffa00cd8 <_strcpy_>;

ffa0382c <_htmlDiv>:
ffa0382c:	12 43       	R2 = R2.B (X);
ffa0382e:	23 e1 62 00 	R3 = 0x62 (X);		/*		R3=0x62( 98) */
ffa03832:	1a 08       	CC = R2 == R3;
ffa03834:	00 e8 00 00 	LINK 0x0;		/* (0) */
ffa03838:	09 18       	IF CC JUMP 0xffa0384a <_htmlDiv+0x1e>;
ffa0383a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005c8(-7338552) */
ffa0383e:	02 e1 1c 06 	R2.L = 0x61c;		/* (1564)	R2=0xff90061c(-7338468) */
ffa03842:	01 e8 00 00 	UNLINK;
ffa03846:	ff e2 49 ea 	JUMP.L 0xffa00cd8 <_strcpy_>;
ffa0384a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90061c(-7338468) */
ffa0384e:	02 e1 e8 05 	R2.L = 0x5e8;		/* (1512)	R2=0xff9005e8(-7338520) */
ffa03852:	01 e8 00 00 	UNLINK;
ffa03856:	ff e2 41 ea 	JUMP.L 0xffa00cd8 <_strcpy_>;
	...

ffa0385c <_html404>:
ffa0385c:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03860:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03862:	4f 30       	R1 = FP;
ffa03864:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9005e8(-7338520) */
ffa03868:	f0 bb       	[FP -0x4] = R0;
ffa0386a:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa0386c:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03870:	02 e1 50 06 	R2.L = 0x650;		/* (1616)	R2=0xff900650(-7338416) */
ffa03874:	ff e3 32 ea 	CALL 0xffa00cd8 <_strcpy_>;
ffa03878:	f0 b9       	R0 = [FP -0x4];
ffa0387a:	01 e8 00 00 	UNLINK;
ffa0387e:	10 00       	RTS;

ffa03880 <_htmlCursorOption>:
ffa03880:	68 05       	[--SP] = (R7:5);
ffa03882:	2a 30       	R5 = R2;
ffa03884:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900650(-7338416) */
ffa03888:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa0388c:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R7 = [FP + 0x20] || NOP;
ffa03890:	3f a2 00 00 
ffa03894:	02 e1 6c 06 	R2.L = 0x66c;		/* (1644)	R2=0xff90066c(-7338388) */
ffa03898:	ff e3 20 ea 	CALL 0xffa00cd8 <_strcpy_>;
ffa0389c:	0e 30       	R1 = R6;
ffa0389e:	15 30       	R2 = R5;
ffa038a0:	ff e3 82 eb 	CALL 0xffa00fa4 <_strprintf_int>;
ffa038a4:	3d 08       	CC = R5 == R7;
ffa038a6:	16 18       	IF CC JUMP 0xffa038d2 <_htmlCursorOption+0x52>;
ffa038a8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90066c(-7338388) */
ffa038ac:	0e 30       	R1 = R6;
ffa038ae:	02 e1 94 06 	R2.L = 0x694;		/* (1684)	R2=0xff900694(-7338348) */
ffa038b2:	ff e3 13 ea 	CALL 0xffa00cd8 <_strcpy_>;
ffa038b6:	0e 30       	R1 = R6;
ffa038b8:	15 30       	R2 = R5;
ffa038ba:	ff e3 75 eb 	CALL 0xffa00fa4 <_strprintf_int>;
ffa038be:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900694(-7338348) */
ffa038c2:	01 e8 00 00 	UNLINK;
ffa038c6:	0e 30       	R1 = R6;
ffa038c8:	02 e1 98 06 	R2.L = 0x698;		/* (1688)	R2=0xff900698(-7338344) */
ffa038cc:	28 05       	(R7:5) = [SP++];
ffa038ce:	ff e2 05 ea 	JUMP.L 0xffa00cd8 <_strcpy_>;
ffa038d2:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900698(-7338344) */
ffa038d6:	0e 30       	R1 = R6;
ffa038d8:	02 e1 7c 06 	R2.L = 0x67c;		/* (1660)	R2=0xff90067c(-7338372) */
ffa038dc:	ff e3 fe e9 	CALL 0xffa00cd8 <_strcpy_>;
ffa038e0:	e4 2f       	JUMP.S 0xffa038a8 <_htmlCursorOption+0x28>;
	...

ffa038e4 <_htmlCursorSelect>:
ffa038e4:	60 05       	[--SP] = (R7:4);
ffa038e6:	3a 30       	R7 = R2;
ffa038e8:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90067c(-7338372) */
ffa038ec:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa038f0:	82 ce 01 ca 	R5 = ROT R1 BY 0x0 || R6 = [FP + 0x24] || NOP;
ffa038f4:	7e a2 00 00 
ffa038f8:	02 e1 a4 06 	R2.L = 0x6a4;		/* (1700)	R2=0xff9006a4(-7338332) */
ffa038fc:	bc a2       	R4 = [FP + 0x28];
ffa038fe:	ff e3 ed e9 	CALL 0xffa00cd8 <_strcpy_>;
ffa03902:	17 30       	R2 = R7;
ffa03904:	0d 30       	R1 = R5;
ffa03906:	ff e3 e9 e9 	CALL 0xffa00cd8 <_strcpy_>;
ffa0390a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006a4(-7338332) */
ffa0390e:	0d 30       	R1 = R5;
ffa03910:	02 e1 b0 06 	R2.L = 0x6b0;		/* (1712)	R2=0xff9006b0(-7338320) */
ffa03914:	ff e3 e2 e9 	CALL 0xffa00cd8 <_strcpy_>;
ffa03918:	0d 30       	R1 = R5;
ffa0391a:	16 30       	R2 = R6;
ffa0391c:	ff e3 de e9 	CALL 0xffa00cd8 <_strcpy_>;
ffa03920:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006b0(-7338320) */
ffa03924:	0d 30       	R1 = R5;
ffa03926:	02 e1 cc 06 	R2.L = 0x6cc;		/* (1740)	R2=0xff9006cc(-7338292) */
ffa0392a:	ff e3 d7 e9 	CALL 0xffa00cd8 <_strcpy_>;
ffa0392e:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
ffa03930:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
ffa03934:	f4 b0 00 00 
ffa03938:	17 30       	R2 = R7;
ffa0393a:	ff e3 a3 ff 	CALL 0xffa03880 <_htmlCursorOption>;
ffa0393e:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03940:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
ffa03942:	0f 08       	CC = R7 == R1;
ffa03944:	f6 17       	IF !CC JUMP 0xffa03930 <_htmlCursorSelect+0x4c> (BP);
ffa03946:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006cc(-7338292) */
ffa0394a:	01 e8 00 00 	UNLINK;
ffa0394e:	0d 30       	R1 = R5;
ffa03950:	02 e1 d0 06 	R2.L = 0x6d0;		/* (1744)	R2=0xff9006d0(-7338288) */
ffa03954:	20 05       	(R7:4) = [SP++];
ffa03956:	ff e2 c1 e9 	JUMP.L 0xffa00cd8 <_strcpy_>;
	...

ffa0395c <_htmlDefault>:
ffa0395c:	ed 05       	[--SP] = (R7:5, P5:5);
ffa0395e:	00 e8 06 00 	LINK 0x18;		/* (24) */
ffa03962:	77 30       	R6 = FP;
ffa03964:	e6 67       	R6 += -0x4;		/* ( -4) */
ffa03966:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03968:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9006d0(-7338288) */
ffa0396c:	f0 bb       	[FP -0x4] = R0;
ffa0396e:	0e 30       	R1 = R6;
ffa03970:	02 e1 e8 06 	R2.L = 0x6e8;		/* (1768)	R2=0xff9006e8(-7338264) */
ffa03974:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03978:	ff e3 b0 e9 	CALL 0xffa00cd8 <_strcpy_>;
ffa0397c:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03980:	0e 30       	R1 = R6;
ffa03982:	ff e3 55 ff 	CALL 0xffa0382c <_htmlDiv>;
ffa03986:	0e 30       	R1 = R6;
ffa03988:	ff e3 48 ff 	CALL 0xffa03818 <_htmlForm>;
ffa0398c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03990:	0e 30       	R1 = R6;
ffa03992:	02 e1 38 07 	R2.L = 0x738;		/* (1848)	R2=0xff900738(-7338184) */
ffa03996:	ff e3 a1 e9 	CALL 0xffa00cd8 <_strcpy_>;
ffa0399a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d3c <_TcpSeqClient> */
ffa0399e:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa039a2:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa039a6:	10 99 00 00 
ffa039aa:	00 0c       	CC = R0 == 0x0;
ffa039ac:	2c 1d       	IF CC JUMP 0xffa03c04 <_htmlDefault+0x2a8> (BP);
ffa039ae:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900738(-7338184) */
ffa039b2:	01 30       	R0 = R1;
ffa039b4:	02 e1 88 07 	R2.L = 0x788;		/* (1928)	R2=0xff900788(-7338104) */
ffa039b8:	0e 30       	R1 = R6;
ffa039ba:	ff e3 8f e9 	CALL 0xffa00cd8 <_strcpy_>;
ffa039be:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900788(-7338104) */
ffa039c2:	0e 30       	R1 = R6;
ffa039c4:	02 e1 a0 07 	R2.L = 0x7a0;		/* (1952)	R2=0xff9007a0(-7338080) */
ffa039c8:	ff e3 88 e9 	CALL 0xffa00cd8 <_strcpy_>;
ffa039cc:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa039d0:	0e 30       	R1 = R6;
ffa039d2:	ff e3 2d ff 	CALL 0xffa0382c <_htmlDiv>;
ffa039d6:	0e 30       	R1 = R6;
ffa039d8:	ff e3 20 ff 	CALL 0xffa03818 <_htmlForm>;
ffa039dc:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa039e0:	0e 30       	R1 = R6;
ffa039e2:	02 e1 b4 07 	R2.L = 0x7b4;		/* (1972)	R2=0xff9007b4(-7338060) */
ffa039e6:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900d38 <_TcpSeqHost> */
ffa039ea:	ff e3 77 e9 	CALL 0xffa00cd8 <_strcpy_>;
ffa039ee:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa039f0:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
ffa039f2:	0d e1 64 0c 	P5.L = 0xc64;		/* (3172)	P5=0xff900c64 <_NetDataDestIP> */
ffa039f6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007b4(-7338060) */
ffa039fa:	0e 30       	R1 = R6;
ffa039fc:	02 e1 d0 07 	R2.L = 0x7d0;		/* (2000)	R2=0xff9007d0(-7338032) */
ffa03a00:	ff e3 6c e9 	CALL 0xffa00cd8 <_strcpy_>;
ffa03a04:	17 30       	R2 = R7;
ffa03a06:	0e 30       	R1 = R6;
ffa03a08:	ff e3 ce ea 	CALL 0xffa00fa4 <_strprintf_int>;
ffa03a0c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007d0(-7338032) */
ffa03a10:	0e 30       	R1 = R6;
ffa03a12:	02 e1 ec 07 	R2.L = 0x7ec;		/* (2028)	R2=0xff9007ec(-7338004) */
ffa03a16:	ff e3 61 e9 	CALL 0xffa00cd8 <_strcpy_>;
ffa03a1a:	2a 91       	R2 = [P5];
ffa03a1c:	6a 40       	R2 >>= R5;
ffa03a1e:	52 43       	R2 = R2.B (Z);
ffa03a20:	0e 30       	R1 = R6;
ffa03a22:	ff e3 c1 ea 	CALL 0xffa00fa4 <_strprintf_int>;
ffa03a26:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007ec(-7338004) */
ffa03a2a:	0e 30       	R1 = R6;
ffa03a2c:	02 e1 00 08 	R2.L = 0x800;		/* (2048)	R2=0xff900800(-7337984) */
ffa03a30:	ff e3 54 e9 	CALL 0xffa00cd8 <_strcpy_>;
ffa03a34:	0f 64       	R7 += 0x1;		/* (  1) */
ffa03a36:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
ffa03a38:	0f 08       	CC = R7 == R1;
ffa03a3a:	45 64       	R5 += 0x8;		/* (  8) */
ffa03a3c:	dd 17       	IF !CC JUMP 0xffa039f6 <_htmlDefault+0x9a> (BP);
ffa03a3e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900800(-7337984) */
ffa03a42:	0e 30       	R1 = R6;
ffa03a44:	02 e1 08 08 	R2.L = 0x808;		/* (2056)	R2=0xff900808(-7337976) */
ffa03a48:	ff e3 48 e9 	CALL 0xffa00cd8 <_strcpy_>;
ffa03a4c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900808(-7337976) */
ffa03a50:	0e 30       	R1 = R6;
ffa03a52:	02 e1 a0 07 	R2.L = 0x7a0;		/* (1952)	R2=0xff9007a0(-7338080) */
ffa03a56:	ff e3 41 e9 	CALL 0xffa00cd8 <_strcpy_>;
ffa03a5a:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03a5e:	0e 30       	R1 = R6;
ffa03a60:	ff e3 e6 fe 	CALL 0xffa0382c <_htmlDiv>;
ffa03a64:	0e 30       	R1 = R6;
ffa03a66:	ff e3 d9 fe 	CALL 0xffa03818 <_htmlForm>;
ffa03a6a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03a6e:	0e 30       	R1 = R6;
ffa03a70:	02 e1 2c 08 	R2.L = 0x82c;		/* (2092)	R2=0xff90082c(-7337940) */
ffa03a74:	ff e3 32 e9 	CALL 0xffa00cd8 <_strcpy_>;
ffa03a78:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bb8 */
ffa03a7c:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa03a80:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = B[P2] (Z) || NOP;
ffa03a84:	10 99 00 00 
ffa03a88:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
ffa03a8a:	c6 1c       	IF CC JUMP 0xffa03c16 <_htmlDefault+0x2ba> (BP);
ffa03a8c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90082c(-7337940) */
ffa03a90:	01 30       	R0 = R1;
ffa03a92:	02 e1 94 07 	R2.L = 0x794;		/* (1940)	R2=0xff900794(-7338092) */
ffa03a96:	0e 30       	R1 = R6;
ffa03a98:	ff e3 20 e9 	CALL 0xffa00cd8 <_strcpy_>;
ffa03a9c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900794(-7338092) */
ffa03aa0:	0e 30       	R1 = R6;
ffa03aa2:	02 e1 a0 07 	R2.L = 0x7a0;		/* (1952)	R2=0xff9007a0(-7338080) */
ffa03aa6:	ff e3 19 e9 	CALL 0xffa00cd8 <_strcpy_>;
ffa03aaa:	0e 30       	R1 = R6;
ffa03aac:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03ab0:	ff e3 be fe 	CALL 0xffa0382c <_htmlDiv>;
ffa03ab4:	0e 30       	R1 = R6;
ffa03ab6:	ff e3 b1 fe 	CALL 0xffa03818 <_htmlForm>;
ffa03aba:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03abe:	0e 30       	R1 = R6;
ffa03ac0:	02 e1 6c 08 	R2.L = 0x86c;		/* (2156)	R2=0xff90086c(-7337876) */
ffa03ac4:	ff e3 0a e9 	CALL 0xffa00cd8 <_strcpy_>;
ffa03ac8:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900005(-7340027) */
ffa03acc:	01 e1 9c 08 	R1.L = 0x89c;		/* (2204)	R1=0xff90089c(-7337828) */
ffa03ad0:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90086c(-7337876) */
ffa03ad4:	00 cc 3f ce 	R7 = R7 -|- R7 || [SP + 0xc] = R1 || NOP;
ffa03ad8:	f1 b0 00 00 
ffa03adc:	02 e1 90 08 	R2.L = 0x890;		/* (2192)	R2=0xff900890(-7337840) */
ffa03ae0:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03ae4:	37 b1 00 00 
ffa03ae8:	ff e3 fe fe 	CALL 0xffa038e4 <_htmlCursorSelect>;
ffa03aec:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff90089c(-7337828) */
ffa03af0:	01 e1 b4 08 	R1.L = 0x8b4;		/* (2228)	R1=0xff9008b4(-7337804) */
ffa03af4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900890(-7337840) */
ffa03af8:	f1 b0       	[SP + 0xc] = R1;
ffa03afa:	02 e1 a8 08 	R2.L = 0x8a8;		/* (2216)	R2=0xff9008a8(-7337816) */
ffa03afe:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03b02:	37 b1 00 00 
ffa03b06:	ff e3 ef fe 	CALL 0xffa038e4 <_htmlCursorSelect>;
ffa03b0a:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008b4(-7337804) */
ffa03b0e:	01 e1 cc 08 	R1.L = 0x8cc;		/* (2252)	R1=0xff9008cc(-7337780) */
ffa03b12:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008a8(-7337816) */
ffa03b16:	f1 b0       	[SP + 0xc] = R1;
ffa03b18:	02 e1 c0 08 	R2.L = 0x8c0;		/* (2240)	R2=0xff9008c0(-7337792) */
ffa03b1c:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03b20:	37 b1 00 00 
ffa03b24:	ff e3 e0 fe 	CALL 0xffa038e4 <_htmlCursorSelect>;
ffa03b28:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff9008cc(-7337780) */
ffa03b2c:	01 e1 e0 08 	R1.L = 0x8e0;		/* (2272)	R1=0xff9008e0(-7337760) */
ffa03b30:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008c0(-7337792) */
ffa03b34:	f1 b0       	[SP + 0xc] = R1;
ffa03b36:	02 e1 d8 08 	R2.L = 0x8d8;		/* (2264)	R2=0xff9008d8(-7337768) */
ffa03b3a:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0x10] = R7 || NOP;
ffa03b3e:	37 b1 00 00 
ffa03b42:	ff e3 d1 fe 	CALL 0xffa038e4 <_htmlCursorSelect>;
ffa03b46:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9008d8(-7337768) */
ffa03b4a:	0e 30       	R1 = R6;
ffa03b4c:	02 e1 ec 08 	R2.L = 0x8ec;		/* (2284)	R2=0xff9008ec(-7337748) */
ffa03b50:	ff e3 c4 e8 	CALL 0xffa00cd8 <_strcpy_>;
ffa03b54:	0e 30       	R1 = R6;
ffa03b56:	22 e1 67 00 	R2 = 0x67 (X);		/*		R2=0x67(103) */
ffa03b5a:	ff e3 69 fe 	CALL 0xffa0382c <_htmlDiv>;
ffa03b5e:	0e 30       	R1 = R6;
ffa03b60:	ff e3 5c fe 	CALL 0xffa03818 <_htmlForm>;
ffa03b64:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900067(-7339929) */
ffa03b68:	0e 30       	R1 = R6;
ffa03b6a:	02 e1 28 09 	R2.L = 0x928;		/* (2344)	R2=0xff900928(-7337688) */
ffa03b6e:	ff e3 b5 e8 	CALL 0xffa00cd8 <_strcpy_>;
ffa03b72:	0e 30       	R1 = R6;
ffa03b74:	22 e1 62 00 	R2 = 0x62 (X);		/*		R2=0x62( 98) */
ffa03b78:	ff e3 5a fe 	CALL 0xffa0382c <_htmlDiv>;
ffa03b7c:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900062(-7339934) */
ffa03b80:	0e 30       	R1 = R6;
ffa03b82:	02 e1 80 09 	R2.L = 0x980;		/* (2432)	R2=0xff900980(-7337600) */
ffa03b86:	ff e3 a9 e8 	CALL 0xffa00cd8 <_strcpy_>;
ffa03b8a:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900980(-7337600) */
ffa03b8e:	0e 30       	R1 = R6;
ffa03b90:	02 e1 a8 09 	R2.L = 0x9a8;		/* (2472)	R2=0xff9009a8(-7337560) */
ffa03b94:	ff e3 a2 e8 	CALL 0xffa00cd8 <_strcpy_>;
ffa03b98:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009a8(-7337560) */
ffa03b9c:	0e 30       	R1 = R6;
ffa03b9e:	02 e1 a0 07 	R2.L = 0x7a0;		/* (1952)	R2=0xff9007a0(-7338080) */
ffa03ba2:	ff e3 9b e8 	CALL 0xffa00cd8 <_strcpy_>;
ffa03ba6:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9007a0(-7338080) */
ffa03baa:	0e 30       	R1 = R6;
ffa03bac:	02 e1 f0 09 	R2.L = 0x9f0;		/* (2544)	R2=0xff9009f0(-7337488) */
ffa03bb0:	ff e3 94 e8 	CALL 0xffa00cd8 <_strcpy_>;
ffa03bb4:	0e 30       	R1 = R6;
ffa03bb6:	22 e1 75 ff 	R2 = -0x8b (X);		/*		R2=0xffffff75(-139) */
ffa03bba:	ff e3 f5 e9 	CALL 0xffa00fa4 <_strprintf_int>;
ffa03bbe:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ff75(-7274635) */
ffa03bc2:	0e 30       	R1 = R6;
ffa03bc4:	02 e1 6c 00 	R2.L = 0x6c;		/* (108)	R2=0xff90006c(-7339924) */
ffa03bc8:	ff e3 88 e8 	CALL 0xffa00cd8 <_strcpy_>;
ffa03bcc:	0e 30       	R1 = R6;
ffa03bce:	92 62       	R2 = -0x2e (X);		/*		R2=0xffffffd2(-46) */
ffa03bd0:	ff e3 ea e9 	CALL 0xffa00fa4 <_strprintf_int>;
ffa03bd4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90ffd2(-7274542) */
ffa03bd8:	0e 30       	R1 = R6;
ffa03bda:	02 e1 44 00 	R2.L = 0x44;		/* ( 68)	R2=0xff900044(-7339964) */
ffa03bde:	ff e3 7d e8 	CALL 0xffa00cd8 <_strcpy_>;
ffa03be2:	0e 30       	R1 = R6;
ffa03be4:	22 e1 d0 fd 	R2 = -0x230 (X);		/*		R2=0xfffffdd0(-560) */
ffa03be8:	ff e3 de e9 	CALL 0xffa00fa4 <_strprintf_int>;
ffa03bec:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff90fdd0(-7275056) */
ffa03bf0:	0e 30       	R1 = R6;
ffa03bf2:	02 e1 fc 09 	R2.L = 0x9fc;		/* (2556)	R2=0xff9009fc(-7337476) */
ffa03bf6:	ff e3 71 e8 	CALL 0xffa00cd8 <_strcpy_>;
ffa03bfa:	f0 b9       	R0 = [FP -0x4];
ffa03bfc:	01 e8 00 00 	UNLINK;
ffa03c00:	ad 05       	(R7:5, P5:5) = [SP++];
ffa03c02:	10 00       	RTS;
ffa03c04:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff9009fc(-7337476) */
ffa03c08:	01 30       	R0 = R1;
ffa03c0a:	02 e1 94 07 	R2.L = 0x794;		/* (1940)	R2=0xff900794(-7338092) */
ffa03c0e:	0e 30       	R1 = R6;
ffa03c10:	ff e3 64 e8 	CALL 0xffa00cd8 <_strcpy_>;
ffa03c14:	d5 2e       	JUMP.S 0xffa039be <_htmlDefault+0x62>;
ffa03c16:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900794(-7338092) */
ffa03c1a:	01 30       	R0 = R1;
ffa03c1c:	02 e1 88 07 	R2.L = 0x788;		/* (1928)	R2=0xff900788(-7338104) */
ffa03c20:	0e 30       	R1 = R6;
ffa03c22:	ff e3 5b e8 	CALL 0xffa00cd8 <_strcpy_>;
ffa03c26:	3b 2f       	JUMP.S 0xffa03a9c <_htmlDefault+0x140>;

ffa03c28 <_httpHeader>:
ffa03c28:	78 05       	[--SP] = (R7:7);
ffa03c2a:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03c2e:	7f 30       	R7 = FP;
ffa03c30:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03c32:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03c34:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900788(-7338104) */
ffa03c38:	f0 bb       	[FP -0x4] = R0;
ffa03c3a:	0f 30       	R1 = R7;
ffa03c3c:	02 e1 14 0a 	R2.L = 0xa14;		/* (2580)	R2=0xff900a14(-7337452) */
ffa03c40:	20 e1 00 40 	R0 = 0x4000 (X);		/*		R0=0x4000(16384) */
ffa03c44:	ff e3 4a e8 	CALL 0xffa00cd8 <_strcpy_>;
ffa03c48:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a14(-7337452) */
ffa03c4c:	0f 30       	R1 = R7;
ffa03c4e:	02 e1 28 0a 	R2.L = 0xa28;		/* (2600)	R2=0xff900a28(-7337432) */
ffa03c52:	ff e3 43 e8 	CALL 0xffa00cd8 <_strcpy_>;
ffa03c56:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a28(-7337432) */
ffa03c5a:	0f 30       	R1 = R7;
ffa03c5c:	02 e1 3c 0a 	R2.L = 0xa3c;		/* (2620)	R2=0xff900a3c(-7337412) */
ffa03c60:	ff e3 3c e8 	CALL 0xffa00cd8 <_strcpy_>;
ffa03c64:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa03c68:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03c6c:	12 91       	R2 = [P2];
ffa03c6e:	0f 30       	R1 = R7;
ffa03c70:	ff e3 9a e9 	CALL 0xffa00fa4 <_strprintf_int>;
ffa03c74:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900a3c(-7337412) */
ffa03c78:	0f 30       	R1 = R7;
ffa03c7a:	02 e1 50 0a 	R2.L = 0xa50;		/* (2640)	R2=0xff900a50(-7337392) */
ffa03c7e:	ff e3 2d e8 	CALL 0xffa00cd8 <_strcpy_>;
ffa03c82:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa03c86:	f0 b9       	R0 = [FP -0x4];
ffa03c88:	0a e1 54 0d 	P2.L = 0xd54;		/* (3412)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa03c8c:	10 93       	[P2] = R0;
ffa03c8e:	01 e8 00 00 	UNLINK;
ffa03c92:	38 05       	(R7:7) = [SP++];
ffa03c94:	10 00       	RTS;
	...

ffa03c98 <_htmlGeneric>:
ffa03c98:	00 e8 04 00 	LINK 0x10;		/* (16) */
ffa03c9c:	10 30       	R2 = R0;
ffa03c9e:	4f 30       	R1 = FP;
ffa03ca0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ca2:	f0 bb       	[FP -0x4] = R0;
ffa03ca4:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03ca6:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03caa:	ff e3 17 e8 	CALL 0xffa00cd8 <_strcpy_>;
ffa03cae:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d54 <_g_httpHeaderLen> */
ffa03cb2:	f0 b9       	R0 = [FP -0x4];
ffa03cb4:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03cb8:	10 93       	[P2] = R0;
ffa03cba:	ff e3 b7 ff 	CALL 0xffa03c28 <_httpHeader>;
ffa03cbe:	f0 b9       	R0 = [FP -0x4];
ffa03cc0:	01 e8 00 00 	UNLINK;
ffa03cc4:	10 00       	RTS;
	...

ffa03cc8 <_httpResp>:
ffa03cc8:	60 05       	[--SP] = (R7:4);
ffa03cca:	30 30       	R6 = R0;
ffa03ccc:	70 60       	R0 = 0xe (X);		/*		R0=0xe( 14) */
ffa03cce:	01 09       	CC = R1 <= R0;
ffa03cd0:	00 e8 14 00 	LINK 0x50;		/* (80) */
ffa03cd4:	39 30       	R7 = R1;
ffa03cd6:	21 10       	IF !CC JUMP 0xffa03d18 <_httpResp+0x50>;
ffa03cd8:	89 60       	R1 = 0x11 (X);		/*		R1=0x11( 17) */
ffa03cda:	0f 09       	CC = R7 <= R1;
ffa03cdc:	34 10       	IF !CC JUMP 0xffa03d44 <_httpResp+0x7c>;
ffa03cde:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff90000e(-7340018) */
ffa03ce2:	00 e1 0c 0a 	R0.L = 0xa0c;		/* (2572)	R0=0xff900a0c(-7337460) */
ffa03ce6:	0e 30       	R1 = R6;
ffa03ce8:	17 30       	R2 = R7;
ffa03cea:	ff e3 65 e8 	CALL 0xffa00db4 <_substr>;
ffa03cee:	00 0c       	CC = R0 == 0x0;
ffa03cf0:	06 10       	IF !CC JUMP 0xffa03cfc <_httpResp+0x34>;
ffa03cf2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03cf4:	01 e8 00 00 	UNLINK;
ffa03cf8:	20 05       	(R7:4) = [SP++];
ffa03cfa:	10 00       	RTS;
ffa03cfc:	ff e3 b0 fd 	CALL 0xffa0385c <_html404>;
ffa03d00:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900d58 <_g_httpContentLen> */
ffa03d04:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03d08:	10 93       	[P2] = R0;
ffa03d0a:	ff e3 8f ff 	CALL 0xffa03c28 <_httpHeader>;
ffa03d0e:	01 e8 00 00 	UNLINK;
ffa03d12:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03d14:	20 05       	(R7:4) = [SP++];
ffa03d16:	10 00       	RTS;
ffa03d18:	41 e1 90 ff 	R1.H = 0xff90;		/* (-112)	R1=0xff900011(-7340015) */
ffa03d1c:	06 30       	R0 = R6;
ffa03d1e:	01 e1 70 0a 	R1.L = 0xa70;		/* (2672)	R1=0xff900a70(-7337360) */
ffa03d22:	ff e3 1b e8 	CALL 0xffa00d58 <_strcmp>;
ffa03d26:	00 0c       	CC = R0 == 0x0;
ffa03d28:	d8 1f       	IF CC JUMP 0xffa03cd8 <_httpResp+0x10> (BP);
ffa03d2a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03d2e:	00 e1 0c 0a 	R0.L = 0xa0c;		/* (2572)	R0=0xff900a0c(-7337460) */
ffa03d32:	0e 30       	R1 = R6;
ffa03d34:	17 30       	R2 = R7;
ffa03d36:	ff e3 3f e8 	CALL 0xffa00db4 <_substr>;
ffa03d3a:	00 0c       	CC = R0 == 0x0;
ffa03d3c:	db 1f       	IF CC JUMP 0xffa03cf2 <_httpResp+0x2a> (BP);
ffa03d3e:	ff e3 0f fe 	CALL 0xffa0395c <_htmlDefault>;
ffa03d42:	df 2f       	JUMP.S 0xffa03d00 <_httpResp+0x38>;
ffa03d44:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a0c(-7337460) */
ffa03d48:	00 e1 7c 0a 	R0.L = 0xa7c;		/* (2684)	R0=0xff900a7c(-7337348) */
ffa03d4c:	0e 30       	R1 = R6;
ffa03d4e:	17 30       	R2 = R7;
ffa03d50:	ff e3 32 e8 	CALL 0xffa00db4 <_substr>;
ffa03d54:	00 0c       	CC = R0 == 0x0;
ffa03d56:	3c 1c       	IF CC JUMP 0xffa03dce <_httpResp+0x106> (BP);
ffa03d58:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900a7c(-7337348) */
ffa03d5c:	00 e1 88 0a 	R0.L = 0xa88;		/* (2696)	R0=0xff900a88(-7337336) */
ffa03d60:	0e 30       	R1 = R6;
ffa03d62:	17 30       	R2 = R7;
ffa03d64:	ff e3 28 e8 	CALL 0xffa00db4 <_substr>;
ffa03d68:	00 0c       	CC = R0 == 0x0;
ffa03d6a:	c4 1f       	IF CC JUMP 0xffa03cf2 <_httpResp+0x2a> (BP);
ffa03d6c:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
ffa03d6e:	06 50       	R0 = R6 + R0;
ffa03d70:	ff e3 42 e9 	CALL 0xffa00ff4 <_atoi>;
ffa03d74:	08 30       	R1 = R0;
ffa03d76:	22 e1 80 0f 	R2 = 0xf80 (X);		/*		R2=0xf80(3968) */
ffa03d7a:	00 67       	R0 += -0x20;		/* (-32) */
ffa03d7c:	10 0a       	CC = R0 <= R2 (IU);
ffa03d7e:	24 11       	IF !CC JUMP 0xffa03fc6 <_httpResp+0x2fe>;
ffa03d80:	82 c6 19 84 	R2 = R1 << 0x3;
ffa03d84:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800d58 */
ffa03d88:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03d8c:	02 0d       	CC = R2 <= 0x0;
ffa03d8e:	13 91       	R3 = [P2];
ffa03d90:	82 c6 29 8e 	R7 = R1 << 0x5;
ffa03d94:	14 18       	IF CC JUMP 0xffa03dbc <_httpResp+0xf4>;
ffa03d96:	20 e1 ff 1f 	R0 = 0x1fff (X);		/*		R0=0x1fff(8191) */
ffa03d9a:	28 4f       	R0 <<= 0x5;
ffa03d9c:	03 54       	R0 = R3 & R0;
ffa03d9e:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
ffa03da0:	38 52       	R0 = R0 - R7;
ffa03da2:	29 e1 00 41 	P1 = 0x4100 (X);		/*		P1=0x4100(16640) */
ffa03da6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
ffa03da8:	43 e1 03 00 	R3.H = 0x3;		/* (  3)	R3=0x3ffff(262143) */
ffa03dac:	18 54       	R0 = R0 & R3;
ffa03dae:	10 32       	P2 = R0;
ffa03db0:	09 64       	R1 += 0x1;		/* (  1) */
ffa03db2:	0a 08       	CC = R2 == R1;
ffa03db4:	10 90       	R0 = [P2++];
ffa03db6:	08 92       	[P1++] = R0;
ffa03db8:	42 30       	R0 = P2;
ffa03dba:	f9 17       	IF !CC JUMP 0xffa03dac <_httpResp+0xe4> (BP);
ffa03dbc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900804 */
ffa03dc0:	0a e1 58 0d 	P2.L = 0xd58;		/* (3416)	P2=0xff900d58 <_g_httpContentLen> */
ffa03dc4:	17 93       	[P2] = R7;
ffa03dc6:	ff e3 31 ff 	CALL 0xffa03c28 <_httpHeader>;
ffa03dca:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa03dcc:	94 2f       	JUMP.S 0xffa03cf4 <_httpResp+0x2c>;
ffa03dce:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa03dd2:	00 e1 bc 0a 	R0.L = 0xabc;		/* (2748)	R0=0xff900abc(-7337284) */
ffa03dd6:	0e 30       	R1 = R6;
ffa03dd8:	17 30       	R2 = R7;
ffa03dda:	ff e3 ed e7 	CALL 0xffa00db4 <_substr>;
ffa03dde:	00 0c       	CC = R0 == 0x0;
ffa03de0:	7f 1f       	IF CC JUMP 0xffa03cde <_httpResp+0x16> (BP);
ffa03de2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900abc(-7337284) */
ffa03de6:	0e 30       	R1 = R6;
ffa03de8:	17 30       	R2 = R7;
ffa03dea:	00 e1 bc 0a 	R0.L = 0xabc;		/* (2748)	R0=0xff900abc(-7337284) */
ffa03dee:	ff e3 e3 e7 	CALL 0xffa00db4 <_substr>;
ffa03df2:	86 51       	R6 = R6 + R0;
ffa03df4:	47 53       	R5 = R7 - R0;
ffa03df6:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900abc(-7337284) */
ffa03dfa:	00 e1 c4 0a 	R0.L = 0xac4;		/* (2756)	R0=0xff900ac4(-7337276) */
ffa03dfe:	0e 30       	R1 = R6;
ffa03e00:	15 30       	R2 = R5;
ffa03e02:	ff e3 d9 e7 	CALL 0xffa00db4 <_substr>;
ffa03e06:	00 0c       	CC = R0 == 0x0;
ffa03e08:	10 11       	IF !CC JUMP 0xffa04028 <_httpResp+0x360>;
ffa03e0a:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa03e0c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ac4(-7337276) */
ffa03e10:	00 e1 e8 0a 	R0.L = 0xae8;		/* (2792)	R0=0xff900ae8(-7337240) */
ffa03e14:	0e 30       	R1 = R6;
ffa03e16:	15 30       	R2 = R5;
ffa03e18:	ff e3 ce e7 	CALL 0xffa00db4 <_substr>;
ffa03e1c:	00 0c       	CC = R0 == 0x0;
ffa03e1e:	e2 10       	IF !CC JUMP 0xffa03fe2 <_httpResp+0x31a>;
ffa03e20:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ae8(-7337240) */
ffa03e24:	0e 30       	R1 = R6;
ffa03e26:	00 e1 f4 0a 	R0.L = 0xaf4;		/* (2804)	R0=0xff900af4(-7337228) */
ffa03e2a:	15 30       	R2 = R5;
ffa03e2c:	ff e3 c4 e7 	CALL 0xffa00db4 <_substr>;
ffa03e30:	00 0c       	CC = R0 == 0x0;
ffa03e32:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900af4(-7337228) */
ffa03e36:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
ffa03e38:	0e 30       	R1 = R6;
ffa03e3a:	15 30       	R2 = R5;
ffa03e3c:	00 e1 00 0b 	R0.L = 0xb00;		/* (2816)	R0=0xff900b00(-7337216) */
ffa03e40:	27 06       	IF !CC R4 = R7;
ffa03e42:	ff e3 b9 e7 	CALL 0xffa00db4 <_substr>;
ffa03e46:	00 0c       	CC = R0 == 0x0;
ffa03e48:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b00(-7337216) */
ffa03e4c:	0e 30       	R1 = R6;
ffa03e4e:	15 30       	R2 = R5;
ffa03e50:	00 e1 0c 0b 	R0.L = 0xb0c;		/* (2828)	R0=0xff900b0c(-7337204) */
ffa03e54:	27 06       	IF !CC R4 = R7;
ffa03e56:	ff e3 af e7 	CALL 0xffa00db4 <_substr>;
ffa03e5a:	00 0c       	CC = R0 == 0x0;
ffa03e5c:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b0c(-7337204) */
ffa03e60:	0e 30       	R1 = R6;
ffa03e62:	15 30       	R2 = R5;
ffa03e64:	00 e1 18 0b 	R0.L = 0xb18;		/* (2840)	R0=0xff900b18(-7337192) */
ffa03e68:	27 06       	IF !CC R4 = R7;
ffa03e6a:	ff e3 a5 e7 	CALL 0xffa00db4 <_substr>;
ffa03e6e:	00 0c       	CC = R0 == 0x0;
ffa03e70:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b18(-7337192) */
ffa03e74:	00 e1 24 0b 	R0.L = 0xb24;		/* (2852)	R0=0xff900b24(-7337180) */
ffa03e78:	0e 30       	R1 = R6;
ffa03e7a:	15 30       	R2 = R5;
ffa03e7c:	27 06       	IF !CC R4 = R7;
ffa03e7e:	ff e3 9b e7 	CALL 0xffa00db4 <_substr>;
ffa03e82:	00 0c       	CC = R0 == 0x0;
ffa03e84:	15 11       	IF !CC JUMP 0xffa040ae <_httpResp+0x3e6>;
ffa03e86:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b24(-7337180) */
ffa03e8a:	00 e1 2c 0b 	R0.L = 0xb2c;		/* (2860)	R0=0xff900b2c(-7337172) */
ffa03e8e:	0e 30       	R1 = R6;
ffa03e90:	15 30       	R2 = R5;
ffa03e92:	ff e3 91 e7 	CALL 0xffa00db4 <_substr>;
ffa03e96:	00 0c       	CC = R0 == 0x0;
ffa03e98:	f6 10       	IF !CC JUMP 0xffa04084 <_httpResp+0x3bc>;
ffa03e9a:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b2c(-7337172) */
ffa03e9e:	00 e1 34 0b 	R0.L = 0xb34;		/* (2868)	R0=0xff900b34(-7337164) */
ffa03ea2:	0e 30       	R1 = R6;
ffa03ea4:	15 30       	R2 = R5;
ffa03ea6:	ff e3 87 e7 	CALL 0xffa00db4 <_substr>;
ffa03eaa:	00 0c       	CC = R0 == 0x0;
ffa03eac:	13 11       	IF !CC JUMP 0xffa040d2 <_httpResp+0x40a>;
ffa03eae:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b34(-7337164) */
ffa03eb2:	00 e1 3c 0b 	R0.L = 0xb3c;		/* (2876)	R0=0xff900b3c(-7337156) */
ffa03eb6:	0e 30       	R1 = R6;
ffa03eb8:	15 30       	R2 = R5;
ffa03eba:	ff e3 7d e7 	CALL 0xffa00db4 <_substr>;
ffa03ebe:	00 0c       	CC = R0 == 0x0;
ffa03ec0:	d1 10       	IF !CC JUMP 0xffa04062 <_httpResp+0x39a>;
ffa03ec2:	20 43       	R0 = R4.B (X);
ffa03ec4:	00 0c       	CC = R0 == 0x0;
ffa03ec6:	3c 17       	IF !CC JUMP 0xffa03d3e <_httpResp+0x76> (BP);
ffa03ec8:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900b3c(-7337156) */
ffa03ecc:	00 e1 44 0b 	R0.L = 0xb44;		/* (2884)	R0=0xff900b44(-7337148) */
ffa03ed0:	0e 30       	R1 = R6;
ffa03ed2:	15 30       	R2 = R5;
ffa03ed4:	ff e3 70 e7 	CALL 0xffa00db4 <_substr>;
ffa03ed8:	00 0c       	CC = R0 == 0x0;
ffa03eda:	0c 1b       	IF CC JUMP 0xffa03cf2 <_httpResp+0x2a>;
ffa03edc:	7f 30       	R7 = FP;
ffa03ede:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03ee2:	57 5a       	P1 = FP + P2;
ffa03ee4:	e7 67       	R7 += -0x4;		/* ( -4) */
ffa03ee6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ee8:	82 68       	P2 = 0x10 (X);		/*		P2=0x10( 16) */
ffa03eea:	b2 e0 02 20 	LSETUP(0xffa03eee <_httpResp+0x226>, 0xffa03eee <_httpResp+0x226>) LC1 = P2;
ffa03eee:	08 92       	[P1++] = R0;
ffa03ef0:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800010 */
ffa03ef4:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa03ef8:	21 e1 ff 1f 	R1 = 0x1fff (X);		/*		R1=0x1fff(8191) */
ffa03efc:	29 4f       	R1 <<= 0x5;
ffa03efe:	10 91       	R0 = [P2];
ffa03f00:	08 54       	R0 = R0 & R1;
ffa03f02:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03f04:	81 4f       	R1 <<= 0x10;
ffa03f06:	08 50       	R0 = R0 + R1;
ffa03f08:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
ffa03f0a:	41 e1 03 00 	R1.H = 0x3;		/* (  3)	R1=0x3ffff(262143) */
ffa03f0e:	88 54       	R2 = R0 & R1;
ffa03f10:	29 e1 00 08 	P1 = 0x800 (X);		/*		P1=0x800(2048) */
ffa03f14:	b2 e0 12 10 	LSETUP(0xffa03f18 <_httpResp+0x250>, 0xffa03f38 <_httpResp+0x270>) LC1 = P1;
ffa03f18:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03f1c:	97 5a       	P2 = FP + P2;
ffa03f1e:	02 32       	P0 = R2;
ffa03f20:	11 91       	R1 = [P2];
ffa03f22:	12 64       	R2 += 0x2;		/* (  2) */
ffa03f24:	00 94       	R0 = W[P0++] (Z);
ffa03f26:	41 50       	R1 = R1 + R0;
ffa03f28:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
ffa03f2a:	40 e1 03 00 	R0.H = 0x3;		/* (  3)	R0=0x3ffff(262143) */
ffa03f2e:	11 92       	[P2++] = R1;
ffa03f30:	82 54       	R2 = R2 & R0;
ffa03f32:	42 30       	R0 = P2;
ffa03f34:	38 08       	CC = R0 == R7;
ffa03f36:	f4 17       	IF !CC JUMP 0xffa03f1e <_httpResp+0x256> (BP);
ffa03f38:	00 00       	NOP;
ffa03f3a:	2a e1 bc ff 	P2 = -0x44 (X);		/*		P2=0xffffffbc(-68) */
ffa03f3e:	97 5a       	P2 = FP + P2;
ffa03f40:	00 00       	NOP;
ffa03f42:	10 91       	R0 = [P2];
ffa03f44:	58 4d       	R0 >>>= 0xb;
ffa03f46:	10 92       	[P2++] = R0;
ffa03f48:	4a 30       	R1 = P2;
ffa03f4a:	39 08       	CC = R1 == R7;
ffa03f4c:	fa 17       	IF !CC JUMP 0xffa03f40 <_httpResp+0x278> (BP);
ffa03f4e:	ff e3 07 fd 	CALL 0xffa0395c <_htmlDefault>;
ffa03f52:	68 67       	R0 += -0x13;		/* (-19) */
ffa03f54:	21 e1 00 41 	R1 = 0x4100 (X);		/*		R1=0x4100(16640) */
ffa03f58:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900f80(-7336064) */
ffa03f5c:	f0 bb       	[FP -0x4] = R0;
ffa03f5e:	02 e1 54 0b 	R2.L = 0xb54;		/* (2900)	R2=0xff900b54(-7337132) */
ffa03f62:	08 50       	R0 = R0 + R1;
ffa03f64:	0f 30       	R1 = R7;
ffa03f66:	ff e3 b9 e6 	CALL 0xffa00cd8 <_strcpy_>;
ffa03f6a:	00 cc 36 cc 	R6 = R6 -|- R6 || R5 = [FP -0x44] || NOP;
ffa03f6e:	f5 b8 00 00 
ffa03f72:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b54(-7337132) */
ffa03f76:	0f 30       	R1 = R7;
ffa03f78:	02 e1 60 0b 	R2.L = 0xb60;		/* (2912)	R2=0xff900b60(-7337120) */
ffa03f7c:	ff e3 ae e6 	CALL 0xffa00cd8 <_strcpy_>;
ffa03f80:	16 30       	R2 = R6;
ffa03f82:	0f 30       	R1 = R7;
ffa03f84:	ff e3 10 e8 	CALL 0xffa00fa4 <_strprintf_int>;
ffa03f88:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b60(-7337120) */
ffa03f8c:	0f 30       	R1 = R7;
ffa03f8e:	02 e1 74 0b 	R2.L = 0xb74;		/* (2932)	R2=0xff900b74(-7337100) */
ffa03f92:	ff e3 a3 e6 	CALL 0xffa00cd8 <_strcpy_>;
ffa03f96:	0f 30       	R1 = R7;
ffa03f98:	15 30       	R2 = R5;
ffa03f9a:	ff e3 05 e8 	CALL 0xffa00fa4 <_strprintf_int>;
ffa03f9e:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b74(-7337100) */
ffa03fa2:	02 e1 84 0b 	R2.L = 0xb84;		/* (2948)	R2=0xff900b84(-7337084) */
ffa03fa6:	0f 30       	R1 = R7;
ffa03fa8:	ff e3 98 e6 	CALL 0xffa00cd8 <_strcpy_>;
ffa03fac:	0e 64       	R6 += 0x1;		/* (  1) */
ffa03fae:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
ffa03fb0:	16 08       	CC = R6 == R2;
ffa03fb2:	e0 17       	IF !CC JUMP 0xffa03f72 <_httpResp+0x2aa> (BP);
ffa03fb4:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900010(-7340016) */
ffa03fb8:	0f 30       	R1 = R7;
ffa03fba:	02 e1 90 0b 	R2.L = 0xb90;		/* (2960)	R2=0xff900b90(-7337072) */
ffa03fbe:	ff e3 8d e6 	CALL 0xffa00cd8 <_strcpy_>;
ffa03fc2:	f0 b9       	R0 = [FP -0x4];
ffa03fc4:	9e 2e       	JUMP.S 0xffa03d00 <_httpResp+0x38>;
ffa03fc6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03fc8:	4f 30       	R1 = FP;
ffa03fca:	42 e1 90 ff 	R2.H = 0xff90;		/* (-112)	R2=0xff900b90(-7337072) */
ffa03fce:	f0 bb       	[FP -0x4] = R0;
ffa03fd0:	e1 67       	R1 += -0x4;		/* ( -4) */
ffa03fd2:	20 e1 00 41 	R0 = 0x4100 (X);		/*		R0=0x4100(16640) */
ffa03fd6:	02 e1 90 0a 	R2.L = 0xa90;		/* (2704)	R2=0xff900a90(-7337328) */
ffa03fda:	ff e3 7f e6 	CALL 0xffa00cd8 <_strcpy_>;
ffa03fde:	f0 b9       	R0 = [FP -0x4];
ffa03fe0:	90 2e       	JUMP.S 0xffa03d00 <_httpResp+0x38>;
ffa03fe2:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff904100(-7323392) */
ffa03fe6:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa03fea:	0e 30       	R1 = R6;
ffa03fec:	15 30       	R2 = R5;
ffa03fee:	ff e3 e3 e6 	CALL 0xffa00db4 <_substr>;
ffa03ff2:	00 0c       	CC = R0 == 0x0;
ffa03ff4:	08 1c       	IF CC JUMP 0xffa04004 <_httpResp+0x33c> (BP);
ffa03ff6:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80ffbc */
ffa03ffa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa03ffc:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa04000:	10 9b       	B[P2] = R0;
ffa04002:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04004:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900000 <_l1_data_a>(-7340032) */
ffa04008:	00 e1 dc 0a 	R0.L = 0xadc;		/* (2780)	R0=0xff900adc(-7337252) */
ffa0400c:	0e 30       	R1 = R6;
ffa0400e:	15 30       	R2 = R5;
ffa04010:	ff e3 d2 e6 	CALL 0xffa00db4 <_substr>;
ffa04014:	00 0c       	CC = R0 == 0x0;
ffa04016:	05 1f       	IF CC JUMP 0xffa03e20 <_httpResp+0x158> (BP);
ffa04018:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff80080c */
ffa0401c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa0401e:	0a e1 0c 08 	P2.L = 0x80c;		/* (2060)	P2=0xff80080c */
ffa04022:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04024:	10 9b       	B[P2] = R0;
ffa04026:	fd 2e       	JUMP.S 0xffa03e20 <_httpResp+0x158>;
ffa04028:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900001(-7340031) */
ffa0402c:	00 e1 d4 0a 	R0.L = 0xad4;		/* (2772)	R0=0xff900ad4(-7337260) */
ffa04030:	0e 30       	R1 = R6;
ffa04032:	15 30       	R2 = R5;
ffa04034:	ff e3 c0 e6 	CALL 0xffa00db4 <_substr>;
ffa04038:	00 0c       	CC = R0 == 0x0;
ffa0403a:	61 14       	IF !CC JUMP 0xffa040fc <_httpResp+0x434> (BP);
ffa0403c:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
ffa0403e:	40 e1 90 ff 	R0.H = 0xff90;		/* (-112)	R0=0xff900ad4(-7337260) */
ffa04042:	00 e1 dc 0a 	R0.L = 0xadc;		/* (2780)	R0=0xff900adc(-7337252) */
ffa04046:	0e 30       	R1 = R6;
ffa04048:	15 30       	R2 = R5;
ffa0404a:	ff e3 b5 e6 	CALL 0xffa00db4 <_substr>;
ffa0404e:	00 0c       	CC = R0 == 0x0;
ffa04050:	de 1e       	IF CC JUMP 0xffa03e0c <_httpResp+0x144> (BP);
ffa04052:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff90080c */
ffa04056:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa04058:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa0405c:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa0405e:	10 9b       	B[P2] = R0;
ffa04060:	d6 2e       	JUMP.S 0xffa03e0c <_httpResp+0x144>;
ffa04062:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04064:	06 50       	R0 = R6 + R0;
ffa04066:	ff e3 c7 e7 	CALL 0xffa00ff4 <_atoi>;
ffa0406a:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900bb8 <_g_streamEnabled> */
ffa0406e:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa04072:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa04074:	11 91       	R1 = [P2];
ffa04076:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
ffa0407a:	51 54       	R1 = R1 & R2;
ffa0407c:	c0 4f       	R0 <<= 0x18;
ffa0407e:	41 50       	R1 = R1 + R0;
ffa04080:	11 93       	[P2] = R1;
ffa04082:	5e 2e       	JUMP.S 0xffa03d3e <_httpResp+0x76>;
ffa04084:	86 51       	R6 = R6 + R0;
ffa04086:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa04088:	45 53       	R5 = R5 - R0;
ffa0408a:	06 30       	R0 = R6;
ffa0408c:	ff e3 b4 e7 	CALL 0xffa00ff4 <_atoi>;
ffa04090:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa04094:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa04098:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa0409a:	11 91       	R1 = [P2];
ffa0409c:	02 e1 ff 00 	R2.L = 0xff;		/* (255)	R2=0xffff00ff(-65281) */
ffa040a0:	40 43       	R0 = R0.B (Z);
ffa040a2:	51 54       	R1 = R1 & R2;
ffa040a4:	40 4f       	R0 <<= 0x8;
ffa040a6:	41 50       	R1 = R1 + R0;
ffa040a8:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa040aa:	11 93       	[P2] = R1;
ffa040ac:	f7 2e       	JUMP.S 0xffa03e9a <_httpResp+0x1d2>;
ffa040ae:	86 51       	R6 = R6 + R0;
ffa040b0:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa040b2:	45 53       	R5 = R5 - R0;
ffa040b4:	06 30       	R0 = R6;
ffa040b6:	ff e3 9f e7 	CALL 0xffa00ff4 <_atoi>;
ffa040ba:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa040be:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa040c2:	11 91       	R1 = [P2];
ffa040c4:	41 4d       	R1 >>>= 0x8;
ffa040c6:	41 4f       	R1 <<= 0x8;
ffa040c8:	40 43       	R0 = R0.B (Z);
ffa040ca:	08 50       	R0 = R0 + R1;
ffa040cc:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa040ce:	10 93       	[P2] = R0;
ffa040d0:	db 2e       	JUMP.S 0xffa03e86 <_httpResp+0x1be>;
ffa040d2:	86 51       	R6 = R6 + R0;
ffa040d4:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
ffa040d6:	45 53       	R5 = R5 - R0;
ffa040d8:	06 30       	R0 = R6;
ffa040da:	ff e3 8d e7 	CALL 0xffa00ff4 <_atoi>;
ffa040de:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa040e2:	0a e1 64 0c 	P2.L = 0xc64;		/* (3172)	P2=0xff900c64 <_NetDataDestIP> */
ffa040e6:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
ffa040e8:	11 91       	R1 = [P2];
ffa040ea:	42 e1 00 ff 	R2.H = 0xff00;		/* (-256)	R2=0xff00ffff(-16711681) */
ffa040ee:	40 43       	R0 = R0.B (Z);
ffa040f0:	51 54       	R1 = R1 & R2;
ffa040f2:	80 4f       	R0 <<= 0x10;
ffa040f4:	41 50       	R1 = R1 + R0;
ffa040f6:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa040f8:	11 93       	[P2] = R1;
ffa040fa:	da 2e       	JUMP.S 0xffa03eae <_httpResp+0x1e6>;
ffa040fc:	4a e1 90 ff 	P2.H = 0xff90;		/* (-112)	P2=0xff900c64 <_NetDataDestIP> */
ffa04100:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
ffa04102:	0a e1 b8 0b 	P2.L = 0xbb8;		/* (3000)	P2=0xff900bb8 <_g_streamEnabled> */
ffa04106:	10 9b       	B[P2] = R0;
ffa04108:	4a e1 80 ff 	P2.H = 0xff80;		/* (-128)	P2=0xff800bb8 */
ffa0410c:	0a e1 04 08 	P2.L = 0x804;		/* (2052)	P2=0xff800804 */
ffa04110:	10 91       	R0 = [P2];
ffa04112:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
ffa04114:	22 6c       	P2 += 0x4;		/* (  4) */
ffa04116:	10 93       	[P2] = R0;
ffa04118:	93 2f       	JUMP.S 0xffa0403e <_httpResp+0x376>;
	...

ffa0411c <_httpCollate>:
ffa0411c:	fd 05       	[--SP] = (R7:7, P5:5);
ffa0411e:	4d e1 90 ff 	P5.H = 0xff90;		/* (-112)	P5=0xff900c64 <_NetDataDestIP> */
ffa04122:	0d e1 5c 0d 	P5.L = 0xd5c;		/* (3420)	P5=0xff900d5c <_g_httpRxed> */
ffa04126:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
ffa04128:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || R1 = [P5] || NOP;
ffa0412c:	29 91 00 00 
ffa04130:	82 4f       	R2 <<= 0x10;
ffa04132:	00 e8 03 00 	LINK 0xc;		/* (12) */
ffa04136:	51 50       	R1 = R1 + R2;
ffa04138:	17 30       	R2 = R7;
ffa0413a:	ff e3 9f e5 	CALL 0xffa00c78 <_memcpy_>;
ffa0413e:	28 91       	R0 = [P5];
ffa04140:	38 50       	R0 = R0 + R7;
ffa04142:	01 e8 00 00 	UNLINK;
ffa04146:	28 93       	[P5] = R0;
ffa04148:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
ffa0414a:	bd 05       	(R7:7, P5:5) = [SP++];
ffa0414c:	10 00       	RTS;
	...
